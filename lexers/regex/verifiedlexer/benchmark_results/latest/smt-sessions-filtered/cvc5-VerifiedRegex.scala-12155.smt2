; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683574 () Bool)

(assert start!683574)

(declare-fun b!7052537 () Bool)

(assert (=> b!7052537 true))

(declare-fun b!7052539 () Bool)

(assert (=> b!7052539 true))

(declare-fun b!7052535 () Bool)

(assert (=> b!7052535 true))

(declare-fun b!7052528 () Bool)

(declare-fun res!2879211 () Bool)

(declare-fun e!4239829 () Bool)

(assert (=> b!7052528 (=> res!2879211 e!4239829)))

(declare-datatypes ((C!35382 0))(
  ( (C!35383 (val!27393 Int)) )
))
(declare-datatypes ((Regex!17556 0))(
  ( (ElementMatch!17556 (c!1313639 C!35382)) (Concat!26401 (regOne!35624 Regex!17556) (regTwo!35624 Regex!17556)) (EmptyExpr!17556) (Star!17556 (reg!17885 Regex!17556)) (EmptyLang!17556) (Union!17556 (regOne!35625 Regex!17556) (regTwo!35625 Regex!17556)) )
))
(declare-datatypes ((List!68194 0))(
  ( (Nil!68070) (Cons!68070 (h!74518 Regex!17556) (t!381973 List!68194)) )
))
(declare-datatypes ((Context!13104 0))(
  ( (Context!13105 (exprs!7052 List!68194)) )
))
(declare-fun lt!2530299 () Context!13104)

(declare-fun isEmpty!39702 (List!68194) Bool)

(assert (=> b!7052528 (= res!2879211 (isEmpty!39702 (exprs!7052 lt!2530299)))))

(declare-fun b!7052529 () Bool)

(declare-fun res!2879205 () Bool)

(assert (=> b!7052529 (=> res!2879205 e!4239829)))

(assert (=> b!7052529 (= res!2879205 (not (is-Cons!68070 (exprs!7052 lt!2530299))))))

(declare-fun b!7052530 () Bool)

(declare-fun res!2879208 () Bool)

(declare-fun e!4239831 () Bool)

(assert (=> b!7052530 (=> res!2879208 e!4239831)))

(declare-fun lt!2530297 () Context!13104)

(declare-fun lt!2530289 () (Set Context!13104))

(assert (=> b!7052530 (= res!2879208 (not (set.member lt!2530297 lt!2530289)))))

(declare-fun b!7052531 () Bool)

(declare-fun e!4239825 () Bool)

(declare-fun e!4239828 () Bool)

(assert (=> b!7052531 (= e!4239825 e!4239828)))

(declare-fun res!2879206 () Bool)

(assert (=> b!7052531 (=> res!2879206 e!4239828)))

(declare-fun lt!2530298 () (Set Context!13104))

(declare-fun lt!2530287 () (Set Context!13104))

(assert (=> b!7052531 (= res!2879206 (not (= lt!2530298 lt!2530287)))))

(declare-fun lt!2530288 () Context!13104)

(assert (=> b!7052531 (= lt!2530298 (set.insert lt!2530288 (as set.empty (Set Context!13104))))))

(declare-fun lambda!419454 () Int)

(declare-datatypes ((Unit!161784 0))(
  ( (Unit!161785) )
))
(declare-fun lt!2530296 () Unit!161784)

(declare-fun ct2!306 () Context!13104)

(declare-fun lemmaConcatPreservesForall!867 (List!68194 List!68194 Int) Unit!161784)

(assert (=> b!7052531 (= lt!2530296 (lemmaConcatPreservesForall!867 (exprs!7052 lt!2530299) (exprs!7052 ct2!306) lambda!419454))))

(declare-fun b!7052532 () Bool)

(declare-fun e!4239824 () Bool)

(declare-fun tp!1939627 () Bool)

(assert (=> b!7052532 (= e!4239824 tp!1939627)))

(declare-fun b!7052533 () Bool)

(declare-fun e!4239830 () Bool)

(declare-fun tp_is_empty!44337 () Bool)

(declare-fun tp!1939628 () Bool)

(assert (=> b!7052533 (= e!4239830 (and tp_is_empty!44337 tp!1939628))))

(declare-fun b!7052534 () Bool)

(declare-fun inv!86750 (Context!13104) Bool)

(declare-fun tail!13674 (List!68194) List!68194)

(assert (=> b!7052534 (= e!4239829 (inv!86750 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))))))

(assert (=> b!7052535 (= e!4239828 e!4239829)))

(declare-fun res!2879207 () Bool)

(assert (=> b!7052535 (=> res!2879207 e!4239829)))

(declare-datatypes ((List!68195 0))(
  ( (Nil!68071) (Cons!68071 (h!74519 C!35382) (t!381974 List!68195)) )
))
(declare-fun s!7408 () List!68195)

(declare-fun lt!2530292 () (Set Context!13104))

(declare-fun derivationStepZipper!3006 ((Set Context!13104) C!35382) (Set Context!13104))

(assert (=> b!7052535 (= res!2879207 (not (= (derivationStepZipper!3006 lt!2530298 (h!74519 s!7408)) lt!2530292)))))

(declare-fun lambda!419455 () Int)

(declare-fun flatMap!2482 ((Set Context!13104) Int) (Set Context!13104))

(declare-fun derivationStepZipperUp!2140 (Context!13104 C!35382) (Set Context!13104))

(assert (=> b!7052535 (= (flatMap!2482 lt!2530298 lambda!419455) (derivationStepZipperUp!2140 lt!2530288 (h!74519 s!7408)))))

(declare-fun lt!2530293 () Unit!161784)

(declare-fun lemmaFlatMapOnSingletonSet!1991 ((Set Context!13104) Context!13104 Int) Unit!161784)

(assert (=> b!7052535 (= lt!2530293 (lemmaFlatMapOnSingletonSet!1991 lt!2530298 lt!2530288 lambda!419455))))

(assert (=> b!7052535 (= lt!2530292 (derivationStepZipperUp!2140 lt!2530288 (h!74519 s!7408)))))

(declare-fun lt!2530295 () Unit!161784)

(assert (=> b!7052535 (= lt!2530295 (lemmaConcatPreservesForall!867 (exprs!7052 lt!2530299) (exprs!7052 ct2!306) lambda!419454))))

(declare-fun setIsEmpty!49748 () Bool)

(declare-fun setRes!49748 () Bool)

(assert (=> setIsEmpty!49748 setRes!49748))

(declare-fun e!4239827 () Bool)

(declare-fun setElem!49748 () Context!13104)

(declare-fun setNonEmpty!49748 () Bool)

(declare-fun tp!1939629 () Bool)

(assert (=> setNonEmpty!49748 (= setRes!49748 (and tp!1939629 (inv!86750 setElem!49748) e!4239827))))

(declare-fun z1!570 () (Set Context!13104))

(declare-fun setRest!49748 () (Set Context!13104))

(assert (=> setNonEmpty!49748 (= z1!570 (set.union (set.insert setElem!49748 (as set.empty (Set Context!13104))) setRest!49748))))

(declare-fun e!4239826 () Bool)

(assert (=> b!7052537 (= e!4239826 (not e!4239831))))

(declare-fun res!2879210 () Bool)

(assert (=> b!7052537 (=> res!2879210 e!4239831)))

(declare-fun matchZipper!3096 ((Set Context!13104) List!68195) Bool)

(assert (=> b!7052537 (= res!2879210 (not (matchZipper!3096 lt!2530287 s!7408)))))

(assert (=> b!7052537 (= lt!2530287 (set.insert lt!2530297 (as set.empty (Set Context!13104))))))

(declare-fun lambda!419452 () Int)

(declare-fun getWitness!1609 ((Set Context!13104) Int) Context!13104)

(assert (=> b!7052537 (= lt!2530297 (getWitness!1609 lt!2530289 lambda!419452))))

(declare-datatypes ((List!68196 0))(
  ( (Nil!68072) (Cons!68072 (h!74520 Context!13104) (t!381975 List!68196)) )
))
(declare-fun lt!2530290 () List!68196)

(declare-fun exists!3535 (List!68196 Int) Bool)

(assert (=> b!7052537 (exists!3535 lt!2530290 lambda!419452)))

(declare-fun lt!2530294 () Unit!161784)

(declare-fun lemmaZipperMatchesExistsMatchingContext!477 (List!68196 List!68195) Unit!161784)

(assert (=> b!7052537 (= lt!2530294 (lemmaZipperMatchesExistsMatchingContext!477 lt!2530290 s!7408))))

(declare-fun toList!10897 ((Set Context!13104)) List!68196)

(assert (=> b!7052537 (= lt!2530290 (toList!10897 lt!2530289))))

(declare-fun b!7052538 () Bool)

(declare-fun res!2879209 () Bool)

(assert (=> b!7052538 (=> (not res!2879209) (not e!4239826))))

(assert (=> b!7052538 (= res!2879209 (is-Cons!68071 s!7408))))

(assert (=> b!7052539 (= e!4239831 e!4239825)))

(declare-fun res!2879204 () Bool)

(assert (=> b!7052539 (=> res!2879204 e!4239825)))

(assert (=> b!7052539 (= res!2879204 (or (not (= lt!2530288 lt!2530297)) (not (set.member lt!2530299 z1!570))))))

(declare-fun ++!15639 (List!68194 List!68194) List!68194)

(assert (=> b!7052539 (= lt!2530288 (Context!13105 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306))))))

(declare-fun lt!2530291 () Unit!161784)

(assert (=> b!7052539 (= lt!2530291 (lemmaConcatPreservesForall!867 (exprs!7052 lt!2530299) (exprs!7052 ct2!306) lambda!419454))))

(declare-fun lambda!419453 () Int)

(declare-fun mapPost2!385 ((Set Context!13104) Int Context!13104) Context!13104)

(assert (=> b!7052539 (= lt!2530299 (mapPost2!385 z1!570 lambda!419453 lt!2530297))))

(declare-fun b!7052536 () Bool)

(declare-fun tp!1939630 () Bool)

(assert (=> b!7052536 (= e!4239827 tp!1939630)))

(declare-fun res!2879203 () Bool)

(assert (=> start!683574 (=> (not res!2879203) (not e!4239826))))

(assert (=> start!683574 (= res!2879203 (matchZipper!3096 lt!2530289 s!7408))))

(declare-fun appendTo!677 ((Set Context!13104) Context!13104) (Set Context!13104))

(assert (=> start!683574 (= lt!2530289 (appendTo!677 z1!570 ct2!306))))

(assert (=> start!683574 e!4239826))

(declare-fun condSetEmpty!49748 () Bool)

(assert (=> start!683574 (= condSetEmpty!49748 (= z1!570 (as set.empty (Set Context!13104))))))

(assert (=> start!683574 setRes!49748))

(assert (=> start!683574 (and (inv!86750 ct2!306) e!4239824)))

(assert (=> start!683574 e!4239830))

(assert (= (and start!683574 res!2879203) b!7052538))

(assert (= (and b!7052538 res!2879209) b!7052537))

(assert (= (and b!7052537 (not res!2879210)) b!7052530))

(assert (= (and b!7052530 (not res!2879208)) b!7052539))

(assert (= (and b!7052539 (not res!2879204)) b!7052531))

(assert (= (and b!7052531 (not res!2879206)) b!7052535))

(assert (= (and b!7052535 (not res!2879207)) b!7052529))

(assert (= (and b!7052529 (not res!2879205)) b!7052528))

(assert (= (and b!7052528 (not res!2879211)) b!7052534))

(assert (= (and start!683574 condSetEmpty!49748) setIsEmpty!49748))

(assert (= (and start!683574 (not condSetEmpty!49748)) setNonEmpty!49748))

(assert (= setNonEmpty!49748 b!7052536))

(assert (= start!683574 b!7052532))

(assert (= (and start!683574 (is-Cons!68071 s!7408)) b!7052533))

(declare-fun m!7769302 () Bool)

(assert (=> b!7052534 m!7769302))

(declare-fun m!7769304 () Bool)

(assert (=> b!7052534 m!7769304))

(declare-fun m!7769306 () Bool)

(assert (=> start!683574 m!7769306))

(declare-fun m!7769308 () Bool)

(assert (=> start!683574 m!7769308))

(declare-fun m!7769310 () Bool)

(assert (=> start!683574 m!7769310))

(declare-fun m!7769312 () Bool)

(assert (=> b!7052530 m!7769312))

(declare-fun m!7769314 () Bool)

(assert (=> b!7052537 m!7769314))

(declare-fun m!7769316 () Bool)

(assert (=> b!7052537 m!7769316))

(declare-fun m!7769318 () Bool)

(assert (=> b!7052537 m!7769318))

(declare-fun m!7769320 () Bool)

(assert (=> b!7052537 m!7769320))

(declare-fun m!7769322 () Bool)

(assert (=> b!7052537 m!7769322))

(declare-fun m!7769324 () Bool)

(assert (=> b!7052537 m!7769324))

(declare-fun m!7769326 () Bool)

(assert (=> b!7052531 m!7769326))

(declare-fun m!7769328 () Bool)

(assert (=> b!7052531 m!7769328))

(declare-fun m!7769330 () Bool)

(assert (=> setNonEmpty!49748 m!7769330))

(declare-fun m!7769332 () Bool)

(assert (=> b!7052528 m!7769332))

(declare-fun m!7769334 () Bool)

(assert (=> b!7052535 m!7769334))

(declare-fun m!7769336 () Bool)

(assert (=> b!7052535 m!7769336))

(declare-fun m!7769338 () Bool)

(assert (=> b!7052535 m!7769338))

(assert (=> b!7052535 m!7769328))

(declare-fun m!7769340 () Bool)

(assert (=> b!7052535 m!7769340))

(declare-fun m!7769342 () Bool)

(assert (=> b!7052539 m!7769342))

(declare-fun m!7769344 () Bool)

(assert (=> b!7052539 m!7769344))

(assert (=> b!7052539 m!7769328))

(declare-fun m!7769346 () Bool)

(assert (=> b!7052539 m!7769346))

(push 1)

(assert (not b!7052535))

(assert (not b!7052532))

(assert (not b!7052531))

(assert (not b!7052528))

(assert (not start!683574))

(assert (not b!7052534))

(assert (not b!7052537))

(assert (not b!7052539))

(assert (not b!7052533))

(assert (not setNonEmpty!49748))

(assert tp_is_empty!44337)

(assert (not b!7052536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7052596 () Bool)

(declare-fun e!4239860 () List!68194)

(assert (=> b!7052596 (= e!4239860 (exprs!7052 ct2!306))))

(declare-fun b!7052599 () Bool)

(declare-fun lt!2530343 () List!68194)

(declare-fun e!4239861 () Bool)

(assert (=> b!7052599 (= e!4239861 (or (not (= (exprs!7052 ct2!306) Nil!68070)) (= lt!2530343 (exprs!7052 lt!2530299))))))

(declare-fun b!7052597 () Bool)

(assert (=> b!7052597 (= e!4239860 (Cons!68070 (h!74518 (exprs!7052 lt!2530299)) (++!15639 (t!381973 (exprs!7052 lt!2530299)) (exprs!7052 ct2!306))))))

(declare-fun d!2203746 () Bool)

(assert (=> d!2203746 e!4239861))

(declare-fun res!2879245 () Bool)

(assert (=> d!2203746 (=> (not res!2879245) (not e!4239861))))

(declare-fun content!13663 (List!68194) (Set Regex!17556))

(assert (=> d!2203746 (= res!2879245 (= (content!13663 lt!2530343) (set.union (content!13663 (exprs!7052 lt!2530299)) (content!13663 (exprs!7052 ct2!306)))))))

(assert (=> d!2203746 (= lt!2530343 e!4239860)))

(declare-fun c!1313651 () Bool)

(assert (=> d!2203746 (= c!1313651 (is-Nil!68070 (exprs!7052 lt!2530299)))))

(assert (=> d!2203746 (= (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)) lt!2530343)))

