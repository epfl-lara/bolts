; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!614850 () Bool)

(assert start!614850)

(declare-fun b!6155370 () Bool)

(assert (=> b!6155370 true))

(assert (=> b!6155370 true))

(declare-fun lambda!335788 () Int)

(declare-fun lambda!335787 () Int)

(assert (=> b!6155370 (not (= lambda!335788 lambda!335787))))

(assert (=> b!6155370 true))

(assert (=> b!6155370 true))

(declare-fun b!6155358 () Bool)

(assert (=> b!6155358 true))

(declare-fun b!6155352 () Bool)

(declare-fun e!3750500 () Bool)

(declare-datatypes ((C!32468 0))(
  ( (C!32469 (val!25936 Int)) )
))
(declare-datatypes ((Regex!16099 0))(
  ( (ElementMatch!16099 (c!1108140 C!32468)) (Concat!24944 (regOne!32710 Regex!16099) (regTwo!32710 Regex!16099)) (EmptyExpr!16099) (Star!16099 (reg!16428 Regex!16099)) (EmptyLang!16099) (Union!16099 (regOne!32711 Regex!16099) (regTwo!32711 Regex!16099)) )
))
(declare-datatypes ((List!64596 0))(
  ( (Nil!64472) (Cons!64472 (h!70920 Regex!16099) (t!378088 List!64596)) )
))
(declare-datatypes ((Context!10966 0))(
  ( (Context!10967 (exprs!5983 List!64596)) )
))
(declare-fun lt!2335134 () Context!10966)

(declare-fun inv!83494 (Context!10966) Bool)

(assert (=> b!6155352 (= e!3750500 (inv!83494 lt!2335134))))

(declare-fun b!6155353 () Bool)

(declare-fun res!2549395 () Bool)

(declare-fun e!3750505 () Bool)

(assert (=> b!6155353 (=> res!2549395 e!3750505)))

(declare-datatypes ((List!64597 0))(
  ( (Nil!64473) (Cons!64473 (h!70921 Context!10966) (t!378089 List!64597)) )
))
(declare-fun zl!343 () List!64597)

(get-info :version)

(assert (=> b!6155353 (= res!2549395 (not ((_ is Cons!64472) (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155354 () Bool)

(declare-fun e!3750504 () Bool)

(declare-fun tp!1719082 () Bool)

(declare-fun tp!1719081 () Bool)

(assert (=> b!6155354 (= e!3750504 (and tp!1719082 tp!1719081))))

(declare-fun b!6155355 () Bool)

(declare-fun e!3750497 () Bool)

(declare-fun e!3750492 () Bool)

(assert (=> b!6155355 (= e!3750497 e!3750492)))

(declare-fun res!2549402 () Bool)

(assert (=> b!6155355 (=> res!2549402 e!3750492)))

(declare-fun e!3750493 () Bool)

(assert (=> b!6155355 (= res!2549402 e!3750493)))

(declare-fun res!2549396 () Bool)

(assert (=> b!6155355 (=> (not res!2549396) (not e!3750493))))

(declare-datatypes ((List!64598 0))(
  ( (Nil!64474) (Cons!64474 (h!70922 C!32468) (t!378090 List!64598)) )
))
(declare-fun s!2326 () List!64598)

(declare-fun lt!2335130 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2335127 () (InoxSet Context!10966))

(declare-fun matchZipper!2111 ((InoxSet Context!10966) List!64598) Bool)

(assert (=> b!6155355 (= res!2549396 (not (= (matchZipper!2111 lt!2335127 (t!378090 s!2326)) lt!2335130)))))

(declare-fun lt!2335136 () (InoxSet Context!10966))

(declare-fun e!3750491 () Bool)

(assert (=> b!6155355 (= (matchZipper!2111 lt!2335136 (t!378090 s!2326)) e!3750491)))

(declare-fun res!2549410 () Bool)

(assert (=> b!6155355 (=> res!2549410 e!3750491)))

(assert (=> b!6155355 (= res!2549410 lt!2335130)))

(declare-fun lt!2335135 () (InoxSet Context!10966))

(assert (=> b!6155355 (= lt!2335130 (matchZipper!2111 lt!2335135 (t!378090 s!2326)))))

(declare-datatypes ((Unit!157573 0))(
  ( (Unit!157574) )
))
(declare-fun lt!2335120 () Unit!157573)

(declare-fun lt!2335133 () (InoxSet Context!10966))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!930 ((InoxSet Context!10966) (InoxSet Context!10966) List!64598) Unit!157573)

(assert (=> b!6155355 (= lt!2335120 (lemmaZipperConcatMatchesSameAsBothZippers!930 lt!2335135 lt!2335133 (t!378090 s!2326)))))

(declare-fun res!2549400 () Bool)

(declare-fun e!3750494 () Bool)

(assert (=> start!614850 (=> (not res!2549400) (not e!3750494))))

(declare-fun r!7292 () Regex!16099)

(declare-fun validRegex!7835 (Regex!16099) Bool)

(assert (=> start!614850 (= res!2549400 (validRegex!7835 r!7292))))

(assert (=> start!614850 e!3750494))

(assert (=> start!614850 e!3750504))

(declare-fun condSetEmpty!41694 () Bool)

(declare-fun z!1189 () (InoxSet Context!10966))

(assert (=> start!614850 (= condSetEmpty!41694 (= z!1189 ((as const (Array Context!10966 Bool)) false)))))

(declare-fun setRes!41694 () Bool)

(assert (=> start!614850 setRes!41694))

(declare-fun e!3750495 () Bool)

(assert (=> start!614850 e!3750495))

(declare-fun e!3750502 () Bool)

(assert (=> start!614850 e!3750502))

(declare-fun b!6155356 () Bool)

(declare-fun res!2549401 () Bool)

(assert (=> b!6155356 (=> res!2549401 e!3750505)))

(declare-fun generalisedConcat!1696 (List!64596) Regex!16099)

(assert (=> b!6155356 (= res!2549401 (not (= r!7292 (generalisedConcat!1696 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6155357 () Bool)

(declare-fun res!2549398 () Bool)

(assert (=> b!6155357 (=> (not res!2549398) (not e!3750494))))

(declare-fun toList!9883 ((InoxSet Context!10966)) List!64597)

(assert (=> b!6155357 (= res!2549398 (= (toList!9883 z!1189) zl!343))))

(declare-fun e!3750503 () Bool)

(declare-fun e!3750506 () Bool)

(assert (=> b!6155358 (= e!3750503 e!3750506)))

(declare-fun res!2549406 () Bool)

(assert (=> b!6155358 (=> res!2549406 e!3750506)))

(assert (=> b!6155358 (= res!2549406 (or (and ((_ is ElementMatch!16099) (regOne!32710 r!7292)) (= (c!1108140 (regOne!32710 r!7292)) (h!70922 s!2326))) (not ((_ is Union!16099) (regOne!32710 r!7292)))))))

(declare-fun lt!2335113 () Unit!157573)

(declare-fun e!3750490 () Unit!157573)

(assert (=> b!6155358 (= lt!2335113 e!3750490)))

(declare-fun c!1108138 () Bool)

(declare-fun nullable!6092 (Regex!16099) Bool)

(assert (=> b!6155358 (= c!1108138 (nullable!6092 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun lambda!335789 () Int)

(declare-fun flatMap!1604 ((InoxSet Context!10966) Int) (InoxSet Context!10966))

(declare-fun derivationStepZipperUp!1273 (Context!10966 C!32468) (InoxSet Context!10966))

(assert (=> b!6155358 (= (flatMap!1604 z!1189 lambda!335789) (derivationStepZipperUp!1273 (h!70921 zl!343) (h!70922 s!2326)))))

(declare-fun lt!2335124 () Unit!157573)

(declare-fun lemmaFlatMapOnSingletonSet!1130 ((InoxSet Context!10966) Context!10966 Int) Unit!157573)

(assert (=> b!6155358 (= lt!2335124 (lemmaFlatMapOnSingletonSet!1130 z!1189 (h!70921 zl!343) lambda!335789))))

(declare-fun lt!2335111 () (InoxSet Context!10966))

(assert (=> b!6155358 (= lt!2335111 (derivationStepZipperUp!1273 lt!2335134 (h!70922 s!2326)))))

(declare-fun derivationStepZipperDown!1347 (Regex!16099 Context!10966 C!32468) (InoxSet Context!10966))

(assert (=> b!6155358 (= lt!2335127 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (h!70921 zl!343))) lt!2335134 (h!70922 s!2326)))))

(assert (=> b!6155358 (= lt!2335134 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun lt!2335115 () (InoxSet Context!10966))

(assert (=> b!6155358 (= lt!2335115 (derivationStepZipperUp!1273 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))) (h!70922 s!2326)))))

(declare-fun b!6155359 () Bool)

(declare-fun res!2549408 () Bool)

(assert (=> b!6155359 (=> res!2549408 e!3750503)))

(declare-fun isEmpty!36436 (List!64596) Bool)

(assert (=> b!6155359 (= res!2549408 (isEmpty!36436 (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155360 () Bool)

(declare-fun e!3750496 () Bool)

(assert (=> b!6155360 (= e!3750496 (matchZipper!2111 lt!2335111 (t!378090 s!2326)))))

(declare-fun b!6155361 () Bool)

(declare-fun tp_is_empty!41451 () Bool)

(declare-fun tp!1719077 () Bool)

(assert (=> b!6155361 (= e!3750502 (and tp_is_empty!41451 tp!1719077))))

(declare-fun b!6155362 () Bool)

(declare-fun tp!1719086 () Bool)

(assert (=> b!6155362 (= e!3750504 tp!1719086)))

(declare-fun b!6155363 () Bool)

(declare-fun e!3750499 () Unit!157573)

(declare-fun Unit!157575 () Unit!157573)

(assert (=> b!6155363 (= e!3750499 Unit!157575)))

(declare-fun lt!2335116 () Unit!157573)

(assert (=> b!6155363 (= lt!2335116 (lemmaZipperConcatMatchesSameAsBothZippers!930 lt!2335135 lt!2335111 (t!378090 s!2326)))))

(declare-fun res!2549397 () Bool)

(assert (=> b!6155363 (= res!2549397 lt!2335130)))

(assert (=> b!6155363 (=> res!2549397 e!3750496)))

(assert (=> b!6155363 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335111) (t!378090 s!2326)) e!3750496)))

(declare-fun b!6155364 () Bool)

(declare-fun e!3750501 () Bool)

(assert (=> b!6155364 (= e!3750501 (matchZipper!2111 lt!2335111 (t!378090 s!2326)))))

(declare-fun b!6155365 () Bool)

(declare-fun res!2549412 () Bool)

(assert (=> b!6155365 (=> res!2549412 e!3750505)))

(declare-fun generalisedUnion!1943 (List!64596) Regex!16099)

(declare-fun unfocusZipperList!1520 (List!64597) List!64596)

(assert (=> b!6155365 (= res!2549412 (not (= r!7292 (generalisedUnion!1943 (unfocusZipperList!1520 zl!343)))))))

(declare-fun b!6155366 () Bool)

(declare-fun Unit!157576 () Unit!157573)

(assert (=> b!6155366 (= e!3750490 Unit!157576)))

(declare-fun b!6155367 () Bool)

(declare-fun res!2549413 () Bool)

(assert (=> b!6155367 (=> res!2549413 e!3750505)))

(declare-fun isEmpty!36437 (List!64597) Bool)

(assert (=> b!6155367 (= res!2549413 (not (isEmpty!36437 (t!378089 zl!343))))))

(declare-fun b!6155368 () Bool)

(declare-fun Unit!157577 () Unit!157573)

(assert (=> b!6155368 (= e!3750490 Unit!157577)))

(declare-fun lt!2335128 () Unit!157573)

(assert (=> b!6155368 (= lt!2335128 (lemmaZipperConcatMatchesSameAsBothZippers!930 lt!2335127 lt!2335111 (t!378090 s!2326)))))

(declare-fun res!2549403 () Bool)

(assert (=> b!6155368 (= res!2549403 (matchZipper!2111 lt!2335127 (t!378090 s!2326)))))

(assert (=> b!6155368 (=> res!2549403 e!3750501)))

(assert (=> b!6155368 (= (matchZipper!2111 ((_ map or) lt!2335127 lt!2335111) (t!378090 s!2326)) e!3750501)))

(declare-fun b!6155369 () Bool)

(assert (=> b!6155369 (= e!3750506 e!3750497)))

(declare-fun res!2549407 () Bool)

(assert (=> b!6155369 (=> res!2549407 e!3750497)))

(assert (=> b!6155369 (= res!2549407 (not (= lt!2335127 lt!2335136)))))

(assert (=> b!6155369 (= lt!2335136 ((_ map or) lt!2335135 lt!2335133))))

(assert (=> b!6155369 (= lt!2335133 (derivationStepZipperDown!1347 (regTwo!32711 (regOne!32710 r!7292)) lt!2335134 (h!70922 s!2326)))))

(assert (=> b!6155369 (= lt!2335135 (derivationStepZipperDown!1347 (regOne!32711 (regOne!32710 r!7292)) lt!2335134 (h!70922 s!2326)))))

(assert (=> b!6155370 (= e!3750505 e!3750503)))

(declare-fun res!2549405 () Bool)

(assert (=> b!6155370 (=> res!2549405 e!3750503)))

(declare-fun lt!2335121 () Bool)

(declare-fun lt!2335119 () Bool)

(assert (=> b!6155370 (= res!2549405 (or (not (= lt!2335119 lt!2335121)) ((_ is Nil!64474) s!2326)))))

(declare-fun Exists!3169 (Int) Bool)

(assert (=> b!6155370 (= (Exists!3169 lambda!335787) (Exists!3169 lambda!335788))))

(declare-fun lt!2335117 () Unit!157573)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1706 (Regex!16099 Regex!16099 List!64598) Unit!157573)

(assert (=> b!6155370 (= lt!2335117 (lemmaExistCutMatchRandMatchRSpecEquivalent!1706 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326))))

(assert (=> b!6155370 (= lt!2335121 (Exists!3169 lambda!335787))))

(declare-datatypes ((tuple2!66156 0))(
  ( (tuple2!66157 (_1!36381 List!64598) (_2!36381 List!64598)) )
))
(declare-datatypes ((Option!15990 0))(
  ( (None!15989) (Some!15989 (v!52128 tuple2!66156)) )
))
(declare-fun isDefined!12693 (Option!15990) Bool)

(declare-fun findConcatSeparation!2404 (Regex!16099 Regex!16099 List!64598 List!64598 List!64598) Option!15990)

(assert (=> b!6155370 (= lt!2335121 (isDefined!12693 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326)))))

(declare-fun lt!2335126 () Unit!157573)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2168 (Regex!16099 Regex!16099 List!64598) Unit!157573)

(assert (=> b!6155370 (= lt!2335126 (lemmaFindConcatSeparationEquivalentToExists!2168 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326))))

(declare-fun b!6155371 () Bool)

(assert (=> b!6155371 (= e!3750491 (matchZipper!2111 lt!2335133 (t!378090 s!2326)))))

(declare-fun setIsEmpty!41694 () Bool)

(assert (=> setIsEmpty!41694 setRes!41694))

(declare-fun b!6155372 () Bool)

(assert (=> b!6155372 (= e!3750494 (not e!3750505))))

(declare-fun res!2549399 () Bool)

(assert (=> b!6155372 (=> res!2549399 e!3750505)))

(assert (=> b!6155372 (= res!2549399 (not ((_ is Cons!64473) zl!343)))))

(declare-fun matchRSpec!3200 (Regex!16099 List!64598) Bool)

(assert (=> b!6155372 (= lt!2335119 (matchRSpec!3200 r!7292 s!2326))))

(declare-fun matchR!8282 (Regex!16099 List!64598) Bool)

(assert (=> b!6155372 (= lt!2335119 (matchR!8282 r!7292 s!2326))))

(declare-fun lt!2335131 () Unit!157573)

(declare-fun mainMatchTheorem!3200 (Regex!16099 List!64598) Unit!157573)

(assert (=> b!6155372 (= lt!2335131 (mainMatchTheorem!3200 r!7292 s!2326))))

(declare-fun b!6155373 () Bool)

(assert (=> b!6155373 (= e!3750492 e!3750500)))

(declare-fun res!2549404 () Bool)

(assert (=> b!6155373 (=> res!2549404 e!3750500)))

(assert (=> b!6155373 (= res!2549404 (nullable!6092 (regTwo!32711 (regOne!32710 r!7292))))))

(declare-fun lt!2335123 () Context!10966)

(declare-fun lt!2335122 () (InoxSet Context!10966))

(assert (=> b!6155373 (= (flatMap!1604 lt!2335122 lambda!335789) (derivationStepZipperUp!1273 lt!2335123 (h!70922 s!2326)))))

(declare-fun lt!2335110 () Unit!157573)

(assert (=> b!6155373 (= lt!2335110 (lemmaFlatMapOnSingletonSet!1130 lt!2335122 lt!2335123 lambda!335789))))

(declare-fun lt!2335112 () (InoxSet Context!10966))

(assert (=> b!6155373 (= lt!2335112 (derivationStepZipperUp!1273 lt!2335123 (h!70922 s!2326)))))

(declare-fun lt!2335118 () Unit!157573)

(assert (=> b!6155373 (= lt!2335118 e!3750499)))

(declare-fun c!1108139 () Bool)

(assert (=> b!6155373 (= c!1108139 (nullable!6092 (regOne!32711 (regOne!32710 r!7292))))))

(declare-fun lt!2335114 () (InoxSet Context!10966))

(declare-fun lt!2335132 () Context!10966)

(assert (=> b!6155373 (= (flatMap!1604 lt!2335114 lambda!335789) (derivationStepZipperUp!1273 lt!2335132 (h!70922 s!2326)))))

(declare-fun lt!2335125 () Unit!157573)

(assert (=> b!6155373 (= lt!2335125 (lemmaFlatMapOnSingletonSet!1130 lt!2335114 lt!2335132 lambda!335789))))

(declare-fun lt!2335129 () (InoxSet Context!10966))

(assert (=> b!6155373 (= lt!2335129 (derivationStepZipperUp!1273 lt!2335132 (h!70922 s!2326)))))

(assert (=> b!6155373 (= lt!2335122 (store ((as const (Array Context!10966 Bool)) false) lt!2335123 true))))

(assert (=> b!6155373 (= lt!2335123 (Context!10967 (Cons!64472 (regTwo!32711 (regOne!32710 r!7292)) (t!378088 (exprs!5983 (h!70921 zl!343))))))))

(assert (=> b!6155373 (= lt!2335114 (store ((as const (Array Context!10966 Bool)) false) lt!2335132 true))))

(assert (=> b!6155373 (= lt!2335132 (Context!10967 (Cons!64472 (regOne!32711 (regOne!32710 r!7292)) (t!378088 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6155374 () Bool)

(assert (=> b!6155374 (= e!3750493 (not (matchZipper!2111 lt!2335133 (t!378090 s!2326))))))

(declare-fun b!6155375 () Bool)

(declare-fun res!2549409 () Bool)

(assert (=> b!6155375 (=> res!2549409 e!3750505)))

(assert (=> b!6155375 (= res!2549409 (or ((_ is EmptyExpr!16099) r!7292) ((_ is EmptyLang!16099) r!7292) ((_ is ElementMatch!16099) r!7292) ((_ is Union!16099) r!7292) (not ((_ is Concat!24944) r!7292))))))

(declare-fun e!3750498 () Bool)

(declare-fun tp!1719078 () Bool)

(declare-fun setNonEmpty!41694 () Bool)

(declare-fun setElem!41694 () Context!10966)

(assert (=> setNonEmpty!41694 (= setRes!41694 (and tp!1719078 (inv!83494 setElem!41694) e!3750498))))

(declare-fun setRest!41694 () (InoxSet Context!10966))

(assert (=> setNonEmpty!41694 (= z!1189 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) setElem!41694 true) setRest!41694))))

(declare-fun b!6155376 () Bool)

(declare-fun Unit!157578 () Unit!157573)

(assert (=> b!6155376 (= e!3750499 Unit!157578)))

(declare-fun b!6155377 () Bool)

(assert (=> b!6155377 (= e!3750504 tp_is_empty!41451)))

(declare-fun b!6155378 () Bool)

(declare-fun tp!1719084 () Bool)

(assert (=> b!6155378 (= e!3750498 tp!1719084)))

(declare-fun b!6155379 () Bool)

(declare-fun e!3750507 () Bool)

(declare-fun tp!1719080 () Bool)

(assert (=> b!6155379 (= e!3750507 tp!1719080)))

(declare-fun b!6155380 () Bool)

(declare-fun res!2549411 () Bool)

(assert (=> b!6155380 (=> (not res!2549411) (not e!3750494))))

(declare-fun unfocusZipper!1841 (List!64597) Regex!16099)

(assert (=> b!6155380 (= res!2549411 (= r!7292 (unfocusZipper!1841 zl!343)))))

(declare-fun b!6155381 () Bool)

(declare-fun tp!1719083 () Bool)

(declare-fun tp!1719079 () Bool)

(assert (=> b!6155381 (= e!3750504 (and tp!1719083 tp!1719079))))

(declare-fun b!6155382 () Bool)

(declare-fun tp!1719085 () Bool)

(assert (=> b!6155382 (= e!3750495 (and (inv!83494 (h!70921 zl!343)) e!3750507 tp!1719085))))

(assert (= (and start!614850 res!2549400) b!6155357))

(assert (= (and b!6155357 res!2549398) b!6155380))

(assert (= (and b!6155380 res!2549411) b!6155372))

(assert (= (and b!6155372 (not res!2549399)) b!6155367))

(assert (= (and b!6155367 (not res!2549413)) b!6155356))

(assert (= (and b!6155356 (not res!2549401)) b!6155353))

(assert (= (and b!6155353 (not res!2549395)) b!6155365))

(assert (= (and b!6155365 (not res!2549412)) b!6155375))

(assert (= (and b!6155375 (not res!2549409)) b!6155370))

(assert (= (and b!6155370 (not res!2549405)) b!6155359))

(assert (= (and b!6155359 (not res!2549408)) b!6155358))

(assert (= (and b!6155358 c!1108138) b!6155368))

(assert (= (and b!6155358 (not c!1108138)) b!6155366))

(assert (= (and b!6155368 (not res!2549403)) b!6155364))

(assert (= (and b!6155358 (not res!2549406)) b!6155369))

(assert (= (and b!6155369 (not res!2549407)) b!6155355))

(assert (= (and b!6155355 (not res!2549410)) b!6155371))

(assert (= (and b!6155355 res!2549396) b!6155374))

(assert (= (and b!6155355 (not res!2549402)) b!6155373))

(assert (= (and b!6155373 c!1108139) b!6155363))

(assert (= (and b!6155373 (not c!1108139)) b!6155376))

(assert (= (and b!6155363 (not res!2549397)) b!6155360))

(assert (= (and b!6155373 (not res!2549404)) b!6155352))

(assert (= (and start!614850 ((_ is ElementMatch!16099) r!7292)) b!6155377))

(assert (= (and start!614850 ((_ is Concat!24944) r!7292)) b!6155354))

(assert (= (and start!614850 ((_ is Star!16099) r!7292)) b!6155362))

(assert (= (and start!614850 ((_ is Union!16099) r!7292)) b!6155381))

(assert (= (and start!614850 condSetEmpty!41694) setIsEmpty!41694))

(assert (= (and start!614850 (not condSetEmpty!41694)) setNonEmpty!41694))

(assert (= setNonEmpty!41694 b!6155378))

(assert (= b!6155382 b!6155379))

(assert (= (and start!614850 ((_ is Cons!64473) zl!343)) b!6155382))

(assert (= (and start!614850 ((_ is Cons!64474) s!2326)) b!6155361))

(declare-fun m!6994180 () Bool)

(assert (=> b!6155359 m!6994180))

(declare-fun m!6994182 () Bool)

(assert (=> b!6155352 m!6994182))

(declare-fun m!6994184 () Bool)

(assert (=> b!6155360 m!6994184))

(declare-fun m!6994186 () Bool)

(assert (=> b!6155356 m!6994186))

(declare-fun m!6994188 () Bool)

(assert (=> b!6155382 m!6994188))

(declare-fun m!6994190 () Bool)

(assert (=> b!6155369 m!6994190))

(declare-fun m!6994192 () Bool)

(assert (=> b!6155369 m!6994192))

(assert (=> b!6155364 m!6994184))

(declare-fun m!6994194 () Bool)

(assert (=> b!6155370 m!6994194))

(declare-fun m!6994196 () Bool)

(assert (=> b!6155370 m!6994196))

(declare-fun m!6994198 () Bool)

(assert (=> b!6155370 m!6994198))

(assert (=> b!6155370 m!6994194))

(declare-fun m!6994200 () Bool)

(assert (=> b!6155370 m!6994200))

(declare-fun m!6994202 () Bool)

(assert (=> b!6155370 m!6994202))

(assert (=> b!6155370 m!6994196))

(declare-fun m!6994204 () Bool)

(assert (=> b!6155370 m!6994204))

(declare-fun m!6994206 () Bool)

(assert (=> b!6155372 m!6994206))

(declare-fun m!6994208 () Bool)

(assert (=> b!6155372 m!6994208))

(declare-fun m!6994210 () Bool)

(assert (=> b!6155372 m!6994210))

(declare-fun m!6994212 () Bool)

(assert (=> b!6155355 m!6994212))

(declare-fun m!6994214 () Bool)

(assert (=> b!6155355 m!6994214))

(declare-fun m!6994216 () Bool)

(assert (=> b!6155355 m!6994216))

(declare-fun m!6994218 () Bool)

(assert (=> b!6155355 m!6994218))

(declare-fun m!6994220 () Bool)

(assert (=> start!614850 m!6994220))

(declare-fun m!6994222 () Bool)

(assert (=> b!6155357 m!6994222))

(declare-fun m!6994224 () Bool)

(assert (=> b!6155373 m!6994224))

(declare-fun m!6994226 () Bool)

(assert (=> b!6155373 m!6994226))

(declare-fun m!6994228 () Bool)

(assert (=> b!6155373 m!6994228))

(declare-fun m!6994230 () Bool)

(assert (=> b!6155373 m!6994230))

(declare-fun m!6994232 () Bool)

(assert (=> b!6155373 m!6994232))

(declare-fun m!6994234 () Bool)

(assert (=> b!6155373 m!6994234))

(declare-fun m!6994236 () Bool)

(assert (=> b!6155373 m!6994236))

(declare-fun m!6994238 () Bool)

(assert (=> b!6155373 m!6994238))

(declare-fun m!6994240 () Bool)

(assert (=> b!6155373 m!6994240))

(declare-fun m!6994242 () Bool)

(assert (=> b!6155373 m!6994242))

(declare-fun m!6994244 () Bool)

(assert (=> b!6155368 m!6994244))

(assert (=> b!6155368 m!6994212))

(declare-fun m!6994246 () Bool)

(assert (=> b!6155368 m!6994246))

(declare-fun m!6994248 () Bool)

(assert (=> b!6155358 m!6994248))

(declare-fun m!6994250 () Bool)

(assert (=> b!6155358 m!6994250))

(declare-fun m!6994252 () Bool)

(assert (=> b!6155358 m!6994252))

(declare-fun m!6994254 () Bool)

(assert (=> b!6155358 m!6994254))

(declare-fun m!6994256 () Bool)

(assert (=> b!6155358 m!6994256))

(declare-fun m!6994258 () Bool)

(assert (=> b!6155358 m!6994258))

(declare-fun m!6994260 () Bool)

(assert (=> b!6155358 m!6994260))

(declare-fun m!6994262 () Bool)

(assert (=> b!6155363 m!6994262))

(declare-fun m!6994264 () Bool)

(assert (=> b!6155363 m!6994264))

(declare-fun m!6994266 () Bool)

(assert (=> b!6155374 m!6994266))

(declare-fun m!6994268 () Bool)

(assert (=> b!6155365 m!6994268))

(assert (=> b!6155365 m!6994268))

(declare-fun m!6994270 () Bool)

(assert (=> b!6155365 m!6994270))

(declare-fun m!6994272 () Bool)

(assert (=> setNonEmpty!41694 m!6994272))

(declare-fun m!6994274 () Bool)

(assert (=> b!6155367 m!6994274))

(declare-fun m!6994276 () Bool)

(assert (=> b!6155380 m!6994276))

(assert (=> b!6155371 m!6994266))

(check-sat (not b!6155370) (not b!6155357) (not b!6155361) (not b!6155364) (not setNonEmpty!41694) (not b!6155359) (not start!614850) (not b!6155380) (not b!6155355) (not b!6155352) (not b!6155379) (not b!6155373) (not b!6155378) (not b!6155381) (not b!6155358) (not b!6155365) (not b!6155360) (not b!6155363) (not b!6155369) (not b!6155356) (not b!6155368) (not b!6155367) (not b!6155354) (not b!6155374) (not b!6155362) tp_is_empty!41451 (not b!6155371) (not b!6155382) (not b!6155372))
(check-sat)
(get-model)

(declare-fun d!1928675 () Bool)

(declare-fun c!1108186 () Bool)

(declare-fun isEmpty!36438 (List!64598) Bool)

(assert (=> d!1928675 (= c!1108186 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750567 () Bool)

(assert (=> d!1928675 (= (matchZipper!2111 lt!2335111 (t!378090 s!2326)) e!3750567)))

(declare-fun b!6155493 () Bool)

(declare-fun nullableZipper!1879 ((InoxSet Context!10966)) Bool)

(assert (=> b!6155493 (= e!3750567 (nullableZipper!1879 lt!2335111))))

(declare-fun b!6155494 () Bool)

(declare-fun derivationStepZipper!2071 ((InoxSet Context!10966) C!32468) (InoxSet Context!10966))

(declare-fun head!12718 (List!64598) C!32468)

(declare-fun tail!11803 (List!64598) List!64598)

(assert (=> b!6155494 (= e!3750567 (matchZipper!2111 (derivationStepZipper!2071 lt!2335111 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928675 c!1108186) b!6155493))

(assert (= (and d!1928675 (not c!1108186)) b!6155494))

(declare-fun m!6994350 () Bool)

(assert (=> d!1928675 m!6994350))

(declare-fun m!6994352 () Bool)

(assert (=> b!6155493 m!6994352))

(declare-fun m!6994354 () Bool)

(assert (=> b!6155494 m!6994354))

(assert (=> b!6155494 m!6994354))

(declare-fun m!6994356 () Bool)

(assert (=> b!6155494 m!6994356))

(declare-fun m!6994358 () Bool)

(assert (=> b!6155494 m!6994358))

(assert (=> b!6155494 m!6994356))

(assert (=> b!6155494 m!6994358))

(declare-fun m!6994360 () Bool)

(assert (=> b!6155494 m!6994360))

(assert (=> b!6155360 d!1928675))

(declare-fun d!1928679 () Bool)

(declare-fun c!1108187 () Bool)

(assert (=> d!1928679 (= c!1108187 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750568 () Bool)

(assert (=> d!1928679 (= (matchZipper!2111 lt!2335133 (t!378090 s!2326)) e!3750568)))

(declare-fun b!6155495 () Bool)

(assert (=> b!6155495 (= e!3750568 (nullableZipper!1879 lt!2335133))))

(declare-fun b!6155496 () Bool)

(assert (=> b!6155496 (= e!3750568 (matchZipper!2111 (derivationStepZipper!2071 lt!2335133 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928679 c!1108187) b!6155495))

(assert (= (and d!1928679 (not c!1108187)) b!6155496))

(assert (=> d!1928679 m!6994350))

(declare-fun m!6994362 () Bool)

(assert (=> b!6155495 m!6994362))

(assert (=> b!6155496 m!6994354))

(assert (=> b!6155496 m!6994354))

(declare-fun m!6994364 () Bool)

(assert (=> b!6155496 m!6994364))

(assert (=> b!6155496 m!6994358))

(assert (=> b!6155496 m!6994364))

(assert (=> b!6155496 m!6994358))

(declare-fun m!6994366 () Bool)

(assert (=> b!6155496 m!6994366))

(assert (=> b!6155371 d!1928679))

(declare-fun d!1928681 () Bool)

(declare-fun lt!2335148 () Regex!16099)

(assert (=> d!1928681 (validRegex!7835 lt!2335148)))

(assert (=> d!1928681 (= lt!2335148 (generalisedUnion!1943 (unfocusZipperList!1520 zl!343)))))

(assert (=> d!1928681 (= (unfocusZipper!1841 zl!343) lt!2335148)))

(declare-fun bs!1525708 () Bool)

(assert (= bs!1525708 d!1928681))

(declare-fun m!6994368 () Bool)

(assert (=> bs!1525708 m!6994368))

(assert (=> bs!1525708 m!6994268))

(assert (=> bs!1525708 m!6994268))

(assert (=> bs!1525708 m!6994270))

(assert (=> b!6155380 d!1928681))

(declare-fun bs!1525711 () Bool)

(declare-fun b!6155604 () Bool)

(assert (= bs!1525711 (and b!6155604 b!6155370)))

(declare-fun lambda!335803 () Int)

(assert (=> bs!1525711 (not (= lambda!335803 lambda!335787))))

(assert (=> bs!1525711 (not (= lambda!335803 lambda!335788))))

(assert (=> b!6155604 true))

(assert (=> b!6155604 true))

(declare-fun bs!1525713 () Bool)

(declare-fun b!6155598 () Bool)

(assert (= bs!1525713 (and b!6155598 b!6155370)))

(declare-fun lambda!335806 () Int)

(assert (=> bs!1525713 (not (= lambda!335806 lambda!335787))))

(assert (=> bs!1525713 (= lambda!335806 lambda!335788)))

(declare-fun bs!1525716 () Bool)

(assert (= bs!1525716 (and b!6155598 b!6155604)))

(assert (=> bs!1525716 (not (= lambda!335806 lambda!335803))))

(assert (=> b!6155598 true))

(assert (=> b!6155598 true))

(declare-fun e!3750633 () Bool)

(declare-fun call!512269 () Bool)

(assert (=> b!6155598 (= e!3750633 call!512269)))

(declare-fun b!6155599 () Bool)

(declare-fun e!3750631 () Bool)

(declare-fun e!3750630 () Bool)

(assert (=> b!6155599 (= e!3750631 e!3750630)))

(declare-fun res!2549459 () Bool)

(assert (=> b!6155599 (= res!2549459 (not ((_ is EmptyLang!16099) r!7292)))))

(assert (=> b!6155599 (=> (not res!2549459) (not e!3750630))))

(declare-fun b!6155600 () Bool)

(declare-fun c!1108227 () Bool)

(assert (=> b!6155600 (= c!1108227 ((_ is Union!16099) r!7292))))

(declare-fun e!3750629 () Bool)

(declare-fun e!3750632 () Bool)

(assert (=> b!6155600 (= e!3750629 e!3750632)))

(declare-fun d!1928683 () Bool)

(declare-fun c!1108225 () Bool)

(assert (=> d!1928683 (= c!1108225 ((_ is EmptyExpr!16099) r!7292))))

(assert (=> d!1928683 (= (matchRSpec!3200 r!7292 s!2326) e!3750631)))

(declare-fun b!6155601 () Bool)

(declare-fun call!512268 () Bool)

(assert (=> b!6155601 (= e!3750631 call!512268)))

(declare-fun b!6155602 () Bool)

(declare-fun e!3750634 () Bool)

(assert (=> b!6155602 (= e!3750632 e!3750634)))

(declare-fun res!2549457 () Bool)

(assert (=> b!6155602 (= res!2549457 (matchRSpec!3200 (regOne!32711 r!7292) s!2326))))

(assert (=> b!6155602 (=> res!2549457 e!3750634)))

(declare-fun bm!512263 () Bool)

(declare-fun c!1108224 () Bool)

(assert (=> bm!512263 (= call!512269 (Exists!3169 (ite c!1108224 lambda!335803 lambda!335806)))))

(declare-fun b!6155603 () Bool)

(assert (=> b!6155603 (= e!3750632 e!3750633)))

(assert (=> b!6155603 (= c!1108224 ((_ is Star!16099) r!7292))))

(declare-fun e!3750628 () Bool)

(assert (=> b!6155604 (= e!3750628 call!512269)))

(declare-fun b!6155605 () Bool)

(assert (=> b!6155605 (= e!3750629 (= s!2326 (Cons!64474 (c!1108140 r!7292) Nil!64474)))))

(declare-fun b!6155606 () Bool)

(assert (=> b!6155606 (= e!3750634 (matchRSpec!3200 (regTwo!32711 r!7292) s!2326))))

(declare-fun b!6155607 () Bool)

(declare-fun res!2549458 () Bool)

(assert (=> b!6155607 (=> res!2549458 e!3750628)))

(assert (=> b!6155607 (= res!2549458 call!512268)))

(assert (=> b!6155607 (= e!3750633 e!3750628)))

(declare-fun b!6155608 () Bool)

(declare-fun c!1108226 () Bool)

(assert (=> b!6155608 (= c!1108226 ((_ is ElementMatch!16099) r!7292))))

(assert (=> b!6155608 (= e!3750630 e!3750629)))

(declare-fun bm!512264 () Bool)

(assert (=> bm!512264 (= call!512268 (isEmpty!36438 s!2326))))

(assert (= (and d!1928683 c!1108225) b!6155601))

(assert (= (and d!1928683 (not c!1108225)) b!6155599))

(assert (= (and b!6155599 res!2549459) b!6155608))

(assert (= (and b!6155608 c!1108226) b!6155605))

(assert (= (and b!6155608 (not c!1108226)) b!6155600))

(assert (= (and b!6155600 c!1108227) b!6155602))

(assert (= (and b!6155600 (not c!1108227)) b!6155603))

(assert (= (and b!6155602 (not res!2549457)) b!6155606))

(assert (= (and b!6155603 c!1108224) b!6155607))

(assert (= (and b!6155603 (not c!1108224)) b!6155598))

(assert (= (and b!6155607 (not res!2549458)) b!6155604))

(assert (= (or b!6155604 b!6155598) bm!512263))

(assert (= (or b!6155601 b!6155607) bm!512264))

(declare-fun m!6994450 () Bool)

(assert (=> b!6155602 m!6994450))

(declare-fun m!6994452 () Bool)

(assert (=> bm!512263 m!6994452))

(declare-fun m!6994454 () Bool)

(assert (=> b!6155606 m!6994454))

(declare-fun m!6994456 () Bool)

(assert (=> bm!512264 m!6994456))

(assert (=> b!6155372 d!1928683))

(declare-fun b!6155669 () Bool)

(declare-fun e!3750672 () Bool)

(assert (=> b!6155669 (= e!3750672 (nullable!6092 r!7292))))

(declare-fun b!6155670 () Bool)

(declare-fun e!3750669 () Bool)

(declare-fun lt!2335159 () Bool)

(declare-fun call!512274 () Bool)

(assert (=> b!6155670 (= e!3750669 (= lt!2335159 call!512274))))

(declare-fun d!1928711 () Bool)

(assert (=> d!1928711 e!3750669))

(declare-fun c!1108243 () Bool)

(assert (=> d!1928711 (= c!1108243 ((_ is EmptyExpr!16099) r!7292))))

(assert (=> d!1928711 (= lt!2335159 e!3750672)))

(declare-fun c!1108242 () Bool)

(assert (=> d!1928711 (= c!1108242 (isEmpty!36438 s!2326))))

(assert (=> d!1928711 (validRegex!7835 r!7292)))

(assert (=> d!1928711 (= (matchR!8282 r!7292 s!2326) lt!2335159)))

(declare-fun b!6155671 () Bool)

(declare-fun e!3750671 () Bool)

(declare-fun e!3750668 () Bool)

(assert (=> b!6155671 (= e!3750671 e!3750668)))

(declare-fun res!2549496 () Bool)

(assert (=> b!6155671 (=> (not res!2549496) (not e!3750668))))

(assert (=> b!6155671 (= res!2549496 (not lt!2335159))))

(declare-fun b!6155672 () Bool)

(declare-fun e!3750667 () Bool)

(assert (=> b!6155672 (= e!3750669 e!3750667)))

(declare-fun c!1108244 () Bool)

(assert (=> b!6155672 (= c!1108244 ((_ is EmptyLang!16099) r!7292))))

(declare-fun b!6155673 () Bool)

(declare-fun res!2549497 () Bool)

(declare-fun e!3750673 () Bool)

(assert (=> b!6155673 (=> res!2549497 e!3750673)))

(assert (=> b!6155673 (= res!2549497 (not (isEmpty!36438 (tail!11803 s!2326))))))

(declare-fun bm!512269 () Bool)

(assert (=> bm!512269 (= call!512274 (isEmpty!36438 s!2326))))

(declare-fun b!6155674 () Bool)

(declare-fun derivativeStep!4818 (Regex!16099 C!32468) Regex!16099)

(assert (=> b!6155674 (= e!3750672 (matchR!8282 (derivativeStep!4818 r!7292 (head!12718 s!2326)) (tail!11803 s!2326)))))

(declare-fun b!6155675 () Bool)

(assert (=> b!6155675 (= e!3750667 (not lt!2335159))))

(declare-fun b!6155676 () Bool)

(declare-fun res!2549492 () Bool)

(declare-fun e!3750670 () Bool)

(assert (=> b!6155676 (=> (not res!2549492) (not e!3750670))))

(assert (=> b!6155676 (= res!2549492 (not call!512274))))

(declare-fun b!6155677 () Bool)

(declare-fun res!2549494 () Bool)

(assert (=> b!6155677 (=> res!2549494 e!3750671)))

(assert (=> b!6155677 (= res!2549494 e!3750670)))

(declare-fun res!2549495 () Bool)

(assert (=> b!6155677 (=> (not res!2549495) (not e!3750670))))

(assert (=> b!6155677 (= res!2549495 lt!2335159)))

(declare-fun b!6155678 () Bool)

(assert (=> b!6155678 (= e!3750668 e!3750673)))

(declare-fun res!2549498 () Bool)

(assert (=> b!6155678 (=> res!2549498 e!3750673)))

(assert (=> b!6155678 (= res!2549498 call!512274)))

(declare-fun b!6155679 () Bool)

(assert (=> b!6155679 (= e!3750670 (= (head!12718 s!2326) (c!1108140 r!7292)))))

(declare-fun b!6155680 () Bool)

(declare-fun res!2549493 () Bool)

(assert (=> b!6155680 (=> res!2549493 e!3750671)))

(assert (=> b!6155680 (= res!2549493 (not ((_ is ElementMatch!16099) r!7292)))))

(assert (=> b!6155680 (= e!3750667 e!3750671)))

(declare-fun b!6155681 () Bool)

(declare-fun res!2549499 () Bool)

(assert (=> b!6155681 (=> (not res!2549499) (not e!3750670))))

(assert (=> b!6155681 (= res!2549499 (isEmpty!36438 (tail!11803 s!2326)))))

(declare-fun b!6155682 () Bool)

(assert (=> b!6155682 (= e!3750673 (not (= (head!12718 s!2326) (c!1108140 r!7292))))))

(assert (= (and d!1928711 c!1108242) b!6155669))

(assert (= (and d!1928711 (not c!1108242)) b!6155674))

(assert (= (and d!1928711 c!1108243) b!6155670))

(assert (= (and d!1928711 (not c!1108243)) b!6155672))

(assert (= (and b!6155672 c!1108244) b!6155675))

(assert (= (and b!6155672 (not c!1108244)) b!6155680))

(assert (= (and b!6155680 (not res!2549493)) b!6155677))

(assert (= (and b!6155677 res!2549495) b!6155676))

(assert (= (and b!6155676 res!2549492) b!6155681))

(assert (= (and b!6155681 res!2549499) b!6155679))

(assert (= (and b!6155677 (not res!2549494)) b!6155671))

(assert (= (and b!6155671 res!2549496) b!6155678))

(assert (= (and b!6155678 (not res!2549498)) b!6155673))

(assert (= (and b!6155673 (not res!2549497)) b!6155682))

(assert (= (or b!6155670 b!6155676 b!6155678) bm!512269))

(assert (=> d!1928711 m!6994456))

(assert (=> d!1928711 m!6994220))

(declare-fun m!6994458 () Bool)

(assert (=> b!6155674 m!6994458))

(assert (=> b!6155674 m!6994458))

(declare-fun m!6994460 () Bool)

(assert (=> b!6155674 m!6994460))

(declare-fun m!6994462 () Bool)

(assert (=> b!6155674 m!6994462))

(assert (=> b!6155674 m!6994460))

(assert (=> b!6155674 m!6994462))

(declare-fun m!6994464 () Bool)

(assert (=> b!6155674 m!6994464))

(assert (=> b!6155681 m!6994462))

(assert (=> b!6155681 m!6994462))

(declare-fun m!6994466 () Bool)

(assert (=> b!6155681 m!6994466))

(declare-fun m!6994468 () Bool)

(assert (=> b!6155669 m!6994468))

(assert (=> bm!512269 m!6994456))

(assert (=> b!6155673 m!6994462))

(assert (=> b!6155673 m!6994462))

(assert (=> b!6155673 m!6994466))

(assert (=> b!6155682 m!6994458))

(assert (=> b!6155679 m!6994458))

(assert (=> b!6155372 d!1928711))

(declare-fun d!1928713 () Bool)

(assert (=> d!1928713 (= (matchR!8282 r!7292 s!2326) (matchRSpec!3200 r!7292 s!2326))))

(declare-fun lt!2335162 () Unit!157573)

(declare-fun choose!45759 (Regex!16099 List!64598) Unit!157573)

(assert (=> d!1928713 (= lt!2335162 (choose!45759 r!7292 s!2326))))

(assert (=> d!1928713 (validRegex!7835 r!7292)))

(assert (=> d!1928713 (= (mainMatchTheorem!3200 r!7292 s!2326) lt!2335162)))

(declare-fun bs!1525719 () Bool)

(assert (= bs!1525719 d!1928713))

(assert (=> bs!1525719 m!6994208))

(assert (=> bs!1525719 m!6994206))

(declare-fun m!6994470 () Bool)

(assert (=> bs!1525719 m!6994470))

(assert (=> bs!1525719 m!6994220))

(assert (=> b!6155372 d!1928713))

(declare-fun d!1928715 () Bool)

(declare-fun lambda!335816 () Int)

(declare-fun forall!15220 (List!64596 Int) Bool)

(assert (=> d!1928715 (= (inv!83494 (h!70921 zl!343)) (forall!15220 (exprs!5983 (h!70921 zl!343)) lambda!335816))))

(declare-fun bs!1525722 () Bool)

(assert (= bs!1525722 d!1928715))

(declare-fun m!6994480 () Bool)

(assert (=> bs!1525722 m!6994480))

(assert (=> b!6155382 d!1928715))

(declare-fun bs!1525723 () Bool)

(declare-fun d!1928719 () Bool)

(assert (= bs!1525723 (and d!1928719 d!1928715)))

(declare-fun lambda!335817 () Int)

(assert (=> bs!1525723 (= lambda!335817 lambda!335816)))

(assert (=> d!1928719 (= (inv!83494 lt!2335134) (forall!15220 (exprs!5983 lt!2335134) lambda!335817))))

(declare-fun bs!1525724 () Bool)

(assert (= bs!1525724 d!1928719))

(declare-fun m!6994482 () Bool)

(assert (=> bs!1525724 m!6994482))

(assert (=> b!6155352 d!1928719))

(declare-fun b!6155740 () Bool)

(declare-fun e!3750715 () Bool)

(declare-fun e!3750710 () Bool)

(assert (=> b!6155740 (= e!3750715 e!3750710)))

(declare-fun c!1108259 () Bool)

(assert (=> b!6155740 (= c!1108259 ((_ is Star!16099) r!7292))))

(declare-fun b!6155741 () Bool)

(declare-fun e!3750713 () Bool)

(declare-fun e!3750712 () Bool)

(assert (=> b!6155741 (= e!3750713 e!3750712)))

(declare-fun res!2549530 () Bool)

(assert (=> b!6155741 (=> (not res!2549530) (not e!3750712))))

(declare-fun call!512286 () Bool)

(assert (=> b!6155741 (= res!2549530 call!512286)))

(declare-fun b!6155742 () Bool)

(declare-fun e!3750714 () Bool)

(assert (=> b!6155742 (= e!3750710 e!3750714)))

(declare-fun res!2549533 () Bool)

(assert (=> b!6155742 (= res!2549533 (not (nullable!6092 (reg!16428 r!7292))))))

(assert (=> b!6155742 (=> (not res!2549533) (not e!3750714))))

(declare-fun b!6155743 () Bool)

(declare-fun e!3750709 () Bool)

(declare-fun call!512287 () Bool)

(assert (=> b!6155743 (= e!3750709 call!512287)))

(declare-fun bm!512280 () Bool)

(declare-fun call!512285 () Bool)

(assert (=> bm!512280 (= call!512287 call!512285)))

(declare-fun b!6155744 () Bool)

(declare-fun res!2549531 () Bool)

(assert (=> b!6155744 (=> (not res!2549531) (not e!3750709))))

(assert (=> b!6155744 (= res!2549531 call!512286)))

(declare-fun e!3750711 () Bool)

(assert (=> b!6155744 (= e!3750711 e!3750709)))

(declare-fun bm!512282 () Bool)

(declare-fun c!1108260 () Bool)

(assert (=> bm!512282 (= call!512285 (validRegex!7835 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))))))

(declare-fun b!6155745 () Bool)

(assert (=> b!6155745 (= e!3750712 call!512287)))

(declare-fun bm!512281 () Bool)

(assert (=> bm!512281 (= call!512286 (validRegex!7835 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))))))

(declare-fun d!1928721 () Bool)

(declare-fun res!2549532 () Bool)

(assert (=> d!1928721 (=> res!2549532 e!3750715)))

(assert (=> d!1928721 (= res!2549532 ((_ is ElementMatch!16099) r!7292))))

(assert (=> d!1928721 (= (validRegex!7835 r!7292) e!3750715)))

(declare-fun b!6155746 () Bool)

(assert (=> b!6155746 (= e!3750714 call!512285)))

(declare-fun b!6155747 () Bool)

(assert (=> b!6155747 (= e!3750710 e!3750711)))

(assert (=> b!6155747 (= c!1108260 ((_ is Union!16099) r!7292))))

(declare-fun b!6155748 () Bool)

(declare-fun res!2549529 () Bool)

(assert (=> b!6155748 (=> res!2549529 e!3750713)))

(assert (=> b!6155748 (= res!2549529 (not ((_ is Concat!24944) r!7292)))))

(assert (=> b!6155748 (= e!3750711 e!3750713)))

(assert (= (and d!1928721 (not res!2549532)) b!6155740))

(assert (= (and b!6155740 c!1108259) b!6155742))

(assert (= (and b!6155740 (not c!1108259)) b!6155747))

(assert (= (and b!6155742 res!2549533) b!6155746))

(assert (= (and b!6155747 c!1108260) b!6155744))

(assert (= (and b!6155747 (not c!1108260)) b!6155748))

(assert (= (and b!6155744 res!2549531) b!6155743))

(assert (= (and b!6155748 (not res!2549529)) b!6155741))

(assert (= (and b!6155741 res!2549530) b!6155745))

(assert (= (or b!6155743 b!6155745) bm!512280))

(assert (= (or b!6155744 b!6155741) bm!512281))

(assert (= (or b!6155746 bm!512280) bm!512282))

(declare-fun m!6994484 () Bool)

(assert (=> b!6155742 m!6994484))

(declare-fun m!6994486 () Bool)

(assert (=> bm!512282 m!6994486))

(declare-fun m!6994488 () Bool)

(assert (=> bm!512281 m!6994488))

(assert (=> start!614850 d!1928721))

(declare-fun e!3750725 () Bool)

(declare-fun d!1928723 () Bool)

(assert (=> d!1928723 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335111) (t!378090 s!2326)) e!3750725)))

(declare-fun res!2549544 () Bool)

(assert (=> d!1928723 (=> res!2549544 e!3750725)))

(assert (=> d!1928723 (= res!2549544 (matchZipper!2111 lt!2335135 (t!378090 s!2326)))))

(declare-fun lt!2335168 () Unit!157573)

(declare-fun choose!45760 ((InoxSet Context!10966) (InoxSet Context!10966) List!64598) Unit!157573)

(assert (=> d!1928723 (= lt!2335168 (choose!45760 lt!2335135 lt!2335111 (t!378090 s!2326)))))

(assert (=> d!1928723 (= (lemmaZipperConcatMatchesSameAsBothZippers!930 lt!2335135 lt!2335111 (t!378090 s!2326)) lt!2335168)))

(declare-fun b!6155765 () Bool)

(assert (=> b!6155765 (= e!3750725 (matchZipper!2111 lt!2335111 (t!378090 s!2326)))))

(assert (= (and d!1928723 (not res!2549544)) b!6155765))

(assert (=> d!1928723 m!6994264))

(assert (=> d!1928723 m!6994216))

(declare-fun m!6994500 () Bool)

(assert (=> d!1928723 m!6994500))

(assert (=> b!6155765 m!6994184))

(assert (=> b!6155363 d!1928723))

(declare-fun d!1928725 () Bool)

(declare-fun c!1108264 () Bool)

(assert (=> d!1928725 (= c!1108264 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750726 () Bool)

(assert (=> d!1928725 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335111) (t!378090 s!2326)) e!3750726)))

(declare-fun b!6155766 () Bool)

(assert (=> b!6155766 (= e!3750726 (nullableZipper!1879 ((_ map or) lt!2335135 lt!2335111)))))

(declare-fun b!6155767 () Bool)

(assert (=> b!6155767 (= e!3750726 (matchZipper!2111 (derivationStepZipper!2071 ((_ map or) lt!2335135 lt!2335111) (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928725 c!1108264) b!6155766))

(assert (= (and d!1928725 (not c!1108264)) b!6155767))

(assert (=> d!1928725 m!6994350))

(declare-fun m!6994504 () Bool)

(assert (=> b!6155766 m!6994504))

(assert (=> b!6155767 m!6994354))

(assert (=> b!6155767 m!6994354))

(declare-fun m!6994506 () Bool)

(assert (=> b!6155767 m!6994506))

(assert (=> b!6155767 m!6994358))

(assert (=> b!6155767 m!6994506))

(assert (=> b!6155767 m!6994358))

(declare-fun m!6994508 () Bool)

(assert (=> b!6155767 m!6994508))

(assert (=> b!6155363 d!1928725))

(declare-fun d!1928729 () Bool)

(declare-fun nullableFct!2056 (Regex!16099) Bool)

(assert (=> d!1928729 (= (nullable!6092 (regTwo!32711 (regOne!32710 r!7292))) (nullableFct!2056 (regTwo!32711 (regOne!32710 r!7292))))))

(declare-fun bs!1525725 () Bool)

(assert (= bs!1525725 d!1928729))

(declare-fun m!6994510 () Bool)

(assert (=> bs!1525725 m!6994510))

(assert (=> b!6155373 d!1928729))

(declare-fun b!6155778 () Bool)

(declare-fun e!3750734 () (InoxSet Context!10966))

(declare-fun e!3750733 () (InoxSet Context!10966))

(assert (=> b!6155778 (= e!3750734 e!3750733)))

(declare-fun c!1108269 () Bool)

(assert (=> b!6155778 (= c!1108269 ((_ is Cons!64472) (exprs!5983 lt!2335132)))))

(declare-fun d!1928731 () Bool)

(declare-fun c!1108270 () Bool)

(declare-fun e!3750735 () Bool)

(assert (=> d!1928731 (= c!1108270 e!3750735)))

(declare-fun res!2549547 () Bool)

(assert (=> d!1928731 (=> (not res!2549547) (not e!3750735))))

(assert (=> d!1928731 (= res!2549547 ((_ is Cons!64472) (exprs!5983 lt!2335132)))))

(assert (=> d!1928731 (= (derivationStepZipperUp!1273 lt!2335132 (h!70922 s!2326)) e!3750734)))

(declare-fun b!6155779 () Bool)

(assert (=> b!6155779 (= e!3750733 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155780 () Bool)

(assert (=> b!6155780 (= e!3750735 (nullable!6092 (h!70920 (exprs!5983 lt!2335132))))))

(declare-fun b!6155781 () Bool)

(declare-fun call!512293 () (InoxSet Context!10966))

(assert (=> b!6155781 (= e!3750733 call!512293)))

(declare-fun bm!512288 () Bool)

(assert (=> bm!512288 (= call!512293 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 lt!2335132)) (Context!10967 (t!378088 (exprs!5983 lt!2335132))) (h!70922 s!2326)))))

(declare-fun b!6155782 () Bool)

(assert (=> b!6155782 (= e!3750734 ((_ map or) call!512293 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 lt!2335132))) (h!70922 s!2326))))))

(assert (= (and d!1928731 res!2549547) b!6155780))

(assert (= (and d!1928731 c!1108270) b!6155782))

(assert (= (and d!1928731 (not c!1108270)) b!6155778))

(assert (= (and b!6155778 c!1108269) b!6155781))

(assert (= (and b!6155778 (not c!1108269)) b!6155779))

(assert (= (or b!6155782 b!6155781) bm!512288))

(declare-fun m!6994514 () Bool)

(assert (=> b!6155780 m!6994514))

(declare-fun m!6994516 () Bool)

(assert (=> bm!512288 m!6994516))

(declare-fun m!6994518 () Bool)

(assert (=> b!6155782 m!6994518))

(assert (=> b!6155373 d!1928731))

(declare-fun d!1928735 () Bool)

(declare-fun choose!45761 ((InoxSet Context!10966) Int) (InoxSet Context!10966))

(assert (=> d!1928735 (= (flatMap!1604 lt!2335114 lambda!335789) (choose!45761 lt!2335114 lambda!335789))))

(declare-fun bs!1525727 () Bool)

(assert (= bs!1525727 d!1928735))

(declare-fun m!6994520 () Bool)

(assert (=> bs!1525727 m!6994520))

(assert (=> b!6155373 d!1928735))

(declare-fun d!1928737 () Bool)

(declare-fun dynLambda!25417 (Int Context!10966) (InoxSet Context!10966))

(assert (=> d!1928737 (= (flatMap!1604 lt!2335114 lambda!335789) (dynLambda!25417 lambda!335789 lt!2335132))))

(declare-fun lt!2335174 () Unit!157573)

(declare-fun choose!45762 ((InoxSet Context!10966) Context!10966 Int) Unit!157573)

(assert (=> d!1928737 (= lt!2335174 (choose!45762 lt!2335114 lt!2335132 lambda!335789))))

(assert (=> d!1928737 (= lt!2335114 (store ((as const (Array Context!10966 Bool)) false) lt!2335132 true))))

(assert (=> d!1928737 (= (lemmaFlatMapOnSingletonSet!1130 lt!2335114 lt!2335132 lambda!335789) lt!2335174)))

(declare-fun b_lambda!234303 () Bool)

(assert (=> (not b_lambda!234303) (not d!1928737)))

(declare-fun bs!1525728 () Bool)

(assert (= bs!1525728 d!1928737))

(assert (=> bs!1525728 m!6994242))

(declare-fun m!6994522 () Bool)

(assert (=> bs!1525728 m!6994522))

(declare-fun m!6994524 () Bool)

(assert (=> bs!1525728 m!6994524))

(assert (=> bs!1525728 m!6994232))

(assert (=> b!6155373 d!1928737))

(declare-fun d!1928739 () Bool)

(assert (=> d!1928739 (= (flatMap!1604 lt!2335122 lambda!335789) (choose!45761 lt!2335122 lambda!335789))))

(declare-fun bs!1525729 () Bool)

(assert (= bs!1525729 d!1928739))

(declare-fun m!6994526 () Bool)

(assert (=> bs!1525729 m!6994526))

(assert (=> b!6155373 d!1928739))

(declare-fun b!6155783 () Bool)

(declare-fun e!3750737 () (InoxSet Context!10966))

(declare-fun e!3750736 () (InoxSet Context!10966))

(assert (=> b!6155783 (= e!3750737 e!3750736)))

(declare-fun c!1108271 () Bool)

(assert (=> b!6155783 (= c!1108271 ((_ is Cons!64472) (exprs!5983 lt!2335123)))))

(declare-fun d!1928741 () Bool)

(declare-fun c!1108272 () Bool)

(declare-fun e!3750738 () Bool)

(assert (=> d!1928741 (= c!1108272 e!3750738)))

(declare-fun res!2549548 () Bool)

(assert (=> d!1928741 (=> (not res!2549548) (not e!3750738))))

(assert (=> d!1928741 (= res!2549548 ((_ is Cons!64472) (exprs!5983 lt!2335123)))))

(assert (=> d!1928741 (= (derivationStepZipperUp!1273 lt!2335123 (h!70922 s!2326)) e!3750737)))

(declare-fun b!6155784 () Bool)

(assert (=> b!6155784 (= e!3750736 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155785 () Bool)

(assert (=> b!6155785 (= e!3750738 (nullable!6092 (h!70920 (exprs!5983 lt!2335123))))))

(declare-fun b!6155786 () Bool)

(declare-fun call!512294 () (InoxSet Context!10966))

(assert (=> b!6155786 (= e!3750736 call!512294)))

(declare-fun bm!512289 () Bool)

(assert (=> bm!512289 (= call!512294 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 lt!2335123)) (Context!10967 (t!378088 (exprs!5983 lt!2335123))) (h!70922 s!2326)))))

(declare-fun b!6155787 () Bool)

(assert (=> b!6155787 (= e!3750737 ((_ map or) call!512294 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 lt!2335123))) (h!70922 s!2326))))))

(assert (= (and d!1928741 res!2549548) b!6155785))

(assert (= (and d!1928741 c!1108272) b!6155787))

(assert (= (and d!1928741 (not c!1108272)) b!6155783))

(assert (= (and b!6155783 c!1108271) b!6155786))

(assert (= (and b!6155783 (not c!1108271)) b!6155784))

(assert (= (or b!6155787 b!6155786) bm!512289))

(declare-fun m!6994528 () Bool)

(assert (=> b!6155785 m!6994528))

(declare-fun m!6994530 () Bool)

(assert (=> bm!512289 m!6994530))

(declare-fun m!6994532 () Bool)

(assert (=> b!6155787 m!6994532))

(assert (=> b!6155373 d!1928741))

(declare-fun d!1928743 () Bool)

(assert (=> d!1928743 (= (flatMap!1604 lt!2335122 lambda!335789) (dynLambda!25417 lambda!335789 lt!2335123))))

(declare-fun lt!2335175 () Unit!157573)

(assert (=> d!1928743 (= lt!2335175 (choose!45762 lt!2335122 lt!2335123 lambda!335789))))

(assert (=> d!1928743 (= lt!2335122 (store ((as const (Array Context!10966 Bool)) false) lt!2335123 true))))

(assert (=> d!1928743 (= (lemmaFlatMapOnSingletonSet!1130 lt!2335122 lt!2335123 lambda!335789) lt!2335175)))

(declare-fun b_lambda!234305 () Bool)

(assert (=> (not b_lambda!234305) (not d!1928743)))

(declare-fun bs!1525730 () Bool)

(assert (= bs!1525730 d!1928743))

(assert (=> bs!1525730 m!6994228))

(declare-fun m!6994534 () Bool)

(assert (=> bs!1525730 m!6994534))

(declare-fun m!6994536 () Bool)

(assert (=> bs!1525730 m!6994536))

(assert (=> bs!1525730 m!6994240))

(assert (=> b!6155373 d!1928743))

(declare-fun d!1928745 () Bool)

(assert (=> d!1928745 (= (nullable!6092 (regOne!32711 (regOne!32710 r!7292))) (nullableFct!2056 (regOne!32711 (regOne!32710 r!7292))))))

(declare-fun bs!1525731 () Bool)

(assert (= bs!1525731 d!1928745))

(declare-fun m!6994538 () Bool)

(assert (=> bs!1525731 m!6994538))

(assert (=> b!6155373 d!1928745))

(assert (=> b!6155364 d!1928675))

(assert (=> b!6155374 d!1928679))

(declare-fun bs!1525732 () Bool)

(declare-fun d!1928747 () Bool)

(assert (= bs!1525732 (and d!1928747 d!1928715)))

(declare-fun lambda!335820 () Int)

(assert (=> bs!1525732 (= lambda!335820 lambda!335816)))

(declare-fun bs!1525733 () Bool)

(assert (= bs!1525733 (and d!1928747 d!1928719)))

(assert (=> bs!1525733 (= lambda!335820 lambda!335817)))

(declare-fun b!6155835 () Bool)

(declare-fun e!3750766 () Regex!16099)

(declare-fun e!3750771 () Regex!16099)

(assert (=> b!6155835 (= e!3750766 e!3750771)))

(declare-fun c!1108290 () Bool)

(assert (=> b!6155835 (= c!1108290 ((_ is Cons!64472) (unfocusZipperList!1520 zl!343)))))

(declare-fun b!6155836 () Bool)

(assert (=> b!6155836 (= e!3750771 (Union!16099 (h!70920 (unfocusZipperList!1520 zl!343)) (generalisedUnion!1943 (t!378088 (unfocusZipperList!1520 zl!343)))))))

(declare-fun b!6155837 () Bool)

(declare-fun e!3750769 () Bool)

(assert (=> b!6155837 (= e!3750769 (isEmpty!36436 (t!378088 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6155838 () Bool)

(declare-fun e!3750767 () Bool)

(declare-fun e!3750770 () Bool)

(assert (=> b!6155838 (= e!3750767 e!3750770)))

(declare-fun c!1108287 () Bool)

(assert (=> b!6155838 (= c!1108287 (isEmpty!36436 (unfocusZipperList!1520 zl!343)))))

(declare-fun b!6155839 () Bool)

(declare-fun e!3750768 () Bool)

(assert (=> b!6155839 (= e!3750770 e!3750768)))

(declare-fun c!1108288 () Bool)

(declare-fun tail!11805 (List!64596) List!64596)

(assert (=> b!6155839 (= c!1108288 (isEmpty!36436 (tail!11805 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6155840 () Bool)

(declare-fun lt!2335187 () Regex!16099)

(declare-fun head!12720 (List!64596) Regex!16099)

(assert (=> b!6155840 (= e!3750768 (= lt!2335187 (head!12720 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6155841 () Bool)

(assert (=> b!6155841 (= e!3750771 EmptyLang!16099)))

(declare-fun b!6155843 () Bool)

(declare-fun isEmptyLang!1526 (Regex!16099) Bool)

(assert (=> b!6155843 (= e!3750770 (isEmptyLang!1526 lt!2335187))))

(declare-fun b!6155844 () Bool)

(assert (=> b!6155844 (= e!3750766 (h!70920 (unfocusZipperList!1520 zl!343)))))

(declare-fun b!6155842 () Bool)

(declare-fun isUnion!956 (Regex!16099) Bool)

(assert (=> b!6155842 (= e!3750768 (isUnion!956 lt!2335187))))

(assert (=> d!1928747 e!3750767))

(declare-fun res!2549568 () Bool)

(assert (=> d!1928747 (=> (not res!2549568) (not e!3750767))))

(assert (=> d!1928747 (= res!2549568 (validRegex!7835 lt!2335187))))

(assert (=> d!1928747 (= lt!2335187 e!3750766)))

(declare-fun c!1108289 () Bool)

(assert (=> d!1928747 (= c!1108289 e!3750769)))

(declare-fun res!2549569 () Bool)

(assert (=> d!1928747 (=> (not res!2549569) (not e!3750769))))

(assert (=> d!1928747 (= res!2549569 ((_ is Cons!64472) (unfocusZipperList!1520 zl!343)))))

(assert (=> d!1928747 (forall!15220 (unfocusZipperList!1520 zl!343) lambda!335820)))

(assert (=> d!1928747 (= (generalisedUnion!1943 (unfocusZipperList!1520 zl!343)) lt!2335187)))

(assert (= (and d!1928747 res!2549569) b!6155837))

(assert (= (and d!1928747 c!1108289) b!6155844))

(assert (= (and d!1928747 (not c!1108289)) b!6155835))

(assert (= (and b!6155835 c!1108290) b!6155836))

(assert (= (and b!6155835 (not c!1108290)) b!6155841))

(assert (= (and d!1928747 res!2549568) b!6155838))

(assert (= (and b!6155838 c!1108287) b!6155843))

(assert (= (and b!6155838 (not c!1108287)) b!6155839))

(assert (= (and b!6155839 c!1108288) b!6155840))

(assert (= (and b!6155839 (not c!1108288)) b!6155842))

(declare-fun m!6994564 () Bool)

(assert (=> b!6155836 m!6994564))

(declare-fun m!6994566 () Bool)

(assert (=> b!6155842 m!6994566))

(declare-fun m!6994568 () Bool)

(assert (=> b!6155837 m!6994568))

(assert (=> b!6155839 m!6994268))

(declare-fun m!6994570 () Bool)

(assert (=> b!6155839 m!6994570))

(assert (=> b!6155839 m!6994570))

(declare-fun m!6994572 () Bool)

(assert (=> b!6155839 m!6994572))

(assert (=> b!6155838 m!6994268))

(declare-fun m!6994574 () Bool)

(assert (=> b!6155838 m!6994574))

(declare-fun m!6994576 () Bool)

(assert (=> b!6155843 m!6994576))

(declare-fun m!6994578 () Bool)

(assert (=> d!1928747 m!6994578))

(assert (=> d!1928747 m!6994268))

(declare-fun m!6994580 () Bool)

(assert (=> d!1928747 m!6994580))

(assert (=> b!6155840 m!6994268))

(declare-fun m!6994582 () Bool)

(assert (=> b!6155840 m!6994582))

(assert (=> b!6155365 d!1928747))

(declare-fun bs!1525736 () Bool)

(declare-fun d!1928751 () Bool)

(assert (= bs!1525736 (and d!1928751 d!1928715)))

(declare-fun lambda!335823 () Int)

(assert (=> bs!1525736 (= lambda!335823 lambda!335816)))

(declare-fun bs!1525737 () Bool)

(assert (= bs!1525737 (and d!1928751 d!1928719)))

(assert (=> bs!1525737 (= lambda!335823 lambda!335817)))

(declare-fun bs!1525738 () Bool)

(assert (= bs!1525738 (and d!1928751 d!1928747)))

(assert (=> bs!1525738 (= lambda!335823 lambda!335820)))

(declare-fun lt!2335190 () List!64596)

(assert (=> d!1928751 (forall!15220 lt!2335190 lambda!335823)))

(declare-fun e!3750774 () List!64596)

(assert (=> d!1928751 (= lt!2335190 e!3750774)))

(declare-fun c!1108293 () Bool)

(assert (=> d!1928751 (= c!1108293 ((_ is Cons!64473) zl!343))))

(assert (=> d!1928751 (= (unfocusZipperList!1520 zl!343) lt!2335190)))

(declare-fun b!6155849 () Bool)

(assert (=> b!6155849 (= e!3750774 (Cons!64472 (generalisedConcat!1696 (exprs!5983 (h!70921 zl!343))) (unfocusZipperList!1520 (t!378089 zl!343))))))

(declare-fun b!6155850 () Bool)

(assert (=> b!6155850 (= e!3750774 Nil!64472)))

(assert (= (and d!1928751 c!1108293) b!6155849))

(assert (= (and d!1928751 (not c!1108293)) b!6155850))

(declare-fun m!6994588 () Bool)

(assert (=> d!1928751 m!6994588))

(assert (=> b!6155849 m!6994186))

(declare-fun m!6994590 () Bool)

(assert (=> b!6155849 m!6994590))

(assert (=> b!6155365 d!1928751))

(declare-fun d!1928757 () Bool)

(declare-fun c!1108294 () Bool)

(assert (=> d!1928757 (= c!1108294 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750775 () Bool)

(assert (=> d!1928757 (= (matchZipper!2111 lt!2335127 (t!378090 s!2326)) e!3750775)))

(declare-fun b!6155851 () Bool)

(assert (=> b!6155851 (= e!3750775 (nullableZipper!1879 lt!2335127))))

(declare-fun b!6155852 () Bool)

(assert (=> b!6155852 (= e!3750775 (matchZipper!2111 (derivationStepZipper!2071 lt!2335127 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928757 c!1108294) b!6155851))

(assert (= (and d!1928757 (not c!1108294)) b!6155852))

(assert (=> d!1928757 m!6994350))

(declare-fun m!6994592 () Bool)

(assert (=> b!6155851 m!6994592))

(assert (=> b!6155852 m!6994354))

(assert (=> b!6155852 m!6994354))

(declare-fun m!6994594 () Bool)

(assert (=> b!6155852 m!6994594))

(assert (=> b!6155852 m!6994358))

(assert (=> b!6155852 m!6994594))

(assert (=> b!6155852 m!6994358))

(declare-fun m!6994596 () Bool)

(assert (=> b!6155852 m!6994596))

(assert (=> b!6155355 d!1928757))

(declare-fun d!1928759 () Bool)

(declare-fun c!1108295 () Bool)

(assert (=> d!1928759 (= c!1108295 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750776 () Bool)

(assert (=> d!1928759 (= (matchZipper!2111 lt!2335136 (t!378090 s!2326)) e!3750776)))

(declare-fun b!6155853 () Bool)

(assert (=> b!6155853 (= e!3750776 (nullableZipper!1879 lt!2335136))))

(declare-fun b!6155854 () Bool)

(assert (=> b!6155854 (= e!3750776 (matchZipper!2111 (derivationStepZipper!2071 lt!2335136 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928759 c!1108295) b!6155853))

(assert (= (and d!1928759 (not c!1108295)) b!6155854))

(assert (=> d!1928759 m!6994350))

(declare-fun m!6994598 () Bool)

(assert (=> b!6155853 m!6994598))

(assert (=> b!6155854 m!6994354))

(assert (=> b!6155854 m!6994354))

(declare-fun m!6994600 () Bool)

(assert (=> b!6155854 m!6994600))

(assert (=> b!6155854 m!6994358))

(assert (=> b!6155854 m!6994600))

(assert (=> b!6155854 m!6994358))

(declare-fun m!6994602 () Bool)

(assert (=> b!6155854 m!6994602))

(assert (=> b!6155355 d!1928759))

(declare-fun d!1928761 () Bool)

(declare-fun c!1108296 () Bool)

(assert (=> d!1928761 (= c!1108296 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750777 () Bool)

(assert (=> d!1928761 (= (matchZipper!2111 lt!2335135 (t!378090 s!2326)) e!3750777)))

(declare-fun b!6155855 () Bool)

(assert (=> b!6155855 (= e!3750777 (nullableZipper!1879 lt!2335135))))

(declare-fun b!6155856 () Bool)

(assert (=> b!6155856 (= e!3750777 (matchZipper!2111 (derivationStepZipper!2071 lt!2335135 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928761 c!1108296) b!6155855))

(assert (= (and d!1928761 (not c!1108296)) b!6155856))

(assert (=> d!1928761 m!6994350))

(declare-fun m!6994604 () Bool)

(assert (=> b!6155855 m!6994604))

(assert (=> b!6155856 m!6994354))

(assert (=> b!6155856 m!6994354))

(declare-fun m!6994606 () Bool)

(assert (=> b!6155856 m!6994606))

(assert (=> b!6155856 m!6994358))

(assert (=> b!6155856 m!6994606))

(assert (=> b!6155856 m!6994358))

(declare-fun m!6994608 () Bool)

(assert (=> b!6155856 m!6994608))

(assert (=> b!6155355 d!1928761))

(declare-fun e!3750778 () Bool)

(declare-fun d!1928763 () Bool)

(assert (=> d!1928763 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335133) (t!378090 s!2326)) e!3750778)))

(declare-fun res!2549570 () Bool)

(assert (=> d!1928763 (=> res!2549570 e!3750778)))

(assert (=> d!1928763 (= res!2549570 (matchZipper!2111 lt!2335135 (t!378090 s!2326)))))

(declare-fun lt!2335193 () Unit!157573)

(assert (=> d!1928763 (= lt!2335193 (choose!45760 lt!2335135 lt!2335133 (t!378090 s!2326)))))

(assert (=> d!1928763 (= (lemmaZipperConcatMatchesSameAsBothZippers!930 lt!2335135 lt!2335133 (t!378090 s!2326)) lt!2335193)))

(declare-fun b!6155857 () Bool)

(assert (=> b!6155857 (= e!3750778 (matchZipper!2111 lt!2335133 (t!378090 s!2326)))))

(assert (= (and d!1928763 (not res!2549570)) b!6155857))

(declare-fun m!6994610 () Bool)

(assert (=> d!1928763 m!6994610))

(assert (=> d!1928763 m!6994216))

(declare-fun m!6994612 () Bool)

(assert (=> d!1928763 m!6994612))

(assert (=> b!6155857 m!6994266))

(assert (=> b!6155355 d!1928763))

(declare-fun bs!1525739 () Bool)

(declare-fun d!1928765 () Bool)

(assert (= bs!1525739 (and d!1928765 d!1928715)))

(declare-fun lambda!335825 () Int)

(assert (=> bs!1525739 (= lambda!335825 lambda!335816)))

(declare-fun bs!1525740 () Bool)

(assert (= bs!1525740 (and d!1928765 d!1928719)))

(assert (=> bs!1525740 (= lambda!335825 lambda!335817)))

(declare-fun bs!1525741 () Bool)

(assert (= bs!1525741 (and d!1928765 d!1928747)))

(assert (=> bs!1525741 (= lambda!335825 lambda!335820)))

(declare-fun bs!1525742 () Bool)

(assert (= bs!1525742 (and d!1928765 d!1928751)))

(assert (=> bs!1525742 (= lambda!335825 lambda!335823)))

(assert (=> d!1928765 (= (inv!83494 setElem!41694) (forall!15220 (exprs!5983 setElem!41694) lambda!335825))))

(declare-fun bs!1525743 () Bool)

(assert (= bs!1525743 d!1928765))

(declare-fun m!6994614 () Bool)

(assert (=> bs!1525743 m!6994614))

(assert (=> setNonEmpty!41694 d!1928765))

(declare-fun bs!1525748 () Bool)

(declare-fun d!1928767 () Bool)

(assert (= bs!1525748 (and d!1928767 d!1928765)))

(declare-fun lambda!335830 () Int)

(assert (=> bs!1525748 (= lambda!335830 lambda!335825)))

(declare-fun bs!1525749 () Bool)

(assert (= bs!1525749 (and d!1928767 d!1928715)))

(assert (=> bs!1525749 (= lambda!335830 lambda!335816)))

(declare-fun bs!1525750 () Bool)

(assert (= bs!1525750 (and d!1928767 d!1928751)))

(assert (=> bs!1525750 (= lambda!335830 lambda!335823)))

(declare-fun bs!1525751 () Bool)

(assert (= bs!1525751 (and d!1928767 d!1928747)))

(assert (=> bs!1525751 (= lambda!335830 lambda!335820)))

(declare-fun bs!1525752 () Bool)

(assert (= bs!1525752 (and d!1928767 d!1928719)))

(assert (=> bs!1525752 (= lambda!335830 lambda!335817)))

(declare-fun b!6155882 () Bool)

(declare-fun e!3750794 () Bool)

(declare-fun lt!2335199 () Regex!16099)

(declare-fun isConcat!1039 (Regex!16099) Bool)

(assert (=> b!6155882 (= e!3750794 (isConcat!1039 lt!2335199))))

(declare-fun e!3750796 () Bool)

(assert (=> d!1928767 e!3750796))

(declare-fun res!2549579 () Bool)

(assert (=> d!1928767 (=> (not res!2549579) (not e!3750796))))

(assert (=> d!1928767 (= res!2549579 (validRegex!7835 lt!2335199))))

(declare-fun e!3750797 () Regex!16099)

(assert (=> d!1928767 (= lt!2335199 e!3750797)))

(declare-fun c!1108307 () Bool)

(declare-fun e!3750798 () Bool)

(assert (=> d!1928767 (= c!1108307 e!3750798)))

(declare-fun res!2549580 () Bool)

(assert (=> d!1928767 (=> (not res!2549580) (not e!3750798))))

(assert (=> d!1928767 (= res!2549580 ((_ is Cons!64472) (exprs!5983 (h!70921 zl!343))))))

(assert (=> d!1928767 (forall!15220 (exprs!5983 (h!70921 zl!343)) lambda!335830)))

(assert (=> d!1928767 (= (generalisedConcat!1696 (exprs!5983 (h!70921 zl!343))) lt!2335199)))

(declare-fun b!6155883 () Bool)

(assert (=> b!6155883 (= e!3750794 (= lt!2335199 (head!12720 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155884 () Bool)

(assert (=> b!6155884 (= e!3750798 (isEmpty!36436 (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155885 () Bool)

(declare-fun e!3750795 () Regex!16099)

(assert (=> b!6155885 (= e!3750797 e!3750795)))

(declare-fun c!1108305 () Bool)

(assert (=> b!6155885 (= c!1108305 ((_ is Cons!64472) (exprs!5983 (h!70921 zl!343))))))

(declare-fun b!6155886 () Bool)

(assert (=> b!6155886 (= e!3750795 (Concat!24944 (h!70920 (exprs!5983 (h!70921 zl!343))) (generalisedConcat!1696 (t!378088 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6155887 () Bool)

(declare-fun e!3750793 () Bool)

(assert (=> b!6155887 (= e!3750796 e!3750793)))

(declare-fun c!1108306 () Bool)

(assert (=> b!6155887 (= c!1108306 (isEmpty!36436 (exprs!5983 (h!70921 zl!343))))))

(declare-fun b!6155888 () Bool)

(assert (=> b!6155888 (= e!3750793 e!3750794)))

(declare-fun c!1108308 () Bool)

(assert (=> b!6155888 (= c!1108308 (isEmpty!36436 (tail!11805 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155889 () Bool)

(assert (=> b!6155889 (= e!3750795 EmptyExpr!16099)))

(declare-fun b!6155890 () Bool)

(declare-fun isEmptyExpr!1516 (Regex!16099) Bool)

(assert (=> b!6155890 (= e!3750793 (isEmptyExpr!1516 lt!2335199))))

(declare-fun b!6155891 () Bool)

(assert (=> b!6155891 (= e!3750797 (h!70920 (exprs!5983 (h!70921 zl!343))))))

(assert (= (and d!1928767 res!2549580) b!6155884))

(assert (= (and d!1928767 c!1108307) b!6155891))

(assert (= (and d!1928767 (not c!1108307)) b!6155885))

(assert (= (and b!6155885 c!1108305) b!6155886))

(assert (= (and b!6155885 (not c!1108305)) b!6155889))

(assert (= (and d!1928767 res!2549579) b!6155887))

(assert (= (and b!6155887 c!1108306) b!6155890))

(assert (= (and b!6155887 (not c!1108306)) b!6155888))

(assert (= (and b!6155888 c!1108308) b!6155883))

(assert (= (and b!6155888 (not c!1108308)) b!6155882))

(declare-fun m!6994620 () Bool)

(assert (=> b!6155888 m!6994620))

(assert (=> b!6155888 m!6994620))

(declare-fun m!6994622 () Bool)

(assert (=> b!6155888 m!6994622))

(declare-fun m!6994624 () Bool)

(assert (=> b!6155886 m!6994624))

(declare-fun m!6994626 () Bool)

(assert (=> b!6155882 m!6994626))

(declare-fun m!6994628 () Bool)

(assert (=> b!6155890 m!6994628))

(assert (=> b!6155884 m!6994180))

(declare-fun m!6994630 () Bool)

(assert (=> b!6155883 m!6994630))

(declare-fun m!6994632 () Bool)

(assert (=> d!1928767 m!6994632))

(declare-fun m!6994634 () Bool)

(assert (=> d!1928767 m!6994634))

(declare-fun m!6994636 () Bool)

(assert (=> b!6155887 m!6994636))

(assert (=> b!6155356 d!1928767))

(declare-fun d!1928771 () Bool)

(assert (=> d!1928771 (= (isEmpty!36437 (t!378089 zl!343)) ((_ is Nil!64473) (t!378089 zl!343)))))

(assert (=> b!6155367 d!1928771))

(declare-fun d!1928773 () Bool)

(declare-fun e!3750805 () Bool)

(assert (=> d!1928773 e!3750805))

(declare-fun res!2549591 () Bool)

(assert (=> d!1928773 (=> (not res!2549591) (not e!3750805))))

(declare-fun lt!2335202 () List!64597)

(declare-fun noDuplicate!1945 (List!64597) Bool)

(assert (=> d!1928773 (= res!2549591 (noDuplicate!1945 lt!2335202))))

(declare-fun choose!45764 ((InoxSet Context!10966)) List!64597)

(assert (=> d!1928773 (= lt!2335202 (choose!45764 z!1189))))

(assert (=> d!1928773 (= (toList!9883 z!1189) lt!2335202)))

(declare-fun b!6155902 () Bool)

(declare-fun content!12018 (List!64597) (InoxSet Context!10966))

(assert (=> b!6155902 (= e!3750805 (= (content!12018 lt!2335202) z!1189))))

(assert (= (and d!1928773 res!2549591) b!6155902))

(declare-fun m!6994638 () Bool)

(assert (=> d!1928773 m!6994638))

(declare-fun m!6994640 () Bool)

(assert (=> d!1928773 m!6994640))

(declare-fun m!6994642 () Bool)

(assert (=> b!6155902 m!6994642))

(assert (=> b!6155357 d!1928773))

(declare-fun d!1928775 () Bool)

(declare-fun e!3750806 () Bool)

(assert (=> d!1928775 (= (matchZipper!2111 ((_ map or) lt!2335127 lt!2335111) (t!378090 s!2326)) e!3750806)))

(declare-fun res!2549592 () Bool)

(assert (=> d!1928775 (=> res!2549592 e!3750806)))

(assert (=> d!1928775 (= res!2549592 (matchZipper!2111 lt!2335127 (t!378090 s!2326)))))

(declare-fun lt!2335203 () Unit!157573)

(assert (=> d!1928775 (= lt!2335203 (choose!45760 lt!2335127 lt!2335111 (t!378090 s!2326)))))

(assert (=> d!1928775 (= (lemmaZipperConcatMatchesSameAsBothZippers!930 lt!2335127 lt!2335111 (t!378090 s!2326)) lt!2335203)))

(declare-fun b!6155903 () Bool)

(assert (=> b!6155903 (= e!3750806 (matchZipper!2111 lt!2335111 (t!378090 s!2326)))))

(assert (= (and d!1928775 (not res!2549592)) b!6155903))

(assert (=> d!1928775 m!6994246))

(assert (=> d!1928775 m!6994212))

(declare-fun m!6994644 () Bool)

(assert (=> d!1928775 m!6994644))

(assert (=> b!6155903 m!6994184))

(assert (=> b!6155368 d!1928775))

(assert (=> b!6155368 d!1928757))

(declare-fun d!1928777 () Bool)

(declare-fun c!1108309 () Bool)

(assert (=> d!1928777 (= c!1108309 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750807 () Bool)

(assert (=> d!1928777 (= (matchZipper!2111 ((_ map or) lt!2335127 lt!2335111) (t!378090 s!2326)) e!3750807)))

(declare-fun b!6155904 () Bool)

(assert (=> b!6155904 (= e!3750807 (nullableZipper!1879 ((_ map or) lt!2335127 lt!2335111)))))

(declare-fun b!6155905 () Bool)

(assert (=> b!6155905 (= e!3750807 (matchZipper!2111 (derivationStepZipper!2071 ((_ map or) lt!2335127 lt!2335111) (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928777 c!1108309) b!6155904))

(assert (= (and d!1928777 (not c!1108309)) b!6155905))

(assert (=> d!1928777 m!6994350))

(declare-fun m!6994646 () Bool)

(assert (=> b!6155904 m!6994646))

(assert (=> b!6155905 m!6994354))

(assert (=> b!6155905 m!6994354))

(declare-fun m!6994648 () Bool)

(assert (=> b!6155905 m!6994648))

(assert (=> b!6155905 m!6994358))

(assert (=> b!6155905 m!6994648))

(assert (=> b!6155905 m!6994358))

(declare-fun m!6994650 () Bool)

(assert (=> b!6155905 m!6994650))

(assert (=> b!6155368 d!1928777))

(declare-fun d!1928779 () Bool)

(assert (=> d!1928779 (= (flatMap!1604 z!1189 lambda!335789) (choose!45761 z!1189 lambda!335789))))

(declare-fun bs!1525754 () Bool)

(assert (= bs!1525754 d!1928779))

(declare-fun m!6994652 () Bool)

(assert (=> bs!1525754 m!6994652))

(assert (=> b!6155358 d!1928779))

(declare-fun bm!512312 () Bool)

(declare-fun c!1108329 () Bool)

(declare-fun c!1108328 () Bool)

(declare-fun c!1108330 () Bool)

(declare-fun call!512317 () (InoxSet Context!10966))

(declare-fun call!512318 () List!64596)

(assert (=> bm!512312 (= call!512317 (derivationStepZipperDown!1347 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))) (ite (or c!1108329 c!1108330) lt!2335134 (Context!10967 call!512318)) (h!70922 s!2326)))))

(declare-fun b!6155960 () Bool)

(declare-fun e!3750848 () (InoxSet Context!10966))

(declare-fun call!512322 () (InoxSet Context!10966))

(assert (=> b!6155960 (= e!3750848 ((_ map or) call!512322 call!512317))))

(declare-fun b!6155961 () Bool)

(declare-fun e!3750847 () (InoxSet Context!10966))

(assert (=> b!6155961 (= e!3750847 e!3750848)))

(assert (=> b!6155961 (= c!1108329 ((_ is Union!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155962 () Bool)

(declare-fun e!3750849 () (InoxSet Context!10966))

(assert (=> b!6155962 (= e!3750849 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155963 () Bool)

(declare-fun e!3750844 () (InoxSet Context!10966))

(declare-fun e!3750846 () (InoxSet Context!10966))

(assert (=> b!6155963 (= e!3750844 e!3750846)))

(assert (=> b!6155963 (= c!1108328 ((_ is Concat!24944) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155964 () Bool)

(assert (=> b!6155964 (= e!3750847 (store ((as const (Array Context!10966 Bool)) false) lt!2335134 true))))

(declare-fun b!6155965 () Bool)

(declare-fun call!512320 () (InoxSet Context!10966))

(assert (=> b!6155965 (= e!3750844 ((_ map or) call!512322 call!512320))))

(declare-fun call!512319 () List!64596)

(declare-fun bm!512314 () Bool)

(declare-fun $colon$colon!1976 (List!64596 Regex!16099) List!64596)

(assert (=> bm!512314 (= call!512319 ($colon$colon!1976 (exprs!5983 lt!2335134) (ite (or c!1108330 c!1108328) (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (h!70920 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6155966 () Bool)

(declare-fun c!1108331 () Bool)

(assert (=> b!6155966 (= c!1108331 ((_ is Star!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> b!6155966 (= e!3750846 e!3750849)))

(declare-fun bm!512313 () Bool)

(assert (=> bm!512313 (= call!512320 call!512317)))

(declare-fun d!1928781 () Bool)

(declare-fun c!1108332 () Bool)

(assert (=> d!1928781 (= c!1108332 (and ((_ is ElementMatch!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))) (= (c!1108140 (h!70920 (exprs!5983 (h!70921 zl!343)))) (h!70922 s!2326))))))

(assert (=> d!1928781 (= (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (h!70921 zl!343))) lt!2335134 (h!70922 s!2326)) e!3750847)))

(declare-fun b!6155967 () Bool)

(declare-fun call!512321 () (InoxSet Context!10966))

(assert (=> b!6155967 (= e!3750849 call!512321)))

(declare-fun bm!512315 () Bool)

(assert (=> bm!512315 (= call!512318 call!512319)))

(declare-fun bm!512316 () Bool)

(assert (=> bm!512316 (= call!512322 (derivationStepZipperDown!1347 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))) (ite c!1108329 lt!2335134 (Context!10967 call!512319)) (h!70922 s!2326)))))

(declare-fun bm!512317 () Bool)

(assert (=> bm!512317 (= call!512321 call!512320)))

(declare-fun b!6155968 () Bool)

(assert (=> b!6155968 (= e!3750846 call!512321)))

(declare-fun b!6155969 () Bool)

(declare-fun e!3750845 () Bool)

(assert (=> b!6155969 (= e!3750845 (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6155970 () Bool)

(assert (=> b!6155970 (= c!1108330 e!3750845)))

(declare-fun res!2549611 () Bool)

(assert (=> b!6155970 (=> (not res!2549611) (not e!3750845))))

(assert (=> b!6155970 (= res!2549611 ((_ is Concat!24944) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> b!6155970 (= e!3750848 e!3750844)))

(assert (= (and d!1928781 c!1108332) b!6155964))

(assert (= (and d!1928781 (not c!1108332)) b!6155961))

(assert (= (and b!6155961 c!1108329) b!6155960))

(assert (= (and b!6155961 (not c!1108329)) b!6155970))

(assert (= (and b!6155970 res!2549611) b!6155969))

(assert (= (and b!6155970 c!1108330) b!6155965))

(assert (= (and b!6155970 (not c!1108330)) b!6155963))

(assert (= (and b!6155963 c!1108328) b!6155968))

(assert (= (and b!6155963 (not c!1108328)) b!6155966))

(assert (= (and b!6155966 c!1108331) b!6155967))

(assert (= (and b!6155966 (not c!1108331)) b!6155962))

(assert (= (or b!6155968 b!6155967) bm!512315))

(assert (= (or b!6155968 b!6155967) bm!512317))

(assert (= (or b!6155965 bm!512315) bm!512314))

(assert (= (or b!6155965 bm!512317) bm!512313))

(assert (= (or b!6155960 bm!512313) bm!512312))

(assert (= (or b!6155960 b!6155965) bm!512316))

(declare-fun m!6994696 () Bool)

(assert (=> bm!512316 m!6994696))

(declare-fun m!6994698 () Bool)

(assert (=> b!6155969 m!6994698))

(declare-fun m!6994700 () Bool)

(assert (=> bm!512314 m!6994700))

(declare-fun m!6994702 () Bool)

(assert (=> b!6155964 m!6994702))

(declare-fun m!6994704 () Bool)

(assert (=> bm!512312 m!6994704))

(assert (=> b!6155358 d!1928781))

(declare-fun d!1928805 () Bool)

(assert (=> d!1928805 (= (nullable!6092 (h!70920 (exprs!5983 (h!70921 zl!343)))) (nullableFct!2056 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun bs!1525766 () Bool)

(assert (= bs!1525766 d!1928805))

(declare-fun m!6994706 () Bool)

(assert (=> bs!1525766 m!6994706))

(assert (=> b!6155358 d!1928805))

(declare-fun b!6155976 () Bool)

(declare-fun e!3750854 () (InoxSet Context!10966))

(declare-fun e!3750853 () (InoxSet Context!10966))

(assert (=> b!6155976 (= e!3750854 e!3750853)))

(declare-fun c!1108335 () Bool)

(assert (=> b!6155976 (= c!1108335 ((_ is Cons!64472) (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))

(declare-fun d!1928807 () Bool)

(declare-fun c!1108336 () Bool)

(declare-fun e!3750855 () Bool)

(assert (=> d!1928807 (= c!1108336 e!3750855)))

(declare-fun res!2549613 () Bool)

(assert (=> d!1928807 (=> (not res!2549613) (not e!3750855))))

(assert (=> d!1928807 (= res!2549613 ((_ is Cons!64472) (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))

(assert (=> d!1928807 (= (derivationStepZipperUp!1273 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))) (h!70922 s!2326)) e!3750854)))

(declare-fun b!6155977 () Bool)

(assert (=> b!6155977 (= e!3750853 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155978 () Bool)

(assert (=> b!6155978 (= e!3750855 (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))

(declare-fun b!6155979 () Bool)

(declare-fun call!512324 () (InoxSet Context!10966))

(assert (=> b!6155979 (= e!3750853 call!512324)))

(declare-fun bm!512319 () Bool)

(assert (=> bm!512319 (= call!512324 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (h!70922 s!2326)))))

(declare-fun b!6155980 () Bool)

(assert (=> b!6155980 (= e!3750854 ((_ map or) call!512324 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (h!70922 s!2326))))))

(assert (= (and d!1928807 res!2549613) b!6155978))

(assert (= (and d!1928807 c!1108336) b!6155980))

(assert (= (and d!1928807 (not c!1108336)) b!6155976))

(assert (= (and b!6155976 c!1108335) b!6155979))

(assert (= (and b!6155976 (not c!1108335)) b!6155977))

(assert (= (or b!6155980 b!6155979) bm!512319))

(declare-fun m!6994708 () Bool)

(assert (=> b!6155978 m!6994708))

(declare-fun m!6994710 () Bool)

(assert (=> bm!512319 m!6994710))

(declare-fun m!6994712 () Bool)

(assert (=> b!6155980 m!6994712))

(assert (=> b!6155358 d!1928807))

(declare-fun b!6155981 () Bool)

(declare-fun e!3750857 () (InoxSet Context!10966))

(declare-fun e!3750856 () (InoxSet Context!10966))

(assert (=> b!6155981 (= e!3750857 e!3750856)))

(declare-fun c!1108337 () Bool)

(assert (=> b!6155981 (= c!1108337 ((_ is Cons!64472) (exprs!5983 lt!2335134)))))

(declare-fun d!1928809 () Bool)

(declare-fun c!1108338 () Bool)

(declare-fun e!3750858 () Bool)

(assert (=> d!1928809 (= c!1108338 e!3750858)))

(declare-fun res!2549614 () Bool)

(assert (=> d!1928809 (=> (not res!2549614) (not e!3750858))))

(assert (=> d!1928809 (= res!2549614 ((_ is Cons!64472) (exprs!5983 lt!2335134)))))

(assert (=> d!1928809 (= (derivationStepZipperUp!1273 lt!2335134 (h!70922 s!2326)) e!3750857)))

(declare-fun b!6155982 () Bool)

(assert (=> b!6155982 (= e!3750856 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155983 () Bool)

(assert (=> b!6155983 (= e!3750858 (nullable!6092 (h!70920 (exprs!5983 lt!2335134))))))

(declare-fun b!6155984 () Bool)

(declare-fun call!512325 () (InoxSet Context!10966))

(assert (=> b!6155984 (= e!3750856 call!512325)))

(declare-fun bm!512320 () Bool)

(assert (=> bm!512320 (= call!512325 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 lt!2335134)) (Context!10967 (t!378088 (exprs!5983 lt!2335134))) (h!70922 s!2326)))))

(declare-fun b!6155985 () Bool)

(assert (=> b!6155985 (= e!3750857 ((_ map or) call!512325 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 lt!2335134))) (h!70922 s!2326))))))

(assert (= (and d!1928809 res!2549614) b!6155983))

(assert (= (and d!1928809 c!1108338) b!6155985))

(assert (= (and d!1928809 (not c!1108338)) b!6155981))

(assert (= (and b!6155981 c!1108337) b!6155984))

(assert (= (and b!6155981 (not c!1108337)) b!6155982))

(assert (= (or b!6155985 b!6155984) bm!512320))

(declare-fun m!6994714 () Bool)

(assert (=> b!6155983 m!6994714))

(declare-fun m!6994716 () Bool)

(assert (=> bm!512320 m!6994716))

(declare-fun m!6994718 () Bool)

(assert (=> b!6155985 m!6994718))

(assert (=> b!6155358 d!1928809))

(declare-fun d!1928811 () Bool)

(assert (=> d!1928811 (= (flatMap!1604 z!1189 lambda!335789) (dynLambda!25417 lambda!335789 (h!70921 zl!343)))))

(declare-fun lt!2335209 () Unit!157573)

(assert (=> d!1928811 (= lt!2335209 (choose!45762 z!1189 (h!70921 zl!343) lambda!335789))))

(assert (=> d!1928811 (= z!1189 (store ((as const (Array Context!10966 Bool)) false) (h!70921 zl!343) true))))

(assert (=> d!1928811 (= (lemmaFlatMapOnSingletonSet!1130 z!1189 (h!70921 zl!343) lambda!335789) lt!2335209)))

(declare-fun b_lambda!234311 () Bool)

(assert (=> (not b_lambda!234311) (not d!1928811)))

(declare-fun bs!1525768 () Bool)

(assert (= bs!1525768 d!1928811))

(assert (=> bs!1525768 m!6994250))

(declare-fun m!6994722 () Bool)

(assert (=> bs!1525768 m!6994722))

(declare-fun m!6994724 () Bool)

(assert (=> bs!1525768 m!6994724))

(declare-fun m!6994726 () Bool)

(assert (=> bs!1525768 m!6994726))

(assert (=> b!6155358 d!1928811))

(declare-fun b!6155986 () Bool)

(declare-fun e!3750860 () (InoxSet Context!10966))

(declare-fun e!3750859 () (InoxSet Context!10966))

(assert (=> b!6155986 (= e!3750860 e!3750859)))

(declare-fun c!1108339 () Bool)

(assert (=> b!6155986 (= c!1108339 ((_ is Cons!64472) (exprs!5983 (h!70921 zl!343))))))

(declare-fun d!1928815 () Bool)

(declare-fun c!1108340 () Bool)

(declare-fun e!3750861 () Bool)

(assert (=> d!1928815 (= c!1108340 e!3750861)))

(declare-fun res!2549615 () Bool)

(assert (=> d!1928815 (=> (not res!2549615) (not e!3750861))))

(assert (=> d!1928815 (= res!2549615 ((_ is Cons!64472) (exprs!5983 (h!70921 zl!343))))))

(assert (=> d!1928815 (= (derivationStepZipperUp!1273 (h!70921 zl!343) (h!70922 s!2326)) e!3750860)))

(declare-fun b!6155987 () Bool)

(assert (=> b!6155987 (= e!3750859 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155988 () Bool)

(assert (=> b!6155988 (= e!3750861 (nullable!6092 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6155989 () Bool)

(declare-fun call!512326 () (InoxSet Context!10966))

(assert (=> b!6155989 (= e!3750859 call!512326)))

(declare-fun bm!512321 () Bool)

(assert (=> bm!512321 (= call!512326 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (h!70921 zl!343))) (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) (h!70922 s!2326)))))

(declare-fun b!6155990 () Bool)

(assert (=> b!6155990 (= e!3750860 ((_ map or) call!512326 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) (h!70922 s!2326))))))

(assert (= (and d!1928815 res!2549615) b!6155988))

(assert (= (and d!1928815 c!1108340) b!6155990))

(assert (= (and d!1928815 (not c!1108340)) b!6155986))

(assert (= (and b!6155986 c!1108339) b!6155989))

(assert (= (and b!6155986 (not c!1108339)) b!6155987))

(assert (= (or b!6155990 b!6155989) bm!512321))

(assert (=> b!6155988 m!6994256))

(declare-fun m!6994728 () Bool)

(assert (=> bm!512321 m!6994728))

(declare-fun m!6994730 () Bool)

(assert (=> b!6155990 m!6994730))

(assert (=> b!6155358 d!1928815))

(declare-fun c!1108342 () Bool)

(declare-fun call!512328 () List!64596)

(declare-fun c!1108343 () Bool)

(declare-fun bm!512322 () Bool)

(declare-fun c!1108341 () Bool)

(declare-fun call!512327 () (InoxSet Context!10966))

(assert (=> bm!512322 (= call!512327 (derivationStepZipperDown!1347 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292)))))) (ite (or c!1108342 c!1108343) lt!2335134 (Context!10967 call!512328)) (h!70922 s!2326)))))

(declare-fun b!6155991 () Bool)

(declare-fun e!3750866 () (InoxSet Context!10966))

(declare-fun call!512332 () (InoxSet Context!10966))

(assert (=> b!6155991 (= e!3750866 ((_ map or) call!512332 call!512327))))

(declare-fun b!6155992 () Bool)

(declare-fun e!3750865 () (InoxSet Context!10966))

(assert (=> b!6155992 (= e!3750865 e!3750866)))

(assert (=> b!6155992 (= c!1108342 ((_ is Union!16099) (regTwo!32711 (regOne!32710 r!7292))))))

(declare-fun b!6155993 () Bool)

(declare-fun e!3750867 () (InoxSet Context!10966))

(assert (=> b!6155993 (= e!3750867 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6155994 () Bool)

(declare-fun e!3750862 () (InoxSet Context!10966))

(declare-fun e!3750864 () (InoxSet Context!10966))

(assert (=> b!6155994 (= e!3750862 e!3750864)))

(assert (=> b!6155994 (= c!1108341 ((_ is Concat!24944) (regTwo!32711 (regOne!32710 r!7292))))))

(declare-fun b!6155995 () Bool)

(assert (=> b!6155995 (= e!3750865 (store ((as const (Array Context!10966 Bool)) false) lt!2335134 true))))

(declare-fun b!6155996 () Bool)

(declare-fun call!512330 () (InoxSet Context!10966))

(assert (=> b!6155996 (= e!3750862 ((_ map or) call!512332 call!512330))))

(declare-fun bm!512324 () Bool)

(declare-fun call!512329 () List!64596)

(assert (=> bm!512324 (= call!512329 ($colon$colon!1976 (exprs!5983 lt!2335134) (ite (or c!1108343 c!1108341) (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (regTwo!32711 (regOne!32710 r!7292)))))))

(declare-fun b!6155997 () Bool)

(declare-fun c!1108344 () Bool)

(assert (=> b!6155997 (= c!1108344 ((_ is Star!16099) (regTwo!32711 (regOne!32710 r!7292))))))

(assert (=> b!6155997 (= e!3750864 e!3750867)))

(declare-fun bm!512323 () Bool)

(assert (=> bm!512323 (= call!512330 call!512327)))

(declare-fun d!1928817 () Bool)

(declare-fun c!1108345 () Bool)

(assert (=> d!1928817 (= c!1108345 (and ((_ is ElementMatch!16099) (regTwo!32711 (regOne!32710 r!7292))) (= (c!1108140 (regTwo!32711 (regOne!32710 r!7292))) (h!70922 s!2326))))))

(assert (=> d!1928817 (= (derivationStepZipperDown!1347 (regTwo!32711 (regOne!32710 r!7292)) lt!2335134 (h!70922 s!2326)) e!3750865)))

(declare-fun b!6155998 () Bool)

(declare-fun call!512331 () (InoxSet Context!10966))

(assert (=> b!6155998 (= e!3750867 call!512331)))

(declare-fun bm!512325 () Bool)

(assert (=> bm!512325 (= call!512328 call!512329)))

(declare-fun bm!512326 () Bool)

(assert (=> bm!512326 (= call!512332 (derivationStepZipperDown!1347 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))) (ite c!1108342 lt!2335134 (Context!10967 call!512329)) (h!70922 s!2326)))))

(declare-fun bm!512327 () Bool)

(assert (=> bm!512327 (= call!512331 call!512330)))

(declare-fun b!6155999 () Bool)

(assert (=> b!6155999 (= e!3750864 call!512331)))

(declare-fun b!6156000 () Bool)

(declare-fun e!3750863 () Bool)

(assert (=> b!6156000 (= e!3750863 (nullable!6092 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))))))

(declare-fun b!6156001 () Bool)

(assert (=> b!6156001 (= c!1108343 e!3750863)))

(declare-fun res!2549616 () Bool)

(assert (=> b!6156001 (=> (not res!2549616) (not e!3750863))))

(assert (=> b!6156001 (= res!2549616 ((_ is Concat!24944) (regTwo!32711 (regOne!32710 r!7292))))))

(assert (=> b!6156001 (= e!3750866 e!3750862)))

(assert (= (and d!1928817 c!1108345) b!6155995))

(assert (= (and d!1928817 (not c!1108345)) b!6155992))

(assert (= (and b!6155992 c!1108342) b!6155991))

(assert (= (and b!6155992 (not c!1108342)) b!6156001))

(assert (= (and b!6156001 res!2549616) b!6156000))

(assert (= (and b!6156001 c!1108343) b!6155996))

(assert (= (and b!6156001 (not c!1108343)) b!6155994))

(assert (= (and b!6155994 c!1108341) b!6155999))

(assert (= (and b!6155994 (not c!1108341)) b!6155997))

(assert (= (and b!6155997 c!1108344) b!6155998))

(assert (= (and b!6155997 (not c!1108344)) b!6155993))

(assert (= (or b!6155999 b!6155998) bm!512325))

(assert (= (or b!6155999 b!6155998) bm!512327))

(assert (= (or b!6155996 bm!512325) bm!512324))

(assert (= (or b!6155996 bm!512327) bm!512323))

(assert (= (or b!6155991 bm!512323) bm!512322))

(assert (= (or b!6155991 b!6155996) bm!512326))

(declare-fun m!6994732 () Bool)

(assert (=> bm!512326 m!6994732))

(declare-fun m!6994734 () Bool)

(assert (=> b!6156000 m!6994734))

(declare-fun m!6994736 () Bool)

(assert (=> bm!512324 m!6994736))

(assert (=> b!6155995 m!6994702))

(declare-fun m!6994738 () Bool)

(assert (=> bm!512322 m!6994738))

(assert (=> b!6155369 d!1928817))

(declare-fun c!1108348 () Bool)

(declare-fun c!1108347 () Bool)

(declare-fun bm!512328 () Bool)

(declare-fun call!512333 () (InoxSet Context!10966))

(declare-fun c!1108346 () Bool)

(declare-fun call!512334 () List!64596)

(assert (=> bm!512328 (= call!512333 (derivationStepZipperDown!1347 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292)))))) (ite (or c!1108347 c!1108348) lt!2335134 (Context!10967 call!512334)) (h!70922 s!2326)))))

(declare-fun b!6156004 () Bool)

(declare-fun e!3750874 () (InoxSet Context!10966))

(declare-fun call!512338 () (InoxSet Context!10966))

(assert (=> b!6156004 (= e!3750874 ((_ map or) call!512338 call!512333))))

(declare-fun b!6156005 () Bool)

(declare-fun e!3750873 () (InoxSet Context!10966))

(assert (=> b!6156005 (= e!3750873 e!3750874)))

(assert (=> b!6156005 (= c!1108347 ((_ is Union!16099) (regOne!32711 (regOne!32710 r!7292))))))

(declare-fun b!6156006 () Bool)

(declare-fun e!3750875 () (InoxSet Context!10966))

(assert (=> b!6156006 (= e!3750875 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156007 () Bool)

(declare-fun e!3750870 () (InoxSet Context!10966))

(declare-fun e!3750872 () (InoxSet Context!10966))

(assert (=> b!6156007 (= e!3750870 e!3750872)))

(assert (=> b!6156007 (= c!1108346 ((_ is Concat!24944) (regOne!32711 (regOne!32710 r!7292))))))

(declare-fun b!6156008 () Bool)

(assert (=> b!6156008 (= e!3750873 (store ((as const (Array Context!10966 Bool)) false) lt!2335134 true))))

(declare-fun b!6156009 () Bool)

(declare-fun call!512336 () (InoxSet Context!10966))

(assert (=> b!6156009 (= e!3750870 ((_ map or) call!512338 call!512336))))

(declare-fun bm!512330 () Bool)

(declare-fun call!512335 () List!64596)

(assert (=> bm!512330 (= call!512335 ($colon$colon!1976 (exprs!5983 lt!2335134) (ite (or c!1108348 c!1108346) (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (regOne!32711 (regOne!32710 r!7292)))))))

(declare-fun b!6156010 () Bool)

(declare-fun c!1108349 () Bool)

(assert (=> b!6156010 (= c!1108349 ((_ is Star!16099) (regOne!32711 (regOne!32710 r!7292))))))

(assert (=> b!6156010 (= e!3750872 e!3750875)))

(declare-fun bm!512329 () Bool)

(assert (=> bm!512329 (= call!512336 call!512333)))

(declare-fun d!1928819 () Bool)

(declare-fun c!1108350 () Bool)

(assert (=> d!1928819 (= c!1108350 (and ((_ is ElementMatch!16099) (regOne!32711 (regOne!32710 r!7292))) (= (c!1108140 (regOne!32711 (regOne!32710 r!7292))) (h!70922 s!2326))))))

(assert (=> d!1928819 (= (derivationStepZipperDown!1347 (regOne!32711 (regOne!32710 r!7292)) lt!2335134 (h!70922 s!2326)) e!3750873)))

(declare-fun b!6156011 () Bool)

(declare-fun call!512337 () (InoxSet Context!10966))

(assert (=> b!6156011 (= e!3750875 call!512337)))

(declare-fun bm!512331 () Bool)

(assert (=> bm!512331 (= call!512334 call!512335)))

(declare-fun bm!512332 () Bool)

(assert (=> bm!512332 (= call!512338 (derivationStepZipperDown!1347 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))) (ite c!1108347 lt!2335134 (Context!10967 call!512335)) (h!70922 s!2326)))))

(declare-fun bm!512333 () Bool)

(assert (=> bm!512333 (= call!512337 call!512336)))

(declare-fun b!6156012 () Bool)

(assert (=> b!6156012 (= e!3750872 call!512337)))

(declare-fun b!6156013 () Bool)

(declare-fun e!3750871 () Bool)

(assert (=> b!6156013 (= e!3750871 (nullable!6092 (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))))))

(declare-fun b!6156014 () Bool)

(assert (=> b!6156014 (= c!1108348 e!3750871)))

(declare-fun res!2549619 () Bool)

(assert (=> b!6156014 (=> (not res!2549619) (not e!3750871))))

(assert (=> b!6156014 (= res!2549619 ((_ is Concat!24944) (regOne!32711 (regOne!32710 r!7292))))))

(assert (=> b!6156014 (= e!3750874 e!3750870)))

(assert (= (and d!1928819 c!1108350) b!6156008))

(assert (= (and d!1928819 (not c!1108350)) b!6156005))

(assert (= (and b!6156005 c!1108347) b!6156004))

(assert (= (and b!6156005 (not c!1108347)) b!6156014))

(assert (= (and b!6156014 res!2549619) b!6156013))

(assert (= (and b!6156014 c!1108348) b!6156009))

(assert (= (and b!6156014 (not c!1108348)) b!6156007))

(assert (= (and b!6156007 c!1108346) b!6156012))

(assert (= (and b!6156007 (not c!1108346)) b!6156010))

(assert (= (and b!6156010 c!1108349) b!6156011))

(assert (= (and b!6156010 (not c!1108349)) b!6156006))

(assert (= (or b!6156012 b!6156011) bm!512331))

(assert (= (or b!6156012 b!6156011) bm!512333))

(assert (= (or b!6156009 bm!512331) bm!512330))

(assert (= (or b!6156009 bm!512333) bm!512329))

(assert (= (or b!6156004 bm!512329) bm!512328))

(assert (= (or b!6156004 b!6156009) bm!512332))

(declare-fun m!6994746 () Bool)

(assert (=> bm!512332 m!6994746))

(declare-fun m!6994748 () Bool)

(assert (=> b!6156013 m!6994748))

(declare-fun m!6994750 () Bool)

(assert (=> bm!512330 m!6994750))

(assert (=> b!6156008 m!6994702))

(declare-fun m!6994754 () Bool)

(assert (=> bm!512328 m!6994754))

(assert (=> b!6155369 d!1928819))

(declare-fun d!1928825 () Bool)

(assert (=> d!1928825 (= (isEmpty!36436 (t!378088 (exprs!5983 (h!70921 zl!343)))) ((_ is Nil!64472) (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> b!6155359 d!1928825))

(declare-fun b!6156088 () Bool)

(declare-fun e!3750913 () Bool)

(declare-fun lt!2335220 () Option!15990)

(declare-fun ++!14185 (List!64598 List!64598) List!64598)

(declare-fun get!22250 (Option!15990) tuple2!66156)

(assert (=> b!6156088 (= e!3750913 (= (++!14185 (_1!36381 (get!22250 lt!2335220)) (_2!36381 (get!22250 lt!2335220))) s!2326))))

(declare-fun b!6156089 () Bool)

(declare-fun res!2549634 () Bool)

(assert (=> b!6156089 (=> (not res!2549634) (not e!3750913))))

(assert (=> b!6156089 (= res!2549634 (matchR!8282 (regTwo!32710 r!7292) (_2!36381 (get!22250 lt!2335220))))))

(declare-fun b!6156090 () Bool)

(declare-fun e!3750912 () Option!15990)

(assert (=> b!6156090 (= e!3750912 None!15989)))

(declare-fun b!6156091 () Bool)

(declare-fun res!2549632 () Bool)

(assert (=> b!6156091 (=> (not res!2549632) (not e!3750913))))

(assert (=> b!6156091 (= res!2549632 (matchR!8282 (regOne!32710 r!7292) (_1!36381 (get!22250 lt!2335220))))))

(declare-fun b!6156092 () Bool)

(declare-fun e!3750914 () Option!15990)

(assert (=> b!6156092 (= e!3750914 e!3750912)))

(declare-fun c!1108356 () Bool)

(assert (=> b!6156092 (= c!1108356 ((_ is Nil!64474) s!2326))))

(declare-fun d!1928829 () Bool)

(declare-fun e!3750911 () Bool)

(assert (=> d!1928829 e!3750911))

(declare-fun res!2549633 () Bool)

(assert (=> d!1928829 (=> res!2549633 e!3750911)))

(assert (=> d!1928829 (= res!2549633 e!3750913)))

(declare-fun res!2549635 () Bool)

(assert (=> d!1928829 (=> (not res!2549635) (not e!3750913))))

(assert (=> d!1928829 (= res!2549635 (isDefined!12693 lt!2335220))))

(assert (=> d!1928829 (= lt!2335220 e!3750914)))

(declare-fun c!1108355 () Bool)

(declare-fun e!3750910 () Bool)

(assert (=> d!1928829 (= c!1108355 e!3750910)))

(declare-fun res!2549631 () Bool)

(assert (=> d!1928829 (=> (not res!2549631) (not e!3750910))))

(assert (=> d!1928829 (= res!2549631 (matchR!8282 (regOne!32710 r!7292) Nil!64474))))

(assert (=> d!1928829 (validRegex!7835 (regOne!32710 r!7292))))

(assert (=> d!1928829 (= (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326) lt!2335220)))

(declare-fun b!6156093 () Bool)

(assert (=> b!6156093 (= e!3750914 (Some!15989 (tuple2!66157 Nil!64474 s!2326)))))

(declare-fun b!6156094 () Bool)

(declare-fun lt!2335221 () Unit!157573)

(declare-fun lt!2335222 () Unit!157573)

(assert (=> b!6156094 (= lt!2335221 lt!2335222)))

(assert (=> b!6156094 (= (++!14185 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (t!378090 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2280 (List!64598 C!32468 List!64598 List!64598) Unit!157573)

(assert (=> b!6156094 (= lt!2335222 (lemmaMoveElementToOtherListKeepsConcatEq!2280 Nil!64474 (h!70922 s!2326) (t!378090 s!2326) s!2326))))

(assert (=> b!6156094 (= e!3750912 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (t!378090 s!2326) s!2326))))

(declare-fun b!6156095 () Bool)

(assert (=> b!6156095 (= e!3750910 (matchR!8282 (regTwo!32710 r!7292) s!2326))))

(declare-fun b!6156096 () Bool)

(assert (=> b!6156096 (= e!3750911 (not (isDefined!12693 lt!2335220)))))

(assert (= (and d!1928829 res!2549631) b!6156095))

(assert (= (and d!1928829 c!1108355) b!6156093))

(assert (= (and d!1928829 (not c!1108355)) b!6156092))

(assert (= (and b!6156092 c!1108356) b!6156090))

(assert (= (and b!6156092 (not c!1108356)) b!6156094))

(assert (= (and d!1928829 res!2549635) b!6156091))

(assert (= (and b!6156091 res!2549632) b!6156089))

(assert (= (and b!6156089 res!2549634) b!6156088))

(assert (= (and d!1928829 (not res!2549633)) b!6156096))

(declare-fun m!6994762 () Bool)

(assert (=> b!6156095 m!6994762))

(declare-fun m!6994764 () Bool)

(assert (=> b!6156096 m!6994764))

(declare-fun m!6994766 () Bool)

(assert (=> b!6156091 m!6994766))

(declare-fun m!6994768 () Bool)

(assert (=> b!6156091 m!6994768))

(declare-fun m!6994770 () Bool)

(assert (=> b!6156094 m!6994770))

(assert (=> b!6156094 m!6994770))

(declare-fun m!6994772 () Bool)

(assert (=> b!6156094 m!6994772))

(declare-fun m!6994774 () Bool)

(assert (=> b!6156094 m!6994774))

(assert (=> b!6156094 m!6994770))

(declare-fun m!6994776 () Bool)

(assert (=> b!6156094 m!6994776))

(assert (=> b!6156089 m!6994766))

(declare-fun m!6994778 () Bool)

(assert (=> b!6156089 m!6994778))

(assert (=> b!6156088 m!6994766))

(declare-fun m!6994780 () Bool)

(assert (=> b!6156088 m!6994780))

(assert (=> d!1928829 m!6994764))

(declare-fun m!6994782 () Bool)

(assert (=> d!1928829 m!6994782))

(declare-fun m!6994784 () Bool)

(assert (=> d!1928829 m!6994784))

(assert (=> b!6155370 d!1928829))

(declare-fun d!1928837 () Bool)

(declare-fun choose!45769 (Int) Bool)

(assert (=> d!1928837 (= (Exists!3169 lambda!335787) (choose!45769 lambda!335787))))

(declare-fun bs!1525783 () Bool)

(assert (= bs!1525783 d!1928837))

(declare-fun m!6994786 () Bool)

(assert (=> bs!1525783 m!6994786))

(assert (=> b!6155370 d!1928837))

(declare-fun d!1928839 () Bool)

(assert (=> d!1928839 (= (Exists!3169 lambda!335788) (choose!45769 lambda!335788))))

(declare-fun bs!1525784 () Bool)

(assert (= bs!1525784 d!1928839))

(declare-fun m!6994788 () Bool)

(assert (=> bs!1525784 m!6994788))

(assert (=> b!6155370 d!1928839))

(declare-fun bs!1525785 () Bool)

(declare-fun d!1928841 () Bool)

(assert (= bs!1525785 (and d!1928841 b!6155370)))

(declare-fun lambda!335841 () Int)

(assert (=> bs!1525785 (= lambda!335841 lambda!335787)))

(assert (=> bs!1525785 (not (= lambda!335841 lambda!335788))))

(declare-fun bs!1525786 () Bool)

(assert (= bs!1525786 (and d!1928841 b!6155604)))

(assert (=> bs!1525786 (not (= lambda!335841 lambda!335803))))

(declare-fun bs!1525787 () Bool)

(assert (= bs!1525787 (and d!1928841 b!6155598)))

(assert (=> bs!1525787 (not (= lambda!335841 lambda!335806))))

(assert (=> d!1928841 true))

(assert (=> d!1928841 true))

(assert (=> d!1928841 true))

(assert (=> d!1928841 (= (isDefined!12693 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326)) (Exists!3169 lambda!335841))))

(declare-fun lt!2335225 () Unit!157573)

(declare-fun choose!45771 (Regex!16099 Regex!16099 List!64598) Unit!157573)

(assert (=> d!1928841 (= lt!2335225 (choose!45771 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326))))

(assert (=> d!1928841 (validRegex!7835 (regOne!32710 r!7292))))

(assert (=> d!1928841 (= (lemmaFindConcatSeparationEquivalentToExists!2168 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326) lt!2335225)))

(declare-fun bs!1525788 () Bool)

(assert (= bs!1525788 d!1928841))

(declare-fun m!6994790 () Bool)

(assert (=> bs!1525788 m!6994790))

(assert (=> bs!1525788 m!6994784))

(assert (=> bs!1525788 m!6994196))

(assert (=> bs!1525788 m!6994198))

(assert (=> bs!1525788 m!6994196))

(declare-fun m!6994792 () Bool)

(assert (=> bs!1525788 m!6994792))

(assert (=> b!6155370 d!1928841))

(declare-fun bs!1525789 () Bool)

(declare-fun d!1928843 () Bool)

(assert (= bs!1525789 (and d!1928843 b!6155370)))

(declare-fun lambda!335846 () Int)

(assert (=> bs!1525789 (= lambda!335846 lambda!335787)))

(declare-fun bs!1525790 () Bool)

(assert (= bs!1525790 (and d!1928843 d!1928841)))

(assert (=> bs!1525790 (= lambda!335846 lambda!335841)))

(declare-fun bs!1525791 () Bool)

(assert (= bs!1525791 (and d!1928843 b!6155604)))

(assert (=> bs!1525791 (not (= lambda!335846 lambda!335803))))

(declare-fun bs!1525792 () Bool)

(assert (= bs!1525792 (and d!1928843 b!6155598)))

(assert (=> bs!1525792 (not (= lambda!335846 lambda!335806))))

(assert (=> bs!1525789 (not (= lambda!335846 lambda!335788))))

(assert (=> d!1928843 true))

(assert (=> d!1928843 true))

(assert (=> d!1928843 true))

(declare-fun lambda!335847 () Int)

(assert (=> bs!1525790 (not (= lambda!335847 lambda!335841))))

(assert (=> bs!1525791 (not (= lambda!335847 lambda!335803))))

(assert (=> bs!1525792 (= lambda!335847 lambda!335806)))

(assert (=> bs!1525789 (= lambda!335847 lambda!335788)))

(assert (=> bs!1525789 (not (= lambda!335847 lambda!335787))))

(declare-fun bs!1525793 () Bool)

(assert (= bs!1525793 d!1928843))

(assert (=> bs!1525793 (not (= lambda!335847 lambda!335846))))

(assert (=> d!1928843 true))

(assert (=> d!1928843 true))

(assert (=> d!1928843 true))

(assert (=> d!1928843 (= (Exists!3169 lambda!335846) (Exists!3169 lambda!335847))))

(declare-fun lt!2335228 () Unit!157573)

(declare-fun choose!45772 (Regex!16099 Regex!16099 List!64598) Unit!157573)

(assert (=> d!1928843 (= lt!2335228 (choose!45772 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326))))

(assert (=> d!1928843 (validRegex!7835 (regOne!32710 r!7292))))

(assert (=> d!1928843 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1706 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326) lt!2335228)))

(declare-fun m!6994794 () Bool)

(assert (=> bs!1525793 m!6994794))

(declare-fun m!6994796 () Bool)

(assert (=> bs!1525793 m!6994796))

(declare-fun m!6994798 () Bool)

(assert (=> bs!1525793 m!6994798))

(assert (=> bs!1525793 m!6994784))

(assert (=> b!6155370 d!1928843))

(declare-fun d!1928845 () Bool)

(declare-fun isEmpty!36441 (Option!15990) Bool)

(assert (=> d!1928845 (= (isDefined!12693 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326)) (not (isEmpty!36441 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326))))))

(declare-fun bs!1525794 () Bool)

(assert (= bs!1525794 d!1928845))

(assert (=> bs!1525794 m!6994196))

(declare-fun m!6994800 () Bool)

(assert (=> bs!1525794 m!6994800))

(assert (=> b!6155370 d!1928845))

(declare-fun b!6156113 () Bool)

(declare-fun e!3750923 () Bool)

(declare-fun tp!1719147 () Bool)

(assert (=> b!6156113 (= e!3750923 (and tp_is_empty!41451 tp!1719147))))

(assert (=> b!6155361 (= tp!1719077 e!3750923)))

(assert (= (and b!6155361 ((_ is Cons!64474) (t!378090 s!2326))) b!6156113))

(declare-fun condSetEmpty!41700 () Bool)

(assert (=> setNonEmpty!41694 (= condSetEmpty!41700 (= setRest!41694 ((as const (Array Context!10966 Bool)) false)))))

(declare-fun setRes!41700 () Bool)

(assert (=> setNonEmpty!41694 (= tp!1719078 setRes!41700)))

(declare-fun setIsEmpty!41700 () Bool)

(assert (=> setIsEmpty!41700 setRes!41700))

(declare-fun tp!1719152 () Bool)

(declare-fun e!3750926 () Bool)

(declare-fun setElem!41700 () Context!10966)

(declare-fun setNonEmpty!41700 () Bool)

(assert (=> setNonEmpty!41700 (= setRes!41700 (and tp!1719152 (inv!83494 setElem!41700) e!3750926))))

(declare-fun setRest!41700 () (InoxSet Context!10966))

(assert (=> setNonEmpty!41700 (= setRest!41694 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) setElem!41700 true) setRest!41700))))

(declare-fun b!6156118 () Bool)

(declare-fun tp!1719153 () Bool)

(assert (=> b!6156118 (= e!3750926 tp!1719153)))

(assert (= (and setNonEmpty!41694 condSetEmpty!41700) setIsEmpty!41700))

(assert (= (and setNonEmpty!41694 (not condSetEmpty!41700)) setNonEmpty!41700))

(assert (= setNonEmpty!41700 b!6156118))

(declare-fun m!6994802 () Bool)

(assert (=> setNonEmpty!41700 m!6994802))

(declare-fun b!6156131 () Bool)

(declare-fun e!3750929 () Bool)

(declare-fun tp!1719167 () Bool)

(assert (=> b!6156131 (= e!3750929 tp!1719167)))

(declare-fun b!6156130 () Bool)

(declare-fun tp!1719166 () Bool)

(declare-fun tp!1719168 () Bool)

(assert (=> b!6156130 (= e!3750929 (and tp!1719166 tp!1719168))))

(declare-fun b!6156132 () Bool)

(declare-fun tp!1719165 () Bool)

(declare-fun tp!1719164 () Bool)

(assert (=> b!6156132 (= e!3750929 (and tp!1719165 tp!1719164))))

(declare-fun b!6156129 () Bool)

(assert (=> b!6156129 (= e!3750929 tp_is_empty!41451)))

(assert (=> b!6155381 (= tp!1719083 e!3750929)))

(assert (= (and b!6155381 ((_ is ElementMatch!16099) (regOne!32711 r!7292))) b!6156129))

(assert (= (and b!6155381 ((_ is Concat!24944) (regOne!32711 r!7292))) b!6156130))

(assert (= (and b!6155381 ((_ is Star!16099) (regOne!32711 r!7292))) b!6156131))

(assert (= (and b!6155381 ((_ is Union!16099) (regOne!32711 r!7292))) b!6156132))

(declare-fun b!6156135 () Bool)

(declare-fun e!3750930 () Bool)

(declare-fun tp!1719172 () Bool)

(assert (=> b!6156135 (= e!3750930 tp!1719172)))

(declare-fun b!6156134 () Bool)

(declare-fun tp!1719171 () Bool)

(declare-fun tp!1719173 () Bool)

(assert (=> b!6156134 (= e!3750930 (and tp!1719171 tp!1719173))))

(declare-fun b!6156136 () Bool)

(declare-fun tp!1719170 () Bool)

(declare-fun tp!1719169 () Bool)

(assert (=> b!6156136 (= e!3750930 (and tp!1719170 tp!1719169))))

(declare-fun b!6156133 () Bool)

(assert (=> b!6156133 (= e!3750930 tp_is_empty!41451)))

(assert (=> b!6155381 (= tp!1719079 e!3750930)))

(assert (= (and b!6155381 ((_ is ElementMatch!16099) (regTwo!32711 r!7292))) b!6156133))

(assert (= (and b!6155381 ((_ is Concat!24944) (regTwo!32711 r!7292))) b!6156134))

(assert (= (and b!6155381 ((_ is Star!16099) (regTwo!32711 r!7292))) b!6156135))

(assert (= (and b!6155381 ((_ is Union!16099) (regTwo!32711 r!7292))) b!6156136))

(declare-fun b!6156139 () Bool)

(declare-fun e!3750931 () Bool)

(declare-fun tp!1719177 () Bool)

(assert (=> b!6156139 (= e!3750931 tp!1719177)))

(declare-fun b!6156138 () Bool)

(declare-fun tp!1719176 () Bool)

(declare-fun tp!1719178 () Bool)

(assert (=> b!6156138 (= e!3750931 (and tp!1719176 tp!1719178))))

(declare-fun b!6156140 () Bool)

(declare-fun tp!1719175 () Bool)

(declare-fun tp!1719174 () Bool)

(assert (=> b!6156140 (= e!3750931 (and tp!1719175 tp!1719174))))

(declare-fun b!6156137 () Bool)

(assert (=> b!6156137 (= e!3750931 tp_is_empty!41451)))

(assert (=> b!6155362 (= tp!1719086 e!3750931)))

(assert (= (and b!6155362 ((_ is ElementMatch!16099) (reg!16428 r!7292))) b!6156137))

(assert (= (and b!6155362 ((_ is Concat!24944) (reg!16428 r!7292))) b!6156138))

(assert (= (and b!6155362 ((_ is Star!16099) (reg!16428 r!7292))) b!6156139))

(assert (= (and b!6155362 ((_ is Union!16099) (reg!16428 r!7292))) b!6156140))

(declare-fun b!6156148 () Bool)

(declare-fun e!3750937 () Bool)

(declare-fun tp!1719183 () Bool)

(assert (=> b!6156148 (= e!3750937 tp!1719183)))

(declare-fun tp!1719184 () Bool)

(declare-fun e!3750936 () Bool)

(declare-fun b!6156147 () Bool)

(assert (=> b!6156147 (= e!3750936 (and (inv!83494 (h!70921 (t!378089 zl!343))) e!3750937 tp!1719184))))

(assert (=> b!6155382 (= tp!1719085 e!3750936)))

(assert (= b!6156147 b!6156148))

(assert (= (and b!6155382 ((_ is Cons!64473) (t!378089 zl!343))) b!6156147))

(declare-fun m!6994804 () Bool)

(assert (=> b!6156147 m!6994804))

(declare-fun b!6156153 () Bool)

(declare-fun e!3750940 () Bool)

(declare-fun tp!1719189 () Bool)

(declare-fun tp!1719190 () Bool)

(assert (=> b!6156153 (= e!3750940 (and tp!1719189 tp!1719190))))

(assert (=> b!6155378 (= tp!1719084 e!3750940)))

(assert (= (and b!6155378 ((_ is Cons!64472) (exprs!5983 setElem!41694))) b!6156153))

(declare-fun b!6156156 () Bool)

(declare-fun e!3750941 () Bool)

(declare-fun tp!1719194 () Bool)

(assert (=> b!6156156 (= e!3750941 tp!1719194)))

(declare-fun b!6156155 () Bool)

(declare-fun tp!1719193 () Bool)

(declare-fun tp!1719195 () Bool)

(assert (=> b!6156155 (= e!3750941 (and tp!1719193 tp!1719195))))

(declare-fun b!6156157 () Bool)

(declare-fun tp!1719192 () Bool)

(declare-fun tp!1719191 () Bool)

(assert (=> b!6156157 (= e!3750941 (and tp!1719192 tp!1719191))))

(declare-fun b!6156154 () Bool)

(assert (=> b!6156154 (= e!3750941 tp_is_empty!41451)))

(assert (=> b!6155354 (= tp!1719082 e!3750941)))

(assert (= (and b!6155354 ((_ is ElementMatch!16099) (regOne!32710 r!7292))) b!6156154))

(assert (= (and b!6155354 ((_ is Concat!24944) (regOne!32710 r!7292))) b!6156155))

(assert (= (and b!6155354 ((_ is Star!16099) (regOne!32710 r!7292))) b!6156156))

(assert (= (and b!6155354 ((_ is Union!16099) (regOne!32710 r!7292))) b!6156157))

(declare-fun b!6156160 () Bool)

(declare-fun e!3750942 () Bool)

(declare-fun tp!1719199 () Bool)

(assert (=> b!6156160 (= e!3750942 tp!1719199)))

(declare-fun b!6156159 () Bool)

(declare-fun tp!1719198 () Bool)

(declare-fun tp!1719200 () Bool)

(assert (=> b!6156159 (= e!3750942 (and tp!1719198 tp!1719200))))

(declare-fun b!6156161 () Bool)

(declare-fun tp!1719197 () Bool)

(declare-fun tp!1719196 () Bool)

(assert (=> b!6156161 (= e!3750942 (and tp!1719197 tp!1719196))))

(declare-fun b!6156158 () Bool)

(assert (=> b!6156158 (= e!3750942 tp_is_empty!41451)))

(assert (=> b!6155354 (= tp!1719081 e!3750942)))

(assert (= (and b!6155354 ((_ is ElementMatch!16099) (regTwo!32710 r!7292))) b!6156158))

(assert (= (and b!6155354 ((_ is Concat!24944) (regTwo!32710 r!7292))) b!6156159))

(assert (= (and b!6155354 ((_ is Star!16099) (regTwo!32710 r!7292))) b!6156160))

(assert (= (and b!6155354 ((_ is Union!16099) (regTwo!32710 r!7292))) b!6156161))

(declare-fun b!6156162 () Bool)

(declare-fun e!3750943 () Bool)

(declare-fun tp!1719201 () Bool)

(declare-fun tp!1719202 () Bool)

(assert (=> b!6156162 (= e!3750943 (and tp!1719201 tp!1719202))))

(assert (=> b!6155379 (= tp!1719080 e!3750943)))

(assert (= (and b!6155379 ((_ is Cons!64472) (exprs!5983 (h!70921 zl!343)))) b!6156162))

(declare-fun b_lambda!234319 () Bool)

(assert (= b_lambda!234305 (or b!6155358 b_lambda!234319)))

(declare-fun bs!1525795 () Bool)

(declare-fun d!1928847 () Bool)

(assert (= bs!1525795 (and d!1928847 b!6155358)))

(assert (=> bs!1525795 (= (dynLambda!25417 lambda!335789 lt!2335123) (derivationStepZipperUp!1273 lt!2335123 (h!70922 s!2326)))))

(assert (=> bs!1525795 m!6994238))

(assert (=> d!1928743 d!1928847))

(declare-fun b_lambda!234321 () Bool)

(assert (= b_lambda!234311 (or b!6155358 b_lambda!234321)))

(declare-fun bs!1525796 () Bool)

(declare-fun d!1928849 () Bool)

(assert (= bs!1525796 (and d!1928849 b!6155358)))

(assert (=> bs!1525796 (= (dynLambda!25417 lambda!335789 (h!70921 zl!343)) (derivationStepZipperUp!1273 (h!70921 zl!343) (h!70922 s!2326)))))

(assert (=> bs!1525796 m!6994252))

(assert (=> d!1928811 d!1928849))

(declare-fun b_lambda!234323 () Bool)

(assert (= b_lambda!234303 (or b!6155358 b_lambda!234323)))

(declare-fun bs!1525797 () Bool)

(declare-fun d!1928851 () Bool)

(assert (= bs!1525797 (and d!1928851 b!6155358)))

(assert (=> bs!1525797 (= (dynLambda!25417 lambda!335789 lt!2335132) (derivationStepZipperUp!1273 lt!2335132 (h!70922 s!2326)))))

(assert (=> bs!1525797 m!6994226))

(assert (=> d!1928737 d!1928851))

(check-sat (not b!6156091) (not bm!512330) (not b!6155493) (not bm!512332) (not d!1928763) (not b!6155495) (not b!6155843) (not d!1928675) (not d!1928765) (not b!6156096) (not d!1928719) (not b_lambda!234321) (not b_lambda!234323) (not bs!1525797) (not b!6155969) (not b!6155674) (not b!6155903) (not d!1928837) (not b!6156095) (not b!6155857) (not d!1928729) (not d!1928723) (not b!6156094) (not b!6156160) (not b!6155785) (not b!6155853) (not b!6155887) (not b!6155990) (not d!1928829) (not b!6155904) (not d!1928743) (not bm!512288) (not bm!512263) (not b!6155978) (not b!6155849) (not b!6155782) (not b!6155780) (not b!6156113) (not bs!1525795) (not b!6155851) (not b!6155765) (not b!6156153) (not b!6155980) (not b!6155884) (not bm!512281) (not b!6155606) (not b!6155890) (not b!6156132) (not bm!512316) (not d!1928679) (not b!6155852) (not d!1928757) (not bm!512319) (not setNonEmpty!41700) (not b!6155839) (not b!6155669) (not b!6156134) (not d!1928805) (not b!6155988) (not b!6155985) (not bm!512312) (not d!1928737) (not b!6156088) (not b!6155840) (not d!1928745) (not b!6156155) (not b!6156138) (not b!6156161) (not d!1928775) (not bs!1525796) (not b!6156139) (not d!1928751) (not b!6155681) (not d!1928843) (not bm!512320) (not bm!512321) (not b!6155905) (not b!6156162) (not b!6156147) (not b!6155682) (not d!1928761) (not bm!512289) (not b!6155494) (not d!1928681) (not b!6155882) (not b!6156000) (not bm!512322) (not bm!512314) (not bm!512324) (not b!6156156) (not b!6155673) (not b!6155837) (not b!6156013) (not b!6156157) (not b!6156140) (not b!6155902) (not bm!512326) (not b!6156118) (not b!6155838) (not d!1928779) (not b!6156131) (not b!6156089) (not d!1928711) (not d!1928845) (not bm!512264) (not b!6155855) (not bm!512269) (not b!6155496) (not b!6155842) (not bm!512328) (not d!1928841) (not b!6155854) (not d!1928767) tp_is_empty!41451 (not b!6155856) (not b!6155766) (not b!6155787) (not b!6156130) (not d!1928713) (not b!6156148) (not bm!512282) (not b!6156135) (not b!6155883) (not b!6155888) (not d!1928747) (not b!6155679) (not d!1928759) (not b!6155983) (not b!6155742) (not d!1928735) (not d!1928715) (not d!1928839) (not d!1928725) (not d!1928773) (not b!6155886) (not d!1928777) (not d!1928739) (not d!1928811) (not b!6156159) (not b!6155836) (not b!6155602) (not b!6156136) (not b_lambda!234319) (not b!6155767))
(check-sat)
(get-model)

(declare-fun call!512340 () List!64596)

(declare-fun c!1108358 () Bool)

(declare-fun c!1108357 () Bool)

(declare-fun bm!512334 () Bool)

(declare-fun call!512339 () (InoxSet Context!10966))

(declare-fun c!1108359 () Bool)

(assert (=> bm!512334 (= call!512339 (derivationStepZipperDown!1347 (ite c!1108358 (regTwo!32711 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (ite c!1108359 (regTwo!32710 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (ite c!1108357 (regOne!32710 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (reg!16428 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))))))) (ite (or c!1108358 c!1108359) (ite c!1108342 lt!2335134 (Context!10967 call!512329)) (Context!10967 call!512340)) (h!70922 s!2326)))))

(declare-fun b!6156163 () Bool)

(declare-fun e!3750948 () (InoxSet Context!10966))

(declare-fun call!512344 () (InoxSet Context!10966))

(assert (=> b!6156163 (= e!3750948 ((_ map or) call!512344 call!512339))))

(declare-fun b!6156164 () Bool)

(declare-fun e!3750947 () (InoxSet Context!10966))

(assert (=> b!6156164 (= e!3750947 e!3750948)))

(assert (=> b!6156164 (= c!1108358 ((_ is Union!16099) (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156165 () Bool)

(declare-fun e!3750949 () (InoxSet Context!10966))

(assert (=> b!6156165 (= e!3750949 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156166 () Bool)

(declare-fun e!3750944 () (InoxSet Context!10966))

(declare-fun e!3750946 () (InoxSet Context!10966))

(assert (=> b!6156166 (= e!3750944 e!3750946)))

(assert (=> b!6156166 (= c!1108357 ((_ is Concat!24944) (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156167 () Bool)

(assert (=> b!6156167 (= e!3750947 (store ((as const (Array Context!10966 Bool)) false) (ite c!1108342 lt!2335134 (Context!10967 call!512329)) true))))

(declare-fun b!6156168 () Bool)

(declare-fun call!512342 () (InoxSet Context!10966))

(assert (=> b!6156168 (= e!3750944 ((_ map or) call!512344 call!512342))))

(declare-fun bm!512336 () Bool)

(declare-fun call!512341 () List!64596)

(assert (=> bm!512336 (= call!512341 ($colon$colon!1976 (exprs!5983 (ite c!1108342 lt!2335134 (Context!10967 call!512329))) (ite (or c!1108359 c!1108357) (regTwo!32710 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))))))))

(declare-fun b!6156169 () Bool)

(declare-fun c!1108360 () Bool)

(assert (=> b!6156169 (= c!1108360 ((_ is Star!16099) (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))))))

(assert (=> b!6156169 (= e!3750946 e!3750949)))

(declare-fun bm!512335 () Bool)

(assert (=> bm!512335 (= call!512342 call!512339)))

(declare-fun c!1108361 () Bool)

(declare-fun d!1928853 () Bool)

(assert (=> d!1928853 (= c!1108361 (and ((_ is ElementMatch!16099) (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (= (c!1108140 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (h!70922 s!2326))))))

(assert (=> d!1928853 (= (derivationStepZipperDown!1347 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))) (ite c!1108342 lt!2335134 (Context!10967 call!512329)) (h!70922 s!2326)) e!3750947)))

(declare-fun b!6156170 () Bool)

(declare-fun call!512343 () (InoxSet Context!10966))

(assert (=> b!6156170 (= e!3750949 call!512343)))

(declare-fun bm!512337 () Bool)

(assert (=> bm!512337 (= call!512340 call!512341)))

(declare-fun bm!512338 () Bool)

(assert (=> bm!512338 (= call!512344 (derivationStepZipperDown!1347 (ite c!1108358 (regOne!32711 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))) (regOne!32710 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))))) (ite c!1108358 (ite c!1108342 lt!2335134 (Context!10967 call!512329)) (Context!10967 call!512341)) (h!70922 s!2326)))))

(declare-fun bm!512339 () Bool)

(assert (=> bm!512339 (= call!512343 call!512342)))

(declare-fun b!6156171 () Bool)

(assert (=> b!6156171 (= e!3750946 call!512343)))

(declare-fun b!6156172 () Bool)

(declare-fun e!3750945 () Bool)

(assert (=> b!6156172 (= e!3750945 (nullable!6092 (regOne!32710 (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))))))))

(declare-fun b!6156173 () Bool)

(assert (=> b!6156173 (= c!1108359 e!3750945)))

(declare-fun res!2549648 () Bool)

(assert (=> b!6156173 (=> (not res!2549648) (not e!3750945))))

(assert (=> b!6156173 (= res!2549648 ((_ is Concat!24944) (ite c!1108342 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))))))

(assert (=> b!6156173 (= e!3750948 e!3750944)))

(assert (= (and d!1928853 c!1108361) b!6156167))

(assert (= (and d!1928853 (not c!1108361)) b!6156164))

(assert (= (and b!6156164 c!1108358) b!6156163))

(assert (= (and b!6156164 (not c!1108358)) b!6156173))

(assert (= (and b!6156173 res!2549648) b!6156172))

(assert (= (and b!6156173 c!1108359) b!6156168))

(assert (= (and b!6156173 (not c!1108359)) b!6156166))

(assert (= (and b!6156166 c!1108357) b!6156171))

(assert (= (and b!6156166 (not c!1108357)) b!6156169))

(assert (= (and b!6156169 c!1108360) b!6156170))

(assert (= (and b!6156169 (not c!1108360)) b!6156165))

(assert (= (or b!6156171 b!6156170) bm!512337))

(assert (= (or b!6156171 b!6156170) bm!512339))

(assert (= (or b!6156168 bm!512337) bm!512336))

(assert (= (or b!6156168 bm!512339) bm!512335))

(assert (= (or b!6156163 bm!512335) bm!512334))

(assert (= (or b!6156163 b!6156168) bm!512338))

(declare-fun m!6994806 () Bool)

(assert (=> bm!512338 m!6994806))

(declare-fun m!6994808 () Bool)

(assert (=> b!6156172 m!6994808))

(declare-fun m!6994810 () Bool)

(assert (=> bm!512336 m!6994810))

(declare-fun m!6994812 () Bool)

(assert (=> b!6156167 m!6994812))

(declare-fun m!6994814 () Bool)

(assert (=> bm!512334 m!6994814))

(assert (=> bm!512326 d!1928853))

(declare-fun d!1928855 () Bool)

(assert (=> d!1928855 true))

(declare-fun setRes!41703 () Bool)

(assert (=> d!1928855 setRes!41703))

(declare-fun condSetEmpty!41703 () Bool)

(declare-fun res!2549651 () (InoxSet Context!10966))

(assert (=> d!1928855 (= condSetEmpty!41703 (= res!2549651 ((as const (Array Context!10966 Bool)) false)))))

(assert (=> d!1928855 (= (choose!45761 z!1189 lambda!335789) res!2549651)))

(declare-fun setIsEmpty!41703 () Bool)

(assert (=> setIsEmpty!41703 setRes!41703))

(declare-fun e!3750952 () Bool)

(declare-fun tp!1719208 () Bool)

(declare-fun setNonEmpty!41703 () Bool)

(declare-fun setElem!41703 () Context!10966)

(assert (=> setNonEmpty!41703 (= setRes!41703 (and tp!1719208 (inv!83494 setElem!41703) e!3750952))))

(declare-fun setRest!41703 () (InoxSet Context!10966))

(assert (=> setNonEmpty!41703 (= res!2549651 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) setElem!41703 true) setRest!41703))))

(declare-fun b!6156176 () Bool)

(declare-fun tp!1719207 () Bool)

(assert (=> b!6156176 (= e!3750952 tp!1719207)))

(assert (= (and d!1928855 condSetEmpty!41703) setIsEmpty!41703))

(assert (= (and d!1928855 (not condSetEmpty!41703)) setNonEmpty!41703))

(assert (= setNonEmpty!41703 b!6156176))

(declare-fun m!6994816 () Bool)

(assert (=> setNonEmpty!41703 m!6994816))

(assert (=> d!1928779 d!1928855))

(declare-fun call!512346 () List!64596)

(declare-fun c!1108362 () Bool)

(declare-fun c!1108363 () Bool)

(declare-fun call!512345 () (InoxSet Context!10966))

(declare-fun bm!512340 () Bool)

(declare-fun c!1108364 () Bool)

(assert (=> bm!512340 (= call!512345 (derivationStepZipperDown!1347 (ite c!1108363 (regTwo!32711 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (ite c!1108364 (regTwo!32710 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (ite c!1108362 (regOne!32710 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (reg!16428 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))))) (ite (or c!1108363 c!1108364) (ite c!1108329 lt!2335134 (Context!10967 call!512319)) (Context!10967 call!512346)) (h!70922 s!2326)))))

(declare-fun b!6156177 () Bool)

(declare-fun e!3750957 () (InoxSet Context!10966))

(declare-fun call!512350 () (InoxSet Context!10966))

(assert (=> b!6156177 (= e!3750957 ((_ map or) call!512350 call!512345))))

(declare-fun b!6156178 () Bool)

(declare-fun e!3750956 () (InoxSet Context!10966))

(assert (=> b!6156178 (= e!3750956 e!3750957)))

(assert (=> b!6156178 (= c!1108363 ((_ is Union!16099) (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun b!6156179 () Bool)

(declare-fun e!3750958 () (InoxSet Context!10966))

(assert (=> b!6156179 (= e!3750958 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156180 () Bool)

(declare-fun e!3750953 () (InoxSet Context!10966))

(declare-fun e!3750955 () (InoxSet Context!10966))

(assert (=> b!6156180 (= e!3750953 e!3750955)))

(assert (=> b!6156180 (= c!1108362 ((_ is Concat!24944) (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun b!6156181 () Bool)

(assert (=> b!6156181 (= e!3750956 (store ((as const (Array Context!10966 Bool)) false) (ite c!1108329 lt!2335134 (Context!10967 call!512319)) true))))

(declare-fun b!6156182 () Bool)

(declare-fun call!512348 () (InoxSet Context!10966))

(assert (=> b!6156182 (= e!3750953 ((_ map or) call!512350 call!512348))))

(declare-fun call!512347 () List!64596)

(declare-fun bm!512342 () Bool)

(assert (=> bm!512342 (= call!512347 ($colon$colon!1976 (exprs!5983 (ite c!1108329 lt!2335134 (Context!10967 call!512319))) (ite (or c!1108364 c!1108362) (regTwo!32710 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))))))

(declare-fun b!6156183 () Bool)

(declare-fun c!1108365 () Bool)

(assert (=> b!6156183 (= c!1108365 ((_ is Star!16099) (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(assert (=> b!6156183 (= e!3750955 e!3750958)))

(declare-fun bm!512341 () Bool)

(assert (=> bm!512341 (= call!512348 call!512345)))

(declare-fun c!1108366 () Bool)

(declare-fun d!1928857 () Bool)

(assert (=> d!1928857 (= c!1108366 (and ((_ is ElementMatch!16099) (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (= (c!1108140 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (h!70922 s!2326))))))

(assert (=> d!1928857 (= (derivationStepZipperDown!1347 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))) (ite c!1108329 lt!2335134 (Context!10967 call!512319)) (h!70922 s!2326)) e!3750956)))

(declare-fun b!6156184 () Bool)

(declare-fun call!512349 () (InoxSet Context!10966))

(assert (=> b!6156184 (= e!3750958 call!512349)))

(declare-fun bm!512343 () Bool)

(assert (=> bm!512343 (= call!512346 call!512347)))

(declare-fun bm!512344 () Bool)

(assert (=> bm!512344 (= call!512350 (derivationStepZipperDown!1347 (ite c!1108363 (regOne!32711 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))) (regOne!32710 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))) (ite c!1108363 (ite c!1108329 lt!2335134 (Context!10967 call!512319)) (Context!10967 call!512347)) (h!70922 s!2326)))))

(declare-fun bm!512345 () Bool)

(assert (=> bm!512345 (= call!512349 call!512348)))

(declare-fun b!6156185 () Bool)

(assert (=> b!6156185 (= e!3750955 call!512349)))

(declare-fun b!6156186 () Bool)

(declare-fun e!3750954 () Bool)

(assert (=> b!6156186 (= e!3750954 (nullable!6092 (regOne!32710 (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))))))

(declare-fun b!6156187 () Bool)

(assert (=> b!6156187 (= c!1108364 e!3750954)))

(declare-fun res!2549652 () Bool)

(assert (=> b!6156187 (=> (not res!2549652) (not e!3750954))))

(assert (=> b!6156187 (= res!2549652 ((_ is Concat!24944) (ite c!1108329 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(assert (=> b!6156187 (= e!3750957 e!3750953)))

(assert (= (and d!1928857 c!1108366) b!6156181))

(assert (= (and d!1928857 (not c!1108366)) b!6156178))

(assert (= (and b!6156178 c!1108363) b!6156177))

(assert (= (and b!6156178 (not c!1108363)) b!6156187))

(assert (= (and b!6156187 res!2549652) b!6156186))

(assert (= (and b!6156187 c!1108364) b!6156182))

(assert (= (and b!6156187 (not c!1108364)) b!6156180))

(assert (= (and b!6156180 c!1108362) b!6156185))

(assert (= (and b!6156180 (not c!1108362)) b!6156183))

(assert (= (and b!6156183 c!1108365) b!6156184))

(assert (= (and b!6156183 (not c!1108365)) b!6156179))

(assert (= (or b!6156185 b!6156184) bm!512343))

(assert (= (or b!6156185 b!6156184) bm!512345))

(assert (= (or b!6156182 bm!512343) bm!512342))

(assert (= (or b!6156182 bm!512345) bm!512341))

(assert (= (or b!6156177 bm!512341) bm!512340))

(assert (= (or b!6156177 b!6156182) bm!512344))

(declare-fun m!6994818 () Bool)

(assert (=> bm!512344 m!6994818))

(declare-fun m!6994820 () Bool)

(assert (=> b!6156186 m!6994820))

(declare-fun m!6994822 () Bool)

(assert (=> bm!512342 m!6994822))

(declare-fun m!6994824 () Bool)

(assert (=> b!6156181 m!6994824))

(declare-fun m!6994826 () Bool)

(assert (=> bm!512340 m!6994826))

(assert (=> bm!512316 d!1928857))

(declare-fun bs!1525798 () Bool)

(declare-fun d!1928859 () Bool)

(assert (= bs!1525798 (and d!1928859 d!1928765)))

(declare-fun lambda!335848 () Int)

(assert (=> bs!1525798 (= lambda!335848 lambda!335825)))

(declare-fun bs!1525799 () Bool)

(assert (= bs!1525799 (and d!1928859 d!1928715)))

(assert (=> bs!1525799 (= lambda!335848 lambda!335816)))

(declare-fun bs!1525800 () Bool)

(assert (= bs!1525800 (and d!1928859 d!1928751)))

(assert (=> bs!1525800 (= lambda!335848 lambda!335823)))

(declare-fun bs!1525801 () Bool)

(assert (= bs!1525801 (and d!1928859 d!1928747)))

(assert (=> bs!1525801 (= lambda!335848 lambda!335820)))

(declare-fun bs!1525802 () Bool)

(assert (= bs!1525802 (and d!1928859 d!1928719)))

(assert (=> bs!1525802 (= lambda!335848 lambda!335817)))

(declare-fun bs!1525803 () Bool)

(assert (= bs!1525803 (and d!1928859 d!1928767)))

(assert (=> bs!1525803 (= lambda!335848 lambda!335830)))

(assert (=> d!1928859 (= (inv!83494 (h!70921 (t!378089 zl!343))) (forall!15220 (exprs!5983 (h!70921 (t!378089 zl!343))) lambda!335848))))

(declare-fun bs!1525804 () Bool)

(assert (= bs!1525804 d!1928859))

(declare-fun m!6994828 () Bool)

(assert (=> bs!1525804 m!6994828))

(assert (=> b!6156147 d!1928859))

(declare-fun d!1928861 () Bool)

(assert (=> d!1928861 (= (isEmpty!36436 (tail!11805 (unfocusZipperList!1520 zl!343))) ((_ is Nil!64472) (tail!11805 (unfocusZipperList!1520 zl!343))))))

(assert (=> b!6155839 d!1928861))

(declare-fun d!1928863 () Bool)

(assert (=> d!1928863 (= (tail!11805 (unfocusZipperList!1520 zl!343)) (t!378088 (unfocusZipperList!1520 zl!343)))))

(assert (=> b!6155839 d!1928863))

(declare-fun d!1928865 () Bool)

(assert (=> d!1928865 (= ($colon$colon!1976 (exprs!5983 lt!2335134) (ite (or c!1108343 c!1108341) (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (regTwo!32711 (regOne!32710 r!7292)))) (Cons!64472 (ite (or c!1108343 c!1108341) (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (regTwo!32711 (regOne!32710 r!7292))) (exprs!5983 lt!2335134)))))

(assert (=> bm!512324 d!1928865))

(declare-fun d!1928867 () Bool)

(declare-fun c!1108367 () Bool)

(assert (=> d!1928867 (= c!1108367 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3750959 () Bool)

(assert (=> d!1928867 (= (matchZipper!2111 (derivationStepZipper!2071 lt!2335127 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3750959)))

(declare-fun b!6156188 () Bool)

(assert (=> b!6156188 (= e!3750959 (nullableZipper!1879 (derivationStepZipper!2071 lt!2335127 (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156189 () Bool)

(assert (=> b!6156189 (= e!3750959 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 lt!2335127 (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1928867 c!1108367) b!6156188))

(assert (= (and d!1928867 (not c!1108367)) b!6156189))

(assert (=> d!1928867 m!6994358))

(declare-fun m!6994830 () Bool)

(assert (=> d!1928867 m!6994830))

(assert (=> b!6156188 m!6994594))

(declare-fun m!6994832 () Bool)

(assert (=> b!6156188 m!6994832))

(assert (=> b!6156189 m!6994358))

(declare-fun m!6994834 () Bool)

(assert (=> b!6156189 m!6994834))

(assert (=> b!6156189 m!6994594))

(assert (=> b!6156189 m!6994834))

(declare-fun m!6994836 () Bool)

(assert (=> b!6156189 m!6994836))

(assert (=> b!6156189 m!6994358))

(declare-fun m!6994838 () Bool)

(assert (=> b!6156189 m!6994838))

(assert (=> b!6156189 m!6994836))

(assert (=> b!6156189 m!6994838))

(declare-fun m!6994840 () Bool)

(assert (=> b!6156189 m!6994840))

(assert (=> b!6155852 d!1928867))

(declare-fun bs!1525805 () Bool)

(declare-fun d!1928869 () Bool)

(assert (= bs!1525805 (and d!1928869 b!6155358)))

(declare-fun lambda!335851 () Int)

(assert (=> bs!1525805 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335851 lambda!335789))))

(assert (=> d!1928869 true))

(assert (=> d!1928869 (= (derivationStepZipper!2071 lt!2335127 (head!12718 (t!378090 s!2326))) (flatMap!1604 lt!2335127 lambda!335851))))

(declare-fun bs!1525806 () Bool)

(assert (= bs!1525806 d!1928869))

(declare-fun m!6994842 () Bool)

(assert (=> bs!1525806 m!6994842))

(assert (=> b!6155852 d!1928869))

(declare-fun d!1928873 () Bool)

(assert (=> d!1928873 (= (head!12718 (t!378090 s!2326)) (h!70922 (t!378090 s!2326)))))

(assert (=> b!6155852 d!1928873))

(declare-fun d!1928875 () Bool)

(assert (=> d!1928875 (= (tail!11803 (t!378090 s!2326)) (t!378090 (t!378090 s!2326)))))

(assert (=> b!6155852 d!1928875))

(declare-fun d!1928877 () Bool)

(assert (=> d!1928877 (= (nullable!6092 (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))) (nullableFct!2056 (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))))))

(declare-fun bs!1525807 () Bool)

(assert (= bs!1525807 d!1928877))

(declare-fun m!6994844 () Bool)

(assert (=> bs!1525807 m!6994844))

(assert (=> b!6156013 d!1928877))

(declare-fun b!6156192 () Bool)

(declare-fun e!3750966 () Bool)

(declare-fun e!3750961 () Bool)

(assert (=> b!6156192 (= e!3750966 e!3750961)))

(declare-fun c!1108370 () Bool)

(assert (=> b!6156192 (= c!1108370 ((_ is Star!16099) (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))))))

(declare-fun b!6156193 () Bool)

(declare-fun e!3750964 () Bool)

(declare-fun e!3750963 () Bool)

(assert (=> b!6156193 (= e!3750964 e!3750963)))

(declare-fun res!2549654 () Bool)

(assert (=> b!6156193 (=> (not res!2549654) (not e!3750963))))

(declare-fun call!512352 () Bool)

(assert (=> b!6156193 (= res!2549654 call!512352)))

(declare-fun b!6156194 () Bool)

(declare-fun e!3750965 () Bool)

(assert (=> b!6156194 (= e!3750961 e!3750965)))

(declare-fun res!2549657 () Bool)

(assert (=> b!6156194 (= res!2549657 (not (nullable!6092 (reg!16428 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))))))))

(assert (=> b!6156194 (=> (not res!2549657) (not e!3750965))))

(declare-fun b!6156195 () Bool)

(declare-fun e!3750960 () Bool)

(declare-fun call!512353 () Bool)

(assert (=> b!6156195 (= e!3750960 call!512353)))

(declare-fun bm!512346 () Bool)

(declare-fun call!512351 () Bool)

(assert (=> bm!512346 (= call!512353 call!512351)))

(declare-fun b!6156196 () Bool)

(declare-fun res!2549655 () Bool)

(assert (=> b!6156196 (=> (not res!2549655) (not e!3750960))))

(assert (=> b!6156196 (= res!2549655 call!512352)))

(declare-fun e!3750962 () Bool)

(assert (=> b!6156196 (= e!3750962 e!3750960)))

(declare-fun c!1108371 () Bool)

(declare-fun bm!512348 () Bool)

(assert (=> bm!512348 (= call!512351 (validRegex!7835 (ite c!1108370 (reg!16428 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))) (ite c!1108371 (regTwo!32711 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))) (regTwo!32710 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292))))))))))

(declare-fun b!6156197 () Bool)

(assert (=> b!6156197 (= e!3750963 call!512353)))

(declare-fun bm!512347 () Bool)

(assert (=> bm!512347 (= call!512352 (validRegex!7835 (ite c!1108371 (regOne!32711 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))) (regOne!32710 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))))))))

(declare-fun d!1928879 () Bool)

(declare-fun res!2549656 () Bool)

(assert (=> d!1928879 (=> res!2549656 e!3750966)))

(assert (=> d!1928879 (= res!2549656 ((_ is ElementMatch!16099) (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))))))

(assert (=> d!1928879 (= (validRegex!7835 (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))) e!3750966)))

(declare-fun b!6156198 () Bool)

(assert (=> b!6156198 (= e!3750965 call!512351)))

(declare-fun b!6156199 () Bool)

(assert (=> b!6156199 (= e!3750961 e!3750962)))

(assert (=> b!6156199 (= c!1108371 ((_ is Union!16099) (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292)))))))

(declare-fun b!6156200 () Bool)

(declare-fun res!2549653 () Bool)

(assert (=> b!6156200 (=> res!2549653 e!3750964)))

(assert (=> b!6156200 (= res!2549653 (not ((_ is Concat!24944) (ite c!1108259 (reg!16428 r!7292) (ite c!1108260 (regTwo!32711 r!7292) (regTwo!32710 r!7292))))))))

(assert (=> b!6156200 (= e!3750962 e!3750964)))

(assert (= (and d!1928879 (not res!2549656)) b!6156192))

(assert (= (and b!6156192 c!1108370) b!6156194))

(assert (= (and b!6156192 (not c!1108370)) b!6156199))

(assert (= (and b!6156194 res!2549657) b!6156198))

(assert (= (and b!6156199 c!1108371) b!6156196))

(assert (= (and b!6156199 (not c!1108371)) b!6156200))

(assert (= (and b!6156196 res!2549655) b!6156195))

(assert (= (and b!6156200 (not res!2549653)) b!6156193))

(assert (= (and b!6156193 res!2549654) b!6156197))

(assert (= (or b!6156195 b!6156197) bm!512346))

(assert (= (or b!6156196 b!6156193) bm!512347))

(assert (= (or b!6156198 bm!512346) bm!512348))

(declare-fun m!6994846 () Bool)

(assert (=> b!6156194 m!6994846))

(declare-fun m!6994848 () Bool)

(assert (=> bm!512348 m!6994848))

(declare-fun m!6994850 () Bool)

(assert (=> bm!512347 m!6994850))

(assert (=> bm!512282 d!1928879))

(declare-fun call!512355 () (InoxSet Context!10966))

(declare-fun bm!512350 () Bool)

(declare-fun c!1108374 () Bool)

(declare-fun c!1108376 () Bool)

(declare-fun c!1108375 () Bool)

(declare-fun call!512356 () List!64596)

(assert (=> bm!512350 (= call!512355 (derivationStepZipperDown!1347 (ite c!1108375 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108376 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108374 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))) (ite (or c!1108375 c!1108376) (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) (Context!10967 call!512356)) (h!70922 s!2326)))))

(declare-fun b!6156206 () Bool)

(declare-fun e!3750974 () (InoxSet Context!10966))

(declare-fun call!512360 () (InoxSet Context!10966))

(assert (=> b!6156206 (= e!3750974 ((_ map or) call!512360 call!512355))))

(declare-fun b!6156207 () Bool)

(declare-fun e!3750973 () (InoxSet Context!10966))

(assert (=> b!6156207 (= e!3750973 e!3750974)))

(assert (=> b!6156207 (= c!1108375 ((_ is Union!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156208 () Bool)

(declare-fun e!3750975 () (InoxSet Context!10966))

(assert (=> b!6156208 (= e!3750975 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156209 () Bool)

(declare-fun e!3750970 () (InoxSet Context!10966))

(declare-fun e!3750972 () (InoxSet Context!10966))

(assert (=> b!6156209 (= e!3750970 e!3750972)))

(assert (=> b!6156209 (= c!1108374 ((_ is Concat!24944) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156210 () Bool)

(assert (=> b!6156210 (= e!3750973 (store ((as const (Array Context!10966 Bool)) false) (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) true))))

(declare-fun b!6156211 () Bool)

(declare-fun call!512358 () (InoxSet Context!10966))

(assert (=> b!6156211 (= e!3750970 ((_ map or) call!512360 call!512358))))

(declare-fun bm!512352 () Bool)

(declare-fun call!512357 () List!64596)

(assert (=> bm!512352 (= call!512357 ($colon$colon!1976 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343))))) (ite (or c!1108376 c!1108374) (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (h!70920 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6156212 () Bool)

(declare-fun c!1108377 () Bool)

(assert (=> b!6156212 (= c!1108377 ((_ is Star!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> b!6156212 (= e!3750972 e!3750975)))

(declare-fun bm!512351 () Bool)

(assert (=> bm!512351 (= call!512358 call!512355)))

(declare-fun d!1928883 () Bool)

(declare-fun c!1108378 () Bool)

(assert (=> d!1928883 (= c!1108378 (and ((_ is ElementMatch!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))) (= (c!1108140 (h!70920 (exprs!5983 (h!70921 zl!343)))) (h!70922 s!2326))))))

(assert (=> d!1928883 (= (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (h!70921 zl!343))) (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) (h!70922 s!2326)) e!3750973)))

(declare-fun b!6156213 () Bool)

(declare-fun call!512359 () (InoxSet Context!10966))

(assert (=> b!6156213 (= e!3750975 call!512359)))

(declare-fun bm!512353 () Bool)

(assert (=> bm!512353 (= call!512356 call!512357)))

(declare-fun bm!512354 () Bool)

(assert (=> bm!512354 (= call!512360 (derivationStepZipperDown!1347 (ite c!1108375 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))) (ite c!1108375 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) (Context!10967 call!512357)) (h!70922 s!2326)))))

(declare-fun bm!512355 () Bool)

(assert (=> bm!512355 (= call!512359 call!512358)))

(declare-fun b!6156214 () Bool)

(assert (=> b!6156214 (= e!3750972 call!512359)))

(declare-fun b!6156215 () Bool)

(declare-fun e!3750971 () Bool)

(assert (=> b!6156215 (= e!3750971 (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6156216 () Bool)

(assert (=> b!6156216 (= c!1108376 e!3750971)))

(declare-fun res!2549659 () Bool)

(assert (=> b!6156216 (=> (not res!2549659) (not e!3750971))))

(assert (=> b!6156216 (= res!2549659 ((_ is Concat!24944) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> b!6156216 (= e!3750974 e!3750970)))

(assert (= (and d!1928883 c!1108378) b!6156210))

(assert (= (and d!1928883 (not c!1108378)) b!6156207))

(assert (= (and b!6156207 c!1108375) b!6156206))

(assert (= (and b!6156207 (not c!1108375)) b!6156216))

(assert (= (and b!6156216 res!2549659) b!6156215))

(assert (= (and b!6156216 c!1108376) b!6156211))

(assert (= (and b!6156216 (not c!1108376)) b!6156209))

(assert (= (and b!6156209 c!1108374) b!6156214))

(assert (= (and b!6156209 (not c!1108374)) b!6156212))

(assert (= (and b!6156212 c!1108377) b!6156213))

(assert (= (and b!6156212 (not c!1108377)) b!6156208))

(assert (= (or b!6156214 b!6156213) bm!512353))

(assert (= (or b!6156214 b!6156213) bm!512355))

(assert (= (or b!6156211 bm!512353) bm!512352))

(assert (= (or b!6156211 bm!512355) bm!512351))

(assert (= (or b!6156206 bm!512351) bm!512350))

(assert (= (or b!6156206 b!6156211) bm!512354))

(declare-fun m!6994858 () Bool)

(assert (=> bm!512354 m!6994858))

(assert (=> b!6156215 m!6994698))

(declare-fun m!6994860 () Bool)

(assert (=> bm!512352 m!6994860))

(declare-fun m!6994862 () Bool)

(assert (=> b!6156210 m!6994862))

(declare-fun m!6994864 () Bool)

(assert (=> bm!512350 m!6994864))

(assert (=> bm!512321 d!1928883))

(declare-fun d!1928887 () Bool)

(assert (=> d!1928887 (= (isEmpty!36438 (t!378090 s!2326)) ((_ is Nil!64474) (t!378090 s!2326)))))

(assert (=> d!1928761 d!1928887))

(assert (=> d!1928759 d!1928887))

(declare-fun d!1928889 () Bool)

(assert (=> d!1928889 (= (isDefined!12693 lt!2335220) (not (isEmpty!36441 lt!2335220)))))

(declare-fun bs!1525808 () Bool)

(assert (= bs!1525808 d!1928889))

(declare-fun m!6994866 () Bool)

(assert (=> bs!1525808 m!6994866))

(assert (=> b!6156096 d!1928889))

(declare-fun d!1928891 () Bool)

(declare-fun lambda!335854 () Int)

(declare-fun exists!2443 ((InoxSet Context!10966) Int) Bool)

(assert (=> d!1928891 (= (nullableZipper!1879 lt!2335111) (exists!2443 lt!2335111 lambda!335854))))

(declare-fun bs!1525810 () Bool)

(assert (= bs!1525810 d!1928891))

(declare-fun m!6994880 () Bool)

(assert (=> bs!1525810 m!6994880))

(assert (=> b!6155493 d!1928891))

(declare-fun d!1928901 () Bool)

(assert (=> d!1928901 (= (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (nullableFct!2056 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))

(declare-fun bs!1525811 () Bool)

(assert (= bs!1525811 d!1928901))

(declare-fun m!6994886 () Bool)

(assert (=> bs!1525811 m!6994886))

(assert (=> b!6155978 d!1928901))

(declare-fun d!1928903 () Bool)

(assert (=> d!1928903 (= (isEmptyLang!1526 lt!2335187) ((_ is EmptyLang!16099) lt!2335187))))

(assert (=> b!6155843 d!1928903))

(declare-fun d!1928907 () Bool)

(assert (=> d!1928907 (= (nullable!6092 (h!70920 (exprs!5983 lt!2335134))) (nullableFct!2056 (h!70920 (exprs!5983 lt!2335134))))))

(declare-fun bs!1525812 () Bool)

(assert (= bs!1525812 d!1928907))

(declare-fun m!6994896 () Bool)

(assert (=> bs!1525812 m!6994896))

(assert (=> b!6155983 d!1928907))

(declare-fun d!1928909 () Bool)

(assert (=> d!1928909 (= (head!12720 (exprs!5983 (h!70921 zl!343))) (h!70920 (exprs!5983 (h!70921 zl!343))))))

(assert (=> b!6155883 d!1928909))

(assert (=> bs!1525795 d!1928741))

(declare-fun d!1928911 () Bool)

(declare-fun c!1108387 () Bool)

(assert (=> d!1928911 (= c!1108387 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3750983 () Bool)

(assert (=> d!1928911 (= (matchZipper!2111 (derivationStepZipper!2071 lt!2335135 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3750983)))

(declare-fun b!6156230 () Bool)

(assert (=> b!6156230 (= e!3750983 (nullableZipper!1879 (derivationStepZipper!2071 lt!2335135 (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156231 () Bool)

(assert (=> b!6156231 (= e!3750983 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 lt!2335135 (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1928911 c!1108387) b!6156230))

(assert (= (and d!1928911 (not c!1108387)) b!6156231))

(assert (=> d!1928911 m!6994358))

(assert (=> d!1928911 m!6994830))

(assert (=> b!6156230 m!6994606))

(declare-fun m!6994898 () Bool)

(assert (=> b!6156230 m!6994898))

(assert (=> b!6156231 m!6994358))

(assert (=> b!6156231 m!6994834))

(assert (=> b!6156231 m!6994606))

(assert (=> b!6156231 m!6994834))

(declare-fun m!6994900 () Bool)

(assert (=> b!6156231 m!6994900))

(assert (=> b!6156231 m!6994358))

(assert (=> b!6156231 m!6994838))

(assert (=> b!6156231 m!6994900))

(assert (=> b!6156231 m!6994838))

(declare-fun m!6994902 () Bool)

(assert (=> b!6156231 m!6994902))

(assert (=> b!6155856 d!1928911))

(declare-fun bs!1525813 () Bool)

(declare-fun d!1928913 () Bool)

(assert (= bs!1525813 (and d!1928913 b!6155358)))

(declare-fun lambda!335855 () Int)

(assert (=> bs!1525813 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335855 lambda!335789))))

(declare-fun bs!1525814 () Bool)

(assert (= bs!1525814 (and d!1928913 d!1928869)))

(assert (=> bs!1525814 (= lambda!335855 lambda!335851)))

(assert (=> d!1928913 true))

(assert (=> d!1928913 (= (derivationStepZipper!2071 lt!2335135 (head!12718 (t!378090 s!2326))) (flatMap!1604 lt!2335135 lambda!335855))))

(declare-fun bs!1525815 () Bool)

(assert (= bs!1525815 d!1928913))

(declare-fun m!6994904 () Bool)

(assert (=> bs!1525815 m!6994904))

(assert (=> b!6155856 d!1928913))

(assert (=> b!6155856 d!1928873))

(assert (=> b!6155856 d!1928875))

(declare-fun d!1928915 () Bool)

(assert (=> d!1928915 (= (isEmpty!36441 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326)) (not ((_ is Some!15989) (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326))))))

(assert (=> d!1928845 d!1928915))

(assert (=> d!1928777 d!1928887))

(declare-fun d!1928917 () Bool)

(declare-fun c!1108390 () Bool)

(assert (=> d!1928917 (= c!1108390 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3750984 () Bool)

(assert (=> d!1928917 (= (matchZipper!2111 (derivationStepZipper!2071 lt!2335136 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3750984)))

(declare-fun b!6156232 () Bool)

(assert (=> b!6156232 (= e!3750984 (nullableZipper!1879 (derivationStepZipper!2071 lt!2335136 (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156233 () Bool)

(assert (=> b!6156233 (= e!3750984 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 lt!2335136 (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1928917 c!1108390) b!6156232))

(assert (= (and d!1928917 (not c!1108390)) b!6156233))

(assert (=> d!1928917 m!6994358))

(assert (=> d!1928917 m!6994830))

(assert (=> b!6156232 m!6994600))

(declare-fun m!6994906 () Bool)

(assert (=> b!6156232 m!6994906))

(assert (=> b!6156233 m!6994358))

(assert (=> b!6156233 m!6994834))

(assert (=> b!6156233 m!6994600))

(assert (=> b!6156233 m!6994834))

(declare-fun m!6994908 () Bool)

(assert (=> b!6156233 m!6994908))

(assert (=> b!6156233 m!6994358))

(assert (=> b!6156233 m!6994838))

(assert (=> b!6156233 m!6994908))

(assert (=> b!6156233 m!6994838))

(declare-fun m!6994910 () Bool)

(assert (=> b!6156233 m!6994910))

(assert (=> b!6155854 d!1928917))

(declare-fun bs!1525817 () Bool)

(declare-fun d!1928919 () Bool)

(assert (= bs!1525817 (and d!1928919 b!6155358)))

(declare-fun lambda!335859 () Int)

(assert (=> bs!1525817 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335859 lambda!335789))))

(declare-fun bs!1525818 () Bool)

(assert (= bs!1525818 (and d!1928919 d!1928869)))

(assert (=> bs!1525818 (= lambda!335859 lambda!335851)))

(declare-fun bs!1525819 () Bool)

(assert (= bs!1525819 (and d!1928919 d!1928913)))

(assert (=> bs!1525819 (= lambda!335859 lambda!335855)))

(assert (=> d!1928919 true))

(assert (=> d!1928919 (= (derivationStepZipper!2071 lt!2335136 (head!12718 (t!378090 s!2326))) (flatMap!1604 lt!2335136 lambda!335859))))

(declare-fun bs!1525821 () Bool)

(assert (= bs!1525821 d!1928919))

(declare-fun m!6994914 () Bool)

(assert (=> bs!1525821 m!6994914))

(assert (=> b!6155854 d!1928919))

(assert (=> b!6155854 d!1928873))

(assert (=> b!6155854 d!1928875))

(declare-fun d!1928923 () Bool)

(declare-fun res!2549665 () Bool)

(declare-fun e!3750989 () Bool)

(assert (=> d!1928923 (=> res!2549665 e!3750989)))

(assert (=> d!1928923 (= res!2549665 ((_ is Nil!64472) (exprs!5983 setElem!41694)))))

(assert (=> d!1928923 (= (forall!15220 (exprs!5983 setElem!41694) lambda!335825) e!3750989)))

(declare-fun b!6156240 () Bool)

(declare-fun e!3750990 () Bool)

(assert (=> b!6156240 (= e!3750989 e!3750990)))

(declare-fun res!2549666 () Bool)

(assert (=> b!6156240 (=> (not res!2549666) (not e!3750990))))

(declare-fun dynLambda!25418 (Int Regex!16099) Bool)

(assert (=> b!6156240 (= res!2549666 (dynLambda!25418 lambda!335825 (h!70920 (exprs!5983 setElem!41694))))))

(declare-fun b!6156241 () Bool)

(assert (=> b!6156241 (= e!3750990 (forall!15220 (t!378088 (exprs!5983 setElem!41694)) lambda!335825))))

(assert (= (and d!1928923 (not res!2549665)) b!6156240))

(assert (= (and b!6156240 res!2549666) b!6156241))

(declare-fun b_lambda!234325 () Bool)

(assert (=> (not b_lambda!234325) (not b!6156240)))

(declare-fun m!6994920 () Bool)

(assert (=> b!6156240 m!6994920))

(declare-fun m!6994922 () Bool)

(assert (=> b!6156241 m!6994922))

(assert (=> d!1928765 d!1928923))

(declare-fun b!6156242 () Bool)

(declare-fun e!3750992 () (InoxSet Context!10966))

(declare-fun e!3750991 () (InoxSet Context!10966))

(assert (=> b!6156242 (= e!3750992 e!3750991)))

(declare-fun c!1108391 () Bool)

(assert (=> b!6156242 (= c!1108391 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123))))))))

(declare-fun d!1928933 () Bool)

(declare-fun c!1108392 () Bool)

(declare-fun e!3750993 () Bool)

(assert (=> d!1928933 (= c!1108392 e!3750993)))

(declare-fun res!2549667 () Bool)

(assert (=> d!1928933 (=> (not res!2549667) (not e!3750993))))

(assert (=> d!1928933 (= res!2549667 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123))))))))

(assert (=> d!1928933 (= (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 lt!2335123))) (h!70922 s!2326)) e!3750992)))

(declare-fun b!6156243 () Bool)

(assert (=> b!6156243 (= e!3750991 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156244 () Bool)

(assert (=> b!6156244 (= e!3750993 (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123)))))))))

(declare-fun b!6156245 () Bool)

(declare-fun call!512367 () (InoxSet Context!10966))

(assert (=> b!6156245 (= e!3750991 call!512367)))

(declare-fun bm!512362 () Bool)

(assert (=> bm!512362 (= call!512367 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123)))))) (h!70922 s!2326)))))

(declare-fun b!6156246 () Bool)

(assert (=> b!6156246 (= e!3750992 ((_ map or) call!512367 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123)))))) (h!70922 s!2326))))))

(assert (= (and d!1928933 res!2549667) b!6156244))

(assert (= (and d!1928933 c!1108392) b!6156246))

(assert (= (and d!1928933 (not c!1108392)) b!6156242))

(assert (= (and b!6156242 c!1108391) b!6156245))

(assert (= (and b!6156242 (not c!1108391)) b!6156243))

(assert (= (or b!6156246 b!6156245) bm!512362))

(declare-fun m!6994924 () Bool)

(assert (=> b!6156244 m!6994924))

(declare-fun m!6994926 () Bool)

(assert (=> bm!512362 m!6994926))

(declare-fun m!6994928 () Bool)

(assert (=> b!6156246 m!6994928))

(assert (=> b!6155787 d!1928933))

(declare-fun bs!1525824 () Bool)

(declare-fun d!1928935 () Bool)

(assert (= bs!1525824 (and d!1928935 d!1928891)))

(declare-fun lambda!335860 () Int)

(assert (=> bs!1525824 (= lambda!335860 lambda!335854)))

(assert (=> d!1928935 (= (nullableZipper!1879 lt!2335127) (exists!2443 lt!2335127 lambda!335860))))

(declare-fun bs!1525825 () Bool)

(assert (= bs!1525825 d!1928935))

(declare-fun m!6994930 () Bool)

(assert (=> bs!1525825 m!6994930))

(assert (=> b!6155851 d!1928935))

(declare-fun d!1928937 () Bool)

(assert (=> d!1928937 (= (head!12718 s!2326) (h!70922 s!2326))))

(assert (=> b!6155679 d!1928937))

(declare-fun d!1928939 () Bool)

(declare-fun c!1108393 () Bool)

(assert (=> d!1928939 (= c!1108393 (isEmpty!36438 (t!378090 s!2326)))))

(declare-fun e!3750994 () Bool)

(assert (=> d!1928939 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335133) (t!378090 s!2326)) e!3750994)))

(declare-fun b!6156247 () Bool)

(assert (=> b!6156247 (= e!3750994 (nullableZipper!1879 ((_ map or) lt!2335135 lt!2335133)))))

(declare-fun b!6156248 () Bool)

(assert (=> b!6156248 (= e!3750994 (matchZipper!2111 (derivationStepZipper!2071 ((_ map or) lt!2335135 lt!2335133) (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))))))

(assert (= (and d!1928939 c!1108393) b!6156247))

(assert (= (and d!1928939 (not c!1108393)) b!6156248))

(assert (=> d!1928939 m!6994350))

(declare-fun m!6994932 () Bool)

(assert (=> b!6156247 m!6994932))

(assert (=> b!6156248 m!6994354))

(assert (=> b!6156248 m!6994354))

(declare-fun m!6994934 () Bool)

(assert (=> b!6156248 m!6994934))

(assert (=> b!6156248 m!6994358))

(assert (=> b!6156248 m!6994934))

(assert (=> b!6156248 m!6994358))

(declare-fun m!6994936 () Bool)

(assert (=> b!6156248 m!6994936))

(assert (=> d!1928763 d!1928939))

(assert (=> d!1928763 d!1928761))

(declare-fun e!3750999 () Bool)

(declare-fun d!1928941 () Bool)

(assert (=> d!1928941 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335133) (t!378090 s!2326)) e!3750999)))

(declare-fun res!2549674 () Bool)

(assert (=> d!1928941 (=> res!2549674 e!3750999)))

(assert (=> d!1928941 (= res!2549674 (matchZipper!2111 lt!2335135 (t!378090 s!2326)))))

(assert (=> d!1928941 true))

(declare-fun _$48!1709 () Unit!157573)

(assert (=> d!1928941 (= (choose!45760 lt!2335135 lt!2335133 (t!378090 s!2326)) _$48!1709)))

(declare-fun b!6156255 () Bool)

(assert (=> b!6156255 (= e!3750999 (matchZipper!2111 lt!2335133 (t!378090 s!2326)))))

(assert (= (and d!1928941 (not res!2549674)) b!6156255))

(assert (=> d!1928941 m!6994610))

(assert (=> d!1928941 m!6994216))

(assert (=> b!6156255 m!6994266))

(assert (=> d!1928763 d!1928941))

(assert (=> d!1928713 d!1928711))

(assert (=> d!1928713 d!1928683))

(declare-fun d!1928943 () Bool)

(assert (=> d!1928943 (= (matchR!8282 r!7292 s!2326) (matchRSpec!3200 r!7292 s!2326))))

(assert (=> d!1928943 true))

(declare-fun _$88!4710 () Unit!157573)

(assert (=> d!1928943 (= (choose!45759 r!7292 s!2326) _$88!4710)))

(declare-fun bs!1525826 () Bool)

(assert (= bs!1525826 d!1928943))

(assert (=> bs!1525826 m!6994208))

(assert (=> bs!1525826 m!6994206))

(assert (=> d!1928713 d!1928943))

(assert (=> d!1928713 d!1928721))

(declare-fun d!1928945 () Bool)

(assert (=> d!1928945 (= (isEmpty!36436 (exprs!5983 (h!70921 zl!343))) ((_ is Nil!64472) (exprs!5983 (h!70921 zl!343))))))

(assert (=> b!6155887 d!1928945))

(declare-fun d!1928947 () Bool)

(declare-fun c!1108396 () Bool)

(assert (=> d!1928947 (= c!1108396 ((_ is Nil!64473) lt!2335202))))

(declare-fun e!3751004 () (InoxSet Context!10966))

(assert (=> d!1928947 (= (content!12018 lt!2335202) e!3751004)))

(declare-fun b!6156264 () Bool)

(assert (=> b!6156264 (= e!3751004 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156265 () Bool)

(assert (=> b!6156265 (= e!3751004 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) (h!70921 lt!2335202) true) (content!12018 (t!378089 lt!2335202))))))

(assert (= (and d!1928947 c!1108396) b!6156264))

(assert (= (and d!1928947 (not c!1108396)) b!6156265))

(declare-fun m!6994938 () Bool)

(assert (=> b!6156265 m!6994938))

(declare-fun m!6994940 () Bool)

(assert (=> b!6156265 m!6994940))

(assert (=> b!6155902 d!1928947))

(declare-fun d!1928949 () Bool)

(assert (=> d!1928949 (= (nullable!6092 (reg!16428 r!7292)) (nullableFct!2056 (reg!16428 r!7292)))))

(declare-fun bs!1525827 () Bool)

(assert (= bs!1525827 d!1928949))

(declare-fun m!6994942 () Bool)

(assert (=> bs!1525827 m!6994942))

(assert (=> b!6155742 d!1928949))

(assert (=> d!1928723 d!1928725))

(assert (=> d!1928723 d!1928761))

(declare-fun e!3751005 () Bool)

(declare-fun d!1928951 () Bool)

(assert (=> d!1928951 (= (matchZipper!2111 ((_ map or) lt!2335135 lt!2335111) (t!378090 s!2326)) e!3751005)))

(declare-fun res!2549679 () Bool)

(assert (=> d!1928951 (=> res!2549679 e!3751005)))

(assert (=> d!1928951 (= res!2549679 (matchZipper!2111 lt!2335135 (t!378090 s!2326)))))

(assert (=> d!1928951 true))

(declare-fun _$48!1710 () Unit!157573)

(assert (=> d!1928951 (= (choose!45760 lt!2335135 lt!2335111 (t!378090 s!2326)) _$48!1710)))

(declare-fun b!6156266 () Bool)

(assert (=> b!6156266 (= e!3751005 (matchZipper!2111 lt!2335111 (t!378090 s!2326)))))

(assert (= (and d!1928951 (not res!2549679)) b!6156266))

(assert (=> d!1928951 m!6994264))

(assert (=> d!1928951 m!6994216))

(assert (=> b!6156266 m!6994184))

(assert (=> d!1928723 d!1928951))

(declare-fun d!1928953 () Bool)

(declare-fun c!1108397 () Bool)

(assert (=> d!1928953 (= c!1108397 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3751006 () Bool)

(assert (=> d!1928953 (= (matchZipper!2111 (derivationStepZipper!2071 ((_ map or) lt!2335127 lt!2335111) (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3751006)))

(declare-fun b!6156267 () Bool)

(assert (=> b!6156267 (= e!3751006 (nullableZipper!1879 (derivationStepZipper!2071 ((_ map or) lt!2335127 lt!2335111) (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156268 () Bool)

(assert (=> b!6156268 (= e!3751006 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 ((_ map or) lt!2335127 lt!2335111) (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1928953 c!1108397) b!6156267))

(assert (= (and d!1928953 (not c!1108397)) b!6156268))

(assert (=> d!1928953 m!6994358))

(assert (=> d!1928953 m!6994830))

(assert (=> b!6156267 m!6994648))

(declare-fun m!6994944 () Bool)

(assert (=> b!6156267 m!6994944))

(assert (=> b!6156268 m!6994358))

(assert (=> b!6156268 m!6994834))

(assert (=> b!6156268 m!6994648))

(assert (=> b!6156268 m!6994834))

(declare-fun m!6994946 () Bool)

(assert (=> b!6156268 m!6994946))

(assert (=> b!6156268 m!6994358))

(assert (=> b!6156268 m!6994838))

(assert (=> b!6156268 m!6994946))

(assert (=> b!6156268 m!6994838))

(declare-fun m!6994948 () Bool)

(assert (=> b!6156268 m!6994948))

(assert (=> b!6155905 d!1928953))

(declare-fun bs!1525830 () Bool)

(declare-fun d!1928955 () Bool)

(assert (= bs!1525830 (and d!1928955 b!6155358)))

(declare-fun lambda!335866 () Int)

(assert (=> bs!1525830 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335866 lambda!335789))))

(declare-fun bs!1525832 () Bool)

(assert (= bs!1525832 (and d!1928955 d!1928869)))

(assert (=> bs!1525832 (= lambda!335866 lambda!335851)))

(declare-fun bs!1525833 () Bool)

(assert (= bs!1525833 (and d!1928955 d!1928913)))

(assert (=> bs!1525833 (= lambda!335866 lambda!335855)))

(declare-fun bs!1525835 () Bool)

(assert (= bs!1525835 (and d!1928955 d!1928919)))

(assert (=> bs!1525835 (= lambda!335866 lambda!335859)))

(assert (=> d!1928955 true))

(assert (=> d!1928955 (= (derivationStepZipper!2071 ((_ map or) lt!2335127 lt!2335111) (head!12718 (t!378090 s!2326))) (flatMap!1604 ((_ map or) lt!2335127 lt!2335111) lambda!335866))))

(declare-fun bs!1525836 () Bool)

(assert (= bs!1525836 d!1928955))

(declare-fun m!6994950 () Bool)

(assert (=> bs!1525836 m!6994950))

(assert (=> b!6155905 d!1928955))

(assert (=> b!6155905 d!1928873))

(assert (=> b!6155905 d!1928875))

(assert (=> b!6155765 d!1928675))

(declare-fun bs!1525838 () Bool)

(declare-fun d!1928957 () Bool)

(assert (= bs!1525838 (and d!1928957 d!1928891)))

(declare-fun lambda!335867 () Int)

(assert (=> bs!1525838 (= lambda!335867 lambda!335854)))

(declare-fun bs!1525839 () Bool)

(assert (= bs!1525839 (and d!1928957 d!1928935)))

(assert (=> bs!1525839 (= lambda!335867 lambda!335860)))

(assert (=> d!1928957 (= (nullableZipper!1879 ((_ map or) lt!2335135 lt!2335111)) (exists!2443 ((_ map or) lt!2335135 lt!2335111) lambda!335867))))

(declare-fun bs!1525840 () Bool)

(assert (= bs!1525840 d!1928957))

(declare-fun m!6994952 () Bool)

(assert (=> bs!1525840 m!6994952))

(assert (=> b!6155766 d!1928957))

(declare-fun d!1928959 () Bool)

(assert (=> d!1928959 (= (head!12720 (unfocusZipperList!1520 zl!343)) (h!70920 (unfocusZipperList!1520 zl!343)))))

(assert (=> b!6155840 d!1928959))

(declare-fun b!6156269 () Bool)

(declare-fun e!3751013 () Bool)

(declare-fun e!3751008 () Bool)

(assert (=> b!6156269 (= e!3751013 e!3751008)))

(declare-fun c!1108398 () Bool)

(assert (=> b!6156269 (= c!1108398 ((_ is Star!16099) lt!2335187))))

(declare-fun b!6156270 () Bool)

(declare-fun e!3751011 () Bool)

(declare-fun e!3751010 () Bool)

(assert (=> b!6156270 (= e!3751011 e!3751010)))

(declare-fun res!2549681 () Bool)

(assert (=> b!6156270 (=> (not res!2549681) (not e!3751010))))

(declare-fun call!512369 () Bool)

(assert (=> b!6156270 (= res!2549681 call!512369)))

(declare-fun b!6156271 () Bool)

(declare-fun e!3751012 () Bool)

(assert (=> b!6156271 (= e!3751008 e!3751012)))

(declare-fun res!2549684 () Bool)

(assert (=> b!6156271 (= res!2549684 (not (nullable!6092 (reg!16428 lt!2335187))))))

(assert (=> b!6156271 (=> (not res!2549684) (not e!3751012))))

(declare-fun b!6156272 () Bool)

(declare-fun e!3751007 () Bool)

(declare-fun call!512370 () Bool)

(assert (=> b!6156272 (= e!3751007 call!512370)))

(declare-fun bm!512363 () Bool)

(declare-fun call!512368 () Bool)

(assert (=> bm!512363 (= call!512370 call!512368)))

(declare-fun b!6156273 () Bool)

(declare-fun res!2549682 () Bool)

(assert (=> b!6156273 (=> (not res!2549682) (not e!3751007))))

(assert (=> b!6156273 (= res!2549682 call!512369)))

(declare-fun e!3751009 () Bool)

(assert (=> b!6156273 (= e!3751009 e!3751007)))

(declare-fun bm!512365 () Bool)

(declare-fun c!1108399 () Bool)

(assert (=> bm!512365 (= call!512368 (validRegex!7835 (ite c!1108398 (reg!16428 lt!2335187) (ite c!1108399 (regTwo!32711 lt!2335187) (regTwo!32710 lt!2335187)))))))

(declare-fun b!6156274 () Bool)

(assert (=> b!6156274 (= e!3751010 call!512370)))

(declare-fun bm!512364 () Bool)

(assert (=> bm!512364 (= call!512369 (validRegex!7835 (ite c!1108399 (regOne!32711 lt!2335187) (regOne!32710 lt!2335187))))))

(declare-fun d!1928961 () Bool)

(declare-fun res!2549683 () Bool)

(assert (=> d!1928961 (=> res!2549683 e!3751013)))

(assert (=> d!1928961 (= res!2549683 ((_ is ElementMatch!16099) lt!2335187))))

(assert (=> d!1928961 (= (validRegex!7835 lt!2335187) e!3751013)))

(declare-fun b!6156275 () Bool)

(assert (=> b!6156275 (= e!3751012 call!512368)))

(declare-fun b!6156276 () Bool)

(assert (=> b!6156276 (= e!3751008 e!3751009)))

(assert (=> b!6156276 (= c!1108399 ((_ is Union!16099) lt!2335187))))

(declare-fun b!6156277 () Bool)

(declare-fun res!2549680 () Bool)

(assert (=> b!6156277 (=> res!2549680 e!3751011)))

(assert (=> b!6156277 (= res!2549680 (not ((_ is Concat!24944) lt!2335187)))))

(assert (=> b!6156277 (= e!3751009 e!3751011)))

(assert (= (and d!1928961 (not res!2549683)) b!6156269))

(assert (= (and b!6156269 c!1108398) b!6156271))

(assert (= (and b!6156269 (not c!1108398)) b!6156276))

(assert (= (and b!6156271 res!2549684) b!6156275))

(assert (= (and b!6156276 c!1108399) b!6156273))

(assert (= (and b!6156276 (not c!1108399)) b!6156277))

(assert (= (and b!6156273 res!2549682) b!6156272))

(assert (= (and b!6156277 (not res!2549680)) b!6156270))

(assert (= (and b!6156270 res!2549681) b!6156274))

(assert (= (or b!6156272 b!6156274) bm!512363))

(assert (= (or b!6156273 b!6156270) bm!512364))

(assert (= (or b!6156275 bm!512363) bm!512365))

(declare-fun m!6994954 () Bool)

(assert (=> b!6156271 m!6994954))

(declare-fun m!6994956 () Bool)

(assert (=> bm!512365 m!6994956))

(declare-fun m!6994958 () Bool)

(assert (=> bm!512364 m!6994958))

(assert (=> d!1928747 d!1928961))

(declare-fun d!1928963 () Bool)

(declare-fun res!2549685 () Bool)

(declare-fun e!3751014 () Bool)

(assert (=> d!1928963 (=> res!2549685 e!3751014)))

(assert (=> d!1928963 (= res!2549685 ((_ is Nil!64472) (unfocusZipperList!1520 zl!343)))))

(assert (=> d!1928963 (= (forall!15220 (unfocusZipperList!1520 zl!343) lambda!335820) e!3751014)))

(declare-fun b!6156278 () Bool)

(declare-fun e!3751015 () Bool)

(assert (=> b!6156278 (= e!3751014 e!3751015)))

(declare-fun res!2549686 () Bool)

(assert (=> b!6156278 (=> (not res!2549686) (not e!3751015))))

(assert (=> b!6156278 (= res!2549686 (dynLambda!25418 lambda!335820 (h!70920 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6156279 () Bool)

(assert (=> b!6156279 (= e!3751015 (forall!15220 (t!378088 (unfocusZipperList!1520 zl!343)) lambda!335820))))

(assert (= (and d!1928963 (not res!2549685)) b!6156278))

(assert (= (and b!6156278 res!2549686) b!6156279))

(declare-fun b_lambda!234327 () Bool)

(assert (=> (not b_lambda!234327) (not b!6156278)))

(declare-fun m!6994960 () Bool)

(assert (=> b!6156278 m!6994960))

(declare-fun m!6994962 () Bool)

(assert (=> b!6156279 m!6994962))

(assert (=> d!1928747 d!1928963))

(declare-fun d!1928965 () Bool)

(assert (=> d!1928965 (= (isEmpty!36438 (tail!11803 s!2326)) ((_ is Nil!64474) (tail!11803 s!2326)))))

(assert (=> b!6155681 d!1928965))

(declare-fun d!1928967 () Bool)

(assert (=> d!1928967 (= (tail!11803 s!2326) (t!378090 s!2326))))

(assert (=> b!6155681 d!1928967))

(declare-fun b!6156280 () Bool)

(declare-fun e!3751021 () Bool)

(assert (=> b!6156280 (= e!3751021 (nullable!6092 (regTwo!32710 r!7292)))))

(declare-fun b!6156281 () Bool)

(declare-fun e!3751018 () Bool)

(declare-fun lt!2335229 () Bool)

(declare-fun call!512371 () Bool)

(assert (=> b!6156281 (= e!3751018 (= lt!2335229 call!512371))))

(declare-fun d!1928969 () Bool)

(assert (=> d!1928969 e!3751018))

(declare-fun c!1108401 () Bool)

(assert (=> d!1928969 (= c!1108401 ((_ is EmptyExpr!16099) (regTwo!32710 r!7292)))))

(assert (=> d!1928969 (= lt!2335229 e!3751021)))

(declare-fun c!1108400 () Bool)

(assert (=> d!1928969 (= c!1108400 (isEmpty!36438 (_2!36381 (get!22250 lt!2335220))))))

(assert (=> d!1928969 (validRegex!7835 (regTwo!32710 r!7292))))

(assert (=> d!1928969 (= (matchR!8282 (regTwo!32710 r!7292) (_2!36381 (get!22250 lt!2335220))) lt!2335229)))

(declare-fun b!6156282 () Bool)

(declare-fun e!3751020 () Bool)

(declare-fun e!3751017 () Bool)

(assert (=> b!6156282 (= e!3751020 e!3751017)))

(declare-fun res!2549691 () Bool)

(assert (=> b!6156282 (=> (not res!2549691) (not e!3751017))))

(assert (=> b!6156282 (= res!2549691 (not lt!2335229))))

(declare-fun b!6156283 () Bool)

(declare-fun e!3751016 () Bool)

(assert (=> b!6156283 (= e!3751018 e!3751016)))

(declare-fun c!1108402 () Bool)

(assert (=> b!6156283 (= c!1108402 ((_ is EmptyLang!16099) (regTwo!32710 r!7292)))))

(declare-fun b!6156284 () Bool)

(declare-fun res!2549692 () Bool)

(declare-fun e!3751022 () Bool)

(assert (=> b!6156284 (=> res!2549692 e!3751022)))

(assert (=> b!6156284 (= res!2549692 (not (isEmpty!36438 (tail!11803 (_2!36381 (get!22250 lt!2335220))))))))

(declare-fun bm!512366 () Bool)

(assert (=> bm!512366 (= call!512371 (isEmpty!36438 (_2!36381 (get!22250 lt!2335220))))))

(declare-fun b!6156285 () Bool)

(assert (=> b!6156285 (= e!3751021 (matchR!8282 (derivativeStep!4818 (regTwo!32710 r!7292) (head!12718 (_2!36381 (get!22250 lt!2335220)))) (tail!11803 (_2!36381 (get!22250 lt!2335220)))))))

(declare-fun b!6156286 () Bool)

(assert (=> b!6156286 (= e!3751016 (not lt!2335229))))

(declare-fun b!6156287 () Bool)

(declare-fun res!2549687 () Bool)

(declare-fun e!3751019 () Bool)

(assert (=> b!6156287 (=> (not res!2549687) (not e!3751019))))

(assert (=> b!6156287 (= res!2549687 (not call!512371))))

(declare-fun b!6156288 () Bool)

(declare-fun res!2549689 () Bool)

(assert (=> b!6156288 (=> res!2549689 e!3751020)))

(assert (=> b!6156288 (= res!2549689 e!3751019)))

(declare-fun res!2549690 () Bool)

(assert (=> b!6156288 (=> (not res!2549690) (not e!3751019))))

(assert (=> b!6156288 (= res!2549690 lt!2335229)))

(declare-fun b!6156289 () Bool)

(assert (=> b!6156289 (= e!3751017 e!3751022)))

(declare-fun res!2549693 () Bool)

(assert (=> b!6156289 (=> res!2549693 e!3751022)))

(assert (=> b!6156289 (= res!2549693 call!512371)))

(declare-fun b!6156290 () Bool)

(assert (=> b!6156290 (= e!3751019 (= (head!12718 (_2!36381 (get!22250 lt!2335220))) (c!1108140 (regTwo!32710 r!7292))))))

(declare-fun b!6156291 () Bool)

(declare-fun res!2549688 () Bool)

(assert (=> b!6156291 (=> res!2549688 e!3751020)))

(assert (=> b!6156291 (= res!2549688 (not ((_ is ElementMatch!16099) (regTwo!32710 r!7292))))))

(assert (=> b!6156291 (= e!3751016 e!3751020)))

(declare-fun b!6156292 () Bool)

(declare-fun res!2549694 () Bool)

(assert (=> b!6156292 (=> (not res!2549694) (not e!3751019))))

(assert (=> b!6156292 (= res!2549694 (isEmpty!36438 (tail!11803 (_2!36381 (get!22250 lt!2335220)))))))

(declare-fun b!6156293 () Bool)

(assert (=> b!6156293 (= e!3751022 (not (= (head!12718 (_2!36381 (get!22250 lt!2335220))) (c!1108140 (regTwo!32710 r!7292)))))))

(assert (= (and d!1928969 c!1108400) b!6156280))

(assert (= (and d!1928969 (not c!1108400)) b!6156285))

(assert (= (and d!1928969 c!1108401) b!6156281))

(assert (= (and d!1928969 (not c!1108401)) b!6156283))

(assert (= (and b!6156283 c!1108402) b!6156286))

(assert (= (and b!6156283 (not c!1108402)) b!6156291))

(assert (= (and b!6156291 (not res!2549688)) b!6156288))

(assert (= (and b!6156288 res!2549690) b!6156287))

(assert (= (and b!6156287 res!2549687) b!6156292))

(assert (= (and b!6156292 res!2549694) b!6156290))

(assert (= (and b!6156288 (not res!2549689)) b!6156282))

(assert (= (and b!6156282 res!2549691) b!6156289))

(assert (= (and b!6156289 (not res!2549693)) b!6156284))

(assert (= (and b!6156284 (not res!2549692)) b!6156293))

(assert (= (or b!6156281 b!6156287 b!6156289) bm!512366))

(declare-fun m!6994966 () Bool)

(assert (=> d!1928969 m!6994966))

(declare-fun m!6994970 () Bool)

(assert (=> d!1928969 m!6994970))

(declare-fun m!6994972 () Bool)

(assert (=> b!6156285 m!6994972))

(assert (=> b!6156285 m!6994972))

(declare-fun m!6994974 () Bool)

(assert (=> b!6156285 m!6994974))

(declare-fun m!6994976 () Bool)

(assert (=> b!6156285 m!6994976))

(assert (=> b!6156285 m!6994974))

(assert (=> b!6156285 m!6994976))

(declare-fun m!6994978 () Bool)

(assert (=> b!6156285 m!6994978))

(assert (=> b!6156292 m!6994976))

(assert (=> b!6156292 m!6994976))

(declare-fun m!6994980 () Bool)

(assert (=> b!6156292 m!6994980))

(declare-fun m!6994982 () Bool)

(assert (=> b!6156280 m!6994982))

(assert (=> bm!512366 m!6994966))

(assert (=> b!6156284 m!6994976))

(assert (=> b!6156284 m!6994976))

(assert (=> b!6156284 m!6994980))

(assert (=> b!6156293 m!6994972))

(assert (=> b!6156290 m!6994972))

(assert (=> b!6156089 d!1928969))

(declare-fun d!1928973 () Bool)

(assert (=> d!1928973 (= (get!22250 lt!2335220) (v!52128 lt!2335220))))

(assert (=> b!6156089 d!1928973))

(assert (=> d!1928675 d!1928887))

(declare-fun d!1928975 () Bool)

(assert (=> d!1928975 (= (nullable!6092 r!7292) (nullableFct!2056 r!7292))))

(declare-fun bs!1525842 () Bool)

(assert (= bs!1525842 d!1928975))

(declare-fun m!6994984 () Bool)

(assert (=> bs!1525842 m!6994984))

(assert (=> b!6155669 d!1928975))

(declare-fun d!1928977 () Bool)

(declare-fun res!2549700 () Bool)

(declare-fun e!3751030 () Bool)

(assert (=> d!1928977 (=> res!2549700 e!3751030)))

(assert (=> d!1928977 (= res!2549700 ((_ is Nil!64472) (exprs!5983 lt!2335134)))))

(assert (=> d!1928977 (= (forall!15220 (exprs!5983 lt!2335134) lambda!335817) e!3751030)))

(declare-fun b!6156303 () Bool)

(declare-fun e!3751031 () Bool)

(assert (=> b!6156303 (= e!3751030 e!3751031)))

(declare-fun res!2549701 () Bool)

(assert (=> b!6156303 (=> (not res!2549701) (not e!3751031))))

(assert (=> b!6156303 (= res!2549701 (dynLambda!25418 lambda!335817 (h!70920 (exprs!5983 lt!2335134))))))

(declare-fun b!6156304 () Bool)

(assert (=> b!6156304 (= e!3751031 (forall!15220 (t!378088 (exprs!5983 lt!2335134)) lambda!335817))))

(assert (= (and d!1928977 (not res!2549700)) b!6156303))

(assert (= (and b!6156303 res!2549701) b!6156304))

(declare-fun b_lambda!234329 () Bool)

(assert (=> (not b_lambda!234329) (not b!6156303)))

(declare-fun m!6994992 () Bool)

(assert (=> b!6156303 m!6994992))

(declare-fun m!6994994 () Bool)

(assert (=> b!6156304 m!6994994))

(assert (=> d!1928719 d!1928977))

(declare-fun d!1928981 () Bool)

(declare-fun c!1108408 () Bool)

(assert (=> d!1928981 (= c!1108408 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3751039 () Bool)

(assert (=> d!1928981 (= (matchZipper!2111 (derivationStepZipper!2071 lt!2335111 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3751039)))

(declare-fun b!6156312 () Bool)

(assert (=> b!6156312 (= e!3751039 (nullableZipper!1879 (derivationStepZipper!2071 lt!2335111 (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156313 () Bool)

(assert (=> b!6156313 (= e!3751039 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 lt!2335111 (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1928981 c!1108408) b!6156312))

(assert (= (and d!1928981 (not c!1108408)) b!6156313))

(assert (=> d!1928981 m!6994358))

(assert (=> d!1928981 m!6994830))

(assert (=> b!6156312 m!6994356))

(declare-fun m!6994996 () Bool)

(assert (=> b!6156312 m!6994996))

(assert (=> b!6156313 m!6994358))

(assert (=> b!6156313 m!6994834))

(assert (=> b!6156313 m!6994356))

(assert (=> b!6156313 m!6994834))

(declare-fun m!6994998 () Bool)

(assert (=> b!6156313 m!6994998))

(assert (=> b!6156313 m!6994358))

(assert (=> b!6156313 m!6994838))

(assert (=> b!6156313 m!6994998))

(assert (=> b!6156313 m!6994838))

(declare-fun m!6995000 () Bool)

(assert (=> b!6156313 m!6995000))

(assert (=> b!6155494 d!1928981))

(declare-fun bs!1525843 () Bool)

(declare-fun d!1928983 () Bool)

(assert (= bs!1525843 (and d!1928983 d!1928919)))

(declare-fun lambda!335869 () Int)

(assert (=> bs!1525843 (= lambda!335869 lambda!335859)))

(declare-fun bs!1525844 () Bool)

(assert (= bs!1525844 (and d!1928983 d!1928869)))

(assert (=> bs!1525844 (= lambda!335869 lambda!335851)))

(declare-fun bs!1525845 () Bool)

(assert (= bs!1525845 (and d!1928983 d!1928913)))

(assert (=> bs!1525845 (= lambda!335869 lambda!335855)))

(declare-fun bs!1525846 () Bool)

(assert (= bs!1525846 (and d!1928983 b!6155358)))

(assert (=> bs!1525846 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335869 lambda!335789))))

(declare-fun bs!1525847 () Bool)

(assert (= bs!1525847 (and d!1928983 d!1928955)))

(assert (=> bs!1525847 (= lambda!335869 lambda!335866)))

(assert (=> d!1928983 true))

(assert (=> d!1928983 (= (derivationStepZipper!2071 lt!2335111 (head!12718 (t!378090 s!2326))) (flatMap!1604 lt!2335111 lambda!335869))))

(declare-fun bs!1525848 () Bool)

(assert (= bs!1525848 d!1928983))

(declare-fun m!6995002 () Bool)

(assert (=> bs!1525848 m!6995002))

(assert (=> b!6155494 d!1928983))

(assert (=> b!6155494 d!1928873))

(assert (=> b!6155494 d!1928875))

(assert (=> b!6155884 d!1928825))

(declare-fun c!1108410 () Bool)

(declare-fun call!512376 () (InoxSet Context!10966))

(declare-fun call!512377 () List!64596)

(declare-fun c!1108411 () Bool)

(declare-fun c!1108409 () Bool)

(declare-fun bm!512371 () Bool)

(assert (=> bm!512371 (= call!512376 (derivationStepZipperDown!1347 (ite c!1108410 (regTwo!32711 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (ite c!1108411 (regTwo!32710 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (ite c!1108409 (regOne!32710 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (reg!16428 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292)))))))))) (ite (or c!1108410 c!1108411) (ite (or c!1108342 c!1108343) lt!2335134 (Context!10967 call!512328)) (Context!10967 call!512377)) (h!70922 s!2326)))))

(declare-fun b!6156321 () Bool)

(declare-fun e!3751044 () (InoxSet Context!10966))

(declare-fun call!512381 () (InoxSet Context!10966))

(assert (=> b!6156321 (= e!3751044 ((_ map or) call!512381 call!512376))))

(declare-fun b!6156322 () Bool)

(declare-fun e!3751043 () (InoxSet Context!10966))

(assert (=> b!6156322 (= e!3751043 e!3751044)))

(assert (=> b!6156322 (= c!1108410 ((_ is Union!16099) (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))))))

(declare-fun b!6156323 () Bool)

(declare-fun e!3751045 () (InoxSet Context!10966))

(assert (=> b!6156323 (= e!3751045 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156324 () Bool)

(declare-fun e!3751040 () (InoxSet Context!10966))

(declare-fun e!3751042 () (InoxSet Context!10966))

(assert (=> b!6156324 (= e!3751040 e!3751042)))

(assert (=> b!6156324 (= c!1108409 ((_ is Concat!24944) (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))))))

(declare-fun b!6156325 () Bool)

(assert (=> b!6156325 (= e!3751043 (store ((as const (Array Context!10966 Bool)) false) (ite (or c!1108342 c!1108343) lt!2335134 (Context!10967 call!512328)) true))))

(declare-fun b!6156326 () Bool)

(declare-fun call!512379 () (InoxSet Context!10966))

(assert (=> b!6156326 (= e!3751040 ((_ map or) call!512381 call!512379))))

(declare-fun bm!512373 () Bool)

(declare-fun call!512378 () List!64596)

(assert (=> bm!512373 (= call!512378 ($colon$colon!1976 (exprs!5983 (ite (or c!1108342 c!1108343) lt!2335134 (Context!10967 call!512328))) (ite (or c!1108411 c!1108409) (regTwo!32710 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292)))))))))))

(declare-fun c!1108412 () Bool)

(declare-fun b!6156327 () Bool)

(assert (=> b!6156327 (= c!1108412 ((_ is Star!16099) (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))))))

(assert (=> b!6156327 (= e!3751042 e!3751045)))

(declare-fun bm!512372 () Bool)

(assert (=> bm!512372 (= call!512379 call!512376)))

(declare-fun d!1928985 () Bool)

(declare-fun c!1108413 () Bool)

(assert (=> d!1928985 (= c!1108413 (and ((_ is ElementMatch!16099) (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (= (c!1108140 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (h!70922 s!2326))))))

(assert (=> d!1928985 (= (derivationStepZipperDown!1347 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292)))))) (ite (or c!1108342 c!1108343) lt!2335134 (Context!10967 call!512328)) (h!70922 s!2326)) e!3751043)))

(declare-fun b!6156328 () Bool)

(declare-fun call!512380 () (InoxSet Context!10966))

(assert (=> b!6156328 (= e!3751045 call!512380)))

(declare-fun bm!512374 () Bool)

(assert (=> bm!512374 (= call!512377 call!512378)))

(declare-fun bm!512375 () Bool)

(assert (=> bm!512375 (= call!512381 (derivationStepZipperDown!1347 (ite c!1108410 (regOne!32711 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))) (regOne!32710 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292)))))))) (ite c!1108410 (ite (or c!1108342 c!1108343) lt!2335134 (Context!10967 call!512328)) (Context!10967 call!512378)) (h!70922 s!2326)))))

(declare-fun bm!512376 () Bool)

(assert (=> bm!512376 (= call!512380 call!512379)))

(declare-fun b!6156329 () Bool)

(assert (=> b!6156329 (= e!3751042 call!512380)))

(declare-fun b!6156330 () Bool)

(declare-fun e!3751041 () Bool)

(assert (=> b!6156330 (= e!3751041 (nullable!6092 (regOne!32710 (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292)))))))))))

(declare-fun b!6156331 () Bool)

(assert (=> b!6156331 (= c!1108411 e!3751041)))

(declare-fun res!2549710 () Bool)

(assert (=> b!6156331 (=> (not res!2549710) (not e!3751041))))

(assert (=> b!6156331 (= res!2549710 ((_ is Concat!24944) (ite c!1108342 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108343 (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))) (ite c!1108341 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))) (reg!16428 (regTwo!32711 (regOne!32710 r!7292))))))))))

(assert (=> b!6156331 (= e!3751044 e!3751040)))

(assert (= (and d!1928985 c!1108413) b!6156325))

(assert (= (and d!1928985 (not c!1108413)) b!6156322))

(assert (= (and b!6156322 c!1108410) b!6156321))

(assert (= (and b!6156322 (not c!1108410)) b!6156331))

(assert (= (and b!6156331 res!2549710) b!6156330))

(assert (= (and b!6156331 c!1108411) b!6156326))

(assert (= (and b!6156331 (not c!1108411)) b!6156324))

(assert (= (and b!6156324 c!1108409) b!6156329))

(assert (= (and b!6156324 (not c!1108409)) b!6156327))

(assert (= (and b!6156327 c!1108412) b!6156328))

(assert (= (and b!6156327 (not c!1108412)) b!6156323))

(assert (= (or b!6156329 b!6156328) bm!512374))

(assert (= (or b!6156329 b!6156328) bm!512376))

(assert (= (or b!6156326 bm!512374) bm!512373))

(assert (= (or b!6156326 bm!512376) bm!512372))

(assert (= (or b!6156321 bm!512372) bm!512371))

(assert (= (or b!6156321 b!6156326) bm!512375))

(declare-fun m!6995018 () Bool)

(assert (=> bm!512375 m!6995018))

(declare-fun m!6995020 () Bool)

(assert (=> b!6156330 m!6995020))

(declare-fun m!6995022 () Bool)

(assert (=> bm!512373 m!6995022))

(declare-fun m!6995024 () Bool)

(assert (=> b!6156325 m!6995024))

(declare-fun m!6995026 () Bool)

(assert (=> bm!512371 m!6995026))

(assert (=> bm!512322 d!1928985))

(assert (=> b!6155673 d!1928965))

(assert (=> b!6155673 d!1928967))

(declare-fun b!6156332 () Bool)

(declare-fun e!3751052 () Bool)

(declare-fun e!3751047 () Bool)

(assert (=> b!6156332 (= e!3751052 e!3751047)))

(declare-fun c!1108414 () Bool)

(assert (=> b!6156332 (= c!1108414 ((_ is Star!16099) lt!2335199))))

(declare-fun b!6156333 () Bool)

(declare-fun e!3751050 () Bool)

(declare-fun e!3751049 () Bool)

(assert (=> b!6156333 (= e!3751050 e!3751049)))

(declare-fun res!2549712 () Bool)

(assert (=> b!6156333 (=> (not res!2549712) (not e!3751049))))

(declare-fun call!512383 () Bool)

(assert (=> b!6156333 (= res!2549712 call!512383)))

(declare-fun b!6156334 () Bool)

(declare-fun e!3751051 () Bool)

(assert (=> b!6156334 (= e!3751047 e!3751051)))

(declare-fun res!2549715 () Bool)

(assert (=> b!6156334 (= res!2549715 (not (nullable!6092 (reg!16428 lt!2335199))))))

(assert (=> b!6156334 (=> (not res!2549715) (not e!3751051))))

(declare-fun b!6156335 () Bool)

(declare-fun e!3751046 () Bool)

(declare-fun call!512384 () Bool)

(assert (=> b!6156335 (= e!3751046 call!512384)))

(declare-fun bm!512377 () Bool)

(declare-fun call!512382 () Bool)

(assert (=> bm!512377 (= call!512384 call!512382)))

(declare-fun b!6156336 () Bool)

(declare-fun res!2549713 () Bool)

(assert (=> b!6156336 (=> (not res!2549713) (not e!3751046))))

(assert (=> b!6156336 (= res!2549713 call!512383)))

(declare-fun e!3751048 () Bool)

(assert (=> b!6156336 (= e!3751048 e!3751046)))

(declare-fun bm!512379 () Bool)

(declare-fun c!1108415 () Bool)

(assert (=> bm!512379 (= call!512382 (validRegex!7835 (ite c!1108414 (reg!16428 lt!2335199) (ite c!1108415 (regTwo!32711 lt!2335199) (regTwo!32710 lt!2335199)))))))

(declare-fun b!6156337 () Bool)

(assert (=> b!6156337 (= e!3751049 call!512384)))

(declare-fun bm!512378 () Bool)

(assert (=> bm!512378 (= call!512383 (validRegex!7835 (ite c!1108415 (regOne!32711 lt!2335199) (regOne!32710 lt!2335199))))))

(declare-fun d!1928991 () Bool)

(declare-fun res!2549714 () Bool)

(assert (=> d!1928991 (=> res!2549714 e!3751052)))

(assert (=> d!1928991 (= res!2549714 ((_ is ElementMatch!16099) lt!2335199))))

(assert (=> d!1928991 (= (validRegex!7835 lt!2335199) e!3751052)))

(declare-fun b!6156338 () Bool)

(assert (=> b!6156338 (= e!3751051 call!512382)))

(declare-fun b!6156339 () Bool)

(assert (=> b!6156339 (= e!3751047 e!3751048)))

(assert (=> b!6156339 (= c!1108415 ((_ is Union!16099) lt!2335199))))

(declare-fun b!6156340 () Bool)

(declare-fun res!2549711 () Bool)

(assert (=> b!6156340 (=> res!2549711 e!3751050)))

(assert (=> b!6156340 (= res!2549711 (not ((_ is Concat!24944) lt!2335199)))))

(assert (=> b!6156340 (= e!3751048 e!3751050)))

(assert (= (and d!1928991 (not res!2549714)) b!6156332))

(assert (= (and b!6156332 c!1108414) b!6156334))

(assert (= (and b!6156332 (not c!1108414)) b!6156339))

(assert (= (and b!6156334 res!2549715) b!6156338))

(assert (= (and b!6156339 c!1108415) b!6156336))

(assert (= (and b!6156339 (not c!1108415)) b!6156340))

(assert (= (and b!6156336 res!2549713) b!6156335))

(assert (= (and b!6156340 (not res!2549711)) b!6156333))

(assert (= (and b!6156333 res!2549712) b!6156337))

(assert (= (or b!6156335 b!6156337) bm!512377))

(assert (= (or b!6156336 b!6156333) bm!512378))

(assert (= (or b!6156338 bm!512377) bm!512379))

(declare-fun m!6995028 () Bool)

(assert (=> b!6156334 m!6995028))

(declare-fun m!6995030 () Bool)

(assert (=> bm!512379 m!6995030))

(declare-fun m!6995032 () Bool)

(assert (=> bm!512378 m!6995032))

(assert (=> d!1928767 d!1928991))

(declare-fun d!1928995 () Bool)

(declare-fun res!2549716 () Bool)

(declare-fun e!3751053 () Bool)

(assert (=> d!1928995 (=> res!2549716 e!3751053)))

(assert (=> d!1928995 (= res!2549716 ((_ is Nil!64472) (exprs!5983 (h!70921 zl!343))))))

(assert (=> d!1928995 (= (forall!15220 (exprs!5983 (h!70921 zl!343)) lambda!335830) e!3751053)))

(declare-fun b!6156341 () Bool)

(declare-fun e!3751054 () Bool)

(assert (=> b!6156341 (= e!3751053 e!3751054)))

(declare-fun res!2549717 () Bool)

(assert (=> b!6156341 (=> (not res!2549717) (not e!3751054))))

(assert (=> b!6156341 (= res!2549717 (dynLambda!25418 lambda!335830 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156342 () Bool)

(assert (=> b!6156342 (= e!3751054 (forall!15220 (t!378088 (exprs!5983 (h!70921 zl!343))) lambda!335830))))

(assert (= (and d!1928995 (not res!2549716)) b!6156341))

(assert (= (and b!6156341 res!2549717) b!6156342))

(declare-fun b_lambda!234331 () Bool)

(assert (=> (not b_lambda!234331) (not b!6156341)))

(declare-fun m!6995034 () Bool)

(assert (=> b!6156341 m!6995034))

(declare-fun m!6995036 () Bool)

(assert (=> b!6156342 m!6995036))

(assert (=> d!1928767 d!1928995))

(declare-fun b!6156343 () Bool)

(declare-fun e!3751056 () (InoxSet Context!10966))

(declare-fun e!3751055 () (InoxSet Context!10966))

(assert (=> b!6156343 (= e!3751056 e!3751055)))

(declare-fun c!1108416 () Bool)

(assert (=> b!6156343 (= c!1108416 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun d!1928997 () Bool)

(declare-fun c!1108417 () Bool)

(declare-fun e!3751057 () Bool)

(assert (=> d!1928997 (= c!1108417 e!3751057)))

(declare-fun res!2549718 () Bool)

(assert (=> d!1928997 (=> (not res!2549718) (not e!3751057))))

(assert (=> d!1928997 (= res!2549718 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))))))))

(assert (=> d!1928997 (= (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))) (h!70922 s!2326)) e!3751056)))

(declare-fun b!6156344 () Bool)

(assert (=> b!6156344 (= e!3751055 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156345 () Bool)

(assert (=> b!6156345 (= e!3751057 (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343))))))))))

(declare-fun b!6156346 () Bool)

(declare-fun call!512385 () (InoxSet Context!10966))

(assert (=> b!6156346 (= e!3751055 call!512385)))

(declare-fun bm!512380 () Bool)

(assert (=> bm!512380 (= call!512385 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343)))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343))))))) (h!70922 s!2326)))))

(declare-fun b!6156347 () Bool)

(assert (=> b!6156347 (= e!3751056 ((_ map or) call!512385 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (h!70921 zl!343))))))) (h!70922 s!2326))))))

(assert (= (and d!1928997 res!2549718) b!6156345))

(assert (= (and d!1928997 c!1108417) b!6156347))

(assert (= (and d!1928997 (not c!1108417)) b!6156343))

(assert (= (and b!6156343 c!1108416) b!6156346))

(assert (= (and b!6156343 (not c!1108416)) b!6156344))

(assert (= (or b!6156347 b!6156346) bm!512380))

(declare-fun m!6995040 () Bool)

(assert (=> b!6156345 m!6995040))

(declare-fun m!6995042 () Bool)

(assert (=> bm!512380 m!6995042))

(declare-fun m!6995044 () Bool)

(assert (=> b!6156347 m!6995044))

(assert (=> b!6155990 d!1928997))

(declare-fun c!1108420 () Bool)

(declare-fun call!512387 () List!64596)

(declare-fun c!1108419 () Bool)

(declare-fun bm!512381 () Bool)

(declare-fun call!512386 () (InoxSet Context!10966))

(declare-fun c!1108418 () Bool)

(assert (=> bm!512381 (= call!512386 (derivationStepZipperDown!1347 (ite c!1108419 (regTwo!32711 (h!70920 (exprs!5983 lt!2335132))) (ite c!1108420 (regTwo!32710 (h!70920 (exprs!5983 lt!2335132))) (ite c!1108418 (regOne!32710 (h!70920 (exprs!5983 lt!2335132))) (reg!16428 (h!70920 (exprs!5983 lt!2335132)))))) (ite (or c!1108419 c!1108420) (Context!10967 (t!378088 (exprs!5983 lt!2335132))) (Context!10967 call!512387)) (h!70922 s!2326)))))

(declare-fun b!6156348 () Bool)

(declare-fun e!3751062 () (InoxSet Context!10966))

(declare-fun call!512391 () (InoxSet Context!10966))

(assert (=> b!6156348 (= e!3751062 ((_ map or) call!512391 call!512386))))

(declare-fun b!6156349 () Bool)

(declare-fun e!3751061 () (InoxSet Context!10966))

(assert (=> b!6156349 (= e!3751061 e!3751062)))

(assert (=> b!6156349 (= c!1108419 ((_ is Union!16099) (h!70920 (exprs!5983 lt!2335132))))))

(declare-fun b!6156350 () Bool)

(declare-fun e!3751063 () (InoxSet Context!10966))

(assert (=> b!6156350 (= e!3751063 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156351 () Bool)

(declare-fun e!3751058 () (InoxSet Context!10966))

(declare-fun e!3751060 () (InoxSet Context!10966))

(assert (=> b!6156351 (= e!3751058 e!3751060)))

(assert (=> b!6156351 (= c!1108418 ((_ is Concat!24944) (h!70920 (exprs!5983 lt!2335132))))))

(declare-fun b!6156352 () Bool)

(assert (=> b!6156352 (= e!3751061 (store ((as const (Array Context!10966 Bool)) false) (Context!10967 (t!378088 (exprs!5983 lt!2335132))) true))))

(declare-fun b!6156353 () Bool)

(declare-fun call!512389 () (InoxSet Context!10966))

(assert (=> b!6156353 (= e!3751058 ((_ map or) call!512391 call!512389))))

(declare-fun call!512388 () List!64596)

(declare-fun bm!512383 () Bool)

(assert (=> bm!512383 (= call!512388 ($colon$colon!1976 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132)))) (ite (or c!1108420 c!1108418) (regTwo!32710 (h!70920 (exprs!5983 lt!2335132))) (h!70920 (exprs!5983 lt!2335132)))))))

(declare-fun b!6156354 () Bool)

(declare-fun c!1108421 () Bool)

(assert (=> b!6156354 (= c!1108421 ((_ is Star!16099) (h!70920 (exprs!5983 lt!2335132))))))

(assert (=> b!6156354 (= e!3751060 e!3751063)))

(declare-fun bm!512382 () Bool)

(assert (=> bm!512382 (= call!512389 call!512386)))

(declare-fun d!1929001 () Bool)

(declare-fun c!1108422 () Bool)

(assert (=> d!1929001 (= c!1108422 (and ((_ is ElementMatch!16099) (h!70920 (exprs!5983 lt!2335132))) (= (c!1108140 (h!70920 (exprs!5983 lt!2335132))) (h!70922 s!2326))))))

(assert (=> d!1929001 (= (derivationStepZipperDown!1347 (h!70920 (exprs!5983 lt!2335132)) (Context!10967 (t!378088 (exprs!5983 lt!2335132))) (h!70922 s!2326)) e!3751061)))

(declare-fun b!6156355 () Bool)

(declare-fun call!512390 () (InoxSet Context!10966))

(assert (=> b!6156355 (= e!3751063 call!512390)))

(declare-fun bm!512384 () Bool)

(assert (=> bm!512384 (= call!512387 call!512388)))

(declare-fun bm!512385 () Bool)

(assert (=> bm!512385 (= call!512391 (derivationStepZipperDown!1347 (ite c!1108419 (regOne!32711 (h!70920 (exprs!5983 lt!2335132))) (regOne!32710 (h!70920 (exprs!5983 lt!2335132)))) (ite c!1108419 (Context!10967 (t!378088 (exprs!5983 lt!2335132))) (Context!10967 call!512388)) (h!70922 s!2326)))))

(declare-fun bm!512386 () Bool)

(assert (=> bm!512386 (= call!512390 call!512389)))

(declare-fun b!6156356 () Bool)

(assert (=> b!6156356 (= e!3751060 call!512390)))

(declare-fun b!6156357 () Bool)

(declare-fun e!3751059 () Bool)

(assert (=> b!6156357 (= e!3751059 (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 lt!2335132)))))))

(declare-fun b!6156358 () Bool)

(assert (=> b!6156358 (= c!1108420 e!3751059)))

(declare-fun res!2549719 () Bool)

(assert (=> b!6156358 (=> (not res!2549719) (not e!3751059))))

(assert (=> b!6156358 (= res!2549719 ((_ is Concat!24944) (h!70920 (exprs!5983 lt!2335132))))))

(assert (=> b!6156358 (= e!3751062 e!3751058)))

(assert (= (and d!1929001 c!1108422) b!6156352))

(assert (= (and d!1929001 (not c!1108422)) b!6156349))

(assert (= (and b!6156349 c!1108419) b!6156348))

(assert (= (and b!6156349 (not c!1108419)) b!6156358))

(assert (= (and b!6156358 res!2549719) b!6156357))

(assert (= (and b!6156358 c!1108420) b!6156353))

(assert (= (and b!6156358 (not c!1108420)) b!6156351))

(assert (= (and b!6156351 c!1108418) b!6156356))

(assert (= (and b!6156351 (not c!1108418)) b!6156354))

(assert (= (and b!6156354 c!1108421) b!6156355))

(assert (= (and b!6156354 (not c!1108421)) b!6156350))

(assert (= (or b!6156356 b!6156355) bm!512384))

(assert (= (or b!6156356 b!6156355) bm!512386))

(assert (= (or b!6156353 bm!512384) bm!512383))

(assert (= (or b!6156353 bm!512386) bm!512382))

(assert (= (or b!6156348 bm!512382) bm!512381))

(assert (= (or b!6156348 b!6156353) bm!512385))

(declare-fun m!6995046 () Bool)

(assert (=> bm!512385 m!6995046))

(declare-fun m!6995048 () Bool)

(assert (=> b!6156357 m!6995048))

(declare-fun m!6995050 () Bool)

(assert (=> bm!512383 m!6995050))

(declare-fun m!6995052 () Bool)

(assert (=> b!6156352 m!6995052))

(declare-fun m!6995054 () Bool)

(assert (=> bm!512381 m!6995054))

(assert (=> bm!512288 d!1929001))

(declare-fun d!1929005 () Bool)

(declare-fun e!3751082 () Bool)

(assert (=> d!1929005 e!3751082))

(declare-fun res!2549731 () Bool)

(assert (=> d!1929005 (=> (not res!2549731) (not e!3751082))))

(declare-fun lt!2335234 () List!64598)

(declare-fun content!12021 (List!64598) (InoxSet C!32468))

(assert (=> d!1929005 (= res!2549731 (= (content!12021 lt!2335234) ((_ map or) (content!12021 (_1!36381 (get!22250 lt!2335220))) (content!12021 (_2!36381 (get!22250 lt!2335220))))))))

(declare-fun e!3751083 () List!64598)

(assert (=> d!1929005 (= lt!2335234 e!3751083)))

(declare-fun c!1108432 () Bool)

(assert (=> d!1929005 (= c!1108432 ((_ is Nil!64474) (_1!36381 (get!22250 lt!2335220))))))

(assert (=> d!1929005 (= (++!14185 (_1!36381 (get!22250 lt!2335220)) (_2!36381 (get!22250 lt!2335220))) lt!2335234)))

(declare-fun b!6156391 () Bool)

(assert (=> b!6156391 (= e!3751082 (or (not (= (_2!36381 (get!22250 lt!2335220)) Nil!64474)) (= lt!2335234 (_1!36381 (get!22250 lt!2335220)))))))

(declare-fun b!6156390 () Bool)

(declare-fun res!2549732 () Bool)

(assert (=> b!6156390 (=> (not res!2549732) (not e!3751082))))

(declare-fun size!40240 (List!64598) Int)

(assert (=> b!6156390 (= res!2549732 (= (size!40240 lt!2335234) (+ (size!40240 (_1!36381 (get!22250 lt!2335220))) (size!40240 (_2!36381 (get!22250 lt!2335220))))))))

(declare-fun b!6156389 () Bool)

(assert (=> b!6156389 (= e!3751083 (Cons!64474 (h!70922 (_1!36381 (get!22250 lt!2335220))) (++!14185 (t!378090 (_1!36381 (get!22250 lt!2335220))) (_2!36381 (get!22250 lt!2335220)))))))

(declare-fun b!6156388 () Bool)

(assert (=> b!6156388 (= e!3751083 (_2!36381 (get!22250 lt!2335220)))))

(assert (= (and d!1929005 c!1108432) b!6156388))

(assert (= (and d!1929005 (not c!1108432)) b!6156389))

(assert (= (and d!1929005 res!2549731) b!6156390))

(assert (= (and b!6156390 res!2549732) b!6156391))

(declare-fun m!6995088 () Bool)

(assert (=> d!1929005 m!6995088))

(declare-fun m!6995090 () Bool)

(assert (=> d!1929005 m!6995090))

(declare-fun m!6995092 () Bool)

(assert (=> d!1929005 m!6995092))

(declare-fun m!6995094 () Bool)

(assert (=> b!6156390 m!6995094))

(declare-fun m!6995096 () Bool)

(assert (=> b!6156390 m!6995096))

(declare-fun m!6995098 () Bool)

(assert (=> b!6156390 m!6995098))

(declare-fun m!6995100 () Bool)

(assert (=> b!6156389 m!6995100))

(assert (=> b!6156088 d!1929005))

(assert (=> b!6156088 d!1928973))

(declare-fun d!1929017 () Bool)

(assert (=> d!1929017 (= ($colon$colon!1976 (exprs!5983 lt!2335134) (ite (or c!1108330 c!1108328) (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (h!70920 (exprs!5983 (h!70921 zl!343))))) (Cons!64472 (ite (or c!1108330 c!1108328) (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (h!70920 (exprs!5983 (h!70921 zl!343)))) (exprs!5983 lt!2335134)))))

(assert (=> bm!512314 d!1929017))

(declare-fun d!1929019 () Bool)

(declare-fun res!2549733 () Bool)

(declare-fun e!3751085 () Bool)

(assert (=> d!1929019 (=> res!2549733 e!3751085)))

(assert (=> d!1929019 (= res!2549733 ((_ is Nil!64472) (exprs!5983 (h!70921 zl!343))))))

(assert (=> d!1929019 (= (forall!15220 (exprs!5983 (h!70921 zl!343)) lambda!335816) e!3751085)))

(declare-fun b!6156394 () Bool)

(declare-fun e!3751086 () Bool)

(assert (=> b!6156394 (= e!3751085 e!3751086)))

(declare-fun res!2549734 () Bool)

(assert (=> b!6156394 (=> (not res!2549734) (not e!3751086))))

(assert (=> b!6156394 (= res!2549734 (dynLambda!25418 lambda!335816 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156395 () Bool)

(assert (=> b!6156395 (= e!3751086 (forall!15220 (t!378088 (exprs!5983 (h!70921 zl!343))) lambda!335816))))

(assert (= (and d!1929019 (not res!2549733)) b!6156394))

(assert (= (and b!6156394 res!2549734) b!6156395))

(declare-fun b_lambda!234333 () Bool)

(assert (=> (not b_lambda!234333) (not b!6156394)))

(declare-fun m!6995108 () Bool)

(assert (=> b!6156394 m!6995108))

(declare-fun m!6995110 () Bool)

(assert (=> b!6156395 m!6995110))

(assert (=> d!1928715 d!1929019))

(assert (=> d!1928725 d!1928887))

(declare-fun d!1929023 () Bool)

(assert (=> d!1929023 (= (Exists!3169 lambda!335846) (choose!45769 lambda!335846))))

(declare-fun bs!1525866 () Bool)

(assert (= bs!1525866 d!1929023))

(declare-fun m!6995112 () Bool)

(assert (=> bs!1525866 m!6995112))

(assert (=> d!1928843 d!1929023))

(declare-fun d!1929025 () Bool)

(assert (=> d!1929025 (= (Exists!3169 lambda!335847) (choose!45769 lambda!335847))))

(declare-fun bs!1525868 () Bool)

(assert (= bs!1525868 d!1929025))

(declare-fun m!6995114 () Bool)

(assert (=> bs!1525868 m!6995114))

(assert (=> d!1928843 d!1929025))

(declare-fun bs!1525874 () Bool)

(declare-fun d!1929027 () Bool)

(assert (= bs!1525874 (and d!1929027 d!1928841)))

(declare-fun lambda!335878 () Int)

(assert (=> bs!1525874 (= lambda!335878 lambda!335841)))

(declare-fun bs!1525875 () Bool)

(assert (= bs!1525875 (and d!1929027 b!6155604)))

(assert (=> bs!1525875 (not (= lambda!335878 lambda!335803))))

(declare-fun bs!1525876 () Bool)

(assert (= bs!1525876 (and d!1929027 b!6155598)))

(assert (=> bs!1525876 (not (= lambda!335878 lambda!335806))))

(declare-fun bs!1525877 () Bool)

(assert (= bs!1525877 (and d!1929027 d!1928843)))

(assert (=> bs!1525877 (not (= lambda!335878 lambda!335847))))

(declare-fun bs!1525878 () Bool)

(assert (= bs!1525878 (and d!1929027 b!6155370)))

(assert (=> bs!1525878 (not (= lambda!335878 lambda!335788))))

(assert (=> bs!1525878 (= lambda!335878 lambda!335787)))

(assert (=> bs!1525877 (= lambda!335878 lambda!335846)))

(assert (=> d!1929027 true))

(assert (=> d!1929027 true))

(assert (=> d!1929027 true))

(declare-fun lambda!335879 () Int)

(assert (=> bs!1525875 (not (= lambda!335879 lambda!335803))))

(assert (=> bs!1525876 (= lambda!335879 lambda!335806)))

(assert (=> bs!1525877 (= lambda!335879 lambda!335847)))

(assert (=> bs!1525878 (= lambda!335879 lambda!335788)))

(assert (=> bs!1525878 (not (= lambda!335879 lambda!335787))))

(assert (=> bs!1525877 (not (= lambda!335879 lambda!335846))))

(assert (=> bs!1525874 (not (= lambda!335879 lambda!335841))))

(declare-fun bs!1525879 () Bool)

(assert (= bs!1525879 d!1929027))

(assert (=> bs!1525879 (not (= lambda!335879 lambda!335878))))

(assert (=> d!1929027 true))

(assert (=> d!1929027 true))

(assert (=> d!1929027 true))

(assert (=> d!1929027 (= (Exists!3169 lambda!335878) (Exists!3169 lambda!335879))))

(assert (=> d!1929027 true))

(declare-fun _$90!1899 () Unit!157573)

(assert (=> d!1929027 (= (choose!45772 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326) _$90!1899)))

(declare-fun m!6995134 () Bool)

(assert (=> bs!1525879 m!6995134))

(declare-fun m!6995136 () Bool)

(assert (=> bs!1525879 m!6995136))

(assert (=> d!1928843 d!1929027))

(declare-fun b!6156418 () Bool)

(declare-fun e!3751108 () Bool)

(declare-fun e!3751103 () Bool)

(assert (=> b!6156418 (= e!3751108 e!3751103)))

(declare-fun c!1108437 () Bool)

(assert (=> b!6156418 (= c!1108437 ((_ is Star!16099) (regOne!32710 r!7292)))))

(declare-fun b!6156419 () Bool)

(declare-fun e!3751106 () Bool)

(declare-fun e!3751105 () Bool)

(assert (=> b!6156419 (= e!3751106 e!3751105)))

(declare-fun res!2549752 () Bool)

(assert (=> b!6156419 (=> (not res!2549752) (not e!3751105))))

(declare-fun call!512397 () Bool)

(assert (=> b!6156419 (= res!2549752 call!512397)))

(declare-fun b!6156420 () Bool)

(declare-fun e!3751107 () Bool)

(assert (=> b!6156420 (= e!3751103 e!3751107)))

(declare-fun res!2549755 () Bool)

(assert (=> b!6156420 (= res!2549755 (not (nullable!6092 (reg!16428 (regOne!32710 r!7292)))))))

(assert (=> b!6156420 (=> (not res!2549755) (not e!3751107))))

(declare-fun b!6156421 () Bool)

(declare-fun e!3751102 () Bool)

(declare-fun call!512398 () Bool)

(assert (=> b!6156421 (= e!3751102 call!512398)))

(declare-fun bm!512391 () Bool)

(declare-fun call!512396 () Bool)

(assert (=> bm!512391 (= call!512398 call!512396)))

(declare-fun b!6156422 () Bool)

(declare-fun res!2549753 () Bool)

(assert (=> b!6156422 (=> (not res!2549753) (not e!3751102))))

(assert (=> b!6156422 (= res!2549753 call!512397)))

(declare-fun e!3751104 () Bool)

(assert (=> b!6156422 (= e!3751104 e!3751102)))

(declare-fun bm!512393 () Bool)

(declare-fun c!1108438 () Bool)

(assert (=> bm!512393 (= call!512396 (validRegex!7835 (ite c!1108437 (reg!16428 (regOne!32710 r!7292)) (ite c!1108438 (regTwo!32711 (regOne!32710 r!7292)) (regTwo!32710 (regOne!32710 r!7292))))))))

(declare-fun b!6156423 () Bool)

(assert (=> b!6156423 (= e!3751105 call!512398)))

(declare-fun bm!512392 () Bool)

(assert (=> bm!512392 (= call!512397 (validRegex!7835 (ite c!1108438 (regOne!32711 (regOne!32710 r!7292)) (regOne!32710 (regOne!32710 r!7292)))))))

(declare-fun d!1929049 () Bool)

(declare-fun res!2549754 () Bool)

(assert (=> d!1929049 (=> res!2549754 e!3751108)))

(assert (=> d!1929049 (= res!2549754 ((_ is ElementMatch!16099) (regOne!32710 r!7292)))))

(assert (=> d!1929049 (= (validRegex!7835 (regOne!32710 r!7292)) e!3751108)))

(declare-fun b!6156424 () Bool)

(assert (=> b!6156424 (= e!3751107 call!512396)))

(declare-fun b!6156425 () Bool)

(assert (=> b!6156425 (= e!3751103 e!3751104)))

(assert (=> b!6156425 (= c!1108438 ((_ is Union!16099) (regOne!32710 r!7292)))))

(declare-fun b!6156426 () Bool)

(declare-fun res!2549751 () Bool)

(assert (=> b!6156426 (=> res!2549751 e!3751106)))

(assert (=> b!6156426 (= res!2549751 (not ((_ is Concat!24944) (regOne!32710 r!7292))))))

(assert (=> b!6156426 (= e!3751104 e!3751106)))

(assert (= (and d!1929049 (not res!2549754)) b!6156418))

(assert (= (and b!6156418 c!1108437) b!6156420))

(assert (= (and b!6156418 (not c!1108437)) b!6156425))

(assert (= (and b!6156420 res!2549755) b!6156424))

(assert (= (and b!6156425 c!1108438) b!6156422))

(assert (= (and b!6156425 (not c!1108438)) b!6156426))

(assert (= (and b!6156422 res!2549753) b!6156421))

(assert (= (and b!6156426 (not res!2549751)) b!6156419))

(assert (= (and b!6156419 res!2549752) b!6156423))

(assert (= (or b!6156421 b!6156423) bm!512391))

(assert (= (or b!6156422 b!6156419) bm!512392))

(assert (= (or b!6156424 bm!512391) bm!512393))

(declare-fun m!6995138 () Bool)

(assert (=> b!6156420 m!6995138))

(declare-fun m!6995140 () Bool)

(assert (=> bm!512393 m!6995140))

(declare-fun m!6995142 () Bool)

(assert (=> bm!512392 m!6995142))

(assert (=> d!1928843 d!1929049))

(declare-fun d!1929051 () Bool)

(assert (=> d!1929051 (= (isEmpty!36436 (tail!11805 (exprs!5983 (h!70921 zl!343)))) ((_ is Nil!64472) (tail!11805 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> b!6155888 d!1929051))

(declare-fun d!1929053 () Bool)

(assert (=> d!1929053 (= (tail!11805 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))

(assert (=> b!6155888 d!1929053))

(declare-fun d!1929057 () Bool)

(declare-fun res!2549758 () Bool)

(declare-fun e!3751111 () Bool)

(assert (=> d!1929057 (=> res!2549758 e!3751111)))

(assert (=> d!1929057 (= res!2549758 ((_ is Nil!64472) lt!2335190))))

(assert (=> d!1929057 (= (forall!15220 lt!2335190 lambda!335823) e!3751111)))

(declare-fun b!6156429 () Bool)

(declare-fun e!3751112 () Bool)

(assert (=> b!6156429 (= e!3751111 e!3751112)))

(declare-fun res!2549759 () Bool)

(assert (=> b!6156429 (=> (not res!2549759) (not e!3751112))))

(assert (=> b!6156429 (= res!2549759 (dynLambda!25418 lambda!335823 (h!70920 lt!2335190)))))

(declare-fun b!6156430 () Bool)

(assert (=> b!6156430 (= e!3751112 (forall!15220 (t!378088 lt!2335190) lambda!335823))))

(assert (= (and d!1929057 (not res!2549758)) b!6156429))

(assert (= (and b!6156429 res!2549759) b!6156430))

(declare-fun b_lambda!234337 () Bool)

(assert (=> (not b_lambda!234337) (not b!6156429)))

(declare-fun m!6995148 () Bool)

(assert (=> b!6156429 m!6995148))

(declare-fun m!6995150 () Bool)

(assert (=> b!6156430 m!6995150))

(assert (=> d!1928751 d!1929057))

(declare-fun d!1929059 () Bool)

(assert (=> d!1929059 (= (nullable!6092 (h!70920 (exprs!5983 lt!2335123))) (nullableFct!2056 (h!70920 (exprs!5983 lt!2335123))))))

(declare-fun bs!1525880 () Bool)

(assert (= bs!1525880 d!1929059))

(declare-fun m!6995152 () Bool)

(assert (=> bs!1525880 m!6995152))

(assert (=> b!6155785 d!1929059))

(assert (=> d!1928757 d!1928887))

(declare-fun b!6156453 () Bool)

(declare-fun e!3751129 () Bool)

(declare-fun call!512404 () Bool)

(assert (=> b!6156453 (= e!3751129 call!512404)))

(declare-fun b!6156454 () Bool)

(declare-fun e!3751133 () Bool)

(assert (=> b!6156454 (= e!3751133 call!512404)))

(declare-fun bm!512398 () Bool)

(declare-fun c!1108443 () Bool)

(assert (=> bm!512398 (= call!512404 (nullable!6092 (ite c!1108443 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156455 () Bool)

(declare-fun e!3751130 () Bool)

(declare-fun e!3751134 () Bool)

(assert (=> b!6156455 (= e!3751130 e!3751134)))

(declare-fun res!2549774 () Bool)

(assert (=> b!6156455 (=> (not res!2549774) (not e!3751134))))

(assert (=> b!6156455 (= res!2549774 (and (not ((_ is EmptyLang!16099) (regOne!32711 (regOne!32710 r!7292)))) (not ((_ is ElementMatch!16099) (regOne!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156456 () Bool)

(declare-fun e!3751131 () Bool)

(assert (=> b!6156456 (= e!3751134 e!3751131)))

(declare-fun res!2549778 () Bool)

(assert (=> b!6156456 (=> res!2549778 e!3751131)))

(assert (=> b!6156456 (= res!2549778 ((_ is Star!16099) (regOne!32711 (regOne!32710 r!7292))))))

(declare-fun b!6156457 () Bool)

(declare-fun e!3751132 () Bool)

(assert (=> b!6156457 (= e!3751132 e!3751129)))

(declare-fun res!2549776 () Bool)

(declare-fun call!512403 () Bool)

(assert (=> b!6156457 (= res!2549776 call!512403)))

(assert (=> b!6156457 (=> res!2549776 e!3751129)))

(declare-fun b!6156458 () Bool)

(assert (=> b!6156458 (= e!3751132 e!3751133)))

(declare-fun res!2549775 () Bool)

(assert (=> b!6156458 (= res!2549775 call!512403)))

(assert (=> b!6156458 (=> (not res!2549775) (not e!3751133))))

(declare-fun d!1929061 () Bool)

(declare-fun res!2549777 () Bool)

(assert (=> d!1929061 (=> res!2549777 e!3751130)))

(assert (=> d!1929061 (= res!2549777 ((_ is EmptyExpr!16099) (regOne!32711 (regOne!32710 r!7292))))))

(assert (=> d!1929061 (= (nullableFct!2056 (regOne!32711 (regOne!32710 r!7292))) e!3751130)))

(declare-fun bm!512399 () Bool)

(assert (=> bm!512399 (= call!512403 (nullable!6092 (ite c!1108443 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156459 () Bool)

(assert (=> b!6156459 (= e!3751131 e!3751132)))

(assert (=> b!6156459 (= c!1108443 ((_ is Union!16099) (regOne!32711 (regOne!32710 r!7292))))))

(assert (= (and d!1929061 (not res!2549777)) b!6156455))

(assert (= (and b!6156455 res!2549774) b!6156456))

(assert (= (and b!6156456 (not res!2549778)) b!6156459))

(assert (= (and b!6156459 c!1108443) b!6156457))

(assert (= (and b!6156459 (not c!1108443)) b!6156458))

(assert (= (and b!6156457 (not res!2549776)) b!6156453))

(assert (= (and b!6156458 res!2549775) b!6156454))

(assert (= (or b!6156453 b!6156454) bm!512398))

(assert (= (or b!6156457 b!6156458) bm!512399))

(declare-fun m!6995154 () Bool)

(assert (=> bm!512398 m!6995154))

(declare-fun m!6995156 () Bool)

(assert (=> bm!512399 m!6995156))

(assert (=> d!1928745 d!1929061))

(assert (=> d!1928841 d!1928829))

(assert (=> d!1928841 d!1929049))

(assert (=> d!1928841 d!1928845))

(declare-fun bs!1525882 () Bool)

(declare-fun d!1929063 () Bool)

(assert (= bs!1525882 (and d!1929063 b!6155604)))

(declare-fun lambda!335882 () Int)

(assert (=> bs!1525882 (not (= lambda!335882 lambda!335803))))

(declare-fun bs!1525883 () Bool)

(assert (= bs!1525883 (and d!1929063 b!6155598)))

(assert (=> bs!1525883 (not (= lambda!335882 lambda!335806))))

(declare-fun bs!1525884 () Bool)

(assert (= bs!1525884 (and d!1929063 d!1929027)))

(assert (=> bs!1525884 (not (= lambda!335882 lambda!335879))))

(declare-fun bs!1525885 () Bool)

(assert (= bs!1525885 (and d!1929063 d!1928843)))

(assert (=> bs!1525885 (not (= lambda!335882 lambda!335847))))

(declare-fun bs!1525886 () Bool)

(assert (= bs!1525886 (and d!1929063 b!6155370)))

(assert (=> bs!1525886 (not (= lambda!335882 lambda!335788))))

(assert (=> bs!1525886 (= lambda!335882 lambda!335787)))

(assert (=> bs!1525885 (= lambda!335882 lambda!335846)))

(declare-fun bs!1525887 () Bool)

(assert (= bs!1525887 (and d!1929063 d!1928841)))

(assert (=> bs!1525887 (= lambda!335882 lambda!335841)))

(assert (=> bs!1525884 (= lambda!335882 lambda!335878)))

(assert (=> d!1929063 true))

(assert (=> d!1929063 true))

(assert (=> d!1929063 true))

(assert (=> d!1929063 (= (isDefined!12693 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) Nil!64474 s!2326 s!2326)) (Exists!3169 lambda!335882))))

(assert (=> d!1929063 true))

(declare-fun _$89!2272 () Unit!157573)

(assert (=> d!1929063 (= (choose!45771 (regOne!32710 r!7292) (regTwo!32710 r!7292) s!2326) _$89!2272)))

(declare-fun bs!1525888 () Bool)

(assert (= bs!1525888 d!1929063))

(assert (=> bs!1525888 m!6994196))

(assert (=> bs!1525888 m!6994196))

(assert (=> bs!1525888 m!6994198))

(declare-fun m!6995190 () Bool)

(assert (=> bs!1525888 m!6995190))

(assert (=> d!1928841 d!1929063))

(declare-fun d!1929071 () Bool)

(assert (=> d!1929071 (= (Exists!3169 lambda!335841) (choose!45769 lambda!335841))))

(declare-fun bs!1525889 () Bool)

(assert (= bs!1525889 d!1929071))

(declare-fun m!6995192 () Bool)

(assert (=> bs!1525889 m!6995192))

(assert (=> d!1928841 d!1929071))

(declare-fun d!1929073 () Bool)

(declare-fun c!1108448 () Bool)

(assert (=> d!1929073 (= c!1108448 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3751146 () Bool)

(assert (=> d!1929073 (= (matchZipper!2111 (derivationStepZipper!2071 ((_ map or) lt!2335135 lt!2335111) (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3751146)))

(declare-fun b!6156481 () Bool)

(assert (=> b!6156481 (= e!3751146 (nullableZipper!1879 (derivationStepZipper!2071 ((_ map or) lt!2335135 lt!2335111) (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156482 () Bool)

(assert (=> b!6156482 (= e!3751146 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 ((_ map or) lt!2335135 lt!2335111) (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1929073 c!1108448) b!6156481))

(assert (= (and d!1929073 (not c!1108448)) b!6156482))

(assert (=> d!1929073 m!6994358))

(assert (=> d!1929073 m!6994830))

(assert (=> b!6156481 m!6994506))

(declare-fun m!6995200 () Bool)

(assert (=> b!6156481 m!6995200))

(assert (=> b!6156482 m!6994358))

(assert (=> b!6156482 m!6994834))

(assert (=> b!6156482 m!6994506))

(assert (=> b!6156482 m!6994834))

(declare-fun m!6995204 () Bool)

(assert (=> b!6156482 m!6995204))

(assert (=> b!6156482 m!6994358))

(assert (=> b!6156482 m!6994838))

(assert (=> b!6156482 m!6995204))

(assert (=> b!6156482 m!6994838))

(declare-fun m!6995208 () Bool)

(assert (=> b!6156482 m!6995208))

(assert (=> b!6155767 d!1929073))

(declare-fun bs!1525890 () Bool)

(declare-fun d!1929075 () Bool)

(assert (= bs!1525890 (and d!1929075 d!1928919)))

(declare-fun lambda!335883 () Int)

(assert (=> bs!1525890 (= lambda!335883 lambda!335859)))

(declare-fun bs!1525891 () Bool)

(assert (= bs!1525891 (and d!1929075 d!1928869)))

(assert (=> bs!1525891 (= lambda!335883 lambda!335851)))

(declare-fun bs!1525892 () Bool)

(assert (= bs!1525892 (and d!1929075 b!6155358)))

(assert (=> bs!1525892 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335883 lambda!335789))))

(declare-fun bs!1525893 () Bool)

(assert (= bs!1525893 (and d!1929075 d!1928955)))

(assert (=> bs!1525893 (= lambda!335883 lambda!335866)))

(declare-fun bs!1525894 () Bool)

(assert (= bs!1525894 (and d!1929075 d!1928983)))

(assert (=> bs!1525894 (= lambda!335883 lambda!335869)))

(declare-fun bs!1525895 () Bool)

(assert (= bs!1525895 (and d!1929075 d!1928913)))

(assert (=> bs!1525895 (= lambda!335883 lambda!335855)))

(assert (=> d!1929075 true))

(assert (=> d!1929075 (= (derivationStepZipper!2071 ((_ map or) lt!2335135 lt!2335111) (head!12718 (t!378090 s!2326))) (flatMap!1604 ((_ map or) lt!2335135 lt!2335111) lambda!335883))))

(declare-fun bs!1525896 () Bool)

(assert (= bs!1525896 d!1929075))

(declare-fun m!6995222 () Bool)

(assert (=> bs!1525896 m!6995222))

(assert (=> b!6155767 d!1929075))

(assert (=> b!6155767 d!1928873))

(assert (=> b!6155767 d!1928875))

(declare-fun d!1929079 () Bool)

(declare-fun e!3751148 () Bool)

(assert (=> d!1929079 e!3751148))

(declare-fun res!2549792 () Bool)

(assert (=> d!1929079 (=> (not res!2549792) (not e!3751148))))

(declare-fun lt!2335245 () List!64598)

(assert (=> d!1929079 (= res!2549792 (= (content!12021 lt!2335245) ((_ map or) (content!12021 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474))) (content!12021 (t!378090 s!2326)))))))

(declare-fun e!3751149 () List!64598)

(assert (=> d!1929079 (= lt!2335245 e!3751149)))

(declare-fun c!1108450 () Bool)

(assert (=> d!1929079 (= c!1108450 ((_ is Nil!64474) (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474))))))

(assert (=> d!1929079 (= (++!14185 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (t!378090 s!2326)) lt!2335245)))

(declare-fun b!6156488 () Bool)

(assert (=> b!6156488 (= e!3751148 (or (not (= (t!378090 s!2326) Nil!64474)) (= lt!2335245 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)))))))

(declare-fun b!6156487 () Bool)

(declare-fun res!2549793 () Bool)

(assert (=> b!6156487 (=> (not res!2549793) (not e!3751148))))

(assert (=> b!6156487 (= res!2549793 (= (size!40240 lt!2335245) (+ (size!40240 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474))) (size!40240 (t!378090 s!2326)))))))

(declare-fun b!6156486 () Bool)

(assert (=> b!6156486 (= e!3751149 (Cons!64474 (h!70922 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474))) (++!14185 (t!378090 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474))) (t!378090 s!2326))))))

(declare-fun b!6156485 () Bool)

(assert (=> b!6156485 (= e!3751149 (t!378090 s!2326))))

(assert (= (and d!1929079 c!1108450) b!6156485))

(assert (= (and d!1929079 (not c!1108450)) b!6156486))

(assert (= (and d!1929079 res!2549792) b!6156487))

(assert (= (and b!6156487 res!2549793) b!6156488))

(declare-fun m!6995230 () Bool)

(assert (=> d!1929079 m!6995230))

(assert (=> d!1929079 m!6994770))

(declare-fun m!6995232 () Bool)

(assert (=> d!1929079 m!6995232))

(declare-fun m!6995234 () Bool)

(assert (=> d!1929079 m!6995234))

(declare-fun m!6995236 () Bool)

(assert (=> b!6156487 m!6995236))

(assert (=> b!6156487 m!6994770))

(declare-fun m!6995238 () Bool)

(assert (=> b!6156487 m!6995238))

(declare-fun m!6995240 () Bool)

(assert (=> b!6156487 m!6995240))

(declare-fun m!6995242 () Bool)

(assert (=> b!6156486 m!6995242))

(assert (=> b!6156094 d!1929079))

(declare-fun d!1929083 () Bool)

(declare-fun e!3751150 () Bool)

(assert (=> d!1929083 e!3751150))

(declare-fun res!2549794 () Bool)

(assert (=> d!1929083 (=> (not res!2549794) (not e!3751150))))

(declare-fun lt!2335246 () List!64598)

(assert (=> d!1929083 (= res!2549794 (= (content!12021 lt!2335246) ((_ map or) (content!12021 Nil!64474) (content!12021 (Cons!64474 (h!70922 s!2326) Nil!64474)))))))

(declare-fun e!3751151 () List!64598)

(assert (=> d!1929083 (= lt!2335246 e!3751151)))

(declare-fun c!1108451 () Bool)

(assert (=> d!1929083 (= c!1108451 ((_ is Nil!64474) Nil!64474))))

(assert (=> d!1929083 (= (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) lt!2335246)))

(declare-fun b!6156492 () Bool)

(assert (=> b!6156492 (= e!3751150 (or (not (= (Cons!64474 (h!70922 s!2326) Nil!64474) Nil!64474)) (= lt!2335246 Nil!64474)))))

(declare-fun b!6156491 () Bool)

(declare-fun res!2549795 () Bool)

(assert (=> b!6156491 (=> (not res!2549795) (not e!3751150))))

(assert (=> b!6156491 (= res!2549795 (= (size!40240 lt!2335246) (+ (size!40240 Nil!64474) (size!40240 (Cons!64474 (h!70922 s!2326) Nil!64474)))))))

(declare-fun b!6156490 () Bool)

(assert (=> b!6156490 (= e!3751151 (Cons!64474 (h!70922 Nil!64474) (++!14185 (t!378090 Nil!64474) (Cons!64474 (h!70922 s!2326) Nil!64474))))))

(declare-fun b!6156489 () Bool)

(assert (=> b!6156489 (= e!3751151 (Cons!64474 (h!70922 s!2326) Nil!64474))))

(assert (= (and d!1929083 c!1108451) b!6156489))

(assert (= (and d!1929083 (not c!1108451)) b!6156490))

(assert (= (and d!1929083 res!2549794) b!6156491))

(assert (= (and b!6156491 res!2549795) b!6156492))

(declare-fun m!6995246 () Bool)

(assert (=> d!1929083 m!6995246))

(declare-fun m!6995248 () Bool)

(assert (=> d!1929083 m!6995248))

(declare-fun m!6995250 () Bool)

(assert (=> d!1929083 m!6995250))

(declare-fun m!6995252 () Bool)

(assert (=> b!6156491 m!6995252))

(declare-fun m!6995254 () Bool)

(assert (=> b!6156491 m!6995254))

(declare-fun m!6995256 () Bool)

(assert (=> b!6156491 m!6995256))

(declare-fun m!6995258 () Bool)

(assert (=> b!6156490 m!6995258))

(assert (=> b!6156094 d!1929083))

(declare-fun d!1929087 () Bool)

(assert (=> d!1929087 (= (++!14185 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (t!378090 s!2326)) s!2326)))

(declare-fun lt!2335249 () Unit!157573)

(declare-fun choose!45774 (List!64598 C!32468 List!64598 List!64598) Unit!157573)

(assert (=> d!1929087 (= lt!2335249 (choose!45774 Nil!64474 (h!70922 s!2326) (t!378090 s!2326) s!2326))))

(assert (=> d!1929087 (= (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) (t!378090 s!2326))) s!2326)))

(assert (=> d!1929087 (= (lemmaMoveElementToOtherListKeepsConcatEq!2280 Nil!64474 (h!70922 s!2326) (t!378090 s!2326) s!2326) lt!2335249)))

(declare-fun bs!1525902 () Bool)

(assert (= bs!1525902 d!1929087))

(assert (=> bs!1525902 m!6994770))

(assert (=> bs!1525902 m!6994770))

(assert (=> bs!1525902 m!6994772))

(declare-fun m!6995272 () Bool)

(assert (=> bs!1525902 m!6995272))

(declare-fun m!6995274 () Bool)

(assert (=> bs!1525902 m!6995274))

(assert (=> b!6156094 d!1929087))

(declare-fun b!6156517 () Bool)

(declare-fun e!3751175 () Bool)

(declare-fun lt!2335250 () Option!15990)

(assert (=> b!6156517 (= e!3751175 (= (++!14185 (_1!36381 (get!22250 lt!2335250)) (_2!36381 (get!22250 lt!2335250))) s!2326))))

(declare-fun b!6156519 () Bool)

(declare-fun res!2549807 () Bool)

(assert (=> b!6156519 (=> (not res!2549807) (not e!3751175))))

(assert (=> b!6156519 (= res!2549807 (matchR!8282 (regTwo!32710 r!7292) (_2!36381 (get!22250 lt!2335250))))))

(declare-fun b!6156521 () Bool)

(declare-fun e!3751174 () Option!15990)

(assert (=> b!6156521 (= e!3751174 None!15989)))

(declare-fun b!6156523 () Bool)

(declare-fun res!2549804 () Bool)

(assert (=> b!6156523 (=> (not res!2549804) (not e!3751175))))

(assert (=> b!6156523 (= res!2549804 (matchR!8282 (regOne!32710 r!7292) (_1!36381 (get!22250 lt!2335250))))))

(declare-fun b!6156524 () Bool)

(declare-fun e!3751176 () Option!15990)

(assert (=> b!6156524 (= e!3751176 e!3751174)))

(declare-fun c!1108462 () Bool)

(assert (=> b!6156524 (= c!1108462 ((_ is Nil!64474) (t!378090 s!2326)))))

(declare-fun d!1929091 () Bool)

(declare-fun e!3751173 () Bool)

(assert (=> d!1929091 e!3751173))

(declare-fun res!2549805 () Bool)

(assert (=> d!1929091 (=> res!2549805 e!3751173)))

(assert (=> d!1929091 (= res!2549805 e!3751175)))

(declare-fun res!2549811 () Bool)

(assert (=> d!1929091 (=> (not res!2549811) (not e!3751175))))

(assert (=> d!1929091 (= res!2549811 (isDefined!12693 lt!2335250))))

(assert (=> d!1929091 (= lt!2335250 e!3751176)))

(declare-fun c!1108461 () Bool)

(declare-fun e!3751169 () Bool)

(assert (=> d!1929091 (= c!1108461 e!3751169)))

(declare-fun res!2549803 () Bool)

(assert (=> d!1929091 (=> (not res!2549803) (not e!3751169))))

(assert (=> d!1929091 (= res!2549803 (matchR!8282 (regOne!32710 r!7292) (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474))))))

(assert (=> d!1929091 (validRegex!7835 (regOne!32710 r!7292))))

(assert (=> d!1929091 (= (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (t!378090 s!2326) s!2326) lt!2335250)))

(declare-fun b!6156526 () Bool)

(assert (=> b!6156526 (= e!3751176 (Some!15989 (tuple2!66157 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (t!378090 s!2326))))))

(declare-fun b!6156528 () Bool)

(declare-fun lt!2335251 () Unit!157573)

(declare-fun lt!2335252 () Unit!157573)

(assert (=> b!6156528 (= lt!2335251 lt!2335252)))

(assert (=> b!6156528 (= (++!14185 (++!14185 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (Cons!64474 (h!70922 (t!378090 s!2326)) Nil!64474)) (t!378090 (t!378090 s!2326))) s!2326)))

(assert (=> b!6156528 (= lt!2335252 (lemmaMoveElementToOtherListKeepsConcatEq!2280 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (h!70922 (t!378090 s!2326)) (t!378090 (t!378090 s!2326)) s!2326))))

(assert (=> b!6156528 (= e!3751174 (findConcatSeparation!2404 (regOne!32710 r!7292) (regTwo!32710 r!7292) (++!14185 (++!14185 Nil!64474 (Cons!64474 (h!70922 s!2326) Nil!64474)) (Cons!64474 (h!70922 (t!378090 s!2326)) Nil!64474)) (t!378090 (t!378090 s!2326)) s!2326))))

(declare-fun b!6156529 () Bool)

(assert (=> b!6156529 (= e!3751169 (matchR!8282 (regTwo!32710 r!7292) (t!378090 s!2326)))))

(declare-fun b!6156530 () Bool)

(assert (=> b!6156530 (= e!3751173 (not (isDefined!12693 lt!2335250)))))

(assert (= (and d!1929091 res!2549803) b!6156529))

(assert (= (and d!1929091 c!1108461) b!6156526))

(assert (= (and d!1929091 (not c!1108461)) b!6156524))

(assert (= (and b!6156524 c!1108462) b!6156521))

(assert (= (and b!6156524 (not c!1108462)) b!6156528))

(assert (= (and d!1929091 res!2549811) b!6156523))

(assert (= (and b!6156523 res!2549804) b!6156519))

(assert (= (and b!6156519 res!2549807) b!6156517))

(assert (= (and d!1929091 (not res!2549805)) b!6156530))

(declare-fun m!6995286 () Bool)

(assert (=> b!6156529 m!6995286))

(declare-fun m!6995288 () Bool)

(assert (=> b!6156530 m!6995288))

(declare-fun m!6995290 () Bool)

(assert (=> b!6156523 m!6995290))

(declare-fun m!6995292 () Bool)

(assert (=> b!6156523 m!6995292))

(assert (=> b!6156528 m!6994770))

(declare-fun m!6995294 () Bool)

(assert (=> b!6156528 m!6995294))

(assert (=> b!6156528 m!6995294))

(declare-fun m!6995298 () Bool)

(assert (=> b!6156528 m!6995298))

(assert (=> b!6156528 m!6994770))

(declare-fun m!6995302 () Bool)

(assert (=> b!6156528 m!6995302))

(assert (=> b!6156528 m!6995294))

(declare-fun m!6995304 () Bool)

(assert (=> b!6156528 m!6995304))

(assert (=> b!6156519 m!6995290))

(declare-fun m!6995306 () Bool)

(assert (=> b!6156519 m!6995306))

(assert (=> b!6156517 m!6995290))

(declare-fun m!6995308 () Bool)

(assert (=> b!6156517 m!6995308))

(assert (=> d!1929091 m!6995288))

(assert (=> d!1929091 m!6994770))

(declare-fun m!6995310 () Bool)

(assert (=> d!1929091 m!6995310))

(assert (=> d!1929091 m!6994784))

(assert (=> b!6156094 d!1929091))

(declare-fun d!1929099 () Bool)

(assert (=> d!1929099 true))

(declare-fun setRes!41704 () Bool)

(assert (=> d!1929099 setRes!41704))

(declare-fun condSetEmpty!41704 () Bool)

(declare-fun res!2549815 () (InoxSet Context!10966))

(assert (=> d!1929099 (= condSetEmpty!41704 (= res!2549815 ((as const (Array Context!10966 Bool)) false)))))

(assert (=> d!1929099 (= (choose!45761 lt!2335122 lambda!335789) res!2549815)))

(declare-fun setIsEmpty!41704 () Bool)

(assert (=> setIsEmpty!41704 setRes!41704))

(declare-fun tp!1719210 () Bool)

(declare-fun e!3751180 () Bool)

(declare-fun setElem!41704 () Context!10966)

(declare-fun setNonEmpty!41704 () Bool)

(assert (=> setNonEmpty!41704 (= setRes!41704 (and tp!1719210 (inv!83494 setElem!41704) e!3751180))))

(declare-fun setRest!41704 () (InoxSet Context!10966))

(assert (=> setNonEmpty!41704 (= res!2549815 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) setElem!41704 true) setRest!41704))))

(declare-fun b!6156534 () Bool)

(declare-fun tp!1719209 () Bool)

(assert (=> b!6156534 (= e!3751180 tp!1719209)))

(assert (= (and d!1929099 condSetEmpty!41704) setIsEmpty!41704))

(assert (= (and d!1929099 (not condSetEmpty!41704)) setNonEmpty!41704))

(assert (= setNonEmpty!41704 b!6156534))

(declare-fun m!6995312 () Bool)

(assert (=> setNonEmpty!41704 m!6995312))

(assert (=> d!1928739 d!1929099))

(assert (=> b!6155682 d!1928937))

(declare-fun b!6156535 () Bool)

(declare-fun e!3751187 () Bool)

(declare-fun e!3751182 () Bool)

(assert (=> b!6156535 (= e!3751187 e!3751182)))

(declare-fun c!1108463 () Bool)

(assert (=> b!6156535 (= c!1108463 ((_ is Star!16099) lt!2335148))))

(declare-fun b!6156536 () Bool)

(declare-fun e!3751185 () Bool)

(declare-fun e!3751184 () Bool)

(assert (=> b!6156536 (= e!3751185 e!3751184)))

(declare-fun res!2549817 () Bool)

(assert (=> b!6156536 (=> (not res!2549817) (not e!3751184))))

(declare-fun call!512418 () Bool)

(assert (=> b!6156536 (= res!2549817 call!512418)))

(declare-fun b!6156537 () Bool)

(declare-fun e!3751186 () Bool)

(assert (=> b!6156537 (= e!3751182 e!3751186)))

(declare-fun res!2549820 () Bool)

(assert (=> b!6156537 (= res!2549820 (not (nullable!6092 (reg!16428 lt!2335148))))))

(assert (=> b!6156537 (=> (not res!2549820) (not e!3751186))))

(declare-fun b!6156538 () Bool)

(declare-fun e!3751181 () Bool)

(declare-fun call!512419 () Bool)

(assert (=> b!6156538 (= e!3751181 call!512419)))

(declare-fun bm!512412 () Bool)

(declare-fun call!512417 () Bool)

(assert (=> bm!512412 (= call!512419 call!512417)))

(declare-fun b!6156539 () Bool)

(declare-fun res!2549818 () Bool)

(assert (=> b!6156539 (=> (not res!2549818) (not e!3751181))))

(assert (=> b!6156539 (= res!2549818 call!512418)))

(declare-fun e!3751183 () Bool)

(assert (=> b!6156539 (= e!3751183 e!3751181)))

(declare-fun c!1108464 () Bool)

(declare-fun bm!512414 () Bool)

(assert (=> bm!512414 (= call!512417 (validRegex!7835 (ite c!1108463 (reg!16428 lt!2335148) (ite c!1108464 (regTwo!32711 lt!2335148) (regTwo!32710 lt!2335148)))))))

(declare-fun b!6156540 () Bool)

(assert (=> b!6156540 (= e!3751184 call!512419)))

(declare-fun bm!512413 () Bool)

(assert (=> bm!512413 (= call!512418 (validRegex!7835 (ite c!1108464 (regOne!32711 lt!2335148) (regOne!32710 lt!2335148))))))

(declare-fun d!1929103 () Bool)

(declare-fun res!2549819 () Bool)

(assert (=> d!1929103 (=> res!2549819 e!3751187)))

(assert (=> d!1929103 (= res!2549819 ((_ is ElementMatch!16099) lt!2335148))))

(assert (=> d!1929103 (= (validRegex!7835 lt!2335148) e!3751187)))

(declare-fun b!6156541 () Bool)

(assert (=> b!6156541 (= e!3751186 call!512417)))

(declare-fun b!6156542 () Bool)

(assert (=> b!6156542 (= e!3751182 e!3751183)))

(assert (=> b!6156542 (= c!1108464 ((_ is Union!16099) lt!2335148))))

(declare-fun b!6156543 () Bool)

(declare-fun res!2549816 () Bool)

(assert (=> b!6156543 (=> res!2549816 e!3751185)))

(assert (=> b!6156543 (= res!2549816 (not ((_ is Concat!24944) lt!2335148)))))

(assert (=> b!6156543 (= e!3751183 e!3751185)))

(assert (= (and d!1929103 (not res!2549819)) b!6156535))

(assert (= (and b!6156535 c!1108463) b!6156537))

(assert (= (and b!6156535 (not c!1108463)) b!6156542))

(assert (= (and b!6156537 res!2549820) b!6156541))

(assert (= (and b!6156542 c!1108464) b!6156539))

(assert (= (and b!6156542 (not c!1108464)) b!6156543))

(assert (= (and b!6156539 res!2549818) b!6156538))

(assert (= (and b!6156543 (not res!2549816)) b!6156536))

(assert (= (and b!6156536 res!2549817) b!6156540))

(assert (= (or b!6156538 b!6156540) bm!512412))

(assert (= (or b!6156539 b!6156536) bm!512413))

(assert (= (or b!6156541 bm!512412) bm!512414))

(declare-fun m!6995314 () Bool)

(assert (=> b!6156537 m!6995314))

(declare-fun m!6995316 () Bool)

(assert (=> bm!512414 m!6995316))

(declare-fun m!6995318 () Bool)

(assert (=> bm!512413 m!6995318))

(assert (=> d!1928681 d!1929103))

(assert (=> d!1928681 d!1928747))

(assert (=> d!1928681 d!1928751))

(assert (=> d!1928829 d!1928889))

(declare-fun b!6156544 () Bool)

(declare-fun e!3751193 () Bool)

(assert (=> b!6156544 (= e!3751193 (nullable!6092 (regOne!32710 r!7292)))))

(declare-fun b!6156545 () Bool)

(declare-fun e!3751190 () Bool)

(declare-fun lt!2335253 () Bool)

(declare-fun call!512420 () Bool)

(assert (=> b!6156545 (= e!3751190 (= lt!2335253 call!512420))))

(declare-fun d!1929105 () Bool)

(assert (=> d!1929105 e!3751190))

(declare-fun c!1108466 () Bool)

(assert (=> d!1929105 (= c!1108466 ((_ is EmptyExpr!16099) (regOne!32710 r!7292)))))

(assert (=> d!1929105 (= lt!2335253 e!3751193)))

(declare-fun c!1108465 () Bool)

(assert (=> d!1929105 (= c!1108465 (isEmpty!36438 Nil!64474))))

(assert (=> d!1929105 (validRegex!7835 (regOne!32710 r!7292))))

(assert (=> d!1929105 (= (matchR!8282 (regOne!32710 r!7292) Nil!64474) lt!2335253)))

(declare-fun b!6156546 () Bool)

(declare-fun e!3751192 () Bool)

(declare-fun e!3751189 () Bool)

(assert (=> b!6156546 (= e!3751192 e!3751189)))

(declare-fun res!2549825 () Bool)

(assert (=> b!6156546 (=> (not res!2549825) (not e!3751189))))

(assert (=> b!6156546 (= res!2549825 (not lt!2335253))))

(declare-fun b!6156547 () Bool)

(declare-fun e!3751188 () Bool)

(assert (=> b!6156547 (= e!3751190 e!3751188)))

(declare-fun c!1108467 () Bool)

(assert (=> b!6156547 (= c!1108467 ((_ is EmptyLang!16099) (regOne!32710 r!7292)))))

(declare-fun b!6156548 () Bool)

(declare-fun res!2549826 () Bool)

(declare-fun e!3751194 () Bool)

(assert (=> b!6156548 (=> res!2549826 e!3751194)))

(assert (=> b!6156548 (= res!2549826 (not (isEmpty!36438 (tail!11803 Nil!64474))))))

(declare-fun bm!512415 () Bool)

(assert (=> bm!512415 (= call!512420 (isEmpty!36438 Nil!64474))))

(declare-fun b!6156549 () Bool)

(assert (=> b!6156549 (= e!3751193 (matchR!8282 (derivativeStep!4818 (regOne!32710 r!7292) (head!12718 Nil!64474)) (tail!11803 Nil!64474)))))

(declare-fun b!6156550 () Bool)

(assert (=> b!6156550 (= e!3751188 (not lt!2335253))))

(declare-fun b!6156551 () Bool)

(declare-fun res!2549821 () Bool)

(declare-fun e!3751191 () Bool)

(assert (=> b!6156551 (=> (not res!2549821) (not e!3751191))))

(assert (=> b!6156551 (= res!2549821 (not call!512420))))

(declare-fun b!6156552 () Bool)

(declare-fun res!2549823 () Bool)

(assert (=> b!6156552 (=> res!2549823 e!3751192)))

(assert (=> b!6156552 (= res!2549823 e!3751191)))

(declare-fun res!2549824 () Bool)

(assert (=> b!6156552 (=> (not res!2549824) (not e!3751191))))

(assert (=> b!6156552 (= res!2549824 lt!2335253)))

(declare-fun b!6156553 () Bool)

(assert (=> b!6156553 (= e!3751189 e!3751194)))

(declare-fun res!2549827 () Bool)

(assert (=> b!6156553 (=> res!2549827 e!3751194)))

(assert (=> b!6156553 (= res!2549827 call!512420)))

(declare-fun b!6156554 () Bool)

(assert (=> b!6156554 (= e!3751191 (= (head!12718 Nil!64474) (c!1108140 (regOne!32710 r!7292))))))

(declare-fun b!6156555 () Bool)

(declare-fun res!2549822 () Bool)

(assert (=> b!6156555 (=> res!2549822 e!3751192)))

(assert (=> b!6156555 (= res!2549822 (not ((_ is ElementMatch!16099) (regOne!32710 r!7292))))))

(assert (=> b!6156555 (= e!3751188 e!3751192)))

(declare-fun b!6156556 () Bool)

(declare-fun res!2549828 () Bool)

(assert (=> b!6156556 (=> (not res!2549828) (not e!3751191))))

(assert (=> b!6156556 (= res!2549828 (isEmpty!36438 (tail!11803 Nil!64474)))))

(declare-fun b!6156557 () Bool)

(assert (=> b!6156557 (= e!3751194 (not (= (head!12718 Nil!64474) (c!1108140 (regOne!32710 r!7292)))))))

(assert (= (and d!1929105 c!1108465) b!6156544))

(assert (= (and d!1929105 (not c!1108465)) b!6156549))

(assert (= (and d!1929105 c!1108466) b!6156545))

(assert (= (and d!1929105 (not c!1108466)) b!6156547))

(assert (= (and b!6156547 c!1108467) b!6156550))

(assert (= (and b!6156547 (not c!1108467)) b!6156555))

(assert (= (and b!6156555 (not res!2549822)) b!6156552))

(assert (= (and b!6156552 res!2549824) b!6156551))

(assert (= (and b!6156551 res!2549821) b!6156556))

(assert (= (and b!6156556 res!2549828) b!6156554))

(assert (= (and b!6156552 (not res!2549823)) b!6156546))

(assert (= (and b!6156546 res!2549825) b!6156553))

(assert (= (and b!6156553 (not res!2549827)) b!6156548))

(assert (= (and b!6156548 (not res!2549826)) b!6156557))

(assert (= (or b!6156545 b!6156551 b!6156553) bm!512415))

(declare-fun m!6995320 () Bool)

(assert (=> d!1929105 m!6995320))

(assert (=> d!1929105 m!6994784))

(declare-fun m!6995322 () Bool)

(assert (=> b!6156549 m!6995322))

(assert (=> b!6156549 m!6995322))

(declare-fun m!6995324 () Bool)

(assert (=> b!6156549 m!6995324))

(declare-fun m!6995326 () Bool)

(assert (=> b!6156549 m!6995326))

(assert (=> b!6156549 m!6995324))

(assert (=> b!6156549 m!6995326))

(declare-fun m!6995328 () Bool)

(assert (=> b!6156549 m!6995328))

(assert (=> b!6156556 m!6995326))

(assert (=> b!6156556 m!6995326))

(declare-fun m!6995330 () Bool)

(assert (=> b!6156556 m!6995330))

(declare-fun m!6995332 () Bool)

(assert (=> b!6156544 m!6995332))

(assert (=> bm!512415 m!6995320))

(assert (=> b!6156548 m!6995326))

(assert (=> b!6156548 m!6995326))

(assert (=> b!6156548 m!6995330))

(assert (=> b!6156557 m!6995322))

(assert (=> b!6156554 m!6995322))

(assert (=> d!1928829 d!1929105))

(assert (=> d!1928829 d!1929049))

(declare-fun d!1929109 () Bool)

(assert (=> d!1929109 (= (isEmpty!36436 (t!378088 (unfocusZipperList!1520 zl!343))) ((_ is Nil!64472) (t!378088 (unfocusZipperList!1520 zl!343))))))

(assert (=> b!6155837 d!1929109))

(declare-fun d!1929111 () Bool)

(declare-fun c!1108468 () Bool)

(assert (=> d!1929111 (= c!1108468 (isEmpty!36438 (tail!11803 (t!378090 s!2326))))))

(declare-fun e!3751195 () Bool)

(assert (=> d!1929111 (= (matchZipper!2111 (derivationStepZipper!2071 lt!2335133 (head!12718 (t!378090 s!2326))) (tail!11803 (t!378090 s!2326))) e!3751195)))

(declare-fun b!6156558 () Bool)

(assert (=> b!6156558 (= e!3751195 (nullableZipper!1879 (derivationStepZipper!2071 lt!2335133 (head!12718 (t!378090 s!2326)))))))

(declare-fun b!6156559 () Bool)

(assert (=> b!6156559 (= e!3751195 (matchZipper!2111 (derivationStepZipper!2071 (derivationStepZipper!2071 lt!2335133 (head!12718 (t!378090 s!2326))) (head!12718 (tail!11803 (t!378090 s!2326)))) (tail!11803 (tail!11803 (t!378090 s!2326)))))))

(assert (= (and d!1929111 c!1108468) b!6156558))

(assert (= (and d!1929111 (not c!1108468)) b!6156559))

(assert (=> d!1929111 m!6994358))

(assert (=> d!1929111 m!6994830))

(assert (=> b!6156558 m!6994364))

(declare-fun m!6995334 () Bool)

(assert (=> b!6156558 m!6995334))

(assert (=> b!6156559 m!6994358))

(assert (=> b!6156559 m!6994834))

(assert (=> b!6156559 m!6994364))

(assert (=> b!6156559 m!6994834))

(declare-fun m!6995336 () Bool)

(assert (=> b!6156559 m!6995336))

(assert (=> b!6156559 m!6994358))

(assert (=> b!6156559 m!6994838))

(assert (=> b!6156559 m!6995336))

(assert (=> b!6156559 m!6994838))

(declare-fun m!6995338 () Bool)

(assert (=> b!6156559 m!6995338))

(assert (=> b!6155496 d!1929111))

(declare-fun bs!1525904 () Bool)

(declare-fun d!1929113 () Bool)

(assert (= bs!1525904 (and d!1929113 d!1928869)))

(declare-fun lambda!335885 () Int)

(assert (=> bs!1525904 (= lambda!335885 lambda!335851)))

(declare-fun bs!1525905 () Bool)

(assert (= bs!1525905 (and d!1929113 b!6155358)))

(assert (=> bs!1525905 (= (= (head!12718 (t!378090 s!2326)) (h!70922 s!2326)) (= lambda!335885 lambda!335789))))

(declare-fun bs!1525906 () Bool)

(assert (= bs!1525906 (and d!1929113 d!1928955)))

(assert (=> bs!1525906 (= lambda!335885 lambda!335866)))

(declare-fun bs!1525907 () Bool)

(assert (= bs!1525907 (and d!1929113 d!1928919)))

(assert (=> bs!1525907 (= lambda!335885 lambda!335859)))

(declare-fun bs!1525908 () Bool)

(assert (= bs!1525908 (and d!1929113 d!1929075)))

(assert (=> bs!1525908 (= lambda!335885 lambda!335883)))

(declare-fun bs!1525909 () Bool)

(assert (= bs!1525909 (and d!1929113 d!1928983)))

(assert (=> bs!1525909 (= lambda!335885 lambda!335869)))

(declare-fun bs!1525910 () Bool)

(assert (= bs!1525910 (and d!1929113 d!1928913)))

(assert (=> bs!1525910 (= lambda!335885 lambda!335855)))

(assert (=> d!1929113 true))

(assert (=> d!1929113 (= (derivationStepZipper!2071 lt!2335133 (head!12718 (t!378090 s!2326))) (flatMap!1604 lt!2335133 lambda!335885))))

(declare-fun bs!1525911 () Bool)

(assert (= bs!1525911 d!1929113))

(declare-fun m!6995340 () Bool)

(assert (=> bs!1525911 m!6995340))

(assert (=> b!6155496 d!1929113))

(assert (=> b!6155496 d!1928873))

(assert (=> b!6155496 d!1928875))

(declare-fun call!512422 () List!64596)

(declare-fun bm!512416 () Bool)

(declare-fun call!512421 () (InoxSet Context!10966))

(declare-fun c!1108474 () Bool)

(declare-fun c!1108472 () Bool)

(declare-fun c!1108473 () Bool)

(assert (=> bm!512416 (= call!512421 (derivationStepZipperDown!1347 (ite c!1108473 (regTwo!32711 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (ite c!1108474 (regTwo!32710 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (ite c!1108472 (regOne!32710 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (reg!16428 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))) (ite (or c!1108473 c!1108474) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (Context!10967 call!512422)) (h!70922 s!2326)))))

(declare-fun b!6156566 () Bool)

(declare-fun e!3751203 () (InoxSet Context!10966))

(declare-fun call!512426 () (InoxSet Context!10966))

(assert (=> b!6156566 (= e!3751203 ((_ map or) call!512426 call!512421))))

(declare-fun b!6156567 () Bool)

(declare-fun e!3751202 () (InoxSet Context!10966))

(assert (=> b!6156567 (= e!3751202 e!3751203)))

(assert (=> b!6156567 (= c!1108473 ((_ is Union!16099) (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))

(declare-fun b!6156568 () Bool)

(declare-fun e!3751204 () (InoxSet Context!10966))

(assert (=> b!6156568 (= e!3751204 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156569 () Bool)

(declare-fun e!3751199 () (InoxSet Context!10966))

(declare-fun e!3751201 () (InoxSet Context!10966))

(assert (=> b!6156569 (= e!3751199 e!3751201)))

(assert (=> b!6156569 (= c!1108472 ((_ is Concat!24944) (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))

(declare-fun b!6156570 () Bool)

(assert (=> b!6156570 (= e!3751202 (store ((as const (Array Context!10966 Bool)) false) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) true))))

(declare-fun b!6156571 () Bool)

(declare-fun call!512424 () (InoxSet Context!10966))

(assert (=> b!6156571 (= e!3751199 ((_ map or) call!512426 call!512424))))

(declare-fun call!512423 () List!64596)

(declare-fun bm!512418 () Bool)

(assert (=> bm!512418 (= call!512423 ($colon$colon!1976 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))) (ite (or c!1108474 c!1108472) (regTwo!32710 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))))

(declare-fun b!6156572 () Bool)

(declare-fun c!1108475 () Bool)

(assert (=> b!6156572 (= c!1108475 ((_ is Star!16099) (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))

(assert (=> b!6156572 (= e!3751201 e!3751204)))

(declare-fun bm!512417 () Bool)

(assert (=> bm!512417 (= call!512424 call!512421)))

(declare-fun d!1929115 () Bool)

(declare-fun c!1108476 () Bool)

(assert (=> d!1929115 (= c!1108476 (and ((_ is ElementMatch!16099) (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (= (c!1108140 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (h!70922 s!2326))))))

(assert (=> d!1929115 (= (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (h!70922 s!2326)) e!3751202)))

(declare-fun b!6156573 () Bool)

(declare-fun call!512425 () (InoxSet Context!10966))

(assert (=> b!6156573 (= e!3751204 call!512425)))

(declare-fun bm!512419 () Bool)

(assert (=> bm!512419 (= call!512422 call!512423)))

(declare-fun bm!512420 () Bool)

(assert (=> bm!512420 (= call!512426 (derivationStepZipperDown!1347 (ite c!1108473 (regOne!32711 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (regOne!32710 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))) (ite c!1108473 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (Context!10967 call!512423)) (h!70922 s!2326)))))

(declare-fun bm!512421 () Bool)

(assert (=> bm!512421 (= call!512425 call!512424)))

(declare-fun b!6156574 () Bool)

(assert (=> b!6156574 (= e!3751201 call!512425)))

(declare-fun b!6156575 () Bool)

(declare-fun e!3751200 () Bool)

(assert (=> b!6156575 (= e!3751200 (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))))

(declare-fun b!6156576 () Bool)

(assert (=> b!6156576 (= c!1108474 e!3751200)))

(declare-fun res!2549829 () Bool)

(assert (=> b!6156576 (=> (not res!2549829) (not e!3751200))))

(assert (=> b!6156576 (= res!2549829 ((_ is Concat!24944) (h!70920 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))

(assert (=> b!6156576 (= e!3751203 e!3751199)))

(assert (= (and d!1929115 c!1108476) b!6156570))

(assert (= (and d!1929115 (not c!1108476)) b!6156567))

(assert (= (and b!6156567 c!1108473) b!6156566))

(assert (= (and b!6156567 (not c!1108473)) b!6156576))

(assert (= (and b!6156576 res!2549829) b!6156575))

(assert (= (and b!6156576 c!1108474) b!6156571))

(assert (= (and b!6156576 (not c!1108474)) b!6156569))

(assert (= (and b!6156569 c!1108472) b!6156574))

(assert (= (and b!6156569 (not c!1108472)) b!6156572))

(assert (= (and b!6156572 c!1108475) b!6156573))

(assert (= (and b!6156572 (not c!1108475)) b!6156568))

(assert (= (or b!6156574 b!6156573) bm!512419))

(assert (= (or b!6156574 b!6156573) bm!512421))

(assert (= (or b!6156571 bm!512419) bm!512418))

(assert (= (or b!6156571 bm!512421) bm!512417))

(assert (= (or b!6156566 bm!512417) bm!512416))

(assert (= (or b!6156566 b!6156571) bm!512420))

(declare-fun m!6995352 () Bool)

(assert (=> bm!512420 m!6995352))

(declare-fun m!6995358 () Bool)

(assert (=> b!6156575 m!6995358))

(declare-fun m!6995364 () Bool)

(assert (=> bm!512418 m!6995364))

(declare-fun m!6995368 () Bool)

(assert (=> b!6156570 m!6995368))

(declare-fun m!6995370 () Bool)

(assert (=> bm!512416 m!6995370))

(assert (=> bm!512319 d!1929115))

(declare-fun c!1108480 () Bool)

(declare-fun c!1108479 () Bool)

(declare-fun bm!512422 () Bool)

(declare-fun c!1108478 () Bool)

(declare-fun call!512428 () List!64596)

(declare-fun call!512427 () (InoxSet Context!10966))

(assert (=> bm!512422 (= call!512427 (derivationStepZipperDown!1347 (ite c!1108479 (regTwo!32711 (h!70920 (exprs!5983 lt!2335134))) (ite c!1108480 (regTwo!32710 (h!70920 (exprs!5983 lt!2335134))) (ite c!1108478 (regOne!32710 (h!70920 (exprs!5983 lt!2335134))) (reg!16428 (h!70920 (exprs!5983 lt!2335134)))))) (ite (or c!1108479 c!1108480) (Context!10967 (t!378088 (exprs!5983 lt!2335134))) (Context!10967 call!512428)) (h!70922 s!2326)))))

(declare-fun b!6156581 () Bool)

(declare-fun e!3751211 () (InoxSet Context!10966))

(declare-fun call!512432 () (InoxSet Context!10966))

(assert (=> b!6156581 (= e!3751211 ((_ map or) call!512432 call!512427))))

(declare-fun b!6156582 () Bool)

(declare-fun e!3751210 () (InoxSet Context!10966))

(assert (=> b!6156582 (= e!3751210 e!3751211)))

(assert (=> b!6156582 (= c!1108479 ((_ is Union!16099) (h!70920 (exprs!5983 lt!2335134))))))

(declare-fun b!6156583 () Bool)

(declare-fun e!3751212 () (InoxSet Context!10966))

(assert (=> b!6156583 (= e!3751212 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156584 () Bool)

(declare-fun e!3751207 () (InoxSet Context!10966))

(declare-fun e!3751209 () (InoxSet Context!10966))

(assert (=> b!6156584 (= e!3751207 e!3751209)))

(assert (=> b!6156584 (= c!1108478 ((_ is Concat!24944) (h!70920 (exprs!5983 lt!2335134))))))

(declare-fun b!6156585 () Bool)

(assert (=> b!6156585 (= e!3751210 (store ((as const (Array Context!10966 Bool)) false) (Context!10967 (t!378088 (exprs!5983 lt!2335134))) true))))

(declare-fun b!6156586 () Bool)

(declare-fun call!512430 () (InoxSet Context!10966))

(assert (=> b!6156586 (= e!3751207 ((_ map or) call!512432 call!512430))))

(declare-fun bm!512424 () Bool)

(declare-fun call!512429 () List!64596)

(assert (=> bm!512424 (= call!512429 ($colon$colon!1976 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134)))) (ite (or c!1108480 c!1108478) (regTwo!32710 (h!70920 (exprs!5983 lt!2335134))) (h!70920 (exprs!5983 lt!2335134)))))))

(declare-fun b!6156587 () Bool)

(declare-fun c!1108481 () Bool)

(assert (=> b!6156587 (= c!1108481 ((_ is Star!16099) (h!70920 (exprs!5983 lt!2335134))))))

(assert (=> b!6156587 (= e!3751209 e!3751212)))

(declare-fun bm!512423 () Bool)

(assert (=> bm!512423 (= call!512430 call!512427)))

(declare-fun d!1929125 () Bool)

(declare-fun c!1108482 () Bool)

(assert (=> d!1929125 (= c!1108482 (and ((_ is ElementMatch!16099) (h!70920 (exprs!5983 lt!2335134))) (= (c!1108140 (h!70920 (exprs!5983 lt!2335134))) (h!70922 s!2326))))))

(assert (=> d!1929125 (= (derivationStepZipperDown!1347 (h!70920 (exprs!5983 lt!2335134)) (Context!10967 (t!378088 (exprs!5983 lt!2335134))) (h!70922 s!2326)) e!3751210)))

(declare-fun b!6156588 () Bool)

(declare-fun call!512431 () (InoxSet Context!10966))

(assert (=> b!6156588 (= e!3751212 call!512431)))

(declare-fun bm!512425 () Bool)

(assert (=> bm!512425 (= call!512428 call!512429)))

(declare-fun bm!512426 () Bool)

(assert (=> bm!512426 (= call!512432 (derivationStepZipperDown!1347 (ite c!1108479 (regOne!32711 (h!70920 (exprs!5983 lt!2335134))) (regOne!32710 (h!70920 (exprs!5983 lt!2335134)))) (ite c!1108479 (Context!10967 (t!378088 (exprs!5983 lt!2335134))) (Context!10967 call!512429)) (h!70922 s!2326)))))

(declare-fun bm!512427 () Bool)

(assert (=> bm!512427 (= call!512431 call!512430)))

(declare-fun b!6156589 () Bool)

(assert (=> b!6156589 (= e!3751209 call!512431)))

(declare-fun b!6156590 () Bool)

(declare-fun e!3751208 () Bool)

(assert (=> b!6156590 (= e!3751208 (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 lt!2335134)))))))

(declare-fun b!6156591 () Bool)

(assert (=> b!6156591 (= c!1108480 e!3751208)))

(declare-fun res!2549832 () Bool)

(assert (=> b!6156591 (=> (not res!2549832) (not e!3751208))))

(assert (=> b!6156591 (= res!2549832 ((_ is Concat!24944) (h!70920 (exprs!5983 lt!2335134))))))

(assert (=> b!6156591 (= e!3751211 e!3751207)))

(assert (= (and d!1929125 c!1108482) b!6156585))

(assert (= (and d!1929125 (not c!1108482)) b!6156582))

(assert (= (and b!6156582 c!1108479) b!6156581))

(assert (= (and b!6156582 (not c!1108479)) b!6156591))

(assert (= (and b!6156591 res!2549832) b!6156590))

(assert (= (and b!6156591 c!1108480) b!6156586))

(assert (= (and b!6156591 (not c!1108480)) b!6156584))

(assert (= (and b!6156584 c!1108478) b!6156589))

(assert (= (and b!6156584 (not c!1108478)) b!6156587))

(assert (= (and b!6156587 c!1108481) b!6156588))

(assert (= (and b!6156587 (not c!1108481)) b!6156583))

(assert (= (or b!6156589 b!6156588) bm!512425))

(assert (= (or b!6156589 b!6156588) bm!512427))

(assert (= (or b!6156586 bm!512425) bm!512424))

(assert (= (or b!6156586 bm!512427) bm!512423))

(assert (= (or b!6156581 bm!512423) bm!512422))

(assert (= (or b!6156581 b!6156586) bm!512426))

(declare-fun m!6995372 () Bool)

(assert (=> bm!512426 m!6995372))

(declare-fun m!6995374 () Bool)

(assert (=> b!6156590 m!6995374))

(declare-fun m!6995376 () Bool)

(assert (=> bm!512424 m!6995376))

(declare-fun m!6995378 () Bool)

(assert (=> b!6156585 m!6995378))

(declare-fun m!6995380 () Bool)

(assert (=> bm!512422 m!6995380))

(assert (=> bm!512320 d!1929125))

(assert (=> d!1928737 d!1928735))

(declare-fun d!1929127 () Bool)

(assert (=> d!1929127 (= (flatMap!1604 lt!2335114 lambda!335789) (dynLambda!25417 lambda!335789 lt!2335132))))

(assert (=> d!1929127 true))

(declare-fun _$13!3090 () Unit!157573)

(assert (=> d!1929127 (= (choose!45762 lt!2335114 lt!2335132 lambda!335789) _$13!3090)))

(declare-fun b_lambda!234345 () Bool)

(assert (=> (not b_lambda!234345) (not d!1929127)))

(declare-fun bs!1525913 () Bool)

(assert (= bs!1525913 d!1929127))

(assert (=> bs!1525913 m!6994242))

(assert (=> bs!1525913 m!6994522))

(assert (=> d!1928737 d!1929127))

(assert (=> b!6155988 d!1928805))

(assert (=> b!6155849 d!1928767))

(declare-fun bs!1525914 () Bool)

(declare-fun d!1929137 () Bool)

(assert (= bs!1525914 (and d!1929137 d!1928765)))

(declare-fun lambda!335886 () Int)

(assert (=> bs!1525914 (= lambda!335886 lambda!335825)))

(declare-fun bs!1525915 () Bool)

(assert (= bs!1525915 (and d!1929137 d!1928715)))

(assert (=> bs!1525915 (= lambda!335886 lambda!335816)))

(declare-fun bs!1525916 () Bool)

(assert (= bs!1525916 (and d!1929137 d!1928751)))

(assert (=> bs!1525916 (= lambda!335886 lambda!335823)))

(declare-fun bs!1525917 () Bool)

(assert (= bs!1525917 (and d!1929137 d!1928747)))

(assert (=> bs!1525917 (= lambda!335886 lambda!335820)))

(declare-fun bs!1525918 () Bool)

(assert (= bs!1525918 (and d!1929137 d!1928719)))

(assert (=> bs!1525918 (= lambda!335886 lambda!335817)))

(declare-fun bs!1525919 () Bool)

(assert (= bs!1525919 (and d!1929137 d!1928859)))

(assert (=> bs!1525919 (= lambda!335886 lambda!335848)))

(declare-fun bs!1525920 () Bool)

(assert (= bs!1525920 (and d!1929137 d!1928767)))

(assert (=> bs!1525920 (= lambda!335886 lambda!335830)))

(declare-fun lt!2335255 () List!64596)

(assert (=> d!1929137 (forall!15220 lt!2335255 lambda!335886)))

(declare-fun e!3751218 () List!64596)

(assert (=> d!1929137 (= lt!2335255 e!3751218)))

(declare-fun c!1108485 () Bool)

(assert (=> d!1929137 (= c!1108485 ((_ is Cons!64473) (t!378089 zl!343)))))

(assert (=> d!1929137 (= (unfocusZipperList!1520 (t!378089 zl!343)) lt!2335255)))

(declare-fun b!6156599 () Bool)

(assert (=> b!6156599 (= e!3751218 (Cons!64472 (generalisedConcat!1696 (exprs!5983 (h!70921 (t!378089 zl!343)))) (unfocusZipperList!1520 (t!378089 (t!378089 zl!343)))))))

(declare-fun b!6156600 () Bool)

(assert (=> b!6156600 (= e!3751218 Nil!64472)))

(assert (= (and d!1929137 c!1108485) b!6156599))

(assert (= (and d!1929137 (not c!1108485)) b!6156600))

(declare-fun m!6995392 () Bool)

(assert (=> d!1929137 m!6995392))

(declare-fun m!6995394 () Bool)

(assert (=> b!6156599 m!6995394))

(declare-fun m!6995396 () Bool)

(assert (=> b!6156599 m!6995396))

(assert (=> b!6155849 d!1929137))

(declare-fun bs!1525921 () Bool)

(declare-fun b!6156616 () Bool)

(assert (= bs!1525921 (and b!6156616 b!6155604)))

(declare-fun lambda!335887 () Int)

(assert (=> bs!1525921 (= (and (= (reg!16428 (regOne!32711 r!7292)) (reg!16428 r!7292)) (= (regOne!32711 r!7292) r!7292)) (= lambda!335887 lambda!335803))))

(declare-fun bs!1525922 () Bool)

(assert (= bs!1525922 (and b!6156616 d!1929063)))

(assert (=> bs!1525922 (not (= lambda!335887 lambda!335882))))

(declare-fun bs!1525923 () Bool)

(assert (= bs!1525923 (and b!6156616 b!6155598)))

(assert (=> bs!1525923 (not (= lambda!335887 lambda!335806))))

(declare-fun bs!1525924 () Bool)

(assert (= bs!1525924 (and b!6156616 d!1929027)))

(assert (=> bs!1525924 (not (= lambda!335887 lambda!335879))))

(declare-fun bs!1525925 () Bool)

(assert (= bs!1525925 (and b!6156616 d!1928843)))

(assert (=> bs!1525925 (not (= lambda!335887 lambda!335847))))

(declare-fun bs!1525926 () Bool)

(assert (= bs!1525926 (and b!6156616 b!6155370)))

(assert (=> bs!1525926 (not (= lambda!335887 lambda!335788))))

(assert (=> bs!1525926 (not (= lambda!335887 lambda!335787))))

(assert (=> bs!1525925 (not (= lambda!335887 lambda!335846))))

(declare-fun bs!1525927 () Bool)

(assert (= bs!1525927 (and b!6156616 d!1928841)))

(assert (=> bs!1525927 (not (= lambda!335887 lambda!335841))))

(assert (=> bs!1525924 (not (= lambda!335887 lambda!335878))))

(assert (=> b!6156616 true))

(assert (=> b!6156616 true))

(declare-fun bs!1525928 () Bool)

(declare-fun b!6156610 () Bool)

(assert (= bs!1525928 (and b!6156610 b!6155604)))

(declare-fun lambda!335888 () Int)

(assert (=> bs!1525928 (not (= lambda!335888 lambda!335803))))

(declare-fun bs!1525929 () Bool)

(assert (= bs!1525929 (and b!6156610 d!1929063)))

(assert (=> bs!1525929 (not (= lambda!335888 lambda!335882))))

(declare-fun bs!1525930 () Bool)

(assert (= bs!1525930 (and b!6156610 b!6155598)))

(assert (=> bs!1525930 (= (and (= (regOne!32710 (regOne!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regOne!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335888 lambda!335806))))

(declare-fun bs!1525931 () Bool)

(assert (= bs!1525931 (and b!6156610 b!6156616)))

(assert (=> bs!1525931 (not (= lambda!335888 lambda!335887))))

(declare-fun bs!1525932 () Bool)

(assert (= bs!1525932 (and b!6156610 d!1929027)))

(assert (=> bs!1525932 (= (and (= (regOne!32710 (regOne!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regOne!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335888 lambda!335879))))

(declare-fun bs!1525933 () Bool)

(assert (= bs!1525933 (and b!6156610 d!1928843)))

(assert (=> bs!1525933 (= (and (= (regOne!32710 (regOne!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regOne!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335888 lambda!335847))))

(declare-fun bs!1525934 () Bool)

(assert (= bs!1525934 (and b!6156610 b!6155370)))

(assert (=> bs!1525934 (= (and (= (regOne!32710 (regOne!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regOne!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335888 lambda!335788))))

(assert (=> bs!1525934 (not (= lambda!335888 lambda!335787))))

(assert (=> bs!1525933 (not (= lambda!335888 lambda!335846))))

(declare-fun bs!1525935 () Bool)

(assert (= bs!1525935 (and b!6156610 d!1928841)))

(assert (=> bs!1525935 (not (= lambda!335888 lambda!335841))))

(assert (=> bs!1525932 (not (= lambda!335888 lambda!335878))))

(assert (=> b!6156610 true))

(assert (=> b!6156610 true))

(declare-fun e!3751231 () Bool)

(declare-fun call!512438 () Bool)

(assert (=> b!6156610 (= e!3751231 call!512438)))

(declare-fun b!6156611 () Bool)

(declare-fun e!3751229 () Bool)

(declare-fun e!3751228 () Bool)

(assert (=> b!6156611 (= e!3751229 e!3751228)))

(declare-fun res!2549846 () Bool)

(assert (=> b!6156611 (= res!2549846 (not ((_ is EmptyLang!16099) (regOne!32711 r!7292))))))

(assert (=> b!6156611 (=> (not res!2549846) (not e!3751228))))

(declare-fun b!6156612 () Bool)

(declare-fun c!1108491 () Bool)

(assert (=> b!6156612 (= c!1108491 ((_ is Union!16099) (regOne!32711 r!7292)))))

(declare-fun e!3751227 () Bool)

(declare-fun e!3751230 () Bool)

(assert (=> b!6156612 (= e!3751227 e!3751230)))

(declare-fun d!1929141 () Bool)

(declare-fun c!1108489 () Bool)

(assert (=> d!1929141 (= c!1108489 ((_ is EmptyExpr!16099) (regOne!32711 r!7292)))))

(assert (=> d!1929141 (= (matchRSpec!3200 (regOne!32711 r!7292) s!2326) e!3751229)))

(declare-fun b!6156613 () Bool)

(declare-fun call!512437 () Bool)

(assert (=> b!6156613 (= e!3751229 call!512437)))

(declare-fun b!6156614 () Bool)

(declare-fun e!3751232 () Bool)

(assert (=> b!6156614 (= e!3751230 e!3751232)))

(declare-fun res!2549844 () Bool)

(assert (=> b!6156614 (= res!2549844 (matchRSpec!3200 (regOne!32711 (regOne!32711 r!7292)) s!2326))))

(assert (=> b!6156614 (=> res!2549844 e!3751232)))

(declare-fun c!1108488 () Bool)

(declare-fun bm!512432 () Bool)

(assert (=> bm!512432 (= call!512438 (Exists!3169 (ite c!1108488 lambda!335887 lambda!335888)))))

(declare-fun b!6156615 () Bool)

(assert (=> b!6156615 (= e!3751230 e!3751231)))

(assert (=> b!6156615 (= c!1108488 ((_ is Star!16099) (regOne!32711 r!7292)))))

(declare-fun e!3751226 () Bool)

(assert (=> b!6156616 (= e!3751226 call!512438)))

(declare-fun b!6156617 () Bool)

(assert (=> b!6156617 (= e!3751227 (= s!2326 (Cons!64474 (c!1108140 (regOne!32711 r!7292)) Nil!64474)))))

(declare-fun b!6156618 () Bool)

(assert (=> b!6156618 (= e!3751232 (matchRSpec!3200 (regTwo!32711 (regOne!32711 r!7292)) s!2326))))

(declare-fun b!6156619 () Bool)

(declare-fun res!2549845 () Bool)

(assert (=> b!6156619 (=> res!2549845 e!3751226)))

(assert (=> b!6156619 (= res!2549845 call!512437)))

(assert (=> b!6156619 (= e!3751231 e!3751226)))

(declare-fun b!6156620 () Bool)

(declare-fun c!1108490 () Bool)

(assert (=> b!6156620 (= c!1108490 ((_ is ElementMatch!16099) (regOne!32711 r!7292)))))

(assert (=> b!6156620 (= e!3751228 e!3751227)))

(declare-fun bm!512433 () Bool)

(assert (=> bm!512433 (= call!512437 (isEmpty!36438 s!2326))))

(assert (= (and d!1929141 c!1108489) b!6156613))

(assert (= (and d!1929141 (not c!1108489)) b!6156611))

(assert (= (and b!6156611 res!2549846) b!6156620))

(assert (= (and b!6156620 c!1108490) b!6156617))

(assert (= (and b!6156620 (not c!1108490)) b!6156612))

(assert (= (and b!6156612 c!1108491) b!6156614))

(assert (= (and b!6156612 (not c!1108491)) b!6156615))

(assert (= (and b!6156614 (not res!2549844)) b!6156618))

(assert (= (and b!6156615 c!1108488) b!6156619))

(assert (= (and b!6156615 (not c!1108488)) b!6156610))

(assert (= (and b!6156619 (not res!2549845)) b!6156616))

(assert (= (or b!6156616 b!6156610) bm!512432))

(assert (= (or b!6156613 b!6156619) bm!512433))

(declare-fun m!6995420 () Bool)

(assert (=> b!6156614 m!6995420))

(declare-fun m!6995422 () Bool)

(assert (=> bm!512432 m!6995422))

(declare-fun m!6995424 () Bool)

(assert (=> b!6156618 m!6995424))

(assert (=> bm!512433 m!6994456))

(assert (=> b!6155602 d!1929141))

(declare-fun call!512446 () List!64596)

(declare-fun c!1108501 () Bool)

(declare-fun call!512445 () (InoxSet Context!10966))

(declare-fun bm!512440 () Bool)

(declare-fun c!1108503 () Bool)

(declare-fun c!1108502 () Bool)

(assert (=> bm!512440 (= call!512445 (derivationStepZipperDown!1347 (ite c!1108502 (regTwo!32711 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (ite c!1108503 (regTwo!32710 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (ite c!1108501 (regOne!32710 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (reg!16428 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292)))))))))) (ite (or c!1108502 c!1108503) (ite (or c!1108347 c!1108348) lt!2335134 (Context!10967 call!512334)) (Context!10967 call!512446)) (h!70922 s!2326)))))

(declare-fun b!6156644 () Bool)

(declare-fun e!3751251 () (InoxSet Context!10966))

(declare-fun call!512450 () (InoxSet Context!10966))

(assert (=> b!6156644 (= e!3751251 ((_ map or) call!512450 call!512445))))

(declare-fun b!6156645 () Bool)

(declare-fun e!3751250 () (InoxSet Context!10966))

(assert (=> b!6156645 (= e!3751250 e!3751251)))

(assert (=> b!6156645 (= c!1108502 ((_ is Union!16099) (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))))))

(declare-fun b!6156646 () Bool)

(declare-fun e!3751252 () (InoxSet Context!10966))

(assert (=> b!6156646 (= e!3751252 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156647 () Bool)

(declare-fun e!3751247 () (InoxSet Context!10966))

(declare-fun e!3751249 () (InoxSet Context!10966))

(assert (=> b!6156647 (= e!3751247 e!3751249)))

(assert (=> b!6156647 (= c!1108501 ((_ is Concat!24944) (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))))))

(declare-fun b!6156648 () Bool)

(assert (=> b!6156648 (= e!3751250 (store ((as const (Array Context!10966 Bool)) false) (ite (or c!1108347 c!1108348) lt!2335134 (Context!10967 call!512334)) true))))

(declare-fun b!6156649 () Bool)

(declare-fun call!512448 () (InoxSet Context!10966))

(assert (=> b!6156649 (= e!3751247 ((_ map or) call!512450 call!512448))))

(declare-fun call!512447 () List!64596)

(declare-fun bm!512442 () Bool)

(assert (=> bm!512442 (= call!512447 ($colon$colon!1976 (exprs!5983 (ite (or c!1108347 c!1108348) lt!2335134 (Context!10967 call!512334))) (ite (or c!1108503 c!1108501) (regTwo!32710 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292)))))))))))

(declare-fun b!6156650 () Bool)

(declare-fun c!1108504 () Bool)

(assert (=> b!6156650 (= c!1108504 ((_ is Star!16099) (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))))))

(assert (=> b!6156650 (= e!3751249 e!3751252)))

(declare-fun bm!512441 () Bool)

(assert (=> bm!512441 (= call!512448 call!512445)))

(declare-fun d!1929153 () Bool)

(declare-fun c!1108505 () Bool)

(assert (=> d!1929153 (= c!1108505 (and ((_ is ElementMatch!16099) (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (= (c!1108140 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (h!70922 s!2326))))))

(assert (=> d!1929153 (= (derivationStepZipperDown!1347 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292)))))) (ite (or c!1108347 c!1108348) lt!2335134 (Context!10967 call!512334)) (h!70922 s!2326)) e!3751250)))

(declare-fun b!6156651 () Bool)

(declare-fun call!512449 () (InoxSet Context!10966))

(assert (=> b!6156651 (= e!3751252 call!512449)))

(declare-fun bm!512443 () Bool)

(assert (=> bm!512443 (= call!512446 call!512447)))

(declare-fun bm!512444 () Bool)

(assert (=> bm!512444 (= call!512450 (derivationStepZipperDown!1347 (ite c!1108502 (regOne!32711 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))) (regOne!32710 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292)))))))) (ite c!1108502 (ite (or c!1108347 c!1108348) lt!2335134 (Context!10967 call!512334)) (Context!10967 call!512447)) (h!70922 s!2326)))))

(declare-fun bm!512445 () Bool)

(assert (=> bm!512445 (= call!512449 call!512448)))

(declare-fun b!6156652 () Bool)

(assert (=> b!6156652 (= e!3751249 call!512449)))

(declare-fun e!3751248 () Bool)

(declare-fun b!6156653 () Bool)

(assert (=> b!6156653 (= e!3751248 (nullable!6092 (regOne!32710 (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292)))))))))))

(declare-fun b!6156654 () Bool)

(assert (=> b!6156654 (= c!1108503 e!3751248)))

(declare-fun res!2549852 () Bool)

(assert (=> b!6156654 (=> (not res!2549852) (not e!3751248))))

(assert (=> b!6156654 (= res!2549852 ((_ is Concat!24944) (ite c!1108347 (regTwo!32711 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108348 (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (ite c!1108346 (regOne!32710 (regOne!32711 (regOne!32710 r!7292))) (reg!16428 (regOne!32711 (regOne!32710 r!7292))))))))))

(assert (=> b!6156654 (= e!3751251 e!3751247)))

(assert (= (and d!1929153 c!1108505) b!6156648))

(assert (= (and d!1929153 (not c!1108505)) b!6156645))

(assert (= (and b!6156645 c!1108502) b!6156644))

(assert (= (and b!6156645 (not c!1108502)) b!6156654))

(assert (= (and b!6156654 res!2549852) b!6156653))

(assert (= (and b!6156654 c!1108503) b!6156649))

(assert (= (and b!6156654 (not c!1108503)) b!6156647))

(assert (= (and b!6156647 c!1108501) b!6156652))

(assert (= (and b!6156647 (not c!1108501)) b!6156650))

(assert (= (and b!6156650 c!1108504) b!6156651))

(assert (= (and b!6156650 (not c!1108504)) b!6156646))

(assert (= (or b!6156652 b!6156651) bm!512443))

(assert (= (or b!6156652 b!6156651) bm!512445))

(assert (= (or b!6156649 bm!512443) bm!512442))

(assert (= (or b!6156649 bm!512445) bm!512441))

(assert (= (or b!6156644 bm!512441) bm!512440))

(assert (= (or b!6156644 b!6156649) bm!512444))

(declare-fun m!6995426 () Bool)

(assert (=> bm!512444 m!6995426))

(declare-fun m!6995428 () Bool)

(assert (=> b!6156653 m!6995428))

(declare-fun m!6995430 () Bool)

(assert (=> bm!512442 m!6995430))

(declare-fun m!6995432 () Bool)

(assert (=> b!6156648 m!6995432))

(declare-fun m!6995446 () Bool)

(assert (=> bm!512440 m!6995446))

(assert (=> bm!512328 d!1929153))

(declare-fun bs!1525945 () Bool)

(declare-fun d!1929155 () Bool)

(assert (= bs!1525945 (and d!1929155 d!1928765)))

(declare-fun lambda!335890 () Int)

(assert (=> bs!1525945 (= lambda!335890 lambda!335825)))

(declare-fun bs!1525946 () Bool)

(assert (= bs!1525946 (and d!1929155 d!1928715)))

(assert (=> bs!1525946 (= lambda!335890 lambda!335816)))

(declare-fun bs!1525947 () Bool)

(assert (= bs!1525947 (and d!1929155 d!1928751)))

(assert (=> bs!1525947 (= lambda!335890 lambda!335823)))

(declare-fun bs!1525948 () Bool)

(assert (= bs!1525948 (and d!1929155 d!1928747)))

(assert (=> bs!1525948 (= lambda!335890 lambda!335820)))

(declare-fun bs!1525949 () Bool)

(assert (= bs!1525949 (and d!1929155 d!1928719)))

(assert (=> bs!1525949 (= lambda!335890 lambda!335817)))

(declare-fun bs!1525951 () Bool)

(assert (= bs!1525951 (and d!1929155 d!1928859)))

(assert (=> bs!1525951 (= lambda!335890 lambda!335848)))

(declare-fun bs!1525952 () Bool)

(assert (= bs!1525952 (and d!1929155 d!1929137)))

(assert (=> bs!1525952 (= lambda!335890 lambda!335886)))

(declare-fun bs!1525953 () Bool)

(assert (= bs!1525953 (and d!1929155 d!1928767)))

(assert (=> bs!1525953 (= lambda!335890 lambda!335830)))

(assert (=> d!1929155 (= (inv!83494 setElem!41700) (forall!15220 (exprs!5983 setElem!41700) lambda!335890))))

(declare-fun bs!1525954 () Bool)

(assert (= bs!1525954 d!1929155))

(declare-fun m!6995454 () Bool)

(assert (=> bs!1525954 m!6995454))

(assert (=> setNonEmpty!41700 d!1929155))

(declare-fun d!1929161 () Bool)

(assert (=> d!1929161 (= (isEmpty!36438 s!2326) ((_ is Nil!64474) s!2326))))

(assert (=> bm!512269 d!1929161))

(assert (=> bm!512264 d!1929161))

(declare-fun d!1929163 () Bool)

(assert (=> d!1929163 (= ($colon$colon!1976 (exprs!5983 lt!2335134) (ite (or c!1108348 c!1108346) (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (regOne!32711 (regOne!32710 r!7292)))) (Cons!64472 (ite (or c!1108348 c!1108346) (regTwo!32710 (regOne!32711 (regOne!32710 r!7292))) (regOne!32711 (regOne!32710 r!7292))) (exprs!5983 lt!2335134)))))

(assert (=> bm!512330 d!1929163))

(declare-fun b!6156666 () Bool)

(declare-fun e!3751259 () Bool)

(declare-fun call!512458 () Bool)

(assert (=> b!6156666 (= e!3751259 call!512458)))

(declare-fun b!6156667 () Bool)

(declare-fun e!3751263 () Bool)

(assert (=> b!6156667 (= e!3751263 call!512458)))

(declare-fun bm!512452 () Bool)

(declare-fun c!1108511 () Bool)

(assert (=> bm!512452 (= call!512458 (nullable!6092 (ite c!1108511 (regTwo!32711 (regTwo!32711 (regOne!32710 r!7292))) (regTwo!32710 (regTwo!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156668 () Bool)

(declare-fun e!3751260 () Bool)

(declare-fun e!3751264 () Bool)

(assert (=> b!6156668 (= e!3751260 e!3751264)))

(declare-fun res!2549854 () Bool)

(assert (=> b!6156668 (=> (not res!2549854) (not e!3751264))))

(assert (=> b!6156668 (= res!2549854 (and (not ((_ is EmptyLang!16099) (regTwo!32711 (regOne!32710 r!7292)))) (not ((_ is ElementMatch!16099) (regTwo!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156669 () Bool)

(declare-fun e!3751261 () Bool)

(assert (=> b!6156669 (= e!3751264 e!3751261)))

(declare-fun res!2549858 () Bool)

(assert (=> b!6156669 (=> res!2549858 e!3751261)))

(assert (=> b!6156669 (= res!2549858 ((_ is Star!16099) (regTwo!32711 (regOne!32710 r!7292))))))

(declare-fun b!6156670 () Bool)

(declare-fun e!3751262 () Bool)

(assert (=> b!6156670 (= e!3751262 e!3751259)))

(declare-fun res!2549856 () Bool)

(declare-fun call!512457 () Bool)

(assert (=> b!6156670 (= res!2549856 call!512457)))

(assert (=> b!6156670 (=> res!2549856 e!3751259)))

(declare-fun b!6156671 () Bool)

(assert (=> b!6156671 (= e!3751262 e!3751263)))

(declare-fun res!2549855 () Bool)

(assert (=> b!6156671 (= res!2549855 call!512457)))

(assert (=> b!6156671 (=> (not res!2549855) (not e!3751263))))

(declare-fun d!1929165 () Bool)

(declare-fun res!2549857 () Bool)

(assert (=> d!1929165 (=> res!2549857 e!3751260)))

(assert (=> d!1929165 (= res!2549857 ((_ is EmptyExpr!16099) (regTwo!32711 (regOne!32710 r!7292))))))

(assert (=> d!1929165 (= (nullableFct!2056 (regTwo!32711 (regOne!32710 r!7292))) e!3751260)))

(declare-fun bm!512453 () Bool)

(assert (=> bm!512453 (= call!512457 (nullable!6092 (ite c!1108511 (regOne!32711 (regTwo!32711 (regOne!32710 r!7292))) (regOne!32710 (regTwo!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156672 () Bool)

(assert (=> b!6156672 (= e!3751261 e!3751262)))

(assert (=> b!6156672 (= c!1108511 ((_ is Union!16099) (regTwo!32711 (regOne!32710 r!7292))))))

(assert (= (and d!1929165 (not res!2549857)) b!6156668))

(assert (= (and b!6156668 res!2549854) b!6156669))

(assert (= (and b!6156669 (not res!2549858)) b!6156672))

(assert (= (and b!6156672 c!1108511) b!6156670))

(assert (= (and b!6156672 (not c!1108511)) b!6156671))

(assert (= (and b!6156670 (not res!2549856)) b!6156666))

(assert (= (and b!6156671 res!2549855) b!6156667))

(assert (= (or b!6156666 b!6156667) bm!512452))

(assert (= (or b!6156670 b!6156671) bm!512453))

(declare-fun m!6995456 () Bool)

(assert (=> bm!512452 m!6995456))

(declare-fun m!6995458 () Bool)

(assert (=> bm!512453 m!6995458))

(assert (=> d!1928729 d!1929165))

(declare-fun b!6156673 () Bool)

(declare-fun e!3751265 () Bool)

(declare-fun call!512460 () Bool)

(assert (=> b!6156673 (= e!3751265 call!512460)))

(declare-fun b!6156674 () Bool)

(declare-fun e!3751269 () Bool)

(assert (=> b!6156674 (= e!3751269 call!512460)))

(declare-fun bm!512454 () Bool)

(declare-fun c!1108512 () Bool)

(assert (=> bm!512454 (= call!512460 (nullable!6092 (ite c!1108512 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun b!6156675 () Bool)

(declare-fun e!3751266 () Bool)

(declare-fun e!3751270 () Bool)

(assert (=> b!6156675 (= e!3751266 e!3751270)))

(declare-fun res!2549859 () Bool)

(assert (=> b!6156675 (=> (not res!2549859) (not e!3751270))))

(assert (=> b!6156675 (= res!2549859 (and (not ((_ is EmptyLang!16099) (h!70920 (exprs!5983 (h!70921 zl!343))))) (not ((_ is ElementMatch!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun b!6156676 () Bool)

(declare-fun e!3751267 () Bool)

(assert (=> b!6156676 (= e!3751270 e!3751267)))

(declare-fun res!2549863 () Bool)

(assert (=> b!6156676 (=> res!2549863 e!3751267)))

(assert (=> b!6156676 (= res!2549863 ((_ is Star!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156677 () Bool)

(declare-fun e!3751268 () Bool)

(assert (=> b!6156677 (= e!3751268 e!3751265)))

(declare-fun res!2549861 () Bool)

(declare-fun call!512459 () Bool)

(assert (=> b!6156677 (= res!2549861 call!512459)))

(assert (=> b!6156677 (=> res!2549861 e!3751265)))

(declare-fun b!6156678 () Bool)

(assert (=> b!6156678 (= e!3751268 e!3751269)))

(declare-fun res!2549860 () Bool)

(assert (=> b!6156678 (= res!2549860 call!512459)))

(assert (=> b!6156678 (=> (not res!2549860) (not e!3751269))))

(declare-fun d!1929167 () Bool)

(declare-fun res!2549862 () Bool)

(assert (=> d!1929167 (=> res!2549862 e!3751266)))

(assert (=> d!1929167 (= res!2549862 ((_ is EmptyExpr!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> d!1929167 (= (nullableFct!2056 (h!70920 (exprs!5983 (h!70921 zl!343)))) e!3751266)))

(declare-fun bm!512455 () Bool)

(assert (=> bm!512455 (= call!512459 (nullable!6092 (ite c!1108512 (regOne!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun b!6156679 () Bool)

(assert (=> b!6156679 (= e!3751267 e!3751268)))

(assert (=> b!6156679 (= c!1108512 ((_ is Union!16099) (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (= (and d!1929167 (not res!2549862)) b!6156675))

(assert (= (and b!6156675 res!2549859) b!6156676))

(assert (= (and b!6156676 (not res!2549863)) b!6156679))

(assert (= (and b!6156679 c!1108512) b!6156677))

(assert (= (and b!6156679 (not c!1108512)) b!6156678))

(assert (= (and b!6156677 (not res!2549861)) b!6156673))

(assert (= (and b!6156678 res!2549860) b!6156674))

(assert (= (or b!6156673 b!6156674) bm!512454))

(assert (= (or b!6156677 b!6156678) bm!512455))

(declare-fun m!6995464 () Bool)

(assert (=> bm!512454 m!6995464))

(declare-fun m!6995468 () Bool)

(assert (=> bm!512455 m!6995468))

(assert (=> d!1928805 d!1929167))

(declare-fun d!1929169 () Bool)

(assert (=> d!1929169 true))

(assert (=> d!1929169 true))

(declare-fun res!2549866 () Bool)

(assert (=> d!1929169 (= (choose!45769 lambda!335787) res!2549866)))

(assert (=> d!1928837 d!1929169))

(declare-fun b!6156680 () Bool)

(declare-fun e!3751272 () (InoxSet Context!10966))

(declare-fun e!3751271 () (InoxSet Context!10966))

(assert (=> b!6156680 (= e!3751272 e!3751271)))

(declare-fun c!1108513 () Bool)

(assert (=> b!6156680 (= c!1108513 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132))))))))

(declare-fun d!1929173 () Bool)

(declare-fun c!1108514 () Bool)

(declare-fun e!3751273 () Bool)

(assert (=> d!1929173 (= c!1108514 e!3751273)))

(declare-fun res!2549867 () Bool)

(assert (=> d!1929173 (=> (not res!2549867) (not e!3751273))))

(assert (=> d!1929173 (= res!2549867 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132))))))))

(assert (=> d!1929173 (= (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 lt!2335132))) (h!70922 s!2326)) e!3751272)))

(declare-fun b!6156681 () Bool)

(assert (=> b!6156681 (= e!3751271 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156682 () Bool)

(assert (=> b!6156682 (= e!3751273 (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132)))))))))

(declare-fun b!6156683 () Bool)

(declare-fun call!512461 () (InoxSet Context!10966))

(assert (=> b!6156683 (= e!3751271 call!512461)))

(declare-fun bm!512456 () Bool)

(assert (=> bm!512456 (= call!512461 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132)))))) (h!70922 s!2326)))))

(declare-fun b!6156684 () Bool)

(assert (=> b!6156684 (= e!3751272 ((_ map or) call!512461 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335132)))))) (h!70922 s!2326))))))

(assert (= (and d!1929173 res!2549867) b!6156682))

(assert (= (and d!1929173 c!1108514) b!6156684))

(assert (= (and d!1929173 (not c!1108514)) b!6156680))

(assert (= (and b!6156680 c!1108513) b!6156683))

(assert (= (and b!6156680 (not c!1108513)) b!6156681))

(assert (= (or b!6156684 b!6156683) bm!512456))

(declare-fun m!6995474 () Bool)

(assert (=> b!6156682 m!6995474))

(declare-fun m!6995476 () Bool)

(assert (=> bm!512456 m!6995476))

(declare-fun m!6995478 () Bool)

(assert (=> b!6156684 m!6995478))

(assert (=> b!6155782 d!1929173))

(declare-fun bs!1525955 () Bool)

(declare-fun d!1929175 () Bool)

(assert (= bs!1525955 (and d!1929175 d!1928891)))

(declare-fun lambda!335891 () Int)

(assert (=> bs!1525955 (= lambda!335891 lambda!335854)))

(declare-fun bs!1525956 () Bool)

(assert (= bs!1525956 (and d!1929175 d!1928935)))

(assert (=> bs!1525956 (= lambda!335891 lambda!335860)))

(declare-fun bs!1525957 () Bool)

(assert (= bs!1525957 (and d!1929175 d!1928957)))

(assert (=> bs!1525957 (= lambda!335891 lambda!335867)))

(assert (=> d!1929175 (= (nullableZipper!1879 lt!2335133) (exists!2443 lt!2335133 lambda!335891))))

(declare-fun bs!1525958 () Bool)

(assert (= bs!1525958 d!1929175))

(declare-fun m!6995480 () Bool)

(assert (=> bs!1525958 m!6995480))

(assert (=> b!6155495 d!1929175))

(assert (=> bs!1525797 d!1928731))

(declare-fun bs!1525959 () Bool)

(declare-fun d!1929177 () Bool)

(assert (= bs!1525959 (and d!1929177 d!1928765)))

(declare-fun lambda!335894 () Int)

(assert (=> bs!1525959 (= lambda!335894 lambda!335825)))

(declare-fun bs!1525960 () Bool)

(assert (= bs!1525960 (and d!1929177 d!1929155)))

(assert (=> bs!1525960 (= lambda!335894 lambda!335890)))

(declare-fun bs!1525961 () Bool)

(assert (= bs!1525961 (and d!1929177 d!1928715)))

(assert (=> bs!1525961 (= lambda!335894 lambda!335816)))

(declare-fun bs!1525962 () Bool)

(assert (= bs!1525962 (and d!1929177 d!1928751)))

(assert (=> bs!1525962 (= lambda!335894 lambda!335823)))

(declare-fun bs!1525963 () Bool)

(assert (= bs!1525963 (and d!1929177 d!1928747)))

(assert (=> bs!1525963 (= lambda!335894 lambda!335820)))

(declare-fun bs!1525964 () Bool)

(assert (= bs!1525964 (and d!1929177 d!1928719)))

(assert (=> bs!1525964 (= lambda!335894 lambda!335817)))

(declare-fun bs!1525965 () Bool)

(assert (= bs!1525965 (and d!1929177 d!1928859)))

(assert (=> bs!1525965 (= lambda!335894 lambda!335848)))

(declare-fun bs!1525966 () Bool)

(assert (= bs!1525966 (and d!1929177 d!1929137)))

(assert (=> bs!1525966 (= lambda!335894 lambda!335886)))

(declare-fun bs!1525967 () Bool)

(assert (= bs!1525967 (and d!1929177 d!1928767)))

(assert (=> bs!1525967 (= lambda!335894 lambda!335830)))

(declare-fun b!6156685 () Bool)

(declare-fun e!3751274 () Regex!16099)

(declare-fun e!3751279 () Regex!16099)

(assert (=> b!6156685 (= e!3751274 e!3751279)))

(declare-fun c!1108520 () Bool)

(assert (=> b!6156685 (= c!1108520 ((_ is Cons!64472) (t!378088 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6156686 () Bool)

(assert (=> b!6156686 (= e!3751279 (Union!16099 (h!70920 (t!378088 (unfocusZipperList!1520 zl!343))) (generalisedUnion!1943 (t!378088 (t!378088 (unfocusZipperList!1520 zl!343))))))))

(declare-fun b!6156687 () Bool)

(declare-fun e!3751277 () Bool)

(assert (=> b!6156687 (= e!3751277 (isEmpty!36436 (t!378088 (t!378088 (unfocusZipperList!1520 zl!343)))))))

(declare-fun b!6156688 () Bool)

(declare-fun e!3751275 () Bool)

(declare-fun e!3751278 () Bool)

(assert (=> b!6156688 (= e!3751275 e!3751278)))

(declare-fun c!1108517 () Bool)

(assert (=> b!6156688 (= c!1108517 (isEmpty!36436 (t!378088 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6156689 () Bool)

(declare-fun e!3751276 () Bool)

(assert (=> b!6156689 (= e!3751278 e!3751276)))

(declare-fun c!1108518 () Bool)

(assert (=> b!6156689 (= c!1108518 (isEmpty!36436 (tail!11805 (t!378088 (unfocusZipperList!1520 zl!343)))))))

(declare-fun b!6156690 () Bool)

(declare-fun lt!2335257 () Regex!16099)

(assert (=> b!6156690 (= e!3751276 (= lt!2335257 (head!12720 (t!378088 (unfocusZipperList!1520 zl!343)))))))

(declare-fun b!6156691 () Bool)

(assert (=> b!6156691 (= e!3751279 EmptyLang!16099)))

(declare-fun b!6156693 () Bool)

(assert (=> b!6156693 (= e!3751278 (isEmptyLang!1526 lt!2335257))))

(declare-fun b!6156694 () Bool)

(assert (=> b!6156694 (= e!3751274 (h!70920 (t!378088 (unfocusZipperList!1520 zl!343))))))

(declare-fun b!6156692 () Bool)

(assert (=> b!6156692 (= e!3751276 (isUnion!956 lt!2335257))))

(assert (=> d!1929177 e!3751275))

(declare-fun res!2549868 () Bool)

(assert (=> d!1929177 (=> (not res!2549868) (not e!3751275))))

(assert (=> d!1929177 (= res!2549868 (validRegex!7835 lt!2335257))))

(assert (=> d!1929177 (= lt!2335257 e!3751274)))

(declare-fun c!1108519 () Bool)

(assert (=> d!1929177 (= c!1108519 e!3751277)))

(declare-fun res!2549869 () Bool)

(assert (=> d!1929177 (=> (not res!2549869) (not e!3751277))))

(assert (=> d!1929177 (= res!2549869 ((_ is Cons!64472) (t!378088 (unfocusZipperList!1520 zl!343))))))

(assert (=> d!1929177 (forall!15220 (t!378088 (unfocusZipperList!1520 zl!343)) lambda!335894)))

(assert (=> d!1929177 (= (generalisedUnion!1943 (t!378088 (unfocusZipperList!1520 zl!343))) lt!2335257)))

(assert (= (and d!1929177 res!2549869) b!6156687))

(assert (= (and d!1929177 c!1108519) b!6156694))

(assert (= (and d!1929177 (not c!1108519)) b!6156685))

(assert (= (and b!6156685 c!1108520) b!6156686))

(assert (= (and b!6156685 (not c!1108520)) b!6156691))

(assert (= (and d!1929177 res!2549868) b!6156688))

(assert (= (and b!6156688 c!1108517) b!6156693))

(assert (= (and b!6156688 (not c!1108517)) b!6156689))

(assert (= (and b!6156689 c!1108518) b!6156690))

(assert (= (and b!6156689 (not c!1108518)) b!6156692))

(declare-fun m!6995484 () Bool)

(assert (=> b!6156686 m!6995484))

(declare-fun m!6995486 () Bool)

(assert (=> b!6156692 m!6995486))

(declare-fun m!6995488 () Bool)

(assert (=> b!6156687 m!6995488))

(declare-fun m!6995490 () Bool)

(assert (=> b!6156689 m!6995490))

(assert (=> b!6156689 m!6995490))

(declare-fun m!6995492 () Bool)

(assert (=> b!6156689 m!6995492))

(assert (=> b!6156688 m!6994568))

(declare-fun m!6995494 () Bool)

(assert (=> b!6156693 m!6995494))

(declare-fun m!6995496 () Bool)

(assert (=> d!1929177 m!6995496))

(declare-fun m!6995498 () Bool)

(assert (=> d!1929177 m!6995498))

(declare-fun m!6995500 () Bool)

(assert (=> b!6156690 m!6995500))

(assert (=> b!6155836 d!1929177))

(declare-fun d!1929181 () Bool)

(assert (=> d!1929181 true))

(assert (=> d!1929181 true))

(declare-fun res!2549871 () Bool)

(assert (=> d!1929181 (= (choose!45769 lambda!335788) res!2549871)))

(assert (=> d!1928839 d!1929181))

(declare-fun d!1929183 () Bool)

(assert (=> d!1929183 true))

(declare-fun setRes!41705 () Bool)

(assert (=> d!1929183 setRes!41705))

(declare-fun condSetEmpty!41705 () Bool)

(declare-fun res!2549872 () (InoxSet Context!10966))

(assert (=> d!1929183 (= condSetEmpty!41705 (= res!2549872 ((as const (Array Context!10966 Bool)) false)))))

(assert (=> d!1929183 (= (choose!45761 lt!2335114 lambda!335789) res!2549872)))

(declare-fun setIsEmpty!41705 () Bool)

(assert (=> setIsEmpty!41705 setRes!41705))

(declare-fun tp!1719212 () Bool)

(declare-fun setElem!41705 () Context!10966)

(declare-fun setNonEmpty!41705 () Bool)

(declare-fun e!3751286 () Bool)

(assert (=> setNonEmpty!41705 (= setRes!41705 (and tp!1719212 (inv!83494 setElem!41705) e!3751286))))

(declare-fun setRest!41705 () (InoxSet Context!10966))

(assert (=> setNonEmpty!41705 (= res!2549872 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) setElem!41705 true) setRest!41705))))

(declare-fun b!6156706 () Bool)

(declare-fun tp!1719211 () Bool)

(assert (=> b!6156706 (= e!3751286 tp!1719211)))

(assert (= (and d!1929183 condSetEmpty!41705) setIsEmpty!41705))

(assert (= (and d!1929183 (not condSetEmpty!41705)) setNonEmpty!41705))

(assert (= setNonEmpty!41705 b!6156706))

(declare-fun m!6995502 () Bool)

(assert (=> setNonEmpty!41705 m!6995502))

(assert (=> d!1928735 d!1929183))

(declare-fun call!512468 () (InoxSet Context!10966))

(declare-fun c!1108528 () Bool)

(declare-fun call!512469 () List!64596)

(declare-fun bm!512463 () Bool)

(declare-fun c!1108526 () Bool)

(declare-fun c!1108527 () Bool)

(assert (=> bm!512463 (= call!512468 (derivationStepZipperDown!1347 (ite c!1108527 (regTwo!32711 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (ite c!1108528 (regTwo!32710 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (ite c!1108526 (regOne!32710 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (reg!16428 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))))))) (ite (or c!1108527 c!1108528) (ite c!1108347 lt!2335134 (Context!10967 call!512335)) (Context!10967 call!512469)) (h!70922 s!2326)))))

(declare-fun b!6156707 () Bool)

(declare-fun e!3751291 () (InoxSet Context!10966))

(declare-fun call!512473 () (InoxSet Context!10966))

(assert (=> b!6156707 (= e!3751291 ((_ map or) call!512473 call!512468))))

(declare-fun b!6156708 () Bool)

(declare-fun e!3751290 () (InoxSet Context!10966))

(assert (=> b!6156708 (= e!3751290 e!3751291)))

(assert (=> b!6156708 (= c!1108527 ((_ is Union!16099) (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156709 () Bool)

(declare-fun e!3751292 () (InoxSet Context!10966))

(assert (=> b!6156709 (= e!3751292 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156710 () Bool)

(declare-fun e!3751287 () (InoxSet Context!10966))

(declare-fun e!3751289 () (InoxSet Context!10966))

(assert (=> b!6156710 (= e!3751287 e!3751289)))

(assert (=> b!6156710 (= c!1108526 ((_ is Concat!24944) (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))))))

(declare-fun b!6156711 () Bool)

(assert (=> b!6156711 (= e!3751290 (store ((as const (Array Context!10966 Bool)) false) (ite c!1108347 lt!2335134 (Context!10967 call!512335)) true))))

(declare-fun b!6156712 () Bool)

(declare-fun call!512471 () (InoxSet Context!10966))

(assert (=> b!6156712 (= e!3751287 ((_ map or) call!512473 call!512471))))

(declare-fun bm!512465 () Bool)

(declare-fun call!512470 () List!64596)

(assert (=> bm!512465 (= call!512470 ($colon$colon!1976 (exprs!5983 (ite c!1108347 lt!2335134 (Context!10967 call!512335))) (ite (or c!1108528 c!1108526) (regTwo!32710 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))))))))

(declare-fun b!6156713 () Bool)

(declare-fun c!1108529 () Bool)

(assert (=> b!6156713 (= c!1108529 ((_ is Star!16099) (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))))))

(assert (=> b!6156713 (= e!3751289 e!3751292)))

(declare-fun bm!512464 () Bool)

(assert (=> bm!512464 (= call!512471 call!512468)))

(declare-fun d!1929185 () Bool)

(declare-fun c!1108530 () Bool)

(assert (=> d!1929185 (= c!1108530 (and ((_ is ElementMatch!16099) (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (= (c!1108140 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (h!70922 s!2326))))))

(assert (=> d!1929185 (= (derivationStepZipperDown!1347 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))) (ite c!1108347 lt!2335134 (Context!10967 call!512335)) (h!70922 s!2326)) e!3751290)))

(declare-fun b!6156714 () Bool)

(declare-fun call!512472 () (InoxSet Context!10966))

(assert (=> b!6156714 (= e!3751292 call!512472)))

(declare-fun bm!512466 () Bool)

(assert (=> bm!512466 (= call!512469 call!512470)))

(declare-fun bm!512467 () Bool)

(assert (=> bm!512467 (= call!512473 (derivationStepZipperDown!1347 (ite c!1108527 (regOne!32711 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))) (regOne!32710 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))))) (ite c!1108527 (ite c!1108347 lt!2335134 (Context!10967 call!512335)) (Context!10967 call!512470)) (h!70922 s!2326)))))

(declare-fun bm!512468 () Bool)

(assert (=> bm!512468 (= call!512472 call!512471)))

(declare-fun b!6156715 () Bool)

(assert (=> b!6156715 (= e!3751289 call!512472)))

(declare-fun b!6156716 () Bool)

(declare-fun e!3751288 () Bool)

(assert (=> b!6156716 (= e!3751288 (nullable!6092 (regOne!32710 (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292)))))))))

(declare-fun b!6156717 () Bool)

(assert (=> b!6156717 (= c!1108528 e!3751288)))

(declare-fun res!2549873 () Bool)

(assert (=> b!6156717 (=> (not res!2549873) (not e!3751288))))

(assert (=> b!6156717 (= res!2549873 ((_ is Concat!24944) (ite c!1108347 (regOne!32711 (regOne!32711 (regOne!32710 r!7292))) (regOne!32710 (regOne!32711 (regOne!32710 r!7292))))))))

(assert (=> b!6156717 (= e!3751291 e!3751287)))

(assert (= (and d!1929185 c!1108530) b!6156711))

(assert (= (and d!1929185 (not c!1108530)) b!6156708))

(assert (= (and b!6156708 c!1108527) b!6156707))

(assert (= (and b!6156708 (not c!1108527)) b!6156717))

(assert (= (and b!6156717 res!2549873) b!6156716))

(assert (= (and b!6156717 c!1108528) b!6156712))

(assert (= (and b!6156717 (not c!1108528)) b!6156710))

(assert (= (and b!6156710 c!1108526) b!6156715))

(assert (= (and b!6156710 (not c!1108526)) b!6156713))

(assert (= (and b!6156713 c!1108529) b!6156714))

(assert (= (and b!6156713 (not c!1108529)) b!6156709))

(assert (= (or b!6156715 b!6156714) bm!512466))

(assert (= (or b!6156715 b!6156714) bm!512468))

(assert (= (or b!6156712 bm!512466) bm!512465))

(assert (= (or b!6156712 bm!512468) bm!512464))

(assert (= (or b!6156707 bm!512464) bm!512463))

(assert (= (or b!6156707 b!6156712) bm!512467))

(declare-fun m!6995514 () Bool)

(assert (=> bm!512467 m!6995514))

(declare-fun m!6995516 () Bool)

(assert (=> b!6156716 m!6995516))

(declare-fun m!6995518 () Bool)

(assert (=> bm!512465 m!6995518))

(declare-fun m!6995520 () Bool)

(assert (=> b!6156711 m!6995520))

(declare-fun m!6995522 () Bool)

(assert (=> bm!512463 m!6995522))

(assert (=> bm!512332 d!1929185))

(declare-fun d!1929191 () Bool)

(assert (=> d!1929191 (= (isUnion!956 lt!2335187) ((_ is Union!16099) lt!2335187))))

(assert (=> b!6155842 d!1929191))

(assert (=> d!1928775 d!1928777))

(assert (=> d!1928775 d!1928757))

(declare-fun d!1929193 () Bool)

(declare-fun e!3751293 () Bool)

(assert (=> d!1929193 (= (matchZipper!2111 ((_ map or) lt!2335127 lt!2335111) (t!378090 s!2326)) e!3751293)))

(declare-fun res!2549875 () Bool)

(assert (=> d!1929193 (=> res!2549875 e!3751293)))

(assert (=> d!1929193 (= res!2549875 (matchZipper!2111 lt!2335127 (t!378090 s!2326)))))

(assert (=> d!1929193 true))

(declare-fun _$48!1715 () Unit!157573)

(assert (=> d!1929193 (= (choose!45760 lt!2335127 lt!2335111 (t!378090 s!2326)) _$48!1715)))

(declare-fun b!6156718 () Bool)

(assert (=> b!6156718 (= e!3751293 (matchZipper!2111 lt!2335111 (t!378090 s!2326)))))

(assert (= (and d!1929193 (not res!2549875)) b!6156718))

(assert (=> d!1929193 m!6994246))

(assert (=> d!1929193 m!6994212))

(assert (=> b!6156718 m!6994184))

(assert (=> d!1928775 d!1929193))

(assert (=> b!6155857 d!1928679))

(declare-fun b!6156723 () Bool)

(declare-fun e!3751303 () Bool)

(assert (=> b!6156723 (= e!3751303 (nullable!6092 (regOne!32710 r!7292)))))

(declare-fun b!6156724 () Bool)

(declare-fun e!3751300 () Bool)

(declare-fun lt!2335258 () Bool)

(declare-fun call!512474 () Bool)

(assert (=> b!6156724 (= e!3751300 (= lt!2335258 call!512474))))

(declare-fun d!1929195 () Bool)

(assert (=> d!1929195 e!3751300))

(declare-fun c!1108532 () Bool)

(assert (=> d!1929195 (= c!1108532 ((_ is EmptyExpr!16099) (regOne!32710 r!7292)))))

(assert (=> d!1929195 (= lt!2335258 e!3751303)))

(declare-fun c!1108531 () Bool)

(assert (=> d!1929195 (= c!1108531 (isEmpty!36438 (_1!36381 (get!22250 lt!2335220))))))

(assert (=> d!1929195 (validRegex!7835 (regOne!32710 r!7292))))

(assert (=> d!1929195 (= (matchR!8282 (regOne!32710 r!7292) (_1!36381 (get!22250 lt!2335220))) lt!2335258)))

(declare-fun b!6156725 () Bool)

(declare-fun e!3751302 () Bool)

(declare-fun e!3751299 () Bool)

(assert (=> b!6156725 (= e!3751302 e!3751299)))

(declare-fun res!2549884 () Bool)

(assert (=> b!6156725 (=> (not res!2549884) (not e!3751299))))

(assert (=> b!6156725 (= res!2549884 (not lt!2335258))))

(declare-fun b!6156726 () Bool)

(declare-fun e!3751298 () Bool)

(assert (=> b!6156726 (= e!3751300 e!3751298)))

(declare-fun c!1108533 () Bool)

(assert (=> b!6156726 (= c!1108533 ((_ is EmptyLang!16099) (regOne!32710 r!7292)))))

(declare-fun b!6156727 () Bool)

(declare-fun res!2549885 () Bool)

(declare-fun e!3751304 () Bool)

(assert (=> b!6156727 (=> res!2549885 e!3751304)))

(assert (=> b!6156727 (= res!2549885 (not (isEmpty!36438 (tail!11803 (_1!36381 (get!22250 lt!2335220))))))))

(declare-fun bm!512469 () Bool)

(assert (=> bm!512469 (= call!512474 (isEmpty!36438 (_1!36381 (get!22250 lt!2335220))))))

(declare-fun b!6156728 () Bool)

(assert (=> b!6156728 (= e!3751303 (matchR!8282 (derivativeStep!4818 (regOne!32710 r!7292) (head!12718 (_1!36381 (get!22250 lt!2335220)))) (tail!11803 (_1!36381 (get!22250 lt!2335220)))))))

(declare-fun b!6156729 () Bool)

(assert (=> b!6156729 (= e!3751298 (not lt!2335258))))

(declare-fun b!6156730 () Bool)

(declare-fun res!2549880 () Bool)

(declare-fun e!3751301 () Bool)

(assert (=> b!6156730 (=> (not res!2549880) (not e!3751301))))

(assert (=> b!6156730 (= res!2549880 (not call!512474))))

(declare-fun b!6156731 () Bool)

(declare-fun res!2549882 () Bool)

(assert (=> b!6156731 (=> res!2549882 e!3751302)))

(assert (=> b!6156731 (= res!2549882 e!3751301)))

(declare-fun res!2549883 () Bool)

(assert (=> b!6156731 (=> (not res!2549883) (not e!3751301))))

(assert (=> b!6156731 (= res!2549883 lt!2335258)))

(declare-fun b!6156732 () Bool)

(assert (=> b!6156732 (= e!3751299 e!3751304)))

(declare-fun res!2549886 () Bool)

(assert (=> b!6156732 (=> res!2549886 e!3751304)))

(assert (=> b!6156732 (= res!2549886 call!512474)))

(declare-fun b!6156733 () Bool)

(assert (=> b!6156733 (= e!3751301 (= (head!12718 (_1!36381 (get!22250 lt!2335220))) (c!1108140 (regOne!32710 r!7292))))))

(declare-fun b!6156734 () Bool)

(declare-fun res!2549881 () Bool)

(assert (=> b!6156734 (=> res!2549881 e!3751302)))

(assert (=> b!6156734 (= res!2549881 (not ((_ is ElementMatch!16099) (regOne!32710 r!7292))))))

(assert (=> b!6156734 (= e!3751298 e!3751302)))

(declare-fun b!6156735 () Bool)

(declare-fun res!2549887 () Bool)

(assert (=> b!6156735 (=> (not res!2549887) (not e!3751301))))

(assert (=> b!6156735 (= res!2549887 (isEmpty!36438 (tail!11803 (_1!36381 (get!22250 lt!2335220)))))))

(declare-fun b!6156736 () Bool)

(assert (=> b!6156736 (= e!3751304 (not (= (head!12718 (_1!36381 (get!22250 lt!2335220))) (c!1108140 (regOne!32710 r!7292)))))))

(assert (= (and d!1929195 c!1108531) b!6156723))

(assert (= (and d!1929195 (not c!1108531)) b!6156728))

(assert (= (and d!1929195 c!1108532) b!6156724))

(assert (= (and d!1929195 (not c!1108532)) b!6156726))

(assert (= (and b!6156726 c!1108533) b!6156729))

(assert (= (and b!6156726 (not c!1108533)) b!6156734))

(assert (= (and b!6156734 (not res!2549881)) b!6156731))

(assert (= (and b!6156731 res!2549883) b!6156730))

(assert (= (and b!6156730 res!2549880) b!6156735))

(assert (= (and b!6156735 res!2549887) b!6156733))

(assert (= (and b!6156731 (not res!2549882)) b!6156725))

(assert (= (and b!6156725 res!2549884) b!6156732))

(assert (= (and b!6156732 (not res!2549886)) b!6156727))

(assert (= (and b!6156727 (not res!2549885)) b!6156736))

(assert (= (or b!6156724 b!6156730 b!6156732) bm!512469))

(declare-fun m!6995524 () Bool)

(assert (=> d!1929195 m!6995524))

(assert (=> d!1929195 m!6994784))

(declare-fun m!6995526 () Bool)

(assert (=> b!6156728 m!6995526))

(assert (=> b!6156728 m!6995526))

(declare-fun m!6995528 () Bool)

(assert (=> b!6156728 m!6995528))

(declare-fun m!6995530 () Bool)

(assert (=> b!6156728 m!6995530))

(assert (=> b!6156728 m!6995528))

(assert (=> b!6156728 m!6995530))

(declare-fun m!6995532 () Bool)

(assert (=> b!6156728 m!6995532))

(assert (=> b!6156735 m!6995530))

(assert (=> b!6156735 m!6995530))

(declare-fun m!6995534 () Bool)

(assert (=> b!6156735 m!6995534))

(assert (=> b!6156723 m!6995332))

(assert (=> bm!512469 m!6995524))

(assert (=> b!6156727 m!6995530))

(assert (=> b!6156727 m!6995530))

(assert (=> b!6156727 m!6995534))

(assert (=> b!6156736 m!6995526))

(assert (=> b!6156733 m!6995526))

(assert (=> b!6156091 d!1929195))

(assert (=> b!6156091 d!1928973))

(declare-fun d!1929199 () Bool)

(assert (=> d!1929199 (= (isEmpty!36436 (unfocusZipperList!1520 zl!343)) ((_ is Nil!64472) (unfocusZipperList!1520 zl!343)))))

(assert (=> b!6155838 d!1929199))

(assert (=> d!1928811 d!1928779))

(declare-fun d!1929201 () Bool)

(assert (=> d!1929201 (= (flatMap!1604 z!1189 lambda!335789) (dynLambda!25417 lambda!335789 (h!70921 zl!343)))))

(assert (=> d!1929201 true))

(declare-fun _$13!3092 () Unit!157573)

(assert (=> d!1929201 (= (choose!45762 z!1189 (h!70921 zl!343) lambda!335789) _$13!3092)))

(declare-fun b_lambda!234351 () Bool)

(assert (=> (not b_lambda!234351) (not d!1929201)))

(declare-fun bs!1525969 () Bool)

(assert (= bs!1525969 d!1929201))

(assert (=> bs!1525969 m!6994250))

(assert (=> bs!1525969 m!6994722))

(assert (=> d!1928811 d!1929201))

(assert (=> d!1928711 d!1929161))

(assert (=> d!1928711 d!1928721))

(declare-fun b!6156739 () Bool)

(declare-fun e!3751308 () (InoxSet Context!10966))

(declare-fun e!3751307 () (InoxSet Context!10966))

(assert (=> b!6156739 (= e!3751308 e!3751307)))

(declare-fun c!1108534 () Bool)

(assert (=> b!6156739 (= c!1108534 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134))))))))

(declare-fun d!1929203 () Bool)

(declare-fun c!1108535 () Bool)

(declare-fun e!3751309 () Bool)

(assert (=> d!1929203 (= c!1108535 e!3751309)))

(declare-fun res!2549890 () Bool)

(assert (=> d!1929203 (=> (not res!2549890) (not e!3751309))))

(assert (=> d!1929203 (= res!2549890 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134))))))))

(assert (=> d!1929203 (= (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 lt!2335134))) (h!70922 s!2326)) e!3751308)))

(declare-fun b!6156740 () Bool)

(assert (=> b!6156740 (= e!3751307 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156741 () Bool)

(assert (=> b!6156741 (= e!3751309 (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134)))))))))

(declare-fun b!6156742 () Bool)

(declare-fun call!512475 () (InoxSet Context!10966))

(assert (=> b!6156742 (= e!3751307 call!512475)))

(declare-fun bm!512470 () Bool)

(assert (=> bm!512470 (= call!512475 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134)))))) (h!70922 s!2326)))))

(declare-fun b!6156743 () Bool)

(assert (=> b!6156743 (= e!3751308 ((_ map or) call!512475 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335134)))))) (h!70922 s!2326))))))

(assert (= (and d!1929203 res!2549890) b!6156741))

(assert (= (and d!1929203 c!1108535) b!6156743))

(assert (= (and d!1929203 (not c!1108535)) b!6156739))

(assert (= (and b!6156739 c!1108534) b!6156742))

(assert (= (and b!6156739 (not c!1108534)) b!6156740))

(assert (= (or b!6156743 b!6156742) bm!512470))

(declare-fun m!6995540 () Bool)

(assert (=> b!6156741 m!6995540))

(declare-fun m!6995542 () Bool)

(assert (=> bm!512470 m!6995542))

(declare-fun m!6995544 () Bool)

(assert (=> b!6156743 m!6995544))

(assert (=> b!6155985 d!1929203))

(declare-fun b!6156748 () Bool)

(declare-fun e!3751315 () (InoxSet Context!10966))

(declare-fun e!3751314 () (InoxSet Context!10966))

(assert (=> b!6156748 (= e!3751315 e!3751314)))

(declare-fun c!1108536 () Bool)

(assert (=> b!6156748 (= c!1108536 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))))

(declare-fun d!1929205 () Bool)

(declare-fun c!1108537 () Bool)

(declare-fun e!3751316 () Bool)

(assert (=> d!1929205 (= c!1108537 e!3751316)))

(declare-fun res!2549893 () Bool)

(assert (=> d!1929205 (=> (not res!2549893) (not e!3751316))))

(assert (=> d!1929205 (= res!2549893 ((_ is Cons!64472) (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))))))

(assert (=> d!1929205 (= (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))) (h!70922 s!2326)) e!3751315)))

(declare-fun b!6156749 () Bool)

(assert (=> b!6156749 (= e!3751314 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156750 () Bool)

(assert (=> b!6156750 (= e!3751316 (nullable!6092 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))))))

(declare-fun b!6156751 () Bool)

(declare-fun call!512476 () (InoxSet Context!10966))

(assert (=> b!6156751 (= e!3751314 call!512476)))

(declare-fun bm!512471 () Bool)

(assert (=> bm!512471 (= call!512476 (derivationStepZipperDown!1347 (h!70920 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343)))))))))) (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))) (h!70922 s!2326)))))

(declare-fun b!6156752 () Bool)

(assert (=> b!6156752 (= e!3751315 ((_ map or) call!512476 (derivationStepZipperUp!1273 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 (Context!10967 (Cons!64472 (h!70920 (exprs!5983 (h!70921 zl!343))) (t!378088 (exprs!5983 (h!70921 zl!343))))))))))) (h!70922 s!2326))))))

(assert (= (and d!1929205 res!2549893) b!6156750))

(assert (= (and d!1929205 c!1108537) b!6156752))

(assert (= (and d!1929205 (not c!1108537)) b!6156748))

(assert (= (and b!6156748 c!1108536) b!6156751))

(assert (= (and b!6156748 (not c!1108536)) b!6156749))

(assert (= (or b!6156752 b!6156751) bm!512471))

(declare-fun m!6995546 () Bool)

(assert (=> b!6156750 m!6995546))

(declare-fun m!6995548 () Bool)

(assert (=> bm!512471 m!6995548))

(declare-fun m!6995550 () Bool)

(assert (=> b!6156752 m!6995550))

(assert (=> b!6155980 d!1929205))

(declare-fun d!1929207 () Bool)

(assert (=> d!1929207 (= (nullable!6092 (h!70920 (exprs!5983 lt!2335132))) (nullableFct!2056 (h!70920 (exprs!5983 lt!2335132))))))

(declare-fun bs!1525970 () Bool)

(assert (= bs!1525970 d!1929207))

(declare-fun m!6995552 () Bool)

(assert (=> bs!1525970 m!6995552))

(assert (=> b!6155780 d!1929207))

(declare-fun d!1929209 () Bool)

(declare-fun res!2549904 () Bool)

(declare-fun e!3751328 () Bool)

(assert (=> d!1929209 (=> res!2549904 e!3751328)))

(assert (=> d!1929209 (= res!2549904 ((_ is Nil!64473) lt!2335202))))

(assert (=> d!1929209 (= (noDuplicate!1945 lt!2335202) e!3751328)))

(declare-fun b!6156764 () Bool)

(declare-fun e!3751329 () Bool)

(assert (=> b!6156764 (= e!3751328 e!3751329)))

(declare-fun res!2549905 () Bool)

(assert (=> b!6156764 (=> (not res!2549905) (not e!3751329))))

(declare-fun contains!20058 (List!64597 Context!10966) Bool)

(assert (=> b!6156764 (= res!2549905 (not (contains!20058 (t!378089 lt!2335202) (h!70921 lt!2335202))))))

(declare-fun b!6156765 () Bool)

(assert (=> b!6156765 (= e!3751329 (noDuplicate!1945 (t!378089 lt!2335202)))))

(assert (= (and d!1929209 (not res!2549904)) b!6156764))

(assert (= (and b!6156764 res!2549905) b!6156765))

(declare-fun m!6995566 () Bool)

(assert (=> b!6156764 m!6995566))

(declare-fun m!6995568 () Bool)

(assert (=> b!6156765 m!6995568))

(assert (=> d!1928773 d!1929209))

(declare-fun d!1929217 () Bool)

(declare-fun e!3751349 () Bool)

(assert (=> d!1929217 e!3751349))

(declare-fun res!2549920 () Bool)

(assert (=> d!1929217 (=> (not res!2549920) (not e!3751349))))

(declare-fun res!2549921 () List!64597)

(assert (=> d!1929217 (= res!2549920 (noDuplicate!1945 res!2549921))))

(declare-fun e!3751348 () Bool)

(assert (=> d!1929217 e!3751348))

(assert (=> d!1929217 (= (choose!45764 z!1189) res!2549921)))

(declare-fun b!6156787 () Bool)

(declare-fun e!3751350 () Bool)

(declare-fun tp!1719223 () Bool)

(assert (=> b!6156787 (= e!3751350 tp!1719223)))

(declare-fun b!6156786 () Bool)

(declare-fun tp!1719224 () Bool)

(assert (=> b!6156786 (= e!3751348 (and (inv!83494 (h!70921 res!2549921)) e!3751350 tp!1719224))))

(declare-fun b!6156788 () Bool)

(assert (=> b!6156788 (= e!3751349 (= (content!12018 res!2549921) z!1189))))

(assert (= b!6156786 b!6156787))

(assert (= (and d!1929217 ((_ is Cons!64473) res!2549921)) b!6156786))

(assert (= (and d!1929217 res!2549920) b!6156788))

(declare-fun m!6995570 () Bool)

(assert (=> d!1929217 m!6995570))

(declare-fun m!6995572 () Bool)

(assert (=> b!6156786 m!6995572))

(declare-fun m!6995574 () Bool)

(assert (=> b!6156788 m!6995574))

(assert (=> d!1928773 d!1929217))

(declare-fun d!1929219 () Bool)

(assert (=> d!1929219 (= (nullable!6092 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))) (nullableFct!2056 (regOne!32710 (regTwo!32711 (regOne!32710 r!7292)))))))

(declare-fun bs!1525972 () Bool)

(assert (= bs!1525972 d!1929219))

(declare-fun m!6995576 () Bool)

(assert (=> bs!1525972 m!6995576))

(assert (=> b!6156000 d!1929219))

(assert (=> d!1928743 d!1928739))

(declare-fun d!1929221 () Bool)

(assert (=> d!1929221 (= (flatMap!1604 lt!2335122 lambda!335789) (dynLambda!25417 lambda!335789 lt!2335123))))

(assert (=> d!1929221 true))

(declare-fun _$13!3093 () Unit!157573)

(assert (=> d!1929221 (= (choose!45762 lt!2335122 lt!2335123 lambda!335789) _$13!3093)))

(declare-fun b_lambda!234355 () Bool)

(assert (=> (not b_lambda!234355) (not d!1929221)))

(declare-fun bs!1525973 () Bool)

(assert (= bs!1525973 d!1929221))

(assert (=> bs!1525973 m!6994228))

(assert (=> bs!1525973 m!6994534))

(assert (=> d!1928743 d!1929221))

(assert (=> b!6155903 d!1928675))

(declare-fun d!1929223 () Bool)

(assert (=> d!1929223 (= (Exists!3169 (ite c!1108224 lambda!335803 lambda!335806)) (choose!45769 (ite c!1108224 lambda!335803 lambda!335806)))))

(declare-fun bs!1525974 () Bool)

(assert (= bs!1525974 d!1929223))

(declare-fun m!6995578 () Bool)

(assert (=> bs!1525974 m!6995578))

(assert (=> bm!512263 d!1929223))

(declare-fun d!1929225 () Bool)

(assert (=> d!1929225 (= (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))) (nullableFct!2056 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun bs!1525975 () Bool)

(assert (= bs!1525975 d!1929225))

(declare-fun m!6995580 () Bool)

(assert (=> bs!1525975 m!6995580))

(assert (=> b!6155969 d!1929225))

(declare-fun b!6156789 () Bool)

(declare-fun e!3751356 () Bool)

(assert (=> b!6156789 (= e!3751356 (nullable!6092 (regTwo!32710 r!7292)))))

(declare-fun b!6156790 () Bool)

(declare-fun e!3751353 () Bool)

(declare-fun lt!2335259 () Bool)

(declare-fun call!512481 () Bool)

(assert (=> b!6156790 (= e!3751353 (= lt!2335259 call!512481))))

(declare-fun d!1929227 () Bool)

(assert (=> d!1929227 e!3751353))

(declare-fun c!1108541 () Bool)

(assert (=> d!1929227 (= c!1108541 ((_ is EmptyExpr!16099) (regTwo!32710 r!7292)))))

(assert (=> d!1929227 (= lt!2335259 e!3751356)))

(declare-fun c!1108540 () Bool)

(assert (=> d!1929227 (= c!1108540 (isEmpty!36438 s!2326))))

(assert (=> d!1929227 (validRegex!7835 (regTwo!32710 r!7292))))

(assert (=> d!1929227 (= (matchR!8282 (regTwo!32710 r!7292) s!2326) lt!2335259)))

(declare-fun b!6156791 () Bool)

(declare-fun e!3751355 () Bool)

(declare-fun e!3751352 () Bool)

(assert (=> b!6156791 (= e!3751355 e!3751352)))

(declare-fun res!2549926 () Bool)

(assert (=> b!6156791 (=> (not res!2549926) (not e!3751352))))

(assert (=> b!6156791 (= res!2549926 (not lt!2335259))))

(declare-fun b!6156792 () Bool)

(declare-fun e!3751351 () Bool)

(assert (=> b!6156792 (= e!3751353 e!3751351)))

(declare-fun c!1108542 () Bool)

(assert (=> b!6156792 (= c!1108542 ((_ is EmptyLang!16099) (regTwo!32710 r!7292)))))

(declare-fun b!6156793 () Bool)

(declare-fun res!2549927 () Bool)

(declare-fun e!3751357 () Bool)

(assert (=> b!6156793 (=> res!2549927 e!3751357)))

(assert (=> b!6156793 (= res!2549927 (not (isEmpty!36438 (tail!11803 s!2326))))))

(declare-fun bm!512476 () Bool)

(assert (=> bm!512476 (= call!512481 (isEmpty!36438 s!2326))))

(declare-fun b!6156794 () Bool)

(assert (=> b!6156794 (= e!3751356 (matchR!8282 (derivativeStep!4818 (regTwo!32710 r!7292) (head!12718 s!2326)) (tail!11803 s!2326)))))

(declare-fun b!6156795 () Bool)

(assert (=> b!6156795 (= e!3751351 (not lt!2335259))))

(declare-fun b!6156796 () Bool)

(declare-fun res!2549922 () Bool)

(declare-fun e!3751354 () Bool)

(assert (=> b!6156796 (=> (not res!2549922) (not e!3751354))))

(assert (=> b!6156796 (= res!2549922 (not call!512481))))

(declare-fun b!6156797 () Bool)

(declare-fun res!2549924 () Bool)

(assert (=> b!6156797 (=> res!2549924 e!3751355)))

(assert (=> b!6156797 (= res!2549924 e!3751354)))

(declare-fun res!2549925 () Bool)

(assert (=> b!6156797 (=> (not res!2549925) (not e!3751354))))

(assert (=> b!6156797 (= res!2549925 lt!2335259)))

(declare-fun b!6156798 () Bool)

(assert (=> b!6156798 (= e!3751352 e!3751357)))

(declare-fun res!2549928 () Bool)

(assert (=> b!6156798 (=> res!2549928 e!3751357)))

(assert (=> b!6156798 (= res!2549928 call!512481)))

(declare-fun b!6156799 () Bool)

(assert (=> b!6156799 (= e!3751354 (= (head!12718 s!2326) (c!1108140 (regTwo!32710 r!7292))))))

(declare-fun b!6156800 () Bool)

(declare-fun res!2549923 () Bool)

(assert (=> b!6156800 (=> res!2549923 e!3751355)))

(assert (=> b!6156800 (= res!2549923 (not ((_ is ElementMatch!16099) (regTwo!32710 r!7292))))))

(assert (=> b!6156800 (= e!3751351 e!3751355)))

(declare-fun b!6156801 () Bool)

(declare-fun res!2549929 () Bool)

(assert (=> b!6156801 (=> (not res!2549929) (not e!3751354))))

(assert (=> b!6156801 (= res!2549929 (isEmpty!36438 (tail!11803 s!2326)))))

(declare-fun b!6156802 () Bool)

(assert (=> b!6156802 (= e!3751357 (not (= (head!12718 s!2326) (c!1108140 (regTwo!32710 r!7292)))))))

(assert (= (and d!1929227 c!1108540) b!6156789))

(assert (= (and d!1929227 (not c!1108540)) b!6156794))

(assert (= (and d!1929227 c!1108541) b!6156790))

(assert (= (and d!1929227 (not c!1108541)) b!6156792))

(assert (= (and b!6156792 c!1108542) b!6156795))

(assert (= (and b!6156792 (not c!1108542)) b!6156800))

(assert (= (and b!6156800 (not res!2549923)) b!6156797))

(assert (= (and b!6156797 res!2549925) b!6156796))

(assert (= (and b!6156796 res!2549922) b!6156801))

(assert (= (and b!6156801 res!2549929) b!6156799))

(assert (= (and b!6156797 (not res!2549924)) b!6156791))

(assert (= (and b!6156791 res!2549926) b!6156798))

(assert (= (and b!6156798 (not res!2549928)) b!6156793))

(assert (= (and b!6156793 (not res!2549927)) b!6156802))

(assert (= (or b!6156790 b!6156796 b!6156798) bm!512476))

(assert (=> d!1929227 m!6994456))

(assert (=> d!1929227 m!6994970))

(assert (=> b!6156794 m!6994458))

(assert (=> b!6156794 m!6994458))

(declare-fun m!6995582 () Bool)

(assert (=> b!6156794 m!6995582))

(assert (=> b!6156794 m!6994462))

(assert (=> b!6156794 m!6995582))

(assert (=> b!6156794 m!6994462))

(declare-fun m!6995584 () Bool)

(assert (=> b!6156794 m!6995584))

(assert (=> b!6156801 m!6994462))

(assert (=> b!6156801 m!6994462))

(assert (=> b!6156801 m!6994466))

(assert (=> b!6156789 m!6994982))

(assert (=> bm!512476 m!6994456))

(assert (=> b!6156793 m!6994462))

(assert (=> b!6156793 m!6994462))

(assert (=> b!6156793 m!6994466))

(assert (=> b!6156802 m!6994458))

(assert (=> b!6156799 m!6994458))

(assert (=> b!6156095 d!1929227))

(declare-fun bs!1525976 () Bool)

(declare-fun d!1929229 () Bool)

(assert (= bs!1525976 (and d!1929229 d!1928891)))

(declare-fun lambda!335896 () Int)

(assert (=> bs!1525976 (= lambda!335896 lambda!335854)))

(declare-fun bs!1525977 () Bool)

(assert (= bs!1525977 (and d!1929229 d!1928935)))

(assert (=> bs!1525977 (= lambda!335896 lambda!335860)))

(declare-fun bs!1525978 () Bool)

(assert (= bs!1525978 (and d!1929229 d!1928957)))

(assert (=> bs!1525978 (= lambda!335896 lambda!335867)))

(declare-fun bs!1525979 () Bool)

(assert (= bs!1525979 (and d!1929229 d!1929175)))

(assert (=> bs!1525979 (= lambda!335896 lambda!335891)))

(assert (=> d!1929229 (= (nullableZipper!1879 ((_ map or) lt!2335127 lt!2335111)) (exists!2443 ((_ map or) lt!2335127 lt!2335111) lambda!335896))))

(declare-fun bs!1525980 () Bool)

(assert (= bs!1525980 d!1929229))

(declare-fun m!6995586 () Bool)

(assert (=> bs!1525980 m!6995586))

(assert (=> b!6155904 d!1929229))

(declare-fun b!6156803 () Bool)

(declare-fun e!3751363 () Bool)

(assert (=> b!6156803 (= e!3751363 (nullable!6092 (derivativeStep!4818 r!7292 (head!12718 s!2326))))))

(declare-fun b!6156804 () Bool)

(declare-fun e!3751360 () Bool)

(declare-fun lt!2335260 () Bool)

(declare-fun call!512482 () Bool)

(assert (=> b!6156804 (= e!3751360 (= lt!2335260 call!512482))))

(declare-fun d!1929231 () Bool)

(assert (=> d!1929231 e!3751360))

(declare-fun c!1108544 () Bool)

(assert (=> d!1929231 (= c!1108544 ((_ is EmptyExpr!16099) (derivativeStep!4818 r!7292 (head!12718 s!2326))))))

(assert (=> d!1929231 (= lt!2335260 e!3751363)))

(declare-fun c!1108543 () Bool)

(assert (=> d!1929231 (= c!1108543 (isEmpty!36438 (tail!11803 s!2326)))))

(assert (=> d!1929231 (validRegex!7835 (derivativeStep!4818 r!7292 (head!12718 s!2326)))))

(assert (=> d!1929231 (= (matchR!8282 (derivativeStep!4818 r!7292 (head!12718 s!2326)) (tail!11803 s!2326)) lt!2335260)))

(declare-fun b!6156805 () Bool)

(declare-fun e!3751362 () Bool)

(declare-fun e!3751359 () Bool)

(assert (=> b!6156805 (= e!3751362 e!3751359)))

(declare-fun res!2549934 () Bool)

(assert (=> b!6156805 (=> (not res!2549934) (not e!3751359))))

(assert (=> b!6156805 (= res!2549934 (not lt!2335260))))

(declare-fun b!6156806 () Bool)

(declare-fun e!3751358 () Bool)

(assert (=> b!6156806 (= e!3751360 e!3751358)))

(declare-fun c!1108545 () Bool)

(assert (=> b!6156806 (= c!1108545 ((_ is EmptyLang!16099) (derivativeStep!4818 r!7292 (head!12718 s!2326))))))

(declare-fun b!6156807 () Bool)

(declare-fun res!2549935 () Bool)

(declare-fun e!3751364 () Bool)

(assert (=> b!6156807 (=> res!2549935 e!3751364)))

(assert (=> b!6156807 (= res!2549935 (not (isEmpty!36438 (tail!11803 (tail!11803 s!2326)))))))

(declare-fun bm!512477 () Bool)

(assert (=> bm!512477 (= call!512482 (isEmpty!36438 (tail!11803 s!2326)))))

(declare-fun b!6156808 () Bool)

(assert (=> b!6156808 (= e!3751363 (matchR!8282 (derivativeStep!4818 (derivativeStep!4818 r!7292 (head!12718 s!2326)) (head!12718 (tail!11803 s!2326))) (tail!11803 (tail!11803 s!2326))))))

(declare-fun b!6156809 () Bool)

(assert (=> b!6156809 (= e!3751358 (not lt!2335260))))

(declare-fun b!6156810 () Bool)

(declare-fun res!2549930 () Bool)

(declare-fun e!3751361 () Bool)

(assert (=> b!6156810 (=> (not res!2549930) (not e!3751361))))

(assert (=> b!6156810 (= res!2549930 (not call!512482))))

(declare-fun b!6156811 () Bool)

(declare-fun res!2549932 () Bool)

(assert (=> b!6156811 (=> res!2549932 e!3751362)))

(assert (=> b!6156811 (= res!2549932 e!3751361)))

(declare-fun res!2549933 () Bool)

(assert (=> b!6156811 (=> (not res!2549933) (not e!3751361))))

(assert (=> b!6156811 (= res!2549933 lt!2335260)))

(declare-fun b!6156812 () Bool)

(assert (=> b!6156812 (= e!3751359 e!3751364)))

(declare-fun res!2549936 () Bool)

(assert (=> b!6156812 (=> res!2549936 e!3751364)))

(assert (=> b!6156812 (= res!2549936 call!512482)))

(declare-fun b!6156813 () Bool)

(assert (=> b!6156813 (= e!3751361 (= (head!12718 (tail!11803 s!2326)) (c!1108140 (derivativeStep!4818 r!7292 (head!12718 s!2326)))))))

(declare-fun b!6156814 () Bool)

(declare-fun res!2549931 () Bool)

(assert (=> b!6156814 (=> res!2549931 e!3751362)))

(assert (=> b!6156814 (= res!2549931 (not ((_ is ElementMatch!16099) (derivativeStep!4818 r!7292 (head!12718 s!2326)))))))

(assert (=> b!6156814 (= e!3751358 e!3751362)))

(declare-fun b!6156815 () Bool)

(declare-fun res!2549937 () Bool)

(assert (=> b!6156815 (=> (not res!2549937) (not e!3751361))))

(assert (=> b!6156815 (= res!2549937 (isEmpty!36438 (tail!11803 (tail!11803 s!2326))))))

(declare-fun b!6156816 () Bool)

(assert (=> b!6156816 (= e!3751364 (not (= (head!12718 (tail!11803 s!2326)) (c!1108140 (derivativeStep!4818 r!7292 (head!12718 s!2326))))))))

(assert (= (and d!1929231 c!1108543) b!6156803))

(assert (= (and d!1929231 (not c!1108543)) b!6156808))

(assert (= (and d!1929231 c!1108544) b!6156804))

(assert (= (and d!1929231 (not c!1108544)) b!6156806))

(assert (= (and b!6156806 c!1108545) b!6156809))

(assert (= (and b!6156806 (not c!1108545)) b!6156814))

(assert (= (and b!6156814 (not res!2549931)) b!6156811))

(assert (= (and b!6156811 res!2549933) b!6156810))

(assert (= (and b!6156810 res!2549930) b!6156815))

(assert (= (and b!6156815 res!2549937) b!6156813))

(assert (= (and b!6156811 (not res!2549932)) b!6156805))

(assert (= (and b!6156805 res!2549934) b!6156812))

(assert (= (and b!6156812 (not res!2549936)) b!6156807))

(assert (= (and b!6156807 (not res!2549935)) b!6156816))

(assert (= (or b!6156804 b!6156810 b!6156812) bm!512477))

(assert (=> d!1929231 m!6994462))

(assert (=> d!1929231 m!6994466))

(assert (=> d!1929231 m!6994460))

(declare-fun m!6995590 () Bool)

(assert (=> d!1929231 m!6995590))

(assert (=> b!6156808 m!6994462))

(declare-fun m!6995592 () Bool)

(assert (=> b!6156808 m!6995592))

(assert (=> b!6156808 m!6994460))

(assert (=> b!6156808 m!6995592))

(declare-fun m!6995596 () Bool)

(assert (=> b!6156808 m!6995596))

(assert (=> b!6156808 m!6994462))

(declare-fun m!6995598 () Bool)

(assert (=> b!6156808 m!6995598))

(assert (=> b!6156808 m!6995596))

(assert (=> b!6156808 m!6995598))

(declare-fun m!6995600 () Bool)

(assert (=> b!6156808 m!6995600))

(assert (=> b!6156815 m!6994462))

(assert (=> b!6156815 m!6995598))

(assert (=> b!6156815 m!6995598))

(declare-fun m!6995602 () Bool)

(assert (=> b!6156815 m!6995602))

(assert (=> b!6156803 m!6994460))

(declare-fun m!6995604 () Bool)

(assert (=> b!6156803 m!6995604))

(assert (=> bm!512477 m!6994462))

(assert (=> bm!512477 m!6994466))

(assert (=> b!6156807 m!6994462))

(assert (=> b!6156807 m!6995598))

(assert (=> b!6156807 m!6995598))

(assert (=> b!6156807 m!6995602))

(assert (=> b!6156816 m!6994462))

(assert (=> b!6156816 m!6995592))

(assert (=> b!6156813 m!6994462))

(assert (=> b!6156813 m!6995592))

(assert (=> b!6155674 d!1929231))

(declare-fun b!6156891 () Bool)

(declare-fun e!3751406 () Regex!16099)

(declare-fun call!512512 () Regex!16099)

(assert (=> b!6156891 (= e!3751406 (Union!16099 (Concat!24944 call!512512 (regTwo!32710 r!7292)) EmptyLang!16099))))

(declare-fun b!6156892 () Bool)

(declare-fun e!3751408 () Regex!16099)

(declare-fun call!512514 () Regex!16099)

(declare-fun call!512515 () Regex!16099)

(assert (=> b!6156892 (= e!3751408 (Union!16099 call!512514 call!512515))))

(declare-fun b!6156893 () Bool)

(declare-fun e!3751407 () Regex!16099)

(declare-fun call!512513 () Regex!16099)

(assert (=> b!6156893 (= e!3751407 (Concat!24944 call!512513 r!7292))))

(declare-fun b!6156894 () Bool)

(declare-fun c!1108579 () Bool)

(assert (=> b!6156894 (= c!1108579 (nullable!6092 (regOne!32710 r!7292)))))

(assert (=> b!6156894 (= e!3751407 e!3751406)))

(declare-fun d!1929237 () Bool)

(declare-fun lt!2335264 () Regex!16099)

(assert (=> d!1929237 (validRegex!7835 lt!2335264)))

(declare-fun e!3751409 () Regex!16099)

(assert (=> d!1929237 (= lt!2335264 e!3751409)))

(declare-fun c!1108576 () Bool)

(assert (=> d!1929237 (= c!1108576 (or ((_ is EmptyExpr!16099) r!7292) ((_ is EmptyLang!16099) r!7292)))))

(assert (=> d!1929237 (validRegex!7835 r!7292)))

(assert (=> d!1929237 (= (derivativeStep!4818 r!7292 (head!12718 s!2326)) lt!2335264)))

(declare-fun b!6156895 () Bool)

(declare-fun e!3751410 () Regex!16099)

(assert (=> b!6156895 (= e!3751410 (ite (= (head!12718 s!2326) (c!1108140 r!7292)) EmptyExpr!16099 EmptyLang!16099))))

(declare-fun b!6156896 () Bool)

(declare-fun c!1108578 () Bool)

(assert (=> b!6156896 (= c!1108578 ((_ is Union!16099) r!7292))))

(assert (=> b!6156896 (= e!3751410 e!3751408)))

(declare-fun b!6156897 () Bool)

(assert (=> b!6156897 (= e!3751409 EmptyLang!16099)))

(declare-fun b!6156898 () Bool)

(assert (=> b!6156898 (= e!3751406 (Union!16099 (Concat!24944 call!512513 (regTwo!32710 r!7292)) call!512512))))

(declare-fun b!6156899 () Bool)

(assert (=> b!6156899 (= e!3751408 e!3751407)))

(declare-fun c!1108575 () Bool)

(assert (=> b!6156899 (= c!1108575 ((_ is Star!16099) r!7292))))

(declare-fun bm!512507 () Bool)

(assert (=> bm!512507 (= call!512515 (derivativeStep!4818 (ite c!1108578 (regTwo!32711 r!7292) (ite c!1108575 (reg!16428 r!7292) (regOne!32710 r!7292))) (head!12718 s!2326)))))

(declare-fun bm!512508 () Bool)

(assert (=> bm!512508 (= call!512514 (derivativeStep!4818 (ite c!1108578 (regOne!32711 r!7292) (ite c!1108579 (regTwo!32710 r!7292) (regOne!32710 r!7292))) (head!12718 s!2326)))))

(declare-fun bm!512509 () Bool)

(assert (=> bm!512509 (= call!512512 call!512514)))

(declare-fun bm!512510 () Bool)

(assert (=> bm!512510 (= call!512513 call!512515)))

(declare-fun b!6156900 () Bool)

(assert (=> b!6156900 (= e!3751409 e!3751410)))

(declare-fun c!1108577 () Bool)

(assert (=> b!6156900 (= c!1108577 ((_ is ElementMatch!16099) r!7292))))

(assert (= (and d!1929237 c!1108576) b!6156897))

(assert (= (and d!1929237 (not c!1108576)) b!6156900))

(assert (= (and b!6156900 c!1108577) b!6156895))

(assert (= (and b!6156900 (not c!1108577)) b!6156896))

(assert (= (and b!6156896 c!1108578) b!6156892))

(assert (= (and b!6156896 (not c!1108578)) b!6156899))

(assert (= (and b!6156899 c!1108575) b!6156893))

(assert (= (and b!6156899 (not c!1108575)) b!6156894))

(assert (= (and b!6156894 c!1108579) b!6156898))

(assert (= (and b!6156894 (not c!1108579)) b!6156891))

(assert (= (or b!6156898 b!6156891) bm!512509))

(assert (= (or b!6156893 b!6156898) bm!512510))

(assert (= (or b!6156892 bm!512510) bm!512507))

(assert (= (or b!6156892 bm!512509) bm!512508))

(assert (=> b!6156894 m!6995332))

(declare-fun m!6995652 () Bool)

(assert (=> d!1929237 m!6995652))

(assert (=> d!1929237 m!6994220))

(assert (=> bm!512507 m!6994458))

(declare-fun m!6995654 () Bool)

(assert (=> bm!512507 m!6995654))

(assert (=> bm!512508 m!6994458))

(declare-fun m!6995656 () Bool)

(assert (=> bm!512508 m!6995656))

(assert (=> b!6155674 d!1929237))

(assert (=> b!6155674 d!1928937))

(assert (=> b!6155674 d!1928967))

(assert (=> d!1928679 d!1928887))

(declare-fun d!1929255 () Bool)

(assert (=> d!1929255 (= (isConcat!1039 lt!2335199) ((_ is Concat!24944) lt!2335199))))

(assert (=> b!6155882 d!1929255))

(declare-fun bs!1525982 () Bool)

(declare-fun d!1929257 () Bool)

(assert (= bs!1525982 (and d!1929257 d!1929229)))

(declare-fun lambda!335897 () Int)

(assert (=> bs!1525982 (= lambda!335897 lambda!335896)))

(declare-fun bs!1525983 () Bool)

(assert (= bs!1525983 (and d!1929257 d!1929175)))

(assert (=> bs!1525983 (= lambda!335897 lambda!335891)))

(declare-fun bs!1525984 () Bool)

(assert (= bs!1525984 (and d!1929257 d!1928957)))

(assert (=> bs!1525984 (= lambda!335897 lambda!335867)))

(declare-fun bs!1525985 () Bool)

(assert (= bs!1525985 (and d!1929257 d!1928935)))

(assert (=> bs!1525985 (= lambda!335897 lambda!335860)))

(declare-fun bs!1525986 () Bool)

(assert (= bs!1525986 (and d!1929257 d!1928891)))

(assert (=> bs!1525986 (= lambda!335897 lambda!335854)))

(assert (=> d!1929257 (= (nullableZipper!1879 lt!2335136) (exists!2443 lt!2335136 lambda!335897))))

(declare-fun bs!1525987 () Bool)

(assert (= bs!1525987 d!1929257))

(declare-fun m!6995658 () Bool)

(assert (=> bs!1525987 m!6995658))

(assert (=> b!6155853 d!1929257))

(declare-fun bs!1525989 () Bool)

(declare-fun b!6156907 () Bool)

(assert (= bs!1525989 (and b!6156907 b!6155604)))

(declare-fun lambda!335898 () Int)

(assert (=> bs!1525989 (= (and (= (reg!16428 (regTwo!32711 r!7292)) (reg!16428 r!7292)) (= (regTwo!32711 r!7292) r!7292)) (= lambda!335898 lambda!335803))))

(declare-fun bs!1525990 () Bool)

(assert (= bs!1525990 (and b!6156907 d!1929063)))

(assert (=> bs!1525990 (not (= lambda!335898 lambda!335882))))

(declare-fun bs!1525991 () Bool)

(assert (= bs!1525991 (and b!6156907 b!6155598)))

(assert (=> bs!1525991 (not (= lambda!335898 lambda!335806))))

(declare-fun bs!1525992 () Bool)

(assert (= bs!1525992 (and b!6156907 b!6156616)))

(assert (=> bs!1525992 (= (and (= (reg!16428 (regTwo!32711 r!7292)) (reg!16428 (regOne!32711 r!7292))) (= (regTwo!32711 r!7292) (regOne!32711 r!7292))) (= lambda!335898 lambda!335887))))

(declare-fun bs!1525993 () Bool)

(assert (= bs!1525993 (and b!6156907 d!1929027)))

(assert (=> bs!1525993 (not (= lambda!335898 lambda!335879))))

(declare-fun bs!1525994 () Bool)

(assert (= bs!1525994 (and b!6156907 d!1928843)))

(assert (=> bs!1525994 (not (= lambda!335898 lambda!335847))))

(declare-fun bs!1525995 () Bool)

(assert (= bs!1525995 (and b!6156907 b!6155370)))

(assert (=> bs!1525995 (not (= lambda!335898 lambda!335787))))

(assert (=> bs!1525994 (not (= lambda!335898 lambda!335846))))

(declare-fun bs!1525996 () Bool)

(assert (= bs!1525996 (and b!6156907 d!1928841)))

(assert (=> bs!1525996 (not (= lambda!335898 lambda!335841))))

(assert (=> bs!1525993 (not (= lambda!335898 lambda!335878))))

(assert (=> bs!1525995 (not (= lambda!335898 lambda!335788))))

(declare-fun bs!1525997 () Bool)

(assert (= bs!1525997 (and b!6156907 b!6156610)))

(assert (=> bs!1525997 (not (= lambda!335898 lambda!335888))))

(assert (=> b!6156907 true))

(assert (=> b!6156907 true))

(declare-fun bs!1526002 () Bool)

(declare-fun b!6156901 () Bool)

(assert (= bs!1526002 (and b!6156901 b!6155604)))

(declare-fun lambda!335900 () Int)

(assert (=> bs!1526002 (not (= lambda!335900 lambda!335803))))

(declare-fun bs!1526005 () Bool)

(assert (= bs!1526005 (and b!6156901 b!6156907)))

(assert (=> bs!1526005 (not (= lambda!335900 lambda!335898))))

(declare-fun bs!1526007 () Bool)

(assert (= bs!1526007 (and b!6156901 d!1929063)))

(assert (=> bs!1526007 (not (= lambda!335900 lambda!335882))))

(declare-fun bs!1526009 () Bool)

(assert (= bs!1526009 (and b!6156901 b!6155598)))

(assert (=> bs!1526009 (= (and (= (regOne!32710 (regTwo!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regTwo!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335900 lambda!335806))))

(declare-fun bs!1526011 () Bool)

(assert (= bs!1526011 (and b!6156901 b!6156616)))

(assert (=> bs!1526011 (not (= lambda!335900 lambda!335887))))

(declare-fun bs!1526012 () Bool)

(assert (= bs!1526012 (and b!6156901 d!1929027)))

(assert (=> bs!1526012 (= (and (= (regOne!32710 (regTwo!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regTwo!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335900 lambda!335879))))

(declare-fun bs!1526013 () Bool)

(assert (= bs!1526013 (and b!6156901 d!1928843)))

(assert (=> bs!1526013 (= (and (= (regOne!32710 (regTwo!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regTwo!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335900 lambda!335847))))

(declare-fun bs!1526014 () Bool)

(assert (= bs!1526014 (and b!6156901 b!6155370)))

(assert (=> bs!1526014 (not (= lambda!335900 lambda!335787))))

(assert (=> bs!1526013 (not (= lambda!335900 lambda!335846))))

(declare-fun bs!1526015 () Bool)

(assert (= bs!1526015 (and b!6156901 d!1928841)))

(assert (=> bs!1526015 (not (= lambda!335900 lambda!335841))))

(assert (=> bs!1526012 (not (= lambda!335900 lambda!335878))))

(assert (=> bs!1526014 (= (and (= (regOne!32710 (regTwo!32711 r!7292)) (regOne!32710 r!7292)) (= (regTwo!32710 (regTwo!32711 r!7292)) (regTwo!32710 r!7292))) (= lambda!335900 lambda!335788))))

(declare-fun bs!1526018 () Bool)

(assert (= bs!1526018 (and b!6156901 b!6156610)))

(assert (=> bs!1526018 (= (and (= (regOne!32710 (regTwo!32711 r!7292)) (regOne!32710 (regOne!32711 r!7292))) (= (regTwo!32710 (regTwo!32711 r!7292)) (regTwo!32710 (regOne!32711 r!7292)))) (= lambda!335900 lambda!335888))))

(assert (=> b!6156901 true))

(assert (=> b!6156901 true))

(declare-fun e!3751416 () Bool)

(declare-fun call!512517 () Bool)

(assert (=> b!6156901 (= e!3751416 call!512517)))

(declare-fun b!6156902 () Bool)

(declare-fun e!3751414 () Bool)

(declare-fun e!3751413 () Bool)

(assert (=> b!6156902 (= e!3751414 e!3751413)))

(declare-fun res!2549956 () Bool)

(assert (=> b!6156902 (= res!2549956 (not ((_ is EmptyLang!16099) (regTwo!32711 r!7292))))))

(assert (=> b!6156902 (=> (not res!2549956) (not e!3751413))))

(declare-fun b!6156903 () Bool)

(declare-fun c!1108583 () Bool)

(assert (=> b!6156903 (= c!1108583 ((_ is Union!16099) (regTwo!32711 r!7292)))))

(declare-fun e!3751412 () Bool)

(declare-fun e!3751415 () Bool)

(assert (=> b!6156903 (= e!3751412 e!3751415)))

(declare-fun d!1929259 () Bool)

(declare-fun c!1108581 () Bool)

(assert (=> d!1929259 (= c!1108581 ((_ is EmptyExpr!16099) (regTwo!32711 r!7292)))))

(assert (=> d!1929259 (= (matchRSpec!3200 (regTwo!32711 r!7292) s!2326) e!3751414)))

(declare-fun b!6156904 () Bool)

(declare-fun call!512516 () Bool)

(assert (=> b!6156904 (= e!3751414 call!512516)))

(declare-fun b!6156905 () Bool)

(declare-fun e!3751417 () Bool)

(assert (=> b!6156905 (= e!3751415 e!3751417)))

(declare-fun res!2549954 () Bool)

(assert (=> b!6156905 (= res!2549954 (matchRSpec!3200 (regOne!32711 (regTwo!32711 r!7292)) s!2326))))

(assert (=> b!6156905 (=> res!2549954 e!3751417)))

(declare-fun bm!512511 () Bool)

(declare-fun c!1108580 () Bool)

(assert (=> bm!512511 (= call!512517 (Exists!3169 (ite c!1108580 lambda!335898 lambda!335900)))))

(declare-fun b!6156906 () Bool)

(assert (=> b!6156906 (= e!3751415 e!3751416)))

(assert (=> b!6156906 (= c!1108580 ((_ is Star!16099) (regTwo!32711 r!7292)))))

(declare-fun e!3751411 () Bool)

(assert (=> b!6156907 (= e!3751411 call!512517)))

(declare-fun b!6156908 () Bool)

(assert (=> b!6156908 (= e!3751412 (= s!2326 (Cons!64474 (c!1108140 (regTwo!32711 r!7292)) Nil!64474)))))

(declare-fun b!6156909 () Bool)

(assert (=> b!6156909 (= e!3751417 (matchRSpec!3200 (regTwo!32711 (regTwo!32711 r!7292)) s!2326))))

(declare-fun b!6156910 () Bool)

(declare-fun res!2549955 () Bool)

(assert (=> b!6156910 (=> res!2549955 e!3751411)))

(assert (=> b!6156910 (= res!2549955 call!512516)))

(assert (=> b!6156910 (= e!3751416 e!3751411)))

(declare-fun b!6156911 () Bool)

(declare-fun c!1108582 () Bool)

(assert (=> b!6156911 (= c!1108582 ((_ is ElementMatch!16099) (regTwo!32711 r!7292)))))

(assert (=> b!6156911 (= e!3751413 e!3751412)))

(declare-fun bm!512512 () Bool)

(assert (=> bm!512512 (= call!512516 (isEmpty!36438 s!2326))))

(assert (= (and d!1929259 c!1108581) b!6156904))

(assert (= (and d!1929259 (not c!1108581)) b!6156902))

(assert (= (and b!6156902 res!2549956) b!6156911))

(assert (= (and b!6156911 c!1108582) b!6156908))

(assert (= (and b!6156911 (not c!1108582)) b!6156903))

(assert (= (and b!6156903 c!1108583) b!6156905))

(assert (= (and b!6156903 (not c!1108583)) b!6156906))

(assert (= (and b!6156905 (not res!2549954)) b!6156909))

(assert (= (and b!6156906 c!1108580) b!6156910))

(assert (= (and b!6156906 (not c!1108580)) b!6156901))

(assert (= (and b!6156910 (not res!2549955)) b!6156907))

(assert (= (or b!6156907 b!6156901) bm!512511))

(assert (= (or b!6156904 b!6156910) bm!512512))

(declare-fun m!6995680 () Bool)

(assert (=> b!6156905 m!6995680))

(declare-fun m!6995682 () Bool)

(assert (=> bm!512511 m!6995682))

(declare-fun m!6995684 () Bool)

(assert (=> b!6156909 m!6995684))

(assert (=> bm!512512 m!6994456))

(assert (=> b!6155606 d!1929259))

(declare-fun bs!1526019 () Bool)

(declare-fun d!1929271 () Bool)

(assert (= bs!1526019 (and d!1929271 d!1929229)))

(declare-fun lambda!335902 () Int)

(assert (=> bs!1526019 (= lambda!335902 lambda!335896)))

(declare-fun bs!1526020 () Bool)

(assert (= bs!1526020 (and d!1929271 d!1929175)))

(assert (=> bs!1526020 (= lambda!335902 lambda!335891)))

(declare-fun bs!1526021 () Bool)

(assert (= bs!1526021 (and d!1929271 d!1928935)))

(assert (=> bs!1526021 (= lambda!335902 lambda!335860)))

(declare-fun bs!1526022 () Bool)

(assert (= bs!1526022 (and d!1929271 d!1928891)))

(assert (=> bs!1526022 (= lambda!335902 lambda!335854)))

(declare-fun bs!1526023 () Bool)

(assert (= bs!1526023 (and d!1929271 d!1929257)))

(assert (=> bs!1526023 (= lambda!335902 lambda!335897)))

(declare-fun bs!1526024 () Bool)

(assert (= bs!1526024 (and d!1929271 d!1928957)))

(assert (=> bs!1526024 (= lambda!335902 lambda!335867)))

(assert (=> d!1929271 (= (nullableZipper!1879 lt!2335135) (exists!2443 lt!2335135 lambda!335902))))

(declare-fun bs!1526025 () Bool)

(assert (= bs!1526025 d!1929271))

(declare-fun m!6995690 () Bool)

(assert (=> bs!1526025 m!6995690))

(assert (=> b!6155855 d!1929271))

(declare-fun c!1108594 () Bool)

(declare-fun c!1108593 () Bool)

(declare-fun call!512523 () (InoxSet Context!10966))

(declare-fun c!1108592 () Bool)

(declare-fun call!512524 () List!64596)

(declare-fun bm!512518 () Bool)

(assert (=> bm!512518 (= call!512523 (derivationStepZipperDown!1347 (ite c!1108593 (regTwo!32711 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (ite c!1108594 (regTwo!32710 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (ite c!1108592 (regOne!32710 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (reg!16428 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))))))) (ite (or c!1108593 c!1108594) (ite (or c!1108329 c!1108330) lt!2335134 (Context!10967 call!512318)) (Context!10967 call!512524)) (h!70922 s!2326)))))

(declare-fun b!6156942 () Bool)

(declare-fun e!3751440 () (InoxSet Context!10966))

(declare-fun call!512528 () (InoxSet Context!10966))

(assert (=> b!6156942 (= e!3751440 ((_ map or) call!512528 call!512523))))

(declare-fun b!6156943 () Bool)

(declare-fun e!3751439 () (InoxSet Context!10966))

(assert (=> b!6156943 (= e!3751439 e!3751440)))

(assert (=> b!6156943 (= c!1108593 ((_ is Union!16099) (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))))

(declare-fun b!6156944 () Bool)

(declare-fun e!3751441 () (InoxSet Context!10966))

(assert (=> b!6156944 (= e!3751441 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156945 () Bool)

(declare-fun e!3751436 () (InoxSet Context!10966))

(declare-fun e!3751438 () (InoxSet Context!10966))

(assert (=> b!6156945 (= e!3751436 e!3751438)))

(assert (=> b!6156945 (= c!1108592 ((_ is Concat!24944) (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))))

(declare-fun b!6156946 () Bool)

(assert (=> b!6156946 (= e!3751439 (store ((as const (Array Context!10966 Bool)) false) (ite (or c!1108329 c!1108330) lt!2335134 (Context!10967 call!512318)) true))))

(declare-fun b!6156947 () Bool)

(declare-fun call!512526 () (InoxSet Context!10966))

(assert (=> b!6156947 (= e!3751436 ((_ map or) call!512528 call!512526))))

(declare-fun call!512525 () List!64596)

(declare-fun bm!512520 () Bool)

(assert (=> bm!512520 (= call!512525 ($colon$colon!1976 (exprs!5983 (ite (or c!1108329 c!1108330) lt!2335134 (Context!10967 call!512318))) (ite (or c!1108594 c!1108592) (regTwo!32710 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))))))))

(declare-fun b!6156948 () Bool)

(declare-fun c!1108595 () Bool)

(assert (=> b!6156948 (= c!1108595 ((_ is Star!16099) (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))))

(assert (=> b!6156948 (= e!3751438 e!3751441)))

(declare-fun bm!512519 () Bool)

(assert (=> bm!512519 (= call!512526 call!512523)))

(declare-fun d!1929273 () Bool)

(declare-fun c!1108596 () Bool)

(assert (=> d!1929273 (= c!1108596 (and ((_ is ElementMatch!16099) (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (= (c!1108140 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (h!70922 s!2326))))))

(assert (=> d!1929273 (= (derivationStepZipperDown!1347 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))) (ite (or c!1108329 c!1108330) lt!2335134 (Context!10967 call!512318)) (h!70922 s!2326)) e!3751439)))

(declare-fun b!6156949 () Bool)

(declare-fun call!512527 () (InoxSet Context!10966))

(assert (=> b!6156949 (= e!3751441 call!512527)))

(declare-fun bm!512521 () Bool)

(assert (=> bm!512521 (= call!512524 call!512525)))

(declare-fun bm!512522 () Bool)

(assert (=> bm!512522 (= call!512528 (derivationStepZipperDown!1347 (ite c!1108593 (regOne!32711 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))) (regOne!32710 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))))) (ite c!1108593 (ite (or c!1108329 c!1108330) lt!2335134 (Context!10967 call!512318)) (Context!10967 call!512525)) (h!70922 s!2326)))))

(declare-fun bm!512523 () Bool)

(assert (=> bm!512523 (= call!512527 call!512526)))

(declare-fun b!6156950 () Bool)

(assert (=> b!6156950 (= e!3751438 call!512527)))

(declare-fun b!6156951 () Bool)

(declare-fun e!3751437 () Bool)

(assert (=> b!6156951 (= e!3751437 (nullable!6092 (regOne!32710 (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343))))))))))))

(declare-fun b!6156952 () Bool)

(assert (=> b!6156952 (= c!1108594 e!3751437)))

(declare-fun res!2549971 () Bool)

(assert (=> b!6156952 (=> (not res!2549971) (not e!3751437))))

(assert (=> b!6156952 (= res!2549971 ((_ is Concat!24944) (ite c!1108329 (regTwo!32711 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108330 (regTwo!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (ite c!1108328 (regOne!32710 (h!70920 (exprs!5983 (h!70921 zl!343)))) (reg!16428 (h!70920 (exprs!5983 (h!70921 zl!343)))))))))))

(assert (=> b!6156952 (= e!3751440 e!3751436)))

(assert (= (and d!1929273 c!1108596) b!6156946))

(assert (= (and d!1929273 (not c!1108596)) b!6156943))

(assert (= (and b!6156943 c!1108593) b!6156942))

(assert (= (and b!6156943 (not c!1108593)) b!6156952))

(assert (= (and b!6156952 res!2549971) b!6156951))

(assert (= (and b!6156952 c!1108594) b!6156947))

(assert (= (and b!6156952 (not c!1108594)) b!6156945))

(assert (= (and b!6156945 c!1108592) b!6156950))

(assert (= (and b!6156945 (not c!1108592)) b!6156948))

(assert (= (and b!6156948 c!1108595) b!6156949))

(assert (= (and b!6156948 (not c!1108595)) b!6156944))

(assert (= (or b!6156950 b!6156949) bm!512521))

(assert (= (or b!6156950 b!6156949) bm!512523))

(assert (= (or b!6156947 bm!512521) bm!512520))

(assert (= (or b!6156947 bm!512523) bm!512519))

(assert (= (or b!6156942 bm!512519) bm!512518))

(assert (= (or b!6156942 b!6156947) bm!512522))

(declare-fun m!6995702 () Bool)

(assert (=> bm!512522 m!6995702))

(declare-fun m!6995704 () Bool)

(assert (=> b!6156951 m!6995704))

(declare-fun m!6995706 () Bool)

(assert (=> bm!512520 m!6995706))

(declare-fun m!6995708 () Bool)

(assert (=> b!6156946 m!6995708))

(declare-fun m!6995710 () Bool)

(assert (=> bm!512518 m!6995710))

(assert (=> bm!512312 d!1929273))

(declare-fun d!1929277 () Bool)

(assert (=> d!1929277 (= (isEmptyExpr!1516 lt!2335199) ((_ is EmptyExpr!16099) lt!2335199))))

(assert (=> b!6155890 d!1929277))

(declare-fun c!1108597 () Bool)

(declare-fun bm!512524 () Bool)

(declare-fun c!1108599 () Bool)

(declare-fun c!1108598 () Bool)

(declare-fun call!512529 () (InoxSet Context!10966))

(declare-fun call!512530 () List!64596)

(assert (=> bm!512524 (= call!512529 (derivationStepZipperDown!1347 (ite c!1108598 (regTwo!32711 (h!70920 (exprs!5983 lt!2335123))) (ite c!1108599 (regTwo!32710 (h!70920 (exprs!5983 lt!2335123))) (ite c!1108597 (regOne!32710 (h!70920 (exprs!5983 lt!2335123))) (reg!16428 (h!70920 (exprs!5983 lt!2335123)))))) (ite (or c!1108598 c!1108599) (Context!10967 (t!378088 (exprs!5983 lt!2335123))) (Context!10967 call!512530)) (h!70922 s!2326)))))

(declare-fun b!6156953 () Bool)

(declare-fun e!3751446 () (InoxSet Context!10966))

(declare-fun call!512534 () (InoxSet Context!10966))

(assert (=> b!6156953 (= e!3751446 ((_ map or) call!512534 call!512529))))

(declare-fun b!6156954 () Bool)

(declare-fun e!3751445 () (InoxSet Context!10966))

(assert (=> b!6156954 (= e!3751445 e!3751446)))

(assert (=> b!6156954 (= c!1108598 ((_ is Union!16099) (h!70920 (exprs!5983 lt!2335123))))))

(declare-fun b!6156955 () Bool)

(declare-fun e!3751447 () (InoxSet Context!10966))

(assert (=> b!6156955 (= e!3751447 ((as const (Array Context!10966 Bool)) false))))

(declare-fun b!6156956 () Bool)

(declare-fun e!3751442 () (InoxSet Context!10966))

(declare-fun e!3751444 () (InoxSet Context!10966))

(assert (=> b!6156956 (= e!3751442 e!3751444)))

(assert (=> b!6156956 (= c!1108597 ((_ is Concat!24944) (h!70920 (exprs!5983 lt!2335123))))))

(declare-fun b!6156957 () Bool)

(assert (=> b!6156957 (= e!3751445 (store ((as const (Array Context!10966 Bool)) false) (Context!10967 (t!378088 (exprs!5983 lt!2335123))) true))))

(declare-fun b!6156958 () Bool)

(declare-fun call!512532 () (InoxSet Context!10966))

(assert (=> b!6156958 (= e!3751442 ((_ map or) call!512534 call!512532))))

(declare-fun bm!512526 () Bool)

(declare-fun call!512531 () List!64596)

(assert (=> bm!512526 (= call!512531 ($colon$colon!1976 (exprs!5983 (Context!10967 (t!378088 (exprs!5983 lt!2335123)))) (ite (or c!1108599 c!1108597) (regTwo!32710 (h!70920 (exprs!5983 lt!2335123))) (h!70920 (exprs!5983 lt!2335123)))))))

(declare-fun b!6156959 () Bool)

(declare-fun c!1108600 () Bool)

(assert (=> b!6156959 (= c!1108600 ((_ is Star!16099) (h!70920 (exprs!5983 lt!2335123))))))

(assert (=> b!6156959 (= e!3751444 e!3751447)))

(declare-fun bm!512525 () Bool)

(assert (=> bm!512525 (= call!512532 call!512529)))

(declare-fun d!1929279 () Bool)

(declare-fun c!1108601 () Bool)

(assert (=> d!1929279 (= c!1108601 (and ((_ is ElementMatch!16099) (h!70920 (exprs!5983 lt!2335123))) (= (c!1108140 (h!70920 (exprs!5983 lt!2335123))) (h!70922 s!2326))))))

(assert (=> d!1929279 (= (derivationStepZipperDown!1347 (h!70920 (exprs!5983 lt!2335123)) (Context!10967 (t!378088 (exprs!5983 lt!2335123))) (h!70922 s!2326)) e!3751445)))

(declare-fun b!6156960 () Bool)

(declare-fun call!512533 () (InoxSet Context!10966))

(assert (=> b!6156960 (= e!3751447 call!512533)))

(declare-fun bm!512527 () Bool)

(assert (=> bm!512527 (= call!512530 call!512531)))

(declare-fun bm!512528 () Bool)

(assert (=> bm!512528 (= call!512534 (derivationStepZipperDown!1347 (ite c!1108598 (regOne!32711 (h!70920 (exprs!5983 lt!2335123))) (regOne!32710 (h!70920 (exprs!5983 lt!2335123)))) (ite c!1108598 (Context!10967 (t!378088 (exprs!5983 lt!2335123))) (Context!10967 call!512531)) (h!70922 s!2326)))))

(declare-fun bm!512529 () Bool)

(assert (=> bm!512529 (= call!512533 call!512532)))

(declare-fun b!6156961 () Bool)

(assert (=> b!6156961 (= e!3751444 call!512533)))

(declare-fun b!6156962 () Bool)

(declare-fun e!3751443 () Bool)

(assert (=> b!6156962 (= e!3751443 (nullable!6092 (regOne!32710 (h!70920 (exprs!5983 lt!2335123)))))))

(declare-fun b!6156963 () Bool)

(assert (=> b!6156963 (= c!1108599 e!3751443)))

(declare-fun res!2549972 () Bool)

(assert (=> b!6156963 (=> (not res!2549972) (not e!3751443))))

(assert (=> b!6156963 (= res!2549972 ((_ is Concat!24944) (h!70920 (exprs!5983 lt!2335123))))))

(assert (=> b!6156963 (= e!3751446 e!3751442)))

(assert (= (and d!1929279 c!1108601) b!6156957))

(assert (= (and d!1929279 (not c!1108601)) b!6156954))

(assert (= (and b!6156954 c!1108598) b!6156953))

(assert (= (and b!6156954 (not c!1108598)) b!6156963))

(assert (= (and b!6156963 res!2549972) b!6156962))

(assert (= (and b!6156963 c!1108599) b!6156958))

(assert (= (and b!6156963 (not c!1108599)) b!6156956))

(assert (= (and b!6156956 c!1108597) b!6156961))

(assert (= (and b!6156956 (not c!1108597)) b!6156959))

(assert (= (and b!6156959 c!1108600) b!6156960))

(assert (= (and b!6156959 (not c!1108600)) b!6156955))

(assert (= (or b!6156961 b!6156960) bm!512527))

(assert (= (or b!6156961 b!6156960) bm!512529))

(assert (= (or b!6156958 bm!512527) bm!512526))

(assert (= (or b!6156958 bm!512529) bm!512525))

(assert (= (or b!6156953 bm!512525) bm!512524))

(assert (= (or b!6156953 b!6156958) bm!512528))

(declare-fun m!6995712 () Bool)

(assert (=> bm!512528 m!6995712))

(declare-fun m!6995714 () Bool)

(assert (=> b!6156962 m!6995714))

(declare-fun m!6995716 () Bool)

(assert (=> bm!512526 m!6995716))

(declare-fun m!6995718 () Bool)

(assert (=> b!6156957 m!6995718))

(declare-fun m!6995720 () Bool)

(assert (=> bm!512524 m!6995720))

(assert (=> bm!512289 d!1929279))

(declare-fun b!6156964 () Bool)

(declare-fun e!3751454 () Bool)

(declare-fun e!3751449 () Bool)

(assert (=> b!6156964 (= e!3751454 e!3751449)))

(declare-fun c!1108602 () Bool)

(assert (=> b!6156964 (= c!1108602 ((_ is Star!16099) (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))))))

(declare-fun b!6156965 () Bool)

(declare-fun e!3751452 () Bool)

(declare-fun e!3751451 () Bool)

(assert (=> b!6156965 (= e!3751452 e!3751451)))

(declare-fun res!2549974 () Bool)

(assert (=> b!6156965 (=> (not res!2549974) (not e!3751451))))

(declare-fun call!512536 () Bool)

(assert (=> b!6156965 (= res!2549974 call!512536)))

(declare-fun b!6156966 () Bool)

(declare-fun e!3751453 () Bool)

(assert (=> b!6156966 (= e!3751449 e!3751453)))

(declare-fun res!2549977 () Bool)

(assert (=> b!6156966 (= res!2549977 (not (nullable!6092 (reg!16428 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))))))))

(assert (=> b!6156966 (=> (not res!2549977) (not e!3751453))))

(declare-fun b!6156967 () Bool)

(declare-fun e!3751448 () Bool)

(declare-fun call!512537 () Bool)

(assert (=> b!6156967 (= e!3751448 call!512537)))

(declare-fun bm!512530 () Bool)

(declare-fun call!512535 () Bool)

(assert (=> bm!512530 (= call!512537 call!512535)))

(declare-fun b!6156968 () Bool)

(declare-fun res!2549975 () Bool)

(assert (=> b!6156968 (=> (not res!2549975) (not e!3751448))))

(assert (=> b!6156968 (= res!2549975 call!512536)))

(declare-fun e!3751450 () Bool)

(assert (=> b!6156968 (= e!3751450 e!3751448)))

(declare-fun bm!512532 () Bool)

(declare-fun c!1108603 () Bool)

(assert (=> bm!512532 (= call!512535 (validRegex!7835 (ite c!1108602 (reg!16428 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))) (ite c!1108603 (regTwo!32711 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))) (regTwo!32710 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292)))))))))

(declare-fun b!6156969 () Bool)

(assert (=> b!6156969 (= e!3751451 call!512537)))

(declare-fun bm!512531 () Bool)

(assert (=> bm!512531 (= call!512536 (validRegex!7835 (ite c!1108603 (regOne!32711 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))) (regOne!32710 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))))))))

(declare-fun d!1929281 () Bool)

(declare-fun res!2549976 () Bool)

(assert (=> d!1929281 (=> res!2549976 e!3751454)))

(assert (=> d!1929281 (= res!2549976 ((_ is ElementMatch!16099) (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))))))

(assert (=> d!1929281 (= (validRegex!7835 (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))) e!3751454)))

(declare-fun b!6156970 () Bool)

(assert (=> b!6156970 (= e!3751453 call!512535)))

(declare-fun b!6156971 () Bool)

(assert (=> b!6156971 (= e!3751449 e!3751450)))

(assert (=> b!6156971 (= c!1108603 ((_ is Union!16099) (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292))))))

(declare-fun b!6156972 () Bool)

(declare-fun res!2549973 () Bool)

(assert (=> b!6156972 (=> res!2549973 e!3751452)))

(assert (=> b!6156972 (= res!2549973 (not ((_ is Concat!24944) (ite c!1108260 (regOne!32711 r!7292) (regOne!32710 r!7292)))))))

(assert (=> b!6156972 (= e!3751450 e!3751452)))

(assert (= (and d!1929281 (not res!2549976)) b!6156964))

(assert (= (and b!6156964 c!1108602) b!6156966))

(assert (= (and b!6156964 (not c!1108602)) b!6156971))

(assert (= (and b!6156966 res!2549977) b!6156970))

(assert (= (and b!6156971 c!1108603) b!6156968))

(assert (= (and b!6156971 (not c!1108603)) b!6156972))

(assert (= (and b!6156968 res!2549975) b!6156967))

(assert (= (and b!6156972 (not res!2549973)) b!6156965))

(assert (= (and b!6156965 res!2549974) b!6156969))

(assert (= (or b!6156967 b!6156969) bm!512530))

(assert (= (or b!6156968 b!6156965) bm!512531))

(assert (= (or b!6156970 bm!512530) bm!512532))

(declare-fun m!6995722 () Bool)

(assert (=> b!6156966 m!6995722))

(declare-fun m!6995724 () Bool)

(assert (=> bm!512532 m!6995724))

(declare-fun m!6995726 () Bool)

(assert (=> bm!512531 m!6995726))

(assert (=> bm!512281 d!1929281))

(declare-fun bs!1526026 () Bool)

(declare-fun d!1929283 () Bool)

(assert (= bs!1526026 (and d!1929283 d!1928765)))

(declare-fun lambda!335903 () Int)

(assert (=> bs!1526026 (= lambda!335903 lambda!335825)))

(declare-fun bs!1526027 () Bool)

(assert (= bs!1526027 (and d!1929283 d!1929155)))

(assert (=> bs!1526027 (= lambda!335903 lambda!335890)))

(declare-fun bs!1526028 () Bool)

(assert (= bs!1526028 (and d!1929283 d!1928715)))

(assert (=> bs!1526028 (= lambda!335903 lambda!335816)))

(declare-fun bs!1526029 () Bool)

(assert (= bs!1526029 (and d!1929283 d!1928751)))

(assert (=> bs!1526029 (= lambda!335903 lambda!335823)))

(declare-fun bs!1526030 () Bool)

(assert (= bs!1526030 (and d!1929283 d!1928747)))

(assert (=> bs!1526030 (= lambda!335903 lambda!335820)))

(declare-fun bs!1526031 () Bool)

(assert (= bs!1526031 (and d!1929283 d!1928719)))

(assert (=> bs!1526031 (= lambda!335903 lambda!335817)))

(declare-fun bs!1526032 () Bool)

(assert (= bs!1526032 (and d!1929283 d!1928859)))

(assert (=> bs!1526032 (= lambda!335903 lambda!335848)))

(declare-fun bs!1526033 () Bool)

(assert (= bs!1526033 (and d!1929283 d!1929137)))

(assert (=> bs!1526033 (= lambda!335903 lambda!335886)))

(declare-fun bs!1526034 () Bool)

(assert (= bs!1526034 (and d!1929283 d!1928767)))

(assert (=> bs!1526034 (= lambda!335903 lambda!335830)))

(declare-fun bs!1526035 () Bool)

(assert (= bs!1526035 (and d!1929283 d!1929177)))

(assert (=> bs!1526035 (= lambda!335903 lambda!335894)))

(declare-fun b!6156973 () Bool)

(declare-fun e!3751456 () Bool)

(declare-fun lt!2335267 () Regex!16099)

(assert (=> b!6156973 (= e!3751456 (isConcat!1039 lt!2335267))))

(declare-fun e!3751458 () Bool)

(assert (=> d!1929283 e!3751458))

(declare-fun res!2549978 () Bool)

(assert (=> d!1929283 (=> (not res!2549978) (not e!3751458))))

(assert (=> d!1929283 (= res!2549978 (validRegex!7835 lt!2335267))))

(declare-fun e!3751459 () Regex!16099)

(assert (=> d!1929283 (= lt!2335267 e!3751459)))

(declare-fun c!1108606 () Bool)

(declare-fun e!3751460 () Bool)

(assert (=> d!1929283 (= c!1108606 e!3751460)))

(declare-fun res!2549979 () Bool)

(assert (=> d!1929283 (=> (not res!2549979) (not e!3751460))))

(assert (=> d!1929283 (= res!2549979 ((_ is Cons!64472) (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> d!1929283 (forall!15220 (t!378088 (exprs!5983 (h!70921 zl!343))) lambda!335903)))

(assert (=> d!1929283 (= (generalisedConcat!1696 (t!378088 (exprs!5983 (h!70921 zl!343)))) lt!2335267)))

(declare-fun b!6156974 () Bool)

(assert (=> b!6156974 (= e!3751456 (= lt!2335267 (head!12720 (t!378088 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6156975 () Bool)

(assert (=> b!6156975 (= e!3751460 (isEmpty!36436 (t!378088 (t!378088 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6156976 () Bool)

(declare-fun e!3751457 () Regex!16099)

(assert (=> b!6156976 (= e!3751459 e!3751457)))

(declare-fun c!1108604 () Bool)

(assert (=> b!6156976 (= c!1108604 ((_ is Cons!64472) (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156977 () Bool)

(assert (=> b!6156977 (= e!3751457 (Concat!24944 (h!70920 (t!378088 (exprs!5983 (h!70921 zl!343)))) (generalisedConcat!1696 (t!378088 (t!378088 (exprs!5983 (h!70921 zl!343)))))))))

(declare-fun b!6156978 () Bool)

(declare-fun e!3751455 () Bool)

(assert (=> b!6156978 (= e!3751458 e!3751455)))

(declare-fun c!1108605 () Bool)

(assert (=> b!6156978 (= c!1108605 (isEmpty!36436 (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun b!6156979 () Bool)

(assert (=> b!6156979 (= e!3751455 e!3751456)))

(declare-fun c!1108607 () Bool)

(assert (=> b!6156979 (= c!1108607 (isEmpty!36436 (tail!11805 (t!378088 (exprs!5983 (h!70921 zl!343))))))))

(declare-fun b!6156980 () Bool)

(assert (=> b!6156980 (= e!3751457 EmptyExpr!16099)))

(declare-fun b!6156981 () Bool)

(assert (=> b!6156981 (= e!3751455 (isEmptyExpr!1516 lt!2335267))))

(declare-fun b!6156982 () Bool)

(assert (=> b!6156982 (= e!3751459 (h!70920 (t!378088 (exprs!5983 (h!70921 zl!343)))))))

(assert (= (and d!1929283 res!2549979) b!6156975))

(assert (= (and d!1929283 c!1108606) b!6156982))

(assert (= (and d!1929283 (not c!1108606)) b!6156976))

(assert (= (and b!6156976 c!1108604) b!6156977))

(assert (= (and b!6156976 (not c!1108604)) b!6156980))

(assert (= (and d!1929283 res!2549978) b!6156978))

(assert (= (and b!6156978 c!1108605) b!6156981))

(assert (= (and b!6156978 (not c!1108605)) b!6156979))

(assert (= (and b!6156979 c!1108607) b!6156974))

(assert (= (and b!6156979 (not c!1108607)) b!6156973))

(declare-fun m!6995728 () Bool)

(assert (=> b!6156979 m!6995728))

(assert (=> b!6156979 m!6995728))

(declare-fun m!6995730 () Bool)

(assert (=> b!6156979 m!6995730))

(declare-fun m!6995732 () Bool)

(assert (=> b!6156977 m!6995732))

(declare-fun m!6995734 () Bool)

(assert (=> b!6156973 m!6995734))

(declare-fun m!6995736 () Bool)

(assert (=> b!6156981 m!6995736))

(declare-fun m!6995738 () Bool)

(assert (=> b!6156975 m!6995738))

(declare-fun m!6995740 () Bool)

(assert (=> b!6156974 m!6995740))

(declare-fun m!6995742 () Bool)

(assert (=> d!1929283 m!6995742))

(declare-fun m!6995744 () Bool)

(assert (=> d!1929283 m!6995744))

(assert (=> b!6156978 m!6994180))

(assert (=> b!6155886 d!1929283))

(assert (=> bs!1525796 d!1928815))

(declare-fun b!6157005 () Bool)

(declare-fun e!3751471 () Bool)

(declare-fun tp!1719228 () Bool)

(assert (=> b!6157005 (= e!3751471 tp!1719228)))

(declare-fun b!6157004 () Bool)

(declare-fun tp!1719227 () Bool)

(declare-fun tp!1719229 () Bool)

(assert (=> b!6157004 (= e!3751471 (and tp!1719227 tp!1719229))))

(declare-fun b!6157006 () Bool)

(declare-fun tp!1719226 () Bool)

(declare-fun tp!1719225 () Bool)

(assert (=> b!6157006 (= e!3751471 (and tp!1719226 tp!1719225))))

(declare-fun b!6157003 () Bool)

(assert (=> b!6157003 (= e!3751471 tp_is_empty!41451)))

(assert (=> b!6156162 (= tp!1719201 e!3751471)))

(assert (= (and b!6156162 ((_ is ElementMatch!16099) (h!70920 (exprs!5983 (h!70921 zl!343))))) b!6157003))

(assert (= (and b!6156162 ((_ is Concat!24944) (h!70920 (exprs!5983 (h!70921 zl!343))))) b!6157004))

(assert (= (and b!6156162 ((_ is Star!16099) (h!70920 (exprs!5983 (h!70921 zl!343))))) b!6157005))

(assert (= (and b!6156162 ((_ is Union!16099) (h!70920 (exprs!5983 (h!70921 zl!343))))) b!6157006))

(declare-fun b!6157007 () Bool)

(declare-fun e!3751472 () Bool)

(declare-fun tp!1719230 () Bool)

(declare-fun tp!1719231 () Bool)

(assert (=> b!6157007 (= e!3751472 (and tp!1719230 tp!1719231))))

(assert (=> b!6156162 (= tp!1719202 e!3751472)))

(assert (= (and b!6156162 ((_ is Cons!64472) (t!378088 (exprs!5983 (h!70921 zl!343))))) b!6157007))

(declare-fun b!6157009 () Bool)

(declare-fun e!3751474 () Bool)

(declare-fun tp!1719232 () Bool)

(assert (=> b!6157009 (= e!3751474 tp!1719232)))

(declare-fun tp!1719233 () Bool)

(declare-fun e!3751473 () Bool)

(declare-fun b!6157008 () Bool)

(assert (=> b!6157008 (= e!3751473 (and (inv!83494 (h!70921 (t!378089 (t!378089 zl!343)))) e!3751474 tp!1719233))))

(assert (=> b!6156147 (= tp!1719184 e!3751473)))

(assert (= b!6157008 b!6157009))

(assert (= (and b!6156147 ((_ is Cons!64473) (t!378089 (t!378089 zl!343)))) b!6157008))

(declare-fun m!6995746 () Bool)

(assert (=> b!6157008 m!6995746))

(declare-fun b!6157010 () Bool)

(declare-fun e!3751475 () Bool)

(declare-fun tp!1719234 () Bool)

(declare-fun tp!1719235 () Bool)

(assert (=> b!6157010 (= e!3751475 (and tp!1719234 tp!1719235))))

(assert (=> b!6156148 (= tp!1719183 e!3751475)))

(assert (= (and b!6156148 ((_ is Cons!64472) (exprs!5983 (h!70921 (t!378089 zl!343))))) b!6157010))

(declare-fun b!6157013 () Bool)

(declare-fun e!3751476 () Bool)

(declare-fun tp!1719239 () Bool)

(assert (=> b!6157013 (= e!3751476 tp!1719239)))

(declare-fun b!6157012 () Bool)

(declare-fun tp!1719238 () Bool)

(declare-fun tp!1719240 () Bool)

(assert (=> b!6157012 (= e!3751476 (and tp!1719238 tp!1719240))))

(declare-fun b!6157014 () Bool)

(declare-fun tp!1719237 () Bool)

(declare-fun tp!1719236 () Bool)

(assert (=> b!6157014 (= e!3751476 (and tp!1719237 tp!1719236))))

(declare-fun b!6157011 () Bool)

(assert (=> b!6157011 (= e!3751476 tp_is_empty!41451)))

(assert (=> b!6156131 (= tp!1719167 e!3751476)))

(assert (= (and b!6156131 ((_ is ElementMatch!16099) (reg!16428 (regOne!32711 r!7292)))) b!6157011))

(assert (= (and b!6156131 ((_ is Concat!24944) (reg!16428 (regOne!32711 r!7292)))) b!6157012))

(assert (= (and b!6156131 ((_ is Star!16099) (reg!16428 (regOne!32711 r!7292)))) b!6157013))

(assert (= (and b!6156131 ((_ is Union!16099) (reg!16428 (regOne!32711 r!7292)))) b!6157014))

(declare-fun b!6157017 () Bool)

(declare-fun e!3751477 () Bool)

(declare-fun tp!1719244 () Bool)

(assert (=> b!6157017 (= e!3751477 tp!1719244)))

(declare-fun b!6157016 () Bool)

(declare-fun tp!1719243 () Bool)

(declare-fun tp!1719245 () Bool)

(assert (=> b!6157016 (= e!3751477 (and tp!1719243 tp!1719245))))

(declare-fun b!6157018 () Bool)

(declare-fun tp!1719242 () Bool)

(declare-fun tp!1719241 () Bool)

(assert (=> b!6157018 (= e!3751477 (and tp!1719242 tp!1719241))))

(declare-fun b!6157015 () Bool)

(assert (=> b!6157015 (= e!3751477 tp_is_empty!41451)))

(assert (=> b!6156153 (= tp!1719189 e!3751477)))

(assert (= (and b!6156153 ((_ is ElementMatch!16099) (h!70920 (exprs!5983 setElem!41694)))) b!6157015))

(assert (= (and b!6156153 ((_ is Concat!24944) (h!70920 (exprs!5983 setElem!41694)))) b!6157016))

(assert (= (and b!6156153 ((_ is Star!16099) (h!70920 (exprs!5983 setElem!41694)))) b!6157017))

(assert (= (and b!6156153 ((_ is Union!16099) (h!70920 (exprs!5983 setElem!41694)))) b!6157018))

(declare-fun b!6157019 () Bool)

(declare-fun e!3751478 () Bool)

(declare-fun tp!1719246 () Bool)

(declare-fun tp!1719247 () Bool)

(assert (=> b!6157019 (= e!3751478 (and tp!1719246 tp!1719247))))

(assert (=> b!6156153 (= tp!1719190 e!3751478)))

(assert (= (and b!6156153 ((_ is Cons!64472) (t!378088 (exprs!5983 setElem!41694)))) b!6157019))

(declare-fun b!6157022 () Bool)

(declare-fun e!3751479 () Bool)

(declare-fun tp!1719251 () Bool)

(assert (=> b!6157022 (= e!3751479 tp!1719251)))

(declare-fun b!6157021 () Bool)

(declare-fun tp!1719250 () Bool)

(declare-fun tp!1719252 () Bool)

(assert (=> b!6157021 (= e!3751479 (and tp!1719250 tp!1719252))))

(declare-fun b!6157023 () Bool)

(declare-fun tp!1719249 () Bool)

(declare-fun tp!1719248 () Bool)

(assert (=> b!6157023 (= e!3751479 (and tp!1719249 tp!1719248))))

(declare-fun b!6157020 () Bool)

(assert (=> b!6157020 (= e!3751479 tp_is_empty!41451)))

(assert (=> b!6156132 (= tp!1719165 e!3751479)))

(assert (= (and b!6156132 ((_ is ElementMatch!16099) (regOne!32711 (regOne!32711 r!7292)))) b!6157020))

(assert (= (and b!6156132 ((_ is Concat!24944) (regOne!32711 (regOne!32711 r!7292)))) b!6157021))

(assert (= (and b!6156132 ((_ is Star!16099) (regOne!32711 (regOne!32711 r!7292)))) b!6157022))

(assert (= (and b!6156132 ((_ is Union!16099) (regOne!32711 (regOne!32711 r!7292)))) b!6157023))

(declare-fun b!6157026 () Bool)

(declare-fun e!3751480 () Bool)

(declare-fun tp!1719256 () Bool)

(assert (=> b!6157026 (= e!3751480 tp!1719256)))

(declare-fun b!6157025 () Bool)

(declare-fun tp!1719255 () Bool)

(declare-fun tp!1719257 () Bool)

(assert (=> b!6157025 (= e!3751480 (and tp!1719255 tp!1719257))))

(declare-fun b!6157027 () Bool)

(declare-fun tp!1719254 () Bool)

(declare-fun tp!1719253 () Bool)

(assert (=> b!6157027 (= e!3751480 (and tp!1719254 tp!1719253))))

(declare-fun b!6157024 () Bool)

(assert (=> b!6157024 (= e!3751480 tp_is_empty!41451)))

(assert (=> b!6156132 (= tp!1719164 e!3751480)))

(assert (= (and b!6156132 ((_ is ElementMatch!16099) (regTwo!32711 (regOne!32711 r!7292)))) b!6157024))

(assert (= (and b!6156132 ((_ is Concat!24944) (regTwo!32711 (regOne!32711 r!7292)))) b!6157025))

(assert (= (and b!6156132 ((_ is Star!16099) (regTwo!32711 (regOne!32711 r!7292)))) b!6157026))

(assert (= (and b!6156132 ((_ is Union!16099) (regTwo!32711 (regOne!32711 r!7292)))) b!6157027))

(declare-fun b!6157030 () Bool)

(declare-fun e!3751481 () Bool)

(declare-fun tp!1719261 () Bool)

(assert (=> b!6157030 (= e!3751481 tp!1719261)))

(declare-fun b!6157029 () Bool)

(declare-fun tp!1719260 () Bool)

(declare-fun tp!1719262 () Bool)

(assert (=> b!6157029 (= e!3751481 (and tp!1719260 tp!1719262))))

(declare-fun b!6157031 () Bool)

(declare-fun tp!1719259 () Bool)

(declare-fun tp!1719258 () Bool)

(assert (=> b!6157031 (= e!3751481 (and tp!1719259 tp!1719258))))

(declare-fun b!6157028 () Bool)

(assert (=> b!6157028 (= e!3751481 tp_is_empty!41451)))

(assert (=> b!6156130 (= tp!1719166 e!3751481)))

(assert (= (and b!6156130 ((_ is ElementMatch!16099) (regOne!32710 (regOne!32711 r!7292)))) b!6157028))

(assert (= (and b!6156130 ((_ is Concat!24944) (regOne!32710 (regOne!32711 r!7292)))) b!6157029))

(assert (= (and b!6156130 ((_ is Star!16099) (regOne!32710 (regOne!32711 r!7292)))) b!6157030))

(assert (= (and b!6156130 ((_ is Union!16099) (regOne!32710 (regOne!32711 r!7292)))) b!6157031))

(declare-fun b!6157034 () Bool)

(declare-fun e!3751482 () Bool)

(declare-fun tp!1719266 () Bool)

(assert (=> b!6157034 (= e!3751482 tp!1719266)))

(declare-fun b!6157033 () Bool)

(declare-fun tp!1719265 () Bool)

(declare-fun tp!1719267 () Bool)

(assert (=> b!6157033 (= e!3751482 (and tp!1719265 tp!1719267))))

(declare-fun b!6157035 () Bool)

(declare-fun tp!1719264 () Bool)

(declare-fun tp!1719263 () Bool)

(assert (=> b!6157035 (= e!3751482 (and tp!1719264 tp!1719263))))

(declare-fun b!6157032 () Bool)

(assert (=> b!6157032 (= e!3751482 tp_is_empty!41451)))

(assert (=> b!6156130 (= tp!1719168 e!3751482)))

(assert (= (and b!6156130 ((_ is ElementMatch!16099) (regTwo!32710 (regOne!32711 r!7292)))) b!6157032))

(assert (= (and b!6156130 ((_ is Concat!24944) (regTwo!32710 (regOne!32711 r!7292)))) b!6157033))

(assert (= (and b!6156130 ((_ is Star!16099) (regTwo!32710 (regOne!32711 r!7292)))) b!6157034))

(assert (= (and b!6156130 ((_ is Union!16099) (regTwo!32710 (regOne!32711 r!7292)))) b!6157035))

(declare-fun b!6157038 () Bool)

(declare-fun e!3751483 () Bool)

(declare-fun tp!1719271 () Bool)

(assert (=> b!6157038 (= e!3751483 tp!1719271)))

(declare-fun b!6157037 () Bool)

(declare-fun tp!1719270 () Bool)

(declare-fun tp!1719272 () Bool)

(assert (=> b!6157037 (= e!3751483 (and tp!1719270 tp!1719272))))

(declare-fun b!6157039 () Bool)

(declare-fun tp!1719269 () Bool)

(declare-fun tp!1719268 () Bool)

(assert (=> b!6157039 (= e!3751483 (and tp!1719269 tp!1719268))))

(declare-fun b!6157036 () Bool)

(assert (=> b!6157036 (= e!3751483 tp_is_empty!41451)))

(assert (=> b!6156160 (= tp!1719199 e!3751483)))

(assert (= (and b!6156160 ((_ is ElementMatch!16099) (reg!16428 (regTwo!32710 r!7292)))) b!6157036))

(assert (= (and b!6156160 ((_ is Concat!24944) (reg!16428 (regTwo!32710 r!7292)))) b!6157037))

(assert (= (and b!6156160 ((_ is Star!16099) (reg!16428 (regTwo!32710 r!7292)))) b!6157038))

(assert (= (and b!6156160 ((_ is Union!16099) (reg!16428 (regTwo!32710 r!7292)))) b!6157039))

(declare-fun b!6157042 () Bool)

(declare-fun e!3751484 () Bool)

(declare-fun tp!1719276 () Bool)

(assert (=> b!6157042 (= e!3751484 tp!1719276)))

(declare-fun b!6157041 () Bool)

(declare-fun tp!1719275 () Bool)

(declare-fun tp!1719277 () Bool)

(assert (=> b!6157041 (= e!3751484 (and tp!1719275 tp!1719277))))

(declare-fun b!6157043 () Bool)

(declare-fun tp!1719274 () Bool)

(declare-fun tp!1719273 () Bool)

(assert (=> b!6157043 (= e!3751484 (and tp!1719274 tp!1719273))))

(declare-fun b!6157040 () Bool)

(assert (=> b!6157040 (= e!3751484 tp_is_empty!41451)))

(assert (=> b!6156139 (= tp!1719177 e!3751484)))

(assert (= (and b!6156139 ((_ is ElementMatch!16099) (reg!16428 (reg!16428 r!7292)))) b!6157040))

(assert (= (and b!6156139 ((_ is Concat!24944) (reg!16428 (reg!16428 r!7292)))) b!6157041))

(assert (= (and b!6156139 ((_ is Star!16099) (reg!16428 (reg!16428 r!7292)))) b!6157042))

(assert (= (and b!6156139 ((_ is Union!16099) (reg!16428 (reg!16428 r!7292)))) b!6157043))

(declare-fun b!6157046 () Bool)

(declare-fun e!3751485 () Bool)

(declare-fun tp!1719281 () Bool)

(assert (=> b!6157046 (= e!3751485 tp!1719281)))

(declare-fun b!6157045 () Bool)

(declare-fun tp!1719280 () Bool)

(declare-fun tp!1719282 () Bool)

(assert (=> b!6157045 (= e!3751485 (and tp!1719280 tp!1719282))))

(declare-fun b!6157047 () Bool)

(declare-fun tp!1719279 () Bool)

(declare-fun tp!1719278 () Bool)

(assert (=> b!6157047 (= e!3751485 (and tp!1719279 tp!1719278))))

(declare-fun b!6157044 () Bool)

(assert (=> b!6157044 (= e!3751485 tp_is_empty!41451)))

(assert (=> b!6156161 (= tp!1719197 e!3751485)))

(assert (= (and b!6156161 ((_ is ElementMatch!16099) (regOne!32711 (regTwo!32710 r!7292)))) b!6157044))

(assert (= (and b!6156161 ((_ is Concat!24944) (regOne!32711 (regTwo!32710 r!7292)))) b!6157045))

(assert (= (and b!6156161 ((_ is Star!16099) (regOne!32711 (regTwo!32710 r!7292)))) b!6157046))

(assert (= (and b!6156161 ((_ is Union!16099) (regOne!32711 (regTwo!32710 r!7292)))) b!6157047))

(declare-fun b!6157050 () Bool)

(declare-fun e!3751486 () Bool)

(declare-fun tp!1719286 () Bool)

(assert (=> b!6157050 (= e!3751486 tp!1719286)))

(declare-fun b!6157049 () Bool)

(declare-fun tp!1719285 () Bool)

(declare-fun tp!1719287 () Bool)

(assert (=> b!6157049 (= e!3751486 (and tp!1719285 tp!1719287))))

(declare-fun b!6157051 () Bool)

(declare-fun tp!1719284 () Bool)

(declare-fun tp!1719283 () Bool)

(assert (=> b!6157051 (= e!3751486 (and tp!1719284 tp!1719283))))

(declare-fun b!6157048 () Bool)

(assert (=> b!6157048 (= e!3751486 tp_is_empty!41451)))

(assert (=> b!6156161 (= tp!1719196 e!3751486)))

(assert (= (and b!6156161 ((_ is ElementMatch!16099) (regTwo!32711 (regTwo!32710 r!7292)))) b!6157048))

(assert (= (and b!6156161 ((_ is Concat!24944) (regTwo!32711 (regTwo!32710 r!7292)))) b!6157049))

(assert (= (and b!6156161 ((_ is Star!16099) (regTwo!32711 (regTwo!32710 r!7292)))) b!6157050))

(assert (= (and b!6156161 ((_ is Union!16099) (regTwo!32711 (regTwo!32710 r!7292)))) b!6157051))

(declare-fun b!6157054 () Bool)

(declare-fun e!3751487 () Bool)

(declare-fun tp!1719291 () Bool)

(assert (=> b!6157054 (= e!3751487 tp!1719291)))

(declare-fun b!6157053 () Bool)

(declare-fun tp!1719290 () Bool)

(declare-fun tp!1719292 () Bool)

(assert (=> b!6157053 (= e!3751487 (and tp!1719290 tp!1719292))))

(declare-fun b!6157055 () Bool)

(declare-fun tp!1719289 () Bool)

(declare-fun tp!1719288 () Bool)

(assert (=> b!6157055 (= e!3751487 (and tp!1719289 tp!1719288))))

(declare-fun b!6157052 () Bool)

(assert (=> b!6157052 (= e!3751487 tp_is_empty!41451)))

(assert (=> b!6156140 (= tp!1719175 e!3751487)))

(assert (= (and b!6156140 ((_ is ElementMatch!16099) (regOne!32711 (reg!16428 r!7292)))) b!6157052))

(assert (= (and b!6156140 ((_ is Concat!24944) (regOne!32711 (reg!16428 r!7292)))) b!6157053))

(assert (= (and b!6156140 ((_ is Star!16099) (regOne!32711 (reg!16428 r!7292)))) b!6157054))

(assert (= (and b!6156140 ((_ is Union!16099) (regOne!32711 (reg!16428 r!7292)))) b!6157055))

(declare-fun b!6157058 () Bool)

(declare-fun e!3751488 () Bool)

(declare-fun tp!1719296 () Bool)

(assert (=> b!6157058 (= e!3751488 tp!1719296)))

(declare-fun b!6157057 () Bool)

(declare-fun tp!1719295 () Bool)

(declare-fun tp!1719297 () Bool)

(assert (=> b!6157057 (= e!3751488 (and tp!1719295 tp!1719297))))

(declare-fun b!6157059 () Bool)

(declare-fun tp!1719294 () Bool)

(declare-fun tp!1719293 () Bool)

(assert (=> b!6157059 (= e!3751488 (and tp!1719294 tp!1719293))))

(declare-fun b!6157056 () Bool)

(assert (=> b!6157056 (= e!3751488 tp_is_empty!41451)))

(assert (=> b!6156140 (= tp!1719174 e!3751488)))

(assert (= (and b!6156140 ((_ is ElementMatch!16099) (regTwo!32711 (reg!16428 r!7292)))) b!6157056))

(assert (= (and b!6156140 ((_ is Concat!24944) (regTwo!32711 (reg!16428 r!7292)))) b!6157057))

(assert (= (and b!6156140 ((_ is Star!16099) (regTwo!32711 (reg!16428 r!7292)))) b!6157058))

(assert (= (and b!6156140 ((_ is Union!16099) (regTwo!32711 (reg!16428 r!7292)))) b!6157059))

(declare-fun b!6157062 () Bool)

(declare-fun e!3751489 () Bool)

(declare-fun tp!1719301 () Bool)

(assert (=> b!6157062 (= e!3751489 tp!1719301)))

(declare-fun b!6157061 () Bool)

(declare-fun tp!1719300 () Bool)

(declare-fun tp!1719302 () Bool)

(assert (=> b!6157061 (= e!3751489 (and tp!1719300 tp!1719302))))

(declare-fun b!6157063 () Bool)

(declare-fun tp!1719299 () Bool)

(declare-fun tp!1719298 () Bool)

(assert (=> b!6157063 (= e!3751489 (and tp!1719299 tp!1719298))))

(declare-fun b!6157060 () Bool)

(assert (=> b!6157060 (= e!3751489 tp_is_empty!41451)))

(assert (=> b!6156155 (= tp!1719193 e!3751489)))

(assert (= (and b!6156155 ((_ is ElementMatch!16099) (regOne!32710 (regOne!32710 r!7292)))) b!6157060))

(assert (= (and b!6156155 ((_ is Concat!24944) (regOne!32710 (regOne!32710 r!7292)))) b!6157061))

(assert (= (and b!6156155 ((_ is Star!16099) (regOne!32710 (regOne!32710 r!7292)))) b!6157062))

(assert (= (and b!6156155 ((_ is Union!16099) (regOne!32710 (regOne!32710 r!7292)))) b!6157063))

(declare-fun b!6157066 () Bool)

(declare-fun e!3751490 () Bool)

(declare-fun tp!1719306 () Bool)

(assert (=> b!6157066 (= e!3751490 tp!1719306)))

(declare-fun b!6157065 () Bool)

(declare-fun tp!1719305 () Bool)

(declare-fun tp!1719307 () Bool)

(assert (=> b!6157065 (= e!3751490 (and tp!1719305 tp!1719307))))

(declare-fun b!6157067 () Bool)

(declare-fun tp!1719304 () Bool)

(declare-fun tp!1719303 () Bool)

(assert (=> b!6157067 (= e!3751490 (and tp!1719304 tp!1719303))))

(declare-fun b!6157064 () Bool)

(assert (=> b!6157064 (= e!3751490 tp_is_empty!41451)))

(assert (=> b!6156155 (= tp!1719195 e!3751490)))

(assert (= (and b!6156155 ((_ is ElementMatch!16099) (regTwo!32710 (regOne!32710 r!7292)))) b!6157064))

(assert (= (and b!6156155 ((_ is Concat!24944) (regTwo!32710 (regOne!32710 r!7292)))) b!6157065))

(assert (= (and b!6156155 ((_ is Star!16099) (regTwo!32710 (regOne!32710 r!7292)))) b!6157066))

(assert (= (and b!6156155 ((_ is Union!16099) (regTwo!32710 (regOne!32710 r!7292)))) b!6157067))

(declare-fun b!6157070 () Bool)

(declare-fun e!3751491 () Bool)

(declare-fun tp!1719311 () Bool)

(assert (=> b!6157070 (= e!3751491 tp!1719311)))

(declare-fun b!6157069 () Bool)

(declare-fun tp!1719310 () Bool)

(declare-fun tp!1719312 () Bool)

(assert (=> b!6157069 (= e!3751491 (and tp!1719310 tp!1719312))))

(declare-fun b!6157071 () Bool)

(declare-fun tp!1719309 () Bool)

(declare-fun tp!1719308 () Bool)

(assert (=> b!6157071 (= e!3751491 (and tp!1719309 tp!1719308))))

(declare-fun b!6157068 () Bool)

(assert (=> b!6157068 (= e!3751491 tp_is_empty!41451)))

(assert (=> b!6156134 (= tp!1719171 e!3751491)))

(assert (= (and b!6156134 ((_ is ElementMatch!16099) (regOne!32710 (regTwo!32711 r!7292)))) b!6157068))

(assert (= (and b!6156134 ((_ is Concat!24944) (regOne!32710 (regTwo!32711 r!7292)))) b!6157069))

(assert (= (and b!6156134 ((_ is Star!16099) (regOne!32710 (regTwo!32711 r!7292)))) b!6157070))

(assert (= (and b!6156134 ((_ is Union!16099) (regOne!32710 (regTwo!32711 r!7292)))) b!6157071))

(declare-fun b!6157074 () Bool)

(declare-fun e!3751492 () Bool)

(declare-fun tp!1719316 () Bool)

(assert (=> b!6157074 (= e!3751492 tp!1719316)))

(declare-fun b!6157073 () Bool)

(declare-fun tp!1719315 () Bool)

(declare-fun tp!1719317 () Bool)

(assert (=> b!6157073 (= e!3751492 (and tp!1719315 tp!1719317))))

(declare-fun b!6157075 () Bool)

(declare-fun tp!1719314 () Bool)

(declare-fun tp!1719313 () Bool)

(assert (=> b!6157075 (= e!3751492 (and tp!1719314 tp!1719313))))

(declare-fun b!6157072 () Bool)

(assert (=> b!6157072 (= e!3751492 tp_is_empty!41451)))

(assert (=> b!6156134 (= tp!1719173 e!3751492)))

(assert (= (and b!6156134 ((_ is ElementMatch!16099) (regTwo!32710 (regTwo!32711 r!7292)))) b!6157072))

(assert (= (and b!6156134 ((_ is Concat!24944) (regTwo!32710 (regTwo!32711 r!7292)))) b!6157073))

(assert (= (and b!6156134 ((_ is Star!16099) (regTwo!32710 (regTwo!32711 r!7292)))) b!6157074))

(assert (= (and b!6156134 ((_ is Union!16099) (regTwo!32710 (regTwo!32711 r!7292)))) b!6157075))

(declare-fun b!6157076 () Bool)

(declare-fun e!3751493 () Bool)

(declare-fun tp!1719318 () Bool)

(declare-fun tp!1719319 () Bool)

(assert (=> b!6157076 (= e!3751493 (and tp!1719318 tp!1719319))))

(assert (=> b!6156118 (= tp!1719153 e!3751493)))

(assert (= (and b!6156118 ((_ is Cons!64472) (exprs!5983 setElem!41700))) b!6157076))

(declare-fun condSetEmpty!41706 () Bool)

(assert (=> setNonEmpty!41700 (= condSetEmpty!41706 (= setRest!41700 ((as const (Array Context!10966 Bool)) false)))))

(declare-fun setRes!41706 () Bool)

(assert (=> setNonEmpty!41700 (= tp!1719152 setRes!41706)))

(declare-fun setIsEmpty!41706 () Bool)

(assert (=> setIsEmpty!41706 setRes!41706))

(declare-fun e!3751494 () Bool)

(declare-fun tp!1719320 () Bool)

(declare-fun setElem!41706 () Context!10966)

(declare-fun setNonEmpty!41706 () Bool)

(assert (=> setNonEmpty!41706 (= setRes!41706 (and tp!1719320 (inv!83494 setElem!41706) e!3751494))))

(declare-fun setRest!41706 () (InoxSet Context!10966))

(assert (=> setNonEmpty!41706 (= setRest!41700 ((_ map or) (store ((as const (Array Context!10966 Bool)) false) setElem!41706 true) setRest!41706))))

(declare-fun b!6157077 () Bool)

(declare-fun tp!1719321 () Bool)

(assert (=> b!6157077 (= e!3751494 tp!1719321)))

(assert (= (and setNonEmpty!41700 condSetEmpty!41706) setIsEmpty!41706))

(assert (= (and setNonEmpty!41700 (not condSetEmpty!41706)) setNonEmpty!41706))

(assert (= setNonEmpty!41706 b!6157077))

(declare-fun m!6995748 () Bool)

(assert (=> setNonEmpty!41706 m!6995748))

(declare-fun b!6157078 () Bool)

(declare-fun e!3751495 () Bool)

(declare-fun tp!1719322 () Bool)

(assert (=> b!6157078 (= e!3751495 (and tp_is_empty!41451 tp!1719322))))

(assert (=> b!6156113 (= tp!1719147 e!3751495)))

(assert (= (and b!6156113 ((_ is Cons!64474) (t!378090 (t!378090 s!2326)))) b!6157078))

(declare-fun b!6157081 () Bool)

(declare-fun e!3751496 () Bool)

(declare-fun tp!1719326 () Bool)

(assert (=> b!6157081 (= e!3751496 tp!1719326)))

(declare-fun b!6157080 () Bool)

(declare-fun tp!1719325 () Bool)

(declare-fun tp!1719327 () Bool)

(assert (=> b!6157080 (= e!3751496 (and tp!1719325 tp!1719327))))

(declare-fun b!6157082 () Bool)

(declare-fun tp!1719324 () Bool)

(declare-fun tp!1719323 () Bool)

(assert (=> b!6157082 (= e!3751496 (and tp!1719324 tp!1719323))))

(declare-fun b!6157079 () Bool)

(assert (=> b!6157079 (= e!3751496 tp_is_empty!41451)))

(assert (=> b!6156157 (= tp!1719192 e!3751496)))

(assert (= (and b!6156157 ((_ is ElementMatch!16099) (regOne!32711 (regOne!32710 r!7292)))) b!6157079))

(assert (= (and b!6156157 ((_ is Concat!24944) (regOne!32711 (regOne!32710 r!7292)))) b!6157080))

(assert (= (and b!6156157 ((_ is Star!16099) (regOne!32711 (regOne!32710 r!7292)))) b!6157081))

(assert (= (and b!6156157 ((_ is Union!16099) (regOne!32711 (regOne!32710 r!7292)))) b!6157082))

(declare-fun b!6157085 () Bool)

(declare-fun e!3751497 () Bool)

(declare-fun tp!1719331 () Bool)

(assert (=> b!6157085 (= e!3751497 tp!1719331)))

(declare-fun b!6157084 () Bool)

(declare-fun tp!1719330 () Bool)

(declare-fun tp!1719332 () Bool)

(assert (=> b!6157084 (= e!3751497 (and tp!1719330 tp!1719332))))

(declare-fun b!6157086 () Bool)

(declare-fun tp!1719329 () Bool)

(declare-fun tp!1719328 () Bool)

(assert (=> b!6157086 (= e!3751497 (and tp!1719329 tp!1719328))))

(declare-fun b!6157083 () Bool)

(assert (=> b!6157083 (= e!3751497 tp_is_empty!41451)))

(assert (=> b!6156157 (= tp!1719191 e!3751497)))

(assert (= (and b!6156157 ((_ is ElementMatch!16099) (regTwo!32711 (regOne!32710 r!7292)))) b!6157083))

(assert (= (and b!6156157 ((_ is Concat!24944) (regTwo!32711 (regOne!32710 r!7292)))) b!6157084))

(assert (= (and b!6156157 ((_ is Star!16099) (regTwo!32711 (regOne!32710 r!7292)))) b!6157085))

(assert (= (and b!6156157 ((_ is Union!16099) (regTwo!32711 (regOne!32710 r!7292)))) b!6157086))

(declare-fun b!6157089 () Bool)

(declare-fun e!3751498 () Bool)

(declare-fun tp!1719336 () Bool)

(assert (=> b!6157089 (= e!3751498 tp!1719336)))

(declare-fun b!6157088 () Bool)

(declare-fun tp!1719335 () Bool)

(declare-fun tp!1719337 () Bool)

(assert (=> b!6157088 (= e!3751498 (and tp!1719335 tp!1719337))))

(declare-fun b!6157090 () Bool)

(declare-fun tp!1719334 () Bool)

(declare-fun tp!1719333 () Bool)

(assert (=> b!6157090 (= e!3751498 (and tp!1719334 tp!1719333))))

(declare-fun b!6157087 () Bool)

(assert (=> b!6157087 (= e!3751498 tp_is_empty!41451)))

(assert (=> b!6156136 (= tp!1719170 e!3751498)))

(assert (= (and b!6156136 ((_ is ElementMatch!16099) (regOne!32711 (regTwo!32711 r!7292)))) b!6157087))

(assert (= (and b!6156136 ((_ is Concat!24944) (regOne!32711 (regTwo!32711 r!7292)))) b!6157088))

(assert (= (and b!6156136 ((_ is Star!16099) (regOne!32711 (regTwo!32711 r!7292)))) b!6157089))

(assert (= (and b!6156136 ((_ is Union!16099) (regOne!32711 (regTwo!32711 r!7292)))) b!6157090))

(declare-fun b!6157093 () Bool)

(declare-fun e!3751499 () Bool)

(declare-fun tp!1719341 () Bool)

(assert (=> b!6157093 (= e!3751499 tp!1719341)))

(declare-fun b!6157092 () Bool)

(declare-fun tp!1719340 () Bool)

(declare-fun tp!1719342 () Bool)

(assert (=> b!6157092 (= e!3751499 (and tp!1719340 tp!1719342))))

(declare-fun b!6157094 () Bool)

(declare-fun tp!1719339 () Bool)

(declare-fun tp!1719338 () Bool)

(assert (=> b!6157094 (= e!3751499 (and tp!1719339 tp!1719338))))

(declare-fun b!6157091 () Bool)

(assert (=> b!6157091 (= e!3751499 tp_is_empty!41451)))

(assert (=> b!6156136 (= tp!1719169 e!3751499)))

(assert (= (and b!6156136 ((_ is ElementMatch!16099) (regTwo!32711 (regTwo!32711 r!7292)))) b!6157091))

(assert (= (and b!6156136 ((_ is Concat!24944) (regTwo!32711 (regTwo!32711 r!7292)))) b!6157092))

(assert (= (and b!6156136 ((_ is Star!16099) (regTwo!32711 (regTwo!32711 r!7292)))) b!6157093))

(assert (= (and b!6156136 ((_ is Union!16099) (regTwo!32711 (regTwo!32711 r!7292)))) b!6157094))

(declare-fun b!6157097 () Bool)

(declare-fun e!3751500 () Bool)

(declare-fun tp!1719346 () Bool)

(assert (=> b!6157097 (= e!3751500 tp!1719346)))

(declare-fun b!6157096 () Bool)

(declare-fun tp!1719345 () Bool)

(declare-fun tp!1719347 () Bool)

(assert (=> b!6157096 (= e!3751500 (and tp!1719345 tp!1719347))))

(declare-fun b!6157098 () Bool)

(declare-fun tp!1719344 () Bool)

(declare-fun tp!1719343 () Bool)

(assert (=> b!6157098 (= e!3751500 (and tp!1719344 tp!1719343))))

(declare-fun b!6157095 () Bool)

(assert (=> b!6157095 (= e!3751500 tp_is_empty!41451)))

(assert (=> b!6156156 (= tp!1719194 e!3751500)))

(assert (= (and b!6156156 ((_ is ElementMatch!16099) (reg!16428 (regOne!32710 r!7292)))) b!6157095))

(assert (= (and b!6156156 ((_ is Concat!24944) (reg!16428 (regOne!32710 r!7292)))) b!6157096))

(assert (= (and b!6156156 ((_ is Star!16099) (reg!16428 (regOne!32710 r!7292)))) b!6157097))

(assert (= (and b!6156156 ((_ is Union!16099) (reg!16428 (regOne!32710 r!7292)))) b!6157098))

(declare-fun b!6157101 () Bool)

(declare-fun e!3751501 () Bool)

(declare-fun tp!1719351 () Bool)

(assert (=> b!6157101 (= e!3751501 tp!1719351)))

(declare-fun b!6157100 () Bool)

(declare-fun tp!1719350 () Bool)

(declare-fun tp!1719352 () Bool)

(assert (=> b!6157100 (= e!3751501 (and tp!1719350 tp!1719352))))

(declare-fun b!6157102 () Bool)

(declare-fun tp!1719349 () Bool)

(declare-fun tp!1719348 () Bool)

(assert (=> b!6157102 (= e!3751501 (and tp!1719349 tp!1719348))))

(declare-fun b!6157099 () Bool)

(assert (=> b!6157099 (= e!3751501 tp_is_empty!41451)))

(assert (=> b!6156135 (= tp!1719172 e!3751501)))

(assert (= (and b!6156135 ((_ is ElementMatch!16099) (reg!16428 (regTwo!32711 r!7292)))) b!6157099))

(assert (= (and b!6156135 ((_ is Concat!24944) (reg!16428 (regTwo!32711 r!7292)))) b!6157100))

(assert (= (and b!6156135 ((_ is Star!16099) (reg!16428 (regTwo!32711 r!7292)))) b!6157101))

(assert (= (and b!6156135 ((_ is Union!16099) (reg!16428 (regTwo!32711 r!7292)))) b!6157102))

(declare-fun b!6157105 () Bool)

(declare-fun e!3751502 () Bool)

(declare-fun tp!1719356 () Bool)

(assert (=> b!6157105 (= e!3751502 tp!1719356)))

(declare-fun b!6157104 () Bool)

(declare-fun tp!1719355 () Bool)

(declare-fun tp!1719357 () Bool)

(assert (=> b!6157104 (= e!3751502 (and tp!1719355 tp!1719357))))

(declare-fun b!6157106 () Bool)

(declare-fun tp!1719354 () Bool)

(declare-fun tp!1719353 () Bool)

(assert (=> b!6157106 (= e!3751502 (and tp!1719354 tp!1719353))))

(declare-fun b!6157103 () Bool)

(assert (=> b!6157103 (= e!3751502 tp_is_empty!41451)))

(assert (=> b!6156159 (= tp!1719198 e!3751502)))

(assert (= (and b!6156159 ((_ is ElementMatch!16099) (regOne!32710 (regTwo!32710 r!7292)))) b!6157103))

(assert (= (and b!6156159 ((_ is Concat!24944) (regOne!32710 (regTwo!32710 r!7292)))) b!6157104))

(assert (= (and b!6156159 ((_ is Star!16099) (regOne!32710 (regTwo!32710 r!7292)))) b!6157105))

(assert (= (and b!6156159 ((_ is Union!16099) (regOne!32710 (regTwo!32710 r!7292)))) b!6157106))

(declare-fun b!6157119 () Bool)

(declare-fun e!3751508 () Bool)

(declare-fun tp!1719361 () Bool)

(assert (=> b!6157119 (= e!3751508 tp!1719361)))

(declare-fun b!6157118 () Bool)

(declare-fun tp!1719360 () Bool)

(declare-fun tp!1719362 () Bool)

(assert (=> b!6157118 (= e!3751508 (and tp!1719360 tp!1719362))))

(declare-fun b!6157120 () Bool)

(declare-fun tp!1719359 () Bool)

(declare-fun tp!1719358 () Bool)

(assert (=> b!6157120 (= e!3751508 (and tp!1719359 tp!1719358))))

(declare-fun b!6157117 () Bool)

(assert (=> b!6157117 (= e!3751508 tp_is_empty!41451)))

(assert (=> b!6156159 (= tp!1719200 e!3751508)))

(assert (= (and b!6156159 ((_ is ElementMatch!16099) (regTwo!32710 (regTwo!32710 r!7292)))) b!6157117))

(assert (= (and b!6156159 ((_ is Concat!24944) (regTwo!32710 (regTwo!32710 r!7292)))) b!6157118))

(assert (= (and b!6156159 ((_ is Star!16099) (regTwo!32710 (regTwo!32710 r!7292)))) b!6157119))

(assert (= (and b!6156159 ((_ is Union!16099) (regTwo!32710 (regTwo!32710 r!7292)))) b!6157120))

(declare-fun b!6157123 () Bool)

(declare-fun e!3751509 () Bool)

(declare-fun tp!1719366 () Bool)

(assert (=> b!6157123 (= e!3751509 tp!1719366)))

(declare-fun b!6157122 () Bool)

(declare-fun tp!1719365 () Bool)

(declare-fun tp!1719367 () Bool)

(assert (=> b!6157122 (= e!3751509 (and tp!1719365 tp!1719367))))

(declare-fun b!6157124 () Bool)

(declare-fun tp!1719364 () Bool)

(declare-fun tp!1719363 () Bool)

(assert (=> b!6157124 (= e!3751509 (and tp!1719364 tp!1719363))))

(declare-fun b!6157121 () Bool)

(assert (=> b!6157121 (= e!3751509 tp_is_empty!41451)))

(assert (=> b!6156138 (= tp!1719176 e!3751509)))

(assert (= (and b!6156138 ((_ is ElementMatch!16099) (regOne!32710 (reg!16428 r!7292)))) b!6157121))

(assert (= (and b!6156138 ((_ is Concat!24944) (regOne!32710 (reg!16428 r!7292)))) b!6157122))

(assert (= (and b!6156138 ((_ is Star!16099) (regOne!32710 (reg!16428 r!7292)))) b!6157123))

(assert (= (and b!6156138 ((_ is Union!16099) (regOne!32710 (reg!16428 r!7292)))) b!6157124))

(declare-fun b!6157127 () Bool)

(declare-fun e!3751510 () Bool)

(declare-fun tp!1719371 () Bool)

(assert (=> b!6157127 (= e!3751510 tp!1719371)))

(declare-fun b!6157126 () Bool)

(declare-fun tp!1719370 () Bool)

(declare-fun tp!1719372 () Bool)

(assert (=> b!6157126 (= e!3751510 (and tp!1719370 tp!1719372))))

(declare-fun b!6157128 () Bool)

(declare-fun tp!1719369 () Bool)

(declare-fun tp!1719368 () Bool)

(assert (=> b!6157128 (= e!3751510 (and tp!1719369 tp!1719368))))

(declare-fun b!6157125 () Bool)

(assert (=> b!6157125 (= e!3751510 tp_is_empty!41451)))

(assert (=> b!6156138 (= tp!1719178 e!3751510)))

(assert (= (and b!6156138 ((_ is ElementMatch!16099) (regTwo!32710 (reg!16428 r!7292)))) b!6157125))

(assert (= (and b!6156138 ((_ is Concat!24944) (regTwo!32710 (reg!16428 r!7292)))) b!6157126))

(assert (= (and b!6156138 ((_ is Star!16099) (regTwo!32710 (reg!16428 r!7292)))) b!6157127))

(assert (= (and b!6156138 ((_ is Union!16099) (regTwo!32710 (reg!16428 r!7292)))) b!6157128))

(declare-fun b_lambda!234357 () Bool)

(assert (= b_lambda!234331 (or d!1928767 b_lambda!234357)))

(declare-fun bs!1526036 () Bool)

(declare-fun d!1929285 () Bool)

(assert (= bs!1526036 (and d!1929285 d!1928767)))

(assert (=> bs!1526036 (= (dynLambda!25418 lambda!335830 (h!70920 (exprs!5983 (h!70921 zl!343)))) (validRegex!7835 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(declare-fun m!6995756 () Bool)

(assert (=> bs!1526036 m!6995756))

(assert (=> b!6156341 d!1929285))

(declare-fun b_lambda!234359 () Bool)

(assert (= b_lambda!234355 (or b!6155358 b_lambda!234359)))

(assert (=> d!1929221 d!1928847))

(declare-fun b_lambda!234361 () Bool)

(assert (= b_lambda!234333 (or d!1928715 b_lambda!234361)))

(declare-fun bs!1526037 () Bool)

(declare-fun d!1929289 () Bool)

(assert (= bs!1526037 (and d!1929289 d!1928715)))

(assert (=> bs!1526037 (= (dynLambda!25418 lambda!335816 (h!70920 (exprs!5983 (h!70921 zl!343)))) (validRegex!7835 (h!70920 (exprs!5983 (h!70921 zl!343)))))))

(assert (=> bs!1526037 m!6995756))

(assert (=> b!6156394 d!1929289))

(declare-fun b_lambda!234363 () Bool)

(assert (= b_lambda!234327 (or d!1928747 b_lambda!234363)))

(declare-fun bs!1526038 () Bool)

(declare-fun d!1929291 () Bool)

(assert (= bs!1526038 (and d!1929291 d!1928747)))

(assert (=> bs!1526038 (= (dynLambda!25418 lambda!335820 (h!70920 (unfocusZipperList!1520 zl!343))) (validRegex!7835 (h!70920 (unfocusZipperList!1520 zl!343))))))

(declare-fun m!6995758 () Bool)

(assert (=> bs!1526038 m!6995758))

(assert (=> b!6156278 d!1929291))

(declare-fun b_lambda!234365 () Bool)

(assert (= b_lambda!234345 (or b!6155358 b_lambda!234365)))

(assert (=> d!1929127 d!1928851))

(declare-fun b_lambda!234367 () Bool)

(assert (= b_lambda!234325 (or d!1928765 b_lambda!234367)))

(declare-fun bs!1526039 () Bool)

(declare-fun d!1929293 () Bool)

(assert (= bs!1526039 (and d!1929293 d!1928765)))

(assert (=> bs!1526039 (= (dynLambda!25418 lambda!335825 (h!70920 (exprs!5983 setElem!41694))) (validRegex!7835 (h!70920 (exprs!5983 setElem!41694))))))

(declare-fun m!6995760 () Bool)

(assert (=> bs!1526039 m!6995760))

(assert (=> b!6156240 d!1929293))

(declare-fun b_lambda!234369 () Bool)

(assert (= b_lambda!234337 (or d!1928751 b_lambda!234369)))

(declare-fun bs!1526040 () Bool)

(declare-fun d!1929295 () Bool)

(assert (= bs!1526040 (and d!1929295 d!1928751)))

(assert (=> bs!1526040 (= (dynLambda!25418 lambda!335823 (h!70920 lt!2335190)) (validRegex!7835 (h!70920 lt!2335190)))))

(declare-fun m!6995762 () Bool)

(assert (=> bs!1526040 m!6995762))

(assert (=> b!6156429 d!1929295))

(declare-fun b_lambda!234371 () Bool)

(assert (= b_lambda!234329 (or d!1928719 b_lambda!234371)))

(declare-fun bs!1526041 () Bool)

(declare-fun d!1929297 () Bool)

(assert (= bs!1526041 (and d!1929297 d!1928719)))

(assert (=> bs!1526041 (= (dynLambda!25418 lambda!335817 (h!70920 (exprs!5983 lt!2335134))) (validRegex!7835 (h!70920 (exprs!5983 lt!2335134))))))

(declare-fun m!6995764 () Bool)

(assert (=> bs!1526041 m!6995764))

(assert (=> b!6156303 d!1929297))

(declare-fun b_lambda!234373 () Bool)

(assert (= b_lambda!234351 (or b!6155358 b_lambda!234373)))

(assert (=> d!1929201 d!1928849))

(check-sat (not b!6157010) (not d!1928867) (not b!6157013) (not b!6156557) (not d!1929111) (not d!1928911) (not b!6157033) (not b!6157071) (not d!1929231) (not b!6156330) (not b!6157055) (not b!6157075) (not setNonEmpty!41703) (not d!1929073) (not b!6156684) (not b!6157050) (not b!6156420) (not b!6156727) (not b!6156357) (not b!6156905) (not b!6157128) (not b!6156529) (not b!6156554) (not bm!512465) (not bm!512524) (not b_lambda!234357) (not d!1928889) (not b!6157049) (not b!6156230) (not b!6157030) (not b!6156491) (not b!6157090) (not b!6156687) (not bs!1526041) (not b!6156801) (not bm!512344) (not b!6157023) (not bm!512371) (not b!6157102) (not b_lambda!234321) (not b_lambda!234323) (not d!1929027) (not b!6156342) (not b!6156487) (not b!6156176) (not b!6156247) (not b!6157098) (not bm!512381) (not b!6157092) (not b!6156241) (not bm!512512) (not bm!512520) (not b!6157104) (not bm!512354) (not b_lambda!234367) (not b!6157082) (not b_lambda!234363) (not b!6156312) (not d!1928943) (not bm!512392) (not b!6157017) (not b!6157025) (not b!6157014) (not b!6157123) (not b!6157016) (not b!6157007) (not bm!512467) (not b!6157127) (not b!6156786) (not b!6157042) (not d!1928859) (not b!6156280) (not b!6156313) (not b!6156267) (not b!6156248) (not d!1928869) (not b!6156271) (not d!1928975) (not b!6156743) (not bm!512455) (not b!6156788) (not b!6157038) (not bm!512476) (not bm!512414) (not b!6157096) (not b!6157069) (not d!1929225) (not b!6157051) (not d!1929079) (not d!1929283) (not b!6156347) (not b!6156246) (not b!6156590) (not b!6156688) (not b!6157039) (not d!1928983) (not b!6157084) (not setNonEmpty!41704) (not b_lambda!234365) (not b!6156189) (not b!6156741) (not d!1929271) (not bm!512413) (not b!6156808) (not b!6156186) (not b!6156490) (not b!6156284) (not b!6156894) (not b!6156977) (not d!1929127) (not b!6156815) (not b!6157059) (not bm!512433) (not b_lambda!234359) (not b!6156345) (not b!6156735) (not d!1928877) (not bm!512416) (not b!6156519) (not b!6156544) (not bm!512511) (not b!6156799) (not d!1929193) (not bm!512383) (not setNonEmpty!41706) (not bs!1526037) (not d!1928901) (not bm!512432) (not b!6157054) (not bm!512507) (not b!6156534) (not bm!512336) (not b!6156285) (not b!6157070) (not b!6156334) (not b!6156974) (not b!6157019) (not d!1928891) (not b!6156733) (not d!1929207) (not b!6156693) (not b!6156482) (not d!1928907) (not d!1929257) (not b!6156614) (not b!6156266) (not b!6156481) (not b!6157027) (not d!1928941) (not b!6156794) (not b!6157076) (not d!1928949) (not bm!512418) (not b!6156803) (not b!6156793) (not bm!512440) (not b!6156716) (not b!6156692) (not d!1929105) (not bm!512508) (not d!1928955) (not b!6157088) (not d!1929237) (not b!6156575) (not d!1928969) (not b!6156290) (not bm!512366) (not b!6157009) (not bm!512424) (not b!6156690) (not b!6156966) (not b!6156304) (not b!6157037) (not b!6157062) (not bm!512469) (not b!6157008) (not b!6156909) (not bm!512452) (not d!1929219) (not b!6157045) (not b!6156549) (not b!6156233) (not b!6157029) (not d!1928981) (not b!6157063) (not bm!512352) (not d!1928953) (not bm!512393) (not setNonEmpty!41705) (not d!1928913) (not d!1929087) (not b!6157046) (not b!6157093) (not b!6157005) (not b!6157106) (not d!1929175) (not bm!512426) (not bm!512453) (not bm!512420) (not b!6156962) (not d!1929091) (not b!6157035) (not b!6157061) (not b!6156599) (not b!6157097) (not b_lambda!234369) (not bm!512442) (not b!6156764) (not d!1928951) (not b!6156558) (not b!6157047) (not d!1929113) (not b!6156718) (not b!6157100) (not b_lambda!234373) (not bm!512347) (not bm!512526) (not b!6156537) (not b!6156528) (not b!6157122) (not b!6156975) (not bm!512470) (not d!1929195) (not bm!512477) (not b!6156736) (not bm!512364) (not b!6156530) (not b!6156188) (not b!6157012) (not b!6156293) (not bm!512522) (not b!6156951) (not b!6156750) (not b!6156723) (not b!6157119) (not d!1928957) (not bm!512415) (not b!6157101) (not b!6156765) (not b!6156486) (not d!1929201) (not bm!512375) (not bs!1526038) (not bm!512399) (not d!1929023) (not b!6156194) (not b!6156689) (not b!6156279) (not b!6156268) (not b!6157105) (not bm!512373) (not b!6157018) (not b!6156728) (not b!6156430) (not bm!512528) (not b!6157078) (not b!6157031) (not b!6156978) (not bm!512422) (not b!6156973) (not bm!512456) (not bm!512531) (not d!1929071) (not b!6156556) (not b!6157006) (not b!6156215) (not b!6156559) (not bs!1526039) (not b!6157067) (not b!6157081) (not b!6156787) (not b!6157118) (not bm!512338) (not b!6156232) (not bm!512444) (not b!6156523) (not b!6157058) (not b!6156813) (not d!1929137) (not d!1928919) (not b!6156390) (not bm!512471) (not d!1928917) (not d!1929063) (not b!6157022) (not d!1928939) tp_is_empty!41451 (not b!6157057) (not b!6157080) (not b!6156802) (not b!6156389) (not b!6157021) (not b!6157066) (not bm!512378) (not b!6157126) (not d!1929229) (not d!1929221) (not b!6156265) (not b!6157073) (not b!6157077) (not b!6156395) (not bm!512385) (not b!6156255) (not b!6156244) (not bs!1526036) (not b!6157043) (not b!6157041) (not b!6157085) (not d!1929075) (not b!6157034) (not b!6156807) (not b!6156706) (not d!1928935) (not b!6157026) (not bm!512362) (not bm!512348) (not b!6156979) (not bm!512380) (not d!1929223) (not b!6156653) (not b!6156752) (not b!6157053) (not bm!512518) (not b!6156548) (not b!6156231) (not b!6156789) (not b!6156682) (not d!1929177) (not b!6156686) (not d!1929217) (not bm!512334) (not b!6156981) (not b!6156172) (not b_lambda!234361) (not d!1929005) (not bm!512532) (not b!6156816) (not b_lambda!234371) (not d!1929227) (not b!6157124) (not bm!512463) (not d!1929083) (not bm!512454) (not bm!512398) (not b!6157089) (not d!1929155) (not d!1929059) (not bm!512342) (not bm!512340) (not b!6157065) (not b!6157120) (not b!6157004) (not b!6157094) (not b!6156517) (not bm!512350) (not b!6157074) (not b!6156618) (not bm!512379) (not b!6156292) (not b_lambda!234319) (not d!1929025) (not bm!512365) (not b!6157086) (not bs!1526040))
(check-sat)
