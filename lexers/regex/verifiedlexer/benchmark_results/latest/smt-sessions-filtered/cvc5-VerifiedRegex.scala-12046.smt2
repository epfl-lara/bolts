; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675796 () Bool)

(assert start!675796)

(declare-fun b!7014231 () Bool)

(assert (=> b!7014231 true))

(declare-fun b!7014229 () Bool)

(assert (=> b!7014229 true))

(declare-fun b!7014225 () Bool)

(assert (=> b!7014225 true))

(declare-fun b!7014218 () Bool)

(declare-fun res!2862616 () Bool)

(declare-fun e!4216358 () Bool)

(assert (=> b!7014218 (=> (not res!2862616) (not e!4216358))))

(declare-datatypes ((C!34946 0))(
  ( (C!34947 (val!27175 Int)) )
))
(declare-datatypes ((List!67559 0))(
  ( (Nil!67435) (Cons!67435 (h!73883 C!34946) (t!381314 List!67559)) )
))
(declare-fun s!7408 () List!67559)

(assert (=> b!7014218 (= res!2862616 (is-Cons!67435 s!7408))))

(declare-fun b!7014219 () Bool)

(declare-fun e!4216360 () Bool)

(declare-fun tp!1932868 () Bool)

(assert (=> b!7014219 (= e!4216360 tp!1932868)))

(declare-fun b!7014220 () Bool)

(declare-fun e!4216361 () Bool)

(declare-fun tp!1932870 () Bool)

(assert (=> b!7014220 (= e!4216361 tp!1932870)))

(declare-fun b!7014221 () Bool)

(declare-fun e!4216357 () Bool)

(declare-fun e!4216362 () Bool)

(assert (=> b!7014221 (= e!4216357 e!4216362)))

(declare-fun res!2862610 () Bool)

(assert (=> b!7014221 (=> res!2862610 e!4216362)))

(declare-datatypes ((Regex!17338 0))(
  ( (ElementMatch!17338 (c!1303065 C!34946)) (Concat!26183 (regOne!35188 Regex!17338) (regTwo!35188 Regex!17338)) (EmptyExpr!17338) (Star!17338 (reg!17667 Regex!17338)) (EmptyLang!17338) (Union!17338 (regOne!35189 Regex!17338) (regTwo!35189 Regex!17338)) )
))
(declare-datatypes ((List!67560 0))(
  ( (Nil!67436) (Cons!67436 (h!73884 Regex!17338) (t!381315 List!67560)) )
))
(declare-datatypes ((Context!12668 0))(
  ( (Context!12669 (exprs!6834 List!67560)) )
))
(declare-fun lt!2507271 () Context!12668)

(declare-fun lambda!409528 () Int)

(declare-fun forall!16251 (List!67560 Int) Bool)

(declare-fun tail!13421 (List!67560) List!67560)

(assert (=> b!7014221 (= res!2862610 (not (forall!16251 (tail!13421 (exprs!6834 lt!2507271)) lambda!409528)))))

(declare-fun b!7014222 () Bool)

(declare-fun e!4216359 () Bool)

(declare-fun e!4216363 () Bool)

(assert (=> b!7014222 (= e!4216359 e!4216363)))

(declare-fun res!2862609 () Bool)

(assert (=> b!7014222 (=> res!2862609 e!4216363)))

(declare-fun lt!2507270 () (Set Context!12668))

(declare-fun lt!2507263 () (Set Context!12668))

(assert (=> b!7014222 (= res!2862609 (not (= lt!2507270 lt!2507263)))))

(declare-fun lt!2507264 () Context!12668)

(assert (=> b!7014222 (= lt!2507270 (set.insert lt!2507264 (as set.empty (Set Context!12668))))))

(declare-datatypes ((Unit!161356 0))(
  ( (Unit!161357) )
))
(declare-fun lt!2507260 () Unit!161356)

(declare-fun ct2!306 () Context!12668)

(declare-fun lemmaConcatPreservesForall!674 (List!67560 List!67560 Int) Unit!161356)

(assert (=> b!7014222 (= lt!2507260 (lemmaConcatPreservesForall!674 (exprs!6834 lt!2507271) (exprs!6834 ct2!306) lambda!409528))))

(declare-fun setIsEmpty!48457 () Bool)

(declare-fun setRes!48457 () Bool)

(assert (=> setIsEmpty!48457 setRes!48457))

(declare-fun b!7014223 () Bool)

(declare-fun res!2862608 () Bool)

(assert (=> b!7014223 (=> res!2862608 e!4216357)))

(declare-fun nullable!7098 (Regex!17338) Bool)

(assert (=> b!7014223 (= res!2862608 (nullable!7098 (h!73884 (exprs!6834 lt!2507271))))))

(declare-fun b!7014224 () Bool)

(declare-fun res!2862612 () Bool)

(declare-fun e!4216364 () Bool)

(assert (=> b!7014224 (=> res!2862612 e!4216364)))

(declare-fun lt!2507259 () Context!12668)

(declare-fun lt!2507266 () (Set Context!12668))

(assert (=> b!7014224 (= res!2862612 (not (set.member lt!2507259 lt!2507266)))))

(assert (=> b!7014225 (= e!4216363 e!4216357)))

(declare-fun res!2862606 () Bool)

(assert (=> b!7014225 (=> res!2862606 e!4216357)))

(declare-fun lt!2507261 () (Set Context!12668))

(declare-fun derivationStepZipper!2818 ((Set Context!12668) C!34946) (Set Context!12668))

(assert (=> b!7014225 (= res!2862606 (not (= (derivationStepZipper!2818 lt!2507270 (h!73883 s!7408)) lt!2507261)))))

(declare-fun lambda!409529 () Int)

(declare-fun flatMap!2324 ((Set Context!12668) Int) (Set Context!12668))

(declare-fun derivationStepZipperUp!1988 (Context!12668 C!34946) (Set Context!12668))

(assert (=> b!7014225 (= (flatMap!2324 lt!2507270 lambda!409529) (derivationStepZipperUp!1988 lt!2507264 (h!73883 s!7408)))))

(declare-fun lt!2507269 () Unit!161356)

(declare-fun lemmaFlatMapOnSingletonSet!1839 ((Set Context!12668) Context!12668 Int) Unit!161356)

(assert (=> b!7014225 (= lt!2507269 (lemmaFlatMapOnSingletonSet!1839 lt!2507270 lt!2507264 lambda!409529))))

(assert (=> b!7014225 (= lt!2507261 (derivationStepZipperUp!1988 lt!2507264 (h!73883 s!7408)))))

