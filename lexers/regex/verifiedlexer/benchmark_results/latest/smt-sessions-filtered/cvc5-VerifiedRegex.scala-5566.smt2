; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279448 () Bool)

(assert start!279448)

(declare-fun bs!521287 () Bool)

(declare-fun b!2865366 () Bool)

(declare-fun b!2865368 () Bool)

(assert (= bs!521287 (and b!2865366 b!2865368)))

(declare-fun lambda!106550 () Int)

(declare-fun lambda!106549 () Int)

(assert (=> bs!521287 (not (= lambda!106550 lambda!106549))))

(declare-fun bs!521288 () Bool)

(declare-fun b!2865370 () Bool)

(assert (= bs!521288 (and b!2865370 b!2865368)))

(declare-fun lambda!106551 () Int)

(assert (=> bs!521288 (not (= lambda!106551 lambda!106549))))

(declare-fun bs!521289 () Bool)

(assert (= bs!521289 (and b!2865370 b!2865366)))

(assert (=> bs!521289 (not (= lambda!106551 lambda!106550))))

(assert (=> b!2865370 true))

(declare-fun b!2865367 () Bool)

(declare-fun e!1813987 () Bool)

(declare-fun tp!922811 () Bool)

(assert (=> b!2865367 (= e!1813987 tp!922811)))

(declare-fun res!1189594 () Bool)

(declare-fun e!1813984 () Bool)

(assert (=> b!2865368 (=> (not res!1189594) (not e!1813984))))

(declare-datatypes ((C!17554 0))(
  ( (C!17555 (val!10811 Int)) )
))
(declare-datatypes ((Regex!8686 0))(
  ( (ElementMatch!8686 (c!462467 C!17554)) (Concat!14007 (regOne!17884 Regex!8686) (regTwo!17884 Regex!8686)) (EmptyExpr!8686) (Star!8686 (reg!9015 Regex!8686)) (EmptyLang!8686) (Union!8686 (regOne!17885 Regex!8686) (regTwo!17885 Regex!8686)) )
))
(declare-datatypes ((List!34389 0))(
  ( (Nil!34265) (Cons!34265 (h!39685 Regex!8686) (t!233432 List!34389)) )
))
(declare-datatypes ((Context!5292 0))(
  ( (Context!5293 (exprs!3146 List!34389)) )
))
(declare-fun z!691 () (Set Context!5292))

(declare-fun forall!7045 ((Set Context!5292) Int) Bool)

(assert (=> b!2865368 (= res!1189594 (not (forall!7045 z!691 lambda!106549)))))

(declare-fun b!2865369 () Bool)

(declare-fun e!1813985 () Bool)

(declare-fun e!1813986 () Bool)

(assert (=> b!2865369 (= e!1813985 e!1813986)))

(declare-fun res!1189596 () Bool)

(assert (=> b!2865369 (=> res!1189596 e!1813986)))

(declare-fun lt!1016291 () Context!5292)

(assert (=> b!2865369 (= res!1189596 (not (set.member lt!1016291 z!691)))))

(declare-datatypes ((List!34390 0))(
  ( (Nil!34266) (Cons!34266 (h!39686 C!17554) (t!233433 List!34390)) )
))
(declare-fun lt!1016292 () List!34390)

(declare-fun matchZipper!456 ((Set Context!5292) List!34390) Bool)

(assert (=> b!2865369 (matchZipper!456 (set.insert lt!1016291 (as set.empty (Set Context!5292))) lt!1016292)))

(declare-datatypes ((Option!6365 0))(
  ( (None!6364) (Some!6364 (v!34486 List!34390)) )
))
(declare-fun get!10278 (Option!6365) List!34390)

(declare-fun getLanguageWitness!333 (Context!5292) Option!6365)

(assert (=> b!2865369 (= lt!1016292 (get!10278 (getLanguageWitness!333 lt!1016291)))))

(declare-datatypes ((Unit!47909 0))(
  ( (Unit!47910) )
))
(declare-fun lt!1016289 () Unit!47909)

(declare-fun lemmaGetWitnessMatchesContext!15 (Context!5292) Unit!47909)

(assert (=> b!2865369 (= lt!1016289 (lemmaGetWitnessMatchesContext!15 lt!1016291))))

(declare-fun getWitness!617 ((Set Context!5292) Int) Context!5292)

(assert (=> b!2865369 (= lt!1016291 (getWitness!617 z!691 lambda!106550))))

(declare-fun setIsEmpty!25688 () Bool)

(declare-fun setRes!25688 () Bool)

(assert (=> setIsEmpty!25688 setRes!25688))

(declare-fun setElem!25688 () Context!5292)

(declare-fun setNonEmpty!25688 () Bool)

(declare-fun tp!922812 () Bool)

(declare-fun inv!46303 (Context!5292) Bool)

(assert (=> setNonEmpty!25688 (= setRes!25688 (and tp!922812 (inv!46303 setElem!25688) e!1813987))))

(declare-fun setRest!25688 () (Set Context!5292))

(assert (=> setNonEmpty!25688 (= z!691 (set.union (set.insert setElem!25688 (as set.empty (Set Context!5292))) setRest!25688))))

(declare-fun e!1813983 () Bool)

(assert (=> b!2865370 (= e!1813986 e!1813983)))

(declare-fun res!1189598 () Bool)

(assert (=> b!2865370 (=> res!1189598 e!1813983)))

(declare-fun exists!1117 ((Set Context!5292) Int) Bool)

(assert (=> b!2865370 (= res!1189598 (not (exists!1117 z!691 lambda!106551)))))

(assert (=> b!2865370 (exists!1117 z!691 lambda!106551)))

(declare-fun lt!1016293 () Unit!47909)

