; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558158 () Bool)

(assert start!558158)

(declare-fun b!5287407 () Bool)

(assert (=> b!5287407 true))

(assert (=> b!5287407 true))

(declare-fun lambda!267494 () Int)

(declare-fun lambda!267493 () Int)

(assert (=> b!5287407 (not (= lambda!267494 lambda!267493))))

(assert (=> b!5287407 true))

(assert (=> b!5287407 true))

(declare-fun b!5287420 () Bool)

(assert (=> b!5287420 true))

(declare-fun bs!1225192 () Bool)

(declare-fun b!5287408 () Bool)

(assert (= bs!1225192 (and b!5287408 b!5287407)))

(declare-datatypes ((C!30108 0))(
  ( (C!30109 (val!24756 Int)) )
))
(declare-datatypes ((Regex!14919 0))(
  ( (ElementMatch!14919 (c!916947 C!30108)) (Concat!23764 (regOne!30350 Regex!14919) (regTwo!30350 Regex!14919)) (EmptyExpr!14919) (Star!14919 (reg!15248 Regex!14919)) (EmptyLang!14919) (Union!14919 (regOne!30351 Regex!14919) (regTwo!30351 Regex!14919)) )
))
(declare-fun r!7292 () Regex!14919)

(declare-fun lambda!267496 () Int)

(declare-fun lt!2161030 () Regex!14919)

(assert (=> bs!1225192 (= (and (= (regOne!30350 (regOne!30350 r!7292)) (regOne!30350 r!7292)) (= lt!2161030 (regTwo!30350 r!7292))) (= lambda!267496 lambda!267493))))

(assert (=> bs!1225192 (not (= lambda!267496 lambda!267494))))

(assert (=> b!5287408 true))

(assert (=> b!5287408 true))

(assert (=> b!5287408 true))

(declare-fun lambda!267497 () Int)

(assert (=> bs!1225192 (not (= lambda!267497 lambda!267493))))

(assert (=> bs!1225192 (= (and (= (regOne!30350 (regOne!30350 r!7292)) (regOne!30350 r!7292)) (= lt!2161030 (regTwo!30350 r!7292))) (= lambda!267497 lambda!267494))))

(assert (=> b!5287408 (not (= lambda!267497 lambda!267496))))

(assert (=> b!5287408 true))

(assert (=> b!5287408 true))

(assert (=> b!5287408 true))

(declare-fun b!5287406 () Bool)

(declare-fun res!2242552 () Bool)

(declare-fun e!3287233 () Bool)

(assert (=> b!5287406 (=> res!2242552 e!3287233)))

(declare-datatypes ((List!61056 0))(
  ( (Nil!60932) (Cons!60932 (h!67380 Regex!14919) (t!374259 List!61056)) )
))
(declare-datatypes ((Context!8606 0))(
  ( (Context!8607 (exprs!4803 List!61056)) )
))
(declare-datatypes ((List!61057 0))(
  ( (Nil!60933) (Cons!60933 (h!67381 Context!8606) (t!374260 List!61057)) )
))
(declare-fun zl!343 () List!61057)

(declare-fun isEmpty!32887 (List!61056) Bool)

(assert (=> b!5287406 (= res!2242552 (isEmpty!32887 (t!374259 (exprs!4803 (h!67381 zl!343)))))))

(declare-fun e!3287229 () Bool)

(assert (=> b!5287407 (= e!3287229 e!3287233)))

(declare-fun res!2242536 () Bool)

(assert (=> b!5287407 (=> res!2242536 e!3287233)))

(declare-datatypes ((List!61058 0))(
  ( (Nil!60934) (Cons!60934 (h!67382 C!30108) (t!374261 List!61058)) )
))
(declare-fun s!2326 () List!61058)

(declare-fun lt!2161045 () Bool)

(declare-fun lt!2161054 () Bool)

(get-info :version)

(assert (=> b!5287407 (= res!2242536 (or (not (= lt!2161054 lt!2161045)) ((_ is Nil!60934) s!2326)))))

(declare-fun Exists!2100 (Int) Bool)

(assert (=> b!5287407 (= (Exists!2100 lambda!267493) (Exists!2100 lambda!267494))))

(declare-datatypes ((Unit!153194 0))(
  ( (Unit!153195) )
))
(declare-fun lt!2161052 () Unit!153194)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!754 (Regex!14919 Regex!14919 List!61058) Unit!153194)

(assert (=> b!5287407 (= lt!2161052 (lemmaExistCutMatchRandMatchRSpecEquivalent!754 (regOne!30350 r!7292) (regTwo!30350 r!7292) s!2326))))

(assert (=> b!5287407 (= lt!2161045 (Exists!2100 lambda!267493))))

(declare-datatypes ((tuple2!64236 0))(
  ( (tuple2!64237 (_1!35421 List!61058) (_2!35421 List!61058)) )
))
(declare-datatypes ((Option!15030 0))(
  ( (None!15029) (Some!15029 (v!51058 tuple2!64236)) )
))
(declare-fun isDefined!11733 (Option!15030) Bool)

