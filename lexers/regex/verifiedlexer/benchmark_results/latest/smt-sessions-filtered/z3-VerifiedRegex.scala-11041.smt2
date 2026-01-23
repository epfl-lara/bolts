; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572386 () Bool)

(assert start!572386)

(declare-fun b!5468469 () Bool)

(assert (=> b!5468469 true))

(assert (=> b!5468469 true))

(declare-fun lambda!290793 () Int)

(declare-fun lambda!290792 () Int)

(assert (=> b!5468469 (not (= lambda!290793 lambda!290792))))

(assert (=> b!5468469 true))

(assert (=> b!5468469 true))

(declare-fun lambda!290794 () Int)

(assert (=> b!5468469 (not (= lambda!290794 lambda!290792))))

(assert (=> b!5468469 (not (= lambda!290794 lambda!290793))))

(assert (=> b!5468469 true))

(assert (=> b!5468469 true))

(declare-fun b!5468494 () Bool)

(assert (=> b!5468494 true))

(declare-fun b!5468466 () Bool)

(declare-fun res!2330137 () Bool)

(declare-fun e!3385408 () Bool)

(assert (=> b!5468466 (=> (not res!2330137) (not e!3385408))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30928 0))(
  ( (C!30929 (val!25166 Int)) )
))
(declare-datatypes ((Regex!15329 0))(
  ( (ElementMatch!15329 (c!955359 C!30928)) (Concat!24174 (regOne!31170 Regex!15329) (regTwo!31170 Regex!15329)) (EmptyExpr!15329) (Star!15329 (reg!15658 Regex!15329)) (EmptyLang!15329) (Union!15329 (regOne!31171 Regex!15329) (regTwo!31171 Regex!15329)) )
))
(declare-datatypes ((List!62286 0))(
  ( (Nil!62162) (Cons!62162 (h!68610 Regex!15329) (t!375515 List!62286)) )
))
(declare-datatypes ((Context!9426 0))(
  ( (Context!9427 (exprs!5213 List!62286)) )
))
(declare-fun z!1189 () (InoxSet Context!9426))

(declare-datatypes ((List!62287 0))(
  ( (Nil!62163) (Cons!62163 (h!68611 Context!9426) (t!375516 List!62287)) )
))
(declare-fun zl!343 () List!62287)

(declare-fun toList!9113 ((InoxSet Context!9426)) List!62287)

(assert (=> b!5468466 (= res!2330137 (= (toList!9113 z!1189) zl!343))))

(declare-fun b!5468467 () Bool)

(declare-fun e!3385415 () Bool)

(declare-fun lt!2234262 () Bool)

(assert (=> b!5468467 (= e!3385415 lt!2234262)))

(declare-fun b!5468468 () Bool)

(declare-fun e!3385419 () Bool)

(declare-fun tp!1503953 () Bool)

(assert (=> b!5468468 (= e!3385419 tp!1503953)))

(declare-fun e!3385407 () Bool)

(declare-fun e!3385417 () Bool)

(assert (=> b!5468469 (= e!3385407 e!3385417)))

(declare-fun res!2330135 () Bool)

(assert (=> b!5468469 (=> res!2330135 e!3385417)))

(declare-fun lt!2234278 () Bool)

(assert (=> b!5468469 (= res!2330135 (not (= lt!2234278 e!3385415)))))

(declare-fun res!2330140 () Bool)

(assert (=> b!5468469 (=> res!2330140 e!3385415)))

(declare-datatypes ((List!62288 0))(
  ( (Nil!62164) (Cons!62164 (h!68612 C!30928) (t!375517 List!62288)) )
))
(declare-fun s!2326 () List!62288)

(declare-fun isEmpty!34122 (List!62288) Bool)

(assert (=> b!5468469 (= res!2330140 (isEmpty!34122 s!2326))))

(declare-fun Exists!2508 (Int) Bool)

(assert (=> b!5468469 (= (Exists!2508 lambda!290792) (Exists!2508 lambda!290794))))

(declare-datatypes ((Unit!155108 0))(
  ( (Unit!155109) )
))
(declare-fun lt!2234270 () Unit!155108)

(declare-fun r!7292 () Regex!15329)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1158 (Regex!15329 Regex!15329 List!62288) Unit!155108)

