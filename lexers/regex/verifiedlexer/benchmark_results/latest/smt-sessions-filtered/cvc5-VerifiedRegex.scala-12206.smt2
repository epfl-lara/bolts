; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687500 () Bool)

(assert start!687500)

(declare-fun b!7074855 () Bool)

(assert (=> b!7074855 true))

(declare-fun b!7074848 () Bool)

(assert (=> b!7074848 true))

(declare-fun b!7074846 () Bool)

(assert (=> b!7074846 true))

(declare-fun b!7074845 () Bool)

(declare-fun e!4253424 () Bool)

(declare-fun e!4253426 () Bool)

(assert (=> b!7074845 (= e!4253424 e!4253426)))

(declare-fun res!2889753 () Bool)

(assert (=> b!7074845 (=> res!2889753 e!4253426)))

(declare-datatypes ((C!35586 0))(
  ( (C!35587 (val!27495 Int)) )
))
(declare-datatypes ((Regex!17658 0))(
  ( (ElementMatch!17658 (c!1319896 C!35586)) (Concat!26503 (regOne!35828 Regex!17658) (regTwo!35828 Regex!17658)) (EmptyExpr!17658) (Star!17658 (reg!17987 Regex!17658)) (EmptyLang!17658) (Union!17658 (regOne!35829 Regex!17658) (regTwo!35829 Regex!17658)) )
))
(declare-datatypes ((List!68500 0))(
  ( (Nil!68376) (Cons!68376 (h!74824 Regex!17658) (t!382283 List!68500)) )
))
(declare-datatypes ((Context!13308 0))(
  ( (Context!13309 (exprs!7154 List!68500)) )
))
(declare-fun lt!2548480 () (Set Context!13308))

(declare-fun lt!2548474 () (Set Context!13308))

(assert (=> b!7074845 (= res!2889753 (not (= lt!2548480 lt!2548474)))))

(declare-fun lt!2548482 () Context!13308)

(assert (=> b!7074845 (= lt!2548480 (set.insert lt!2548482 (as set.empty (Set Context!13308))))))

(declare-fun lt!2548479 () Context!13308)

(declare-datatypes ((Unit!162026 0))(
  ( (Unit!162027) )
))
(declare-fun lt!2548472 () Unit!162026)

(declare-fun lambda!426396 () Int)

(declare-fun ct2!306 () Context!13308)

(declare-fun lemmaConcatPreservesForall!969 (List!68500 List!68500 Int) Unit!162026)

(assert (=> b!7074845 (= lt!2548472 (lemmaConcatPreservesForall!969 (exprs!7154 lt!2548479) (exprs!7154 ct2!306) lambda!426396))))

(declare-fun setRes!50324 () Bool)

(declare-fun setElem!50324 () Context!13308)

(declare-fun setNonEmpty!50324 () Bool)

(declare-fun tp!1942619 () Bool)

(declare-fun e!4253428 () Bool)

(declare-fun inv!87005 (Context!13308) Bool)

(assert (=> setNonEmpty!50324 (= setRes!50324 (and tp!1942619 (inv!87005 setElem!50324) e!4253428))))

(declare-fun z1!570 () (Set Context!13308))

(declare-fun setRest!50324 () (Set Context!13308))

(assert (=> setNonEmpty!50324 (= z1!570 (set.union (set.insert setElem!50324 (as set.empty (Set Context!13308))) setRest!50324))))

(declare-fun e!4253425 () Bool)

(assert (=> b!7074846 (= e!4253426 e!4253425)))

(declare-fun res!2889749 () Bool)

(assert (=> b!7074846 (=> res!2889749 e!4253425)))

(declare-fun lt!2548468 () (Set Context!13308))

(declare-datatypes ((List!68501 0))(
  ( (Nil!68377) (Cons!68377 (h!74825 C!35586) (t!382284 List!68501)) )
))
(declare-fun s!7408 () List!68501)

(declare-fun derivationStepZipper!3108 ((Set Context!13308) C!35586) (Set Context!13308))

(assert (=> b!7074846 (= res!2889749 (not (= (derivationStepZipper!3108 lt!2548480 (h!74825 s!7408)) lt!2548468)))))

(declare-fun lambda!426397 () Int)

(declare-fun flatMap!2584 ((Set Context!13308) Int) (Set Context!13308))

(declare-fun derivationStepZipperUp!2242 (Context!13308 C!35586) (Set Context!13308))

(assert (=> b!7074846 (= (flatMap!2584 lt!2548480 lambda!426397) (derivationStepZipperUp!2242 lt!2548482 (h!74825 s!7408)))))

(declare-fun lt!2548469 () Unit!162026)

(declare-fun lemmaFlatMapOnSingletonSet!2093 ((Set Context!13308) Context!13308 Int) Unit!162026)

(assert (=> b!7074846 (= lt!2548469 (lemmaFlatMapOnSingletonSet!2093 lt!2548480 lt!2548482 lambda!426397))))

(assert (=> b!7074846 (= lt!2548468 (derivationStepZipperUp!2242 lt!2548482 (h!74825 s!7408)))))

(declare-fun lt!2548478 () Unit!162026)

(assert (=> b!7074846 (= lt!2548478 (lemmaConcatPreservesForall!969 (exprs!7154 lt!2548479) (exprs!7154 ct2!306) lambda!426396))))

(declare-fun b!7074847 () Bool)

(declare-fun e!4253422 () Bool)

(assert (=> b!7074847 (= e!4253425 e!4253422)))

(declare-fun res!2889756 () Bool)

(assert (=> b!7074847 (=> res!2889756 e!4253422)))

(declare-fun nullable!7341 (Regex!17658) Bool)

(assert (=> b!7074847 (= res!2889756 (nullable!7341 (h!74824 (exprs!7154 lt!2548479))))))

(declare-fun lt!2548481 () List!68500)

(declare-fun tail!13848 (List!68500) List!68500)

(assert (=> b!7074847 (= lt!2548481 (tail!13848 (exprs!7154 lt!2548479)))))

(declare-fun e!4253427 () Bool)

(assert (=> b!7074848 (= e!4253427 e!4253424)))

(declare-fun res!2889754 () Bool)

(assert (=> b!7074848 (=> res!2889754 e!4253424)))

(declare-fun lt!2548476 () Context!13308)

(assert (=> b!7074848 (= res!2889754 (or (not (= lt!2548482 lt!2548476)) (not (set.member lt!2548479 z1!570))))))

(declare-fun ++!15799 (List!68500 List!68500) List!68500)

