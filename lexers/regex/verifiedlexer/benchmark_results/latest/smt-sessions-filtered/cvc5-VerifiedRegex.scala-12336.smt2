; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691790 () Bool)

(assert start!691790)

(declare-fun b!7106461 () Bool)

(declare-fun e!4271086 () Bool)

(declare-fun tp!1954340 () Bool)

(assert (=> b!7106461 (= e!4271086 tp!1954340)))

(declare-fun b!7106462 () Bool)

(declare-fun e!4271088 () Bool)

(declare-fun tp!1954342 () Bool)

(assert (=> b!7106462 (= e!4271088 tp!1954342)))

(declare-fun b!7106463 () Bool)

(declare-fun e!4271085 () Bool)

(declare-fun tp!1954343 () Bool)

(assert (=> b!7106463 (= e!4271085 tp!1954343)))

(declare-fun b!7106464 () Bool)

(declare-fun res!2900745 () Bool)

(declare-fun e!4271087 () Bool)

(assert (=> b!7106464 (=> (not res!2900745) (not e!4271087))))

(declare-datatypes ((C!36098 0))(
  ( (C!36099 (val!27755 Int)) )
))
(declare-datatypes ((Regex!17914 0))(
  ( (ElementMatch!17914 (c!1326167 C!36098)) (Concat!26759 (regOne!36340 Regex!17914) (regTwo!36340 Regex!17914)) (EmptyExpr!17914) (Star!17914 (reg!18243 Regex!17914)) (EmptyLang!17914) (Union!17914 (regOne!36341 Regex!17914) (regTwo!36341 Regex!17914)) )
))
(declare-fun r!11554 () Regex!17914)

(declare-fun a!1901 () C!36098)

(assert (=> b!7106464 (= res!2900745 (and (or (not (is-ElementMatch!17914 r!11554)) (not (= (c!1326167 r!11554) a!1901))) (not (is-Union!17914 r!11554)) (is-Concat!26759 r!11554)))))

(declare-fun b!7106465 () Bool)

(declare-fun tp!1954341 () Bool)

(declare-fun tp!1954338 () Bool)

(assert (=> b!7106465 (= e!4271088 (and tp!1954341 tp!1954338))))

(declare-fun b!7106467 () Bool)

(declare-fun tp_is_empty!45061 () Bool)

(assert (=> b!7106467 (= e!4271088 tp_is_empty!45061)))

(declare-fun b!7106468 () Bool)

(declare-fun tp!1954339 () Bool)

(declare-fun tp!1954337 () Bool)

(assert (=> b!7106468 (= e!4271088 (and tp!1954339 tp!1954337))))

(declare-fun b!7106469 () Bool)

(declare-fun res!2900743 () Bool)

(assert (=> b!7106469 (=> (not res!2900743) (not e!4271087))))

(declare-fun nullable!7551 (Regex!17914) Bool)

(assert (=> b!7106469 (= res!2900743 (nullable!7551 (regOne!36340 r!11554)))))

(declare-fun res!2900744 () Bool)

(assert (=> start!691790 (=> (not res!2900744) (not e!4271087))))

(declare-fun validRegex!9187 (Regex!17914) Bool)

(assert (=> start!691790 (= res!2900744 (validRegex!9187 r!11554))))

(assert (=> start!691790 e!4271087))

(assert (=> start!691790 e!4271088))

(assert (=> start!691790 tp_is_empty!45061))

(declare-datatypes ((List!68875 0))(
  ( (Nil!68751) (Cons!68751 (h!75199 Regex!17914) (t!382692 List!68875)) )
))
(declare-datatypes ((Context!13816 0))(
  ( (Context!13817 (exprs!7408 List!68875)) )
))
(declare-fun c!9994 () Context!13816)

(declare-fun inv!87649 (Context!13816) Bool)

(assert (=> start!691790 (and (inv!87649 c!9994) e!4271085)))

(declare-fun auxCtx!45 () Context!13816)

(assert (=> start!691790 (and (inv!87649 auxCtx!45) e!4271086)))

