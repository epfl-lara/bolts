; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675158 () Bool)

(assert start!675158)

(declare-fun b!7010282 () Bool)

(assert (=> b!7010282 true))

(declare-fun b!7010290 () Bool)

(assert (=> b!7010290 true))

(declare-fun b!7010300 () Bool)

(assert (=> b!7010300 true))

(declare-fun b!7010280 () Bool)

(declare-fun e!4213920 () Bool)

(declare-fun e!4213913 () Bool)

(assert (=> b!7010280 (= e!4213920 e!4213913)))

(declare-fun res!2860507 () Bool)

(assert (=> b!7010280 (=> res!2860507 e!4213913)))

(declare-datatypes ((C!34906 0))(
  ( (C!34907 (val!27155 Int)) )
))
(declare-datatypes ((Regex!17318 0))(
  ( (ElementMatch!17318 (c!1302126 C!34906)) (Concat!26163 (regOne!35148 Regex!17318) (regTwo!35148 Regex!17318)) (EmptyExpr!17318) (Star!17318 (reg!17647 Regex!17318)) (EmptyLang!17318) (Union!17318 (regOne!35149 Regex!17318) (regTwo!35149 Regex!17318)) )
))
(declare-datatypes ((List!67499 0))(
  ( (Nil!67375) (Cons!67375 (h!73823 Regex!17318) (t!381254 List!67499)) )
))
(declare-datatypes ((Context!12628 0))(
  ( (Context!12629 (exprs!6814 List!67499)) )
))
(declare-fun lt!2504068 () (Set Context!12628))

(declare-datatypes ((List!67500 0))(
  ( (Nil!67376) (Cons!67376 (h!73824 C!34906) (t!381255 List!67500)) )
))
(declare-fun s!7408 () List!67500)

(declare-fun matchZipper!2858 ((Set Context!12628) List!67500) Bool)

(assert (=> b!7010280 (= res!2860507 (matchZipper!2858 lt!2504068 (t!381255 s!7408)))))

(declare-fun lt!2504061 () List!67499)

(declare-datatypes ((Unit!161314 0))(
  ( (Unit!161315) )
))
(declare-fun lt!2504039 () Unit!161314)

(declare-fun lambda!408424 () Int)

(declare-fun ct2!306 () Context!12628)

(declare-fun lemmaConcatPreservesForall!654 (List!67499 List!67499 Int) Unit!161314)