(assert (=> b!7074848 (= lt!2548482 (Context!13309 (++!15799 (exprs!7154 lt!2548479) (exprs!7154 ct2!306))))))

(declare-fun lt!2548470 () Unit!162026)

(assert (=> b!7074848 (= lt!2548470 (lemmaConcatPreservesForall!969 (exprs!7154 lt!2548479) (exprs!7154 ct2!306) lambda!426396))))

(declare-fun lambda!426395 () Int)

(declare-fun mapPost2!487 ((Set Context!13308) Int Context!13308) Context!13308)

(assert (=> b!7074848 (= lt!2548479 (mapPost2!487 z1!570 lambda!426395 lt!2548476))))

(declare-fun b!7074850 () Bool)

(declare-fun res!2889750 () Bool)

(declare-fun e!4253420 () Bool)

(assert (=> b!7074850 (=> (not res!2889750) (not e!4253420))))

(assert (=> b!7074850 (= res!2889750 (is-Cons!68377 s!7408))))

(declare-fun setIsEmpty!50324 () Bool)

(assert (=> setIsEmpty!50324 setRes!50324))

(declare-fun b!7074851 () Bool)

(declare-fun res!2889755 () Bool)

(assert (=> b!7074851 (=> res!2889755 e!4253425)))

(assert (=> b!7074851 (= res!2889755 (not (is-Cons!68376 (exprs!7154 lt!2548479))))))

(declare-fun b!7074852 () Bool)

(declare-fun res!2889752 () Bool)

(assert (=> b!7074852 (=> res!2889752 e!4253425)))

(declare-fun isEmpty!39907 (List!68500) Bool)

(assert (=> b!7074852 (= res!2889752 (isEmpty!39907 (exprs!7154 lt!2548479)))))

(declare-fun b!7074853 () Bool)

(declare-fun tp!1942620 () Bool)

(assert (=> b!7074853 (= e!4253428 tp!1942620)))

(declare-fun b!7074854 () Bool)

(declare-fun e!4253421 () Bool)

(declare-fun tp!1942618 () Bool)

(assert (=> b!7074854 (= e!4253421 tp!1942618)))

(assert (=> b!7074855 (= e!4253420 (not e!4253427))))

(declare-fun res!2889751 () Bool)

(assert (=> b!7074855 (=> res!2889751 e!4253427)))

(declare-fun matchZipper!3198 ((Set Context!13308) List!68501) Bool)

(assert (=> b!7074855 (= res!2889751 (not (matchZipper!3198 lt!2548474 s!7408)))))

(assert (=> b!7074855 (= lt!2548474 (set.insert lt!2548476 (as set.empty (Set Context!13308))))))

(declare-fun lt!2548473 () (Set Context!13308))

(declare-fun lambda!426394 () Int)

(declare-fun getWitness!1766 ((Set Context!13308) Int) Context!13308)

(assert (=> b!7074855 (= lt!2548476 (getWitness!1766 lt!2548473 lambda!426394))))

(declare-datatypes ((List!68502 0))(
  ( (Nil!68378) (Cons!68378 (h!74826 Context!13308) (t!382285 List!68502)) )
))
(declare-fun lt!2548471 () List!68502)

(declare-fun exists!3716 (List!68502 Int) Bool)

(assert (=> b!7074855 (exists!3716 lt!2548471 lambda!426394)))

(declare-fun lt!2548475 () Unit!162026)

(declare-fun lemmaZipperMatchesExistsMatchingContext!579 (List!68502 List!68501) Unit!162026)

(assert (=> b!7074855 (= lt!2548475 (lemmaZipperMatchesExistsMatchingContext!579 lt!2548471 s!7408))))

(declare-fun toList!10999 ((Set Context!13308)) List!68502)

(assert (=> b!7074855 (= lt!2548471 (toList!10999 lt!2548473))))

(declare-fun b!7074849 () Bool)

(declare-fun res!2889758 () Bool)

(assert (=> b!7074849 (=> res!2889758 e!4253427)))

(assert (=> b!7074849 (= res!2889758 (not (set.member lt!2548476 lt!2548473)))))

(declare-fun res!2889757 () Bool)

(assert (=> start!687500 (=> (not res!2889757) (not e!4253420))))

(assert (=> start!687500 (= res!2889757 (matchZipper!3198 lt!2548473 s!7408))))

(declare-fun appendTo!779 ((Set Context!13308) Context!13308) (Set Context!13308))

(assert (=> start!687500 (= lt!2548473 (appendTo!779 z1!570 ct2!306))))

(assert (=> start!687500 e!4253420))

(declare-fun condSetEmpty!50324 () Bool)

(assert (=> start!687500 (= condSetEmpty!50324 (= z1!570 (as set.empty (Set Context!13308))))))

(assert (=> start!687500 setRes!50324))

(assert (=> start!687500 (and (inv!87005 ct2!306) e!4253421)))

(declare-fun e!4253423 () Bool)

(assert (=> start!687500 e!4253423))

(declare-fun b!7074856 () Bool)

(declare-fun tp_is_empty!44541 () Bool)

(declare-fun tp!1942617 () Bool)

(assert (=> b!7074856 (= e!4253423 (and tp_is_empty!44541 tp!1942617))))

(declare-fun b!7074857 () Bool)

(assert (=> b!7074857 (= e!4253422 (inv!87005 (Context!13309 (++!15799 lt!2548481 (exprs!7154 ct2!306)))))))

(declare-fun lt!2548477 () Unit!162026)

(assert (=> b!7074857 (= lt!2548477 (lemmaConcatPreservesForall!969 lt!2548481 (exprs!7154 ct2!306) lambda!426396))))

(assert (= (and start!687500 res!2889757) b!7074850))

(assert (= (and b!7074850 res!2889750) b!7074855))

(assert (= (and b!7074855 (not res!2889751)) b!7074849))

(assert (= (and b!7074849 (not res!2889758)) b!7074848))

(assert (= (and b!7074848 (not res!2889754)) b!7074845))

(assert (= (and b!7074845 (not res!2889753)) b!7074846))

(assert (= (and b!7074846 (not res!2889749)) b!7074851))

(assert (= (and b!7074851 (not res!2889755)) b!7074852))

(assert (= (and b!7074852 (not res!2889752)) b!7074847))

(assert (= (and b!7074847 (not res!2889756)) b!7074857))

(assert (= (and start!687500 condSetEmpty!50324) setIsEmpty!50324))

(assert (= (and start!687500 (not condSetEmpty!50324)) setNonEmpty!50324))

(assert (= setNonEmpty!50324 b!7074853))

