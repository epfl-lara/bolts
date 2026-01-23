; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669850 () Bool)

(assert start!669850)

(declare-fun b!6980924 () Bool)

(assert (=> b!6980924 true))

(declare-fun b!6980926 () Bool)

(assert (=> b!6980926 true))

(declare-fun b!6980927 () Bool)

(assert (=> b!6980927 true))

(declare-fun b!6980919 () Bool)

(declare-fun e!4195639 () Bool)

(declare-fun e!4195637 () Bool)

(assert (=> b!6980919 (= e!4195639 e!4195637)))

(declare-fun res!2846690 () Bool)

(assert (=> b!6980919 (=> res!2846690 e!4195637)))

(declare-datatypes ((C!34618 0))(
  ( (C!34619 (val!27011 Int)) )
))
(declare-datatypes ((Regex!17174 0))(
  ( (ElementMatch!17174 (c!1294081 C!34618)) (Concat!26019 (regOne!34860 Regex!17174) (regTwo!34860 Regex!17174)) (EmptyExpr!17174) (Star!17174 (reg!17503 Regex!17174)) (EmptyLang!17174) (Union!17174 (regOne!34861 Regex!17174) (regTwo!34861 Regex!17174)) )
))
(declare-datatypes ((List!67067 0))(
  ( (Nil!66943) (Cons!66943 (h!73391 Regex!17174) (t!380810 List!67067)) )
))
(declare-datatypes ((Context!12340 0))(
  ( (Context!12341 (exprs!6670 List!67067)) )
))
(declare-fun lt!2481768 () Context!12340)

(declare-fun nullable!6934 (Regex!17174) Bool)

(assert (=> b!6980919 (= res!2846690 (not (nullable!6934 (h!73391 (exprs!6670 lt!2481768)))))))

(declare-fun lt!2481773 () List!67067)

(declare-fun tail!13150 (List!67067) List!67067)

(assert (=> b!6980919 (= lt!2481773 (tail!13150 (exprs!6670 lt!2481768)))))

(declare-fun b!6980920 () Bool)

(declare-fun e!4195635 () Bool)

(declare-fun e!4195642 () Bool)

(assert (=> b!6980920 (= e!4195635 e!4195642)))

(declare-fun res!2846698 () Bool)

(assert (=> b!6980920 (=> res!2846698 e!4195642)))

(declare-fun lambda!399160 () Int)

(declare-fun forall!16062 (List!67067 Int) Bool)

(assert (=> b!6980920 (= res!2846698 (not (forall!16062 lt!2481773 lambda!399160)))))

(declare-fun b!6980921 () Bool)

(declare-fun e!4195641 () Bool)

(declare-fun tp_is_empty!43573 () Bool)

(declare-fun tp!1928259 () Bool)

(assert (=> b!6980921 (= e!4195641 (and tp_is_empty!43573 tp!1928259))))

(declare-fun b!6980922 () Bool)

(declare-fun res!2846697 () Bool)

(declare-fun e!4195636 () Bool)

(assert (=> b!6980922 (=> res!2846697 e!4195636)))

(declare-fun lt!2481767 () Context!12340)

(declare-fun lt!2481763 () (Set Context!12340))

(assert (=> b!6980922 (= res!2846697 (not (set.member lt!2481767 lt!2481763)))))

(declare-fun b!6980923 () Bool)

(declare-fun e!4195644 () Bool)

(declare-fun tp!1928262 () Bool)

(assert (=> b!6980923 (= e!4195644 tp!1928262)))

(declare-fun e!4195638 () Bool)

(assert (=> b!6980924 (= e!4195638 (not e!4195636))))

(declare-fun res!2846689 () Bool)

(assert (=> b!6980924 (=> res!2846689 e!4195636)))

(declare-fun lt!2481771 () (Set Context!12340))

(declare-datatypes ((List!67068 0))(
  ( (Nil!66944) (Cons!66944 (h!73392 C!34618) (t!380811 List!67068)) )
))
(declare-fun s!7408 () List!67068)

(declare-fun matchZipper!2714 ((Set Context!12340) List!67068) Bool)

(assert (=> b!6980924 (= res!2846689 (not (matchZipper!2714 lt!2481771 s!7408)))))

(assert (=> b!6980924 (= lt!2481771 (set.insert lt!2481767 (as set.empty (Set Context!12340))))))

(declare-fun lambda!399158 () Int)

(declare-fun getWitness!1044 ((Set Context!12340) Int) Context!12340)

(assert (=> b!6980924 (= lt!2481767 (getWitness!1044 lt!2481763 lambda!399158))))

(declare-datatypes ((List!67069 0))(
  ( (Nil!66945) (Cons!66945 (h!73393 Context!12340) (t!380812 List!67069)) )
))
(declare-fun lt!2481765 () List!67069)

(declare-fun exists!2933 (List!67069 Int) Bool)

(assert (=> b!6980924 (exists!2933 lt!2481765 lambda!399158)))

(declare-datatypes ((Unit!161000 0))(
  ( (Unit!161001) )
))
(declare-fun lt!2481772 () Unit!161000)

(declare-fun lemmaZipperMatchesExistsMatchingContext!143 (List!67069 List!67068) Unit!161000)

(assert (=> b!6980924 (= lt!2481772 (lemmaZipperMatchesExistsMatchingContext!143 lt!2481765 s!7408))))

(declare-fun toList!10534 ((Set Context!12340)) List!67069)

(assert (=> b!6980924 (= lt!2481765 (toList!10534 lt!2481763))))

(declare-fun b!6980925 () Bool)

(declare-fun e!4195640 () Bool)

(declare-fun e!4195634 () Bool)

(assert (=> b!6980925 (= e!4195640 e!4195634)))

(declare-fun res!2846700 () Bool)

(assert (=> b!6980925 (=> res!2846700 e!4195634)))

(declare-fun lt!2481775 () (Set Context!12340))

(assert (=> b!6980925 (= res!2846700 (not (= lt!2481775 lt!2481771)))))

(declare-fun lt!2481774 () Context!12340)

(assert (=> b!6980925 (= lt!2481775 (set.insert lt!2481774 (as set.empty (Set Context!12340))))))

(declare-fun lt!2481762 () Unit!161000)

(declare-fun ct2!306 () Context!12340)

(declare-fun lemmaConcatPreservesForall!510 (List!67067 List!67067 Int) Unit!161000)

(assert (=> b!6980925 (= lt!2481762 (lemmaConcatPreservesForall!510 (exprs!6670 lt!2481768) (exprs!6670 ct2!306) lambda!399160))))

(assert (=> b!6980926 (= e!4195636 e!4195640)))

(declare-fun res!2846699 () Bool)

(assert (=> b!6980926 (=> res!2846699 e!4195640)))

(declare-fun z1!570 () (Set Context!12340))

(assert (=> b!6980926 (= res!2846699 (or (not (= lt!2481774 lt!2481767)) (not (set.member lt!2481768 z1!570))))))

(declare-fun ++!15119 (List!67067 List!67067) List!67067)

(assert (=> b!6980926 (= lt!2481774 (Context!12341 (++!15119 (exprs!6670 lt!2481768) (exprs!6670 ct2!306))))))

(declare-fun lt!2481766 () Unit!161000)

(assert (=> b!6980926 (= lt!2481766 (lemmaConcatPreservesForall!510 (exprs!6670 lt!2481768) (exprs!6670 ct2!306) lambda!399160))))

(declare-fun lambda!399159 () Int)

(declare-fun mapPost2!29 ((Set Context!12340) Int Context!12340) Context!12340)

(assert (=> b!6980926 (= lt!2481768 (mapPost2!29 z1!570 lambda!399159 lt!2481767))))

(declare-fun setIsEmpty!47534 () Bool)

(declare-fun setRes!47534 () Bool)

(assert (=> setIsEmpty!47534 setRes!47534))

(declare-fun res!2846691 () Bool)

(assert (=> start!669850 (=> (not res!2846691) (not e!4195638))))

(assert (=> start!669850 (= res!2846691 (matchZipper!2714 lt!2481763 s!7408))))

(declare-fun appendTo!295 ((Set Context!12340) Context!12340) (Set Context!12340))

(assert (=> start!669850 (= lt!2481763 (appendTo!295 z1!570 ct2!306))))

(assert (=> start!669850 e!4195638))

(declare-fun condSetEmpty!47534 () Bool)

