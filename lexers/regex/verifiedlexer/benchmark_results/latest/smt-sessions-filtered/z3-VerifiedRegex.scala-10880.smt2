; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562234 () Bool)

(assert start!562234)

(declare-fun b!5335397 () Bool)

(assert (=> b!5335397 true))

(assert (=> b!5335397 true))

(declare-fun lambda!273016 () Int)

(declare-fun lambda!273015 () Int)

(assert (=> b!5335397 (not (= lambda!273016 lambda!273015))))

(assert (=> b!5335397 true))

(assert (=> b!5335397 true))

(declare-fun b!5335403 () Bool)

(assert (=> b!5335403 true))

(declare-fun bs!1237308 () Bool)

(declare-fun b!5335419 () Bool)

(assert (= bs!1237308 (and b!5335419 b!5335397)))

(declare-datatypes ((C!30284 0))(
  ( (C!30285 (val!24844 Int)) )
))
(declare-datatypes ((Regex!15007 0))(
  ( (ElementMatch!15007 (c!928081 C!30284)) (Concat!23852 (regOne!30526 Regex!15007) (regTwo!30526 Regex!15007)) (EmptyExpr!15007) (Star!15007 (reg!15336 Regex!15007)) (EmptyLang!15007) (Union!15007 (regOne!30527 Regex!15007) (regTwo!30527 Regex!15007)) )
))
(declare-fun r!7292 () Regex!15007)

(declare-fun lt!2175943 () Regex!15007)

(declare-fun lambda!273018 () Int)

(assert (=> bs!1237308 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175943 (regTwo!30526 r!7292))) (= lambda!273018 lambda!273015))))

(assert (=> bs!1237308 (not (= lambda!273018 lambda!273016))))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(declare-fun lambda!273019 () Int)

(assert (=> bs!1237308 (not (= lambda!273019 lambda!273015))))

(assert (=> bs!1237308 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175943 (regTwo!30526 r!7292))) (= lambda!273019 lambda!273016))))

(assert (=> b!5335419 (not (= lambda!273019 lambda!273018))))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(declare-fun lt!2175937 () Regex!15007)

(declare-fun lambda!273020 () Int)

(assert (=> bs!1237308 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175937 (regTwo!30526 r!7292))) (= lambda!273020 lambda!273015))))

(assert (=> bs!1237308 (not (= lambda!273020 lambda!273016))))

(assert (=> b!5335419 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273020 lambda!273018))))

(assert (=> b!5335419 (not (= lambda!273020 lambda!273019))))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(declare-fun lambda!273021 () Int)

(assert (=> b!5335419 (not (= lambda!273021 lambda!273020))))

(assert (=> b!5335419 (not (= lambda!273021 lambda!273018))))

(assert (=> b!5335419 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273021 lambda!273019))))

(assert (=> bs!1237308 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175937 (regTwo!30526 r!7292))) (= lambda!273021 lambda!273016))))

(assert (=> bs!1237308 (not (= lambda!273021 lambda!273015))))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(assert (=> b!5335419 true))

(declare-fun b!5335388 () Bool)

(declare-fun res!2263151 () Bool)

(declare-fun e!3313477 () Bool)

(assert (=> b!5335388 (=> res!2263151 e!3313477)))

(declare-datatypes ((List!61320 0))(
  ( (Nil!61196) (Cons!61196 (h!67644 C!30284) (t!374537 List!61320)) )
))
(declare-fun s!2326 () List!61320)

(declare-fun lt!2175928 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61321 0))(
  ( (Nil!61197) (Cons!61197 (h!67645 Regex!15007) (t!374538 List!61321)) )
))
(declare-datatypes ((Context!8782 0))(
  ( (Context!8783 (exprs!4891 List!61321)) )
))
(declare-fun lt!2175934 () (InoxSet Context!8782))

(declare-fun matchZipper!1251 ((InoxSet Context!8782) List!61320) Bool)

(assert (=> b!5335388 (= res!2263151 (not (= lt!2175928 (matchZipper!1251 lt!2175934 (t!374537 s!2326)))))))

(declare-fun b!5335389 () Bool)

(declare-fun e!3313468 () Bool)

(declare-fun tp!1484281 () Bool)

(declare-fun tp!1484276 () Bool)

(assert (=> b!5335389 (= e!3313468 (and tp!1484281 tp!1484276))))

(declare-fun setElem!34411 () Context!8782)

(declare-fun e!3313469 () Bool)

(declare-fun setNonEmpty!34411 () Bool)

(declare-fun tp!1484272 () Bool)

(declare-fun setRes!34411 () Bool)

(declare-fun inv!80764 (Context!8782) Bool)

(assert (=> setNonEmpty!34411 (= setRes!34411 (and tp!1484272 (inv!80764 setElem!34411) e!3313469))))

(declare-fun z!1189 () (InoxSet Context!8782))

(declare-fun setRest!34411 () (InoxSet Context!8782))

(assert (=> setNonEmpty!34411 (= z!1189 ((_ map or) (store ((as const (Array Context!8782 Bool)) false) setElem!34411 true) setRest!34411))))

(declare-fun setIsEmpty!34411 () Bool)

(assert (=> setIsEmpty!34411 setRes!34411))

(declare-fun b!5335390 () Bool)

(declare-fun res!2263143 () Bool)

(assert (=> b!5335390 (=> res!2263143 e!3313477)))

(declare-datatypes ((List!61322 0))(
  ( (Nil!61198) (Cons!61198 (h!67646 Context!8782) (t!374539 List!61322)) )
))
(declare-fun zl!343 () List!61322)

(assert (=> b!5335390 (= res!2263143 (not (= (exprs!4891 (h!67646 zl!343)) (Cons!61197 (Concat!23852 (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (t!374538 (exprs!4891 (h!67646 zl!343)))))))))

(declare-fun b!5335391 () Bool)

(declare-fun e!3313478 () Bool)

(declare-fun lt!2175944 () (InoxSet Context!8782))

(assert (=> b!5335391 (= e!3313478 (matchZipper!1251 lt!2175944 (t!374537 s!2326)))))

(declare-fun b!5335392 () Bool)

(declare-fun res!2263146 () Bool)

(declare-fun e!3313476 () Bool)

(assert (=> b!5335392 (=> (not res!2263146) (not e!3313476))))

(declare-fun toList!8791 ((InoxSet Context!8782)) List!61322)

(assert (=> b!5335392 (= res!2263146 (= (toList!8791 z!1189) zl!343))))

(declare-fun b!5335393 () Bool)

(declare-datatypes ((Unit!153546 0))(
  ( (Unit!153547) )
))
(declare-fun e!3313471 () Unit!153546)

(declare-fun Unit!153548 () Unit!153546)

(assert (=> b!5335393 (= e!3313471 Unit!153548)))

(declare-fun b!5335394 () Bool)

(declare-fun tp_is_empty!39267 () Bool)

(assert (=> b!5335394 (= e!3313468 tp_is_empty!39267)))

(declare-fun b!5335395 () Bool)

(declare-fun res!2263141 () Bool)

(assert (=> b!5335395 (=> res!2263141 e!3313477)))

(declare-fun lt!2175932 () Context!8782)

(declare-fun contextDepthTotal!140 (Context!8782) Int)

(assert (=> b!5335395 (= res!2263141 (>= (contextDepthTotal!140 lt!2175932) (contextDepthTotal!140 (h!67646 zl!343))))))

(declare-fun b!5335396 () Bool)

(declare-fun e!3313465 () Bool)

(declare-fun lt!2175940 () Regex!15007)

(declare-fun validRegex!6743 (Regex!15007) Bool)

(assert (=> b!5335396 (= e!3313465 (validRegex!6743 lt!2175940))))

(declare-fun e!3313462 () Bool)

(declare-fun e!3313473 () Bool)

(assert (=> b!5335397 (= e!3313462 e!3313473)))

(declare-fun res!2263152 () Bool)

(assert (=> b!5335397 (=> res!2263152 e!3313473)))

(declare-fun lt!2175930 () Bool)

(declare-fun lt!2175951 () Bool)

(get-info :version)

(assert (=> b!5335397 (= res!2263152 (or (not (= lt!2175951 lt!2175930)) ((_ is Nil!61196) s!2326)))))

(declare-fun Exists!2188 (Int) Bool)

(assert (=> b!5335397 (= (Exists!2188 lambda!273015) (Exists!2188 lambda!273016))))

(declare-fun lt!2175956 () Unit!153546)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!842 (Regex!15007 Regex!15007 List!61320) Unit!153546)

(assert (=> b!5335397 (= lt!2175956 (lemmaExistCutMatchRandMatchRSpecEquivalent!842 (regOne!30526 r!7292) (regTwo!30526 r!7292) s!2326))))

(assert (=> b!5335397 (= lt!2175930 (Exists!2188 lambda!273015))))

(declare-datatypes ((tuple2!64412 0))(
  ( (tuple2!64413 (_1!35509 List!61320) (_2!35509 List!61320)) )
))
(declare-datatypes ((Option!15118 0))(
  ( (None!15117) (Some!15117 (v!51146 tuple2!64412)) )
))
(declare-fun isDefined!11821 (Option!15118) Bool)

(declare-fun findConcatSeparation!1532 (Regex!15007 Regex!15007 List!61320 List!61320 List!61320) Option!15118)

(assert (=> b!5335397 (= lt!2175930 (isDefined!11821 (findConcatSeparation!1532 (regOne!30526 r!7292) (regTwo!30526 r!7292) Nil!61196 s!2326 s!2326)))))

(declare-fun lt!2175942 () Unit!153546)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1296 (Regex!15007 Regex!15007 List!61320) Unit!153546)

(assert (=> b!5335397 (= lt!2175942 (lemmaFindConcatSeparationEquivalentToExists!1296 (regOne!30526 r!7292) (regTwo!30526 r!7292) s!2326))))

(declare-fun b!5335398 () Bool)

(declare-fun res!2263144 () Bool)

(declare-fun e!3313463 () Bool)

(assert (=> b!5335398 (=> res!2263144 e!3313463)))

(assert (=> b!5335398 (= res!2263144 (not ((_ is Concat!23852) (regOne!30526 r!7292))))))

(declare-fun b!5335399 () Bool)

(declare-fun res!2263136 () Bool)

(assert (=> b!5335399 (=> res!2263136 e!3313462)))

(assert (=> b!5335399 (= res!2263136 (or ((_ is EmptyExpr!15007) r!7292) ((_ is EmptyLang!15007) r!7292) ((_ is ElementMatch!15007) r!7292) ((_ is Union!15007) r!7292) (not ((_ is Concat!23852) r!7292))))))

(declare-fun b!5335400 () Bool)

(declare-fun e!3313470 () Bool)

(assert (=> b!5335400 (= e!3313470 e!3313477)))

(declare-fun res!2263131 () Bool)

(assert (=> b!5335400 (=> res!2263131 e!3313477)))

(declare-fun lt!2175948 () (InoxSet Context!8782))

(assert (=> b!5335400 (= res!2263131 (not (= lt!2175934 lt!2175948)))))

(declare-fun lambda!273017 () Int)

(declare-fun lt!2175929 () (InoxSet Context!8782))

(declare-fun flatMap!734 ((InoxSet Context!8782) Int) (InoxSet Context!8782))

(declare-fun derivationStepZipperUp!379 (Context!8782 C!30284) (InoxSet Context!8782))

(assert (=> b!5335400 (= (flatMap!734 lt!2175929 lambda!273017) (derivationStepZipperUp!379 lt!2175932 (h!67644 s!2326)))))

(declare-fun lt!2175941 () Unit!153546)

(declare-fun lemmaFlatMapOnSingletonSet!266 ((InoxSet Context!8782) Context!8782 Int) Unit!153546)

(assert (=> b!5335400 (= lt!2175941 (lemmaFlatMapOnSingletonSet!266 lt!2175929 lt!2175932 lambda!273017))))

(declare-fun lt!2175958 () (InoxSet Context!8782))

(assert (=> b!5335400 (= lt!2175958 (derivationStepZipperUp!379 lt!2175932 (h!67644 s!2326)))))

(declare-fun derivationStepZipper!1248 ((InoxSet Context!8782) C!30284) (InoxSet Context!8782))

(assert (=> b!5335400 (= lt!2175934 (derivationStepZipper!1248 lt!2175929 (h!67644 s!2326)))))

(assert (=> b!5335400 (= lt!2175929 (store ((as const (Array Context!8782 Bool)) false) lt!2175932 true))))

(declare-fun lt!2175939 () List!61321)

(assert (=> b!5335400 (= lt!2175932 (Context!8783 lt!2175939))))

(declare-fun lt!2175949 () List!61321)

(assert (=> b!5335400 (= lt!2175939 (Cons!61197 (regOne!30526 (regOne!30526 r!7292)) lt!2175949))))

(declare-fun res!2263140 () Bool)

(assert (=> start!562234 (=> (not res!2263140) (not e!3313476))))

(assert (=> start!562234 (= res!2263140 (validRegex!6743 r!7292))))

(assert (=> start!562234 e!3313476))

(assert (=> start!562234 e!3313468))

(declare-fun condSetEmpty!34411 () Bool)

(assert (=> start!562234 (= condSetEmpty!34411 (= z!1189 ((as const (Array Context!8782 Bool)) false)))))

(assert (=> start!562234 setRes!34411))

(declare-fun e!3313464 () Bool)

(assert (=> start!562234 e!3313464))

(declare-fun e!3313475 () Bool)

(assert (=> start!562234 e!3313475))

(declare-fun b!5335387 () Bool)

(declare-fun tp!1484275 () Bool)

(assert (=> b!5335387 (= e!3313469 tp!1484275)))

(declare-fun b!5335401 () Bool)

(declare-fun res!2263145 () Bool)

(declare-fun e!3313474 () Bool)

(assert (=> b!5335401 (=> res!2263145 e!3313474)))

(declare-fun lt!2175927 () List!61322)

(declare-fun zipperDepth!116 (List!61322) Int)

(assert (=> b!5335401 (= res!2263145 (> (zipperDepth!116 lt!2175927) (zipperDepth!116 zl!343)))))

(declare-fun b!5335402 () Bool)

(declare-fun e!3313467 () Bool)

(declare-fun tp!1484273 () Bool)

(assert (=> b!5335402 (= e!3313467 tp!1484273)))

(assert (=> b!5335403 (= e!3313473 e!3313463)))

(declare-fun res!2263139 () Bool)

(assert (=> b!5335403 (=> res!2263139 e!3313463)))

(assert (=> b!5335403 (= res!2263139 (or (and ((_ is ElementMatch!15007) (regOne!30526 r!7292)) (= (c!928081 (regOne!30526 r!7292)) (h!67644 s!2326))) ((_ is Union!15007) (regOne!30526 r!7292))))))

(declare-fun lt!2175954 () Unit!153546)

(assert (=> b!5335403 (= lt!2175954 e!3313471)))

(declare-fun c!928080 () Bool)

(declare-fun nullable!5176 (Regex!15007) Bool)