(declare-fun b!7052598 () Bool)

(declare-fun res!2879244 () Bool)

(assert (=> b!7052598 (=> (not res!2879244) (not e!4239861))))

(declare-fun size!41140 (List!68194) Int)

(assert (=> b!7052598 (= res!2879244 (= (size!41140 lt!2530343) (+ (size!41140 (exprs!7052 lt!2530299)) (size!41140 (exprs!7052 ct2!306)))))))

(assert (= (and d!2203746 c!1313651) b!7052596))

(assert (= (and d!2203746 (not c!1313651)) b!7052597))

(assert (= (and d!2203746 res!2879245) b!7052598))

(assert (= (and b!7052598 res!2879244) b!7052599))

(declare-fun m!7769394 () Bool)

(assert (=> b!7052597 m!7769394))

(declare-fun m!7769396 () Bool)

(assert (=> d!2203746 m!7769396))

(declare-fun m!7769398 () Bool)

(assert (=> d!2203746 m!7769398))

(declare-fun m!7769400 () Bool)

(assert (=> d!2203746 m!7769400))

(declare-fun m!7769402 () Bool)

(assert (=> b!7052598 m!7769402))

(declare-fun m!7769404 () Bool)

(assert (=> b!7052598 m!7769404))

(declare-fun m!7769406 () Bool)

(assert (=> b!7052598 m!7769406))

(assert (=> b!7052539 d!2203746))

(declare-fun d!2203748 () Bool)

(declare-fun forall!16493 (List!68194 Int) Bool)

(assert (=> d!2203748 (forall!16493 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)) lambda!419454)))

(declare-fun lt!2530346 () Unit!161784)

(declare-fun choose!53729 (List!68194 List!68194 Int) Unit!161784)

(assert (=> d!2203748 (= lt!2530346 (choose!53729 (exprs!7052 lt!2530299) (exprs!7052 ct2!306) lambda!419454))))

(assert (=> d!2203748 (forall!16493 (exprs!7052 lt!2530299) lambda!419454)))

(assert (=> d!2203748 (= (lemmaConcatPreservesForall!867 (exprs!7052 lt!2530299) (exprs!7052 ct2!306) lambda!419454) lt!2530346)))

(declare-fun bs!1876483 () Bool)

(assert (= bs!1876483 d!2203748))

(assert (=> bs!1876483 m!7769344))

(assert (=> bs!1876483 m!7769344))

(declare-fun m!7769408 () Bool)

(assert (=> bs!1876483 m!7769408))

(declare-fun m!7769410 () Bool)

(assert (=> bs!1876483 m!7769410))

(declare-fun m!7769412 () Bool)

(assert (=> bs!1876483 m!7769412))

(assert (=> b!7052539 d!2203748))

(declare-fun d!2203750 () Bool)

(declare-fun e!4239864 () Bool)

(assert (=> d!2203750 e!4239864))

(declare-fun res!2879248 () Bool)

(assert (=> d!2203750 (=> (not res!2879248) (not e!4239864))))

(declare-fun lt!2530349 () Context!13104)

(declare-fun dynLambda!27592 (Int Context!13104) Context!13104)

(assert (=> d!2203750 (= res!2879248 (= lt!2530297 (dynLambda!27592 lambda!419453 lt!2530349)))))

(declare-fun choose!53730 ((Set Context!13104) Int Context!13104) Context!13104)

(assert (=> d!2203750 (= lt!2530349 (choose!53730 z1!570 lambda!419453 lt!2530297))))

(declare-fun map!15873 ((Set Context!13104) Int) (Set Context!13104))

(assert (=> d!2203750 (set.member lt!2530297 (map!15873 z1!570 lambda!419453))))

(assert (=> d!2203750 (= (mapPost2!385 z1!570 lambda!419453 lt!2530297) lt!2530349)))

(declare-fun b!7052603 () Bool)

(assert (=> b!7052603 (= e!4239864 (set.member lt!2530349 z1!570))))

(assert (= (and d!2203750 res!2879248) b!7052603))

(declare-fun b_lambda!268415 () Bool)

(assert (=> (not b_lambda!268415) (not d!2203750)))

(declare-fun m!7769414 () Bool)

(assert (=> d!2203750 m!7769414))

(declare-fun m!7769416 () Bool)

(assert (=> d!2203750 m!7769416))

(declare-fun m!7769418 () Bool)

(assert (=> d!2203750 m!7769418))

(declare-fun m!7769420 () Bool)

(assert (=> d!2203750 m!7769420))

(declare-fun m!7769422 () Bool)

(assert (=> b!7052603 m!7769422))

(assert (=> b!7052539 d!2203750))

(assert (=> b!7052531 d!2203748))

(declare-fun bs!1876484 () Bool)

(declare-fun d!2203752 () Bool)

(assert (= bs!1876484 (and d!2203752 b!7052539)))

(declare-fun lambda!419478 () Int)

(assert (=> bs!1876484 (= lambda!419478 lambda!419454)))

(assert (=> d!2203752 (= (inv!86750 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))) (forall!16493 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))) lambda!419478))))

(declare-fun bs!1876485 () Bool)

(assert (= bs!1876485 d!2203752))

(declare-fun m!7769424 () Bool)

(assert (=> bs!1876485 m!7769424))

(assert (=> b!7052534 d!2203752))

(declare-fun d!2203754 () Bool)

(assert (=> d!2203754 (= (tail!13674 (exprs!7052 lt!2530299)) (t!381973 (exprs!7052 lt!2530299)))))

(assert (=> b!7052534 d!2203754))

(declare-fun d!2203756 () Bool)

(declare-fun dynLambda!27593 (Int Context!13104) (Set Context!13104))

(assert (=> d!2203756 (= (flatMap!2482 lt!2530298 lambda!419455) (dynLambda!27593 lambda!419455 lt!2530288))))

(declare-fun lt!2530352 () Unit!161784)

(declare-fun choose!53731 ((Set Context!13104) Context!13104 Int) Unit!161784)

(assert (=> d!2203756 (= lt!2530352 (choose!53731 lt!2530298 lt!2530288 lambda!419455))))

(assert (=> d!2203756 (= lt!2530298 (set.insert lt!2530288 (as set.empty (Set Context!13104))))))

(assert (=> d!2203756 (= (lemmaFlatMapOnSingletonSet!1991 lt!2530298 lt!2530288 lambda!419455) lt!2530352)))

(declare-fun b_lambda!268417 () Bool)

(assert (=> (not b_lambda!268417) (not d!2203756)))

(declare-fun bs!1876486 () Bool)

(assert (= bs!1876486 d!2203756))

(assert (=> bs!1876486 m!7769340))

(declare-fun m!7769426 () Bool)

(assert (=> bs!1876486 m!7769426))

(declare-fun m!7769428 () Bool)

(assert (=> bs!1876486 m!7769428))

(assert (=> bs!1876486 m!7769326))

(assert (=> b!7052535 d!2203756))

(assert (=> b!7052535 d!2203748))

(declare-fun e!4239872 () (Set Context!13104))

(declare-fun b!7052614 () Bool)

(declare-fun call!640624 () (Set Context!13104))