(assert (=> b!5468469 (= lt!2234270 (lemmaExistCutMatchRandMatchRSpecEquivalent!1158 (reg!15658 r!7292) r!7292 s!2326))))

(assert (=> b!5468469 (= (Exists!2508 lambda!290792) (Exists!2508 lambda!290793))))

(declare-fun lt!2234282 () Unit!155108)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!482 (Regex!15329 List!62288) Unit!155108)

(assert (=> b!5468469 (= lt!2234282 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!482 (reg!15658 r!7292) s!2326))))

(assert (=> b!5468469 (= lt!2234262 (Exists!2508 lambda!290792))))

(declare-datatypes ((tuple2!65052 0))(
  ( (tuple2!65053 (_1!35829 List!62288) (_2!35829 List!62288)) )
))
(declare-datatypes ((Option!15438 0))(
  ( (None!15437) (Some!15437 (v!51466 tuple2!65052)) )
))
(declare-fun isDefined!12141 (Option!15438) Bool)

(declare-fun findConcatSeparation!1852 (Regex!15329 Regex!15329 List!62288 List!62288 List!62288) Option!15438)

(assert (=> b!5468469 (= lt!2234262 (isDefined!12141 (findConcatSeparation!1852 (reg!15658 r!7292) r!7292 Nil!62164 s!2326 s!2326)))))

(declare-fun lt!2234265 () Unit!155108)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1616 (Regex!15329 Regex!15329 List!62288) Unit!155108)

(assert (=> b!5468469 (= lt!2234265 (lemmaFindConcatSeparationEquivalentToExists!1616 (reg!15658 r!7292) r!7292 s!2326))))

(declare-fun b!5468470 () Bool)

(declare-fun e!3385420 () Bool)

(declare-fun e!3385413 () Bool)

(assert (=> b!5468470 (= e!3385420 e!3385413)))

(declare-fun res!2330130 () Bool)

(assert (=> b!5468470 (=> res!2330130 e!3385413)))

(declare-fun lt!2234285 () Context!9426)

(declare-fun lt!2234283 () (InoxSet Context!9426))

(declare-fun derivationStepZipperDown!755 (Regex!15329 Context!9426 C!30928) (InoxSet Context!9426))

(assert (=> b!5468470 (= res!2330130 (not (= lt!2234283 (derivationStepZipperDown!755 (reg!15658 r!7292) lt!2234285 (h!68612 s!2326)))))))

(declare-fun lt!2234260 () List!62286)

(assert (=> b!5468470 (= lt!2234285 (Context!9427 lt!2234260))))

(declare-fun lambda!290795 () Int)

(declare-fun lt!2234274 () (InoxSet Context!9426))

(declare-fun lt!2234279 () Context!9426)

(declare-fun flatMap!1032 ((InoxSet Context!9426) Int) (InoxSet Context!9426))

(declare-fun derivationStepZipperUp!681 (Context!9426 C!30928) (InoxSet Context!9426))

(assert (=> b!5468470 (= (flatMap!1032 lt!2234274 lambda!290795) (derivationStepZipperUp!681 lt!2234279 (h!68612 s!2326)))))

(declare-fun lt!2234284 () Unit!155108)

(declare-fun lemmaFlatMapOnSingletonSet!564 ((InoxSet Context!9426) Context!9426 Int) Unit!155108)

(assert (=> b!5468470 (= lt!2234284 (lemmaFlatMapOnSingletonSet!564 lt!2234274 lt!2234279 lambda!290795))))

(declare-fun lt!2234273 () (InoxSet Context!9426))

(assert (=> b!5468470 (= lt!2234273 (derivationStepZipperUp!681 lt!2234279 (h!68612 s!2326)))))

(assert (=> b!5468470 (= lt!2234274 (store ((as const (Array Context!9426 Bool)) false) lt!2234279 true))))

(assert (=> b!5468470 (= lt!2234279 (Context!9427 (Cons!62162 (reg!15658 r!7292) lt!2234260)))))

(assert (=> b!5468470 (= lt!2234260 (Cons!62162 r!7292 Nil!62162))))

(declare-fun b!5468471 () Bool)

(declare-fun e!3385409 () Bool)

(assert (=> b!5468471 (= e!3385409 (not e!3385407))))