(assert (=> b!5335403 (= c!928080 (nullable!5176 (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> b!5335403 (= (flatMap!734 z!1189 lambda!273017) (derivationStepZipperUp!379 (h!67646 zl!343) (h!67644 s!2326)))))

(declare-fun lt!2175957 () Unit!153546)

(assert (=> b!5335403 (= lt!2175957 (lemmaFlatMapOnSingletonSet!266 z!1189 (h!67646 zl!343) lambda!273017))))

(declare-fun lt!2175955 () Context!8782)

(assert (=> b!5335403 (= lt!2175944 (derivationStepZipperUp!379 lt!2175955 (h!67644 s!2326)))))

(declare-fun lt!2175959 () (InoxSet Context!8782))

(declare-fun derivationStepZipperDown!455 (Regex!15007 Context!8782 C!30284) (InoxSet Context!8782))

(assert (=> b!5335403 (= lt!2175959 (derivationStepZipperDown!455 (h!67645 (exprs!4891 (h!67646 zl!343))) lt!2175955 (h!67644 s!2326)))))

(assert (=> b!5335403 (= lt!2175955 (Context!8783 (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun lt!2175935 () (InoxSet Context!8782))

(assert (=> b!5335403 (= lt!2175935 (derivationStepZipperUp!379 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343))))) (h!67644 s!2326)))))

(declare-fun b!5335404 () Bool)

(declare-fun tp!1484274 () Bool)

(assert (=> b!5335404 (= e!3313475 (and tp_is_empty!39267 tp!1484274))))

(declare-fun b!5335405 () Bool)

(declare-fun Unit!153549 () Unit!153546)

(assert (=> b!5335405 (= e!3313471 Unit!153549)))

(declare-fun lt!2175960 () Unit!153546)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!244 ((InoxSet Context!8782) (InoxSet Context!8782) List!61320) Unit!153546)

(assert (=> b!5335405 (= lt!2175960 (lemmaZipperConcatMatchesSameAsBothZippers!244 lt!2175959 lt!2175944 (t!374537 s!2326)))))

(declare-fun res!2263153 () Bool)

(assert (=> b!5335405 (= res!2263153 (matchZipper!1251 lt!2175959 (t!374537 s!2326)))))

(assert (=> b!5335405 (=> res!2263153 e!3313478)))

(assert (=> b!5335405 (= (matchZipper!1251 ((_ map or) lt!2175959 lt!2175944) (t!374537 s!2326)) e!3313478)))

(declare-fun b!5335406 () Bool)

(declare-fun res!2263154 () Bool)

(assert (=> b!5335406 (=> res!2263154 e!3313463)))

(declare-fun e!3313466 () Bool)

(assert (=> b!5335406 (= res!2263154 e!3313466)))

(declare-fun res!2263132 () Bool)

(assert (=> b!5335406 (=> (not res!2263132) (not e!3313466))))

(assert (=> b!5335406 (= res!2263132 ((_ is Concat!23852) (regOne!30526 r!7292)))))

(declare-fun b!5335407 () Bool)

(declare-fun res!2263137 () Bool)

(assert (=> b!5335407 (=> res!2263137 e!3313462)))

(declare-fun isEmpty!33167 (List!61322) Bool)

(assert (=> b!5335407 (= res!2263137 (not (isEmpty!33167 (t!374539 zl!343))))))

(declare-fun b!5335408 () Bool)

(declare-fun res!2263134 () Bool)

(assert (=> b!5335408 (=> res!2263134 e!3313462)))

(declare-fun generalisedUnion!936 (List!61321) Regex!15007)

(declare-fun unfocusZipperList!449 (List!61322) List!61321)

(assert (=> b!5335408 (= res!2263134 (not (= r!7292 (generalisedUnion!936 (unfocusZipperList!449 zl!343)))))))

(declare-fun b!5335409 () Bool)

(declare-fun res!2263133 () Bool)

(assert (=> b!5335409 (=> (not res!2263133) (not e!3313476))))

(declare-fun unfocusZipper!749 (List!61322) Regex!15007)

(assert (=> b!5335409 (= res!2263133 (= r!7292 (unfocusZipper!749 zl!343)))))

(declare-fun b!5335410 () Bool)

(declare-fun tp!1484280 () Bool)

(assert (=> b!5335410 (= e!3313468 tp!1484280)))

(declare-fun b!5335411 () Bool)

(declare-fun res!2263135 () Bool)

(assert (=> b!5335411 (=> res!2263135 e!3313462)))

(assert (=> b!5335411 (= res!2263135 (not ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5335412 () Bool)

(assert (=> b!5335412 (= e!3313466 (nullable!5176 (regOne!30526 (regOne!30526 r!7292))))))

(declare-fun b!5335413 () Bool)

(declare-fun e!3313472 () Bool)

(assert (=> b!5335413 (= e!3313472 e!3313470)))

(declare-fun res!2263138 () Bool)

(assert (=> b!5335413 (=> res!2263138 e!3313470)))

(assert (=> b!5335413 (= res!2263138 (not (= lt!2175928 (matchZipper!1251 lt!2175948 (t!374537 s!2326)))))))

(assert (=> b!5335413 (= lt!2175928 (matchZipper!1251 lt!2175959 (t!374537 s!2326)))))

(declare-fun b!5335414 () Bool)

(assert (=> b!5335414 (= e!3313477 e!3313474)))

(declare-fun res!2263142 () Bool)

(assert (=> b!5335414 (=> res!2263142 e!3313474)))

(declare-fun zipperDepthTotal!160 (List!61322) Int)

(assert (=> b!5335414 (= res!2263142 (>= (zipperDepthTotal!160 lt!2175927) (zipperDepthTotal!160 zl!343)))))

(assert (=> b!5335414 (= lt!2175927 (Cons!61198 lt!2175932 Nil!61198))))

(declare-fun b!5335415 () Bool)

(assert (=> b!5335415 (= e!3313463 e!3313472)))

(declare-fun res!2263150 () Bool)

(assert (=> b!5335415 (=> res!2263150 e!3313472)))

(assert (=> b!5335415 (= res!2263150 (not (= lt!2175959 lt!2175948)))))

(assert (=> b!5335415 (= lt!2175948 (derivationStepZipperDown!455 (regOne!30526 (regOne!30526 r!7292)) (Context!8783 lt!2175949) (h!67644 s!2326)))))

(assert (=> b!5335415 (= lt!2175949 (Cons!61197 (regTwo!30526 (regOne!30526 r!7292)) (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5335416 () Bool)

(assert (=> b!5335416 (= e!3313476 (not e!3313462))))

(declare-fun res!2263147 () Bool)

(assert (=> b!5335416 (=> res!2263147 e!3313462)))

(assert (=> b!5335416 (= res!2263147 (not ((_ is Cons!61198) zl!343)))))

(declare-fun matchRSpec!2110 (Regex!15007 List!61320) Bool)

(assert (=> b!5335416 (= lt!2175951 (matchRSpec!2110 r!7292 s!2326))))

(declare-fun matchR!7192 (Regex!15007 List!61320) Bool)

(assert (=> b!5335416 (= lt!2175951 (matchR!7192 r!7292 s!2326))))

(declare-fun lt!2175938 () Unit!153546)

(declare-fun mainMatchTheorem!2110 (Regex!15007 List!61320) Unit!153546)

(assert (=> b!5335416 (= lt!2175938 (mainMatchTheorem!2110 r!7292 s!2326))))

(declare-fun b!5335417 () Bool)

(declare-fun tp!1484277 () Bool)

(declare-fun tp!1484279 () Bool)

(assert (=> b!5335417 (= e!3313468 (and tp!1484277 tp!1484279))))

(declare-fun b!5335418 () Bool)

(declare-fun res!2263155 () Bool)

(assert (=> b!5335418 (=> res!2263155 e!3313473)))

(declare-fun isEmpty!33168 (List!61321) Bool)

(assert (=> b!5335418 (= res!2263155 (isEmpty!33168 (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> b!5335419 (= e!3313474 e!3313465)))

(declare-fun res!2263148 () Bool)

(assert (=> b!5335419 (=> res!2263148 e!3313465)))

(declare-fun lt!2175936 () Bool)

(assert (=> b!5335419 (= res!2263148 (not (= (matchZipper!1251 z!1189 s!2326) lt!2175936)))))

(assert (=> b!5335419 (= (Exists!2188 lambda!273020) (Exists!2188 lambda!273021))))

(declare-fun lt!2175931 () Unit!153546)

(assert (=> b!5335419 (= lt!2175931 (lemmaExistCutMatchRandMatchRSpecEquivalent!842 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 s!2326))))

(assert (=> b!5335419 (= (isDefined!11821 (findConcatSeparation!1532 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 Nil!61196 s!2326 s!2326)) (Exists!2188 lambda!273020))))

(declare-fun lt!2175946 () Unit!153546)

(assert (=> b!5335419 (= lt!2175946 (lemmaFindConcatSeparationEquivalentToExists!1296 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 s!2326))))

(declare-fun generalisedConcat!676 (List!61321) Regex!15007)

(assert (=> b!5335419 (= lt!2175937 (generalisedConcat!676 (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> b!5335419 (= (matchR!7192 lt!2175943 s!2326) (matchRSpec!2110 lt!2175943 s!2326))))

(declare-fun lt!2175933 () Unit!153546)

(assert (=> b!5335419 (= lt!2175933 (mainMatchTheorem!2110 lt!2175943 s!2326))))

(assert (=> b!5335419 (= (Exists!2188 lambda!273018) (Exists!2188 lambda!273019))))

(declare-fun lt!2175953 () Unit!153546)

(assert (=> b!5335419 (= lt!2175953 (lemmaExistCutMatchRandMatchRSpecEquivalent!842 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 s!2326))))

(assert (=> b!5335419 (= (isDefined!11821 (findConcatSeparation!1532 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 Nil!61196 s!2326 s!2326)) (Exists!2188 lambda!273018))))

(declare-fun lt!2175945 () Unit!153546)

(assert (=> b!5335419 (= lt!2175945 (lemmaFindConcatSeparationEquivalentToExists!1296 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 s!2326))))

(assert (=> b!5335419 (= lt!2175943 (generalisedConcat!676 lt!2175949))))

(declare-fun lt!2175947 () Bool)

(assert (=> b!5335419 (= lt!2175947 (matchRSpec!2110 lt!2175940 s!2326))))

(declare-fun lt!2175950 () Unit!153546)

(assert (=> b!5335419 (= lt!2175950 (mainMatchTheorem!2110 lt!2175940 s!2326))))

(assert (=> b!5335419 (= lt!2175947 lt!2175936)))

(assert (=> b!5335419 (= lt!2175936 (matchZipper!1251 lt!2175929 s!2326))))

(assert (=> b!5335419 (= lt!2175947 (matchR!7192 lt!2175940 s!2326))))

(declare-fun lt!2175952 () Unit!153546)

(declare-fun theoremZipperRegexEquiv!405 ((InoxSet Context!8782) List!61322 Regex!15007 List!61320) Unit!153546)

(assert (=> b!5335419 (= lt!2175952 (theoremZipperRegexEquiv!405 lt!2175929 lt!2175927 lt!2175940 s!2326))))

(assert (=> b!5335419 (= lt!2175940 (generalisedConcat!676 lt!2175939))))

(declare-fun b!5335420 () Bool)

(declare-fun res!2263149 () Bool)

(assert (=> b!5335420 (=> res!2263149 e!3313462)))

(assert (=> b!5335420 (= res!2263149 (not (= r!7292 (generalisedConcat!676 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun b!5335421 () Bool)

(declare-fun tp!1484278 () Bool)

(assert (=> b!5335421 (= e!3313464 (and (inv!80764 (h!67646 zl!343)) e!3313467 tp!1484278))))

(assert (= (and start!562234 res!2263140) b!5335392))

(assert (= (and b!5335392 res!2263146) b!5335409))

(assert (= (and b!5335409 res!2263133) b!5335416))

(assert (= (and b!5335416 (not res!2263147)) b!5335407))

(assert (= (and b!5335407 (not res!2263137)) b!5335420))

(assert (= (and b!5335420 (not res!2263149)) b!5335411))

(assert (= (and b!5335411 (not res!2263135)) b!5335408))

(assert (= (and b!5335408 (not res!2263134)) b!5335399))

(assert (= (and b!5335399 (not res!2263136)) b!5335397))

(assert (= (and b!5335397 (not res!2263152)) b!5335418))

(assert (= (and b!5335418 (not res!2263155)) b!5335403))

(assert (= (and b!5335403 c!928080) b!5335405))

(assert (= (and b!5335403 (not c!928080)) b!5335393))

(assert (= (and b!5335405 (not res!2263153)) b!5335391))

(assert (= (and b!5335403 (not res!2263139)) b!5335406))

(assert (= (and b!5335406 res!2263132) b!5335412))

(assert (= (and b!5335406 (not res!2263154)) b!5335398))

(assert (= (and b!5335398 (not res!2263144)) b!5335415))

(assert (= (and b!5335415 (not res!2263150)) b!5335413))

(assert (= (and b!5335413 (not res!2263138)) b!5335400))

(assert (= (and b!5335400 (not res!2263131)) b!5335388))

(assert (= (and b!5335388 (not res!2263151)) b!5335390))

(assert (= (and b!5335390 (not res!2263143)) b!5335395))

(assert (= (and b!5335395 (not res!2263141)) b!5335414))

(assert (= (and b!5335414 (not res!2263142)) b!5335401))

(assert (= (and b!5335401 (not res!2263145)) b!5335419))

(assert (= (and b!5335419 (not res!2263148)) b!5335396))

(assert (= (and start!562234 ((_ is ElementMatch!15007) r!7292)) b!5335394))

(assert (= (and start!562234 ((_ is Concat!23852) r!7292)) b!5335389))

(assert (= (and start!562234 ((_ is Star!15007) r!7292)) b!5335410))

(assert (= (and start!562234 ((_ is Union!15007) r!7292)) b!5335417))

(assert (= (and start!562234 condSetEmpty!34411) setIsEmpty!34411))

(assert (= (and start!562234 (not condSetEmpty!34411)) setNonEmpty!34411))

(assert (= setNonEmpty!34411 b!5335387))

(assert (= b!5335421 b!5335402))

(assert (= (and start!562234 ((_ is Cons!61198) zl!343)) b!5335421))

(assert (= (and start!562234 ((_ is Cons!61196) s!2326)) b!5335404))

(declare-fun m!6368312 () Bool)

(assert (=> b!5335412 m!6368312))

(declare-fun m!6368314 () Bool)

(assert (=> b!5335409 m!6368314))

(declare-fun m!6368316 () Bool)

(assert (=> start!562234 m!6368316))

(declare-fun m!6368318 () Bool)

(assert (=> b!5335415 m!6368318))

(declare-fun m!6368320 () Bool)

(assert (=> b!5335400 m!6368320))

(declare-fun m!6368322 () Bool)

(assert (=> b!5335400 m!6368322))

(declare-fun m!6368324 () Bool)

(assert (=> b!5335400 m!6368324))

(declare-fun m!6368326 () Bool)

(assert (=> b!5335400 m!6368326))

(declare-fun m!6368328 () Bool)

(assert (=> b!5335400 m!6368328))

(declare-fun m!6368330 () Bool)

(assert (=> b!5335405 m!6368330))

(declare-fun m!6368332 () Bool)

(assert (=> b!5335405 m!6368332))

(declare-fun m!6368334 () Bool)

(assert (=> b!5335405 m!6368334))

(declare-fun m!6368336 () Bool)

(assert (=> b!5335421 m!6368336))

(declare-fun m!6368338 () Bool)

(assert (=> b!5335392 m!6368338))

(declare-fun m!6368340 () Bool)

(assert (=> b!5335414 m!6368340))

(declare-fun m!6368342 () Bool)

(assert (=> b!5335414 m!6368342))

(declare-fun m!6368344 () Bool)

(assert (=> b!5335388 m!6368344))

(declare-fun m!6368346 () Bool)

(assert (=> b!5335395 m!6368346))

(declare-fun m!6368348 () Bool)

(assert (=> b!5335395 m!6368348))

(declare-fun m!6368350 () Bool)

(assert (=> b!5335419 m!6368350))

(declare-fun m!6368352 () Bool)

(assert (=> b!5335419 m!6368352))

(declare-fun m!6368354 () Bool)

(assert (=> b!5335419 m!6368354))

(declare-fun m!6368356 () Bool)

(assert (=> b!5335419 m!6368356))

(declare-fun m!6368358 () Bool)

(assert (=> b!5335419 m!6368358))

(declare-fun m!6368360 () Bool)

(assert (=> b!5335419 m!6368360))

(declare-fun m!6368362 () Bool)

(assert (=> b!5335419 m!6368362))

(declare-fun m!6368364 () Bool)

(assert (=> b!5335419 m!6368364))

(declare-fun m!6368366 () Bool)

(assert (=> b!5335419 m!6368366))

(assert (=> b!5335419 m!6368350))

(declare-fun m!6368368 () Bool)

(assert (=> b!5335419 m!6368368))

(declare-fun m!6368370 () Bool)

(assert (=> b!5335419 m!6368370))

(declare-fun m!6368372 () Bool)

(assert (=> b!5335419 m!6368372))

(declare-fun m!6368374 () Bool)

(assert (=> b!5335419 m!6368374))

(declare-fun m!6368376 () Bool)

(assert (=> b!5335419 m!6368376))

(declare-fun m!6368378 () Bool)

(assert (=> b!5335419 m!6368378))

(assert (=> b!5335419 m!6368360))

(declare-fun m!6368380 () Bool)

(assert (=> b!5335419 m!6368380))

(declare-fun m!6368382 () Bool)

(assert (=> b!5335419 m!6368382))

(assert (=> b!5335419 m!6368382))

(assert (=> b!5335419 m!6368362))

(declare-fun m!6368384 () Bool)

(assert (=> b!5335419 m!6368384))

(declare-fun m!6368386 () Bool)

(assert (=> b!5335419 m!6368386))

(declare-fun m!6368388 () Bool)

(assert (=> b!5335419 m!6368388))

(declare-fun m!6368390 () Bool)

(assert (=> b!5335419 m!6368390))

(declare-fun m!6368392 () Bool)

(assert (=> b!5335419 m!6368392))

(declare-fun m!6368394 () Bool)

(assert (=> b!5335419 m!6368394))

(declare-fun m!6368396 () Bool)

(assert (=> b!5335419 m!6368396))

(declare-fun m!6368398 () Bool)

(assert (=> b!5335416 m!6368398))

(declare-fun m!6368400 () Bool)

(assert (=> b!5335416 m!6368400))

(declare-fun m!6368402 () Bool)

(assert (=> b!5335416 m!6368402))

(declare-fun m!6368404 () Bool)

(assert (=> b!5335408 m!6368404))

(assert (=> b!5335408 m!6368404))

(declare-fun m!6368406 () Bool)

(assert (=> b!5335408 m!6368406))

(declare-fun m!6368408 () Bool)

(assert (=> b!5335396 m!6368408))

(declare-fun m!6368410 () Bool)

(assert (=> b!5335407 m!6368410))

(declare-fun m!6368412 () Bool)

(assert (=> b!5335403 m!6368412))

(declare-fun m!6368414 () Bool)

(assert (=> b!5335403 m!6368414))

(declare-fun m!6368416 () Bool)

(assert (=> b!5335403 m!6368416))

(declare-fun m!6368418 () Bool)

(assert (=> b!5335403 m!6368418))

(declare-fun m!6368420 () Bool)

(assert (=> b!5335403 m!6368420))

(declare-fun m!6368422 () Bool)

(assert (=> b!5335403 m!6368422))

(declare-fun m!6368424 () Bool)

(assert (=> b!5335403 m!6368424))

(declare-fun m!6368426 () Bool)

(assert (=> b!5335413 m!6368426))

(assert (=> b!5335413 m!6368332))

(declare-fun m!6368428 () Bool)

(assert (=> b!5335420 m!6368428))

(declare-fun m!6368430 () Bool)

(assert (=> setNonEmpty!34411 m!6368430))

(declare-fun m!6368432 () Bool)

(assert (=> b!5335401 m!6368432))

(declare-fun m!6368434 () Bool)

(assert (=> b!5335401 m!6368434))

(declare-fun m!6368436 () Bool)

(assert (=> b!5335418 m!6368436))

(declare-fun m!6368438 () Bool)

(assert (=> b!5335391 m!6368438))

(declare-fun m!6368440 () Bool)

(assert (=> b!5335397 m!6368440))

(declare-fun m!6368442 () Bool)

(assert (=> b!5335397 m!6368442))

(declare-fun m!6368444 () Bool)

(assert (=> b!5335397 m!6368444))

(assert (=> b!5335397 m!6368440))

(declare-fun m!6368446 () Bool)

(assert (=> b!5335397 m!6368446))

(declare-fun m!6368448 () Bool)

(assert (=> b!5335397 m!6368448))

(assert (=> b!5335397 m!6368442))

(declare-fun m!6368450 () Bool)

(assert (=> b!5335397 m!6368450))

(check-sat (not b!5335417) (not b!5335400) (not b!5335388) (not b!5335420) (not b!5335415) (not b!5335414) (not b!5335397) (not b!5335413) (not b!5335419) tp_is_empty!39267 (not b!5335395) (not b!5335391) (not b!5335421) (not b!5335412) (not b!5335405) (not b!5335396) (not b!5335402) (not setNonEmpty!34411) (not b!5335389) (not b!5335387) (not start!562234) (not b!5335404) (not b!5335409) (not b!5335408) (not b!5335418) (not b!5335410) (not b!5335401) (not b!5335416) (not b!5335392) (not b!5335407) (not b!5335403))
(check-sat)
(get-model)

(declare-fun d!1712783 () Bool)

(declare-fun lambda!273039 () Int)

(declare-fun forall!14427 (List!61321 Int) Bool)

(assert (=> d!1712783 (= (inv!80764 setElem!34411) (forall!14427 (exprs!4891 setElem!34411) lambda!273039))))

(declare-fun bs!1237322 () Bool)

(assert (= bs!1237322 d!1712783))

(declare-fun m!6368556 () Bool)

(assert (=> bs!1237322 m!6368556))

(assert (=> setNonEmpty!34411 d!1712783))

(declare-fun d!1712785 () Bool)

(declare-fun lt!2175977 () Regex!15007)

(assert (=> d!1712785 (validRegex!6743 lt!2175977)))

(assert (=> d!1712785 (= lt!2175977 (generalisedUnion!936 (unfocusZipperList!449 zl!343)))))

(assert (=> d!1712785 (= (unfocusZipper!749 zl!343) lt!2175977)))

(declare-fun bs!1237323 () Bool)

(assert (= bs!1237323 d!1712785))

(declare-fun m!6368558 () Bool)

(assert (=> bs!1237323 m!6368558))

(assert (=> bs!1237323 m!6368404))

(assert (=> bs!1237323 m!6368404))

(assert (=> bs!1237323 m!6368406))

(assert (=> b!5335409 d!1712785))

(declare-fun bs!1237351 () Bool)

(declare-fun d!1712787 () Bool)

(assert (= bs!1237351 (and d!1712787 d!1712783)))

(declare-fun lambda!273050 () Int)

(assert (=> bs!1237351 (= lambda!273050 lambda!273039)))

(declare-fun b!5335648 () Bool)

(declare-fun e!3313606 () Regex!15007)

(assert (=> b!5335648 (= e!3313606 (Union!15007 (h!67645 (unfocusZipperList!449 zl!343)) (generalisedUnion!936 (t!374538 (unfocusZipperList!449 zl!343)))))))

(declare-fun b!5335649 () Bool)

(declare-fun e!3313605 () Bool)

(assert (=> b!5335649 (= e!3313605 (isEmpty!33168 (t!374538 (unfocusZipperList!449 zl!343))))))

(declare-fun b!5335650 () Bool)

(declare-fun e!3313603 () Bool)

(declare-fun e!3313601 () Bool)

(assert (=> b!5335650 (= e!3313603 e!3313601)))

(declare-fun c!928155 () Bool)

(assert (=> b!5335650 (= c!928155 (isEmpty!33168 (unfocusZipperList!449 zl!343)))))

(assert (=> d!1712787 e!3313603))

(declare-fun res!2263236 () Bool)

(assert (=> d!1712787 (=> (not res!2263236) (not e!3313603))))

(declare-fun lt!2175986 () Regex!15007)

(assert (=> d!1712787 (= res!2263236 (validRegex!6743 lt!2175986))))

(declare-fun e!3313602 () Regex!15007)

(assert (=> d!1712787 (= lt!2175986 e!3313602)))

(declare-fun c!928153 () Bool)

(assert (=> d!1712787 (= c!928153 e!3313605)))

(declare-fun res!2263237 () Bool)

(assert (=> d!1712787 (=> (not res!2263237) (not e!3313605))))

(assert (=> d!1712787 (= res!2263237 ((_ is Cons!61197) (unfocusZipperList!449 zl!343)))))

(assert (=> d!1712787 (forall!14427 (unfocusZipperList!449 zl!343) lambda!273050)))

(assert (=> d!1712787 (= (generalisedUnion!936 (unfocusZipperList!449 zl!343)) lt!2175986)))

(declare-fun b!5335651 () Bool)

(assert (=> b!5335651 (= e!3313602 e!3313606)))

(declare-fun c!928154 () Bool)

(assert (=> b!5335651 (= c!928154 ((_ is Cons!61197) (unfocusZipperList!449 zl!343)))))

(declare-fun b!5335652 () Bool)

(declare-fun e!3313604 () Bool)

(declare-fun head!11438 (List!61321) Regex!15007)

(assert (=> b!5335652 (= e!3313604 (= lt!2175986 (head!11438 (unfocusZipperList!449 zl!343))))))

(declare-fun b!5335653 () Bool)

(declare-fun isEmptyLang!902 (Regex!15007) Bool)

(assert (=> b!5335653 (= e!3313601 (isEmptyLang!902 lt!2175986))))

(declare-fun b!5335654 () Bool)

(assert (=> b!5335654 (= e!3313601 e!3313604)))

(declare-fun c!928152 () Bool)

(declare-fun tail!10535 (List!61321) List!61321)

(assert (=> b!5335654 (= c!928152 (isEmpty!33168 (tail!10535 (unfocusZipperList!449 zl!343))))))

(declare-fun b!5335655 () Bool)

(assert (=> b!5335655 (= e!3313606 EmptyLang!15007)))

(declare-fun b!5335656 () Bool)

(declare-fun isUnion!334 (Regex!15007) Bool)

(assert (=> b!5335656 (= e!3313604 (isUnion!334 lt!2175986))))

(declare-fun b!5335657 () Bool)

(assert (=> b!5335657 (= e!3313602 (h!67645 (unfocusZipperList!449 zl!343)))))

(assert (= (and d!1712787 res!2263237) b!5335649))

(assert (= (and d!1712787 c!928153) b!5335657))

(assert (= (and d!1712787 (not c!928153)) b!5335651))

(assert (= (and b!5335651 c!928154) b!5335648))

(assert (= (and b!5335651 (not c!928154)) b!5335655))

(assert (= (and d!1712787 res!2263236) b!5335650))

(assert (= (and b!5335650 c!928155) b!5335653))

(assert (= (and b!5335650 (not c!928155)) b!5335654))

(assert (= (and b!5335654 c!928152) b!5335652))

(assert (= (and b!5335654 (not c!928152)) b!5335656))

(assert (=> b!5335652 m!6368404))

(declare-fun m!6368596 () Bool)

(assert (=> b!5335652 m!6368596))

(declare-fun m!6368598 () Bool)

(assert (=> b!5335649 m!6368598))

(declare-fun m!6368600 () Bool)

(assert (=> b!5335648 m!6368600))

(assert (=> b!5335650 m!6368404))

(declare-fun m!6368602 () Bool)

(assert (=> b!5335650 m!6368602))

(declare-fun m!6368604 () Bool)

(assert (=> b!5335656 m!6368604))

(declare-fun m!6368606 () Bool)

(assert (=> d!1712787 m!6368606))

(assert (=> d!1712787 m!6368404))

(declare-fun m!6368608 () Bool)

(assert (=> d!1712787 m!6368608))

(assert (=> b!5335654 m!6368404))

(declare-fun m!6368610 () Bool)

(assert (=> b!5335654 m!6368610))

(assert (=> b!5335654 m!6368610))

(declare-fun m!6368612 () Bool)

(assert (=> b!5335654 m!6368612))

(declare-fun m!6368614 () Bool)

(assert (=> b!5335653 m!6368614))

(assert (=> b!5335408 d!1712787))

(declare-fun bs!1237352 () Bool)

(declare-fun d!1712799 () Bool)

(assert (= bs!1237352 (and d!1712799 d!1712783)))

(declare-fun lambda!273053 () Int)

(assert (=> bs!1237352 (= lambda!273053 lambda!273039)))

(declare-fun bs!1237353 () Bool)

(assert (= bs!1237353 (and d!1712799 d!1712787)))

(assert (=> bs!1237353 (= lambda!273053 lambda!273050)))

(declare-fun lt!2175995 () List!61321)

(assert (=> d!1712799 (forall!14427 lt!2175995 lambda!273053)))

(declare-fun e!3313615 () List!61321)

(assert (=> d!1712799 (= lt!2175995 e!3313615)))

(declare-fun c!928162 () Bool)

(assert (=> d!1712799 (= c!928162 ((_ is Cons!61198) zl!343))))

(assert (=> d!1712799 (= (unfocusZipperList!449 zl!343) lt!2175995)))

(declare-fun b!5335672 () Bool)

(assert (=> b!5335672 (= e!3313615 (Cons!61197 (generalisedConcat!676 (exprs!4891 (h!67646 zl!343))) (unfocusZipperList!449 (t!374539 zl!343))))))

(declare-fun b!5335673 () Bool)

(assert (=> b!5335673 (= e!3313615 Nil!61197)))

(assert (= (and d!1712799 c!928162) b!5335672))

(assert (= (and d!1712799 (not c!928162)) b!5335673))

(declare-fun m!6368616 () Bool)

(assert (=> d!1712799 m!6368616))

(assert (=> b!5335672 m!6368428))

(declare-fun m!6368618 () Bool)

(assert (=> b!5335672 m!6368618))

(assert (=> b!5335408 d!1712799))

(declare-fun d!1712801 () Bool)

(declare-fun c!928171 () Bool)

(declare-fun isEmpty!33171 (List!61320) Bool)

(assert (=> d!1712801 (= c!928171 (isEmpty!33171 (t!374537 s!2326)))))

(declare-fun e!3313634 () Bool)

(assert (=> d!1712801 (= (matchZipper!1251 lt!2175948 (t!374537 s!2326)) e!3313634)))

(declare-fun b!5335706 () Bool)

(declare-fun nullableZipper!1360 ((InoxSet Context!8782)) Bool)

(assert (=> b!5335706 (= e!3313634 (nullableZipper!1360 lt!2175948))))

(declare-fun b!5335707 () Bool)

(declare-fun head!11439 (List!61320) C!30284)

(declare-fun tail!10536 (List!61320) List!61320)

(assert (=> b!5335707 (= e!3313634 (matchZipper!1251 (derivationStepZipper!1248 lt!2175948 (head!11439 (t!374537 s!2326))) (tail!10536 (t!374537 s!2326))))))

(assert (= (and d!1712801 c!928171) b!5335706))

(assert (= (and d!1712801 (not c!928171)) b!5335707))

(declare-fun m!6368642 () Bool)

(assert (=> d!1712801 m!6368642))

(declare-fun m!6368644 () Bool)

(assert (=> b!5335706 m!6368644))

(declare-fun m!6368646 () Bool)

(assert (=> b!5335707 m!6368646))

(assert (=> b!5335707 m!6368646))

(declare-fun m!6368648 () Bool)

(assert (=> b!5335707 m!6368648))

(declare-fun m!6368650 () Bool)

(assert (=> b!5335707 m!6368650))

(assert (=> b!5335707 m!6368648))

(assert (=> b!5335707 m!6368650))

(declare-fun m!6368652 () Bool)

(assert (=> b!5335707 m!6368652))

(assert (=> b!5335413 d!1712801))

(declare-fun d!1712805 () Bool)

(declare-fun c!928172 () Bool)

(assert (=> d!1712805 (= c!928172 (isEmpty!33171 (t!374537 s!2326)))))

(declare-fun e!3313635 () Bool)

(assert (=> d!1712805 (= (matchZipper!1251 lt!2175959 (t!374537 s!2326)) e!3313635)))

(declare-fun b!5335708 () Bool)

(assert (=> b!5335708 (= e!3313635 (nullableZipper!1360 lt!2175959))))

(declare-fun b!5335709 () Bool)

(assert (=> b!5335709 (= e!3313635 (matchZipper!1251 (derivationStepZipper!1248 lt!2175959 (head!11439 (t!374537 s!2326))) (tail!10536 (t!374537 s!2326))))))

(assert (= (and d!1712805 c!928172) b!5335708))

(assert (= (and d!1712805 (not c!928172)) b!5335709))

(assert (=> d!1712805 m!6368642))

(declare-fun m!6368654 () Bool)

(assert (=> b!5335708 m!6368654))

(assert (=> b!5335709 m!6368646))

(assert (=> b!5335709 m!6368646))

(declare-fun m!6368656 () Bool)

(assert (=> b!5335709 m!6368656))

(assert (=> b!5335709 m!6368650))

(assert (=> b!5335709 m!6368656))

(assert (=> b!5335709 m!6368650))

(declare-fun m!6368658 () Bool)

(assert (=> b!5335709 m!6368658))

(assert (=> b!5335413 d!1712805))

(declare-fun d!1712807 () Bool)

(declare-fun c!928173 () Bool)

(assert (=> d!1712807 (= c!928173 (isEmpty!33171 (t!374537 s!2326)))))

(declare-fun e!3313636 () Bool)

(assert (=> d!1712807 (= (matchZipper!1251 lt!2175944 (t!374537 s!2326)) e!3313636)))

(declare-fun b!5335710 () Bool)

(assert (=> b!5335710 (= e!3313636 (nullableZipper!1360 lt!2175944))))

(declare-fun b!5335711 () Bool)

(assert (=> b!5335711 (= e!3313636 (matchZipper!1251 (derivationStepZipper!1248 lt!2175944 (head!11439 (t!374537 s!2326))) (tail!10536 (t!374537 s!2326))))))

(assert (= (and d!1712807 c!928173) b!5335710))

(assert (= (and d!1712807 (not c!928173)) b!5335711))

(assert (=> d!1712807 m!6368642))

(declare-fun m!6368660 () Bool)

(assert (=> b!5335710 m!6368660))

(assert (=> b!5335711 m!6368646))

(assert (=> b!5335711 m!6368646))

(declare-fun m!6368662 () Bool)

(assert (=> b!5335711 m!6368662))

(assert (=> b!5335711 m!6368650))

(assert (=> b!5335711 m!6368662))

(assert (=> b!5335711 m!6368650))

(declare-fun m!6368664 () Bool)

(assert (=> b!5335711 m!6368664))

(assert (=> b!5335391 d!1712807))

(declare-fun d!1712809 () Bool)

(declare-fun nullableFct!1512 (Regex!15007) Bool)

(assert (=> d!1712809 (= (nullable!5176 (regOne!30526 (regOne!30526 r!7292))) (nullableFct!1512 (regOne!30526 (regOne!30526 r!7292))))))

(declare-fun bs!1237371 () Bool)

(assert (= bs!1237371 d!1712809))

(declare-fun m!6368666 () Bool)

(assert (=> bs!1237371 m!6368666))

(assert (=> b!5335412 d!1712809))

(declare-fun d!1712811 () Bool)

(declare-fun e!3313647 () Bool)

(assert (=> d!1712811 (= (matchZipper!1251 ((_ map or) lt!2175959 lt!2175944) (t!374537 s!2326)) e!3313647)))

(declare-fun res!2263260 () Bool)

(assert (=> d!1712811 (=> res!2263260 e!3313647)))

(assert (=> d!1712811 (= res!2263260 (matchZipper!1251 lt!2175959 (t!374537 s!2326)))))

(declare-fun lt!2176006 () Unit!153546)

(declare-fun choose!39971 ((InoxSet Context!8782) (InoxSet Context!8782) List!61320) Unit!153546)

(assert (=> d!1712811 (= lt!2176006 (choose!39971 lt!2175959 lt!2175944 (t!374537 s!2326)))))

(assert (=> d!1712811 (= (lemmaZipperConcatMatchesSameAsBothZippers!244 lt!2175959 lt!2175944 (t!374537 s!2326)) lt!2176006)))

(declare-fun b!5335728 () Bool)

(assert (=> b!5335728 (= e!3313647 (matchZipper!1251 lt!2175944 (t!374537 s!2326)))))

(assert (= (and d!1712811 (not res!2263260)) b!5335728))

(assert (=> d!1712811 m!6368334))

(assert (=> d!1712811 m!6368332))

(declare-fun m!6368714 () Bool)

(assert (=> d!1712811 m!6368714))

(assert (=> b!5335728 m!6368438))

(assert (=> b!5335405 d!1712811))

(assert (=> b!5335405 d!1712805))

(declare-fun d!1712829 () Bool)

(declare-fun c!928182 () Bool)

(assert (=> d!1712829 (= c!928182 (isEmpty!33171 (t!374537 s!2326)))))

(declare-fun e!3313653 () Bool)

(assert (=> d!1712829 (= (matchZipper!1251 ((_ map or) lt!2175959 lt!2175944) (t!374537 s!2326)) e!3313653)))

(declare-fun b!5335738 () Bool)

(assert (=> b!5335738 (= e!3313653 (nullableZipper!1360 ((_ map or) lt!2175959 lt!2175944)))))

(declare-fun b!5335739 () Bool)

(assert (=> b!5335739 (= e!3313653 (matchZipper!1251 (derivationStepZipper!1248 ((_ map or) lt!2175959 lt!2175944) (head!11439 (t!374537 s!2326))) (tail!10536 (t!374537 s!2326))))))

(assert (= (and d!1712829 c!928182) b!5335738))

(assert (= (and d!1712829 (not c!928182)) b!5335739))

(assert (=> d!1712829 m!6368642))

(declare-fun m!6368716 () Bool)

(assert (=> b!5335738 m!6368716))

(assert (=> b!5335739 m!6368646))

(assert (=> b!5335739 m!6368646))

(declare-fun m!6368720 () Bool)

(assert (=> b!5335739 m!6368720))

(assert (=> b!5335739 m!6368650))

(assert (=> b!5335739 m!6368720))

(assert (=> b!5335739 m!6368650))

(declare-fun m!6368728 () Bool)

(assert (=> b!5335739 m!6368728))

(assert (=> b!5335405 d!1712829))

(declare-fun d!1712831 () Bool)

(declare-fun c!928207 () Bool)

(assert (=> d!1712831 (= c!928207 (and ((_ is ElementMatch!15007) (h!67645 (exprs!4891 (h!67646 zl!343)))) (= (c!928081 (h!67645 (exprs!4891 (h!67646 zl!343)))) (h!67644 s!2326))))))

(declare-fun e!3313691 () (InoxSet Context!8782))

(assert (=> d!1712831 (= (derivationStepZipperDown!455 (h!67645 (exprs!4891 (h!67646 zl!343))) lt!2175955 (h!67644 s!2326)) e!3313691)))

(declare-fun bm!381387 () Bool)

(declare-fun call!381397 () (InoxSet Context!8782))

(declare-fun call!381394 () (InoxSet Context!8782))

(assert (=> bm!381387 (= call!381397 call!381394)))

(declare-fun b!5335802 () Bool)

(declare-fun e!3313692 () (InoxSet Context!8782))

(assert (=> b!5335802 (= e!3313691 e!3313692)))

(declare-fun c!928205 () Bool)

(assert (=> b!5335802 (= c!928205 ((_ is Union!15007) (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5335803 () Bool)

(declare-fun e!3313689 () (InoxSet Context!8782))

(assert (=> b!5335803 (= e!3313689 ((as const (Array Context!8782 Bool)) false))))

(declare-fun b!5335804 () Bool)

(declare-fun call!381393 () (InoxSet Context!8782))

(declare-fun call!381396 () (InoxSet Context!8782))

(assert (=> b!5335804 (= e!3313692 ((_ map or) call!381393 call!381396))))

(declare-fun b!5335805 () Bool)

(assert (=> b!5335805 (= e!3313689 call!381397)))

(declare-fun b!5335806 () Bool)

(declare-fun e!3313688 () (InoxSet Context!8782))

(declare-fun e!3313690 () (InoxSet Context!8782))

(assert (=> b!5335806 (= e!3313688 e!3313690)))

(declare-fun c!928208 () Bool)

(assert (=> b!5335806 (= c!928208 ((_ is Concat!23852) (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun bm!381388 () Bool)

(declare-fun call!381395 () List!61321)

(declare-fun call!381392 () List!61321)

(assert (=> bm!381388 (= call!381395 call!381392)))

(declare-fun b!5335807 () Bool)

(assert (=> b!5335807 (= e!3313688 ((_ map or) call!381396 call!381394))))

(declare-fun b!5335808 () Bool)

(declare-fun e!3313693 () Bool)

(assert (=> b!5335808 (= e!3313693 (nullable!5176 (regOne!30526 (h!67645 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun b!5335809 () Bool)

(declare-fun c!928209 () Bool)

(assert (=> b!5335809 (= c!928209 ((_ is Star!15007) (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> b!5335809 (= e!3313690 e!3313689)))

(declare-fun bm!381389 () Bool)

(declare-fun c!928206 () Bool)

(assert (=> bm!381389 (= call!381393 (derivationStepZipperDown!455 (ite c!928205 (regOne!30527 (h!67645 (exprs!4891 (h!67646 zl!343)))) (ite c!928206 (regTwo!30526 (h!67645 (exprs!4891 (h!67646 zl!343)))) (ite c!928208 (regOne!30526 (h!67645 (exprs!4891 (h!67646 zl!343)))) (reg!15336 (h!67645 (exprs!4891 (h!67646 zl!343))))))) (ite (or c!928205 c!928206) lt!2175955 (Context!8783 call!381395)) (h!67644 s!2326)))))

(declare-fun bm!381390 () Bool)

(declare-fun $colon$colon!1410 (List!61321 Regex!15007) List!61321)

(assert (=> bm!381390 (= call!381392 ($colon$colon!1410 (exprs!4891 lt!2175955) (ite (or c!928206 c!928208) (regTwo!30526 (h!67645 (exprs!4891 (h!67646 zl!343)))) (h!67645 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun bm!381391 () Bool)

(assert (=> bm!381391 (= call!381394 call!381393)))

(declare-fun b!5335810 () Bool)

(assert (=> b!5335810 (= e!3313691 (store ((as const (Array Context!8782 Bool)) false) lt!2175955 true))))

(declare-fun b!5335811 () Bool)

(assert (=> b!5335811 (= e!3313690 call!381397)))

(declare-fun b!5335812 () Bool)

(assert (=> b!5335812 (= c!928206 e!3313693)))

(declare-fun res!2263284 () Bool)

(assert (=> b!5335812 (=> (not res!2263284) (not e!3313693))))

(assert (=> b!5335812 (= res!2263284 ((_ is Concat!23852) (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> b!5335812 (= e!3313692 e!3313688)))

(declare-fun bm!381392 () Bool)

(assert (=> bm!381392 (= call!381396 (derivationStepZipperDown!455 (ite c!928205 (regTwo!30527 (h!67645 (exprs!4891 (h!67646 zl!343)))) (regOne!30526 (h!67645 (exprs!4891 (h!67646 zl!343))))) (ite c!928205 lt!2175955 (Context!8783 call!381392)) (h!67644 s!2326)))))

(assert (= (and d!1712831 c!928207) b!5335810))

(assert (= (and d!1712831 (not c!928207)) b!5335802))

(assert (= (and b!5335802 c!928205) b!5335804))

(assert (= (and b!5335802 (not c!928205)) b!5335812))

(assert (= (and b!5335812 res!2263284) b!5335808))

(assert (= (and b!5335812 c!928206) b!5335807))

(assert (= (and b!5335812 (not c!928206)) b!5335806))

(assert (= (and b!5335806 c!928208) b!5335811))

(assert (= (and b!5335806 (not c!928208)) b!5335809))

(assert (= (and b!5335809 c!928209) b!5335805))

(assert (= (and b!5335809 (not c!928209)) b!5335803))

(assert (= (or b!5335811 b!5335805) bm!381388))

(assert (= (or b!5335811 b!5335805) bm!381387))

(assert (= (or b!5335807 bm!381388) bm!381390))

(assert (= (or b!5335807 bm!381387) bm!381391))

(assert (= (or b!5335804 b!5335807) bm!381392))

(assert (= (or b!5335804 bm!381391) bm!381389))

(declare-fun m!6368802 () Bool)

(assert (=> bm!381390 m!6368802))

(declare-fun m!6368804 () Bool)

(assert (=> b!5335810 m!6368804))

(declare-fun m!6368806 () Bool)

(assert (=> bm!381392 m!6368806))

(declare-fun m!6368808 () Bool)

(assert (=> b!5335808 m!6368808))

(declare-fun m!6368810 () Bool)

(assert (=> bm!381389 m!6368810))

(assert (=> b!5335403 d!1712831))

(declare-fun e!3313720 () (InoxSet Context!8782))

(declare-fun call!381410 () (InoxSet Context!8782))

(declare-fun b!5335854 () Bool)

(assert (=> b!5335854 (= e!3313720 ((_ map or) call!381410 (derivationStepZipperUp!379 (Context!8783 (t!374538 (exprs!4891 lt!2175955))) (h!67644 s!2326))))))

(declare-fun bm!381405 () Bool)

(assert (=> bm!381405 (= call!381410 (derivationStepZipperDown!455 (h!67645 (exprs!4891 lt!2175955)) (Context!8783 (t!374538 (exprs!4891 lt!2175955))) (h!67644 s!2326)))))

(declare-fun d!1712861 () Bool)

(declare-fun c!928227 () Bool)

(declare-fun e!3313718 () Bool)

(assert (=> d!1712861 (= c!928227 e!3313718)))

(declare-fun res!2263292 () Bool)

(assert (=> d!1712861 (=> (not res!2263292) (not e!3313718))))

(assert (=> d!1712861 (= res!2263292 ((_ is Cons!61197) (exprs!4891 lt!2175955)))))

(assert (=> d!1712861 (= (derivationStepZipperUp!379 lt!2175955 (h!67644 s!2326)) e!3313720)))

(declare-fun b!5335855 () Bool)

(declare-fun e!3313719 () (InoxSet Context!8782))

(assert (=> b!5335855 (= e!3313719 call!381410)))

(declare-fun b!5335856 () Bool)

(assert (=> b!5335856 (= e!3313720 e!3313719)))

(declare-fun c!928228 () Bool)

(assert (=> b!5335856 (= c!928228 ((_ is Cons!61197) (exprs!4891 lt!2175955)))))

(declare-fun b!5335857 () Bool)

(assert (=> b!5335857 (= e!3313719 ((as const (Array Context!8782 Bool)) false))))

(declare-fun b!5335858 () Bool)

(assert (=> b!5335858 (= e!3313718 (nullable!5176 (h!67645 (exprs!4891 lt!2175955))))))

(assert (= (and d!1712861 res!2263292) b!5335858))

(assert (= (and d!1712861 c!928227) b!5335854))

(assert (= (and d!1712861 (not c!928227)) b!5335856))

(assert (= (and b!5335856 c!928228) b!5335855))

(assert (= (and b!5335856 (not c!928228)) b!5335857))

(assert (= (or b!5335854 b!5335855) bm!381405))

(declare-fun m!6368842 () Bool)

(assert (=> b!5335854 m!6368842))

(declare-fun m!6368844 () Bool)

(assert (=> bm!381405 m!6368844))

(declare-fun m!6368846 () Bool)

(assert (=> b!5335858 m!6368846))

(assert (=> b!5335403 d!1712861))

(declare-fun d!1712873 () Bool)

(assert (=> d!1712873 (= (nullable!5176 (h!67645 (exprs!4891 (h!67646 zl!343)))) (nullableFct!1512 (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun bs!1237433 () Bool)

(assert (= bs!1237433 d!1712873))

(declare-fun m!6368848 () Bool)

(assert (=> bs!1237433 m!6368848))

(assert (=> b!5335403 d!1712873))

(declare-fun b!5335859 () Bool)

(declare-fun call!381411 () (InoxSet Context!8782))

(declare-fun e!3313723 () (InoxSet Context!8782))

(assert (=> b!5335859 (= e!3313723 ((_ map or) call!381411 (derivationStepZipperUp!379 (Context!8783 (t!374538 (exprs!4891 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343)))))))) (h!67644 s!2326))))))

(declare-fun bm!381406 () Bool)

(assert (=> bm!381406 (= call!381411 (derivationStepZipperDown!455 (h!67645 (exprs!4891 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343))))))) (Context!8783 (t!374538 (exprs!4891 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343)))))))) (h!67644 s!2326)))))

(declare-fun d!1712875 () Bool)

(declare-fun c!928229 () Bool)

(declare-fun e!3313721 () Bool)

(assert (=> d!1712875 (= c!928229 e!3313721)))

(declare-fun res!2263293 () Bool)

(assert (=> d!1712875 (=> (not res!2263293) (not e!3313721))))

(assert (=> d!1712875 (= res!2263293 ((_ is Cons!61197) (exprs!4891 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343))))))))))

(assert (=> d!1712875 (= (derivationStepZipperUp!379 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343))))) (h!67644 s!2326)) e!3313723)))

(declare-fun b!5335860 () Bool)

(declare-fun e!3313722 () (InoxSet Context!8782))

(assert (=> b!5335860 (= e!3313722 call!381411)))

(declare-fun b!5335861 () Bool)

(assert (=> b!5335861 (= e!3313723 e!3313722)))

(declare-fun c!928230 () Bool)

(assert (=> b!5335861 (= c!928230 ((_ is Cons!61197) (exprs!4891 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343))))))))))

(declare-fun b!5335862 () Bool)

(assert (=> b!5335862 (= e!3313722 ((as const (Array Context!8782 Bool)) false))))

(declare-fun b!5335863 () Bool)

(assert (=> b!5335863 (= e!3313721 (nullable!5176 (h!67645 (exprs!4891 (Context!8783 (Cons!61197 (h!67645 (exprs!4891 (h!67646 zl!343))) (t!374538 (exprs!4891 (h!67646 zl!343)))))))))))

(assert (= (and d!1712875 res!2263293) b!5335863))

(assert (= (and d!1712875 c!928229) b!5335859))

(assert (= (and d!1712875 (not c!928229)) b!5335861))

(assert (= (and b!5335861 c!928230) b!5335860))

(assert (= (and b!5335861 (not c!928230)) b!5335862))

(assert (= (or b!5335859 b!5335860) bm!381406))

(declare-fun m!6368852 () Bool)

(assert (=> b!5335859 m!6368852))

(declare-fun m!6368856 () Bool)

(assert (=> bm!381406 m!6368856))

(declare-fun m!6368860 () Bool)

(assert (=> b!5335863 m!6368860))

(assert (=> b!5335403 d!1712875))

(declare-fun d!1712881 () Bool)

(declare-fun dynLambda!24202 (Int Context!8782) (InoxSet Context!8782))

(assert (=> d!1712881 (= (flatMap!734 z!1189 lambda!273017) (dynLambda!24202 lambda!273017 (h!67646 zl!343)))))

(declare-fun lt!2176025 () Unit!153546)

(declare-fun choose!39972 ((InoxSet Context!8782) Context!8782 Int) Unit!153546)

(assert (=> d!1712881 (= lt!2176025 (choose!39972 z!1189 (h!67646 zl!343) lambda!273017))))

(assert (=> d!1712881 (= z!1189 (store ((as const (Array Context!8782 Bool)) false) (h!67646 zl!343) true))))

(assert (=> d!1712881 (= (lemmaFlatMapOnSingletonSet!266 z!1189 (h!67646 zl!343) lambda!273017) lt!2176025)))

(declare-fun b_lambda!205143 () Bool)

(assert (=> (not b_lambda!205143) (not d!1712881)))

(declare-fun bs!1237435 () Bool)

(assert (= bs!1237435 d!1712881))

(assert (=> bs!1237435 m!6368414))

(declare-fun m!6368868 () Bool)

(assert (=> bs!1237435 m!6368868))

(declare-fun m!6368870 () Bool)

(assert (=> bs!1237435 m!6368870))

(declare-fun m!6368872 () Bool)

(assert (=> bs!1237435 m!6368872))

(assert (=> b!5335403 d!1712881))

(declare-fun b!5335877 () Bool)

(declare-fun call!381413 () (InoxSet Context!8782))

(declare-fun e!3313733 () (InoxSet Context!8782))

(assert (=> b!5335877 (= e!3313733 ((_ map or) call!381413 (derivationStepZipperUp!379 (Context!8783 (t!374538 (exprs!4891 (h!67646 zl!343)))) (h!67644 s!2326))))))

(declare-fun bm!381408 () Bool)

(assert (=> bm!381408 (= call!381413 (derivationStepZipperDown!455 (h!67645 (exprs!4891 (h!67646 zl!343))) (Context!8783 (t!374538 (exprs!4891 (h!67646 zl!343)))) (h!67644 s!2326)))))

(declare-fun d!1712887 () Bool)

(declare-fun c!928237 () Bool)

(declare-fun e!3313731 () Bool)

(assert (=> d!1712887 (= c!928237 e!3313731)))

(declare-fun res!2263295 () Bool)

(assert (=> d!1712887 (=> (not res!2263295) (not e!3313731))))

(assert (=> d!1712887 (= res!2263295 ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343))))))

(assert (=> d!1712887 (= (derivationStepZipperUp!379 (h!67646 zl!343) (h!67644 s!2326)) e!3313733)))

(declare-fun b!5335878 () Bool)

(declare-fun e!3313732 () (InoxSet Context!8782))

(assert (=> b!5335878 (= e!3313732 call!381413)))

(declare-fun b!5335879 () Bool)

(assert (=> b!5335879 (= e!3313733 e!3313732)))

(declare-fun c!928238 () Bool)

(assert (=> b!5335879 (= c!928238 ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343))))))

(declare-fun b!5335880 () Bool)

(assert (=> b!5335880 (= e!3313732 ((as const (Array Context!8782 Bool)) false))))

(declare-fun b!5335881 () Bool)

(assert (=> b!5335881 (= e!3313731 (nullable!5176 (h!67645 (exprs!4891 (h!67646 zl!343)))))))

(assert (= (and d!1712887 res!2263295) b!5335881))

(assert (= (and d!1712887 c!928237) b!5335877))

(assert (= (and d!1712887 (not c!928237)) b!5335879))

(assert (= (and b!5335879 c!928238) b!5335878))

(assert (= (and b!5335879 (not c!928238)) b!5335880))

(assert (= (or b!5335877 b!5335878) bm!381408))

(declare-fun m!6368874 () Bool)

(assert (=> b!5335877 m!6368874))

(declare-fun m!6368876 () Bool)

(assert (=> bm!381408 m!6368876))

(assert (=> b!5335881 m!6368422))

(assert (=> b!5335403 d!1712887))

(declare-fun d!1712889 () Bool)

(declare-fun choose!39973 ((InoxSet Context!8782) Int) (InoxSet Context!8782))

(assert (=> d!1712889 (= (flatMap!734 z!1189 lambda!273017) (choose!39973 z!1189 lambda!273017))))

(declare-fun bs!1237436 () Bool)

(assert (= bs!1237436 d!1712889))

(declare-fun m!6368878 () Bool)

(assert (=> bs!1237436 m!6368878))

(assert (=> b!5335403 d!1712889))

(declare-fun d!1712891 () Bool)

(declare-fun c!928239 () Bool)

(assert (=> d!1712891 (= c!928239 (isEmpty!33171 (t!374537 s!2326)))))

(declare-fun e!3313734 () Bool)

(assert (=> d!1712891 (= (matchZipper!1251 lt!2175934 (t!374537 s!2326)) e!3313734)))

(declare-fun b!5335882 () Bool)

(assert (=> b!5335882 (= e!3313734 (nullableZipper!1360 lt!2175934))))

(declare-fun b!5335883 () Bool)

(assert (=> b!5335883 (= e!3313734 (matchZipper!1251 (derivationStepZipper!1248 lt!2175934 (head!11439 (t!374537 s!2326))) (tail!10536 (t!374537 s!2326))))))

(assert (= (and d!1712891 c!928239) b!5335882))

(assert (= (and d!1712891 (not c!928239)) b!5335883))

(assert (=> d!1712891 m!6368642))

(declare-fun m!6368880 () Bool)

(assert (=> b!5335882 m!6368880))

(assert (=> b!5335883 m!6368646))

(assert (=> b!5335883 m!6368646))

(declare-fun m!6368882 () Bool)

(assert (=> b!5335883 m!6368882))

(assert (=> b!5335883 m!6368650))

(assert (=> b!5335883 m!6368882))

(assert (=> b!5335883 m!6368650))

(declare-fun m!6368884 () Bool)

(assert (=> b!5335883 m!6368884))

(assert (=> b!5335388 d!1712891))

(declare-fun d!1712893 () Bool)

(assert (=> d!1712893 (= (isEmpty!33167 (t!374539 zl!343)) ((_ is Nil!61198) (t!374539 zl!343)))))

(assert (=> b!5335407 d!1712893))

(declare-fun bs!1237437 () Bool)

(declare-fun d!1712895 () Bool)

(assert (= bs!1237437 (and d!1712895 d!1712783)))

(declare-fun lambda!273062 () Int)

(assert (=> bs!1237437 (= lambda!273062 lambda!273039)))

(declare-fun bs!1237438 () Bool)

(assert (= bs!1237438 (and d!1712895 d!1712787)))

(assert (=> bs!1237438 (= lambda!273062 lambda!273050)))

(declare-fun bs!1237439 () Bool)

(assert (= bs!1237439 (and d!1712895 d!1712799)))

(assert (=> bs!1237439 (= lambda!273062 lambda!273053)))

(assert (=> d!1712895 (= (inv!80764 (h!67646 zl!343)) (forall!14427 (exprs!4891 (h!67646 zl!343)) lambda!273062))))

(declare-fun bs!1237440 () Bool)

(assert (= bs!1237440 d!1712895))

(declare-fun m!6368886 () Bool)

(assert (=> bs!1237440 m!6368886))

(assert (=> b!5335421 d!1712895))

(declare-fun bs!1237443 () Bool)

(declare-fun d!1712897 () Bool)

(assert (= bs!1237443 (and d!1712897 d!1712783)))

(declare-fun lambda!273065 () Int)

(assert (=> bs!1237443 (= lambda!273065 lambda!273039)))

(declare-fun bs!1237444 () Bool)

(assert (= bs!1237444 (and d!1712897 d!1712787)))

(assert (=> bs!1237444 (= lambda!273065 lambda!273050)))

(declare-fun bs!1237445 () Bool)

(assert (= bs!1237445 (and d!1712897 d!1712799)))

(assert (=> bs!1237445 (= lambda!273065 lambda!273053)))

(declare-fun bs!1237446 () Bool)

(assert (= bs!1237446 (and d!1712897 d!1712895)))

(assert (=> bs!1237446 (= lambda!273065 lambda!273062)))

(declare-fun b!5335939 () Bool)

(declare-fun e!3313777 () Bool)

(declare-fun e!3313778 () Bool)

(assert (=> b!5335939 (= e!3313777 e!3313778)))

(declare-fun c!928258 () Bool)

(assert (=> b!5335939 (= c!928258 (isEmpty!33168 (tail!10535 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5335940 () Bool)

(declare-fun lt!2176033 () Regex!15007)

(declare-fun isConcat!418 (Regex!15007) Bool)

(assert (=> b!5335940 (= e!3313778 (isConcat!418 lt!2176033))))

(declare-fun b!5335941 () Bool)

(declare-fun e!3313779 () Bool)

(assert (=> b!5335941 (= e!3313779 (isEmpty!33168 (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun e!3313776 () Bool)

(assert (=> d!1712897 e!3313776))

(declare-fun res!2263319 () Bool)

(assert (=> d!1712897 (=> (not res!2263319) (not e!3313776))))

(assert (=> d!1712897 (= res!2263319 (validRegex!6743 lt!2176033))))

(declare-fun e!3313774 () Regex!15007)

(assert (=> d!1712897 (= lt!2176033 e!3313774)))

(declare-fun c!928261 () Bool)

(assert (=> d!1712897 (= c!928261 e!3313779)))

(declare-fun res!2263320 () Bool)

(assert (=> d!1712897 (=> (not res!2263320) (not e!3313779))))

(assert (=> d!1712897 (= res!2263320 ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343))))))

(assert (=> d!1712897 (forall!14427 (exprs!4891 (h!67646 zl!343)) lambda!273065)))

(assert (=> d!1712897 (= (generalisedConcat!676 (exprs!4891 (h!67646 zl!343))) lt!2176033)))

(declare-fun b!5335942 () Bool)

(assert (=> b!5335942 (= e!3313778 (= lt!2176033 (head!11438 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5335943 () Bool)

(declare-fun e!3313775 () Regex!15007)

(assert (=> b!5335943 (= e!3313775 (Concat!23852 (h!67645 (exprs!4891 (h!67646 zl!343))) (generalisedConcat!676 (t!374538 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun b!5335944 () Bool)

(declare-fun isEmptyExpr!895 (Regex!15007) Bool)

(assert (=> b!5335944 (= e!3313777 (isEmptyExpr!895 lt!2176033))))

(declare-fun b!5335945 () Bool)

(assert (=> b!5335945 (= e!3313774 (h!67645 (exprs!4891 (h!67646 zl!343))))))

(declare-fun b!5335946 () Bool)

(assert (=> b!5335946 (= e!3313776 e!3313777)))

(declare-fun c!928260 () Bool)

(assert (=> b!5335946 (= c!928260 (isEmpty!33168 (exprs!4891 (h!67646 zl!343))))))

(declare-fun b!5335947 () Bool)

(assert (=> b!5335947 (= e!3313774 e!3313775)))

(declare-fun c!928259 () Bool)

(assert (=> b!5335947 (= c!928259 ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343))))))

(declare-fun b!5335948 () Bool)

(assert (=> b!5335948 (= e!3313775 EmptyExpr!15007)))

(assert (= (and d!1712897 res!2263320) b!5335941))

(assert (= (and d!1712897 c!928261) b!5335945))

(assert (= (and d!1712897 (not c!928261)) b!5335947))

(assert (= (and b!5335947 c!928259) b!5335943))

(assert (= (and b!5335947 (not c!928259)) b!5335948))

(assert (= (and d!1712897 res!2263319) b!5335946))

(assert (= (and b!5335946 c!928260) b!5335944))

(assert (= (and b!5335946 (not c!928260)) b!5335939))

(assert (= (and b!5335939 c!928258) b!5335942))

(assert (= (and b!5335939 (not c!928258)) b!5335940))

(assert (=> b!5335941 m!6368436))

(assert (=> b!5335943 m!6368396))

(declare-fun m!6368914 () Bool)

(assert (=> b!5335946 m!6368914))

(declare-fun m!6368916 () Bool)

(assert (=> b!5335939 m!6368916))

(assert (=> b!5335939 m!6368916))

(declare-fun m!6368918 () Bool)

(assert (=> b!5335939 m!6368918))

(declare-fun m!6368920 () Bool)

(assert (=> b!5335940 m!6368920))

(declare-fun m!6368922 () Bool)

(assert (=> d!1712897 m!6368922))

(declare-fun m!6368924 () Bool)

(assert (=> d!1712897 m!6368924))

(declare-fun m!6368926 () Bool)

(assert (=> b!5335944 m!6368926))

(declare-fun m!6368928 () Bool)

(assert (=> b!5335942 m!6368928))

(assert (=> b!5335420 d!1712897))

(declare-fun d!1712913 () Bool)

(assert (=> d!1712913 (= (matchR!7192 lt!2175940 s!2326) (matchRSpec!2110 lt!2175940 s!2326))))

(declare-fun lt!2176036 () Unit!153546)

(declare-fun choose!39974 (Regex!15007 List!61320) Unit!153546)

(assert (=> d!1712913 (= lt!2176036 (choose!39974 lt!2175940 s!2326))))

(assert (=> d!1712913 (validRegex!6743 lt!2175940)))

(assert (=> d!1712913 (= (mainMatchTheorem!2110 lt!2175940 s!2326) lt!2176036)))

(declare-fun bs!1237454 () Bool)

(assert (= bs!1237454 d!1712913))

(assert (=> bs!1237454 m!6368394))

(assert (=> bs!1237454 m!6368370))

(declare-fun m!6368932 () Bool)

(assert (=> bs!1237454 m!6368932))

(assert (=> bs!1237454 m!6368408))

(assert (=> b!5335419 d!1712913))

(declare-fun d!1712917 () Bool)

(declare-fun choose!39975 (Int) Bool)

(assert (=> d!1712917 (= (Exists!2188 lambda!273018) (choose!39975 lambda!273018))))

(declare-fun bs!1237455 () Bool)

(assert (= bs!1237455 d!1712917))

(declare-fun m!6368934 () Bool)

(assert (=> bs!1237455 m!6368934))

(assert (=> b!5335419 d!1712917))

(declare-fun d!1712919 () Bool)

(assert (=> d!1712919 (= (matchR!7192 lt!2175943 s!2326) (matchRSpec!2110 lt!2175943 s!2326))))

(declare-fun lt!2176039 () Unit!153546)

(assert (=> d!1712919 (= lt!2176039 (choose!39974 lt!2175943 s!2326))))

(assert (=> d!1712919 (validRegex!6743 lt!2175943)))

(assert (=> d!1712919 (= (mainMatchTheorem!2110 lt!2175943 s!2326) lt!2176039)))

(declare-fun bs!1237456 () Bool)

(assert (= bs!1237456 d!1712919))

(assert (=> bs!1237456 m!6368358))

(assert (=> bs!1237456 m!6368364))

(declare-fun m!6368936 () Bool)

(assert (=> bs!1237456 m!6368936))

(declare-fun m!6368938 () Bool)

(assert (=> bs!1237456 m!6368938))

(assert (=> b!5335419 d!1712919))

(declare-fun d!1712921 () Bool)

(assert (=> d!1712921 (= (Exists!2188 lambda!273020) (choose!39975 lambda!273020))))

(declare-fun bs!1237457 () Bool)

(assert (= bs!1237457 d!1712921))

(declare-fun m!6368940 () Bool)

(assert (=> bs!1237457 m!6368940))

(assert (=> b!5335419 d!1712921))

(declare-fun bs!1237463 () Bool)

(declare-fun d!1712923 () Bool)

(assert (= bs!1237463 (and d!1712923 b!5335419)))

(declare-fun lambda!273079 () Int)

(assert (=> bs!1237463 (not (= lambda!273079 lambda!273021))))

(assert (=> bs!1237463 (= lambda!273079 lambda!273020)))

(assert (=> bs!1237463 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273079 lambda!273018))))

(assert (=> bs!1237463 (not (= lambda!273079 lambda!273019))))

(declare-fun bs!1237464 () Bool)

(assert (= bs!1237464 (and d!1712923 b!5335397)))

(assert (=> bs!1237464 (not (= lambda!273079 lambda!273016))))

(assert (=> bs!1237464 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175937 (regTwo!30526 r!7292))) (= lambda!273079 lambda!273015))))

(assert (=> d!1712923 true))

(assert (=> d!1712923 true))

(assert (=> d!1712923 true))

(declare-fun lambda!273080 () Int)

(assert (=> bs!1237463 (= lambda!273080 lambda!273021)))

(assert (=> bs!1237463 (not (= lambda!273080 lambda!273020))))

(assert (=> bs!1237463 (not (= lambda!273080 lambda!273018))))

(declare-fun bs!1237465 () Bool)

(assert (= bs!1237465 d!1712923))

(assert (=> bs!1237465 (not (= lambda!273080 lambda!273079))))

(assert (=> bs!1237463 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273080 lambda!273019))))

(assert (=> bs!1237464 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175937 (regTwo!30526 r!7292))) (= lambda!273080 lambda!273016))))

(assert (=> bs!1237464 (not (= lambda!273080 lambda!273015))))

(assert (=> d!1712923 true))

(assert (=> d!1712923 true))

(assert (=> d!1712923 true))

(assert (=> d!1712923 (= (Exists!2188 lambda!273079) (Exists!2188 lambda!273080))))

(declare-fun lt!2176047 () Unit!153546)

(declare-fun choose!39976 (Regex!15007 Regex!15007 List!61320) Unit!153546)

(assert (=> d!1712923 (= lt!2176047 (choose!39976 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 s!2326))))

(assert (=> d!1712923 (validRegex!6743 (regTwo!30526 (regOne!30526 r!7292)))))

(assert (=> d!1712923 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!842 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 s!2326) lt!2176047)))

(declare-fun m!6368970 () Bool)

(assert (=> bs!1237465 m!6368970))

(declare-fun m!6368972 () Bool)

(assert (=> bs!1237465 m!6368972))

(declare-fun m!6368974 () Bool)

(assert (=> bs!1237465 m!6368974))

(declare-fun m!6368976 () Bool)

(assert (=> bs!1237465 m!6368976))

(assert (=> b!5335419 d!1712923))

(declare-fun bs!1237466 () Bool)

(declare-fun d!1712931 () Bool)

(assert (= bs!1237466 (and d!1712931 d!1712783)))

(declare-fun lambda!273083 () Int)

(assert (=> bs!1237466 (= lambda!273083 lambda!273039)))

(declare-fun bs!1237467 () Bool)

(assert (= bs!1237467 (and d!1712931 d!1712897)))

(assert (=> bs!1237467 (= lambda!273083 lambda!273065)))

(declare-fun bs!1237468 () Bool)

(assert (= bs!1237468 (and d!1712931 d!1712787)))

(assert (=> bs!1237468 (= lambda!273083 lambda!273050)))

(declare-fun bs!1237469 () Bool)

(assert (= bs!1237469 (and d!1712931 d!1712799)))

(assert (=> bs!1237469 (= lambda!273083 lambda!273053)))

(declare-fun bs!1237470 () Bool)

(assert (= bs!1237470 (and d!1712931 d!1712895)))

(assert (=> bs!1237470 (= lambda!273083 lambda!273062)))

(declare-fun b!5336001 () Bool)

(declare-fun e!3313811 () Bool)

(declare-fun e!3313812 () Bool)

(assert (=> b!5336001 (= e!3313811 e!3313812)))

(declare-fun c!928281 () Bool)

(assert (=> b!5336001 (= c!928281 (isEmpty!33168 (tail!10535 lt!2175949)))))

(declare-fun b!5336002 () Bool)

(declare-fun lt!2176050 () Regex!15007)

(assert (=> b!5336002 (= e!3313812 (isConcat!418 lt!2176050))))

(declare-fun b!5336003 () Bool)

(declare-fun e!3313813 () Bool)

(assert (=> b!5336003 (= e!3313813 (isEmpty!33168 (t!374538 lt!2175949)))))

(declare-fun e!3313810 () Bool)

(assert (=> d!1712931 e!3313810))

(declare-fun res!2263335 () Bool)

(assert (=> d!1712931 (=> (not res!2263335) (not e!3313810))))

(assert (=> d!1712931 (= res!2263335 (validRegex!6743 lt!2176050))))

(declare-fun e!3313808 () Regex!15007)

(assert (=> d!1712931 (= lt!2176050 e!3313808)))

(declare-fun c!928284 () Bool)

(assert (=> d!1712931 (= c!928284 e!3313813)))

(declare-fun res!2263336 () Bool)

(assert (=> d!1712931 (=> (not res!2263336) (not e!3313813))))

(assert (=> d!1712931 (= res!2263336 ((_ is Cons!61197) lt!2175949))))

(assert (=> d!1712931 (forall!14427 lt!2175949 lambda!273083)))

(assert (=> d!1712931 (= (generalisedConcat!676 lt!2175949) lt!2176050)))

(declare-fun b!5336004 () Bool)

(assert (=> b!5336004 (= e!3313812 (= lt!2176050 (head!11438 lt!2175949)))))

(declare-fun b!5336005 () Bool)

(declare-fun e!3313809 () Regex!15007)

(assert (=> b!5336005 (= e!3313809 (Concat!23852 (h!67645 lt!2175949) (generalisedConcat!676 (t!374538 lt!2175949))))))

(declare-fun b!5336006 () Bool)

(assert (=> b!5336006 (= e!3313811 (isEmptyExpr!895 lt!2176050))))

(declare-fun b!5336007 () Bool)

(assert (=> b!5336007 (= e!3313808 (h!67645 lt!2175949))))

(declare-fun b!5336008 () Bool)

(assert (=> b!5336008 (= e!3313810 e!3313811)))

(declare-fun c!928283 () Bool)

(assert (=> b!5336008 (= c!928283 (isEmpty!33168 lt!2175949))))

(declare-fun b!5336009 () Bool)

(assert (=> b!5336009 (= e!3313808 e!3313809)))

(declare-fun c!928282 () Bool)

(assert (=> b!5336009 (= c!928282 ((_ is Cons!61197) lt!2175949))))

(declare-fun b!5336010 () Bool)

(assert (=> b!5336010 (= e!3313809 EmptyExpr!15007)))

(assert (= (and d!1712931 res!2263336) b!5336003))

(assert (= (and d!1712931 c!928284) b!5336007))

(assert (= (and d!1712931 (not c!928284)) b!5336009))

(assert (= (and b!5336009 c!928282) b!5336005))

(assert (= (and b!5336009 (not c!928282)) b!5336010))

(assert (= (and d!1712931 res!2263335) b!5336008))

(assert (= (and b!5336008 c!928283) b!5336006))

(assert (= (and b!5336008 (not c!928283)) b!5336001))

(assert (= (and b!5336001 c!928281) b!5336004))

(assert (= (and b!5336001 (not c!928281)) b!5336002))

(declare-fun m!6368978 () Bool)

(assert (=> b!5336003 m!6368978))

(declare-fun m!6368980 () Bool)

(assert (=> b!5336005 m!6368980))

(declare-fun m!6368982 () Bool)

(assert (=> b!5336008 m!6368982))

(declare-fun m!6368984 () Bool)

(assert (=> b!5336001 m!6368984))

(assert (=> b!5336001 m!6368984))

(declare-fun m!6368986 () Bool)

(assert (=> b!5336001 m!6368986))

(declare-fun m!6368988 () Bool)

(assert (=> b!5336002 m!6368988))

(declare-fun m!6368990 () Bool)

(assert (=> d!1712931 m!6368990))

(declare-fun m!6368992 () Bool)

(assert (=> d!1712931 m!6368992))

(declare-fun m!6368994 () Bool)

(assert (=> b!5336006 m!6368994))

(declare-fun m!6368996 () Bool)

(assert (=> b!5336004 m!6368996))

(assert (=> b!5335419 d!1712931))

(declare-fun d!1712933 () Bool)

(assert (=> d!1712933 (= (Exists!2188 lambda!273021) (choose!39975 lambda!273021))))

(declare-fun bs!1237477 () Bool)

(assert (= bs!1237477 d!1712933))

(declare-fun m!6368998 () Bool)

(assert (=> bs!1237477 m!6368998))

(assert (=> b!5335419 d!1712933))

(declare-fun bs!1237478 () Bool)

(declare-fun d!1712935 () Bool)

(assert (= bs!1237478 (and d!1712935 d!1712783)))

(declare-fun lambda!273085 () Int)

(assert (=> bs!1237478 (= lambda!273085 lambda!273039)))

(declare-fun bs!1237479 () Bool)

(assert (= bs!1237479 (and d!1712935 d!1712897)))

(assert (=> bs!1237479 (= lambda!273085 lambda!273065)))

(declare-fun bs!1237480 () Bool)

(assert (= bs!1237480 (and d!1712935 d!1712787)))

(assert (=> bs!1237480 (= lambda!273085 lambda!273050)))

(declare-fun bs!1237481 () Bool)

(assert (= bs!1237481 (and d!1712935 d!1712799)))

(assert (=> bs!1237481 (= lambda!273085 lambda!273053)))

(declare-fun bs!1237482 () Bool)

(assert (= bs!1237482 (and d!1712935 d!1712931)))

(assert (=> bs!1237482 (= lambda!273085 lambda!273083)))

(declare-fun bs!1237483 () Bool)

(assert (= bs!1237483 (and d!1712935 d!1712895)))

(assert (=> bs!1237483 (= lambda!273085 lambda!273062)))

(declare-fun b!5336013 () Bool)

(declare-fun e!3313818 () Bool)

(declare-fun e!3313819 () Bool)

(assert (=> b!5336013 (= e!3313818 e!3313819)))

(declare-fun c!928286 () Bool)

(assert (=> b!5336013 (= c!928286 (isEmpty!33168 (tail!10535 lt!2175939)))))

(declare-fun b!5336014 () Bool)

(declare-fun lt!2176052 () Regex!15007)

(assert (=> b!5336014 (= e!3313819 (isConcat!418 lt!2176052))))

(declare-fun b!5336015 () Bool)

(declare-fun e!3313820 () Bool)

(assert (=> b!5336015 (= e!3313820 (isEmpty!33168 (t!374538 lt!2175939)))))

(declare-fun e!3313817 () Bool)

(assert (=> d!1712935 e!3313817))

(declare-fun res!2263337 () Bool)

(assert (=> d!1712935 (=> (not res!2263337) (not e!3313817))))

(assert (=> d!1712935 (= res!2263337 (validRegex!6743 lt!2176052))))

(declare-fun e!3313815 () Regex!15007)

(assert (=> d!1712935 (= lt!2176052 e!3313815)))

(declare-fun c!928289 () Bool)

(assert (=> d!1712935 (= c!928289 e!3313820)))

(declare-fun res!2263338 () Bool)

(assert (=> d!1712935 (=> (not res!2263338) (not e!3313820))))

(assert (=> d!1712935 (= res!2263338 ((_ is Cons!61197) lt!2175939))))

(assert (=> d!1712935 (forall!14427 lt!2175939 lambda!273085)))

(assert (=> d!1712935 (= (generalisedConcat!676 lt!2175939) lt!2176052)))

(declare-fun b!5336016 () Bool)

(assert (=> b!5336016 (= e!3313819 (= lt!2176052 (head!11438 lt!2175939)))))

(declare-fun b!5336017 () Bool)

(declare-fun e!3313816 () Regex!15007)

(assert (=> b!5336017 (= e!3313816 (Concat!23852 (h!67645 lt!2175939) (generalisedConcat!676 (t!374538 lt!2175939))))))

(declare-fun b!5336018 () Bool)

(assert (=> b!5336018 (= e!3313818 (isEmptyExpr!895 lt!2176052))))

(declare-fun b!5336019 () Bool)

(assert (=> b!5336019 (= e!3313815 (h!67645 lt!2175939))))

(declare-fun b!5336020 () Bool)

(assert (=> b!5336020 (= e!3313817 e!3313818)))

(declare-fun c!928288 () Bool)

(assert (=> b!5336020 (= c!928288 (isEmpty!33168 lt!2175939))))

(declare-fun b!5336021 () Bool)

(assert (=> b!5336021 (= e!3313815 e!3313816)))

(declare-fun c!928287 () Bool)

(assert (=> b!5336021 (= c!928287 ((_ is Cons!61197) lt!2175939))))

(declare-fun b!5336022 () Bool)

(assert (=> b!5336022 (= e!3313816 EmptyExpr!15007)))

(assert (= (and d!1712935 res!2263338) b!5336015))

(assert (= (and d!1712935 c!928289) b!5336019))

(assert (= (and d!1712935 (not c!928289)) b!5336021))

(assert (= (and b!5336021 c!928287) b!5336017))

(assert (= (and b!5336021 (not c!928287)) b!5336022))

(assert (= (and d!1712935 res!2263337) b!5336020))

(assert (= (and b!5336020 c!928288) b!5336018))

(assert (= (and b!5336020 (not c!928288)) b!5336013))

(assert (= (and b!5336013 c!928286) b!5336016))

(assert (= (and b!5336013 (not c!928286)) b!5336014))

(declare-fun m!6369004 () Bool)

(assert (=> b!5336015 m!6369004))

(declare-fun m!6369006 () Bool)

(assert (=> b!5336017 m!6369006))

(declare-fun m!6369008 () Bool)

(assert (=> b!5336020 m!6369008))

(declare-fun m!6369010 () Bool)

(assert (=> b!5336013 m!6369010))

(assert (=> b!5336013 m!6369010))

(declare-fun m!6369012 () Bool)

(assert (=> b!5336013 m!6369012))

(declare-fun m!6369014 () Bool)

(assert (=> b!5336014 m!6369014))

(declare-fun m!6369016 () Bool)

(assert (=> d!1712935 m!6369016))

(declare-fun m!6369018 () Bool)

(assert (=> d!1712935 m!6369018))

(declare-fun m!6369020 () Bool)

(assert (=> b!5336018 m!6369020))

(declare-fun m!6369022 () Bool)

(assert (=> b!5336016 m!6369022))

(assert (=> b!5335419 d!1712935))

(declare-fun bs!1237485 () Bool)

(declare-fun d!1712939 () Bool)

(assert (= bs!1237485 (and d!1712939 b!5335419)))

(declare-fun lambda!273092 () Int)

(assert (=> bs!1237485 (not (= lambda!273092 lambda!273021))))

(assert (=> bs!1237485 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (= lt!2175943 lt!2175937)) (= lambda!273092 lambda!273020))))

(declare-fun bs!1237486 () Bool)

(assert (= bs!1237486 (and d!1712939 d!1712923)))

(assert (=> bs!1237486 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (= lt!2175943 lt!2175937)) (= lambda!273092 lambda!273079))))

(assert (=> bs!1237485 (not (= lambda!273092 lambda!273019))))

(declare-fun bs!1237487 () Bool)

(assert (= bs!1237487 (and d!1712939 b!5335397)))

(assert (=> bs!1237487 (not (= lambda!273092 lambda!273016))))

(assert (=> bs!1237487 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175943 (regTwo!30526 r!7292))) (= lambda!273092 lambda!273015))))

(assert (=> bs!1237485 (= lambda!273092 lambda!273018)))

(assert (=> bs!1237486 (not (= lambda!273092 lambda!273080))))

(assert (=> d!1712939 true))

(assert (=> d!1712939 true))

(assert (=> d!1712939 true))

(assert (=> d!1712939 (= (isDefined!11821 (findConcatSeparation!1532 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 Nil!61196 s!2326 s!2326)) (Exists!2188 lambda!273092))))

(declare-fun lt!2176066 () Unit!153546)

(declare-fun choose!39977 (Regex!15007 Regex!15007 List!61320) Unit!153546)

(assert (=> d!1712939 (= lt!2176066 (choose!39977 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 s!2326))))

(assert (=> d!1712939 (validRegex!6743 (regOne!30526 (regOne!30526 r!7292)))))

(assert (=> d!1712939 (= (lemmaFindConcatSeparationEquivalentToExists!1296 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 s!2326) lt!2176066)))

(declare-fun bs!1237488 () Bool)

(assert (= bs!1237488 d!1712939))

(declare-fun m!6369026 () Bool)

(assert (=> bs!1237488 m!6369026))

(assert (=> bs!1237488 m!6368360))

(declare-fun m!6369028 () Bool)

(assert (=> bs!1237488 m!6369028))

(assert (=> bs!1237488 m!6368360))

(assert (=> bs!1237488 m!6368380))

(declare-fun m!6369030 () Bool)

(assert (=> bs!1237488 m!6369030))

(assert (=> b!5335419 d!1712939))

(declare-fun d!1712943 () Bool)

(assert (=> d!1712943 (= (Exists!2188 lambda!273019) (choose!39975 lambda!273019))))

(declare-fun bs!1237489 () Bool)

(assert (= bs!1237489 d!1712943))

(declare-fun m!6369032 () Bool)

(assert (=> bs!1237489 m!6369032))

(assert (=> b!5335419 d!1712943))

(declare-fun bs!1237490 () Bool)

(declare-fun d!1712945 () Bool)

(assert (= bs!1237490 (and d!1712945 b!5335419)))

(declare-fun lambda!273095 () Int)

(assert (=> bs!1237490 (not (= lambda!273095 lambda!273021))))

(declare-fun bs!1237491 () Bool)

(assert (= bs!1237491 (and d!1712945 d!1712939)))

(assert (=> bs!1237491 (= lambda!273095 lambda!273092)))

(assert (=> bs!1237490 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (= lt!2175943 lt!2175937)) (= lambda!273095 lambda!273020))))

(declare-fun bs!1237492 () Bool)

(assert (= bs!1237492 (and d!1712945 d!1712923)))

(assert (=> bs!1237492 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (= lt!2175943 lt!2175937)) (= lambda!273095 lambda!273079))))