(assert (= start!687500 b!7074854))

(assert (= (and start!687500 (is-Cons!68377 s!7408)) b!7074856))

(declare-fun m!7802448 () Bool)

(assert (=> b!7074846 m!7802448))

(declare-fun m!7802450 () Bool)

(assert (=> b!7074846 m!7802450))

(declare-fun m!7802452 () Bool)

(assert (=> b!7074846 m!7802452))

(declare-fun m!7802454 () Bool)

(assert (=> b!7074846 m!7802454))

(declare-fun m!7802456 () Bool)

(assert (=> b!7074846 m!7802456))

(declare-fun m!7802458 () Bool)

(assert (=> b!7074855 m!7802458))

(declare-fun m!7802460 () Bool)

(assert (=> b!7074855 m!7802460))

(declare-fun m!7802462 () Bool)

(assert (=> b!7074855 m!7802462))

(declare-fun m!7802464 () Bool)

(assert (=> b!7074855 m!7802464))

(declare-fun m!7802466 () Bool)

(assert (=> b!7074855 m!7802466))

(declare-fun m!7802468 () Bool)

(assert (=> b!7074855 m!7802468))

(declare-fun m!7802470 () Bool)

(assert (=> b!7074849 m!7802470))

(declare-fun m!7802472 () Bool)

(assert (=> b!7074857 m!7802472))

(declare-fun m!7802474 () Bool)

(assert (=> b!7074857 m!7802474))

(declare-fun m!7802476 () Bool)

(assert (=> b!7074857 m!7802476))

(declare-fun m!7802478 () Bool)

(assert (=> setNonEmpty!50324 m!7802478))

(declare-fun m!7802480 () Bool)

(assert (=> b!7074848 m!7802480))

(declare-fun m!7802482 () Bool)

(assert (=> b!7074848 m!7802482))

(assert (=> b!7074848 m!7802454))

(declare-fun m!7802484 () Bool)

(assert (=> b!7074848 m!7802484))

(declare-fun m!7802486 () Bool)

(assert (=> b!7074847 m!7802486))

(declare-fun m!7802488 () Bool)

(assert (=> b!7074847 m!7802488))

(declare-fun m!7802490 () Bool)

(assert (=> b!7074852 m!7802490))

(declare-fun m!7802492 () Bool)

(assert (=> b!7074845 m!7802492))

(assert (=> b!7074845 m!7802454))

(declare-fun m!7802494 () Bool)

(assert (=> start!687500 m!7802494))

(declare-fun m!7802496 () Bool)

(assert (=> start!687500 m!7802496))

(declare-fun m!7802498 () Bool)

(assert (=> start!687500 m!7802498))

(push 1)

(assert (not setNonEmpty!50324))

(assert (not b!7074846))

(assert (not b!7074857))

(assert (not start!687500))

(assert tp_is_empty!44541)

(assert (not b!7074852))

(assert (not b!7074853))

(assert (not b!7074848))

(assert (not b!7074854))

(assert (not b!7074855))

(assert (not b!7074847))

(assert (not b!7074856))

