; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!622294 () Bool)

(assert start!622294)

(declare-fun b!6255310 () Bool)

(assert (=> b!6255310 true))

(assert (=> b!6255310 true))

(declare-fun lambda!342284 () Int)

(declare-fun lambda!342283 () Int)

(assert (=> b!6255310 (not (= lambda!342284 lambda!342283))))

(assert (=> b!6255310 true))

(assert (=> b!6255310 true))

(declare-fun b!6255283 () Bool)

(assert (=> b!6255283 true))

(declare-fun b!6255273 () Bool)

(declare-fun res!2581596 () Bool)

(declare-fun e!3805356 () Bool)

(assert (=> b!6255273 (=> res!2581596 e!3805356)))

(declare-datatypes ((C!32628 0))(
  ( (C!32629 (val!26016 Int)) )
))
(declare-datatypes ((Regex!16179 0))(
  ( (ElementMatch!16179 (c!1132342 C!32628)) (Concat!25024 (regOne!32870 Regex!16179) (regTwo!32870 Regex!16179)) (EmptyExpr!16179) (Star!16179 (reg!16508 Regex!16179)) (EmptyLang!16179) (Union!16179 (regOne!32871 Regex!16179) (regTwo!32871 Regex!16179)) )
))
(declare-fun r!7292 () Regex!16179)

(declare-datatypes ((List!64836 0))(
  ( (Nil!64712) (Cons!64712 (h!71160 Regex!16179) (t!378386 List!64836)) )
))
(declare-datatypes ((Context!11126 0))(
  ( (Context!11127 (exprs!6063 List!64836)) )
))
(declare-datatypes ((List!64837 0))(
  ( (Nil!64713) (Cons!64713 (h!71161 Context!11126) (t!378387 List!64837)) )
))
(declare-fun zl!343 () List!64837)

(declare-fun generalisedConcat!1776 (List!64836) Regex!16179)

(assert (=> b!6255273 (= res!2581596 (not (= r!7292 (generalisedConcat!1776 (exprs!6063 (h!71161 zl!343))))))))

(declare-fun b!6255274 () Bool)

(declare-fun e!3805362 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2349352 () (InoxSet Context!11126))

(declare-datatypes ((List!64838 0))(
  ( (Nil!64714) (Cons!64714 (h!71162 C!32628) (t!378388 List!64838)) )
))
(declare-fun s!2326 () List!64838)

(declare-fun matchZipper!2191 ((InoxSet Context!11126) List!64838) Bool)

(declare-fun derivationStepZipper!2145 ((InoxSet Context!11126) C!32628) (InoxSet Context!11126))

(assert (=> b!6255274 (= e!3805362 (not (matchZipper!2191 (derivationStepZipper!2145 lt!2349352 (h!71162 s!2326)) (t!378388 s!2326))))))

(declare-fun b!6255275 () Bool)

(declare-fun res!2581612 () Bool)

(declare-fun e!3805350 () Bool)

(assert (=> b!6255275 (=> (not res!2581612) (not e!3805350))))

(declare-fun z!1189 () (InoxSet Context!11126))

(declare-fun toList!9963 ((InoxSet Context!11126)) List!64837)

(assert (=> b!6255275 (= res!2581612 (= (toList!9963 z!1189) zl!343))))

(declare-fun tp!1745350 () Bool)

(declare-fun setNonEmpty!42530 () Bool)

(declare-fun setRes!42530 () Bool)

(declare-fun e!3805348 () Bool)

(declare-fun setElem!42530 () Context!11126)

(declare-fun inv!83694 (Context!11126) Bool)

(assert (=> setNonEmpty!42530 (= setRes!42530 (and tp!1745350 (inv!83694 setElem!42530) e!3805348))))

(declare-fun setRest!42530 () (InoxSet Context!11126))

(assert (=> setNonEmpty!42530 (= z!1189 ((_ map or) (store ((as const (Array Context!11126 Bool)) false) setElem!42530 true) setRest!42530))))

(declare-fun b!6255276 () Bool)

(declare-fun e!3805357 () Bool)

(declare-fun tp_is_empty!41611 () Bool)

(declare-fun tp!1745347 () Bool)

(assert (=> b!6255276 (= e!3805357 (and tp_is_empty!41611 tp!1745347))))

(declare-fun b!6255277 () Bool)

(declare-fun e!3805359 () Bool)

(declare-fun e!3805364 () Bool)

(assert (=> b!6255277 (= e!3805359 e!3805364)))

(declare-fun res!2581618 () Bool)

(assert (=> b!6255277 (=> res!2581618 e!3805364)))

(declare-fun lt!2349334 () (InoxSet Context!11126))

(declare-fun lt!2349354 () (InoxSet Context!11126))

