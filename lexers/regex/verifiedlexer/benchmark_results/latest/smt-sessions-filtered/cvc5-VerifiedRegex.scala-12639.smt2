; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700212 () Bool)

(assert start!700212)

(declare-fun b!7195469 () Bool)

(assert (=> b!7195469 true))

(declare-fun b!7195462 () Bool)

(declare-fun res!2929215 () Bool)

(declare-fun e!4320900 () Bool)

(assert (=> b!7195462 (=> (not res!2929215) (not e!4320900))))

(declare-datatypes ((C!37046 0))(
  ( (C!37047 (val!28471 Int)) )
))
(declare-datatypes ((Regex!18386 0))(
  ( (ElementMatch!18386 (c!1339228 C!37046)) (Concat!27231 (regOne!37284 Regex!18386) (regTwo!37284 Regex!18386)) (EmptyExpr!18386) (Star!18386 (reg!18715 Regex!18386)) (EmptyLang!18386) (Union!18386 (regOne!37285 Regex!18386) (regTwo!37285 Regex!18386)) )
))
(declare-datatypes ((List!69878 0))(
  ( (Nil!69754) (Cons!69754 (h!76202 Regex!18386) (t!383905 List!69878)) )
))
(declare-datatypes ((Context!14676 0))(
  ( (Context!14677 (exprs!7838 List!69878)) )
))
(declare-fun c!10544 () Context!14676)

(declare-fun head!14734 (List!69878) Regex!18386)

(assert (=> b!7195462 (= res!2929215 (= (head!14734 (exprs!7838 c!10544)) EmptyLang!18386))))

(declare-fun b!7195463 () Bool)

(declare-fun res!2929210 () Bool)

(assert (=> b!7195463 (=> (not res!2929210) (not e!4320900))))

(declare-fun isEmpty!40267 (List!69878) Bool)

(assert (=> b!7195463 (= res!2929210 (not (isEmpty!40267 (exprs!7838 c!10544))))))

(declare-fun b!7195465 () Bool)

(declare-fun e!4320905 () Bool)

(declare-fun tp_is_empty!46329 () Bool)

(declare-fun tp!2000442 () Bool)

(assert (=> b!7195465 (= e!4320905 (and tp_is_empty!46329 tp!2000442))))

(declare-fun setRes!53401 () Bool)

(declare-fun setNonEmpty!53401 () Bool)

(declare-fun e!4320903 () Bool)

(declare-fun tp!2000441 () Bool)

(declare-fun setElem!53401 () Context!14676)

(declare-fun inv!88988 (Context!14676) Bool)

(assert (=> setNonEmpty!53401 (= setRes!53401 (and tp!2000441 (inv!88988 setElem!53401) e!4320903))))

(declare-fun z!3517 () (Set Context!14676))

(declare-fun setRest!53401 () (Set Context!14676))

(assert (=> setNonEmpty!53401 (= z!3517 (set.union (set.insert setElem!53401 (as set.empty (Set Context!14676))) setRest!53401))))

(declare-fun b!7195466 () Bool)

(declare-fun e!4320904 () Bool)

(declare-fun lt!2571571 () Context!14676)

(declare-fun lt!2571570 () (Set Context!14676))

(assert (=> b!7195466 (= e!4320904 (not (set.member lt!2571571 lt!2571570)))))

(declare-fun b!7195467 () Bool)

(declare-fun res!2929211 () Bool)

(declare-fun e!4320902 () Bool)

(assert (=> b!7195467 (=> (not res!2929211) (not e!4320902))))

(assert (=> b!7195467 (= res!2929211 (not (= lt!2571570 (as set.empty (Set Context!14676)))))))

(declare-fun b!7195468 () Bool)

(declare-fun res!2929212 () Bool)

(assert (=> b!7195468 (=> (not res!2929212) (not e!4320900))))

(declare-datatypes ((List!69879 0))(
  ( (Nil!69755) (Cons!69755 (h!76203 C!37046) (t!383906 List!69879)) )
))
(declare-fun s!7961 () List!69879)

(declare-fun isEmpty!40268 (List!69879) Bool)

(assert (=> b!7195468 (= res!2929212 (not (isEmpty!40268 s!7961)))))