(declare-fun res!2330131 () Bool)

(assert (=> b!5468471 (=> res!2330131 e!3385407)))

(get-info :version)

(assert (=> b!5468471 (= res!2330131 (not ((_ is Cons!62163) zl!343)))))

(declare-fun matchRSpec!2432 (Regex!15329 List!62288) Bool)

(assert (=> b!5468471 (= lt!2234278 (matchRSpec!2432 r!7292 s!2326))))

(declare-fun matchR!7514 (Regex!15329 List!62288) Bool)

(assert (=> b!5468471 (= lt!2234278 (matchR!7514 r!7292 s!2326))))

(declare-fun lt!2234272 () Unit!155108)

(declare-fun mainMatchTheorem!2432 (Regex!15329 List!62288) Unit!155108)

(assert (=> b!5468471 (= lt!2234272 (mainMatchTheorem!2432 r!7292 s!2326))))

(declare-fun b!5468472 () Bool)

(declare-fun e!3385406 () Bool)

(assert (=> b!5468472 (= e!3385417 e!3385406)))

(declare-fun res!2330134 () Bool)

(assert (=> b!5468472 (=> res!2330134 e!3385406)))

(declare-fun lt!2234271 () (InoxSet Context!9426))

(declare-fun lt!2234280 () (InoxSet Context!9426))

(assert (=> b!5468472 (= res!2330134 (not (= lt!2234271 lt!2234280)))))

(assert (=> b!5468472 (= lt!2234280 (derivationStepZipperDown!755 r!7292 (Context!9427 Nil!62162) (h!68612 s!2326)))))

(assert (=> b!5468472 (= lt!2234271 (derivationStepZipperUp!681 (Context!9427 (Cons!62162 r!7292 Nil!62162)) (h!68612 s!2326)))))

(declare-fun derivationStepZipper!1524 ((InoxSet Context!9426) C!30928) (InoxSet Context!9426))

(assert (=> b!5468472 (= lt!2234283 (derivationStepZipper!1524 z!1189 (h!68612 s!2326)))))

(declare-fun b!5468473 () Bool)

(declare-fun res!2330124 () Bool)

(declare-fun e!3385412 () Bool)

(assert (=> b!5468473 (=> res!2330124 e!3385412)))

(declare-fun unfocusZipper!1071 (List!62287) Regex!15329)

(assert (=> b!5468473 (= res!2330124 (not (= (unfocusZipper!1071 (Cons!62163 lt!2234285 Nil!62163)) r!7292)))))

(declare-fun tp!1503950 () Bool)

(declare-fun e!3385418 () Bool)

(declare-fun b!5468474 () Bool)

(declare-fun inv!81569 (Context!9426) Bool)

(assert (=> b!5468474 (= e!3385418 (and (inv!81569 (h!68611 zl!343)) e!3385419 tp!1503950))))

(declare-fun b!5468475 () Bool)

(declare-fun res!2330142 () Bool)

(assert (=> b!5468475 (=> res!2330142 e!3385407)))

(assert (=> b!5468475 (= res!2330142 (or ((_ is EmptyExpr!15329) r!7292) ((_ is EmptyLang!15329) r!7292) ((_ is ElementMatch!15329) r!7292) ((_ is Union!15329) r!7292) ((_ is Concat!24174) r!7292)))))

(declare-fun b!5468476 () Bool)

(declare-fun res!2330127 () Bool)

(assert (=> b!5468476 (=> res!2330127 e!3385417)))

(assert (=> b!5468476 (= res!2330127 ((_ is Nil!62164) s!2326))))

(declare-fun setIsEmpty!35875 () Bool)

(declare-fun setRes!35875 () Bool)

(assert (=> setIsEmpty!35875 setRes!35875))

(declare-fun b!5468477 () Bool)

(declare-fun res!2330125 () Bool)

(assert (=> b!5468477 (=> res!2330125 e!3385413)))

(declare-fun matchZipper!1547 ((InoxSet Context!9426) List!62288) Bool)

(assert (=> b!5468477 (= res!2330125 (not (= (matchZipper!1547 lt!2234274 s!2326) (matchZipper!1547 (derivationStepZipper!1524 lt!2234274 (h!68612 s!2326)) (t!375517 s!2326)))))))