(assert (=> bs!1237490 (not (= lambda!273095 lambda!273019))))

(declare-fun bs!1237493 () Bool)

(assert (= bs!1237493 (and d!1712945 b!5335397)))

(assert (=> bs!1237493 (not (= lambda!273095 lambda!273016))))

(assert (=> bs!1237493 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175943 (regTwo!30526 r!7292))) (= lambda!273095 lambda!273015))))

(assert (=> bs!1237490 (= lambda!273095 lambda!273018)))

(assert (=> bs!1237492 (not (= lambda!273095 lambda!273080))))

(assert (=> d!1712945 true))

(assert (=> d!1712945 true))

(assert (=> d!1712945 true))

(declare-fun lambda!273099 () Int)

(assert (=> bs!1237490 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (= lt!2175943 lt!2175937)) (= lambda!273099 lambda!273021))))

(assert (=> bs!1237491 (not (= lambda!273099 lambda!273092))))

(declare-fun bs!1237496 () Bool)

(assert (= bs!1237496 d!1712945))

(assert (=> bs!1237496 (not (= lambda!273099 lambda!273095))))

(assert (=> bs!1237490 (not (= lambda!273099 lambda!273020))))

(assert (=> bs!1237492 (not (= lambda!273099 lambda!273079))))

(assert (=> bs!1237490 (= lambda!273099 lambda!273019)))

