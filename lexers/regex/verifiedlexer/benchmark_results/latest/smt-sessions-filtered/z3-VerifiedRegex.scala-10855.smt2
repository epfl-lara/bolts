; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559666 () Bool)

(assert start!559666)

(declare-fun b!5306954 () Bool)

(assert (=> b!5306954 true))

(assert (=> b!5306954 true))

(declare-fun lambda!270045 () Int)

(declare-fun lambda!270044 () Int)

(assert (=> b!5306954 (not (= lambda!270045 lambda!270044))))

(assert (=> b!5306954 true))

(assert (=> b!5306954 true))

(declare-fun b!5306936 () Bool)

(assert (=> b!5306936 true))

(declare-fun bs!1230556 () Bool)

(declare-fun b!5306931 () Bool)

(assert (= bs!1230556 (and b!5306931 b!5306954)))

(declare-datatypes ((C!30184 0))(
  ( (C!30185 (val!24794 Int)) )
))
(declare-datatypes ((Regex!14957 0))(
  ( (ElementMatch!14957 (c!921537 C!30184)) (Concat!23802 (regOne!30426 Regex!14957) (regTwo!30426 Regex!14957)) (EmptyExpr!14957) (Star!14957 (reg!15286 Regex!14957)) (EmptyLang!14957) (Union!14957 (regOne!30427 Regex!14957) (regTwo!30427 Regex!14957)) )
))
(declare-fun r!7292 () Regex!14957)

(declare-fun lambda!270047 () Int)

(declare-fun lt!2168544 () Regex!14957)

(assert (=> bs!1230556 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270047 lambda!270044))))

(assert (=> bs!1230556 (not (= lambda!270047 lambda!270045))))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(declare-fun lambda!270048 () Int)

(assert (=> bs!1230556 (not (= lambda!270048 lambda!270044))))

(assert (=> bs!1230556 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270048 lambda!270045))))

(assert (=> b!5306931 (not (= lambda!270048 lambda!270047))))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(declare-fun lt!2168572 () Regex!14957)

(declare-fun lambda!270049 () Int)

(assert (=> bs!1230556 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270049 lambda!270044))))

(assert (=> bs!1230556 (not (= lambda!270049 lambda!270045))))

(assert (=> b!5306931 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270049 lambda!270047))))

(assert (=> b!5306931 (not (= lambda!270049 lambda!270048))))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(declare-fun lambda!270050 () Int)

(assert (=> b!5306931 (not (= lambda!270050 lambda!270049))))

(assert (=> bs!1230556 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270050 lambda!270045))))

(assert (=> b!5306931 (not (= lambda!270050 lambda!270047))))

(assert (=> b!5306931 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270050 lambda!270048))))

(assert (=> bs!1230556 (not (= lambda!270050 lambda!270044))))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(assert (=> b!5306931 true))

(declare-fun b!5306928 () Bool)

(declare-fun e!3298033 () Bool)

(declare-fun e!3298026 () Bool)

(assert (=> b!5306928 (= e!3298033 e!3298026)))

(declare-fun res!2251244 () Bool)

(assert (=> b!5306928 (=> res!2251244 e!3298026)))

(declare-datatypes ((List!61170 0))(
  ( (Nil!61046) (Cons!61046 (h!67494 Regex!14957) (t!374375 List!61170)) )
))
(declare-datatypes ((Context!8682 0))(
  ( (Context!8683 (exprs!4841 List!61170)) )
))
(declare-datatypes ((List!61171 0))(
  ( (Nil!61047) (Cons!61047 (h!67495 Context!8682) (t!374376 List!61171)) )
))
(declare-fun lt!2168560 () List!61171)

(declare-fun zl!343 () List!61171)

(declare-fun zipperDepthTotal!118 (List!61171) Int)

(assert (=> b!5306928 (= res!2251244 (>= (zipperDepthTotal!118 lt!2168560) (zipperDepthTotal!118 zl!343)))))

(declare-fun lt!2168559 () Context!8682)

(assert (=> b!5306928 (= lt!2168560 (Cons!61047 lt!2168559 Nil!61047))))

(declare-fun b!5306929 () Bool)

(declare-fun res!2251257 () Bool)

(declare-fun e!3298039 () Bool)

(assert (=> b!5306929 (=> res!2251257 e!3298039)))

(declare-fun generalisedUnion!886 (List!61170) Regex!14957)

(declare-fun unfocusZipperList!399 (List!61171) List!61170)

(assert (=> b!5306929 (= res!2251257 (not (= r!7292 (generalisedUnion!886 (unfocusZipperList!399 zl!343)))))))

(declare-fun setIsEmpty!34115 () Bool)

(declare-fun setRes!34115 () Bool)

(assert (=> setIsEmpty!34115 setRes!34115))

(declare-fun b!5306930 () Bool)

(declare-fun e!3298034 () Bool)

(declare-fun tp!1479097 () Bool)

(declare-fun tp!1479102 () Bool)

(assert (=> b!5306930 (= e!3298034 (and tp!1479097 tp!1479102))))

(declare-fun e!3298043 () Bool)

(assert (=> b!5306931 (= e!3298026 e!3298043)))

(declare-fun res!2251246 () Bool)

(assert (=> b!5306931 (=> res!2251246 e!3298043)))

(declare-fun lt!2168543 () Bool)

(declare-fun lt!2168571 () Bool)

(declare-fun lt!2168567 () Bool)

(declare-fun lt!2168531 () Bool)

(declare-fun lt!2168538 () Bool)

