; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!674252 () Bool)

(assert start!674252)

(declare-fun b!7005316 () Bool)

(assert (=> b!7005316 true))

(declare-fun b!7005327 () Bool)

(assert (=> b!7005327 true))

(declare-fun b!7005324 () Bool)

(assert (=> b!7005324 true))

(declare-fun e!4210776 () Bool)

(declare-fun e!4210770 () Bool)

(assert (=> b!7005316 (= e!4210776 (not e!4210770))))

(declare-fun res!2858161 () Bool)

(assert (=> b!7005316 (=> res!2858161 e!4210770)))

(declare-datatypes ((C!34850 0))(
  ( (C!34851 (val!27127 Int)) )
))
(declare-datatypes ((Regex!17290 0))(
  ( (ElementMatch!17290 (c!1300888 C!34850)) (Concat!26135 (regOne!35092 Regex!17290) (regTwo!35092 Regex!17290)) (EmptyExpr!17290) (Star!17290 (reg!17619 Regex!17290)) (EmptyLang!17290) (Union!17290 (regOne!35093 Regex!17290) (regTwo!35093 Regex!17290)) )
))
(declare-datatypes ((List!67415 0))(
  ( (Nil!67291) (Cons!67291 (h!73739 Regex!17290) (t!381168 List!67415)) )
))
(declare-datatypes ((Context!12572 0))(
  ( (Context!12573 (exprs!6786 List!67415)) )
))
(declare-fun lt!2500548 () (Set Context!12572))

(declare-datatypes ((List!67416 0))(
  ( (Nil!67292) (Cons!67292 (h!73740 C!34850) (t!381169 List!67416)) )
))
(declare-fun s!7408 () List!67416)

(declare-fun matchZipper!2830 ((Set Context!12572) List!67416) Bool)

(assert (=> b!7005316 (= res!2858161 (not (matchZipper!2830 lt!2500548 s!7408)))))

(declare-fun lt!2500562 () Context!12572)

(assert (=> b!7005316 (= lt!2500548 (set.insert lt!2500562 (as set.empty (Set Context!12572))))))

(declare-fun lt!2500572 () (Set Context!12572))

(declare-fun lambda!406889 () Int)

(declare-fun getWitness!1218 ((Set Context!12572) Int) Context!12572)

(assert (=> b!7005316 (= lt!2500562 (getWitness!1218 lt!2500572 lambda!406889))))

(declare-datatypes ((List!67417 0))(
  ( (Nil!67293) (Cons!67293 (h!73741 Context!12572) (t!381170 List!67417)) )
))
(declare-fun lt!2500547 () List!67417)

(declare-fun exists!3120 (List!67417 Int) Bool)

(assert (=> b!7005316 (exists!3120 lt!2500547 lambda!406889)))

(declare-datatypes ((Unit!161256 0))(
  ( (Unit!161257) )
))
(declare-fun lt!2500569 () Unit!161256)

(declare-fun lemmaZipperMatchesExistsMatchingContext!259 (List!67417 List!67416) Unit!161256)

(assert (=> b!7005316 (= lt!2500569 (lemmaZipperMatchesExistsMatchingContext!259 lt!2500547 s!7408))))

(declare-fun toList!10650 ((Set Context!12572)) List!67417)

(assert (=> b!7005316 (= lt!2500547 (toList!10650 lt!2500572))))

(declare-fun b!7005317 () Bool)

(declare-fun e!4210772 () Bool)

(declare-fun lt!2500558 () (Set Context!12572))

(assert (=> b!7005317 (= e!4210772 (not (matchZipper!2830 lt!2500558 (t!381169 s!7408))))))

(declare-fun lt!2500566 () Unit!161256)

(declare-fun lt!2500549 () List!67415)

(declare-fun ct2!306 () Context!12572)

(declare-fun lambda!406891 () Int)

(declare-fun lemmaConcatPreservesForall!626 (List!67415 List!67415 Int) Unit!161256)