(declare-fun b!5468478 () Bool)

(declare-fun e!3385410 () Bool)

(declare-fun tp_is_empty!39911 () Bool)

(declare-fun tp!1503955 () Bool)

(assert (=> b!5468478 (= e!3385410 (and tp_is_empty!39911 tp!1503955))))

(declare-fun b!5468479 () Bool)

(declare-fun res!2330141 () Bool)

(assert (=> b!5468479 (=> res!2330141 e!3385407)))

(assert (=> b!5468479 (= res!2330141 (not ((_ is Cons!62162) (exprs!5213 (h!68611 zl!343)))))))

(declare-fun b!5468480 () Bool)

(declare-fun e!3385416 () Bool)

(declare-fun tp!1503957 () Bool)

(assert (=> b!5468480 (= e!3385416 tp!1503957)))

(declare-fun res!2330144 () Bool)

(assert (=> start!572386 (=> (not res!2330144) (not e!3385408))))

(declare-fun validRegex!7065 (Regex!15329) Bool)

(assert (=> start!572386 (= res!2330144 (validRegex!7065 r!7292))))

(assert (=> start!572386 e!3385408))

(assert (=> start!572386 e!3385416))

(declare-fun condSetEmpty!35875 () Bool)

(assert (=> start!572386 (= condSetEmpty!35875 (= z!1189 ((as const (Array Context!9426 Bool)) false)))))

(assert (=> start!572386 setRes!35875))

(assert (=> start!572386 e!3385418))

(assert (=> start!572386 e!3385410))

(declare-fun b!5468481 () Bool)

(assert (=> b!5468481 (= e!3385408 e!3385409)))

(declare-fun res!2330136 () Bool)

(assert (=> b!5468481 (=> (not res!2330136) (not e!3385409))))

(declare-fun lt!2234266 () Regex!15329)

(assert (=> b!5468481 (= res!2330136 (= r!7292 lt!2234266))))

(assert (=> b!5468481 (= lt!2234266 (unfocusZipper!1071 zl!343))))

(declare-fun b!5468482 () Bool)

(declare-fun res!2330133 () Bool)

(assert (=> b!5468482 (=> res!2330133 e!3385413)))