(assert (=> bs!1237493 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175943 (regTwo!30526 r!7292))) (= lambda!273099 lambda!273016))))

(assert (=> bs!1237493 (not (= lambda!273099 lambda!273015))))

(assert (=> bs!1237490 (not (= lambda!273099 lambda!273018))))

(assert (=> bs!1237492 (= (and (= (regOne!30526 (regOne!30526 r!7292)) (regTwo!30526 (regOne!30526 r!7292))) (= lt!2175943 lt!2175937)) (= lambda!273099 lambda!273080))))

(assert (=> d!1712945 true))

(assert (=> d!1712945 true))

(assert (=> d!1712945 true))

(assert (=> d!1712945 (= (Exists!2188 lambda!273095) (Exists!2188 lambda!273099))))

(declare-fun lt!2176067 () Unit!153546)

(assert (=> d!1712945 (= lt!2176067 (choose!39976 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 s!2326))))

(assert (=> d!1712945 (validRegex!6743 (regOne!30526 (regOne!30526 r!7292)))))

(assert (=> d!1712945 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!842 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 s!2326) lt!2176067)))

(declare-fun m!6369052 () Bool)

(assert (=> bs!1237496 m!6369052))

(declare-fun m!6369054 () Bool)

(assert (=> bs!1237496 m!6369054))

(declare-fun m!6369058 () Bool)

(assert (=> bs!1237496 m!6369058))

(assert (=> bs!1237496 m!6369030))

(assert (=> b!5335419 d!1712945))

(declare-fun b!5336127 () Bool)

(declare-fun e!3313876 () Bool)

(declare-fun lt!2176085 () Option!15118)

(assert (=> b!5336127 (= e!3313876 (not (isDefined!11821 lt!2176085)))))

(declare-fun b!5336128 () Bool)

(declare-fun e!3313877 () Bool)

(declare-fun ++!13340 (List!61320 List!61320) List!61320)

(declare-fun get!21049 (Option!15118) tuple2!64412)

(assert (=> b!5336128 (= e!3313877 (= (++!13340 (_1!35509 (get!21049 lt!2176085)) (_2!35509 (get!21049 lt!2176085))) s!2326))))

(declare-fun b!5336129 () Bool)

(declare-fun res!2263369 () Bool)

(assert (=> b!5336129 (=> (not res!2263369) (not e!3313877))))

(assert (=> b!5336129 (= res!2263369 (matchR!7192 lt!2175937 (_2!35509 (get!21049 lt!2176085))))))

(declare-fun b!5336130 () Bool)

(declare-fun e!3313879 () Option!15118)

(declare-fun e!3313878 () Option!15118)

(assert (=> b!5336130 (= e!3313879 e!3313878)))

(declare-fun c!928308 () Bool)

(assert (=> b!5336130 (= c!928308 ((_ is Nil!61196) s!2326))))

(declare-fun b!5336131 () Bool)

(assert (=> b!5336131 (= e!3313878 None!15117)))

(declare-fun b!5336132 () Bool)

(declare-fun res!2263366 () Bool)

(assert (=> b!5336132 (=> (not res!2263366) (not e!3313877))))

(assert (=> b!5336132 (= res!2263366 (matchR!7192 (regTwo!30526 (regOne!30526 r!7292)) (_1!35509 (get!21049 lt!2176085))))))

(declare-fun b!5336133 () Bool)

(assert (=> b!5336133 (= e!3313879 (Some!15117 (tuple2!64413 Nil!61196 s!2326)))))

(declare-fun b!5336134 () Bool)

(declare-fun lt!2176087 () Unit!153546)

(declare-fun lt!2176086 () Unit!153546)

(assert (=> b!5336134 (= lt!2176087 lt!2176086)))

(assert (=> b!5336134 (= (++!13340 (++!13340 Nil!61196 (Cons!61196 (h!67644 s!2326) Nil!61196)) (t!374537 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1755 (List!61320 C!30284 List!61320 List!61320) Unit!153546)

(assert (=> b!5336134 (= lt!2176086 (lemmaMoveElementToOtherListKeepsConcatEq!1755 Nil!61196 (h!67644 s!2326) (t!374537 s!2326) s!2326))))

(assert (=> b!5336134 (= e!3313878 (findConcatSeparation!1532 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 (++!13340 Nil!61196 (Cons!61196 (h!67644 s!2326) Nil!61196)) (t!374537 s!2326) s!2326))))

(declare-fun d!1712949 () Bool)

(assert (=> d!1712949 e!3313876))

(declare-fun res!2263368 () Bool)

(assert (=> d!1712949 (=> res!2263368 e!3313876)))

(assert (=> d!1712949 (= res!2263368 e!3313877)))

(declare-fun res!2263365 () Bool)

(assert (=> d!1712949 (=> (not res!2263365) (not e!3313877))))

(assert (=> d!1712949 (= res!2263365 (isDefined!11821 lt!2176085))))

(assert (=> d!1712949 (= lt!2176085 e!3313879)))

(declare-fun c!928307 () Bool)

(declare-fun e!3313875 () Bool)

(assert (=> d!1712949 (= c!928307 e!3313875)))

(declare-fun res!2263367 () Bool)

(assert (=> d!1712949 (=> (not res!2263367) (not e!3313875))))

(assert (=> d!1712949 (= res!2263367 (matchR!7192 (regTwo!30526 (regOne!30526 r!7292)) Nil!61196))))

(assert (=> d!1712949 (validRegex!6743 (regTwo!30526 (regOne!30526 r!7292)))))

(assert (=> d!1712949 (= (findConcatSeparation!1532 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 Nil!61196 s!2326 s!2326) lt!2176085)))

(declare-fun b!5336135 () Bool)

(assert (=> b!5336135 (= e!3313875 (matchR!7192 lt!2175937 s!2326))))

(assert (= (and d!1712949 res!2263367) b!5336135))

(assert (= (and d!1712949 c!928307) b!5336133))

(assert (= (and d!1712949 (not c!928307)) b!5336130))

(assert (= (and b!5336130 c!928308) b!5336131))

(assert (= (and b!5336130 (not c!928308)) b!5336134))

(assert (= (and d!1712949 res!2263365) b!5336132))

(assert (= (and b!5336132 res!2263366) b!5336129))

(assert (= (and b!5336129 res!2263369) b!5336128))

(assert (= (and d!1712949 (not res!2263368)) b!5336127))

(declare-fun m!6369084 () Bool)

(assert (=> b!5336128 m!6369084))

(declare-fun m!6369086 () Bool)

(assert (=> b!5336128 m!6369086))

(assert (=> b!5336132 m!6369084))

(declare-fun m!6369088 () Bool)

(assert (=> b!5336132 m!6369088))

(declare-fun m!6369090 () Bool)

(assert (=> b!5336127 m!6369090))

(declare-fun m!6369092 () Bool)

(assert (=> b!5336134 m!6369092))

(assert (=> b!5336134 m!6369092))

(declare-fun m!6369094 () Bool)

(assert (=> b!5336134 m!6369094))

(declare-fun m!6369096 () Bool)

(assert (=> b!5336134 m!6369096))

(assert (=> b!5336134 m!6369092))

(declare-fun m!6369098 () Bool)

(assert (=> b!5336134 m!6369098))

(assert (=> d!1712949 m!6369090))

(declare-fun m!6369100 () Bool)

(assert (=> d!1712949 m!6369100))

(assert (=> d!1712949 m!6368976))

(declare-fun m!6369102 () Bool)

(assert (=> b!5336135 m!6369102))

(assert (=> b!5336129 m!6369084))

(declare-fun m!6369104 () Bool)

(assert (=> b!5336129 m!6369104))

(assert (=> b!5335419 d!1712949))

(declare-fun bs!1237511 () Bool)

(declare-fun b!5336176 () Bool)

(assert (= bs!1237511 (and b!5336176 b!5335419)))

(declare-fun lambda!273108 () Int)

(assert (=> bs!1237511 (not (= lambda!273108 lambda!273021))))

(declare-fun bs!1237512 () Bool)

(assert (= bs!1237512 (and b!5336176 d!1712939)))

(assert (=> bs!1237512 (not (= lambda!273108 lambda!273092))))

(declare-fun bs!1237513 () Bool)

(assert (= bs!1237513 (and b!5336176 d!1712945)))

(assert (=> bs!1237513 (not (= lambda!273108 lambda!273095))))

(assert (=> bs!1237513 (not (= lambda!273108 lambda!273099))))

(assert (=> bs!1237511 (not (= lambda!273108 lambda!273020))))

(declare-fun bs!1237514 () Bool)

(assert (= bs!1237514 (and b!5336176 d!1712923)))

(assert (=> bs!1237514 (not (= lambda!273108 lambda!273079))))

(assert (=> bs!1237511 (not (= lambda!273108 lambda!273019))))

(declare-fun bs!1237515 () Bool)

(assert (= bs!1237515 (and b!5336176 b!5335397)))

(assert (=> bs!1237515 (not (= lambda!273108 lambda!273016))))

(assert (=> bs!1237515 (not (= lambda!273108 lambda!273015))))

(assert (=> bs!1237511 (not (= lambda!273108 lambda!273018))))

(assert (=> bs!1237514 (not (= lambda!273108 lambda!273080))))

(assert (=> b!5336176 true))

(assert (=> b!5336176 true))

(declare-fun bs!1237516 () Bool)

(declare-fun b!5336174 () Bool)

(assert (= bs!1237516 (and b!5336174 b!5335419)))

(declare-fun lambda!273109 () Int)

(assert (=> bs!1237516 (= (and (= (regOne!30526 lt!2175940) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175940) lt!2175937)) (= lambda!273109 lambda!273021))))

(declare-fun bs!1237517 () Bool)

(assert (= bs!1237517 (and b!5336174 d!1712939)))

(assert (=> bs!1237517 (not (= lambda!273109 lambda!273092))))

(declare-fun bs!1237518 () Bool)

(assert (= bs!1237518 (and b!5336174 d!1712945)))

(assert (=> bs!1237518 (not (= lambda!273109 lambda!273095))))

(assert (=> bs!1237518 (= (and (= (regOne!30526 lt!2175940) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175940) lt!2175943)) (= lambda!273109 lambda!273099))))

(declare-fun bs!1237519 () Bool)

(assert (= bs!1237519 (and b!5336174 b!5336176)))

(assert (=> bs!1237519 (not (= lambda!273109 lambda!273108))))

(assert (=> bs!1237516 (not (= lambda!273109 lambda!273020))))

(declare-fun bs!1237520 () Bool)

(assert (= bs!1237520 (and b!5336174 d!1712923)))

(assert (=> bs!1237520 (not (= lambda!273109 lambda!273079))))

(assert (=> bs!1237516 (= (and (= (regOne!30526 lt!2175940) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175940) lt!2175943)) (= lambda!273109 lambda!273019))))

(declare-fun bs!1237521 () Bool)

(assert (= bs!1237521 (and b!5336174 b!5335397)))

(assert (=> bs!1237521 (= (and (= (regOne!30526 lt!2175940) (regOne!30526 r!7292)) (= (regTwo!30526 lt!2175940) (regTwo!30526 r!7292))) (= lambda!273109 lambda!273016))))

(assert (=> bs!1237521 (not (= lambda!273109 lambda!273015))))

(assert (=> bs!1237516 (not (= lambda!273109 lambda!273018))))

(assert (=> bs!1237520 (= (and (= (regOne!30526 lt!2175940) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175940) lt!2175937)) (= lambda!273109 lambda!273080))))

(assert (=> b!5336174 true))

(assert (=> b!5336174 true))

(declare-fun b!5336168 () Bool)

(declare-fun e!3313902 () Bool)

(declare-fun e!3313900 () Bool)

(assert (=> b!5336168 (= e!3313902 e!3313900)))

(declare-fun res!2263386 () Bool)

(assert (=> b!5336168 (= res!2263386 (matchRSpec!2110 (regOne!30527 lt!2175940) s!2326))))

(assert (=> b!5336168 (=> res!2263386 e!3313900)))

(declare-fun c!928319 () Bool)

(declare-fun bm!381426 () Bool)

(declare-fun call!381432 () Bool)

(assert (=> bm!381426 (= call!381432 (Exists!2188 (ite c!928319 lambda!273108 lambda!273109)))))

(declare-fun b!5336169 () Bool)

(declare-fun c!928320 () Bool)

(assert (=> b!5336169 (= c!928320 ((_ is Union!15007) lt!2175940))))

(declare-fun e!3313898 () Bool)

(assert (=> b!5336169 (= e!3313898 e!3313902)))

(declare-fun b!5336170 () Bool)

(declare-fun c!928317 () Bool)

(assert (=> b!5336170 (= c!928317 ((_ is ElementMatch!15007) lt!2175940))))

(declare-fun e!3313901 () Bool)

(assert (=> b!5336170 (= e!3313901 e!3313898)))

(declare-fun b!5336171 () Bool)

(declare-fun res!2263388 () Bool)

(declare-fun e!3313899 () Bool)

(assert (=> b!5336171 (=> res!2263388 e!3313899)))

(declare-fun call!381431 () Bool)

(assert (=> b!5336171 (= res!2263388 call!381431)))

(declare-fun e!3313903 () Bool)

(assert (=> b!5336171 (= e!3313903 e!3313899)))

(declare-fun bm!381427 () Bool)

(assert (=> bm!381427 (= call!381431 (isEmpty!33171 s!2326))))

(declare-fun b!5336172 () Bool)

(declare-fun e!3313904 () Bool)

(assert (=> b!5336172 (= e!3313904 call!381431)))

(declare-fun d!1712963 () Bool)

(declare-fun c!928318 () Bool)

(assert (=> d!1712963 (= c!928318 ((_ is EmptyExpr!15007) lt!2175940))))

(assert (=> d!1712963 (= (matchRSpec!2110 lt!2175940 s!2326) e!3313904)))

(declare-fun b!5336173 () Bool)

(assert (=> b!5336173 (= e!3313904 e!3313901)))

(declare-fun res!2263387 () Bool)

(assert (=> b!5336173 (= res!2263387 (not ((_ is EmptyLang!15007) lt!2175940)))))

(assert (=> b!5336173 (=> (not res!2263387) (not e!3313901))))

(assert (=> b!5336174 (= e!3313903 call!381432)))

(declare-fun b!5336175 () Bool)

(assert (=> b!5336175 (= e!3313900 (matchRSpec!2110 (regTwo!30527 lt!2175940) s!2326))))

(assert (=> b!5336176 (= e!3313899 call!381432)))

(declare-fun b!5336177 () Bool)

(assert (=> b!5336177 (= e!3313902 e!3313903)))

(assert (=> b!5336177 (= c!928319 ((_ is Star!15007) lt!2175940))))

(declare-fun b!5336178 () Bool)

(assert (=> b!5336178 (= e!3313898 (= s!2326 (Cons!61196 (c!928081 lt!2175940) Nil!61196)))))

(assert (= (and d!1712963 c!928318) b!5336172))

(assert (= (and d!1712963 (not c!928318)) b!5336173))

(assert (= (and b!5336173 res!2263387) b!5336170))

(assert (= (and b!5336170 c!928317) b!5336178))

(assert (= (and b!5336170 (not c!928317)) b!5336169))

(assert (= (and b!5336169 c!928320) b!5336168))

(assert (= (and b!5336169 (not c!928320)) b!5336177))

(assert (= (and b!5336168 (not res!2263386)) b!5336175))

(assert (= (and b!5336177 c!928319) b!5336171))

(assert (= (and b!5336177 (not c!928319)) b!5336174))

(assert (= (and b!5336171 (not res!2263388)) b!5336176))

(assert (= (or b!5336176 b!5336174) bm!381426))

(assert (= (or b!5336172 b!5336171) bm!381427))

(declare-fun m!6369106 () Bool)

(assert (=> b!5336168 m!6369106))

(declare-fun m!6369108 () Bool)

(assert (=> bm!381426 m!6369108))

(declare-fun m!6369110 () Bool)

(assert (=> bm!381427 m!6369110))

(declare-fun m!6369112 () Bool)

(assert (=> b!5336175 m!6369112))

(assert (=> b!5335419 d!1712963))

(declare-fun bs!1237522 () Bool)

(declare-fun d!1712965 () Bool)

(assert (= bs!1237522 (and d!1712965 d!1712783)))

(declare-fun lambda!273110 () Int)

(assert (=> bs!1237522 (= lambda!273110 lambda!273039)))

(declare-fun bs!1237523 () Bool)

(assert (= bs!1237523 (and d!1712965 d!1712897)))

(assert (=> bs!1237523 (= lambda!273110 lambda!273065)))

(declare-fun bs!1237524 () Bool)

(assert (= bs!1237524 (and d!1712965 d!1712787)))

(assert (=> bs!1237524 (= lambda!273110 lambda!273050)))

(declare-fun bs!1237525 () Bool)

(assert (= bs!1237525 (and d!1712965 d!1712799)))

(assert (=> bs!1237525 (= lambda!273110 lambda!273053)))

(declare-fun bs!1237526 () Bool)

(assert (= bs!1237526 (and d!1712965 d!1712931)))

(assert (=> bs!1237526 (= lambda!273110 lambda!273083)))

(declare-fun bs!1237527 () Bool)

(assert (= bs!1237527 (and d!1712965 d!1712895)))

(assert (=> bs!1237527 (= lambda!273110 lambda!273062)))

(declare-fun bs!1237528 () Bool)

(assert (= bs!1237528 (and d!1712965 d!1712935)))

(assert (=> bs!1237528 (= lambda!273110 lambda!273085)))

(declare-fun b!5336179 () Bool)

(declare-fun e!3313908 () Bool)

(declare-fun e!3313909 () Bool)

(assert (=> b!5336179 (= e!3313908 e!3313909)))

(declare-fun c!928321 () Bool)