(assert (=> b!7005317 (= lt!2500566 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(declare-fun b!7005318 () Bool)

(declare-fun res!2858175 () Bool)

(declare-fun e!4210766 () Bool)

(assert (=> b!7005318 (=> res!2858175 e!4210766)))

(declare-fun lt!2500561 () Context!12572)

(assert (=> b!7005318 (= res!2858175 (not (is-Cons!67291 (exprs!6786 lt!2500561))))))

(declare-fun b!7005319 () Bool)

(declare-fun e!4210777 () Bool)

(declare-fun e!4210765 () Bool)

(assert (=> b!7005319 (= e!4210777 e!4210765)))

(declare-fun res!2858170 () Bool)

(assert (=> b!7005319 (=> res!2858170 e!4210765)))

(declare-fun lt!2500550 () (Set Context!12572))

(assert (=> b!7005319 (= res!2858170 (not (= lt!2500550 lt!2500548)))))

(declare-fun lt!2500552 () Context!12572)

(assert (=> b!7005319 (= lt!2500550 (set.insert lt!2500552 (as set.empty (Set Context!12572))))))

(declare-fun lt!2500568 () Unit!161256)

(assert (=> b!7005319 (= lt!2500568 (lemmaConcatPreservesForall!626 (exprs!6786 lt!2500561) (exprs!6786 ct2!306) lambda!406891))))

(declare-fun b!7005320 () Bool)

(declare-fun res!2858165 () Bool)

(assert (=> b!7005320 (=> (not res!2858165) (not e!4210776))))

(assert (=> b!7005320 (= res!2858165 (is-Cons!67292 s!7408))))

(declare-fun b!7005321 () Bool)

(declare-fun e!4210774 () Bool)

(declare-fun e!4210769 () Bool)

(assert (=> b!7005321 (= e!4210774 e!4210769)))

(declare-fun res!2858171 () Bool)

(assert (=> b!7005321 (=> res!2858171 e!4210769)))

(declare-fun lt!2500555 () (Set Context!12572))

(declare-fun lt!2500567 () (Set Context!12572))

(assert (=> b!7005321 (= res!2858171 (not (= lt!2500555 lt!2500567)))))

(declare-fun lt!2500556 () (Set Context!12572))

(assert (=> b!7005321 (= lt!2500567 (set.union lt!2500556 lt!2500558))))

(declare-fun lt!2500553 () Context!12572)

(declare-fun derivationStepZipperUp!1940 (Context!12572 C!34850) (Set Context!12572))

(assert (=> b!7005321 (= lt!2500558 (derivationStepZipperUp!1940 lt!2500553 (h!73740 s!7408)))))

(declare-fun derivationStepZipperDown!2008 (Regex!17290 Context!12572 C!34850) (Set Context!12572))

(assert (=> b!7005321 (= lt!2500556 (derivationStepZipperDown!2008 (h!73739 (exprs!6786 lt!2500561)) lt!2500553 (h!73740 s!7408)))))

(declare-fun ++!15281 (List!67415 List!67415) List!67415)

(assert (=> b!7005321 (= lt!2500553 (Context!12573 (++!15281 lt!2500549 (exprs!6786 ct2!306))))))

(declare-fun lt!2500564 () Unit!161256)

(assert (=> b!7005321 (= lt!2500564 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(declare-fun lt!2500560 () Unit!161256)

(assert (=> b!7005321 (= lt!2500560 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(declare-fun res!2858164 () Bool)

(assert (=> start!674252 (=> (not res!2858164) (not e!4210776))))

(assert (=> start!674252 (= res!2858164 (matchZipper!2830 lt!2500572 s!7408))))

(declare-fun z1!570 () (Set Context!12572))

(declare-fun appendTo!411 ((Set Context!12572) Context!12572) (Set Context!12572))

(assert (=> start!674252 (= lt!2500572 (appendTo!411 z1!570 ct2!306))))

(assert (=> start!674252 e!4210776))

(declare-fun condSetEmpty!48204 () Bool)

(assert (=> start!674252 (= condSetEmpty!48204 (= z1!570 (as set.empty (Set Context!12572))))))

(declare-fun setRes!48204 () Bool)

(assert (=> start!674252 setRes!48204))

(declare-fun e!4210768 () Bool)

(declare-fun inv!86085 (Context!12572) Bool)

(assert (=> start!674252 (and (inv!86085 ct2!306) e!4210768)))

(declare-fun e!4210775 () Bool)

(assert (=> start!674252 e!4210775))

(declare-fun b!7005322 () Bool)

(declare-fun e!4210771 () Bool)

(declare-fun forall!16201 (List!67415 Int) Bool)

(assert (=> b!7005322 (= e!4210771 (forall!16201 lt!2500549 lambda!406891))))

(declare-fun b!7005323 () Bool)

(declare-fun res!2858176 () Bool)

(assert (=> b!7005323 (=> res!2858176 e!4210770)))

(assert (=> b!7005323 (= res!2858176 (not (set.member lt!2500562 lt!2500572)))))

(assert (=> b!7005324 (= e!4210765 e!4210766)))

(declare-fun res!2858166 () Bool)

(assert (=> b!7005324 (=> res!2858166 e!4210766)))

(declare-fun derivationStepZipper!2770 ((Set Context!12572) C!34850) (Set Context!12572))

(assert (=> b!7005324 (= res!2858166 (not (= (derivationStepZipper!2770 lt!2500550 (h!73740 s!7408)) lt!2500555)))))

(declare-fun lambda!406892 () Int)

(declare-fun flatMap!2276 ((Set Context!12572) Int) (Set Context!12572))

(assert (=> b!7005324 (= (flatMap!2276 lt!2500550 lambda!406892) (derivationStepZipperUp!1940 lt!2500552 (h!73740 s!7408)))))

(declare-fun lt!2500551 () Unit!161256)

(declare-fun lemmaFlatMapOnSingletonSet!1791 ((Set Context!12572) Context!12572 Int) Unit!161256)

(assert (=> b!7005324 (= lt!2500551 (lemmaFlatMapOnSingletonSet!1791 lt!2500550 lt!2500552 lambda!406892))))

(assert (=> b!7005324 (= lt!2500555 (derivationStepZipperUp!1940 lt!2500552 (h!73740 s!7408)))))

(declare-fun lt!2500574 () Unit!161256)

(assert (=> b!7005324 (= lt!2500574 (lemmaConcatPreservesForall!626 (exprs!6786 lt!2500561) (exprs!6786 ct2!306) lambda!406891))))

(declare-fun b!7005325 () Bool)

(declare-fun e!4210773 () Bool)

(assert (=> b!7005325 (= e!4210773 (matchZipper!2830 lt!2500558 (t!381169 s!7408)))))

(declare-fun setIsEmpty!48204 () Bool)

(assert (=> setIsEmpty!48204 setRes!48204))

(declare-fun b!7005326 () Bool)

(declare-fun e!4210778 () Bool)

(assert (=> b!7005326 (= e!4210778 e!4210771)))

(declare-fun res!2858173 () Bool)

(assert (=> b!7005326 (=> res!2858173 e!4210771)))

(assert (=> b!7005326 (= res!2858173 (matchZipper!2830 lt!2500558 (t!381169 s!7408)))))

(declare-fun lt!2500573 () Unit!161256)

(assert (=> b!7005326 (= lt!2500573 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(assert (=> b!7005327 (= e!4210770 e!4210777)))

(declare-fun res!2858168 () Bool)

(assert (=> b!7005327 (=> res!2858168 e!4210777)))

(assert (=> b!7005327 (= res!2858168 (or (not (= lt!2500552 lt!2500562)) (not (set.member lt!2500561 z1!570))))))

(assert (=> b!7005327 (= lt!2500552 (Context!12573 (++!15281 (exprs!6786 lt!2500561) (exprs!6786 ct2!306))))))

(declare-fun lt!2500565 () Unit!161256)

(assert (=> b!7005327 (= lt!2500565 (lemmaConcatPreservesForall!626 (exprs!6786 lt!2500561) (exprs!6786 ct2!306) lambda!406891))))

(declare-fun lambda!406890 () Int)

(declare-fun mapPost2!145 ((Set Context!12572) Int Context!12572) Context!12572)

(assert (=> b!7005327 (= lt!2500561 (mapPost2!145 z1!570 lambda!406890 lt!2500562))))

(declare-fun b!7005328 () Bool)

(assert (=> b!7005328 (= e!4210766 e!4210774)))

(declare-fun res!2858172 () Bool)

(assert (=> b!7005328 (=> res!2858172 e!4210774)))

(declare-fun nullable!7050 (Regex!17290) Bool)

(assert (=> b!7005328 (= res!2858172 (not (nullable!7050 (h!73739 (exprs!6786 lt!2500561)))))))

(declare-fun tail!13348 (List!67415) List!67415)

(assert (=> b!7005328 (= lt!2500549 (tail!13348 (exprs!6786 lt!2500561)))))

(declare-fun b!7005329 () Bool)

(declare-fun res!2858163 () Bool)

(assert (=> b!7005329 (=> res!2858163 e!4210778)))

(declare-fun lt!2500570 () Bool)

(assert (=> b!7005329 (= res!2858163 (not lt!2500570))))

(declare-fun b!7005330 () Bool)

(assert (=> b!7005330 (= e!4210769 e!4210778)))

(declare-fun res!2858167 () Bool)

(assert (=> b!7005330 (=> res!2858167 e!4210778)))

(assert (=> b!7005330 (= res!2858167 e!4210772)))

(declare-fun res!2858169 () Bool)

(assert (=> b!7005330 (=> (not res!2858169) (not e!4210772))))

(declare-fun lt!2500554 () Bool)

(assert (=> b!7005330 (= res!2858169 (not (= lt!2500570 lt!2500554)))))

(assert (=> b!7005330 (= lt!2500570 (matchZipper!2830 lt!2500555 (t!381169 s!7408)))))

(declare-fun lt!2500563 () Unit!161256)

(assert (=> b!7005330 (= lt!2500563 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(assert (=> b!7005330 (= (matchZipper!2830 lt!2500567 (t!381169 s!7408)) e!4210773)))

(declare-fun res!2858174 () Bool)

(assert (=> b!7005330 (=> res!2858174 e!4210773)))

(assert (=> b!7005330 (= res!2858174 lt!2500554)))

(assert (=> b!7005330 (= lt!2500554 (matchZipper!2830 lt!2500556 (t!381169 s!7408)))))

(declare-fun lt!2500559 () Unit!161256)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1463 ((Set Context!12572) (Set Context!12572) List!67416) Unit!161256)

(assert (=> b!7005330 (= lt!2500559 (lemmaZipperConcatMatchesSameAsBothZippers!1463 lt!2500556 lt!2500558 (t!381169 s!7408)))))

(declare-fun lt!2500557 () Unit!161256)

(assert (=> b!7005330 (= lt!2500557 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(declare-fun lt!2500571 () Unit!161256)

(assert (=> b!7005330 (= lt!2500571 (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(declare-fun b!7005331 () Bool)

(declare-fun e!4210767 () Bool)

(declare-fun tp!1931592 () Bool)

(assert (=> b!7005331 (= e!4210767 tp!1931592)))

(declare-fun b!7005332 () Bool)

(declare-fun tp!1931590 () Bool)

(assert (=> b!7005332 (= e!4210768 tp!1931590)))

(declare-fun setElem!48204 () Context!12572)

(declare-fun setNonEmpty!48204 () Bool)

(declare-fun tp!1931591 () Bool)

(assert (=> setNonEmpty!48204 (= setRes!48204 (and tp!1931591 (inv!86085 setElem!48204) e!4210767))))

(declare-fun setRest!48204 () (Set Context!12572))

(assert (=> setNonEmpty!48204 (= z1!570 (set.union (set.insert setElem!48204 (as set.empty (Set Context!12572))) setRest!48204))))

(declare-fun b!7005333 () Bool)

(declare-fun res!2858162 () Bool)

(assert (=> b!7005333 (=> res!2858162 e!4210766)))

(declare-fun isEmpty!39301 (List!67415) Bool)

(assert (=> b!7005333 (= res!2858162 (isEmpty!39301 (exprs!6786 lt!2500561)))))

(declare-fun b!7005334 () Bool)

(declare-fun tp_is_empty!43805 () Bool)

(declare-fun tp!1931589 () Bool)

(assert (=> b!7005334 (= e!4210775 (and tp_is_empty!43805 tp!1931589))))

(assert (= (and start!674252 res!2858164) b!7005320))

(assert (= (and b!7005320 res!2858165) b!7005316))

(assert (= (and b!7005316 (not res!2858161)) b!7005323))

(assert (= (and b!7005323 (not res!2858176)) b!7005327))

(assert (= (and b!7005327 (not res!2858168)) b!7005319))

(assert (= (and b!7005319 (not res!2858170)) b!7005324))

(assert (= (and b!7005324 (not res!2858166)) b!7005318))

(assert (= (and b!7005318 (not res!2858175)) b!7005333))

(assert (= (and b!7005333 (not res!2858162)) b!7005328))

(assert (= (and b!7005328 (not res!2858172)) b!7005321))

(assert (= (and b!7005321 (not res!2858171)) b!7005330))

(assert (= (and b!7005330 (not res!2858174)) b!7005325))

(assert (= (and b!7005330 res!2858169) b!7005317))

(assert (= (and b!7005330 (not res!2858167)) b!7005329))

(assert (= (and b!7005329 (not res!2858163)) b!7005326))

(assert (= (and b!7005326 (not res!2858173)) b!7005322))

(assert (= (and start!674252 condSetEmpty!48204) setIsEmpty!48204))

(assert (= (and start!674252 (not condSetEmpty!48204)) setNonEmpty!48204))

(assert (= setNonEmpty!48204 b!7005331))

(assert (= start!674252 b!7005332))

(assert (= (and start!674252 (is-Cons!67292 s!7408)) b!7005334))

(declare-fun m!7701980 () Bool)

(assert (=> b!7005317 m!7701980))

(declare-fun m!7701982 () Bool)

(assert (=> b!7005317 m!7701982))

(declare-fun m!7701984 () Bool)

(assert (=> setNonEmpty!48204 m!7701984))

(assert (=> b!7005326 m!7701980))

(assert (=> b!7005326 m!7701982))

(declare-fun m!7701986 () Bool)

(assert (=> b!7005324 m!7701986))

(declare-fun m!7701988 () Bool)

(assert (=> b!7005324 m!7701988))

(declare-fun m!7701990 () Bool)

(assert (=> b!7005324 m!7701990))

(declare-fun m!7701992 () Bool)

(assert (=> b!7005324 m!7701992))

(declare-fun m!7701994 () Bool)

(assert (=> b!7005324 m!7701994))

(assert (=> b!7005325 m!7701980))

(declare-fun m!7701996 () Bool)

(assert (=> start!674252 m!7701996))

(declare-fun m!7701998 () Bool)

(assert (=> start!674252 m!7701998))

(declare-fun m!7702000 () Bool)

(assert (=> start!674252 m!7702000))

(assert (=> b!7005330 m!7701982))

(assert (=> b!7005330 m!7701982))

(assert (=> b!7005330 m!7701982))

(declare-fun m!7702002 () Bool)

(assert (=> b!7005330 m!7702002))

(declare-fun m!7702004 () Bool)

(assert (=> b!7005330 m!7702004))

(declare-fun m!7702006 () Bool)

(assert (=> b!7005330 m!7702006))

(declare-fun m!7702008 () Bool)

(assert (=> b!7005330 m!7702008))

(declare-fun m!7702010 () Bool)

(assert (=> b!7005333 m!7702010))

(declare-fun m!7702012 () Bool)

(assert (=> b!7005328 m!7702012))

(declare-fun m!7702014 () Bool)

(assert (=> b!7005328 m!7702014))

(declare-fun m!7702016 () Bool)

(assert (=> b!7005316 m!7702016))

(declare-fun m!7702018 () Bool)

(assert (=> b!7005316 m!7702018))

(declare-fun m!7702020 () Bool)

(assert (=> b!7005316 m!7702020))

(declare-fun m!7702022 () Bool)

(assert (=> b!7005316 m!7702022))

(declare-fun m!7702024 () Bool)

(assert (=> b!7005316 m!7702024))

(declare-fun m!7702026 () Bool)

(assert (=> b!7005316 m!7702026))

(declare-fun m!7702028 () Bool)

(assert (=> b!7005323 m!7702028))

(declare-fun m!7702030 () Bool)

(assert (=> b!7005319 m!7702030))

(assert (=> b!7005319 m!7701992))

(declare-fun m!7702032 () Bool)

(assert (=> b!7005327 m!7702032))

(declare-fun m!7702034 () Bool)

(assert (=> b!7005327 m!7702034))

(assert (=> b!7005327 m!7701992))

(declare-fun m!7702036 () Bool)

(assert (=> b!7005327 m!7702036))

(declare-fun m!7702038 () Bool)

(assert (=> b!7005322 m!7702038))

(declare-fun m!7702040 () Bool)

(assert (=> b!7005321 m!7702040))

(assert (=> b!7005321 m!7701982))

(assert (=> b!7005321 m!7701982))

(declare-fun m!7702042 () Bool)

(assert (=> b!7005321 m!7702042))

(declare-fun m!7702044 () Bool)

(assert (=> b!7005321 m!7702044))

(push 1)

(assert (not b!7005327))

(assert (not b!7005317))

(assert (not b!7005328))

(assert (not b!7005322))

(assert (not start!674252))

(assert (not b!7005326))

(assert (not b!7005334))

(assert (not b!7005321))

(assert (not b!7005324))

(assert (not b!7005325))

(assert (not b!7005333))

(assert (not setNonEmpty!48204))

(assert (not b!7005331))

(assert (not b!7005330))

(assert (not b!7005332))

(assert (not b!7005316))

(assert (not b!7005319))

(assert tp_is_empty!43805)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1865338 () Bool)

(declare-fun d!2183625 () Bool)

(assert (= bs!1865338 (and d!2183625 b!7005316)))

(declare-fun lambda!406931 () Int)

(assert (=> bs!1865338 (not (= lambda!406931 lambda!406889))))

(assert (=> d!2183625 true))

(declare-fun order!27995 () Int)

(declare-fun dynLambda!27034 (Int Int) Int)

(assert (=> d!2183625 (< (dynLambda!27034 order!27995 lambda!406889) (dynLambda!27034 order!27995 lambda!406931))))

(declare-fun forall!16203 (List!67417 Int) Bool)

(assert (=> d!2183625 (= (exists!3120 lt!2500547 lambda!406889) (not (forall!16203 lt!2500547 lambda!406931)))))

(declare-fun bs!1865339 () Bool)

(assert (= bs!1865339 d!2183625))

(declare-fun m!7702112 () Bool)

(assert (=> bs!1865339 m!7702112))

(assert (=> b!7005316 d!2183625))

(declare-fun d!2183627 () Bool)

(declare-fun e!4210823 () Bool)

(assert (=> d!2183627 e!4210823))

(declare-fun res!2858228 () Bool)

(assert (=> d!2183627 (=> (not res!2858228) (not e!4210823))))

(declare-fun lt!2500663 () Context!12572)

(declare-fun dynLambda!27035 (Int Context!12572) Bool)

(assert (=> d!2183627 (= res!2858228 (dynLambda!27035 lambda!406889 lt!2500663))))

(declare-fun getWitness!1220 (List!67417 Int) Context!12572)

(assert (=> d!2183627 (= lt!2500663 (getWitness!1220 (toList!10650 lt!2500572) lambda!406889))))

(declare-fun exists!3122 ((Set Context!12572) Int) Bool)

(assert (=> d!2183627 (exists!3122 lt!2500572 lambda!406889)))

(assert (=> d!2183627 (= (getWitness!1218 lt!2500572 lambda!406889) lt!2500663)))

(declare-fun b!7005408 () Bool)

(assert (=> b!7005408 (= e!4210823 (set.member lt!2500663 lt!2500572))))

(assert (= (and d!2183627 res!2858228) b!7005408))

(declare-fun b_lambda!263975 () Bool)

(assert (=> (not b_lambda!263975) (not d!2183627)))

(declare-fun m!7702114 () Bool)

(assert (=> d!2183627 m!7702114))

(assert (=> d!2183627 m!7702022))

(assert (=> d!2183627 m!7702022))

(declare-fun m!7702116 () Bool)

(assert (=> d!2183627 m!7702116))

(declare-fun m!7702118 () Bool)

(assert (=> d!2183627 m!7702118))

(declare-fun m!7702120 () Bool)

(assert (=> b!7005408 m!7702120))

(assert (=> b!7005316 d!2183627))

(declare-fun d!2183629 () Bool)

(declare-fun c!1300900 () Bool)

(declare-fun isEmpty!39303 (List!67416) Bool)

(assert (=> d!2183629 (= c!1300900 (isEmpty!39303 s!7408))))

(declare-fun e!4210826 () Bool)

(assert (=> d!2183629 (= (matchZipper!2830 lt!2500548 s!7408) e!4210826)))

(declare-fun b!7005413 () Bool)

(declare-fun nullableZipper!2471 ((Set Context!12572)) Bool)

(assert (=> b!7005413 (= e!4210826 (nullableZipper!2471 lt!2500548))))

(declare-fun b!7005414 () Bool)

(declare-fun head!14155 (List!67416) C!34850)

(declare-fun tail!13350 (List!67416) List!67416)

(assert (=> b!7005414 (= e!4210826 (matchZipper!2830 (derivationStepZipper!2770 lt!2500548 (head!14155 s!7408)) (tail!13350 s!7408)))))

(assert (= (and d!2183629 c!1300900) b!7005413))

(assert (= (and d!2183629 (not c!1300900)) b!7005414))

(declare-fun m!7702122 () Bool)

(assert (=> d!2183629 m!7702122))

(declare-fun m!7702124 () Bool)

(assert (=> b!7005413 m!7702124))

(declare-fun m!7702126 () Bool)

(assert (=> b!7005414 m!7702126))

(assert (=> b!7005414 m!7702126))

(declare-fun m!7702128 () Bool)

(assert (=> b!7005414 m!7702128))

(declare-fun m!7702130 () Bool)

(assert (=> b!7005414 m!7702130))

(assert (=> b!7005414 m!7702128))

(assert (=> b!7005414 m!7702130))

(declare-fun m!7702132 () Bool)

(assert (=> b!7005414 m!7702132))

(assert (=> b!7005316 d!2183629))

(declare-fun bs!1865340 () Bool)

(declare-fun d!2183631 () Bool)

(assert (= bs!1865340 (and d!2183631 b!7005316)))

(declare-fun lambda!406934 () Int)

(assert (=> bs!1865340 (= lambda!406934 lambda!406889)))

(declare-fun bs!1865341 () Bool)

(assert (= bs!1865341 (and d!2183631 d!2183625)))

(assert (=> bs!1865341 (not (= lambda!406934 lambda!406931))))

(assert (=> d!2183631 true))

(assert (=> d!2183631 (exists!3120 lt!2500547 lambda!406934)))

(declare-fun lt!2500666 () Unit!161256)

(declare-fun choose!52581 (List!67417 List!67416) Unit!161256)

(assert (=> d!2183631 (= lt!2500666 (choose!52581 lt!2500547 s!7408))))

(declare-fun content!13341 (List!67417) (Set Context!12572))

(assert (=> d!2183631 (matchZipper!2830 (content!13341 lt!2500547) s!7408)))

(assert (=> d!2183631 (= (lemmaZipperMatchesExistsMatchingContext!259 lt!2500547 s!7408) lt!2500666)))

(declare-fun bs!1865342 () Bool)

(assert (= bs!1865342 d!2183631))

(declare-fun m!7702134 () Bool)

(assert (=> bs!1865342 m!7702134))

(declare-fun m!7702136 () Bool)

(assert (=> bs!1865342 m!7702136))

(declare-fun m!7702138 () Bool)

(assert (=> bs!1865342 m!7702138))

(assert (=> bs!1865342 m!7702138))

(declare-fun m!7702140 () Bool)

(assert (=> bs!1865342 m!7702140))

(assert (=> b!7005316 d!2183631))

(declare-fun d!2183633 () Bool)

(declare-fun e!4210829 () Bool)

(assert (=> d!2183633 e!4210829))

(declare-fun res!2858231 () Bool)

(assert (=> d!2183633 (=> (not res!2858231) (not e!4210829))))

(declare-fun lt!2500669 () List!67417)

(declare-fun noDuplicate!2552 (List!67417) Bool)

(assert (=> d!2183633 (= res!2858231 (noDuplicate!2552 lt!2500669))))

(declare-fun choose!52582 ((Set Context!12572)) List!67417)

(assert (=> d!2183633 (= lt!2500669 (choose!52582 lt!2500572))))

(assert (=> d!2183633 (= (toList!10650 lt!2500572) lt!2500669)))

(declare-fun b!7005417 () Bool)

(assert (=> b!7005417 (= e!4210829 (= (content!13341 lt!2500669) lt!2500572))))

(assert (= (and d!2183633 res!2858231) b!7005417))

(declare-fun m!7702142 () Bool)

(assert (=> d!2183633 m!7702142))

(declare-fun m!7702144 () Bool)

(assert (=> d!2183633 m!7702144))

(declare-fun m!7702146 () Bool)

(assert (=> b!7005417 m!7702146))

(assert (=> b!7005316 d!2183633))

(declare-fun d!2183635 () Bool)

(declare-fun c!1300903 () Bool)

(assert (=> d!2183635 (= c!1300903 (isEmpty!39303 (t!381169 s!7408)))))

(declare-fun e!4210830 () Bool)

(assert (=> d!2183635 (= (matchZipper!2830 lt!2500558 (t!381169 s!7408)) e!4210830)))

(declare-fun b!7005418 () Bool)

(assert (=> b!7005418 (= e!4210830 (nullableZipper!2471 lt!2500558))))

(declare-fun b!7005419 () Bool)

(assert (=> b!7005419 (= e!4210830 (matchZipper!2830 (derivationStepZipper!2770 lt!2500558 (head!14155 (t!381169 s!7408))) (tail!13350 (t!381169 s!7408))))))

(assert (= (and d!2183635 c!1300903) b!7005418))

(assert (= (and d!2183635 (not c!1300903)) b!7005419))

(declare-fun m!7702148 () Bool)

(assert (=> d!2183635 m!7702148))

(declare-fun m!7702150 () Bool)

(assert (=> b!7005418 m!7702150))

(declare-fun m!7702152 () Bool)

(assert (=> b!7005419 m!7702152))

(assert (=> b!7005419 m!7702152))

(declare-fun m!7702154 () Bool)

(assert (=> b!7005419 m!7702154))

(declare-fun m!7702156 () Bool)

(assert (=> b!7005419 m!7702156))

(assert (=> b!7005419 m!7702154))

(assert (=> b!7005419 m!7702156))

(declare-fun m!7702158 () Bool)

(assert (=> b!7005419 m!7702158))

(assert (=> b!7005325 d!2183635))

(declare-fun d!2183637 () Bool)

(assert (=> d!2183637 (= (isEmpty!39301 (exprs!6786 lt!2500561)) (is-Nil!67291 (exprs!6786 lt!2500561)))))

(assert (=> b!7005333 d!2183637))

(declare-fun d!2183639 () Bool)

(assert (=> d!2183639 (forall!16201 (++!15281 (exprs!6786 lt!2500561) (exprs!6786 ct2!306)) lambda!406891)))

(declare-fun lt!2500672 () Unit!161256)

(declare-fun choose!52583 (List!67415 List!67415 Int) Unit!161256)

(assert (=> d!2183639 (= lt!2500672 (choose!52583 (exprs!6786 lt!2500561) (exprs!6786 ct2!306) lambda!406891))))

(assert (=> d!2183639 (forall!16201 (exprs!6786 lt!2500561) lambda!406891)))

(assert (=> d!2183639 (= (lemmaConcatPreservesForall!626 (exprs!6786 lt!2500561) (exprs!6786 ct2!306) lambda!406891) lt!2500672)))

(declare-fun bs!1865343 () Bool)

(assert (= bs!1865343 d!2183639))

(assert (=> bs!1865343 m!7702034))

(assert (=> bs!1865343 m!7702034))

(declare-fun m!7702160 () Bool)

(assert (=> bs!1865343 m!7702160))

(declare-fun m!7702162 () Bool)

(assert (=> bs!1865343 m!7702162))

(declare-fun m!7702164 () Bool)

(assert (=> bs!1865343 m!7702164))

(assert (=> b!7005324 d!2183639))

(declare-fun bs!1865344 () Bool)

(declare-fun d!2183641 () Bool)

(assert (= bs!1865344 (and d!2183641 b!7005324)))

(declare-fun lambda!406937 () Int)

(assert (=> bs!1865344 (= lambda!406937 lambda!406892)))

(assert (=> d!2183641 true))

(assert (=> d!2183641 (= (derivationStepZipper!2770 lt!2500550 (h!73740 s!7408)) (flatMap!2276 lt!2500550 lambda!406937))))

(declare-fun bs!1865345 () Bool)

(assert (= bs!1865345 d!2183641))

(declare-fun m!7702166 () Bool)

(assert (=> bs!1865345 m!7702166))

(assert (=> b!7005324 d!2183641))

(declare-fun d!2183643 () Bool)

(declare-fun choose!52584 ((Set Context!12572) Int) (Set Context!12572))

(assert (=> d!2183643 (= (flatMap!2276 lt!2500550 lambda!406892) (choose!52584 lt!2500550 lambda!406892))))

(declare-fun bs!1865346 () Bool)

(assert (= bs!1865346 d!2183643))

(declare-fun m!7702168 () Bool)

(assert (=> bs!1865346 m!7702168))

(assert (=> b!7005324 d!2183643))

(declare-fun b!7005432 () Bool)

(declare-fun call!636103 () (Set Context!12572))

(declare-fun e!4210837 () (Set Context!12572))

(assert (=> b!7005432 (= e!4210837 (set.union call!636103 (derivationStepZipperUp!1940 (Context!12573 (t!381168 (exprs!6786 lt!2500552))) (h!73740 s!7408))))))

(declare-fun bm!636098 () Bool)

(assert (=> bm!636098 (= call!636103 (derivationStepZipperDown!2008 (h!73739 (exprs!6786 lt!2500552)) (Context!12573 (t!381168 (exprs!6786 lt!2500552))) (h!73740 s!7408)))))

(declare-fun b!7005433 () Bool)

(declare-fun e!4210839 () (Set Context!12572))

(assert (=> b!7005433 (= e!4210839 call!636103)))

(declare-fun b!7005434 () Bool)

(assert (=> b!7005434 (= e!4210839 (as set.empty (Set Context!12572)))))

(declare-fun b!7005435 () Bool)

(assert (=> b!7005435 (= e!4210837 e!4210839)))

(declare-fun c!1300911 () Bool)

(assert (=> b!7005435 (= c!1300911 (is-Cons!67291 (exprs!6786 lt!2500552)))))

(declare-fun d!2183645 () Bool)

(declare-fun c!1300910 () Bool)

(declare-fun e!4210838 () Bool)

(assert (=> d!2183645 (= c!1300910 e!4210838)))

(declare-fun res!2858235 () Bool)

(assert (=> d!2183645 (=> (not res!2858235) (not e!4210838))))

(assert (=> d!2183645 (= res!2858235 (is-Cons!67291 (exprs!6786 lt!2500552)))))

(assert (=> d!2183645 (= (derivationStepZipperUp!1940 lt!2500552 (h!73740 s!7408)) e!4210837)))

(declare-fun b!7005436 () Bool)

(assert (=> b!7005436 (= e!4210838 (nullable!7050 (h!73739 (exprs!6786 lt!2500552))))))

(assert (= (and d!2183645 res!2858235) b!7005436))

(assert (= (and d!2183645 c!1300910) b!7005432))

(assert (= (and d!2183645 (not c!1300910)) b!7005435))

(assert (= (and b!7005435 c!1300911) b!7005433))

(assert (= (and b!7005435 (not c!1300911)) b!7005434))

(assert (= (or b!7005432 b!7005433) bm!636098))

(declare-fun m!7702170 () Bool)

(assert (=> b!7005432 m!7702170))

(declare-fun m!7702172 () Bool)

(assert (=> bm!636098 m!7702172))

(declare-fun m!7702174 () Bool)

(assert (=> b!7005436 m!7702174))

(assert (=> b!7005324 d!2183645))

(declare-fun d!2183647 () Bool)

(declare-fun dynLambda!27036 (Int Context!12572) (Set Context!12572))

(assert (=> d!2183647 (= (flatMap!2276 lt!2500550 lambda!406892) (dynLambda!27036 lambda!406892 lt!2500552))))

(declare-fun lt!2500675 () Unit!161256)

(declare-fun choose!52585 ((Set Context!12572) Context!12572 Int) Unit!161256)

(assert (=> d!2183647 (= lt!2500675 (choose!52585 lt!2500550 lt!2500552 lambda!406892))))

(assert (=> d!2183647 (= lt!2500550 (set.insert lt!2500552 (as set.empty (Set Context!12572))))))

(assert (=> d!2183647 (= (lemmaFlatMapOnSingletonSet!1791 lt!2500550 lt!2500552 lambda!406892) lt!2500675)))

(declare-fun b_lambda!263977 () Bool)

(assert (=> (not b_lambda!263977) (not d!2183647)))

(declare-fun bs!1865347 () Bool)

(assert (= bs!1865347 d!2183647))

(assert (=> bs!1865347 m!7701986))

(declare-fun m!7702176 () Bool)

(assert (=> bs!1865347 m!7702176))

(declare-fun m!7702178 () Bool)

(assert (=> bs!1865347 m!7702178))

(assert (=> bs!1865347 m!7702030))

(assert (=> b!7005324 d!2183647))

(declare-fun bs!1865348 () Bool)

(declare-fun d!2183649 () Bool)

(assert (= bs!1865348 (and d!2183649 b!7005327)))

(declare-fun lambda!406940 () Int)

(assert (=> bs!1865348 (= lambda!406940 lambda!406891)))

(assert (=> d!2183649 (= (inv!86085 setElem!48204) (forall!16201 (exprs!6786 setElem!48204) lambda!406940))))

(declare-fun bs!1865349 () Bool)

(assert (= bs!1865349 d!2183649))

(declare-fun m!7702180 () Bool)

(assert (=> bs!1865349 m!7702180))

(assert (=> setNonEmpty!48204 d!2183649))

(declare-fun d!2183651 () Bool)

(declare-fun res!2858240 () Bool)

(declare-fun e!4210844 () Bool)

(assert (=> d!2183651 (=> res!2858240 e!4210844)))

(assert (=> d!2183651 (= res!2858240 (is-Nil!67291 lt!2500549))))

(assert (=> d!2183651 (= (forall!16201 lt!2500549 lambda!406891) e!4210844)))

(declare-fun b!7005441 () Bool)

(declare-fun e!4210845 () Bool)

(assert (=> b!7005441 (= e!4210844 e!4210845)))

(declare-fun res!2858241 () Bool)

(assert (=> b!7005441 (=> (not res!2858241) (not e!4210845))))

(declare-fun dynLambda!27037 (Int Regex!17290) Bool)

(assert (=> b!7005441 (= res!2858241 (dynLambda!27037 lambda!406891 (h!73739 lt!2500549)))))

(declare-fun b!7005442 () Bool)

(assert (=> b!7005442 (= e!4210845 (forall!16201 (t!381168 lt!2500549) lambda!406891))))

(assert (= (and d!2183651 (not res!2858240)) b!7005441))

(assert (= (and b!7005441 res!2858241) b!7005442))

(declare-fun b_lambda!263979 () Bool)

(assert (=> (not b_lambda!263979) (not b!7005441)))

(declare-fun m!7702182 () Bool)

(assert (=> b!7005441 m!7702182))

(declare-fun m!7702184 () Bool)

(assert (=> b!7005442 m!7702184))

(assert (=> b!7005322 d!2183651))

(declare-fun b!7005454 () Bool)

(declare-fun e!4210851 () Bool)

(declare-fun lt!2500678 () List!67415)

(assert (=> b!7005454 (= e!4210851 (or (not (= (exprs!6786 ct2!306) Nil!67291)) (= lt!2500678 lt!2500549)))))

(declare-fun b!7005453 () Bool)

(declare-fun res!2858247 () Bool)

(assert (=> b!7005453 (=> (not res!2858247) (not e!4210851))))

(declare-fun size!40955 (List!67415) Int)

(assert (=> b!7005453 (= res!2858247 (= (size!40955 lt!2500678) (+ (size!40955 lt!2500549) (size!40955 (exprs!6786 ct2!306)))))))

(declare-fun d!2183653 () Bool)

(assert (=> d!2183653 e!4210851))

(declare-fun res!2858246 () Bool)

(assert (=> d!2183653 (=> (not res!2858246) (not e!4210851))))

(declare-fun content!13342 (List!67415) (Set Regex!17290))

(assert (=> d!2183653 (= res!2858246 (= (content!13342 lt!2500678) (set.union (content!13342 lt!2500549) (content!13342 (exprs!6786 ct2!306)))))))

(declare-fun e!4210850 () List!67415)

(assert (=> d!2183653 (= lt!2500678 e!4210850)))

(declare-fun c!1300914 () Bool)

(assert (=> d!2183653 (= c!1300914 (is-Nil!67291 lt!2500549))))

(assert (=> d!2183653 (= (++!15281 lt!2500549 (exprs!6786 ct2!306)) lt!2500678)))

(declare-fun b!7005452 () Bool)

(assert (=> b!7005452 (= e!4210850 (Cons!67291 (h!73739 lt!2500549) (++!15281 (t!381168 lt!2500549) (exprs!6786 ct2!306))))))

(declare-fun b!7005451 () Bool)

(assert (=> b!7005451 (= e!4210850 (exprs!6786 ct2!306))))

(assert (= (and d!2183653 c!1300914) b!7005451))

(assert (= (and d!2183653 (not c!1300914)) b!7005452))

(assert (= (and d!2183653 res!2858246) b!7005453))

(assert (= (and b!7005453 res!2858247) b!7005454))

(declare-fun m!7702186 () Bool)

(assert (=> b!7005453 m!7702186))

(declare-fun m!7702188 () Bool)

(assert (=> b!7005453 m!7702188))

(declare-fun m!7702190 () Bool)

(assert (=> b!7005453 m!7702190))

(declare-fun m!7702192 () Bool)

(assert (=> d!2183653 m!7702192))

(declare-fun m!7702194 () Bool)

(assert (=> d!2183653 m!7702194))

(declare-fun m!7702196 () Bool)

(assert (=> d!2183653 m!7702196))

(declare-fun m!7702198 () Bool)

(assert (=> b!7005452 m!7702198))

(assert (=> b!7005321 d!2183653))

(declare-fun d!2183655 () Bool)

(assert (=> d!2183655 (forall!16201 (++!15281 lt!2500549 (exprs!6786 ct2!306)) lambda!406891)))

(declare-fun lt!2500679 () Unit!161256)

(assert (=> d!2183655 (= lt!2500679 (choose!52583 lt!2500549 (exprs!6786 ct2!306) lambda!406891))))

(assert (=> d!2183655 (forall!16201 lt!2500549 lambda!406891)))

(assert (=> d!2183655 (= (lemmaConcatPreservesForall!626 lt!2500549 (exprs!6786 ct2!306) lambda!406891) lt!2500679)))

(declare-fun bs!1865350 () Bool)

(assert (= bs!1865350 d!2183655))

(assert (=> bs!1865350 m!7702042))

(assert (=> bs!1865350 m!7702042))

(declare-fun m!7702200 () Bool)

(assert (=> bs!1865350 m!7702200))

(declare-fun m!7702202 () Bool)

(assert (=> bs!1865350 m!7702202))

(assert (=> bs!1865350 m!7702038))

(assert (=> b!7005321 d!2183655))

(declare-fun b!7005477 () Bool)

(declare-fun c!1300926 () Bool)

(assert (=> b!7005477 (= c!1300926 (is-Star!17290 (h!73739 (exprs!6786 lt!2500561))))))

(declare-fun e!4210867 () (Set Context!12572))

(declare-fun e!4210866 () (Set Context!12572))

(assert (=> b!7005477 (= e!4210867 e!4210866)))

(declare-fun b!7005478 () Bool)

(declare-fun e!4210864 () Bool)

(assert (=> b!7005478 (= e!4210864 (nullable!7050 (regOne!35092 (h!73739 (exprs!6786 lt!2500561)))))))

(declare-fun b!7005479 () Bool)

(declare-fun e!4210869 () (Set Context!12572))

(declare-fun e!4210868 () (Set Context!12572))

(assert (=> b!7005479 (= e!4210869 e!4210868)))

(declare-fun c!1300925 () Bool)

(assert (=> b!7005479 (= c!1300925 (is-Union!17290 (h!73739 (exprs!6786 lt!2500561))))))

(declare-fun c!1300928 () Bool)

(declare-fun bm!636111 () Bool)

(declare-fun call!636117 () List!67415)

(declare-fun c!1300927 () Bool)

(declare-fun call!636120 () (Set Context!12572))

(assert (=> bm!636111 (= call!636120 (derivationStepZipperDown!2008 (ite c!1300925 (regTwo!35093 (h!73739 (exprs!6786 lt!2500561))) (ite c!1300928 (regTwo!35092 (h!73739 (exprs!6786 lt!2500561))) (ite c!1300927 (regOne!35092 (h!73739 (exprs!6786 lt!2500561))) (reg!17619 (h!73739 (exprs!6786 lt!2500561)))))) (ite (or c!1300925 c!1300928) lt!2500553 (Context!12573 call!636117)) (h!73740 s!7408)))))

(declare-fun d!2183657 () Bool)

(declare-fun c!1300929 () Bool)

(assert (=> d!2183657 (= c!1300929 (and (is-ElementMatch!17290 (h!73739 (exprs!6786 lt!2500561))) (= (c!1300888 (h!73739 (exprs!6786 lt!2500561))) (h!73740 s!7408))))))

(assert (=> d!2183657 (= (derivationStepZipperDown!2008 (h!73739 (exprs!6786 lt!2500561)) lt!2500553 (h!73740 s!7408)) e!4210869)))

(declare-fun call!636119 () List!67415)

(declare-fun bm!636112 () Bool)

(declare-fun $colon$colon!2514 (List!67415 Regex!17290) List!67415)

(assert (=> bm!636112 (= call!636119 ($colon$colon!2514 (exprs!6786 lt!2500553) (ite (or c!1300928 c!1300927) (regTwo!35092 (h!73739 (exprs!6786 lt!2500561))) (h!73739 (exprs!6786 lt!2500561)))))))

(declare-fun b!7005480 () Bool)

(assert (=> b!7005480 (= e!4210866 (as set.empty (Set Context!12572)))))

(declare-fun bm!636113 () Bool)

(declare-fun call!636121 () (Set Context!12572))

(assert (=> bm!636113 (= call!636121 call!636120)))

(declare-fun b!7005481 () Bool)

(assert (=> b!7005481 (= e!4210869 (set.insert lt!2500553 (as set.empty (Set Context!12572))))))

(declare-fun b!7005482 () Bool)

(assert (=> b!7005482 (= c!1300928 e!4210864)))

(declare-fun res!2858250 () Bool)

(assert (=> b!7005482 (=> (not res!2858250) (not e!4210864))))

(assert (=> b!7005482 (= res!2858250 (is-Concat!26135 (h!73739 (exprs!6786 lt!2500561))))))

(declare-fun e!4210865 () (Set Context!12572))

(assert (=> b!7005482 (= e!4210868 e!4210865)))

(declare-fun bm!636114 () Bool)

(assert (=> bm!636114 (= call!636117 call!636119)))

(declare-fun b!7005483 () Bool)

(declare-fun call!636118 () (Set Context!12572))

(assert (=> b!7005483 (= e!4210868 (set.union call!636118 call!636120))))

(declare-fun b!7005484 () Bool)

(declare-fun call!636116 () (Set Context!12572))

(assert (=> b!7005484 (= e!4210867 call!636116)))

(declare-fun b!7005485 () Bool)

(assert (=> b!7005485 (= e!4210865 e!4210867)))

(assert (=> b!7005485 (= c!1300927 (is-Concat!26135 (h!73739 (exprs!6786 lt!2500561))))))

(declare-fun bm!636115 () Bool)

(assert (=> bm!636115 (= call!636116 call!636121)))

(declare-fun b!7005486 () Bool)

(assert (=> b!7005486 (= e!4210866 call!636116)))

(declare-fun bm!636116 () Bool)

(assert (=> bm!636116 (= call!636118 (derivationStepZipperDown!2008 (ite c!1300925 (regOne!35093 (h!73739 (exprs!6786 lt!2500561))) (regOne!35092 (h!73739 (exprs!6786 lt!2500561)))) (ite c!1300925 lt!2500553 (Context!12573 call!636119)) (h!73740 s!7408)))))

(declare-fun b!7005487 () Bool)

(assert (=> b!7005487 (= e!4210865 (set.union call!636118 call!636121))))

(assert (= (and d!2183657 c!1300929) b!7005481))

(assert (= (and d!2183657 (not c!1300929)) b!7005479))

(assert (= (and b!7005479 c!1300925) b!7005483))

(assert (= (and b!7005479 (not c!1300925)) b!7005482))

(assert (= (and b!7005482 res!2858250) b!7005478))

(assert (= (and b!7005482 c!1300928) b!7005487))

(assert (= (and b!7005482 (not c!1300928)) b!7005485))

(assert (= (and b!7005485 c!1300927) b!7005484))

(assert (= (and b!7005485 (not c!1300927)) b!7005477))

(assert (= (and b!7005477 c!1300926) b!7005486))

(assert (= (and b!7005477 (not c!1300926)) b!7005480))

(assert (= (or b!7005484 b!7005486) bm!636114))

(assert (= (or b!7005484 b!7005486) bm!636115))

(assert (= (or b!7005487 bm!636115) bm!636113))

(assert (= (or b!7005487 bm!636114) bm!636112))

(assert (= (or b!7005483 b!7005487) bm!636116))

(assert (= (or b!7005483 bm!636113) bm!636111))

(declare-fun m!7702204 () Bool)

(assert (=> b!7005481 m!7702204))

(declare-fun m!7702206 () Bool)

(assert (=> b!7005478 m!7702206))

(declare-fun m!7702208 () Bool)

(assert (=> bm!636111 m!7702208))

(declare-fun m!7702210 () Bool)

(assert (=> bm!636112 m!7702210))

(declare-fun m!7702212 () Bool)

(assert (=> bm!636116 m!7702212))

(assert (=> b!7005321 d!2183657))

(declare-fun b!7005488 () Bool)

(declare-fun call!636122 () (Set Context!12572))

(declare-fun e!4210870 () (Set Context!12572))

(assert (=> b!7005488 (= e!4210870 (set.union call!636122 (derivationStepZipperUp!1940 (Context!12573 (t!381168 (exprs!6786 lt!2500553))) (h!73740 s!7408))))))

(declare-fun bm!636117 () Bool)

(assert (=> bm!636117 (= call!636122 (derivationStepZipperDown!2008 (h!73739 (exprs!6786 lt!2500553)) (Context!12573 (t!381168 (exprs!6786 lt!2500553))) (h!73740 s!7408)))))

(declare-fun b!7005489 () Bool)

(declare-fun e!4210872 () (Set Context!12572))

(assert (=> b!7005489 (= e!4210872 call!636122)))

(declare-fun b!7005490 () Bool)

(assert (=> b!7005490 (= e!4210872 (as set.empty (Set Context!12572)))))

(declare-fun b!7005491 () Bool)

(assert (=> b!7005491 (= e!4210870 e!4210872)))

(declare-fun c!1300931 () Bool)

(assert (=> b!7005491 (= c!1300931 (is-Cons!67291 (exprs!6786 lt!2500553)))))

(declare-fun d!2183659 () Bool)

(declare-fun c!1300930 () Bool)

(declare-fun e!4210871 () Bool)

(assert (=> d!2183659 (= c!1300930 e!4210871)))

(declare-fun res!2858251 () Bool)

(assert (=> d!2183659 (=> (not res!2858251) (not e!4210871))))

(assert (=> d!2183659 (= res!2858251 (is-Cons!67291 (exprs!6786 lt!2500553)))))

(assert (=> d!2183659 (= (derivationStepZipperUp!1940 lt!2500553 (h!73740 s!7408)) e!4210870)))

(declare-fun b!7005492 () Bool)

(assert (=> b!7005492 (= e!4210871 (nullable!7050 (h!73739 (exprs!6786 lt!2500553))))))

(assert (= (and d!2183659 res!2858251) b!7005492))

(assert (= (and d!2183659 c!1300930) b!7005488))

(assert (= (and d!2183659 (not c!1300930)) b!7005491))

(assert (= (and b!7005491 c!1300931) b!7005489))

(assert (= (and b!7005491 (not c!1300931)) b!7005490))

(assert (= (or b!7005488 b!7005489) bm!636117))

(declare-fun m!7702214 () Bool)

(assert (=> b!7005488 m!7702214))

(declare-fun m!7702216 () Bool)

(assert (=> bm!636117 m!7702216))

(declare-fun m!7702218 () Bool)

(assert (=> b!7005492 m!7702218))

(assert (=> b!7005321 d!2183659))

(declare-fun d!2183661 () Bool)

(declare-fun e!4210875 () Bool)

(assert (=> d!2183661 (= (matchZipper!2830 (set.union lt!2500556 lt!2500558) (t!381169 s!7408)) e!4210875)))

(declare-fun res!2858254 () Bool)

(assert (=> d!2183661 (=> res!2858254 e!4210875)))

(assert (=> d!2183661 (= res!2858254 (matchZipper!2830 lt!2500556 (t!381169 s!7408)))))

(declare-fun lt!2500682 () Unit!161256)

(declare-fun choose!52586 ((Set Context!12572) (Set Context!12572) List!67416) Unit!161256)

(assert (=> d!2183661 (= lt!2500682 (choose!52586 lt!2500556 lt!2500558 (t!381169 s!7408)))))

(assert (=> d!2183661 (= (lemmaZipperConcatMatchesSameAsBothZippers!1463 lt!2500556 lt!2500558 (t!381169 s!7408)) lt!2500682)))

(declare-fun b!7005495 () Bool)

(assert (=> b!7005495 (= e!4210875 (matchZipper!2830 lt!2500558 (t!381169 s!7408)))))

(assert (= (and d!2183661 (not res!2858254)) b!7005495))

(declare-fun m!7702220 () Bool)

(assert (=> d!2183661 m!7702220))

(assert (=> d!2183661 m!7702002))

(declare-fun m!7702222 () Bool)

(assert (=> d!2183661 m!7702222))

(assert (=> b!7005495 m!7701980))

(assert (=> b!7005330 d!2183661))

(declare-fun d!2183663 () Bool)

(declare-fun c!1300932 () Bool)

(assert (=> d!2183663 (= c!1300932 (isEmpty!39303 (t!381169 s!7408)))))

(declare-fun e!4210876 () Bool)

(assert (=> d!2183663 (= (matchZipper!2830 lt!2500555 (t!381169 s!7408)) e!4210876)))

(declare-fun b!7005496 () Bool)

(assert (=> b!7005496 (= e!4210876 (nullableZipper!2471 lt!2500555))))

(declare-fun b!7005497 () Bool)

(assert (=> b!7005497 (= e!4210876 (matchZipper!2830 (derivationStepZipper!2770 lt!2500555 (head!14155 (t!381169 s!7408))) (tail!13350 (t!381169 s!7408))))))

(assert (= (and d!2183663 c!1300932) b!7005496))

(assert (= (and d!2183663 (not c!1300932)) b!7005497))

(assert (=> d!2183663 m!7702148))

(declare-fun m!7702224 () Bool)

(assert (=> b!7005496 m!7702224))

(assert (=> b!7005497 m!7702152))

(assert (=> b!7005497 m!7702152))

(declare-fun m!7702226 () Bool)

(assert (=> b!7005497 m!7702226))

(assert (=> b!7005497 m!7702156))

(assert (=> b!7005497 m!7702226))

(assert (=> b!7005497 m!7702156))

(declare-fun m!7702228 () Bool)

(assert (=> b!7005497 m!7702228))

(assert (=> b!7005330 d!2183663))

(declare-fun d!2183665 () Bool)

(declare-fun c!1300933 () Bool)

(assert (=> d!2183665 (= c!1300933 (isEmpty!39303 (t!381169 s!7408)))))

(declare-fun e!4210877 () Bool)

(assert (=> d!2183665 (= (matchZipper!2830 lt!2500567 (t!381169 s!7408)) e!4210877)))

(declare-fun b!7005498 () Bool)

(assert (=> b!7005498 (= e!4210877 (nullableZipper!2471 lt!2500567))))

(declare-fun b!7005499 () Bool)

(assert (=> b!7005499 (= e!4210877 (matchZipper!2830 (derivationStepZipper!2770 lt!2500567 (head!14155 (t!381169 s!7408))) (tail!13350 (t!381169 s!7408))))))

(assert (= (and d!2183665 c!1300933) b!7005498))

(assert (= (and d!2183665 (not c!1300933)) b!7005499))

(assert (=> d!2183665 m!7702148))

(declare-fun m!7702230 () Bool)

(assert (=> b!7005498 m!7702230))

(assert (=> b!7005499 m!7702152))

(assert (=> b!7005499 m!7702152))

(declare-fun m!7702232 () Bool)

(assert (=> b!7005499 m!7702232))

(assert (=> b!7005499 m!7702156))

(assert (=> b!7005499 m!7702232))

(assert (=> b!7005499 m!7702156))

(declare-fun m!7702234 () Bool)

(assert (=> b!7005499 m!7702234))

(assert (=> b!7005330 d!2183665))

(assert (=> b!7005330 d!2183655))

(declare-fun d!2183667 () Bool)

(declare-fun c!1300934 () Bool)

(assert (=> d!2183667 (= c!1300934 (isEmpty!39303 (t!381169 s!7408)))))

(declare-fun e!4210878 () Bool)

(assert (=> d!2183667 (= (matchZipper!2830 lt!2500556 (t!381169 s!7408)) e!4210878)))

(declare-fun b!7005500 () Bool)

(assert (=> b!7005500 (= e!4210878 (nullableZipper!2471 lt!2500556))))

(declare-fun b!7005501 () Bool)

(assert (=> b!7005501 (= e!4210878 (matchZipper!2830 (derivationStepZipper!2770 lt!2500556 (head!14155 (t!381169 s!7408))) (tail!13350 (t!381169 s!7408))))))

(assert (= (and d!2183667 c!1300934) b!7005500))

(assert (= (and d!2183667 (not c!1300934)) b!7005501))

(assert (=> d!2183667 m!7702148))

(declare-fun m!7702236 () Bool)

(assert (=> b!7005500 m!7702236))

(assert (=> b!7005501 m!7702152))

(assert (=> b!7005501 m!7702152))

(declare-fun m!7702238 () Bool)

(assert (=> b!7005501 m!7702238))

(assert (=> b!7005501 m!7702156))

(assert (=> b!7005501 m!7702238))

(assert (=> b!7005501 m!7702156))

(declare-fun m!7702240 () Bool)

(assert (=> b!7005501 m!7702240))

(assert (=> b!7005330 d!2183667))

(declare-fun d!2183669 () Bool)

(declare-fun c!1300935 () Bool)

(assert (=> d!2183669 (= c!1300935 (isEmpty!39303 s!7408))))

(declare-fun e!4210879 () Bool)

(assert (=> d!2183669 (= (matchZipper!2830 lt!2500572 s!7408) e!4210879)))

(declare-fun b!7005502 () Bool)

(assert (=> b!7005502 (= e!4210879 (nullableZipper!2471 lt!2500572))))

(declare-fun b!7005503 () Bool)

(assert (=> b!7005503 (= e!4210879 (matchZipper!2830 (derivationStepZipper!2770 lt!2500572 (head!14155 s!7408)) (tail!13350 s!7408)))))

(assert (= (and d!2183669 c!1300935) b!7005502))

(assert (= (and d!2183669 (not c!1300935)) b!7005503))

(assert (=> d!2183669 m!7702122))

(declare-fun m!7702242 () Bool)

(assert (=> b!7005502 m!7702242))

(assert (=> b!7005503 m!7702126))

(assert (=> b!7005503 m!7702126))

(declare-fun m!7702244 () Bool)

(assert (=> b!7005503 m!7702244))

(assert (=> b!7005503 m!7702130))

(assert (=> b!7005503 m!7702244))

(assert (=> b!7005503 m!7702130))

(declare-fun m!7702246 () Bool)

(assert (=> b!7005503 m!7702246))

(assert (=> start!674252 d!2183669))

(declare-fun bs!1865351 () Bool)

(declare-fun d!2183671 () Bool)

(assert (= bs!1865351 (and d!2183671 b!7005327)))

(declare-fun lambda!406945 () Int)

(assert (=> bs!1865351 (= lambda!406945 lambda!406890)))

(assert (=> d!2183671 true))

(declare-fun map!15582 ((Set Context!12572) Int) (Set Context!12572))

(assert (=> d!2183671 (= (appendTo!411 z1!570 ct2!306) (map!15582 z1!570 lambda!406945))))

(declare-fun bs!1865352 () Bool)

(assert (= bs!1865352 d!2183671))

(declare-fun m!7702248 () Bool)

(assert (=> bs!1865352 m!7702248))

(assert (=> start!674252 d!2183671))

(declare-fun bs!1865353 () Bool)

(declare-fun d!2183673 () Bool)

(assert (= bs!1865353 (and d!2183673 b!7005327)))

(declare-fun lambda!406946 () Int)

(assert (=> bs!1865353 (= lambda!406946 lambda!406891)))

(declare-fun bs!1865354 () Bool)

(assert (= bs!1865354 (and d!2183673 d!2183649)))

(assert (=> bs!1865354 (= lambda!406946 lambda!406940)))

(assert (=> d!2183673 (= (inv!86085 ct2!306) (forall!16201 (exprs!6786 ct2!306) lambda!406946))))

(declare-fun bs!1865355 () Bool)

(assert (= bs!1865355 d!2183673))

(declare-fun m!7702250 () Bool)

(assert (=> bs!1865355 m!7702250))

(assert (=> start!674252 d!2183673))

(assert (=> b!7005319 d!2183639))

(declare-fun d!2183675 () Bool)

(declare-fun nullableFct!2667 (Regex!17290) Bool)

(assert (=> d!2183675 (= (nullable!7050 (h!73739 (exprs!6786 lt!2500561))) (nullableFct!2667 (h!73739 (exprs!6786 lt!2500561))))))

(declare-fun bs!1865356 () Bool)

(assert (= bs!1865356 d!2183675))

(declare-fun m!7702252 () Bool)

(assert (=> bs!1865356 m!7702252))

(assert (=> b!7005328 d!2183675))

(declare-fun d!2183677 () Bool)

(assert (=> d!2183677 (= (tail!13348 (exprs!6786 lt!2500561)) (t!381168 (exprs!6786 lt!2500561)))))

(assert (=> b!7005328 d!2183677))

(declare-fun b!7005507 () Bool)

(declare-fun e!4210881 () Bool)

(declare-fun lt!2500685 () List!67415)

(assert (=> b!7005507 (= e!4210881 (or (not (= (exprs!6786 ct2!306) Nil!67291)) (= lt!2500685 (exprs!6786 lt!2500561))))))

(declare-fun b!7005506 () Bool)

(declare-fun res!2858256 () Bool)

(assert (=> b!7005506 (=> (not res!2858256) (not e!4210881))))

(assert (=> b!7005506 (= res!2858256 (= (size!40955 lt!2500685) (+ (size!40955 (exprs!6786 lt!2500561)) (size!40955 (exprs!6786 ct2!306)))))))

(declare-fun d!2183679 () Bool)

(assert (=> d!2183679 e!4210881))

(declare-fun res!2858255 () Bool)

(assert (=> d!2183679 (=> (not res!2858255) (not e!4210881))))

(assert (=> d!2183679 (= res!2858255 (= (content!13342 lt!2500685) (set.union (content!13342 (exprs!6786 lt!2500561)) (content!13342 (exprs!6786 ct2!306)))))))

(declare-fun e!4210880 () List!67415)

(assert (=> d!2183679 (= lt!2500685 e!4210880)))

(declare-fun c!1300937 () Bool)

(assert (=> d!2183679 (= c!1300937 (is-Nil!67291 (exprs!6786 lt!2500561)))))

(assert (=> d!2183679 (= (++!15281 (exprs!6786 lt!2500561) (exprs!6786 ct2!306)) lt!2500685)))

(declare-fun b!7005505 () Bool)

(assert (=> b!7005505 (= e!4210880 (Cons!67291 (h!73739 (exprs!6786 lt!2500561)) (++!15281 (t!381168 (exprs!6786 lt!2500561)) (exprs!6786 ct2!306))))))

(declare-fun b!7005504 () Bool)

(assert (=> b!7005504 (= e!4210880 (exprs!6786 ct2!306))))

(assert (= (and d!2183679 c!1300937) b!7005504))

(assert (= (and d!2183679 (not c!1300937)) b!7005505))

(assert (= (and d!2183679 res!2858255) b!7005506))

(assert (= (and b!7005506 res!2858256) b!7005507))

(declare-fun m!7702254 () Bool)

(assert (=> b!7005506 m!7702254))

(declare-fun m!7702256 () Bool)

(assert (=> b!7005506 m!7702256))

(assert (=> b!7005506 m!7702190))

(declare-fun m!7702258 () Bool)

(assert (=> d!2183679 m!7702258))

(declare-fun m!7702260 () Bool)

(assert (=> d!2183679 m!7702260))

(assert (=> d!2183679 m!7702196))

(declare-fun m!7702262 () Bool)

(assert (=> b!7005505 m!7702262))

(assert (=> b!7005327 d!2183679))

(assert (=> b!7005327 d!2183639))

(declare-fun d!2183681 () Bool)

(declare-fun e!4210884 () Bool)

(assert (=> d!2183681 e!4210884))

(declare-fun res!2858259 () Bool)

(assert (=> d!2183681 (=> (not res!2858259) (not e!4210884))))

(declare-fun lt!2500688 () Context!12572)

(declare-fun dynLambda!27038 (Int Context!12572) Context!12572)

(assert (=> d!2183681 (= res!2858259 (= lt!2500562 (dynLambda!27038 lambda!406890 lt!2500688)))))

(declare-fun choose!52587 ((Set Context!12572) Int Context!12572) Context!12572)

(assert (=> d!2183681 (= lt!2500688 (choose!52587 z1!570 lambda!406890 lt!2500562))))

(assert (=> d!2183681 (set.member lt!2500562 (map!15582 z1!570 lambda!406890))))

(assert (=> d!2183681 (= (mapPost2!145 z1!570 lambda!406890 lt!2500562) lt!2500688)))

(declare-fun b!7005511 () Bool)

(assert (=> b!7005511 (= e!4210884 (set.member lt!2500688 z1!570))))

(assert (= (and d!2183681 res!2858259) b!7005511))

(declare-fun b_lambda!263981 () Bool)

(assert (=> (not b_lambda!263981) (not d!2183681)))

(declare-fun m!7702264 () Bool)

(assert (=> d!2183681 m!7702264))

(declare-fun m!7702266 () Bool)

(assert (=> d!2183681 m!7702266))

(declare-fun m!7702268 () Bool)

(assert (=> d!2183681 m!7702268))

(declare-fun m!7702270 () Bool)

(assert (=> d!2183681 m!7702270))

(declare-fun m!7702272 () Bool)

(assert (=> b!7005511 m!7702272))

(assert (=> b!7005327 d!2183681))

(assert (=> b!7005317 d!2183635))

(assert (=> b!7005317 d!2183655))

(assert (=> b!7005326 d!2183635))

(assert (=> b!7005326 d!2183655))

(declare-fun b!7005516 () Bool)

(declare-fun e!4210887 () Bool)

(declare-fun tp!1931609 () Bool)

(declare-fun tp!1931610 () Bool)

(assert (=> b!7005516 (= e!4210887 (and tp!1931609 tp!1931610))))

(assert (=> b!7005331 (= tp!1931592 e!4210887)))

(assert (= (and b!7005331 (is-Cons!67291 (exprs!6786 setElem!48204))) b!7005516))

(declare-fun b!7005521 () Bool)

(declare-fun e!4210890 () Bool)

(declare-fun tp!1931613 () Bool)

(assert (=> b!7005521 (= e!4210890 (and tp_is_empty!43805 tp!1931613))))

(assert (=> b!7005334 (= tp!1931589 e!4210890)))

(assert (= (and b!7005334 (is-Cons!67292 (t!381169 s!7408))) b!7005521))

(declare-fun condSetEmpty!48210 () Bool)

(assert (=> setNonEmpty!48204 (= condSetEmpty!48210 (= setRest!48204 (as set.empty (Set Context!12572))))))

(declare-fun setRes!48210 () Bool)

(assert (=> setNonEmpty!48204 (= tp!1931591 setRes!48210)))

(declare-fun setIsEmpty!48210 () Bool)

(assert (=> setIsEmpty!48210 setRes!48210))

(declare-fun e!4210893 () Bool)

(declare-fun tp!1931618 () Bool)

(declare-fun setElem!48210 () Context!12572)

(declare-fun setNonEmpty!48210 () Bool)

(assert (=> setNonEmpty!48210 (= setRes!48210 (and tp!1931618 (inv!86085 setElem!48210) e!4210893))))

(declare-fun setRest!48210 () (Set Context!12572))

(assert (=> setNonEmpty!48210 (= setRest!48204 (set.union (set.insert setElem!48210 (as set.empty (Set Context!12572))) setRest!48210))))

(declare-fun b!7005526 () Bool)

(declare-fun tp!1931619 () Bool)

(assert (=> b!7005526 (= e!4210893 tp!1931619)))

(assert (= (and setNonEmpty!48204 condSetEmpty!48210) setIsEmpty!48210))

(assert (= (and setNonEmpty!48204 (not condSetEmpty!48210)) setNonEmpty!48210))

(assert (= setNonEmpty!48210 b!7005526))

(declare-fun m!7702274 () Bool)

(assert (=> setNonEmpty!48210 m!7702274))

(declare-fun b!7005527 () Bool)

(declare-fun e!4210894 () Bool)

(declare-fun tp!1931620 () Bool)

(declare-fun tp!1931621 () Bool)

(assert (=> b!7005527 (= e!4210894 (and tp!1931620 tp!1931621))))

(assert (=> b!7005332 (= tp!1931590 e!4210894)))

(assert (= (and b!7005332 (is-Cons!67291 (exprs!6786 ct2!306))) b!7005527))

(declare-fun b_lambda!263983 () Bool)

(assert (= b_lambda!263979 (or b!7005327 b_lambda!263983)))

(declare-fun bs!1865357 () Bool)

(declare-fun d!2183683 () Bool)

(assert (= bs!1865357 (and d!2183683 b!7005327)))

(declare-fun validRegex!8874 (Regex!17290) Bool)

(assert (=> bs!1865357 (= (dynLambda!27037 lambda!406891 (h!73739 lt!2500549)) (validRegex!8874 (h!73739 lt!2500549)))))

(declare-fun m!7702276 () Bool)

(assert (=> bs!1865357 m!7702276))

(assert (=> b!7005441 d!2183683))

(declare-fun b_lambda!263985 () Bool)

(assert (= b_lambda!263981 (or b!7005327 b_lambda!263985)))

(declare-fun bs!1865358 () Bool)

(declare-fun d!2183685 () Bool)

(assert (= bs!1865358 (and d!2183685 b!7005327)))

(declare-fun lt!2500689 () Unit!161256)

(assert (=> bs!1865358 (= lt!2500689 (lemmaConcatPreservesForall!626 (exprs!6786 lt!2500688) (exprs!6786 ct2!306) lambda!406891))))

(assert (=> bs!1865358 (= (dynLambda!27038 lambda!406890 lt!2500688) (Context!12573 (++!15281 (exprs!6786 lt!2500688) (exprs!6786 ct2!306))))))

(declare-fun m!7702278 () Bool)

(assert (=> bs!1865358 m!7702278))

(declare-fun m!7702280 () Bool)

(assert (=> bs!1865358 m!7702280))

(assert (=> d!2183681 d!2183685))

(declare-fun b_lambda!263987 () Bool)

(assert (= b_lambda!263977 (or b!7005324 b_lambda!263987)))

(declare-fun bs!1865359 () Bool)

(declare-fun d!2183687 () Bool)

(assert (= bs!1865359 (and d!2183687 b!7005324)))

(assert (=> bs!1865359 (= (dynLambda!27036 lambda!406892 lt!2500552) (derivationStepZipperUp!1940 lt!2500552 (h!73740 s!7408)))))

(assert (=> bs!1865359 m!7701990))

(assert (=> d!2183647 d!2183687))

(declare-fun b_lambda!263989 () Bool)

(assert (= b_lambda!263975 (or b!7005316 b_lambda!263989)))

(declare-fun bs!1865360 () Bool)

(declare-fun d!2183689 () Bool)

(assert (= bs!1865360 (and d!2183689 b!7005316)))

(assert (=> bs!1865360 (= (dynLambda!27035 lambda!406889 lt!2500663) (matchZipper!2830 (set.insert lt!2500663 (as set.empty (Set Context!12572))) s!7408))))

(declare-fun m!7702282 () Bool)

(assert (=> bs!1865360 m!7702282))

(assert (=> bs!1865360 m!7702282))

(declare-fun m!7702284 () Bool)

(assert (=> bs!1865360 m!7702284))

(assert (=> d!2183627 d!2183689))

(push 1)

(assert (not bm!636112))

(assert (not b!7005453))

(assert tp_is_empty!43805)

(assert (not b!7005442))

(assert (not b!7005500))

(assert (not b!7005488))

(assert (not d!2183627))

(assert (not b!7005417))

(assert (not bs!1865359))

(assert (not b_lambda!263985))

(assert (not d!2183653))

(assert (not d!2183625))

(assert (not bs!1865357))

(assert (not b!7005526))

(assert (not b_lambda!263983))

(assert (not b!7005497))

(assert (not d!2183641))

(assert (not d!2183647))

(assert (not bs!1865360))

(assert (not d!2183675))

(assert (not b!7005496))

(assert (not d!2183661))

(assert (not b!7005527))

(assert (not b!7005499))

(assert (not d!2183629))

(assert (not b!7005436))

(assert (not d!2183665))

(assert (not d!2183671))

(assert (not b!7005502))

(assert (not b!7005419))

(assert (not d!2183631))

(assert (not b_lambda!263989))

(assert (not b!7005452))

(assert (not b!7005503))

(assert (not b!7005506))

(assert (not bm!636098))

(assert (not d!2183663))

(assert (not d!2183655))

(assert (not bm!636116))

(assert (not b!7005495))

(assert (not setNonEmpty!48210))

(assert (not b!7005478))

(assert (not b!7005492))

(assert (not b!7005414))

(assert (not b!7005505))

(assert (not d!2183673))

(assert (not d!2183681))

(assert (not b!7005418))

(assert (not bm!636111))

(assert (not d!2183679))

(assert (not d!2183643))

(assert (not d!2183633))

(assert (not d!2183667))

(assert (not b!7005498))

(assert (not b!7005516))

(assert (not d!2183649))

(assert (not d!2183639))

(assert (not d!2183635))

(assert (not b!7005413))

(assert (not bm!636117))

(assert (not b!7005432))

(assert (not d!2183669))

(assert (not bs!1865358))

(assert (not b!7005501))

(assert (not b_lambda!263987))

(assert (not b!7005521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