(assert (=> b!6255277 (= res!2581618 (not (= lt!2349334 lt!2349354)))))

(declare-fun lt!2349351 () (InoxSet Context!11126))

(declare-fun lt!2349341 () (InoxSet Context!11126))

(assert (=> b!6255277 (= lt!2349354 ((_ map or) lt!2349351 lt!2349341))))

(declare-fun lt!2349345 () Context!11126)

(declare-fun derivationStepZipperDown!1427 (Regex!16179 Context!11126 C!32628) (InoxSet Context!11126))

(assert (=> b!6255277 (= lt!2349341 (derivationStepZipperDown!1427 (regTwo!32870 (regOne!32870 r!7292)) lt!2349345 (h!71162 s!2326)))))

(declare-fun lt!2349332 () Context!11126)

(assert (=> b!6255277 (= lt!2349351 (derivationStepZipperDown!1427 (regOne!32870 (regOne!32870 r!7292)) lt!2349332 (h!71162 s!2326)))))

(declare-fun lt!2349328 () List!64836)

(assert (=> b!6255277 (= lt!2349332 (Context!11127 lt!2349328))))

(assert (=> b!6255277 (= lt!2349328 (Cons!64712 (regTwo!32870 (regOne!32870 r!7292)) (t!378386 (exprs!6063 (h!71161 zl!343)))))))

(declare-fun b!6255278 () Bool)

(declare-fun res!2581605 () Bool)

(assert (=> b!6255278 (=> res!2581605 e!3805356)))

(declare-fun isEmpty!36738 (List!64837) Bool)

(assert (=> b!6255278 (= res!2581605 (not (isEmpty!36738 (t!378387 zl!343))))))

(declare-fun b!6255279 () Bool)

(declare-fun e!3805358 () Bool)

(assert (=> b!6255279 (= e!3805358 tp_is_empty!41611)))

(declare-fun b!6255280 () Bool)

(declare-fun res!2581592 () Bool)

(assert (=> b!6255280 (=> res!2581592 e!3805356)))

(get-info :version)

(assert (=> b!6255280 (= res!2581592 (or ((_ is EmptyExpr!16179) r!7292) ((_ is EmptyLang!16179) r!7292) ((_ is ElementMatch!16179) r!7292) ((_ is Union!16179) r!7292) (not ((_ is Concat!25024) r!7292))))))

(declare-fun b!6255282 () Bool)

(declare-fun res!2581616 () Bool)

(declare-fun e!3805345 () Bool)

(assert (=> b!6255282 (=> res!2581616 e!3805345)))

(assert (=> b!6255282 (= res!2581616 (not (= (exprs!6063 (h!71161 zl!343)) (Cons!64712 (Concat!25024 (regOne!32870 (regOne!32870 r!7292)) (regTwo!32870 (regOne!32870 r!7292))) (t!378386 (exprs!6063 (h!71161 zl!343)))))))))

(declare-fun e!3805347 () Bool)

(assert (=> b!6255283 (= e!3805347 e!3805359)))

(declare-fun res!2581606 () Bool)

(assert (=> b!6255283 (=> res!2581606 e!3805359)))

(assert (=> b!6255283 (= res!2581606 (or (and ((_ is ElementMatch!16179) (regOne!32870 r!7292)) (= (c!1132342 (regOne!32870 r!7292)) (h!71162 s!2326))) ((_ is Union!16179) (regOne!32870 r!7292)) (not ((_ is Concat!25024) (regOne!32870 r!7292)))))))

(declare-datatypes ((Unit!158047 0))(
  ( (Unit!158048) )
))
(declare-fun lt!2349325 () Unit!158047)

(declare-fun e!3805344 () Unit!158047)

(assert (=> b!6255283 (= lt!2349325 e!3805344)))

(declare-fun c!1132341 () Bool)

(declare-fun nullable!6172 (Regex!16179) Bool)

(assert (=> b!6255283 (= c!1132341 (nullable!6172 (h!71160 (exprs!6063 (h!71161 zl!343)))))))

(declare-fun lambda!342285 () Int)

(declare-fun flatMap!1684 ((InoxSet Context!11126) Int) (InoxSet Context!11126))

(declare-fun derivationStepZipperUp!1353 (Context!11126 C!32628) (InoxSet Context!11126))

(assert (=> b!6255283 (= (flatMap!1684 z!1189 lambda!342285) (derivationStepZipperUp!1353 (h!71161 zl!343) (h!71162 s!2326)))))

(declare-fun lt!2349348 () Unit!158047)

(declare-fun lemmaFlatMapOnSingletonSet!1210 ((InoxSet Context!11126) Context!11126 Int) Unit!158047)