(assert (=> b!5468482 (= res!2330133 (or (not (= lt!2234266 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5468483 () Bool)

(declare-fun res!2330143 () Bool)

(assert (=> b!5468483 (=> res!2330143 e!3385407)))

(declare-fun generalisedConcat!998 (List!62286) Regex!15329)

(assert (=> b!5468483 (= res!2330143 (not (= r!7292 (generalisedConcat!998 (exprs!5213 (h!68611 zl!343))))))))

(declare-fun b!5468484 () Bool)

(declare-fun tp!1503949 () Bool)

(declare-fun tp!1503951 () Bool)

(assert (=> b!5468484 (= e!3385416 (and tp!1503949 tp!1503951))))

(declare-fun b!5468485 () Bool)

(declare-fun e!3385411 () Bool)

(assert (=> b!5468485 (= e!3385413 e!3385411)))

(declare-fun res!2330129 () Bool)

(assert (=> b!5468485 (=> res!2330129 e!3385411)))

(declare-fun lt!2234268 () Regex!15329)

(assert (=> b!5468485 (= res!2330129 (not (= (unfocusZipper!1071 (Cons!62163 lt!2234279 Nil!62163)) lt!2234268)))))

(assert (=> b!5468485 (= lt!2234268 (Concat!24174 (reg!15658 r!7292) r!7292))))

(declare-fun b!5468486 () Bool)

(declare-fun e!3385414 () Bool)

(declare-fun tp!1503948 () Bool)

(assert (=> b!5468486 (= e!3385414 tp!1503948)))

(declare-fun b!5468487 () Bool)

(assert (=> b!5468487 (= e!3385411 e!3385412)))

(declare-fun res!2330132 () Bool)

(assert (=> b!5468487 (=> res!2330132 e!3385412)))

(declare-fun lt!2234275 () (InoxSet Context!9426))

(assert (=> b!5468487 (= res!2330132 (not (= lt!2234283 (derivationStepZipper!1524 lt!2234275 (h!68612 s!2326)))))))

(assert (=> b!5468487 (= (flatMap!1032 lt!2234275 lambda!290795) (derivationStepZipperUp!681 lt!2234285 (h!68612 s!2326)))))

(declare-fun lt!2234267 () Unit!155108)

(assert (=> b!5468487 (= lt!2234267 (lemmaFlatMapOnSingletonSet!564 lt!2234275 lt!2234285 lambda!290795))))

(declare-fun lt!2234263 () Context!9426)

(declare-fun lt!2234276 () (InoxSet Context!9426))

(assert (=> b!5468487 (= (flatMap!1032 lt!2234276 lambda!290795) (derivationStepZipperUp!681 lt!2234263 (h!68612 s!2326)))))

(declare-fun lt!2234269 () Unit!155108)

(assert (=> b!5468487 (= lt!2234269 (lemmaFlatMapOnSingletonSet!564 lt!2234276 lt!2234263 lambda!290795))))

(declare-fun lt!2234277 () (InoxSet Context!9426))

(assert (=> b!5468487 (= lt!2234277 (derivationStepZipperUp!681 lt!2234285 (h!68612 s!2326)))))

(declare-fun lt!2234281 () (InoxSet Context!9426))

(assert (=> b!5468487 (= lt!2234281 (derivationStepZipperUp!681 lt!2234263 (h!68612 s!2326)))))

(assert (=> b!5468487 (= lt!2234275 (store ((as const (Array Context!9426 Bool)) false) lt!2234285 true))))

(assert (=> b!5468487 (= lt!2234276 (store ((as const (Array Context!9426 Bool)) false) lt!2234263 true))))

(assert (=> b!5468487 (= lt!2234263 (Context!9427 (Cons!62162 (reg!15658 r!7292) Nil!62162)))))

(declare-fun b!5468488 () Bool)

(declare-fun tp!1503954 () Bool)

(declare-fun tp!1503952 () Bool)

(assert (=> b!5468488 (= e!3385416 (and tp!1503954 tp!1503952))))

(declare-fun b!5468489 () Bool)

(declare-fun res!2330139 () Bool)

(assert (=> b!5468489 (=> res!2330139 e!3385407)))

(declare-fun generalisedUnion!1258 (List!62286) Regex!15329)

(declare-fun unfocusZipperList!771 (List!62287) List!62286)

(assert (=> b!5468489 (= res!2330139 (not (= r!7292 (generalisedUnion!1258 (unfocusZipperList!771 zl!343)))))))

(declare-fun b!5468490 () Bool)

(assert (=> b!5468490 (= e!3385412 true)))

(assert (=> b!5468490 (= (matchR!7514 lt!2234268 s!2326) (matchRSpec!2432 lt!2234268 s!2326))))

(declare-fun lt!2234261 () Unit!155108)

(assert (=> b!5468490 (= lt!2234261 (mainMatchTheorem!2432 lt!2234268 s!2326))))

(declare-fun b!5468491 () Bool)

(declare-fun res!2330128 () Bool)

(assert (=> b!5468491 (=> res!2330128 e!3385412)))

(assert (=> b!5468491 (= res!2330128 (not (= (unfocusZipper!1071 (Cons!62163 lt!2234263 Nil!62163)) (reg!15658 r!7292))))))

(declare-fun b!5468492 () Bool)

(declare-fun res!2330126 () Bool)

(assert (=> b!5468492 (=> res!2330126 e!3385407)))

(declare-fun isEmpty!34123 (List!62287) Bool)

(assert (=> b!5468492 (= res!2330126 (not (isEmpty!34123 (t!375516 zl!343))))))

(declare-fun b!5468493 () Bool)

(assert (=> b!5468493 (= e!3385416 tp_is_empty!39911)))

(declare-fun setElem!35875 () Context!9426)

(declare-fun tp!1503956 () Bool)

(declare-fun setNonEmpty!35875 () Bool)

(assert (=> setNonEmpty!35875 (= setRes!35875 (and tp!1503956 (inv!81569 setElem!35875) e!3385414))))

(declare-fun setRest!35875 () (InoxSet Context!9426))

(assert (=> setNonEmpty!35875 (= z!1189 ((_ map or) (store ((as const (Array Context!9426 Bool)) false) setElem!35875 true) setRest!35875))))

(assert (=> b!5468494 (= e!3385406 e!3385420)))

(declare-fun res!2330138 () Bool)

(assert (=> b!5468494 (=> res!2330138 e!3385420)))

(assert (=> b!5468494 (= res!2330138 (not (= lt!2234283 lt!2234280)))))

(assert (=> b!5468494 (= (flatMap!1032 z!1189 lambda!290795) (derivationStepZipperUp!681 (h!68611 zl!343) (h!68612 s!2326)))))

(declare-fun lt!2234264 () Unit!155108)

(assert (=> b!5468494 (= lt!2234264 (lemmaFlatMapOnSingletonSet!564 z!1189 (h!68611 zl!343) lambda!290795))))

(assert (= (and start!572386 res!2330144) b!5468466))

(assert (= (and b!5468466 res!2330137) b!5468481))

(assert (= (and b!5468481 res!2330136) b!5468471))

(assert (= (and b!5468471 (not res!2330131)) b!5468492))

(assert (= (and b!5468492 (not res!2330126)) b!5468483))

(assert (= (and b!5468483 (not res!2330143)) b!5468479))

(assert (= (and b!5468479 (not res!2330141)) b!5468489))

(assert (= (and b!5468489 (not res!2330139)) b!5468475))

(assert (= (and b!5468475 (not res!2330142)) b!5468469))

(assert (= (and b!5468469 (not res!2330140)) b!5468467))

(assert (= (and b!5468469 (not res!2330135)) b!5468476))

(assert (= (and b!5468476 (not res!2330127)) b!5468472))

(assert (= (and b!5468472 (not res!2330134)) b!5468494))

(assert (= (and b!5468494 (not res!2330138)) b!5468470))

(assert (= (and b!5468470 (not res!2330130)) b!5468477))

(assert (= (and b!5468477 (not res!2330125)) b!5468482))

(assert (= (and b!5468482 (not res!2330133)) b!5468485))

(assert (= (and b!5468485 (not res!2330129)) b!5468487))

(assert (= (and b!5468487 (not res!2330132)) b!5468491))

(assert (= (and b!5468491 (not res!2330128)) b!5468473))

(assert (= (and b!5468473 (not res!2330124)) b!5468490))

(assert (= (and start!572386 ((_ is ElementMatch!15329) r!7292)) b!5468493))

(assert (= (and start!572386 ((_ is Concat!24174) r!7292)) b!5468488))

(assert (= (and start!572386 ((_ is Star!15329) r!7292)) b!5468480))

(assert (= (and start!572386 ((_ is Union!15329) r!7292)) b!5468484))

(assert (= (and start!572386 condSetEmpty!35875) setIsEmpty!35875))

(assert (= (and start!572386 (not condSetEmpty!35875)) setNonEmpty!35875))

(assert (= setNonEmpty!35875 b!5468486))

(assert (= b!5468474 b!5468468))

(assert (= (and start!572386 ((_ is Cons!62163) zl!343)) b!5468474))

(assert (= (and start!572386 ((_ is Cons!62164) s!2326)) b!5468478))

(declare-fun m!6487288 () Bool)

(assert (=> b!5468492 m!6487288))

(declare-fun m!6487290 () Bool)

(assert (=> b!5468471 m!6487290))

(declare-fun m!6487292 () Bool)

(assert (=> b!5468471 m!6487292))

(declare-fun m!6487294 () Bool)

(assert (=> b!5468471 m!6487294))

(declare-fun m!6487296 () Bool)

(assert (=> start!572386 m!6487296))

(declare-fun m!6487298 () Bool)

(assert (=> b!5468477 m!6487298))

(declare-fun m!6487300 () Bool)

(assert (=> b!5468477 m!6487300))

(assert (=> b!5468477 m!6487300))

(declare-fun m!6487302 () Bool)

(assert (=> b!5468477 m!6487302))

(declare-fun m!6487304 () Bool)

(assert (=> b!5468474 m!6487304))

(declare-fun m!6487306 () Bool)

(assert (=> b!5468487 m!6487306))

(declare-fun m!6487308 () Bool)

(assert (=> b!5468487 m!6487308))

(declare-fun m!6487310 () Bool)

(assert (=> b!5468487 m!6487310))

(declare-fun m!6487312 () Bool)

(assert (=> b!5468487 m!6487312))

(declare-fun m!6487314 () Bool)

(assert (=> b!5468487 m!6487314))

(declare-fun m!6487316 () Bool)

(assert (=> b!5468487 m!6487316))

(declare-fun m!6487318 () Bool)

(assert (=> b!5468487 m!6487318))

(declare-fun m!6487320 () Bool)

(assert (=> b!5468487 m!6487320))

(declare-fun m!6487322 () Bool)

(assert (=> b!5468487 m!6487322))

(declare-fun m!6487324 () Bool)

(assert (=> setNonEmpty!35875 m!6487324))

(declare-fun m!6487326 () Bool)

(assert (=> b!5468491 m!6487326))

(declare-fun m!6487328 () Bool)

(assert (=> b!5468485 m!6487328))

(declare-fun m!6487330 () Bool)

(assert (=> b!5468466 m!6487330))

(declare-fun m!6487332 () Bool)

(assert (=> b!5468473 m!6487332))

(declare-fun m!6487334 () Bool)

(assert (=> b!5468483 m!6487334))

(declare-fun m!6487336 () Bool)

(assert (=> b!5468470 m!6487336))

(declare-fun m!6487338 () Bool)

(assert (=> b!5468470 m!6487338))

(declare-fun m!6487340 () Bool)

(assert (=> b!5468470 m!6487340))

(declare-fun m!6487342 () Bool)

(assert (=> b!5468470 m!6487342))

(declare-fun m!6487344 () Bool)

(assert (=> b!5468470 m!6487344))

(declare-fun m!6487346 () Bool)

(assert (=> b!5468489 m!6487346))

(assert (=> b!5468489 m!6487346))

(declare-fun m!6487348 () Bool)

(assert (=> b!5468489 m!6487348))

(declare-fun m!6487350 () Bool)

(assert (=> b!5468469 m!6487350))

(declare-fun m!6487352 () Bool)

(assert (=> b!5468469 m!6487352))

(declare-fun m!6487354 () Bool)

(assert (=> b!5468469 m!6487354))

(assert (=> b!5468469 m!6487350))

(declare-fun m!6487356 () Bool)

(assert (=> b!5468469 m!6487356))

(declare-fun m!6487358 () Bool)

(assert (=> b!5468469 m!6487358))

(declare-fun m!6487360 () Bool)

(assert (=> b!5468469 m!6487360))

(assert (=> b!5468469 m!6487350))

(declare-fun m!6487362 () Bool)

(assert (=> b!5468469 m!6487362))

(assert (=> b!5468469 m!6487358))

(declare-fun m!6487364 () Bool)

(assert (=> b!5468469 m!6487364))

(declare-fun m!6487366 () Bool)

(assert (=> b!5468469 m!6487366))

(declare-fun m!6487368 () Bool)

(assert (=> b!5468481 m!6487368))

(declare-fun m!6487370 () Bool)

(assert (=> b!5468490 m!6487370))

(declare-fun m!6487372 () Bool)

(assert (=> b!5468490 m!6487372))

(declare-fun m!6487374 () Bool)

(assert (=> b!5468490 m!6487374))

(declare-fun m!6487376 () Bool)

(assert (=> b!5468472 m!6487376))

(declare-fun m!6487378 () Bool)

(assert (=> b!5468472 m!6487378))

(declare-fun m!6487380 () Bool)

(assert (=> b!5468472 m!6487380))

(declare-fun m!6487382 () Bool)

(assert (=> b!5468494 m!6487382))

(declare-fun m!6487384 () Bool)

(assert (=> b!5468494 m!6487384))

(declare-fun m!6487386 () Bool)

(assert (=> b!5468494 m!6487386))

(check-sat (not b!5468466) (not b!5468488) (not b!5468472) (not setNonEmpty!35875) (not b!5468487) (not b!5468477) (not b!5468478) (not b!5468485) (not b!5468489) (not b!5468481) (not b!5468469) (not b!5468471) (not b!5468474) (not start!572386) (not b!5468468) (not b!5468490) (not b!5468470) tp_is_empty!39911 (not b!5468494) (not b!5468473) (not b!5468492) (not b!5468491) (not b!5468483) (not b!5468486) (not b!5468480) (not b!5468484))
(check-sat)