(assert (=> b!7195469 (= e!4320902 e!4320904)))

(declare-fun res!2929209 () Bool)

(assert (=> b!7195469 (=> (not res!2929209) (not e!4320904))))

(declare-fun lambda!438099 () Int)

(declare-fun flatMap!2685 ((Set Context!14676) Int) (Set Context!14676))

(assert (=> b!7195469 (= res!2929209 (set.member lt!2571571 (flatMap!2685 z!3517 lambda!438099)))))

(declare-datatypes ((List!69880 0))(
  ( (Nil!69756) (Cons!69756 (h!76204 Context!14676) (t!383907 List!69880)) )
))
(declare-fun head!14735 (List!69880) Context!14676)

(declare-fun toList!11323 ((Set Context!14676)) List!69880)

(assert (=> b!7195469 (= lt!2571571 (head!14735 (toList!11323 lt!2571570)))))

(declare-fun b!7195470 () Bool)

(declare-fun e!4320901 () Bool)

(declare-fun tp!2000443 () Bool)

(assert (=> b!7195470 (= e!4320901 tp!2000443)))

(declare-fun setIsEmpty!53401 () Bool)

(assert (=> setIsEmpty!53401 setRes!53401))

(declare-fun b!7195471 () Bool)

(assert (=> b!7195471 (= e!4320900 e!4320902)))

(declare-fun res!2929213 () Bool)

(assert (=> b!7195471 (=> (not res!2929213) (not e!4320902))))

(declare-fun lt!2571569 () C!37046)

(declare-fun derivationStepZipperUp!2352 (Context!14676 C!37046) (Set Context!14676))

(assert (=> b!7195471 (= res!2929213 (= (derivationStepZipperUp!2352 c!10544 lt!2571569) (as set.empty (Set Context!14676))))))

(declare-fun derivationStepZipper!3245 ((Set Context!14676) C!37046) (Set Context!14676))

(assert (=> b!7195471 (= lt!2571570 (derivationStepZipper!3245 z!3517 lt!2571569))))

(declare-fun head!14736 (List!69879) C!37046)

(assert (=> b!7195471 (= lt!2571569 (head!14736 s!7961))))

(declare-fun res!2929214 () Bool)

(assert (=> start!700212 (=> (not res!2929214) (not e!4320900))))

(assert (=> start!700212 (= res!2929214 (= z!3517 (set.insert c!10544 (as set.empty (Set Context!14676)))))))

(assert (=> start!700212 e!4320900))

(declare-fun condSetEmpty!53401 () Bool)

(assert (=> start!700212 (= condSetEmpty!53401 (= z!3517 (as set.empty (Set Context!14676))))))

(assert (=> start!700212 setRes!53401))

(assert (=> start!700212 (and (inv!88988 c!10544) e!4320901)))

(assert (=> start!700212 e!4320905))

(declare-fun b!7195464 () Bool)

(declare-fun tp!2000444 () Bool)

(assert (=> b!7195464 (= e!4320903 tp!2000444)))

(assert (= (and start!700212 res!2929214) b!7195463))

(assert (= (and b!7195463 res!2929210) b!7195462))

(assert (= (and b!7195462 res!2929215) b!7195468))

(assert (= (and b!7195468 res!2929212) b!7195471))

(assert (= (and b!7195471 res!2929213) b!7195467))

(assert (= (and b!7195467 res!2929211) b!7195469))

(assert (= (and b!7195469 res!2929209) b!7195466))

(assert (= (and start!700212 condSetEmpty!53401) setIsEmpty!53401))

(assert (= (and start!700212 (not condSetEmpty!53401)) setNonEmpty!53401))

(assert (= setNonEmpty!53401 b!7195464))

(assert (= start!700212 b!7195470))

(assert (= (and start!700212 (is-Cons!69755 s!7961)) b!7195465))

(declare-fun m!7889454 () Bool)

(assert (=> b!7195469 m!7889454))

(declare-fun m!7889456 () Bool)

(assert (=> b!7195469 m!7889456))

(declare-fun m!7889458 () Bool)

(assert (=> b!7195469 m!7889458))

(assert (=> b!7195469 m!7889458))

(declare-fun m!7889460 () Bool)