(assert (=> b!6255283 (= lt!2349348 (lemmaFlatMapOnSingletonSet!1210 z!1189 (h!71161 zl!343) lambda!342285))))

(declare-fun lt!2349342 () (InoxSet Context!11126))

(assert (=> b!6255283 (= lt!2349342 (derivationStepZipperUp!1353 lt!2349345 (h!71162 s!2326)))))

(assert (=> b!6255283 (= lt!2349334 (derivationStepZipperDown!1427 (h!71160 (exprs!6063 (h!71161 zl!343))) lt!2349345 (h!71162 s!2326)))))

(assert (=> b!6255283 (= lt!2349345 (Context!11127 (t!378386 (exprs!6063 (h!71161 zl!343)))))))

(declare-fun lt!2349347 () (InoxSet Context!11126))

(assert (=> b!6255283 (= lt!2349347 (derivationStepZipperUp!1353 (Context!11127 (Cons!64712 (h!71160 (exprs!6063 (h!71161 zl!343))) (t!378386 (exprs!6063 (h!71161 zl!343))))) (h!71162 s!2326)))))

(declare-fun b!6255284 () Bool)

(declare-fun Unit!158049 () Unit!158047)

(assert (=> b!6255284 (= e!3805344 Unit!158049)))

(declare-fun lt!2349336 () Unit!158047)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1010 ((InoxSet Context!11126) (InoxSet Context!11126) List!64838) Unit!158047)

(assert (=> b!6255284 (= lt!2349336 (lemmaZipperConcatMatchesSameAsBothZippers!1010 lt!2349334 lt!2349342 (t!378388 s!2326)))))

(declare-fun res!2581608 () Bool)

(assert (=> b!6255284 (= res!2581608 (matchZipper!2191 lt!2349334 (t!378388 s!2326)))))

(declare-fun e!3805349 () Bool)

(assert (=> b!6255284 (=> res!2581608 e!3805349)))

(assert (=> b!6255284 (= (matchZipper!2191 ((_ map or) lt!2349334 lt!2349342) (t!378388 s!2326)) e!3805349)))

(declare-fun b!6255285 () Bool)

(declare-fun tp!1745349 () Bool)

(assert (=> b!6255285 (= e!3805348 tp!1745349)))

(declare-fun b!6255286 () Bool)

(declare-fun res!2581600 () Bool)

(assert (=> b!6255286 (=> res!2581600 e!3805347)))

(declare-fun isEmpty!36739 (List!64836) Bool)

(assert (=> b!6255286 (= res!2581600 (isEmpty!36739 (t!378386 (exprs!6063 (h!71161 zl!343)))))))

(declare-fun b!6255287 () Bool)

(declare-fun res!2581613 () Bool)

(declare-fun e!3805353 () Bool)

(assert (=> b!6255287 (=> res!2581613 e!3805353)))

(declare-fun lt!2349343 () (InoxSet Context!11126))

(declare-fun lt!2349337 () List!64837)

(assert (=> b!6255287 (= res!2581613 (not (= (toList!9963 lt!2349343) lt!2349337)))))

(declare-fun b!6255288 () Bool)

(declare-fun e!3805360 () Bool)

(assert (=> b!6255288 (= e!3805364 e!3805360)))

(declare-fun res!2581603 () Bool)

(assert (=> b!6255288 (=> res!2581603 e!3805360)))

(declare-fun e!3805355 () Bool)

(assert (=> b!6255288 (= res!2581603 e!3805355)))

(declare-fun res!2581615 () Bool)

(assert (=> b!6255288 (=> (not res!2581615) (not e!3805355))))

(declare-fun lt!2349323 () Bool)

(declare-fun lt!2349350 () Bool)

(assert (=> b!6255288 (= res!2581615 (not (= lt!2349323 lt!2349350)))))

(assert (=> b!6255288 (= lt!2349323 (matchZipper!2191 lt!2349334 (t!378388 s!2326)))))

(declare-fun e!3805346 () Bool)

(assert (=> b!6255288 (= (matchZipper!2191 lt!2349354 (t!378388 s!2326)) e!3805346)))

(declare-fun res!2581617 () Bool)

(assert (=> b!6255288 (=> res!2581617 e!3805346)))

(assert (=> b!6255288 (= res!2581617 lt!2349350)))

(assert (=> b!6255288 (= lt!2349350 (matchZipper!2191 lt!2349351 (t!378388 s!2326)))))

(declare-fun lt!2349353 () Unit!158047)

(assert (=> b!6255288 (= lt!2349353 (lemmaZipperConcatMatchesSameAsBothZippers!1010 lt!2349351 lt!2349341 (t!378388 s!2326)))))

(declare-fun b!6255289 () Bool)

(assert (=> b!6255289 (= e!3805349 (matchZipper!2191 lt!2349342 (t!378388 s!2326)))))