(assert (=> b!7052614 (= e!4239872 (set.union call!640624 (derivationStepZipperUp!2140 (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (h!74519 s!7408))))))

(declare-fun b!7052615 () Bool)

(declare-fun e!4239871 () (Set Context!13104))

(assert (=> b!7052615 (= e!4239871 call!640624)))

(declare-fun b!7052616 () Bool)

(assert (=> b!7052616 (= e!4239872 e!4239871)))

(declare-fun c!1313657 () Bool)

(assert (=> b!7052616 (= c!1313657 (is-Cons!68070 (exprs!7052 lt!2530288)))))

(declare-fun b!7052617 () Bool)

(declare-fun e!4239873 () Bool)

(declare-fun nullable!7239 (Regex!17556) Bool)

(assert (=> b!7052617 (= e!4239873 (nullable!7239 (h!74518 (exprs!7052 lt!2530288))))))

(declare-fun b!7052618 () Bool)

(assert (=> b!7052618 (= e!4239871 (as set.empty (Set Context!13104)))))

(declare-fun bm!640619 () Bool)

(declare-fun derivationStepZipperDown!2190 (Regex!17556 Context!13104 C!35382) (Set Context!13104))

(assert (=> bm!640619 (= call!640624 (derivationStepZipperDown!2190 (h!74518 (exprs!7052 lt!2530288)) (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (h!74519 s!7408)))))

(declare-fun d!2203758 () Bool)

(declare-fun c!1313656 () Bool)

(assert (=> d!2203758 (= c!1313656 e!4239873)))

(declare-fun res!2879252 () Bool)

(assert (=> d!2203758 (=> (not res!2879252) (not e!4239873))))

(assert (=> d!2203758 (= res!2879252 (is-Cons!68070 (exprs!7052 lt!2530288)))))

(assert (=> d!2203758 (= (derivationStepZipperUp!2140 lt!2530288 (h!74519 s!7408)) e!4239872)))

(assert (= (and d!2203758 res!2879252) b!7052617))

(assert (= (and d!2203758 c!1313656) b!7052614))

(assert (= (and d!2203758 (not c!1313656)) b!7052616))

(assert (= (and b!7052616 c!1313657) b!7052615))

(assert (= (and b!7052616 (not c!1313657)) b!7052618))

(assert (= (or b!7052614 b!7052615) bm!640619))

(declare-fun m!7769430 () Bool)

(assert (=> b!7052614 m!7769430))

(declare-fun m!7769432 () Bool)

(assert (=> b!7052617 m!7769432))

(declare-fun m!7769434 () Bool)

(assert (=> bm!640619 m!7769434))

(assert (=> b!7052535 d!2203758))

(declare-fun bs!1876487 () Bool)

(declare-fun d!2203760 () Bool)

(assert (= bs!1876487 (and d!2203760 b!7052535)))

(declare-fun lambda!419481 () Int)

(assert (=> bs!1876487 (= lambda!419481 lambda!419455)))

(assert (=> d!2203760 true))

(assert (=> d!2203760 (= (derivationStepZipper!3006 lt!2530298 (h!74519 s!7408)) (flatMap!2482 lt!2530298 lambda!419481))))

(declare-fun bs!1876488 () Bool)

(assert (= bs!1876488 d!2203760))

(declare-fun m!7769436 () Bool)

(assert (=> bs!1876488 m!7769436))

(assert (=> b!7052535 d!2203760))

(declare-fun d!2203762 () Bool)

(declare-fun choose!53732 ((Set Context!13104) Int) (Set Context!13104))

(assert (=> d!2203762 (= (flatMap!2482 lt!2530298 lambda!419455) (choose!53732 lt!2530298 lambda!419455))))

(declare-fun bs!1876489 () Bool)

(assert (= bs!1876489 d!2203762))

(declare-fun m!7769438 () Bool)

(assert (=> bs!1876489 m!7769438))

(assert (=> b!7052535 d!2203762))

(declare-fun bs!1876490 () Bool)

(declare-fun d!2203764 () Bool)

(assert (= bs!1876490 (and d!2203764 b!7052539)))

(declare-fun lambda!419482 () Int)

(assert (=> bs!1876490 (= lambda!419482 lambda!419454)))

(declare-fun bs!1876491 () Bool)

(assert (= bs!1876491 (and d!2203764 d!2203752)))

(assert (=> bs!1876491 (= lambda!419482 lambda!419478)))

(assert (=> d!2203764 (= (inv!86750 setElem!49748) (forall!16493 (exprs!7052 setElem!49748) lambda!419482))))

(declare-fun bs!1876492 () Bool)

(assert (= bs!1876492 d!2203764))

(declare-fun m!7769440 () Bool)

(assert (=> bs!1876492 m!7769440))

(assert (=> setNonEmpty!49748 d!2203764))

(declare-fun d!2203766 () Bool)

(declare-fun c!1313662 () Bool)

(declare-fun isEmpty!39704 (List!68195) Bool)

(assert (=> d!2203766 (= c!1313662 (isEmpty!39704 s!7408))))

(declare-fun e!4239876 () Bool)

(assert (=> d!2203766 (= (matchZipper!3096 lt!2530287 s!7408) e!4239876)))

(declare-fun b!7052625 () Bool)

(declare-fun nullableZipper!2645 ((Set Context!13104)) Bool)

(assert (=> b!7052625 (= e!4239876 (nullableZipper!2645 lt!2530287))))

(declare-fun b!7052626 () Bool)

(declare-fun head!14345 (List!68195) C!35382)

(declare-fun tail!13676 (List!68195) List!68195)

(assert (=> b!7052626 (= e!4239876 (matchZipper!3096 (derivationStepZipper!3006 lt!2530287 (head!14345 s!7408)) (tail!13676 s!7408)))))

(assert (= (and d!2203766 c!1313662) b!7052625))

(assert (= (and d!2203766 (not c!1313662)) b!7052626))

(declare-fun m!7769442 () Bool)

(assert (=> d!2203766 m!7769442))

(declare-fun m!7769444 () Bool)

(assert (=> b!7052625 m!7769444))

(declare-fun m!7769446 () Bool)

(assert (=> b!7052626 m!7769446))

(assert (=> b!7052626 m!7769446))

(declare-fun m!7769448 () Bool)

(assert (=> b!7052626 m!7769448))

(declare-fun m!7769450 () Bool)

(assert (=> b!7052626 m!7769450))

(assert (=> b!7052626 m!7769448))

(assert (=> b!7052626 m!7769450))

(declare-fun m!7769452 () Bool)

(assert (=> b!7052626 m!7769452))

(assert (=> b!7052537 d!2203766))

(declare-fun d!2203770 () Bool)

(declare-fun e!4239879 () Bool)

(assert (=> d!2203770 e!4239879))

(declare-fun res!2879255 () Bool)

(assert (=> d!2203770 (=> (not res!2879255) (not e!4239879))))

(declare-fun lt!2530355 () Context!13104)

(declare-fun dynLambda!27594 (Int Context!13104) Bool)

(assert (=> d!2203770 (= res!2879255 (dynLambda!27594 lambda!419452 lt!2530355))))

(declare-fun getWitness!1611 (List!68196 Int) Context!13104)

(assert (=> d!2203770 (= lt!2530355 (getWitness!1611 (toList!10897 lt!2530289) lambda!419452))))

(declare-fun exists!3537 ((Set Context!13104) Int) Bool)

(assert (=> d!2203770 (exists!3537 lt!2530289 lambda!419452)))

(assert (=> d!2203770 (= (getWitness!1609 lt!2530289 lambda!419452) lt!2530355)))

(declare-fun b!7052629 () Bool)

(assert (=> b!7052629 (= e!4239879 (set.member lt!2530355 lt!2530289))))

(assert (= (and d!2203770 res!2879255) b!7052629))

(declare-fun b_lambda!268419 () Bool)

(assert (=> (not b_lambda!268419) (not d!2203770)))

(declare-fun m!7769454 () Bool)

(assert (=> d!2203770 m!7769454))

(assert (=> d!2203770 m!7769322))

(assert (=> d!2203770 m!7769322))

(declare-fun m!7769456 () Bool)

(assert (=> d!2203770 m!7769456))

(declare-fun m!7769458 () Bool)

(assert (=> d!2203770 m!7769458))

(declare-fun m!7769460 () Bool)

(assert (=> b!7052629 m!7769460))

(assert (=> b!7052537 d!2203770))

(declare-fun d!2203772 () Bool)

(declare-fun e!4239886 () Bool)

(assert (=> d!2203772 e!4239886))

(declare-fun res!2879262 () Bool)

(assert (=> d!2203772 (=> (not res!2879262) (not e!4239886))))

(declare-fun lt!2530360 () List!68196)

(declare-fun noDuplicate!2679 (List!68196) Bool)

(assert (=> d!2203772 (= res!2879262 (noDuplicate!2679 lt!2530360))))

(declare-fun choose!53733 ((Set Context!13104)) List!68196)

(assert (=> d!2203772 (= lt!2530360 (choose!53733 lt!2530289))))

(assert (=> d!2203772 (= (toList!10897 lt!2530289) lt!2530360)))

(declare-fun b!7052640 () Bool)

(declare-fun content!13664 (List!68196) (Set Context!13104))

(assert (=> b!7052640 (= e!4239886 (= (content!13664 lt!2530360) lt!2530289))))

(assert (= (and d!2203772 res!2879262) b!7052640))

(declare-fun m!7769462 () Bool)

(assert (=> d!2203772 m!7769462))

(declare-fun m!7769464 () Bool)

(assert (=> d!2203772 m!7769464))

(declare-fun m!7769466 () Bool)

(assert (=> b!7052640 m!7769466))

(assert (=> b!7052537 d!2203772))

(declare-fun bs!1876493 () Bool)

(declare-fun d!2203774 () Bool)

(assert (= bs!1876493 (and d!2203774 b!7052537)))

(declare-fun lambda!419485 () Int)

(assert (=> bs!1876493 (not (= lambda!419485 lambda!419452))))

(assert (=> d!2203774 true))

(declare-fun order!28289 () Int)

(declare-fun dynLambda!27595 (Int Int) Int)

(assert (=> d!2203774 (< (dynLambda!27595 order!28289 lambda!419452) (dynLambda!27595 order!28289 lambda!419485))))

(declare-fun forall!16494 (List!68196 Int) Bool)

(assert (=> d!2203774 (= (exists!3535 lt!2530290 lambda!419452) (not (forall!16494 lt!2530290 lambda!419485)))))

(declare-fun bs!1876494 () Bool)

(assert (= bs!1876494 d!2203774))

(declare-fun m!7769468 () Bool)

(assert (=> bs!1876494 m!7769468))

(assert (=> b!7052537 d!2203774))

(declare-fun bs!1876496 () Bool)

(declare-fun d!2203776 () Bool)

(assert (= bs!1876496 (and d!2203776 b!7052537)))

(declare-fun lambda!419488 () Int)

(assert (=> bs!1876496 (= lambda!419488 lambda!419452)))

(declare-fun bs!1876497 () Bool)

(assert (= bs!1876497 (and d!2203776 d!2203774)))

(assert (=> bs!1876497 (not (= lambda!419488 lambda!419485))))

(assert (=> d!2203776 true))

(assert (=> d!2203776 (exists!3535 lt!2530290 lambda!419488)))

(declare-fun lt!2530367 () Unit!161784)

(declare-fun choose!53734 (List!68196 List!68195) Unit!161784)

(assert (=> d!2203776 (= lt!2530367 (choose!53734 lt!2530290 s!7408))))

(assert (=> d!2203776 (matchZipper!3096 (content!13664 lt!2530290) s!7408)))

(assert (=> d!2203776 (= (lemmaZipperMatchesExistsMatchingContext!477 lt!2530290 s!7408) lt!2530367)))

(declare-fun bs!1876498 () Bool)

(assert (= bs!1876498 d!2203776))

(declare-fun m!7769490 () Bool)

(assert (=> bs!1876498 m!7769490))

(declare-fun m!7769492 () Bool)

(assert (=> bs!1876498 m!7769492))

(declare-fun m!7769494 () Bool)

(assert (=> bs!1876498 m!7769494))

(assert (=> bs!1876498 m!7769494))

(declare-fun m!7769496 () Bool)

(assert (=> bs!1876498 m!7769496))

(assert (=> b!7052537 d!2203776))

(declare-fun d!2203782 () Bool)

(assert (=> d!2203782 (= (isEmpty!39702 (exprs!7052 lt!2530299)) (is-Nil!68070 (exprs!7052 lt!2530299)))))

(assert (=> b!7052528 d!2203782))

(declare-fun d!2203784 () Bool)

(declare-fun c!1313668 () Bool)

(assert (=> d!2203784 (= c!1313668 (isEmpty!39704 s!7408))))

(declare-fun e!4239889 () Bool)

(assert (=> d!2203784 (= (matchZipper!3096 lt!2530289 s!7408) e!4239889)))

(declare-fun b!7052647 () Bool)

(assert (=> b!7052647 (= e!4239889 (nullableZipper!2645 lt!2530289))))

(declare-fun b!7052648 () Bool)

(assert (=> b!7052648 (= e!4239889 (matchZipper!3096 (derivationStepZipper!3006 lt!2530289 (head!14345 s!7408)) (tail!13676 s!7408)))))

(assert (= (and d!2203784 c!1313668) b!7052647))

(assert (= (and d!2203784 (not c!1313668)) b!7052648))

(assert (=> d!2203784 m!7769442))

(declare-fun m!7769498 () Bool)

(assert (=> b!7052647 m!7769498))

(assert (=> b!7052648 m!7769446))

(assert (=> b!7052648 m!7769446))

(declare-fun m!7769500 () Bool)

(assert (=> b!7052648 m!7769500))

(assert (=> b!7052648 m!7769450))

(assert (=> b!7052648 m!7769500))

(assert (=> b!7052648 m!7769450))

(declare-fun m!7769502 () Bool)

(assert (=> b!7052648 m!7769502))

(assert (=> start!683574 d!2203784))

(declare-fun bs!1876499 () Bool)

(declare-fun d!2203786 () Bool)

(assert (= bs!1876499 (and d!2203786 b!7052539)))

(declare-fun lambda!419495 () Int)

(assert (=> bs!1876499 (= lambda!419495 lambda!419453)))

(assert (=> d!2203786 true))

(assert (=> d!2203786 (= (appendTo!677 z1!570 ct2!306) (map!15873 z1!570 lambda!419495))))

(declare-fun bs!1876500 () Bool)

(assert (= bs!1876500 d!2203786))

(declare-fun m!7769514 () Bool)

(assert (=> bs!1876500 m!7769514))

(assert (=> start!683574 d!2203786))

(declare-fun bs!1876501 () Bool)

(declare-fun d!2203790 () Bool)

(assert (= bs!1876501 (and d!2203790 b!7052539)))

(declare-fun lambda!419496 () Int)

(assert (=> bs!1876501 (= lambda!419496 lambda!419454)))

(declare-fun bs!1876502 () Bool)

(assert (= bs!1876502 (and d!2203790 d!2203752)))

(assert (=> bs!1876502 (= lambda!419496 lambda!419478)))

(declare-fun bs!1876503 () Bool)

(assert (= bs!1876503 (and d!2203790 d!2203764)))

(assert (=> bs!1876503 (= lambda!419496 lambda!419482)))

(assert (=> d!2203790 (= (inv!86750 ct2!306) (forall!16493 (exprs!7052 ct2!306) lambda!419496))))

(declare-fun bs!1876505 () Bool)

(assert (= bs!1876505 d!2203790))

(declare-fun m!7769516 () Bool)

(assert (=> bs!1876505 m!7769516))

(assert (=> start!683574 d!2203790))

(declare-fun b!7052657 () Bool)

(declare-fun e!4239895 () Bool)

(declare-fun tp!1939645 () Bool)

(assert (=> b!7052657 (= e!4239895 (and tp_is_empty!44337 tp!1939645))))

(assert (=> b!7052533 (= tp!1939628 e!4239895)))

(assert (= (and b!7052533 (is-Cons!68071 (t!381974 s!7408))) b!7052657))

(declare-fun condSetEmpty!49754 () Bool)

(assert (=> setNonEmpty!49748 (= condSetEmpty!49754 (= setRest!49748 (as set.empty (Set Context!13104))))))

(declare-fun setRes!49754 () Bool)

(assert (=> setNonEmpty!49748 (= tp!1939629 setRes!49754)))

(declare-fun setIsEmpty!49754 () Bool)

(assert (=> setIsEmpty!49754 setRes!49754))

(declare-fun setElem!49754 () Context!13104)

(declare-fun tp!1939651 () Bool)

(declare-fun setNonEmpty!49754 () Bool)

(declare-fun e!4239898 () Bool)

(assert (=> setNonEmpty!49754 (= setRes!49754 (and tp!1939651 (inv!86750 setElem!49754) e!4239898))))

(declare-fun setRest!49754 () (Set Context!13104))

(assert (=> setNonEmpty!49754 (= setRest!49748 (set.union (set.insert setElem!49754 (as set.empty (Set Context!13104))) setRest!49754))))

(declare-fun b!7052662 () Bool)

(declare-fun tp!1939650 () Bool)

(assert (=> b!7052662 (= e!4239898 tp!1939650)))

(assert (= (and setNonEmpty!49748 condSetEmpty!49754) setIsEmpty!49754))

(assert (= (and setNonEmpty!49748 (not condSetEmpty!49754)) setNonEmpty!49754))

(assert (= setNonEmpty!49754 b!7052662))

(declare-fun m!7769520 () Bool)

(assert (=> setNonEmpty!49754 m!7769520))

(declare-fun b!7052667 () Bool)

(declare-fun e!4239901 () Bool)

(declare-fun tp!1939656 () Bool)

(declare-fun tp!1939657 () Bool)

(assert (=> b!7052667 (= e!4239901 (and tp!1939656 tp!1939657))))

(assert (=> b!7052536 (= tp!1939630 e!4239901)))

(assert (= (and b!7052536 (is-Cons!68070 (exprs!7052 setElem!49748))) b!7052667))

(declare-fun b!7052668 () Bool)

(declare-fun e!4239902 () Bool)

(declare-fun tp!1939658 () Bool)

(declare-fun tp!1939659 () Bool)

(assert (=> b!7052668 (= e!4239902 (and tp!1939658 tp!1939659))))

(assert (=> b!7052532 (= tp!1939627 e!4239902)))

(assert (= (and b!7052532 (is-Cons!68070 (exprs!7052 ct2!306))) b!7052668))

(declare-fun b_lambda!268423 () Bool)

(assert (= b_lambda!268415 (or b!7052539 b_lambda!268423)))

(declare-fun bs!1876507 () Bool)

(declare-fun d!2203794 () Bool)

(assert (= bs!1876507 (and d!2203794 b!7052539)))

(declare-fun lt!2530373 () Unit!161784)

(assert (=> bs!1876507 (= lt!2530373 (lemmaConcatPreservesForall!867 (exprs!7052 lt!2530349) (exprs!7052 ct2!306) lambda!419454))))

(assert (=> bs!1876507 (= (dynLambda!27592 lambda!419453 lt!2530349) (Context!13105 (++!15639 (exprs!7052 lt!2530349) (exprs!7052 ct2!306))))))

(declare-fun m!7769522 () Bool)

(assert (=> bs!1876507 m!7769522))

(declare-fun m!7769524 () Bool)

(assert (=> bs!1876507 m!7769524))

(assert (=> d!2203750 d!2203794))

(declare-fun b_lambda!268425 () Bool)

(assert (= b_lambda!268417 (or b!7052535 b_lambda!268425)))

(declare-fun bs!1876508 () Bool)

(declare-fun d!2203796 () Bool)

(assert (= bs!1876508 (and d!2203796 b!7052535)))

(assert (=> bs!1876508 (= (dynLambda!27593 lambda!419455 lt!2530288) (derivationStepZipperUp!2140 lt!2530288 (h!74519 s!7408)))))

(assert (=> bs!1876508 m!7769338))

(assert (=> d!2203756 d!2203796))

(declare-fun b_lambda!268427 () Bool)

(assert (= b_lambda!268419 (or b!7052537 b_lambda!268427)))

(declare-fun bs!1876509 () Bool)

(declare-fun d!2203798 () Bool)

(assert (= bs!1876509 (and d!2203798 b!7052537)))

(assert (=> bs!1876509 (= (dynLambda!27594 lambda!419452 lt!2530355) (matchZipper!3096 (set.insert lt!2530355 (as set.empty (Set Context!13104))) s!7408))))

(declare-fun m!7769526 () Bool)

(assert (=> bs!1876509 m!7769526))

(assert (=> bs!1876509 m!7769526))

(declare-fun m!7769528 () Bool)

(assert (=> bs!1876509 m!7769528))

(assert (=> d!2203770 d!2203798))

(push 1)

(assert (not setNonEmpty!49754))

(assert (not bs!1876507))

(assert (not b_lambda!268425))

(assert (not d!2203784))

(assert tp_is_empty!44337)

(assert (not d!2203772))

(assert (not d!2203760))

(assert (not b!7052598))

(assert (not b!7052668))

(assert (not d!2203756))

(assert (not bs!1876509))

(assert (not b_lambda!268427))

(assert (not b!7052657))

(assert (not d!2203752))

(assert (not b!7052617))

(assert (not b!7052626))

(assert (not d!2203786))

(assert (not d!2203750))

(assert (not d!2203790))

(assert (not b!7052667))

(assert (not d!2203776))

(assert (not b!7052662))

(assert (not b!7052597))

(assert (not d!2203774))

(assert (not b!7052625))

(assert (not d!2203766))

(assert (not d!2203764))

(assert (not d!2203762))

(assert (not d!2203770))

(assert (not bm!640619))

(assert (not b!7052647))

(assert (not b!7052640))

(assert (not d!2203748))

(assert (not b_lambda!268423))

(assert (not b!7052648))

(assert (not d!2203746))

(assert (not b!7052614))

(assert (not bs!1876508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7052730 () Bool)

(declare-fun e!4239942 () Context!13104)

(assert (=> b!7052730 (= e!4239942 (getWitness!1611 (t!381975 (toList!10897 lt!2530289)) lambda!419452))))

(declare-fun d!2203834 () Bool)

(declare-fun e!4239943 () Bool)

(assert (=> d!2203834 e!4239943))

(declare-fun res!2879281 () Bool)

(assert (=> d!2203834 (=> (not res!2879281) (not e!4239943))))

(declare-fun lt!2530393 () Context!13104)

(assert (=> d!2203834 (= res!2879281 (dynLambda!27594 lambda!419452 lt!2530393))))

(declare-fun e!4239941 () Context!13104)

(assert (=> d!2203834 (= lt!2530393 e!4239941)))

(declare-fun c!1313689 () Bool)

(declare-fun e!4239940 () Bool)

(assert (=> d!2203834 (= c!1313689 e!4239940)))

(declare-fun res!2879282 () Bool)

(assert (=> d!2203834 (=> (not res!2879282) (not e!4239940))))

(assert (=> d!2203834 (= res!2879282 (is-Cons!68072 (toList!10897 lt!2530289)))))

(assert (=> d!2203834 (exists!3535 (toList!10897 lt!2530289) lambda!419452)))

(assert (=> d!2203834 (= (getWitness!1611 (toList!10897 lt!2530289) lambda!419452) lt!2530393)))

(declare-fun b!7052731 () Bool)

(declare-fun lt!2530394 () Unit!161784)

(declare-fun Unit!161788 () Unit!161784)

(assert (=> b!7052731 (= lt!2530394 Unit!161788)))

(assert (=> b!7052731 false))

(declare-fun head!14347 (List!68196) Context!13104)

(assert (=> b!7052731 (= e!4239942 (head!14347 (toList!10897 lt!2530289)))))

(declare-fun b!7052732 () Bool)

(assert (=> b!7052732 (= e!4239940 (dynLambda!27594 lambda!419452 (h!74520 (toList!10897 lt!2530289))))))

(declare-fun b!7052733 () Bool)

(assert (=> b!7052733 (= e!4239941 (h!74520 (toList!10897 lt!2530289)))))

(declare-fun b!7052734 () Bool)

(declare-fun contains!20481 (List!68196 Context!13104) Bool)

(assert (=> b!7052734 (= e!4239943 (contains!20481 (toList!10897 lt!2530289) lt!2530393))))

(declare-fun b!7052735 () Bool)

(assert (=> b!7052735 (= e!4239941 e!4239942)))

(declare-fun c!1313690 () Bool)

(assert (=> b!7052735 (= c!1313690 (is-Cons!68072 (toList!10897 lt!2530289)))))

(assert (= (and d!2203834 res!2879282) b!7052732))

(assert (= (and d!2203834 c!1313689) b!7052733))

(assert (= (and d!2203834 (not c!1313689)) b!7052735))

(assert (= (and b!7052735 c!1313690) b!7052730))

(assert (= (and b!7052735 (not c!1313690)) b!7052731))

(assert (= (and d!2203834 res!2879281) b!7052734))

(declare-fun b_lambda!268439 () Bool)

(assert (=> (not b_lambda!268439) (not d!2203834)))

(declare-fun b_lambda!268441 () Bool)

(assert (=> (not b_lambda!268441) (not b!7052732)))

(declare-fun m!7769602 () Bool)

(assert (=> b!7052732 m!7769602))

(assert (=> b!7052734 m!7769322))

(declare-fun m!7769604 () Bool)

(assert (=> b!7052734 m!7769604))

(assert (=> b!7052731 m!7769322))

(declare-fun m!7769606 () Bool)

(assert (=> b!7052731 m!7769606))

(declare-fun m!7769608 () Bool)

(assert (=> b!7052730 m!7769608))

(declare-fun m!7769610 () Bool)

(assert (=> d!2203834 m!7769610))

(assert (=> d!2203834 m!7769322))

(declare-fun m!7769612 () Bool)

(assert (=> d!2203834 m!7769612))

(assert (=> d!2203770 d!2203834))

(assert (=> d!2203770 d!2203772))

(declare-fun d!2203836 () Bool)

(declare-fun lt!2530397 () Bool)

(assert (=> d!2203836 (= lt!2530397 (exists!3535 (toList!10897 lt!2530289) lambda!419452))))

(declare-fun choose!53741 ((Set Context!13104) Int) Bool)

(assert (=> d!2203836 (= lt!2530397 (choose!53741 lt!2530289 lambda!419452))))

(assert (=> d!2203836 (= (exists!3537 lt!2530289 lambda!419452) lt!2530397)))

(declare-fun bs!1876531 () Bool)

(assert (= bs!1876531 d!2203836))

(assert (=> bs!1876531 m!7769322))

(assert (=> bs!1876531 m!7769322))

(assert (=> bs!1876531 m!7769612))

(declare-fun m!7769614 () Bool)

(assert (=> bs!1876531 m!7769614))

(assert (=> d!2203770 d!2203836))

(declare-fun d!2203838 () Bool)

(declare-fun lt!2530400 () Int)

(assert (=> d!2203838 (>= lt!2530400 0)))

(declare-fun e!4239946 () Int)

(assert (=> d!2203838 (= lt!2530400 e!4239946)))

(declare-fun c!1313693 () Bool)

(assert (=> d!2203838 (= c!1313693 (is-Nil!68070 lt!2530343))))

(assert (=> d!2203838 (= (size!41140 lt!2530343) lt!2530400)))

(declare-fun b!7052740 () Bool)

(assert (=> b!7052740 (= e!4239946 0)))

(declare-fun b!7052741 () Bool)

(assert (=> b!7052741 (= e!4239946 (+ 1 (size!41140 (t!381973 lt!2530343))))))

(assert (= (and d!2203838 c!1313693) b!7052740))

(assert (= (and d!2203838 (not c!1313693)) b!7052741))

(declare-fun m!7769616 () Bool)

(assert (=> b!7052741 m!7769616))

(assert (=> b!7052598 d!2203838))

(declare-fun d!2203840 () Bool)

(declare-fun lt!2530401 () Int)

(assert (=> d!2203840 (>= lt!2530401 0)))

(declare-fun e!4239947 () Int)

(assert (=> d!2203840 (= lt!2530401 e!4239947)))

(declare-fun c!1313694 () Bool)

(assert (=> d!2203840 (= c!1313694 (is-Nil!68070 (exprs!7052 lt!2530299)))))

(assert (=> d!2203840 (= (size!41140 (exprs!7052 lt!2530299)) lt!2530401)))

(declare-fun b!7052742 () Bool)

(assert (=> b!7052742 (= e!4239947 0)))

(declare-fun b!7052743 () Bool)

(assert (=> b!7052743 (= e!4239947 (+ 1 (size!41140 (t!381973 (exprs!7052 lt!2530299)))))))

(assert (= (and d!2203840 c!1313694) b!7052742))

(assert (= (and d!2203840 (not c!1313694)) b!7052743))

(declare-fun m!7769618 () Bool)

(assert (=> b!7052743 m!7769618))

(assert (=> b!7052598 d!2203840))

(declare-fun d!2203842 () Bool)

(declare-fun lt!2530402 () Int)

(assert (=> d!2203842 (>= lt!2530402 0)))

(declare-fun e!4239948 () Int)

(assert (=> d!2203842 (= lt!2530402 e!4239948)))

(declare-fun c!1313695 () Bool)

(assert (=> d!2203842 (= c!1313695 (is-Nil!68070 (exprs!7052 ct2!306)))))

(assert (=> d!2203842 (= (size!41140 (exprs!7052 ct2!306)) lt!2530402)))

(declare-fun b!7052744 () Bool)

(assert (=> b!7052744 (= e!4239948 0)))

(declare-fun b!7052745 () Bool)

(assert (=> b!7052745 (= e!4239948 (+ 1 (size!41140 (t!381973 (exprs!7052 ct2!306)))))))

(assert (= (and d!2203842 c!1313695) b!7052744))

(assert (= (and d!2203842 (not c!1313695)) b!7052745))

(declare-fun m!7769620 () Bool)

(assert (=> b!7052745 m!7769620))

(assert (=> b!7052598 d!2203842))

(declare-fun d!2203844 () Bool)

(declare-fun c!1313696 () Bool)

(assert (=> d!2203844 (= c!1313696 (isEmpty!39704 s!7408))))

(declare-fun e!4239949 () Bool)

(assert (=> d!2203844 (= (matchZipper!3096 (set.insert lt!2530355 (as set.empty (Set Context!13104))) s!7408) e!4239949)))

(declare-fun b!7052746 () Bool)

(assert (=> b!7052746 (= e!4239949 (nullableZipper!2645 (set.insert lt!2530355 (as set.empty (Set Context!13104)))))))

(declare-fun b!7052747 () Bool)

(assert (=> b!7052747 (= e!4239949 (matchZipper!3096 (derivationStepZipper!3006 (set.insert lt!2530355 (as set.empty (Set Context!13104))) (head!14345 s!7408)) (tail!13676 s!7408)))))

(assert (= (and d!2203844 c!1313696) b!7052746))

(assert (= (and d!2203844 (not c!1313696)) b!7052747))

(assert (=> d!2203844 m!7769442))

(assert (=> b!7052746 m!7769526))

(declare-fun m!7769622 () Bool)

(assert (=> b!7052746 m!7769622))

(assert (=> b!7052747 m!7769446))

(assert (=> b!7052747 m!7769526))

(assert (=> b!7052747 m!7769446))

(declare-fun m!7769624 () Bool)

(assert (=> b!7052747 m!7769624))

(assert (=> b!7052747 m!7769450))

(assert (=> b!7052747 m!7769624))

(assert (=> b!7052747 m!7769450))

(declare-fun m!7769626 () Bool)

(assert (=> b!7052747 m!7769626))

(assert (=> bs!1876509 d!2203844))

(declare-fun d!2203846 () Bool)

(declare-fun nullableFct!2764 (Regex!17556) Bool)

(assert (=> d!2203846 (= (nullable!7239 (h!74518 (exprs!7052 lt!2530288))) (nullableFct!2764 (h!74518 (exprs!7052 lt!2530288))))))

(declare-fun bs!1876532 () Bool)

(assert (= bs!1876532 d!2203846))

(declare-fun m!7769628 () Bool)

(assert (=> bs!1876532 m!7769628))

(assert (=> b!7052617 d!2203846))

(declare-fun b!7052748 () Bool)

(declare-fun e!4239950 () List!68194)

(assert (=> b!7052748 (= e!4239950 (exprs!7052 ct2!306))))

(declare-fun b!7052751 () Bool)

(declare-fun lt!2530403 () List!68194)

(declare-fun e!4239951 () Bool)

(assert (=> b!7052751 (= e!4239951 (or (not (= (exprs!7052 ct2!306) Nil!68070)) (= lt!2530403 (t!381973 (exprs!7052 lt!2530299)))))))

(declare-fun b!7052749 () Bool)

(assert (=> b!7052749 (= e!4239950 (Cons!68070 (h!74518 (t!381973 (exprs!7052 lt!2530299))) (++!15639 (t!381973 (t!381973 (exprs!7052 lt!2530299))) (exprs!7052 ct2!306))))))

(declare-fun d!2203848 () Bool)

(assert (=> d!2203848 e!4239951))

(declare-fun res!2879284 () Bool)

(assert (=> d!2203848 (=> (not res!2879284) (not e!4239951))))

(assert (=> d!2203848 (= res!2879284 (= (content!13663 lt!2530403) (set.union (content!13663 (t!381973 (exprs!7052 lt!2530299))) (content!13663 (exprs!7052 ct2!306)))))))

(assert (=> d!2203848 (= lt!2530403 e!4239950)))

(declare-fun c!1313697 () Bool)

(assert (=> d!2203848 (= c!1313697 (is-Nil!68070 (t!381973 (exprs!7052 lt!2530299))))))

(assert (=> d!2203848 (= (++!15639 (t!381973 (exprs!7052 lt!2530299)) (exprs!7052 ct2!306)) lt!2530403)))

(declare-fun b!7052750 () Bool)

(declare-fun res!2879283 () Bool)

(assert (=> b!7052750 (=> (not res!2879283) (not e!4239951))))

(assert (=> b!7052750 (= res!2879283 (= (size!41140 lt!2530403) (+ (size!41140 (t!381973 (exprs!7052 lt!2530299))) (size!41140 (exprs!7052 ct2!306)))))))

(assert (= (and d!2203848 c!1313697) b!7052748))

(assert (= (and d!2203848 (not c!1313697)) b!7052749))

(assert (= (and d!2203848 res!2879284) b!7052750))

(assert (= (and b!7052750 res!2879283) b!7052751))

(declare-fun m!7769630 () Bool)

(assert (=> b!7052749 m!7769630))

(declare-fun m!7769632 () Bool)

(assert (=> d!2203848 m!7769632))

(declare-fun m!7769634 () Bool)

(assert (=> d!2203848 m!7769634))

(assert (=> d!2203848 m!7769400))

(declare-fun m!7769636 () Bool)

(assert (=> b!7052750 m!7769636))

(assert (=> b!7052750 m!7769618))

(assert (=> b!7052750 m!7769406))

(assert (=> b!7052597 d!2203848))

(declare-fun d!2203850 () Bool)

(declare-fun choose!53742 ((Set Context!13104) Int) (Set Context!13104))

(assert (=> d!2203850 (= (map!15873 z1!570 lambda!419495) (choose!53742 z1!570 lambda!419495))))

(declare-fun bs!1876533 () Bool)

(assert (= bs!1876533 d!2203850))

(declare-fun m!7769638 () Bool)

(assert (=> bs!1876533 m!7769638))

(assert (=> d!2203786 d!2203850))

(declare-fun d!2203852 () Bool)

(declare-fun res!2879289 () Bool)

(declare-fun e!4239956 () Bool)

(assert (=> d!2203852 (=> res!2879289 e!4239956)))

(assert (=> d!2203852 (= res!2879289 (is-Nil!68070 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306))))))

(assert (=> d!2203852 (= (forall!16493 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)) lambda!419454) e!4239956)))

