; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676772 () Bool)

(assert start!676772)

(declare-fun b!7019344 () Bool)

(assert (=> b!7019344 true))

(declare-fun b!7019340 () Bool)

(assert (=> b!7019340 true))

(declare-fun b!7019348 () Bool)

(assert (=> b!7019348 true))

(declare-fun res!2865044 () Bool)

(declare-fun e!4219440 () Bool)

(assert (=> start!676772 (=> (not res!2865044) (not e!4219440))))

(declare-datatypes ((C!35014 0))(
  ( (C!35015 (val!27209 Int)) )
))
(declare-datatypes ((Regex!17372 0))(
  ( (ElementMatch!17372 (c!1304423 C!35014)) (Concat!26217 (regOne!35256 Regex!17372) (regTwo!35256 Regex!17372)) (EmptyExpr!17372) (Star!17372 (reg!17701 Regex!17372)) (EmptyLang!17372) (Union!17372 (regOne!35257 Regex!17372) (regTwo!35257 Regex!17372)) )
))
(declare-datatypes ((List!67661 0))(
  ( (Nil!67537) (Cons!67537 (h!73985 Regex!17372) (t!381416 List!67661)) )
))
(declare-datatypes ((Context!12736 0))(
  ( (Context!12737 (exprs!6868 List!67661)) )
))
(declare-fun lt!2510675 () (Set Context!12736))

(declare-datatypes ((List!67662 0))(
  ( (Nil!67538) (Cons!67538 (h!73986 C!35014) (t!381417 List!67662)) )
))
(declare-fun s!7408 () List!67662)

(declare-fun matchZipper!2912 ((Set Context!12736) List!67662) Bool)

(assert (=> start!676772 (= res!2865044 (matchZipper!2912 lt!2510675 s!7408))))

(declare-fun z1!570 () (Set Context!12736))

(declare-fun ct2!306 () Context!12736)

(declare-fun appendTo!493 ((Set Context!12736) Context!12736) (Set Context!12736))

(assert (=> start!676772 (= lt!2510675 (appendTo!493 z1!570 ct2!306))))

(assert (=> start!676772 e!4219440))

(declare-fun condSetEmpty!48621 () Bool)

(assert (=> start!676772 (= condSetEmpty!48621 (= z1!570 (as set.empty (Set Context!12736))))))

(declare-fun setRes!48621 () Bool)

(assert (=> start!676772 setRes!48621))

(declare-fun e!4219442 () Bool)

(declare-fun inv!86290 (Context!12736) Bool)

(assert (=> start!676772 (and (inv!86290 ct2!306) e!4219442)))

(declare-fun e!4219439 () Bool)

(assert (=> start!676772 e!4219439))

(declare-fun b!7019338 () Bool)

(declare-fun e!4219438 () Bool)

(declare-fun tp!1933670 () Bool)

(assert (=> b!7019338 (= e!4219438 tp!1933670)))

(declare-fun b!7019339 () Bool)

(declare-fun tp!1933673 () Bool)

(assert (=> b!7019339 (= e!4219442 tp!1933673)))

(declare-fun setIsEmpty!48621 () Bool)

(assert (=> setIsEmpty!48621 setRes!48621))

(declare-fun e!4219436 () Bool)

(declare-fun e!4219435 () Bool)

(assert (=> b!7019340 (= e!4219436 e!4219435)))

(declare-fun res!2865046 () Bool)

(assert (=> b!7019340 (=> res!2865046 e!4219435)))

(declare-fun lt!2510682 () Context!12736)

(declare-fun lt!2510672 () Context!12736)

(declare-fun lt!2510676 () Context!12736)

(assert (=> b!7019340 (= res!2865046 (or (not (= lt!2510676 lt!2510672)) (not (set.member lt!2510682 z1!570))))))

(declare-fun ++!15408 (List!67661 List!67661) List!67661)

(assert (=> b!7019340 (= lt!2510676 (Context!12737 (++!15408 (exprs!6868 lt!2510682) (exprs!6868 ct2!306))))))

(declare-datatypes ((Unit!161426 0))(
  ( (Unit!161427) )
))
(declare-fun lt!2510677 () Unit!161426)

(declare-fun lambda!410822 () Int)

(declare-fun lemmaConcatPreservesForall!708 (List!67661 List!67661 Int) Unit!161426)

(assert (=> b!7019340 (= lt!2510677 (lemmaConcatPreservesForall!708 (exprs!6868 lt!2510682) (exprs!6868 ct2!306) lambda!410822))))

(declare-fun lambda!410821 () Int)

(declare-fun mapPost2!227 ((Set Context!12736) Int Context!12736) Context!12736)

(assert (=> b!7019340 (= lt!2510682 (mapPost2!227 z1!570 lambda!410821 lt!2510672))))

(declare-fun b!7019341 () Bool)

(declare-fun e!4219437 () Bool)

(declare-fun forall!16285 (List!67661 Int) Bool)

(assert (=> b!7019341 (= e!4219437 (forall!16285 (exprs!6868 lt!2510682) lambda!410822))))

(declare-fun b!7019342 () Bool)

(declare-fun e!4219441 () Bool)

(assert (=> b!7019342 (= e!4219435 e!4219441)))

(declare-fun res!2865051 () Bool)

(assert (=> b!7019342 (=> res!2865051 e!4219441)))

(declare-fun lt!2510671 () (Set Context!12736))

(declare-fun lt!2510683 () (Set Context!12736))

(assert (=> b!7019342 (= res!2865051 (not (= lt!2510671 lt!2510683)))))

(assert (=> b!7019342 (= lt!2510671 (set.insert lt!2510676 (as set.empty (Set Context!12736))))))

(declare-fun lt!2510678 () Unit!161426)