(declare-fun findConcatSeparation!1444 (Regex!14919 Regex!14919 List!61058 List!61058 List!61058) Option!15030)

(assert (=> b!5287407 (= lt!2161045 (isDefined!11733 (findConcatSeparation!1444 (regOne!30350 r!7292) (regTwo!30350 r!7292) Nil!60934 s!2326 s!2326)))))

(declare-fun lt!2161028 () Unit!153194)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1208 (Regex!14919 Regex!14919 List!61058) Unit!153194)

(assert (=> b!5287407 (= lt!2161028 (lemmaFindConcatSeparationEquivalentToExists!1208 (regOne!30350 r!7292) (regTwo!30350 r!7292) s!2326))))

(declare-fun e!3287230 () Bool)

(assert (=> b!5287408 (= e!3287230 true)))

(assert (=> b!5287408 (= (Exists!2100 lambda!267496) (Exists!2100 lambda!267497))))

(declare-fun lt!2161051 () Unit!153194)

(assert (=> b!5287408 (= lt!2161051 (lemmaExistCutMatchRandMatchRSpecEquivalent!754 (regOne!30350 (regOne!30350 r!7292)) lt!2161030 s!2326))))

(assert (=> b!5287408 (= (isDefined!11733 (findConcatSeparation!1444 (regOne!30350 (regOne!30350 r!7292)) lt!2161030 Nil!60934 s!2326 s!2326)) (Exists!2100 lambda!267496))))

(declare-fun lt!2161050 () Unit!153194)

(assert (=> b!5287408 (= lt!2161050 (lemmaFindConcatSeparationEquivalentToExists!1208 (regOne!30350 (regOne!30350 r!7292)) lt!2161030 s!2326))))

(declare-fun lt!2161060 () Bool)

(declare-fun lt!2161044 () Regex!14919)

(declare-fun matchRSpec!2022 (Regex!14919 List!61058) Bool)

(assert (=> b!5287408 (= lt!2161060 (matchRSpec!2022 lt!2161044 s!2326))))

(declare-fun lt!2161062 () Unit!153194)

(declare-fun mainMatchTheorem!2022 (Regex!14919 List!61058) Unit!153194)