(assert (=> b!5336179 (= c!928321 (isEmpty!33168 (tail!10535 (t!374538 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun b!5336180 () Bool)

(declare-fun lt!2176088 () Regex!15007)

(assert (=> b!5336180 (= e!3313909 (isConcat!418 lt!2176088))))

(declare-fun b!5336181 () Bool)

(declare-fun e!3313910 () Bool)

(assert (=> b!5336181 (= e!3313910 (isEmpty!33168 (t!374538 (t!374538 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun e!3313907 () Bool)

(assert (=> d!1712965 e!3313907))

(declare-fun res!2263389 () Bool)

(assert (=> d!1712965 (=> (not res!2263389) (not e!3313907))))

(assert (=> d!1712965 (= res!2263389 (validRegex!6743 lt!2176088))))

(declare-fun e!3313905 () Regex!15007)

(assert (=> d!1712965 (= lt!2176088 e!3313905)))

(declare-fun c!928324 () Bool)

(assert (=> d!1712965 (= c!928324 e!3313910)))

(declare-fun res!2263390 () Bool)

(assert (=> d!1712965 (=> (not res!2263390) (not e!3313910))))

(assert (=> d!1712965 (= res!2263390 ((_ is Cons!61197) (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> d!1712965 (forall!14427 (t!374538 (exprs!4891 (h!67646 zl!343))) lambda!273110)))

(assert (=> d!1712965 (= (generalisedConcat!676 (t!374538 (exprs!4891 (h!67646 zl!343)))) lt!2176088)))

(declare-fun b!5336182 () Bool)

(assert (=> b!5336182 (= e!3313909 (= lt!2176088 (head!11438 (t!374538 (exprs!4891 (h!67646 zl!343))))))))

(declare-fun b!5336183 () Bool)

(declare-fun e!3313906 () Regex!15007)

(assert (=> b!5336183 (= e!3313906 (Concat!23852 (h!67645 (t!374538 (exprs!4891 (h!67646 zl!343)))) (generalisedConcat!676 (t!374538 (t!374538 (exprs!4891 (h!67646 zl!343)))))))))

(declare-fun b!5336184 () Bool)

(assert (=> b!5336184 (= e!3313908 (isEmptyExpr!895 lt!2176088))))

(declare-fun b!5336185 () Bool)

(assert (=> b!5336185 (= e!3313905 (h!67645 (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5336186 () Bool)

(assert (=> b!5336186 (= e!3313907 e!3313908)))

(declare-fun c!928323 () Bool)

(assert (=> b!5336186 (= c!928323 (isEmpty!33168 (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5336187 () Bool)

(assert (=> b!5336187 (= e!3313905 e!3313906)))

(declare-fun c!928322 () Bool)

(assert (=> b!5336187 (= c!928322 ((_ is Cons!61197) (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(declare-fun b!5336188 () Bool)

(assert (=> b!5336188 (= e!3313906 EmptyExpr!15007)))

(assert (= (and d!1712965 res!2263390) b!5336181))

(assert (= (and d!1712965 c!928324) b!5336185))

(assert (= (and d!1712965 (not c!928324)) b!5336187))

(assert (= (and b!5336187 c!928322) b!5336183))

(assert (= (and b!5336187 (not c!928322)) b!5336188))

(assert (= (and d!1712965 res!2263389) b!5336186))

(assert (= (and b!5336186 c!928323) b!5336184))

(assert (= (and b!5336186 (not c!928323)) b!5336179))

(assert (= (and b!5336179 c!928321) b!5336182))

(assert (= (and b!5336179 (not c!928321)) b!5336180))

(declare-fun m!6369114 () Bool)

(assert (=> b!5336181 m!6369114))

(declare-fun m!6369116 () Bool)

(assert (=> b!5336183 m!6369116))

(assert (=> b!5336186 m!6368436))

(declare-fun m!6369118 () Bool)

(assert (=> b!5336179 m!6369118))

(assert (=> b!5336179 m!6369118))

(declare-fun m!6369120 () Bool)

(assert (=> b!5336179 m!6369120))

(declare-fun m!6369122 () Bool)

(assert (=> b!5336180 m!6369122))

(declare-fun m!6369124 () Bool)

(assert (=> d!1712965 m!6369124))

(declare-fun m!6369126 () Bool)

(assert (=> d!1712965 m!6369126))

(declare-fun m!6369128 () Bool)

(assert (=> b!5336184 m!6369128))

(declare-fun m!6369130 () Bool)

(assert (=> b!5336182 m!6369130))

(assert (=> b!5335419 d!1712965))

(declare-fun bs!1237529 () Bool)

(declare-fun b!5336197 () Bool)

(assert (= bs!1237529 (and b!5336197 b!5335419)))

(declare-fun lambda!273111 () Int)

(assert (=> bs!1237529 (not (= lambda!273111 lambda!273021))))

(declare-fun bs!1237530 () Bool)

(assert (= bs!1237530 (and b!5336197 d!1712945)))

(assert (=> bs!1237530 (not (= lambda!273111 lambda!273095))))

(assert (=> bs!1237530 (not (= lambda!273111 lambda!273099))))

(declare-fun bs!1237531 () Bool)

(assert (= bs!1237531 (and b!5336197 b!5336176)))

(assert (=> bs!1237531 (= (and (= (reg!15336 lt!2175943) (reg!15336 lt!2175940)) (= lt!2175943 lt!2175940)) (= lambda!273111 lambda!273108))))

(assert (=> bs!1237529 (not (= lambda!273111 lambda!273020))))

(declare-fun bs!1237532 () Bool)

(assert (= bs!1237532 (and b!5336197 d!1712923)))

(assert (=> bs!1237532 (not (= lambda!273111 lambda!273079))))

(assert (=> bs!1237529 (not (= lambda!273111 lambda!273019))))

(declare-fun bs!1237533 () Bool)

(assert (= bs!1237533 (and b!5336197 b!5335397)))

(assert (=> bs!1237533 (not (= lambda!273111 lambda!273016))))

(assert (=> bs!1237533 (not (= lambda!273111 lambda!273015))))

(declare-fun bs!1237534 () Bool)

(assert (= bs!1237534 (and b!5336197 d!1712939)))

(assert (=> bs!1237534 (not (= lambda!273111 lambda!273092))))

(declare-fun bs!1237535 () Bool)

(assert (= bs!1237535 (and b!5336197 b!5336174)))

(assert (=> bs!1237535 (not (= lambda!273111 lambda!273109))))

(assert (=> bs!1237529 (not (= lambda!273111 lambda!273018))))

(assert (=> bs!1237532 (not (= lambda!273111 lambda!273080))))

(assert (=> b!5336197 true))

(assert (=> b!5336197 true))

(declare-fun bs!1237536 () Bool)

(declare-fun b!5336195 () Bool)

(assert (= bs!1237536 (and b!5336195 b!5335419)))

(declare-fun lambda!273112 () Int)

(assert (=> bs!1237536 (= (and (= (regOne!30526 lt!2175943) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175943) lt!2175937)) (= lambda!273112 lambda!273021))))

(declare-fun bs!1237537 () Bool)

(assert (= bs!1237537 (and b!5336195 d!1712945)))

(assert (=> bs!1237537 (not (= lambda!273112 lambda!273095))))

(assert (=> bs!1237537 (= (and (= (regOne!30526 lt!2175943) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175943) lt!2175943)) (= lambda!273112 lambda!273099))))

(declare-fun bs!1237538 () Bool)

(assert (= bs!1237538 (and b!5336195 b!5336176)))

(assert (=> bs!1237538 (not (= lambda!273112 lambda!273108))))

(assert (=> bs!1237536 (not (= lambda!273112 lambda!273020))))

(declare-fun bs!1237539 () Bool)

(assert (= bs!1237539 (and b!5336195 d!1712923)))

(assert (=> bs!1237539 (not (= lambda!273112 lambda!273079))))

(assert (=> bs!1237536 (= (and (= (regOne!30526 lt!2175943) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175943) lt!2175943)) (= lambda!273112 lambda!273019))))

(declare-fun bs!1237540 () Bool)

(assert (= bs!1237540 (and b!5336195 b!5335397)))

(assert (=> bs!1237540 (= (and (= (regOne!30526 lt!2175943) (regOne!30526 r!7292)) (= (regTwo!30526 lt!2175943) (regTwo!30526 r!7292))) (= lambda!273112 lambda!273016))))

(assert (=> bs!1237540 (not (= lambda!273112 lambda!273015))))

(declare-fun bs!1237541 () Bool)

(assert (= bs!1237541 (and b!5336195 d!1712939)))

(assert (=> bs!1237541 (not (= lambda!273112 lambda!273092))))

(declare-fun bs!1237542 () Bool)

(assert (= bs!1237542 (and b!5336195 b!5336174)))

(assert (=> bs!1237542 (= (and (= (regOne!30526 lt!2175943) (regOne!30526 lt!2175940)) (= (regTwo!30526 lt!2175943) (regTwo!30526 lt!2175940))) (= lambda!273112 lambda!273109))))

(assert (=> bs!1237536 (not (= lambda!273112 lambda!273018))))

(assert (=> bs!1237539 (= (and (= (regOne!30526 lt!2175943) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 lt!2175943) lt!2175937)) (= lambda!273112 lambda!273080))))

(declare-fun bs!1237543 () Bool)

(assert (= bs!1237543 (and b!5336195 b!5336197)))

(assert (=> bs!1237543 (not (= lambda!273112 lambda!273111))))

(assert (=> b!5336195 true))

(assert (=> b!5336195 true))

(declare-fun b!5336189 () Bool)

(declare-fun e!3313915 () Bool)

(declare-fun e!3313913 () Bool)

(assert (=> b!5336189 (= e!3313915 e!3313913)))

(declare-fun res!2263391 () Bool)

(assert (=> b!5336189 (= res!2263391 (matchRSpec!2110 (regOne!30527 lt!2175943) s!2326))))

(assert (=> b!5336189 (=> res!2263391 e!3313913)))

(declare-fun c!928327 () Bool)

(declare-fun bm!381428 () Bool)

(declare-fun call!381434 () Bool)

(assert (=> bm!381428 (= call!381434 (Exists!2188 (ite c!928327 lambda!273111 lambda!273112)))))

(declare-fun b!5336190 () Bool)

(declare-fun c!928328 () Bool)

(assert (=> b!5336190 (= c!928328 ((_ is Union!15007) lt!2175943))))

(declare-fun e!3313911 () Bool)

(assert (=> b!5336190 (= e!3313911 e!3313915)))

(declare-fun b!5336191 () Bool)

(declare-fun c!928325 () Bool)

(assert (=> b!5336191 (= c!928325 ((_ is ElementMatch!15007) lt!2175943))))

(declare-fun e!3313914 () Bool)

(assert (=> b!5336191 (= e!3313914 e!3313911)))

(declare-fun b!5336192 () Bool)

(declare-fun res!2263393 () Bool)

(declare-fun e!3313912 () Bool)

(assert (=> b!5336192 (=> res!2263393 e!3313912)))

(declare-fun call!381433 () Bool)

(assert (=> b!5336192 (= res!2263393 call!381433)))

(declare-fun e!3313916 () Bool)

(assert (=> b!5336192 (= e!3313916 e!3313912)))

(declare-fun bm!381429 () Bool)

(assert (=> bm!381429 (= call!381433 (isEmpty!33171 s!2326))))

(declare-fun b!5336193 () Bool)

(declare-fun e!3313917 () Bool)

(assert (=> b!5336193 (= e!3313917 call!381433)))

(declare-fun d!1712967 () Bool)

(declare-fun c!928326 () Bool)

(assert (=> d!1712967 (= c!928326 ((_ is EmptyExpr!15007) lt!2175943))))

(assert (=> d!1712967 (= (matchRSpec!2110 lt!2175943 s!2326) e!3313917)))

(declare-fun b!5336194 () Bool)

(assert (=> b!5336194 (= e!3313917 e!3313914)))

(declare-fun res!2263392 () Bool)

(assert (=> b!5336194 (= res!2263392 (not ((_ is EmptyLang!15007) lt!2175943)))))

(assert (=> b!5336194 (=> (not res!2263392) (not e!3313914))))

(assert (=> b!5336195 (= e!3313916 call!381434)))

(declare-fun b!5336196 () Bool)

(assert (=> b!5336196 (= e!3313913 (matchRSpec!2110 (regTwo!30527 lt!2175943) s!2326))))

(assert (=> b!5336197 (= e!3313912 call!381434)))

(declare-fun b!5336198 () Bool)

(assert (=> b!5336198 (= e!3313915 e!3313916)))

(assert (=> b!5336198 (= c!928327 ((_ is Star!15007) lt!2175943))))

(declare-fun b!5336199 () Bool)

(assert (=> b!5336199 (= e!3313911 (= s!2326 (Cons!61196 (c!928081 lt!2175943) Nil!61196)))))

(assert (= (and d!1712967 c!928326) b!5336193))

(assert (= (and d!1712967 (not c!928326)) b!5336194))

(assert (= (and b!5336194 res!2263392) b!5336191))

(assert (= (and b!5336191 c!928325) b!5336199))

(assert (= (and b!5336191 (not c!928325)) b!5336190))

(assert (= (and b!5336190 c!928328) b!5336189))

(assert (= (and b!5336190 (not c!928328)) b!5336198))

(assert (= (and b!5336189 (not res!2263391)) b!5336196))

(assert (= (and b!5336198 c!928327) b!5336192))

(assert (= (and b!5336198 (not c!928327)) b!5336195))

(assert (= (and b!5336192 (not res!2263393)) b!5336197))

(assert (= (or b!5336197 b!5336195) bm!381428))

(assert (= (or b!5336193 b!5336192) bm!381429))

(declare-fun m!6369132 () Bool)

(assert (=> b!5336189 m!6369132))

(declare-fun m!6369134 () Bool)

(assert (=> bm!381428 m!6369134))

(assert (=> bm!381429 m!6369110))

(declare-fun m!6369136 () Bool)

(assert (=> b!5336196 m!6369136))

(assert (=> b!5335419 d!1712967))

(declare-fun bs!1237544 () Bool)

(declare-fun d!1712969 () Bool)

(assert (= bs!1237544 (and d!1712969 b!5335419)))

(declare-fun lambda!273113 () Int)

(assert (=> bs!1237544 (not (= lambda!273113 lambda!273021))))

(declare-fun bs!1237545 () Bool)

(assert (= bs!1237545 (and d!1712969 b!5336195)))

(assert (=> bs!1237545 (not (= lambda!273113 lambda!273112))))

(declare-fun bs!1237546 () Bool)

(assert (= bs!1237546 (and d!1712969 d!1712945)))

(assert (=> bs!1237546 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273113 lambda!273095))))

(assert (=> bs!1237546 (not (= lambda!273113 lambda!273099))))

(declare-fun bs!1237547 () Bool)

(assert (= bs!1237547 (and d!1712969 b!5336176)))

(assert (=> bs!1237547 (not (= lambda!273113 lambda!273108))))

(assert (=> bs!1237544 (= lambda!273113 lambda!273020)))

(declare-fun bs!1237548 () Bool)

(assert (= bs!1237548 (and d!1712969 d!1712923)))

(assert (=> bs!1237548 (= lambda!273113 lambda!273079)))

(assert (=> bs!1237544 (not (= lambda!273113 lambda!273019))))

(declare-fun bs!1237549 () Bool)

(assert (= bs!1237549 (and d!1712969 b!5335397)))

(assert (=> bs!1237549 (not (= lambda!273113 lambda!273016))))

(assert (=> bs!1237549 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 r!7292)) (= lt!2175937 (regTwo!30526 r!7292))) (= lambda!273113 lambda!273015))))

(declare-fun bs!1237550 () Bool)

(assert (= bs!1237550 (and d!1712969 d!1712939)))

(assert (=> bs!1237550 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273113 lambda!273092))))

(declare-fun bs!1237551 () Bool)

(assert (= bs!1237551 (and d!1712969 b!5336174)))

(assert (=> bs!1237551 (not (= lambda!273113 lambda!273109))))

(assert (=> bs!1237544 (= (and (= (regTwo!30526 (regOne!30526 r!7292)) (regOne!30526 (regOne!30526 r!7292))) (= lt!2175937 lt!2175943)) (= lambda!273113 lambda!273018))))

(assert (=> bs!1237548 (not (= lambda!273113 lambda!273080))))

(declare-fun bs!1237552 () Bool)

(assert (= bs!1237552 (and d!1712969 b!5336197)))

(assert (=> bs!1237552 (not (= lambda!273113 lambda!273111))))

(assert (=> d!1712969 true))

(assert (=> d!1712969 true))

(assert (=> d!1712969 true))

(assert (=> d!1712969 (= (isDefined!11821 (findConcatSeparation!1532 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 Nil!61196 s!2326 s!2326)) (Exists!2188 lambda!273113))))

(declare-fun lt!2176089 () Unit!153546)

(assert (=> d!1712969 (= lt!2176089 (choose!39977 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 s!2326))))

(assert (=> d!1712969 (validRegex!6743 (regTwo!30526 (regOne!30526 r!7292)))))

(assert (=> d!1712969 (= (lemmaFindConcatSeparationEquivalentToExists!1296 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 s!2326) lt!2176089)))

(declare-fun bs!1237553 () Bool)

(assert (= bs!1237553 d!1712969))

(declare-fun m!6369138 () Bool)

(assert (=> bs!1237553 m!6369138))

(assert (=> bs!1237553 m!6368350))

(declare-fun m!6369140 () Bool)

(assert (=> bs!1237553 m!6369140))

(assert (=> bs!1237553 m!6368350))

(assert (=> bs!1237553 m!6368352))

(assert (=> bs!1237553 m!6368976))

(assert (=> b!5335419 d!1712969))

(declare-fun b!5336228 () Bool)

(declare-fun e!3313936 () Bool)

(declare-fun e!3313935 () Bool)

(assert (=> b!5336228 (= e!3313936 e!3313935)))

(declare-fun res!2263410 () Bool)

(assert (=> b!5336228 (=> res!2263410 e!3313935)))

(declare-fun call!381437 () Bool)

(assert (=> b!5336228 (= res!2263410 call!381437)))

(declare-fun b!5336229 () Bool)

(declare-fun res!2263413 () Bool)

(declare-fun e!3313938 () Bool)

(assert (=> b!5336229 (=> res!2263413 e!3313938)))

(declare-fun e!3313932 () Bool)

(assert (=> b!5336229 (= res!2263413 e!3313932)))

(declare-fun res!2263415 () Bool)

(assert (=> b!5336229 (=> (not res!2263415) (not e!3313932))))

(declare-fun lt!2176092 () Bool)

(assert (=> b!5336229 (= res!2263415 lt!2176092)))

(declare-fun b!5336230 () Bool)

(declare-fun e!3313933 () Bool)

(assert (=> b!5336230 (= e!3313933 (nullable!5176 lt!2175940))))

(declare-fun b!5336231 () Bool)

(assert (=> b!5336231 (= e!3313935 (not (= (head!11439 s!2326) (c!928081 lt!2175940))))))

(declare-fun b!5336232 () Bool)

(declare-fun e!3313934 () Bool)

(assert (=> b!5336232 (= e!3313934 (= lt!2176092 call!381437))))

(declare-fun b!5336233 () Bool)

(assert (=> b!5336233 (= e!3313932 (= (head!11439 s!2326) (c!928081 lt!2175940)))))

(declare-fun bm!381432 () Bool)

(assert (=> bm!381432 (= call!381437 (isEmpty!33171 s!2326))))

(declare-fun b!5336234 () Bool)

(declare-fun res!2263417 () Bool)

(assert (=> b!5336234 (=> res!2263417 e!3313935)))

(assert (=> b!5336234 (= res!2263417 (not (isEmpty!33171 (tail!10536 s!2326))))))

(declare-fun b!5336235 () Bool)

(declare-fun res!2263414 () Bool)

(assert (=> b!5336235 (=> res!2263414 e!3313938)))

(assert (=> b!5336235 (= res!2263414 (not ((_ is ElementMatch!15007) lt!2175940)))))

(declare-fun e!3313937 () Bool)

(assert (=> b!5336235 (= e!3313937 e!3313938)))

(declare-fun d!1712971 () Bool)

(assert (=> d!1712971 e!3313934))

(declare-fun c!928335 () Bool)

(assert (=> d!1712971 (= c!928335 ((_ is EmptyExpr!15007) lt!2175940))))

(assert (=> d!1712971 (= lt!2176092 e!3313933)))

(declare-fun c!928336 () Bool)

(assert (=> d!1712971 (= c!928336 (isEmpty!33171 s!2326))))

(assert (=> d!1712971 (validRegex!6743 lt!2175940)))

(assert (=> d!1712971 (= (matchR!7192 lt!2175940 s!2326) lt!2176092)))

(declare-fun b!5336236 () Bool)

(declare-fun res!2263416 () Bool)

(assert (=> b!5336236 (=> (not res!2263416) (not e!3313932))))

(assert (=> b!5336236 (= res!2263416 (isEmpty!33171 (tail!10536 s!2326)))))

(declare-fun b!5336237 () Bool)

(assert (=> b!5336237 (= e!3313938 e!3313936)))

(declare-fun res!2263411 () Bool)

(assert (=> b!5336237 (=> (not res!2263411) (not e!3313936))))

(assert (=> b!5336237 (= res!2263411 (not lt!2176092))))

(declare-fun b!5336238 () Bool)

(declare-fun res!2263412 () Bool)

(assert (=> b!5336238 (=> (not res!2263412) (not e!3313932))))

(assert (=> b!5336238 (= res!2263412 (not call!381437))))

(declare-fun b!5336239 () Bool)

(assert (=> b!5336239 (= e!3313934 e!3313937)))

(declare-fun c!928337 () Bool)

(assert (=> b!5336239 (= c!928337 ((_ is EmptyLang!15007) lt!2175940))))

(declare-fun b!5336240 () Bool)

(assert (=> b!5336240 (= e!3313937 (not lt!2176092))))

(declare-fun b!5336241 () Bool)

(declare-fun derivativeStep!4181 (Regex!15007 C!30284) Regex!15007)

(assert (=> b!5336241 (= e!3313933 (matchR!7192 (derivativeStep!4181 lt!2175940 (head!11439 s!2326)) (tail!10536 s!2326)))))

(assert (= (and d!1712971 c!928336) b!5336230))

(assert (= (and d!1712971 (not c!928336)) b!5336241))

(assert (= (and d!1712971 c!928335) b!5336232))

(assert (= (and d!1712971 (not c!928335)) b!5336239))

(assert (= (and b!5336239 c!928337) b!5336240))

(assert (= (and b!5336239 (not c!928337)) b!5336235))

(assert (= (and b!5336235 (not res!2263414)) b!5336229))

(assert (= (and b!5336229 res!2263415) b!5336238))

(assert (= (and b!5336238 res!2263412) b!5336236))

(assert (= (and b!5336236 res!2263416) b!5336233))

(assert (= (and b!5336229 (not res!2263413)) b!5336237))

(assert (= (and b!5336237 res!2263411) b!5336228))

(assert (= (and b!5336228 (not res!2263410)) b!5336234))

(assert (= (and b!5336234 (not res!2263417)) b!5336231))

(assert (= (or b!5336232 b!5336228 b!5336238) bm!381432))

(assert (=> bm!381432 m!6369110))

(declare-fun m!6369142 () Bool)

(assert (=> b!5336231 m!6369142))

(assert (=> b!5336241 m!6369142))

(assert (=> b!5336241 m!6369142))

(declare-fun m!6369144 () Bool)

(assert (=> b!5336241 m!6369144))

(declare-fun m!6369146 () Bool)

(assert (=> b!5336241 m!6369146))

(assert (=> b!5336241 m!6369144))

(assert (=> b!5336241 m!6369146))

(declare-fun m!6369148 () Bool)

(assert (=> b!5336241 m!6369148))

(assert (=> b!5336234 m!6369146))

(assert (=> b!5336234 m!6369146))

(declare-fun m!6369150 () Bool)

(assert (=> b!5336234 m!6369150))

(assert (=> b!5336236 m!6369146))

(assert (=> b!5336236 m!6369146))

(assert (=> b!5336236 m!6369150))

(assert (=> b!5336233 m!6369142))

(declare-fun m!6369152 () Bool)

(assert (=> b!5336230 m!6369152))

(assert (=> d!1712971 m!6369110))

(assert (=> d!1712971 m!6368408))

(assert (=> b!5335419 d!1712971))

(declare-fun d!1712973 () Bool)

(declare-fun c!928338 () Bool)

(assert (=> d!1712973 (= c!928338 (isEmpty!33171 s!2326))))

(declare-fun e!3313939 () Bool)

(assert (=> d!1712973 (= (matchZipper!1251 z!1189 s!2326) e!3313939)))

(declare-fun b!5336242 () Bool)

(assert (=> b!5336242 (= e!3313939 (nullableZipper!1360 z!1189))))

(declare-fun b!5336243 () Bool)

(assert (=> b!5336243 (= e!3313939 (matchZipper!1251 (derivationStepZipper!1248 z!1189 (head!11439 s!2326)) (tail!10536 s!2326)))))

(assert (= (and d!1712973 c!928338) b!5336242))

(assert (= (and d!1712973 (not c!928338)) b!5336243))

(assert (=> d!1712973 m!6369110))

(declare-fun m!6369154 () Bool)

(assert (=> b!5336242 m!6369154))

(assert (=> b!5336243 m!6369142))

(assert (=> b!5336243 m!6369142))

(declare-fun m!6369156 () Bool)

(assert (=> b!5336243 m!6369156))

(assert (=> b!5336243 m!6369146))

(assert (=> b!5336243 m!6369156))

(assert (=> b!5336243 m!6369146))

(declare-fun m!6369158 () Bool)

(assert (=> b!5336243 m!6369158))

(assert (=> b!5335419 d!1712973))

(declare-fun d!1712975 () Bool)

(declare-fun isEmpty!33172 (Option!15118) Bool)

(assert (=> d!1712975 (= (isDefined!11821 (findConcatSeparation!1532 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 Nil!61196 s!2326 s!2326)) (not (isEmpty!33172 (findConcatSeparation!1532 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 Nil!61196 s!2326 s!2326))))))

(declare-fun bs!1237554 () Bool)

(assert (= bs!1237554 d!1712975))

(assert (=> bs!1237554 m!6368360))

(declare-fun m!6369160 () Bool)

(assert (=> bs!1237554 m!6369160))

(assert (=> b!5335419 d!1712975))

(declare-fun d!1712977 () Bool)

(assert (=> d!1712977 (= (matchR!7192 lt!2175940 s!2326) (matchZipper!1251 lt!2175929 s!2326))))

(declare-fun lt!2176095 () Unit!153546)

(declare-fun choose!39981 ((InoxSet Context!8782) List!61322 Regex!15007 List!61320) Unit!153546)

(assert (=> d!1712977 (= lt!2176095 (choose!39981 lt!2175929 lt!2175927 lt!2175940 s!2326))))

(assert (=> d!1712977 (validRegex!6743 lt!2175940)))

(assert (=> d!1712977 (= (theoremZipperRegexEquiv!405 lt!2175929 lt!2175927 lt!2175940 s!2326) lt!2176095)))

(declare-fun bs!1237555 () Bool)

(assert (= bs!1237555 d!1712977))

(assert (=> bs!1237555 m!6368394))

(assert (=> bs!1237555 m!6368368))

(declare-fun m!6369162 () Bool)

(assert (=> bs!1237555 m!6369162))

(assert (=> bs!1237555 m!6368408))

(assert (=> b!5335419 d!1712977))

(declare-fun d!1712979 () Bool)

(assert (=> d!1712979 (= (isDefined!11821 (findConcatSeparation!1532 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 Nil!61196 s!2326 s!2326)) (not (isEmpty!33172 (findConcatSeparation!1532 (regTwo!30526 (regOne!30526 r!7292)) lt!2175937 Nil!61196 s!2326 s!2326))))))

(declare-fun bs!1237556 () Bool)

(assert (= bs!1237556 d!1712979))

(assert (=> bs!1237556 m!6368350))

(declare-fun m!6369164 () Bool)

(assert (=> bs!1237556 m!6369164))

(assert (=> b!5335419 d!1712979))

(declare-fun d!1712981 () Bool)

(declare-fun c!928339 () Bool)

(assert (=> d!1712981 (= c!928339 (isEmpty!33171 s!2326))))

(declare-fun e!3313940 () Bool)

(assert (=> d!1712981 (= (matchZipper!1251 lt!2175929 s!2326) e!3313940)))

(declare-fun b!5336244 () Bool)

(assert (=> b!5336244 (= e!3313940 (nullableZipper!1360 lt!2175929))))

(declare-fun b!5336245 () Bool)

(assert (=> b!5336245 (= e!3313940 (matchZipper!1251 (derivationStepZipper!1248 lt!2175929 (head!11439 s!2326)) (tail!10536 s!2326)))))

(assert (= (and d!1712981 c!928339) b!5336244))

(assert (= (and d!1712981 (not c!928339)) b!5336245))

(assert (=> d!1712981 m!6369110))

(declare-fun m!6369166 () Bool)

(assert (=> b!5336244 m!6369166))

(assert (=> b!5336245 m!6369142))

(assert (=> b!5336245 m!6369142))

(declare-fun m!6369168 () Bool)

(assert (=> b!5336245 m!6369168))

(assert (=> b!5336245 m!6369146))

(assert (=> b!5336245 m!6369168))

(assert (=> b!5336245 m!6369146))

(declare-fun m!6369170 () Bool)

(assert (=> b!5336245 m!6369170))

(assert (=> b!5335419 d!1712981))

(declare-fun b!5336246 () Bool)

(declare-fun e!3313945 () Bool)

(declare-fun e!3313944 () Bool)

(assert (=> b!5336246 (= e!3313945 e!3313944)))

(declare-fun res!2263418 () Bool)

(assert (=> b!5336246 (=> res!2263418 e!3313944)))

(declare-fun call!381438 () Bool)

(assert (=> b!5336246 (= res!2263418 call!381438)))

(declare-fun b!5336247 () Bool)

(declare-fun res!2263421 () Bool)

(declare-fun e!3313947 () Bool)

(assert (=> b!5336247 (=> res!2263421 e!3313947)))

(declare-fun e!3313941 () Bool)

(assert (=> b!5336247 (= res!2263421 e!3313941)))

(declare-fun res!2263423 () Bool)

(assert (=> b!5336247 (=> (not res!2263423) (not e!3313941))))

(declare-fun lt!2176096 () Bool)

(assert (=> b!5336247 (= res!2263423 lt!2176096)))

(declare-fun b!5336248 () Bool)

(declare-fun e!3313942 () Bool)

(assert (=> b!5336248 (= e!3313942 (nullable!5176 lt!2175943))))

(declare-fun b!5336249 () Bool)

(assert (=> b!5336249 (= e!3313944 (not (= (head!11439 s!2326) (c!928081 lt!2175943))))))

(declare-fun b!5336250 () Bool)

(declare-fun e!3313943 () Bool)

(assert (=> b!5336250 (= e!3313943 (= lt!2176096 call!381438))))

(declare-fun b!5336251 () Bool)

(assert (=> b!5336251 (= e!3313941 (= (head!11439 s!2326) (c!928081 lt!2175943)))))

(declare-fun bm!381433 () Bool)

(assert (=> bm!381433 (= call!381438 (isEmpty!33171 s!2326))))

(declare-fun b!5336252 () Bool)

(declare-fun res!2263425 () Bool)

(assert (=> b!5336252 (=> res!2263425 e!3313944)))

(assert (=> b!5336252 (= res!2263425 (not (isEmpty!33171 (tail!10536 s!2326))))))

(declare-fun b!5336253 () Bool)

(declare-fun res!2263422 () Bool)

(assert (=> b!5336253 (=> res!2263422 e!3313947)))

(assert (=> b!5336253 (= res!2263422 (not ((_ is ElementMatch!15007) lt!2175943)))))

(declare-fun e!3313946 () Bool)

(assert (=> b!5336253 (= e!3313946 e!3313947)))

(declare-fun d!1712983 () Bool)

(assert (=> d!1712983 e!3313943))

(declare-fun c!928340 () Bool)

(assert (=> d!1712983 (= c!928340 ((_ is EmptyExpr!15007) lt!2175943))))

(assert (=> d!1712983 (= lt!2176096 e!3313942)))

(declare-fun c!928341 () Bool)

(assert (=> d!1712983 (= c!928341 (isEmpty!33171 s!2326))))

(assert (=> d!1712983 (validRegex!6743 lt!2175943)))

(assert (=> d!1712983 (= (matchR!7192 lt!2175943 s!2326) lt!2176096)))

(declare-fun b!5336254 () Bool)

(declare-fun res!2263424 () Bool)

(assert (=> b!5336254 (=> (not res!2263424) (not e!3313941))))

(assert (=> b!5336254 (= res!2263424 (isEmpty!33171 (tail!10536 s!2326)))))

(declare-fun b!5336255 () Bool)

(assert (=> b!5336255 (= e!3313947 e!3313945)))

(declare-fun res!2263419 () Bool)

(assert (=> b!5336255 (=> (not res!2263419) (not e!3313945))))

(assert (=> b!5336255 (= res!2263419 (not lt!2176096))))

(declare-fun b!5336256 () Bool)

(declare-fun res!2263420 () Bool)

(assert (=> b!5336256 (=> (not res!2263420) (not e!3313941))))

(assert (=> b!5336256 (= res!2263420 (not call!381438))))

(declare-fun b!5336257 () Bool)

(assert (=> b!5336257 (= e!3313943 e!3313946)))

(declare-fun c!928342 () Bool)

(assert (=> b!5336257 (= c!928342 ((_ is EmptyLang!15007) lt!2175943))))

(declare-fun b!5336258 () Bool)

(assert (=> b!5336258 (= e!3313946 (not lt!2176096))))

(declare-fun b!5336259 () Bool)

(assert (=> b!5336259 (= e!3313942 (matchR!7192 (derivativeStep!4181 lt!2175943 (head!11439 s!2326)) (tail!10536 s!2326)))))

(assert (= (and d!1712983 c!928341) b!5336248))

(assert (= (and d!1712983 (not c!928341)) b!5336259))

(assert (= (and d!1712983 c!928340) b!5336250))

(assert (= (and d!1712983 (not c!928340)) b!5336257))

(assert (= (and b!5336257 c!928342) b!5336258))

(assert (= (and b!5336257 (not c!928342)) b!5336253))

(assert (= (and b!5336253 (not res!2263422)) b!5336247))

(assert (= (and b!5336247 res!2263423) b!5336256))

(assert (= (and b!5336256 res!2263420) b!5336254))

(assert (= (and b!5336254 res!2263424) b!5336251))

(assert (= (and b!5336247 (not res!2263421)) b!5336255))

(assert (= (and b!5336255 res!2263419) b!5336246))

(assert (= (and b!5336246 (not res!2263418)) b!5336252))

(assert (= (and b!5336252 (not res!2263425)) b!5336249))

(assert (= (or b!5336250 b!5336246 b!5336256) bm!381433))

(assert (=> bm!381433 m!6369110))

(assert (=> b!5336249 m!6369142))

(assert (=> b!5336259 m!6369142))

(assert (=> b!5336259 m!6369142))

(declare-fun m!6369172 () Bool)

(assert (=> b!5336259 m!6369172))

(assert (=> b!5336259 m!6369146))

(assert (=> b!5336259 m!6369172))

(assert (=> b!5336259 m!6369146))

(declare-fun m!6369174 () Bool)

(assert (=> b!5336259 m!6369174))

(assert (=> b!5336252 m!6369146))

(assert (=> b!5336252 m!6369146))

(assert (=> b!5336252 m!6369150))

(assert (=> b!5336254 m!6369146))

(assert (=> b!5336254 m!6369146))

(assert (=> b!5336254 m!6369150))

(assert (=> b!5336251 m!6369142))

(declare-fun m!6369176 () Bool)

(assert (=> b!5336248 m!6369176))

(assert (=> d!1712983 m!6369110))

(assert (=> d!1712983 m!6368938))

(assert (=> b!5335419 d!1712983))

(declare-fun b!5336260 () Bool)

(declare-fun e!3313949 () Bool)

(declare-fun lt!2176097 () Option!15118)

(assert (=> b!5336260 (= e!3313949 (not (isDefined!11821 lt!2176097)))))

(declare-fun b!5336261 () Bool)

(declare-fun e!3313950 () Bool)

(assert (=> b!5336261 (= e!3313950 (= (++!13340 (_1!35509 (get!21049 lt!2176097)) (_2!35509 (get!21049 lt!2176097))) s!2326))))

(declare-fun b!5336262 () Bool)

(declare-fun res!2263430 () Bool)

(assert (=> b!5336262 (=> (not res!2263430) (not e!3313950))))

(assert (=> b!5336262 (= res!2263430 (matchR!7192 lt!2175943 (_2!35509 (get!21049 lt!2176097))))))

(declare-fun b!5336263 () Bool)

(declare-fun e!3313952 () Option!15118)

(declare-fun e!3313951 () Option!15118)

(assert (=> b!5336263 (= e!3313952 e!3313951)))

(declare-fun c!928344 () Bool)

(assert (=> b!5336263 (= c!928344 ((_ is Nil!61196) s!2326))))

(declare-fun b!5336264 () Bool)

(assert (=> b!5336264 (= e!3313951 None!15117)))

(declare-fun b!5336265 () Bool)

(declare-fun res!2263427 () Bool)

(assert (=> b!5336265 (=> (not res!2263427) (not e!3313950))))

(assert (=> b!5336265 (= res!2263427 (matchR!7192 (regOne!30526 (regOne!30526 r!7292)) (_1!35509 (get!21049 lt!2176097))))))

(declare-fun b!5336266 () Bool)

(assert (=> b!5336266 (= e!3313952 (Some!15117 (tuple2!64413 Nil!61196 s!2326)))))

(declare-fun b!5336267 () Bool)

(declare-fun lt!2176099 () Unit!153546)

(declare-fun lt!2176098 () Unit!153546)

(assert (=> b!5336267 (= lt!2176099 lt!2176098)))

(assert (=> b!5336267 (= (++!13340 (++!13340 Nil!61196 (Cons!61196 (h!67644 s!2326) Nil!61196)) (t!374537 s!2326)) s!2326)))

(assert (=> b!5336267 (= lt!2176098 (lemmaMoveElementToOtherListKeepsConcatEq!1755 Nil!61196 (h!67644 s!2326) (t!374537 s!2326) s!2326))))

(assert (=> b!5336267 (= e!3313951 (findConcatSeparation!1532 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 (++!13340 Nil!61196 (Cons!61196 (h!67644 s!2326) Nil!61196)) (t!374537 s!2326) s!2326))))

(declare-fun d!1712985 () Bool)

(assert (=> d!1712985 e!3313949))

(declare-fun res!2263429 () Bool)

(assert (=> d!1712985 (=> res!2263429 e!3313949)))

(assert (=> d!1712985 (= res!2263429 e!3313950)))

(declare-fun res!2263426 () Bool)

(assert (=> d!1712985 (=> (not res!2263426) (not e!3313950))))

(assert (=> d!1712985 (= res!2263426 (isDefined!11821 lt!2176097))))

(assert (=> d!1712985 (= lt!2176097 e!3313952)))

(declare-fun c!928343 () Bool)

(declare-fun e!3313948 () Bool)

(assert (=> d!1712985 (= c!928343 e!3313948)))

(declare-fun res!2263428 () Bool)

(assert (=> d!1712985 (=> (not res!2263428) (not e!3313948))))

(assert (=> d!1712985 (= res!2263428 (matchR!7192 (regOne!30526 (regOne!30526 r!7292)) Nil!61196))))

(assert (=> d!1712985 (validRegex!6743 (regOne!30526 (regOne!30526 r!7292)))))

(assert (=> d!1712985 (= (findConcatSeparation!1532 (regOne!30526 (regOne!30526 r!7292)) lt!2175943 Nil!61196 s!2326 s!2326) lt!2176097)))

(declare-fun b!5336268 () Bool)

(assert (=> b!5336268 (= e!3313948 (matchR!7192 lt!2175943 s!2326))))

(assert (= (and d!1712985 res!2263428) b!5336268))

(assert (= (and d!1712985 c!928343) b!5336266))

(assert (= (and d!1712985 (not c!928343)) b!5336263))

(assert (= (and b!5336263 c!928344) b!5336264))

(assert (= (and b!5336263 (not c!928344)) b!5336267))

(assert (= (and d!1712985 res!2263426) b!5336265))

(assert (= (and b!5336265 res!2263427) b!5336262))

(assert (= (and b!5336262 res!2263430) b!5336261))

(assert (= (and d!1712985 (not res!2263429)) b!5336260))

(declare-fun m!6369178 () Bool)

(assert (=> b!5336261 m!6369178))

(declare-fun m!6369180 () Bool)

(assert (=> b!5336261 m!6369180))

(assert (=> b!5336265 m!6369178))

(declare-fun m!6369182 () Bool)

(assert (=> b!5336265 m!6369182))

(declare-fun m!6369184 () Bool)

(assert (=> b!5336260 m!6369184))

(assert (=> b!5336267 m!6369092))

(assert (=> b!5336267 m!6369092))

(assert (=> b!5336267 m!6369094))

(assert (=> b!5336267 m!6369096))

(assert (=> b!5336267 m!6369092))

(declare-fun m!6369186 () Bool)

(assert (=> b!5336267 m!6369186))

(assert (=> d!1712985 m!6369184))

(declare-fun m!6369188 () Bool)

(assert (=> d!1712985 m!6369188))

(assert (=> d!1712985 m!6369030))

(assert (=> b!5336268 m!6368358))

(assert (=> b!5336262 m!6369178))

(declare-fun m!6369190 () Bool)

(assert (=> b!5336262 m!6369190))

(assert (=> b!5335419 d!1712985))

(declare-fun b!5336275 () Bool)

(assert (=> b!5336275 true))

(declare-fun bs!1237557 () Bool)

(declare-fun b!5336277 () Bool)

(assert (= bs!1237557 (and b!5336277 b!5336275)))

(declare-fun lt!2176111 () Int)

(declare-fun lt!2176109 () Int)

(declare-fun lambda!273121 () Int)

(declare-fun lambda!273122 () Int)

(assert (=> bs!1237557 (= (= lt!2176111 lt!2176109) (= lambda!273122 lambda!273121))))

(assert (=> b!5336277 true))

(declare-fun d!1712987 () Bool)

(declare-fun e!3313957 () Bool)

(assert (=> d!1712987 e!3313957))

(declare-fun res!2263433 () Bool)

(assert (=> d!1712987 (=> (not res!2263433) (not e!3313957))))

(assert (=> d!1712987 (= res!2263433 (>= lt!2176111 0))))

(declare-fun e!3313958 () Int)

(assert (=> d!1712987 (= lt!2176111 e!3313958)))

(declare-fun c!928353 () Bool)

(assert (=> d!1712987 (= c!928353 ((_ is Cons!61198) lt!2175927))))

(assert (=> d!1712987 (= (zipperDepth!116 lt!2175927) lt!2176111)))

(assert (=> b!5336275 (= e!3313958 lt!2176109)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!66 (Context!8782) Int)

(assert (=> b!5336275 (= lt!2176109 (maxBigInt!0 (contextDepth!66 (h!67646 lt!2175927)) (zipperDepth!116 (t!374539 lt!2175927))))))

(declare-fun lambda!273120 () Int)

(declare-fun lt!2176110 () Unit!153546)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!60 (List!61322 Int Int Int) Unit!153546)

(assert (=> b!5336275 (= lt!2176110 (lemmaForallContextDepthBiggerThanTransitive!60 (t!374539 lt!2175927) lt!2176109 (zipperDepth!116 (t!374539 lt!2175927)) lambda!273120))))

(declare-fun forall!14429 (List!61322 Int) Bool)

(assert (=> b!5336275 (forall!14429 (t!374539 lt!2175927) lambda!273121)))

(declare-fun lt!2176108 () Unit!153546)

(assert (=> b!5336275 (= lt!2176108 lt!2176110)))

(declare-fun b!5336276 () Bool)

(assert (=> b!5336276 (= e!3313958 0)))

(assert (=> b!5336277 (= e!3313957 (forall!14429 lt!2175927 lambda!273122))))

(assert (= (and d!1712987 c!928353) b!5336275))

(assert (= (and d!1712987 (not c!928353)) b!5336276))

(assert (= (and d!1712987 res!2263433) b!5336277))

(declare-fun m!6369192 () Bool)

(assert (=> b!5336275 m!6369192))

(declare-fun m!6369194 () Bool)

(assert (=> b!5336275 m!6369194))

(declare-fun m!6369196 () Bool)

(assert (=> b!5336275 m!6369196))

(declare-fun m!6369198 () Bool)

(assert (=> b!5336275 m!6369198))

(assert (=> b!5336275 m!6369194))

(declare-fun m!6369200 () Bool)

(assert (=> b!5336275 m!6369200))

(assert (=> b!5336275 m!6369194))

(assert (=> b!5336275 m!6369198))

(declare-fun m!6369202 () Bool)

(assert (=> b!5336277 m!6369202))

(assert (=> b!5335401 d!1712987))

(declare-fun bs!1237558 () Bool)

(declare-fun b!5336280 () Bool)

(assert (= bs!1237558 (and b!5336280 b!5336275)))

(declare-fun lambda!273123 () Int)

(assert (=> bs!1237558 (= lambda!273123 lambda!273120)))

(declare-fun lambda!273124 () Int)

(declare-fun lt!2176113 () Int)

(assert (=> bs!1237558 (= (= lt!2176113 lt!2176109) (= lambda!273124 lambda!273121))))

(declare-fun bs!1237559 () Bool)

(assert (= bs!1237559 (and b!5336280 b!5336277)))

(assert (=> bs!1237559 (= (= lt!2176113 lt!2176111) (= lambda!273124 lambda!273122))))

(assert (=> b!5336280 true))

(declare-fun bs!1237560 () Bool)

(declare-fun b!5336282 () Bool)

(assert (= bs!1237560 (and b!5336282 b!5336275)))

(declare-fun lambda!273125 () Int)

(declare-fun lt!2176115 () Int)

(assert (=> bs!1237560 (= (= lt!2176115 lt!2176109) (= lambda!273125 lambda!273121))))

(declare-fun bs!1237561 () Bool)

(assert (= bs!1237561 (and b!5336282 b!5336277)))

(assert (=> bs!1237561 (= (= lt!2176115 lt!2176111) (= lambda!273125 lambda!273122))))

(declare-fun bs!1237562 () Bool)

(assert (= bs!1237562 (and b!5336282 b!5336280)))

(assert (=> bs!1237562 (= (= lt!2176115 lt!2176113) (= lambda!273125 lambda!273124))))

(assert (=> b!5336282 true))

(declare-fun d!1712989 () Bool)

(declare-fun e!3313959 () Bool)

(assert (=> d!1712989 e!3313959))

(declare-fun res!2263434 () Bool)

(assert (=> d!1712989 (=> (not res!2263434) (not e!3313959))))

(assert (=> d!1712989 (= res!2263434 (>= lt!2176115 0))))

(declare-fun e!3313960 () Int)

(assert (=> d!1712989 (= lt!2176115 e!3313960)))

(declare-fun c!928354 () Bool)

(assert (=> d!1712989 (= c!928354 ((_ is Cons!61198) zl!343))))

(assert (=> d!1712989 (= (zipperDepth!116 zl!343) lt!2176115)))

(assert (=> b!5336280 (= e!3313960 lt!2176113)))

(assert (=> b!5336280 (= lt!2176113 (maxBigInt!0 (contextDepth!66 (h!67646 zl!343)) (zipperDepth!116 (t!374539 zl!343))))))

(declare-fun lt!2176114 () Unit!153546)

(assert (=> b!5336280 (= lt!2176114 (lemmaForallContextDepthBiggerThanTransitive!60 (t!374539 zl!343) lt!2176113 (zipperDepth!116 (t!374539 zl!343)) lambda!273123))))

(assert (=> b!5336280 (forall!14429 (t!374539 zl!343) lambda!273124)))

(declare-fun lt!2176112 () Unit!153546)

(assert (=> b!5336280 (= lt!2176112 lt!2176114)))

(declare-fun b!5336281 () Bool)

(assert (=> b!5336281 (= e!3313960 0)))

(assert (=> b!5336282 (= e!3313959 (forall!14429 zl!343 lambda!273125))))

(assert (= (and d!1712989 c!928354) b!5336280))

(assert (= (and d!1712989 (not c!928354)) b!5336281))

(assert (= (and d!1712989 res!2263434) b!5336282))

(declare-fun m!6369204 () Bool)

(assert (=> b!5336280 m!6369204))

(declare-fun m!6369206 () Bool)

(assert (=> b!5336280 m!6369206))

(declare-fun m!6369208 () Bool)

(assert (=> b!5336280 m!6369208))

(declare-fun m!6369210 () Bool)

(assert (=> b!5336280 m!6369210))

(assert (=> b!5336280 m!6369206))

(declare-fun m!6369212 () Bool)

(assert (=> b!5336280 m!6369212))

(assert (=> b!5336280 m!6369206))

(assert (=> b!5336280 m!6369210))

(declare-fun m!6369214 () Bool)

(assert (=> b!5336282 m!6369214))

(assert (=> b!5335401 d!1712989))

(declare-fun d!1712991 () Bool)

(assert (=> d!1712991 (= (flatMap!734 lt!2175929 lambda!273017) (choose!39973 lt!2175929 lambda!273017))))

(declare-fun bs!1237563 () Bool)

(assert (= bs!1237563 d!1712991))

(declare-fun m!6369216 () Bool)

(assert (=> bs!1237563 m!6369216))

(assert (=> b!5335400 d!1712991))

(declare-fun call!381439 () (InoxSet Context!8782))

(declare-fun b!5336283 () Bool)

(declare-fun e!3313963 () (InoxSet Context!8782))

(assert (=> b!5336283 (= e!3313963 ((_ map or) call!381439 (derivationStepZipperUp!379 (Context!8783 (t!374538 (exprs!4891 lt!2175932))) (h!67644 s!2326))))))

(declare-fun bm!381434 () Bool)

(assert (=> bm!381434 (= call!381439 (derivationStepZipperDown!455 (h!67645 (exprs!4891 lt!2175932)) (Context!8783 (t!374538 (exprs!4891 lt!2175932))) (h!67644 s!2326)))))

(declare-fun d!1712993 () Bool)

(declare-fun c!928355 () Bool)

(declare-fun e!3313961 () Bool)

(assert (=> d!1712993 (= c!928355 e!3313961)))

(declare-fun res!2263435 () Bool)

(assert (=> d!1712993 (=> (not res!2263435) (not e!3313961))))

(assert (=> d!1712993 (= res!2263435 ((_ is Cons!61197) (exprs!4891 lt!2175932)))))

(assert (=> d!1712993 (= (derivationStepZipperUp!379 lt!2175932 (h!67644 s!2326)) e!3313963)))

(declare-fun b!5336284 () Bool)

(declare-fun e!3313962 () (InoxSet Context!8782))

(assert (=> b!5336284 (= e!3313962 call!381439)))

(declare-fun b!5336285 () Bool)

(assert (=> b!5336285 (= e!3313963 e!3313962)))

(declare-fun c!928356 () Bool)

(assert (=> b!5336285 (= c!928356 ((_ is Cons!61197) (exprs!4891 lt!2175932)))))

(declare-fun b!5336286 () Bool)

(assert (=> b!5336286 (= e!3313962 ((as const (Array Context!8782 Bool)) false))))

(declare-fun b!5336287 () Bool)

(assert (=> b!5336287 (= e!3313961 (nullable!5176 (h!67645 (exprs!4891 lt!2175932))))))

(assert (= (and d!1712993 res!2263435) b!5336287))

(assert (= (and d!1712993 c!928355) b!5336283))

(assert (= (and d!1712993 (not c!928355)) b!5336285))

(assert (= (and b!5336285 c!928356) b!5336284))

(assert (= (and b!5336285 (not c!928356)) b!5336286))

(assert (= (or b!5336283 b!5336284) bm!381434))

(declare-fun m!6369218 () Bool)

(assert (=> b!5336283 m!6369218))

(declare-fun m!6369220 () Bool)

(assert (=> bm!381434 m!6369220))

(declare-fun m!6369222 () Bool)

(assert (=> b!5336287 m!6369222))

(assert (=> b!5335400 d!1712993))

(declare-fun d!1712995 () Bool)

(assert (=> d!1712995 (= (flatMap!734 lt!2175929 lambda!273017) (dynLambda!24202 lambda!273017 lt!2175932))))

(declare-fun lt!2176116 () Unit!153546)

(assert (=> d!1712995 (= lt!2176116 (choose!39972 lt!2175929 lt!2175932 lambda!273017))))

(assert (=> d!1712995 (= lt!2175929 (store ((as const (Array Context!8782 Bool)) false) lt!2175932 true))))

(assert (=> d!1712995 (= (lemmaFlatMapOnSingletonSet!266 lt!2175929 lt!2175932 lambda!273017) lt!2176116)))

(declare-fun b_lambda!205151 () Bool)

(assert (=> (not b_lambda!205151) (not d!1712995)))

(declare-fun bs!1237564 () Bool)

(assert (= bs!1237564 d!1712995))

(assert (=> bs!1237564 m!6368326))

(declare-fun m!6369224 () Bool)

(assert (=> bs!1237564 m!6369224))

(declare-fun m!6369226 () Bool)

(assert (=> bs!1237564 m!6369226))

(assert (=> bs!1237564 m!6368320))

(assert (=> b!5335400 d!1712995))

(declare-fun bs!1237565 () Bool)

(declare-fun d!1712997 () Bool)

(assert (= bs!1237565 (and d!1712997 b!5335403)))

(declare-fun lambda!273128 () Int)

(assert (=> bs!1237565 (= lambda!273128 lambda!273017)))

(assert (=> d!1712997 true))

(assert (=> d!1712997 (= (derivationStepZipper!1248 lt!2175929 (h!67644 s!2326)) (flatMap!734 lt!2175929 lambda!273128))))

(declare-fun bs!1237566 () Bool)

(assert (= bs!1237566 d!1712997))

(declare-fun m!6369228 () Bool)

(assert (=> bs!1237566 m!6369228))

(assert (=> b!5335400 d!1712997))

(declare-fun d!1712999 () Bool)

(declare-fun c!928361 () Bool)

(assert (=> d!1712999 (= c!928361 (and ((_ is ElementMatch!15007) (regOne!30526 (regOne!30526 r!7292))) (= (c!928081 (regOne!30526 (regOne!30526 r!7292))) (h!67644 s!2326))))))

(declare-fun e!3313967 () (InoxSet Context!8782))

(assert (=> d!1712999 (= (derivationStepZipperDown!455 (regOne!30526 (regOne!30526 r!7292)) (Context!8783 lt!2175949) (h!67644 s!2326)) e!3313967)))

(declare-fun bm!381435 () Bool)

(declare-fun call!381445 () (InoxSet Context!8782))

(declare-fun call!381442 () (InoxSet Context!8782))

(assert (=> bm!381435 (= call!381445 call!381442)))

(declare-fun b!5336290 () Bool)

(declare-fun e!3313968 () (InoxSet Context!8782))

(assert (=> b!5336290 (= e!3313967 e!3313968)))

(declare-fun c!928359 () Bool)

(assert (=> b!5336290 (= c!928359 ((_ is Union!15007) (regOne!30526 (regOne!30526 r!7292))))))

(declare-fun b!5336291 () Bool)

(declare-fun e!3313965 () (InoxSet Context!8782))

(assert (=> b!5336291 (= e!3313965 ((as const (Array Context!8782 Bool)) false))))

(declare-fun b!5336292 () Bool)

(declare-fun call!381441 () (InoxSet Context!8782))

(declare-fun call!381444 () (InoxSet Context!8782))

(assert (=> b!5336292 (= e!3313968 ((_ map or) call!381441 call!381444))))

(declare-fun b!5336293 () Bool)

(assert (=> b!5336293 (= e!3313965 call!381445)))

(declare-fun b!5336294 () Bool)

(declare-fun e!3313964 () (InoxSet Context!8782))

(declare-fun e!3313966 () (InoxSet Context!8782))

(assert (=> b!5336294 (= e!3313964 e!3313966)))

(declare-fun c!928362 () Bool)

(assert (=> b!5336294 (= c!928362 ((_ is Concat!23852) (regOne!30526 (regOne!30526 r!7292))))))

(declare-fun bm!381436 () Bool)

(declare-fun call!381443 () List!61321)

(declare-fun call!381440 () List!61321)

(assert (=> bm!381436 (= call!381443 call!381440)))

(declare-fun b!5336295 () Bool)

(assert (=> b!5336295 (= e!3313964 ((_ map or) call!381444 call!381442))))

(declare-fun b!5336296 () Bool)

(declare-fun e!3313969 () Bool)

(assert (=> b!5336296 (= e!3313969 (nullable!5176 (regOne!30526 (regOne!30526 (regOne!30526 r!7292)))))))

(declare-fun b!5336297 () Bool)

(declare-fun c!928363 () Bool)

(assert (=> b!5336297 (= c!928363 ((_ is Star!15007) (regOne!30526 (regOne!30526 r!7292))))))

(assert (=> b!5336297 (= e!3313966 e!3313965)))

(declare-fun c!928360 () Bool)

(declare-fun bm!381437 () Bool)

(assert (=> bm!381437 (= call!381441 (derivationStepZipperDown!455 (ite c!928359 (regOne!30527 (regOne!30526 (regOne!30526 r!7292))) (ite c!928360 (regTwo!30526 (regOne!30526 (regOne!30526 r!7292))) (ite c!928362 (regOne!30526 (regOne!30526 (regOne!30526 r!7292))) (reg!15336 (regOne!30526 (regOne!30526 r!7292)))))) (ite (or c!928359 c!928360) (Context!8783 lt!2175949) (Context!8783 call!381443)) (h!67644 s!2326)))))

(declare-fun bm!381438 () Bool)

(assert (=> bm!381438 (= call!381440 ($colon$colon!1410 (exprs!4891 (Context!8783 lt!2175949)) (ite (or c!928360 c!928362) (regTwo!30526 (regOne!30526 (regOne!30526 r!7292))) (regOne!30526 (regOne!30526 r!7292)))))))

(declare-fun bm!381439 () Bool)

(assert (=> bm!381439 (= call!381442 call!381441)))

(declare-fun b!5336298 () Bool)

(assert (=> b!5336298 (= e!3313967 (store ((as const (Array Context!8782 Bool)) false) (Context!8783 lt!2175949) true))))

(declare-fun b!5336299 () Bool)

(assert (=> b!5336299 (= e!3313966 call!381445)))

(declare-fun b!5336300 () Bool)

(assert (=> b!5336300 (= c!928360 e!3313969)))

(declare-fun res!2263436 () Bool)

(assert (=> b!5336300 (=> (not res!2263436) (not e!3313969))))

(assert (=> b!5336300 (= res!2263436 ((_ is Concat!23852) (regOne!30526 (regOne!30526 r!7292))))))

(assert (=> b!5336300 (= e!3313968 e!3313964)))

(declare-fun bm!381440 () Bool)

(assert (=> bm!381440 (= call!381444 (derivationStepZipperDown!455 (ite c!928359 (regTwo!30527 (regOne!30526 (regOne!30526 r!7292))) (regOne!30526 (regOne!30526 (regOne!30526 r!7292)))) (ite c!928359 (Context!8783 lt!2175949) (Context!8783 call!381440)) (h!67644 s!2326)))))

(assert (= (and d!1712999 c!928361) b!5336298))

(assert (= (and d!1712999 (not c!928361)) b!5336290))

(assert (= (and b!5336290 c!928359) b!5336292))

(assert (= (and b!5336290 (not c!928359)) b!5336300))

(assert (= (and b!5336300 res!2263436) b!5336296))

(assert (= (and b!5336300 c!928360) b!5336295))

(assert (= (and b!5336300 (not c!928360)) b!5336294))

(assert (= (and b!5336294 c!928362) b!5336299))

(assert (= (and b!5336294 (not c!928362)) b!5336297))

(assert (= (and b!5336297 c!928363) b!5336293))

(assert (= (and b!5336297 (not c!928363)) b!5336291))

(assert (= (or b!5336299 b!5336293) bm!381436))

(assert (= (or b!5336299 b!5336293) bm!381435))

(assert (= (or b!5336295 bm!381436) bm!381438))

(assert (= (or b!5336295 bm!381435) bm!381439))

(assert (= (or b!5336292 b!5336295) bm!381440))

(assert (= (or b!5336292 bm!381439) bm!381437))

(declare-fun m!6369230 () Bool)

(assert (=> bm!381438 m!6369230))

(declare-fun m!6369232 () Bool)

(assert (=> b!5336298 m!6369232))

(declare-fun m!6369234 () Bool)

(assert (=> bm!381440 m!6369234))

(declare-fun m!6369236 () Bool)

(assert (=> b!5336296 m!6369236))

(declare-fun m!6369238 () Bool)

(assert (=> bm!381437 m!6369238))

(assert (=> b!5335415 d!1712999))

(declare-fun d!1713001 () Bool)

(declare-fun lt!2176119 () Int)

(assert (=> d!1713001 (>= lt!2176119 0)))

(declare-fun e!3313972 () Int)

(assert (=> d!1713001 (= lt!2176119 e!3313972)))

(declare-fun c!928366 () Bool)

(assert (=> d!1713001 (= c!928366 ((_ is Cons!61198) lt!2175927))))

(assert (=> d!1713001 (= (zipperDepthTotal!160 lt!2175927) lt!2176119)))

(declare-fun b!5336305 () Bool)

(assert (=> b!5336305 (= e!3313972 (+ (contextDepthTotal!140 (h!67646 lt!2175927)) (zipperDepthTotal!160 (t!374539 lt!2175927))))))

(declare-fun b!5336306 () Bool)

(assert (=> b!5336306 (= e!3313972 0)))

(assert (= (and d!1713001 c!928366) b!5336305))

(assert (= (and d!1713001 (not c!928366)) b!5336306))

(declare-fun m!6369240 () Bool)

(assert (=> b!5336305 m!6369240))

(declare-fun m!6369242 () Bool)

(assert (=> b!5336305 m!6369242))

(assert (=> b!5335414 d!1713001))

(declare-fun d!1713003 () Bool)

(declare-fun lt!2176120 () Int)

(assert (=> d!1713003 (>= lt!2176120 0)))

(declare-fun e!3313973 () Int)

(assert (=> d!1713003 (= lt!2176120 e!3313973)))

(declare-fun c!928367 () Bool)

(assert (=> d!1713003 (= c!928367 ((_ is Cons!61198) zl!343))))

(assert (=> d!1713003 (= (zipperDepthTotal!160 zl!343) lt!2176120)))

(declare-fun b!5336307 () Bool)

(assert (=> b!5336307 (= e!3313973 (+ (contextDepthTotal!140 (h!67646 zl!343)) (zipperDepthTotal!160 (t!374539 zl!343))))))

(declare-fun b!5336308 () Bool)

(assert (=> b!5336308 (= e!3313973 0)))

(assert (= (and d!1713003 c!928367) b!5336307))

(assert (= (and d!1713003 (not c!928367)) b!5336308))

(assert (=> b!5336307 m!6368348))

(declare-fun m!6369244 () Bool)

(assert (=> b!5336307 m!6369244))

(assert (=> b!5335414 d!1713003))

(declare-fun d!1713005 () Bool)

(declare-fun e!3313976 () Bool)

(assert (=> d!1713005 e!3313976))

(declare-fun res!2263439 () Bool)

(assert (=> d!1713005 (=> (not res!2263439) (not e!3313976))))

(declare-fun lt!2176123 () List!61322)

(declare-fun noDuplicate!1315 (List!61322) Bool)

(assert (=> d!1713005 (= res!2263439 (noDuplicate!1315 lt!2176123))))

(declare-fun choose!39983 ((InoxSet Context!8782)) List!61322)

(assert (=> d!1713005 (= lt!2176123 (choose!39983 z!1189))))

(assert (=> d!1713005 (= (toList!8791 z!1189) lt!2176123)))

(declare-fun b!5336311 () Bool)

(declare-fun content!10917 (List!61322) (InoxSet Context!8782))

(assert (=> b!5336311 (= e!3313976 (= (content!10917 lt!2176123) z!1189))))

(assert (= (and d!1713005 res!2263439) b!5336311))

(declare-fun m!6369246 () Bool)

(assert (=> d!1713005 m!6369246))

(declare-fun m!6369248 () Bool)

(assert (=> d!1713005 m!6369248))

(declare-fun m!6369250 () Bool)

(assert (=> b!5336311 m!6369250))

(assert (=> b!5335392 d!1713005))

(declare-fun b!5336312 () Bool)

(declare-fun e!3313978 () Bool)

(declare-fun lt!2176124 () Option!15118)

(assert (=> b!5336312 (= e!3313978 (not (isDefined!11821 lt!2176124)))))

(declare-fun b!5336313 () Bool)

(declare-fun e!3313979 () Bool)

(assert (=> b!5336313 (= e!3313979 (= (++!13340 (_1!35509 (get!21049 lt!2176124)) (_2!35509 (get!21049 lt!2176124))) s!2326))))

(declare-fun b!5336314 () Bool)

(declare-fun res!2263444 () Bool)

(assert (=> b!5336314 (=> (not res!2263444) (not e!3313979))))

(assert (=> b!5336314 (= res!2263444 (matchR!7192 (regTwo!30526 r!7292) (_2!35509 (get!21049 lt!2176124))))))

(declare-fun b!5336315 () Bool)

(declare-fun e!3313981 () Option!15118)

(declare-fun e!3313980 () Option!15118)

(assert (=> b!5336315 (= e!3313981 e!3313980)))

(declare-fun c!928369 () Bool)

(assert (=> b!5336315 (= c!928369 ((_ is Nil!61196) s!2326))))

(declare-fun b!5336316 () Bool)

(assert (=> b!5336316 (= e!3313980 None!15117)))

(declare-fun b!5336317 () Bool)

(declare-fun res!2263441 () Bool)

(assert (=> b!5336317 (=> (not res!2263441) (not e!3313979))))

(assert (=> b!5336317 (= res!2263441 (matchR!7192 (regOne!30526 r!7292) (_1!35509 (get!21049 lt!2176124))))))

(declare-fun b!5336318 () Bool)

(assert (=> b!5336318 (= e!3313981 (Some!15117 (tuple2!64413 Nil!61196 s!2326)))))

(declare-fun b!5336319 () Bool)

(declare-fun lt!2176126 () Unit!153546)

(declare-fun lt!2176125 () Unit!153546)

(assert (=> b!5336319 (= lt!2176126 lt!2176125)))

(assert (=> b!5336319 (= (++!13340 (++!13340 Nil!61196 (Cons!61196 (h!67644 s!2326) Nil!61196)) (t!374537 s!2326)) s!2326)))

(assert (=> b!5336319 (= lt!2176125 (lemmaMoveElementToOtherListKeepsConcatEq!1755 Nil!61196 (h!67644 s!2326) (t!374537 s!2326) s!2326))))

(assert (=> b!5336319 (= e!3313980 (findConcatSeparation!1532 (regOne!30526 r!7292) (regTwo!30526 r!7292) (++!13340 Nil!61196 (Cons!61196 (h!67644 s!2326) Nil!61196)) (t!374537 s!2326) s!2326))))

(declare-fun d!1713007 () Bool)

(assert (=> d!1713007 e!3313978))

(declare-fun res!2263443 () Bool)

(assert (=> d!1713007 (=> res!2263443 e!3313978)))

(assert (=> d!1713007 (= res!2263443 e!3313979)))

(declare-fun res!2263440 () Bool)

(assert (=> d!1713007 (=> (not res!2263440) (not e!3313979))))

(assert (=> d!1713007 (= res!2263440 (isDefined!11821 lt!2176124))))

(assert (=> d!1713007 (= lt!2176124 e!3313981)))

(declare-fun c!928368 () Bool)

(declare-fun e!3313977 () Bool)

(assert (=> d!1713007 (= c!928368 e!3313977)))

(declare-fun res!2263442 () Bool)

(assert (=> d!1713007 (=> (not res!2263442) (not e!3313977))))

(assert (=> d!1713007 (= res!2263442 (matchR!7192 (regOne!30526 r!7292) Nil!61196))))

(assert (=> d!1713007 (validRegex!6743 (regOne!30526 r!7292))))

(assert (=> d!1713007 (= (findConcatSeparation!1532 (regOne!30526 r!7292) (regTwo!30526 r!7292) Nil!61196 s!2326 s!2326) lt!2176124)))

(declare-fun b!5336320 () Bool)

(assert (=> b!5336320 (= e!3313977 (matchR!7192 (regTwo!30526 r!7292) s!2326))))

(assert (= (and d!1713007 res!2263442) b!5336320))

(assert (= (and d!1713007 c!928368) b!5336318))

(assert (= (and d!1713007 (not c!928368)) b!5336315))

(assert (= (and b!5336315 c!928369) b!5336316))

(assert (= (and b!5336315 (not c!928369)) b!5336319))

(assert (= (and d!1713007 res!2263440) b!5336317))

(assert (= (and b!5336317 res!2263441) b!5336314))

(assert (= (and b!5336314 res!2263444) b!5336313))

(assert (= (and d!1713007 (not res!2263443)) b!5336312))

(declare-fun m!6369252 () Bool)

(assert (=> b!5336313 m!6369252))

(declare-fun m!6369254 () Bool)

(assert (=> b!5336313 m!6369254))

(assert (=> b!5336317 m!6369252))

(declare-fun m!6369256 () Bool)

(assert (=> b!5336317 m!6369256))

(declare-fun m!6369258 () Bool)

(assert (=> b!5336312 m!6369258))

(assert (=> b!5336319 m!6369092))

(assert (=> b!5336319 m!6369092))

(assert (=> b!5336319 m!6369094))

(assert (=> b!5336319 m!6369096))

(assert (=> b!5336319 m!6369092))

(declare-fun m!6369260 () Bool)

(assert (=> b!5336319 m!6369260))

(assert (=> d!1713007 m!6369258))

(declare-fun m!6369262 () Bool)

(assert (=> d!1713007 m!6369262))

(declare-fun m!6369264 () Bool)

(assert (=> d!1713007 m!6369264))

(declare-fun m!6369266 () Bool)

(assert (=> b!5336320 m!6369266))

(assert (=> b!5336314 m!6369252))

(declare-fun m!6369268 () Bool)

(assert (=> b!5336314 m!6369268))

(assert (=> b!5335397 d!1713007))

(declare-fun d!1713009 () Bool)

(assert (=> d!1713009 (= (Exists!2188 lambda!273015) (choose!39975 lambda!273015))))

(declare-fun bs!1237567 () Bool)

(assert (= bs!1237567 d!1713009))

(declare-fun m!6369270 () Bool)

(assert (=> bs!1237567 m!6369270))

(assert (=> b!5335397 d!1713009))

(declare-fun d!1713011 () Bool)

(assert (=> d!1713011 (= (Exists!2188 lambda!273016) (choose!39975 lambda!273016))))

(declare-fun bs!1237568 () Bool)

(assert (= bs!1237568 d!1713011))

(declare-fun m!6369272 () Bool)

(assert (=> bs!1237568 m!6369272))

(assert (=> b!5335397 d!1713011))

(declare-fun bs!1237569 () Bool)

(declare-fun d!1713013 () Bool)

(assert (= bs!1237569 (and d!1713013 b!5335419)))

(declare-fun lambda!273129 () Int)

(assert (=> bs!1237569 (not (= lambda!273129 lambda!273021))))

(declare-fun bs!1237570 () Bool)

(assert (= bs!1237570 (and d!1713013 b!5336195)))

(assert (=> bs!1237570 (not (= lambda!273129 lambda!273112))))

(declare-fun bs!1237571 () Bool)

(assert (= bs!1237571 (and d!1713013 d!1712945)))

(assert (=> bs!1237571 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273129 lambda!273095))))

(assert (=> bs!1237571 (not (= lambda!273129 lambda!273099))))

(declare-fun bs!1237572 () Bool)

(assert (= bs!1237572 (and d!1713013 b!5336176)))

(assert (=> bs!1237572 (not (= lambda!273129 lambda!273108))))

(assert (=> bs!1237569 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273129 lambda!273020))))

(declare-fun bs!1237573 () Bool)

(assert (= bs!1237573 (and d!1713013 d!1712923)))

(assert (=> bs!1237573 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273129 lambda!273079))))

(assert (=> bs!1237569 (not (= lambda!273129 lambda!273019))))

(declare-fun bs!1237574 () Bool)

(assert (= bs!1237574 (and d!1713013 b!5335397)))

(assert (=> bs!1237574 (not (= lambda!273129 lambda!273016))))

(assert (=> bs!1237574 (= lambda!273129 lambda!273015)))

(declare-fun bs!1237575 () Bool)

(assert (= bs!1237575 (and d!1713013 d!1712969)))

(assert (=> bs!1237575 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273129 lambda!273113))))

(declare-fun bs!1237576 () Bool)

(assert (= bs!1237576 (and d!1713013 d!1712939)))

(assert (=> bs!1237576 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273129 lambda!273092))))

(declare-fun bs!1237577 () Bool)

(assert (= bs!1237577 (and d!1713013 b!5336174)))

(assert (=> bs!1237577 (not (= lambda!273129 lambda!273109))))

(assert (=> bs!1237569 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273129 lambda!273018))))

(assert (=> bs!1237573 (not (= lambda!273129 lambda!273080))))

(declare-fun bs!1237578 () Bool)

(assert (= bs!1237578 (and d!1713013 b!5336197)))

(assert (=> bs!1237578 (not (= lambda!273129 lambda!273111))))

(assert (=> d!1713013 true))

(assert (=> d!1713013 true))

(assert (=> d!1713013 true))

(assert (=> d!1713013 (= (isDefined!11821 (findConcatSeparation!1532 (regOne!30526 r!7292) (regTwo!30526 r!7292) Nil!61196 s!2326 s!2326)) (Exists!2188 lambda!273129))))

(declare-fun lt!2176127 () Unit!153546)

(assert (=> d!1713013 (= lt!2176127 (choose!39977 (regOne!30526 r!7292) (regTwo!30526 r!7292) s!2326))))

(assert (=> d!1713013 (validRegex!6743 (regOne!30526 r!7292))))

(assert (=> d!1713013 (= (lemmaFindConcatSeparationEquivalentToExists!1296 (regOne!30526 r!7292) (regTwo!30526 r!7292) s!2326) lt!2176127)))

(declare-fun bs!1237579 () Bool)

(assert (= bs!1237579 d!1713013))

(declare-fun m!6369274 () Bool)

(assert (=> bs!1237579 m!6369274))

(assert (=> bs!1237579 m!6368442))

(declare-fun m!6369276 () Bool)

(assert (=> bs!1237579 m!6369276))

(assert (=> bs!1237579 m!6368442))

(assert (=> bs!1237579 m!6368444))

(assert (=> bs!1237579 m!6369264))

(assert (=> b!5335397 d!1713013))

(declare-fun bs!1237580 () Bool)

(declare-fun d!1713015 () Bool)

(assert (= bs!1237580 (and d!1713015 b!5335419)))

(declare-fun lambda!273130 () Int)

(assert (=> bs!1237580 (not (= lambda!273130 lambda!273021))))

(declare-fun bs!1237581 () Bool)

(assert (= bs!1237581 (and d!1713015 b!5336195)))

(assert (=> bs!1237581 (not (= lambda!273130 lambda!273112))))

(declare-fun bs!1237582 () Bool)

(assert (= bs!1237582 (and d!1713015 d!1712945)))

(assert (=> bs!1237582 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273130 lambda!273095))))