(declare-fun lemmaContainsThenExists!60 ((Set Context!5292) Context!5292 Int) Unit!47909)

(assert (=> b!2865370 (= lt!1016293 (lemmaContainsThenExists!60 z!691 lt!1016291 lambda!106551))))

(declare-fun b!2865371 () Bool)

(declare-fun res!1189599 () Bool)

(assert (=> b!2865371 (=> (not res!1189599) (not e!1813984))))

(declare-fun isDefined!4985 (Option!6365) Bool)

(declare-fun getLanguageWitness!334 ((Set Context!5292)) Option!6365)

(assert (=> b!2865371 (= res!1189599 (isDefined!4985 (getLanguageWitness!334 z!691)))))

(declare-fun b!2865372 () Bool)

(declare-datatypes ((List!34391 0))(
  ( (Nil!34267) (Cons!34267 (h!39687 Context!5292) (t!233434 List!34391)) )
))
(declare-fun lt!1016288 () List!34391)

(declare-fun exists!1118 (List!34391 Int) Bool)

(assert (=> b!2865372 (= e!1813983 (exists!1118 lt!1016288 lambda!106551))))

(declare-fun res!1189595 () Bool)

(assert (=> start!279448 (=> (not res!1189595) (not e!1813984))))

(declare-fun lostCauseZipper!590 ((Set Context!5292)) Bool)

(assert (=> start!279448 (= res!1189595 (not (lostCauseZipper!590 z!691)))))

(assert (=> start!279448 e!1813984))

(declare-fun condSetEmpty!25688 () Bool)

(assert (=> start!279448 (= condSetEmpty!25688 (= z!691 (as set.empty (Set Context!5292))))))

(assert (=> start!279448 setRes!25688))

(assert (=> b!2865366 (= e!1813984 (not e!1813985))))

(declare-fun res!1189597 () Bool)

(assert (=> b!2865366 (=> res!1189597 e!1813985)))

(assert (=> b!2865366 (= res!1189597 (not (exists!1117 z!691 lambda!106550)))))

(assert (=> b!2865366 (exists!1118 lt!1016288 lambda!106550)))

(declare-fun lt!1016290 () Unit!47909)

(declare-fun lemmaNotForallThenExists!154 (List!34391 Int) Unit!47909)

(assert (=> b!2865366 (= lt!1016290 (lemmaNotForallThenExists!154 lt!1016288 lambda!106549))))

(declare-fun toList!2015 ((Set Context!5292)) List!34391)

(assert (=> b!2865366 (= lt!1016288 (toList!2015 z!691))))

(assert (= (and start!279448 res!1189595) b!2865371))

(assert (= (and b!2865371 res!1189599) b!2865368))

(assert (= (and b!2865368 res!1189594) b!2865366))

(assert (= (and b!2865366 (not res!1189597)) b!2865369))

(assert (= (and b!2865369 (not res!1189596)) b!2865370))

(assert (= (and b!2865370 (not res!1189598)) b!2865372))

(assert (= (and start!279448 condSetEmpty!25688) setIsEmpty!25688))

(assert (= (and start!279448 (not condSetEmpty!25688)) setNonEmpty!25688))

(assert (= setNonEmpty!25688 b!2865367))

(declare-fun m!3285529 () Bool)

(assert (=> start!279448 m!3285529))

(declare-fun m!3285531 () Bool)

(assert (=> b!2865368 m!3285531))

(declare-fun m!3285533 () Bool)

(assert (=> b!2865369 m!3285533))

(declare-fun m!3285535 () Bool)

(assert (=> b!2865369 m!3285535))

(declare-fun m!3285537 () Bool)

(assert (=> b!2865369 m!3285537))

(assert (=> b!2865369 m!3285537))

(declare-fun m!3285539 () Bool)

(assert (=> b!2865369 m!3285539))

(assert (=> b!2865369 m!3285533))

(declare-fun m!3285541 () Bool)

(assert (=> b!2865369 m!3285541))

(declare-fun m!3285543 () Bool)

(assert (=> b!2865369 m!3285543))

(declare-fun m!3285545 () Bool)

(assert (=> b!2865369 m!3285545))

(declare-fun m!3285547 () Bool)

(assert (=> b!2865370 m!3285547))

(assert (=> b!2865370 m!3285547))

(declare-fun m!3285549 () Bool)

(assert (=> b!2865370 m!3285549))

(declare-fun m!3285551 () Bool)

(assert (=> b!2865366 m!3285551))

(declare-fun m!3285553 () Bool)

(assert (=> b!2865366 m!3285553))

(declare-fun m!3285555 () Bool)

(assert (=> b!2865366 m!3285555))

(declare-fun m!3285557 () Bool)

(assert (=> b!2865366 m!3285557))

(declare-fun m!3285559 () Bool)

(assert (=> b!2865372 m!3285559))

(declare-fun m!3285561 () Bool)

(assert (=> b!2865371 m!3285561))

(assert (=> b!2865371 m!3285561))

(declare-fun m!3285563 () Bool)

(assert (=> b!2865371 m!3285563))

(declare-fun m!3285565 () Bool)

(assert (=> setNonEmpty!25688 m!3285565))

(push 1)

(assert (not b!2865368))

(assert (not b!2865367))

(assert (not b!2865371))

(assert (not setNonEmpty!25688))

(assert (not b!2865372))

(assert (not start!279448))

(assert (not b!2865366))

(assert (not b!2865370))