(declare-fun b!7052756 () Bool)

(declare-fun e!4239957 () Bool)

(assert (=> b!7052756 (= e!4239956 e!4239957)))

(declare-fun res!2879290 () Bool)

(assert (=> b!7052756 (=> (not res!2879290) (not e!4239957))))

(declare-fun dynLambda!27600 (Int Regex!17556) Bool)

(assert (=> b!7052756 (= res!2879290 (dynLambda!27600 lambda!419454 (h!74518 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)))))))

(declare-fun b!7052757 () Bool)

(assert (=> b!7052757 (= e!4239957 (forall!16493 (t!381973 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306))) lambda!419454))))

(assert (= (and d!2203852 (not res!2879289)) b!7052756))

(assert (= (and b!7052756 res!2879290) b!7052757))

(declare-fun b_lambda!268443 () Bool)

(assert (=> (not b_lambda!268443) (not b!7052756)))

(declare-fun m!7769640 () Bool)

(assert (=> b!7052756 m!7769640))

(declare-fun m!7769642 () Bool)

(assert (=> b!7052757 m!7769642))

(assert (=> d!2203748 d!2203852))

(assert (=> d!2203748 d!2203746))

(declare-fun d!2203854 () Bool)

(assert (=> d!2203854 (forall!16493 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)) lambda!419454)))

(assert (=> d!2203854 true))

(declare-fun _$78!649 () Unit!161784)

(assert (=> d!2203854 (= (choose!53729 (exprs!7052 lt!2530299) (exprs!7052 ct2!306) lambda!419454) _$78!649)))

(declare-fun bs!1876534 () Bool)

(assert (= bs!1876534 d!2203854))

(assert (=> bs!1876534 m!7769344))

(assert (=> bs!1876534 m!7769344))

(assert (=> bs!1876534 m!7769408))

(assert (=> d!2203748 d!2203854))

(declare-fun d!2203856 () Bool)

(declare-fun res!2879291 () Bool)

(declare-fun e!4239958 () Bool)

(assert (=> d!2203856 (=> res!2879291 e!4239958)))

(assert (=> d!2203856 (= res!2879291 (is-Nil!68070 (exprs!7052 lt!2530299)))))

(assert (=> d!2203856 (= (forall!16493 (exprs!7052 lt!2530299) lambda!419454) e!4239958)))

(declare-fun b!7052758 () Bool)

(declare-fun e!4239959 () Bool)

(assert (=> b!7052758 (= e!4239958 e!4239959)))

(declare-fun res!2879292 () Bool)

(assert (=> b!7052758 (=> (not res!2879292) (not e!4239959))))

(assert (=> b!7052758 (= res!2879292 (dynLambda!27600 lambda!419454 (h!74518 (exprs!7052 lt!2530299))))))

(declare-fun b!7052759 () Bool)

(assert (=> b!7052759 (= e!4239959 (forall!16493 (t!381973 (exprs!7052 lt!2530299)) lambda!419454))))

(assert (= (and d!2203856 (not res!2879291)) b!7052758))

(assert (= (and b!7052758 res!2879292) b!7052759))

(declare-fun b_lambda!268445 () Bool)

(assert (=> (not b_lambda!268445) (not b!7052758)))

(declare-fun m!7769644 () Bool)

(assert (=> b!7052758 m!7769644))

(declare-fun m!7769646 () Bool)

(assert (=> b!7052759 m!7769646))

(assert (=> d!2203748 d!2203856))

(declare-fun bs!1876535 () Bool)

(declare-fun d!2203858 () Bool)

(assert (= bs!1876535 (and d!2203858 b!7052539)))

(declare-fun lambda!419514 () Int)

(assert (=> bs!1876535 (= lambda!419514 lambda!419454)))

(declare-fun bs!1876536 () Bool)

(assert (= bs!1876536 (and d!2203858 d!2203752)))

(assert (=> bs!1876536 (= lambda!419514 lambda!419478)))

(declare-fun bs!1876537 () Bool)

(assert (= bs!1876537 (and d!2203858 d!2203764)))

(assert (=> bs!1876537 (= lambda!419514 lambda!419482)))

(declare-fun bs!1876538 () Bool)

(assert (= bs!1876538 (and d!2203858 d!2203790)))

(assert (=> bs!1876538 (= lambda!419514 lambda!419496)))

(assert (=> d!2203858 (= (inv!86750 setElem!49754) (forall!16493 (exprs!7052 setElem!49754) lambda!419514))))

(declare-fun bs!1876539 () Bool)