(assert (=> b!5306931 (= res!2251246 (or (not (= lt!2168571 (or lt!2168538 lt!2168543))) (not (= lt!2168571 (or lt!2168567 lt!2168531)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8682))

(declare-datatypes ((List!61172 0))(
  ( (Nil!61048) (Cons!61048 (h!67496 C!30184) (t!374377 List!61172)) )
))
(declare-fun s!2326 () List!61172)

(declare-fun matchZipper!1201 ((InoxSet Context!8682) List!61172) Bool)

(assert (=> b!5306931 (= lt!2168571 (matchZipper!1201 z!1189 s!2326))))

(declare-fun Exists!2138 (Int) Bool)

(assert (=> b!5306931 (= (Exists!2138 lambda!270049) (Exists!2138 lambda!270050))))

(declare-datatypes ((Unit!153346 0))(
  ( (Unit!153347) )
))
(declare-fun lt!2168528 () Unit!153346)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!792 (Regex!14957 Regex!14957 List!61172) Unit!153346)

(assert (=> b!5306931 (= lt!2168528 (lemmaExistCutMatchRandMatchRSpecEquivalent!792 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 s!2326))))

(declare-datatypes ((tuple2!64312 0))(
  ( (tuple2!64313 (_1!35459 List!61172) (_2!35459 List!61172)) )
))
(declare-datatypes ((Option!15068 0))(
  ( (None!15067) (Some!15067 (v!51096 tuple2!64312)) )
))
(declare-fun isDefined!11771 (Option!15068) Bool)

(declare-fun findConcatSeparation!1482 (Regex!14957 Regex!14957 List!61172 List!61172 List!61172) Option!15068)

(assert (=> b!5306931 (= (isDefined!11771 (findConcatSeparation!1482 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 Nil!61048 s!2326 s!2326)) (Exists!2138 lambda!270049))))

(declare-fun lt!2168552 () Unit!153346)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1246 (Regex!14957 Regex!14957 List!61172) Unit!153346)

(assert (=> b!5306931 (= lt!2168552 (lemmaFindConcatSeparationEquivalentToExists!1246 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 s!2326))))

(declare-fun generalisedConcat!626 (List!61170) Regex!14957)

(assert (=> b!5306931 (= lt!2168572 (generalisedConcat!626 (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun matchRSpec!2060 (Regex!14957 List!61172) Bool)

(assert (=> b!5306931 (= lt!2168531 (matchRSpec!2060 lt!2168544 s!2326))))

(declare-fun lt!2168545 () Unit!153346)

(declare-fun mainMatchTheorem!2060 (Regex!14957 List!61172) Unit!153346)

(assert (=> b!5306931 (= lt!2168545 (mainMatchTheorem!2060 lt!2168544 s!2326))))

(assert (=> b!5306931 (= (Exists!2138 lambda!270047) (Exists!2138 lambda!270048))))

(declare-fun lt!2168554 () Unit!153346)

(assert (=> b!5306931 (= lt!2168554 (lemmaExistCutMatchRandMatchRSpecEquivalent!792 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 s!2326))))

(assert (=> b!5306931 (= (isDefined!11771 (findConcatSeparation!1482 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 Nil!61048 s!2326 s!2326)) (Exists!2138 lambda!270047))))

(declare-fun lt!2168536 () Unit!153346)

(assert (=> b!5306931 (= lt!2168536 (lemmaFindConcatSeparationEquivalentToExists!1246 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 s!2326))))

(declare-fun lt!2168558 () Regex!14957)

(assert (=> b!5306931 (= lt!2168567 (matchRSpec!2060 lt!2168558 s!2326))))

(declare-fun lt!2168549 () Unit!153346)

(assert (=> b!5306931 (= lt!2168549 (mainMatchTheorem!2060 lt!2168558 s!2326))))

(assert (=> b!5306931 (= lt!2168531 lt!2168543)))

(declare-fun lt!2168576 () (InoxSet Context!8682))

(assert (=> b!5306931 (= lt!2168543 (matchZipper!1201 lt!2168576 s!2326))))

(declare-fun matchR!7142 (Regex!14957 List!61172) Bool)

(assert (=> b!5306931 (= lt!2168531 (matchR!7142 lt!2168544 s!2326))))

(declare-fun lt!2168547 () Unit!153346)

(declare-fun lt!2168534 () Context!8682)

(declare-fun theoremZipperRegexEquiv!367 ((InoxSet Context!8682) List!61171 Regex!14957 List!61172) Unit!153346)

(assert (=> b!5306931 (= lt!2168547 (theoremZipperRegexEquiv!367 lt!2168576 (Cons!61047 lt!2168534 Nil!61047) lt!2168544 s!2326))))

(declare-fun lt!2168541 () List!61170)

(assert (=> b!5306931 (= lt!2168544 (generalisedConcat!626 lt!2168541))))

(assert (=> b!5306931 (= lt!2168567 lt!2168538)))

(declare-fun lt!2168542 () (InoxSet Context!8682))

(assert (=> b!5306931 (= lt!2168538 (matchZipper!1201 lt!2168542 s!2326))))

(assert (=> b!5306931 (= lt!2168567 (matchR!7142 lt!2168558 s!2326))))

(declare-fun lt!2168540 () Unit!153346)

(assert (=> b!5306931 (= lt!2168540 (theoremZipperRegexEquiv!367 lt!2168542 lt!2168560 lt!2168558 s!2326))))

(declare-fun lt!2168537 () List!61170)

(assert (=> b!5306931 (= lt!2168558 (generalisedConcat!626 lt!2168537))))

(declare-fun b!5306932 () Bool)

(declare-fun res!2251252 () Bool)

(declare-fun e!3298028 () Bool)

(assert (=> b!5306932 (=> (not res!2251252) (not e!3298028))))

(declare-fun unfocusZipper!699 (List!61171) Regex!14957)

(assert (=> b!5306932 (= res!2251252 (= r!7292 (unfocusZipper!699 zl!343)))))

(declare-fun b!5306933 () Bool)

(declare-fun res!2251262 () Bool)

(assert (=> b!5306933 (=> res!2251262 e!3298043)))

(declare-fun lt!2168550 () Bool)

(declare-fun lt!2168562 () Regex!14957)

(assert (=> b!5306933 (= res!2251262 (not (= lt!2168550 (matchR!7142 (Concat!23802 lt!2168562 (regTwo!30426 r!7292)) s!2326))))))

(declare-fun b!5306934 () Bool)

(declare-fun res!2251248 () Bool)

(assert (=> b!5306934 (=> res!2251248 e!3298026)))

(declare-fun zipperDepth!74 (List!61171) Int)

(assert (=> b!5306934 (= res!2251248 (> (zipperDepth!74 lt!2168560) (zipperDepth!74 zl!343)))))

(declare-fun b!5306935 () Bool)

(declare-fun e!3298035 () Bool)

(declare-fun tp!1479099 () Bool)

(assert (=> b!5306935 (= e!3298035 tp!1479099)))

(declare-fun e!3298027 () Bool)

(declare-fun e!3298023 () Bool)

(assert (=> b!5306936 (= e!3298027 e!3298023)))

(declare-fun res!2251247 () Bool)

(assert (=> b!5306936 (=> res!2251247 e!3298023)))

(get-info :version)

(assert (=> b!5306936 (= res!2251247 (or (and ((_ is ElementMatch!14957) (regOne!30426 r!7292)) (= (c!921537 (regOne!30426 r!7292)) (h!67496 s!2326))) ((_ is Union!14957) (regOne!30426 r!7292)) (not ((_ is Concat!23802) (regOne!30426 r!7292)))))))

(declare-fun lt!2168569 () Unit!153346)

(declare-fun e!3298029 () Unit!153346)

(assert (=> b!5306936 (= lt!2168569 e!3298029)))

(declare-fun c!921536 () Bool)

(declare-fun nullable!5126 (Regex!14957) Bool)

(assert (=> b!5306936 (= c!921536 (nullable!5126 (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun lambda!270046 () Int)

(declare-fun flatMap!684 ((InoxSet Context!8682) Int) (InoxSet Context!8682))

(declare-fun derivationStepZipperUp!329 (Context!8682 C!30184) (InoxSet Context!8682))

(assert (=> b!5306936 (= (flatMap!684 z!1189 lambda!270046) (derivationStepZipperUp!329 (h!67495 zl!343) (h!67496 s!2326)))))

(declare-fun lt!2168553 () Unit!153346)

(declare-fun lemmaFlatMapOnSingletonSet!216 ((InoxSet Context!8682) Context!8682 Int) Unit!153346)

(assert (=> b!5306936 (= lt!2168553 (lemmaFlatMapOnSingletonSet!216 z!1189 (h!67495 zl!343) lambda!270046))))

(declare-fun lt!2168574 () (InoxSet Context!8682))

(declare-fun lt!2168561 () Context!8682)

(assert (=> b!5306936 (= lt!2168574 (derivationStepZipperUp!329 lt!2168561 (h!67496 s!2326)))))

(declare-fun lt!2168555 () (InoxSet Context!8682))

(declare-fun derivationStepZipperDown!405 (Regex!14957 Context!8682 C!30184) (InoxSet Context!8682))

(assert (=> b!5306936 (= lt!2168555 (derivationStepZipperDown!405 (h!67494 (exprs!4841 (h!67495 zl!343))) lt!2168561 (h!67496 s!2326)))))

(assert (=> b!5306936 (= lt!2168561 (Context!8683 (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun lt!2168535 () (InoxSet Context!8682))

(assert (=> b!5306936 (= lt!2168535 (derivationStepZipperUp!329 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343))))) (h!67496 s!2326)))))

(declare-fun b!5306937 () Bool)

(declare-fun e!3298032 () Bool)

(declare-fun lt!2168568 () (InoxSet Context!8682))

(assert (=> b!5306937 (= e!3298032 (matchZipper!1201 lt!2168568 (t!374377 s!2326)))))

(declare-fun b!5306938 () Bool)

(declare-fun e!3298036 () Bool)

(assert (=> b!5306938 (= e!3298036 (matchZipper!1201 lt!2168574 (t!374377 s!2326)))))

(declare-fun b!5306939 () Bool)

(declare-fun res!2251253 () Bool)

(assert (=> b!5306939 (=> (not res!2251253) (not e!3298028))))

(declare-fun toList!8741 ((InoxSet Context!8682)) List!61171)

(assert (=> b!5306939 (= res!2251253 (= (toList!8741 z!1189) zl!343))))

(declare-fun b!5306940 () Bool)

(declare-fun e!3298042 () Bool)

(declare-fun e!3298041 () Bool)

(assert (=> b!5306940 (= e!3298042 e!3298041)))

(declare-fun res!2251265 () Bool)

(assert (=> b!5306940 (=> res!2251265 e!3298041)))

(declare-fun lt!2168551 () (InoxSet Context!8682))

(declare-fun lt!2168539 () (InoxSet Context!8682))

(assert (=> b!5306940 (= res!2251265 (not (= lt!2168551 lt!2168539)))))

(declare-fun lt!2168533 () (InoxSet Context!8682))

(declare-fun lt!2168532 () (InoxSet Context!8682))

(assert (=> b!5306940 (= lt!2168539 ((_ map or) lt!2168533 lt!2168532))))

(assert (=> b!5306940 (= lt!2168532 (derivationStepZipperUp!329 lt!2168534 (h!67496 s!2326)))))

(assert (=> b!5306940 (= (flatMap!684 lt!2168542 lambda!270046) (derivationStepZipperUp!329 lt!2168559 (h!67496 s!2326)))))

(declare-fun lt!2168573 () Unit!153346)

(assert (=> b!5306940 (= lt!2168573 (lemmaFlatMapOnSingletonSet!216 lt!2168542 lt!2168559 lambda!270046))))

(declare-fun lt!2168566 () (InoxSet Context!8682))

(assert (=> b!5306940 (= lt!2168566 (derivationStepZipperUp!329 lt!2168559 (h!67496 s!2326)))))

(declare-fun derivationStepZipper!1200 ((InoxSet Context!8682) C!30184) (InoxSet Context!8682))

(assert (=> b!5306940 (= lt!2168551 (derivationStepZipper!1200 lt!2168542 (h!67496 s!2326)))))

(assert (=> b!5306940 (= lt!2168576 (store ((as const (Array Context!8682 Bool)) false) lt!2168534 true))))

(assert (=> b!5306940 (= lt!2168542 (store ((as const (Array Context!8682 Bool)) false) lt!2168559 true))))

(assert (=> b!5306940 (= lt!2168559 (Context!8683 lt!2168537))))

(assert (=> b!5306940 (= lt!2168537 (Cons!61046 (regOne!30426 (regOne!30426 r!7292)) lt!2168541))))

(declare-fun b!5306941 () Bool)

(declare-fun tp_is_empty!39167 () Bool)

(assert (=> b!5306941 (= e!3298034 tp_is_empty!39167)))

(declare-fun b!5306942 () Bool)

(declare-fun e!3298037 () Bool)

(assert (=> b!5306942 (= e!3298037 e!3298042)))

(declare-fun res!2251249 () Bool)

(assert (=> b!5306942 (=> res!2251249 e!3298042)))

(declare-fun e!3298025 () Bool)

(assert (=> b!5306942 (= res!2251249 e!3298025)))

(declare-fun res!2251250 () Bool)

(assert (=> b!5306942 (=> (not res!2251250) (not e!3298025))))

(declare-fun lt!2168529 () Bool)

(declare-fun lt!2168546 () Bool)

(assert (=> b!5306942 (= res!2251250 (not (= lt!2168529 lt!2168546)))))

(assert (=> b!5306942 (= lt!2168529 (matchZipper!1201 lt!2168555 (t!374377 s!2326)))))

(declare-fun lt!2168563 () (InoxSet Context!8682))

(assert (=> b!5306942 (= (matchZipper!1201 lt!2168563 (t!374377 s!2326)) e!3298032)))

(declare-fun res!2251270 () Bool)

(assert (=> b!5306942 (=> res!2251270 e!3298032)))

(assert (=> b!5306942 (= res!2251270 lt!2168546)))

(assert (=> b!5306942 (= lt!2168546 (matchZipper!1201 lt!2168533 (t!374377 s!2326)))))

(declare-fun lt!2168530 () Unit!153346)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!194 ((InoxSet Context!8682) (InoxSet Context!8682) List!61172) Unit!153346)

(assert (=> b!5306942 (= lt!2168530 (lemmaZipperConcatMatchesSameAsBothZippers!194 lt!2168533 lt!2168568 (t!374377 s!2326)))))

(declare-fun b!5306943 () Bool)

(declare-fun Unit!153348 () Unit!153346)

(assert (=> b!5306943 (= e!3298029 Unit!153348)))

(declare-fun b!5306944 () Bool)

(declare-fun res!2251261 () Bool)

(assert (=> b!5306944 (=> res!2251261 e!3298039)))

(assert (=> b!5306944 (= res!2251261 (not ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5306945 () Bool)

(declare-fun res!2251251 () Bool)

(assert (=> b!5306945 (=> res!2251251 e!3298043)))

(assert (=> b!5306945 (= res!2251251 (not (= lt!2168550 (matchR!7142 (Concat!23802 lt!2168562 lt!2168572) s!2326))))))

(declare-fun b!5306946 () Bool)

(declare-fun res!2251245 () Bool)

(assert (=> b!5306946 (=> res!2251245 e!3298039)))

(assert (=> b!5306946 (= res!2251245 (or ((_ is EmptyExpr!14957) r!7292) ((_ is EmptyLang!14957) r!7292) ((_ is ElementMatch!14957) r!7292) ((_ is Union!14957) r!7292) (not ((_ is Concat!23802) r!7292))))))

(declare-fun res!2251266 () Bool)

(assert (=> start!559666 (=> (not res!2251266) (not e!3298028))))

(declare-fun validRegex!6693 (Regex!14957) Bool)

(assert (=> start!559666 (= res!2251266 (validRegex!6693 r!7292))))

(assert (=> start!559666 e!3298028))

(assert (=> start!559666 e!3298034))

(declare-fun condSetEmpty!34115 () Bool)

(assert (=> start!559666 (= condSetEmpty!34115 (= z!1189 ((as const (Array Context!8682 Bool)) false)))))

(assert (=> start!559666 setRes!34115))

(declare-fun e!3298044 () Bool)

(assert (=> start!559666 e!3298044))

(declare-fun e!3298031 () Bool)

(assert (=> start!559666 e!3298031))

(declare-fun b!5306947 () Bool)

(declare-fun tp!1479100 () Bool)

(assert (=> b!5306947 (= e!3298034 tp!1479100)))

(declare-fun b!5306948 () Bool)

(assert (=> b!5306948 (= e!3298025 (not (matchZipper!1201 lt!2168568 (t!374377 s!2326))))))

(declare-fun b!5306949 () Bool)

(declare-fun res!2251263 () Bool)

(assert (=> b!5306949 (=> res!2251263 e!3298033)))

(declare-fun contextDepthTotal!98 (Context!8682) Int)

(assert (=> b!5306949 (= res!2251263 (>= (contextDepthTotal!98 lt!2168559) (contextDepthTotal!98 (h!67495 zl!343))))))

(declare-fun b!5306950 () Bool)

(declare-fun e!3298030 () Bool)

(assert (=> b!5306950 (= e!3298030 (not (matchZipper!1201 (derivationStepZipper!1200 lt!2168576 (h!67496 s!2326)) (t!374377 s!2326))))))

(declare-fun b!5306951 () Bool)

(declare-fun e!3298040 () Bool)

(assert (=> b!5306951 (= e!3298041 e!3298040)))

(declare-fun res!2251273 () Bool)

(assert (=> b!5306951 (=> res!2251273 e!3298040)))

(assert (=> b!5306951 (= res!2251273 e!3298030)))

(declare-fun res!2251269 () Bool)

(assert (=> b!5306951 (=> (not res!2251269) (not e!3298030))))

(assert (=> b!5306951 (= res!2251269 (not (= lt!2168529 (matchZipper!1201 lt!2168551 (t!374377 s!2326)))))))

(declare-fun e!3298024 () Bool)

(assert (=> b!5306951 (= (matchZipper!1201 lt!2168539 (t!374377 s!2326)) e!3298024)))

(declare-fun res!2251264 () Bool)

(assert (=> b!5306951 (=> res!2251264 e!3298024)))

(assert (=> b!5306951 (= res!2251264 lt!2168546)))

(declare-fun lt!2168575 () Unit!153346)

(assert (=> b!5306951 (= lt!2168575 (lemmaZipperConcatMatchesSameAsBothZippers!194 lt!2168533 lt!2168532 (t!374377 s!2326)))))

(assert (=> b!5306951 (= (flatMap!684 lt!2168576 lambda!270046) (derivationStepZipperUp!329 lt!2168534 (h!67496 s!2326)))))

(declare-fun lt!2168570 () Unit!153346)

(assert (=> b!5306951 (= lt!2168570 (lemmaFlatMapOnSingletonSet!216 lt!2168576 lt!2168534 lambda!270046))))

(declare-fun b!5306952 () Bool)

(declare-fun e!3298038 () Bool)

(declare-fun tp!1479105 () Bool)

(assert (=> b!5306952 (= e!3298038 tp!1479105)))

(declare-fun b!5306953 () Bool)

(declare-fun lambda!270051 () Int)

(declare-fun forall!14373 (List!61170 Int) Bool)

(assert (=> b!5306953 (= e!3298043 (forall!14373 (t!374375 (exprs!4841 (h!67495 zl!343))) lambda!270051))))

(assert (=> b!5306954 (= e!3298039 e!3298027)))

(declare-fun res!2251259 () Bool)

(assert (=> b!5306954 (=> res!2251259 e!3298027)))

(declare-fun lt!2168565 () Bool)

(assert (=> b!5306954 (= res!2251259 (or (not (= lt!2168550 lt!2168565)) ((_ is Nil!61048) s!2326)))))

(assert (=> b!5306954 (= (Exists!2138 lambda!270044) (Exists!2138 lambda!270045))))

(declare-fun lt!2168548 () Unit!153346)

(assert (=> b!5306954 (= lt!2168548 (lemmaExistCutMatchRandMatchRSpecEquivalent!792 (regOne!30426 r!7292) (regTwo!30426 r!7292) s!2326))))

(assert (=> b!5306954 (= lt!2168565 (Exists!2138 lambda!270044))))

(assert (=> b!5306954 (= lt!2168565 (isDefined!11771 (findConcatSeparation!1482 (regOne!30426 r!7292) (regTwo!30426 r!7292) Nil!61048 s!2326 s!2326)))))

(declare-fun lt!2168556 () Unit!153346)

(assert (=> b!5306954 (= lt!2168556 (lemmaFindConcatSeparationEquivalentToExists!1246 (regOne!30426 r!7292) (regTwo!30426 r!7292) s!2326))))

(declare-fun b!5306955 () Bool)

(declare-fun tp!1479098 () Bool)

(declare-fun tp!1479104 () Bool)

(assert (=> b!5306955 (= e!3298034 (and tp!1479098 tp!1479104))))

(declare-fun b!5306956 () Bool)

(declare-fun tp!1479103 () Bool)

(assert (=> b!5306956 (= e!3298031 (and tp_is_empty!39167 tp!1479103))))

(declare-fun b!5306957 () Bool)

(declare-fun Unit!153349 () Unit!153346)

(assert (=> b!5306957 (= e!3298029 Unit!153349)))

(declare-fun lt!2168557 () Unit!153346)

(assert (=> b!5306957 (= lt!2168557 (lemmaZipperConcatMatchesSameAsBothZippers!194 lt!2168555 lt!2168574 (t!374377 s!2326)))))

(declare-fun res!2251255 () Bool)

(assert (=> b!5306957 (= res!2251255 (matchZipper!1201 lt!2168555 (t!374377 s!2326)))))

(assert (=> b!5306957 (=> res!2251255 e!3298036)))

(assert (=> b!5306957 (= (matchZipper!1201 ((_ map or) lt!2168555 lt!2168574) (t!374377 s!2326)) e!3298036)))

(declare-fun b!5306958 () Bool)

(declare-fun res!2251267 () Bool)

(assert (=> b!5306958 (=> res!2251267 e!3298039)))

(declare-fun isEmpty!33007 (List!61171) Bool)

(assert (=> b!5306958 (= res!2251267 (not (isEmpty!33007 (t!374376 zl!343))))))

(declare-fun setElem!34115 () Context!8682)

(declare-fun setNonEmpty!34115 () Bool)

(declare-fun tp!1479096 () Bool)

(declare-fun inv!80639 (Context!8682) Bool)

(assert (=> setNonEmpty!34115 (= setRes!34115 (and tp!1479096 (inv!80639 setElem!34115) e!3298038))))

(declare-fun setRest!34115 () (InoxSet Context!8682))

(assert (=> setNonEmpty!34115 (= z!1189 ((_ map or) (store ((as const (Array Context!8682 Bool)) false) setElem!34115 true) setRest!34115))))

(declare-fun b!5306959 () Bool)

(assert (=> b!5306959 (= e!3298028 (not e!3298039))))

(declare-fun res!2251268 () Bool)

(assert (=> b!5306959 (=> res!2251268 e!3298039)))

(assert (=> b!5306959 (= res!2251268 (not ((_ is Cons!61047) zl!343)))))

(assert (=> b!5306959 (= lt!2168550 (matchRSpec!2060 r!7292 s!2326))))

(assert (=> b!5306959 (= lt!2168550 (matchR!7142 r!7292 s!2326))))

(declare-fun lt!2168564 () Unit!153346)

(assert (=> b!5306959 (= lt!2168564 (mainMatchTheorem!2060 r!7292 s!2326))))

(declare-fun b!5306960 () Bool)

(declare-fun tp!1479101 () Bool)

(assert (=> b!5306960 (= e!3298044 (and (inv!80639 (h!67495 zl!343)) e!3298035 tp!1479101))))

(declare-fun b!5306961 () Bool)

(declare-fun res!2251272 () Bool)

(assert (=> b!5306961 (=> res!2251272 e!3298023)))

(assert (=> b!5306961 (= res!2251272 (not (nullable!5126 (regOne!30426 (regOne!30426 r!7292)))))))

(declare-fun b!5306962 () Bool)

(assert (=> b!5306962 (= e!3298040 e!3298033)))

(declare-fun res!2251254 () Bool)

(assert (=> b!5306962 (=> res!2251254 e!3298033)))

(assert (=> b!5306962 (= res!2251254 (not (= (exprs!4841 (h!67495 zl!343)) (Cons!61046 lt!2168562 (t!374375 (exprs!4841 (h!67495 zl!343)))))))))

(assert (=> b!5306962 (= lt!2168562 (Concat!23802 (regOne!30426 (regOne!30426 r!7292)) (regTwo!30426 (regOne!30426 r!7292))))))

(declare-fun b!5306963 () Bool)

(assert (=> b!5306963 (= e!3298024 (matchZipper!1201 lt!2168532 (t!374377 s!2326)))))

(declare-fun b!5306964 () Bool)

(declare-fun res!2251271 () Bool)

(assert (=> b!5306964 (=> res!2251271 e!3298043)))

(assert (=> b!5306964 (= res!2251271 (not (= lt!2168550 (matchR!7142 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292)) s!2326))))))

(declare-fun b!5306965 () Bool)

(declare-fun res!2251260 () Bool)

(assert (=> b!5306965 (=> res!2251260 e!3298027)))

(declare-fun isEmpty!33008 (List!61170) Bool)

(assert (=> b!5306965 (= res!2251260 (isEmpty!33008 (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5306966 () Bool)

(declare-fun res!2251258 () Bool)

(assert (=> b!5306966 (=> res!2251258 e!3298039)))

(assert (=> b!5306966 (= res!2251258 (not (= r!7292 (generalisedConcat!626 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5306967 () Bool)

(assert (=> b!5306967 (= e!3298023 e!3298037)))

(declare-fun res!2251256 () Bool)

(assert (=> b!5306967 (=> res!2251256 e!3298037)))

(assert (=> b!5306967 (= res!2251256 (not (= lt!2168555 lt!2168563)))))

(assert (=> b!5306967 (= lt!2168563 ((_ map or) lt!2168533 lt!2168568))))

(assert (=> b!5306967 (= lt!2168568 (derivationStepZipperDown!405 (regTwo!30426 (regOne!30426 r!7292)) lt!2168561 (h!67496 s!2326)))))

(assert (=> b!5306967 (= lt!2168533 (derivationStepZipperDown!405 (regOne!30426 (regOne!30426 r!7292)) lt!2168534 (h!67496 s!2326)))))

(assert (=> b!5306967 (= lt!2168534 (Context!8683 lt!2168541))))

(assert (=> b!5306967 (= lt!2168541 (Cons!61046 (regTwo!30426 (regOne!30426 r!7292)) (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(assert (= (and start!559666 res!2251266) b!5306939))

(assert (= (and b!5306939 res!2251253) b!5306932))

(assert (= (and b!5306932 res!2251252) b!5306959))

(assert (= (and b!5306959 (not res!2251268)) b!5306958))

(assert (= (and b!5306958 (not res!2251267)) b!5306966))

(assert (= (and b!5306966 (not res!2251258)) b!5306944))

(assert (= (and b!5306944 (not res!2251261)) b!5306929))

(assert (= (and b!5306929 (not res!2251257)) b!5306946))

(assert (= (and b!5306946 (not res!2251245)) b!5306954))

(assert (= (and b!5306954 (not res!2251259)) b!5306965))

(assert (= (and b!5306965 (not res!2251260)) b!5306936))

(assert (= (and b!5306936 c!921536) b!5306957))

(assert (= (and b!5306936 (not c!921536)) b!5306943))

(assert (= (and b!5306957 (not res!2251255)) b!5306938))

(assert (= (and b!5306936 (not res!2251247)) b!5306961))

(assert (= (and b!5306961 (not res!2251272)) b!5306967))

(assert (= (and b!5306967 (not res!2251256)) b!5306942))

(assert (= (and b!5306942 (not res!2251270)) b!5306937))

(assert (= (and b!5306942 res!2251250) b!5306948))

(assert (= (and b!5306942 (not res!2251249)) b!5306940))

(assert (= (and b!5306940 (not res!2251265)) b!5306951))

(assert (= (and b!5306951 (not res!2251264)) b!5306963))

(assert (= (and b!5306951 res!2251269) b!5306950))

(assert (= (and b!5306951 (not res!2251273)) b!5306962))

(assert (= (and b!5306962 (not res!2251254)) b!5306949))

(assert (= (and b!5306949 (not res!2251263)) b!5306928))

(assert (= (and b!5306928 (not res!2251244)) b!5306934))

(assert (= (and b!5306934 (not res!2251248)) b!5306931))

(assert (= (and b!5306931 (not res!2251246)) b!5306964))

(assert (= (and b!5306964 (not res!2251271)) b!5306933))

(assert (= (and b!5306933 (not res!2251262)) b!5306945))

(assert (= (and b!5306945 (not res!2251251)) b!5306953))

(assert (= (and start!559666 ((_ is ElementMatch!14957) r!7292)) b!5306941))

(assert (= (and start!559666 ((_ is Concat!23802) r!7292)) b!5306930))

(assert (= (and start!559666 ((_ is Star!14957) r!7292)) b!5306947))

(assert (= (and start!559666 ((_ is Union!14957) r!7292)) b!5306955))

(assert (= (and start!559666 condSetEmpty!34115) setIsEmpty!34115))

(assert (= (and start!559666 (not condSetEmpty!34115)) setNonEmpty!34115))

(assert (= setNonEmpty!34115 b!5306952))

(assert (= b!5306960 b!5306935))

(assert (= (and start!559666 ((_ is Cons!61047) zl!343)) b!5306960))

(assert (= (and start!559666 ((_ is Cons!61048) s!2326)) b!5306956))

(declare-fun m!6344128 () Bool)

(assert (=> b!5306931 m!6344128))

(declare-fun m!6344130 () Bool)

(assert (=> b!5306931 m!6344130))

(declare-fun m!6344132 () Bool)

(assert (=> b!5306931 m!6344132))

(declare-fun m!6344134 () Bool)

(assert (=> b!5306931 m!6344134))

(declare-fun m!6344136 () Bool)

(assert (=> b!5306931 m!6344136))

(declare-fun m!6344138 () Bool)

(assert (=> b!5306931 m!6344138))

(declare-fun m!6344140 () Bool)

(assert (=> b!5306931 m!6344140))

(declare-fun m!6344142 () Bool)

(assert (=> b!5306931 m!6344142))

(assert (=> b!5306931 m!6344132))

(declare-fun m!6344144 () Bool)

(assert (=> b!5306931 m!6344144))

(declare-fun m!6344146 () Bool)

(assert (=> b!5306931 m!6344146))

(declare-fun m!6344148 () Bool)

(assert (=> b!5306931 m!6344148))

(declare-fun m!6344150 () Bool)

(assert (=> b!5306931 m!6344150))

(declare-fun m!6344152 () Bool)

(assert (=> b!5306931 m!6344152))

(declare-fun m!6344154 () Bool)

(assert (=> b!5306931 m!6344154))

(declare-fun m!6344156 () Bool)

(assert (=> b!5306931 m!6344156))

(declare-fun m!6344158 () Bool)

(assert (=> b!5306931 m!6344158))

(declare-fun m!6344160 () Bool)

(assert (=> b!5306931 m!6344160))

(declare-fun m!6344162 () Bool)

(assert (=> b!5306931 m!6344162))

(declare-fun m!6344164 () Bool)

(assert (=> b!5306931 m!6344164))

(declare-fun m!6344166 () Bool)

(assert (=> b!5306931 m!6344166))

(declare-fun m!6344168 () Bool)

(assert (=> b!5306931 m!6344168))

(declare-fun m!6344170 () Bool)

(assert (=> b!5306931 m!6344170))

(assert (=> b!5306931 m!6344136))

(declare-fun m!6344172 () Bool)

(assert (=> b!5306931 m!6344172))

(declare-fun m!6344174 () Bool)

(assert (=> b!5306931 m!6344174))

(declare-fun m!6344176 () Bool)

(assert (=> b!5306931 m!6344176))

(declare-fun m!6344178 () Bool)

(assert (=> b!5306931 m!6344178))

(assert (=> b!5306931 m!6344134))

(assert (=> b!5306931 m!6344156))

(declare-fun m!6344180 () Bool)

(assert (=> b!5306961 m!6344180))

(declare-fun m!6344182 () Bool)

(assert (=> b!5306960 m!6344182))

(declare-fun m!6344184 () Bool)

(assert (=> b!5306932 m!6344184))

(declare-fun m!6344186 () Bool)

(assert (=> b!5306948 m!6344186))

(declare-fun m!6344188 () Bool)

(assert (=> start!559666 m!6344188))

(declare-fun m!6344190 () Bool)

(assert (=> b!5306938 m!6344190))

(declare-fun m!6344192 () Bool)

(assert (=> b!5306959 m!6344192))

(declare-fun m!6344194 () Bool)

(assert (=> b!5306959 m!6344194))

(declare-fun m!6344196 () Bool)

(assert (=> b!5306959 m!6344196))

(declare-fun m!6344198 () Bool)

(assert (=> setNonEmpty!34115 m!6344198))

(declare-fun m!6344200 () Bool)

(assert (=> b!5306958 m!6344200))

(declare-fun m!6344202 () Bool)

(assert (=> b!5306939 m!6344202))

(declare-fun m!6344204 () Bool)

(assert (=> b!5306966 m!6344204))

(declare-fun m!6344206 () Bool)

(assert (=> b!5306942 m!6344206))

(declare-fun m!6344208 () Bool)

(assert (=> b!5306942 m!6344208))

(declare-fun m!6344210 () Bool)

(assert (=> b!5306942 m!6344210))

(declare-fun m!6344212 () Bool)

(assert (=> b!5306942 m!6344212))

(declare-fun m!6344214 () Bool)

(assert (=> b!5306951 m!6344214))

(declare-fun m!6344216 () Bool)

(assert (=> b!5306951 m!6344216))

(declare-fun m!6344218 () Bool)

(assert (=> b!5306951 m!6344218))

(declare-fun m!6344220 () Bool)

(assert (=> b!5306951 m!6344220))

(declare-fun m!6344222 () Bool)

(assert (=> b!5306951 m!6344222))

(declare-fun m!6344224 () Bool)

(assert (=> b!5306951 m!6344224))

(declare-fun m!6344226 () Bool)

(assert (=> b!5306950 m!6344226))

(assert (=> b!5306950 m!6344226))

(declare-fun m!6344228 () Bool)

(assert (=> b!5306950 m!6344228))

(declare-fun m!6344230 () Bool)

(assert (=> b!5306967 m!6344230))

(declare-fun m!6344232 () Bool)

(assert (=> b!5306967 m!6344232))

(declare-fun m!6344234 () Bool)

(assert (=> b!5306963 m!6344234))

(declare-fun m!6344236 () Bool)

(assert (=> b!5306933 m!6344236))

(declare-fun m!6344238 () Bool)

(assert (=> b!5306953 m!6344238))

(declare-fun m!6344240 () Bool)

(assert (=> b!5306964 m!6344240))

(declare-fun m!6344242 () Bool)

(assert (=> b!5306949 m!6344242))

(declare-fun m!6344244 () Bool)

(assert (=> b!5306949 m!6344244))

(declare-fun m!6344246 () Bool)

(assert (=> b!5306934 m!6344246))

(declare-fun m!6344248 () Bool)

(assert (=> b!5306934 m!6344248))

(declare-fun m!6344250 () Bool)

(assert (=> b!5306954 m!6344250))

(declare-fun m!6344252 () Bool)

(assert (=> b!5306954 m!6344252))

(declare-fun m!6344254 () Bool)

(assert (=> b!5306954 m!6344254))

(assert (=> b!5306954 m!6344250))

(declare-fun m!6344256 () Bool)

(assert (=> b!5306954 m!6344256))

(declare-fun m!6344258 () Bool)

(assert (=> b!5306954 m!6344258))

(assert (=> b!5306954 m!6344252))

(declare-fun m!6344260 () Bool)

(assert (=> b!5306954 m!6344260))

(declare-fun m!6344262 () Bool)

(assert (=> b!5306940 m!6344262))

(declare-fun m!6344264 () Bool)

(assert (=> b!5306940 m!6344264))

(declare-fun m!6344266 () Bool)

(assert (=> b!5306940 m!6344266))

(declare-fun m!6344268 () Bool)

(assert (=> b!5306940 m!6344268))

(declare-fun m!6344270 () Bool)

(assert (=> b!5306940 m!6344270))

(declare-fun m!6344272 () Bool)

(assert (=> b!5306940 m!6344272))

(assert (=> b!5306940 m!6344220))

(assert (=> b!5306937 m!6344186))

(declare-fun m!6344274 () Bool)

(assert (=> b!5306957 m!6344274))

(assert (=> b!5306957 m!6344206))

(declare-fun m!6344276 () Bool)

(assert (=> b!5306957 m!6344276))

(declare-fun m!6344278 () Bool)

(assert (=> b!5306936 m!6344278))

(declare-fun m!6344280 () Bool)

(assert (=> b!5306936 m!6344280))

(declare-fun m!6344282 () Bool)

(assert (=> b!5306936 m!6344282))

(declare-fun m!6344284 () Bool)

(assert (=> b!5306936 m!6344284))

(declare-fun m!6344286 () Bool)

(assert (=> b!5306936 m!6344286))

(declare-fun m!6344288 () Bool)

(assert (=> b!5306936 m!6344288))

(declare-fun m!6344290 () Bool)

(assert (=> b!5306936 m!6344290))

(declare-fun m!6344292 () Bool)

(assert (=> b!5306945 m!6344292))

(declare-fun m!6344294 () Bool)

(assert (=> b!5306928 m!6344294))

(declare-fun m!6344296 () Bool)

(assert (=> b!5306928 m!6344296))

(declare-fun m!6344298 () Bool)

(assert (=> b!5306965 m!6344298))

(declare-fun m!6344300 () Bool)

(assert (=> b!5306929 m!6344300))

(assert (=> b!5306929 m!6344300))

(declare-fun m!6344302 () Bool)

(assert (=> b!5306929 m!6344302))

(check-sat (not b!5306930) (not start!559666) (not b!5306936) (not b!5306960) (not b!5306964) (not b!5306935) (not b!5306948) (not b!5306933) (not b!5306963) tp_is_empty!39167 (not b!5306934) (not b!5306957) (not b!5306932) (not setNonEmpty!34115) (not b!5306954) (not b!5306966) (not b!5306967) (not b!5306956) (not b!5306951) (not b!5306959) (not b!5306952) (not b!5306961) (not b!5306965) (not b!5306937) (not b!5306958) (not b!5306928) (not b!5306950) (not b!5306939) (not b!5306931) (not b!5306940) (not b!5306949) (not b!5306942) (not b!5306945) (not b!5306938) (not b!5306953) (not b!5306955) (not b!5306947) (not b!5306929))
(check-sat)
(get-model)

(declare-fun d!1705722 () Bool)

(declare-fun lt!2168612 () Int)

(assert (=> d!1705722 (>= lt!2168612 0)))

(declare-fun e!3298139 () Int)

(assert (=> d!1705722 (= lt!2168612 e!3298139)))

(declare-fun c!921596 () Bool)

(assert (=> d!1705722 (= c!921596 ((_ is Cons!61047) lt!2168560))))

(assert (=> d!1705722 (= (zipperDepthTotal!118 lt!2168560) lt!2168612)))

(declare-fun b!5307133 () Bool)

(assert (=> b!5307133 (= e!3298139 (+ (contextDepthTotal!98 (h!67495 lt!2168560)) (zipperDepthTotal!118 (t!374376 lt!2168560))))))

(declare-fun b!5307134 () Bool)

(assert (=> b!5307134 (= e!3298139 0)))

(assert (= (and d!1705722 c!921596) b!5307133))

(assert (= (and d!1705722 (not c!921596)) b!5307134))

(declare-fun m!6344442 () Bool)

(assert (=> b!5307133 m!6344442))

(declare-fun m!6344444 () Bool)

(assert (=> b!5307133 m!6344444))

(assert (=> b!5306928 d!1705722))

(declare-fun d!1705724 () Bool)

(declare-fun lt!2168613 () Int)

(assert (=> d!1705724 (>= lt!2168613 0)))

(declare-fun e!3298140 () Int)

(assert (=> d!1705724 (= lt!2168613 e!3298140)))

(declare-fun c!921597 () Bool)

(assert (=> d!1705724 (= c!921597 ((_ is Cons!61047) zl!343))))

(assert (=> d!1705724 (= (zipperDepthTotal!118 zl!343) lt!2168613)))

(declare-fun b!5307135 () Bool)

(assert (=> b!5307135 (= e!3298140 (+ (contextDepthTotal!98 (h!67495 zl!343)) (zipperDepthTotal!118 (t!374376 zl!343))))))

(declare-fun b!5307136 () Bool)

(assert (=> b!5307136 (= e!3298140 0)))

(assert (= (and d!1705724 c!921597) b!5307135))

(assert (= (and d!1705724 (not c!921597)) b!5307136))

(assert (=> b!5307135 m!6344244))

(declare-fun m!6344446 () Bool)

(assert (=> b!5307135 m!6344446))

(assert (=> b!5306928 d!1705724))

(declare-fun bs!1230573 () Bool)

(declare-fun d!1705726 () Bool)

(assert (= bs!1230573 (and d!1705726 b!5306953)))

(declare-fun lambda!270069 () Int)

(assert (=> bs!1230573 (= lambda!270069 lambda!270051)))

(declare-fun e!3298161 () Bool)

(assert (=> d!1705726 e!3298161))

(declare-fun res!2251333 () Bool)

(assert (=> d!1705726 (=> (not res!2251333) (not e!3298161))))

(declare-fun lt!2168618 () Regex!14957)

(assert (=> d!1705726 (= res!2251333 (validRegex!6693 lt!2168618))))

(declare-fun e!3298164 () Regex!14957)

(assert (=> d!1705726 (= lt!2168618 e!3298164)))

(declare-fun c!921607 () Bool)

(declare-fun e!3298159 () Bool)

(assert (=> d!1705726 (= c!921607 e!3298159)))

(declare-fun res!2251332 () Bool)

(assert (=> d!1705726 (=> (not res!2251332) (not e!3298159))))

(assert (=> d!1705726 (= res!2251332 ((_ is Cons!61046) (unfocusZipperList!399 zl!343)))))

(assert (=> d!1705726 (forall!14373 (unfocusZipperList!399 zl!343) lambda!270069)))

(assert (=> d!1705726 (= (generalisedUnion!886 (unfocusZipperList!399 zl!343)) lt!2168618)))

(declare-fun b!5307168 () Bool)

(declare-fun e!3298162 () Regex!14957)

(assert (=> b!5307168 (= e!3298162 (Union!14957 (h!67494 (unfocusZipperList!399 zl!343)) (generalisedUnion!886 (t!374375 (unfocusZipperList!399 zl!343)))))))

(declare-fun b!5307169 () Bool)

(declare-fun e!3298160 () Bool)

(declare-fun isUnion!305 (Regex!14957) Bool)

(assert (=> b!5307169 (= e!3298160 (isUnion!305 lt!2168618))))

(declare-fun b!5307170 () Bool)

(declare-fun e!3298163 () Bool)

(assert (=> b!5307170 (= e!3298163 e!3298160)))

(declare-fun c!921609 () Bool)

(declare-fun tail!10475 (List!61170) List!61170)

(assert (=> b!5307170 (= c!921609 (isEmpty!33008 (tail!10475 (unfocusZipperList!399 zl!343))))))

(declare-fun b!5307171 () Bool)

(assert (=> b!5307171 (= e!3298164 (h!67494 (unfocusZipperList!399 zl!343)))))

(declare-fun b!5307172 () Bool)

(declare-fun isEmptyLang!873 (Regex!14957) Bool)

(assert (=> b!5307172 (= e!3298163 (isEmptyLang!873 lt!2168618))))

(declare-fun b!5307173 () Bool)

(assert (=> b!5307173 (= e!3298164 e!3298162)))

(declare-fun c!921610 () Bool)

(assert (=> b!5307173 (= c!921610 ((_ is Cons!61046) (unfocusZipperList!399 zl!343)))))

(declare-fun b!5307174 () Bool)

(assert (=> b!5307174 (= e!3298159 (isEmpty!33008 (t!374375 (unfocusZipperList!399 zl!343))))))

(declare-fun b!5307175 () Bool)

(declare-fun head!11378 (List!61170) Regex!14957)

(assert (=> b!5307175 (= e!3298160 (= lt!2168618 (head!11378 (unfocusZipperList!399 zl!343))))))

(declare-fun b!5307176 () Bool)

(assert (=> b!5307176 (= e!3298161 e!3298163)))

(declare-fun c!921608 () Bool)

(assert (=> b!5307176 (= c!921608 (isEmpty!33008 (unfocusZipperList!399 zl!343)))))

(declare-fun b!5307177 () Bool)

(assert (=> b!5307177 (= e!3298162 EmptyLang!14957)))

(assert (= (and d!1705726 res!2251332) b!5307174))

(assert (= (and d!1705726 c!921607) b!5307171))

(assert (= (and d!1705726 (not c!921607)) b!5307173))

(assert (= (and b!5307173 c!921610) b!5307168))

(assert (= (and b!5307173 (not c!921610)) b!5307177))

(assert (= (and d!1705726 res!2251333) b!5307176))

(assert (= (and b!5307176 c!921608) b!5307172))

(assert (= (and b!5307176 (not c!921608)) b!5307170))

(assert (= (and b!5307170 c!921609) b!5307175))

(assert (= (and b!5307170 (not c!921609)) b!5307169))

(assert (=> b!5307175 m!6344300))

(declare-fun m!6344464 () Bool)

(assert (=> b!5307175 m!6344464))

(declare-fun m!6344466 () Bool)

(assert (=> d!1705726 m!6344466))

(assert (=> d!1705726 m!6344300))

(declare-fun m!6344468 () Bool)

(assert (=> d!1705726 m!6344468))

(declare-fun m!6344470 () Bool)

(assert (=> b!5307172 m!6344470))

(assert (=> b!5307176 m!6344300))

(declare-fun m!6344472 () Bool)

(assert (=> b!5307176 m!6344472))

(declare-fun m!6344474 () Bool)

(assert (=> b!5307168 m!6344474))

(declare-fun m!6344476 () Bool)

(assert (=> b!5307174 m!6344476))

(declare-fun m!6344478 () Bool)

(assert (=> b!5307169 m!6344478))

(assert (=> b!5307170 m!6344300))

(declare-fun m!6344480 () Bool)

(assert (=> b!5307170 m!6344480))

(assert (=> b!5307170 m!6344480))

(declare-fun m!6344482 () Bool)

(assert (=> b!5307170 m!6344482))

(assert (=> b!5306929 d!1705726))

(declare-fun bs!1230574 () Bool)

(declare-fun d!1705736 () Bool)

(assert (= bs!1230574 (and d!1705736 b!5306953)))

(declare-fun lambda!270072 () Int)

(assert (=> bs!1230574 (= lambda!270072 lambda!270051)))

(declare-fun bs!1230575 () Bool)

(assert (= bs!1230575 (and d!1705736 d!1705726)))

(assert (=> bs!1230575 (= lambda!270072 lambda!270069)))

(declare-fun lt!2168621 () List!61170)

(assert (=> d!1705736 (forall!14373 lt!2168621 lambda!270072)))

(declare-fun e!3298179 () List!61170)

(assert (=> d!1705736 (= lt!2168621 e!3298179)))

(declare-fun c!921621 () Bool)

(assert (=> d!1705736 (= c!921621 ((_ is Cons!61047) zl!343))))

(assert (=> d!1705736 (= (unfocusZipperList!399 zl!343) lt!2168621)))

(declare-fun b!5307202 () Bool)

(assert (=> b!5307202 (= e!3298179 (Cons!61046 (generalisedConcat!626 (exprs!4841 (h!67495 zl!343))) (unfocusZipperList!399 (t!374376 zl!343))))))

(declare-fun b!5307203 () Bool)

(assert (=> b!5307203 (= e!3298179 Nil!61046)))

(assert (= (and d!1705736 c!921621) b!5307202))

(assert (= (and d!1705736 (not c!921621)) b!5307203))

(declare-fun m!6344484 () Bool)

(assert (=> d!1705736 m!6344484))

(assert (=> b!5307202 m!6344204))

(declare-fun m!6344486 () Bool)

(assert (=> b!5307202 m!6344486))

(assert (=> b!5306929 d!1705736))

(declare-fun d!1705738 () Bool)

(declare-fun lt!2168624 () Int)

(assert (=> d!1705738 (>= lt!2168624 0)))

(declare-fun e!3298188 () Int)

(assert (=> d!1705738 (= lt!2168624 e!3298188)))

(declare-fun c!921625 () Bool)

(assert (=> d!1705738 (= c!921625 ((_ is Cons!61046) (exprs!4841 lt!2168559)))))

(assert (=> d!1705738 (= (contextDepthTotal!98 lt!2168559) lt!2168624)))

(declare-fun b!5307220 () Bool)

(declare-fun regexDepthTotal!41 (Regex!14957) Int)

(assert (=> b!5307220 (= e!3298188 (+ (regexDepthTotal!41 (h!67494 (exprs!4841 lt!2168559))) (contextDepthTotal!98 (Context!8683 (t!374375 (exprs!4841 lt!2168559))))))))

(declare-fun b!5307221 () Bool)

(assert (=> b!5307221 (= e!3298188 1)))

(assert (= (and d!1705738 c!921625) b!5307220))

(assert (= (and d!1705738 (not c!921625)) b!5307221))

(declare-fun m!6344488 () Bool)

(assert (=> b!5307220 m!6344488))

(declare-fun m!6344490 () Bool)

(assert (=> b!5307220 m!6344490))

(assert (=> b!5306949 d!1705738))

(declare-fun d!1705740 () Bool)

(declare-fun lt!2168625 () Int)

(assert (=> d!1705740 (>= lt!2168625 0)))

(declare-fun e!3298189 () Int)

(assert (=> d!1705740 (= lt!2168625 e!3298189)))

(declare-fun c!921626 () Bool)

(assert (=> d!1705740 (= c!921626 ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343))))))

(assert (=> d!1705740 (= (contextDepthTotal!98 (h!67495 zl!343)) lt!2168625)))

(declare-fun b!5307222 () Bool)

(assert (=> b!5307222 (= e!3298189 (+ (regexDepthTotal!41 (h!67494 (exprs!4841 (h!67495 zl!343)))) (contextDepthTotal!98 (Context!8683 (t!374375 (exprs!4841 (h!67495 zl!343)))))))))

(declare-fun b!5307223 () Bool)

(assert (=> b!5307223 (= e!3298189 1)))

(assert (= (and d!1705740 c!921626) b!5307222))

(assert (= (and d!1705740 (not c!921626)) b!5307223))

(declare-fun m!6344492 () Bool)

(assert (=> b!5307222 m!6344492))

(declare-fun m!6344494 () Bool)

(assert (=> b!5307222 m!6344494))

(assert (=> b!5306949 d!1705740))

(declare-fun b!5307253 () Bool)

(declare-fun e!3298216 () Bool)

(declare-fun call!378376 () Bool)

(assert (=> b!5307253 (= e!3298216 call!378376)))

(declare-fun b!5307254 () Bool)

(declare-fun e!3298213 () Bool)

(declare-fun e!3298217 () Bool)

(assert (=> b!5307254 (= e!3298213 e!3298217)))

(declare-fun c!921635 () Bool)

(assert (=> b!5307254 (= c!921635 ((_ is Star!14957) r!7292))))

(declare-fun d!1705742 () Bool)

(declare-fun res!2251366 () Bool)

(assert (=> d!1705742 (=> res!2251366 e!3298213)))

(assert (=> d!1705742 (= res!2251366 ((_ is ElementMatch!14957) r!7292))))

(assert (=> d!1705742 (= (validRegex!6693 r!7292) e!3298213)))

(declare-fun b!5307255 () Bool)

(declare-fun res!2251364 () Bool)

(declare-fun e!3298211 () Bool)

(assert (=> b!5307255 (=> res!2251364 e!3298211)))

(assert (=> b!5307255 (= res!2251364 (not ((_ is Concat!23802) r!7292)))))

(declare-fun e!3298214 () Bool)

(assert (=> b!5307255 (= e!3298214 e!3298211)))

(declare-fun b!5307256 () Bool)

(declare-fun res!2251367 () Bool)

(declare-fun e!3298215 () Bool)

(assert (=> b!5307256 (=> (not res!2251367) (not e!3298215))))

(declare-fun call!378375 () Bool)

(assert (=> b!5307256 (= res!2251367 call!378375)))

(assert (=> b!5307256 (= e!3298214 e!3298215)))

(declare-fun bm!378369 () Bool)

(declare-fun c!921636 () Bool)

(assert (=> bm!378369 (= call!378375 (validRegex!6693 (ite c!921636 (regOne!30427 r!7292) (regOne!30426 r!7292))))))

(declare-fun bm!378370 () Bool)

(declare-fun call!378374 () Bool)

(assert (=> bm!378370 (= call!378374 call!378376)))

(declare-fun b!5307257 () Bool)

(assert (=> b!5307257 (= e!3298215 call!378374)))

(declare-fun b!5307258 () Bool)

(declare-fun e!3298212 () Bool)

(assert (=> b!5307258 (= e!3298211 e!3298212)))

(declare-fun res!2251363 () Bool)

(assert (=> b!5307258 (=> (not res!2251363) (not e!3298212))))

(assert (=> b!5307258 (= res!2251363 call!378375)))

(declare-fun bm!378371 () Bool)

(assert (=> bm!378371 (= call!378376 (validRegex!6693 (ite c!921635 (reg!15286 r!7292) (ite c!921636 (regTwo!30427 r!7292) (regTwo!30426 r!7292)))))))

(declare-fun b!5307259 () Bool)

(assert (=> b!5307259 (= e!3298212 call!378374)))

(declare-fun b!5307260 () Bool)

(assert (=> b!5307260 (= e!3298217 e!3298214)))

(assert (=> b!5307260 (= c!921636 ((_ is Union!14957) r!7292))))

(declare-fun b!5307261 () Bool)

(assert (=> b!5307261 (= e!3298217 e!3298216)))

(declare-fun res!2251365 () Bool)

(assert (=> b!5307261 (= res!2251365 (not (nullable!5126 (reg!15286 r!7292))))))

(assert (=> b!5307261 (=> (not res!2251365) (not e!3298216))))

(assert (= (and d!1705742 (not res!2251366)) b!5307254))

(assert (= (and b!5307254 c!921635) b!5307261))

(assert (= (and b!5307254 (not c!921635)) b!5307260))

(assert (= (and b!5307261 res!2251365) b!5307253))

(assert (= (and b!5307260 c!921636) b!5307256))

(assert (= (and b!5307260 (not c!921636)) b!5307255))

(assert (= (and b!5307256 res!2251367) b!5307257))

(assert (= (and b!5307255 (not res!2251364)) b!5307258))

(assert (= (and b!5307258 res!2251363) b!5307259))

(assert (= (or b!5307257 b!5307259) bm!378370))

(assert (= (or b!5307256 b!5307258) bm!378369))

(assert (= (or b!5307253 bm!378370) bm!378371))

(declare-fun m!6344496 () Bool)

(assert (=> bm!378369 m!6344496))

(declare-fun m!6344498 () Bool)

(assert (=> bm!378371 m!6344498))

(declare-fun m!6344500 () Bool)

(assert (=> b!5307261 m!6344500))

(assert (=> start!559666 d!1705742))

(declare-fun d!1705744 () Bool)

(declare-fun c!921639 () Bool)

(declare-fun isEmpty!33011 (List!61172) Bool)

(assert (=> d!1705744 (= c!921639 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298220 () Bool)

(assert (=> d!1705744 (= (matchZipper!1201 lt!2168568 (t!374377 s!2326)) e!3298220)))

(declare-fun b!5307266 () Bool)

(declare-fun nullableZipper!1330 ((InoxSet Context!8682)) Bool)

(assert (=> b!5307266 (= e!3298220 (nullableZipper!1330 lt!2168568))))

(declare-fun b!5307267 () Bool)

(declare-fun head!11379 (List!61172) C!30184)

(declare-fun tail!10476 (List!61172) List!61172)

(assert (=> b!5307267 (= e!3298220 (matchZipper!1201 (derivationStepZipper!1200 lt!2168568 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705744 c!921639) b!5307266))

(assert (= (and d!1705744 (not c!921639)) b!5307267))

(declare-fun m!6344510 () Bool)

(assert (=> d!1705744 m!6344510))

(declare-fun m!6344512 () Bool)

(assert (=> b!5307266 m!6344512))

(declare-fun m!6344514 () Bool)

(assert (=> b!5307267 m!6344514))

(assert (=> b!5307267 m!6344514))

(declare-fun m!6344516 () Bool)

(assert (=> b!5307267 m!6344516))

(declare-fun m!6344518 () Bool)

(assert (=> b!5307267 m!6344518))

(assert (=> b!5307267 m!6344516))

(assert (=> b!5307267 m!6344518))

(declare-fun m!6344520 () Bool)

(assert (=> b!5307267 m!6344520))

(assert (=> b!5306948 d!1705744))

(declare-fun bs!1230585 () Bool)

(declare-fun d!1705748 () Bool)

(assert (= bs!1230585 (and d!1705748 b!5306953)))

(declare-fun lambda!270081 () Int)

(assert (=> bs!1230585 (= lambda!270081 lambda!270051)))

(declare-fun bs!1230586 () Bool)

(assert (= bs!1230586 (and d!1705748 d!1705726)))

(assert (=> bs!1230586 (= lambda!270081 lambda!270069)))

(declare-fun bs!1230587 () Bool)

(assert (= bs!1230587 (and d!1705748 d!1705736)))

(assert (=> bs!1230587 (= lambda!270081 lambda!270072)))

(declare-fun b!5307316 () Bool)

(declare-fun e!3298248 () Regex!14957)

(assert (=> b!5307316 (= e!3298248 (h!67494 (exprs!4841 (h!67495 zl!343))))))

(declare-fun b!5307318 () Bool)

(declare-fun e!3298250 () Regex!14957)

(assert (=> b!5307318 (= e!3298250 EmptyExpr!14957)))

(declare-fun b!5307319 () Bool)

(declare-fun e!3298251 () Bool)

(declare-fun lt!2168630 () Regex!14957)

(declare-fun isConcat!387 (Regex!14957) Bool)

(assert (=> b!5307319 (= e!3298251 (isConcat!387 lt!2168630))))

(declare-fun b!5307320 () Bool)

(assert (=> b!5307320 (= e!3298248 e!3298250)))

(declare-fun c!921656 () Bool)

(assert (=> b!5307320 (= c!921656 ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343))))))

(declare-fun b!5307321 () Bool)

(assert (=> b!5307321 (= e!3298250 (Concat!23802 (h!67494 (exprs!4841 (h!67495 zl!343))) (generalisedConcat!626 (t!374375 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5307322 () Bool)

(assert (=> b!5307322 (= e!3298251 (= lt!2168630 (head!11378 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307323 () Bool)

(declare-fun e!3298252 () Bool)

(assert (=> b!5307323 (= e!3298252 (isEmpty!33008 (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307317 () Bool)

(declare-fun e!3298249 () Bool)

(declare-fun isEmptyExpr!864 (Regex!14957) Bool)

(assert (=> b!5307317 (= e!3298249 (isEmptyExpr!864 lt!2168630))))

(declare-fun e!3298247 () Bool)

(assert (=> d!1705748 e!3298247))

(declare-fun res!2251388 () Bool)

(assert (=> d!1705748 (=> (not res!2251388) (not e!3298247))))

(assert (=> d!1705748 (= res!2251388 (validRegex!6693 lt!2168630))))

(assert (=> d!1705748 (= lt!2168630 e!3298248)))

(declare-fun c!921654 () Bool)

(assert (=> d!1705748 (= c!921654 e!3298252)))

(declare-fun res!2251389 () Bool)

(assert (=> d!1705748 (=> (not res!2251389) (not e!3298252))))

(assert (=> d!1705748 (= res!2251389 ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343))))))

(assert (=> d!1705748 (forall!14373 (exprs!4841 (h!67495 zl!343)) lambda!270081)))

(assert (=> d!1705748 (= (generalisedConcat!626 (exprs!4841 (h!67495 zl!343))) lt!2168630)))

(declare-fun b!5307324 () Bool)

(assert (=> b!5307324 (= e!3298249 e!3298251)))

(declare-fun c!921655 () Bool)

(assert (=> b!5307324 (= c!921655 (isEmpty!33008 (tail!10475 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307325 () Bool)

(assert (=> b!5307325 (= e!3298247 e!3298249)))

(declare-fun c!921657 () Bool)

(assert (=> b!5307325 (= c!921657 (isEmpty!33008 (exprs!4841 (h!67495 zl!343))))))

(assert (= (and d!1705748 res!2251389) b!5307323))

(assert (= (and d!1705748 c!921654) b!5307316))

(assert (= (and d!1705748 (not c!921654)) b!5307320))

(assert (= (and b!5307320 c!921656) b!5307321))

(assert (= (and b!5307320 (not c!921656)) b!5307318))

(assert (= (and d!1705748 res!2251388) b!5307325))

(assert (= (and b!5307325 c!921657) b!5307317))

(assert (= (and b!5307325 (not c!921657)) b!5307324))

(assert (= (and b!5307324 c!921655) b!5307322))

(assert (= (and b!5307324 (not c!921655)) b!5307319))

(assert (=> b!5307323 m!6344298))

(declare-fun m!6344522 () Bool)

(assert (=> b!5307322 m!6344522))

(declare-fun m!6344524 () Bool)

(assert (=> b!5307324 m!6344524))

(assert (=> b!5307324 m!6344524))

(declare-fun m!6344526 () Bool)

(assert (=> b!5307324 m!6344526))

(declare-fun m!6344528 () Bool)

(assert (=> b!5307325 m!6344528))

(declare-fun m!6344530 () Bool)

(assert (=> b!5307319 m!6344530))

(declare-fun m!6344532 () Bool)

(assert (=> d!1705748 m!6344532))

(declare-fun m!6344534 () Bool)

(assert (=> d!1705748 m!6344534))

(declare-fun m!6344536 () Bool)

(assert (=> b!5307317 m!6344536))

(assert (=> b!5307321 m!6344146))

(assert (=> b!5306966 d!1705748))

(declare-fun b!5307396 () Bool)

(declare-fun e!3298294 () (InoxSet Context!8682))

(declare-fun e!3298296 () (InoxSet Context!8682))

(assert (=> b!5307396 (= e!3298294 e!3298296)))

(declare-fun c!921687 () Bool)

(assert (=> b!5307396 (= c!921687 ((_ is Union!14957) (regTwo!30426 (regOne!30426 r!7292))))))

(declare-fun b!5307399 () Bool)

(declare-fun c!921689 () Bool)

(declare-fun e!3298291 () Bool)

(assert (=> b!5307399 (= c!921689 e!3298291)))

(declare-fun res!2251404 () Bool)

(assert (=> b!5307399 (=> (not res!2251404) (not e!3298291))))

(assert (=> b!5307399 (= res!2251404 ((_ is Concat!23802) (regTwo!30426 (regOne!30426 r!7292))))))

(declare-fun e!3298295 () (InoxSet Context!8682))

(assert (=> b!5307399 (= e!3298296 e!3298295)))

(declare-fun d!1705750 () Bool)

(declare-fun c!921688 () Bool)

(assert (=> d!1705750 (= c!921688 (and ((_ is ElementMatch!14957) (regTwo!30426 (regOne!30426 r!7292))) (= (c!921537 (regTwo!30426 (regOne!30426 r!7292))) (h!67496 s!2326))))))

(assert (=> d!1705750 (= (derivationStepZipperDown!405 (regTwo!30426 (regOne!30426 r!7292)) lt!2168561 (h!67496 s!2326)) e!3298294)))

(declare-fun bm!378400 () Bool)

(declare-fun c!921686 () Bool)

(declare-fun call!378410 () List!61170)

(declare-fun $colon$colon!1380 (List!61170 Regex!14957) List!61170)

(assert (=> bm!378400 (= call!378410 ($colon$colon!1380 (exprs!4841 lt!2168561) (ite (or c!921689 c!921686) (regTwo!30426 (regTwo!30426 (regOne!30426 r!7292))) (regTwo!30426 (regOne!30426 r!7292)))))))

(declare-fun b!5307400 () Bool)

(declare-fun e!3298293 () (InoxSet Context!8682))

(declare-fun call!378408 () (InoxSet Context!8682))

(assert (=> b!5307400 (= e!3298293 call!378408)))

(declare-fun b!5307401 () Bool)

(declare-fun e!3298292 () (InoxSet Context!8682))

(assert (=> b!5307401 (= e!3298292 ((as const (Array Context!8682 Bool)) false))))

(declare-fun b!5307402 () Bool)

(assert (=> b!5307402 (= e!3298294 (store ((as const (Array Context!8682 Bool)) false) lt!2168561 true))))

(declare-fun b!5307403 () Bool)

(declare-fun call!378406 () (InoxSet Context!8682))

(declare-fun call!378409 () (InoxSet Context!8682))

(assert (=> b!5307403 (= e!3298295 ((_ map or) call!378406 call!378409))))

(declare-fun b!5307404 () Bool)

(declare-fun c!921690 () Bool)

(assert (=> b!5307404 (= c!921690 ((_ is Star!14957) (regTwo!30426 (regOne!30426 r!7292))))))

(assert (=> b!5307404 (= e!3298293 e!3298292)))

(declare-fun b!5307405 () Bool)

(assert (=> b!5307405 (= e!3298291 (nullable!5126 (regOne!30426 (regTwo!30426 (regOne!30426 r!7292)))))))

(declare-fun bm!378401 () Bool)

(assert (=> bm!378401 (= call!378406 (derivationStepZipperDown!405 (ite c!921687 (regTwo!30427 (regTwo!30426 (regOne!30426 r!7292))) (regOne!30426 (regTwo!30426 (regOne!30426 r!7292)))) (ite c!921687 lt!2168561 (Context!8683 call!378410)) (h!67496 s!2326)))))

(declare-fun b!5307406 () Bool)

(assert (=> b!5307406 (= e!3298295 e!3298293)))

(assert (=> b!5307406 (= c!921686 ((_ is Concat!23802) (regTwo!30426 (regOne!30426 r!7292))))))

(declare-fun b!5307407 () Bool)

(assert (=> b!5307407 (= e!3298292 call!378408)))

(declare-fun bm!378402 () Bool)

(assert (=> bm!378402 (= call!378408 call!378409)))

(declare-fun bm!378403 () Bool)

(declare-fun call!378405 () List!61170)

(assert (=> bm!378403 (= call!378405 call!378410)))

(declare-fun bm!378404 () Bool)

(declare-fun call!378407 () (InoxSet Context!8682))

(assert (=> bm!378404 (= call!378407 (derivationStepZipperDown!405 (ite c!921687 (regOne!30427 (regTwo!30426 (regOne!30426 r!7292))) (ite c!921689 (regTwo!30426 (regTwo!30426 (regOne!30426 r!7292))) (ite c!921686 (regOne!30426 (regTwo!30426 (regOne!30426 r!7292))) (reg!15286 (regTwo!30426 (regOne!30426 r!7292)))))) (ite (or c!921687 c!921689) lt!2168561 (Context!8683 call!378405)) (h!67496 s!2326)))))

(declare-fun b!5307408 () Bool)

(assert (=> b!5307408 (= e!3298296 ((_ map or) call!378407 call!378406))))

(declare-fun bm!378405 () Bool)

(assert (=> bm!378405 (= call!378409 call!378407)))

(assert (= (and d!1705750 c!921688) b!5307402))

(assert (= (and d!1705750 (not c!921688)) b!5307396))

(assert (= (and b!5307396 c!921687) b!5307408))

(assert (= (and b!5307396 (not c!921687)) b!5307399))

(assert (= (and b!5307399 res!2251404) b!5307405))

(assert (= (and b!5307399 c!921689) b!5307403))

(assert (= (and b!5307399 (not c!921689)) b!5307406))

(assert (= (and b!5307406 c!921686) b!5307400))

(assert (= (and b!5307406 (not c!921686)) b!5307404))

(assert (= (and b!5307404 c!921690) b!5307407))

(assert (= (and b!5307404 (not c!921690)) b!5307401))

(assert (= (or b!5307400 b!5307407) bm!378403))

(assert (= (or b!5307400 b!5307407) bm!378402))

(assert (= (or b!5307403 bm!378403) bm!378400))

(assert (= (or b!5307403 bm!378402) bm!378405))

(assert (= (or b!5307408 b!5307403) bm!378401))

(assert (= (or b!5307408 bm!378405) bm!378404))

(declare-fun m!6344602 () Bool)

(assert (=> bm!378404 m!6344602))

(declare-fun m!6344604 () Bool)

(assert (=> b!5307402 m!6344604))

(declare-fun m!6344606 () Bool)

(assert (=> bm!378401 m!6344606))

(declare-fun m!6344608 () Bool)

(assert (=> b!5307405 m!6344608))

(declare-fun m!6344610 () Bool)

(assert (=> bm!378400 m!6344610))

(assert (=> b!5306967 d!1705750))

(declare-fun b!5307425 () Bool)

(declare-fun e!3298314 () (InoxSet Context!8682))

(declare-fun e!3298316 () (InoxSet Context!8682))

(assert (=> b!5307425 (= e!3298314 e!3298316)))

(declare-fun c!921696 () Bool)

(assert (=> b!5307425 (= c!921696 ((_ is Union!14957) (regOne!30426 (regOne!30426 r!7292))))))

(declare-fun b!5307426 () Bool)

(declare-fun c!921698 () Bool)

(declare-fun e!3298311 () Bool)

(assert (=> b!5307426 (= c!921698 e!3298311)))

(declare-fun res!2251415 () Bool)

(assert (=> b!5307426 (=> (not res!2251415) (not e!3298311))))

(assert (=> b!5307426 (= res!2251415 ((_ is Concat!23802) (regOne!30426 (regOne!30426 r!7292))))))

(declare-fun e!3298315 () (InoxSet Context!8682))

(assert (=> b!5307426 (= e!3298316 e!3298315)))

(declare-fun d!1705776 () Bool)

(declare-fun c!921697 () Bool)

(assert (=> d!1705776 (= c!921697 (and ((_ is ElementMatch!14957) (regOne!30426 (regOne!30426 r!7292))) (= (c!921537 (regOne!30426 (regOne!30426 r!7292))) (h!67496 s!2326))))))

(assert (=> d!1705776 (= (derivationStepZipperDown!405 (regOne!30426 (regOne!30426 r!7292)) lt!2168534 (h!67496 s!2326)) e!3298314)))

(declare-fun call!378422 () List!61170)

(declare-fun c!921695 () Bool)

(declare-fun bm!378410 () Bool)

(assert (=> bm!378410 (= call!378422 ($colon$colon!1380 (exprs!4841 lt!2168534) (ite (or c!921698 c!921695) (regTwo!30426 (regOne!30426 (regOne!30426 r!7292))) (regOne!30426 (regOne!30426 r!7292)))))))

(declare-fun b!5307427 () Bool)

(declare-fun e!3298313 () (InoxSet Context!8682))

(declare-fun call!378420 () (InoxSet Context!8682))

(assert (=> b!5307427 (= e!3298313 call!378420)))

(declare-fun b!5307428 () Bool)

(declare-fun e!3298312 () (InoxSet Context!8682))

(assert (=> b!5307428 (= e!3298312 ((as const (Array Context!8682 Bool)) false))))

(declare-fun b!5307429 () Bool)

(assert (=> b!5307429 (= e!3298314 (store ((as const (Array Context!8682 Bool)) false) lt!2168534 true))))

(declare-fun b!5307430 () Bool)

(declare-fun call!378418 () (InoxSet Context!8682))

(declare-fun call!378421 () (InoxSet Context!8682))

(assert (=> b!5307430 (= e!3298315 ((_ map or) call!378418 call!378421))))

(declare-fun b!5307431 () Bool)

(declare-fun c!921699 () Bool)

(assert (=> b!5307431 (= c!921699 ((_ is Star!14957) (regOne!30426 (regOne!30426 r!7292))))))

(assert (=> b!5307431 (= e!3298313 e!3298312)))

(declare-fun b!5307432 () Bool)

(assert (=> b!5307432 (= e!3298311 (nullable!5126 (regOne!30426 (regOne!30426 (regOne!30426 r!7292)))))))

(declare-fun bm!378413 () Bool)

(assert (=> bm!378413 (= call!378418 (derivationStepZipperDown!405 (ite c!921696 (regTwo!30427 (regOne!30426 (regOne!30426 r!7292))) (regOne!30426 (regOne!30426 (regOne!30426 r!7292)))) (ite c!921696 lt!2168534 (Context!8683 call!378422)) (h!67496 s!2326)))))

(declare-fun b!5307433 () Bool)

(assert (=> b!5307433 (= e!3298315 e!3298313)))

(assert (=> b!5307433 (= c!921695 ((_ is Concat!23802) (regOne!30426 (regOne!30426 r!7292))))))

(declare-fun b!5307434 () Bool)

(assert (=> b!5307434 (= e!3298312 call!378420)))

(declare-fun bm!378414 () Bool)

(assert (=> bm!378414 (= call!378420 call!378421)))

(declare-fun bm!378415 () Bool)

(declare-fun call!378417 () List!61170)

(assert (=> bm!378415 (= call!378417 call!378422)))

(declare-fun call!378419 () (InoxSet Context!8682))

(declare-fun bm!378416 () Bool)

(assert (=> bm!378416 (= call!378419 (derivationStepZipperDown!405 (ite c!921696 (regOne!30427 (regOne!30426 (regOne!30426 r!7292))) (ite c!921698 (regTwo!30426 (regOne!30426 (regOne!30426 r!7292))) (ite c!921695 (regOne!30426 (regOne!30426 (regOne!30426 r!7292))) (reg!15286 (regOne!30426 (regOne!30426 r!7292)))))) (ite (or c!921696 c!921698) lt!2168534 (Context!8683 call!378417)) (h!67496 s!2326)))))

(declare-fun b!5307435 () Bool)

(assert (=> b!5307435 (= e!3298316 ((_ map or) call!378419 call!378418))))

(declare-fun bm!378417 () Bool)

(assert (=> bm!378417 (= call!378421 call!378419)))

(assert (= (and d!1705776 c!921697) b!5307429))

(assert (= (and d!1705776 (not c!921697)) b!5307425))

(assert (= (and b!5307425 c!921696) b!5307435))

(assert (= (and b!5307425 (not c!921696)) b!5307426))

(assert (= (and b!5307426 res!2251415) b!5307432))

(assert (= (and b!5307426 c!921698) b!5307430))

(assert (= (and b!5307426 (not c!921698)) b!5307433))

(assert (= (and b!5307433 c!921695) b!5307427))

(assert (= (and b!5307433 (not c!921695)) b!5307431))

(assert (= (and b!5307431 c!921699) b!5307434))

(assert (= (and b!5307431 (not c!921699)) b!5307428))

(assert (= (or b!5307427 b!5307434) bm!378415))

(assert (= (or b!5307427 b!5307434) bm!378414))

(assert (= (or b!5307430 bm!378415) bm!378410))

(assert (= (or b!5307430 bm!378414) bm!378417))

(assert (= (or b!5307435 b!5307430) bm!378413))

(assert (= (or b!5307435 bm!378417) bm!378416))

(declare-fun m!6344612 () Bool)

(assert (=> bm!378416 m!6344612))

(assert (=> b!5307429 m!6344268))

(declare-fun m!6344614 () Bool)

(assert (=> bm!378413 m!6344614))

(declare-fun m!6344616 () Bool)

(assert (=> b!5307432 m!6344616))

(declare-fun m!6344618 () Bool)

(assert (=> bm!378410 m!6344618))

(assert (=> b!5306967 d!1705776))

(declare-fun d!1705778 () Bool)

(assert (=> d!1705778 (= (isEmpty!33008 (t!374375 (exprs!4841 (h!67495 zl!343)))) ((_ is Nil!61046) (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(assert (=> b!5306965 d!1705778))

(declare-fun b!5307497 () Bool)

(declare-fun e!3298351 () Bool)

(declare-fun lt!2168644 () Bool)

(assert (=> b!5307497 (= e!3298351 (not lt!2168644))))

(declare-fun b!5307498 () Bool)

(declare-fun res!2251449 () Bool)

(declare-fun e!3298350 () Bool)

(assert (=> b!5307498 (=> res!2251449 e!3298350)))

(assert (=> b!5307498 (= res!2251449 (not ((_ is ElementMatch!14957) (Concat!23802 lt!2168562 lt!2168572))))))

(assert (=> b!5307498 (= e!3298351 e!3298350)))

(declare-fun b!5307499 () Bool)

(declare-fun res!2251447 () Bool)

(assert (=> b!5307499 (=> res!2251447 e!3298350)))

(declare-fun e!3298353 () Bool)

(assert (=> b!5307499 (= res!2251447 e!3298353)))

(declare-fun res!2251445 () Bool)

(assert (=> b!5307499 (=> (not res!2251445) (not e!3298353))))

(assert (=> b!5307499 (= res!2251445 lt!2168644)))

(declare-fun b!5307500 () Bool)

(declare-fun e!3298355 () Bool)

(assert (=> b!5307500 (= e!3298355 (not (= (head!11379 s!2326) (c!921537 (Concat!23802 lt!2168562 lt!2168572)))))))

(declare-fun b!5307501 () Bool)

(declare-fun e!3298356 () Bool)

(declare-fun call!378429 () Bool)

(assert (=> b!5307501 (= e!3298356 (= lt!2168644 call!378429))))

(declare-fun b!5307502 () Bool)

(declare-fun e!3298354 () Bool)

(assert (=> b!5307502 (= e!3298354 e!3298355)))

(declare-fun res!2251451 () Bool)

(assert (=> b!5307502 (=> res!2251451 e!3298355)))

(assert (=> b!5307502 (= res!2251451 call!378429)))

(declare-fun d!1705780 () Bool)

(assert (=> d!1705780 e!3298356))

(declare-fun c!921717 () Bool)

(assert (=> d!1705780 (= c!921717 ((_ is EmptyExpr!14957) (Concat!23802 lt!2168562 lt!2168572)))))

(declare-fun e!3298352 () Bool)

(assert (=> d!1705780 (= lt!2168644 e!3298352)))

(declare-fun c!921716 () Bool)

(assert (=> d!1705780 (= c!921716 (isEmpty!33011 s!2326))))

(assert (=> d!1705780 (validRegex!6693 (Concat!23802 lt!2168562 lt!2168572))))

(assert (=> d!1705780 (= (matchR!7142 (Concat!23802 lt!2168562 lt!2168572) s!2326) lt!2168644)))

(declare-fun bm!378424 () Bool)

(assert (=> bm!378424 (= call!378429 (isEmpty!33011 s!2326))))

(declare-fun b!5307503 () Bool)

(declare-fun res!2251446 () Bool)

(assert (=> b!5307503 (=> (not res!2251446) (not e!3298353))))

(assert (=> b!5307503 (= res!2251446 (not call!378429))))

(declare-fun b!5307504 () Bool)

(assert (=> b!5307504 (= e!3298350 e!3298354)))

(declare-fun res!2251448 () Bool)

(assert (=> b!5307504 (=> (not res!2251448) (not e!3298354))))

(assert (=> b!5307504 (= res!2251448 (not lt!2168644))))

(declare-fun b!5307505 () Bool)

(assert (=> b!5307505 (= e!3298352 (nullable!5126 (Concat!23802 lt!2168562 lt!2168572)))))

(declare-fun b!5307506 () Bool)

(declare-fun res!2251450 () Bool)

(assert (=> b!5307506 (=> res!2251450 e!3298355)))

(assert (=> b!5307506 (= res!2251450 (not (isEmpty!33011 (tail!10476 s!2326))))))

(declare-fun b!5307507 () Bool)

(declare-fun res!2251452 () Bool)

(assert (=> b!5307507 (=> (not res!2251452) (not e!3298353))))

(assert (=> b!5307507 (= res!2251452 (isEmpty!33011 (tail!10476 s!2326)))))

(declare-fun b!5307508 () Bool)

(declare-fun derivativeStep!4151 (Regex!14957 C!30184) Regex!14957)

(assert (=> b!5307508 (= e!3298352 (matchR!7142 (derivativeStep!4151 (Concat!23802 lt!2168562 lt!2168572) (head!11379 s!2326)) (tail!10476 s!2326)))))

(declare-fun b!5307509 () Bool)

(assert (=> b!5307509 (= e!3298356 e!3298351)))

(declare-fun c!921718 () Bool)

(assert (=> b!5307509 (= c!921718 ((_ is EmptyLang!14957) (Concat!23802 lt!2168562 lt!2168572)))))

(declare-fun b!5307510 () Bool)

(assert (=> b!5307510 (= e!3298353 (= (head!11379 s!2326) (c!921537 (Concat!23802 lt!2168562 lt!2168572))))))

(assert (= (and d!1705780 c!921716) b!5307505))

(assert (= (and d!1705780 (not c!921716)) b!5307508))

(assert (= (and d!1705780 c!921717) b!5307501))

(assert (= (and d!1705780 (not c!921717)) b!5307509))

(assert (= (and b!5307509 c!921718) b!5307497))

(assert (= (and b!5307509 (not c!921718)) b!5307498))

(assert (= (and b!5307498 (not res!2251449)) b!5307499))

(assert (= (and b!5307499 res!2251445) b!5307503))

(assert (= (and b!5307503 res!2251446) b!5307507))

(assert (= (and b!5307507 res!2251452) b!5307510))

(assert (= (and b!5307499 (not res!2251447)) b!5307504))

(assert (= (and b!5307504 res!2251448) b!5307502))

(assert (= (and b!5307502 (not res!2251451)) b!5307506))

(assert (= (and b!5307506 (not res!2251450)) b!5307500))

(assert (= (or b!5307501 b!5307502 b!5307503) bm!378424))

(declare-fun m!6344648 () Bool)

(assert (=> d!1705780 m!6344648))

(declare-fun m!6344650 () Bool)

(assert (=> d!1705780 m!6344650))

(declare-fun m!6344652 () Bool)

(assert (=> b!5307505 m!6344652))

(declare-fun m!6344654 () Bool)

(assert (=> b!5307508 m!6344654))

(assert (=> b!5307508 m!6344654))

(declare-fun m!6344656 () Bool)

(assert (=> b!5307508 m!6344656))

(declare-fun m!6344658 () Bool)

(assert (=> b!5307508 m!6344658))

(assert (=> b!5307508 m!6344656))

(assert (=> b!5307508 m!6344658))

(declare-fun m!6344660 () Bool)

(assert (=> b!5307508 m!6344660))

(assert (=> b!5307500 m!6344654))

(assert (=> b!5307510 m!6344654))

(assert (=> bm!378424 m!6344648))

(assert (=> b!5307507 m!6344658))

(assert (=> b!5307507 m!6344658))

(declare-fun m!6344662 () Bool)

(assert (=> b!5307507 m!6344662))

(assert (=> b!5307506 m!6344658))

(assert (=> b!5307506 m!6344658))

(assert (=> b!5307506 m!6344662))

(assert (=> b!5306945 d!1705780))

(declare-fun b!5307511 () Bool)

(declare-fun e!3298358 () Bool)

(declare-fun lt!2168645 () Bool)

(assert (=> b!5307511 (= e!3298358 (not lt!2168645))))

(declare-fun b!5307512 () Bool)

(declare-fun res!2251457 () Bool)

(declare-fun e!3298357 () Bool)

(assert (=> b!5307512 (=> res!2251457 e!3298357)))

(assert (=> b!5307512 (= res!2251457 (not ((_ is ElementMatch!14957) (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292)))))))

(assert (=> b!5307512 (= e!3298358 e!3298357)))

(declare-fun b!5307513 () Bool)

(declare-fun res!2251455 () Bool)

(assert (=> b!5307513 (=> res!2251455 e!3298357)))

(declare-fun e!3298360 () Bool)

(assert (=> b!5307513 (= res!2251455 e!3298360)))

(declare-fun res!2251453 () Bool)

(assert (=> b!5307513 (=> (not res!2251453) (not e!3298360))))

(assert (=> b!5307513 (= res!2251453 lt!2168645)))

(declare-fun b!5307514 () Bool)

(declare-fun e!3298362 () Bool)

(assert (=> b!5307514 (= e!3298362 (not (= (head!11379 s!2326) (c!921537 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292))))))))

(declare-fun b!5307515 () Bool)

(declare-fun e!3298363 () Bool)

(declare-fun call!378430 () Bool)

(assert (=> b!5307515 (= e!3298363 (= lt!2168645 call!378430))))

(declare-fun b!5307516 () Bool)

(declare-fun e!3298361 () Bool)

(assert (=> b!5307516 (= e!3298361 e!3298362)))

(declare-fun res!2251459 () Bool)

(assert (=> b!5307516 (=> res!2251459 e!3298362)))

(assert (=> b!5307516 (= res!2251459 call!378430)))

(declare-fun d!1705794 () Bool)

(assert (=> d!1705794 e!3298363))

(declare-fun c!921720 () Bool)

(assert (=> d!1705794 (= c!921720 ((_ is EmptyExpr!14957) (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292))))))

(declare-fun e!3298359 () Bool)

(assert (=> d!1705794 (= lt!2168645 e!3298359)))

(declare-fun c!921719 () Bool)

(assert (=> d!1705794 (= c!921719 (isEmpty!33011 s!2326))))

(assert (=> d!1705794 (validRegex!6693 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292)))))

(assert (=> d!1705794 (= (matchR!7142 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292)) s!2326) lt!2168645)))

(declare-fun bm!378425 () Bool)

(assert (=> bm!378425 (= call!378430 (isEmpty!33011 s!2326))))

(declare-fun b!5307517 () Bool)

(declare-fun res!2251454 () Bool)

(assert (=> b!5307517 (=> (not res!2251454) (not e!3298360))))

(assert (=> b!5307517 (= res!2251454 (not call!378430))))

(declare-fun b!5307518 () Bool)

(assert (=> b!5307518 (= e!3298357 e!3298361)))

(declare-fun res!2251456 () Bool)

(assert (=> b!5307518 (=> (not res!2251456) (not e!3298361))))

(assert (=> b!5307518 (= res!2251456 (not lt!2168645))))

(declare-fun b!5307519 () Bool)

(assert (=> b!5307519 (= e!3298359 (nullable!5126 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292))))))

(declare-fun b!5307520 () Bool)

(declare-fun res!2251458 () Bool)

(assert (=> b!5307520 (=> res!2251458 e!3298362)))

(assert (=> b!5307520 (= res!2251458 (not (isEmpty!33011 (tail!10476 s!2326))))))

(declare-fun b!5307521 () Bool)

(declare-fun res!2251460 () Bool)

(assert (=> b!5307521 (=> (not res!2251460) (not e!3298360))))

(assert (=> b!5307521 (= res!2251460 (isEmpty!33011 (tail!10476 s!2326)))))

(declare-fun b!5307522 () Bool)

(assert (=> b!5307522 (= e!3298359 (matchR!7142 (derivativeStep!4151 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292)) (head!11379 s!2326)) (tail!10476 s!2326)))))

(declare-fun b!5307523 () Bool)

(assert (=> b!5307523 (= e!3298363 e!3298358)))

(declare-fun c!921721 () Bool)

(assert (=> b!5307523 (= c!921721 ((_ is EmptyLang!14957) (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292))))))

(declare-fun b!5307524 () Bool)

(assert (=> b!5307524 (= e!3298360 (= (head!11379 s!2326) (c!921537 (Concat!23802 (regOne!30426 r!7292) (regTwo!30426 r!7292)))))))

(assert (= (and d!1705794 c!921719) b!5307519))

(assert (= (and d!1705794 (not c!921719)) b!5307522))

(assert (= (and d!1705794 c!921720) b!5307515))

(assert (= (and d!1705794 (not c!921720)) b!5307523))

(assert (= (and b!5307523 c!921721) b!5307511))

(assert (= (and b!5307523 (not c!921721)) b!5307512))

(assert (= (and b!5307512 (not res!2251457)) b!5307513))

(assert (= (and b!5307513 res!2251453) b!5307517))

(assert (= (and b!5307517 res!2251454) b!5307521))

(assert (= (and b!5307521 res!2251460) b!5307524))

(assert (= (and b!5307513 (not res!2251455)) b!5307518))

(assert (= (and b!5307518 res!2251456) b!5307516))

(assert (= (and b!5307516 (not res!2251459)) b!5307520))

(assert (= (and b!5307520 (not res!2251458)) b!5307514))

(assert (= (or b!5307515 b!5307516 b!5307517) bm!378425))

(assert (=> d!1705794 m!6344648))

(declare-fun m!6344664 () Bool)

(assert (=> d!1705794 m!6344664))

(declare-fun m!6344666 () Bool)

(assert (=> b!5307519 m!6344666))

(assert (=> b!5307522 m!6344654))

(assert (=> b!5307522 m!6344654))

(declare-fun m!6344668 () Bool)

(assert (=> b!5307522 m!6344668))

(assert (=> b!5307522 m!6344658))

(assert (=> b!5307522 m!6344668))

(assert (=> b!5307522 m!6344658))

(declare-fun m!6344670 () Bool)

(assert (=> b!5307522 m!6344670))

(assert (=> b!5307514 m!6344654))

(assert (=> b!5307524 m!6344654))

(assert (=> bm!378425 m!6344648))

(assert (=> b!5307521 m!6344658))

(assert (=> b!5307521 m!6344658))

(assert (=> b!5307521 m!6344662))

(assert (=> b!5307520 m!6344658))

(assert (=> b!5307520 m!6344658))

(assert (=> b!5307520 m!6344662))

(assert (=> b!5306964 d!1705794))

(declare-fun d!1705796 () Bool)

(declare-fun c!921722 () Bool)

(assert (=> d!1705796 (= c!921722 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298364 () Bool)

(assert (=> d!1705796 (= (matchZipper!1201 lt!2168555 (t!374377 s!2326)) e!3298364)))

(declare-fun b!5307525 () Bool)

(assert (=> b!5307525 (= e!3298364 (nullableZipper!1330 lt!2168555))))

(declare-fun b!5307526 () Bool)

(assert (=> b!5307526 (= e!3298364 (matchZipper!1201 (derivationStepZipper!1200 lt!2168555 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705796 c!921722) b!5307525))

(assert (= (and d!1705796 (not c!921722)) b!5307526))

(assert (=> d!1705796 m!6344510))

(declare-fun m!6344672 () Bool)

(assert (=> b!5307525 m!6344672))

(assert (=> b!5307526 m!6344514))

(assert (=> b!5307526 m!6344514))

(declare-fun m!6344674 () Bool)

(assert (=> b!5307526 m!6344674))

(assert (=> b!5307526 m!6344518))

(assert (=> b!5307526 m!6344674))

(assert (=> b!5307526 m!6344518))

(declare-fun m!6344676 () Bool)

(assert (=> b!5307526 m!6344676))

(assert (=> b!5306942 d!1705796))

(declare-fun d!1705798 () Bool)

(declare-fun c!921723 () Bool)

(assert (=> d!1705798 (= c!921723 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298365 () Bool)

(assert (=> d!1705798 (= (matchZipper!1201 lt!2168563 (t!374377 s!2326)) e!3298365)))

(declare-fun b!5307529 () Bool)

(assert (=> b!5307529 (= e!3298365 (nullableZipper!1330 lt!2168563))))

(declare-fun b!5307530 () Bool)

(assert (=> b!5307530 (= e!3298365 (matchZipper!1201 (derivationStepZipper!1200 lt!2168563 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705798 c!921723) b!5307529))

(assert (= (and d!1705798 (not c!921723)) b!5307530))

(assert (=> d!1705798 m!6344510))

(declare-fun m!6344678 () Bool)

(assert (=> b!5307529 m!6344678))

(assert (=> b!5307530 m!6344514))

(assert (=> b!5307530 m!6344514))

(declare-fun m!6344680 () Bool)

(assert (=> b!5307530 m!6344680))

(assert (=> b!5307530 m!6344518))

(assert (=> b!5307530 m!6344680))

(assert (=> b!5307530 m!6344518))

(declare-fun m!6344682 () Bool)

(assert (=> b!5307530 m!6344682))

(assert (=> b!5306942 d!1705798))

(declare-fun d!1705800 () Bool)

(declare-fun c!921728 () Bool)

(assert (=> d!1705800 (= c!921728 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298368 () Bool)

(assert (=> d!1705800 (= (matchZipper!1201 lt!2168533 (t!374377 s!2326)) e!3298368)))

(declare-fun b!5307533 () Bool)

(assert (=> b!5307533 (= e!3298368 (nullableZipper!1330 lt!2168533))))

(declare-fun b!5307534 () Bool)

(assert (=> b!5307534 (= e!3298368 (matchZipper!1201 (derivationStepZipper!1200 lt!2168533 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705800 c!921728) b!5307533))

(assert (= (and d!1705800 (not c!921728)) b!5307534))

(assert (=> d!1705800 m!6344510))

(declare-fun m!6344684 () Bool)

(assert (=> b!5307533 m!6344684))

(assert (=> b!5307534 m!6344514))

(assert (=> b!5307534 m!6344514))

(declare-fun m!6344686 () Bool)

(assert (=> b!5307534 m!6344686))

(assert (=> b!5307534 m!6344518))

(assert (=> b!5307534 m!6344686))

(assert (=> b!5307534 m!6344518))

(declare-fun m!6344688 () Bool)

(assert (=> b!5307534 m!6344688))

(assert (=> b!5306942 d!1705800))

(declare-fun e!3298375 () Bool)

(declare-fun d!1705802 () Bool)

(assert (=> d!1705802 (= (matchZipper!1201 ((_ map or) lt!2168533 lt!2168568) (t!374377 s!2326)) e!3298375)))

(declare-fun res!2251466 () Bool)

(assert (=> d!1705802 (=> res!2251466 e!3298375)))

(assert (=> d!1705802 (= res!2251466 (matchZipper!1201 lt!2168533 (t!374377 s!2326)))))

(declare-fun lt!2168660 () Unit!153346)

(declare-fun choose!39688 ((InoxSet Context!8682) (InoxSet Context!8682) List!61172) Unit!153346)

(assert (=> d!1705802 (= lt!2168660 (choose!39688 lt!2168533 lt!2168568 (t!374377 s!2326)))))

(assert (=> d!1705802 (= (lemmaZipperConcatMatchesSameAsBothZippers!194 lt!2168533 lt!2168568 (t!374377 s!2326)) lt!2168660)))

(declare-fun b!5307544 () Bool)

(assert (=> b!5307544 (= e!3298375 (matchZipper!1201 lt!2168568 (t!374377 s!2326)))))

(assert (= (and d!1705802 (not res!2251466)) b!5307544))

(declare-fun m!6344690 () Bool)

(assert (=> d!1705802 m!6344690))

(assert (=> d!1705802 m!6344210))

(declare-fun m!6344692 () Bool)

(assert (=> d!1705802 m!6344692))

(assert (=> b!5307544 m!6344186))

(assert (=> b!5306942 d!1705802))

(declare-fun d!1705804 () Bool)

(declare-fun c!921734 () Bool)

(assert (=> d!1705804 (= c!921734 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298376 () Bool)

(assert (=> d!1705804 (= (matchZipper!1201 lt!2168532 (t!374377 s!2326)) e!3298376)))

(declare-fun b!5307545 () Bool)

(assert (=> b!5307545 (= e!3298376 (nullableZipper!1330 lt!2168532))))

(declare-fun b!5307546 () Bool)

(assert (=> b!5307546 (= e!3298376 (matchZipper!1201 (derivationStepZipper!1200 lt!2168532 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705804 c!921734) b!5307545))

(assert (= (and d!1705804 (not c!921734)) b!5307546))

(assert (=> d!1705804 m!6344510))

(declare-fun m!6344706 () Bool)

(assert (=> b!5307545 m!6344706))

(assert (=> b!5307546 m!6344514))

(assert (=> b!5307546 m!6344514))

(declare-fun m!6344708 () Bool)

(assert (=> b!5307546 m!6344708))

(assert (=> b!5307546 m!6344518))

(assert (=> b!5307546 m!6344708))

(assert (=> b!5307546 m!6344518))

(declare-fun m!6344710 () Bool)

(assert (=> b!5307546 m!6344710))

(assert (=> b!5306963 d!1705804))

(declare-fun d!1705808 () Bool)

(declare-fun nullableFct!1482 (Regex!14957) Bool)

(assert (=> d!1705808 (= (nullable!5126 (regOne!30426 (regOne!30426 r!7292))) (nullableFct!1482 (regOne!30426 (regOne!30426 r!7292))))))

(declare-fun bs!1230599 () Bool)

(assert (= bs!1230599 d!1705808))

(declare-fun m!6344712 () Bool)

(assert (=> bs!1230599 m!6344712))

(assert (=> b!5306961 d!1705808))

(declare-fun d!1705810 () Bool)

(declare-fun e!3298382 () Bool)

(assert (=> d!1705810 e!3298382))

(declare-fun res!2251470 () Bool)

(assert (=> d!1705810 (=> (not res!2251470) (not e!3298382))))

(declare-fun lt!2168667 () List!61171)

(declare-fun noDuplicate!1285 (List!61171) Bool)

(assert (=> d!1705810 (= res!2251470 (noDuplicate!1285 lt!2168667))))

(declare-fun choose!39689 ((InoxSet Context!8682)) List!61171)

(assert (=> d!1705810 (= lt!2168667 (choose!39689 z!1189))))

(assert (=> d!1705810 (= (toList!8741 z!1189) lt!2168667)))

(declare-fun b!5307554 () Bool)

(declare-fun content!10875 (List!61171) (InoxSet Context!8682))

(assert (=> b!5307554 (= e!3298382 (= (content!10875 lt!2168667) z!1189))))

(assert (= (and d!1705810 res!2251470) b!5307554))

(declare-fun m!6344732 () Bool)

(assert (=> d!1705810 m!6344732))

(declare-fun m!6344734 () Bool)

(assert (=> d!1705810 m!6344734))

(declare-fun m!6344736 () Bool)

(assert (=> b!5307554 m!6344736))

(assert (=> b!5306939 d!1705810))

(declare-fun b!5307588 () Bool)

(declare-fun call!378435 () (InoxSet Context!8682))

(declare-fun e!3298400 () (InoxSet Context!8682))

(assert (=> b!5307588 (= e!3298400 ((_ map or) call!378435 (derivationStepZipperUp!329 (Context!8683 (t!374375 (exprs!4841 lt!2168559))) (h!67496 s!2326))))))

(declare-fun b!5307589 () Bool)

(declare-fun e!3298401 () Bool)

(assert (=> b!5307589 (= e!3298401 (nullable!5126 (h!67494 (exprs!4841 lt!2168559))))))

(declare-fun d!1705816 () Bool)

(declare-fun c!921749 () Bool)

(assert (=> d!1705816 (= c!921749 e!3298401)))

(declare-fun res!2251482 () Bool)

(assert (=> d!1705816 (=> (not res!2251482) (not e!3298401))))

(assert (=> d!1705816 (= res!2251482 ((_ is Cons!61046) (exprs!4841 lt!2168559)))))

(assert (=> d!1705816 (= (derivationStepZipperUp!329 lt!2168559 (h!67496 s!2326)) e!3298400)))

(declare-fun b!5307590 () Bool)

(declare-fun e!3298402 () (InoxSet Context!8682))

(assert (=> b!5307590 (= e!3298402 call!378435)))

(declare-fun b!5307591 () Bool)

(assert (=> b!5307591 (= e!3298402 ((as const (Array Context!8682 Bool)) false))))

(declare-fun bm!378430 () Bool)

(assert (=> bm!378430 (= call!378435 (derivationStepZipperDown!405 (h!67494 (exprs!4841 lt!2168559)) (Context!8683 (t!374375 (exprs!4841 lt!2168559))) (h!67496 s!2326)))))

(declare-fun b!5307592 () Bool)

(assert (=> b!5307592 (= e!3298400 e!3298402)))

(declare-fun c!921750 () Bool)

(assert (=> b!5307592 (= c!921750 ((_ is Cons!61046) (exprs!4841 lt!2168559)))))

(assert (= (and d!1705816 res!2251482) b!5307589))

(assert (= (and d!1705816 c!921749) b!5307588))

(assert (= (and d!1705816 (not c!921749)) b!5307592))

(assert (= (and b!5307592 c!921750) b!5307590))

(assert (= (and b!5307592 (not c!921750)) b!5307591))

(assert (= (or b!5307588 b!5307590) bm!378430))

(declare-fun m!6344766 () Bool)

(assert (=> b!5307588 m!6344766))

(declare-fun m!6344768 () Bool)

(assert (=> b!5307589 m!6344768))

(declare-fun m!6344770 () Bool)

(assert (=> bm!378430 m!6344770))

(assert (=> b!5306940 d!1705816))

(declare-fun call!378436 () (InoxSet Context!8682))

(declare-fun e!3298403 () (InoxSet Context!8682))

(declare-fun b!5307593 () Bool)

(assert (=> b!5307593 (= e!3298403 ((_ map or) call!378436 (derivationStepZipperUp!329 (Context!8683 (t!374375 (exprs!4841 lt!2168534))) (h!67496 s!2326))))))

(declare-fun b!5307594 () Bool)

(declare-fun e!3298404 () Bool)

(assert (=> b!5307594 (= e!3298404 (nullable!5126 (h!67494 (exprs!4841 lt!2168534))))))

(declare-fun d!1705832 () Bool)

(declare-fun c!921751 () Bool)

(assert (=> d!1705832 (= c!921751 e!3298404)))

(declare-fun res!2251483 () Bool)

(assert (=> d!1705832 (=> (not res!2251483) (not e!3298404))))

(assert (=> d!1705832 (= res!2251483 ((_ is Cons!61046) (exprs!4841 lt!2168534)))))

(assert (=> d!1705832 (= (derivationStepZipperUp!329 lt!2168534 (h!67496 s!2326)) e!3298403)))

(declare-fun b!5307595 () Bool)

(declare-fun e!3298405 () (InoxSet Context!8682))

(assert (=> b!5307595 (= e!3298405 call!378436)))

(declare-fun b!5307596 () Bool)

(assert (=> b!5307596 (= e!3298405 ((as const (Array Context!8682 Bool)) false))))

(declare-fun bm!378431 () Bool)

(assert (=> bm!378431 (= call!378436 (derivationStepZipperDown!405 (h!67494 (exprs!4841 lt!2168534)) (Context!8683 (t!374375 (exprs!4841 lt!2168534))) (h!67496 s!2326)))))

(declare-fun b!5307597 () Bool)

(assert (=> b!5307597 (= e!3298403 e!3298405)))

(declare-fun c!921752 () Bool)

(assert (=> b!5307597 (= c!921752 ((_ is Cons!61046) (exprs!4841 lt!2168534)))))

(assert (= (and d!1705832 res!2251483) b!5307594))

(assert (= (and d!1705832 c!921751) b!5307593))

(assert (= (and d!1705832 (not c!921751)) b!5307597))

(assert (= (and b!5307597 c!921752) b!5307595))

(assert (= (and b!5307597 (not c!921752)) b!5307596))

(assert (= (or b!5307593 b!5307595) bm!378431))

(declare-fun m!6344776 () Bool)

(assert (=> b!5307593 m!6344776))

(declare-fun m!6344778 () Bool)

(assert (=> b!5307594 m!6344778))

(declare-fun m!6344780 () Bool)

(assert (=> bm!378431 m!6344780))

(assert (=> b!5306940 d!1705832))

(declare-fun bs!1230615 () Bool)

(declare-fun d!1705838 () Bool)

(assert (= bs!1230615 (and d!1705838 b!5306936)))

(declare-fun lambda!270104 () Int)

(assert (=> bs!1230615 (= lambda!270104 lambda!270046)))

(assert (=> d!1705838 true))

(assert (=> d!1705838 (= (derivationStepZipper!1200 lt!2168542 (h!67496 s!2326)) (flatMap!684 lt!2168542 lambda!270104))))

(declare-fun bs!1230616 () Bool)

(assert (= bs!1230616 d!1705838))

(declare-fun m!6344792 () Bool)

(assert (=> bs!1230616 m!6344792))

(assert (=> b!5306940 d!1705838))

(declare-fun d!1705844 () Bool)

(declare-fun dynLambda!24130 (Int Context!8682) (InoxSet Context!8682))

(assert (=> d!1705844 (= (flatMap!684 lt!2168542 lambda!270046) (dynLambda!24130 lambda!270046 lt!2168559))))

(declare-fun lt!2168676 () Unit!153346)

(declare-fun choose!39690 ((InoxSet Context!8682) Context!8682 Int) Unit!153346)

(assert (=> d!1705844 (= lt!2168676 (choose!39690 lt!2168542 lt!2168559 lambda!270046))))

(assert (=> d!1705844 (= lt!2168542 (store ((as const (Array Context!8682 Bool)) false) lt!2168559 true))))

(assert (=> d!1705844 (= (lemmaFlatMapOnSingletonSet!216 lt!2168542 lt!2168559 lambda!270046) lt!2168676)))

(declare-fun b_lambda!204349 () Bool)

(assert (=> (not b_lambda!204349) (not d!1705844)))

(declare-fun bs!1230617 () Bool)

(assert (= bs!1230617 d!1705844))

(assert (=> bs!1230617 m!6344262))

(declare-fun m!6344812 () Bool)

(assert (=> bs!1230617 m!6344812))

(declare-fun m!6344814 () Bool)

(assert (=> bs!1230617 m!6344814))

(assert (=> bs!1230617 m!6344264))

(assert (=> b!5306940 d!1705844))

(declare-fun d!1705848 () Bool)

(declare-fun choose!39691 ((InoxSet Context!8682) Int) (InoxSet Context!8682))

(assert (=> d!1705848 (= (flatMap!684 lt!2168542 lambda!270046) (choose!39691 lt!2168542 lambda!270046))))

(declare-fun bs!1230618 () Bool)

(assert (= bs!1230618 d!1705848))

(declare-fun m!6344816 () Bool)

(assert (=> bs!1230618 m!6344816))

(assert (=> b!5306940 d!1705848))

(declare-fun bs!1230619 () Bool)

(declare-fun d!1705850 () Bool)

(assert (= bs!1230619 (and d!1705850 b!5306953)))

(declare-fun lambda!270107 () Int)

(assert (=> bs!1230619 (= lambda!270107 lambda!270051)))

(declare-fun bs!1230620 () Bool)

(assert (= bs!1230620 (and d!1705850 d!1705726)))

(assert (=> bs!1230620 (= lambda!270107 lambda!270069)))

(declare-fun bs!1230621 () Bool)

(assert (= bs!1230621 (and d!1705850 d!1705736)))

(assert (=> bs!1230621 (= lambda!270107 lambda!270072)))

(declare-fun bs!1230622 () Bool)

(assert (= bs!1230622 (and d!1705850 d!1705748)))

(assert (=> bs!1230622 (= lambda!270107 lambda!270081)))

(assert (=> d!1705850 (= (inv!80639 (h!67495 zl!343)) (forall!14373 (exprs!4841 (h!67495 zl!343)) lambda!270107))))

(declare-fun bs!1230623 () Bool)

(assert (= bs!1230623 d!1705850))

(declare-fun m!6344818 () Bool)

(assert (=> bs!1230623 m!6344818))

(assert (=> b!5306960 d!1705850))

(declare-fun d!1705852 () Bool)

(declare-fun c!921760 () Bool)

(assert (=> d!1705852 (= c!921760 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298418 () Bool)

(assert (=> d!1705852 (= (matchZipper!1201 lt!2168574 (t!374377 s!2326)) e!3298418)))

(declare-fun b!5307623 () Bool)

(assert (=> b!5307623 (= e!3298418 (nullableZipper!1330 lt!2168574))))

(declare-fun b!5307624 () Bool)

(assert (=> b!5307624 (= e!3298418 (matchZipper!1201 (derivationStepZipper!1200 lt!2168574 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705852 c!921760) b!5307623))

(assert (= (and d!1705852 (not c!921760)) b!5307624))

(assert (=> d!1705852 m!6344510))

(declare-fun m!6344820 () Bool)

(assert (=> b!5307623 m!6344820))

(assert (=> b!5307624 m!6344514))

(assert (=> b!5307624 m!6344514))

(declare-fun m!6344822 () Bool)

(assert (=> b!5307624 m!6344822))

(assert (=> b!5307624 m!6344518))

(assert (=> b!5307624 m!6344822))

(assert (=> b!5307624 m!6344518))

(declare-fun m!6344824 () Bool)

(assert (=> b!5307624 m!6344824))

(assert (=> b!5306938 d!1705852))

(declare-fun bs!1230624 () Bool)

(declare-fun d!1705854 () Bool)

(assert (= bs!1230624 (and d!1705854 d!1705726)))

(declare-fun lambda!270110 () Int)

(assert (=> bs!1230624 (= lambda!270110 lambda!270069)))

(declare-fun bs!1230625 () Bool)

(assert (= bs!1230625 (and d!1705854 d!1705736)))

(assert (=> bs!1230625 (= lambda!270110 lambda!270072)))

(declare-fun bs!1230626 () Bool)

(assert (= bs!1230626 (and d!1705854 d!1705850)))

(assert (=> bs!1230626 (= lambda!270110 lambda!270107)))

(declare-fun bs!1230627 () Bool)

(assert (= bs!1230627 (and d!1705854 d!1705748)))

(assert (=> bs!1230627 (= lambda!270110 lambda!270081)))

(declare-fun bs!1230628 () Bool)

(assert (= bs!1230628 (and d!1705854 b!5306953)))

(assert (=> bs!1230628 (= lambda!270110 lambda!270051)))

(assert (=> d!1705854 (= (inv!80639 setElem!34115) (forall!14373 (exprs!4841 setElem!34115) lambda!270110))))

(declare-fun bs!1230629 () Bool)

(assert (= bs!1230629 d!1705854))

(declare-fun m!6344826 () Bool)

(assert (=> bs!1230629 m!6344826))

(assert (=> setNonEmpty!34115 d!1705854))

(declare-fun bs!1230645 () Bool)

(declare-fun b!5307694 () Bool)

(assert (= bs!1230645 (and b!5307694 b!5306931)))

(declare-fun lambda!270118 () Int)

(assert (=> bs!1230645 (not (= lambda!270118 lambda!270049))))

(declare-fun bs!1230646 () Bool)

(assert (= bs!1230646 (and b!5307694 b!5306954)))

(assert (=> bs!1230646 (not (= lambda!270118 lambda!270045))))

(assert (=> bs!1230645 (not (= lambda!270118 lambda!270050))))

(assert (=> bs!1230645 (not (= lambda!270118 lambda!270047))))

(assert (=> bs!1230645 (not (= lambda!270118 lambda!270048))))

(assert (=> bs!1230646 (not (= lambda!270118 lambda!270044))))

(assert (=> b!5307694 true))

(assert (=> b!5307694 true))

(declare-fun bs!1230647 () Bool)

(declare-fun b!5307691 () Bool)

(assert (= bs!1230647 (and b!5307691 b!5306931)))

(declare-fun lambda!270119 () Int)

(assert (=> bs!1230647 (not (= lambda!270119 lambda!270049))))

(declare-fun bs!1230648 () Bool)

(assert (= bs!1230648 (and b!5307691 b!5306954)))

(assert (=> bs!1230648 (= lambda!270119 lambda!270045)))

(assert (=> bs!1230647 (= (and (= (regOne!30426 r!7292) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168572)) (= lambda!270119 lambda!270050))))

(assert (=> bs!1230647 (not (= lambda!270119 lambda!270047))))

(declare-fun bs!1230652 () Bool)

(assert (= bs!1230652 (and b!5307691 b!5307694)))

(assert (=> bs!1230652 (not (= lambda!270119 lambda!270118))))

(assert (=> bs!1230647 (= (and (= (regOne!30426 r!7292) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168544)) (= lambda!270119 lambda!270048))))

(assert (=> bs!1230648 (not (= lambda!270119 lambda!270044))))

(assert (=> b!5307691 true))

(assert (=> b!5307691 true))

(declare-fun d!1705856 () Bool)

(declare-fun c!921783 () Bool)

(assert (=> d!1705856 (= c!921783 ((_ is EmptyExpr!14957) r!7292))))

(declare-fun e!3298457 () Bool)

(assert (=> d!1705856 (= (matchRSpec!2060 r!7292 s!2326) e!3298457)))

(declare-fun b!5307689 () Bool)

(declare-fun e!3298461 () Bool)

(assert (=> b!5307689 (= e!3298461 (= s!2326 (Cons!61048 (c!921537 r!7292) Nil!61048)))))

(declare-fun b!5307690 () Bool)

(declare-fun c!921785 () Bool)

(assert (=> b!5307690 (= c!921785 ((_ is ElementMatch!14957) r!7292))))

(declare-fun e!3298462 () Bool)

(assert (=> b!5307690 (= e!3298462 e!3298461)))

(declare-fun e!3298459 () Bool)

(declare-fun call!378443 () Bool)

(assert (=> b!5307691 (= e!3298459 call!378443)))

(declare-fun b!5307692 () Bool)

(assert (=> b!5307692 (= e!3298457 e!3298462)))

(declare-fun res!2251520 () Bool)

(assert (=> b!5307692 (= res!2251520 (not ((_ is EmptyLang!14957) r!7292)))))

(assert (=> b!5307692 (=> (not res!2251520) (not e!3298462))))

(declare-fun bm!378437 () Bool)

(declare-fun call!378442 () Bool)

(assert (=> bm!378437 (= call!378442 (isEmpty!33011 s!2326))))

(declare-fun b!5307693 () Bool)

(assert (=> b!5307693 (= e!3298457 call!378442)))

(declare-fun c!921782 () Bool)

(declare-fun bm!378438 () Bool)

(assert (=> bm!378438 (= call!378443 (Exists!2138 (ite c!921782 lambda!270118 lambda!270119)))))

(declare-fun e!3298460 () Bool)

(assert (=> b!5307694 (= e!3298460 call!378443)))

(declare-fun b!5307695 () Bool)

(declare-fun res!2251521 () Bool)

(assert (=> b!5307695 (=> res!2251521 e!3298460)))

(assert (=> b!5307695 (= res!2251521 call!378442)))

(assert (=> b!5307695 (= e!3298459 e!3298460)))

(declare-fun b!5307696 () Bool)

(declare-fun e!3298458 () Bool)

(assert (=> b!5307696 (= e!3298458 (matchRSpec!2060 (regTwo!30427 r!7292) s!2326))))

(declare-fun b!5307697 () Bool)

(declare-fun e!3298456 () Bool)

(assert (=> b!5307697 (= e!3298456 e!3298458)))

(declare-fun res!2251519 () Bool)

(assert (=> b!5307697 (= res!2251519 (matchRSpec!2060 (regOne!30427 r!7292) s!2326))))

(assert (=> b!5307697 (=> res!2251519 e!3298458)))

(declare-fun b!5307698 () Bool)

(assert (=> b!5307698 (= e!3298456 e!3298459)))

(assert (=> b!5307698 (= c!921782 ((_ is Star!14957) r!7292))))

(declare-fun b!5307699 () Bool)

(declare-fun c!921784 () Bool)

(assert (=> b!5307699 (= c!921784 ((_ is Union!14957) r!7292))))

(assert (=> b!5307699 (= e!3298461 e!3298456)))

(assert (= (and d!1705856 c!921783) b!5307693))

(assert (= (and d!1705856 (not c!921783)) b!5307692))

(assert (= (and b!5307692 res!2251520) b!5307690))

(assert (= (and b!5307690 c!921785) b!5307689))

(assert (= (and b!5307690 (not c!921785)) b!5307699))

(assert (= (and b!5307699 c!921784) b!5307697))

(assert (= (and b!5307699 (not c!921784)) b!5307698))

(assert (= (and b!5307697 (not res!2251519)) b!5307696))

(assert (= (and b!5307698 c!921782) b!5307695))

(assert (= (and b!5307698 (not c!921782)) b!5307691))

(assert (= (and b!5307695 (not res!2251521)) b!5307694))

(assert (= (or b!5307694 b!5307691) bm!378438))

(assert (= (or b!5307693 b!5307695) bm!378437))

(assert (=> bm!378437 m!6344648))

(declare-fun m!6344882 () Bool)

(assert (=> bm!378438 m!6344882))

(declare-fun m!6344884 () Bool)

(assert (=> b!5307696 m!6344884))

(declare-fun m!6344886 () Bool)

(assert (=> b!5307697 m!6344886))

(assert (=> b!5306959 d!1705856))

(declare-fun b!5307716 () Bool)

(declare-fun e!3298472 () Bool)

(declare-fun lt!2168686 () Bool)

(assert (=> b!5307716 (= e!3298472 (not lt!2168686))))

(declare-fun b!5307717 () Bool)

(declare-fun res!2251534 () Bool)

(declare-fun e!3298471 () Bool)

(assert (=> b!5307717 (=> res!2251534 e!3298471)))

(assert (=> b!5307717 (= res!2251534 (not ((_ is ElementMatch!14957) r!7292)))))

(assert (=> b!5307717 (= e!3298472 e!3298471)))

(declare-fun b!5307718 () Bool)

(declare-fun res!2251532 () Bool)

(assert (=> b!5307718 (=> res!2251532 e!3298471)))

(declare-fun e!3298474 () Bool)

(assert (=> b!5307718 (= res!2251532 e!3298474)))

(declare-fun res!2251530 () Bool)

(assert (=> b!5307718 (=> (not res!2251530) (not e!3298474))))

(assert (=> b!5307718 (= res!2251530 lt!2168686)))

(declare-fun b!5307719 () Bool)

(declare-fun e!3298476 () Bool)

(assert (=> b!5307719 (= e!3298476 (not (= (head!11379 s!2326) (c!921537 r!7292))))))

(declare-fun b!5307720 () Bool)

(declare-fun e!3298477 () Bool)

(declare-fun call!378445 () Bool)

(assert (=> b!5307720 (= e!3298477 (= lt!2168686 call!378445))))

(declare-fun b!5307721 () Bool)

(declare-fun e!3298475 () Bool)

(assert (=> b!5307721 (= e!3298475 e!3298476)))

(declare-fun res!2251536 () Bool)

(assert (=> b!5307721 (=> res!2251536 e!3298476)))

(assert (=> b!5307721 (= res!2251536 call!378445)))

(declare-fun d!1705874 () Bool)

(assert (=> d!1705874 e!3298477))

(declare-fun c!921791 () Bool)

(assert (=> d!1705874 (= c!921791 ((_ is EmptyExpr!14957) r!7292))))

(declare-fun e!3298473 () Bool)

(assert (=> d!1705874 (= lt!2168686 e!3298473)))

(declare-fun c!921790 () Bool)

(assert (=> d!1705874 (= c!921790 (isEmpty!33011 s!2326))))

(assert (=> d!1705874 (validRegex!6693 r!7292)))

(assert (=> d!1705874 (= (matchR!7142 r!7292 s!2326) lt!2168686)))

(declare-fun bm!378440 () Bool)

(assert (=> bm!378440 (= call!378445 (isEmpty!33011 s!2326))))

(declare-fun b!5307722 () Bool)

(declare-fun res!2251531 () Bool)

(assert (=> b!5307722 (=> (not res!2251531) (not e!3298474))))

(assert (=> b!5307722 (= res!2251531 (not call!378445))))

(declare-fun b!5307723 () Bool)

(assert (=> b!5307723 (= e!3298471 e!3298475)))

(declare-fun res!2251533 () Bool)

(assert (=> b!5307723 (=> (not res!2251533) (not e!3298475))))

(assert (=> b!5307723 (= res!2251533 (not lt!2168686))))

(declare-fun b!5307724 () Bool)

(assert (=> b!5307724 (= e!3298473 (nullable!5126 r!7292))))

(declare-fun b!5307725 () Bool)

(declare-fun res!2251535 () Bool)

(assert (=> b!5307725 (=> res!2251535 e!3298476)))

(assert (=> b!5307725 (= res!2251535 (not (isEmpty!33011 (tail!10476 s!2326))))))

(declare-fun b!5307726 () Bool)

(declare-fun res!2251537 () Bool)

(assert (=> b!5307726 (=> (not res!2251537) (not e!3298474))))

(assert (=> b!5307726 (= res!2251537 (isEmpty!33011 (tail!10476 s!2326)))))

(declare-fun b!5307727 () Bool)

(assert (=> b!5307727 (= e!3298473 (matchR!7142 (derivativeStep!4151 r!7292 (head!11379 s!2326)) (tail!10476 s!2326)))))

(declare-fun b!5307728 () Bool)

(assert (=> b!5307728 (= e!3298477 e!3298472)))

(declare-fun c!921792 () Bool)

(assert (=> b!5307728 (= c!921792 ((_ is EmptyLang!14957) r!7292))))

(declare-fun b!5307729 () Bool)

(assert (=> b!5307729 (= e!3298474 (= (head!11379 s!2326) (c!921537 r!7292)))))

(assert (= (and d!1705874 c!921790) b!5307724))

(assert (= (and d!1705874 (not c!921790)) b!5307727))

(assert (= (and d!1705874 c!921791) b!5307720))

(assert (= (and d!1705874 (not c!921791)) b!5307728))

(assert (= (and b!5307728 c!921792) b!5307716))

(assert (= (and b!5307728 (not c!921792)) b!5307717))

(assert (= (and b!5307717 (not res!2251534)) b!5307718))

(assert (= (and b!5307718 res!2251530) b!5307722))

(assert (= (and b!5307722 res!2251531) b!5307726))

(assert (= (and b!5307726 res!2251537) b!5307729))

(assert (= (and b!5307718 (not res!2251532)) b!5307723))

(assert (= (and b!5307723 res!2251533) b!5307721))

(assert (= (and b!5307721 (not res!2251536)) b!5307725))

(assert (= (and b!5307725 (not res!2251535)) b!5307719))

(assert (= (or b!5307720 b!5307721 b!5307722) bm!378440))

(assert (=> d!1705874 m!6344648))

(assert (=> d!1705874 m!6344188))

(declare-fun m!6344888 () Bool)

(assert (=> b!5307724 m!6344888))

(assert (=> b!5307727 m!6344654))

(assert (=> b!5307727 m!6344654))

(declare-fun m!6344890 () Bool)

(assert (=> b!5307727 m!6344890))

(assert (=> b!5307727 m!6344658))

(assert (=> b!5307727 m!6344890))

(assert (=> b!5307727 m!6344658))

(declare-fun m!6344892 () Bool)

(assert (=> b!5307727 m!6344892))

(assert (=> b!5307719 m!6344654))

(assert (=> b!5307729 m!6344654))

(assert (=> bm!378440 m!6344648))

(assert (=> b!5307726 m!6344658))

(assert (=> b!5307726 m!6344658))

(assert (=> b!5307726 m!6344662))

(assert (=> b!5307725 m!6344658))

(assert (=> b!5307725 m!6344658))

(assert (=> b!5307725 m!6344662))

(assert (=> b!5306959 d!1705874))

(declare-fun d!1705876 () Bool)

(assert (=> d!1705876 (= (matchR!7142 r!7292 s!2326) (matchRSpec!2060 r!7292 s!2326))))

(declare-fun lt!2168689 () Unit!153346)

(declare-fun choose!39692 (Regex!14957 List!61172) Unit!153346)

(assert (=> d!1705876 (= lt!2168689 (choose!39692 r!7292 s!2326))))

(assert (=> d!1705876 (validRegex!6693 r!7292)))

(assert (=> d!1705876 (= (mainMatchTheorem!2060 r!7292 s!2326) lt!2168689)))

(declare-fun bs!1230665 () Bool)

(assert (= bs!1230665 d!1705876))

(assert (=> bs!1230665 m!6344194))

(assert (=> bs!1230665 m!6344192))

(declare-fun m!6344902 () Bool)

(assert (=> bs!1230665 m!6344902))

(assert (=> bs!1230665 m!6344188))

(assert (=> b!5306959 d!1705876))

(declare-fun d!1705880 () Bool)

(assert (=> d!1705880 (= (isEmpty!33007 (t!374376 zl!343)) ((_ is Nil!61047) (t!374376 zl!343)))))

(assert (=> b!5306958 d!1705880))

(assert (=> b!5306937 d!1705744))

(declare-fun b!5307741 () Bool)

(declare-fun call!378448 () (InoxSet Context!8682))

(declare-fun e!3298485 () (InoxSet Context!8682))

(assert (=> b!5307741 (= e!3298485 ((_ map or) call!378448 (derivationStepZipperUp!329 (Context!8683 (t!374375 (exprs!4841 lt!2168561))) (h!67496 s!2326))))))

(declare-fun b!5307742 () Bool)

(declare-fun e!3298486 () Bool)

(assert (=> b!5307742 (= e!3298486 (nullable!5126 (h!67494 (exprs!4841 lt!2168561))))))

(declare-fun d!1705882 () Bool)

(declare-fun c!921797 () Bool)

(assert (=> d!1705882 (= c!921797 e!3298486)))

(declare-fun res!2251541 () Bool)

(assert (=> d!1705882 (=> (not res!2251541) (not e!3298486))))

(assert (=> d!1705882 (= res!2251541 ((_ is Cons!61046) (exprs!4841 lt!2168561)))))

(assert (=> d!1705882 (= (derivationStepZipperUp!329 lt!2168561 (h!67496 s!2326)) e!3298485)))

(declare-fun b!5307743 () Bool)

(declare-fun e!3298487 () (InoxSet Context!8682))

(assert (=> b!5307743 (= e!3298487 call!378448)))

(declare-fun b!5307744 () Bool)

(assert (=> b!5307744 (= e!3298487 ((as const (Array Context!8682 Bool)) false))))

(declare-fun bm!378443 () Bool)

(assert (=> bm!378443 (= call!378448 (derivationStepZipperDown!405 (h!67494 (exprs!4841 lt!2168561)) (Context!8683 (t!374375 (exprs!4841 lt!2168561))) (h!67496 s!2326)))))

(declare-fun b!5307745 () Bool)

(assert (=> b!5307745 (= e!3298485 e!3298487)))

(declare-fun c!921798 () Bool)

(assert (=> b!5307745 (= c!921798 ((_ is Cons!61046) (exprs!4841 lt!2168561)))))

(assert (= (and d!1705882 res!2251541) b!5307742))

(assert (= (and d!1705882 c!921797) b!5307741))

(assert (= (and d!1705882 (not c!921797)) b!5307745))

(assert (= (and b!5307745 c!921798) b!5307743))

(assert (= (and b!5307745 (not c!921798)) b!5307744))

(assert (= (or b!5307741 b!5307743) bm!378443))

(declare-fun m!6344904 () Bool)

(assert (=> b!5307741 m!6344904))

(declare-fun m!6344906 () Bool)

(assert (=> b!5307742 m!6344906))

(declare-fun m!6344908 () Bool)

(assert (=> bm!378443 m!6344908))

(assert (=> b!5306936 d!1705882))

(declare-fun d!1705884 () Bool)

(assert (=> d!1705884 (= (flatMap!684 z!1189 lambda!270046) (dynLambda!24130 lambda!270046 (h!67495 zl!343)))))

(declare-fun lt!2168690 () Unit!153346)

(assert (=> d!1705884 (= lt!2168690 (choose!39690 z!1189 (h!67495 zl!343) lambda!270046))))

(assert (=> d!1705884 (= z!1189 (store ((as const (Array Context!8682 Bool)) false) (h!67495 zl!343) true))))

(assert (=> d!1705884 (= (lemmaFlatMapOnSingletonSet!216 z!1189 (h!67495 zl!343) lambda!270046) lt!2168690)))

(declare-fun b_lambda!204351 () Bool)

(assert (=> (not b_lambda!204351) (not d!1705884)))

(declare-fun bs!1230670 () Bool)

(assert (= bs!1230670 d!1705884))

(assert (=> bs!1230670 m!6344290))

(declare-fun m!6344910 () Bool)

(assert (=> bs!1230670 m!6344910))

(declare-fun m!6344912 () Bool)

(assert (=> bs!1230670 m!6344912))

(declare-fun m!6344914 () Bool)

(assert (=> bs!1230670 m!6344914))

(assert (=> b!5306936 d!1705884))

(declare-fun b!5307746 () Bool)

(declare-fun e!3298491 () (InoxSet Context!8682))

(declare-fun e!3298493 () (InoxSet Context!8682))

(assert (=> b!5307746 (= e!3298491 e!3298493)))

(declare-fun c!921800 () Bool)

(assert (=> b!5307746 (= c!921800 ((_ is Union!14957) (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307747 () Bool)

(declare-fun c!921802 () Bool)

(declare-fun e!3298488 () Bool)

(assert (=> b!5307747 (= c!921802 e!3298488)))

(declare-fun res!2251542 () Bool)

(assert (=> b!5307747 (=> (not res!2251542) (not e!3298488))))

(assert (=> b!5307747 (= res!2251542 ((_ is Concat!23802) (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun e!3298492 () (InoxSet Context!8682))

(assert (=> b!5307747 (= e!3298493 e!3298492)))

(declare-fun d!1705886 () Bool)

(declare-fun c!921801 () Bool)

(assert (=> d!1705886 (= c!921801 (and ((_ is ElementMatch!14957) (h!67494 (exprs!4841 (h!67495 zl!343)))) (= (c!921537 (h!67494 (exprs!4841 (h!67495 zl!343)))) (h!67496 s!2326))))))

(assert (=> d!1705886 (= (derivationStepZipperDown!405 (h!67494 (exprs!4841 (h!67495 zl!343))) lt!2168561 (h!67496 s!2326)) e!3298491)))

(declare-fun c!921799 () Bool)

(declare-fun call!378454 () List!61170)

(declare-fun bm!378444 () Bool)

(assert (=> bm!378444 (= call!378454 ($colon$colon!1380 (exprs!4841 lt!2168561) (ite (or c!921802 c!921799) (regTwo!30426 (h!67494 (exprs!4841 (h!67495 zl!343)))) (h!67494 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5307748 () Bool)

(declare-fun e!3298490 () (InoxSet Context!8682))

(declare-fun call!378452 () (InoxSet Context!8682))

(assert (=> b!5307748 (= e!3298490 call!378452)))

(declare-fun b!5307749 () Bool)

(declare-fun e!3298489 () (InoxSet Context!8682))

(assert (=> b!5307749 (= e!3298489 ((as const (Array Context!8682 Bool)) false))))

(declare-fun b!5307750 () Bool)

(assert (=> b!5307750 (= e!3298491 (store ((as const (Array Context!8682 Bool)) false) lt!2168561 true))))

(declare-fun b!5307751 () Bool)

(declare-fun call!378450 () (InoxSet Context!8682))

(declare-fun call!378453 () (InoxSet Context!8682))

(assert (=> b!5307751 (= e!3298492 ((_ map or) call!378450 call!378453))))

(declare-fun b!5307752 () Bool)

(declare-fun c!921803 () Bool)

(assert (=> b!5307752 (= c!921803 ((_ is Star!14957) (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(assert (=> b!5307752 (= e!3298490 e!3298489)))

(declare-fun b!5307753 () Bool)

(assert (=> b!5307753 (= e!3298488 (nullable!5126 (regOne!30426 (h!67494 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun bm!378445 () Bool)

(assert (=> bm!378445 (= call!378450 (derivationStepZipperDown!405 (ite c!921800 (regTwo!30427 (h!67494 (exprs!4841 (h!67495 zl!343)))) (regOne!30426 (h!67494 (exprs!4841 (h!67495 zl!343))))) (ite c!921800 lt!2168561 (Context!8683 call!378454)) (h!67496 s!2326)))))

(declare-fun b!5307754 () Bool)

(assert (=> b!5307754 (= e!3298492 e!3298490)))

(assert (=> b!5307754 (= c!921799 ((_ is Concat!23802) (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307755 () Bool)

(assert (=> b!5307755 (= e!3298489 call!378452)))

(declare-fun bm!378446 () Bool)

(assert (=> bm!378446 (= call!378452 call!378453)))

(declare-fun bm!378447 () Bool)

(declare-fun call!378449 () List!61170)

(assert (=> bm!378447 (= call!378449 call!378454)))

(declare-fun bm!378448 () Bool)

(declare-fun call!378451 () (InoxSet Context!8682))

(assert (=> bm!378448 (= call!378451 (derivationStepZipperDown!405 (ite c!921800 (regOne!30427 (h!67494 (exprs!4841 (h!67495 zl!343)))) (ite c!921802 (regTwo!30426 (h!67494 (exprs!4841 (h!67495 zl!343)))) (ite c!921799 (regOne!30426 (h!67494 (exprs!4841 (h!67495 zl!343)))) (reg!15286 (h!67494 (exprs!4841 (h!67495 zl!343))))))) (ite (or c!921800 c!921802) lt!2168561 (Context!8683 call!378449)) (h!67496 s!2326)))))

(declare-fun b!5307756 () Bool)

(assert (=> b!5307756 (= e!3298493 ((_ map or) call!378451 call!378450))))

(declare-fun bm!378449 () Bool)

(assert (=> bm!378449 (= call!378453 call!378451)))

(assert (= (and d!1705886 c!921801) b!5307750))

(assert (= (and d!1705886 (not c!921801)) b!5307746))

(assert (= (and b!5307746 c!921800) b!5307756))

(assert (= (and b!5307746 (not c!921800)) b!5307747))

(assert (= (and b!5307747 res!2251542) b!5307753))

(assert (= (and b!5307747 c!921802) b!5307751))

(assert (= (and b!5307747 (not c!921802)) b!5307754))

(assert (= (and b!5307754 c!921799) b!5307748))

(assert (= (and b!5307754 (not c!921799)) b!5307752))

(assert (= (and b!5307752 c!921803) b!5307755))

(assert (= (and b!5307752 (not c!921803)) b!5307749))

(assert (= (or b!5307748 b!5307755) bm!378447))

(assert (= (or b!5307748 b!5307755) bm!378446))

(assert (= (or b!5307751 bm!378447) bm!378444))

(assert (= (or b!5307751 bm!378446) bm!378449))

(assert (= (or b!5307756 b!5307751) bm!378445))

(assert (= (or b!5307756 bm!378449) bm!378448))

(declare-fun m!6344916 () Bool)

(assert (=> bm!378448 m!6344916))

(assert (=> b!5307750 m!6344604))

(declare-fun m!6344918 () Bool)

(assert (=> bm!378445 m!6344918))

(declare-fun m!6344920 () Bool)

(assert (=> b!5307753 m!6344920))

(declare-fun m!6344922 () Bool)

(assert (=> bm!378444 m!6344922))

(assert (=> b!5306936 d!1705886))

(declare-fun d!1705888 () Bool)

(assert (=> d!1705888 (= (nullable!5126 (h!67494 (exprs!4841 (h!67495 zl!343)))) (nullableFct!1482 (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun bs!1230677 () Bool)

(assert (= bs!1230677 d!1705888))

(declare-fun m!6344924 () Bool)

(assert (=> bs!1230677 m!6344924))

(assert (=> b!5306936 d!1705888))

(declare-fun e!3298494 () (InoxSet Context!8682))

(declare-fun call!378455 () (InoxSet Context!8682))

(declare-fun b!5307757 () Bool)

(assert (=> b!5307757 (= e!3298494 ((_ map or) call!378455 (derivationStepZipperUp!329 (Context!8683 (t!374375 (exprs!4841 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343)))))))) (h!67496 s!2326))))))

(declare-fun b!5307758 () Bool)

(declare-fun e!3298495 () Bool)

(assert (=> b!5307758 (= e!3298495 (nullable!5126 (h!67494 (exprs!4841 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343)))))))))))

(declare-fun d!1705890 () Bool)

(declare-fun c!921804 () Bool)

(assert (=> d!1705890 (= c!921804 e!3298495)))

(declare-fun res!2251543 () Bool)

(assert (=> d!1705890 (=> (not res!2251543) (not e!3298495))))

(assert (=> d!1705890 (= res!2251543 ((_ is Cons!61046) (exprs!4841 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343))))))))))

(assert (=> d!1705890 (= (derivationStepZipperUp!329 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343))))) (h!67496 s!2326)) e!3298494)))

(declare-fun b!5307759 () Bool)

(declare-fun e!3298496 () (InoxSet Context!8682))

(assert (=> b!5307759 (= e!3298496 call!378455)))

(declare-fun b!5307760 () Bool)

(assert (=> b!5307760 (= e!3298496 ((as const (Array Context!8682 Bool)) false))))

(declare-fun bm!378450 () Bool)

(assert (=> bm!378450 (= call!378455 (derivationStepZipperDown!405 (h!67494 (exprs!4841 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343))))))) (Context!8683 (t!374375 (exprs!4841 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343)))))))) (h!67496 s!2326)))))

(declare-fun b!5307761 () Bool)

(assert (=> b!5307761 (= e!3298494 e!3298496)))

(declare-fun c!921805 () Bool)

(assert (=> b!5307761 (= c!921805 ((_ is Cons!61046) (exprs!4841 (Context!8683 (Cons!61046 (h!67494 (exprs!4841 (h!67495 zl!343))) (t!374375 (exprs!4841 (h!67495 zl!343))))))))))

(assert (= (and d!1705890 res!2251543) b!5307758))

(assert (= (and d!1705890 c!921804) b!5307757))

(assert (= (and d!1705890 (not c!921804)) b!5307761))

(assert (= (and b!5307761 c!921805) b!5307759))

(assert (= (and b!5307761 (not c!921805)) b!5307760))

(assert (= (or b!5307757 b!5307759) bm!378450))

(declare-fun m!6344928 () Bool)

(assert (=> b!5307757 m!6344928))

(declare-fun m!6344932 () Bool)

(assert (=> b!5307758 m!6344932))

(declare-fun m!6344936 () Bool)

(assert (=> bm!378450 m!6344936))

(assert (=> b!5306936 d!1705890))

(declare-fun d!1705894 () Bool)

(assert (=> d!1705894 (= (flatMap!684 z!1189 lambda!270046) (choose!39691 z!1189 lambda!270046))))

(declare-fun bs!1230678 () Bool)

(assert (= bs!1230678 d!1705894))

(declare-fun m!6344938 () Bool)

(assert (=> bs!1230678 m!6344938))

(assert (=> b!5306936 d!1705894))

(declare-fun b!5307776 () Bool)

(declare-fun e!3298504 () (InoxSet Context!8682))

(declare-fun call!378457 () (InoxSet Context!8682))

(assert (=> b!5307776 (= e!3298504 ((_ map or) call!378457 (derivationStepZipperUp!329 (Context!8683 (t!374375 (exprs!4841 (h!67495 zl!343)))) (h!67496 s!2326))))))

(declare-fun b!5307777 () Bool)

(declare-fun e!3298505 () Bool)

(assert (=> b!5307777 (= e!3298505 (nullable!5126 (h!67494 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun d!1705896 () Bool)

(declare-fun c!921809 () Bool)

(assert (=> d!1705896 (= c!921809 e!3298505)))

(declare-fun res!2251552 () Bool)

(assert (=> d!1705896 (=> (not res!2251552) (not e!3298505))))

(assert (=> d!1705896 (= res!2251552 ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343))))))

(assert (=> d!1705896 (= (derivationStepZipperUp!329 (h!67495 zl!343) (h!67496 s!2326)) e!3298504)))

(declare-fun b!5307778 () Bool)

(declare-fun e!3298506 () (InoxSet Context!8682))

(assert (=> b!5307778 (= e!3298506 call!378457)))

(declare-fun b!5307779 () Bool)

(assert (=> b!5307779 (= e!3298506 ((as const (Array Context!8682 Bool)) false))))

(declare-fun bm!378452 () Bool)

(assert (=> bm!378452 (= call!378457 (derivationStepZipperDown!405 (h!67494 (exprs!4841 (h!67495 zl!343))) (Context!8683 (t!374375 (exprs!4841 (h!67495 zl!343)))) (h!67496 s!2326)))))

(declare-fun b!5307780 () Bool)

(assert (=> b!5307780 (= e!3298504 e!3298506)))

(declare-fun c!921810 () Bool)

(assert (=> b!5307780 (= c!921810 ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343))))))

(assert (= (and d!1705896 res!2251552) b!5307777))

(assert (= (and d!1705896 c!921809) b!5307776))

(assert (= (and d!1705896 (not c!921809)) b!5307780))

(assert (= (and b!5307780 c!921810) b!5307778))

(assert (= (and b!5307780 (not c!921810)) b!5307779))

(assert (= (or b!5307776 b!5307778) bm!378452))

(declare-fun m!6344940 () Bool)

(assert (=> b!5307776 m!6344940))

(assert (=> b!5307777 m!6344288))

(declare-fun m!6344942 () Bool)

(assert (=> bm!378452 m!6344942))

(assert (=> b!5306936 d!1705896))

(declare-fun d!1705898 () Bool)

(declare-fun e!3298507 () Bool)

(assert (=> d!1705898 (= (matchZipper!1201 ((_ map or) lt!2168555 lt!2168574) (t!374377 s!2326)) e!3298507)))

(declare-fun res!2251553 () Bool)

(assert (=> d!1705898 (=> res!2251553 e!3298507)))

(assert (=> d!1705898 (= res!2251553 (matchZipper!1201 lt!2168555 (t!374377 s!2326)))))

(declare-fun lt!2168692 () Unit!153346)

(assert (=> d!1705898 (= lt!2168692 (choose!39688 lt!2168555 lt!2168574 (t!374377 s!2326)))))

(assert (=> d!1705898 (= (lemmaZipperConcatMatchesSameAsBothZippers!194 lt!2168555 lt!2168574 (t!374377 s!2326)) lt!2168692)))

(declare-fun b!5307781 () Bool)

(assert (=> b!5307781 (= e!3298507 (matchZipper!1201 lt!2168574 (t!374377 s!2326)))))

(assert (= (and d!1705898 (not res!2251553)) b!5307781))

(assert (=> d!1705898 m!6344276))

(assert (=> d!1705898 m!6344206))

(declare-fun m!6344946 () Bool)

(assert (=> d!1705898 m!6344946))

(assert (=> b!5307781 m!6344190))

(assert (=> b!5306957 d!1705898))

(assert (=> b!5306957 d!1705796))

(declare-fun d!1705900 () Bool)

(declare-fun c!921811 () Bool)

(assert (=> d!1705900 (= c!921811 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298508 () Bool)

(assert (=> d!1705900 (= (matchZipper!1201 ((_ map or) lt!2168555 lt!2168574) (t!374377 s!2326)) e!3298508)))

(declare-fun b!5307782 () Bool)

(assert (=> b!5307782 (= e!3298508 (nullableZipper!1330 ((_ map or) lt!2168555 lt!2168574)))))

(declare-fun b!5307783 () Bool)

(assert (=> b!5307783 (= e!3298508 (matchZipper!1201 (derivationStepZipper!1200 ((_ map or) lt!2168555 lt!2168574) (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1705900 c!921811) b!5307782))

(assert (= (and d!1705900 (not c!921811)) b!5307783))

(assert (=> d!1705900 m!6344510))

(declare-fun m!6344952 () Bool)

(assert (=> b!5307782 m!6344952))

(assert (=> b!5307783 m!6344514))

(assert (=> b!5307783 m!6344514))

(declare-fun m!6344956 () Bool)

(assert (=> b!5307783 m!6344956))

(assert (=> b!5307783 m!6344518))

(assert (=> b!5307783 m!6344956))

(assert (=> b!5307783 m!6344518))

(declare-fun m!6344958 () Bool)

(assert (=> b!5307783 m!6344958))

(assert (=> b!5306957 d!1705900))

(declare-fun b!5307803 () Bool)

(assert (=> b!5307803 true))

(declare-fun bs!1230717 () Bool)

(declare-fun b!5307805 () Bool)

(assert (= bs!1230717 (and b!5307805 b!5307803)))

(declare-fun lambda!270135 () Int)

(declare-fun lt!2168706 () Int)

(declare-fun lambda!270134 () Int)

(declare-fun lt!2168704 () Int)

(assert (=> bs!1230717 (= (= lt!2168706 lt!2168704) (= lambda!270135 lambda!270134))))

(assert (=> b!5307805 true))

(declare-fun d!1705906 () Bool)

(declare-fun e!3298521 () Bool)

(assert (=> d!1705906 e!3298521))

(declare-fun res!2251559 () Bool)

(assert (=> d!1705906 (=> (not res!2251559) (not e!3298521))))

(assert (=> d!1705906 (= res!2251559 (>= lt!2168706 0))))

(declare-fun e!3298522 () Int)

(assert (=> d!1705906 (= lt!2168706 e!3298522)))

(declare-fun c!921825 () Bool)

(assert (=> d!1705906 (= c!921825 ((_ is Cons!61047) lt!2168560))))

(assert (=> d!1705906 (= (zipperDepth!74 lt!2168560) lt!2168706)))

(assert (=> b!5307803 (= e!3298522 lt!2168704)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!42 (Context!8682) Int)

(assert (=> b!5307803 (= lt!2168704 (maxBigInt!0 (contextDepth!42 (h!67495 lt!2168560)) (zipperDepth!74 (t!374376 lt!2168560))))))

(declare-fun lambda!270133 () Int)

(declare-fun lt!2168703 () Unit!153346)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!36 (List!61171 Int Int Int) Unit!153346)

(assert (=> b!5307803 (= lt!2168703 (lemmaForallContextDepthBiggerThanTransitive!36 (t!374376 lt!2168560) lt!2168704 (zipperDepth!74 (t!374376 lt!2168560)) lambda!270133))))

(declare-fun forall!14375 (List!61171 Int) Bool)

(assert (=> b!5307803 (forall!14375 (t!374376 lt!2168560) lambda!270134)))

(declare-fun lt!2168705 () Unit!153346)

(assert (=> b!5307803 (= lt!2168705 lt!2168703)))

(declare-fun b!5307804 () Bool)

(assert (=> b!5307804 (= e!3298522 0)))

(assert (=> b!5307805 (= e!3298521 (forall!14375 lt!2168560 lambda!270135))))

(assert (= (and d!1705906 c!921825) b!5307803))

(assert (= (and d!1705906 (not c!921825)) b!5307804))

(assert (= (and d!1705906 res!2251559) b!5307805))

(declare-fun m!6344982 () Bool)

(assert (=> b!5307803 m!6344982))

(declare-fun m!6344984 () Bool)

(assert (=> b!5307803 m!6344984))

(assert (=> b!5307803 m!6344982))

(declare-fun m!6344986 () Bool)

(assert (=> b!5307803 m!6344986))

(declare-fun m!6344988 () Bool)

(assert (=> b!5307803 m!6344988))

(assert (=> b!5307803 m!6344982))

(declare-fun m!6344990 () Bool)

(assert (=> b!5307803 m!6344990))

(assert (=> b!5307803 m!6344988))

(declare-fun m!6344992 () Bool)

(assert (=> b!5307805 m!6344992))

(assert (=> b!5306934 d!1705906))

(declare-fun bs!1230724 () Bool)

(declare-fun b!5307818 () Bool)

(assert (= bs!1230724 (and b!5307818 b!5307803)))

(declare-fun lambda!270137 () Int)

(assert (=> bs!1230724 (= lambda!270137 lambda!270133)))

(declare-fun lambda!270138 () Int)

(declare-fun lt!2168710 () Int)

(assert (=> bs!1230724 (= (= lt!2168710 lt!2168704) (= lambda!270138 lambda!270134))))

(declare-fun bs!1230725 () Bool)

(assert (= bs!1230725 (and b!5307818 b!5307805)))

(assert (=> bs!1230725 (= (= lt!2168710 lt!2168706) (= lambda!270138 lambda!270135))))

(assert (=> b!5307818 true))

(declare-fun bs!1230726 () Bool)

(declare-fun b!5307820 () Bool)

(assert (= bs!1230726 (and b!5307820 b!5307803)))

(declare-fun lambda!270139 () Int)

(declare-fun lt!2168712 () Int)

(assert (=> bs!1230726 (= (= lt!2168712 lt!2168704) (= lambda!270139 lambda!270134))))

(declare-fun bs!1230727 () Bool)

(assert (= bs!1230727 (and b!5307820 b!5307805)))

(assert (=> bs!1230727 (= (= lt!2168712 lt!2168706) (= lambda!270139 lambda!270135))))

(declare-fun bs!1230729 () Bool)

(assert (= bs!1230729 (and b!5307820 b!5307818)))

(assert (=> bs!1230729 (= (= lt!2168712 lt!2168710) (= lambda!270139 lambda!270138))))

(assert (=> b!5307820 true))

(declare-fun d!1705920 () Bool)

(declare-fun e!3298529 () Bool)

(assert (=> d!1705920 e!3298529))

(declare-fun res!2251562 () Bool)

(assert (=> d!1705920 (=> (not res!2251562) (not e!3298529))))

(assert (=> d!1705920 (= res!2251562 (>= lt!2168712 0))))

(declare-fun e!3298530 () Int)

(assert (=> d!1705920 (= lt!2168712 e!3298530)))

(declare-fun c!921830 () Bool)

(assert (=> d!1705920 (= c!921830 ((_ is Cons!61047) zl!343))))

(assert (=> d!1705920 (= (zipperDepth!74 zl!343) lt!2168712)))

(assert (=> b!5307818 (= e!3298530 lt!2168710)))

(assert (=> b!5307818 (= lt!2168710 (maxBigInt!0 (contextDepth!42 (h!67495 zl!343)) (zipperDepth!74 (t!374376 zl!343))))))

(declare-fun lt!2168709 () Unit!153346)

(assert (=> b!5307818 (= lt!2168709 (lemmaForallContextDepthBiggerThanTransitive!36 (t!374376 zl!343) lt!2168710 (zipperDepth!74 (t!374376 zl!343)) lambda!270137))))

(assert (=> b!5307818 (forall!14375 (t!374376 zl!343) lambda!270138)))

(declare-fun lt!2168711 () Unit!153346)

(assert (=> b!5307818 (= lt!2168711 lt!2168709)))

(declare-fun b!5307819 () Bool)

(assert (=> b!5307819 (= e!3298530 0)))

(assert (=> b!5307820 (= e!3298529 (forall!14375 zl!343 lambda!270139))))

(assert (= (and d!1705920 c!921830) b!5307818))

(assert (= (and d!1705920 (not c!921830)) b!5307819))

(assert (= (and d!1705920 res!2251562) b!5307820))

(declare-fun m!6345016 () Bool)

(assert (=> b!5307818 m!6345016))

(declare-fun m!6345018 () Bool)

(assert (=> b!5307818 m!6345018))

(assert (=> b!5307818 m!6345016))

(declare-fun m!6345020 () Bool)

(assert (=> b!5307818 m!6345020))

(declare-fun m!6345022 () Bool)

(assert (=> b!5307818 m!6345022))

(assert (=> b!5307818 m!6345016))

(declare-fun m!6345024 () Bool)

(assert (=> b!5307818 m!6345024))

(assert (=> b!5307818 m!6345022))

(declare-fun m!6345026 () Bool)

(assert (=> b!5307820 m!6345026))

(assert (=> b!5306934 d!1705920))

(declare-fun b!5307920 () Bool)

(declare-fun res!2251585 () Bool)

(declare-fun e!3298581 () Bool)

(assert (=> b!5307920 (=> (not res!2251585) (not e!3298581))))

(declare-fun lt!2168731 () Option!15068)

(declare-fun get!20994 (Option!15068) tuple2!64312)

(assert (=> b!5307920 (= res!2251585 (matchR!7142 (regTwo!30426 r!7292) (_2!35459 (get!20994 lt!2168731))))))

(declare-fun b!5307921 () Bool)

(declare-fun ++!13310 (List!61172 List!61172) List!61172)

(assert (=> b!5307921 (= e!3298581 (= (++!13310 (_1!35459 (get!20994 lt!2168731)) (_2!35459 (get!20994 lt!2168731))) s!2326))))

(declare-fun b!5307922 () Bool)

(declare-fun e!3298583 () Bool)

(assert (=> b!5307922 (= e!3298583 (not (isDefined!11771 lt!2168731)))))

(declare-fun b!5307923 () Bool)

(declare-fun e!3298580 () Option!15068)

(assert (=> b!5307923 (= e!3298580 None!15067)))

(declare-fun b!5307924 () Bool)

(declare-fun e!3298579 () Option!15068)

(assert (=> b!5307924 (= e!3298579 e!3298580)))

(declare-fun c!921846 () Bool)

(assert (=> b!5307924 (= c!921846 ((_ is Nil!61048) s!2326))))

(declare-fun d!1705928 () Bool)

(assert (=> d!1705928 e!3298583))

(declare-fun res!2251586 () Bool)

(assert (=> d!1705928 (=> res!2251586 e!3298583)))

(assert (=> d!1705928 (= res!2251586 e!3298581)))

(declare-fun res!2251583 () Bool)

(assert (=> d!1705928 (=> (not res!2251583) (not e!3298581))))

(assert (=> d!1705928 (= res!2251583 (isDefined!11771 lt!2168731))))

(assert (=> d!1705928 (= lt!2168731 e!3298579)))

(declare-fun c!921845 () Bool)

(declare-fun e!3298582 () Bool)

(assert (=> d!1705928 (= c!921845 e!3298582)))

(declare-fun res!2251582 () Bool)

(assert (=> d!1705928 (=> (not res!2251582) (not e!3298582))))

(assert (=> d!1705928 (= res!2251582 (matchR!7142 (regOne!30426 r!7292) Nil!61048))))

(assert (=> d!1705928 (validRegex!6693 (regOne!30426 r!7292))))

(assert (=> d!1705928 (= (findConcatSeparation!1482 (regOne!30426 r!7292) (regTwo!30426 r!7292) Nil!61048 s!2326 s!2326) lt!2168731)))

(declare-fun b!5307925 () Bool)

(declare-fun res!2251584 () Bool)

(assert (=> b!5307925 (=> (not res!2251584) (not e!3298581))))

(assert (=> b!5307925 (= res!2251584 (matchR!7142 (regOne!30426 r!7292) (_1!35459 (get!20994 lt!2168731))))))

(declare-fun b!5307926 () Bool)

(assert (=> b!5307926 (= e!3298579 (Some!15067 (tuple2!64313 Nil!61048 s!2326)))))

(declare-fun b!5307927 () Bool)

(assert (=> b!5307927 (= e!3298582 (matchR!7142 (regTwo!30426 r!7292) s!2326))))

(declare-fun b!5307928 () Bool)

(declare-fun lt!2168730 () Unit!153346)

(declare-fun lt!2168729 () Unit!153346)

(assert (=> b!5307928 (= lt!2168730 lt!2168729)))

(assert (=> b!5307928 (= (++!13310 (++!13310 Nil!61048 (Cons!61048 (h!67496 s!2326) Nil!61048)) (t!374377 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1725 (List!61172 C!30184 List!61172 List!61172) Unit!153346)

(assert (=> b!5307928 (= lt!2168729 (lemmaMoveElementToOtherListKeepsConcatEq!1725 Nil!61048 (h!67496 s!2326) (t!374377 s!2326) s!2326))))

(assert (=> b!5307928 (= e!3298580 (findConcatSeparation!1482 (regOne!30426 r!7292) (regTwo!30426 r!7292) (++!13310 Nil!61048 (Cons!61048 (h!67496 s!2326) Nil!61048)) (t!374377 s!2326) s!2326))))

(assert (= (and d!1705928 res!2251582) b!5307927))

(assert (= (and d!1705928 c!921845) b!5307926))

(assert (= (and d!1705928 (not c!921845)) b!5307924))

(assert (= (and b!5307924 c!921846) b!5307923))

(assert (= (and b!5307924 (not c!921846)) b!5307928))

(assert (= (and d!1705928 res!2251583) b!5307925))

(assert (= (and b!5307925 res!2251584) b!5307920))

(assert (= (and b!5307920 res!2251585) b!5307921))

(assert (= (and d!1705928 (not res!2251586)) b!5307922))

(declare-fun m!6345090 () Bool)

(assert (=> b!5307927 m!6345090))

(declare-fun m!6345092 () Bool)

(assert (=> b!5307921 m!6345092))

(declare-fun m!6345096 () Bool)

(assert (=> b!5307921 m!6345096))

(declare-fun m!6345098 () Bool)

(assert (=> b!5307928 m!6345098))

(assert (=> b!5307928 m!6345098))

(declare-fun m!6345100 () Bool)

(assert (=> b!5307928 m!6345100))

(declare-fun m!6345102 () Bool)

(assert (=> b!5307928 m!6345102))

(assert (=> b!5307928 m!6345098))

(declare-fun m!6345104 () Bool)

(assert (=> b!5307928 m!6345104))

(declare-fun m!6345106 () Bool)

(assert (=> b!5307922 m!6345106))

(assert (=> b!5307920 m!6345092))

(declare-fun m!6345108 () Bool)

(assert (=> b!5307920 m!6345108))

(assert (=> b!5307925 m!6345092))

(declare-fun m!6345110 () Bool)

(assert (=> b!5307925 m!6345110))

(assert (=> d!1705928 m!6345106))

(declare-fun m!6345112 () Bool)

(assert (=> d!1705928 m!6345112))

(declare-fun m!6345114 () Bool)

(assert (=> d!1705928 m!6345114))

(assert (=> b!5306954 d!1705928))

(declare-fun d!1705948 () Bool)

(declare-fun choose!39693 (Int) Bool)

(assert (=> d!1705948 (= (Exists!2138 lambda!270044) (choose!39693 lambda!270044))))

(declare-fun bs!1230766 () Bool)

(assert (= bs!1230766 d!1705948))

(declare-fun m!6345116 () Bool)

(assert (=> bs!1230766 m!6345116))

(assert (=> b!5306954 d!1705948))

(declare-fun d!1705950 () Bool)

(assert (=> d!1705950 (= (Exists!2138 lambda!270045) (choose!39693 lambda!270045))))

(declare-fun bs!1230767 () Bool)

(assert (= bs!1230767 d!1705950))

(declare-fun m!6345118 () Bool)

(assert (=> bs!1230767 m!6345118))

(assert (=> b!5306954 d!1705950))

(declare-fun bs!1230768 () Bool)

(declare-fun d!1705952 () Bool)

(assert (= bs!1230768 (and d!1705952 b!5306931)))

(declare-fun lambda!270145 () Int)

(assert (=> bs!1230768 (= (and (= (regOne!30426 r!7292) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168572)) (= lambda!270145 lambda!270049))))

(declare-fun bs!1230769 () Bool)

(assert (= bs!1230769 (and d!1705952 b!5306954)))

(assert (=> bs!1230769 (not (= lambda!270145 lambda!270045))))

(assert (=> bs!1230768 (not (= lambda!270145 lambda!270050))))

(assert (=> bs!1230768 (= (and (= (regOne!30426 r!7292) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168544)) (= lambda!270145 lambda!270047))))

(declare-fun bs!1230770 () Bool)

(assert (= bs!1230770 (and d!1705952 b!5307691)))

(assert (=> bs!1230770 (not (= lambda!270145 lambda!270119))))

(declare-fun bs!1230771 () Bool)

(assert (= bs!1230771 (and d!1705952 b!5307694)))

(assert (=> bs!1230771 (not (= lambda!270145 lambda!270118))))

(assert (=> bs!1230768 (not (= lambda!270145 lambda!270048))))

(assert (=> bs!1230769 (= lambda!270145 lambda!270044)))

(assert (=> d!1705952 true))

(assert (=> d!1705952 true))

(assert (=> d!1705952 true))

(assert (=> d!1705952 (= (isDefined!11771 (findConcatSeparation!1482 (regOne!30426 r!7292) (regTwo!30426 r!7292) Nil!61048 s!2326 s!2326)) (Exists!2138 lambda!270145))))

(declare-fun lt!2168734 () Unit!153346)

(declare-fun choose!39694 (Regex!14957 Regex!14957 List!61172) Unit!153346)

(assert (=> d!1705952 (= lt!2168734 (choose!39694 (regOne!30426 r!7292) (regTwo!30426 r!7292) s!2326))))

(assert (=> d!1705952 (validRegex!6693 (regOne!30426 r!7292))))

(assert (=> d!1705952 (= (lemmaFindConcatSeparationEquivalentToExists!1246 (regOne!30426 r!7292) (regTwo!30426 r!7292) s!2326) lt!2168734)))

(declare-fun bs!1230772 () Bool)

(assert (= bs!1230772 d!1705952))

(assert (=> bs!1230772 m!6344252))

(assert (=> bs!1230772 m!6344254))

(declare-fun m!6345120 () Bool)

(assert (=> bs!1230772 m!6345120))

(assert (=> bs!1230772 m!6344252))

(declare-fun m!6345122 () Bool)

(assert (=> bs!1230772 m!6345122))

(assert (=> bs!1230772 m!6345114))

(assert (=> b!5306954 d!1705952))

(declare-fun bs!1230773 () Bool)

(declare-fun d!1705954 () Bool)

(assert (= bs!1230773 (and d!1705954 d!1705952)))

(declare-fun lambda!270150 () Int)

(assert (=> bs!1230773 (= lambda!270150 lambda!270145)))

(declare-fun bs!1230774 () Bool)

(assert (= bs!1230774 (and d!1705954 b!5306931)))

(assert (=> bs!1230774 (= (and (= (regOne!30426 r!7292) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168572)) (= lambda!270150 lambda!270049))))

(declare-fun bs!1230775 () Bool)

(assert (= bs!1230775 (and d!1705954 b!5306954)))

(assert (=> bs!1230775 (not (= lambda!270150 lambda!270045))))

(assert (=> bs!1230774 (not (= lambda!270150 lambda!270050))))

(assert (=> bs!1230774 (= (and (= (regOne!30426 r!7292) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168544)) (= lambda!270150 lambda!270047))))

(declare-fun bs!1230776 () Bool)

(assert (= bs!1230776 (and d!1705954 b!5307691)))

(assert (=> bs!1230776 (not (= lambda!270150 lambda!270119))))

(declare-fun bs!1230777 () Bool)

(assert (= bs!1230777 (and d!1705954 b!5307694)))

(assert (=> bs!1230777 (not (= lambda!270150 lambda!270118))))

(assert (=> bs!1230774 (not (= lambda!270150 lambda!270048))))

(assert (=> bs!1230775 (= lambda!270150 lambda!270044)))

(assert (=> d!1705954 true))

(assert (=> d!1705954 true))

(assert (=> d!1705954 true))

(declare-fun lambda!270151 () Int)

(assert (=> bs!1230773 (not (= lambda!270151 lambda!270145))))

(assert (=> bs!1230774 (not (= lambda!270151 lambda!270049))))

(declare-fun bs!1230778 () Bool)

(assert (= bs!1230778 d!1705954))

(assert (=> bs!1230778 (not (= lambda!270151 lambda!270150))))

(assert (=> bs!1230775 (= lambda!270151 lambda!270045)))

(assert (=> bs!1230774 (= (and (= (regOne!30426 r!7292) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168572)) (= lambda!270151 lambda!270050))))

(assert (=> bs!1230774 (not (= lambda!270151 lambda!270047))))

(assert (=> bs!1230776 (= lambda!270151 lambda!270119)))

(assert (=> bs!1230777 (not (= lambda!270151 lambda!270118))))

(assert (=> bs!1230774 (= (and (= (regOne!30426 r!7292) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 r!7292) lt!2168544)) (= lambda!270151 lambda!270048))))

(assert (=> bs!1230775 (not (= lambda!270151 lambda!270044))))

(assert (=> d!1705954 true))

(assert (=> d!1705954 true))

(assert (=> d!1705954 true))

(assert (=> d!1705954 (= (Exists!2138 lambda!270150) (Exists!2138 lambda!270151))))

(declare-fun lt!2168737 () Unit!153346)

(declare-fun choose!39695 (Regex!14957 Regex!14957 List!61172) Unit!153346)

(assert (=> d!1705954 (= lt!2168737 (choose!39695 (regOne!30426 r!7292) (regTwo!30426 r!7292) s!2326))))

(assert (=> d!1705954 (validRegex!6693 (regOne!30426 r!7292))))

(assert (=> d!1705954 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!792 (regOne!30426 r!7292) (regTwo!30426 r!7292) s!2326) lt!2168737)))

(declare-fun m!6345124 () Bool)

(assert (=> bs!1230778 m!6345124))

(declare-fun m!6345126 () Bool)

(assert (=> bs!1230778 m!6345126))

(declare-fun m!6345128 () Bool)

(assert (=> bs!1230778 m!6345128))

(assert (=> bs!1230778 m!6345114))

(assert (=> b!5306954 d!1705954))

(declare-fun d!1705956 () Bool)

(declare-fun isEmpty!33012 (Option!15068) Bool)

(assert (=> d!1705956 (= (isDefined!11771 (findConcatSeparation!1482 (regOne!30426 r!7292) (regTwo!30426 r!7292) Nil!61048 s!2326 s!2326)) (not (isEmpty!33012 (findConcatSeparation!1482 (regOne!30426 r!7292) (regTwo!30426 r!7292) Nil!61048 s!2326 s!2326))))))

(declare-fun bs!1230779 () Bool)

(assert (= bs!1230779 d!1705956))

(assert (=> bs!1230779 m!6344252))

(declare-fun m!6345130 () Bool)

(assert (=> bs!1230779 m!6345130))

(assert (=> b!5306954 d!1705956))

(declare-fun b!5307943 () Bool)

(declare-fun e!3298593 () Bool)

(declare-fun lt!2168738 () Bool)

(assert (=> b!5307943 (= e!3298593 (not lt!2168738))))

(declare-fun b!5307944 () Bool)

(declare-fun res!2251603 () Bool)

(declare-fun e!3298592 () Bool)

(assert (=> b!5307944 (=> res!2251603 e!3298592)))

(assert (=> b!5307944 (= res!2251603 (not ((_ is ElementMatch!14957) (Concat!23802 lt!2168562 (regTwo!30426 r!7292)))))))

(assert (=> b!5307944 (= e!3298593 e!3298592)))

(declare-fun b!5307945 () Bool)

(declare-fun res!2251601 () Bool)

(assert (=> b!5307945 (=> res!2251601 e!3298592)))

(declare-fun e!3298595 () Bool)

(assert (=> b!5307945 (= res!2251601 e!3298595)))

(declare-fun res!2251599 () Bool)

(assert (=> b!5307945 (=> (not res!2251599) (not e!3298595))))

(assert (=> b!5307945 (= res!2251599 lt!2168738)))

(declare-fun e!3298597 () Bool)

(declare-fun b!5307946 () Bool)

(assert (=> b!5307946 (= e!3298597 (not (= (head!11379 s!2326) (c!921537 (Concat!23802 lt!2168562 (regTwo!30426 r!7292))))))))

(declare-fun b!5307947 () Bool)

(declare-fun e!3298598 () Bool)

(declare-fun call!378460 () Bool)

(assert (=> b!5307947 (= e!3298598 (= lt!2168738 call!378460))))

(declare-fun b!5307948 () Bool)

(declare-fun e!3298596 () Bool)

(assert (=> b!5307948 (= e!3298596 e!3298597)))

(declare-fun res!2251605 () Bool)

(assert (=> b!5307948 (=> res!2251605 e!3298597)))

(assert (=> b!5307948 (= res!2251605 call!378460)))

(declare-fun d!1705958 () Bool)

(assert (=> d!1705958 e!3298598))

(declare-fun c!921848 () Bool)

(assert (=> d!1705958 (= c!921848 ((_ is EmptyExpr!14957) (Concat!23802 lt!2168562 (regTwo!30426 r!7292))))))

(declare-fun e!3298594 () Bool)

(assert (=> d!1705958 (= lt!2168738 e!3298594)))

(declare-fun c!921847 () Bool)

(assert (=> d!1705958 (= c!921847 (isEmpty!33011 s!2326))))

(assert (=> d!1705958 (validRegex!6693 (Concat!23802 lt!2168562 (regTwo!30426 r!7292)))))

(assert (=> d!1705958 (= (matchR!7142 (Concat!23802 lt!2168562 (regTwo!30426 r!7292)) s!2326) lt!2168738)))

(declare-fun bm!378455 () Bool)

(assert (=> bm!378455 (= call!378460 (isEmpty!33011 s!2326))))

(declare-fun b!5307949 () Bool)

(declare-fun res!2251600 () Bool)

(assert (=> b!5307949 (=> (not res!2251600) (not e!3298595))))

(assert (=> b!5307949 (= res!2251600 (not call!378460))))

(declare-fun b!5307950 () Bool)

(assert (=> b!5307950 (= e!3298592 e!3298596)))

(declare-fun res!2251602 () Bool)

(assert (=> b!5307950 (=> (not res!2251602) (not e!3298596))))

(assert (=> b!5307950 (= res!2251602 (not lt!2168738))))

(declare-fun b!5307951 () Bool)

(assert (=> b!5307951 (= e!3298594 (nullable!5126 (Concat!23802 lt!2168562 (regTwo!30426 r!7292))))))

(declare-fun b!5307952 () Bool)

(declare-fun res!2251604 () Bool)

(assert (=> b!5307952 (=> res!2251604 e!3298597)))

(assert (=> b!5307952 (= res!2251604 (not (isEmpty!33011 (tail!10476 s!2326))))))

(declare-fun b!5307953 () Bool)

(declare-fun res!2251606 () Bool)

(assert (=> b!5307953 (=> (not res!2251606) (not e!3298595))))

(assert (=> b!5307953 (= res!2251606 (isEmpty!33011 (tail!10476 s!2326)))))

(declare-fun b!5307954 () Bool)

(assert (=> b!5307954 (= e!3298594 (matchR!7142 (derivativeStep!4151 (Concat!23802 lt!2168562 (regTwo!30426 r!7292)) (head!11379 s!2326)) (tail!10476 s!2326)))))

(declare-fun b!5307955 () Bool)

(assert (=> b!5307955 (= e!3298598 e!3298593)))

(declare-fun c!921849 () Bool)

(assert (=> b!5307955 (= c!921849 ((_ is EmptyLang!14957) (Concat!23802 lt!2168562 (regTwo!30426 r!7292))))))

(declare-fun b!5307956 () Bool)

(assert (=> b!5307956 (= e!3298595 (= (head!11379 s!2326) (c!921537 (Concat!23802 lt!2168562 (regTwo!30426 r!7292)))))))

(assert (= (and d!1705958 c!921847) b!5307951))

(assert (= (and d!1705958 (not c!921847)) b!5307954))

(assert (= (and d!1705958 c!921848) b!5307947))

(assert (= (and d!1705958 (not c!921848)) b!5307955))

(assert (= (and b!5307955 c!921849) b!5307943))

(assert (= (and b!5307955 (not c!921849)) b!5307944))

(assert (= (and b!5307944 (not res!2251603)) b!5307945))

(assert (= (and b!5307945 res!2251599) b!5307949))

(assert (= (and b!5307949 res!2251600) b!5307953))

(assert (= (and b!5307953 res!2251606) b!5307956))

(assert (= (and b!5307945 (not res!2251601)) b!5307950))

(assert (= (and b!5307950 res!2251602) b!5307948))

(assert (= (and b!5307948 (not res!2251605)) b!5307952))

(assert (= (and b!5307952 (not res!2251604)) b!5307946))

(assert (= (or b!5307947 b!5307948 b!5307949) bm!378455))

(assert (=> d!1705958 m!6344648))

(declare-fun m!6345132 () Bool)

(assert (=> d!1705958 m!6345132))

(declare-fun m!6345134 () Bool)

(assert (=> b!5307951 m!6345134))

(assert (=> b!5307954 m!6344654))

(assert (=> b!5307954 m!6344654))

(declare-fun m!6345136 () Bool)

(assert (=> b!5307954 m!6345136))

(assert (=> b!5307954 m!6344658))

(assert (=> b!5307954 m!6345136))

(assert (=> b!5307954 m!6344658))

(declare-fun m!6345138 () Bool)

(assert (=> b!5307954 m!6345138))

(assert (=> b!5307946 m!6344654))

(assert (=> b!5307956 m!6344654))

(assert (=> bm!378455 m!6344648))

(assert (=> b!5307953 m!6344658))

(assert (=> b!5307953 m!6344658))

(assert (=> b!5307953 m!6344662))

(assert (=> b!5307952 m!6344658))

(assert (=> b!5307952 m!6344658))

(assert (=> b!5307952 m!6344662))

(assert (=> b!5306933 d!1705958))

(declare-fun bs!1230780 () Bool)

(declare-fun d!1705960 () Bool)

(assert (= bs!1230780 (and d!1705960 d!1705954)))

(declare-fun lambda!270152 () Int)

(assert (=> bs!1230780 (not (= lambda!270152 lambda!270151))))

(declare-fun bs!1230781 () Bool)

(assert (= bs!1230781 (and d!1705960 d!1705952)))

(assert (=> bs!1230781 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270152 lambda!270145))))

(declare-fun bs!1230782 () Bool)

(assert (= bs!1230782 (and d!1705960 b!5306931)))

(assert (=> bs!1230782 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regTwo!30426 (regOne!30426 r!7292))) (= lt!2168544 lt!2168572)) (= lambda!270152 lambda!270049))))

(assert (=> bs!1230780 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270152 lambda!270150))))

(declare-fun bs!1230783 () Bool)

(assert (= bs!1230783 (and d!1705960 b!5306954)))

(assert (=> bs!1230783 (not (= lambda!270152 lambda!270045))))

(assert (=> bs!1230782 (not (= lambda!270152 lambda!270050))))

(assert (=> bs!1230782 (= lambda!270152 lambda!270047)))

(declare-fun bs!1230784 () Bool)

(assert (= bs!1230784 (and d!1705960 b!5307691)))

(assert (=> bs!1230784 (not (= lambda!270152 lambda!270119))))

(declare-fun bs!1230785 () Bool)

(assert (= bs!1230785 (and d!1705960 b!5307694)))

(assert (=> bs!1230785 (not (= lambda!270152 lambda!270118))))

(assert (=> bs!1230782 (not (= lambda!270152 lambda!270048))))

(assert (=> bs!1230783 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270152 lambda!270044))))

(assert (=> d!1705960 true))

(assert (=> d!1705960 true))

(assert (=> d!1705960 true))

(declare-fun lambda!270153 () Int)

(assert (=> bs!1230780 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270153 lambda!270151))))

(assert (=> bs!1230781 (not (= lambda!270153 lambda!270145))))

(assert (=> bs!1230782 (not (= lambda!270153 lambda!270049))))

(assert (=> bs!1230783 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270153 lambda!270045))))

(assert (=> bs!1230782 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regTwo!30426 (regOne!30426 r!7292))) (= lt!2168544 lt!2168572)) (= lambda!270153 lambda!270050))))

(assert (=> bs!1230782 (not (= lambda!270153 lambda!270047))))

(assert (=> bs!1230784 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270153 lambda!270119))))

(assert (=> bs!1230785 (not (= lambda!270153 lambda!270118))))

(assert (=> bs!1230782 (= lambda!270153 lambda!270048)))

(assert (=> bs!1230783 (not (= lambda!270153 lambda!270044))))

(declare-fun bs!1230786 () Bool)

(assert (= bs!1230786 d!1705960))

(assert (=> bs!1230786 (not (= lambda!270153 lambda!270152))))

(assert (=> bs!1230780 (not (= lambda!270153 lambda!270150))))

(assert (=> d!1705960 true))

(assert (=> d!1705960 true))

(assert (=> d!1705960 true))

(assert (=> d!1705960 (= (Exists!2138 lambda!270152) (Exists!2138 lambda!270153))))

(declare-fun lt!2168739 () Unit!153346)

(assert (=> d!1705960 (= lt!2168739 (choose!39695 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 s!2326))))

(assert (=> d!1705960 (validRegex!6693 (regOne!30426 (regOne!30426 r!7292)))))

(assert (=> d!1705960 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!792 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 s!2326) lt!2168739)))

(declare-fun m!6345140 () Bool)

(assert (=> bs!1230786 m!6345140))

(declare-fun m!6345142 () Bool)

(assert (=> bs!1230786 m!6345142))

(declare-fun m!6345144 () Bool)

(assert (=> bs!1230786 m!6345144))

(declare-fun m!6345146 () Bool)

(assert (=> bs!1230786 m!6345146))

(assert (=> b!5306931 d!1705960))

(declare-fun d!1705962 () Bool)

(assert (=> d!1705962 (= (Exists!2138 lambda!270049) (choose!39693 lambda!270049))))

(declare-fun bs!1230787 () Bool)

(assert (= bs!1230787 d!1705962))

(declare-fun m!6345148 () Bool)

(assert (=> bs!1230787 m!6345148))

(assert (=> b!5306931 d!1705962))

(declare-fun bs!1230788 () Bool)

(declare-fun d!1705964 () Bool)

(assert (= bs!1230788 (and d!1705964 d!1705726)))

(declare-fun lambda!270154 () Int)

(assert (=> bs!1230788 (= lambda!270154 lambda!270069)))

(declare-fun bs!1230789 () Bool)

(assert (= bs!1230789 (and d!1705964 d!1705736)))

(assert (=> bs!1230789 (= lambda!270154 lambda!270072)))

(declare-fun bs!1230790 () Bool)

(assert (= bs!1230790 (and d!1705964 d!1705850)))

(assert (=> bs!1230790 (= lambda!270154 lambda!270107)))

(declare-fun bs!1230791 () Bool)

(assert (= bs!1230791 (and d!1705964 d!1705854)))

(assert (=> bs!1230791 (= lambda!270154 lambda!270110)))

(declare-fun bs!1230792 () Bool)

(assert (= bs!1230792 (and d!1705964 d!1705748)))

(assert (=> bs!1230792 (= lambda!270154 lambda!270081)))

(declare-fun bs!1230793 () Bool)

(assert (= bs!1230793 (and d!1705964 b!5306953)))

(assert (=> bs!1230793 (= lambda!270154 lambda!270051)))

(declare-fun b!5307957 () Bool)

(declare-fun e!3298600 () Regex!14957)

(assert (=> b!5307957 (= e!3298600 (h!67494 (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307959 () Bool)

(declare-fun e!3298602 () Regex!14957)

(assert (=> b!5307959 (= e!3298602 EmptyExpr!14957)))

(declare-fun b!5307960 () Bool)

(declare-fun e!3298603 () Bool)

(declare-fun lt!2168740 () Regex!14957)

(assert (=> b!5307960 (= e!3298603 (isConcat!387 lt!2168740))))

(declare-fun b!5307961 () Bool)

(assert (=> b!5307961 (= e!3298600 e!3298602)))

(declare-fun c!921852 () Bool)

(assert (=> b!5307961 (= c!921852 ((_ is Cons!61046) (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(declare-fun b!5307962 () Bool)

(assert (=> b!5307962 (= e!3298602 (Concat!23802 (h!67494 (t!374375 (exprs!4841 (h!67495 zl!343)))) (generalisedConcat!626 (t!374375 (t!374375 (exprs!4841 (h!67495 zl!343)))))))))

(declare-fun b!5307963 () Bool)

(assert (=> b!5307963 (= e!3298603 (= lt!2168740 (head!11378 (t!374375 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5307964 () Bool)

(declare-fun e!3298604 () Bool)

(assert (=> b!5307964 (= e!3298604 (isEmpty!33008 (t!374375 (t!374375 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5307958 () Bool)

(declare-fun e!3298601 () Bool)

(assert (=> b!5307958 (= e!3298601 (isEmptyExpr!864 lt!2168740))))

(declare-fun e!3298599 () Bool)

(assert (=> d!1705964 e!3298599))

(declare-fun res!2251607 () Bool)

(assert (=> d!1705964 (=> (not res!2251607) (not e!3298599))))

(assert (=> d!1705964 (= res!2251607 (validRegex!6693 lt!2168740))))

(assert (=> d!1705964 (= lt!2168740 e!3298600)))

(declare-fun c!921850 () Bool)

(assert (=> d!1705964 (= c!921850 e!3298604)))

(declare-fun res!2251608 () Bool)

(assert (=> d!1705964 (=> (not res!2251608) (not e!3298604))))

(assert (=> d!1705964 (= res!2251608 ((_ is Cons!61046) (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(assert (=> d!1705964 (forall!14373 (t!374375 (exprs!4841 (h!67495 zl!343))) lambda!270154)))

(assert (=> d!1705964 (= (generalisedConcat!626 (t!374375 (exprs!4841 (h!67495 zl!343)))) lt!2168740)))

(declare-fun b!5307965 () Bool)

(assert (=> b!5307965 (= e!3298601 e!3298603)))

(declare-fun c!921851 () Bool)

(assert (=> b!5307965 (= c!921851 (isEmpty!33008 (tail!10475 (t!374375 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5307966 () Bool)

(assert (=> b!5307966 (= e!3298599 e!3298601)))

(declare-fun c!921853 () Bool)

(assert (=> b!5307966 (= c!921853 (isEmpty!33008 (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(assert (= (and d!1705964 res!2251608) b!5307964))

(assert (= (and d!1705964 c!921850) b!5307957))

(assert (= (and d!1705964 (not c!921850)) b!5307961))

(assert (= (and b!5307961 c!921852) b!5307962))

(assert (= (and b!5307961 (not c!921852)) b!5307959))

(assert (= (and d!1705964 res!2251607) b!5307966))

(assert (= (and b!5307966 c!921853) b!5307958))

(assert (= (and b!5307966 (not c!921853)) b!5307965))

(assert (= (and b!5307965 c!921851) b!5307963))

(assert (= (and b!5307965 (not c!921851)) b!5307960))

(declare-fun m!6345150 () Bool)

(assert (=> b!5307964 m!6345150))

(declare-fun m!6345152 () Bool)

(assert (=> b!5307963 m!6345152))

(declare-fun m!6345154 () Bool)

(assert (=> b!5307965 m!6345154))

(assert (=> b!5307965 m!6345154))

(declare-fun m!6345156 () Bool)

(assert (=> b!5307965 m!6345156))

(assert (=> b!5307966 m!6344298))

(declare-fun m!6345158 () Bool)

(assert (=> b!5307960 m!6345158))

(declare-fun m!6345160 () Bool)

(assert (=> d!1705964 m!6345160))

(declare-fun m!6345162 () Bool)

(assert (=> d!1705964 m!6345162))

(declare-fun m!6345164 () Bool)

(assert (=> b!5307958 m!6345164))

(declare-fun m!6345166 () Bool)

(assert (=> b!5307962 m!6345166))

(assert (=> b!5306931 d!1705964))

(declare-fun d!1705966 () Bool)

(assert (=> d!1705966 (= (Exists!2138 lambda!270047) (choose!39693 lambda!270047))))

(declare-fun bs!1230794 () Bool)

(assert (= bs!1230794 d!1705966))

(declare-fun m!6345168 () Bool)

(assert (=> bs!1230794 m!6345168))

(assert (=> b!5306931 d!1705966))

(declare-fun b!5307967 () Bool)

(declare-fun e!3298606 () Bool)

(declare-fun lt!2168741 () Bool)

(assert (=> b!5307967 (= e!3298606 (not lt!2168741))))

(declare-fun b!5307968 () Bool)

(declare-fun res!2251613 () Bool)

(declare-fun e!3298605 () Bool)

(assert (=> b!5307968 (=> res!2251613 e!3298605)))

(assert (=> b!5307968 (= res!2251613 (not ((_ is ElementMatch!14957) lt!2168558)))))

(assert (=> b!5307968 (= e!3298606 e!3298605)))

(declare-fun b!5307969 () Bool)

(declare-fun res!2251611 () Bool)

(assert (=> b!5307969 (=> res!2251611 e!3298605)))

(declare-fun e!3298608 () Bool)

(assert (=> b!5307969 (= res!2251611 e!3298608)))

(declare-fun res!2251609 () Bool)

(assert (=> b!5307969 (=> (not res!2251609) (not e!3298608))))

(assert (=> b!5307969 (= res!2251609 lt!2168741)))

(declare-fun b!5307970 () Bool)

(declare-fun e!3298610 () Bool)

(assert (=> b!5307970 (= e!3298610 (not (= (head!11379 s!2326) (c!921537 lt!2168558))))))

(declare-fun b!5307971 () Bool)

(declare-fun e!3298611 () Bool)

(declare-fun call!378461 () Bool)

(assert (=> b!5307971 (= e!3298611 (= lt!2168741 call!378461))))

(declare-fun b!5307972 () Bool)

(declare-fun e!3298609 () Bool)

(assert (=> b!5307972 (= e!3298609 e!3298610)))

(declare-fun res!2251615 () Bool)

(assert (=> b!5307972 (=> res!2251615 e!3298610)))

(assert (=> b!5307972 (= res!2251615 call!378461)))

(declare-fun d!1705968 () Bool)

(assert (=> d!1705968 e!3298611))

(declare-fun c!921855 () Bool)

(assert (=> d!1705968 (= c!921855 ((_ is EmptyExpr!14957) lt!2168558))))

(declare-fun e!3298607 () Bool)

(assert (=> d!1705968 (= lt!2168741 e!3298607)))

(declare-fun c!921854 () Bool)

(assert (=> d!1705968 (= c!921854 (isEmpty!33011 s!2326))))

(assert (=> d!1705968 (validRegex!6693 lt!2168558)))

(assert (=> d!1705968 (= (matchR!7142 lt!2168558 s!2326) lt!2168741)))

(declare-fun bm!378456 () Bool)

(assert (=> bm!378456 (= call!378461 (isEmpty!33011 s!2326))))

(declare-fun b!5307973 () Bool)

(declare-fun res!2251610 () Bool)

(assert (=> b!5307973 (=> (not res!2251610) (not e!3298608))))

(assert (=> b!5307973 (= res!2251610 (not call!378461))))

(declare-fun b!5307974 () Bool)

(assert (=> b!5307974 (= e!3298605 e!3298609)))

(declare-fun res!2251612 () Bool)

(assert (=> b!5307974 (=> (not res!2251612) (not e!3298609))))

(assert (=> b!5307974 (= res!2251612 (not lt!2168741))))

(declare-fun b!5307975 () Bool)

(assert (=> b!5307975 (= e!3298607 (nullable!5126 lt!2168558))))

(declare-fun b!5307976 () Bool)

(declare-fun res!2251614 () Bool)

(assert (=> b!5307976 (=> res!2251614 e!3298610)))

(assert (=> b!5307976 (= res!2251614 (not (isEmpty!33011 (tail!10476 s!2326))))))

(declare-fun b!5307977 () Bool)

(declare-fun res!2251616 () Bool)

(assert (=> b!5307977 (=> (not res!2251616) (not e!3298608))))

(assert (=> b!5307977 (= res!2251616 (isEmpty!33011 (tail!10476 s!2326)))))

(declare-fun b!5307978 () Bool)

(assert (=> b!5307978 (= e!3298607 (matchR!7142 (derivativeStep!4151 lt!2168558 (head!11379 s!2326)) (tail!10476 s!2326)))))

(declare-fun b!5307979 () Bool)

(assert (=> b!5307979 (= e!3298611 e!3298606)))

(declare-fun c!921856 () Bool)

(assert (=> b!5307979 (= c!921856 ((_ is EmptyLang!14957) lt!2168558))))

(declare-fun b!5307980 () Bool)

(assert (=> b!5307980 (= e!3298608 (= (head!11379 s!2326) (c!921537 lt!2168558)))))

(assert (= (and d!1705968 c!921854) b!5307975))

(assert (= (and d!1705968 (not c!921854)) b!5307978))

(assert (= (and d!1705968 c!921855) b!5307971))

(assert (= (and d!1705968 (not c!921855)) b!5307979))

(assert (= (and b!5307979 c!921856) b!5307967))

(assert (= (and b!5307979 (not c!921856)) b!5307968))

(assert (= (and b!5307968 (not res!2251613)) b!5307969))

(assert (= (and b!5307969 res!2251609) b!5307973))

(assert (= (and b!5307973 res!2251610) b!5307977))

(assert (= (and b!5307977 res!2251616) b!5307980))

(assert (= (and b!5307969 (not res!2251611)) b!5307974))

(assert (= (and b!5307974 res!2251612) b!5307972))

(assert (= (and b!5307972 (not res!2251615)) b!5307976))

(assert (= (and b!5307976 (not res!2251614)) b!5307970))

(assert (= (or b!5307971 b!5307972 b!5307973) bm!378456))

(assert (=> d!1705968 m!6344648))

(declare-fun m!6345170 () Bool)

(assert (=> d!1705968 m!6345170))

(declare-fun m!6345172 () Bool)

(assert (=> b!5307975 m!6345172))

(assert (=> b!5307978 m!6344654))

(assert (=> b!5307978 m!6344654))

(declare-fun m!6345174 () Bool)

(assert (=> b!5307978 m!6345174))

(assert (=> b!5307978 m!6344658))

(assert (=> b!5307978 m!6345174))

(assert (=> b!5307978 m!6344658))

(declare-fun m!6345176 () Bool)

(assert (=> b!5307978 m!6345176))

(assert (=> b!5307970 m!6344654))

(assert (=> b!5307980 m!6344654))

(assert (=> bm!378456 m!6344648))

(assert (=> b!5307977 m!6344658))

(assert (=> b!5307977 m!6344658))

(assert (=> b!5307977 m!6344662))

(assert (=> b!5307976 m!6344658))

(assert (=> b!5307976 m!6344658))

(assert (=> b!5307976 m!6344662))

(assert (=> b!5306931 d!1705968))

(declare-fun d!1705970 () Bool)

(assert (=> d!1705970 (= (isDefined!11771 (findConcatSeparation!1482 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 Nil!61048 s!2326 s!2326)) (not (isEmpty!33012 (findConcatSeparation!1482 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 Nil!61048 s!2326 s!2326))))))

(declare-fun bs!1230795 () Bool)

(assert (= bs!1230795 d!1705970))

(assert (=> bs!1230795 m!6344136))

(declare-fun m!6345178 () Bool)

(assert (=> bs!1230795 m!6345178))

(assert (=> b!5306931 d!1705970))

(declare-fun bs!1230796 () Bool)

(declare-fun d!1705972 () Bool)

(assert (= bs!1230796 (and d!1705972 d!1705954)))

(declare-fun lambda!270155 () Int)

(assert (=> bs!1230796 (not (= lambda!270155 lambda!270151))))

(declare-fun bs!1230797 () Bool)

(assert (= bs!1230797 (and d!1705972 d!1705952)))

(assert (=> bs!1230797 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270155 lambda!270145))))

(declare-fun bs!1230798 () Bool)

(assert (= bs!1230798 (and d!1705972 b!5306931)))

(assert (=> bs!1230798 (= lambda!270155 lambda!270049)))

(declare-fun bs!1230799 () Bool)

(assert (= bs!1230799 (and d!1705972 b!5306954)))

(assert (=> bs!1230799 (not (= lambda!270155 lambda!270045))))

(assert (=> bs!1230798 (not (= lambda!270155 lambda!270050))))

(assert (=> bs!1230798 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270155 lambda!270047))))

(declare-fun bs!1230800 () Bool)

(assert (= bs!1230800 (and d!1705972 b!5307691)))

(assert (=> bs!1230800 (not (= lambda!270155 lambda!270119))))

(declare-fun bs!1230801 () Bool)

(assert (= bs!1230801 (and d!1705972 b!5307694)))

(assert (=> bs!1230801 (not (= lambda!270155 lambda!270118))))

(assert (=> bs!1230798 (not (= lambda!270155 lambda!270048))))

(declare-fun bs!1230802 () Bool)

(assert (= bs!1230802 (and d!1705972 d!1705960)))

(assert (=> bs!1230802 (not (= lambda!270155 lambda!270153))))

(assert (=> bs!1230799 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270155 lambda!270044))))

(assert (=> bs!1230802 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270155 lambda!270152))))

(assert (=> bs!1230796 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270155 lambda!270150))))

(assert (=> d!1705972 true))

(assert (=> d!1705972 true))

(assert (=> d!1705972 true))

(declare-fun lambda!270156 () Int)

(assert (=> bs!1230796 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270156 lambda!270151))))

(declare-fun bs!1230803 () Bool)

(assert (= bs!1230803 d!1705972))

(assert (=> bs!1230803 (not (= lambda!270156 lambda!270155))))

(assert (=> bs!1230797 (not (= lambda!270156 lambda!270145))))

(assert (=> bs!1230798 (not (= lambda!270156 lambda!270049))))

(assert (=> bs!1230799 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270156 lambda!270045))))

(assert (=> bs!1230798 (= lambda!270156 lambda!270050)))

(assert (=> bs!1230798 (not (= lambda!270156 lambda!270047))))

(assert (=> bs!1230800 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270156 lambda!270119))))

(assert (=> bs!1230801 (not (= lambda!270156 lambda!270118))))

(assert (=> bs!1230798 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270156 lambda!270048))))

(assert (=> bs!1230802 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270156 lambda!270153))))

(assert (=> bs!1230799 (not (= lambda!270156 lambda!270044))))

(assert (=> bs!1230802 (not (= lambda!270156 lambda!270152))))

(assert (=> bs!1230796 (not (= lambda!270156 lambda!270150))))

(assert (=> d!1705972 true))

(assert (=> d!1705972 true))

(assert (=> d!1705972 true))

(assert (=> d!1705972 (= (Exists!2138 lambda!270155) (Exists!2138 lambda!270156))))

(declare-fun lt!2168742 () Unit!153346)

(assert (=> d!1705972 (= lt!2168742 (choose!39695 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 s!2326))))

(assert (=> d!1705972 (validRegex!6693 (regTwo!30426 (regOne!30426 r!7292)))))

(assert (=> d!1705972 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!792 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 s!2326) lt!2168742)))

(declare-fun m!6345180 () Bool)

(assert (=> bs!1230803 m!6345180))

(declare-fun m!6345182 () Bool)

(assert (=> bs!1230803 m!6345182))

(declare-fun m!6345184 () Bool)

(assert (=> bs!1230803 m!6345184))

(declare-fun m!6345186 () Bool)

(assert (=> bs!1230803 m!6345186))

(assert (=> b!5306931 d!1705972))

(declare-fun bs!1230804 () Bool)

(declare-fun b!5307986 () Bool)

(assert (= bs!1230804 (and b!5307986 d!1705954)))

(declare-fun lambda!270157 () Int)

(assert (=> bs!1230804 (not (= lambda!270157 lambda!270151))))

(declare-fun bs!1230805 () Bool)

(assert (= bs!1230805 (and b!5307986 d!1705972)))

(assert (=> bs!1230805 (not (= lambda!270157 lambda!270155))))

(declare-fun bs!1230806 () Bool)

(assert (= bs!1230806 (and b!5307986 d!1705952)))

(assert (=> bs!1230806 (not (= lambda!270157 lambda!270145))))

(declare-fun bs!1230807 () Bool)

(assert (= bs!1230807 (and b!5307986 b!5306931)))

(assert (=> bs!1230807 (not (= lambda!270157 lambda!270049))))

(assert (=> bs!1230805 (not (= lambda!270157 lambda!270156))))

(declare-fun bs!1230808 () Bool)

(assert (= bs!1230808 (and b!5307986 b!5306954)))

(assert (=> bs!1230808 (not (= lambda!270157 lambda!270045))))

(assert (=> bs!1230807 (not (= lambda!270157 lambda!270050))))

(assert (=> bs!1230807 (not (= lambda!270157 lambda!270047))))

(declare-fun bs!1230809 () Bool)

(assert (= bs!1230809 (and b!5307986 b!5307691)))

(assert (=> bs!1230809 (not (= lambda!270157 lambda!270119))))

(declare-fun bs!1230810 () Bool)

(assert (= bs!1230810 (and b!5307986 b!5307694)))

(assert (=> bs!1230810 (= (and (= (reg!15286 lt!2168558) (reg!15286 r!7292)) (= lt!2168558 r!7292)) (= lambda!270157 lambda!270118))))

(assert (=> bs!1230807 (not (= lambda!270157 lambda!270048))))

(declare-fun bs!1230811 () Bool)

(assert (= bs!1230811 (and b!5307986 d!1705960)))

(assert (=> bs!1230811 (not (= lambda!270157 lambda!270153))))

(assert (=> bs!1230808 (not (= lambda!270157 lambda!270044))))

(assert (=> bs!1230811 (not (= lambda!270157 lambda!270152))))

(assert (=> bs!1230804 (not (= lambda!270157 lambda!270150))))

(assert (=> b!5307986 true))

(assert (=> b!5307986 true))

(declare-fun bs!1230812 () Bool)

(declare-fun b!5307983 () Bool)

(assert (= bs!1230812 (and b!5307983 d!1705954)))

(declare-fun lambda!270158 () Int)

(assert (=> bs!1230812 (= (and (= (regOne!30426 lt!2168558) (regOne!30426 r!7292)) (= (regTwo!30426 lt!2168558) (regTwo!30426 r!7292))) (= lambda!270158 lambda!270151))))

(declare-fun bs!1230813 () Bool)

(assert (= bs!1230813 (and b!5307983 d!1705972)))

(assert (=> bs!1230813 (not (= lambda!270158 lambda!270155))))

(declare-fun bs!1230814 () Bool)

(assert (= bs!1230814 (and b!5307983 d!1705952)))

(assert (=> bs!1230814 (not (= lambda!270158 lambda!270145))))

(declare-fun bs!1230815 () Bool)

(assert (= bs!1230815 (and b!5307983 b!5306931)))

(assert (=> bs!1230815 (not (= lambda!270158 lambda!270049))))

(declare-fun bs!1230816 () Bool)

(assert (= bs!1230816 (and b!5307983 b!5307986)))

(assert (=> bs!1230816 (not (= lambda!270158 lambda!270157))))

(assert (=> bs!1230813 (= (and (= (regOne!30426 lt!2168558) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168558) lt!2168572)) (= lambda!270158 lambda!270156))))

(declare-fun bs!1230817 () Bool)

(assert (= bs!1230817 (and b!5307983 b!5306954)))

(assert (=> bs!1230817 (= (and (= (regOne!30426 lt!2168558) (regOne!30426 r!7292)) (= (regTwo!30426 lt!2168558) (regTwo!30426 r!7292))) (= lambda!270158 lambda!270045))))

(assert (=> bs!1230815 (= (and (= (regOne!30426 lt!2168558) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168558) lt!2168572)) (= lambda!270158 lambda!270050))))

(assert (=> bs!1230815 (not (= lambda!270158 lambda!270047))))

(declare-fun bs!1230818 () Bool)

(assert (= bs!1230818 (and b!5307983 b!5307691)))

(assert (=> bs!1230818 (= (and (= (regOne!30426 lt!2168558) (regOne!30426 r!7292)) (= (regTwo!30426 lt!2168558) (regTwo!30426 r!7292))) (= lambda!270158 lambda!270119))))

(declare-fun bs!1230819 () Bool)

(assert (= bs!1230819 (and b!5307983 b!5307694)))

(assert (=> bs!1230819 (not (= lambda!270158 lambda!270118))))

(assert (=> bs!1230815 (= (and (= (regOne!30426 lt!2168558) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168558) lt!2168544)) (= lambda!270158 lambda!270048))))

(declare-fun bs!1230820 () Bool)

(assert (= bs!1230820 (and b!5307983 d!1705960)))

(assert (=> bs!1230820 (= (and (= (regOne!30426 lt!2168558) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168558) lt!2168544)) (= lambda!270158 lambda!270153))))

(assert (=> bs!1230817 (not (= lambda!270158 lambda!270044))))

(assert (=> bs!1230820 (not (= lambda!270158 lambda!270152))))

(assert (=> bs!1230812 (not (= lambda!270158 lambda!270150))))

(assert (=> b!5307983 true))

(assert (=> b!5307983 true))

(declare-fun d!1705974 () Bool)

(declare-fun c!921858 () Bool)

(assert (=> d!1705974 (= c!921858 ((_ is EmptyExpr!14957) lt!2168558))))

(declare-fun e!3298613 () Bool)

(assert (=> d!1705974 (= (matchRSpec!2060 lt!2168558 s!2326) e!3298613)))

(declare-fun b!5307981 () Bool)

(declare-fun e!3298617 () Bool)

(assert (=> b!5307981 (= e!3298617 (= s!2326 (Cons!61048 (c!921537 lt!2168558) Nil!61048)))))

(declare-fun b!5307982 () Bool)

(declare-fun c!921860 () Bool)

(assert (=> b!5307982 (= c!921860 ((_ is ElementMatch!14957) lt!2168558))))

(declare-fun e!3298618 () Bool)

(assert (=> b!5307982 (= e!3298618 e!3298617)))

(declare-fun e!3298615 () Bool)

(declare-fun call!378463 () Bool)

(assert (=> b!5307983 (= e!3298615 call!378463)))

(declare-fun b!5307984 () Bool)

(assert (=> b!5307984 (= e!3298613 e!3298618)))

(declare-fun res!2251618 () Bool)

(assert (=> b!5307984 (= res!2251618 (not ((_ is EmptyLang!14957) lt!2168558)))))

(assert (=> b!5307984 (=> (not res!2251618) (not e!3298618))))

(declare-fun bm!378457 () Bool)

(declare-fun call!378462 () Bool)

(assert (=> bm!378457 (= call!378462 (isEmpty!33011 s!2326))))

(declare-fun b!5307985 () Bool)

(assert (=> b!5307985 (= e!3298613 call!378462)))

(declare-fun c!921857 () Bool)

(declare-fun bm!378458 () Bool)

(assert (=> bm!378458 (= call!378463 (Exists!2138 (ite c!921857 lambda!270157 lambda!270158)))))

(declare-fun e!3298616 () Bool)

(assert (=> b!5307986 (= e!3298616 call!378463)))

(declare-fun b!5307987 () Bool)

(declare-fun res!2251619 () Bool)

(assert (=> b!5307987 (=> res!2251619 e!3298616)))

(assert (=> b!5307987 (= res!2251619 call!378462)))

(assert (=> b!5307987 (= e!3298615 e!3298616)))

(declare-fun b!5307988 () Bool)

(declare-fun e!3298614 () Bool)

(assert (=> b!5307988 (= e!3298614 (matchRSpec!2060 (regTwo!30427 lt!2168558) s!2326))))

(declare-fun b!5307989 () Bool)

(declare-fun e!3298612 () Bool)

(assert (=> b!5307989 (= e!3298612 e!3298614)))

(declare-fun res!2251617 () Bool)

(assert (=> b!5307989 (= res!2251617 (matchRSpec!2060 (regOne!30427 lt!2168558) s!2326))))

(assert (=> b!5307989 (=> res!2251617 e!3298614)))

(declare-fun b!5307990 () Bool)

(assert (=> b!5307990 (= e!3298612 e!3298615)))

(assert (=> b!5307990 (= c!921857 ((_ is Star!14957) lt!2168558))))

(declare-fun b!5307991 () Bool)

(declare-fun c!921859 () Bool)

(assert (=> b!5307991 (= c!921859 ((_ is Union!14957) lt!2168558))))

(assert (=> b!5307991 (= e!3298617 e!3298612)))

(assert (= (and d!1705974 c!921858) b!5307985))

(assert (= (and d!1705974 (not c!921858)) b!5307984))

(assert (= (and b!5307984 res!2251618) b!5307982))

(assert (= (and b!5307982 c!921860) b!5307981))

(assert (= (and b!5307982 (not c!921860)) b!5307991))

(assert (= (and b!5307991 c!921859) b!5307989))

(assert (= (and b!5307991 (not c!921859)) b!5307990))

(assert (= (and b!5307989 (not res!2251617)) b!5307988))

(assert (= (and b!5307990 c!921857) b!5307987))

(assert (= (and b!5307990 (not c!921857)) b!5307983))

(assert (= (and b!5307987 (not res!2251619)) b!5307986))

(assert (= (or b!5307986 b!5307983) bm!378458))

(assert (= (or b!5307985 b!5307987) bm!378457))

(assert (=> bm!378457 m!6344648))

(declare-fun m!6345188 () Bool)

(assert (=> bm!378458 m!6345188))

(declare-fun m!6345190 () Bool)

(assert (=> b!5307988 m!6345190))

(declare-fun m!6345192 () Bool)

(assert (=> b!5307989 m!6345192))

(assert (=> b!5306931 d!1705974))

(declare-fun d!1705976 () Bool)

(assert (=> d!1705976 (= (matchR!7142 lt!2168544 s!2326) (matchRSpec!2060 lt!2168544 s!2326))))

(declare-fun lt!2168743 () Unit!153346)

(assert (=> d!1705976 (= lt!2168743 (choose!39692 lt!2168544 s!2326))))

(assert (=> d!1705976 (validRegex!6693 lt!2168544)))

(assert (=> d!1705976 (= (mainMatchTheorem!2060 lt!2168544 s!2326) lt!2168743)))

(declare-fun bs!1230821 () Bool)

(assert (= bs!1230821 d!1705976))

(assert (=> bs!1230821 m!6344160))

(assert (=> bs!1230821 m!6344130))

(declare-fun m!6345194 () Bool)

(assert (=> bs!1230821 m!6345194))

(declare-fun m!6345196 () Bool)

(assert (=> bs!1230821 m!6345196))

(assert (=> b!5306931 d!1705976))

(declare-fun b!5307992 () Bool)

(declare-fun res!2251623 () Bool)

(declare-fun e!3298621 () Bool)

(assert (=> b!5307992 (=> (not res!2251623) (not e!3298621))))

(declare-fun lt!2168746 () Option!15068)

(assert (=> b!5307992 (= res!2251623 (matchR!7142 lt!2168572 (_2!35459 (get!20994 lt!2168746))))))

(declare-fun b!5307993 () Bool)

(assert (=> b!5307993 (= e!3298621 (= (++!13310 (_1!35459 (get!20994 lt!2168746)) (_2!35459 (get!20994 lt!2168746))) s!2326))))

(declare-fun b!5307994 () Bool)

(declare-fun e!3298623 () Bool)

(assert (=> b!5307994 (= e!3298623 (not (isDefined!11771 lt!2168746)))))

(declare-fun b!5307995 () Bool)

(declare-fun e!3298620 () Option!15068)

(assert (=> b!5307995 (= e!3298620 None!15067)))

(declare-fun b!5307996 () Bool)

(declare-fun e!3298619 () Option!15068)

(assert (=> b!5307996 (= e!3298619 e!3298620)))

(declare-fun c!921862 () Bool)

(assert (=> b!5307996 (= c!921862 ((_ is Nil!61048) s!2326))))

(declare-fun d!1705978 () Bool)

(assert (=> d!1705978 e!3298623))

(declare-fun res!2251624 () Bool)

(assert (=> d!1705978 (=> res!2251624 e!3298623)))

(assert (=> d!1705978 (= res!2251624 e!3298621)))

(declare-fun res!2251621 () Bool)

(assert (=> d!1705978 (=> (not res!2251621) (not e!3298621))))

(assert (=> d!1705978 (= res!2251621 (isDefined!11771 lt!2168746))))

(assert (=> d!1705978 (= lt!2168746 e!3298619)))

(declare-fun c!921861 () Bool)

(declare-fun e!3298622 () Bool)

(assert (=> d!1705978 (= c!921861 e!3298622)))

(declare-fun res!2251620 () Bool)

(assert (=> d!1705978 (=> (not res!2251620) (not e!3298622))))

(assert (=> d!1705978 (= res!2251620 (matchR!7142 (regTwo!30426 (regOne!30426 r!7292)) Nil!61048))))

(assert (=> d!1705978 (validRegex!6693 (regTwo!30426 (regOne!30426 r!7292)))))

(assert (=> d!1705978 (= (findConcatSeparation!1482 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 Nil!61048 s!2326 s!2326) lt!2168746)))

(declare-fun b!5307997 () Bool)

(declare-fun res!2251622 () Bool)

(assert (=> b!5307997 (=> (not res!2251622) (not e!3298621))))

(assert (=> b!5307997 (= res!2251622 (matchR!7142 (regTwo!30426 (regOne!30426 r!7292)) (_1!35459 (get!20994 lt!2168746))))))

(declare-fun b!5307998 () Bool)

(assert (=> b!5307998 (= e!3298619 (Some!15067 (tuple2!64313 Nil!61048 s!2326)))))

(declare-fun b!5307999 () Bool)

(assert (=> b!5307999 (= e!3298622 (matchR!7142 lt!2168572 s!2326))))

(declare-fun b!5308000 () Bool)

(declare-fun lt!2168745 () Unit!153346)

(declare-fun lt!2168744 () Unit!153346)

(assert (=> b!5308000 (= lt!2168745 lt!2168744)))

(assert (=> b!5308000 (= (++!13310 (++!13310 Nil!61048 (Cons!61048 (h!67496 s!2326) Nil!61048)) (t!374377 s!2326)) s!2326)))

(assert (=> b!5308000 (= lt!2168744 (lemmaMoveElementToOtherListKeepsConcatEq!1725 Nil!61048 (h!67496 s!2326) (t!374377 s!2326) s!2326))))

(assert (=> b!5308000 (= e!3298620 (findConcatSeparation!1482 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 (++!13310 Nil!61048 (Cons!61048 (h!67496 s!2326) Nil!61048)) (t!374377 s!2326) s!2326))))

(assert (= (and d!1705978 res!2251620) b!5307999))

(assert (= (and d!1705978 c!921861) b!5307998))

(assert (= (and d!1705978 (not c!921861)) b!5307996))

(assert (= (and b!5307996 c!921862) b!5307995))

(assert (= (and b!5307996 (not c!921862)) b!5308000))

(assert (= (and d!1705978 res!2251621) b!5307997))

(assert (= (and b!5307997 res!2251622) b!5307992))

(assert (= (and b!5307992 res!2251623) b!5307993))

(assert (= (and d!1705978 (not res!2251624)) b!5307994))

(declare-fun m!6345198 () Bool)

(assert (=> b!5307999 m!6345198))

(declare-fun m!6345200 () Bool)

(assert (=> b!5307993 m!6345200))

(declare-fun m!6345202 () Bool)

(assert (=> b!5307993 m!6345202))

(assert (=> b!5308000 m!6345098))

(assert (=> b!5308000 m!6345098))

(assert (=> b!5308000 m!6345100))

(assert (=> b!5308000 m!6345102))

(assert (=> b!5308000 m!6345098))

(declare-fun m!6345204 () Bool)

(assert (=> b!5308000 m!6345204))

(declare-fun m!6345206 () Bool)

(assert (=> b!5307994 m!6345206))

(assert (=> b!5307992 m!6345200))

(declare-fun m!6345208 () Bool)

(assert (=> b!5307992 m!6345208))

(assert (=> b!5307997 m!6345200))

(declare-fun m!6345210 () Bool)

(assert (=> b!5307997 m!6345210))

(assert (=> d!1705978 m!6345206))

(declare-fun m!6345212 () Bool)

(assert (=> d!1705978 m!6345212))

(assert (=> d!1705978 m!6345186))

(assert (=> b!5306931 d!1705978))

(declare-fun bs!1230822 () Bool)

(declare-fun b!5308006 () Bool)

(assert (= bs!1230822 (and b!5308006 d!1705954)))

(declare-fun lambda!270159 () Int)

(assert (=> bs!1230822 (not (= lambda!270159 lambda!270151))))

(declare-fun bs!1230823 () Bool)

(assert (= bs!1230823 (and b!5308006 d!1705972)))

(assert (=> bs!1230823 (not (= lambda!270159 lambda!270155))))

(declare-fun bs!1230824 () Bool)

(assert (= bs!1230824 (and b!5308006 d!1705952)))

(assert (=> bs!1230824 (not (= lambda!270159 lambda!270145))))

(declare-fun bs!1230825 () Bool)

(assert (= bs!1230825 (and b!5308006 b!5306931)))

(assert (=> bs!1230825 (not (= lambda!270159 lambda!270049))))

(declare-fun bs!1230826 () Bool)

(assert (= bs!1230826 (and b!5308006 b!5307986)))

(assert (=> bs!1230826 (= (and (= (reg!15286 lt!2168544) (reg!15286 lt!2168558)) (= lt!2168544 lt!2168558)) (= lambda!270159 lambda!270157))))

(assert (=> bs!1230823 (not (= lambda!270159 lambda!270156))))

(declare-fun bs!1230827 () Bool)

(assert (= bs!1230827 (and b!5308006 b!5306954)))

(assert (=> bs!1230827 (not (= lambda!270159 lambda!270045))))

(assert (=> bs!1230825 (not (= lambda!270159 lambda!270050))))

(declare-fun bs!1230828 () Bool)

(assert (= bs!1230828 (and b!5308006 b!5307983)))

(assert (=> bs!1230828 (not (= lambda!270159 lambda!270158))))

(assert (=> bs!1230825 (not (= lambda!270159 lambda!270047))))

(declare-fun bs!1230829 () Bool)

(assert (= bs!1230829 (and b!5308006 b!5307691)))

(assert (=> bs!1230829 (not (= lambda!270159 lambda!270119))))

(declare-fun bs!1230830 () Bool)

(assert (= bs!1230830 (and b!5308006 b!5307694)))

(assert (=> bs!1230830 (= (and (= (reg!15286 lt!2168544) (reg!15286 r!7292)) (= lt!2168544 r!7292)) (= lambda!270159 lambda!270118))))

(assert (=> bs!1230825 (not (= lambda!270159 lambda!270048))))

(declare-fun bs!1230831 () Bool)

(assert (= bs!1230831 (and b!5308006 d!1705960)))

(assert (=> bs!1230831 (not (= lambda!270159 lambda!270153))))

(assert (=> bs!1230827 (not (= lambda!270159 lambda!270044))))

(assert (=> bs!1230831 (not (= lambda!270159 lambda!270152))))

(assert (=> bs!1230822 (not (= lambda!270159 lambda!270150))))

(assert (=> b!5308006 true))

(assert (=> b!5308006 true))

(declare-fun bs!1230832 () Bool)

(declare-fun b!5308003 () Bool)

(assert (= bs!1230832 (and b!5308003 d!1705954)))

(declare-fun lambda!270160 () Int)

(assert (=> bs!1230832 (= (and (= (regOne!30426 lt!2168544) (regOne!30426 r!7292)) (= (regTwo!30426 lt!2168544) (regTwo!30426 r!7292))) (= lambda!270160 lambda!270151))))

(declare-fun bs!1230833 () Bool)

(assert (= bs!1230833 (and b!5308003 d!1705972)))

(assert (=> bs!1230833 (not (= lambda!270160 lambda!270155))))

(declare-fun bs!1230834 () Bool)

(assert (= bs!1230834 (and b!5308003 d!1705952)))

(assert (=> bs!1230834 (not (= lambda!270160 lambda!270145))))

(declare-fun bs!1230835 () Bool)

(assert (= bs!1230835 (and b!5308003 b!5308006)))

(assert (=> bs!1230835 (not (= lambda!270160 lambda!270159))))

(declare-fun bs!1230836 () Bool)

(assert (= bs!1230836 (and b!5308003 b!5306931)))

(assert (=> bs!1230836 (not (= lambda!270160 lambda!270049))))

(declare-fun bs!1230837 () Bool)

(assert (= bs!1230837 (and b!5308003 b!5307986)))

(assert (=> bs!1230837 (not (= lambda!270160 lambda!270157))))

(assert (=> bs!1230833 (= (and (= (regOne!30426 lt!2168544) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168544) lt!2168572)) (= lambda!270160 lambda!270156))))

(declare-fun bs!1230838 () Bool)

(assert (= bs!1230838 (and b!5308003 b!5306954)))

(assert (=> bs!1230838 (= (and (= (regOne!30426 lt!2168544) (regOne!30426 r!7292)) (= (regTwo!30426 lt!2168544) (regTwo!30426 r!7292))) (= lambda!270160 lambda!270045))))

(assert (=> bs!1230836 (= (and (= (regOne!30426 lt!2168544) (regTwo!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168544) lt!2168572)) (= lambda!270160 lambda!270050))))

(declare-fun bs!1230839 () Bool)

(assert (= bs!1230839 (and b!5308003 b!5307983)))

(assert (=> bs!1230839 (= (and (= (regOne!30426 lt!2168544) (regOne!30426 lt!2168558)) (= (regTwo!30426 lt!2168544) (regTwo!30426 lt!2168558))) (= lambda!270160 lambda!270158))))

(assert (=> bs!1230836 (not (= lambda!270160 lambda!270047))))

(declare-fun bs!1230840 () Bool)

(assert (= bs!1230840 (and b!5308003 b!5307691)))

(assert (=> bs!1230840 (= (and (= (regOne!30426 lt!2168544) (regOne!30426 r!7292)) (= (regTwo!30426 lt!2168544) (regTwo!30426 r!7292))) (= lambda!270160 lambda!270119))))

(declare-fun bs!1230841 () Bool)

(assert (= bs!1230841 (and b!5308003 b!5307694)))

(assert (=> bs!1230841 (not (= lambda!270160 lambda!270118))))

(assert (=> bs!1230836 (= (and (= (regOne!30426 lt!2168544) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168544) lt!2168544)) (= lambda!270160 lambda!270048))))

(declare-fun bs!1230842 () Bool)

(assert (= bs!1230842 (and b!5308003 d!1705960)))

(assert (=> bs!1230842 (= (and (= (regOne!30426 lt!2168544) (regOne!30426 (regOne!30426 r!7292))) (= (regTwo!30426 lt!2168544) lt!2168544)) (= lambda!270160 lambda!270153))))

(assert (=> bs!1230838 (not (= lambda!270160 lambda!270044))))

(assert (=> bs!1230842 (not (= lambda!270160 lambda!270152))))

(assert (=> bs!1230832 (not (= lambda!270160 lambda!270150))))

(assert (=> b!5308003 true))

(assert (=> b!5308003 true))

(declare-fun d!1705980 () Bool)

(declare-fun c!921864 () Bool)

(assert (=> d!1705980 (= c!921864 ((_ is EmptyExpr!14957) lt!2168544))))

(declare-fun e!3298625 () Bool)

(assert (=> d!1705980 (= (matchRSpec!2060 lt!2168544 s!2326) e!3298625)))

(declare-fun b!5308001 () Bool)

(declare-fun e!3298629 () Bool)

(assert (=> b!5308001 (= e!3298629 (= s!2326 (Cons!61048 (c!921537 lt!2168544) Nil!61048)))))

(declare-fun b!5308002 () Bool)

(declare-fun c!921866 () Bool)

(assert (=> b!5308002 (= c!921866 ((_ is ElementMatch!14957) lt!2168544))))

(declare-fun e!3298630 () Bool)

(assert (=> b!5308002 (= e!3298630 e!3298629)))

(declare-fun e!3298627 () Bool)

(declare-fun call!378465 () Bool)

(assert (=> b!5308003 (= e!3298627 call!378465)))

(declare-fun b!5308004 () Bool)

(assert (=> b!5308004 (= e!3298625 e!3298630)))

(declare-fun res!2251626 () Bool)

(assert (=> b!5308004 (= res!2251626 (not ((_ is EmptyLang!14957) lt!2168544)))))

(assert (=> b!5308004 (=> (not res!2251626) (not e!3298630))))

(declare-fun bm!378459 () Bool)

(declare-fun call!378464 () Bool)

(assert (=> bm!378459 (= call!378464 (isEmpty!33011 s!2326))))

(declare-fun b!5308005 () Bool)

(assert (=> b!5308005 (= e!3298625 call!378464)))

(declare-fun bm!378460 () Bool)

(declare-fun c!921863 () Bool)

(assert (=> bm!378460 (= call!378465 (Exists!2138 (ite c!921863 lambda!270159 lambda!270160)))))

(declare-fun e!3298628 () Bool)

(assert (=> b!5308006 (= e!3298628 call!378465)))

(declare-fun b!5308007 () Bool)

(declare-fun res!2251627 () Bool)

(assert (=> b!5308007 (=> res!2251627 e!3298628)))

(assert (=> b!5308007 (= res!2251627 call!378464)))

(assert (=> b!5308007 (= e!3298627 e!3298628)))

(declare-fun b!5308008 () Bool)

(declare-fun e!3298626 () Bool)

(assert (=> b!5308008 (= e!3298626 (matchRSpec!2060 (regTwo!30427 lt!2168544) s!2326))))

(declare-fun b!5308009 () Bool)

(declare-fun e!3298624 () Bool)

(assert (=> b!5308009 (= e!3298624 e!3298626)))

(declare-fun res!2251625 () Bool)

(assert (=> b!5308009 (= res!2251625 (matchRSpec!2060 (regOne!30427 lt!2168544) s!2326))))

(assert (=> b!5308009 (=> res!2251625 e!3298626)))

(declare-fun b!5308010 () Bool)

(assert (=> b!5308010 (= e!3298624 e!3298627)))

(assert (=> b!5308010 (= c!921863 ((_ is Star!14957) lt!2168544))))

(declare-fun b!5308011 () Bool)

(declare-fun c!921865 () Bool)

(assert (=> b!5308011 (= c!921865 ((_ is Union!14957) lt!2168544))))

(assert (=> b!5308011 (= e!3298629 e!3298624)))

(assert (= (and d!1705980 c!921864) b!5308005))

(assert (= (and d!1705980 (not c!921864)) b!5308004))

(assert (= (and b!5308004 res!2251626) b!5308002))

(assert (= (and b!5308002 c!921866) b!5308001))

(assert (= (and b!5308002 (not c!921866)) b!5308011))

(assert (= (and b!5308011 c!921865) b!5308009))

(assert (= (and b!5308011 (not c!921865)) b!5308010))

(assert (= (and b!5308009 (not res!2251625)) b!5308008))

(assert (= (and b!5308010 c!921863) b!5308007))

(assert (= (and b!5308010 (not c!921863)) b!5308003))

(assert (= (and b!5308007 (not res!2251627)) b!5308006))

(assert (= (or b!5308006 b!5308003) bm!378460))

(assert (= (or b!5308005 b!5308007) bm!378459))

(assert (=> bm!378459 m!6344648))

(declare-fun m!6345214 () Bool)

(assert (=> bm!378460 m!6345214))

(declare-fun m!6345216 () Bool)

(assert (=> b!5308008 m!6345216))

(declare-fun m!6345218 () Bool)

(assert (=> b!5308009 m!6345218))

(assert (=> b!5306931 d!1705980))

(declare-fun bs!1230843 () Bool)

(declare-fun d!1705982 () Bool)

(assert (= bs!1230843 (and d!1705982 b!5308003)))

(declare-fun lambda!270161 () Int)

(assert (=> bs!1230843 (not (= lambda!270161 lambda!270160))))

(declare-fun bs!1230844 () Bool)

(assert (= bs!1230844 (and d!1705982 d!1705954)))

(assert (=> bs!1230844 (not (= lambda!270161 lambda!270151))))

(declare-fun bs!1230845 () Bool)

(assert (= bs!1230845 (and d!1705982 d!1705972)))

(assert (=> bs!1230845 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regTwo!30426 (regOne!30426 r!7292))) (= lt!2168544 lt!2168572)) (= lambda!270161 lambda!270155))))

(declare-fun bs!1230846 () Bool)

(assert (= bs!1230846 (and d!1705982 d!1705952)))

(assert (=> bs!1230846 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270161 lambda!270145))))

(declare-fun bs!1230847 () Bool)

(assert (= bs!1230847 (and d!1705982 b!5308006)))

(assert (=> bs!1230847 (not (= lambda!270161 lambda!270159))))

(declare-fun bs!1230848 () Bool)

(assert (= bs!1230848 (and d!1705982 b!5306931)))

(assert (=> bs!1230848 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regTwo!30426 (regOne!30426 r!7292))) (= lt!2168544 lt!2168572)) (= lambda!270161 lambda!270049))))

(declare-fun bs!1230849 () Bool)

(assert (= bs!1230849 (and d!1705982 b!5307986)))

(assert (=> bs!1230849 (not (= lambda!270161 lambda!270157))))

(assert (=> bs!1230845 (not (= lambda!270161 lambda!270156))))

(declare-fun bs!1230850 () Bool)

(assert (= bs!1230850 (and d!1705982 b!5306954)))

(assert (=> bs!1230850 (not (= lambda!270161 lambda!270045))))

(assert (=> bs!1230848 (not (= lambda!270161 lambda!270050))))

(declare-fun bs!1230851 () Bool)

(assert (= bs!1230851 (and d!1705982 b!5307983)))

(assert (=> bs!1230851 (not (= lambda!270161 lambda!270158))))

(assert (=> bs!1230848 (= lambda!270161 lambda!270047)))

(declare-fun bs!1230852 () Bool)

(assert (= bs!1230852 (and d!1705982 b!5307691)))

(assert (=> bs!1230852 (not (= lambda!270161 lambda!270119))))

(declare-fun bs!1230853 () Bool)

(assert (= bs!1230853 (and d!1705982 b!5307694)))

(assert (=> bs!1230853 (not (= lambda!270161 lambda!270118))))

(assert (=> bs!1230848 (not (= lambda!270161 lambda!270048))))

(declare-fun bs!1230854 () Bool)

(assert (= bs!1230854 (and d!1705982 d!1705960)))

(assert (=> bs!1230854 (not (= lambda!270161 lambda!270153))))

(assert (=> bs!1230850 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270161 lambda!270044))))

(assert (=> bs!1230854 (= lambda!270161 lambda!270152)))

(assert (=> bs!1230844 (= (and (= (regOne!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168544 (regTwo!30426 r!7292))) (= lambda!270161 lambda!270150))))

(assert (=> d!1705982 true))

(assert (=> d!1705982 true))

(assert (=> d!1705982 true))

(assert (=> d!1705982 (= (isDefined!11771 (findConcatSeparation!1482 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 Nil!61048 s!2326 s!2326)) (Exists!2138 lambda!270161))))

(declare-fun lt!2168747 () Unit!153346)

(assert (=> d!1705982 (= lt!2168747 (choose!39694 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 s!2326))))

(assert (=> d!1705982 (validRegex!6693 (regOne!30426 (regOne!30426 r!7292)))))

(assert (=> d!1705982 (= (lemmaFindConcatSeparationEquivalentToExists!1246 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 s!2326) lt!2168747)))

(declare-fun bs!1230855 () Bool)

(assert (= bs!1230855 d!1705982))

(assert (=> bs!1230855 m!6344136))

(assert (=> bs!1230855 m!6344172))

(declare-fun m!6345220 () Bool)

(assert (=> bs!1230855 m!6345220))

(assert (=> bs!1230855 m!6344136))

(declare-fun m!6345222 () Bool)

(assert (=> bs!1230855 m!6345222))

(assert (=> bs!1230855 m!6345146))

(assert (=> b!5306931 d!1705982))

(declare-fun d!1705984 () Bool)

(assert (=> d!1705984 (= (Exists!2138 lambda!270048) (choose!39693 lambda!270048))))

(declare-fun bs!1230856 () Bool)

(assert (= bs!1230856 d!1705984))

(declare-fun m!6345224 () Bool)

(assert (=> bs!1230856 m!6345224))

(assert (=> b!5306931 d!1705984))

(declare-fun bs!1230857 () Bool)

(declare-fun d!1705986 () Bool)

(assert (= bs!1230857 (and d!1705986 d!1705726)))

(declare-fun lambda!270162 () Int)

(assert (=> bs!1230857 (= lambda!270162 lambda!270069)))

(declare-fun bs!1230858 () Bool)

(assert (= bs!1230858 (and d!1705986 d!1705736)))

(assert (=> bs!1230858 (= lambda!270162 lambda!270072)))

(declare-fun bs!1230859 () Bool)

(assert (= bs!1230859 (and d!1705986 d!1705964)))

(assert (=> bs!1230859 (= lambda!270162 lambda!270154)))

(declare-fun bs!1230860 () Bool)

(assert (= bs!1230860 (and d!1705986 d!1705850)))

(assert (=> bs!1230860 (= lambda!270162 lambda!270107)))

(declare-fun bs!1230861 () Bool)

(assert (= bs!1230861 (and d!1705986 d!1705854)))

(assert (=> bs!1230861 (= lambda!270162 lambda!270110)))

(declare-fun bs!1230862 () Bool)

(assert (= bs!1230862 (and d!1705986 d!1705748)))

(assert (=> bs!1230862 (= lambda!270162 lambda!270081)))

(declare-fun bs!1230863 () Bool)

(assert (= bs!1230863 (and d!1705986 b!5306953)))

(assert (=> bs!1230863 (= lambda!270162 lambda!270051)))

(declare-fun b!5308012 () Bool)

(declare-fun e!3298632 () Regex!14957)

(assert (=> b!5308012 (= e!3298632 (h!67494 lt!2168541))))

(declare-fun b!5308014 () Bool)

(declare-fun e!3298634 () Regex!14957)

(assert (=> b!5308014 (= e!3298634 EmptyExpr!14957)))

(declare-fun b!5308015 () Bool)

(declare-fun e!3298635 () Bool)

(declare-fun lt!2168748 () Regex!14957)

(assert (=> b!5308015 (= e!3298635 (isConcat!387 lt!2168748))))

(declare-fun b!5308016 () Bool)

(assert (=> b!5308016 (= e!3298632 e!3298634)))

(declare-fun c!921869 () Bool)

(assert (=> b!5308016 (= c!921869 ((_ is Cons!61046) lt!2168541))))

(declare-fun b!5308017 () Bool)

(assert (=> b!5308017 (= e!3298634 (Concat!23802 (h!67494 lt!2168541) (generalisedConcat!626 (t!374375 lt!2168541))))))

(declare-fun b!5308018 () Bool)

(assert (=> b!5308018 (= e!3298635 (= lt!2168748 (head!11378 lt!2168541)))))

(declare-fun b!5308019 () Bool)

(declare-fun e!3298636 () Bool)

(assert (=> b!5308019 (= e!3298636 (isEmpty!33008 (t!374375 lt!2168541)))))

(declare-fun b!5308013 () Bool)

(declare-fun e!3298633 () Bool)

(assert (=> b!5308013 (= e!3298633 (isEmptyExpr!864 lt!2168748))))

(declare-fun e!3298631 () Bool)

(assert (=> d!1705986 e!3298631))

(declare-fun res!2251628 () Bool)

(assert (=> d!1705986 (=> (not res!2251628) (not e!3298631))))

(assert (=> d!1705986 (= res!2251628 (validRegex!6693 lt!2168748))))

(assert (=> d!1705986 (= lt!2168748 e!3298632)))

(declare-fun c!921867 () Bool)

(assert (=> d!1705986 (= c!921867 e!3298636)))

(declare-fun res!2251629 () Bool)

(assert (=> d!1705986 (=> (not res!2251629) (not e!3298636))))

(assert (=> d!1705986 (= res!2251629 ((_ is Cons!61046) lt!2168541))))

(assert (=> d!1705986 (forall!14373 lt!2168541 lambda!270162)))

(assert (=> d!1705986 (= (generalisedConcat!626 lt!2168541) lt!2168748)))

(declare-fun b!5308020 () Bool)

(assert (=> b!5308020 (= e!3298633 e!3298635)))

(declare-fun c!921868 () Bool)

(assert (=> b!5308020 (= c!921868 (isEmpty!33008 (tail!10475 lt!2168541)))))

(declare-fun b!5308021 () Bool)

(assert (=> b!5308021 (= e!3298631 e!3298633)))

(declare-fun c!921870 () Bool)

(assert (=> b!5308021 (= c!921870 (isEmpty!33008 lt!2168541))))

(assert (= (and d!1705986 res!2251629) b!5308019))

(assert (= (and d!1705986 c!921867) b!5308012))

(assert (= (and d!1705986 (not c!921867)) b!5308016))

(assert (= (and b!5308016 c!921869) b!5308017))

(assert (= (and b!5308016 (not c!921869)) b!5308014))

(assert (= (and d!1705986 res!2251628) b!5308021))

(assert (= (and b!5308021 c!921870) b!5308013))

(assert (= (and b!5308021 (not c!921870)) b!5308020))

(assert (= (and b!5308020 c!921868) b!5308018))

(assert (= (and b!5308020 (not c!921868)) b!5308015))

(declare-fun m!6345226 () Bool)

(assert (=> b!5308019 m!6345226))

(declare-fun m!6345228 () Bool)

(assert (=> b!5308018 m!6345228))

(declare-fun m!6345230 () Bool)

(assert (=> b!5308020 m!6345230))

(assert (=> b!5308020 m!6345230))

(declare-fun m!6345232 () Bool)

(assert (=> b!5308020 m!6345232))

(declare-fun m!6345234 () Bool)

(assert (=> b!5308021 m!6345234))

(declare-fun m!6345236 () Bool)

(assert (=> b!5308015 m!6345236))

(declare-fun m!6345238 () Bool)

(assert (=> d!1705986 m!6345238))

(declare-fun m!6345240 () Bool)

(assert (=> d!1705986 m!6345240))

(declare-fun m!6345242 () Bool)

(assert (=> b!5308013 m!6345242))

(declare-fun m!6345244 () Bool)

(assert (=> b!5308017 m!6345244))

(assert (=> b!5306931 d!1705986))

(declare-fun d!1705988 () Bool)

(assert (=> d!1705988 (= (Exists!2138 lambda!270050) (choose!39693 lambda!270050))))

(declare-fun bs!1230864 () Bool)

(assert (= bs!1230864 d!1705988))

(declare-fun m!6345246 () Bool)

(assert (=> bs!1230864 m!6345246))

(assert (=> b!5306931 d!1705988))

(declare-fun d!1705990 () Bool)

(assert (=> d!1705990 (= (matchR!7142 lt!2168544 s!2326) (matchZipper!1201 lt!2168576 s!2326))))

(declare-fun lt!2168751 () Unit!153346)

(declare-fun choose!39697 ((InoxSet Context!8682) List!61171 Regex!14957 List!61172) Unit!153346)

(assert (=> d!1705990 (= lt!2168751 (choose!39697 lt!2168576 (Cons!61047 lt!2168534 Nil!61047) lt!2168544 s!2326))))

(assert (=> d!1705990 (validRegex!6693 lt!2168544)))

(assert (=> d!1705990 (= (theoremZipperRegexEquiv!367 lt!2168576 (Cons!61047 lt!2168534 Nil!61047) lt!2168544 s!2326) lt!2168751)))

(declare-fun bs!1230865 () Bool)

(assert (= bs!1230865 d!1705990))

(assert (=> bs!1230865 m!6344160))

(assert (=> bs!1230865 m!6344170))

(declare-fun m!6345248 () Bool)

(assert (=> bs!1230865 m!6345248))

(assert (=> bs!1230865 m!6345196))

(assert (=> b!5306931 d!1705990))

(declare-fun d!1705992 () Bool)

(declare-fun c!921871 () Bool)

(assert (=> d!1705992 (= c!921871 (isEmpty!33011 s!2326))))

(declare-fun e!3298637 () Bool)

(assert (=> d!1705992 (= (matchZipper!1201 lt!2168542 s!2326) e!3298637)))

(declare-fun b!5308022 () Bool)

(assert (=> b!5308022 (= e!3298637 (nullableZipper!1330 lt!2168542))))

(declare-fun b!5308023 () Bool)

(assert (=> b!5308023 (= e!3298637 (matchZipper!1201 (derivationStepZipper!1200 lt!2168542 (head!11379 s!2326)) (tail!10476 s!2326)))))

(assert (= (and d!1705992 c!921871) b!5308022))

(assert (= (and d!1705992 (not c!921871)) b!5308023))

(assert (=> d!1705992 m!6344648))

(declare-fun m!6345250 () Bool)

(assert (=> b!5308022 m!6345250))

(assert (=> b!5308023 m!6344654))

(assert (=> b!5308023 m!6344654))

(declare-fun m!6345252 () Bool)

(assert (=> b!5308023 m!6345252))

(assert (=> b!5308023 m!6344658))

(assert (=> b!5308023 m!6345252))

(assert (=> b!5308023 m!6344658))

(declare-fun m!6345254 () Bool)

(assert (=> b!5308023 m!6345254))

(assert (=> b!5306931 d!1705992))

(declare-fun d!1705994 () Bool)

(declare-fun c!921872 () Bool)

(assert (=> d!1705994 (= c!921872 (isEmpty!33011 s!2326))))

(declare-fun e!3298638 () Bool)

(assert (=> d!1705994 (= (matchZipper!1201 z!1189 s!2326) e!3298638)))

(declare-fun b!5308024 () Bool)

(assert (=> b!5308024 (= e!3298638 (nullableZipper!1330 z!1189))))

(declare-fun b!5308025 () Bool)

(assert (=> b!5308025 (= e!3298638 (matchZipper!1201 (derivationStepZipper!1200 z!1189 (head!11379 s!2326)) (tail!10476 s!2326)))))

(assert (= (and d!1705994 c!921872) b!5308024))

(assert (= (and d!1705994 (not c!921872)) b!5308025))

(assert (=> d!1705994 m!6344648))

(declare-fun m!6345256 () Bool)

(assert (=> b!5308024 m!6345256))

(assert (=> b!5308025 m!6344654))

(assert (=> b!5308025 m!6344654))

(declare-fun m!6345258 () Bool)

(assert (=> b!5308025 m!6345258))

(assert (=> b!5308025 m!6344658))

(assert (=> b!5308025 m!6345258))

(assert (=> b!5308025 m!6344658))

(declare-fun m!6345260 () Bool)

(assert (=> b!5308025 m!6345260))

(assert (=> b!5306931 d!1705994))

(declare-fun d!1705996 () Bool)

(declare-fun c!921873 () Bool)

(assert (=> d!1705996 (= c!921873 (isEmpty!33011 s!2326))))

(declare-fun e!3298639 () Bool)

(assert (=> d!1705996 (= (matchZipper!1201 lt!2168576 s!2326) e!3298639)))

(declare-fun b!5308026 () Bool)

(assert (=> b!5308026 (= e!3298639 (nullableZipper!1330 lt!2168576))))

(declare-fun b!5308027 () Bool)

(assert (=> b!5308027 (= e!3298639 (matchZipper!1201 (derivationStepZipper!1200 lt!2168576 (head!11379 s!2326)) (tail!10476 s!2326)))))

(assert (= (and d!1705996 c!921873) b!5308026))

(assert (= (and d!1705996 (not c!921873)) b!5308027))

(assert (=> d!1705996 m!6344648))

(declare-fun m!6345262 () Bool)

(assert (=> b!5308026 m!6345262))

(assert (=> b!5308027 m!6344654))

(assert (=> b!5308027 m!6344654))

(declare-fun m!6345264 () Bool)

(assert (=> b!5308027 m!6345264))

(assert (=> b!5308027 m!6344658))

(assert (=> b!5308027 m!6345264))

(assert (=> b!5308027 m!6344658))

(declare-fun m!6345266 () Bool)

(assert (=> b!5308027 m!6345266))

(assert (=> b!5306931 d!1705996))

(declare-fun bs!1230866 () Bool)

(declare-fun d!1705998 () Bool)

(assert (= bs!1230866 (and d!1705998 d!1705726)))

(declare-fun lambda!270163 () Int)

(assert (=> bs!1230866 (= lambda!270163 lambda!270069)))

(declare-fun bs!1230867 () Bool)

(assert (= bs!1230867 (and d!1705998 d!1705736)))

(assert (=> bs!1230867 (= lambda!270163 lambda!270072)))

(declare-fun bs!1230868 () Bool)

(assert (= bs!1230868 (and d!1705998 d!1705964)))

(assert (=> bs!1230868 (= lambda!270163 lambda!270154)))

(declare-fun bs!1230869 () Bool)

(assert (= bs!1230869 (and d!1705998 d!1705986)))

(assert (=> bs!1230869 (= lambda!270163 lambda!270162)))

(declare-fun bs!1230870 () Bool)

(assert (= bs!1230870 (and d!1705998 d!1705850)))

(assert (=> bs!1230870 (= lambda!270163 lambda!270107)))

(declare-fun bs!1230871 () Bool)

(assert (= bs!1230871 (and d!1705998 d!1705854)))

(assert (=> bs!1230871 (= lambda!270163 lambda!270110)))

(declare-fun bs!1230872 () Bool)

(assert (= bs!1230872 (and d!1705998 d!1705748)))

(assert (=> bs!1230872 (= lambda!270163 lambda!270081)))

(declare-fun bs!1230873 () Bool)

(assert (= bs!1230873 (and d!1705998 b!5306953)))

(assert (=> bs!1230873 (= lambda!270163 lambda!270051)))

(declare-fun b!5308028 () Bool)

(declare-fun e!3298641 () Regex!14957)

(assert (=> b!5308028 (= e!3298641 (h!67494 lt!2168537))))

(declare-fun b!5308030 () Bool)

(declare-fun e!3298643 () Regex!14957)

(assert (=> b!5308030 (= e!3298643 EmptyExpr!14957)))

(declare-fun b!5308031 () Bool)

(declare-fun e!3298644 () Bool)

(declare-fun lt!2168752 () Regex!14957)

(assert (=> b!5308031 (= e!3298644 (isConcat!387 lt!2168752))))

(declare-fun b!5308032 () Bool)

(assert (=> b!5308032 (= e!3298641 e!3298643)))

(declare-fun c!921876 () Bool)

(assert (=> b!5308032 (= c!921876 ((_ is Cons!61046) lt!2168537))))

(declare-fun b!5308033 () Bool)

(assert (=> b!5308033 (= e!3298643 (Concat!23802 (h!67494 lt!2168537) (generalisedConcat!626 (t!374375 lt!2168537))))))

(declare-fun b!5308034 () Bool)

(assert (=> b!5308034 (= e!3298644 (= lt!2168752 (head!11378 lt!2168537)))))

(declare-fun b!5308035 () Bool)

(declare-fun e!3298645 () Bool)

(assert (=> b!5308035 (= e!3298645 (isEmpty!33008 (t!374375 lt!2168537)))))

(declare-fun b!5308029 () Bool)

(declare-fun e!3298642 () Bool)

(assert (=> b!5308029 (= e!3298642 (isEmptyExpr!864 lt!2168752))))

(declare-fun e!3298640 () Bool)

(assert (=> d!1705998 e!3298640))

(declare-fun res!2251630 () Bool)

(assert (=> d!1705998 (=> (not res!2251630) (not e!3298640))))

(assert (=> d!1705998 (= res!2251630 (validRegex!6693 lt!2168752))))

(assert (=> d!1705998 (= lt!2168752 e!3298641)))

(declare-fun c!921874 () Bool)

(assert (=> d!1705998 (= c!921874 e!3298645)))

(declare-fun res!2251631 () Bool)

(assert (=> d!1705998 (=> (not res!2251631) (not e!3298645))))

(assert (=> d!1705998 (= res!2251631 ((_ is Cons!61046) lt!2168537))))

(assert (=> d!1705998 (forall!14373 lt!2168537 lambda!270163)))

(assert (=> d!1705998 (= (generalisedConcat!626 lt!2168537) lt!2168752)))

(declare-fun b!5308036 () Bool)

(assert (=> b!5308036 (= e!3298642 e!3298644)))

(declare-fun c!921875 () Bool)

(assert (=> b!5308036 (= c!921875 (isEmpty!33008 (tail!10475 lt!2168537)))))

(declare-fun b!5308037 () Bool)

(assert (=> b!5308037 (= e!3298640 e!3298642)))

(declare-fun c!921877 () Bool)

(assert (=> b!5308037 (= c!921877 (isEmpty!33008 lt!2168537))))

(assert (= (and d!1705998 res!2251631) b!5308035))

(assert (= (and d!1705998 c!921874) b!5308028))

(assert (= (and d!1705998 (not c!921874)) b!5308032))

(assert (= (and b!5308032 c!921876) b!5308033))

(assert (= (and b!5308032 (not c!921876)) b!5308030))

(assert (= (and d!1705998 res!2251630) b!5308037))

(assert (= (and b!5308037 c!921877) b!5308029))

(assert (= (and b!5308037 (not c!921877)) b!5308036))

(assert (= (and b!5308036 c!921875) b!5308034))

(assert (= (and b!5308036 (not c!921875)) b!5308031))

(declare-fun m!6345268 () Bool)

(assert (=> b!5308035 m!6345268))

(declare-fun m!6345270 () Bool)

(assert (=> b!5308034 m!6345270))

(declare-fun m!6345272 () Bool)

(assert (=> b!5308036 m!6345272))

(assert (=> b!5308036 m!6345272))

(declare-fun m!6345274 () Bool)

(assert (=> b!5308036 m!6345274))

(declare-fun m!6345276 () Bool)

(assert (=> b!5308037 m!6345276))

(declare-fun m!6345278 () Bool)

(assert (=> b!5308031 m!6345278))

(declare-fun m!6345280 () Bool)

(assert (=> d!1705998 m!6345280))

(declare-fun m!6345282 () Bool)

(assert (=> d!1705998 m!6345282))

(declare-fun m!6345284 () Bool)

(assert (=> b!5308029 m!6345284))

(declare-fun m!6345286 () Bool)

(assert (=> b!5308033 m!6345286))

(assert (=> b!5306931 d!1705998))

(declare-fun b!5308038 () Bool)

(declare-fun e!3298647 () Bool)

(declare-fun lt!2168753 () Bool)

(assert (=> b!5308038 (= e!3298647 (not lt!2168753))))

(declare-fun b!5308039 () Bool)

(declare-fun res!2251636 () Bool)

(declare-fun e!3298646 () Bool)

(assert (=> b!5308039 (=> res!2251636 e!3298646)))

(assert (=> b!5308039 (= res!2251636 (not ((_ is ElementMatch!14957) lt!2168544)))))

(assert (=> b!5308039 (= e!3298647 e!3298646)))

(declare-fun b!5308040 () Bool)

(declare-fun res!2251634 () Bool)

(assert (=> b!5308040 (=> res!2251634 e!3298646)))

(declare-fun e!3298649 () Bool)

(assert (=> b!5308040 (= res!2251634 e!3298649)))

(declare-fun res!2251632 () Bool)

(assert (=> b!5308040 (=> (not res!2251632) (not e!3298649))))

(assert (=> b!5308040 (= res!2251632 lt!2168753)))

(declare-fun b!5308041 () Bool)

(declare-fun e!3298651 () Bool)

(assert (=> b!5308041 (= e!3298651 (not (= (head!11379 s!2326) (c!921537 lt!2168544))))))

(declare-fun b!5308042 () Bool)

(declare-fun e!3298652 () Bool)

(declare-fun call!378466 () Bool)

(assert (=> b!5308042 (= e!3298652 (= lt!2168753 call!378466))))

(declare-fun b!5308043 () Bool)

(declare-fun e!3298650 () Bool)

(assert (=> b!5308043 (= e!3298650 e!3298651)))

(declare-fun res!2251638 () Bool)

(assert (=> b!5308043 (=> res!2251638 e!3298651)))

(assert (=> b!5308043 (= res!2251638 call!378466)))

(declare-fun d!1706000 () Bool)

(assert (=> d!1706000 e!3298652))

(declare-fun c!921879 () Bool)

(assert (=> d!1706000 (= c!921879 ((_ is EmptyExpr!14957) lt!2168544))))

(declare-fun e!3298648 () Bool)

(assert (=> d!1706000 (= lt!2168753 e!3298648)))

(declare-fun c!921878 () Bool)

(assert (=> d!1706000 (= c!921878 (isEmpty!33011 s!2326))))

(assert (=> d!1706000 (validRegex!6693 lt!2168544)))

(assert (=> d!1706000 (= (matchR!7142 lt!2168544 s!2326) lt!2168753)))

(declare-fun bm!378461 () Bool)

(assert (=> bm!378461 (= call!378466 (isEmpty!33011 s!2326))))

(declare-fun b!5308044 () Bool)

(declare-fun res!2251633 () Bool)

(assert (=> b!5308044 (=> (not res!2251633) (not e!3298649))))

(assert (=> b!5308044 (= res!2251633 (not call!378466))))

(declare-fun b!5308045 () Bool)

(assert (=> b!5308045 (= e!3298646 e!3298650)))

(declare-fun res!2251635 () Bool)

(assert (=> b!5308045 (=> (not res!2251635) (not e!3298650))))

(assert (=> b!5308045 (= res!2251635 (not lt!2168753))))

(declare-fun b!5308046 () Bool)

(assert (=> b!5308046 (= e!3298648 (nullable!5126 lt!2168544))))

(declare-fun b!5308047 () Bool)

(declare-fun res!2251637 () Bool)

(assert (=> b!5308047 (=> res!2251637 e!3298651)))

(assert (=> b!5308047 (= res!2251637 (not (isEmpty!33011 (tail!10476 s!2326))))))

(declare-fun b!5308048 () Bool)

(declare-fun res!2251639 () Bool)

(assert (=> b!5308048 (=> (not res!2251639) (not e!3298649))))

(assert (=> b!5308048 (= res!2251639 (isEmpty!33011 (tail!10476 s!2326)))))

(declare-fun b!5308049 () Bool)

(assert (=> b!5308049 (= e!3298648 (matchR!7142 (derivativeStep!4151 lt!2168544 (head!11379 s!2326)) (tail!10476 s!2326)))))

(declare-fun b!5308050 () Bool)

(assert (=> b!5308050 (= e!3298652 e!3298647)))

(declare-fun c!921880 () Bool)

(assert (=> b!5308050 (= c!921880 ((_ is EmptyLang!14957) lt!2168544))))

(declare-fun b!5308051 () Bool)

(assert (=> b!5308051 (= e!3298649 (= (head!11379 s!2326) (c!921537 lt!2168544)))))

(assert (= (and d!1706000 c!921878) b!5308046))

(assert (= (and d!1706000 (not c!921878)) b!5308049))

(assert (= (and d!1706000 c!921879) b!5308042))

(assert (= (and d!1706000 (not c!921879)) b!5308050))

(assert (= (and b!5308050 c!921880) b!5308038))

(assert (= (and b!5308050 (not c!921880)) b!5308039))

(assert (= (and b!5308039 (not res!2251636)) b!5308040))

(assert (= (and b!5308040 res!2251632) b!5308044))

(assert (= (and b!5308044 res!2251633) b!5308048))

(assert (= (and b!5308048 res!2251639) b!5308051))

(assert (= (and b!5308040 (not res!2251634)) b!5308045))

(assert (= (and b!5308045 res!2251635) b!5308043))

(assert (= (and b!5308043 (not res!2251638)) b!5308047))

(assert (= (and b!5308047 (not res!2251637)) b!5308041))

(assert (= (or b!5308042 b!5308043 b!5308044) bm!378461))

(assert (=> d!1706000 m!6344648))

(assert (=> d!1706000 m!6345196))

(declare-fun m!6345288 () Bool)

(assert (=> b!5308046 m!6345288))

(assert (=> b!5308049 m!6344654))

(assert (=> b!5308049 m!6344654))

(declare-fun m!6345290 () Bool)

(assert (=> b!5308049 m!6345290))

(assert (=> b!5308049 m!6344658))

(assert (=> b!5308049 m!6345290))

(assert (=> b!5308049 m!6344658))

(declare-fun m!6345292 () Bool)

(assert (=> b!5308049 m!6345292))

(assert (=> b!5308041 m!6344654))

(assert (=> b!5308051 m!6344654))

(assert (=> bm!378461 m!6344648))

(assert (=> b!5308048 m!6344658))

(assert (=> b!5308048 m!6344658))

(assert (=> b!5308048 m!6344662))

(assert (=> b!5308047 m!6344658))

(assert (=> b!5308047 m!6344658))

(assert (=> b!5308047 m!6344662))

(assert (=> b!5306931 d!1706000))

(declare-fun d!1706002 () Bool)

(assert (=> d!1706002 (= (matchR!7142 lt!2168558 s!2326) (matchZipper!1201 lt!2168542 s!2326))))

(declare-fun lt!2168754 () Unit!153346)

(assert (=> d!1706002 (= lt!2168754 (choose!39697 lt!2168542 lt!2168560 lt!2168558 s!2326))))

(assert (=> d!1706002 (validRegex!6693 lt!2168558)))

(assert (=> d!1706002 (= (theoremZipperRegexEquiv!367 lt!2168542 lt!2168560 lt!2168558 s!2326) lt!2168754)))

(declare-fun bs!1230874 () Bool)

(assert (= bs!1230874 d!1706002))

(assert (=> bs!1230874 m!6344150))

(assert (=> bs!1230874 m!6344152))

(declare-fun m!6345294 () Bool)

(assert (=> bs!1230874 m!6345294))

(assert (=> bs!1230874 m!6345170))

(assert (=> b!5306931 d!1706002))

(declare-fun b!5308052 () Bool)

(declare-fun res!2251643 () Bool)

(declare-fun e!3298655 () Bool)

(assert (=> b!5308052 (=> (not res!2251643) (not e!3298655))))

(declare-fun lt!2168757 () Option!15068)

(assert (=> b!5308052 (= res!2251643 (matchR!7142 lt!2168544 (_2!35459 (get!20994 lt!2168757))))))

(declare-fun b!5308053 () Bool)

(assert (=> b!5308053 (= e!3298655 (= (++!13310 (_1!35459 (get!20994 lt!2168757)) (_2!35459 (get!20994 lt!2168757))) s!2326))))

(declare-fun b!5308054 () Bool)

(declare-fun e!3298657 () Bool)

(assert (=> b!5308054 (= e!3298657 (not (isDefined!11771 lt!2168757)))))

(declare-fun b!5308055 () Bool)

(declare-fun e!3298654 () Option!15068)

(assert (=> b!5308055 (= e!3298654 None!15067)))

(declare-fun b!5308056 () Bool)

(declare-fun e!3298653 () Option!15068)

(assert (=> b!5308056 (= e!3298653 e!3298654)))

(declare-fun c!921882 () Bool)

(assert (=> b!5308056 (= c!921882 ((_ is Nil!61048) s!2326))))

(declare-fun d!1706004 () Bool)

(assert (=> d!1706004 e!3298657))

(declare-fun res!2251644 () Bool)

(assert (=> d!1706004 (=> res!2251644 e!3298657)))

(assert (=> d!1706004 (= res!2251644 e!3298655)))

(declare-fun res!2251641 () Bool)

(assert (=> d!1706004 (=> (not res!2251641) (not e!3298655))))

(assert (=> d!1706004 (= res!2251641 (isDefined!11771 lt!2168757))))

(assert (=> d!1706004 (= lt!2168757 e!3298653)))

(declare-fun c!921881 () Bool)

(declare-fun e!3298656 () Bool)

(assert (=> d!1706004 (= c!921881 e!3298656)))

(declare-fun res!2251640 () Bool)

(assert (=> d!1706004 (=> (not res!2251640) (not e!3298656))))

(assert (=> d!1706004 (= res!2251640 (matchR!7142 (regOne!30426 (regOne!30426 r!7292)) Nil!61048))))

(assert (=> d!1706004 (validRegex!6693 (regOne!30426 (regOne!30426 r!7292)))))

(assert (=> d!1706004 (= (findConcatSeparation!1482 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 Nil!61048 s!2326 s!2326) lt!2168757)))

(declare-fun b!5308057 () Bool)

(declare-fun res!2251642 () Bool)

(assert (=> b!5308057 (=> (not res!2251642) (not e!3298655))))

(assert (=> b!5308057 (= res!2251642 (matchR!7142 (regOne!30426 (regOne!30426 r!7292)) (_1!35459 (get!20994 lt!2168757))))))

(declare-fun b!5308058 () Bool)

(assert (=> b!5308058 (= e!3298653 (Some!15067 (tuple2!64313 Nil!61048 s!2326)))))

(declare-fun b!5308059 () Bool)

(assert (=> b!5308059 (= e!3298656 (matchR!7142 lt!2168544 s!2326))))

(declare-fun b!5308060 () Bool)

(declare-fun lt!2168756 () Unit!153346)

(declare-fun lt!2168755 () Unit!153346)

(assert (=> b!5308060 (= lt!2168756 lt!2168755)))

(assert (=> b!5308060 (= (++!13310 (++!13310 Nil!61048 (Cons!61048 (h!67496 s!2326) Nil!61048)) (t!374377 s!2326)) s!2326)))

(assert (=> b!5308060 (= lt!2168755 (lemmaMoveElementToOtherListKeepsConcatEq!1725 Nil!61048 (h!67496 s!2326) (t!374377 s!2326) s!2326))))

(assert (=> b!5308060 (= e!3298654 (findConcatSeparation!1482 (regOne!30426 (regOne!30426 r!7292)) lt!2168544 (++!13310 Nil!61048 (Cons!61048 (h!67496 s!2326) Nil!61048)) (t!374377 s!2326) s!2326))))

(assert (= (and d!1706004 res!2251640) b!5308059))

(assert (= (and d!1706004 c!921881) b!5308058))

(assert (= (and d!1706004 (not c!921881)) b!5308056))

(assert (= (and b!5308056 c!921882) b!5308055))

(assert (= (and b!5308056 (not c!921882)) b!5308060))

(assert (= (and d!1706004 res!2251641) b!5308057))

(assert (= (and b!5308057 res!2251642) b!5308052))

(assert (= (and b!5308052 res!2251643) b!5308053))

(assert (= (and d!1706004 (not res!2251644)) b!5308054))

(assert (=> b!5308059 m!6344160))

(declare-fun m!6345296 () Bool)

(assert (=> b!5308053 m!6345296))

(declare-fun m!6345298 () Bool)

(assert (=> b!5308053 m!6345298))

(assert (=> b!5308060 m!6345098))

(assert (=> b!5308060 m!6345098))

(assert (=> b!5308060 m!6345100))

(assert (=> b!5308060 m!6345102))

(assert (=> b!5308060 m!6345098))

(declare-fun m!6345300 () Bool)

(assert (=> b!5308060 m!6345300))

(declare-fun m!6345302 () Bool)

(assert (=> b!5308054 m!6345302))

(assert (=> b!5308052 m!6345296))

(declare-fun m!6345304 () Bool)

(assert (=> b!5308052 m!6345304))

(assert (=> b!5308057 m!6345296))

(declare-fun m!6345306 () Bool)

(assert (=> b!5308057 m!6345306))

(assert (=> d!1706004 m!6345302))

(declare-fun m!6345308 () Bool)

(assert (=> d!1706004 m!6345308))

(assert (=> d!1706004 m!6345146))

(assert (=> b!5306931 d!1706004))

(declare-fun d!1706006 () Bool)

(assert (=> d!1706006 (= (matchR!7142 lt!2168558 s!2326) (matchRSpec!2060 lt!2168558 s!2326))))

(declare-fun lt!2168758 () Unit!153346)

(assert (=> d!1706006 (= lt!2168758 (choose!39692 lt!2168558 s!2326))))

(assert (=> d!1706006 (validRegex!6693 lt!2168558)))

(assert (=> d!1706006 (= (mainMatchTheorem!2060 lt!2168558 s!2326) lt!2168758)))

(declare-fun bs!1230875 () Bool)

(assert (= bs!1230875 d!1706006))

(assert (=> bs!1230875 m!6344150))

(assert (=> bs!1230875 m!6344174))

(declare-fun m!6345310 () Bool)

(assert (=> bs!1230875 m!6345310))

(assert (=> bs!1230875 m!6345170))

(assert (=> b!5306931 d!1706006))

(declare-fun bs!1230876 () Bool)

(declare-fun d!1706008 () Bool)

(assert (= bs!1230876 (and d!1706008 b!5308003)))

(declare-fun lambda!270164 () Int)

(assert (=> bs!1230876 (not (= lambda!270164 lambda!270160))))

(declare-fun bs!1230877 () Bool)

(assert (= bs!1230877 (and d!1706008 d!1705954)))

(assert (=> bs!1230877 (not (= lambda!270164 lambda!270151))))

(declare-fun bs!1230878 () Bool)

(assert (= bs!1230878 (and d!1706008 d!1705972)))

(assert (=> bs!1230878 (= lambda!270164 lambda!270155)))

(declare-fun bs!1230879 () Bool)

(assert (= bs!1230879 (and d!1706008 d!1705952)))

(assert (=> bs!1230879 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270164 lambda!270145))))

(declare-fun bs!1230880 () Bool)

(assert (= bs!1230880 (and d!1706008 b!5308006)))

(assert (=> bs!1230880 (not (= lambda!270164 lambda!270159))))

(declare-fun bs!1230881 () Bool)

(assert (= bs!1230881 (and d!1706008 b!5306931)))

(assert (=> bs!1230881 (= lambda!270164 lambda!270049)))

(declare-fun bs!1230882 () Bool)

(assert (= bs!1230882 (and d!1706008 b!5307986)))

(assert (=> bs!1230882 (not (= lambda!270164 lambda!270157))))

(assert (=> bs!1230878 (not (= lambda!270164 lambda!270156))))

(declare-fun bs!1230883 () Bool)

(assert (= bs!1230883 (and d!1706008 b!5306954)))

(assert (=> bs!1230883 (not (= lambda!270164 lambda!270045))))

(assert (=> bs!1230881 (not (= lambda!270164 lambda!270050))))

(declare-fun bs!1230884 () Bool)

(assert (= bs!1230884 (and d!1706008 b!5307983)))

(assert (=> bs!1230884 (not (= lambda!270164 lambda!270158))))

(assert (=> bs!1230881 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270164 lambda!270047))))

(declare-fun bs!1230885 () Bool)

(assert (= bs!1230885 (and d!1706008 b!5307691)))

(assert (=> bs!1230885 (not (= lambda!270164 lambda!270119))))

(declare-fun bs!1230886 () Bool)

(assert (= bs!1230886 (and d!1706008 b!5307694)))

(assert (=> bs!1230886 (not (= lambda!270164 lambda!270118))))

(assert (=> bs!1230881 (not (= lambda!270164 lambda!270048))))

(declare-fun bs!1230887 () Bool)

(assert (= bs!1230887 (and d!1706008 d!1705982)))

(assert (=> bs!1230887 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270164 lambda!270161))))

(declare-fun bs!1230888 () Bool)

(assert (= bs!1230888 (and d!1706008 d!1705960)))

(assert (=> bs!1230888 (not (= lambda!270164 lambda!270153))))

(assert (=> bs!1230883 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270164 lambda!270044))))

(assert (=> bs!1230888 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 (regOne!30426 r!7292))) (= lt!2168572 lt!2168544)) (= lambda!270164 lambda!270152))))

(assert (=> bs!1230877 (= (and (= (regTwo!30426 (regOne!30426 r!7292)) (regOne!30426 r!7292)) (= lt!2168572 (regTwo!30426 r!7292))) (= lambda!270164 lambda!270150))))

(assert (=> d!1706008 true))

(assert (=> d!1706008 true))

(assert (=> d!1706008 true))

(assert (=> d!1706008 (= (isDefined!11771 (findConcatSeparation!1482 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 Nil!61048 s!2326 s!2326)) (Exists!2138 lambda!270164))))

(declare-fun lt!2168759 () Unit!153346)

(assert (=> d!1706008 (= lt!2168759 (choose!39694 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 s!2326))))

(assert (=> d!1706008 (validRegex!6693 (regTwo!30426 (regOne!30426 r!7292)))))

(assert (=> d!1706008 (= (lemmaFindConcatSeparationEquivalentToExists!1246 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 s!2326) lt!2168759)))

(declare-fun bs!1230889 () Bool)

(assert (= bs!1230889 d!1706008))

(assert (=> bs!1230889 m!6344132))

(assert (=> bs!1230889 m!6344144))

(declare-fun m!6345312 () Bool)

(assert (=> bs!1230889 m!6345312))

(assert (=> bs!1230889 m!6344132))

(declare-fun m!6345314 () Bool)

(assert (=> bs!1230889 m!6345314))

(assert (=> bs!1230889 m!6345186))

(assert (=> b!5306931 d!1706008))

(declare-fun d!1706010 () Bool)

(assert (=> d!1706010 (= (isDefined!11771 (findConcatSeparation!1482 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 Nil!61048 s!2326 s!2326)) (not (isEmpty!33012 (findConcatSeparation!1482 (regTwo!30426 (regOne!30426 r!7292)) lt!2168572 Nil!61048 s!2326 s!2326))))))

(declare-fun bs!1230890 () Bool)

(assert (= bs!1230890 d!1706010))

(assert (=> bs!1230890 m!6344132))

(declare-fun m!6345316 () Bool)

(assert (=> bs!1230890 m!6345316))

(assert (=> b!5306931 d!1706010))

(declare-fun d!1706012 () Bool)

(declare-fun lt!2168762 () Regex!14957)

(assert (=> d!1706012 (validRegex!6693 lt!2168762)))

(assert (=> d!1706012 (= lt!2168762 (generalisedUnion!886 (unfocusZipperList!399 zl!343)))))

(assert (=> d!1706012 (= (unfocusZipper!699 zl!343) lt!2168762)))

(declare-fun bs!1230891 () Bool)

(assert (= bs!1230891 d!1706012))

(declare-fun m!6345318 () Bool)

(assert (=> bs!1230891 m!6345318))

(assert (=> bs!1230891 m!6344300))

(assert (=> bs!1230891 m!6344300))

(assert (=> bs!1230891 m!6344302))

(assert (=> b!5306932 d!1706012))

(declare-fun d!1706014 () Bool)

(declare-fun res!2251649 () Bool)

(declare-fun e!3298662 () Bool)

(assert (=> d!1706014 (=> res!2251649 e!3298662)))

(assert (=> d!1706014 (= res!2251649 ((_ is Nil!61046) (t!374375 (exprs!4841 (h!67495 zl!343)))))))

(assert (=> d!1706014 (= (forall!14373 (t!374375 (exprs!4841 (h!67495 zl!343))) lambda!270051) e!3298662)))

(declare-fun b!5308065 () Bool)

(declare-fun e!3298663 () Bool)

(assert (=> b!5308065 (= e!3298662 e!3298663)))

(declare-fun res!2251650 () Bool)

(assert (=> b!5308065 (=> (not res!2251650) (not e!3298663))))

(declare-fun dynLambda!24131 (Int Regex!14957) Bool)

(assert (=> b!5308065 (= res!2251650 (dynLambda!24131 lambda!270051 (h!67494 (t!374375 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun b!5308066 () Bool)

(assert (=> b!5308066 (= e!3298663 (forall!14373 (t!374375 (t!374375 (exprs!4841 (h!67495 zl!343)))) lambda!270051))))

(assert (= (and d!1706014 (not res!2251649)) b!5308065))

(assert (= (and b!5308065 res!2251650) b!5308066))

(declare-fun b_lambda!204361 () Bool)

(assert (=> (not b_lambda!204361) (not b!5308065)))

(declare-fun m!6345320 () Bool)

(assert (=> b!5308065 m!6345320))

(declare-fun m!6345322 () Bool)

(assert (=> b!5308066 m!6345322))

(assert (=> b!5306953 d!1706014))

(declare-fun d!1706016 () Bool)

(declare-fun c!921883 () Bool)

(assert (=> d!1706016 (= c!921883 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298664 () Bool)

(assert (=> d!1706016 (= (matchZipper!1201 lt!2168551 (t!374377 s!2326)) e!3298664)))

(declare-fun b!5308067 () Bool)

(assert (=> b!5308067 (= e!3298664 (nullableZipper!1330 lt!2168551))))

(declare-fun b!5308068 () Bool)

(assert (=> b!5308068 (= e!3298664 (matchZipper!1201 (derivationStepZipper!1200 lt!2168551 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1706016 c!921883) b!5308067))

(assert (= (and d!1706016 (not c!921883)) b!5308068))

(assert (=> d!1706016 m!6344510))

(declare-fun m!6345324 () Bool)

(assert (=> b!5308067 m!6345324))

(assert (=> b!5308068 m!6344514))

(assert (=> b!5308068 m!6344514))

(declare-fun m!6345326 () Bool)

(assert (=> b!5308068 m!6345326))

(assert (=> b!5308068 m!6344518))

(assert (=> b!5308068 m!6345326))

(assert (=> b!5308068 m!6344518))

(declare-fun m!6345328 () Bool)

(assert (=> b!5308068 m!6345328))

(assert (=> b!5306951 d!1706016))

(assert (=> b!5306951 d!1705832))

(declare-fun d!1706018 () Bool)

(declare-fun c!921884 () Bool)

(assert (=> d!1706018 (= c!921884 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298665 () Bool)

(assert (=> d!1706018 (= (matchZipper!1201 lt!2168539 (t!374377 s!2326)) e!3298665)))

(declare-fun b!5308069 () Bool)

(assert (=> b!5308069 (= e!3298665 (nullableZipper!1330 lt!2168539))))

(declare-fun b!5308070 () Bool)

(assert (=> b!5308070 (= e!3298665 (matchZipper!1201 (derivationStepZipper!1200 lt!2168539 (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1706018 c!921884) b!5308069))

(assert (= (and d!1706018 (not c!921884)) b!5308070))

(assert (=> d!1706018 m!6344510))

(declare-fun m!6345330 () Bool)

(assert (=> b!5308069 m!6345330))

(assert (=> b!5308070 m!6344514))

(assert (=> b!5308070 m!6344514))

(declare-fun m!6345332 () Bool)

(assert (=> b!5308070 m!6345332))

(assert (=> b!5308070 m!6344518))

(assert (=> b!5308070 m!6345332))

(assert (=> b!5308070 m!6344518))

(declare-fun m!6345334 () Bool)

(assert (=> b!5308070 m!6345334))

(assert (=> b!5306951 d!1706018))

(declare-fun d!1706020 () Bool)

(assert (=> d!1706020 (= (flatMap!684 lt!2168576 lambda!270046) (choose!39691 lt!2168576 lambda!270046))))

(declare-fun bs!1230892 () Bool)

(assert (= bs!1230892 d!1706020))

(declare-fun m!6345336 () Bool)

(assert (=> bs!1230892 m!6345336))

(assert (=> b!5306951 d!1706020))

(declare-fun d!1706022 () Bool)

(assert (=> d!1706022 (= (flatMap!684 lt!2168576 lambda!270046) (dynLambda!24130 lambda!270046 lt!2168534))))

(declare-fun lt!2168763 () Unit!153346)

(assert (=> d!1706022 (= lt!2168763 (choose!39690 lt!2168576 lt!2168534 lambda!270046))))

(assert (=> d!1706022 (= lt!2168576 (store ((as const (Array Context!8682 Bool)) false) lt!2168534 true))))

(assert (=> d!1706022 (= (lemmaFlatMapOnSingletonSet!216 lt!2168576 lt!2168534 lambda!270046) lt!2168763)))

(declare-fun b_lambda!204363 () Bool)

(assert (=> (not b_lambda!204363) (not d!1706022)))

(declare-fun bs!1230893 () Bool)

(assert (= bs!1230893 d!1706022))

(assert (=> bs!1230893 m!6344214))

(declare-fun m!6345338 () Bool)

(assert (=> bs!1230893 m!6345338))

(declare-fun m!6345340 () Bool)

(assert (=> bs!1230893 m!6345340))

(assert (=> bs!1230893 m!6344268))

(assert (=> b!5306951 d!1706022))

(declare-fun e!3298666 () Bool)

(declare-fun d!1706024 () Bool)

(assert (=> d!1706024 (= (matchZipper!1201 ((_ map or) lt!2168533 lt!2168532) (t!374377 s!2326)) e!3298666)))

(declare-fun res!2251651 () Bool)

(assert (=> d!1706024 (=> res!2251651 e!3298666)))

(assert (=> d!1706024 (= res!2251651 (matchZipper!1201 lt!2168533 (t!374377 s!2326)))))

(declare-fun lt!2168764 () Unit!153346)

(assert (=> d!1706024 (= lt!2168764 (choose!39688 lt!2168533 lt!2168532 (t!374377 s!2326)))))

(assert (=> d!1706024 (= (lemmaZipperConcatMatchesSameAsBothZippers!194 lt!2168533 lt!2168532 (t!374377 s!2326)) lt!2168764)))

(declare-fun b!5308071 () Bool)

(assert (=> b!5308071 (= e!3298666 (matchZipper!1201 lt!2168532 (t!374377 s!2326)))))

(assert (= (and d!1706024 (not res!2251651)) b!5308071))

(declare-fun m!6345342 () Bool)

(assert (=> d!1706024 m!6345342))

(assert (=> d!1706024 m!6344210))

(declare-fun m!6345344 () Bool)

(assert (=> d!1706024 m!6345344))

(assert (=> b!5308071 m!6344234))

(assert (=> b!5306951 d!1706024))

(declare-fun d!1706026 () Bool)

(declare-fun c!921885 () Bool)

(assert (=> d!1706026 (= c!921885 (isEmpty!33011 (t!374377 s!2326)))))

(declare-fun e!3298667 () Bool)

(assert (=> d!1706026 (= (matchZipper!1201 (derivationStepZipper!1200 lt!2168576 (h!67496 s!2326)) (t!374377 s!2326)) e!3298667)))

(declare-fun b!5308072 () Bool)

(assert (=> b!5308072 (= e!3298667 (nullableZipper!1330 (derivationStepZipper!1200 lt!2168576 (h!67496 s!2326))))))

(declare-fun b!5308073 () Bool)

(assert (=> b!5308073 (= e!3298667 (matchZipper!1201 (derivationStepZipper!1200 (derivationStepZipper!1200 lt!2168576 (h!67496 s!2326)) (head!11379 (t!374377 s!2326))) (tail!10476 (t!374377 s!2326))))))

(assert (= (and d!1706026 c!921885) b!5308072))

(assert (= (and d!1706026 (not c!921885)) b!5308073))

(assert (=> d!1706026 m!6344510))

(assert (=> b!5308072 m!6344226))

(declare-fun m!6345346 () Bool)

(assert (=> b!5308072 m!6345346))

(assert (=> b!5308073 m!6344514))

(assert (=> b!5308073 m!6344226))

(assert (=> b!5308073 m!6344514))

(declare-fun m!6345348 () Bool)

(assert (=> b!5308073 m!6345348))

(assert (=> b!5308073 m!6344518))

(assert (=> b!5308073 m!6345348))

(assert (=> b!5308073 m!6344518))

(declare-fun m!6345350 () Bool)

(assert (=> b!5308073 m!6345350))

(assert (=> b!5306950 d!1706026))

(declare-fun bs!1230894 () Bool)

(declare-fun d!1706028 () Bool)

(assert (= bs!1230894 (and d!1706028 b!5306936)))

(declare-fun lambda!270165 () Int)

(assert (=> bs!1230894 (= lambda!270165 lambda!270046)))

(declare-fun bs!1230895 () Bool)

(assert (= bs!1230895 (and d!1706028 d!1705838)))

(assert (=> bs!1230895 (= lambda!270165 lambda!270104)))

(assert (=> d!1706028 true))

(assert (=> d!1706028 (= (derivationStepZipper!1200 lt!2168576 (h!67496 s!2326)) (flatMap!684 lt!2168576 lambda!270165))))

(declare-fun bs!1230896 () Bool)

(assert (= bs!1230896 d!1706028))

(declare-fun m!6345352 () Bool)

(assert (=> bs!1230896 m!6345352))

(assert (=> b!5306950 d!1706028))

(declare-fun condSetEmpty!34121 () Bool)

(assert (=> setNonEmpty!34115 (= condSetEmpty!34121 (= setRest!34115 ((as const (Array Context!8682 Bool)) false)))))

(declare-fun setRes!34121 () Bool)

(assert (=> setNonEmpty!34115 (= tp!1479096 setRes!34121)))

(declare-fun setIsEmpty!34121 () Bool)

(assert (=> setIsEmpty!34121 setRes!34121))

(declare-fun setElem!34121 () Context!8682)

(declare-fun e!3298670 () Bool)

(declare-fun tp!1479169 () Bool)

(declare-fun setNonEmpty!34121 () Bool)

(assert (=> setNonEmpty!34121 (= setRes!34121 (and tp!1479169 (inv!80639 setElem!34121) e!3298670))))

(declare-fun setRest!34121 () (InoxSet Context!8682))

(assert (=> setNonEmpty!34121 (= setRest!34115 ((_ map or) (store ((as const (Array Context!8682 Bool)) false) setElem!34121 true) setRest!34121))))

(declare-fun b!5308078 () Bool)

(declare-fun tp!1479168 () Bool)

(assert (=> b!5308078 (= e!3298670 tp!1479168)))

(assert (= (and setNonEmpty!34115 condSetEmpty!34121) setIsEmpty!34121))

(assert (= (and setNonEmpty!34115 (not condSetEmpty!34121)) setNonEmpty!34121))

(assert (= setNonEmpty!34121 b!5308078))

(declare-fun m!6345354 () Bool)

(assert (=> setNonEmpty!34121 m!6345354))

(declare-fun b!5308089 () Bool)

(declare-fun e!3298673 () Bool)

(assert (=> b!5308089 (= e!3298673 tp_is_empty!39167)))

(declare-fun b!5308090 () Bool)

(declare-fun tp!1479182 () Bool)

(declare-fun tp!1479180 () Bool)

(assert (=> b!5308090 (= e!3298673 (and tp!1479182 tp!1479180))))

(declare-fun b!5308092 () Bool)

(declare-fun tp!1479183 () Bool)

(declare-fun tp!1479184 () Bool)

(assert (=> b!5308092 (= e!3298673 (and tp!1479183 tp!1479184))))

(assert (=> b!5306947 (= tp!1479100 e!3298673)))

(declare-fun b!5308091 () Bool)

(declare-fun tp!1479181 () Bool)

(assert (=> b!5308091 (= e!3298673 tp!1479181)))

(assert (= (and b!5306947 ((_ is ElementMatch!14957) (reg!15286 r!7292))) b!5308089))

(assert (= (and b!5306947 ((_ is Concat!23802) (reg!15286 r!7292))) b!5308090))

(assert (= (and b!5306947 ((_ is Star!14957) (reg!15286 r!7292))) b!5308091))

(assert (= (and b!5306947 ((_ is Union!14957) (reg!15286 r!7292))) b!5308092))

(declare-fun b!5308093 () Bool)

(declare-fun e!3298674 () Bool)

(assert (=> b!5308093 (= e!3298674 tp_is_empty!39167)))

(declare-fun b!5308094 () Bool)

(declare-fun tp!1479187 () Bool)

(declare-fun tp!1479185 () Bool)

(assert (=> b!5308094 (= e!3298674 (and tp!1479187 tp!1479185))))

(declare-fun b!5308096 () Bool)

(declare-fun tp!1479188 () Bool)

(declare-fun tp!1479189 () Bool)

(assert (=> b!5308096 (= e!3298674 (and tp!1479188 tp!1479189))))

(assert (=> b!5306930 (= tp!1479097 e!3298674)))

(declare-fun b!5308095 () Bool)

(declare-fun tp!1479186 () Bool)

(assert (=> b!5308095 (= e!3298674 tp!1479186)))

(assert (= (and b!5306930 ((_ is ElementMatch!14957) (regOne!30426 r!7292))) b!5308093))

(assert (= (and b!5306930 ((_ is Concat!23802) (regOne!30426 r!7292))) b!5308094))

(assert (= (and b!5306930 ((_ is Star!14957) (regOne!30426 r!7292))) b!5308095))

(assert (= (and b!5306930 ((_ is Union!14957) (regOne!30426 r!7292))) b!5308096))

(declare-fun b!5308097 () Bool)

(declare-fun e!3298675 () Bool)

(assert (=> b!5308097 (= e!3298675 tp_is_empty!39167)))

(declare-fun b!5308098 () Bool)

(declare-fun tp!1479192 () Bool)

(declare-fun tp!1479190 () Bool)

(assert (=> b!5308098 (= e!3298675 (and tp!1479192 tp!1479190))))

(declare-fun b!5308100 () Bool)

(declare-fun tp!1479193 () Bool)

(declare-fun tp!1479194 () Bool)

(assert (=> b!5308100 (= e!3298675 (and tp!1479193 tp!1479194))))

(assert (=> b!5306930 (= tp!1479102 e!3298675)))

(declare-fun b!5308099 () Bool)

(declare-fun tp!1479191 () Bool)

(assert (=> b!5308099 (= e!3298675 tp!1479191)))

(assert (= (and b!5306930 ((_ is ElementMatch!14957) (regTwo!30426 r!7292))) b!5308097))

(assert (= (and b!5306930 ((_ is Concat!23802) (regTwo!30426 r!7292))) b!5308098))

(assert (= (and b!5306930 ((_ is Star!14957) (regTwo!30426 r!7292))) b!5308099))

(assert (= (and b!5306930 ((_ is Union!14957) (regTwo!30426 r!7292))) b!5308100))

(declare-fun b!5308105 () Bool)

(declare-fun e!3298678 () Bool)

(declare-fun tp!1479199 () Bool)

(declare-fun tp!1479200 () Bool)

(assert (=> b!5308105 (= e!3298678 (and tp!1479199 tp!1479200))))

(assert (=> b!5306935 (= tp!1479099 e!3298678)))

(assert (= (and b!5306935 ((_ is Cons!61046) (exprs!4841 (h!67495 zl!343)))) b!5308105))

(declare-fun b!5308106 () Bool)

(declare-fun e!3298679 () Bool)

(declare-fun tp!1479201 () Bool)

(declare-fun tp!1479202 () Bool)

(assert (=> b!5308106 (= e!3298679 (and tp!1479201 tp!1479202))))

(assert (=> b!5306952 (= tp!1479105 e!3298679)))

(assert (= (and b!5306952 ((_ is Cons!61046) (exprs!4841 setElem!34115))) b!5308106))

(declare-fun b!5308107 () Bool)

(declare-fun e!3298680 () Bool)

(assert (=> b!5308107 (= e!3298680 tp_is_empty!39167)))

(declare-fun b!5308108 () Bool)

(declare-fun tp!1479205 () Bool)

(declare-fun tp!1479203 () Bool)

(assert (=> b!5308108 (= e!3298680 (and tp!1479205 tp!1479203))))

(declare-fun b!5308110 () Bool)

(declare-fun tp!1479206 () Bool)

(declare-fun tp!1479207 () Bool)

(assert (=> b!5308110 (= e!3298680 (and tp!1479206 tp!1479207))))

(assert (=> b!5306955 (= tp!1479098 e!3298680)))

(declare-fun b!5308109 () Bool)

(declare-fun tp!1479204 () Bool)

(assert (=> b!5308109 (= e!3298680 tp!1479204)))

(assert (= (and b!5306955 ((_ is ElementMatch!14957) (regOne!30427 r!7292))) b!5308107))

(assert (= (and b!5306955 ((_ is Concat!23802) (regOne!30427 r!7292))) b!5308108))

(assert (= (and b!5306955 ((_ is Star!14957) (regOne!30427 r!7292))) b!5308109))

(assert (= (and b!5306955 ((_ is Union!14957) (regOne!30427 r!7292))) b!5308110))

(declare-fun b!5308111 () Bool)

(declare-fun e!3298681 () Bool)

(assert (=> b!5308111 (= e!3298681 tp_is_empty!39167)))

(declare-fun b!5308112 () Bool)

(declare-fun tp!1479210 () Bool)

(declare-fun tp!1479208 () Bool)

(assert (=> b!5308112 (= e!3298681 (and tp!1479210 tp!1479208))))

(declare-fun b!5308114 () Bool)

(declare-fun tp!1479211 () Bool)

(declare-fun tp!1479212 () Bool)

(assert (=> b!5308114 (= e!3298681 (and tp!1479211 tp!1479212))))

(assert (=> b!5306955 (= tp!1479104 e!3298681)))

(declare-fun b!5308113 () Bool)

(declare-fun tp!1479209 () Bool)

(assert (=> b!5308113 (= e!3298681 tp!1479209)))

(assert (= (and b!5306955 ((_ is ElementMatch!14957) (regTwo!30427 r!7292))) b!5308111))

(assert (= (and b!5306955 ((_ is Concat!23802) (regTwo!30427 r!7292))) b!5308112))

(assert (= (and b!5306955 ((_ is Star!14957) (regTwo!30427 r!7292))) b!5308113))

(assert (= (and b!5306955 ((_ is Union!14957) (regTwo!30427 r!7292))) b!5308114))

(declare-fun b!5308119 () Bool)

(declare-fun e!3298684 () Bool)

(declare-fun tp!1479215 () Bool)

(assert (=> b!5308119 (= e!3298684 (and tp_is_empty!39167 tp!1479215))))

(assert (=> b!5306956 (= tp!1479103 e!3298684)))

(assert (= (and b!5306956 ((_ is Cons!61048) (t!374377 s!2326))) b!5308119))

(declare-fun b!5308127 () Bool)

(declare-fun e!3298690 () Bool)

(declare-fun tp!1479220 () Bool)

(assert (=> b!5308127 (= e!3298690 tp!1479220)))

(declare-fun tp!1479221 () Bool)

(declare-fun b!5308126 () Bool)

(declare-fun e!3298689 () Bool)

(assert (=> b!5308126 (= e!3298689 (and (inv!80639 (h!67495 (t!374376 zl!343))) e!3298690 tp!1479221))))

(assert (=> b!5306960 (= tp!1479101 e!3298689)))

(assert (= b!5308126 b!5308127))

(assert (= (and b!5306960 ((_ is Cons!61047) (t!374376 zl!343))) b!5308126))

(declare-fun m!6345356 () Bool)

(assert (=> b!5308126 m!6345356))

(declare-fun b_lambda!204365 () Bool)

(assert (= b_lambda!204349 (or b!5306936 b_lambda!204365)))

(declare-fun bs!1230897 () Bool)

(declare-fun d!1706030 () Bool)

(assert (= bs!1230897 (and d!1706030 b!5306936)))

(assert (=> bs!1230897 (= (dynLambda!24130 lambda!270046 lt!2168559) (derivationStepZipperUp!329 lt!2168559 (h!67496 s!2326)))))

(assert (=> bs!1230897 m!6344272))

(assert (=> d!1705844 d!1706030))

(declare-fun b_lambda!204367 () Bool)

(assert (= b_lambda!204363 (or b!5306936 b_lambda!204367)))

(declare-fun bs!1230898 () Bool)

(declare-fun d!1706032 () Bool)

(assert (= bs!1230898 (and d!1706032 b!5306936)))

(assert (=> bs!1230898 (= (dynLambda!24130 lambda!270046 lt!2168534) (derivationStepZipperUp!329 lt!2168534 (h!67496 s!2326)))))

(assert (=> bs!1230898 m!6344220))

(assert (=> d!1706022 d!1706032))

(declare-fun b_lambda!204369 () Bool)

(assert (= b_lambda!204361 (or b!5306953 b_lambda!204369)))

(declare-fun bs!1230899 () Bool)

(declare-fun d!1706034 () Bool)

(assert (= bs!1230899 (and d!1706034 b!5306953)))

(assert (=> bs!1230899 (= (dynLambda!24131 lambda!270051 (h!67494 (t!374375 (exprs!4841 (h!67495 zl!343))))) (validRegex!6693 (h!67494 (t!374375 (exprs!4841 (h!67495 zl!343))))))))

(declare-fun m!6345358 () Bool)

(assert (=> bs!1230899 m!6345358))

(assert (=> b!5308065 d!1706034))

(declare-fun b_lambda!204371 () Bool)

(assert (= b_lambda!204351 (or b!5306936 b_lambda!204371)))

(declare-fun bs!1230900 () Bool)

(declare-fun d!1706036 () Bool)

(assert (= bs!1230900 (and d!1706036 b!5306936)))

(assert (=> bs!1230900 (= (dynLambda!24130 lambda!270046 (h!67495 zl!343)) (derivationStepZipperUp!329 (h!67495 zl!343) (h!67496 s!2326)))))

(assert (=> bs!1230900 m!6344282))

(assert (=> d!1705884 d!1706036))

(check-sat (not d!1705810) (not b!5307820) (not bm!378443) (not b!5307696) (not b!5307946) (not d!1705802) (not b!5308009) (not bm!378448) (not b!5307321) (not d!1705726) (not b!5307526) (not b!5307322) (not d!1705800) (not b!5308025) (not b!5307500) (not bm!378452) (not bm!378431) (not b!5308048) (not d!1705972) (not b!5307697) (not b!5308052) (not b!5307729) (not b!5307174) (not d!1706002) (not b!5307317) (not bs!1230899) (not b!5307169) (not d!1705950) (not d!1705986) (not b!5307534) (not b!5307506) (not d!1705968) (not d!1705976) (not b!5308112) (not b!5308046) (not b!5308034) (not b!5307927) (not bm!378401) (not b!5307963) (not b!5307920) (not b!5307976) (not b!5308029) (not b!5307133) (not b!5307507) (not b!5307928) (not b!5307220) (not b!5308041) (not b!5308108) (not b!5307170) (not b!5307742) (not b!5307589) (not b!5308027) (not d!1705978) (not b!5307993) (not b!5307964) (not d!1706010) (not b!5308068) (not d!1705962) (not b!5307925) (not b!5308015) (not d!1705796) (not b!5308060) (not b!5307544) (not d!1706024) (not b!5308099) (not b!5308024) (not d!1705888) (not d!1705984) (not b!5308072) (not b!5307524) (not b!5307988) (not b!5307202) (not d!1705848) (not d!1705988) (not d!1705748) (not b!5308053) (not b!5308049) (not b!5307521) (not b!5307975) (not b!5307545) (not b!5307954) (not b!5307726) (not b!5307956) (not b!5307324) (not b!5307172) (not b!5307554) (not bm!378438) (not b!5307753) (not b!5308037) (not bm!378424) (not d!1705948) (not d!1705970) (not bs!1230897) (not b!5307623) (not d!1705982) (not d!1706004) (not b!5307977) (not b!5308100) (not d!1705744) (not bs!1230898) (not b!5307921) (not b!5308066) (not d!1705798) (not b!5307777) (not b!5307978) (not d!1706026) (not b!5307980) (not d!1705844) (not bm!378457) (not b!5308091) (not d!1705884) (not b!5307267) (not bm!378437) (not b!5308070) (not b!5308026) (not b!5308106) (not b_lambda!204365) (not b!5307992) (not b!5308023) (not b!5308008) (not d!1706018) (not b!5308073) (not b!5307519) (not b!5307783) (not bm!378410) (not d!1705874) (not b!5307962) (not b!5308000) (not d!1705854) (not b!5307323) (not d!1705736) (not bm!378440) (not b!5308114) (not b!5308013) (not b!5307530) (not b!5308071) (not b!5308098) (not d!1705852) (not b!5308127) (not b!5307510) (not d!1705964) (not b!5308022) (not b!5307782) (not bm!378416) (not b_lambda!204369) (not b!5308020) (not d!1705960) (not b!5308119) (not b!5307514) (not b!5308021) (not b_lambda!204367) (not bm!378425) (not d!1705808) (not b!5307953) (not b!5307724) (not b!5308092) (not bm!378459) (not d!1705804) (not d!1705928) (not b!5307952) (not b!5307951) (not b!5308036) (not b!5307958) (not bm!378458) (not d!1705958) (not b!5307533) (not d!1705966) (not b!5308069) (not b!5307776) (not b!5307994) (not bm!378461) (not d!1706006) (not d!1705898) (not d!1705894) (not b!5308094) (not b!5307965) (not b!5308057) (not d!1705994) (not d!1706000) (not d!1705850) (not bm!378445) (not b!5307546) (not b!5307757) (not bm!378456) (not b!5307719) (not b_lambda!204371) (not b!5308096) (not b!5307594) (not b!5307319) (not b!5308067) (not b!5308110) (not b!5308018) (not b!5308113) (not b!5307588) (not b!5307432) (not bm!378455) (not b!5307970) (not b!5308033) (not b!5307176) (not bm!378404) (not b!5307175) (not b!5308051) (not bm!378371) (not bm!378400) (not b!5307520) (not d!1706022) (not b!5308031) (not b!5307508) (not b!5307727) (not bm!378369) (not b!5307989) (not b!5307741) (not d!1706020) (not b!5307999) (not b!5308019) (not b!5307960) (not b!5308054) (not b!5307966) (not b!5307168) (not bm!378460) (not b!5308109) (not bm!378430) (not setNonEmpty!34121) (not d!1705876) (not d!1706012) (not b!5308095) (not b!5307624) tp_is_empty!39167 (not d!1705900) (not bm!378413) (not b!5307505) (not b!5307758) (not b!5307818) (not b!5307325) (not b!5307529) (not b!5307997) (not b!5307135) (not bm!378444) (not b!5308126) (not b!5308090) (not d!1706016) (not d!1706028) (not b!5307803) (not b!5308059) (not b!5307522) (not b!5307593) (not b!5307805) (not d!1705780) (not b!5307266) (not b!5307405) (not b!5307725) (not bm!378450) (not b!5308035) (not b!5307525) (not d!1705992) (not b!5307781) (not d!1705954) (not d!1705794) (not d!1705956) (not d!1706008) (not b!5308017) (not d!1705990) (not d!1705952) (not b!5307922) (not b!5308078) (not bs!1230900) (not d!1705998) (not d!1705996) (not d!1705838) (not b!5308047) (not b!5308105) (not b!5307261) (not b!5307222))
(check-sat)
