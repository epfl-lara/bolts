; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!628608 () Bool)

(assert start!628608)

(declare-fun b!6344310 () Bool)

(assert (=> b!6344310 true))

(assert (=> b!6344310 true))

(declare-fun lambda!348655 () Int)

(declare-fun lambda!348654 () Int)

(assert (=> b!6344310 (not (= lambda!348655 lambda!348654))))

(assert (=> b!6344310 true))

(assert (=> b!6344310 true))

(declare-fun b!6344304 () Bool)

(assert (=> b!6344304 true))

(declare-fun bs!1588702 () Bool)

(declare-fun b!6344314 () Bool)

(assert (= bs!1588702 (and b!6344314 b!6344310)))

(declare-datatypes ((C!32766 0))(
  ( (C!32767 (val!26085 Int)) )
))
(declare-datatypes ((Regex!16248 0))(
  ( (ElementMatch!16248 (c!1153721 C!32766)) (Concat!25093 (regOne!33008 Regex!16248) (regTwo!33008 Regex!16248)) (EmptyExpr!16248) (Star!16248 (reg!16577 Regex!16248)) (EmptyLang!16248) (Union!16248 (regOne!33009 Regex!16248) (regTwo!33009 Regex!16248)) )
))
(declare-fun r!7292 () Regex!16248)

(declare-fun lambda!348657 () Int)

(declare-fun lt!2363087 () Regex!16248)

(assert (=> bs!1588702 (= (and (= (regOne!33008 (regOne!33008 r!7292)) (regOne!33008 r!7292)) (= lt!2363087 (regTwo!33008 r!7292))) (= lambda!348657 lambda!348654))))

(assert (=> bs!1588702 (not (= lambda!348657 lambda!348655))))

(assert (=> b!6344314 true))

(assert (=> b!6344314 true))

(assert (=> b!6344314 true))

(declare-fun res!2610682 () Bool)

(declare-fun e!3853372 () Bool)

(assert (=> start!628608 (=> (not res!2610682) (not e!3853372))))

(declare-fun validRegex!7984 (Regex!16248) Bool)

(assert (=> start!628608 (= res!2610682 (validRegex!7984 r!7292))))

(assert (=> start!628608 e!3853372))

(declare-fun e!3853371 () Bool)

(assert (=> start!628608 e!3853371))

(declare-fun condSetEmpty!43185 () Bool)

(declare-datatypes ((List!65043 0))(
  ( (Nil!64919) (Cons!64919 (h!71367 Regex!16248) (t!378631 List!65043)) )
))
(declare-datatypes ((Context!11264 0))(
  ( (Context!11265 (exprs!6132 List!65043)) )
))
(declare-fun z!1189 () (Set Context!11264))

(assert (=> start!628608 (= condSetEmpty!43185 (= z!1189 (as set.empty (Set Context!11264))))))

(declare-fun setRes!43185 () Bool)

(assert (=> start!628608 setRes!43185))

(declare-fun e!3853374 () Bool)

(assert (=> start!628608 e!3853374))

(declare-fun e!3853370 () Bool)

(assert (=> start!628608 e!3853370))

(declare-fun b!6344302 () Bool)

(declare-fun e!3853361 () Bool)

(declare-fun tp!1768938 () Bool)

(assert (=> b!6344302 (= e!3853361 tp!1768938)))

(declare-fun b!6344303 () Bool)

(declare-fun res!2610685 () Bool)

(assert (=> b!6344303 (=> (not res!2610685) (not e!3853372))))

(declare-datatypes ((List!65044 0))(
  ( (Nil!64920) (Cons!64920 (h!71368 Context!11264) (t!378632 List!65044)) )
))
(declare-fun zl!343 () List!65044)

(declare-fun unfocusZipper!1990 (List!65044) Regex!16248)

(assert (=> b!6344303 (= res!2610685 (= r!7292 (unfocusZipper!1990 zl!343)))))

(declare-fun e!3853365 () Bool)

(declare-fun e!3853359 () Bool)

(assert (=> b!6344304 (= e!3853365 e!3853359)))

(declare-fun res!2610684 () Bool)

(assert (=> b!6344304 (=> res!2610684 e!3853359)))

(declare-datatypes ((List!65045 0))(
  ( (Nil!64921) (Cons!64921 (h!71369 C!32766) (t!378633 List!65045)) )
))
(declare-fun s!2326 () List!65045)

(assert (=> b!6344304 (= res!2610684 (or (and (is-ElementMatch!16248 (regOne!33008 r!7292)) (= (c!1153721 (regOne!33008 r!7292)) (h!71369 s!2326))) (is-Union!16248 (regOne!33008 r!7292))))))

(declare-datatypes ((Unit!158323 0))(
  ( (Unit!158324) )
))
(declare-fun lt!2363100 () Unit!158323)

(declare-fun e!3853360 () Unit!158323)

(assert (=> b!6344304 (= lt!2363100 e!3853360)))

(declare-fun c!1153720 () Bool)

(declare-fun nullable!6241 (Regex!16248) Bool)