(assert (=> bs!1237582 (not (= lambda!273130 lambda!273099))))

(assert (=> bs!1237580 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273130 lambda!273020))))

(declare-fun bs!1237583 () Bool)

(assert (= bs!1237583 (and d!1713015 d!1712923)))

(assert (=> bs!1237583 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273130 lambda!273079))))

(assert (=> bs!1237580 (not (= lambda!273130 lambda!273019))))

(declare-fun bs!1237584 () Bool)

(assert (= bs!1237584 (and d!1713015 b!5335397)))

(assert (=> bs!1237584 (not (= lambda!273130 lambda!273016))))

(assert (=> bs!1237584 (= lambda!273130 lambda!273015)))

(declare-fun bs!1237585 () Bool)

(assert (= bs!1237585 (and d!1713015 d!1712969)))

(assert (=> bs!1237585 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273130 lambda!273113))))

(declare-fun bs!1237586 () Bool)

(assert (= bs!1237586 (and d!1713015 d!1712939)))

(assert (=> bs!1237586 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273130 lambda!273092))))

(declare-fun bs!1237587 () Bool)

(assert (= bs!1237587 (and d!1713015 b!5336174)))

(assert (=> bs!1237587 (not (= lambda!273130 lambda!273109))))

(declare-fun bs!1237588 () Bool)