(assert (=> b!5287408 (= lt!2161062 (mainMatchTheorem!2022 lt!2161044 s!2326))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2161063 () (InoxSet Context!8606))

(declare-fun matchR!7104 (Regex!14919 List!61058) Bool)

(declare-fun matchZipper!1163 ((InoxSet Context!8606) List!61058) Bool)

(assert (=> b!5287408 (= (matchR!7104 lt!2161030 s!2326) (matchZipper!1163 lt!2161063 s!2326))))

(declare-fun lt!2161064 () Unit!153194)

(declare-fun lt!2161035 () Context!8606)

(declare-fun theoremZipperRegexEquiv!329 ((InoxSet Context!8606) List!61057 Regex!14919 List!61058) Unit!153194)

(assert (=> b!5287408 (= lt!2161064 (theoremZipperRegexEquiv!329 lt!2161063 (Cons!60933 lt!2161035 Nil!60933) lt!2161030 s!2326))))

(declare-fun lt!2161053 () List!61056)

(declare-fun generalisedConcat!588 (List!61056) Regex!14919)

(assert (=> b!5287408 (= lt!2161030 (generalisedConcat!588 lt!2161053))))

(declare-fun lt!2161033 () (InoxSet Context!8606))

(assert (=> b!5287408 (= lt!2161060 (matchZipper!1163 lt!2161033 s!2326))))

(assert (=> b!5287408 (= lt!2161060 (matchR!7104 lt!2161044 s!2326))))

(declare-fun lt!2161040 () Unit!153194)

(declare-fun lt!2161066 () List!61057)

(assert (=> b!5287408 (= lt!2161040 (theoremZipperRegexEquiv!329 lt!2161033 lt!2161066 lt!2161044 s!2326))))

(declare-fun lt!2161034 () List!61056)

(assert (=> b!5287408 (= lt!2161044 (generalisedConcat!588 lt!2161034))))

(declare-fun b!5287409 () Bool)

(declare-fun e!3287240 () Bool)

(declare-fun lt!2161049 () (InoxSet Context!8606))

(assert (=> b!5287409 (= e!3287240 (matchZipper!1163 lt!2161049 (t!374261 s!2326)))))

(declare-fun setIsEmpty!33923 () Bool)

(declare-fun setRes!33923 () Bool)

(assert (=> setIsEmpty!33923 setRes!33923))

(declare-fun b!5287410 () Bool)

(declare-fun e!3287237 () Bool)

(declare-fun tp!1476359 () Bool)

(assert (=> b!5287410 (= e!3287237 tp!1476359)))

(declare-fun b!5287411 () Bool)

(declare-fun e!3287234 () Bool)

(declare-fun lt!2161061 () (InoxSet Context!8606))

(assert (=> b!5287411 (= e!3287234 (matchZipper!1163 lt!2161061 (t!374261 s!2326)))))

(declare-fun b!5287412 () Bool)

(declare-fun res!2242539 () Bool)

(assert (=> b!5287412 (=> res!2242539 e!3287229)))

(assert (=> b!5287412 (= res!2242539 (not ((_ is Cons!60932) (exprs!4803 (h!67381 zl!343)))))))

(declare-fun b!5287413 () Bool)

(declare-fun e!3287243 () Bool)

(declare-fun tp_is_empty!39091 () Bool)

(declare-fun tp!1476356 () Bool)

(assert (=> b!5287413 (= e!3287243 (and tp_is_empty!39091 tp!1476356))))

(declare-fun b!5287414 () Bool)

(declare-fun e!3287235 () Bool)

(declare-fun e!3287244 () Bool)

(assert (=> b!5287414 (= e!3287235 e!3287244)))

(declare-fun res!2242543 () Bool)

(assert (=> b!5287414 (=> res!2242543 e!3287244)))

(declare-fun lt!2161037 () (InoxSet Context!8606))

(declare-fun lt!2161032 () (InoxSet Context!8606))

(assert (=> b!5287414 (= res!2242543 (not (= lt!2161037 lt!2161032)))))

(declare-fun lt!2161039 () (InoxSet Context!8606))

(declare-fun lt!2161048 () (InoxSet Context!8606))

(assert (=> b!5287414 (= lt!2161032 ((_ map or) lt!2161039 lt!2161048))))

(declare-fun derivationStepZipperUp!291 (Context!8606 C!30108) (InoxSet Context!8606))

(assert (=> b!5287414 (= lt!2161048 (derivationStepZipperUp!291 lt!2161035 (h!67382 s!2326)))))

(declare-fun lt!2161042 () Context!8606)

(declare-fun lambda!267495 () Int)

(declare-fun flatMap!646 ((InoxSet Context!8606) Int) (InoxSet Context!8606))

(assert (=> b!5287414 (= (flatMap!646 lt!2161033 lambda!267495) (derivationStepZipperUp!291 lt!2161042 (h!67382 s!2326)))))

(declare-fun lt!2161038 () Unit!153194)

(declare-fun lemmaFlatMapOnSingletonSet!178 ((InoxSet Context!8606) Context!8606 Int) Unit!153194)

(assert (=> b!5287414 (= lt!2161038 (lemmaFlatMapOnSingletonSet!178 lt!2161033 lt!2161042 lambda!267495))))

(declare-fun lt!2161043 () (InoxSet Context!8606))

(assert (=> b!5287414 (= lt!2161043 (derivationStepZipperUp!291 lt!2161042 (h!67382 s!2326)))))

(declare-fun derivationStepZipper!1162 ((InoxSet Context!8606) C!30108) (InoxSet Context!8606))

(assert (=> b!5287414 (= lt!2161037 (derivationStepZipper!1162 lt!2161033 (h!67382 s!2326)))))

(assert (=> b!5287414 (= lt!2161063 (store ((as const (Array Context!8606 Bool)) false) lt!2161035 true))))

(assert (=> b!5287414 (= lt!2161033 (store ((as const (Array Context!8606 Bool)) false) lt!2161042 true))))

(assert (=> b!5287414 (= lt!2161042 (Context!8607 lt!2161034))))

(assert (=> b!5287414 (= lt!2161034 (Cons!60932 (regOne!30350 (regOne!30350 r!7292)) lt!2161053))))

(declare-fun b!5287415 () Bool)

(declare-fun e!3287231 () Bool)

(assert (=> b!5287415 (= e!3287231 (not e!3287229))))

(declare-fun res!2242547 () Bool)

(assert (=> b!5287415 (=> res!2242547 e!3287229)))

(assert (=> b!5287415 (= res!2242547 (not ((_ is Cons!60933) zl!343)))))

(assert (=> b!5287415 (= lt!2161054 (matchRSpec!2022 r!7292 s!2326))))

(assert (=> b!5287415 (= lt!2161054 (matchR!7104 r!7292 s!2326))))

(declare-fun lt!2161058 () Unit!153194)

(assert (=> b!5287415 (= lt!2161058 (mainMatchTheorem!2022 r!7292 s!2326))))

(declare-fun tp!1476354 () Bool)

(declare-fun setNonEmpty!33923 () Bool)

(declare-fun setElem!33923 () Context!8606)

(declare-fun inv!80544 (Context!8606) Bool)

(assert (=> setNonEmpty!33923 (= setRes!33923 (and tp!1476354 (inv!80544 setElem!33923) e!3287237))))

(declare-fun z!1189 () (InoxSet Context!8606))

(declare-fun setRest!33923 () (InoxSet Context!8606))

(assert (=> setNonEmpty!33923 (= z!1189 ((_ map or) (store ((as const (Array Context!8606 Bool)) false) setElem!33923 true) setRest!33923))))

(declare-fun b!5287416 () Bool)

(declare-fun e!3287241 () Bool)

(declare-fun tp!1476360 () Bool)

(declare-fun tp!1476353 () Bool)

(assert (=> b!5287416 (= e!3287241 (and tp!1476360 tp!1476353))))

(declare-fun b!5287417 () Bool)

(declare-fun res!2242533 () Bool)

(assert (=> b!5287417 (=> res!2242533 e!3287229)))

(assert (=> b!5287417 (= res!2242533 (or ((_ is EmptyExpr!14919) r!7292) ((_ is EmptyLang!14919) r!7292) ((_ is ElementMatch!14919) r!7292) ((_ is Union!14919) r!7292) (not ((_ is Concat!23764) r!7292))))))

(declare-fun b!5287419 () Bool)

(declare-fun e!3287246 () Unit!153194)

(declare-fun Unit!153196 () Unit!153194)

(assert (=> b!5287419 (= e!3287246 Unit!153196)))

(declare-fun e!3287242 () Bool)

(assert (=> b!5287420 (= e!3287233 e!3287242)))

(declare-fun res!2242542 () Bool)

(assert (=> b!5287420 (=> res!2242542 e!3287242)))

(assert (=> b!5287420 (= res!2242542 (or (and ((_ is ElementMatch!14919) (regOne!30350 r!7292)) (= (c!916947 (regOne!30350 r!7292)) (h!67382 s!2326))) ((_ is Union!14919) (regOne!30350 r!7292)) (not ((_ is Concat!23764) (regOne!30350 r!7292)))))))

(declare-fun lt!2161029 () Unit!153194)

(assert (=> b!5287420 (= lt!2161029 e!3287246)))

(declare-fun c!916946 () Bool)

(declare-fun nullable!5088 (Regex!14919) Bool)

(assert (=> b!5287420 (= c!916946 (nullable!5088 (h!67380 (exprs!4803 (h!67381 zl!343)))))))

(assert (=> b!5287420 (= (flatMap!646 z!1189 lambda!267495) (derivationStepZipperUp!291 (h!67381 zl!343) (h!67382 s!2326)))))

(declare-fun lt!2161036 () Unit!153194)

(assert (=> b!5287420 (= lt!2161036 (lemmaFlatMapOnSingletonSet!178 z!1189 (h!67381 zl!343) lambda!267495))))

(declare-fun lt!2161041 () Context!8606)

(assert (=> b!5287420 (= lt!2161049 (derivationStepZipperUp!291 lt!2161041 (h!67382 s!2326)))))

(declare-fun lt!2161055 () (InoxSet Context!8606))

(declare-fun derivationStepZipperDown!367 (Regex!14919 Context!8606 C!30108) (InoxSet Context!8606))

(assert (=> b!5287420 (= lt!2161055 (derivationStepZipperDown!367 (h!67380 (exprs!4803 (h!67381 zl!343))) lt!2161041 (h!67382 s!2326)))))

(assert (=> b!5287420 (= lt!2161041 (Context!8607 (t!374259 (exprs!4803 (h!67381 zl!343)))))))

(declare-fun lt!2161056 () (InoxSet Context!8606))

(assert (=> b!5287420 (= lt!2161056 (derivationStepZipperUp!291 (Context!8607 (Cons!60932 (h!67380 (exprs!4803 (h!67381 zl!343))) (t!374259 (exprs!4803 (h!67381 zl!343))))) (h!67382 s!2326)))))

(declare-fun e!3287239 () Bool)

(declare-fun e!3287245 () Bool)

(declare-fun tp!1476355 () Bool)

(declare-fun b!5287421 () Bool)

(assert (=> b!5287421 (= e!3287245 (and (inv!80544 (h!67381 zl!343)) e!3287239 tp!1476355))))

(declare-fun b!5287422 () Bool)

(declare-fun res!2242553 () Bool)

(assert (=> b!5287422 (=> res!2242553 e!3287229)))

(assert (=> b!5287422 (= res!2242553 (not (= r!7292 (generalisedConcat!588 (exprs!4803 (h!67381 zl!343))))))))

(declare-fun b!5287423 () Bool)

(declare-fun e!3287238 () Bool)

(assert (=> b!5287423 (= e!3287242 e!3287238)))

(declare-fun res!2242546 () Bool)

(assert (=> b!5287423 (=> res!2242546 e!3287238)))

(declare-fun lt!2161065 () (InoxSet Context!8606))

(assert (=> b!5287423 (= res!2242546 (not (= lt!2161055 lt!2161065)))))

(assert (=> b!5287423 (= lt!2161065 ((_ map or) lt!2161039 lt!2161061))))

(assert (=> b!5287423 (= lt!2161061 (derivationStepZipperDown!367 (regTwo!30350 (regOne!30350 r!7292)) lt!2161041 (h!67382 s!2326)))))

(assert (=> b!5287423 (= lt!2161039 (derivationStepZipperDown!367 (regOne!30350 (regOne!30350 r!7292)) lt!2161035 (h!67382 s!2326)))))

(assert (=> b!5287423 (= lt!2161035 (Context!8607 lt!2161053))))

(assert (=> b!5287423 (= lt!2161053 (Cons!60932 (regTwo!30350 (regOne!30350 r!7292)) (t!374259 (exprs!4803 (h!67381 zl!343)))))))

(declare-fun b!5287424 () Bool)

(declare-fun res!2242545 () Bool)

(declare-fun e!3287236 () Bool)

(assert (=> b!5287424 (=> res!2242545 e!3287236)))

(assert (=> b!5287424 (= res!2242545 (not (= (exprs!4803 (h!67381 zl!343)) (Cons!60932 (Concat!23764 (regOne!30350 (regOne!30350 r!7292)) (regTwo!30350 (regOne!30350 r!7292))) (t!374259 (exprs!4803 (h!67381 zl!343)))))))))

(declare-fun b!5287425 () Bool)

(declare-fun res!2242554 () Bool)

(assert (=> b!5287425 (=> (not res!2242554) (not e!3287231))))

(declare-fun toList!8703 ((InoxSet Context!8606)) List!61057)

(assert (=> b!5287425 (= res!2242554 (= (toList!8703 z!1189) zl!343))))

(declare-fun b!5287426 () Bool)

(declare-fun res!2242540 () Bool)

(assert (=> b!5287426 (=> (not res!2242540) (not e!3287231))))

(declare-fun unfocusZipper!661 (List!61057) Regex!14919)

(assert (=> b!5287426 (= res!2242540 (= r!7292 (unfocusZipper!661 zl!343)))))

(declare-fun b!5287427 () Bool)

(declare-fun res!2242537 () Bool)

(assert (=> b!5287427 (=> res!2242537 e!3287242)))

(assert (=> b!5287427 (= res!2242537 (not (nullable!5088 (regOne!30350 (regOne!30350 r!7292)))))))

(declare-fun b!5287428 () Bool)

(declare-fun e!3287232 () Bool)

(assert (=> b!5287428 (= e!3287232 (not (matchZipper!1163 (derivationStepZipper!1162 lt!2161063 (h!67382 s!2326)) (t!374261 s!2326))))))

(declare-fun b!5287429 () Bool)

(declare-fun res!2242548 () Bool)

(assert (=> b!5287429 (=> res!2242548 e!3287230)))

(declare-fun zipperDepth!36 (List!61057) Int)

(assert (=> b!5287429 (= res!2242548 (> (zipperDepth!36 lt!2161066) (zipperDepth!36 zl!343)))))

(declare-fun b!5287430 () Bool)

(declare-fun res!2242535 () Bool)

(assert (=> b!5287430 (=> res!2242535 e!3287229)))

(declare-fun isEmpty!32888 (List!61057) Bool)

(assert (=> b!5287430 (= res!2242535 (not (isEmpty!32888 (t!374260 zl!343))))))

(declare-fun b!5287431 () Bool)

(declare-fun Unit!153197 () Unit!153194)

(assert (=> b!5287431 (= e!3287246 Unit!153197)))

(declare-fun lt!2161027 () Unit!153194)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!156 ((InoxSet Context!8606) (InoxSet Context!8606) List!61058) Unit!153194)