(assert (=> b!6344304 (= c!1153720 (nullable!6241 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun lambda!348656 () Int)

(declare-fun flatMap!1753 ((Set Context!11264) Int) (Set Context!11264))

(declare-fun derivationStepZipperUp!1422 (Context!11264 C!32766) (Set Context!11264))

(assert (=> b!6344304 (= (flatMap!1753 z!1189 lambda!348656) (derivationStepZipperUp!1422 (h!71368 zl!343) (h!71369 s!2326)))))

(declare-fun lt!2363083 () Unit!158323)

(declare-fun lemmaFlatMapOnSingletonSet!1279 ((Set Context!11264) Context!11264 Int) Unit!158323)

(assert (=> b!6344304 (= lt!2363083 (lemmaFlatMapOnSingletonSet!1279 z!1189 (h!71368 zl!343) lambda!348656))))

(declare-fun lt!2363082 () (Set Context!11264))

(declare-fun lt!2363081 () Context!11264)

(assert (=> b!6344304 (= lt!2363082 (derivationStepZipperUp!1422 lt!2363081 (h!71369 s!2326)))))

(declare-fun lt!2363104 () (Set Context!11264))

(declare-fun derivationStepZipperDown!1496 (Regex!16248 Context!11264 C!32766) (Set Context!11264))

(assert (=> b!6344304 (= lt!2363104 (derivationStepZipperDown!1496 (h!71367 (exprs!6132 (h!71368 zl!343))) lt!2363081 (h!71369 s!2326)))))

(assert (=> b!6344304 (= lt!2363081 (Context!11265 (t!378631 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun lt!2363084 () (Set Context!11264))

(assert (=> b!6344304 (= lt!2363084 (derivationStepZipperUp!1422 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343))))) (h!71369 s!2326)))))

(declare-fun b!6344305 () Bool)

(declare-fun res!2610679 () Bool)

(declare-fun e!3853368 () Bool)

(assert (=> b!6344305 (=> res!2610679 e!3853368)))

(declare-fun generalisedConcat!1845 (List!65043) Regex!16248)

(assert (=> b!6344305 (= res!2610679 (not (= r!7292 (generalisedConcat!1845 (exprs!6132 (h!71368 zl!343))))))))

(declare-fun b!6344306 () Bool)

(declare-fun res!2610666 () Bool)

(assert (=> b!6344306 (=> res!2610666 e!3853365)))

(declare-fun isEmpty!37003 (List!65043) Bool)

(assert (=> b!6344306 (= res!2610666 (isEmpty!37003 (t!378631 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344307 () Bool)

(declare-fun res!2610675 () Bool)

(assert (=> b!6344307 (=> res!2610675 e!3853368)))

(assert (=> b!6344307 (= res!2610675 (or (is-EmptyExpr!16248 r!7292) (is-EmptyLang!16248 r!7292) (is-ElementMatch!16248 r!7292) (is-Union!16248 r!7292) (not (is-Concat!25093 r!7292))))))

(declare-fun setIsEmpty!43185 () Bool)

(assert (=> setIsEmpty!43185 setRes!43185))

(declare-fun b!6344308 () Bool)

(assert (=> b!6344308 (= e!3853372 (not e!3853368))))

(declare-fun res!2610671 () Bool)

(assert (=> b!6344308 (=> res!2610671 e!3853368)))

(assert (=> b!6344308 (= res!2610671 (not (is-Cons!64920 zl!343)))))

(declare-fun lt!2363098 () Bool)

(declare-fun matchRSpec!3349 (Regex!16248 List!65045) Bool)

(assert (=> b!6344308 (= lt!2363098 (matchRSpec!3349 r!7292 s!2326))))

(declare-fun matchR!8431 (Regex!16248 List!65045) Bool)

(assert (=> b!6344308 (= lt!2363098 (matchR!8431 r!7292 s!2326))))

(declare-fun lt!2363097 () Unit!158323)

(declare-fun mainMatchTheorem!3349 (Regex!16248 List!65045) Unit!158323)

(assert (=> b!6344308 (= lt!2363097 (mainMatchTheorem!3349 r!7292 s!2326))))

(declare-fun b!6344309 () Bool)

(declare-fun tp!1768942 () Bool)

(assert (=> b!6344309 (= e!3853371 tp!1768942)))

(assert (=> b!6344310 (= e!3853368 e!3853365)))

(declare-fun res!2610680 () Bool)

(assert (=> b!6344310 (=> res!2610680 e!3853365)))

(declare-fun lt!2363078 () Bool)

(assert (=> b!6344310 (= res!2610680 (or (not (= lt!2363098 lt!2363078)) (is-Nil!64921 s!2326)))))

(declare-fun Exists!3318 (Int) Bool)

(assert (=> b!6344310 (= (Exists!3318 lambda!348654) (Exists!3318 lambda!348655))))

(declare-fun lt!2363099 () Unit!158323)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1855 (Regex!16248 Regex!16248 List!65045) Unit!158323)

(assert (=> b!6344310 (= lt!2363099 (lemmaExistCutMatchRandMatchRSpecEquivalent!1855 (regOne!33008 r!7292) (regTwo!33008 r!7292) s!2326))))

(assert (=> b!6344310 (= lt!2363078 (Exists!3318 lambda!348654))))

(declare-datatypes ((tuple2!66454 0))(
  ( (tuple2!66455 (_1!36530 List!65045) (_2!36530 List!65045)) )
))
(declare-datatypes ((Option!16139 0))(
  ( (None!16138) (Some!16138 (v!52307 tuple2!66454)) )
))
(declare-fun isDefined!12842 (Option!16139) Bool)

(declare-fun findConcatSeparation!2553 (Regex!16248 Regex!16248 List!65045 List!65045 List!65045) Option!16139)

(assert (=> b!6344310 (= lt!2363078 (isDefined!12842 (findConcatSeparation!2553 (regOne!33008 r!7292) (regTwo!33008 r!7292) Nil!64921 s!2326 s!2326)))))

(declare-fun lt!2363102 () Unit!158323)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2317 (Regex!16248 Regex!16248 List!65045) Unit!158323)

(assert (=> b!6344310 (= lt!2363102 (lemmaFindConcatSeparationEquivalentToExists!2317 (regOne!33008 r!7292) (regTwo!33008 r!7292) s!2326))))

(declare-fun b!6344311 () Bool)

(declare-fun Unit!158325 () Unit!158323)

(assert (=> b!6344311 (= e!3853360 Unit!158325)))

(declare-fun b!6344312 () Bool)

(declare-fun tp_is_empty!41749 () Bool)

(assert (=> b!6344312 (= e!3853371 tp_is_empty!41749)))

(declare-fun b!6344313 () Bool)

(declare-fun e!3853369 () Bool)

(declare-fun tp!1768937 () Bool)

(assert (=> b!6344313 (= e!3853369 tp!1768937)))

(declare-fun e!3853362 () Bool)

(assert (=> b!6344314 (= e!3853362 (validRegex!7984 (regOne!33008 (regOne!33008 r!7292))))))

(assert (=> b!6344314 (= (isDefined!12842 (findConcatSeparation!2553 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 Nil!64921 s!2326 s!2326)) (Exists!3318 lambda!348657))))

(declare-fun lt!2363103 () Unit!158323)

(assert (=> b!6344314 (= lt!2363103 (lemmaFindConcatSeparationEquivalentToExists!2317 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 s!2326))))

(declare-fun lt!2363094 () List!65043)

(assert (=> b!6344314 (= lt!2363087 (generalisedConcat!1845 lt!2363094))))

(declare-fun lt!2363101 () Bool)

(declare-fun lt!2363090 () Regex!16248)

(assert (=> b!6344314 (= lt!2363101 (matchRSpec!3349 lt!2363090 s!2326))))

(declare-fun lt!2363091 () Unit!158323)

(assert (=> b!6344314 (= lt!2363091 (mainMatchTheorem!3349 lt!2363090 s!2326))))

(declare-fun lt!2363093 () (Set Context!11264))

(declare-fun matchZipper!2260 ((Set Context!11264) List!65045) Bool)

(assert (=> b!6344314 (= lt!2363101 (matchZipper!2260 lt!2363093 s!2326))))

(assert (=> b!6344314 (= lt!2363101 (matchR!8431 lt!2363090 s!2326))))

(declare-fun lt!2363079 () List!65044)

(declare-fun lt!2363095 () Unit!158323)

(declare-fun theoremZipperRegexEquiv!790 ((Set Context!11264) List!65044 Regex!16248 List!65045) Unit!158323)

(assert (=> b!6344314 (= lt!2363095 (theoremZipperRegexEquiv!790 lt!2363093 lt!2363079 lt!2363090 s!2326))))

(declare-fun lt!2363089 () List!65043)

(assert (=> b!6344314 (= lt!2363090 (generalisedConcat!1845 lt!2363089))))

(declare-fun b!6344315 () Bool)

(declare-fun res!2610687 () Bool)

(declare-fun e!3853363 () Bool)

(assert (=> b!6344315 (=> res!2610687 e!3853363)))

(declare-fun lt!2363092 () Bool)

(declare-fun lt!2363080 () (Set Context!11264))

(assert (=> b!6344315 (= res!2610687 (not (= lt!2363092 (matchZipper!2260 lt!2363080 (t!378633 s!2326)))))))

(declare-fun b!6344316 () Bool)

(declare-fun res!2610677 () Bool)

(assert (=> b!6344316 (=> res!2610677 e!3853363)))

(declare-fun lt!2363077 () Context!11264)

(declare-fun contextDepthTotal!357 (Context!11264) Int)

(assert (=> b!6344316 (= res!2610677 (>= (contextDepthTotal!357 lt!2363077) (contextDepthTotal!357 (h!71368 zl!343))))))

(declare-fun b!6344317 () Bool)

(declare-fun tp!1768941 () Bool)

(declare-fun tp!1768943 () Bool)

(assert (=> b!6344317 (= e!3853371 (and tp!1768941 tp!1768943))))

(declare-fun b!6344318 () Bool)

(declare-fun e!3853367 () Bool)

(assert (=> b!6344318 (= e!3853367 e!3853363)))

(declare-fun res!2610686 () Bool)

(assert (=> b!6344318 (=> res!2610686 e!3853363)))

(declare-fun lt!2363086 () (Set Context!11264))

(assert (=> b!6344318 (= res!2610686 (not (= lt!2363080 lt!2363086)))))

(assert (=> b!6344318 (= (flatMap!1753 lt!2363093 lambda!348656) (derivationStepZipperUp!1422 lt!2363077 (h!71369 s!2326)))))

(declare-fun lt!2363085 () Unit!158323)

(assert (=> b!6344318 (= lt!2363085 (lemmaFlatMapOnSingletonSet!1279 lt!2363093 lt!2363077 lambda!348656))))

(declare-fun lt!2363088 () (Set Context!11264))

(assert (=> b!6344318 (= lt!2363088 (derivationStepZipperUp!1422 lt!2363077 (h!71369 s!2326)))))

(declare-fun derivationStepZipper!2214 ((Set Context!11264) C!32766) (Set Context!11264))

(assert (=> b!6344318 (= lt!2363080 (derivationStepZipper!2214 lt!2363093 (h!71369 s!2326)))))

(assert (=> b!6344318 (= lt!2363093 (set.insert lt!2363077 (as set.empty (Set Context!11264))))))

(assert (=> b!6344318 (= lt!2363077 (Context!11265 lt!2363089))))

(assert (=> b!6344318 (= lt!2363089 (Cons!64919 (regOne!33008 (regOne!33008 r!7292)) lt!2363094))))

(declare-fun b!6344319 () Bool)

(declare-fun res!2610683 () Bool)

(assert (=> b!6344319 (=> res!2610683 e!3853368)))

(assert (=> b!6344319 (= res!2610683 (not (is-Cons!64919 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344320 () Bool)

(assert (=> b!6344320 (= e!3853363 e!3853362)))

(declare-fun res!2610674 () Bool)

(assert (=> b!6344320 (=> res!2610674 e!3853362)))

(declare-fun zipperDepthTotal!385 (List!65044) Int)

(assert (=> b!6344320 (= res!2610674 (>= (zipperDepthTotal!385 lt!2363079) (zipperDepthTotal!385 zl!343)))))

(assert (=> b!6344320 (= lt!2363079 (Cons!64920 lt!2363077 Nil!64920))))

(declare-fun b!6344321 () Bool)

(declare-fun res!2610672 () Bool)

(assert (=> b!6344321 (=> res!2610672 e!3853368)))

(declare-fun isEmpty!37004 (List!65044) Bool)

(assert (=> b!6344321 (= res!2610672 (not (isEmpty!37004 (t!378632 zl!343))))))

(declare-fun b!6344322 () Bool)

(declare-fun res!2610667 () Bool)

(assert (=> b!6344322 (=> res!2610667 e!3853363)))

(assert (=> b!6344322 (= res!2610667 (not (= (exprs!6132 (h!71368 zl!343)) (Cons!64919 (Concat!25093 (regOne!33008 (regOne!33008 r!7292)) (regTwo!33008 (regOne!33008 r!7292))) (t!378631 (exprs!6132 (h!71368 zl!343)))))))))

(declare-fun b!6344323 () Bool)

(declare-fun res!2610668 () Bool)

(assert (=> b!6344323 (=> res!2610668 e!3853359)))

(declare-fun e!3853373 () Bool)

(assert (=> b!6344323 (= res!2610668 e!3853373)))

(declare-fun res!2610688 () Bool)

(assert (=> b!6344323 (=> (not res!2610688) (not e!3853373))))

(assert (=> b!6344323 (= res!2610688 (is-Concat!25093 (regOne!33008 r!7292)))))

(declare-fun b!6344324 () Bool)

(declare-fun tp!1768935 () Bool)

(declare-fun tp!1768940 () Bool)

(assert (=> b!6344324 (= e!3853371 (and tp!1768935 tp!1768940))))

(declare-fun b!6344325 () Bool)

(declare-fun tp!1768939 () Bool)

(assert (=> b!6344325 (= e!3853370 (and tp_is_empty!41749 tp!1768939))))

(declare-fun b!6344326 () Bool)

(declare-fun tp!1768944 () Bool)

(declare-fun inv!83868 (Context!11264) Bool)

(assert (=> b!6344326 (= e!3853374 (and (inv!83868 (h!71368 zl!343)) e!3853361 tp!1768944))))

(declare-fun b!6344327 () Bool)

(declare-fun e!3853366 () Bool)

(assert (=> b!6344327 (= e!3853366 (matchZipper!2260 lt!2363082 (t!378633 s!2326)))))

(declare-fun b!6344328 () Bool)

(declare-fun e!3853364 () Bool)

(assert (=> b!6344328 (= e!3853359 e!3853364)))

(declare-fun res!2610673 () Bool)

(assert (=> b!6344328 (=> res!2610673 e!3853364)))

(assert (=> b!6344328 (= res!2610673 (not (= lt!2363104 lt!2363086)))))

(assert (=> b!6344328 (= lt!2363086 (derivationStepZipperDown!1496 (regOne!33008 (regOne!33008 r!7292)) (Context!11265 lt!2363094) (h!71369 s!2326)))))

(assert (=> b!6344328 (= lt!2363094 (Cons!64919 (regTwo!33008 (regOne!33008 r!7292)) (t!378631 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344329 () Bool)

(assert (=> b!6344329 (= e!3853373 (nullable!6241 (regOne!33008 (regOne!33008 r!7292))))))

(declare-fun b!6344330 () Bool)

(declare-fun res!2610669 () Bool)

(assert (=> b!6344330 (=> (not res!2610669) (not e!3853372))))

(declare-fun toList!10032 ((Set Context!11264)) List!65044)

(assert (=> b!6344330 (= res!2610669 (= (toList!10032 z!1189) zl!343))))

(declare-fun b!6344331 () Bool)

(declare-fun Unit!158326 () Unit!158323)

(assert (=> b!6344331 (= e!3853360 Unit!158326)))

(declare-fun lt!2363096 () Unit!158323)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1079 ((Set Context!11264) (Set Context!11264) List!65045) Unit!158323)

(assert (=> b!6344331 (= lt!2363096 (lemmaZipperConcatMatchesSameAsBothZippers!1079 lt!2363104 lt!2363082 (t!378633 s!2326)))))

(declare-fun res!2610670 () Bool)

(assert (=> b!6344331 (= res!2610670 (matchZipper!2260 lt!2363104 (t!378633 s!2326)))))

(assert (=> b!6344331 (=> res!2610670 e!3853366)))

(assert (=> b!6344331 (= (matchZipper!2260 (set.union lt!2363104 lt!2363082) (t!378633 s!2326)) e!3853366)))

(declare-fun tp!1768936 () Bool)

(declare-fun setNonEmpty!43185 () Bool)

(declare-fun setElem!43185 () Context!11264)

(assert (=> setNonEmpty!43185 (= setRes!43185 (and tp!1768936 (inv!83868 setElem!43185) e!3853369))))

(declare-fun setRest!43185 () (Set Context!11264))

(assert (=> setNonEmpty!43185 (= z!1189 (set.union (set.insert setElem!43185 (as set.empty (Set Context!11264))) setRest!43185))))

(declare-fun b!6344332 () Bool)

(assert (=> b!6344332 (= e!3853364 e!3853367)))

(declare-fun res!2610678 () Bool)

(assert (=> b!6344332 (=> res!2610678 e!3853367)))

(assert (=> b!6344332 (= res!2610678 (not (= lt!2363092 (matchZipper!2260 lt!2363086 (t!378633 s!2326)))))))

(assert (=> b!6344332 (= lt!2363092 (matchZipper!2260 lt!2363104 (t!378633 s!2326)))))

(declare-fun b!6344333 () Bool)

(declare-fun res!2610681 () Bool)

(assert (=> b!6344333 (=> res!2610681 e!3853359)))

(assert (=> b!6344333 (= res!2610681 (not (is-Concat!25093 (regOne!33008 r!7292))))))

(declare-fun b!6344334 () Bool)

(declare-fun res!2610665 () Bool)

(assert (=> b!6344334 (=> res!2610665 e!3853362)))

(declare-fun zipperDepth!355 (List!65044) Int)

(assert (=> b!6344334 (= res!2610665 (> (zipperDepth!355 lt!2363079) (zipperDepth!355 zl!343)))))

(declare-fun b!6344335 () Bool)

(declare-fun res!2610676 () Bool)

(assert (=> b!6344335 (=> res!2610676 e!3853368)))

(declare-fun generalisedUnion!2092 (List!65043) Regex!16248)

(declare-fun unfocusZipperList!1669 (List!65044) List!65043)

(assert (=> b!6344335 (= res!2610676 (not (= r!7292 (generalisedUnion!2092 (unfocusZipperList!1669 zl!343)))))))

(assert (= (and start!628608 res!2610682) b!6344330))

(assert (= (and b!6344330 res!2610669) b!6344303))

(assert (= (and b!6344303 res!2610685) b!6344308))

(assert (= (and b!6344308 (not res!2610671)) b!6344321))

(assert (= (and b!6344321 (not res!2610672)) b!6344305))

(assert (= (and b!6344305 (not res!2610679)) b!6344319))

(assert (= (and b!6344319 (not res!2610683)) b!6344335))

(assert (= (and b!6344335 (not res!2610676)) b!6344307))

(assert (= (and b!6344307 (not res!2610675)) b!6344310))

(assert (= (and b!6344310 (not res!2610680)) b!6344306))

(assert (= (and b!6344306 (not res!2610666)) b!6344304))

(assert (= (and b!6344304 c!1153720) b!6344331))

(assert (= (and b!6344304 (not c!1153720)) b!6344311))

(assert (= (and b!6344331 (not res!2610670)) b!6344327))

(assert (= (and b!6344304 (not res!2610684)) b!6344323))

(assert (= (and b!6344323 res!2610688) b!6344329))

(assert (= (and b!6344323 (not res!2610668)) b!6344333))

(assert (= (and b!6344333 (not res!2610681)) b!6344328))

(assert (= (and b!6344328 (not res!2610673)) b!6344332))

(assert (= (and b!6344332 (not res!2610678)) b!6344318))

(assert (= (and b!6344318 (not res!2610686)) b!6344315))

(assert (= (and b!6344315 (not res!2610687)) b!6344322))

(assert (= (and b!6344322 (not res!2610667)) b!6344316))

(assert (= (and b!6344316 (not res!2610677)) b!6344320))

(assert (= (and b!6344320 (not res!2610674)) b!6344334))

(assert (= (and b!6344334 (not res!2610665)) b!6344314))

(assert (= (and start!628608 (is-ElementMatch!16248 r!7292)) b!6344312))

(assert (= (and start!628608 (is-Concat!25093 r!7292)) b!6344324))

(assert (= (and start!628608 (is-Star!16248 r!7292)) b!6344309))

(assert (= (and start!628608 (is-Union!16248 r!7292)) b!6344317))

(assert (= (and start!628608 condSetEmpty!43185) setIsEmpty!43185))

(assert (= (and start!628608 (not condSetEmpty!43185)) setNonEmpty!43185))

(assert (= setNonEmpty!43185 b!6344313))

(assert (= b!6344326 b!6344302))

(assert (= (and start!628608 (is-Cons!64920 zl!343)) b!6344326))

(assert (= (and start!628608 (is-Cons!64921 s!2326)) b!6344325))

(declare-fun m!7152252 () Bool)

(assert (=> b!6344316 m!7152252))

(declare-fun m!7152254 () Bool)

(assert (=> b!6344316 m!7152254))

(declare-fun m!7152256 () Bool)

(assert (=> b!6344328 m!7152256))

(declare-fun m!7152258 () Bool)

(assert (=> setNonEmpty!43185 m!7152258))

(declare-fun m!7152260 () Bool)

(assert (=> b!6344318 m!7152260))

(declare-fun m!7152262 () Bool)

(assert (=> b!6344318 m!7152262))

(declare-fun m!7152264 () Bool)

(assert (=> b!6344318 m!7152264))

(declare-fun m!7152266 () Bool)

(assert (=> b!6344318 m!7152266))

(declare-fun m!7152268 () Bool)

(assert (=> b!6344318 m!7152268))

(declare-fun m!7152270 () Bool)

(assert (=> b!6344310 m!7152270))

(declare-fun m!7152272 () Bool)

(assert (=> b!6344310 m!7152272))

(declare-fun m!7152274 () Bool)

(assert (=> b!6344310 m!7152274))

(declare-fun m!7152276 () Bool)

(assert (=> b!6344310 m!7152276))

(declare-fun m!7152278 () Bool)

(assert (=> b!6344310 m!7152278))

(assert (=> b!6344310 m!7152272))

(assert (=> b!6344310 m!7152276))

(declare-fun m!7152280 () Bool)

(assert (=> b!6344310 m!7152280))

(declare-fun m!7152282 () Bool)

(assert (=> b!6344314 m!7152282))

(declare-fun m!7152284 () Bool)

(assert (=> b!6344314 m!7152284))

(declare-fun m!7152286 () Bool)

(assert (=> b!6344314 m!7152286))

(declare-fun m!7152288 () Bool)

(assert (=> b!6344314 m!7152288))

(declare-fun m!7152290 () Bool)

(assert (=> b!6344314 m!7152290))

(declare-fun m!7152292 () Bool)

(assert (=> b!6344314 m!7152292))

(declare-fun m!7152294 () Bool)

(assert (=> b!6344314 m!7152294))

(declare-fun m!7152296 () Bool)

(assert (=> b!6344314 m!7152296))

(declare-fun m!7152298 () Bool)

(assert (=> b!6344314 m!7152298))

(declare-fun m!7152300 () Bool)

(assert (=> b!6344314 m!7152300))

(declare-fun m!7152302 () Bool)

(assert (=> b!6344314 m!7152302))

(assert (=> b!6344314 m!7152286))

(declare-fun m!7152304 () Bool)

(assert (=> b!6344314 m!7152304))

(declare-fun m!7152306 () Bool)

(assert (=> b!6344315 m!7152306))

(declare-fun m!7152308 () Bool)

(assert (=> b!6344321 m!7152308))

(declare-fun m!7152310 () Bool)

(assert (=> b!6344306 m!7152310))

(declare-fun m!7152312 () Bool)

(assert (=> b!6344331 m!7152312))

(declare-fun m!7152314 () Bool)

(assert (=> b!6344331 m!7152314))

(declare-fun m!7152316 () Bool)

(assert (=> b!6344331 m!7152316))

(declare-fun m!7152318 () Bool)

(assert (=> b!6344305 m!7152318))

(declare-fun m!7152320 () Bool)

(assert (=> b!6344327 m!7152320))

(declare-fun m!7152322 () Bool)

(assert (=> b!6344303 m!7152322))

(declare-fun m!7152324 () Bool)

(assert (=> b!6344320 m!7152324))

(declare-fun m!7152326 () Bool)

(assert (=> b!6344320 m!7152326))

(declare-fun m!7152328 () Bool)

(assert (=> b!6344335 m!7152328))

(assert (=> b!6344335 m!7152328))

(declare-fun m!7152330 () Bool)

(assert (=> b!6344335 m!7152330))

(declare-fun m!7152332 () Bool)

(assert (=> b!6344326 m!7152332))

(declare-fun m!7152334 () Bool)

(assert (=> start!628608 m!7152334))

(declare-fun m!7152336 () Bool)

(assert (=> b!6344330 m!7152336))

(declare-fun m!7152338 () Bool)

(assert (=> b!6344329 m!7152338))

(declare-fun m!7152340 () Bool)

(assert (=> b!6344332 m!7152340))

(assert (=> b!6344332 m!7152314))

(declare-fun m!7152342 () Bool)

(assert (=> b!6344334 m!7152342))

(declare-fun m!7152344 () Bool)

(assert (=> b!6344334 m!7152344))

(declare-fun m!7152346 () Bool)

(assert (=> b!6344304 m!7152346))

(declare-fun m!7152348 () Bool)

(assert (=> b!6344304 m!7152348))

(declare-fun m!7152350 () Bool)

(assert (=> b!6344304 m!7152350))

(declare-fun m!7152352 () Bool)

(assert (=> b!6344304 m!7152352))

(declare-fun m!7152354 () Bool)

(assert (=> b!6344304 m!7152354))

(declare-fun m!7152356 () Bool)

(assert (=> b!6344304 m!7152356))

(declare-fun m!7152358 () Bool)

(assert (=> b!6344304 m!7152358))

(declare-fun m!7152360 () Bool)

(assert (=> b!6344308 m!7152360))

(declare-fun m!7152362 () Bool)

(assert (=> b!6344308 m!7152362))

(declare-fun m!7152364 () Bool)

(assert (=> b!6344308 m!7152364))

(push 1)

(assert (not b!6344330))

(assert (not b!6344317))

(assert (not b!6344326))

(assert (not b!6344331))

(assert (not b!6344309))

(assert (not b!6344318))

(assert (not b!6344334))

(assert (not b!6344302))

(assert (not b!6344316))

(assert (not b!6344328))

(assert (not b!6344325))

(assert (not b!6344335))

(assert (not b!6344313))

(assert (not b!6344324))

(assert (not b!6344303))

(assert (not b!6344315))

(assert (not b!6344329))

(assert (not b!6344321))

(assert (not b!6344327))

(assert (not b!6344304))

(assert (not setNonEmpty!43185))

(assert (not b!6344314))

(assert (not b!6344332))

(assert (not b!6344305))

(assert (not b!6344308))

(assert (not b!6344310))

(assert tp_is_empty!41749)

(assert (not b!6344306))

(assert (not b!6344320))

(assert (not start!628608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1991114 () Bool)

(declare-fun lt!2363191 () Regex!16248)

(assert (=> d!1991114 (validRegex!7984 lt!2363191)))

(assert (=> d!1991114 (= lt!2363191 (generalisedUnion!2092 (unfocusZipperList!1669 zl!343)))))

(assert (=> d!1991114 (= (unfocusZipper!1990 zl!343) lt!2363191)))

(declare-fun bs!1588704 () Bool)

(assert (= bs!1588704 d!1991114))

(declare-fun m!7152480 () Bool)

(assert (=> bs!1588704 m!7152480))

(assert (=> bs!1588704 m!7152328))

(assert (=> bs!1588704 m!7152328))

(assert (=> bs!1588704 m!7152330))

(assert (=> b!6344303 d!1991114))

(declare-fun b!6344472 () Bool)

(assert (=> b!6344472 true))

(declare-fun bs!1588705 () Bool)

(declare-fun b!6344474 () Bool)

(assert (= bs!1588705 (and b!6344474 b!6344472)))

(declare-fun lt!2363202 () Int)

(declare-fun lt!2363200 () Int)

(declare-fun lambda!348682 () Int)

(declare-fun lambda!348681 () Int)

(assert (=> bs!1588705 (= (= lt!2363202 lt!2363200) (= lambda!348682 lambda!348681))))

(assert (=> b!6344474 true))

(declare-fun d!1991116 () Bool)

(declare-fun e!3853435 () Bool)

(assert (=> d!1991116 e!3853435))

(declare-fun res!2610779 () Bool)

(assert (=> d!1991116 (=> (not res!2610779) (not e!3853435))))

(assert (=> d!1991116 (= res!2610779 (>= lt!2363202 0))))

(declare-fun e!3853436 () Int)

(assert (=> d!1991116 (= lt!2363202 e!3853436)))

(declare-fun c!1153739 () Bool)

(assert (=> d!1991116 (= c!1153739 (is-Cons!64920 lt!2363079))))

(assert (=> d!1991116 (= (zipperDepth!355 lt!2363079) lt!2363202)))

(assert (=> b!6344472 (= e!3853436 lt!2363200)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!244 (Context!11264) Int)

(assert (=> b!6344472 (= lt!2363200 (maxBigInt!0 (contextDepth!244 (h!71368 lt!2363079)) (zipperDepth!355 (t!378632 lt!2363079))))))

(declare-fun lt!2363201 () Unit!158323)

(declare-fun lambda!348680 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!228 (List!65044 Int Int Int) Unit!158323)

(assert (=> b!6344472 (= lt!2363201 (lemmaForallContextDepthBiggerThanTransitive!228 (t!378632 lt!2363079) lt!2363200 (zipperDepth!355 (t!378632 lt!2363079)) lambda!348680))))

(declare-fun forall!15408 (List!65044 Int) Bool)

(assert (=> b!6344472 (forall!15408 (t!378632 lt!2363079) lambda!348681)))

(declare-fun lt!2363203 () Unit!158323)

(assert (=> b!6344472 (= lt!2363203 lt!2363201)))

(declare-fun b!6344473 () Bool)

(assert (=> b!6344473 (= e!3853436 0)))

(assert (=> b!6344474 (= e!3853435 (forall!15408 lt!2363079 lambda!348682))))

(assert (= (and d!1991116 c!1153739) b!6344472))

(assert (= (and d!1991116 (not c!1153739)) b!6344473))

(assert (= (and d!1991116 res!2610779) b!6344474))

(declare-fun m!7152482 () Bool)

(assert (=> b!6344472 m!7152482))

(declare-fun m!7152484 () Bool)

(assert (=> b!6344472 m!7152484))

(declare-fun m!7152486 () Bool)

(assert (=> b!6344472 m!7152486))

(declare-fun m!7152488 () Bool)

(assert (=> b!6344472 m!7152488))

(assert (=> b!6344472 m!7152482))

(assert (=> b!6344472 m!7152484))

(declare-fun m!7152490 () Bool)

(assert (=> b!6344472 m!7152490))

(assert (=> b!6344472 m!7152484))

(declare-fun m!7152492 () Bool)

(assert (=> b!6344474 m!7152492))

(assert (=> b!6344334 d!1991116))

(declare-fun bs!1588706 () Bool)

(declare-fun b!6344477 () Bool)

(assert (= bs!1588706 (and b!6344477 b!6344472)))

(declare-fun lambda!348683 () Int)

(assert (=> bs!1588706 (= lambda!348683 lambda!348680)))

(declare-fun lambda!348684 () Int)

(declare-fun lt!2363204 () Int)

(assert (=> bs!1588706 (= (= lt!2363204 lt!2363200) (= lambda!348684 lambda!348681))))

(declare-fun bs!1588707 () Bool)

(assert (= bs!1588707 (and b!6344477 b!6344474)))

(assert (=> bs!1588707 (= (= lt!2363204 lt!2363202) (= lambda!348684 lambda!348682))))

(assert (=> b!6344477 true))

(declare-fun bs!1588708 () Bool)

(declare-fun b!6344479 () Bool)

(assert (= bs!1588708 (and b!6344479 b!6344472)))

(declare-fun lambda!348685 () Int)

(declare-fun lt!2363206 () Int)

(assert (=> bs!1588708 (= (= lt!2363206 lt!2363200) (= lambda!348685 lambda!348681))))

(declare-fun bs!1588709 () Bool)

(assert (= bs!1588709 (and b!6344479 b!6344474)))

(assert (=> bs!1588709 (= (= lt!2363206 lt!2363202) (= lambda!348685 lambda!348682))))

(declare-fun bs!1588710 () Bool)

(assert (= bs!1588710 (and b!6344479 b!6344477)))

(assert (=> bs!1588710 (= (= lt!2363206 lt!2363204) (= lambda!348685 lambda!348684))))

(assert (=> b!6344479 true))

(declare-fun d!1991118 () Bool)

(declare-fun e!3853437 () Bool)

(assert (=> d!1991118 e!3853437))

(declare-fun res!2610780 () Bool)

(assert (=> d!1991118 (=> (not res!2610780) (not e!3853437))))

(assert (=> d!1991118 (= res!2610780 (>= lt!2363206 0))))

(declare-fun e!3853438 () Int)

(assert (=> d!1991118 (= lt!2363206 e!3853438)))

(declare-fun c!1153740 () Bool)

(assert (=> d!1991118 (= c!1153740 (is-Cons!64920 zl!343))))

(assert (=> d!1991118 (= (zipperDepth!355 zl!343) lt!2363206)))

(assert (=> b!6344477 (= e!3853438 lt!2363204)))

(assert (=> b!6344477 (= lt!2363204 (maxBigInt!0 (contextDepth!244 (h!71368 zl!343)) (zipperDepth!355 (t!378632 zl!343))))))

(declare-fun lt!2363205 () Unit!158323)

(assert (=> b!6344477 (= lt!2363205 (lemmaForallContextDepthBiggerThanTransitive!228 (t!378632 zl!343) lt!2363204 (zipperDepth!355 (t!378632 zl!343)) lambda!348683))))

(assert (=> b!6344477 (forall!15408 (t!378632 zl!343) lambda!348684)))

(declare-fun lt!2363207 () Unit!158323)

(assert (=> b!6344477 (= lt!2363207 lt!2363205)))

(declare-fun b!6344478 () Bool)

(assert (=> b!6344478 (= e!3853438 0)))

(assert (=> b!6344479 (= e!3853437 (forall!15408 zl!343 lambda!348685))))

(assert (= (and d!1991118 c!1153740) b!6344477))

(assert (= (and d!1991118 (not c!1153740)) b!6344478))

(assert (= (and d!1991118 res!2610780) b!6344479))

(declare-fun m!7152494 () Bool)

(assert (=> b!6344477 m!7152494))

(declare-fun m!7152496 () Bool)

(assert (=> b!6344477 m!7152496))

(declare-fun m!7152498 () Bool)

(assert (=> b!6344477 m!7152498))

(declare-fun m!7152500 () Bool)

(assert (=> b!6344477 m!7152500))

(assert (=> b!6344477 m!7152494))

(assert (=> b!6344477 m!7152496))

(declare-fun m!7152502 () Bool)

(assert (=> b!6344477 m!7152502))

(assert (=> b!6344477 m!7152496))

(declare-fun m!7152504 () Bool)

(assert (=> b!6344479 m!7152504))

(assert (=> b!6344334 d!1991118))

(declare-fun b!6344502 () Bool)

(declare-fun e!3853453 () (Set Context!11264))

(declare-fun e!3853454 () (Set Context!11264))

(assert (=> b!6344502 (= e!3853453 e!3853454)))

(declare-fun c!1153754 () Bool)

(assert (=> b!6344502 (= c!1153754 (is-Union!16248 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344503 () Bool)

(declare-fun e!3853451 () (Set Context!11264))

(declare-fun e!3853452 () (Set Context!11264))

(assert (=> b!6344503 (= e!3853451 e!3853452)))

(declare-fun c!1153755 () Bool)

(assert (=> b!6344503 (= c!1153755 (is-Concat!25093 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344504 () Bool)

(declare-fun call!540823 () (Set Context!11264))

(declare-fun call!540821 () (Set Context!11264))

(assert (=> b!6344504 (= e!3853454 (set.union call!540823 call!540821))))

(declare-fun b!6344505 () Bool)

(declare-fun e!3853456 () Bool)

(assert (=> b!6344505 (= e!3853456 (nullable!6241 (regOne!33008 (h!71367 (exprs!6132 (h!71368 zl!343))))))))

(declare-fun b!6344506 () Bool)

(declare-fun call!540822 () (Set Context!11264))

(assert (=> b!6344506 (= e!3853452 call!540822)))

(declare-fun b!6344507 () Bool)

(declare-fun c!1153753 () Bool)

(assert (=> b!6344507 (= c!1153753 (is-Star!16248 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun e!3853455 () (Set Context!11264))

(assert (=> b!6344507 (= e!3853452 e!3853455)))

(declare-fun b!6344508 () Bool)

(declare-fun c!1153752 () Bool)

(assert (=> b!6344508 (= c!1153752 e!3853456)))

(declare-fun res!2610783 () Bool)

(assert (=> b!6344508 (=> (not res!2610783) (not e!3853456))))

(assert (=> b!6344508 (= res!2610783 (is-Concat!25093 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(assert (=> b!6344508 (= e!3853454 e!3853451)))

(declare-fun b!6344509 () Bool)

(assert (=> b!6344509 (= e!3853455 call!540822)))

(declare-fun b!6344510 () Bool)

(assert (=> b!6344510 (= e!3853455 (as set.empty (Set Context!11264)))))

(declare-fun bm!540815 () Bool)

(declare-fun call!540819 () List!65043)

(declare-fun call!540824 () List!65043)

(assert (=> bm!540815 (= call!540819 call!540824)))

(declare-fun bm!540816 () Bool)

(assert (=> bm!540816 (= call!540821 (derivationStepZipperDown!1496 (ite c!1153754 (regTwo!33009 (h!71367 (exprs!6132 (h!71368 zl!343)))) (ite c!1153752 (regTwo!33008 (h!71367 (exprs!6132 (h!71368 zl!343)))) (ite c!1153755 (regOne!33008 (h!71367 (exprs!6132 (h!71368 zl!343)))) (reg!16577 (h!71367 (exprs!6132 (h!71368 zl!343))))))) (ite (or c!1153754 c!1153752) lt!2363081 (Context!11265 call!540819)) (h!71369 s!2326)))))

(declare-fun bm!540817 () Bool)

(assert (=> bm!540817 (= call!540823 (derivationStepZipperDown!1496 (ite c!1153754 (regOne!33009 (h!71367 (exprs!6132 (h!71368 zl!343)))) (regOne!33008 (h!71367 (exprs!6132 (h!71368 zl!343))))) (ite c!1153754 lt!2363081 (Context!11265 call!540824)) (h!71369 s!2326)))))

(declare-fun bm!540814 () Bool)

(declare-fun call!540820 () (Set Context!11264))

(assert (=> bm!540814 (= call!540822 call!540820)))

(declare-fun d!1991120 () Bool)

(declare-fun c!1153751 () Bool)

(assert (=> d!1991120 (= c!1153751 (and (is-ElementMatch!16248 (h!71367 (exprs!6132 (h!71368 zl!343)))) (= (c!1153721 (h!71367 (exprs!6132 (h!71368 zl!343)))) (h!71369 s!2326))))))

(assert (=> d!1991120 (= (derivationStepZipperDown!1496 (h!71367 (exprs!6132 (h!71368 zl!343))) lt!2363081 (h!71369 s!2326)) e!3853453)))

(declare-fun bm!540818 () Bool)

(declare-fun $colon$colon!2109 (List!65043 Regex!16248) List!65043)

(assert (=> bm!540818 (= call!540824 ($colon$colon!2109 (exprs!6132 lt!2363081) (ite (or c!1153752 c!1153755) (regTwo!33008 (h!71367 (exprs!6132 (h!71368 zl!343)))) (h!71367 (exprs!6132 (h!71368 zl!343))))))))

(declare-fun b!6344511 () Bool)

(assert (=> b!6344511 (= e!3853453 (set.insert lt!2363081 (as set.empty (Set Context!11264))))))

(declare-fun bm!540819 () Bool)

(assert (=> bm!540819 (= call!540820 call!540821)))

(declare-fun b!6344512 () Bool)

(assert (=> b!6344512 (= e!3853451 (set.union call!540823 call!540820))))

(assert (= (and d!1991120 c!1153751) b!6344511))

(assert (= (and d!1991120 (not c!1153751)) b!6344502))

(assert (= (and b!6344502 c!1153754) b!6344504))

(assert (= (and b!6344502 (not c!1153754)) b!6344508))

(assert (= (and b!6344508 res!2610783) b!6344505))

(assert (= (and b!6344508 c!1153752) b!6344512))

(assert (= (and b!6344508 (not c!1153752)) b!6344503))

(assert (= (and b!6344503 c!1153755) b!6344506))

(assert (= (and b!6344503 (not c!1153755)) b!6344507))

(assert (= (and b!6344507 c!1153753) b!6344509))

(assert (= (and b!6344507 (not c!1153753)) b!6344510))

(assert (= (or b!6344506 b!6344509) bm!540815))

(assert (= (or b!6344506 b!6344509) bm!540814))

(assert (= (or b!6344512 bm!540815) bm!540818))

(assert (= (or b!6344512 bm!540814) bm!540819))

(assert (= (or b!6344504 bm!540819) bm!540816))

(assert (= (or b!6344504 b!6344512) bm!540817))

(declare-fun m!7152506 () Bool)

(assert (=> b!6344511 m!7152506))

(declare-fun m!7152508 () Bool)

(assert (=> bm!540816 m!7152508))

(declare-fun m!7152510 () Bool)

(assert (=> bm!540817 m!7152510))

(declare-fun m!7152512 () Bool)

(assert (=> b!6344505 m!7152512))

(declare-fun m!7152514 () Bool)

(assert (=> bm!540818 m!7152514))

(assert (=> b!6344304 d!1991120))

(declare-fun d!1991122 () Bool)

(declare-fun nullableFct!2188 (Regex!16248) Bool)

(assert (=> d!1991122 (= (nullable!6241 (h!71367 (exprs!6132 (h!71368 zl!343)))) (nullableFct!2188 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun bs!1588711 () Bool)

(assert (= bs!1588711 d!1991122))

(declare-fun m!7152516 () Bool)

(assert (=> bs!1588711 m!7152516))

(assert (=> b!6344304 d!1991122))

(declare-fun b!6344523 () Bool)

(declare-fun e!3853464 () Bool)

(assert (=> b!6344523 (= e!3853464 (nullable!6241 (h!71367 (exprs!6132 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343)))))))))))

(declare-fun b!6344524 () Bool)

(declare-fun e!3853465 () (Set Context!11264))

(declare-fun call!540827 () (Set Context!11264))

(assert (=> b!6344524 (= e!3853465 call!540827)))

(declare-fun bm!540822 () Bool)

(assert (=> bm!540822 (= call!540827 (derivationStepZipperDown!1496 (h!71367 (exprs!6132 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343))))))) (Context!11265 (t!378631 (exprs!6132 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343)))))))) (h!71369 s!2326)))))

(declare-fun b!6344525 () Bool)

(declare-fun e!3853463 () (Set Context!11264))

(assert (=> b!6344525 (= e!3853463 e!3853465)))

(declare-fun c!1153761 () Bool)

(assert (=> b!6344525 (= c!1153761 (is-Cons!64919 (exprs!6132 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343))))))))))

(declare-fun b!6344526 () Bool)

(assert (=> b!6344526 (= e!3853463 (set.union call!540827 (derivationStepZipperUp!1422 (Context!11265 (t!378631 (exprs!6132 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343)))))))) (h!71369 s!2326))))))

(declare-fun d!1991124 () Bool)

(declare-fun c!1153760 () Bool)

(assert (=> d!1991124 (= c!1153760 e!3853464)))

(declare-fun res!2610786 () Bool)

(assert (=> d!1991124 (=> (not res!2610786) (not e!3853464))))

(assert (=> d!1991124 (= res!2610786 (is-Cons!64919 (exprs!6132 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343))))))))))