(assert (=> b!7195469 m!7889460))

(declare-fun m!7889462 () Bool)

(assert (=> b!7195462 m!7889462))

(declare-fun m!7889464 () Bool)

(assert (=> b!7195468 m!7889464))

(declare-fun m!7889466 () Bool)

(assert (=> b!7195466 m!7889466))

(declare-fun m!7889468 () Bool)

(assert (=> start!700212 m!7889468))

(declare-fun m!7889470 () Bool)

(assert (=> start!700212 m!7889470))

(declare-fun m!7889472 () Bool)

(assert (=> b!7195471 m!7889472))

(declare-fun m!7889474 () Bool)

(assert (=> b!7195471 m!7889474))

(declare-fun m!7889476 () Bool)

(assert (=> b!7195471 m!7889476))

(declare-fun m!7889478 () Bool)

(assert (=> setNonEmpty!53401 m!7889478))

(declare-fun m!7889480 () Bool)

(assert (=> b!7195463 m!7889480))

(push 1)

(assert (not b!7195468))

(assert (not b!7195463))

(assert (not b!7195465))

(assert (not b!7195462))

(assert (not b!7195471))

(assert tp_is_empty!46329)

(assert (not b!7195470))

(assert (not setNonEmpty!53401))

(assert (not start!700212))

(assert (not b!7195469))