(assert (= bs!1876539 d!2203858))

(declare-fun m!7769648 () Bool)

(assert (=> bs!1876539 m!7769648))

(assert (=> setNonEmpty!49754 d!2203858))

(declare-fun d!2203860 () Bool)

(declare-fun res!2879293 () Bool)

(declare-fun e!4239960 () Bool)

(assert (=> d!2203860 (=> res!2879293 e!4239960)))

(assert (=> d!2203860 (= res!2879293 (is-Nil!68070 (exprs!7052 ct2!306)))))

(assert (=> d!2203860 (= (forall!16493 (exprs!7052 ct2!306) lambda!419496) e!4239960)))

(declare-fun b!7052760 () Bool)

(declare-fun e!4239961 () Bool)

(assert (=> b!7052760 (= e!4239960 e!4239961)))

(declare-fun res!2879294 () Bool)

(assert (=> b!7052760 (=> (not res!2879294) (not e!4239961))))

(assert (=> b!7052760 (= res!2879294 (dynLambda!27600 lambda!419496 (h!74518 (exprs!7052 ct2!306))))))

(declare-fun b!7052761 () Bool)

(assert (=> b!7052761 (= e!4239961 (forall!16493 (t!381973 (exprs!7052 ct2!306)) lambda!419496))))

(assert (= (and d!2203860 (not res!2879293)) b!7052760))

(assert (= (and b!7052760 res!2879294) b!7052761))

(declare-fun b_lambda!268447 () Bool)

(assert (=> (not b_lambda!268447) (not b!7052760)))

(declare-fun m!7769650 () Bool)

(assert (=> b!7052760 m!7769650))

(declare-fun m!7769652 () Bool)

(assert (=> b!7052761 m!7769652))

(assert (=> d!2203790 d!2203860))

(declare-fun b!7052784 () Bool)

(declare-fun e!4239979 () (Set Context!13104))

(assert (=> b!7052784 (= e!4239979 (as set.empty (Set Context!13104)))))

(declare-fun b!7052785 () Bool)

(declare-fun call!640643 () (Set Context!13104))

(assert (=> b!7052785 (= e!4239979 call!640643)))

(declare-fun bm!640635 () Bool)

(declare-fun call!640640 () (Set Context!13104))

(assert (=> bm!640635 (= call!640643 call!640640)))

(declare-fun b!7052786 () Bool)

(declare-fun e!4239976 () (Set Context!13104))

(assert (=> b!7052786 (= e!4239976 call!640643)))

(declare-fun b!7052787 () Bool)

(declare-fun c!1313712 () Bool)

(assert (=> b!7052787 (= c!1313712 (is-Star!17556 (h!74518 (exprs!7052 lt!2530288))))))

(assert (=> b!7052787 (= e!4239976 e!4239979)))

(declare-fun b!7052788 () Bool)

(declare-fun e!4239975 () (Set Context!13104))

(assert (=> b!7052788 (= e!4239975 e!4239976)))

(declare-fun c!1313709 () Bool)

(assert (=> b!7052788 (= c!1313709 (is-Concat!26401 (h!74518 (exprs!7052 lt!2530288))))))

(declare-fun d!2203862 () Bool)

(declare-fun c!1313711 () Bool)

(assert (=> d!2203862 (= c!1313711 (and (is-ElementMatch!17556 (h!74518 (exprs!7052 lt!2530288))) (= (c!1313639 (h!74518 (exprs!7052 lt!2530288))) (h!74519 s!7408))))))

(declare-fun e!4239977 () (Set Context!13104))

(assert (=> d!2203862 (= (derivationStepZipperDown!2190 (h!74518 (exprs!7052 lt!2530288)) (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (h!74519 s!7408)) e!4239977)))

(declare-fun bm!640636 () Bool)

(declare-fun call!640641 () (Set Context!13104))

(declare-fun call!640642 () List!68194)

(declare-fun c!1313710 () Bool)

(declare-fun c!1313708 () Bool)

(assert (=> bm!640636 (= call!640641 (derivationStepZipperDown!2190 (ite c!1313710 (regOne!35625 (h!74518 (exprs!7052 lt!2530288))) (ite c!1313708 (regTwo!35624 (h!74518 (exprs!7052 lt!2530288))) (ite c!1313709 (regOne!35624 (h!74518 (exprs!7052 lt!2530288))) (reg!17885 (h!74518 (exprs!7052 lt!2530288)))))) (ite (or c!1313710 c!1313708) (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (Context!13105 call!640642)) (h!74519 s!7408)))))

(declare-fun b!7052789 () Bool)

(declare-fun call!640644 () (Set Context!13104))

(assert (=> b!7052789 (= e!4239975 (set.union call!640644 call!640640))))

(declare-fun b!7052790 () Bool)

(declare-fun e!4239974 () (Set Context!13104))

(assert (=> b!7052790 (= e!4239974 (set.union call!640641 call!640644))))

(declare-fun bm!640637 () Bool)

(declare-fun call!640645 () List!68194)

(assert (=> bm!640637 (= call!640644 (derivationStepZipperDown!2190 (ite c!1313710 (regTwo!35625 (h!74518 (exprs!7052 lt!2530288))) (regOne!35624 (h!74518 (exprs!7052 lt!2530288)))) (ite c!1313710 (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (Context!13105 call!640645)) (h!74519 s!7408)))))

(declare-fun b!7052791 () Bool)

(assert (=> b!7052791 (= e!4239977 (set.insert (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (as set.empty (Set Context!13104))))))

(declare-fun bm!640638 () Bool)

(assert (=> bm!640638 (= call!640642 call!640645)))

(declare-fun bm!640639 () Bool)

(declare-fun $colon$colon!2612 (List!68194 Regex!17556) List!68194)

(assert (=> bm!640639 (= call!640645 ($colon$colon!2612 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288)))) (ite (or c!1313708 c!1313709) (regTwo!35624 (h!74518 (exprs!7052 lt!2530288))) (h!74518 (exprs!7052 lt!2530288)))))))

(declare-fun bm!640640 () Bool)

(assert (=> bm!640640 (= call!640640 call!640641)))

(declare-fun b!7052792 () Bool)

(declare-fun e!4239978 () Bool)

(assert (=> b!7052792 (= e!4239978 (nullable!7239 (regOne!35624 (h!74518 (exprs!7052 lt!2530288)))))))

(declare-fun b!7052793 () Bool)

(assert (=> b!7052793 (= c!1313708 e!4239978)))

(declare-fun res!2879297 () Bool)

(assert (=> b!7052793 (=> (not res!2879297) (not e!4239978))))

(assert (=> b!7052793 (= res!2879297 (is-Concat!26401 (h!74518 (exprs!7052 lt!2530288))))))

(assert (=> b!7052793 (= e!4239974 e!4239975)))

(declare-fun b!7052794 () Bool)

(assert (=> b!7052794 (= e!4239977 e!4239974)))

(assert (=> b!7052794 (= c!1313710 (is-Union!17556 (h!74518 (exprs!7052 lt!2530288))))))

(assert (= (and d!2203862 c!1313711) b!7052791))

(assert (= (and d!2203862 (not c!1313711)) b!7052794))

(assert (= (and b!7052794 c!1313710) b!7052790))

(assert (= (and b!7052794 (not c!1313710)) b!7052793))

(assert (= (and b!7052793 res!2879297) b!7052792))

(assert (= (and b!7052793 c!1313708) b!7052789))

(assert (= (and b!7052793 (not c!1313708)) b!7052788))

(assert (= (and b!7052788 c!1313709) b!7052786))

(assert (= (and b!7052788 (not c!1313709)) b!7052787))

(assert (= (and b!7052787 c!1313712) b!7052785))

(assert (= (and b!7052787 (not c!1313712)) b!7052784))

(assert (= (or b!7052786 b!7052785) bm!640638))

(assert (= (or b!7052786 b!7052785) bm!640635))

(assert (= (or b!7052789 bm!640635) bm!640640))

(assert (= (or b!7052789 bm!640638) bm!640639))

(assert (= (or b!7052790 bm!640640) bm!640636))

(assert (= (or b!7052790 b!7052789) bm!640637))

(declare-fun m!7769654 () Bool)

(assert (=> bm!640636 m!7769654))

(declare-fun m!7769656 () Bool)

(assert (=> bm!640639 m!7769656))

(declare-fun m!7769658 () Bool)

(assert (=> b!7052791 m!7769658))

(declare-fun m!7769660 () Bool)

(assert (=> bm!640637 m!7769660))

(declare-fun m!7769662 () Bool)

(assert (=> b!7052792 m!7769662))

(assert (=> bm!640619 d!2203862))

(declare-fun b!7052795 () Bool)

(declare-fun call!640646 () (Set Context!13104))

(declare-fun e!4239981 () (Set Context!13104))

(assert (=> b!7052795 (= e!4239981 (set.union call!640646 (derivationStepZipperUp!2140 (Context!13105 (t!381973 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288)))))) (h!74519 s!7408))))))

(declare-fun b!7052796 () Bool)

(declare-fun e!4239980 () (Set Context!13104))

(assert (=> b!7052796 (= e!4239980 call!640646)))

(declare-fun b!7052797 () Bool)

(assert (=> b!7052797 (= e!4239981 e!4239980)))

(declare-fun c!1313714 () Bool)

(assert (=> b!7052797 (= c!1313714 (is-Cons!68070 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288))))))))

(declare-fun b!7052798 () Bool)

(declare-fun e!4239982 () Bool)

(assert (=> b!7052798 (= e!4239982 (nullable!7239 (h!74518 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288)))))))))

(declare-fun b!7052799 () Bool)

(assert (=> b!7052799 (= e!4239980 (as set.empty (Set Context!13104)))))

(declare-fun bm!640641 () Bool)

(assert (=> bm!640641 (= call!640646 (derivationStepZipperDown!2190 (h!74518 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288))))) (Context!13105 (t!381973 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288)))))) (h!74519 s!7408)))))

(declare-fun d!2203864 () Bool)

(declare-fun c!1313713 () Bool)

(assert (=> d!2203864 (= c!1313713 e!4239982)))

(declare-fun res!2879298 () Bool)

(assert (=> d!2203864 (=> (not res!2879298) (not e!4239982))))

(assert (=> d!2203864 (= res!2879298 (is-Cons!68070 (exprs!7052 (Context!13105 (t!381973 (exprs!7052 lt!2530288))))))))

(assert (=> d!2203864 (= (derivationStepZipperUp!2140 (Context!13105 (t!381973 (exprs!7052 lt!2530288))) (h!74519 s!7408)) e!4239981)))

(assert (= (and d!2203864 res!2879298) b!7052798))

(assert (= (and d!2203864 c!1313713) b!7052795))

(assert (= (and d!2203864 (not c!1313713)) b!7052797))

(assert (= (and b!7052797 c!1313714) b!7052796))

(assert (= (and b!7052797 (not c!1313714)) b!7052799))

(assert (= (or b!7052795 b!7052796) bm!640641))

(declare-fun m!7769664 () Bool)

(assert (=> b!7052795 m!7769664))

(declare-fun m!7769666 () Bool)

(assert (=> b!7052798 m!7769666))

(declare-fun m!7769668 () Bool)

(assert (=> bm!640641 m!7769668))

(assert (=> b!7052614 d!2203864))

(declare-fun d!2203866 () Bool)

(assert (=> d!2203866 true))

(declare-fun setRes!49760 () Bool)

(assert (=> d!2203866 setRes!49760))

(declare-fun condSetEmpty!49760 () Bool)

(declare-fun res!2879301 () (Set Context!13104))

(assert (=> d!2203866 (= condSetEmpty!49760 (= res!2879301 (as set.empty (Set Context!13104))))))

(assert (=> d!2203866 (= (choose!53732 lt!2530298 lambda!419455) res!2879301)))

(declare-fun setIsEmpty!49760 () Bool)

(assert (=> setIsEmpty!49760 setRes!49760))

(declare-fun e!4239985 () Bool)

(declare-fun tp!1939682 () Bool)

(declare-fun setNonEmpty!49760 () Bool)

(declare-fun setElem!49760 () Context!13104)

(assert (=> setNonEmpty!49760 (= setRes!49760 (and tp!1939682 (inv!86750 setElem!49760) e!4239985))))

(declare-fun setRest!49760 () (Set Context!13104))

(assert (=> setNonEmpty!49760 (= res!2879301 (set.union (set.insert setElem!49760 (as set.empty (Set Context!13104))) setRest!49760))))

(declare-fun b!7052802 () Bool)

(declare-fun tp!1939681 () Bool)

(assert (=> b!7052802 (= e!4239985 tp!1939681)))

(assert (= (and d!2203866 condSetEmpty!49760) setIsEmpty!49760))

(assert (= (and d!2203866 (not condSetEmpty!49760)) setNonEmpty!49760))

(assert (= setNonEmpty!49760 b!7052802))

(declare-fun m!7769670 () Bool)

(assert (=> setNonEmpty!49760 m!7769670))

(assert (=> d!2203762 d!2203866))

(assert (=> bs!1876508 d!2203758))

(declare-fun d!2203868 () Bool)

(assert (=> d!2203868 (= (isEmpty!39704 s!7408) (is-Nil!68071 s!7408))))

(assert (=> d!2203766 d!2203868))

(declare-fun d!2203870 () Bool)

(declare-fun res!2879306 () Bool)

(declare-fun e!4239990 () Bool)

(assert (=> d!2203870 (=> res!2879306 e!4239990)))

(assert (=> d!2203870 (= res!2879306 (is-Nil!68072 lt!2530290))))

(assert (=> d!2203870 (= (forall!16494 lt!2530290 lambda!419485) e!4239990)))

(declare-fun b!7052807 () Bool)

(declare-fun e!4239991 () Bool)

(assert (=> b!7052807 (= e!4239990 e!4239991)))

(declare-fun res!2879307 () Bool)

(assert (=> b!7052807 (=> (not res!2879307) (not e!4239991))))

(assert (=> b!7052807 (= res!2879307 (dynLambda!27594 lambda!419485 (h!74520 lt!2530290)))))

(declare-fun b!7052808 () Bool)

(assert (=> b!7052808 (= e!4239991 (forall!16494 (t!381975 lt!2530290) lambda!419485))))

(assert (= (and d!2203870 (not res!2879306)) b!7052807))

(assert (= (and b!7052807 res!2879307) b!7052808))

(declare-fun b_lambda!268449 () Bool)

(assert (=> (not b_lambda!268449) (not b!7052807)))

(declare-fun m!7769672 () Bool)

(assert (=> b!7052807 m!7769672))

(declare-fun m!7769674 () Bool)

(assert (=> b!7052808 m!7769674))

(assert (=> d!2203774 d!2203870))

(declare-fun d!2203872 () Bool)

(declare-fun e!4239997 () Bool)

(assert (=> d!2203872 e!4239997))

(declare-fun res!2879310 () Bool)

(assert (=> d!2203872 (=> (not res!2879310) (not e!4239997))))

(declare-fun a!13432 () Context!13104)

(assert (=> d!2203872 (= res!2879310 (= lt!2530297 (dynLambda!27592 lambda!419453 a!13432)))))

(declare-fun e!4239996 () Bool)

(assert (=> d!2203872 (and (inv!86750 a!13432) e!4239996)))

(assert (=> d!2203872 (= (choose!53730 z1!570 lambda!419453 lt!2530297) a!13432)))

(declare-fun b!7052814 () Bool)

(declare-fun tp!1939685 () Bool)

(assert (=> b!7052814 (= e!4239996 tp!1939685)))

(declare-fun b!7052815 () Bool)

(assert (=> b!7052815 (= e!4239997 (set.member a!13432 z1!570))))

(assert (= d!2203872 b!7052814))

(assert (= (and d!2203872 res!2879310) b!7052815))

(declare-fun b_lambda!268451 () Bool)

(assert (=> (not b_lambda!268451) (not d!2203872)))

(declare-fun m!7769676 () Bool)