(assert (=> b!7019342 (= lt!2510678 (lemmaConcatPreservesForall!708 (exprs!6868 lt!2510682) (exprs!6868 ct2!306) lambda!410822))))

(declare-fun b!7019343 () Bool)

(declare-fun tp_is_empty!43969 () Bool)

(declare-fun tp!1933671 () Bool)

(assert (=> b!7019343 (= e!4219439 (and tp_is_empty!43969 tp!1933671))))

(assert (=> b!7019344 (= e!4219440 (not e!4219436))))

(declare-fun res!2865049 () Bool)

(assert (=> b!7019344 (=> res!2865049 e!4219436)))

(assert (=> b!7019344 (= res!2865049 (not (matchZipper!2912 lt!2510683 s!7408)))))

(assert (=> b!7019344 (= lt!2510683 (set.insert lt!2510672 (as set.empty (Set Context!12736))))))

(declare-fun lambda!410820 () Int)

(declare-fun getWitness!1338 ((Set Context!12736) Int) Context!12736)

(assert (=> b!7019344 (= lt!2510672 (getWitness!1338 lt!2510675 lambda!410820))))

(declare-datatypes ((List!67663 0))(
  ( (Nil!67539) (Cons!67539 (h!73987 Context!12736) (t!381418 List!67663)) )
))
(declare-fun lt!2510674 () List!67663)

(declare-fun exists!3249 (List!67663 Int) Bool)

(assert (=> b!7019344 (exists!3249 lt!2510674 lambda!410820)))

(declare-fun lt!2510681 () Unit!161426)

(declare-fun lemmaZipperMatchesExistsMatchingContext!341 (List!67663 List!67662) Unit!161426)

(assert (=> b!7019344 (= lt!2510681 (lemmaZipperMatchesExistsMatchingContext!341 lt!2510674 s!7408))))

(declare-fun toList!10732 ((Set Context!12736)) List!67663)

(assert (=> b!7019344 (= lt!2510674 (toList!10732 lt!2510675))))

(declare-fun b!7019345 () Bool)

(declare-fun res!2865047 () Bool)

(assert (=> b!7019345 (=> res!2865047 e!4219436)))

(assert (=> b!7019345 (= res!2865047 (not (set.member lt!2510672 lt!2510675)))))

(declare-fun setElem!48621 () Context!12736)

(declare-fun tp!1933672 () Bool)

(declare-fun setNonEmpty!48621 () Bool)

(assert (=> setNonEmpty!48621 (= setRes!48621 (and tp!1933672 (inv!86290 setElem!48621) e!4219438))))

(declare-fun setRest!48621 () (Set Context!12736))

(assert (=> setNonEmpty!48621 (= z1!570 (set.union (set.insert setElem!48621 (as set.empty (Set Context!12736))) setRest!48621))))

(declare-fun b!7019346 () Bool)

(declare-fun res!2865048 () Bool)

(assert (=> b!7019346 (=> (not res!2865048) (not e!4219440))))

(assert (=> b!7019346 (= res!2865048 (is-Cons!67538 s!7408))))

(declare-fun b!7019347 () Bool)

(declare-fun res!2865045 () Bool)

(assert (=> b!7019347 (=> res!2865045 e!4219437)))

(assert (=> b!7019347 (= res!2865045 (is-Cons!67537 (exprs!6868 lt!2510682)))))

(assert (=> b!7019348 (= e!4219441 e!4219437)))

(declare-fun res!2865050 () Bool)

(assert (=> b!7019348 (=> res!2865050 e!4219437)))

(declare-fun lt!2510679 () (Set Context!12736))

(declare-fun derivationStepZipper!2852 ((Set Context!12736) C!35014) (Set Context!12736))

(assert (=> b!7019348 (= res!2865050 (not (= (derivationStepZipper!2852 lt!2510671 (h!73986 s!7408)) lt!2510679)))))

(declare-fun lambda!410823 () Int)

(declare-fun flatMap!2358 ((Set Context!12736) Int) (Set Context!12736))

(declare-fun derivationStepZipperUp!2022 (Context!12736 C!35014) (Set Context!12736))

(assert (=> b!7019348 (= (flatMap!2358 lt!2510671 lambda!410823) (derivationStepZipperUp!2022 lt!2510676 (h!73986 s!7408)))))

(declare-fun lt!2510680 () Unit!161426)

(declare-fun lemmaFlatMapOnSingletonSet!1873 ((Set Context!12736) Context!12736 Int) Unit!161426)

(assert (=> b!7019348 (= lt!2510680 (lemmaFlatMapOnSingletonSet!1873 lt!2510671 lt!2510676 lambda!410823))))

(assert (=> b!7019348 (= lt!2510679 (derivationStepZipperUp!2022 lt!2510676 (h!73986 s!7408)))))

(declare-fun lt!2510673 () Unit!161426)

(assert (=> b!7019348 (= lt!2510673 (lemmaConcatPreservesForall!708 (exprs!6868 lt!2510682) (exprs!6868 ct2!306) lambda!410822))))

(assert (= (and start!676772 res!2865044) b!7019346))

(assert (= (and b!7019346 res!2865048) b!7019344))

(assert (= (and b!7019344 (not res!2865049)) b!7019345))

(assert (= (and b!7019345 (not res!2865047)) b!7019340))

(assert (= (and b!7019340 (not res!2865046)) b!7019342))

(assert (= (and b!7019342 (not res!2865051)) b!7019348))

(assert (= (and b!7019348 (not res!2865050)) b!7019347))

(assert (= (and b!7019347 (not res!2865045)) b!7019341))

(assert (= (and start!676772 condSetEmpty!48621) setIsEmpty!48621))

(assert (= (and start!676772 (not condSetEmpty!48621)) setNonEmpty!48621))

(assert (= setNonEmpty!48621 b!7019338))

(assert (= start!676772 b!7019339))