(assert (=> b!5287431 (= lt!2161027 (lemmaZipperConcatMatchesSameAsBothZippers!156 lt!2161055 lt!2161049 (t!374261 s!2326)))))

(declare-fun res!2242550 () Bool)

(assert (=> b!5287431 (= res!2242550 (matchZipper!1163 lt!2161055 (t!374261 s!2326)))))

(assert (=> b!5287431 (=> res!2242550 e!3287240)))

(assert (=> b!5287431 (= (matchZipper!1163 ((_ map or) lt!2161055 lt!2161049) (t!374261 s!2326)) e!3287240)))

(declare-fun b!5287432 () Bool)

(declare-fun res!2242544 () Bool)

(assert (=> b!5287432 (=> res!2242544 e!3287229)))

(declare-fun generalisedUnion!848 (List!61056) Regex!14919)

(declare-fun unfocusZipperList!361 (List!61057) List!61056)

(assert (=> b!5287432 (= res!2242544 (not (= r!7292 (generalisedUnion!848 (unfocusZipperList!361 zl!343)))))))

(declare-fun b!5287433 () Bool)

(declare-fun tp!1476358 () Bool)

(assert (=> b!5287433 (= e!3287239 tp!1476358)))

(declare-fun b!5287434 () Bool)

(declare-fun e!3287227 () Bool)