(assert (=> start!669850 (= condSetEmpty!47534 (= z1!570 (as set.empty (Set Context!12340))))))

(assert (=> start!669850 setRes!47534))

(declare-fun e!4195643 () Bool)

(declare-fun inv!85795 (Context!12340) Bool)

(assert (=> start!669850 (and (inv!85795 ct2!306) e!4195643)))

(assert (=> start!669850 e!4195641))

(assert (=> b!6980927 (= e!4195634 e!4195639)))

(declare-fun res!2846696 () Bool)

(assert (=> b!6980927 (=> res!2846696 e!4195639)))

(declare-fun lt!2481778 () (Set Context!12340))

(declare-fun derivationStepZipper!2654 ((Set Context!12340) C!34618) (Set Context!12340))

(assert (=> b!6980927 (= res!2846696 (not (= (derivationStepZipper!2654 lt!2481775 (h!73392 s!7408)) lt!2481778)))))

(declare-fun lambda!399161 () Int)

(declare-fun flatMap!2160 ((Set Context!12340) Int) (Set Context!12340))

(declare-fun derivationStepZipperUp!1824 (Context!12340 C!34618) (Set Context!12340))

(assert (=> b!6980927 (= (flatMap!2160 lt!2481775 lambda!399161) (derivationStepZipperUp!1824 lt!2481774 (h!73392 s!7408)))))

(declare-fun lt!2481776 () Unit!161000)

(declare-fun lemmaFlatMapOnSingletonSet!1675 ((Set Context!12340) Context!12340 Int) Unit!161000)

(assert (=> b!6980927 (= lt!2481776 (lemmaFlatMapOnSingletonSet!1675 lt!2481775 lt!2481774 lambda!399161))))

(assert (=> b!6980927 (= lt!2481778 (derivationStepZipperUp!1824 lt!2481774 (h!73392 s!7408)))))

(declare-fun lt!2481769 () Unit!161000)

(assert (=> b!6980927 (= lt!2481769 (lemmaConcatPreservesForall!510 (exprs!6670 lt!2481768) (exprs!6670 ct2!306) lambda!399160))))

(declare-fun b!6980928 () Bool)

(assert (=> b!6980928 (= e!4195642 (forall!16062 (exprs!6670 ct2!306) lambda!399160))))

(declare-fun b!6980929 () Bool)

(declare-fun res!2846692 () Bool)

(assert (=> b!6980929 (=> res!2846692 e!4195639)))

(assert (=> b!6980929 (= res!2846692 (not (is-Cons!66943 (exprs!6670 lt!2481768))))))

(declare-fun setNonEmpty!47534 () Bool)

(declare-fun setElem!47534 () Context!12340)

(declare-fun tp!1928260 () Bool)

(assert (=> setNonEmpty!47534 (= setRes!47534 (and tp!1928260 (inv!85795 setElem!47534) e!4195644))))

(declare-fun setRest!47534 () (Set Context!12340))

(assert (=> setNonEmpty!47534 (= z1!570 (set.union (set.insert setElem!47534 (as set.empty (Set Context!12340))) setRest!47534))))

(declare-fun b!6980930 () Bool)

(declare-fun res!2846694 () Bool)

(assert (=> b!6980930 (=> (not res!2846694) (not e!4195638))))

(assert (=> b!6980930 (= res!2846694 (is-Cons!66944 s!7408))))

(declare-fun b!6980931 () Bool)

(declare-fun tp!1928261 () Bool)

(assert (=> b!6980931 (= e!4195643 tp!1928261)))

(declare-fun b!6980932 () Bool)

(declare-fun res!2846695 () Bool)

(assert (=> b!6980932 (=> res!2846695 e!4195639)))

(declare-fun isEmpty!39074 (List!67067) Bool)

(assert (=> b!6980932 (= res!2846695 (isEmpty!39074 (exprs!6670 lt!2481768)))))

(declare-fun b!6980933 () Bool)

(assert (=> b!6980933 (= e!4195637 e!4195635)))

(declare-fun res!2846693 () Bool)

(assert (=> b!6980933 (=> res!2846693 e!4195635)))

(declare-fun lt!2481777 () Context!12340)

(declare-fun derivationStepZipperDown!1892 (Regex!17174 Context!12340 C!34618) (Set Context!12340))

(assert (=> b!6980933 (= res!2846693 (not (= lt!2481778 (set.union (derivationStepZipperDown!1892 (h!73391 (exprs!6670 lt!2481768)) lt!2481777 (h!73392 s!7408)) (derivationStepZipperUp!1824 lt!2481777 (h!73392 s!7408))))))))

(assert (=> b!6980933 (= lt!2481777 (Context!12341 (++!15119 lt!2481773 (exprs!6670 ct2!306))))))

(declare-fun lt!2481764 () Unit!161000)

(assert (=> b!6980933 (= lt!2481764 (lemmaConcatPreservesForall!510 lt!2481773 (exprs!6670 ct2!306) lambda!399160))))

(declare-fun lt!2481770 () Unit!161000)

(assert (=> b!6980933 (= lt!2481770 (lemmaConcatPreservesForall!510 lt!2481773 (exprs!6670 ct2!306) lambda!399160))))

(assert (= (and start!669850 res!2846691) b!6980930))

(assert (= (and b!6980930 res!2846694) b!6980924))

(assert (= (and b!6980924 (not res!2846689)) b!6980922))

(assert (= (and b!6980922 (not res!2846697)) b!6980926))

(assert (= (and b!6980926 (not res!2846699)) b!6980925))

(assert (= (and b!6980925 (not res!2846700)) b!6980927))

(assert (= (and b!6980927 (not res!2846696)) b!6980929))

(assert (= (and b!6980929 (not res!2846692)) b!6980932))

(assert (= (and b!6980932 (not res!2846695)) b!6980919))

(assert (= (and b!6980919 (not res!2846690)) b!6980933))

(assert (= (and b!6980933 (not res!2846693)) b!6980920))

(assert (= (and b!6980920 (not res!2846698)) b!6980928))

(assert (= (and start!669850 condSetEmpty!47534) setIsEmpty!47534))

(assert (= (and start!669850 (not condSetEmpty!47534)) setNonEmpty!47534))

(assert (= setNonEmpty!47534 b!6980923))

(assert (= start!669850 b!6980931))

(assert (= (and start!669850 (is-Cons!66944 s!7408)) b!6980921))

(declare-fun m!7667306 () Bool)

(assert (=> start!669850 m!7667306))

(declare-fun m!7667308 () Bool)

(assert (=> start!669850 m!7667308))

(declare-fun m!7667310 () Bool)

(assert (=> start!669850 m!7667310))

(declare-fun m!7667312 () Bool)

(assert (=> b!6980926 m!7667312))

(declare-fun m!7667314 () Bool)

(assert (=> b!6980926 m!7667314))

(declare-fun m!7667316 () Bool)

(assert (=> b!6980926 m!7667316))

(declare-fun m!7667318 () Bool)

(assert (=> b!6980926 m!7667318))

(declare-fun m!7667320 () Bool)

(assert (=> b!6980919 m!7667320))

(declare-fun m!7667322 () Bool)

(assert (=> b!6980919 m!7667322))

(declare-fun m!7667324 () Bool)

(assert (=> b!6980920 m!7667324))

(declare-fun m!7667326 () Bool)

(assert (=> b!6980927 m!7667326))

(declare-fun m!7667328 () Bool)

(assert (=> b!6980927 m!7667328))

(declare-fun m!7667330 () Bool)

(assert (=> b!6980927 m!7667330))

(declare-fun m!7667332 () Bool)

(assert (=> b!6980927 m!7667332))

(assert (=> b!6980927 m!7667316))

(declare-fun m!7667334 () Bool)

(assert (=> setNonEmpty!47534 m!7667334))

(declare-fun m!7667336 () Bool)

(assert (=> b!6980925 m!7667336))

(assert (=> b!6980925 m!7667316))

(declare-fun m!7667338 () Bool)

(assert (=> b!6980928 m!7667338))

(declare-fun m!7667340 () Bool)

(assert (=> b!6980933 m!7667340))

(declare-fun m!7667342 () Bool)

(assert (=> b!6980933 m!7667342))

(declare-fun m!7667344 () Bool)

(assert (=> b!6980933 m!7667344))

(assert (=> b!6980933 m!7667342))

(declare-fun m!7667346 () Bool)

(assert (=> b!6980933 m!7667346))