(declare-fun b!6255290 () Bool)

(declare-fun e!3805354 () Bool)

(declare-fun tp!1745354 () Bool)

(assert (=> b!6255290 (= e!3805354 tp!1745354)))

(declare-fun b!6255291 () Bool)

(assert (=> b!6255291 (= e!3805353 true)))

(declare-fun lt!2349331 () Int)

(declare-fun size!40302 (List!64838) Int)

(assert (=> b!6255291 (= lt!2349331 (size!40302 s!2326))))

(declare-fun b!6255292 () Bool)

(declare-fun res!2581593 () Bool)

(assert (=> b!6255292 (=> (not res!2581593) (not e!3805350))))

(declare-fun unfocusZipper!1921 (List!64837) Regex!16179)

(assert (=> b!6255292 (= res!2581593 (= r!7292 (unfocusZipper!1921 zl!343)))))

(declare-fun b!6255293 () Bool)

(declare-fun tp!1745352 () Bool)

(declare-fun tp!1745346 () Bool)

(assert (=> b!6255293 (= e!3805358 (and tp!1745352 tp!1745346))))

(declare-fun b!6255294 () Bool)

(declare-fun tp!1745351 () Bool)

(declare-fun tp!1745353 () Bool)

(assert (=> b!6255294 (= e!3805358 (and tp!1745351 tp!1745353))))

(declare-fun b!6255295 () Bool)

(declare-fun e!3805352 () Bool)

(assert (=> b!6255295 (= e!3805360 e!3805352)))

(declare-fun res!2581601 () Bool)

(assert (=> b!6255295 (=> res!2581601 e!3805352)))

(declare-fun lt!2349324 () (InoxSet Context!11126))

(declare-fun lt!2349333 () (InoxSet Context!11126))

(assert (=> b!6255295 (= res!2581601 (not (= lt!2349324 lt!2349333)))))

(declare-fun lt!2349344 () (InoxSet Context!11126))

(assert (=> b!6255295 (= lt!2349333 ((_ map or) lt!2349351 lt!2349344))))

(assert (=> b!6255295 (= lt!2349344 (derivationStepZipperUp!1353 lt!2349332 (h!71162 s!2326)))))

(declare-fun lt!2349326 () Context!11126)

(assert (=> b!6255295 (= (flatMap!1684 lt!2349343 lambda!342285) (derivationStepZipperUp!1353 lt!2349326 (h!71162 s!2326)))))

(declare-fun lt!2349329 () Unit!158047)

(assert (=> b!6255295 (= lt!2349329 (lemmaFlatMapOnSingletonSet!1210 lt!2349343 lt!2349326 lambda!342285))))

(declare-fun lt!2349335 () (InoxSet Context!11126))

(assert (=> b!6255295 (= lt!2349335 (derivationStepZipperUp!1353 lt!2349326 (h!71162 s!2326)))))

(assert (=> b!6255295 (= lt!2349324 (derivationStepZipper!2145 lt!2349343 (h!71162 s!2326)))))

(assert (=> b!6255295 (= lt!2349352 (store ((as const (Array Context!11126 Bool)) false) lt!2349332 true))))

(assert (=> b!6255295 (= lt!2349343 (store ((as const (Array Context!11126 Bool)) false) lt!2349326 true))))

(declare-fun lt!2349355 () List!64836)

(assert (=> b!6255295 (= lt!2349326 (Context!11127 lt!2349355))))

(assert (=> b!6255295 (= lt!2349355 (Cons!64712 (regOne!32870 (regOne!32870 r!7292)) lt!2349328))))

(declare-fun b!6255296 () Bool)

(assert (=> b!6255296 (= e!3805350 (not e!3805356))))

(declare-fun res!2581598 () Bool)

(assert (=> b!6255296 (=> res!2581598 e!3805356)))

(assert (=> b!6255296 (= res!2581598 (not ((_ is Cons!64713) zl!343)))))

(declare-fun lt!2349338 () Bool)

(declare-fun matchRSpec!3280 (Regex!16179 List!64838) Bool)

(assert (=> b!6255296 (= lt!2349338 (matchRSpec!3280 r!7292 s!2326))))

(declare-fun matchR!8362 (Regex!16179 List!64838) Bool)

(assert (=> b!6255296 (= lt!2349338 (matchR!8362 r!7292 s!2326))))

(declare-fun lt!2349346 () Unit!158047)

(declare-fun mainMatchTheorem!3280 (Regex!16179 List!64838) Unit!158047)

(assert (=> b!6255296 (= lt!2349346 (mainMatchTheorem!3280 r!7292 s!2326))))

(declare-fun b!6255297 () Bool)