(declare-fun lt!2507268 () Unit!161356)

(assert (=> b!7014225 (= lt!2507268 (lemmaConcatPreservesForall!674 (exprs!6834 lt!2507271) (exprs!6834 ct2!306) lambda!409528))))

(declare-fun res!2862607 () Bool)

(assert (=> start!675796 (=> (not res!2862607) (not e!4216358))))

(declare-fun matchZipper!2878 ((Set Context!12668) List!67559) Bool)

(assert (=> start!675796 (= res!2862607 (matchZipper!2878 lt!2507266 s!7408))))

(declare-fun z1!570 () (Set Context!12668))

(declare-fun appendTo!459 ((Set Context!12668) Context!12668) (Set Context!12668))

(assert (=> start!675796 (= lt!2507266 (appendTo!459 z1!570 ct2!306))))

(assert (=> start!675796 e!4216358))

(declare-fun condSetEmpty!48457 () Bool)

(assert (=> start!675796 (= condSetEmpty!48457 (= z1!570 (as set.empty (Set Context!12668))))))

(assert (=> start!675796 setRes!48457))

(declare-fun inv!86205 (Context!12668) Bool)

(assert (=> start!675796 (and (inv!86205 ct2!306) e!4216360)))

(declare-fun e!4216365 () Bool)

(assert (=> start!675796 e!4216365))

(declare-fun setNonEmpty!48457 () Bool)

(declare-fun tp!1932871 () Bool)

(declare-fun setElem!48457 () Context!12668)

(assert (=> setNonEmpty!48457 (= setRes!48457 (and tp!1932871 (inv!86205 setElem!48457) e!4216361))))

(declare-fun setRest!48457 () (Set Context!12668))

(assert (=> setNonEmpty!48457 (= z1!570 (set.union (set.insert setElem!48457 (as set.empty (Set Context!12668))) setRest!48457))))

(declare-fun b!7014226 () Bool)

(declare-fun tp_is_empty!43901 () Bool)

(declare-fun tp!1932869 () Bool)

(assert (=> b!7014226 (= e!4216365 (and tp_is_empty!43901 tp!1932869))))

(declare-fun b!7014227 () Bool)

(declare-fun res!2862611 () Bool)

(assert (=> b!7014227 (=> res!2862611 e!4216357)))

(assert (=> b!7014227 (= res!2862611 (not (is-Cons!67436 (exprs!6834 lt!2507271))))))

(declare-fun b!7014228 () Bool)

(assert (=> b!7014228 (= e!4216362 (forall!16251 (exprs!6834 ct2!306) lambda!409528))))

(assert (=> b!7014229 (= e!4216364 e!4216359)))

(declare-fun res!2862614 () Bool)

(assert (=> b!7014229 (=> res!2862614 e!4216359)))

(assert (=> b!7014229 (= res!2862614 (or (not (= lt!2507264 lt!2507259)) (not (set.member lt!2507271 z1!570))))))

(declare-fun ++!15353 (List!67560 List!67560) List!67560)

(assert (=> b!7014229 (= lt!2507264 (Context!12669 (++!15353 (exprs!6834 lt!2507271) (exprs!6834 ct2!306))))))

(declare-fun lt!2507267 () Unit!161356)

(assert (=> b!7014229 (= lt!2507267 (lemmaConcatPreservesForall!674 (exprs!6834 lt!2507271) (exprs!6834 ct2!306) lambda!409528))))

(declare-fun lambda!409527 () Int)

(declare-fun mapPost2!193 ((Set Context!12668) Int Context!12668) Context!12668)

(assert (=> b!7014229 (= lt!2507271 (mapPost2!193 z1!570 lambda!409527 lt!2507259))))

(declare-fun b!7014230 () Bool)

(declare-fun res!2862615 () Bool)

(assert (=> b!7014230 (=> res!2862615 e!4216357)))

(declare-fun isEmpty!39384 (List!67560) Bool)

(assert (=> b!7014230 (= res!2862615 (isEmpty!39384 (exprs!6834 lt!2507271)))))

(assert (=> b!7014231 (= e!4216358 (not e!4216364))))

(declare-fun res!2862613 () Bool)

(assert (=> b!7014231 (=> res!2862613 e!4216364)))

(assert (=> b!7014231 (= res!2862613 (not (matchZipper!2878 lt!2507263 s!7408)))))

(assert (=> b!7014231 (= lt!2507263 (set.insert lt!2507259 (as set.empty (Set Context!12668))))))

(declare-fun lambda!409526 () Int)

(declare-fun getWitness!1288 ((Set Context!12668) Int) Context!12668)

(assert (=> b!7014231 (= lt!2507259 (getWitness!1288 lt!2507266 lambda!409526))))

(declare-datatypes ((List!67561 0))(
  ( (Nil!67437) (Cons!67437 (h!73885 Context!12668) (t!381316 List!67561)) )
))
(declare-fun lt!2507262 () List!67561)

(declare-fun exists!3195 (List!67561 Int) Bool)

(assert (=> b!7014231 (exists!3195 lt!2507262 lambda!409526)))

(declare-fun lt!2507265 () Unit!161356)

(declare-fun lemmaZipperMatchesExistsMatchingContext!307 (List!67561 List!67559) Unit!161356)

(assert (=> b!7014231 (= lt!2507265 (lemmaZipperMatchesExistsMatchingContext!307 lt!2507262 s!7408))))

(declare-fun toList!10698 ((Set Context!12668)) List!67561)

(assert (=> b!7014231 (= lt!2507262 (toList!10698 lt!2507266))))

(assert (= (and start!675796 res!2862607) b!7014218))

(assert (= (and b!7014218 res!2862616) b!7014231))

(assert (= (and b!7014231 (not res!2862613)) b!7014224))

(assert (= (and b!7014224 (not res!2862612)) b!7014229))

(assert (= (and b!7014229 (not res!2862614)) b!7014222))

(assert (= (and b!7014222 (not res!2862609)) b!7014225))

(assert (= (and b!7014225 (not res!2862606)) b!7014227))

(assert (= (and b!7014227 (not res!2862611)) b!7014230))

(assert (= (and b!7014230 (not res!2862615)) b!7014223))

(assert (= (and b!7014223 (not res!2862608)) b!7014221))

(assert (= (and b!7014221 (not res!2862610)) b!7014228))

(assert (= (and start!675796 condSetEmpty!48457) setIsEmpty!48457))