(declare-fun m!7667348 () Bool)

(assert (=> b!6980924 m!7667348))

(declare-fun m!7667350 () Bool)

(assert (=> b!6980924 m!7667350))

(declare-fun m!7667352 () Bool)

(assert (=> b!6980924 m!7667352))

(declare-fun m!7667354 () Bool)

(assert (=> b!6980924 m!7667354))

(declare-fun m!7667356 () Bool)

(assert (=> b!6980924 m!7667356))

(declare-fun m!7667358 () Bool)

(assert (=> b!6980924 m!7667358))

(declare-fun m!7667360 () Bool)

(assert (=> b!6980932 m!7667360))

(declare-fun m!7667362 () Bool)

(assert (=> b!6980922 m!7667362))

(push 1)

(assert (not b!6980933))

(assert (not setNonEmpty!47534))

(assert (not start!669850))

(assert (not b!6980928))

(assert (not b!6980931))

(assert (not b!6980920))

(assert (not b!6980932))

(assert (not b!6980927))

(assert (not b!6980923))

(assert (not b!6980924))

(assert (not b!6980919))

(assert (not b!6980926))

(assert (not b!6980925))

(assert tp_is_empty!43573)

(assert (not b!6980921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2173931 () Bool)

(declare-fun c!1294093 () Bool)

(declare-fun isEmpty!39076 (List!67068) Bool)

(assert (=> d!2173931 (= c!1294093 (isEmpty!39076 s!7408))))

(declare-fun e!4195680 () Bool)

(assert (=> d!2173931 (= (matchZipper!2714 lt!2481763 s!7408) e!4195680)))

(declare-fun b!6980995 () Bool)

(declare-fun nullableZipper!2403 ((Set Context!12340)) Bool)

(assert (=> b!6980995 (= e!4195680 (nullableZipper!2403 lt!2481763))))

(declare-fun b!6980996 () Bool)

(declare-fun head!14075 (List!67068) C!34618)

(declare-fun tail!13152 (List!67068) List!67068)

(assert (=> b!6980996 (= e!4195680 (matchZipper!2714 (derivationStepZipper!2654 lt!2481763 (head!14075 s!7408)) (tail!13152 s!7408)))))

(assert (= (and d!2173931 c!1294093) b!6980995))

(assert (= (and d!2173931 (not c!1294093)) b!6980996))

(declare-fun m!7667422 () Bool)

(assert (=> d!2173931 m!7667422))

(declare-fun m!7667424 () Bool)

(assert (=> b!6980995 m!7667424))

(declare-fun m!7667426 () Bool)

(assert (=> b!6980996 m!7667426))

(assert (=> b!6980996 m!7667426))

(declare-fun m!7667428 () Bool)

(assert (=> b!6980996 m!7667428))

(declare-fun m!7667430 () Bool)

(assert (=> b!6980996 m!7667430))

(assert (=> b!6980996 m!7667428))

(assert (=> b!6980996 m!7667430))

(declare-fun m!7667432 () Bool)

(assert (=> b!6980996 m!7667432))

(assert (=> start!669850 d!2173931))

(declare-fun bs!1860847 () Bool)

(declare-fun d!2173933 () Bool)

(assert (= bs!1860847 (and d!2173933 b!6980926)))

(declare-fun lambda!399192 () Int)

(assert (=> bs!1860847 (= lambda!399192 lambda!399159)))

(assert (=> d!2173933 true))

(declare-fun map!15427 ((Set Context!12340) Int) (Set Context!12340))

(assert (=> d!2173933 (= (appendTo!295 z1!570 ct2!306) (map!15427 z1!570 lambda!399192))))

(declare-fun bs!1860848 () Bool)

(assert (= bs!1860848 d!2173933))

(declare-fun m!7667434 () Bool)

(assert (=> bs!1860848 m!7667434))

(assert (=> start!669850 d!2173933))

(declare-fun bs!1860849 () Bool)

(declare-fun d!2173935 () Bool)

(assert (= bs!1860849 (and d!2173935 b!6980926)))

(declare-fun lambda!399195 () Int)

(assert (=> bs!1860849 (= lambda!399195 lambda!399160)))

(assert (=> d!2173935 (= (inv!85795 ct2!306) (forall!16062 (exprs!6670 ct2!306) lambda!399195))))

(declare-fun bs!1860850 () Bool)

(assert (= bs!1860850 d!2173935))

(declare-fun m!7667436 () Bool)

(assert (=> bs!1860850 m!7667436))

(assert (=> start!669850 d!2173935))

(declare-fun d!2173937 () Bool)

(assert (=> d!2173937 (= (isEmpty!39074 (exprs!6670 lt!2481768)) (is-Nil!66943 (exprs!6670 lt!2481768)))))

(assert (=> b!6980932 d!2173937))

(declare-fun d!2173941 () Bool)

(declare-fun res!2846743 () Bool)

(declare-fun e!4195685 () Bool)

(assert (=> d!2173941 (=> res!2846743 e!4195685)))

(assert (=> d!2173941 (= res!2846743 (is-Nil!66943 (exprs!6670 ct2!306)))))

(assert (=> d!2173941 (= (forall!16062 (exprs!6670 ct2!306) lambda!399160) e!4195685)))

(declare-fun b!6981001 () Bool)

(declare-fun e!4195686 () Bool)

(assert (=> b!6981001 (= e!4195685 e!4195686)))

(declare-fun res!2846744 () Bool)

(assert (=> b!6981001 (=> (not res!2846744) (not e!4195686))))

(declare-fun dynLambda!26754 (Int Regex!17174) Bool)

(assert (=> b!6981001 (= res!2846744 (dynLambda!26754 lambda!399160 (h!73391 (exprs!6670 ct2!306))))))

(declare-fun b!6981002 () Bool)

(assert (=> b!6981002 (= e!4195686 (forall!16062 (t!380810 (exprs!6670 ct2!306)) lambda!399160))))

(assert (= (and d!2173941 (not res!2846743)) b!6981001))

(assert (= (and b!6981001 res!2846744) b!6981002))

(declare-fun b_lambda!261639 () Bool)

(assert (=> (not b_lambda!261639) (not b!6981001)))

(declare-fun m!7667440 () Bool)

(assert (=> b!6981001 m!7667440))

(declare-fun m!7667442 () Bool)

(assert (=> b!6981002 m!7667442))

(assert (=> b!6980928 d!2173941))

(declare-fun b!6981040 () Bool)

(declare-fun e!4195713 () (Set Context!12340))

(declare-fun call!633483 () (Set Context!12340))

(declare-fun call!633478 () (Set Context!12340))

(assert (=> b!6981040 (= e!4195713 (set.union call!633483 call!633478))))

(declare-fun b!6981041 () Bool)

(declare-fun e!4195709 () (Set Context!12340))

(declare-fun call!633480 () (Set Context!12340))

(assert (=> b!6981041 (= e!4195709 call!633480)))

(declare-fun bm!633473 () Bool)

(declare-fun call!633481 () (Set Context!12340))

(assert (=> bm!633473 (= call!633478 call!633481)))

(declare-fun b!6981042 () Bool)

(declare-fun e!4195711 () (Set Context!12340))

(assert (=> b!6981042 (= e!4195711 call!633480)))

(declare-fun b!6981043 () Bool)

(declare-fun e!4195710 () (Set Context!12340))

(declare-fun e!4195712 () (Set Context!12340))

(assert (=> b!6981043 (= e!4195710 e!4195712)))

(declare-fun c!1294114 () Bool)

(assert (=> b!6981043 (= c!1294114 (is-Union!17174 (h!73391 (exprs!6670 lt!2481768))))))

(declare-fun b!6981044 () Bool)

(assert (=> b!6981044 (= e!4195713 e!4195709)))

(declare-fun c!1294113 () Bool)

(assert (=> b!6981044 (= c!1294113 (is-Concat!26019 (h!73391 (exprs!6670 lt!2481768))))))

(declare-fun d!2173945 () Bool)

(declare-fun c!1294111 () Bool)

(assert (=> d!2173945 (= c!1294111 (and (is-ElementMatch!17174 (h!73391 (exprs!6670 lt!2481768))) (= (c!1294081 (h!73391 (exprs!6670 lt!2481768))) (h!73392 s!7408))))))

(assert (=> d!2173945 (= (derivationStepZipperDown!1892 (h!73391 (exprs!6670 lt!2481768)) lt!2481777 (h!73392 s!7408)) e!4195710)))

(declare-fun bm!633474 () Bool)

(declare-fun call!633479 () List!67067)

(declare-fun call!633482 () List!67067)

(assert (=> bm!633474 (= call!633479 call!633482)))

(declare-fun b!6981045 () Bool)

(declare-fun c!1294112 () Bool)

(declare-fun e!4195708 () Bool)

(assert (=> b!6981045 (= c!1294112 e!4195708)))

(declare-fun res!2846750 () Bool)

(assert (=> b!6981045 (=> (not res!2846750) (not e!4195708))))

(assert (=> b!6981045 (= res!2846750 (is-Concat!26019 (h!73391 (exprs!6670 lt!2481768))))))

(assert (=> b!6981045 (= e!4195712 e!4195713)))

(declare-fun bm!633475 () Bool)

(assert (=> bm!633475 (= call!633483 (derivationStepZipperDown!1892 (ite c!1294114 (regOne!34861 (h!73391 (exprs!6670 lt!2481768))) (regOne!34860 (h!73391 (exprs!6670 lt!2481768)))) (ite c!1294114 lt!2481777 (Context!12341 call!633482)) (h!73392 s!7408)))))

(declare-fun b!6981046 () Bool)

(assert (=> b!6981046 (= e!4195711 (as set.empty (Set Context!12340)))))

(declare-fun b!6981047 () Bool)

(assert (=> b!6981047 (= e!4195712 (set.union call!633483 call!633481))))

(declare-fun b!6981048 () Bool)

(declare-fun c!1294115 () Bool)

(assert (=> b!6981048 (= c!1294115 (is-Star!17174 (h!73391 (exprs!6670 lt!2481768))))))

(assert (=> b!6981048 (= e!4195709 e!4195711)))

(declare-fun bm!633476 () Bool)

(assert (=> bm!633476 (= call!633481 (derivationStepZipperDown!1892 (ite c!1294114 (regTwo!34861 (h!73391 (exprs!6670 lt!2481768))) (ite c!1294112 (regTwo!34860 (h!73391 (exprs!6670 lt!2481768))) (ite c!1294113 (regOne!34860 (h!73391 (exprs!6670 lt!2481768))) (reg!17503 (h!73391 (exprs!6670 lt!2481768)))))) (ite (or c!1294114 c!1294112) lt!2481777 (Context!12341 call!633479)) (h!73392 s!7408)))))

(declare-fun bm!633477 () Bool)

(declare-fun $colon$colon!2455 (List!67067 Regex!17174) List!67067)

(assert (=> bm!633477 (= call!633482 ($colon$colon!2455 (exprs!6670 lt!2481777) (ite (or c!1294112 c!1294113) (regTwo!34860 (h!73391 (exprs!6670 lt!2481768))) (h!73391 (exprs!6670 lt!2481768)))))))

(declare-fun b!6981049 () Bool)

(assert (=> b!6981049 (= e!4195710 (set.insert lt!2481777 (as set.empty (Set Context!12340))))))

(declare-fun b!6981050 () Bool)

(assert (=> b!6981050 (= e!4195708 (nullable!6934 (regOne!34860 (h!73391 (exprs!6670 lt!2481768)))))))

(declare-fun bm!633478 () Bool)

(assert (=> bm!633478 (= call!633480 call!633478)))

(assert (= (and d!2173945 c!1294111) b!6981049))

(assert (= (and d!2173945 (not c!1294111)) b!6981043))

(assert (= (and b!6981043 c!1294114) b!6981047))

(assert (= (and b!6981043 (not c!1294114)) b!6981045))

(assert (= (and b!6981045 res!2846750) b!6981050))

(assert (= (and b!6981045 c!1294112) b!6981040))

(assert (= (and b!6981045 (not c!1294112)) b!6981044))

(assert (= (and b!6981044 c!1294113) b!6981041))

(assert (= (and b!6981044 (not c!1294113)) b!6981048))

(assert (= (and b!6981048 c!1294115) b!6981042))

(assert (= (and b!6981048 (not c!1294115)) b!6981046))

(assert (= (or b!6981041 b!6981042) bm!633474))

(assert (= (or b!6981041 b!6981042) bm!633478))

(assert (= (or b!6981040 bm!633478) bm!633473))

(assert (= (or b!6981040 bm!633474) bm!633477))

(assert (= (or b!6981047 b!6981040) bm!633475))

(assert (= (or b!6981047 bm!633473) bm!633476))

(declare-fun m!7667450 () Bool)

(assert (=> b!6981049 m!7667450))

(declare-fun m!7667452 () Bool)

(assert (=> bm!633476 m!7667452))

(declare-fun m!7667454 () Bool)

(assert (=> bm!633477 m!7667454))

(declare-fun m!7667456 () Bool)

(assert (=> b!6981050 m!7667456))

(declare-fun m!7667458 () Bool)

(assert (=> bm!633475 m!7667458))

(assert (=> b!6980933 d!2173945))

(declare-fun d!2173949 () Bool)

(assert (=> d!2173949 (forall!16062 (++!15119 lt!2481773 (exprs!6670 ct2!306)) lambda!399160)))

(declare-fun lt!2481838 () Unit!161000)

(declare-fun choose!52043 (List!67067 List!67067 Int) Unit!161000)

(assert (=> d!2173949 (= lt!2481838 (choose!52043 lt!2481773 (exprs!6670 ct2!306) lambda!399160))))

(assert (=> d!2173949 (forall!16062 lt!2481773 lambda!399160)))

(assert (=> d!2173949 (= (lemmaConcatPreservesForall!510 lt!2481773 (exprs!6670 ct2!306) lambda!399160) lt!2481838)))

(declare-fun bs!1860852 () Bool)

(assert (= bs!1860852 d!2173949))

(assert (=> bs!1860852 m!7667344))

(assert (=> bs!1860852 m!7667344))

(declare-fun m!7667460 () Bool)

(assert (=> bs!1860852 m!7667460))

(declare-fun m!7667462 () Bool)

(assert (=> bs!1860852 m!7667462))

(assert (=> bs!1860852 m!7667324))

(assert (=> b!6980933 d!2173949))

(declare-fun b!6981063 () Bool)

(declare-fun e!4195720 () (Set Context!12340))

(assert (=> b!6981063 (= e!4195720 (as set.empty (Set Context!12340)))))

(declare-fun bm!633481 () Bool)

(declare-fun call!633486 () (Set Context!12340))

(assert (=> bm!633481 (= call!633486 (derivationStepZipperDown!1892 (h!73391 (exprs!6670 lt!2481777)) (Context!12341 (t!380810 (exprs!6670 lt!2481777))) (h!73392 s!7408)))))

(declare-fun b!6981064 () Bool)

(assert (=> b!6981064 (= e!4195720 call!633486)))

(declare-fun d!2173951 () Bool)

(declare-fun c!1294122 () Bool)

(declare-fun e!4195721 () Bool)

(assert (=> d!2173951 (= c!1294122 e!4195721)))

(declare-fun res!2846753 () Bool)

(assert (=> d!2173951 (=> (not res!2846753) (not e!4195721))))

(assert (=> d!2173951 (= res!2846753 (is-Cons!66943 (exprs!6670 lt!2481777)))))

(declare-fun e!4195722 () (Set Context!12340))

(assert (=> d!2173951 (= (derivationStepZipperUp!1824 lt!2481777 (h!73392 s!7408)) e!4195722)))

(declare-fun b!6981065 () Bool)

(assert (=> b!6981065 (= e!4195722 e!4195720)))

(declare-fun c!1294123 () Bool)

(assert (=> b!6981065 (= c!1294123 (is-Cons!66943 (exprs!6670 lt!2481777)))))

(declare-fun b!6981066 () Bool)

(assert (=> b!6981066 (= e!4195721 (nullable!6934 (h!73391 (exprs!6670 lt!2481777))))))

(declare-fun b!6981067 () Bool)

(assert (=> b!6981067 (= e!4195722 (set.union call!633486 (derivationStepZipperUp!1824 (Context!12341 (t!380810 (exprs!6670 lt!2481777))) (h!73392 s!7408))))))

(assert (= (and d!2173951 res!2846753) b!6981066))

(assert (= (and d!2173951 c!1294122) b!6981067))

(assert (= (and d!2173951 (not c!1294122)) b!6981065))

(assert (= (and b!6981065 c!1294123) b!6981064))

(assert (= (and b!6981065 (not c!1294123)) b!6981063))

(assert (= (or b!6981067 b!6981064) bm!633481))

(declare-fun m!7667468 () Bool)

(assert (=> bm!633481 m!7667468))

(declare-fun m!7667470 () Bool)

(assert (=> b!6981066 m!7667470))

(declare-fun m!7667473 () Bool)

(assert (=> b!6981067 m!7667473))

(assert (=> b!6980933 d!2173951))

(declare-fun d!2173955 () Bool)

(declare-fun e!4195727 () Bool)

(assert (=> d!2173955 e!4195727))

(declare-fun res!2846758 () Bool)

(assert (=> d!2173955 (=> (not res!2846758) (not e!4195727))))

(declare-fun lt!2481845 () List!67067)

(declare-fun content!13201 (List!67067) (Set Regex!17174))

(assert (=> d!2173955 (= res!2846758 (= (content!13201 lt!2481845) (set.union (content!13201 lt!2481773) (content!13201 (exprs!6670 ct2!306)))))))

(declare-fun e!4195728 () List!67067)

(assert (=> d!2173955 (= lt!2481845 e!4195728)))

(declare-fun c!1294126 () Bool)

(assert (=> d!2173955 (= c!1294126 (is-Nil!66943 lt!2481773))))

(assert (=> d!2173955 (= (++!15119 lt!2481773 (exprs!6670 ct2!306)) lt!2481845)))

(declare-fun b!6981077 () Bool)

(assert (=> b!6981077 (= e!4195728 (Cons!66943 (h!73391 lt!2481773) (++!15119 (t!380810 lt!2481773) (exprs!6670 ct2!306))))))

(declare-fun b!6981076 () Bool)

(assert (=> b!6981076 (= e!4195728 (exprs!6670 ct2!306))))

(declare-fun b!6981079 () Bool)

(assert (=> b!6981079 (= e!4195727 (or (not (= (exprs!6670 ct2!306) Nil!66943)) (= lt!2481845 lt!2481773)))))

(declare-fun b!6981078 () Bool)

(declare-fun res!2846759 () Bool)

(assert (=> b!6981078 (=> (not res!2846759) (not e!4195727))))

(declare-fun size!40874 (List!67067) Int)

(assert (=> b!6981078 (= res!2846759 (= (size!40874 lt!2481845) (+ (size!40874 lt!2481773) (size!40874 (exprs!6670 ct2!306)))))))

(assert (= (and d!2173955 c!1294126) b!6981076))

(assert (= (and d!2173955 (not c!1294126)) b!6981077))

(assert (= (and d!2173955 res!2846758) b!6981078))

(assert (= (and b!6981078 res!2846759) b!6981079))

(declare-fun m!7667482 () Bool)

(assert (=> d!2173955 m!7667482))

(declare-fun m!7667484 () Bool)

(assert (=> d!2173955 m!7667484))

(declare-fun m!7667486 () Bool)

(assert (=> d!2173955 m!7667486))

(declare-fun m!7667488 () Bool)

(assert (=> b!6981077 m!7667488))

(declare-fun m!7667490 () Bool)

(assert (=> b!6981078 m!7667490))

(declare-fun m!7667492 () Bool)

(assert (=> b!6981078 m!7667492))

(declare-fun m!7667494 () Bool)

(assert (=> b!6981078 m!7667494))

(assert (=> b!6980933 d!2173955))

(declare-fun d!2173961 () Bool)

(declare-fun e!4195731 () Bool)

(assert (=> d!2173961 e!4195731))

(declare-fun res!2846762 () Bool)

(assert (=> d!2173961 (=> (not res!2846762) (not e!4195731))))

(declare-fun lt!2481848 () List!67069)

(declare-fun noDuplicate!2494 (List!67069) Bool)

(assert (=> d!2173961 (= res!2846762 (noDuplicate!2494 lt!2481848))))

(declare-fun choose!52044 ((Set Context!12340)) List!67069)

(assert (=> d!2173961 (= lt!2481848 (choose!52044 lt!2481763))))

(assert (=> d!2173961 (= (toList!10534 lt!2481763) lt!2481848)))

(declare-fun b!6981082 () Bool)

(declare-fun content!13202 (List!67069) (Set Context!12340))

(assert (=> b!6981082 (= e!4195731 (= (content!13202 lt!2481848) lt!2481763))))

(assert (= (and d!2173961 res!2846762) b!6981082))

(declare-fun m!7667496 () Bool)

(assert (=> d!2173961 m!7667496))

(declare-fun m!7667498 () Bool)

(assert (=> d!2173961 m!7667498))

(declare-fun m!7667500 () Bool)

(assert (=> b!6981082 m!7667500))

(assert (=> b!6980924 d!2173961))

(declare-fun d!2173963 () Bool)

(declare-fun c!1294127 () Bool)

(assert (=> d!2173963 (= c!1294127 (isEmpty!39076 s!7408))))

(declare-fun e!4195732 () Bool)

(assert (=> d!2173963 (= (matchZipper!2714 lt!2481771 s!7408) e!4195732)))

(declare-fun b!6981083 () Bool)

(assert (=> b!6981083 (= e!4195732 (nullableZipper!2403 lt!2481771))))

(declare-fun b!6981084 () Bool)

(assert (=> b!6981084 (= e!4195732 (matchZipper!2714 (derivationStepZipper!2654 lt!2481771 (head!14075 s!7408)) (tail!13152 s!7408)))))

(assert (= (and d!2173963 c!1294127) b!6981083))

(assert (= (and d!2173963 (not c!1294127)) b!6981084))

(assert (=> d!2173963 m!7667422))

(declare-fun m!7667502 () Bool)

(assert (=> b!6981083 m!7667502))

(assert (=> b!6981084 m!7667426))

(assert (=> b!6981084 m!7667426))

(declare-fun m!7667504 () Bool)

(assert (=> b!6981084 m!7667504))

(assert (=> b!6981084 m!7667430))

(assert (=> b!6981084 m!7667504))

(assert (=> b!6981084 m!7667430))

(declare-fun m!7667506 () Bool)

(assert (=> b!6981084 m!7667506))

(assert (=> b!6980924 d!2173963))

(declare-fun bs!1860857 () Bool)

(declare-fun d!2173965 () Bool)

(assert (= bs!1860857 (and d!2173965 b!6980924)))

(declare-fun lambda!399201 () Int)

(assert (=> bs!1860857 (= lambda!399201 lambda!399158)))

(assert (=> d!2173965 true))

(assert (=> d!2173965 (exists!2933 lt!2481765 lambda!399201)))

(declare-fun lt!2481854 () Unit!161000)

(declare-fun choose!52045 (List!67069 List!67068) Unit!161000)

(assert (=> d!2173965 (= lt!2481854 (choose!52045 lt!2481765 s!7408))))

(assert (=> d!2173965 (matchZipper!2714 (content!13202 lt!2481765) s!7408)))

(assert (=> d!2173965 (= (lemmaZipperMatchesExistsMatchingContext!143 lt!2481765 s!7408) lt!2481854)))

(declare-fun bs!1860858 () Bool)

(assert (= bs!1860858 d!2173965))

(declare-fun m!7667514 () Bool)

(assert (=> bs!1860858 m!7667514))

(declare-fun m!7667516 () Bool)

(assert (=> bs!1860858 m!7667516))

(declare-fun m!7667518 () Bool)

(assert (=> bs!1860858 m!7667518))

(assert (=> bs!1860858 m!7667518))

(declare-fun m!7667520 () Bool)

(assert (=> bs!1860858 m!7667520))

(assert (=> b!6980924 d!2173965))

(declare-fun bs!1860859 () Bool)

(declare-fun d!2173969 () Bool)

(assert (= bs!1860859 (and d!2173969 b!6980924)))

(declare-fun lambda!399204 () Int)

(assert (=> bs!1860859 (not (= lambda!399204 lambda!399158))))

(declare-fun bs!1860860 () Bool)

(assert (= bs!1860860 (and d!2173969 d!2173965)))

(assert (=> bs!1860860 (not (= lambda!399204 lambda!399201))))

(assert (=> d!2173969 true))

(declare-fun order!27845 () Int)

(declare-fun dynLambda!26755 (Int Int) Int)

(assert (=> d!2173969 (< (dynLambda!26755 order!27845 lambda!399158) (dynLambda!26755 order!27845 lambda!399204))))

(declare-fun forall!16064 (List!67069 Int) Bool)

(assert (=> d!2173969 (= (exists!2933 lt!2481765 lambda!399158) (not (forall!16064 lt!2481765 lambda!399204)))))

(declare-fun bs!1860861 () Bool)

(assert (= bs!1860861 d!2173969))

(declare-fun m!7667522 () Bool)

(assert (=> bs!1860861 m!7667522))

(assert (=> b!6980924 d!2173969))

(declare-fun d!2173971 () Bool)

(declare-fun e!4195738 () Bool)

(assert (=> d!2173971 e!4195738))

(declare-fun res!2846768 () Bool)

(assert (=> d!2173971 (=> (not res!2846768) (not e!4195738))))

(declare-fun lt!2481859 () Context!12340)

(declare-fun dynLambda!26756 (Int Context!12340) Bool)

(assert (=> d!2173971 (= res!2846768 (dynLambda!26756 lambda!399158 lt!2481859))))

(declare-fun getWitness!1046 (List!67069 Int) Context!12340)

(assert (=> d!2173971 (= lt!2481859 (getWitness!1046 (toList!10534 lt!2481763) lambda!399158))))

(declare-fun exists!2935 ((Set Context!12340) Int) Bool)

(assert (=> d!2173971 (exists!2935 lt!2481763 lambda!399158)))

(assert (=> d!2173971 (= (getWitness!1044 lt!2481763 lambda!399158) lt!2481859)))

(declare-fun b!6981092 () Bool)

(assert (=> b!6981092 (= e!4195738 (set.member lt!2481859 lt!2481763))))

(assert (= (and d!2173971 res!2846768) b!6981092))

(declare-fun b_lambda!261643 () Bool)

(assert (=> (not b_lambda!261643) (not d!2173971)))

(declare-fun m!7667524 () Bool)

(assert (=> d!2173971 m!7667524))

(assert (=> d!2173971 m!7667348))

(assert (=> d!2173971 m!7667348))

(declare-fun m!7667526 () Bool)

(assert (=> d!2173971 m!7667526))

(declare-fun m!7667528 () Bool)

(assert (=> d!2173971 m!7667528))

(declare-fun m!7667530 () Bool)

(assert (=> b!6981092 m!7667530))

(assert (=> b!6980924 d!2173971))

(declare-fun d!2173973 () Bool)

(declare-fun nullableFct!2606 (Regex!17174) Bool)

(assert (=> d!2173973 (= (nullable!6934 (h!73391 (exprs!6670 lt!2481768))) (nullableFct!2606 (h!73391 (exprs!6670 lt!2481768))))))

(declare-fun bs!1860862 () Bool)

(assert (= bs!1860862 d!2173973))

(declare-fun m!7667532 () Bool)

(assert (=> bs!1860862 m!7667532))

(assert (=> b!6980919 d!2173973))

(declare-fun d!2173975 () Bool)

(assert (=> d!2173975 (= (tail!13150 (exprs!6670 lt!2481768)) (t!380810 (exprs!6670 lt!2481768)))))

(assert (=> b!6980919 d!2173975))

(declare-fun bs!1860864 () Bool)

(declare-fun d!2173977 () Bool)

(assert (= bs!1860864 (and d!2173977 b!6980926)))

(declare-fun lambda!399208 () Int)

(assert (=> bs!1860864 (= lambda!399208 lambda!399160)))

(declare-fun bs!1860865 () Bool)

(assert (= bs!1860865 (and d!2173977 d!2173935)))

(assert (=> bs!1860865 (= lambda!399208 lambda!399195)))

(assert (=> d!2173977 (= (inv!85795 setElem!47534) (forall!16062 (exprs!6670 setElem!47534) lambda!399208))))

(declare-fun bs!1860866 () Bool)

(assert (= bs!1860866 d!2173977))

(declare-fun m!7667534 () Bool)

(assert (=> bs!1860866 m!7667534))

(assert (=> setNonEmpty!47534 d!2173977))

(declare-fun d!2173979 () Bool)

(assert (=> d!2173979 (forall!16062 (++!15119 (exprs!6670 lt!2481768) (exprs!6670 ct2!306)) lambda!399160)))

(declare-fun lt!2481861 () Unit!161000)

(assert (=> d!2173979 (= lt!2481861 (choose!52043 (exprs!6670 lt!2481768) (exprs!6670 ct2!306) lambda!399160))))

(assert (=> d!2173979 (forall!16062 (exprs!6670 lt!2481768) lambda!399160)))

(assert (=> d!2173979 (= (lemmaConcatPreservesForall!510 (exprs!6670 lt!2481768) (exprs!6670 ct2!306) lambda!399160) lt!2481861)))

(declare-fun bs!1860867 () Bool)

(assert (= bs!1860867 d!2173979))

(assert (=> bs!1860867 m!7667314))

(assert (=> bs!1860867 m!7667314))

(declare-fun m!7667538 () Bool)

(assert (=> bs!1860867 m!7667538))

(declare-fun m!7667540 () Bool)

(assert (=> bs!1860867 m!7667540))

(declare-fun m!7667542 () Bool)

(assert (=> bs!1860867 m!7667542))

(assert (=> b!6980925 d!2173979))

(declare-fun d!2173981 () Bool)

(declare-fun res!2846769 () Bool)

(declare-fun e!4195739 () Bool)

(assert (=> d!2173981 (=> res!2846769 e!4195739)))

(assert (=> d!2173981 (= res!2846769 (is-Nil!66943 lt!2481773))))

(assert (=> d!2173981 (= (forall!16062 lt!2481773 lambda!399160) e!4195739)))

(declare-fun b!6981093 () Bool)

(declare-fun e!4195740 () Bool)

(assert (=> b!6981093 (= e!4195739 e!4195740)))

(declare-fun res!2846770 () Bool)

(assert (=> b!6981093 (=> (not res!2846770) (not e!4195740))))

(assert (=> b!6981093 (= res!2846770 (dynLambda!26754 lambda!399160 (h!73391 lt!2481773)))))

(declare-fun b!6981094 () Bool)

(assert (=> b!6981094 (= e!4195740 (forall!16062 (t!380810 lt!2481773) lambda!399160))))

(assert (= (and d!2173981 (not res!2846769)) b!6981093))

(assert (= (and b!6981093 res!2846770) b!6981094))

(declare-fun b_lambda!261645 () Bool)

(assert (=> (not b_lambda!261645) (not b!6981093)))

(declare-fun m!7667550 () Bool)

(assert (=> b!6981093 m!7667550))

(declare-fun m!7667552 () Bool)

(assert (=> b!6981094 m!7667552))

(assert (=> b!6980920 d!2173981))

(declare-fun d!2173985 () Bool)

(declare-fun e!4195741 () Bool)

(assert (=> d!2173985 e!4195741))

(declare-fun res!2846771 () Bool)

(assert (=> d!2173985 (=> (not res!2846771) (not e!4195741))))

(declare-fun lt!2481862 () List!67067)

(assert (=> d!2173985 (= res!2846771 (= (content!13201 lt!2481862) (set.union (content!13201 (exprs!6670 lt!2481768)) (content!13201 (exprs!6670 ct2!306)))))))

(declare-fun e!4195742 () List!67067)

(assert (=> d!2173985 (= lt!2481862 e!4195742)))

(declare-fun c!1294132 () Bool)

(assert (=> d!2173985 (= c!1294132 (is-Nil!66943 (exprs!6670 lt!2481768)))))

(assert (=> d!2173985 (= (++!15119 (exprs!6670 lt!2481768) (exprs!6670 ct2!306)) lt!2481862)))

(declare-fun b!6981096 () Bool)

(assert (=> b!6981096 (= e!4195742 (Cons!66943 (h!73391 (exprs!6670 lt!2481768)) (++!15119 (t!380810 (exprs!6670 lt!2481768)) (exprs!6670 ct2!306))))))

(declare-fun b!6981095 () Bool)

(assert (=> b!6981095 (= e!4195742 (exprs!6670 ct2!306))))

(declare-fun b!6981098 () Bool)

(assert (=> b!6981098 (= e!4195741 (or (not (= (exprs!6670 ct2!306) Nil!66943)) (= lt!2481862 (exprs!6670 lt!2481768))))))

(declare-fun b!6981097 () Bool)

(declare-fun res!2846772 () Bool)

(assert (=> b!6981097 (=> (not res!2846772) (not e!4195741))))

(assert (=> b!6981097 (= res!2846772 (= (size!40874 lt!2481862) (+ (size!40874 (exprs!6670 lt!2481768)) (size!40874 (exprs!6670 ct2!306)))))))

(assert (= (and d!2173985 c!1294132) b!6981095))

(assert (= (and d!2173985 (not c!1294132)) b!6981096))

(assert (= (and d!2173985 res!2846771) b!6981097))

(assert (= (and b!6981097 res!2846772) b!6981098))

(declare-fun m!7667554 () Bool)

(assert (=> d!2173985 m!7667554))

(declare-fun m!7667556 () Bool)

(assert (=> d!2173985 m!7667556))

(assert (=> d!2173985 m!7667486))

(declare-fun m!7667558 () Bool)

(assert (=> b!6981096 m!7667558))

(declare-fun m!7667560 () Bool)

(assert (=> b!6981097 m!7667560))

(declare-fun m!7667562 () Bool)

(assert (=> b!6981097 m!7667562))

(assert (=> b!6981097 m!7667494))

(assert (=> b!6980926 d!2173985))

(assert (=> b!6980926 d!2173979))

(declare-fun d!2173987 () Bool)

(declare-fun e!4195745 () Bool)

(assert (=> d!2173987 e!4195745))

(declare-fun res!2846775 () Bool)

(assert (=> d!2173987 (=> (not res!2846775) (not e!4195745))))

(declare-fun lt!2481865 () Context!12340)

(declare-fun dynLambda!26757 (Int Context!12340) Context!12340)

(assert (=> d!2173987 (= res!2846775 (= lt!2481767 (dynLambda!26757 lambda!399159 lt!2481865)))))

(declare-fun choose!52046 ((Set Context!12340) Int Context!12340) Context!12340)

(assert (=> d!2173987 (= lt!2481865 (choose!52046 z1!570 lambda!399159 lt!2481767))))

(assert (=> d!2173987 (set.member lt!2481767 (map!15427 z1!570 lambda!399159))))

(assert (=> d!2173987 (= (mapPost2!29 z1!570 lambda!399159 lt!2481767) lt!2481865)))

(declare-fun b!6981104 () Bool)

(assert (=> b!6981104 (= e!4195745 (set.member lt!2481865 z1!570))))

(assert (= (and d!2173987 res!2846775) b!6981104))

(declare-fun b_lambda!261647 () Bool)

(assert (=> (not b_lambda!261647) (not d!2173987)))

(declare-fun m!7667564 () Bool)

(assert (=> d!2173987 m!7667564))

(declare-fun m!7667566 () Bool)

(assert (=> d!2173987 m!7667566))

(declare-fun m!7667568 () Bool)

(assert (=> d!2173987 m!7667568))

(declare-fun m!7667570 () Bool)

(assert (=> d!2173987 m!7667570))

(declare-fun m!7667572 () Bool)

(assert (=> b!6981104 m!7667572))

(assert (=> b!6980926 d!2173987))

(declare-fun d!2173989 () Bool)

(declare-fun dynLambda!26758 (Int Context!12340) (Set Context!12340))

(assert (=> d!2173989 (= (flatMap!2160 lt!2481775 lambda!399161) (dynLambda!26758 lambda!399161 lt!2481774))))

(declare-fun lt!2481868 () Unit!161000)

(declare-fun choose!52047 ((Set Context!12340) Context!12340 Int) Unit!161000)

(assert (=> d!2173989 (= lt!2481868 (choose!52047 lt!2481775 lt!2481774 lambda!399161))))

(assert (=> d!2173989 (= lt!2481775 (set.insert lt!2481774 (as set.empty (Set Context!12340))))))

(assert (=> d!2173989 (= (lemmaFlatMapOnSingletonSet!1675 lt!2481775 lt!2481774 lambda!399161) lt!2481868)))

(declare-fun b_lambda!261649 () Bool)

(assert (=> (not b_lambda!261649) (not d!2173989)))

(declare-fun bs!1860872 () Bool)

(assert (= bs!1860872 d!2173989))

(assert (=> bs!1860872 m!7667328))

(declare-fun m!7667576 () Bool)

(assert (=> bs!1860872 m!7667576))

(declare-fun m!7667578 () Bool)

(assert (=> bs!1860872 m!7667578))

(assert (=> bs!1860872 m!7667336))

(assert (=> b!6980927 d!2173989))

(declare-fun bs!1860873 () Bool)

(declare-fun d!2173993 () Bool)

(assert (= bs!1860873 (and d!2173993 b!6980927)))

(declare-fun lambda!399214 () Int)

(assert (=> bs!1860873 (= lambda!399214 lambda!399161)))

(assert (=> d!2173993 true))

(assert (=> d!2173993 (= (derivationStepZipper!2654 lt!2481775 (h!73392 s!7408)) (flatMap!2160 lt!2481775 lambda!399214))))

(declare-fun bs!1860874 () Bool)

(assert (= bs!1860874 d!2173993))

(declare-fun m!7667580 () Bool)

(assert (=> bs!1860874 m!7667580))

(assert (=> b!6980927 d!2173993))

(assert (=> b!6980927 d!2173979))

(declare-fun b!6981107 () Bool)

(declare-fun e!4195746 () (Set Context!12340))

(assert (=> b!6981107 (= e!4195746 (as set.empty (Set Context!12340)))))

(declare-fun bm!633482 () Bool)

(declare-fun call!633487 () (Set Context!12340))

(assert (=> bm!633482 (= call!633487 (derivationStepZipperDown!1892 (h!73391 (exprs!6670 lt!2481774)) (Context!12341 (t!380810 (exprs!6670 lt!2481774))) (h!73392 s!7408)))))

(declare-fun b!6981108 () Bool)

(assert (=> b!6981108 (= e!4195746 call!633487)))

(declare-fun d!2173995 () Bool)

(declare-fun c!1294135 () Bool)

(declare-fun e!4195747 () Bool)

(assert (=> d!2173995 (= c!1294135 e!4195747)))

(declare-fun res!2846776 () Bool)

(assert (=> d!2173995 (=> (not res!2846776) (not e!4195747))))

(assert (=> d!2173995 (= res!2846776 (is-Cons!66943 (exprs!6670 lt!2481774)))))

(declare-fun e!4195748 () (Set Context!12340))

(assert (=> d!2173995 (= (derivationStepZipperUp!1824 lt!2481774 (h!73392 s!7408)) e!4195748)))

(declare-fun b!6981109 () Bool)

(assert (=> b!6981109 (= e!4195748 e!4195746)))

(declare-fun c!1294136 () Bool)

(assert (=> b!6981109 (= c!1294136 (is-Cons!66943 (exprs!6670 lt!2481774)))))

(declare-fun b!6981110 () Bool)

(assert (=> b!6981110 (= e!4195747 (nullable!6934 (h!73391 (exprs!6670 lt!2481774))))))

(declare-fun b!6981111 () Bool)

(assert (=> b!6981111 (= e!4195748 (set.union call!633487 (derivationStepZipperUp!1824 (Context!12341 (t!380810 (exprs!6670 lt!2481774))) (h!73392 s!7408))))))

(assert (= (and d!2173995 res!2846776) b!6981110))

(assert (= (and d!2173995 c!1294135) b!6981111))

(assert (= (and d!2173995 (not c!1294135)) b!6981109))

(assert (= (and b!6981109 c!1294136) b!6981108))

(assert (= (and b!6981109 (not c!1294136)) b!6981107))

(assert (= (or b!6981111 b!6981108) bm!633482))

(declare-fun m!7667582 () Bool)

(assert (=> bm!633482 m!7667582))

(declare-fun m!7667584 () Bool)

(assert (=> b!6981110 m!7667584))

(declare-fun m!7667586 () Bool)

(assert (=> b!6981111 m!7667586))

(assert (=> b!6980927 d!2173995))

(declare-fun d!2173997 () Bool)

(declare-fun choose!52048 ((Set Context!12340) Int) (Set Context!12340))

(assert (=> d!2173997 (= (flatMap!2160 lt!2481775 lambda!399161) (choose!52048 lt!2481775 lambda!399161))))

(declare-fun bs!1860875 () Bool)

(assert (= bs!1860875 d!2173997))

(declare-fun m!7667588 () Bool)

(assert (=> bs!1860875 m!7667588))

(assert (=> b!6980927 d!2173997))

(declare-fun b!6981118 () Bool)

(declare-fun e!4195753 () Bool)

(declare-fun tp!1928279 () Bool)

(declare-fun tp!1928280 () Bool)

(assert (=> b!6981118 (= e!4195753 (and tp!1928279 tp!1928280))))

(assert (=> b!6980923 (= tp!1928262 e!4195753)))

(assert (= (and b!6980923 (is-Cons!66943 (exprs!6670 setElem!47534))) b!6981118))

(declare-fun condSetEmpty!47540 () Bool)

(assert (=> setNonEmpty!47534 (= condSetEmpty!47540 (= setRest!47534 (as set.empty (Set Context!12340))))))

(declare-fun setRes!47540 () Bool)

(assert (=> setNonEmpty!47534 (= tp!1928260 setRes!47540)))

(declare-fun setIsEmpty!47540 () Bool)

(assert (=> setIsEmpty!47540 setRes!47540))

(declare-fun e!4195756 () Bool)

(declare-fun setElem!47540 () Context!12340)

(declare-fun tp!1928285 () Bool)

(declare-fun setNonEmpty!47540 () Bool)

(assert (=> setNonEmpty!47540 (= setRes!47540 (and tp!1928285 (inv!85795 setElem!47540) e!4195756))))

(declare-fun setRest!47540 () (Set Context!12340))

(assert (=> setNonEmpty!47540 (= setRest!47534 (set.union (set.insert setElem!47540 (as set.empty (Set Context!12340))) setRest!47540))))

(declare-fun b!6981123 () Bool)

(declare-fun tp!1928286 () Bool)

(assert (=> b!6981123 (= e!4195756 tp!1928286)))

(assert (= (and setNonEmpty!47534 condSetEmpty!47540) setIsEmpty!47540))

(assert (= (and setNonEmpty!47534 (not condSetEmpty!47540)) setNonEmpty!47540))

(assert (= setNonEmpty!47540 b!6981123))

(declare-fun m!7667590 () Bool)

(assert (=> setNonEmpty!47540 m!7667590))

(declare-fun b!6981129 () Bool)

(declare-fun e!4195760 () Bool)

(declare-fun tp!1928289 () Bool)

(assert (=> b!6981129 (= e!4195760 (and tp_is_empty!43573 tp!1928289))))

(assert (=> b!6980921 (= tp!1928259 e!4195760)))

(assert (= (and b!6980921 (is-Cons!66944 (t!380811 s!7408))) b!6981129))

(declare-fun b!6981130 () Bool)

(declare-fun e!4195761 () Bool)

(declare-fun tp!1928290 () Bool)

(declare-fun tp!1928291 () Bool)

(assert (=> b!6981130 (= e!4195761 (and tp!1928290 tp!1928291))))

(assert (=> b!6980931 (= tp!1928261 e!4195761)))

(assert (= (and b!6980931 (is-Cons!66943 (exprs!6670 ct2!306))) b!6981130))

(declare-fun b_lambda!261653 () Bool)

(assert (= b_lambda!261645 (or b!6980926 b_lambda!261653)))

(declare-fun bs!1860876 () Bool)

(declare-fun d!2173999 () Bool)

(assert (= bs!1860876 (and d!2173999 b!6980926)))

(declare-fun validRegex!8837 (Regex!17174) Bool)

(assert (=> bs!1860876 (= (dynLambda!26754 lambda!399160 (h!73391 lt!2481773)) (validRegex!8837 (h!73391 lt!2481773)))))

(declare-fun m!7667600 () Bool)

(assert (=> bs!1860876 m!7667600))

(assert (=> b!6981093 d!2173999))

(declare-fun b_lambda!261655 () Bool)

(assert (= b_lambda!261643 (or b!6980924 b_lambda!261655)))

(declare-fun bs!1860877 () Bool)

(declare-fun d!2174003 () Bool)

(assert (= bs!1860877 (and d!2174003 b!6980924)))

(assert (=> bs!1860877 (= (dynLambda!26756 lambda!399158 lt!2481859) (matchZipper!2714 (set.insert lt!2481859 (as set.empty (Set Context!12340))) s!7408))))

(declare-fun m!7667602 () Bool)

(assert (=> bs!1860877 m!7667602))

(assert (=> bs!1860877 m!7667602))

(declare-fun m!7667604 () Bool)

(assert (=> bs!1860877 m!7667604))

(assert (=> d!2173971 d!2174003))

(declare-fun b_lambda!261657 () Bool)

(assert (= b_lambda!261639 (or b!6980926 b_lambda!261657)))

(declare-fun bs!1860878 () Bool)

(declare-fun d!2174005 () Bool)

(assert (= bs!1860878 (and d!2174005 b!6980926)))

(assert (=> bs!1860878 (= (dynLambda!26754 lambda!399160 (h!73391 (exprs!6670 ct2!306))) (validRegex!8837 (h!73391 (exprs!6670 ct2!306))))))

(declare-fun m!7667606 () Bool)

(assert (=> bs!1860878 m!7667606))

(assert (=> b!6981001 d!2174005))

(declare-fun b_lambda!261659 () Bool)

(assert (= b_lambda!261649 (or b!6980927 b_lambda!261659)))

(declare-fun bs!1860879 () Bool)

(declare-fun d!2174007 () Bool)

(assert (= bs!1860879 (and d!2174007 b!6980927)))

(assert (=> bs!1860879 (= (dynLambda!26758 lambda!399161 lt!2481774) (derivationStepZipperUp!1824 lt!2481774 (h!73392 s!7408)))))

(assert (=> bs!1860879 m!7667332))

(assert (=> d!2173989 d!2174007))

(declare-fun b_lambda!261661 () Bool)

(assert (= b_lambda!261647 (or b!6980926 b_lambda!261661)))

(declare-fun bs!1860880 () Bool)

(declare-fun d!2174009 () Bool)

(assert (= bs!1860880 (and d!2174009 b!6980926)))

(declare-fun lt!2481872 () Unit!161000)

(assert (=> bs!1860880 (= lt!2481872 (lemmaConcatPreservesForall!510 (exprs!6670 lt!2481865) (exprs!6670 ct2!306) lambda!399160))))

(assert (=> bs!1860880 (= (dynLambda!26757 lambda!399159 lt!2481865) (Context!12341 (++!15119 (exprs!6670 lt!2481865) (exprs!6670 ct2!306))))))

(declare-fun m!7667608 () Bool)

(assert (=> bs!1860880 m!7667608))

(declare-fun m!7667610 () Bool)

(assert (=> bs!1860880 m!7667610))

(assert (=> d!2173987 d!2174009))

(push 1)

(assert (not d!2173973))

(assert (not d!2173989))

(assert (not bm!633475))

(assert (not b!6981118))

(assert (not b!6981111))

(assert (not d!2173977))

(assert (not b!6981129))

(assert (not d!2173965))

(assert (not b!6981050))

(assert (not b!6981082))

(assert (not b!6981066))

(assert (not b_lambda!261655))

(assert (not b!6981097))

(assert (not b!6981123))

(assert (not b!6981130))

(assert (not d!2173969))

(assert (not b!6980996))

(assert (not bs!1860879))

(assert (not bm!633476))

(assert (not bs!1860878))

(assert (not bs!1860880))

(assert (not d!2173961))

(assert (not b_lambda!261661))

(assert (not d!2173933))

(assert (not d!2173987))

(assert (not d!2173935))

(assert (not d!2173997))

(assert (not d!2173963))

(assert (not b!6981096))

(assert (not bs!1860876))

(assert (not b!6981083))

(assert (not b_lambda!261653))

(assert (not b!6981110))

(assert (not d!2173955))

(assert (not b_lambda!261657))

(assert (not d!2173985))

(assert (not bs!1860877))

(assert (not bm!633481))

(assert (not b!6981077))

(assert (not b!6980995))

(assert (not bm!633477))

(assert (not setNonEmpty!47540))

(assert (not b!6981084))

(assert (not d!2173931))

(assert (not d!2173949))

(assert (not bm!633482))

(assert (not b!6981067))

(assert (not b!6981094))

(assert (not d!2173971))

(assert tp_is_empty!43573)

(assert (not d!2173979))

(assert (not b!6981002))

(assert (not d!2173993))

(assert (not b_lambda!261659))

(assert (not b!6981078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