(declare-fun b!7106466 () Bool)

(assert (=> b!7106466 (= e!4271087 (not (validRegex!9187 (regTwo!36340 r!11554))))))

(declare-datatypes ((Unit!162499 0))(
  ( (Unit!162500) )
))
(declare-fun lt!2559133 () Unit!162499)

(declare-fun lambda!431638 () Int)

(declare-fun lemmaConcatPreservesForall!1199 (List!68875 List!68875 Int) Unit!162499)

(assert (=> b!7106466 (= lt!2559133 (lemmaConcatPreservesForall!1199 (exprs!7408 c!9994) (exprs!7408 auxCtx!45) lambda!431638))))

(declare-fun lt!2559136 () List!68875)

(declare-fun ++!16066 (List!68875 List!68875) List!68875)

(assert (=> b!7106466 (= lt!2559136 (++!16066 (exprs!7408 c!9994) (exprs!7408 auxCtx!45)))))

(declare-fun lt!2559135 () Unit!162499)

(assert (=> b!7106466 (= lt!2559135 (lemmaConcatPreservesForall!1199 (exprs!7408 c!9994) (exprs!7408 auxCtx!45) lambda!431638))))

(declare-fun lt!2559134 () Unit!162499)

(assert (=> b!7106466 (= lt!2559134 (lemmaConcatPreservesForall!1199 (exprs!7408 c!9994) (exprs!7408 auxCtx!45) lambda!431638))))

(assert (= (and start!691790 res!2900744) b!7106464))

(assert (= (and b!7106464 res!2900745) b!7106469))

(assert (= (and b!7106469 res!2900743) b!7106466))

(assert (= (and start!691790 (is-ElementMatch!17914 r!11554)) b!7106467))

(assert (= (and start!691790 (is-Concat!26759 r!11554)) b!7106468))

(assert (= (and start!691790 (is-Star!17914 r!11554)) b!7106462))

(assert (= (and start!691790 (is-Union!17914 r!11554)) b!7106465))

(assert (= start!691790 b!7106463))

(assert (= start!691790 b!7106461))

(declare-fun m!7829484 () Bool)

(assert (=> b!7106469 m!7829484))

(declare-fun m!7829486 () Bool)

(assert (=> start!691790 m!7829486))

(declare-fun m!7829488 () Bool)

(assert (=> start!691790 m!7829488))

(declare-fun m!7829490 () Bool)

(assert (=> start!691790 m!7829490))

(declare-fun m!7829492 () Bool)

(assert (=> b!7106466 m!7829492))

(assert (=> b!7106466 m!7829492))

(assert (=> b!7106466 m!7829492))

(declare-fun m!7829494 () Bool)

(assert (=> b!7106466 m!7829494))

(declare-fun m!7829496 () Bool)

(assert (=> b!7106466 m!7829496))

(push 1)

(assert (not start!691790))

(assert (not b!7106461))

(assert (not b!7106469))

(assert (not b!7106463))

(assert tp_is_empty!45061)

(assert (not b!7106465))

(assert (not b!7106468))

(assert (not b!7106466))