(assert (=> d!2203872 m!7769676))

(declare-fun m!7769678 () Bool)

(assert (=> d!2203872 m!7769678))

(declare-fun m!7769680 () Bool)

(assert (=> b!7052815 m!7769680))

(assert (=> d!2203750 d!2203872))

(declare-fun d!2203874 () Bool)

(assert (=> d!2203874 (= (map!15873 z1!570 lambda!419453) (choose!53742 z1!570 lambda!419453))))

(declare-fun bs!1876540 () Bool)

(assert (= bs!1876540 d!2203874))

(declare-fun m!7769682 () Bool)

(assert (=> bs!1876540 m!7769682))

(assert (=> d!2203750 d!2203874))

(declare-fun d!2203876 () Bool)

(declare-fun c!1313715 () Bool)

(assert (=> d!2203876 (= c!1313715 (isEmpty!39704 (tail!13676 s!7408)))))

(declare-fun e!4239998 () Bool)

(assert (=> d!2203876 (= (matchZipper!3096 (derivationStepZipper!3006 lt!2530289 (head!14345 s!7408)) (tail!13676 s!7408)) e!4239998)))

(declare-fun b!7052816 () Bool)

(assert (=> b!7052816 (= e!4239998 (nullableZipper!2645 (derivationStepZipper!3006 lt!2530289 (head!14345 s!7408))))))

(declare-fun b!7052817 () Bool)

(assert (=> b!7052817 (= e!4239998 (matchZipper!3096 (derivationStepZipper!3006 (derivationStepZipper!3006 lt!2530289 (head!14345 s!7408)) (head!14345 (tail!13676 s!7408))) (tail!13676 (tail!13676 s!7408))))))

(assert (= (and d!2203876 c!1313715) b!7052816))

(assert (= (and d!2203876 (not c!1313715)) b!7052817))

(assert (=> d!2203876 m!7769450))

(declare-fun m!7769684 () Bool)

(assert (=> d!2203876 m!7769684))

(assert (=> b!7052816 m!7769500))

(declare-fun m!7769686 () Bool)

(assert (=> b!7052816 m!7769686))

(assert (=> b!7052817 m!7769450))

(declare-fun m!7769688 () Bool)

(assert (=> b!7052817 m!7769688))

(assert (=> b!7052817 m!7769500))

(assert (=> b!7052817 m!7769688))

(declare-fun m!7769690 () Bool)

(assert (=> b!7052817 m!7769690))

(assert (=> b!7052817 m!7769450))

(declare-fun m!7769692 () Bool)

(assert (=> b!7052817 m!7769692))

(assert (=> b!7052817 m!7769690))

(assert (=> b!7052817 m!7769692))

(declare-fun m!7769694 () Bool)

(assert (=> b!7052817 m!7769694))

(assert (=> b!7052648 d!2203876))

(declare-fun bs!1876541 () Bool)

(declare-fun d!2203878 () Bool)

(assert (= bs!1876541 (and d!2203878 b!7052535)))

(declare-fun lambda!419515 () Int)

(assert (=> bs!1876541 (= (= (head!14345 s!7408) (h!74519 s!7408)) (= lambda!419515 lambda!419455))))

(declare-fun bs!1876542 () Bool)

(assert (= bs!1876542 (and d!2203878 d!2203760)))

(assert (=> bs!1876542 (= (= (head!14345 s!7408) (h!74519 s!7408)) (= lambda!419515 lambda!419481))))

(assert (=> d!2203878 true))

(assert (=> d!2203878 (= (derivationStepZipper!3006 lt!2530289 (head!14345 s!7408)) (flatMap!2482 lt!2530289 lambda!419515))))

(declare-fun bs!1876543 () Bool)

(assert (= bs!1876543 d!2203878))

(declare-fun m!7769696 () Bool)

(assert (=> bs!1876543 m!7769696))

(assert (=> b!7052648 d!2203878))

(declare-fun d!2203880 () Bool)

(assert (=> d!2203880 (= (head!14345 s!7408) (h!74519 s!7408))))

(assert (=> b!7052648 d!2203880))

(declare-fun d!2203882 () Bool)

(assert (=> d!2203882 (= (tail!13676 s!7408) (t!381974 s!7408))))

(assert (=> b!7052648 d!2203882))

(assert (=> d!2203756 d!2203762))

(declare-fun d!2203884 () Bool)

(assert (=> d!2203884 (= (flatMap!2482 lt!2530298 lambda!419455) (dynLambda!27593 lambda!419455 lt!2530288))))

(assert (=> d!2203884 true))

(declare-fun _$13!4536 () Unit!161784)

(assert (=> d!2203884 (= (choose!53731 lt!2530298 lt!2530288 lambda!419455) _$13!4536)))

(declare-fun b_lambda!268453 () Bool)

(assert (=> (not b_lambda!268453) (not d!2203884)))

(declare-fun bs!1876544 () Bool)

(assert (= bs!1876544 d!2203884))

(assert (=> bs!1876544 m!7769340))

(assert (=> bs!1876544 m!7769426))

(assert (=> d!2203756 d!2203884))

(declare-fun bs!1876545 () Bool)

(declare-fun d!2203886 () Bool)

(assert (= bs!1876545 (and d!2203886 b!7052537)))

(declare-fun lambda!419518 () Int)

(assert (=> bs!1876545 (not (= lambda!419518 lambda!419452))))

(declare-fun bs!1876546 () Bool)

(assert (= bs!1876546 (and d!2203886 d!2203774)))

(assert (=> bs!1876546 (not (= lambda!419518 lambda!419485))))

(declare-fun bs!1876547 () Bool)

(assert (= bs!1876547 (and d!2203886 d!2203776)))

(assert (=> bs!1876547 (not (= lambda!419518 lambda!419488))))

(assert (=> d!2203886 (= (nullableZipper!2645 lt!2530289) (exists!3537 lt!2530289 lambda!419518))))

(declare-fun bs!1876548 () Bool)

(assert (= bs!1876548 d!2203886))

(declare-fun m!7769698 () Bool)

(assert (=> bs!1876548 m!7769698))

(assert (=> b!7052647 d!2203886))

(declare-fun d!2203888 () Bool)

(declare-fun c!1313720 () Bool)

(assert (=> d!2203888 (= c!1313720 (is-Nil!68070 lt!2530343))))

(declare-fun e!4240001 () (Set Regex!17556))

(assert (=> d!2203888 (= (content!13663 lt!2530343) e!4240001)))

(declare-fun b!7052822 () Bool)

(assert (=> b!7052822 (= e!4240001 (as set.empty (Set Regex!17556)))))

(declare-fun b!7052823 () Bool)

(assert (=> b!7052823 (= e!4240001 (set.union (set.insert (h!74518 lt!2530343) (as set.empty (Set Regex!17556))) (content!13663 (t!381973 lt!2530343))))))

(assert (= (and d!2203888 c!1313720) b!7052822))

(assert (= (and d!2203888 (not c!1313720)) b!7052823))

(declare-fun m!7769700 () Bool)

(assert (=> b!7052823 m!7769700))

(declare-fun m!7769702 () Bool)

(assert (=> b!7052823 m!7769702))

(assert (=> d!2203746 d!2203888))

(declare-fun d!2203890 () Bool)

(declare-fun c!1313721 () Bool)

(assert (=> d!2203890 (= c!1313721 (is-Nil!68070 (exprs!7052 lt!2530299)))))

(declare-fun e!4240002 () (Set Regex!17556))

(assert (=> d!2203890 (= (content!13663 (exprs!7052 lt!2530299)) e!4240002)))

(declare-fun b!7052824 () Bool)

(assert (=> b!7052824 (= e!4240002 (as set.empty (Set Regex!17556)))))

(declare-fun b!7052825 () Bool)

(assert (=> b!7052825 (= e!4240002 (set.union (set.insert (h!74518 (exprs!7052 lt!2530299)) (as set.empty (Set Regex!17556))) (content!13663 (t!381973 (exprs!7052 lt!2530299)))))))

(assert (= (and d!2203890 c!1313721) b!7052824))

(assert (= (and d!2203890 (not c!1313721)) b!7052825))

(declare-fun m!7769704 () Bool)

(assert (=> b!7052825 m!7769704))

(assert (=> b!7052825 m!7769634))

(assert (=> d!2203746 d!2203890))

(declare-fun d!2203892 () Bool)

(declare-fun c!1313722 () Bool)

(assert (=> d!2203892 (= c!1313722 (is-Nil!68070 (exprs!7052 ct2!306)))))

(declare-fun e!4240003 () (Set Regex!17556))

(assert (=> d!2203892 (= (content!13663 (exprs!7052 ct2!306)) e!4240003)))

(declare-fun b!7052826 () Bool)

(assert (=> b!7052826 (= e!4240003 (as set.empty (Set Regex!17556)))))

(declare-fun b!7052827 () Bool)

(assert (=> b!7052827 (= e!4240003 (set.union (set.insert (h!74518 (exprs!7052 ct2!306)) (as set.empty (Set Regex!17556))) (content!13663 (t!381973 (exprs!7052 ct2!306)))))))

(assert (= (and d!2203892 c!1313722) b!7052826))

(assert (= (and d!2203892 (not c!1313722)) b!7052827))

(declare-fun m!7769706 () Bool)

(assert (=> b!7052827 m!7769706))

(declare-fun m!7769708 () Bool)

(assert (=> b!7052827 m!7769708))

(assert (=> d!2203746 d!2203892))

(declare-fun d!2203894 () Bool)

(declare-fun res!2879315 () Bool)

(declare-fun e!4240008 () Bool)

(assert (=> d!2203894 (=> res!2879315 e!4240008)))

(assert (=> d!2203894 (= res!2879315 (is-Nil!68072 lt!2530360))))

(assert (=> d!2203894 (= (noDuplicate!2679 lt!2530360) e!4240008)))

(declare-fun b!7052832 () Bool)

(declare-fun e!4240009 () Bool)

(assert (=> b!7052832 (= e!4240008 e!4240009)))

(declare-fun res!2879316 () Bool)

(assert (=> b!7052832 (=> (not res!2879316) (not e!4240009))))

(assert (=> b!7052832 (= res!2879316 (not (contains!20481 (t!381975 lt!2530360) (h!74520 lt!2530360))))))

(declare-fun b!7052833 () Bool)

(assert (=> b!7052833 (= e!4240009 (noDuplicate!2679 (t!381975 lt!2530360)))))

(assert (= (and d!2203894 (not res!2879315)) b!7052832))

(assert (= (and b!7052832 res!2879316) b!7052833))

(declare-fun m!7769710 () Bool)

(assert (=> b!7052832 m!7769710))

(declare-fun m!7769712 () Bool)

(assert (=> b!7052833 m!7769712))

(assert (=> d!2203772 d!2203894))

(declare-fun d!2203896 () Bool)

(declare-fun e!4240016 () Bool)

(assert (=> d!2203896 e!4240016))

(declare-fun res!2879321 () Bool)

(assert (=> d!2203896 (=> (not res!2879321) (not e!4240016))))

(declare-fun res!2879322 () List!68196)

(assert (=> d!2203896 (= res!2879321 (noDuplicate!2679 res!2879322))))

(declare-fun e!4240017 () Bool)

(assert (=> d!2203896 e!4240017))

(assert (=> d!2203896 (= (choose!53733 lt!2530289) res!2879322)))

(declare-fun b!7052841 () Bool)

(declare-fun e!4240018 () Bool)

(declare-fun tp!1939690 () Bool)

(assert (=> b!7052841 (= e!4240018 tp!1939690)))

(declare-fun tp!1939691 () Bool)

(declare-fun b!7052840 () Bool)

(assert (=> b!7052840 (= e!4240017 (and (inv!86750 (h!74520 res!2879322)) e!4240018 tp!1939691))))

(declare-fun b!7052842 () Bool)

(assert (=> b!7052842 (= e!4240016 (= (content!13664 res!2879322) lt!2530289))))

(assert (= b!7052840 b!7052841))

(assert (= (and d!2203896 (is-Cons!68072 res!2879322)) b!7052840))

(assert (= (and d!2203896 res!2879321) b!7052842))

(declare-fun m!7769714 () Bool)

(assert (=> d!2203896 m!7769714))

(declare-fun m!7769716 () Bool)

(assert (=> b!7052840 m!7769716))

(declare-fun m!7769718 () Bool)

(assert (=> b!7052842 m!7769718))

(assert (=> d!2203772 d!2203896))

(declare-fun d!2203898 () Bool)

(assert (=> d!2203898 (= (flatMap!2482 lt!2530298 lambda!419481) (choose!53732 lt!2530298 lambda!419481))))

(declare-fun bs!1876549 () Bool)

(assert (= bs!1876549 d!2203898))

(declare-fun m!7769720 () Bool)

(assert (=> bs!1876549 m!7769720))

(assert (=> d!2203760 d!2203898))

(declare-fun d!2203900 () Bool)

(assert (=> d!2203900 (forall!16493 (++!15639 (exprs!7052 lt!2530349) (exprs!7052 ct2!306)) lambda!419454)))

(declare-fun lt!2530404 () Unit!161784)

(assert (=> d!2203900 (= lt!2530404 (choose!53729 (exprs!7052 lt!2530349) (exprs!7052 ct2!306) lambda!419454))))

(assert (=> d!2203900 (forall!16493 (exprs!7052 lt!2530349) lambda!419454)))

(assert (=> d!2203900 (= (lemmaConcatPreservesForall!867 (exprs!7052 lt!2530349) (exprs!7052 ct2!306) lambda!419454) lt!2530404)))

(declare-fun bs!1876550 () Bool)

(assert (= bs!1876550 d!2203900))

(assert (=> bs!1876550 m!7769524))

(assert (=> bs!1876550 m!7769524))

(declare-fun m!7769722 () Bool)

(assert (=> bs!1876550 m!7769722))

(declare-fun m!7769724 () Bool)

(assert (=> bs!1876550 m!7769724))

(declare-fun m!7769726 () Bool)

(assert (=> bs!1876550 m!7769726))

(assert (=> bs!1876507 d!2203900))

(declare-fun b!7052843 () Bool)

(declare-fun e!4240019 () List!68194)

(assert (=> b!7052843 (= e!4240019 (exprs!7052 ct2!306))))

(declare-fun e!4240020 () Bool)

(declare-fun lt!2530405 () List!68194)

(declare-fun b!7052846 () Bool)

(assert (=> b!7052846 (= e!4240020 (or (not (= (exprs!7052 ct2!306) Nil!68070)) (= lt!2530405 (exprs!7052 lt!2530349))))))

(declare-fun b!7052844 () Bool)

(assert (=> b!7052844 (= e!4240019 (Cons!68070 (h!74518 (exprs!7052 lt!2530349)) (++!15639 (t!381973 (exprs!7052 lt!2530349)) (exprs!7052 ct2!306))))))

(declare-fun d!2203902 () Bool)

(assert (=> d!2203902 e!4240020))

(declare-fun res!2879324 () Bool)

(assert (=> d!2203902 (=> (not res!2879324) (not e!4240020))))

(assert (=> d!2203902 (= res!2879324 (= (content!13663 lt!2530405) (set.union (content!13663 (exprs!7052 lt!2530349)) (content!13663 (exprs!7052 ct2!306)))))))

(assert (=> d!2203902 (= lt!2530405 e!4240019)))

(declare-fun c!1313723 () Bool)

(assert (=> d!2203902 (= c!1313723 (is-Nil!68070 (exprs!7052 lt!2530349)))))

(assert (=> d!2203902 (= (++!15639 (exprs!7052 lt!2530349) (exprs!7052 ct2!306)) lt!2530405)))

(declare-fun b!7052845 () Bool)

(declare-fun res!2879323 () Bool)

(assert (=> b!7052845 (=> (not res!2879323) (not e!4240020))))

(assert (=> b!7052845 (= res!2879323 (= (size!41140 lt!2530405) (+ (size!41140 (exprs!7052 lt!2530349)) (size!41140 (exprs!7052 ct2!306)))))))