(assert (=> b!5287434 (= e!3287227 (matchZipper!1163 lt!2161048 (t!374261 s!2326)))))

(declare-fun b!5287435 () Bool)

(declare-fun tp!1476357 () Bool)

(assert (=> b!5287435 (= e!3287241 tp!1476357)))

(declare-fun b!5287436 () Bool)

(declare-fun tp!1476361 () Bool)

(declare-fun tp!1476352 () Bool)

(assert (=> b!5287436 (= e!3287241 (and tp!1476361 tp!1476352))))

(declare-fun b!5287437 () Bool)

(assert (=> b!5287437 (= e!3287241 tp_is_empty!39091)))

(declare-fun b!5287438 () Bool)

(assert (=> b!5287438 (= e!3287236 e!3287230)))

(declare-fun res!2242532 () Bool)

(assert (=> b!5287438 (=> res!2242532 e!3287230)))

(declare-fun zipperDepthTotal!80 (List!61057) Int)

(assert (=> b!5287438 (= res!2242532 (>= (zipperDepthTotal!80 lt!2161066) (zipperDepthTotal!80 zl!343)))))

(assert (=> b!5287438 (= lt!2161066 (Cons!60933 lt!2161042 Nil!60933))))

(declare-fun b!5287439 () Bool)

(assert (=> b!5287439 (= e!3287244 e!3287236)))

