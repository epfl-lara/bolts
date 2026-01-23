; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670750 () Bool)

(assert start!670750)

(declare-fun b!6985025 () Bool)

(assert (=> b!6985025 true))

(declare-fun b!6985024 () Bool)

(assert (=> b!6985024 true))

(declare-fun b!6985017 () Bool)

(assert (=> b!6985017 true))

(declare-fun b!6985009 () Bool)

(declare-fun e!4198210 () Bool)

(declare-fun tp!1928960 () Bool)

(assert (=> b!6985009 (= e!4198210 tp!1928960)))

(declare-fun b!6985010 () Bool)

(declare-fun res!2848336 () Bool)

(declare-fun e!4198217 () Bool)

(assert (=> b!6985010 (=> res!2848336 e!4198217)))

(declare-datatypes ((C!34654 0))(
  ( (C!34655 (val!27029 Int)) )
))
(declare-datatypes ((Regex!17192 0))(
  ( (ElementMatch!17192 (c!1295198 C!34654)) (Concat!26037 (regOne!34896 Regex!17192) (regTwo!34896 Regex!17192)) (EmptyExpr!17192) (Star!17192 (reg!17521 Regex!17192)) (EmptyLang!17192) (Union!17192 (regOne!34897 Regex!17192) (regTwo!34897 Regex!17192)) )
))
(declare-datatypes ((List!67121 0))(
  ( (Nil!66997) (Cons!66997 (h!73445 Regex!17192) (t!380868 List!67121)) )
))
(declare-datatypes ((Context!12376 0))(
  ( (Context!12377 (exprs!6688 List!67121)) )
))
(declare-fun lt!2483566 () Context!12376)

(assert (=> b!6985010 (= res!2848336 (not (is-Cons!66997 (exprs!6688 lt!2483566))))))

(declare-fun b!6985011 () Bool)

(declare-fun e!4198219 () Bool)

(declare-fun tp_is_empty!43609 () Bool)

(declare-fun tp!1928957 () Bool)

(assert (=> b!6985011 (= e!4198219 (and tp_is_empty!43609 tp!1928957))))

(declare-fun b!6985012 () Bool)

(declare-fun e!4198212 () Bool)

(declare-fun e!4198214 () Bool)

(assert (=> b!6985012 (= e!4198212 e!4198214)))

(declare-fun res!2848331 () Bool)

(assert (=> b!6985012 (=> res!2848331 e!4198214)))

(declare-fun lt!2483570 () (Set Context!12376))

(declare-fun lt!2483561 () (Set Context!12376))

(assert (=> b!6985012 (= res!2848331 (not (= lt!2483570 lt!2483561)))))

(declare-fun lt!2483551 () (Set Context!12376))

(declare-fun lt!2483564 () (Set Context!12376))

(assert (=> b!6985012 (= lt!2483561 (set.union lt!2483551 lt!2483564))))

(declare-fun lt!2483562 () Context!12376)

(declare-datatypes ((List!67122 0))(
  ( (Nil!66998) (Cons!66998 (h!73446 C!34654) (t!380869 List!67122)) )
))
(declare-fun s!7408 () List!67122)

(declare-fun derivationStepZipperUp!1842 (Context!12376 C!34654) (Set Context!12376))

(assert (=> b!6985012 (= lt!2483564 (derivationStepZipperUp!1842 lt!2483562 (h!73446 s!7408)))))

(declare-fun derivationStepZipperDown!1910 (Regex!17192 Context!12376 C!34654) (Set Context!12376))

(assert (=> b!6985012 (= lt!2483551 (derivationStepZipperDown!1910 (h!73445 (exprs!6688 lt!2483566)) lt!2483562 (h!73446 s!7408)))))

(declare-fun lt!2483560 () List!67121)

(declare-fun ct2!306 () Context!12376)

(declare-fun ++!15137 (List!67121 List!67121) List!67121)

(assert (=> b!6985012 (= lt!2483562 (Context!12377 (++!15137 lt!2483560 (exprs!6688 ct2!306))))))

(declare-datatypes ((Unit!161039 0))(
  ( (Unit!161040) )
))
(declare-fun lt!2483549 () Unit!161039)

(declare-fun lambda!400064 () Int)

(declare-fun lemmaConcatPreservesForall!528 (List!67121 List!67121 Int) Unit!161039)