(assert (not b!2865369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!828493 () Bool)

(declare-fun lt!1016314 () Bool)

(assert (=> d!828493 (= lt!1016314 (exists!1118 (toList!2015 z!691) lambda!106550))))

(declare-fun choose!16927 ((Set Context!5292) Int) Bool)

(assert (=> d!828493 (= lt!1016314 (choose!16927 z!691 lambda!106550))))

(assert (=> d!828493 (= (exists!1117 z!691 lambda!106550) lt!1016314)))

(declare-fun bs!521293 () Bool)

(assert (= bs!521293 d!828493))

(assert (=> bs!521293 m!3285557))

(assert (=> bs!521293 m!3285557))

(declare-fun m!3285605 () Bool)

(assert (=> bs!521293 m!3285605))

(declare-fun m!3285607 () Bool)

(assert (=> bs!521293 m!3285607))

(assert (=> b!2865366 d!828493))

(declare-fun bs!521294 () Bool)

(declare-fun d!828495 () Bool)

(assert (= bs!521294 (and d!828495 b!2865368)))

(declare-fun lambda!106573 () Int)

(assert (=> bs!521294 (not (= lambda!106573 lambda!106549))))

(declare-fun bs!521295 () Bool)

(assert (= bs!521295 (and d!828495 b!2865366)))

(assert (=> bs!521295 (not (= lambda!106573 lambda!106550))))

(declare-fun bs!521296 () Bool)

(assert (= bs!521296 (and d!828495 b!2865370)))

(assert (=> bs!521296 (not (= lambda!106573 lambda!106551))))

(assert (=> d!828495 true))

(declare-fun order!18097 () Int)

(declare-fun dynLambda!14281 (Int Int) Int)

(assert (=> d!828495 (< (dynLambda!14281 order!18097 lambda!106550) (dynLambda!14281 order!18097 lambda!106573))))

(declare-fun forall!7047 (List!34391 Int) Bool)

(assert (=> d!828495 (= (exists!1118 lt!1016288 lambda!106550) (not (forall!7047 lt!1016288 lambda!106573)))))

(declare-fun bs!521297 () Bool)

(assert (= bs!521297 d!828495))

(declare-fun m!3285609 () Bool)

(assert (=> bs!521297 m!3285609))

(assert (=> b!2865366 d!828495))

(declare-fun bs!521298 () Bool)

(declare-fun d!828497 () Bool)

(assert (= bs!521298 (and d!828497 b!2865368)))

(declare-fun lambda!106576 () Int)

(assert (=> bs!521298 (not (= lambda!106576 lambda!106549))))

(declare-fun bs!521299 () Bool)

(assert (= bs!521299 (and d!828497 b!2865366)))

(assert (=> bs!521299 (not (= lambda!106576 lambda!106550))))

(declare-fun bs!521300 () Bool)

(assert (= bs!521300 (and d!828497 b!2865370)))

(assert (=> bs!521300 (not (= lambda!106576 lambda!106551))))

(declare-fun bs!521301 () Bool)

(assert (= bs!521301 (and d!828497 d!828495)))

(assert (=> bs!521301 (= (= lambda!106549 lambda!106550) (= lambda!106576 lambda!106573))))

(assert (=> d!828497 true))

(assert (=> d!828497 (< (dynLambda!14281 order!18097 lambda!106549) (dynLambda!14281 order!18097 lambda!106576))))

(assert (=> d!828497 (exists!1118 lt!1016288 lambda!106576)))

(declare-fun lt!1016317 () Unit!47909)

(declare-fun choose!16928 (List!34391 Int) Unit!47909)

(assert (=> d!828497 (= lt!1016317 (choose!16928 lt!1016288 lambda!106549))))

(assert (=> d!828497 (not (forall!7047 lt!1016288 lambda!106549))))

(assert (=> d!828497 (= (lemmaNotForallThenExists!154 lt!1016288 lambda!106549) lt!1016317)))

(declare-fun bs!521302 () Bool)

(assert (= bs!521302 d!828497))

(declare-fun m!3285611 () Bool)

(assert (=> bs!521302 m!3285611))

(declare-fun m!3285613 () Bool)

(assert (=> bs!521302 m!3285613))

(declare-fun m!3285615 () Bool)

(assert (=> bs!521302 m!3285615))

(assert (=> b!2865366 d!828497))

(declare-fun d!828499 () Bool)

(declare-fun e!1814009 () Bool)

(assert (=> d!828499 e!1814009))

(declare-fun res!1189620 () Bool)

(assert (=> d!828499 (=> (not res!1189620) (not e!1814009))))

(declare-fun lt!1016320 () List!34391)

(declare-fun noDuplicate!577 (List!34391) Bool)

(assert (=> d!828499 (= res!1189620 (noDuplicate!577 lt!1016320))))

(declare-fun choose!16929 ((Set Context!5292)) List!34391)

(assert (=> d!828499 (= lt!1016320 (choose!16929 z!691))))

(assert (=> d!828499 (= (toList!2015 z!691) lt!1016320)))

(declare-fun b!2865402 () Bool)

(declare-fun content!4680 (List!34391) (Set Context!5292))

(assert (=> b!2865402 (= e!1814009 (= (content!4680 lt!1016320) z!691))))

(assert (= (and d!828499 res!1189620) b!2865402))

(declare-fun m!3285617 () Bool)

(assert (=> d!828499 m!3285617))

(declare-fun m!3285619 () Bool)

(assert (=> d!828499 m!3285619))

(declare-fun m!3285621 () Bool)

(assert (=> b!2865402 m!3285621))

(assert (=> b!2865366 d!828499))

(declare-fun d!828501 () Bool)

(declare-fun lambda!106579 () Int)

(declare-fun forall!7048 (List!34389 Int) Bool)

(assert (=> d!828501 (= (inv!46303 setElem!25688) (forall!7048 (exprs!3146 setElem!25688) lambda!106579))))

(declare-fun bs!521303 () Bool)

(assert (= bs!521303 d!828501))

(declare-fun m!3285623 () Bool)

(assert (=> bs!521303 m!3285623))

(assert (=> setNonEmpty!25688 d!828501))

(declare-fun bs!521304 () Bool)

(declare-fun d!828503 () Bool)

(assert (= bs!521304 (and d!828503 b!2865368)))

(declare-fun lambda!106592 () Int)

(assert (=> bs!521304 (= lambda!106592 lambda!106549)))

(declare-fun bs!521305 () Bool)

(assert (= bs!521305 (and d!828503 b!2865370)))

(assert (=> bs!521305 (not (= lambda!106592 lambda!106551))))

(declare-fun bs!521306 () Bool)

(assert (= bs!521306 (and d!828503 d!828495)))

(assert (=> bs!521306 (not (= lambda!106592 lambda!106573))))

(declare-fun bs!521307 () Bool)

(assert (= bs!521307 (and d!828503 b!2865366)))

(assert (=> bs!521307 (not (= lambda!106592 lambda!106550))))

(declare-fun bs!521308 () Bool)

(assert (= bs!521308 (and d!828503 d!828497)))

(assert (=> bs!521308 (not (= lambda!106592 lambda!106576))))

(declare-fun bs!521309 () Bool)

(declare-fun b!2865407 () Bool)

(assert (= bs!521309 (and b!2865407 b!2865368)))

(declare-fun lambda!106593 () Int)

(assert (=> bs!521309 (not (= lambda!106593 lambda!106549))))

(declare-fun bs!521310 () Bool)

(assert (= bs!521310 (and b!2865407 b!2865370)))

(assert (=> bs!521310 (not (= lambda!106593 lambda!106551))))

(declare-fun bs!521311 () Bool)

(assert (= bs!521311 (and b!2865407 d!828495)))

(assert (=> bs!521311 (not (= lambda!106593 lambda!106573))))

(declare-fun bs!521312 () Bool)

(assert (= bs!521312 (and b!2865407 b!2865366)))

(assert (=> bs!521312 (= lambda!106593 lambda!106550)))

(declare-fun bs!521313 () Bool)

(assert (= bs!521313 (and b!2865407 d!828497)))

(assert (=> bs!521313 (not (= lambda!106593 lambda!106576))))

(declare-fun bs!521314 () Bool)

(assert (= bs!521314 (and b!2865407 d!828503)))

(assert (=> bs!521314 (not (= lambda!106593 lambda!106592))))

(declare-fun bs!521315 () Bool)

(declare-fun b!2865408 () Bool)

(assert (= bs!521315 (and b!2865408 b!2865370)))

(declare-fun lambda!106594 () Int)

(assert (=> bs!521315 (not (= lambda!106594 lambda!106551))))

(declare-fun bs!521316 () Bool)

(assert (= bs!521316 (and b!2865408 d!828495)))

(assert (=> bs!521316 (not (= lambda!106594 lambda!106573))))

(declare-fun bs!521317 () Bool)

(assert (= bs!521317 (and b!2865408 b!2865366)))

(assert (=> bs!521317 (= lambda!106594 lambda!106550)))

(declare-fun bs!521318 () Bool)

(assert (= bs!521318 (and b!2865408 b!2865407)))

(assert (=> bs!521318 (= lambda!106594 lambda!106593)))

(declare-fun bs!521319 () Bool)

(assert (= bs!521319 (and b!2865408 b!2865368)))

(assert (=> bs!521319 (not (= lambda!106594 lambda!106549))))

(declare-fun bs!521320 () Bool)

(assert (= bs!521320 (and b!2865408 d!828497)))

(assert (=> bs!521320 (not (= lambda!106594 lambda!106576))))

(declare-fun bs!521321 () Bool)

(assert (= bs!521321 (and b!2865408 d!828503)))

(assert (=> bs!521321 (not (= lambda!106594 lambda!106592))))

(declare-fun e!1814016 () Unit!47909)

(declare-fun Unit!47913 () Unit!47909)

(assert (=> b!2865407 (= e!1814016 Unit!47913)))

(declare-fun lt!1016344 () List!34391)

(declare-fun call!184865 () List!34391)

(assert (=> b!2865407 (= lt!1016344 call!184865)))

(declare-fun lt!1016338 () Unit!47909)

(assert (=> b!2865407 (= lt!1016338 (lemmaNotForallThenExists!154 lt!1016344 lambda!106592))))

(declare-fun call!184866 () Bool)

(assert (=> b!2865407 call!184866))

(declare-fun lt!1016337 () Unit!47909)

(assert (=> b!2865407 (= lt!1016337 lt!1016338)))

(declare-fun bm!184860 () Bool)

(assert (=> bm!184860 (= call!184865 (toList!2015 z!691))))

(declare-fun Unit!47914 () Unit!47909)

(assert (=> b!2865408 (= e!1814016 Unit!47914)))

(declare-fun lt!1016343 () List!34391)

(assert (=> b!2865408 (= lt!1016343 call!184865)))

(declare-fun lt!1016341 () Unit!47909)

(declare-fun lemmaForallThenNotExists!139 (List!34391 Int) Unit!47909)

(assert (=> b!2865408 (= lt!1016341 (lemmaForallThenNotExists!139 lt!1016343 lambda!106592))))

(assert (=> b!2865408 (not call!184866)))

(declare-fun lt!1016339 () Unit!47909)

(assert (=> b!2865408 (= lt!1016339 lt!1016341)))

(declare-fun lt!1016340 () Bool)

(declare-fun isEmpty!18668 (Option!6365) Bool)

(assert (=> d!828503 (= lt!1016340 (isEmpty!18668 (getLanguageWitness!334 z!691)))))

(assert (=> d!828503 (= lt!1016340 (forall!7045 z!691 lambda!106592))))

(declare-fun lt!1016342 () Unit!47909)

(assert (=> d!828503 (= lt!1016342 e!1814016)))

(declare-fun c!462493 () Bool)

(assert (=> d!828503 (= c!462493 (not (forall!7045 z!691 lambda!106592)))))

(assert (=> d!828503 (= (lostCauseZipper!590 z!691) lt!1016340)))

(declare-fun bm!184861 () Bool)

(assert (=> bm!184861 (= call!184866 (exists!1118 (ite c!462493 lt!1016344 lt!1016343) (ite c!462493 lambda!106593 lambda!106594)))))

(assert (= (and d!828503 c!462493) b!2865407))

(assert (= (and d!828503 (not c!462493)) b!2865408))

(assert (= (or b!2865407 b!2865408) bm!184860))

(assert (= (or b!2865407 b!2865408) bm!184861))

(declare-fun m!3285625 () Bool)

(assert (=> bm!184861 m!3285625))

(assert (=> d!828503 m!3285561))

(assert (=> d!828503 m!3285561))

(declare-fun m!3285627 () Bool)

(assert (=> d!828503 m!3285627))

(declare-fun m!3285629 () Bool)

(assert (=> d!828503 m!3285629))

(assert (=> d!828503 m!3285629))

(declare-fun m!3285631 () Bool)

(assert (=> b!2865408 m!3285631))

(assert (=> bm!184860 m!3285557))

(declare-fun m!3285633 () Bool)

(assert (=> b!2865407 m!3285633))

(assert (=> start!279448 d!828503))

(declare-fun d!828507 () Bool)

(assert (=> d!828507 (= (get!10278 (getLanguageWitness!333 lt!1016291)) (v!34486 (getLanguageWitness!333 lt!1016291)))))

(assert (=> b!2865369 d!828507))

(declare-fun d!828509 () Bool)

(declare-fun e!1814019 () Bool)

(assert (=> d!828509 e!1814019))

(declare-fun res!1189623 () Bool)

(assert (=> d!828509 (=> (not res!1189623) (not e!1814019))))

(declare-fun lt!1016350 () Context!5292)

(declare-fun dynLambda!14282 (Int Context!5292) Bool)

(assert (=> d!828509 (= res!1189623 (dynLambda!14282 lambda!106550 lt!1016350))))

(declare-fun getWitness!619 (List!34391 Int) Context!5292)

(assert (=> d!828509 (= lt!1016350 (getWitness!619 (toList!2015 z!691) lambda!106550))))

(assert (=> d!828509 (exists!1117 z!691 lambda!106550)))

(assert (=> d!828509 (= (getWitness!617 z!691 lambda!106550) lt!1016350)))

(declare-fun b!2865411 () Bool)

(assert (=> b!2865411 (= e!1814019 (set.member lt!1016350 z!691))))

(assert (= (and d!828509 res!1189623) b!2865411))

(declare-fun b_lambda!85923 () Bool)

(assert (=> (not b_lambda!85923) (not d!828509)))

(declare-fun m!3285639 () Bool)

(assert (=> d!828509 m!3285639))

(assert (=> d!828509 m!3285557))

(assert (=> d!828509 m!3285557))

(declare-fun m!3285641 () Bool)

(assert (=> d!828509 m!3285641))

(assert (=> d!828509 m!3285551))

(declare-fun m!3285643 () Bool)

(assert (=> b!2865411 m!3285643))

(assert (=> b!2865369 d!828509))

(declare-fun d!828513 () Bool)

(declare-fun c!462496 () Bool)

(declare-fun isEmpty!18669 (List!34390) Bool)

(assert (=> d!828513 (= c!462496 (isEmpty!18669 lt!1016292))))

(declare-fun e!1814022 () Bool)

(assert (=> d!828513 (= (matchZipper!456 (set.insert lt!1016291 (as set.empty (Set Context!5292))) lt!1016292) e!1814022)))

(declare-fun b!2865416 () Bool)

(declare-fun nullableZipper!701 ((Set Context!5292)) Bool)

(assert (=> b!2865416 (= e!1814022 (nullableZipper!701 (set.insert lt!1016291 (as set.empty (Set Context!5292)))))))

(declare-fun b!2865417 () Bool)

(declare-fun derivationStepZipper!457 ((Set Context!5292) C!17554) (Set Context!5292))

(declare-fun head!6322 (List!34390) C!17554)

(declare-fun tail!4547 (List!34390) List!34390)

(assert (=> b!2865417 (= e!1814022 (matchZipper!456 (derivationStepZipper!457 (set.insert lt!1016291 (as set.empty (Set Context!5292))) (head!6322 lt!1016292)) (tail!4547 lt!1016292)))))

(assert (= (and d!828513 c!462496) b!2865416))

(assert (= (and d!828513 (not c!462496)) b!2865417))

(declare-fun m!3285647 () Bool)

(assert (=> d!828513 m!3285647))

(assert (=> b!2865416 m!3285537))

(declare-fun m!3285649 () Bool)

(assert (=> b!2865416 m!3285649))

(declare-fun m!3285651 () Bool)

(assert (=> b!2865417 m!3285651))

(assert (=> b!2865417 m!3285537))

(assert (=> b!2865417 m!3285651))

(declare-fun m!3285653 () Bool)

(assert (=> b!2865417 m!3285653))

(declare-fun m!3285655 () Bool)

(assert (=> b!2865417 m!3285655))

(assert (=> b!2865417 m!3285653))

(assert (=> b!2865417 m!3285655))

(declare-fun m!3285657 () Bool)

(assert (=> b!2865417 m!3285657))

(assert (=> b!2865369 d!828513))

(declare-fun bs!521324 () Bool)

(declare-fun d!828517 () Bool)

(assert (= bs!521324 (and d!828517 d!828501)))

(declare-fun lambda!106603 () Int)

(assert (=> bs!521324 (not (= lambda!106603 lambda!106579))))

(declare-fun lt!1016359 () Option!6365)

(declare-fun exists!1121 (List!34389 Int) Bool)

(assert (=> d!828517 (= (isEmpty!18668 lt!1016359) (exists!1121 (exprs!3146 lt!1016291) lambda!106603))))

(declare-fun e!1814032 () Option!6365)

(assert (=> d!828517 (= lt!1016359 e!1814032)))

(declare-fun c!462514 () Bool)

(assert (=> d!828517 (= c!462514 (is-Cons!34265 (exprs!3146 lt!1016291)))))

(assert (=> d!828517 (= (getLanguageWitness!333 lt!1016291) lt!1016359)))

(declare-fun b!2865434 () Bool)

(declare-fun e!1814033 () Option!6365)

(assert (=> b!2865434 (= e!1814032 e!1814033)))

(declare-fun lt!1016361 () Option!6365)

(declare-fun getLanguageWitness!337 (Regex!8686) Option!6365)

(assert (=> b!2865434 (= lt!1016361 (getLanguageWitness!337 (h!39685 (exprs!3146 lt!1016291))))))

(declare-fun c!462513 () Bool)

(assert (=> b!2865434 (= c!462513 (is-Some!6364 lt!1016361))))

(declare-fun b!2865435 () Bool)

(declare-fun e!1814031 () Option!6365)

(assert (=> b!2865435 (= e!1814031 None!6364)))

(declare-fun b!2865436 () Bool)

(declare-fun c!462512 () Bool)

(declare-fun lt!1016360 () Option!6365)

(assert (=> b!2865436 (= c!462512 (is-Some!6364 lt!1016360))))

(assert (=> b!2865436 (= lt!1016360 (getLanguageWitness!333 (Context!5293 (t!233432 (exprs!3146 lt!1016291)))))))

(assert (=> b!2865436 (= e!1814033 e!1814031)))

(declare-fun b!2865437 () Bool)

(assert (=> b!2865437 (= e!1814033 None!6364)))

(declare-fun b!2865438 () Bool)

(assert (=> b!2865438 (= e!1814032 (Some!6364 Nil!34266))))

(declare-fun b!2865439 () Bool)

(declare-fun ++!8143 (List!34390 List!34390) List!34390)

(assert (=> b!2865439 (= e!1814031 (Some!6364 (++!8143 (v!34486 lt!1016361) (v!34486 lt!1016360))))))

(assert (= (and d!828517 c!462514) b!2865434))

(assert (= (and d!828517 (not c!462514)) b!2865438))

(assert (= (and b!2865434 c!462513) b!2865436))

(assert (= (and b!2865434 (not c!462513)) b!2865437))

(assert (= (and b!2865436 c!462512) b!2865439))

(assert (= (and b!2865436 (not c!462512)) b!2865435))

(declare-fun m!3285659 () Bool)

(assert (=> d!828517 m!3285659))

(declare-fun m!3285661 () Bool)

(assert (=> d!828517 m!3285661))

(declare-fun m!3285663 () Bool)

(assert (=> b!2865434 m!3285663))

(declare-fun m!3285665 () Bool)

(assert (=> b!2865436 m!3285665))

(declare-fun m!3285667 () Bool)

(assert (=> b!2865439 m!3285667))

(assert (=> b!2865369 d!828517))

(declare-fun d!828519 () Bool)

(assert (=> d!828519 (matchZipper!456 (set.insert lt!1016291 (as set.empty (Set Context!5292))) (get!10278 (getLanguageWitness!333 lt!1016291)))))

(declare-fun lt!1016365 () Unit!47909)

(declare-fun choose!16930 (Context!5292) Unit!47909)

(assert (=> d!828519 (= lt!1016365 (choose!16930 lt!1016291))))

(declare-fun lostCause!779 (Context!5292) Bool)

(assert (=> d!828519 (not (lostCause!779 lt!1016291))))

(assert (=> d!828519 (= (lemmaGetWitnessMatchesContext!15 lt!1016291) lt!1016365)))

(declare-fun bs!521328 () Bool)

(assert (= bs!521328 d!828519))

(assert (=> bs!521328 m!3285533))

(assert (=> bs!521328 m!3285533))

(assert (=> bs!521328 m!3285541))

(assert (=> bs!521328 m!3285537))

(assert (=> bs!521328 m!3285541))

(declare-fun m!3285677 () Bool)

(assert (=> bs!521328 m!3285677))

(declare-fun m!3285679 () Bool)

(assert (=> bs!521328 m!3285679))

(assert (=> bs!521328 m!3285537))

(declare-fun m!3285681 () Bool)

(assert (=> bs!521328 m!3285681))

(assert (=> b!2865369 d!828519))

(declare-fun bs!521329 () Bool)

(declare-fun d!828523 () Bool)

(assert (= bs!521329 (and d!828523 b!2865408)))

(declare-fun lambda!106605 () Int)

(assert (=> bs!521329 (not (= lambda!106605 lambda!106594))))

(declare-fun bs!521330 () Bool)

(assert (= bs!521330 (and d!828523 b!2865370)))

(assert (=> bs!521330 (not (= lambda!106605 lambda!106551))))

(declare-fun bs!521331 () Bool)

(assert (= bs!521331 (and d!828523 d!828495)))

(assert (=> bs!521331 (= (= lambda!106551 lambda!106550) (= lambda!106605 lambda!106573))))

(declare-fun bs!521332 () Bool)

(assert (= bs!521332 (and d!828523 b!2865366)))

(assert (=> bs!521332 (not (= lambda!106605 lambda!106550))))

(declare-fun bs!521333 () Bool)

(assert (= bs!521333 (and d!828523 b!2865407)))

(assert (=> bs!521333 (not (= lambda!106605 lambda!106593))))

(declare-fun bs!521334 () Bool)

(assert (= bs!521334 (and d!828523 b!2865368)))

(assert (=> bs!521334 (not (= lambda!106605 lambda!106549))))

(declare-fun bs!521335 () Bool)

(assert (= bs!521335 (and d!828523 d!828497)))

(assert (=> bs!521335 (= (= lambda!106551 lambda!106549) (= lambda!106605 lambda!106576))))

(declare-fun bs!521336 () Bool)

(assert (= bs!521336 (and d!828523 d!828503)))

(assert (=> bs!521336 (not (= lambda!106605 lambda!106592))))

(assert (=> d!828523 true))

(assert (=> d!828523 (< (dynLambda!14281 order!18097 lambda!106551) (dynLambda!14281 order!18097 lambda!106605))))

(assert (=> d!828523 (= (exists!1118 lt!1016288 lambda!106551) (not (forall!7047 lt!1016288 lambda!106605)))))

(declare-fun bs!521337 () Bool)

(assert (= bs!521337 d!828523))

(declare-fun m!3285683 () Bool)

(assert (=> bs!521337 m!3285683))

(assert (=> b!2865372 d!828523))

(declare-fun d!828525 () Bool)

(declare-fun lt!1016370 () Bool)

(assert (=> d!828525 (= lt!1016370 (forall!7047 (toList!2015 z!691) lambda!106549))))

(declare-fun choose!16931 ((Set Context!5292) Int) Bool)

(assert (=> d!828525 (= lt!1016370 (choose!16931 z!691 lambda!106549))))

(assert (=> d!828525 (= (forall!7045 z!691 lambda!106549) lt!1016370)))

(declare-fun bs!521338 () Bool)

(assert (= bs!521338 d!828525))

(assert (=> bs!521338 m!3285557))

(assert (=> bs!521338 m!3285557))

(declare-fun m!3285685 () Bool)

(assert (=> bs!521338 m!3285685))

(declare-fun m!3285687 () Bool)

(assert (=> bs!521338 m!3285687))

(assert (=> b!2865368 d!828525))

(declare-fun d!828527 () Bool)

(assert (=> d!828527 (= (isDefined!4985 (getLanguageWitness!334 z!691)) (not (isEmpty!18668 (getLanguageWitness!334 z!691))))))

(declare-fun bs!521340 () Bool)

(assert (= bs!521340 d!828527))

(assert (=> bs!521340 m!3285561))

(assert (=> bs!521340 m!3285627))

(assert (=> b!2865371 d!828527))

(declare-fun bs!521341 () Bool)

(declare-fun d!828531 () Bool)

(assert (= bs!521341 (and d!828531 b!2865408)))

(declare-fun lambda!106612 () Int)

(assert (=> bs!521341 (= lambda!106612 lambda!106594)))

(declare-fun bs!521343 () Bool)

(assert (= bs!521343 (and d!828531 b!2865370)))

(assert (=> bs!521343 (not (= lambda!106612 lambda!106551))))

(declare-fun bs!521344 () Bool)

(assert (= bs!521344 (and d!828531 d!828495)))

(assert (=> bs!521344 (not (= lambda!106612 lambda!106573))))

(declare-fun bs!521345 () Bool)

(assert (= bs!521345 (and d!828531 b!2865366)))

(assert (=> bs!521345 (= lambda!106612 lambda!106550)))

(declare-fun bs!521346 () Bool)

(assert (= bs!521346 (and d!828531 d!828523)))

(assert (=> bs!521346 (not (= lambda!106612 lambda!106605))))

(declare-fun bs!521347 () Bool)

(assert (= bs!521347 (and d!828531 b!2865407)))

(assert (=> bs!521347 (= lambda!106612 lambda!106593)))

(declare-fun bs!521348 () Bool)

(assert (= bs!521348 (and d!828531 b!2865368)))

(assert (=> bs!521348 (not (= lambda!106612 lambda!106549))))

(declare-fun bs!521349 () Bool)

(assert (= bs!521349 (and d!828531 d!828497)))

(assert (=> bs!521349 (not (= lambda!106612 lambda!106576))))

(declare-fun bs!521350 () Bool)

(assert (= bs!521350 (and d!828531 d!828503)))

(assert (=> bs!521350 (not (= lambda!106612 lambda!106592))))

(declare-fun lt!1016377 () Option!6365)

(assert (=> d!828531 (= (isDefined!4985 lt!1016377) (exists!1117 z!691 lambda!106612))))

(declare-fun e!1814038 () Option!6365)

(assert (=> d!828531 (= lt!1016377 e!1814038)))

(declare-fun c!462525 () Bool)

(assert (=> d!828531 (= c!462525 (exists!1117 z!691 lambda!106612))))

(assert (=> d!828531 (= (getLanguageWitness!334 z!691) lt!1016377)))

(declare-fun b!2865446 () Bool)

(assert (=> b!2865446 (= e!1814038 (getLanguageWitness!333 (getWitness!617 z!691 lambda!106612)))))

(declare-fun b!2865447 () Bool)

(assert (=> b!2865447 (= e!1814038 None!6364)))

(assert (= (and d!828531 c!462525) b!2865446))

(assert (= (and d!828531 (not c!462525)) b!2865447))

(declare-fun m!3285699 () Bool)

(assert (=> d!828531 m!3285699))

(declare-fun m!3285701 () Bool)

(assert (=> d!828531 m!3285701))

(assert (=> d!828531 m!3285701))

(declare-fun m!3285703 () Bool)

(assert (=> b!2865446 m!3285703))

(assert (=> b!2865446 m!3285703))

(declare-fun m!3285705 () Bool)

(assert (=> b!2865446 m!3285705))

(assert (=> b!2865371 d!828531))

(declare-fun d!828537 () Bool)

(declare-fun lt!1016379 () Bool)

(assert (=> d!828537 (= lt!1016379 (exists!1118 (toList!2015 z!691) lambda!106551))))

(assert (=> d!828537 (= lt!1016379 (choose!16927 z!691 lambda!106551))))

(assert (=> d!828537 (= (exists!1117 z!691 lambda!106551) lt!1016379)))

(declare-fun bs!521352 () Bool)

(assert (= bs!521352 d!828537))

(assert (=> bs!521352 m!3285557))

(assert (=> bs!521352 m!3285557))

(declare-fun m!3285707 () Bool)

(assert (=> bs!521352 m!3285707))

(declare-fun m!3285709 () Bool)

(assert (=> bs!521352 m!3285709))

(assert (=> b!2865370 d!828537))

(declare-fun d!828539 () Bool)

(assert (=> d!828539 (exists!1117 z!691 lambda!106551)))

(declare-fun lt!1016382 () Unit!47909)

(declare-fun choose!16932 ((Set Context!5292) Context!5292 Int) Unit!47909)

(assert (=> d!828539 (= lt!1016382 (choose!16932 z!691 lt!1016291 lambda!106551))))

(assert (=> d!828539 (set.member lt!1016291 z!691)))

(assert (=> d!828539 (= (lemmaContainsThenExists!60 z!691 lt!1016291 lambda!106551) lt!1016382)))

(declare-fun bs!521353 () Bool)

(assert (= bs!521353 d!828539))

(assert (=> bs!521353 m!3285547))

(declare-fun m!3285711 () Bool)

(assert (=> bs!521353 m!3285711))

(assert (=> bs!521353 m!3285543))

(assert (=> b!2865370 d!828539))

(declare-fun condSetEmpty!25694 () Bool)

(assert (=> setNonEmpty!25688 (= condSetEmpty!25694 (= setRest!25688 (as set.empty (Set Context!5292))))))

(declare-fun setRes!25694 () Bool)

(assert (=> setNonEmpty!25688 (= tp!922812 setRes!25694)))

(declare-fun setIsEmpty!25694 () Bool)

(assert (=> setIsEmpty!25694 setRes!25694))

(declare-fun setNonEmpty!25694 () Bool)

(declare-fun tp!922823 () Bool)

(declare-fun setElem!25694 () Context!5292)

(declare-fun e!1814042 () Bool)

(assert (=> setNonEmpty!25694 (= setRes!25694 (and tp!922823 (inv!46303 setElem!25694) e!1814042))))

(declare-fun setRest!25694 () (Set Context!5292))

(assert (=> setNonEmpty!25694 (= setRest!25688 (set.union (set.insert setElem!25694 (as set.empty (Set Context!5292))) setRest!25694))))

(declare-fun b!2865454 () Bool)

(declare-fun tp!922824 () Bool)

(assert (=> b!2865454 (= e!1814042 tp!922824)))

(assert (= (and setNonEmpty!25688 condSetEmpty!25694) setIsEmpty!25694))

(assert (= (and setNonEmpty!25688 (not condSetEmpty!25694)) setNonEmpty!25694))

(assert (= setNonEmpty!25694 b!2865454))

(declare-fun m!3285713 () Bool)

(assert (=> setNonEmpty!25694 m!3285713))

(declare-fun b!2865459 () Bool)

(declare-fun e!1814045 () Bool)

(declare-fun tp!922829 () Bool)

(declare-fun tp!922830 () Bool)

(assert (=> b!2865459 (= e!1814045 (and tp!922829 tp!922830))))

(assert (=> b!2865367 (= tp!922811 e!1814045)))

(assert (= (and b!2865367 (is-Cons!34265 (exprs!3146 setElem!25688))) b!2865459))

(declare-fun b_lambda!85925 () Bool)

(assert (= b_lambda!85923 (or b!2865366 b_lambda!85925)))

(declare-fun bs!521357 () Bool)

(declare-fun d!828541 () Bool)

(assert (= bs!521357 (and d!828541 b!2865366)))

(assert (=> bs!521357 (= (dynLambda!14282 lambda!106550 lt!1016350) (not (lostCause!779 lt!1016350)))))

(declare-fun m!3285715 () Bool)

(assert (=> bs!521357 m!3285715))

(assert (=> d!828509 d!828541))

(push 1)

(assert (not b!2865407))

(assert (not d!828525))

(assert (not d!828497))

(assert (not b!2865434))

(assert (not bm!184860))

(assert (not b!2865446))

(assert (not b!2865459))

(assert (not b!2865416))

(assert (not bm!184861))

(assert (not d!828493))

(assert (not b!2865417))

(assert (not d!828513))

(assert (not b!2865454))

(assert (not d!828501))

(assert (not d!828499))

(assert (not b!2865408))

(assert (not b!2865436))

(assert (not d!828531))

(assert (not d!828537))

(assert (not bs!521357))

(assert (not d!828503))

(assert (not d!828523))

(assert (not b!2865439))

(assert (not d!828539))

(assert (not d!828517))

(assert (not d!828509))

(assert (not setNonEmpty!25694))

(assert (not d!828527))

(assert (not b!2865402))

(assert (not b_lambda!85925))

(assert (not d!828519))

(assert (not d!828495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