(assert (=> b!6255297 (= e!3805346 (matchZipper!2191 lt!2349341 (t!378388 s!2326)))))

(declare-fun b!6255298 () Bool)

(declare-fun tp!1745348 () Bool)

(assert (=> b!6255298 (= e!3805358 tp!1745348)))

(declare-fun b!6255299 () Bool)

(declare-fun res!2581597 () Bool)

(assert (=> b!6255299 (=> res!2581597 e!3805356)))

(assert (=> b!6255299 (= res!2581597 (not ((_ is Cons!64712) (exprs!6063 (h!71161 zl!343)))))))

(declare-fun b!6255300 () Bool)

(declare-fun e!3805361 () Bool)

(assert (=> b!6255300 (= e!3805345 e!3805361)))

(declare-fun res!2581611 () Bool)

(assert (=> b!6255300 (=> res!2581611 e!3805361)))

(declare-fun zipperDepthTotal!332 (List!64837) Int)

(assert (=> b!6255300 (= res!2581611 (>= (zipperDepthTotal!332 lt!2349337) (zipperDepthTotal!332 zl!343)))))

(assert (=> b!6255300 (= lt!2349337 (Cons!64713 lt!2349326 Nil!64713))))

(declare-fun b!6255301 () Bool)

(declare-fun res!2581599 () Bool)

(assert (=> b!6255301 (=> res!2581599 e!3805359)))

(assert (=> b!6255301 (= res!2581599 (not (nullable!6172 (regOne!32870 (regOne!32870 r!7292)))))))

(declare-fun setIsEmpty!42530 () Bool)

(assert (=> setIsEmpty!42530 setRes!42530))

(declare-fun b!6255302 () Bool)

(declare-fun res!2581609 () Bool)

(assert (=> b!6255302 (=> res!2581609 e!3805353)))

(declare-fun lt!2349327 () Regex!16179)

(assert (=> b!6255302 (= res!2581609 (not (= lt!2349327 (unfocusZipper!1921 lt!2349337))))))

(declare-fun b!6255303 () Bool)

(declare-fun Unit!158050 () Unit!158047)

(assert (=> b!6255303 (= e!3805344 Unit!158050)))

(declare-fun b!6255304 () Bool)

(declare-fun e!3805351 () Bool)

(declare-fun tp!1745345 () Bool)

(assert (=> b!6255304 (= e!3805351 (and (inv!83694 (h!71161 zl!343)) e!3805354 tp!1745345))))

(declare-fun b!6255305 () Bool)

(declare-fun e!3805363 () Bool)

(assert (=> b!6255305 (= e!3805363 (matchZipper!2191 lt!2349344 (t!378388 s!2326)))))

(declare-fun b!6255306 () Bool)

(assert (=> b!6255306 (= e!3805355 (not (matchZipper!2191 lt!2349341 (t!378388 s!2326))))))

(declare-fun b!6255307 () Bool)

(assert (=> b!6255307 (= e!3805352 e!3805345)))

(declare-fun res!2581602 () Bool)

(assert (=> b!6255307 (=> res!2581602 e!3805345)))

(assert (=> b!6255307 (= res!2581602 e!3805362)))

(declare-fun res!2581594 () Bool)

(assert (=> b!6255307 (=> (not res!2581594) (not e!3805362))))

(assert (=> b!6255307 (= res!2581594 (not (= lt!2349323 (matchZipper!2191 lt!2349324 (t!378388 s!2326)))))))

(assert (=> b!6255307 (= (matchZipper!2191 lt!2349333 (t!378388 s!2326)) e!3805363)))

(declare-fun res!2581620 () Bool)

(assert (=> b!6255307 (=> res!2581620 e!3805363)))

(assert (=> b!6255307 (= res!2581620 lt!2349350)))

(declare-fun lt!2349349 () Unit!158047)

(assert (=> b!6255307 (= lt!2349349 (lemmaZipperConcatMatchesSameAsBothZippers!1010 lt!2349351 lt!2349344 (t!378388 s!2326)))))

(assert (=> b!6255307 (= (flatMap!1684 lt!2349352 lambda!342285) (derivationStepZipperUp!1353 lt!2349332 (h!71162 s!2326)))))

(declare-fun lt!2349340 () Unit!158047)

(assert (=> b!6255307 (= lt!2349340 (lemmaFlatMapOnSingletonSet!1210 lt!2349352 lt!2349332 lambda!342285))))

(declare-fun b!6255308 () Bool)

(declare-fun res!2581614 () Bool)

(assert (=> b!6255308 (=> res!2581614 e!3805345)))

(declare-fun contextDepthTotal!302 (Context!11126) Int)

(assert (=> b!6255308 (= res!2581614 (>= (contextDepthTotal!302 lt!2349326) (contextDepthTotal!302 (h!71161 zl!343))))))