(assert (= (and start!675796 (not condSetEmpty!48457)) setNonEmpty!48457))

(assert (= setNonEmpty!48457 b!7014220))

(assert (= start!675796 b!7014219))

(assert (= (and start!675796 (is-Cons!67435 s!7408)) b!7014226))

(declare-fun m!7713412 () Bool)

(assert (=> b!7014231 m!7713412))

(declare-fun m!7713414 () Bool)

(assert (=> b!7014231 m!7713414))

(declare-fun m!7713416 () Bool)

(assert (=> b!7014231 m!7713416))

(declare-fun m!7713418 () Bool)

(assert (=> b!7014231 m!7713418))

(declare-fun m!7713420 () Bool)

(assert (=> b!7014231 m!7713420))

(declare-fun m!7713422 () Bool)

(assert (=> b!7014231 m!7713422))

(declare-fun m!7713424 () Bool)

(assert (=> setNonEmpty!48457 m!7713424))

(declare-fun m!7713426 () Bool)

(assert (=> start!675796 m!7713426))

(declare-fun m!7713428 () Bool)

(assert (=> start!675796 m!7713428))

(declare-fun m!7713430 () Bool)

(assert (=> start!675796 m!7713430))

(declare-fun m!7713432 () Bool)

(assert (=> b!7014228 m!7713432))

(declare-fun m!7713434 () Bool)

(assert (=> b!7014229 m!7713434))

(declare-fun m!7713436 () Bool)

(assert (=> b!7014229 m!7713436))

(declare-fun m!7713438 () Bool)

(assert (=> b!7014229 m!7713438))

(declare-fun m!7713440 () Bool)

(assert (=> b!7014229 m!7713440))

(declare-fun m!7713442 () Bool)

(assert (=> b!7014224 m!7713442))

(declare-fun m!7713444 () Bool)

(assert (=> b!7014225 m!7713444))

(declare-fun m!7713446 () Bool)

(assert (=> b!7014225 m!7713446))

(declare-fun m!7713448 () Bool)

(assert (=> b!7014225 m!7713448))

(assert (=> b!7014225 m!7713438))

(declare-fun m!7713450 () Bool)

(assert (=> b!7014225 m!7713450))

(declare-fun m!7713452 () Bool)

(assert (=> b!7014222 m!7713452))

(assert (=> b!7014222 m!7713438))

(declare-fun m!7713454 () Bool)

(assert (=> b!7014223 m!7713454))

(declare-fun m!7713456 () Bool)

(assert (=> b!7014230 m!7713456))

(declare-fun m!7713458 () Bool)

(assert (=> b!7014221 m!7713458))

(assert (=> b!7014221 m!7713458))

(declare-fun m!7713460 () Bool)

(assert (=> b!7014221 m!7713460))

(push 1)

(assert (not b!7014230))

(assert (not b!7014223))

(assert (not b!7014222))

(assert (not b!7014219))

(assert (not b!7014225))

(assert (not b!7014221))

(assert (not b!7014231))

(assert (not start!675796))

(assert (not setNonEmpty!48457))

(assert tp_is_empty!43901)

(assert (not b!7014226))

(assert (not b!7014229))

(assert (not b!7014220))