(assert (not b!7074845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2212499 () Bool)

(declare-fun c!1319908 () Bool)

(declare-fun isEmpty!39909 (List!68501) Bool)

(assert (=> d!2212499 (= c!1319908 (isEmpty!39909 s!7408))))

(declare-fun e!4253458 () Bool)

(assert (=> d!2212499 (= (matchZipper!3198 lt!2548473 s!7408) e!4253458)))

(declare-fun b!7074913 () Bool)

(declare-fun nullableZipper!2706 ((Set Context!13308)) Bool)

(assert (=> b!7074913 (= e!4253458 (nullableZipper!2706 lt!2548473))))

(declare-fun b!7074914 () Bool)

(declare-fun head!14414 (List!68501) C!35586)

(declare-fun tail!13850 (List!68501) List!68501)

(assert (=> b!7074914 (= e!4253458 (matchZipper!3198 (derivationStepZipper!3108 lt!2548473 (head!14414 s!7408)) (tail!13850 s!7408)))))

(assert (= (and d!2212499 c!1319908) b!7074913))

(assert (= (and d!2212499 (not c!1319908)) b!7074914))

(declare-fun m!7802552 () Bool)

(assert (=> d!2212499 m!7802552))

(declare-fun m!7802554 () Bool)

(assert (=> b!7074913 m!7802554))

(declare-fun m!7802556 () Bool)

(assert (=> b!7074914 m!7802556))

(assert (=> b!7074914 m!7802556))

(declare-fun m!7802558 () Bool)

(assert (=> b!7074914 m!7802558))

(declare-fun m!7802560 () Bool)

(assert (=> b!7074914 m!7802560))

(assert (=> b!7074914 m!7802558))

(assert (=> b!7074914 m!7802560))

(declare-fun m!7802562 () Bool)

(assert (=> b!7074914 m!7802562))

(assert (=> start!687500 d!2212499))

(declare-fun bs!1881070 () Bool)

(declare-fun d!2212501 () Bool)

(assert (= bs!1881070 (and d!2212501 b!7074848)))

(declare-fun lambda!426424 () Int)

(assert (=> bs!1881070 (= lambda!426424 lambda!426395)))

(assert (=> d!2212501 true))

(declare-fun map!16004 ((Set Context!13308) Int) (Set Context!13308))

(assert (=> d!2212501 (= (appendTo!779 z1!570 ct2!306) (map!16004 z1!570 lambda!426424))))

(declare-fun bs!1881071 () Bool)

(assert (= bs!1881071 d!2212501))

(declare-fun m!7802564 () Bool)

(assert (=> bs!1881071 m!7802564))

(assert (=> start!687500 d!2212501))

(declare-fun bs!1881072 () Bool)

(declare-fun d!2212503 () Bool)

(assert (= bs!1881072 (and d!2212503 b!7074848)))

(declare-fun lambda!426427 () Int)

(assert (=> bs!1881072 (= lambda!426427 lambda!426396)))

(declare-fun forall!16610 (List!68500 Int) Bool)

(assert (=> d!2212503 (= (inv!87005 ct2!306) (forall!16610 (exprs!7154 ct2!306) lambda!426427))))

(declare-fun bs!1881073 () Bool)

(assert (= bs!1881073 d!2212503))

(declare-fun m!7802566 () Bool)

(assert (=> bs!1881073 m!7802566))

(assert (=> start!687500 d!2212503))

(declare-fun d!2212507 () Bool)

(assert (=> d!2212507 (forall!16610 (++!15799 (exprs!7154 lt!2548479) (exprs!7154 ct2!306)) lambda!426396)))

(declare-fun lt!2548534 () Unit!162026)

(declare-fun choose!54280 (List!68500 List!68500 Int) Unit!162026)

(assert (=> d!2212507 (= lt!2548534 (choose!54280 (exprs!7154 lt!2548479) (exprs!7154 ct2!306) lambda!426396))))

(assert (=> d!2212507 (forall!16610 (exprs!7154 lt!2548479) lambda!426396)))

(assert (=> d!2212507 (= (lemmaConcatPreservesForall!969 (exprs!7154 lt!2548479) (exprs!7154 ct2!306) lambda!426396) lt!2548534)))

(declare-fun bs!1881074 () Bool)

(assert (= bs!1881074 d!2212507))

(assert (=> bs!1881074 m!7802482))

(assert (=> bs!1881074 m!7802482))

(declare-fun m!7802568 () Bool)

(assert (=> bs!1881074 m!7802568))

(declare-fun m!7802570 () Bool)

(assert (=> bs!1881074 m!7802570))

(declare-fun m!7802572 () Bool)

(assert (=> bs!1881074 m!7802572))

(assert (=> b!7074846 d!2212507))

(declare-fun d!2212509 () Bool)

(declare-fun dynLambda!27824 (Int Context!13308) (Set Context!13308))

(assert (=> d!2212509 (= (flatMap!2584 lt!2548480 lambda!426397) (dynLambda!27824 lambda!426397 lt!2548482))))

(declare-fun lt!2548537 () Unit!162026)

(declare-fun choose!54281 ((Set Context!13308) Context!13308 Int) Unit!162026)

(assert (=> d!2212509 (= lt!2548537 (choose!54281 lt!2548480 lt!2548482 lambda!426397))))

(assert (=> d!2212509 (= lt!2548480 (set.insert lt!2548482 (as set.empty (Set Context!13308))))))

(assert (=> d!2212509 (= (lemmaFlatMapOnSingletonSet!2093 lt!2548480 lt!2548482 lambda!426397) lt!2548537)))

(declare-fun b_lambda!270127 () Bool)

(assert (=> (not b_lambda!270127) (not d!2212509)))

(declare-fun bs!1881075 () Bool)

(assert (= bs!1881075 d!2212509))

(assert (=> bs!1881075 m!7802456))

(declare-fun m!7802574 () Bool)

(assert (=> bs!1881075 m!7802574))

(declare-fun m!7802576 () Bool)

(assert (=> bs!1881075 m!7802576))

(assert (=> bs!1881075 m!7802492))

(assert (=> b!7074846 d!2212509))

(declare-fun b!7074931 () Bool)

(declare-fun e!4253468 () Bool)

(assert (=> b!7074931 (= e!4253468 (nullable!7341 (h!74824 (exprs!7154 lt!2548482))))))

(declare-fun d!2212511 () Bool)

(declare-fun c!1319918 () Bool)

(assert (=> d!2212511 (= c!1319918 e!4253468)))

(declare-fun res!2889793 () Bool)

(assert (=> d!2212511 (=> (not res!2889793) (not e!4253468))))

(assert (=> d!2212511 (= res!2889793 (is-Cons!68376 (exprs!7154 lt!2548482)))))

(declare-fun e!4253469 () (Set Context!13308))

(assert (=> d!2212511 (= (derivationStepZipperUp!2242 lt!2548482 (h!74825 s!7408)) e!4253469)))

(declare-fun b!7074932 () Bool)

(declare-fun e!4253470 () (Set Context!13308))

(assert (=> b!7074932 (= e!4253470 (as set.empty (Set Context!13308)))))

(declare-fun b!7074933 () Bool)

(assert (=> b!7074933 (= e!4253469 e!4253470)))

(declare-fun c!1319917 () Bool)

(assert (=> b!7074933 (= c!1319917 (is-Cons!68376 (exprs!7154 lt!2548482)))))

(declare-fun bm!642966 () Bool)

(declare-fun call!642971 () (Set Context!13308))

(declare-fun derivationStepZipperDown!2292 (Regex!17658 Context!13308 C!35586) (Set Context!13308))

(assert (=> bm!642966 (= call!642971 (derivationStepZipperDown!2292 (h!74824 (exprs!7154 lt!2548482)) (Context!13309 (t!382283 (exprs!7154 lt!2548482))) (h!74825 s!7408)))))

(declare-fun b!7074934 () Bool)

(assert (=> b!7074934 (= e!4253470 call!642971)))

(declare-fun b!7074935 () Bool)

(assert (=> b!7074935 (= e!4253469 (set.union call!642971 (derivationStepZipperUp!2242 (Context!13309 (t!382283 (exprs!7154 lt!2548482))) (h!74825 s!7408))))))

(assert (= (and d!2212511 res!2889793) b!7074931))

(assert (= (and d!2212511 c!1319918) b!7074935))

(assert (= (and d!2212511 (not c!1319918)) b!7074933))

(assert (= (and b!7074933 c!1319917) b!7074934))

(assert (= (and b!7074933 (not c!1319917)) b!7074932))

(assert (= (or b!7074935 b!7074934) bm!642966))

(declare-fun m!7802588 () Bool)

(assert (=> b!7074931 m!7802588))

(declare-fun m!7802592 () Bool)

(assert (=> bm!642966 m!7802592))

(declare-fun m!7802594 () Bool)

(assert (=> b!7074935 m!7802594))

(assert (=> b!7074846 d!2212511))

(declare-fun bs!1881076 () Bool)

(declare-fun d!2212515 () Bool)

(assert (= bs!1881076 (and d!2212515 b!7074846)))

(declare-fun lambda!426430 () Int)

(assert (=> bs!1881076 (= lambda!426430 lambda!426397)))

(assert (=> d!2212515 true))

(assert (=> d!2212515 (= (derivationStepZipper!3108 lt!2548480 (h!74825 s!7408)) (flatMap!2584 lt!2548480 lambda!426430))))

(declare-fun bs!1881077 () Bool)

(assert (= bs!1881077 d!2212515))

(declare-fun m!7802596 () Bool)

(assert (=> bs!1881077 m!7802596))

(assert (=> b!7074846 d!2212515))

(declare-fun d!2212517 () Bool)

(declare-fun choose!54282 ((Set Context!13308) Int) (Set Context!13308))

(assert (=> d!2212517 (= (flatMap!2584 lt!2548480 lambda!426397) (choose!54282 lt!2548480 lambda!426397))))

(declare-fun bs!1881078 () Bool)

(assert (= bs!1881078 d!2212517))

(declare-fun m!7802598 () Bool)

(assert (=> bs!1881078 m!7802598))

(assert (=> b!7074846 d!2212517))

(declare-fun bs!1881079 () Bool)

(declare-fun d!2212519 () Bool)

(assert (= bs!1881079 (and d!2212519 b!7074848)))

(declare-fun lambda!426431 () Int)

(assert (=> bs!1881079 (= lambda!426431 lambda!426396)))

(declare-fun bs!1881080 () Bool)

(assert (= bs!1881080 (and d!2212519 d!2212503)))

(assert (=> bs!1881080 (= lambda!426431 lambda!426427)))

(assert (=> d!2212519 (= (inv!87005 setElem!50324) (forall!16610 (exprs!7154 setElem!50324) lambda!426431))))

(declare-fun bs!1881081 () Bool)

(assert (= bs!1881081 d!2212519))

(declare-fun m!7802600 () Bool)

(assert (=> bs!1881081 m!7802600))

(assert (=> setNonEmpty!50324 d!2212519))

(declare-fun d!2212521 () Bool)

(declare-fun e!4253473 () Bool)

(assert (=> d!2212521 e!4253473))

(declare-fun res!2889796 () Bool)

(assert (=> d!2212521 (=> (not res!2889796) (not e!4253473))))

(declare-fun lt!2548540 () List!68502)

(declare-fun noDuplicate!2734 (List!68502) Bool)

(assert (=> d!2212521 (= res!2889796 (noDuplicate!2734 lt!2548540))))

(declare-fun choose!54283 ((Set Context!13308)) List!68502)

(assert (=> d!2212521 (= lt!2548540 (choose!54283 lt!2548473))))

(assert (=> d!2212521 (= (toList!10999 lt!2548473) lt!2548540)))

(declare-fun b!7074940 () Bool)

(declare-fun content!13815 (List!68502) (Set Context!13308))

(assert (=> b!7074940 (= e!4253473 (= (content!13815 lt!2548540) lt!2548473))))

(assert (= (and d!2212521 res!2889796) b!7074940))

(declare-fun m!7802602 () Bool)

(assert (=> d!2212521 m!7802602))

(declare-fun m!7802604 () Bool)

(assert (=> d!2212521 m!7802604))

(declare-fun m!7802606 () Bool)

(assert (=> b!7074940 m!7802606))

(assert (=> b!7074855 d!2212521))

(declare-fun d!2212523 () Bool)

(declare-fun e!4253479 () Bool)

(assert (=> d!2212523 e!4253479))

(declare-fun res!2889802 () Bool)

(assert (=> d!2212523 (=> (not res!2889802) (not e!4253479))))

(declare-fun lt!2548546 () Context!13308)

(declare-fun dynLambda!27825 (Int Context!13308) Bool)

(assert (=> d!2212523 (= res!2889802 (dynLambda!27825 lambda!426394 lt!2548546))))

(declare-fun getWitness!1768 (List!68502 Int) Context!13308)

(assert (=> d!2212523 (= lt!2548546 (getWitness!1768 (toList!10999 lt!2548473) lambda!426394))))

(declare-fun exists!3718 ((Set Context!13308) Int) Bool)

(assert (=> d!2212523 (exists!3718 lt!2548473 lambda!426394)))

(assert (=> d!2212523 (= (getWitness!1766 lt!2548473 lambda!426394) lt!2548546)))

(declare-fun b!7074946 () Bool)

(assert (=> b!7074946 (= e!4253479 (set.member lt!2548546 lt!2548473))))

(assert (= (and d!2212523 res!2889802) b!7074946))

(declare-fun b_lambda!270131 () Bool)

(assert (=> (not b_lambda!270131) (not d!2212523)))

(declare-fun m!7802608 () Bool)

(assert (=> d!2212523 m!7802608))

(assert (=> d!2212523 m!7802468))

(assert (=> d!2212523 m!7802468))

(declare-fun m!7802612 () Bool)

(assert (=> d!2212523 m!7802612))

(declare-fun m!7802614 () Bool)

(assert (=> d!2212523 m!7802614))

(declare-fun m!7802616 () Bool)

(assert (=> b!7074946 m!7802616))

(assert (=> b!7074855 d!2212523))

(declare-fun bs!1881082 () Bool)

(declare-fun d!2212525 () Bool)

(assert (= bs!1881082 (and d!2212525 b!7074855)))

(declare-fun lambda!426434 () Int)

(assert (=> bs!1881082 (not (= lambda!426434 lambda!426394))))

(assert (=> d!2212525 true))

(declare-fun order!28423 () Int)

(declare-fun dynLambda!27826 (Int Int) Int)

(assert (=> d!2212525 (< (dynLambda!27826 order!28423 lambda!426394) (dynLambda!27826 order!28423 lambda!426434))))

(declare-fun forall!16611 (List!68502 Int) Bool)

(assert (=> d!2212525 (= (exists!3716 lt!2548471 lambda!426394) (not (forall!16611 lt!2548471 lambda!426434)))))

(declare-fun bs!1881083 () Bool)

(assert (= bs!1881083 d!2212525))

(declare-fun m!7802624 () Bool)

(assert (=> bs!1881083 m!7802624))

(assert (=> b!7074855 d!2212525))

(declare-fun bs!1881084 () Bool)

(declare-fun d!2212529 () Bool)

(assert (= bs!1881084 (and d!2212529 b!7074855)))

(declare-fun lambda!426437 () Int)

(assert (=> bs!1881084 (= lambda!426437 lambda!426394)))

(declare-fun bs!1881085 () Bool)

(assert (= bs!1881085 (and d!2212529 d!2212525)))

(assert (=> bs!1881085 (not (= lambda!426437 lambda!426434))))

(assert (=> d!2212529 true))

(assert (=> d!2212529 (exists!3716 lt!2548471 lambda!426437)))

(declare-fun lt!2548549 () Unit!162026)

(declare-fun choose!54284 (List!68502 List!68501) Unit!162026)

(assert (=> d!2212529 (= lt!2548549 (choose!54284 lt!2548471 s!7408))))

(assert (=> d!2212529 (matchZipper!3198 (content!13815 lt!2548471) s!7408)))

(assert (=> d!2212529 (= (lemmaZipperMatchesExistsMatchingContext!579 lt!2548471 s!7408) lt!2548549)))

(declare-fun bs!1881086 () Bool)

(assert (= bs!1881086 d!2212529))

(declare-fun m!7802626 () Bool)

(assert (=> bs!1881086 m!7802626))

(declare-fun m!7802628 () Bool)

(assert (=> bs!1881086 m!7802628))

(declare-fun m!7802630 () Bool)

(assert (=> bs!1881086 m!7802630))

(assert (=> bs!1881086 m!7802630))

(declare-fun m!7802632 () Bool)

(assert (=> bs!1881086 m!7802632))

(assert (=> b!7074855 d!2212529))

(declare-fun d!2212531 () Bool)

(declare-fun c!1319923 () Bool)

(assert (=> d!2212531 (= c!1319923 (isEmpty!39909 s!7408))))

(declare-fun e!4253480 () Bool)

(assert (=> d!2212531 (= (matchZipper!3198 lt!2548474 s!7408) e!4253480)))

(declare-fun b!7074949 () Bool)

(assert (=> b!7074949 (= e!4253480 (nullableZipper!2706 lt!2548474))))

(declare-fun b!7074950 () Bool)

(assert (=> b!7074950 (= e!4253480 (matchZipper!3198 (derivationStepZipper!3108 lt!2548474 (head!14414 s!7408)) (tail!13850 s!7408)))))

(assert (= (and d!2212531 c!1319923) b!7074949))

(assert (= (and d!2212531 (not c!1319923)) b!7074950))

(assert (=> d!2212531 m!7802552))

(declare-fun m!7802634 () Bool)

(assert (=> b!7074949 m!7802634))

(assert (=> b!7074950 m!7802556))

(assert (=> b!7074950 m!7802556))

(declare-fun m!7802636 () Bool)

(assert (=> b!7074950 m!7802636))

(assert (=> b!7074950 m!7802560))

(assert (=> b!7074950 m!7802636))

(assert (=> b!7074950 m!7802560))

(declare-fun m!7802638 () Bool)

(assert (=> b!7074950 m!7802638))

(assert (=> b!7074855 d!2212531))

(declare-fun d!2212533 () Bool)

(declare-fun nullableFct!2819 (Regex!17658) Bool)

(assert (=> d!2212533 (= (nullable!7341 (h!74824 (exprs!7154 lt!2548479))) (nullableFct!2819 (h!74824 (exprs!7154 lt!2548479))))))

(declare-fun bs!1881087 () Bool)

(assert (= bs!1881087 d!2212533))

(declare-fun m!7802640 () Bool)

(assert (=> bs!1881087 m!7802640))

(assert (=> b!7074847 d!2212533))

(declare-fun d!2212535 () Bool)

(assert (=> d!2212535 (= (tail!13848 (exprs!7154 lt!2548479)) (t!382283 (exprs!7154 lt!2548479)))))

(assert (=> b!7074847 d!2212535))

(declare-fun bs!1881088 () Bool)

(declare-fun d!2212537 () Bool)

(assert (= bs!1881088 (and d!2212537 b!7074848)))

(declare-fun lambda!426438 () Int)

(assert (=> bs!1881088 (= lambda!426438 lambda!426396)))

(declare-fun bs!1881089 () Bool)

(assert (= bs!1881089 (and d!2212537 d!2212503)))

(assert (=> bs!1881089 (= lambda!426438 lambda!426427)))

(declare-fun bs!1881090 () Bool)

(assert (= bs!1881090 (and d!2212537 d!2212519)))

(assert (=> bs!1881090 (= lambda!426438 lambda!426431)))

(assert (=> d!2212537 (= (inv!87005 (Context!13309 (++!15799 lt!2548481 (exprs!7154 ct2!306)))) (forall!16610 (exprs!7154 (Context!13309 (++!15799 lt!2548481 (exprs!7154 ct2!306)))) lambda!426438))))

(declare-fun bs!1881091 () Bool)

(assert (= bs!1881091 d!2212537))

(declare-fun m!7802642 () Bool)

(assert (=> bs!1881091 m!7802642))

(assert (=> b!7074857 d!2212537))

(declare-fun b!7074959 () Bool)

(declare-fun e!4253485 () List!68500)

(assert (=> b!7074959 (= e!4253485 (exprs!7154 ct2!306))))

(declare-fun b!7074960 () Bool)

(assert (=> b!7074960 (= e!4253485 (Cons!68376 (h!74824 lt!2548481) (++!15799 (t!382283 lt!2548481) (exprs!7154 ct2!306))))))

(declare-fun d!2212539 () Bool)

(declare-fun e!4253486 () Bool)

(assert (=> d!2212539 e!4253486))

(declare-fun res!2889808 () Bool)

(assert (=> d!2212539 (=> (not res!2889808) (not e!4253486))))

(declare-fun lt!2548555 () List!68500)

(declare-fun content!13816 (List!68500) (Set Regex!17658))

(assert (=> d!2212539 (= res!2889808 (= (content!13816 lt!2548555) (set.union (content!13816 lt!2548481) (content!13816 (exprs!7154 ct2!306)))))))

(assert (=> d!2212539 (= lt!2548555 e!4253485)))

(declare-fun c!1319928 () Bool)

(assert (=> d!2212539 (= c!1319928 (is-Nil!68376 lt!2548481))))

(assert (=> d!2212539 (= (++!15799 lt!2548481 (exprs!7154 ct2!306)) lt!2548555)))

(declare-fun b!7074962 () Bool)

(assert (=> b!7074962 (= e!4253486 (or (not (= (exprs!7154 ct2!306) Nil!68376)) (= lt!2548555 lt!2548481)))))

(declare-fun b!7074961 () Bool)

(declare-fun res!2889807 () Bool)

(assert (=> b!7074961 (=> (not res!2889807) (not e!4253486))))

(declare-fun size!41225 (List!68500) Int)

(assert (=> b!7074961 (= res!2889807 (= (size!41225 lt!2548555) (+ (size!41225 lt!2548481) (size!41225 (exprs!7154 ct2!306)))))))

(assert (= (and d!2212539 c!1319928) b!7074959))

(assert (= (and d!2212539 (not c!1319928)) b!7074960))

(assert (= (and d!2212539 res!2889808) b!7074961))

(assert (= (and b!7074961 res!2889807) b!7074962))

(declare-fun m!7802652 () Bool)

(assert (=> b!7074960 m!7802652))

(declare-fun m!7802654 () Bool)

(assert (=> d!2212539 m!7802654))

(declare-fun m!7802656 () Bool)

(assert (=> d!2212539 m!7802656))

(declare-fun m!7802658 () Bool)

(assert (=> d!2212539 m!7802658))

(declare-fun m!7802660 () Bool)

(assert (=> b!7074961 m!7802660))

(declare-fun m!7802662 () Bool)

(assert (=> b!7074961 m!7802662))

(declare-fun m!7802664 () Bool)

(assert (=> b!7074961 m!7802664))

(assert (=> b!7074857 d!2212539))

(declare-fun d!2212543 () Bool)

(assert (=> d!2212543 (forall!16610 (++!15799 lt!2548481 (exprs!7154 ct2!306)) lambda!426396)))

(declare-fun lt!2548556 () Unit!162026)

(assert (=> d!2212543 (= lt!2548556 (choose!54280 lt!2548481 (exprs!7154 ct2!306) lambda!426396))))

(assert (=> d!2212543 (forall!16610 lt!2548481 lambda!426396)))

(assert (=> d!2212543 (= (lemmaConcatPreservesForall!969 lt!2548481 (exprs!7154 ct2!306) lambda!426396) lt!2548556)))

(declare-fun bs!1881094 () Bool)

(assert (= bs!1881094 d!2212543))

(assert (=> bs!1881094 m!7802472))

(assert (=> bs!1881094 m!7802472))

(declare-fun m!7802666 () Bool)

(assert (=> bs!1881094 m!7802666))

(declare-fun m!7802668 () Bool)

(assert (=> bs!1881094 m!7802668))

(declare-fun m!7802670 () Bool)

(assert (=> bs!1881094 m!7802670))

(assert (=> b!7074857 d!2212543))

(declare-fun d!2212545 () Bool)

(assert (=> d!2212545 (= (isEmpty!39907 (exprs!7154 lt!2548479)) (is-Nil!68376 (exprs!7154 lt!2548479)))))

(assert (=> b!7074852 d!2212545))

(declare-fun b!7074963 () Bool)

(declare-fun e!4253487 () List!68500)

(assert (=> b!7074963 (= e!4253487 (exprs!7154 ct2!306))))

(declare-fun b!7074964 () Bool)

(assert (=> b!7074964 (= e!4253487 (Cons!68376 (h!74824 (exprs!7154 lt!2548479)) (++!15799 (t!382283 (exprs!7154 lt!2548479)) (exprs!7154 ct2!306))))))

(declare-fun d!2212547 () Bool)

(declare-fun e!4253488 () Bool)

(assert (=> d!2212547 e!4253488))

(declare-fun res!2889810 () Bool)

(assert (=> d!2212547 (=> (not res!2889810) (not e!4253488))))

(declare-fun lt!2548557 () List!68500)

(assert (=> d!2212547 (= res!2889810 (= (content!13816 lt!2548557) (set.union (content!13816 (exprs!7154 lt!2548479)) (content!13816 (exprs!7154 ct2!306)))))))

(assert (=> d!2212547 (= lt!2548557 e!4253487)))

(declare-fun c!1319929 () Bool)

(assert (=> d!2212547 (= c!1319929 (is-Nil!68376 (exprs!7154 lt!2548479)))))

(assert (=> d!2212547 (= (++!15799 (exprs!7154 lt!2548479) (exprs!7154 ct2!306)) lt!2548557)))

(declare-fun b!7074966 () Bool)

(assert (=> b!7074966 (= e!4253488 (or (not (= (exprs!7154 ct2!306) Nil!68376)) (= lt!2548557 (exprs!7154 lt!2548479))))))

(declare-fun b!7074965 () Bool)

(declare-fun res!2889809 () Bool)

(assert (=> b!7074965 (=> (not res!2889809) (not e!4253488))))

(assert (=> b!7074965 (= res!2889809 (= (size!41225 lt!2548557) (+ (size!41225 (exprs!7154 lt!2548479)) (size!41225 (exprs!7154 ct2!306)))))))

(assert (= (and d!2212547 c!1319929) b!7074963))

(assert (= (and d!2212547 (not c!1319929)) b!7074964))

(assert (= (and d!2212547 res!2889810) b!7074965))

(assert (= (and b!7074965 res!2889809) b!7074966))

(declare-fun m!7802672 () Bool)

(assert (=> b!7074964 m!7802672))

(declare-fun m!7802674 () Bool)

(assert (=> d!2212547 m!7802674))

(declare-fun m!7802676 () Bool)

(assert (=> d!2212547 m!7802676))

(assert (=> d!2212547 m!7802658))

(declare-fun m!7802678 () Bool)

(assert (=> b!7074965 m!7802678))

(declare-fun m!7802680 () Bool)

(assert (=> b!7074965 m!7802680))

(assert (=> b!7074965 m!7802664))

(assert (=> b!7074848 d!2212547))

(assert (=> b!7074848 d!2212507))

(declare-fun d!2212549 () Bool)

(declare-fun e!4253494 () Bool)

(assert (=> d!2212549 e!4253494))

(declare-fun res!2889816 () Bool)

(assert (=> d!2212549 (=> (not res!2889816) (not e!4253494))))

(declare-fun lt!2548563 () Context!13308)

(declare-fun dynLambda!27827 (Int Context!13308) Context!13308)

(assert (=> d!2212549 (= res!2889816 (= lt!2548476 (dynLambda!27827 lambda!426395 lt!2548563)))))

(declare-fun choose!54285 ((Set Context!13308) Int Context!13308) Context!13308)

(assert (=> d!2212549 (= lt!2548563 (choose!54285 z1!570 lambda!426395 lt!2548476))))

(assert (=> d!2212549 (set.member lt!2548476 (map!16004 z1!570 lambda!426395))))

(assert (=> d!2212549 (= (mapPost2!487 z1!570 lambda!426395 lt!2548476) lt!2548563)))

(declare-fun b!7074973 () Bool)

(assert (=> b!7074973 (= e!4253494 (set.member lt!2548563 z1!570))))

(assert (= (and d!2212549 res!2889816) b!7074973))

(declare-fun b_lambda!270133 () Bool)

(assert (=> (not b_lambda!270133) (not d!2212549)))

(declare-fun m!7802688 () Bool)

(assert (=> d!2212549 m!7802688))

(declare-fun m!7802690 () Bool)

(assert (=> d!2212549 m!7802690))

(declare-fun m!7802692 () Bool)

(assert (=> d!2212549 m!7802692))

(declare-fun m!7802694 () Bool)

(assert (=> d!2212549 m!7802694))

(declare-fun m!7802696 () Bool)

(assert (=> b!7074973 m!7802696))

(assert (=> b!7074848 d!2212549))

(assert (=> b!7074845 d!2212507))

(declare-fun condSetEmpty!50330 () Bool)

(assert (=> setNonEmpty!50324 (= condSetEmpty!50330 (= setRest!50324 (as set.empty (Set Context!13308))))))

(declare-fun setRes!50330 () Bool)

(assert (=> setNonEmpty!50324 (= tp!1942619 setRes!50330)))

(declare-fun setIsEmpty!50330 () Bool)

(assert (=> setIsEmpty!50330 setRes!50330))

(declare-fun e!4253497 () Bool)

(declare-fun tp!1942638 () Bool)

(declare-fun setElem!50330 () Context!13308)

(declare-fun setNonEmpty!50330 () Bool)

(assert (=> setNonEmpty!50330 (= setRes!50330 (and tp!1942638 (inv!87005 setElem!50330) e!4253497))))

(declare-fun setRest!50330 () (Set Context!13308))

(assert (=> setNonEmpty!50330 (= setRest!50324 (set.union (set.insert setElem!50330 (as set.empty (Set Context!13308))) setRest!50330))))

(declare-fun b!7074978 () Bool)

(declare-fun tp!1942637 () Bool)

(assert (=> b!7074978 (= e!4253497 tp!1942637)))

(assert (= (and setNonEmpty!50324 condSetEmpty!50330) setIsEmpty!50330))

(assert (= (and setNonEmpty!50324 (not condSetEmpty!50330)) setNonEmpty!50330))

(assert (= setNonEmpty!50330 b!7074978))

(declare-fun m!7802698 () Bool)

(assert (=> setNonEmpty!50330 m!7802698))

(declare-fun b!7074983 () Bool)

(declare-fun e!4253500 () Bool)

(declare-fun tp!1942641 () Bool)

(assert (=> b!7074983 (= e!4253500 (and tp_is_empty!44541 tp!1942641))))

(assert (=> b!7074856 (= tp!1942617 e!4253500)))

(assert (= (and b!7074856 (is-Cons!68377 (t!382284 s!7408))) b!7074983))

(declare-fun b!7074988 () Bool)

(declare-fun e!4253503 () Bool)

(declare-fun tp!1942646 () Bool)

(declare-fun tp!1942647 () Bool)

(assert (=> b!7074988 (= e!4253503 (and tp!1942646 tp!1942647))))

(assert (=> b!7074853 (= tp!1942620 e!4253503)))

(assert (= (and b!7074853 (is-Cons!68376 (exprs!7154 setElem!50324))) b!7074988))

(declare-fun b!7074989 () Bool)

(declare-fun e!4253504 () Bool)

(declare-fun tp!1942648 () Bool)

(declare-fun tp!1942649 () Bool)

(assert (=> b!7074989 (= e!4253504 (and tp!1942648 tp!1942649))))

(assert (=> b!7074854 (= tp!1942618 e!4253504)))

(assert (= (and b!7074854 (is-Cons!68376 (exprs!7154 ct2!306))) b!7074989))

(declare-fun b_lambda!270135 () Bool)

(assert (= b_lambda!270133 (or b!7074848 b_lambda!270135)))

(declare-fun bs!1881095 () Bool)

(declare-fun d!2212553 () Bool)

(assert (= bs!1881095 (and d!2212553 b!7074848)))

(declare-fun lt!2548564 () Unit!162026)

(assert (=> bs!1881095 (= lt!2548564 (lemmaConcatPreservesForall!969 (exprs!7154 lt!2548563) (exprs!7154 ct2!306) lambda!426396))))

(assert (=> bs!1881095 (= (dynLambda!27827 lambda!426395 lt!2548563) (Context!13309 (++!15799 (exprs!7154 lt!2548563) (exprs!7154 ct2!306))))))

(declare-fun m!7802700 () Bool)

(assert (=> bs!1881095 m!7802700))

(declare-fun m!7802702 () Bool)

(assert (=> bs!1881095 m!7802702))

(assert (=> d!2212549 d!2212553))

(declare-fun b_lambda!270137 () Bool)

(assert (= b_lambda!270131 (or b!7074855 b_lambda!270137)))

(declare-fun bs!1881097 () Bool)

(declare-fun d!2212555 () Bool)

(assert (= bs!1881097 (and d!2212555 b!7074855)))

(assert (=> bs!1881097 (= (dynLambda!27825 lambda!426394 lt!2548546) (matchZipper!3198 (set.insert lt!2548546 (as set.empty (Set Context!13308))) s!7408))))

(declare-fun m!7802704 () Bool)

(assert (=> bs!1881097 m!7802704))

(assert (=> bs!1881097 m!7802704))

(declare-fun m!7802706 () Bool)

(assert (=> bs!1881097 m!7802706))

(assert (=> d!2212523 d!2212555))

(declare-fun b_lambda!270139 () Bool)

(assert (= b_lambda!270127 (or b!7074846 b_lambda!270139)))

(declare-fun bs!1881099 () Bool)

(declare-fun d!2212557 () Bool)

(assert (= bs!1881099 (and d!2212557 b!7074846)))

(assert (=> bs!1881099 (= (dynLambda!27824 lambda!426397 lt!2548482) (derivationStepZipperUp!2242 lt!2548482 (h!74825 s!7408)))))

(assert (=> bs!1881099 m!7802448))

(assert (=> d!2212509 d!2212557))

(push 1)

(assert (not d!2212501))

(assert (not b!7074913))

(assert (not d!2212523))

(assert tp_is_empty!44541)

(assert (not bs!1881099))

(assert (not bs!1881097))

(assert (not b!7074914))

(assert (not b!7074961))

(assert (not d!2212507))

(assert (not bs!1881095))

(assert (not b!7074988))

(assert (not b!7074935))

(assert (not d!2212499))

(assert (not bm!642966))

(assert (not d!2212503))

(assert (not b_lambda!270137))

(assert (not d!2212543))

(assert (not d!2212509))

(assert (not b!7074989))

(assert (not b!7074960))

(assert (not d!2212547))

(assert (not setNonEmpty!50330))

(assert (not b!7074964))

(assert (not d!2212517))

(assert (not d!2212537))

(assert (not d!2212521))

(assert (not b_lambda!270135))

(assert (not d!2212529))

(assert (not d!2212525))

(assert (not d!2212549))

(assert (not b_lambda!270139))

(assert (not b!7074940))

(assert (not d!2212519))

(assert (not b!7074949))

(assert (not b!7074983))

(assert (not b!7074978))

(assert (not d!2212515))

(assert (not b!7074931))

(assert (not b!7074965))

(assert (not d!2212539))

(assert (not d!2212533))

(assert (not b!7074950))

(assert (not d!2212531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