(assert (not b!7195464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2241460 () Bool)

(declare-fun choose!55432 ((Set Context!14676) Int) (Set Context!14676))

(assert (=> d!2241460 (= (flatMap!2685 z!3517 lambda!438099) (choose!55432 z!3517 lambda!438099))))

(declare-fun bs!1900527 () Bool)

(assert (= bs!1900527 d!2241460))

(declare-fun m!7889510 () Bool)

(assert (=> bs!1900527 m!7889510))

(assert (=> b!7195469 d!2241460))

(declare-fun d!2241462 () Bool)

(assert (=> d!2241462 (= (head!14735 (toList!11323 lt!2571570)) (h!76204 (toList!11323 lt!2571570)))))

(assert (=> b!7195469 d!2241462))

(declare-fun d!2241464 () Bool)

(declare-fun e!4320926 () Bool)

(assert (=> d!2241464 e!4320926))

(declare-fun res!2929239 () Bool)

(assert (=> d!2241464 (=> (not res!2929239) (not e!4320926))))

(declare-fun lt!2571583 () List!69880)

(declare-fun noDuplicate!2906 (List!69880) Bool)

(assert (=> d!2241464 (= res!2929239 (noDuplicate!2906 lt!2571583))))

(declare-fun choose!55433 ((Set Context!14676)) List!69880)

(assert (=> d!2241464 (= lt!2571583 (choose!55433 lt!2571570))))

(assert (=> d!2241464 (= (toList!11323 lt!2571570) lt!2571583)))

(declare-fun b!7195508 () Bool)

(declare-fun content!14335 (List!69880) (Set Context!14676))

(assert (=> b!7195508 (= e!4320926 (= (content!14335 lt!2571583) lt!2571570))))

(assert (= (and d!2241464 res!2929239) b!7195508))

(declare-fun m!7889512 () Bool)

(assert (=> d!2241464 m!7889512))

(declare-fun m!7889514 () Bool)

(assert (=> d!2241464 m!7889514))

(declare-fun m!7889516 () Bool)

(assert (=> b!7195508 m!7889516))

(assert (=> b!7195469 d!2241464))

(declare-fun d!2241466 () Bool)

(declare-fun lambda!438105 () Int)

(declare-fun forall!17209 (List!69878 Int) Bool)

(assert (=> d!2241466 (= (inv!88988 setElem!53401) (forall!17209 (exprs!7838 setElem!53401) lambda!438105))))

(declare-fun bs!1900528 () Bool)

(assert (= bs!1900528 d!2241466))

(declare-fun m!7889518 () Bool)

(assert (=> bs!1900528 m!7889518))

(assert (=> setNonEmpty!53401 d!2241466))

(declare-fun bs!1900529 () Bool)

(declare-fun d!2241468 () Bool)

(assert (= bs!1900529 (and d!2241468 d!2241466)))

(declare-fun lambda!438106 () Int)

(assert (=> bs!1900529 (= lambda!438106 lambda!438105)))

(assert (=> d!2241468 (= (inv!88988 c!10544) (forall!17209 (exprs!7838 c!10544) lambda!438106))))

(declare-fun bs!1900530 () Bool)

(assert (= bs!1900530 d!2241468))

(declare-fun m!7889520 () Bool)

(assert (=> bs!1900530 m!7889520))

(assert (=> start!700212 d!2241468))

(declare-fun d!2241470 () Bool)

(assert (=> d!2241470 (= (head!14734 (exprs!7838 c!10544)) (h!76202 (exprs!7838 c!10544)))))

(assert (=> b!7195462 d!2241470))

(declare-fun call!656186 () (Set Context!14676))

(declare-fun e!4320934 () (Set Context!14676))

(declare-fun b!7195519 () Bool)

(assert (=> b!7195519 (= e!4320934 (set.union call!656186 (derivationStepZipperUp!2352 (Context!14677 (t!383905 (exprs!7838 c!10544))) lt!2571569)))))

(declare-fun d!2241472 () Bool)

(declare-fun c!1339235 () Bool)

(declare-fun e!4320935 () Bool)

(assert (=> d!2241472 (= c!1339235 e!4320935)))

(declare-fun res!2929242 () Bool)

(assert (=> d!2241472 (=> (not res!2929242) (not e!4320935))))

(assert (=> d!2241472 (= res!2929242 (is-Cons!69754 (exprs!7838 c!10544)))))

(assert (=> d!2241472 (= (derivationStepZipperUp!2352 c!10544 lt!2571569) e!4320934)))

(declare-fun b!7195520 () Bool)

(declare-fun nullable!7798 (Regex!18386) Bool)

(assert (=> b!7195520 (= e!4320935 (nullable!7798 (h!76202 (exprs!7838 c!10544))))))

(declare-fun bm!656181 () Bool)

(declare-fun derivationStepZipperDown!2529 (Regex!18386 Context!14676 C!37046) (Set Context!14676))

(assert (=> bm!656181 (= call!656186 (derivationStepZipperDown!2529 (h!76202 (exprs!7838 c!10544)) (Context!14677 (t!383905 (exprs!7838 c!10544))) lt!2571569))))

(declare-fun b!7195521 () Bool)

(declare-fun e!4320933 () (Set Context!14676))

(assert (=> b!7195521 (= e!4320933 (as set.empty (Set Context!14676)))))

(declare-fun b!7195522 () Bool)

(assert (=> b!7195522 (= e!4320933 call!656186)))

(declare-fun b!7195523 () Bool)

(assert (=> b!7195523 (= e!4320934 e!4320933)))

(declare-fun c!1339234 () Bool)

(assert (=> b!7195523 (= c!1339234 (is-Cons!69754 (exprs!7838 c!10544)))))

(assert (= (and d!2241472 res!2929242) b!7195520))

(assert (= (and d!2241472 c!1339235) b!7195519))

(assert (= (and d!2241472 (not c!1339235)) b!7195523))

(assert (= (and b!7195523 c!1339234) b!7195522))

(assert (= (and b!7195523 (not c!1339234)) b!7195521))

(assert (= (or b!7195519 b!7195522) bm!656181))

(declare-fun m!7889522 () Bool)

(assert (=> b!7195519 m!7889522))

(declare-fun m!7889524 () Bool)

(assert (=> b!7195520 m!7889524))

(declare-fun m!7889526 () Bool)

(assert (=> bm!656181 m!7889526))

(assert (=> b!7195471 d!2241472))

(declare-fun bs!1900531 () Bool)

(declare-fun d!2241478 () Bool)

(assert (= bs!1900531 (and d!2241478 b!7195469)))

(declare-fun lambda!438109 () Int)

(assert (=> bs!1900531 (= lambda!438109 lambda!438099)))

(assert (=> d!2241478 true))

(assert (=> d!2241478 (= (derivationStepZipper!3245 z!3517 lt!2571569) (flatMap!2685 z!3517 lambda!438109))))

(declare-fun bs!1900532 () Bool)

(assert (= bs!1900532 d!2241478))

(declare-fun m!7889528 () Bool)

(assert (=> bs!1900532 m!7889528))

(assert (=> b!7195471 d!2241478))

(declare-fun d!2241480 () Bool)

(assert (=> d!2241480 (= (head!14736 s!7961) (h!76203 s!7961))))

(assert (=> b!7195471 d!2241480))

(declare-fun d!2241482 () Bool)

(assert (=> d!2241482 (= (isEmpty!40267 (exprs!7838 c!10544)) (is-Nil!69754 (exprs!7838 c!10544)))))

(assert (=> b!7195463 d!2241482))

(declare-fun d!2241484 () Bool)

(assert (=> d!2241484 (= (isEmpty!40268 s!7961) (is-Nil!69755 s!7961))))

(assert (=> b!7195468 d!2241484))

(declare-fun b!7195528 () Bool)

(declare-fun e!4320938 () Bool)

(declare-fun tp!2000459 () Bool)

(assert (=> b!7195528 (= e!4320938 (and tp_is_empty!46329 tp!2000459))))

(assert (=> b!7195465 (= tp!2000442 e!4320938)))

(assert (= (and b!7195465 (is-Cons!69755 (t!383906 s!7961))) b!7195528))

(declare-fun b!7195533 () Bool)

(declare-fun e!4320941 () Bool)

(declare-fun tp!2000464 () Bool)

(declare-fun tp!2000465 () Bool)

(assert (=> b!7195533 (= e!4320941 (and tp!2000464 tp!2000465))))

(assert (=> b!7195470 (= tp!2000443 e!4320941)))

(assert (= (and b!7195470 (is-Cons!69754 (exprs!7838 c!10544))) b!7195533))

(declare-fun condSetEmpty!53407 () Bool)

(assert (=> setNonEmpty!53401 (= condSetEmpty!53407 (= setRest!53401 (as set.empty (Set Context!14676))))))

(declare-fun setRes!53407 () Bool)

(assert (=> setNonEmpty!53401 (= tp!2000441 setRes!53407)))

(declare-fun setIsEmpty!53407 () Bool)

(assert (=> setIsEmpty!53407 setRes!53407))

(declare-fun e!4320944 () Bool)

(declare-fun setElem!53407 () Context!14676)

(declare-fun setNonEmpty!53407 () Bool)

(declare-fun tp!2000470 () Bool)

(assert (=> setNonEmpty!53407 (= setRes!53407 (and tp!2000470 (inv!88988 setElem!53407) e!4320944))))

(declare-fun setRest!53407 () (Set Context!14676))

(assert (=> setNonEmpty!53407 (= setRest!53401 (set.union (set.insert setElem!53407 (as set.empty (Set Context!14676))) setRest!53407))))

(declare-fun b!7195538 () Bool)

(declare-fun tp!2000471 () Bool)

(assert (=> b!7195538 (= e!4320944 tp!2000471)))

(assert (= (and setNonEmpty!53401 condSetEmpty!53407) setIsEmpty!53407))

(assert (= (and setNonEmpty!53401 (not condSetEmpty!53407)) setNonEmpty!53407))

(assert (= setNonEmpty!53407 b!7195538))

(declare-fun m!7889530 () Bool)

(assert (=> setNonEmpty!53407 m!7889530))

(declare-fun b!7195539 () Bool)

(declare-fun e!4320945 () Bool)

(declare-fun tp!2000472 () Bool)

(declare-fun tp!2000473 () Bool)

(assert (=> b!7195539 (= e!4320945 (and tp!2000472 tp!2000473))))

(assert (=> b!7195464 (= tp!2000444 e!4320945)))

(assert (= (and b!7195464 (is-Cons!69754 (exprs!7838 setElem!53401))) b!7195539))

(push 1)

(assert (not d!2241460))

(assert (not b!7195520))

(assert (not b!7195538))

(assert (not bm!656181))

(assert (not d!2241464))

(assert tp_is_empty!46329)

(assert (not setNonEmpty!53407))

(assert (not d!2241478))

(assert (not b!7195519))

(assert (not b!7195508))

(assert (not b!7195528))

(assert (not b!7195539))

(assert (not d!2241468))

(assert (not d!2241466))

(assert (not b!7195533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