(assert (not b!7014228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2186411 () Bool)

(declare-fun nullableFct!2690 (Regex!17338) Bool)

(assert (=> d!2186411 (= (nullable!7098 (h!73884 (exprs!6834 lt!2507271))) (nullableFct!2690 (h!73884 (exprs!6834 lt!2507271))))))

(declare-fun bs!1866557 () Bool)

(assert (= bs!1866557 d!2186411))

(declare-fun m!7713512 () Bool)

(assert (=> bs!1866557 m!7713512))

(assert (=> b!7014223 d!2186411))

(declare-fun d!2186413 () Bool)

(declare-fun res!2862655 () Bool)

(declare-fun e!4216397 () Bool)

(assert (=> d!2186413 (=> res!2862655 e!4216397)))

(assert (=> d!2186413 (= res!2862655 (is-Nil!67436 (exprs!6834 ct2!306)))))

(assert (=> d!2186413 (= (forall!16251 (exprs!6834 ct2!306) lambda!409528) e!4216397)))

(declare-fun b!7014290 () Bool)

(declare-fun e!4216398 () Bool)

(assert (=> b!7014290 (= e!4216397 e!4216398)))

(declare-fun res!2862656 () Bool)

(assert (=> b!7014290 (=> (not res!2862656) (not e!4216398))))

(declare-fun dynLambda!27136 (Int Regex!17338) Bool)

(assert (=> b!7014290 (= res!2862656 (dynLambda!27136 lambda!409528 (h!73884 (exprs!6834 ct2!306))))))

(declare-fun b!7014291 () Bool)

(assert (=> b!7014291 (= e!4216398 (forall!16251 (t!381315 (exprs!6834 ct2!306)) lambda!409528))))

(assert (= (and d!2186413 (not res!2862655)) b!7014290))

(assert (= (and b!7014290 res!2862656) b!7014291))

(declare-fun b_lambda!264591 () Bool)

(assert (=> (not b_lambda!264591) (not b!7014290)))

(declare-fun m!7713514 () Bool)

(assert (=> b!7014290 m!7713514))

(declare-fun m!7713516 () Bool)

(assert (=> b!7014291 m!7713516))

(assert (=> b!7014228 d!2186413))

(declare-fun b!7014300 () Bool)

(declare-fun e!4216404 () List!67560)

(assert (=> b!7014300 (= e!4216404 (exprs!6834 ct2!306))))

(declare-fun lt!2507315 () List!67560)

(declare-fun e!4216403 () Bool)

(declare-fun b!7014303 () Bool)

(assert (=> b!7014303 (= e!4216403 (or (not (= (exprs!6834 ct2!306) Nil!67436)) (= lt!2507315 (exprs!6834 lt!2507271))))))

(declare-fun d!2186415 () Bool)

(assert (=> d!2186415 e!4216403))

(declare-fun res!2862663 () Bool)

(assert (=> d!2186415 (=> (not res!2862663) (not e!4216403))))

(declare-fun content!13398 (List!67560) (Set Regex!17338))

(assert (=> d!2186415 (= res!2862663 (= (content!13398 lt!2507315) (set.union (content!13398 (exprs!6834 lt!2507271)) (content!13398 (exprs!6834 ct2!306)))))))

(assert (=> d!2186415 (= lt!2507315 e!4216404)))

(declare-fun c!1303077 () Bool)

(assert (=> d!2186415 (= c!1303077 (is-Nil!67436 (exprs!6834 lt!2507271)))))

(assert (=> d!2186415 (= (++!15353 (exprs!6834 lt!2507271) (exprs!6834 ct2!306)) lt!2507315)))

(declare-fun b!7014302 () Bool)

(declare-fun res!2862662 () Bool)

(assert (=> b!7014302 (=> (not res!2862662) (not e!4216403))))

(declare-fun size!40987 (List!67560) Int)

(assert (=> b!7014302 (= res!2862662 (= (size!40987 lt!2507315) (+ (size!40987 (exprs!6834 lt!2507271)) (size!40987 (exprs!6834 ct2!306)))))))

(declare-fun b!7014301 () Bool)

(assert (=> b!7014301 (= e!4216404 (Cons!67436 (h!73884 (exprs!6834 lt!2507271)) (++!15353 (t!381315 (exprs!6834 lt!2507271)) (exprs!6834 ct2!306))))))

(assert (= (and d!2186415 c!1303077) b!7014300))

(assert (= (and d!2186415 (not c!1303077)) b!7014301))

(assert (= (and d!2186415 res!2862663) b!7014302))

(assert (= (and b!7014302 res!2862662) b!7014303))

(declare-fun m!7713518 () Bool)

(assert (=> d!2186415 m!7713518))

(declare-fun m!7713520 () Bool)

(assert (=> d!2186415 m!7713520))

(declare-fun m!7713522 () Bool)

(assert (=> d!2186415 m!7713522))

(declare-fun m!7713524 () Bool)

(assert (=> b!7014302 m!7713524))

(declare-fun m!7713526 () Bool)

(assert (=> b!7014302 m!7713526))

(declare-fun m!7713528 () Bool)

(assert (=> b!7014302 m!7713528))

(declare-fun m!7713530 () Bool)

(assert (=> b!7014301 m!7713530))

(assert (=> b!7014229 d!2186415))

(declare-fun d!2186417 () Bool)

(assert (=> d!2186417 (forall!16251 (++!15353 (exprs!6834 lt!2507271) (exprs!6834 ct2!306)) lambda!409528)))

(declare-fun lt!2507318 () Unit!161356)

(declare-fun choose!52777 (List!67560 List!67560 Int) Unit!161356)

(assert (=> d!2186417 (= lt!2507318 (choose!52777 (exprs!6834 lt!2507271) (exprs!6834 ct2!306) lambda!409528))))

(assert (=> d!2186417 (forall!16251 (exprs!6834 lt!2507271) lambda!409528)))

(assert (=> d!2186417 (= (lemmaConcatPreservesForall!674 (exprs!6834 lt!2507271) (exprs!6834 ct2!306) lambda!409528) lt!2507318)))

(declare-fun bs!1866558 () Bool)

(assert (= bs!1866558 d!2186417))

(assert (=> bs!1866558 m!7713436))

(assert (=> bs!1866558 m!7713436))

(declare-fun m!7713532 () Bool)

(assert (=> bs!1866558 m!7713532))

(declare-fun m!7713534 () Bool)

(assert (=> bs!1866558 m!7713534))

(declare-fun m!7713536 () Bool)

(assert (=> bs!1866558 m!7713536))

(assert (=> b!7014229 d!2186417))

(declare-fun d!2186419 () Bool)

(declare-fun e!4216407 () Bool)

(assert (=> d!2186419 e!4216407))

(declare-fun res!2862666 () Bool)

(assert (=> d!2186419 (=> (not res!2862666) (not e!4216407))))

(declare-fun lt!2507321 () Context!12668)

(declare-fun dynLambda!27137 (Int Context!12668) Context!12668)

(assert (=> d!2186419 (= res!2862666 (= lt!2507259 (dynLambda!27137 lambda!409527 lt!2507321)))))

(declare-fun choose!52778 ((Set Context!12668) Int Context!12668) Context!12668)

(assert (=> d!2186419 (= lt!2507321 (choose!52778 z1!570 lambda!409527 lt!2507259))))

(declare-fun map!15629 ((Set Context!12668) Int) (Set Context!12668))

(assert (=> d!2186419 (set.member lt!2507259 (map!15629 z1!570 lambda!409527))))

(assert (=> d!2186419 (= (mapPost2!193 z1!570 lambda!409527 lt!2507259) lt!2507321)))

(declare-fun b!7014307 () Bool)

(assert (=> b!7014307 (= e!4216407 (set.member lt!2507321 z1!570))))

(assert (= (and d!2186419 res!2862666) b!7014307))

(declare-fun b_lambda!264593 () Bool)

(assert (=> (not b_lambda!264593) (not d!2186419)))

(declare-fun m!7713538 () Bool)

(assert (=> d!2186419 m!7713538))

(declare-fun m!7713540 () Bool)

(assert (=> d!2186419 m!7713540))

(declare-fun m!7713542 () Bool)

(assert (=> d!2186419 m!7713542))

(declare-fun m!7713544 () Bool)

(assert (=> d!2186419 m!7713544))

(declare-fun m!7713546 () Bool)

(assert (=> b!7014307 m!7713546))

(assert (=> b!7014229 d!2186419))

(declare-fun d!2186421 () Bool)

(declare-fun res!2862667 () Bool)

(declare-fun e!4216408 () Bool)

(assert (=> d!2186421 (=> res!2862667 e!4216408)))

(assert (=> d!2186421 (= res!2862667 (is-Nil!67436 (tail!13421 (exprs!6834 lt!2507271))))))

(assert (=> d!2186421 (= (forall!16251 (tail!13421 (exprs!6834 lt!2507271)) lambda!409528) e!4216408)))

(declare-fun b!7014308 () Bool)

(declare-fun e!4216409 () Bool)

(assert (=> b!7014308 (= e!4216408 e!4216409)))

(declare-fun res!2862668 () Bool)

(assert (=> b!7014308 (=> (not res!2862668) (not e!4216409))))

(assert (=> b!7014308 (= res!2862668 (dynLambda!27136 lambda!409528 (h!73884 (tail!13421 (exprs!6834 lt!2507271)))))))

(declare-fun b!7014309 () Bool)

(assert (=> b!7014309 (= e!4216409 (forall!16251 (t!381315 (tail!13421 (exprs!6834 lt!2507271))) lambda!409528))))

(assert (= (and d!2186421 (not res!2862667)) b!7014308))

(assert (= (and b!7014308 res!2862668) b!7014309))

(declare-fun b_lambda!264595 () Bool)

(assert (=> (not b_lambda!264595) (not b!7014308)))

(declare-fun m!7713548 () Bool)

(assert (=> b!7014308 m!7713548))

(declare-fun m!7713550 () Bool)

(assert (=> b!7014309 m!7713550))

(assert (=> b!7014221 d!2186421))

(declare-fun d!2186423 () Bool)

(assert (=> d!2186423 (= (tail!13421 (exprs!6834 lt!2507271)) (t!381315 (exprs!6834 lt!2507271)))))

(assert (=> b!7014221 d!2186423))

(declare-fun d!2186425 () Bool)

(declare-fun c!1303080 () Bool)

(declare-fun isEmpty!39386 (List!67559) Bool)

(assert (=> d!2186425 (= c!1303080 (isEmpty!39386 s!7408))))

(declare-fun e!4216412 () Bool)

(assert (=> d!2186425 (= (matchZipper!2878 lt!2507266 s!7408) e!4216412)))

(declare-fun b!7014314 () Bool)

(declare-fun nullableZipper!2496 ((Set Context!12668)) Bool)

(assert (=> b!7014314 (= e!4216412 (nullableZipper!2496 lt!2507266))))

(declare-fun b!7014315 () Bool)

(declare-fun head!14184 (List!67559) C!34946)

(declare-fun tail!13423 (List!67559) List!67559)

(assert (=> b!7014315 (= e!4216412 (matchZipper!2878 (derivationStepZipper!2818 lt!2507266 (head!14184 s!7408)) (tail!13423 s!7408)))))

(assert (= (and d!2186425 c!1303080) b!7014314))

(assert (= (and d!2186425 (not c!1303080)) b!7014315))

(declare-fun m!7713552 () Bool)

(assert (=> d!2186425 m!7713552))

(declare-fun m!7713554 () Bool)

(assert (=> b!7014314 m!7713554))

(declare-fun m!7713556 () Bool)

(assert (=> b!7014315 m!7713556))

(assert (=> b!7014315 m!7713556))

(declare-fun m!7713558 () Bool)

(assert (=> b!7014315 m!7713558))

(declare-fun m!7713560 () Bool)

(assert (=> b!7014315 m!7713560))

(assert (=> b!7014315 m!7713558))

(assert (=> b!7014315 m!7713560))

(declare-fun m!7713562 () Bool)

(assert (=> b!7014315 m!7713562))

(assert (=> start!675796 d!2186425))

(declare-fun bs!1866559 () Bool)

(declare-fun d!2186427 () Bool)

(assert (= bs!1866559 (and d!2186427 b!7014229)))

(declare-fun lambda!409556 () Int)

(assert (=> bs!1866559 (= lambda!409556 lambda!409527)))

(assert (=> d!2186427 true))

(assert (=> d!2186427 (= (appendTo!459 z1!570 ct2!306) (map!15629 z1!570 lambda!409556))))

(declare-fun bs!1866560 () Bool)

(assert (= bs!1866560 d!2186427))

(declare-fun m!7713564 () Bool)

(assert (=> bs!1866560 m!7713564))

(assert (=> start!675796 d!2186427))

(declare-fun bs!1866561 () Bool)

(declare-fun d!2186431 () Bool)

(assert (= bs!1866561 (and d!2186431 b!7014229)))

(declare-fun lambda!409559 () Int)

(assert (=> bs!1866561 (= lambda!409559 lambda!409528)))

(assert (=> d!2186431 (= (inv!86205 ct2!306) (forall!16251 (exprs!6834 ct2!306) lambda!409559))))

(declare-fun bs!1866562 () Bool)

(assert (= bs!1866562 d!2186431))

(declare-fun m!7713566 () Bool)

(assert (=> bs!1866562 m!7713566))

(assert (=> start!675796 d!2186431))

(declare-fun d!2186433 () Bool)

(declare-fun choose!52779 ((Set Context!12668) Int) (Set Context!12668))

(assert (=> d!2186433 (= (flatMap!2324 lt!2507270 lambda!409529) (choose!52779 lt!2507270 lambda!409529))))

(declare-fun bs!1866563 () Bool)

(assert (= bs!1866563 d!2186433))

(declare-fun m!7713568 () Bool)

(assert (=> bs!1866563 m!7713568))

(assert (=> b!7014225 d!2186433))

(declare-fun bs!1866564 () Bool)

(declare-fun d!2186435 () Bool)

(assert (= bs!1866564 (and d!2186435 b!7014225)))

(declare-fun lambda!409562 () Int)

(assert (=> bs!1866564 (= lambda!409562 lambda!409529)))

(assert (=> d!2186435 true))

(assert (=> d!2186435 (= (derivationStepZipper!2818 lt!2507270 (h!73883 s!7408)) (flatMap!2324 lt!2507270 lambda!409562))))

(declare-fun bs!1866565 () Bool)

(assert (= bs!1866565 d!2186435))

(declare-fun m!7713574 () Bool)

(assert (=> bs!1866565 m!7713574))

(assert (=> b!7014225 d!2186435))

(declare-fun d!2186439 () Bool)

(declare-fun c!1303088 () Bool)

(declare-fun e!4216427 () Bool)

(assert (=> d!2186439 (= c!1303088 e!4216427)))

(declare-fun res!2862677 () Bool)

(assert (=> d!2186439 (=> (not res!2862677) (not e!4216427))))

(assert (=> d!2186439 (= res!2862677 (is-Cons!67436 (exprs!6834 lt!2507264)))))

(declare-fun e!4216425 () (Set Context!12668))

(assert (=> d!2186439 (= (derivationStepZipperUp!1988 lt!2507264 (h!73883 s!7408)) e!4216425)))

(declare-fun b!7014334 () Bool)

(assert (=> b!7014334 (= e!4216427 (nullable!7098 (h!73884 (exprs!6834 lt!2507264))))))

(declare-fun b!7014335 () Bool)

(declare-fun e!4216426 () (Set Context!12668))

(declare-fun call!637051 () (Set Context!12668))

(assert (=> b!7014335 (= e!4216426 call!637051)))

(declare-fun b!7014336 () Bool)

(assert (=> b!7014336 (= e!4216425 e!4216426)))

(declare-fun c!1303089 () Bool)

(assert (=> b!7014336 (= c!1303089 (is-Cons!67436 (exprs!6834 lt!2507264)))))

(declare-fun b!7014337 () Bool)

(assert (=> b!7014337 (= e!4216426 (as set.empty (Set Context!12668)))))

(declare-fun b!7014338 () Bool)

(assert (=> b!7014338 (= e!4216425 (set.union call!637051 (derivationStepZipperUp!1988 (Context!12669 (t!381315 (exprs!6834 lt!2507264))) (h!73883 s!7408))))))

(declare-fun bm!637046 () Bool)

(declare-fun derivationStepZipperDown!2056 (Regex!17338 Context!12668 C!34946) (Set Context!12668))

(assert (=> bm!637046 (= call!637051 (derivationStepZipperDown!2056 (h!73884 (exprs!6834 lt!2507264)) (Context!12669 (t!381315 (exprs!6834 lt!2507264))) (h!73883 s!7408)))))

(assert (= (and d!2186439 res!2862677) b!7014334))

(assert (= (and d!2186439 c!1303088) b!7014338))

(assert (= (and d!2186439 (not c!1303088)) b!7014336))

(assert (= (and b!7014336 c!1303089) b!7014335))

(assert (= (and b!7014336 (not c!1303089)) b!7014337))

(assert (= (or b!7014338 b!7014335) bm!637046))

(declare-fun m!7713578 () Bool)

(assert (=> b!7014334 m!7713578))

(declare-fun m!7713580 () Bool)

(assert (=> b!7014338 m!7713580))

(declare-fun m!7713582 () Bool)

(assert (=> bm!637046 m!7713582))

(assert (=> b!7014225 d!2186439))

(assert (=> b!7014225 d!2186417))

(declare-fun d!2186445 () Bool)

(declare-fun dynLambda!27138 (Int Context!12668) (Set Context!12668))

(assert (=> d!2186445 (= (flatMap!2324 lt!2507270 lambda!409529) (dynLambda!27138 lambda!409529 lt!2507264))))

(declare-fun lt!2507326 () Unit!161356)

(declare-fun choose!52780 ((Set Context!12668) Context!12668 Int) Unit!161356)

(assert (=> d!2186445 (= lt!2507326 (choose!52780 lt!2507270 lt!2507264 lambda!409529))))

(assert (=> d!2186445 (= lt!2507270 (set.insert lt!2507264 (as set.empty (Set Context!12668))))))

(assert (=> d!2186445 (= (lemmaFlatMapOnSingletonSet!1839 lt!2507270 lt!2507264 lambda!409529) lt!2507326)))

(declare-fun b_lambda!264599 () Bool)

(assert (=> (not b_lambda!264599) (not d!2186445)))

(declare-fun bs!1866568 () Bool)

(assert (= bs!1866568 d!2186445))

(assert (=> bs!1866568 m!7713444))

(declare-fun m!7713584 () Bool)

(assert (=> bs!1866568 m!7713584))

(declare-fun m!7713586 () Bool)

(assert (=> bs!1866568 m!7713586))

(assert (=> bs!1866568 m!7713452))

(assert (=> b!7014225 d!2186445))

(declare-fun bs!1866569 () Bool)

(declare-fun d!2186447 () Bool)

(assert (= bs!1866569 (and d!2186447 b!7014229)))

(declare-fun lambda!409566 () Int)

(assert (=> bs!1866569 (= lambda!409566 lambda!409528)))

(declare-fun bs!1866570 () Bool)

(assert (= bs!1866570 (and d!2186447 d!2186431)))

(assert (=> bs!1866570 (= lambda!409566 lambda!409559)))

(assert (=> d!2186447 (= (inv!86205 setElem!48457) (forall!16251 (exprs!6834 setElem!48457) lambda!409566))))

(declare-fun bs!1866571 () Bool)

(assert (= bs!1866571 d!2186447))

(declare-fun m!7713588 () Bool)

(assert (=> bs!1866571 m!7713588))

(assert (=> setNonEmpty!48457 d!2186447))

(declare-fun d!2186449 () Bool)

(assert (=> d!2186449 (= (isEmpty!39384 (exprs!6834 lt!2507271)) (is-Nil!67436 (exprs!6834 lt!2507271)))))

(assert (=> b!7014230 d!2186449))

(declare-fun bs!1866572 () Bool)

(declare-fun d!2186451 () Bool)

(assert (= bs!1866572 (and d!2186451 b!7014231)))

(declare-fun lambda!409569 () Int)

(assert (=> bs!1866572 (not (= lambda!409569 lambda!409526))))

(assert (=> d!2186451 true))

(declare-fun order!28049 () Int)

(declare-fun dynLambda!27139 (Int Int) Int)

(assert (=> d!2186451 (< (dynLambda!27139 order!28049 lambda!409526) (dynLambda!27139 order!28049 lambda!409569))))

(declare-fun forall!16253 (List!67561 Int) Bool)

(assert (=> d!2186451 (= (exists!3195 lt!2507262 lambda!409526) (not (forall!16253 lt!2507262 lambda!409569)))))

(declare-fun bs!1866573 () Bool)

(assert (= bs!1866573 d!2186451))

(declare-fun m!7713590 () Bool)

(assert (=> bs!1866573 m!7713590))

(assert (=> b!7014231 d!2186451))

(declare-fun d!2186453 () Bool)

(declare-fun e!4216434 () Bool)

(assert (=> d!2186453 e!4216434))

(declare-fun res!2862684 () Bool)

(assert (=> d!2186453 (=> (not res!2862684) (not e!4216434))))

(declare-fun lt!2507331 () List!67561)

(declare-fun noDuplicate!2574 (List!67561) Bool)

(assert (=> d!2186453 (= res!2862684 (noDuplicate!2574 lt!2507331))))

(declare-fun choose!52781 ((Set Context!12668)) List!67561)

(assert (=> d!2186453 (= lt!2507331 (choose!52781 lt!2507266))))

(assert (=> d!2186453 (= (toList!10698 lt!2507266) lt!2507331)))

(declare-fun b!7014351 () Bool)

(declare-fun content!13399 (List!67561) (Set Context!12668))

(assert (=> b!7014351 (= e!4216434 (= (content!13399 lt!2507331) lt!2507266))))

(assert (= (and d!2186453 res!2862684) b!7014351))

(declare-fun m!7713592 () Bool)

(assert (=> d!2186453 m!7713592))

(declare-fun m!7713594 () Bool)

(assert (=> d!2186453 m!7713594))

(declare-fun m!7713596 () Bool)

(assert (=> b!7014351 m!7713596))

(assert (=> b!7014231 d!2186453))

(declare-fun d!2186455 () Bool)

(declare-fun c!1303092 () Bool)

(assert (=> d!2186455 (= c!1303092 (isEmpty!39386 s!7408))))

(declare-fun e!4216435 () Bool)

(assert (=> d!2186455 (= (matchZipper!2878 lt!2507263 s!7408) e!4216435)))

(declare-fun b!7014352 () Bool)

(assert (=> b!7014352 (= e!4216435 (nullableZipper!2496 lt!2507263))))

(declare-fun b!7014353 () Bool)

(assert (=> b!7014353 (= e!4216435 (matchZipper!2878 (derivationStepZipper!2818 lt!2507263 (head!14184 s!7408)) (tail!13423 s!7408)))))

(assert (= (and d!2186455 c!1303092) b!7014352))

(assert (= (and d!2186455 (not c!1303092)) b!7014353))

(assert (=> d!2186455 m!7713552))

(declare-fun m!7713598 () Bool)

(assert (=> b!7014352 m!7713598))

(assert (=> b!7014353 m!7713556))

(assert (=> b!7014353 m!7713556))

(declare-fun m!7713600 () Bool)

(assert (=> b!7014353 m!7713600))

(assert (=> b!7014353 m!7713560))

(assert (=> b!7014353 m!7713600))

(assert (=> b!7014353 m!7713560))

(declare-fun m!7713602 () Bool)

(assert (=> b!7014353 m!7713602))

(assert (=> b!7014231 d!2186455))

(declare-fun d!2186457 () Bool)

(declare-fun e!4216440 () Bool)

(assert (=> d!2186457 e!4216440))

(declare-fun res!2862689 () Bool)

(assert (=> d!2186457 (=> (not res!2862689) (not e!4216440))))

(declare-fun lt!2507335 () Context!12668)

(declare-fun dynLambda!27140 (Int Context!12668) Bool)

(assert (=> d!2186457 (= res!2862689 (dynLambda!27140 lambda!409526 lt!2507335))))

(declare-fun getWitness!1290 (List!67561 Int) Context!12668)

(assert (=> d!2186457 (= lt!2507335 (getWitness!1290 (toList!10698 lt!2507266) lambda!409526))))

(declare-fun exists!3197 ((Set Context!12668) Int) Bool)

(assert (=> d!2186457 (exists!3197 lt!2507266 lambda!409526)))

(assert (=> d!2186457 (= (getWitness!1288 lt!2507266 lambda!409526) lt!2507335)))

(declare-fun b!7014360 () Bool)

(assert (=> b!7014360 (= e!4216440 (set.member lt!2507335 lt!2507266))))

(assert (= (and d!2186457 res!2862689) b!7014360))

(declare-fun b_lambda!264601 () Bool)

(assert (=> (not b_lambda!264601) (not d!2186457)))

(declare-fun m!7713618 () Bool)

(assert (=> d!2186457 m!7713618))

(assert (=> d!2186457 m!7713422))

(assert (=> d!2186457 m!7713422))

(declare-fun m!7713620 () Bool)

(assert (=> d!2186457 m!7713620))

(declare-fun m!7713622 () Bool)

(assert (=> d!2186457 m!7713622))

(declare-fun m!7713624 () Bool)

(assert (=> b!7014360 m!7713624))

(assert (=> b!7014231 d!2186457))

(declare-fun bs!1866574 () Bool)

(declare-fun d!2186461 () Bool)

(assert (= bs!1866574 (and d!2186461 b!7014231)))

(declare-fun lambda!409572 () Int)

(assert (=> bs!1866574 (= lambda!409572 lambda!409526)))

(declare-fun bs!1866575 () Bool)

(assert (= bs!1866575 (and d!2186461 d!2186451)))

(assert (=> bs!1866575 (not (= lambda!409572 lambda!409569))))

(assert (=> d!2186461 true))

(assert (=> d!2186461 (exists!3195 lt!2507262 lambda!409572)))

(declare-fun lt!2507340 () Unit!161356)

(declare-fun choose!52782 (List!67561 List!67559) Unit!161356)

(assert (=> d!2186461 (= lt!2507340 (choose!52782 lt!2507262 s!7408))))

(assert (=> d!2186461 (matchZipper!2878 (content!13399 lt!2507262) s!7408)))

(assert (=> d!2186461 (= (lemmaZipperMatchesExistsMatchingContext!307 lt!2507262 s!7408) lt!2507340)))

(declare-fun bs!1866577 () Bool)

(assert (= bs!1866577 d!2186461))

(declare-fun m!7713626 () Bool)

(assert (=> bs!1866577 m!7713626))

(declare-fun m!7713628 () Bool)

(assert (=> bs!1866577 m!7713628))

(declare-fun m!7713632 () Bool)

(assert (=> bs!1866577 m!7713632))

(assert (=> bs!1866577 m!7713632))

(declare-fun m!7713636 () Bool)

(assert (=> bs!1866577 m!7713636))

(assert (=> b!7014231 d!2186461))

(assert (=> b!7014222 d!2186417))

(declare-fun b!7014365 () Bool)

(declare-fun e!4216443 () Bool)

(declare-fun tp!1932888 () Bool)

(declare-fun tp!1932889 () Bool)

(assert (=> b!7014365 (= e!4216443 (and tp!1932888 tp!1932889))))

(assert (=> b!7014219 (= tp!1932868 e!4216443)))

(assert (= (and b!7014219 (is-Cons!67436 (exprs!6834 ct2!306))) b!7014365))

(declare-fun b!7014366 () Bool)

(declare-fun e!4216444 () Bool)

(declare-fun tp!1932890 () Bool)

(declare-fun tp!1932891 () Bool)

(assert (=> b!7014366 (= e!4216444 (and tp!1932890 tp!1932891))))

(assert (=> b!7014220 (= tp!1932870 e!4216444)))

(assert (= (and b!7014220 (is-Cons!67436 (exprs!6834 setElem!48457))) b!7014366))

(declare-fun condSetEmpty!48463 () Bool)

(assert (=> setNonEmpty!48457 (= condSetEmpty!48463 (= setRest!48457 (as set.empty (Set Context!12668))))))

(declare-fun setRes!48463 () Bool)

(assert (=> setNonEmpty!48457 (= tp!1932871 setRes!48463)))

(declare-fun setIsEmpty!48463 () Bool)

(assert (=> setIsEmpty!48463 setRes!48463))

(declare-fun setNonEmpty!48463 () Bool)

(declare-fun setElem!48463 () Context!12668)

(declare-fun tp!1932896 () Bool)

(declare-fun e!4216447 () Bool)

(assert (=> setNonEmpty!48463 (= setRes!48463 (and tp!1932896 (inv!86205 setElem!48463) e!4216447))))

(declare-fun setRest!48463 () (Set Context!12668))

(assert (=> setNonEmpty!48463 (= setRest!48457 (set.union (set.insert setElem!48463 (as set.empty (Set Context!12668))) setRest!48463))))

(declare-fun b!7014371 () Bool)

(declare-fun tp!1932897 () Bool)

(assert (=> b!7014371 (= e!4216447 tp!1932897)))

(assert (= (and setNonEmpty!48457 condSetEmpty!48463) setIsEmpty!48463))

(assert (= (and setNonEmpty!48457 (not condSetEmpty!48463)) setNonEmpty!48463))

(assert (= setNonEmpty!48463 b!7014371))

(declare-fun m!7713640 () Bool)

(assert (=> setNonEmpty!48463 m!7713640))

(declare-fun b!7014376 () Bool)

(declare-fun e!4216450 () Bool)

(declare-fun tp!1932900 () Bool)

(assert (=> b!7014376 (= e!4216450 (and tp_is_empty!43901 tp!1932900))))

(assert (=> b!7014226 (= tp!1932869 e!4216450)))

(assert (= (and b!7014226 (is-Cons!67435 (t!381314 s!7408))) b!7014376))

(declare-fun b_lambda!264603 () Bool)

(assert (= b_lambda!264599 (or b!7014225 b_lambda!264603)))

(declare-fun bs!1866578 () Bool)

(declare-fun d!2186465 () Bool)

(assert (= bs!1866578 (and d!2186465 b!7014225)))

(assert (=> bs!1866578 (= (dynLambda!27138 lambda!409529 lt!2507264) (derivationStepZipperUp!1988 lt!2507264 (h!73883 s!7408)))))

(assert (=> bs!1866578 m!7713448))

(assert (=> d!2186445 d!2186465))

(declare-fun b_lambda!264605 () Bool)

(assert (= b_lambda!264593 (or b!7014229 b_lambda!264605)))

(declare-fun bs!1866579 () Bool)

(declare-fun d!2186467 () Bool)

(assert (= bs!1866579 (and d!2186467 b!7014229)))

(declare-fun lt!2507342 () Unit!161356)

(assert (=> bs!1866579 (= lt!2507342 (lemmaConcatPreservesForall!674 (exprs!6834 lt!2507321) (exprs!6834 ct2!306) lambda!409528))))

(assert (=> bs!1866579 (= (dynLambda!27137 lambda!409527 lt!2507321) (Context!12669 (++!15353 (exprs!6834 lt!2507321) (exprs!6834 ct2!306))))))

(declare-fun m!7713642 () Bool)

(assert (=> bs!1866579 m!7713642))

(declare-fun m!7713644 () Bool)

(assert (=> bs!1866579 m!7713644))

(assert (=> d!2186419 d!2186467))

(declare-fun b_lambda!264607 () Bool)

(assert (= b_lambda!264595 (or b!7014229 b_lambda!264607)))

(declare-fun bs!1866580 () Bool)

(declare-fun d!2186469 () Bool)

(assert (= bs!1866580 (and d!2186469 b!7014229)))

(declare-fun validRegex!8898 (Regex!17338) Bool)

(assert (=> bs!1866580 (= (dynLambda!27136 lambda!409528 (h!73884 (tail!13421 (exprs!6834 lt!2507271)))) (validRegex!8898 (h!73884 (tail!13421 (exprs!6834 lt!2507271)))))))

(declare-fun m!7713646 () Bool)

(assert (=> bs!1866580 m!7713646))

(assert (=> b!7014308 d!2186469))

(declare-fun b_lambda!264609 () Bool)

(assert (= b_lambda!264601 (or b!7014231 b_lambda!264609)))

(declare-fun bs!1866581 () Bool)

(declare-fun d!2186471 () Bool)

(assert (= bs!1866581 (and d!2186471 b!7014231)))

(assert (=> bs!1866581 (= (dynLambda!27140 lambda!409526 lt!2507335) (matchZipper!2878 (set.insert lt!2507335 (as set.empty (Set Context!12668))) s!7408))))

(declare-fun m!7713648 () Bool)

(assert (=> bs!1866581 m!7713648))

(assert (=> bs!1866581 m!7713648))

(declare-fun m!7713650 () Bool)

(assert (=> bs!1866581 m!7713650))

(assert (=> d!2186457 d!2186471))

(declare-fun b_lambda!264611 () Bool)

(assert (= b_lambda!264591 (or b!7014229 b_lambda!264611)))

(declare-fun bs!1866582 () Bool)

(declare-fun d!2186473 () Bool)

(assert (= bs!1866582 (and d!2186473 b!7014229)))

(assert (=> bs!1866582 (= (dynLambda!27136 lambda!409528 (h!73884 (exprs!6834 ct2!306))) (validRegex!8898 (h!73884 (exprs!6834 ct2!306))))))

(declare-fun m!7713652 () Bool)

(assert (=> bs!1866582 m!7713652))

(assert (=> b!7014290 d!2186473))

(push 1)

(assert (not b!7014334))

(assert (not bm!637046))

(assert (not b_lambda!264607))

(assert (not bs!1866579))

(assert (not b!7014376))

(assert (not d!2186451))

(assert (not bs!1866580))

(assert (not b!7014301))

(assert (not b!7014309))

(assert (not b!7014352))

(assert (not d!2186445))

(assert (not b!7014353))

(assert (not setNonEmpty!48463))

(assert tp_is_empty!43901)

(assert (not d!2186415))

(assert (not d!2186453))

(assert (not b!7014351))

(assert (not bs!1866578))

(assert (not d!2186461))

(assert (not d!2186457))

(assert (not b_lambda!264609))

(assert (not b!7014365))

(assert (not d!2186435))

(assert (not d!2186419))

(assert (not b!7014338))

(assert (not d!2186431))

(assert (not b!7014291))

(assert (not d!2186417))

(assert (not b_lambda!264603))

(assert (not d!2186433))

(assert (not d!2186447))

(assert (not b_lambda!264611))

(assert (not b!7014302))

(assert (not d!2186455))

(assert (not b!7014314))

(assert (not bs!1866581))

(assert (not d!2186425))

(assert (not d!2186427))

(assert (not b!7014366))

(assert (not b!7014315))

(assert (not b_lambda!264605))

(assert (not bs!1866582))

(assert (not d!2186411))

(assert (not b!7014371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