(declare-fun b!6255309 () Bool)

(declare-fun res!2581595 () Bool)

(assert (=> b!6255309 (=> res!2581595 e!3805356)))

(declare-fun generalisedUnion!2023 (List!64836) Regex!16179)

(declare-fun unfocusZipperList!1600 (List!64837) List!64836)

(assert (=> b!6255309 (= res!2581595 (not (= r!7292 (generalisedUnion!2023 (unfocusZipperList!1600 zl!343)))))))

(assert (=> b!6255310 (= e!3805356 e!3805347)))

(declare-fun res!2581604 () Bool)

(assert (=> b!6255310 (=> res!2581604 e!3805347)))

(declare-fun lt!2349330 () Bool)

(assert (=> b!6255310 (= res!2581604 (or (not (= lt!2349338 lt!2349330)) ((_ is Nil!64714) s!2326)))))

(declare-fun Exists!3249 (Int) Bool)

(assert (=> b!6255310 (= (Exists!3249 lambda!342283) (Exists!3249 lambda!342284))))

(declare-fun lt!2349339 () Unit!158047)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1786 (Regex!16179 Regex!16179 List!64838) Unit!158047)

(assert (=> b!6255310 (= lt!2349339 (lemmaExistCutMatchRandMatchRSpecEquivalent!1786 (regOne!32870 r!7292) (regTwo!32870 r!7292) s!2326))))

(assert (=> b!6255310 (= lt!2349330 (Exists!3249 lambda!342283))))

(declare-datatypes ((tuple2!66316 0))(
  ( (tuple2!66317 (_1!36461 List!64838) (_2!36461 List!64838)) )
))
(declare-datatypes ((Option!16070 0))(
  ( (None!16069) (Some!16069 (v!52222 tuple2!66316)) )
))
(declare-fun isDefined!12773 (Option!16070) Bool)

(declare-fun findConcatSeparation!2484 (Regex!16179 Regex!16179 List!64838 List!64838 List!64838) Option!16070)

(assert (=> b!6255310 (= lt!2349330 (isDefined!12773 (findConcatSeparation!2484 (regOne!32870 r!7292) (regTwo!32870 r!7292) Nil!64714 s!2326 s!2326)))))

(declare-fun lt!2349356 () Unit!158047)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2248 (Regex!16179 Regex!16179 List!64838) Unit!158047)

(assert (=> b!6255310 (= lt!2349356 (lemmaFindConcatSeparationEquivalentToExists!2248 (regOne!32870 r!7292) (regTwo!32870 r!7292) s!2326))))

(declare-fun b!6255311 () Bool)

(declare-fun res!2581610 () Bool)

(assert (=> b!6255311 (=> res!2581610 e!3805361)))

(declare-fun zipperDepth!304 (List!64837) Int)

(assert (=> b!6255311 (= res!2581610 (> (zipperDepth!304 lt!2349337) (zipperDepth!304 zl!343)))))

(declare-fun b!6255281 () Bool)

(assert (=> b!6255281 (= e!3805361 e!3805353)))

(declare-fun res!2581607 () Bool)

(assert (=> b!6255281 (=> res!2581607 e!3805353)))

(declare-fun validRegex!7915 (Regex!16179) Bool)

(assert (=> b!6255281 (= res!2581607 (not (validRegex!7915 lt!2349327)))))

(assert (=> b!6255281 (= lt!2349327 (generalisedConcat!1776 lt!2349355))))

(declare-fun res!2581619 () Bool)

(assert (=> start!622294 (=> (not res!2581619) (not e!3805350))))

(assert (=> start!622294 (= res!2581619 (validRegex!7915 r!7292))))

(assert (=> start!622294 e!3805350))

(assert (=> start!622294 e!3805358))

(declare-fun condSetEmpty!42530 () Bool)

(assert (=> start!622294 (= condSetEmpty!42530 (= z!1189 ((as const (Array Context!11126 Bool)) false)))))

(assert (=> start!622294 setRes!42530))

(assert (=> start!622294 e!3805351))

(assert (=> start!622294 e!3805357))

(assert (= (and start!622294 res!2581619) b!6255275))

(assert (= (and b!6255275 res!2581612) b!6255292))

(assert (= (and b!6255292 res!2581593) b!6255296))

(assert (= (and b!6255296 (not res!2581598)) b!6255278))

(assert (= (and b!6255278 (not res!2581605)) b!6255273))

(assert (= (and b!6255273 (not res!2581596)) b!6255299))

(assert (= (and b!6255299 (not res!2581597)) b!6255309))

(assert (= (and b!6255309 (not res!2581595)) b!6255280))

(assert (= (and b!6255280 (not res!2581592)) b!6255310))