(assert (= (and start!676772 (is-Cons!67538 s!7408)) b!7019343))

(declare-fun m!7720544 () Bool)

(assert (=> b!7019341 m!7720544))

(declare-fun m!7720546 () Bool)

(assert (=> b!7019345 m!7720546))

(declare-fun m!7720548 () Bool)

(assert (=> b!7019348 m!7720548))

(declare-fun m!7720550 () Bool)

(assert (=> b!7019348 m!7720550))

(declare-fun m!7720552 () Bool)

(assert (=> b!7019348 m!7720552))

(declare-fun m!7720554 () Bool)

(assert (=> b!7019348 m!7720554))

(declare-fun m!7720556 () Bool)

(assert (=> b!7019348 m!7720556))

(declare-fun m!7720558 () Bool)

(assert (=> b!7019344 m!7720558))

(declare-fun m!7720560 () Bool)

(assert (=> b!7019344 m!7720560))

(declare-fun m!7720562 () Bool)

(assert (=> b!7019344 m!7720562))

(declare-fun m!7720564 () Bool)

(assert (=> b!7019344 m!7720564))

(declare-fun m!7720566 () Bool)

(assert (=> b!7019344 m!7720566))

(declare-fun m!7720568 () Bool)

(assert (=> b!7019344 m!7720568))

(declare-fun m!7720570 () Bool)

(assert (=> b!7019342 m!7720570))

(assert (=> b!7019342 m!7720548))

(declare-fun m!7720572 () Bool)

(assert (=> setNonEmpty!48621 m!7720572))

(declare-fun m!7720574 () Bool)

(assert (=> start!676772 m!7720574))

(declare-fun m!7720576 () Bool)

(assert (=> start!676772 m!7720576))

(declare-fun m!7720578 () Bool)

(assert (=> start!676772 m!7720578))

(declare-fun m!7720580 () Bool)

(assert (=> b!7019340 m!7720580))

(declare-fun m!7720582 () Bool)

(assert (=> b!7019340 m!7720582))

(assert (=> b!7019340 m!7720548))

(declare-fun m!7720584 () Bool)

(assert (=> b!7019340 m!7720584))

(push 1)

(assert (not start!676772))

(assert (not b!7019342))

(assert (not b!7019339))

(assert (not b!7019341))

(assert (not setNonEmpty!48621))

(assert tp_is_empty!43969)

(assert (not b!7019344))

(assert (not b!7019338))

(assert (not b!7019348))

(assert (not b!7019340))