(assert (not b!7106462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2219399 () Bool)

(declare-fun nullableFct!2908 (Regex!17914) Bool)

(assert (=> d!2219399 (= (nullable!7551 (regOne!36340 r!11554)) (nullableFct!2908 (regOne!36340 r!11554)))))

(declare-fun bs!1884801 () Bool)

(assert (= bs!1884801 d!2219399))

(declare-fun m!7829512 () Bool)

(assert (=> bs!1884801 m!7829512))

(assert (=> b!7106469 d!2219399))

(declare-fun call!647867 () Bool)

(declare-fun bm!647861 () Bool)

(declare-fun c!1326173 () Bool)

(declare-fun c!1326174 () Bool)

(assert (=> bm!647861 (= call!647867 (validRegex!9187 (ite c!1326173 (reg!18243 (regTwo!36340 r!11554)) (ite c!1326174 (regTwo!36341 (regTwo!36340 r!11554)) (regOne!36340 (regTwo!36340 r!11554))))))))

(declare-fun b!7106515 () Bool)

(declare-fun e!4271116 () Bool)

(declare-fun call!647866 () Bool)

(assert (=> b!7106515 (= e!4271116 call!647866)))

(declare-fun b!7106516 () Bool)

(declare-fun e!4271117 () Bool)

(declare-fun e!4271120 () Bool)

(assert (=> b!7106516 (= e!4271117 e!4271120)))

(declare-fun res!2900769 () Bool)

(assert (=> b!7106516 (= res!2900769 (not (nullable!7551 (reg!18243 (regTwo!36340 r!11554)))))))

(assert (=> b!7106516 (=> (not res!2900769) (not e!4271120))))

(declare-fun b!7106517 () Bool)

(assert (=> b!7106517 (= e!4271120 call!647867)))

(declare-fun d!2219401 () Bool)

(declare-fun res!2900767 () Bool)

(declare-fun e!4271121 () Bool)

(assert (=> d!2219401 (=> res!2900767 e!4271121)))

(assert (=> d!2219401 (= res!2900767 (is-ElementMatch!17914 (regTwo!36340 r!11554)))))

(assert (=> d!2219401 (= (validRegex!9187 (regTwo!36340 r!11554)) e!4271121)))

(declare-fun b!7106518 () Bool)

(declare-fun res!2900765 () Bool)

(declare-fun e!4271115 () Bool)

(assert (=> b!7106518 (=> (not res!2900765) (not e!4271115))))

(assert (=> b!7106518 (= res!2900765 call!647866)))

(declare-fun e!4271118 () Bool)

(assert (=> b!7106518 (= e!4271118 e!4271115)))

(declare-fun bm!647862 () Bool)

(assert (=> bm!647862 (= call!647866 (validRegex!9187 (ite c!1326174 (regOne!36341 (regTwo!36340 r!11554)) (regTwo!36340 (regTwo!36340 r!11554)))))))

(declare-fun bm!647863 () Bool)

(declare-fun call!647868 () Bool)

(assert (=> bm!647863 (= call!647868 call!647867)))

(declare-fun b!7106519 () Bool)

(assert (=> b!7106519 (= e!4271121 e!4271117)))

(assert (=> b!7106519 (= c!1326173 (is-Star!17914 (regTwo!36340 r!11554)))))

(declare-fun b!7106520 () Bool)

(declare-fun e!4271119 () Bool)

(assert (=> b!7106520 (= e!4271119 e!4271116)))

(declare-fun res!2900766 () Bool)

(assert (=> b!7106520 (=> (not res!2900766) (not e!4271116))))

(assert (=> b!7106520 (= res!2900766 call!647868)))

(declare-fun b!7106521 () Bool)

(declare-fun res!2900768 () Bool)

(assert (=> b!7106521 (=> res!2900768 e!4271119)))

(assert (=> b!7106521 (= res!2900768 (not (is-Concat!26759 (regTwo!36340 r!11554))))))

(assert (=> b!7106521 (= e!4271118 e!4271119)))

(declare-fun b!7106522 () Bool)

(assert (=> b!7106522 (= e!4271115 call!647868)))

(declare-fun b!7106523 () Bool)

(assert (=> b!7106523 (= e!4271117 e!4271118)))

(assert (=> b!7106523 (= c!1326174 (is-Union!17914 (regTwo!36340 r!11554)))))

(assert (= (and d!2219401 (not res!2900767)) b!7106519))

(assert (= (and b!7106519 c!1326173) b!7106516))

(assert (= (and b!7106519 (not c!1326173)) b!7106523))

(assert (= (and b!7106516 res!2900769) b!7106517))

(assert (= (and b!7106523 c!1326174) b!7106518))

(assert (= (and b!7106523 (not c!1326174)) b!7106521))

(assert (= (and b!7106518 res!2900765) b!7106522))

(assert (= (and b!7106521 (not res!2900768)) b!7106520))

(assert (= (and b!7106520 res!2900766) b!7106515))

(assert (= (or b!7106518 b!7106515) bm!647862))

(assert (= (or b!7106522 b!7106520) bm!647863))

(assert (= (or b!7106517 bm!647863) bm!647861))

(declare-fun m!7829514 () Bool)

(assert (=> bm!647861 m!7829514))

(declare-fun m!7829516 () Bool)

(assert (=> b!7106516 m!7829516))

(declare-fun m!7829518 () Bool)

(assert (=> bm!647862 m!7829518))

(assert (=> b!7106466 d!2219401))

(declare-fun d!2219403 () Bool)

(declare-fun forall!16817 (List!68875 Int) Bool)

(assert (=> d!2219403 (forall!16817 (++!16066 (exprs!7408 c!9994) (exprs!7408 auxCtx!45)) lambda!431638)))

(declare-fun lt!2559151 () Unit!162499)

(declare-fun choose!54825 (List!68875 List!68875 Int) Unit!162499)

(assert (=> d!2219403 (= lt!2559151 (choose!54825 (exprs!7408 c!9994) (exprs!7408 auxCtx!45) lambda!431638))))

(assert (=> d!2219403 (forall!16817 (exprs!7408 c!9994) lambda!431638)))

(assert (=> d!2219403 (= (lemmaConcatPreservesForall!1199 (exprs!7408 c!9994) (exprs!7408 auxCtx!45) lambda!431638) lt!2559151)))

(declare-fun bs!1884802 () Bool)

(assert (= bs!1884802 d!2219403))

(assert (=> bs!1884802 m!7829494))

(assert (=> bs!1884802 m!7829494))

(declare-fun m!7829520 () Bool)

(assert (=> bs!1884802 m!7829520))

(declare-fun m!7829522 () Bool)

(assert (=> bs!1884802 m!7829522))

(declare-fun m!7829524 () Bool)

(assert (=> bs!1884802 m!7829524))

(assert (=> b!7106466 d!2219403))

(declare-fun lt!2559154 () List!68875)

(declare-fun b!7106553 () Bool)

(declare-fun e!4271140 () Bool)

(assert (=> b!7106553 (= e!4271140 (or (not (= (exprs!7408 auxCtx!45) Nil!68751)) (= lt!2559154 (exprs!7408 c!9994))))))

(declare-fun b!7106552 () Bool)

(declare-fun res!2900784 () Bool)

(assert (=> b!7106552 (=> (not res!2900784) (not e!4271140))))

(declare-fun size!41377 (List!68875) Int)

(assert (=> b!7106552 (= res!2900784 (= (size!41377 lt!2559154) (+ (size!41377 (exprs!7408 c!9994)) (size!41377 (exprs!7408 auxCtx!45)))))))

(declare-fun b!7106551 () Bool)

(declare-fun e!4271141 () List!68875)

(assert (=> b!7106551 (= e!4271141 (Cons!68751 (h!75199 (exprs!7408 c!9994)) (++!16066 (t!382692 (exprs!7408 c!9994)) (exprs!7408 auxCtx!45))))))

(declare-fun d!2219407 () Bool)

(assert (=> d!2219407 e!4271140))

(declare-fun res!2900785 () Bool)

(assert (=> d!2219407 (=> (not res!2900785) (not e!4271140))))

(declare-fun content!14002 (List!68875) (Set Regex!17914))

(assert (=> d!2219407 (= res!2900785 (= (content!14002 lt!2559154) (set.union (content!14002 (exprs!7408 c!9994)) (content!14002 (exprs!7408 auxCtx!45)))))))

(assert (=> d!2219407 (= lt!2559154 e!4271141)))

(declare-fun c!1326181 () Bool)

(assert (=> d!2219407 (= c!1326181 (is-Nil!68751 (exprs!7408 c!9994)))))

(assert (=> d!2219407 (= (++!16066 (exprs!7408 c!9994) (exprs!7408 auxCtx!45)) lt!2559154)))

(declare-fun b!7106550 () Bool)

(assert (=> b!7106550 (= e!4271141 (exprs!7408 auxCtx!45))))

(assert (= (and d!2219407 c!1326181) b!7106550))

(assert (= (and d!2219407 (not c!1326181)) b!7106551))

(assert (= (and d!2219407 res!2900785) b!7106552))

(assert (= (and b!7106552 res!2900784) b!7106553))

(declare-fun m!7829526 () Bool)

(assert (=> b!7106552 m!7829526))

(declare-fun m!7829528 () Bool)

(assert (=> b!7106552 m!7829528))

(declare-fun m!7829530 () Bool)

(assert (=> b!7106552 m!7829530))

(declare-fun m!7829532 () Bool)

(assert (=> b!7106551 m!7829532))

(declare-fun m!7829534 () Bool)

(assert (=> d!2219407 m!7829534))

(declare-fun m!7829536 () Bool)

(assert (=> d!2219407 m!7829536))

(declare-fun m!7829538 () Bool)

(assert (=> d!2219407 m!7829538))

(assert (=> b!7106466 d!2219407))

(declare-fun call!647870 () Bool)

(declare-fun bm!647864 () Bool)

(declare-fun c!1326182 () Bool)

(declare-fun c!1326183 () Bool)

(assert (=> bm!647864 (= call!647870 (validRegex!9187 (ite c!1326182 (reg!18243 r!11554) (ite c!1326183 (regTwo!36341 r!11554) (regOne!36340 r!11554)))))))

(declare-fun b!7106554 () Bool)

(declare-fun e!4271143 () Bool)

(declare-fun call!647869 () Bool)

(assert (=> b!7106554 (= e!4271143 call!647869)))

(declare-fun b!7106555 () Bool)

(declare-fun e!4271144 () Bool)

(declare-fun e!4271147 () Bool)

(assert (=> b!7106555 (= e!4271144 e!4271147)))

(declare-fun res!2900790 () Bool)

(assert (=> b!7106555 (= res!2900790 (not (nullable!7551 (reg!18243 r!11554))))))

(assert (=> b!7106555 (=> (not res!2900790) (not e!4271147))))

(declare-fun b!7106556 () Bool)

(assert (=> b!7106556 (= e!4271147 call!647870)))

(declare-fun d!2219409 () Bool)

(declare-fun res!2900788 () Bool)

(declare-fun e!4271148 () Bool)

(assert (=> d!2219409 (=> res!2900788 e!4271148)))

(assert (=> d!2219409 (= res!2900788 (is-ElementMatch!17914 r!11554))))

(assert (=> d!2219409 (= (validRegex!9187 r!11554) e!4271148)))

(declare-fun b!7106557 () Bool)

(declare-fun res!2900786 () Bool)

(declare-fun e!4271142 () Bool)

(assert (=> b!7106557 (=> (not res!2900786) (not e!4271142))))

(assert (=> b!7106557 (= res!2900786 call!647869)))

(declare-fun e!4271145 () Bool)

(assert (=> b!7106557 (= e!4271145 e!4271142)))

(declare-fun bm!647865 () Bool)

(assert (=> bm!647865 (= call!647869 (validRegex!9187 (ite c!1326183 (regOne!36341 r!11554) (regTwo!36340 r!11554))))))

(declare-fun bm!647866 () Bool)

(declare-fun call!647871 () Bool)

(assert (=> bm!647866 (= call!647871 call!647870)))

(declare-fun b!7106558 () Bool)

(assert (=> b!7106558 (= e!4271148 e!4271144)))

(assert (=> b!7106558 (= c!1326182 (is-Star!17914 r!11554))))

(declare-fun b!7106559 () Bool)

(declare-fun e!4271146 () Bool)

(assert (=> b!7106559 (= e!4271146 e!4271143)))

(declare-fun res!2900787 () Bool)

(assert (=> b!7106559 (=> (not res!2900787) (not e!4271143))))

(assert (=> b!7106559 (= res!2900787 call!647871)))

(declare-fun b!7106560 () Bool)

(declare-fun res!2900789 () Bool)

(assert (=> b!7106560 (=> res!2900789 e!4271146)))

(assert (=> b!7106560 (= res!2900789 (not (is-Concat!26759 r!11554)))))

(assert (=> b!7106560 (= e!4271145 e!4271146)))

(declare-fun b!7106561 () Bool)

(assert (=> b!7106561 (= e!4271142 call!647871)))

(declare-fun b!7106562 () Bool)

(assert (=> b!7106562 (= e!4271144 e!4271145)))

(assert (=> b!7106562 (= c!1326183 (is-Union!17914 r!11554))))

(assert (= (and d!2219409 (not res!2900788)) b!7106558))

(assert (= (and b!7106558 c!1326182) b!7106555))

(assert (= (and b!7106558 (not c!1326182)) b!7106562))

(assert (= (and b!7106555 res!2900790) b!7106556))

(assert (= (and b!7106562 c!1326183) b!7106557))

(assert (= (and b!7106562 (not c!1326183)) b!7106560))

(assert (= (and b!7106557 res!2900786) b!7106561))

(assert (= (and b!7106560 (not res!2900789)) b!7106559))

(assert (= (and b!7106559 res!2900787) b!7106554))

(assert (= (or b!7106557 b!7106554) bm!647865))

(assert (= (or b!7106561 b!7106559) bm!647866))

(assert (= (or b!7106556 bm!647866) bm!647864))

(declare-fun m!7829540 () Bool)

(assert (=> bm!647864 m!7829540))

(declare-fun m!7829542 () Bool)

(assert (=> b!7106555 m!7829542))

(declare-fun m!7829544 () Bool)

(assert (=> bm!647865 m!7829544))

(assert (=> start!691790 d!2219409))

(declare-fun bs!1884803 () Bool)

(declare-fun d!2219411 () Bool)

(assert (= bs!1884803 (and d!2219411 b!7106466)))

(declare-fun lambda!431648 () Int)

(assert (=> bs!1884803 (= lambda!431648 lambda!431638)))

(assert (=> d!2219411 (= (inv!87649 c!9994) (forall!16817 (exprs!7408 c!9994) lambda!431648))))

(declare-fun bs!1884804 () Bool)

(assert (= bs!1884804 d!2219411))

(declare-fun m!7829546 () Bool)

(assert (=> bs!1884804 m!7829546))

(assert (=> start!691790 d!2219411))

(declare-fun bs!1884805 () Bool)

(declare-fun d!2219413 () Bool)

(assert (= bs!1884805 (and d!2219413 b!7106466)))

(declare-fun lambda!431649 () Int)

(assert (=> bs!1884805 (= lambda!431649 lambda!431638)))

(declare-fun bs!1884806 () Bool)

(assert (= bs!1884806 (and d!2219413 d!2219411)))

(assert (=> bs!1884806 (= lambda!431649 lambda!431648)))

(assert (=> d!2219413 (= (inv!87649 auxCtx!45) (forall!16817 (exprs!7408 auxCtx!45) lambda!431649))))

(declare-fun bs!1884807 () Bool)

(assert (= bs!1884807 d!2219413))

(declare-fun m!7829548 () Bool)

(assert (=> bs!1884807 m!7829548))

(assert (=> start!691790 d!2219413))

(declare-fun b!7106567 () Bool)

(declare-fun e!4271151 () Bool)

(declare-fun tp!1954369 () Bool)

(declare-fun tp!1954370 () Bool)

(assert (=> b!7106567 (= e!4271151 (and tp!1954369 tp!1954370))))

(assert (=> b!7106463 (= tp!1954343 e!4271151)))

(assert (= (and b!7106463 (is-Cons!68751 (exprs!7408 c!9994))) b!7106567))

(declare-fun b!7106581 () Bool)

(declare-fun e!4271154 () Bool)

(declare-fun tp!1954381 () Bool)

(declare-fun tp!1954383 () Bool)

(assert (=> b!7106581 (= e!4271154 (and tp!1954381 tp!1954383))))

(assert (=> b!7106468 (= tp!1954339 e!4271154)))

(declare-fun b!7106579 () Bool)

(declare-fun tp!1954384 () Bool)

(declare-fun tp!1954382 () Bool)

(assert (=> b!7106579 (= e!4271154 (and tp!1954384 tp!1954382))))

(declare-fun b!7106578 () Bool)

(assert (=> b!7106578 (= e!4271154 tp_is_empty!45061)))

(declare-fun b!7106580 () Bool)

(declare-fun tp!1954385 () Bool)

(assert (=> b!7106580 (= e!4271154 tp!1954385)))

(assert (= (and b!7106468 (is-ElementMatch!17914 (regOne!36340 r!11554))) b!7106578))

(assert (= (and b!7106468 (is-Concat!26759 (regOne!36340 r!11554))) b!7106579))

(assert (= (and b!7106468 (is-Star!17914 (regOne!36340 r!11554))) b!7106580))

(assert (= (and b!7106468 (is-Union!17914 (regOne!36340 r!11554))) b!7106581))

(declare-fun b!7106585 () Bool)

(declare-fun e!4271155 () Bool)

(declare-fun tp!1954386 () Bool)

(declare-fun tp!1954388 () Bool)

(assert (=> b!7106585 (= e!4271155 (and tp!1954386 tp!1954388))))

(assert (=> b!7106468 (= tp!1954337 e!4271155)))

(declare-fun b!7106583 () Bool)

(declare-fun tp!1954389 () Bool)

(declare-fun tp!1954387 () Bool)

(assert (=> b!7106583 (= e!4271155 (and tp!1954389 tp!1954387))))

(declare-fun b!7106582 () Bool)

(assert (=> b!7106582 (= e!4271155 tp_is_empty!45061)))

(declare-fun b!7106584 () Bool)

(declare-fun tp!1954390 () Bool)

(assert (=> b!7106584 (= e!4271155 tp!1954390)))

(assert (= (and b!7106468 (is-ElementMatch!17914 (regTwo!36340 r!11554))) b!7106582))

(assert (= (and b!7106468 (is-Concat!26759 (regTwo!36340 r!11554))) b!7106583))

(assert (= (and b!7106468 (is-Star!17914 (regTwo!36340 r!11554))) b!7106584))

(assert (= (and b!7106468 (is-Union!17914 (regTwo!36340 r!11554))) b!7106585))

(declare-fun b!7106589 () Bool)

(declare-fun e!4271156 () Bool)

(declare-fun tp!1954391 () Bool)

(declare-fun tp!1954393 () Bool)

(assert (=> b!7106589 (= e!4271156 (and tp!1954391 tp!1954393))))

(assert (=> b!7106462 (= tp!1954342 e!4271156)))

(declare-fun b!7106587 () Bool)

(declare-fun tp!1954394 () Bool)

(declare-fun tp!1954392 () Bool)

(assert (=> b!7106587 (= e!4271156 (and tp!1954394 tp!1954392))))

(declare-fun b!7106586 () Bool)

(assert (=> b!7106586 (= e!4271156 tp_is_empty!45061)))

(declare-fun b!7106588 () Bool)

(declare-fun tp!1954395 () Bool)

(assert (=> b!7106588 (= e!4271156 tp!1954395)))

(assert (= (and b!7106462 (is-ElementMatch!17914 (reg!18243 r!11554))) b!7106586))

(assert (= (and b!7106462 (is-Concat!26759 (reg!18243 r!11554))) b!7106587))

(assert (= (and b!7106462 (is-Star!17914 (reg!18243 r!11554))) b!7106588))

(assert (= (and b!7106462 (is-Union!17914 (reg!18243 r!11554))) b!7106589))

(declare-fun b!7106593 () Bool)

(declare-fun e!4271157 () Bool)

(declare-fun tp!1954396 () Bool)

(declare-fun tp!1954398 () Bool)

(assert (=> b!7106593 (= e!4271157 (and tp!1954396 tp!1954398))))

(assert (=> b!7106465 (= tp!1954341 e!4271157)))

(declare-fun b!7106591 () Bool)

(declare-fun tp!1954399 () Bool)

(declare-fun tp!1954397 () Bool)

(assert (=> b!7106591 (= e!4271157 (and tp!1954399 tp!1954397))))

(declare-fun b!7106590 () Bool)

(assert (=> b!7106590 (= e!4271157 tp_is_empty!45061)))

(declare-fun b!7106592 () Bool)

(declare-fun tp!1954400 () Bool)

(assert (=> b!7106592 (= e!4271157 tp!1954400)))

(assert (= (and b!7106465 (is-ElementMatch!17914 (regOne!36341 r!11554))) b!7106590))

(assert (= (and b!7106465 (is-Concat!26759 (regOne!36341 r!11554))) b!7106591))

(assert (= (and b!7106465 (is-Star!17914 (regOne!36341 r!11554))) b!7106592))

(assert (= (and b!7106465 (is-Union!17914 (regOne!36341 r!11554))) b!7106593))

(declare-fun b!7106597 () Bool)

(declare-fun e!4271158 () Bool)

(declare-fun tp!1954401 () Bool)

(declare-fun tp!1954403 () Bool)

(assert (=> b!7106597 (= e!4271158 (and tp!1954401 tp!1954403))))

(assert (=> b!7106465 (= tp!1954338 e!4271158)))

(declare-fun b!7106595 () Bool)

(declare-fun tp!1954404 () Bool)

(declare-fun tp!1954402 () Bool)

(assert (=> b!7106595 (= e!4271158 (and tp!1954404 tp!1954402))))

(declare-fun b!7106594 () Bool)

(assert (=> b!7106594 (= e!4271158 tp_is_empty!45061)))

(declare-fun b!7106596 () Bool)

(declare-fun tp!1954405 () Bool)

(assert (=> b!7106596 (= e!4271158 tp!1954405)))

(assert (= (and b!7106465 (is-ElementMatch!17914 (regTwo!36341 r!11554))) b!7106594))

(assert (= (and b!7106465 (is-Concat!26759 (regTwo!36341 r!11554))) b!7106595))

(assert (= (and b!7106465 (is-Star!17914 (regTwo!36341 r!11554))) b!7106596))

(assert (= (and b!7106465 (is-Union!17914 (regTwo!36341 r!11554))) b!7106597))

(declare-fun b!7106598 () Bool)

(declare-fun e!4271159 () Bool)

(declare-fun tp!1954406 () Bool)

(declare-fun tp!1954407 () Bool)

(assert (=> b!7106598 (= e!4271159 (and tp!1954406 tp!1954407))))

(assert (=> b!7106461 (= tp!1954340 e!4271159)))

(assert (= (and b!7106461 (is-Cons!68751 (exprs!7408 auxCtx!45))) b!7106598))

(push 1)

(assert (not b!7106598))

(assert (not b!7106583))

(assert (not b!7106551))

(assert (not b!7106588))

(assert (not d!2219413))

(assert (not b!7106516))

(assert (not b!7106587))

(assert (not bm!647861))

(assert (not bm!647862))

(assert (not b!7106580))

(assert (not b!7106591))

(assert (not b!7106595))

(assert (not b!7106589))

(assert (not b!7106555))

(assert (not d!2219411))

(assert (not b!7106592))

(assert (not b!7106567))

(assert (not b!7106597))

(assert (not b!7106584))

(assert (not b!7106581))

(assert (not d!2219407))

(assert (not b!7106593))

(assert tp_is_empty!45061)

(assert (not bm!647865))

(assert (not b!7106579))

(assert (not bm!647864))

(assert (not d!2219399))

(assert (not b!7106585))

(assert (not b!7106596))

(assert (not d!2219403))

(assert (not b!7106552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