(assert (= (and b!6255310 (not res!2581604)) b!6255286))

(assert (= (and b!6255286 (not res!2581600)) b!6255283))

(assert (= (and b!6255283 c!1132341) b!6255284))

(assert (= (and b!6255283 (not c!1132341)) b!6255303))

(assert (= (and b!6255284 (not res!2581608)) b!6255289))

(assert (= (and b!6255283 (not res!2581606)) b!6255301))

(assert (= (and b!6255301 (not res!2581599)) b!6255277))

(assert (= (and b!6255277 (not res!2581618)) b!6255288))

(assert (= (and b!6255288 (not res!2581617)) b!6255297))

(assert (= (and b!6255288 res!2581615) b!6255306))

(assert (= (and b!6255288 (not res!2581603)) b!6255295))

(assert (= (and b!6255295 (not res!2581601)) b!6255307))

(assert (= (and b!6255307 (not res!2581620)) b!6255305))

(assert (= (and b!6255307 res!2581594) b!6255274))

(assert (= (and b!6255307 (not res!2581602)) b!6255282))

(assert (= (and b!6255282 (not res!2581616)) b!6255308))

(assert (= (and b!6255308 (not res!2581614)) b!6255300))

(assert (= (and b!6255300 (not res!2581611)) b!6255311))

(assert (= (and b!6255311 (not res!2581610)) b!6255281))

(assert (= (and b!6255281 (not res!2581607)) b!6255287))

(assert (= (and b!6255287 (not res!2581613)) b!6255302))

(assert (= (and b!6255302 (not res!2581609)) b!6255291))

(assert (= (and start!622294 ((_ is ElementMatch!16179) r!7292)) b!6255279))

(assert (= (and start!622294 ((_ is Concat!25024) r!7292)) b!6255294))

(assert (= (and start!622294 ((_ is Star!16179) r!7292)) b!6255298))

(assert (= (and start!622294 ((_ is Union!16179) r!7292)) b!6255293))

(assert (= (and start!622294 condSetEmpty!42530) setIsEmpty!42530))

(assert (= (and start!622294 (not condSetEmpty!42530)) setNonEmpty!42530))

(assert (= setNonEmpty!42530 b!6255285))

(assert (= b!6255304 b!6255290))

(assert (= (and start!622294 ((_ is Cons!64713) zl!343)) b!6255304))

(assert (= (and start!622294 ((_ is Cons!64714) s!2326)) b!6255276))

(declare-fun m!7078166 () Bool)

(assert (=> b!6255278 m!7078166))

(declare-fun m!7078168 () Bool)

(assert (=> b!6255302 m!7078168))

(declare-fun m!7078170 () Bool)

(assert (=> b!6255287 m!7078170))

(declare-fun m!7078172 () Bool)

(assert (=> b!6255286 m!7078172))

(declare-fun m!7078174 () Bool)

(assert (=> b!6255291 m!7078174))

(declare-fun m!7078176 () Bool)

(assert (=> b!6255311 m!7078176))

(declare-fun m!7078178 () Bool)

(assert (=> b!6255311 m!7078178))

(declare-fun m!7078180 () Bool)

(assert (=> b!6255273 m!7078180))

(declare-fun m!7078182 () Bool)

(assert (=> b!6255292 m!7078182))

(declare-fun m!7078184 () Bool)

(assert (=> b!6255305 m!7078184))

(declare-fun m!7078186 () Bool)

(assert (=> b!6255275 m!7078186))

(declare-fun m!7078188 () Bool)

(assert (=> b!6255307 m!7078188))

(declare-fun m!7078190 () Bool)

(assert (=> b!6255307 m!7078190))

(declare-fun m!7078192 () Bool)

(assert (=> b!6255307 m!7078192))

(declare-fun m!7078194 () Bool)

(assert (=> b!6255307 m!7078194))

(declare-fun m!7078196 () Bool)

(assert (=> b!6255307 m!7078196))

(declare-fun m!7078198 () Bool)

(assert (=> b!6255307 m!7078198))

(declare-fun m!7078200 () Bool)

(assert (=> b!6255308 m!7078200))

(declare-fun m!7078202 () Bool)

(assert (=> b!6255308 m!7078202))

(declare-fun m!7078204 () Bool)

(assert (=> b!6255284 m!7078204))

(declare-fun m!7078206 () Bool)

(assert (=> b!6255284 m!7078206))

(declare-fun m!7078208 () Bool)

(assert (=> b!6255284 m!7078208))

(declare-fun m!7078210 () Bool)

(assert (=> b!6255289 m!7078210))

(declare-fun m!7078212 () Bool)

(assert (=> b!6255277 m!7078212))

(declare-fun m!7078214 () Bool)