(assert (=> b!6985012 (= lt!2483549 (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(declare-fun lt!2483552 () Unit!161039)

(assert (=> b!6985012 (= lt!2483552 (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(declare-fun b!6985013 () Bool)

(declare-fun res!2848339 () Bool)

(declare-fun e!4198216 () Bool)

(assert (=> b!6985013 (=> res!2848339 e!4198216)))

(declare-fun lt!2483569 () Bool)

(assert (=> b!6985013 (= res!2848339 (not lt!2483569))))

(declare-fun b!6985014 () Bool)

(declare-fun res!2848338 () Bool)

(declare-fun e!4198207 () Bool)

(assert (=> b!6985014 (=> (not res!2848338) (not e!4198207))))

(assert (=> b!6985014 (= res!2848338 (is-Cons!66998 s!7408))))

(declare-fun b!6985015 () Bool)

(declare-fun forall!16094 (List!67121 Int) Bool)

(assert (=> b!6985015 (= e!4198216 (forall!16094 lt!2483560 lambda!400064))))

(declare-fun b!6985016 () Bool)

(assert (=> b!6985016 (= e!4198214 e!4198216)))

(declare-fun res!2848332 () Bool)

(assert (=> b!6985016 (=> res!2848332 e!4198216)))

(declare-fun e!4198211 () Bool)

(assert (=> b!6985016 (= res!2848332 e!4198211)))

(declare-fun res!2848327 () Bool)

(assert (=> b!6985016 (=> (not res!2848327) (not e!4198211))))

(declare-fun lt!2483554 () Bool)

(assert (=> b!6985016 (= res!2848327 (not (= lt!2483569 lt!2483554)))))

(declare-fun matchZipper!2732 ((Set Context!12376) List!67122) Bool)

(assert (=> b!6985016 (= lt!2483569 (matchZipper!2732 lt!2483570 (t!380869 s!7408)))))

(declare-fun lt!2483568 () Unit!161039)

(assert (=> b!6985016 (= lt!2483568 (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(declare-fun e!4198208 () Bool)

(assert (=> b!6985016 (= (matchZipper!2732 lt!2483561 (t!380869 s!7408)) e!4198208)))

(declare-fun res!2848335 () Bool)

(assert (=> b!6985016 (=> res!2848335 e!4198208)))

(assert (=> b!6985016 (= res!2848335 lt!2483554)))

(assert (=> b!6985016 (= lt!2483554 (matchZipper!2732 lt!2483551 (t!380869 s!7408)))))

(declare-fun lt!2483553 () Unit!161039)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1365 ((Set Context!12376) (Set Context!12376) List!67122) Unit!161039)

(assert (=> b!6985016 (= lt!2483553 (lemmaZipperConcatMatchesSameAsBothZippers!1365 lt!2483551 lt!2483564 (t!380869 s!7408)))))

(declare-fun lt!2483559 () Unit!161039)

(assert (=> b!6985016 (= lt!2483559 (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(declare-fun lt!2483546 () Unit!161039)

(assert (=> b!6985016 (= lt!2483546 (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(declare-fun e!4198213 () Bool)

(assert (=> b!6985017 (= e!4198213 e!4198217)))

(declare-fun res!2848328 () Bool)

(assert (=> b!6985017 (=> res!2848328 e!4198217)))

(declare-fun lt!2483563 () (Set Context!12376))

(declare-fun derivationStepZipper!2672 ((Set Context!12376) C!34654) (Set Context!12376))

(assert (=> b!6985017 (= res!2848328 (not (= (derivationStepZipper!2672 lt!2483563 (h!73446 s!7408)) lt!2483570)))))

(declare-fun lt!2483567 () Context!12376)

(declare-fun lambda!400065 () Int)

(declare-fun flatMap!2178 ((Set Context!12376) Int) (Set Context!12376))

(assert (=> b!6985017 (= (flatMap!2178 lt!2483563 lambda!400065) (derivationStepZipperUp!1842 lt!2483567 (h!73446 s!7408)))))

(declare-fun lt!2483555 () Unit!161039)

(declare-fun lemmaFlatMapOnSingletonSet!1693 ((Set Context!12376) Context!12376 Int) Unit!161039)

(assert (=> b!6985017 (= lt!2483555 (lemmaFlatMapOnSingletonSet!1693 lt!2483563 lt!2483567 lambda!400065))))

(assert (=> b!6985017 (= lt!2483570 (derivationStepZipperUp!1842 lt!2483567 (h!73446 s!7408)))))

(declare-fun lt!2483545 () Unit!161039)

(assert (=> b!6985017 (= lt!2483545 (lemmaConcatPreservesForall!528 (exprs!6688 lt!2483566) (exprs!6688 ct2!306) lambda!400064))))

(declare-fun b!6985018 () Bool)

(assert (=> b!6985018 (= e!4198217 e!4198212)))

(declare-fun res!2848340 () Bool)

(assert (=> b!6985018 (=> res!2848340 e!4198212)))

(declare-fun nullable!6952 (Regex!17192) Bool)

(assert (=> b!6985018 (= res!2848340 (not (nullable!6952 (h!73445 (exprs!6688 lt!2483566)))))))

(declare-fun tail!13183 (List!67121) List!67121)

(assert (=> b!6985018 (= lt!2483560 (tail!13183 (exprs!6688 lt!2483566)))))

(declare-fun b!6985019 () Bool)

(declare-fun e!4198218 () Bool)

(assert (=> b!6985019 (= e!4198218 e!4198213)))

(declare-fun res!2848341 () Bool)

(assert (=> b!6985019 (=> res!2848341 e!4198213)))

(declare-fun lt!2483565 () (Set Context!12376))

(assert (=> b!6985019 (= res!2848341 (not (= lt!2483563 lt!2483565)))))

(assert (=> b!6985019 (= lt!2483563 (set.insert lt!2483567 (as set.empty (Set Context!12376))))))

(declare-fun lt!2483558 () Unit!161039)

(assert (=> b!6985019 (= lt!2483558 (lemmaConcatPreservesForall!528 (exprs!6688 lt!2483566) (exprs!6688 ct2!306) lambda!400064))))

(declare-fun b!6985020 () Bool)

(assert (=> b!6985020 (= e!4198211 (not (matchZipper!2732 lt!2483564 (t!380869 s!7408))))))

(declare-fun lt!2483571 () Unit!161039)

(assert (=> b!6985020 (= lt!2483571 (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(declare-fun b!6985021 () Bool)

(assert (=> b!6985021 (= e!4198208 (matchZipper!2732 lt!2483564 (t!380869 s!7408)))))

(declare-fun b!6985022 () Bool)

(declare-fun e!4198215 () Bool)

(declare-fun tp!1928958 () Bool)

(assert (=> b!6985022 (= e!4198215 tp!1928958)))

(declare-fun b!6985023 () Bool)

(declare-fun res!2848330 () Bool)

(declare-fun e!4198209 () Bool)

(assert (=> b!6985023 (=> res!2848330 e!4198209)))

(declare-fun lt!2483556 () Context!12376)

(declare-fun lt!2483550 () (Set Context!12376))

(assert (=> b!6985023 (= res!2848330 (not (set.member lt!2483556 lt!2483550)))))

(declare-fun setIsEmpty!47658 () Bool)

(declare-fun setRes!47658 () Bool)

(assert (=> setIsEmpty!47658 setRes!47658))

(declare-fun tp!1928959 () Bool)

(declare-fun setNonEmpty!47658 () Bool)

(declare-fun setElem!47658 () Context!12376)

(declare-fun inv!85840 (Context!12376) Bool)

(assert (=> setNonEmpty!47658 (= setRes!47658 (and tp!1928959 (inv!85840 setElem!47658) e!4198210))))

(declare-fun z1!570 () (Set Context!12376))

(declare-fun setRest!47658 () (Set Context!12376))

(assert (=> setNonEmpty!47658 (= z1!570 (set.union (set.insert setElem!47658 (as set.empty (Set Context!12376))) setRest!47658))))

(assert (=> b!6985024 (= e!4198209 e!4198218)))

(declare-fun res!2848329 () Bool)

(assert (=> b!6985024 (=> res!2848329 e!4198218)))

(assert (=> b!6985024 (= res!2848329 (or (not (= lt!2483567 lt!2483556)) (not (set.member lt!2483566 z1!570))))))

(assert (=> b!6985024 (= lt!2483567 (Context!12377 (++!15137 (exprs!6688 lt!2483566) (exprs!6688 ct2!306))))))

(declare-fun lt!2483548 () Unit!161039)

(assert (=> b!6985024 (= lt!2483548 (lemmaConcatPreservesForall!528 (exprs!6688 lt!2483566) (exprs!6688 ct2!306) lambda!400064))))

(declare-fun lambda!400063 () Int)

(declare-fun mapPost2!47 ((Set Context!12376) Int Context!12376) Context!12376)

(assert (=> b!6985024 (= lt!2483566 (mapPost2!47 z1!570 lambda!400063 lt!2483556))))

(declare-fun res!2848334 () Bool)

(assert (=> start!670750 (=> (not res!2848334) (not e!4198207))))

(assert (=> start!670750 (= res!2848334 (matchZipper!2732 lt!2483550 s!7408))))

(declare-fun appendTo!313 ((Set Context!12376) Context!12376) (Set Context!12376))

(assert (=> start!670750 (= lt!2483550 (appendTo!313 z1!570 ct2!306))))

(assert (=> start!670750 e!4198207))

(declare-fun condSetEmpty!47658 () Bool)

(assert (=> start!670750 (= condSetEmpty!47658 (= z1!570 (as set.empty (Set Context!12376))))))

(assert (=> start!670750 setRes!47658))

(assert (=> start!670750 (and (inv!85840 ct2!306) e!4198215)))

(assert (=> start!670750 e!4198219))

(assert (=> b!6985025 (= e!4198207 (not e!4198209))))

(declare-fun res!2848337 () Bool)

(assert (=> b!6985025 (=> res!2848337 e!4198209)))

(assert (=> b!6985025 (= res!2848337 (not (matchZipper!2732 lt!2483565 s!7408)))))

(assert (=> b!6985025 (= lt!2483565 (set.insert lt!2483556 (as set.empty (Set Context!12376))))))

(declare-fun lambda!400062 () Int)

(declare-fun getWitness!1075 ((Set Context!12376) Int) Context!12376)

(assert (=> b!6985025 (= lt!2483556 (getWitness!1075 lt!2483550 lambda!400062))))

(declare-datatypes ((List!67123 0))(
  ( (Nil!66999) (Cons!66999 (h!73447 Context!12376) (t!380870 List!67123)) )
))
(declare-fun lt!2483557 () List!67123)

(declare-fun exists!2964 (List!67123 Int) Bool)

(assert (=> b!6985025 (exists!2964 lt!2483557 lambda!400062)))

(declare-fun lt!2483547 () Unit!161039)

(declare-fun lemmaZipperMatchesExistsMatchingContext!161 (List!67123 List!67122) Unit!161039)

(assert (=> b!6985025 (= lt!2483547 (lemmaZipperMatchesExistsMatchingContext!161 lt!2483557 s!7408))))

(declare-fun toList!10552 ((Set Context!12376)) List!67123)

(assert (=> b!6985025 (= lt!2483557 (toList!10552 lt!2483550))))

(declare-fun b!6985026 () Bool)

(declare-fun res!2848333 () Bool)

(assert (=> b!6985026 (=> res!2848333 e!4198217)))

(declare-fun isEmpty!39107 (List!67121) Bool)

(assert (=> b!6985026 (= res!2848333 (isEmpty!39107 (exprs!6688 lt!2483566)))))

(assert (= (and start!670750 res!2848334) b!6985014))

(assert (= (and b!6985014 res!2848338) b!6985025))

(assert (= (and b!6985025 (not res!2848337)) b!6985023))

(assert (= (and b!6985023 (not res!2848330)) b!6985024))

(assert (= (and b!6985024 (not res!2848329)) b!6985019))

(assert (= (and b!6985019 (not res!2848341)) b!6985017))

(assert (= (and b!6985017 (not res!2848328)) b!6985010))

(assert (= (and b!6985010 (not res!2848336)) b!6985026))

(assert (= (and b!6985026 (not res!2848333)) b!6985018))

(assert (= (and b!6985018 (not res!2848340)) b!6985012))

(assert (= (and b!6985012 (not res!2848331)) b!6985016))

(assert (= (and b!6985016 (not res!2848335)) b!6985021))

(assert (= (and b!6985016 res!2848327) b!6985020))

(assert (= (and b!6985016 (not res!2848332)) b!6985013))

(assert (= (and b!6985013 (not res!2848339)) b!6985015))

(assert (= (and start!670750 condSetEmpty!47658) setIsEmpty!47658))

(assert (= (and start!670750 (not condSetEmpty!47658)) setNonEmpty!47658))

(assert (= setNonEmpty!47658 b!6985009))

(assert (= start!670750 b!6985022))

(assert (= (and start!670750 (is-Cons!66998 s!7408)) b!6985011))

(declare-fun m!7672404 () Bool)

(assert (=> b!6985015 m!7672404))

(declare-fun m!7672406 () Bool)

(assert (=> b!6985016 m!7672406))

(declare-fun m!7672408 () Bool)

(assert (=> b!6985016 m!7672408))

(declare-fun m!7672410 () Bool)

(assert (=> b!6985016 m!7672410))

(declare-fun m!7672412 () Bool)

(assert (=> b!6985016 m!7672412))

(assert (=> b!6985016 m!7672412))

(assert (=> b!6985016 m!7672412))

(declare-fun m!7672414 () Bool)

(assert (=> b!6985016 m!7672414))

(declare-fun m!7672416 () Bool)

(assert (=> b!6985020 m!7672416))

(assert (=> b!6985020 m!7672412))

(assert (=> b!6985021 m!7672416))

(declare-fun m!7672418 () Bool)

(assert (=> b!6985012 m!7672418))

(declare-fun m!7672420 () Bool)

(assert (=> b!6985012 m!7672420))

(assert (=> b!6985012 m!7672412))

(declare-fun m!7672422 () Bool)

(assert (=> b!6985012 m!7672422))

(assert (=> b!6985012 m!7672412))

(declare-fun m!7672424 () Bool)

(assert (=> b!6985025 m!7672424))

(declare-fun m!7672426 () Bool)

(assert (=> b!6985025 m!7672426))

(declare-fun m!7672428 () Bool)

(assert (=> b!6985025 m!7672428))

(declare-fun m!7672430 () Bool)

(assert (=> b!6985025 m!7672430))

(declare-fun m!7672432 () Bool)

(assert (=> b!6985025 m!7672432))

(declare-fun m!7672434 () Bool)

(assert (=> b!6985025 m!7672434))

(declare-fun m!7672436 () Bool)

(assert (=> b!6985023 m!7672436))

(declare-fun m!7672438 () Bool)

(assert (=> start!670750 m!7672438))

(declare-fun m!7672440 () Bool)

(assert (=> start!670750 m!7672440))

(declare-fun m!7672442 () Bool)

(assert (=> start!670750 m!7672442))

(declare-fun m!7672444 () Bool)

(assert (=> b!6985026 m!7672444))

(declare-fun m!7672446 () Bool)

(assert (=> setNonEmpty!47658 m!7672446))

(declare-fun m!7672448 () Bool)

(assert (=> b!6985019 m!7672448))

(declare-fun m!7672450 () Bool)

(assert (=> b!6985019 m!7672450))

(declare-fun m!7672452 () Bool)

(assert (=> b!6985018 m!7672452))

(declare-fun m!7672454 () Bool)

(assert (=> b!6985018 m!7672454))

(declare-fun m!7672456 () Bool)

(assert (=> b!6985024 m!7672456))

(declare-fun m!7672458 () Bool)

(assert (=> b!6985024 m!7672458))

(assert (=> b!6985024 m!7672450))

(declare-fun m!7672460 () Bool)

(assert (=> b!6985024 m!7672460))

(declare-fun m!7672462 () Bool)

(assert (=> b!6985017 m!7672462))

(declare-fun m!7672464 () Bool)

(assert (=> b!6985017 m!7672464))

(declare-fun m!7672466 () Bool)

(assert (=> b!6985017 m!7672466))

(declare-fun m!7672468 () Bool)

(assert (=> b!6985017 m!7672468))

(assert (=> b!6985017 m!7672450))

(push 1)

(assert (not b!6985019))

(assert (not b!6985020))

(assert (not b!6985009))

(assert (not b!6985024))

(assert (not b!6985026))

(assert (not start!670750))

(assert (not b!6985011))

(assert (not b!6985012))

(assert (not b!6985016))

(assert (not b!6985025))

(assert tp_is_empty!43609)

(assert (not setNonEmpty!47658))

(assert (not b!6985018))

(assert (not b!6985015))

(assert (not b!6985021))

(assert (not b!6985022))

(assert (not b!6985017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2175664 () Bool)

(declare-fun c!1295210 () Bool)

(declare-fun isEmpty!39109 (List!67122) Bool)

(assert (=> d!2175664 (= c!1295210 (isEmpty!39109 (t!380869 s!7408)))))

(declare-fun e!4198261 () Bool)

(assert (=> d!2175664 (= (matchZipper!2732 lt!2483564 (t!380869 s!7408)) e!4198261)))

(declare-fun b!6985097 () Bool)

(declare-fun nullableZipper!2418 ((Set Context!12376)) Bool)

(assert (=> b!6985097 (= e!4198261 (nullableZipper!2418 lt!2483564))))

(declare-fun b!6985098 () Bool)

(declare-fun head!14093 (List!67122) C!34654)

(declare-fun tail!13185 (List!67122) List!67122)

(assert (=> b!6985098 (= e!4198261 (matchZipper!2732 (derivationStepZipper!2672 lt!2483564 (head!14093 (t!380869 s!7408))) (tail!13185 (t!380869 s!7408))))))

(assert (= (and d!2175664 c!1295210) b!6985097))

(assert (= (and d!2175664 (not c!1295210)) b!6985098))

(declare-fun m!7672536 () Bool)

(assert (=> d!2175664 m!7672536))

(declare-fun m!7672538 () Bool)

(assert (=> b!6985097 m!7672538))

(declare-fun m!7672540 () Bool)

(assert (=> b!6985098 m!7672540))

(assert (=> b!6985098 m!7672540))

(declare-fun m!7672542 () Bool)

(assert (=> b!6985098 m!7672542))

(declare-fun m!7672544 () Bool)

(assert (=> b!6985098 m!7672544))

(assert (=> b!6985098 m!7672542))

(assert (=> b!6985098 m!7672544))

(declare-fun m!7672546 () Bool)

(assert (=> b!6985098 m!7672546))

(assert (=> b!6985020 d!2175664))

(declare-fun d!2175666 () Bool)

(assert (=> d!2175666 (forall!16094 (++!15137 lt!2483560 (exprs!6688 ct2!306)) lambda!400064)))

(declare-fun lt!2483657 () Unit!161039)

(declare-fun choose!52139 (List!67121 List!67121 Int) Unit!161039)

(assert (=> d!2175666 (= lt!2483657 (choose!52139 lt!2483560 (exprs!6688 ct2!306) lambda!400064))))

(assert (=> d!2175666 (forall!16094 lt!2483560 lambda!400064)))

(assert (=> d!2175666 (= (lemmaConcatPreservesForall!528 lt!2483560 (exprs!6688 ct2!306) lambda!400064) lt!2483657)))

(declare-fun bs!1861575 () Bool)

(assert (= bs!1861575 d!2175666))

(assert (=> bs!1861575 m!7672418))

(assert (=> bs!1861575 m!7672418))

(declare-fun m!7672548 () Bool)

(assert (=> bs!1861575 m!7672548))

(declare-fun m!7672550 () Bool)

(assert (=> bs!1861575 m!7672550))

(assert (=> bs!1861575 m!7672404))

(assert (=> b!6985020 d!2175666))

(declare-fun d!2175668 () Bool)

(declare-fun c!1295211 () Bool)

(assert (=> d!2175668 (= c!1295211 (isEmpty!39109 s!7408))))

(declare-fun e!4198262 () Bool)

(assert (=> d!2175668 (= (matchZipper!2732 lt!2483550 s!7408) e!4198262)))

(declare-fun b!6985099 () Bool)

(assert (=> b!6985099 (= e!4198262 (nullableZipper!2418 lt!2483550))))

(declare-fun b!6985100 () Bool)

(assert (=> b!6985100 (= e!4198262 (matchZipper!2732 (derivationStepZipper!2672 lt!2483550 (head!14093 s!7408)) (tail!13185 s!7408)))))

(assert (= (and d!2175668 c!1295211) b!6985099))

(assert (= (and d!2175668 (not c!1295211)) b!6985100))

(declare-fun m!7672552 () Bool)

(assert (=> d!2175668 m!7672552))

(declare-fun m!7672554 () Bool)

(assert (=> b!6985099 m!7672554))

(declare-fun m!7672556 () Bool)

(assert (=> b!6985100 m!7672556))

(assert (=> b!6985100 m!7672556))

(declare-fun m!7672558 () Bool)

(assert (=> b!6985100 m!7672558))

(declare-fun m!7672560 () Bool)

(assert (=> b!6985100 m!7672560))

(assert (=> b!6985100 m!7672558))

(assert (=> b!6985100 m!7672560))

(declare-fun m!7672562 () Bool)

(assert (=> b!6985100 m!7672562))

(assert (=> start!670750 d!2175668))

(declare-fun bs!1861576 () Bool)

(declare-fun d!2175670 () Bool)

(assert (= bs!1861576 (and d!2175670 b!6985024)))

(declare-fun lambda!400104 () Int)

(assert (=> bs!1861576 (= lambda!400104 lambda!400063)))

(assert (=> d!2175670 true))

(declare-fun map!15450 ((Set Context!12376) Int) (Set Context!12376))

(assert (=> d!2175670 (= (appendTo!313 z1!570 ct2!306) (map!15450 z1!570 lambda!400104))))

(declare-fun bs!1861577 () Bool)

(assert (= bs!1861577 d!2175670))

(declare-fun m!7672564 () Bool)

(assert (=> bs!1861577 m!7672564))

(assert (=> start!670750 d!2175670))

(declare-fun bs!1861578 () Bool)

(declare-fun d!2175672 () Bool)

(assert (= bs!1861578 (and d!2175672 b!6985024)))

(declare-fun lambda!400107 () Int)

(assert (=> bs!1861578 (= lambda!400107 lambda!400064)))

(assert (=> d!2175672 (= (inv!85840 ct2!306) (forall!16094 (exprs!6688 ct2!306) lambda!400107))))

(declare-fun bs!1861579 () Bool)

(assert (= bs!1861579 d!2175672))

(declare-fun m!7672566 () Bool)

(assert (=> bs!1861579 m!7672566))

(assert (=> start!670750 d!2175672))

(declare-fun d!2175674 () Bool)

(assert (=> d!2175674 (forall!16094 (++!15137 (exprs!6688 lt!2483566) (exprs!6688 ct2!306)) lambda!400064)))

(declare-fun lt!2483660 () Unit!161039)

(assert (=> d!2175674 (= lt!2483660 (choose!52139 (exprs!6688 lt!2483566) (exprs!6688 ct2!306) lambda!400064))))

(assert (=> d!2175674 (forall!16094 (exprs!6688 lt!2483566) lambda!400064)))

(assert (=> d!2175674 (= (lemmaConcatPreservesForall!528 (exprs!6688 lt!2483566) (exprs!6688 ct2!306) lambda!400064) lt!2483660)))

(declare-fun bs!1861580 () Bool)

(assert (= bs!1861580 d!2175674))

(assert (=> bs!1861580 m!7672458))

(assert (=> bs!1861580 m!7672458))

(declare-fun m!7672568 () Bool)

(assert (=> bs!1861580 m!7672568))

(declare-fun m!7672570 () Bool)

(assert (=> bs!1861580 m!7672570))

(declare-fun m!7672572 () Bool)

(assert (=> bs!1861580 m!7672572))

(assert (=> b!6985019 d!2175674))

(assert (=> b!6985012 d!2175666))

(declare-fun b!6985111 () Bool)

(declare-fun e!4198271 () Bool)

(assert (=> b!6985111 (= e!4198271 (nullable!6952 (h!73445 (exprs!6688 lt!2483562))))))

(declare-fun bm!634025 () Bool)

(declare-fun call!634030 () (Set Context!12376))

(assert (=> bm!634025 (= call!634030 (derivationStepZipperDown!1910 (h!73445 (exprs!6688 lt!2483562)) (Context!12377 (t!380868 (exprs!6688 lt!2483562))) (h!73446 s!7408)))))

(declare-fun b!6985112 () Bool)

(declare-fun e!4198269 () (Set Context!12376))

(assert (=> b!6985112 (= e!4198269 call!634030)))

(declare-fun b!6985114 () Bool)

(assert (=> b!6985114 (= e!4198269 (as set.empty (Set Context!12376)))))

(declare-fun b!6985115 () Bool)

(declare-fun e!4198270 () (Set Context!12376))

(assert (=> b!6985115 (= e!4198270 e!4198269)))

(declare-fun c!1295218 () Bool)

(assert (=> b!6985115 (= c!1295218 (is-Cons!66997 (exprs!6688 lt!2483562)))))

(declare-fun b!6985113 () Bool)

(assert (=> b!6985113 (= e!4198270 (set.union call!634030 (derivationStepZipperUp!1842 (Context!12377 (t!380868 (exprs!6688 lt!2483562))) (h!73446 s!7408))))))

(declare-fun d!2175676 () Bool)

(declare-fun c!1295217 () Bool)

(assert (=> d!2175676 (= c!1295217 e!4198271)))

(declare-fun res!2848391 () Bool)

(assert (=> d!2175676 (=> (not res!2848391) (not e!4198271))))

(assert (=> d!2175676 (= res!2848391 (is-Cons!66997 (exprs!6688 lt!2483562)))))

(assert (=> d!2175676 (= (derivationStepZipperUp!1842 lt!2483562 (h!73446 s!7408)) e!4198270)))

(assert (= (and d!2175676 res!2848391) b!6985111))

(assert (= (and d!2175676 c!1295217) b!6985113))

(assert (= (and d!2175676 (not c!1295217)) b!6985115))

(assert (= (and b!6985115 c!1295218) b!6985112))

(assert (= (and b!6985115 (not c!1295218)) b!6985114))

(assert (= (or b!6985113 b!6985112) bm!634025))

(declare-fun m!7672574 () Bool)

(assert (=> b!6985111 m!7672574))

(declare-fun m!7672576 () Bool)

(assert (=> bm!634025 m!7672576))

(declare-fun m!7672578 () Bool)

(assert (=> b!6985113 m!7672578))

(assert (=> b!6985012 d!2175676))

(declare-fun b!6985125 () Bool)

(declare-fun e!4198276 () List!67121)

(assert (=> b!6985125 (= e!4198276 (Cons!66997 (h!73445 lt!2483560) (++!15137 (t!380868 lt!2483560) (exprs!6688 ct2!306))))))

(declare-fun d!2175678 () Bool)

(declare-fun e!4198277 () Bool)

(assert (=> d!2175678 e!4198277))

(declare-fun res!2848397 () Bool)

(assert (=> d!2175678 (=> (not res!2848397) (not e!4198277))))

(declare-fun lt!2483663 () List!67121)

(declare-fun content!13228 (List!67121) (Set Regex!17192))

(assert (=> d!2175678 (= res!2848397 (= (content!13228 lt!2483663) (set.union (content!13228 lt!2483560) (content!13228 (exprs!6688 ct2!306)))))))

(assert (=> d!2175678 (= lt!2483663 e!4198276)))

(declare-fun c!1295221 () Bool)

(assert (=> d!2175678 (= c!1295221 (is-Nil!66997 lt!2483560))))

(assert (=> d!2175678 (= (++!15137 lt!2483560 (exprs!6688 ct2!306)) lt!2483663)))

(declare-fun b!6985124 () Bool)

(assert (=> b!6985124 (= e!4198276 (exprs!6688 ct2!306))))

(declare-fun b!6985127 () Bool)

(assert (=> b!6985127 (= e!4198277 (or (not (= (exprs!6688 ct2!306) Nil!66997)) (= lt!2483663 lt!2483560)))))

(declare-fun b!6985126 () Bool)

(declare-fun res!2848396 () Bool)

(assert (=> b!6985126 (=> (not res!2848396) (not e!4198277))))

(declare-fun size!40889 (List!67121) Int)

(assert (=> b!6985126 (= res!2848396 (= (size!40889 lt!2483663) (+ (size!40889 lt!2483560) (size!40889 (exprs!6688 ct2!306)))))))

(assert (= (and d!2175678 c!1295221) b!6985124))

(assert (= (and d!2175678 (not c!1295221)) b!6985125))

(assert (= (and d!2175678 res!2848397) b!6985126))

(assert (= (and b!6985126 res!2848396) b!6985127))

(declare-fun m!7672580 () Bool)

(assert (=> b!6985125 m!7672580))

(declare-fun m!7672582 () Bool)

(assert (=> d!2175678 m!7672582))

(declare-fun m!7672584 () Bool)

(assert (=> d!2175678 m!7672584))

(declare-fun m!7672586 () Bool)

(assert (=> d!2175678 m!7672586))

(declare-fun m!7672588 () Bool)

(assert (=> b!6985126 m!7672588))

(declare-fun m!7672590 () Bool)

(assert (=> b!6985126 m!7672590))

(declare-fun m!7672592 () Bool)

(assert (=> b!6985126 m!7672592))

(assert (=> b!6985012 d!2175678))

(declare-fun b!6985153 () Bool)

(declare-fun e!4198295 () (Set Context!12376))

(declare-fun call!634044 () (Set Context!12376))

(declare-fun call!634046 () (Set Context!12376))

(assert (=> b!6985153 (= e!4198295 (set.union call!634044 call!634046))))

(declare-fun b!6985154 () Bool)

(declare-fun e!4198296 () Bool)

(assert (=> b!6985154 (= e!4198296 (nullable!6952 (regOne!34896 (h!73445 (exprs!6688 lt!2483566)))))))

(declare-fun b!6985155 () Bool)

(declare-fun e!4198294 () (Set Context!12376))

(assert (=> b!6985155 (= e!4198295 e!4198294)))

(declare-fun c!1295233 () Bool)

(assert (=> b!6985155 (= c!1295233 (is-Concat!26037 (h!73445 (exprs!6688 lt!2483566))))))

(declare-fun d!2175682 () Bool)

(declare-fun c!1295232 () Bool)

(assert (=> d!2175682 (= c!1295232 (and (is-ElementMatch!17192 (h!73445 (exprs!6688 lt!2483566))) (= (c!1295198 (h!73445 (exprs!6688 lt!2483566))) (h!73446 s!7408))))))

(declare-fun e!4198293 () (Set Context!12376))

(assert (=> d!2175682 (= (derivationStepZipperDown!1910 (h!73445 (exprs!6688 lt!2483566)) lt!2483562 (h!73446 s!7408)) e!4198293)))

(declare-fun c!1295235 () Bool)

(declare-fun call!634045 () List!67121)

(declare-fun bm!634038 () Bool)

(assert (=> bm!634038 (= call!634044 (derivationStepZipperDown!1910 (ite c!1295235 (regOne!34897 (h!73445 (exprs!6688 lt!2483566))) (regOne!34896 (h!73445 (exprs!6688 lt!2483566)))) (ite c!1295235 lt!2483562 (Context!12377 call!634045)) (h!73446 s!7408)))))

(declare-fun b!6985156 () Bool)

(declare-fun e!4198297 () (Set Context!12376))

(declare-fun call!634043 () (Set Context!12376))

(assert (=> b!6985156 (= e!4198297 (set.union call!634044 call!634043))))

(declare-fun b!6985157 () Bool)

(declare-fun e!4198298 () (Set Context!12376))

(declare-fun call!634047 () (Set Context!12376))

(assert (=> b!6985157 (= e!4198298 call!634047)))

(declare-fun b!6985158 () Bool)

(assert (=> b!6985158 (= e!4198293 (set.insert lt!2483562 (as set.empty (Set Context!12376))))))

(declare-fun c!1295234 () Bool)

(declare-fun call!634048 () List!67121)

(declare-fun bm!634039 () Bool)

(assert (=> bm!634039 (= call!634043 (derivationStepZipperDown!1910 (ite c!1295235 (regTwo!34897 (h!73445 (exprs!6688 lt!2483566))) (ite c!1295234 (regTwo!34896 (h!73445 (exprs!6688 lt!2483566))) (ite c!1295233 (regOne!34896 (h!73445 (exprs!6688 lt!2483566))) (reg!17521 (h!73445 (exprs!6688 lt!2483566)))))) (ite (or c!1295235 c!1295234) lt!2483562 (Context!12377 call!634048)) (h!73446 s!7408)))))

(declare-fun b!6985159 () Bool)

(assert (=> b!6985159 (= e!4198293 e!4198297)))

(assert (=> b!6985159 (= c!1295235 (is-Union!17192 (h!73445 (exprs!6688 lt!2483566))))))

(declare-fun bm!634040 () Bool)

(declare-fun $colon$colon!2469 (List!67121 Regex!17192) List!67121)

(assert (=> bm!634040 (= call!634045 ($colon$colon!2469 (exprs!6688 lt!2483562) (ite (or c!1295234 c!1295233) (regTwo!34896 (h!73445 (exprs!6688 lt!2483566))) (h!73445 (exprs!6688 lt!2483566)))))))

(declare-fun bm!634041 () Bool)

(assert (=> bm!634041 (= call!634047 call!634046)))

(declare-fun b!6985160 () Bool)

(assert (=> b!6985160 (= c!1295234 e!4198296)))

(declare-fun res!2848403 () Bool)

(assert (=> b!6985160 (=> (not res!2848403) (not e!4198296))))

(assert (=> b!6985160 (= res!2848403 (is-Concat!26037 (h!73445 (exprs!6688 lt!2483566))))))

(assert (=> b!6985160 (= e!4198297 e!4198295)))

(declare-fun bm!634042 () Bool)

(assert (=> bm!634042 (= call!634046 call!634043)))

(declare-fun b!6985161 () Bool)

(assert (=> b!6985161 (= e!4198294 call!634047)))

(declare-fun b!6985162 () Bool)

(assert (=> b!6985162 (= e!4198298 (as set.empty (Set Context!12376)))))

(declare-fun bm!634043 () Bool)

(assert (=> bm!634043 (= call!634048 call!634045)))

(declare-fun b!6985163 () Bool)

(declare-fun c!1295236 () Bool)

(assert (=> b!6985163 (= c!1295236 (is-Star!17192 (h!73445 (exprs!6688 lt!2483566))))))

(assert (=> b!6985163 (= e!4198294 e!4198298)))

(assert (= (and d!2175682 c!1295232) b!6985158))

(assert (= (and d!2175682 (not c!1295232)) b!6985159))

(assert (= (and b!6985159 c!1295235) b!6985156))

(assert (= (and b!6985159 (not c!1295235)) b!6985160))

(assert (= (and b!6985160 res!2848403) b!6985154))

(assert (= (and b!6985160 c!1295234) b!6985153))

(assert (= (and b!6985160 (not c!1295234)) b!6985155))

(assert (= (and b!6985155 c!1295233) b!6985161))

(assert (= (and b!6985155 (not c!1295233)) b!6985163))

(assert (= (and b!6985163 c!1295236) b!6985157))

(assert (= (and b!6985163 (not c!1295236)) b!6985162))

(assert (= (or b!6985161 b!6985157) bm!634043))

(assert (= (or b!6985161 b!6985157) bm!634041))

(assert (= (or b!6985153 bm!634041) bm!634042))

(assert (= (or b!6985153 bm!634043) bm!634040))

(assert (= (or b!6985156 b!6985153) bm!634038))

(assert (= (or b!6985156 bm!634042) bm!634039))

(declare-fun m!7672602 () Bool)

(assert (=> bm!634039 m!7672602))

(declare-fun m!7672604 () Bool)

(assert (=> bm!634040 m!7672604))

(declare-fun m!7672606 () Bool)

(assert (=> bm!634038 m!7672606))

(declare-fun m!7672608 () Bool)

(assert (=> b!6985158 m!7672608))

(declare-fun m!7672610 () Bool)

(assert (=> b!6985154 m!7672610))

(assert (=> b!6985012 d!2175682))

(assert (=> b!6985021 d!2175664))

(declare-fun bs!1861581 () Bool)

(declare-fun d!2175686 () Bool)

(assert (= bs!1861581 (and d!2175686 b!6985024)))

(declare-fun lambda!400108 () Int)

(assert (=> bs!1861581 (= lambda!400108 lambda!400064)))

(declare-fun bs!1861582 () Bool)

(assert (= bs!1861582 (and d!2175686 d!2175672)))

(assert (=> bs!1861582 (= lambda!400108 lambda!400107)))

(assert (=> d!2175686 (= (inv!85840 setElem!47658) (forall!16094 (exprs!6688 setElem!47658) lambda!400108))))

(declare-fun bs!1861583 () Bool)

(assert (= bs!1861583 d!2175686))

(declare-fun m!7672612 () Bool)

(assert (=> bs!1861583 m!7672612))

(assert (=> setNonEmpty!47658 d!2175686))

(declare-fun d!2175688 () Bool)

(declare-fun res!2848408 () Bool)

(declare-fun e!4198303 () Bool)

(assert (=> d!2175688 (=> res!2848408 e!4198303)))

(assert (=> d!2175688 (= res!2848408 (is-Nil!66997 lt!2483560))))

(assert (=> d!2175688 (= (forall!16094 lt!2483560 lambda!400064) e!4198303)))

(declare-fun b!6985168 () Bool)

(declare-fun e!4198304 () Bool)

(assert (=> b!6985168 (= e!4198303 e!4198304)))

(declare-fun res!2848409 () Bool)

(assert (=> b!6985168 (=> (not res!2848409) (not e!4198304))))

(declare-fun dynLambda!26822 (Int Regex!17192) Bool)

(assert (=> b!6985168 (= res!2848409 (dynLambda!26822 lambda!400064 (h!73445 lt!2483560)))))

(declare-fun b!6985169 () Bool)

(assert (=> b!6985169 (= e!4198304 (forall!16094 (t!380868 lt!2483560) lambda!400064))))

(assert (= (and d!2175688 (not res!2848408)) b!6985168))

(assert (= (and b!6985168 res!2848409) b!6985169))

(declare-fun b_lambda!262129 () Bool)

(assert (=> (not b_lambda!262129) (not b!6985168)))

(declare-fun m!7672614 () Bool)

(assert (=> b!6985168 m!7672614))

(declare-fun m!7672616 () Bool)

(assert (=> b!6985169 m!7672616))

(assert (=> b!6985015 d!2175688))

(declare-fun b!6985171 () Bool)

(declare-fun e!4198305 () List!67121)

(assert (=> b!6985171 (= e!4198305 (Cons!66997 (h!73445 (exprs!6688 lt!2483566)) (++!15137 (t!380868 (exprs!6688 lt!2483566)) (exprs!6688 ct2!306))))))

(declare-fun d!2175690 () Bool)

(declare-fun e!4198306 () Bool)

(assert (=> d!2175690 e!4198306))

(declare-fun res!2848411 () Bool)

(assert (=> d!2175690 (=> (not res!2848411) (not e!4198306))))

(declare-fun lt!2483667 () List!67121)

(assert (=> d!2175690 (= res!2848411 (= (content!13228 lt!2483667) (set.union (content!13228 (exprs!6688 lt!2483566)) (content!13228 (exprs!6688 ct2!306)))))))

(assert (=> d!2175690 (= lt!2483667 e!4198305)))

(declare-fun c!1295237 () Bool)

(assert (=> d!2175690 (= c!1295237 (is-Nil!66997 (exprs!6688 lt!2483566)))))

(assert (=> d!2175690 (= (++!15137 (exprs!6688 lt!2483566) (exprs!6688 ct2!306)) lt!2483667)))

(declare-fun b!6985170 () Bool)

(assert (=> b!6985170 (= e!4198305 (exprs!6688 ct2!306))))

(declare-fun b!6985173 () Bool)

(assert (=> b!6985173 (= e!4198306 (or (not (= (exprs!6688 ct2!306) Nil!66997)) (= lt!2483667 (exprs!6688 lt!2483566))))))

(declare-fun b!6985172 () Bool)

(declare-fun res!2848410 () Bool)

(assert (=> b!6985172 (=> (not res!2848410) (not e!4198306))))

(assert (=> b!6985172 (= res!2848410 (= (size!40889 lt!2483667) (+ (size!40889 (exprs!6688 lt!2483566)) (size!40889 (exprs!6688 ct2!306)))))))

(assert (= (and d!2175690 c!1295237) b!6985170))

(assert (= (and d!2175690 (not c!1295237)) b!6985171))

(assert (= (and d!2175690 res!2848411) b!6985172))

(assert (= (and b!6985172 res!2848410) b!6985173))

(declare-fun m!7672618 () Bool)

(assert (=> b!6985171 m!7672618))

(declare-fun m!7672620 () Bool)

(assert (=> d!2175690 m!7672620))

(declare-fun m!7672622 () Bool)

(assert (=> d!2175690 m!7672622))

(assert (=> d!2175690 m!7672586))

(declare-fun m!7672624 () Bool)

(assert (=> b!6985172 m!7672624))

(declare-fun m!7672626 () Bool)

(assert (=> b!6985172 m!7672626))

(assert (=> b!6985172 m!7672592))

(assert (=> b!6985024 d!2175690))

(assert (=> b!6985024 d!2175674))

(declare-fun d!2175692 () Bool)

(declare-fun e!4198309 () Bool)

(assert (=> d!2175692 e!4198309))

(declare-fun res!2848414 () Bool)

(assert (=> d!2175692 (=> (not res!2848414) (not e!4198309))))

(declare-fun lt!2483672 () Context!12376)

(declare-fun dynLambda!26823 (Int Context!12376) Context!12376)

(assert (=> d!2175692 (= res!2848414 (= lt!2483556 (dynLambda!26823 lambda!400063 lt!2483672)))))

(declare-fun choose!52140 ((Set Context!12376) Int Context!12376) Context!12376)

(assert (=> d!2175692 (= lt!2483672 (choose!52140 z1!570 lambda!400063 lt!2483556))))

(assert (=> d!2175692 (set.member lt!2483556 (map!15450 z1!570 lambda!400063))))

(assert (=> d!2175692 (= (mapPost2!47 z1!570 lambda!400063 lt!2483556) lt!2483672)))

(declare-fun b!6985177 () Bool)

(assert (=> b!6985177 (= e!4198309 (set.member lt!2483672 z1!570))))

(assert (= (and d!2175692 res!2848414) b!6985177))

(declare-fun b_lambda!262131 () Bool)

(assert (=> (not b_lambda!262131) (not d!2175692)))

(declare-fun m!7672628 () Bool)

(assert (=> d!2175692 m!7672628))

(declare-fun m!7672630 () Bool)

(assert (=> d!2175692 m!7672630))

(declare-fun m!7672632 () Bool)

(assert (=> d!2175692 m!7672632))

(declare-fun m!7672634 () Bool)

(assert (=> d!2175692 m!7672634))

(declare-fun m!7672636 () Bool)

(assert (=> b!6985177 m!7672636))

(assert (=> b!6985024 d!2175692))

(declare-fun d!2175694 () Bool)

(declare-fun dynLambda!26824 (Int Context!12376) (Set Context!12376))

(assert (=> d!2175694 (= (flatMap!2178 lt!2483563 lambda!400065) (dynLambda!26824 lambda!400065 lt!2483567))))

(declare-fun lt!2483676 () Unit!161039)

(declare-fun choose!52141 ((Set Context!12376) Context!12376 Int) Unit!161039)

(assert (=> d!2175694 (= lt!2483676 (choose!52141 lt!2483563 lt!2483567 lambda!400065))))

(assert (=> d!2175694 (= lt!2483563 (set.insert lt!2483567 (as set.empty (Set Context!12376))))))

(assert (=> d!2175694 (= (lemmaFlatMapOnSingletonSet!1693 lt!2483563 lt!2483567 lambda!400065) lt!2483676)))

(declare-fun b_lambda!262133 () Bool)

(assert (=> (not b_lambda!262133) (not d!2175694)))

(declare-fun bs!1861586 () Bool)

(assert (= bs!1861586 d!2175694))

(assert (=> bs!1861586 m!7672466))

(declare-fun m!7672646 () Bool)

(assert (=> bs!1861586 m!7672646))

(declare-fun m!7672648 () Bool)

(assert (=> bs!1861586 m!7672648))

(assert (=> bs!1861586 m!7672448))

(assert (=> b!6985017 d!2175694))

(declare-fun bs!1861587 () Bool)

(declare-fun d!2175698 () Bool)

(assert (= bs!1861587 (and d!2175698 b!6985017)))

(declare-fun lambda!400116 () Int)

(assert (=> bs!1861587 (= lambda!400116 lambda!400065)))

(assert (=> d!2175698 true))

(assert (=> d!2175698 (= (derivationStepZipper!2672 lt!2483563 (h!73446 s!7408)) (flatMap!2178 lt!2483563 lambda!400116))))

(declare-fun bs!1861588 () Bool)

(assert (= bs!1861588 d!2175698))

(declare-fun m!7672650 () Bool)

(assert (=> bs!1861588 m!7672650))

(assert (=> b!6985017 d!2175698))

(assert (=> b!6985017 d!2175674))

(declare-fun d!2175700 () Bool)

(declare-fun choose!52142 ((Set Context!12376) Int) (Set Context!12376))

(assert (=> d!2175700 (= (flatMap!2178 lt!2483563 lambda!400065) (choose!52142 lt!2483563 lambda!400065))))

(declare-fun bs!1861589 () Bool)

(assert (= bs!1861589 d!2175700))

(declare-fun m!7672652 () Bool)

(assert (=> bs!1861589 m!7672652))

(assert (=> b!6985017 d!2175700))

(declare-fun b!6985182 () Bool)

(declare-fun e!4198312 () Bool)

(assert (=> b!6985182 (= e!4198312 (nullable!6952 (h!73445 (exprs!6688 lt!2483567))))))

(declare-fun bm!634044 () Bool)

(declare-fun call!634049 () (Set Context!12376))

(assert (=> bm!634044 (= call!634049 (derivationStepZipperDown!1910 (h!73445 (exprs!6688 lt!2483567)) (Context!12377 (t!380868 (exprs!6688 lt!2483567))) (h!73446 s!7408)))))

(declare-fun b!6985183 () Bool)

(declare-fun e!4198310 () (Set Context!12376))

(assert (=> b!6985183 (= e!4198310 call!634049)))

(declare-fun b!6985185 () Bool)

(assert (=> b!6985185 (= e!4198310 (as set.empty (Set Context!12376)))))

(declare-fun b!6985186 () Bool)

(declare-fun e!4198311 () (Set Context!12376))

(assert (=> b!6985186 (= e!4198311 e!4198310)))

(declare-fun c!1295243 () Bool)

(assert (=> b!6985186 (= c!1295243 (is-Cons!66997 (exprs!6688 lt!2483567)))))

(declare-fun b!6985184 () Bool)

(assert (=> b!6985184 (= e!4198311 (set.union call!634049 (derivationStepZipperUp!1842 (Context!12377 (t!380868 (exprs!6688 lt!2483567))) (h!73446 s!7408))))))

(declare-fun d!2175702 () Bool)

(declare-fun c!1295242 () Bool)

(assert (=> d!2175702 (= c!1295242 e!4198312)))

(declare-fun res!2848415 () Bool)

(assert (=> d!2175702 (=> (not res!2848415) (not e!4198312))))

(assert (=> d!2175702 (= res!2848415 (is-Cons!66997 (exprs!6688 lt!2483567)))))

(assert (=> d!2175702 (= (derivationStepZipperUp!1842 lt!2483567 (h!73446 s!7408)) e!4198311)))

(assert (= (and d!2175702 res!2848415) b!6985182))

(assert (= (and d!2175702 c!1295242) b!6985184))

(assert (= (and d!2175702 (not c!1295242)) b!6985186))

(assert (= (and b!6985186 c!1295243) b!6985183))

(assert (= (and b!6985186 (not c!1295243)) b!6985185))

(assert (= (or b!6985184 b!6985183) bm!634044))

(declare-fun m!7672654 () Bool)

(assert (=> b!6985182 m!7672654))

(declare-fun m!7672656 () Bool)

(assert (=> bm!634044 m!7672656))

(declare-fun m!7672658 () Bool)

(assert (=> b!6985184 m!7672658))

(assert (=> b!6985017 d!2175702))

(declare-fun d!2175704 () Bool)

(assert (=> d!2175704 (= (isEmpty!39107 (exprs!6688 lt!2483566)) (is-Nil!66997 (exprs!6688 lt!2483566)))))

(assert (=> b!6985026 d!2175704))

(declare-fun d!2175706 () Bool)

(declare-fun nullableFct!2621 (Regex!17192) Bool)

(assert (=> d!2175706 (= (nullable!6952 (h!73445 (exprs!6688 lt!2483566))) (nullableFct!2621 (h!73445 (exprs!6688 lt!2483566))))))

(declare-fun bs!1861593 () Bool)

(assert (= bs!1861593 d!2175706))

(declare-fun m!7672662 () Bool)

(assert (=> bs!1861593 m!7672662))

(assert (=> b!6985018 d!2175706))

(declare-fun d!2175710 () Bool)

(assert (=> d!2175710 (= (tail!13183 (exprs!6688 lt!2483566)) (t!380868 (exprs!6688 lt!2483566)))))

(assert (=> b!6985018 d!2175710))

(declare-fun d!2175712 () Bool)

(declare-fun c!1295244 () Bool)

(assert (=> d!2175712 (= c!1295244 (isEmpty!39109 (t!380869 s!7408)))))

(declare-fun e!4198313 () Bool)

(assert (=> d!2175712 (= (matchZipper!2732 lt!2483551 (t!380869 s!7408)) e!4198313)))

(declare-fun b!6985187 () Bool)

(assert (=> b!6985187 (= e!4198313 (nullableZipper!2418 lt!2483551))))

(declare-fun b!6985188 () Bool)

(assert (=> b!6985188 (= e!4198313 (matchZipper!2732 (derivationStepZipper!2672 lt!2483551 (head!14093 (t!380869 s!7408))) (tail!13185 (t!380869 s!7408))))))

(assert (= (and d!2175712 c!1295244) b!6985187))

(assert (= (and d!2175712 (not c!1295244)) b!6985188))

(assert (=> d!2175712 m!7672536))

(declare-fun m!7672664 () Bool)

(assert (=> b!6985187 m!7672664))

(assert (=> b!6985188 m!7672540))

(assert (=> b!6985188 m!7672540))

(declare-fun m!7672666 () Bool)

(assert (=> b!6985188 m!7672666))

(assert (=> b!6985188 m!7672544))

(assert (=> b!6985188 m!7672666))

(assert (=> b!6985188 m!7672544))

(declare-fun m!7672668 () Bool)

(assert (=> b!6985188 m!7672668))

(assert (=> b!6985016 d!2175712))

(declare-fun d!2175714 () Bool)

(declare-fun e!4198316 () Bool)

(assert (=> d!2175714 (= (matchZipper!2732 (set.union lt!2483551 lt!2483564) (t!380869 s!7408)) e!4198316)))

(declare-fun res!2848418 () Bool)

(assert (=> d!2175714 (=> res!2848418 e!4198316)))

(assert (=> d!2175714 (= res!2848418 (matchZipper!2732 lt!2483551 (t!380869 s!7408)))))

(declare-fun lt!2483679 () Unit!161039)

(declare-fun choose!52143 ((Set Context!12376) (Set Context!12376) List!67122) Unit!161039)

(assert (=> d!2175714 (= lt!2483679 (choose!52143 lt!2483551 lt!2483564 (t!380869 s!7408)))))

(assert (=> d!2175714 (= (lemmaZipperConcatMatchesSameAsBothZippers!1365 lt!2483551 lt!2483564 (t!380869 s!7408)) lt!2483679)))

(declare-fun b!6985191 () Bool)

(assert (=> b!6985191 (= e!4198316 (matchZipper!2732 lt!2483564 (t!380869 s!7408)))))

(assert (= (and d!2175714 (not res!2848418)) b!6985191))

(declare-fun m!7672670 () Bool)

(assert (=> d!2175714 m!7672670))

(assert (=> d!2175714 m!7672414))

(declare-fun m!7672672 () Bool)

(assert (=> d!2175714 m!7672672))

(assert (=> b!6985191 m!7672416))

(assert (=> b!6985016 d!2175714))

(assert (=> b!6985016 d!2175666))

(declare-fun d!2175716 () Bool)

(declare-fun c!1295245 () Bool)

(assert (=> d!2175716 (= c!1295245 (isEmpty!39109 (t!380869 s!7408)))))

(declare-fun e!4198317 () Bool)

(assert (=> d!2175716 (= (matchZipper!2732 lt!2483561 (t!380869 s!7408)) e!4198317)))

(declare-fun b!6985194 () Bool)

(assert (=> b!6985194 (= e!4198317 (nullableZipper!2418 lt!2483561))))

(declare-fun b!6985195 () Bool)

(assert (=> b!6985195 (= e!4198317 (matchZipper!2732 (derivationStepZipper!2672 lt!2483561 (head!14093 (t!380869 s!7408))) (tail!13185 (t!380869 s!7408))))))

(assert (= (and d!2175716 c!1295245) b!6985194))

(assert (= (and d!2175716 (not c!1295245)) b!6985195))

(assert (=> d!2175716 m!7672536))

(declare-fun m!7672674 () Bool)

(assert (=> b!6985194 m!7672674))

(assert (=> b!6985195 m!7672540))

(assert (=> b!6985195 m!7672540))

(declare-fun m!7672676 () Bool)

(assert (=> b!6985195 m!7672676))

(assert (=> b!6985195 m!7672544))

(assert (=> b!6985195 m!7672676))

(assert (=> b!6985195 m!7672544))

(declare-fun m!7672678 () Bool)

(assert (=> b!6985195 m!7672678))

(assert (=> b!6985016 d!2175716))

(declare-fun d!2175718 () Bool)

(declare-fun c!1295248 () Bool)

(assert (=> d!2175718 (= c!1295248 (isEmpty!39109 (t!380869 s!7408)))))

(declare-fun e!4198320 () Bool)

(assert (=> d!2175718 (= (matchZipper!2732 lt!2483570 (t!380869 s!7408)) e!4198320)))

(declare-fun b!6985198 () Bool)

(assert (=> b!6985198 (= e!4198320 (nullableZipper!2418 lt!2483570))))

(declare-fun b!6985199 () Bool)

(assert (=> b!6985199 (= e!4198320 (matchZipper!2732 (derivationStepZipper!2672 lt!2483570 (head!14093 (t!380869 s!7408))) (tail!13185 (t!380869 s!7408))))))

(assert (= (and d!2175718 c!1295248) b!6985198))

(assert (= (and d!2175718 (not c!1295248)) b!6985199))

(assert (=> d!2175718 m!7672536))

(declare-fun m!7672680 () Bool)

(assert (=> b!6985198 m!7672680))

(assert (=> b!6985199 m!7672540))

(assert (=> b!6985199 m!7672540))

(declare-fun m!7672682 () Bool)

(assert (=> b!6985199 m!7672682))

(assert (=> b!6985199 m!7672544))

(assert (=> b!6985199 m!7672682))

(assert (=> b!6985199 m!7672544))

(declare-fun m!7672684 () Bool)

(assert (=> b!6985199 m!7672684))

(assert (=> b!6985016 d!2175718))

(declare-fun d!2175720 () Bool)

(declare-fun e!4198324 () Bool)

(assert (=> d!2175720 e!4198324))

(declare-fun res!2848421 () Bool)

(assert (=> d!2175720 (=> (not res!2848421) (not e!4198324))))

(declare-fun lt!2483682 () List!67123)

(declare-fun noDuplicate!2507 (List!67123) Bool)

(assert (=> d!2175720 (= res!2848421 (noDuplicate!2507 lt!2483682))))

(declare-fun choose!52144 ((Set Context!12376)) List!67123)

(assert (=> d!2175720 (= lt!2483682 (choose!52144 lt!2483550))))

(assert (=> d!2175720 (= (toList!10552 lt!2483550) lt!2483682)))

(declare-fun b!6985204 () Bool)

(declare-fun content!13229 (List!67123) (Set Context!12376))

(assert (=> b!6985204 (= e!4198324 (= (content!13229 lt!2483682) lt!2483550))))

(assert (= (and d!2175720 res!2848421) b!6985204))

(declare-fun m!7672686 () Bool)

(assert (=> d!2175720 m!7672686))

(declare-fun m!7672688 () Bool)

(assert (=> d!2175720 m!7672688))

(declare-fun m!7672692 () Bool)

(assert (=> b!6985204 m!7672692))

(assert (=> b!6985025 d!2175720))

(declare-fun d!2175722 () Bool)

(declare-fun e!4198329 () Bool)

(assert (=> d!2175722 e!4198329))

(declare-fun res!2848426 () Bool)

(assert (=> d!2175722 (=> (not res!2848426) (not e!4198329))))

(declare-fun lt!2483687 () Context!12376)

(declare-fun dynLambda!26825 (Int Context!12376) Bool)

(assert (=> d!2175722 (= res!2848426 (dynLambda!26825 lambda!400062 lt!2483687))))

(declare-fun getWitness!1077 (List!67123 Int) Context!12376)

(assert (=> d!2175722 (= lt!2483687 (getWitness!1077 (toList!10552 lt!2483550) lambda!400062))))

(declare-fun exists!2966 ((Set Context!12376) Int) Bool)

(assert (=> d!2175722 (exists!2966 lt!2483550 lambda!400062)))

(assert (=> d!2175722 (= (getWitness!1075 lt!2483550 lambda!400062) lt!2483687)))

(declare-fun b!6985209 () Bool)

(assert (=> b!6985209 (= e!4198329 (set.member lt!2483687 lt!2483550))))

(assert (= (and d!2175722 res!2848426) b!6985209))

(declare-fun b_lambda!262135 () Bool)

(assert (=> (not b_lambda!262135) (not d!2175722)))

(declare-fun m!7672704 () Bool)

(assert (=> d!2175722 m!7672704))

(assert (=> d!2175722 m!7672424))

(assert (=> d!2175722 m!7672424))

(declare-fun m!7672706 () Bool)

(assert (=> d!2175722 m!7672706))

(declare-fun m!7672708 () Bool)

(assert (=> d!2175722 m!7672708))

(declare-fun m!7672710 () Bool)

(assert (=> b!6985209 m!7672710))

(assert (=> b!6985025 d!2175722))

(declare-fun bs!1861594 () Bool)

(declare-fun d!2175726 () Bool)

(assert (= bs!1861594 (and d!2175726 b!6985025)))

(declare-fun lambda!400120 () Int)

(assert (=> bs!1861594 (= lambda!400120 lambda!400062)))

(assert (=> d!2175726 true))

(assert (=> d!2175726 (exists!2964 lt!2483557 lambda!400120)))

(declare-fun lt!2483691 () Unit!161039)

(declare-fun choose!52145 (List!67123 List!67122) Unit!161039)

(assert (=> d!2175726 (= lt!2483691 (choose!52145 lt!2483557 s!7408))))

(assert (=> d!2175726 (matchZipper!2732 (content!13229 lt!2483557) s!7408)))

(assert (=> d!2175726 (= (lemmaZipperMatchesExistsMatchingContext!161 lt!2483557 s!7408) lt!2483691)))

(declare-fun bs!1861595 () Bool)

(assert (= bs!1861595 d!2175726))

(declare-fun m!7672718 () Bool)

(assert (=> bs!1861595 m!7672718))

(declare-fun m!7672720 () Bool)

(assert (=> bs!1861595 m!7672720))

(declare-fun m!7672722 () Bool)

(assert (=> bs!1861595 m!7672722))

(assert (=> bs!1861595 m!7672722))

(declare-fun m!7672724 () Bool)

(assert (=> bs!1861595 m!7672724))

(assert (=> b!6985025 d!2175726))

(declare-fun d!2175730 () Bool)

(declare-fun c!1295252 () Bool)

(assert (=> d!2175730 (= c!1295252 (isEmpty!39109 s!7408))))

(declare-fun e!4198331 () Bool)

(assert (=> d!2175730 (= (matchZipper!2732 lt!2483565 s!7408) e!4198331)))

(declare-fun b!6985211 () Bool)

(assert (=> b!6985211 (= e!4198331 (nullableZipper!2418 lt!2483565))))

(declare-fun b!6985212 () Bool)

(assert (=> b!6985212 (= e!4198331 (matchZipper!2732 (derivationStepZipper!2672 lt!2483565 (head!14093 s!7408)) (tail!13185 s!7408)))))

(assert (= (and d!2175730 c!1295252) b!6985211))

(assert (= (and d!2175730 (not c!1295252)) b!6985212))

(assert (=> d!2175730 m!7672552))

(declare-fun m!7672726 () Bool)

(assert (=> b!6985211 m!7672726))

(assert (=> b!6985212 m!7672556))

(assert (=> b!6985212 m!7672556))

(declare-fun m!7672728 () Bool)

(assert (=> b!6985212 m!7672728))

(assert (=> b!6985212 m!7672560))

(assert (=> b!6985212 m!7672728))

(assert (=> b!6985212 m!7672560))

(declare-fun m!7672730 () Bool)

(assert (=> b!6985212 m!7672730))

(assert (=> b!6985025 d!2175730))

(declare-fun bs!1861597 () Bool)

(declare-fun d!2175732 () Bool)

(assert (= bs!1861597 (and d!2175732 b!6985025)))

(declare-fun lambda!400123 () Int)

(assert (=> bs!1861597 (not (= lambda!400123 lambda!400062))))

(declare-fun bs!1861598 () Bool)

(assert (= bs!1861598 (and d!2175732 d!2175726)))

(assert (=> bs!1861598 (not (= lambda!400123 lambda!400120))))

(assert (=> d!2175732 true))

(declare-fun order!27881 () Int)

(declare-fun dynLambda!26826 (Int Int) Int)

(assert (=> d!2175732 (< (dynLambda!26826 order!27881 lambda!400062) (dynLambda!26826 order!27881 lambda!400123))))

(declare-fun forall!16096 (List!67123 Int) Bool)

(assert (=> d!2175732 (= (exists!2964 lt!2483557 lambda!400062) (not (forall!16096 lt!2483557 lambda!400123)))))

(declare-fun bs!1861599 () Bool)

(assert (= bs!1861599 d!2175732))

(declare-fun m!7672738 () Bool)

(assert (=> bs!1861599 m!7672738))

(assert (=> b!6985025 d!2175732))

(declare-fun b!6985219 () Bool)

(declare-fun e!4198334 () Bool)

(declare-fun tp!1928977 () Bool)

(declare-fun tp!1928978 () Bool)

(assert (=> b!6985219 (= e!4198334 (and tp!1928977 tp!1928978))))

(assert (=> b!6985009 (= tp!1928960 e!4198334)))

(assert (= (and b!6985009 (is-Cons!66997 (exprs!6688 setElem!47658))) b!6985219))

(declare-fun condSetEmpty!47664 () Bool)

(assert (=> setNonEmpty!47658 (= condSetEmpty!47664 (= setRest!47658 (as set.empty (Set Context!12376))))))

(declare-fun setRes!47664 () Bool)

(assert (=> setNonEmpty!47658 (= tp!1928959 setRes!47664)))

(declare-fun setIsEmpty!47664 () Bool)

(assert (=> setIsEmpty!47664 setRes!47664))

(declare-fun setNonEmpty!47664 () Bool)

(declare-fun e!4198337 () Bool)

(declare-fun setElem!47664 () Context!12376)

(declare-fun tp!1928984 () Bool)

(assert (=> setNonEmpty!47664 (= setRes!47664 (and tp!1928984 (inv!85840 setElem!47664) e!4198337))))

(declare-fun setRest!47664 () (Set Context!12376))

(assert (=> setNonEmpty!47664 (= setRest!47658 (set.union (set.insert setElem!47664 (as set.empty (Set Context!12376))) setRest!47664))))

(declare-fun b!6985224 () Bool)

(declare-fun tp!1928983 () Bool)

(assert (=> b!6985224 (= e!4198337 tp!1928983)))

(assert (= (and setNonEmpty!47658 condSetEmpty!47664) setIsEmpty!47664))

(assert (= (and setNonEmpty!47658 (not condSetEmpty!47664)) setNonEmpty!47664))

(assert (= setNonEmpty!47664 b!6985224))

(declare-fun m!7672740 () Bool)

(assert (=> setNonEmpty!47664 m!7672740))

(declare-fun b!6985229 () Bool)

(declare-fun e!4198340 () Bool)

(declare-fun tp!1928987 () Bool)

(assert (=> b!6985229 (= e!4198340 (and tp_is_empty!43609 tp!1928987))))

(assert (=> b!6985011 (= tp!1928957 e!4198340)))

(assert (= (and b!6985011 (is-Cons!66998 (t!380869 s!7408))) b!6985229))

(declare-fun b!6985230 () Bool)

(declare-fun e!4198341 () Bool)

(declare-fun tp!1928988 () Bool)

(declare-fun tp!1928989 () Bool)

(assert (=> b!6985230 (= e!4198341 (and tp!1928988 tp!1928989))))

(assert (=> b!6985022 (= tp!1928958 e!4198341)))

(assert (= (and b!6985022 (is-Cons!66997 (exprs!6688 ct2!306))) b!6985230))

(declare-fun b_lambda!262137 () Bool)

(assert (= b_lambda!262135 (or b!6985025 b_lambda!262137)))

(declare-fun bs!1861600 () Bool)

(declare-fun d!2175736 () Bool)

(assert (= bs!1861600 (and d!2175736 b!6985025)))

(assert (=> bs!1861600 (= (dynLambda!26825 lambda!400062 lt!2483687) (matchZipper!2732 (set.insert lt!2483687 (as set.empty (Set Context!12376))) s!7408))))

(declare-fun m!7672742 () Bool)

(assert (=> bs!1861600 m!7672742))

(assert (=> bs!1861600 m!7672742))

(declare-fun m!7672744 () Bool)

(assert (=> bs!1861600 m!7672744))

(assert (=> d!2175722 d!2175736))

(declare-fun b_lambda!262139 () Bool)

(assert (= b_lambda!262131 (or b!6985024 b_lambda!262139)))

(declare-fun bs!1861601 () Bool)

(declare-fun d!2175738 () Bool)

(assert (= bs!1861601 (and d!2175738 b!6985024)))

(declare-fun lt!2483697 () Unit!161039)

(assert (=> bs!1861601 (= lt!2483697 (lemmaConcatPreservesForall!528 (exprs!6688 lt!2483672) (exprs!6688 ct2!306) lambda!400064))))

(assert (=> bs!1861601 (= (dynLambda!26823 lambda!400063 lt!2483672) (Context!12377 (++!15137 (exprs!6688 lt!2483672) (exprs!6688 ct2!306))))))

(declare-fun m!7672746 () Bool)

(assert (=> bs!1861601 m!7672746))

(declare-fun m!7672748 () Bool)

(assert (=> bs!1861601 m!7672748))

(assert (=> d!2175692 d!2175738))

(declare-fun b_lambda!262141 () Bool)

(assert (= b_lambda!262129 (or b!6985024 b_lambda!262141)))

(declare-fun bs!1861602 () Bool)

(declare-fun d!2175740 () Bool)

(assert (= bs!1861602 (and d!2175740 b!6985024)))

(declare-fun validRegex!8848 (Regex!17192) Bool)

(assert (=> bs!1861602 (= (dynLambda!26822 lambda!400064 (h!73445 lt!2483560)) (validRegex!8848 (h!73445 lt!2483560)))))

(declare-fun m!7672750 () Bool)

(assert (=> bs!1861602 m!7672750))

(assert (=> b!6985168 d!2175740))

(declare-fun b_lambda!262143 () Bool)

(assert (= b_lambda!262133 (or b!6985017 b_lambda!262143)))

(declare-fun bs!1861603 () Bool)

(declare-fun d!2175742 () Bool)

(assert (= bs!1861603 (and d!2175742 b!6985017)))

(assert (=> bs!1861603 (= (dynLambda!26824 lambda!400065 lt!2483567) (derivationStepZipperUp!1842 lt!2483567 (h!73446 s!7408)))))

(assert (=> bs!1861603 m!7672462))

(assert (=> d!2175694 d!2175742))

(push 1)

(assert (not b!6985224))

(assert (not d!2175674))

(assert (not b!6985229))

(assert (not b!6985111))

(assert (not d!2175678))

(assert (not d!2175718))

(assert (not b!6985187))

(assert tp_is_empty!43609)

(assert (not b!6985182))

(assert (not b!6985204))

(assert (not d!2175686))

(assert (not bs!1861601))

(assert (not d!2175730))

(assert (not bm!634025))

(assert (not b!6985198))

(assert (not b!6985211))

(assert (not bm!634044))

(assert (not b_lambda!262141))

(assert (not bm!634039))

(assert (not b!6985171))

(assert (not b!6985098))

(assert (not d!2175706))

(assert (not b!6985169))

(assert (not d!2175716))

(assert (not b!6985113))

(assert (not d!2175720))

(assert (not b!6985195))

(assert (not b!6985097))

(assert (not b!6985191))

(assert (not d!2175722))

(assert (not bs!1861603))

(assert (not d!2175700))

(assert (not d!2175664))

(assert (not b!6985212))

(assert (not d!2175698))

(assert (not d!2175694))

(assert (not b!6985126))

(assert (not b!6985199))

(assert (not d!2175726))

(assert (not b!6985219))

(assert (not d!2175672))

(assert (not d!2175670))

(assert (not b_lambda!262137))

(assert (not b!6985154))

(assert (not d!2175714))

(assert (not d!2175732))

(assert (not d!2175668))

(assert (not bm!634038))

(assert (not b!6985194))

(assert (not b!6985230))

(assert (not bm!634040))

(assert (not setNonEmpty!47664))

(assert (not b!6985125))

(assert (not b!6985184))

(assert (not bs!1861600))

(assert (not b!6985188))

(assert (not d!2175692))

(assert (not b!6985100))

(assert (not b_lambda!262139))

(assert (not bs!1861602))

(assert (not d!2175666))

(assert (not b!6985099))

(assert (not d!2175690))

(assert (not d!2175712))

(assert (not b!6985172))

(assert (not b_lambda!262143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