(declare-fun res!2242557 () Bool)

(assert (=> b!5287439 (=> res!2242557 e!3287236)))

(assert (=> b!5287439 (= res!2242557 e!3287232)))

(declare-fun res!2242541 () Bool)

(assert (=> b!5287439 (=> (not res!2242541) (not e!3287232))))

(declare-fun lt!2161059 () Bool)

(assert (=> b!5287439 (= res!2242541 (not (= lt!2161059 (matchZipper!1163 lt!2161037 (t!374261 s!2326)))))))

(assert (=> b!5287439 (= (matchZipper!1163 lt!2161032 (t!374261 s!2326)) e!3287227)))

(declare-fun res!2242534 () Bool)

(assert (=> b!5287439 (=> res!2242534 e!3287227)))

(declare-fun lt!2161047 () Bool)

(assert (=> b!5287439 (= res!2242534 lt!2161047)))

(declare-fun lt!2161057 () Unit!153194)

(assert (=> b!5287439 (= lt!2161057 (lemmaZipperConcatMatchesSameAsBothZippers!156 lt!2161039 lt!2161048 (t!374261 s!2326)))))

(assert (=> b!5287439 (= (flatMap!646 lt!2161063 lambda!267495) (derivationStepZipperUp!291 lt!2161035 (h!67382 s!2326)))))

(declare-fun lt!2161031 () Unit!153194)

(assert (=> b!5287439 (= lt!2161031 (lemmaFlatMapOnSingletonSet!178 lt!2161063 lt!2161035 lambda!267495))))

(declare-fun b!5287440 () Bool)

(assert (=> b!5287440 (= e!3287238 e!3287235)))

(declare-fun res!2242538 () Bool)

(assert (=> b!5287440 (=> res!2242538 e!3287235)))

(declare-fun e!3287228 () Bool)

(assert (=> b!5287440 (= res!2242538 e!3287228)))

(declare-fun res!2242555 () Bool)

(assert (=> b!5287440 (=> (not res!2242555) (not e!3287228))))

(assert (=> b!5287440 (= res!2242555 (not (= lt!2161059 lt!2161047)))))

(assert (=> b!5287440 (= lt!2161059 (matchZipper!1163 lt!2161055 (t!374261 s!2326)))))

(assert (=> b!5287440 (= (matchZipper!1163 lt!2161065 (t!374261 s!2326)) e!3287234)))

(declare-fun res!2242551 () Bool)

(assert (=> b!5287440 (=> res!2242551 e!3287234)))

(assert (=> b!5287440 (= res!2242551 lt!2161047)))

(assert (=> b!5287440 (= lt!2161047 (matchZipper!1163 lt!2161039 (t!374261 s!2326)))))

(declare-fun lt!2161046 () Unit!153194)

(assert (=> b!5287440 (= lt!2161046 (lemmaZipperConcatMatchesSameAsBothZippers!156 lt!2161039 lt!2161061 (t!374261 s!2326)))))

(declare-fun b!5287441 () Bool)

(declare-fun res!2242549 () Bool)

(assert (=> b!5287441 (=> res!2242549 e!3287236)))

(declare-fun contextDepthTotal!60 (Context!8606) Int)

(assert (=> b!5287441 (= res!2242549 (>= (contextDepthTotal!60 lt!2161042) (contextDepthTotal!60 (h!67381 zl!343))))))

(declare-fun res!2242556 () Bool)

(assert (=> start!558158 (=> (not res!2242556) (not e!3287231))))

(declare-fun validRegex!6655 (Regex!14919) Bool)

(assert (=> start!558158 (= res!2242556 (validRegex!6655 r!7292))))

(assert (=> start!558158 e!3287231))

(assert (=> start!558158 e!3287241))

(declare-fun condSetEmpty!33923 () Bool)

(assert (=> start!558158 (= condSetEmpty!33923 (= z!1189 ((as const (Array Context!8606 Bool)) false)))))

(assert (=> start!558158 setRes!33923))

(assert (=> start!558158 e!3287245))

(assert (=> start!558158 e!3287243))

(declare-fun b!5287418 () Bool)

(assert (=> b!5287418 (= e!3287228 (not (matchZipper!1163 lt!2161061 (t!374261 s!2326))))))

(assert (= (and start!558158 res!2242556) b!5287425))

(assert (= (and b!5287425 res!2242554) b!5287426))

(assert (= (and b!5287426 res!2242540) b!5287415))

(assert (= (and b!5287415 (not res!2242547)) b!5287430))

(assert (= (and b!5287430 (not res!2242535)) b!5287422))

(assert (= (and b!5287422 (not res!2242553)) b!5287412))

(assert (= (and b!5287412 (not res!2242539)) b!5287432))

(assert (= (and b!5287432 (not res!2242544)) b!5287417))

(assert (= (and b!5287417 (not res!2242533)) b!5287407))