(assert (= bs!1237588 (and d!1713015 b!5336176)))

(assert (=> bs!1237588 (not (= lambda!273130 lambda!273108))))

(declare-fun bs!1237589 () Bool)

(assert (= bs!1237589 (and d!1713015 d!1713013)))

(assert (=> bs!1237589 (= lambda!273130 lambda!273129)))

(assert (=> bs!1237580 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273130 lambda!273018))))

(assert (=> bs!1237583 (not (= lambda!273130 lambda!273080))))

(declare-fun bs!1237590 () Bool)

(assert (= bs!1237590 (and d!1713015 b!5336197)))

(assert (=> bs!1237590 (not (= lambda!273130 lambda!273111))))

(assert (=> d!1713015 true))

(assert (=> d!1713015 true))

(assert (=> d!1713015 true))

(declare-fun lambda!273131 () Int)

(assert (=> bs!1237580 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273131 lambda!273021))))

(assert (=> bs!1237582 (not (= lambda!273131 lambda!273095))))

(assert (=> bs!1237582 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273131 lambda!273099))))

(assert (=> bs!1237580 (not (= lambda!273131 lambda!273020))))

(assert (=> bs!1237583 (not (= lambda!273131 lambda!273079))))

(assert (=> bs!1237580 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273131 lambda!273019))))

(assert (=> bs!1237584 (= lambda!273131 lambda!273016)))

(assert (=> bs!1237584 (not (= lambda!273131 lambda!273015))))

(assert (=> bs!1237585 (not (= lambda!273131 lambda!273113))))

(assert (=> bs!1237581 (= (and (= (regOne!30526 r!7292) (regOne!30526 lt!2175943)) (= (regTwo!30526 r!7292) (regTwo!30526 lt!2175943))) (= lambda!273131 lambda!273112))))

(declare-fun bs!1237591 () Bool)

(assert (= bs!1237591 d!1713015))

(assert (=> bs!1237591 (not (= lambda!273131 lambda!273130))))

(assert (=> bs!1237586 (not (= lambda!273131 lambda!273092))))

(assert (=> bs!1237587 (= (and (= (regOne!30526 r!7292) (regOne!30526 lt!2175940)) (= (regTwo!30526 r!7292) (regTwo!30526 lt!2175940))) (= lambda!273131 lambda!273109))))

(assert (=> bs!1237588 (not (= lambda!273131 lambda!273108))))

(assert (=> bs!1237589 (not (= lambda!273131 lambda!273129))))

(assert (=> bs!1237580 (not (= lambda!273131 lambda!273018))))

(assert (=> bs!1237583 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273131 lambda!273080))))

(assert (=> bs!1237590 (not (= lambda!273131 lambda!273111))))

(assert (=> d!1713015 true))

(assert (=> d!1713015 true))

(assert (=> d!1713015 true))

(assert (=> d!1713015 (= (Exists!2188 lambda!273130) (Exists!2188 lambda!273131))))

(declare-fun lt!2176128 () Unit!153546)

(assert (=> d!1713015 (= lt!2176128 (choose!39976 (regOne!30526 r!7292) (regTwo!30526 r!7292) s!2326))))

(assert (=> d!1713015 (validRegex!6743 (regOne!30526 r!7292))))

(assert (=> d!1713015 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!842 (regOne!30526 r!7292) (regTwo!30526 r!7292) s!2326) lt!2176128)))

(declare-fun m!6369278 () Bool)

(assert (=> bs!1237591 m!6369278))

(declare-fun m!6369280 () Bool)

(assert (=> bs!1237591 m!6369280))

(declare-fun m!6369282 () Bool)

(assert (=> bs!1237591 m!6369282))

(assert (=> bs!1237591 m!6369264))

(assert (=> b!5335397 d!1713015))

(declare-fun d!1713017 () Bool)

(assert (=> d!1713017 (= (isDefined!11821 (findConcatSeparation!1532 (regOne!30526 r!7292) (regTwo!30526 r!7292) Nil!61196 s!2326 s!2326)) (not (isEmpty!33172 (findConcatSeparation!1532 (regOne!30526 r!7292) (regTwo!30526 r!7292) Nil!61196 s!2326 s!2326))))))

(declare-fun bs!1237592 () Bool)

(assert (= bs!1237592 d!1713017))

(assert (=> bs!1237592 m!6368442))

(declare-fun m!6369284 () Bool)

(assert (=> bs!1237592 m!6369284))

(assert (=> b!5335397 d!1713017))

(declare-fun d!1713019 () Bool)

(assert (=> d!1713019 (= (isEmpty!33168 (t!374538 (exprs!4891 (h!67646 zl!343)))) ((_ is Nil!61197) (t!374538 (exprs!4891 (h!67646 zl!343)))))))

(assert (=> b!5335418 d!1713019))

(declare-fun b!5336339 () Bool)

(declare-fun e!3314001 () Bool)

(declare-fun e!3313998 () Bool)

(assert (=> b!5336339 (= e!3314001 e!3313998)))

(declare-fun c!928374 () Bool)

(assert (=> b!5336339 (= c!928374 ((_ is Union!15007) r!7292))))

(declare-fun b!5336341 () Bool)

(declare-fun e!3314002 () Bool)

(assert (=> b!5336341 (= e!3314001 e!3314002)))

(declare-fun res!2263457 () Bool)

(assert (=> b!5336341 (= res!2263457 (not (nullable!5176 (reg!15336 r!7292))))))

(assert (=> b!5336341 (=> (not res!2263457) (not e!3314002))))

(declare-fun b!5336342 () Bool)

(declare-fun call!381453 () Bool)

(assert (=> b!5336342 (= e!3314002 call!381453)))

(declare-fun bm!381447 () Bool)

(declare-fun c!928375 () Bool)

(assert (=> bm!381447 (= call!381453 (validRegex!6743 (ite c!928375 (reg!15336 r!7292) (ite c!928374 (regOne!30527 r!7292) (regOne!30526 r!7292)))))))

(declare-fun b!5336343 () Bool)

(declare-fun res!2263456 () Bool)

(declare-fun e!3314000 () Bool)

(assert (=> b!5336343 (=> (not res!2263456) (not e!3314000))))

(declare-fun call!381454 () Bool)

(assert (=> b!5336343 (= res!2263456 call!381454)))

(assert (=> b!5336343 (= e!3313998 e!3314000)))

(declare-fun b!5336344 () Bool)

(declare-fun call!381452 () Bool)

(assert (=> b!5336344 (= e!3314000 call!381452)))

(declare-fun bm!381448 () Bool)

(assert (=> bm!381448 (= call!381454 call!381453)))

(declare-fun b!5336340 () Bool)

(declare-fun res!2263455 () Bool)

(declare-fun e!3313997 () Bool)

(assert (=> b!5336340 (=> res!2263455 e!3313997)))

(assert (=> b!5336340 (= res!2263455 (not ((_ is Concat!23852) r!7292)))))

(assert (=> b!5336340 (= e!3313998 e!3313997)))

(declare-fun d!1713021 () Bool)

(declare-fun res!2263458 () Bool)

(declare-fun e!3313999 () Bool)

(assert (=> d!1713021 (=> res!2263458 e!3313999)))

(assert (=> d!1713021 (= res!2263458 ((_ is ElementMatch!15007) r!7292))))

(assert (=> d!1713021 (= (validRegex!6743 r!7292) e!3313999)))

(declare-fun b!5336345 () Bool)

(declare-fun e!3313996 () Bool)

(assert (=> b!5336345 (= e!3313997 e!3313996)))

(declare-fun res!2263459 () Bool)

(assert (=> b!5336345 (=> (not res!2263459) (not e!3313996))))

(assert (=> b!5336345 (= res!2263459 call!381454)))

(declare-fun bm!381449 () Bool)

(assert (=> bm!381449 (= call!381452 (validRegex!6743 (ite c!928374 (regTwo!30527 r!7292) (regTwo!30526 r!7292))))))

(declare-fun b!5336346 () Bool)

(assert (=> b!5336346 (= e!3313996 call!381452)))

(declare-fun b!5336347 () Bool)

(assert (=> b!5336347 (= e!3313999 e!3314001)))

(assert (=> b!5336347 (= c!928375 ((_ is Star!15007) r!7292))))

(assert (= (and d!1713021 (not res!2263458)) b!5336347))

(assert (= (and b!5336347 c!928375) b!5336341))

(assert (= (and b!5336347 (not c!928375)) b!5336339))

(assert (= (and b!5336341 res!2263457) b!5336342))

(assert (= (and b!5336339 c!928374) b!5336343))

(assert (= (and b!5336339 (not c!928374)) b!5336340))

(assert (= (and b!5336343 res!2263456) b!5336344))

(assert (= (and b!5336340 (not res!2263455)) b!5336345))

(assert (= (and b!5336345 res!2263459) b!5336346))

(assert (= (or b!5336344 b!5336346) bm!381449))

(assert (= (or b!5336343 b!5336345) bm!381448))

(assert (= (or b!5336342 bm!381448) bm!381447))

(declare-fun m!6369286 () Bool)

(assert (=> b!5336341 m!6369286))

(declare-fun m!6369288 () Bool)

(assert (=> bm!381447 m!6369288))

(declare-fun m!6369290 () Bool)

(assert (=> bm!381449 m!6369290))

(assert (=> start!562234 d!1713021))

(declare-fun b!5336348 () Bool)

(declare-fun e!3314008 () Bool)

(declare-fun e!3314005 () Bool)

(assert (=> b!5336348 (= e!3314008 e!3314005)))

(declare-fun c!928376 () Bool)

(assert (=> b!5336348 (= c!928376 ((_ is Union!15007) lt!2175940))))

(declare-fun b!5336350 () Bool)

(declare-fun e!3314009 () Bool)

(assert (=> b!5336350 (= e!3314008 e!3314009)))

(declare-fun res!2263462 () Bool)

(assert (=> b!5336350 (= res!2263462 (not (nullable!5176 (reg!15336 lt!2175940))))))

(assert (=> b!5336350 (=> (not res!2263462) (not e!3314009))))

(declare-fun b!5336351 () Bool)

(declare-fun call!381456 () Bool)

(assert (=> b!5336351 (= e!3314009 call!381456)))

(declare-fun bm!381450 () Bool)

(declare-fun c!928377 () Bool)

(assert (=> bm!381450 (= call!381456 (validRegex!6743 (ite c!928377 (reg!15336 lt!2175940) (ite c!928376 (regOne!30527 lt!2175940) (regOne!30526 lt!2175940)))))))

(declare-fun b!5336352 () Bool)

(declare-fun res!2263461 () Bool)

(declare-fun e!3314007 () Bool)

(assert (=> b!5336352 (=> (not res!2263461) (not e!3314007))))

(declare-fun call!381457 () Bool)

(assert (=> b!5336352 (= res!2263461 call!381457)))

(assert (=> b!5336352 (= e!3314005 e!3314007)))

(declare-fun b!5336353 () Bool)

(declare-fun call!381455 () Bool)

(assert (=> b!5336353 (= e!3314007 call!381455)))

(declare-fun bm!381451 () Bool)

(assert (=> bm!381451 (= call!381457 call!381456)))

(declare-fun b!5336349 () Bool)

(declare-fun res!2263460 () Bool)

(declare-fun e!3314004 () Bool)

(assert (=> b!5336349 (=> res!2263460 e!3314004)))

(assert (=> b!5336349 (= res!2263460 (not ((_ is Concat!23852) lt!2175940)))))

(assert (=> b!5336349 (= e!3314005 e!3314004)))

(declare-fun d!1713023 () Bool)

(declare-fun res!2263463 () Bool)

(declare-fun e!3314006 () Bool)

(assert (=> d!1713023 (=> res!2263463 e!3314006)))

(assert (=> d!1713023 (= res!2263463 ((_ is ElementMatch!15007) lt!2175940))))

(assert (=> d!1713023 (= (validRegex!6743 lt!2175940) e!3314006)))

(declare-fun b!5336354 () Bool)

(declare-fun e!3314003 () Bool)

(assert (=> b!5336354 (= e!3314004 e!3314003)))

(declare-fun res!2263464 () Bool)

(assert (=> b!5336354 (=> (not res!2263464) (not e!3314003))))

(assert (=> b!5336354 (= res!2263464 call!381457)))

(declare-fun bm!381452 () Bool)

(assert (=> bm!381452 (= call!381455 (validRegex!6743 (ite c!928376 (regTwo!30527 lt!2175940) (regTwo!30526 lt!2175940))))))

(declare-fun b!5336355 () Bool)

(assert (=> b!5336355 (= e!3314003 call!381455)))

(declare-fun b!5336356 () Bool)

(assert (=> b!5336356 (= e!3314006 e!3314008)))

(assert (=> b!5336356 (= c!928377 ((_ is Star!15007) lt!2175940))))

(assert (= (and d!1713023 (not res!2263463)) b!5336356))

(assert (= (and b!5336356 c!928377) b!5336350))

(assert (= (and b!5336356 (not c!928377)) b!5336348))

(assert (= (and b!5336350 res!2263462) b!5336351))

(assert (= (and b!5336348 c!928376) b!5336352))

(assert (= (and b!5336348 (not c!928376)) b!5336349))

(assert (= (and b!5336352 res!2263461) b!5336353))

(assert (= (and b!5336349 (not res!2263460)) b!5336354))

(assert (= (and b!5336354 res!2263464) b!5336355))

(assert (= (or b!5336353 b!5336355) bm!381452))

(assert (= (or b!5336352 b!5336354) bm!381451))

(assert (= (or b!5336351 bm!381451) bm!381450))

(declare-fun m!6369292 () Bool)

(assert (=> b!5336350 m!6369292))

(declare-fun m!6369294 () Bool)

(assert (=> bm!381450 m!6369294))

(declare-fun m!6369296 () Bool)

(assert (=> bm!381452 m!6369296))

(assert (=> b!5335396 d!1713023))

(declare-fun d!1713025 () Bool)

(declare-fun lt!2176131 () Int)

(assert (=> d!1713025 (>= lt!2176131 0)))

(declare-fun e!3314012 () Int)

(assert (=> d!1713025 (= lt!2176131 e!3314012)))

(declare-fun c!928381 () Bool)

(assert (=> d!1713025 (= c!928381 ((_ is Cons!61197) (exprs!4891 lt!2175932)))))

(assert (=> d!1713025 (= (contextDepthTotal!140 lt!2175932) lt!2176131)))

(declare-fun b!5336361 () Bool)

(declare-fun regexDepthTotal!65 (Regex!15007) Int)

(assert (=> b!5336361 (= e!3314012 (+ (regexDepthTotal!65 (h!67645 (exprs!4891 lt!2175932))) (contextDepthTotal!140 (Context!8783 (t!374538 (exprs!4891 lt!2175932))))))))

(declare-fun b!5336362 () Bool)

(assert (=> b!5336362 (= e!3314012 1)))

(assert (= (and d!1713025 c!928381) b!5336361))

(assert (= (and d!1713025 (not c!928381)) b!5336362))

(declare-fun m!6369298 () Bool)

(assert (=> b!5336361 m!6369298))

(declare-fun m!6369300 () Bool)

(assert (=> b!5336361 m!6369300))

(assert (=> b!5335395 d!1713025))

(declare-fun d!1713027 () Bool)

(declare-fun lt!2176132 () Int)

(assert (=> d!1713027 (>= lt!2176132 0)))

(declare-fun e!3314013 () Int)

(assert (=> d!1713027 (= lt!2176132 e!3314013)))

(declare-fun c!928382 () Bool)

(assert (=> d!1713027 (= c!928382 ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343))))))

(assert (=> d!1713027 (= (contextDepthTotal!140 (h!67646 zl!343)) lt!2176132)))

(declare-fun b!5336363 () Bool)

(assert (=> b!5336363 (= e!3314013 (+ (regexDepthTotal!65 (h!67645 (exprs!4891 (h!67646 zl!343)))) (contextDepthTotal!140 (Context!8783 (t!374538 (exprs!4891 (h!67646 zl!343)))))))))

(declare-fun b!5336364 () Bool)

(assert (=> b!5336364 (= e!3314013 1)))

(assert (= (and d!1713027 c!928382) b!5336363))

(assert (= (and d!1713027 (not c!928382)) b!5336364))

(declare-fun m!6369302 () Bool)

(assert (=> b!5336363 m!6369302))

(declare-fun m!6369304 () Bool)

(assert (=> b!5336363 m!6369304))

(assert (=> b!5335395 d!1713027))

(declare-fun bs!1237593 () Bool)

(declare-fun b!5336373 () Bool)

(assert (= bs!1237593 (and b!5336373 b!5335419)))

(declare-fun lambda!273132 () Int)

(assert (=> bs!1237593 (not (= lambda!273132 lambda!273021))))

(declare-fun bs!1237594 () Bool)

(assert (= bs!1237594 (and b!5336373 d!1712945)))

(assert (=> bs!1237594 (not (= lambda!273132 lambda!273095))))

(assert (=> bs!1237594 (not (= lambda!273132 lambda!273099))))

(assert (=> bs!1237593 (not (= lambda!273132 lambda!273020))))

(assert (=> bs!1237593 (not (= lambda!273132 lambda!273019))))

(declare-fun bs!1237595 () Bool)

(assert (= bs!1237595 (and b!5336373 b!5335397)))

(assert (=> bs!1237595 (not (= lambda!273132 lambda!273016))))

(assert (=> bs!1237595 (not (= lambda!273132 lambda!273015))))

(declare-fun bs!1237596 () Bool)

(assert (= bs!1237596 (and b!5336373 d!1712969)))

(assert (=> bs!1237596 (not (= lambda!273132 lambda!273113))))

(declare-fun bs!1237597 () Bool)

(assert (= bs!1237597 (and b!5336373 b!5336195)))

(assert (=> bs!1237597 (not (= lambda!273132 lambda!273112))))

(declare-fun bs!1237598 () Bool)

(assert (= bs!1237598 (and b!5336373 d!1713015)))

(assert (=> bs!1237598 (not (= lambda!273132 lambda!273130))))

(declare-fun bs!1237599 () Bool)

(assert (= bs!1237599 (and b!5336373 d!1712939)))

(assert (=> bs!1237599 (not (= lambda!273132 lambda!273092))))

(declare-fun bs!1237600 () Bool)

(assert (= bs!1237600 (and b!5336373 b!5336174)))

(assert (=> bs!1237600 (not (= lambda!273132 lambda!273109))))

(declare-fun bs!1237601 () Bool)

(assert (= bs!1237601 (and b!5336373 b!5336176)))

(assert (=> bs!1237601 (= (and (= (reg!15336 r!7292) (reg!15336 lt!2175940)) (= r!7292 lt!2175940)) (= lambda!273132 lambda!273108))))

(declare-fun bs!1237602 () Bool)

(assert (= bs!1237602 (and b!5336373 d!1713013)))

(assert (=> bs!1237602 (not (= lambda!273132 lambda!273129))))

(assert (=> bs!1237593 (not (= lambda!273132 lambda!273018))))

(declare-fun bs!1237603 () Bool)

(assert (= bs!1237603 (and b!5336373 d!1712923)))

(assert (=> bs!1237603 (not (= lambda!273132 lambda!273080))))

(declare-fun bs!1237604 () Bool)

(assert (= bs!1237604 (and b!5336373 b!5336197)))

(assert (=> bs!1237604 (= (and (= (reg!15336 r!7292) (reg!15336 lt!2175943)) (= r!7292 lt!2175943)) (= lambda!273132 lambda!273111))))

(assert (=> bs!1237603 (not (= lambda!273132 lambda!273079))))

(assert (=> bs!1237598 (not (= lambda!273132 lambda!273131))))

(assert (=> b!5336373 true))

(assert (=> b!5336373 true))

(declare-fun bs!1237605 () Bool)

(declare-fun b!5336371 () Bool)

(assert (= bs!1237605 (and b!5336371 b!5335419)))

(declare-fun lambda!273133 () Int)

(assert (=> bs!1237605 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273133 lambda!273021))))

(declare-fun bs!1237606 () Bool)

(assert (= bs!1237606 (and b!5336371 d!1712945)))