(assert (= (and d!2203902 c!1313723) b!7052843))

(assert (= (and d!2203902 (not c!1313723)) b!7052844))

(assert (= (and d!2203902 res!2879324) b!7052845))

(assert (= (and b!7052845 res!2879323) b!7052846))

(declare-fun m!7769728 () Bool)

(assert (=> b!7052844 m!7769728))

(declare-fun m!7769730 () Bool)

(assert (=> d!2203902 m!7769730))

(declare-fun m!7769732 () Bool)

(assert (=> d!2203902 m!7769732))

(assert (=> d!2203902 m!7769400))

(declare-fun m!7769734 () Bool)

(assert (=> b!7052845 m!7769734))

(declare-fun m!7769736 () Bool)

(assert (=> b!7052845 m!7769736))

(assert (=> b!7052845 m!7769406))

(assert (=> bs!1876507 d!2203902))

(declare-fun d!2203904 () Bool)

(declare-fun c!1313724 () Bool)

(assert (=> d!2203904 (= c!1313724 (isEmpty!39704 (tail!13676 s!7408)))))

(declare-fun e!4240021 () Bool)

(assert (=> d!2203904 (= (matchZipper!3096 (derivationStepZipper!3006 lt!2530287 (head!14345 s!7408)) (tail!13676 s!7408)) e!4240021)))

(declare-fun b!7052847 () Bool)

(assert (=> b!7052847 (= e!4240021 (nullableZipper!2645 (derivationStepZipper!3006 lt!2530287 (head!14345 s!7408))))))

(declare-fun b!7052848 () Bool)

(assert (=> b!7052848 (= e!4240021 (matchZipper!3096 (derivationStepZipper!3006 (derivationStepZipper!3006 lt!2530287 (head!14345 s!7408)) (head!14345 (tail!13676 s!7408))) (tail!13676 (tail!13676 s!7408))))))

(assert (= (and d!2203904 c!1313724) b!7052847))

(assert (= (and d!2203904 (not c!1313724)) b!7052848))

(assert (=> d!2203904 m!7769450))

(assert (=> d!2203904 m!7769684))

(assert (=> b!7052847 m!7769448))

(declare-fun m!7769738 () Bool)

(assert (=> b!7052847 m!7769738))

(assert (=> b!7052848 m!7769450))

(assert (=> b!7052848 m!7769688))

(assert (=> b!7052848 m!7769448))

(assert (=> b!7052848 m!7769688))

(declare-fun m!7769740 () Bool)

(assert (=> b!7052848 m!7769740))

(assert (=> b!7052848 m!7769450))

(assert (=> b!7052848 m!7769692))

(assert (=> b!7052848 m!7769740))

(assert (=> b!7052848 m!7769692))

(declare-fun m!7769742 () Bool)

(assert (=> b!7052848 m!7769742))

(assert (=> b!7052626 d!2203904))

(declare-fun bs!1876551 () Bool)

(declare-fun d!2203906 () Bool)

(assert (= bs!1876551 (and d!2203906 b!7052535)))

(declare-fun lambda!419519 () Int)

(assert (=> bs!1876551 (= (= (head!14345 s!7408) (h!74519 s!7408)) (= lambda!419519 lambda!419455))))

(declare-fun bs!1876552 () Bool)

(assert (= bs!1876552 (and d!2203906 d!2203760)))

(assert (=> bs!1876552 (= (= (head!14345 s!7408) (h!74519 s!7408)) (= lambda!419519 lambda!419481))))

(declare-fun bs!1876553 () Bool)

(assert (= bs!1876553 (and d!2203906 d!2203878)))

(assert (=> bs!1876553 (= lambda!419519 lambda!419515)))

(assert (=> d!2203906 true))

(assert (=> d!2203906 (= (derivationStepZipper!3006 lt!2530287 (head!14345 s!7408)) (flatMap!2482 lt!2530287 lambda!419519))))

(declare-fun bs!1876554 () Bool)

(assert (= bs!1876554 d!2203906))

(declare-fun m!7769744 () Bool)

(assert (=> bs!1876554 m!7769744))

(assert (=> b!7052626 d!2203906))

(assert (=> b!7052626 d!2203880))

(assert (=> b!7052626 d!2203882))

(assert (=> d!2203784 d!2203868))

(declare-fun d!2203908 () Bool)

(declare-fun res!2879325 () Bool)

(declare-fun e!4240022 () Bool)

(assert (=> d!2203908 (=> res!2879325 e!4240022)))

(assert (=> d!2203908 (= res!2879325 (is-Nil!68070 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299))))))))

(assert (=> d!2203908 (= (forall!16493 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))) lambda!419478) e!4240022)))

(declare-fun b!7052849 () Bool)

(declare-fun e!4240023 () Bool)

(assert (=> b!7052849 (= e!4240022 e!4240023)))

(declare-fun res!2879326 () Bool)

(assert (=> b!7052849 (=> (not res!2879326) (not e!4240023))))

(assert (=> b!7052849 (= res!2879326 (dynLambda!27600 lambda!419478 (h!74518 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))))))))

(declare-fun b!7052850 () Bool)

(assert (=> b!7052850 (= e!4240023 (forall!16493 (t!381973 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299))))) lambda!419478))))

(assert (= (and d!2203908 (not res!2879325)) b!7052849))

(assert (= (and b!7052849 res!2879326) b!7052850))

(declare-fun b_lambda!268455 () Bool)

(assert (=> (not b_lambda!268455) (not b!7052849)))

(declare-fun m!7769746 () Bool)

(assert (=> b!7052849 m!7769746))

(declare-fun m!7769748 () Bool)

(assert (=> b!7052850 m!7769748))

(assert (=> d!2203752 d!2203908))

(declare-fun bs!1876555 () Bool)

(declare-fun d!2203910 () Bool)

(assert (= bs!1876555 (and d!2203910 b!7052537)))

(declare-fun lambda!419520 () Int)

(assert (=> bs!1876555 (not (= lambda!419520 lambda!419452))))

(declare-fun bs!1876556 () Bool)

(assert (= bs!1876556 (and d!2203910 d!2203774)))

(assert (=> bs!1876556 (not (= lambda!419520 lambda!419485))))

(declare-fun bs!1876557 () Bool)

(assert (= bs!1876557 (and d!2203910 d!2203776)))

(assert (=> bs!1876557 (not (= lambda!419520 lambda!419488))))

(declare-fun bs!1876558 () Bool)

(assert (= bs!1876558 (and d!2203910 d!2203886)))

(assert (=> bs!1876558 (= lambda!419520 lambda!419518)))

(assert (=> d!2203910 (= (nullableZipper!2645 lt!2530287) (exists!3537 lt!2530287 lambda!419520))))

(declare-fun bs!1876559 () Bool)

(assert (= bs!1876559 d!2203910))

(declare-fun m!7769750 () Bool)

(assert (=> bs!1876559 m!7769750))

(assert (=> b!7052625 d!2203910))

(declare-fun bs!1876560 () Bool)

(declare-fun d!2203912 () Bool)

(assert (= bs!1876560 (and d!2203912 d!2203774)))

(declare-fun lambda!419521 () Int)

(assert (=> bs!1876560 (= (= lambda!419488 lambda!419452) (= lambda!419521 lambda!419485))))

(declare-fun bs!1876561 () Bool)

(assert (= bs!1876561 (and d!2203912 d!2203910)))

(assert (=> bs!1876561 (not (= lambda!419521 lambda!419520))))

(declare-fun bs!1876562 () Bool)

(assert (= bs!1876562 (and d!2203912 d!2203886)))

(assert (=> bs!1876562 (not (= lambda!419521 lambda!419518))))

(declare-fun bs!1876563 () Bool)

(assert (= bs!1876563 (and d!2203912 b!7052537)))

(assert (=> bs!1876563 (not (= lambda!419521 lambda!419452))))

(declare-fun bs!1876564 () Bool)

(assert (= bs!1876564 (and d!2203912 d!2203776)))

(assert (=> bs!1876564 (not (= lambda!419521 lambda!419488))))

(assert (=> d!2203912 true))

(assert (=> d!2203912 (< (dynLambda!27595 order!28289 lambda!419488) (dynLambda!27595 order!28289 lambda!419521))))

(assert (=> d!2203912 (= (exists!3535 lt!2530290 lambda!419488) (not (forall!16494 lt!2530290 lambda!419521)))))

(declare-fun bs!1876565 () Bool)

(assert (= bs!1876565 d!2203912))

(declare-fun m!7769752 () Bool)

(assert (=> bs!1876565 m!7769752))

(assert (=> d!2203776 d!2203912))

(declare-fun bs!1876566 () Bool)

(declare-fun d!2203914 () Bool)

(assert (= bs!1876566 (and d!2203914 d!2203774)))

(declare-fun lambda!419524 () Int)

(assert (=> bs!1876566 (not (= lambda!419524 lambda!419485))))

(declare-fun bs!1876567 () Bool)

(assert (= bs!1876567 (and d!2203914 d!2203910)))

(assert (=> bs!1876567 (not (= lambda!419524 lambda!419520))))

(declare-fun bs!1876568 () Bool)

(assert (= bs!1876568 (and d!2203914 d!2203886)))

(assert (=> bs!1876568 (not (= lambda!419524 lambda!419518))))

(declare-fun bs!1876569 () Bool)

(assert (= bs!1876569 (and d!2203914 b!7052537)))

(assert (=> bs!1876569 (= lambda!419524 lambda!419452)))

(declare-fun bs!1876570 () Bool)

(assert (= bs!1876570 (and d!2203914 d!2203776)))

(assert (=> bs!1876570 (= lambda!419524 lambda!419488)))

(declare-fun bs!1876571 () Bool)

(assert (= bs!1876571 (and d!2203914 d!2203912)))

(assert (=> bs!1876571 (not (= lambda!419524 lambda!419521))))

(assert (=> d!2203914 true))

(assert (=> d!2203914 (exists!3535 lt!2530290 lambda!419524)))

(assert (=> d!2203914 true))

(declare-fun _$60!1165 () Unit!161784)

(assert (=> d!2203914 (= (choose!53734 lt!2530290 s!7408) _$60!1165)))

(declare-fun bs!1876572 () Bool)

(assert (= bs!1876572 d!2203914))

(declare-fun m!7769754 () Bool)

(assert (=> bs!1876572 m!7769754))

(assert (=> d!2203776 d!2203914))

(declare-fun d!2203916 () Bool)

(declare-fun c!1313727 () Bool)

(assert (=> d!2203916 (= c!1313727 (isEmpty!39704 s!7408))))

(declare-fun e!4240024 () Bool)

(assert (=> d!2203916 (= (matchZipper!3096 (content!13664 lt!2530290) s!7408) e!4240024)))

(declare-fun b!7052851 () Bool)

(assert (=> b!7052851 (= e!4240024 (nullableZipper!2645 (content!13664 lt!2530290)))))

(declare-fun b!7052852 () Bool)

(assert (=> b!7052852 (= e!4240024 (matchZipper!3096 (derivationStepZipper!3006 (content!13664 lt!2530290) (head!14345 s!7408)) (tail!13676 s!7408)))))

(assert (= (and d!2203916 c!1313727) b!7052851))

(assert (= (and d!2203916 (not c!1313727)) b!7052852))

(assert (=> d!2203916 m!7769442))

(assert (=> b!7052851 m!7769494))

(declare-fun m!7769756 () Bool)

(assert (=> b!7052851 m!7769756))

(assert (=> b!7052852 m!7769446))

(assert (=> b!7052852 m!7769494))

(assert (=> b!7052852 m!7769446))

(declare-fun m!7769758 () Bool)

(assert (=> b!7052852 m!7769758))

(assert (=> b!7052852 m!7769450))

(assert (=> b!7052852 m!7769758))

(assert (=> b!7052852 m!7769450))

(declare-fun m!7769760 () Bool)

(assert (=> b!7052852 m!7769760))

(assert (=> d!2203776 d!2203916))

(declare-fun d!2203918 () Bool)

(declare-fun c!1313730 () Bool)

(assert (=> d!2203918 (= c!1313730 (is-Nil!68072 lt!2530290))))

(declare-fun e!4240027 () (Set Context!13104))

(assert (=> d!2203918 (= (content!13664 lt!2530290) e!4240027)))

(declare-fun b!7052857 () Bool)

(assert (=> b!7052857 (= e!4240027 (as set.empty (Set Context!13104)))))

(declare-fun b!7052858 () Bool)

(assert (=> b!7052858 (= e!4240027 (set.union (set.insert (h!74520 lt!2530290) (as set.empty (Set Context!13104))) (content!13664 (t!381975 lt!2530290))))))

(assert (= (and d!2203918 c!1313730) b!7052857))

(assert (= (and d!2203918 (not c!1313730)) b!7052858))

(declare-fun m!7769762 () Bool)

(assert (=> b!7052858 m!7769762))

(declare-fun m!7769764 () Bool)

(assert (=> b!7052858 m!7769764))

(assert (=> d!2203776 d!2203918))

(declare-fun d!2203920 () Bool)

(declare-fun res!2879327 () Bool)

(declare-fun e!4240028 () Bool)

(assert (=> d!2203920 (=> res!2879327 e!4240028)))

(assert (=> d!2203920 (= res!2879327 (is-Nil!68070 (exprs!7052 setElem!49748)))))

(assert (=> d!2203920 (= (forall!16493 (exprs!7052 setElem!49748) lambda!419482) e!4240028)))

(declare-fun b!7052859 () Bool)

(declare-fun e!4240029 () Bool)

(assert (=> b!7052859 (= e!4240028 e!4240029)))

(declare-fun res!2879328 () Bool)

(assert (=> b!7052859 (=> (not res!2879328) (not e!4240029))))

(assert (=> b!7052859 (= res!2879328 (dynLambda!27600 lambda!419482 (h!74518 (exprs!7052 setElem!49748))))))

(declare-fun b!7052860 () Bool)

(assert (=> b!7052860 (= e!4240029 (forall!16493 (t!381973 (exprs!7052 setElem!49748)) lambda!419482))))

(assert (= (and d!2203920 (not res!2879327)) b!7052859))

(assert (= (and b!7052859 res!2879328) b!7052860))

(declare-fun b_lambda!268457 () Bool)

(assert (=> (not b_lambda!268457) (not b!7052859)))

(declare-fun m!7769766 () Bool)

(assert (=> b!7052859 m!7769766))

(declare-fun m!7769768 () Bool)

(assert (=> b!7052860 m!7769768))

(assert (=> d!2203764 d!2203920))

(declare-fun d!2203922 () Bool)

(declare-fun c!1313731 () Bool)

(assert (=> d!2203922 (= c!1313731 (is-Nil!68072 lt!2530360))))

(declare-fun e!4240030 () (Set Context!13104))

(assert (=> d!2203922 (= (content!13664 lt!2530360) e!4240030)))

(declare-fun b!7052861 () Bool)

(assert (=> b!7052861 (= e!4240030 (as set.empty (Set Context!13104)))))

(declare-fun b!7052862 () Bool)

(assert (=> b!7052862 (= e!4240030 (set.union (set.insert (h!74520 lt!2530360) (as set.empty (Set Context!13104))) (content!13664 (t!381975 lt!2530360))))))

(assert (= (and d!2203922 c!1313731) b!7052861))

(assert (= (and d!2203922 (not c!1313731)) b!7052862))

(declare-fun m!7769770 () Bool)

(assert (=> b!7052862 m!7769770))

(declare-fun m!7769772 () Bool)

(assert (=> b!7052862 m!7769772))

(assert (=> b!7052640 d!2203922))

(declare-fun b!7052863 () Bool)

(declare-fun e!4240031 () Bool)

(declare-fun tp!1939692 () Bool)

(declare-fun tp!1939693 () Bool)

(assert (=> b!7052863 (= e!4240031 (and tp!1939692 tp!1939693))))