(assert (= (and b!5287407 (not res!2242536)) b!5287406))

(assert (= (and b!5287406 (not res!2242552)) b!5287420))

(assert (= (and b!5287420 c!916946) b!5287431))

(assert (= (and b!5287420 (not c!916946)) b!5287419))

(assert (= (and b!5287431 (not res!2242550)) b!5287409))

(assert (= (and b!5287420 (not res!2242542)) b!5287427))

(assert (= (and b!5287427 (not res!2242537)) b!5287423))

(assert (= (and b!5287423 (not res!2242546)) b!5287440))

(assert (= (and b!5287440 (not res!2242551)) b!5287411))

(assert (= (and b!5287440 res!2242555) b!5287418))

(assert (= (and b!5287440 (not res!2242538)) b!5287414))

(assert (= (and b!5287414 (not res!2242543)) b!5287439))

(assert (= (and b!5287439 (not res!2242534)) b!5287434))

(assert (= (and b!5287439 res!2242541) b!5287428))

(assert (= (and b!5287439 (not res!2242557)) b!5287424))

(assert (= (and b!5287424 (not res!2242545)) b!5287441))

(assert (= (and b!5287441 (not res!2242549)) b!5287438))

(assert (= (and b!5287438 (not res!2242532)) b!5287429))

(assert (= (and b!5287429 (not res!2242548)) b!5287408))

(assert (= (and start!558158 ((_ is ElementMatch!14919) r!7292)) b!5287437))

(assert (= (and start!558158 ((_ is Concat!23764) r!7292)) b!5287436))

(assert (= (and start!558158 ((_ is Star!14919) r!7292)) b!5287435))

(assert (= (and start!558158 ((_ is Union!14919) r!7292)) b!5287416))

(assert (= (and start!558158 condSetEmpty!33923) setIsEmpty!33923))

(assert (= (and start!558158 (not condSetEmpty!33923)) setNonEmpty!33923))

(assert (= setNonEmpty!33923 b!5287410))

(assert (= b!5287421 b!5287433))

(assert (= (and start!558158 ((_ is Cons!60933) zl!343)) b!5287421))

(assert (= (and start!558158 ((_ is Cons!60934) s!2326)) b!5287413))

(declare-fun m!6324844 () Bool)

(assert (=> b!5287430 m!6324844))

(declare-fun m!6324846 () Bool)

(assert (=> b!5287408 m!6324846))

(declare-fun m!6324848 () Bool)

(assert (=> b!5287408 m!6324848))

(declare-fun m!6324850 () Bool)

(assert (=> b!5287408 m!6324850))

(declare-fun m!6324852 () Bool)

(assert (=> b!5287408 m!6324852))

(declare-fun m!6324854 () Bool)

(assert (=> b!5287408 m!6324854))

(declare-fun m!6324856 () Bool)

(assert (=> b!5287408 m!6324856))

(declare-fun m!6324858 () Bool)

(assert (=> b!5287408 m!6324858))

(declare-fun m!6324860 () Bool)

(assert (=> b!5287408 m!6324860))

(assert (=> b!5287408 m!6324850))

(declare-fun m!6324862 () Bool)

(assert (=> b!5287408 m!6324862))

(declare-fun m!6324864 () Bool)

(assert (=> b!5287408 m!6324864))

(declare-fun m!6324866 () Bool)

(assert (=> b!5287408 m!6324866))

(assert (=> b!5287408 m!6324860))

(declare-fun m!6324868 () Bool)

(assert (=> b!5287408 m!6324868))

(declare-fun m!6324870 () Bool)

(assert (=> b!5287408 m!6324870))

(declare-fun m!6324872 () Bool)

(assert (=> b!5287408 m!6324872))

(declare-fun m!6324874 () Bool)

(assert (=> b!5287408 m!6324874))

(declare-fun m!6324876 () Bool)

(assert (=> b!5287408 m!6324876))

(declare-fun m!6324878 () Bool)

(assert (=> b!5287422 m!6324878))

(declare-fun m!6324880 () Bool)

(assert (=> b!5287421 m!6324880))

(declare-fun m!6324882 () Bool)

(assert (=> b!5287415 m!6324882))

(declare-fun m!6324884 () Bool)

(assert (=> b!5287415 m!6324884))

(declare-fun m!6324886 () Bool)

(assert (=> b!5287415 m!6324886))

(declare-fun m!6324888 () Bool)

(assert (=> b!5287434 m!6324888))

(declare-fun m!6324890 () Bool)

(assert (=> b!5287406 m!6324890))

(declare-fun m!6324892 () Bool)

(assert (=> b!5287426 m!6324892))

(declare-fun m!6324894 () Bool)

(assert (=> b!5287423 m!6324894))

(declare-fun m!6324896 () Bool)

(assert (=> b!5287423 m!6324896))

(declare-fun m!6324898 () Bool)

(assert (=> b!5287427 m!6324898))

(declare-fun m!6324900 () Bool)

(assert (=> b!5287418 m!6324900))

(declare-fun m!6324902 () Bool)

(assert (=> b!5287407 m!6324902))

(declare-fun m!6324904 () Bool)