(assert (=> d!1991124 (= (derivationStepZipperUp!1422 (Context!11265 (Cons!64919 (h!71367 (exprs!6132 (h!71368 zl!343))) (t!378631 (exprs!6132 (h!71368 zl!343))))) (h!71369 s!2326)) e!3853463)))

(declare-fun b!6344527 () Bool)

(assert (=> b!6344527 (= e!3853465 (as set.empty (Set Context!11264)))))

(assert (= (and d!1991124 res!2610786) b!6344523))

(assert (= (and d!1991124 c!1153760) b!6344526))

(assert (= (and d!1991124 (not c!1153760)) b!6344525))

(assert (= (and b!6344525 c!1153761) b!6344524))

(assert (= (and b!6344525 (not c!1153761)) b!6344527))

(assert (= (or b!6344526 b!6344524) bm!540822))

(declare-fun m!7152518 () Bool)

(assert (=> b!6344523 m!7152518))

(declare-fun m!7152520 () Bool)

(assert (=> bm!540822 m!7152520))

(declare-fun m!7152522 () Bool)

(assert (=> b!6344526 m!7152522))

(assert (=> b!6344304 d!1991124))

(declare-fun b!6344528 () Bool)

(declare-fun e!3853467 () Bool)

(assert (=> b!6344528 (= e!3853467 (nullable!6241 (h!71367 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344529 () Bool)

(declare-fun e!3853468 () (Set Context!11264))

(declare-fun call!540828 () (Set Context!11264))

(assert (=> b!6344529 (= e!3853468 call!540828)))

(declare-fun bm!540823 () Bool)

(assert (=> bm!540823 (= call!540828 (derivationStepZipperDown!1496 (h!71367 (exprs!6132 (h!71368 zl!343))) (Context!11265 (t!378631 (exprs!6132 (h!71368 zl!343)))) (h!71369 s!2326)))))

(declare-fun b!6344530 () Bool)

(declare-fun e!3853466 () (Set Context!11264))

(assert (=> b!6344530 (= e!3853466 e!3853468)))

(declare-fun c!1153763 () Bool)

(assert (=> b!6344530 (= c!1153763 (is-Cons!64919 (exprs!6132 (h!71368 zl!343))))))

(declare-fun b!6344531 () Bool)

(assert (=> b!6344531 (= e!3853466 (set.union call!540828 (derivationStepZipperUp!1422 (Context!11265 (t!378631 (exprs!6132 (h!71368 zl!343)))) (h!71369 s!2326))))))

(declare-fun d!1991126 () Bool)

(declare-fun c!1153762 () Bool)

(assert (=> d!1991126 (= c!1153762 e!3853467)))

(declare-fun res!2610787 () Bool)

(assert (=> d!1991126 (=> (not res!2610787) (not e!3853467))))

(assert (=> d!1991126 (= res!2610787 (is-Cons!64919 (exprs!6132 (h!71368 zl!343))))))

(assert (=> d!1991126 (= (derivationStepZipperUp!1422 (h!71368 zl!343) (h!71369 s!2326)) e!3853466)))

(declare-fun b!6344532 () Bool)

(assert (=> b!6344532 (= e!3853468 (as set.empty (Set Context!11264)))))

(assert (= (and d!1991126 res!2610787) b!6344528))

(assert (= (and d!1991126 c!1153762) b!6344531))

(assert (= (and d!1991126 (not c!1153762)) b!6344530))

(assert (= (and b!6344530 c!1153763) b!6344529))

(assert (= (and b!6344530 (not c!1153763)) b!6344532))

(assert (= (or b!6344531 b!6344529) bm!540823))

(assert (=> b!6344528 m!7152356))

(declare-fun m!7152524 () Bool)

(assert (=> bm!540823 m!7152524))

(declare-fun m!7152526 () Bool)

(assert (=> b!6344531 m!7152526))

(assert (=> b!6344304 d!1991126))

(declare-fun d!1991128 () Bool)

(declare-fun dynLambda!25738 (Int Context!11264) (Set Context!11264))

(assert (=> d!1991128 (= (flatMap!1753 z!1189 lambda!348656) (dynLambda!25738 lambda!348656 (h!71368 zl!343)))))

(declare-fun lt!2363210 () Unit!158323)

(declare-fun choose!47047 ((Set Context!11264) Context!11264 Int) Unit!158323)

(assert (=> d!1991128 (= lt!2363210 (choose!47047 z!1189 (h!71368 zl!343) lambda!348656))))

(assert (=> d!1991128 (= z!1189 (set.insert (h!71368 zl!343) (as set.empty (Set Context!11264))))))

(assert (=> d!1991128 (= (lemmaFlatMapOnSingletonSet!1279 z!1189 (h!71368 zl!343) lambda!348656) lt!2363210)))

(declare-fun b_lambda!241429 () Bool)

(assert (=> (not b_lambda!241429) (not d!1991128)))

(declare-fun bs!1588712 () Bool)

(assert (= bs!1588712 d!1991128))

(assert (=> bs!1588712 m!7152350))

(declare-fun m!7152528 () Bool)

(assert (=> bs!1588712 m!7152528))

(declare-fun m!7152530 () Bool)

(assert (=> bs!1588712 m!7152530))

(declare-fun m!7152532 () Bool)

(assert (=> bs!1588712 m!7152532))

(assert (=> b!6344304 d!1991128))

(declare-fun b!6344533 () Bool)

(declare-fun e!3853470 () Bool)

(assert (=> b!6344533 (= e!3853470 (nullable!6241 (h!71367 (exprs!6132 lt!2363081))))))

(declare-fun b!6344534 () Bool)

(declare-fun e!3853471 () (Set Context!11264))

(declare-fun call!540829 () (Set Context!11264))

(assert (=> b!6344534 (= e!3853471 call!540829)))

(declare-fun bm!540824 () Bool)

(assert (=> bm!540824 (= call!540829 (derivationStepZipperDown!1496 (h!71367 (exprs!6132 lt!2363081)) (Context!11265 (t!378631 (exprs!6132 lt!2363081))) (h!71369 s!2326)))))

(declare-fun b!6344535 () Bool)

(declare-fun e!3853469 () (Set Context!11264))

(assert (=> b!6344535 (= e!3853469 e!3853471)))

(declare-fun c!1153765 () Bool)

(assert (=> b!6344535 (= c!1153765 (is-Cons!64919 (exprs!6132 lt!2363081)))))

(declare-fun b!6344536 () Bool)

(assert (=> b!6344536 (= e!3853469 (set.union call!540829 (derivationStepZipperUp!1422 (Context!11265 (t!378631 (exprs!6132 lt!2363081))) (h!71369 s!2326))))))

(declare-fun d!1991130 () Bool)

(declare-fun c!1153764 () Bool)

(assert (=> d!1991130 (= c!1153764 e!3853470)))

(declare-fun res!2610788 () Bool)

(assert (=> d!1991130 (=> (not res!2610788) (not e!3853470))))

(assert (=> d!1991130 (= res!2610788 (is-Cons!64919 (exprs!6132 lt!2363081)))))

(assert (=> d!1991130 (= (derivationStepZipperUp!1422 lt!2363081 (h!71369 s!2326)) e!3853469)))

(declare-fun b!6344537 () Bool)

(assert (=> b!6344537 (= e!3853471 (as set.empty (Set Context!11264)))))

(assert (= (and d!1991130 res!2610788) b!6344533))

(assert (= (and d!1991130 c!1153764) b!6344536))

(assert (= (and d!1991130 (not c!1153764)) b!6344535))

(assert (= (and b!6344535 c!1153765) b!6344534))

(assert (= (and b!6344535 (not c!1153765)) b!6344537))

(assert (= (or b!6344536 b!6344534) bm!540824))

(declare-fun m!7152534 () Bool)

(assert (=> b!6344533 m!7152534))

(declare-fun m!7152536 () Bool)

(assert (=> bm!540824 m!7152536))

(declare-fun m!7152538 () Bool)

(assert (=> b!6344536 m!7152538))

(assert (=> b!6344304 d!1991130))

(declare-fun d!1991132 () Bool)

(declare-fun choose!47048 ((Set Context!11264) Int) (Set Context!11264))

(assert (=> d!1991132 (= (flatMap!1753 z!1189 lambda!348656) (choose!47048 z!1189 lambda!348656))))

(declare-fun bs!1588713 () Bool)

(assert (= bs!1588713 d!1991132))

(declare-fun m!7152540 () Bool)

(assert (=> bs!1588713 m!7152540))

(assert (=> b!6344304 d!1991132))

(declare-fun b!6344558 () Bool)

(declare-fun e!3853485 () Bool)

(declare-fun lt!2363213 () Regex!16248)

(declare-fun isEmptyExpr!1650 (Regex!16248) Bool)

(assert (=> b!6344558 (= e!3853485 (isEmptyExpr!1650 lt!2363213))))

(declare-fun b!6344559 () Bool)

(declare-fun e!3853484 () Bool)

(declare-fun head!12988 (List!65043) Regex!16248)

(assert (=> b!6344559 (= e!3853484 (= lt!2363213 (head!12988 lt!2363089)))))

(declare-fun d!1991134 () Bool)

(declare-fun e!3853487 () Bool)

(assert (=> d!1991134 e!3853487))

(declare-fun res!2610794 () Bool)

(assert (=> d!1991134 (=> (not res!2610794) (not e!3853487))))

(assert (=> d!1991134 (= res!2610794 (validRegex!7984 lt!2363213))))

(declare-fun e!3853489 () Regex!16248)

(assert (=> d!1991134 (= lt!2363213 e!3853489)))

(declare-fun c!1153774 () Bool)

(declare-fun e!3853486 () Bool)

(assert (=> d!1991134 (= c!1153774 e!3853486)))

(declare-fun res!2610793 () Bool)

(assert (=> d!1991134 (=> (not res!2610793) (not e!3853486))))

(assert (=> d!1991134 (= res!2610793 (is-Cons!64919 lt!2363089))))

(declare-fun lambda!348688 () Int)

(declare-fun forall!15409 (List!65043 Int) Bool)

(assert (=> d!1991134 (forall!15409 lt!2363089 lambda!348688)))

(assert (=> d!1991134 (= (generalisedConcat!1845 lt!2363089) lt!2363213)))

(declare-fun b!6344560 () Bool)

(declare-fun e!3853488 () Regex!16248)

(assert (=> b!6344560 (= e!3853488 EmptyExpr!16248)))

(declare-fun b!6344561 () Bool)

(assert (=> b!6344561 (= e!3853485 e!3853484)))

(declare-fun c!1153777 () Bool)

(declare-fun tail!12073 (List!65043) List!65043)

(assert (=> b!6344561 (= c!1153777 (isEmpty!37003 (tail!12073 lt!2363089)))))

(declare-fun b!6344562 () Bool)

(assert (=> b!6344562 (= e!3853488 (Concat!25093 (h!71367 lt!2363089) (generalisedConcat!1845 (t!378631 lt!2363089))))))

(declare-fun b!6344563 () Bool)

(assert (=> b!6344563 (= e!3853489 (h!71367 lt!2363089))))

(declare-fun b!6344564 () Bool)

(assert (=> b!6344564 (= e!3853486 (isEmpty!37003 (t!378631 lt!2363089)))))

(declare-fun b!6344565 () Bool)

(assert (=> b!6344565 (= e!3853489 e!3853488)))

(declare-fun c!1153776 () Bool)

(assert (=> b!6344565 (= c!1153776 (is-Cons!64919 lt!2363089))))

(declare-fun b!6344566 () Bool)

(declare-fun isConcat!1173 (Regex!16248) Bool)

(assert (=> b!6344566 (= e!3853484 (isConcat!1173 lt!2363213))))

(declare-fun b!6344567 () Bool)

(assert (=> b!6344567 (= e!3853487 e!3853485)))

(declare-fun c!1153775 () Bool)

(assert (=> b!6344567 (= c!1153775 (isEmpty!37003 lt!2363089))))

(assert (= (and d!1991134 res!2610793) b!6344564))

(assert (= (and d!1991134 c!1153774) b!6344563))

(assert (= (and d!1991134 (not c!1153774)) b!6344565))

(assert (= (and b!6344565 c!1153776) b!6344562))

(assert (= (and b!6344565 (not c!1153776)) b!6344560))

(assert (= (and d!1991134 res!2610794) b!6344567))

(assert (= (and b!6344567 c!1153775) b!6344558))

(assert (= (and b!6344567 (not c!1153775)) b!6344561))

(assert (= (and b!6344561 c!1153777) b!6344559))

(assert (= (and b!6344561 (not c!1153777)) b!6344566))

(declare-fun m!7152542 () Bool)

(assert (=> b!6344566 m!7152542))

(declare-fun m!7152544 () Bool)

(assert (=> b!6344559 m!7152544))

(declare-fun m!7152546 () Bool)

(assert (=> b!6344561 m!7152546))

(assert (=> b!6344561 m!7152546))

(declare-fun m!7152548 () Bool)

(assert (=> b!6344561 m!7152548))

(declare-fun m!7152550 () Bool)

(assert (=> b!6344567 m!7152550))

(declare-fun m!7152552 () Bool)

(assert (=> b!6344558 m!7152552))

(declare-fun m!7152554 () Bool)

(assert (=> d!1991134 m!7152554))

(declare-fun m!7152556 () Bool)

(assert (=> d!1991134 m!7152556))

(declare-fun m!7152558 () Bool)

(assert (=> b!6344564 m!7152558))

(declare-fun m!7152560 () Bool)

(assert (=> b!6344562 m!7152560))

(assert (=> b!6344314 d!1991134))

(declare-fun d!1991136 () Bool)

(declare-fun c!1153780 () Bool)

(declare-fun isEmpty!37007 (List!65045) Bool)

(assert (=> d!1991136 (= c!1153780 (isEmpty!37007 s!2326))))

(declare-fun e!3853492 () Bool)

(assert (=> d!1991136 (= (matchZipper!2260 lt!2363093 s!2326) e!3853492)))

(declare-fun b!6344572 () Bool)

(declare-fun nullableZipper!2014 ((Set Context!11264)) Bool)

(assert (=> b!6344572 (= e!3853492 (nullableZipper!2014 lt!2363093))))

(declare-fun b!6344573 () Bool)

(declare-fun head!12989 (List!65045) C!32766)

(declare-fun tail!12074 (List!65045) List!65045)

(assert (=> b!6344573 (= e!3853492 (matchZipper!2260 (derivationStepZipper!2214 lt!2363093 (head!12989 s!2326)) (tail!12074 s!2326)))))

(assert (= (and d!1991136 c!1153780) b!6344572))

(assert (= (and d!1991136 (not c!1153780)) b!6344573))

(declare-fun m!7152562 () Bool)

(assert (=> d!1991136 m!7152562))

(declare-fun m!7152564 () Bool)

(assert (=> b!6344572 m!7152564))

(declare-fun m!7152566 () Bool)

(assert (=> b!6344573 m!7152566))

(assert (=> b!6344573 m!7152566))

(declare-fun m!7152568 () Bool)

(assert (=> b!6344573 m!7152568))

(declare-fun m!7152570 () Bool)

(assert (=> b!6344573 m!7152570))

(assert (=> b!6344573 m!7152568))

(assert (=> b!6344573 m!7152570))

(declare-fun m!7152572 () Bool)

(assert (=> b!6344573 m!7152572))

(assert (=> b!6344314 d!1991136))

(declare-fun bs!1588714 () Bool)

(declare-fun b!6344606 () Bool)

(assert (= bs!1588714 (and b!6344606 b!6344310)))

(declare-fun lambda!348693 () Int)

(assert (=> bs!1588714 (not (= lambda!348693 lambda!348654))))

(assert (=> bs!1588714 (not (= lambda!348693 lambda!348655))))

(declare-fun bs!1588715 () Bool)

(assert (= bs!1588715 (and b!6344606 b!6344314)))

(assert (=> bs!1588715 (not (= lambda!348693 lambda!348657))))

(assert (=> b!6344606 true))

(assert (=> b!6344606 true))

(declare-fun bs!1588716 () Bool)

(declare-fun b!6344609 () Bool)

(assert (= bs!1588716 (and b!6344609 b!6344310)))

(declare-fun lambda!348694 () Int)

(assert (=> bs!1588716 (not (= lambda!348694 lambda!348654))))

(assert (=> bs!1588716 (= (and (= (regOne!33008 lt!2363090) (regOne!33008 r!7292)) (= (regTwo!33008 lt!2363090) (regTwo!33008 r!7292))) (= lambda!348694 lambda!348655))))

(declare-fun bs!1588717 () Bool)

(assert (= bs!1588717 (and b!6344609 b!6344314)))

(assert (=> bs!1588717 (not (= lambda!348694 lambda!348657))))

(declare-fun bs!1588718 () Bool)

(assert (= bs!1588718 (and b!6344609 b!6344606)))

(assert (=> bs!1588718 (not (= lambda!348694 lambda!348693))))

(assert (=> b!6344609 true))

(assert (=> b!6344609 true))

(declare-fun e!3853511 () Bool)

(declare-fun call!540834 () Bool)

(assert (=> b!6344606 (= e!3853511 call!540834)))

(declare-fun b!6344607 () Bool)

(declare-fun e!3853513 () Bool)

(declare-fun e!3853515 () Bool)

(assert (=> b!6344607 (= e!3853513 e!3853515)))

(declare-fun res!2610813 () Bool)

(assert (=> b!6344607 (= res!2610813 (matchRSpec!3349 (regOne!33009 lt!2363090) s!2326))))

(assert (=> b!6344607 (=> res!2610813 e!3853515)))

(declare-fun b!6344608 () Bool)

(declare-fun e!3853512 () Bool)

(declare-fun e!3853514 () Bool)

(assert (=> b!6344608 (= e!3853512 e!3853514)))

(declare-fun res!2610811 () Bool)

(assert (=> b!6344608 (= res!2610811 (not (is-EmptyLang!16248 lt!2363090)))))

(assert (=> b!6344608 (=> (not res!2610811) (not e!3853514))))

(declare-fun bm!540829 () Bool)

(declare-fun call!540835 () Bool)

(assert (=> bm!540829 (= call!540835 (isEmpty!37007 s!2326))))

(declare-fun d!1991138 () Bool)

(declare-fun c!1153789 () Bool)

(assert (=> d!1991138 (= c!1153789 (is-EmptyExpr!16248 lt!2363090))))

(assert (=> d!1991138 (= (matchRSpec!3349 lt!2363090 s!2326) e!3853512)))

(declare-fun e!3853517 () Bool)

(assert (=> b!6344609 (= e!3853517 call!540834)))

(declare-fun b!6344610 () Bool)

(assert (=> b!6344610 (= e!3853513 e!3853517)))

(declare-fun c!1153790 () Bool)

(assert (=> b!6344610 (= c!1153790 (is-Star!16248 lt!2363090))))

(declare-fun b!6344611 () Bool)

(declare-fun c!1153792 () Bool)

(assert (=> b!6344611 (= c!1153792 (is-ElementMatch!16248 lt!2363090))))

(declare-fun e!3853516 () Bool)

(assert (=> b!6344611 (= e!3853514 e!3853516)))

(declare-fun bm!540830 () Bool)

(assert (=> bm!540830 (= call!540834 (Exists!3318 (ite c!1153790 lambda!348693 lambda!348694)))))

(declare-fun b!6344612 () Bool)

(assert (=> b!6344612 (= e!3853512 call!540835)))

(declare-fun b!6344613 () Bool)

(declare-fun res!2610812 () Bool)

(assert (=> b!6344613 (=> res!2610812 e!3853511)))

(assert (=> b!6344613 (= res!2610812 call!540835)))

(assert (=> b!6344613 (= e!3853517 e!3853511)))

(declare-fun b!6344614 () Bool)

(assert (=> b!6344614 (= e!3853515 (matchRSpec!3349 (regTwo!33009 lt!2363090) s!2326))))

(declare-fun b!6344615 () Bool)

(assert (=> b!6344615 (= e!3853516 (= s!2326 (Cons!64921 (c!1153721 lt!2363090) Nil!64921)))))

(declare-fun b!6344616 () Bool)

(declare-fun c!1153791 () Bool)

(assert (=> b!6344616 (= c!1153791 (is-Union!16248 lt!2363090))))

(assert (=> b!6344616 (= e!3853516 e!3853513)))

(assert (= (and d!1991138 c!1153789) b!6344612))

(assert (= (and d!1991138 (not c!1153789)) b!6344608))

(assert (= (and b!6344608 res!2610811) b!6344611))

(assert (= (and b!6344611 c!1153792) b!6344615))

(assert (= (and b!6344611 (not c!1153792)) b!6344616))

(assert (= (and b!6344616 c!1153791) b!6344607))

(assert (= (and b!6344616 (not c!1153791)) b!6344610))

(assert (= (and b!6344607 (not res!2610813)) b!6344614))

(assert (= (and b!6344610 c!1153790) b!6344613))

(assert (= (and b!6344610 (not c!1153790)) b!6344609))

(assert (= (and b!6344613 (not res!2610812)) b!6344606))

(assert (= (or b!6344606 b!6344609) bm!540830))

(assert (= (or b!6344612 b!6344613) bm!540829))

(declare-fun m!7152574 () Bool)

(assert (=> b!6344607 m!7152574))

(assert (=> bm!540829 m!7152562))

(declare-fun m!7152576 () Bool)

(assert (=> bm!540830 m!7152576))

(declare-fun m!7152578 () Bool)

(assert (=> b!6344614 m!7152578))

(assert (=> b!6344314 d!1991138))

(declare-fun b!6344635 () Bool)

(declare-fun e!3853537 () Bool)

(declare-fun call!540842 () Bool)

(assert (=> b!6344635 (= e!3853537 call!540842)))

(declare-fun bm!540837 () Bool)

(declare-fun call!540844 () Bool)

(declare-fun call!540843 () Bool)

(assert (=> bm!540837 (= call!540844 call!540843)))

(declare-fun b!6344636 () Bool)

(declare-fun e!3853532 () Bool)

(declare-fun e!3853533 () Bool)

(assert (=> b!6344636 (= e!3853532 e!3853533)))

(declare-fun c!1153797 () Bool)

(assert (=> b!6344636 (= c!1153797 (is-Union!16248 (regOne!33008 (regOne!33008 r!7292))))))

(declare-fun b!6344637 () Bool)

(declare-fun e!3853535 () Bool)

(declare-fun e!3853534 () Bool)

(assert (=> b!6344637 (= e!3853535 e!3853534)))

(declare-fun res!2610824 () Bool)

(assert (=> b!6344637 (=> (not res!2610824) (not e!3853534))))

(assert (=> b!6344637 (= res!2610824 call!540844)))

(declare-fun b!6344638 () Bool)

(declare-fun res!2610827 () Bool)

(assert (=> b!6344638 (=> res!2610827 e!3853535)))

(assert (=> b!6344638 (= res!2610827 (not (is-Concat!25093 (regOne!33008 (regOne!33008 r!7292)))))))

(assert (=> b!6344638 (= e!3853533 e!3853535)))

(declare-fun b!6344639 () Bool)

(assert (=> b!6344639 (= e!3853534 call!540842)))

(declare-fun b!6344640 () Bool)

(declare-fun res!2610825 () Bool)

(assert (=> b!6344640 (=> (not res!2610825) (not e!3853537))))

(assert (=> b!6344640 (= res!2610825 call!540844)))

(assert (=> b!6344640 (= e!3853533 e!3853537)))

(declare-fun b!6344641 () Bool)

(declare-fun e!3853536 () Bool)

(assert (=> b!6344641 (= e!3853536 call!540843)))

(declare-fun d!1991140 () Bool)

(declare-fun res!2610828 () Bool)

(declare-fun e!3853538 () Bool)

(assert (=> d!1991140 (=> res!2610828 e!3853538)))

(assert (=> d!1991140 (= res!2610828 (is-ElementMatch!16248 (regOne!33008 (regOne!33008 r!7292))))))

(assert (=> d!1991140 (= (validRegex!7984 (regOne!33008 (regOne!33008 r!7292))) e!3853538)))

(declare-fun b!6344642 () Bool)

(assert (=> b!6344642 (= e!3853532 e!3853536)))

(declare-fun res!2610826 () Bool)

(assert (=> b!6344642 (= res!2610826 (not (nullable!6241 (reg!16577 (regOne!33008 (regOne!33008 r!7292))))))))

(assert (=> b!6344642 (=> (not res!2610826) (not e!3853536))))

(declare-fun bm!540838 () Bool)

(declare-fun c!1153798 () Bool)

(assert (=> bm!540838 (= call!540843 (validRegex!7984 (ite c!1153798 (reg!16577 (regOne!33008 (regOne!33008 r!7292))) (ite c!1153797 (regOne!33009 (regOne!33008 (regOne!33008 r!7292))) (regOne!33008 (regOne!33008 (regOne!33008 r!7292)))))))))

(declare-fun bm!540839 () Bool)

(assert (=> bm!540839 (= call!540842 (validRegex!7984 (ite c!1153797 (regTwo!33009 (regOne!33008 (regOne!33008 r!7292))) (regTwo!33008 (regOne!33008 (regOne!33008 r!7292))))))))

(declare-fun b!6344643 () Bool)

(assert (=> b!6344643 (= e!3853538 e!3853532)))

(assert (=> b!6344643 (= c!1153798 (is-Star!16248 (regOne!33008 (regOne!33008 r!7292))))))

(assert (= (and d!1991140 (not res!2610828)) b!6344643))

(assert (= (and b!6344643 c!1153798) b!6344642))

(assert (= (and b!6344643 (not c!1153798)) b!6344636))

(assert (= (and b!6344642 res!2610826) b!6344641))

(assert (= (and b!6344636 c!1153797) b!6344640))

(assert (= (and b!6344636 (not c!1153797)) b!6344638))

(assert (= (and b!6344640 res!2610825) b!6344635))

(assert (= (and b!6344638 (not res!2610827)) b!6344637))

(assert (= (and b!6344637 res!2610824) b!6344639))

(assert (= (or b!6344635 b!6344639) bm!540839))

(assert (= (or b!6344640 b!6344637) bm!540837))

(assert (= (or b!6344641 bm!540837) bm!540838))

(declare-fun m!7152580 () Bool)

(assert (=> b!6344642 m!7152580))

(declare-fun m!7152582 () Bool)

(assert (=> bm!540838 m!7152582))

(declare-fun m!7152584 () Bool)

(assert (=> bm!540839 m!7152584))

(assert (=> b!6344314 d!1991140))

(declare-fun d!1991142 () Bool)

(assert (=> d!1991142 (= (matchR!8431 lt!2363090 s!2326) (matchZipper!2260 lt!2363093 s!2326))))

(declare-fun lt!2363216 () Unit!158323)

(declare-fun choose!47049 ((Set Context!11264) List!65044 Regex!16248 List!65045) Unit!158323)

(assert (=> d!1991142 (= lt!2363216 (choose!47049 lt!2363093 lt!2363079 lt!2363090 s!2326))))

(assert (=> d!1991142 (validRegex!7984 lt!2363090)))

(assert (=> d!1991142 (= (theoremZipperRegexEquiv!790 lt!2363093 lt!2363079 lt!2363090 s!2326) lt!2363216)))

(declare-fun bs!1588719 () Bool)

(assert (= bs!1588719 d!1991142))

(assert (=> bs!1588719 m!7152290))

(assert (=> bs!1588719 m!7152300))

(declare-fun m!7152586 () Bool)

(assert (=> bs!1588719 m!7152586))

(declare-fun m!7152588 () Bool)

(assert (=> bs!1588719 m!7152588))

(assert (=> b!6344314 d!1991142))

(declare-fun bs!1588720 () Bool)

(declare-fun d!1991144 () Bool)

(assert (= bs!1588720 (and d!1991144 b!6344606)))

(declare-fun lambda!348697 () Int)

(assert (=> bs!1588720 (not (= lambda!348697 lambda!348693))))

(declare-fun bs!1588721 () Bool)

(assert (= bs!1588721 (and d!1991144 b!6344310)))

(assert (=> bs!1588721 (= (and (= (regOne!33008 (regOne!33008 r!7292)) (regOne!33008 r!7292)) (= lt!2363087 (regTwo!33008 r!7292))) (= lambda!348697 lambda!348654))))

(assert (=> bs!1588721 (not (= lambda!348697 lambda!348655))))

(declare-fun bs!1588722 () Bool)

(assert (= bs!1588722 (and d!1991144 b!6344314)))

(assert (=> bs!1588722 (= lambda!348697 lambda!348657)))

(declare-fun bs!1588723 () Bool)

(assert (= bs!1588723 (and d!1991144 b!6344609)))

(assert (=> bs!1588723 (not (= lambda!348697 lambda!348694))))

(assert (=> d!1991144 true))

(assert (=> d!1991144 true))

(assert (=> d!1991144 true))

(assert (=> d!1991144 (= (isDefined!12842 (findConcatSeparation!2553 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 Nil!64921 s!2326 s!2326)) (Exists!3318 lambda!348697))))

(declare-fun lt!2363219 () Unit!158323)

(declare-fun choose!47050 (Regex!16248 Regex!16248 List!65045) Unit!158323)

(assert (=> d!1991144 (= lt!2363219 (choose!47050 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 s!2326))))

(assert (=> d!1991144 (validRegex!7984 (regOne!33008 (regOne!33008 r!7292)))))

(assert (=> d!1991144 (= (lemmaFindConcatSeparationEquivalentToExists!2317 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 s!2326) lt!2363219)))

(declare-fun bs!1588724 () Bool)

(assert (= bs!1588724 d!1991144))

(assert (=> bs!1588724 m!7152286))

(assert (=> bs!1588724 m!7152304))

(declare-fun m!7152590 () Bool)

(assert (=> bs!1588724 m!7152590))

(assert (=> bs!1588724 m!7152294))

(declare-fun m!7152592 () Bool)

(assert (=> bs!1588724 m!7152592))

(assert (=> bs!1588724 m!7152286))

(assert (=> b!6344314 d!1991144))

(declare-fun bs!1588725 () Bool)

(declare-fun d!1991146 () Bool)

(assert (= bs!1588725 (and d!1991146 d!1991134)))

(declare-fun lambda!348698 () Int)

(assert (=> bs!1588725 (= lambda!348698 lambda!348688)))

(declare-fun b!6344648 () Bool)

(declare-fun e!3853542 () Bool)

(declare-fun lt!2363220 () Regex!16248)

(assert (=> b!6344648 (= e!3853542 (isEmptyExpr!1650 lt!2363220))))

(declare-fun b!6344649 () Bool)

(declare-fun e!3853541 () Bool)

(assert (=> b!6344649 (= e!3853541 (= lt!2363220 (head!12988 lt!2363094)))))

(declare-fun e!3853544 () Bool)

(assert (=> d!1991146 e!3853544))

(declare-fun res!2610834 () Bool)

(assert (=> d!1991146 (=> (not res!2610834) (not e!3853544))))

(assert (=> d!1991146 (= res!2610834 (validRegex!7984 lt!2363220))))

(declare-fun e!3853546 () Regex!16248)

(assert (=> d!1991146 (= lt!2363220 e!3853546)))

(declare-fun c!1153799 () Bool)

(declare-fun e!3853543 () Bool)

(assert (=> d!1991146 (= c!1153799 e!3853543)))

(declare-fun res!2610833 () Bool)

(assert (=> d!1991146 (=> (not res!2610833) (not e!3853543))))

(assert (=> d!1991146 (= res!2610833 (is-Cons!64919 lt!2363094))))

(assert (=> d!1991146 (forall!15409 lt!2363094 lambda!348698)))

(assert (=> d!1991146 (= (generalisedConcat!1845 lt!2363094) lt!2363220)))

(declare-fun b!6344650 () Bool)

(declare-fun e!3853545 () Regex!16248)

(assert (=> b!6344650 (= e!3853545 EmptyExpr!16248)))

(declare-fun b!6344651 () Bool)

(assert (=> b!6344651 (= e!3853542 e!3853541)))

(declare-fun c!1153802 () Bool)

(assert (=> b!6344651 (= c!1153802 (isEmpty!37003 (tail!12073 lt!2363094)))))

(declare-fun b!6344652 () Bool)

(assert (=> b!6344652 (= e!3853545 (Concat!25093 (h!71367 lt!2363094) (generalisedConcat!1845 (t!378631 lt!2363094))))))

(declare-fun b!6344653 () Bool)

(assert (=> b!6344653 (= e!3853546 (h!71367 lt!2363094))))

(declare-fun b!6344654 () Bool)

(assert (=> b!6344654 (= e!3853543 (isEmpty!37003 (t!378631 lt!2363094)))))

(declare-fun b!6344655 () Bool)

(assert (=> b!6344655 (= e!3853546 e!3853545)))

(declare-fun c!1153801 () Bool)

(assert (=> b!6344655 (= c!1153801 (is-Cons!64919 lt!2363094))))

(declare-fun b!6344656 () Bool)

(assert (=> b!6344656 (= e!3853541 (isConcat!1173 lt!2363220))))

(declare-fun b!6344657 () Bool)

(assert (=> b!6344657 (= e!3853544 e!3853542)))

(declare-fun c!1153800 () Bool)

(assert (=> b!6344657 (= c!1153800 (isEmpty!37003 lt!2363094))))

(assert (= (and d!1991146 res!2610833) b!6344654))

(assert (= (and d!1991146 c!1153799) b!6344653))

(assert (= (and d!1991146 (not c!1153799)) b!6344655))

(assert (= (and b!6344655 c!1153801) b!6344652))

(assert (= (and b!6344655 (not c!1153801)) b!6344650))

(assert (= (and d!1991146 res!2610834) b!6344657))

(assert (= (and b!6344657 c!1153800) b!6344648))

(assert (= (and b!6344657 (not c!1153800)) b!6344651))

(assert (= (and b!6344651 c!1153802) b!6344649))

(assert (= (and b!6344651 (not c!1153802)) b!6344656))

(declare-fun m!7152594 () Bool)

(assert (=> b!6344656 m!7152594))

(declare-fun m!7152596 () Bool)

(assert (=> b!6344649 m!7152596))

(declare-fun m!7152598 () Bool)

(assert (=> b!6344651 m!7152598))

(assert (=> b!6344651 m!7152598))

(declare-fun m!7152600 () Bool)

(assert (=> b!6344651 m!7152600))

(declare-fun m!7152602 () Bool)

(assert (=> b!6344657 m!7152602))

(declare-fun m!7152604 () Bool)

(assert (=> b!6344648 m!7152604))

(declare-fun m!7152606 () Bool)

(assert (=> d!1991146 m!7152606))

(declare-fun m!7152608 () Bool)

(assert (=> d!1991146 m!7152608))

(declare-fun m!7152610 () Bool)

(assert (=> b!6344654 m!7152610))

(declare-fun m!7152612 () Bool)

(assert (=> b!6344652 m!7152612))

(assert (=> b!6344314 d!1991146))

(declare-fun d!1991148 () Bool)

(declare-fun choose!47051 (Int) Bool)

(assert (=> d!1991148 (= (Exists!3318 lambda!348657) (choose!47051 lambda!348657))))

(declare-fun bs!1588726 () Bool)

(assert (= bs!1588726 d!1991148))

(declare-fun m!7152614 () Bool)

(assert (=> bs!1588726 m!7152614))

(assert (=> b!6344314 d!1991148))

(declare-fun d!1991150 () Bool)

(assert (=> d!1991150 (= (matchR!8431 lt!2363090 s!2326) (matchRSpec!3349 lt!2363090 s!2326))))

(declare-fun lt!2363223 () Unit!158323)

(declare-fun choose!47052 (Regex!16248 List!65045) Unit!158323)

(assert (=> d!1991150 (= lt!2363223 (choose!47052 lt!2363090 s!2326))))

(assert (=> d!1991150 (validRegex!7984 lt!2363090)))

(assert (=> d!1991150 (= (mainMatchTheorem!3349 lt!2363090 s!2326) lt!2363223)))

(declare-fun bs!1588727 () Bool)

(assert (= bs!1588727 d!1991150))

(assert (=> bs!1588727 m!7152290))

(assert (=> bs!1588727 m!7152298))

(declare-fun m!7152616 () Bool)

(assert (=> bs!1588727 m!7152616))

(assert (=> bs!1588727 m!7152588))

(assert (=> b!6344314 d!1991150))

(declare-fun b!6344676 () Bool)

(declare-fun e!3853558 () Bool)

(assert (=> b!6344676 (= e!3853558 (matchR!8431 lt!2363087 s!2326))))

(declare-fun d!1991152 () Bool)

(declare-fun e!3853557 () Bool)

(assert (=> d!1991152 e!3853557))

(declare-fun res!2610847 () Bool)

(assert (=> d!1991152 (=> res!2610847 e!3853557)))

(declare-fun e!3853561 () Bool)

(assert (=> d!1991152 (= res!2610847 e!3853561)))

(declare-fun res!2610849 () Bool)

(assert (=> d!1991152 (=> (not res!2610849) (not e!3853561))))

(declare-fun lt!2363230 () Option!16139)

(assert (=> d!1991152 (= res!2610849 (isDefined!12842 lt!2363230))))

(declare-fun e!3853559 () Option!16139)

(assert (=> d!1991152 (= lt!2363230 e!3853559)))

(declare-fun c!1153808 () Bool)

(assert (=> d!1991152 (= c!1153808 e!3853558)))

(declare-fun res!2610845 () Bool)

(assert (=> d!1991152 (=> (not res!2610845) (not e!3853558))))

(assert (=> d!1991152 (= res!2610845 (matchR!8431 (regOne!33008 (regOne!33008 r!7292)) Nil!64921))))

(assert (=> d!1991152 (validRegex!7984 (regOne!33008 (regOne!33008 r!7292)))))

(assert (=> d!1991152 (= (findConcatSeparation!2553 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 Nil!64921 s!2326 s!2326) lt!2363230)))

(declare-fun b!6344677 () Bool)

(declare-fun ++!14317 (List!65045 List!65045) List!65045)

(declare-fun get!22457 (Option!16139) tuple2!66454)

(assert (=> b!6344677 (= e!3853561 (= (++!14317 (_1!36530 (get!22457 lt!2363230)) (_2!36530 (get!22457 lt!2363230))) s!2326))))

(declare-fun b!6344678 () Bool)

(assert (=> b!6344678 (= e!3853559 (Some!16138 (tuple2!66455 Nil!64921 s!2326)))))

(declare-fun b!6344679 () Bool)

(assert (=> b!6344679 (= e!3853557 (not (isDefined!12842 lt!2363230)))))

(declare-fun b!6344680 () Bool)

(declare-fun e!3853560 () Option!16139)

(assert (=> b!6344680 (= e!3853560 None!16138)))

(declare-fun b!6344681 () Bool)

(assert (=> b!6344681 (= e!3853559 e!3853560)))

(declare-fun c!1153807 () Bool)

(assert (=> b!6344681 (= c!1153807 (is-Nil!64921 s!2326))))

(declare-fun b!6344682 () Bool)

(declare-fun lt!2363231 () Unit!158323)

(declare-fun lt!2363232 () Unit!158323)

(assert (=> b!6344682 (= lt!2363231 lt!2363232)))

(assert (=> b!6344682 (= (++!14317 (++!14317 Nil!64921 (Cons!64921 (h!71369 s!2326) Nil!64921)) (t!378633 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2412 (List!65045 C!32766 List!65045 List!65045) Unit!158323)

(assert (=> b!6344682 (= lt!2363232 (lemmaMoveElementToOtherListKeepsConcatEq!2412 Nil!64921 (h!71369 s!2326) (t!378633 s!2326) s!2326))))

(assert (=> b!6344682 (= e!3853560 (findConcatSeparation!2553 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 (++!14317 Nil!64921 (Cons!64921 (h!71369 s!2326) Nil!64921)) (t!378633 s!2326) s!2326))))

(declare-fun b!6344683 () Bool)

(declare-fun res!2610848 () Bool)

(assert (=> b!6344683 (=> (not res!2610848) (not e!3853561))))

(assert (=> b!6344683 (= res!2610848 (matchR!8431 (regOne!33008 (regOne!33008 r!7292)) (_1!36530 (get!22457 lt!2363230))))))

(declare-fun b!6344684 () Bool)

(declare-fun res!2610846 () Bool)

(assert (=> b!6344684 (=> (not res!2610846) (not e!3853561))))

(assert (=> b!6344684 (= res!2610846 (matchR!8431 lt!2363087 (_2!36530 (get!22457 lt!2363230))))))

(assert (= (and d!1991152 res!2610845) b!6344676))

(assert (= (and d!1991152 c!1153808) b!6344678))

(assert (= (and d!1991152 (not c!1153808)) b!6344681))

(assert (= (and b!6344681 c!1153807) b!6344680))

(assert (= (and b!6344681 (not c!1153807)) b!6344682))

(assert (= (and d!1991152 res!2610849) b!6344683))

(assert (= (and b!6344683 res!2610848) b!6344684))

(assert (= (and b!6344684 res!2610846) b!6344677))

(assert (= (and d!1991152 (not res!2610847)) b!6344679))

(declare-fun m!7152618 () Bool)

(assert (=> b!6344683 m!7152618))

(declare-fun m!7152620 () Bool)

(assert (=> b!6344683 m!7152620))

(declare-fun m!7152622 () Bool)

(assert (=> b!6344676 m!7152622))

(declare-fun m!7152624 () Bool)

(assert (=> b!6344679 m!7152624))

(assert (=> b!6344684 m!7152618))

(declare-fun m!7152626 () Bool)

(assert (=> b!6344684 m!7152626))

(assert (=> d!1991152 m!7152624))

(declare-fun m!7152628 () Bool)

(assert (=> d!1991152 m!7152628))

(assert (=> d!1991152 m!7152294))

(declare-fun m!7152630 () Bool)

(assert (=> b!6344682 m!7152630))

(assert (=> b!6344682 m!7152630))

(declare-fun m!7152632 () Bool)

(assert (=> b!6344682 m!7152632))

(declare-fun m!7152634 () Bool)

(assert (=> b!6344682 m!7152634))

(assert (=> b!6344682 m!7152630))

(declare-fun m!7152636 () Bool)

(assert (=> b!6344682 m!7152636))

(assert (=> b!6344677 m!7152618))

(declare-fun m!7152638 () Bool)

(assert (=> b!6344677 m!7152638))

(assert (=> b!6344314 d!1991152))

(declare-fun b!6344743 () Bool)

(declare-fun e!3853597 () Bool)

(assert (=> b!6344743 (= e!3853597 (= (head!12989 s!2326) (c!1153721 lt!2363090)))))

(declare-fun b!6344744 () Bool)

(declare-fun e!3853595 () Bool)

(assert (=> b!6344744 (= e!3853595 (nullable!6241 lt!2363090))))

(declare-fun b!6344745 () Bool)

(declare-fun res!2610874 () Bool)

(assert (=> b!6344745 (=> (not res!2610874) (not e!3853597))))

(assert (=> b!6344745 (= res!2610874 (isEmpty!37007 (tail!12074 s!2326)))))

(declare-fun b!6344746 () Bool)

(declare-fun e!3853600 () Bool)

(declare-fun e!3853598 () Bool)

(assert (=> b!6344746 (= e!3853600 e!3853598)))

(declare-fun res!2610878 () Bool)

(assert (=> b!6344746 (=> res!2610878 e!3853598)))

(declare-fun call!540847 () Bool)

(assert (=> b!6344746 (= res!2610878 call!540847)))

(declare-fun b!6344747 () Bool)

(declare-fun e!3853594 () Bool)

(declare-fun lt!2363238 () Bool)

(assert (=> b!6344747 (= e!3853594 (not lt!2363238))))

(declare-fun b!6344748 () Bool)

(declare-fun e!3853599 () Bool)

(assert (=> b!6344748 (= e!3853599 e!3853600)))

(declare-fun res!2610875 () Bool)

(assert (=> b!6344748 (=> (not res!2610875) (not e!3853600))))

(assert (=> b!6344748 (= res!2610875 (not lt!2363238))))

(declare-fun b!6344749 () Bool)

(assert (=> b!6344749 (= e!3853598 (not (= (head!12989 s!2326) (c!1153721 lt!2363090))))))

(declare-fun b!6344750 () Bool)

(declare-fun res!2610876 () Bool)

(assert (=> b!6344750 (=> (not res!2610876) (not e!3853597))))

(assert (=> b!6344750 (= res!2610876 (not call!540847))))

(declare-fun b!6344751 () Bool)

(declare-fun derivativeStep!4953 (Regex!16248 C!32766) Regex!16248)

(assert (=> b!6344751 (= e!3853595 (matchR!8431 (derivativeStep!4953 lt!2363090 (head!12989 s!2326)) (tail!12074 s!2326)))))

(declare-fun b!6344752 () Bool)

(declare-fun res!2610877 () Bool)

(assert (=> b!6344752 (=> res!2610877 e!3853599)))

(assert (=> b!6344752 (= res!2610877 (not (is-ElementMatch!16248 lt!2363090)))))

(assert (=> b!6344752 (= e!3853594 e!3853599)))

(declare-fun b!6344753 () Bool)

(declare-fun res!2610879 () Bool)

(assert (=> b!6344753 (=> res!2610879 e!3853598)))

(assert (=> b!6344753 (= res!2610879 (not (isEmpty!37007 (tail!12074 s!2326))))))

(declare-fun d!1991156 () Bool)

(declare-fun e!3853596 () Bool)

(assert (=> d!1991156 e!3853596))

(declare-fun c!1153829 () Bool)

(assert (=> d!1991156 (= c!1153829 (is-EmptyExpr!16248 lt!2363090))))

(assert (=> d!1991156 (= lt!2363238 e!3853595)))

(declare-fun c!1153828 () Bool)

(assert (=> d!1991156 (= c!1153828 (isEmpty!37007 s!2326))))

(assert (=> d!1991156 (validRegex!7984 lt!2363090)))

(assert (=> d!1991156 (= (matchR!8431 lt!2363090 s!2326) lt!2363238)))

(declare-fun bm!540842 () Bool)

(assert (=> bm!540842 (= call!540847 (isEmpty!37007 s!2326))))

(declare-fun b!6344754 () Bool)

(declare-fun res!2610872 () Bool)

(assert (=> b!6344754 (=> res!2610872 e!3853599)))

(assert (=> b!6344754 (= res!2610872 e!3853597)))

(declare-fun res!2610873 () Bool)

(assert (=> b!6344754 (=> (not res!2610873) (not e!3853597))))

(assert (=> b!6344754 (= res!2610873 lt!2363238)))

(declare-fun b!6344755 () Bool)

(assert (=> b!6344755 (= e!3853596 (= lt!2363238 call!540847))))

(declare-fun b!6344756 () Bool)

(assert (=> b!6344756 (= e!3853596 e!3853594)))

(declare-fun c!1153827 () Bool)

(assert (=> b!6344756 (= c!1153827 (is-EmptyLang!16248 lt!2363090))))

(assert (= (and d!1991156 c!1153828) b!6344744))

(assert (= (and d!1991156 (not c!1153828)) b!6344751))

(assert (= (and d!1991156 c!1153829) b!6344755))

(assert (= (and d!1991156 (not c!1153829)) b!6344756))

(assert (= (and b!6344756 c!1153827) b!6344747))

(assert (= (and b!6344756 (not c!1153827)) b!6344752))

(assert (= (and b!6344752 (not res!2610877)) b!6344754))

(assert (= (and b!6344754 res!2610873) b!6344750))

(assert (= (and b!6344750 res!2610876) b!6344745))

(assert (= (and b!6344745 res!2610874) b!6344743))

(assert (= (and b!6344754 (not res!2610872)) b!6344748))

(assert (= (and b!6344748 res!2610875) b!6344746))

(assert (= (and b!6344746 (not res!2610878)) b!6344753))

(assert (= (and b!6344753 (not res!2610879)) b!6344749))

(assert (= (or b!6344755 b!6344746 b!6344750) bm!540842))

(declare-fun m!7152640 () Bool)

(assert (=> b!6344744 m!7152640))

(assert (=> b!6344743 m!7152566))

(assert (=> b!6344745 m!7152570))

(assert (=> b!6344745 m!7152570))

(declare-fun m!7152642 () Bool)

(assert (=> b!6344745 m!7152642))

(assert (=> b!6344751 m!7152566))

(assert (=> b!6344751 m!7152566))

(declare-fun m!7152644 () Bool)

(assert (=> b!6344751 m!7152644))

(assert (=> b!6344751 m!7152570))

(assert (=> b!6344751 m!7152644))

(assert (=> b!6344751 m!7152570))

(declare-fun m!7152646 () Bool)

(assert (=> b!6344751 m!7152646))

(assert (=> b!6344749 m!7152566))

(assert (=> d!1991156 m!7152562))

(assert (=> d!1991156 m!7152588))

(assert (=> b!6344753 m!7152570))

(assert (=> b!6344753 m!7152570))

(assert (=> b!6344753 m!7152642))

(assert (=> bm!540842 m!7152562))

(assert (=> b!6344314 d!1991156))

(declare-fun d!1991158 () Bool)

(declare-fun isEmpty!37008 (Option!16139) Bool)

(assert (=> d!1991158 (= (isDefined!12842 (findConcatSeparation!2553 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 Nil!64921 s!2326 s!2326)) (not (isEmpty!37008 (findConcatSeparation!2553 (regOne!33008 (regOne!33008 r!7292)) lt!2363087 Nil!64921 s!2326 s!2326))))))

(declare-fun bs!1588728 () Bool)

(assert (= bs!1588728 d!1991158))

(assert (=> bs!1588728 m!7152286))

(declare-fun m!7152658 () Bool)

(assert (=> bs!1588728 m!7152658))

(assert (=> b!6344314 d!1991158))

(declare-fun bs!1588729 () Bool)

(declare-fun d!1991160 () Bool)

(assert (= bs!1588729 (and d!1991160 d!1991134)))

(declare-fun lambda!348706 () Int)

(assert (=> bs!1588729 (= lambda!348706 lambda!348688)))

(declare-fun bs!1588730 () Bool)

(assert (= bs!1588730 (and d!1991160 d!1991146)))

(assert (=> bs!1588730 (= lambda!348706 lambda!348698)))

(declare-fun b!6344782 () Bool)

(declare-fun e!3853617 () Bool)

(declare-fun lt!2363243 () Regex!16248)

(declare-fun isUnion!1087 (Regex!16248) Bool)

(assert (=> b!6344782 (= e!3853617 (isUnion!1087 lt!2363243))))

(declare-fun b!6344783 () Bool)

(declare-fun e!3853618 () Bool)

(declare-fun e!3853616 () Bool)

(assert (=> b!6344783 (= e!3853618 e!3853616)))

(declare-fun c!1153842 () Bool)

(assert (=> b!6344783 (= c!1153842 (isEmpty!37003 (unfocusZipperList!1669 zl!343)))))

(declare-fun b!6344784 () Bool)

(declare-fun isEmptyLang!1657 (Regex!16248) Bool)

(assert (=> b!6344784 (= e!3853616 (isEmptyLang!1657 lt!2363243))))

(declare-fun b!6344785 () Bool)

(declare-fun e!3853620 () Regex!16248)

(assert (=> b!6344785 (= e!3853620 EmptyLang!16248)))

(declare-fun b!6344786 () Bool)

(declare-fun e!3853619 () Regex!16248)

(assert (=> b!6344786 (= e!3853619 e!3853620)))

(declare-fun c!1153843 () Bool)

(assert (=> b!6344786 (= c!1153843 (is-Cons!64919 (unfocusZipperList!1669 zl!343)))))

(declare-fun b!6344787 () Bool)

(assert (=> b!6344787 (= e!3853616 e!3853617)))

(declare-fun c!1153841 () Bool)

(assert (=> b!6344787 (= c!1153841 (isEmpty!37003 (tail!12073 (unfocusZipperList!1669 zl!343))))))

(declare-fun b!6344788 () Bool)

(assert (=> b!6344788 (= e!3853620 (Union!16248 (h!71367 (unfocusZipperList!1669 zl!343)) (generalisedUnion!2092 (t!378631 (unfocusZipperList!1669 zl!343)))))))

(declare-fun b!6344781 () Bool)

(assert (=> b!6344781 (= e!3853619 (h!71367 (unfocusZipperList!1669 zl!343)))))

(assert (=> d!1991160 e!3853618))

(declare-fun res!2610884 () Bool)

(assert (=> d!1991160 (=> (not res!2610884) (not e!3853618))))

(assert (=> d!1991160 (= res!2610884 (validRegex!7984 lt!2363243))))

(assert (=> d!1991160 (= lt!2363243 e!3853619)))

(declare-fun c!1153840 () Bool)

(declare-fun e!3853615 () Bool)

(assert (=> d!1991160 (= c!1153840 e!3853615)))

(declare-fun res!2610885 () Bool)

(assert (=> d!1991160 (=> (not res!2610885) (not e!3853615))))

(assert (=> d!1991160 (= res!2610885 (is-Cons!64919 (unfocusZipperList!1669 zl!343)))))

(assert (=> d!1991160 (forall!15409 (unfocusZipperList!1669 zl!343) lambda!348706)))

(assert (=> d!1991160 (= (generalisedUnion!2092 (unfocusZipperList!1669 zl!343)) lt!2363243)))

(declare-fun b!6344789 () Bool)

(assert (=> b!6344789 (= e!3853617 (= lt!2363243 (head!12988 (unfocusZipperList!1669 zl!343))))))

(declare-fun b!6344790 () Bool)

(assert (=> b!6344790 (= e!3853615 (isEmpty!37003 (t!378631 (unfocusZipperList!1669 zl!343))))))

(assert (= (and d!1991160 res!2610885) b!6344790))

(assert (= (and d!1991160 c!1153840) b!6344781))

(assert (= (and d!1991160 (not c!1153840)) b!6344786))

(assert (= (and b!6344786 c!1153843) b!6344788))

(assert (= (and b!6344786 (not c!1153843)) b!6344785))

(assert (= (and d!1991160 res!2610884) b!6344783))

(assert (= (and b!6344783 c!1153842) b!6344784))

(assert (= (and b!6344783 (not c!1153842)) b!6344787))

(assert (= (and b!6344787 c!1153841) b!6344789))

(assert (= (and b!6344787 (not c!1153841)) b!6344782))

(assert (=> b!6344787 m!7152328))

(declare-fun m!7152670 () Bool)

(assert (=> b!6344787 m!7152670))

(assert (=> b!6344787 m!7152670))

(declare-fun m!7152672 () Bool)

(assert (=> b!6344787 m!7152672))

(declare-fun m!7152674 () Bool)

(assert (=> b!6344784 m!7152674))

(declare-fun m!7152676 () Bool)

(assert (=> d!1991160 m!7152676))

(assert (=> d!1991160 m!7152328))

(declare-fun m!7152678 () Bool)

(assert (=> d!1991160 m!7152678))

(assert (=> b!6344783 m!7152328))

(declare-fun m!7152680 () Bool)

(assert (=> b!6344783 m!7152680))

(assert (=> b!6344789 m!7152328))

(declare-fun m!7152682 () Bool)

(assert (=> b!6344789 m!7152682))

(declare-fun m!7152684 () Bool)

(assert (=> b!6344782 m!7152684))

(declare-fun m!7152686 () Bool)

(assert (=> b!6344788 m!7152686))

(declare-fun m!7152688 () Bool)

(assert (=> b!6344790 m!7152688))

(assert (=> b!6344335 d!1991160))

(declare-fun bs!1588733 () Bool)

(declare-fun d!1991164 () Bool)

(assert (= bs!1588733 (and d!1991164 d!1991134)))

(declare-fun lambda!348710 () Int)

(assert (=> bs!1588733 (= lambda!348710 lambda!348688)))

(declare-fun bs!1588734 () Bool)

(assert (= bs!1588734 (and d!1991164 d!1991146)))

(assert (=> bs!1588734 (= lambda!348710 lambda!348698)))

(declare-fun bs!1588735 () Bool)

(assert (= bs!1588735 (and d!1991164 d!1991160)))

(assert (=> bs!1588735 (= lambda!348710 lambda!348706)))

(declare-fun lt!2363247 () List!65043)

(assert (=> d!1991164 (forall!15409 lt!2363247 lambda!348710)))

(declare-fun e!3853624 () List!65043)

(assert (=> d!1991164 (= lt!2363247 e!3853624)))

(declare-fun c!1153847 () Bool)

(assert (=> d!1991164 (= c!1153847 (is-Cons!64920 zl!343))))

(assert (=> d!1991164 (= (unfocusZipperList!1669 zl!343) lt!2363247)))

(declare-fun b!6344797 () Bool)

(assert (=> b!6344797 (= e!3853624 (Cons!64919 (generalisedConcat!1845 (exprs!6132 (h!71368 zl!343))) (unfocusZipperList!1669 (t!378632 zl!343))))))

(declare-fun b!6344798 () Bool)

(assert (=> b!6344798 (= e!3853624 Nil!64919)))

(assert (= (and d!1991164 c!1153847) b!6344797))

(assert (= (and d!1991164 (not c!1153847)) b!6344798))

(declare-fun m!7152696 () Bool)

(assert (=> d!1991164 m!7152696))

(assert (=> b!6344797 m!7152318))

(declare-fun m!7152698 () Bool)

(assert (=> b!6344797 m!7152698))

(assert (=> b!6344335 d!1991164))

(declare-fun bs!1588736 () Bool)

(declare-fun d!1991170 () Bool)

(assert (= bs!1588736 (and d!1991170 d!1991134)))

(declare-fun lambda!348711 () Int)

(assert (=> bs!1588736 (= lambda!348711 lambda!348688)))

(declare-fun bs!1588737 () Bool)

(assert (= bs!1588737 (and d!1991170 d!1991146)))

(assert (=> bs!1588737 (= lambda!348711 lambda!348698)))

(declare-fun bs!1588738 () Bool)

(assert (= bs!1588738 (and d!1991170 d!1991160)))

(assert (=> bs!1588738 (= lambda!348711 lambda!348706)))

(declare-fun bs!1588739 () Bool)

(assert (= bs!1588739 (and d!1991170 d!1991164)))

(assert (=> bs!1588739 (= lambda!348711 lambda!348710)))

(declare-fun b!6344799 () Bool)

(declare-fun e!3853626 () Bool)

(declare-fun lt!2363248 () Regex!16248)

(assert (=> b!6344799 (= e!3853626 (isEmptyExpr!1650 lt!2363248))))

(declare-fun b!6344800 () Bool)

(declare-fun e!3853625 () Bool)

(assert (=> b!6344800 (= e!3853625 (= lt!2363248 (head!12988 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun e!3853628 () Bool)

(assert (=> d!1991170 e!3853628))

(declare-fun res!2610887 () Bool)

(assert (=> d!1991170 (=> (not res!2610887) (not e!3853628))))

(assert (=> d!1991170 (= res!2610887 (validRegex!7984 lt!2363248))))

(declare-fun e!3853630 () Regex!16248)

(assert (=> d!1991170 (= lt!2363248 e!3853630)))

(declare-fun c!1153848 () Bool)

(declare-fun e!3853627 () Bool)

(assert (=> d!1991170 (= c!1153848 e!3853627)))

(declare-fun res!2610886 () Bool)

(assert (=> d!1991170 (=> (not res!2610886) (not e!3853627))))

(assert (=> d!1991170 (= res!2610886 (is-Cons!64919 (exprs!6132 (h!71368 zl!343))))))

(assert (=> d!1991170 (forall!15409 (exprs!6132 (h!71368 zl!343)) lambda!348711)))

(assert (=> d!1991170 (= (generalisedConcat!1845 (exprs!6132 (h!71368 zl!343))) lt!2363248)))

(declare-fun b!6344801 () Bool)

(declare-fun e!3853629 () Regex!16248)

(assert (=> b!6344801 (= e!3853629 EmptyExpr!16248)))

(declare-fun b!6344802 () Bool)

(assert (=> b!6344802 (= e!3853626 e!3853625)))

(declare-fun c!1153851 () Bool)

(assert (=> b!6344802 (= c!1153851 (isEmpty!37003 (tail!12073 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344803 () Bool)

(assert (=> b!6344803 (= e!3853629 (Concat!25093 (h!71367 (exprs!6132 (h!71368 zl!343))) (generalisedConcat!1845 (t!378631 (exprs!6132 (h!71368 zl!343))))))))

(declare-fun b!6344804 () Bool)

(assert (=> b!6344804 (= e!3853630 (h!71367 (exprs!6132 (h!71368 zl!343))))))

(declare-fun b!6344805 () Bool)

(assert (=> b!6344805 (= e!3853627 (isEmpty!37003 (t!378631 (exprs!6132 (h!71368 zl!343)))))))

(declare-fun b!6344806 () Bool)

(assert (=> b!6344806 (= e!3853630 e!3853629)))

(declare-fun c!1153850 () Bool)

(assert (=> b!6344806 (= c!1153850 (is-Cons!64919 (exprs!6132 (h!71368 zl!343))))))

(declare-fun b!6344807 () Bool)

(assert (=> b!6344807 (= e!3853625 (isConcat!1173 lt!2363248))))

(declare-fun b!6344808 () Bool)

(assert (=> b!6344808 (= e!3853628 e!3853626)))

(declare-fun c!1153849 () Bool)

(assert (=> b!6344808 (= c!1153849 (isEmpty!37003 (exprs!6132 (h!71368 zl!343))))))

(assert (= (and d!1991170 res!2610886) b!6344805))

(assert (= (and d!1991170 c!1153848) b!6344804))

(assert (= (and d!1991170 (not c!1153848)) b!6344806))

(assert (= (and b!6344806 c!1153850) b!6344803))

(assert (= (and b!6344806 (not c!1153850)) b!6344801))

(assert (= (and d!1991170 res!2610887) b!6344808))

(assert (= (and b!6344808 c!1153849) b!6344799))

(assert (= (and b!6344808 (not c!1153849)) b!6344802))

(assert (= (and b!6344802 c!1153851) b!6344800))

(assert (= (and b!6344802 (not c!1153851)) b!6344807))

(declare-fun m!7152700 () Bool)

(assert (=> b!6344807 m!7152700))

(declare-fun m!7152702 () Bool)

(assert (=> b!6344800 m!7152702))

(declare-fun m!7152704 () Bool)

(assert (=> b!6344802 m!7152704))

(assert (=> b!6344802 m!7152704))

(declare-fun m!7152706 () Bool)

(assert (=> b!6344802 m!7152706))

(declare-fun m!7152708 () Bool)

(assert (=> b!6344808 m!7152708))

(declare-fun m!7152710 () Bool)

(assert (=> b!6344799 m!7152710))

(declare-fun m!7152712 () Bool)

(assert (=> d!1991170 m!7152712))

(declare-fun m!7152714 () Bool)

(assert (=> d!1991170 m!7152714))

(assert (=> b!6344805 m!7152310))

(declare-fun m!7152716 () Bool)

(assert (=> b!6344803 m!7152716))

(assert (=> b!6344305 d!1991170))

(declare-fun d!1991172 () Bool)

(declare-fun c!1153852 () Bool)

(assert (=> d!1991172 (= c!1153852 (isEmpty!37007 (t!378633 s!2326)))))

(declare-fun e!3853631 () Bool)

(assert (=> d!1991172 (= (matchZipper!2260 lt!2363080 (t!378633 s!2326)) e!3853631)))

(declare-fun b!6344809 () Bool)

(assert (=> b!6344809 (= e!3853631 (nullableZipper!2014 lt!2363080))))

(declare-fun b!6344810 () Bool)

(assert (=> b!6344810 (= e!3853631 (matchZipper!2260 (derivationStepZipper!2214 lt!2363080 (head!12989 (t!378633 s!2326))) (tail!12074 (t!378633 s!2326))))))

(assert (= (and d!1991172 c!1153852) b!6344809))

(assert (= (and d!1991172 (not c!1153852)) b!6344810))

(declare-fun m!7152718 () Bool)

(assert (=> d!1991172 m!7152718))

(declare-fun m!7152720 () Bool)

(assert (=> b!6344809 m!7152720))

(declare-fun m!7152722 () Bool)

(assert (=> b!6344810 m!7152722))

(assert (=> b!6344810 m!7152722))

(declare-fun m!7152724 () Bool)

(assert (=> b!6344810 m!7152724))

(declare-fun m!7152726 () Bool)

(assert (=> b!6344810 m!7152726))

(assert (=> b!6344810 m!7152724))

(assert (=> b!6344810 m!7152726))

(declare-fun m!7152728 () Bool)

(assert (=> b!6344810 m!7152728))

(assert (=> b!6344315 d!1991172))

(declare-fun bs!1588740 () Bool)

(declare-fun d!1991174 () Bool)

(assert (= bs!1588740 (and d!1991174 d!1991146)))

(declare-fun lambda!348714 () Int)

(assert (=> bs!1588740 (= lambda!348714 lambda!348698)))

(declare-fun bs!1588741 () Bool)

(assert (= bs!1588741 (and d!1991174 d!1991160)))

(assert (=> bs!1588741 (= lambda!348714 lambda!348706)))

(declare-fun bs!1588742 () Bool)

(assert (= bs!1588742 (and d!1991174 d!1991134)))

(assert (=> bs!1588742 (= lambda!348714 lambda!348688)))

(declare-fun bs!1588743 () Bool)

(assert (= bs!1588743 (and d!1991174 d!1991170)))

(assert (=> bs!1588743 (= lambda!348714 lambda!348711)))

(declare-fun bs!1588744 () Bool)

(assert (= bs!1588744 (and d!1991174 d!1991164)))

(assert (=> bs!1588744 (= lambda!348714 lambda!348710)))

(assert (=> d!1991174 (= (inv!83868 (h!71368 zl!343)) (forall!15409 (exprs!6132 (h!71368 zl!343)) lambda!348714))))

(declare-fun bs!1588745 () Bool)

(assert (= bs!1588745 d!1991174))

(declare-fun m!7152730 () Bool)

(assert (=> bs!1588745 m!7152730))

(assert (=> b!6344326 d!1991174))

(declare-fun d!1991176 () Bool)

(assert (=> d!1991176 (= (isEmpty!37003 (t!378631 (exprs!6132 (h!71368 zl!343)))) (is-Nil!64919 (t!378631 (exprs!6132 (h!71368 zl!343)))))))

(assert (=> b!6344306 d!1991176))

(declare-fun d!1991178 () Bool)

(declare-fun lt!2363255 () Int)

(assert (=> d!1991178 (>= lt!2363255 0)))

(declare-fun e!3853638 () Int)

(assert (=> d!1991178 (= lt!2363255 e!3853638)))

(declare-fun c!1153861 () Bool)

(assert (=> d!1991178 (= c!1153861 (is-Cons!64919 (exprs!6132 lt!2363077)))))

(assert (=> d!1991178 (= (contextDepthTotal!357 lt!2363077) lt!2363255)))

(declare-fun b!6344823 () Bool)

(declare-fun regexDepthTotal!206 (Regex!16248) Int)

(assert (=> b!6344823 (= e!3853638 (+ (regexDepthTotal!206 (h!71367 (exprs!6132 lt!2363077))) (contextDepthTotal!357 (Context!11265 (t!378631 (exprs!6132 lt!2363077))))))))

(declare-fun b!6344824 () Bool)

(assert (=> b!6344824 (= e!3853638 1)))

(assert (= (and d!1991178 c!1153861) b!6344823))

(assert (= (and d!1991178 (not c!1153861)) b!6344824))

(declare-fun m!7152740 () Bool)

(assert (=> b!6344823 m!7152740))

(declare-fun m!7152742 () Bool)

(assert (=> b!6344823 m!7152742))

(assert (=> b!6344316 d!1991178))

(declare-fun d!1991184 () Bool)

(declare-fun lt!2363256 () Int)

(assert (=> d!1991184 (>= lt!2363256 0)))

(declare-fun e!3853639 () Int)

(assert (=> d!1991184 (= lt!2363256 e!3853639)))

(declare-fun c!1153862 () Bool)

(assert (=> d!1991184 (= c!1153862 (is-Cons!64919 (exprs!6132 (h!71368 zl!343))))))

(assert (=> d!1991184 (= (contextDepthTotal!357 (h!71368 zl!343)) lt!2363256)))

(declare-fun b!6344825 () Bool)

(assert (=> b!6344825 (= e!3853639 (+ (regexDepthTotal!206 (h!71367 (exprs!6132 (h!71368 zl!343)))) (contextDepthTotal!357 (Context!11265 (t!378631 (exprs!6132 (h!71368 zl!343)))))))))

(declare-fun b!6344826 () Bool)

(assert (=> b!6344826 (= e!3853639 1)))

(assert (= (and d!1991184 c!1153862) b!6344825))

(assert (= (and d!1991184 (not c!1153862)) b!6344826))

(declare-fun m!7152744 () Bool)

(assert (=> b!6344825 m!7152744))

(declare-fun m!7152746 () Bool)

(assert (=> b!6344825 m!7152746))

(assert (=> b!6344316 d!1991184))

(declare-fun d!1991186 () Bool)

(declare-fun c!1153863 () Bool)

(assert (=> d!1991186 (= c!1153863 (isEmpty!37007 (t!378633 s!2326)))))

(declare-fun e!3853640 () Bool)

(assert (=> d!1991186 (= (matchZipper!2260 lt!2363082 (t!378633 s!2326)) e!3853640)))

(declare-fun b!6344827 () Bool)

(assert (=> b!6344827 (= e!3853640 (nullableZipper!2014 lt!2363082))))

(declare-fun b!6344828 () Bool)

(assert (=> b!6344828 (= e!3853640 (matchZipper!2260 (derivationStepZipper!2214 lt!2363082 (head!12989 (t!378633 s!2326))) (tail!12074 (t!378633 s!2326))))))

(assert (= (and d!1991186 c!1153863) b!6344827))

(assert (= (and d!1991186 (not c!1153863)) b!6344828))

(assert (=> d!1991186 m!7152718))

(declare-fun m!7152748 () Bool)

(assert (=> b!6344827 m!7152748))

(assert (=> b!6344828 m!7152722))

(assert (=> b!6344828 m!7152722))

(declare-fun m!7152750 () Bool)

(assert (=> b!6344828 m!7152750))

(assert (=> b!6344828 m!7152726))

(assert (=> b!6344828 m!7152750))

(assert (=> b!6344828 m!7152726))

(declare-fun m!7152752 () Bool)

(assert (=> b!6344828 m!7152752))

(assert (=> b!6344327 d!1991186))

(declare-fun b!6344829 () Bool)

(declare-fun e!3853646 () Bool)

(declare-fun call!540848 () Bool)

(assert (=> b!6344829 (= e!3853646 call!540848)))

(declare-fun bm!540843 () Bool)

(declare-fun call!540850 () Bool)

(declare-fun call!540849 () Bool)

(assert (=> bm!540843 (= call!540850 call!540849)))

(declare-fun b!6344830 () Bool)

(declare-fun e!3853641 () Bool)

(declare-fun e!3853642 () Bool)

(assert (=> b!6344830 (= e!3853641 e!3853642)))

(declare-fun c!1153864 () Bool)

(assert (=> b!6344830 (= c!1153864 (is-Union!16248 r!7292))))

(declare-fun b!6344831 () Bool)

(declare-fun e!3853644 () Bool)

(declare-fun e!3853643 () Bool)

(assert (=> b!6344831 (= e!3853644 e!3853643)))

(declare-fun res!2610888 () Bool)

(assert (=> b!6344831 (=> (not res!2610888) (not e!3853643))))

(assert (=> b!6344831 (= res!2610888 call!540850)))

(declare-fun b!6344832 () Bool)

(declare-fun res!2610891 () Bool)

(assert (=> b!6344832 (=> res!2610891 e!3853644)))

(assert (=> b!6344832 (= res!2610891 (not (is-Concat!25093 r!7292)))))

(assert (=> b!6344832 (= e!3853642 e!3853644)))

(declare-fun b!6344833 () Bool)

(assert (=> b!6344833 (= e!3853643 call!540848)))

(declare-fun b!6344834 () Bool)

(declare-fun res!2610889 () Bool)

(assert (=> b!6344834 (=> (not res!2610889) (not e!3853646))))

(assert (=> b!6344834 (= res!2610889 call!540850)))

(assert (=> b!6344834 (= e!3853642 e!3853646)))

(declare-fun b!6344835 () Bool)

(declare-fun e!3853645 () Bool)

(assert (=> b!6344835 (= e!3853645 call!540849)))

(declare-fun d!1991188 () Bool)

(declare-fun res!2610892 () Bool)

(declare-fun e!3853647 () Bool)

(assert (=> d!1991188 (=> res!2610892 e!3853647)))

(assert (=> d!1991188 (= res!2610892 (is-ElementMatch!16248 r!7292))))

(assert (=> d!1991188 (= (validRegex!7984 r!7292) e!3853647)))

(declare-fun b!6344836 () Bool)

(assert (=> b!6344836 (= e!3853641 e!3853645)))

(declare-fun res!2610890 () Bool)

(assert (=> b!6344836 (= res!2610890 (not (nullable!6241 (reg!16577 r!7292))))))

(assert (=> b!6344836 (=> (not res!2610890) (not e!3853645))))

(declare-fun bm!540844 () Bool)

(declare-fun c!1153865 () Bool)

(assert (=> bm!540844 (= call!540849 (validRegex!7984 (ite c!1153865 (reg!16577 r!7292) (ite c!1153864 (regOne!33009 r!7292) (regOne!33008 r!7292)))))))

(declare-fun bm!540845 () Bool)

(assert (=> bm!540845 (= call!540848 (validRegex!7984 (ite c!1153864 (regTwo!33009 r!7292) (regTwo!33008 r!7292))))))

(declare-fun b!6344837 () Bool)

(assert (=> b!6344837 (= e!3853647 e!3853641)))

(assert (=> b!6344837 (= c!1153865 (is-Star!16248 r!7292))))

(assert (= (and d!1991188 (not res!2610892)) b!6344837))

(assert (= (and b!6344837 c!1153865) b!6344836))

(assert (= (and b!6344837 (not c!1153865)) b!6344830))

(assert (= (and b!6344836 res!2610890) b!6344835))

(assert (= (and b!6344830 c!1153864) b!6344834))

(assert (= (and b!6344830 (not c!1153864)) b!6344832))

(assert (= (and b!6344834 res!2610889) b!6344829))

(assert (= (and b!6344832 (not res!2610891)) b!6344831))

(assert (= (and b!6344831 res!2610888) b!6344833))

(assert (= (or b!6344829 b!6344833) bm!540845))

(assert (= (or b!6344834 b!6344831) bm!540843))

(assert (= (or b!6344835 bm!540843) bm!540844))

(declare-fun m!7152754 () Bool)

(assert (=> b!6344836 m!7152754))

(declare-fun m!7152756 () Bool)

(assert (=> bm!540844 m!7152756))

(declare-fun m!7152758 () Bool)

(assert (=> bm!540845 m!7152758))

(assert (=> start!628608 d!1991188))

(declare-fun b!6344838 () Bool)

(declare-fun e!3853650 () (Set Context!11264))

(declare-fun e!3853651 () (Set Context!11264))

(assert (=> b!6344838 (= e!3853650 e!3853651)))

(declare-fun c!1153869 () Bool)

(assert (=> b!6344838 (= c!1153869 (is-Union!16248 (regOne!33008 (regOne!33008 r!7292))))))

(declare-fun b!6344839 () Bool)

(declare-fun e!3853648 () (Set Context!11264))

(declare-fun e!3853649 () (Set Context!11264))

(assert (=> b!6344839 (= e!3853648 e!3853649)))

(declare-fun c!1153870 () Bool)

(assert (=> b!6344839 (= c!1153870 (is-Concat!25093 (regOne!33008 (regOne!33008 r!7292))))))

(declare-fun b!6344840 () Bool)

(declare-fun call!540855 () (Set Context!11264))

(declare-fun call!540853 () (Set Context!11264))

(assert (=> b!6344840 (= e!3853651 (set.union call!540855 call!540853))))

(declare-fun b!6344841 () Bool)

(declare-fun e!3853653 () Bool)

(assert (=> b!6344841 (= e!3853653 (nullable!6241 (regOne!33008 (regOne!33008 (regOne!33008 r!7292)))))))

(declare-fun b!6344842 () Bool)

(declare-fun call!540854 () (Set Context!11264))

(assert (=> b!6344842 (= e!3853649 call!540854)))

(declare-fun b!6344843 () Bool)

(declare-fun c!1153868 () Bool)

(assert (=> b!6344843 (= c!1153868 (is-Star!16248 (regOne!33008 (regOne!33008 r!7292))))))

(declare-fun e!3853652 () (Set Context!11264))

(assert (=> b!6344843 (= e!3853649 e!3853652)))

(declare-fun b!6344844 () Bool)

(declare-fun c!1153867 () Bool)

(assert (=> b!6344844 (= c!1153867 e!3853653)))

(declare-fun res!2610893 () Bool)

(assert (=> b!6344844 (=> (not res!2610893) (not e!3853653))))

(assert (=> b!6344844 (= res!2610893 (is-Concat!25093 (regOne!33008 (regOne!33008 r!7292))))))

(assert (=> b!6344844 (= e!3853651 e!3853648)))

(declare-fun b!6344845 () Bool)

(assert (=> b!6344845 (= e!3853652 call!540854)))

(declare-fun b!6344846 () Bool)

(assert (=> b!6344846 (= e!3853652 (as set.empty (Set Context!11264)))))

(declare-fun bm!540847 () Bool)

(declare-fun call!540851 () List!65043)

(declare-fun call!540856 () List!65043)

(assert (=> bm!540847 (= call!540851 call!540856)))

(declare-fun bm!540848 () Bool)

(assert (=> bm!540848 (= call!540853 (derivationStepZipperDown!1496 (ite c!1153869 (regTwo!33009 (regOne!33008 (regOne!33008 r!7292))) (ite c!1153867 (regTwo!33008 (regOne!33008 (regOne!33008 r!7292))) (ite c!1153870 (regOne!33008 (regOne!33008 (regOne!33008 r!7292))) (reg!16577 (regOne!33008 (regOne!33008 r!7292)))))) (ite (or c!1153869 c!1153867) (Context!11265 lt!2363094) (Context!11265 call!540851)) (h!71369 s!2326)))))

(declare-fun bm!540849 () Bool)

(assert (=> bm!540849 (= call!540855 (derivationStepZipperDown!1496 (ite c!1153869 (regOne!33009 (regOne!33008 (regOne!33008 r!7292))) (regOne!33008 (regOne!33008 (regOne!33008 r!7292)))) (ite c!1153869 (Context!11265 lt!2363094) (Context!11265 call!540856)) (h!71369 s!2326)))))

(declare-fun bm!540846 () Bool)

(declare-fun call!540852 () (Set Context!11264))

(assert (=> bm!540846 (= call!540854 call!540852)))

(declare-fun d!1991190 () Bool)

(declare-fun c!1153866 () Bool)

(assert (=> d!1991190 (= c!1153866 (and (is-ElementMatch!16248 (regOne!33008 (regOne!33008 r!7292))) (= (c!1153721 (regOne!33008 (regOne!33008 r!7292))) (h!71369 s!2326))))))

(assert (=> d!1991190 (= (derivationStepZipperDown!1496 (regOne!33008 (regOne!33008 r!7292)) (Context!11265 lt!2363094) (h!71369 s!2326)) e!3853650)))

(declare-fun bm!540850 () Bool)

(assert (=> bm!540850 (= call!540856 ($colon$colon!2109 (exprs!6132 (Context!11265 lt!2363094)) (ite (or c!1153867 c!1153870) (regTwo!33008 (regOne!33008 (regOne!33008 r!7292))) (regOne!33008 (regOne!33008 r!7292)))))))

(declare-fun b!6344847 () Bool)

(assert (=> b!6344847 (= e!3853650 (set.insert (Context!11265 lt!2363094) (as set.empty (Set Context!11264))))))

(declare-fun bm!540851 () Bool)

(assert (=> bm!540851 (= call!540852 call!540853)))

(declare-fun b!6344848 () Bool)

(assert (=> b!6344848 (= e!3853648 (set.union call!540855 call!540852))))

(assert (= (and d!1991190 c!1153866) b!6344847))

(assert (= (and d!1991190 (not c!1153866)) b!6344838))

(assert (= (and b!6344838 c!1153869) b!6344840))

(assert (= (and b!6344838 (not c!1153869)) b!6344844))

(assert (= (and b!6344844 res!2610893) b!6344841))

(assert (= (and b!6344844 c!1153867) b!6344848))

(assert (= (and b!6344844 (not c!1153867)) b!6344839))

(assert (= (and b!6344839 c!1153870) b!6344842))

(assert (= (and b!6344839 (not c!1153870)) b!6344843))

(assert (= (and b!6344843 c!1153868) b!6344845))

(assert (= (and b!6344843 (not c!1153868)) b!6344846))

(assert (= (or b!6344842 b!6344845) bm!540847))

(assert (= (or b!6344842 b!6344845) bm!540846))

(assert (= (or b!6344848 bm!540847) bm!540850))

(assert (= (or b!6344848 bm!540846) bm!540851))

(assert (= (or b!6344840 bm!540851) bm!540848))

(assert (= (or b!6344840 b!6344848) bm!540849))

(declare-fun m!7152762 () Bool)

(assert (=> b!6344847 m!7152762))

(declare-fun m!7152764 () Bool)

(assert (=> bm!540848 m!7152764))

(declare-fun m!7152766 () Bool)

(assert (=> bm!540849 m!7152766))

(declare-fun m!7152770 () Bool)

(assert (=> b!6344841 m!7152770))

(declare-fun m!7152772 () Bool)

(assert (=> bm!540850 m!7152772))

(assert (=> b!6344328 d!1991190))

(declare-fun d!1991196 () Bool)

(assert (=> d!1991196 (= (flatMap!1753 lt!2363093 lambda!348656) (choose!47048 lt!2363093 lambda!348656))))

(declare-fun bs!1588748 () Bool)

(assert (= bs!1588748 d!1991196))

(declare-fun m!7152774 () Bool)

(assert (=> bs!1588748 m!7152774))

(assert (=> b!6344318 d!1991196))

(declare-fun b!6344849 () Bool)

(declare-fun e!3853655 () Bool)

(assert (=> b!6344849 (= e!3853655 (nullable!6241 (h!71367 (exprs!6132 lt!2363077))))))

(declare-fun b!6344850 () Bool)

(declare-fun e!3853656 () (Set Context!11264))

(declare-fun call!540857 () (Set Context!11264))

(assert (=> b!6344850 (= e!3853656 call!540857)))

(declare-fun bm!540852 () Bool)

(assert (=> bm!540852 (= call!540857 (derivationStepZipperDown!1496 (h!71367 (exprs!6132 lt!2363077)) (Context!11265 (t!378631 (exprs!6132 lt!2363077))) (h!71369 s!2326)))))

(declare-fun b!6344851 () Bool)

(declare-fun e!3853654 () (Set Context!11264))

(assert (=> b!6344851 (= e!3853654 e!3853656)))

(declare-fun c!1153872 () Bool)

(assert (=> b!6344851 (= c!1153872 (is-Cons!64919 (exprs!6132 lt!2363077)))))

(declare-fun b!6344852 () Bool)

(assert (=> b!6344852 (= e!3853654 (set.union call!540857 (derivationStepZipperUp!1422 (Context!11265 (t!378631 (exprs!6132 lt!2363077))) (h!71369 s!2326))))))

(declare-fun d!1991198 () Bool)

(declare-fun c!1153871 () Bool)

(assert (=> d!1991198 (= c!1153871 e!3853655)))

(declare-fun res!2610894 () Bool)

(assert (=> d!1991198 (=> (not res!2610894) (not e!3853655))))

(assert (=> d!1991198 (= res!2610894 (is-Cons!64919 (exprs!6132 lt!2363077)))))

(assert (=> d!1991198 (= (derivationStepZipperUp!1422 lt!2363077 (h!71369 s!2326)) e!3853654)))

(declare-fun b!6344853 () Bool)

(assert (=> b!6344853 (= e!3853656 (as set.empty (Set Context!11264)))))

(assert (= (and d!1991198 res!2610894) b!6344849))

(assert (= (and d!1991198 c!1153871) b!6344852))

(assert (= (and d!1991198 (not c!1153871)) b!6344851))

(assert (= (and b!6344851 c!1153872) b!6344850))

(assert (= (and b!6344851 (not c!1153872)) b!6344853))

(assert (= (or b!6344852 b!6344850) bm!540852))

(declare-fun m!7152776 () Bool)

(assert (=> b!6344849 m!7152776))

(declare-fun m!7152778 () Bool)

(assert (=> bm!540852 m!7152778))

(declare-fun m!7152780 () Bool)

(assert (=> b!6344852 m!7152780))

(assert (=> b!6344318 d!1991198))

(declare-fun d!1991200 () Bool)

(assert (=> d!1991200 (= (flatMap!1753 lt!2363093 lambda!348656) (dynLambda!25738 lambda!348656 lt!2363077))))

(declare-fun lt!2363260 () Unit!158323)

(assert (=> d!1991200 (= lt!2363260 (choose!47047 lt!2363093 lt!2363077 lambda!348656))))

(assert (=> d!1991200 (= lt!2363093 (set.insert lt!2363077 (as set.empty (Set Context!11264))))))

(assert (=> d!1991200 (= (lemmaFlatMapOnSingletonSet!1279 lt!2363093 lt!2363077 lambda!348656) lt!2363260)))

(declare-fun b_lambda!241431 () Bool)

(assert (=> (not b_lambda!241431) (not d!1991200)))

(declare-fun bs!1588749 () Bool)

(assert (= bs!1588749 d!1991200))

(assert (=> bs!1588749 m!7152260))

(declare-fun m!7152782 () Bool)

(assert (=> bs!1588749 m!7152782))

(declare-fun m!7152784 () Bool)

(assert (=> bs!1588749 m!7152784))

(assert (=> bs!1588749 m!7152266))

(assert (=> b!6344318 d!1991200))

(declare-fun bs!1588750 () Bool)

(declare-fun d!1991202 () Bool)

(assert (= bs!1588750 (and d!1991202 b!6344304)))

(declare-fun lambda!348717 () Int)

(assert (=> bs!1588750 (= lambda!348717 lambda!348656)))

(assert (=> d!1991202 true))

(assert (=> d!1991202 (= (derivationStepZipper!2214 lt!2363093 (h!71369 s!2326)) (flatMap!1753 lt!2363093 lambda!348717))))

(declare-fun bs!1588751 () Bool)

(assert (= bs!1588751 d!1991202))

(declare-fun m!7152786 () Bool)

(assert (=> bs!1588751 m!7152786))

(assert (=> b!6344318 d!1991202))

(declare-fun d!1991204 () Bool)

(assert (=> d!1991204 (= (nullable!6241 (regOne!33008 (regOne!33008 r!7292))) (nullableFct!2188 (regOne!33008 (regOne!33008 r!7292))))))

(declare-fun bs!1588752 () Bool)

(assert (= bs!1588752 d!1991204))

(declare-fun m!7152788 () Bool)

(assert (=> bs!1588752 m!7152788))

(assert (=> b!6344329 d!1991204))

(declare-fun bs!1588753 () Bool)

(declare-fun b!6344856 () Bool)

(assert (= bs!1588753 (and b!6344856 b!6344606)))

(declare-fun lambda!348718 () Int)

(assert (=> bs!1588753 (= (and (= (reg!16577 r!7292) (reg!16577 lt!2363090)) (= r!7292 lt!2363090)) (= lambda!348718 lambda!348693))))

(declare-fun bs!1588754 () Bool)

(assert (= bs!1588754 (and b!6344856 b!6344310)))

(assert (=> bs!1588754 (not (= lambda!348718 lambda!348654))))

(declare-fun bs!1588755 () Bool)

(assert (= bs!1588755 (and b!6344856 d!1991144)))

(assert (=> bs!1588755 (not (= lambda!348718 lambda!348697))))

(assert (=> bs!1588754 (not (= lambda!348718 lambda!348655))))

(declare-fun bs!1588756 () Bool)

(assert (= bs!1588756 (and b!6344856 b!6344314)))

(assert (=> bs!1588756 (not (= lambda!348718 lambda!348657))))

(declare-fun bs!1588757 () Bool)

(assert (= bs!1588757 (and b!6344856 b!6344609)))

(assert (=> bs!1588757 (not (= lambda!348718 lambda!348694))))

(assert (=> b!6344856 true))

(assert (=> b!6344856 true))

(declare-fun bs!1588758 () Bool)

(declare-fun b!6344859 () Bool)

(assert (= bs!1588758 (and b!6344859 b!6344606)))

(declare-fun lambda!348719 () Int)

(assert (=> bs!1588758 (not (= lambda!348719 lambda!348693))))

(declare-fun bs!1588759 () Bool)

(assert (= bs!1588759 (and b!6344859 b!6344310)))

(assert (=> bs!1588759 (not (= lambda!348719 lambda!348654))))

(declare-fun bs!1588760 () Bool)

(assert (= bs!1588760 (and b!6344859 d!1991144)))

(assert (=> bs!1588760 (not (= lambda!348719 lambda!348697))))

(assert (=> bs!1588759 (= lambda!348719 lambda!348655)))

(declare-fun bs!1588761 () Bool)

(assert (= bs!1588761 (and b!6344859 b!6344856)))

(assert (=> bs!1588761 (not (= lambda!348719 lambda!348718))))

(declare-fun bs!1588762 () Bool)

(assert (= bs!1588762 (and b!6344859 b!6344314)))

(assert (=> bs!1588762 (not (= lambda!348719 lambda!348657))))

(declare-fun bs!1588763 () Bool)

(assert (= bs!1588763 (and b!6344859 b!6344609)))

(assert (=> bs!1588763 (= (and (= (regOne!33008 r!7292) (regOne!33008 lt!2363090)) (= (regTwo!33008 r!7292) (regTwo!33008 lt!2363090))) (= lambda!348719 lambda!348694))))

(assert (=> b!6344859 true))

(assert (=> b!6344859 true))

(declare-fun e!3853657 () Bool)

(declare-fun call!540858 () Bool)

(assert (=> b!6344856 (= e!3853657 call!540858)))

(declare-fun b!6344857 () Bool)

(declare-fun e!3853659 () Bool)

(declare-fun e!3853661 () Bool)

(assert (=> b!6344857 (= e!3853659 e!3853661)))

(declare-fun res!2610897 () Bool)

(assert (=> b!6344857 (= res!2610897 (matchRSpec!3349 (regOne!33009 r!7292) s!2326))))

(assert (=> b!6344857 (=> res!2610897 e!3853661)))

(declare-fun b!6344858 () Bool)

(declare-fun e!3853658 () Bool)

(declare-fun e!3853660 () Bool)

(assert (=> b!6344858 (= e!3853658 e!3853660)))

(declare-fun res!2610895 () Bool)

(assert (=> b!6344858 (= res!2610895 (not (is-EmptyLang!16248 r!7292)))))

(assert (=> b!6344858 (=> (not res!2610895) (not e!3853660))))

(declare-fun bm!540853 () Bool)

(declare-fun call!540859 () Bool)

(assert (=> bm!540853 (= call!540859 (isEmpty!37007 s!2326))))

(declare-fun d!1991206 () Bool)

(declare-fun c!1153875 () Bool)

(assert (=> d!1991206 (= c!1153875 (is-EmptyExpr!16248 r!7292))))

(assert (=> d!1991206 (= (matchRSpec!3349 r!7292 s!2326) e!3853658)))

(declare-fun e!3853663 () Bool)

(assert (=> b!6344859 (= e!3853663 call!540858)))

(declare-fun b!6344860 () Bool)

(assert (=> b!6344860 (= e!3853659 e!3853663)))

(declare-fun c!1153876 () Bool)

(assert (=> b!6344860 (= c!1153876 (is-Star!16248 r!7292))))

(declare-fun b!6344861 () Bool)

(declare-fun c!1153878 () Bool)

(assert (=> b!6344861 (= c!1153878 (is-ElementMatch!16248 r!7292))))

(declare-fun e!3853662 () Bool)

(assert (=> b!6344861 (= e!3853660 e!3853662)))

(declare-fun bm!540854 () Bool)

(assert (=> bm!540854 (= call!540858 (Exists!3318 (ite c!1153876 lambda!348718 lambda!348719)))))

(declare-fun b!6344862 () Bool)

(assert (=> b!6344862 (= e!3853658 call!540859)))

(declare-fun b!6344863 () Bool)

(declare-fun res!2610896 () Bool)

(assert (=> b!6344863 (=> res!2610896 e!3853657)))

(assert (=> b!6344863 (= res!2610896 call!540859)))

(assert (=> b!6344863 (= e!3853663 e!3853657)))

(declare-fun b!6344864 () Bool)

(assert (=> b!6344864 (= e!3853661 (matchRSpec!3349 (regTwo!33009 r!7292) s!2326))))

(declare-fun b!6344865 () Bool)

(assert (=> b!6344865 (= e!3853662 (= s!2326 (Cons!64921 (c!1153721 r!7292) Nil!64921)))))

(declare-fun b!6344866 () Bool)

(declare-fun c!1153877 () Bool)

(assert (=> b!6344866 (= c!1153877 (is-Union!16248 r!7292))))

(assert (=> b!6344866 (= e!3853662 e!3853659)))

(assert (= (and d!1991206 c!1153875) b!6344862))

(assert (= (and d!1991206 (not c!1153875)) b!6344858))

(assert (= (and b!6344858 res!2610895) b!6344861))

(assert (= (and b!6344861 c!1153878) b!6344865))

(assert (= (and b!6344861 (not c!1153878)) b!6344866))

(assert (= (and b!6344866 c!1153877) b!6344857))

(assert (= (and b!6344866 (not c!1153877)) b!6344860))

(assert (= (and b!6344857 (not res!2610897)) b!6344864))

(assert (= (and b!6344860 c!1153876) b!6344863))

(assert (= (and b!6344860 (not c!1153876)) b!6344859))

(assert (= (and b!6344863 (not res!2610896)) b!6344856))

(assert (= (or b!6344856 b!6344859) bm!540854))

(assert (= (or b!6344862 b!6344863) bm!540853))

(declare-fun m!7152790 () Bool)

(assert (=> b!6344857 m!7152790))

(assert (=> bm!540853 m!7152562))

(declare-fun m!7152792 () Bool)

(assert (=> bm!540854 m!7152792))

(declare-fun m!7152794 () Bool)

(assert (=> b!6344864 m!7152794))

(assert (=> b!6344308 d!1991206))

(declare-fun b!6344877 () Bool)

(declare-fun e!3853673 () Bool)

(assert (=> b!6344877 (= e!3853673 (= (head!12989 s!2326) (c!1153721 r!7292)))))

(declare-fun b!6344878 () Bool)

(declare-fun e!3853671 () Bool)

(assert (=> b!6344878 (= e!3853671 (nullable!6241 r!7292))))

(declare-fun b!6344879 () Bool)

(declare-fun res!2610902 () Bool)

(assert (=> b!6344879 (=> (not res!2610902) (not e!3853673))))

(assert (=> b!6344879 (= res!2610902 (isEmpty!37007 (tail!12074 s!2326)))))

(declare-fun b!6344880 () Bool)

(declare-fun e!3853676 () Bool)

(declare-fun e!3853674 () Bool)

(assert (=> b!6344880 (= e!3853676 e!3853674)))

(declare-fun res!2610906 () Bool)

(assert (=> b!6344880 (=> res!2610906 e!3853674)))

(declare-fun call!540862 () Bool)

(assert (=> b!6344880 (= res!2610906 call!540862)))

(declare-fun b!6344881 () Bool)

(declare-fun e!3853670 () Bool)

(declare-fun lt!2363261 () Bool)

(assert (=> b!6344881 (= e!3853670 (not lt!2363261))))

(declare-fun b!6344882 () Bool)

(declare-fun e!3853675 () Bool)

(assert (=> b!6344882 (= e!3853675 e!3853676)))

(declare-fun res!2610903 () Bool)

(assert (=> b!6344882 (=> (not res!2610903) (not e!3853676))))

(assert (=> b!6344882 (= res!2610903 (not lt!2363261))))

(declare-fun b!6344883 () Bool)

(assert (=> b!6344883 (= e!3853674 (not (= (head!12989 s!2326) (c!1153721 r!7292))))))

(declare-fun b!6344884 () Bool)

(declare-fun res!2610904 () Bool)

(assert (=> b!6344884 (=> (not res!2610904) (not e!3853673))))

(assert (=> b!6344884 (= res!2610904 (not call!540862))))

(declare-fun b!6344885 () Bool)

(assert (=> b!6344885 (= e!3853671 (matchR!8431 (derivativeStep!4953 r!7292 (head!12989 s!2326)) (tail!12074 s!2326)))))

(declare-fun b!6344886 () Bool)

(declare-fun res!2610905 () Bool)

(assert (=> b!6344886 (=> res!2610905 e!3853675)))

(assert (=> b!6344886 (= res!2610905 (not (is-ElementMatch!16248 r!7292)))))

(assert (=> b!6344886 (= e!3853670 e!3853675)))

(declare-fun b!6344887 () Bool)

(declare-fun res!2610907 () Bool)

(assert (=> b!6344887 (=> res!2610907 e!3853674)))

(assert (=> b!6344887 (= res!2610907 (not (isEmpty!37007 (tail!12074 s!2326))))))

(declare-fun d!1991208 () Bool)

(declare-fun e!3853672 () Bool)

(assert (=> d!1991208 e!3853672))

(declare-fun c!1153885 () Bool)

(assert (=> d!1991208 (= c!1153885 (is-EmptyExpr!16248 r!7292))))

(assert (=> d!1991208 (= lt!2363261 e!3853671)))

(declare-fun c!1153884 () Bool)

(assert (=> d!1991208 (= c!1153884 (isEmpty!37007 s!2326))))

(assert (=> d!1991208 (validRegex!7984 r!7292)))

(assert (=> d!1991208 (= (matchR!8431 r!7292 s!2326) lt!2363261)))

(declare-fun bm!540857 () Bool)

(assert (=> bm!540857 (= call!540862 (isEmpty!37007 s!2326))))

(declare-fun b!6344888 () Bool)

(declare-fun res!2610900 () Bool)

(assert (=> b!6344888 (=> res!2610900 e!3853675)))

(assert (=> b!6344888 (= res!2610900 e!3853673)))

(declare-fun res!2610901 () Bool)

(assert (=> b!6344888 (=> (not res!2610901) (not e!3853673))))

(assert (=> b!6344888 (= res!2610901 lt!2363261)))

(declare-fun b!6344889 () Bool)

(assert (=> b!6344889 (= e!3853672 (= lt!2363261 call!540862))))

(declare-fun b!6344890 () Bool)

(assert (=> b!6344890 (= e!3853672 e!3853670)))

(declare-fun c!1153883 () Bool)

(assert (=> b!6344890 (= c!1153883 (is-EmptyLang!16248 r!7292))))

(assert (= (and d!1991208 c!1153884) b!6344878))

(assert (= (and d!1991208 (not c!1153884)) b!6344885))

(assert (= (and d!1991208 c!1153885) b!6344889))

(assert (= (and d!1991208 (not c!1153885)) b!6344890))

(assert (= (and b!6344890 c!1153883) b!6344881))

(assert (= (and b!6344890 (not c!1153883)) b!6344886))

(assert (= (and b!6344886 (not res!2610905)) b!6344888))

(assert (= (and b!6344888 res!2610901) b!6344884))

(assert (= (and b!6344884 res!2610904) b!6344879))

(assert (= (and b!6344879 res!2610902) b!6344877))

(assert (= (and b!6344888 (not res!2610900)) b!6344882))

(assert (= (and b!6344882 res!2610903) b!6344880))

(assert (= (and b!6344880 (not res!2610906)) b!6344887))

(assert (= (and b!6344887 (not res!2610907)) b!6344883))

(assert (= (or b!6344889 b!6344880 b!6344884) bm!540857))

(declare-fun m!7152796 () Bool)

(assert (=> b!6344878 m!7152796))

(assert (=> b!6344877 m!7152566))

(assert (=> b!6344879 m!7152570))

(assert (=> b!6344879 m!7152570))

(assert (=> b!6344879 m!7152642))

(assert (=> b!6344885 m!7152566))

(assert (=> b!6344885 m!7152566))

(declare-fun m!7152798 () Bool)

(assert (=> b!6344885 m!7152798))

(assert (=> b!6344885 m!7152570))

(assert (=> b!6344885 m!7152798))

(assert (=> b!6344885 m!7152570))

(declare-fun m!7152800 () Bool)

(assert (=> b!6344885 m!7152800))

(assert (=> b!6344883 m!7152566))

(assert (=> d!1991208 m!7152562))

(assert (=> d!1991208 m!7152334))

(assert (=> b!6344887 m!7152570))

(assert (=> b!6344887 m!7152570))

(assert (=> b!6344887 m!7152642))

(assert (=> bm!540857 m!7152562))

(assert (=> b!6344308 d!1991208))

(declare-fun d!1991210 () Bool)

(assert (=> d!1991210 (= (matchR!8431 r!7292 s!2326) (matchRSpec!3349 r!7292 s!2326))))

(declare-fun lt!2363262 () Unit!158323)

(assert (=> d!1991210 (= lt!2363262 (choose!47052 r!7292 s!2326))))

(assert (=> d!1991210 (validRegex!7984 r!7292)))

(assert (=> d!1991210 (= (mainMatchTheorem!3349 r!7292 s!2326) lt!2363262)))

(declare-fun bs!1588764 () Bool)

(assert (= bs!1588764 d!1991210))

(assert (=> bs!1588764 m!7152362))

(assert (=> bs!1588764 m!7152360))

(declare-fun m!7152802 () Bool)

(assert (=> bs!1588764 m!7152802))

(assert (=> bs!1588764 m!7152334))

(assert (=> b!6344308 d!1991210))

(declare-fun d!1991212 () Bool)

(declare-fun e!3853682 () Bool)

(assert (=> d!1991212 e!3853682))

(declare-fun res!2610911 () Bool)

(assert (=> d!1991212 (=> (not res!2610911) (not e!3853682))))

(declare-fun lt!2363265 () List!65044)

(declare-fun noDuplicate!2078 (List!65044) Bool)

(assert (=> d!1991212 (= res!2610911 (noDuplicate!2078 lt!2363265))))

(declare-fun choose!47054 ((Set Context!11264)) List!65044)

(assert (=> d!1991212 (= lt!2363265 (choose!47054 z!1189))))

(assert (=> d!1991212 (= (toList!10032 z!1189) lt!2363265)))

(declare-fun b!6344898 () Bool)

(declare-fun content!12247 (List!65044) (Set Context!11264))

(assert (=> b!6344898 (= e!3853682 (= (content!12247 lt!2363265) z!1189))))

(assert (= (and d!1991212 res!2610911) b!6344898))

(declare-fun m!7152810 () Bool)

(assert (=> d!1991212 m!7152810))

(declare-fun m!7152812 () Bool)

(assert (=> d!1991212 m!7152812))

(declare-fun m!7152814 () Bool)

(assert (=> b!6344898 m!7152814))

(assert (=> b!6344330 d!1991212))

(declare-fun d!1991216 () Bool)

(declare-fun lt!2363270 () Int)

(assert (=> d!1991216 (>= lt!2363270 0)))

(declare-fun e!3853685 () Int)

(assert (=> d!1991216 (= lt!2363270 e!3853685)))

(declare-fun c!1153890 () Bool)

(assert (=> d!1991216 (= c!1153890 (is-Cons!64920 lt!2363079))))

(assert (=> d!1991216 (= (zipperDepthTotal!385 lt!2363079) lt!2363270)))

(declare-fun b!6344903 () Bool)

(assert (=> b!6344903 (= e!3853685 (+ (contextDepthTotal!357 (h!71368 lt!2363079)) (zipperDepthTotal!385 (t!378632 lt!2363079))))))

(declare-fun b!6344904 () Bool)

(assert (=> b!6344904 (= e!3853685 0)))

(assert (= (and d!1991216 c!1153890) b!6344903))

(assert (= (and d!1991216 (not c!1153890)) b!6344904))

(declare-fun m!7152816 () Bool)

(assert (=> b!6344903 m!7152816))

(declare-fun m!7152818 () Bool)

(assert (=> b!6344903 m!7152818))

(assert (=> b!6344320 d!1991216))

(declare-fun d!1991218 () Bool)

(declare-fun lt!2363271 () Int)

(assert (=> d!1991218 (>= lt!2363271 0)))

(declare-fun e!3853686 () Int)

(assert (=> d!1991218 (= lt!2363271 e!3853686)))

(declare-fun c!1153891 () Bool)

(assert (=> d!1991218 (= c!1153891 (is-Cons!64920 zl!343))))

(assert (=> d!1991218 (= (zipperDepthTotal!385 zl!343) lt!2363271)))

(declare-fun b!6344905 () Bool)

(assert (=> b!6344905 (= e!3853686 (+ (contextDepthTotal!357 (h!71368 zl!343)) (zipperDepthTotal!385 (t!378632 zl!343))))))

(declare-fun b!6344906 () Bool)

(assert (=> b!6344906 (= e!3853686 0)))

(assert (= (and d!1991218 c!1153891) b!6344905))

(assert (= (and d!1991218 (not c!1153891)) b!6344906))

(assert (=> b!6344905 m!7152254))

(declare-fun m!7152820 () Bool)

(assert (=> b!6344905 m!7152820))

(assert (=> b!6344320 d!1991218))

(declare-fun e!3853695 () Bool)

(declare-fun d!1991220 () Bool)

(assert (=> d!1991220 (= (matchZipper!2260 (set.union lt!2363104 lt!2363082) (t!378633 s!2326)) e!3853695)))

(declare-fun res!2610916 () Bool)

(assert (=> d!1991220 (=> res!2610916 e!3853695)))

(assert (=> d!1991220 (= res!2610916 (matchZipper!2260 lt!2363104 (t!378633 s!2326)))))

(declare-fun lt!2363275 () Unit!158323)

(declare-fun choose!47056 ((Set Context!11264) (Set Context!11264) List!65045) Unit!158323)

(assert (=> d!1991220 (= lt!2363275 (choose!47056 lt!2363104 lt!2363082 (t!378633 s!2326)))))

(assert (=> d!1991220 (= (lemmaZipperConcatMatchesSameAsBothZippers!1079 lt!2363104 lt!2363082 (t!378633 s!2326)) lt!2363275)))

(declare-fun b!6344919 () Bool)

(assert (=> b!6344919 (= e!3853695 (matchZipper!2260 lt!2363082 (t!378633 s!2326)))))

(assert (= (and d!1991220 (not res!2610916)) b!6344919))

(assert (=> d!1991220 m!7152316))

(assert (=> d!1991220 m!7152314))

(declare-fun m!7152840 () Bool)

(assert (=> d!1991220 m!7152840))

(assert (=> b!6344919 m!7152320))

(assert (=> b!6344331 d!1991220))

(declare-fun d!1991230 () Bool)

(declare-fun c!1153896 () Bool)

(assert (=> d!1991230 (= c!1153896 (isEmpty!37007 (t!378633 s!2326)))))

(declare-fun e!3853696 () Bool)

(assert (=> d!1991230 (= (matchZipper!2260 lt!2363104 (t!378633 s!2326)) e!3853696)))

(declare-fun b!6344920 () Bool)

(assert (=> b!6344920 (= e!3853696 (nullableZipper!2014 lt!2363104))))

(declare-fun b!6344921 () Bool)

(assert (=> b!6344921 (= e!3853696 (matchZipper!2260 (derivationStepZipper!2214 lt!2363104 (head!12989 (t!378633 s!2326))) (tail!12074 (t!378633 s!2326))))))

(assert (= (and d!1991230 c!1153896) b!6344920))

(assert (= (and d!1991230 (not c!1153896)) b!6344921))

(assert (=> d!1991230 m!7152718))

(declare-fun m!7152842 () Bool)

(assert (=> b!6344920 m!7152842))

(assert (=> b!6344921 m!7152722))

(assert (=> b!6344921 m!7152722))

(declare-fun m!7152844 () Bool)

(assert (=> b!6344921 m!7152844))

(assert (=> b!6344921 m!7152726))

(assert (=> b!6344921 m!7152844))

(assert (=> b!6344921 m!7152726))

(declare-fun m!7152846 () Bool)

(assert (=> b!6344921 m!7152846))

(assert (=> b!6344331 d!1991230))

(declare-fun d!1991232 () Bool)

(declare-fun c!1153897 () Bool)

(assert (=> d!1991232 (= c!1153897 (isEmpty!37007 (t!378633 s!2326)))))

(declare-fun e!3853697 () Bool)

(assert (=> d!1991232 (= (matchZipper!2260 (set.union lt!2363104 lt!2363082) (t!378633 s!2326)) e!3853697)))

(declare-fun b!6344922 () Bool)

(assert (=> b!6344922 (= e!3853697 (nullableZipper!2014 (set.union lt!2363104 lt!2363082)))))

(declare-fun b!6344923 () Bool)

(assert (=> b!6344923 (= e!3853697 (matchZipper!2260 (derivationStepZipper!2214 (set.union lt!2363104 lt!2363082) (head!12989 (t!378633 s!2326))) (tail!12074 (t!378633 s!2326))))))

(assert (= (and d!1991232 c!1153897) b!6344922))

(assert (= (and d!1991232 (not c!1153897)) b!6344923))

(assert (=> d!1991232 m!7152718))

(declare-fun m!7152848 () Bool)

(assert (=> b!6344922 m!7152848))

(assert (=> b!6344923 m!7152722))

(assert (=> b!6344923 m!7152722))

(declare-fun m!7152850 () Bool)

(assert (=> b!6344923 m!7152850))

(assert (=> b!6344923 m!7152726))

(assert (=> b!6344923 m!7152850))

(assert (=> b!6344923 m!7152726))

(declare-fun m!7152852 () Bool)

(assert (=> b!6344923 m!7152852))

(assert (=> b!6344331 d!1991232))

(declare-fun b!6344924 () Bool)

(declare-fun e!3853699 () Bool)

(assert (=> b!6344924 (= e!3853699 (matchR!8431 (regTwo!33008 r!7292) s!2326))))

(declare-fun d!1991234 () Bool)

(declare-fun e!3853698 () Bool)

(assert (=> d!1991234 e!3853698))

(declare-fun res!2610919 () Bool)

(assert (=> d!1991234 (=> res!2610919 e!3853698)))

(declare-fun e!3853702 () Bool)

(assert (=> d!1991234 (= res!2610919 e!3853702)))

(declare-fun res!2610921 () Bool)

(assert (=> d!1991234 (=> (not res!2610921) (not e!3853702))))

(declare-fun lt!2363276 () Option!16139)

(assert (=> d!1991234 (= res!2610921 (isDefined!12842 lt!2363276))))

(declare-fun e!3853700 () Option!16139)

(assert (=> d!1991234 (= lt!2363276 e!3853700)))

(declare-fun c!1153899 () Bool)

(assert (=> d!1991234 (= c!1153899 e!3853699)))

(declare-fun res!2610917 () Bool)

(assert (=> d!1991234 (=> (not res!2610917) (not e!3853699))))

(assert (=> d!1991234 (= res!2610917 (matchR!8431 (regOne!33008 r!7292) Nil!64921))))

(assert (=> d!1991234 (validRegex!7984 (regOne!33008 r!7292))))

(assert (=> d!1991234 (= (findConcatSeparation!2553 (regOne!33008 r!7292) (regTwo!33008 r!7292) Nil!64921 s!2326 s!2326) lt!2363276)))

(declare-fun b!6344925 () Bool)

(assert (=> b!6344925 (= e!3853702 (= (++!14317 (_1!36530 (get!22457 lt!2363276)) (_2!36530 (get!22457 lt!2363276))) s!2326))))

(declare-fun b!6344926 () Bool)

(assert (=> b!6344926 (= e!3853700 (Some!16138 (tuple2!66455 Nil!64921 s!2326)))))

(declare-fun b!6344927 () Bool)

(assert (=> b!6344927 (= e!3853698 (not (isDefined!12842 lt!2363276)))))

(declare-fun b!6344928 () Bool)

(declare-fun e!3853701 () Option!16139)

(assert (=> b!6344928 (= e!3853701 None!16138)))

(declare-fun b!6344929 () Bool)

(assert (=> b!6344929 (= e!3853700 e!3853701)))

(declare-fun c!1153898 () Bool)

(assert (=> b!6344929 (= c!1153898 (is-Nil!64921 s!2326))))

(declare-fun b!6344930 () Bool)

(declare-fun lt!2363277 () Unit!158323)

(declare-fun lt!2363278 () Unit!158323)

(assert (=> b!6344930 (= lt!2363277 lt!2363278)))

(assert (=> b!6344930 (= (++!14317 (++!14317 Nil!64921 (Cons!64921 (h!71369 s!2326) Nil!64921)) (t!378633 s!2326)) s!2326)))

(assert (=> b!6344930 (= lt!2363278 (lemmaMoveElementToOtherListKeepsConcatEq!2412 Nil!64921 (h!71369 s!2326) (t!378633 s!2326) s!2326))))

(assert (=> b!6344930 (= e!3853701 (findConcatSeparation!2553 (regOne!33008 r!7292) (regTwo!33008 r!7292) (++!14317 Nil!64921 (Cons!64921 (h!71369 s!2326) Nil!64921)) (t!378633 s!2326) s!2326))))

(declare-fun b!6344931 () Bool)

(declare-fun res!2610920 () Bool)

(assert (=> b!6344931 (=> (not res!2610920) (not e!3853702))))

(assert (=> b!6344931 (= res!2610920 (matchR!8431 (regOne!33008 r!7292) (_1!36530 (get!22457 lt!2363276))))))

(declare-fun b!6344932 () Bool)

(declare-fun res!2610918 () Bool)

(assert (=> b!6344932 (=> (not res!2610918) (not e!3853702))))

(assert (=> b!6344932 (= res!2610918 (matchR!8431 (regTwo!33008 r!7292) (_2!36530 (get!22457 lt!2363276))))))

(assert (= (and d!1991234 res!2610917) b!6344924))

(assert (= (and d!1991234 c!1153899) b!6344926))

(assert (= (and d!1991234 (not c!1153899)) b!6344929))

(assert (= (and b!6344929 c!1153898) b!6344928))

(assert (= (and b!6344929 (not c!1153898)) b!6344930))

(assert (= (and d!1991234 res!2610921) b!6344931))

(assert (= (and b!6344931 res!2610920) b!6344932))

(assert (= (and b!6344932 res!2610918) b!6344925))

(assert (= (and d!1991234 (not res!2610919)) b!6344927))

(declare-fun m!7152854 () Bool)

(assert (=> b!6344931 m!7152854))

(declare-fun m!7152856 () Bool)

(assert (=> b!6344931 m!7152856))

(declare-fun m!7152858 () Bool)

(assert (=> b!6344924 m!7152858))

(declare-fun m!7152860 () Bool)

(assert (=> b!6344927 m!7152860))

(assert (=> b!6344932 m!7152854))

(declare-fun m!7152862 () Bool)

(assert (=> b!6344932 m!7152862))

(assert (=> d!1991234 m!7152860))

(declare-fun m!7152864 () Bool)

(assert (=> d!1991234 m!7152864))

(declare-fun m!7152866 () Bool)

(assert (=> d!1991234 m!7152866))

(assert (=> b!6344930 m!7152630))

(assert (=> b!6344930 m!7152630))

(assert (=> b!6344930 m!7152632))

(assert (=> b!6344930 m!7152634))

(assert (=> b!6344930 m!7152630))

(declare-fun m!7152868 () Bool)

(assert (=> b!6344930 m!7152868))

(assert (=> b!6344925 m!7152854))

(declare-fun m!7152870 () Bool)

(assert (=> b!6344925 m!7152870))

(assert (=> b!6344310 d!1991234))

(declare-fun d!1991236 () Bool)

(assert (=> d!1991236 (= (Exists!3318 lambda!348655) (choose!47051 lambda!348655))))

(declare-fun bs!1588767 () Bool)

(assert (= bs!1588767 d!1991236))

(declare-fun m!7152872 () Bool)

(assert (=> bs!1588767 m!7152872))

(assert (=> b!6344310 d!1991236))

(declare-fun d!1991238 () Bool)

(assert (=> d!1991238 (= (Exists!3318 lambda!348654) (choose!47051 lambda!348654))))

(declare-fun bs!1588768 () Bool)

(assert (= bs!1588768 d!1991238))

(declare-fun m!7152874 () Bool)

(assert (=> bs!1588768 m!7152874))

(assert (=> b!6344310 d!1991238))

(declare-fun bs!1588769 () Bool)

(declare-fun d!1991240 () Bool)

(assert (= bs!1588769 (and d!1991240 b!6344606)))

(declare-fun lambda!348720 () Int)

(assert (=> bs!1588769 (not (= lambda!348720 lambda!348693))))

(declare-fun bs!1588770 () Bool)

(assert (= bs!1588770 (and d!1991240 b!6344859)))

(assert (=> bs!1588770 (not (= lambda!348720 lambda!348719))))

(declare-fun bs!1588771 () Bool)

(assert (= bs!1588771 (and d!1991240 b!6344310)))

(assert (=> bs!1588771 (= lambda!348720 lambda!348654)))

(declare-fun bs!1588772 () Bool)

(assert (= bs!1588772 (and d!1991240 d!1991144)))

(assert (=> bs!1588772 (= (and (= (regOne!33008 r!7292) (regOne!33008 (regOne!33008 r!7292))) (= (regTwo!33008 r!7292) lt!2363087)) (= lambda!348720 lambda!348697))))

(assert (=> bs!1588771 (not (= lambda!348720 lambda!348655))))

(declare-fun bs!1588773 () Bool)

(assert (= bs!1588773 (and d!1991240 b!6344856)))

(assert (=> bs!1588773 (not (= lambda!348720 lambda!348718))))

(declare-fun bs!1588774 () Bool)

(assert (= bs!1588774 (and d!1991240 b!6344314)))

(assert (=> bs!1588774 (= (and (= (regOne!33008 r!7292) (regOne!33008 (regOne!33008 r!7292))) (= (regTwo!33008 r!7292) lt!2363087)) (= lambda!348720 lambda!348657))))

(declare-fun bs!1588775 () Bool)

(assert (= bs!1588775 (and d!1991240 b!6344609)))

(assert (=> bs!1588775 (not (= lambda!348720 lambda!348694))))

(assert (=> d!1991240 true))

(assert (=> d!1991240 true))

(assert (=> d!1991240 true))

(assert (=> d!1991240 (= (isDefined!12842 (findConcatSeparation!2553 (regOne!33008 r!7292) (regTwo!33008 r!7292) Nil!64921 s!2326 s!2326)) (Exists!3318 lambda!348720))))

(declare-fun lt!2363279 () Unit!158323)

(assert (=> d!1991240 (= lt!2363279 (choose!47050 (regOne!33008 r!7292) (regTwo!33008 r!7292) s!2326))))

(assert (=> d!1991240 (validRegex!7984 (regOne!33008 r!7292))))

(assert (=> d!1991240 (= (lemmaFindConcatSeparationEquivalentToExists!2317 (regOne!33008 r!7292) (regTwo!33008 r!7292) s!2326) lt!2363279)))

(declare-fun bs!1588776 () Bool)

(assert (= bs!1588776 d!1991240))

(assert (=> bs!1588776 m!7152276))

(assert (=> bs!1588776 m!7152278))

(declare-fun m!7152876 () Bool)

(assert (=> bs!1588776 m!7152876))

(assert (=> bs!1588776 m!7152866))

(declare-fun m!7152878 () Bool)

(assert (=> bs!1588776 m!7152878))

(assert (=> bs!1588776 m!7152276))

(assert (=> b!6344310 d!1991240))

(declare-fun bs!1588777 () Bool)

(declare-fun d!1991242 () Bool)

(assert (= bs!1588777 (and d!1991242 d!1991240)))

(declare-fun lambda!348725 () Int)

(assert (=> bs!1588777 (= lambda!348725 lambda!348720)))

(declare-fun bs!1588778 () Bool)

(assert (= bs!1588778 (and d!1991242 b!6344606)))

(assert (=> bs!1588778 (not (= lambda!348725 lambda!348693))))

(declare-fun bs!1588779 () Bool)

(assert (= bs!1588779 (and d!1991242 b!6344859)))

(assert (=> bs!1588779 (not (= lambda!348725 lambda!348719))))

(declare-fun bs!1588780 () Bool)

(assert (= bs!1588780 (and d!1991242 b!6344310)))

(assert (=> bs!1588780 (= lambda!348725 lambda!348654)))

(declare-fun bs!1588781 () Bool)

(assert (= bs!1588781 (and d!1991242 d!1991144)))

(assert (=> bs!1588781 (= (and (= (regOne!33008 r!7292) (regOne!33008 (regOne!33008 r!7292))) (= (regTwo!33008 r!7292) lt!2363087)) (= lambda!348725 lambda!348697))))

(assert (=> bs!1588780 (not (= lambda!348725 lambda!348655))))

(declare-fun bs!1588782 () Bool)

(assert (= bs!1588782 (and d!1991242 b!6344856)))

(assert (=> bs!1588782 (not (= lambda!348725 lambda!348718))))

(declare-fun bs!1588783 () Bool)

(assert (= bs!1588783 (and d!1991242 b!6344314)))

(assert (=> bs!1588783 (= (and (= (regOne!33008 r!7292) (regOne!33008 (regOne!33008 r!7292))) (= (regTwo!33008 r!7292) lt!2363087)) (= lambda!348725 lambda!348657))))

(declare-fun bs!1588784 () Bool)

(assert (= bs!1588784 (and d!1991242 b!6344609)))

(assert (=> bs!1588784 (not (= lambda!348725 lambda!348694))))

(assert (=> d!1991242 true))

(assert (=> d!1991242 true))

(assert (=> d!1991242 true))

(declare-fun lambda!348726 () Int)

(assert (=> bs!1588777 (not (= lambda!348726 lambda!348720))))

(assert (=> bs!1588778 (not (= lambda!348726 lambda!348693))))

(declare-fun bs!1588785 () Bool)

(assert (= bs!1588785 d!1991242))

(assert (=> bs!1588785 (not (= lambda!348726 lambda!348725))))

(assert (=> bs!1588779 (= lambda!348726 lambda!348719)))

(assert (=> bs!1588780 (not (= lambda!348726 lambda!348654))))

(assert (=> bs!1588781 (not (= lambda!348726 lambda!348697))))

(assert (=> bs!1588780 (= lambda!348726 lambda!348655)))

(assert (=> bs!1588782 (not (= lambda!348726 lambda!348718))))

(assert (=> bs!1588783 (not (= lambda!348726 lambda!348657))))

(assert (=> bs!1588784 (= (and (= (regOne!33008 r!7292) (regOne!33008 lt!2363090)) (= (regTwo!33008 r!7292) (regTwo!33008 lt!2363090))) (= lambda!348726 lambda!348694))))

(assert (=> d!1991242 true))

(assert (=> d!1991242 true))

(assert (=> d!1991242 true))

(assert (=> d!1991242 (= (Exists!3318 lambda!348725) (Exists!3318 lambda!348726))))

(declare-fun lt!2363282 () Unit!158323)

(declare-fun choose!47059 (Regex!16248 Regex!16248 List!65045) Unit!158323)

(assert (=> d!1991242 (= lt!2363282 (choose!47059 (regOne!33008 r!7292) (regTwo!33008 r!7292) s!2326))))

(assert (=> d!1991242 (validRegex!7984 (regOne!33008 r!7292))))

(assert (=> d!1991242 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1855 (regOne!33008 r!7292) (regTwo!33008 r!7292) s!2326) lt!2363282)))

(declare-fun m!7152880 () Bool)

(assert (=> bs!1588785 m!7152880))

(declare-fun m!7152882 () Bool)

(assert (=> bs!1588785 m!7152882))

(declare-fun m!7152884 () Bool)

(assert (=> bs!1588785 m!7152884))

(assert (=> bs!1588785 m!7152866))

(assert (=> b!6344310 d!1991242))

(declare-fun d!1991244 () Bool)

(assert (=> d!1991244 (= (isDefined!12842 (findConcatSeparation!2553 (regOne!33008 r!7292) (regTwo!33008 r!7292) Nil!64921 s!2326 s!2326)) (not (isEmpty!37008 (findConcatSeparation!2553 (regOne!33008 r!7292) (regTwo!33008 r!7292) Nil!64921 s!2326 s!2326))))))

(declare-fun bs!1588786 () Bool)

(assert (= bs!1588786 d!1991244))

(assert (=> bs!1588786 m!7152276))

(declare-fun m!7152886 () Bool)

(assert (=> bs!1588786 m!7152886))

(assert (=> b!6344310 d!1991244))

(declare-fun d!1991246 () Bool)

(assert (=> d!1991246 (= (isEmpty!37004 (t!378632 zl!343)) (is-Nil!64920 (t!378632 zl!343)))))

(assert (=> b!6344321 d!1991246))

(declare-fun bs!1588787 () Bool)

(declare-fun d!1991248 () Bool)

(assert (= bs!1588787 (and d!1991248 d!1991174)))

(declare-fun lambda!348727 () Int)

(assert (=> bs!1588787 (= lambda!348727 lambda!348714)))

(declare-fun bs!1588788 () Bool)

(assert (= bs!1588788 (and d!1991248 d!1991146)))

(assert (=> bs!1588788 (= lambda!348727 lambda!348698)))

(declare-fun bs!1588789 () Bool)

(assert (= bs!1588789 (and d!1991248 d!1991160)))

(assert (=> bs!1588789 (= lambda!348727 lambda!348706)))

(declare-fun bs!1588790 () Bool)

(assert (= bs!1588790 (and d!1991248 d!1991134)))

(assert (=> bs!1588790 (= lambda!348727 lambda!348688)))

(declare-fun bs!1588791 () Bool)

(assert (= bs!1588791 (and d!1991248 d!1991170)))

(assert (=> bs!1588791 (= lambda!348727 lambda!348711)))

(declare-fun bs!1588792 () Bool)

(assert (= bs!1588792 (and d!1991248 d!1991164)))

(assert (=> bs!1588792 (= lambda!348727 lambda!348710)))

(assert (=> d!1991248 (= (inv!83868 setElem!43185) (forall!15409 (exprs!6132 setElem!43185) lambda!348727))))

(declare-fun bs!1588793 () Bool)

(assert (= bs!1588793 d!1991248))

(declare-fun m!7152888 () Bool)

(assert (=> bs!1588793 m!7152888))

(assert (=> setNonEmpty!43185 d!1991248))

(declare-fun d!1991250 () Bool)

(declare-fun c!1153910 () Bool)

(assert (=> d!1991250 (= c!1153910 (isEmpty!37007 (t!378633 s!2326)))))

(declare-fun e!3853719 () Bool)

(assert (=> d!1991250 (= (matchZipper!2260 lt!2363086 (t!378633 s!2326)) e!3853719)))

(declare-fun b!6344963 () Bool)

(assert (=> b!6344963 (= e!3853719 (nullableZipper!2014 lt!2363086))))

(declare-fun b!6344964 () Bool)

(assert (=> b!6344964 (= e!3853719 (matchZipper!2260 (derivationStepZipper!2214 lt!2363086 (head!12989 (t!378633 s!2326))) (tail!12074 (t!378633 s!2326))))))

(assert (= (and d!1991250 c!1153910) b!6344963))

(assert (= (and d!1991250 (not c!1153910)) b!6344964))

(assert (=> d!1991250 m!7152718))

(declare-fun m!7152890 () Bool)

(assert (=> b!6344963 m!7152890))

(assert (=> b!6344964 m!7152722))

(assert (=> b!6344964 m!7152722))

(declare-fun m!7152892 () Bool)

(assert (=> b!6344964 m!7152892))

(assert (=> b!6344964 m!7152726))

(assert (=> b!6344964 m!7152892))

(assert (=> b!6344964 m!7152726))

(declare-fun m!7152894 () Bool)

(assert (=> b!6344964 m!7152894))

(assert (=> b!6344332 d!1991250))

(assert (=> b!6344332 d!1991230))

(declare-fun b!6344980 () Bool)

(declare-fun e!3853728 () Bool)

(declare-fun tp!1768979 () Bool)

(declare-fun tp!1768980 () Bool)

(assert (=> b!6344980 (= e!3853728 (and tp!1768979 tp!1768980))))

(assert (=> b!6344313 (= tp!1768937 e!3853728)))

(assert (= (and b!6344313 (is-Cons!64919 (exprs!6132 setElem!43185))) b!6344980))

(declare-fun b!6344992 () Bool)

(declare-fun e!3853731 () Bool)

(declare-fun tp!1768993 () Bool)

(declare-fun tp!1768992 () Bool)

(assert (=> b!6344992 (= e!3853731 (and tp!1768993 tp!1768992))))

(declare-fun b!6344993 () Bool)

(declare-fun tp!1768991 () Bool)

(assert (=> b!6344993 (= e!3853731 tp!1768991)))

(declare-fun b!6344994 () Bool)

(declare-fun tp!1768994 () Bool)

(declare-fun tp!1768995 () Bool)

(assert (=> b!6344994 (= e!3853731 (and tp!1768994 tp!1768995))))

(declare-fun b!6344991 () Bool)

(assert (=> b!6344991 (= e!3853731 tp_is_empty!41749)))

(assert (=> b!6344324 (= tp!1768935 e!3853731)))

(assert (= (and b!6344324 (is-ElementMatch!16248 (regOne!33008 r!7292))) b!6344991))

(assert (= (and b!6344324 (is-Concat!25093 (regOne!33008 r!7292))) b!6344992))

(assert (= (and b!6344324 (is-Star!16248 (regOne!33008 r!7292))) b!6344993))

(assert (= (and b!6344324 (is-Union!16248 (regOne!33008 r!7292))) b!6344994))

(declare-fun b!6344996 () Bool)

(declare-fun e!3853732 () Bool)

(declare-fun tp!1768998 () Bool)

(declare-fun tp!1768997 () Bool)

(assert (=> b!6344996 (= e!3853732 (and tp!1768998 tp!1768997))))

(declare-fun b!6344997 () Bool)

(declare-fun tp!1768996 () Bool)

(assert (=> b!6344997 (= e!3853732 tp!1768996)))

(declare-fun b!6344998 () Bool)

(declare-fun tp!1768999 () Bool)

(declare-fun tp!1769000 () Bool)

(assert (=> b!6344998 (= e!3853732 (and tp!1768999 tp!1769000))))

(declare-fun b!6344995 () Bool)

(assert (=> b!6344995 (= e!3853732 tp_is_empty!41749)))

(assert (=> b!6344324 (= tp!1768940 e!3853732)))

(assert (= (and b!6344324 (is-ElementMatch!16248 (regTwo!33008 r!7292))) b!6344995))

(assert (= (and b!6344324 (is-Concat!25093 (regTwo!33008 r!7292))) b!6344996))

(assert (= (and b!6344324 (is-Star!16248 (regTwo!33008 r!7292))) b!6344997))

(assert (= (and b!6344324 (is-Union!16248 (regTwo!33008 r!7292))) b!6344998))

(declare-fun b!6345000 () Bool)

(declare-fun e!3853733 () Bool)

(declare-fun tp!1769003 () Bool)

(declare-fun tp!1769002 () Bool)

(assert (=> b!6345000 (= e!3853733 (and tp!1769003 tp!1769002))))

(declare-fun b!6345001 () Bool)

(declare-fun tp!1769001 () Bool)

(assert (=> b!6345001 (= e!3853733 tp!1769001)))

(declare-fun b!6345002 () Bool)

(declare-fun tp!1769004 () Bool)

(declare-fun tp!1769005 () Bool)

(assert (=> b!6345002 (= e!3853733 (and tp!1769004 tp!1769005))))

(declare-fun b!6344999 () Bool)

(assert (=> b!6344999 (= e!3853733 tp_is_empty!41749)))

(assert (=> b!6344309 (= tp!1768942 e!3853733)))

(assert (= (and b!6344309 (is-ElementMatch!16248 (reg!16577 r!7292))) b!6344999))

(assert (= (and b!6344309 (is-Concat!25093 (reg!16577 r!7292))) b!6345000))

(assert (= (and b!6344309 (is-Star!16248 (reg!16577 r!7292))) b!6345001))

(assert (= (and b!6344309 (is-Union!16248 (reg!16577 r!7292))) b!6345002))

(declare-fun b!6345007 () Bool)

(declare-fun e!3853736 () Bool)

(declare-fun tp!1769008 () Bool)

(assert (=> b!6345007 (= e!3853736 (and tp_is_empty!41749 tp!1769008))))

(assert (=> b!6344325 (= tp!1768939 e!3853736)))

(assert (= (and b!6344325 (is-Cons!64921 (t!378633 s!2326))) b!6345007))

(declare-fun b!6345015 () Bool)

(declare-fun e!3853742 () Bool)

(declare-fun tp!1769013 () Bool)

(assert (=> b!6345015 (= e!3853742 tp!1769013)))

(declare-fun e!3853741 () Bool)

(declare-fun tp!1769014 () Bool)

(declare-fun b!6345014 () Bool)

(assert (=> b!6345014 (= e!3853741 (and (inv!83868 (h!71368 (t!378632 zl!343))) e!3853742 tp!1769014))))

(assert (=> b!6344326 (= tp!1768944 e!3853741)))

(assert (= b!6345014 b!6345015))

(assert (= (and b!6344326 (is-Cons!64920 (t!378632 zl!343))) b!6345014))

(declare-fun m!7152906 () Bool)

(assert (=> b!6345014 m!7152906))

(declare-fun condSetEmpty!43191 () Bool)

(assert (=> setNonEmpty!43185 (= condSetEmpty!43191 (= setRest!43185 (as set.empty (Set Context!11264))))))

(declare-fun setRes!43191 () Bool)

(assert (=> setNonEmpty!43185 (= tp!1768936 setRes!43191)))

(declare-fun setIsEmpty!43191 () Bool)

(assert (=> setIsEmpty!43191 setRes!43191))

(declare-fun tp!1769020 () Bool)

(declare-fun setElem!43191 () Context!11264)

(declare-fun e!3853745 () Bool)

(declare-fun setNonEmpty!43191 () Bool)

(assert (=> setNonEmpty!43191 (= setRes!43191 (and tp!1769020 (inv!83868 setElem!43191) e!3853745))))

(declare-fun setRest!43191 () (Set Context!11264))

(assert (=> setNonEmpty!43191 (= setRest!43185 (set.union (set.insert setElem!43191 (as set.empty (Set Context!11264))) setRest!43191))))

(declare-fun b!6345020 () Bool)

(declare-fun tp!1769019 () Bool)

(assert (=> b!6345020 (= e!3853745 tp!1769019)))

(assert (= (and setNonEmpty!43185 condSetEmpty!43191) setIsEmpty!43191))

(assert (= (and setNonEmpty!43185 (not condSetEmpty!43191)) setNonEmpty!43191))

(assert (= setNonEmpty!43191 b!6345020))

(declare-fun m!7152908 () Bool)

(assert (=> setNonEmpty!43191 m!7152908))

(declare-fun b!6345021 () Bool)

(declare-fun e!3853746 () Bool)

(declare-fun tp!1769021 () Bool)

(declare-fun tp!1769022 () Bool)

(assert (=> b!6345021 (= e!3853746 (and tp!1769021 tp!1769022))))

(assert (=> b!6344302 (= tp!1768938 e!3853746)))

(assert (= (and b!6344302 (is-Cons!64919 (exprs!6132 (h!71368 zl!343)))) b!6345021))

(declare-fun b!6345023 () Bool)

(declare-fun e!3853747 () Bool)

(declare-fun tp!1769025 () Bool)

(declare-fun tp!1769024 () Bool)

(assert (=> b!6345023 (= e!3853747 (and tp!1769025 tp!1769024))))

(declare-fun b!6345024 () Bool)

(declare-fun tp!1769023 () Bool)

(assert (=> b!6345024 (= e!3853747 tp!1769023)))

(declare-fun b!6345025 () Bool)

(declare-fun tp!1769026 () Bool)

(declare-fun tp!1769027 () Bool)

(assert (=> b!6345025 (= e!3853747 (and tp!1769026 tp!1769027))))

(declare-fun b!6345022 () Bool)

(assert (=> b!6345022 (= e!3853747 tp_is_empty!41749)))

(assert (=> b!6344317 (= tp!1768941 e!3853747)))

(assert (= (and b!6344317 (is-ElementMatch!16248 (regOne!33009 r!7292))) b!6345022))

(assert (= (and b!6344317 (is-Concat!25093 (regOne!33009 r!7292))) b!6345023))

(assert (= (and b!6344317 (is-Star!16248 (regOne!33009 r!7292))) b!6345024))

(assert (= (and b!6344317 (is-Union!16248 (regOne!33009 r!7292))) b!6345025))

(declare-fun b!6345027 () Bool)

(declare-fun e!3853748 () Bool)

(declare-fun tp!1769030 () Bool)

(declare-fun tp!1769029 () Bool)

(assert (=> b!6345027 (= e!3853748 (and tp!1769030 tp!1769029))))

(declare-fun b!6345028 () Bool)

(declare-fun tp!1769028 () Bool)

(assert (=> b!6345028 (= e!3853748 tp!1769028)))

(declare-fun b!6345029 () Bool)

(declare-fun tp!1769031 () Bool)

(declare-fun tp!1769032 () Bool)

(assert (=> b!6345029 (= e!3853748 (and tp!1769031 tp!1769032))))

(declare-fun b!6345026 () Bool)

(assert (=> b!6345026 (= e!3853748 tp_is_empty!41749)))

(assert (=> b!6344317 (= tp!1768943 e!3853748)))

(assert (= (and b!6344317 (is-ElementMatch!16248 (regTwo!33009 r!7292))) b!6345026))

(assert (= (and b!6344317 (is-Concat!25093 (regTwo!33009 r!7292))) b!6345027))

(assert (= (and b!6344317 (is-Star!16248 (regTwo!33009 r!7292))) b!6345028))

(assert (= (and b!6344317 (is-Union!16248 (regTwo!33009 r!7292))) b!6345029))

(declare-fun b_lambda!241435 () Bool)

(assert (= b_lambda!241429 (or b!6344304 b_lambda!241435)))

(declare-fun bs!1588794 () Bool)

(declare-fun d!1991254 () Bool)

(assert (= bs!1588794 (and d!1991254 b!6344304)))

(assert (=> bs!1588794 (= (dynLambda!25738 lambda!348656 (h!71368 zl!343)) (derivationStepZipperUp!1422 (h!71368 zl!343) (h!71369 s!2326)))))

(assert (=> bs!1588794 m!7152348))

(assert (=> d!1991128 d!1991254))

(declare-fun b_lambda!241437 () Bool)

(assert (= b_lambda!241431 (or b!6344304 b_lambda!241437)))

(declare-fun bs!1588795 () Bool)

(declare-fun d!1991256 () Bool)

(assert (= bs!1588795 (and d!1991256 b!6344304)))

(assert (=> bs!1588795 (= (dynLambda!25738 lambda!348656 lt!2363077) (derivationStepZipperUp!1422 lt!2363077 (h!71369 s!2326)))))

(assert (=> bs!1588795 m!7152262))

(assert (=> d!1991200 d!1991256))

(push 1)

(assert (not b!6345021))

(assert (not d!1991142))

(assert (not b!6344676))

(assert (not b!6344920))

(assert (not b!6344927))

(assert (not d!1991148))

(assert (not b!6344849))

(assert (not b!6344745))

(assert (not bm!540818))

(assert (not d!1991150))

(assert (not b!6344783))

(assert (not b!6344805))

(assert (not b!6344526))

(assert (not bm!540823))

(assert (not bs!1588794))

(assert (not d!1991164))

(assert (not b!6344887))

(assert (not b!6345015))

(assert (not d!1991122))

(assert (not d!1991202))

(assert (not bm!540853))

(assert (not b!6344878))

(assert (not b!6344924))

(assert (not b!6345002))

(assert (not b!6344642))

(assert (not b!6344472))

(assert (not b!6344852))

(assert (not b!6344992))

(assert (not b!6344879))

(assert (not b!6344823))

(assert (not b!6344614))

(assert (not b!6344800))

(assert (not b!6345027))

(assert (not b!6344682))

(assert (not b!6344903))

(assert (not b!6344925))

(assert (not b!6345023))

(assert (not bm!540857))

(assert (not b!6344683))

(assert (not d!1991134))

(assert (not b!6344649))

(assert (not d!1991250))

(assert (not setNonEmpty!43191))

(assert (not bm!540848))

(assert (not d!1991236))

(assert (not d!1991240))

(assert (not b_lambda!241437))

(assert (not b!6344808))

(assert (not b_lambda!241435))

(assert (not b!6344877))

(assert (not b!6344803))

(assert (not b!6344922))

(assert (not b!6344652))

(assert (not d!1991144))

(assert (not b!6344528))

(assert (not b!6344531))

(assert (not d!1991146))

(assert (not d!1991230))

(assert (not b!6344784))

(assert (not b!6344799))

(assert (not b!6344679))

(assert (not d!1991232))

(assert (not b!6345000))

(assert (not d!1991244))

(assert (not b!6344827))

(assert (not b!6344828))

(assert (not b!6344921))

(assert (not b!6344558))

(assert (not b!6344656))

(assert (not bm!540816))

(assert (not b!6344789))

(assert (not bm!540839))

(assert (not b!6344980))

(assert (not b!6344572))

(assert (not b!6344743))

(assert (not bm!540849))

(assert (not b!6344857))

(assert (not b!6344905))

(assert (not d!1991204))

(assert (not b!6344533))

(assert (not b!6344836))

(assert (not b!6344930))

(assert (not d!1991172))

(assert (not d!1991158))

(assert (not bm!540842))

(assert (not b!6344607))

(assert (not b!6344651))

(assert (not d!1991220))

(assert (not b!6344787))

(assert (not b!6345029))

(assert (not b!6344923))

(assert (not bm!540844))

(assert (not b!6344505))

(assert (not b!6344654))

(assert (not d!1991128))

(assert (not b!6344523))

(assert (not d!1991238))

(assert (not bm!540829))

(assert (not b!6344993))

(assert (not b!6345007))

(assert (not d!1991132))

(assert (not b!6345020))

(assert (not b!6344964))

(assert (not bm!540838))

(assert (not b!6344559))

(assert (not d!1991152))

(assert (not b!6344898))

(assert (not b!6344751))

(assert (not d!1991156))

(assert (not bm!540822))

(assert (not d!1991200))

(assert (not b!6345024))

(assert (not b!6344566))

(assert (not b!6344744))

(assert (not bm!540850))

(assert (not b!6344919))

(assert (not b!6344474))

(assert (not b!6344885))

(assert (not d!1991186))

(assert (not b!6344677))

(assert (not d!1991208))

(assert (not b!6344825))

(assert (not b!6344932))

(assert (not b!6345014))

(assert (not b!6344749))

(assert (not bm!540817))

(assert (not b!6344657))

(assert (not b!6344864))

(assert (not b!6344809))

(assert (not d!1991160))

(assert (not b!6344994))

(assert (not b!6344963))

(assert (not bm!540852))

(assert (not d!1991136))

(assert (not b!6344648))

(assert (not bm!540845))

(assert (not d!1991174))

(assert (not b!6344753))

(assert (not b!6344807))

(assert (not bm!540854))

(assert (not b!6344567))

(assert tp_is_empty!41749)

(assert (not d!1991242))

(assert (not b!6344477))

(assert (not b!6344561))

(assert (not b!6344684))

(assert (not bm!540830))

(assert (not b!6344841))

(assert (not b!6344479))

(assert (not b!6344536))

(assert (not b!6344810))

(assert (not b!6345028))

(assert (not b!6344997))

(assert (not d!1991248))

(assert (not d!1991196))

(assert (not bm!540824))

(assert (not b!6344573))

(assert (not b!6344788))

(assert (not b!6345001))

(assert (not b!6345025))

(assert (not d!1991234))

(assert (not d!1991170))

(assert (not b!6344883))

(assert (not b!6344996))

(assert (not b!6344797))

(assert (not bs!1588795))

(assert (not b!6344998))

(assert (not b!6344782))

(assert (not b!6344790))

(assert (not b!6344931))

(assert (not d!1991210))

(assert (not b!6344562))

(assert (not b!6344802))

(assert (not d!1991212))

(assert (not b!6344564))

(assert (not d!1991114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