(assert (=> b!7052662 (= tp!1939650 e!4240031)))

(assert (= (and b!7052662 (is-Cons!68070 (exprs!7052 setElem!49754))) b!7052863))

(declare-fun e!4240034 () Bool)

(assert (=> b!7052667 (= tp!1939656 e!4240034)))

(declare-fun b!7052874 () Bool)

(assert (=> b!7052874 (= e!4240034 tp_is_empty!44337)))

(declare-fun b!7052876 () Bool)

(declare-fun tp!1939706 () Bool)

(assert (=> b!7052876 (= e!4240034 tp!1939706)))

(declare-fun b!7052877 () Bool)

(declare-fun tp!1939707 () Bool)

(declare-fun tp!1939708 () Bool)

(assert (=> b!7052877 (= e!4240034 (and tp!1939707 tp!1939708))))

(declare-fun b!7052875 () Bool)

(declare-fun tp!1939704 () Bool)

(declare-fun tp!1939705 () Bool)

(assert (=> b!7052875 (= e!4240034 (and tp!1939704 tp!1939705))))

(assert (= (and b!7052667 (is-ElementMatch!17556 (h!74518 (exprs!7052 setElem!49748)))) b!7052874))

(assert (= (and b!7052667 (is-Concat!26401 (h!74518 (exprs!7052 setElem!49748)))) b!7052875))

(assert (= (and b!7052667 (is-Star!17556 (h!74518 (exprs!7052 setElem!49748)))) b!7052876))

(assert (= (and b!7052667 (is-Union!17556 (h!74518 (exprs!7052 setElem!49748)))) b!7052877))

(declare-fun b!7052878 () Bool)

(declare-fun e!4240035 () Bool)

(declare-fun tp!1939709 () Bool)

(declare-fun tp!1939710 () Bool)

(assert (=> b!7052878 (= e!4240035 (and tp!1939709 tp!1939710))))

(assert (=> b!7052667 (= tp!1939657 e!4240035)))

(assert (= (and b!7052667 (is-Cons!68070 (t!381973 (exprs!7052 setElem!49748)))) b!7052878))

(declare-fun condSetEmpty!49761 () Bool)

(assert (=> setNonEmpty!49754 (= condSetEmpty!49761 (= setRest!49754 (as set.empty (Set Context!13104))))))

(declare-fun setRes!49761 () Bool)

(assert (=> setNonEmpty!49754 (= tp!1939651 setRes!49761)))

(declare-fun setIsEmpty!49761 () Bool)

(assert (=> setIsEmpty!49761 setRes!49761))

(declare-fun tp!1939712 () Bool)

(declare-fun setElem!49761 () Context!13104)

(declare-fun e!4240036 () Bool)

(declare-fun setNonEmpty!49761 () Bool)

(assert (=> setNonEmpty!49761 (= setRes!49761 (and tp!1939712 (inv!86750 setElem!49761) e!4240036))))

(declare-fun setRest!49761 () (Set Context!13104))

(assert (=> setNonEmpty!49761 (= setRest!49754 (set.union (set.insert setElem!49761 (as set.empty (Set Context!13104))) setRest!49761))))

(declare-fun b!7052879 () Bool)

(declare-fun tp!1939711 () Bool)

(assert (=> b!7052879 (= e!4240036 tp!1939711)))

(assert (= (and setNonEmpty!49754 condSetEmpty!49761) setIsEmpty!49761))

(assert (= (and setNonEmpty!49754 (not condSetEmpty!49761)) setNonEmpty!49761))

(assert (= setNonEmpty!49761 b!7052879))

(declare-fun m!7769774 () Bool)

(assert (=> setNonEmpty!49761 m!7769774))

(declare-fun e!4240037 () Bool)

(assert (=> b!7052668 (= tp!1939658 e!4240037)))

(declare-fun b!7052880 () Bool)

(assert (=> b!7052880 (= e!4240037 tp_is_empty!44337)))

(declare-fun b!7052882 () Bool)

(declare-fun tp!1939715 () Bool)

(assert (=> b!7052882 (= e!4240037 tp!1939715)))

(declare-fun b!7052883 () Bool)

(declare-fun tp!1939716 () Bool)

(declare-fun tp!1939717 () Bool)

(assert (=> b!7052883 (= e!4240037 (and tp!1939716 tp!1939717))))

(declare-fun b!7052881 () Bool)

(declare-fun tp!1939713 () Bool)

(declare-fun tp!1939714 () Bool)

(assert (=> b!7052881 (= e!4240037 (and tp!1939713 tp!1939714))))

(assert (= (and b!7052668 (is-ElementMatch!17556 (h!74518 (exprs!7052 ct2!306)))) b!7052880))

(assert (= (and b!7052668 (is-Concat!26401 (h!74518 (exprs!7052 ct2!306)))) b!7052881))

(assert (= (and b!7052668 (is-Star!17556 (h!74518 (exprs!7052 ct2!306)))) b!7052882))

(assert (= (and b!7052668 (is-Union!17556 (h!74518 (exprs!7052 ct2!306)))) b!7052883))

(declare-fun b!7052884 () Bool)

(declare-fun e!4240038 () Bool)

(declare-fun tp!1939718 () Bool)

(declare-fun tp!1939719 () Bool)

(assert (=> b!7052884 (= e!4240038 (and tp!1939718 tp!1939719))))

(assert (=> b!7052668 (= tp!1939659 e!4240038)))

(assert (= (and b!7052668 (is-Cons!68070 (t!381973 (exprs!7052 ct2!306)))) b!7052884))

(declare-fun b!7052885 () Bool)

(declare-fun e!4240039 () Bool)

(declare-fun tp!1939720 () Bool)

(assert (=> b!7052885 (= e!4240039 (and tp_is_empty!44337 tp!1939720))))

(assert (=> b!7052657 (= tp!1939645 e!4240039)))

(assert (= (and b!7052657 (is-Cons!68071 (t!381974 (t!381974 s!7408)))) b!7052885))

(declare-fun b_lambda!268459 () Bool)

(assert (= b_lambda!268451 (or b!7052539 b_lambda!268459)))

(declare-fun bs!1876573 () Bool)

(declare-fun d!2203924 () Bool)

(assert (= bs!1876573 (and d!2203924 b!7052539)))

(declare-fun lt!2530406 () Unit!161784)

(assert (=> bs!1876573 (= lt!2530406 (lemmaConcatPreservesForall!867 (exprs!7052 a!13432) (exprs!7052 ct2!306) lambda!419454))))

(assert (=> bs!1876573 (= (dynLambda!27592 lambda!419453 a!13432) (Context!13105 (++!15639 (exprs!7052 a!13432) (exprs!7052 ct2!306))))))

(declare-fun m!7769776 () Bool)

(assert (=> bs!1876573 m!7769776))

(declare-fun m!7769778 () Bool)

(assert (=> bs!1876573 m!7769778))

(assert (=> d!2203872 d!2203924))

(declare-fun b_lambda!268461 () Bool)

(assert (= b_lambda!268439 (or b!7052537 b_lambda!268461)))

(declare-fun bs!1876574 () Bool)

(declare-fun d!2203926 () Bool)

(assert (= bs!1876574 (and d!2203926 b!7052537)))

(assert (=> bs!1876574 (= (dynLambda!27594 lambda!419452 lt!2530393) (matchZipper!3096 (set.insert lt!2530393 (as set.empty (Set Context!13104))) s!7408))))

(declare-fun m!7769780 () Bool)

(assert (=> bs!1876574 m!7769780))

(assert (=> bs!1876574 m!7769780))

(declare-fun m!7769782 () Bool)

(assert (=> bs!1876574 m!7769782))

(assert (=> d!2203834 d!2203926))

(declare-fun b_lambda!268463 () Bool)

(assert (= b_lambda!268443 (or b!7052539 b_lambda!268463)))

(declare-fun bs!1876575 () Bool)

(declare-fun d!2203928 () Bool)

(assert (= bs!1876575 (and d!2203928 b!7052539)))

(declare-fun validRegex!8959 (Regex!17556) Bool)

(assert (=> bs!1876575 (= (dynLambda!27600 lambda!419454 (h!74518 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)))) (validRegex!8959 (h!74518 (++!15639 (exprs!7052 lt!2530299) (exprs!7052 ct2!306)))))))

(declare-fun m!7769784 () Bool)

(assert (=> bs!1876575 m!7769784))

(assert (=> b!7052756 d!2203928))

(declare-fun b_lambda!268465 () Bool)

(assert (= b_lambda!268457 (or d!2203764 b_lambda!268465)))

(declare-fun bs!1876576 () Bool)

(declare-fun d!2203930 () Bool)

(assert (= bs!1876576 (and d!2203930 d!2203764)))

(assert (=> bs!1876576 (= (dynLambda!27600 lambda!419482 (h!74518 (exprs!7052 setElem!49748))) (validRegex!8959 (h!74518 (exprs!7052 setElem!49748))))))

(declare-fun m!7769786 () Bool)

(assert (=> bs!1876576 m!7769786))

(assert (=> b!7052859 d!2203930))

(declare-fun b_lambda!268467 () Bool)

(assert (= b_lambda!268447 (or d!2203790 b_lambda!268467)))

(declare-fun bs!1876577 () Bool)

(declare-fun d!2203932 () Bool)

(assert (= bs!1876577 (and d!2203932 d!2203790)))

(assert (=> bs!1876577 (= (dynLambda!27600 lambda!419496 (h!74518 (exprs!7052 ct2!306))) (validRegex!8959 (h!74518 (exprs!7052 ct2!306))))))

(declare-fun m!7769788 () Bool)

(assert (=> bs!1876577 m!7769788))

(assert (=> b!7052760 d!2203932))

(declare-fun b_lambda!268469 () Bool)

(assert (= b_lambda!268455 (or d!2203752 b_lambda!268469)))

(declare-fun bs!1876578 () Bool)

(declare-fun d!2203934 () Bool)

(assert (= bs!1876578 (and d!2203934 d!2203752)))

(assert (=> bs!1876578 (= (dynLambda!27600 lambda!419478 (h!74518 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))))) (validRegex!8959 (h!74518 (exprs!7052 (Context!13105 (tail!13674 (exprs!7052 lt!2530299)))))))))

(declare-fun m!7769790 () Bool)

(assert (=> bs!1876578 m!7769790))

(assert (=> b!7052849 d!2203934))

(declare-fun b_lambda!268471 () Bool)

(assert (= b_lambda!268449 (or d!2203774 b_lambda!268471)))

(declare-fun bs!1876579 () Bool)

(declare-fun d!2203936 () Bool)

(assert (= bs!1876579 (and d!2203936 d!2203774)))

(assert (=> bs!1876579 (= (dynLambda!27594 lambda!419485 (h!74520 lt!2530290)) (not (dynLambda!27594 lambda!419452 (h!74520 lt!2530290))))))

(declare-fun b_lambda!268479 () Bool)

(assert (=> (not b_lambda!268479) (not bs!1876579)))

(declare-fun m!7769792 () Bool)

(assert (=> bs!1876579 m!7769792))

(assert (=> b!7052807 d!2203936))

(declare-fun b_lambda!268473 () Bool)

(assert (= b_lambda!268441 (or b!7052537 b_lambda!268473)))

(declare-fun bs!1876580 () Bool)

(declare-fun d!2203938 () Bool)

(assert (= bs!1876580 (and d!2203938 b!7052537)))

(assert (=> bs!1876580 (= (dynLambda!27594 lambda!419452 (h!74520 (toList!10897 lt!2530289))) (matchZipper!3096 (set.insert (h!74520 (toList!10897 lt!2530289)) (as set.empty (Set Context!13104))) s!7408))))

(declare-fun m!7769794 () Bool)

(assert (=> bs!1876580 m!7769794))

(assert (=> bs!1876580 m!7769794))

(declare-fun m!7769796 () Bool)

(assert (=> bs!1876580 m!7769796))

(assert (=> b!7052732 d!2203938))

(declare-fun b_lambda!268475 () Bool)

(assert (= b_lambda!268445 (or b!7052539 b_lambda!268475)))

(declare-fun bs!1876581 () Bool)

(declare-fun d!2203940 () Bool)

(assert (= bs!1876581 (and d!2203940 b!7052539)))

(assert (=> bs!1876581 (= (dynLambda!27600 lambda!419454 (h!74518 (exprs!7052 lt!2530299))) (validRegex!8959 (h!74518 (exprs!7052 lt!2530299))))))

(declare-fun m!7769798 () Bool)

(assert (=> bs!1876581 m!7769798))

(assert (=> b!7052758 d!2203940))

(declare-fun b_lambda!268477 () Bool)

(assert (= b_lambda!268453 (or b!7052535 b_lambda!268477)))

(assert (=> d!2203884 d!2203796))

(push 1)

(assert (not b!7052808))

(assert (not b_lambda!268471))

(assert (not b!7052858))

(assert (not b!7052825))

(assert (not d!2203854))

(assert (not b_lambda!268427))

(assert (not b!7052840))

(assert (not b!7052814))

(assert (not d!2203878))

(assert (not bs!1876580))

(assert (not b_lambda!268459))

(assert (not b!7052841))

(assert (not b_lambda!268469))

(assert (not bm!640636))

(assert (not b!7052745))

(assert (not bs!1876575))

(assert (not b!7052759))

(assert (not b!7052832))

(assert (not b!7052863))

(assert (not bs!1876577))

(assert (not d!2203848))

(assert (not setNonEmpty!49760))

(assert (not b!7052817))

(assert (not b_lambda!268463))

(assert (not d!2203858))

(assert (not b!7052798))

(assert (not b_lambda!268467))

(assert (not bm!640637))

(assert (not d!2203872))

(assert (not bm!640641))

(assert (not b!7052848))

(assert (not b!7052860))

(assert (not b!7052885))

(assert (not d!2203916))

(assert (not b!7052878))

(assert (not b!7052845))

(assert (not bm!640639))

(assert (not d!2203874))

(assert (not b!7052802))

(assert (not b!7052881))

(assert (not d!2203906))

(assert (not b_lambda!268465))

(assert (not d!2203876))

(assert (not b!7052883))

(assert (not b_lambda!268475))

(assert (not d!2203904))

(assert (not b!7052741))

(assert (not b!7052816))

(assert (not d!2203834))

(assert (not b!7052734))

(assert (not b_lambda!268461))

(assert (not b!7052852))

(assert (not d!2203850))

(assert (not d!2203846))

(assert (not b!7052847))

(assert (not b!7052842))

(assert (not b_lambda!268425))

(assert (not b!7052833))

(assert (not b!7052844))

(assert (not b!7052746))

(assert (not d!2203884))

(assert (not b!7052879))

(assert (not b!7052882))

(assert (not d!2203886))

(assert (not d!2203844))

(assert (not b!7052850))

(assert (not b!7052730))

(assert (not d!2203912))

(assert (not b!7052795))

(assert (not d!2203836))

(assert (not d!2203898))

(assert (not d!2203914))

(assert tp_is_empty!44337)

(assert (not b!7052877))

(assert (not b!7052851))

(assert (not d!2203910))

(assert (not bs!1876574))

(assert (not b_lambda!268477))

(assert (not b!7052731))

(assert (not b!7052747))

(assert (not b!7052743))

(assert (not b!7052750))

(assert (not bs!1876578))

(assert (not bs!1876573))

(assert (not b!7052827))

(assert (not b!7052884))

(assert (not d!2203896))

(assert (not b!7052862))

(assert (not b_lambda!268479))

(assert (not b!7052876))

(assert (not b!7052749))

(assert (not d!2203902))

(assert (not bs!1876576))

(assert (not b_lambda!268473))

(assert (not b_lambda!268423))

(assert (not b!7052875))

(assert (not d!2203900))

(assert (not b!7052823))

(assert (not b!7052757))

(assert (not b!7052761))

(assert (not b!7052792))

(assert (not setNonEmpty!49761))

(assert (not bs!1876581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