(assert (=> b!5287407 m!6324904))

(declare-fun m!6324906 () Bool)

(assert (=> b!5287407 m!6324906))

(declare-fun m!6324908 () Bool)

(assert (=> b!5287407 m!6324908))

(assert (=> b!5287407 m!6324908))

(declare-fun m!6324910 () Bool)

(assert (=> b!5287407 m!6324910))

(assert (=> b!5287407 m!6324902))

(declare-fun m!6324912 () Bool)

(assert (=> b!5287407 m!6324912))

(declare-fun m!6324914 () Bool)

(assert (=> b!5287440 m!6324914))

(declare-fun m!6324916 () Bool)

(assert (=> b!5287440 m!6324916))

(declare-fun m!6324918 () Bool)

(assert (=> b!5287440 m!6324918))

(declare-fun m!6324920 () Bool)

(assert (=> b!5287440 m!6324920))

(declare-fun m!6324922 () Bool)

(assert (=> b!5287431 m!6324922))

(assert (=> b!5287431 m!6324914))

(declare-fun m!6324924 () Bool)

(assert (=> b!5287431 m!6324924))

(declare-fun m!6324926 () Bool)

(assert (=> b!5287428 m!6324926))

(assert (=> b!5287428 m!6324926))

(declare-fun m!6324928 () Bool)

(assert (=> b!5287428 m!6324928))

(declare-fun m!6324930 () Bool)

(assert (=> setNonEmpty!33923 m!6324930))

(declare-fun m!6324932 () Bool)

(assert (=> b!5287441 m!6324932))

(declare-fun m!6324934 () Bool)

(assert (=> b!5287441 m!6324934))

(declare-fun m!6324936 () Bool)

(assert (=> b!5287429 m!6324936))

(declare-fun m!6324938 () Bool)

(assert (=> b!5287429 m!6324938))

(declare-fun m!6324940 () Bool)

(assert (=> b!5287438 m!6324940))

(declare-fun m!6324942 () Bool)

(assert (=> b!5287438 m!6324942))

(assert (=> b!5287411 m!6324900))

(declare-fun m!6324944 () Bool)

(assert (=> b!5287425 m!6324944))

(declare-fun m!6324946 () Bool)

(assert (=> b!5287414 m!6324946))

(declare-fun m!6324948 () Bool)

(assert (=> b!5287414 m!6324948))

(declare-fun m!6324950 () Bool)

(assert (=> b!5287414 m!6324950))

(declare-fun m!6324952 () Bool)

(assert (=> b!5287414 m!6324952))

(declare-fun m!6324954 () Bool)

(assert (=> b!5287414 m!6324954))

(declare-fun m!6324956 () Bool)

(assert (=> b!5287414 m!6324956))

(declare-fun m!6324958 () Bool)

(assert (=> b!5287414 m!6324958))

(declare-fun m!6324960 () Bool)

(assert (=> start!558158 m!6324960))

(declare-fun m!6324962 () Bool)

(assert (=> b!5287439 m!6324962))

(declare-fun m!6324964 () Bool)

(assert (=> b!5287439 m!6324964))

(assert (=> b!5287439 m!6324952))

(declare-fun m!6324966 () Bool)

(assert (=> b!5287439 m!6324966))

(declare-fun m!6324968 () Bool)

(assert (=> b!5287439 m!6324968))

(declare-fun m!6324970 () Bool)

(assert (=> b!5287439 m!6324970))

(declare-fun m!6324972 () Bool)

(assert (=> b!5287420 m!6324972))

(declare-fun m!6324974 () Bool)

(assert (=> b!5287420 m!6324974))

(declare-fun m!6324976 () Bool)

(assert (=> b!5287420 m!6324976))

(declare-fun m!6324978 () Bool)

(assert (=> b!5287420 m!6324978))

(declare-fun m!6324980 () Bool)

(assert (=> b!5287420 m!6324980))

(declare-fun m!6324982 () Bool)

(assert (=> b!5287420 m!6324982))

(declare-fun m!6324984 () Bool)

(assert (=> b!5287420 m!6324984))

(declare-fun m!6324986 () Bool)

(assert (=> b!5287432 m!6324986))

(assert (=> b!5287432 m!6324986))

(declare-fun m!6324988 () Bool)

(assert (=> b!5287432 m!6324988))

(declare-fun m!6324990 () Bool)

(assert (=> b!5287409 m!6324990))

(check-sat (not b!5287407) (not b!5287441) (not b!5287410) (not b!5287434) (not b!5287430) (not b!5287433) (not b!5287416) (not b!5287418) (not b!5287406) (not b!5287413) (not b!5287415) (not b!5287427) (not b!5287438) (not b!5287414) (not b!5287408) (not b!5287428) (not b!5287420) (not b!5287425) (not b!5287429) (not setNonEmpty!33923) (not b!5287439) (not b!5287440) (not b!5287426) (not b!5287422) (not b!5287421) (not b!5287411) (not start!558158) tp_is_empty!39091 (not b!5287435) (not b!5287409) (not b!5287436) (not b!5287431) (not b!5287423) (not b!5287432))
(check-sat)
