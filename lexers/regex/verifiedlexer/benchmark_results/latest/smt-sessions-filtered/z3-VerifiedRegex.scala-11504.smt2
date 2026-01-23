; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628970 () Bool)

(assert start!628970)

(declare-fun b!6348005 () Bool)

(assert (=> b!6348005 true))

(assert (=> b!6348005 true))

(declare-fun lambda!349078 () Int)

(declare-fun lambda!349077 () Int)

(assert (=> b!6348005 (not (= lambda!349078 lambda!349077))))

(assert (=> b!6348005 true))

(assert (=> b!6348005 true))

(declare-fun b!6348017 () Bool)

(assert (=> b!6348017 true))

(declare-fun bs!1589253 () Bool)

(declare-fun b!6348025 () Bool)

(assert (= bs!1589253 (and b!6348025 b!6348005)))

(declare-datatypes ((C!32780 0))(
  ( (C!32781 (val!26092 Int)) )
))
(declare-datatypes ((Regex!16255 0))(
  ( (ElementMatch!16255 (c!1154628 C!32780)) (Concat!25100 (regOne!33022 Regex!16255) (regTwo!33022 Regex!16255)) (EmptyExpr!16255) (Star!16255 (reg!16584 Regex!16255)) (EmptyLang!16255) (Union!16255 (regOne!33023 Regex!16255) (regTwo!33023 Regex!16255)) )
))
(declare-fun r!7292 () Regex!16255)

(declare-fun lt!2364185 () Regex!16255)

(declare-fun lambda!349080 () Int)

(assert (=> bs!1589253 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349080 lambda!349077))))

(assert (=> bs!1589253 (not (= lambda!349080 lambda!349078))))

(assert (=> b!6348025 true))

(assert (=> b!6348025 true))

(assert (=> b!6348025 true))

(declare-fun lambda!349081 () Int)

(assert (=> bs!1589253 (not (= lambda!349081 lambda!349077))))

(assert (=> bs!1589253 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349081 lambda!349078))))

(assert (=> b!6348025 (not (= lambda!349081 lambda!349080))))

(assert (=> b!6348025 true))

(assert (=> b!6348025 true))

(assert (=> b!6348025 true))

(declare-fun tp!1769500 () Bool)

(declare-fun setRes!43224 () Bool)

(declare-datatypes ((List!65064 0))(
  ( (Nil!64940) (Cons!64940 (h!71388 Regex!16255) (t!378652 List!65064)) )
))
(declare-datatypes ((Context!11278 0))(
  ( (Context!11279 (exprs!6139 List!65064)) )
))
(declare-fun setElem!43224 () Context!11278)

(declare-fun e!3855361 () Bool)

(declare-fun setNonEmpty!43224 () Bool)

(declare-fun inv!83884 (Context!11278) Bool)

(assert (=> setNonEmpty!43224 (= setRes!43224 (and tp!1769500 (inv!83884 setElem!43224) e!3855361))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11278))

(declare-fun setRest!43224 () (InoxSet Context!11278))

(assert (=> setNonEmpty!43224 (= z!1189 ((_ map or) (store ((as const (Array Context!11278 Bool)) false) setElem!43224 true) setRest!43224))))

(declare-fun b!6347998 () Bool)

(declare-fun e!3855360 () Bool)

(declare-fun e!3855350 () Bool)

(assert (=> b!6347998 (= e!3855360 e!3855350)))

(declare-fun res!2612192 () Bool)

(assert (=> b!6347998 (=> res!2612192 e!3855350)))

(declare-fun lt!2364178 () Bool)

(declare-datatypes ((List!65065 0))(
  ( (Nil!64941) (Cons!64941 (h!71389 C!32780) (t!378653 List!65065)) )
))
(declare-fun s!2326 () List!65065)

(declare-fun lt!2364172 () (InoxSet Context!11278))

(declare-fun matchZipper!2267 ((InoxSet Context!11278) List!65065) Bool)

(assert (=> b!6347998 (= res!2612192 (not (= lt!2364178 (matchZipper!2267 lt!2364172 (t!378653 s!2326)))))))

(declare-fun lt!2364175 () (InoxSet Context!11278))

(assert (=> b!6347998 (= lt!2364178 (matchZipper!2267 lt!2364175 (t!378653 s!2326)))))

(declare-fun b!6347999 () Bool)

(declare-fun e!3855359 () Bool)

(declare-fun tp_is_empty!41763 () Bool)

(assert (=> b!6347999 (= e!3855359 tp_is_empty!41763)))

(declare-fun b!6348000 () Bool)

(declare-fun res!2612183 () Bool)

(declare-fun e!3855352 () Bool)

(assert (=> b!6348000 (=> res!2612183 e!3855352)))

(declare-fun lt!2364171 () Context!11278)

(declare-datatypes ((List!65066 0))(
  ( (Nil!64942) (Cons!64942 (h!71390 Context!11278) (t!378654 List!65066)) )
))
(declare-fun zl!343 () List!65066)

(declare-fun contextDepthTotal!364 (Context!11278) Int)

(assert (=> b!6348000 (= res!2612183 (>= (contextDepthTotal!364 lt!2364171) (contextDepthTotal!364 (h!71390 zl!343))))))

(declare-fun b!6348001 () Bool)

(declare-fun res!2612184 () Bool)

(declare-fun e!3855362 () Bool)

(assert (=> b!6348001 (=> (not res!2612184) (not e!3855362))))

(declare-fun toList!10039 ((InoxSet Context!11278)) List!65066)

(assert (=> b!6348001 (= res!2612184 (= (toList!10039 z!1189) zl!343))))

(declare-fun b!6348002 () Bool)

(declare-fun tp!1769494 () Bool)

(assert (=> b!6348002 (= e!3855359 tp!1769494)))

(declare-fun b!6348003 () Bool)

(declare-fun res!2612194 () Bool)

(declare-fun e!3855353 () Bool)

(assert (=> b!6348003 (=> res!2612194 e!3855353)))

(declare-fun isEmpty!37029 (List!65066) Bool)

(assert (=> b!6348003 (= res!2612194 (not (isEmpty!37029 (t!378654 zl!343))))))

(declare-fun b!6348004 () Bool)

(declare-fun tp!1769497 () Bool)

(assert (=> b!6348004 (= e!3855361 tp!1769497)))

(declare-fun e!3855355 () Bool)

(assert (=> b!6348005 (= e!3855353 e!3855355)))

(declare-fun res!2612181 () Bool)

(assert (=> b!6348005 (=> res!2612181 e!3855355)))

(declare-fun lt!2364176 () Bool)

(declare-fun lt!2364181 () Bool)

(get-info :version)

(assert (=> b!6348005 (= res!2612181 (or (not (= lt!2364176 lt!2364181)) ((_ is Nil!64941) s!2326)))))

(declare-fun Exists!3325 (Int) Bool)

(assert (=> b!6348005 (= (Exists!3325 lambda!349077) (Exists!3325 lambda!349078))))

(declare-datatypes ((Unit!158351 0))(
  ( (Unit!158352) )
))
(declare-fun lt!2364167 () Unit!158351)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1862 (Regex!16255 Regex!16255 List!65065) Unit!158351)

(assert (=> b!6348005 (= lt!2364167 (lemmaExistCutMatchRandMatchRSpecEquivalent!1862 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326))))

(assert (=> b!6348005 (= lt!2364181 (Exists!3325 lambda!349077))))

(declare-datatypes ((tuple2!66468 0))(
  ( (tuple2!66469 (_1!36537 List!65065) (_2!36537 List!65065)) )
))
(declare-datatypes ((Option!16146 0))(
  ( (None!16145) (Some!16145 (v!52314 tuple2!66468)) )
))
(declare-fun isDefined!12849 (Option!16146) Bool)

(declare-fun findConcatSeparation!2560 (Regex!16255 Regex!16255 List!65065 List!65065 List!65065) Option!16146)

(assert (=> b!6348005 (= lt!2364181 (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326)))))

(declare-fun lt!2364169 () Unit!158351)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2324 (Regex!16255 Regex!16255 List!65065) Unit!158351)

(assert (=> b!6348005 (= lt!2364169 (lemmaFindConcatSeparationEquivalentToExists!2324 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326))))

(declare-fun b!6348006 () Bool)

(declare-fun e!3855349 () Bool)

(declare-fun lt!2364165 () (InoxSet Context!11278))

(assert (=> b!6348006 (= e!3855349 (matchZipper!2267 lt!2364165 (t!378653 s!2326)))))

(declare-fun b!6348007 () Bool)

(assert (=> b!6348007 (= e!3855350 e!3855352)))

(declare-fun res!2612188 () Bool)

(assert (=> b!6348007 (=> res!2612188 e!3855352)))

(declare-fun lt!2364162 () (InoxSet Context!11278))

(assert (=> b!6348007 (= res!2612188 (not (= lt!2364162 lt!2364172)))))

(declare-fun lambda!349079 () Int)

(declare-fun lt!2364158 () (InoxSet Context!11278))

(declare-fun flatMap!1760 ((InoxSet Context!11278) Int) (InoxSet Context!11278))

(declare-fun derivationStepZipperUp!1429 (Context!11278 C!32780) (InoxSet Context!11278))

(assert (=> b!6348007 (= (flatMap!1760 lt!2364158 lambda!349079) (derivationStepZipperUp!1429 lt!2364171 (h!71389 s!2326)))))

(declare-fun lt!2364156 () Unit!158351)

(declare-fun lemmaFlatMapOnSingletonSet!1286 ((InoxSet Context!11278) Context!11278 Int) Unit!158351)

(assert (=> b!6348007 (= lt!2364156 (lemmaFlatMapOnSingletonSet!1286 lt!2364158 lt!2364171 lambda!349079))))

(declare-fun lt!2364182 () (InoxSet Context!11278))

(assert (=> b!6348007 (= lt!2364182 (derivationStepZipperUp!1429 lt!2364171 (h!71389 s!2326)))))

(declare-fun derivationStepZipper!2221 ((InoxSet Context!11278) C!32780) (InoxSet Context!11278))

(assert (=> b!6348007 (= lt!2364162 (derivationStepZipper!2221 lt!2364158 (h!71389 s!2326)))))

(assert (=> b!6348007 (= lt!2364158 (store ((as const (Array Context!11278 Bool)) false) lt!2364171 true))))

(declare-fun lt!2364159 () List!65064)

(assert (=> b!6348007 (= lt!2364171 (Context!11279 lt!2364159))))

(declare-fun lt!2364157 () List!65064)

(assert (=> b!6348007 (= lt!2364159 (Cons!64940 (regOne!33022 (regOne!33022 r!7292)) lt!2364157))))

(declare-fun b!6348008 () Bool)

(declare-fun e!3855354 () Bool)

(assert (=> b!6348008 (= e!3855352 e!3855354)))

(declare-fun res!2612204 () Bool)

(assert (=> b!6348008 (=> res!2612204 e!3855354)))

(declare-fun lt!2364170 () List!65066)

(declare-fun zipperDepthTotal!392 (List!65066) Int)

(assert (=> b!6348008 (= res!2612204 (>= (zipperDepthTotal!392 lt!2364170) (zipperDepthTotal!392 zl!343)))))

(assert (=> b!6348008 (= lt!2364170 (Cons!64942 lt!2364171 Nil!64942))))

(declare-fun b!6348009 () Bool)

(declare-fun res!2612201 () Bool)

(assert (=> b!6348009 (=> res!2612201 e!3855352)))

(assert (=> b!6348009 (= res!2612201 (not (= lt!2364178 (matchZipper!2267 lt!2364162 (t!378653 s!2326)))))))

(declare-fun b!6348010 () Bool)

(declare-fun tp!1769493 () Bool)

(declare-fun e!3855347 () Bool)

(declare-fun e!3855351 () Bool)

(assert (=> b!6348010 (= e!3855351 (and (inv!83884 (h!71390 zl!343)) e!3855347 tp!1769493))))

(declare-fun b!6348011 () Bool)

(declare-fun e!3855356 () Bool)

(declare-fun tp!1769501 () Bool)

(assert (=> b!6348011 (= e!3855356 (and tp_is_empty!41763 tp!1769501))))

(declare-fun b!6348012 () Bool)

(declare-fun e!3855358 () Unit!158351)

(declare-fun Unit!158353 () Unit!158351)

(assert (=> b!6348012 (= e!3855358 Unit!158353)))

(declare-fun lt!2364180 () Unit!158351)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1086 ((InoxSet Context!11278) (InoxSet Context!11278) List!65065) Unit!158351)

(assert (=> b!6348012 (= lt!2364180 (lemmaZipperConcatMatchesSameAsBothZippers!1086 lt!2364175 lt!2364165 (t!378653 s!2326)))))

(declare-fun res!2612199 () Bool)

(assert (=> b!6348012 (= res!2612199 (matchZipper!2267 lt!2364175 (t!378653 s!2326)))))

(assert (=> b!6348012 (=> res!2612199 e!3855349)))

(assert (=> b!6348012 (= (matchZipper!2267 ((_ map or) lt!2364175 lt!2364165) (t!378653 s!2326)) e!3855349)))

(declare-fun b!6348013 () Bool)

(declare-fun e!3855357 () Bool)

(declare-fun nullable!6248 (Regex!16255) Bool)

(assert (=> b!6348013 (= e!3855357 (nullable!6248 (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6348014 () Bool)

(declare-fun res!2612185 () Bool)

(assert (=> b!6348014 (=> res!2612185 e!3855353)))

(assert (=> b!6348014 (= res!2612185 (not ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348015 () Bool)

(declare-fun res!2612186 () Bool)

(assert (=> b!6348015 (=> res!2612186 e!3855353)))

(declare-fun generalisedUnion!2099 (List!65064) Regex!16255)

(declare-fun unfocusZipperList!1676 (List!65066) List!65064)

(assert (=> b!6348015 (= res!2612186 (not (= r!7292 (generalisedUnion!2099 (unfocusZipperList!1676 zl!343)))))))

(declare-fun b!6348016 () Bool)

(declare-fun res!2612203 () Bool)

(declare-fun e!3855348 () Bool)

(assert (=> b!6348016 (=> res!2612203 e!3855348)))

(assert (=> b!6348016 (= res!2612203 (not ((_ is Concat!25100) (regOne!33022 r!7292))))))

(assert (=> b!6348017 (= e!3855355 e!3855348)))

(declare-fun res!2612187 () Bool)

(assert (=> b!6348017 (=> res!2612187 e!3855348)))

(assert (=> b!6348017 (= res!2612187 (or (and ((_ is ElementMatch!16255) (regOne!33022 r!7292)) (= (c!1154628 (regOne!33022 r!7292)) (h!71389 s!2326))) ((_ is Union!16255) (regOne!33022 r!7292))))))

(declare-fun lt!2364183 () Unit!158351)

(assert (=> b!6348017 (= lt!2364183 e!3855358)))

(declare-fun c!1154627 () Bool)

(assert (=> b!6348017 (= c!1154627 (nullable!6248 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348017 (= (flatMap!1760 z!1189 lambda!349079) (derivationStepZipperUp!1429 (h!71390 zl!343) (h!71389 s!2326)))))

(declare-fun lt!2364168 () Unit!158351)

(assert (=> b!6348017 (= lt!2364168 (lemmaFlatMapOnSingletonSet!1286 z!1189 (h!71390 zl!343) lambda!349079))))

(declare-fun lt!2364161 () Context!11278)

(assert (=> b!6348017 (= lt!2364165 (derivationStepZipperUp!1429 lt!2364161 (h!71389 s!2326)))))

(declare-fun derivationStepZipperDown!1503 (Regex!16255 Context!11278 C!32780) (InoxSet Context!11278))

(assert (=> b!6348017 (= lt!2364175 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (h!71390 zl!343))) lt!2364161 (h!71389 s!2326)))))

(assert (=> b!6348017 (= lt!2364161 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun lt!2364174 () (InoxSet Context!11278))

(assert (=> b!6348017 (= lt!2364174 (derivationStepZipperUp!1429 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))) (h!71389 s!2326)))))

(declare-fun b!6348018 () Bool)

(assert (=> b!6348018 (= e!3855362 (not e!3855353))))

(declare-fun res!2612197 () Bool)

(assert (=> b!6348018 (=> res!2612197 e!3855353)))

(assert (=> b!6348018 (= res!2612197 (not ((_ is Cons!64942) zl!343)))))

(declare-fun matchRSpec!3356 (Regex!16255 List!65065) Bool)

(assert (=> b!6348018 (= lt!2364176 (matchRSpec!3356 r!7292 s!2326))))

(declare-fun matchR!8438 (Regex!16255 List!65065) Bool)

(assert (=> b!6348018 (= lt!2364176 (matchR!8438 r!7292 s!2326))))

(declare-fun lt!2364166 () Unit!158351)

(declare-fun mainMatchTheorem!3356 (Regex!16255 List!65065) Unit!158351)

(assert (=> b!6348018 (= lt!2364166 (mainMatchTheorem!3356 r!7292 s!2326))))

(declare-fun b!6348019 () Bool)

(declare-fun res!2612202 () Bool)

(assert (=> b!6348019 (=> res!2612202 e!3855355)))

(declare-fun isEmpty!37030 (List!65064) Bool)

(assert (=> b!6348019 (= res!2612202 (isEmpty!37030 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348020 () Bool)

(declare-fun res!2612195 () Bool)

(assert (=> b!6348020 (=> res!2612195 e!3855352)))

(assert (=> b!6348020 (= res!2612195 (not (= (exprs!6139 (h!71390 zl!343)) (Cons!64940 (Concat!25100 (regOne!33022 (regOne!33022 r!7292)) (regTwo!33022 (regOne!33022 r!7292))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6348021 () Bool)

(declare-fun res!2612193 () Bool)

(assert (=> b!6348021 (=> (not res!2612193) (not e!3855362))))

(declare-fun unfocusZipper!1997 (List!65066) Regex!16255)

(assert (=> b!6348021 (= res!2612193 (= r!7292 (unfocusZipper!1997 zl!343)))))

(declare-fun setIsEmpty!43224 () Bool)

(assert (=> setIsEmpty!43224 setRes!43224))

(declare-fun b!6348022 () Bool)

(assert (=> b!6348022 (= e!3855348 e!3855360)))

(declare-fun res!2612196 () Bool)

(assert (=> b!6348022 (=> res!2612196 e!3855360)))

(assert (=> b!6348022 (= res!2612196 (not (= lt!2364175 lt!2364172)))))

(assert (=> b!6348022 (= lt!2364172 (derivationStepZipperDown!1503 (regOne!33022 (regOne!33022 r!7292)) (Context!11279 lt!2364157) (h!71389 s!2326)))))

(assert (=> b!6348022 (= lt!2364157 (Cons!64940 (regTwo!33022 (regOne!33022 r!7292)) (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348023 () Bool)

(declare-fun Unit!158354 () Unit!158351)

(assert (=> b!6348023 (= e!3855358 Unit!158354)))

(declare-fun b!6348024 () Bool)

(declare-fun res!2612200 () Bool)

(assert (=> b!6348024 (=> res!2612200 e!3855354)))

(declare-fun zipperDepth!362 (List!65066) Int)

(assert (=> b!6348024 (= res!2612200 (> (zipperDepth!362 lt!2364170) (zipperDepth!362 zl!343)))))

(declare-fun validRegex!7991 (Regex!16255) Bool)

(assert (=> b!6348025 (= e!3855354 (validRegex!7991 (regTwo!33022 (regOne!33022 r!7292))))))

(declare-fun lt!2364186 () Regex!16255)

(declare-fun generalisedConcat!1852 (List!65064) Regex!16255)

(assert (=> b!6348025 (= lt!2364186 (generalisedConcat!1852 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348025 (= (matchR!8438 lt!2364185 s!2326) (matchRSpec!3356 lt!2364185 s!2326))))

(declare-fun lt!2364164 () Unit!158351)

(assert (=> b!6348025 (= lt!2364164 (mainMatchTheorem!3356 lt!2364185 s!2326))))

(assert (=> b!6348025 (= (Exists!3325 lambda!349080) (Exists!3325 lambda!349081))))

(declare-fun lt!2364173 () Unit!158351)

(assert (=> b!6348025 (= lt!2364173 (lemmaExistCutMatchRandMatchRSpecEquivalent!1862 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326))))

(assert (=> b!6348025 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326)) (Exists!3325 lambda!349080))))

(declare-fun lt!2364177 () Unit!158351)

(assert (=> b!6348025 (= lt!2364177 (lemmaFindConcatSeparationEquivalentToExists!2324 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326))))

(assert (=> b!6348025 (= lt!2364185 (generalisedConcat!1852 lt!2364157))))

(declare-fun lt!2364163 () Bool)

(declare-fun lt!2364179 () Regex!16255)

(assert (=> b!6348025 (= lt!2364163 (matchRSpec!3356 lt!2364179 s!2326))))

(declare-fun lt!2364184 () Unit!158351)

(assert (=> b!6348025 (= lt!2364184 (mainMatchTheorem!3356 lt!2364179 s!2326))))

(assert (=> b!6348025 (= lt!2364163 (matchZipper!2267 lt!2364158 s!2326))))

(assert (=> b!6348025 (= lt!2364163 (matchR!8438 lt!2364179 s!2326))))

(declare-fun lt!2364160 () Unit!158351)

(declare-fun theoremZipperRegexEquiv!797 ((InoxSet Context!11278) List!65066 Regex!16255 List!65065) Unit!158351)

(assert (=> b!6348025 (= lt!2364160 (theoremZipperRegexEquiv!797 lt!2364158 lt!2364170 lt!2364179 s!2326))))

(assert (=> b!6348025 (= lt!2364179 (generalisedConcat!1852 lt!2364159))))

(declare-fun b!6348026 () Bool)

(declare-fun tp!1769499 () Bool)

(assert (=> b!6348026 (= e!3855347 tp!1769499)))

(declare-fun res!2612198 () Bool)

(assert (=> start!628970 (=> (not res!2612198) (not e!3855362))))

(assert (=> start!628970 (= res!2612198 (validRegex!7991 r!7292))))

(assert (=> start!628970 e!3855362))

(assert (=> start!628970 e!3855359))

(declare-fun condSetEmpty!43224 () Bool)

(assert (=> start!628970 (= condSetEmpty!43224 (= z!1189 ((as const (Array Context!11278 Bool)) false)))))

(assert (=> start!628970 setRes!43224))

(assert (=> start!628970 e!3855351))

(assert (=> start!628970 e!3855356))

(declare-fun b!6348027 () Bool)

(declare-fun res!2612182 () Bool)

(assert (=> b!6348027 (=> res!2612182 e!3855348)))

(assert (=> b!6348027 (= res!2612182 e!3855357)))

(declare-fun res!2612190 () Bool)

(assert (=> b!6348027 (=> (not res!2612190) (not e!3855357))))

(assert (=> b!6348027 (= res!2612190 ((_ is Concat!25100) (regOne!33022 r!7292)))))

(declare-fun b!6348028 () Bool)

(declare-fun res!2612189 () Bool)

(assert (=> b!6348028 (=> res!2612189 e!3855353)))

(assert (=> b!6348028 (= res!2612189 (or ((_ is EmptyExpr!16255) r!7292) ((_ is EmptyLang!16255) r!7292) ((_ is ElementMatch!16255) r!7292) ((_ is Union!16255) r!7292) (not ((_ is Concat!25100) r!7292))))))

(declare-fun b!6348029 () Bool)

(declare-fun tp!1769495 () Bool)

(declare-fun tp!1769502 () Bool)

(assert (=> b!6348029 (= e!3855359 (and tp!1769495 tp!1769502))))

(declare-fun b!6348030 () Bool)

(declare-fun res!2612191 () Bool)

(assert (=> b!6348030 (=> res!2612191 e!3855353)))

(assert (=> b!6348030 (= res!2612191 (not (= r!7292 (generalisedConcat!1852 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6348031 () Bool)

(declare-fun tp!1769496 () Bool)

(declare-fun tp!1769498 () Bool)

(assert (=> b!6348031 (= e!3855359 (and tp!1769496 tp!1769498))))

(assert (= (and start!628970 res!2612198) b!6348001))

(assert (= (and b!6348001 res!2612184) b!6348021))

(assert (= (and b!6348021 res!2612193) b!6348018))

(assert (= (and b!6348018 (not res!2612197)) b!6348003))

(assert (= (and b!6348003 (not res!2612194)) b!6348030))

(assert (= (and b!6348030 (not res!2612191)) b!6348014))

(assert (= (and b!6348014 (not res!2612185)) b!6348015))

(assert (= (and b!6348015 (not res!2612186)) b!6348028))

(assert (= (and b!6348028 (not res!2612189)) b!6348005))

(assert (= (and b!6348005 (not res!2612181)) b!6348019))

(assert (= (and b!6348019 (not res!2612202)) b!6348017))

(assert (= (and b!6348017 c!1154627) b!6348012))

(assert (= (and b!6348017 (not c!1154627)) b!6348023))

(assert (= (and b!6348012 (not res!2612199)) b!6348006))

(assert (= (and b!6348017 (not res!2612187)) b!6348027))

(assert (= (and b!6348027 res!2612190) b!6348013))

(assert (= (and b!6348027 (not res!2612182)) b!6348016))

(assert (= (and b!6348016 (not res!2612203)) b!6348022))

(assert (= (and b!6348022 (not res!2612196)) b!6347998))

(assert (= (and b!6347998 (not res!2612192)) b!6348007))

(assert (= (and b!6348007 (not res!2612188)) b!6348009))

(assert (= (and b!6348009 (not res!2612201)) b!6348020))

(assert (= (and b!6348020 (not res!2612195)) b!6348000))

(assert (= (and b!6348000 (not res!2612183)) b!6348008))

(assert (= (and b!6348008 (not res!2612204)) b!6348024))

(assert (= (and b!6348024 (not res!2612200)) b!6348025))

(assert (= (and start!628970 ((_ is ElementMatch!16255) r!7292)) b!6347999))

(assert (= (and start!628970 ((_ is Concat!25100) r!7292)) b!6348031))

(assert (= (and start!628970 ((_ is Star!16255) r!7292)) b!6348002))

(assert (= (and start!628970 ((_ is Union!16255) r!7292)) b!6348029))

(assert (= (and start!628970 condSetEmpty!43224) setIsEmpty!43224))

(assert (= (and start!628970 (not condSetEmpty!43224)) setNonEmpty!43224))

(assert (= setNonEmpty!43224 b!6348004))

(assert (= b!6348010 b!6348026))

(assert (= (and start!628970 ((_ is Cons!64942) zl!343)) b!6348010))

(assert (= (and start!628970 ((_ is Cons!64941) s!2326)) b!6348011))

(declare-fun m!7155254 () Bool)

(assert (=> b!6348022 m!7155254))

(declare-fun m!7155256 () Bool)

(assert (=> start!628970 m!7155256))

(declare-fun m!7155258 () Bool)

(assert (=> b!6348024 m!7155258))

(declare-fun m!7155260 () Bool)

(assert (=> b!6348024 m!7155260))

(declare-fun m!7155262 () Bool)

(assert (=> b!6347998 m!7155262))

(declare-fun m!7155264 () Bool)

(assert (=> b!6347998 m!7155264))

(declare-fun m!7155266 () Bool)

(assert (=> b!6348010 m!7155266))

(declare-fun m!7155268 () Bool)

(assert (=> b!6348015 m!7155268))

(assert (=> b!6348015 m!7155268))

(declare-fun m!7155270 () Bool)

(assert (=> b!6348015 m!7155270))

(declare-fun m!7155272 () Bool)

(assert (=> b!6348030 m!7155272))

(declare-fun m!7155274 () Bool)

(assert (=> b!6348018 m!7155274))

(declare-fun m!7155276 () Bool)

(assert (=> b!6348018 m!7155276))

(declare-fun m!7155278 () Bool)

(assert (=> b!6348018 m!7155278))

(declare-fun m!7155280 () Bool)

(assert (=> b!6348019 m!7155280))

(declare-fun m!7155282 () Bool)

(assert (=> b!6348021 m!7155282))

(declare-fun m!7155284 () Bool)

(assert (=> b!6348007 m!7155284))

(declare-fun m!7155286 () Bool)

(assert (=> b!6348007 m!7155286))

(declare-fun m!7155288 () Bool)

(assert (=> b!6348007 m!7155288))

(declare-fun m!7155290 () Bool)

(assert (=> b!6348007 m!7155290))

(declare-fun m!7155292 () Bool)

(assert (=> b!6348007 m!7155292))

(declare-fun m!7155294 () Bool)

(assert (=> b!6348005 m!7155294))

(declare-fun m!7155296 () Bool)

(assert (=> b!6348005 m!7155296))

(declare-fun m!7155298 () Bool)

(assert (=> b!6348005 m!7155298))

(assert (=> b!6348005 m!7155294))

(declare-fun m!7155300 () Bool)

(assert (=> b!6348005 m!7155300))

(declare-fun m!7155302 () Bool)

(assert (=> b!6348005 m!7155302))

(assert (=> b!6348005 m!7155296))

(declare-fun m!7155304 () Bool)

(assert (=> b!6348005 m!7155304))

(declare-fun m!7155306 () Bool)

(assert (=> b!6348003 m!7155306))

(declare-fun m!7155308 () Bool)

(assert (=> b!6348012 m!7155308))

(assert (=> b!6348012 m!7155264))

(declare-fun m!7155310 () Bool)

(assert (=> b!6348012 m!7155310))

(declare-fun m!7155312 () Bool)

(assert (=> setNonEmpty!43224 m!7155312))

(declare-fun m!7155314 () Bool)

(assert (=> b!6348001 m!7155314))

(declare-fun m!7155316 () Bool)

(assert (=> b!6348006 m!7155316))

(declare-fun m!7155318 () Bool)

(assert (=> b!6348008 m!7155318))

(declare-fun m!7155320 () Bool)

(assert (=> b!6348008 m!7155320))

(declare-fun m!7155322 () Bool)

(assert (=> b!6348025 m!7155322))

(declare-fun m!7155324 () Bool)

(assert (=> b!6348025 m!7155324))

(declare-fun m!7155326 () Bool)

(assert (=> b!6348025 m!7155326))

(declare-fun m!7155328 () Bool)

(assert (=> b!6348025 m!7155328))

(declare-fun m!7155330 () Bool)

(assert (=> b!6348025 m!7155330))

(declare-fun m!7155332 () Bool)

(assert (=> b!6348025 m!7155332))

(declare-fun m!7155334 () Bool)

(assert (=> b!6348025 m!7155334))

(declare-fun m!7155336 () Bool)

(assert (=> b!6348025 m!7155336))

(declare-fun m!7155338 () Bool)

(assert (=> b!6348025 m!7155338))

(declare-fun m!7155340 () Bool)

(assert (=> b!6348025 m!7155340))

(declare-fun m!7155342 () Bool)

(assert (=> b!6348025 m!7155342))

(assert (=> b!6348025 m!7155338))

(declare-fun m!7155344 () Bool)

(assert (=> b!6348025 m!7155344))

(assert (=> b!6348025 m!7155330))

(declare-fun m!7155346 () Bool)

(assert (=> b!6348025 m!7155346))

(declare-fun m!7155348 () Bool)

(assert (=> b!6348025 m!7155348))

(declare-fun m!7155350 () Bool)

(assert (=> b!6348025 m!7155350))

(declare-fun m!7155352 () Bool)

(assert (=> b!6348025 m!7155352))

(declare-fun m!7155354 () Bool)

(assert (=> b!6348025 m!7155354))

(declare-fun m!7155356 () Bool)

(assert (=> b!6348025 m!7155356))

(declare-fun m!7155358 () Bool)

(assert (=> b!6348013 m!7155358))

(declare-fun m!7155360 () Bool)

(assert (=> b!6348000 m!7155360))

(declare-fun m!7155362 () Bool)

(assert (=> b!6348000 m!7155362))

(declare-fun m!7155364 () Bool)

(assert (=> b!6348009 m!7155364))

(declare-fun m!7155366 () Bool)

(assert (=> b!6348017 m!7155366))

(declare-fun m!7155368 () Bool)

(assert (=> b!6348017 m!7155368))

(declare-fun m!7155370 () Bool)

(assert (=> b!6348017 m!7155370))

(declare-fun m!7155372 () Bool)

(assert (=> b!6348017 m!7155372))

(declare-fun m!7155374 () Bool)

(assert (=> b!6348017 m!7155374))

(declare-fun m!7155376 () Bool)

(assert (=> b!6348017 m!7155376))

(declare-fun m!7155378 () Bool)

(assert (=> b!6348017 m!7155378))

(check-sat (not b!6348012) (not b!6348000) (not b!6348026) (not b!6348018) (not b!6348002) (not b!6348003) (not b!6348017) (not b!6348008) (not b!6348029) (not b!6348001) (not b!6348031) (not b!6348009) (not b!6348021) (not b!6348006) (not b!6348013) (not setNonEmpty!43224) (not b!6348015) (not b!6348022) (not b!6348024) (not b!6348030) (not b!6348004) (not b!6348005) (not b!6348025) tp_is_empty!41763 (not b!6348019) (not b!6348011) (not b!6347998) (not start!628970) (not b!6348010) (not b!6348007))
(check-sat)
(get-model)

(declare-fun b!6348350 () Bool)

(declare-fun e!3855546 () Bool)

(declare-fun e!3855549 () Bool)

(assert (=> b!6348350 (= e!3855546 e!3855549)))

(declare-fun c!1154719 () Bool)

(assert (=> b!6348350 (= c!1154719 ((_ is Star!16255) r!7292))))

(declare-fun b!6348351 () Bool)

(declare-fun e!3855548 () Bool)

(declare-fun e!3855551 () Bool)

(assert (=> b!6348351 (= e!3855548 e!3855551)))

(declare-fun res!2612338 () Bool)

(assert (=> b!6348351 (=> (not res!2612338) (not e!3855551))))

(declare-fun call!541184 () Bool)

(assert (=> b!6348351 (= res!2612338 call!541184)))

(declare-fun bm!541178 () Bool)

(declare-fun call!541183 () Bool)

(declare-fun c!1154720 () Bool)

(assert (=> bm!541178 (= call!541183 (validRegex!7991 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))))))

(declare-fun b!6348352 () Bool)

(declare-fun e!3855550 () Bool)

(assert (=> b!6348352 (= e!3855550 call!541183)))

(declare-fun b!6348353 () Bool)

(assert (=> b!6348353 (= e!3855551 call!541183)))

(declare-fun b!6348354 () Bool)

(declare-fun e!3855545 () Bool)

(declare-fun call!541185 () Bool)

(assert (=> b!6348354 (= e!3855545 call!541185)))

(declare-fun d!1991877 () Bool)

(declare-fun res!2612340 () Bool)

(assert (=> d!1991877 (=> res!2612340 e!3855546)))

(assert (=> d!1991877 (= res!2612340 ((_ is ElementMatch!16255) r!7292))))

(assert (=> d!1991877 (= (validRegex!7991 r!7292) e!3855546)))

(declare-fun bm!541179 () Bool)

(assert (=> bm!541179 (= call!541185 (validRegex!7991 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))))))

(declare-fun b!6348355 () Bool)

(declare-fun res!2612337 () Bool)

(assert (=> b!6348355 (=> (not res!2612337) (not e!3855550))))

(assert (=> b!6348355 (= res!2612337 call!541184)))

(declare-fun e!3855547 () Bool)

(assert (=> b!6348355 (= e!3855547 e!3855550)))

(declare-fun b!6348356 () Bool)

(assert (=> b!6348356 (= e!3855549 e!3855547)))

(assert (=> b!6348356 (= c!1154720 ((_ is Union!16255) r!7292))))

(declare-fun b!6348357 () Bool)

(assert (=> b!6348357 (= e!3855549 e!3855545)))

(declare-fun res!2612341 () Bool)

(assert (=> b!6348357 (= res!2612341 (not (nullable!6248 (reg!16584 r!7292))))))

(assert (=> b!6348357 (=> (not res!2612341) (not e!3855545))))

(declare-fun bm!541180 () Bool)

(assert (=> bm!541180 (= call!541184 call!541185)))

(declare-fun b!6348358 () Bool)

(declare-fun res!2612339 () Bool)

(assert (=> b!6348358 (=> res!2612339 e!3855548)))

(assert (=> b!6348358 (= res!2612339 (not ((_ is Concat!25100) r!7292)))))

(assert (=> b!6348358 (= e!3855547 e!3855548)))

(assert (= (and d!1991877 (not res!2612340)) b!6348350))

(assert (= (and b!6348350 c!1154719) b!6348357))

(assert (= (and b!6348350 (not c!1154719)) b!6348356))

(assert (= (and b!6348357 res!2612341) b!6348354))

(assert (= (and b!6348356 c!1154720) b!6348355))

(assert (= (and b!6348356 (not c!1154720)) b!6348358))

(assert (= (and b!6348355 res!2612337) b!6348352))

(assert (= (and b!6348358 (not res!2612339)) b!6348351))

(assert (= (and b!6348351 res!2612338) b!6348353))

(assert (= (or b!6348352 b!6348353) bm!541178))

(assert (= (or b!6348355 b!6348351) bm!541180))

(assert (= (or b!6348354 bm!541180) bm!541179))

(declare-fun m!7155600 () Bool)

(assert (=> bm!541178 m!7155600))

(declare-fun m!7155602 () Bool)

(assert (=> bm!541179 m!7155602))

(declare-fun m!7155604 () Bool)

(assert (=> b!6348357 m!7155604))

(assert (=> start!628970 d!1991877))

(declare-fun d!1991889 () Bool)

(declare-fun lt!2364227 () Int)

(assert (=> d!1991889 (>= lt!2364227 0)))

(declare-fun e!3855561 () Int)

(assert (=> d!1991889 (= lt!2364227 e!3855561)))

(declare-fun c!1154728 () Bool)

(assert (=> d!1991889 (= c!1154728 ((_ is Cons!64940) (exprs!6139 lt!2364171)))))

(assert (=> d!1991889 (= (contextDepthTotal!364 lt!2364171) lt!2364227)))

(declare-fun b!6348374 () Bool)

(declare-fun regexDepthTotal!212 (Regex!16255) Int)

(assert (=> b!6348374 (= e!3855561 (+ (regexDepthTotal!212 (h!71388 (exprs!6139 lt!2364171))) (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 lt!2364171))))))))

(declare-fun b!6348375 () Bool)

(assert (=> b!6348375 (= e!3855561 1)))

(assert (= (and d!1991889 c!1154728) b!6348374))

(assert (= (and d!1991889 (not c!1154728)) b!6348375))

(declare-fun m!7155618 () Bool)

(assert (=> b!6348374 m!7155618))

(declare-fun m!7155620 () Bool)

(assert (=> b!6348374 m!7155620))

(assert (=> b!6348000 d!1991889))

(declare-fun d!1991895 () Bool)

(declare-fun lt!2364228 () Int)

(assert (=> d!1991895 (>= lt!2364228 0)))

(declare-fun e!3855562 () Int)

(assert (=> d!1991895 (= lt!2364228 e!3855562)))

(declare-fun c!1154729 () Bool)

(assert (=> d!1991895 (= c!1154729 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> d!1991895 (= (contextDepthTotal!364 (h!71390 zl!343)) lt!2364228)))

(declare-fun b!6348376 () Bool)

(assert (=> b!6348376 (= e!3855562 (+ (regexDepthTotal!212 (h!71388 (exprs!6139 (h!71390 zl!343)))) (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6348377 () Bool)

(assert (=> b!6348377 (= e!3855562 1)))

(assert (= (and d!1991895 c!1154729) b!6348376))

(assert (= (and d!1991895 (not c!1154729)) b!6348377))

(declare-fun m!7155622 () Bool)

(assert (=> b!6348376 m!7155622))

(declare-fun m!7155624 () Bool)

(assert (=> b!6348376 m!7155624))

(assert (=> b!6348000 d!1991895))

(declare-fun d!1991897 () Bool)

(declare-fun lt!2364231 () Regex!16255)

(assert (=> d!1991897 (validRegex!7991 lt!2364231)))

(assert (=> d!1991897 (= lt!2364231 (generalisedUnion!2099 (unfocusZipperList!1676 zl!343)))))

(assert (=> d!1991897 (= (unfocusZipper!1997 zl!343) lt!2364231)))

(declare-fun bs!1589336 () Bool)

(assert (= bs!1589336 d!1991897))

(declare-fun m!7155632 () Bool)

(assert (=> bs!1589336 m!7155632))

(assert (=> bs!1589336 m!7155268))

(assert (=> bs!1589336 m!7155268))

(assert (=> bs!1589336 m!7155270))

(assert (=> b!6348021 d!1991897))

(declare-fun d!1991903 () Bool)

(declare-fun lambda!349111 () Int)

(declare-fun forall!15421 (List!65064 Int) Bool)

(assert (=> d!1991903 (= (inv!83884 (h!71390 zl!343)) (forall!15421 (exprs!6139 (h!71390 zl!343)) lambda!349111))))

(declare-fun bs!1589339 () Bool)

(assert (= bs!1589339 d!1991903))

(declare-fun m!7155658 () Bool)

(assert (=> bs!1589339 m!7155658))

(assert (=> b!6348010 d!1991903))

(declare-fun bs!1589349 () Bool)

(declare-fun d!1991913 () Bool)

(assert (= bs!1589349 (and d!1991913 d!1991903)))

(declare-fun lambda!349122 () Int)

(assert (=> bs!1589349 (= lambda!349122 lambda!349111)))

(declare-fun b!6348468 () Bool)

(declare-fun e!3855618 () Bool)

(declare-fun lt!2364242 () Regex!16255)

(declare-fun head!13002 (List!65064) Regex!16255)

(assert (=> b!6348468 (= e!3855618 (= lt!2364242 (head!13002 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348469 () Bool)

(declare-fun e!3855616 () Regex!16255)

(assert (=> b!6348469 (= e!3855616 (Concat!25100 (h!71388 (exprs!6139 (h!71390 zl!343))) (generalisedConcat!1852 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6348470 () Bool)

(declare-fun e!3855619 () Bool)

(assert (=> b!6348470 (= e!3855619 (isEmpty!37030 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348471 () Bool)

(declare-fun isConcat!1180 (Regex!16255) Bool)

(assert (=> b!6348471 (= e!3855618 (isConcat!1180 lt!2364242))))

(declare-fun b!6348472 () Bool)

(declare-fun e!3855620 () Bool)

(assert (=> b!6348472 (= e!3855620 e!3855618)))

(declare-fun c!1154770 () Bool)

(declare-fun tail!12087 (List!65064) List!65064)

(assert (=> b!6348472 (= c!1154770 (isEmpty!37030 (tail!12087 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun e!3855617 () Bool)

(assert (=> d!1991913 e!3855617))

(declare-fun res!2612361 () Bool)

(assert (=> d!1991913 (=> (not res!2612361) (not e!3855617))))

(assert (=> d!1991913 (= res!2612361 (validRegex!7991 lt!2364242))))

(declare-fun e!3855621 () Regex!16255)

(assert (=> d!1991913 (= lt!2364242 e!3855621)))

(declare-fun c!1154769 () Bool)

(assert (=> d!1991913 (= c!1154769 e!3855619)))

(declare-fun res!2612362 () Bool)

(assert (=> d!1991913 (=> (not res!2612362) (not e!3855619))))

(assert (=> d!1991913 (= res!2612362 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> d!1991913 (forall!15421 (exprs!6139 (h!71390 zl!343)) lambda!349122)))

(assert (=> d!1991913 (= (generalisedConcat!1852 (exprs!6139 (h!71390 zl!343))) lt!2364242)))

(declare-fun b!6348473 () Bool)

(assert (=> b!6348473 (= e!3855616 EmptyExpr!16255)))

(declare-fun b!6348474 () Bool)

(assert (=> b!6348474 (= e!3855621 (h!71388 (exprs!6139 (h!71390 zl!343))))))

(declare-fun b!6348475 () Bool)

(assert (=> b!6348475 (= e!3855621 e!3855616)))

(declare-fun c!1154768 () Bool)

(assert (=> b!6348475 (= c!1154768 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343))))))

(declare-fun b!6348476 () Bool)

(assert (=> b!6348476 (= e!3855617 e!3855620)))

(declare-fun c!1154767 () Bool)

(assert (=> b!6348476 (= c!1154767 (isEmpty!37030 (exprs!6139 (h!71390 zl!343))))))

(declare-fun b!6348477 () Bool)

(declare-fun isEmptyExpr!1657 (Regex!16255) Bool)

(assert (=> b!6348477 (= e!3855620 (isEmptyExpr!1657 lt!2364242))))

(assert (= (and d!1991913 res!2612362) b!6348470))

(assert (= (and d!1991913 c!1154769) b!6348474))

(assert (= (and d!1991913 (not c!1154769)) b!6348475))

(assert (= (and b!6348475 c!1154768) b!6348469))

(assert (= (and b!6348475 (not c!1154768)) b!6348473))

(assert (= (and d!1991913 res!2612361) b!6348476))

(assert (= (and b!6348476 c!1154767) b!6348477))

(assert (= (and b!6348476 (not c!1154767)) b!6348472))

(assert (= (and b!6348472 c!1154770) b!6348468))

(assert (= (and b!6348472 (not c!1154770)) b!6348471))

(assert (=> b!6348469 m!7155356))

(declare-fun m!7155690 () Bool)

(assert (=> b!6348471 m!7155690))

(declare-fun m!7155694 () Bool)

(assert (=> b!6348468 m!7155694))

(declare-fun m!7155696 () Bool)

(assert (=> d!1991913 m!7155696))

(declare-fun m!7155698 () Bool)

(assert (=> d!1991913 m!7155698))

(declare-fun m!7155700 () Bool)

(assert (=> b!6348476 m!7155700))

(declare-fun m!7155702 () Bool)

(assert (=> b!6348477 m!7155702))

(assert (=> b!6348470 m!7155280))

(declare-fun m!7155704 () Bool)

(assert (=> b!6348472 m!7155704))

(assert (=> b!6348472 m!7155704))

(declare-fun m!7155706 () Bool)

(assert (=> b!6348472 m!7155706))

(assert (=> b!6348030 d!1991913))

(declare-fun d!1991923 () Bool)

(declare-fun c!1154778 () Bool)

(declare-fun isEmpty!37033 (List!65065) Bool)

(assert (=> d!1991923 (= c!1154778 (isEmpty!37033 (t!378653 s!2326)))))

(declare-fun e!3855632 () Bool)

(assert (=> d!1991923 (= (matchZipper!2267 lt!2364162 (t!378653 s!2326)) e!3855632)))

(declare-fun b!6348495 () Bool)

(declare-fun nullableZipper!2021 ((InoxSet Context!11278)) Bool)

(assert (=> b!6348495 (= e!3855632 (nullableZipper!2021 lt!2364162))))

(declare-fun b!6348496 () Bool)

(declare-fun head!13003 (List!65065) C!32780)

(declare-fun tail!12088 (List!65065) List!65065)

(assert (=> b!6348496 (= e!3855632 (matchZipper!2267 (derivationStepZipper!2221 lt!2364162 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))))))

(assert (= (and d!1991923 c!1154778) b!6348495))

(assert (= (and d!1991923 (not c!1154778)) b!6348496))

(declare-fun m!7155720 () Bool)

(assert (=> d!1991923 m!7155720))

(declare-fun m!7155724 () Bool)

(assert (=> b!6348495 m!7155724))

(declare-fun m!7155726 () Bool)

(assert (=> b!6348496 m!7155726))

(assert (=> b!6348496 m!7155726))

(declare-fun m!7155728 () Bool)

(assert (=> b!6348496 m!7155728))

(declare-fun m!7155730 () Bool)

(assert (=> b!6348496 m!7155730))

(assert (=> b!6348496 m!7155728))

(assert (=> b!6348496 m!7155730))

(declare-fun m!7155734 () Bool)

(assert (=> b!6348496 m!7155734))

(assert (=> b!6348009 d!1991923))

(declare-fun d!1991935 () Bool)

(declare-fun c!1154782 () Bool)

(assert (=> d!1991935 (= c!1154782 (isEmpty!37033 (t!378653 s!2326)))))

(declare-fun e!3855637 () Bool)

(assert (=> d!1991935 (= (matchZipper!2267 lt!2364172 (t!378653 s!2326)) e!3855637)))

(declare-fun b!6348504 () Bool)

(assert (=> b!6348504 (= e!3855637 (nullableZipper!2021 lt!2364172))))

(declare-fun b!6348505 () Bool)

(assert (=> b!6348505 (= e!3855637 (matchZipper!2267 (derivationStepZipper!2221 lt!2364172 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))))))

(assert (= (and d!1991935 c!1154782) b!6348504))

(assert (= (and d!1991935 (not c!1154782)) b!6348505))

(assert (=> d!1991935 m!7155720))

(declare-fun m!7155742 () Bool)

(assert (=> b!6348504 m!7155742))

(assert (=> b!6348505 m!7155726))

(assert (=> b!6348505 m!7155726))

(declare-fun m!7155744 () Bool)

(assert (=> b!6348505 m!7155744))

(assert (=> b!6348505 m!7155730))

(assert (=> b!6348505 m!7155744))

(assert (=> b!6348505 m!7155730))

(declare-fun m!7155746 () Bool)

(assert (=> b!6348505 m!7155746))

(assert (=> b!6347998 d!1991935))

(declare-fun d!1991939 () Bool)

(declare-fun c!1154783 () Bool)

(assert (=> d!1991939 (= c!1154783 (isEmpty!37033 (t!378653 s!2326)))))

(declare-fun e!3855638 () Bool)

(assert (=> d!1991939 (= (matchZipper!2267 lt!2364175 (t!378653 s!2326)) e!3855638)))

(declare-fun b!6348506 () Bool)

(assert (=> b!6348506 (= e!3855638 (nullableZipper!2021 lt!2364175))))

(declare-fun b!6348507 () Bool)

(assert (=> b!6348507 (= e!3855638 (matchZipper!2267 (derivationStepZipper!2221 lt!2364175 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))))))

(assert (= (and d!1991939 c!1154783) b!6348506))

(assert (= (and d!1991939 (not c!1154783)) b!6348507))

(assert (=> d!1991939 m!7155720))

(declare-fun m!7155752 () Bool)

(assert (=> b!6348506 m!7155752))

(assert (=> b!6348507 m!7155726))

(assert (=> b!6348507 m!7155726))

(declare-fun m!7155754 () Bool)

(assert (=> b!6348507 m!7155754))

(assert (=> b!6348507 m!7155730))

(assert (=> b!6348507 m!7155754))

(assert (=> b!6348507 m!7155730))

(declare-fun m!7155756 () Bool)

(assert (=> b!6348507 m!7155756))

(assert (=> b!6347998 d!1991939))

(declare-fun d!1991943 () Bool)

(assert (=> d!1991943 (= (isEmpty!37030 (t!378652 (exprs!6139 (h!71390 zl!343)))) ((_ is Nil!64940) (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348019 d!1991943))

(declare-fun d!1991945 () Bool)

(declare-fun lt!2364256 () Int)

(assert (=> d!1991945 (>= lt!2364256 0)))

(declare-fun e!3855650 () Int)

(assert (=> d!1991945 (= lt!2364256 e!3855650)))

(declare-fun c!1154790 () Bool)

(assert (=> d!1991945 (= c!1154790 ((_ is Cons!64942) lt!2364170))))

(assert (=> d!1991945 (= (zipperDepthTotal!392 lt!2364170) lt!2364256)))

(declare-fun b!6348525 () Bool)

(assert (=> b!6348525 (= e!3855650 (+ (contextDepthTotal!364 (h!71390 lt!2364170)) (zipperDepthTotal!392 (t!378654 lt!2364170))))))

(declare-fun b!6348526 () Bool)

(assert (=> b!6348526 (= e!3855650 0)))

(assert (= (and d!1991945 c!1154790) b!6348525))

(assert (= (and d!1991945 (not c!1154790)) b!6348526))

(declare-fun m!7155768 () Bool)

(assert (=> b!6348525 m!7155768))

(declare-fun m!7155770 () Bool)

(assert (=> b!6348525 m!7155770))

(assert (=> b!6348008 d!1991945))

(declare-fun d!1991955 () Bool)

(declare-fun lt!2364257 () Int)

(assert (=> d!1991955 (>= lt!2364257 0)))

(declare-fun e!3855651 () Int)

(assert (=> d!1991955 (= lt!2364257 e!3855651)))

(declare-fun c!1154791 () Bool)

(assert (=> d!1991955 (= c!1154791 ((_ is Cons!64942) zl!343))))

(assert (=> d!1991955 (= (zipperDepthTotal!392 zl!343) lt!2364257)))

(declare-fun b!6348527 () Bool)

(assert (=> b!6348527 (= e!3855651 (+ (contextDepthTotal!364 (h!71390 zl!343)) (zipperDepthTotal!392 (t!378654 zl!343))))))

(declare-fun b!6348528 () Bool)

(assert (=> b!6348528 (= e!3855651 0)))

(assert (= (and d!1991955 c!1154791) b!6348527))

(assert (= (and d!1991955 (not c!1154791)) b!6348528))

(assert (=> b!6348527 m!7155362))

(declare-fun m!7155778 () Bool)

(assert (=> b!6348527 m!7155778))

(assert (=> b!6348008 d!1991955))

(declare-fun bs!1589366 () Bool)

(declare-fun d!1991959 () Bool)

(assert (= bs!1589366 (and d!1991959 d!1991903)))

(declare-fun lambda!349128 () Int)

(assert (=> bs!1589366 (= lambda!349128 lambda!349111)))

(declare-fun bs!1589367 () Bool)

(assert (= bs!1589367 (and d!1991959 d!1991913)))

(assert (=> bs!1589367 (= lambda!349128 lambda!349122)))

(assert (=> d!1991959 (= (inv!83884 setElem!43224) (forall!15421 (exprs!6139 setElem!43224) lambda!349128))))

(declare-fun bs!1589369 () Bool)

(assert (= bs!1589369 d!1991959))

(declare-fun m!7155786 () Bool)

(assert (=> bs!1589369 m!7155786))

(assert (=> setNonEmpty!43224 d!1991959))

(declare-fun bs!1589386 () Bool)

(declare-fun b!6348652 () Bool)

(assert (= bs!1589386 (and b!6348652 b!6348005)))

(declare-fun lambda!349146 () Int)

(assert (=> bs!1589386 (not (= lambda!349146 lambda!349077))))

(assert (=> bs!1589386 (not (= lambda!349146 lambda!349078))))

(declare-fun bs!1589387 () Bool)

(assert (= bs!1589387 (and b!6348652 b!6348025)))

(assert (=> bs!1589387 (not (= lambda!349146 lambda!349080))))

(assert (=> bs!1589387 (not (= lambda!349146 lambda!349081))))

(assert (=> b!6348652 true))

(assert (=> b!6348652 true))

(declare-fun bs!1589388 () Bool)

(declare-fun b!6348655 () Bool)

(assert (= bs!1589388 (and b!6348655 b!6348025)))

(declare-fun lambda!349147 () Int)

(assert (=> bs!1589388 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349147 lambda!349081))))

(assert (=> bs!1589388 (not (= lambda!349147 lambda!349080))))

(declare-fun bs!1589389 () Bool)

(assert (= bs!1589389 (and b!6348655 b!6348652)))

(assert (=> bs!1589389 (not (= lambda!349147 lambda!349146))))

(declare-fun bs!1589390 () Bool)

(assert (= bs!1589390 (and b!6348655 b!6348005)))

(assert (=> bs!1589390 (= lambda!349147 lambda!349078)))

(assert (=> bs!1589390 (not (= lambda!349147 lambda!349077))))

(assert (=> b!6348655 true))

(assert (=> b!6348655 true))

(declare-fun d!1991963 () Bool)

(declare-fun c!1154821 () Bool)

(assert (=> d!1991963 (= c!1154821 ((_ is EmptyExpr!16255) r!7292))))

(declare-fun e!3855714 () Bool)

(assert (=> d!1991963 (= (matchRSpec!3356 r!7292 s!2326) e!3855714)))

(declare-fun b!6348650 () Bool)

(declare-fun e!3855717 () Bool)

(assert (=> b!6348650 (= e!3855717 (matchRSpec!3356 (regTwo!33023 r!7292) s!2326))))

(declare-fun b!6348651 () Bool)

(declare-fun c!1154823 () Bool)

(assert (=> b!6348651 (= c!1154823 ((_ is Union!16255) r!7292))))

(declare-fun e!3855716 () Bool)

(declare-fun e!3855713 () Bool)

(assert (=> b!6348651 (= e!3855716 e!3855713)))

(declare-fun bm!541202 () Bool)

(declare-fun call!541207 () Bool)

(assert (=> bm!541202 (= call!541207 (isEmpty!37033 s!2326))))

(declare-fun e!3855715 () Bool)

(declare-fun call!541208 () Bool)

(assert (=> b!6348652 (= e!3855715 call!541208)))

(declare-fun b!6348653 () Bool)

(assert (=> b!6348653 (= e!3855716 (= s!2326 (Cons!64941 (c!1154628 r!7292) Nil!64941)))))

(declare-fun b!6348654 () Bool)

(declare-fun e!3855718 () Bool)

(assert (=> b!6348654 (= e!3855714 e!3855718)))

(declare-fun res!2612397 () Bool)

(assert (=> b!6348654 (= res!2612397 (not ((_ is EmptyLang!16255) r!7292)))))

(assert (=> b!6348654 (=> (not res!2612397) (not e!3855718))))

(declare-fun e!3855719 () Bool)

(assert (=> b!6348655 (= e!3855719 call!541208)))

(declare-fun b!6348656 () Bool)

(assert (=> b!6348656 (= e!3855714 call!541207)))

(declare-fun c!1154820 () Bool)

(declare-fun bm!541203 () Bool)

(assert (=> bm!541203 (= call!541208 (Exists!3325 (ite c!1154820 lambda!349146 lambda!349147)))))

(declare-fun b!6348657 () Bool)

(assert (=> b!6348657 (= e!3855713 e!3855717)))

(declare-fun res!2612398 () Bool)

(assert (=> b!6348657 (= res!2612398 (matchRSpec!3356 (regOne!33023 r!7292) s!2326))))

(assert (=> b!6348657 (=> res!2612398 e!3855717)))

(declare-fun b!6348658 () Bool)

(declare-fun c!1154822 () Bool)

(assert (=> b!6348658 (= c!1154822 ((_ is ElementMatch!16255) r!7292))))

(assert (=> b!6348658 (= e!3855718 e!3855716)))

(declare-fun b!6348659 () Bool)

(declare-fun res!2612399 () Bool)

(assert (=> b!6348659 (=> res!2612399 e!3855715)))

(assert (=> b!6348659 (= res!2612399 call!541207)))

(assert (=> b!6348659 (= e!3855719 e!3855715)))

(declare-fun b!6348660 () Bool)

(assert (=> b!6348660 (= e!3855713 e!3855719)))

(assert (=> b!6348660 (= c!1154820 ((_ is Star!16255) r!7292))))

(assert (= (and d!1991963 c!1154821) b!6348656))

(assert (= (and d!1991963 (not c!1154821)) b!6348654))

(assert (= (and b!6348654 res!2612397) b!6348658))

(assert (= (and b!6348658 c!1154822) b!6348653))

(assert (= (and b!6348658 (not c!1154822)) b!6348651))

(assert (= (and b!6348651 c!1154823) b!6348657))

(assert (= (and b!6348651 (not c!1154823)) b!6348660))

(assert (= (and b!6348657 (not res!2612398)) b!6348650))

(assert (= (and b!6348660 c!1154820) b!6348659))

(assert (= (and b!6348660 (not c!1154820)) b!6348655))

(assert (= (and b!6348659 (not res!2612399)) b!6348652))

(assert (= (or b!6348652 b!6348655) bm!541203))

(assert (= (or b!6348656 b!6348659) bm!541202))

(declare-fun m!7155844 () Bool)

(assert (=> b!6348650 m!7155844))

(declare-fun m!7155846 () Bool)

(assert (=> bm!541202 m!7155846))

(declare-fun m!7155848 () Bool)

(assert (=> bm!541203 m!7155848))

(declare-fun m!7155850 () Bool)

(assert (=> b!6348657 m!7155850))

(assert (=> b!6348018 d!1991963))

(declare-fun b!6348689 () Bool)

(declare-fun e!3855734 () Bool)

(declare-fun lt!2364285 () Bool)

(declare-fun call!541211 () Bool)

(assert (=> b!6348689 (= e!3855734 (= lt!2364285 call!541211))))

(declare-fun b!6348690 () Bool)

(declare-fun e!3855739 () Bool)

(assert (=> b!6348690 (= e!3855739 (= (head!13003 s!2326) (c!1154628 r!7292)))))

(declare-fun b!6348691 () Bool)

(declare-fun e!3855738 () Bool)

(declare-fun derivativeStep!4960 (Regex!16255 C!32780) Regex!16255)

(assert (=> b!6348691 (= e!3855738 (matchR!8438 (derivativeStep!4960 r!7292 (head!13003 s!2326)) (tail!12088 s!2326)))))

(declare-fun b!6348692 () Bool)

(declare-fun res!2612420 () Bool)

(declare-fun e!3855737 () Bool)

(assert (=> b!6348692 (=> res!2612420 e!3855737)))

(assert (=> b!6348692 (= res!2612420 (not (isEmpty!37033 (tail!12088 s!2326))))))

(declare-fun b!6348693 () Bool)

(declare-fun e!3855736 () Bool)

(assert (=> b!6348693 (= e!3855736 e!3855737)))

(declare-fun res!2612417 () Bool)

(assert (=> b!6348693 (=> res!2612417 e!3855737)))

(assert (=> b!6348693 (= res!2612417 call!541211)))

(declare-fun b!6348694 () Bool)

(declare-fun e!3855740 () Bool)

(assert (=> b!6348694 (= e!3855740 (not lt!2364285))))

(declare-fun b!6348695 () Bool)

(assert (=> b!6348695 (= e!3855738 (nullable!6248 r!7292))))

(declare-fun d!1991981 () Bool)

(assert (=> d!1991981 e!3855734))

(declare-fun c!1154832 () Bool)

(assert (=> d!1991981 (= c!1154832 ((_ is EmptyExpr!16255) r!7292))))

(assert (=> d!1991981 (= lt!2364285 e!3855738)))

(declare-fun c!1154830 () Bool)

(assert (=> d!1991981 (= c!1154830 (isEmpty!37033 s!2326))))

(assert (=> d!1991981 (validRegex!7991 r!7292)))

(assert (=> d!1991981 (= (matchR!8438 r!7292 s!2326) lt!2364285)))

(declare-fun b!6348696 () Bool)

(declare-fun res!2612419 () Bool)

(declare-fun e!3855735 () Bool)

(assert (=> b!6348696 (=> res!2612419 e!3855735)))

(assert (=> b!6348696 (= res!2612419 (not ((_ is ElementMatch!16255) r!7292)))))

(assert (=> b!6348696 (= e!3855740 e!3855735)))

(declare-fun b!6348697 () Bool)

(declare-fun res!2612423 () Bool)

(assert (=> b!6348697 (=> (not res!2612423) (not e!3855739))))

(assert (=> b!6348697 (= res!2612423 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6348698 () Bool)

(assert (=> b!6348698 (= e!3855734 e!3855740)))

(declare-fun c!1154831 () Bool)

(assert (=> b!6348698 (= c!1154831 ((_ is EmptyLang!16255) r!7292))))

(declare-fun b!6348699 () Bool)

(assert (=> b!6348699 (= e!3855735 e!3855736)))

(declare-fun res!2612421 () Bool)

(assert (=> b!6348699 (=> (not res!2612421) (not e!3855736))))

(assert (=> b!6348699 (= res!2612421 (not lt!2364285))))

(declare-fun b!6348700 () Bool)

(assert (=> b!6348700 (= e!3855737 (not (= (head!13003 s!2326) (c!1154628 r!7292))))))

(declare-fun bm!541206 () Bool)

(assert (=> bm!541206 (= call!541211 (isEmpty!37033 s!2326))))

(declare-fun b!6348701 () Bool)

(declare-fun res!2612418 () Bool)

(assert (=> b!6348701 (=> (not res!2612418) (not e!3855739))))

(assert (=> b!6348701 (= res!2612418 (not call!541211))))

(declare-fun b!6348702 () Bool)

(declare-fun res!2612416 () Bool)

(assert (=> b!6348702 (=> res!2612416 e!3855735)))

(assert (=> b!6348702 (= res!2612416 e!3855739)))

(declare-fun res!2612422 () Bool)

(assert (=> b!6348702 (=> (not res!2612422) (not e!3855739))))

(assert (=> b!6348702 (= res!2612422 lt!2364285)))

(assert (= (and d!1991981 c!1154830) b!6348695))

(assert (= (and d!1991981 (not c!1154830)) b!6348691))

(assert (= (and d!1991981 c!1154832) b!6348689))

(assert (= (and d!1991981 (not c!1154832)) b!6348698))

(assert (= (and b!6348698 c!1154831) b!6348694))

(assert (= (and b!6348698 (not c!1154831)) b!6348696))

(assert (= (and b!6348696 (not res!2612419)) b!6348702))

(assert (= (and b!6348702 res!2612422) b!6348701))

(assert (= (and b!6348701 res!2612418) b!6348697))

(assert (= (and b!6348697 res!2612423) b!6348690))

(assert (= (and b!6348702 (not res!2612416)) b!6348699))

(assert (= (and b!6348699 res!2612421) b!6348693))

(assert (= (and b!6348693 (not res!2612417)) b!6348692))

(assert (= (and b!6348692 (not res!2612420)) b!6348700))

(assert (= (or b!6348689 b!6348693 b!6348701) bm!541206))

(declare-fun m!7155852 () Bool)

(assert (=> b!6348695 m!7155852))

(assert (=> d!1991981 m!7155846))

(assert (=> d!1991981 m!7155256))

(declare-fun m!7155854 () Bool)

(assert (=> b!6348690 m!7155854))

(declare-fun m!7155856 () Bool)

(assert (=> b!6348697 m!7155856))

(assert (=> b!6348697 m!7155856))

(declare-fun m!7155858 () Bool)

(assert (=> b!6348697 m!7155858))

(assert (=> bm!541206 m!7155846))

(assert (=> b!6348691 m!7155854))

(assert (=> b!6348691 m!7155854))

(declare-fun m!7155860 () Bool)

(assert (=> b!6348691 m!7155860))

(assert (=> b!6348691 m!7155856))

(assert (=> b!6348691 m!7155860))

(assert (=> b!6348691 m!7155856))

(declare-fun m!7155862 () Bool)

(assert (=> b!6348691 m!7155862))

(assert (=> b!6348692 m!7155856))

(assert (=> b!6348692 m!7155856))

(assert (=> b!6348692 m!7155858))

(assert (=> b!6348700 m!7155854))

(assert (=> b!6348018 d!1991981))

(declare-fun d!1991983 () Bool)

(assert (=> d!1991983 (= (matchR!8438 r!7292 s!2326) (matchRSpec!3356 r!7292 s!2326))))

(declare-fun lt!2364288 () Unit!158351)

(declare-fun choose!47109 (Regex!16255 List!65065) Unit!158351)

(assert (=> d!1991983 (= lt!2364288 (choose!47109 r!7292 s!2326))))

(assert (=> d!1991983 (validRegex!7991 r!7292)))

(assert (=> d!1991983 (= (mainMatchTheorem!3356 r!7292 s!2326) lt!2364288)))

(declare-fun bs!1589391 () Bool)

(assert (= bs!1589391 d!1991983))

(assert (=> bs!1589391 m!7155276))

(assert (=> bs!1589391 m!7155274))

(declare-fun m!7155864 () Bool)

(assert (=> bs!1589391 m!7155864))

(assert (=> bs!1589391 m!7155256))

(assert (=> b!6348018 d!1991983))

(declare-fun d!1991985 () Bool)

(declare-fun choose!47110 ((InoxSet Context!11278) Int) (InoxSet Context!11278))

(assert (=> d!1991985 (= (flatMap!1760 lt!2364158 lambda!349079) (choose!47110 lt!2364158 lambda!349079))))

(declare-fun bs!1589392 () Bool)

(assert (= bs!1589392 d!1991985))

(declare-fun m!7155866 () Bool)

(assert (=> bs!1589392 m!7155866))

(assert (=> b!6348007 d!1991985))

(declare-fun call!541214 () (InoxSet Context!11278))

(declare-fun e!3855749 () (InoxSet Context!11278))

(declare-fun b!6348713 () Bool)

(assert (=> b!6348713 (= e!3855749 ((_ map or) call!541214 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 lt!2364171))) (h!71389 s!2326))))))

(declare-fun bm!541209 () Bool)

(assert (=> bm!541209 (= call!541214 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 lt!2364171)) (Context!11279 (t!378652 (exprs!6139 lt!2364171))) (h!71389 s!2326)))))

(declare-fun b!6348714 () Bool)

(declare-fun e!3855748 () (InoxSet Context!11278))

(assert (=> b!6348714 (= e!3855748 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6348715 () Bool)

(assert (=> b!6348715 (= e!3855748 call!541214)))

(declare-fun b!6348716 () Bool)

(declare-fun e!3855747 () Bool)

(assert (=> b!6348716 (= e!3855747 (nullable!6248 (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun d!1991987 () Bool)

(declare-fun c!1154838 () Bool)

(assert (=> d!1991987 (= c!1154838 e!3855747)))

(declare-fun res!2612426 () Bool)

(assert (=> d!1991987 (=> (not res!2612426) (not e!3855747))))

(assert (=> d!1991987 (= res!2612426 ((_ is Cons!64940) (exprs!6139 lt!2364171)))))

(assert (=> d!1991987 (= (derivationStepZipperUp!1429 lt!2364171 (h!71389 s!2326)) e!3855749)))

(declare-fun b!6348717 () Bool)

(assert (=> b!6348717 (= e!3855749 e!3855748)))

(declare-fun c!1154837 () Bool)

(assert (=> b!6348717 (= c!1154837 ((_ is Cons!64940) (exprs!6139 lt!2364171)))))

(assert (= (and d!1991987 res!2612426) b!6348716))

(assert (= (and d!1991987 c!1154838) b!6348713))

(assert (= (and d!1991987 (not c!1154838)) b!6348717))

(assert (= (and b!6348717 c!1154837) b!6348715))

(assert (= (and b!6348717 (not c!1154837)) b!6348714))

(assert (= (or b!6348713 b!6348715) bm!541209))

(declare-fun m!7155868 () Bool)

(assert (=> b!6348713 m!7155868))

(declare-fun m!7155870 () Bool)

(assert (=> bm!541209 m!7155870))

(declare-fun m!7155872 () Bool)

(assert (=> b!6348716 m!7155872))

(assert (=> b!6348007 d!1991987))

(declare-fun d!1991989 () Bool)

(declare-fun dynLambda!25745 (Int Context!11278) (InoxSet Context!11278))

(assert (=> d!1991989 (= (flatMap!1760 lt!2364158 lambda!349079) (dynLambda!25745 lambda!349079 lt!2364171))))

(declare-fun lt!2364291 () Unit!158351)

(declare-fun choose!47112 ((InoxSet Context!11278) Context!11278 Int) Unit!158351)

(assert (=> d!1991989 (= lt!2364291 (choose!47112 lt!2364158 lt!2364171 lambda!349079))))

(assert (=> d!1991989 (= lt!2364158 (store ((as const (Array Context!11278 Bool)) false) lt!2364171 true))))

(assert (=> d!1991989 (= (lemmaFlatMapOnSingletonSet!1286 lt!2364158 lt!2364171 lambda!349079) lt!2364291)))

(declare-fun b_lambda!241485 () Bool)

(assert (=> (not b_lambda!241485) (not d!1991989)))

(declare-fun bs!1589393 () Bool)

(assert (= bs!1589393 d!1991989))

(assert (=> bs!1589393 m!7155286))

(declare-fun m!7155874 () Bool)

(assert (=> bs!1589393 m!7155874))

(declare-fun m!7155876 () Bool)

(assert (=> bs!1589393 m!7155876))

(assert (=> bs!1589393 m!7155292))

(assert (=> b!6348007 d!1991989))

(declare-fun bs!1589394 () Bool)

(declare-fun d!1991991 () Bool)

(assert (= bs!1589394 (and d!1991991 b!6348017)))

(declare-fun lambda!349150 () Int)

(assert (=> bs!1589394 (= lambda!349150 lambda!349079)))

(assert (=> d!1991991 true))

(assert (=> d!1991991 (= (derivationStepZipper!2221 lt!2364158 (h!71389 s!2326)) (flatMap!1760 lt!2364158 lambda!349150))))

(declare-fun bs!1589395 () Bool)

(assert (= bs!1589395 d!1991991))

(declare-fun m!7155878 () Bool)

(assert (=> bs!1589395 m!7155878))

(assert (=> b!6348007 d!1991991))

(declare-fun d!1991993 () Bool)

(assert (=> d!1991993 (= (flatMap!1760 z!1189 lambda!349079) (choose!47110 z!1189 lambda!349079))))

(declare-fun bs!1589396 () Bool)

(assert (= bs!1589396 d!1991993))

(declare-fun m!7155880 () Bool)

(assert (=> bs!1589396 m!7155880))

(assert (=> b!6348017 d!1991993))

(declare-fun call!541215 () (InoxSet Context!11278))

(declare-fun b!6348720 () Bool)

(declare-fun e!3855752 () (InoxSet Context!11278))

(assert (=> b!6348720 (= e!3855752 ((_ map or) call!541215 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (h!71389 s!2326))))))

(declare-fun bm!541210 () Bool)

(assert (=> bm!541210 (= call!541215 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (h!71389 s!2326)))))

(declare-fun b!6348721 () Bool)

(declare-fun e!3855751 () (InoxSet Context!11278))

(assert (=> b!6348721 (= e!3855751 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6348722 () Bool)

(assert (=> b!6348722 (= e!3855751 call!541215)))

(declare-fun b!6348723 () Bool)

(declare-fun e!3855750 () Bool)

(assert (=> b!6348723 (= e!3855750 (nullable!6248 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun d!1991995 () Bool)

(declare-fun c!1154842 () Bool)

(assert (=> d!1991995 (= c!1154842 e!3855750)))

(declare-fun res!2612427 () Bool)

(assert (=> d!1991995 (=> (not res!2612427) (not e!3855750))))

(assert (=> d!1991995 (= res!2612427 ((_ is Cons!64940) (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))

(assert (=> d!1991995 (= (derivationStepZipperUp!1429 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))) (h!71389 s!2326)) e!3855752)))

(declare-fun b!6348724 () Bool)

(assert (=> b!6348724 (= e!3855752 e!3855751)))

(declare-fun c!1154841 () Bool)

(assert (=> b!6348724 (= c!1154841 ((_ is Cons!64940) (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))

(assert (= (and d!1991995 res!2612427) b!6348723))

(assert (= (and d!1991995 c!1154842) b!6348720))

(assert (= (and d!1991995 (not c!1154842)) b!6348724))

(assert (= (and b!6348724 c!1154841) b!6348722))

(assert (= (and b!6348724 (not c!1154841)) b!6348721))

(assert (= (or b!6348720 b!6348722) bm!541210))

(declare-fun m!7155882 () Bool)

(assert (=> b!6348720 m!7155882))

(declare-fun m!7155884 () Bool)

(assert (=> bm!541210 m!7155884))

(declare-fun m!7155886 () Bool)

(assert (=> b!6348723 m!7155886))

(assert (=> b!6348017 d!1991995))

(declare-fun e!3855755 () (InoxSet Context!11278))

(declare-fun call!541216 () (InoxSet Context!11278))

(declare-fun b!6348725 () Bool)

(assert (=> b!6348725 (= e!3855755 ((_ map or) call!541216 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 lt!2364161))) (h!71389 s!2326))))))

(declare-fun bm!541211 () Bool)

(assert (=> bm!541211 (= call!541216 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 lt!2364161)) (Context!11279 (t!378652 (exprs!6139 lt!2364161))) (h!71389 s!2326)))))

(declare-fun b!6348726 () Bool)

(declare-fun e!3855754 () (InoxSet Context!11278))

(assert (=> b!6348726 (= e!3855754 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6348727 () Bool)

(assert (=> b!6348727 (= e!3855754 call!541216)))

(declare-fun b!6348728 () Bool)

(declare-fun e!3855753 () Bool)

(assert (=> b!6348728 (= e!3855753 (nullable!6248 (h!71388 (exprs!6139 lt!2364161))))))

(declare-fun d!1991997 () Bool)

(declare-fun c!1154844 () Bool)

(assert (=> d!1991997 (= c!1154844 e!3855753)))

(declare-fun res!2612428 () Bool)

(assert (=> d!1991997 (=> (not res!2612428) (not e!3855753))))

(assert (=> d!1991997 (= res!2612428 ((_ is Cons!64940) (exprs!6139 lt!2364161)))))

(assert (=> d!1991997 (= (derivationStepZipperUp!1429 lt!2364161 (h!71389 s!2326)) e!3855755)))

(declare-fun b!6348729 () Bool)

(assert (=> b!6348729 (= e!3855755 e!3855754)))

(declare-fun c!1154843 () Bool)

(assert (=> b!6348729 (= c!1154843 ((_ is Cons!64940) (exprs!6139 lt!2364161)))))

(assert (= (and d!1991997 res!2612428) b!6348728))

(assert (= (and d!1991997 c!1154844) b!6348725))

(assert (= (and d!1991997 (not c!1154844)) b!6348729))

(assert (= (and b!6348729 c!1154843) b!6348727))

(assert (= (and b!6348729 (not c!1154843)) b!6348726))

(assert (= (or b!6348725 b!6348727) bm!541211))

(declare-fun m!7155888 () Bool)

(assert (=> b!6348725 m!7155888))

(declare-fun m!7155890 () Bool)

(assert (=> bm!541211 m!7155890))

(declare-fun m!7155892 () Bool)

(assert (=> b!6348728 m!7155892))

(assert (=> b!6348017 d!1991997))

(declare-fun e!3855758 () (InoxSet Context!11278))

(declare-fun call!541217 () (InoxSet Context!11278))

(declare-fun b!6348730 () Bool)

(assert (=> b!6348730 (= e!3855758 ((_ map or) call!541217 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) (h!71389 s!2326))))))

(declare-fun bm!541212 () Bool)

(assert (=> bm!541212 (= call!541217 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (h!71390 zl!343))) (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) (h!71389 s!2326)))))

(declare-fun b!6348731 () Bool)

(declare-fun e!3855757 () (InoxSet Context!11278))

(assert (=> b!6348731 (= e!3855757 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6348732 () Bool)

(assert (=> b!6348732 (= e!3855757 call!541217)))

(declare-fun b!6348733 () Bool)

(declare-fun e!3855756 () Bool)

(assert (=> b!6348733 (= e!3855756 (nullable!6248 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun d!1991999 () Bool)

(declare-fun c!1154846 () Bool)

(assert (=> d!1991999 (= c!1154846 e!3855756)))

(declare-fun res!2612429 () Bool)

(assert (=> d!1991999 (=> (not res!2612429) (not e!3855756))))

(assert (=> d!1991999 (= res!2612429 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> d!1991999 (= (derivationStepZipperUp!1429 (h!71390 zl!343) (h!71389 s!2326)) e!3855758)))

(declare-fun b!6348734 () Bool)

(assert (=> b!6348734 (= e!3855758 e!3855757)))

(declare-fun c!1154845 () Bool)

(assert (=> b!6348734 (= c!1154845 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (= (and d!1991999 res!2612429) b!6348733))

(assert (= (and d!1991999 c!1154846) b!6348730))

(assert (= (and d!1991999 (not c!1154846)) b!6348734))

(assert (= (and b!6348734 c!1154845) b!6348732))

(assert (= (and b!6348734 (not c!1154845)) b!6348731))

(assert (= (or b!6348730 b!6348732) bm!541212))

(declare-fun m!7155894 () Bool)

(assert (=> b!6348730 m!7155894))

(declare-fun m!7155896 () Bool)

(assert (=> bm!541212 m!7155896))

(assert (=> b!6348733 m!7155374))

(assert (=> b!6348017 d!1991999))

(declare-fun d!1992001 () Bool)

(assert (=> d!1992001 (= (flatMap!1760 z!1189 lambda!349079) (dynLambda!25745 lambda!349079 (h!71390 zl!343)))))

(declare-fun lt!2364292 () Unit!158351)

(assert (=> d!1992001 (= lt!2364292 (choose!47112 z!1189 (h!71390 zl!343) lambda!349079))))

(assert (=> d!1992001 (= z!1189 (store ((as const (Array Context!11278 Bool)) false) (h!71390 zl!343) true))))

(assert (=> d!1992001 (= (lemmaFlatMapOnSingletonSet!1286 z!1189 (h!71390 zl!343) lambda!349079) lt!2364292)))

(declare-fun b_lambda!241487 () Bool)

(assert (=> (not b_lambda!241487) (not d!1992001)))

(declare-fun bs!1589397 () Bool)

(assert (= bs!1589397 d!1992001))

(assert (=> bs!1589397 m!7155376))

(declare-fun m!7155898 () Bool)

(assert (=> bs!1589397 m!7155898))

(declare-fun m!7155900 () Bool)

(assert (=> bs!1589397 m!7155900))

(declare-fun m!7155902 () Bool)

(assert (=> bs!1589397 m!7155902))

(assert (=> b!6348017 d!1992001))

(declare-fun b!6348757 () Bool)

(declare-fun e!3855773 () (InoxSet Context!11278))

(declare-fun e!3855771 () (InoxSet Context!11278))

(assert (=> b!6348757 (= e!3855773 e!3855771)))

(declare-fun c!1154860 () Bool)

(assert (=> b!6348757 (= c!1154860 ((_ is Concat!25100) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348758 () Bool)

(declare-fun e!3855775 () (InoxSet Context!11278))

(declare-fun e!3855772 () (InoxSet Context!11278))

(assert (=> b!6348758 (= e!3855775 e!3855772)))

(declare-fun c!1154861 () Bool)

(assert (=> b!6348758 (= c!1154861 ((_ is Union!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348759 () Bool)

(declare-fun c!1154858 () Bool)

(assert (=> b!6348759 (= c!1154858 ((_ is Star!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun e!3855776 () (InoxSet Context!11278))

(assert (=> b!6348759 (= e!3855771 e!3855776)))

(declare-fun b!6348760 () Bool)

(declare-fun call!541232 () (InoxSet Context!11278))

(declare-fun call!541231 () (InoxSet Context!11278))

(assert (=> b!6348760 (= e!3855773 ((_ map or) call!541232 call!541231))))

(declare-fun d!1992003 () Bool)

(declare-fun c!1154859 () Bool)

(assert (=> d!1992003 (= c!1154859 (and ((_ is ElementMatch!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))) (= (c!1154628 (h!71388 (exprs!6139 (h!71390 zl!343)))) (h!71389 s!2326))))))

(assert (=> d!1992003 (= (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (h!71390 zl!343))) lt!2364161 (h!71389 s!2326)) e!3855775)))

(declare-fun call!541230 () List!65064)

(declare-fun bm!541225 () Bool)

(assert (=> bm!541225 (= call!541232 (derivationStepZipperDown!1503 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))) (ite c!1154861 lt!2364161 (Context!11279 call!541230)) (h!71389 s!2326)))))

(declare-fun b!6348761 () Bool)

(declare-fun e!3855774 () Bool)

(assert (=> b!6348761 (= e!3855774 (nullable!6248 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6348762 () Bool)

(declare-fun call!541234 () (InoxSet Context!11278))

(assert (=> b!6348762 (= e!3855771 call!541234)))

(declare-fun b!6348763 () Bool)

(assert (=> b!6348763 (= e!3855776 call!541234)))

(declare-fun b!6348764 () Bool)

(assert (=> b!6348764 (= e!3855775 (store ((as const (Array Context!11278 Bool)) false) lt!2364161 true))))

(declare-fun bm!541226 () Bool)

(declare-fun call!541235 () (InoxSet Context!11278))

(assert (=> bm!541226 (= call!541231 call!541235)))

(declare-fun c!1154857 () Bool)

(declare-fun call!541233 () List!65064)

(declare-fun bm!541227 () Bool)

(assert (=> bm!541227 (= call!541235 (derivationStepZipperDown!1503 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))) (ite (or c!1154861 c!1154857) lt!2364161 (Context!11279 call!541233)) (h!71389 s!2326)))))

(declare-fun b!6348765 () Bool)

(assert (=> b!6348765 (= e!3855772 ((_ map or) call!541232 call!541235))))

(declare-fun bm!541228 () Bool)

(declare-fun $colon$colon!2116 (List!65064 Regex!16255) List!65064)

(assert (=> bm!541228 (= call!541230 ($colon$colon!2116 (exprs!6139 lt!2364161) (ite (or c!1154857 c!1154860) (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (h!71388 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun bm!541229 () Bool)

(assert (=> bm!541229 (= call!541233 call!541230)))

(declare-fun b!6348766 () Bool)

(assert (=> b!6348766 (= c!1154857 e!3855774)))

(declare-fun res!2612432 () Bool)

(assert (=> b!6348766 (=> (not res!2612432) (not e!3855774))))

(assert (=> b!6348766 (= res!2612432 ((_ is Concat!25100) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348766 (= e!3855772 e!3855773)))

(declare-fun bm!541230 () Bool)

(assert (=> bm!541230 (= call!541234 call!541231)))

(declare-fun b!6348767 () Bool)

(assert (=> b!6348767 (= e!3855776 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992003 c!1154859) b!6348764))

(assert (= (and d!1992003 (not c!1154859)) b!6348758))

(assert (= (and b!6348758 c!1154861) b!6348765))

(assert (= (and b!6348758 (not c!1154861)) b!6348766))

(assert (= (and b!6348766 res!2612432) b!6348761))

(assert (= (and b!6348766 c!1154857) b!6348760))

(assert (= (and b!6348766 (not c!1154857)) b!6348757))

(assert (= (and b!6348757 c!1154860) b!6348762))

(assert (= (and b!6348757 (not c!1154860)) b!6348759))

(assert (= (and b!6348759 c!1154858) b!6348763))

(assert (= (and b!6348759 (not c!1154858)) b!6348767))

(assert (= (or b!6348762 b!6348763) bm!541229))

(assert (= (or b!6348762 b!6348763) bm!541230))

(assert (= (or b!6348760 bm!541229) bm!541228))

(assert (= (or b!6348760 bm!541230) bm!541226))

(assert (= (or b!6348765 bm!541226) bm!541227))

(assert (= (or b!6348765 b!6348760) bm!541225))

(declare-fun m!7155904 () Bool)

(assert (=> bm!541228 m!7155904))

(declare-fun m!7155906 () Bool)

(assert (=> b!6348761 m!7155906))

(declare-fun m!7155908 () Bool)

(assert (=> bm!541225 m!7155908))

(declare-fun m!7155910 () Bool)

(assert (=> bm!541227 m!7155910))

(declare-fun m!7155912 () Bool)

(assert (=> b!6348764 m!7155912))

(assert (=> b!6348017 d!1992003))

(declare-fun d!1992005 () Bool)

(declare-fun nullableFct!2195 (Regex!16255) Bool)

(assert (=> d!1992005 (= (nullable!6248 (h!71388 (exprs!6139 (h!71390 zl!343)))) (nullableFct!2195 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun bs!1589398 () Bool)

(assert (= bs!1589398 d!1992005))

(declare-fun m!7155914 () Bool)

(assert (=> bs!1589398 m!7155914))

(assert (=> b!6348017 d!1992005))

(declare-fun d!1992007 () Bool)

(declare-fun c!1154862 () Bool)

(assert (=> d!1992007 (= c!1154862 (isEmpty!37033 (t!378653 s!2326)))))

(declare-fun e!3855777 () Bool)

(assert (=> d!1992007 (= (matchZipper!2267 lt!2364165 (t!378653 s!2326)) e!3855777)))

(declare-fun b!6348768 () Bool)

(assert (=> b!6348768 (= e!3855777 (nullableZipper!2021 lt!2364165))))

(declare-fun b!6348769 () Bool)

(assert (=> b!6348769 (= e!3855777 (matchZipper!2267 (derivationStepZipper!2221 lt!2364165 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))))))

(assert (= (and d!1992007 c!1154862) b!6348768))

(assert (= (and d!1992007 (not c!1154862)) b!6348769))

(assert (=> d!1992007 m!7155720))

(declare-fun m!7155916 () Bool)

(assert (=> b!6348768 m!7155916))

(assert (=> b!6348769 m!7155726))

(assert (=> b!6348769 m!7155726))

(declare-fun m!7155918 () Bool)

(assert (=> b!6348769 m!7155918))

(assert (=> b!6348769 m!7155730))

(assert (=> b!6348769 m!7155918))

(assert (=> b!6348769 m!7155730))

(declare-fun m!7155920 () Bool)

(assert (=> b!6348769 m!7155920))

(assert (=> b!6348006 d!1992007))

(declare-fun b!6348788 () Bool)

(declare-fun lt!2364300 () Unit!158351)

(declare-fun lt!2364301 () Unit!158351)

(assert (=> b!6348788 (= lt!2364300 lt!2364301)))

(declare-fun ++!14324 (List!65065 List!65065) List!65065)

(assert (=> b!6348788 (= (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2419 (List!65065 C!32780 List!65065 List!65065) Unit!158351)

(assert (=> b!6348788 (= lt!2364301 (lemmaMoveElementToOtherListKeepsConcatEq!2419 Nil!64941 (h!71389 s!2326) (t!378653 s!2326) s!2326))))

(declare-fun e!3855790 () Option!16146)

(assert (=> b!6348788 (= e!3855790 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326) s!2326))))

(declare-fun b!6348789 () Bool)

(declare-fun e!3855792 () Bool)

(declare-fun lt!2364299 () Option!16146)

(declare-fun get!22467 (Option!16146) tuple2!66468)

(assert (=> b!6348789 (= e!3855792 (= (++!14324 (_1!36537 (get!22467 lt!2364299)) (_2!36537 (get!22467 lt!2364299))) s!2326))))

(declare-fun b!6348790 () Bool)

(declare-fun res!2612444 () Bool)

(assert (=> b!6348790 (=> (not res!2612444) (not e!3855792))))

(assert (=> b!6348790 (= res!2612444 (matchR!8438 (regOne!33022 r!7292) (_1!36537 (get!22467 lt!2364299))))))

(declare-fun b!6348791 () Bool)

(declare-fun res!2612443 () Bool)

(assert (=> b!6348791 (=> (not res!2612443) (not e!3855792))))

(assert (=> b!6348791 (= res!2612443 (matchR!8438 (regTwo!33022 r!7292) (_2!36537 (get!22467 lt!2364299))))))

(declare-fun d!1992009 () Bool)

(declare-fun e!3855791 () Bool)

(assert (=> d!1992009 e!3855791))

(declare-fun res!2612446 () Bool)

(assert (=> d!1992009 (=> res!2612446 e!3855791)))

(assert (=> d!1992009 (= res!2612446 e!3855792)))

(declare-fun res!2612447 () Bool)

(assert (=> d!1992009 (=> (not res!2612447) (not e!3855792))))

(assert (=> d!1992009 (= res!2612447 (isDefined!12849 lt!2364299))))

(declare-fun e!3855789 () Option!16146)

(assert (=> d!1992009 (= lt!2364299 e!3855789)))

(declare-fun c!1154868 () Bool)

(declare-fun e!3855788 () Bool)

(assert (=> d!1992009 (= c!1154868 e!3855788)))

(declare-fun res!2612445 () Bool)

(assert (=> d!1992009 (=> (not res!2612445) (not e!3855788))))

(assert (=> d!1992009 (= res!2612445 (matchR!8438 (regOne!33022 r!7292) Nil!64941))))

(assert (=> d!1992009 (validRegex!7991 (regOne!33022 r!7292))))

(assert (=> d!1992009 (= (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326) lt!2364299)))

(declare-fun b!6348792 () Bool)

(assert (=> b!6348792 (= e!3855791 (not (isDefined!12849 lt!2364299)))))

(declare-fun b!6348793 () Bool)

(assert (=> b!6348793 (= e!3855789 e!3855790)))

(declare-fun c!1154867 () Bool)

(assert (=> b!6348793 (= c!1154867 ((_ is Nil!64941) s!2326))))

(declare-fun b!6348794 () Bool)

(assert (=> b!6348794 (= e!3855790 None!16145)))

(declare-fun b!6348795 () Bool)

(assert (=> b!6348795 (= e!3855789 (Some!16145 (tuple2!66469 Nil!64941 s!2326)))))

(declare-fun b!6348796 () Bool)

(assert (=> b!6348796 (= e!3855788 (matchR!8438 (regTwo!33022 r!7292) s!2326))))

(assert (= (and d!1992009 res!2612445) b!6348796))

(assert (= (and d!1992009 c!1154868) b!6348795))

(assert (= (and d!1992009 (not c!1154868)) b!6348793))

(assert (= (and b!6348793 c!1154867) b!6348794))

(assert (= (and b!6348793 (not c!1154867)) b!6348788))

(assert (= (and d!1992009 res!2612447) b!6348790))

(assert (= (and b!6348790 res!2612444) b!6348791))

(assert (= (and b!6348791 res!2612443) b!6348789))

(assert (= (and d!1992009 (not res!2612446)) b!6348792))

(declare-fun m!7155922 () Bool)

(assert (=> b!6348792 m!7155922))

(declare-fun m!7155924 () Bool)

(assert (=> b!6348789 m!7155924))

(declare-fun m!7155926 () Bool)

(assert (=> b!6348789 m!7155926))

(assert (=> b!6348790 m!7155924))

(declare-fun m!7155928 () Bool)

(assert (=> b!6348790 m!7155928))

(declare-fun m!7155930 () Bool)

(assert (=> b!6348796 m!7155930))

(assert (=> d!1992009 m!7155922))

(declare-fun m!7155932 () Bool)

(assert (=> d!1992009 m!7155932))

(declare-fun m!7155934 () Bool)

(assert (=> d!1992009 m!7155934))

(declare-fun m!7155936 () Bool)

(assert (=> b!6348788 m!7155936))

(assert (=> b!6348788 m!7155936))

(declare-fun m!7155938 () Bool)

(assert (=> b!6348788 m!7155938))

(declare-fun m!7155940 () Bool)

(assert (=> b!6348788 m!7155940))

(assert (=> b!6348788 m!7155936))

(declare-fun m!7155942 () Bool)

(assert (=> b!6348788 m!7155942))

(assert (=> b!6348791 m!7155924))

(declare-fun m!7155944 () Bool)

(assert (=> b!6348791 m!7155944))

(assert (=> b!6348005 d!1992009))

(declare-fun d!1992011 () Bool)

(declare-fun choose!47113 (Int) Bool)

(assert (=> d!1992011 (= (Exists!3325 lambda!349077) (choose!47113 lambda!349077))))

(declare-fun bs!1589399 () Bool)

(assert (= bs!1589399 d!1992011))

(declare-fun m!7155946 () Bool)

(assert (=> bs!1589399 m!7155946))

(assert (=> b!6348005 d!1992011))

(declare-fun d!1992013 () Bool)

(assert (=> d!1992013 (= (Exists!3325 lambda!349078) (choose!47113 lambda!349078))))

(declare-fun bs!1589400 () Bool)

(assert (= bs!1589400 d!1992013))

(declare-fun m!7155948 () Bool)

(assert (=> bs!1589400 m!7155948))

(assert (=> b!6348005 d!1992013))

(declare-fun bs!1589401 () Bool)

(declare-fun d!1992015 () Bool)

(assert (= bs!1589401 (and d!1992015 b!6348025)))

(declare-fun lambda!349153 () Int)

(assert (=> bs!1589401 (not (= lambda!349153 lambda!349081))))

(assert (=> bs!1589401 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349153 lambda!349080))))

(declare-fun bs!1589402 () Bool)

(assert (= bs!1589402 (and d!1992015 b!6348652)))

(assert (=> bs!1589402 (not (= lambda!349153 lambda!349146))))

(declare-fun bs!1589403 () Bool)

(assert (= bs!1589403 (and d!1992015 b!6348005)))

(assert (=> bs!1589403 (not (= lambda!349153 lambda!349078))))

(assert (=> bs!1589403 (= lambda!349153 lambda!349077)))

(declare-fun bs!1589404 () Bool)

(assert (= bs!1589404 (and d!1992015 b!6348655)))

(assert (=> bs!1589404 (not (= lambda!349153 lambda!349147))))

(assert (=> d!1992015 true))

(assert (=> d!1992015 true))

(assert (=> d!1992015 true))

(assert (=> d!1992015 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326)) (Exists!3325 lambda!349153))))

(declare-fun lt!2364304 () Unit!158351)

(declare-fun choose!47114 (Regex!16255 Regex!16255 List!65065) Unit!158351)

(assert (=> d!1992015 (= lt!2364304 (choose!47114 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326))))

(assert (=> d!1992015 (validRegex!7991 (regOne!33022 r!7292))))

(assert (=> d!1992015 (= (lemmaFindConcatSeparationEquivalentToExists!2324 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326) lt!2364304)))

(declare-fun bs!1589405 () Bool)

(assert (= bs!1589405 d!1992015))

(declare-fun m!7155950 () Bool)

(assert (=> bs!1589405 m!7155950))

(assert (=> bs!1589405 m!7155934))

(assert (=> bs!1589405 m!7155296))

(declare-fun m!7155952 () Bool)

(assert (=> bs!1589405 m!7155952))

(assert (=> bs!1589405 m!7155296))

(assert (=> bs!1589405 m!7155298))

(assert (=> b!6348005 d!1992015))

(declare-fun bs!1589406 () Bool)

(declare-fun d!1992017 () Bool)

(assert (= bs!1589406 (and d!1992017 d!1992015)))

(declare-fun lambda!349158 () Int)

(assert (=> bs!1589406 (= lambda!349158 lambda!349153)))

(declare-fun bs!1589407 () Bool)

(assert (= bs!1589407 (and d!1992017 b!6348025)))

(assert (=> bs!1589407 (not (= lambda!349158 lambda!349081))))

(assert (=> bs!1589407 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349158 lambda!349080))))

(declare-fun bs!1589408 () Bool)

(assert (= bs!1589408 (and d!1992017 b!6348652)))

(assert (=> bs!1589408 (not (= lambda!349158 lambda!349146))))

(declare-fun bs!1589409 () Bool)

(assert (= bs!1589409 (and d!1992017 b!6348005)))

(assert (=> bs!1589409 (not (= lambda!349158 lambda!349078))))

(assert (=> bs!1589409 (= lambda!349158 lambda!349077)))

(declare-fun bs!1589410 () Bool)

(assert (= bs!1589410 (and d!1992017 b!6348655)))

(assert (=> bs!1589410 (not (= lambda!349158 lambda!349147))))

(assert (=> d!1992017 true))

(assert (=> d!1992017 true))

(assert (=> d!1992017 true))

(declare-fun lambda!349159 () Int)

(assert (=> bs!1589406 (not (= lambda!349159 lambda!349153))))

(assert (=> bs!1589407 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349159 lambda!349081))))

(assert (=> bs!1589407 (not (= lambda!349159 lambda!349080))))

(assert (=> bs!1589408 (not (= lambda!349159 lambda!349146))))

(assert (=> bs!1589409 (= lambda!349159 lambda!349078)))

(declare-fun bs!1589411 () Bool)

(assert (= bs!1589411 d!1992017))

(assert (=> bs!1589411 (not (= lambda!349159 lambda!349158))))

(assert (=> bs!1589409 (not (= lambda!349159 lambda!349077))))

(assert (=> bs!1589410 (= lambda!349159 lambda!349147)))

(assert (=> d!1992017 true))

(assert (=> d!1992017 true))

(assert (=> d!1992017 true))

(assert (=> d!1992017 (= (Exists!3325 lambda!349158) (Exists!3325 lambda!349159))))

(declare-fun lt!2364307 () Unit!158351)

(declare-fun choose!47115 (Regex!16255 Regex!16255 List!65065) Unit!158351)

(assert (=> d!1992017 (= lt!2364307 (choose!47115 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326))))

(assert (=> d!1992017 (validRegex!7991 (regOne!33022 r!7292))))

(assert (=> d!1992017 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1862 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326) lt!2364307)))

(declare-fun m!7155954 () Bool)

(assert (=> bs!1589411 m!7155954))

(declare-fun m!7155956 () Bool)

(assert (=> bs!1589411 m!7155956))

(declare-fun m!7155958 () Bool)

(assert (=> bs!1589411 m!7155958))

(assert (=> bs!1589411 m!7155934))

(assert (=> b!6348005 d!1992017))

(declare-fun d!1992019 () Bool)

(declare-fun isEmpty!37034 (Option!16146) Bool)

(assert (=> d!1992019 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326)) (not (isEmpty!37034 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326))))))

(declare-fun bs!1589412 () Bool)

(assert (= bs!1589412 d!1992019))

(assert (=> bs!1589412 m!7155296))

(declare-fun m!7155960 () Bool)

(assert (=> bs!1589412 m!7155960))

(assert (=> b!6348005 d!1992019))

(declare-fun d!1992021 () Bool)

(assert (=> d!1992021 (= (Exists!3325 lambda!349080) (choose!47113 lambda!349080))))

(declare-fun bs!1589413 () Bool)

(assert (= bs!1589413 d!1992021))

(declare-fun m!7155962 () Bool)

(assert (=> bs!1589413 m!7155962))

(assert (=> b!6348025 d!1992021))

(declare-fun bs!1589414 () Bool)

(declare-fun d!1992023 () Bool)

(assert (= bs!1589414 (and d!1992023 d!1992015)))

(declare-fun lambda!349160 () Int)

(assert (=> bs!1589414 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349160 lambda!349153))))

(declare-fun bs!1589415 () Bool)

(assert (= bs!1589415 (and d!1992023 b!6348025)))

(assert (=> bs!1589415 (not (= lambda!349160 lambda!349081))))

(assert (=> bs!1589415 (= lambda!349160 lambda!349080)))

(declare-fun bs!1589416 () Bool)

(assert (= bs!1589416 (and d!1992023 b!6348652)))

(assert (=> bs!1589416 (not (= lambda!349160 lambda!349146))))

(declare-fun bs!1589417 () Bool)

(assert (= bs!1589417 (and d!1992023 b!6348005)))

(assert (=> bs!1589417 (not (= lambda!349160 lambda!349078))))

(declare-fun bs!1589418 () Bool)

(assert (= bs!1589418 (and d!1992023 d!1992017)))

(assert (=> bs!1589418 (not (= lambda!349160 lambda!349159))))

(assert (=> bs!1589418 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349160 lambda!349158))))

(assert (=> bs!1589417 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349160 lambda!349077))))

(declare-fun bs!1589419 () Bool)

(assert (= bs!1589419 (and d!1992023 b!6348655)))

(assert (=> bs!1589419 (not (= lambda!349160 lambda!349147))))

(assert (=> d!1992023 true))

(assert (=> d!1992023 true))

(assert (=> d!1992023 true))

(assert (=> d!1992023 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326)) (Exists!3325 lambda!349160))))

(declare-fun lt!2364308 () Unit!158351)

(assert (=> d!1992023 (= lt!2364308 (choose!47114 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326))))

(assert (=> d!1992023 (validRegex!7991 (regOne!33022 (regOne!33022 r!7292)))))

(assert (=> d!1992023 (= (lemmaFindConcatSeparationEquivalentToExists!2324 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326) lt!2364308)))

(declare-fun bs!1589420 () Bool)

(assert (= bs!1589420 d!1992023))

(declare-fun m!7155964 () Bool)

(assert (=> bs!1589420 m!7155964))

(declare-fun m!7155966 () Bool)

(assert (=> bs!1589420 m!7155966))

(assert (=> bs!1589420 m!7155338))

(declare-fun m!7155968 () Bool)

(assert (=> bs!1589420 m!7155968))

(assert (=> bs!1589420 m!7155338))

(assert (=> bs!1589420 m!7155344))

(assert (=> b!6348025 d!1992023))

(declare-fun bs!1589421 () Bool)

(declare-fun b!6348811 () Bool)

(assert (= bs!1589421 (and b!6348811 d!1992015)))

(declare-fun lambda!349161 () Int)

(assert (=> bs!1589421 (not (= lambda!349161 lambda!349153))))

(declare-fun bs!1589422 () Bool)

(assert (= bs!1589422 (and b!6348811 b!6348025)))

(assert (=> bs!1589422 (not (= lambda!349161 lambda!349081))))

(assert (=> bs!1589422 (not (= lambda!349161 lambda!349080))))

(declare-fun bs!1589423 () Bool)

(assert (= bs!1589423 (and b!6348811 b!6348005)))

(assert (=> bs!1589423 (not (= lambda!349161 lambda!349078))))

(declare-fun bs!1589424 () Bool)

(assert (= bs!1589424 (and b!6348811 d!1992017)))

(assert (=> bs!1589424 (not (= lambda!349161 lambda!349159))))

(assert (=> bs!1589424 (not (= lambda!349161 lambda!349158))))

(assert (=> bs!1589423 (not (= lambda!349161 lambda!349077))))

(declare-fun bs!1589425 () Bool)

(assert (= bs!1589425 (and b!6348811 b!6348655)))

(assert (=> bs!1589425 (not (= lambda!349161 lambda!349147))))

(declare-fun bs!1589426 () Bool)

(assert (= bs!1589426 (and b!6348811 b!6348652)))

(assert (=> bs!1589426 (= (and (= (reg!16584 lt!2364179) (reg!16584 r!7292)) (= lt!2364179 r!7292)) (= lambda!349161 lambda!349146))))

(declare-fun bs!1589427 () Bool)

(assert (= bs!1589427 (and b!6348811 d!1992023)))

(assert (=> bs!1589427 (not (= lambda!349161 lambda!349160))))

(assert (=> b!6348811 true))

(assert (=> b!6348811 true))

(declare-fun bs!1589428 () Bool)

(declare-fun b!6348814 () Bool)

(assert (= bs!1589428 (and b!6348814 d!1992015)))

(declare-fun lambda!349162 () Int)

(assert (=> bs!1589428 (not (= lambda!349162 lambda!349153))))

(declare-fun bs!1589429 () Bool)

(assert (= bs!1589429 (and b!6348814 b!6348025)))

(assert (=> bs!1589429 (= (and (= (regOne!33022 lt!2364179) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 lt!2364179) lt!2364185)) (= lambda!349162 lambda!349081))))

(assert (=> bs!1589429 (not (= lambda!349162 lambda!349080))))

(declare-fun bs!1589430 () Bool)

(assert (= bs!1589430 (and b!6348814 b!6348005)))

(assert (=> bs!1589430 (= (and (= (regOne!33022 lt!2364179) (regOne!33022 r!7292)) (= (regTwo!33022 lt!2364179) (regTwo!33022 r!7292))) (= lambda!349162 lambda!349078))))

(declare-fun bs!1589431 () Bool)

(assert (= bs!1589431 (and b!6348814 d!1992017)))

(assert (=> bs!1589431 (= (and (= (regOne!33022 lt!2364179) (regOne!33022 r!7292)) (= (regTwo!33022 lt!2364179) (regTwo!33022 r!7292))) (= lambda!349162 lambda!349159))))

(assert (=> bs!1589431 (not (= lambda!349162 lambda!349158))))

(declare-fun bs!1589432 () Bool)

(assert (= bs!1589432 (and b!6348814 b!6348811)))

(assert (=> bs!1589432 (not (= lambda!349162 lambda!349161))))

(assert (=> bs!1589430 (not (= lambda!349162 lambda!349077))))

(declare-fun bs!1589433 () Bool)

(assert (= bs!1589433 (and b!6348814 b!6348655)))

(assert (=> bs!1589433 (= (and (= (regOne!33022 lt!2364179) (regOne!33022 r!7292)) (= (regTwo!33022 lt!2364179) (regTwo!33022 r!7292))) (= lambda!349162 lambda!349147))))

(declare-fun bs!1589434 () Bool)

(assert (= bs!1589434 (and b!6348814 b!6348652)))

(assert (=> bs!1589434 (not (= lambda!349162 lambda!349146))))

(declare-fun bs!1589435 () Bool)

(assert (= bs!1589435 (and b!6348814 d!1992023)))

(assert (=> bs!1589435 (not (= lambda!349162 lambda!349160))))

(assert (=> b!6348814 true))

(assert (=> b!6348814 true))

(declare-fun d!1992025 () Bool)

(declare-fun c!1154870 () Bool)

(assert (=> d!1992025 (= c!1154870 ((_ is EmptyExpr!16255) lt!2364179))))

(declare-fun e!3855800 () Bool)

(assert (=> d!1992025 (= (matchRSpec!3356 lt!2364179 s!2326) e!3855800)))

(declare-fun b!6348809 () Bool)

(declare-fun e!3855803 () Bool)

(assert (=> b!6348809 (= e!3855803 (matchRSpec!3356 (regTwo!33023 lt!2364179) s!2326))))

(declare-fun b!6348810 () Bool)

(declare-fun c!1154872 () Bool)

(assert (=> b!6348810 (= c!1154872 ((_ is Union!16255) lt!2364179))))

(declare-fun e!3855802 () Bool)

(declare-fun e!3855799 () Bool)

(assert (=> b!6348810 (= e!3855802 e!3855799)))

(declare-fun bm!541231 () Bool)

(declare-fun call!541236 () Bool)

(assert (=> bm!541231 (= call!541236 (isEmpty!37033 s!2326))))

(declare-fun e!3855801 () Bool)

(declare-fun call!541237 () Bool)

(assert (=> b!6348811 (= e!3855801 call!541237)))

(declare-fun b!6348812 () Bool)

(assert (=> b!6348812 (= e!3855802 (= s!2326 (Cons!64941 (c!1154628 lt!2364179) Nil!64941)))))

(declare-fun b!6348813 () Bool)

(declare-fun e!3855804 () Bool)

(assert (=> b!6348813 (= e!3855800 e!3855804)))

(declare-fun res!2612460 () Bool)

(assert (=> b!6348813 (= res!2612460 (not ((_ is EmptyLang!16255) lt!2364179)))))

(assert (=> b!6348813 (=> (not res!2612460) (not e!3855804))))

(declare-fun e!3855805 () Bool)

(assert (=> b!6348814 (= e!3855805 call!541237)))

(declare-fun b!6348815 () Bool)

(assert (=> b!6348815 (= e!3855800 call!541236)))

(declare-fun c!1154869 () Bool)

(declare-fun bm!541232 () Bool)

(assert (=> bm!541232 (= call!541237 (Exists!3325 (ite c!1154869 lambda!349161 lambda!349162)))))

(declare-fun b!6348816 () Bool)

(assert (=> b!6348816 (= e!3855799 e!3855803)))

(declare-fun res!2612461 () Bool)

(assert (=> b!6348816 (= res!2612461 (matchRSpec!3356 (regOne!33023 lt!2364179) s!2326))))

(assert (=> b!6348816 (=> res!2612461 e!3855803)))

(declare-fun b!6348817 () Bool)

(declare-fun c!1154871 () Bool)

(assert (=> b!6348817 (= c!1154871 ((_ is ElementMatch!16255) lt!2364179))))

(assert (=> b!6348817 (= e!3855804 e!3855802)))

(declare-fun b!6348818 () Bool)

(declare-fun res!2612462 () Bool)

(assert (=> b!6348818 (=> res!2612462 e!3855801)))

(assert (=> b!6348818 (= res!2612462 call!541236)))

(assert (=> b!6348818 (= e!3855805 e!3855801)))

(declare-fun b!6348819 () Bool)

(assert (=> b!6348819 (= e!3855799 e!3855805)))

(assert (=> b!6348819 (= c!1154869 ((_ is Star!16255) lt!2364179))))

(assert (= (and d!1992025 c!1154870) b!6348815))

(assert (= (and d!1992025 (not c!1154870)) b!6348813))

(assert (= (and b!6348813 res!2612460) b!6348817))

(assert (= (and b!6348817 c!1154871) b!6348812))

(assert (= (and b!6348817 (not c!1154871)) b!6348810))

(assert (= (and b!6348810 c!1154872) b!6348816))

(assert (= (and b!6348810 (not c!1154872)) b!6348819))

(assert (= (and b!6348816 (not res!2612461)) b!6348809))

(assert (= (and b!6348819 c!1154869) b!6348818))

(assert (= (and b!6348819 (not c!1154869)) b!6348814))

(assert (= (and b!6348818 (not res!2612462)) b!6348811))

(assert (= (or b!6348811 b!6348814) bm!541232))

(assert (= (or b!6348815 b!6348818) bm!541231))

(declare-fun m!7155970 () Bool)

(assert (=> b!6348809 m!7155970))

(assert (=> bm!541231 m!7155846))

(declare-fun m!7155972 () Bool)

(assert (=> bm!541232 m!7155972))

(declare-fun m!7155974 () Bool)

(assert (=> b!6348816 m!7155974))

(assert (=> b!6348025 d!1992025))

(declare-fun bs!1589436 () Bool)

(declare-fun d!1992027 () Bool)

(assert (= bs!1589436 (and d!1992027 d!1991903)))

(declare-fun lambda!349163 () Int)

(assert (=> bs!1589436 (= lambda!349163 lambda!349111)))

(declare-fun bs!1589437 () Bool)

(assert (= bs!1589437 (and d!1992027 d!1991913)))

(assert (=> bs!1589437 (= lambda!349163 lambda!349122)))

(declare-fun bs!1589438 () Bool)

(assert (= bs!1589438 (and d!1992027 d!1991959)))

(assert (=> bs!1589438 (= lambda!349163 lambda!349128)))

(declare-fun b!6348820 () Bool)

(declare-fun e!3855808 () Bool)

(declare-fun lt!2364309 () Regex!16255)

(assert (=> b!6348820 (= e!3855808 (= lt!2364309 (head!13002 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6348821 () Bool)

(declare-fun e!3855806 () Regex!16255)

(assert (=> b!6348821 (= e!3855806 (Concat!25100 (h!71388 (t!378652 (exprs!6139 (h!71390 zl!343)))) (generalisedConcat!1852 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6348822 () Bool)

(declare-fun e!3855809 () Bool)

(assert (=> b!6348822 (= e!3855809 (isEmpty!37030 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6348823 () Bool)

(assert (=> b!6348823 (= e!3855808 (isConcat!1180 lt!2364309))))

(declare-fun b!6348824 () Bool)

(declare-fun e!3855810 () Bool)

(assert (=> b!6348824 (= e!3855810 e!3855808)))

(declare-fun c!1154876 () Bool)

(assert (=> b!6348824 (= c!1154876 (isEmpty!37030 (tail!12087 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun e!3855807 () Bool)

(assert (=> d!1992027 e!3855807))

(declare-fun res!2612463 () Bool)

(assert (=> d!1992027 (=> (not res!2612463) (not e!3855807))))

(assert (=> d!1992027 (= res!2612463 (validRegex!7991 lt!2364309))))

(declare-fun e!3855811 () Regex!16255)

(assert (=> d!1992027 (= lt!2364309 e!3855811)))

(declare-fun c!1154875 () Bool)

(assert (=> d!1992027 (= c!1154875 e!3855809)))

(declare-fun res!2612464 () Bool)

(assert (=> d!1992027 (=> (not res!2612464) (not e!3855809))))

(assert (=> d!1992027 (= res!2612464 ((_ is Cons!64940) (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> d!1992027 (forall!15421 (t!378652 (exprs!6139 (h!71390 zl!343))) lambda!349163)))

(assert (=> d!1992027 (= (generalisedConcat!1852 (t!378652 (exprs!6139 (h!71390 zl!343)))) lt!2364309)))

(declare-fun b!6348825 () Bool)

(assert (=> b!6348825 (= e!3855806 EmptyExpr!16255)))

(declare-fun b!6348826 () Bool)

(assert (=> b!6348826 (= e!3855811 (h!71388 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348827 () Bool)

(assert (=> b!6348827 (= e!3855811 e!3855806)))

(declare-fun c!1154874 () Bool)

(assert (=> b!6348827 (= c!1154874 ((_ is Cons!64940) (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348828 () Bool)

(assert (=> b!6348828 (= e!3855807 e!3855810)))

(declare-fun c!1154873 () Bool)

(assert (=> b!6348828 (= c!1154873 (isEmpty!37030 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6348829 () Bool)

(assert (=> b!6348829 (= e!3855810 (isEmptyExpr!1657 lt!2364309))))

(assert (= (and d!1992027 res!2612464) b!6348822))

(assert (= (and d!1992027 c!1154875) b!6348826))

(assert (= (and d!1992027 (not c!1154875)) b!6348827))

(assert (= (and b!6348827 c!1154874) b!6348821))

(assert (= (and b!6348827 (not c!1154874)) b!6348825))

(assert (= (and d!1992027 res!2612463) b!6348828))

(assert (= (and b!6348828 c!1154873) b!6348829))

(assert (= (and b!6348828 (not c!1154873)) b!6348824))

(assert (= (and b!6348824 c!1154876) b!6348820))

(assert (= (and b!6348824 (not c!1154876)) b!6348823))

(declare-fun m!7155976 () Bool)

(assert (=> b!6348821 m!7155976))

(declare-fun m!7155978 () Bool)

(assert (=> b!6348823 m!7155978))

(declare-fun m!7155980 () Bool)

(assert (=> b!6348820 m!7155980))

(declare-fun m!7155982 () Bool)

(assert (=> d!1992027 m!7155982))

(declare-fun m!7155984 () Bool)

(assert (=> d!1992027 m!7155984))

(assert (=> b!6348828 m!7155280))

(declare-fun m!7155986 () Bool)

(assert (=> b!6348829 m!7155986))

(declare-fun m!7155988 () Bool)

(assert (=> b!6348822 m!7155988))

(declare-fun m!7155990 () Bool)

(assert (=> b!6348824 m!7155990))

(assert (=> b!6348824 m!7155990))

(declare-fun m!7155992 () Bool)

(assert (=> b!6348824 m!7155992))

(assert (=> b!6348025 d!1992027))

(declare-fun d!1992029 () Bool)

(assert (=> d!1992029 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326)) (not (isEmpty!37034 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326))))))

(declare-fun bs!1589439 () Bool)

(assert (= bs!1589439 d!1992029))

(assert (=> bs!1589439 m!7155338))

(declare-fun m!7155994 () Bool)

(assert (=> bs!1589439 m!7155994))

(assert (=> b!6348025 d!1992029))

(declare-fun b!6348830 () Bool)

(declare-fun lt!2364311 () Unit!158351)

(declare-fun lt!2364312 () Unit!158351)

(assert (=> b!6348830 (= lt!2364311 lt!2364312)))

(assert (=> b!6348830 (= (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326)) s!2326)))

(assert (=> b!6348830 (= lt!2364312 (lemmaMoveElementToOtherListKeepsConcatEq!2419 Nil!64941 (h!71389 s!2326) (t!378653 s!2326) s!2326))))

(declare-fun e!3855814 () Option!16146)

(assert (=> b!6348830 (= e!3855814 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326) s!2326))))

(declare-fun b!6348831 () Bool)

(declare-fun e!3855816 () Bool)

(declare-fun lt!2364310 () Option!16146)

(assert (=> b!6348831 (= e!3855816 (= (++!14324 (_1!36537 (get!22467 lt!2364310)) (_2!36537 (get!22467 lt!2364310))) s!2326))))

(declare-fun b!6348832 () Bool)

(declare-fun res!2612466 () Bool)

(assert (=> b!6348832 (=> (not res!2612466) (not e!3855816))))

(assert (=> b!6348832 (= res!2612466 (matchR!8438 (regOne!33022 (regOne!33022 r!7292)) (_1!36537 (get!22467 lt!2364310))))))

(declare-fun b!6348833 () Bool)

(declare-fun res!2612465 () Bool)

(assert (=> b!6348833 (=> (not res!2612465) (not e!3855816))))

(assert (=> b!6348833 (= res!2612465 (matchR!8438 lt!2364185 (_2!36537 (get!22467 lt!2364310))))))

(declare-fun d!1992031 () Bool)

(declare-fun e!3855815 () Bool)

(assert (=> d!1992031 e!3855815))

(declare-fun res!2612468 () Bool)

(assert (=> d!1992031 (=> res!2612468 e!3855815)))

(assert (=> d!1992031 (= res!2612468 e!3855816)))

(declare-fun res!2612469 () Bool)

(assert (=> d!1992031 (=> (not res!2612469) (not e!3855816))))

(assert (=> d!1992031 (= res!2612469 (isDefined!12849 lt!2364310))))

(declare-fun e!3855813 () Option!16146)

(assert (=> d!1992031 (= lt!2364310 e!3855813)))

(declare-fun c!1154878 () Bool)

(declare-fun e!3855812 () Bool)

(assert (=> d!1992031 (= c!1154878 e!3855812)))

(declare-fun res!2612467 () Bool)

(assert (=> d!1992031 (=> (not res!2612467) (not e!3855812))))

(assert (=> d!1992031 (= res!2612467 (matchR!8438 (regOne!33022 (regOne!33022 r!7292)) Nil!64941))))

(assert (=> d!1992031 (validRegex!7991 (regOne!33022 (regOne!33022 r!7292)))))

(assert (=> d!1992031 (= (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326) lt!2364310)))

(declare-fun b!6348834 () Bool)

(assert (=> b!6348834 (= e!3855815 (not (isDefined!12849 lt!2364310)))))

(declare-fun b!6348835 () Bool)

(assert (=> b!6348835 (= e!3855813 e!3855814)))

(declare-fun c!1154877 () Bool)

(assert (=> b!6348835 (= c!1154877 ((_ is Nil!64941) s!2326))))

(declare-fun b!6348836 () Bool)

(assert (=> b!6348836 (= e!3855814 None!16145)))

(declare-fun b!6348837 () Bool)

(assert (=> b!6348837 (= e!3855813 (Some!16145 (tuple2!66469 Nil!64941 s!2326)))))

(declare-fun b!6348838 () Bool)

(assert (=> b!6348838 (= e!3855812 (matchR!8438 lt!2364185 s!2326))))

(assert (= (and d!1992031 res!2612467) b!6348838))

(assert (= (and d!1992031 c!1154878) b!6348837))

(assert (= (and d!1992031 (not c!1154878)) b!6348835))

(assert (= (and b!6348835 c!1154877) b!6348836))

(assert (= (and b!6348835 (not c!1154877)) b!6348830))

(assert (= (and d!1992031 res!2612469) b!6348832))

(assert (= (and b!6348832 res!2612466) b!6348833))

(assert (= (and b!6348833 res!2612465) b!6348831))

(assert (= (and d!1992031 (not res!2612468)) b!6348834))

(declare-fun m!7155996 () Bool)

(assert (=> b!6348834 m!7155996))

(declare-fun m!7155998 () Bool)

(assert (=> b!6348831 m!7155998))

(declare-fun m!7156000 () Bool)

(assert (=> b!6348831 m!7156000))

(assert (=> b!6348832 m!7155998))

(declare-fun m!7156002 () Bool)

(assert (=> b!6348832 m!7156002))

(assert (=> b!6348838 m!7155334))

(assert (=> d!1992031 m!7155996))

(declare-fun m!7156004 () Bool)

(assert (=> d!1992031 m!7156004))

(assert (=> d!1992031 m!7155966))

(assert (=> b!6348830 m!7155936))

(assert (=> b!6348830 m!7155936))

(assert (=> b!6348830 m!7155938))

(assert (=> b!6348830 m!7155940))

(assert (=> b!6348830 m!7155936))

(declare-fun m!7156006 () Bool)

(assert (=> b!6348830 m!7156006))

(assert (=> b!6348833 m!7155998))

(declare-fun m!7156008 () Bool)

(assert (=> b!6348833 m!7156008))

(assert (=> b!6348025 d!1992031))

(declare-fun d!1992033 () Bool)

(declare-fun c!1154879 () Bool)

(assert (=> d!1992033 (= c!1154879 (isEmpty!37033 s!2326))))

(declare-fun e!3855817 () Bool)

(assert (=> d!1992033 (= (matchZipper!2267 lt!2364158 s!2326) e!3855817)))

(declare-fun b!6348839 () Bool)

(assert (=> b!6348839 (= e!3855817 (nullableZipper!2021 lt!2364158))))

(declare-fun b!6348840 () Bool)

(assert (=> b!6348840 (= e!3855817 (matchZipper!2267 (derivationStepZipper!2221 lt!2364158 (head!13003 s!2326)) (tail!12088 s!2326)))))

(assert (= (and d!1992033 c!1154879) b!6348839))

(assert (= (and d!1992033 (not c!1154879)) b!6348840))

(assert (=> d!1992033 m!7155846))

(declare-fun m!7156010 () Bool)

(assert (=> b!6348839 m!7156010))

(assert (=> b!6348840 m!7155854))

(assert (=> b!6348840 m!7155854))

(declare-fun m!7156012 () Bool)

(assert (=> b!6348840 m!7156012))

(assert (=> b!6348840 m!7155856))

(assert (=> b!6348840 m!7156012))

(assert (=> b!6348840 m!7155856))

(declare-fun m!7156014 () Bool)

(assert (=> b!6348840 m!7156014))

(assert (=> b!6348025 d!1992033))

(declare-fun b!6348841 () Bool)

(declare-fun e!3855819 () Bool)

(declare-fun e!3855822 () Bool)

(assert (=> b!6348841 (= e!3855819 e!3855822)))

(declare-fun c!1154880 () Bool)

(assert (=> b!6348841 (= c!1154880 ((_ is Star!16255) (regTwo!33022 (regOne!33022 r!7292))))))

(declare-fun b!6348842 () Bool)

(declare-fun e!3855821 () Bool)

(declare-fun e!3855824 () Bool)

(assert (=> b!6348842 (= e!3855821 e!3855824)))

(declare-fun res!2612471 () Bool)

(assert (=> b!6348842 (=> (not res!2612471) (not e!3855824))))

(declare-fun call!541239 () Bool)

(assert (=> b!6348842 (= res!2612471 call!541239)))

(declare-fun bm!541233 () Bool)

(declare-fun call!541238 () Bool)

(declare-fun c!1154881 () Bool)

(assert (=> bm!541233 (= call!541238 (validRegex!7991 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6348843 () Bool)

(declare-fun e!3855823 () Bool)

(assert (=> b!6348843 (= e!3855823 call!541238)))

(declare-fun b!6348844 () Bool)

(assert (=> b!6348844 (= e!3855824 call!541238)))

(declare-fun b!6348845 () Bool)

(declare-fun e!3855818 () Bool)

(declare-fun call!541240 () Bool)

(assert (=> b!6348845 (= e!3855818 call!541240)))

(declare-fun d!1992035 () Bool)

(declare-fun res!2612473 () Bool)

(assert (=> d!1992035 (=> res!2612473 e!3855819)))

(assert (=> d!1992035 (= res!2612473 ((_ is ElementMatch!16255) (regTwo!33022 (regOne!33022 r!7292))))))

(assert (=> d!1992035 (= (validRegex!7991 (regTwo!33022 (regOne!33022 r!7292))) e!3855819)))

(declare-fun bm!541234 () Bool)

(assert (=> bm!541234 (= call!541240 (validRegex!7991 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))

(declare-fun b!6348846 () Bool)

(declare-fun res!2612470 () Bool)

(assert (=> b!6348846 (=> (not res!2612470) (not e!3855823))))

(assert (=> b!6348846 (= res!2612470 call!541239)))

(declare-fun e!3855820 () Bool)

(assert (=> b!6348846 (= e!3855820 e!3855823)))

(declare-fun b!6348847 () Bool)

(assert (=> b!6348847 (= e!3855822 e!3855820)))

(assert (=> b!6348847 (= c!1154881 ((_ is Union!16255) (regTwo!33022 (regOne!33022 r!7292))))))

(declare-fun b!6348848 () Bool)

(assert (=> b!6348848 (= e!3855822 e!3855818)))

(declare-fun res!2612474 () Bool)

(assert (=> b!6348848 (= res!2612474 (not (nullable!6248 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))))))))

(assert (=> b!6348848 (=> (not res!2612474) (not e!3855818))))

(declare-fun bm!541235 () Bool)

(assert (=> bm!541235 (= call!541239 call!541240)))

(declare-fun b!6348849 () Bool)

(declare-fun res!2612472 () Bool)

(assert (=> b!6348849 (=> res!2612472 e!3855821)))

(assert (=> b!6348849 (= res!2612472 (not ((_ is Concat!25100) (regTwo!33022 (regOne!33022 r!7292)))))))

(assert (=> b!6348849 (= e!3855820 e!3855821)))

(assert (= (and d!1992035 (not res!2612473)) b!6348841))

(assert (= (and b!6348841 c!1154880) b!6348848))

(assert (= (and b!6348841 (not c!1154880)) b!6348847))

(assert (= (and b!6348848 res!2612474) b!6348845))

(assert (= (and b!6348847 c!1154881) b!6348846))

(assert (= (and b!6348847 (not c!1154881)) b!6348849))

(assert (= (and b!6348846 res!2612470) b!6348843))

(assert (= (and b!6348849 (not res!2612472)) b!6348842))

(assert (= (and b!6348842 res!2612471) b!6348844))

(assert (= (or b!6348843 b!6348844) bm!541233))

(assert (= (or b!6348846 b!6348842) bm!541235))

(assert (= (or b!6348845 bm!541235) bm!541234))

(declare-fun m!7156016 () Bool)

(assert (=> bm!541233 m!7156016))

(declare-fun m!7156018 () Bool)

(assert (=> bm!541234 m!7156018))

(declare-fun m!7156020 () Bool)

(assert (=> b!6348848 m!7156020))

(assert (=> b!6348025 d!1992035))

(declare-fun b!6348850 () Bool)

(declare-fun e!3855825 () Bool)

(declare-fun lt!2364313 () Bool)

(declare-fun call!541241 () Bool)

(assert (=> b!6348850 (= e!3855825 (= lt!2364313 call!541241))))

(declare-fun b!6348851 () Bool)

(declare-fun e!3855830 () Bool)

(assert (=> b!6348851 (= e!3855830 (= (head!13003 s!2326) (c!1154628 lt!2364179)))))

(declare-fun b!6348852 () Bool)

(declare-fun e!3855829 () Bool)

(assert (=> b!6348852 (= e!3855829 (matchR!8438 (derivativeStep!4960 lt!2364179 (head!13003 s!2326)) (tail!12088 s!2326)))))

(declare-fun b!6348853 () Bool)

(declare-fun res!2612479 () Bool)

(declare-fun e!3855828 () Bool)

(assert (=> b!6348853 (=> res!2612479 e!3855828)))

(assert (=> b!6348853 (= res!2612479 (not (isEmpty!37033 (tail!12088 s!2326))))))

(declare-fun b!6348854 () Bool)

(declare-fun e!3855827 () Bool)

(assert (=> b!6348854 (= e!3855827 e!3855828)))

(declare-fun res!2612476 () Bool)

(assert (=> b!6348854 (=> res!2612476 e!3855828)))

(assert (=> b!6348854 (= res!2612476 call!541241)))

(declare-fun b!6348855 () Bool)

(declare-fun e!3855831 () Bool)

(assert (=> b!6348855 (= e!3855831 (not lt!2364313))))

(declare-fun b!6348856 () Bool)

(assert (=> b!6348856 (= e!3855829 (nullable!6248 lt!2364179))))

(declare-fun d!1992037 () Bool)

(assert (=> d!1992037 e!3855825))

(declare-fun c!1154884 () Bool)

(assert (=> d!1992037 (= c!1154884 ((_ is EmptyExpr!16255) lt!2364179))))

(assert (=> d!1992037 (= lt!2364313 e!3855829)))

(declare-fun c!1154882 () Bool)

(assert (=> d!1992037 (= c!1154882 (isEmpty!37033 s!2326))))

(assert (=> d!1992037 (validRegex!7991 lt!2364179)))

(assert (=> d!1992037 (= (matchR!8438 lt!2364179 s!2326) lt!2364313)))

(declare-fun b!6348857 () Bool)

(declare-fun res!2612478 () Bool)

(declare-fun e!3855826 () Bool)

(assert (=> b!6348857 (=> res!2612478 e!3855826)))

(assert (=> b!6348857 (= res!2612478 (not ((_ is ElementMatch!16255) lt!2364179)))))

(assert (=> b!6348857 (= e!3855831 e!3855826)))

(declare-fun b!6348858 () Bool)

(declare-fun res!2612482 () Bool)

(assert (=> b!6348858 (=> (not res!2612482) (not e!3855830))))

(assert (=> b!6348858 (= res!2612482 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6348859 () Bool)

(assert (=> b!6348859 (= e!3855825 e!3855831)))

(declare-fun c!1154883 () Bool)

(assert (=> b!6348859 (= c!1154883 ((_ is EmptyLang!16255) lt!2364179))))

(declare-fun b!6348860 () Bool)

(assert (=> b!6348860 (= e!3855826 e!3855827)))

(declare-fun res!2612480 () Bool)

(assert (=> b!6348860 (=> (not res!2612480) (not e!3855827))))

(assert (=> b!6348860 (= res!2612480 (not lt!2364313))))

(declare-fun b!6348861 () Bool)

(assert (=> b!6348861 (= e!3855828 (not (= (head!13003 s!2326) (c!1154628 lt!2364179))))))

(declare-fun bm!541236 () Bool)

(assert (=> bm!541236 (= call!541241 (isEmpty!37033 s!2326))))

(declare-fun b!6348862 () Bool)

(declare-fun res!2612477 () Bool)

(assert (=> b!6348862 (=> (not res!2612477) (not e!3855830))))

(assert (=> b!6348862 (= res!2612477 (not call!541241))))

(declare-fun b!6348863 () Bool)

(declare-fun res!2612475 () Bool)

(assert (=> b!6348863 (=> res!2612475 e!3855826)))

(assert (=> b!6348863 (= res!2612475 e!3855830)))

(declare-fun res!2612481 () Bool)

(assert (=> b!6348863 (=> (not res!2612481) (not e!3855830))))

(assert (=> b!6348863 (= res!2612481 lt!2364313)))

(assert (= (and d!1992037 c!1154882) b!6348856))

(assert (= (and d!1992037 (not c!1154882)) b!6348852))

(assert (= (and d!1992037 c!1154884) b!6348850))

(assert (= (and d!1992037 (not c!1154884)) b!6348859))

(assert (= (and b!6348859 c!1154883) b!6348855))

(assert (= (and b!6348859 (not c!1154883)) b!6348857))

(assert (= (and b!6348857 (not res!2612478)) b!6348863))

(assert (= (and b!6348863 res!2612481) b!6348862))

(assert (= (and b!6348862 res!2612477) b!6348858))

(assert (= (and b!6348858 res!2612482) b!6348851))

(assert (= (and b!6348863 (not res!2612475)) b!6348860))

(assert (= (and b!6348860 res!2612480) b!6348854))

(assert (= (and b!6348854 (not res!2612476)) b!6348853))

(assert (= (and b!6348853 (not res!2612479)) b!6348861))

(assert (= (or b!6348850 b!6348854 b!6348862) bm!541236))

(declare-fun m!7156022 () Bool)

(assert (=> b!6348856 m!7156022))

(assert (=> d!1992037 m!7155846))

(declare-fun m!7156024 () Bool)

(assert (=> d!1992037 m!7156024))

(assert (=> b!6348851 m!7155854))

(assert (=> b!6348858 m!7155856))

(assert (=> b!6348858 m!7155856))

(assert (=> b!6348858 m!7155858))

(assert (=> bm!541236 m!7155846))

(assert (=> b!6348852 m!7155854))

(assert (=> b!6348852 m!7155854))

(declare-fun m!7156026 () Bool)

(assert (=> b!6348852 m!7156026))

(assert (=> b!6348852 m!7155856))

(assert (=> b!6348852 m!7156026))

(assert (=> b!6348852 m!7155856))

(declare-fun m!7156028 () Bool)

(assert (=> b!6348852 m!7156028))

(assert (=> b!6348853 m!7155856))

(assert (=> b!6348853 m!7155856))

(assert (=> b!6348853 m!7155858))

(assert (=> b!6348861 m!7155854))

(assert (=> b!6348025 d!1992037))

(declare-fun bs!1589440 () Bool)

(declare-fun b!6348866 () Bool)

(assert (= bs!1589440 (and b!6348866 d!1992015)))

(declare-fun lambda!349164 () Int)

(assert (=> bs!1589440 (not (= lambda!349164 lambda!349153))))

(declare-fun bs!1589441 () Bool)

(assert (= bs!1589441 (and b!6348866 b!6348025)))

(assert (=> bs!1589441 (not (= lambda!349164 lambda!349081))))

(assert (=> bs!1589441 (not (= lambda!349164 lambda!349080))))

(declare-fun bs!1589442 () Bool)

(assert (= bs!1589442 (and b!6348866 b!6348005)))

(assert (=> bs!1589442 (not (= lambda!349164 lambda!349078))))

(declare-fun bs!1589443 () Bool)

(assert (= bs!1589443 (and b!6348866 d!1992017)))

(assert (=> bs!1589443 (not (= lambda!349164 lambda!349159))))

(assert (=> bs!1589443 (not (= lambda!349164 lambda!349158))))

(declare-fun bs!1589444 () Bool)

(assert (= bs!1589444 (and b!6348866 b!6348811)))

(assert (=> bs!1589444 (= (and (= (reg!16584 lt!2364185) (reg!16584 lt!2364179)) (= lt!2364185 lt!2364179)) (= lambda!349164 lambda!349161))))

(assert (=> bs!1589442 (not (= lambda!349164 lambda!349077))))

(declare-fun bs!1589445 () Bool)

(assert (= bs!1589445 (and b!6348866 b!6348814)))

(assert (=> bs!1589445 (not (= lambda!349164 lambda!349162))))

(declare-fun bs!1589446 () Bool)

(assert (= bs!1589446 (and b!6348866 b!6348655)))

(assert (=> bs!1589446 (not (= lambda!349164 lambda!349147))))

(declare-fun bs!1589447 () Bool)

(assert (= bs!1589447 (and b!6348866 b!6348652)))

(assert (=> bs!1589447 (= (and (= (reg!16584 lt!2364185) (reg!16584 r!7292)) (= lt!2364185 r!7292)) (= lambda!349164 lambda!349146))))

(declare-fun bs!1589448 () Bool)

(assert (= bs!1589448 (and b!6348866 d!1992023)))

(assert (=> bs!1589448 (not (= lambda!349164 lambda!349160))))

(assert (=> b!6348866 true))

(assert (=> b!6348866 true))

(declare-fun bs!1589449 () Bool)

(declare-fun b!6348869 () Bool)

(assert (= bs!1589449 (and b!6348869 d!1992015)))

(declare-fun lambda!349165 () Int)

(assert (=> bs!1589449 (not (= lambda!349165 lambda!349153))))

(declare-fun bs!1589450 () Bool)

(assert (= bs!1589450 (and b!6348869 b!6348025)))

(assert (=> bs!1589450 (= (and (= (regOne!33022 lt!2364185) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 lt!2364185) lt!2364185)) (= lambda!349165 lambda!349081))))

(assert (=> bs!1589450 (not (= lambda!349165 lambda!349080))))

(declare-fun bs!1589451 () Bool)

(assert (= bs!1589451 (and b!6348869 b!6348005)))

(assert (=> bs!1589451 (= (and (= (regOne!33022 lt!2364185) (regOne!33022 r!7292)) (= (regTwo!33022 lt!2364185) (regTwo!33022 r!7292))) (= lambda!349165 lambda!349078))))

(declare-fun bs!1589452 () Bool)

(assert (= bs!1589452 (and b!6348869 d!1992017)))

(assert (=> bs!1589452 (= (and (= (regOne!33022 lt!2364185) (regOne!33022 r!7292)) (= (regTwo!33022 lt!2364185) (regTwo!33022 r!7292))) (= lambda!349165 lambda!349159))))

(assert (=> bs!1589452 (not (= lambda!349165 lambda!349158))))

(assert (=> bs!1589451 (not (= lambda!349165 lambda!349077))))

(declare-fun bs!1589453 () Bool)

(assert (= bs!1589453 (and b!6348869 b!6348814)))

(assert (=> bs!1589453 (= (and (= (regOne!33022 lt!2364185) (regOne!33022 lt!2364179)) (= (regTwo!33022 lt!2364185) (regTwo!33022 lt!2364179))) (= lambda!349165 lambda!349162))))

(declare-fun bs!1589454 () Bool)

(assert (= bs!1589454 (and b!6348869 b!6348655)))

(assert (=> bs!1589454 (= (and (= (regOne!33022 lt!2364185) (regOne!33022 r!7292)) (= (regTwo!33022 lt!2364185) (regTwo!33022 r!7292))) (= lambda!349165 lambda!349147))))

(declare-fun bs!1589455 () Bool)

(assert (= bs!1589455 (and b!6348869 b!6348652)))

(assert (=> bs!1589455 (not (= lambda!349165 lambda!349146))))

(declare-fun bs!1589456 () Bool)

(assert (= bs!1589456 (and b!6348869 d!1992023)))

(assert (=> bs!1589456 (not (= lambda!349165 lambda!349160))))

(declare-fun bs!1589457 () Bool)

(assert (= bs!1589457 (and b!6348869 b!6348811)))

(assert (=> bs!1589457 (not (= lambda!349165 lambda!349161))))

(declare-fun bs!1589458 () Bool)

(assert (= bs!1589458 (and b!6348869 b!6348866)))

(assert (=> bs!1589458 (not (= lambda!349165 lambda!349164))))

(assert (=> b!6348869 true))

(assert (=> b!6348869 true))

(declare-fun d!1992039 () Bool)

(declare-fun c!1154886 () Bool)

(assert (=> d!1992039 (= c!1154886 ((_ is EmptyExpr!16255) lt!2364185))))

(declare-fun e!3855833 () Bool)

(assert (=> d!1992039 (= (matchRSpec!3356 lt!2364185 s!2326) e!3855833)))

(declare-fun b!6348864 () Bool)

(declare-fun e!3855836 () Bool)

(assert (=> b!6348864 (= e!3855836 (matchRSpec!3356 (regTwo!33023 lt!2364185) s!2326))))

(declare-fun b!6348865 () Bool)

(declare-fun c!1154888 () Bool)

(assert (=> b!6348865 (= c!1154888 ((_ is Union!16255) lt!2364185))))

(declare-fun e!3855835 () Bool)

(declare-fun e!3855832 () Bool)

(assert (=> b!6348865 (= e!3855835 e!3855832)))

(declare-fun bm!541237 () Bool)

(declare-fun call!541242 () Bool)

(assert (=> bm!541237 (= call!541242 (isEmpty!37033 s!2326))))

(declare-fun e!3855834 () Bool)

(declare-fun call!541243 () Bool)

(assert (=> b!6348866 (= e!3855834 call!541243)))

(declare-fun b!6348867 () Bool)

(assert (=> b!6348867 (= e!3855835 (= s!2326 (Cons!64941 (c!1154628 lt!2364185) Nil!64941)))))

(declare-fun b!6348868 () Bool)

(declare-fun e!3855837 () Bool)

(assert (=> b!6348868 (= e!3855833 e!3855837)))

(declare-fun res!2612483 () Bool)

(assert (=> b!6348868 (= res!2612483 (not ((_ is EmptyLang!16255) lt!2364185)))))

(assert (=> b!6348868 (=> (not res!2612483) (not e!3855837))))

(declare-fun e!3855838 () Bool)

(assert (=> b!6348869 (= e!3855838 call!541243)))

(declare-fun b!6348870 () Bool)

(assert (=> b!6348870 (= e!3855833 call!541242)))

(declare-fun c!1154885 () Bool)

(declare-fun bm!541238 () Bool)

(assert (=> bm!541238 (= call!541243 (Exists!3325 (ite c!1154885 lambda!349164 lambda!349165)))))

(declare-fun b!6348871 () Bool)

(assert (=> b!6348871 (= e!3855832 e!3855836)))

(declare-fun res!2612484 () Bool)

(assert (=> b!6348871 (= res!2612484 (matchRSpec!3356 (regOne!33023 lt!2364185) s!2326))))

(assert (=> b!6348871 (=> res!2612484 e!3855836)))

(declare-fun b!6348872 () Bool)

(declare-fun c!1154887 () Bool)

(assert (=> b!6348872 (= c!1154887 ((_ is ElementMatch!16255) lt!2364185))))

(assert (=> b!6348872 (= e!3855837 e!3855835)))

(declare-fun b!6348873 () Bool)

(declare-fun res!2612485 () Bool)

(assert (=> b!6348873 (=> res!2612485 e!3855834)))

(assert (=> b!6348873 (= res!2612485 call!541242)))

(assert (=> b!6348873 (= e!3855838 e!3855834)))

(declare-fun b!6348874 () Bool)

(assert (=> b!6348874 (= e!3855832 e!3855838)))

(assert (=> b!6348874 (= c!1154885 ((_ is Star!16255) lt!2364185))))

(assert (= (and d!1992039 c!1154886) b!6348870))

(assert (= (and d!1992039 (not c!1154886)) b!6348868))

(assert (= (and b!6348868 res!2612483) b!6348872))

(assert (= (and b!6348872 c!1154887) b!6348867))

(assert (= (and b!6348872 (not c!1154887)) b!6348865))

(assert (= (and b!6348865 c!1154888) b!6348871))

(assert (= (and b!6348865 (not c!1154888)) b!6348874))

(assert (= (and b!6348871 (not res!2612484)) b!6348864))

(assert (= (and b!6348874 c!1154885) b!6348873))

(assert (= (and b!6348874 (not c!1154885)) b!6348869))

(assert (= (and b!6348873 (not res!2612485)) b!6348866))

(assert (= (or b!6348866 b!6348869) bm!541238))

(assert (= (or b!6348870 b!6348873) bm!541237))

(declare-fun m!7156030 () Bool)

(assert (=> b!6348864 m!7156030))

(assert (=> bm!541237 m!7155846))

(declare-fun m!7156032 () Bool)

(assert (=> bm!541238 m!7156032))

(declare-fun m!7156034 () Bool)

(assert (=> b!6348871 m!7156034))

(assert (=> b!6348025 d!1992039))

(declare-fun b!6348875 () Bool)

(declare-fun e!3855839 () Bool)

(declare-fun lt!2364314 () Bool)

(declare-fun call!541244 () Bool)

(assert (=> b!6348875 (= e!3855839 (= lt!2364314 call!541244))))

(declare-fun b!6348876 () Bool)

(declare-fun e!3855844 () Bool)

(assert (=> b!6348876 (= e!3855844 (= (head!13003 s!2326) (c!1154628 lt!2364185)))))

(declare-fun b!6348877 () Bool)

(declare-fun e!3855843 () Bool)

(assert (=> b!6348877 (= e!3855843 (matchR!8438 (derivativeStep!4960 lt!2364185 (head!13003 s!2326)) (tail!12088 s!2326)))))

(declare-fun b!6348878 () Bool)

(declare-fun res!2612490 () Bool)

(declare-fun e!3855842 () Bool)

(assert (=> b!6348878 (=> res!2612490 e!3855842)))

(assert (=> b!6348878 (= res!2612490 (not (isEmpty!37033 (tail!12088 s!2326))))))

(declare-fun b!6348879 () Bool)

(declare-fun e!3855841 () Bool)

(assert (=> b!6348879 (= e!3855841 e!3855842)))

(declare-fun res!2612487 () Bool)

(assert (=> b!6348879 (=> res!2612487 e!3855842)))

(assert (=> b!6348879 (= res!2612487 call!541244)))

(declare-fun b!6348880 () Bool)

(declare-fun e!3855845 () Bool)

(assert (=> b!6348880 (= e!3855845 (not lt!2364314))))

(declare-fun b!6348881 () Bool)

(assert (=> b!6348881 (= e!3855843 (nullable!6248 lt!2364185))))

(declare-fun d!1992041 () Bool)

(assert (=> d!1992041 e!3855839))

(declare-fun c!1154891 () Bool)

(assert (=> d!1992041 (= c!1154891 ((_ is EmptyExpr!16255) lt!2364185))))

(assert (=> d!1992041 (= lt!2364314 e!3855843)))

(declare-fun c!1154889 () Bool)

(assert (=> d!1992041 (= c!1154889 (isEmpty!37033 s!2326))))

(assert (=> d!1992041 (validRegex!7991 lt!2364185)))

(assert (=> d!1992041 (= (matchR!8438 lt!2364185 s!2326) lt!2364314)))

(declare-fun b!6348882 () Bool)

(declare-fun res!2612489 () Bool)

(declare-fun e!3855840 () Bool)

(assert (=> b!6348882 (=> res!2612489 e!3855840)))

(assert (=> b!6348882 (= res!2612489 (not ((_ is ElementMatch!16255) lt!2364185)))))

(assert (=> b!6348882 (= e!3855845 e!3855840)))

(declare-fun b!6348883 () Bool)

(declare-fun res!2612493 () Bool)

(assert (=> b!6348883 (=> (not res!2612493) (not e!3855844))))

(assert (=> b!6348883 (= res!2612493 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6348884 () Bool)

(assert (=> b!6348884 (= e!3855839 e!3855845)))

(declare-fun c!1154890 () Bool)

(assert (=> b!6348884 (= c!1154890 ((_ is EmptyLang!16255) lt!2364185))))

(declare-fun b!6348885 () Bool)

(assert (=> b!6348885 (= e!3855840 e!3855841)))

(declare-fun res!2612491 () Bool)

(assert (=> b!6348885 (=> (not res!2612491) (not e!3855841))))

(assert (=> b!6348885 (= res!2612491 (not lt!2364314))))

(declare-fun b!6348886 () Bool)

(assert (=> b!6348886 (= e!3855842 (not (= (head!13003 s!2326) (c!1154628 lt!2364185))))))

(declare-fun bm!541239 () Bool)

(assert (=> bm!541239 (= call!541244 (isEmpty!37033 s!2326))))

(declare-fun b!6348887 () Bool)

(declare-fun res!2612488 () Bool)

(assert (=> b!6348887 (=> (not res!2612488) (not e!3855844))))

(assert (=> b!6348887 (= res!2612488 (not call!541244))))

(declare-fun b!6348888 () Bool)

(declare-fun res!2612486 () Bool)

(assert (=> b!6348888 (=> res!2612486 e!3855840)))

(assert (=> b!6348888 (= res!2612486 e!3855844)))

(declare-fun res!2612492 () Bool)

(assert (=> b!6348888 (=> (not res!2612492) (not e!3855844))))

(assert (=> b!6348888 (= res!2612492 lt!2364314)))

(assert (= (and d!1992041 c!1154889) b!6348881))

(assert (= (and d!1992041 (not c!1154889)) b!6348877))

(assert (= (and d!1992041 c!1154891) b!6348875))

(assert (= (and d!1992041 (not c!1154891)) b!6348884))

(assert (= (and b!6348884 c!1154890) b!6348880))

(assert (= (and b!6348884 (not c!1154890)) b!6348882))

(assert (= (and b!6348882 (not res!2612489)) b!6348888))

(assert (= (and b!6348888 res!2612492) b!6348887))

(assert (= (and b!6348887 res!2612488) b!6348883))

(assert (= (and b!6348883 res!2612493) b!6348876))

(assert (= (and b!6348888 (not res!2612486)) b!6348885))

(assert (= (and b!6348885 res!2612491) b!6348879))

(assert (= (and b!6348879 (not res!2612487)) b!6348878))

(assert (= (and b!6348878 (not res!2612490)) b!6348886))

(assert (= (or b!6348875 b!6348879 b!6348887) bm!541239))

(declare-fun m!7156036 () Bool)

(assert (=> b!6348881 m!7156036))

(assert (=> d!1992041 m!7155846))

(declare-fun m!7156038 () Bool)

(assert (=> d!1992041 m!7156038))

(assert (=> b!6348876 m!7155854))

(assert (=> b!6348883 m!7155856))

(assert (=> b!6348883 m!7155856))

(assert (=> b!6348883 m!7155858))

(assert (=> bm!541239 m!7155846))

(assert (=> b!6348877 m!7155854))

(assert (=> b!6348877 m!7155854))

(declare-fun m!7156040 () Bool)

(assert (=> b!6348877 m!7156040))

(assert (=> b!6348877 m!7155856))

(assert (=> b!6348877 m!7156040))

(assert (=> b!6348877 m!7155856))

(declare-fun m!7156042 () Bool)

(assert (=> b!6348877 m!7156042))

(assert (=> b!6348878 m!7155856))

(assert (=> b!6348878 m!7155856))

(assert (=> b!6348878 m!7155858))

(assert (=> b!6348886 m!7155854))

(assert (=> b!6348025 d!1992041))

(declare-fun bs!1589459 () Bool)

(declare-fun d!1992043 () Bool)

(assert (= bs!1589459 (and d!1992043 d!1991903)))

(declare-fun lambda!349166 () Int)

(assert (=> bs!1589459 (= lambda!349166 lambda!349111)))

(declare-fun bs!1589460 () Bool)

(assert (= bs!1589460 (and d!1992043 d!1991913)))

(assert (=> bs!1589460 (= lambda!349166 lambda!349122)))

(declare-fun bs!1589461 () Bool)

(assert (= bs!1589461 (and d!1992043 d!1991959)))

(assert (=> bs!1589461 (= lambda!349166 lambda!349128)))

(declare-fun bs!1589462 () Bool)

(assert (= bs!1589462 (and d!1992043 d!1992027)))

(assert (=> bs!1589462 (= lambda!349166 lambda!349163)))

(declare-fun b!6348889 () Bool)

(declare-fun e!3855848 () Bool)

(declare-fun lt!2364315 () Regex!16255)

(assert (=> b!6348889 (= e!3855848 (= lt!2364315 (head!13002 lt!2364159)))))

(declare-fun b!6348890 () Bool)

(declare-fun e!3855846 () Regex!16255)

(assert (=> b!6348890 (= e!3855846 (Concat!25100 (h!71388 lt!2364159) (generalisedConcat!1852 (t!378652 lt!2364159))))))

(declare-fun b!6348891 () Bool)

(declare-fun e!3855849 () Bool)

(assert (=> b!6348891 (= e!3855849 (isEmpty!37030 (t!378652 lt!2364159)))))

(declare-fun b!6348892 () Bool)

(assert (=> b!6348892 (= e!3855848 (isConcat!1180 lt!2364315))))

(declare-fun b!6348893 () Bool)

(declare-fun e!3855850 () Bool)

(assert (=> b!6348893 (= e!3855850 e!3855848)))

(declare-fun c!1154895 () Bool)

(assert (=> b!6348893 (= c!1154895 (isEmpty!37030 (tail!12087 lt!2364159)))))

(declare-fun e!3855847 () Bool)

(assert (=> d!1992043 e!3855847))

(declare-fun res!2612494 () Bool)

(assert (=> d!1992043 (=> (not res!2612494) (not e!3855847))))

(assert (=> d!1992043 (= res!2612494 (validRegex!7991 lt!2364315))))

(declare-fun e!3855851 () Regex!16255)

(assert (=> d!1992043 (= lt!2364315 e!3855851)))

(declare-fun c!1154894 () Bool)

(assert (=> d!1992043 (= c!1154894 e!3855849)))

(declare-fun res!2612495 () Bool)

(assert (=> d!1992043 (=> (not res!2612495) (not e!3855849))))

(assert (=> d!1992043 (= res!2612495 ((_ is Cons!64940) lt!2364159))))

(assert (=> d!1992043 (forall!15421 lt!2364159 lambda!349166)))

(assert (=> d!1992043 (= (generalisedConcat!1852 lt!2364159) lt!2364315)))

(declare-fun b!6348894 () Bool)

(assert (=> b!6348894 (= e!3855846 EmptyExpr!16255)))

(declare-fun b!6348895 () Bool)

(assert (=> b!6348895 (= e!3855851 (h!71388 lt!2364159))))

(declare-fun b!6348896 () Bool)

(assert (=> b!6348896 (= e!3855851 e!3855846)))

(declare-fun c!1154893 () Bool)

(assert (=> b!6348896 (= c!1154893 ((_ is Cons!64940) lt!2364159))))

(declare-fun b!6348897 () Bool)

(assert (=> b!6348897 (= e!3855847 e!3855850)))

(declare-fun c!1154892 () Bool)

(assert (=> b!6348897 (= c!1154892 (isEmpty!37030 lt!2364159))))

(declare-fun b!6348898 () Bool)

(assert (=> b!6348898 (= e!3855850 (isEmptyExpr!1657 lt!2364315))))

(assert (= (and d!1992043 res!2612495) b!6348891))

(assert (= (and d!1992043 c!1154894) b!6348895))

(assert (= (and d!1992043 (not c!1154894)) b!6348896))

(assert (= (and b!6348896 c!1154893) b!6348890))

(assert (= (and b!6348896 (not c!1154893)) b!6348894))

(assert (= (and d!1992043 res!2612494) b!6348897))

(assert (= (and b!6348897 c!1154892) b!6348898))

(assert (= (and b!6348897 (not c!1154892)) b!6348893))

(assert (= (and b!6348893 c!1154895) b!6348889))

(assert (= (and b!6348893 (not c!1154895)) b!6348892))

(declare-fun m!7156044 () Bool)

(assert (=> b!6348890 m!7156044))

(declare-fun m!7156046 () Bool)

(assert (=> b!6348892 m!7156046))

(declare-fun m!7156048 () Bool)

(assert (=> b!6348889 m!7156048))

(declare-fun m!7156050 () Bool)

(assert (=> d!1992043 m!7156050))

(declare-fun m!7156052 () Bool)

(assert (=> d!1992043 m!7156052))

(declare-fun m!7156054 () Bool)

(assert (=> b!6348897 m!7156054))

(declare-fun m!7156056 () Bool)

(assert (=> b!6348898 m!7156056))

(declare-fun m!7156058 () Bool)

(assert (=> b!6348891 m!7156058))

(declare-fun m!7156060 () Bool)

(assert (=> b!6348893 m!7156060))

(assert (=> b!6348893 m!7156060))

(declare-fun m!7156062 () Bool)

(assert (=> b!6348893 m!7156062))

(assert (=> b!6348025 d!1992043))

(declare-fun d!1992045 () Bool)

(assert (=> d!1992045 (= (matchR!8438 lt!2364185 s!2326) (matchRSpec!3356 lt!2364185 s!2326))))

(declare-fun lt!2364316 () Unit!158351)

(assert (=> d!1992045 (= lt!2364316 (choose!47109 lt!2364185 s!2326))))

(assert (=> d!1992045 (validRegex!7991 lt!2364185)))

(assert (=> d!1992045 (= (mainMatchTheorem!3356 lt!2364185 s!2326) lt!2364316)))

(declare-fun bs!1589463 () Bool)

(assert (= bs!1589463 d!1992045))

(assert (=> bs!1589463 m!7155334))

(assert (=> bs!1589463 m!7155322))

(declare-fun m!7156064 () Bool)

(assert (=> bs!1589463 m!7156064))

(assert (=> bs!1589463 m!7156038))

(assert (=> b!6348025 d!1992045))

(declare-fun bs!1589464 () Bool)

(declare-fun d!1992047 () Bool)

(assert (= bs!1589464 (and d!1992047 d!1992015)))

(declare-fun lambda!349167 () Int)

(assert (=> bs!1589464 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349167 lambda!349153))))

(declare-fun bs!1589465 () Bool)

(assert (= bs!1589465 (and d!1992047 b!6348025)))

(assert (=> bs!1589465 (not (= lambda!349167 lambda!349081))))

(assert (=> bs!1589465 (= lambda!349167 lambda!349080)))

(declare-fun bs!1589466 () Bool)

(assert (= bs!1589466 (and d!1992047 b!6348869)))

(assert (=> bs!1589466 (not (= lambda!349167 lambda!349165))))

(declare-fun bs!1589467 () Bool)

(assert (= bs!1589467 (and d!1992047 b!6348005)))

(assert (=> bs!1589467 (not (= lambda!349167 lambda!349078))))

(declare-fun bs!1589468 () Bool)

(assert (= bs!1589468 (and d!1992047 d!1992017)))

(assert (=> bs!1589468 (not (= lambda!349167 lambda!349159))))

(assert (=> bs!1589468 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349167 lambda!349158))))

(assert (=> bs!1589467 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349167 lambda!349077))))

(declare-fun bs!1589469 () Bool)

(assert (= bs!1589469 (and d!1992047 b!6348814)))

(assert (=> bs!1589469 (not (= lambda!349167 lambda!349162))))

(declare-fun bs!1589470 () Bool)

(assert (= bs!1589470 (and d!1992047 b!6348655)))

(assert (=> bs!1589470 (not (= lambda!349167 lambda!349147))))

(declare-fun bs!1589471 () Bool)

(assert (= bs!1589471 (and d!1992047 b!6348652)))

(assert (=> bs!1589471 (not (= lambda!349167 lambda!349146))))

(declare-fun bs!1589472 () Bool)

(assert (= bs!1589472 (and d!1992047 d!1992023)))

(assert (=> bs!1589472 (= lambda!349167 lambda!349160)))

(declare-fun bs!1589473 () Bool)

(assert (= bs!1589473 (and d!1992047 b!6348811)))

(assert (=> bs!1589473 (not (= lambda!349167 lambda!349161))))

(declare-fun bs!1589474 () Bool)

(assert (= bs!1589474 (and d!1992047 b!6348866)))

(assert (=> bs!1589474 (not (= lambda!349167 lambda!349164))))

(assert (=> d!1992047 true))

(assert (=> d!1992047 true))

(assert (=> d!1992047 true))

(declare-fun lambda!349168 () Int)

(assert (=> bs!1589464 (not (= lambda!349168 lambda!349153))))

(assert (=> bs!1589465 (= lambda!349168 lambda!349081)))

(assert (=> bs!1589465 (not (= lambda!349168 lambda!349080))))

(assert (=> bs!1589466 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 lt!2364185)) (= lt!2364185 (regTwo!33022 lt!2364185))) (= lambda!349168 lambda!349165))))

(assert (=> bs!1589467 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349168 lambda!349078))))

(assert (=> bs!1589468 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349168 lambda!349159))))

(assert (=> bs!1589468 (not (= lambda!349168 lambda!349158))))

(declare-fun bs!1589475 () Bool)

(assert (= bs!1589475 d!1992047))

(assert (=> bs!1589475 (not (= lambda!349168 lambda!349167))))

(assert (=> bs!1589467 (not (= lambda!349168 lambda!349077))))

(assert (=> bs!1589469 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 lt!2364179)) (= lt!2364185 (regTwo!33022 lt!2364179))) (= lambda!349168 lambda!349162))))

(assert (=> bs!1589470 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349168 lambda!349147))))

(assert (=> bs!1589471 (not (= lambda!349168 lambda!349146))))

(assert (=> bs!1589472 (not (= lambda!349168 lambda!349160))))

(assert (=> bs!1589473 (not (= lambda!349168 lambda!349161))))

(assert (=> bs!1589474 (not (= lambda!349168 lambda!349164))))

(assert (=> d!1992047 true))

(assert (=> d!1992047 true))

(assert (=> d!1992047 true))

(assert (=> d!1992047 (= (Exists!3325 lambda!349167) (Exists!3325 lambda!349168))))

(declare-fun lt!2364317 () Unit!158351)

(assert (=> d!1992047 (= lt!2364317 (choose!47115 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326))))

(assert (=> d!1992047 (validRegex!7991 (regOne!33022 (regOne!33022 r!7292)))))

(assert (=> d!1992047 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1862 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326) lt!2364317)))

(declare-fun m!7156066 () Bool)

(assert (=> bs!1589475 m!7156066))

(declare-fun m!7156068 () Bool)

(assert (=> bs!1589475 m!7156068))

(declare-fun m!7156070 () Bool)

(assert (=> bs!1589475 m!7156070))

(assert (=> bs!1589475 m!7155966))

(assert (=> b!6348025 d!1992047))

(declare-fun bs!1589476 () Bool)

(declare-fun d!1992049 () Bool)

(assert (= bs!1589476 (and d!1992049 d!1992043)))

(declare-fun lambda!349169 () Int)

(assert (=> bs!1589476 (= lambda!349169 lambda!349166)))

(declare-fun bs!1589477 () Bool)

(assert (= bs!1589477 (and d!1992049 d!1992027)))

(assert (=> bs!1589477 (= lambda!349169 lambda!349163)))

(declare-fun bs!1589478 () Bool)

(assert (= bs!1589478 (and d!1992049 d!1991903)))

(assert (=> bs!1589478 (= lambda!349169 lambda!349111)))

(declare-fun bs!1589479 () Bool)

(assert (= bs!1589479 (and d!1992049 d!1991959)))

(assert (=> bs!1589479 (= lambda!349169 lambda!349128)))

(declare-fun bs!1589480 () Bool)

(assert (= bs!1589480 (and d!1992049 d!1991913)))

(assert (=> bs!1589480 (= lambda!349169 lambda!349122)))

(declare-fun b!6348899 () Bool)

(declare-fun e!3855854 () Bool)

(declare-fun lt!2364318 () Regex!16255)

(assert (=> b!6348899 (= e!3855854 (= lt!2364318 (head!13002 lt!2364157)))))

(declare-fun b!6348900 () Bool)

(declare-fun e!3855852 () Regex!16255)

(assert (=> b!6348900 (= e!3855852 (Concat!25100 (h!71388 lt!2364157) (generalisedConcat!1852 (t!378652 lt!2364157))))))

(declare-fun b!6348901 () Bool)

(declare-fun e!3855855 () Bool)

(assert (=> b!6348901 (= e!3855855 (isEmpty!37030 (t!378652 lt!2364157)))))

(declare-fun b!6348902 () Bool)

(assert (=> b!6348902 (= e!3855854 (isConcat!1180 lt!2364318))))

(declare-fun b!6348903 () Bool)

(declare-fun e!3855856 () Bool)

(assert (=> b!6348903 (= e!3855856 e!3855854)))

(declare-fun c!1154899 () Bool)

(assert (=> b!6348903 (= c!1154899 (isEmpty!37030 (tail!12087 lt!2364157)))))

(declare-fun e!3855853 () Bool)

(assert (=> d!1992049 e!3855853))

(declare-fun res!2612496 () Bool)

(assert (=> d!1992049 (=> (not res!2612496) (not e!3855853))))

(assert (=> d!1992049 (= res!2612496 (validRegex!7991 lt!2364318))))

(declare-fun e!3855857 () Regex!16255)

(assert (=> d!1992049 (= lt!2364318 e!3855857)))

(declare-fun c!1154898 () Bool)

(assert (=> d!1992049 (= c!1154898 e!3855855)))

(declare-fun res!2612497 () Bool)

(assert (=> d!1992049 (=> (not res!2612497) (not e!3855855))))

(assert (=> d!1992049 (= res!2612497 ((_ is Cons!64940) lt!2364157))))

(assert (=> d!1992049 (forall!15421 lt!2364157 lambda!349169)))

(assert (=> d!1992049 (= (generalisedConcat!1852 lt!2364157) lt!2364318)))

(declare-fun b!6348904 () Bool)

(assert (=> b!6348904 (= e!3855852 EmptyExpr!16255)))

(declare-fun b!6348905 () Bool)

(assert (=> b!6348905 (= e!3855857 (h!71388 lt!2364157))))

(declare-fun b!6348906 () Bool)

(assert (=> b!6348906 (= e!3855857 e!3855852)))

(declare-fun c!1154897 () Bool)

(assert (=> b!6348906 (= c!1154897 ((_ is Cons!64940) lt!2364157))))

(declare-fun b!6348907 () Bool)

(assert (=> b!6348907 (= e!3855853 e!3855856)))

(declare-fun c!1154896 () Bool)

(assert (=> b!6348907 (= c!1154896 (isEmpty!37030 lt!2364157))))

(declare-fun b!6348908 () Bool)

(assert (=> b!6348908 (= e!3855856 (isEmptyExpr!1657 lt!2364318))))

(assert (= (and d!1992049 res!2612497) b!6348901))

(assert (= (and d!1992049 c!1154898) b!6348905))

(assert (= (and d!1992049 (not c!1154898)) b!6348906))

(assert (= (and b!6348906 c!1154897) b!6348900))

(assert (= (and b!6348906 (not c!1154897)) b!6348904))

(assert (= (and d!1992049 res!2612496) b!6348907))

(assert (= (and b!6348907 c!1154896) b!6348908))

(assert (= (and b!6348907 (not c!1154896)) b!6348903))

(assert (= (and b!6348903 c!1154899) b!6348899))

(assert (= (and b!6348903 (not c!1154899)) b!6348902))

(declare-fun m!7156072 () Bool)

(assert (=> b!6348900 m!7156072))

(declare-fun m!7156074 () Bool)

(assert (=> b!6348902 m!7156074))

(declare-fun m!7156076 () Bool)

(assert (=> b!6348899 m!7156076))

(declare-fun m!7156078 () Bool)

(assert (=> d!1992049 m!7156078))

(declare-fun m!7156080 () Bool)

(assert (=> d!1992049 m!7156080))

(declare-fun m!7156082 () Bool)

(assert (=> b!6348907 m!7156082))

(declare-fun m!7156084 () Bool)

(assert (=> b!6348908 m!7156084))

(declare-fun m!7156086 () Bool)

(assert (=> b!6348901 m!7156086))

(declare-fun m!7156088 () Bool)

(assert (=> b!6348903 m!7156088))

(assert (=> b!6348903 m!7156088))

(declare-fun m!7156090 () Bool)

(assert (=> b!6348903 m!7156090))

(assert (=> b!6348025 d!1992049))

(declare-fun d!1992051 () Bool)

(assert (=> d!1992051 (= (matchR!8438 lt!2364179 s!2326) (matchZipper!2267 lt!2364158 s!2326))))

(declare-fun lt!2364321 () Unit!158351)

(declare-fun choose!47116 ((InoxSet Context!11278) List!65066 Regex!16255 List!65065) Unit!158351)

(assert (=> d!1992051 (= lt!2364321 (choose!47116 lt!2364158 lt!2364170 lt!2364179 s!2326))))

(assert (=> d!1992051 (validRegex!7991 lt!2364179)))

(assert (=> d!1992051 (= (theoremZipperRegexEquiv!797 lt!2364158 lt!2364170 lt!2364179 s!2326) lt!2364321)))

(declare-fun bs!1589481 () Bool)

(assert (= bs!1589481 d!1992051))

(assert (=> bs!1589481 m!7155332))

(assert (=> bs!1589481 m!7155342))

(declare-fun m!7156092 () Bool)

(assert (=> bs!1589481 m!7156092))

(assert (=> bs!1589481 m!7156024))

(assert (=> b!6348025 d!1992051))

(declare-fun d!1992053 () Bool)

(assert (=> d!1992053 (= (matchR!8438 lt!2364179 s!2326) (matchRSpec!3356 lt!2364179 s!2326))))

(declare-fun lt!2364322 () Unit!158351)

(assert (=> d!1992053 (= lt!2364322 (choose!47109 lt!2364179 s!2326))))

(assert (=> d!1992053 (validRegex!7991 lt!2364179)))

(assert (=> d!1992053 (= (mainMatchTheorem!3356 lt!2364179 s!2326) lt!2364322)))

(declare-fun bs!1589482 () Bool)

(assert (= bs!1589482 d!1992053))

(assert (=> bs!1589482 m!7155332))

(assert (=> bs!1589482 m!7155328))

(declare-fun m!7156094 () Bool)

(assert (=> bs!1589482 m!7156094))

(assert (=> bs!1589482 m!7156024))

(assert (=> b!6348025 d!1992053))

(declare-fun d!1992055 () Bool)

(assert (=> d!1992055 (= (Exists!3325 lambda!349081) (choose!47113 lambda!349081))))

(declare-fun bs!1589483 () Bool)

(assert (= bs!1589483 d!1992055))

(declare-fun m!7156096 () Bool)

(assert (=> bs!1589483 m!7156096))

(assert (=> b!6348025 d!1992055))

(declare-fun bs!1589484 () Bool)

(declare-fun d!1992057 () Bool)

(assert (= bs!1589484 (and d!1992057 d!1992043)))

(declare-fun lambda!349172 () Int)

(assert (=> bs!1589484 (= lambda!349172 lambda!349166)))

(declare-fun bs!1589485 () Bool)

(assert (= bs!1589485 (and d!1992057 d!1992027)))

(assert (=> bs!1589485 (= lambda!349172 lambda!349163)))

(declare-fun bs!1589486 () Bool)

(assert (= bs!1589486 (and d!1992057 d!1991903)))

(assert (=> bs!1589486 (= lambda!349172 lambda!349111)))

(declare-fun bs!1589487 () Bool)

(assert (= bs!1589487 (and d!1992057 d!1991959)))

(assert (=> bs!1589487 (= lambda!349172 lambda!349128)))

(declare-fun bs!1589488 () Bool)

(assert (= bs!1589488 (and d!1992057 d!1992049)))

(assert (=> bs!1589488 (= lambda!349172 lambda!349169)))

(declare-fun bs!1589489 () Bool)

(assert (= bs!1589489 (and d!1992057 d!1991913)))

(assert (=> bs!1589489 (= lambda!349172 lambda!349122)))

(declare-fun b!6348929 () Bool)

(declare-fun e!3855875 () Regex!16255)

(assert (=> b!6348929 (= e!3855875 EmptyLang!16255)))

(declare-fun b!6348930 () Bool)

(declare-fun e!3855871 () Regex!16255)

(assert (=> b!6348930 (= e!3855871 (h!71388 (unfocusZipperList!1676 zl!343)))))

(declare-fun b!6348931 () Bool)

(declare-fun e!3855870 () Bool)

(declare-fun lt!2364325 () Regex!16255)

(declare-fun isEmptyLang!1664 (Regex!16255) Bool)

(assert (=> b!6348931 (= e!3855870 (isEmptyLang!1664 lt!2364325))))

(declare-fun b!6348932 () Bool)

(assert (=> b!6348932 (= e!3855871 e!3855875)))

(declare-fun c!1154910 () Bool)

(assert (=> b!6348932 (= c!1154910 ((_ is Cons!64940) (unfocusZipperList!1676 zl!343)))))

(declare-fun e!3855874 () Bool)

(assert (=> d!1992057 e!3855874))

(declare-fun res!2612503 () Bool)

(assert (=> d!1992057 (=> (not res!2612503) (not e!3855874))))

(assert (=> d!1992057 (= res!2612503 (validRegex!7991 lt!2364325))))

(assert (=> d!1992057 (= lt!2364325 e!3855871)))

(declare-fun c!1154908 () Bool)

(declare-fun e!3855872 () Bool)

(assert (=> d!1992057 (= c!1154908 e!3855872)))

(declare-fun res!2612502 () Bool)

(assert (=> d!1992057 (=> (not res!2612502) (not e!3855872))))

(assert (=> d!1992057 (= res!2612502 ((_ is Cons!64940) (unfocusZipperList!1676 zl!343)))))

(assert (=> d!1992057 (forall!15421 (unfocusZipperList!1676 zl!343) lambda!349172)))

(assert (=> d!1992057 (= (generalisedUnion!2099 (unfocusZipperList!1676 zl!343)) lt!2364325)))

(declare-fun b!6348933 () Bool)

(assert (=> b!6348933 (= e!3855875 (Union!16255 (h!71388 (unfocusZipperList!1676 zl!343)) (generalisedUnion!2099 (t!378652 (unfocusZipperList!1676 zl!343)))))))

(declare-fun b!6348934 () Bool)

(declare-fun e!3855873 () Bool)

(assert (=> b!6348934 (= e!3855873 (= lt!2364325 (head!13002 (unfocusZipperList!1676 zl!343))))))

(declare-fun b!6348935 () Bool)

(assert (=> b!6348935 (= e!3855872 (isEmpty!37030 (t!378652 (unfocusZipperList!1676 zl!343))))))

(declare-fun b!6348936 () Bool)

(declare-fun isUnion!1094 (Regex!16255) Bool)

(assert (=> b!6348936 (= e!3855873 (isUnion!1094 lt!2364325))))

(declare-fun b!6348937 () Bool)

(assert (=> b!6348937 (= e!3855870 e!3855873)))

(declare-fun c!1154909 () Bool)

(assert (=> b!6348937 (= c!1154909 (isEmpty!37030 (tail!12087 (unfocusZipperList!1676 zl!343))))))

(declare-fun b!6348938 () Bool)

(assert (=> b!6348938 (= e!3855874 e!3855870)))

(declare-fun c!1154911 () Bool)

(assert (=> b!6348938 (= c!1154911 (isEmpty!37030 (unfocusZipperList!1676 zl!343)))))

(assert (= (and d!1992057 res!2612502) b!6348935))

(assert (= (and d!1992057 c!1154908) b!6348930))

(assert (= (and d!1992057 (not c!1154908)) b!6348932))

(assert (= (and b!6348932 c!1154910) b!6348933))

(assert (= (and b!6348932 (not c!1154910)) b!6348929))

(assert (= (and d!1992057 res!2612503) b!6348938))

(assert (= (and b!6348938 c!1154911) b!6348931))

(assert (= (and b!6348938 (not c!1154911)) b!6348937))

(assert (= (and b!6348937 c!1154909) b!6348934))

(assert (= (and b!6348937 (not c!1154909)) b!6348936))

(declare-fun m!7156098 () Bool)

(assert (=> b!6348936 m!7156098))

(declare-fun m!7156100 () Bool)

(assert (=> d!1992057 m!7156100))

(assert (=> d!1992057 m!7155268))

(declare-fun m!7156102 () Bool)

(assert (=> d!1992057 m!7156102))

(assert (=> b!6348937 m!7155268))

(declare-fun m!7156104 () Bool)

(assert (=> b!6348937 m!7156104))

(assert (=> b!6348937 m!7156104))

(declare-fun m!7156106 () Bool)

(assert (=> b!6348937 m!7156106))

(declare-fun m!7156108 () Bool)

(assert (=> b!6348935 m!7156108))

(assert (=> b!6348934 m!7155268))

(declare-fun m!7156110 () Bool)

(assert (=> b!6348934 m!7156110))

(declare-fun m!7156112 () Bool)

(assert (=> b!6348933 m!7156112))

(declare-fun m!7156114 () Bool)

(assert (=> b!6348931 m!7156114))

(assert (=> b!6348938 m!7155268))

(declare-fun m!7156116 () Bool)

(assert (=> b!6348938 m!7156116))

(assert (=> b!6348015 d!1992057))

(declare-fun bs!1589490 () Bool)

(declare-fun d!1992059 () Bool)

(assert (= bs!1589490 (and d!1992059 d!1992057)))

(declare-fun lambda!349175 () Int)

(assert (=> bs!1589490 (= lambda!349175 lambda!349172)))

(declare-fun bs!1589491 () Bool)

(assert (= bs!1589491 (and d!1992059 d!1992043)))

(assert (=> bs!1589491 (= lambda!349175 lambda!349166)))

(declare-fun bs!1589492 () Bool)

(assert (= bs!1589492 (and d!1992059 d!1992027)))

(assert (=> bs!1589492 (= lambda!349175 lambda!349163)))

(declare-fun bs!1589493 () Bool)

(assert (= bs!1589493 (and d!1992059 d!1991903)))

(assert (=> bs!1589493 (= lambda!349175 lambda!349111)))

(declare-fun bs!1589494 () Bool)

(assert (= bs!1589494 (and d!1992059 d!1991959)))

(assert (=> bs!1589494 (= lambda!349175 lambda!349128)))

(declare-fun bs!1589495 () Bool)

(assert (= bs!1589495 (and d!1992059 d!1992049)))

(assert (=> bs!1589495 (= lambda!349175 lambda!349169)))

(declare-fun bs!1589496 () Bool)

(assert (= bs!1589496 (and d!1992059 d!1991913)))

(assert (=> bs!1589496 (= lambda!349175 lambda!349122)))

(declare-fun lt!2364328 () List!65064)

(assert (=> d!1992059 (forall!15421 lt!2364328 lambda!349175)))

(declare-fun e!3855878 () List!65064)

(assert (=> d!1992059 (= lt!2364328 e!3855878)))

(declare-fun c!1154914 () Bool)

(assert (=> d!1992059 (= c!1154914 ((_ is Cons!64942) zl!343))))

(assert (=> d!1992059 (= (unfocusZipperList!1676 zl!343) lt!2364328)))

(declare-fun b!6348943 () Bool)

(assert (=> b!6348943 (= e!3855878 (Cons!64940 (generalisedConcat!1852 (exprs!6139 (h!71390 zl!343))) (unfocusZipperList!1676 (t!378654 zl!343))))))

(declare-fun b!6348944 () Bool)

(assert (=> b!6348944 (= e!3855878 Nil!64940)))

(assert (= (and d!1992059 c!1154914) b!6348943))

(assert (= (and d!1992059 (not c!1154914)) b!6348944))

(declare-fun m!7156118 () Bool)

(assert (=> d!1992059 m!7156118))

(assert (=> b!6348943 m!7155272))

(declare-fun m!7156120 () Bool)

(assert (=> b!6348943 m!7156120))

(assert (=> b!6348015 d!1992059))

(declare-fun b!6348951 () Bool)

(assert (=> b!6348951 true))

(declare-fun bs!1589497 () Bool)

(declare-fun b!6348953 () Bool)

(assert (= bs!1589497 (and b!6348953 b!6348951)))

(declare-fun lt!2364340 () Int)

(declare-fun lambda!349183 () Int)

(declare-fun lt!2364337 () Int)

(declare-fun lambda!349184 () Int)

(assert (=> bs!1589497 (= (= lt!2364337 lt!2364340) (= lambda!349184 lambda!349183))))

(assert (=> b!6348953 true))

(declare-fun d!1992061 () Bool)

(declare-fun e!3855883 () Bool)

(assert (=> d!1992061 e!3855883))

(declare-fun res!2612506 () Bool)

(assert (=> d!1992061 (=> (not res!2612506) (not e!3855883))))

(assert (=> d!1992061 (= res!2612506 (>= lt!2364337 0))))

(declare-fun e!3855884 () Int)

(assert (=> d!1992061 (= lt!2364337 e!3855884)))

(declare-fun c!1154923 () Bool)

(assert (=> d!1992061 (= c!1154923 ((_ is Cons!64942) lt!2364170))))

(assert (=> d!1992061 (= (zipperDepth!362 lt!2364170) lt!2364337)))

(assert (=> b!6348951 (= e!3855884 lt!2364340)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!251 (Context!11278) Int)

(assert (=> b!6348951 (= lt!2364340 (maxBigInt!0 (contextDepth!251 (h!71390 lt!2364170)) (zipperDepth!362 (t!378654 lt!2364170))))))

(declare-fun lt!2364338 () Unit!158351)

(declare-fun lambda!349182 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!235 (List!65066 Int Int Int) Unit!158351)

(assert (=> b!6348951 (= lt!2364338 (lemmaForallContextDepthBiggerThanTransitive!235 (t!378654 lt!2364170) lt!2364340 (zipperDepth!362 (t!378654 lt!2364170)) lambda!349182))))

(declare-fun forall!15423 (List!65066 Int) Bool)

(assert (=> b!6348951 (forall!15423 (t!378654 lt!2364170) lambda!349183)))

(declare-fun lt!2364339 () Unit!158351)

(assert (=> b!6348951 (= lt!2364339 lt!2364338)))

(declare-fun b!6348952 () Bool)

(assert (=> b!6348952 (= e!3855884 0)))

(assert (=> b!6348953 (= e!3855883 (forall!15423 lt!2364170 lambda!349184))))

(assert (= (and d!1992061 c!1154923) b!6348951))

(assert (= (and d!1992061 (not c!1154923)) b!6348952))

(assert (= (and d!1992061 res!2612506) b!6348953))

(declare-fun m!7156122 () Bool)

(assert (=> b!6348951 m!7156122))

(declare-fun m!7156124 () Bool)

(assert (=> b!6348951 m!7156124))

(declare-fun m!7156126 () Bool)

(assert (=> b!6348951 m!7156126))

(assert (=> b!6348951 m!7156122))

(declare-fun m!7156128 () Bool)

(assert (=> b!6348951 m!7156128))

(assert (=> b!6348951 m!7156122))

(declare-fun m!7156130 () Bool)

(assert (=> b!6348951 m!7156130))

(assert (=> b!6348951 m!7156126))

(declare-fun m!7156132 () Bool)

(assert (=> b!6348953 m!7156132))

(assert (=> b!6348024 d!1992061))

(declare-fun bs!1589498 () Bool)

(declare-fun b!6348956 () Bool)

(assert (= bs!1589498 (and b!6348956 b!6348951)))

(declare-fun lambda!349185 () Int)

(assert (=> bs!1589498 (= lambda!349185 lambda!349182)))

(declare-fun lt!2364344 () Int)

(declare-fun lambda!349186 () Int)

(assert (=> bs!1589498 (= (= lt!2364344 lt!2364340) (= lambda!349186 lambda!349183))))

(declare-fun bs!1589499 () Bool)

(assert (= bs!1589499 (and b!6348956 b!6348953)))

(assert (=> bs!1589499 (= (= lt!2364344 lt!2364337) (= lambda!349186 lambda!349184))))

(assert (=> b!6348956 true))

(declare-fun bs!1589500 () Bool)

(declare-fun b!6348958 () Bool)

(assert (= bs!1589500 (and b!6348958 b!6348951)))

(declare-fun lt!2364341 () Int)

(declare-fun lambda!349187 () Int)

(assert (=> bs!1589500 (= (= lt!2364341 lt!2364340) (= lambda!349187 lambda!349183))))

(declare-fun bs!1589501 () Bool)

(assert (= bs!1589501 (and b!6348958 b!6348953)))

(assert (=> bs!1589501 (= (= lt!2364341 lt!2364337) (= lambda!349187 lambda!349184))))

(declare-fun bs!1589502 () Bool)

(assert (= bs!1589502 (and b!6348958 b!6348956)))

(assert (=> bs!1589502 (= (= lt!2364341 lt!2364344) (= lambda!349187 lambda!349186))))

(assert (=> b!6348958 true))

(declare-fun d!1992063 () Bool)

(declare-fun e!3855885 () Bool)

(assert (=> d!1992063 e!3855885))

(declare-fun res!2612507 () Bool)

(assert (=> d!1992063 (=> (not res!2612507) (not e!3855885))))

(assert (=> d!1992063 (= res!2612507 (>= lt!2364341 0))))

(declare-fun e!3855886 () Int)

(assert (=> d!1992063 (= lt!2364341 e!3855886)))

(declare-fun c!1154924 () Bool)

(assert (=> d!1992063 (= c!1154924 ((_ is Cons!64942) zl!343))))

(assert (=> d!1992063 (= (zipperDepth!362 zl!343) lt!2364341)))

(assert (=> b!6348956 (= e!3855886 lt!2364344)))

(assert (=> b!6348956 (= lt!2364344 (maxBigInt!0 (contextDepth!251 (h!71390 zl!343)) (zipperDepth!362 (t!378654 zl!343))))))

(declare-fun lt!2364342 () Unit!158351)

(assert (=> b!6348956 (= lt!2364342 (lemmaForallContextDepthBiggerThanTransitive!235 (t!378654 zl!343) lt!2364344 (zipperDepth!362 (t!378654 zl!343)) lambda!349185))))

(assert (=> b!6348956 (forall!15423 (t!378654 zl!343) lambda!349186)))

(declare-fun lt!2364343 () Unit!158351)

(assert (=> b!6348956 (= lt!2364343 lt!2364342)))

(declare-fun b!6348957 () Bool)

(assert (=> b!6348957 (= e!3855886 0)))

(assert (=> b!6348958 (= e!3855885 (forall!15423 zl!343 lambda!349187))))

(assert (= (and d!1992063 c!1154924) b!6348956))

(assert (= (and d!1992063 (not c!1154924)) b!6348957))

(assert (= (and d!1992063 res!2612507) b!6348958))

(declare-fun m!7156134 () Bool)

(assert (=> b!6348956 m!7156134))

(declare-fun m!7156136 () Bool)

(assert (=> b!6348956 m!7156136))

(declare-fun m!7156138 () Bool)

(assert (=> b!6348956 m!7156138))

(assert (=> b!6348956 m!7156134))

(declare-fun m!7156140 () Bool)

(assert (=> b!6348956 m!7156140))

(assert (=> b!6348956 m!7156134))

(declare-fun m!7156142 () Bool)

(assert (=> b!6348956 m!7156142))

(assert (=> b!6348956 m!7156138))

(declare-fun m!7156144 () Bool)

(assert (=> b!6348958 m!7156144))

(assert (=> b!6348024 d!1992063))

(declare-fun d!1992065 () Bool)

(assert (=> d!1992065 (= (isEmpty!37029 (t!378654 zl!343)) ((_ is Nil!64942) (t!378654 zl!343)))))

(assert (=> b!6348003 d!1992065))

(declare-fun d!1992067 () Bool)

(assert (=> d!1992067 (= (nullable!6248 (regOne!33022 (regOne!33022 r!7292))) (nullableFct!2195 (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun bs!1589503 () Bool)

(assert (= bs!1589503 d!1992067))

(declare-fun m!7156146 () Bool)

(assert (=> bs!1589503 m!7156146))

(assert (=> b!6348013 d!1992067))

(declare-fun b!6348959 () Bool)

(declare-fun e!3855889 () (InoxSet Context!11278))

(declare-fun e!3855887 () (InoxSet Context!11278))

(assert (=> b!6348959 (= e!3855889 e!3855887)))

(declare-fun c!1154928 () Bool)

(assert (=> b!6348959 (= c!1154928 ((_ is Concat!25100) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6348960 () Bool)

(declare-fun e!3855891 () (InoxSet Context!11278))

(declare-fun e!3855888 () (InoxSet Context!11278))

(assert (=> b!6348960 (= e!3855891 e!3855888)))

(declare-fun c!1154929 () Bool)

(assert (=> b!6348960 (= c!1154929 ((_ is Union!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6348961 () Bool)

(declare-fun c!1154926 () Bool)

(assert (=> b!6348961 (= c!1154926 ((_ is Star!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun e!3855892 () (InoxSet Context!11278))

(assert (=> b!6348961 (= e!3855887 e!3855892)))

(declare-fun b!6348962 () Bool)

(declare-fun call!541247 () (InoxSet Context!11278))

(declare-fun call!541246 () (InoxSet Context!11278))

(assert (=> b!6348962 (= e!3855889 ((_ map or) call!541247 call!541246))))

(declare-fun d!1992069 () Bool)

(declare-fun c!1154927 () Bool)

(assert (=> d!1992069 (= c!1154927 (and ((_ is ElementMatch!16255) (regOne!33022 (regOne!33022 r!7292))) (= (c!1154628 (regOne!33022 (regOne!33022 r!7292))) (h!71389 s!2326))))))

(assert (=> d!1992069 (= (derivationStepZipperDown!1503 (regOne!33022 (regOne!33022 r!7292)) (Context!11279 lt!2364157) (h!71389 s!2326)) e!3855891)))

(declare-fun bm!541240 () Bool)

(declare-fun call!541245 () List!65064)

(assert (=> bm!541240 (= call!541247 (derivationStepZipperDown!1503 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))) (ite c!1154929 (Context!11279 lt!2364157) (Context!11279 call!541245)) (h!71389 s!2326)))))

(declare-fun b!6348963 () Bool)

(declare-fun e!3855890 () Bool)

(assert (=> b!6348963 (= e!3855890 (nullable!6248 (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))))

(declare-fun b!6348964 () Bool)

(declare-fun call!541249 () (InoxSet Context!11278))

(assert (=> b!6348964 (= e!3855887 call!541249)))

(declare-fun b!6348965 () Bool)

(assert (=> b!6348965 (= e!3855892 call!541249)))

(declare-fun b!6348966 () Bool)

(assert (=> b!6348966 (= e!3855891 (store ((as const (Array Context!11278 Bool)) false) (Context!11279 lt!2364157) true))))

(declare-fun bm!541241 () Bool)

(declare-fun call!541250 () (InoxSet Context!11278))

(assert (=> bm!541241 (= call!541246 call!541250)))

(declare-fun c!1154925 () Bool)

(declare-fun call!541248 () List!65064)

(declare-fun bm!541242 () Bool)

(assert (=> bm!541242 (= call!541250 (derivationStepZipperDown!1503 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292)))))) (ite (or c!1154929 c!1154925) (Context!11279 lt!2364157) (Context!11279 call!541248)) (h!71389 s!2326)))))

(declare-fun b!6348967 () Bool)

(assert (=> b!6348967 (= e!3855888 ((_ map or) call!541247 call!541250))))

(declare-fun bm!541243 () Bool)

(assert (=> bm!541243 (= call!541245 ($colon$colon!2116 (exprs!6139 (Context!11279 lt!2364157)) (ite (or c!1154925 c!1154928) (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 r!7292)))))))

(declare-fun bm!541244 () Bool)

(assert (=> bm!541244 (= call!541248 call!541245)))

(declare-fun b!6348968 () Bool)

(assert (=> b!6348968 (= c!1154925 e!3855890)))

(declare-fun res!2612508 () Bool)

(assert (=> b!6348968 (=> (not res!2612508) (not e!3855890))))

(assert (=> b!6348968 (= res!2612508 ((_ is Concat!25100) (regOne!33022 (regOne!33022 r!7292))))))

(assert (=> b!6348968 (= e!3855888 e!3855889)))

(declare-fun bm!541245 () Bool)

(assert (=> bm!541245 (= call!541249 call!541246)))

(declare-fun b!6348969 () Bool)

(assert (=> b!6348969 (= e!3855892 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992069 c!1154927) b!6348966))

(assert (= (and d!1992069 (not c!1154927)) b!6348960))

(assert (= (and b!6348960 c!1154929) b!6348967))

(assert (= (and b!6348960 (not c!1154929)) b!6348968))

(assert (= (and b!6348968 res!2612508) b!6348963))

(assert (= (and b!6348968 c!1154925) b!6348962))

(assert (= (and b!6348968 (not c!1154925)) b!6348959))

(assert (= (and b!6348959 c!1154928) b!6348964))

(assert (= (and b!6348959 (not c!1154928)) b!6348961))

(assert (= (and b!6348961 c!1154926) b!6348965))

(assert (= (and b!6348961 (not c!1154926)) b!6348969))

(assert (= (or b!6348964 b!6348965) bm!541244))

(assert (= (or b!6348964 b!6348965) bm!541245))

(assert (= (or b!6348962 bm!541244) bm!541243))

(assert (= (or b!6348962 bm!541245) bm!541241))

(assert (= (or b!6348967 bm!541241) bm!541242))

(assert (= (or b!6348967 b!6348962) bm!541240))

(declare-fun m!7156148 () Bool)

(assert (=> bm!541243 m!7156148))

(declare-fun m!7156150 () Bool)

(assert (=> b!6348963 m!7156150))

(declare-fun m!7156152 () Bool)

(assert (=> bm!541240 m!7156152))

(declare-fun m!7156154 () Bool)

(assert (=> bm!541242 m!7156154))

(declare-fun m!7156156 () Bool)

(assert (=> b!6348966 m!7156156))

(assert (=> b!6348022 d!1992069))

(declare-fun e!3855895 () Bool)

(declare-fun d!1992071 () Bool)

(assert (=> d!1992071 (= (matchZipper!2267 ((_ map or) lt!2364175 lt!2364165) (t!378653 s!2326)) e!3855895)))

(declare-fun res!2612511 () Bool)

(assert (=> d!1992071 (=> res!2612511 e!3855895)))

(assert (=> d!1992071 (= res!2612511 (matchZipper!2267 lt!2364175 (t!378653 s!2326)))))

(declare-fun lt!2364347 () Unit!158351)

(declare-fun choose!47117 ((InoxSet Context!11278) (InoxSet Context!11278) List!65065) Unit!158351)

(assert (=> d!1992071 (= lt!2364347 (choose!47117 lt!2364175 lt!2364165 (t!378653 s!2326)))))

(assert (=> d!1992071 (= (lemmaZipperConcatMatchesSameAsBothZippers!1086 lt!2364175 lt!2364165 (t!378653 s!2326)) lt!2364347)))

(declare-fun b!6348972 () Bool)

(assert (=> b!6348972 (= e!3855895 (matchZipper!2267 lt!2364165 (t!378653 s!2326)))))

(assert (= (and d!1992071 (not res!2612511)) b!6348972))

(assert (=> d!1992071 m!7155310))

(assert (=> d!1992071 m!7155264))

(declare-fun m!7156158 () Bool)

(assert (=> d!1992071 m!7156158))

(assert (=> b!6348972 m!7155316))

(assert (=> b!6348012 d!1992071))

(assert (=> b!6348012 d!1991939))

(declare-fun d!1992073 () Bool)

(declare-fun c!1154930 () Bool)

(assert (=> d!1992073 (= c!1154930 (isEmpty!37033 (t!378653 s!2326)))))

(declare-fun e!3855896 () Bool)

(assert (=> d!1992073 (= (matchZipper!2267 ((_ map or) lt!2364175 lt!2364165) (t!378653 s!2326)) e!3855896)))

(declare-fun b!6348973 () Bool)

(assert (=> b!6348973 (= e!3855896 (nullableZipper!2021 ((_ map or) lt!2364175 lt!2364165)))))

(declare-fun b!6348974 () Bool)

(assert (=> b!6348974 (= e!3855896 (matchZipper!2267 (derivationStepZipper!2221 ((_ map or) lt!2364175 lt!2364165) (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))))))

(assert (= (and d!1992073 c!1154930) b!6348973))

(assert (= (and d!1992073 (not c!1154930)) b!6348974))

(assert (=> d!1992073 m!7155720))

(declare-fun m!7156160 () Bool)

(assert (=> b!6348973 m!7156160))

(assert (=> b!6348974 m!7155726))

(assert (=> b!6348974 m!7155726))

(declare-fun m!7156162 () Bool)

(assert (=> b!6348974 m!7156162))

(assert (=> b!6348974 m!7155730))

(assert (=> b!6348974 m!7156162))

(assert (=> b!6348974 m!7155730))

(declare-fun m!7156164 () Bool)

(assert (=> b!6348974 m!7156164))

(assert (=> b!6348012 d!1992073))

(declare-fun d!1992075 () Bool)

(declare-fun e!3855899 () Bool)

(assert (=> d!1992075 e!3855899))

(declare-fun res!2612514 () Bool)

(assert (=> d!1992075 (=> (not res!2612514) (not e!3855899))))

(declare-fun lt!2364350 () List!65066)

(declare-fun noDuplicate!2085 (List!65066) Bool)

(assert (=> d!1992075 (= res!2612514 (noDuplicate!2085 lt!2364350))))

(declare-fun choose!47118 ((InoxSet Context!11278)) List!65066)

(assert (=> d!1992075 (= lt!2364350 (choose!47118 z!1189))))

(assert (=> d!1992075 (= (toList!10039 z!1189) lt!2364350)))

(declare-fun b!6348977 () Bool)

(declare-fun content!12254 (List!65066) (InoxSet Context!11278))

(assert (=> b!6348977 (= e!3855899 (= (content!12254 lt!2364350) z!1189))))

(assert (= (and d!1992075 res!2612514) b!6348977))

(declare-fun m!7156166 () Bool)

(assert (=> d!1992075 m!7156166))

(declare-fun m!7156168 () Bool)

(assert (=> d!1992075 m!7156168))

(declare-fun m!7156170 () Bool)

(assert (=> b!6348977 m!7156170))

(assert (=> b!6348001 d!1992075))

(declare-fun b!6348982 () Bool)

(declare-fun e!3855902 () Bool)

(declare-fun tp!1769563 () Bool)

(assert (=> b!6348982 (= e!3855902 (and tp_is_empty!41763 tp!1769563))))

(assert (=> b!6348011 (= tp!1769501 e!3855902)))

(assert (= (and b!6348011 ((_ is Cons!64941) (t!378653 s!2326))) b!6348982))

(declare-fun b!6348987 () Bool)

(declare-fun e!3855905 () Bool)

(declare-fun tp!1769568 () Bool)

(declare-fun tp!1769569 () Bool)

(assert (=> b!6348987 (= e!3855905 (and tp!1769568 tp!1769569))))

(assert (=> b!6348026 (= tp!1769499 e!3855905)))

(assert (= (and b!6348026 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343)))) b!6348987))

(declare-fun b!6349000 () Bool)

(declare-fun e!3855908 () Bool)

(declare-fun tp!1769580 () Bool)

(assert (=> b!6349000 (= e!3855908 tp!1769580)))

(declare-fun b!6348998 () Bool)

(assert (=> b!6348998 (= e!3855908 tp_is_empty!41763)))

(declare-fun b!6349001 () Bool)

(declare-fun tp!1769582 () Bool)

(declare-fun tp!1769584 () Bool)

(assert (=> b!6349001 (= e!3855908 (and tp!1769582 tp!1769584))))

(declare-fun b!6348999 () Bool)

(declare-fun tp!1769581 () Bool)

(declare-fun tp!1769583 () Bool)

(assert (=> b!6348999 (= e!3855908 (and tp!1769581 tp!1769583))))

(assert (=> b!6348031 (= tp!1769496 e!3855908)))

(assert (= (and b!6348031 ((_ is ElementMatch!16255) (regOne!33022 r!7292))) b!6348998))

(assert (= (and b!6348031 ((_ is Concat!25100) (regOne!33022 r!7292))) b!6348999))

(assert (= (and b!6348031 ((_ is Star!16255) (regOne!33022 r!7292))) b!6349000))

(assert (= (and b!6348031 ((_ is Union!16255) (regOne!33022 r!7292))) b!6349001))

(declare-fun b!6349004 () Bool)

(declare-fun e!3855909 () Bool)

(declare-fun tp!1769585 () Bool)

(assert (=> b!6349004 (= e!3855909 tp!1769585)))

(declare-fun b!6349002 () Bool)

(assert (=> b!6349002 (= e!3855909 tp_is_empty!41763)))

(declare-fun b!6349005 () Bool)

(declare-fun tp!1769587 () Bool)

(declare-fun tp!1769589 () Bool)

(assert (=> b!6349005 (= e!3855909 (and tp!1769587 tp!1769589))))

(declare-fun b!6349003 () Bool)

(declare-fun tp!1769586 () Bool)

(declare-fun tp!1769588 () Bool)

(assert (=> b!6349003 (= e!3855909 (and tp!1769586 tp!1769588))))

(assert (=> b!6348031 (= tp!1769498 e!3855909)))

(assert (= (and b!6348031 ((_ is ElementMatch!16255) (regTwo!33022 r!7292))) b!6349002))

(assert (= (and b!6348031 ((_ is Concat!25100) (regTwo!33022 r!7292))) b!6349003))

(assert (= (and b!6348031 ((_ is Star!16255) (regTwo!33022 r!7292))) b!6349004))

(assert (= (and b!6348031 ((_ is Union!16255) (regTwo!33022 r!7292))) b!6349005))

(declare-fun b!6349013 () Bool)

(declare-fun e!3855915 () Bool)

(declare-fun tp!1769594 () Bool)

(assert (=> b!6349013 (= e!3855915 tp!1769594)))

(declare-fun e!3855914 () Bool)

(declare-fun tp!1769595 () Bool)

(declare-fun b!6349012 () Bool)

(assert (=> b!6349012 (= e!3855914 (and (inv!83884 (h!71390 (t!378654 zl!343))) e!3855915 tp!1769595))))

(assert (=> b!6348010 (= tp!1769493 e!3855914)))

(assert (= b!6349012 b!6349013))

(assert (= (and b!6348010 ((_ is Cons!64942) (t!378654 zl!343))) b!6349012))

(declare-fun m!7156172 () Bool)

(assert (=> b!6349012 m!7156172))

(declare-fun b!6349014 () Bool)

(declare-fun e!3855916 () Bool)

(declare-fun tp!1769596 () Bool)

(declare-fun tp!1769597 () Bool)

(assert (=> b!6349014 (= e!3855916 (and tp!1769596 tp!1769597))))

(assert (=> b!6348004 (= tp!1769497 e!3855916)))

(assert (= (and b!6348004 ((_ is Cons!64940) (exprs!6139 setElem!43224))) b!6349014))

(declare-fun b!6349017 () Bool)

(declare-fun e!3855917 () Bool)

(declare-fun tp!1769598 () Bool)

(assert (=> b!6349017 (= e!3855917 tp!1769598)))

(declare-fun b!6349015 () Bool)

(assert (=> b!6349015 (= e!3855917 tp_is_empty!41763)))

(declare-fun b!6349018 () Bool)

(declare-fun tp!1769600 () Bool)

(declare-fun tp!1769602 () Bool)

(assert (=> b!6349018 (= e!3855917 (and tp!1769600 tp!1769602))))

(declare-fun b!6349016 () Bool)

(declare-fun tp!1769599 () Bool)

(declare-fun tp!1769601 () Bool)

(assert (=> b!6349016 (= e!3855917 (and tp!1769599 tp!1769601))))

(assert (=> b!6348029 (= tp!1769495 e!3855917)))

(assert (= (and b!6348029 ((_ is ElementMatch!16255) (regOne!33023 r!7292))) b!6349015))

(assert (= (and b!6348029 ((_ is Concat!25100) (regOne!33023 r!7292))) b!6349016))

(assert (= (and b!6348029 ((_ is Star!16255) (regOne!33023 r!7292))) b!6349017))

(assert (= (and b!6348029 ((_ is Union!16255) (regOne!33023 r!7292))) b!6349018))

(declare-fun b!6349021 () Bool)

(declare-fun e!3855918 () Bool)

(declare-fun tp!1769603 () Bool)

(assert (=> b!6349021 (= e!3855918 tp!1769603)))

(declare-fun b!6349019 () Bool)

(assert (=> b!6349019 (= e!3855918 tp_is_empty!41763)))

(declare-fun b!6349022 () Bool)

(declare-fun tp!1769605 () Bool)

(declare-fun tp!1769607 () Bool)

(assert (=> b!6349022 (= e!3855918 (and tp!1769605 tp!1769607))))

(declare-fun b!6349020 () Bool)

(declare-fun tp!1769604 () Bool)

(declare-fun tp!1769606 () Bool)

(assert (=> b!6349020 (= e!3855918 (and tp!1769604 tp!1769606))))

(assert (=> b!6348029 (= tp!1769502 e!3855918)))

(assert (= (and b!6348029 ((_ is ElementMatch!16255) (regTwo!33023 r!7292))) b!6349019))

(assert (= (and b!6348029 ((_ is Concat!25100) (regTwo!33023 r!7292))) b!6349020))

(assert (= (and b!6348029 ((_ is Star!16255) (regTwo!33023 r!7292))) b!6349021))

(assert (= (and b!6348029 ((_ is Union!16255) (regTwo!33023 r!7292))) b!6349022))

(declare-fun condSetEmpty!43230 () Bool)

(assert (=> setNonEmpty!43224 (= condSetEmpty!43230 (= setRest!43224 ((as const (Array Context!11278 Bool)) false)))))

(declare-fun setRes!43230 () Bool)

(assert (=> setNonEmpty!43224 (= tp!1769500 setRes!43230)))

(declare-fun setIsEmpty!43230 () Bool)

(assert (=> setIsEmpty!43230 setRes!43230))

(declare-fun e!3855921 () Bool)

(declare-fun setElem!43230 () Context!11278)

(declare-fun tp!1769612 () Bool)

(declare-fun setNonEmpty!43230 () Bool)

(assert (=> setNonEmpty!43230 (= setRes!43230 (and tp!1769612 (inv!83884 setElem!43230) e!3855921))))

(declare-fun setRest!43230 () (InoxSet Context!11278))

(assert (=> setNonEmpty!43230 (= setRest!43224 ((_ map or) (store ((as const (Array Context!11278 Bool)) false) setElem!43230 true) setRest!43230))))

(declare-fun b!6349027 () Bool)

(declare-fun tp!1769613 () Bool)

(assert (=> b!6349027 (= e!3855921 tp!1769613)))

(assert (= (and setNonEmpty!43224 condSetEmpty!43230) setIsEmpty!43230))

(assert (= (and setNonEmpty!43224 (not condSetEmpty!43230)) setNonEmpty!43230))

(assert (= setNonEmpty!43230 b!6349027))

(declare-fun m!7156174 () Bool)

(assert (=> setNonEmpty!43230 m!7156174))

(declare-fun b!6349030 () Bool)

(declare-fun e!3855922 () Bool)

(declare-fun tp!1769614 () Bool)

(assert (=> b!6349030 (= e!3855922 tp!1769614)))

(declare-fun b!6349028 () Bool)

(assert (=> b!6349028 (= e!3855922 tp_is_empty!41763)))

(declare-fun b!6349031 () Bool)

(declare-fun tp!1769616 () Bool)

(declare-fun tp!1769618 () Bool)

(assert (=> b!6349031 (= e!3855922 (and tp!1769616 tp!1769618))))

(declare-fun b!6349029 () Bool)

(declare-fun tp!1769615 () Bool)

(declare-fun tp!1769617 () Bool)

(assert (=> b!6349029 (= e!3855922 (and tp!1769615 tp!1769617))))

(assert (=> b!6348002 (= tp!1769494 e!3855922)))

(assert (= (and b!6348002 ((_ is ElementMatch!16255) (reg!16584 r!7292))) b!6349028))

(assert (= (and b!6348002 ((_ is Concat!25100) (reg!16584 r!7292))) b!6349029))

(assert (= (and b!6348002 ((_ is Star!16255) (reg!16584 r!7292))) b!6349030))

(assert (= (and b!6348002 ((_ is Union!16255) (reg!16584 r!7292))) b!6349031))

(declare-fun b_lambda!241489 () Bool)

(assert (= b_lambda!241487 (or b!6348017 b_lambda!241489)))

(declare-fun bs!1589504 () Bool)

(declare-fun d!1992077 () Bool)

(assert (= bs!1589504 (and d!1992077 b!6348017)))

(assert (=> bs!1589504 (= (dynLambda!25745 lambda!349079 (h!71390 zl!343)) (derivationStepZipperUp!1429 (h!71390 zl!343) (h!71389 s!2326)))))

(assert (=> bs!1589504 m!7155368))

(assert (=> d!1992001 d!1992077))

(declare-fun b_lambda!241491 () Bool)

(assert (= b_lambda!241485 (or b!6348017 b_lambda!241491)))

(declare-fun bs!1589505 () Bool)

(declare-fun d!1992079 () Bool)

(assert (= bs!1589505 (and d!1992079 b!6348017)))

(assert (=> bs!1589505 (= (dynLambda!25745 lambda!349079 lt!2364171) (derivationStepZipperUp!1429 lt!2364171 (h!71389 s!2326)))))

(assert (=> bs!1589505 m!7155284))

(assert (=> d!1991989 d!1992079))

(check-sat (not d!1992043) (not b!6349017) (not b!6348477) (not b!6348852) (not b!6348507) (not b!6348861) (not b!6348937) (not b!6348476) (not d!1991981) (not b!6348953) (not d!1992073) (not b!6348892) (not d!1992027) (not b!6348650) (not b!6348853) (not bs!1589505) (not d!1991991) (not b!6348690) (not d!1992023) (not b!6348816) (not b!6349003) (not b!6348504) (not b!6348472) (not b!6348468) (not bm!541231) (not d!1992019) (not b!6348889) (not b!6349005) (not d!1992071) (not b!6348374) (not b!6348973) (not d!1991985) (not b!6348897) (not b!6348809) (not b!6348935) (not b!6349029) (not d!1991935) (not b!6348788) (not b!6348987) (not d!1991913) (not d!1992033) (not b!6348933) (not d!1992017) (not d!1992011) (not bm!541228) (not b!6348848) (not b!6348376) (not b!6348830) (not b!6348974) (not bm!541233) (not b!6348877) (not d!1992013) (not b!6348505) (not b!6348893) (not bm!541178) (not b!6348789) (not b!6348506) (not b!6348713) (not b!6348697) (not b!6348890) (not b!6348908) (not b!6348832) (not bm!541210) (not b!6348934) (not b!6348956) (not bm!541212) (not bm!541225) (not b!6349014) (not d!1992049) (not b!6348723) (not b!6349030) (not bm!541232) (not d!1991993) (not b!6349016) (not b!6348898) (not b!6348761) (not b!6348958) (not b!6348907) (not b!6348695) (not d!1992029) (not b!6349001) (not d!1992021) (not b!6349022) (not d!1992041) (not b!6348977) (not b!6348878) (not d!1992045) (not b!6348657) (not b!6348999) (not bm!541236) (not d!1992075) (not b!6348820) (not d!1991897) (not b!6349000) (not b!6348886) (not b!6348691) (not b!6348357) (not d!1992031) (not bm!541179) (not b!6348943) (not b!6349031) (not b!6348936) (not b!6348833) (not b!6348728) (not bm!541243) (not b_lambda!241489) (not b!6348828) (not b!6348851) (not b!6348720) (not bm!541237) (not b!6348900) (not b!6349018) (not b!6348527) (not d!1991923) (not d!1991989) (not d!1992005) (not b!6348876) (not b!6349013) (not b!6348839) (not bs!1589504) (not b!6349020) (not bm!541238) (not bm!541240) (not b!6348972) (not b!6348871) (not b!6348769) (not bm!541206) (not d!1992037) (not b!6348831) (not d!1991983) (not b!6348730) (not setNonEmpty!43230) (not b!6348692) (not b!6349012) (not b!6348881) (not b!6348840) (not b!6348716) (not b!6348829) (not b!6348768) (not b!6348864) (not b!6348951) (not b!6348899) (not d!1992067) (not b!6348838) (not d!1992009) (not b!6348982) (not d!1991959) (not b!6348470) (not d!1992001) (not b!6348733) (not b!6348790) (not b!6348525) tp_is_empty!41763 (not d!1992007) (not b!6348496) (not d!1992047) (not d!1992055) (not bm!541242) (not b!6348469) (not b!6348903) (not b!6348495) (not b!6348725) (not b!6348700) (not b!6348792) (not b!6348963) (not b!6348891) (not b!6348902) (not b!6349004) (not b!6348901) (not d!1992057) (not d!1992015) (not d!1991939) (not d!1991903) (not b!6348796) (not bm!541202) (not b!6348938) (not b_lambda!241491) (not d!1992051) (not bm!541211) (not b!6348821) (not bm!541203) (not b!6348834) (not b!6348824) (not b!6349021) (not b!6348471) (not d!1992059) (not bm!541234) (not b!6348823) (not b!6348791) (not bm!541239) (not bm!541227) (not b!6348858) (not b!6348856) (not b!6348883) (not bm!541209) (not b!6349027) (not d!1992053) (not b!6348822) (not b!6348931))
(check-sat)
(get-model)

(declare-fun b!6349517 () Bool)

(declare-fun e!3856234 () (InoxSet Context!11278))

(declare-fun e!3856232 () (InoxSet Context!11278))

(assert (=> b!6349517 (= e!3856234 e!3856232)))

(declare-fun c!1155080 () Bool)

(assert (=> b!6349517 (= c!1155080 ((_ is Concat!25100) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6349518 () Bool)

(declare-fun e!3856236 () (InoxSet Context!11278))

(declare-fun e!3856233 () (InoxSet Context!11278))

(assert (=> b!6349518 (= e!3856236 e!3856233)))

(declare-fun c!1155081 () Bool)

(assert (=> b!6349518 (= c!1155081 ((_ is Union!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6349519 () Bool)

(declare-fun c!1155078 () Bool)

(assert (=> b!6349519 (= c!1155078 ((_ is Star!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun e!3856237 () (InoxSet Context!11278))

(assert (=> b!6349519 (= e!3856232 e!3856237)))

(declare-fun b!6349520 () Bool)

(declare-fun call!541364 () (InoxSet Context!11278))

(declare-fun call!541363 () (InoxSet Context!11278))

(assert (=> b!6349520 (= e!3856234 ((_ map or) call!541364 call!541363))))

(declare-fun d!1992327 () Bool)

(declare-fun c!1155079 () Bool)

(assert (=> d!1992327 (= c!1155079 (and ((_ is ElementMatch!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))) (= (c!1154628 (h!71388 (exprs!6139 (h!71390 zl!343)))) (h!71389 s!2326))))))

(assert (=> d!1992327 (= (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (h!71390 zl!343))) (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) (h!71389 s!2326)) e!3856236)))

(declare-fun bm!541357 () Bool)

(declare-fun call!541362 () List!65064)

(assert (=> bm!541357 (= call!541364 (derivationStepZipperDown!1503 (ite c!1155081 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))) (ite c!1155081 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) (Context!11279 call!541362)) (h!71389 s!2326)))))

(declare-fun b!6349521 () Bool)

(declare-fun e!3856235 () Bool)

(assert (=> b!6349521 (= e!3856235 (nullable!6248 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6349522 () Bool)

(declare-fun call!541366 () (InoxSet Context!11278))

(assert (=> b!6349522 (= e!3856232 call!541366)))

(declare-fun b!6349523 () Bool)

(assert (=> b!6349523 (= e!3856237 call!541366)))

(declare-fun b!6349524 () Bool)

(assert (=> b!6349524 (= e!3856236 (store ((as const (Array Context!11278 Bool)) false) (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) true))))

(declare-fun bm!541358 () Bool)

(declare-fun call!541367 () (InoxSet Context!11278))

(assert (=> bm!541358 (= call!541363 call!541367)))

(declare-fun c!1155077 () Bool)

(declare-fun call!541365 () List!65064)

(declare-fun bm!541359 () Bool)

(assert (=> bm!541359 (= call!541367 (derivationStepZipperDown!1503 (ite c!1155081 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1155077 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1155080 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))) (ite (or c!1155081 c!1155077) (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) (Context!11279 call!541365)) (h!71389 s!2326)))))

(declare-fun b!6349525 () Bool)

(assert (=> b!6349525 (= e!3856233 ((_ map or) call!541364 call!541367))))

(declare-fun bm!541360 () Bool)

(assert (=> bm!541360 (= call!541362 ($colon$colon!2116 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))) (ite (or c!1155077 c!1155080) (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (h!71388 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun bm!541361 () Bool)

(assert (=> bm!541361 (= call!541365 call!541362)))

(declare-fun b!6349526 () Bool)

(assert (=> b!6349526 (= c!1155077 e!3856235)))

(declare-fun res!2612712 () Bool)

(assert (=> b!6349526 (=> (not res!2612712) (not e!3856235))))

(assert (=> b!6349526 (= res!2612712 ((_ is Concat!25100) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6349526 (= e!3856233 e!3856234)))

(declare-fun bm!541362 () Bool)

(assert (=> bm!541362 (= call!541366 call!541363)))

(declare-fun b!6349527 () Bool)

(assert (=> b!6349527 (= e!3856237 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992327 c!1155079) b!6349524))

(assert (= (and d!1992327 (not c!1155079)) b!6349518))

(assert (= (and b!6349518 c!1155081) b!6349525))

(assert (= (and b!6349518 (not c!1155081)) b!6349526))

(assert (= (and b!6349526 res!2612712) b!6349521))

(assert (= (and b!6349526 c!1155077) b!6349520))

(assert (= (and b!6349526 (not c!1155077)) b!6349517))

(assert (= (and b!6349517 c!1155080) b!6349522))

(assert (= (and b!6349517 (not c!1155080)) b!6349519))

(assert (= (and b!6349519 c!1155078) b!6349523))

(assert (= (and b!6349519 (not c!1155078)) b!6349527))

(assert (= (or b!6349522 b!6349523) bm!541361))

(assert (= (or b!6349522 b!6349523) bm!541362))

(assert (= (or b!6349520 bm!541361) bm!541360))

(assert (= (or b!6349520 bm!541362) bm!541358))

(assert (= (or b!6349525 bm!541358) bm!541359))

(assert (= (or b!6349525 b!6349520) bm!541357))

(declare-fun m!7156680 () Bool)

(assert (=> bm!541360 m!7156680))

(assert (=> b!6349521 m!7155906))

(declare-fun m!7156682 () Bool)

(assert (=> bm!541357 m!7156682))

(declare-fun m!7156684 () Bool)

(assert (=> bm!541359 m!7156684))

(declare-fun m!7156686 () Bool)

(assert (=> b!6349524 m!7156686))

(assert (=> bm!541212 d!1992327))

(declare-fun b!6349539 () Bool)

(declare-fun e!3856247 () (InoxSet Context!11278))

(declare-fun e!3856245 () (InoxSet Context!11278))

(assert (=> b!6349539 (= e!3856247 e!3856245)))

(declare-fun c!1155089 () Bool)

(assert (=> b!6349539 (= c!1155089 ((_ is Concat!25100) (h!71388 (exprs!6139 lt!2364161))))))

(declare-fun b!6349540 () Bool)

(declare-fun e!3856249 () (InoxSet Context!11278))

(declare-fun e!3856246 () (InoxSet Context!11278))

(assert (=> b!6349540 (= e!3856249 e!3856246)))

(declare-fun c!1155090 () Bool)

(assert (=> b!6349540 (= c!1155090 ((_ is Union!16255) (h!71388 (exprs!6139 lt!2364161))))))

(declare-fun b!6349541 () Bool)

(declare-fun c!1155087 () Bool)

(assert (=> b!6349541 (= c!1155087 ((_ is Star!16255) (h!71388 (exprs!6139 lt!2364161))))))

(declare-fun e!3856250 () (InoxSet Context!11278))

(assert (=> b!6349541 (= e!3856245 e!3856250)))

(declare-fun b!6349542 () Bool)

(declare-fun call!541372 () (InoxSet Context!11278))

(declare-fun call!541371 () (InoxSet Context!11278))

(assert (=> b!6349542 (= e!3856247 ((_ map or) call!541372 call!541371))))

(declare-fun d!1992331 () Bool)

(declare-fun c!1155088 () Bool)

(assert (=> d!1992331 (= c!1155088 (and ((_ is ElementMatch!16255) (h!71388 (exprs!6139 lt!2364161))) (= (c!1154628 (h!71388 (exprs!6139 lt!2364161))) (h!71389 s!2326))))))

(assert (=> d!1992331 (= (derivationStepZipperDown!1503 (h!71388 (exprs!6139 lt!2364161)) (Context!11279 (t!378652 (exprs!6139 lt!2364161))) (h!71389 s!2326)) e!3856249)))

(declare-fun bm!541365 () Bool)

(declare-fun call!541370 () List!65064)

(assert (=> bm!541365 (= call!541372 (derivationStepZipperDown!1503 (ite c!1155090 (regOne!33023 (h!71388 (exprs!6139 lt!2364161))) (regOne!33022 (h!71388 (exprs!6139 lt!2364161)))) (ite c!1155090 (Context!11279 (t!378652 (exprs!6139 lt!2364161))) (Context!11279 call!541370)) (h!71389 s!2326)))))

(declare-fun b!6349543 () Bool)

(declare-fun e!3856248 () Bool)

(assert (=> b!6349543 (= e!3856248 (nullable!6248 (regOne!33022 (h!71388 (exprs!6139 lt!2364161)))))))

(declare-fun b!6349544 () Bool)

(declare-fun call!541374 () (InoxSet Context!11278))

(assert (=> b!6349544 (= e!3856245 call!541374)))

(declare-fun b!6349545 () Bool)

(assert (=> b!6349545 (= e!3856250 call!541374)))

(declare-fun b!6349546 () Bool)

(assert (=> b!6349546 (= e!3856249 (store ((as const (Array Context!11278 Bool)) false) (Context!11279 (t!378652 (exprs!6139 lt!2364161))) true))))

(declare-fun bm!541366 () Bool)

(declare-fun call!541375 () (InoxSet Context!11278))

(assert (=> bm!541366 (= call!541371 call!541375)))

(declare-fun c!1155086 () Bool)

(declare-fun bm!541367 () Bool)

(declare-fun call!541373 () List!65064)

(assert (=> bm!541367 (= call!541375 (derivationStepZipperDown!1503 (ite c!1155090 (regTwo!33023 (h!71388 (exprs!6139 lt!2364161))) (ite c!1155086 (regTwo!33022 (h!71388 (exprs!6139 lt!2364161))) (ite c!1155089 (regOne!33022 (h!71388 (exprs!6139 lt!2364161))) (reg!16584 (h!71388 (exprs!6139 lt!2364161)))))) (ite (or c!1155090 c!1155086) (Context!11279 (t!378652 (exprs!6139 lt!2364161))) (Context!11279 call!541373)) (h!71389 s!2326)))))

(declare-fun b!6349547 () Bool)

(assert (=> b!6349547 (= e!3856246 ((_ map or) call!541372 call!541375))))

(declare-fun bm!541368 () Bool)

(assert (=> bm!541368 (= call!541370 ($colon$colon!2116 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161)))) (ite (or c!1155086 c!1155089) (regTwo!33022 (h!71388 (exprs!6139 lt!2364161))) (h!71388 (exprs!6139 lt!2364161)))))))

(declare-fun bm!541369 () Bool)

(assert (=> bm!541369 (= call!541373 call!541370)))

(declare-fun b!6349548 () Bool)

(assert (=> b!6349548 (= c!1155086 e!3856248)))

(declare-fun res!2612716 () Bool)

(assert (=> b!6349548 (=> (not res!2612716) (not e!3856248))))

(assert (=> b!6349548 (= res!2612716 ((_ is Concat!25100) (h!71388 (exprs!6139 lt!2364161))))))

(assert (=> b!6349548 (= e!3856246 e!3856247)))

(declare-fun bm!541370 () Bool)

(assert (=> bm!541370 (= call!541374 call!541371)))

(declare-fun b!6349549 () Bool)

(assert (=> b!6349549 (= e!3856250 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992331 c!1155088) b!6349546))

(assert (= (and d!1992331 (not c!1155088)) b!6349540))

(assert (= (and b!6349540 c!1155090) b!6349547))

(assert (= (and b!6349540 (not c!1155090)) b!6349548))

(assert (= (and b!6349548 res!2612716) b!6349543))

(assert (= (and b!6349548 c!1155086) b!6349542))

(assert (= (and b!6349548 (not c!1155086)) b!6349539))

(assert (= (and b!6349539 c!1155089) b!6349544))

(assert (= (and b!6349539 (not c!1155089)) b!6349541))

(assert (= (and b!6349541 c!1155087) b!6349545))

(assert (= (and b!6349541 (not c!1155087)) b!6349549))

(assert (= (or b!6349544 b!6349545) bm!541369))

(assert (= (or b!6349544 b!6349545) bm!541370))

(assert (= (or b!6349542 bm!541369) bm!541368))

(assert (= (or b!6349542 bm!541370) bm!541366))

(assert (= (or b!6349547 bm!541366) bm!541367))

(assert (= (or b!6349547 b!6349542) bm!541365))

(declare-fun m!7156688 () Bool)

(assert (=> bm!541368 m!7156688))

(declare-fun m!7156690 () Bool)

(assert (=> b!6349543 m!7156690))

(declare-fun m!7156692 () Bool)

(assert (=> bm!541365 m!7156692))

(declare-fun m!7156694 () Bool)

(assert (=> bm!541367 m!7156694))

(declare-fun m!7156696 () Bool)

(assert (=> b!6349546 m!7156696))

(assert (=> bm!541211 d!1992331))

(assert (=> b!6348828 d!1991943))

(declare-fun b!6349550 () Bool)

(declare-fun e!3856253 () (InoxSet Context!11278))

(declare-fun e!3856251 () (InoxSet Context!11278))

(assert (=> b!6349550 (= e!3856253 e!3856251)))

(declare-fun c!1155094 () Bool)

(assert (=> b!6349550 (= c!1155094 ((_ is Concat!25100) (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun b!6349551 () Bool)

(declare-fun e!3856255 () (InoxSet Context!11278))

(declare-fun e!3856252 () (InoxSet Context!11278))

(assert (=> b!6349551 (= e!3856255 e!3856252)))

(declare-fun c!1155095 () Bool)

(assert (=> b!6349551 (= c!1155095 ((_ is Union!16255) (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun b!6349552 () Bool)

(declare-fun c!1155092 () Bool)

(assert (=> b!6349552 (= c!1155092 ((_ is Star!16255) (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun e!3856256 () (InoxSet Context!11278))

(assert (=> b!6349552 (= e!3856251 e!3856256)))

(declare-fun b!6349553 () Bool)

(declare-fun call!541378 () (InoxSet Context!11278))

(declare-fun call!541377 () (InoxSet Context!11278))

(assert (=> b!6349553 (= e!3856253 ((_ map or) call!541378 call!541377))))

(declare-fun d!1992333 () Bool)

(declare-fun c!1155093 () Bool)

(assert (=> d!1992333 (= c!1155093 (and ((_ is ElementMatch!16255) (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (= (c!1154628 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (h!71389 s!2326))))))

(assert (=> d!1992333 (= (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (h!71389 s!2326)) e!3856255)))

(declare-fun bm!541371 () Bool)

(declare-fun call!541376 () List!65064)

(assert (=> bm!541371 (= call!541378 (derivationStepZipperDown!1503 (ite c!1155095 (regOne!33023 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (regOne!33022 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))) (ite c!1155095 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (Context!11279 call!541376)) (h!71389 s!2326)))))

(declare-fun b!6349554 () Bool)

(declare-fun e!3856254 () Bool)

(assert (=> b!6349554 (= e!3856254 (nullable!6248 (regOne!33022 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))))

(declare-fun b!6349555 () Bool)

(declare-fun call!541380 () (InoxSet Context!11278))

(assert (=> b!6349555 (= e!3856251 call!541380)))

(declare-fun b!6349556 () Bool)

(assert (=> b!6349556 (= e!3856256 call!541380)))

(declare-fun b!6349557 () Bool)

(assert (=> b!6349557 (= e!3856255 (store ((as const (Array Context!11278 Bool)) false) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) true))))

(declare-fun bm!541372 () Bool)

(declare-fun call!541381 () (InoxSet Context!11278))

(assert (=> bm!541372 (= call!541377 call!541381)))

(declare-fun c!1155091 () Bool)

(declare-fun bm!541373 () Bool)

(declare-fun call!541379 () List!65064)

(assert (=> bm!541373 (= call!541381 (derivationStepZipperDown!1503 (ite c!1155095 (regTwo!33023 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (ite c!1155091 (regTwo!33022 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (ite c!1155094 (regOne!33022 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (reg!16584 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))) (ite (or c!1155095 c!1155091) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (Context!11279 call!541379)) (h!71389 s!2326)))))

(declare-fun b!6349558 () Bool)

(assert (=> b!6349558 (= e!3856252 ((_ map or) call!541378 call!541381))))

(declare-fun bm!541374 () Bool)

(assert (=> bm!541374 (= call!541376 ($colon$colon!2116 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))) (ite (or c!1155091 c!1155094) (regTwo!33022 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))))

(declare-fun bm!541375 () Bool)

(assert (=> bm!541375 (= call!541379 call!541376)))

(declare-fun b!6349559 () Bool)

(assert (=> b!6349559 (= c!1155091 e!3856254)))

(declare-fun res!2612717 () Bool)

(assert (=> b!6349559 (=> (not res!2612717) (not e!3856254))))

(assert (=> b!6349559 (= res!2612717 ((_ is Concat!25100) (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))

(assert (=> b!6349559 (= e!3856252 e!3856253)))

(declare-fun bm!541376 () Bool)

(assert (=> bm!541376 (= call!541380 call!541377)))

(declare-fun b!6349560 () Bool)

(assert (=> b!6349560 (= e!3856256 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992333 c!1155093) b!6349557))

(assert (= (and d!1992333 (not c!1155093)) b!6349551))

(assert (= (and b!6349551 c!1155095) b!6349558))

(assert (= (and b!6349551 (not c!1155095)) b!6349559))

(assert (= (and b!6349559 res!2612717) b!6349554))

(assert (= (and b!6349559 c!1155091) b!6349553))

(assert (= (and b!6349559 (not c!1155091)) b!6349550))

(assert (= (and b!6349550 c!1155094) b!6349555))

(assert (= (and b!6349550 (not c!1155094)) b!6349552))

(assert (= (and b!6349552 c!1155092) b!6349556))

(assert (= (and b!6349552 (not c!1155092)) b!6349560))

(assert (= (or b!6349555 b!6349556) bm!541375))

(assert (= (or b!6349555 b!6349556) bm!541376))

(assert (= (or b!6349553 bm!541375) bm!541374))

(assert (= (or b!6349553 bm!541376) bm!541372))

(assert (= (or b!6349558 bm!541372) bm!541373))

(assert (= (or b!6349558 b!6349553) bm!541371))

(declare-fun m!7156698 () Bool)

(assert (=> bm!541374 m!7156698))

(declare-fun m!7156700 () Bool)

(assert (=> b!6349554 m!7156700))

(declare-fun m!7156702 () Bool)

(assert (=> bm!541371 m!7156702))

(declare-fun m!7156704 () Bool)

(assert (=> bm!541373 m!7156704))

(declare-fun m!7156706 () Bool)

(assert (=> b!6349557 m!7156706))

(assert (=> bm!541210 d!1992333))

(declare-fun b!6349561 () Bool)

(declare-fun e!3856258 () Bool)

(declare-fun e!3856261 () Bool)

(assert (=> b!6349561 (= e!3856258 e!3856261)))

(declare-fun c!1155096 () Bool)

(assert (=> b!6349561 (= c!1155096 ((_ is Star!16255) (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))))))

(declare-fun b!6349562 () Bool)

(declare-fun e!3856260 () Bool)

(declare-fun e!3856263 () Bool)

(assert (=> b!6349562 (= e!3856260 e!3856263)))

(declare-fun res!2612719 () Bool)

(assert (=> b!6349562 (=> (not res!2612719) (not e!3856263))))

(declare-fun call!541383 () Bool)

(assert (=> b!6349562 (= res!2612719 call!541383)))

(declare-fun bm!541377 () Bool)

(declare-fun c!1155097 () Bool)

(declare-fun call!541382 () Bool)

(assert (=> bm!541377 (= call!541382 (validRegex!7991 (ite c!1155097 (regTwo!33023 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))) (regTwo!33022 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))))))))

(declare-fun b!6349563 () Bool)

(declare-fun e!3856262 () Bool)

(assert (=> b!6349563 (= e!3856262 call!541382)))

(declare-fun b!6349564 () Bool)

(assert (=> b!6349564 (= e!3856263 call!541382)))

(declare-fun b!6349565 () Bool)

(declare-fun e!3856257 () Bool)

(declare-fun call!541384 () Bool)

(assert (=> b!6349565 (= e!3856257 call!541384)))

(declare-fun d!1992335 () Bool)

(declare-fun res!2612721 () Bool)

(assert (=> d!1992335 (=> res!2612721 e!3856258)))

(assert (=> d!1992335 (= res!2612721 ((_ is ElementMatch!16255) (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))))))

(assert (=> d!1992335 (= (validRegex!7991 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))) e!3856258)))

(declare-fun bm!541378 () Bool)

(assert (=> bm!541378 (= call!541384 (validRegex!7991 (ite c!1155096 (reg!16584 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))) (ite c!1155097 (regOne!33023 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))) (regOne!33022 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292)))))))))

(declare-fun b!6349566 () Bool)

(declare-fun res!2612718 () Bool)

(assert (=> b!6349566 (=> (not res!2612718) (not e!3856262))))

(assert (=> b!6349566 (= res!2612718 call!541383)))

(declare-fun e!3856259 () Bool)

(assert (=> b!6349566 (= e!3856259 e!3856262)))

(declare-fun b!6349567 () Bool)

(assert (=> b!6349567 (= e!3856261 e!3856259)))

(assert (=> b!6349567 (= c!1155097 ((_ is Union!16255) (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))))))

(declare-fun b!6349568 () Bool)

(assert (=> b!6349568 (= e!3856261 e!3856257)))

(declare-fun res!2612722 () Bool)

(assert (=> b!6349568 (= res!2612722 (not (nullable!6248 (reg!16584 (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292))))))))

(assert (=> b!6349568 (=> (not res!2612722) (not e!3856257))))

(declare-fun bm!541379 () Bool)

(assert (=> bm!541379 (= call!541383 call!541384)))

(declare-fun b!6349569 () Bool)

(declare-fun res!2612720 () Bool)

(assert (=> b!6349569 (=> res!2612720 e!3856260)))

(assert (=> b!6349569 (= res!2612720 (not ((_ is Concat!25100) (ite c!1154720 (regTwo!33023 r!7292) (regTwo!33022 r!7292)))))))

(assert (=> b!6349569 (= e!3856259 e!3856260)))

(assert (= (and d!1992335 (not res!2612721)) b!6349561))

(assert (= (and b!6349561 c!1155096) b!6349568))

(assert (= (and b!6349561 (not c!1155096)) b!6349567))

(assert (= (and b!6349568 res!2612722) b!6349565))

(assert (= (and b!6349567 c!1155097) b!6349566))

(assert (= (and b!6349567 (not c!1155097)) b!6349569))

(assert (= (and b!6349566 res!2612718) b!6349563))

(assert (= (and b!6349569 (not res!2612720)) b!6349562))

(assert (= (and b!6349562 res!2612719) b!6349564))

(assert (= (or b!6349563 b!6349564) bm!541377))

(assert (= (or b!6349566 b!6349562) bm!541379))

(assert (= (or b!6349565 bm!541379) bm!541378))

(declare-fun m!7156708 () Bool)

(assert (=> bm!541377 m!7156708))

(declare-fun m!7156710 () Bool)

(assert (=> bm!541378 m!7156710))

(declare-fun m!7156712 () Bool)

(assert (=> b!6349568 m!7156712))

(assert (=> bm!541178 d!1992335))

(assert (=> d!1991983 d!1991981))

(assert (=> d!1991983 d!1991963))

(declare-fun d!1992337 () Bool)

(assert (=> d!1992337 (= (matchR!8438 r!7292 s!2326) (matchRSpec!3356 r!7292 s!2326))))

(assert (=> d!1992337 true))

(declare-fun _$88!5022 () Unit!158351)

(assert (=> d!1992337 (= (choose!47109 r!7292 s!2326) _$88!5022)))

(declare-fun bs!1589794 () Bool)

(assert (= bs!1589794 d!1992337))

(assert (=> bs!1589794 m!7155276))

(assert (=> bs!1589794 m!7155274))

(assert (=> d!1991983 d!1992337))

(assert (=> d!1991983 d!1991877))

(declare-fun bs!1589795 () Bool)

(declare-fun d!1992339 () Bool)

(assert (= bs!1589795 (and d!1992339 d!1992057)))

(declare-fun lambda!349220 () Int)

(assert (=> bs!1589795 (= lambda!349220 lambda!349172)))

(declare-fun bs!1589796 () Bool)

(assert (= bs!1589796 (and d!1992339 d!1992043)))

(assert (=> bs!1589796 (= lambda!349220 lambda!349166)))

(declare-fun bs!1589797 () Bool)

(assert (= bs!1589797 (and d!1992339 d!1992027)))

(assert (=> bs!1589797 (= lambda!349220 lambda!349163)))

(declare-fun bs!1589798 () Bool)

(assert (= bs!1589798 (and d!1992339 d!1991903)))

(assert (=> bs!1589798 (= lambda!349220 lambda!349111)))

(declare-fun bs!1589799 () Bool)

(assert (= bs!1589799 (and d!1992339 d!1992049)))

(assert (=> bs!1589799 (= lambda!349220 lambda!349169)))

(declare-fun bs!1589800 () Bool)

(assert (= bs!1589800 (and d!1992339 d!1991913)))

(assert (=> bs!1589800 (= lambda!349220 lambda!349122)))

(declare-fun bs!1589801 () Bool)

(assert (= bs!1589801 (and d!1992339 d!1991959)))

(assert (=> bs!1589801 (= lambda!349220 lambda!349128)))

(declare-fun bs!1589802 () Bool)

(assert (= bs!1589802 (and d!1992339 d!1992059)))

(assert (=> bs!1589802 (= lambda!349220 lambda!349175)))

(declare-fun b!6349570 () Bool)

(declare-fun e!3856266 () Bool)

(declare-fun lt!2364381 () Regex!16255)

(assert (=> b!6349570 (= e!3856266 (= lt!2364381 (head!13002 (t!378652 lt!2364157))))))

(declare-fun b!6349571 () Bool)

(declare-fun e!3856264 () Regex!16255)

(assert (=> b!6349571 (= e!3856264 (Concat!25100 (h!71388 (t!378652 lt!2364157)) (generalisedConcat!1852 (t!378652 (t!378652 lt!2364157)))))))

(declare-fun b!6349572 () Bool)

(declare-fun e!3856267 () Bool)

(assert (=> b!6349572 (= e!3856267 (isEmpty!37030 (t!378652 (t!378652 lt!2364157))))))

(declare-fun b!6349573 () Bool)

(assert (=> b!6349573 (= e!3856266 (isConcat!1180 lt!2364381))))

(declare-fun b!6349574 () Bool)

(declare-fun e!3856268 () Bool)

(assert (=> b!6349574 (= e!3856268 e!3856266)))

(declare-fun c!1155101 () Bool)

(assert (=> b!6349574 (= c!1155101 (isEmpty!37030 (tail!12087 (t!378652 lt!2364157))))))

(declare-fun e!3856265 () Bool)

(assert (=> d!1992339 e!3856265))

(declare-fun res!2612723 () Bool)

(assert (=> d!1992339 (=> (not res!2612723) (not e!3856265))))

(assert (=> d!1992339 (= res!2612723 (validRegex!7991 lt!2364381))))

(declare-fun e!3856269 () Regex!16255)

(assert (=> d!1992339 (= lt!2364381 e!3856269)))

(declare-fun c!1155100 () Bool)

(assert (=> d!1992339 (= c!1155100 e!3856267)))

(declare-fun res!2612724 () Bool)

(assert (=> d!1992339 (=> (not res!2612724) (not e!3856267))))

(assert (=> d!1992339 (= res!2612724 ((_ is Cons!64940) (t!378652 lt!2364157)))))

(assert (=> d!1992339 (forall!15421 (t!378652 lt!2364157) lambda!349220)))

(assert (=> d!1992339 (= (generalisedConcat!1852 (t!378652 lt!2364157)) lt!2364381)))

(declare-fun b!6349575 () Bool)

(assert (=> b!6349575 (= e!3856264 EmptyExpr!16255)))

(declare-fun b!6349576 () Bool)

(assert (=> b!6349576 (= e!3856269 (h!71388 (t!378652 lt!2364157)))))

(declare-fun b!6349577 () Bool)

(assert (=> b!6349577 (= e!3856269 e!3856264)))

(declare-fun c!1155099 () Bool)

(assert (=> b!6349577 (= c!1155099 ((_ is Cons!64940) (t!378652 lt!2364157)))))

(declare-fun b!6349578 () Bool)

(assert (=> b!6349578 (= e!3856265 e!3856268)))

(declare-fun c!1155098 () Bool)

(assert (=> b!6349578 (= c!1155098 (isEmpty!37030 (t!378652 lt!2364157)))))

(declare-fun b!6349579 () Bool)

(assert (=> b!6349579 (= e!3856268 (isEmptyExpr!1657 lt!2364381))))

(assert (= (and d!1992339 res!2612724) b!6349572))

(assert (= (and d!1992339 c!1155100) b!6349576))

(assert (= (and d!1992339 (not c!1155100)) b!6349577))

(assert (= (and b!6349577 c!1155099) b!6349571))

(assert (= (and b!6349577 (not c!1155099)) b!6349575))

(assert (= (and d!1992339 res!2612723) b!6349578))

(assert (= (and b!6349578 c!1155098) b!6349579))

(assert (= (and b!6349578 (not c!1155098)) b!6349574))

(assert (= (and b!6349574 c!1155101) b!6349570))

(assert (= (and b!6349574 (not c!1155101)) b!6349573))

(declare-fun m!7156726 () Bool)

(assert (=> b!6349571 m!7156726))

(declare-fun m!7156728 () Bool)

(assert (=> b!6349573 m!7156728))

(declare-fun m!7156730 () Bool)

(assert (=> b!6349570 m!7156730))

(declare-fun m!7156732 () Bool)

(assert (=> d!1992339 m!7156732))

(declare-fun m!7156736 () Bool)

(assert (=> d!1992339 m!7156736))

(assert (=> b!6349578 m!7156086))

(declare-fun m!7156740 () Bool)

(assert (=> b!6349579 m!7156740))

(declare-fun m!7156742 () Bool)

(assert (=> b!6349572 m!7156742))

(declare-fun m!7156744 () Bool)

(assert (=> b!6349574 m!7156744))

(assert (=> b!6349574 m!7156744))

(declare-fun m!7156746 () Bool)

(assert (=> b!6349574 m!7156746))

(assert (=> b!6348900 d!1992339))

(declare-fun d!1992347 () Bool)

(assert (=> d!1992347 (= (isEmpty!37033 (tail!12088 s!2326)) ((_ is Nil!64941) (tail!12088 s!2326)))))

(assert (=> b!6348697 d!1992347))

(declare-fun d!1992351 () Bool)

(assert (=> d!1992351 (= (tail!12088 s!2326) (t!378653 s!2326))))

(assert (=> b!6348697 d!1992351))

(declare-fun d!1992353 () Bool)

(assert (=> d!1992353 (= (isEmptyLang!1664 lt!2364325) ((_ is EmptyLang!16255) lt!2364325))))

(assert (=> b!6348931 d!1992353))

(declare-fun d!1992355 () Bool)

(assert (=> d!1992355 (= (Exists!3325 (ite c!1154885 lambda!349164 lambda!349165)) (choose!47113 (ite c!1154885 lambda!349164 lambda!349165)))))

(declare-fun bs!1589811 () Bool)

(assert (= bs!1589811 d!1992355))

(declare-fun m!7156756 () Bool)

(assert (=> bs!1589811 m!7156756))

(assert (=> bm!541238 d!1992355))

(declare-fun d!1992361 () Bool)

(assert (=> d!1992361 (= (isEmpty!37030 (tail!12087 (t!378652 (exprs!6139 (h!71390 zl!343))))) ((_ is Nil!64940) (tail!12087 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(assert (=> b!6348824 d!1992361))

(declare-fun d!1992367 () Bool)

(assert (=> d!1992367 (= (tail!12087 (t!378652 (exprs!6139 (h!71390 zl!343)))) (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348824 d!1992367))

(declare-fun d!1992371 () Bool)

(declare-fun res!2612737 () Bool)

(declare-fun e!3856290 () Bool)

(assert (=> d!1992371 (=> res!2612737 e!3856290)))

(assert (=> d!1992371 (= res!2612737 ((_ is Nil!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> d!1992371 (= (forall!15421 (exprs!6139 (h!71390 zl!343)) lambda!349111) e!3856290)))

(declare-fun b!6349608 () Bool)

(declare-fun e!3856291 () Bool)

(assert (=> b!6349608 (= e!3856290 e!3856291)))

(declare-fun res!2612738 () Bool)

(assert (=> b!6349608 (=> (not res!2612738) (not e!3856291))))

(declare-fun dynLambda!25748 (Int Regex!16255) Bool)

(assert (=> b!6349608 (= res!2612738 (dynLambda!25748 lambda!349111 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6349609 () Bool)

(assert (=> b!6349609 (= e!3856291 (forall!15421 (t!378652 (exprs!6139 (h!71390 zl!343))) lambda!349111))))

(assert (= (and d!1992371 (not res!2612737)) b!6349608))

(assert (= (and b!6349608 res!2612738) b!6349609))

(declare-fun b_lambda!241513 () Bool)

(assert (=> (not b_lambda!241513) (not b!6349608)))

(declare-fun m!7156766 () Bool)

(assert (=> b!6349608 m!7156766))

(declare-fun m!7156768 () Bool)

(assert (=> b!6349609 m!7156768))

(assert (=> d!1991903 d!1992371))

(declare-fun bs!1589812 () Bool)

(declare-fun d!1992375 () Bool)

(assert (= bs!1589812 (and d!1992375 b!6348951)))

(declare-fun lambda!349224 () Int)

(assert (=> bs!1589812 (not (= lambda!349224 lambda!349183))))

(declare-fun bs!1589813 () Bool)

(assert (= bs!1589813 (and d!1992375 b!6348953)))

(assert (=> bs!1589813 (not (= lambda!349224 lambda!349184))))

(declare-fun bs!1589814 () Bool)

(assert (= bs!1589814 (and d!1992375 b!6348956)))

(assert (=> bs!1589814 (not (= lambda!349224 lambda!349186))))

(declare-fun bs!1589815 () Bool)

(assert (= bs!1589815 (and d!1992375 b!6348958)))

(assert (=> bs!1589815 (not (= lambda!349224 lambda!349187))))

(declare-fun exists!2569 ((InoxSet Context!11278) Int) Bool)

(assert (=> d!1992375 (= (nullableZipper!2021 lt!2364162) (exists!2569 lt!2364162 lambda!349224))))

(declare-fun bs!1589816 () Bool)

(assert (= bs!1589816 d!1992375))

(declare-fun m!7156770 () Bool)

(assert (=> bs!1589816 m!7156770))

(assert (=> b!6348495 d!1992375))

(declare-fun bs!1589851 () Bool)

(declare-fun b!6349630 () Bool)

(assert (= bs!1589851 (and b!6349630 d!1992057)))

(declare-fun lambda!349237 () Int)

(assert (=> bs!1589851 (not (= lambda!349237 lambda!349172))))

(declare-fun bs!1589852 () Bool)

(assert (= bs!1589852 (and b!6349630 d!1992043)))

(assert (=> bs!1589852 (not (= lambda!349237 lambda!349166))))

(declare-fun bs!1589853 () Bool)

(assert (= bs!1589853 (and b!6349630 d!1992027)))

(assert (=> bs!1589853 (not (= lambda!349237 lambda!349163))))

(declare-fun bs!1589854 () Bool)

(assert (= bs!1589854 (and b!6349630 d!1991903)))

(assert (=> bs!1589854 (not (= lambda!349237 lambda!349111))))

(declare-fun bs!1589856 () Bool)

(assert (= bs!1589856 (and b!6349630 d!1992339)))

(assert (=> bs!1589856 (not (= lambda!349237 lambda!349220))))

(declare-fun bs!1589858 () Bool)

(assert (= bs!1589858 (and b!6349630 d!1992049)))

(assert (=> bs!1589858 (not (= lambda!349237 lambda!349169))))

(declare-fun bs!1589860 () Bool)

(assert (= bs!1589860 (and b!6349630 d!1991913)))

(assert (=> bs!1589860 (not (= lambda!349237 lambda!349122))))

(declare-fun bs!1589862 () Bool)

(assert (= bs!1589862 (and b!6349630 d!1991959)))

(assert (=> bs!1589862 (not (= lambda!349237 lambda!349128))))

(declare-fun bs!1589864 () Bool)

(assert (= bs!1589864 (and b!6349630 d!1992059)))

(assert (=> bs!1589864 (not (= lambda!349237 lambda!349175))))

(assert (=> b!6349630 true))

(declare-fun bs!1589869 () Bool)

(declare-fun b!6349632 () Bool)

(assert (= bs!1589869 (and b!6349632 d!1992043)))

(declare-fun lambda!349239 () Int)

(assert (=> bs!1589869 (not (= lambda!349239 lambda!349166))))

(declare-fun bs!1589871 () Bool)

(assert (= bs!1589871 (and b!6349632 d!1992027)))

(assert (=> bs!1589871 (not (= lambda!349239 lambda!349163))))

(declare-fun bs!1589872 () Bool)

(assert (= bs!1589872 (and b!6349632 d!1991903)))

(assert (=> bs!1589872 (not (= lambda!349239 lambda!349111))))

(declare-fun bs!1589873 () Bool)

(assert (= bs!1589873 (and b!6349632 d!1992339)))

(assert (=> bs!1589873 (not (= lambda!349239 lambda!349220))))

(declare-fun bs!1589874 () Bool)

(assert (= bs!1589874 (and b!6349632 d!1992049)))

(assert (=> bs!1589874 (not (= lambda!349239 lambda!349169))))

(declare-fun bs!1589875 () Bool)

(assert (= bs!1589875 (and b!6349632 d!1991913)))

(assert (=> bs!1589875 (not (= lambda!349239 lambda!349122))))

(declare-fun bs!1589876 () Bool)

(assert (= bs!1589876 (and b!6349632 d!1992057)))

(assert (=> bs!1589876 (not (= lambda!349239 lambda!349172))))

(declare-fun bs!1589877 () Bool)

(assert (= bs!1589877 (and b!6349632 b!6349630)))

(declare-fun lt!2364407 () Int)

(declare-fun lt!2364409 () Int)

(assert (=> bs!1589877 (= (= lt!2364407 lt!2364409) (= lambda!349239 lambda!349237))))

(declare-fun bs!1589878 () Bool)

(assert (= bs!1589878 (and b!6349632 d!1991959)))

(assert (=> bs!1589878 (not (= lambda!349239 lambda!349128))))

(declare-fun bs!1589879 () Bool)

(assert (= bs!1589879 (and b!6349632 d!1992059)))

(assert (=> bs!1589879 (not (= lambda!349239 lambda!349175))))

(assert (=> b!6349632 true))

(declare-fun d!1992377 () Bool)

(declare-fun e!3856305 () Bool)

(assert (=> d!1992377 e!3856305))

(declare-fun res!2612745 () Bool)

(assert (=> d!1992377 (=> (not res!2612745) (not e!3856305))))

(assert (=> d!1992377 (= res!2612745 (>= lt!2364407 0))))

(declare-fun e!3856304 () Int)

(assert (=> d!1992377 (= lt!2364407 e!3856304)))

(declare-fun c!1155120 () Bool)

(assert (=> d!1992377 (= c!1155120 ((_ is Cons!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> d!1992377 (= (contextDepth!251 (h!71390 zl!343)) lt!2364407)))

(assert (=> b!6349630 (= e!3856304 lt!2364409)))

(declare-fun regexDepth!325 (Regex!16255) Int)

(assert (=> b!6349630 (= lt!2364409 (maxBigInt!0 (regexDepth!325 (h!71388 (exprs!6139 (h!71390 zl!343)))) (contextDepth!251 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun lt!2364406 () Unit!158351)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!115 (List!65064 Int Int) Unit!158351)

(assert (=> b!6349630 (= lt!2364406 (lemmaForallRegexDepthBiggerThanTransitive!115 (t!378652 (exprs!6139 (h!71390 zl!343))) lt!2364409 (contextDepth!251 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(assert (=> b!6349630 (forall!15421 (t!378652 (exprs!6139 (h!71390 zl!343))) lambda!349237)))

(declare-fun lt!2364408 () Unit!158351)

(assert (=> b!6349630 (= lt!2364408 lt!2364406)))

(declare-fun b!6349631 () Bool)

(assert (=> b!6349631 (= e!3856304 0)))

(assert (=> b!6349632 (= e!3856305 (forall!15421 (exprs!6139 (h!71390 zl!343)) lambda!349239))))

(assert (= (and d!1992377 c!1155120) b!6349630))

(assert (= (and d!1992377 (not c!1155120)) b!6349631))

(assert (= (and d!1992377 res!2612745) b!6349632))

(declare-fun m!7156796 () Bool)

(assert (=> b!6349630 m!7156796))

(declare-fun m!7156798 () Bool)

(assert (=> b!6349630 m!7156798))

(declare-fun m!7156800 () Bool)

(assert (=> b!6349630 m!7156800))

(assert (=> b!6349630 m!7156798))

(declare-fun m!7156802 () Bool)

(assert (=> b!6349630 m!7156802))

(assert (=> b!6349630 m!7156796))

(assert (=> b!6349630 m!7156798))

(declare-fun m!7156804 () Bool)

(assert (=> b!6349630 m!7156804))

(declare-fun m!7156806 () Bool)

(assert (=> b!6349632 m!7156806))

(assert (=> b!6348956 d!1992377))

(declare-fun bs!1589891 () Bool)

(declare-fun d!1992383 () Bool)

(assert (= bs!1589891 (and d!1992383 b!6348958)))

(declare-fun lambda!349245 () Int)

(assert (=> bs!1589891 (not (= lambda!349245 lambda!349187))))

(declare-fun bs!1589892 () Bool)

(assert (= bs!1589892 (and d!1992383 b!6348953)))

(assert (=> bs!1589892 (not (= lambda!349245 lambda!349184))))

(declare-fun bs!1589893 () Bool)

(assert (= bs!1589893 (and d!1992383 d!1992375)))

(assert (=> bs!1589893 (not (= lambda!349245 lambda!349224))))

(declare-fun bs!1589895 () Bool)

(assert (= bs!1589895 (and d!1992383 b!6348956)))

(assert (=> bs!1589895 (not (= lambda!349245 lambda!349186))))

(declare-fun bs!1589896 () Bool)

(assert (= bs!1589896 (and d!1992383 b!6348951)))

(assert (=> bs!1589896 (not (= lambda!349245 lambda!349183))))

(assert (=> d!1992383 true))

(assert (=> d!1992383 true))

(declare-fun order!27523 () Int)

(declare-fun order!27521 () Int)

(declare-fun dynLambda!25749 (Int Int) Int)

(declare-fun dynLambda!25750 (Int Int) Int)

(assert (=> d!1992383 (< (dynLambda!25749 order!27521 lambda!349185) (dynLambda!25750 order!27523 lambda!349245))))

(assert (=> d!1992383 (forall!15423 (t!378654 zl!343) lambda!349245)))

(declare-fun lt!2364415 () Unit!158351)

(declare-fun choose!47119 (List!65066 Int Int Int) Unit!158351)

(assert (=> d!1992383 (= lt!2364415 (choose!47119 (t!378654 zl!343) lt!2364344 (zipperDepth!362 (t!378654 zl!343)) lambda!349185))))

(assert (=> d!1992383 (>= lt!2364344 (zipperDepth!362 (t!378654 zl!343)))))

(assert (=> d!1992383 (= (lemmaForallContextDepthBiggerThanTransitive!235 (t!378654 zl!343) lt!2364344 (zipperDepth!362 (t!378654 zl!343)) lambda!349185) lt!2364415)))

(declare-fun bs!1589897 () Bool)

(assert (= bs!1589897 d!1992383))

(declare-fun m!7156812 () Bool)

(assert (=> bs!1589897 m!7156812))

(assert (=> bs!1589897 m!7156134))

(declare-fun m!7156814 () Bool)

(assert (=> bs!1589897 m!7156814))

(assert (=> b!6348956 d!1992383))

(declare-fun bs!1589898 () Bool)

(declare-fun b!6349642 () Bool)

(assert (= bs!1589898 (and b!6349642 b!6348951)))

(declare-fun lambda!349246 () Int)

(assert (=> bs!1589898 (= lambda!349246 lambda!349182)))

(declare-fun bs!1589899 () Bool)

(assert (= bs!1589899 (and b!6349642 b!6348956)))

(assert (=> bs!1589899 (= lambda!349246 lambda!349185)))

(declare-fun bs!1589900 () Bool)

(assert (= bs!1589900 (and b!6349642 b!6348958)))

(declare-fun lt!2364419 () Int)

(declare-fun lambda!349247 () Int)

(assert (=> bs!1589900 (= (= lt!2364419 lt!2364341) (= lambda!349247 lambda!349187))))

(declare-fun bs!1589901 () Bool)

(assert (= bs!1589901 (and b!6349642 d!1992383)))

(assert (=> bs!1589901 (not (= lambda!349247 lambda!349245))))

(declare-fun bs!1589902 () Bool)

(assert (= bs!1589902 (and b!6349642 b!6348953)))

(assert (=> bs!1589902 (= (= lt!2364419 lt!2364337) (= lambda!349247 lambda!349184))))

(declare-fun bs!1589903 () Bool)

(assert (= bs!1589903 (and b!6349642 d!1992375)))

(assert (=> bs!1589903 (not (= lambda!349247 lambda!349224))))

(assert (=> bs!1589899 (= (= lt!2364419 lt!2364344) (= lambda!349247 lambda!349186))))

(assert (=> bs!1589898 (= (= lt!2364419 lt!2364340) (= lambda!349247 lambda!349183))))

(assert (=> b!6349642 true))

(declare-fun bs!1589905 () Bool)

(declare-fun b!6349644 () Bool)

(assert (= bs!1589905 (and b!6349644 b!6348958)))

(declare-fun lambda!349249 () Int)

(declare-fun lt!2364416 () Int)

(assert (=> bs!1589905 (= (= lt!2364416 lt!2364341) (= lambda!349249 lambda!349187))))

(declare-fun bs!1589907 () Bool)

(assert (= bs!1589907 (and b!6349644 d!1992383)))

(assert (=> bs!1589907 (not (= lambda!349249 lambda!349245))))

(declare-fun bs!1589909 () Bool)

(assert (= bs!1589909 (and b!6349644 b!6348953)))

(assert (=> bs!1589909 (= (= lt!2364416 lt!2364337) (= lambda!349249 lambda!349184))))

(declare-fun bs!1589911 () Bool)

(assert (= bs!1589911 (and b!6349644 d!1992375)))

(assert (=> bs!1589911 (not (= lambda!349249 lambda!349224))))

(declare-fun bs!1589913 () Bool)

(assert (= bs!1589913 (and b!6349644 b!6348956)))

(assert (=> bs!1589913 (= (= lt!2364416 lt!2364344) (= lambda!349249 lambda!349186))))

(declare-fun bs!1589915 () Bool)

(assert (= bs!1589915 (and b!6349644 b!6349642)))

(assert (=> bs!1589915 (= (= lt!2364416 lt!2364419) (= lambda!349249 lambda!349247))))

(declare-fun bs!1589917 () Bool)

(assert (= bs!1589917 (and b!6349644 b!6348951)))

(assert (=> bs!1589917 (= (= lt!2364416 lt!2364340) (= lambda!349249 lambda!349183))))

(assert (=> b!6349644 true))

(declare-fun d!1992387 () Bool)

(declare-fun e!3856306 () Bool)

(assert (=> d!1992387 e!3856306))

(declare-fun res!2612746 () Bool)

(assert (=> d!1992387 (=> (not res!2612746) (not e!3856306))))

(assert (=> d!1992387 (= res!2612746 (>= lt!2364416 0))))

(declare-fun e!3856307 () Int)

(assert (=> d!1992387 (= lt!2364416 e!3856307)))

(declare-fun c!1155125 () Bool)

(assert (=> d!1992387 (= c!1155125 ((_ is Cons!64942) (t!378654 zl!343)))))

(assert (=> d!1992387 (= (zipperDepth!362 (t!378654 zl!343)) lt!2364416)))

(assert (=> b!6349642 (= e!3856307 lt!2364419)))

(assert (=> b!6349642 (= lt!2364419 (maxBigInt!0 (contextDepth!251 (h!71390 (t!378654 zl!343))) (zipperDepth!362 (t!378654 (t!378654 zl!343)))))))

(declare-fun lt!2364417 () Unit!158351)

(assert (=> b!6349642 (= lt!2364417 (lemmaForallContextDepthBiggerThanTransitive!235 (t!378654 (t!378654 zl!343)) lt!2364419 (zipperDepth!362 (t!378654 (t!378654 zl!343))) lambda!349246))))

(assert (=> b!6349642 (forall!15423 (t!378654 (t!378654 zl!343)) lambda!349247)))

(declare-fun lt!2364418 () Unit!158351)

(assert (=> b!6349642 (= lt!2364418 lt!2364417)))

(declare-fun b!6349643 () Bool)

(assert (=> b!6349643 (= e!3856307 0)))

(assert (=> b!6349644 (= e!3856306 (forall!15423 (t!378654 zl!343) lambda!349249))))

(assert (= (and d!1992387 c!1155125) b!6349642))

(assert (= (and d!1992387 (not c!1155125)) b!6349643))

(assert (= (and d!1992387 res!2612746) b!6349644))

(declare-fun m!7156820 () Bool)

(assert (=> b!6349642 m!7156820))

(declare-fun m!7156822 () Bool)

(assert (=> b!6349642 m!7156822))

(declare-fun m!7156824 () Bool)

(assert (=> b!6349642 m!7156824))

(assert (=> b!6349642 m!7156820))

(declare-fun m!7156826 () Bool)

(assert (=> b!6349642 m!7156826))

(assert (=> b!6349642 m!7156820))

(declare-fun m!7156828 () Bool)

(assert (=> b!6349642 m!7156828))

(assert (=> b!6349642 m!7156824))

(declare-fun m!7156830 () Bool)

(assert (=> b!6349644 m!7156830))

(assert (=> b!6348956 d!1992387))

(declare-fun d!1992393 () Bool)

(assert (=> d!1992393 (= (maxBigInt!0 (contextDepth!251 (h!71390 zl!343)) (zipperDepth!362 (t!378654 zl!343))) (ite (>= (contextDepth!251 (h!71390 zl!343)) (zipperDepth!362 (t!378654 zl!343))) (contextDepth!251 (h!71390 zl!343)) (zipperDepth!362 (t!378654 zl!343))))))

(assert (=> b!6348956 d!1992393))

(declare-fun d!1992395 () Bool)

(declare-fun res!2612754 () Bool)

(declare-fun e!3856316 () Bool)

(assert (=> d!1992395 (=> res!2612754 e!3856316)))

(assert (=> d!1992395 (= res!2612754 ((_ is Nil!64942) (t!378654 zl!343)))))

(assert (=> d!1992395 (= (forall!15423 (t!378654 zl!343) lambda!349186) e!3856316)))

(declare-fun b!6349655 () Bool)

(declare-fun e!3856317 () Bool)

(assert (=> b!6349655 (= e!3856316 e!3856317)))

(declare-fun res!2612755 () Bool)

(assert (=> b!6349655 (=> (not res!2612755) (not e!3856317))))

(declare-fun dynLambda!25751 (Int Context!11278) Bool)

(assert (=> b!6349655 (= res!2612755 (dynLambda!25751 lambda!349186 (h!71390 (t!378654 zl!343))))))

(declare-fun b!6349656 () Bool)

(assert (=> b!6349656 (= e!3856317 (forall!15423 (t!378654 (t!378654 zl!343)) lambda!349186))))

(assert (= (and d!1992395 (not res!2612754)) b!6349655))

(assert (= (and b!6349655 res!2612755) b!6349656))

(declare-fun b_lambda!241517 () Bool)

(assert (=> (not b_lambda!241517) (not b!6349655)))

(declare-fun m!7156844 () Bool)

(assert (=> b!6349655 m!7156844))

(declare-fun m!7156846 () Bool)

(assert (=> b!6349656 m!7156846))

(assert (=> b!6348956 d!1992395))

(declare-fun d!1992401 () Bool)

(assert (=> d!1992401 (= (nullable!6248 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))) (nullableFct!2195 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun bs!1589952 () Bool)

(assert (= bs!1589952 d!1992401))

(declare-fun m!7156848 () Bool)

(assert (=> bs!1589952 m!7156848))

(assert (=> b!6348761 d!1992401))

(assert (=> b!6348853 d!1992347))

(assert (=> b!6348853 d!1992351))

(declare-fun d!1992403 () Bool)

(assert (=> d!1992403 true))

(declare-fun setRes!43236 () Bool)

(assert (=> d!1992403 setRes!43236))

(declare-fun condSetEmpty!43236 () Bool)

(declare-fun res!2612761 () (InoxSet Context!11278))

(assert (=> d!1992403 (= condSetEmpty!43236 (= res!2612761 ((as const (Array Context!11278 Bool)) false)))))

(assert (=> d!1992403 (= (choose!47110 lt!2364158 lambda!349079) res!2612761)))

(declare-fun setIsEmpty!43236 () Bool)

(assert (=> setIsEmpty!43236 setRes!43236))

(declare-fun setElem!43236 () Context!11278)

(declare-fun setNonEmpty!43236 () Bool)

(declare-fun tp!1769635 () Bool)

(declare-fun e!3856324 () Bool)

(assert (=> setNonEmpty!43236 (= setRes!43236 (and tp!1769635 (inv!83884 setElem!43236) e!3856324))))

(declare-fun setRest!43236 () (InoxSet Context!11278))

(assert (=> setNonEmpty!43236 (= res!2612761 ((_ map or) (store ((as const (Array Context!11278 Bool)) false) setElem!43236 true) setRest!43236))))

(declare-fun b!6349664 () Bool)

(declare-fun tp!1769636 () Bool)

(assert (=> b!6349664 (= e!3856324 tp!1769636)))

(assert (= (and d!1992403 condSetEmpty!43236) setIsEmpty!43236))

(assert (= (and d!1992403 (not condSetEmpty!43236)) setNonEmpty!43236))

(assert (= setNonEmpty!43236 b!6349664))

(declare-fun m!7156858 () Bool)

(assert (=> setNonEmpty!43236 m!7156858))

(assert (=> d!1991985 d!1992403))

(declare-fun b!6349665 () Bool)

(declare-fun e!3856325 () Bool)

(declare-fun lt!2364429 () Bool)

(declare-fun call!541394 () Bool)

(assert (=> b!6349665 (= e!3856325 (= lt!2364429 call!541394))))

(declare-fun b!6349666 () Bool)

(declare-fun e!3856330 () Bool)

(assert (=> b!6349666 (= e!3856330 (= (head!13003 s!2326) (c!1154628 (regTwo!33022 r!7292))))))

(declare-fun b!6349667 () Bool)

(declare-fun e!3856329 () Bool)

(assert (=> b!6349667 (= e!3856329 (matchR!8438 (derivativeStep!4960 (regTwo!33022 r!7292) (head!13003 s!2326)) (tail!12088 s!2326)))))

(declare-fun b!6349668 () Bool)

(declare-fun res!2612766 () Bool)

(declare-fun e!3856328 () Bool)

(assert (=> b!6349668 (=> res!2612766 e!3856328)))

(assert (=> b!6349668 (= res!2612766 (not (isEmpty!37033 (tail!12088 s!2326))))))

(declare-fun b!6349669 () Bool)

(declare-fun e!3856327 () Bool)

(assert (=> b!6349669 (= e!3856327 e!3856328)))

(declare-fun res!2612763 () Bool)

(assert (=> b!6349669 (=> res!2612763 e!3856328)))

(assert (=> b!6349669 (= res!2612763 call!541394)))

(declare-fun b!6349670 () Bool)

(declare-fun e!3856331 () Bool)

(assert (=> b!6349670 (= e!3856331 (not lt!2364429))))

(declare-fun b!6349671 () Bool)

(assert (=> b!6349671 (= e!3856329 (nullable!6248 (regTwo!33022 r!7292)))))

(declare-fun d!1992409 () Bool)

(assert (=> d!1992409 e!3856325))

(declare-fun c!1155130 () Bool)

(assert (=> d!1992409 (= c!1155130 ((_ is EmptyExpr!16255) (regTwo!33022 r!7292)))))

(assert (=> d!1992409 (= lt!2364429 e!3856329)))

(declare-fun c!1155128 () Bool)

(assert (=> d!1992409 (= c!1155128 (isEmpty!37033 s!2326))))

(assert (=> d!1992409 (validRegex!7991 (regTwo!33022 r!7292))))

(assert (=> d!1992409 (= (matchR!8438 (regTwo!33022 r!7292) s!2326) lt!2364429)))

(declare-fun b!6349672 () Bool)

(declare-fun res!2612765 () Bool)

(declare-fun e!3856326 () Bool)

(assert (=> b!6349672 (=> res!2612765 e!3856326)))

(assert (=> b!6349672 (= res!2612765 (not ((_ is ElementMatch!16255) (regTwo!33022 r!7292))))))

(assert (=> b!6349672 (= e!3856331 e!3856326)))

(declare-fun b!6349673 () Bool)

(declare-fun res!2612769 () Bool)

(assert (=> b!6349673 (=> (not res!2612769) (not e!3856330))))

(assert (=> b!6349673 (= res!2612769 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6349674 () Bool)

(assert (=> b!6349674 (= e!3856325 e!3856331)))

(declare-fun c!1155129 () Bool)

(assert (=> b!6349674 (= c!1155129 ((_ is EmptyLang!16255) (regTwo!33022 r!7292)))))

(declare-fun b!6349675 () Bool)

(assert (=> b!6349675 (= e!3856326 e!3856327)))

(declare-fun res!2612767 () Bool)

(assert (=> b!6349675 (=> (not res!2612767) (not e!3856327))))

(assert (=> b!6349675 (= res!2612767 (not lt!2364429))))

(declare-fun b!6349676 () Bool)

(assert (=> b!6349676 (= e!3856328 (not (= (head!13003 s!2326) (c!1154628 (regTwo!33022 r!7292)))))))

(declare-fun bm!541389 () Bool)

(assert (=> bm!541389 (= call!541394 (isEmpty!37033 s!2326))))

(declare-fun b!6349677 () Bool)

(declare-fun res!2612764 () Bool)

(assert (=> b!6349677 (=> (not res!2612764) (not e!3856330))))

(assert (=> b!6349677 (= res!2612764 (not call!541394))))

(declare-fun b!6349678 () Bool)

(declare-fun res!2612762 () Bool)

(assert (=> b!6349678 (=> res!2612762 e!3856326)))

(assert (=> b!6349678 (= res!2612762 e!3856330)))

(declare-fun res!2612768 () Bool)

(assert (=> b!6349678 (=> (not res!2612768) (not e!3856330))))

(assert (=> b!6349678 (= res!2612768 lt!2364429)))

(assert (= (and d!1992409 c!1155128) b!6349671))

(assert (= (and d!1992409 (not c!1155128)) b!6349667))

(assert (= (and d!1992409 c!1155130) b!6349665))

(assert (= (and d!1992409 (not c!1155130)) b!6349674))

(assert (= (and b!6349674 c!1155129) b!6349670))

(assert (= (and b!6349674 (not c!1155129)) b!6349672))

(assert (= (and b!6349672 (not res!2612765)) b!6349678))

(assert (= (and b!6349678 res!2612768) b!6349677))

(assert (= (and b!6349677 res!2612764) b!6349673))

(assert (= (and b!6349673 res!2612769) b!6349666))

(assert (= (and b!6349678 (not res!2612762)) b!6349675))

(assert (= (and b!6349675 res!2612767) b!6349669))

(assert (= (and b!6349669 (not res!2612763)) b!6349668))

(assert (= (and b!6349668 (not res!2612766)) b!6349676))

(assert (= (or b!6349665 b!6349669 b!6349677) bm!541389))

(declare-fun m!7156860 () Bool)

(assert (=> b!6349671 m!7156860))

(assert (=> d!1992409 m!7155846))

(declare-fun m!7156862 () Bool)

(assert (=> d!1992409 m!7156862))

(assert (=> b!6349666 m!7155854))

(assert (=> b!6349673 m!7155856))

(assert (=> b!6349673 m!7155856))

(assert (=> b!6349673 m!7155858))

(assert (=> bm!541389 m!7155846))

(assert (=> b!6349667 m!7155854))

(assert (=> b!6349667 m!7155854))

(declare-fun m!7156864 () Bool)

(assert (=> b!6349667 m!7156864))

(assert (=> b!6349667 m!7155856))

(assert (=> b!6349667 m!7156864))

(assert (=> b!6349667 m!7155856))

(declare-fun m!7156866 () Bool)

(assert (=> b!6349667 m!7156866))

(assert (=> b!6349668 m!7155856))

(assert (=> b!6349668 m!7155856))

(assert (=> b!6349668 m!7155858))

(assert (=> b!6349676 m!7155854))

(assert (=> b!6348796 d!1992409))

(declare-fun d!1992411 () Bool)

(assert (=> d!1992411 (= (head!13002 (t!378652 (exprs!6139 (h!71390 zl!343)))) (h!71388 (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348820 d!1992411))

(declare-fun d!1992417 () Bool)

(assert (=> d!1992417 (= (isEmpty!37033 s!2326) ((_ is Nil!64941) s!2326))))

(assert (=> bm!541202 d!1992417))

(declare-fun bs!1589981 () Bool)

(declare-fun b!6349681 () Bool)

(assert (= bs!1589981 (and b!6349681 d!1992047)))

(declare-fun lambda!349255 () Int)

(assert (=> bs!1589981 (not (= lambda!349255 lambda!349168))))

(declare-fun bs!1589982 () Bool)

(assert (= bs!1589982 (and b!6349681 d!1992015)))

(assert (=> bs!1589982 (not (= lambda!349255 lambda!349153))))

(declare-fun bs!1589983 () Bool)

(assert (= bs!1589983 (and b!6349681 b!6348025)))

(assert (=> bs!1589983 (not (= lambda!349255 lambda!349081))))

(assert (=> bs!1589983 (not (= lambda!349255 lambda!349080))))

(declare-fun bs!1589984 () Bool)

(assert (= bs!1589984 (and b!6349681 b!6348869)))

(assert (=> bs!1589984 (not (= lambda!349255 lambda!349165))))

(declare-fun bs!1589985 () Bool)

(assert (= bs!1589985 (and b!6349681 b!6348005)))

(assert (=> bs!1589985 (not (= lambda!349255 lambda!349078))))

(declare-fun bs!1589986 () Bool)

(assert (= bs!1589986 (and b!6349681 d!1992017)))

(assert (=> bs!1589986 (not (= lambda!349255 lambda!349159))))

(assert (=> bs!1589986 (not (= lambda!349255 lambda!349158))))

(assert (=> bs!1589981 (not (= lambda!349255 lambda!349167))))

(assert (=> bs!1589985 (not (= lambda!349255 lambda!349077))))

(declare-fun bs!1589987 () Bool)

(assert (= bs!1589987 (and b!6349681 b!6348814)))

(assert (=> bs!1589987 (not (= lambda!349255 lambda!349162))))

(declare-fun bs!1589988 () Bool)

(assert (= bs!1589988 (and b!6349681 b!6348655)))

(assert (=> bs!1589988 (not (= lambda!349255 lambda!349147))))

(declare-fun bs!1589989 () Bool)

(assert (= bs!1589989 (and b!6349681 b!6348652)))

(assert (=> bs!1589989 (= (and (= (reg!16584 (regOne!33023 lt!2364179)) (reg!16584 r!7292)) (= (regOne!33023 lt!2364179) r!7292)) (= lambda!349255 lambda!349146))))

(declare-fun bs!1589990 () Bool)

(assert (= bs!1589990 (and b!6349681 d!1992023)))

(assert (=> bs!1589990 (not (= lambda!349255 lambda!349160))))

(declare-fun bs!1589991 () Bool)

(assert (= bs!1589991 (and b!6349681 b!6348811)))

(assert (=> bs!1589991 (= (and (= (reg!16584 (regOne!33023 lt!2364179)) (reg!16584 lt!2364179)) (= (regOne!33023 lt!2364179) lt!2364179)) (= lambda!349255 lambda!349161))))

(declare-fun bs!1589992 () Bool)

(assert (= bs!1589992 (and b!6349681 b!6348866)))

(assert (=> bs!1589992 (= (and (= (reg!16584 (regOne!33023 lt!2364179)) (reg!16584 lt!2364185)) (= (regOne!33023 lt!2364179) lt!2364185)) (= lambda!349255 lambda!349164))))

(assert (=> b!6349681 true))

(assert (=> b!6349681 true))

(declare-fun bs!1589993 () Bool)

(declare-fun b!6349684 () Bool)

(assert (= bs!1589993 (and b!6349684 d!1992047)))

(declare-fun lambda!349256 () Int)

(assert (=> bs!1589993 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 lt!2364179)) lt!2364185)) (= lambda!349256 lambda!349168))))

(declare-fun bs!1589994 () Bool)

(assert (= bs!1589994 (and b!6349684 d!1992015)))

(assert (=> bs!1589994 (not (= lambda!349256 lambda!349153))))

(declare-fun bs!1589995 () Bool)

(assert (= bs!1589995 (and b!6349684 b!6348025)))

(assert (=> bs!1589995 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 lt!2364179)) lt!2364185)) (= lambda!349256 lambda!349081))))

(assert (=> bs!1589995 (not (= lambda!349256 lambda!349080))))

(declare-fun bs!1589996 () Bool)

(assert (= bs!1589996 (and b!6349684 b!6348869)))

(assert (=> bs!1589996 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 lt!2364185)) (= (regTwo!33022 (regOne!33023 lt!2364179)) (regTwo!33022 lt!2364185))) (= lambda!349256 lambda!349165))))

(declare-fun bs!1589997 () Bool)

(assert (= bs!1589997 (and b!6349684 d!1992017)))

(assert (=> bs!1589997 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349256 lambda!349159))))

(assert (=> bs!1589997 (not (= lambda!349256 lambda!349158))))

(assert (=> bs!1589993 (not (= lambda!349256 lambda!349167))))

(declare-fun bs!1589998 () Bool)

(assert (= bs!1589998 (and b!6349684 b!6348005)))

(assert (=> bs!1589998 (not (= lambda!349256 lambda!349077))))

(declare-fun bs!1589999 () Bool)

(assert (= bs!1589999 (and b!6349684 b!6348814)))

(assert (=> bs!1589999 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 lt!2364179)) (= (regTwo!33022 (regOne!33023 lt!2364179)) (regTwo!33022 lt!2364179))) (= lambda!349256 lambda!349162))))

(declare-fun bs!1590000 () Bool)

(assert (= bs!1590000 (and b!6349684 b!6348655)))

(assert (=> bs!1590000 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349256 lambda!349147))))

(declare-fun bs!1590001 () Bool)

(assert (= bs!1590001 (and b!6349684 b!6348652)))

(assert (=> bs!1590001 (not (= lambda!349256 lambda!349146))))

(declare-fun bs!1590002 () Bool)

(assert (= bs!1590002 (and b!6349684 d!1992023)))

(assert (=> bs!1590002 (not (= lambda!349256 lambda!349160))))

(assert (=> bs!1589998 (= (and (= (regOne!33022 (regOne!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349256 lambda!349078))))

(declare-fun bs!1590003 () Bool)

(assert (= bs!1590003 (and b!6349684 b!6349681)))

(assert (=> bs!1590003 (not (= lambda!349256 lambda!349255))))

(declare-fun bs!1590004 () Bool)

(assert (= bs!1590004 (and b!6349684 b!6348811)))

(assert (=> bs!1590004 (not (= lambda!349256 lambda!349161))))

(declare-fun bs!1590005 () Bool)

(assert (= bs!1590005 (and b!6349684 b!6348866)))

(assert (=> bs!1590005 (not (= lambda!349256 lambda!349164))))

(assert (=> b!6349684 true))

(assert (=> b!6349684 true))

(declare-fun d!1992419 () Bool)

(declare-fun c!1155132 () Bool)

(assert (=> d!1992419 (= c!1155132 ((_ is EmptyExpr!16255) (regOne!33023 lt!2364179)))))

(declare-fun e!3856333 () Bool)

(assert (=> d!1992419 (= (matchRSpec!3356 (regOne!33023 lt!2364179) s!2326) e!3856333)))

(declare-fun b!6349679 () Bool)

(declare-fun e!3856336 () Bool)

(assert (=> b!6349679 (= e!3856336 (matchRSpec!3356 (regTwo!33023 (regOne!33023 lt!2364179)) s!2326))))

(declare-fun b!6349680 () Bool)

(declare-fun c!1155134 () Bool)

(assert (=> b!6349680 (= c!1155134 ((_ is Union!16255) (regOne!33023 lt!2364179)))))

(declare-fun e!3856335 () Bool)

(declare-fun e!3856332 () Bool)

(assert (=> b!6349680 (= e!3856335 e!3856332)))

(declare-fun bm!541390 () Bool)

(declare-fun call!541395 () Bool)

(assert (=> bm!541390 (= call!541395 (isEmpty!37033 s!2326))))

(declare-fun e!3856334 () Bool)

(declare-fun call!541396 () Bool)

(assert (=> b!6349681 (= e!3856334 call!541396)))

(declare-fun b!6349682 () Bool)

(assert (=> b!6349682 (= e!3856335 (= s!2326 (Cons!64941 (c!1154628 (regOne!33023 lt!2364179)) Nil!64941)))))

(declare-fun b!6349683 () Bool)

(declare-fun e!3856337 () Bool)

(assert (=> b!6349683 (= e!3856333 e!3856337)))

(declare-fun res!2612771 () Bool)

(assert (=> b!6349683 (= res!2612771 (not ((_ is EmptyLang!16255) (regOne!33023 lt!2364179))))))

(assert (=> b!6349683 (=> (not res!2612771) (not e!3856337))))

(declare-fun e!3856338 () Bool)

(assert (=> b!6349684 (= e!3856338 call!541396)))

(declare-fun b!6349685 () Bool)

(assert (=> b!6349685 (= e!3856333 call!541395)))

(declare-fun c!1155131 () Bool)

(declare-fun bm!541391 () Bool)

(assert (=> bm!541391 (= call!541396 (Exists!3325 (ite c!1155131 lambda!349255 lambda!349256)))))

(declare-fun b!6349686 () Bool)

(assert (=> b!6349686 (= e!3856332 e!3856336)))

(declare-fun res!2612772 () Bool)

(assert (=> b!6349686 (= res!2612772 (matchRSpec!3356 (regOne!33023 (regOne!33023 lt!2364179)) s!2326))))

(assert (=> b!6349686 (=> res!2612772 e!3856336)))

(declare-fun b!6349687 () Bool)

(declare-fun c!1155133 () Bool)

(assert (=> b!6349687 (= c!1155133 ((_ is ElementMatch!16255) (regOne!33023 lt!2364179)))))

(assert (=> b!6349687 (= e!3856337 e!3856335)))

(declare-fun b!6349688 () Bool)

(declare-fun res!2612773 () Bool)

(assert (=> b!6349688 (=> res!2612773 e!3856334)))

(assert (=> b!6349688 (= res!2612773 call!541395)))

(assert (=> b!6349688 (= e!3856338 e!3856334)))

(declare-fun b!6349689 () Bool)

(assert (=> b!6349689 (= e!3856332 e!3856338)))

(assert (=> b!6349689 (= c!1155131 ((_ is Star!16255) (regOne!33023 lt!2364179)))))

(assert (= (and d!1992419 c!1155132) b!6349685))

(assert (= (and d!1992419 (not c!1155132)) b!6349683))

(assert (= (and b!6349683 res!2612771) b!6349687))

(assert (= (and b!6349687 c!1155133) b!6349682))

(assert (= (and b!6349687 (not c!1155133)) b!6349680))

(assert (= (and b!6349680 c!1155134) b!6349686))

(assert (= (and b!6349680 (not c!1155134)) b!6349689))

(assert (= (and b!6349686 (not res!2612772)) b!6349679))

(assert (= (and b!6349689 c!1155131) b!6349688))

(assert (= (and b!6349689 (not c!1155131)) b!6349684))

(assert (= (and b!6349688 (not res!2612773)) b!6349681))

(assert (= (or b!6349681 b!6349684) bm!541391))

(assert (= (or b!6349685 b!6349688) bm!541390))

(declare-fun m!7156896 () Bool)

(assert (=> b!6349679 m!7156896))

(assert (=> bm!541390 m!7155846))

(declare-fun m!7156898 () Bool)

(assert (=> bm!541391 m!7156898))

(declare-fun m!7156900 () Bool)

(assert (=> b!6349686 m!7156900))

(assert (=> b!6348816 d!1992419))

(declare-fun b!6349716 () Bool)

(declare-fun e!3856356 () (InoxSet Context!11278))

(declare-fun e!3856354 () (InoxSet Context!11278))

(assert (=> b!6349716 (= e!3856356 e!3856354)))

(declare-fun c!1155143 () Bool)

(assert (=> b!6349716 (= c!1155143 ((_ is Concat!25100) (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))))))

(declare-fun b!6349717 () Bool)

(declare-fun e!3856358 () (InoxSet Context!11278))

(declare-fun e!3856355 () (InoxSet Context!11278))

(assert (=> b!6349717 (= e!3856358 e!3856355)))

(declare-fun c!1155144 () Bool)

(assert (=> b!6349717 (= c!1155144 ((_ is Union!16255) (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))))))

(declare-fun b!6349718 () Bool)

(declare-fun c!1155141 () Bool)

(assert (=> b!6349718 (= c!1155141 ((_ is Star!16255) (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))))))

(declare-fun e!3856359 () (InoxSet Context!11278))

(assert (=> b!6349718 (= e!3856354 e!3856359)))

(declare-fun b!6349719 () Bool)

(declare-fun call!541400 () (InoxSet Context!11278))

(declare-fun call!541399 () (InoxSet Context!11278))

(assert (=> b!6349719 (= e!3856356 ((_ map or) call!541400 call!541399))))

(declare-fun d!1992429 () Bool)

(declare-fun c!1155142 () Bool)

(assert (=> d!1992429 (= c!1155142 (and ((_ is ElementMatch!16255) (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (= (c!1154628 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (h!71389 s!2326))))))

(assert (=> d!1992429 (= (derivationStepZipperDown!1503 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292)))))) (ite (or c!1154929 c!1154925) (Context!11279 lt!2364157) (Context!11279 call!541248)) (h!71389 s!2326)) e!3856358)))

(declare-fun call!541398 () List!65064)

(declare-fun bm!541393 () Bool)

(assert (=> bm!541393 (= call!541400 (derivationStepZipperDown!1503 (ite c!1155144 (regOne!33023 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (regOne!33022 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292)))))))) (ite c!1155144 (ite (or c!1154929 c!1154925) (Context!11279 lt!2364157) (Context!11279 call!541248)) (Context!11279 call!541398)) (h!71389 s!2326)))))

(declare-fun e!3856357 () Bool)

(declare-fun b!6349720 () Bool)

(assert (=> b!6349720 (= e!3856357 (nullable!6248 (regOne!33022 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292)))))))))))

(declare-fun b!6349721 () Bool)

(declare-fun call!541402 () (InoxSet Context!11278))

(assert (=> b!6349721 (= e!3856354 call!541402)))

(declare-fun b!6349722 () Bool)

(assert (=> b!6349722 (= e!3856359 call!541402)))

(declare-fun b!6349723 () Bool)

(assert (=> b!6349723 (= e!3856358 (store ((as const (Array Context!11278 Bool)) false) (ite (or c!1154929 c!1154925) (Context!11279 lt!2364157) (Context!11279 call!541248)) true))))

(declare-fun bm!541394 () Bool)

(declare-fun call!541403 () (InoxSet Context!11278))

(assert (=> bm!541394 (= call!541399 call!541403)))

(declare-fun call!541401 () List!65064)

(declare-fun c!1155140 () Bool)

(declare-fun bm!541395 () Bool)

(assert (=> bm!541395 (= call!541403 (derivationStepZipperDown!1503 (ite c!1155144 (regTwo!33023 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (ite c!1155140 (regTwo!33022 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (ite c!1155143 (regOne!33022 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (reg!16584 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292)))))))))) (ite (or c!1155144 c!1155140) (ite (or c!1154929 c!1154925) (Context!11279 lt!2364157) (Context!11279 call!541248)) (Context!11279 call!541401)) (h!71389 s!2326)))))

(declare-fun b!6349724 () Bool)

(assert (=> b!6349724 (= e!3856355 ((_ map or) call!541400 call!541403))))

(declare-fun bm!541396 () Bool)

(assert (=> bm!541396 (= call!541398 ($colon$colon!2116 (exprs!6139 (ite (or c!1154929 c!1154925) (Context!11279 lt!2364157) (Context!11279 call!541248))) (ite (or c!1155140 c!1155143) (regTwo!33022 (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))) (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292)))))))))))

(declare-fun bm!541397 () Bool)

(assert (=> bm!541397 (= call!541401 call!541398)))

(declare-fun b!6349725 () Bool)

(assert (=> b!6349725 (= c!1155140 e!3856357)))

(declare-fun res!2612790 () Bool)

(assert (=> b!6349725 (=> (not res!2612790) (not e!3856357))))

(assert (=> b!6349725 (= res!2612790 ((_ is Concat!25100) (ite c!1154929 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154925 (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (ite c!1154928 (regOne!33022 (regOne!33022 (regOne!33022 r!7292))) (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))))))

(assert (=> b!6349725 (= e!3856355 e!3856356)))

(declare-fun bm!541398 () Bool)

(assert (=> bm!541398 (= call!541402 call!541399)))

(declare-fun b!6349726 () Bool)

(assert (=> b!6349726 (= e!3856359 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992429 c!1155142) b!6349723))

(assert (= (and d!1992429 (not c!1155142)) b!6349717))

(assert (= (and b!6349717 c!1155144) b!6349724))

(assert (= (and b!6349717 (not c!1155144)) b!6349725))

(assert (= (and b!6349725 res!2612790) b!6349720))

(assert (= (and b!6349725 c!1155140) b!6349719))

(assert (= (and b!6349725 (not c!1155140)) b!6349716))

(assert (= (and b!6349716 c!1155143) b!6349721))

(assert (= (and b!6349716 (not c!1155143)) b!6349718))

(assert (= (and b!6349718 c!1155141) b!6349722))

(assert (= (and b!6349718 (not c!1155141)) b!6349726))

(assert (= (or b!6349721 b!6349722) bm!541397))

(assert (= (or b!6349721 b!6349722) bm!541398))

(assert (= (or b!6349719 bm!541397) bm!541396))

(assert (= (or b!6349719 bm!541398) bm!541394))

(assert (= (or b!6349724 bm!541394) bm!541395))

(assert (= (or b!6349724 b!6349719) bm!541393))

(declare-fun m!7156910 () Bool)

(assert (=> bm!541396 m!7156910))

(declare-fun m!7156912 () Bool)

(assert (=> b!6349720 m!7156912))

(declare-fun m!7156914 () Bool)

(assert (=> bm!541393 m!7156914))

(declare-fun m!7156916 () Bool)

(assert (=> bm!541395 m!7156916))

(declare-fun m!7156918 () Bool)

(assert (=> b!6349723 m!7156918))

(assert (=> bm!541242 d!1992429))

(assert (=> bs!1589504 d!1991999))

(assert (=> b!6348470 d!1991943))

(declare-fun bs!1590006 () Bool)

(declare-fun d!1992433 () Bool)

(assert (= bs!1590006 (and d!1992433 b!6348958)))

(declare-fun lambda!349257 () Int)

(assert (=> bs!1590006 (not (= lambda!349257 lambda!349187))))

(declare-fun bs!1590007 () Bool)

(assert (= bs!1590007 (and d!1992433 d!1992383)))

(assert (=> bs!1590007 (not (= lambda!349257 lambda!349245))))

(declare-fun bs!1590008 () Bool)

(assert (= bs!1590008 (and d!1992433 b!6348953)))

(assert (=> bs!1590008 (not (= lambda!349257 lambda!349184))))

(declare-fun bs!1590009 () Bool)

(assert (= bs!1590009 (and d!1992433 d!1992375)))

(assert (=> bs!1590009 (= lambda!349257 lambda!349224)))

(declare-fun bs!1590010 () Bool)

(assert (= bs!1590010 (and d!1992433 b!6348956)))

(assert (=> bs!1590010 (not (= lambda!349257 lambda!349186))))

(declare-fun bs!1590011 () Bool)

(assert (= bs!1590011 (and d!1992433 b!6348951)))

(assert (=> bs!1590011 (not (= lambda!349257 lambda!349183))))

(declare-fun bs!1590012 () Bool)

(assert (= bs!1590012 (and d!1992433 b!6349642)))

(assert (=> bs!1590012 (not (= lambda!349257 lambda!349247))))

(declare-fun bs!1590013 () Bool)

(assert (= bs!1590013 (and d!1992433 b!6349644)))

(assert (=> bs!1590013 (not (= lambda!349257 lambda!349249))))

(assert (=> d!1992433 (= (nullableZipper!2021 ((_ map or) lt!2364175 lt!2364165)) (exists!2569 ((_ map or) lt!2364175 lt!2364165) lambda!349257))))

(declare-fun bs!1590014 () Bool)

(assert (= bs!1590014 d!1992433))

(declare-fun m!7156928 () Bool)

(assert (=> bs!1590014 m!7156928))

(assert (=> b!6348973 d!1992433))

(declare-fun d!1992437 () Bool)

(assert (=> d!1992437 (= (isEmptyExpr!1657 lt!2364315) ((_ is EmptyExpr!16255) lt!2364315))))

(assert (=> b!6348898 d!1992437))

(assert (=> b!6348469 d!1992027))

(assert (=> d!1992015 d!1992009))

(declare-fun b!6349748 () Bool)

(declare-fun e!3856373 () Bool)

(declare-fun e!3856376 () Bool)

(assert (=> b!6349748 (= e!3856373 e!3856376)))

(declare-fun c!1155154 () Bool)

(assert (=> b!6349748 (= c!1155154 ((_ is Star!16255) (regOne!33022 r!7292)))))

(declare-fun b!6349749 () Bool)

(declare-fun e!3856375 () Bool)

(declare-fun e!3856378 () Bool)

(assert (=> b!6349749 (= e!3856375 e!3856378)))

(declare-fun res!2612795 () Bool)

(assert (=> b!6349749 (=> (not res!2612795) (not e!3856378))))

(declare-fun call!541409 () Bool)

(assert (=> b!6349749 (= res!2612795 call!541409)))

(declare-fun bm!541403 () Bool)

(declare-fun call!541408 () Bool)

(declare-fun c!1155155 () Bool)

(assert (=> bm!541403 (= call!541408 (validRegex!7991 (ite c!1155155 (regTwo!33023 (regOne!33022 r!7292)) (regTwo!33022 (regOne!33022 r!7292)))))))

(declare-fun b!6349750 () Bool)

(declare-fun e!3856377 () Bool)

(assert (=> b!6349750 (= e!3856377 call!541408)))

(declare-fun b!6349751 () Bool)

(assert (=> b!6349751 (= e!3856378 call!541408)))

(declare-fun b!6349752 () Bool)

(declare-fun e!3856372 () Bool)

(declare-fun call!541410 () Bool)

(assert (=> b!6349752 (= e!3856372 call!541410)))

(declare-fun d!1992441 () Bool)

(declare-fun res!2612797 () Bool)

(assert (=> d!1992441 (=> res!2612797 e!3856373)))

(assert (=> d!1992441 (= res!2612797 ((_ is ElementMatch!16255) (regOne!33022 r!7292)))))

(assert (=> d!1992441 (= (validRegex!7991 (regOne!33022 r!7292)) e!3856373)))

(declare-fun bm!541404 () Bool)

(assert (=> bm!541404 (= call!541410 (validRegex!7991 (ite c!1155154 (reg!16584 (regOne!33022 r!7292)) (ite c!1155155 (regOne!33023 (regOne!33022 r!7292)) (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6349753 () Bool)

(declare-fun res!2612794 () Bool)

(assert (=> b!6349753 (=> (not res!2612794) (not e!3856377))))

(assert (=> b!6349753 (= res!2612794 call!541409)))

(declare-fun e!3856374 () Bool)

(assert (=> b!6349753 (= e!3856374 e!3856377)))

(declare-fun b!6349754 () Bool)

(assert (=> b!6349754 (= e!3856376 e!3856374)))

(assert (=> b!6349754 (= c!1155155 ((_ is Union!16255) (regOne!33022 r!7292)))))

(declare-fun b!6349755 () Bool)

(assert (=> b!6349755 (= e!3856376 e!3856372)))

(declare-fun res!2612798 () Bool)

(assert (=> b!6349755 (= res!2612798 (not (nullable!6248 (reg!16584 (regOne!33022 r!7292)))))))

(assert (=> b!6349755 (=> (not res!2612798) (not e!3856372))))

(declare-fun bm!541405 () Bool)

(assert (=> bm!541405 (= call!541409 call!541410)))

(declare-fun b!6349756 () Bool)

(declare-fun res!2612796 () Bool)

(assert (=> b!6349756 (=> res!2612796 e!3856375)))

(assert (=> b!6349756 (= res!2612796 (not ((_ is Concat!25100) (regOne!33022 r!7292))))))

(assert (=> b!6349756 (= e!3856374 e!3856375)))

(assert (= (and d!1992441 (not res!2612797)) b!6349748))

(assert (= (and b!6349748 c!1155154) b!6349755))

(assert (= (and b!6349748 (not c!1155154)) b!6349754))

(assert (= (and b!6349755 res!2612798) b!6349752))

(assert (= (and b!6349754 c!1155155) b!6349753))

(assert (= (and b!6349754 (not c!1155155)) b!6349756))

(assert (= (and b!6349753 res!2612794) b!6349750))

(assert (= (and b!6349756 (not res!2612796)) b!6349749))

(assert (= (and b!6349749 res!2612795) b!6349751))

(assert (= (or b!6349750 b!6349751) bm!541403))

(assert (= (or b!6349753 b!6349749) bm!541405))

(assert (= (or b!6349752 bm!541405) bm!541404))

(declare-fun m!7156932 () Bool)

(assert (=> bm!541403 m!7156932))

(declare-fun m!7156934 () Bool)

(assert (=> bm!541404 m!7156934))

(declare-fun m!7156936 () Bool)

(assert (=> b!6349755 m!7156936))

(assert (=> d!1992015 d!1992441))

(assert (=> d!1992015 d!1992019))

(declare-fun d!1992443 () Bool)

(assert (=> d!1992443 (= (Exists!3325 lambda!349153) (choose!47113 lambda!349153))))

(declare-fun bs!1590031 () Bool)

(assert (= bs!1590031 d!1992443))

(declare-fun m!7156938 () Bool)

(assert (=> bs!1590031 m!7156938))

(assert (=> d!1992015 d!1992443))

(declare-fun bs!1590034 () Bool)

(declare-fun d!1992445 () Bool)

(assert (= bs!1590034 (and d!1992445 d!1992047)))

(declare-fun lambda!349261 () Int)

(assert (=> bs!1590034 (not (= lambda!349261 lambda!349168))))

(declare-fun bs!1590035 () Bool)

(assert (= bs!1590035 (and d!1992445 d!1992015)))

(assert (=> bs!1590035 (= lambda!349261 lambda!349153)))

(declare-fun bs!1590036 () Bool)

(assert (= bs!1590036 (and d!1992445 b!6348025)))

(assert (=> bs!1590036 (not (= lambda!349261 lambda!349081))))

(assert (=> bs!1590036 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349261 lambda!349080))))

(declare-fun bs!1590037 () Bool)

(assert (= bs!1590037 (and d!1992445 b!6348869)))

(assert (=> bs!1590037 (not (= lambda!349261 lambda!349165))))

(declare-fun bs!1590038 () Bool)

(assert (= bs!1590038 (and d!1992445 d!1992017)))

(assert (=> bs!1590038 (not (= lambda!349261 lambda!349159))))

(assert (=> bs!1590038 (= lambda!349261 lambda!349158)))

(assert (=> bs!1590034 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349261 lambda!349167))))

(declare-fun bs!1590039 () Bool)

(assert (= bs!1590039 (and d!1992445 b!6348814)))

(assert (=> bs!1590039 (not (= lambda!349261 lambda!349162))))

(declare-fun bs!1590040 () Bool)

(assert (= bs!1590040 (and d!1992445 b!6348655)))

(assert (=> bs!1590040 (not (= lambda!349261 lambda!349147))))

(declare-fun bs!1590041 () Bool)

(assert (= bs!1590041 (and d!1992445 b!6348652)))

(assert (=> bs!1590041 (not (= lambda!349261 lambda!349146))))

(declare-fun bs!1590042 () Bool)

(assert (= bs!1590042 (and d!1992445 d!1992023)))

(assert (=> bs!1590042 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349261 lambda!349160))))

(declare-fun bs!1590043 () Bool)

(assert (= bs!1590043 (and d!1992445 b!6348005)))

(assert (=> bs!1590043 (not (= lambda!349261 lambda!349078))))

(declare-fun bs!1590044 () Bool)

(assert (= bs!1590044 (and d!1992445 b!6349681)))

(assert (=> bs!1590044 (not (= lambda!349261 lambda!349255))))

(declare-fun bs!1590045 () Bool)

(assert (= bs!1590045 (and d!1992445 b!6348811)))

(assert (=> bs!1590045 (not (= lambda!349261 lambda!349161))))

(declare-fun bs!1590046 () Bool)

(assert (= bs!1590046 (and d!1992445 b!6348866)))

(assert (=> bs!1590046 (not (= lambda!349261 lambda!349164))))

(declare-fun bs!1590047 () Bool)

(assert (= bs!1590047 (and d!1992445 b!6349684)))

(assert (=> bs!1590047 (not (= lambda!349261 lambda!349256))))

(assert (=> bs!1590043 (= lambda!349261 lambda!349077)))

(assert (=> d!1992445 true))

(assert (=> d!1992445 true))

(assert (=> d!1992445 true))

(assert (=> d!1992445 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326)) (Exists!3325 lambda!349261))))

(assert (=> d!1992445 true))

(declare-fun _$89!2566 () Unit!158351)

(assert (=> d!1992445 (= (choose!47114 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326) _$89!2566)))

(declare-fun bs!1590048 () Bool)

(assert (= bs!1590048 d!1992445))

(assert (=> bs!1590048 m!7155296))

(assert (=> bs!1590048 m!7155296))

(assert (=> bs!1590048 m!7155298))

(declare-fun m!7156984 () Bool)

(assert (=> bs!1590048 m!7156984))

(assert (=> d!1992015 d!1992445))

(assert (=> b!6348838 d!1992041))

(declare-fun d!1992461 () Bool)

(assert (=> d!1992461 (= (nullable!6248 (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))) (nullableFct!2195 (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))))

(declare-fun bs!1590049 () Bool)

(assert (= bs!1590049 d!1992461))

(declare-fun m!7156986 () Bool)

(assert (=> bs!1590049 m!7156986))

(assert (=> b!6348963 d!1992461))

(declare-fun d!1992463 () Bool)

(declare-fun res!2612822 () Bool)

(declare-fun e!3856399 () Bool)

(assert (=> d!1992463 (=> res!2612822 e!3856399)))

(assert (=> d!1992463 (= res!2612822 ((_ is Nil!64940) (exprs!6139 setElem!43224)))))

(assert (=> d!1992463 (= (forall!15421 (exprs!6139 setElem!43224) lambda!349128) e!3856399)))

(declare-fun b!6349790 () Bool)

(declare-fun e!3856400 () Bool)

(assert (=> b!6349790 (= e!3856399 e!3856400)))

(declare-fun res!2612823 () Bool)

(assert (=> b!6349790 (=> (not res!2612823) (not e!3856400))))

(assert (=> b!6349790 (= res!2612823 (dynLambda!25748 lambda!349128 (h!71388 (exprs!6139 setElem!43224))))))

(declare-fun b!6349791 () Bool)

(assert (=> b!6349791 (= e!3856400 (forall!15421 (t!378652 (exprs!6139 setElem!43224)) lambda!349128))))

(assert (= (and d!1992463 (not res!2612822)) b!6349790))

(assert (= (and b!6349790 res!2612823) b!6349791))

(declare-fun b_lambda!241523 () Bool)

(assert (=> (not b_lambda!241523) (not b!6349790)))

(declare-fun m!7156988 () Bool)

(assert (=> b!6349790 m!7156988))

(declare-fun m!7156990 () Bool)

(assert (=> b!6349791 m!7156990))

(assert (=> d!1991959 d!1992463))

(declare-fun d!1992465 () Bool)

(assert (=> d!1992465 (= (isEmpty!37030 (tail!12087 lt!2364159)) ((_ is Nil!64940) (tail!12087 lt!2364159)))))

(assert (=> b!6348893 d!1992465))

(declare-fun d!1992467 () Bool)

(assert (=> d!1992467 (= (tail!12087 lt!2364159) (t!378652 lt!2364159))))

(assert (=> b!6348893 d!1992467))

(declare-fun b!6349792 () Bool)

(declare-fun e!3856401 () Bool)

(declare-fun lt!2364437 () Bool)

(declare-fun call!541415 () Bool)

(assert (=> b!6349792 (= e!3856401 (= lt!2364437 call!541415))))

(declare-fun b!6349793 () Bool)

(declare-fun e!3856406 () Bool)

(assert (=> b!6349793 (= e!3856406 (= (head!13003 (_2!36537 (get!22467 lt!2364299))) (c!1154628 (regTwo!33022 r!7292))))))

(declare-fun b!6349794 () Bool)

(declare-fun e!3856405 () Bool)

(assert (=> b!6349794 (= e!3856405 (matchR!8438 (derivativeStep!4960 (regTwo!33022 r!7292) (head!13003 (_2!36537 (get!22467 lt!2364299)))) (tail!12088 (_2!36537 (get!22467 lt!2364299)))))))

(declare-fun b!6349795 () Bool)

(declare-fun res!2612828 () Bool)

(declare-fun e!3856404 () Bool)

(assert (=> b!6349795 (=> res!2612828 e!3856404)))

(assert (=> b!6349795 (= res!2612828 (not (isEmpty!37033 (tail!12088 (_2!36537 (get!22467 lt!2364299))))))))

(declare-fun b!6349796 () Bool)

(declare-fun e!3856403 () Bool)

(assert (=> b!6349796 (= e!3856403 e!3856404)))

(declare-fun res!2612825 () Bool)

(assert (=> b!6349796 (=> res!2612825 e!3856404)))

(assert (=> b!6349796 (= res!2612825 call!541415)))

(declare-fun b!6349797 () Bool)

(declare-fun e!3856407 () Bool)

(assert (=> b!6349797 (= e!3856407 (not lt!2364437))))

(declare-fun b!6349798 () Bool)

(assert (=> b!6349798 (= e!3856405 (nullable!6248 (regTwo!33022 r!7292)))))

(declare-fun d!1992469 () Bool)

(assert (=> d!1992469 e!3856401))

(declare-fun c!1155163 () Bool)

(assert (=> d!1992469 (= c!1155163 ((_ is EmptyExpr!16255) (regTwo!33022 r!7292)))))

(assert (=> d!1992469 (= lt!2364437 e!3856405)))

(declare-fun c!1155161 () Bool)

(assert (=> d!1992469 (= c!1155161 (isEmpty!37033 (_2!36537 (get!22467 lt!2364299))))))

(assert (=> d!1992469 (validRegex!7991 (regTwo!33022 r!7292))))

(assert (=> d!1992469 (= (matchR!8438 (regTwo!33022 r!7292) (_2!36537 (get!22467 lt!2364299))) lt!2364437)))

(declare-fun b!6349799 () Bool)

(declare-fun res!2612827 () Bool)

(declare-fun e!3856402 () Bool)

(assert (=> b!6349799 (=> res!2612827 e!3856402)))

(assert (=> b!6349799 (= res!2612827 (not ((_ is ElementMatch!16255) (regTwo!33022 r!7292))))))

(assert (=> b!6349799 (= e!3856407 e!3856402)))

(declare-fun b!6349800 () Bool)

(declare-fun res!2612831 () Bool)

(assert (=> b!6349800 (=> (not res!2612831) (not e!3856406))))

(assert (=> b!6349800 (= res!2612831 (isEmpty!37033 (tail!12088 (_2!36537 (get!22467 lt!2364299)))))))

(declare-fun b!6349801 () Bool)

(assert (=> b!6349801 (= e!3856401 e!3856407)))

(declare-fun c!1155162 () Bool)

(assert (=> b!6349801 (= c!1155162 ((_ is EmptyLang!16255) (regTwo!33022 r!7292)))))

(declare-fun b!6349802 () Bool)

(assert (=> b!6349802 (= e!3856402 e!3856403)))

(declare-fun res!2612829 () Bool)

(assert (=> b!6349802 (=> (not res!2612829) (not e!3856403))))

(assert (=> b!6349802 (= res!2612829 (not lt!2364437))))

(declare-fun b!6349803 () Bool)

(assert (=> b!6349803 (= e!3856404 (not (= (head!13003 (_2!36537 (get!22467 lt!2364299))) (c!1154628 (regTwo!33022 r!7292)))))))

(declare-fun bm!541410 () Bool)

(assert (=> bm!541410 (= call!541415 (isEmpty!37033 (_2!36537 (get!22467 lt!2364299))))))

(declare-fun b!6349804 () Bool)

(declare-fun res!2612826 () Bool)

(assert (=> b!6349804 (=> (not res!2612826) (not e!3856406))))

(assert (=> b!6349804 (= res!2612826 (not call!541415))))

(declare-fun b!6349805 () Bool)

(declare-fun res!2612824 () Bool)

(assert (=> b!6349805 (=> res!2612824 e!3856402)))

(assert (=> b!6349805 (= res!2612824 e!3856406)))

(declare-fun res!2612830 () Bool)

(assert (=> b!6349805 (=> (not res!2612830) (not e!3856406))))

(assert (=> b!6349805 (= res!2612830 lt!2364437)))

(assert (= (and d!1992469 c!1155161) b!6349798))

(assert (= (and d!1992469 (not c!1155161)) b!6349794))

(assert (= (and d!1992469 c!1155163) b!6349792))

(assert (= (and d!1992469 (not c!1155163)) b!6349801))

(assert (= (and b!6349801 c!1155162) b!6349797))

(assert (= (and b!6349801 (not c!1155162)) b!6349799))

(assert (= (and b!6349799 (not res!2612827)) b!6349805))

(assert (= (and b!6349805 res!2612830) b!6349804))

(assert (= (and b!6349804 res!2612826) b!6349800))

(assert (= (and b!6349800 res!2612831) b!6349793))

(assert (= (and b!6349805 (not res!2612824)) b!6349802))

(assert (= (and b!6349802 res!2612829) b!6349796))

(assert (= (and b!6349796 (not res!2612825)) b!6349795))

(assert (= (and b!6349795 (not res!2612828)) b!6349803))

(assert (= (or b!6349792 b!6349796 b!6349804) bm!541410))

(assert (=> b!6349798 m!7156860))

(declare-fun m!7156992 () Bool)

(assert (=> d!1992469 m!7156992))

(assert (=> d!1992469 m!7156862))

(declare-fun m!7156994 () Bool)

(assert (=> b!6349793 m!7156994))

(declare-fun m!7156996 () Bool)

(assert (=> b!6349800 m!7156996))

(assert (=> b!6349800 m!7156996))

(declare-fun m!7156998 () Bool)

(assert (=> b!6349800 m!7156998))

(assert (=> bm!541410 m!7156992))

(assert (=> b!6349794 m!7156994))

(assert (=> b!6349794 m!7156994))

(declare-fun m!7157000 () Bool)

(assert (=> b!6349794 m!7157000))

(assert (=> b!6349794 m!7156996))

(assert (=> b!6349794 m!7157000))

(assert (=> b!6349794 m!7156996))

(declare-fun m!7157002 () Bool)

(assert (=> b!6349794 m!7157002))

(assert (=> b!6349795 m!7156996))

(assert (=> b!6349795 m!7156996))

(assert (=> b!6349795 m!7156998))

(assert (=> b!6349803 m!7156994))

(assert (=> b!6348791 d!1992469))

(declare-fun d!1992471 () Bool)

(assert (=> d!1992471 (= (get!22467 lt!2364299) (v!52314 lt!2364299))))

(assert (=> b!6348791 d!1992471))

(assert (=> d!1992041 d!1992417))

(declare-fun b!6349806 () Bool)

(declare-fun e!3856409 () Bool)

(declare-fun e!3856412 () Bool)

(assert (=> b!6349806 (= e!3856409 e!3856412)))

(declare-fun c!1155164 () Bool)

(assert (=> b!6349806 (= c!1155164 ((_ is Star!16255) lt!2364185))))

(declare-fun b!6349807 () Bool)

(declare-fun e!3856411 () Bool)

(declare-fun e!3856414 () Bool)

(assert (=> b!6349807 (= e!3856411 e!3856414)))

(declare-fun res!2612833 () Bool)

(assert (=> b!6349807 (=> (not res!2612833) (not e!3856414))))

(declare-fun call!541417 () Bool)

(assert (=> b!6349807 (= res!2612833 call!541417)))

(declare-fun bm!541411 () Bool)

(declare-fun call!541416 () Bool)

(declare-fun c!1155165 () Bool)

(assert (=> bm!541411 (= call!541416 (validRegex!7991 (ite c!1155165 (regTwo!33023 lt!2364185) (regTwo!33022 lt!2364185))))))

(declare-fun b!6349808 () Bool)

(declare-fun e!3856413 () Bool)

(assert (=> b!6349808 (= e!3856413 call!541416)))

(declare-fun b!6349809 () Bool)

(assert (=> b!6349809 (= e!3856414 call!541416)))

(declare-fun b!6349810 () Bool)

(declare-fun e!3856408 () Bool)

(declare-fun call!541418 () Bool)

(assert (=> b!6349810 (= e!3856408 call!541418)))

(declare-fun d!1992473 () Bool)

(declare-fun res!2612835 () Bool)

(assert (=> d!1992473 (=> res!2612835 e!3856409)))

(assert (=> d!1992473 (= res!2612835 ((_ is ElementMatch!16255) lt!2364185))))

(assert (=> d!1992473 (= (validRegex!7991 lt!2364185) e!3856409)))

(declare-fun bm!541412 () Bool)

(assert (=> bm!541412 (= call!541418 (validRegex!7991 (ite c!1155164 (reg!16584 lt!2364185) (ite c!1155165 (regOne!33023 lt!2364185) (regOne!33022 lt!2364185)))))))

(declare-fun b!6349811 () Bool)

(declare-fun res!2612832 () Bool)

(assert (=> b!6349811 (=> (not res!2612832) (not e!3856413))))

(assert (=> b!6349811 (= res!2612832 call!541417)))

(declare-fun e!3856410 () Bool)

(assert (=> b!6349811 (= e!3856410 e!3856413)))

(declare-fun b!6349812 () Bool)

(assert (=> b!6349812 (= e!3856412 e!3856410)))

(assert (=> b!6349812 (= c!1155165 ((_ is Union!16255) lt!2364185))))

(declare-fun b!6349813 () Bool)

(assert (=> b!6349813 (= e!3856412 e!3856408)))

(declare-fun res!2612836 () Bool)

(assert (=> b!6349813 (= res!2612836 (not (nullable!6248 (reg!16584 lt!2364185))))))

(assert (=> b!6349813 (=> (not res!2612836) (not e!3856408))))

(declare-fun bm!541413 () Bool)

(assert (=> bm!541413 (= call!541417 call!541418)))

(declare-fun b!6349814 () Bool)

(declare-fun res!2612834 () Bool)

(assert (=> b!6349814 (=> res!2612834 e!3856411)))

(assert (=> b!6349814 (= res!2612834 (not ((_ is Concat!25100) lt!2364185)))))

(assert (=> b!6349814 (= e!3856410 e!3856411)))

(assert (= (and d!1992473 (not res!2612835)) b!6349806))

(assert (= (and b!6349806 c!1155164) b!6349813))

(assert (= (and b!6349806 (not c!1155164)) b!6349812))

(assert (= (and b!6349813 res!2612836) b!6349810))

(assert (= (and b!6349812 c!1155165) b!6349811))

(assert (= (and b!6349812 (not c!1155165)) b!6349814))

(assert (= (and b!6349811 res!2612832) b!6349808))

(assert (= (and b!6349814 (not res!2612834)) b!6349807))

(assert (= (and b!6349807 res!2612833) b!6349809))

(assert (= (or b!6349808 b!6349809) bm!541411))

(assert (= (or b!6349811 b!6349807) bm!541413))

(assert (= (or b!6349810 bm!541413) bm!541412))

(declare-fun m!7157004 () Bool)

(assert (=> bm!541411 m!7157004))

(declare-fun m!7157006 () Bool)

(assert (=> bm!541412 m!7157006))

(declare-fun m!7157008 () Bool)

(assert (=> b!6349813 m!7157008))

(assert (=> d!1992041 d!1992473))

(declare-fun d!1992475 () Bool)

(assert (=> d!1992475 (= (isEmptyExpr!1657 lt!2364318) ((_ is EmptyExpr!16255) lt!2364318))))

(assert (=> b!6348908 d!1992475))

(declare-fun d!1992477 () Bool)

(assert (=> d!1992477 (= (Exists!3325 lambda!349158) (choose!47113 lambda!349158))))

(declare-fun bs!1590069 () Bool)

(assert (= bs!1590069 d!1992477))

(declare-fun m!7157010 () Bool)

(assert (=> bs!1590069 m!7157010))

(assert (=> d!1992017 d!1992477))

(declare-fun d!1992479 () Bool)

(assert (=> d!1992479 (= (Exists!3325 lambda!349159) (choose!47113 lambda!349159))))

(declare-fun bs!1590071 () Bool)

(assert (= bs!1590071 d!1992479))

(declare-fun m!7157012 () Bool)

(assert (=> bs!1590071 m!7157012))

(assert (=> d!1992017 d!1992479))

(declare-fun bs!1590110 () Bool)

(declare-fun d!1992481 () Bool)

(assert (= bs!1590110 (and d!1992481 d!1992047)))

(declare-fun lambda!349271 () Int)

(assert (=> bs!1590110 (not (= lambda!349271 lambda!349168))))

(declare-fun bs!1590111 () Bool)

(assert (= bs!1590111 (and d!1992481 d!1992015)))

(assert (=> bs!1590111 (= lambda!349271 lambda!349153)))

(declare-fun bs!1590113 () Bool)

(assert (= bs!1590113 (and d!1992481 b!6348025)))

(assert (=> bs!1590113 (not (= lambda!349271 lambda!349081))))

(assert (=> bs!1590113 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349271 lambda!349080))))

(declare-fun bs!1590115 () Bool)

(assert (= bs!1590115 (and d!1992481 b!6348869)))

(assert (=> bs!1590115 (not (= lambda!349271 lambda!349165))))

(declare-fun bs!1590117 () Bool)

(assert (= bs!1590117 (and d!1992481 d!1992017)))

(assert (=> bs!1590117 (not (= lambda!349271 lambda!349159))))

(assert (=> bs!1590117 (= lambda!349271 lambda!349158)))

(assert (=> bs!1590110 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349271 lambda!349167))))

(declare-fun bs!1590121 () Bool)

(assert (= bs!1590121 (and d!1992481 d!1992445)))

(assert (=> bs!1590121 (= lambda!349271 lambda!349261)))

(declare-fun bs!1590123 () Bool)

(assert (= bs!1590123 (and d!1992481 b!6348814)))

(assert (=> bs!1590123 (not (= lambda!349271 lambda!349162))))

(declare-fun bs!1590125 () Bool)

(assert (= bs!1590125 (and d!1992481 b!6348655)))

(assert (=> bs!1590125 (not (= lambda!349271 lambda!349147))))

(declare-fun bs!1590127 () Bool)

(assert (= bs!1590127 (and d!1992481 b!6348652)))

(assert (=> bs!1590127 (not (= lambda!349271 lambda!349146))))

(declare-fun bs!1590128 () Bool)

(assert (= bs!1590128 (and d!1992481 d!1992023)))

(assert (=> bs!1590128 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349271 lambda!349160))))

(declare-fun bs!1590129 () Bool)

(assert (= bs!1590129 (and d!1992481 b!6348005)))

(assert (=> bs!1590129 (not (= lambda!349271 lambda!349078))))

(declare-fun bs!1590131 () Bool)

(assert (= bs!1590131 (and d!1992481 b!6349681)))

(assert (=> bs!1590131 (not (= lambda!349271 lambda!349255))))

(declare-fun bs!1590133 () Bool)

(assert (= bs!1590133 (and d!1992481 b!6348811)))

(assert (=> bs!1590133 (not (= lambda!349271 lambda!349161))))

(declare-fun bs!1590135 () Bool)

(assert (= bs!1590135 (and d!1992481 b!6348866)))

(assert (=> bs!1590135 (not (= lambda!349271 lambda!349164))))

(declare-fun bs!1590136 () Bool)

(assert (= bs!1590136 (and d!1992481 b!6349684)))

(assert (=> bs!1590136 (not (= lambda!349271 lambda!349256))))

(assert (=> bs!1590129 (= lambda!349271 lambda!349077)))

(assert (=> d!1992481 true))

(assert (=> d!1992481 true))

(assert (=> d!1992481 true))

(declare-fun lambda!349272 () Int)

(assert (=> bs!1590110 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349272 lambda!349168))))

(assert (=> bs!1590111 (not (= lambda!349272 lambda!349153))))

(assert (=> bs!1590113 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 r!7292) lt!2364185)) (= lambda!349272 lambda!349081))))

(assert (=> bs!1590113 (not (= lambda!349272 lambda!349080))))

(assert (=> bs!1590115 (= (and (= (regOne!33022 r!7292) (regOne!33022 lt!2364185)) (= (regTwo!33022 r!7292) (regTwo!33022 lt!2364185))) (= lambda!349272 lambda!349165))))

(declare-fun bs!1590138 () Bool)

(assert (= bs!1590138 d!1992481))

(assert (=> bs!1590138 (not (= lambda!349272 lambda!349271))))

(assert (=> bs!1590117 (= lambda!349272 lambda!349159)))

(assert (=> bs!1590117 (not (= lambda!349272 lambda!349158))))

(assert (=> bs!1590110 (not (= lambda!349272 lambda!349167))))

(assert (=> bs!1590121 (not (= lambda!349272 lambda!349261))))

(assert (=> bs!1590123 (= (and (= (regOne!33022 r!7292) (regOne!33022 lt!2364179)) (= (regTwo!33022 r!7292) (regTwo!33022 lt!2364179))) (= lambda!349272 lambda!349162))))

(assert (=> bs!1590125 (= lambda!349272 lambda!349147)))

(assert (=> bs!1590127 (not (= lambda!349272 lambda!349146))))

(assert (=> bs!1590128 (not (= lambda!349272 lambda!349160))))

(assert (=> bs!1590129 (= lambda!349272 lambda!349078)))

(assert (=> bs!1590131 (not (= lambda!349272 lambda!349255))))

(assert (=> bs!1590133 (not (= lambda!349272 lambda!349161))))

(assert (=> bs!1590135 (not (= lambda!349272 lambda!349164))))

(assert (=> bs!1590136 (= (and (= (regOne!33022 r!7292) (regOne!33022 (regOne!33023 lt!2364179))) (= (regTwo!33022 r!7292) (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349272 lambda!349256))))

(assert (=> bs!1590129 (not (= lambda!349272 lambda!349077))))

(assert (=> d!1992481 true))

(assert (=> d!1992481 true))

(assert (=> d!1992481 true))

(assert (=> d!1992481 (= (Exists!3325 lambda!349271) (Exists!3325 lambda!349272))))

(assert (=> d!1992481 true))

(declare-fun _$90!2194 () Unit!158351)

(assert (=> d!1992481 (= (choose!47115 (regOne!33022 r!7292) (regTwo!33022 r!7292) s!2326) _$90!2194)))

(declare-fun m!7157042 () Bool)

(assert (=> bs!1590138 m!7157042))

(declare-fun m!7157044 () Bool)

(assert (=> bs!1590138 m!7157044))

(assert (=> d!1992017 d!1992481))

(assert (=> d!1992017 d!1992441))

(declare-fun d!1992503 () Bool)

(assert (=> d!1992503 (= (isDefined!12849 lt!2364310) (not (isEmpty!37034 lt!2364310)))))

(declare-fun bs!1590139 () Bool)

(assert (= bs!1590139 d!1992503))

(declare-fun m!7157046 () Bool)

(assert (=> bs!1590139 m!7157046))

(assert (=> b!6348834 d!1992503))

(declare-fun bs!1590141 () Bool)

(declare-fun b!6349859 () Bool)

(assert (= bs!1590141 (and b!6349859 d!1992047)))

(declare-fun lambda!349273 () Int)

(assert (=> bs!1590141 (not (= lambda!349273 lambda!349168))))

(declare-fun bs!1590142 () Bool)

(assert (= bs!1590142 (and b!6349859 d!1992015)))

(assert (=> bs!1590142 (not (= lambda!349273 lambda!349153))))

(declare-fun bs!1590143 () Bool)

(assert (= bs!1590143 (and b!6349859 b!6348025)))

(assert (=> bs!1590143 (not (= lambda!349273 lambda!349081))))

(assert (=> bs!1590143 (not (= lambda!349273 lambda!349080))))

(declare-fun bs!1590144 () Bool)

(assert (= bs!1590144 (and b!6349859 d!1992481)))

(assert (=> bs!1590144 (not (= lambda!349273 lambda!349271))))

(declare-fun bs!1590145 () Bool)

(assert (= bs!1590145 (and b!6349859 d!1992017)))

(assert (=> bs!1590145 (not (= lambda!349273 lambda!349159))))

(assert (=> bs!1590145 (not (= lambda!349273 lambda!349158))))

(assert (=> bs!1590141 (not (= lambda!349273 lambda!349167))))

(declare-fun bs!1590146 () Bool)

(assert (= bs!1590146 (and b!6349859 d!1992445)))

(assert (=> bs!1590146 (not (= lambda!349273 lambda!349261))))

(declare-fun bs!1590147 () Bool)

(assert (= bs!1590147 (and b!6349859 b!6348814)))

(assert (=> bs!1590147 (not (= lambda!349273 lambda!349162))))

(declare-fun bs!1590148 () Bool)

(assert (= bs!1590148 (and b!6349859 b!6348655)))

(assert (=> bs!1590148 (not (= lambda!349273 lambda!349147))))

(declare-fun bs!1590149 () Bool)

(assert (= bs!1590149 (and b!6349859 b!6348652)))

(assert (=> bs!1590149 (= (and (= (reg!16584 (regTwo!33023 lt!2364179)) (reg!16584 r!7292)) (= (regTwo!33023 lt!2364179) r!7292)) (= lambda!349273 lambda!349146))))

(declare-fun bs!1590150 () Bool)

(assert (= bs!1590150 (and b!6349859 d!1992023)))

(assert (=> bs!1590150 (not (= lambda!349273 lambda!349160))))

(declare-fun bs!1590151 () Bool)

(assert (= bs!1590151 (and b!6349859 b!6348869)))

(assert (=> bs!1590151 (not (= lambda!349273 lambda!349165))))

(assert (=> bs!1590144 (not (= lambda!349273 lambda!349272))))

(declare-fun bs!1590152 () Bool)

(assert (= bs!1590152 (and b!6349859 b!6348005)))

(assert (=> bs!1590152 (not (= lambda!349273 lambda!349078))))

(declare-fun bs!1590153 () Bool)

(assert (= bs!1590153 (and b!6349859 b!6349681)))

(assert (=> bs!1590153 (= (and (= (reg!16584 (regTwo!33023 lt!2364179)) (reg!16584 (regOne!33023 lt!2364179))) (= (regTwo!33023 lt!2364179) (regOne!33023 lt!2364179))) (= lambda!349273 lambda!349255))))

(declare-fun bs!1590154 () Bool)

(assert (= bs!1590154 (and b!6349859 b!6348811)))

(assert (=> bs!1590154 (= (and (= (reg!16584 (regTwo!33023 lt!2364179)) (reg!16584 lt!2364179)) (= (regTwo!33023 lt!2364179) lt!2364179)) (= lambda!349273 lambda!349161))))

(declare-fun bs!1590155 () Bool)

(assert (= bs!1590155 (and b!6349859 b!6348866)))

(assert (=> bs!1590155 (= (and (= (reg!16584 (regTwo!33023 lt!2364179)) (reg!16584 lt!2364185)) (= (regTwo!33023 lt!2364179) lt!2364185)) (= lambda!349273 lambda!349164))))

(declare-fun bs!1590156 () Bool)

(assert (= bs!1590156 (and b!6349859 b!6349684)))

(assert (=> bs!1590156 (not (= lambda!349273 lambda!349256))))

(assert (=> bs!1590152 (not (= lambda!349273 lambda!349077))))

(assert (=> b!6349859 true))

(assert (=> b!6349859 true))

(declare-fun bs!1590164 () Bool)

(declare-fun b!6349862 () Bool)

(assert (= bs!1590164 (and b!6349862 d!1992015)))

(declare-fun lambda!349275 () Int)

(assert (=> bs!1590164 (not (= lambda!349275 lambda!349153))))

(declare-fun bs!1590167 () Bool)

(assert (= bs!1590167 (and b!6349862 b!6348025)))

(assert (=> bs!1590167 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 lt!2364179)) lt!2364185)) (= lambda!349275 lambda!349081))))

(assert (=> bs!1590167 (not (= lambda!349275 lambda!349080))))

(declare-fun bs!1590171 () Bool)

(assert (= bs!1590171 (and b!6349862 d!1992481)))

(assert (=> bs!1590171 (not (= lambda!349275 lambda!349271))))

(declare-fun bs!1590174 () Bool)

(assert (= bs!1590174 (and b!6349862 d!1992017)))

(assert (=> bs!1590174 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349275 lambda!349159))))

(assert (=> bs!1590174 (not (= lambda!349275 lambda!349158))))

(declare-fun bs!1590178 () Bool)

(assert (= bs!1590178 (and b!6349862 d!1992047)))

(assert (=> bs!1590178 (not (= lambda!349275 lambda!349167))))

(declare-fun bs!1590180 () Bool)

(assert (= bs!1590180 (and b!6349862 d!1992445)))

(assert (=> bs!1590180 (not (= lambda!349275 lambda!349261))))

(declare-fun bs!1590181 () Bool)

(assert (= bs!1590181 (and b!6349862 b!6348814)))

(assert (=> bs!1590181 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 lt!2364179)) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 lt!2364179))) (= lambda!349275 lambda!349162))))

(declare-fun bs!1590182 () Bool)

(assert (= bs!1590182 (and b!6349862 b!6348655)))

(assert (=> bs!1590182 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349275 lambda!349147))))

(declare-fun bs!1590183 () Bool)

(assert (= bs!1590183 (and b!6349862 b!6349859)))

(assert (=> bs!1590183 (not (= lambda!349275 lambda!349273))))

(assert (=> bs!1590178 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 lt!2364179)) lt!2364185)) (= lambda!349275 lambda!349168))))

(declare-fun bs!1590184 () Bool)

(assert (= bs!1590184 (and b!6349862 b!6348652)))

(assert (=> bs!1590184 (not (= lambda!349275 lambda!349146))))

(declare-fun bs!1590185 () Bool)

(assert (= bs!1590185 (and b!6349862 d!1992023)))

(assert (=> bs!1590185 (not (= lambda!349275 lambda!349160))))

(declare-fun bs!1590186 () Bool)

(assert (= bs!1590186 (and b!6349862 b!6348869)))

(assert (=> bs!1590186 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 lt!2364185)) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 lt!2364185))) (= lambda!349275 lambda!349165))))

(assert (=> bs!1590171 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349275 lambda!349272))))

(declare-fun bs!1590188 () Bool)

(assert (= bs!1590188 (and b!6349862 b!6348005)))

(assert (=> bs!1590188 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 r!7292))) (= lambda!349275 lambda!349078))))

(declare-fun bs!1590189 () Bool)

(assert (= bs!1590189 (and b!6349862 b!6349681)))

(assert (=> bs!1590189 (not (= lambda!349275 lambda!349255))))

(declare-fun bs!1590190 () Bool)

(assert (= bs!1590190 (and b!6349862 b!6348811)))

(assert (=> bs!1590190 (not (= lambda!349275 lambda!349161))))

(declare-fun bs!1590191 () Bool)

(assert (= bs!1590191 (and b!6349862 b!6348866)))

(assert (=> bs!1590191 (not (= lambda!349275 lambda!349164))))

(declare-fun bs!1590192 () Bool)

(assert (= bs!1590192 (and b!6349862 b!6349684)))

(assert (=> bs!1590192 (= (and (= (regOne!33022 (regTwo!33023 lt!2364179)) (regOne!33022 (regOne!33023 lt!2364179))) (= (regTwo!33022 (regTwo!33023 lt!2364179)) (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349275 lambda!349256))))

(assert (=> bs!1590188 (not (= lambda!349275 lambda!349077))))

(assert (=> b!6349862 true))

(assert (=> b!6349862 true))

(declare-fun d!1992509 () Bool)

(declare-fun c!1155176 () Bool)

(assert (=> d!1992509 (= c!1155176 ((_ is EmptyExpr!16255) (regTwo!33023 lt!2364179)))))

(declare-fun e!3856441 () Bool)

(assert (=> d!1992509 (= (matchRSpec!3356 (regTwo!33023 lt!2364179) s!2326) e!3856441)))

(declare-fun b!6349857 () Bool)

(declare-fun e!3856444 () Bool)

(assert (=> b!6349857 (= e!3856444 (matchRSpec!3356 (regTwo!33023 (regTwo!33023 lt!2364179)) s!2326))))

(declare-fun b!6349858 () Bool)

(declare-fun c!1155178 () Bool)

(assert (=> b!6349858 (= c!1155178 ((_ is Union!16255) (regTwo!33023 lt!2364179)))))

(declare-fun e!3856443 () Bool)

(declare-fun e!3856440 () Bool)

(assert (=> b!6349858 (= e!3856443 e!3856440)))

(declare-fun bm!541420 () Bool)

(declare-fun call!541425 () Bool)

(assert (=> bm!541420 (= call!541425 (isEmpty!37033 s!2326))))

(declare-fun e!3856442 () Bool)

(declare-fun call!541426 () Bool)

(assert (=> b!6349859 (= e!3856442 call!541426)))

(declare-fun b!6349860 () Bool)

(assert (=> b!6349860 (= e!3856443 (= s!2326 (Cons!64941 (c!1154628 (regTwo!33023 lt!2364179)) Nil!64941)))))

(declare-fun b!6349861 () Bool)

(declare-fun e!3856445 () Bool)

(assert (=> b!6349861 (= e!3856441 e!3856445)))

(declare-fun res!2612863 () Bool)

(assert (=> b!6349861 (= res!2612863 (not ((_ is EmptyLang!16255) (regTwo!33023 lt!2364179))))))

(assert (=> b!6349861 (=> (not res!2612863) (not e!3856445))))

(declare-fun e!3856446 () Bool)

(assert (=> b!6349862 (= e!3856446 call!541426)))

(declare-fun b!6349863 () Bool)

(assert (=> b!6349863 (= e!3856441 call!541425)))

(declare-fun bm!541421 () Bool)

(declare-fun c!1155175 () Bool)

(assert (=> bm!541421 (= call!541426 (Exists!3325 (ite c!1155175 lambda!349273 lambda!349275)))))

(declare-fun b!6349864 () Bool)

(assert (=> b!6349864 (= e!3856440 e!3856444)))

(declare-fun res!2612864 () Bool)

(assert (=> b!6349864 (= res!2612864 (matchRSpec!3356 (regOne!33023 (regTwo!33023 lt!2364179)) s!2326))))

(assert (=> b!6349864 (=> res!2612864 e!3856444)))

(declare-fun b!6349865 () Bool)

(declare-fun c!1155177 () Bool)

(assert (=> b!6349865 (= c!1155177 ((_ is ElementMatch!16255) (regTwo!33023 lt!2364179)))))

(assert (=> b!6349865 (= e!3856445 e!3856443)))

(declare-fun b!6349866 () Bool)

(declare-fun res!2612865 () Bool)

(assert (=> b!6349866 (=> res!2612865 e!3856442)))

(assert (=> b!6349866 (= res!2612865 call!541425)))

(assert (=> b!6349866 (= e!3856446 e!3856442)))

(declare-fun b!6349867 () Bool)

(assert (=> b!6349867 (= e!3856440 e!3856446)))

(assert (=> b!6349867 (= c!1155175 ((_ is Star!16255) (regTwo!33023 lt!2364179)))))

(assert (= (and d!1992509 c!1155176) b!6349863))

(assert (= (and d!1992509 (not c!1155176)) b!6349861))

(assert (= (and b!6349861 res!2612863) b!6349865))

(assert (= (and b!6349865 c!1155177) b!6349860))

(assert (= (and b!6349865 (not c!1155177)) b!6349858))

(assert (= (and b!6349858 c!1155178) b!6349864))

(assert (= (and b!6349858 (not c!1155178)) b!6349867))

(assert (= (and b!6349864 (not res!2612864)) b!6349857))

(assert (= (and b!6349867 c!1155175) b!6349866))

(assert (= (and b!6349867 (not c!1155175)) b!6349862))

(assert (= (and b!6349866 (not res!2612865)) b!6349859))

(assert (= (or b!6349859 b!6349862) bm!541421))

(assert (= (or b!6349863 b!6349866) bm!541420))

(declare-fun m!7157092 () Bool)

(assert (=> b!6349857 m!7157092))

(assert (=> bm!541420 m!7155846))

(declare-fun m!7157094 () Bool)

(assert (=> bm!541421 m!7157094))

(declare-fun m!7157096 () Bool)

(assert (=> b!6349864 m!7157096))

(assert (=> b!6348809 d!1992509))

(declare-fun d!1992533 () Bool)

(assert (=> d!1992533 (= (isEmpty!37030 (t!378652 (unfocusZipperList!1676 zl!343))) ((_ is Nil!64940) (t!378652 (unfocusZipperList!1676 zl!343))))))

(assert (=> b!6348935 d!1992533))

(declare-fun bm!541437 () Bool)

(declare-fun call!541443 () Int)

(declare-fun call!541442 () Int)

(assert (=> bm!541437 (= call!541443 call!541442)))

(declare-fun b!6349940 () Bool)

(declare-fun e!3856488 () Int)

(assert (=> b!6349940 (= e!3856488 1)))

(declare-fun c!1155207 () Bool)

(declare-fun c!1155210 () Bool)

(declare-fun bm!541438 () Bool)

(assert (=> bm!541438 (= call!541442 (regexDepthTotal!212 (ite c!1155207 (reg!16584 (h!71388 (exprs!6139 lt!2364171))) (ite c!1155210 (regTwo!33023 (h!71388 (exprs!6139 lt!2364171))) (regTwo!33022 (h!71388 (exprs!6139 lt!2364171)))))))))

(declare-fun b!6349941 () Bool)

(declare-fun e!3856490 () Int)

(declare-fun e!3856489 () Int)

(assert (=> b!6349941 (= e!3856490 e!3856489)))

(declare-fun c!1155209 () Bool)

(assert (=> b!6349941 (= c!1155209 ((_ is Concat!25100) (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun b!6349943 () Bool)

(assert (=> b!6349943 (= e!3856489 1)))

(declare-fun b!6349944 () Bool)

(declare-fun e!3856487 () Int)

(assert (=> b!6349944 (= e!3856488 e!3856487)))

(assert (=> b!6349944 (= c!1155207 ((_ is Star!16255) (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun b!6349945 () Bool)

(assert (=> b!6349945 (= c!1155210 ((_ is Union!16255) (h!71388 (exprs!6139 lt!2364171))))))

(assert (=> b!6349945 (= e!3856487 e!3856490)))

(declare-fun bm!541439 () Bool)

(declare-fun call!541444 () Int)

(assert (=> bm!541439 (= call!541444 (regexDepthTotal!212 (ite c!1155210 (regOne!33023 (h!71388 (exprs!6139 lt!2364171))) (regOne!33022 (h!71388 (exprs!6139 lt!2364171))))))))

(declare-fun b!6349946 () Bool)

(assert (=> b!6349946 (= e!3856489 (+ 1 call!541444 call!541443))))

(declare-fun b!6349947 () Bool)

(assert (=> b!6349947 (= e!3856490 (+ 1 call!541444 call!541443))))

(declare-fun b!6349942 () Bool)

(assert (=> b!6349942 (= e!3856487 (+ 1 call!541442))))

(declare-fun d!1992535 () Bool)

(declare-fun lt!2364444 () Int)

(assert (=> d!1992535 (> lt!2364444 0)))

(assert (=> d!1992535 (= lt!2364444 e!3856488)))

(declare-fun c!1155208 () Bool)

(assert (=> d!1992535 (= c!1155208 ((_ is ElementMatch!16255) (h!71388 (exprs!6139 lt!2364171))))))

(assert (=> d!1992535 (= (regexDepthTotal!212 (h!71388 (exprs!6139 lt!2364171))) lt!2364444)))

(assert (= (and d!1992535 c!1155208) b!6349940))

(assert (= (and d!1992535 (not c!1155208)) b!6349944))

(assert (= (and b!6349944 c!1155207) b!6349942))

(assert (= (and b!6349944 (not c!1155207)) b!6349945))

(assert (= (and b!6349945 c!1155210) b!6349947))

(assert (= (and b!6349945 (not c!1155210)) b!6349941))

(assert (= (and b!6349941 c!1155209) b!6349946))

(assert (= (and b!6349941 (not c!1155209)) b!6349943))

(assert (= (or b!6349947 b!6349946) bm!541437))

(assert (= (or b!6349947 b!6349946) bm!541439))

(assert (= (or b!6349942 bm!541437) bm!541438))

(declare-fun m!7157116 () Bool)

(assert (=> bm!541438 m!7157116))

(declare-fun m!7157118 () Bool)

(assert (=> bm!541439 m!7157118))

(assert (=> b!6348374 d!1992535))

(declare-fun d!1992539 () Bool)

(declare-fun lt!2364445 () Int)

(assert (=> d!1992539 (>= lt!2364445 0)))

(declare-fun e!3856491 () Int)

(assert (=> d!1992539 (= lt!2364445 e!3856491)))

(declare-fun c!1155211 () Bool)

(assert (=> d!1992539 (= c!1155211 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171))))))))

(assert (=> d!1992539 (= (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))) lt!2364445)))

(declare-fun b!6349948 () Bool)

(assert (=> b!6349948 (= e!3856491 (+ (regexDepthTotal!212 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))))) (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))))))))))

(declare-fun b!6349949 () Bool)

(assert (=> b!6349949 (= e!3856491 1)))

(assert (= (and d!1992539 c!1155211) b!6349948))

(assert (= (and d!1992539 (not c!1155211)) b!6349949))

(declare-fun m!7157120 () Bool)

(assert (=> b!6349948 m!7157120))

(declare-fun m!7157122 () Bool)

(assert (=> b!6349948 m!7157122))

(assert (=> b!6348374 d!1992539))

(declare-fun d!1992541 () Bool)

(assert (=> d!1992541 (= (head!13002 lt!2364159) (h!71388 lt!2364159))))

(assert (=> b!6348889 d!1992541))

(declare-fun d!1992543 () Bool)

(assert (=> d!1992543 (= (isEmpty!37034 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326)) (not ((_ is Some!16145) (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326))))))

(assert (=> d!1992029 d!1992543))

(declare-fun d!1992545 () Bool)

(assert (=> d!1992545 (= (isEmpty!37033 (t!378653 s!2326)) ((_ is Nil!64941) (t!378653 s!2326)))))

(assert (=> d!1991939 d!1992545))

(assert (=> d!1992053 d!1992037))

(assert (=> d!1992053 d!1992025))

(declare-fun d!1992547 () Bool)

(assert (=> d!1992547 (= (matchR!8438 lt!2364179 s!2326) (matchRSpec!3356 lt!2364179 s!2326))))

(assert (=> d!1992547 true))

(declare-fun _$88!5024 () Unit!158351)

(assert (=> d!1992547 (= (choose!47109 lt!2364179 s!2326) _$88!5024)))

(declare-fun bs!1590244 () Bool)

(assert (= bs!1590244 d!1992547))

(assert (=> bs!1590244 m!7155332))

(assert (=> bs!1590244 m!7155328))

(assert (=> d!1992053 d!1992547))

(declare-fun b!6349950 () Bool)

(declare-fun e!3856493 () Bool)

(declare-fun e!3856496 () Bool)

(assert (=> b!6349950 (= e!3856493 e!3856496)))

(declare-fun c!1155212 () Bool)

(assert (=> b!6349950 (= c!1155212 ((_ is Star!16255) lt!2364179))))

(declare-fun b!6349951 () Bool)

(declare-fun e!3856495 () Bool)

(declare-fun e!3856498 () Bool)

(assert (=> b!6349951 (= e!3856495 e!3856498)))

(declare-fun res!2612883 () Bool)

(assert (=> b!6349951 (=> (not res!2612883) (not e!3856498))))

(declare-fun call!541446 () Bool)

(assert (=> b!6349951 (= res!2612883 call!541446)))

(declare-fun bm!541440 () Bool)

(declare-fun call!541445 () Bool)

(declare-fun c!1155213 () Bool)

(assert (=> bm!541440 (= call!541445 (validRegex!7991 (ite c!1155213 (regTwo!33023 lt!2364179) (regTwo!33022 lt!2364179))))))

(declare-fun b!6349952 () Bool)

(declare-fun e!3856497 () Bool)

(assert (=> b!6349952 (= e!3856497 call!541445)))

(declare-fun b!6349953 () Bool)

(assert (=> b!6349953 (= e!3856498 call!541445)))

(declare-fun b!6349954 () Bool)

(declare-fun e!3856492 () Bool)

(declare-fun call!541447 () Bool)

(assert (=> b!6349954 (= e!3856492 call!541447)))

(declare-fun d!1992549 () Bool)

(declare-fun res!2612885 () Bool)

(assert (=> d!1992549 (=> res!2612885 e!3856493)))

(assert (=> d!1992549 (= res!2612885 ((_ is ElementMatch!16255) lt!2364179))))

(assert (=> d!1992549 (= (validRegex!7991 lt!2364179) e!3856493)))

(declare-fun bm!541441 () Bool)

(assert (=> bm!541441 (= call!541447 (validRegex!7991 (ite c!1155212 (reg!16584 lt!2364179) (ite c!1155213 (regOne!33023 lt!2364179) (regOne!33022 lt!2364179)))))))

(declare-fun b!6349955 () Bool)

(declare-fun res!2612882 () Bool)

(assert (=> b!6349955 (=> (not res!2612882) (not e!3856497))))

(assert (=> b!6349955 (= res!2612882 call!541446)))

(declare-fun e!3856494 () Bool)

(assert (=> b!6349955 (= e!3856494 e!3856497)))

(declare-fun b!6349956 () Bool)

(assert (=> b!6349956 (= e!3856496 e!3856494)))

(assert (=> b!6349956 (= c!1155213 ((_ is Union!16255) lt!2364179))))

(declare-fun b!6349957 () Bool)

(assert (=> b!6349957 (= e!3856496 e!3856492)))

(declare-fun res!2612886 () Bool)

(assert (=> b!6349957 (= res!2612886 (not (nullable!6248 (reg!16584 lt!2364179))))))

(assert (=> b!6349957 (=> (not res!2612886) (not e!3856492))))

(declare-fun bm!541442 () Bool)

(assert (=> bm!541442 (= call!541446 call!541447)))

(declare-fun b!6349958 () Bool)

(declare-fun res!2612884 () Bool)

(assert (=> b!6349958 (=> res!2612884 e!3856495)))

(assert (=> b!6349958 (= res!2612884 (not ((_ is Concat!25100) lt!2364179)))))

(assert (=> b!6349958 (= e!3856494 e!3856495)))

(assert (= (and d!1992549 (not res!2612885)) b!6349950))

(assert (= (and b!6349950 c!1155212) b!6349957))

(assert (= (and b!6349950 (not c!1155212)) b!6349956))

(assert (= (and b!6349957 res!2612886) b!6349954))

(assert (= (and b!6349956 c!1155213) b!6349955))

(assert (= (and b!6349956 (not c!1155213)) b!6349958))

(assert (= (and b!6349955 res!2612882) b!6349952))

(assert (= (and b!6349958 (not res!2612884)) b!6349951))

(assert (= (and b!6349951 res!2612883) b!6349953))

(assert (= (or b!6349952 b!6349953) bm!541440))

(assert (= (or b!6349955 b!6349951) bm!541442))

(assert (= (or b!6349954 bm!541442) bm!541441))

(declare-fun m!7157124 () Bool)

(assert (=> bm!541440 m!7157124))

(declare-fun m!7157126 () Bool)

(assert (=> bm!541441 m!7157126))

(declare-fun m!7157128 () Bool)

(assert (=> b!6349957 m!7157128))

(assert (=> d!1992053 d!1992549))

(declare-fun b!6349959 () Bool)

(declare-fun e!3856500 () Bool)

(declare-fun e!3856503 () Bool)

(assert (=> b!6349959 (= e!3856500 e!3856503)))

(declare-fun c!1155214 () Bool)

(assert (=> b!6349959 (= c!1155214 ((_ is Star!16255) (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))))))

(declare-fun b!6349960 () Bool)

(declare-fun e!3856502 () Bool)

(declare-fun e!3856505 () Bool)

(assert (=> b!6349960 (= e!3856502 e!3856505)))

(declare-fun res!2612888 () Bool)

(assert (=> b!6349960 (=> (not res!2612888) (not e!3856505))))

(declare-fun call!541449 () Bool)

(assert (=> b!6349960 (= res!2612888 call!541449)))

(declare-fun call!541448 () Bool)

(declare-fun c!1155215 () Bool)

(declare-fun bm!541443 () Bool)

(assert (=> bm!541443 (= call!541448 (validRegex!7991 (ite c!1155215 (regTwo!33023 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))) (regTwo!33022 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))))))))

(declare-fun b!6349961 () Bool)

(declare-fun e!3856504 () Bool)

(assert (=> b!6349961 (= e!3856504 call!541448)))

(declare-fun b!6349962 () Bool)

(assert (=> b!6349962 (= e!3856505 call!541448)))

(declare-fun b!6349963 () Bool)

(declare-fun e!3856499 () Bool)

(declare-fun call!541450 () Bool)

(assert (=> b!6349963 (= e!3856499 call!541450)))

(declare-fun d!1992551 () Bool)

(declare-fun res!2612890 () Bool)

(assert (=> d!1992551 (=> res!2612890 e!3856500)))

(assert (=> d!1992551 (= res!2612890 ((_ is ElementMatch!16255) (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))))))

(assert (=> d!1992551 (= (validRegex!7991 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))) e!3856500)))

(declare-fun bm!541444 () Bool)

(assert (=> bm!541444 (= call!541450 (validRegex!7991 (ite c!1155214 (reg!16584 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))) (ite c!1155215 (regOne!33023 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))) (regOne!33022 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292))))))))))

(declare-fun b!6349964 () Bool)

(declare-fun res!2612887 () Bool)

(assert (=> b!6349964 (=> (not res!2612887) (not e!3856504))))

(assert (=> b!6349964 (= res!2612887 call!541449)))

(declare-fun e!3856501 () Bool)

(assert (=> b!6349964 (= e!3856501 e!3856504)))

(declare-fun b!6349965 () Bool)

(assert (=> b!6349965 (= e!3856503 e!3856501)))

(assert (=> b!6349965 (= c!1155215 ((_ is Union!16255) (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))))))

(declare-fun b!6349966 () Bool)

(assert (=> b!6349966 (= e!3856503 e!3856499)))

(declare-fun res!2612891 () Bool)

(assert (=> b!6349966 (= res!2612891 (not (nullable!6248 (reg!16584 (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292)))))))))

(assert (=> b!6349966 (=> (not res!2612891) (not e!3856499))))

(declare-fun bm!541445 () Bool)

(assert (=> bm!541445 (= call!541449 call!541450)))

(declare-fun b!6349967 () Bool)

(declare-fun res!2612889 () Bool)

(assert (=> b!6349967 (=> res!2612889 e!3856502)))

(assert (=> b!6349967 (= res!2612889 (not ((_ is Concat!25100) (ite c!1154719 (reg!16584 r!7292) (ite c!1154720 (regOne!33023 r!7292) (regOne!33022 r!7292))))))))

(assert (=> b!6349967 (= e!3856501 e!3856502)))

(assert (= (and d!1992551 (not res!2612890)) b!6349959))

(assert (= (and b!6349959 c!1155214) b!6349966))

(assert (= (and b!6349959 (not c!1155214)) b!6349965))

(assert (= (and b!6349966 res!2612891) b!6349963))

(assert (= (and b!6349965 c!1155215) b!6349964))

(assert (= (and b!6349965 (not c!1155215)) b!6349967))

(assert (= (and b!6349964 res!2612887) b!6349961))

(assert (= (and b!6349967 (not res!2612889)) b!6349960))

(assert (= (and b!6349960 res!2612888) b!6349962))

(assert (= (or b!6349961 b!6349962) bm!541443))

(assert (= (or b!6349964 b!6349960) bm!541445))

(assert (= (or b!6349963 bm!541445) bm!541444))

(declare-fun m!7157130 () Bool)

(assert (=> bm!541443 m!7157130))

(declare-fun m!7157132 () Bool)

(assert (=> bm!541444 m!7157132))

(declare-fun m!7157134 () Bool)

(assert (=> b!6349966 m!7157134))

(assert (=> bm!541179 d!1992551))

(declare-fun d!1992553 () Bool)

(assert (=> d!1992553 (= (nullable!6248 (reg!16584 (regTwo!33022 (regOne!33022 r!7292)))) (nullableFct!2195 (reg!16584 (regTwo!33022 (regOne!33022 r!7292)))))))

(declare-fun bs!1590258 () Bool)

(assert (= bs!1590258 d!1992553))

(declare-fun m!7157136 () Bool)

(assert (=> bs!1590258 m!7157136))

(assert (=> b!6348848 d!1992553))

(assert (=> bm!541206 d!1992417))

(declare-fun d!1992555 () Bool)

(assert (=> d!1992555 (= (Exists!3325 lambda!349167) (choose!47113 lambda!349167))))

(declare-fun bs!1590259 () Bool)

(assert (= bs!1590259 d!1992555))

(declare-fun m!7157138 () Bool)

(assert (=> bs!1590259 m!7157138))

(assert (=> d!1992047 d!1992555))

(declare-fun d!1992557 () Bool)

(assert (=> d!1992557 (= (Exists!3325 lambda!349168) (choose!47113 lambda!349168))))

(declare-fun bs!1590260 () Bool)

(assert (= bs!1590260 d!1992557))

(declare-fun m!7157140 () Bool)

(assert (=> bs!1590260 m!7157140))

(assert (=> d!1992047 d!1992557))

(declare-fun bs!1590265 () Bool)

(declare-fun d!1992559 () Bool)

(assert (= bs!1590265 (and d!1992559 b!6348025)))

(declare-fun lambda!349279 () Int)

(assert (=> bs!1590265 (not (= lambda!349279 lambda!349081))))

(assert (=> bs!1590265 (= lambda!349279 lambda!349080)))

(declare-fun bs!1590267 () Bool)

(assert (= bs!1590267 (and d!1992559 d!1992481)))

(assert (=> bs!1590267 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349279 lambda!349271))))

(declare-fun bs!1590268 () Bool)

(assert (= bs!1590268 (and d!1992559 d!1992017)))

(assert (=> bs!1590268 (not (= lambda!349279 lambda!349159))))

(assert (=> bs!1590268 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349279 lambda!349158))))

(declare-fun bs!1590269 () Bool)

(assert (= bs!1590269 (and d!1992559 d!1992047)))

(assert (=> bs!1590269 (= lambda!349279 lambda!349167)))

(declare-fun bs!1590270 () Bool)

(assert (= bs!1590270 (and d!1992559 d!1992445)))

(assert (=> bs!1590270 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349279 lambda!349261))))

(declare-fun bs!1590271 () Bool)

(assert (= bs!1590271 (and d!1992559 b!6348814)))

(assert (=> bs!1590271 (not (= lambda!349279 lambda!349162))))

(declare-fun bs!1590272 () Bool)

(assert (= bs!1590272 (and d!1992559 b!6348655)))

(assert (=> bs!1590272 (not (= lambda!349279 lambda!349147))))

(declare-fun bs!1590273 () Bool)

(assert (= bs!1590273 (and d!1992559 b!6349859)))

(assert (=> bs!1590273 (not (= lambda!349279 lambda!349273))))

(assert (=> bs!1590269 (not (= lambda!349279 lambda!349168))))

(declare-fun bs!1590275 () Bool)

(assert (= bs!1590275 (and d!1992559 b!6349862)))

(assert (=> bs!1590275 (not (= lambda!349279 lambda!349275))))

(declare-fun bs!1590276 () Bool)

(assert (= bs!1590276 (and d!1992559 d!1992015)))

(assert (=> bs!1590276 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349279 lambda!349153))))

(declare-fun bs!1590277 () Bool)

(assert (= bs!1590277 (and d!1992559 b!6348652)))

(assert (=> bs!1590277 (not (= lambda!349279 lambda!349146))))

(declare-fun bs!1590278 () Bool)

(assert (= bs!1590278 (and d!1992559 d!1992023)))

(assert (=> bs!1590278 (= lambda!349279 lambda!349160)))

(declare-fun bs!1590279 () Bool)

(assert (= bs!1590279 (and d!1992559 b!6348869)))

(assert (=> bs!1590279 (not (= lambda!349279 lambda!349165))))

(assert (=> bs!1590267 (not (= lambda!349279 lambda!349272))))

(declare-fun bs!1590280 () Bool)

(assert (= bs!1590280 (and d!1992559 b!6348005)))

(assert (=> bs!1590280 (not (= lambda!349279 lambda!349078))))

(declare-fun bs!1590281 () Bool)

(assert (= bs!1590281 (and d!1992559 b!6349681)))

(assert (=> bs!1590281 (not (= lambda!349279 lambda!349255))))

(declare-fun bs!1590282 () Bool)

(assert (= bs!1590282 (and d!1992559 b!6348811)))

(assert (=> bs!1590282 (not (= lambda!349279 lambda!349161))))

(declare-fun bs!1590283 () Bool)

(assert (= bs!1590283 (and d!1992559 b!6348866)))

(assert (=> bs!1590283 (not (= lambda!349279 lambda!349164))))

(declare-fun bs!1590284 () Bool)

(assert (= bs!1590284 (and d!1992559 b!6349684)))

(assert (=> bs!1590284 (not (= lambda!349279 lambda!349256))))

(assert (=> bs!1590280 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349279 lambda!349077))))

(assert (=> d!1992559 true))

(assert (=> d!1992559 true))

(assert (=> d!1992559 true))

(declare-fun lambda!349280 () Int)

(assert (=> bs!1590265 (= lambda!349280 lambda!349081)))

(assert (=> bs!1590265 (not (= lambda!349280 lambda!349080))))

(assert (=> bs!1590267 (not (= lambda!349280 lambda!349271))))

(declare-fun bs!1590289 () Bool)

(assert (= bs!1590289 d!1992559))

(assert (=> bs!1590289 (not (= lambda!349280 lambda!349279))))

(assert (=> bs!1590268 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349280 lambda!349159))))

(assert (=> bs!1590268 (not (= lambda!349280 lambda!349158))))

(assert (=> bs!1590269 (not (= lambda!349280 lambda!349167))))

(assert (=> bs!1590270 (not (= lambda!349280 lambda!349261))))

(assert (=> bs!1590271 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 lt!2364179)) (= lt!2364185 (regTwo!33022 lt!2364179))) (= lambda!349280 lambda!349162))))

(assert (=> bs!1590272 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349280 lambda!349147))))

(assert (=> bs!1590273 (not (= lambda!349280 lambda!349273))))

(assert (=> bs!1590269 (= lambda!349280 lambda!349168)))

(assert (=> bs!1590275 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 (regTwo!33023 lt!2364179))) (= lt!2364185 (regTwo!33022 (regTwo!33023 lt!2364179)))) (= lambda!349280 lambda!349275))))

(assert (=> bs!1590276 (not (= lambda!349280 lambda!349153))))

(assert (=> bs!1590277 (not (= lambda!349280 lambda!349146))))

(assert (=> bs!1590278 (not (= lambda!349280 lambda!349160))))

(assert (=> bs!1590279 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 lt!2364185)) (= lt!2364185 (regTwo!33022 lt!2364185))) (= lambda!349280 lambda!349165))))

(assert (=> bs!1590267 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349280 lambda!349272))))

(assert (=> bs!1590280 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349280 lambda!349078))))

(assert (=> bs!1590281 (not (= lambda!349280 lambda!349255))))

(assert (=> bs!1590282 (not (= lambda!349280 lambda!349161))))

(assert (=> bs!1590283 (not (= lambda!349280 lambda!349164))))

(assert (=> bs!1590284 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 (regOne!33023 lt!2364179))) (= lt!2364185 (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349280 lambda!349256))))

(assert (=> bs!1590280 (not (= lambda!349280 lambda!349077))))

(assert (=> d!1992559 true))

(assert (=> d!1992559 true))

(assert (=> d!1992559 true))

(assert (=> d!1992559 (= (Exists!3325 lambda!349279) (Exists!3325 lambda!349280))))

(assert (=> d!1992559 true))

(declare-fun _$90!2195 () Unit!158351)

(assert (=> d!1992559 (= (choose!47115 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326) _$90!2195)))

(declare-fun m!7157176 () Bool)

(assert (=> bs!1590289 m!7157176))

(declare-fun m!7157178 () Bool)

(assert (=> bs!1590289 m!7157178))

(assert (=> d!1992047 d!1992559))

(declare-fun b!6349992 () Bool)

(declare-fun e!3856522 () Bool)

(declare-fun e!3856525 () Bool)

(assert (=> b!6349992 (= e!3856522 e!3856525)))

(declare-fun c!1155225 () Bool)

(assert (=> b!6349992 (= c!1155225 ((_ is Star!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6349993 () Bool)

(declare-fun e!3856524 () Bool)

(declare-fun e!3856527 () Bool)

(assert (=> b!6349993 (= e!3856524 e!3856527)))

(declare-fun res!2612899 () Bool)

(assert (=> b!6349993 (=> (not res!2612899) (not e!3856527))))

(declare-fun call!541461 () Bool)

(assert (=> b!6349993 (= res!2612899 call!541461)))

(declare-fun bm!541455 () Bool)

(declare-fun call!541460 () Bool)

(declare-fun c!1155226 () Bool)

(assert (=> bm!541455 (= call!541460 (validRegex!7991 (ite c!1155226 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6349994 () Bool)

(declare-fun e!3856526 () Bool)

(assert (=> b!6349994 (= e!3856526 call!541460)))

(declare-fun b!6349995 () Bool)

(assert (=> b!6349995 (= e!3856527 call!541460)))

(declare-fun b!6349996 () Bool)

(declare-fun e!3856521 () Bool)

(declare-fun call!541462 () Bool)

(assert (=> b!6349996 (= e!3856521 call!541462)))

(declare-fun d!1992579 () Bool)

(declare-fun res!2612901 () Bool)

(assert (=> d!1992579 (=> res!2612901 e!3856522)))

(assert (=> d!1992579 (= res!2612901 ((_ is ElementMatch!16255) (regOne!33022 (regOne!33022 r!7292))))))

(assert (=> d!1992579 (= (validRegex!7991 (regOne!33022 (regOne!33022 r!7292))) e!3856522)))

(declare-fun bm!541456 () Bool)

(assert (=> bm!541456 (= call!541462 (validRegex!7991 (ite c!1155225 (reg!16584 (regOne!33022 (regOne!33022 r!7292))) (ite c!1155226 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))))))

(declare-fun b!6349997 () Bool)

(declare-fun res!2612898 () Bool)

(assert (=> b!6349997 (=> (not res!2612898) (not e!3856526))))

(assert (=> b!6349997 (= res!2612898 call!541461)))

(declare-fun e!3856523 () Bool)

(assert (=> b!6349997 (= e!3856523 e!3856526)))

(declare-fun b!6349998 () Bool)

(assert (=> b!6349998 (= e!3856525 e!3856523)))

(assert (=> b!6349998 (= c!1155226 ((_ is Union!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6349999 () Bool)

(assert (=> b!6349999 (= e!3856525 e!3856521)))

(declare-fun res!2612902 () Bool)

(assert (=> b!6349999 (= res!2612902 (not (nullable!6248 (reg!16584 (regOne!33022 (regOne!33022 r!7292))))))))

(assert (=> b!6349999 (=> (not res!2612902) (not e!3856521))))

(declare-fun bm!541457 () Bool)

(assert (=> bm!541457 (= call!541461 call!541462)))

(declare-fun b!6350000 () Bool)

(declare-fun res!2612900 () Bool)

(assert (=> b!6350000 (=> res!2612900 e!3856524)))

(assert (=> b!6350000 (= res!2612900 (not ((_ is Concat!25100) (regOne!33022 (regOne!33022 r!7292)))))))

(assert (=> b!6350000 (= e!3856523 e!3856524)))

(assert (= (and d!1992579 (not res!2612901)) b!6349992))

(assert (= (and b!6349992 c!1155225) b!6349999))

(assert (= (and b!6349992 (not c!1155225)) b!6349998))

(assert (= (and b!6349999 res!2612902) b!6349996))

(assert (= (and b!6349998 c!1155226) b!6349997))

(assert (= (and b!6349998 (not c!1155226)) b!6350000))

(assert (= (and b!6349997 res!2612898) b!6349994))

(assert (= (and b!6350000 (not res!2612900)) b!6349993))

(assert (= (and b!6349993 res!2612899) b!6349995))

(assert (= (or b!6349994 b!6349995) bm!541455))

(assert (= (or b!6349997 b!6349993) bm!541457))

(assert (= (or b!6349996 bm!541457) bm!541456))

(declare-fun m!7157180 () Bool)

(assert (=> bm!541455 m!7157180))

(declare-fun m!7157182 () Bool)

(assert (=> bm!541456 m!7157182))

(declare-fun m!7157184 () Bool)

(assert (=> b!6349999 m!7157184))

(assert (=> d!1992047 d!1992579))

(declare-fun b!6350015 () Bool)

(declare-fun e!3856550 () Bool)

(declare-fun e!3856545 () Bool)

(assert (=> b!6350015 (= e!3856550 e!3856545)))

(declare-fun res!2612914 () Bool)

(declare-fun call!541469 () Bool)

(assert (=> b!6350015 (= res!2612914 call!541469)))

(assert (=> b!6350015 (=> (not res!2612914) (not e!3856545))))

(declare-fun b!6350016 () Bool)

(declare-fun e!3856540 () Bool)

(declare-fun call!541467 () Bool)

(assert (=> b!6350016 (= e!3856540 call!541467)))

(declare-fun b!6350017 () Bool)

(declare-fun e!3856547 () Bool)

(assert (=> b!6350017 (= e!3856547 e!3856550)))

(declare-fun c!1155231 () Bool)

(assert (=> b!6350017 (= c!1155231 ((_ is Union!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6350018 () Bool)

(assert (=> b!6350018 (= e!3856545 call!541467)))

(declare-fun bm!541462 () Bool)

(assert (=> bm!541462 (= call!541467 (nullable!6248 (ite c!1155231 (regTwo!33023 (regOne!33022 (regOne!33022 r!7292))) (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6350019 () Bool)

(assert (=> b!6350019 (= e!3856550 e!3856540)))

(declare-fun res!2612924 () Bool)

(assert (=> b!6350019 (= res!2612924 call!541469)))

(assert (=> b!6350019 (=> res!2612924 e!3856540)))

(declare-fun bm!541463 () Bool)

(assert (=> bm!541463 (= call!541469 (nullable!6248 (ite c!1155231 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun d!1992581 () Bool)

(declare-fun res!2612925 () Bool)

(declare-fun e!3856548 () Bool)

(assert (=> d!1992581 (=> res!2612925 e!3856548)))

(assert (=> d!1992581 (= res!2612925 ((_ is EmptyExpr!16255) (regOne!33022 (regOne!33022 r!7292))))))

(assert (=> d!1992581 (= (nullableFct!2195 (regOne!33022 (regOne!33022 r!7292))) e!3856548)))

(declare-fun b!6350020 () Bool)

(declare-fun e!3856542 () Bool)

(assert (=> b!6350020 (= e!3856548 e!3856542)))

(declare-fun res!2612915 () Bool)

(assert (=> b!6350020 (=> (not res!2612915) (not e!3856542))))

(assert (=> b!6350020 (= res!2612915 (and (not ((_ is EmptyLang!16255) (regOne!33022 (regOne!33022 r!7292)))) (not ((_ is ElementMatch!16255) (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6350021 () Bool)

(assert (=> b!6350021 (= e!3856542 e!3856547)))

(declare-fun res!2612917 () Bool)

(assert (=> b!6350021 (=> res!2612917 e!3856547)))

(assert (=> b!6350021 (= res!2612917 ((_ is Star!16255) (regOne!33022 (regOne!33022 r!7292))))))

(assert (= (and d!1992581 (not res!2612925)) b!6350020))

(assert (= (and b!6350020 res!2612915) b!6350021))

(assert (= (and b!6350021 (not res!2612917)) b!6350017))

(assert (= (and b!6350017 c!1155231) b!6350019))

(assert (= (and b!6350017 (not c!1155231)) b!6350015))

(assert (= (and b!6350019 (not res!2612924)) b!6350016))

(assert (= (and b!6350015 res!2612914) b!6350018))

(assert (= (or b!6350016 b!6350018) bm!541462))

(assert (= (or b!6350019 b!6350015) bm!541463))

(declare-fun m!7157188 () Bool)

(assert (=> bm!541462 m!7157188))

(declare-fun m!7157190 () Bool)

(assert (=> bm!541463 m!7157190))

(assert (=> d!1992067 d!1992581))

(declare-fun d!1992585 () Bool)

(declare-fun e!3856576 () Bool)

(assert (=> d!1992585 e!3856576))

(declare-fun res!2612931 () Bool)

(assert (=> d!1992585 (=> (not res!2612931) (not e!3856576))))

(declare-fun lt!2364451 () List!65065)

(declare-fun content!12256 (List!65065) (InoxSet C!32780))

(assert (=> d!1992585 (= res!2612931 (= (content!12256 lt!2364451) ((_ map or) (content!12256 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))) (content!12256 (t!378653 s!2326)))))))

(declare-fun e!3856575 () List!65065)

(assert (=> d!1992585 (= lt!2364451 e!3856575)))

(declare-fun c!1155235 () Bool)

(assert (=> d!1992585 (= c!1155235 ((_ is Nil!64941) (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))))))

(assert (=> d!1992585 (= (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326)) lt!2364451)))

(declare-fun b!6350104 () Bool)

(assert (=> b!6350104 (= e!3856575 (t!378653 s!2326))))

(declare-fun b!6350106 () Bool)

(declare-fun res!2612930 () Bool)

(assert (=> b!6350106 (=> (not res!2612930) (not e!3856576))))

(declare-fun size!40344 (List!65065) Int)

(assert (=> b!6350106 (= res!2612930 (= (size!40344 lt!2364451) (+ (size!40344 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))) (size!40344 (t!378653 s!2326)))))))

(declare-fun b!6350105 () Bool)

(assert (=> b!6350105 (= e!3856575 (Cons!64941 (h!71389 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))) (++!14324 (t!378653 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))) (t!378653 s!2326))))))

(declare-fun b!6350107 () Bool)

(assert (=> b!6350107 (= e!3856576 (or (not (= (t!378653 s!2326) Nil!64941)) (= lt!2364451 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)))))))

(assert (= (and d!1992585 c!1155235) b!6350104))

(assert (= (and d!1992585 (not c!1155235)) b!6350105))

(assert (= (and d!1992585 res!2612931) b!6350106))

(assert (= (and b!6350106 res!2612930) b!6350107))

(declare-fun m!7157198 () Bool)

(assert (=> d!1992585 m!7157198))

(assert (=> d!1992585 m!7155936))

(declare-fun m!7157200 () Bool)

(assert (=> d!1992585 m!7157200))

(declare-fun m!7157202 () Bool)

(assert (=> d!1992585 m!7157202))

(declare-fun m!7157204 () Bool)

(assert (=> b!6350106 m!7157204))

(assert (=> b!6350106 m!7155936))

(declare-fun m!7157206 () Bool)

(assert (=> b!6350106 m!7157206))

(declare-fun m!7157208 () Bool)

(assert (=> b!6350106 m!7157208))

(declare-fun m!7157210 () Bool)

(assert (=> b!6350105 m!7157210))

(assert (=> b!6348830 d!1992585))

(declare-fun d!1992589 () Bool)

(declare-fun e!3856585 () Bool)

(assert (=> d!1992589 e!3856585))

(declare-fun res!2612933 () Bool)

(assert (=> d!1992589 (=> (not res!2612933) (not e!3856585))))

(declare-fun lt!2364452 () List!65065)

(assert (=> d!1992589 (= res!2612933 (= (content!12256 lt!2364452) ((_ map or) (content!12256 Nil!64941) (content!12256 (Cons!64941 (h!71389 s!2326) Nil!64941)))))))

(declare-fun e!3856583 () List!65065)

(assert (=> d!1992589 (= lt!2364452 e!3856583)))

(declare-fun c!1155236 () Bool)

(assert (=> d!1992589 (= c!1155236 ((_ is Nil!64941) Nil!64941))))

(assert (=> d!1992589 (= (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) lt!2364452)))

(declare-fun b!6350130 () Bool)

(assert (=> b!6350130 (= e!3856583 (Cons!64941 (h!71389 s!2326) Nil!64941))))

(declare-fun b!6350132 () Bool)

(declare-fun res!2612932 () Bool)

(assert (=> b!6350132 (=> (not res!2612932) (not e!3856585))))

(assert (=> b!6350132 (= res!2612932 (= (size!40344 lt!2364452) (+ (size!40344 Nil!64941) (size!40344 (Cons!64941 (h!71389 s!2326) Nil!64941)))))))

(declare-fun b!6350131 () Bool)

(assert (=> b!6350131 (= e!3856583 (Cons!64941 (h!71389 Nil!64941) (++!14324 (t!378653 Nil!64941) (Cons!64941 (h!71389 s!2326) Nil!64941))))))

(declare-fun b!6350133 () Bool)

(assert (=> b!6350133 (= e!3856585 (or (not (= (Cons!64941 (h!71389 s!2326) Nil!64941) Nil!64941)) (= lt!2364452 Nil!64941)))))

(assert (= (and d!1992589 c!1155236) b!6350130))

(assert (= (and d!1992589 (not c!1155236)) b!6350131))

(assert (= (and d!1992589 res!2612933) b!6350132))

(assert (= (and b!6350132 res!2612932) b!6350133))

(declare-fun m!7157212 () Bool)

(assert (=> d!1992589 m!7157212))

(declare-fun m!7157214 () Bool)

(assert (=> d!1992589 m!7157214))

(declare-fun m!7157216 () Bool)

(assert (=> d!1992589 m!7157216))

(declare-fun m!7157218 () Bool)

(assert (=> b!6350132 m!7157218))

(declare-fun m!7157220 () Bool)

(assert (=> b!6350132 m!7157220))

(declare-fun m!7157222 () Bool)

(assert (=> b!6350132 m!7157222))

(declare-fun m!7157224 () Bool)

(assert (=> b!6350131 m!7157224))

(assert (=> b!6348830 d!1992589))

(declare-fun d!1992591 () Bool)

(assert (=> d!1992591 (= (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326)) s!2326)))

(declare-fun lt!2364455 () Unit!158351)

(declare-fun choose!47121 (List!65065 C!32780 List!65065 List!65065) Unit!158351)

(assert (=> d!1992591 (= lt!2364455 (choose!47121 Nil!64941 (h!71389 s!2326) (t!378653 s!2326) s!2326))))

(assert (=> d!1992591 (= (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) (t!378653 s!2326))) s!2326)))

(assert (=> d!1992591 (= (lemmaMoveElementToOtherListKeepsConcatEq!2419 Nil!64941 (h!71389 s!2326) (t!378653 s!2326) s!2326) lt!2364455)))

(declare-fun bs!1590342 () Bool)

(assert (= bs!1590342 d!1992591))

(assert (=> bs!1590342 m!7155936))

(assert (=> bs!1590342 m!7155936))

(assert (=> bs!1590342 m!7155938))

(declare-fun m!7157242 () Bool)

(assert (=> bs!1590342 m!7157242))

(declare-fun m!7157244 () Bool)

(assert (=> bs!1590342 m!7157244))

(assert (=> b!6348830 d!1992591))

(declare-fun b!6350168 () Bool)

(declare-fun lt!2364457 () Unit!158351)

(declare-fun lt!2364458 () Unit!158351)

(assert (=> b!6350168 (= lt!2364457 lt!2364458)))

(assert (=> b!6350168 (= (++!14324 (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (Cons!64941 (h!71389 (t!378653 s!2326)) Nil!64941)) (t!378653 (t!378653 s!2326))) s!2326)))

(assert (=> b!6350168 (= lt!2364458 (lemmaMoveElementToOtherListKeepsConcatEq!2419 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (h!71389 (t!378653 s!2326)) (t!378653 (t!378653 s!2326)) s!2326))))

(declare-fun e!3856598 () Option!16146)

(assert (=> b!6350168 (= e!3856598 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (Cons!64941 (h!71389 (t!378653 s!2326)) Nil!64941)) (t!378653 (t!378653 s!2326)) s!2326))))

(declare-fun b!6350169 () Bool)

(declare-fun e!3856600 () Bool)

(declare-fun lt!2364456 () Option!16146)

(assert (=> b!6350169 (= e!3856600 (= (++!14324 (_1!36537 (get!22467 lt!2364456)) (_2!36537 (get!22467 lt!2364456))) s!2326))))

(declare-fun b!6350170 () Bool)

(declare-fun res!2612935 () Bool)

(assert (=> b!6350170 (=> (not res!2612935) (not e!3856600))))

(assert (=> b!6350170 (= res!2612935 (matchR!8438 (regOne!33022 (regOne!33022 r!7292)) (_1!36537 (get!22467 lt!2364456))))))

(declare-fun b!6350171 () Bool)

(declare-fun res!2612934 () Bool)

(assert (=> b!6350171 (=> (not res!2612934) (not e!3856600))))

(assert (=> b!6350171 (= res!2612934 (matchR!8438 lt!2364185 (_2!36537 (get!22467 lt!2364456))))))

(declare-fun d!1992617 () Bool)

(declare-fun e!3856599 () Bool)

(assert (=> d!1992617 e!3856599))

(declare-fun res!2612937 () Bool)

(assert (=> d!1992617 (=> res!2612937 e!3856599)))

(assert (=> d!1992617 (= res!2612937 e!3856600)))

(declare-fun res!2612938 () Bool)

(assert (=> d!1992617 (=> (not res!2612938) (not e!3856600))))

(assert (=> d!1992617 (= res!2612938 (isDefined!12849 lt!2364456))))

(declare-fun e!3856597 () Option!16146)

(assert (=> d!1992617 (= lt!2364456 e!3856597)))

(declare-fun c!1155238 () Bool)

(declare-fun e!3856596 () Bool)

(assert (=> d!1992617 (= c!1155238 e!3856596)))

(declare-fun res!2612936 () Bool)

(assert (=> d!1992617 (=> (not res!2612936) (not e!3856596))))

(assert (=> d!1992617 (= res!2612936 (matchR!8438 (regOne!33022 (regOne!33022 r!7292)) (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))))))

(assert (=> d!1992617 (validRegex!7991 (regOne!33022 (regOne!33022 r!7292)))))

(assert (=> d!1992617 (= (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326) s!2326) lt!2364456)))

(declare-fun b!6350172 () Bool)

(assert (=> b!6350172 (= e!3856599 (not (isDefined!12849 lt!2364456)))))

(declare-fun b!6350173 () Bool)

(assert (=> b!6350173 (= e!3856597 e!3856598)))

(declare-fun c!1155237 () Bool)

(assert (=> b!6350173 (= c!1155237 ((_ is Nil!64941) (t!378653 s!2326)))))

(declare-fun b!6350174 () Bool)

(assert (=> b!6350174 (= e!3856598 None!16145)))

(declare-fun b!6350175 () Bool)

(assert (=> b!6350175 (= e!3856597 (Some!16145 (tuple2!66469 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326))))))

(declare-fun b!6350176 () Bool)

(assert (=> b!6350176 (= e!3856596 (matchR!8438 lt!2364185 (t!378653 s!2326)))))

(assert (= (and d!1992617 res!2612936) b!6350176))

(assert (= (and d!1992617 c!1155238) b!6350175))

(assert (= (and d!1992617 (not c!1155238)) b!6350173))

(assert (= (and b!6350173 c!1155237) b!6350174))

(assert (= (and b!6350173 (not c!1155237)) b!6350168))

(assert (= (and d!1992617 res!2612938) b!6350170))

(assert (= (and b!6350170 res!2612935) b!6350171))

(assert (= (and b!6350171 res!2612934) b!6350169))

(assert (= (and d!1992617 (not res!2612937)) b!6350172))

(declare-fun m!7157246 () Bool)

(assert (=> b!6350172 m!7157246))

(declare-fun m!7157248 () Bool)

(assert (=> b!6350169 m!7157248))

(declare-fun m!7157250 () Bool)

(assert (=> b!6350169 m!7157250))

(assert (=> b!6350170 m!7157248))

(declare-fun m!7157252 () Bool)

(assert (=> b!6350170 m!7157252))

(declare-fun m!7157254 () Bool)

(assert (=> b!6350176 m!7157254))

(assert (=> d!1992617 m!7157246))

(assert (=> d!1992617 m!7155936))

(declare-fun m!7157256 () Bool)

(assert (=> d!1992617 m!7157256))

(assert (=> d!1992617 m!7155966))

(assert (=> b!6350168 m!7155936))

(declare-fun m!7157258 () Bool)

(assert (=> b!6350168 m!7157258))

(assert (=> b!6350168 m!7157258))

(declare-fun m!7157260 () Bool)

(assert (=> b!6350168 m!7157260))

(assert (=> b!6350168 m!7155936))

(declare-fun m!7157262 () Bool)

(assert (=> b!6350168 m!7157262))

(assert (=> b!6350168 m!7157258))

(declare-fun m!7157264 () Bool)

(assert (=> b!6350168 m!7157264))

(assert (=> b!6350171 m!7157248))

(declare-fun m!7157266 () Bool)

(assert (=> b!6350171 m!7157266))

(assert (=> b!6348830 d!1992617))

(declare-fun d!1992619 () Bool)

(assert (=> d!1992619 (= (head!13003 s!2326) (h!71389 s!2326))))

(assert (=> b!6348861 d!1992619))

(declare-fun e!3856603 () (InoxSet Context!11278))

(declare-fun b!6350177 () Bool)

(declare-fun call!541470 () (InoxSet Context!11278))

(assert (=> b!6350177 (= e!3856603 ((_ map or) call!541470 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))))) (h!71389 s!2326))))))

(declare-fun bm!541465 () Bool)

(assert (=> bm!541465 (= call!541470 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171))))) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))))) (h!71389 s!2326)))))

(declare-fun b!6350178 () Bool)

(declare-fun e!3856602 () (InoxSet Context!11278))

(assert (=> b!6350178 (= e!3856602 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6350179 () Bool)

(assert (=> b!6350179 (= e!3856602 call!541470)))

(declare-fun b!6350180 () Bool)

(declare-fun e!3856601 () Bool)

(assert (=> b!6350180 (= e!3856601 (nullable!6248 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))))))))

(declare-fun d!1992621 () Bool)

(declare-fun c!1155240 () Bool)

(assert (=> d!1992621 (= c!1155240 e!3856601)))

(declare-fun res!2612939 () Bool)

(assert (=> d!1992621 (=> (not res!2612939) (not e!3856601))))

(assert (=> d!1992621 (= res!2612939 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171))))))))

(assert (=> d!1992621 (= (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 lt!2364171))) (h!71389 s!2326)) e!3856603)))

(declare-fun b!6350181 () Bool)

(assert (=> b!6350181 (= e!3856603 e!3856602)))

(declare-fun c!1155239 () Bool)

(assert (=> b!6350181 (= c!1155239 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171))))))))

(assert (= (and d!1992621 res!2612939) b!6350180))

(assert (= (and d!1992621 c!1155240) b!6350177))

(assert (= (and d!1992621 (not c!1155240)) b!6350181))

(assert (= (and b!6350181 c!1155239) b!6350179))

(assert (= (and b!6350181 (not c!1155239)) b!6350178))

(assert (= (or b!6350177 b!6350179) bm!541465))

(declare-fun m!7157268 () Bool)

(assert (=> b!6350177 m!7157268))

(declare-fun m!7157270 () Bool)

(assert (=> bm!541465 m!7157270))

(declare-fun m!7157272 () Bool)

(assert (=> b!6350180 m!7157272))

(assert (=> b!6348713 d!1992621))

(declare-fun b!6350182 () Bool)

(declare-fun e!3856606 () (InoxSet Context!11278))

(declare-fun e!3856604 () (InoxSet Context!11278))

(assert (=> b!6350182 (= e!3856606 e!3856604)))

(declare-fun c!1155244 () Bool)

(assert (=> b!6350182 (= c!1155244 ((_ is Concat!25100) (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun b!6350183 () Bool)

(declare-fun e!3856608 () (InoxSet Context!11278))

(declare-fun e!3856605 () (InoxSet Context!11278))

(assert (=> b!6350183 (= e!3856608 e!3856605)))

(declare-fun c!1155245 () Bool)

(assert (=> b!6350183 (= c!1155245 ((_ is Union!16255) (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun b!6350184 () Bool)

(declare-fun c!1155242 () Bool)

(assert (=> b!6350184 (= c!1155242 ((_ is Star!16255) (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun e!3856609 () (InoxSet Context!11278))

(assert (=> b!6350184 (= e!3856604 e!3856609)))

(declare-fun b!6350185 () Bool)

(declare-fun call!541473 () (InoxSet Context!11278))

(declare-fun call!541472 () (InoxSet Context!11278))

(assert (=> b!6350185 (= e!3856606 ((_ map or) call!541473 call!541472))))

(declare-fun c!1155243 () Bool)

(declare-fun d!1992623 () Bool)

(assert (=> d!1992623 (= c!1155243 (and ((_ is ElementMatch!16255) (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (= (c!1154628 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (h!71389 s!2326))))))

(assert (=> d!1992623 (= (derivationStepZipperDown!1503 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))) (ite (or c!1154861 c!1154857) lt!2364161 (Context!11279 call!541233)) (h!71389 s!2326)) e!3856608)))

(declare-fun call!541471 () List!65064)

(declare-fun bm!541466 () Bool)

(assert (=> bm!541466 (= call!541473 (derivationStepZipperDown!1503 (ite c!1155245 (regOne!33023 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (regOne!33022 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))))) (ite c!1155245 (ite (or c!1154861 c!1154857) lt!2364161 (Context!11279 call!541233)) (Context!11279 call!541471)) (h!71389 s!2326)))))

(declare-fun b!6350186 () Bool)

(declare-fun e!3856607 () Bool)

(assert (=> b!6350186 (= e!3856607 (nullable!6248 (regOne!33022 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))))))))

(declare-fun b!6350187 () Bool)

(declare-fun call!541475 () (InoxSet Context!11278))

(assert (=> b!6350187 (= e!3856604 call!541475)))

(declare-fun b!6350188 () Bool)

(assert (=> b!6350188 (= e!3856609 call!541475)))

(declare-fun b!6350189 () Bool)

(assert (=> b!6350189 (= e!3856608 (store ((as const (Array Context!11278 Bool)) false) (ite (or c!1154861 c!1154857) lt!2364161 (Context!11279 call!541233)) true))))

(declare-fun bm!541467 () Bool)

(declare-fun call!541476 () (InoxSet Context!11278))

(assert (=> bm!541467 (= call!541472 call!541476)))

(declare-fun bm!541468 () Bool)

(declare-fun call!541474 () List!65064)

(declare-fun c!1155241 () Bool)

(assert (=> bm!541468 (= call!541476 (derivationStepZipperDown!1503 (ite c!1155245 (regTwo!33023 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (ite c!1155241 (regTwo!33022 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (ite c!1155244 (regOne!33022 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (reg!16584 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))))))) (ite (or c!1155245 c!1155241) (ite (or c!1154861 c!1154857) lt!2364161 (Context!11279 call!541233)) (Context!11279 call!541474)) (h!71389 s!2326)))))

(declare-fun b!6350190 () Bool)

(assert (=> b!6350190 (= e!3856605 ((_ map or) call!541473 call!541476))))

(declare-fun bm!541469 () Bool)

(assert (=> bm!541469 (= call!541471 ($colon$colon!2116 (exprs!6139 (ite (or c!1154861 c!1154857) lt!2364161 (Context!11279 call!541233))) (ite (or c!1155241 c!1155244) (regTwo!33022 (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))) (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343))))))))))))

(declare-fun bm!541470 () Bool)

(assert (=> bm!541470 (= call!541474 call!541471)))

(declare-fun b!6350191 () Bool)

(assert (=> b!6350191 (= c!1155241 e!3856607)))

(declare-fun res!2612940 () Bool)

(assert (=> b!6350191 (=> (not res!2612940) (not e!3856607))))

(assert (=> b!6350191 (= res!2612940 ((_ is Concat!25100) (ite c!1154861 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154857 (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1154860 (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))))

(assert (=> b!6350191 (= e!3856605 e!3856606)))

(declare-fun bm!541471 () Bool)

(assert (=> bm!541471 (= call!541475 call!541472)))

(declare-fun b!6350192 () Bool)

(assert (=> b!6350192 (= e!3856609 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992623 c!1155243) b!6350189))

(assert (= (and d!1992623 (not c!1155243)) b!6350183))

(assert (= (and b!6350183 c!1155245) b!6350190))

(assert (= (and b!6350183 (not c!1155245)) b!6350191))

(assert (= (and b!6350191 res!2612940) b!6350186))

(assert (= (and b!6350191 c!1155241) b!6350185))

(assert (= (and b!6350191 (not c!1155241)) b!6350182))

(assert (= (and b!6350182 c!1155244) b!6350187))

(assert (= (and b!6350182 (not c!1155244)) b!6350184))

(assert (= (and b!6350184 c!1155242) b!6350188))

(assert (= (and b!6350184 (not c!1155242)) b!6350192))

(assert (= (or b!6350187 b!6350188) bm!541470))

(assert (= (or b!6350187 b!6350188) bm!541471))

(assert (= (or b!6350185 bm!541470) bm!541469))

(assert (= (or b!6350185 bm!541471) bm!541467))

(assert (= (or b!6350190 bm!541467) bm!541468))

(assert (= (or b!6350190 b!6350185) bm!541466))

(declare-fun m!7157274 () Bool)

(assert (=> bm!541469 m!7157274))

(declare-fun m!7157276 () Bool)

(assert (=> b!6350186 m!7157276))

(declare-fun m!7157278 () Bool)

(assert (=> bm!541466 m!7157278))

(declare-fun m!7157280 () Bool)

(assert (=> bm!541468 m!7157280))

(declare-fun m!7157282 () Bool)

(assert (=> b!6350189 m!7157282))

(assert (=> bm!541227 d!1992623))

(assert (=> b!6348858 d!1992347))

(assert (=> b!6348858 d!1992351))

(declare-fun d!1992625 () Bool)

(assert (=> d!1992625 (= (isEmpty!37030 (t!378652 lt!2364157)) ((_ is Nil!64940) (t!378652 lt!2364157)))))

(assert (=> b!6348901 d!1992625))

(declare-fun b!6350193 () Bool)

(declare-fun e!3856611 () Bool)

(declare-fun e!3856614 () Bool)

(assert (=> b!6350193 (= e!3856611 e!3856614)))

(declare-fun c!1155246 () Bool)

(assert (=> b!6350193 (= c!1155246 ((_ is Star!16255) (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))

(declare-fun b!6350194 () Bool)

(declare-fun e!3856613 () Bool)

(declare-fun e!3856616 () Bool)

(assert (=> b!6350194 (= e!3856613 e!3856616)))

(declare-fun res!2612942 () Bool)

(assert (=> b!6350194 (=> (not res!2612942) (not e!3856616))))

(declare-fun call!541478 () Bool)

(assert (=> b!6350194 (= res!2612942 call!541478)))

(declare-fun c!1155247 () Bool)

(declare-fun bm!541472 () Bool)

(declare-fun call!541477 () Bool)

(assert (=> bm!541472 (= call!541477 (validRegex!7991 (ite c!1155247 (regTwo!33023 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))) (regTwo!33022 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))))

(declare-fun b!6350195 () Bool)

(declare-fun e!3856615 () Bool)

(assert (=> b!6350195 (= e!3856615 call!541477)))

(declare-fun b!6350196 () Bool)

(assert (=> b!6350196 (= e!3856616 call!541477)))

(declare-fun b!6350197 () Bool)

(declare-fun e!3856610 () Bool)

(declare-fun call!541479 () Bool)

(assert (=> b!6350197 (= e!3856610 call!541479)))

(declare-fun d!1992627 () Bool)

(declare-fun res!2612944 () Bool)

(assert (=> d!1992627 (=> res!2612944 e!3856611)))

(assert (=> d!1992627 (= res!2612944 ((_ is ElementMatch!16255) (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))

(assert (=> d!1992627 (= (validRegex!7991 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))) e!3856611)))

(declare-fun bm!541473 () Bool)

(assert (=> bm!541473 (= call!541479 (validRegex!7991 (ite c!1155246 (reg!16584 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))) (ite c!1155247 (regOne!33023 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))) (regOne!33022 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292))))))))))))

(declare-fun b!6350198 () Bool)

(declare-fun res!2612941 () Bool)

(assert (=> b!6350198 (=> (not res!2612941) (not e!3856615))))

(assert (=> b!6350198 (= res!2612941 call!541478)))

(declare-fun e!3856612 () Bool)

(assert (=> b!6350198 (= e!3856612 e!3856615)))

(declare-fun b!6350199 () Bool)

(assert (=> b!6350199 (= e!3856614 e!3856612)))

(assert (=> b!6350199 (= c!1155247 ((_ is Union!16255) (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))

(declare-fun b!6350200 () Bool)

(assert (=> b!6350200 (= e!3856614 e!3856610)))

(declare-fun res!2612945 () Bool)

(assert (=> b!6350200 (= res!2612945 (not (nullable!6248 (reg!16584 (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))))

(assert (=> b!6350200 (=> (not res!2612945) (not e!3856610))))

(declare-fun bm!541474 () Bool)

(assert (=> bm!541474 (= call!541478 call!541479)))

(declare-fun b!6350201 () Bool)

(declare-fun res!2612943 () Bool)

(assert (=> b!6350201 (=> res!2612943 e!3856613)))

(assert (=> b!6350201 (= res!2612943 (not ((_ is Concat!25100) (ite c!1154880 (reg!16584 (regTwo!33022 (regOne!33022 r!7292))) (ite c!1154881 (regOne!33023 (regTwo!33022 (regOne!33022 r!7292))) (regOne!33022 (regTwo!33022 (regOne!33022 r!7292))))))))))

(assert (=> b!6350201 (= e!3856612 e!3856613)))

(assert (= (and d!1992627 (not res!2612944)) b!6350193))

(assert (= (and b!6350193 c!1155246) b!6350200))

(assert (= (and b!6350193 (not c!1155246)) b!6350199))

(assert (= (and b!6350200 res!2612945) b!6350197))

(assert (= (and b!6350199 c!1155247) b!6350198))

(assert (= (and b!6350199 (not c!1155247)) b!6350201))

(assert (= (and b!6350198 res!2612941) b!6350195))

(assert (= (and b!6350201 (not res!2612943)) b!6350194))

(assert (= (and b!6350194 res!2612942) b!6350196))

(assert (= (or b!6350195 b!6350196) bm!541472))

(assert (= (or b!6350198 b!6350194) bm!541474))

(assert (= (or b!6350197 bm!541474) bm!541473))

(declare-fun m!7157284 () Bool)

(assert (=> bm!541472 m!7157284))

(declare-fun m!7157286 () Bool)

(assert (=> bm!541473 m!7157286))

(declare-fun m!7157288 () Bool)

(assert (=> b!6350200 m!7157288))

(assert (=> bm!541234 d!1992627))

(declare-fun d!1992629 () Bool)

(declare-fun c!1155248 () Bool)

(assert (=> d!1992629 (= c!1155248 (isEmpty!37033 (tail!12088 (t!378653 s!2326))))))

(declare-fun e!3856617 () Bool)

(assert (=> d!1992629 (= (matchZipper!2267 (derivationStepZipper!2221 lt!2364162 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))) e!3856617)))

(declare-fun b!6350202 () Bool)

(assert (=> b!6350202 (= e!3856617 (nullableZipper!2021 (derivationStepZipper!2221 lt!2364162 (head!13003 (t!378653 s!2326)))))))

(declare-fun b!6350203 () Bool)

(assert (=> b!6350203 (= e!3856617 (matchZipper!2267 (derivationStepZipper!2221 (derivationStepZipper!2221 lt!2364162 (head!13003 (t!378653 s!2326))) (head!13003 (tail!12088 (t!378653 s!2326)))) (tail!12088 (tail!12088 (t!378653 s!2326)))))))

(assert (= (and d!1992629 c!1155248) b!6350202))

(assert (= (and d!1992629 (not c!1155248)) b!6350203))

(assert (=> d!1992629 m!7155730))

(declare-fun m!7157290 () Bool)

(assert (=> d!1992629 m!7157290))

(assert (=> b!6350202 m!7155728))

(declare-fun m!7157292 () Bool)

(assert (=> b!6350202 m!7157292))

(assert (=> b!6350203 m!7155730))

(declare-fun m!7157294 () Bool)

(assert (=> b!6350203 m!7157294))

(assert (=> b!6350203 m!7155728))

(assert (=> b!6350203 m!7157294))

(declare-fun m!7157296 () Bool)

(assert (=> b!6350203 m!7157296))

(assert (=> b!6350203 m!7155730))

(declare-fun m!7157298 () Bool)

(assert (=> b!6350203 m!7157298))

(assert (=> b!6350203 m!7157296))

(assert (=> b!6350203 m!7157298))

(declare-fun m!7157300 () Bool)

(assert (=> b!6350203 m!7157300))

(assert (=> b!6348496 d!1992629))

(declare-fun bs!1590344 () Bool)

(declare-fun d!1992631 () Bool)

(assert (= bs!1590344 (and d!1992631 b!6348017)))

(declare-fun lambda!349283 () Int)

(assert (=> bs!1590344 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349283 lambda!349079))))

(declare-fun bs!1590345 () Bool)

(assert (= bs!1590345 (and d!1992631 d!1991991)))

(assert (=> bs!1590345 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349283 lambda!349150))))

(assert (=> d!1992631 true))

(assert (=> d!1992631 (= (derivationStepZipper!2221 lt!2364162 (head!13003 (t!378653 s!2326))) (flatMap!1760 lt!2364162 lambda!349283))))

(declare-fun bs!1590346 () Bool)

(assert (= bs!1590346 d!1992631))

(declare-fun m!7157302 () Bool)

(assert (=> bs!1590346 m!7157302))

(assert (=> b!6348496 d!1992631))

(declare-fun d!1992633 () Bool)

(assert (=> d!1992633 (= (head!13003 (t!378653 s!2326)) (h!71389 (t!378653 s!2326)))))

(assert (=> b!6348496 d!1992633))

(declare-fun d!1992635 () Bool)

(assert (=> d!1992635 (= (tail!12088 (t!378653 s!2326)) (t!378653 (t!378653 s!2326)))))

(assert (=> b!6348496 d!1992635))

(declare-fun bs!1590347 () Bool)

(declare-fun b!6350206 () Bool)

(assert (= bs!1590347 (and b!6350206 b!6348025)))

(declare-fun lambda!349284 () Int)

(assert (=> bs!1590347 (not (= lambda!349284 lambda!349081))))

(assert (=> bs!1590347 (not (= lambda!349284 lambda!349080))))

(declare-fun bs!1590348 () Bool)

(assert (= bs!1590348 (and b!6350206 d!1992481)))

(assert (=> bs!1590348 (not (= lambda!349284 lambda!349271))))

(declare-fun bs!1590349 () Bool)

(assert (= bs!1590349 (and b!6350206 d!1992559)))

(assert (=> bs!1590349 (not (= lambda!349284 lambda!349279))))

(declare-fun bs!1590350 () Bool)

(assert (= bs!1590350 (and b!6350206 d!1992017)))

(assert (=> bs!1590350 (not (= lambda!349284 lambda!349159))))

(assert (=> bs!1590350 (not (= lambda!349284 lambda!349158))))

(declare-fun bs!1590351 () Bool)

(assert (= bs!1590351 (and b!6350206 d!1992047)))

(assert (=> bs!1590351 (not (= lambda!349284 lambda!349167))))

(declare-fun bs!1590352 () Bool)

(assert (= bs!1590352 (and b!6350206 b!6348814)))

(assert (=> bs!1590352 (not (= lambda!349284 lambda!349162))))

(declare-fun bs!1590353 () Bool)

(assert (= bs!1590353 (and b!6350206 b!6348655)))

(assert (=> bs!1590353 (not (= lambda!349284 lambda!349147))))

(declare-fun bs!1590354 () Bool)

(assert (= bs!1590354 (and b!6350206 b!6349859)))

(assert (=> bs!1590354 (= (and (= (reg!16584 (regOne!33023 lt!2364185)) (reg!16584 (regTwo!33023 lt!2364179))) (= (regOne!33023 lt!2364185) (regTwo!33023 lt!2364179))) (= lambda!349284 lambda!349273))))

(assert (=> bs!1590351 (not (= lambda!349284 lambda!349168))))

(declare-fun bs!1590355 () Bool)

(assert (= bs!1590355 (and b!6350206 b!6349862)))

(assert (=> bs!1590355 (not (= lambda!349284 lambda!349275))))

(declare-fun bs!1590356 () Bool)

(assert (= bs!1590356 (and b!6350206 d!1992015)))

(assert (=> bs!1590356 (not (= lambda!349284 lambda!349153))))

(declare-fun bs!1590357 () Bool)

(assert (= bs!1590357 (and b!6350206 b!6348652)))

(assert (=> bs!1590357 (= (and (= (reg!16584 (regOne!33023 lt!2364185)) (reg!16584 r!7292)) (= (regOne!33023 lt!2364185) r!7292)) (= lambda!349284 lambda!349146))))

(declare-fun bs!1590358 () Bool)

(assert (= bs!1590358 (and b!6350206 d!1992023)))

(assert (=> bs!1590358 (not (= lambda!349284 lambda!349160))))

(declare-fun bs!1590359 () Bool)

(assert (= bs!1590359 (and b!6350206 b!6348869)))

(assert (=> bs!1590359 (not (= lambda!349284 lambda!349165))))

(assert (=> bs!1590348 (not (= lambda!349284 lambda!349272))))

(declare-fun bs!1590360 () Bool)

(assert (= bs!1590360 (and b!6350206 b!6348005)))

(assert (=> bs!1590360 (not (= lambda!349284 lambda!349078))))

(declare-fun bs!1590361 () Bool)

(assert (= bs!1590361 (and b!6350206 b!6349681)))

(assert (=> bs!1590361 (= (and (= (reg!16584 (regOne!33023 lt!2364185)) (reg!16584 (regOne!33023 lt!2364179))) (= (regOne!33023 lt!2364185) (regOne!33023 lt!2364179))) (= lambda!349284 lambda!349255))))

(declare-fun bs!1590362 () Bool)

(assert (= bs!1590362 (and b!6350206 d!1992445)))

(assert (=> bs!1590362 (not (= lambda!349284 lambda!349261))))

(assert (=> bs!1590349 (not (= lambda!349284 lambda!349280))))

(declare-fun bs!1590363 () Bool)

(assert (= bs!1590363 (and b!6350206 b!6348811)))

(assert (=> bs!1590363 (= (and (= (reg!16584 (regOne!33023 lt!2364185)) (reg!16584 lt!2364179)) (= (regOne!33023 lt!2364185) lt!2364179)) (= lambda!349284 lambda!349161))))

(declare-fun bs!1590364 () Bool)

(assert (= bs!1590364 (and b!6350206 b!6348866)))

(assert (=> bs!1590364 (= (and (= (reg!16584 (regOne!33023 lt!2364185)) (reg!16584 lt!2364185)) (= (regOne!33023 lt!2364185) lt!2364185)) (= lambda!349284 lambda!349164))))

(declare-fun bs!1590365 () Bool)

(assert (= bs!1590365 (and b!6350206 b!6349684)))

(assert (=> bs!1590365 (not (= lambda!349284 lambda!349256))))

(assert (=> bs!1590360 (not (= lambda!349284 lambda!349077))))

(assert (=> b!6350206 true))

(assert (=> b!6350206 true))

(declare-fun bs!1590366 () Bool)

(declare-fun b!6350209 () Bool)

(assert (= bs!1590366 (and b!6350209 b!6348025)))

(declare-fun lambda!349285 () Int)

(assert (=> bs!1590366 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 lt!2364185)) lt!2364185)) (= lambda!349285 lambda!349081))))

(assert (=> bs!1590366 (not (= lambda!349285 lambda!349080))))

(declare-fun bs!1590367 () Bool)

(assert (= bs!1590367 (and b!6350209 d!1992481)))

(assert (=> bs!1590367 (not (= lambda!349285 lambda!349271))))

(declare-fun bs!1590368 () Bool)

(assert (= bs!1590368 (and b!6350209 d!1992559)))

(assert (=> bs!1590368 (not (= lambda!349285 lambda!349279))))

(declare-fun bs!1590369 () Bool)

(assert (= bs!1590369 (and b!6350209 d!1992017)))

(assert (=> bs!1590369 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349285 lambda!349159))))

(assert (=> bs!1590369 (not (= lambda!349285 lambda!349158))))

(declare-fun bs!1590370 () Bool)

(assert (= bs!1590370 (and b!6350209 d!1992047)))

(assert (=> bs!1590370 (not (= lambda!349285 lambda!349167))))

(declare-fun bs!1590371 () Bool)

(assert (= bs!1590371 (and b!6350209 b!6348814)))

(assert (=> bs!1590371 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 lt!2364179)) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 lt!2364179))) (= lambda!349285 lambda!349162))))

(declare-fun bs!1590372 () Bool)

(assert (= bs!1590372 (and b!6350209 b!6348655)))

(assert (=> bs!1590372 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349285 lambda!349147))))

(declare-fun bs!1590373 () Bool)

(assert (= bs!1590373 (and b!6350209 b!6349859)))

(assert (=> bs!1590373 (not (= lambda!349285 lambda!349273))))

(assert (=> bs!1590370 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 lt!2364185)) lt!2364185)) (= lambda!349285 lambda!349168))))

(declare-fun bs!1590374 () Bool)

(assert (= bs!1590374 (and b!6350209 b!6349862)))

(assert (=> bs!1590374 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 (regTwo!33023 lt!2364179))) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 (regTwo!33023 lt!2364179)))) (= lambda!349285 lambda!349275))))

(declare-fun bs!1590375 () Bool)

(assert (= bs!1590375 (and b!6350209 d!1992015)))

(assert (=> bs!1590375 (not (= lambda!349285 lambda!349153))))

(declare-fun bs!1590376 () Bool)

(assert (= bs!1590376 (and b!6350209 b!6348652)))

(assert (=> bs!1590376 (not (= lambda!349285 lambda!349146))))

(declare-fun bs!1590377 () Bool)

(assert (= bs!1590377 (and b!6350209 d!1992023)))

(assert (=> bs!1590377 (not (= lambda!349285 lambda!349160))))

(declare-fun bs!1590378 () Bool)

(assert (= bs!1590378 (and b!6350209 b!6348869)))

(assert (=> bs!1590378 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 lt!2364185)) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 lt!2364185))) (= lambda!349285 lambda!349165))))

(assert (=> bs!1590367 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349285 lambda!349272))))

(declare-fun bs!1590379 () Bool)

(assert (= bs!1590379 (and b!6350209 b!6350206)))

(assert (=> bs!1590379 (not (= lambda!349285 lambda!349284))))

(declare-fun bs!1590380 () Bool)

(assert (= bs!1590380 (and b!6350209 b!6348005)))

(assert (=> bs!1590380 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349285 lambda!349078))))

(declare-fun bs!1590381 () Bool)

(assert (= bs!1590381 (and b!6350209 b!6349681)))

(assert (=> bs!1590381 (not (= lambda!349285 lambda!349255))))

(declare-fun bs!1590382 () Bool)

(assert (= bs!1590382 (and b!6350209 d!1992445)))

(assert (=> bs!1590382 (not (= lambda!349285 lambda!349261))))

(assert (=> bs!1590368 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 lt!2364185)) lt!2364185)) (= lambda!349285 lambda!349280))))

(declare-fun bs!1590383 () Bool)

(assert (= bs!1590383 (and b!6350209 b!6348811)))

(assert (=> bs!1590383 (not (= lambda!349285 lambda!349161))))

(declare-fun bs!1590384 () Bool)

(assert (= bs!1590384 (and b!6350209 b!6348866)))

(assert (=> bs!1590384 (not (= lambda!349285 lambda!349164))))

(declare-fun bs!1590385 () Bool)

(assert (= bs!1590385 (and b!6350209 b!6349684)))

(assert (=> bs!1590385 (= (and (= (regOne!33022 (regOne!33023 lt!2364185)) (regOne!33022 (regOne!33023 lt!2364179))) (= (regTwo!33022 (regOne!33023 lt!2364185)) (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349285 lambda!349256))))

(assert (=> bs!1590380 (not (= lambda!349285 lambda!349077))))

(assert (=> b!6350209 true))

(assert (=> b!6350209 true))

(declare-fun d!1992637 () Bool)

(declare-fun c!1155250 () Bool)

(assert (=> d!1992637 (= c!1155250 ((_ is EmptyExpr!16255) (regOne!33023 lt!2364185)))))

(declare-fun e!3856619 () Bool)

(assert (=> d!1992637 (= (matchRSpec!3356 (regOne!33023 lt!2364185) s!2326) e!3856619)))

(declare-fun b!6350204 () Bool)

(declare-fun e!3856622 () Bool)

(assert (=> b!6350204 (= e!3856622 (matchRSpec!3356 (regTwo!33023 (regOne!33023 lt!2364185)) s!2326))))

(declare-fun b!6350205 () Bool)

(declare-fun c!1155252 () Bool)

(assert (=> b!6350205 (= c!1155252 ((_ is Union!16255) (regOne!33023 lt!2364185)))))

(declare-fun e!3856621 () Bool)

(declare-fun e!3856618 () Bool)

(assert (=> b!6350205 (= e!3856621 e!3856618)))

(declare-fun bm!541475 () Bool)

(declare-fun call!541480 () Bool)

(assert (=> bm!541475 (= call!541480 (isEmpty!37033 s!2326))))

(declare-fun e!3856620 () Bool)

(declare-fun call!541481 () Bool)

(assert (=> b!6350206 (= e!3856620 call!541481)))

(declare-fun b!6350207 () Bool)

(assert (=> b!6350207 (= e!3856621 (= s!2326 (Cons!64941 (c!1154628 (regOne!33023 lt!2364185)) Nil!64941)))))

(declare-fun b!6350208 () Bool)

(declare-fun e!3856623 () Bool)

(assert (=> b!6350208 (= e!3856619 e!3856623)))

(declare-fun res!2612946 () Bool)

(assert (=> b!6350208 (= res!2612946 (not ((_ is EmptyLang!16255) (regOne!33023 lt!2364185))))))

(assert (=> b!6350208 (=> (not res!2612946) (not e!3856623))))

(declare-fun e!3856624 () Bool)

(assert (=> b!6350209 (= e!3856624 call!541481)))

(declare-fun b!6350210 () Bool)

(assert (=> b!6350210 (= e!3856619 call!541480)))

(declare-fun c!1155249 () Bool)

(declare-fun bm!541476 () Bool)

(assert (=> bm!541476 (= call!541481 (Exists!3325 (ite c!1155249 lambda!349284 lambda!349285)))))

(declare-fun b!6350211 () Bool)

(assert (=> b!6350211 (= e!3856618 e!3856622)))

(declare-fun res!2612947 () Bool)

(assert (=> b!6350211 (= res!2612947 (matchRSpec!3356 (regOne!33023 (regOne!33023 lt!2364185)) s!2326))))

(assert (=> b!6350211 (=> res!2612947 e!3856622)))

(declare-fun b!6350212 () Bool)

(declare-fun c!1155251 () Bool)

(assert (=> b!6350212 (= c!1155251 ((_ is ElementMatch!16255) (regOne!33023 lt!2364185)))))

(assert (=> b!6350212 (= e!3856623 e!3856621)))

(declare-fun b!6350213 () Bool)

(declare-fun res!2612948 () Bool)

(assert (=> b!6350213 (=> res!2612948 e!3856620)))

(assert (=> b!6350213 (= res!2612948 call!541480)))

(assert (=> b!6350213 (= e!3856624 e!3856620)))

(declare-fun b!6350214 () Bool)

(assert (=> b!6350214 (= e!3856618 e!3856624)))

(assert (=> b!6350214 (= c!1155249 ((_ is Star!16255) (regOne!33023 lt!2364185)))))

(assert (= (and d!1992637 c!1155250) b!6350210))

(assert (= (and d!1992637 (not c!1155250)) b!6350208))

(assert (= (and b!6350208 res!2612946) b!6350212))

(assert (= (and b!6350212 c!1155251) b!6350207))

(assert (= (and b!6350212 (not c!1155251)) b!6350205))

(assert (= (and b!6350205 c!1155252) b!6350211))

(assert (= (and b!6350205 (not c!1155252)) b!6350214))

(assert (= (and b!6350211 (not res!2612947)) b!6350204))

(assert (= (and b!6350214 c!1155249) b!6350213))

(assert (= (and b!6350214 (not c!1155249)) b!6350209))

(assert (= (and b!6350213 (not res!2612948)) b!6350206))

(assert (= (or b!6350206 b!6350209) bm!541476))

(assert (= (or b!6350210 b!6350213) bm!541475))

(declare-fun m!7157304 () Bool)

(assert (=> b!6350204 m!7157304))

(assert (=> bm!541475 m!7155846))

(declare-fun m!7157306 () Bool)

(assert (=> bm!541476 m!7157306))

(declare-fun m!7157308 () Bool)

(assert (=> b!6350211 m!7157308))

(assert (=> b!6348871 d!1992637))

(declare-fun bs!1590386 () Bool)

(declare-fun d!1992639 () Bool)

(assert (= bs!1590386 (and d!1992639 d!1992043)))

(declare-fun lambda!349286 () Int)

(assert (=> bs!1590386 (= lambda!349286 lambda!349166)))

(declare-fun bs!1590387 () Bool)

(assert (= bs!1590387 (and d!1992639 d!1992027)))

(assert (=> bs!1590387 (= lambda!349286 lambda!349163)))

(declare-fun bs!1590388 () Bool)

(assert (= bs!1590388 (and d!1992639 d!1991903)))

(assert (=> bs!1590388 (= lambda!349286 lambda!349111)))

(declare-fun bs!1590389 () Bool)

(assert (= bs!1590389 (and d!1992639 d!1992339)))

(assert (=> bs!1590389 (= lambda!349286 lambda!349220)))

(declare-fun bs!1590390 () Bool)

(assert (= bs!1590390 (and d!1992639 d!1992049)))

(assert (=> bs!1590390 (= lambda!349286 lambda!349169)))

(declare-fun bs!1590391 () Bool)

(assert (= bs!1590391 (and d!1992639 b!6349632)))

(assert (=> bs!1590391 (not (= lambda!349286 lambda!349239))))

(declare-fun bs!1590392 () Bool)

(assert (= bs!1590392 (and d!1992639 d!1991913)))

(assert (=> bs!1590392 (= lambda!349286 lambda!349122)))

(declare-fun bs!1590393 () Bool)

(assert (= bs!1590393 (and d!1992639 d!1992057)))

(assert (=> bs!1590393 (= lambda!349286 lambda!349172)))

(declare-fun bs!1590394 () Bool)

(assert (= bs!1590394 (and d!1992639 b!6349630)))

(assert (=> bs!1590394 (not (= lambda!349286 lambda!349237))))

(declare-fun bs!1590395 () Bool)

(assert (= bs!1590395 (and d!1992639 d!1991959)))

(assert (=> bs!1590395 (= lambda!349286 lambda!349128)))

(declare-fun bs!1590396 () Bool)

(assert (= bs!1590396 (and d!1992639 d!1992059)))

(assert (=> bs!1590396 (= lambda!349286 lambda!349175)))

(assert (=> d!1992639 (= (inv!83884 setElem!43230) (forall!15421 (exprs!6139 setElem!43230) lambda!349286))))

(declare-fun bs!1590397 () Bool)

(assert (= bs!1590397 d!1992639))

(declare-fun m!7157310 () Bool)

(assert (=> bs!1590397 m!7157310))

(assert (=> setNonEmpty!43230 d!1992639))

(declare-fun b!6350215 () Bool)

(declare-fun e!3856626 () Bool)

(declare-fun e!3856629 () Bool)

(assert (=> b!6350215 (= e!3856626 e!3856629)))

(declare-fun c!1155253 () Bool)

(assert (=> b!6350215 (= c!1155253 ((_ is Star!16255) (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6350216 () Bool)

(declare-fun e!3856628 () Bool)

(declare-fun e!3856631 () Bool)

(assert (=> b!6350216 (= e!3856628 e!3856631)))

(declare-fun res!2612950 () Bool)

(assert (=> b!6350216 (=> (not res!2612950) (not e!3856631))))

(declare-fun call!541483 () Bool)

(assert (=> b!6350216 (= res!2612950 call!541483)))

(declare-fun call!541482 () Bool)

(declare-fun c!1155254 () Bool)

(declare-fun bm!541477 () Bool)

(assert (=> bm!541477 (= call!541482 (validRegex!7991 (ite c!1155254 (regTwo!33023 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))) (regTwo!33022 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))))))))

(declare-fun b!6350217 () Bool)

(declare-fun e!3856630 () Bool)

(assert (=> b!6350217 (= e!3856630 call!541482)))

(declare-fun b!6350218 () Bool)

(assert (=> b!6350218 (= e!3856631 call!541482)))

(declare-fun b!6350219 () Bool)

(declare-fun e!3856625 () Bool)

(declare-fun call!541484 () Bool)

(assert (=> b!6350219 (= e!3856625 call!541484)))

(declare-fun d!1992641 () Bool)

(declare-fun res!2612952 () Bool)

(assert (=> d!1992641 (=> res!2612952 e!3856626)))

(assert (=> d!1992641 (= res!2612952 ((_ is ElementMatch!16255) (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))))))

(assert (=> d!1992641 (= (validRegex!7991 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))) e!3856626)))

(declare-fun bm!541478 () Bool)

(assert (=> bm!541478 (= call!541484 (validRegex!7991 (ite c!1155253 (reg!16584 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))) (ite c!1155254 (regOne!33023 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))) (regOne!33022 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))))

(declare-fun b!6350220 () Bool)

(declare-fun res!2612949 () Bool)

(assert (=> b!6350220 (=> (not res!2612949) (not e!3856630))))

(assert (=> b!6350220 (= res!2612949 call!541483)))

(declare-fun e!3856627 () Bool)

(assert (=> b!6350220 (= e!3856627 e!3856630)))

(declare-fun b!6350221 () Bool)

(assert (=> b!6350221 (= e!3856629 e!3856627)))

(assert (=> b!6350221 (= c!1155254 ((_ is Union!16255) (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6350222 () Bool)

(assert (=> b!6350222 (= e!3856629 e!3856625)))

(declare-fun res!2612953 () Bool)

(assert (=> b!6350222 (= res!2612953 (not (nullable!6248 (reg!16584 (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292))))))))))

(assert (=> b!6350222 (=> (not res!2612953) (not e!3856625))))

(declare-fun bm!541479 () Bool)

(assert (=> bm!541479 (= call!541483 call!541484)))

(declare-fun b!6350223 () Bool)

(declare-fun res!2612951 () Bool)

(assert (=> b!6350223 (=> res!2612951 e!3856628)))

(assert (=> b!6350223 (= res!2612951 (not ((_ is Concat!25100) (ite c!1154881 (regTwo!33023 (regTwo!33022 (regOne!33022 r!7292))) (regTwo!33022 (regTwo!33022 (regOne!33022 r!7292)))))))))

(assert (=> b!6350223 (= e!3856627 e!3856628)))

(assert (= (and d!1992641 (not res!2612952)) b!6350215))

(assert (= (and b!6350215 c!1155253) b!6350222))

(assert (= (and b!6350215 (not c!1155253)) b!6350221))

(assert (= (and b!6350222 res!2612953) b!6350219))

(assert (= (and b!6350221 c!1155254) b!6350220))

(assert (= (and b!6350221 (not c!1155254)) b!6350223))

(assert (= (and b!6350220 res!2612949) b!6350217))

(assert (= (and b!6350223 (not res!2612951)) b!6350216))

(assert (= (and b!6350216 res!2612950) b!6350218))

(assert (= (or b!6350217 b!6350218) bm!541477))

(assert (= (or b!6350220 b!6350216) bm!541479))

(assert (= (or b!6350219 bm!541479) bm!541478))

(declare-fun m!7157312 () Bool)

(assert (=> bm!541477 m!7157312))

(declare-fun m!7157314 () Bool)

(assert (=> bm!541478 m!7157314))

(declare-fun m!7157316 () Bool)

(assert (=> b!6350222 m!7157316))

(assert (=> bm!541233 d!1992641))

(declare-fun d!1992643 () Bool)

(declare-fun c!1155255 () Bool)

(assert (=> d!1992643 (= c!1155255 (isEmpty!37033 (tail!12088 (t!378653 s!2326))))))

(declare-fun e!3856632 () Bool)

(assert (=> d!1992643 (= (matchZipper!2267 (derivationStepZipper!2221 ((_ map or) lt!2364175 lt!2364165) (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))) e!3856632)))

(declare-fun b!6350224 () Bool)

(assert (=> b!6350224 (= e!3856632 (nullableZipper!2021 (derivationStepZipper!2221 ((_ map or) lt!2364175 lt!2364165) (head!13003 (t!378653 s!2326)))))))

(declare-fun b!6350225 () Bool)

(assert (=> b!6350225 (= e!3856632 (matchZipper!2267 (derivationStepZipper!2221 (derivationStepZipper!2221 ((_ map or) lt!2364175 lt!2364165) (head!13003 (t!378653 s!2326))) (head!13003 (tail!12088 (t!378653 s!2326)))) (tail!12088 (tail!12088 (t!378653 s!2326)))))))

(assert (= (and d!1992643 c!1155255) b!6350224))

(assert (= (and d!1992643 (not c!1155255)) b!6350225))

(assert (=> d!1992643 m!7155730))

(assert (=> d!1992643 m!7157290))

(assert (=> b!6350224 m!7156162))

(declare-fun m!7157318 () Bool)

(assert (=> b!6350224 m!7157318))

(assert (=> b!6350225 m!7155730))

(assert (=> b!6350225 m!7157294))

(assert (=> b!6350225 m!7156162))

(assert (=> b!6350225 m!7157294))

(declare-fun m!7157320 () Bool)

(assert (=> b!6350225 m!7157320))

(assert (=> b!6350225 m!7155730))

(assert (=> b!6350225 m!7157298))

(assert (=> b!6350225 m!7157320))

(assert (=> b!6350225 m!7157298))

(declare-fun m!7157322 () Bool)

(assert (=> b!6350225 m!7157322))

(assert (=> b!6348974 d!1992643))

(declare-fun bs!1590398 () Bool)

(declare-fun d!1992645 () Bool)

(assert (= bs!1590398 (and d!1992645 b!6348017)))

(declare-fun lambda!349287 () Int)

(assert (=> bs!1590398 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349287 lambda!349079))))

(declare-fun bs!1590399 () Bool)

(assert (= bs!1590399 (and d!1992645 d!1991991)))

(assert (=> bs!1590399 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349287 lambda!349150))))

(declare-fun bs!1590400 () Bool)

(assert (= bs!1590400 (and d!1992645 d!1992631)))

(assert (=> bs!1590400 (= lambda!349287 lambda!349283)))

(assert (=> d!1992645 true))

(assert (=> d!1992645 (= (derivationStepZipper!2221 ((_ map or) lt!2364175 lt!2364165) (head!13003 (t!378653 s!2326))) (flatMap!1760 ((_ map or) lt!2364175 lt!2364165) lambda!349287))))

(declare-fun bs!1590401 () Bool)

(assert (= bs!1590401 d!1992645))

(declare-fun m!7157324 () Bool)

(assert (=> bs!1590401 m!7157324))

(assert (=> b!6348974 d!1992645))

(assert (=> b!6348974 d!1992633))

(assert (=> b!6348974 d!1992635))

(declare-fun d!1992647 () Bool)

(assert (=> d!1992647 (= (nullable!6248 lt!2364185) (nullableFct!2195 lt!2364185))))

(declare-fun bs!1590402 () Bool)

(assert (= bs!1590402 d!1992647))

(declare-fun m!7157326 () Bool)

(assert (=> bs!1590402 m!7157326))

(assert (=> b!6348881 d!1992647))

(declare-fun bs!1590403 () Bool)

(declare-fun d!1992649 () Bool)

(assert (= bs!1590403 (and d!1992649 d!1992043)))

(declare-fun lambda!349288 () Int)

(assert (=> bs!1590403 (= lambda!349288 lambda!349166)))

(declare-fun bs!1590404 () Bool)

(assert (= bs!1590404 (and d!1992649 d!1992027)))

(assert (=> bs!1590404 (= lambda!349288 lambda!349163)))

(declare-fun bs!1590405 () Bool)

(assert (= bs!1590405 (and d!1992649 d!1991903)))

(assert (=> bs!1590405 (= lambda!349288 lambda!349111)))

(declare-fun bs!1590406 () Bool)

(assert (= bs!1590406 (and d!1992649 d!1992639)))

(assert (=> bs!1590406 (= lambda!349288 lambda!349286)))

(declare-fun bs!1590407 () Bool)

(assert (= bs!1590407 (and d!1992649 d!1992339)))

(assert (=> bs!1590407 (= lambda!349288 lambda!349220)))

(declare-fun bs!1590408 () Bool)

(assert (= bs!1590408 (and d!1992649 d!1992049)))

(assert (=> bs!1590408 (= lambda!349288 lambda!349169)))

(declare-fun bs!1590409 () Bool)

(assert (= bs!1590409 (and d!1992649 b!6349632)))

(assert (=> bs!1590409 (not (= lambda!349288 lambda!349239))))

(declare-fun bs!1590410 () Bool)

(assert (= bs!1590410 (and d!1992649 d!1991913)))

(assert (=> bs!1590410 (= lambda!349288 lambda!349122)))

(declare-fun bs!1590411 () Bool)

(assert (= bs!1590411 (and d!1992649 d!1992057)))

(assert (=> bs!1590411 (= lambda!349288 lambda!349172)))

(declare-fun bs!1590412 () Bool)

(assert (= bs!1590412 (and d!1992649 b!6349630)))

(assert (=> bs!1590412 (not (= lambda!349288 lambda!349237))))

(declare-fun bs!1590413 () Bool)

(assert (= bs!1590413 (and d!1992649 d!1991959)))

(assert (=> bs!1590413 (= lambda!349288 lambda!349128)))

(declare-fun bs!1590414 () Bool)

(assert (= bs!1590414 (and d!1992649 d!1992059)))

(assert (=> bs!1590414 (= lambda!349288 lambda!349175)))

(declare-fun b!6350226 () Bool)

(declare-fun e!3856635 () Bool)

(declare-fun lt!2364459 () Regex!16255)

(assert (=> b!6350226 (= e!3856635 (= lt!2364459 (head!13002 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350227 () Bool)

(declare-fun e!3856633 () Regex!16255)

(assert (=> b!6350227 (= e!3856633 (Concat!25100 (h!71388 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))) (generalisedConcat!1852 (t!378652 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))))

(declare-fun b!6350228 () Bool)

(declare-fun e!3856636 () Bool)

(assert (=> b!6350228 (= e!3856636 (isEmpty!37030 (t!378652 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350229 () Bool)

(assert (=> b!6350229 (= e!3856635 (isConcat!1180 lt!2364459))))

(declare-fun b!6350230 () Bool)

(declare-fun e!3856637 () Bool)

(assert (=> b!6350230 (= e!3856637 e!3856635)))

(declare-fun c!1155259 () Bool)

(assert (=> b!6350230 (= c!1155259 (isEmpty!37030 (tail!12087 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun e!3856634 () Bool)

(assert (=> d!1992649 e!3856634))

(declare-fun res!2612954 () Bool)

(assert (=> d!1992649 (=> (not res!2612954) (not e!3856634))))

(assert (=> d!1992649 (= res!2612954 (validRegex!7991 lt!2364459))))

(declare-fun e!3856638 () Regex!16255)

(assert (=> d!1992649 (= lt!2364459 e!3856638)))

(declare-fun c!1155258 () Bool)

(assert (=> d!1992649 (= c!1155258 e!3856636)))

(declare-fun res!2612955 () Bool)

(assert (=> d!1992649 (=> (not res!2612955) (not e!3856636))))

(assert (=> d!1992649 (= res!2612955 ((_ is Cons!64940) (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(assert (=> d!1992649 (forall!15421 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))) lambda!349288)))

(assert (=> d!1992649 (= (generalisedConcat!1852 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))) lt!2364459)))

(declare-fun b!6350231 () Bool)

(assert (=> b!6350231 (= e!3856633 EmptyExpr!16255)))

(declare-fun b!6350232 () Bool)

(assert (=> b!6350232 (= e!3856638 (h!71388 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6350233 () Bool)

(assert (=> b!6350233 (= e!3856638 e!3856633)))

(declare-fun c!1155257 () Bool)

(assert (=> b!6350233 (= c!1155257 ((_ is Cons!64940) (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6350234 () Bool)

(assert (=> b!6350234 (= e!3856634 e!3856637)))

(declare-fun c!1155256 () Bool)

(assert (=> b!6350234 (= c!1155256 (isEmpty!37030 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6350235 () Bool)

(assert (=> b!6350235 (= e!3856637 (isEmptyExpr!1657 lt!2364459))))

(assert (= (and d!1992649 res!2612955) b!6350228))

(assert (= (and d!1992649 c!1155258) b!6350232))

(assert (= (and d!1992649 (not c!1155258)) b!6350233))

(assert (= (and b!6350233 c!1155257) b!6350227))

(assert (= (and b!6350233 (not c!1155257)) b!6350231))

(assert (= (and d!1992649 res!2612954) b!6350234))

(assert (= (and b!6350234 c!1155256) b!6350235))

(assert (= (and b!6350234 (not c!1155256)) b!6350230))

(assert (= (and b!6350230 c!1155259) b!6350226))

(assert (= (and b!6350230 (not c!1155259)) b!6350229))

(declare-fun m!7157328 () Bool)

(assert (=> b!6350227 m!7157328))

(declare-fun m!7157330 () Bool)

(assert (=> b!6350229 m!7157330))

(declare-fun m!7157332 () Bool)

(assert (=> b!6350226 m!7157332))

(declare-fun m!7157334 () Bool)

(assert (=> d!1992649 m!7157334))

(declare-fun m!7157336 () Bool)

(assert (=> d!1992649 m!7157336))

(assert (=> b!6350234 m!7155988))

(declare-fun m!7157338 () Bool)

(assert (=> b!6350235 m!7157338))

(declare-fun m!7157340 () Bool)

(assert (=> b!6350228 m!7157340))

(declare-fun m!7157342 () Bool)

(assert (=> b!6350230 m!7157342))

(assert (=> b!6350230 m!7157342))

(declare-fun m!7157344 () Bool)

(assert (=> b!6350230 m!7157344))

(assert (=> b!6348821 d!1992649))

(assert (=> b!6348690 d!1992619))

(declare-fun d!1992651 () Bool)

(assert (=> d!1992651 true))

(assert (=> d!1992651 true))

(declare-fun res!2612958 () Bool)

(assert (=> d!1992651 (= (choose!47113 lambda!349081) res!2612958)))

(assert (=> d!1992055 d!1992651))

(assert (=> b!6348527 d!1991895))

(declare-fun d!1992653 () Bool)

(declare-fun lt!2364460 () Int)

(assert (=> d!1992653 (>= lt!2364460 0)))

(declare-fun e!3856639 () Int)

(assert (=> d!1992653 (= lt!2364460 e!3856639)))

(declare-fun c!1155260 () Bool)

(assert (=> d!1992653 (= c!1155260 ((_ is Cons!64942) (t!378654 zl!343)))))

(assert (=> d!1992653 (= (zipperDepthTotal!392 (t!378654 zl!343)) lt!2364460)))

(declare-fun b!6350236 () Bool)

(assert (=> b!6350236 (= e!3856639 (+ (contextDepthTotal!364 (h!71390 (t!378654 zl!343))) (zipperDepthTotal!392 (t!378654 (t!378654 zl!343)))))))

(declare-fun b!6350237 () Bool)

(assert (=> b!6350237 (= e!3856639 0)))

(assert (= (and d!1992653 c!1155260) b!6350236))

(assert (= (and d!1992653 (not c!1155260)) b!6350237))

(declare-fun m!7157346 () Bool)

(assert (=> b!6350236 m!7157346))

(declare-fun m!7157348 () Bool)

(assert (=> b!6350236 m!7157348))

(assert (=> b!6348527 d!1992653))

(declare-fun d!1992655 () Bool)

(assert (=> d!1992655 (= (isConcat!1180 lt!2364242) ((_ is Concat!25100) lt!2364242))))

(assert (=> b!6348471 d!1992655))

(assert (=> d!1992037 d!1992417))

(assert (=> d!1992037 d!1992549))

(declare-fun bs!1590415 () Bool)

(declare-fun b!6350240 () Bool)

(assert (= bs!1590415 (and b!6350240 b!6348025)))

(declare-fun lambda!349289 () Int)

(assert (=> bs!1590415 (not (= lambda!349289 lambda!349081))))

(assert (=> bs!1590415 (not (= lambda!349289 lambda!349080))))

(declare-fun bs!1590416 () Bool)

(assert (= bs!1590416 (and b!6350240 d!1992481)))

(assert (=> bs!1590416 (not (= lambda!349289 lambda!349271))))

(declare-fun bs!1590417 () Bool)

(assert (= bs!1590417 (and b!6350240 d!1992559)))

(assert (=> bs!1590417 (not (= lambda!349289 lambda!349279))))

(declare-fun bs!1590418 () Bool)

(assert (= bs!1590418 (and b!6350240 d!1992017)))

(assert (=> bs!1590418 (not (= lambda!349289 lambda!349159))))

(assert (=> bs!1590418 (not (= lambda!349289 lambda!349158))))

(declare-fun bs!1590419 () Bool)

(assert (= bs!1590419 (and b!6350240 d!1992047)))

(assert (=> bs!1590419 (not (= lambda!349289 lambda!349167))))

(declare-fun bs!1590420 () Bool)

(assert (= bs!1590420 (and b!6350240 b!6348814)))

(assert (=> bs!1590420 (not (= lambda!349289 lambda!349162))))

(declare-fun bs!1590421 () Bool)

(assert (= bs!1590421 (and b!6350240 b!6348655)))

(assert (=> bs!1590421 (not (= lambda!349289 lambda!349147))))

(declare-fun bs!1590422 () Bool)

(assert (= bs!1590422 (and b!6350240 b!6349859)))

(assert (=> bs!1590422 (= (and (= (reg!16584 (regTwo!33023 lt!2364185)) (reg!16584 (regTwo!33023 lt!2364179))) (= (regTwo!33023 lt!2364185) (regTwo!33023 lt!2364179))) (= lambda!349289 lambda!349273))))

(assert (=> bs!1590419 (not (= lambda!349289 lambda!349168))))

(declare-fun bs!1590423 () Bool)

(assert (= bs!1590423 (and b!6350240 b!6349862)))

(assert (=> bs!1590423 (not (= lambda!349289 lambda!349275))))

(declare-fun bs!1590424 () Bool)

(assert (= bs!1590424 (and b!6350240 d!1992015)))

(assert (=> bs!1590424 (not (= lambda!349289 lambda!349153))))

(declare-fun bs!1590425 () Bool)

(assert (= bs!1590425 (and b!6350240 b!6348652)))

(assert (=> bs!1590425 (= (and (= (reg!16584 (regTwo!33023 lt!2364185)) (reg!16584 r!7292)) (= (regTwo!33023 lt!2364185) r!7292)) (= lambda!349289 lambda!349146))))

(declare-fun bs!1590426 () Bool)

(assert (= bs!1590426 (and b!6350240 d!1992023)))

(assert (=> bs!1590426 (not (= lambda!349289 lambda!349160))))

(declare-fun bs!1590427 () Bool)

(assert (= bs!1590427 (and b!6350240 b!6350209)))

(assert (=> bs!1590427 (not (= lambda!349289 lambda!349285))))

(declare-fun bs!1590428 () Bool)

(assert (= bs!1590428 (and b!6350240 b!6348869)))

(assert (=> bs!1590428 (not (= lambda!349289 lambda!349165))))

(assert (=> bs!1590416 (not (= lambda!349289 lambda!349272))))

(declare-fun bs!1590429 () Bool)

(assert (= bs!1590429 (and b!6350240 b!6350206)))

(assert (=> bs!1590429 (= (and (= (reg!16584 (regTwo!33023 lt!2364185)) (reg!16584 (regOne!33023 lt!2364185))) (= (regTwo!33023 lt!2364185) (regOne!33023 lt!2364185))) (= lambda!349289 lambda!349284))))

(declare-fun bs!1590430 () Bool)

(assert (= bs!1590430 (and b!6350240 b!6348005)))

(assert (=> bs!1590430 (not (= lambda!349289 lambda!349078))))

(declare-fun bs!1590431 () Bool)

(assert (= bs!1590431 (and b!6350240 b!6349681)))

(assert (=> bs!1590431 (= (and (= (reg!16584 (regTwo!33023 lt!2364185)) (reg!16584 (regOne!33023 lt!2364179))) (= (regTwo!33023 lt!2364185) (regOne!33023 lt!2364179))) (= lambda!349289 lambda!349255))))

(declare-fun bs!1590432 () Bool)

(assert (= bs!1590432 (and b!6350240 d!1992445)))

(assert (=> bs!1590432 (not (= lambda!349289 lambda!349261))))

(assert (=> bs!1590417 (not (= lambda!349289 lambda!349280))))

(declare-fun bs!1590433 () Bool)

(assert (= bs!1590433 (and b!6350240 b!6348811)))

(assert (=> bs!1590433 (= (and (= (reg!16584 (regTwo!33023 lt!2364185)) (reg!16584 lt!2364179)) (= (regTwo!33023 lt!2364185) lt!2364179)) (= lambda!349289 lambda!349161))))

(declare-fun bs!1590434 () Bool)

(assert (= bs!1590434 (and b!6350240 b!6348866)))

(assert (=> bs!1590434 (= (and (= (reg!16584 (regTwo!33023 lt!2364185)) (reg!16584 lt!2364185)) (= (regTwo!33023 lt!2364185) lt!2364185)) (= lambda!349289 lambda!349164))))

(declare-fun bs!1590435 () Bool)

(assert (= bs!1590435 (and b!6350240 b!6349684)))

(assert (=> bs!1590435 (not (= lambda!349289 lambda!349256))))

(assert (=> bs!1590430 (not (= lambda!349289 lambda!349077))))

(assert (=> b!6350240 true))

(assert (=> b!6350240 true))

(declare-fun bs!1590436 () Bool)

(declare-fun b!6350243 () Bool)

(assert (= bs!1590436 (and b!6350243 b!6348025)))

(declare-fun lambda!349290 () Int)

(assert (=> bs!1590436 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 lt!2364185)) lt!2364185)) (= lambda!349290 lambda!349081))))

(assert (=> bs!1590436 (not (= lambda!349290 lambda!349080))))

(declare-fun bs!1590437 () Bool)

(assert (= bs!1590437 (and b!6350243 b!6350240)))

(assert (=> bs!1590437 (not (= lambda!349290 lambda!349289))))

(declare-fun bs!1590438 () Bool)

(assert (= bs!1590438 (and b!6350243 d!1992481)))

(assert (=> bs!1590438 (not (= lambda!349290 lambda!349271))))

(declare-fun bs!1590439 () Bool)

(assert (= bs!1590439 (and b!6350243 d!1992559)))

(assert (=> bs!1590439 (not (= lambda!349290 lambda!349279))))

(declare-fun bs!1590440 () Bool)

(assert (= bs!1590440 (and b!6350243 d!1992017)))

(assert (=> bs!1590440 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349290 lambda!349159))))

(assert (=> bs!1590440 (not (= lambda!349290 lambda!349158))))

(declare-fun bs!1590441 () Bool)

(assert (= bs!1590441 (and b!6350243 d!1992047)))

(assert (=> bs!1590441 (not (= lambda!349290 lambda!349167))))

(declare-fun bs!1590442 () Bool)

(assert (= bs!1590442 (and b!6350243 b!6348814)))

(assert (=> bs!1590442 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 lt!2364179)) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 lt!2364179))) (= lambda!349290 lambda!349162))))

(declare-fun bs!1590443 () Bool)

(assert (= bs!1590443 (and b!6350243 b!6348655)))

(assert (=> bs!1590443 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349290 lambda!349147))))

(declare-fun bs!1590444 () Bool)

(assert (= bs!1590444 (and b!6350243 b!6349859)))

(assert (=> bs!1590444 (not (= lambda!349290 lambda!349273))))

(assert (=> bs!1590441 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 lt!2364185)) lt!2364185)) (= lambda!349290 lambda!349168))))

(declare-fun bs!1590445 () Bool)

(assert (= bs!1590445 (and b!6350243 b!6349862)))

(assert (=> bs!1590445 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 (regTwo!33023 lt!2364179))) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 (regTwo!33023 lt!2364179)))) (= lambda!349290 lambda!349275))))

(declare-fun bs!1590446 () Bool)

(assert (= bs!1590446 (and b!6350243 d!1992015)))

(assert (=> bs!1590446 (not (= lambda!349290 lambda!349153))))

(declare-fun bs!1590447 () Bool)

(assert (= bs!1590447 (and b!6350243 b!6348652)))

(assert (=> bs!1590447 (not (= lambda!349290 lambda!349146))))

(declare-fun bs!1590448 () Bool)

(assert (= bs!1590448 (and b!6350243 d!1992023)))

(assert (=> bs!1590448 (not (= lambda!349290 lambda!349160))))

(declare-fun bs!1590449 () Bool)

(assert (= bs!1590449 (and b!6350243 b!6350209)))

(assert (=> bs!1590449 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 (regOne!33023 lt!2364185))) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 (regOne!33023 lt!2364185)))) (= lambda!349290 lambda!349285))))

(declare-fun bs!1590450 () Bool)

(assert (= bs!1590450 (and b!6350243 b!6348869)))

(assert (=> bs!1590450 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 lt!2364185)) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 lt!2364185))) (= lambda!349290 lambda!349165))))

(assert (=> bs!1590438 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349290 lambda!349272))))

(declare-fun bs!1590451 () Bool)

(assert (= bs!1590451 (and b!6350243 b!6350206)))

(assert (=> bs!1590451 (not (= lambda!349290 lambda!349284))))

(declare-fun bs!1590452 () Bool)

(assert (= bs!1590452 (and b!6350243 b!6348005)))

(assert (=> bs!1590452 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 r!7292))) (= lambda!349290 lambda!349078))))

(declare-fun bs!1590453 () Bool)

(assert (= bs!1590453 (and b!6350243 b!6349681)))

(assert (=> bs!1590453 (not (= lambda!349290 lambda!349255))))

(declare-fun bs!1590454 () Bool)

(assert (= bs!1590454 (and b!6350243 d!1992445)))

(assert (=> bs!1590454 (not (= lambda!349290 lambda!349261))))

(assert (=> bs!1590439 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 lt!2364185)) lt!2364185)) (= lambda!349290 lambda!349280))))

(declare-fun bs!1590455 () Bool)

(assert (= bs!1590455 (and b!6350243 b!6348811)))

(assert (=> bs!1590455 (not (= lambda!349290 lambda!349161))))

(declare-fun bs!1590456 () Bool)

(assert (= bs!1590456 (and b!6350243 b!6348866)))

(assert (=> bs!1590456 (not (= lambda!349290 lambda!349164))))

(declare-fun bs!1590457 () Bool)

(assert (= bs!1590457 (and b!6350243 b!6349684)))

(assert (=> bs!1590457 (= (and (= (regOne!33022 (regTwo!33023 lt!2364185)) (regOne!33022 (regOne!33023 lt!2364179))) (= (regTwo!33022 (regTwo!33023 lt!2364185)) (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349290 lambda!349256))))

(assert (=> bs!1590452 (not (= lambda!349290 lambda!349077))))

(assert (=> b!6350243 true))

(assert (=> b!6350243 true))

(declare-fun d!1992657 () Bool)

(declare-fun c!1155262 () Bool)

(assert (=> d!1992657 (= c!1155262 ((_ is EmptyExpr!16255) (regTwo!33023 lt!2364185)))))

(declare-fun e!3856641 () Bool)

(assert (=> d!1992657 (= (matchRSpec!3356 (regTwo!33023 lt!2364185) s!2326) e!3856641)))

(declare-fun b!6350238 () Bool)

(declare-fun e!3856644 () Bool)

(assert (=> b!6350238 (= e!3856644 (matchRSpec!3356 (regTwo!33023 (regTwo!33023 lt!2364185)) s!2326))))

(declare-fun b!6350239 () Bool)

(declare-fun c!1155264 () Bool)

(assert (=> b!6350239 (= c!1155264 ((_ is Union!16255) (regTwo!33023 lt!2364185)))))

(declare-fun e!3856643 () Bool)

(declare-fun e!3856640 () Bool)

(assert (=> b!6350239 (= e!3856643 e!3856640)))

(declare-fun bm!541480 () Bool)

(declare-fun call!541485 () Bool)

(assert (=> bm!541480 (= call!541485 (isEmpty!37033 s!2326))))

(declare-fun e!3856642 () Bool)

(declare-fun call!541486 () Bool)

(assert (=> b!6350240 (= e!3856642 call!541486)))

(declare-fun b!6350241 () Bool)

(assert (=> b!6350241 (= e!3856643 (= s!2326 (Cons!64941 (c!1154628 (regTwo!33023 lt!2364185)) Nil!64941)))))

(declare-fun b!6350242 () Bool)

(declare-fun e!3856645 () Bool)

(assert (=> b!6350242 (= e!3856641 e!3856645)))

(declare-fun res!2612959 () Bool)

(assert (=> b!6350242 (= res!2612959 (not ((_ is EmptyLang!16255) (regTwo!33023 lt!2364185))))))

(assert (=> b!6350242 (=> (not res!2612959) (not e!3856645))))

(declare-fun e!3856646 () Bool)

(assert (=> b!6350243 (= e!3856646 call!541486)))

(declare-fun b!6350244 () Bool)

(assert (=> b!6350244 (= e!3856641 call!541485)))

(declare-fun c!1155261 () Bool)

(declare-fun bm!541481 () Bool)

(assert (=> bm!541481 (= call!541486 (Exists!3325 (ite c!1155261 lambda!349289 lambda!349290)))))

(declare-fun b!6350245 () Bool)

(assert (=> b!6350245 (= e!3856640 e!3856644)))

(declare-fun res!2612960 () Bool)

(assert (=> b!6350245 (= res!2612960 (matchRSpec!3356 (regOne!33023 (regTwo!33023 lt!2364185)) s!2326))))

(assert (=> b!6350245 (=> res!2612960 e!3856644)))

(declare-fun b!6350246 () Bool)

(declare-fun c!1155263 () Bool)

(assert (=> b!6350246 (= c!1155263 ((_ is ElementMatch!16255) (regTwo!33023 lt!2364185)))))

(assert (=> b!6350246 (= e!3856645 e!3856643)))

(declare-fun b!6350247 () Bool)

(declare-fun res!2612961 () Bool)

(assert (=> b!6350247 (=> res!2612961 e!3856642)))

(assert (=> b!6350247 (= res!2612961 call!541485)))

(assert (=> b!6350247 (= e!3856646 e!3856642)))

(declare-fun b!6350248 () Bool)

(assert (=> b!6350248 (= e!3856640 e!3856646)))

(assert (=> b!6350248 (= c!1155261 ((_ is Star!16255) (regTwo!33023 lt!2364185)))))

(assert (= (and d!1992657 c!1155262) b!6350244))

(assert (= (and d!1992657 (not c!1155262)) b!6350242))

(assert (= (and b!6350242 res!2612959) b!6350246))

(assert (= (and b!6350246 c!1155263) b!6350241))

(assert (= (and b!6350246 (not c!1155263)) b!6350239))

(assert (= (and b!6350239 c!1155264) b!6350245))

(assert (= (and b!6350239 (not c!1155264)) b!6350248))

(assert (= (and b!6350245 (not res!2612960)) b!6350238))

(assert (= (and b!6350248 c!1155261) b!6350247))

(assert (= (and b!6350248 (not c!1155261)) b!6350243))

(assert (= (and b!6350247 (not res!2612961)) b!6350240))

(assert (= (or b!6350240 b!6350243) bm!541481))

(assert (= (or b!6350244 b!6350247) bm!541480))

(declare-fun m!7157350 () Bool)

(assert (=> b!6350238 m!7157350))

(assert (=> bm!541480 m!7155846))

(declare-fun m!7157352 () Bool)

(assert (=> bm!541481 m!7157352))

(declare-fun m!7157354 () Bool)

(assert (=> b!6350245 m!7157354))

(assert (=> b!6348864 d!1992657))

(declare-fun d!1992659 () Bool)

(assert (=> d!1992659 (= (isDefined!12849 lt!2364299) (not (isEmpty!37034 lt!2364299)))))

(declare-fun bs!1590458 () Bool)

(assert (= bs!1590458 d!1992659))

(declare-fun m!7157356 () Bool)

(assert (=> bs!1590458 m!7157356))

(assert (=> b!6348792 d!1992659))

(declare-fun b!6350249 () Bool)

(declare-fun e!3856648 () Bool)

(declare-fun e!3856651 () Bool)

(assert (=> b!6350249 (= e!3856648 e!3856651)))

(declare-fun c!1155265 () Bool)

(assert (=> b!6350249 (= c!1155265 ((_ is Star!16255) lt!2364231))))

(declare-fun b!6350250 () Bool)

(declare-fun e!3856650 () Bool)

(declare-fun e!3856653 () Bool)

(assert (=> b!6350250 (= e!3856650 e!3856653)))

(declare-fun res!2612963 () Bool)

(assert (=> b!6350250 (=> (not res!2612963) (not e!3856653))))

(declare-fun call!541488 () Bool)

(assert (=> b!6350250 (= res!2612963 call!541488)))

(declare-fun bm!541482 () Bool)

(declare-fun call!541487 () Bool)

(declare-fun c!1155266 () Bool)

(assert (=> bm!541482 (= call!541487 (validRegex!7991 (ite c!1155266 (regTwo!33023 lt!2364231) (regTwo!33022 lt!2364231))))))

(declare-fun b!6350251 () Bool)

(declare-fun e!3856652 () Bool)

(assert (=> b!6350251 (= e!3856652 call!541487)))

(declare-fun b!6350252 () Bool)

(assert (=> b!6350252 (= e!3856653 call!541487)))

(declare-fun b!6350253 () Bool)

(declare-fun e!3856647 () Bool)

(declare-fun call!541489 () Bool)

(assert (=> b!6350253 (= e!3856647 call!541489)))

(declare-fun d!1992661 () Bool)

(declare-fun res!2612965 () Bool)

(assert (=> d!1992661 (=> res!2612965 e!3856648)))

(assert (=> d!1992661 (= res!2612965 ((_ is ElementMatch!16255) lt!2364231))))

(assert (=> d!1992661 (= (validRegex!7991 lt!2364231) e!3856648)))

(declare-fun bm!541483 () Bool)

(assert (=> bm!541483 (= call!541489 (validRegex!7991 (ite c!1155265 (reg!16584 lt!2364231) (ite c!1155266 (regOne!33023 lt!2364231) (regOne!33022 lt!2364231)))))))

(declare-fun b!6350254 () Bool)

(declare-fun res!2612962 () Bool)

(assert (=> b!6350254 (=> (not res!2612962) (not e!3856652))))

(assert (=> b!6350254 (= res!2612962 call!541488)))

(declare-fun e!3856649 () Bool)

(assert (=> b!6350254 (= e!3856649 e!3856652)))

(declare-fun b!6350255 () Bool)

(assert (=> b!6350255 (= e!3856651 e!3856649)))

(assert (=> b!6350255 (= c!1155266 ((_ is Union!16255) lt!2364231))))

(declare-fun b!6350256 () Bool)

(assert (=> b!6350256 (= e!3856651 e!3856647)))

(declare-fun res!2612966 () Bool)

(assert (=> b!6350256 (= res!2612966 (not (nullable!6248 (reg!16584 lt!2364231))))))

(assert (=> b!6350256 (=> (not res!2612966) (not e!3856647))))

(declare-fun bm!541484 () Bool)

(assert (=> bm!541484 (= call!541488 call!541489)))

(declare-fun b!6350257 () Bool)

(declare-fun res!2612964 () Bool)

(assert (=> b!6350257 (=> res!2612964 e!3856650)))

(assert (=> b!6350257 (= res!2612964 (not ((_ is Concat!25100) lt!2364231)))))

(assert (=> b!6350257 (= e!3856649 e!3856650)))

(assert (= (and d!1992661 (not res!2612965)) b!6350249))

(assert (= (and b!6350249 c!1155265) b!6350256))

(assert (= (and b!6350249 (not c!1155265)) b!6350255))

(assert (= (and b!6350256 res!2612966) b!6350253))

(assert (= (and b!6350255 c!1155266) b!6350254))

(assert (= (and b!6350255 (not c!1155266)) b!6350257))

(assert (= (and b!6350254 res!2612962) b!6350251))

(assert (= (and b!6350257 (not res!2612964)) b!6350250))

(assert (= (and b!6350250 res!2612963) b!6350252))

(assert (= (or b!6350251 b!6350252) bm!541482))

(assert (= (or b!6350254 b!6350250) bm!541484))

(assert (= (or b!6350253 bm!541484) bm!541483))

(declare-fun m!7157358 () Bool)

(assert (=> bm!541482 m!7157358))

(declare-fun m!7157360 () Bool)

(assert (=> bm!541483 m!7157360))

(declare-fun m!7157362 () Bool)

(assert (=> b!6350256 m!7157362))

(assert (=> d!1991897 d!1992661))

(assert (=> d!1991897 d!1992057))

(assert (=> d!1991897 d!1992059))

(assert (=> b!6348876 d!1992619))

(declare-fun bs!1590459 () Bool)

(declare-fun d!1992663 () Bool)

(assert (= bs!1590459 (and d!1992663 b!6348958)))

(declare-fun lambda!349291 () Int)

(assert (=> bs!1590459 (not (= lambda!349291 lambda!349187))))

(declare-fun bs!1590460 () Bool)

(assert (= bs!1590460 (and d!1992663 d!1992383)))

(assert (=> bs!1590460 (not (= lambda!349291 lambda!349245))))

(declare-fun bs!1590461 () Bool)

(assert (= bs!1590461 (and d!1992663 b!6348953)))

(assert (=> bs!1590461 (not (= lambda!349291 lambda!349184))))

(declare-fun bs!1590462 () Bool)

(assert (= bs!1590462 (and d!1992663 d!1992433)))

(assert (=> bs!1590462 (= lambda!349291 lambda!349257)))

(declare-fun bs!1590463 () Bool)

(assert (= bs!1590463 (and d!1992663 d!1992375)))

(assert (=> bs!1590463 (= lambda!349291 lambda!349224)))

(declare-fun bs!1590464 () Bool)

(assert (= bs!1590464 (and d!1992663 b!6348956)))

(assert (=> bs!1590464 (not (= lambda!349291 lambda!349186))))

(declare-fun bs!1590465 () Bool)

(assert (= bs!1590465 (and d!1992663 b!6348951)))

(assert (=> bs!1590465 (not (= lambda!349291 lambda!349183))))

(declare-fun bs!1590466 () Bool)

(assert (= bs!1590466 (and d!1992663 b!6349642)))

(assert (=> bs!1590466 (not (= lambda!349291 lambda!349247))))

(declare-fun bs!1590467 () Bool)

(assert (= bs!1590467 (and d!1992663 b!6349644)))

(assert (=> bs!1590467 (not (= lambda!349291 lambda!349249))))

(assert (=> d!1992663 (= (nullableZipper!2021 lt!2364175) (exists!2569 lt!2364175 lambda!349291))))

(declare-fun bs!1590468 () Bool)

(assert (= bs!1590468 d!1992663))

(declare-fun m!7157364 () Bool)

(assert (=> bs!1590468 m!7157364))

(assert (=> b!6348506 d!1992663))

(assert (=> d!1992031 d!1992503))

(declare-fun b!6350258 () Bool)

(declare-fun e!3856654 () Bool)

(declare-fun lt!2364461 () Bool)

(declare-fun call!541490 () Bool)

(assert (=> b!6350258 (= e!3856654 (= lt!2364461 call!541490))))

(declare-fun b!6350259 () Bool)

(declare-fun e!3856659 () Bool)

(assert (=> b!6350259 (= e!3856659 (= (head!13003 Nil!64941) (c!1154628 (regOne!33022 (regOne!33022 r!7292)))))))

(declare-fun b!6350260 () Bool)

(declare-fun e!3856658 () Bool)

(assert (=> b!6350260 (= e!3856658 (matchR!8438 (derivativeStep!4960 (regOne!33022 (regOne!33022 r!7292)) (head!13003 Nil!64941)) (tail!12088 Nil!64941)))))

(declare-fun b!6350261 () Bool)

(declare-fun res!2612971 () Bool)

(declare-fun e!3856657 () Bool)

(assert (=> b!6350261 (=> res!2612971 e!3856657)))

(assert (=> b!6350261 (= res!2612971 (not (isEmpty!37033 (tail!12088 Nil!64941))))))

(declare-fun b!6350262 () Bool)

(declare-fun e!3856656 () Bool)

(assert (=> b!6350262 (= e!3856656 e!3856657)))

(declare-fun res!2612968 () Bool)

(assert (=> b!6350262 (=> res!2612968 e!3856657)))

(assert (=> b!6350262 (= res!2612968 call!541490)))

(declare-fun b!6350263 () Bool)

(declare-fun e!3856660 () Bool)

(assert (=> b!6350263 (= e!3856660 (not lt!2364461))))

(declare-fun b!6350264 () Bool)

(assert (=> b!6350264 (= e!3856658 (nullable!6248 (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun d!1992665 () Bool)

(assert (=> d!1992665 e!3856654))

(declare-fun c!1155269 () Bool)

(assert (=> d!1992665 (= c!1155269 ((_ is EmptyExpr!16255) (regOne!33022 (regOne!33022 r!7292))))))

(assert (=> d!1992665 (= lt!2364461 e!3856658)))

(declare-fun c!1155267 () Bool)

(assert (=> d!1992665 (= c!1155267 (isEmpty!37033 Nil!64941))))

(assert (=> d!1992665 (validRegex!7991 (regOne!33022 (regOne!33022 r!7292)))))

(assert (=> d!1992665 (= (matchR!8438 (regOne!33022 (regOne!33022 r!7292)) Nil!64941) lt!2364461)))

(declare-fun b!6350265 () Bool)

(declare-fun res!2612970 () Bool)

(declare-fun e!3856655 () Bool)

(assert (=> b!6350265 (=> res!2612970 e!3856655)))

(assert (=> b!6350265 (= res!2612970 (not ((_ is ElementMatch!16255) (regOne!33022 (regOne!33022 r!7292)))))))

(assert (=> b!6350265 (= e!3856660 e!3856655)))

(declare-fun b!6350266 () Bool)

(declare-fun res!2612974 () Bool)

(assert (=> b!6350266 (=> (not res!2612974) (not e!3856659))))

(assert (=> b!6350266 (= res!2612974 (isEmpty!37033 (tail!12088 Nil!64941)))))

(declare-fun b!6350267 () Bool)

(assert (=> b!6350267 (= e!3856654 e!3856660)))

(declare-fun c!1155268 () Bool)

(assert (=> b!6350267 (= c!1155268 ((_ is EmptyLang!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6350268 () Bool)

(assert (=> b!6350268 (= e!3856655 e!3856656)))

(declare-fun res!2612972 () Bool)

(assert (=> b!6350268 (=> (not res!2612972) (not e!3856656))))

(assert (=> b!6350268 (= res!2612972 (not lt!2364461))))

(declare-fun b!6350269 () Bool)

(assert (=> b!6350269 (= e!3856657 (not (= (head!13003 Nil!64941) (c!1154628 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun bm!541485 () Bool)

(assert (=> bm!541485 (= call!541490 (isEmpty!37033 Nil!64941))))

(declare-fun b!6350270 () Bool)

(declare-fun res!2612969 () Bool)

(assert (=> b!6350270 (=> (not res!2612969) (not e!3856659))))

(assert (=> b!6350270 (= res!2612969 (not call!541490))))

(declare-fun b!6350271 () Bool)

(declare-fun res!2612967 () Bool)

(assert (=> b!6350271 (=> res!2612967 e!3856655)))

(assert (=> b!6350271 (= res!2612967 e!3856659)))

(declare-fun res!2612973 () Bool)

(assert (=> b!6350271 (=> (not res!2612973) (not e!3856659))))

(assert (=> b!6350271 (= res!2612973 lt!2364461)))

(assert (= (and d!1992665 c!1155267) b!6350264))

(assert (= (and d!1992665 (not c!1155267)) b!6350260))

(assert (= (and d!1992665 c!1155269) b!6350258))

(assert (= (and d!1992665 (not c!1155269)) b!6350267))

(assert (= (and b!6350267 c!1155268) b!6350263))

(assert (= (and b!6350267 (not c!1155268)) b!6350265))

(assert (= (and b!6350265 (not res!2612970)) b!6350271))

(assert (= (and b!6350271 res!2612973) b!6350270))

(assert (= (and b!6350270 res!2612969) b!6350266))

(assert (= (and b!6350266 res!2612974) b!6350259))

(assert (= (and b!6350271 (not res!2612967)) b!6350268))

(assert (= (and b!6350268 res!2612972) b!6350262))

(assert (= (and b!6350262 (not res!2612968)) b!6350261))

(assert (= (and b!6350261 (not res!2612971)) b!6350269))

(assert (= (or b!6350258 b!6350262 b!6350270) bm!541485))

(assert (=> b!6350264 m!7155358))

(declare-fun m!7157366 () Bool)

(assert (=> d!1992665 m!7157366))

(assert (=> d!1992665 m!7155966))

(declare-fun m!7157368 () Bool)

(assert (=> b!6350259 m!7157368))

(declare-fun m!7157370 () Bool)

(assert (=> b!6350266 m!7157370))

(assert (=> b!6350266 m!7157370))

(declare-fun m!7157372 () Bool)

(assert (=> b!6350266 m!7157372))

(assert (=> bm!541485 m!7157366))

(assert (=> b!6350260 m!7157368))

(assert (=> b!6350260 m!7157368))

(declare-fun m!7157374 () Bool)

(assert (=> b!6350260 m!7157374))

(assert (=> b!6350260 m!7157370))

(assert (=> b!6350260 m!7157374))

(assert (=> b!6350260 m!7157370))

(declare-fun m!7157376 () Bool)

(assert (=> b!6350260 m!7157376))

(assert (=> b!6350261 m!7157370))

(assert (=> b!6350261 m!7157370))

(assert (=> b!6350261 m!7157372))

(assert (=> b!6350269 m!7157368))

(assert (=> d!1992031 d!1992665))

(assert (=> d!1992031 d!1992579))

(declare-fun bs!1590469 () Bool)

(declare-fun d!1992667 () Bool)

(assert (= bs!1590469 (and d!1992667 b!6348958)))

(declare-fun lambda!349292 () Int)

(assert (=> bs!1590469 (not (= lambda!349292 lambda!349187))))

(declare-fun bs!1590470 () Bool)

(assert (= bs!1590470 (and d!1992667 d!1992383)))

(assert (=> bs!1590470 (not (= lambda!349292 lambda!349245))))

(declare-fun bs!1590471 () Bool)

(assert (= bs!1590471 (and d!1992667 b!6348953)))

(assert (=> bs!1590471 (not (= lambda!349292 lambda!349184))))

(declare-fun bs!1590472 () Bool)

(assert (= bs!1590472 (and d!1992667 d!1992433)))

(assert (=> bs!1590472 (= lambda!349292 lambda!349257)))

(declare-fun bs!1590473 () Bool)

(assert (= bs!1590473 (and d!1992667 d!1992375)))

(assert (=> bs!1590473 (= lambda!349292 lambda!349224)))

(declare-fun bs!1590474 () Bool)

(assert (= bs!1590474 (and d!1992667 b!6348956)))

(assert (=> bs!1590474 (not (= lambda!349292 lambda!349186))))

(declare-fun bs!1590475 () Bool)

(assert (= bs!1590475 (and d!1992667 b!6348951)))

(assert (=> bs!1590475 (not (= lambda!349292 lambda!349183))))

(declare-fun bs!1590476 () Bool)

(assert (= bs!1590476 (and d!1992667 d!1992663)))

(assert (=> bs!1590476 (= lambda!349292 lambda!349291)))

(declare-fun bs!1590477 () Bool)

(assert (= bs!1590477 (and d!1992667 b!6349642)))

(assert (=> bs!1590477 (not (= lambda!349292 lambda!349247))))

(declare-fun bs!1590478 () Bool)

(assert (= bs!1590478 (and d!1992667 b!6349644)))

(assert (=> bs!1590478 (not (= lambda!349292 lambda!349249))))

(assert (=> d!1992667 (= (nullableZipper!2021 lt!2364165) (exists!2569 lt!2364165 lambda!349292))))

(declare-fun bs!1590479 () Bool)

(assert (= bs!1590479 d!1992667))

(declare-fun m!7157378 () Bool)

(assert (=> bs!1590479 m!7157378))

(assert (=> b!6348768 d!1992667))

(assert (=> b!6348788 d!1992585))

(assert (=> b!6348788 d!1992589))

(assert (=> b!6348788 d!1992591))

(declare-fun b!6350272 () Bool)

(declare-fun lt!2364463 () Unit!158351)

(declare-fun lt!2364464 () Unit!158351)

(assert (=> b!6350272 (= lt!2364463 lt!2364464)))

(assert (=> b!6350272 (= (++!14324 (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (Cons!64941 (h!71389 (t!378653 s!2326)) Nil!64941)) (t!378653 (t!378653 s!2326))) s!2326)))

(assert (=> b!6350272 (= lt!2364464 (lemmaMoveElementToOtherListKeepsConcatEq!2419 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (h!71389 (t!378653 s!2326)) (t!378653 (t!378653 s!2326)) s!2326))))

(declare-fun e!3856663 () Option!16146)

(assert (=> b!6350272 (= e!3856663 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) (++!14324 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (Cons!64941 (h!71389 (t!378653 s!2326)) Nil!64941)) (t!378653 (t!378653 s!2326)) s!2326))))

(declare-fun b!6350273 () Bool)

(declare-fun e!3856665 () Bool)

(declare-fun lt!2364462 () Option!16146)

(assert (=> b!6350273 (= e!3856665 (= (++!14324 (_1!36537 (get!22467 lt!2364462)) (_2!36537 (get!22467 lt!2364462))) s!2326))))

(declare-fun b!6350274 () Bool)

(declare-fun res!2612976 () Bool)

(assert (=> b!6350274 (=> (not res!2612976) (not e!3856665))))

(assert (=> b!6350274 (= res!2612976 (matchR!8438 (regOne!33022 r!7292) (_1!36537 (get!22467 lt!2364462))))))

(declare-fun b!6350275 () Bool)

(declare-fun res!2612975 () Bool)

(assert (=> b!6350275 (=> (not res!2612975) (not e!3856665))))

(assert (=> b!6350275 (= res!2612975 (matchR!8438 (regTwo!33022 r!7292) (_2!36537 (get!22467 lt!2364462))))))

(declare-fun d!1992669 () Bool)

(declare-fun e!3856664 () Bool)

(assert (=> d!1992669 e!3856664))

(declare-fun res!2612978 () Bool)

(assert (=> d!1992669 (=> res!2612978 e!3856664)))

(assert (=> d!1992669 (= res!2612978 e!3856665)))

(declare-fun res!2612979 () Bool)

(assert (=> d!1992669 (=> (not res!2612979) (not e!3856665))))

(assert (=> d!1992669 (= res!2612979 (isDefined!12849 lt!2364462))))

(declare-fun e!3856662 () Option!16146)

(assert (=> d!1992669 (= lt!2364462 e!3856662)))

(declare-fun c!1155271 () Bool)

(declare-fun e!3856661 () Bool)

(assert (=> d!1992669 (= c!1155271 e!3856661)))

(declare-fun res!2612977 () Bool)

(assert (=> d!1992669 (=> (not res!2612977) (not e!3856661))))

(assert (=> d!1992669 (= res!2612977 (matchR!8438 (regOne!33022 r!7292) (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941))))))

(assert (=> d!1992669 (validRegex!7991 (regOne!33022 r!7292))))

(assert (=> d!1992669 (= (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326) s!2326) lt!2364462)))

(declare-fun b!6350276 () Bool)

(assert (=> b!6350276 (= e!3856664 (not (isDefined!12849 lt!2364462)))))

(declare-fun b!6350277 () Bool)

(assert (=> b!6350277 (= e!3856662 e!3856663)))

(declare-fun c!1155270 () Bool)

(assert (=> b!6350277 (= c!1155270 ((_ is Nil!64941) (t!378653 s!2326)))))

(declare-fun b!6350278 () Bool)

(assert (=> b!6350278 (= e!3856663 None!16145)))

(declare-fun b!6350279 () Bool)

(assert (=> b!6350279 (= e!3856662 (Some!16145 (tuple2!66469 (++!14324 Nil!64941 (Cons!64941 (h!71389 s!2326) Nil!64941)) (t!378653 s!2326))))))

(declare-fun b!6350280 () Bool)

(assert (=> b!6350280 (= e!3856661 (matchR!8438 (regTwo!33022 r!7292) (t!378653 s!2326)))))

(assert (= (and d!1992669 res!2612977) b!6350280))

(assert (= (and d!1992669 c!1155271) b!6350279))

(assert (= (and d!1992669 (not c!1155271)) b!6350277))

(assert (= (and b!6350277 c!1155270) b!6350278))

(assert (= (and b!6350277 (not c!1155270)) b!6350272))

(assert (= (and d!1992669 res!2612979) b!6350274))

(assert (= (and b!6350274 res!2612976) b!6350275))

(assert (= (and b!6350275 res!2612975) b!6350273))

(assert (= (and d!1992669 (not res!2612978)) b!6350276))

(declare-fun m!7157380 () Bool)

(assert (=> b!6350276 m!7157380))

(declare-fun m!7157382 () Bool)

(assert (=> b!6350273 m!7157382))

(declare-fun m!7157384 () Bool)

(assert (=> b!6350273 m!7157384))

(assert (=> b!6350274 m!7157382))

(declare-fun m!7157386 () Bool)

(assert (=> b!6350274 m!7157386))

(declare-fun m!7157388 () Bool)

(assert (=> b!6350280 m!7157388))

(assert (=> d!1992669 m!7157380))

(assert (=> d!1992669 m!7155936))

(declare-fun m!7157390 () Bool)

(assert (=> d!1992669 m!7157390))

(assert (=> d!1992669 m!7155934))

(assert (=> b!6350272 m!7155936))

(assert (=> b!6350272 m!7157258))

(assert (=> b!6350272 m!7157258))

(assert (=> b!6350272 m!7157260))

(assert (=> b!6350272 m!7155936))

(assert (=> b!6350272 m!7157262))

(assert (=> b!6350272 m!7157258))

(declare-fun m!7157392 () Bool)

(assert (=> b!6350272 m!7157392))

(assert (=> b!6350275 m!7157382))

(declare-fun m!7157394 () Bool)

(assert (=> b!6350275 m!7157394))

(assert (=> b!6348788 d!1992669))

(declare-fun d!1992671 () Bool)

(declare-fun e!3856667 () Bool)

(assert (=> d!1992671 e!3856667))

(declare-fun res!2612981 () Bool)

(assert (=> d!1992671 (=> (not res!2612981) (not e!3856667))))

(declare-fun lt!2364465 () List!65065)

(assert (=> d!1992671 (= res!2612981 (= (content!12256 lt!2364465) ((_ map or) (content!12256 (_1!36537 (get!22467 lt!2364310))) (content!12256 (_2!36537 (get!22467 lt!2364310))))))))

(declare-fun e!3856666 () List!65065)

(assert (=> d!1992671 (= lt!2364465 e!3856666)))

(declare-fun c!1155272 () Bool)

(assert (=> d!1992671 (= c!1155272 ((_ is Nil!64941) (_1!36537 (get!22467 lt!2364310))))))

(assert (=> d!1992671 (= (++!14324 (_1!36537 (get!22467 lt!2364310)) (_2!36537 (get!22467 lt!2364310))) lt!2364465)))

(declare-fun b!6350281 () Bool)

(assert (=> b!6350281 (= e!3856666 (_2!36537 (get!22467 lt!2364310)))))

(declare-fun b!6350283 () Bool)

(declare-fun res!2612980 () Bool)

(assert (=> b!6350283 (=> (not res!2612980) (not e!3856667))))

(assert (=> b!6350283 (= res!2612980 (= (size!40344 lt!2364465) (+ (size!40344 (_1!36537 (get!22467 lt!2364310))) (size!40344 (_2!36537 (get!22467 lt!2364310))))))))

(declare-fun b!6350282 () Bool)

(assert (=> b!6350282 (= e!3856666 (Cons!64941 (h!71389 (_1!36537 (get!22467 lt!2364310))) (++!14324 (t!378653 (_1!36537 (get!22467 lt!2364310))) (_2!36537 (get!22467 lt!2364310)))))))

(declare-fun b!6350284 () Bool)

(assert (=> b!6350284 (= e!3856667 (or (not (= (_2!36537 (get!22467 lt!2364310)) Nil!64941)) (= lt!2364465 (_1!36537 (get!22467 lt!2364310)))))))

(assert (= (and d!1992671 c!1155272) b!6350281))

(assert (= (and d!1992671 (not c!1155272)) b!6350282))

(assert (= (and d!1992671 res!2612981) b!6350283))

(assert (= (and b!6350283 res!2612980) b!6350284))

(declare-fun m!7157396 () Bool)

(assert (=> d!1992671 m!7157396))

(declare-fun m!7157398 () Bool)

(assert (=> d!1992671 m!7157398))

(declare-fun m!7157400 () Bool)

(assert (=> d!1992671 m!7157400))

(declare-fun m!7157402 () Bool)

(assert (=> b!6350283 m!7157402))

(declare-fun m!7157404 () Bool)

(assert (=> b!6350283 m!7157404))

(declare-fun m!7157406 () Bool)

(assert (=> b!6350283 m!7157406))

(declare-fun m!7157408 () Bool)

(assert (=> b!6350282 m!7157408))

(assert (=> b!6348831 d!1992671))

(declare-fun d!1992673 () Bool)

(assert (=> d!1992673 (= (get!22467 lt!2364310) (v!52314 lt!2364310))))

(assert (=> b!6348831 d!1992673))

(declare-fun d!1992675 () Bool)

(assert (=> d!1992675 (= (isUnion!1094 lt!2364325) ((_ is Union!16255) lt!2364325))))

(assert (=> b!6348936 d!1992675))

(declare-fun bs!1590480 () Bool)

(declare-fun d!1992677 () Bool)

(assert (= bs!1590480 (and d!1992677 d!1992043)))

(declare-fun lambda!349293 () Int)

(assert (=> bs!1590480 (= lambda!349293 lambda!349166)))

(declare-fun bs!1590481 () Bool)

(assert (= bs!1590481 (and d!1992677 d!1992027)))

(assert (=> bs!1590481 (= lambda!349293 lambda!349163)))

(declare-fun bs!1590482 () Bool)

(assert (= bs!1590482 (and d!1992677 d!1991903)))

(assert (=> bs!1590482 (= lambda!349293 lambda!349111)))

(declare-fun bs!1590483 () Bool)

(assert (= bs!1590483 (and d!1992677 d!1992639)))

(assert (=> bs!1590483 (= lambda!349293 lambda!349286)))

(declare-fun bs!1590484 () Bool)

(assert (= bs!1590484 (and d!1992677 d!1992339)))

(assert (=> bs!1590484 (= lambda!349293 lambda!349220)))

(declare-fun bs!1590485 () Bool)

(assert (= bs!1590485 (and d!1992677 d!1992649)))

(assert (=> bs!1590485 (= lambda!349293 lambda!349288)))

(declare-fun bs!1590486 () Bool)

(assert (= bs!1590486 (and d!1992677 d!1992049)))

(assert (=> bs!1590486 (= lambda!349293 lambda!349169)))

(declare-fun bs!1590487 () Bool)

(assert (= bs!1590487 (and d!1992677 b!6349632)))

(assert (=> bs!1590487 (not (= lambda!349293 lambda!349239))))

(declare-fun bs!1590488 () Bool)

(assert (= bs!1590488 (and d!1992677 d!1991913)))

(assert (=> bs!1590488 (= lambda!349293 lambda!349122)))

(declare-fun bs!1590489 () Bool)

(assert (= bs!1590489 (and d!1992677 d!1992057)))

(assert (=> bs!1590489 (= lambda!349293 lambda!349172)))

(declare-fun bs!1590490 () Bool)

(assert (= bs!1590490 (and d!1992677 b!6349630)))

(assert (=> bs!1590490 (not (= lambda!349293 lambda!349237))))

(declare-fun bs!1590491 () Bool)

(assert (= bs!1590491 (and d!1992677 d!1991959)))

(assert (=> bs!1590491 (= lambda!349293 lambda!349128)))

(declare-fun bs!1590492 () Bool)

(assert (= bs!1590492 (and d!1992677 d!1992059)))

(assert (=> bs!1590492 (= lambda!349293 lambda!349175)))

(declare-fun b!6350285 () Bool)

(declare-fun e!3856670 () Bool)

(declare-fun lt!2364466 () Regex!16255)

(assert (=> b!6350285 (= e!3856670 (= lt!2364466 (head!13002 (t!378652 lt!2364159))))))

(declare-fun b!6350286 () Bool)

(declare-fun e!3856668 () Regex!16255)

(assert (=> b!6350286 (= e!3856668 (Concat!25100 (h!71388 (t!378652 lt!2364159)) (generalisedConcat!1852 (t!378652 (t!378652 lt!2364159)))))))

(declare-fun b!6350287 () Bool)

(declare-fun e!3856671 () Bool)

(assert (=> b!6350287 (= e!3856671 (isEmpty!37030 (t!378652 (t!378652 lt!2364159))))))

(declare-fun b!6350288 () Bool)

(assert (=> b!6350288 (= e!3856670 (isConcat!1180 lt!2364466))))

(declare-fun b!6350289 () Bool)

(declare-fun e!3856672 () Bool)

(assert (=> b!6350289 (= e!3856672 e!3856670)))

(declare-fun c!1155276 () Bool)

(assert (=> b!6350289 (= c!1155276 (isEmpty!37030 (tail!12087 (t!378652 lt!2364159))))))

(declare-fun e!3856669 () Bool)

(assert (=> d!1992677 e!3856669))

(declare-fun res!2612982 () Bool)

(assert (=> d!1992677 (=> (not res!2612982) (not e!3856669))))

(assert (=> d!1992677 (= res!2612982 (validRegex!7991 lt!2364466))))

(declare-fun e!3856673 () Regex!16255)

(assert (=> d!1992677 (= lt!2364466 e!3856673)))

(declare-fun c!1155275 () Bool)

(assert (=> d!1992677 (= c!1155275 e!3856671)))

(declare-fun res!2612983 () Bool)

(assert (=> d!1992677 (=> (not res!2612983) (not e!3856671))))

(assert (=> d!1992677 (= res!2612983 ((_ is Cons!64940) (t!378652 lt!2364159)))))

(assert (=> d!1992677 (forall!15421 (t!378652 lt!2364159) lambda!349293)))

(assert (=> d!1992677 (= (generalisedConcat!1852 (t!378652 lt!2364159)) lt!2364466)))

(declare-fun b!6350290 () Bool)

(assert (=> b!6350290 (= e!3856668 EmptyExpr!16255)))

(declare-fun b!6350291 () Bool)

(assert (=> b!6350291 (= e!3856673 (h!71388 (t!378652 lt!2364159)))))

(declare-fun b!6350292 () Bool)

(assert (=> b!6350292 (= e!3856673 e!3856668)))

(declare-fun c!1155274 () Bool)

(assert (=> b!6350292 (= c!1155274 ((_ is Cons!64940) (t!378652 lt!2364159)))))

(declare-fun b!6350293 () Bool)

(assert (=> b!6350293 (= e!3856669 e!3856672)))

(declare-fun c!1155273 () Bool)

(assert (=> b!6350293 (= c!1155273 (isEmpty!37030 (t!378652 lt!2364159)))))

(declare-fun b!6350294 () Bool)

(assert (=> b!6350294 (= e!3856672 (isEmptyExpr!1657 lt!2364466))))

(assert (= (and d!1992677 res!2612983) b!6350287))

(assert (= (and d!1992677 c!1155275) b!6350291))

(assert (= (and d!1992677 (not c!1155275)) b!6350292))

(assert (= (and b!6350292 c!1155274) b!6350286))

(assert (= (and b!6350292 (not c!1155274)) b!6350290))

(assert (= (and d!1992677 res!2612982) b!6350293))

(assert (= (and b!6350293 c!1155273) b!6350294))

(assert (= (and b!6350293 (not c!1155273)) b!6350289))

(assert (= (and b!6350289 c!1155276) b!6350285))

(assert (= (and b!6350289 (not c!1155276)) b!6350288))

(declare-fun m!7157410 () Bool)

(assert (=> b!6350286 m!7157410))

(declare-fun m!7157412 () Bool)

(assert (=> b!6350288 m!7157412))

(declare-fun m!7157414 () Bool)

(assert (=> b!6350285 m!7157414))

(declare-fun m!7157416 () Bool)

(assert (=> d!1992677 m!7157416))

(declare-fun m!7157418 () Bool)

(assert (=> d!1992677 m!7157418))

(assert (=> b!6350293 m!7156058))

(declare-fun m!7157420 () Bool)

(assert (=> b!6350294 m!7157420))

(declare-fun m!7157422 () Bool)

(assert (=> b!6350287 m!7157422))

(declare-fun m!7157424 () Bool)

(assert (=> b!6350289 m!7157424))

(assert (=> b!6350289 m!7157424))

(declare-fun m!7157426 () Bool)

(assert (=> b!6350289 m!7157426))

(assert (=> b!6348890 d!1992677))

(declare-fun d!1992679 () Bool)

(assert (=> d!1992679 (= (nullable!6248 (h!71388 (exprs!6139 lt!2364171))) (nullableFct!2195 (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun bs!1590493 () Bool)

(assert (= bs!1590493 d!1992679))

(declare-fun m!7157428 () Bool)

(assert (=> bs!1590493 m!7157428))

(assert (=> b!6348716 d!1992679))

(assert (=> bm!541236 d!1992417))

(declare-fun d!1992681 () Bool)

(declare-fun res!2612988 () Bool)

(declare-fun e!3856678 () Bool)

(assert (=> d!1992681 (=> res!2612988 e!3856678)))

(assert (=> d!1992681 (= res!2612988 ((_ is Nil!64942) lt!2364350))))

(assert (=> d!1992681 (= (noDuplicate!2085 lt!2364350) e!3856678)))

(declare-fun b!6350299 () Bool)

(declare-fun e!3856679 () Bool)

(assert (=> b!6350299 (= e!3856678 e!3856679)))

(declare-fun res!2612989 () Bool)

(assert (=> b!6350299 (=> (not res!2612989) (not e!3856679))))

(declare-fun contains!20153 (List!65066 Context!11278) Bool)

(assert (=> b!6350299 (= res!2612989 (not (contains!20153 (t!378654 lt!2364350) (h!71390 lt!2364350))))))

(declare-fun b!6350300 () Bool)

(assert (=> b!6350300 (= e!3856679 (noDuplicate!2085 (t!378654 lt!2364350)))))

(assert (= (and d!1992681 (not res!2612988)) b!6350299))

(assert (= (and b!6350299 res!2612989) b!6350300))

(declare-fun m!7157430 () Bool)

(assert (=> b!6350299 m!7157430))

(declare-fun m!7157432 () Bool)

(assert (=> b!6350300 m!7157432))

(assert (=> d!1992075 d!1992681))

(declare-fun d!1992683 () Bool)

(declare-fun e!3856687 () Bool)

(assert (=> d!1992683 e!3856687))

(declare-fun res!2612994 () Bool)

(assert (=> d!1992683 (=> (not res!2612994) (not e!3856687))))

(declare-fun res!2612995 () List!65066)

(assert (=> d!1992683 (= res!2612994 (noDuplicate!2085 res!2612995))))

(declare-fun e!3856686 () Bool)

(assert (=> d!1992683 e!3856686))

(assert (=> d!1992683 (= (choose!47118 z!1189) res!2612995)))

(declare-fun b!6350308 () Bool)

(declare-fun e!3856688 () Bool)

(declare-fun tp!1769791 () Bool)

(assert (=> b!6350308 (= e!3856688 tp!1769791)))

(declare-fun tp!1769792 () Bool)

(declare-fun b!6350307 () Bool)

(assert (=> b!6350307 (= e!3856686 (and (inv!83884 (h!71390 res!2612995)) e!3856688 tp!1769792))))

(declare-fun b!6350309 () Bool)

(assert (=> b!6350309 (= e!3856687 (= (content!12254 res!2612995) z!1189))))

(assert (= b!6350307 b!6350308))

(assert (= (and d!1992683 ((_ is Cons!64942) res!2612995)) b!6350307))

(assert (= (and d!1992683 res!2612994) b!6350309))

(declare-fun m!7157434 () Bool)

(assert (=> d!1992683 m!7157434))

(declare-fun m!7157436 () Bool)

(assert (=> b!6350307 m!7157436))

(declare-fun m!7157438 () Bool)

(assert (=> b!6350309 m!7157438))

(assert (=> d!1992075 d!1992683))

(declare-fun d!1992685 () Bool)

(assert (=> d!1992685 (= (isEmptyExpr!1657 lt!2364309) ((_ is EmptyExpr!16255) lt!2364309))))

(assert (=> b!6348829 d!1992685))

(declare-fun d!1992687 () Bool)

(declare-fun res!2612996 () Bool)

(declare-fun e!3856689 () Bool)

(assert (=> d!1992687 (=> res!2612996 e!3856689)))

(assert (=> d!1992687 (= res!2612996 ((_ is Nil!64942) lt!2364170))))

(assert (=> d!1992687 (= (forall!15423 lt!2364170 lambda!349184) e!3856689)))

(declare-fun b!6350310 () Bool)

(declare-fun e!3856690 () Bool)

(assert (=> b!6350310 (= e!3856689 e!3856690)))

(declare-fun res!2612997 () Bool)

(assert (=> b!6350310 (=> (not res!2612997) (not e!3856690))))

(assert (=> b!6350310 (= res!2612997 (dynLambda!25751 lambda!349184 (h!71390 lt!2364170)))))

(declare-fun b!6350311 () Bool)

(assert (=> b!6350311 (= e!3856690 (forall!15423 (t!378654 lt!2364170) lambda!349184))))

(assert (= (and d!1992687 (not res!2612996)) b!6350310))

(assert (= (and b!6350310 res!2612997) b!6350311))

(declare-fun b_lambda!241555 () Bool)

(assert (=> (not b_lambda!241555) (not b!6350310)))

(declare-fun m!7157440 () Bool)

(assert (=> b!6350310 m!7157440))

(declare-fun m!7157442 () Bool)

(assert (=> b!6350311 m!7157442))

(assert (=> b!6348953 d!1992687))

(declare-fun d!1992689 () Bool)

(assert (=> d!1992689 (= (isConcat!1180 lt!2364318) ((_ is Concat!25100) lt!2364318))))

(assert (=> b!6348902 d!1992689))

(declare-fun d!1992691 () Bool)

(assert (=> d!1992691 (= (Exists!3325 (ite c!1154820 lambda!349146 lambda!349147)) (choose!47113 (ite c!1154820 lambda!349146 lambda!349147)))))

(declare-fun bs!1590494 () Bool)

(assert (= bs!1590494 d!1992691))

(declare-fun m!7157444 () Bool)

(assert (=> bs!1590494 m!7157444))

(assert (=> bm!541203 d!1992691))

(declare-fun b!6350312 () Bool)

(declare-fun e!3856693 () (InoxSet Context!11278))

(declare-fun e!3856691 () (InoxSet Context!11278))

(assert (=> b!6350312 (= e!3856693 e!3856691)))

(declare-fun c!1155280 () Bool)

(assert (=> b!6350312 (= c!1155280 ((_ is Concat!25100) (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun b!6350313 () Bool)

(declare-fun e!3856695 () (InoxSet Context!11278))

(declare-fun e!3856692 () (InoxSet Context!11278))

(assert (=> b!6350313 (= e!3856695 e!3856692)))

(declare-fun c!1155281 () Bool)

(assert (=> b!6350313 (= c!1155281 ((_ is Union!16255) (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun b!6350314 () Bool)

(declare-fun c!1155278 () Bool)

(assert (=> b!6350314 (= c!1155278 ((_ is Star!16255) (h!71388 (exprs!6139 lt!2364171))))))

(declare-fun e!3856696 () (InoxSet Context!11278))

(assert (=> b!6350314 (= e!3856691 e!3856696)))

(declare-fun b!6350315 () Bool)

(declare-fun call!541493 () (InoxSet Context!11278))

(declare-fun call!541492 () (InoxSet Context!11278))

(assert (=> b!6350315 (= e!3856693 ((_ map or) call!541493 call!541492))))

(declare-fun d!1992693 () Bool)

(declare-fun c!1155279 () Bool)

(assert (=> d!1992693 (= c!1155279 (and ((_ is ElementMatch!16255) (h!71388 (exprs!6139 lt!2364171))) (= (c!1154628 (h!71388 (exprs!6139 lt!2364171))) (h!71389 s!2326))))))

(assert (=> d!1992693 (= (derivationStepZipperDown!1503 (h!71388 (exprs!6139 lt!2364171)) (Context!11279 (t!378652 (exprs!6139 lt!2364171))) (h!71389 s!2326)) e!3856695)))

(declare-fun call!541491 () List!65064)

(declare-fun bm!541486 () Bool)

(assert (=> bm!541486 (= call!541493 (derivationStepZipperDown!1503 (ite c!1155281 (regOne!33023 (h!71388 (exprs!6139 lt!2364171))) (regOne!33022 (h!71388 (exprs!6139 lt!2364171)))) (ite c!1155281 (Context!11279 (t!378652 (exprs!6139 lt!2364171))) (Context!11279 call!541491)) (h!71389 s!2326)))))

(declare-fun b!6350316 () Bool)

(declare-fun e!3856694 () Bool)

(assert (=> b!6350316 (= e!3856694 (nullable!6248 (regOne!33022 (h!71388 (exprs!6139 lt!2364171)))))))

(declare-fun b!6350317 () Bool)

(declare-fun call!541495 () (InoxSet Context!11278))

(assert (=> b!6350317 (= e!3856691 call!541495)))

(declare-fun b!6350318 () Bool)

(assert (=> b!6350318 (= e!3856696 call!541495)))

(declare-fun b!6350319 () Bool)

(assert (=> b!6350319 (= e!3856695 (store ((as const (Array Context!11278 Bool)) false) (Context!11279 (t!378652 (exprs!6139 lt!2364171))) true))))

(declare-fun bm!541487 () Bool)

(declare-fun call!541496 () (InoxSet Context!11278))

(assert (=> bm!541487 (= call!541492 call!541496)))

(declare-fun call!541494 () List!65064)

(declare-fun bm!541488 () Bool)

(declare-fun c!1155277 () Bool)

(assert (=> bm!541488 (= call!541496 (derivationStepZipperDown!1503 (ite c!1155281 (regTwo!33023 (h!71388 (exprs!6139 lt!2364171))) (ite c!1155277 (regTwo!33022 (h!71388 (exprs!6139 lt!2364171))) (ite c!1155280 (regOne!33022 (h!71388 (exprs!6139 lt!2364171))) (reg!16584 (h!71388 (exprs!6139 lt!2364171)))))) (ite (or c!1155281 c!1155277) (Context!11279 (t!378652 (exprs!6139 lt!2364171))) (Context!11279 call!541494)) (h!71389 s!2326)))))

(declare-fun b!6350320 () Bool)

(assert (=> b!6350320 (= e!3856692 ((_ map or) call!541493 call!541496))))

(declare-fun bm!541489 () Bool)

(assert (=> bm!541489 (= call!541491 ($colon$colon!2116 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364171)))) (ite (or c!1155277 c!1155280) (regTwo!33022 (h!71388 (exprs!6139 lt!2364171))) (h!71388 (exprs!6139 lt!2364171)))))))

(declare-fun bm!541490 () Bool)

(assert (=> bm!541490 (= call!541494 call!541491)))

(declare-fun b!6350321 () Bool)

(assert (=> b!6350321 (= c!1155277 e!3856694)))

(declare-fun res!2612998 () Bool)

(assert (=> b!6350321 (=> (not res!2612998) (not e!3856694))))

(assert (=> b!6350321 (= res!2612998 ((_ is Concat!25100) (h!71388 (exprs!6139 lt!2364171))))))

(assert (=> b!6350321 (= e!3856692 e!3856693)))

(declare-fun bm!541491 () Bool)

(assert (=> bm!541491 (= call!541495 call!541492)))

(declare-fun b!6350322 () Bool)

(assert (=> b!6350322 (= e!3856696 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992693 c!1155279) b!6350319))

(assert (= (and d!1992693 (not c!1155279)) b!6350313))

(assert (= (and b!6350313 c!1155281) b!6350320))

(assert (= (and b!6350313 (not c!1155281)) b!6350321))

(assert (= (and b!6350321 res!2612998) b!6350316))

(assert (= (and b!6350321 c!1155277) b!6350315))

(assert (= (and b!6350321 (not c!1155277)) b!6350312))

(assert (= (and b!6350312 c!1155280) b!6350317))

(assert (= (and b!6350312 (not c!1155280)) b!6350314))

(assert (= (and b!6350314 c!1155278) b!6350318))

(assert (= (and b!6350314 (not c!1155278)) b!6350322))

(assert (= (or b!6350317 b!6350318) bm!541490))

(assert (= (or b!6350317 b!6350318) bm!541491))

(assert (= (or b!6350315 bm!541490) bm!541489))

(assert (= (or b!6350315 bm!541491) bm!541487))

(assert (= (or b!6350320 bm!541487) bm!541488))

(assert (= (or b!6350320 b!6350315) bm!541486))

(declare-fun m!7157446 () Bool)

(assert (=> bm!541489 m!7157446))

(declare-fun m!7157448 () Bool)

(assert (=> b!6350316 m!7157448))

(declare-fun m!7157450 () Bool)

(assert (=> bm!541486 m!7157450))

(declare-fun m!7157452 () Bool)

(assert (=> bm!541488 m!7157452))

(declare-fun m!7157454 () Bool)

(assert (=> b!6350319 m!7157454))

(assert (=> bm!541209 d!1992693))

(assert (=> d!1992045 d!1992041))

(assert (=> d!1992045 d!1992039))

(declare-fun d!1992695 () Bool)

(assert (=> d!1992695 (= (matchR!8438 lt!2364185 s!2326) (matchRSpec!3356 lt!2364185 s!2326))))

(assert (=> d!1992695 true))

(declare-fun _$88!5025 () Unit!158351)

(assert (=> d!1992695 (= (choose!47109 lt!2364185 s!2326) _$88!5025)))

(declare-fun bs!1590495 () Bool)

(assert (= bs!1590495 d!1992695))

(assert (=> bs!1590495 m!7155334))

(assert (=> bs!1590495 m!7155322))

(assert (=> d!1992045 d!1992695))

(assert (=> d!1992045 d!1992473))

(declare-fun d!1992697 () Bool)

(assert (=> d!1992697 true))

(assert (=> d!1992697 true))

(declare-fun res!2612999 () Bool)

(assert (=> d!1992697 (= (choose!47113 lambda!349077) res!2612999)))

(assert (=> d!1992011 d!1992697))

(declare-fun bs!1590496 () Bool)

(declare-fun d!1992699 () Bool)

(assert (= bs!1590496 (and d!1992699 d!1992677)))

(declare-fun lambda!349294 () Int)

(assert (=> bs!1590496 (= lambda!349294 lambda!349293)))

(declare-fun bs!1590497 () Bool)

(assert (= bs!1590497 (and d!1992699 d!1992043)))

(assert (=> bs!1590497 (= lambda!349294 lambda!349166)))

(declare-fun bs!1590498 () Bool)

(assert (= bs!1590498 (and d!1992699 d!1992027)))

(assert (=> bs!1590498 (= lambda!349294 lambda!349163)))

(declare-fun bs!1590499 () Bool)

(assert (= bs!1590499 (and d!1992699 d!1991903)))

(assert (=> bs!1590499 (= lambda!349294 lambda!349111)))

(declare-fun bs!1590500 () Bool)

(assert (= bs!1590500 (and d!1992699 d!1992639)))

(assert (=> bs!1590500 (= lambda!349294 lambda!349286)))

(declare-fun bs!1590501 () Bool)

(assert (= bs!1590501 (and d!1992699 d!1992339)))

(assert (=> bs!1590501 (= lambda!349294 lambda!349220)))

(declare-fun bs!1590502 () Bool)

(assert (= bs!1590502 (and d!1992699 d!1992649)))

(assert (=> bs!1590502 (= lambda!349294 lambda!349288)))

(declare-fun bs!1590503 () Bool)

(assert (= bs!1590503 (and d!1992699 d!1992049)))

(assert (=> bs!1590503 (= lambda!349294 lambda!349169)))

(declare-fun bs!1590504 () Bool)

(assert (= bs!1590504 (and d!1992699 b!6349632)))

(assert (=> bs!1590504 (not (= lambda!349294 lambda!349239))))

(declare-fun bs!1590505 () Bool)

(assert (= bs!1590505 (and d!1992699 d!1991913)))

(assert (=> bs!1590505 (= lambda!349294 lambda!349122)))

(declare-fun bs!1590506 () Bool)

(assert (= bs!1590506 (and d!1992699 d!1992057)))

(assert (=> bs!1590506 (= lambda!349294 lambda!349172)))

(declare-fun bs!1590507 () Bool)

(assert (= bs!1590507 (and d!1992699 b!6349630)))

(assert (=> bs!1590507 (not (= lambda!349294 lambda!349237))))

(declare-fun bs!1590508 () Bool)

(assert (= bs!1590508 (and d!1992699 d!1991959)))

(assert (=> bs!1590508 (= lambda!349294 lambda!349128)))

(declare-fun bs!1590509 () Bool)

(assert (= bs!1590509 (and d!1992699 d!1992059)))

(assert (=> bs!1590509 (= lambda!349294 lambda!349175)))

(assert (=> d!1992699 (= (inv!83884 (h!71390 (t!378654 zl!343))) (forall!15421 (exprs!6139 (h!71390 (t!378654 zl!343))) lambda!349294))))

(declare-fun bs!1590510 () Bool)

(assert (= bs!1590510 d!1992699))

(declare-fun m!7157456 () Bool)

(assert (=> bs!1590510 m!7157456))

(assert (=> b!6349012 d!1992699))

(assert (=> b!6348886 d!1992619))

(declare-fun d!1992701 () Bool)

(declare-fun res!2613000 () Bool)

(declare-fun e!3856697 () Bool)

(assert (=> d!1992701 (=> res!2613000 e!3856697)))

(assert (=> d!1992701 (= res!2613000 ((_ is Nil!64942) zl!343))))

(assert (=> d!1992701 (= (forall!15423 zl!343 lambda!349187) e!3856697)))

(declare-fun b!6350323 () Bool)

(declare-fun e!3856698 () Bool)

(assert (=> b!6350323 (= e!3856697 e!3856698)))

(declare-fun res!2613001 () Bool)

(assert (=> b!6350323 (=> (not res!2613001) (not e!3856698))))

(assert (=> b!6350323 (= res!2613001 (dynLambda!25751 lambda!349187 (h!71390 zl!343)))))

(declare-fun b!6350324 () Bool)

(assert (=> b!6350324 (= e!3856698 (forall!15423 (t!378654 zl!343) lambda!349187))))

(assert (= (and d!1992701 (not res!2613000)) b!6350323))

(assert (= (and b!6350323 res!2613001) b!6350324))

(declare-fun b_lambda!241557 () Bool)

(assert (=> (not b_lambda!241557) (not b!6350323)))

(declare-fun m!7157458 () Bool)

(assert (=> b!6350323 m!7157458))

(declare-fun m!7157460 () Bool)

(assert (=> b!6350324 m!7157460))

(assert (=> b!6348958 d!1992701))

(declare-fun d!1992703 () Bool)

(assert (=> d!1992703 (= (isEmpty!37030 (exprs!6139 (h!71390 zl!343))) ((_ is Nil!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> b!6348476 d!1992703))

(declare-fun d!1992705 () Bool)

(assert (=> d!1992705 (= (nullable!6248 r!7292) (nullableFct!2195 r!7292))))

(declare-fun bs!1590511 () Bool)

(assert (= bs!1590511 d!1992705))

(declare-fun m!7157462 () Bool)

(assert (=> bs!1590511 m!7157462))

(assert (=> b!6348695 d!1992705))

(declare-fun d!1992707 () Bool)

(declare-fun res!2613002 () Bool)

(declare-fun e!3856699 () Bool)

(assert (=> d!1992707 (=> res!2613002 e!3856699)))

(assert (=> d!1992707 (= res!2613002 ((_ is Nil!64940) lt!2364328))))

(assert (=> d!1992707 (= (forall!15421 lt!2364328 lambda!349175) e!3856699)))

(declare-fun b!6350325 () Bool)

(declare-fun e!3856700 () Bool)

(assert (=> b!6350325 (= e!3856699 e!3856700)))

(declare-fun res!2613003 () Bool)

(assert (=> b!6350325 (=> (not res!2613003) (not e!3856700))))

(assert (=> b!6350325 (= res!2613003 (dynLambda!25748 lambda!349175 (h!71388 lt!2364328)))))

(declare-fun b!6350326 () Bool)

(assert (=> b!6350326 (= e!3856700 (forall!15421 (t!378652 lt!2364328) lambda!349175))))

(assert (= (and d!1992707 (not res!2613002)) b!6350325))

(assert (= (and b!6350325 res!2613003) b!6350326))

(declare-fun b_lambda!241559 () Bool)

(assert (=> (not b_lambda!241559) (not b!6350325)))

(declare-fun m!7157464 () Bool)

(assert (=> b!6350325 m!7157464))

(declare-fun m!7157466 () Bool)

(assert (=> b!6350326 m!7157466))

(assert (=> d!1992059 d!1992707))

(assert (=> d!1992009 d!1992659))

(declare-fun b!6350327 () Bool)

(declare-fun e!3856701 () Bool)

(declare-fun lt!2364467 () Bool)

(declare-fun call!541497 () Bool)

(assert (=> b!6350327 (= e!3856701 (= lt!2364467 call!541497))))

(declare-fun b!6350328 () Bool)

(declare-fun e!3856706 () Bool)

(assert (=> b!6350328 (= e!3856706 (= (head!13003 Nil!64941) (c!1154628 (regOne!33022 r!7292))))))

(declare-fun b!6350329 () Bool)

(declare-fun e!3856705 () Bool)

(assert (=> b!6350329 (= e!3856705 (matchR!8438 (derivativeStep!4960 (regOne!33022 r!7292) (head!13003 Nil!64941)) (tail!12088 Nil!64941)))))

(declare-fun b!6350330 () Bool)

(declare-fun res!2613008 () Bool)

(declare-fun e!3856704 () Bool)

(assert (=> b!6350330 (=> res!2613008 e!3856704)))

(assert (=> b!6350330 (= res!2613008 (not (isEmpty!37033 (tail!12088 Nil!64941))))))

(declare-fun b!6350331 () Bool)

(declare-fun e!3856703 () Bool)

(assert (=> b!6350331 (= e!3856703 e!3856704)))

(declare-fun res!2613005 () Bool)

(assert (=> b!6350331 (=> res!2613005 e!3856704)))

(assert (=> b!6350331 (= res!2613005 call!541497)))

(declare-fun b!6350332 () Bool)

(declare-fun e!3856707 () Bool)

(assert (=> b!6350332 (= e!3856707 (not lt!2364467))))

(declare-fun b!6350333 () Bool)

(assert (=> b!6350333 (= e!3856705 (nullable!6248 (regOne!33022 r!7292)))))

(declare-fun d!1992709 () Bool)

(assert (=> d!1992709 e!3856701))

(declare-fun c!1155284 () Bool)

(assert (=> d!1992709 (= c!1155284 ((_ is EmptyExpr!16255) (regOne!33022 r!7292)))))

(assert (=> d!1992709 (= lt!2364467 e!3856705)))

(declare-fun c!1155282 () Bool)

(assert (=> d!1992709 (= c!1155282 (isEmpty!37033 Nil!64941))))

(assert (=> d!1992709 (validRegex!7991 (regOne!33022 r!7292))))

(assert (=> d!1992709 (= (matchR!8438 (regOne!33022 r!7292) Nil!64941) lt!2364467)))

(declare-fun b!6350334 () Bool)

(declare-fun res!2613007 () Bool)

(declare-fun e!3856702 () Bool)

(assert (=> b!6350334 (=> res!2613007 e!3856702)))

(assert (=> b!6350334 (= res!2613007 (not ((_ is ElementMatch!16255) (regOne!33022 r!7292))))))

(assert (=> b!6350334 (= e!3856707 e!3856702)))

(declare-fun b!6350335 () Bool)

(declare-fun res!2613011 () Bool)

(assert (=> b!6350335 (=> (not res!2613011) (not e!3856706))))

(assert (=> b!6350335 (= res!2613011 (isEmpty!37033 (tail!12088 Nil!64941)))))

(declare-fun b!6350336 () Bool)

(assert (=> b!6350336 (= e!3856701 e!3856707)))

(declare-fun c!1155283 () Bool)

(assert (=> b!6350336 (= c!1155283 ((_ is EmptyLang!16255) (regOne!33022 r!7292)))))

(declare-fun b!6350337 () Bool)

(assert (=> b!6350337 (= e!3856702 e!3856703)))

(declare-fun res!2613009 () Bool)

(assert (=> b!6350337 (=> (not res!2613009) (not e!3856703))))

(assert (=> b!6350337 (= res!2613009 (not lt!2364467))))

(declare-fun b!6350338 () Bool)

(assert (=> b!6350338 (= e!3856704 (not (= (head!13003 Nil!64941) (c!1154628 (regOne!33022 r!7292)))))))

(declare-fun bm!541492 () Bool)

(assert (=> bm!541492 (= call!541497 (isEmpty!37033 Nil!64941))))

(declare-fun b!6350339 () Bool)

(declare-fun res!2613006 () Bool)

(assert (=> b!6350339 (=> (not res!2613006) (not e!3856706))))

(assert (=> b!6350339 (= res!2613006 (not call!541497))))

(declare-fun b!6350340 () Bool)

(declare-fun res!2613004 () Bool)

(assert (=> b!6350340 (=> res!2613004 e!3856702)))

(assert (=> b!6350340 (= res!2613004 e!3856706)))

(declare-fun res!2613010 () Bool)

(assert (=> b!6350340 (=> (not res!2613010) (not e!3856706))))

(assert (=> b!6350340 (= res!2613010 lt!2364467)))

(assert (= (and d!1992709 c!1155282) b!6350333))

(assert (= (and d!1992709 (not c!1155282)) b!6350329))

(assert (= (and d!1992709 c!1155284) b!6350327))

(assert (= (and d!1992709 (not c!1155284)) b!6350336))

(assert (= (and b!6350336 c!1155283) b!6350332))

(assert (= (and b!6350336 (not c!1155283)) b!6350334))

(assert (= (and b!6350334 (not res!2613007)) b!6350340))

(assert (= (and b!6350340 res!2613010) b!6350339))

(assert (= (and b!6350339 res!2613006) b!6350335))

(assert (= (and b!6350335 res!2613011) b!6350328))

(assert (= (and b!6350340 (not res!2613004)) b!6350337))

(assert (= (and b!6350337 res!2613009) b!6350331))

(assert (= (and b!6350331 (not res!2613005)) b!6350330))

(assert (= (and b!6350330 (not res!2613008)) b!6350338))

(assert (= (or b!6350327 b!6350331 b!6350339) bm!541492))

(declare-fun m!7157468 () Bool)

(assert (=> b!6350333 m!7157468))

(assert (=> d!1992709 m!7157366))

(assert (=> d!1992709 m!7155934))

(assert (=> b!6350328 m!7157368))

(assert (=> b!6350335 m!7157370))

(assert (=> b!6350335 m!7157370))

(assert (=> b!6350335 m!7157372))

(assert (=> bm!541492 m!7157366))

(assert (=> b!6350329 m!7157368))

(assert (=> b!6350329 m!7157368))

(declare-fun m!7157470 () Bool)

(assert (=> b!6350329 m!7157470))

(assert (=> b!6350329 m!7157370))

(assert (=> b!6350329 m!7157470))

(assert (=> b!6350329 m!7157370))

(declare-fun m!7157472 () Bool)

(assert (=> b!6350329 m!7157472))

(assert (=> b!6350330 m!7157370))

(assert (=> b!6350330 m!7157370))

(assert (=> b!6350330 m!7157372))

(assert (=> b!6350338 m!7157368))

(assert (=> d!1992009 d!1992709))

(assert (=> d!1992009 d!1992441))

(assert (=> b!6348943 d!1991913))

(declare-fun bs!1590512 () Bool)

(declare-fun d!1992711 () Bool)

(assert (= bs!1590512 (and d!1992711 d!1992677)))

(declare-fun lambda!349295 () Int)

(assert (=> bs!1590512 (= lambda!349295 lambda!349293)))

(declare-fun bs!1590513 () Bool)

(assert (= bs!1590513 (and d!1992711 d!1992043)))

(assert (=> bs!1590513 (= lambda!349295 lambda!349166)))

(declare-fun bs!1590514 () Bool)

(assert (= bs!1590514 (and d!1992711 d!1992027)))

(assert (=> bs!1590514 (= lambda!349295 lambda!349163)))

(declare-fun bs!1590515 () Bool)

(assert (= bs!1590515 (and d!1992711 d!1991903)))

(assert (=> bs!1590515 (= lambda!349295 lambda!349111)))

(declare-fun bs!1590516 () Bool)

(assert (= bs!1590516 (and d!1992711 d!1992639)))

(assert (=> bs!1590516 (= lambda!349295 lambda!349286)))

(declare-fun bs!1590517 () Bool)

(assert (= bs!1590517 (and d!1992711 d!1992339)))

(assert (=> bs!1590517 (= lambda!349295 lambda!349220)))

(declare-fun bs!1590518 () Bool)

(assert (= bs!1590518 (and d!1992711 d!1992049)))

(assert (=> bs!1590518 (= lambda!349295 lambda!349169)))

(declare-fun bs!1590519 () Bool)

(assert (= bs!1590519 (and d!1992711 b!6349632)))

(assert (=> bs!1590519 (not (= lambda!349295 lambda!349239))))

(declare-fun bs!1590520 () Bool)

(assert (= bs!1590520 (and d!1992711 d!1991913)))

(assert (=> bs!1590520 (= lambda!349295 lambda!349122)))

(declare-fun bs!1590521 () Bool)

(assert (= bs!1590521 (and d!1992711 d!1992057)))

(assert (=> bs!1590521 (= lambda!349295 lambda!349172)))

(declare-fun bs!1590522 () Bool)

(assert (= bs!1590522 (and d!1992711 b!6349630)))

(assert (=> bs!1590522 (not (= lambda!349295 lambda!349237))))

(declare-fun bs!1590523 () Bool)

(assert (= bs!1590523 (and d!1992711 d!1991959)))

(assert (=> bs!1590523 (= lambda!349295 lambda!349128)))

(declare-fun bs!1590524 () Bool)

(assert (= bs!1590524 (and d!1992711 d!1992059)))

(assert (=> bs!1590524 (= lambda!349295 lambda!349175)))

(declare-fun bs!1590525 () Bool)

(assert (= bs!1590525 (and d!1992711 d!1992699)))

(assert (=> bs!1590525 (= lambda!349295 lambda!349294)))

(declare-fun bs!1590526 () Bool)

(assert (= bs!1590526 (and d!1992711 d!1992649)))

(assert (=> bs!1590526 (= lambda!349295 lambda!349288)))

(declare-fun lt!2364468 () List!65064)

(assert (=> d!1992711 (forall!15421 lt!2364468 lambda!349295)))

(declare-fun e!3856708 () List!65064)

(assert (=> d!1992711 (= lt!2364468 e!3856708)))

(declare-fun c!1155285 () Bool)

(assert (=> d!1992711 (= c!1155285 ((_ is Cons!64942) (t!378654 zl!343)))))

(assert (=> d!1992711 (= (unfocusZipperList!1676 (t!378654 zl!343)) lt!2364468)))

(declare-fun b!6350341 () Bool)

(assert (=> b!6350341 (= e!3856708 (Cons!64940 (generalisedConcat!1852 (exprs!6139 (h!71390 (t!378654 zl!343)))) (unfocusZipperList!1676 (t!378654 (t!378654 zl!343)))))))

(declare-fun b!6350342 () Bool)

(assert (=> b!6350342 (= e!3856708 Nil!64940)))

(assert (= (and d!1992711 c!1155285) b!6350341))

(assert (= (and d!1992711 (not c!1155285)) b!6350342))

(declare-fun m!7157474 () Bool)

(assert (=> d!1992711 m!7157474))

(declare-fun m!7157476 () Bool)

(assert (=> b!6350341 m!7157476))

(declare-fun m!7157478 () Bool)

(assert (=> b!6350341 m!7157478))

(assert (=> b!6348943 d!1992711))

(declare-fun b!6350343 () Bool)

(declare-fun e!3856714 () Bool)

(declare-fun e!3856711 () Bool)

(assert (=> b!6350343 (= e!3856714 e!3856711)))

(declare-fun res!2613012 () Bool)

(declare-fun call!541499 () Bool)

(assert (=> b!6350343 (= res!2613012 call!541499)))

(assert (=> b!6350343 (=> (not res!2613012) (not e!3856711))))

(declare-fun b!6350344 () Bool)

(declare-fun e!3856709 () Bool)

(declare-fun call!541498 () Bool)

(assert (=> b!6350344 (= e!3856709 call!541498)))

(declare-fun b!6350345 () Bool)

(declare-fun e!3856712 () Bool)

(assert (=> b!6350345 (= e!3856712 e!3856714)))

(declare-fun c!1155286 () Bool)

(assert (=> b!6350345 (= c!1155286 ((_ is Union!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6350346 () Bool)

(assert (=> b!6350346 (= e!3856711 call!541498)))

(declare-fun bm!541493 () Bool)

(assert (=> bm!541493 (= call!541498 (nullable!6248 (ite c!1155286 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350347 () Bool)

(assert (=> b!6350347 (= e!3856714 e!3856709)))

(declare-fun res!2613015 () Bool)

(assert (=> b!6350347 (= res!2613015 call!541499)))

(assert (=> b!6350347 (=> res!2613015 e!3856709)))

(declare-fun bm!541494 () Bool)

(assert (=> bm!541494 (= call!541499 (nullable!6248 (ite c!1155286 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun d!1992713 () Bool)

(declare-fun res!2613016 () Bool)

(declare-fun e!3856713 () Bool)

(assert (=> d!1992713 (=> res!2613016 e!3856713)))

(assert (=> d!1992713 (= res!2613016 ((_ is EmptyExpr!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> d!1992713 (= (nullableFct!2195 (h!71388 (exprs!6139 (h!71390 zl!343)))) e!3856713)))

(declare-fun b!6350348 () Bool)

(declare-fun e!3856710 () Bool)

(assert (=> b!6350348 (= e!3856713 e!3856710)))

(declare-fun res!2613013 () Bool)

(assert (=> b!6350348 (=> (not res!2613013) (not e!3856710))))

(assert (=> b!6350348 (= res!2613013 (and (not ((_ is EmptyLang!16255) (h!71388 (exprs!6139 (h!71390 zl!343))))) (not ((_ is ElementMatch!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350349 () Bool)

(assert (=> b!6350349 (= e!3856710 e!3856712)))

(declare-fun res!2613014 () Bool)

(assert (=> b!6350349 (=> res!2613014 e!3856712)))

(assert (=> b!6350349 (= res!2613014 ((_ is Star!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (= (and d!1992713 (not res!2613016)) b!6350348))

(assert (= (and b!6350348 res!2613013) b!6350349))

(assert (= (and b!6350349 (not res!2613014)) b!6350345))

(assert (= (and b!6350345 c!1155286) b!6350347))

(assert (= (and b!6350345 (not c!1155286)) b!6350343))

(assert (= (and b!6350347 (not res!2613015)) b!6350344))

(assert (= (and b!6350343 res!2613012) b!6350346))

(assert (= (or b!6350344 b!6350346) bm!541493))

(assert (= (or b!6350347 b!6350343) bm!541494))

(declare-fun m!7157480 () Bool)

(assert (=> bm!541493 m!7157480))

(declare-fun m!7157482 () Bool)

(assert (=> bm!541494 m!7157482))

(assert (=> d!1992005 d!1992713))

(declare-fun b!6350350 () Bool)

(declare-fun e!3856716 () Bool)

(declare-fun e!3856719 () Bool)

(assert (=> b!6350350 (= e!3856716 e!3856719)))

(declare-fun c!1155287 () Bool)

(assert (=> b!6350350 (= c!1155287 ((_ is Star!16255) lt!2364325))))

(declare-fun b!6350351 () Bool)

(declare-fun e!3856718 () Bool)

(declare-fun e!3856721 () Bool)

(assert (=> b!6350351 (= e!3856718 e!3856721)))

(declare-fun res!2613018 () Bool)

(assert (=> b!6350351 (=> (not res!2613018) (not e!3856721))))

(declare-fun call!541501 () Bool)

(assert (=> b!6350351 (= res!2613018 call!541501)))

(declare-fun bm!541495 () Bool)

(declare-fun call!541500 () Bool)

(declare-fun c!1155288 () Bool)

(assert (=> bm!541495 (= call!541500 (validRegex!7991 (ite c!1155288 (regTwo!33023 lt!2364325) (regTwo!33022 lt!2364325))))))

(declare-fun b!6350352 () Bool)

(declare-fun e!3856720 () Bool)

(assert (=> b!6350352 (= e!3856720 call!541500)))

(declare-fun b!6350353 () Bool)

(assert (=> b!6350353 (= e!3856721 call!541500)))

(declare-fun b!6350354 () Bool)

(declare-fun e!3856715 () Bool)

(declare-fun call!541502 () Bool)

(assert (=> b!6350354 (= e!3856715 call!541502)))

(declare-fun d!1992715 () Bool)

(declare-fun res!2613020 () Bool)

(assert (=> d!1992715 (=> res!2613020 e!3856716)))

(assert (=> d!1992715 (= res!2613020 ((_ is ElementMatch!16255) lt!2364325))))

(assert (=> d!1992715 (= (validRegex!7991 lt!2364325) e!3856716)))

(declare-fun bm!541496 () Bool)

(assert (=> bm!541496 (= call!541502 (validRegex!7991 (ite c!1155287 (reg!16584 lt!2364325) (ite c!1155288 (regOne!33023 lt!2364325) (regOne!33022 lt!2364325)))))))

(declare-fun b!6350355 () Bool)

(declare-fun res!2613017 () Bool)

(assert (=> b!6350355 (=> (not res!2613017) (not e!3856720))))

(assert (=> b!6350355 (= res!2613017 call!541501)))

(declare-fun e!3856717 () Bool)

(assert (=> b!6350355 (= e!3856717 e!3856720)))

(declare-fun b!6350356 () Bool)

(assert (=> b!6350356 (= e!3856719 e!3856717)))

(assert (=> b!6350356 (= c!1155288 ((_ is Union!16255) lt!2364325))))

(declare-fun b!6350357 () Bool)

(assert (=> b!6350357 (= e!3856719 e!3856715)))

(declare-fun res!2613021 () Bool)

(assert (=> b!6350357 (= res!2613021 (not (nullable!6248 (reg!16584 lt!2364325))))))

(assert (=> b!6350357 (=> (not res!2613021) (not e!3856715))))

(declare-fun bm!541497 () Bool)

(assert (=> bm!541497 (= call!541501 call!541502)))

(declare-fun b!6350358 () Bool)

(declare-fun res!2613019 () Bool)

(assert (=> b!6350358 (=> res!2613019 e!3856718)))

(assert (=> b!6350358 (= res!2613019 (not ((_ is Concat!25100) lt!2364325)))))

(assert (=> b!6350358 (= e!3856717 e!3856718)))

(assert (= (and d!1992715 (not res!2613020)) b!6350350))

(assert (= (and b!6350350 c!1155287) b!6350357))

(assert (= (and b!6350350 (not c!1155287)) b!6350356))

(assert (= (and b!6350357 res!2613021) b!6350354))

(assert (= (and b!6350356 c!1155288) b!6350355))

(assert (= (and b!6350356 (not c!1155288)) b!6350358))

(assert (= (and b!6350355 res!2613017) b!6350352))

(assert (= (and b!6350358 (not res!2613019)) b!6350351))

(assert (= (and b!6350351 res!2613018) b!6350353))

(assert (= (or b!6350352 b!6350353) bm!541495))

(assert (= (or b!6350355 b!6350351) bm!541497))

(assert (= (or b!6350354 bm!541497) bm!541496))

(declare-fun m!7157484 () Bool)

(assert (=> bm!541495 m!7157484))

(declare-fun m!7157486 () Bool)

(assert (=> bm!541496 m!7157486))

(declare-fun m!7157488 () Bool)

(assert (=> b!6350357 m!7157488))

(assert (=> d!1992057 d!1992715))

(declare-fun d!1992717 () Bool)

(declare-fun res!2613022 () Bool)

(declare-fun e!3856722 () Bool)

(assert (=> d!1992717 (=> res!2613022 e!3856722)))

(assert (=> d!1992717 (= res!2613022 ((_ is Nil!64940) (unfocusZipperList!1676 zl!343)))))

(assert (=> d!1992717 (= (forall!15421 (unfocusZipperList!1676 zl!343) lambda!349172) e!3856722)))

(declare-fun b!6350359 () Bool)

(declare-fun e!3856723 () Bool)

(assert (=> b!6350359 (= e!3856722 e!3856723)))

(declare-fun res!2613023 () Bool)

(assert (=> b!6350359 (=> (not res!2613023) (not e!3856723))))

(assert (=> b!6350359 (= res!2613023 (dynLambda!25748 lambda!349172 (h!71388 (unfocusZipperList!1676 zl!343))))))

(declare-fun b!6350360 () Bool)

(assert (=> b!6350360 (= e!3856723 (forall!15421 (t!378652 (unfocusZipperList!1676 zl!343)) lambda!349172))))

(assert (= (and d!1992717 (not res!2613022)) b!6350359))

(assert (= (and b!6350359 res!2613023) b!6350360))

(declare-fun b_lambda!241561 () Bool)

(assert (=> (not b_lambda!241561) (not b!6350359)))

(declare-fun m!7157490 () Bool)

(assert (=> b!6350359 m!7157490))

(declare-fun m!7157492 () Bool)

(assert (=> b!6350360 m!7157492))

(assert (=> d!1992057 d!1992717))

(declare-fun d!1992719 () Bool)

(assert (=> d!1992719 (= ($colon$colon!2116 (exprs!6139 (Context!11279 lt!2364157)) (ite (or c!1154925 c!1154928) (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 r!7292)))) (Cons!64940 (ite (or c!1154925 c!1154928) (regTwo!33022 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 r!7292))) (exprs!6139 (Context!11279 lt!2364157))))))

(assert (=> bm!541243 d!1992719))

(declare-fun d!1992721 () Bool)

(assert (=> d!1992721 (= (isEmpty!37030 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))) ((_ is Nil!64940) (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(assert (=> b!6348822 d!1992721))

(assert (=> b!6348851 d!1992619))

(assert (=> d!1991923 d!1992545))

(declare-fun b!6350361 () Bool)

(declare-fun e!3856724 () Bool)

(declare-fun lt!2364469 () Bool)

(declare-fun call!541503 () Bool)

(assert (=> b!6350361 (= e!3856724 (= lt!2364469 call!541503))))

(declare-fun b!6350362 () Bool)

(declare-fun e!3856729 () Bool)

(assert (=> b!6350362 (= e!3856729 (= (head!13003 (tail!12088 s!2326)) (c!1154628 (derivativeStep!4960 r!7292 (head!13003 s!2326)))))))

(declare-fun b!6350363 () Bool)

(declare-fun e!3856728 () Bool)

(assert (=> b!6350363 (= e!3856728 (matchR!8438 (derivativeStep!4960 (derivativeStep!4960 r!7292 (head!13003 s!2326)) (head!13003 (tail!12088 s!2326))) (tail!12088 (tail!12088 s!2326))))))

(declare-fun b!6350364 () Bool)

(declare-fun res!2613028 () Bool)

(declare-fun e!3856727 () Bool)

(assert (=> b!6350364 (=> res!2613028 e!3856727)))

(assert (=> b!6350364 (= res!2613028 (not (isEmpty!37033 (tail!12088 (tail!12088 s!2326)))))))

(declare-fun b!6350365 () Bool)

(declare-fun e!3856726 () Bool)

(assert (=> b!6350365 (= e!3856726 e!3856727)))

(declare-fun res!2613025 () Bool)

(assert (=> b!6350365 (=> res!2613025 e!3856727)))

(assert (=> b!6350365 (= res!2613025 call!541503)))

(declare-fun b!6350366 () Bool)

(declare-fun e!3856730 () Bool)

(assert (=> b!6350366 (= e!3856730 (not lt!2364469))))

(declare-fun b!6350367 () Bool)

(assert (=> b!6350367 (= e!3856728 (nullable!6248 (derivativeStep!4960 r!7292 (head!13003 s!2326))))))

(declare-fun d!1992723 () Bool)

(assert (=> d!1992723 e!3856724))

(declare-fun c!1155291 () Bool)

(assert (=> d!1992723 (= c!1155291 ((_ is EmptyExpr!16255) (derivativeStep!4960 r!7292 (head!13003 s!2326))))))

(assert (=> d!1992723 (= lt!2364469 e!3856728)))

(declare-fun c!1155289 () Bool)

(assert (=> d!1992723 (= c!1155289 (isEmpty!37033 (tail!12088 s!2326)))))

(assert (=> d!1992723 (validRegex!7991 (derivativeStep!4960 r!7292 (head!13003 s!2326)))))

(assert (=> d!1992723 (= (matchR!8438 (derivativeStep!4960 r!7292 (head!13003 s!2326)) (tail!12088 s!2326)) lt!2364469)))

(declare-fun b!6350368 () Bool)

(declare-fun res!2613027 () Bool)

(declare-fun e!3856725 () Bool)

(assert (=> b!6350368 (=> res!2613027 e!3856725)))

(assert (=> b!6350368 (= res!2613027 (not ((_ is ElementMatch!16255) (derivativeStep!4960 r!7292 (head!13003 s!2326)))))))

(assert (=> b!6350368 (= e!3856730 e!3856725)))

(declare-fun b!6350369 () Bool)

(declare-fun res!2613031 () Bool)

(assert (=> b!6350369 (=> (not res!2613031) (not e!3856729))))

(assert (=> b!6350369 (= res!2613031 (isEmpty!37033 (tail!12088 (tail!12088 s!2326))))))

(declare-fun b!6350370 () Bool)

(assert (=> b!6350370 (= e!3856724 e!3856730)))

(declare-fun c!1155290 () Bool)

(assert (=> b!6350370 (= c!1155290 ((_ is EmptyLang!16255) (derivativeStep!4960 r!7292 (head!13003 s!2326))))))

(declare-fun b!6350371 () Bool)

(assert (=> b!6350371 (= e!3856725 e!3856726)))

(declare-fun res!2613029 () Bool)

(assert (=> b!6350371 (=> (not res!2613029) (not e!3856726))))

(assert (=> b!6350371 (= res!2613029 (not lt!2364469))))

(declare-fun b!6350372 () Bool)

(assert (=> b!6350372 (= e!3856727 (not (= (head!13003 (tail!12088 s!2326)) (c!1154628 (derivativeStep!4960 r!7292 (head!13003 s!2326))))))))

(declare-fun bm!541498 () Bool)

(assert (=> bm!541498 (= call!541503 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6350373 () Bool)

(declare-fun res!2613026 () Bool)

(assert (=> b!6350373 (=> (not res!2613026) (not e!3856729))))

(assert (=> b!6350373 (= res!2613026 (not call!541503))))

(declare-fun b!6350374 () Bool)

(declare-fun res!2613024 () Bool)

(assert (=> b!6350374 (=> res!2613024 e!3856725)))

(assert (=> b!6350374 (= res!2613024 e!3856729)))

(declare-fun res!2613030 () Bool)

(assert (=> b!6350374 (=> (not res!2613030) (not e!3856729))))

(assert (=> b!6350374 (= res!2613030 lt!2364469)))

(assert (= (and d!1992723 c!1155289) b!6350367))

(assert (= (and d!1992723 (not c!1155289)) b!6350363))

(assert (= (and d!1992723 c!1155291) b!6350361))

(assert (= (and d!1992723 (not c!1155291)) b!6350370))

(assert (= (and b!6350370 c!1155290) b!6350366))

(assert (= (and b!6350370 (not c!1155290)) b!6350368))

(assert (= (and b!6350368 (not res!2613027)) b!6350374))

(assert (= (and b!6350374 res!2613030) b!6350373))

(assert (= (and b!6350373 res!2613026) b!6350369))

(assert (= (and b!6350369 res!2613031) b!6350362))

(assert (= (and b!6350374 (not res!2613024)) b!6350371))

(assert (= (and b!6350371 res!2613029) b!6350365))

(assert (= (and b!6350365 (not res!2613025)) b!6350364))

(assert (= (and b!6350364 (not res!2613028)) b!6350372))

(assert (= (or b!6350361 b!6350365 b!6350373) bm!541498))

(assert (=> b!6350367 m!7155860))

(declare-fun m!7157494 () Bool)

(assert (=> b!6350367 m!7157494))

(assert (=> d!1992723 m!7155856))

(assert (=> d!1992723 m!7155858))

(assert (=> d!1992723 m!7155860))

(declare-fun m!7157496 () Bool)

(assert (=> d!1992723 m!7157496))

(assert (=> b!6350362 m!7155856))

(declare-fun m!7157498 () Bool)

(assert (=> b!6350362 m!7157498))

(assert (=> b!6350369 m!7155856))

(declare-fun m!7157500 () Bool)

(assert (=> b!6350369 m!7157500))

(assert (=> b!6350369 m!7157500))

(declare-fun m!7157502 () Bool)

(assert (=> b!6350369 m!7157502))

(assert (=> bm!541498 m!7155856))

(assert (=> bm!541498 m!7155858))

(assert (=> b!6350363 m!7155856))

(assert (=> b!6350363 m!7157498))

(assert (=> b!6350363 m!7155860))

(assert (=> b!6350363 m!7157498))

(declare-fun m!7157504 () Bool)

(assert (=> b!6350363 m!7157504))

(assert (=> b!6350363 m!7155856))

(assert (=> b!6350363 m!7157500))

(assert (=> b!6350363 m!7157504))

(assert (=> b!6350363 m!7157500))

(declare-fun m!7157506 () Bool)

(assert (=> b!6350363 m!7157506))

(assert (=> b!6350364 m!7155856))

(assert (=> b!6350364 m!7157500))

(assert (=> b!6350364 m!7157500))

(assert (=> b!6350364 m!7157502))

(assert (=> b!6350372 m!7155856))

(assert (=> b!6350372 m!7157498))

(assert (=> b!6348691 d!1992723))

(declare-fun b!6350395 () Bool)

(declare-fun e!3856745 () Regex!16255)

(declare-fun e!3856744 () Regex!16255)

(assert (=> b!6350395 (= e!3856745 e!3856744)))

(declare-fun c!1155302 () Bool)

(assert (=> b!6350395 (= c!1155302 ((_ is Star!16255) r!7292))))

(declare-fun bm!541507 () Bool)

(declare-fun call!541514 () Regex!16255)

(declare-fun call!541513 () Regex!16255)

(assert (=> bm!541507 (= call!541514 call!541513)))

(declare-fun b!6350396 () Bool)

(declare-fun e!3856743 () Regex!16255)

(assert (=> b!6350396 (= e!3856743 EmptyLang!16255)))

(declare-fun b!6350397 () Bool)

(declare-fun e!3856741 () Regex!16255)

(assert (=> b!6350397 (= e!3856743 e!3856741)))

(declare-fun c!1155304 () Bool)

(assert (=> b!6350397 (= c!1155304 ((_ is ElementMatch!16255) r!7292))))

(declare-fun b!6350398 () Bool)

(declare-fun e!3856742 () Regex!16255)

(declare-fun call!541515 () Regex!16255)

(assert (=> b!6350398 (= e!3856742 (Union!16255 (Concat!25100 call!541515 (regTwo!33022 r!7292)) call!541514))))

(declare-fun b!6350399 () Bool)

(assert (=> b!6350399 (= e!3856741 (ite (= (head!13003 s!2326) (c!1154628 r!7292)) EmptyExpr!16255 EmptyLang!16255))))

(declare-fun b!6350400 () Bool)

(declare-fun c!1155303 () Bool)

(assert (=> b!6350400 (= c!1155303 (nullable!6248 (regOne!33022 r!7292)))))

(assert (=> b!6350400 (= e!3856744 e!3856742)))

(declare-fun bm!541508 () Bool)

(declare-fun c!1155305 () Bool)

(assert (=> bm!541508 (= call!541515 (derivativeStep!4960 (ite c!1155305 (regTwo!33023 r!7292) (regOne!33022 r!7292)) (head!13003 s!2326)))))

(declare-fun bm!541509 () Bool)

(declare-fun call!541512 () Regex!16255)

(assert (=> bm!541509 (= call!541513 call!541512)))

(declare-fun b!6350401 () Bool)

(assert (=> b!6350401 (= e!3856742 (Union!16255 (Concat!25100 call!541514 (regTwo!33022 r!7292)) EmptyLang!16255))))

(declare-fun b!6350402 () Bool)

(assert (=> b!6350402 (= c!1155305 ((_ is Union!16255) r!7292))))

(assert (=> b!6350402 (= e!3856741 e!3856745)))

(declare-fun b!6350403 () Bool)

(assert (=> b!6350403 (= e!3856744 (Concat!25100 call!541513 r!7292))))

(declare-fun b!6350404 () Bool)

(assert (=> b!6350404 (= e!3856745 (Union!16255 call!541512 call!541515))))

(declare-fun bm!541510 () Bool)

(assert (=> bm!541510 (= call!541512 (derivativeStep!4960 (ite c!1155305 (regOne!33023 r!7292) (ite c!1155302 (reg!16584 r!7292) (ite c!1155303 (regTwo!33022 r!7292) (regOne!33022 r!7292)))) (head!13003 s!2326)))))

(declare-fun d!1992725 () Bool)

(declare-fun lt!2364472 () Regex!16255)

(assert (=> d!1992725 (validRegex!7991 lt!2364472)))

(assert (=> d!1992725 (= lt!2364472 e!3856743)))

(declare-fun c!1155306 () Bool)

(assert (=> d!1992725 (= c!1155306 (or ((_ is EmptyExpr!16255) r!7292) ((_ is EmptyLang!16255) r!7292)))))

(assert (=> d!1992725 (validRegex!7991 r!7292)))

(assert (=> d!1992725 (= (derivativeStep!4960 r!7292 (head!13003 s!2326)) lt!2364472)))

(assert (= (and d!1992725 c!1155306) b!6350396))

(assert (= (and d!1992725 (not c!1155306)) b!6350397))

(assert (= (and b!6350397 c!1155304) b!6350399))

(assert (= (and b!6350397 (not c!1155304)) b!6350402))

(assert (= (and b!6350402 c!1155305) b!6350404))

(assert (= (and b!6350402 (not c!1155305)) b!6350395))

(assert (= (and b!6350395 c!1155302) b!6350403))

(assert (= (and b!6350395 (not c!1155302)) b!6350400))

(assert (= (and b!6350400 c!1155303) b!6350398))

(assert (= (and b!6350400 (not c!1155303)) b!6350401))

(assert (= (or b!6350398 b!6350401) bm!541507))

(assert (= (or b!6350403 bm!541507) bm!541509))

(assert (= (or b!6350404 b!6350398) bm!541508))

(assert (= (or b!6350404 bm!541509) bm!541510))

(assert (=> b!6350400 m!7157468))

(assert (=> bm!541508 m!7155854))

(declare-fun m!7157508 () Bool)

(assert (=> bm!541508 m!7157508))

(assert (=> bm!541510 m!7155854))

(declare-fun m!7157510 () Bool)

(assert (=> bm!541510 m!7157510))

(declare-fun m!7157512 () Bool)

(assert (=> d!1992725 m!7157512))

(assert (=> d!1992725 m!7155256))

(assert (=> b!6348691 d!1992725))

(assert (=> b!6348691 d!1992619))

(assert (=> b!6348691 d!1992351))

(declare-fun d!1992727 () Bool)

(assert (=> d!1992727 (= (isEmpty!37030 (tail!12087 (exprs!6139 (h!71390 zl!343)))) ((_ is Nil!64940) (tail!12087 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6348472 d!1992727))

(declare-fun d!1992729 () Bool)

(assert (=> d!1992729 (= (tail!12087 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))

(assert (=> b!6348472 d!1992729))

(declare-fun bs!1590527 () Bool)

(declare-fun b!6350407 () Bool)

(assert (= bs!1590527 (and b!6350407 b!6348025)))

(declare-fun lambda!349296 () Int)

(assert (=> bs!1590527 (not (= lambda!349296 lambda!349080))))

(declare-fun bs!1590528 () Bool)

(assert (= bs!1590528 (and b!6350407 b!6350240)))

(assert (=> bs!1590528 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 (regTwo!33023 lt!2364185))) (= (regTwo!33023 r!7292) (regTwo!33023 lt!2364185))) (= lambda!349296 lambda!349289))))

(declare-fun bs!1590529 () Bool)

(assert (= bs!1590529 (and b!6350407 d!1992481)))

(assert (=> bs!1590529 (not (= lambda!349296 lambda!349271))))

(declare-fun bs!1590530 () Bool)

(assert (= bs!1590530 (and b!6350407 d!1992559)))

(assert (=> bs!1590530 (not (= lambda!349296 lambda!349279))))

(declare-fun bs!1590531 () Bool)

(assert (= bs!1590531 (and b!6350407 d!1992017)))

(assert (=> bs!1590531 (not (= lambda!349296 lambda!349159))))

(assert (=> bs!1590531 (not (= lambda!349296 lambda!349158))))

(declare-fun bs!1590532 () Bool)

(assert (= bs!1590532 (and b!6350407 d!1992047)))

(assert (=> bs!1590532 (not (= lambda!349296 lambda!349167))))

(declare-fun bs!1590533 () Bool)

(assert (= bs!1590533 (and b!6350407 b!6348814)))

(assert (=> bs!1590533 (not (= lambda!349296 lambda!349162))))

(declare-fun bs!1590534 () Bool)

(assert (= bs!1590534 (and b!6350407 b!6348655)))

(assert (=> bs!1590534 (not (= lambda!349296 lambda!349147))))

(declare-fun bs!1590535 () Bool)

(assert (= bs!1590535 (and b!6350407 b!6349859)))

(assert (=> bs!1590535 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 (regTwo!33023 lt!2364179))) (= (regTwo!33023 r!7292) (regTwo!33023 lt!2364179))) (= lambda!349296 lambda!349273))))

(assert (=> bs!1590532 (not (= lambda!349296 lambda!349168))))

(declare-fun bs!1590536 () Bool)

(assert (= bs!1590536 (and b!6350407 b!6349862)))

(assert (=> bs!1590536 (not (= lambda!349296 lambda!349275))))

(declare-fun bs!1590537 () Bool)

(assert (= bs!1590537 (and b!6350407 d!1992015)))

(assert (=> bs!1590537 (not (= lambda!349296 lambda!349153))))

(assert (=> bs!1590527 (not (= lambda!349296 lambda!349081))))

(declare-fun bs!1590538 () Bool)

(assert (= bs!1590538 (and b!6350407 b!6350243)))

(assert (=> bs!1590538 (not (= lambda!349296 lambda!349290))))

(declare-fun bs!1590539 () Bool)

(assert (= bs!1590539 (and b!6350407 b!6348652)))

(assert (=> bs!1590539 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 r!7292)) (= (regTwo!33023 r!7292) r!7292)) (= lambda!349296 lambda!349146))))

(declare-fun bs!1590540 () Bool)

(assert (= bs!1590540 (and b!6350407 d!1992023)))

(assert (=> bs!1590540 (not (= lambda!349296 lambda!349160))))

(declare-fun bs!1590541 () Bool)

(assert (= bs!1590541 (and b!6350407 b!6350209)))

(assert (=> bs!1590541 (not (= lambda!349296 lambda!349285))))

(declare-fun bs!1590542 () Bool)

(assert (= bs!1590542 (and b!6350407 b!6348869)))

(assert (=> bs!1590542 (not (= lambda!349296 lambda!349165))))

(assert (=> bs!1590529 (not (= lambda!349296 lambda!349272))))

(declare-fun bs!1590543 () Bool)

(assert (= bs!1590543 (and b!6350407 b!6350206)))

(assert (=> bs!1590543 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 (regOne!33023 lt!2364185))) (= (regTwo!33023 r!7292) (regOne!33023 lt!2364185))) (= lambda!349296 lambda!349284))))

(declare-fun bs!1590544 () Bool)

(assert (= bs!1590544 (and b!6350407 b!6348005)))

(assert (=> bs!1590544 (not (= lambda!349296 lambda!349078))))

(declare-fun bs!1590545 () Bool)

(assert (= bs!1590545 (and b!6350407 b!6349681)))

(assert (=> bs!1590545 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 (regOne!33023 lt!2364179))) (= (regTwo!33023 r!7292) (regOne!33023 lt!2364179))) (= lambda!349296 lambda!349255))))

(declare-fun bs!1590546 () Bool)

(assert (= bs!1590546 (and b!6350407 d!1992445)))

(assert (=> bs!1590546 (not (= lambda!349296 lambda!349261))))

(assert (=> bs!1590530 (not (= lambda!349296 lambda!349280))))

(declare-fun bs!1590547 () Bool)

(assert (= bs!1590547 (and b!6350407 b!6348811)))

(assert (=> bs!1590547 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 lt!2364179)) (= (regTwo!33023 r!7292) lt!2364179)) (= lambda!349296 lambda!349161))))

(declare-fun bs!1590548 () Bool)

(assert (= bs!1590548 (and b!6350407 b!6348866)))

(assert (=> bs!1590548 (= (and (= (reg!16584 (regTwo!33023 r!7292)) (reg!16584 lt!2364185)) (= (regTwo!33023 r!7292) lt!2364185)) (= lambda!349296 lambda!349164))))

(declare-fun bs!1590549 () Bool)

(assert (= bs!1590549 (and b!6350407 b!6349684)))

(assert (=> bs!1590549 (not (= lambda!349296 lambda!349256))))

(assert (=> bs!1590544 (not (= lambda!349296 lambda!349077))))

(assert (=> b!6350407 true))

(assert (=> b!6350407 true))

(declare-fun bs!1590550 () Bool)

(declare-fun b!6350410 () Bool)

(assert (= bs!1590550 (and b!6350410 b!6348025)))

(declare-fun lambda!349297 () Int)

(assert (=> bs!1590550 (not (= lambda!349297 lambda!349080))))

(declare-fun bs!1590551 () Bool)

(assert (= bs!1590551 (and b!6350410 b!6350240)))

(assert (=> bs!1590551 (not (= lambda!349297 lambda!349289))))

(declare-fun bs!1590552 () Bool)

(assert (= bs!1590552 (and b!6350410 d!1992481)))

(assert (=> bs!1590552 (not (= lambda!349297 lambda!349271))))

(declare-fun bs!1590553 () Bool)

(assert (= bs!1590553 (and b!6350410 d!1992559)))

(assert (=> bs!1590553 (not (= lambda!349297 lambda!349279))))

(declare-fun bs!1590554 () Bool)

(assert (= bs!1590554 (and b!6350410 d!1992017)))

(assert (=> bs!1590554 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349297 lambda!349159))))

(assert (=> bs!1590554 (not (= lambda!349297 lambda!349158))))

(declare-fun bs!1590555 () Bool)

(assert (= bs!1590555 (and b!6350410 d!1992047)))

(assert (=> bs!1590555 (not (= lambda!349297 lambda!349167))))

(declare-fun bs!1590556 () Bool)

(assert (= bs!1590556 (and b!6350410 b!6348814)))

(assert (=> bs!1590556 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 lt!2364179)) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 lt!2364179))) (= lambda!349297 lambda!349162))))

(declare-fun bs!1590557 () Bool)

(assert (= bs!1590557 (and b!6350410 b!6348655)))

(assert (=> bs!1590557 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349297 lambda!349147))))

(declare-fun bs!1590558 () Bool)

(assert (= bs!1590558 (and b!6350410 b!6349859)))

(assert (=> bs!1590558 (not (= lambda!349297 lambda!349273))))

(assert (=> bs!1590555 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 r!7292)) lt!2364185)) (= lambda!349297 lambda!349168))))

(declare-fun bs!1590559 () Bool)

(assert (= bs!1590559 (and b!6350410 b!6349862)))

(assert (=> bs!1590559 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regTwo!33023 lt!2364179))) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 (regTwo!33023 lt!2364179)))) (= lambda!349297 lambda!349275))))

(declare-fun bs!1590560 () Bool)

(assert (= bs!1590560 (and b!6350410 d!1992015)))

(assert (=> bs!1590560 (not (= lambda!349297 lambda!349153))))

(assert (=> bs!1590550 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 r!7292)) lt!2364185)) (= lambda!349297 lambda!349081))))

(declare-fun bs!1590561 () Bool)

(assert (= bs!1590561 (and b!6350410 b!6350243)))

(assert (=> bs!1590561 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regTwo!33023 lt!2364185))) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 (regTwo!33023 lt!2364185)))) (= lambda!349297 lambda!349290))))

(declare-fun bs!1590562 () Bool)

(assert (= bs!1590562 (and b!6350410 b!6350407)))

(assert (=> bs!1590562 (not (= lambda!349297 lambda!349296))))

(declare-fun bs!1590563 () Bool)

(assert (= bs!1590563 (and b!6350410 b!6348652)))

(assert (=> bs!1590563 (not (= lambda!349297 lambda!349146))))

(declare-fun bs!1590564 () Bool)

(assert (= bs!1590564 (and b!6350410 d!1992023)))

(assert (=> bs!1590564 (not (= lambda!349297 lambda!349160))))

(declare-fun bs!1590565 () Bool)

(assert (= bs!1590565 (and b!6350410 b!6350209)))

(assert (=> bs!1590565 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regOne!33023 lt!2364185))) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 (regOne!33023 lt!2364185)))) (= lambda!349297 lambda!349285))))

(declare-fun bs!1590566 () Bool)

(assert (= bs!1590566 (and b!6350410 b!6348869)))

(assert (=> bs!1590566 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 lt!2364185)) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 lt!2364185))) (= lambda!349297 lambda!349165))))

(assert (=> bs!1590552 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349297 lambda!349272))))

(declare-fun bs!1590567 () Bool)

(assert (= bs!1590567 (and b!6350410 b!6350206)))

(assert (=> bs!1590567 (not (= lambda!349297 lambda!349284))))

(declare-fun bs!1590568 () Bool)

(assert (= bs!1590568 (and b!6350410 b!6348005)))

(assert (=> bs!1590568 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349297 lambda!349078))))

(declare-fun bs!1590569 () Bool)

(assert (= bs!1590569 (and b!6350410 b!6349681)))

(assert (=> bs!1590569 (not (= lambda!349297 lambda!349255))))

(declare-fun bs!1590570 () Bool)

(assert (= bs!1590570 (and b!6350410 d!1992445)))

(assert (=> bs!1590570 (not (= lambda!349297 lambda!349261))))

(assert (=> bs!1590553 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regTwo!33023 r!7292)) lt!2364185)) (= lambda!349297 lambda!349280))))

(declare-fun bs!1590571 () Bool)

(assert (= bs!1590571 (and b!6350410 b!6348811)))

(assert (=> bs!1590571 (not (= lambda!349297 lambda!349161))))

(declare-fun bs!1590572 () Bool)

(assert (= bs!1590572 (and b!6350410 b!6348866)))

(assert (=> bs!1590572 (not (= lambda!349297 lambda!349164))))

(declare-fun bs!1590573 () Bool)

(assert (= bs!1590573 (and b!6350410 b!6349684)))

(assert (=> bs!1590573 (= (and (= (regOne!33022 (regTwo!33023 r!7292)) (regOne!33022 (regOne!33023 lt!2364179))) (= (regTwo!33022 (regTwo!33023 r!7292)) (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349297 lambda!349256))))

(assert (=> bs!1590568 (not (= lambda!349297 lambda!349077))))

(assert (=> b!6350410 true))

(assert (=> b!6350410 true))

(declare-fun d!1992731 () Bool)

(declare-fun c!1155308 () Bool)

(assert (=> d!1992731 (= c!1155308 ((_ is EmptyExpr!16255) (regTwo!33023 r!7292)))))

(declare-fun e!3856747 () Bool)

(assert (=> d!1992731 (= (matchRSpec!3356 (regTwo!33023 r!7292) s!2326) e!3856747)))

(declare-fun b!6350405 () Bool)

(declare-fun e!3856750 () Bool)

(assert (=> b!6350405 (= e!3856750 (matchRSpec!3356 (regTwo!33023 (regTwo!33023 r!7292)) s!2326))))

(declare-fun b!6350406 () Bool)

(declare-fun c!1155310 () Bool)

(assert (=> b!6350406 (= c!1155310 ((_ is Union!16255) (regTwo!33023 r!7292)))))

(declare-fun e!3856749 () Bool)

(declare-fun e!3856746 () Bool)

(assert (=> b!6350406 (= e!3856749 e!3856746)))

(declare-fun bm!541511 () Bool)

(declare-fun call!541516 () Bool)

(assert (=> bm!541511 (= call!541516 (isEmpty!37033 s!2326))))

(declare-fun e!3856748 () Bool)

(declare-fun call!541517 () Bool)

(assert (=> b!6350407 (= e!3856748 call!541517)))

(declare-fun b!6350408 () Bool)

(assert (=> b!6350408 (= e!3856749 (= s!2326 (Cons!64941 (c!1154628 (regTwo!33023 r!7292)) Nil!64941)))))

(declare-fun b!6350409 () Bool)

(declare-fun e!3856751 () Bool)

(assert (=> b!6350409 (= e!3856747 e!3856751)))

(declare-fun res!2613032 () Bool)

(assert (=> b!6350409 (= res!2613032 (not ((_ is EmptyLang!16255) (regTwo!33023 r!7292))))))

(assert (=> b!6350409 (=> (not res!2613032) (not e!3856751))))

(declare-fun e!3856752 () Bool)

(assert (=> b!6350410 (= e!3856752 call!541517)))

(declare-fun b!6350411 () Bool)

(assert (=> b!6350411 (= e!3856747 call!541516)))

(declare-fun bm!541512 () Bool)

(declare-fun c!1155307 () Bool)

(assert (=> bm!541512 (= call!541517 (Exists!3325 (ite c!1155307 lambda!349296 lambda!349297)))))

(declare-fun b!6350412 () Bool)

(assert (=> b!6350412 (= e!3856746 e!3856750)))

(declare-fun res!2613033 () Bool)

(assert (=> b!6350412 (= res!2613033 (matchRSpec!3356 (regOne!33023 (regTwo!33023 r!7292)) s!2326))))

(assert (=> b!6350412 (=> res!2613033 e!3856750)))

(declare-fun b!6350413 () Bool)

(declare-fun c!1155309 () Bool)

(assert (=> b!6350413 (= c!1155309 ((_ is ElementMatch!16255) (regTwo!33023 r!7292)))))

(assert (=> b!6350413 (= e!3856751 e!3856749)))

(declare-fun b!6350414 () Bool)

(declare-fun res!2613034 () Bool)

(assert (=> b!6350414 (=> res!2613034 e!3856748)))

(assert (=> b!6350414 (= res!2613034 call!541516)))

(assert (=> b!6350414 (= e!3856752 e!3856748)))

(declare-fun b!6350415 () Bool)

(assert (=> b!6350415 (= e!3856746 e!3856752)))

(assert (=> b!6350415 (= c!1155307 ((_ is Star!16255) (regTwo!33023 r!7292)))))

(assert (= (and d!1992731 c!1155308) b!6350411))

(assert (= (and d!1992731 (not c!1155308)) b!6350409))

(assert (= (and b!6350409 res!2613032) b!6350413))

(assert (= (and b!6350413 c!1155309) b!6350408))

(assert (= (and b!6350413 (not c!1155309)) b!6350406))

(assert (= (and b!6350406 c!1155310) b!6350412))

(assert (= (and b!6350406 (not c!1155310)) b!6350415))

(assert (= (and b!6350412 (not res!2613033)) b!6350405))

(assert (= (and b!6350415 c!1155307) b!6350414))

(assert (= (and b!6350415 (not c!1155307)) b!6350410))

(assert (= (and b!6350414 (not res!2613034)) b!6350407))

(assert (= (or b!6350407 b!6350410) bm!541512))

(assert (= (or b!6350411 b!6350414) bm!541511))

(declare-fun m!7157514 () Bool)

(assert (=> b!6350405 m!7157514))

(assert (=> bm!541511 m!7155846))

(declare-fun m!7157516 () Bool)

(assert (=> bm!541512 m!7157516))

(declare-fun m!7157518 () Bool)

(assert (=> b!6350412 m!7157518))

(assert (=> b!6348650 d!1992731))

(assert (=> bm!541237 d!1992417))

(assert (=> d!1992051 d!1992037))

(assert (=> d!1992051 d!1992033))

(declare-fun d!1992733 () Bool)

(assert (=> d!1992733 (= (matchR!8438 lt!2364179 s!2326) (matchZipper!2267 lt!2364158 s!2326))))

(assert (=> d!1992733 true))

(declare-fun _$44!1636 () Unit!158351)

(assert (=> d!1992733 (= (choose!47116 lt!2364158 lt!2364170 lt!2364179 s!2326) _$44!1636)))

(declare-fun bs!1590574 () Bool)

(assert (= bs!1590574 d!1992733))

(assert (=> bs!1590574 m!7155332))

(assert (=> bs!1590574 m!7155342))

(assert (=> d!1992051 d!1992733))

(assert (=> d!1992051 d!1992549))

(declare-fun b!6350416 () Bool)

(declare-fun e!3856753 () Bool)

(declare-fun lt!2364473 () Bool)

(declare-fun call!541518 () Bool)

(assert (=> b!6350416 (= e!3856753 (= lt!2364473 call!541518))))

(declare-fun b!6350417 () Bool)

(declare-fun e!3856758 () Bool)

(assert (=> b!6350417 (= e!3856758 (= (head!13003 (tail!12088 s!2326)) (c!1154628 (derivativeStep!4960 lt!2364185 (head!13003 s!2326)))))))

(declare-fun b!6350418 () Bool)

(declare-fun e!3856757 () Bool)

(assert (=> b!6350418 (= e!3856757 (matchR!8438 (derivativeStep!4960 (derivativeStep!4960 lt!2364185 (head!13003 s!2326)) (head!13003 (tail!12088 s!2326))) (tail!12088 (tail!12088 s!2326))))))

(declare-fun b!6350419 () Bool)

(declare-fun res!2613039 () Bool)

(declare-fun e!3856756 () Bool)

(assert (=> b!6350419 (=> res!2613039 e!3856756)))

(assert (=> b!6350419 (= res!2613039 (not (isEmpty!37033 (tail!12088 (tail!12088 s!2326)))))))

(declare-fun b!6350420 () Bool)

(declare-fun e!3856755 () Bool)

(assert (=> b!6350420 (= e!3856755 e!3856756)))

(declare-fun res!2613036 () Bool)

(assert (=> b!6350420 (=> res!2613036 e!3856756)))

(assert (=> b!6350420 (= res!2613036 call!541518)))

(declare-fun b!6350421 () Bool)

(declare-fun e!3856759 () Bool)

(assert (=> b!6350421 (= e!3856759 (not lt!2364473))))

(declare-fun b!6350422 () Bool)

(assert (=> b!6350422 (= e!3856757 (nullable!6248 (derivativeStep!4960 lt!2364185 (head!13003 s!2326))))))

(declare-fun d!1992735 () Bool)

(assert (=> d!1992735 e!3856753))

(declare-fun c!1155313 () Bool)

(assert (=> d!1992735 (= c!1155313 ((_ is EmptyExpr!16255) (derivativeStep!4960 lt!2364185 (head!13003 s!2326))))))

(assert (=> d!1992735 (= lt!2364473 e!3856757)))

(declare-fun c!1155311 () Bool)

(assert (=> d!1992735 (= c!1155311 (isEmpty!37033 (tail!12088 s!2326)))))

(assert (=> d!1992735 (validRegex!7991 (derivativeStep!4960 lt!2364185 (head!13003 s!2326)))))

(assert (=> d!1992735 (= (matchR!8438 (derivativeStep!4960 lt!2364185 (head!13003 s!2326)) (tail!12088 s!2326)) lt!2364473)))

(declare-fun b!6350423 () Bool)

(declare-fun res!2613038 () Bool)

(declare-fun e!3856754 () Bool)

(assert (=> b!6350423 (=> res!2613038 e!3856754)))

(assert (=> b!6350423 (= res!2613038 (not ((_ is ElementMatch!16255) (derivativeStep!4960 lt!2364185 (head!13003 s!2326)))))))

(assert (=> b!6350423 (= e!3856759 e!3856754)))

(declare-fun b!6350424 () Bool)

(declare-fun res!2613042 () Bool)

(assert (=> b!6350424 (=> (not res!2613042) (not e!3856758))))

(assert (=> b!6350424 (= res!2613042 (isEmpty!37033 (tail!12088 (tail!12088 s!2326))))))

(declare-fun b!6350425 () Bool)

(assert (=> b!6350425 (= e!3856753 e!3856759)))

(declare-fun c!1155312 () Bool)

(assert (=> b!6350425 (= c!1155312 ((_ is EmptyLang!16255) (derivativeStep!4960 lt!2364185 (head!13003 s!2326))))))

(declare-fun b!6350426 () Bool)

(assert (=> b!6350426 (= e!3856754 e!3856755)))

(declare-fun res!2613040 () Bool)

(assert (=> b!6350426 (=> (not res!2613040) (not e!3856755))))

(assert (=> b!6350426 (= res!2613040 (not lt!2364473))))

(declare-fun b!6350427 () Bool)

(assert (=> b!6350427 (= e!3856756 (not (= (head!13003 (tail!12088 s!2326)) (c!1154628 (derivativeStep!4960 lt!2364185 (head!13003 s!2326))))))))

(declare-fun bm!541513 () Bool)

(assert (=> bm!541513 (= call!541518 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6350428 () Bool)

(declare-fun res!2613037 () Bool)

(assert (=> b!6350428 (=> (not res!2613037) (not e!3856758))))

(assert (=> b!6350428 (= res!2613037 (not call!541518))))

(declare-fun b!6350429 () Bool)

(declare-fun res!2613035 () Bool)

(assert (=> b!6350429 (=> res!2613035 e!3856754)))

(assert (=> b!6350429 (= res!2613035 e!3856758)))

(declare-fun res!2613041 () Bool)

(assert (=> b!6350429 (=> (not res!2613041) (not e!3856758))))

(assert (=> b!6350429 (= res!2613041 lt!2364473)))

(assert (= (and d!1992735 c!1155311) b!6350422))

(assert (= (and d!1992735 (not c!1155311)) b!6350418))

(assert (= (and d!1992735 c!1155313) b!6350416))

(assert (= (and d!1992735 (not c!1155313)) b!6350425))

(assert (= (and b!6350425 c!1155312) b!6350421))

(assert (= (and b!6350425 (not c!1155312)) b!6350423))

(assert (= (and b!6350423 (not res!2613038)) b!6350429))

(assert (= (and b!6350429 res!2613041) b!6350428))

(assert (= (and b!6350428 res!2613037) b!6350424))

(assert (= (and b!6350424 res!2613042) b!6350417))

(assert (= (and b!6350429 (not res!2613035)) b!6350426))

(assert (= (and b!6350426 res!2613040) b!6350420))

(assert (= (and b!6350420 (not res!2613036)) b!6350419))

(assert (= (and b!6350419 (not res!2613039)) b!6350427))

(assert (= (or b!6350416 b!6350420 b!6350428) bm!541513))

(assert (=> b!6350422 m!7156040))

(declare-fun m!7157520 () Bool)

(assert (=> b!6350422 m!7157520))

(assert (=> d!1992735 m!7155856))

(assert (=> d!1992735 m!7155858))

(assert (=> d!1992735 m!7156040))

(declare-fun m!7157522 () Bool)

(assert (=> d!1992735 m!7157522))

(assert (=> b!6350417 m!7155856))

(assert (=> b!6350417 m!7157498))

(assert (=> b!6350424 m!7155856))

(assert (=> b!6350424 m!7157500))

(assert (=> b!6350424 m!7157500))

(assert (=> b!6350424 m!7157502))

(assert (=> bm!541513 m!7155856))

(assert (=> bm!541513 m!7155858))

(assert (=> b!6350418 m!7155856))

(assert (=> b!6350418 m!7157498))

(assert (=> b!6350418 m!7156040))

(assert (=> b!6350418 m!7157498))

(declare-fun m!7157524 () Bool)

(assert (=> b!6350418 m!7157524))

(assert (=> b!6350418 m!7155856))

(assert (=> b!6350418 m!7157500))

(assert (=> b!6350418 m!7157524))

(assert (=> b!6350418 m!7157500))

(declare-fun m!7157526 () Bool)

(assert (=> b!6350418 m!7157526))

(assert (=> b!6350419 m!7155856))

(assert (=> b!6350419 m!7157500))

(assert (=> b!6350419 m!7157500))

(assert (=> b!6350419 m!7157502))

(assert (=> b!6350427 m!7155856))

(assert (=> b!6350427 m!7157498))

(assert (=> b!6348877 d!1992735))

(declare-fun b!6350430 () Bool)

(declare-fun e!3856764 () Regex!16255)

(declare-fun e!3856763 () Regex!16255)

(assert (=> b!6350430 (= e!3856764 e!3856763)))

(declare-fun c!1155314 () Bool)

(assert (=> b!6350430 (= c!1155314 ((_ is Star!16255) lt!2364185))))

(declare-fun bm!541514 () Bool)

(declare-fun call!541521 () Regex!16255)

(declare-fun call!541520 () Regex!16255)

(assert (=> bm!541514 (= call!541521 call!541520)))

(declare-fun b!6350431 () Bool)

(declare-fun e!3856762 () Regex!16255)

(assert (=> b!6350431 (= e!3856762 EmptyLang!16255)))

(declare-fun b!6350432 () Bool)

(declare-fun e!3856760 () Regex!16255)

(assert (=> b!6350432 (= e!3856762 e!3856760)))

(declare-fun c!1155316 () Bool)

(assert (=> b!6350432 (= c!1155316 ((_ is ElementMatch!16255) lt!2364185))))

(declare-fun b!6350433 () Bool)

(declare-fun call!541522 () Regex!16255)

(declare-fun e!3856761 () Regex!16255)

(assert (=> b!6350433 (= e!3856761 (Union!16255 (Concat!25100 call!541522 (regTwo!33022 lt!2364185)) call!541521))))

(declare-fun b!6350434 () Bool)

(assert (=> b!6350434 (= e!3856760 (ite (= (head!13003 s!2326) (c!1154628 lt!2364185)) EmptyExpr!16255 EmptyLang!16255))))

(declare-fun b!6350435 () Bool)

(declare-fun c!1155315 () Bool)

(assert (=> b!6350435 (= c!1155315 (nullable!6248 (regOne!33022 lt!2364185)))))

(assert (=> b!6350435 (= e!3856763 e!3856761)))

(declare-fun bm!541515 () Bool)

(declare-fun c!1155317 () Bool)

(assert (=> bm!541515 (= call!541522 (derivativeStep!4960 (ite c!1155317 (regTwo!33023 lt!2364185) (regOne!33022 lt!2364185)) (head!13003 s!2326)))))

(declare-fun bm!541516 () Bool)

(declare-fun call!541519 () Regex!16255)

(assert (=> bm!541516 (= call!541520 call!541519)))

(declare-fun b!6350436 () Bool)

(assert (=> b!6350436 (= e!3856761 (Union!16255 (Concat!25100 call!541521 (regTwo!33022 lt!2364185)) EmptyLang!16255))))

(declare-fun b!6350437 () Bool)

(assert (=> b!6350437 (= c!1155317 ((_ is Union!16255) lt!2364185))))

(assert (=> b!6350437 (= e!3856760 e!3856764)))

(declare-fun b!6350438 () Bool)

(assert (=> b!6350438 (= e!3856763 (Concat!25100 call!541520 lt!2364185))))

(declare-fun b!6350439 () Bool)

(assert (=> b!6350439 (= e!3856764 (Union!16255 call!541519 call!541522))))

(declare-fun bm!541517 () Bool)

(assert (=> bm!541517 (= call!541519 (derivativeStep!4960 (ite c!1155317 (regOne!33023 lt!2364185) (ite c!1155314 (reg!16584 lt!2364185) (ite c!1155315 (regTwo!33022 lt!2364185) (regOne!33022 lt!2364185)))) (head!13003 s!2326)))))

(declare-fun d!1992737 () Bool)

(declare-fun lt!2364474 () Regex!16255)

(assert (=> d!1992737 (validRegex!7991 lt!2364474)))

(assert (=> d!1992737 (= lt!2364474 e!3856762)))

(declare-fun c!1155318 () Bool)

(assert (=> d!1992737 (= c!1155318 (or ((_ is EmptyExpr!16255) lt!2364185) ((_ is EmptyLang!16255) lt!2364185)))))

(assert (=> d!1992737 (validRegex!7991 lt!2364185)))

(assert (=> d!1992737 (= (derivativeStep!4960 lt!2364185 (head!13003 s!2326)) lt!2364474)))

(assert (= (and d!1992737 c!1155318) b!6350431))

(assert (= (and d!1992737 (not c!1155318)) b!6350432))

(assert (= (and b!6350432 c!1155316) b!6350434))

(assert (= (and b!6350432 (not c!1155316)) b!6350437))

(assert (= (and b!6350437 c!1155317) b!6350439))

(assert (= (and b!6350437 (not c!1155317)) b!6350430))

(assert (= (and b!6350430 c!1155314) b!6350438))

(assert (= (and b!6350430 (not c!1155314)) b!6350435))

(assert (= (and b!6350435 c!1155315) b!6350433))

(assert (= (and b!6350435 (not c!1155315)) b!6350436))

(assert (= (or b!6350433 b!6350436) bm!541514))

(assert (= (or b!6350438 bm!541514) bm!541516))

(assert (= (or b!6350439 b!6350433) bm!541515))

(assert (= (or b!6350439 bm!541516) bm!541517))

(declare-fun m!7157528 () Bool)

(assert (=> b!6350435 m!7157528))

(assert (=> bm!541515 m!7155854))

(declare-fun m!7157530 () Bool)

(assert (=> bm!541515 m!7157530))

(assert (=> bm!541517 m!7155854))

(declare-fun m!7157532 () Bool)

(assert (=> bm!541517 m!7157532))

(declare-fun m!7157534 () Bool)

(assert (=> d!1992737 m!7157534))

(assert (=> d!1992737 m!7156038))

(assert (=> b!6348877 d!1992737))

(assert (=> b!6348877 d!1992619))

(assert (=> b!6348877 d!1992351))

(assert (=> d!1991989 d!1991985))

(declare-fun d!1992739 () Bool)

(assert (=> d!1992739 (= (flatMap!1760 lt!2364158 lambda!349079) (dynLambda!25745 lambda!349079 lt!2364171))))

(assert (=> d!1992739 true))

(declare-fun _$13!3507 () Unit!158351)

(assert (=> d!1992739 (= (choose!47112 lt!2364158 lt!2364171 lambda!349079) _$13!3507)))

(declare-fun b_lambda!241563 () Bool)

(assert (=> (not b_lambda!241563) (not d!1992739)))

(declare-fun bs!1590575 () Bool)

(assert (= bs!1590575 d!1992739))

(assert (=> bs!1590575 m!7155286))

(assert (=> bs!1590575 m!7155874))

(assert (=> d!1991989 d!1992739))

(declare-fun bs!1590576 () Bool)

(declare-fun d!1992741 () Bool)

(assert (= bs!1590576 (and d!1992741 b!6348958)))

(declare-fun lambda!349298 () Int)

(assert (=> bs!1590576 (not (= lambda!349298 lambda!349187))))

(declare-fun bs!1590577 () Bool)

(assert (= bs!1590577 (and d!1992741 d!1992667)))

(assert (=> bs!1590577 (= lambda!349298 lambda!349292)))

(declare-fun bs!1590578 () Bool)

(assert (= bs!1590578 (and d!1992741 d!1992383)))

(assert (=> bs!1590578 (not (= lambda!349298 lambda!349245))))

(declare-fun bs!1590579 () Bool)

(assert (= bs!1590579 (and d!1992741 b!6348953)))

(assert (=> bs!1590579 (not (= lambda!349298 lambda!349184))))

(declare-fun bs!1590580 () Bool)

(assert (= bs!1590580 (and d!1992741 d!1992433)))

(assert (=> bs!1590580 (= lambda!349298 lambda!349257)))

(declare-fun bs!1590581 () Bool)

(assert (= bs!1590581 (and d!1992741 d!1992375)))

(assert (=> bs!1590581 (= lambda!349298 lambda!349224)))

(declare-fun bs!1590582 () Bool)

(assert (= bs!1590582 (and d!1992741 b!6348956)))

(assert (=> bs!1590582 (not (= lambda!349298 lambda!349186))))

(declare-fun bs!1590583 () Bool)

(assert (= bs!1590583 (and d!1992741 b!6348951)))

(assert (=> bs!1590583 (not (= lambda!349298 lambda!349183))))

(declare-fun bs!1590584 () Bool)

(assert (= bs!1590584 (and d!1992741 d!1992663)))

(assert (=> bs!1590584 (= lambda!349298 lambda!349291)))

(declare-fun bs!1590585 () Bool)

(assert (= bs!1590585 (and d!1992741 b!6349642)))

(assert (=> bs!1590585 (not (= lambda!349298 lambda!349247))))

(declare-fun bs!1590586 () Bool)

(assert (= bs!1590586 (and d!1992741 b!6349644)))

(assert (=> bs!1590586 (not (= lambda!349298 lambda!349249))))

(assert (=> d!1992741 (= (nullableZipper!2021 lt!2364158) (exists!2569 lt!2364158 lambda!349298))))

(declare-fun bs!1590587 () Bool)

(assert (= bs!1590587 d!1992741))

(declare-fun m!7157536 () Bool)

(assert (=> bs!1590587 m!7157536))

(assert (=> b!6348839 d!1992741))

(assert (=> d!1992001 d!1991993))

(declare-fun d!1992743 () Bool)

(assert (=> d!1992743 (= (flatMap!1760 z!1189 lambda!349079) (dynLambda!25745 lambda!349079 (h!71390 zl!343)))))

(assert (=> d!1992743 true))

(declare-fun _$13!3508 () Unit!158351)

(assert (=> d!1992743 (= (choose!47112 z!1189 (h!71390 zl!343) lambda!349079) _$13!3508)))

(declare-fun b_lambda!241565 () Bool)

(assert (=> (not b_lambda!241565) (not d!1992743)))

(declare-fun bs!1590588 () Bool)

(assert (= bs!1590588 d!1992743))

(assert (=> bs!1590588 m!7155376))

(assert (=> bs!1590588 m!7155898))

(assert (=> d!1992001 d!1992743))

(assert (=> d!1992071 d!1992073))

(assert (=> d!1992071 d!1991939))

(declare-fun e!3856767 () Bool)

(declare-fun d!1992745 () Bool)

(assert (=> d!1992745 (= (matchZipper!2267 ((_ map or) lt!2364175 lt!2364165) (t!378653 s!2326)) e!3856767)))

(declare-fun res!2613045 () Bool)

(assert (=> d!1992745 (=> res!2613045 e!3856767)))

(assert (=> d!1992745 (= res!2613045 (matchZipper!2267 lt!2364175 (t!378653 s!2326)))))

(assert (=> d!1992745 true))

(declare-fun _$48!2132 () Unit!158351)

(assert (=> d!1992745 (= (choose!47117 lt!2364175 lt!2364165 (t!378653 s!2326)) _$48!2132)))

(declare-fun b!6350442 () Bool)

(assert (=> b!6350442 (= e!3856767 (matchZipper!2267 lt!2364165 (t!378653 s!2326)))))

(assert (= (and d!1992745 (not res!2613045)) b!6350442))

(assert (=> d!1992745 m!7155310))

(assert (=> d!1992745 m!7155264))

(assert (=> b!6350442 m!7155316))

(assert (=> d!1992071 d!1992745))

(declare-fun d!1992747 () Bool)

(declare-fun c!1155319 () Bool)

(assert (=> d!1992747 (= c!1155319 (isEmpty!37033 (tail!12088 (t!378653 s!2326))))))

(declare-fun e!3856768 () Bool)

(assert (=> d!1992747 (= (matchZipper!2267 (derivationStepZipper!2221 lt!2364175 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))) e!3856768)))

(declare-fun b!6350443 () Bool)

(assert (=> b!6350443 (= e!3856768 (nullableZipper!2021 (derivationStepZipper!2221 lt!2364175 (head!13003 (t!378653 s!2326)))))))

(declare-fun b!6350444 () Bool)

(assert (=> b!6350444 (= e!3856768 (matchZipper!2267 (derivationStepZipper!2221 (derivationStepZipper!2221 lt!2364175 (head!13003 (t!378653 s!2326))) (head!13003 (tail!12088 (t!378653 s!2326)))) (tail!12088 (tail!12088 (t!378653 s!2326)))))))

(assert (= (and d!1992747 c!1155319) b!6350443))

(assert (= (and d!1992747 (not c!1155319)) b!6350444))

(assert (=> d!1992747 m!7155730))

(assert (=> d!1992747 m!7157290))

(assert (=> b!6350443 m!7155754))

(declare-fun m!7157538 () Bool)

(assert (=> b!6350443 m!7157538))

(assert (=> b!6350444 m!7155730))

(assert (=> b!6350444 m!7157294))

(assert (=> b!6350444 m!7155754))

(assert (=> b!6350444 m!7157294))

(declare-fun m!7157540 () Bool)

(assert (=> b!6350444 m!7157540))

(assert (=> b!6350444 m!7155730))

(assert (=> b!6350444 m!7157298))

(assert (=> b!6350444 m!7157540))

(assert (=> b!6350444 m!7157298))

(declare-fun m!7157542 () Bool)

(assert (=> b!6350444 m!7157542))

(assert (=> b!6348507 d!1992747))

(declare-fun bs!1590589 () Bool)

(declare-fun d!1992749 () Bool)

(assert (= bs!1590589 (and d!1992749 b!6348017)))

(declare-fun lambda!349299 () Int)

(assert (=> bs!1590589 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349299 lambda!349079))))

(declare-fun bs!1590590 () Bool)

(assert (= bs!1590590 (and d!1992749 d!1991991)))

(assert (=> bs!1590590 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349299 lambda!349150))))

(declare-fun bs!1590591 () Bool)

(assert (= bs!1590591 (and d!1992749 d!1992631)))

(assert (=> bs!1590591 (= lambda!349299 lambda!349283)))

(declare-fun bs!1590592 () Bool)

(assert (= bs!1590592 (and d!1992749 d!1992645)))

(assert (=> bs!1590592 (= lambda!349299 lambda!349287)))

(assert (=> d!1992749 true))

(assert (=> d!1992749 (= (derivationStepZipper!2221 lt!2364175 (head!13003 (t!378653 s!2326))) (flatMap!1760 lt!2364175 lambda!349299))))

(declare-fun bs!1590593 () Bool)

(assert (= bs!1590593 d!1992749))

(declare-fun m!7157544 () Bool)

(assert (=> bs!1590593 m!7157544))

(assert (=> b!6348507 d!1992749))

(assert (=> b!6348507 d!1992633))

(assert (=> b!6348507 d!1992635))

(assert (=> d!1992073 d!1992545))

(assert (=> b!6348972 d!1992007))

(declare-fun d!1992751 () Bool)

(assert (=> d!1992751 (= (isEmpty!37030 (tail!12087 (unfocusZipperList!1676 zl!343))) ((_ is Nil!64940) (tail!12087 (unfocusZipperList!1676 zl!343))))))

(assert (=> b!6348937 d!1992751))

(declare-fun d!1992753 () Bool)

(assert (=> d!1992753 (= (tail!12087 (unfocusZipperList!1676 zl!343)) (t!378652 (unfocusZipperList!1676 zl!343)))))

(assert (=> b!6348937 d!1992753))

(declare-fun d!1992755 () Bool)

(assert (=> d!1992755 (= (flatMap!1760 lt!2364158 lambda!349150) (choose!47110 lt!2364158 lambda!349150))))

(declare-fun bs!1590594 () Bool)

(assert (= bs!1590594 d!1992755))

(declare-fun m!7157546 () Bool)

(assert (=> bs!1590594 m!7157546))

(assert (=> d!1991991 d!1992755))

(assert (=> bm!541231 d!1992417))

(declare-fun d!1992757 () Bool)

(declare-fun c!1155320 () Bool)

(assert (=> d!1992757 (= c!1155320 (isEmpty!37033 (tail!12088 (t!378653 s!2326))))))

(declare-fun e!3856769 () Bool)

(assert (=> d!1992757 (= (matchZipper!2267 (derivationStepZipper!2221 lt!2364165 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))) e!3856769)))

(declare-fun b!6350445 () Bool)

(assert (=> b!6350445 (= e!3856769 (nullableZipper!2021 (derivationStepZipper!2221 lt!2364165 (head!13003 (t!378653 s!2326)))))))

(declare-fun b!6350446 () Bool)

(assert (=> b!6350446 (= e!3856769 (matchZipper!2267 (derivationStepZipper!2221 (derivationStepZipper!2221 lt!2364165 (head!13003 (t!378653 s!2326))) (head!13003 (tail!12088 (t!378653 s!2326)))) (tail!12088 (tail!12088 (t!378653 s!2326)))))))

(assert (= (and d!1992757 c!1155320) b!6350445))

(assert (= (and d!1992757 (not c!1155320)) b!6350446))

(assert (=> d!1992757 m!7155730))

(assert (=> d!1992757 m!7157290))

(assert (=> b!6350445 m!7155918))

(declare-fun m!7157548 () Bool)

(assert (=> b!6350445 m!7157548))

(assert (=> b!6350446 m!7155730))

(assert (=> b!6350446 m!7157294))

(assert (=> b!6350446 m!7155918))

(assert (=> b!6350446 m!7157294))

(declare-fun m!7157550 () Bool)

(assert (=> b!6350446 m!7157550))

(assert (=> b!6350446 m!7155730))

(assert (=> b!6350446 m!7157298))

(assert (=> b!6350446 m!7157550))

(assert (=> b!6350446 m!7157298))

(declare-fun m!7157552 () Bool)

(assert (=> b!6350446 m!7157552))

(assert (=> b!6348769 d!1992757))

(declare-fun bs!1590595 () Bool)

(declare-fun d!1992759 () Bool)

(assert (= bs!1590595 (and d!1992759 b!6348017)))

(declare-fun lambda!349300 () Int)

(assert (=> bs!1590595 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349300 lambda!349079))))

(declare-fun bs!1590596 () Bool)

(assert (= bs!1590596 (and d!1992759 d!1992645)))

(assert (=> bs!1590596 (= lambda!349300 lambda!349287)))

(declare-fun bs!1590597 () Bool)

(assert (= bs!1590597 (and d!1992759 d!1992749)))

(assert (=> bs!1590597 (= lambda!349300 lambda!349299)))

(declare-fun bs!1590598 () Bool)

(assert (= bs!1590598 (and d!1992759 d!1992631)))

(assert (=> bs!1590598 (= lambda!349300 lambda!349283)))

(declare-fun bs!1590599 () Bool)

(assert (= bs!1590599 (and d!1992759 d!1991991)))

(assert (=> bs!1590599 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349300 lambda!349150))))

(assert (=> d!1992759 true))

(assert (=> d!1992759 (= (derivationStepZipper!2221 lt!2364165 (head!13003 (t!378653 s!2326))) (flatMap!1760 lt!2364165 lambda!349300))))

(declare-fun bs!1590600 () Bool)

(assert (= bs!1590600 d!1992759))

(declare-fun m!7157554 () Bool)

(assert (=> bs!1590600 m!7157554))

(assert (=> b!6348769 d!1992759))

(assert (=> b!6348769 d!1992633))

(assert (=> b!6348769 d!1992635))

(declare-fun b!6350447 () Bool)

(declare-fun e!3856770 () Bool)

(declare-fun lt!2364475 () Bool)

(declare-fun call!541523 () Bool)

(assert (=> b!6350447 (= e!3856770 (= lt!2364475 call!541523))))

(declare-fun b!6350448 () Bool)

(declare-fun e!3856775 () Bool)

(assert (=> b!6350448 (= e!3856775 (= (head!13003 (_1!36537 (get!22467 lt!2364310))) (c!1154628 (regOne!33022 (regOne!33022 r!7292)))))))

(declare-fun b!6350449 () Bool)

(declare-fun e!3856774 () Bool)

(assert (=> b!6350449 (= e!3856774 (matchR!8438 (derivativeStep!4960 (regOne!33022 (regOne!33022 r!7292)) (head!13003 (_1!36537 (get!22467 lt!2364310)))) (tail!12088 (_1!36537 (get!22467 lt!2364310)))))))

(declare-fun b!6350450 () Bool)

(declare-fun res!2613050 () Bool)

(declare-fun e!3856773 () Bool)

(assert (=> b!6350450 (=> res!2613050 e!3856773)))

(assert (=> b!6350450 (= res!2613050 (not (isEmpty!37033 (tail!12088 (_1!36537 (get!22467 lt!2364310))))))))

(declare-fun b!6350451 () Bool)

(declare-fun e!3856772 () Bool)

(assert (=> b!6350451 (= e!3856772 e!3856773)))

(declare-fun res!2613047 () Bool)

(assert (=> b!6350451 (=> res!2613047 e!3856773)))

(assert (=> b!6350451 (= res!2613047 call!541523)))

(declare-fun b!6350452 () Bool)

(declare-fun e!3856776 () Bool)

(assert (=> b!6350452 (= e!3856776 (not lt!2364475))))

(declare-fun b!6350453 () Bool)

(assert (=> b!6350453 (= e!3856774 (nullable!6248 (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun d!1992761 () Bool)

(assert (=> d!1992761 e!3856770))

(declare-fun c!1155323 () Bool)

(assert (=> d!1992761 (= c!1155323 ((_ is EmptyExpr!16255) (regOne!33022 (regOne!33022 r!7292))))))

(assert (=> d!1992761 (= lt!2364475 e!3856774)))

(declare-fun c!1155321 () Bool)

(assert (=> d!1992761 (= c!1155321 (isEmpty!37033 (_1!36537 (get!22467 lt!2364310))))))

(assert (=> d!1992761 (validRegex!7991 (regOne!33022 (regOne!33022 r!7292)))))

(assert (=> d!1992761 (= (matchR!8438 (regOne!33022 (regOne!33022 r!7292)) (_1!36537 (get!22467 lt!2364310))) lt!2364475)))

(declare-fun b!6350454 () Bool)

(declare-fun res!2613049 () Bool)

(declare-fun e!3856771 () Bool)

(assert (=> b!6350454 (=> res!2613049 e!3856771)))

(assert (=> b!6350454 (= res!2613049 (not ((_ is ElementMatch!16255) (regOne!33022 (regOne!33022 r!7292)))))))

(assert (=> b!6350454 (= e!3856776 e!3856771)))

(declare-fun b!6350455 () Bool)

(declare-fun res!2613053 () Bool)

(assert (=> b!6350455 (=> (not res!2613053) (not e!3856775))))

(assert (=> b!6350455 (= res!2613053 (isEmpty!37033 (tail!12088 (_1!36537 (get!22467 lt!2364310)))))))

(declare-fun b!6350456 () Bool)

(assert (=> b!6350456 (= e!3856770 e!3856776)))

(declare-fun c!1155322 () Bool)

(assert (=> b!6350456 (= c!1155322 ((_ is EmptyLang!16255) (regOne!33022 (regOne!33022 r!7292))))))

(declare-fun b!6350457 () Bool)

(assert (=> b!6350457 (= e!3856771 e!3856772)))

(declare-fun res!2613051 () Bool)

(assert (=> b!6350457 (=> (not res!2613051) (not e!3856772))))

(assert (=> b!6350457 (= res!2613051 (not lt!2364475))))

(declare-fun b!6350458 () Bool)

(assert (=> b!6350458 (= e!3856773 (not (= (head!13003 (_1!36537 (get!22467 lt!2364310))) (c!1154628 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun bm!541518 () Bool)

(assert (=> bm!541518 (= call!541523 (isEmpty!37033 (_1!36537 (get!22467 lt!2364310))))))

(declare-fun b!6350459 () Bool)

(declare-fun res!2613048 () Bool)

(assert (=> b!6350459 (=> (not res!2613048) (not e!3856775))))

(assert (=> b!6350459 (= res!2613048 (not call!541523))))

(declare-fun b!6350460 () Bool)

(declare-fun res!2613046 () Bool)

(assert (=> b!6350460 (=> res!2613046 e!3856771)))

(assert (=> b!6350460 (= res!2613046 e!3856775)))

(declare-fun res!2613052 () Bool)

(assert (=> b!6350460 (=> (not res!2613052) (not e!3856775))))

(assert (=> b!6350460 (= res!2613052 lt!2364475)))

(assert (= (and d!1992761 c!1155321) b!6350453))

(assert (= (and d!1992761 (not c!1155321)) b!6350449))

(assert (= (and d!1992761 c!1155323) b!6350447))

(assert (= (and d!1992761 (not c!1155323)) b!6350456))

(assert (= (and b!6350456 c!1155322) b!6350452))

(assert (= (and b!6350456 (not c!1155322)) b!6350454))

(assert (= (and b!6350454 (not res!2613049)) b!6350460))

(assert (= (and b!6350460 res!2613052) b!6350459))

(assert (= (and b!6350459 res!2613048) b!6350455))

(assert (= (and b!6350455 res!2613053) b!6350448))

(assert (= (and b!6350460 (not res!2613046)) b!6350457))

(assert (= (and b!6350457 res!2613051) b!6350451))

(assert (= (and b!6350451 (not res!2613047)) b!6350450))

(assert (= (and b!6350450 (not res!2613050)) b!6350458))

(assert (= (or b!6350447 b!6350451 b!6350459) bm!541518))

(assert (=> b!6350453 m!7155358))

(declare-fun m!7157556 () Bool)

(assert (=> d!1992761 m!7157556))

(assert (=> d!1992761 m!7155966))

(declare-fun m!7157558 () Bool)

(assert (=> b!6350448 m!7157558))

(declare-fun m!7157560 () Bool)

(assert (=> b!6350455 m!7157560))

(assert (=> b!6350455 m!7157560))

(declare-fun m!7157562 () Bool)

(assert (=> b!6350455 m!7157562))

(assert (=> bm!541518 m!7157556))

(assert (=> b!6350449 m!7157558))

(assert (=> b!6350449 m!7157558))

(declare-fun m!7157564 () Bool)

(assert (=> b!6350449 m!7157564))

(assert (=> b!6350449 m!7157560))

(assert (=> b!6350449 m!7157564))

(assert (=> b!6350449 m!7157560))

(declare-fun m!7157566 () Bool)

(assert (=> b!6350449 m!7157566))

(assert (=> b!6350450 m!7157560))

(assert (=> b!6350450 m!7157560))

(assert (=> b!6350450 m!7157562))

(assert (=> b!6350458 m!7157558))

(assert (=> b!6348832 d!1992761))

(assert (=> b!6348832 d!1992673))

(declare-fun d!1992763 () Bool)

(assert (=> d!1992763 (= (isEmpty!37030 (t!378652 lt!2364159)) ((_ is Nil!64940) (t!378652 lt!2364159)))))

(assert (=> b!6348891 d!1992763))

(declare-fun d!1992765 () Bool)

(declare-fun e!3856778 () Bool)

(assert (=> d!1992765 e!3856778))

(declare-fun res!2613055 () Bool)

(assert (=> d!1992765 (=> (not res!2613055) (not e!3856778))))

(declare-fun lt!2364476 () List!65065)

(assert (=> d!1992765 (= res!2613055 (= (content!12256 lt!2364476) ((_ map or) (content!12256 (_1!36537 (get!22467 lt!2364299))) (content!12256 (_2!36537 (get!22467 lt!2364299))))))))

(declare-fun e!3856777 () List!65065)

(assert (=> d!1992765 (= lt!2364476 e!3856777)))

(declare-fun c!1155324 () Bool)

(assert (=> d!1992765 (= c!1155324 ((_ is Nil!64941) (_1!36537 (get!22467 lt!2364299))))))

(assert (=> d!1992765 (= (++!14324 (_1!36537 (get!22467 lt!2364299)) (_2!36537 (get!22467 lt!2364299))) lt!2364476)))

(declare-fun b!6350461 () Bool)

(assert (=> b!6350461 (= e!3856777 (_2!36537 (get!22467 lt!2364299)))))

(declare-fun b!6350463 () Bool)

(declare-fun res!2613054 () Bool)

(assert (=> b!6350463 (=> (not res!2613054) (not e!3856778))))

(assert (=> b!6350463 (= res!2613054 (= (size!40344 lt!2364476) (+ (size!40344 (_1!36537 (get!22467 lt!2364299))) (size!40344 (_2!36537 (get!22467 lt!2364299))))))))

(declare-fun b!6350462 () Bool)

(assert (=> b!6350462 (= e!3856777 (Cons!64941 (h!71389 (_1!36537 (get!22467 lt!2364299))) (++!14324 (t!378653 (_1!36537 (get!22467 lt!2364299))) (_2!36537 (get!22467 lt!2364299)))))))

(declare-fun b!6350464 () Bool)

(assert (=> b!6350464 (= e!3856778 (or (not (= (_2!36537 (get!22467 lt!2364299)) Nil!64941)) (= lt!2364476 (_1!36537 (get!22467 lt!2364299)))))))

(assert (= (and d!1992765 c!1155324) b!6350461))

(assert (= (and d!1992765 (not c!1155324)) b!6350462))

(assert (= (and d!1992765 res!2613055) b!6350463))

(assert (= (and b!6350463 res!2613054) b!6350464))

(declare-fun m!7157568 () Bool)

(assert (=> d!1992765 m!7157568))

(declare-fun m!7157570 () Bool)

(assert (=> d!1992765 m!7157570))

(declare-fun m!7157572 () Bool)

(assert (=> d!1992765 m!7157572))

(declare-fun m!7157574 () Bool)

(assert (=> b!6350463 m!7157574))

(declare-fun m!7157576 () Bool)

(assert (=> b!6350463 m!7157576))

(declare-fun m!7157578 () Bool)

(assert (=> b!6350463 m!7157578))

(declare-fun m!7157580 () Bool)

(assert (=> b!6350462 m!7157580))

(assert (=> b!6348789 d!1992765))

(assert (=> b!6348789 d!1992471))

(declare-fun b!6350465 () Bool)

(declare-fun e!3856780 () Bool)

(declare-fun e!3856783 () Bool)

(assert (=> b!6350465 (= e!3856780 e!3856783)))

(declare-fun c!1155325 () Bool)

(assert (=> b!6350465 (= c!1155325 ((_ is Star!16255) lt!2364318))))

(declare-fun b!6350466 () Bool)

(declare-fun e!3856782 () Bool)

(declare-fun e!3856785 () Bool)

(assert (=> b!6350466 (= e!3856782 e!3856785)))

(declare-fun res!2613057 () Bool)

(assert (=> b!6350466 (=> (not res!2613057) (not e!3856785))))

(declare-fun call!541525 () Bool)

(assert (=> b!6350466 (= res!2613057 call!541525)))

(declare-fun bm!541519 () Bool)

(declare-fun call!541524 () Bool)

(declare-fun c!1155326 () Bool)

(assert (=> bm!541519 (= call!541524 (validRegex!7991 (ite c!1155326 (regTwo!33023 lt!2364318) (regTwo!33022 lt!2364318))))))

(declare-fun b!6350467 () Bool)

(declare-fun e!3856784 () Bool)

(assert (=> b!6350467 (= e!3856784 call!541524)))

(declare-fun b!6350468 () Bool)

(assert (=> b!6350468 (= e!3856785 call!541524)))

(declare-fun b!6350469 () Bool)

(declare-fun e!3856779 () Bool)

(declare-fun call!541526 () Bool)

(assert (=> b!6350469 (= e!3856779 call!541526)))

(declare-fun d!1992767 () Bool)

(declare-fun res!2613059 () Bool)

(assert (=> d!1992767 (=> res!2613059 e!3856780)))

(assert (=> d!1992767 (= res!2613059 ((_ is ElementMatch!16255) lt!2364318))))

(assert (=> d!1992767 (= (validRegex!7991 lt!2364318) e!3856780)))

(declare-fun bm!541520 () Bool)

(assert (=> bm!541520 (= call!541526 (validRegex!7991 (ite c!1155325 (reg!16584 lt!2364318) (ite c!1155326 (regOne!33023 lt!2364318) (regOne!33022 lt!2364318)))))))

(declare-fun b!6350470 () Bool)

(declare-fun res!2613056 () Bool)

(assert (=> b!6350470 (=> (not res!2613056) (not e!3856784))))

(assert (=> b!6350470 (= res!2613056 call!541525)))

(declare-fun e!3856781 () Bool)

(assert (=> b!6350470 (= e!3856781 e!3856784)))

(declare-fun b!6350471 () Bool)

(assert (=> b!6350471 (= e!3856783 e!3856781)))

(assert (=> b!6350471 (= c!1155326 ((_ is Union!16255) lt!2364318))))

(declare-fun b!6350472 () Bool)

(assert (=> b!6350472 (= e!3856783 e!3856779)))

(declare-fun res!2613060 () Bool)

(assert (=> b!6350472 (= res!2613060 (not (nullable!6248 (reg!16584 lt!2364318))))))

(assert (=> b!6350472 (=> (not res!2613060) (not e!3856779))))

(declare-fun bm!541521 () Bool)

(assert (=> bm!541521 (= call!541525 call!541526)))

(declare-fun b!6350473 () Bool)

(declare-fun res!2613058 () Bool)

(assert (=> b!6350473 (=> res!2613058 e!3856782)))

(assert (=> b!6350473 (= res!2613058 (not ((_ is Concat!25100) lt!2364318)))))

(assert (=> b!6350473 (= e!3856781 e!3856782)))

(assert (= (and d!1992767 (not res!2613059)) b!6350465))

(assert (= (and b!6350465 c!1155325) b!6350472))

(assert (= (and b!6350465 (not c!1155325)) b!6350471))

(assert (= (and b!6350472 res!2613060) b!6350469))

(assert (= (and b!6350471 c!1155326) b!6350470))

(assert (= (and b!6350471 (not c!1155326)) b!6350473))

(assert (= (and b!6350470 res!2613056) b!6350467))

(assert (= (and b!6350473 (not res!2613058)) b!6350466))

(assert (= (and b!6350466 res!2613057) b!6350468))

(assert (= (or b!6350467 b!6350468) bm!541519))

(assert (= (or b!6350470 b!6350466) bm!541521))

(assert (= (or b!6350469 bm!541521) bm!541520))

(declare-fun m!7157582 () Bool)

(assert (=> bm!541519 m!7157582))

(declare-fun m!7157584 () Bool)

(assert (=> bm!541520 m!7157584))

(declare-fun m!7157586 () Bool)

(assert (=> b!6350472 m!7157586))

(assert (=> d!1992049 d!1992767))

(declare-fun d!1992769 () Bool)

(declare-fun res!2613061 () Bool)

(declare-fun e!3856786 () Bool)

(assert (=> d!1992769 (=> res!2613061 e!3856786)))

(assert (=> d!1992769 (= res!2613061 ((_ is Nil!64940) lt!2364157))))

(assert (=> d!1992769 (= (forall!15421 lt!2364157 lambda!349169) e!3856786)))

(declare-fun b!6350474 () Bool)

(declare-fun e!3856787 () Bool)

(assert (=> b!6350474 (= e!3856786 e!3856787)))

(declare-fun res!2613062 () Bool)

(assert (=> b!6350474 (=> (not res!2613062) (not e!3856787))))

(assert (=> b!6350474 (= res!2613062 (dynLambda!25748 lambda!349169 (h!71388 lt!2364157)))))

(declare-fun b!6350475 () Bool)

(assert (=> b!6350475 (= e!3856787 (forall!15421 (t!378652 lt!2364157) lambda!349169))))

(assert (= (and d!1992769 (not res!2613061)) b!6350474))

(assert (= (and b!6350474 res!2613062) b!6350475))

(declare-fun b_lambda!241567 () Bool)

(assert (=> (not b_lambda!241567) (not b!6350474)))

(declare-fun m!7157588 () Bool)

(assert (=> b!6350474 m!7157588))

(declare-fun m!7157590 () Bool)

(assert (=> b!6350475 m!7157590))

(assert (=> d!1992049 d!1992769))

(declare-fun bm!541522 () Bool)

(declare-fun call!541528 () Int)

(declare-fun call!541527 () Int)

(assert (=> bm!541522 (= call!541528 call!541527)))

(declare-fun b!6350476 () Bool)

(declare-fun e!3856789 () Int)

(assert (=> b!6350476 (= e!3856789 1)))

(declare-fun bm!541523 () Bool)

(declare-fun c!1155327 () Bool)

(declare-fun c!1155330 () Bool)

(assert (=> bm!541523 (= call!541527 (regexDepthTotal!212 (ite c!1155327 (reg!16584 (h!71388 (exprs!6139 (h!71390 zl!343)))) (ite c!1155330 (regTwo!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))))

(declare-fun b!6350477 () Bool)

(declare-fun e!3856791 () Int)

(declare-fun e!3856790 () Int)

(assert (=> b!6350477 (= e!3856791 e!3856790)))

(declare-fun c!1155329 () Bool)

(assert (=> b!6350477 (= c!1155329 ((_ is Concat!25100) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6350479 () Bool)

(assert (=> b!6350479 (= e!3856790 1)))

(declare-fun b!6350480 () Bool)

(declare-fun e!3856788 () Int)

(assert (=> b!6350480 (= e!3856789 e!3856788)))

(assert (=> b!6350480 (= c!1155327 ((_ is Star!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6350481 () Bool)

(assert (=> b!6350481 (= c!1155330 ((_ is Union!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> b!6350481 (= e!3856788 e!3856791)))

(declare-fun bm!541524 () Bool)

(declare-fun call!541529 () Int)

(assert (=> bm!541524 (= call!541529 (regexDepthTotal!212 (ite c!1155330 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350482 () Bool)

(assert (=> b!6350482 (= e!3856790 (+ 1 call!541529 call!541528))))

(declare-fun b!6350483 () Bool)

(assert (=> b!6350483 (= e!3856791 (+ 1 call!541529 call!541528))))

(declare-fun b!6350478 () Bool)

(assert (=> b!6350478 (= e!3856788 (+ 1 call!541527))))

(declare-fun d!1992771 () Bool)

(declare-fun lt!2364477 () Int)

(assert (=> d!1992771 (> lt!2364477 0)))

(assert (=> d!1992771 (= lt!2364477 e!3856789)))

(declare-fun c!1155328 () Bool)

(assert (=> d!1992771 (= c!1155328 ((_ is ElementMatch!16255) (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> d!1992771 (= (regexDepthTotal!212 (h!71388 (exprs!6139 (h!71390 zl!343)))) lt!2364477)))

(assert (= (and d!1992771 c!1155328) b!6350476))

(assert (= (and d!1992771 (not c!1155328)) b!6350480))

(assert (= (and b!6350480 c!1155327) b!6350478))

(assert (= (and b!6350480 (not c!1155327)) b!6350481))

(assert (= (and b!6350481 c!1155330) b!6350483))

(assert (= (and b!6350481 (not c!1155330)) b!6350477))

(assert (= (and b!6350477 c!1155329) b!6350482))

(assert (= (and b!6350477 (not c!1155329)) b!6350479))

(assert (= (or b!6350483 b!6350482) bm!541522))

(assert (= (or b!6350483 b!6350482) bm!541524))

(assert (= (or b!6350478 bm!541522) bm!541523))

(declare-fun m!7157592 () Bool)

(assert (=> bm!541523 m!7157592))

(declare-fun m!7157594 () Bool)

(assert (=> bm!541524 m!7157594))

(assert (=> b!6348376 d!1992771))

(declare-fun d!1992773 () Bool)

(declare-fun lt!2364478 () Int)

(assert (=> d!1992773 (>= lt!2364478 0)))

(declare-fun e!3856792 () Int)

(assert (=> d!1992773 (= lt!2364478 e!3856792)))

(declare-fun c!1155331 () Bool)

(assert (=> d!1992773 (= c!1155331 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(assert (=> d!1992773 (= (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))) lt!2364478)))

(declare-fun b!6350484 () Bool)

(assert (=> b!6350484 (= e!3856792 (+ (regexDepthTotal!212 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))))) (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))))))))))

(declare-fun b!6350485 () Bool)

(assert (=> b!6350485 (= e!3856792 1)))

(assert (= (and d!1992773 c!1155331) b!6350484))

(assert (= (and d!1992773 (not c!1155331)) b!6350485))

(declare-fun m!7157596 () Bool)

(assert (=> b!6350484 m!7157596))

(declare-fun m!7157598 () Bool)

(assert (=> b!6350484 m!7157598))

(assert (=> b!6348376 d!1992773))

(assert (=> d!1992007 d!1992545))

(declare-fun bs!1590601 () Bool)

(declare-fun d!1992775 () Bool)

(assert (= bs!1590601 (and d!1992775 b!6348958)))

(declare-fun lambda!349301 () Int)

(assert (=> bs!1590601 (not (= lambda!349301 lambda!349187))))

(declare-fun bs!1590602 () Bool)

(assert (= bs!1590602 (and d!1992775 d!1992667)))

(assert (=> bs!1590602 (= lambda!349301 lambda!349292)))

(declare-fun bs!1590603 () Bool)

(assert (= bs!1590603 (and d!1992775 d!1992383)))

(assert (=> bs!1590603 (not (= lambda!349301 lambda!349245))))

(declare-fun bs!1590604 () Bool)

(assert (= bs!1590604 (and d!1992775 b!6348953)))

(assert (=> bs!1590604 (not (= lambda!349301 lambda!349184))))

(declare-fun bs!1590605 () Bool)

(assert (= bs!1590605 (and d!1992775 d!1992433)))

(assert (=> bs!1590605 (= lambda!349301 lambda!349257)))

(declare-fun bs!1590606 () Bool)

(assert (= bs!1590606 (and d!1992775 d!1992375)))

(assert (=> bs!1590606 (= lambda!349301 lambda!349224)))

(declare-fun bs!1590607 () Bool)

(assert (= bs!1590607 (and d!1992775 b!6348951)))

(assert (=> bs!1590607 (not (= lambda!349301 lambda!349183))))

(declare-fun bs!1590608 () Bool)

(assert (= bs!1590608 (and d!1992775 d!1992663)))

(assert (=> bs!1590608 (= lambda!349301 lambda!349291)))

(declare-fun bs!1590609 () Bool)

(assert (= bs!1590609 (and d!1992775 b!6348956)))

(assert (=> bs!1590609 (not (= lambda!349301 lambda!349186))))

(declare-fun bs!1590610 () Bool)

(assert (= bs!1590610 (and d!1992775 d!1992741)))

(assert (=> bs!1590610 (= lambda!349301 lambda!349298)))

(declare-fun bs!1590611 () Bool)

(assert (= bs!1590611 (and d!1992775 b!6349642)))

(assert (=> bs!1590611 (not (= lambda!349301 lambda!349247))))

(declare-fun bs!1590612 () Bool)

(assert (= bs!1590612 (and d!1992775 b!6349644)))

(assert (=> bs!1590612 (not (= lambda!349301 lambda!349249))))

(assert (=> d!1992775 (= (nullableZipper!2021 lt!2364172) (exists!2569 lt!2364172 lambda!349301))))

(declare-fun bs!1590613 () Bool)

(assert (= bs!1590613 d!1992775))

(declare-fun m!7157600 () Bool)

(assert (=> bs!1590613 m!7157600))

(assert (=> b!6348504 d!1992775))

(declare-fun bs!1590614 () Bool)

(declare-fun d!1992777 () Bool)

(assert (= bs!1590614 (and d!1992777 d!1992677)))

(declare-fun lambda!349302 () Int)

(assert (=> bs!1590614 (= lambda!349302 lambda!349293)))

(declare-fun bs!1590615 () Bool)

(assert (= bs!1590615 (and d!1992777 d!1992043)))

(assert (=> bs!1590615 (= lambda!349302 lambda!349166)))

(declare-fun bs!1590616 () Bool)

(assert (= bs!1590616 (and d!1992777 d!1992027)))

(assert (=> bs!1590616 (= lambda!349302 lambda!349163)))

(declare-fun bs!1590617 () Bool)

(assert (= bs!1590617 (and d!1992777 d!1991903)))

(assert (=> bs!1590617 (= lambda!349302 lambda!349111)))

(declare-fun bs!1590618 () Bool)

(assert (= bs!1590618 (and d!1992777 d!1992639)))

(assert (=> bs!1590618 (= lambda!349302 lambda!349286)))

(declare-fun bs!1590619 () Bool)

(assert (= bs!1590619 (and d!1992777 d!1992339)))

(assert (=> bs!1590619 (= lambda!349302 lambda!349220)))

(declare-fun bs!1590620 () Bool)

(assert (= bs!1590620 (and d!1992777 d!1992711)))

(assert (=> bs!1590620 (= lambda!349302 lambda!349295)))

(declare-fun bs!1590621 () Bool)

(assert (= bs!1590621 (and d!1992777 d!1992049)))

(assert (=> bs!1590621 (= lambda!349302 lambda!349169)))

(declare-fun bs!1590622 () Bool)

(assert (= bs!1590622 (and d!1992777 b!6349632)))

(assert (=> bs!1590622 (not (= lambda!349302 lambda!349239))))

(declare-fun bs!1590623 () Bool)

(assert (= bs!1590623 (and d!1992777 d!1991913)))

(assert (=> bs!1590623 (= lambda!349302 lambda!349122)))

(declare-fun bs!1590624 () Bool)

(assert (= bs!1590624 (and d!1992777 d!1992057)))

(assert (=> bs!1590624 (= lambda!349302 lambda!349172)))

(declare-fun bs!1590625 () Bool)

(assert (= bs!1590625 (and d!1992777 b!6349630)))

(assert (=> bs!1590625 (not (= lambda!349302 lambda!349237))))

(declare-fun bs!1590626 () Bool)

(assert (= bs!1590626 (and d!1992777 d!1991959)))

(assert (=> bs!1590626 (= lambda!349302 lambda!349128)))

(declare-fun bs!1590627 () Bool)

(assert (= bs!1590627 (and d!1992777 d!1992059)))

(assert (=> bs!1590627 (= lambda!349302 lambda!349175)))

(declare-fun bs!1590628 () Bool)

(assert (= bs!1590628 (and d!1992777 d!1992699)))

(assert (=> bs!1590628 (= lambda!349302 lambda!349294)))

(declare-fun bs!1590629 () Bool)

(assert (= bs!1590629 (and d!1992777 d!1992649)))

(assert (=> bs!1590629 (= lambda!349302 lambda!349288)))

(declare-fun b!6350486 () Bool)

(declare-fun e!3856798 () Regex!16255)

(assert (=> b!6350486 (= e!3856798 EmptyLang!16255)))

(declare-fun b!6350487 () Bool)

(declare-fun e!3856794 () Regex!16255)

(assert (=> b!6350487 (= e!3856794 (h!71388 (t!378652 (unfocusZipperList!1676 zl!343))))))

(declare-fun b!6350488 () Bool)

(declare-fun e!3856793 () Bool)

(declare-fun lt!2364479 () Regex!16255)

(assert (=> b!6350488 (= e!3856793 (isEmptyLang!1664 lt!2364479))))

(declare-fun b!6350489 () Bool)

(assert (=> b!6350489 (= e!3856794 e!3856798)))

(declare-fun c!1155334 () Bool)

(assert (=> b!6350489 (= c!1155334 ((_ is Cons!64940) (t!378652 (unfocusZipperList!1676 zl!343))))))

(declare-fun e!3856797 () Bool)

(assert (=> d!1992777 e!3856797))

(declare-fun res!2613064 () Bool)

(assert (=> d!1992777 (=> (not res!2613064) (not e!3856797))))

(assert (=> d!1992777 (= res!2613064 (validRegex!7991 lt!2364479))))

(assert (=> d!1992777 (= lt!2364479 e!3856794)))

(declare-fun c!1155332 () Bool)

(declare-fun e!3856795 () Bool)

(assert (=> d!1992777 (= c!1155332 e!3856795)))

(declare-fun res!2613063 () Bool)

(assert (=> d!1992777 (=> (not res!2613063) (not e!3856795))))

(assert (=> d!1992777 (= res!2613063 ((_ is Cons!64940) (t!378652 (unfocusZipperList!1676 zl!343))))))

(assert (=> d!1992777 (forall!15421 (t!378652 (unfocusZipperList!1676 zl!343)) lambda!349302)))

(assert (=> d!1992777 (= (generalisedUnion!2099 (t!378652 (unfocusZipperList!1676 zl!343))) lt!2364479)))

(declare-fun b!6350490 () Bool)

(assert (=> b!6350490 (= e!3856798 (Union!16255 (h!71388 (t!378652 (unfocusZipperList!1676 zl!343))) (generalisedUnion!2099 (t!378652 (t!378652 (unfocusZipperList!1676 zl!343))))))))

(declare-fun b!6350491 () Bool)

(declare-fun e!3856796 () Bool)

(assert (=> b!6350491 (= e!3856796 (= lt!2364479 (head!13002 (t!378652 (unfocusZipperList!1676 zl!343)))))))

(declare-fun b!6350492 () Bool)

(assert (=> b!6350492 (= e!3856795 (isEmpty!37030 (t!378652 (t!378652 (unfocusZipperList!1676 zl!343)))))))

(declare-fun b!6350493 () Bool)

(assert (=> b!6350493 (= e!3856796 (isUnion!1094 lt!2364479))))

(declare-fun b!6350494 () Bool)

(assert (=> b!6350494 (= e!3856793 e!3856796)))

(declare-fun c!1155333 () Bool)

(assert (=> b!6350494 (= c!1155333 (isEmpty!37030 (tail!12087 (t!378652 (unfocusZipperList!1676 zl!343)))))))

(declare-fun b!6350495 () Bool)

(assert (=> b!6350495 (= e!3856797 e!3856793)))

(declare-fun c!1155335 () Bool)

(assert (=> b!6350495 (= c!1155335 (isEmpty!37030 (t!378652 (unfocusZipperList!1676 zl!343))))))

(assert (= (and d!1992777 res!2613063) b!6350492))

(assert (= (and d!1992777 c!1155332) b!6350487))

(assert (= (and d!1992777 (not c!1155332)) b!6350489))

(assert (= (and b!6350489 c!1155334) b!6350490))

(assert (= (and b!6350489 (not c!1155334)) b!6350486))

(assert (= (and d!1992777 res!2613064) b!6350495))

(assert (= (and b!6350495 c!1155335) b!6350488))

(assert (= (and b!6350495 (not c!1155335)) b!6350494))

(assert (= (and b!6350494 c!1155333) b!6350491))

(assert (= (and b!6350494 (not c!1155333)) b!6350493))

(declare-fun m!7157602 () Bool)

(assert (=> b!6350493 m!7157602))

(declare-fun m!7157604 () Bool)

(assert (=> d!1992777 m!7157604))

(declare-fun m!7157606 () Bool)

(assert (=> d!1992777 m!7157606))

(declare-fun m!7157608 () Bool)

(assert (=> b!6350494 m!7157608))

(assert (=> b!6350494 m!7157608))

(declare-fun m!7157610 () Bool)

(assert (=> b!6350494 m!7157610))

(declare-fun m!7157612 () Bool)

(assert (=> b!6350492 m!7157612))

(declare-fun m!7157614 () Bool)

(assert (=> b!6350491 m!7157614))

(declare-fun m!7157616 () Bool)

(assert (=> b!6350490 m!7157616))

(declare-fun m!7157618 () Bool)

(assert (=> b!6350488 m!7157618))

(assert (=> b!6350495 m!7156108))

(assert (=> b!6348933 d!1992777))

(declare-fun bs!1590630 () Bool)

(declare-fun b!6350498 () Bool)

(assert (= bs!1590630 (and b!6350498 b!6348025)))

(declare-fun lambda!349303 () Int)

(assert (=> bs!1590630 (not (= lambda!349303 lambda!349080))))

(declare-fun bs!1590631 () Bool)

(assert (= bs!1590631 (and b!6350498 b!6350240)))

(assert (=> bs!1590631 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 (regTwo!33023 lt!2364185))) (= (regOne!33023 r!7292) (regTwo!33023 lt!2364185))) (= lambda!349303 lambda!349289))))

(declare-fun bs!1590632 () Bool)

(assert (= bs!1590632 (and b!6350498 d!1992481)))

(assert (=> bs!1590632 (not (= lambda!349303 lambda!349271))))

(declare-fun bs!1590633 () Bool)

(assert (= bs!1590633 (and b!6350498 d!1992559)))

(assert (=> bs!1590633 (not (= lambda!349303 lambda!349279))))

(declare-fun bs!1590634 () Bool)

(assert (= bs!1590634 (and b!6350498 d!1992017)))

(assert (=> bs!1590634 (not (= lambda!349303 lambda!349158))))

(declare-fun bs!1590635 () Bool)

(assert (= bs!1590635 (and b!6350498 d!1992047)))

(assert (=> bs!1590635 (not (= lambda!349303 lambda!349167))))

(declare-fun bs!1590636 () Bool)

(assert (= bs!1590636 (and b!6350498 b!6348814)))

(assert (=> bs!1590636 (not (= lambda!349303 lambda!349162))))

(declare-fun bs!1590637 () Bool)

(assert (= bs!1590637 (and b!6350498 b!6348655)))

(assert (=> bs!1590637 (not (= lambda!349303 lambda!349147))))

(declare-fun bs!1590638 () Bool)

(assert (= bs!1590638 (and b!6350498 b!6349859)))

(assert (=> bs!1590638 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 (regTwo!33023 lt!2364179))) (= (regOne!33023 r!7292) (regTwo!33023 lt!2364179))) (= lambda!349303 lambda!349273))))

(assert (=> bs!1590635 (not (= lambda!349303 lambda!349168))))

(declare-fun bs!1590639 () Bool)

(assert (= bs!1590639 (and b!6350498 b!6349862)))

(assert (=> bs!1590639 (not (= lambda!349303 lambda!349275))))

(declare-fun bs!1590640 () Bool)

(assert (= bs!1590640 (and b!6350498 d!1992015)))

(assert (=> bs!1590640 (not (= lambda!349303 lambda!349153))))

(assert (=> bs!1590630 (not (= lambda!349303 lambda!349081))))

(declare-fun bs!1590641 () Bool)

(assert (= bs!1590641 (and b!6350498 b!6350243)))

(assert (=> bs!1590641 (not (= lambda!349303 lambda!349290))))

(declare-fun bs!1590642 () Bool)

(assert (= bs!1590642 (and b!6350498 b!6350407)))

(assert (=> bs!1590642 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 (regTwo!33023 r!7292))) (= (regOne!33023 r!7292) (regTwo!33023 r!7292))) (= lambda!349303 lambda!349296))))

(declare-fun bs!1590643 () Bool)

(assert (= bs!1590643 (and b!6350498 b!6348652)))

(assert (=> bs!1590643 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 r!7292)) (= (regOne!33023 r!7292) r!7292)) (= lambda!349303 lambda!349146))))

(declare-fun bs!1590644 () Bool)

(assert (= bs!1590644 (and b!6350498 d!1992023)))

(assert (=> bs!1590644 (not (= lambda!349303 lambda!349160))))

(declare-fun bs!1590645 () Bool)

(assert (= bs!1590645 (and b!6350498 b!6350209)))

(assert (=> bs!1590645 (not (= lambda!349303 lambda!349285))))

(declare-fun bs!1590646 () Bool)

(assert (= bs!1590646 (and b!6350498 b!6348869)))

(assert (=> bs!1590646 (not (= lambda!349303 lambda!349165))))

(assert (=> bs!1590632 (not (= lambda!349303 lambda!349272))))

(declare-fun bs!1590647 () Bool)

(assert (= bs!1590647 (and b!6350498 b!6350206)))

(assert (=> bs!1590647 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 (regOne!33023 lt!2364185))) (= (regOne!33023 r!7292) (regOne!33023 lt!2364185))) (= lambda!349303 lambda!349284))))

(declare-fun bs!1590648 () Bool)

(assert (= bs!1590648 (and b!6350498 b!6348005)))

(assert (=> bs!1590648 (not (= lambda!349303 lambda!349078))))

(declare-fun bs!1590649 () Bool)

(assert (= bs!1590649 (and b!6350498 b!6349681)))

(assert (=> bs!1590649 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 (regOne!33023 lt!2364179))) (= (regOne!33023 r!7292) (regOne!33023 lt!2364179))) (= lambda!349303 lambda!349255))))

(declare-fun bs!1590650 () Bool)

(assert (= bs!1590650 (and b!6350498 b!6350410)))

(assert (=> bs!1590650 (not (= lambda!349303 lambda!349297))))

(assert (=> bs!1590634 (not (= lambda!349303 lambda!349159))))

(declare-fun bs!1590651 () Bool)

(assert (= bs!1590651 (and b!6350498 d!1992445)))

(assert (=> bs!1590651 (not (= lambda!349303 lambda!349261))))

(assert (=> bs!1590633 (not (= lambda!349303 lambda!349280))))

(declare-fun bs!1590652 () Bool)

(assert (= bs!1590652 (and b!6350498 b!6348811)))

(assert (=> bs!1590652 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 lt!2364179)) (= (regOne!33023 r!7292) lt!2364179)) (= lambda!349303 lambda!349161))))

(declare-fun bs!1590653 () Bool)

(assert (= bs!1590653 (and b!6350498 b!6348866)))

(assert (=> bs!1590653 (= (and (= (reg!16584 (regOne!33023 r!7292)) (reg!16584 lt!2364185)) (= (regOne!33023 r!7292) lt!2364185)) (= lambda!349303 lambda!349164))))

(declare-fun bs!1590654 () Bool)

(assert (= bs!1590654 (and b!6350498 b!6349684)))

(assert (=> bs!1590654 (not (= lambda!349303 lambda!349256))))

(assert (=> bs!1590648 (not (= lambda!349303 lambda!349077))))

(assert (=> b!6350498 true))

(assert (=> b!6350498 true))

(declare-fun bs!1590655 () Bool)

(declare-fun b!6350501 () Bool)

(assert (= bs!1590655 (and b!6350501 b!6348025)))

(declare-fun lambda!349304 () Int)

(assert (=> bs!1590655 (not (= lambda!349304 lambda!349080))))

(declare-fun bs!1590656 () Bool)

(assert (= bs!1590656 (and b!6350501 b!6350240)))

(assert (=> bs!1590656 (not (= lambda!349304 lambda!349289))))

(declare-fun bs!1590657 () Bool)

(assert (= bs!1590657 (and b!6350501 d!1992481)))

(assert (=> bs!1590657 (not (= lambda!349304 lambda!349271))))

(declare-fun bs!1590658 () Bool)

(assert (= bs!1590658 (and b!6350501 d!1992559)))

(assert (=> bs!1590658 (not (= lambda!349304 lambda!349279))))

(declare-fun bs!1590659 () Bool)

(assert (= bs!1590659 (and b!6350501 d!1992017)))

(assert (=> bs!1590659 (not (= lambda!349304 lambda!349158))))

(declare-fun bs!1590660 () Bool)

(assert (= bs!1590660 (and b!6350501 d!1992047)))

(assert (=> bs!1590660 (not (= lambda!349304 lambda!349167))))

(declare-fun bs!1590661 () Bool)

(assert (= bs!1590661 (and b!6350501 b!6348814)))

(assert (=> bs!1590661 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 lt!2364179)) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 lt!2364179))) (= lambda!349304 lambda!349162))))

(declare-fun bs!1590662 () Bool)

(assert (= bs!1590662 (and b!6350501 b!6348655)))

(assert (=> bs!1590662 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349304 lambda!349147))))

(declare-fun bs!1590663 () Bool)

(assert (= bs!1590663 (and b!6350501 b!6349859)))

(assert (=> bs!1590663 (not (= lambda!349304 lambda!349273))))

(assert (=> bs!1590660 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 r!7292)) lt!2364185)) (= lambda!349304 lambda!349168))))

(declare-fun bs!1590664 () Bool)

(assert (= bs!1590664 (and b!6350501 b!6349862)))

(assert (=> bs!1590664 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regTwo!33023 lt!2364179))) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 (regTwo!33023 lt!2364179)))) (= lambda!349304 lambda!349275))))

(declare-fun bs!1590665 () Bool)

(assert (= bs!1590665 (and b!6350501 d!1992015)))

(assert (=> bs!1590665 (not (= lambda!349304 lambda!349153))))

(assert (=> bs!1590655 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 r!7292)) lt!2364185)) (= lambda!349304 lambda!349081))))

(declare-fun bs!1590666 () Bool)

(assert (= bs!1590666 (and b!6350501 b!6350243)))

(assert (=> bs!1590666 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regTwo!33023 lt!2364185))) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 (regTwo!33023 lt!2364185)))) (= lambda!349304 lambda!349290))))

(declare-fun bs!1590667 () Bool)

(assert (= bs!1590667 (and b!6350501 b!6350407)))

(assert (=> bs!1590667 (not (= lambda!349304 lambda!349296))))

(declare-fun bs!1590668 () Bool)

(assert (= bs!1590668 (and b!6350501 b!6348652)))

(assert (=> bs!1590668 (not (= lambda!349304 lambda!349146))))

(declare-fun bs!1590669 () Bool)

(assert (= bs!1590669 (and b!6350501 d!1992023)))

(assert (=> bs!1590669 (not (= lambda!349304 lambda!349160))))

(declare-fun bs!1590670 () Bool)

(assert (= bs!1590670 (and b!6350501 b!6350498)))

(assert (=> bs!1590670 (not (= lambda!349304 lambda!349303))))

(declare-fun bs!1590671 () Bool)

(assert (= bs!1590671 (and b!6350501 b!6350209)))

(assert (=> bs!1590671 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regOne!33023 lt!2364185))) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 (regOne!33023 lt!2364185)))) (= lambda!349304 lambda!349285))))

(declare-fun bs!1590672 () Bool)

(assert (= bs!1590672 (and b!6350501 b!6348869)))

(assert (=> bs!1590672 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 lt!2364185)) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 lt!2364185))) (= lambda!349304 lambda!349165))))

(assert (=> bs!1590657 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349304 lambda!349272))))

(declare-fun bs!1590673 () Bool)

(assert (= bs!1590673 (and b!6350501 b!6350206)))

(assert (=> bs!1590673 (not (= lambda!349304 lambda!349284))))

(declare-fun bs!1590674 () Bool)

(assert (= bs!1590674 (and b!6350501 b!6348005)))

(assert (=> bs!1590674 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349304 lambda!349078))))

(declare-fun bs!1590675 () Bool)

(assert (= bs!1590675 (and b!6350501 b!6349681)))

(assert (=> bs!1590675 (not (= lambda!349304 lambda!349255))))

(declare-fun bs!1590676 () Bool)

(assert (= bs!1590676 (and b!6350501 b!6350410)))

(assert (=> bs!1590676 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regTwo!33023 r!7292))) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 (regTwo!33023 r!7292)))) (= lambda!349304 lambda!349297))))

(assert (=> bs!1590659 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 r!7292)) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 r!7292))) (= lambda!349304 lambda!349159))))

(declare-fun bs!1590677 () Bool)

(assert (= bs!1590677 (and b!6350501 d!1992445)))

(assert (=> bs!1590677 (not (= lambda!349304 lambda!349261))))

(assert (=> bs!1590658 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regOne!33022 r!7292))) (= (regTwo!33022 (regOne!33023 r!7292)) lt!2364185)) (= lambda!349304 lambda!349280))))

(declare-fun bs!1590678 () Bool)

(assert (= bs!1590678 (and b!6350501 b!6348811)))

(assert (=> bs!1590678 (not (= lambda!349304 lambda!349161))))

(declare-fun bs!1590679 () Bool)

(assert (= bs!1590679 (and b!6350501 b!6348866)))

(assert (=> bs!1590679 (not (= lambda!349304 lambda!349164))))

(declare-fun bs!1590680 () Bool)

(assert (= bs!1590680 (and b!6350501 b!6349684)))

(assert (=> bs!1590680 (= (and (= (regOne!33022 (regOne!33023 r!7292)) (regOne!33022 (regOne!33023 lt!2364179))) (= (regTwo!33022 (regOne!33023 r!7292)) (regTwo!33022 (regOne!33023 lt!2364179)))) (= lambda!349304 lambda!349256))))

(assert (=> bs!1590674 (not (= lambda!349304 lambda!349077))))

(assert (=> b!6350501 true))

(assert (=> b!6350501 true))

(declare-fun d!1992779 () Bool)

(declare-fun c!1155337 () Bool)

(assert (=> d!1992779 (= c!1155337 ((_ is EmptyExpr!16255) (regOne!33023 r!7292)))))

(declare-fun e!3856800 () Bool)

(assert (=> d!1992779 (= (matchRSpec!3356 (regOne!33023 r!7292) s!2326) e!3856800)))

(declare-fun b!6350496 () Bool)

(declare-fun e!3856803 () Bool)

(assert (=> b!6350496 (= e!3856803 (matchRSpec!3356 (regTwo!33023 (regOne!33023 r!7292)) s!2326))))

(declare-fun b!6350497 () Bool)

(declare-fun c!1155339 () Bool)

(assert (=> b!6350497 (= c!1155339 ((_ is Union!16255) (regOne!33023 r!7292)))))

(declare-fun e!3856802 () Bool)

(declare-fun e!3856799 () Bool)

(assert (=> b!6350497 (= e!3856802 e!3856799)))

(declare-fun bm!541525 () Bool)

(declare-fun call!541530 () Bool)

(assert (=> bm!541525 (= call!541530 (isEmpty!37033 s!2326))))

(declare-fun e!3856801 () Bool)

(declare-fun call!541531 () Bool)

(assert (=> b!6350498 (= e!3856801 call!541531)))

(declare-fun b!6350499 () Bool)

(assert (=> b!6350499 (= e!3856802 (= s!2326 (Cons!64941 (c!1154628 (regOne!33023 r!7292)) Nil!64941)))))

(declare-fun b!6350500 () Bool)

(declare-fun e!3856804 () Bool)

(assert (=> b!6350500 (= e!3856800 e!3856804)))

(declare-fun res!2613065 () Bool)

(assert (=> b!6350500 (= res!2613065 (not ((_ is EmptyLang!16255) (regOne!33023 r!7292))))))

(assert (=> b!6350500 (=> (not res!2613065) (not e!3856804))))

(declare-fun e!3856805 () Bool)

(assert (=> b!6350501 (= e!3856805 call!541531)))

(declare-fun b!6350502 () Bool)

(assert (=> b!6350502 (= e!3856800 call!541530)))

(declare-fun c!1155336 () Bool)

(declare-fun bm!541526 () Bool)

(assert (=> bm!541526 (= call!541531 (Exists!3325 (ite c!1155336 lambda!349303 lambda!349304)))))

(declare-fun b!6350503 () Bool)

(assert (=> b!6350503 (= e!3856799 e!3856803)))

(declare-fun res!2613066 () Bool)

(assert (=> b!6350503 (= res!2613066 (matchRSpec!3356 (regOne!33023 (regOne!33023 r!7292)) s!2326))))

(assert (=> b!6350503 (=> res!2613066 e!3856803)))

(declare-fun b!6350504 () Bool)

(declare-fun c!1155338 () Bool)

(assert (=> b!6350504 (= c!1155338 ((_ is ElementMatch!16255) (regOne!33023 r!7292)))))

(assert (=> b!6350504 (= e!3856804 e!3856802)))

(declare-fun b!6350505 () Bool)

(declare-fun res!2613067 () Bool)

(assert (=> b!6350505 (=> res!2613067 e!3856801)))

(assert (=> b!6350505 (= res!2613067 call!541530)))

(assert (=> b!6350505 (= e!3856805 e!3856801)))

(declare-fun b!6350506 () Bool)

(assert (=> b!6350506 (= e!3856799 e!3856805)))

(assert (=> b!6350506 (= c!1155336 ((_ is Star!16255) (regOne!33023 r!7292)))))

(assert (= (and d!1992779 c!1155337) b!6350502))

(assert (= (and d!1992779 (not c!1155337)) b!6350500))

(assert (= (and b!6350500 res!2613065) b!6350504))

(assert (= (and b!6350504 c!1155338) b!6350499))

(assert (= (and b!6350504 (not c!1155338)) b!6350497))

(assert (= (and b!6350497 c!1155339) b!6350503))

(assert (= (and b!6350497 (not c!1155339)) b!6350506))

(assert (= (and b!6350503 (not res!2613066)) b!6350496))

(assert (= (and b!6350506 c!1155336) b!6350505))

(assert (= (and b!6350506 (not c!1155336)) b!6350501))

(assert (= (and b!6350505 (not res!2613067)) b!6350498))

(assert (= (or b!6350498 b!6350501) bm!541526))

(assert (= (or b!6350502 b!6350505) bm!541525))

(declare-fun m!7157620 () Bool)

(assert (=> b!6350496 m!7157620))

(assert (=> bm!541525 m!7155846))

(declare-fun m!7157622 () Bool)

(assert (=> bm!541526 m!7157622))

(declare-fun m!7157624 () Bool)

(assert (=> b!6350503 m!7157624))

(assert (=> b!6348657 d!1992779))

(declare-fun d!1992781 () Bool)

(declare-fun lt!2364480 () Int)

(assert (=> d!1992781 (>= lt!2364480 0)))

(declare-fun e!3856806 () Int)

(assert (=> d!1992781 (= lt!2364480 e!3856806)))

(declare-fun c!1155340 () Bool)

(assert (=> d!1992781 (= c!1155340 ((_ is Cons!64940) (exprs!6139 (h!71390 lt!2364170))))))

(assert (=> d!1992781 (= (contextDepthTotal!364 (h!71390 lt!2364170)) lt!2364480)))

(declare-fun b!6350507 () Bool)

(assert (=> b!6350507 (= e!3856806 (+ (regexDepthTotal!212 (h!71388 (exprs!6139 (h!71390 lt!2364170)))) (contextDepthTotal!364 (Context!11279 (t!378652 (exprs!6139 (h!71390 lt!2364170)))))))))

(declare-fun b!6350508 () Bool)

(assert (=> b!6350508 (= e!3856806 1)))

(assert (= (and d!1992781 c!1155340) b!6350507))

(assert (= (and d!1992781 (not c!1155340)) b!6350508))

(declare-fun m!7157626 () Bool)

(assert (=> b!6350507 m!7157626))

(declare-fun m!7157628 () Bool)

(assert (=> b!6350507 m!7157628))

(assert (=> b!6348525 d!1992781))

(declare-fun d!1992783 () Bool)

(declare-fun lt!2364481 () Int)

(assert (=> d!1992783 (>= lt!2364481 0)))

(declare-fun e!3856807 () Int)

(assert (=> d!1992783 (= lt!2364481 e!3856807)))

(declare-fun c!1155341 () Bool)

(assert (=> d!1992783 (= c!1155341 ((_ is Cons!64942) (t!378654 lt!2364170)))))

(assert (=> d!1992783 (= (zipperDepthTotal!392 (t!378654 lt!2364170)) lt!2364481)))

(declare-fun b!6350509 () Bool)

(assert (=> b!6350509 (= e!3856807 (+ (contextDepthTotal!364 (h!71390 (t!378654 lt!2364170))) (zipperDepthTotal!392 (t!378654 (t!378654 lt!2364170)))))))

(declare-fun b!6350510 () Bool)

(assert (=> b!6350510 (= e!3856807 0)))

(assert (= (and d!1992783 c!1155341) b!6350509))

(assert (= (and d!1992783 (not c!1155341)) b!6350510))

(declare-fun m!7157630 () Bool)

(assert (=> b!6350509 m!7157630))

(declare-fun m!7157632 () Bool)

(assert (=> b!6350509 m!7157632))

(assert (=> b!6348525 d!1992783))

(declare-fun d!1992785 () Bool)

(assert (=> d!1992785 (= ($colon$colon!2116 (exprs!6139 lt!2364161) (ite (or c!1154857 c!1154860) (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (h!71388 (exprs!6139 (h!71390 zl!343))))) (Cons!64940 (ite (or c!1154857 c!1154860) (regTwo!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))) (h!71388 (exprs!6139 (h!71390 zl!343)))) (exprs!6139 lt!2364161)))))

(assert (=> bm!541228 d!1992785))

(declare-fun d!1992787 () Bool)

(assert (=> d!1992787 (= (isEmpty!37034 (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326)) (not ((_ is Some!16145) (findConcatSeparation!2560 (regOne!33022 r!7292) (regTwo!33022 r!7292) Nil!64941 s!2326 s!2326))))))

(assert (=> d!1992019 d!1992787))

(declare-fun b!6350511 () Bool)

(declare-fun call!541532 () (InoxSet Context!11278))

(declare-fun e!3856810 () (InoxSet Context!11278))

(assert (=> b!6350511 (= e!3856810 ((_ map or) call!541532 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))))) (h!71389 s!2326))))))

(declare-fun bm!541527 () Bool)

(assert (=> bm!541527 (= call!541532 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))))) (h!71389 s!2326)))))

(declare-fun b!6350512 () Bool)

(declare-fun e!3856809 () (InoxSet Context!11278))

(assert (=> b!6350512 (= e!3856809 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6350513 () Bool)

(assert (=> b!6350513 (= e!3856809 call!541532)))

(declare-fun b!6350514 () Bool)

(declare-fun e!3856808 () Bool)

(assert (=> b!6350514 (= e!3856808 (nullable!6248 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343))))))))))

(declare-fun d!1992789 () Bool)

(declare-fun c!1155343 () Bool)

(assert (=> d!1992789 (= c!1155343 e!3856808)))

(declare-fun res!2613068 () Bool)

(assert (=> d!1992789 (=> (not res!2613068) (not e!3856808))))

(assert (=> d!1992789 (= res!2613068 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(assert (=> d!1992789 (= (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))) (h!71389 s!2326)) e!3856810)))

(declare-fun b!6350515 () Bool)

(assert (=> b!6350515 (= e!3856810 e!3856809)))

(declare-fun c!1155342 () Bool)

(assert (=> b!6350515 (= c!1155342 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (h!71390 zl!343)))))))))

(assert (= (and d!1992789 res!2613068) b!6350514))

(assert (= (and d!1992789 c!1155343) b!6350511))

(assert (= (and d!1992789 (not c!1155343)) b!6350515))

(assert (= (and b!6350515 c!1155342) b!6350513))

(assert (= (and b!6350515 (not c!1155342)) b!6350512))

(assert (= (or b!6350511 b!6350513) bm!541527))

(declare-fun m!7157634 () Bool)

(assert (=> b!6350511 m!7157634))

(declare-fun m!7157636 () Bool)

(assert (=> bm!541527 m!7157636))

(declare-fun m!7157638 () Bool)

(assert (=> b!6350514 m!7157638))

(assert (=> b!6348730 d!1992789))

(assert (=> d!1991981 d!1992417))

(assert (=> d!1991981 d!1991877))

(declare-fun call!541533 () (InoxSet Context!11278))

(declare-fun b!6350516 () Bool)

(declare-fun e!3856813 () (InoxSet Context!11278))

(assert (=> b!6350516 (= e!3856813 ((_ map or) call!541533 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161)))))) (h!71389 s!2326))))))

(declare-fun bm!541528 () Bool)

(assert (=> bm!541528 (= call!541533 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161))))) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161)))))) (h!71389 s!2326)))))

(declare-fun b!6350517 () Bool)

(declare-fun e!3856812 () (InoxSet Context!11278))

(assert (=> b!6350517 (= e!3856812 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6350518 () Bool)

(assert (=> b!6350518 (= e!3856812 call!541533)))

(declare-fun b!6350519 () Bool)

(declare-fun e!3856811 () Bool)

(assert (=> b!6350519 (= e!3856811 (nullable!6248 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161)))))))))

(declare-fun d!1992791 () Bool)

(declare-fun c!1155345 () Bool)

(assert (=> d!1992791 (= c!1155345 e!3856811)))

(declare-fun res!2613069 () Bool)

(assert (=> d!1992791 (=> (not res!2613069) (not e!3856811))))

(assert (=> d!1992791 (= res!2613069 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161))))))))

(assert (=> d!1992791 (= (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 lt!2364161))) (h!71389 s!2326)) e!3856813)))

(declare-fun b!6350520 () Bool)

(assert (=> b!6350520 (= e!3856813 e!3856812)))

(declare-fun c!1155344 () Bool)

(assert (=> b!6350520 (= c!1155344 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 lt!2364161))))))))

(assert (= (and d!1992791 res!2613069) b!6350519))

(assert (= (and d!1992791 c!1155345) b!6350516))

(assert (= (and d!1992791 (not c!1155345)) b!6350520))

(assert (= (and b!6350520 c!1155344) b!6350518))

(assert (= (and b!6350520 (not c!1155344)) b!6350517))

(assert (= (or b!6350516 b!6350518) bm!541528))

(declare-fun m!7157640 () Bool)

(assert (=> b!6350516 m!7157640))

(declare-fun m!7157642 () Bool)

(assert (=> bm!541528 m!7157642))

(declare-fun m!7157644 () Bool)

(assert (=> b!6350519 m!7157644))

(assert (=> b!6348725 d!1992791))

(assert (=> bm!541239 d!1992417))

(assert (=> d!1991935 d!1992545))

(declare-fun e!3856816 () (InoxSet Context!11278))

(declare-fun b!6350521 () Bool)

(declare-fun call!541534 () (InoxSet Context!11278))

(assert (=> b!6350521 (= e!3856816 ((_ map or) call!541534 (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))) (h!71389 s!2326))))))

(declare-fun bm!541529 () Bool)

(assert (=> bm!541529 (= call!541534 (derivationStepZipperDown!1503 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))) (Context!11279 (t!378652 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))) (h!71389 s!2326)))))

(declare-fun b!6350522 () Bool)

(declare-fun e!3856815 () (InoxSet Context!11278))

(assert (=> b!6350522 (= e!3856815 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6350523 () Bool)

(assert (=> b!6350523 (= e!3856815 call!541534)))

(declare-fun b!6350524 () Bool)

(declare-fun e!3856814 () Bool)

(assert (=> b!6350524 (= e!3856814 (nullable!6248 (h!71388 (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343))))))))))))))

(declare-fun d!1992793 () Bool)

(declare-fun c!1155347 () Bool)

(assert (=> d!1992793 (= c!1155347 e!3856814)))

(declare-fun res!2613070 () Bool)

(assert (=> d!1992793 (=> (not res!2613070) (not e!3856814))))

(assert (=> d!1992793 (= res!2613070 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))))

(assert (=> d!1992793 (= (derivationStepZipperUp!1429 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (h!71389 s!2326)) e!3856816)))

(declare-fun b!6350525 () Bool)

(assert (=> b!6350525 (= e!3856816 e!3856815)))

(declare-fun c!1155346 () Bool)

(assert (=> b!6350525 (= c!1155346 ((_ is Cons!64940) (exprs!6139 (Context!11279 (t!378652 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))))

(assert (= (and d!1992793 res!2613070) b!6350524))

(assert (= (and d!1992793 c!1155347) b!6350521))

(assert (= (and d!1992793 (not c!1155347)) b!6350525))

(assert (= (and b!6350525 c!1155346) b!6350523))

(assert (= (and b!6350525 (not c!1155346)) b!6350522))

(assert (= (or b!6350521 b!6350523) bm!541529))

(declare-fun m!7157646 () Bool)

(assert (=> b!6350521 m!7157646))

(declare-fun m!7157648 () Bool)

(assert (=> bm!541529 m!7157648))

(declare-fun m!7157650 () Bool)

(assert (=> b!6350524 m!7157650))

(assert (=> b!6348720 d!1992793))

(declare-fun b!6350526 () Bool)

(declare-fun e!3856818 () Bool)

(declare-fun e!3856821 () Bool)

(assert (=> b!6350526 (= e!3856818 e!3856821)))

(declare-fun c!1155348 () Bool)

(assert (=> b!6350526 (= c!1155348 ((_ is Star!16255) lt!2364309))))

(declare-fun b!6350527 () Bool)

(declare-fun e!3856820 () Bool)

(declare-fun e!3856823 () Bool)

(assert (=> b!6350527 (= e!3856820 e!3856823)))

(declare-fun res!2613072 () Bool)

(assert (=> b!6350527 (=> (not res!2613072) (not e!3856823))))

(declare-fun call!541536 () Bool)

(assert (=> b!6350527 (= res!2613072 call!541536)))

(declare-fun bm!541530 () Bool)

(declare-fun call!541535 () Bool)

(declare-fun c!1155349 () Bool)

(assert (=> bm!541530 (= call!541535 (validRegex!7991 (ite c!1155349 (regTwo!33023 lt!2364309) (regTwo!33022 lt!2364309))))))

(declare-fun b!6350528 () Bool)

(declare-fun e!3856822 () Bool)

(assert (=> b!6350528 (= e!3856822 call!541535)))

(declare-fun b!6350529 () Bool)

(assert (=> b!6350529 (= e!3856823 call!541535)))

(declare-fun b!6350530 () Bool)

(declare-fun e!3856817 () Bool)

(declare-fun call!541537 () Bool)

(assert (=> b!6350530 (= e!3856817 call!541537)))

(declare-fun d!1992795 () Bool)

(declare-fun res!2613074 () Bool)

(assert (=> d!1992795 (=> res!2613074 e!3856818)))

(assert (=> d!1992795 (= res!2613074 ((_ is ElementMatch!16255) lt!2364309))))

(assert (=> d!1992795 (= (validRegex!7991 lt!2364309) e!3856818)))

(declare-fun bm!541531 () Bool)

(assert (=> bm!541531 (= call!541537 (validRegex!7991 (ite c!1155348 (reg!16584 lt!2364309) (ite c!1155349 (regOne!33023 lt!2364309) (regOne!33022 lt!2364309)))))))

(declare-fun b!6350531 () Bool)

(declare-fun res!2613071 () Bool)

(assert (=> b!6350531 (=> (not res!2613071) (not e!3856822))))

(assert (=> b!6350531 (= res!2613071 call!541536)))

(declare-fun e!3856819 () Bool)

(assert (=> b!6350531 (= e!3856819 e!3856822)))

(declare-fun b!6350532 () Bool)

(assert (=> b!6350532 (= e!3856821 e!3856819)))

(assert (=> b!6350532 (= c!1155349 ((_ is Union!16255) lt!2364309))))

(declare-fun b!6350533 () Bool)

(assert (=> b!6350533 (= e!3856821 e!3856817)))

(declare-fun res!2613075 () Bool)

(assert (=> b!6350533 (= res!2613075 (not (nullable!6248 (reg!16584 lt!2364309))))))

(assert (=> b!6350533 (=> (not res!2613075) (not e!3856817))))

(declare-fun bm!541532 () Bool)

(assert (=> bm!541532 (= call!541536 call!541537)))

(declare-fun b!6350534 () Bool)

(declare-fun res!2613073 () Bool)

(assert (=> b!6350534 (=> res!2613073 e!3856820)))

(assert (=> b!6350534 (= res!2613073 (not ((_ is Concat!25100) lt!2364309)))))

(assert (=> b!6350534 (= e!3856819 e!3856820)))

(assert (= (and d!1992795 (not res!2613074)) b!6350526))

(assert (= (and b!6350526 c!1155348) b!6350533))

(assert (= (and b!6350526 (not c!1155348)) b!6350532))

(assert (= (and b!6350533 res!2613075) b!6350530))

(assert (= (and b!6350532 c!1155349) b!6350531))

(assert (= (and b!6350532 (not c!1155349)) b!6350534))

(assert (= (and b!6350531 res!2613071) b!6350528))

(assert (= (and b!6350534 (not res!2613073)) b!6350527))

(assert (= (and b!6350527 res!2613072) b!6350529))

(assert (= (or b!6350528 b!6350529) bm!541530))

(assert (= (or b!6350531 b!6350527) bm!541532))

(assert (= (or b!6350530 bm!541532) bm!541531))

(declare-fun m!7157652 () Bool)

(assert (=> bm!541530 m!7157652))

(declare-fun m!7157654 () Bool)

(assert (=> bm!541531 m!7157654))

(declare-fun m!7157656 () Bool)

(assert (=> b!6350533 m!7157656))

(assert (=> d!1992027 d!1992795))

(declare-fun d!1992797 () Bool)

(declare-fun res!2613076 () Bool)

(declare-fun e!3856824 () Bool)

(assert (=> d!1992797 (=> res!2613076 e!3856824)))

(assert (=> d!1992797 (= res!2613076 ((_ is Nil!64940) (t!378652 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> d!1992797 (= (forall!15421 (t!378652 (exprs!6139 (h!71390 zl!343))) lambda!349163) e!3856824)))

(declare-fun b!6350535 () Bool)

(declare-fun e!3856825 () Bool)

(assert (=> b!6350535 (= e!3856824 e!3856825)))

(declare-fun res!2613077 () Bool)

(assert (=> b!6350535 (=> (not res!2613077) (not e!3856825))))

(assert (=> b!6350535 (= res!2613077 (dynLambda!25748 lambda!349163 (h!71388 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun b!6350536 () Bool)

(assert (=> b!6350536 (= e!3856825 (forall!15421 (t!378652 (t!378652 (exprs!6139 (h!71390 zl!343)))) lambda!349163))))

(assert (= (and d!1992797 (not res!2613076)) b!6350535))

(assert (= (and b!6350535 res!2613077) b!6350536))

(declare-fun b_lambda!241569 () Bool)

(assert (=> (not b_lambda!241569) (not b!6350535)))

(declare-fun m!7157658 () Bool)

(assert (=> b!6350535 m!7157658))

(declare-fun m!7157660 () Bool)

(assert (=> b!6350536 m!7157660))

(assert (=> d!1992027 d!1992797))

(declare-fun d!1992799 () Bool)

(assert (=> d!1992799 (= (isEmptyExpr!1657 lt!2364242) ((_ is EmptyExpr!16255) lt!2364242))))

(assert (=> b!6348477 d!1992799))

(declare-fun d!1992801 () Bool)

(assert (=> d!1992801 (= (head!13002 lt!2364157) (h!71388 lt!2364157))))

(assert (=> b!6348899 d!1992801))

(assert (=> bs!1589505 d!1991987))

(declare-fun d!1992803 () Bool)

(assert (=> d!1992803 (= (nullable!6248 lt!2364179) (nullableFct!2195 lt!2364179))))

(declare-fun bs!1590681 () Bool)

(assert (= bs!1590681 d!1992803))

(declare-fun m!7157662 () Bool)

(assert (=> bs!1590681 m!7157662))

(assert (=> b!6348856 d!1992803))

(assert (=> b!6348883 d!1992347))

(assert (=> b!6348883 d!1992351))

(declare-fun d!1992805 () Bool)

(assert (=> d!1992805 (= (isConcat!1180 lt!2364309) ((_ is Concat!25100) lt!2364309))))

(assert (=> b!6348823 d!1992805))

(declare-fun d!1992807 () Bool)

(declare-fun c!1155352 () Bool)

(assert (=> d!1992807 (= c!1155352 ((_ is Nil!64942) lt!2364350))))

(declare-fun e!3856828 () (InoxSet Context!11278))

(assert (=> d!1992807 (= (content!12254 lt!2364350) e!3856828)))

(declare-fun b!6350541 () Bool)

(assert (=> b!6350541 (= e!3856828 ((as const (Array Context!11278 Bool)) false))))

(declare-fun b!6350542 () Bool)

(assert (=> b!6350542 (= e!3856828 ((_ map or) (store ((as const (Array Context!11278 Bool)) false) (h!71390 lt!2364350) true) (content!12254 (t!378654 lt!2364350))))))

(assert (= (and d!1992807 c!1155352) b!6350541))

(assert (= (and d!1992807 (not c!1155352)) b!6350542))

(declare-fun m!7157664 () Bool)

(assert (=> b!6350542 m!7157664))

(declare-fun m!7157666 () Bool)

(assert (=> b!6350542 m!7157666))

(assert (=> b!6348977 d!1992807))

(assert (=> b!6348692 d!1992347))

(assert (=> b!6348692 d!1992351))

(declare-fun d!1992809 () Bool)

(assert (=> d!1992809 (= (Exists!3325 (ite c!1154869 lambda!349161 lambda!349162)) (choose!47113 (ite c!1154869 lambda!349161 lambda!349162)))))

(declare-fun bs!1590682 () Bool)

(assert (= bs!1590682 d!1992809))

(declare-fun m!7157668 () Bool)

(assert (=> bs!1590682 m!7157668))

(assert (=> bm!541232 d!1992809))

(declare-fun bs!1590683 () Bool)

(declare-fun d!1992811 () Bool)

(assert (= bs!1590683 (and d!1992811 b!6348025)))

(declare-fun lambda!349305 () Int)

(assert (=> bs!1590683 (= lambda!349305 lambda!349080)))

(declare-fun bs!1590684 () Bool)

(assert (= bs!1590684 (and d!1992811 b!6350240)))

(assert (=> bs!1590684 (not (= lambda!349305 lambda!349289))))

(declare-fun bs!1590685 () Bool)

(assert (= bs!1590685 (and d!1992811 d!1992481)))

(assert (=> bs!1590685 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349305 lambda!349271))))

(declare-fun bs!1590686 () Bool)

(assert (= bs!1590686 (and d!1992811 d!1992559)))

(assert (=> bs!1590686 (= lambda!349305 lambda!349279)))

(declare-fun bs!1590687 () Bool)

(assert (= bs!1590687 (and d!1992811 d!1992017)))

(assert (=> bs!1590687 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349305 lambda!349158))))

(declare-fun bs!1590688 () Bool)

(assert (= bs!1590688 (and d!1992811 d!1992047)))

(assert (=> bs!1590688 (= lambda!349305 lambda!349167)))

(declare-fun bs!1590689 () Bool)

(assert (= bs!1590689 (and d!1992811 b!6348814)))

(assert (=> bs!1590689 (not (= lambda!349305 lambda!349162))))

(declare-fun bs!1590690 () Bool)

(assert (= bs!1590690 (and d!1992811 b!6348655)))

(assert (=> bs!1590690 (not (= lambda!349305 lambda!349147))))

(declare-fun bs!1590691 () Bool)

(assert (= bs!1590691 (and d!1992811 b!6349859)))

(assert (=> bs!1590691 (not (= lambda!349305 lambda!349273))))

(assert (=> bs!1590688 (not (= lambda!349305 lambda!349168))))

(declare-fun bs!1590692 () Bool)

(assert (= bs!1590692 (and d!1992811 b!6349862)))

(assert (=> bs!1590692 (not (= lambda!349305 lambda!349275))))

(declare-fun bs!1590693 () Bool)

(assert (= bs!1590693 (and d!1992811 d!1992015)))

(assert (=> bs!1590693 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349305 lambda!349153))))

(assert (=> bs!1590683 (not (= lambda!349305 lambda!349081))))

(declare-fun bs!1590694 () Bool)

(assert (= bs!1590694 (and d!1992811 b!6350243)))

(assert (=> bs!1590694 (not (= lambda!349305 lambda!349290))))

(declare-fun bs!1590695 () Bool)

(assert (= bs!1590695 (and d!1992811 b!6350407)))

(assert (=> bs!1590695 (not (= lambda!349305 lambda!349296))))

(declare-fun bs!1590696 () Bool)

(assert (= bs!1590696 (and d!1992811 b!6348652)))

(assert (=> bs!1590696 (not (= lambda!349305 lambda!349146))))

(declare-fun bs!1590697 () Bool)

(assert (= bs!1590697 (and d!1992811 d!1992023)))

(assert (=> bs!1590697 (= lambda!349305 lambda!349160)))

(declare-fun bs!1590698 () Bool)

(assert (= bs!1590698 (and d!1992811 b!6350498)))

(assert (=> bs!1590698 (not (= lambda!349305 lambda!349303))))

(declare-fun bs!1590699 () Bool)

(assert (= bs!1590699 (and d!1992811 b!6350209)))

(assert (=> bs!1590699 (not (= lambda!349305 lambda!349285))))

(declare-fun bs!1590700 () Bool)

(assert (= bs!1590700 (and d!1992811 b!6348869)))

(assert (=> bs!1590700 (not (= lambda!349305 lambda!349165))))

(assert (=> bs!1590685 (not (= lambda!349305 lambda!349272))))

(declare-fun bs!1590701 () Bool)

(assert (= bs!1590701 (and d!1992811 b!6350206)))

(assert (=> bs!1590701 (not (= lambda!349305 lambda!349284))))

(declare-fun bs!1590702 () Bool)

(assert (= bs!1590702 (and d!1992811 b!6348005)))

(assert (=> bs!1590702 (not (= lambda!349305 lambda!349078))))

(declare-fun bs!1590703 () Bool)

(assert (= bs!1590703 (and d!1992811 b!6349681)))

(assert (=> bs!1590703 (not (= lambda!349305 lambda!349255))))

(declare-fun bs!1590704 () Bool)

(assert (= bs!1590704 (and d!1992811 b!6350410)))

(assert (=> bs!1590704 (not (= lambda!349305 lambda!349297))))

(assert (=> bs!1590687 (not (= lambda!349305 lambda!349159))))

(declare-fun bs!1590705 () Bool)

(assert (= bs!1590705 (and d!1992811 d!1992445)))

(assert (=> bs!1590705 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349305 lambda!349261))))

(assert (=> bs!1590686 (not (= lambda!349305 lambda!349280))))

(declare-fun bs!1590706 () Bool)

(assert (= bs!1590706 (and d!1992811 b!6348811)))

(assert (=> bs!1590706 (not (= lambda!349305 lambda!349161))))

(declare-fun bs!1590707 () Bool)

(assert (= bs!1590707 (and d!1992811 b!6348866)))

(assert (=> bs!1590707 (not (= lambda!349305 lambda!349164))))

(declare-fun bs!1590708 () Bool)

(assert (= bs!1590708 (and d!1992811 b!6350501)))

(assert (=> bs!1590708 (not (= lambda!349305 lambda!349304))))

(declare-fun bs!1590709 () Bool)

(assert (= bs!1590709 (and d!1992811 b!6349684)))

(assert (=> bs!1590709 (not (= lambda!349305 lambda!349256))))

(assert (=> bs!1590702 (= (and (= (regOne!33022 (regOne!33022 r!7292)) (regOne!33022 r!7292)) (= lt!2364185 (regTwo!33022 r!7292))) (= lambda!349305 lambda!349077))))

(assert (=> d!1992811 true))

(assert (=> d!1992811 true))

(assert (=> d!1992811 true))

(assert (=> d!1992811 (= (isDefined!12849 (findConcatSeparation!2560 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 Nil!64941 s!2326 s!2326)) (Exists!3325 lambda!349305))))

(assert (=> d!1992811 true))

(declare-fun _$89!2571 () Unit!158351)

(assert (=> d!1992811 (= (choose!47114 (regOne!33022 (regOne!33022 r!7292)) lt!2364185 s!2326) _$89!2571)))

(declare-fun bs!1590710 () Bool)

(assert (= bs!1590710 d!1992811))

(assert (=> bs!1590710 m!7155338))

(assert (=> bs!1590710 m!7155338))

(assert (=> bs!1590710 m!7155344))

(declare-fun m!7157670 () Bool)

(assert (=> bs!1590710 m!7157670))

(assert (=> d!1992023 d!1992811))

(assert (=> d!1992023 d!1992029))

(assert (=> d!1992023 d!1992031))

(assert (=> d!1992023 d!1992579))

(declare-fun d!1992813 () Bool)

(assert (=> d!1992813 (= (Exists!3325 lambda!349160) (choose!47113 lambda!349160))))

(declare-fun bs!1590711 () Bool)

(assert (= bs!1590711 d!1992813))

(declare-fun m!7157672 () Bool)

(assert (=> bs!1590711 m!7157672))

(assert (=> d!1992023 d!1992813))

(declare-fun b!6350543 () Bool)

(declare-fun e!3856831 () (InoxSet Context!11278))

(declare-fun e!3856829 () (InoxSet Context!11278))

(assert (=> b!6350543 (= e!3856831 e!3856829)))

(declare-fun c!1155356 () Bool)

(assert (=> b!6350543 (= c!1155356 ((_ is Concat!25100) (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350544 () Bool)

(declare-fun e!3856833 () (InoxSet Context!11278))

(declare-fun e!3856830 () (InoxSet Context!11278))

(assert (=> b!6350544 (= e!3856833 e!3856830)))

(declare-fun c!1155357 () Bool)

(assert (=> b!6350544 (= c!1155357 ((_ is Union!16255) (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun b!6350545 () Bool)

(declare-fun c!1155354 () Bool)

(assert (=> b!6350545 (= c!1155354 ((_ is Star!16255) (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(declare-fun e!3856834 () (InoxSet Context!11278))

(assert (=> b!6350545 (= e!3856829 e!3856834)))

(declare-fun b!6350546 () Bool)

(declare-fun call!541540 () (InoxSet Context!11278))

(declare-fun call!541539 () (InoxSet Context!11278))

(assert (=> b!6350546 (= e!3856831 ((_ map or) call!541540 call!541539))))

(declare-fun c!1155355 () Bool)

(declare-fun d!1992815 () Bool)

(assert (=> d!1992815 (= c!1155355 (and ((_ is ElementMatch!16255) (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (= (c!1154628 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (h!71389 s!2326))))))

(assert (=> d!1992815 (= (derivationStepZipperDown!1503 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))) (ite c!1154861 lt!2364161 (Context!11279 call!541230)) (h!71389 s!2326)) e!3856833)))

(declare-fun call!541538 () List!65064)

(declare-fun bm!541533 () Bool)

(assert (=> bm!541533 (= call!541540 (derivationStepZipperDown!1503 (ite c!1155357 (regOne!33023 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (regOne!33022 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))) (ite c!1155357 (ite c!1154861 lt!2364161 (Context!11279 call!541230)) (Context!11279 call!541538)) (h!71389 s!2326)))))

(declare-fun b!6350547 () Bool)

(declare-fun e!3856832 () Bool)

(assert (=> b!6350547 (= e!3856832 (nullable!6248 (regOne!33022 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))))

(declare-fun b!6350548 () Bool)

(declare-fun call!541542 () (InoxSet Context!11278))

(assert (=> b!6350548 (= e!3856829 call!541542)))

(declare-fun b!6350549 () Bool)

(assert (=> b!6350549 (= e!3856834 call!541542)))

(declare-fun b!6350550 () Bool)

(assert (=> b!6350550 (= e!3856833 (store ((as const (Array Context!11278 Bool)) false) (ite c!1154861 lt!2364161 (Context!11279 call!541230)) true))))

(declare-fun bm!541534 () Bool)

(declare-fun call!541543 () (InoxSet Context!11278))

(assert (=> bm!541534 (= call!541539 call!541543)))

(declare-fun call!541541 () List!65064)

(declare-fun c!1155353 () Bool)

(declare-fun bm!541535 () Bool)

(assert (=> bm!541535 (= call!541543 (derivationStepZipperDown!1503 (ite c!1155357 (regTwo!33023 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (ite c!1155353 (regTwo!33022 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (ite c!1155356 (regOne!33022 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (reg!16584 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))) (ite (or c!1155357 c!1155353) (ite c!1154861 lt!2364161 (Context!11279 call!541230)) (Context!11279 call!541541)) (h!71389 s!2326)))))

(declare-fun b!6350551 () Bool)

(assert (=> b!6350551 (= e!3856830 ((_ map or) call!541540 call!541543))))

(declare-fun bm!541536 () Bool)

(assert (=> bm!541536 (= call!541538 ($colon$colon!2116 (exprs!6139 (ite c!1154861 lt!2364161 (Context!11279 call!541230))) (ite (or c!1155353 c!1155356) (regTwo!33022 (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))) (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343))))))))))

(declare-fun bm!541537 () Bool)

(assert (=> bm!541537 (= call!541541 call!541538)))

(declare-fun b!6350552 () Bool)

(assert (=> b!6350552 (= c!1155353 e!3856832)))

(declare-fun res!2613078 () Bool)

(assert (=> b!6350552 (=> (not res!2613078) (not e!3856832))))

(assert (=> b!6350552 (= res!2613078 ((_ is Concat!25100) (ite c!1154861 (regOne!33023 (h!71388 (exprs!6139 (h!71390 zl!343)))) (regOne!33022 (h!71388 (exprs!6139 (h!71390 zl!343)))))))))

(assert (=> b!6350552 (= e!3856830 e!3856831)))

(declare-fun bm!541538 () Bool)

(assert (=> bm!541538 (= call!541542 call!541539)))

(declare-fun b!6350553 () Bool)

(assert (=> b!6350553 (= e!3856834 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992815 c!1155355) b!6350550))

(assert (= (and d!1992815 (not c!1155355)) b!6350544))

(assert (= (and b!6350544 c!1155357) b!6350551))

(assert (= (and b!6350544 (not c!1155357)) b!6350552))

(assert (= (and b!6350552 res!2613078) b!6350547))

(assert (= (and b!6350552 c!1155353) b!6350546))

(assert (= (and b!6350552 (not c!1155353)) b!6350543))

(assert (= (and b!6350543 c!1155356) b!6350548))

(assert (= (and b!6350543 (not c!1155356)) b!6350545))

(assert (= (and b!6350545 c!1155354) b!6350549))

(assert (= (and b!6350545 (not c!1155354)) b!6350553))

(assert (= (or b!6350548 b!6350549) bm!541537))

(assert (= (or b!6350548 b!6350549) bm!541538))

(assert (= (or b!6350546 bm!541537) bm!541536))

(assert (= (or b!6350546 bm!541538) bm!541534))

(assert (= (or b!6350551 bm!541534) bm!541535))

(assert (= (or b!6350551 b!6350546) bm!541533))

(declare-fun m!7157674 () Bool)

(assert (=> bm!541536 m!7157674))

(declare-fun m!7157676 () Bool)

(assert (=> b!6350547 m!7157676))

(declare-fun m!7157678 () Bool)

(assert (=> bm!541533 m!7157678))

(declare-fun m!7157680 () Bool)

(assert (=> bm!541535 m!7157680))

(declare-fun m!7157682 () Bool)

(assert (=> b!6350550 m!7157682))

(assert (=> bm!541225 d!1992815))

(declare-fun b!6350554 () Bool)

(declare-fun e!3856835 () Bool)

(declare-fun lt!2364482 () Bool)

(declare-fun call!541544 () Bool)

(assert (=> b!6350554 (= e!3856835 (= lt!2364482 call!541544))))

(declare-fun b!6350555 () Bool)

(declare-fun e!3856840 () Bool)

(assert (=> b!6350555 (= e!3856840 (= (head!13003 (tail!12088 s!2326)) (c!1154628 (derivativeStep!4960 lt!2364179 (head!13003 s!2326)))))))

(declare-fun b!6350556 () Bool)

(declare-fun e!3856839 () Bool)

(assert (=> b!6350556 (= e!3856839 (matchR!8438 (derivativeStep!4960 (derivativeStep!4960 lt!2364179 (head!13003 s!2326)) (head!13003 (tail!12088 s!2326))) (tail!12088 (tail!12088 s!2326))))))

(declare-fun b!6350557 () Bool)

(declare-fun res!2613083 () Bool)

(declare-fun e!3856838 () Bool)

(assert (=> b!6350557 (=> res!2613083 e!3856838)))

(assert (=> b!6350557 (= res!2613083 (not (isEmpty!37033 (tail!12088 (tail!12088 s!2326)))))))

(declare-fun b!6350558 () Bool)

(declare-fun e!3856837 () Bool)

(assert (=> b!6350558 (= e!3856837 e!3856838)))

(declare-fun res!2613080 () Bool)

(assert (=> b!6350558 (=> res!2613080 e!3856838)))

(assert (=> b!6350558 (= res!2613080 call!541544)))

(declare-fun b!6350559 () Bool)

(declare-fun e!3856841 () Bool)

(assert (=> b!6350559 (= e!3856841 (not lt!2364482))))

(declare-fun b!6350560 () Bool)

(assert (=> b!6350560 (= e!3856839 (nullable!6248 (derivativeStep!4960 lt!2364179 (head!13003 s!2326))))))

(declare-fun d!1992817 () Bool)

(assert (=> d!1992817 e!3856835))

(declare-fun c!1155360 () Bool)

(assert (=> d!1992817 (= c!1155360 ((_ is EmptyExpr!16255) (derivativeStep!4960 lt!2364179 (head!13003 s!2326))))))

(assert (=> d!1992817 (= lt!2364482 e!3856839)))

(declare-fun c!1155358 () Bool)

(assert (=> d!1992817 (= c!1155358 (isEmpty!37033 (tail!12088 s!2326)))))

(assert (=> d!1992817 (validRegex!7991 (derivativeStep!4960 lt!2364179 (head!13003 s!2326)))))

(assert (=> d!1992817 (= (matchR!8438 (derivativeStep!4960 lt!2364179 (head!13003 s!2326)) (tail!12088 s!2326)) lt!2364482)))

(declare-fun b!6350561 () Bool)

(declare-fun res!2613082 () Bool)

(declare-fun e!3856836 () Bool)

(assert (=> b!6350561 (=> res!2613082 e!3856836)))

(assert (=> b!6350561 (= res!2613082 (not ((_ is ElementMatch!16255) (derivativeStep!4960 lt!2364179 (head!13003 s!2326)))))))

(assert (=> b!6350561 (= e!3856841 e!3856836)))

(declare-fun b!6350562 () Bool)

(declare-fun res!2613086 () Bool)

(assert (=> b!6350562 (=> (not res!2613086) (not e!3856840))))

(assert (=> b!6350562 (= res!2613086 (isEmpty!37033 (tail!12088 (tail!12088 s!2326))))))

(declare-fun b!6350563 () Bool)

(assert (=> b!6350563 (= e!3856835 e!3856841)))

(declare-fun c!1155359 () Bool)

(assert (=> b!6350563 (= c!1155359 ((_ is EmptyLang!16255) (derivativeStep!4960 lt!2364179 (head!13003 s!2326))))))

(declare-fun b!6350564 () Bool)

(assert (=> b!6350564 (= e!3856836 e!3856837)))

(declare-fun res!2613084 () Bool)

(assert (=> b!6350564 (=> (not res!2613084) (not e!3856837))))

(assert (=> b!6350564 (= res!2613084 (not lt!2364482))))

(declare-fun b!6350565 () Bool)

(assert (=> b!6350565 (= e!3856838 (not (= (head!13003 (tail!12088 s!2326)) (c!1154628 (derivativeStep!4960 lt!2364179 (head!13003 s!2326))))))))

(declare-fun bm!541539 () Bool)

(assert (=> bm!541539 (= call!541544 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun b!6350566 () Bool)

(declare-fun res!2613081 () Bool)

(assert (=> b!6350566 (=> (not res!2613081) (not e!3856840))))

(assert (=> b!6350566 (= res!2613081 (not call!541544))))

(declare-fun b!6350567 () Bool)

(declare-fun res!2613079 () Bool)

(assert (=> b!6350567 (=> res!2613079 e!3856836)))

(assert (=> b!6350567 (= res!2613079 e!3856840)))

(declare-fun res!2613085 () Bool)

(assert (=> b!6350567 (=> (not res!2613085) (not e!3856840))))

(assert (=> b!6350567 (= res!2613085 lt!2364482)))

(assert (= (and d!1992817 c!1155358) b!6350560))

(assert (= (and d!1992817 (not c!1155358)) b!6350556))

(assert (= (and d!1992817 c!1155360) b!6350554))

(assert (= (and d!1992817 (not c!1155360)) b!6350563))

(assert (= (and b!6350563 c!1155359) b!6350559))

(assert (= (and b!6350563 (not c!1155359)) b!6350561))

(assert (= (and b!6350561 (not res!2613082)) b!6350567))

(assert (= (and b!6350567 res!2613085) b!6350566))

(assert (= (and b!6350566 res!2613081) b!6350562))

(assert (= (and b!6350562 res!2613086) b!6350555))

(assert (= (and b!6350567 (not res!2613079)) b!6350564))

(assert (= (and b!6350564 res!2613084) b!6350558))

(assert (= (and b!6350558 (not res!2613080)) b!6350557))

(assert (= (and b!6350557 (not res!2613083)) b!6350565))

(assert (= (or b!6350554 b!6350558 b!6350566) bm!541539))

(assert (=> b!6350560 m!7156026))

(declare-fun m!7157684 () Bool)

(assert (=> b!6350560 m!7157684))

(assert (=> d!1992817 m!7155856))

(assert (=> d!1992817 m!7155858))

(assert (=> d!1992817 m!7156026))

(declare-fun m!7157686 () Bool)

(assert (=> d!1992817 m!7157686))

(assert (=> b!6350555 m!7155856))

(assert (=> b!6350555 m!7157498))

(assert (=> b!6350562 m!7155856))

(assert (=> b!6350562 m!7157500))

(assert (=> b!6350562 m!7157500))

(assert (=> b!6350562 m!7157502))

(assert (=> bm!541539 m!7155856))

(assert (=> bm!541539 m!7155858))

(assert (=> b!6350556 m!7155856))

(assert (=> b!6350556 m!7157498))

(assert (=> b!6350556 m!7156026))

(assert (=> b!6350556 m!7157498))

(declare-fun m!7157688 () Bool)

(assert (=> b!6350556 m!7157688))

(assert (=> b!6350556 m!7155856))

(assert (=> b!6350556 m!7157500))

(assert (=> b!6350556 m!7157688))

(assert (=> b!6350556 m!7157500))

(declare-fun m!7157690 () Bool)

(assert (=> b!6350556 m!7157690))

(assert (=> b!6350557 m!7155856))

(assert (=> b!6350557 m!7157500))

(assert (=> b!6350557 m!7157500))

(assert (=> b!6350557 m!7157502))

(assert (=> b!6350565 m!7155856))

(assert (=> b!6350565 m!7157498))

(assert (=> b!6348852 d!1992817))

(declare-fun b!6350568 () Bool)

(declare-fun e!3856846 () Regex!16255)

(declare-fun e!3856845 () Regex!16255)

(assert (=> b!6350568 (= e!3856846 e!3856845)))

(declare-fun c!1155361 () Bool)

(assert (=> b!6350568 (= c!1155361 ((_ is Star!16255) lt!2364179))))

(declare-fun bm!541540 () Bool)

(declare-fun call!541547 () Regex!16255)

(declare-fun call!541546 () Regex!16255)

(assert (=> bm!541540 (= call!541547 call!541546)))

(declare-fun b!6350569 () Bool)

(declare-fun e!3856844 () Regex!16255)

(assert (=> b!6350569 (= e!3856844 EmptyLang!16255)))

(declare-fun b!6350570 () Bool)

(declare-fun e!3856842 () Regex!16255)

(assert (=> b!6350570 (= e!3856844 e!3856842)))

(declare-fun c!1155363 () Bool)

(assert (=> b!6350570 (= c!1155363 ((_ is ElementMatch!16255) lt!2364179))))

(declare-fun b!6350571 () Bool)

(declare-fun e!3856843 () Regex!16255)

(declare-fun call!541548 () Regex!16255)

(assert (=> b!6350571 (= e!3856843 (Union!16255 (Concat!25100 call!541548 (regTwo!33022 lt!2364179)) call!541547))))

(declare-fun b!6350572 () Bool)

(assert (=> b!6350572 (= e!3856842 (ite (= (head!13003 s!2326) (c!1154628 lt!2364179)) EmptyExpr!16255 EmptyLang!16255))))

(declare-fun b!6350573 () Bool)

(declare-fun c!1155362 () Bool)

(assert (=> b!6350573 (= c!1155362 (nullable!6248 (regOne!33022 lt!2364179)))))

(assert (=> b!6350573 (= e!3856845 e!3856843)))

(declare-fun bm!541541 () Bool)

(declare-fun c!1155364 () Bool)

(assert (=> bm!541541 (= call!541548 (derivativeStep!4960 (ite c!1155364 (regTwo!33023 lt!2364179) (regOne!33022 lt!2364179)) (head!13003 s!2326)))))

(declare-fun bm!541542 () Bool)

(declare-fun call!541545 () Regex!16255)

(assert (=> bm!541542 (= call!541546 call!541545)))

(declare-fun b!6350574 () Bool)

(assert (=> b!6350574 (= e!3856843 (Union!16255 (Concat!25100 call!541547 (regTwo!33022 lt!2364179)) EmptyLang!16255))))

(declare-fun b!6350575 () Bool)

(assert (=> b!6350575 (= c!1155364 ((_ is Union!16255) lt!2364179))))

(assert (=> b!6350575 (= e!3856842 e!3856846)))

(declare-fun b!6350576 () Bool)

(assert (=> b!6350576 (= e!3856845 (Concat!25100 call!541546 lt!2364179))))

(declare-fun b!6350577 () Bool)

(assert (=> b!6350577 (= e!3856846 (Union!16255 call!541545 call!541548))))

(declare-fun bm!541543 () Bool)

(assert (=> bm!541543 (= call!541545 (derivativeStep!4960 (ite c!1155364 (regOne!33023 lt!2364179) (ite c!1155361 (reg!16584 lt!2364179) (ite c!1155362 (regTwo!33022 lt!2364179) (regOne!33022 lt!2364179)))) (head!13003 s!2326)))))

(declare-fun d!1992819 () Bool)

(declare-fun lt!2364483 () Regex!16255)

(assert (=> d!1992819 (validRegex!7991 lt!2364483)))

(assert (=> d!1992819 (= lt!2364483 e!3856844)))

(declare-fun c!1155365 () Bool)

(assert (=> d!1992819 (= c!1155365 (or ((_ is EmptyExpr!16255) lt!2364179) ((_ is EmptyLang!16255) lt!2364179)))))

(assert (=> d!1992819 (validRegex!7991 lt!2364179)))

(assert (=> d!1992819 (= (derivativeStep!4960 lt!2364179 (head!13003 s!2326)) lt!2364483)))

(assert (= (and d!1992819 c!1155365) b!6350569))

(assert (= (and d!1992819 (not c!1155365)) b!6350570))

(assert (= (and b!6350570 c!1155363) b!6350572))

(assert (= (and b!6350570 (not c!1155363)) b!6350575))

(assert (= (and b!6350575 c!1155364) b!6350577))

(assert (= (and b!6350575 (not c!1155364)) b!6350568))

(assert (= (and b!6350568 c!1155361) b!6350576))

(assert (= (and b!6350568 (not c!1155361)) b!6350573))

(assert (= (and b!6350573 c!1155362) b!6350571))

(assert (= (and b!6350573 (not c!1155362)) b!6350574))

(assert (= (or b!6350571 b!6350574) bm!541540))

(assert (= (or b!6350576 bm!541540) bm!541542))

(assert (= (or b!6350577 b!6350571) bm!541541))

(assert (= (or b!6350577 bm!541542) bm!541543))

(declare-fun m!7157692 () Bool)

(assert (=> b!6350573 m!7157692))

(assert (=> bm!541541 m!7155854))

(declare-fun m!7157694 () Bool)

(assert (=> bm!541541 m!7157694))

(assert (=> bm!541543 m!7155854))

(declare-fun m!7157696 () Bool)

(assert (=> bm!541543 m!7157696))

(declare-fun m!7157698 () Bool)

(assert (=> d!1992819 m!7157698))

(assert (=> d!1992819 m!7156024))

(assert (=> b!6348852 d!1992819))

(assert (=> b!6348852 d!1992619))

(assert (=> b!6348852 d!1992351))

(declare-fun d!1992821 () Bool)

(assert (=> d!1992821 (= (isEmpty!37030 lt!2364159) ((_ is Nil!64940) lt!2364159))))

(assert (=> b!6348897 d!1992821))

(declare-fun b!6350578 () Bool)

(declare-fun e!3856848 () Bool)

(declare-fun e!3856851 () Bool)

(assert (=> b!6350578 (= e!3856848 e!3856851)))

(declare-fun c!1155366 () Bool)

(assert (=> b!6350578 (= c!1155366 ((_ is Star!16255) lt!2364315))))

(declare-fun b!6350579 () Bool)

(declare-fun e!3856850 () Bool)

(declare-fun e!3856853 () Bool)

(assert (=> b!6350579 (= e!3856850 e!3856853)))

(declare-fun res!2613088 () Bool)

(assert (=> b!6350579 (=> (not res!2613088) (not e!3856853))))

(declare-fun call!541550 () Bool)

(assert (=> b!6350579 (= res!2613088 call!541550)))

(declare-fun bm!541544 () Bool)

(declare-fun call!541549 () Bool)

(declare-fun c!1155367 () Bool)

(assert (=> bm!541544 (= call!541549 (validRegex!7991 (ite c!1155367 (regTwo!33023 lt!2364315) (regTwo!33022 lt!2364315))))))

(declare-fun b!6350580 () Bool)

(declare-fun e!3856852 () Bool)

(assert (=> b!6350580 (= e!3856852 call!541549)))

(declare-fun b!6350581 () Bool)

(assert (=> b!6350581 (= e!3856853 call!541549)))

(declare-fun b!6350582 () Bool)

(declare-fun e!3856847 () Bool)

(declare-fun call!541551 () Bool)

(assert (=> b!6350582 (= e!3856847 call!541551)))

(declare-fun d!1992823 () Bool)

(declare-fun res!2613090 () Bool)

(assert (=> d!1992823 (=> res!2613090 e!3856848)))

(assert (=> d!1992823 (= res!2613090 ((_ is ElementMatch!16255) lt!2364315))))

(assert (=> d!1992823 (= (validRegex!7991 lt!2364315) e!3856848)))

(declare-fun bm!541545 () Bool)

(assert (=> bm!541545 (= call!541551 (validRegex!7991 (ite c!1155366 (reg!16584 lt!2364315) (ite c!1155367 (regOne!33023 lt!2364315) (regOne!33022 lt!2364315)))))))

(declare-fun b!6350583 () Bool)

(declare-fun res!2613087 () Bool)

(assert (=> b!6350583 (=> (not res!2613087) (not e!3856852))))

(assert (=> b!6350583 (= res!2613087 call!541550)))

(declare-fun e!3856849 () Bool)

(assert (=> b!6350583 (= e!3856849 e!3856852)))

(declare-fun b!6350584 () Bool)

(assert (=> b!6350584 (= e!3856851 e!3856849)))

(assert (=> b!6350584 (= c!1155367 ((_ is Union!16255) lt!2364315))))

(declare-fun b!6350585 () Bool)

(assert (=> b!6350585 (= e!3856851 e!3856847)))

(declare-fun res!2613091 () Bool)

(assert (=> b!6350585 (= res!2613091 (not (nullable!6248 (reg!16584 lt!2364315))))))

(assert (=> b!6350585 (=> (not res!2613091) (not e!3856847))))

(declare-fun bm!541546 () Bool)

(assert (=> bm!541546 (= call!541550 call!541551)))

(declare-fun b!6350586 () Bool)

(declare-fun res!2613089 () Bool)

(assert (=> b!6350586 (=> res!2613089 e!3856850)))

(assert (=> b!6350586 (= res!2613089 (not ((_ is Concat!25100) lt!2364315)))))

(assert (=> b!6350586 (= e!3856849 e!3856850)))

(assert (= (and d!1992823 (not res!2613090)) b!6350578))

(assert (= (and b!6350578 c!1155366) b!6350585))

(assert (= (and b!6350578 (not c!1155366)) b!6350584))

(assert (= (and b!6350585 res!2613091) b!6350582))

(assert (= (and b!6350584 c!1155367) b!6350583))

(assert (= (and b!6350584 (not c!1155367)) b!6350586))

(assert (= (and b!6350583 res!2613087) b!6350580))

(assert (= (and b!6350586 (not res!2613089)) b!6350579))

(assert (= (and b!6350579 res!2613088) b!6350581))

(assert (= (or b!6350580 b!6350581) bm!541544))

(assert (= (or b!6350583 b!6350579) bm!541546))

(assert (= (or b!6350582 bm!541546) bm!541545))

(declare-fun m!7157700 () Bool)

(assert (=> bm!541544 m!7157700))

(declare-fun m!7157702 () Bool)

(assert (=> bm!541545 m!7157702))

(declare-fun m!7157704 () Bool)

(assert (=> b!6350585 m!7157704))

(assert (=> d!1992043 d!1992823))

(declare-fun d!1992825 () Bool)

(declare-fun res!2613092 () Bool)

(declare-fun e!3856854 () Bool)

(assert (=> d!1992825 (=> res!2613092 e!3856854)))

(assert (=> d!1992825 (= res!2613092 ((_ is Nil!64940) lt!2364159))))

(assert (=> d!1992825 (= (forall!15421 lt!2364159 lambda!349166) e!3856854)))

(declare-fun b!6350587 () Bool)

(declare-fun e!3856855 () Bool)

(assert (=> b!6350587 (= e!3856854 e!3856855)))

(declare-fun res!2613093 () Bool)

(assert (=> b!6350587 (=> (not res!2613093) (not e!3856855))))

(assert (=> b!6350587 (= res!2613093 (dynLambda!25748 lambda!349166 (h!71388 lt!2364159)))))

(declare-fun b!6350588 () Bool)

(assert (=> b!6350588 (= e!3856855 (forall!15421 (t!378652 lt!2364159) lambda!349166))))

(assert (= (and d!1992825 (not res!2613092)) b!6350587))

(assert (= (and b!6350587 res!2613093) b!6350588))

(declare-fun b_lambda!241571 () Bool)

(assert (=> (not b_lambda!241571) (not b!6350587)))

(declare-fun m!7157706 () Bool)

(assert (=> b!6350587 m!7157706))

(declare-fun m!7157708 () Bool)

(assert (=> b!6350588 m!7157708))

(assert (=> d!1992043 d!1992825))

(assert (=> b!6348878 d!1992347))

(assert (=> b!6348878 d!1992351))

(declare-fun d!1992827 () Bool)

(assert (=> d!1992827 (= (head!13002 (exprs!6139 (h!71390 zl!343))) (h!71388 (exprs!6139 (h!71390 zl!343))))))

(assert (=> b!6348468 d!1992827))

(declare-fun d!1992829 () Bool)

(declare-fun c!1155368 () Bool)

(assert (=> d!1992829 (= c!1155368 (isEmpty!37033 (tail!12088 s!2326)))))

(declare-fun e!3856856 () Bool)

(assert (=> d!1992829 (= (matchZipper!2267 (derivationStepZipper!2221 lt!2364158 (head!13003 s!2326)) (tail!12088 s!2326)) e!3856856)))

(declare-fun b!6350589 () Bool)

(assert (=> b!6350589 (= e!3856856 (nullableZipper!2021 (derivationStepZipper!2221 lt!2364158 (head!13003 s!2326))))))

(declare-fun b!6350590 () Bool)

(assert (=> b!6350590 (= e!3856856 (matchZipper!2267 (derivationStepZipper!2221 (derivationStepZipper!2221 lt!2364158 (head!13003 s!2326)) (head!13003 (tail!12088 s!2326))) (tail!12088 (tail!12088 s!2326))))))

(assert (= (and d!1992829 c!1155368) b!6350589))

(assert (= (and d!1992829 (not c!1155368)) b!6350590))

(assert (=> d!1992829 m!7155856))

(assert (=> d!1992829 m!7155858))

(assert (=> b!6350589 m!7156012))

(declare-fun m!7157710 () Bool)

(assert (=> b!6350589 m!7157710))

(assert (=> b!6350590 m!7155856))

(assert (=> b!6350590 m!7157498))

(assert (=> b!6350590 m!7156012))

(assert (=> b!6350590 m!7157498))

(declare-fun m!7157712 () Bool)

(assert (=> b!6350590 m!7157712))

(assert (=> b!6350590 m!7155856))

(assert (=> b!6350590 m!7157500))

(assert (=> b!6350590 m!7157712))

(assert (=> b!6350590 m!7157500))

(declare-fun m!7157714 () Bool)

(assert (=> b!6350590 m!7157714))

(assert (=> b!6348840 d!1992829))

(declare-fun bs!1590712 () Bool)

(declare-fun d!1992831 () Bool)

(assert (= bs!1590712 (and d!1992831 b!6348017)))

(declare-fun lambda!349306 () Int)

(assert (=> bs!1590712 (= (= (head!13003 s!2326) (h!71389 s!2326)) (= lambda!349306 lambda!349079))))

(declare-fun bs!1590713 () Bool)

(assert (= bs!1590713 (and d!1992831 d!1992645)))

(assert (=> bs!1590713 (= (= (head!13003 s!2326) (head!13003 (t!378653 s!2326))) (= lambda!349306 lambda!349287))))

(declare-fun bs!1590714 () Bool)

(assert (= bs!1590714 (and d!1992831 d!1992749)))

(assert (=> bs!1590714 (= (= (head!13003 s!2326) (head!13003 (t!378653 s!2326))) (= lambda!349306 lambda!349299))))

(declare-fun bs!1590715 () Bool)

(assert (= bs!1590715 (and d!1992831 d!1992759)))

(assert (=> bs!1590715 (= (= (head!13003 s!2326) (head!13003 (t!378653 s!2326))) (= lambda!349306 lambda!349300))))

(declare-fun bs!1590716 () Bool)

(assert (= bs!1590716 (and d!1992831 d!1992631)))

(assert (=> bs!1590716 (= (= (head!13003 s!2326) (head!13003 (t!378653 s!2326))) (= lambda!349306 lambda!349283))))

(declare-fun bs!1590717 () Bool)

(assert (= bs!1590717 (and d!1992831 d!1991991)))

(assert (=> bs!1590717 (= (= (head!13003 s!2326) (h!71389 s!2326)) (= lambda!349306 lambda!349150))))

(assert (=> d!1992831 true))

(assert (=> d!1992831 (= (derivationStepZipper!2221 lt!2364158 (head!13003 s!2326)) (flatMap!1760 lt!2364158 lambda!349306))))

(declare-fun bs!1590718 () Bool)

(assert (= bs!1590718 d!1992831))

(declare-fun m!7157716 () Bool)

(assert (=> bs!1590718 m!7157716))

(assert (=> b!6348840 d!1992831))

(assert (=> b!6348840 d!1992619))

(assert (=> b!6348840 d!1992351))

(declare-fun d!1992833 () Bool)

(assert (=> d!1992833 true))

(declare-fun setRes!43239 () Bool)

(assert (=> d!1992833 setRes!43239))

(declare-fun condSetEmpty!43239 () Bool)

(declare-fun res!2613094 () (InoxSet Context!11278))

(assert (=> d!1992833 (= condSetEmpty!43239 (= res!2613094 ((as const (Array Context!11278 Bool)) false)))))

(assert (=> d!1992833 (= (choose!47110 z!1189 lambda!349079) res!2613094)))

(declare-fun setIsEmpty!43239 () Bool)

(assert (=> setIsEmpty!43239 setRes!43239))

(declare-fun setNonEmpty!43239 () Bool)

(declare-fun e!3856857 () Bool)

(declare-fun tp!1769793 () Bool)

(declare-fun setElem!43239 () Context!11278)

(assert (=> setNonEmpty!43239 (= setRes!43239 (and tp!1769793 (inv!83884 setElem!43239) e!3856857))))

(declare-fun setRest!43239 () (InoxSet Context!11278))

(assert (=> setNonEmpty!43239 (= res!2613094 ((_ map or) (store ((as const (Array Context!11278 Bool)) false) setElem!43239 true) setRest!43239))))

(declare-fun b!6350591 () Bool)

(declare-fun tp!1769794 () Bool)

(assert (=> b!6350591 (= e!3856857 tp!1769794)))

(assert (= (and d!1992833 condSetEmpty!43239) setIsEmpty!43239))

(assert (= (and d!1992833 (not condSetEmpty!43239)) setNonEmpty!43239))

(assert (= setNonEmpty!43239 b!6350591))

(declare-fun m!7157718 () Bool)

(assert (=> setNonEmpty!43239 m!7157718))

(assert (=> d!1991993 d!1992833))

(declare-fun d!1992835 () Bool)

(assert (=> d!1992835 (= (isEmpty!37030 (unfocusZipperList!1676 zl!343)) ((_ is Nil!64940) (unfocusZipperList!1676 zl!343)))))

(assert (=> b!6348938 d!1992835))

(declare-fun d!1992837 () Bool)

(assert (=> d!1992837 true))

(assert (=> d!1992837 true))

(declare-fun res!2613095 () Bool)

(assert (=> d!1992837 (= (choose!47113 lambda!349080) res!2613095)))

(assert (=> d!1992021 d!1992837))

(declare-fun d!1992839 () Bool)

(assert (=> d!1992839 true))

(assert (=> d!1992839 true))

(declare-fun res!2613096 () Bool)

(assert (=> d!1992839 (= (choose!47113 lambda!349078) res!2613096)))

(assert (=> d!1992013 d!1992839))

(declare-fun b!6350592 () Bool)

(declare-fun e!3856858 () Bool)

(declare-fun lt!2364484 () Bool)

(declare-fun call!541552 () Bool)

(assert (=> b!6350592 (= e!3856858 (= lt!2364484 call!541552))))

(declare-fun b!6350593 () Bool)

(declare-fun e!3856863 () Bool)

(assert (=> b!6350593 (= e!3856863 (= (head!13003 (_2!36537 (get!22467 lt!2364310))) (c!1154628 lt!2364185)))))

(declare-fun b!6350594 () Bool)

(declare-fun e!3856862 () Bool)

(assert (=> b!6350594 (= e!3856862 (matchR!8438 (derivativeStep!4960 lt!2364185 (head!13003 (_2!36537 (get!22467 lt!2364310)))) (tail!12088 (_2!36537 (get!22467 lt!2364310)))))))

(declare-fun b!6350595 () Bool)

(declare-fun res!2613101 () Bool)

(declare-fun e!3856861 () Bool)

(assert (=> b!6350595 (=> res!2613101 e!3856861)))

(assert (=> b!6350595 (= res!2613101 (not (isEmpty!37033 (tail!12088 (_2!36537 (get!22467 lt!2364310))))))))

(declare-fun b!6350596 () Bool)

(declare-fun e!3856860 () Bool)

(assert (=> b!6350596 (= e!3856860 e!3856861)))

(declare-fun res!2613098 () Bool)

(assert (=> b!6350596 (=> res!2613098 e!3856861)))

(assert (=> b!6350596 (= res!2613098 call!541552)))

(declare-fun b!6350597 () Bool)

(declare-fun e!3856864 () Bool)

(assert (=> b!6350597 (= e!3856864 (not lt!2364484))))

(declare-fun b!6350598 () Bool)

(assert (=> b!6350598 (= e!3856862 (nullable!6248 lt!2364185))))

(declare-fun d!1992841 () Bool)

(assert (=> d!1992841 e!3856858))

(declare-fun c!1155371 () Bool)

(assert (=> d!1992841 (= c!1155371 ((_ is EmptyExpr!16255) lt!2364185))))

(assert (=> d!1992841 (= lt!2364484 e!3856862)))

(declare-fun c!1155369 () Bool)

(assert (=> d!1992841 (= c!1155369 (isEmpty!37033 (_2!36537 (get!22467 lt!2364310))))))

(assert (=> d!1992841 (validRegex!7991 lt!2364185)))

(assert (=> d!1992841 (= (matchR!8438 lt!2364185 (_2!36537 (get!22467 lt!2364310))) lt!2364484)))

(declare-fun b!6350599 () Bool)

(declare-fun res!2613100 () Bool)

(declare-fun e!3856859 () Bool)

(assert (=> b!6350599 (=> res!2613100 e!3856859)))

(assert (=> b!6350599 (= res!2613100 (not ((_ is ElementMatch!16255) lt!2364185)))))

(assert (=> b!6350599 (= e!3856864 e!3856859)))

(declare-fun b!6350600 () Bool)

(declare-fun res!2613104 () Bool)

(assert (=> b!6350600 (=> (not res!2613104) (not e!3856863))))

(assert (=> b!6350600 (= res!2613104 (isEmpty!37033 (tail!12088 (_2!36537 (get!22467 lt!2364310)))))))

(declare-fun b!6350601 () Bool)

(assert (=> b!6350601 (= e!3856858 e!3856864)))

(declare-fun c!1155370 () Bool)

(assert (=> b!6350601 (= c!1155370 ((_ is EmptyLang!16255) lt!2364185))))

(declare-fun b!6350602 () Bool)

(assert (=> b!6350602 (= e!3856859 e!3856860)))

(declare-fun res!2613102 () Bool)

(assert (=> b!6350602 (=> (not res!2613102) (not e!3856860))))

(assert (=> b!6350602 (= res!2613102 (not lt!2364484))))

(declare-fun b!6350603 () Bool)

(assert (=> b!6350603 (= e!3856861 (not (= (head!13003 (_2!36537 (get!22467 lt!2364310))) (c!1154628 lt!2364185))))))

(declare-fun bm!541547 () Bool)

(assert (=> bm!541547 (= call!541552 (isEmpty!37033 (_2!36537 (get!22467 lt!2364310))))))

(declare-fun b!6350604 () Bool)

(declare-fun res!2613099 () Bool)

(assert (=> b!6350604 (=> (not res!2613099) (not e!3856863))))

(assert (=> b!6350604 (= res!2613099 (not call!541552))))

(declare-fun b!6350605 () Bool)

(declare-fun res!2613097 () Bool)

(assert (=> b!6350605 (=> res!2613097 e!3856859)))

(assert (=> b!6350605 (= res!2613097 e!3856863)))

(declare-fun res!2613103 () Bool)

(assert (=> b!6350605 (=> (not res!2613103) (not e!3856863))))

(assert (=> b!6350605 (= res!2613103 lt!2364484)))

(assert (= (and d!1992841 c!1155369) b!6350598))

(assert (= (and d!1992841 (not c!1155369)) b!6350594))

(assert (= (and d!1992841 c!1155371) b!6350592))

(assert (= (and d!1992841 (not c!1155371)) b!6350601))

(assert (= (and b!6350601 c!1155370) b!6350597))

(assert (= (and b!6350601 (not c!1155370)) b!6350599))

(assert (= (and b!6350599 (not res!2613100)) b!6350605))

(assert (= (and b!6350605 res!2613103) b!6350604))

(assert (= (and b!6350604 res!2613099) b!6350600))

(assert (= (and b!6350600 res!2613104) b!6350593))

(assert (= (and b!6350605 (not res!2613097)) b!6350602))

(assert (= (and b!6350602 res!2613102) b!6350596))

(assert (= (and b!6350596 (not res!2613098)) b!6350595))

(assert (= (and b!6350595 (not res!2613101)) b!6350603))

(assert (= (or b!6350592 b!6350596 b!6350604) bm!541547))

(assert (=> b!6350598 m!7156036))

(declare-fun m!7157720 () Bool)

(assert (=> d!1992841 m!7157720))

(assert (=> d!1992841 m!7156038))

(declare-fun m!7157722 () Bool)

(assert (=> b!6350593 m!7157722))

(declare-fun m!7157724 () Bool)

(assert (=> b!6350600 m!7157724))

(assert (=> b!6350600 m!7157724))

(declare-fun m!7157726 () Bool)

(assert (=> b!6350600 m!7157726))

(assert (=> bm!541547 m!7157720))

(assert (=> b!6350594 m!7157722))

(assert (=> b!6350594 m!7157722))

(declare-fun m!7157728 () Bool)

(assert (=> b!6350594 m!7157728))

(assert (=> b!6350594 m!7157724))

(assert (=> b!6350594 m!7157728))

(assert (=> b!6350594 m!7157724))

(declare-fun m!7157730 () Bool)

(assert (=> b!6350594 m!7157730))

(assert (=> b!6350595 m!7157724))

(assert (=> b!6350595 m!7157724))

(assert (=> b!6350595 m!7157726))

(assert (=> b!6350603 m!7157722))

(assert (=> b!6348833 d!1992841))

(assert (=> b!6348833 d!1992673))

(declare-fun d!1992843 () Bool)

(assert (=> d!1992843 (= (isConcat!1180 lt!2364315) ((_ is Concat!25100) lt!2364315))))

(assert (=> b!6348892 d!1992843))

(declare-fun b!6350606 () Bool)

(declare-fun e!3856865 () Bool)

(declare-fun lt!2364485 () Bool)

(declare-fun call!541553 () Bool)

(assert (=> b!6350606 (= e!3856865 (= lt!2364485 call!541553))))

(declare-fun b!6350607 () Bool)

(declare-fun e!3856870 () Bool)

(assert (=> b!6350607 (= e!3856870 (= (head!13003 (_1!36537 (get!22467 lt!2364299))) (c!1154628 (regOne!33022 r!7292))))))

(declare-fun b!6350608 () Bool)

(declare-fun e!3856869 () Bool)

(assert (=> b!6350608 (= e!3856869 (matchR!8438 (derivativeStep!4960 (regOne!33022 r!7292) (head!13003 (_1!36537 (get!22467 lt!2364299)))) (tail!12088 (_1!36537 (get!22467 lt!2364299)))))))

(declare-fun b!6350609 () Bool)

(declare-fun res!2613109 () Bool)

(declare-fun e!3856868 () Bool)

(assert (=> b!6350609 (=> res!2613109 e!3856868)))

(assert (=> b!6350609 (= res!2613109 (not (isEmpty!37033 (tail!12088 (_1!36537 (get!22467 lt!2364299))))))))

(declare-fun b!6350610 () Bool)

(declare-fun e!3856867 () Bool)

(assert (=> b!6350610 (= e!3856867 e!3856868)))

(declare-fun res!2613106 () Bool)

(assert (=> b!6350610 (=> res!2613106 e!3856868)))

(assert (=> b!6350610 (= res!2613106 call!541553)))

(declare-fun b!6350611 () Bool)

(declare-fun e!3856871 () Bool)

(assert (=> b!6350611 (= e!3856871 (not lt!2364485))))

(declare-fun b!6350612 () Bool)

(assert (=> b!6350612 (= e!3856869 (nullable!6248 (regOne!33022 r!7292)))))

(declare-fun d!1992845 () Bool)

(assert (=> d!1992845 e!3856865))

(declare-fun c!1155374 () Bool)

(assert (=> d!1992845 (= c!1155374 ((_ is EmptyExpr!16255) (regOne!33022 r!7292)))))

(assert (=> d!1992845 (= lt!2364485 e!3856869)))

(declare-fun c!1155372 () Bool)

(assert (=> d!1992845 (= c!1155372 (isEmpty!37033 (_1!36537 (get!22467 lt!2364299))))))

(assert (=> d!1992845 (validRegex!7991 (regOne!33022 r!7292))))

(assert (=> d!1992845 (= (matchR!8438 (regOne!33022 r!7292) (_1!36537 (get!22467 lt!2364299))) lt!2364485)))

(declare-fun b!6350613 () Bool)

(declare-fun res!2613108 () Bool)

(declare-fun e!3856866 () Bool)

(assert (=> b!6350613 (=> res!2613108 e!3856866)))

(assert (=> b!6350613 (= res!2613108 (not ((_ is ElementMatch!16255) (regOne!33022 r!7292))))))

(assert (=> b!6350613 (= e!3856871 e!3856866)))

(declare-fun b!6350614 () Bool)

(declare-fun res!2613112 () Bool)

(assert (=> b!6350614 (=> (not res!2613112) (not e!3856870))))

(assert (=> b!6350614 (= res!2613112 (isEmpty!37033 (tail!12088 (_1!36537 (get!22467 lt!2364299)))))))

(declare-fun b!6350615 () Bool)

(assert (=> b!6350615 (= e!3856865 e!3856871)))

(declare-fun c!1155373 () Bool)

(assert (=> b!6350615 (= c!1155373 ((_ is EmptyLang!16255) (regOne!33022 r!7292)))))

(declare-fun b!6350616 () Bool)

(assert (=> b!6350616 (= e!3856866 e!3856867)))

(declare-fun res!2613110 () Bool)

(assert (=> b!6350616 (=> (not res!2613110) (not e!3856867))))

(assert (=> b!6350616 (= res!2613110 (not lt!2364485))))

(declare-fun b!6350617 () Bool)

(assert (=> b!6350617 (= e!3856868 (not (= (head!13003 (_1!36537 (get!22467 lt!2364299))) (c!1154628 (regOne!33022 r!7292)))))))

(declare-fun bm!541548 () Bool)

(assert (=> bm!541548 (= call!541553 (isEmpty!37033 (_1!36537 (get!22467 lt!2364299))))))

(declare-fun b!6350618 () Bool)

(declare-fun res!2613107 () Bool)

(assert (=> b!6350618 (=> (not res!2613107) (not e!3856870))))

(assert (=> b!6350618 (= res!2613107 (not call!541553))))

(declare-fun b!6350619 () Bool)

(declare-fun res!2613105 () Bool)

(assert (=> b!6350619 (=> res!2613105 e!3856866)))

(assert (=> b!6350619 (= res!2613105 e!3856870)))

(declare-fun res!2613111 () Bool)

(assert (=> b!6350619 (=> (not res!2613111) (not e!3856870))))

(assert (=> b!6350619 (= res!2613111 lt!2364485)))

(assert (= (and d!1992845 c!1155372) b!6350612))

(assert (= (and d!1992845 (not c!1155372)) b!6350608))

(assert (= (and d!1992845 c!1155374) b!6350606))

(assert (= (and d!1992845 (not c!1155374)) b!6350615))

(assert (= (and b!6350615 c!1155373) b!6350611))

(assert (= (and b!6350615 (not c!1155373)) b!6350613))

(assert (= (and b!6350613 (not res!2613108)) b!6350619))

(assert (= (and b!6350619 res!2613111) b!6350618))

(assert (= (and b!6350618 res!2613107) b!6350614))

(assert (= (and b!6350614 res!2613112) b!6350607))

(assert (= (and b!6350619 (not res!2613105)) b!6350616))

(assert (= (and b!6350616 res!2613110) b!6350610))

(assert (= (and b!6350610 (not res!2613106)) b!6350609))

(assert (= (and b!6350609 (not res!2613109)) b!6350617))

(assert (= (or b!6350606 b!6350610 b!6350618) bm!541548))

(assert (=> b!6350612 m!7157468))

(declare-fun m!7157732 () Bool)

(assert (=> d!1992845 m!7157732))

(assert (=> d!1992845 m!7155934))

(declare-fun m!7157734 () Bool)

(assert (=> b!6350607 m!7157734))

(declare-fun m!7157736 () Bool)

(assert (=> b!6350614 m!7157736))

(assert (=> b!6350614 m!7157736))

(declare-fun m!7157738 () Bool)

(assert (=> b!6350614 m!7157738))

(assert (=> bm!541548 m!7157732))

(assert (=> b!6350608 m!7157734))

(assert (=> b!6350608 m!7157734))

(declare-fun m!7157740 () Bool)

(assert (=> b!6350608 m!7157740))

(assert (=> b!6350608 m!7157736))

(assert (=> b!6350608 m!7157740))

(assert (=> b!6350608 m!7157736))

(declare-fun m!7157742 () Bool)

(assert (=> b!6350608 m!7157742))

(assert (=> b!6350609 m!7157736))

(assert (=> b!6350609 m!7157736))

(assert (=> b!6350609 m!7157738))

(assert (=> b!6350617 m!7157734))

(assert (=> b!6348790 d!1992845))

(assert (=> b!6348790 d!1992471))

(declare-fun b!6350620 () Bool)

(declare-fun e!3856874 () (InoxSet Context!11278))

(declare-fun e!3856872 () (InoxSet Context!11278))

(assert (=> b!6350620 (= e!3856874 e!3856872)))

(declare-fun c!1155378 () Bool)

(assert (=> b!6350620 (= c!1155378 ((_ is Concat!25100) (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6350621 () Bool)

(declare-fun e!3856876 () (InoxSet Context!11278))

(declare-fun e!3856873 () (InoxSet Context!11278))

(assert (=> b!6350621 (= e!3856876 e!3856873)))

(declare-fun c!1155379 () Bool)

(assert (=> b!6350621 (= c!1155379 ((_ is Union!16255) (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun b!6350622 () Bool)

(declare-fun c!1155376 () Bool)

(assert (=> b!6350622 (= c!1155376 ((_ is Star!16255) (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(declare-fun e!3856877 () (InoxSet Context!11278))

(assert (=> b!6350622 (= e!3856872 e!3856877)))

(declare-fun b!6350623 () Bool)

(declare-fun call!541556 () (InoxSet Context!11278))

(declare-fun call!541555 () (InoxSet Context!11278))

(assert (=> b!6350623 (= e!3856874 ((_ map or) call!541556 call!541555))))

(declare-fun d!1992847 () Bool)

(declare-fun c!1155377 () Bool)

(assert (=> d!1992847 (= c!1155377 (and ((_ is ElementMatch!16255) (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (= (c!1154628 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (h!71389 s!2326))))))

(assert (=> d!1992847 (= (derivationStepZipperDown!1503 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))) (ite c!1154929 (Context!11279 lt!2364157) (Context!11279 call!541245)) (h!71389 s!2326)) e!3856876)))

(declare-fun bm!541549 () Bool)

(declare-fun call!541554 () List!65064)

(assert (=> bm!541549 (= call!541556 (derivationStepZipperDown!1503 (ite c!1155379 (regOne!33023 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (regOne!33022 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))) (ite c!1155379 (ite c!1154929 (Context!11279 lt!2364157) (Context!11279 call!541245)) (Context!11279 call!541554)) (h!71389 s!2326)))))

(declare-fun b!6350624 () Bool)

(declare-fun e!3856875 () Bool)

(assert (=> b!6350624 (= e!3856875 (nullable!6248 (regOne!33022 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))))))

(declare-fun b!6350625 () Bool)

(declare-fun call!541558 () (InoxSet Context!11278))

(assert (=> b!6350625 (= e!3856872 call!541558)))

(declare-fun b!6350626 () Bool)

(assert (=> b!6350626 (= e!3856877 call!541558)))

(declare-fun b!6350627 () Bool)

(assert (=> b!6350627 (= e!3856876 (store ((as const (Array Context!11278 Bool)) false) (ite c!1154929 (Context!11279 lt!2364157) (Context!11279 call!541245)) true))))

(declare-fun bm!541550 () Bool)

(declare-fun call!541559 () (InoxSet Context!11278))

(assert (=> bm!541550 (= call!541555 call!541559)))

(declare-fun call!541557 () List!65064)

(declare-fun bm!541551 () Bool)

(declare-fun c!1155375 () Bool)

(assert (=> bm!541551 (= call!541559 (derivationStepZipperDown!1503 (ite c!1155379 (regTwo!33023 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (ite c!1155375 (regTwo!33022 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (ite c!1155378 (regOne!33022 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (reg!16584 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))))) (ite (or c!1155379 c!1155375) (ite c!1154929 (Context!11279 lt!2364157) (Context!11279 call!541245)) (Context!11279 call!541557)) (h!71389 s!2326)))))

(declare-fun b!6350628 () Bool)

(assert (=> b!6350628 (= e!3856873 ((_ map or) call!541556 call!541559))))

(declare-fun bm!541552 () Bool)

(assert (=> bm!541552 (= call!541554 ($colon$colon!2116 (exprs!6139 (ite c!1154929 (Context!11279 lt!2364157) (Context!11279 call!541245))) (ite (or c!1155375 c!1155378) (regTwo!33022 (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))) (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292)))))))))

(declare-fun bm!541553 () Bool)

(assert (=> bm!541553 (= call!541557 call!541554)))

(declare-fun b!6350629 () Bool)

(assert (=> b!6350629 (= c!1155375 e!3856875)))

(declare-fun res!2613113 () Bool)

(assert (=> b!6350629 (=> (not res!2613113) (not e!3856875))))

(assert (=> b!6350629 (= res!2613113 ((_ is Concat!25100) (ite c!1154929 (regOne!33023 (regOne!33022 (regOne!33022 r!7292))) (regOne!33022 (regOne!33022 (regOne!33022 r!7292))))))))

(assert (=> b!6350629 (= e!3856873 e!3856874)))

(declare-fun bm!541554 () Bool)

(assert (=> bm!541554 (= call!541558 call!541555)))

(declare-fun b!6350630 () Bool)

(assert (=> b!6350630 (= e!3856877 ((as const (Array Context!11278 Bool)) false))))

(assert (= (and d!1992847 c!1155377) b!6350627))

(assert (= (and d!1992847 (not c!1155377)) b!6350621))

(assert (= (and b!6350621 c!1155379) b!6350628))

(assert (= (and b!6350621 (not c!1155379)) b!6350629))

(assert (= (and b!6350629 res!2613113) b!6350624))

(assert (= (and b!6350629 c!1155375) b!6350623))

(assert (= (and b!6350629 (not c!1155375)) b!6350620))

(assert (= (and b!6350620 c!1155378) b!6350625))

(assert (= (and b!6350620 (not c!1155378)) b!6350622))

(assert (= (and b!6350622 c!1155376) b!6350626))

(assert (= (and b!6350622 (not c!1155376)) b!6350630))

(assert (= (or b!6350625 b!6350626) bm!541553))

(assert (= (or b!6350625 b!6350626) bm!541554))

(assert (= (or b!6350623 bm!541553) bm!541552))

(assert (= (or b!6350623 bm!541554) bm!541550))

(assert (= (or b!6350628 bm!541550) bm!541551))

(assert (= (or b!6350628 b!6350623) bm!541549))

(declare-fun m!7157744 () Bool)

(assert (=> bm!541552 m!7157744))

(declare-fun m!7157746 () Bool)

(assert (=> b!6350624 m!7157746))

(declare-fun m!7157748 () Bool)

(assert (=> bm!541549 m!7157748))

(declare-fun m!7157750 () Bool)

(assert (=> bm!541551 m!7157750))

(declare-fun m!7157752 () Bool)

(assert (=> b!6350627 m!7157752))

(assert (=> bm!541240 d!1992847))

(declare-fun d!1992849 () Bool)

(assert (=> d!1992849 (= (nullable!6248 (reg!16584 r!7292)) (nullableFct!2195 (reg!16584 r!7292)))))

(declare-fun bs!1590719 () Bool)

(assert (= bs!1590719 d!1992849))

(declare-fun m!7157754 () Bool)

(assert (=> bs!1590719 m!7157754))

(assert (=> b!6348357 d!1992849))

(declare-fun d!1992851 () Bool)

(assert (=> d!1992851 (= (isEmpty!37030 lt!2364157) ((_ is Nil!64940) lt!2364157))))

(assert (=> b!6348907 d!1992851))

(assert (=> d!1992033 d!1992417))

(assert (=> b!6348733 d!1992005))

(declare-fun d!1992853 () Bool)

(assert (=> d!1992853 (= (nullable!6248 (h!71388 (exprs!6139 lt!2364161))) (nullableFct!2195 (h!71388 (exprs!6139 lt!2364161))))))

(declare-fun bs!1590720 () Bool)

(assert (= bs!1590720 d!1992853))

(declare-fun m!7157756 () Bool)

(assert (=> bs!1590720 m!7157756))

(assert (=> b!6348728 d!1992853))

(declare-fun bs!1590721 () Bool)

(declare-fun d!1992855 () Bool)

(assert (= bs!1590721 (and d!1992855 b!6348958)))

(declare-fun lambda!349307 () Int)

(assert (=> bs!1590721 (not (= lambda!349307 lambda!349187))))

(declare-fun bs!1590722 () Bool)

(assert (= bs!1590722 (and d!1992855 d!1992667)))

(assert (=> bs!1590722 (not (= lambda!349307 lambda!349292))))

(declare-fun bs!1590723 () Bool)

(assert (= bs!1590723 (and d!1992855 d!1992383)))

(assert (=> bs!1590723 (= (and (= lt!2364340 lt!2364344) (= lambda!349182 lambda!349185)) (= lambda!349307 lambda!349245))))

(declare-fun bs!1590724 () Bool)

(assert (= bs!1590724 (and d!1992855 b!6348953)))

(assert (=> bs!1590724 (not (= lambda!349307 lambda!349184))))

(declare-fun bs!1590725 () Bool)

(assert (= bs!1590725 (and d!1992855 d!1992433)))

(assert (=> bs!1590725 (not (= lambda!349307 lambda!349257))))

(declare-fun bs!1590726 () Bool)

(assert (= bs!1590726 (and d!1992855 d!1992375)))

(assert (=> bs!1590726 (not (= lambda!349307 lambda!349224))))

(declare-fun bs!1590727 () Bool)

(assert (= bs!1590727 (and d!1992855 d!1992775)))

(assert (=> bs!1590727 (not (= lambda!349307 lambda!349301))))

(declare-fun bs!1590728 () Bool)

(assert (= bs!1590728 (and d!1992855 b!6348951)))

(assert (=> bs!1590728 (not (= lambda!349307 lambda!349183))))

(declare-fun bs!1590729 () Bool)

(assert (= bs!1590729 (and d!1992855 d!1992663)))

(assert (=> bs!1590729 (not (= lambda!349307 lambda!349291))))

(declare-fun bs!1590730 () Bool)

(assert (= bs!1590730 (and d!1992855 b!6348956)))

(assert (=> bs!1590730 (not (= lambda!349307 lambda!349186))))

(declare-fun bs!1590731 () Bool)

(assert (= bs!1590731 (and d!1992855 d!1992741)))

(assert (=> bs!1590731 (not (= lambda!349307 lambda!349298))))

(declare-fun bs!1590732 () Bool)

(assert (= bs!1590732 (and d!1992855 b!6349642)))

(assert (=> bs!1590732 (not (= lambda!349307 lambda!349247))))

(declare-fun bs!1590733 () Bool)

(assert (= bs!1590733 (and d!1992855 b!6349644)))

(assert (=> bs!1590733 (not (= lambda!349307 lambda!349249))))

(assert (=> d!1992855 true))

(assert (=> d!1992855 true))

(assert (=> d!1992855 (< (dynLambda!25749 order!27521 lambda!349182) (dynLambda!25750 order!27523 lambda!349307))))

(assert (=> d!1992855 (forall!15423 (t!378654 lt!2364170) lambda!349307)))

(declare-fun lt!2364486 () Unit!158351)

(assert (=> d!1992855 (= lt!2364486 (choose!47119 (t!378654 lt!2364170) lt!2364340 (zipperDepth!362 (t!378654 lt!2364170)) lambda!349182))))

(assert (=> d!1992855 (>= lt!2364340 (zipperDepth!362 (t!378654 lt!2364170)))))

(assert (=> d!1992855 (= (lemmaForallContextDepthBiggerThanTransitive!235 (t!378654 lt!2364170) lt!2364340 (zipperDepth!362 (t!378654 lt!2364170)) lambda!349182) lt!2364486)))

(declare-fun bs!1590734 () Bool)

(assert (= bs!1590734 d!1992855))

(declare-fun m!7157758 () Bool)

(assert (=> bs!1590734 m!7157758))

(assert (=> bs!1590734 m!7156122))

(declare-fun m!7157760 () Bool)

(assert (=> bs!1590734 m!7157760))

(assert (=> b!6348951 d!1992855))

(declare-fun bs!1590735 () Bool)

(declare-fun b!6350631 () Bool)

(assert (= bs!1590735 (and b!6350631 d!1992677)))

(declare-fun lambda!349308 () Int)

(assert (=> bs!1590735 (not (= lambda!349308 lambda!349293))))

(declare-fun bs!1590736 () Bool)

(assert (= bs!1590736 (and b!6350631 d!1992043)))

(assert (=> bs!1590736 (not (= lambda!349308 lambda!349166))))

(declare-fun bs!1590737 () Bool)

(assert (= bs!1590737 (and b!6350631 d!1992027)))

(assert (=> bs!1590737 (not (= lambda!349308 lambda!349163))))

(declare-fun bs!1590738 () Bool)

(assert (= bs!1590738 (and b!6350631 d!1991903)))

(assert (=> bs!1590738 (not (= lambda!349308 lambda!349111))))

(declare-fun bs!1590739 () Bool)

(assert (= bs!1590739 (and b!6350631 d!1992639)))

(assert (=> bs!1590739 (not (= lambda!349308 lambda!349286))))

(declare-fun bs!1590740 () Bool)

(assert (= bs!1590740 (and b!6350631 d!1992339)))

(assert (=> bs!1590740 (not (= lambda!349308 lambda!349220))))

(declare-fun bs!1590741 () Bool)

(assert (= bs!1590741 (and b!6350631 d!1992711)))

(assert (=> bs!1590741 (not (= lambda!349308 lambda!349295))))

(declare-fun bs!1590742 () Bool)

(assert (= bs!1590742 (and b!6350631 d!1992049)))

(assert (=> bs!1590742 (not (= lambda!349308 lambda!349169))))

(declare-fun bs!1590743 () Bool)

(assert (= bs!1590743 (and b!6350631 b!6349632)))

(declare-fun lt!2364490 () Int)

(assert (=> bs!1590743 (= (= lt!2364490 lt!2364407) (= lambda!349308 lambda!349239))))

(declare-fun bs!1590744 () Bool)

(assert (= bs!1590744 (and b!6350631 d!1991913)))

(assert (=> bs!1590744 (not (= lambda!349308 lambda!349122))))

(declare-fun bs!1590745 () Bool)

(assert (= bs!1590745 (and b!6350631 d!1992057)))

(assert (=> bs!1590745 (not (= lambda!349308 lambda!349172))))

(declare-fun bs!1590746 () Bool)

(assert (= bs!1590746 (and b!6350631 b!6349630)))

(assert (=> bs!1590746 (= (= lt!2364490 lt!2364409) (= lambda!349308 lambda!349237))))

(declare-fun bs!1590747 () Bool)

(assert (= bs!1590747 (and b!6350631 d!1991959)))

(assert (=> bs!1590747 (not (= lambda!349308 lambda!349128))))

(declare-fun bs!1590748 () Bool)

(assert (= bs!1590748 (and b!6350631 d!1992059)))

(assert (=> bs!1590748 (not (= lambda!349308 lambda!349175))))

(declare-fun bs!1590749 () Bool)

(assert (= bs!1590749 (and b!6350631 d!1992649)))

(assert (=> bs!1590749 (not (= lambda!349308 lambda!349288))))

(declare-fun bs!1590750 () Bool)

(assert (= bs!1590750 (and b!6350631 d!1992699)))

(assert (=> bs!1590750 (not (= lambda!349308 lambda!349294))))

(declare-fun bs!1590751 () Bool)

(assert (= bs!1590751 (and b!6350631 d!1992777)))

(assert (=> bs!1590751 (not (= lambda!349308 lambda!349302))))

(assert (=> b!6350631 true))

(declare-fun bs!1590752 () Bool)

(declare-fun b!6350633 () Bool)

(assert (= bs!1590752 (and b!6350633 d!1992677)))

(declare-fun lambda!349309 () Int)

(assert (=> bs!1590752 (not (= lambda!349309 lambda!349293))))

(declare-fun bs!1590753 () Bool)

(assert (= bs!1590753 (and b!6350633 d!1992043)))

(assert (=> bs!1590753 (not (= lambda!349309 lambda!349166))))

(declare-fun bs!1590754 () Bool)

(assert (= bs!1590754 (and b!6350633 d!1992027)))

(assert (=> bs!1590754 (not (= lambda!349309 lambda!349163))))

(declare-fun bs!1590755 () Bool)

(assert (= bs!1590755 (and b!6350633 d!1991903)))

(assert (=> bs!1590755 (not (= lambda!349309 lambda!349111))))

(declare-fun bs!1590756 () Bool)

(assert (= bs!1590756 (and b!6350633 d!1992639)))

(assert (=> bs!1590756 (not (= lambda!349309 lambda!349286))))

(declare-fun bs!1590757 () Bool)

(assert (= bs!1590757 (and b!6350633 d!1992339)))

(assert (=> bs!1590757 (not (= lambda!349309 lambda!349220))))

(declare-fun bs!1590758 () Bool)

(assert (= bs!1590758 (and b!6350633 d!1992711)))

(assert (=> bs!1590758 (not (= lambda!349309 lambda!349295))))

(declare-fun bs!1590759 () Bool)

(assert (= bs!1590759 (and b!6350633 d!1992049)))

(assert (=> bs!1590759 (not (= lambda!349309 lambda!349169))))

(declare-fun bs!1590760 () Bool)

(assert (= bs!1590760 (and b!6350633 b!6349632)))

(declare-fun lt!2364488 () Int)

(assert (=> bs!1590760 (= (= lt!2364488 lt!2364407) (= lambda!349309 lambda!349239))))

(declare-fun bs!1590761 () Bool)

(assert (= bs!1590761 (and b!6350633 d!1991913)))

(assert (=> bs!1590761 (not (= lambda!349309 lambda!349122))))

(declare-fun bs!1590762 () Bool)

(assert (= bs!1590762 (and b!6350633 d!1992057)))

(assert (=> bs!1590762 (not (= lambda!349309 lambda!349172))))

(declare-fun bs!1590763 () Bool)

(assert (= bs!1590763 (and b!6350633 b!6349630)))

(assert (=> bs!1590763 (= (= lt!2364488 lt!2364409) (= lambda!349309 lambda!349237))))

(declare-fun bs!1590764 () Bool)

(assert (= bs!1590764 (and b!6350633 d!1991959)))

(assert (=> bs!1590764 (not (= lambda!349309 lambda!349128))))

(declare-fun bs!1590765 () Bool)

(assert (= bs!1590765 (and b!6350633 d!1992059)))

(assert (=> bs!1590765 (not (= lambda!349309 lambda!349175))))

(declare-fun bs!1590766 () Bool)

(assert (= bs!1590766 (and b!6350633 d!1992699)))

(assert (=> bs!1590766 (not (= lambda!349309 lambda!349294))))

(declare-fun bs!1590767 () Bool)

(assert (= bs!1590767 (and b!6350633 d!1992777)))

(assert (=> bs!1590767 (not (= lambda!349309 lambda!349302))))

(declare-fun bs!1590768 () Bool)

(assert (= bs!1590768 (and b!6350633 b!6350631)))

(assert (=> bs!1590768 (= (= lt!2364488 lt!2364490) (= lambda!349309 lambda!349308))))

(declare-fun bs!1590769 () Bool)

(assert (= bs!1590769 (and b!6350633 d!1992649)))

(assert (=> bs!1590769 (not (= lambda!349309 lambda!349288))))

(assert (=> b!6350633 true))

(declare-fun d!1992857 () Bool)

(declare-fun e!3856879 () Bool)

(assert (=> d!1992857 e!3856879))

(declare-fun res!2613114 () Bool)

(assert (=> d!1992857 (=> (not res!2613114) (not e!3856879))))

(assert (=> d!1992857 (= res!2613114 (>= lt!2364488 0))))

(declare-fun e!3856878 () Int)

(assert (=> d!1992857 (= lt!2364488 e!3856878)))

(declare-fun c!1155380 () Bool)

(assert (=> d!1992857 (= c!1155380 ((_ is Cons!64940) (exprs!6139 (h!71390 lt!2364170))))))

(assert (=> d!1992857 (= (contextDepth!251 (h!71390 lt!2364170)) lt!2364488)))

(assert (=> b!6350631 (= e!3856878 lt!2364490)))

(assert (=> b!6350631 (= lt!2364490 (maxBigInt!0 (regexDepth!325 (h!71388 (exprs!6139 (h!71390 lt!2364170)))) (contextDepth!251 (Context!11279 (t!378652 (exprs!6139 (h!71390 lt!2364170)))))))))

(declare-fun lt!2364487 () Unit!158351)

(assert (=> b!6350631 (= lt!2364487 (lemmaForallRegexDepthBiggerThanTransitive!115 (t!378652 (exprs!6139 (h!71390 lt!2364170))) lt!2364490 (contextDepth!251 (Context!11279 (t!378652 (exprs!6139 (h!71390 lt!2364170)))))))))

(assert (=> b!6350631 (forall!15421 (t!378652 (exprs!6139 (h!71390 lt!2364170))) lambda!349308)))

(declare-fun lt!2364489 () Unit!158351)

(assert (=> b!6350631 (= lt!2364489 lt!2364487)))

(declare-fun b!6350632 () Bool)

(assert (=> b!6350632 (= e!3856878 0)))

(assert (=> b!6350633 (= e!3856879 (forall!15421 (exprs!6139 (h!71390 lt!2364170)) lambda!349309))))

(assert (= (and d!1992857 c!1155380) b!6350631))

(assert (= (and d!1992857 (not c!1155380)) b!6350632))

(assert (= (and d!1992857 res!2613114) b!6350633))

(declare-fun m!7157762 () Bool)

(assert (=> b!6350631 m!7157762))

(declare-fun m!7157764 () Bool)

(assert (=> b!6350631 m!7157764))

(declare-fun m!7157766 () Bool)

(assert (=> b!6350631 m!7157766))

(assert (=> b!6350631 m!7157764))

(declare-fun m!7157768 () Bool)

(assert (=> b!6350631 m!7157768))

(assert (=> b!6350631 m!7157762))

(assert (=> b!6350631 m!7157764))

(declare-fun m!7157770 () Bool)

(assert (=> b!6350631 m!7157770))

(declare-fun m!7157772 () Bool)

(assert (=> b!6350633 m!7157772))

(assert (=> b!6348951 d!1992857))

(declare-fun d!1992859 () Bool)

(assert (=> d!1992859 (= (maxBigInt!0 (contextDepth!251 (h!71390 lt!2364170)) (zipperDepth!362 (t!378654 lt!2364170))) (ite (>= (contextDepth!251 (h!71390 lt!2364170)) (zipperDepth!362 (t!378654 lt!2364170))) (contextDepth!251 (h!71390 lt!2364170)) (zipperDepth!362 (t!378654 lt!2364170))))))

(assert (=> b!6348951 d!1992859))

(declare-fun bs!1590770 () Bool)

(declare-fun b!6350634 () Bool)

(assert (= bs!1590770 (and b!6350634 b!6348951)))

(declare-fun lambda!349310 () Int)

(assert (=> bs!1590770 (= lambda!349310 lambda!349182)))

(declare-fun bs!1590771 () Bool)

(assert (= bs!1590771 (and b!6350634 b!6348956)))

(assert (=> bs!1590771 (= lambda!349310 lambda!349185)))

(declare-fun bs!1590772 () Bool)

(assert (= bs!1590772 (and b!6350634 b!6349642)))

(assert (=> bs!1590772 (= lambda!349310 lambda!349246)))

(declare-fun bs!1590773 () Bool)

(assert (= bs!1590773 (and b!6350634 b!6348958)))

(declare-fun lambda!349311 () Int)

(declare-fun lt!2364494 () Int)

(assert (=> bs!1590773 (= (= lt!2364494 lt!2364341) (= lambda!349311 lambda!349187))))

(declare-fun bs!1590774 () Bool)

(assert (= bs!1590774 (and b!6350634 d!1992667)))

(assert (=> bs!1590774 (not (= lambda!349311 lambda!349292))))

(declare-fun bs!1590775 () Bool)

(assert (= bs!1590775 (and b!6350634 d!1992383)))

(assert (=> bs!1590775 (not (= lambda!349311 lambda!349245))))

(declare-fun bs!1590776 () Bool)

(assert (= bs!1590776 (and b!6350634 b!6348953)))

(assert (=> bs!1590776 (= (= lt!2364494 lt!2364337) (= lambda!349311 lambda!349184))))

(declare-fun bs!1590777 () Bool)

(assert (= bs!1590777 (and b!6350634 d!1992433)))

(assert (=> bs!1590777 (not (= lambda!349311 lambda!349257))))

(declare-fun bs!1590778 () Bool)

(assert (= bs!1590778 (and b!6350634 d!1992375)))

(assert (=> bs!1590778 (not (= lambda!349311 lambda!349224))))

(declare-fun bs!1590779 () Bool)

(assert (= bs!1590779 (and b!6350634 d!1992855)))

(assert (=> bs!1590779 (not (= lambda!349311 lambda!349307))))

(declare-fun bs!1590780 () Bool)

(assert (= bs!1590780 (and b!6350634 d!1992775)))

(assert (=> bs!1590780 (not (= lambda!349311 lambda!349301))))

(assert (=> bs!1590770 (= (= lt!2364494 lt!2364340) (= lambda!349311 lambda!349183))))

(declare-fun bs!1590781 () Bool)

(assert (= bs!1590781 (and b!6350634 d!1992663)))

(assert (=> bs!1590781 (not (= lambda!349311 lambda!349291))))

(assert (=> bs!1590771 (= (= lt!2364494 lt!2364344) (= lambda!349311 lambda!349186))))

(declare-fun bs!1590782 () Bool)

(assert (= bs!1590782 (and b!6350634 d!1992741)))

(assert (=> bs!1590782 (not (= lambda!349311 lambda!349298))))

(assert (=> bs!1590772 (= (= lt!2364494 lt!2364419) (= lambda!349311 lambda!349247))))

(declare-fun bs!1590783 () Bool)

(assert (= bs!1590783 (and b!6350634 b!6349644)))

(assert (=> bs!1590783 (= (= lt!2364494 lt!2364416) (= lambda!349311 lambda!349249))))

(assert (=> b!6350634 true))

(declare-fun bs!1590784 () Bool)

(declare-fun b!6350636 () Bool)

(assert (= bs!1590784 (and b!6350636 b!6348958)))

(declare-fun lambda!349312 () Int)

(declare-fun lt!2364491 () Int)

(assert (=> bs!1590784 (= (= lt!2364491 lt!2364341) (= lambda!349312 lambda!349187))))

(declare-fun bs!1590785 () Bool)

(assert (= bs!1590785 (and b!6350636 d!1992667)))

(assert (=> bs!1590785 (not (= lambda!349312 lambda!349292))))

(declare-fun bs!1590786 () Bool)

(assert (= bs!1590786 (and b!6350636 d!1992383)))

(assert (=> bs!1590786 (not (= lambda!349312 lambda!349245))))

(declare-fun bs!1590787 () Bool)

(assert (= bs!1590787 (and b!6350636 b!6348953)))

(assert (=> bs!1590787 (= (= lt!2364491 lt!2364337) (= lambda!349312 lambda!349184))))

(declare-fun bs!1590788 () Bool)

(assert (= bs!1590788 (and b!6350636 d!1992433)))

(assert (=> bs!1590788 (not (= lambda!349312 lambda!349257))))

(declare-fun bs!1590789 () Bool)

(assert (= bs!1590789 (and b!6350636 d!1992375)))

(assert (=> bs!1590789 (not (= lambda!349312 lambda!349224))))

(declare-fun bs!1590790 () Bool)

(assert (= bs!1590790 (and b!6350636 d!1992775)))

(assert (=> bs!1590790 (not (= lambda!349312 lambda!349301))))

(declare-fun bs!1590791 () Bool)

(assert (= bs!1590791 (and b!6350636 b!6348951)))

(assert (=> bs!1590791 (= (= lt!2364491 lt!2364340) (= lambda!349312 lambda!349183))))

(declare-fun bs!1590792 () Bool)

(assert (= bs!1590792 (and b!6350636 d!1992663)))

(assert (=> bs!1590792 (not (= lambda!349312 lambda!349291))))

(declare-fun bs!1590793 () Bool)

(assert (= bs!1590793 (and b!6350636 d!1992855)))

(assert (=> bs!1590793 (not (= lambda!349312 lambda!349307))))

(declare-fun bs!1590794 () Bool)

(assert (= bs!1590794 (and b!6350636 b!6350634)))

(assert (=> bs!1590794 (= (= lt!2364491 lt!2364494) (= lambda!349312 lambda!349311))))

(declare-fun bs!1590795 () Bool)

(assert (= bs!1590795 (and b!6350636 b!6348956)))

(assert (=> bs!1590795 (= (= lt!2364491 lt!2364344) (= lambda!349312 lambda!349186))))

(declare-fun bs!1590796 () Bool)

(assert (= bs!1590796 (and b!6350636 d!1992741)))

(assert (=> bs!1590796 (not (= lambda!349312 lambda!349298))))

(declare-fun bs!1590797 () Bool)

(assert (= bs!1590797 (and b!6350636 b!6349642)))

(assert (=> bs!1590797 (= (= lt!2364491 lt!2364419) (= lambda!349312 lambda!349247))))

(declare-fun bs!1590798 () Bool)

(assert (= bs!1590798 (and b!6350636 b!6349644)))

(assert (=> bs!1590798 (= (= lt!2364491 lt!2364416) (= lambda!349312 lambda!349249))))

(assert (=> b!6350636 true))

(declare-fun d!1992861 () Bool)

(declare-fun e!3856880 () Bool)

(assert (=> d!1992861 e!3856880))

(declare-fun res!2613115 () Bool)

(assert (=> d!1992861 (=> (not res!2613115) (not e!3856880))))

(assert (=> d!1992861 (= res!2613115 (>= lt!2364491 0))))

(declare-fun e!3856881 () Int)

(assert (=> d!1992861 (= lt!2364491 e!3856881)))

(declare-fun c!1155381 () Bool)

(assert (=> d!1992861 (= c!1155381 ((_ is Cons!64942) (t!378654 lt!2364170)))))

(assert (=> d!1992861 (= (zipperDepth!362 (t!378654 lt!2364170)) lt!2364491)))

(assert (=> b!6350634 (= e!3856881 lt!2364494)))

(assert (=> b!6350634 (= lt!2364494 (maxBigInt!0 (contextDepth!251 (h!71390 (t!378654 lt!2364170))) (zipperDepth!362 (t!378654 (t!378654 lt!2364170)))))))

(declare-fun lt!2364492 () Unit!158351)

(assert (=> b!6350634 (= lt!2364492 (lemmaForallContextDepthBiggerThanTransitive!235 (t!378654 (t!378654 lt!2364170)) lt!2364494 (zipperDepth!362 (t!378654 (t!378654 lt!2364170))) lambda!349310))))

(assert (=> b!6350634 (forall!15423 (t!378654 (t!378654 lt!2364170)) lambda!349311)))

(declare-fun lt!2364493 () Unit!158351)

(assert (=> b!6350634 (= lt!2364493 lt!2364492)))

(declare-fun b!6350635 () Bool)

(assert (=> b!6350635 (= e!3856881 0)))

(assert (=> b!6350636 (= e!3856880 (forall!15423 (t!378654 lt!2364170) lambda!349312))))

(assert (= (and d!1992861 c!1155381) b!6350634))

(assert (= (and d!1992861 (not c!1155381)) b!6350635))

(assert (= (and d!1992861 res!2613115) b!6350636))

(declare-fun m!7157774 () Bool)

(assert (=> b!6350634 m!7157774))

(declare-fun m!7157776 () Bool)

(assert (=> b!6350634 m!7157776))

(declare-fun m!7157778 () Bool)

(assert (=> b!6350634 m!7157778))

(assert (=> b!6350634 m!7157774))

(declare-fun m!7157780 () Bool)

(assert (=> b!6350634 m!7157780))

(assert (=> b!6350634 m!7157774))

(declare-fun m!7157782 () Bool)

(assert (=> b!6350634 m!7157782))

(assert (=> b!6350634 m!7157778))

(declare-fun m!7157784 () Bool)

(assert (=> b!6350636 m!7157784))

(assert (=> b!6348951 d!1992861))

(declare-fun d!1992863 () Bool)

(declare-fun res!2613116 () Bool)

(declare-fun e!3856882 () Bool)

(assert (=> d!1992863 (=> res!2613116 e!3856882)))

(assert (=> d!1992863 (= res!2613116 ((_ is Nil!64942) (t!378654 lt!2364170)))))

(assert (=> d!1992863 (= (forall!15423 (t!378654 lt!2364170) lambda!349183) e!3856882)))

(declare-fun b!6350637 () Bool)

(declare-fun e!3856883 () Bool)

(assert (=> b!6350637 (= e!3856882 e!3856883)))

(declare-fun res!2613117 () Bool)

(assert (=> b!6350637 (=> (not res!2613117) (not e!3856883))))

(assert (=> b!6350637 (= res!2613117 (dynLambda!25751 lambda!349183 (h!71390 (t!378654 lt!2364170))))))

(declare-fun b!6350638 () Bool)

(assert (=> b!6350638 (= e!3856883 (forall!15423 (t!378654 (t!378654 lt!2364170)) lambda!349183))))

(assert (= (and d!1992863 (not res!2613116)) b!6350637))

(assert (= (and b!6350637 res!2613117) b!6350638))

(declare-fun b_lambda!241573 () Bool)

(assert (=> (not b_lambda!241573) (not b!6350637)))

(declare-fun m!7157786 () Bool)

(assert (=> b!6350637 m!7157786))

(declare-fun m!7157788 () Bool)

(assert (=> b!6350638 m!7157788))

(assert (=> b!6348951 d!1992863))

(declare-fun d!1992865 () Bool)

(declare-fun c!1155382 () Bool)

(assert (=> d!1992865 (= c!1155382 (isEmpty!37033 (tail!12088 (t!378653 s!2326))))))

(declare-fun e!3856884 () Bool)

(assert (=> d!1992865 (= (matchZipper!2267 (derivationStepZipper!2221 lt!2364172 (head!13003 (t!378653 s!2326))) (tail!12088 (t!378653 s!2326))) e!3856884)))

(declare-fun b!6350639 () Bool)

(assert (=> b!6350639 (= e!3856884 (nullableZipper!2021 (derivationStepZipper!2221 lt!2364172 (head!13003 (t!378653 s!2326)))))))

(declare-fun b!6350640 () Bool)

(assert (=> b!6350640 (= e!3856884 (matchZipper!2267 (derivationStepZipper!2221 (derivationStepZipper!2221 lt!2364172 (head!13003 (t!378653 s!2326))) (head!13003 (tail!12088 (t!378653 s!2326)))) (tail!12088 (tail!12088 (t!378653 s!2326)))))))

(assert (= (and d!1992865 c!1155382) b!6350639))

(assert (= (and d!1992865 (not c!1155382)) b!6350640))

(assert (=> d!1992865 m!7155730))

(assert (=> d!1992865 m!7157290))

(assert (=> b!6350639 m!7155744))

(declare-fun m!7157790 () Bool)

(assert (=> b!6350639 m!7157790))

(assert (=> b!6350640 m!7155730))

(assert (=> b!6350640 m!7157294))

(assert (=> b!6350640 m!7155744))

(assert (=> b!6350640 m!7157294))

(declare-fun m!7157792 () Bool)

(assert (=> b!6350640 m!7157792))

(assert (=> b!6350640 m!7155730))

(assert (=> b!6350640 m!7157298))

(assert (=> b!6350640 m!7157792))

(assert (=> b!6350640 m!7157298))

(declare-fun m!7157794 () Bool)

(assert (=> b!6350640 m!7157794))

(assert (=> b!6348505 d!1992865))

(declare-fun bs!1590799 () Bool)

(declare-fun d!1992867 () Bool)

(assert (= bs!1590799 (and d!1992867 b!6348017)))

(declare-fun lambda!349313 () Int)

(assert (=> bs!1590799 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349313 lambda!349079))))

(declare-fun bs!1590800 () Bool)

(assert (= bs!1590800 (and d!1992867 d!1992645)))

(assert (=> bs!1590800 (= lambda!349313 lambda!349287)))

(declare-fun bs!1590801 () Bool)

(assert (= bs!1590801 (and d!1992867 d!1992749)))

(assert (=> bs!1590801 (= lambda!349313 lambda!349299)))

(declare-fun bs!1590802 () Bool)

(assert (= bs!1590802 (and d!1992867 d!1992759)))

(assert (=> bs!1590802 (= lambda!349313 lambda!349300)))

(declare-fun bs!1590803 () Bool)

(assert (= bs!1590803 (and d!1992867 d!1992831)))

(assert (=> bs!1590803 (= (= (head!13003 (t!378653 s!2326)) (head!13003 s!2326)) (= lambda!349313 lambda!349306))))

(declare-fun bs!1590804 () Bool)

(assert (= bs!1590804 (and d!1992867 d!1992631)))

(assert (=> bs!1590804 (= lambda!349313 lambda!349283)))

(declare-fun bs!1590805 () Bool)

(assert (= bs!1590805 (and d!1992867 d!1991991)))

(assert (=> bs!1590805 (= (= (head!13003 (t!378653 s!2326)) (h!71389 s!2326)) (= lambda!349313 lambda!349150))))

(assert (=> d!1992867 true))

(assert (=> d!1992867 (= (derivationStepZipper!2221 lt!2364172 (head!13003 (t!378653 s!2326))) (flatMap!1760 lt!2364172 lambda!349313))))

(declare-fun bs!1590806 () Bool)

(assert (= bs!1590806 d!1992867))

(declare-fun m!7157796 () Bool)

(assert (=> bs!1590806 m!7157796))

(assert (=> b!6348505 d!1992867))

(assert (=> b!6348505 d!1992633))

(assert (=> b!6348505 d!1992635))

(declare-fun d!1992869 () Bool)

(assert (=> d!1992869 (= (nullable!6248 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))) (nullableFct!2195 (h!71388 (exprs!6139 (Context!11279 (Cons!64940 (h!71388 (exprs!6139 (h!71390 zl!343))) (t!378652 (exprs!6139 (h!71390 zl!343)))))))))))

(declare-fun bs!1590807 () Bool)

(assert (= bs!1590807 d!1992869))

(declare-fun m!7157798 () Bool)

(assert (=> bs!1590807 m!7157798))

(assert (=> b!6348723 d!1992869))

(declare-fun d!1992871 () Bool)

(assert (=> d!1992871 (= (head!13002 (unfocusZipperList!1676 zl!343)) (h!71388 (unfocusZipperList!1676 zl!343)))))

(assert (=> b!6348934 d!1992871))

(declare-fun d!1992873 () Bool)

(assert (=> d!1992873 (= (isEmpty!37030 (tail!12087 lt!2364157)) ((_ is Nil!64940) (tail!12087 lt!2364157)))))

(assert (=> b!6348903 d!1992873))

(declare-fun d!1992875 () Bool)

(assert (=> d!1992875 (= (tail!12087 lt!2364157) (t!378652 lt!2364157))))

(assert (=> b!6348903 d!1992875))

(declare-fun b!6350641 () Bool)

(declare-fun e!3856886 () Bool)

(declare-fun e!3856889 () Bool)

(assert (=> b!6350641 (= e!3856886 e!3856889)))

(declare-fun c!1155383 () Bool)

(assert (=> b!6350641 (= c!1155383 ((_ is Star!16255) lt!2364242))))

(declare-fun b!6350642 () Bool)

(declare-fun e!3856888 () Bool)

(declare-fun e!3856891 () Bool)

(assert (=> b!6350642 (= e!3856888 e!3856891)))

(declare-fun res!2613119 () Bool)

(assert (=> b!6350642 (=> (not res!2613119) (not e!3856891))))

(declare-fun call!541561 () Bool)

(assert (=> b!6350642 (= res!2613119 call!541561)))

(declare-fun bm!541555 () Bool)

(declare-fun call!541560 () Bool)

(declare-fun c!1155384 () Bool)

(assert (=> bm!541555 (= call!541560 (validRegex!7991 (ite c!1155384 (regTwo!33023 lt!2364242) (regTwo!33022 lt!2364242))))))

(declare-fun b!6350643 () Bool)

(declare-fun e!3856890 () Bool)

(assert (=> b!6350643 (= e!3856890 call!541560)))

(declare-fun b!6350644 () Bool)

(assert (=> b!6350644 (= e!3856891 call!541560)))

(declare-fun b!6350645 () Bool)

(declare-fun e!3856885 () Bool)

(declare-fun call!541562 () Bool)

(assert (=> b!6350645 (= e!3856885 call!541562)))

(declare-fun d!1992877 () Bool)

(declare-fun res!2613121 () Bool)

(assert (=> d!1992877 (=> res!2613121 e!3856886)))

(assert (=> d!1992877 (= res!2613121 ((_ is ElementMatch!16255) lt!2364242))))

(assert (=> d!1992877 (= (validRegex!7991 lt!2364242) e!3856886)))

(declare-fun bm!541556 () Bool)

(assert (=> bm!541556 (= call!541562 (validRegex!7991 (ite c!1155383 (reg!16584 lt!2364242) (ite c!1155384 (regOne!33023 lt!2364242) (regOne!33022 lt!2364242)))))))

(declare-fun b!6350646 () Bool)

(declare-fun res!2613118 () Bool)

(assert (=> b!6350646 (=> (not res!2613118) (not e!3856890))))

(assert (=> b!6350646 (= res!2613118 call!541561)))

(declare-fun e!3856887 () Bool)

(assert (=> b!6350646 (= e!3856887 e!3856890)))

(declare-fun b!6350647 () Bool)

(assert (=> b!6350647 (= e!3856889 e!3856887)))

(assert (=> b!6350647 (= c!1155384 ((_ is Union!16255) lt!2364242))))

(declare-fun b!6350648 () Bool)

(assert (=> b!6350648 (= e!3856889 e!3856885)))

(declare-fun res!2613122 () Bool)

(assert (=> b!6350648 (= res!2613122 (not (nullable!6248 (reg!16584 lt!2364242))))))

(assert (=> b!6350648 (=> (not res!2613122) (not e!3856885))))

(declare-fun bm!541557 () Bool)

(assert (=> bm!541557 (= call!541561 call!541562)))

(declare-fun b!6350649 () Bool)

(declare-fun res!2613120 () Bool)

(assert (=> b!6350649 (=> res!2613120 e!3856888)))

(assert (=> b!6350649 (= res!2613120 (not ((_ is Concat!25100) lt!2364242)))))

(assert (=> b!6350649 (= e!3856887 e!3856888)))

(assert (= (and d!1992877 (not res!2613121)) b!6350641))

(assert (= (and b!6350641 c!1155383) b!6350648))

(assert (= (and b!6350641 (not c!1155383)) b!6350647))

(assert (= (and b!6350648 res!2613122) b!6350645))

(assert (= (and b!6350647 c!1155384) b!6350646))

(assert (= (and b!6350647 (not c!1155384)) b!6350649))

(assert (= (and b!6350646 res!2613118) b!6350643))

(assert (= (and b!6350649 (not res!2613120)) b!6350642))

(assert (= (and b!6350642 res!2613119) b!6350644))

(assert (= (or b!6350643 b!6350644) bm!541555))

(assert (= (or b!6350646 b!6350642) bm!541557))

(assert (= (or b!6350645 bm!541557) bm!541556))

(declare-fun m!7157800 () Bool)

(assert (=> bm!541555 m!7157800))

(declare-fun m!7157802 () Bool)

(assert (=> bm!541556 m!7157802))

(declare-fun m!7157804 () Bool)

(assert (=> b!6350648 m!7157804))

(assert (=> d!1991913 d!1992877))

(declare-fun d!1992879 () Bool)

(declare-fun res!2613123 () Bool)

(declare-fun e!3856892 () Bool)

(assert (=> d!1992879 (=> res!2613123 e!3856892)))

(assert (=> d!1992879 (= res!2613123 ((_ is Nil!64940) (exprs!6139 (h!71390 zl!343))))))

(assert (=> d!1992879 (= (forall!15421 (exprs!6139 (h!71390 zl!343)) lambda!349122) e!3856892)))

(declare-fun b!6350650 () Bool)

(declare-fun e!3856893 () Bool)

(assert (=> b!6350650 (= e!3856892 e!3856893)))

(declare-fun res!2613124 () Bool)

(assert (=> b!6350650 (=> (not res!2613124) (not e!3856893))))

(assert (=> b!6350650 (= res!2613124 (dynLambda!25748 lambda!349122 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun b!6350651 () Bool)

(assert (=> b!6350651 (= e!3856893 (forall!15421 (t!378652 (exprs!6139 (h!71390 zl!343))) lambda!349122))))

(assert (= (and d!1992879 (not res!2613123)) b!6350650))

(assert (= (and b!6350650 res!2613124) b!6350651))

(declare-fun b_lambda!241575 () Bool)

(assert (=> (not b_lambda!241575) (not b!6350650)))

(declare-fun m!7157806 () Bool)

(assert (=> b!6350650 m!7157806))

(declare-fun m!7157808 () Bool)

(assert (=> b!6350651 m!7157808))

(assert (=> d!1991913 d!1992879))

(assert (=> b!6348700 d!1992619))

(declare-fun b!6350654 () Bool)

(declare-fun e!3856894 () Bool)

(declare-fun tp!1769795 () Bool)

(assert (=> b!6350654 (= e!3856894 tp!1769795)))

(declare-fun b!6350652 () Bool)

(assert (=> b!6350652 (= e!3856894 tp_is_empty!41763)))

(declare-fun b!6350655 () Bool)

(declare-fun tp!1769797 () Bool)

(declare-fun tp!1769799 () Bool)

(assert (=> b!6350655 (= e!3856894 (and tp!1769797 tp!1769799))))

(declare-fun b!6350653 () Bool)

(declare-fun tp!1769796 () Bool)

(declare-fun tp!1769798 () Bool)

(assert (=> b!6350653 (= e!3856894 (and tp!1769796 tp!1769798))))

(assert (=> b!6349021 (= tp!1769603 e!3856894)))

(assert (= (and b!6349021 ((_ is ElementMatch!16255) (reg!16584 (regTwo!33023 r!7292)))) b!6350652))

(assert (= (and b!6349021 ((_ is Concat!25100) (reg!16584 (regTwo!33023 r!7292)))) b!6350653))

(assert (= (and b!6349021 ((_ is Star!16255) (reg!16584 (regTwo!33023 r!7292)))) b!6350654))

(assert (= (and b!6349021 ((_ is Union!16255) (reg!16584 (regTwo!33023 r!7292)))) b!6350655))

(declare-fun b!6350658 () Bool)

(declare-fun e!3856895 () Bool)

(declare-fun tp!1769800 () Bool)

(assert (=> b!6350658 (= e!3856895 tp!1769800)))

(declare-fun b!6350656 () Bool)

(assert (=> b!6350656 (= e!3856895 tp_is_empty!41763)))

(declare-fun b!6350659 () Bool)

(declare-fun tp!1769802 () Bool)

(declare-fun tp!1769804 () Bool)

(assert (=> b!6350659 (= e!3856895 (and tp!1769802 tp!1769804))))

(declare-fun b!6350657 () Bool)

(declare-fun tp!1769801 () Bool)

(declare-fun tp!1769803 () Bool)

(assert (=> b!6350657 (= e!3856895 (and tp!1769801 tp!1769803))))

(assert (=> b!6349020 (= tp!1769604 e!3856895)))

(assert (= (and b!6349020 ((_ is ElementMatch!16255) (regOne!33022 (regTwo!33023 r!7292)))) b!6350656))

(assert (= (and b!6349020 ((_ is Concat!25100) (regOne!33022 (regTwo!33023 r!7292)))) b!6350657))

(assert (= (and b!6349020 ((_ is Star!16255) (regOne!33022 (regTwo!33023 r!7292)))) b!6350658))

(assert (= (and b!6349020 ((_ is Union!16255) (regOne!33022 (regTwo!33023 r!7292)))) b!6350659))

(declare-fun b!6350662 () Bool)

(declare-fun e!3856896 () Bool)

(declare-fun tp!1769805 () Bool)

(assert (=> b!6350662 (= e!3856896 tp!1769805)))

(declare-fun b!6350660 () Bool)

(assert (=> b!6350660 (= e!3856896 tp_is_empty!41763)))

(declare-fun b!6350663 () Bool)

(declare-fun tp!1769807 () Bool)

(declare-fun tp!1769809 () Bool)

(assert (=> b!6350663 (= e!3856896 (and tp!1769807 tp!1769809))))

(declare-fun b!6350661 () Bool)

(declare-fun tp!1769806 () Bool)

(declare-fun tp!1769808 () Bool)

(assert (=> b!6350661 (= e!3856896 (and tp!1769806 tp!1769808))))

(assert (=> b!6349020 (= tp!1769606 e!3856896)))

(assert (= (and b!6349020 ((_ is ElementMatch!16255) (regTwo!33022 (regTwo!33023 r!7292)))) b!6350660))

(assert (= (and b!6349020 ((_ is Concat!25100) (regTwo!33022 (regTwo!33023 r!7292)))) b!6350661))

(assert (= (and b!6349020 ((_ is Star!16255) (regTwo!33022 (regTwo!33023 r!7292)))) b!6350662))

(assert (= (and b!6349020 ((_ is Union!16255) (regTwo!33022 (regTwo!33023 r!7292)))) b!6350663))

(declare-fun b!6350665 () Bool)

(declare-fun e!3856898 () Bool)

(declare-fun tp!1769810 () Bool)

(assert (=> b!6350665 (= e!3856898 tp!1769810)))

(declare-fun e!3856897 () Bool)

(declare-fun tp!1769811 () Bool)

(declare-fun b!6350664 () Bool)

(assert (=> b!6350664 (= e!3856897 (and (inv!83884 (h!71390 (t!378654 (t!378654 zl!343)))) e!3856898 tp!1769811))))

(assert (=> b!6349012 (= tp!1769595 e!3856897)))

(assert (= b!6350664 b!6350665))

(assert (= (and b!6349012 ((_ is Cons!64942) (t!378654 (t!378654 zl!343)))) b!6350664))

(declare-fun m!7157810 () Bool)

(assert (=> b!6350664 m!7157810))

(declare-fun b!6350666 () Bool)

(declare-fun e!3856899 () Bool)

(declare-fun tp!1769812 () Bool)

(declare-fun tp!1769813 () Bool)

(assert (=> b!6350666 (= e!3856899 (and tp!1769812 tp!1769813))))

(assert (=> b!6349013 (= tp!1769594 e!3856899)))

(assert (= (and b!6349013 ((_ is Cons!64940) (exprs!6139 (h!71390 (t!378654 zl!343))))) b!6350666))

(declare-fun condSetEmpty!43240 () Bool)

(assert (=> setNonEmpty!43230 (= condSetEmpty!43240 (= setRest!43230 ((as const (Array Context!11278 Bool)) false)))))

(declare-fun setRes!43240 () Bool)

(assert (=> setNonEmpty!43230 (= tp!1769612 setRes!43240)))

(declare-fun setIsEmpty!43240 () Bool)

(assert (=> setIsEmpty!43240 setRes!43240))

(declare-fun setNonEmpty!43240 () Bool)

(declare-fun tp!1769814 () Bool)

(declare-fun e!3856900 () Bool)

(declare-fun setElem!43240 () Context!11278)

(assert (=> setNonEmpty!43240 (= setRes!43240 (and tp!1769814 (inv!83884 setElem!43240) e!3856900))))

(declare-fun setRest!43240 () (InoxSet Context!11278))

(assert (=> setNonEmpty!43240 (= setRest!43230 ((_ map or) (store ((as const (Array Context!11278 Bool)) false) setElem!43240 true) setRest!43240))))

(declare-fun b!6350667 () Bool)

(declare-fun tp!1769815 () Bool)

(assert (=> b!6350667 (= e!3856900 tp!1769815)))

(assert (= (and setNonEmpty!43230 condSetEmpty!43240) setIsEmpty!43240))

(assert (= (and setNonEmpty!43230 (not condSetEmpty!43240)) setNonEmpty!43240))

(assert (= setNonEmpty!43240 b!6350667))

(declare-fun m!7157812 () Bool)

(assert (=> setNonEmpty!43240 m!7157812))

(declare-fun b!6350670 () Bool)

(declare-fun e!3856901 () Bool)

(declare-fun tp!1769816 () Bool)

(assert (=> b!6350670 (= e!3856901 tp!1769816)))

(declare-fun b!6350668 () Bool)

(assert (=> b!6350668 (= e!3856901 tp_is_empty!41763)))

(declare-fun b!6350671 () Bool)

(declare-fun tp!1769818 () Bool)

(declare-fun tp!1769820 () Bool)

(assert (=> b!6350671 (= e!3856901 (and tp!1769818 tp!1769820))))

(declare-fun b!6350669 () Bool)

(declare-fun tp!1769817 () Bool)

(declare-fun tp!1769819 () Bool)

(assert (=> b!6350669 (= e!3856901 (and tp!1769817 tp!1769819))))

(assert (=> b!6349004 (= tp!1769585 e!3856901)))

(assert (= (and b!6349004 ((_ is ElementMatch!16255) (reg!16584 (regTwo!33022 r!7292)))) b!6350668))

(assert (= (and b!6349004 ((_ is Concat!25100) (reg!16584 (regTwo!33022 r!7292)))) b!6350669))

(assert (= (and b!6349004 ((_ is Star!16255) (reg!16584 (regTwo!33022 r!7292)))) b!6350670))

(assert (= (and b!6349004 ((_ is Union!16255) (reg!16584 (regTwo!33022 r!7292)))) b!6350671))

(declare-fun b!6350672 () Bool)

(declare-fun e!3856902 () Bool)

(declare-fun tp!1769821 () Bool)

(declare-fun tp!1769822 () Bool)

(assert (=> b!6350672 (= e!3856902 (and tp!1769821 tp!1769822))))

(assert (=> b!6349027 (= tp!1769613 e!3856902)))

(assert (= (and b!6349027 ((_ is Cons!64940) (exprs!6139 setElem!43230))) b!6350672))

(declare-fun b!6350675 () Bool)

(declare-fun e!3856903 () Bool)

(declare-fun tp!1769823 () Bool)

(assert (=> b!6350675 (= e!3856903 tp!1769823)))

(declare-fun b!6350673 () Bool)

(assert (=> b!6350673 (= e!3856903 tp_is_empty!41763)))

(declare-fun b!6350676 () Bool)

(declare-fun tp!1769825 () Bool)

(declare-fun tp!1769827 () Bool)

(assert (=> b!6350676 (= e!3856903 (and tp!1769825 tp!1769827))))

(declare-fun b!6350674 () Bool)

(declare-fun tp!1769824 () Bool)

(declare-fun tp!1769826 () Bool)

(assert (=> b!6350674 (= e!3856903 (and tp!1769824 tp!1769826))))

(assert (=> b!6349005 (= tp!1769587 e!3856903)))

(assert (= (and b!6349005 ((_ is ElementMatch!16255) (regOne!33023 (regTwo!33022 r!7292)))) b!6350673))

(assert (= (and b!6349005 ((_ is Concat!25100) (regOne!33023 (regTwo!33022 r!7292)))) b!6350674))

(assert (= (and b!6349005 ((_ is Star!16255) (regOne!33023 (regTwo!33022 r!7292)))) b!6350675))

(assert (= (and b!6349005 ((_ is Union!16255) (regOne!33023 (regTwo!33022 r!7292)))) b!6350676))

(declare-fun b!6350679 () Bool)

(declare-fun e!3856904 () Bool)

(declare-fun tp!1769828 () Bool)

(assert (=> b!6350679 (= e!3856904 tp!1769828)))

(declare-fun b!6350677 () Bool)

(assert (=> b!6350677 (= e!3856904 tp_is_empty!41763)))

(declare-fun b!6350680 () Bool)

(declare-fun tp!1769830 () Bool)

(declare-fun tp!1769832 () Bool)

(assert (=> b!6350680 (= e!3856904 (and tp!1769830 tp!1769832))))

(declare-fun b!6350678 () Bool)

(declare-fun tp!1769829 () Bool)

(declare-fun tp!1769831 () Bool)

(assert (=> b!6350678 (= e!3856904 (and tp!1769829 tp!1769831))))

(assert (=> b!6349005 (= tp!1769589 e!3856904)))

(assert (= (and b!6349005 ((_ is ElementMatch!16255) (regTwo!33023 (regTwo!33022 r!7292)))) b!6350677))

(assert (= (and b!6349005 ((_ is Concat!25100) (regTwo!33023 (regTwo!33022 r!7292)))) b!6350678))

(assert (= (and b!6349005 ((_ is Star!16255) (regTwo!33023 (regTwo!33022 r!7292)))) b!6350679))

(assert (= (and b!6349005 ((_ is Union!16255) (regTwo!33023 (regTwo!33022 r!7292)))) b!6350680))

(declare-fun b!6350681 () Bool)

(declare-fun e!3856905 () Bool)

(declare-fun tp!1769833 () Bool)

(assert (=> b!6350681 (= e!3856905 (and tp_is_empty!41763 tp!1769833))))

(assert (=> b!6348982 (= tp!1769563 e!3856905)))

(assert (= (and b!6348982 ((_ is Cons!64941) (t!378653 (t!378653 s!2326)))) b!6350681))

(declare-fun b!6350684 () Bool)

(declare-fun e!3856906 () Bool)

(declare-fun tp!1769834 () Bool)

(assert (=> b!6350684 (= e!3856906 tp!1769834)))

(declare-fun b!6350682 () Bool)

(assert (=> b!6350682 (= e!3856906 tp_is_empty!41763)))

(declare-fun b!6350685 () Bool)

(declare-fun tp!1769836 () Bool)

(declare-fun tp!1769838 () Bool)

(assert (=> b!6350685 (= e!3856906 (and tp!1769836 tp!1769838))))

(declare-fun b!6350683 () Bool)

(declare-fun tp!1769835 () Bool)

(declare-fun tp!1769837 () Bool)

(assert (=> b!6350683 (= e!3856906 (and tp!1769835 tp!1769837))))

(assert (=> b!6348987 (= tp!1769568 e!3856906)))

(assert (= (and b!6348987 ((_ is ElementMatch!16255) (h!71388 (exprs!6139 (h!71390 zl!343))))) b!6350682))

(assert (= (and b!6348987 ((_ is Concat!25100) (h!71388 (exprs!6139 (h!71390 zl!343))))) b!6350683))

(assert (= (and b!6348987 ((_ is Star!16255) (h!71388 (exprs!6139 (h!71390 zl!343))))) b!6350684))

(assert (= (and b!6348987 ((_ is Union!16255) (h!71388 (exprs!6139 (h!71390 zl!343))))) b!6350685))

(declare-fun b!6350686 () Bool)

(declare-fun e!3856907 () Bool)

(declare-fun tp!1769839 () Bool)

(declare-fun tp!1769840 () Bool)

(assert (=> b!6350686 (= e!3856907 (and tp!1769839 tp!1769840))))

(assert (=> b!6348987 (= tp!1769569 e!3856907)))

(assert (= (and b!6348987 ((_ is Cons!64940) (t!378652 (exprs!6139 (h!71390 zl!343))))) b!6350686))

(declare-fun b!6350689 () Bool)

(declare-fun e!3856908 () Bool)

(declare-fun tp!1769841 () Bool)

(assert (=> b!6350689 (= e!3856908 tp!1769841)))

(declare-fun b!6350687 () Bool)

(assert (=> b!6350687 (= e!3856908 tp_is_empty!41763)))

(declare-fun b!6350690 () Bool)

(declare-fun tp!1769843 () Bool)

(declare-fun tp!1769845 () Bool)

(assert (=> b!6350690 (= e!3856908 (and tp!1769843 tp!1769845))))

(declare-fun b!6350688 () Bool)

(declare-fun tp!1769842 () Bool)

(declare-fun tp!1769844 () Bool)

(assert (=> b!6350688 (= e!3856908 (and tp!1769842 tp!1769844))))

(assert (=> b!6349017 (= tp!1769598 e!3856908)))

(assert (= (and b!6349017 ((_ is ElementMatch!16255) (reg!16584 (regOne!33023 r!7292)))) b!6350687))

(assert (= (and b!6349017 ((_ is Concat!25100) (reg!16584 (regOne!33023 r!7292)))) b!6350688))

(assert (= (and b!6349017 ((_ is Star!16255) (reg!16584 (regOne!33023 r!7292)))) b!6350689))

(assert (= (and b!6349017 ((_ is Union!16255) (reg!16584 (regOne!33023 r!7292)))) b!6350690))

(declare-fun b!6350693 () Bool)

(declare-fun e!3856909 () Bool)

(declare-fun tp!1769846 () Bool)

(assert (=> b!6350693 (= e!3856909 tp!1769846)))

(declare-fun b!6350691 () Bool)

(assert (=> b!6350691 (= e!3856909 tp_is_empty!41763)))

(declare-fun b!6350694 () Bool)

(declare-fun tp!1769848 () Bool)

(declare-fun tp!1769850 () Bool)

(assert (=> b!6350694 (= e!3856909 (and tp!1769848 tp!1769850))))

(declare-fun b!6350692 () Bool)

(declare-fun tp!1769847 () Bool)

(declare-fun tp!1769849 () Bool)

(assert (=> b!6350692 (= e!3856909 (and tp!1769847 tp!1769849))))

(assert (=> b!6349003 (= tp!1769586 e!3856909)))

(assert (= (and b!6349003 ((_ is ElementMatch!16255) (regOne!33022 (regTwo!33022 r!7292)))) b!6350691))

(assert (= (and b!6349003 ((_ is Concat!25100) (regOne!33022 (regTwo!33022 r!7292)))) b!6350692))

(assert (= (and b!6349003 ((_ is Star!16255) (regOne!33022 (regTwo!33022 r!7292)))) b!6350693))

(assert (= (and b!6349003 ((_ is Union!16255) (regOne!33022 (regTwo!33022 r!7292)))) b!6350694))

(declare-fun b!6350697 () Bool)

(declare-fun e!3856910 () Bool)

(declare-fun tp!1769851 () Bool)

(assert (=> b!6350697 (= e!3856910 tp!1769851)))

(declare-fun b!6350695 () Bool)

(assert (=> b!6350695 (= e!3856910 tp_is_empty!41763)))

(declare-fun b!6350698 () Bool)

(declare-fun tp!1769853 () Bool)

(declare-fun tp!1769855 () Bool)

(assert (=> b!6350698 (= e!3856910 (and tp!1769853 tp!1769855))))

(declare-fun b!6350696 () Bool)

(declare-fun tp!1769852 () Bool)

(declare-fun tp!1769854 () Bool)

(assert (=> b!6350696 (= e!3856910 (and tp!1769852 tp!1769854))))

(assert (=> b!6349003 (= tp!1769588 e!3856910)))

(assert (= (and b!6349003 ((_ is ElementMatch!16255) (regTwo!33022 (regTwo!33022 r!7292)))) b!6350695))

(assert (= (and b!6349003 ((_ is Concat!25100) (regTwo!33022 (regTwo!33022 r!7292)))) b!6350696))

(assert (= (and b!6349003 ((_ is Star!16255) (regTwo!33022 (regTwo!33022 r!7292)))) b!6350697))

(assert (= (and b!6349003 ((_ is Union!16255) (regTwo!33022 (regTwo!33022 r!7292)))) b!6350698))

(declare-fun b!6350701 () Bool)

(declare-fun e!3856911 () Bool)

(declare-fun tp!1769856 () Bool)

(assert (=> b!6350701 (= e!3856911 tp!1769856)))

(declare-fun b!6350699 () Bool)

(assert (=> b!6350699 (= e!3856911 tp_is_empty!41763)))

(declare-fun b!6350702 () Bool)

(declare-fun tp!1769858 () Bool)

(declare-fun tp!1769860 () Bool)

(assert (=> b!6350702 (= e!3856911 (and tp!1769858 tp!1769860))))

(declare-fun b!6350700 () Bool)

(declare-fun tp!1769857 () Bool)

(declare-fun tp!1769859 () Bool)

(assert (=> b!6350700 (= e!3856911 (and tp!1769857 tp!1769859))))

(assert (=> b!6349018 (= tp!1769600 e!3856911)))

(assert (= (and b!6349018 ((_ is ElementMatch!16255) (regOne!33023 (regOne!33023 r!7292)))) b!6350699))

(assert (= (and b!6349018 ((_ is Concat!25100) (regOne!33023 (regOne!33023 r!7292)))) b!6350700))

(assert (= (and b!6349018 ((_ is Star!16255) (regOne!33023 (regOne!33023 r!7292)))) b!6350701))

(assert (= (and b!6349018 ((_ is Union!16255) (regOne!33023 (regOne!33023 r!7292)))) b!6350702))

(declare-fun b!6350705 () Bool)

(declare-fun e!3856912 () Bool)

(declare-fun tp!1769861 () Bool)

(assert (=> b!6350705 (= e!3856912 tp!1769861)))

(declare-fun b!6350703 () Bool)

(assert (=> b!6350703 (= e!3856912 tp_is_empty!41763)))

(declare-fun b!6350706 () Bool)

(declare-fun tp!1769863 () Bool)

(declare-fun tp!1769865 () Bool)

(assert (=> b!6350706 (= e!3856912 (and tp!1769863 tp!1769865))))

(declare-fun b!6350704 () Bool)

(declare-fun tp!1769862 () Bool)

(declare-fun tp!1769864 () Bool)

(assert (=> b!6350704 (= e!3856912 (and tp!1769862 tp!1769864))))

(assert (=> b!6349018 (= tp!1769602 e!3856912)))

(assert (= (and b!6349018 ((_ is ElementMatch!16255) (regTwo!33023 (regOne!33023 r!7292)))) b!6350703))

(assert (= (and b!6349018 ((_ is Concat!25100) (regTwo!33023 (regOne!33023 r!7292)))) b!6350704))

(assert (= (and b!6349018 ((_ is Star!16255) (regTwo!33023 (regOne!33023 r!7292)))) b!6350705))

(assert (= (and b!6349018 ((_ is Union!16255) (regTwo!33023 (regOne!33023 r!7292)))) b!6350706))

(declare-fun b!6350709 () Bool)

(declare-fun e!3856913 () Bool)

(declare-fun tp!1769866 () Bool)

(assert (=> b!6350709 (= e!3856913 tp!1769866)))

(declare-fun b!6350707 () Bool)

(assert (=> b!6350707 (= e!3856913 tp_is_empty!41763)))

(declare-fun b!6350710 () Bool)

(declare-fun tp!1769868 () Bool)

(declare-fun tp!1769870 () Bool)

(assert (=> b!6350710 (= e!3856913 (and tp!1769868 tp!1769870))))

(declare-fun b!6350708 () Bool)

(declare-fun tp!1769867 () Bool)

(declare-fun tp!1769869 () Bool)

(assert (=> b!6350708 (= e!3856913 (and tp!1769867 tp!1769869))))

(assert (=> b!6349016 (= tp!1769599 e!3856913)))

(assert (= (and b!6349016 ((_ is ElementMatch!16255) (regOne!33022 (regOne!33023 r!7292)))) b!6350707))

(assert (= (and b!6349016 ((_ is Concat!25100) (regOne!33022 (regOne!33023 r!7292)))) b!6350708))

(assert (= (and b!6349016 ((_ is Star!16255) (regOne!33022 (regOne!33023 r!7292)))) b!6350709))

(assert (= (and b!6349016 ((_ is Union!16255) (regOne!33022 (regOne!33023 r!7292)))) b!6350710))

(declare-fun b!6350713 () Bool)

(declare-fun e!3856914 () Bool)

(declare-fun tp!1769871 () Bool)

(assert (=> b!6350713 (= e!3856914 tp!1769871)))

(declare-fun b!6350711 () Bool)

(assert (=> b!6350711 (= e!3856914 tp_is_empty!41763)))

(declare-fun b!6350714 () Bool)

(declare-fun tp!1769873 () Bool)

(declare-fun tp!1769875 () Bool)

(assert (=> b!6350714 (= e!3856914 (and tp!1769873 tp!1769875))))

(declare-fun b!6350712 () Bool)

(declare-fun tp!1769872 () Bool)

(declare-fun tp!1769874 () Bool)

(assert (=> b!6350712 (= e!3856914 (and tp!1769872 tp!1769874))))

(assert (=> b!6349016 (= tp!1769601 e!3856914)))

(assert (= (and b!6349016 ((_ is ElementMatch!16255) (regTwo!33022 (regOne!33023 r!7292)))) b!6350711))

(assert (= (and b!6349016 ((_ is Concat!25100) (regTwo!33022 (regOne!33023 r!7292)))) b!6350712))

(assert (= (and b!6349016 ((_ is Star!16255) (regTwo!33022 (regOne!33023 r!7292)))) b!6350713))

(assert (= (and b!6349016 ((_ is Union!16255) (regTwo!33022 (regOne!33023 r!7292)))) b!6350714))

(declare-fun b!6350717 () Bool)

(declare-fun e!3856915 () Bool)

(declare-fun tp!1769876 () Bool)

(assert (=> b!6350717 (= e!3856915 tp!1769876)))

(declare-fun b!6350715 () Bool)

(assert (=> b!6350715 (= e!3856915 tp_is_empty!41763)))

(declare-fun b!6350718 () Bool)

(declare-fun tp!1769878 () Bool)

(declare-fun tp!1769880 () Bool)

(assert (=> b!6350718 (= e!3856915 (and tp!1769878 tp!1769880))))

(declare-fun b!6350716 () Bool)

(declare-fun tp!1769877 () Bool)

(declare-fun tp!1769879 () Bool)

(assert (=> b!6350716 (= e!3856915 (and tp!1769877 tp!1769879))))

(assert (=> b!6349031 (= tp!1769616 e!3856915)))

(assert (= (and b!6349031 ((_ is ElementMatch!16255) (regOne!33023 (reg!16584 r!7292)))) b!6350715))

(assert (= (and b!6349031 ((_ is Concat!25100) (regOne!33023 (reg!16584 r!7292)))) b!6350716))

(assert (= (and b!6349031 ((_ is Star!16255) (regOne!33023 (reg!16584 r!7292)))) b!6350717))

(assert (= (and b!6349031 ((_ is Union!16255) (regOne!33023 (reg!16584 r!7292)))) b!6350718))

(declare-fun b!6350721 () Bool)

(declare-fun e!3856916 () Bool)

(declare-fun tp!1769881 () Bool)

(assert (=> b!6350721 (= e!3856916 tp!1769881)))

(declare-fun b!6350719 () Bool)

(assert (=> b!6350719 (= e!3856916 tp_is_empty!41763)))

(declare-fun b!6350722 () Bool)

(declare-fun tp!1769883 () Bool)

(declare-fun tp!1769885 () Bool)

(assert (=> b!6350722 (= e!3856916 (and tp!1769883 tp!1769885))))

(declare-fun b!6350720 () Bool)

(declare-fun tp!1769882 () Bool)

(declare-fun tp!1769884 () Bool)

(assert (=> b!6350720 (= e!3856916 (and tp!1769882 tp!1769884))))

(assert (=> b!6349031 (= tp!1769618 e!3856916)))

(assert (= (and b!6349031 ((_ is ElementMatch!16255) (regTwo!33023 (reg!16584 r!7292)))) b!6350719))

(assert (= (and b!6349031 ((_ is Concat!25100) (regTwo!33023 (reg!16584 r!7292)))) b!6350720))

(assert (= (and b!6349031 ((_ is Star!16255) (regTwo!33023 (reg!16584 r!7292)))) b!6350721))

(assert (= (and b!6349031 ((_ is Union!16255) (regTwo!33023 (reg!16584 r!7292)))) b!6350722))

(declare-fun b!6350725 () Bool)

(declare-fun e!3856917 () Bool)

(declare-fun tp!1769886 () Bool)

(assert (=> b!6350725 (= e!3856917 tp!1769886)))

(declare-fun b!6350723 () Bool)

(assert (=> b!6350723 (= e!3856917 tp_is_empty!41763)))

(declare-fun b!6350726 () Bool)

(declare-fun tp!1769888 () Bool)

(declare-fun tp!1769890 () Bool)

(assert (=> b!6350726 (= e!3856917 (and tp!1769888 tp!1769890))))

(declare-fun b!6350724 () Bool)

(declare-fun tp!1769887 () Bool)

(declare-fun tp!1769889 () Bool)

(assert (=> b!6350724 (= e!3856917 (and tp!1769887 tp!1769889))))

(assert (=> b!6349000 (= tp!1769580 e!3856917)))

(assert (= (and b!6349000 ((_ is ElementMatch!16255) (reg!16584 (regOne!33022 r!7292)))) b!6350723))

(assert (= (and b!6349000 ((_ is Concat!25100) (reg!16584 (regOne!33022 r!7292)))) b!6350724))

(assert (= (and b!6349000 ((_ is Star!16255) (reg!16584 (regOne!33022 r!7292)))) b!6350725))

(assert (= (and b!6349000 ((_ is Union!16255) (reg!16584 (regOne!33022 r!7292)))) b!6350726))

(declare-fun b!6350729 () Bool)

(declare-fun e!3856918 () Bool)

(declare-fun tp!1769891 () Bool)

(assert (=> b!6350729 (= e!3856918 tp!1769891)))

(declare-fun b!6350727 () Bool)

(assert (=> b!6350727 (= e!3856918 tp_is_empty!41763)))

(declare-fun b!6350730 () Bool)

(declare-fun tp!1769893 () Bool)

(declare-fun tp!1769895 () Bool)

(assert (=> b!6350730 (= e!3856918 (and tp!1769893 tp!1769895))))

(declare-fun b!6350728 () Bool)

(declare-fun tp!1769892 () Bool)

(declare-fun tp!1769894 () Bool)

(assert (=> b!6350728 (= e!3856918 (and tp!1769892 tp!1769894))))

(assert (=> b!6348999 (= tp!1769581 e!3856918)))

(assert (= (and b!6348999 ((_ is ElementMatch!16255) (regOne!33022 (regOne!33022 r!7292)))) b!6350727))

(assert (= (and b!6348999 ((_ is Concat!25100) (regOne!33022 (regOne!33022 r!7292)))) b!6350728))

(assert (= (and b!6348999 ((_ is Star!16255) (regOne!33022 (regOne!33022 r!7292)))) b!6350729))

(assert (= (and b!6348999 ((_ is Union!16255) (regOne!33022 (regOne!33022 r!7292)))) b!6350730))

(declare-fun b!6350733 () Bool)

(declare-fun e!3856919 () Bool)

(declare-fun tp!1769896 () Bool)

(assert (=> b!6350733 (= e!3856919 tp!1769896)))

(declare-fun b!6350731 () Bool)

(assert (=> b!6350731 (= e!3856919 tp_is_empty!41763)))

(declare-fun b!6350734 () Bool)

(declare-fun tp!1769898 () Bool)

(declare-fun tp!1769900 () Bool)

(assert (=> b!6350734 (= e!3856919 (and tp!1769898 tp!1769900))))

(declare-fun b!6350732 () Bool)

(declare-fun tp!1769897 () Bool)

(declare-fun tp!1769899 () Bool)

(assert (=> b!6350732 (= e!3856919 (and tp!1769897 tp!1769899))))

(assert (=> b!6348999 (= tp!1769583 e!3856919)))

(assert (= (and b!6348999 ((_ is ElementMatch!16255) (regTwo!33022 (regOne!33022 r!7292)))) b!6350731))

(assert (= (and b!6348999 ((_ is Concat!25100) (regTwo!33022 (regOne!33022 r!7292)))) b!6350732))

(assert (= (and b!6348999 ((_ is Star!16255) (regTwo!33022 (regOne!33022 r!7292)))) b!6350733))

(assert (= (and b!6348999 ((_ is Union!16255) (regTwo!33022 (regOne!33022 r!7292)))) b!6350734))

(declare-fun b!6350737 () Bool)

(declare-fun e!3856920 () Bool)

(declare-fun tp!1769901 () Bool)

(assert (=> b!6350737 (= e!3856920 tp!1769901)))

(declare-fun b!6350735 () Bool)

(assert (=> b!6350735 (= e!3856920 tp_is_empty!41763)))

(declare-fun b!6350738 () Bool)

(declare-fun tp!1769903 () Bool)

(declare-fun tp!1769905 () Bool)

(assert (=> b!6350738 (= e!3856920 (and tp!1769903 tp!1769905))))

(declare-fun b!6350736 () Bool)

(declare-fun tp!1769902 () Bool)

(declare-fun tp!1769904 () Bool)

(assert (=> b!6350736 (= e!3856920 (and tp!1769902 tp!1769904))))

(assert (=> b!6349030 (= tp!1769614 e!3856920)))

(assert (= (and b!6349030 ((_ is ElementMatch!16255) (reg!16584 (reg!16584 r!7292)))) b!6350735))

(assert (= (and b!6349030 ((_ is Concat!25100) (reg!16584 (reg!16584 r!7292)))) b!6350736))

(assert (= (and b!6349030 ((_ is Star!16255) (reg!16584 (reg!16584 r!7292)))) b!6350737))

(assert (= (and b!6349030 ((_ is Union!16255) (reg!16584 (reg!16584 r!7292)))) b!6350738))

(declare-fun b!6350741 () Bool)

(declare-fun e!3856921 () Bool)

(declare-fun tp!1769906 () Bool)

(assert (=> b!6350741 (= e!3856921 tp!1769906)))

(declare-fun b!6350739 () Bool)

(assert (=> b!6350739 (= e!3856921 tp_is_empty!41763)))

(declare-fun b!6350742 () Bool)

(declare-fun tp!1769908 () Bool)

(declare-fun tp!1769910 () Bool)

(assert (=> b!6350742 (= e!3856921 (and tp!1769908 tp!1769910))))

(declare-fun b!6350740 () Bool)

(declare-fun tp!1769907 () Bool)

(declare-fun tp!1769909 () Bool)

(assert (=> b!6350740 (= e!3856921 (and tp!1769907 tp!1769909))))

(assert (=> b!6349001 (= tp!1769582 e!3856921)))

(assert (= (and b!6349001 ((_ is ElementMatch!16255) (regOne!33023 (regOne!33022 r!7292)))) b!6350739))

(assert (= (and b!6349001 ((_ is Concat!25100) (regOne!33023 (regOne!33022 r!7292)))) b!6350740))

(assert (= (and b!6349001 ((_ is Star!16255) (regOne!33023 (regOne!33022 r!7292)))) b!6350741))

(assert (= (and b!6349001 ((_ is Union!16255) (regOne!33023 (regOne!33022 r!7292)))) b!6350742))

(declare-fun b!6350745 () Bool)

(declare-fun e!3856922 () Bool)

(declare-fun tp!1769911 () Bool)

(assert (=> b!6350745 (= e!3856922 tp!1769911)))

(declare-fun b!6350743 () Bool)

(assert (=> b!6350743 (= e!3856922 tp_is_empty!41763)))

(declare-fun b!6350746 () Bool)

(declare-fun tp!1769913 () Bool)

(declare-fun tp!1769915 () Bool)

(assert (=> b!6350746 (= e!3856922 (and tp!1769913 tp!1769915))))

(declare-fun b!6350744 () Bool)

(declare-fun tp!1769912 () Bool)

(declare-fun tp!1769914 () Bool)

(assert (=> b!6350744 (= e!3856922 (and tp!1769912 tp!1769914))))

(assert (=> b!6349001 (= tp!1769584 e!3856922)))

(assert (= (and b!6349001 ((_ is ElementMatch!16255) (regTwo!33023 (regOne!33022 r!7292)))) b!6350743))

(assert (= (and b!6349001 ((_ is Concat!25100) (regTwo!33023 (regOne!33022 r!7292)))) b!6350744))

(assert (= (and b!6349001 ((_ is Star!16255) (regTwo!33023 (regOne!33022 r!7292)))) b!6350745))

(assert (= (and b!6349001 ((_ is Union!16255) (regTwo!33023 (regOne!33022 r!7292)))) b!6350746))

(declare-fun b!6350749 () Bool)

(declare-fun e!3856923 () Bool)

(declare-fun tp!1769916 () Bool)

(assert (=> b!6350749 (= e!3856923 tp!1769916)))

(declare-fun b!6350747 () Bool)

(assert (=> b!6350747 (= e!3856923 tp_is_empty!41763)))

(declare-fun b!6350750 () Bool)

(declare-fun tp!1769918 () Bool)

(declare-fun tp!1769920 () Bool)

(assert (=> b!6350750 (= e!3856923 (and tp!1769918 tp!1769920))))

(declare-fun b!6350748 () Bool)

(declare-fun tp!1769917 () Bool)

(declare-fun tp!1769919 () Bool)

(assert (=> b!6350748 (= e!3856923 (and tp!1769917 tp!1769919))))

(assert (=> b!6349029 (= tp!1769615 e!3856923)))

(assert (= (and b!6349029 ((_ is ElementMatch!16255) (regOne!33022 (reg!16584 r!7292)))) b!6350747))

(assert (= (and b!6349029 ((_ is Concat!25100) (regOne!33022 (reg!16584 r!7292)))) b!6350748))

(assert (= (and b!6349029 ((_ is Star!16255) (regOne!33022 (reg!16584 r!7292)))) b!6350749))

(assert (= (and b!6349029 ((_ is Union!16255) (regOne!33022 (reg!16584 r!7292)))) b!6350750))

(declare-fun b!6350753 () Bool)

(declare-fun e!3856924 () Bool)

(declare-fun tp!1769921 () Bool)

(assert (=> b!6350753 (= e!3856924 tp!1769921)))

(declare-fun b!6350751 () Bool)

(assert (=> b!6350751 (= e!3856924 tp_is_empty!41763)))

(declare-fun b!6350754 () Bool)

(declare-fun tp!1769923 () Bool)

(declare-fun tp!1769925 () Bool)

(assert (=> b!6350754 (= e!3856924 (and tp!1769923 tp!1769925))))

(declare-fun b!6350752 () Bool)

(declare-fun tp!1769922 () Bool)

(declare-fun tp!1769924 () Bool)

(assert (=> b!6350752 (= e!3856924 (and tp!1769922 tp!1769924))))

(assert (=> b!6349029 (= tp!1769617 e!3856924)))

(assert (= (and b!6349029 ((_ is ElementMatch!16255) (regTwo!33022 (reg!16584 r!7292)))) b!6350751))

(assert (= (and b!6349029 ((_ is Concat!25100) (regTwo!33022 (reg!16584 r!7292)))) b!6350752))

(assert (= (and b!6349029 ((_ is Star!16255) (regTwo!33022 (reg!16584 r!7292)))) b!6350753))

(assert (= (and b!6349029 ((_ is Union!16255) (regTwo!33022 (reg!16584 r!7292)))) b!6350754))

(declare-fun b!6350757 () Bool)

(declare-fun e!3856925 () Bool)

(declare-fun tp!1769926 () Bool)

(assert (=> b!6350757 (= e!3856925 tp!1769926)))

(declare-fun b!6350755 () Bool)

(assert (=> b!6350755 (= e!3856925 tp_is_empty!41763)))

(declare-fun b!6350758 () Bool)

(declare-fun tp!1769928 () Bool)

(declare-fun tp!1769930 () Bool)

(assert (=> b!6350758 (= e!3856925 (and tp!1769928 tp!1769930))))

(declare-fun b!6350756 () Bool)

(declare-fun tp!1769927 () Bool)

(declare-fun tp!1769929 () Bool)

(assert (=> b!6350756 (= e!3856925 (and tp!1769927 tp!1769929))))

(assert (=> b!6349022 (= tp!1769605 e!3856925)))

(assert (= (and b!6349022 ((_ is ElementMatch!16255) (regOne!33023 (regTwo!33023 r!7292)))) b!6350755))

(assert (= (and b!6349022 ((_ is Concat!25100) (regOne!33023 (regTwo!33023 r!7292)))) b!6350756))

(assert (= (and b!6349022 ((_ is Star!16255) (regOne!33023 (regTwo!33023 r!7292)))) b!6350757))

(assert (= (and b!6349022 ((_ is Union!16255) (regOne!33023 (regTwo!33023 r!7292)))) b!6350758))

(declare-fun b!6350761 () Bool)

(declare-fun e!3856926 () Bool)

(declare-fun tp!1769931 () Bool)

(assert (=> b!6350761 (= e!3856926 tp!1769931)))

(declare-fun b!6350759 () Bool)

(assert (=> b!6350759 (= e!3856926 tp_is_empty!41763)))

(declare-fun b!6350762 () Bool)

(declare-fun tp!1769933 () Bool)

(declare-fun tp!1769935 () Bool)

(assert (=> b!6350762 (= e!3856926 (and tp!1769933 tp!1769935))))

(declare-fun b!6350760 () Bool)

(declare-fun tp!1769932 () Bool)

(declare-fun tp!1769934 () Bool)

(assert (=> b!6350760 (= e!3856926 (and tp!1769932 tp!1769934))))

(assert (=> b!6349022 (= tp!1769607 e!3856926)))

(assert (= (and b!6349022 ((_ is ElementMatch!16255) (regTwo!33023 (regTwo!33023 r!7292)))) b!6350759))

(assert (= (and b!6349022 ((_ is Concat!25100) (regTwo!33023 (regTwo!33023 r!7292)))) b!6350760))

(assert (= (and b!6349022 ((_ is Star!16255) (regTwo!33023 (regTwo!33023 r!7292)))) b!6350761))

(assert (= (and b!6349022 ((_ is Union!16255) (regTwo!33023 (regTwo!33023 r!7292)))) b!6350762))

(declare-fun b!6350765 () Bool)

(declare-fun e!3856927 () Bool)

(declare-fun tp!1769936 () Bool)

(assert (=> b!6350765 (= e!3856927 tp!1769936)))

(declare-fun b!6350763 () Bool)

(assert (=> b!6350763 (= e!3856927 tp_is_empty!41763)))

(declare-fun b!6350766 () Bool)

(declare-fun tp!1769938 () Bool)

(declare-fun tp!1769940 () Bool)

(assert (=> b!6350766 (= e!3856927 (and tp!1769938 tp!1769940))))

(declare-fun b!6350764 () Bool)

(declare-fun tp!1769937 () Bool)

(declare-fun tp!1769939 () Bool)

(assert (=> b!6350764 (= e!3856927 (and tp!1769937 tp!1769939))))

(assert (=> b!6349014 (= tp!1769596 e!3856927)))

(assert (= (and b!6349014 ((_ is ElementMatch!16255) (h!71388 (exprs!6139 setElem!43224)))) b!6350763))

(assert (= (and b!6349014 ((_ is Concat!25100) (h!71388 (exprs!6139 setElem!43224)))) b!6350764))

(assert (= (and b!6349014 ((_ is Star!16255) (h!71388 (exprs!6139 setElem!43224)))) b!6350765))

(assert (= (and b!6349014 ((_ is Union!16255) (h!71388 (exprs!6139 setElem!43224)))) b!6350766))

(declare-fun b!6350767 () Bool)

(declare-fun e!3856928 () Bool)

(declare-fun tp!1769941 () Bool)

(declare-fun tp!1769942 () Bool)

(assert (=> b!6350767 (= e!3856928 (and tp!1769941 tp!1769942))))

(assert (=> b!6349014 (= tp!1769597 e!3856928)))

(assert (= (and b!6349014 ((_ is Cons!64940) (t!378652 (exprs!6139 setElem!43224)))) b!6350767))

(declare-fun b_lambda!241577 () Bool)

(assert (= b_lambda!241559 (or d!1992059 b_lambda!241577)))

(declare-fun bs!1590808 () Bool)

(declare-fun d!1992881 () Bool)

(assert (= bs!1590808 (and d!1992881 d!1992059)))

(assert (=> bs!1590808 (= (dynLambda!25748 lambda!349175 (h!71388 lt!2364328)) (validRegex!7991 (h!71388 lt!2364328)))))

(declare-fun m!7157814 () Bool)

(assert (=> bs!1590808 m!7157814))

(assert (=> b!6350325 d!1992881))

(declare-fun b_lambda!241579 () Bool)

(assert (= b_lambda!241523 (or d!1991959 b_lambda!241579)))

(declare-fun bs!1590809 () Bool)

(declare-fun d!1992883 () Bool)

(assert (= bs!1590809 (and d!1992883 d!1991959)))

(assert (=> bs!1590809 (= (dynLambda!25748 lambda!349128 (h!71388 (exprs!6139 setElem!43224))) (validRegex!7991 (h!71388 (exprs!6139 setElem!43224))))))

(declare-fun m!7157816 () Bool)

(assert (=> bs!1590809 m!7157816))

(assert (=> b!6349790 d!1992883))

(declare-fun b_lambda!241581 () Bool)

(assert (= b_lambda!241565 (or b!6348017 b_lambda!241581)))

(assert (=> d!1992743 d!1992077))

(declare-fun b_lambda!241583 () Bool)

(assert (= b_lambda!241573 (or b!6348951 b_lambda!241583)))

(declare-fun bs!1590810 () Bool)

(declare-fun d!1992885 () Bool)

(assert (= bs!1590810 (and d!1992885 b!6348951)))

(assert (=> bs!1590810 (= (dynLambda!25751 lambda!349183 (h!71390 (t!378654 lt!2364170))) (>= lt!2364340 (contextDepth!251 (h!71390 (t!378654 lt!2364170)))))))

(assert (=> bs!1590810 m!7157778))

(assert (=> b!6350637 d!1992885))

(declare-fun b_lambda!241585 () Bool)

(assert (= b_lambda!241569 (or d!1992027 b_lambda!241585)))

(declare-fun bs!1590811 () Bool)

(declare-fun d!1992887 () Bool)

(assert (= bs!1590811 (and d!1992887 d!1992027)))

(assert (=> bs!1590811 (= (dynLambda!25748 lambda!349163 (h!71388 (t!378652 (exprs!6139 (h!71390 zl!343))))) (validRegex!7991 (h!71388 (t!378652 (exprs!6139 (h!71390 zl!343))))))))

(declare-fun m!7157818 () Bool)

(assert (=> bs!1590811 m!7157818))

(assert (=> b!6350535 d!1992887))

(declare-fun b_lambda!241587 () Bool)

(assert (= b_lambda!241567 (or d!1992049 b_lambda!241587)))

(declare-fun bs!1590812 () Bool)

(declare-fun d!1992889 () Bool)

(assert (= bs!1590812 (and d!1992889 d!1992049)))

(assert (=> bs!1590812 (= (dynLambda!25748 lambda!349169 (h!71388 lt!2364157)) (validRegex!7991 (h!71388 lt!2364157)))))

(declare-fun m!7157820 () Bool)

(assert (=> bs!1590812 m!7157820))

(assert (=> b!6350474 d!1992889))

(declare-fun b_lambda!241589 () Bool)

(assert (= b_lambda!241561 (or d!1992057 b_lambda!241589)))

(declare-fun bs!1590813 () Bool)

(declare-fun d!1992891 () Bool)

(assert (= bs!1590813 (and d!1992891 d!1992057)))

(assert (=> bs!1590813 (= (dynLambda!25748 lambda!349172 (h!71388 (unfocusZipperList!1676 zl!343))) (validRegex!7991 (h!71388 (unfocusZipperList!1676 zl!343))))))

(declare-fun m!7157822 () Bool)

(assert (=> bs!1590813 m!7157822))

(assert (=> b!6350359 d!1992891))

(declare-fun b_lambda!241591 () Bool)

(assert (= b_lambda!241557 (or b!6348958 b_lambda!241591)))

(declare-fun bs!1590814 () Bool)

(declare-fun d!1992893 () Bool)

(assert (= bs!1590814 (and d!1992893 b!6348958)))

(assert (=> bs!1590814 (= (dynLambda!25751 lambda!349187 (h!71390 zl!343)) (>= lt!2364341 (contextDepth!251 (h!71390 zl!343))))))

(assert (=> bs!1590814 m!7156138))

(assert (=> b!6350323 d!1992893))

(declare-fun b_lambda!241593 () Bool)

(assert (= b_lambda!241517 (or b!6348956 b_lambda!241593)))

(declare-fun bs!1590815 () Bool)

(declare-fun d!1992895 () Bool)

(assert (= bs!1590815 (and d!1992895 b!6348956)))

(assert (=> bs!1590815 (= (dynLambda!25751 lambda!349186 (h!71390 (t!378654 zl!343))) (>= lt!2364344 (contextDepth!251 (h!71390 (t!378654 zl!343)))))))

(assert (=> bs!1590815 m!7156824))

(assert (=> b!6349655 d!1992895))

(declare-fun b_lambda!241595 () Bool)

(assert (= b_lambda!241575 (or d!1991913 b_lambda!241595)))

(declare-fun bs!1590816 () Bool)

(declare-fun d!1992897 () Bool)

(assert (= bs!1590816 (and d!1992897 d!1991913)))

(assert (=> bs!1590816 (= (dynLambda!25748 lambda!349122 (h!71388 (exprs!6139 (h!71390 zl!343)))) (validRegex!7991 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(declare-fun m!7157824 () Bool)

(assert (=> bs!1590816 m!7157824))

(assert (=> b!6350650 d!1992897))

(declare-fun b_lambda!241597 () Bool)

(assert (= b_lambda!241563 (or b!6348017 b_lambda!241597)))

(assert (=> d!1992739 d!1992079))

(declare-fun b_lambda!241599 () Bool)

(assert (= b_lambda!241555 (or b!6348953 b_lambda!241599)))

(declare-fun bs!1590817 () Bool)

(declare-fun d!1992899 () Bool)

(assert (= bs!1590817 (and d!1992899 b!6348953)))

(assert (=> bs!1590817 (= (dynLambda!25751 lambda!349184 (h!71390 lt!2364170)) (>= lt!2364337 (contextDepth!251 (h!71390 lt!2364170))))))

(assert (=> bs!1590817 m!7156126))

(assert (=> b!6350310 d!1992899))

(declare-fun b_lambda!241601 () Bool)

(assert (= b_lambda!241513 (or d!1991903 b_lambda!241601)))

(declare-fun bs!1590818 () Bool)

(declare-fun d!1992901 () Bool)

(assert (= bs!1590818 (and d!1992901 d!1991903)))

(assert (=> bs!1590818 (= (dynLambda!25748 lambda!349111 (h!71388 (exprs!6139 (h!71390 zl!343)))) (validRegex!7991 (h!71388 (exprs!6139 (h!71390 zl!343)))))))

(assert (=> bs!1590818 m!7157824))

(assert (=> b!6349608 d!1992901))

(declare-fun b_lambda!241603 () Bool)

(assert (= b_lambda!241571 (or d!1992043 b_lambda!241603)))

(declare-fun bs!1590819 () Bool)

(declare-fun d!1992903 () Bool)

(assert (= bs!1590819 (and d!1992903 d!1992043)))

(assert (=> bs!1590819 (= (dynLambda!25748 lambda!349166 (h!71388 lt!2364159)) (validRegex!7991 (h!71388 lt!2364159)))))

(declare-fun m!7157826 () Bool)

(assert (=> bs!1590819 m!7157826))

(assert (=> b!6350587 d!1992903))

(check-sat (not b!6349803) (not b!6350341) (not b!6350224) (not b!6349966) (not b!6350598) (not b!6350748) (not d!1992559) (not b!6350724) (not d!1992645) (not b_lambda!241579) (not b!6350186) (not b!6350654) (not b!6350369) (not b!6350417) (not b!6350757) (not b!6350269) (not d!1992643) (not b!6350455) (not b!6350676) (not b_lambda!241581) (not bs!1590812) (not b!6350450) (not b!6350533) (not b!6350266) (not bm!541493) (not b!6350226) (not b!6350308) (not d!1992745) (not b!6349642) (not b!6350444) (not bm!541495) (not d!1992845) (not d!1992669) (not bs!1590816) (not bm!541478) (not bm!541512) (not b!6349574) (not b!6349999) (not b!6350227) (not b_lambda!241589) (not b!6350692) (not bm!541378) (not bm!541520) (not b!6350683) (not b!6350514) (not b!6350595) (not b!6349632) (not b!6350674) (not b!6350276) (not b!6350324) (not b!6350754) (not b!6350696) (not setNonEmpty!43236) (not b!6350688) (not bm!541377) (not bm!541529) (not d!1992629) (not b!6349521) (not bm!541488) (not bs!1590817) (not d!1992671) (not b!6350651) (not bm!541421) (not b!6350236) (not bs!1590814) (not bs!1590819) (not b!6350516) (not b!6350693) (not b!6350700) (not b!6350556) (not b!6350729) (not b!6350738) (not b!6349609) (not b!6349664) (not b!6350608) (not bs!1590813) (not b!6350400) (not bm!541476) (not b!6350638) (not b!6350716) (not d!1992639) (not bm!541360) (not b!6350180) (not d!1992811) (not bm!541531) (not b!6349571) (not bm!541477) (not b!6350448) (not bm!541469) (not b!6350484) (not d!1992443) (not b!6350427) (not b!6349579) (not bm!541373) (not bm!541475) (not b!6350704) (not b!6350758) (not b!6349948) (not b!6349578) (not bm!541530) (not b!6350725) (not b!6350663) (not bm!541365) (not bm!541524) (not b!6350261) (not b!6350640) (not b!6350203) (not b!6350648) (not d!1992777) (not b!6349857) (not d!1992709) (not bm!541444) (not bm!541536) (not bm!541544) (not b!6350667) (not bm!541468) (not d!1992831) (not b!6350639) (not bm!541527) (not d!1992355) (not d!1992503) (not b!6350475) (not bm!541486) (not b!6350728) (not bs!1590808) (not b!6350767) (not b!6349813) (not bm!541439) (not bm!541393) (not b!6350678) (not bm!541508) (not b!6350235) (not d!1992409) (not b!6350726) (not bm!541539) (not b!6349676) (not d!1992735) (not bs!1590811) (not b!6350717) (not b!6350309) (not b!6350766) (not d!1992865) (not bm!541518) (not bm!541368) (not d!1992433) (not b!6350449) (not b!6350671) (not d!1992867) (not b_lambda!241595) (not b!6350275) (not b!6350709) (not bm!541543) (not d!1992553) (not d!1992683) (not d!1992705) (not b!6350666) (not b!6350680) (not b!6350367) (not b!6349800) (not bm!541496) (not b_lambda!241601) (not b!6349656) (not bm!541547) (not b!6350494) (not bs!1590810) (not b!6350710) (not b!6350131) (not b!6350612) (not bm!541545) (not b_lambda!241587) (not d!1992375) (not b!6350633) (not d!1992401) (not d!1992725) (not bm!541389) (not b!6349755) (not bm!541466) (not b!6350333) (not b!6349686) (not b!6350720) (not b!6350685) (not d!1992869) (not b!6350732) (not b!6350565) (not b!6350657) (not b!6350274) (not setNonEmpty!43240) (not b!6350708) (not b!6350684) (not b!6350286) (not d!1992747) (not bm!541555) (not bm!541526) (not d!1992691) (not bm!541440) (not d!1992711) (not b!6350557) (not b!6350536) (not b!6350453) (not b!6350177) (not b!6350706) (not b!6350753) (not b!6350234) (not b!6350521) (not b!6350588) (not d!1992631) (not d!1992775) (not b!6350721) (not b!6350260) (not b!6350734) (not b!6350222) (not bs!1590815) (not b!6349573) (not b!6350746) (not b!6350496) (not bm!541465) (not b!6350422) (not b!6350288) (not b!6350752) (not b!6350705) (not bm!541525) (not b!6350722) (not bm!541492) (not b_lambda!241585) (not b!6350443) (not d!1992699) (not b!6350230) (not b!6349795) (not b!6350761) (not b!6350445) (not b!6350360) (not d!1992809) (not d!1992469) (not b!6350169) (not b!6350730) (not d!1992803) (not bm!541438) (not d!1992647) (not bm!541551) (not bm!541472) (not d!1992337) (not d!1992695) (not b!6349630) (not d!1992829) (not b!6350435) (not b!6350617) (not d!1992659) (not b!6350493) (not b!6350289) (not b!6350211) (not d!1992547) (not d!1992445) (not bm!541359) (not bm!541462) (not bm!541404) (not b!6350490) (not b!6350655) (not bm!541412) (not b!6350573) (not b_lambda!241591) (not d!1992477) (not b!6350338) (not bm!541371) (not bm!541403) (not b!6350509) (not d!1992813) (not b_lambda!241597) (not bm!541420) (not b!6350273) (not b!6350697) (not b!6350328) (not bm!541485) (not b!6350712) (not b!6350272) (not b!6350364) (not b!6350463) (not b!6349798) (not b!6350503) (not b!6350741) (not b!6349791) (not bm!541517) (not b!6350756) (not b!6350283) (not d!1992849) (not b!6350287) (not setNonEmpty!43239) (not d!1992759) (not bm!541483) (not b!6350624) (not b!6350132) (not bm!541411) (not b_lambda!241489) (not b!6350106) (not bm!541556) (not b!6350737) (not b!6349568) (not b!6350762) (not b!6349570) (not b!6350600) (not b!6350524) (not b!6350326) (not bm!541391) (not b!6350442) (not bm!541519) (not b!6350259) (not d!1992461) (not b!6350589) (not b!6350736) (not b!6349957) (not b!6350560) (not b!6349543) (not d!1992339) (not b!6350745) (not b!6350669) (not b!6350176) (not bm!541523) (not b!6350446) (not b!6350555) (not d!1992557) (not d!1992817) (not bm!541511) (not d!1992819) (not b_lambda!241603) (not d!1992679) (not b!6350631) (not d!1992755) (not d!1992765) (not d!1992591) (not bm!541357) (not b!6350172) (not b!6349666) (not b!6350170) (not b!6350662) (not b!6350293) (not b!6350701) (not b!6350733) (not b!6350590) (not d!1992665) (not bm!541374) (not d!1992855) (not b!6350294) (not b!6350519) (not b!6350740) (not d!1992589) (not bm!541480) (not b!6350653) (not b!6350760) (not b!6350105) (not b!6350713) (not d!1992479) (not b_lambda!241583) (not d!1992761) (not bm!541515) (not b!6350562) (not bm!541455) (not b!6350665) (not b!6349794) (not bm!541481) (not b!6349668) (not b!6350329) (not bm!541367) (not b!6349572) (not bm!541513) (not b!6350405) (not b!6350507) (not b!6350282) (not bm!541548) (not b!6350424) (not b!6350542) (not bm!541456) (not b!6350594) (not b!6349667) (not b!6350412) (not b!6350744) (not b!6350418) (not b!6350285) (not b!6350591) (not b!6350280) (not d!1992585) (not b!6350603) (not b!6350316) tp_is_empty!41763 (not b!6350593) (not b!6350714) (not b!6349671) (not d!1992677) (not b!6350636) (not b!6350495) (not bm!541489) (not bm!541533) (not b!6350307) (not b!6350670) (not b!6350472) (not b!6350264) (not bs!1590809) (not b!6350168) (not bm!541510) (not b!6350204) (not b_lambda!241599) (not b!6350698) (not d!1992663) (not bm!541390) (not d!1992741) (not b!6350458) (not d!1992383) (not b!6350764) (not b!6350765) (not bm!541498) (not b!6350229) (not b!6350659) (not b!6350225) (not bm!541441) (not b!6350664) (not b!6350200) (not b!6350245) (not d!1992749) (not b!6350750) (not b!6349673) (not bm!541549) (not b!6349679) (not bm!541443) (not b!6350511) (not bm!541396) (not b!6350488) (not bm!541528) (not b!6350694) (not b!6350614) (not b!6349793) (not b!6350202) (not b_lambda!241491) (not d!1992555) (not d!1992737) (not b!6350299) (not b!6350672) (not b_lambda!241577) (not bm!541410) (not d!1992757) (not d!1992733) (not b!6350419) (not b!6350749) (not bm!541541) (not b!6350256) (not b!6350462) (not b!6350607) (not b!6350335) (not b!6350300) (not bm!541494) (not d!1992841) (not bm!541552) (not b!6350238) (not b!6349644) (not bm!541535) (not b!6350330) (not b!6350492) (not b!6350491) (not d!1992723) (not bm!541395) (not b!6350609) (not b!6350718) (not b!6350679) (not d!1992743) (not b!6350228) (not bm!541482) (not d!1992617) (not b_lambda!241593) (not d!1992649) (not b!6349554) (not b!6350702) (not bm!541473) (not b!6349720) (not bm!541463) (not b!6350585) (not d!1992481) (not b!6350675) (not d!1992667) (not b!6350658) (not b!6350690) (not b!6350634) (not b!6350372) (not b!6350311) (not b!6350547) (not b!6350681) (not d!1992853) (not b!6350357) (not b!6349864) (not b!6350171) (not b!6350362) (not d!1992739) (not b!6350686) (not b!6350363) (not bs!1590818) (not b!6350689) (not b!6350661) (not b!6350742))
(check-sat)