(assert (not b!7019343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7019402 () Bool)

(declare-fun e!4219472 () List!67661)

(assert (=> b!7019402 (= e!4219472 (exprs!6868 ct2!306))))

(declare-fun d!2188020 () Bool)

(declare-fun e!4219471 () Bool)

(assert (=> d!2188020 e!4219471))

(declare-fun res!2865083 () Bool)

(assert (=> d!2188020 (=> (not res!2865083) (not e!4219471))))

(declare-fun lt!2510727 () List!67661)

(declare-fun content!13443 (List!67661) (Set Regex!17372))

(assert (=> d!2188020 (= res!2865083 (= (content!13443 lt!2510727) (set.union (content!13443 (exprs!6868 lt!2510682)) (content!13443 (exprs!6868 ct2!306)))))))

(assert (=> d!2188020 (= lt!2510727 e!4219472)))

(declare-fun c!1304435 () Bool)

(assert (=> d!2188020 (= c!1304435 (is-Nil!67537 (exprs!6868 lt!2510682)))))

(assert (=> d!2188020 (= (++!15408 (exprs!6868 lt!2510682) (exprs!6868 ct2!306)) lt!2510727)))

(declare-fun b!7019403 () Bool)

(assert (=> b!7019403 (= e!4219472 (Cons!67537 (h!73985 (exprs!6868 lt!2510682)) (++!15408 (t!381416 (exprs!6868 lt!2510682)) (exprs!6868 ct2!306))))))

(declare-fun b!7019404 () Bool)

(declare-fun res!2865082 () Bool)

(assert (=> b!7019404 (=> (not res!2865082) (not e!4219471))))

(declare-fun size!41014 (List!67661) Int)

(assert (=> b!7019404 (= res!2865082 (= (size!41014 lt!2510727) (+ (size!41014 (exprs!6868 lt!2510682)) (size!41014 (exprs!6868 ct2!306)))))))

(declare-fun b!7019405 () Bool)

(assert (=> b!7019405 (= e!4219471 (or (not (= (exprs!6868 ct2!306) Nil!67537)) (= lt!2510727 (exprs!6868 lt!2510682))))))

(assert (= (and d!2188020 c!1304435) b!7019402))

(assert (= (and d!2188020 (not c!1304435)) b!7019403))

(assert (= (and d!2188020 res!2865083) b!7019404))

(assert (= (and b!7019404 res!2865082) b!7019405))

(declare-fun m!7720628 () Bool)

(assert (=> d!2188020 m!7720628))

(declare-fun m!7720630 () Bool)

(assert (=> d!2188020 m!7720630))

(declare-fun m!7720632 () Bool)

(assert (=> d!2188020 m!7720632))

(declare-fun m!7720634 () Bool)

(assert (=> b!7019403 m!7720634))

(declare-fun m!7720636 () Bool)

(assert (=> b!7019404 m!7720636))

(declare-fun m!7720638 () Bool)

(assert (=> b!7019404 m!7720638))

(declare-fun m!7720640 () Bool)

(assert (=> b!7019404 m!7720640))

(assert (=> b!7019340 d!2188020))

(declare-fun d!2188022 () Bool)

(assert (=> d!2188022 (forall!16285 (++!15408 (exprs!6868 lt!2510682) (exprs!6868 ct2!306)) lambda!410822)))

(declare-fun lt!2510730 () Unit!161426)

(declare-fun choose!52912 (List!67661 List!67661 Int) Unit!161426)

(assert (=> d!2188022 (= lt!2510730 (choose!52912 (exprs!6868 lt!2510682) (exprs!6868 ct2!306) lambda!410822))))

(assert (=> d!2188022 (forall!16285 (exprs!6868 lt!2510682) lambda!410822)))

(assert (=> d!2188022 (= (lemmaConcatPreservesForall!708 (exprs!6868 lt!2510682) (exprs!6868 ct2!306) lambda!410822) lt!2510730)))

(declare-fun bs!1867301 () Bool)

(assert (= bs!1867301 d!2188022))

(assert (=> bs!1867301 m!7720582))

(assert (=> bs!1867301 m!7720582))

(declare-fun m!7720642 () Bool)

(assert (=> bs!1867301 m!7720642))

(declare-fun m!7720644 () Bool)

(assert (=> bs!1867301 m!7720644))

(assert (=> bs!1867301 m!7720544))

(assert (=> b!7019340 d!2188022))

(declare-fun d!2188024 () Bool)

(declare-fun e!4219475 () Bool)

(assert (=> d!2188024 e!4219475))

(declare-fun res!2865086 () Bool)

(assert (=> d!2188024 (=> (not res!2865086) (not e!4219475))))

(declare-fun lt!2510733 () Context!12736)

(declare-fun dynLambda!27205 (Int Context!12736) Context!12736)

(assert (=> d!2188024 (= res!2865086 (= lt!2510672 (dynLambda!27205 lambda!410821 lt!2510733)))))

(declare-fun choose!52913 ((Set Context!12736) Int Context!12736) Context!12736)

(assert (=> d!2188024 (= lt!2510733 (choose!52913 z1!570 lambda!410821 lt!2510672))))

(declare-fun map!15664 ((Set Context!12736) Int) (Set Context!12736))

(assert (=> d!2188024 (set.member lt!2510672 (map!15664 z1!570 lambda!410821))))

(assert (=> d!2188024 (= (mapPost2!227 z1!570 lambda!410821 lt!2510672) lt!2510733)))

(declare-fun b!7019409 () Bool)

(assert (=> b!7019409 (= e!4219475 (set.member lt!2510733 z1!570))))

(assert (= (and d!2188024 res!2865086) b!7019409))

(declare-fun b_lambda!264947 () Bool)

(assert (=> (not b_lambda!264947) (not d!2188024)))

(declare-fun m!7720646 () Bool)

(assert (=> d!2188024 m!7720646))

(declare-fun m!7720648 () Bool)

(assert (=> d!2188024 m!7720648))

(declare-fun m!7720650 () Bool)

(assert (=> d!2188024 m!7720650))

(declare-fun m!7720652 () Bool)

(assert (=> d!2188024 m!7720652))

(declare-fun m!7720654 () Bool)

(assert (=> b!7019409 m!7720654))

(assert (=> b!7019340 d!2188024))

(declare-fun bs!1867302 () Bool)

(declare-fun d!2188026 () Bool)

(assert (= bs!1867302 (and d!2188026 b!7019340)))

(declare-fun lambda!410848 () Int)

(assert (=> bs!1867302 (= lambda!410848 lambda!410822)))

(assert (=> d!2188026 (= (inv!86290 setElem!48621) (forall!16285 (exprs!6868 setElem!48621) lambda!410848))))

(declare-fun bs!1867303 () Bool)

(assert (= bs!1867303 d!2188026))

(declare-fun m!7720656 () Bool)

(assert (=> bs!1867303 m!7720656))

(assert (=> setNonEmpty!48621 d!2188026))

(declare-fun d!2188028 () Bool)

(declare-fun choose!52914 ((Set Context!12736) Int) (Set Context!12736))

(assert (=> d!2188028 (= (flatMap!2358 lt!2510671 lambda!410823) (choose!52914 lt!2510671 lambda!410823))))

(declare-fun bs!1867304 () Bool)

(assert (= bs!1867304 d!2188028))

(declare-fun m!7720658 () Bool)

(assert (=> bs!1867304 m!7720658))

(assert (=> b!7019348 d!2188028))

(assert (=> b!7019348 d!2188022))

(declare-fun bs!1867305 () Bool)

(declare-fun d!2188030 () Bool)

(assert (= bs!1867305 (and d!2188030 b!7019348)))

(declare-fun lambda!410851 () Int)

(assert (=> bs!1867305 (= lambda!410851 lambda!410823)))

(assert (=> d!2188030 true))

(assert (=> d!2188030 (= (derivationStepZipper!2852 lt!2510671 (h!73986 s!7408)) (flatMap!2358 lt!2510671 lambda!410851))))

(declare-fun bs!1867306 () Bool)

(assert (= bs!1867306 d!2188030))

(declare-fun m!7720660 () Bool)

(assert (=> bs!1867306 m!7720660))

(assert (=> b!7019348 d!2188030))

(declare-fun d!2188032 () Bool)

(declare-fun dynLambda!27206 (Int Context!12736) (Set Context!12736))

(assert (=> d!2188032 (= (flatMap!2358 lt!2510671 lambda!410823) (dynLambda!27206 lambda!410823 lt!2510676))))

(declare-fun lt!2510736 () Unit!161426)

(declare-fun choose!52915 ((Set Context!12736) Context!12736 Int) Unit!161426)

(assert (=> d!2188032 (= lt!2510736 (choose!52915 lt!2510671 lt!2510676 lambda!410823))))

(assert (=> d!2188032 (= lt!2510671 (set.insert lt!2510676 (as set.empty (Set Context!12736))))))

(assert (=> d!2188032 (= (lemmaFlatMapOnSingletonSet!1873 lt!2510671 lt!2510676 lambda!410823) lt!2510736)))

(declare-fun b_lambda!264949 () Bool)

(assert (=> (not b_lambda!264949) (not d!2188032)))

(declare-fun bs!1867307 () Bool)

(assert (= bs!1867307 d!2188032))

(assert (=> bs!1867307 m!7720556))

(declare-fun m!7720662 () Bool)

(assert (=> bs!1867307 m!7720662))

(declare-fun m!7720664 () Bool)

(assert (=> bs!1867307 m!7720664))

(assert (=> bs!1867307 m!7720570))

(assert (=> b!7019348 d!2188032))

(declare-fun bm!637596 () Bool)

(declare-fun call!637601 () (Set Context!12736))

(declare-fun derivationStepZipperDown!2090 (Regex!17372 Context!12736 C!35014) (Set Context!12736))

(assert (=> bm!637596 (= call!637601 (derivationStepZipperDown!2090 (h!73985 (exprs!6868 lt!2510676)) (Context!12737 (t!381416 (exprs!6868 lt!2510676))) (h!73986 s!7408)))))

(declare-fun b!7019422 () Bool)

(declare-fun e!4219483 () (Set Context!12736))

(assert (=> b!7019422 (= e!4219483 call!637601)))

(declare-fun d!2188036 () Bool)

(declare-fun c!1304443 () Bool)

(declare-fun e!4219482 () Bool)

(assert (=> d!2188036 (= c!1304443 e!4219482)))

(declare-fun res!2865089 () Bool)

(assert (=> d!2188036 (=> (not res!2865089) (not e!4219482))))

(assert (=> d!2188036 (= res!2865089 (is-Cons!67537 (exprs!6868 lt!2510676)))))

(declare-fun e!4219484 () (Set Context!12736))

(assert (=> d!2188036 (= (derivationStepZipperUp!2022 lt!2510676 (h!73986 s!7408)) e!4219484)))

(declare-fun b!7019423 () Bool)

(assert (=> b!7019423 (= e!4219484 (set.union call!637601 (derivationStepZipperUp!2022 (Context!12737 (t!381416 (exprs!6868 lt!2510676))) (h!73986 s!7408))))))

(declare-fun b!7019424 () Bool)

(declare-fun nullable!7132 (Regex!17372) Bool)

(assert (=> b!7019424 (= e!4219482 (nullable!7132 (h!73985 (exprs!6868 lt!2510676))))))

(declare-fun b!7019425 () Bool)

(assert (=> b!7019425 (= e!4219483 (as set.empty (Set Context!12736)))))

(declare-fun b!7019426 () Bool)

(assert (=> b!7019426 (= e!4219484 e!4219483)))

(declare-fun c!1304442 () Bool)

(assert (=> b!7019426 (= c!1304442 (is-Cons!67537 (exprs!6868 lt!2510676)))))

(assert (= (and d!2188036 res!2865089) b!7019424))

(assert (= (and d!2188036 c!1304443) b!7019423))

(assert (= (and d!2188036 (not c!1304443)) b!7019426))

(assert (= (and b!7019426 c!1304442) b!7019422))

(assert (= (and b!7019426 (not c!1304442)) b!7019425))

(assert (= (or b!7019423 b!7019422) bm!637596))

(declare-fun m!7720666 () Bool)

(assert (=> bm!637596 m!7720666))

(declare-fun m!7720668 () Bool)

(assert (=> b!7019423 m!7720668))

(declare-fun m!7720670 () Bool)

(assert (=> b!7019424 m!7720670))

(assert (=> b!7019348 d!2188036))

(declare-fun d!2188038 () Bool)

(declare-fun c!1304448 () Bool)

(declare-fun isEmpty!39445 (List!67662) Bool)

(assert (=> d!2188038 (= c!1304448 (isEmpty!39445 s!7408))))

(declare-fun e!4219491 () Bool)

(assert (=> d!2188038 (= (matchZipper!2912 lt!2510683 s!7408) e!4219491)))

(declare-fun b!7019439 () Bool)

(declare-fun nullableZipper!2513 ((Set Context!12736)) Bool)

(assert (=> b!7019439 (= e!4219491 (nullableZipper!2513 lt!2510683))))

(declare-fun b!7019440 () Bool)

(declare-fun head!14203 (List!67662) C!35014)

(declare-fun tail!13472 (List!67662) List!67662)

(assert (=> b!7019440 (= e!4219491 (matchZipper!2912 (derivationStepZipper!2852 lt!2510683 (head!14203 s!7408)) (tail!13472 s!7408)))))

(assert (= (and d!2188038 c!1304448) b!7019439))

(assert (= (and d!2188038 (not c!1304448)) b!7019440))

(declare-fun m!7720672 () Bool)

(assert (=> d!2188038 m!7720672))

(declare-fun m!7720674 () Bool)

(assert (=> b!7019439 m!7720674))

(declare-fun m!7720676 () Bool)

(assert (=> b!7019440 m!7720676))

(assert (=> b!7019440 m!7720676))

(declare-fun m!7720678 () Bool)

(assert (=> b!7019440 m!7720678))

(declare-fun m!7720680 () Bool)

(assert (=> b!7019440 m!7720680))

(assert (=> b!7019440 m!7720678))

(assert (=> b!7019440 m!7720680))

(declare-fun m!7720682 () Bool)

(assert (=> b!7019440 m!7720682))

(assert (=> b!7019344 d!2188038))

(declare-fun d!2188040 () Bool)

(declare-fun e!4219496 () Bool)

(assert (=> d!2188040 e!4219496))

(declare-fun res!2865098 () Bool)

(assert (=> d!2188040 (=> (not res!2865098) (not e!4219496))))

(declare-fun lt!2510742 () List!67663)

(declare-fun noDuplicate!2590 (List!67663) Bool)

(assert (=> d!2188040 (= res!2865098 (noDuplicate!2590 lt!2510742))))

(declare-fun choose!52916 ((Set Context!12736)) List!67663)

(assert (=> d!2188040 (= lt!2510742 (choose!52916 lt!2510675))))

(assert (=> d!2188040 (= (toList!10732 lt!2510675) lt!2510742)))

(declare-fun b!7019447 () Bool)

(declare-fun content!13444 (List!67663) (Set Context!12736))

(assert (=> b!7019447 (= e!4219496 (= (content!13444 lt!2510742) lt!2510675))))

(assert (= (and d!2188040 res!2865098) b!7019447))

(declare-fun m!7720698 () Bool)

(assert (=> d!2188040 m!7720698))

(declare-fun m!7720700 () Bool)

(assert (=> d!2188040 m!7720700))

(declare-fun m!7720702 () Bool)

(assert (=> b!7019447 m!7720702))

(assert (=> b!7019344 d!2188040))

(declare-fun bs!1867308 () Bool)

(declare-fun d!2188044 () Bool)

(assert (= bs!1867308 (and d!2188044 b!7019344)))

(declare-fun lambda!410854 () Int)

(assert (=> bs!1867308 (not (= lambda!410854 lambda!410820))))

(assert (=> d!2188044 true))

(declare-fun order!28085 () Int)

(declare-fun dynLambda!27207 (Int Int) Int)

(assert (=> d!2188044 (< (dynLambda!27207 order!28085 lambda!410820) (dynLambda!27207 order!28085 lambda!410854))))

(declare-fun forall!16287 (List!67663 Int) Bool)

(assert (=> d!2188044 (= (exists!3249 lt!2510674 lambda!410820) (not (forall!16287 lt!2510674 lambda!410854)))))

(declare-fun bs!1867309 () Bool)

(assert (= bs!1867309 d!2188044))

(declare-fun m!7720704 () Bool)

(assert (=> bs!1867309 m!7720704))

(assert (=> b!7019344 d!2188044))

(declare-fun bs!1867311 () Bool)

(declare-fun d!2188046 () Bool)

(assert (= bs!1867311 (and d!2188046 b!7019344)))

(declare-fun lambda!410857 () Int)

(assert (=> bs!1867311 (= lambda!410857 lambda!410820)))

(declare-fun bs!1867312 () Bool)

(assert (= bs!1867312 (and d!2188046 d!2188044)))

(assert (=> bs!1867312 (not (= lambda!410857 lambda!410854))))

(assert (=> d!2188046 true))

(assert (=> d!2188046 (exists!3249 lt!2510674 lambda!410857)))

(declare-fun lt!2510748 () Unit!161426)

(declare-fun choose!52917 (List!67663 List!67662) Unit!161426)

(assert (=> d!2188046 (= lt!2510748 (choose!52917 lt!2510674 s!7408))))

(assert (=> d!2188046 (matchZipper!2912 (content!13444 lt!2510674) s!7408)))

(assert (=> d!2188046 (= (lemmaZipperMatchesExistsMatchingContext!341 lt!2510674 s!7408) lt!2510748)))

(declare-fun bs!1867313 () Bool)

(assert (= bs!1867313 d!2188046))

(declare-fun m!7720710 () Bool)

(assert (=> bs!1867313 m!7720710))

(declare-fun m!7720712 () Bool)

(assert (=> bs!1867313 m!7720712))

(declare-fun m!7720714 () Bool)

(assert (=> bs!1867313 m!7720714))

(assert (=> bs!1867313 m!7720714))

(declare-fun m!7720716 () Bool)

(assert (=> bs!1867313 m!7720716))

(assert (=> b!7019344 d!2188046))

(declare-fun d!2188050 () Bool)

(declare-fun e!4219501 () Bool)

(assert (=> d!2188050 e!4219501))

(declare-fun res!2865103 () Bool)

(assert (=> d!2188050 (=> (not res!2865103) (not e!4219501))))

(declare-fun lt!2510753 () Context!12736)

(declare-fun dynLambda!27208 (Int Context!12736) Bool)

(assert (=> d!2188050 (= res!2865103 (dynLambda!27208 lambda!410820 lt!2510753))))

(declare-fun getWitness!1340 (List!67663 Int) Context!12736)

(assert (=> d!2188050 (= lt!2510753 (getWitness!1340 (toList!10732 lt!2510675) lambda!410820))))

(declare-fun exists!3251 ((Set Context!12736) Int) Bool)

(assert (=> d!2188050 (exists!3251 lt!2510675 lambda!410820)))

(assert (=> d!2188050 (= (getWitness!1338 lt!2510675 lambda!410820) lt!2510753)))

(declare-fun b!7019455 () Bool)

(assert (=> b!7019455 (= e!4219501 (set.member lt!2510753 lt!2510675))))

(assert (= (and d!2188050 res!2865103) b!7019455))

(declare-fun b_lambda!264951 () Bool)

(assert (=> (not b_lambda!264951) (not d!2188050)))

(declare-fun m!7720718 () Bool)

(assert (=> d!2188050 m!7720718))

(assert (=> d!2188050 m!7720564))

(assert (=> d!2188050 m!7720564))

(declare-fun m!7720720 () Bool)

(assert (=> d!2188050 m!7720720))

(declare-fun m!7720722 () Bool)

(assert (=> d!2188050 m!7720722))

(declare-fun m!7720724 () Bool)

(assert (=> b!7019455 m!7720724))

(assert (=> b!7019344 d!2188050))

(declare-fun d!2188052 () Bool)

(declare-fun res!2865109 () Bool)

(declare-fun e!4219507 () Bool)

(assert (=> d!2188052 (=> res!2865109 e!4219507)))

(assert (=> d!2188052 (= res!2865109 (is-Nil!67537 (exprs!6868 lt!2510682)))))

(assert (=> d!2188052 (= (forall!16285 (exprs!6868 lt!2510682) lambda!410822) e!4219507)))

(declare-fun b!7019461 () Bool)

(declare-fun e!4219508 () Bool)

(assert (=> b!7019461 (= e!4219507 e!4219508)))

(declare-fun res!2865110 () Bool)

(assert (=> b!7019461 (=> (not res!2865110) (not e!4219508))))

(declare-fun dynLambda!27209 (Int Regex!17372) Bool)

(assert (=> b!7019461 (= res!2865110 (dynLambda!27209 lambda!410822 (h!73985 (exprs!6868 lt!2510682))))))

(declare-fun b!7019462 () Bool)

(assert (=> b!7019462 (= e!4219508 (forall!16285 (t!381416 (exprs!6868 lt!2510682)) lambda!410822))))

(assert (= (and d!2188052 (not res!2865109)) b!7019461))

(assert (= (and b!7019461 res!2865110) b!7019462))

(declare-fun b_lambda!264955 () Bool)

(assert (=> (not b_lambda!264955) (not b!7019461)))

(declare-fun m!7720736 () Bool)

(assert (=> b!7019461 m!7720736))

(declare-fun m!7720738 () Bool)

(assert (=> b!7019462 m!7720738))

(assert (=> b!7019341 d!2188052))

(declare-fun d!2188056 () Bool)

(declare-fun c!1304452 () Bool)

(assert (=> d!2188056 (= c!1304452 (isEmpty!39445 s!7408))))

(declare-fun e!4219509 () Bool)

(assert (=> d!2188056 (= (matchZipper!2912 lt!2510675 s!7408) e!4219509)))

(declare-fun b!7019463 () Bool)

(assert (=> b!7019463 (= e!4219509 (nullableZipper!2513 lt!2510675))))

(declare-fun b!7019464 () Bool)

(assert (=> b!7019464 (= e!4219509 (matchZipper!2912 (derivationStepZipper!2852 lt!2510675 (head!14203 s!7408)) (tail!13472 s!7408)))))

(assert (= (and d!2188056 c!1304452) b!7019463))

(assert (= (and d!2188056 (not c!1304452)) b!7019464))

(assert (=> d!2188056 m!7720672))

(declare-fun m!7720740 () Bool)

(assert (=> b!7019463 m!7720740))

(assert (=> b!7019464 m!7720676))

(assert (=> b!7019464 m!7720676))

(declare-fun m!7720742 () Bool)

(assert (=> b!7019464 m!7720742))

(assert (=> b!7019464 m!7720680))

(assert (=> b!7019464 m!7720742))

(assert (=> b!7019464 m!7720680))

(declare-fun m!7720744 () Bool)

(assert (=> b!7019464 m!7720744))

(assert (=> start!676772 d!2188056))

(declare-fun bs!1867314 () Bool)

(declare-fun d!2188058 () Bool)

(assert (= bs!1867314 (and d!2188058 b!7019340)))

(declare-fun lambda!410862 () Int)

(assert (=> bs!1867314 (= lambda!410862 lambda!410821)))

(assert (=> d!2188058 true))

(assert (=> d!2188058 (= (appendTo!493 z1!570 ct2!306) (map!15664 z1!570 lambda!410862))))

(declare-fun bs!1867315 () Bool)

(assert (= bs!1867315 d!2188058))

(declare-fun m!7720746 () Bool)

(assert (=> bs!1867315 m!7720746))

(assert (=> start!676772 d!2188058))

(declare-fun bs!1867316 () Bool)

(declare-fun d!2188060 () Bool)

(assert (= bs!1867316 (and d!2188060 b!7019340)))

(declare-fun lambda!410863 () Int)

(assert (=> bs!1867316 (= lambda!410863 lambda!410822)))

(declare-fun bs!1867317 () Bool)

(assert (= bs!1867317 (and d!2188060 d!2188026)))

(assert (=> bs!1867317 (= lambda!410863 lambda!410848)))

(assert (=> d!2188060 (= (inv!86290 ct2!306) (forall!16285 (exprs!6868 ct2!306) lambda!410863))))

(declare-fun bs!1867318 () Bool)

(assert (= bs!1867318 d!2188060))

(declare-fun m!7720748 () Bool)

(assert (=> bs!1867318 m!7720748))

(assert (=> start!676772 d!2188060))

(assert (=> b!7019342 d!2188022))

(declare-fun condSetEmpty!48627 () Bool)

(assert (=> setNonEmpty!48621 (= condSetEmpty!48627 (= setRest!48621 (as set.empty (Set Context!12736))))))

(declare-fun setRes!48627 () Bool)

(assert (=> setNonEmpty!48621 (= tp!1933672 setRes!48627)))

(declare-fun setIsEmpty!48627 () Bool)

(assert (=> setIsEmpty!48627 setRes!48627))

(declare-fun setNonEmpty!48627 () Bool)

(declare-fun tp!1933691 () Bool)

(declare-fun setElem!48627 () Context!12736)

(declare-fun e!4219512 () Bool)

(assert (=> setNonEmpty!48627 (= setRes!48627 (and tp!1933691 (inv!86290 setElem!48627) e!4219512))))

(declare-fun setRest!48627 () (Set Context!12736))

(assert (=> setNonEmpty!48627 (= setRest!48621 (set.union (set.insert setElem!48627 (as set.empty (Set Context!12736))) setRest!48627))))

(declare-fun b!7019469 () Bool)

(declare-fun tp!1933690 () Bool)

(assert (=> b!7019469 (= e!4219512 tp!1933690)))

(assert (= (and setNonEmpty!48621 condSetEmpty!48627) setIsEmpty!48627))

(assert (= (and setNonEmpty!48621 (not condSetEmpty!48627)) setNonEmpty!48627))

(assert (= setNonEmpty!48627 b!7019469))

(declare-fun m!7720750 () Bool)

(assert (=> setNonEmpty!48627 m!7720750))

(declare-fun b!7019474 () Bool)

(declare-fun e!4219515 () Bool)

(declare-fun tp!1933696 () Bool)

(declare-fun tp!1933697 () Bool)

(assert (=> b!7019474 (= e!4219515 (and tp!1933696 tp!1933697))))

(assert (=> b!7019338 (= tp!1933670 e!4219515)))

(assert (= (and b!7019338 (is-Cons!67537 (exprs!6868 setElem!48621))) b!7019474))

(declare-fun b!7019479 () Bool)

(declare-fun e!4219518 () Bool)

(declare-fun tp!1933700 () Bool)

(assert (=> b!7019479 (= e!4219518 (and tp_is_empty!43969 tp!1933700))))

(assert (=> b!7019343 (= tp!1933671 e!4219518)))

(assert (= (and b!7019343 (is-Cons!67538 (t!381417 s!7408))) b!7019479))

(declare-fun b!7019480 () Bool)

(declare-fun e!4219519 () Bool)

(declare-fun tp!1933701 () Bool)

(declare-fun tp!1933702 () Bool)

(assert (=> b!7019480 (= e!4219519 (and tp!1933701 tp!1933702))))

(assert (=> b!7019339 (= tp!1933673 e!4219519)))

(assert (= (and b!7019339 (is-Cons!67537 (exprs!6868 ct2!306))) b!7019480))

(declare-fun b_lambda!264957 () Bool)

(assert (= b_lambda!264947 (or b!7019340 b_lambda!264957)))

(declare-fun bs!1867319 () Bool)

(declare-fun d!2188062 () Bool)

(assert (= bs!1867319 (and d!2188062 b!7019340)))

(declare-fun lt!2510757 () Unit!161426)

(assert (=> bs!1867319 (= lt!2510757 (lemmaConcatPreservesForall!708 (exprs!6868 lt!2510733) (exprs!6868 ct2!306) lambda!410822))))

(assert (=> bs!1867319 (= (dynLambda!27205 lambda!410821 lt!2510733) (Context!12737 (++!15408 (exprs!6868 lt!2510733) (exprs!6868 ct2!306))))))

(declare-fun m!7720752 () Bool)

(assert (=> bs!1867319 m!7720752))

(declare-fun m!7720754 () Bool)

(assert (=> bs!1867319 m!7720754))

(assert (=> d!2188024 d!2188062))

(declare-fun b_lambda!264959 () Bool)

(assert (= b_lambda!264949 (or b!7019348 b_lambda!264959)))

(declare-fun bs!1867320 () Bool)

(declare-fun d!2188064 () Bool)

(assert (= bs!1867320 (and d!2188064 b!7019348)))

(assert (=> bs!1867320 (= (dynLambda!27206 lambda!410823 lt!2510676) (derivationStepZipperUp!2022 lt!2510676 (h!73986 s!7408)))))

(assert (=> bs!1867320 m!7720552))

(assert (=> d!2188032 d!2188064))

(declare-fun b_lambda!264961 () Bool)

(assert (= b_lambda!264951 (or b!7019344 b_lambda!264961)))

(declare-fun bs!1867321 () Bool)

(declare-fun d!2188066 () Bool)

(assert (= bs!1867321 (and d!2188066 b!7019344)))

(assert (=> bs!1867321 (= (dynLambda!27208 lambda!410820 lt!2510753) (matchZipper!2912 (set.insert lt!2510753 (as set.empty (Set Context!12736))) s!7408))))

(declare-fun m!7720756 () Bool)

(assert (=> bs!1867321 m!7720756))

(assert (=> bs!1867321 m!7720756))

(declare-fun m!7720758 () Bool)

(assert (=> bs!1867321 m!7720758))

(assert (=> d!2188050 d!2188066))

(declare-fun b_lambda!264963 () Bool)

(assert (= b_lambda!264955 (or b!7019340 b_lambda!264963)))

(declare-fun bs!1867322 () Bool)

(declare-fun d!2188068 () Bool)

(assert (= bs!1867322 (and d!2188068 b!7019340)))

(declare-fun validRegex!8915 (Regex!17372) Bool)

(assert (=> bs!1867322 (= (dynLambda!27209 lambda!410822 (h!73985 (exprs!6868 lt!2510682))) (validRegex!8915 (h!73985 (exprs!6868 lt!2510682))))))

(declare-fun m!7720760 () Bool)

(assert (=> bs!1867322 m!7720760))

(assert (=> b!7019461 d!2188068))

(push 1)

(assert (not d!2188022))

(assert (not bs!1867321))

(assert (not b_lambda!264963))

(assert (not d!2188044))

(assert (not d!2188020))

(assert (not b!7019469))

(assert (not bs!1867320))

(assert (not b!7019424))

(assert (not setNonEmpty!48627))

(assert (not b!7019479))

(assert (not d!2188032))

(assert (not d!2188038))

(assert (not d!2188040))

(assert (not d!2188046))

(assert (not b!7019423))

(assert (not b!7019464))

(assert (not d!2188030))

(assert (not b_lambda!264961))

(assert (not b!7019474))

(assert (not b_lambda!264957))

(assert (not d!2188060))

(assert (not b!7019403))

(assert (not bs!1867322))

(assert (not b!7019404))

(assert (not d!2188056))

(assert (not b!7019463))

(assert (not b!7019447))

(assert (not b!7019462))

(assert (not b_lambda!264959))

(assert (not d!2188024))

(assert (not bs!1867319))

(assert (not d!2188050))

(assert (not d!2188058))

(assert (not b!7019440))

(assert (not d!2188026))

(assert (not d!2188028))

(assert tp_is_empty!43969)

(assert (not bm!637596))

(assert (not b!7019439))

(assert (not b!7019480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