(assert (=> b!7010280 (= lt!2504039 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun b!7010281 () Bool)

(declare-fun e!4213916 () Bool)

(declare-fun lt!2504069 () Context!12628)

(declare-fun validRegex!8888 (Regex!17318) Bool)

(assert (=> b!7010281 (= e!4213916 (validRegex!8888 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun e!4213924 () Bool)

(declare-fun tp!1932353 () Bool)

(declare-fun setElem!48356 () Context!12628)

(declare-fun setRes!48356 () Bool)

(declare-fun setNonEmpty!48356 () Bool)

(declare-fun inv!86155 (Context!12628) Bool)

(assert (=> setNonEmpty!48356 (= setRes!48356 (and tp!1932353 (inv!86155 setElem!48356) e!4213924))))

(declare-fun z1!570 () (Set Context!12628))

(declare-fun setRest!48356 () (Set Context!12628))

(assert (=> setNonEmpty!48356 (= z1!570 (set.union (set.insert setElem!48356 (as set.empty (Set Context!12628))) setRest!48356))))

(declare-fun setIsEmpty!48356 () Bool)

(assert (=> setIsEmpty!48356 setRes!48356))

(declare-fun e!4213912 () Bool)

(declare-fun e!4213927 () Bool)

(assert (=> b!7010282 (= e!4213912 (not e!4213927))))

(declare-fun res!2860517 () Bool)

(assert (=> b!7010282 (=> res!2860517 e!4213927)))

(declare-fun lt!2504035 () (Set Context!12628))

(assert (=> b!7010282 (= res!2860517 (not (matchZipper!2858 lt!2504035 s!7408)))))

(declare-fun lt!2504049 () Context!12628)

(assert (=> b!7010282 (= lt!2504035 (set.insert lt!2504049 (as set.empty (Set Context!12628))))))

(declare-fun lt!2504040 () (Set Context!12628))

(declare-fun lambda!408422 () Int)

(declare-fun getWitness!1260 ((Set Context!12628) Int) Context!12628)

(assert (=> b!7010282 (= lt!2504049 (getWitness!1260 lt!2504040 lambda!408422))))

(declare-datatypes ((List!67501 0))(
  ( (Nil!67377) (Cons!67377 (h!73825 Context!12628) (t!381256 List!67501)) )
))
(declare-fun lt!2504036 () List!67501)

(declare-fun exists!3162 (List!67501 Int) Bool)

(assert (=> b!7010282 (exists!3162 lt!2504036 lambda!408422)))

(declare-fun lt!2504070 () Unit!161314)

(declare-fun lemmaZipperMatchesExistsMatchingContext!287 (List!67501 List!67500) Unit!161314)

(assert (=> b!7010282 (= lt!2504070 (lemmaZipperMatchesExistsMatchingContext!287 lt!2504036 s!7408))))

(declare-fun toList!10678 ((Set Context!12628)) List!67501)

(assert (=> b!7010282 (= lt!2504036 (toList!10678 lt!2504040))))

(declare-fun b!7010283 () Bool)

(declare-fun e!4213914 () Bool)

(declare-fun e!4213926 () Bool)

(assert (=> b!7010283 (= e!4213914 e!4213926)))

(declare-fun res!2860516 () Bool)

(assert (=> b!7010283 (=> res!2860516 e!4213926)))

(declare-fun lt!2504074 () (Set Context!12628))

(declare-fun lt!2504043 () (Set Context!12628))

(assert (=> b!7010283 (= res!2860516 (not (= lt!2504074 lt!2504043)))))

(declare-fun lt!2504041 () (Set Context!12628))

(assert (=> b!7010283 (= lt!2504043 (set.union lt!2504041 lt!2504068))))

(declare-fun lt!2504072 () Context!12628)

(declare-fun derivationStepZipperUp!1968 (Context!12628 C!34906) (Set Context!12628))

(assert (=> b!7010283 (= lt!2504068 (derivationStepZipperUp!1968 lt!2504072 (h!73824 s!7408)))))

(declare-fun derivationStepZipperDown!2036 (Regex!17318 Context!12628 C!34906) (Set Context!12628))

(assert (=> b!7010283 (= lt!2504041 (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) lt!2504072 (h!73824 s!7408)))))

(declare-fun ++!15315 (List!67499 List!67499) List!67499)

(assert (=> b!7010283 (= lt!2504072 (Context!12629 (++!15315 lt!2504061 (exprs!6814 ct2!306))))))

(declare-fun lt!2504050 () Unit!161314)

(assert (=> b!7010283 (= lt!2504050 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun lt!2504060 () Unit!161314)

(assert (=> b!7010283 (= lt!2504060 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun b!7010284 () Bool)

(declare-fun res!2860503 () Bool)

(assert (=> b!7010284 (=> res!2860503 e!4213927)))

(assert (=> b!7010284 (= res!2860503 (not (set.member lt!2504049 lt!2504040)))))

(declare-fun b!7010285 () Bool)

(declare-fun e!4213922 () Bool)

(assert (=> b!7010285 (= e!4213922 (not (matchZipper!2858 lt!2504068 (t!381255 s!7408))))))

(declare-fun lt!2504065 () Unit!161314)

(assert (=> b!7010285 (= lt!2504065 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun b!7010286 () Bool)

(declare-fun res!2860520 () Bool)

(assert (=> b!7010286 (=> (not res!2860520) (not e!4213912))))

(assert (=> b!7010286 (= res!2860520 (is-Cons!67376 s!7408))))

(declare-fun res!2860505 () Bool)

(assert (=> start!675158 (=> (not res!2860505) (not e!4213912))))

(assert (=> start!675158 (= res!2860505 (matchZipper!2858 lt!2504040 s!7408))))

(declare-fun appendTo!439 ((Set Context!12628) Context!12628) (Set Context!12628))

(assert (=> start!675158 (= lt!2504040 (appendTo!439 z1!570 ct2!306))))

(assert (=> start!675158 e!4213912))

(declare-fun condSetEmpty!48356 () Bool)

(assert (=> start!675158 (= condSetEmpty!48356 (= z1!570 (as set.empty (Set Context!12628))))))

(assert (=> start!675158 setRes!48356))

(declare-fun e!4213915 () Bool)

(assert (=> start!675158 (and (inv!86155 ct2!306) e!4213915)))

(declare-fun e!4213917 () Bool)

(assert (=> start!675158 e!4213917))

(declare-fun b!7010287 () Bool)

(declare-fun e!4213925 () Bool)

(assert (=> b!7010287 (= e!4213925 e!4213916)))

(declare-fun res!2860504 () Bool)

(assert (=> b!7010287 (=> res!2860504 e!4213916)))

(declare-fun lt!2504059 () (Set Context!12628))

(declare-fun lt!2504075 () (Set Context!12628))

(declare-fun derivationStepZipper!2798 ((Set Context!12628) C!34906) (Set Context!12628))

(assert (=> b!7010287 (= res!2860504 (not (= (derivationStepZipper!2798 lt!2504059 (h!73824 s!7408)) lt!2504075)))))

(declare-fun lambda!408425 () Int)

(declare-fun flatMap!2304 ((Set Context!12628) Int) (Set Context!12628))

(assert (=> b!7010287 (= (flatMap!2304 lt!2504059 lambda!408425) (derivationStepZipperUp!1968 lt!2504069 (h!73824 s!7408)))))

(declare-fun lt!2504048 () Unit!161314)

(declare-fun lemmaFlatMapOnSingletonSet!1819 ((Set Context!12628) Context!12628 Int) Unit!161314)

(assert (=> b!7010287 (= lt!2504048 (lemmaFlatMapOnSingletonSet!1819 lt!2504059 lt!2504069 lambda!408425))))

(assert (=> b!7010287 (= lt!2504075 (derivationStepZipperUp!1968 lt!2504069 (h!73824 s!7408)))))

(assert (=> b!7010287 (= lt!2504059 (set.insert lt!2504069 (as set.empty (Set Context!12628))))))

(declare-fun b!7010288 () Bool)

(declare-fun tp_is_empty!43861 () Bool)

(declare-fun tp!1932356 () Bool)

(assert (=> b!7010288 (= e!4213917 (and tp_is_empty!43861 tp!1932356))))

(declare-fun b!7010289 () Bool)

(assert (=> b!7010289 (= e!4213926 e!4213920)))

(declare-fun res!2860515 () Bool)

(assert (=> b!7010289 (=> res!2860515 e!4213920)))

(assert (=> b!7010289 (= res!2860515 e!4213922)))

(declare-fun res!2860512 () Bool)

(assert (=> b!7010289 (=> (not res!2860512) (not e!4213922))))

(declare-fun lt!2504058 () Bool)

(declare-fun lt!2504062 () Bool)

(assert (=> b!7010289 (= res!2860512 (not (= lt!2504058 lt!2504062)))))

(assert (=> b!7010289 (= lt!2504058 (matchZipper!2858 lt!2504074 (t!381255 s!7408)))))

(declare-fun lt!2504054 () Unit!161314)

(assert (=> b!7010289 (= lt!2504054 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun e!4213918 () Bool)

(assert (=> b!7010289 (= (matchZipper!2858 lt!2504043 (t!381255 s!7408)) e!4213918)))

(declare-fun res!2860509 () Bool)

(assert (=> b!7010289 (=> res!2860509 e!4213918)))

(assert (=> b!7010289 (= res!2860509 lt!2504062)))

(assert (=> b!7010289 (= lt!2504062 (matchZipper!2858 lt!2504041 (t!381255 s!7408)))))

(declare-fun lt!2504063 () Unit!161314)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1491 ((Set Context!12628) (Set Context!12628) List!67500) Unit!161314)

(assert (=> b!7010289 (= lt!2504063 (lemmaZipperConcatMatchesSameAsBothZippers!1491 lt!2504041 lt!2504068 (t!381255 s!7408)))))

(declare-fun lt!2504071 () Unit!161314)

(assert (=> b!7010289 (= lt!2504071 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun lt!2504055 () Unit!161314)

(assert (=> b!7010289 (= lt!2504055 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun e!4213928 () Bool)

(assert (=> b!7010290 (= e!4213927 e!4213928)))

(declare-fun res!2860514 () Bool)

(assert (=> b!7010290 (=> res!2860514 e!4213928)))

(declare-fun lt!2504046 () Context!12628)

(assert (=> b!7010290 (= res!2860514 (or (not (= lt!2504046 lt!2504049)) (not (set.member lt!2504069 z1!570))))))

(assert (=> b!7010290 (= lt!2504046 (Context!12629 (++!15315 (exprs!6814 lt!2504069) (exprs!6814 ct2!306))))))

(declare-fun lt!2504064 () Unit!161314)

(assert (=> b!7010290 (= lt!2504064 (lemmaConcatPreservesForall!654 (exprs!6814 lt!2504069) (exprs!6814 ct2!306) lambda!408424))))

(declare-fun lambda!408423 () Int)

(declare-fun mapPost2!173 ((Set Context!12628) Int Context!12628) Context!12628)

(assert (=> b!7010290 (= lt!2504069 (mapPost2!173 z1!570 lambda!408423 lt!2504049))))

(declare-fun b!7010291 () Bool)

(declare-fun tp!1932355 () Bool)

(assert (=> b!7010291 (= e!4213924 tp!1932355)))

(declare-fun b!7010292 () Bool)

(declare-fun e!4213923 () Bool)

(assert (=> b!7010292 (= e!4213928 e!4213923)))

(declare-fun res!2860519 () Bool)

(assert (=> b!7010292 (=> res!2860519 e!4213923)))

(declare-fun lt!2504034 () (Set Context!12628))

(assert (=> b!7010292 (= res!2860519 (not (= lt!2504034 lt!2504035)))))

(assert (=> b!7010292 (= lt!2504034 (set.insert lt!2504046 (as set.empty (Set Context!12628))))))

(declare-fun lt!2504042 () Unit!161314)

(assert (=> b!7010292 (= lt!2504042 (lemmaConcatPreservesForall!654 (exprs!6814 lt!2504069) (exprs!6814 ct2!306) lambda!408424))))

(declare-fun b!7010293 () Bool)

(declare-fun e!4213921 () Bool)

(assert (=> b!7010293 (= e!4213913 e!4213921)))

(declare-fun res!2860518 () Bool)

(assert (=> b!7010293 (=> res!2860518 e!4213921)))

(assert (=> b!7010293 (= res!2860518 (not lt!2504062))))

(declare-fun lt!2504057 () Unit!161314)

(assert (=> b!7010293 (= lt!2504057 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun lt!2504073 () Unit!161314)

(assert (=> b!7010293 (= lt!2504073 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun b!7010294 () Bool)

(declare-fun res!2860506 () Bool)

(assert (=> b!7010294 (=> res!2860506 e!4213925)))

(declare-datatypes ((tuple2!67942 0))(
  ( (tuple2!67943 (_1!37274 List!67500) (_2!37274 List!67500)) )
))
(declare-fun lt!2504047 () tuple2!67942)

(declare-fun ++!15316 (List!67500 List!67500) List!67500)

(assert (=> b!7010294 (= res!2860506 (not (= (++!15316 (_1!37274 lt!2504047) (_2!37274 lt!2504047)) (t!381255 s!7408))))))

(declare-fun b!7010295 () Bool)

(declare-fun tp!1932354 () Bool)

(assert (=> b!7010295 (= e!4213915 tp!1932354)))

(declare-fun b!7010296 () Bool)

(assert (=> b!7010296 (= e!4213921 e!4213925)))

(declare-fun res!2860513 () Bool)

(assert (=> b!7010296 (=> res!2860513 e!4213925)))

(declare-fun lt!2504037 () (Set Context!12628))

(assert (=> b!7010296 (= res!2860513 (not (matchZipper!2858 lt!2504037 (_1!37274 lt!2504047))))))

(declare-datatypes ((Option!16803 0))(
  ( (None!16802) (Some!16802 (v!53080 tuple2!67942)) )
))
(declare-fun lt!2504051 () Option!16803)

(declare-fun get!23624 (Option!16803) tuple2!67942)

(assert (=> b!7010296 (= lt!2504047 (get!23624 lt!2504051))))

(declare-fun isDefined!13504 (Option!16803) Bool)

(assert (=> b!7010296 (isDefined!13504 lt!2504051)))

(declare-fun lt!2504066 () (Set Context!12628))

(declare-fun findConcatSeparationZippers!319 ((Set Context!12628) (Set Context!12628) List!67500 List!67500 List!67500) Option!16803)

(assert (=> b!7010296 (= lt!2504051 (findConcatSeparationZippers!319 lt!2504037 lt!2504066 Nil!67376 (t!381255 s!7408) (t!381255 s!7408)))))

(assert (=> b!7010296 (= lt!2504066 (set.insert ct2!306 (as set.empty (Set Context!12628))))))

(declare-fun lt!2504045 () Unit!161314)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!319 ((Set Context!12628) Context!12628 List!67500) Unit!161314)

(assert (=> b!7010296 (= lt!2504045 (lemmaConcatZipperMatchesStringThenFindConcatDefined!319 lt!2504037 ct2!306 (t!381255 s!7408)))))

(declare-fun lt!2504038 () Unit!161314)

(assert (=> b!7010296 (= lt!2504038 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(assert (=> b!7010296 (= lt!2504041 (appendTo!439 lt!2504037 ct2!306))))

(declare-fun lt!2504067 () Context!12628)

(assert (=> b!7010296 (= lt!2504037 (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) lt!2504067 (h!73824 s!7408)))))

(declare-fun lt!2504044 () Unit!161314)

(assert (=> b!7010296 (= lt!2504044 (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(declare-fun lt!2504053 () Unit!161314)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!17 (Context!12628 Regex!17318 C!34906 Context!12628) Unit!161314)

(assert (=> b!7010296 (= lt!2504053 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!17 lt!2504067 (h!73823 (exprs!6814 lt!2504069)) (h!73824 s!7408) ct2!306))))

(declare-fun b!7010297 () Bool)

(declare-fun res!2860521 () Bool)

(assert (=> b!7010297 (=> res!2860521 e!4213920)))

(assert (=> b!7010297 (= res!2860521 (not lt!2504058))))

(declare-fun b!7010298 () Bool)

(declare-fun res!2860511 () Bool)

(declare-fun e!4213919 () Bool)

(assert (=> b!7010298 (=> res!2860511 e!4213919)))

(declare-fun isEmpty!39348 (List!67499) Bool)

(assert (=> b!7010298 (= res!2860511 (isEmpty!39348 (exprs!6814 lt!2504069)))))

(declare-fun b!7010299 () Bool)

(declare-fun res!2860508 () Bool)

(assert (=> b!7010299 (=> res!2860508 e!4213925)))

(assert (=> b!7010299 (= res!2860508 (not (matchZipper!2858 lt!2504066 (_2!37274 lt!2504047))))))

(assert (=> b!7010300 (= e!4213923 e!4213919)))

(declare-fun res!2860501 () Bool)

(assert (=> b!7010300 (=> res!2860501 e!4213919)))

(assert (=> b!7010300 (= res!2860501 (not (= (derivationStepZipper!2798 lt!2504034 (h!73824 s!7408)) lt!2504074)))))

(assert (=> b!7010300 (= (flatMap!2304 lt!2504034 lambda!408425) (derivationStepZipperUp!1968 lt!2504046 (h!73824 s!7408)))))

(declare-fun lt!2504052 () Unit!161314)

(assert (=> b!7010300 (= lt!2504052 (lemmaFlatMapOnSingletonSet!1819 lt!2504034 lt!2504046 lambda!408425))))

(assert (=> b!7010300 (= lt!2504074 (derivationStepZipperUp!1968 lt!2504046 (h!73824 s!7408)))))

(declare-fun lt!2504056 () Unit!161314)

(assert (=> b!7010300 (= lt!2504056 (lemmaConcatPreservesForall!654 (exprs!6814 lt!2504069) (exprs!6814 ct2!306) lambda!408424))))

(declare-fun b!7010301 () Bool)

(assert (=> b!7010301 (= e!4213919 e!4213914)))

(declare-fun res!2860502 () Bool)

(assert (=> b!7010301 (=> res!2860502 e!4213914)))

(declare-fun nullable!7078 (Regex!17318) Bool)

(assert (=> b!7010301 (= res!2860502 (not (nullable!7078 (h!73823 (exprs!6814 lt!2504069)))))))

(assert (=> b!7010301 (= lt!2504067 (Context!12629 lt!2504061))))

(declare-fun tail!13392 (List!67499) List!67499)

(assert (=> b!7010301 (= lt!2504061 (tail!13392 (exprs!6814 lt!2504069)))))

(declare-fun b!7010302 () Bool)

(declare-fun res!2860510 () Bool)

(assert (=> b!7010302 (=> res!2860510 e!4213919)))

(assert (=> b!7010302 (= res!2860510 (not (is-Cons!67375 (exprs!6814 lt!2504069))))))

(declare-fun b!7010303 () Bool)

(assert (=> b!7010303 (= e!4213918 (matchZipper!2858 lt!2504068 (t!381255 s!7408)))))

(assert (= (and start!675158 res!2860505) b!7010286))

(assert (= (and b!7010286 res!2860520) b!7010282))

(assert (= (and b!7010282 (not res!2860517)) b!7010284))

(assert (= (and b!7010284 (not res!2860503)) b!7010290))

(assert (= (and b!7010290 (not res!2860514)) b!7010292))

(assert (= (and b!7010292 (not res!2860519)) b!7010300))

(assert (= (and b!7010300 (not res!2860501)) b!7010302))

(assert (= (and b!7010302 (not res!2860510)) b!7010298))

(assert (= (and b!7010298 (not res!2860511)) b!7010301))

(assert (= (and b!7010301 (not res!2860502)) b!7010283))

(assert (= (and b!7010283 (not res!2860516)) b!7010289))

(assert (= (and b!7010289 (not res!2860509)) b!7010303))

(assert (= (and b!7010289 res!2860512) b!7010285))

(assert (= (and b!7010289 (not res!2860515)) b!7010297))

(assert (= (and b!7010297 (not res!2860521)) b!7010280))

(assert (= (and b!7010280 (not res!2860507)) b!7010293))

(assert (= (and b!7010293 (not res!2860518)) b!7010296))

(assert (= (and b!7010296 (not res!2860513)) b!7010299))

(assert (= (and b!7010299 (not res!2860508)) b!7010294))

(assert (= (and b!7010294 (not res!2860506)) b!7010287))

(assert (= (and b!7010287 (not res!2860504)) b!7010281))

(assert (= (and start!675158 condSetEmpty!48356) setIsEmpty!48356))

(assert (= (and start!675158 (not condSetEmpty!48356)) setNonEmpty!48356))

(assert (= setNonEmpty!48356 b!7010291))

(assert (= start!675158 b!7010295))

(assert (= (and start!675158 (is-Cons!67376 s!7408)) b!7010288))

(declare-fun m!7708082 () Bool)

(assert (=> b!7010303 m!7708082))

(declare-fun m!7708084 () Bool)

(assert (=> b!7010298 m!7708084))

(declare-fun m!7708086 () Bool)

(assert (=> b!7010292 m!7708086))

(declare-fun m!7708088 () Bool)

(assert (=> b!7010292 m!7708088))

(declare-fun m!7708090 () Bool)

(assert (=> b!7010289 m!7708090))

(declare-fun m!7708092 () Bool)

(assert (=> b!7010289 m!7708092))

(declare-fun m!7708094 () Bool)

(assert (=> b!7010289 m!7708094))

(declare-fun m!7708096 () Bool)

(assert (=> b!7010289 m!7708096))

(declare-fun m!7708098 () Bool)

(assert (=> b!7010289 m!7708098))

(assert (=> b!7010289 m!7708098))

(assert (=> b!7010289 m!7708098))

(declare-fun m!7708100 () Bool)

(assert (=> setNonEmpty!48356 m!7708100))

(declare-fun m!7708102 () Bool)

(assert (=> b!7010300 m!7708102))

(declare-fun m!7708104 () Bool)

(assert (=> b!7010300 m!7708104))

(assert (=> b!7010300 m!7708088))

(declare-fun m!7708106 () Bool)

(assert (=> b!7010300 m!7708106))

(declare-fun m!7708108 () Bool)

(assert (=> b!7010300 m!7708108))

(declare-fun m!7708110 () Bool)

(assert (=> b!7010282 m!7708110))

(declare-fun m!7708112 () Bool)

(assert (=> b!7010282 m!7708112))

(declare-fun m!7708114 () Bool)

(assert (=> b!7010282 m!7708114))

(declare-fun m!7708116 () Bool)

(assert (=> b!7010282 m!7708116))

(declare-fun m!7708118 () Bool)

(assert (=> b!7010282 m!7708118))

(declare-fun m!7708120 () Bool)

(assert (=> b!7010282 m!7708120))

(assert (=> b!7010285 m!7708082))

(assert (=> b!7010285 m!7708098))

(assert (=> b!7010293 m!7708098))

(assert (=> b!7010293 m!7708098))

(declare-fun m!7708122 () Bool)

(assert (=> b!7010287 m!7708122))

(declare-fun m!7708124 () Bool)

(assert (=> b!7010287 m!7708124))

(declare-fun m!7708126 () Bool)

(assert (=> b!7010287 m!7708126))

(declare-fun m!7708128 () Bool)

(assert (=> b!7010287 m!7708128))

(declare-fun m!7708130 () Bool)

(assert (=> b!7010287 m!7708130))

(declare-fun m!7708132 () Bool)

(assert (=> b!7010290 m!7708132))

(declare-fun m!7708134 () Bool)

(assert (=> b!7010290 m!7708134))

(assert (=> b!7010290 m!7708088))

(declare-fun m!7708136 () Bool)

(assert (=> b!7010290 m!7708136))

(declare-fun m!7708138 () Bool)

(assert (=> b!7010284 m!7708138))

(declare-fun m!7708140 () Bool)

(assert (=> b!7010301 m!7708140))

(declare-fun m!7708142 () Bool)

(assert (=> b!7010301 m!7708142))

(declare-fun m!7708144 () Bool)

(assert (=> b!7010296 m!7708144))

(declare-fun m!7708146 () Bool)

(assert (=> b!7010296 m!7708146))

(declare-fun m!7708148 () Bool)

(assert (=> b!7010296 m!7708148))

(declare-fun m!7708150 () Bool)

(assert (=> b!7010296 m!7708150))

(declare-fun m!7708152 () Bool)

(assert (=> b!7010296 m!7708152))

(declare-fun m!7708154 () Bool)

(assert (=> b!7010296 m!7708154))

(declare-fun m!7708156 () Bool)

(assert (=> b!7010296 m!7708156))

(declare-fun m!7708158 () Bool)

(assert (=> b!7010296 m!7708158))

(assert (=> b!7010296 m!7708098))

(assert (=> b!7010296 m!7708098))

(declare-fun m!7708160 () Bool)

(assert (=> b!7010296 m!7708160))

(assert (=> b!7010280 m!7708082))

(assert (=> b!7010280 m!7708098))

(declare-fun m!7708162 () Bool)

(assert (=> b!7010294 m!7708162))

(declare-fun m!7708164 () Bool)

(assert (=> b!7010299 m!7708164))

(declare-fun m!7708166 () Bool)

(assert (=> b!7010281 m!7708166))

(declare-fun m!7708168 () Bool)

(assert (=> start!675158 m!7708168))

(declare-fun m!7708170 () Bool)

(assert (=> start!675158 m!7708170))

(declare-fun m!7708172 () Bool)

(assert (=> start!675158 m!7708172))

(declare-fun m!7708174 () Bool)

(assert (=> b!7010283 m!7708174))

(declare-fun m!7708176 () Bool)

(assert (=> b!7010283 m!7708176))

(declare-fun m!7708178 () Bool)

(assert (=> b!7010283 m!7708178))

(assert (=> b!7010283 m!7708098))

(assert (=> b!7010283 m!7708098))

(push 1)

(assert (not b!7010294))

(assert (not setNonEmpty!48356))

(assert (not b!7010301))

(assert (not start!675158))

(assert (not b!7010285))

(assert (not b!7010296))

(assert (not b!7010290))

(assert (not b!7010288))

(assert (not b!7010303))

(assert (not b!7010282))

(assert (not b!7010289))

(assert (not b!7010287))

(assert (not b!7010295))

(assert (not b!7010283))

(assert (not b!7010281))

(assert (not b!7010293))

(assert (not b!7010298))

(assert (not b!7010300))

(assert (not b!7010299))

(assert (not b!7010280))

(assert tp_is_empty!43861)

(assert (not b!7010291))

(assert (not b!7010292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2185251 () Bool)

(declare-fun nullableFct!2682 (Regex!17318) Bool)

(assert (=> d!2185251 (= (nullable!7078 (h!73823 (exprs!6814 lt!2504069))) (nullableFct!2682 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun bs!1866077 () Bool)

(assert (= bs!1866077 d!2185251))

(declare-fun m!7708278 () Bool)

(assert (=> bs!1866077 m!7708278))

(assert (=> b!7010301 d!2185251))

(declare-fun d!2185253 () Bool)

(assert (=> d!2185253 (= (tail!13392 (exprs!6814 lt!2504069)) (t!381254 (exprs!6814 lt!2504069)))))

(assert (=> b!7010301 d!2185253))

(declare-fun bs!1866078 () Bool)

(declare-fun d!2185255 () Bool)

(assert (= bs!1866078 (and d!2185255 b!7010290)))

(declare-fun lambda!408472 () Int)

(assert (=> bs!1866078 (= lambda!408472 lambda!408424)))

(declare-fun forall!16234 (List!67499 Int) Bool)

(assert (=> d!2185255 (= (inv!86155 setElem!48356) (forall!16234 (exprs!6814 setElem!48356) lambda!408472))))

(declare-fun bs!1866079 () Bool)

(assert (= bs!1866079 d!2185255))

(declare-fun m!7708280 () Bool)

(assert (=> bs!1866079 m!7708280))

(assert (=> setNonEmpty!48356 d!2185255))

(declare-fun d!2185257 () Bool)

(declare-fun c!1302140 () Bool)

(declare-fun isEmpty!39350 (List!67500) Bool)

(assert (=> d!2185257 (= c!1302140 (isEmpty!39350 (t!381255 s!7408)))))

(declare-fun e!4213982 () Bool)

(assert (=> d!2185257 (= (matchZipper!2858 lt!2504041 (t!381255 s!7408)) e!4213982)))

(declare-fun b!7010392 () Bool)

(declare-fun nullableZipper!2487 ((Set Context!12628)) Bool)

(assert (=> b!7010392 (= e!4213982 (nullableZipper!2487 lt!2504041))))

(declare-fun b!7010393 () Bool)

(declare-fun head!14173 (List!67500) C!34906)

(declare-fun tail!13394 (List!67500) List!67500)

(assert (=> b!7010393 (= e!4213982 (matchZipper!2858 (derivationStepZipper!2798 lt!2504041 (head!14173 (t!381255 s!7408))) (tail!13394 (t!381255 s!7408))))))

(assert (= (and d!2185257 c!1302140) b!7010392))

(assert (= (and d!2185257 (not c!1302140)) b!7010393))

(declare-fun m!7708282 () Bool)

(assert (=> d!2185257 m!7708282))

(declare-fun m!7708284 () Bool)

(assert (=> b!7010392 m!7708284))

(declare-fun m!7708286 () Bool)

(assert (=> b!7010393 m!7708286))

(assert (=> b!7010393 m!7708286))

(declare-fun m!7708288 () Bool)

(assert (=> b!7010393 m!7708288))

(declare-fun m!7708290 () Bool)

(assert (=> b!7010393 m!7708290))

(assert (=> b!7010393 m!7708288))

(assert (=> b!7010393 m!7708290))

(declare-fun m!7708292 () Bool)

(assert (=> b!7010393 m!7708292))

(assert (=> b!7010289 d!2185257))

(declare-fun d!2185259 () Bool)

(declare-fun e!4213985 () Bool)

(assert (=> d!2185259 (= (matchZipper!2858 (set.union lt!2504041 lt!2504068) (t!381255 s!7408)) e!4213985)))

(declare-fun res!2860588 () Bool)

(assert (=> d!2185259 (=> res!2860588 e!4213985)))

(assert (=> d!2185259 (= res!2860588 (matchZipper!2858 lt!2504041 (t!381255 s!7408)))))

(declare-fun lt!2504206 () Unit!161314)

(declare-fun choose!52698 ((Set Context!12628) (Set Context!12628) List!67500) Unit!161314)

(assert (=> d!2185259 (= lt!2504206 (choose!52698 lt!2504041 lt!2504068 (t!381255 s!7408)))))

(assert (=> d!2185259 (= (lemmaZipperConcatMatchesSameAsBothZippers!1491 lt!2504041 lt!2504068 (t!381255 s!7408)) lt!2504206)))

(declare-fun b!7010396 () Bool)

(assert (=> b!7010396 (= e!4213985 (matchZipper!2858 lt!2504068 (t!381255 s!7408)))))

(assert (= (and d!2185259 (not res!2860588)) b!7010396))

(declare-fun m!7708294 () Bool)

(assert (=> d!2185259 m!7708294))

(assert (=> d!2185259 m!7708094))

(declare-fun m!7708296 () Bool)

(assert (=> d!2185259 m!7708296))

(assert (=> b!7010396 m!7708082))

(assert (=> b!7010289 d!2185259))

(declare-fun d!2185261 () Bool)

(declare-fun c!1302141 () Bool)

(assert (=> d!2185261 (= c!1302141 (isEmpty!39350 (t!381255 s!7408)))))

(declare-fun e!4213986 () Bool)

(assert (=> d!2185261 (= (matchZipper!2858 lt!2504074 (t!381255 s!7408)) e!4213986)))

(declare-fun b!7010397 () Bool)

(assert (=> b!7010397 (= e!4213986 (nullableZipper!2487 lt!2504074))))

(declare-fun b!7010398 () Bool)

(assert (=> b!7010398 (= e!4213986 (matchZipper!2858 (derivationStepZipper!2798 lt!2504074 (head!14173 (t!381255 s!7408))) (tail!13394 (t!381255 s!7408))))))

(assert (= (and d!2185261 c!1302141) b!7010397))

(assert (= (and d!2185261 (not c!1302141)) b!7010398))

(assert (=> d!2185261 m!7708282))

(declare-fun m!7708298 () Bool)

(assert (=> b!7010397 m!7708298))

(assert (=> b!7010398 m!7708286))

(assert (=> b!7010398 m!7708286))

(declare-fun m!7708300 () Bool)

(assert (=> b!7010398 m!7708300))

(assert (=> b!7010398 m!7708290))

(assert (=> b!7010398 m!7708300))

(assert (=> b!7010398 m!7708290))

(declare-fun m!7708302 () Bool)

(assert (=> b!7010398 m!7708302))

(assert (=> b!7010289 d!2185261))

(declare-fun d!2185263 () Bool)

(declare-fun c!1302142 () Bool)

(assert (=> d!2185263 (= c!1302142 (isEmpty!39350 (t!381255 s!7408)))))

(declare-fun e!4213987 () Bool)

(assert (=> d!2185263 (= (matchZipper!2858 lt!2504043 (t!381255 s!7408)) e!4213987)))

(declare-fun b!7010399 () Bool)

(assert (=> b!7010399 (= e!4213987 (nullableZipper!2487 lt!2504043))))

(declare-fun b!7010400 () Bool)

(assert (=> b!7010400 (= e!4213987 (matchZipper!2858 (derivationStepZipper!2798 lt!2504043 (head!14173 (t!381255 s!7408))) (tail!13394 (t!381255 s!7408))))))

(assert (= (and d!2185263 c!1302142) b!7010399))

(assert (= (and d!2185263 (not c!1302142)) b!7010400))

(assert (=> d!2185263 m!7708282))

(declare-fun m!7708304 () Bool)

(assert (=> b!7010399 m!7708304))

(assert (=> b!7010400 m!7708286))

(assert (=> b!7010400 m!7708286))

(declare-fun m!7708306 () Bool)

(assert (=> b!7010400 m!7708306))

(assert (=> b!7010400 m!7708290))

(assert (=> b!7010400 m!7708306))

(assert (=> b!7010400 m!7708290))

(declare-fun m!7708308 () Bool)

(assert (=> b!7010400 m!7708308))

(assert (=> b!7010289 d!2185263))

(declare-fun d!2185265 () Bool)

(assert (=> d!2185265 (forall!16234 (++!15315 lt!2504061 (exprs!6814 ct2!306)) lambda!408424)))

(declare-fun lt!2504209 () Unit!161314)

(declare-fun choose!52699 (List!67499 List!67499 Int) Unit!161314)

(assert (=> d!2185265 (= lt!2504209 (choose!52699 lt!2504061 (exprs!6814 ct2!306) lambda!408424))))

(assert (=> d!2185265 (forall!16234 lt!2504061 lambda!408424)))

(assert (=> d!2185265 (= (lemmaConcatPreservesForall!654 lt!2504061 (exprs!6814 ct2!306) lambda!408424) lt!2504209)))

(declare-fun bs!1866080 () Bool)

(assert (= bs!1866080 d!2185265))

(assert (=> bs!1866080 m!7708174))

(assert (=> bs!1866080 m!7708174))

(declare-fun m!7708310 () Bool)

(assert (=> bs!1866080 m!7708310))

(declare-fun m!7708312 () Bool)

(assert (=> bs!1866080 m!7708312))

(declare-fun m!7708314 () Bool)

(assert (=> bs!1866080 m!7708314))

(assert (=> b!7010289 d!2185265))

(declare-fun d!2185267 () Bool)

(assert (=> d!2185267 (forall!16234 (++!15315 (exprs!6814 lt!2504069) (exprs!6814 ct2!306)) lambda!408424)))

(declare-fun lt!2504210 () Unit!161314)

(assert (=> d!2185267 (= lt!2504210 (choose!52699 (exprs!6814 lt!2504069) (exprs!6814 ct2!306) lambda!408424))))

(assert (=> d!2185267 (forall!16234 (exprs!6814 lt!2504069) lambda!408424)))

(assert (=> d!2185267 (= (lemmaConcatPreservesForall!654 (exprs!6814 lt!2504069) (exprs!6814 ct2!306) lambda!408424) lt!2504210)))

(declare-fun bs!1866081 () Bool)

(assert (= bs!1866081 d!2185267))

(assert (=> bs!1866081 m!7708134))

(assert (=> bs!1866081 m!7708134))

(declare-fun m!7708316 () Bool)

(assert (=> bs!1866081 m!7708316))

(declare-fun m!7708318 () Bool)

(assert (=> bs!1866081 m!7708318))

(declare-fun m!7708320 () Bool)

(assert (=> bs!1866081 m!7708320))

(assert (=> b!7010300 d!2185267))

(declare-fun bs!1866082 () Bool)

(declare-fun d!2185269 () Bool)

(assert (= bs!1866082 (and d!2185269 b!7010300)))

(declare-fun lambda!408475 () Int)

(assert (=> bs!1866082 (= lambda!408475 lambda!408425)))

(assert (=> d!2185269 true))

(assert (=> d!2185269 (= (derivationStepZipper!2798 lt!2504034 (h!73824 s!7408)) (flatMap!2304 lt!2504034 lambda!408475))))

(declare-fun bs!1866083 () Bool)

(assert (= bs!1866083 d!2185269))

(declare-fun m!7708322 () Bool)

(assert (=> bs!1866083 m!7708322))

(assert (=> b!7010300 d!2185269))

(declare-fun d!2185271 () Bool)

(declare-fun dynLambda!27101 (Int Context!12628) (Set Context!12628))

(assert (=> d!2185271 (= (flatMap!2304 lt!2504034 lambda!408425) (dynLambda!27101 lambda!408425 lt!2504046))))

(declare-fun lt!2504213 () Unit!161314)

(declare-fun choose!52700 ((Set Context!12628) Context!12628 Int) Unit!161314)

(assert (=> d!2185271 (= lt!2504213 (choose!52700 lt!2504034 lt!2504046 lambda!408425))))

(assert (=> d!2185271 (= lt!2504034 (set.insert lt!2504046 (as set.empty (Set Context!12628))))))

(assert (=> d!2185271 (= (lemmaFlatMapOnSingletonSet!1819 lt!2504034 lt!2504046 lambda!408425) lt!2504213)))

(declare-fun b_lambda!264343 () Bool)

(assert (=> (not b_lambda!264343) (not d!2185271)))

(declare-fun bs!1866084 () Bool)

(assert (= bs!1866084 d!2185271))

(assert (=> bs!1866084 m!7708106))

(declare-fun m!7708324 () Bool)

(assert (=> bs!1866084 m!7708324))

(declare-fun m!7708326 () Bool)

(assert (=> bs!1866084 m!7708326))

(assert (=> bs!1866084 m!7708086))

(assert (=> b!7010300 d!2185271))

(declare-fun b!7010413 () Bool)

(declare-fun e!4213994 () (Set Context!12628))

(declare-fun call!636694 () (Set Context!12628))

(assert (=> b!7010413 (= e!4213994 (set.union call!636694 (derivationStepZipperUp!1968 (Context!12629 (t!381254 (exprs!6814 lt!2504046))) (h!73824 s!7408))))))

(declare-fun b!7010414 () Bool)

(declare-fun e!4213996 () (Set Context!12628))

(assert (=> b!7010414 (= e!4213996 call!636694)))

(declare-fun d!2185273 () Bool)

(declare-fun c!1302150 () Bool)

(declare-fun e!4213995 () Bool)

(assert (=> d!2185273 (= c!1302150 e!4213995)))

(declare-fun res!2860591 () Bool)

(assert (=> d!2185273 (=> (not res!2860591) (not e!4213995))))

(assert (=> d!2185273 (= res!2860591 (is-Cons!67375 (exprs!6814 lt!2504046)))))

(assert (=> d!2185273 (= (derivationStepZipperUp!1968 lt!2504046 (h!73824 s!7408)) e!4213994)))

(declare-fun bm!636689 () Bool)

(assert (=> bm!636689 (= call!636694 (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504046)) (Context!12629 (t!381254 (exprs!6814 lt!2504046))) (h!73824 s!7408)))))

(declare-fun b!7010415 () Bool)

(assert (=> b!7010415 (= e!4213996 (as set.empty (Set Context!12628)))))

(declare-fun b!7010416 () Bool)

(assert (=> b!7010416 (= e!4213994 e!4213996)))

(declare-fun c!1302149 () Bool)

(assert (=> b!7010416 (= c!1302149 (is-Cons!67375 (exprs!6814 lt!2504046)))))

(declare-fun b!7010417 () Bool)

(assert (=> b!7010417 (= e!4213995 (nullable!7078 (h!73823 (exprs!6814 lt!2504046))))))

(assert (= (and d!2185273 res!2860591) b!7010417))

(assert (= (and d!2185273 c!1302150) b!7010413))

(assert (= (and d!2185273 (not c!1302150)) b!7010416))

(assert (= (and b!7010416 c!1302149) b!7010414))

(assert (= (and b!7010416 (not c!1302149)) b!7010415))

(assert (= (or b!7010413 b!7010414) bm!636689))

(declare-fun m!7708328 () Bool)

(assert (=> b!7010413 m!7708328))

(declare-fun m!7708330 () Bool)

(assert (=> bm!636689 m!7708330))

(declare-fun m!7708332 () Bool)

(assert (=> b!7010417 m!7708332))

(assert (=> b!7010300 d!2185273))

(declare-fun d!2185275 () Bool)

(declare-fun choose!52701 ((Set Context!12628) Int) (Set Context!12628))

(assert (=> d!2185275 (= (flatMap!2304 lt!2504034 lambda!408425) (choose!52701 lt!2504034 lambda!408425))))

(declare-fun bs!1866085 () Bool)

(assert (= bs!1866085 d!2185275))

(declare-fun m!7708334 () Bool)

(assert (=> bs!1866085 m!7708334))

(assert (=> b!7010300 d!2185275))

(declare-fun b!7010436 () Bool)

(declare-fun e!4214011 () Bool)

(declare-fun e!4214014 () Bool)

(assert (=> b!7010436 (= e!4214011 e!4214014)))

(declare-fun res!2860604 () Bool)

(assert (=> b!7010436 (=> (not res!2860604) (not e!4214014))))

(declare-fun call!636702 () Bool)

(assert (=> b!7010436 (= res!2860604 call!636702)))

(declare-fun b!7010437 () Bool)

(declare-fun res!2860605 () Bool)

(declare-fun e!4214015 () Bool)

(assert (=> b!7010437 (=> (not res!2860605) (not e!4214015))))

(assert (=> b!7010437 (= res!2860605 call!636702)))

(declare-fun e!4214013 () Bool)

(assert (=> b!7010437 (= e!4214013 e!4214015)))

(declare-fun b!7010438 () Bool)

(declare-fun e!4214017 () Bool)

(declare-fun e!4214016 () Bool)

(assert (=> b!7010438 (= e!4214017 e!4214016)))

(declare-fun res!2860606 () Bool)

(assert (=> b!7010438 (= res!2860606 (not (nullable!7078 (reg!17647 (h!73823 (exprs!6814 lt!2504069))))))))

(assert (=> b!7010438 (=> (not res!2860606) (not e!4214016))))

(declare-fun b!7010439 () Bool)

(declare-fun res!2860603 () Bool)

(assert (=> b!7010439 (=> res!2860603 e!4214011)))

(assert (=> b!7010439 (= res!2860603 (not (is-Concat!26163 (h!73823 (exprs!6814 lt!2504069)))))))

(assert (=> b!7010439 (= e!4214013 e!4214011)))

(declare-fun b!7010440 () Bool)

(declare-fun e!4214012 () Bool)

(assert (=> b!7010440 (= e!4214012 e!4214017)))

(declare-fun c!1302156 () Bool)

(assert (=> b!7010440 (= c!1302156 (is-Star!17318 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun b!7010441 () Bool)

(assert (=> b!7010441 (= e!4214017 e!4214013)))

(declare-fun c!1302155 () Bool)

(assert (=> b!7010441 (= c!1302155 (is-Union!17318 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun b!7010442 () Bool)

(declare-fun call!636701 () Bool)

(assert (=> b!7010442 (= e!4214014 call!636701)))

(declare-fun bm!636697 () Bool)

(assert (=> bm!636697 (= call!636702 (validRegex!8888 (ite c!1302155 (regOne!35149 (h!73823 (exprs!6814 lt!2504069))) (regOne!35148 (h!73823 (exprs!6814 lt!2504069))))))))

(declare-fun bm!636698 () Bool)

(declare-fun call!636703 () Bool)

(assert (=> bm!636698 (= call!636701 call!636703)))

(declare-fun b!7010443 () Bool)

(assert (=> b!7010443 (= e!4214016 call!636703)))

(declare-fun b!7010444 () Bool)

(assert (=> b!7010444 (= e!4214015 call!636701)))

(declare-fun d!2185277 () Bool)

(declare-fun res!2860602 () Bool)

(assert (=> d!2185277 (=> res!2860602 e!4214012)))

(assert (=> d!2185277 (= res!2860602 (is-ElementMatch!17318 (h!73823 (exprs!6814 lt!2504069))))))

(assert (=> d!2185277 (= (validRegex!8888 (h!73823 (exprs!6814 lt!2504069))) e!4214012)))

(declare-fun bm!636696 () Bool)

(assert (=> bm!636696 (= call!636703 (validRegex!8888 (ite c!1302156 (reg!17647 (h!73823 (exprs!6814 lt!2504069))) (ite c!1302155 (regTwo!35149 (h!73823 (exprs!6814 lt!2504069))) (regTwo!35148 (h!73823 (exprs!6814 lt!2504069)))))))))

(assert (= (and d!2185277 (not res!2860602)) b!7010440))

(assert (= (and b!7010440 c!1302156) b!7010438))

(assert (= (and b!7010440 (not c!1302156)) b!7010441))

(assert (= (and b!7010438 res!2860606) b!7010443))

(assert (= (and b!7010441 c!1302155) b!7010437))

(assert (= (and b!7010441 (not c!1302155)) b!7010439))

(assert (= (and b!7010437 res!2860605) b!7010444))

(assert (= (and b!7010439 (not res!2860603)) b!7010436))

(assert (= (and b!7010436 res!2860604) b!7010442))

(assert (= (or b!7010444 b!7010442) bm!636698))

(assert (= (or b!7010437 b!7010436) bm!636697))

(assert (= (or b!7010443 bm!636698) bm!636696))

(declare-fun m!7708336 () Bool)

(assert (=> b!7010438 m!7708336))

(declare-fun m!7708338 () Bool)

(assert (=> bm!636697 m!7708338))

(declare-fun m!7708340 () Bool)

(assert (=> bm!636696 m!7708340))

(assert (=> b!7010281 d!2185277))

(declare-fun b!7010455 () Bool)

(declare-fun res!2860611 () Bool)

(declare-fun e!4214022 () Bool)

(assert (=> b!7010455 (=> (not res!2860611) (not e!4214022))))

(declare-fun lt!2504216 () List!67499)

(declare-fun size!40971 (List!67499) Int)

(assert (=> b!7010455 (= res!2860611 (= (size!40971 lt!2504216) (+ (size!40971 (exprs!6814 lt!2504069)) (size!40971 (exprs!6814 ct2!306)))))))

(declare-fun d!2185279 () Bool)

(assert (=> d!2185279 e!4214022))

(declare-fun res!2860612 () Bool)

(assert (=> d!2185279 (=> (not res!2860612) (not e!4214022))))

(declare-fun content!13371 (List!67499) (Set Regex!17318))

(assert (=> d!2185279 (= res!2860612 (= (content!13371 lt!2504216) (set.union (content!13371 (exprs!6814 lt!2504069)) (content!13371 (exprs!6814 ct2!306)))))))

(declare-fun e!4214023 () List!67499)

(assert (=> d!2185279 (= lt!2504216 e!4214023)))

(declare-fun c!1302159 () Bool)

(assert (=> d!2185279 (= c!1302159 (is-Nil!67375 (exprs!6814 lt!2504069)))))

(assert (=> d!2185279 (= (++!15315 (exprs!6814 lt!2504069) (exprs!6814 ct2!306)) lt!2504216)))

(declare-fun b!7010456 () Bool)

(assert (=> b!7010456 (= e!4214022 (or (not (= (exprs!6814 ct2!306) Nil!67375)) (= lt!2504216 (exprs!6814 lt!2504069))))))

(declare-fun b!7010454 () Bool)

(assert (=> b!7010454 (= e!4214023 (Cons!67375 (h!73823 (exprs!6814 lt!2504069)) (++!15315 (t!381254 (exprs!6814 lt!2504069)) (exprs!6814 ct2!306))))))

(declare-fun b!7010453 () Bool)

(assert (=> b!7010453 (= e!4214023 (exprs!6814 ct2!306))))

(assert (= (and d!2185279 c!1302159) b!7010453))

(assert (= (and d!2185279 (not c!1302159)) b!7010454))

(assert (= (and d!2185279 res!2860612) b!7010455))

(assert (= (and b!7010455 res!2860611) b!7010456))

(declare-fun m!7708342 () Bool)

(assert (=> b!7010455 m!7708342))

(declare-fun m!7708344 () Bool)

(assert (=> b!7010455 m!7708344))

(declare-fun m!7708346 () Bool)

(assert (=> b!7010455 m!7708346))

(declare-fun m!7708348 () Bool)

(assert (=> d!2185279 m!7708348))

(declare-fun m!7708350 () Bool)

(assert (=> d!2185279 m!7708350))

(declare-fun m!7708352 () Bool)

(assert (=> d!2185279 m!7708352))

(declare-fun m!7708354 () Bool)

(assert (=> b!7010454 m!7708354))

(assert (=> b!7010290 d!2185279))

(assert (=> b!7010290 d!2185267))

(declare-fun d!2185281 () Bool)

(declare-fun e!4214026 () Bool)

(assert (=> d!2185281 e!4214026))

(declare-fun res!2860615 () Bool)

(assert (=> d!2185281 (=> (not res!2860615) (not e!4214026))))

(declare-fun lt!2504219 () Context!12628)

(declare-fun dynLambda!27102 (Int Context!12628) Context!12628)

(assert (=> d!2185281 (= res!2860615 (= lt!2504049 (dynLambda!27102 lambda!408423 lt!2504219)))))

(declare-fun choose!52702 ((Set Context!12628) Int Context!12628) Context!12628)

(assert (=> d!2185281 (= lt!2504219 (choose!52702 z1!570 lambda!408423 lt!2504049))))

(declare-fun map!15611 ((Set Context!12628) Int) (Set Context!12628))

(assert (=> d!2185281 (set.member lt!2504049 (map!15611 z1!570 lambda!408423))))

(assert (=> d!2185281 (= (mapPost2!173 z1!570 lambda!408423 lt!2504049) lt!2504219)))

(declare-fun b!7010460 () Bool)

(assert (=> b!7010460 (= e!4214026 (set.member lt!2504219 z1!570))))

(assert (= (and d!2185281 res!2860615) b!7010460))

(declare-fun b_lambda!264345 () Bool)

(assert (=> (not b_lambda!264345) (not d!2185281)))

(declare-fun m!7708356 () Bool)

(assert (=> d!2185281 m!7708356))

(declare-fun m!7708358 () Bool)

(assert (=> d!2185281 m!7708358))

(declare-fun m!7708360 () Bool)

(assert (=> d!2185281 m!7708360))

(declare-fun m!7708362 () Bool)

(assert (=> d!2185281 m!7708362))

(declare-fun m!7708364 () Bool)

(assert (=> b!7010460 m!7708364))

(assert (=> b!7010290 d!2185281))

(declare-fun d!2185283 () Bool)

(declare-fun c!1302160 () Bool)

(assert (=> d!2185283 (= c!1302160 (isEmpty!39350 (_2!37274 lt!2504047)))))

(declare-fun e!4214027 () Bool)

(assert (=> d!2185283 (= (matchZipper!2858 lt!2504066 (_2!37274 lt!2504047)) e!4214027)))

(declare-fun b!7010461 () Bool)

(assert (=> b!7010461 (= e!4214027 (nullableZipper!2487 lt!2504066))))

(declare-fun b!7010462 () Bool)

(assert (=> b!7010462 (= e!4214027 (matchZipper!2858 (derivationStepZipper!2798 lt!2504066 (head!14173 (_2!37274 lt!2504047))) (tail!13394 (_2!37274 lt!2504047))))))

(assert (= (and d!2185283 c!1302160) b!7010461))

(assert (= (and d!2185283 (not c!1302160)) b!7010462))

(declare-fun m!7708366 () Bool)

(assert (=> d!2185283 m!7708366))

(declare-fun m!7708368 () Bool)

(assert (=> b!7010461 m!7708368))

(declare-fun m!7708370 () Bool)

(assert (=> b!7010462 m!7708370))

(assert (=> b!7010462 m!7708370))

(declare-fun m!7708372 () Bool)

(assert (=> b!7010462 m!7708372))

(declare-fun m!7708374 () Bool)

(assert (=> b!7010462 m!7708374))

(assert (=> b!7010462 m!7708372))

(assert (=> b!7010462 m!7708374))

(declare-fun m!7708376 () Bool)

(assert (=> b!7010462 m!7708376))

(assert (=> b!7010299 d!2185283))

(declare-fun d!2185285 () Bool)

(declare-fun c!1302161 () Bool)

(assert (=> d!2185285 (= c!1302161 (isEmpty!39350 s!7408))))

(declare-fun e!4214028 () Bool)

(assert (=> d!2185285 (= (matchZipper!2858 lt!2504040 s!7408) e!4214028)))

(declare-fun b!7010463 () Bool)

(assert (=> b!7010463 (= e!4214028 (nullableZipper!2487 lt!2504040))))

(declare-fun b!7010464 () Bool)

(assert (=> b!7010464 (= e!4214028 (matchZipper!2858 (derivationStepZipper!2798 lt!2504040 (head!14173 s!7408)) (tail!13394 s!7408)))))

(assert (= (and d!2185285 c!1302161) b!7010463))

(assert (= (and d!2185285 (not c!1302161)) b!7010464))

(declare-fun m!7708378 () Bool)

(assert (=> d!2185285 m!7708378))

(declare-fun m!7708380 () Bool)

(assert (=> b!7010463 m!7708380))

(declare-fun m!7708382 () Bool)

(assert (=> b!7010464 m!7708382))

(assert (=> b!7010464 m!7708382))

(declare-fun m!7708384 () Bool)

(assert (=> b!7010464 m!7708384))

(declare-fun m!7708386 () Bool)

(assert (=> b!7010464 m!7708386))

(assert (=> b!7010464 m!7708384))

(assert (=> b!7010464 m!7708386))

(declare-fun m!7708388 () Bool)

(assert (=> b!7010464 m!7708388))

(assert (=> start!675158 d!2185285))

(declare-fun bs!1866086 () Bool)

(declare-fun d!2185287 () Bool)

(assert (= bs!1866086 (and d!2185287 b!7010290)))

(declare-fun lambda!408480 () Int)

(assert (=> bs!1866086 (= lambda!408480 lambda!408423)))

(assert (=> d!2185287 true))

(assert (=> d!2185287 (= (appendTo!439 z1!570 ct2!306) (map!15611 z1!570 lambda!408480))))

(declare-fun bs!1866087 () Bool)

(assert (= bs!1866087 d!2185287))

(declare-fun m!7708390 () Bool)

(assert (=> bs!1866087 m!7708390))

(assert (=> start!675158 d!2185287))

(declare-fun bs!1866088 () Bool)

(declare-fun d!2185289 () Bool)

(assert (= bs!1866088 (and d!2185289 b!7010290)))

(declare-fun lambda!408481 () Int)

(assert (=> bs!1866088 (= lambda!408481 lambda!408424)))

(declare-fun bs!1866089 () Bool)

(assert (= bs!1866089 (and d!2185289 d!2185255)))

(assert (=> bs!1866089 (= lambda!408481 lambda!408472)))

(assert (=> d!2185289 (= (inv!86155 ct2!306) (forall!16234 (exprs!6814 ct2!306) lambda!408481))))

(declare-fun bs!1866090 () Bool)

(assert (= bs!1866090 d!2185289))

(declare-fun m!7708392 () Bool)

(assert (=> bs!1866090 m!7708392))

(assert (=> start!675158 d!2185289))

(declare-fun d!2185291 () Bool)

(declare-fun c!1302163 () Bool)

(assert (=> d!2185291 (= c!1302163 (isEmpty!39350 (t!381255 s!7408)))))

(declare-fun e!4214029 () Bool)

(assert (=> d!2185291 (= (matchZipper!2858 lt!2504068 (t!381255 s!7408)) e!4214029)))

(declare-fun b!7010465 () Bool)

(assert (=> b!7010465 (= e!4214029 (nullableZipper!2487 lt!2504068))))

(declare-fun b!7010466 () Bool)

(assert (=> b!7010466 (= e!4214029 (matchZipper!2858 (derivationStepZipper!2798 lt!2504068 (head!14173 (t!381255 s!7408))) (tail!13394 (t!381255 s!7408))))))

(assert (= (and d!2185291 c!1302163) b!7010465))

(assert (= (and d!2185291 (not c!1302163)) b!7010466))

(assert (=> d!2185291 m!7708282))

(declare-fun m!7708394 () Bool)

(assert (=> b!7010465 m!7708394))

(assert (=> b!7010466 m!7708286))

(assert (=> b!7010466 m!7708286))

(declare-fun m!7708396 () Bool)

(assert (=> b!7010466 m!7708396))

(assert (=> b!7010466 m!7708290))

(assert (=> b!7010466 m!7708396))

(assert (=> b!7010466 m!7708290))

(declare-fun m!7708398 () Bool)

(assert (=> b!7010466 m!7708398))

(assert (=> b!7010280 d!2185291))

(assert (=> b!7010280 d!2185265))

(declare-fun bs!1866091 () Bool)

(declare-fun d!2185293 () Bool)

(assert (= bs!1866091 (and d!2185293 b!7010300)))

(declare-fun lambda!408482 () Int)

(assert (=> bs!1866091 (= lambda!408482 lambda!408425)))

(declare-fun bs!1866092 () Bool)

(assert (= bs!1866092 (and d!2185293 d!2185269)))

(assert (=> bs!1866092 (= lambda!408482 lambda!408475)))

(assert (=> d!2185293 true))

(assert (=> d!2185293 (= (derivationStepZipper!2798 lt!2504059 (h!73824 s!7408)) (flatMap!2304 lt!2504059 lambda!408482))))

(declare-fun bs!1866093 () Bool)

(assert (= bs!1866093 d!2185293))

(declare-fun m!7708400 () Bool)

(assert (=> bs!1866093 m!7708400))

(assert (=> b!7010287 d!2185293))

(declare-fun d!2185295 () Bool)

(assert (=> d!2185295 (= (flatMap!2304 lt!2504059 lambda!408425) (choose!52701 lt!2504059 lambda!408425))))

(declare-fun bs!1866094 () Bool)

(assert (= bs!1866094 d!2185295))

(declare-fun m!7708402 () Bool)

(assert (=> bs!1866094 m!7708402))

(assert (=> b!7010287 d!2185295))

(declare-fun call!636704 () (Set Context!12628))

(declare-fun b!7010467 () Bool)

(declare-fun e!4214030 () (Set Context!12628))

(assert (=> b!7010467 (= e!4214030 (set.union call!636704 (derivationStepZipperUp!1968 (Context!12629 (t!381254 (exprs!6814 lt!2504069))) (h!73824 s!7408))))))

(declare-fun b!7010468 () Bool)

(declare-fun e!4214032 () (Set Context!12628))

(assert (=> b!7010468 (= e!4214032 call!636704)))

(declare-fun d!2185297 () Bool)

(declare-fun c!1302165 () Bool)

(declare-fun e!4214031 () Bool)

(assert (=> d!2185297 (= c!1302165 e!4214031)))

(declare-fun res!2860616 () Bool)

(assert (=> d!2185297 (=> (not res!2860616) (not e!4214031))))

(assert (=> d!2185297 (= res!2860616 (is-Cons!67375 (exprs!6814 lt!2504069)))))

(assert (=> d!2185297 (= (derivationStepZipperUp!1968 lt!2504069 (h!73824 s!7408)) e!4214030)))

(declare-fun bm!636699 () Bool)

(assert (=> bm!636699 (= call!636704 (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) (Context!12629 (t!381254 (exprs!6814 lt!2504069))) (h!73824 s!7408)))))

(declare-fun b!7010469 () Bool)

(assert (=> b!7010469 (= e!4214032 (as set.empty (Set Context!12628)))))

(declare-fun b!7010470 () Bool)

(assert (=> b!7010470 (= e!4214030 e!4214032)))

(declare-fun c!1302164 () Bool)

(assert (=> b!7010470 (= c!1302164 (is-Cons!67375 (exprs!6814 lt!2504069)))))

(declare-fun b!7010471 () Bool)

(assert (=> b!7010471 (= e!4214031 (nullable!7078 (h!73823 (exprs!6814 lt!2504069))))))

(assert (= (and d!2185297 res!2860616) b!7010471))

(assert (= (and d!2185297 c!1302165) b!7010467))

(assert (= (and d!2185297 (not c!1302165)) b!7010470))

(assert (= (and b!7010470 c!1302164) b!7010468))

(assert (= (and b!7010470 (not c!1302164)) b!7010469))

(assert (= (or b!7010467 b!7010468) bm!636699))

(declare-fun m!7708404 () Bool)

(assert (=> b!7010467 m!7708404))

(declare-fun m!7708406 () Bool)

(assert (=> bm!636699 m!7708406))

(assert (=> b!7010471 m!7708140))

(assert (=> b!7010287 d!2185297))

(declare-fun d!2185299 () Bool)

(assert (=> d!2185299 (= (flatMap!2304 lt!2504059 lambda!408425) (dynLambda!27101 lambda!408425 lt!2504069))))

(declare-fun lt!2504222 () Unit!161314)

(assert (=> d!2185299 (= lt!2504222 (choose!52700 lt!2504059 lt!2504069 lambda!408425))))

(assert (=> d!2185299 (= lt!2504059 (set.insert lt!2504069 (as set.empty (Set Context!12628))))))

(assert (=> d!2185299 (= (lemmaFlatMapOnSingletonSet!1819 lt!2504059 lt!2504069 lambda!408425) lt!2504222)))

(declare-fun b_lambda!264347 () Bool)

(assert (=> (not b_lambda!264347) (not d!2185299)))

(declare-fun bs!1866095 () Bool)

(assert (= bs!1866095 d!2185299))

(assert (=> bs!1866095 m!7708130))

(declare-fun m!7708408 () Bool)

(assert (=> bs!1866095 m!7708408))

(declare-fun m!7708410 () Bool)

(assert (=> bs!1866095 m!7708410))

(assert (=> bs!1866095 m!7708122))

(assert (=> b!7010287 d!2185299))

(declare-fun d!2185301 () Bool)

(assert (=> d!2185301 (= (isEmpty!39348 (exprs!6814 lt!2504069)) (is-Nil!67375 (exprs!6814 lt!2504069)))))

(assert (=> b!7010298 d!2185301))

(assert (=> b!7010285 d!2185291))

(assert (=> b!7010285 d!2185265))

(declare-fun b!7010490 () Bool)

(declare-fun e!4214047 () Bool)

(assert (=> b!7010490 (= e!4214047 (matchZipper!2858 lt!2504066 (t!381255 s!7408)))))

(declare-fun b!7010491 () Bool)

(declare-fun lt!2504230 () Unit!161314)

(declare-fun lt!2504229 () Unit!161314)

(assert (=> b!7010491 (= lt!2504230 lt!2504229)))

(assert (=> b!7010491 (= (++!15316 (++!15316 Nil!67376 (Cons!67376 (h!73824 (t!381255 s!7408)) Nil!67376)) (t!381255 (t!381255 s!7408))) (t!381255 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2894 (List!67500 C!34906 List!67500 List!67500) Unit!161314)

(assert (=> b!7010491 (= lt!2504229 (lemmaMoveElementToOtherListKeepsConcatEq!2894 Nil!67376 (h!73824 (t!381255 s!7408)) (t!381255 (t!381255 s!7408)) (t!381255 s!7408)))))

(declare-fun e!4214043 () Option!16803)

(assert (=> b!7010491 (= e!4214043 (findConcatSeparationZippers!319 lt!2504037 lt!2504066 (++!15316 Nil!67376 (Cons!67376 (h!73824 (t!381255 s!7408)) Nil!67376)) (t!381255 (t!381255 s!7408)) (t!381255 s!7408)))))

(declare-fun b!7010492 () Bool)

(declare-fun e!4214046 () Option!16803)

(assert (=> b!7010492 (= e!4214046 e!4214043)))

(declare-fun c!1302171 () Bool)

(assert (=> b!7010492 (= c!1302171 (is-Nil!67376 (t!381255 s!7408)))))

(declare-fun b!7010493 () Bool)

(declare-fun res!2860632 () Bool)

(declare-fun e!4214044 () Bool)

(assert (=> b!7010493 (=> (not res!2860632) (not e!4214044))))

(declare-fun lt!2504231 () Option!16803)

(assert (=> b!7010493 (= res!2860632 (matchZipper!2858 lt!2504066 (_2!37274 (get!23624 lt!2504231))))))

(declare-fun b!7010494 () Bool)

(assert (=> b!7010494 (= e!4214044 (= (++!15316 (_1!37274 (get!23624 lt!2504231)) (_2!37274 (get!23624 lt!2504231))) (t!381255 s!7408)))))

(declare-fun b!7010495 () Bool)

(assert (=> b!7010495 (= e!4214043 None!16802)))

(declare-fun b!7010496 () Bool)

(declare-fun e!4214045 () Bool)

(assert (=> b!7010496 (= e!4214045 (not (isDefined!13504 lt!2504231)))))

(declare-fun d!2185303 () Bool)

(assert (=> d!2185303 e!4214045))

(declare-fun res!2860630 () Bool)

(assert (=> d!2185303 (=> res!2860630 e!4214045)))

(assert (=> d!2185303 (= res!2860630 e!4214044)))

(declare-fun res!2860629 () Bool)

(assert (=> d!2185303 (=> (not res!2860629) (not e!4214044))))

(assert (=> d!2185303 (= res!2860629 (isDefined!13504 lt!2504231))))

(assert (=> d!2185303 (= lt!2504231 e!4214046)))

(declare-fun c!1302170 () Bool)

(assert (=> d!2185303 (= c!1302170 e!4214047)))

(declare-fun res!2860631 () Bool)

(assert (=> d!2185303 (=> (not res!2860631) (not e!4214047))))

(assert (=> d!2185303 (= res!2860631 (matchZipper!2858 lt!2504037 Nil!67376))))

(assert (=> d!2185303 (= (++!15316 Nil!67376 (t!381255 s!7408)) (t!381255 s!7408))))

(assert (=> d!2185303 (= (findConcatSeparationZippers!319 lt!2504037 lt!2504066 Nil!67376 (t!381255 s!7408) (t!381255 s!7408)) lt!2504231)))

(declare-fun b!7010497 () Bool)

(declare-fun res!2860628 () Bool)

(assert (=> b!7010497 (=> (not res!2860628) (not e!4214044))))

(assert (=> b!7010497 (= res!2860628 (matchZipper!2858 lt!2504037 (_1!37274 (get!23624 lt!2504231))))))

(declare-fun b!7010498 () Bool)

(assert (=> b!7010498 (= e!4214046 (Some!16802 (tuple2!67943 Nil!67376 (t!381255 s!7408))))))

(assert (= (and d!2185303 res!2860631) b!7010490))

(assert (= (and d!2185303 c!1302170) b!7010498))

(assert (= (and d!2185303 (not c!1302170)) b!7010492))

(assert (= (and b!7010492 c!1302171) b!7010495))

(assert (= (and b!7010492 (not c!1302171)) b!7010491))

(assert (= (and d!2185303 res!2860629) b!7010497))

(assert (= (and b!7010497 res!2860628) b!7010493))

(assert (= (and b!7010493 res!2860632) b!7010494))

(assert (= (and d!2185303 (not res!2860630)) b!7010496))

(declare-fun m!7708412 () Bool)

(assert (=> b!7010497 m!7708412))

(declare-fun m!7708414 () Bool)

(assert (=> b!7010497 m!7708414))

(declare-fun m!7708416 () Bool)

(assert (=> b!7010496 m!7708416))

(assert (=> b!7010493 m!7708412))

(declare-fun m!7708418 () Bool)

(assert (=> b!7010493 m!7708418))

(assert (=> b!7010494 m!7708412))

(declare-fun m!7708420 () Bool)

(assert (=> b!7010494 m!7708420))

(declare-fun m!7708422 () Bool)

(assert (=> b!7010491 m!7708422))

(assert (=> b!7010491 m!7708422))

(declare-fun m!7708424 () Bool)

(assert (=> b!7010491 m!7708424))

(declare-fun m!7708426 () Bool)

(assert (=> b!7010491 m!7708426))

(assert (=> b!7010491 m!7708422))

(declare-fun m!7708428 () Bool)

(assert (=> b!7010491 m!7708428))

(declare-fun m!7708430 () Bool)

(assert (=> b!7010490 m!7708430))

(assert (=> d!2185303 m!7708416))

(declare-fun m!7708432 () Bool)

(assert (=> d!2185303 m!7708432))

(declare-fun m!7708434 () Bool)

(assert (=> d!2185303 m!7708434))

(assert (=> b!7010296 d!2185303))

(declare-fun d!2185305 () Bool)

(declare-fun isEmpty!39351 (Option!16803) Bool)

(assert (=> d!2185305 (= (isDefined!13504 lt!2504051) (not (isEmpty!39351 lt!2504051)))))

(declare-fun bs!1866096 () Bool)

(assert (= bs!1866096 d!2185305))

(declare-fun m!7708436 () Bool)

(assert (=> bs!1866096 m!7708436))

(assert (=> b!7010296 d!2185305))

(declare-fun b!7010521 () Bool)

(declare-fun e!4214065 () (Set Context!12628))

(assert (=> b!7010521 (= e!4214065 (as set.empty (Set Context!12628)))))

(declare-fun bm!636712 () Bool)

(declare-fun call!636720 () List!67499)

(declare-fun call!636717 () List!67499)

(assert (=> bm!636712 (= call!636720 call!636717)))

(declare-fun c!1302184 () Bool)

(declare-fun bm!636713 () Bool)

(declare-fun c!1302182 () Bool)

(declare-fun $colon$colon!2528 (List!67499 Regex!17318) List!67499)

(assert (=> bm!636713 (= call!636717 ($colon$colon!2528 (exprs!6814 lt!2504067) (ite (or c!1302182 c!1302184) (regTwo!35148 (h!73823 (exprs!6814 lt!2504069))) (h!73823 (exprs!6814 lt!2504069)))))))

(declare-fun b!7010522 () Bool)

(declare-fun e!4214064 () (Set Context!12628))

(declare-fun call!636719 () (Set Context!12628))

(declare-fun call!636721 () (Set Context!12628))

(assert (=> b!7010522 (= e!4214064 (set.union call!636719 call!636721))))

(declare-fun c!1302186 () Bool)

(declare-fun bm!636714 () Bool)

(assert (=> bm!636714 (= call!636719 (derivationStepZipperDown!2036 (ite c!1302186 (regOne!35149 (h!73823 (exprs!6814 lt!2504069))) (ite c!1302182 (regTwo!35148 (h!73823 (exprs!6814 lt!2504069))) (ite c!1302184 (regOne!35148 (h!73823 (exprs!6814 lt!2504069))) (reg!17647 (h!73823 (exprs!6814 lt!2504069)))))) (ite (or c!1302186 c!1302182) lt!2504067 (Context!12629 call!636720)) (h!73824 s!7408)))))

(declare-fun b!7010523 () Bool)

(declare-fun e!4214062 () (Set Context!12628))

(declare-fun call!636722 () (Set Context!12628))

(assert (=> b!7010523 (= e!4214062 call!636722)))

(declare-fun b!7010524 () Bool)

(declare-fun e!4214060 () (Set Context!12628))

(assert (=> b!7010524 (= e!4214060 e!4214062)))

(assert (=> b!7010524 (= c!1302184 (is-Concat!26163 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun d!2185307 () Bool)

(declare-fun c!1302183 () Bool)

(assert (=> d!2185307 (= c!1302183 (and (is-ElementMatch!17318 (h!73823 (exprs!6814 lt!2504069))) (= (c!1302126 (h!73823 (exprs!6814 lt!2504069))) (h!73824 s!7408))))))

(declare-fun e!4214061 () (Set Context!12628))

(assert (=> d!2185307 (= (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) lt!2504067 (h!73824 s!7408)) e!4214061)))

(declare-fun b!7010525 () Bool)

(declare-fun call!636718 () (Set Context!12628))

(assert (=> b!7010525 (= e!4214060 (set.union call!636721 call!636718))))

(declare-fun b!7010526 () Bool)

(assert (=> b!7010526 (= e!4214061 e!4214064)))

(assert (=> b!7010526 (= c!1302186 (is-Union!17318 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun bm!636715 () Bool)

(assert (=> bm!636715 (= call!636718 call!636719)))

(declare-fun bm!636716 () Bool)

(assert (=> bm!636716 (= call!636721 (derivationStepZipperDown!2036 (ite c!1302186 (regTwo!35149 (h!73823 (exprs!6814 lt!2504069))) (regOne!35148 (h!73823 (exprs!6814 lt!2504069)))) (ite c!1302186 lt!2504067 (Context!12629 call!636717)) (h!73824 s!7408)))))

(declare-fun b!7010527 () Bool)

(assert (=> b!7010527 (= e!4214061 (set.insert lt!2504067 (as set.empty (Set Context!12628))))))

(declare-fun b!7010528 () Bool)

(declare-fun e!4214063 () Bool)

(assert (=> b!7010528 (= e!4214063 (nullable!7078 (regOne!35148 (h!73823 (exprs!6814 lt!2504069)))))))

(declare-fun b!7010529 () Bool)

(assert (=> b!7010529 (= c!1302182 e!4214063)))

(declare-fun res!2860635 () Bool)

(assert (=> b!7010529 (=> (not res!2860635) (not e!4214063))))

(assert (=> b!7010529 (= res!2860635 (is-Concat!26163 (h!73823 (exprs!6814 lt!2504069))))))

(assert (=> b!7010529 (= e!4214064 e!4214060)))

(declare-fun b!7010530 () Bool)

(assert (=> b!7010530 (= e!4214065 call!636722)))

(declare-fun bm!636717 () Bool)

(assert (=> bm!636717 (= call!636722 call!636718)))

(declare-fun b!7010531 () Bool)

(declare-fun c!1302185 () Bool)

(assert (=> b!7010531 (= c!1302185 (is-Star!17318 (h!73823 (exprs!6814 lt!2504069))))))

(assert (=> b!7010531 (= e!4214062 e!4214065)))

(assert (= (and d!2185307 c!1302183) b!7010527))

(assert (= (and d!2185307 (not c!1302183)) b!7010526))

(assert (= (and b!7010526 c!1302186) b!7010522))

(assert (= (and b!7010526 (not c!1302186)) b!7010529))

(assert (= (and b!7010529 res!2860635) b!7010528))

(assert (= (and b!7010529 c!1302182) b!7010525))

(assert (= (and b!7010529 (not c!1302182)) b!7010524))

(assert (= (and b!7010524 c!1302184) b!7010523))

(assert (= (and b!7010524 (not c!1302184)) b!7010531))

(assert (= (and b!7010531 c!1302185) b!7010530))

(assert (= (and b!7010531 (not c!1302185)) b!7010521))

(assert (= (or b!7010523 b!7010530) bm!636712))

(assert (= (or b!7010523 b!7010530) bm!636717))

(assert (= (or b!7010525 bm!636717) bm!636715))

(assert (= (or b!7010525 bm!636712) bm!636713))

(assert (= (or b!7010522 bm!636715) bm!636714))

(assert (= (or b!7010522 b!7010525) bm!636716))

(declare-fun m!7708438 () Bool)

(assert (=> bm!636716 m!7708438))

(declare-fun m!7708440 () Bool)

(assert (=> b!7010528 m!7708440))

(declare-fun m!7708442 () Bool)

(assert (=> bm!636713 m!7708442))

(declare-fun m!7708444 () Bool)

(assert (=> b!7010527 m!7708444))

(declare-fun m!7708446 () Bool)

(assert (=> bm!636714 m!7708446))

(assert (=> b!7010296 d!2185307))

(declare-fun d!2185309 () Bool)

(assert (=> d!2185309 (isDefined!13504 (findConcatSeparationZippers!319 lt!2504037 (set.insert ct2!306 (as set.empty (Set Context!12628))) Nil!67376 (t!381255 s!7408) (t!381255 s!7408)))))

(declare-fun lt!2504234 () Unit!161314)

(declare-fun choose!52703 ((Set Context!12628) Context!12628 List!67500) Unit!161314)

(assert (=> d!2185309 (= lt!2504234 (choose!52703 lt!2504037 ct2!306 (t!381255 s!7408)))))

(assert (=> d!2185309 (matchZipper!2858 (appendTo!439 lt!2504037 ct2!306) (t!381255 s!7408))))

(assert (=> d!2185309 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!319 lt!2504037 ct2!306 (t!381255 s!7408)) lt!2504234)))

(declare-fun bs!1866097 () Bool)

(assert (= bs!1866097 d!2185309))

(declare-fun m!7708448 () Bool)

(assert (=> bs!1866097 m!7708448))

(declare-fun m!7708450 () Bool)

(assert (=> bs!1866097 m!7708450))

(assert (=> bs!1866097 m!7708154))

(assert (=> bs!1866097 m!7708448))

(declare-fun m!7708452 () Bool)

(assert (=> bs!1866097 m!7708452))

(assert (=> bs!1866097 m!7708154))

(assert (=> bs!1866097 m!7708144))

(declare-fun m!7708454 () Bool)

(assert (=> bs!1866097 m!7708454))

(assert (=> bs!1866097 m!7708144))

(assert (=> b!7010296 d!2185309))

(assert (=> b!7010296 d!2185265))

(declare-fun bs!1866098 () Bool)

(declare-fun d!2185311 () Bool)

(assert (= bs!1866098 (and d!2185311 b!7010290)))

(declare-fun lambda!408485 () Int)

(assert (=> bs!1866098 (= lambda!408485 lambda!408424)))

(declare-fun bs!1866099 () Bool)

(assert (= bs!1866099 (and d!2185311 d!2185255)))

(assert (=> bs!1866099 (= lambda!408485 lambda!408472)))

(declare-fun bs!1866100 () Bool)

(assert (= bs!1866100 (and d!2185311 d!2185289)))

(assert (=> bs!1866100 (= lambda!408485 lambda!408481)))

(assert (=> d!2185311 (= (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) (Context!12629 (++!15315 (exprs!6814 lt!2504067) (exprs!6814 ct2!306))) (h!73824 s!7408)) (appendTo!439 (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) lt!2504067 (h!73824 s!7408)) ct2!306))))

(declare-fun lt!2504240 () Unit!161314)

(assert (=> d!2185311 (= lt!2504240 (lemmaConcatPreservesForall!654 (exprs!6814 lt!2504067) (exprs!6814 ct2!306) lambda!408485))))

(declare-fun lt!2504239 () Unit!161314)

(declare-fun choose!52704 (Context!12628 Regex!17318 C!34906 Context!12628) Unit!161314)

(assert (=> d!2185311 (= lt!2504239 (choose!52704 lt!2504067 (h!73823 (exprs!6814 lt!2504069)) (h!73824 s!7408) ct2!306))))

(assert (=> d!2185311 (validRegex!8888 (h!73823 (exprs!6814 lt!2504069)))))

(assert (=> d!2185311 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!17 lt!2504067 (h!73823 (exprs!6814 lt!2504069)) (h!73824 s!7408) ct2!306) lt!2504239)))

(declare-fun bs!1866101 () Bool)

(assert (= bs!1866101 d!2185311))

(assert (=> bs!1866101 m!7708150))

(assert (=> bs!1866101 m!7708150))

(declare-fun m!7708456 () Bool)

(assert (=> bs!1866101 m!7708456))

(declare-fun m!7708458 () Bool)

(assert (=> bs!1866101 m!7708458))

(assert (=> bs!1866101 m!7708166))

(declare-fun m!7708460 () Bool)

(assert (=> bs!1866101 m!7708460))

(declare-fun m!7708462 () Bool)

(assert (=> bs!1866101 m!7708462))

(declare-fun m!7708464 () Bool)

(assert (=> bs!1866101 m!7708464))

(assert (=> b!7010296 d!2185311))

(declare-fun d!2185313 () Bool)

(declare-fun c!1302188 () Bool)

(assert (=> d!2185313 (= c!1302188 (isEmpty!39350 (_1!37274 lt!2504047)))))

(declare-fun e!4214066 () Bool)

(assert (=> d!2185313 (= (matchZipper!2858 lt!2504037 (_1!37274 lt!2504047)) e!4214066)))

(declare-fun b!7010532 () Bool)

(assert (=> b!7010532 (= e!4214066 (nullableZipper!2487 lt!2504037))))

(declare-fun b!7010533 () Bool)

(assert (=> b!7010533 (= e!4214066 (matchZipper!2858 (derivationStepZipper!2798 lt!2504037 (head!14173 (_1!37274 lt!2504047))) (tail!13394 (_1!37274 lt!2504047))))))

(assert (= (and d!2185313 c!1302188) b!7010532))

(assert (= (and d!2185313 (not c!1302188)) b!7010533))

(declare-fun m!7708466 () Bool)

(assert (=> d!2185313 m!7708466))

(declare-fun m!7708468 () Bool)

(assert (=> b!7010532 m!7708468))

(declare-fun m!7708470 () Bool)

(assert (=> b!7010533 m!7708470))

(assert (=> b!7010533 m!7708470))

(declare-fun m!7708472 () Bool)

(assert (=> b!7010533 m!7708472))

(declare-fun m!7708474 () Bool)

(assert (=> b!7010533 m!7708474))

(assert (=> b!7010533 m!7708472))

(assert (=> b!7010533 m!7708474))

(declare-fun m!7708476 () Bool)

(assert (=> b!7010533 m!7708476))

(assert (=> b!7010296 d!2185313))

(declare-fun d!2185315 () Bool)

(assert (=> d!2185315 (= (get!23624 lt!2504051) (v!53080 lt!2504051))))

(assert (=> b!7010296 d!2185315))

(declare-fun bs!1866102 () Bool)

(declare-fun d!2185317 () Bool)

(assert (= bs!1866102 (and d!2185317 b!7010290)))

(declare-fun lambda!408486 () Int)

(assert (=> bs!1866102 (= lambda!408486 lambda!408423)))

(declare-fun bs!1866103 () Bool)

(assert (= bs!1866103 (and d!2185317 d!2185287)))

(assert (=> bs!1866103 (= lambda!408486 lambda!408480)))

(assert (=> d!2185317 true))

(assert (=> d!2185317 (= (appendTo!439 lt!2504037 ct2!306) (map!15611 lt!2504037 lambda!408486))))

(declare-fun bs!1866104 () Bool)

(assert (= bs!1866104 d!2185317))

(declare-fun m!7708478 () Bool)

(assert (=> bs!1866104 m!7708478))

(assert (=> b!7010296 d!2185317))

(assert (=> b!7010293 d!2185265))

(declare-fun b!7010536 () Bool)

(declare-fun res!2860636 () Bool)

(declare-fun e!4214067 () Bool)

(assert (=> b!7010536 (=> (not res!2860636) (not e!4214067))))

(declare-fun lt!2504241 () List!67499)

(assert (=> b!7010536 (= res!2860636 (= (size!40971 lt!2504241) (+ (size!40971 lt!2504061) (size!40971 (exprs!6814 ct2!306)))))))

(declare-fun d!2185319 () Bool)

(assert (=> d!2185319 e!4214067))

(declare-fun res!2860637 () Bool)

(assert (=> d!2185319 (=> (not res!2860637) (not e!4214067))))

(assert (=> d!2185319 (= res!2860637 (= (content!13371 lt!2504241) (set.union (content!13371 lt!2504061) (content!13371 (exprs!6814 ct2!306)))))))

(declare-fun e!4214068 () List!67499)

(assert (=> d!2185319 (= lt!2504241 e!4214068)))

(declare-fun c!1302189 () Bool)

(assert (=> d!2185319 (= c!1302189 (is-Nil!67375 lt!2504061))))

(assert (=> d!2185319 (= (++!15315 lt!2504061 (exprs!6814 ct2!306)) lt!2504241)))

(declare-fun b!7010537 () Bool)

(assert (=> b!7010537 (= e!4214067 (or (not (= (exprs!6814 ct2!306) Nil!67375)) (= lt!2504241 lt!2504061)))))

(declare-fun b!7010535 () Bool)

(assert (=> b!7010535 (= e!4214068 (Cons!67375 (h!73823 lt!2504061) (++!15315 (t!381254 lt!2504061) (exprs!6814 ct2!306))))))

(declare-fun b!7010534 () Bool)

(assert (=> b!7010534 (= e!4214068 (exprs!6814 ct2!306))))

(assert (= (and d!2185319 c!1302189) b!7010534))

(assert (= (and d!2185319 (not c!1302189)) b!7010535))

(assert (= (and d!2185319 res!2860637) b!7010536))

(assert (= (and b!7010536 res!2860636) b!7010537))

(declare-fun m!7708480 () Bool)

(assert (=> b!7010536 m!7708480))

(declare-fun m!7708482 () Bool)

(assert (=> b!7010536 m!7708482))

(assert (=> b!7010536 m!7708346))

(declare-fun m!7708484 () Bool)

(assert (=> d!2185319 m!7708484))

(declare-fun m!7708486 () Bool)

(assert (=> d!2185319 m!7708486))

(assert (=> d!2185319 m!7708352))

(declare-fun m!7708488 () Bool)

(assert (=> b!7010535 m!7708488))

(assert (=> b!7010283 d!2185319))

(declare-fun call!636723 () (Set Context!12628))

(declare-fun e!4214069 () (Set Context!12628))

(declare-fun b!7010538 () Bool)

(assert (=> b!7010538 (= e!4214069 (set.union call!636723 (derivationStepZipperUp!1968 (Context!12629 (t!381254 (exprs!6814 lt!2504072))) (h!73824 s!7408))))))

(declare-fun b!7010539 () Bool)

(declare-fun e!4214071 () (Set Context!12628))

(assert (=> b!7010539 (= e!4214071 call!636723)))

(declare-fun d!2185321 () Bool)

(declare-fun c!1302191 () Bool)

(declare-fun e!4214070 () Bool)

(assert (=> d!2185321 (= c!1302191 e!4214070)))

(declare-fun res!2860638 () Bool)

(assert (=> d!2185321 (=> (not res!2860638) (not e!4214070))))

(assert (=> d!2185321 (= res!2860638 (is-Cons!67375 (exprs!6814 lt!2504072)))))

(assert (=> d!2185321 (= (derivationStepZipperUp!1968 lt!2504072 (h!73824 s!7408)) e!4214069)))

(declare-fun bm!636718 () Bool)

(assert (=> bm!636718 (= call!636723 (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504072)) (Context!12629 (t!381254 (exprs!6814 lt!2504072))) (h!73824 s!7408)))))

(declare-fun b!7010540 () Bool)

(assert (=> b!7010540 (= e!4214071 (as set.empty (Set Context!12628)))))

(declare-fun b!7010541 () Bool)

(assert (=> b!7010541 (= e!4214069 e!4214071)))

(declare-fun c!1302190 () Bool)

(assert (=> b!7010541 (= c!1302190 (is-Cons!67375 (exprs!6814 lt!2504072)))))

(declare-fun b!7010542 () Bool)

(assert (=> b!7010542 (= e!4214070 (nullable!7078 (h!73823 (exprs!6814 lt!2504072))))))

(assert (= (and d!2185321 res!2860638) b!7010542))

(assert (= (and d!2185321 c!1302191) b!7010538))

(assert (= (and d!2185321 (not c!1302191)) b!7010541))

(assert (= (and b!7010541 c!1302190) b!7010539))

(assert (= (and b!7010541 (not c!1302190)) b!7010540))

(assert (= (or b!7010538 b!7010539) bm!636718))

(declare-fun m!7708490 () Bool)

(assert (=> b!7010538 m!7708490))

(declare-fun m!7708492 () Bool)

(assert (=> bm!636718 m!7708492))

(declare-fun m!7708494 () Bool)

(assert (=> b!7010542 m!7708494))

(assert (=> b!7010283 d!2185321))

(assert (=> b!7010283 d!2185265))

(declare-fun b!7010543 () Bool)

(declare-fun e!4214077 () (Set Context!12628))

(assert (=> b!7010543 (= e!4214077 (as set.empty (Set Context!12628)))))

(declare-fun bm!636719 () Bool)

(declare-fun call!636727 () List!67499)

(declare-fun call!636724 () List!67499)

(assert (=> bm!636719 (= call!636727 call!636724)))

(declare-fun bm!636720 () Bool)

(declare-fun c!1302192 () Bool)

(declare-fun c!1302194 () Bool)

(assert (=> bm!636720 (= call!636724 ($colon$colon!2528 (exprs!6814 lt!2504072) (ite (or c!1302192 c!1302194) (regTwo!35148 (h!73823 (exprs!6814 lt!2504069))) (h!73823 (exprs!6814 lt!2504069)))))))

(declare-fun b!7010544 () Bool)

(declare-fun e!4214076 () (Set Context!12628))

(declare-fun call!636726 () (Set Context!12628))

(declare-fun call!636728 () (Set Context!12628))

(assert (=> b!7010544 (= e!4214076 (set.union call!636726 call!636728))))

(declare-fun c!1302196 () Bool)

(declare-fun bm!636721 () Bool)

(assert (=> bm!636721 (= call!636726 (derivationStepZipperDown!2036 (ite c!1302196 (regOne!35149 (h!73823 (exprs!6814 lt!2504069))) (ite c!1302192 (regTwo!35148 (h!73823 (exprs!6814 lt!2504069))) (ite c!1302194 (regOne!35148 (h!73823 (exprs!6814 lt!2504069))) (reg!17647 (h!73823 (exprs!6814 lt!2504069)))))) (ite (or c!1302196 c!1302192) lt!2504072 (Context!12629 call!636727)) (h!73824 s!7408)))))

(declare-fun b!7010545 () Bool)

(declare-fun e!4214074 () (Set Context!12628))

(declare-fun call!636729 () (Set Context!12628))

(assert (=> b!7010545 (= e!4214074 call!636729)))

(declare-fun b!7010546 () Bool)

(declare-fun e!4214072 () (Set Context!12628))

(assert (=> b!7010546 (= e!4214072 e!4214074)))

(assert (=> b!7010546 (= c!1302194 (is-Concat!26163 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun d!2185323 () Bool)

(declare-fun c!1302193 () Bool)

(assert (=> d!2185323 (= c!1302193 (and (is-ElementMatch!17318 (h!73823 (exprs!6814 lt!2504069))) (= (c!1302126 (h!73823 (exprs!6814 lt!2504069))) (h!73824 s!7408))))))

(declare-fun e!4214073 () (Set Context!12628))

(assert (=> d!2185323 (= (derivationStepZipperDown!2036 (h!73823 (exprs!6814 lt!2504069)) lt!2504072 (h!73824 s!7408)) e!4214073)))

(declare-fun b!7010547 () Bool)

(declare-fun call!636725 () (Set Context!12628))

(assert (=> b!7010547 (= e!4214072 (set.union call!636728 call!636725))))

(declare-fun b!7010548 () Bool)

(assert (=> b!7010548 (= e!4214073 e!4214076)))

(assert (=> b!7010548 (= c!1302196 (is-Union!17318 (h!73823 (exprs!6814 lt!2504069))))))

(declare-fun bm!636722 () Bool)

(assert (=> bm!636722 (= call!636725 call!636726)))

(declare-fun bm!636723 () Bool)

(assert (=> bm!636723 (= call!636728 (derivationStepZipperDown!2036 (ite c!1302196 (regTwo!35149 (h!73823 (exprs!6814 lt!2504069))) (regOne!35148 (h!73823 (exprs!6814 lt!2504069)))) (ite c!1302196 lt!2504072 (Context!12629 call!636724)) (h!73824 s!7408)))))

(declare-fun b!7010549 () Bool)

(assert (=> b!7010549 (= e!4214073 (set.insert lt!2504072 (as set.empty (Set Context!12628))))))

(declare-fun b!7010550 () Bool)

(declare-fun e!4214075 () Bool)

(assert (=> b!7010550 (= e!4214075 (nullable!7078 (regOne!35148 (h!73823 (exprs!6814 lt!2504069)))))))

(declare-fun b!7010551 () Bool)

(assert (=> b!7010551 (= c!1302192 e!4214075)))

(declare-fun res!2860639 () Bool)

(assert (=> b!7010551 (=> (not res!2860639) (not e!4214075))))

(assert (=> b!7010551 (= res!2860639 (is-Concat!26163 (h!73823 (exprs!6814 lt!2504069))))))

(assert (=> b!7010551 (= e!4214076 e!4214072)))

(declare-fun b!7010552 () Bool)

(assert (=> b!7010552 (= e!4214077 call!636729)))

(declare-fun bm!636724 () Bool)

(assert (=> bm!636724 (= call!636729 call!636725)))

(declare-fun b!7010553 () Bool)

(declare-fun c!1302195 () Bool)

(assert (=> b!7010553 (= c!1302195 (is-Star!17318 (h!73823 (exprs!6814 lt!2504069))))))

(assert (=> b!7010553 (= e!4214074 e!4214077)))

(assert (= (and d!2185323 c!1302193) b!7010549))

(assert (= (and d!2185323 (not c!1302193)) b!7010548))

(assert (= (and b!7010548 c!1302196) b!7010544))

(assert (= (and b!7010548 (not c!1302196)) b!7010551))

(assert (= (and b!7010551 res!2860639) b!7010550))

(assert (= (and b!7010551 c!1302192) b!7010547))

(assert (= (and b!7010551 (not c!1302192)) b!7010546))

(assert (= (and b!7010546 c!1302194) b!7010545))

(assert (= (and b!7010546 (not c!1302194)) b!7010553))

(assert (= (and b!7010553 c!1302195) b!7010552))

(assert (= (and b!7010553 (not c!1302195)) b!7010543))

(assert (= (or b!7010545 b!7010552) bm!636719))

(assert (= (or b!7010545 b!7010552) bm!636724))

(assert (= (or b!7010547 bm!636724) bm!636722))

(assert (= (or b!7010547 bm!636719) bm!636720))

(assert (= (or b!7010544 bm!636722) bm!636721))

(assert (= (or b!7010544 b!7010547) bm!636723))

(declare-fun m!7708496 () Bool)

(assert (=> bm!636723 m!7708496))

(assert (=> b!7010550 m!7708440))

(declare-fun m!7708498 () Bool)

(assert (=> bm!636720 m!7708498))

(declare-fun m!7708500 () Bool)

(assert (=> b!7010549 m!7708500))

(declare-fun m!7708502 () Bool)

(assert (=> bm!636721 m!7708502))

(assert (=> b!7010283 d!2185323))

(declare-fun b!7010562 () Bool)

(declare-fun e!4214082 () List!67500)

(assert (=> b!7010562 (= e!4214082 (_2!37274 lt!2504047))))

(declare-fun b!7010565 () Bool)

(declare-fun e!4214083 () Bool)

(declare-fun lt!2504244 () List!67500)

(assert (=> b!7010565 (= e!4214083 (or (not (= (_2!37274 lt!2504047) Nil!67376)) (= lt!2504244 (_1!37274 lt!2504047))))))

(declare-fun d!2185325 () Bool)

(assert (=> d!2185325 e!4214083))

(declare-fun res!2860645 () Bool)

(assert (=> d!2185325 (=> (not res!2860645) (not e!4214083))))

(declare-fun content!13372 (List!67500) (Set C!34906))

(assert (=> d!2185325 (= res!2860645 (= (content!13372 lt!2504244) (set.union (content!13372 (_1!37274 lt!2504047)) (content!13372 (_2!37274 lt!2504047)))))))

(assert (=> d!2185325 (= lt!2504244 e!4214082)))

(declare-fun c!1302199 () Bool)

(assert (=> d!2185325 (= c!1302199 (is-Nil!67376 (_1!37274 lt!2504047)))))

(assert (=> d!2185325 (= (++!15316 (_1!37274 lt!2504047) (_2!37274 lt!2504047)) lt!2504244)))

(declare-fun b!7010564 () Bool)

(declare-fun res!2860644 () Bool)

(assert (=> b!7010564 (=> (not res!2860644) (not e!4214083))))

(declare-fun size!40972 (List!67500) Int)

(assert (=> b!7010564 (= res!2860644 (= (size!40972 lt!2504244) (+ (size!40972 (_1!37274 lt!2504047)) (size!40972 (_2!37274 lt!2504047)))))))

(declare-fun b!7010563 () Bool)

(assert (=> b!7010563 (= e!4214082 (Cons!67376 (h!73824 (_1!37274 lt!2504047)) (++!15316 (t!381255 (_1!37274 lt!2504047)) (_2!37274 lt!2504047))))))

(assert (= (and d!2185325 c!1302199) b!7010562))

(assert (= (and d!2185325 (not c!1302199)) b!7010563))

(assert (= (and d!2185325 res!2860645) b!7010564))

(assert (= (and b!7010564 res!2860644) b!7010565))

(declare-fun m!7708504 () Bool)

(assert (=> d!2185325 m!7708504))

(declare-fun m!7708506 () Bool)

(assert (=> d!2185325 m!7708506))

(declare-fun m!7708508 () Bool)

(assert (=> d!2185325 m!7708508))

(declare-fun m!7708510 () Bool)

(assert (=> b!7010564 m!7708510))

(declare-fun m!7708512 () Bool)

(assert (=> b!7010564 m!7708512))

(declare-fun m!7708514 () Bool)

(assert (=> b!7010564 m!7708514))

(declare-fun m!7708516 () Bool)

(assert (=> b!7010563 m!7708516))

(assert (=> b!7010294 d!2185325))

(assert (=> b!7010292 d!2185267))

(assert (=> b!7010303 d!2185291))

(declare-fun bs!1866105 () Bool)

(declare-fun d!2185327 () Bool)

(assert (= bs!1866105 (and d!2185327 b!7010282)))

(declare-fun lambda!408489 () Int)

(assert (=> bs!1866105 (not (= lambda!408489 lambda!408422))))

(assert (=> d!2185327 true))

(declare-fun order!28029 () Int)

(declare-fun dynLambda!27103 (Int Int) Int)

(assert (=> d!2185327 (< (dynLambda!27103 order!28029 lambda!408422) (dynLambda!27103 order!28029 lambda!408489))))

(declare-fun forall!16235 (List!67501 Int) Bool)

(assert (=> d!2185327 (= (exists!3162 lt!2504036 lambda!408422) (not (forall!16235 lt!2504036 lambda!408489)))))

(declare-fun bs!1866106 () Bool)

(assert (= bs!1866106 d!2185327))

(declare-fun m!7708518 () Bool)

(assert (=> bs!1866106 m!7708518))

(assert (=> b!7010282 d!2185327))

(declare-fun d!2185329 () Bool)

(declare-fun e!4214086 () Bool)

(assert (=> d!2185329 e!4214086))

(declare-fun res!2860648 () Bool)

(assert (=> d!2185329 (=> (not res!2860648) (not e!4214086))))

(declare-fun lt!2504247 () Context!12628)

(declare-fun dynLambda!27104 (Int Context!12628) Bool)

(assert (=> d!2185329 (= res!2860648 (dynLambda!27104 lambda!408422 lt!2504247))))

(declare-fun getWitness!1262 (List!67501 Int) Context!12628)

(assert (=> d!2185329 (= lt!2504247 (getWitness!1262 (toList!10678 lt!2504040) lambda!408422))))

(declare-fun exists!3164 ((Set Context!12628) Int) Bool)

(assert (=> d!2185329 (exists!3164 lt!2504040 lambda!408422)))

(assert (=> d!2185329 (= (getWitness!1260 lt!2504040 lambda!408422) lt!2504247)))

(declare-fun b!7010570 () Bool)

(assert (=> b!7010570 (= e!4214086 (set.member lt!2504247 lt!2504040))))

(assert (= (and d!2185329 res!2860648) b!7010570))

(declare-fun b_lambda!264349 () Bool)

(assert (=> (not b_lambda!264349) (not d!2185329)))

(declare-fun m!7708520 () Bool)

(assert (=> d!2185329 m!7708520))

(assert (=> d!2185329 m!7708116))

(assert (=> d!2185329 m!7708116))

(declare-fun m!7708522 () Bool)

(assert (=> d!2185329 m!7708522))

(declare-fun m!7708524 () Bool)

(assert (=> d!2185329 m!7708524))

(declare-fun m!7708526 () Bool)

(assert (=> b!7010570 m!7708526))

(assert (=> b!7010282 d!2185329))

(declare-fun d!2185331 () Bool)

(declare-fun e!4214089 () Bool)

(assert (=> d!2185331 e!4214089))

(declare-fun res!2860651 () Bool)

(assert (=> d!2185331 (=> (not res!2860651) (not e!4214089))))

(declare-fun lt!2504250 () List!67501)

(declare-fun noDuplicate!2566 (List!67501) Bool)

(assert (=> d!2185331 (= res!2860651 (noDuplicate!2566 lt!2504250))))

(declare-fun choose!52705 ((Set Context!12628)) List!67501)

(assert (=> d!2185331 (= lt!2504250 (choose!52705 lt!2504040))))

(assert (=> d!2185331 (= (toList!10678 lt!2504040) lt!2504250)))

(declare-fun b!7010573 () Bool)

(declare-fun content!13373 (List!67501) (Set Context!12628))

(assert (=> b!7010573 (= e!4214089 (= (content!13373 lt!2504250) lt!2504040))))

(assert (= (and d!2185331 res!2860651) b!7010573))

(declare-fun m!7708528 () Bool)

(assert (=> d!2185331 m!7708528))

(declare-fun m!7708530 () Bool)

(assert (=> d!2185331 m!7708530))

(declare-fun m!7708532 () Bool)

(assert (=> b!7010573 m!7708532))

(assert (=> b!7010282 d!2185331))

(declare-fun bs!1866107 () Bool)

(declare-fun d!2185333 () Bool)

(assert (= bs!1866107 (and d!2185333 b!7010282)))

(declare-fun lambda!408492 () Int)

(assert (=> bs!1866107 (= lambda!408492 lambda!408422)))

(declare-fun bs!1866108 () Bool)

(assert (= bs!1866108 (and d!2185333 d!2185327)))

(assert (=> bs!1866108 (not (= lambda!408492 lambda!408489))))

(assert (=> d!2185333 true))

(assert (=> d!2185333 (exists!3162 lt!2504036 lambda!408492)))

(declare-fun lt!2504253 () Unit!161314)

(declare-fun choose!52706 (List!67501 List!67500) Unit!161314)

(assert (=> d!2185333 (= lt!2504253 (choose!52706 lt!2504036 s!7408))))

(assert (=> d!2185333 (matchZipper!2858 (content!13373 lt!2504036) s!7408)))

(assert (=> d!2185333 (= (lemmaZipperMatchesExistsMatchingContext!287 lt!2504036 s!7408) lt!2504253)))

(declare-fun bs!1866109 () Bool)

(assert (= bs!1866109 d!2185333))

(declare-fun m!7708534 () Bool)

(assert (=> bs!1866109 m!7708534))

(declare-fun m!7708536 () Bool)

(assert (=> bs!1866109 m!7708536))

(declare-fun m!7708538 () Bool)

(assert (=> bs!1866109 m!7708538))

(assert (=> bs!1866109 m!7708538))

(declare-fun m!7708540 () Bool)

(assert (=> bs!1866109 m!7708540))

(assert (=> b!7010282 d!2185333))

(declare-fun d!2185335 () Bool)

(declare-fun c!1302202 () Bool)

(assert (=> d!2185335 (= c!1302202 (isEmpty!39350 s!7408))))

(declare-fun e!4214090 () Bool)

(assert (=> d!2185335 (= (matchZipper!2858 lt!2504035 s!7408) e!4214090)))

(declare-fun b!7010574 () Bool)

(assert (=> b!7010574 (= e!4214090 (nullableZipper!2487 lt!2504035))))

(declare-fun b!7010575 () Bool)

(assert (=> b!7010575 (= e!4214090 (matchZipper!2858 (derivationStepZipper!2798 lt!2504035 (head!14173 s!7408)) (tail!13394 s!7408)))))

(assert (= (and d!2185335 c!1302202) b!7010574))

(assert (= (and d!2185335 (not c!1302202)) b!7010575))

(assert (=> d!2185335 m!7708378))

(declare-fun m!7708542 () Bool)

(assert (=> b!7010574 m!7708542))

(assert (=> b!7010575 m!7708382))

(assert (=> b!7010575 m!7708382))

(declare-fun m!7708544 () Bool)

(assert (=> b!7010575 m!7708544))

(assert (=> b!7010575 m!7708386))

(assert (=> b!7010575 m!7708544))

(assert (=> b!7010575 m!7708386))

(declare-fun m!7708546 () Bool)

(assert (=> b!7010575 m!7708546))

(assert (=> b!7010282 d!2185335))

(declare-fun condSetEmpty!48362 () Bool)

(assert (=> setNonEmpty!48356 (= condSetEmpty!48362 (= setRest!48356 (as set.empty (Set Context!12628))))))

(declare-fun setRes!48362 () Bool)

(assert (=> setNonEmpty!48356 (= tp!1932353 setRes!48362)))

(declare-fun setIsEmpty!48362 () Bool)

(assert (=> setIsEmpty!48362 setRes!48362))

(declare-fun tp!1932374 () Bool)

(declare-fun e!4214093 () Bool)

(declare-fun setElem!48362 () Context!12628)

(declare-fun setNonEmpty!48362 () Bool)

(assert (=> setNonEmpty!48362 (= setRes!48362 (and tp!1932374 (inv!86155 setElem!48362) e!4214093))))

(declare-fun setRest!48362 () (Set Context!12628))

(assert (=> setNonEmpty!48362 (= setRest!48356 (set.union (set.insert setElem!48362 (as set.empty (Set Context!12628))) setRest!48362))))

(declare-fun b!7010580 () Bool)

(declare-fun tp!1932373 () Bool)

(assert (=> b!7010580 (= e!4214093 tp!1932373)))

(assert (= (and setNonEmpty!48356 condSetEmpty!48362) setIsEmpty!48362))

(assert (= (and setNonEmpty!48356 (not condSetEmpty!48362)) setNonEmpty!48362))

(assert (= setNonEmpty!48362 b!7010580))

(declare-fun m!7708548 () Bool)

(assert (=> setNonEmpty!48362 m!7708548))

(declare-fun b!7010585 () Bool)

(declare-fun e!4214096 () Bool)

(declare-fun tp!1932379 () Bool)

(declare-fun tp!1932380 () Bool)

(assert (=> b!7010585 (= e!4214096 (and tp!1932379 tp!1932380))))

(assert (=> b!7010291 (= tp!1932355 e!4214096)))

(assert (= (and b!7010291 (is-Cons!67375 (exprs!6814 setElem!48356))) b!7010585))

(declare-fun b!7010586 () Bool)

(declare-fun e!4214097 () Bool)

(declare-fun tp!1932381 () Bool)

(declare-fun tp!1932382 () Bool)

(assert (=> b!7010586 (= e!4214097 (and tp!1932381 tp!1932382))))

(assert (=> b!7010295 (= tp!1932354 e!4214097)))

(assert (= (and b!7010295 (is-Cons!67375 (exprs!6814 ct2!306))) b!7010586))

(declare-fun b!7010591 () Bool)

(declare-fun e!4214100 () Bool)

(declare-fun tp!1932385 () Bool)

(assert (=> b!7010591 (= e!4214100 (and tp_is_empty!43861 tp!1932385))))

(assert (=> b!7010288 (= tp!1932356 e!4214100)))

(assert (= (and b!7010288 (is-Cons!67376 (t!381255 s!7408))) b!7010591))

(declare-fun b_lambda!264351 () Bool)

(assert (= b_lambda!264345 (or b!7010290 b_lambda!264351)))

(declare-fun bs!1866110 () Bool)

(declare-fun d!2185337 () Bool)

(assert (= bs!1866110 (and d!2185337 b!7010290)))

(declare-fun lt!2504254 () Unit!161314)

(assert (=> bs!1866110 (= lt!2504254 (lemmaConcatPreservesForall!654 (exprs!6814 lt!2504219) (exprs!6814 ct2!306) lambda!408424))))

(assert (=> bs!1866110 (= (dynLambda!27102 lambda!408423 lt!2504219) (Context!12629 (++!15315 (exprs!6814 lt!2504219) (exprs!6814 ct2!306))))))

(declare-fun m!7708550 () Bool)

(assert (=> bs!1866110 m!7708550))

(declare-fun m!7708552 () Bool)

(assert (=> bs!1866110 m!7708552))

(assert (=> d!2185281 d!2185337))

(declare-fun b_lambda!264353 () Bool)

(assert (= b_lambda!264343 (or b!7010300 b_lambda!264353)))

(declare-fun bs!1866111 () Bool)

(declare-fun d!2185339 () Bool)

(assert (= bs!1866111 (and d!2185339 b!7010300)))

(assert (=> bs!1866111 (= (dynLambda!27101 lambda!408425 lt!2504046) (derivationStepZipperUp!1968 lt!2504046 (h!73824 s!7408)))))

(assert (=> bs!1866111 m!7708102))

(assert (=> d!2185271 d!2185339))

(declare-fun b_lambda!264355 () Bool)

(assert (= b_lambda!264349 (or b!7010282 b_lambda!264355)))

(declare-fun bs!1866112 () Bool)

(declare-fun d!2185341 () Bool)

(assert (= bs!1866112 (and d!2185341 b!7010282)))

(assert (=> bs!1866112 (= (dynLambda!27104 lambda!408422 lt!2504247) (matchZipper!2858 (set.insert lt!2504247 (as set.empty (Set Context!12628))) s!7408))))

(declare-fun m!7708554 () Bool)

(assert (=> bs!1866112 m!7708554))

(assert (=> bs!1866112 m!7708554))

(declare-fun m!7708556 () Bool)

(assert (=> bs!1866112 m!7708556))

(assert (=> d!2185329 d!2185341))

(declare-fun b_lambda!264357 () Bool)

(assert (= b_lambda!264347 (or b!7010300 b_lambda!264357)))

(declare-fun bs!1866113 () Bool)

(declare-fun d!2185343 () Bool)

(assert (= bs!1866113 (and d!2185343 b!7010300)))

(assert (=> bs!1866113 (= (dynLambda!27101 lambda!408425 lt!2504069) (derivationStepZipperUp!1968 lt!2504069 (h!73824 s!7408)))))

(assert (=> bs!1866113 m!7708128))

(assert (=> d!2185299 d!2185343))

(push 1)

(assert (not d!2185325))

(assert (not bm!636713))

(assert (not b!7010399))

(assert (not d!2185271))

(assert (not b_lambda!264351))

(assert (not d!2185317))

(assert (not d!2185289))

(assert (not b!7010462))

(assert (not d!2185311))

(assert (not b!7010491))

(assert (not bm!636696))

(assert (not b!7010466))

(assert (not d!2185259))

(assert (not b!7010591))

(assert (not bm!636721))

(assert (not d!2185269))

(assert (not d!2185331))

(assert (not b!7010575))

(assert (not d!2185267))

(assert (not b!7010528))

(assert (not b!7010392))

(assert (not d!2185305))

(assert (not d!2185291))

(assert (not d!2185303))

(assert (not d!2185255))

(assert (not b!7010398))

(assert (not b!7010550))

(assert (not b!7010496))

(assert (not b!7010471))

(assert (not b!7010393))

(assert (not b_lambda!264357))

(assert (not b!7010467))

(assert (not b_lambda!264355))

(assert (not b!7010396))

(assert (not d!2185327))

(assert (not d!2185313))

(assert (not b!7010455))

(assert (not bm!636689))

(assert (not b!7010538))

(assert (not bm!636699))

(assert (not b!7010397))

(assert (not d!2185279))

(assert (not b!7010532))

(assert (not b!7010464))

(assert (not d!2185319))

(assert (not b!7010585))

(assert (not d!2185293))

(assert (not d!2185333))

(assert (not d!2185285))

(assert (not b!7010454))

(assert (not b!7010580))

(assert (not d!2185257))

(assert (not b!7010463))

(assert (not b!7010573))

(assert (not d!2185299))

(assert (not b_lambda!264353))

(assert (not d!2185281))

(assert (not bm!636718))

(assert (not bm!636697))

(assert (not b!7010535))

(assert (not d!2185251))

(assert (not d!2185275))

(assert (not b!7010490))

(assert tp_is_empty!43861)

(assert (not b!7010413))

(assert (not d!2185329))

(assert (not d!2185263))

(assert (not bs!1866113))

(assert (not b!7010586))

(assert (not b!7010533))

(assert (not b!7010438))

(assert (not d!2185283))

(assert (not b!7010563))

(assert (not d!2185335))

(assert (not d!2185265))

(assert (not bs!1866112))

(assert (not b!7010400))

(assert (not b!7010493))

(assert (not b!7010417))

(assert (not bm!636720))

(assert (not d!2185287))

(assert (not d!2185295))

(assert (not d!2185261))

(assert (not b!7010497))

(assert (not bm!636714))

(assert (not d!2185309))

(assert (not b!7010536))

(assert (not b!7010465))

(assert (not bm!636723))

(assert (not b!7010564))

(assert (not bm!636716))

(assert (not bs!1866110))

(assert (not b!7010461))

(assert (not setNonEmpty!48362))

(assert (not bs!1866111))

(assert (not b!7010494))

(assert (not b!7010574))

(assert (not b!7010542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