(assert (=> b!6255277 m!7078214))

(declare-fun m!7078216 () Bool)

(assert (=> b!6255309 m!7078216))

(assert (=> b!6255309 m!7078216))

(declare-fun m!7078218 () Bool)

(assert (=> b!6255309 m!7078218))

(declare-fun m!7078220 () Bool)

(assert (=> b!6255300 m!7078220))

(declare-fun m!7078222 () Bool)

(assert (=> b!6255300 m!7078222))

(declare-fun m!7078224 () Bool)

(assert (=> setNonEmpty!42530 m!7078224))

(declare-fun m!7078226 () Bool)

(assert (=> b!6255301 m!7078226))

(declare-fun m!7078228 () Bool)

(assert (=> b!6255304 m!7078228))

(declare-fun m!7078230 () Bool)

(assert (=> b!6255283 m!7078230))

(declare-fun m!7078232 () Bool)

(assert (=> b!6255283 m!7078232))

(declare-fun m!7078234 () Bool)

(assert (=> b!6255283 m!7078234))

(declare-fun m!7078236 () Bool)

(assert (=> b!6255283 m!7078236))

(declare-fun m!7078238 () Bool)

(assert (=> b!6255283 m!7078238))

(declare-fun m!7078240 () Bool)

(assert (=> b!6255283 m!7078240))

(declare-fun m!7078242 () Bool)

(assert (=> b!6255283 m!7078242))

(declare-fun m!7078244 () Bool)

(assert (=> start!622294 m!7078244))

(declare-fun m!7078246 () Bool)

(assert (=> b!6255274 m!7078246))

(assert (=> b!6255274 m!7078246))

(declare-fun m!7078248 () Bool)

(assert (=> b!6255274 m!7078248))

(declare-fun m!7078250 () Bool)

(assert (=> b!6255296 m!7078250))

(declare-fun m!7078252 () Bool)

(assert (=> b!6255296 m!7078252))

(declare-fun m!7078254 () Bool)

(assert (=> b!6255296 m!7078254))

(declare-fun m!7078256 () Bool)

(assert (=> b!6255297 m!7078256))

(declare-fun m!7078258 () Bool)

(assert (=> b!6255295 m!7078258))

(declare-fun m!7078260 () Bool)

(assert (=> b!6255295 m!7078260))

(assert (=> b!6255295 m!7078194))

(declare-fun m!7078262 () Bool)

(assert (=> b!6255295 m!7078262))

(declare-fun m!7078264 () Bool)

(assert (=> b!6255295 m!7078264))

(declare-fun m!7078266 () Bool)

(assert (=> b!6255295 m!7078266))

(declare-fun m!7078268 () Bool)

(assert (=> b!6255295 m!7078268))

(declare-fun m!7078270 () Bool)

(assert (=> b!6255281 m!7078270))

(declare-fun m!7078272 () Bool)

(assert (=> b!6255281 m!7078272))

(assert (=> b!6255306 m!7078256))

(declare-fun m!7078274 () Bool)

(assert (=> b!6255310 m!7078274))

(assert (=> b!6255310 m!7078274))

(declare-fun m!7078276 () Bool)

(assert (=> b!6255310 m!7078276))

(declare-fun m!7078278 () Bool)

(assert (=> b!6255310 m!7078278))

(declare-fun m!7078280 () Bool)

(assert (=> b!6255310 m!7078280))

(declare-fun m!7078282 () Bool)

(assert (=> b!6255310 m!7078282))

(assert (=> b!6255310 m!7078276))

(declare-fun m!7078284 () Bool)

(assert (=> b!6255310 m!7078284))

(assert (=> b!6255288 m!7078206))

(declare-fun m!7078286 () Bool)

(assert (=> b!6255288 m!7078286))

(declare-fun m!7078288 () Bool)

(assert (=> b!6255288 m!7078288))

(declare-fun m!7078290 () Bool)

(assert (=> b!6255288 m!7078290))

(check-sat (not b!6255290) (not b!6255277) (not b!6255298) (not b!6255286) (not b!6255311) (not b!6255297) (not b!6255304) (not b!6255301) (not b!6255293) (not b!6255275) (not b!6255278) (not b!6255310) (not b!6255305) (not b!6255292) (not b!6255291) (not b!6255308) tp_is_empty!41611 (not b!6255295) (not b!6255289) (not b!6255281) (not b!6255288) (not b!6255294) (not b!6255283) (not b!6255274) (not setNonEmpty!42530) (not start!622294) (not b!6255276) (not b!6255287) (not b!6255306) (not b!6255296) (not b!6255273) (not b!6255300) (not b!6255285) (not b!6255307) (not b!6255309) (not b!6255302) (not b!6255284))
(check-sat)