(assert (=> bs!1237606 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273133 lambda!273099))))

(assert (=> bs!1237605 (not (= lambda!273133 lambda!273020))))

(assert (=> bs!1237605 (= (and (= (regOne!30526 r!7292) (regOne!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175943)) (= lambda!273133 lambda!273019))))

(declare-fun bs!1237607 () Bool)

(assert (= bs!1237607 (and b!5336371 b!5335397)))

(assert (=> bs!1237607 (= lambda!273133 lambda!273016)))

(assert (=> bs!1237607 (not (= lambda!273133 lambda!273015))))

(declare-fun bs!1237608 () Bool)

(assert (= bs!1237608 (and b!5336371 d!1712969)))

(assert (=> bs!1237608 (not (= lambda!273133 lambda!273113))))

(declare-fun bs!1237609 () Bool)

(assert (= bs!1237609 (and b!5336371 b!5336195)))

(assert (=> bs!1237609 (= (and (= (regOne!30526 r!7292) (regOne!30526 lt!2175943)) (= (regTwo!30526 r!7292) (regTwo!30526 lt!2175943))) (= lambda!273133 lambda!273112))))

(declare-fun bs!1237610 () Bool)

(assert (= bs!1237610 (and b!5336371 d!1713015)))

(assert (=> bs!1237610 (not (= lambda!273133 lambda!273130))))

(declare-fun bs!1237611 () Bool)

(assert (= bs!1237611 (and b!5336371 d!1712939)))

(assert (=> bs!1237611 (not (= lambda!273133 lambda!273092))))

(declare-fun bs!1237612 () Bool)

(assert (= bs!1237612 (and b!5336371 b!5336174)))

(assert (=> bs!1237612 (= (and (= (regOne!30526 r!7292) (regOne!30526 lt!2175940)) (= (regTwo!30526 r!7292) (regTwo!30526 lt!2175940))) (= lambda!273133 lambda!273109))))

(declare-fun bs!1237613 () Bool)

(assert (= bs!1237613 (and b!5336371 b!5336373)))

(assert (=> bs!1237613 (not (= lambda!273133 lambda!273132))))

(assert (=> bs!1237606 (not (= lambda!273133 lambda!273095))))

(declare-fun bs!1237614 () Bool)

(assert (= bs!1237614 (and b!5336371 b!5336176)))

(assert (=> bs!1237614 (not (= lambda!273133 lambda!273108))))

(declare-fun bs!1237615 () Bool)

(assert (= bs!1237615 (and b!5336371 d!1713013)))

(assert (=> bs!1237615 (not (= lambda!273133 lambda!273129))))

(assert (=> bs!1237605 (not (= lambda!273133 lambda!273018))))

(declare-fun bs!1237616 () Bool)

(assert (= bs!1237616 (and b!5336371 d!1712923)))

(assert (=> bs!1237616 (= (and (= (regOne!30526 r!7292) (regTwo!30526 (regOne!30526 r!7292))) (= (regTwo!30526 r!7292) lt!2175937)) (= lambda!273133 lambda!273080))))

(declare-fun bs!1237617 () Bool)

(assert (= bs!1237617 (and b!5336371 b!5336197)))

(assert (=> bs!1237617 (not (= lambda!273133 lambda!273111))))

(assert (=> bs!1237616 (not (= lambda!273133 lambda!273079))))

(assert (=> bs!1237610 (= lambda!273133 lambda!273131)))

(assert (=> b!5336371 true))

(assert (=> b!5336371 true))

(declare-fun b!5336365 () Bool)

(declare-fun e!3314018 () Bool)

(declare-fun e!3314016 () Bool)

(assert (=> b!5336365 (= e!3314018 e!3314016)))

(declare-fun res!2263465 () Bool)

(assert (=> b!5336365 (= res!2263465 (matchRSpec!2110 (regOne!30527 r!7292) s!2326))))

(assert (=> b!5336365 (=> res!2263465 e!3314016)))

(declare-fun bm!381453 () Bool)

(declare-fun c!928385 () Bool)

(declare-fun call!381459 () Bool)

(assert (=> bm!381453 (= call!381459 (Exists!2188 (ite c!928385 lambda!273132 lambda!273133)))))

(declare-fun b!5336366 () Bool)

(declare-fun c!928386 () Bool)

(assert (=> b!5336366 (= c!928386 ((_ is Union!15007) r!7292))))

(declare-fun e!3314014 () Bool)

(assert (=> b!5336366 (= e!3314014 e!3314018)))

(declare-fun b!5336367 () Bool)

(declare-fun c!928383 () Bool)

(assert (=> b!5336367 (= c!928383 ((_ is ElementMatch!15007) r!7292))))

(declare-fun e!3314017 () Bool)

(assert (=> b!5336367 (= e!3314017 e!3314014)))

(declare-fun b!5336368 () Bool)

(declare-fun res!2263467 () Bool)

(declare-fun e!3314015 () Bool)

(assert (=> b!5336368 (=> res!2263467 e!3314015)))

(declare-fun call!381458 () Bool)

(assert (=> b!5336368 (= res!2263467 call!381458)))

(declare-fun e!3314019 () Bool)

(assert (=> b!5336368 (= e!3314019 e!3314015)))

(declare-fun bm!381454 () Bool)

(assert (=> bm!381454 (= call!381458 (isEmpty!33171 s!2326))))

(declare-fun b!5336369 () Bool)

(declare-fun e!3314020 () Bool)

(assert (=> b!5336369 (= e!3314020 call!381458)))

(declare-fun d!1713029 () Bool)

(declare-fun c!928384 () Bool)

(assert (=> d!1713029 (= c!928384 ((_ is EmptyExpr!15007) r!7292))))

(assert (=> d!1713029 (= (matchRSpec!2110 r!7292 s!2326) e!3314020)))

(declare-fun b!5336370 () Bool)

(assert (=> b!5336370 (= e!3314020 e!3314017)))

(declare-fun res!2263466 () Bool)

(assert (=> b!5336370 (= res!2263466 (not ((_ is EmptyLang!15007) r!7292)))))

(assert (=> b!5336370 (=> (not res!2263466) (not e!3314017))))

(assert (=> b!5336371 (= e!3314019 call!381459)))

(declare-fun b!5336372 () Bool)

(assert (=> b!5336372 (= e!3314016 (matchRSpec!2110 (regTwo!30527 r!7292) s!2326))))

(assert (=> b!5336373 (= e!3314015 call!381459)))

(declare-fun b!5336374 () Bool)

(assert (=> b!5336374 (= e!3314018 e!3314019)))

(assert (=> b!5336374 (= c!928385 ((_ is Star!15007) r!7292))))

(declare-fun b!5336375 () Bool)

(assert (=> b!5336375 (= e!3314014 (= s!2326 (Cons!61196 (c!928081 r!7292) Nil!61196)))))

(assert (= (and d!1713029 c!928384) b!5336369))

(assert (= (and d!1713029 (not c!928384)) b!5336370))

(assert (= (and b!5336370 res!2263466) b!5336367))

(assert (= (and b!5336367 c!928383) b!5336375))

(assert (= (and b!5336367 (not c!928383)) b!5336366))

(assert (= (and b!5336366 c!928386) b!5336365))

(assert (= (and b!5336366 (not c!928386)) b!5336374))

(assert (= (and b!5336365 (not res!2263465)) b!5336372))

(assert (= (and b!5336374 c!928385) b!5336368))

(assert (= (and b!5336374 (not c!928385)) b!5336371))

(assert (= (and b!5336368 (not res!2263467)) b!5336373))

(assert (= (or b!5336373 b!5336371) bm!381453))

(assert (= (or b!5336369 b!5336368) bm!381454))

(declare-fun m!6369306 () Bool)

(assert (=> b!5336365 m!6369306))

(declare-fun m!6369308 () Bool)

(assert (=> bm!381453 m!6369308))

(assert (=> bm!381454 m!6369110))

(declare-fun m!6369310 () Bool)

(assert (=> b!5336372 m!6369310))

(assert (=> b!5335416 d!1713029))

(declare-fun b!5336376 () Bool)

(declare-fun e!3314025 () Bool)

(declare-fun e!3314024 () Bool)

(assert (=> b!5336376 (= e!3314025 e!3314024)))

(declare-fun res!2263468 () Bool)

(assert (=> b!5336376 (=> res!2263468 e!3314024)))

(declare-fun call!381460 () Bool)

(assert (=> b!5336376 (= res!2263468 call!381460)))

(declare-fun b!5336377 () Bool)

(declare-fun res!2263471 () Bool)

(declare-fun e!3314027 () Bool)

(assert (=> b!5336377 (=> res!2263471 e!3314027)))

(declare-fun e!3314021 () Bool)

(assert (=> b!5336377 (= res!2263471 e!3314021)))

(declare-fun res!2263473 () Bool)

(assert (=> b!5336377 (=> (not res!2263473) (not e!3314021))))

(declare-fun lt!2176133 () Bool)

(assert (=> b!5336377 (= res!2263473 lt!2176133)))

(declare-fun b!5336378 () Bool)

(declare-fun e!3314022 () Bool)

(assert (=> b!5336378 (= e!3314022 (nullable!5176 r!7292))))

(declare-fun b!5336379 () Bool)

(assert (=> b!5336379 (= e!3314024 (not (= (head!11439 s!2326) (c!928081 r!7292))))))

(declare-fun b!5336380 () Bool)

(declare-fun e!3314023 () Bool)

(assert (=> b!5336380 (= e!3314023 (= lt!2176133 call!381460))))

(declare-fun b!5336381 () Bool)

(assert (=> b!5336381 (= e!3314021 (= (head!11439 s!2326) (c!928081 r!7292)))))

(declare-fun bm!381455 () Bool)

(assert (=> bm!381455 (= call!381460 (isEmpty!33171 s!2326))))

(declare-fun b!5336382 () Bool)

(declare-fun res!2263475 () Bool)

(assert (=> b!5336382 (=> res!2263475 e!3314024)))

(assert (=> b!5336382 (= res!2263475 (not (isEmpty!33171 (tail!10536 s!2326))))))

(declare-fun b!5336383 () Bool)

(declare-fun res!2263472 () Bool)

(assert (=> b!5336383 (=> res!2263472 e!3314027)))

(assert (=> b!5336383 (= res!2263472 (not ((_ is ElementMatch!15007) r!7292)))))

(declare-fun e!3314026 () Bool)

(assert (=> b!5336383 (= e!3314026 e!3314027)))

(declare-fun d!1713031 () Bool)

(assert (=> d!1713031 e!3314023))

(declare-fun c!928387 () Bool)

(assert (=> d!1713031 (= c!928387 ((_ is EmptyExpr!15007) r!7292))))

(assert (=> d!1713031 (= lt!2176133 e!3314022)))

(declare-fun c!928388 () Bool)

(assert (=> d!1713031 (= c!928388 (isEmpty!33171 s!2326))))

(assert (=> d!1713031 (validRegex!6743 r!7292)))

(assert (=> d!1713031 (= (matchR!7192 r!7292 s!2326) lt!2176133)))

(declare-fun b!5336384 () Bool)

(declare-fun res!2263474 () Bool)

(assert (=> b!5336384 (=> (not res!2263474) (not e!3314021))))

(assert (=> b!5336384 (= res!2263474 (isEmpty!33171 (tail!10536 s!2326)))))

(declare-fun b!5336385 () Bool)

(assert (=> b!5336385 (= e!3314027 e!3314025)))

(declare-fun res!2263469 () Bool)

(assert (=> b!5336385 (=> (not res!2263469) (not e!3314025))))

(assert (=> b!5336385 (= res!2263469 (not lt!2176133))))

(declare-fun b!5336386 () Bool)

(declare-fun res!2263470 () Bool)

(assert (=> b!5336386 (=> (not res!2263470) (not e!3314021))))

(assert (=> b!5336386 (= res!2263470 (not call!381460))))

(declare-fun b!5336387 () Bool)

(assert (=> b!5336387 (= e!3314023 e!3314026)))

(declare-fun c!928389 () Bool)

(assert (=> b!5336387 (= c!928389 ((_ is EmptyLang!15007) r!7292))))

(declare-fun b!5336388 () Bool)

(assert (=> b!5336388 (= e!3314026 (not lt!2176133))))

(declare-fun b!5336389 () Bool)

(assert (=> b!5336389 (= e!3314022 (matchR!7192 (derivativeStep!4181 r!7292 (head!11439 s!2326)) (tail!10536 s!2326)))))

(assert (= (and d!1713031 c!928388) b!5336378))

(assert (= (and d!1713031 (not c!928388)) b!5336389))

(assert (= (and d!1713031 c!928387) b!5336380))

(assert (= (and d!1713031 (not c!928387)) b!5336387))

(assert (= (and b!5336387 c!928389) b!5336388))

(assert (= (and b!5336387 (not c!928389)) b!5336383))

(assert (= (and b!5336383 (not res!2263472)) b!5336377))

(assert (= (and b!5336377 res!2263473) b!5336386))

(assert (= (and b!5336386 res!2263470) b!5336384))

(assert (= (and b!5336384 res!2263474) b!5336381))

(assert (= (and b!5336377 (not res!2263471)) b!5336385))

(assert (= (and b!5336385 res!2263469) b!5336376))

(assert (= (and b!5336376 (not res!2263468)) b!5336382))

(assert (= (and b!5336382 (not res!2263475)) b!5336379))

(assert (= (or b!5336380 b!5336376 b!5336386) bm!381455))

(assert (=> bm!381455 m!6369110))

(assert (=> b!5336379 m!6369142))

(assert (=> b!5336389 m!6369142))

(assert (=> b!5336389 m!6369142))

(declare-fun m!6369312 () Bool)

(assert (=> b!5336389 m!6369312))

(assert (=> b!5336389 m!6369146))

(assert (=> b!5336389 m!6369312))

(assert (=> b!5336389 m!6369146))

(declare-fun m!6369314 () Bool)

(assert (=> b!5336389 m!6369314))

(assert (=> b!5336382 m!6369146))

(assert (=> b!5336382 m!6369146))

(assert (=> b!5336382 m!6369150))

(assert (=> b!5336384 m!6369146))

(assert (=> b!5336384 m!6369146))

(assert (=> b!5336384 m!6369150))

(assert (=> b!5336381 m!6369142))

(declare-fun m!6369316 () Bool)

(assert (=> b!5336378 m!6369316))

(assert (=> d!1713031 m!6369110))

(assert (=> d!1713031 m!6368316))

(assert (=> b!5335416 d!1713031))

(declare-fun d!1713033 () Bool)

(assert (=> d!1713033 (= (matchR!7192 r!7292 s!2326) (matchRSpec!2110 r!7292 s!2326))))

(declare-fun lt!2176134 () Unit!153546)

(assert (=> d!1713033 (= lt!2176134 (choose!39974 r!7292 s!2326))))

(assert (=> d!1713033 (validRegex!6743 r!7292)))

(assert (=> d!1713033 (= (mainMatchTheorem!2110 r!7292 s!2326) lt!2176134)))

(declare-fun bs!1237618 () Bool)

(assert (= bs!1237618 d!1713033))

(assert (=> bs!1237618 m!6368400))

(assert (=> bs!1237618 m!6368398))

(declare-fun m!6369318 () Bool)

(assert (=> bs!1237618 m!6369318))

(assert (=> bs!1237618 m!6368316))

(assert (=> b!5335416 d!1713033))

(declare-fun b!5336397 () Bool)

(declare-fun e!3314033 () Bool)

(declare-fun tp!1484344 () Bool)

(assert (=> b!5336397 (= e!3314033 tp!1484344)))

(declare-fun e!3314032 () Bool)

(declare-fun tp!1484345 () Bool)

(declare-fun b!5336396 () Bool)

(assert (=> b!5336396 (= e!3314032 (and (inv!80764 (h!67646 (t!374539 zl!343))) e!3314033 tp!1484345))))

(assert (=> b!5335421 (= tp!1484278 e!3314032)))

(assert (= b!5336396 b!5336397))

(assert (= (and b!5335421 ((_ is Cons!61198) (t!374539 zl!343))) b!5336396))

(declare-fun m!6369320 () Bool)

(assert (=> b!5336396 m!6369320))

(declare-fun b!5336411 () Bool)

(declare-fun e!3314036 () Bool)

(declare-fun tp!1484357 () Bool)

(declare-fun tp!1484359 () Bool)

(assert (=> b!5336411 (= e!3314036 (and tp!1484357 tp!1484359))))

(declare-fun b!5336409 () Bool)

(declare-fun tp!1484358 () Bool)

(declare-fun tp!1484356 () Bool)

(assert (=> b!5336409 (= e!3314036 (and tp!1484358 tp!1484356))))

(declare-fun b!5336408 () Bool)

(assert (=> b!5336408 (= e!3314036 tp_is_empty!39267)))

(assert (=> b!5335410 (= tp!1484280 e!3314036)))

(declare-fun b!5336410 () Bool)

(declare-fun tp!1484360 () Bool)

(assert (=> b!5336410 (= e!3314036 tp!1484360)))

(assert (= (and b!5335410 ((_ is ElementMatch!15007) (reg!15336 r!7292))) b!5336408))

(assert (= (and b!5335410 ((_ is Concat!23852) (reg!15336 r!7292))) b!5336409))

(assert (= (and b!5335410 ((_ is Star!15007) (reg!15336 r!7292))) b!5336410))

(assert (= (and b!5335410 ((_ is Union!15007) (reg!15336 r!7292))) b!5336411))

(declare-fun condSetEmpty!34417 () Bool)

(assert (=> setNonEmpty!34411 (= condSetEmpty!34417 (= setRest!34411 ((as const (Array Context!8782 Bool)) false)))))

(declare-fun setRes!34417 () Bool)

(assert (=> setNonEmpty!34411 (= tp!1484272 setRes!34417)))

(declare-fun setIsEmpty!34417 () Bool)

(assert (=> setIsEmpty!34417 setRes!34417))

(declare-fun e!3314039 () Bool)

(declare-fun setElem!34417 () Context!8782)

(declare-fun tp!1484365 () Bool)

(declare-fun setNonEmpty!34417 () Bool)

(assert (=> setNonEmpty!34417 (= setRes!34417 (and tp!1484365 (inv!80764 setElem!34417) e!3314039))))

(declare-fun setRest!34417 () (InoxSet Context!8782))

(assert (=> setNonEmpty!34417 (= setRest!34411 ((_ map or) (store ((as const (Array Context!8782 Bool)) false) setElem!34417 true) setRest!34417))))

(declare-fun b!5336416 () Bool)

(declare-fun tp!1484366 () Bool)

(assert (=> b!5336416 (= e!3314039 tp!1484366)))

(assert (= (and setNonEmpty!34411 condSetEmpty!34417) setIsEmpty!34417))

(assert (= (and setNonEmpty!34411 (not condSetEmpty!34417)) setNonEmpty!34417))

(assert (= setNonEmpty!34417 b!5336416))

(declare-fun m!6369322 () Bool)

(assert (=> setNonEmpty!34417 m!6369322))

(declare-fun b!5336421 () Bool)

(declare-fun e!3314042 () Bool)

(declare-fun tp!1484369 () Bool)

(assert (=> b!5336421 (= e!3314042 (and tp_is_empty!39267 tp!1484369))))

(assert (=> b!5335404 (= tp!1484274 e!3314042)))

(assert (= (and b!5335404 ((_ is Cons!61196) (t!374537 s!2326))) b!5336421))

(declare-fun b!5336425 () Bool)

(declare-fun e!3314043 () Bool)

(declare-fun tp!1484371 () Bool)

(declare-fun tp!1484373 () Bool)

(assert (=> b!5336425 (= e!3314043 (and tp!1484371 tp!1484373))))

(declare-fun b!5336423 () Bool)

(declare-fun tp!1484372 () Bool)

(declare-fun tp!1484370 () Bool)

(assert (=> b!5336423 (= e!3314043 (and tp!1484372 tp!1484370))))

(declare-fun b!5336422 () Bool)

(assert (=> b!5336422 (= e!3314043 tp_is_empty!39267)))

(assert (=> b!5335389 (= tp!1484281 e!3314043)))

(declare-fun b!5336424 () Bool)

(declare-fun tp!1484374 () Bool)

(assert (=> b!5336424 (= e!3314043 tp!1484374)))

(assert (= (and b!5335389 ((_ is ElementMatch!15007) (regOne!30526 r!7292))) b!5336422))

(assert (= (and b!5335389 ((_ is Concat!23852) (regOne!30526 r!7292))) b!5336423))

(assert (= (and b!5335389 ((_ is Star!15007) (regOne!30526 r!7292))) b!5336424))

(assert (= (and b!5335389 ((_ is Union!15007) (regOne!30526 r!7292))) b!5336425))

(declare-fun b!5336429 () Bool)

(declare-fun e!3314044 () Bool)

(declare-fun tp!1484376 () Bool)

(declare-fun tp!1484378 () Bool)

(assert (=> b!5336429 (= e!3314044 (and tp!1484376 tp!1484378))))

(declare-fun b!5336427 () Bool)

(declare-fun tp!1484377 () Bool)

(declare-fun tp!1484375 () Bool)

(assert (=> b!5336427 (= e!3314044 (and tp!1484377 tp!1484375))))

(declare-fun b!5336426 () Bool)

(assert (=> b!5336426 (= e!3314044 tp_is_empty!39267)))

(assert (=> b!5335389 (= tp!1484276 e!3314044)))

(declare-fun b!5336428 () Bool)

(declare-fun tp!1484379 () Bool)

(assert (=> b!5336428 (= e!3314044 tp!1484379)))

(assert (= (and b!5335389 ((_ is ElementMatch!15007) (regTwo!30526 r!7292))) b!5336426))

(assert (= (and b!5335389 ((_ is Concat!23852) (regTwo!30526 r!7292))) b!5336427))

(assert (= (and b!5335389 ((_ is Star!15007) (regTwo!30526 r!7292))) b!5336428))

(assert (= (and b!5335389 ((_ is Union!15007) (regTwo!30526 r!7292))) b!5336429))

(declare-fun b!5336434 () Bool)

(declare-fun e!3314047 () Bool)

(declare-fun tp!1484384 () Bool)

(declare-fun tp!1484385 () Bool)

(assert (=> b!5336434 (= e!3314047 (and tp!1484384 tp!1484385))))

(assert (=> b!5335402 (= tp!1484273 e!3314047)))

(assert (= (and b!5335402 ((_ is Cons!61197) (exprs!4891 (h!67646 zl!343)))) b!5336434))

(declare-fun b!5336435 () Bool)

(declare-fun e!3314048 () Bool)

(declare-fun tp!1484386 () Bool)

(declare-fun tp!1484387 () Bool)

(assert (=> b!5336435 (= e!3314048 (and tp!1484386 tp!1484387))))

(assert (=> b!5335387 (= tp!1484275 e!3314048)))

(assert (= (and b!5335387 ((_ is Cons!61197) (exprs!4891 setElem!34411))) b!5336435))

(declare-fun b!5336439 () Bool)

(declare-fun e!3314049 () Bool)

(declare-fun tp!1484389 () Bool)

(declare-fun tp!1484391 () Bool)

(assert (=> b!5336439 (= e!3314049 (and tp!1484389 tp!1484391))))

(declare-fun b!5336437 () Bool)

(declare-fun tp!1484390 () Bool)

(declare-fun tp!1484388 () Bool)

(assert (=> b!5336437 (= e!3314049 (and tp!1484390 tp!1484388))))

(declare-fun b!5336436 () Bool)

(assert (=> b!5336436 (= e!3314049 tp_is_empty!39267)))

(assert (=> b!5335417 (= tp!1484277 e!3314049)))

(declare-fun b!5336438 () Bool)

(declare-fun tp!1484392 () Bool)

(assert (=> b!5336438 (= e!3314049 tp!1484392)))

(assert (= (and b!5335417 ((_ is ElementMatch!15007) (regOne!30527 r!7292))) b!5336436))

(assert (= (and b!5335417 ((_ is Concat!23852) (regOne!30527 r!7292))) b!5336437))

(assert (= (and b!5335417 ((_ is Star!15007) (regOne!30527 r!7292))) b!5336438))

(assert (= (and b!5335417 ((_ is Union!15007) (regOne!30527 r!7292))) b!5336439))

(declare-fun b!5336443 () Bool)

(declare-fun e!3314050 () Bool)

(declare-fun tp!1484394 () Bool)

(declare-fun tp!1484396 () Bool)

(assert (=> b!5336443 (= e!3314050 (and tp!1484394 tp!1484396))))

(declare-fun b!5336441 () Bool)

(declare-fun tp!1484395 () Bool)

(declare-fun tp!1484393 () Bool)

(assert (=> b!5336441 (= e!3314050 (and tp!1484395 tp!1484393))))

(declare-fun b!5336440 () Bool)

(assert (=> b!5336440 (= e!3314050 tp_is_empty!39267)))

(assert (=> b!5335417 (= tp!1484279 e!3314050)))

(declare-fun b!5336442 () Bool)

(declare-fun tp!1484397 () Bool)

(assert (=> b!5336442 (= e!3314050 tp!1484397)))

(assert (= (and b!5335417 ((_ is ElementMatch!15007) (regTwo!30527 r!7292))) b!5336440))

(assert (= (and b!5335417 ((_ is Concat!23852) (regTwo!30527 r!7292))) b!5336441))

(assert (= (and b!5335417 ((_ is Star!15007) (regTwo!30527 r!7292))) b!5336442))

(assert (= (and b!5335417 ((_ is Union!15007) (regTwo!30527 r!7292))) b!5336443))

(declare-fun b_lambda!205153 () Bool)

(assert (= b_lambda!205143 (or b!5335403 b_lambda!205153)))

(declare-fun bs!1237619 () Bool)

(declare-fun d!1713035 () Bool)

(assert (= bs!1237619 (and d!1713035 b!5335403)))

(assert (=> bs!1237619 (= (dynLambda!24202 lambda!273017 (h!67646 zl!343)) (derivationStepZipperUp!379 (h!67646 zl!343) (h!67644 s!2326)))))

(assert (=> bs!1237619 m!6368416))

(assert (=> d!1712881 d!1713035))

(declare-fun b_lambda!205155 () Bool)

(assert (= b_lambda!205151 (or b!5335403 b_lambda!205155)))

(declare-fun bs!1237620 () Bool)

(declare-fun d!1713037 () Bool)

(assert (= bs!1237620 (and d!1713037 b!5335403)))

(assert (=> bs!1237620 (= (dynLambda!24202 lambda!273017 lt!2175932) (derivationStepZipperUp!379 lt!2175932 (h!67644 s!2326)))))

(assert (=> bs!1237620 m!6368322))

(assert (=> d!1712995 d!1713037))

(check-sat (not d!1712931) (not d!1712889) (not b!5336245) (not b!5336305) (not b!5336004) (not b!5336396) (not b!5335738) (not d!1712829) (not d!1713005) (not b!5336435) (not b!5336421) (not b!5336372) (not d!1713033) (not d!1713031) (not b!5336443) (not b!5335672) (not b!5336389) (not bm!381392) (not d!1712799) (not b!5336168) (not b!5336283) (not b!5336016) (not b!5335656) (not b!5336013) (not d!1712945) (not b!5336186) (not b!5336008) (not b!5336312) (not b!5336267) (not b!5336251) (not d!1712917) (not b!5336002) (not d!1712969) (not b!5335710) (not b!5336311) (not d!1712785) (not d!1712923) (not bm!381440) (not bm!381453) (not b_lambda!205155) (not b!5336249) (not b!5336017) (not b!5336439) (not b!5336196) (not bm!381433) (not b!5336314) (not b!5335883) (not b!5336341) (not d!1713007) (not b!5336416) (not b!5336181) (not b!5336363) (not b!5336244) (not bm!381408) (not b!5336350) (not b!5336230) (not b!5336425) (not b!5336134) (not d!1712913) (not b!5336189) (not bs!1237620) (not b!5336397) (not b!5335652) (not bm!381434) (not b!5335854) (not b!5335944) (not d!1713013) (not b!5336317) (not b!5336135) (not d!1712783) (not b!5335943) (not b!5336442) (not b!5335648) (not d!1712979) (not d!1712971) (not b!5335858) (not b!5335707) (not b!5335708) (not b!5336127) (not bm!381426) (not b!5335859) (not d!1712935) (not setNonEmpty!34417) (not b!5335711) (not b!5336128) (not b!5336014) (not d!1712787) (not d!1712809) (not bm!381437) (not b!5336296) (not b!5336132) (not d!1712997) (not b!5336252) (not bm!381454) (not b!5336382) (not b!5336438) (not b!5335882) (not b!5336427) (not b!5335709) (not d!1713009) (not b!5336265) (not b!5336259) (not bm!381389) (not b!5335706) (not b!5336175) (not b!5336003) (not b!5336005) (not b!5336262) (not d!1713015) (not b!5336361) (not b!5336015) (not b!5336410) (not d!1712811) (not b!5336243) (not b!5336234) (not d!1712991) (not b!5336254) (not b!5335728) (not b!5335939) (not d!1712919) (not d!1712895) (not d!1713017) (not b!5336307) (not b!5335946) (not b!5336277) (not d!1712801) (not d!1712977) (not b!5335739) (not b!5336184) (not b!5336241) (not d!1712995) (not b!5336233) (not bm!381427) (not b!5335653) (not bm!381450) (not b!5336434) (not bm!381405) (not d!1712891) (not d!1712981) (not d!1712873) (not bm!381438) (not b!5336018) (not b!5335941) (not d!1712965) (not d!1712807) (not bm!381428) (not b!5336268) (not b!5336379) (not b!5336261) (not b!5336423) (not b!5335881) (not d!1712973) (not bm!381455) (not bm!381390) (not b!5335877) (not bm!381452) (not d!1712985) (not b!5336378) (not d!1712983) (not bm!381432) (not b!5336384) (not d!1712949) (not b!5336260) (not bm!381429) (not b!5336001) (not b!5336319) (not d!1712975) (not b!5336381) (not d!1712939) (not b!5336424) (not b!5336231) (not d!1712881) (not b!5336365) (not b!5335650) (not b!5336006) (not b!5336180) (not b!5336429) tp_is_empty!39267 (not b!5335940) (not b!5336287) (not b!5336179) (not b!5335863) (not b!5336313) (not b!5336441) (not b!5336282) (not bm!381447) (not d!1712933) (not d!1712897) (not b_lambda!205153) (not b!5336129) (not b!5336275) (not bm!381449) (not d!1712943) (not d!1713011) (not b!5336320) (not b!5336437) (not b!5336248) (not b!5336236) (not b!5336428) (not d!1712921) (not bm!381406) (not b!5336409) (not d!1712805) (not b!5335942) (not b!5336020) (not b!5335654) (not b!5336411) (not bs!1237619) (not b!5336183) (not b!5335649) (not b!5336182) (not b!5335808) (not b!5336242) (not b!5336280))
(check-sat)
