; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731232 () Bool)

(assert start!731232)

(declare-fun b!7572387 () Bool)

(declare-fun res!3033368 () Bool)

(declare-fun e!4507914 () Bool)

(assert (=> b!7572387 (=> (not res!3033368) (not e!4507914))))

(declare-datatypes ((C!40376 0))(
  ( (C!40377 (val!30628 Int)) )
))
(declare-datatypes ((List!72908 0))(
  ( (Nil!72784) (Cons!72784 (h!79232 C!40376) (t!387643 List!72908)) )
))
(declare-fun s!13436 () List!72908)

(declare-fun isEmpty!41443 (List!72908) Bool)

(assert (=> b!7572387 (= res!3033368 (not (isEmpty!41443 s!13436)))))

(declare-fun b!7572388 () Bool)

(declare-fun e!4507912 () Bool)

(declare-fun tp!2206565 () Bool)

(assert (=> b!7572388 (= e!4507912 tp!2206565)))

(declare-fun b!7572389 () Bool)

(declare-fun tp_is_empty!50405 () Bool)

(assert (=> b!7572389 (= e!4507912 tp_is_empty!50405)))

(declare-fun b!7572390 () Bool)

(declare-fun e!4507915 () Bool)

(declare-datatypes ((Regex!20025 0))(
  ( (ElementMatch!20025 (c!1397046 C!40376)) (Concat!28870 (regOne!40562 Regex!20025) (regTwo!40562 Regex!20025)) (EmptyExpr!20025) (Star!20025 (reg!20354 Regex!20025)) (EmptyLang!20025) (Union!20025 (regOne!40563 Regex!20025) (regTwo!40563 Regex!20025)) )
))
(declare-fun r!22341 () Regex!20025)

(declare-fun validRegex!10453 (Regex!20025) Bool)

(assert (=> b!7572390 (= e!4507915 (validRegex!10453 (regOne!40563 r!22341)))))

(declare-fun matchR!9621 (Regex!20025 List!72908) Bool)

(assert (=> b!7572390 (not (matchR!9621 (regTwo!40563 r!22341) s!13436))))

(declare-datatypes ((Unit!167006 0))(
  ( (Unit!167007) )
))
(declare-fun lt!2651512 () Unit!167006)

(declare-fun lemmaLostCauseCannotMatch!63 (Regex!20025 List!72908) Unit!167006)

(assert (=> b!7572390 (= lt!2651512 (lemmaLostCauseCannotMatch!63 (regTwo!40563 r!22341) s!13436))))

(assert (=> b!7572390 (not (matchR!9621 (regOne!40563 r!22341) s!13436))))

(declare-fun lt!2651513 () Unit!167006)

(assert (=> b!7572390 (= lt!2651513 (lemmaLostCauseCannotMatch!63 (regOne!40563 r!22341) s!13436))))

(declare-fun b!7572391 () Bool)

(declare-fun tp!2206563 () Bool)

(declare-fun tp!2206564 () Bool)

(assert (=> b!7572391 (= e!4507912 (and tp!2206563 tp!2206564))))

(declare-fun b!7572392 () Bool)

(declare-fun e!4507913 () Bool)

(declare-fun tp!2206562 () Bool)

(assert (=> b!7572392 (= e!4507913 (and tp_is_empty!50405 tp!2206562))))

(declare-fun b!7572393 () Bool)

(declare-fun tp!2206560 () Bool)

(declare-fun tp!2206561 () Bool)

(assert (=> b!7572393 (= e!4507912 (and tp!2206560 tp!2206561))))

(declare-fun res!3033370 () Bool)

(assert (=> start!731232 (=> (not res!3033370) (not e!4507914))))

(assert (=> start!731232 (= res!3033370 (validRegex!10453 r!22341))))

(assert (=> start!731232 e!4507914))

(assert (=> start!731232 e!4507912))

(assert (=> start!731232 e!4507913))

(declare-fun b!7572394 () Bool)

(assert (=> b!7572394 (= e!4507914 (not e!4507915))))

(declare-fun res!3033367 () Bool)

(assert (=> b!7572394 (=> res!3033367 e!4507915)))

(get-info :version)

(assert (=> b!7572394 (= res!3033367 (or ((_ is EmptyLang!20025) r!22341) ((_ is EmptyExpr!20025) r!22341) ((_ is ElementMatch!20025) r!22341) (not ((_ is Union!20025) r!22341))))))

(declare-fun matchRSpec!4344 (Regex!20025 List!72908) Bool)

(assert (=> b!7572394 (= (matchR!9621 r!22341 s!13436) (matchRSpec!4344 r!22341 s!13436))))

(declare-fun lt!2651514 () Unit!167006)

(declare-fun mainMatchTheorem!4338 (Regex!20025 List!72908) Unit!167006)

(assert (=> b!7572394 (= lt!2651514 (mainMatchTheorem!4338 r!22341 s!13436))))

(declare-fun b!7572395 () Bool)

(declare-fun res!3033369 () Bool)

(assert (=> b!7572395 (=> (not res!3033369) (not e!4507914))))

(declare-fun lostCause!1801 (Regex!20025) Bool)

(assert (=> b!7572395 (= res!3033369 (lostCause!1801 r!22341))))

(assert (= (and start!731232 res!3033370) b!7572395))

(assert (= (and b!7572395 res!3033369) b!7572387))

(assert (= (and b!7572387 res!3033368) b!7572394))

(assert (= (and b!7572394 (not res!3033367)) b!7572390))

(assert (= (and start!731232 ((_ is ElementMatch!20025) r!22341)) b!7572389))

(assert (= (and start!731232 ((_ is Concat!28870) r!22341)) b!7572391))

(assert (= (and start!731232 ((_ is Star!20025) r!22341)) b!7572388))

(assert (= (and start!731232 ((_ is Union!20025) r!22341)) b!7572393))

(assert (= (and start!731232 ((_ is Cons!72784) s!13436)) b!7572392))

(declare-fun m!8132488 () Bool)

(assert (=> start!731232 m!8132488))

(declare-fun m!8132490 () Bool)

(assert (=> b!7572390 m!8132490))

(declare-fun m!8132492 () Bool)

(assert (=> b!7572390 m!8132492))

(declare-fun m!8132494 () Bool)

(assert (=> b!7572390 m!8132494))

(declare-fun m!8132496 () Bool)

(assert (=> b!7572390 m!8132496))

(declare-fun m!8132498 () Bool)

(assert (=> b!7572390 m!8132498))

(declare-fun m!8132500 () Bool)

(assert (=> b!7572394 m!8132500))

(declare-fun m!8132502 () Bool)

(assert (=> b!7572394 m!8132502))

(declare-fun m!8132504 () Bool)

(assert (=> b!7572394 m!8132504))

(declare-fun m!8132506 () Bool)

(assert (=> b!7572395 m!8132506))

(declare-fun m!8132508 () Bool)

(assert (=> b!7572387 m!8132508))

(check-sat (not b!7572395) (not b!7572393) (not b!7572391) (not b!7572394) (not start!731232) (not b!7572390) (not b!7572387) (not b!7572392) tp_is_empty!50405 (not b!7572388))
(check-sat)
(get-model)

(declare-fun b!7572452 () Bool)

(declare-fun e!4507948 () Bool)

(declare-fun derivativeStep!5772 (Regex!20025 C!40376) Regex!20025)

(declare-fun head!15572 (List!72908) C!40376)

(declare-fun tail!15112 (List!72908) List!72908)

(assert (=> b!7572452 (= e!4507948 (matchR!9621 (derivativeStep!5772 r!22341 (head!15572 s!13436)) (tail!15112 s!13436)))))

(declare-fun d!2317614 () Bool)

(declare-fun e!4507945 () Bool)

(assert (=> d!2317614 e!4507945))

(declare-fun c!1397060 () Bool)

(assert (=> d!2317614 (= c!1397060 ((_ is EmptyExpr!20025) r!22341))))

(declare-fun lt!2651519 () Bool)

(assert (=> d!2317614 (= lt!2651519 e!4507948)))

(declare-fun c!1397061 () Bool)

(assert (=> d!2317614 (= c!1397061 (isEmpty!41443 s!13436))))

(assert (=> d!2317614 (validRegex!10453 r!22341)))

(assert (=> d!2317614 (= (matchR!9621 r!22341 s!13436) lt!2651519)))

(declare-fun b!7572453 () Bool)

(declare-fun nullable!8741 (Regex!20025) Bool)

(assert (=> b!7572453 (= e!4507948 (nullable!8741 r!22341))))

(declare-fun b!7572454 () Bool)

(declare-fun res!3033406 () Bool)

(declare-fun e!4507950 () Bool)

(assert (=> b!7572454 (=> res!3033406 e!4507950)))

(declare-fun e!4507944 () Bool)

(assert (=> b!7572454 (= res!3033406 e!4507944)))

(declare-fun res!3033408 () Bool)

(assert (=> b!7572454 (=> (not res!3033408) (not e!4507944))))

(assert (=> b!7572454 (= res!3033408 lt!2651519)))

(declare-fun b!7572455 () Bool)

(declare-fun res!3033403 () Bool)

(assert (=> b!7572455 (=> res!3033403 e!4507950)))

(assert (=> b!7572455 (= res!3033403 (not ((_ is ElementMatch!20025) r!22341)))))

(declare-fun e!4507946 () Bool)

(assert (=> b!7572455 (= e!4507946 e!4507950)))

(declare-fun b!7572456 () Bool)

(declare-fun res!3033409 () Bool)

(assert (=> b!7572456 (=> (not res!3033409) (not e!4507944))))

(assert (=> b!7572456 (= res!3033409 (isEmpty!41443 (tail!15112 s!13436)))))

(declare-fun b!7572457 () Bool)

(declare-fun e!4507947 () Bool)

(assert (=> b!7572457 (= e!4507947 (not (= (head!15572 s!13436) (c!1397046 r!22341))))))

(declare-fun b!7572458 () Bool)

(assert (=> b!7572458 (= e!4507944 (= (head!15572 s!13436) (c!1397046 r!22341)))))

(declare-fun b!7572459 () Bool)

(assert (=> b!7572459 (= e!4507946 (not lt!2651519))))

(declare-fun b!7572460 () Bool)

(declare-fun res!3033405 () Bool)

(assert (=> b!7572460 (=> res!3033405 e!4507947)))

(assert (=> b!7572460 (= res!3033405 (not (isEmpty!41443 (tail!15112 s!13436))))))

(declare-fun b!7572461 () Bool)

(assert (=> b!7572461 (= e!4507945 e!4507946)))

(declare-fun c!1397059 () Bool)

(assert (=> b!7572461 (= c!1397059 ((_ is EmptyLang!20025) r!22341))))

(declare-fun b!7572462 () Bool)

(declare-fun call!694207 () Bool)

(assert (=> b!7572462 (= e!4507945 (= lt!2651519 call!694207))))

(declare-fun b!7572463 () Bool)

(declare-fun e!4507949 () Bool)

(assert (=> b!7572463 (= e!4507949 e!4507947)))

(declare-fun res!3033407 () Bool)

(assert (=> b!7572463 (=> res!3033407 e!4507947)))

(assert (=> b!7572463 (= res!3033407 call!694207)))

(declare-fun bm!694202 () Bool)

(assert (=> bm!694202 (= call!694207 (isEmpty!41443 s!13436))))

(declare-fun b!7572464 () Bool)

(declare-fun res!3033404 () Bool)

(assert (=> b!7572464 (=> (not res!3033404) (not e!4507944))))

(assert (=> b!7572464 (= res!3033404 (not call!694207))))

(declare-fun b!7572465 () Bool)

(assert (=> b!7572465 (= e!4507950 e!4507949)))

(declare-fun res!3033410 () Bool)

(assert (=> b!7572465 (=> (not res!3033410) (not e!4507949))))

(assert (=> b!7572465 (= res!3033410 (not lt!2651519))))

(assert (= (and d!2317614 c!1397061) b!7572453))

(assert (= (and d!2317614 (not c!1397061)) b!7572452))

(assert (= (and d!2317614 c!1397060) b!7572462))

(assert (= (and d!2317614 (not c!1397060)) b!7572461))

(assert (= (and b!7572461 c!1397059) b!7572459))

(assert (= (and b!7572461 (not c!1397059)) b!7572455))

(assert (= (and b!7572455 (not res!3033403)) b!7572454))

(assert (= (and b!7572454 res!3033408) b!7572464))

(assert (= (and b!7572464 res!3033404) b!7572456))

(assert (= (and b!7572456 res!3033409) b!7572458))

(assert (= (and b!7572454 (not res!3033406)) b!7572465))

(assert (= (and b!7572465 res!3033410) b!7572463))

(assert (= (and b!7572463 (not res!3033407)) b!7572460))

(assert (= (and b!7572460 (not res!3033405)) b!7572457))

(assert (= (or b!7572462 b!7572463 b!7572464) bm!694202))

(declare-fun m!8132510 () Bool)

(assert (=> b!7572453 m!8132510))

(assert (=> d!2317614 m!8132508))

(assert (=> d!2317614 m!8132488))

(declare-fun m!8132512 () Bool)

(assert (=> b!7572458 m!8132512))

(declare-fun m!8132514 () Bool)

(assert (=> b!7572460 m!8132514))

(assert (=> b!7572460 m!8132514))

(declare-fun m!8132516 () Bool)

(assert (=> b!7572460 m!8132516))

(assert (=> bm!694202 m!8132508))

(assert (=> b!7572457 m!8132512))

(assert (=> b!7572456 m!8132514))

(assert (=> b!7572456 m!8132514))

(assert (=> b!7572456 m!8132516))

(assert (=> b!7572452 m!8132512))

(assert (=> b!7572452 m!8132512))

(declare-fun m!8132518 () Bool)

(assert (=> b!7572452 m!8132518))

(assert (=> b!7572452 m!8132514))

(assert (=> b!7572452 m!8132518))

(assert (=> b!7572452 m!8132514))

(declare-fun m!8132520 () Bool)

(assert (=> b!7572452 m!8132520))

(assert (=> b!7572394 d!2317614))

(declare-fun b!7572564 () Bool)

(assert (=> b!7572564 true))

(assert (=> b!7572564 true))

(declare-fun bs!1940618 () Bool)

(declare-fun b!7572567 () Bool)

(assert (= bs!1940618 (and b!7572567 b!7572564)))

(declare-fun lambda!466461 () Int)

(declare-fun lambda!466460 () Int)

(assert (=> bs!1940618 (not (= lambda!466461 lambda!466460))))

(assert (=> b!7572567 true))

(assert (=> b!7572567 true))

(declare-fun b!7572559 () Bool)

(declare-fun e!4508005 () Bool)

(assert (=> b!7572559 (= e!4508005 (= s!13436 (Cons!72784 (c!1397046 r!22341) Nil!72784)))))

(declare-fun b!7572560 () Bool)

(declare-fun e!4508003 () Bool)

(declare-fun e!4508004 () Bool)

(assert (=> b!7572560 (= e!4508003 e!4508004)))

(declare-fun c!1397087 () Bool)

(assert (=> b!7572560 (= c!1397087 ((_ is Star!20025) r!22341))))

(declare-fun b!7572561 () Bool)

(declare-fun e!4508002 () Bool)

(declare-fun call!694219 () Bool)

(assert (=> b!7572561 (= e!4508002 call!694219)))

(declare-fun b!7572562 () Bool)

(declare-fun c!1397088 () Bool)

(assert (=> b!7572562 (= c!1397088 ((_ is ElementMatch!20025) r!22341))))

(declare-fun e!4508007 () Bool)

(assert (=> b!7572562 (= e!4508007 e!4508005)))

(declare-fun b!7572563 () Bool)

(declare-fun e!4508006 () Bool)

(assert (=> b!7572563 (= e!4508006 (matchRSpec!4344 (regTwo!40563 r!22341) s!13436))))

(declare-fun e!4508001 () Bool)

(declare-fun call!694220 () Bool)

(assert (=> b!7572564 (= e!4508001 call!694220)))

(declare-fun b!7572565 () Bool)

(declare-fun res!3033456 () Bool)

(assert (=> b!7572565 (=> res!3033456 e!4508001)))

(assert (=> b!7572565 (= res!3033456 call!694219)))

(assert (=> b!7572565 (= e!4508004 e!4508001)))

(declare-fun d!2317616 () Bool)

(declare-fun c!1397085 () Bool)

(assert (=> d!2317616 (= c!1397085 ((_ is EmptyExpr!20025) r!22341))))

(assert (=> d!2317616 (= (matchRSpec!4344 r!22341 s!13436) e!4508002)))

(declare-fun b!7572566 () Bool)

(declare-fun c!1397086 () Bool)

(assert (=> b!7572566 (= c!1397086 ((_ is Union!20025) r!22341))))

(assert (=> b!7572566 (= e!4508005 e!4508003)))

(declare-fun bm!694214 () Bool)

(declare-fun Exists!4278 (Int) Bool)

(assert (=> bm!694214 (= call!694220 (Exists!4278 (ite c!1397087 lambda!466460 lambda!466461)))))

(assert (=> b!7572567 (= e!4508004 call!694220)))

(declare-fun bm!694215 () Bool)

(assert (=> bm!694215 (= call!694219 (isEmpty!41443 s!13436))))

(declare-fun b!7572568 () Bool)

(assert (=> b!7572568 (= e!4508003 e!4508006)))

(declare-fun res!3033454 () Bool)

(assert (=> b!7572568 (= res!3033454 (matchRSpec!4344 (regOne!40563 r!22341) s!13436))))

(assert (=> b!7572568 (=> res!3033454 e!4508006)))

(declare-fun b!7572569 () Bool)

(assert (=> b!7572569 (= e!4508002 e!4508007)))

(declare-fun res!3033455 () Bool)

(assert (=> b!7572569 (= res!3033455 (not ((_ is EmptyLang!20025) r!22341)))))

(assert (=> b!7572569 (=> (not res!3033455) (not e!4508007))))

(assert (= (and d!2317616 c!1397085) b!7572561))

(assert (= (and d!2317616 (not c!1397085)) b!7572569))

(assert (= (and b!7572569 res!3033455) b!7572562))

(assert (= (and b!7572562 c!1397088) b!7572559))

(assert (= (and b!7572562 (not c!1397088)) b!7572566))

(assert (= (and b!7572566 c!1397086) b!7572568))

(assert (= (and b!7572566 (not c!1397086)) b!7572560))

(assert (= (and b!7572568 (not res!3033454)) b!7572563))

(assert (= (and b!7572560 c!1397087) b!7572565))

(assert (= (and b!7572560 (not c!1397087)) b!7572567))

(assert (= (and b!7572565 (not res!3033456)) b!7572564))

(assert (= (or b!7572564 b!7572567) bm!694214))

(assert (= (or b!7572561 b!7572565) bm!694215))

(declare-fun m!8132540 () Bool)

(assert (=> b!7572563 m!8132540))

(declare-fun m!8132542 () Bool)

(assert (=> bm!694214 m!8132542))

(assert (=> bm!694215 m!8132508))

(declare-fun m!8132544 () Bool)

(assert (=> b!7572568 m!8132544))

(assert (=> b!7572394 d!2317616))

(declare-fun d!2317622 () Bool)

(assert (=> d!2317622 (= (matchR!9621 r!22341 s!13436) (matchRSpec!4344 r!22341 s!13436))))

(declare-fun lt!2651530 () Unit!167006)

(declare-fun choose!58544 (Regex!20025 List!72908) Unit!167006)

(assert (=> d!2317622 (= lt!2651530 (choose!58544 r!22341 s!13436))))

(assert (=> d!2317622 (validRegex!10453 r!22341)))

(assert (=> d!2317622 (= (mainMatchTheorem!4338 r!22341 s!13436) lt!2651530)))

(declare-fun bs!1940621 () Bool)

(assert (= bs!1940621 d!2317622))

(assert (=> bs!1940621 m!8132500))

(assert (=> bs!1940621 m!8132502))

(declare-fun m!8132550 () Bool)

(assert (=> bs!1940621 m!8132550))

(assert (=> bs!1940621 m!8132488))

(assert (=> b!7572394 d!2317622))

(declare-fun d!2317628 () Bool)

(assert (=> d!2317628 (= (isEmpty!41443 s!13436) ((_ is Nil!72784) s!13436))))

(assert (=> b!7572387 d!2317628))

(declare-fun d!2317630 () Bool)

(declare-fun lostCauseFct!479 (Regex!20025) Bool)

(assert (=> d!2317630 (= (lostCause!1801 r!22341) (lostCauseFct!479 r!22341))))

(declare-fun bs!1940623 () Bool)

(assert (= bs!1940623 d!2317630))

(declare-fun m!8132562 () Bool)

(assert (=> bs!1940623 m!8132562))

(assert (=> b!7572395 d!2317630))

(declare-fun bm!694233 () Bool)

(declare-fun call!694239 () Bool)

(declare-fun c!1397106 () Bool)

(assert (=> bm!694233 (= call!694239 (validRegex!10453 (ite c!1397106 (regOne!40563 r!22341) (regTwo!40562 r!22341))))))

(declare-fun b!7572647 () Bool)

(declare-fun e!4508057 () Bool)

(assert (=> b!7572647 (= e!4508057 call!694239)))

(declare-fun b!7572648 () Bool)

(declare-fun e!4508059 () Bool)

(declare-fun e!4508060 () Bool)

(assert (=> b!7572648 (= e!4508059 e!4508060)))

(assert (=> b!7572648 (= c!1397106 ((_ is Union!20025) r!22341))))

(declare-fun b!7572649 () Bool)

(declare-fun res!3033500 () Bool)

(declare-fun e!4508062 () Bool)

(assert (=> b!7572649 (=> (not res!3033500) (not e!4508062))))

(assert (=> b!7572649 (= res!3033500 call!694239)))

(assert (=> b!7572649 (= e!4508060 e!4508062)))

(declare-fun b!7572650 () Bool)

(declare-fun e!4508061 () Bool)

(assert (=> b!7572650 (= e!4508059 e!4508061)))

(declare-fun res!3033499 () Bool)

(assert (=> b!7572650 (= res!3033499 (not (nullable!8741 (reg!20354 r!22341))))))

(assert (=> b!7572650 (=> (not res!3033499) (not e!4508061))))

(declare-fun b!7572651 () Bool)

(declare-fun res!3033498 () Bool)

(declare-fun e!4508063 () Bool)

(assert (=> b!7572651 (=> res!3033498 e!4508063)))

(assert (=> b!7572651 (= res!3033498 (not ((_ is Concat!28870) r!22341)))))

(assert (=> b!7572651 (= e!4508060 e!4508063)))

(declare-fun b!7572652 () Bool)

(declare-fun e!4508058 () Bool)

(assert (=> b!7572652 (= e!4508058 e!4508059)))

(declare-fun c!1397105 () Bool)

(assert (=> b!7572652 (= c!1397105 ((_ is Star!20025) r!22341))))

(declare-fun b!7572653 () Bool)

(declare-fun call!694238 () Bool)

(assert (=> b!7572653 (= e!4508061 call!694238)))

(declare-fun b!7572654 () Bool)

(assert (=> b!7572654 (= e!4508063 e!4508057)))

(declare-fun res!3033502 () Bool)

(assert (=> b!7572654 (=> (not res!3033502) (not e!4508057))))

(declare-fun call!694240 () Bool)

(assert (=> b!7572654 (= res!3033502 call!694240)))

(declare-fun d!2317636 () Bool)

(declare-fun res!3033501 () Bool)

(assert (=> d!2317636 (=> res!3033501 e!4508058)))

(assert (=> d!2317636 (= res!3033501 ((_ is ElementMatch!20025) r!22341))))

(assert (=> d!2317636 (= (validRegex!10453 r!22341) e!4508058)))

(declare-fun bm!694234 () Bool)

(assert (=> bm!694234 (= call!694240 call!694238)))

(declare-fun bm!694235 () Bool)

(assert (=> bm!694235 (= call!694238 (validRegex!10453 (ite c!1397105 (reg!20354 r!22341) (ite c!1397106 (regTwo!40563 r!22341) (regOne!40562 r!22341)))))))

(declare-fun b!7572655 () Bool)

(assert (=> b!7572655 (= e!4508062 call!694240)))

(assert (= (and d!2317636 (not res!3033501)) b!7572652))

(assert (= (and b!7572652 c!1397105) b!7572650))

(assert (= (and b!7572652 (not c!1397105)) b!7572648))

(assert (= (and b!7572650 res!3033499) b!7572653))

(assert (= (and b!7572648 c!1397106) b!7572649))

(assert (= (and b!7572648 (not c!1397106)) b!7572651))

(assert (= (and b!7572649 res!3033500) b!7572655))

(assert (= (and b!7572651 (not res!3033498)) b!7572654))

(assert (= (and b!7572654 res!3033502) b!7572647))

(assert (= (or b!7572655 b!7572654) bm!694234))

(assert (= (or b!7572649 b!7572647) bm!694233))

(assert (= (or b!7572653 bm!694234) bm!694235))

(declare-fun m!8132574 () Bool)

(assert (=> bm!694233 m!8132574))

(declare-fun m!8132578 () Bool)

(assert (=> b!7572650 m!8132578))

(declare-fun m!8132580 () Bool)

(assert (=> bm!694235 m!8132580))

(assert (=> start!731232 d!2317636))

(declare-fun d!2317642 () Bool)

(assert (=> d!2317642 (not (matchR!9621 (regOne!40563 r!22341) s!13436))))

(declare-fun lt!2651535 () Unit!167006)

(declare-fun choose!58545 (Regex!20025 List!72908) Unit!167006)

(assert (=> d!2317642 (= lt!2651535 (choose!58545 (regOne!40563 r!22341) s!13436))))

(assert (=> d!2317642 (validRegex!10453 (regOne!40563 r!22341))))

(assert (=> d!2317642 (= (lemmaLostCauseCannotMatch!63 (regOne!40563 r!22341) s!13436) lt!2651535)))

(declare-fun bs!1940625 () Bool)

(assert (= bs!1940625 d!2317642))

(assert (=> bs!1940625 m!8132498))

(declare-fun m!8132590 () Bool)

(assert (=> bs!1940625 m!8132590))

(assert (=> bs!1940625 m!8132496))

(assert (=> b!7572390 d!2317642))

(declare-fun b!7572669 () Bool)

(declare-fun e!4508077 () Bool)

(assert (=> b!7572669 (= e!4508077 (matchR!9621 (derivativeStep!5772 (regTwo!40563 r!22341) (head!15572 s!13436)) (tail!15112 s!13436)))))

(declare-fun d!2317648 () Bool)

(declare-fun e!4508074 () Bool)

(assert (=> d!2317648 e!4508074))

(declare-fun c!1397110 () Bool)

(assert (=> d!2317648 (= c!1397110 ((_ is EmptyExpr!20025) (regTwo!40563 r!22341)))))

(declare-fun lt!2651536 () Bool)

(assert (=> d!2317648 (= lt!2651536 e!4508077)))

(declare-fun c!1397111 () Bool)

(assert (=> d!2317648 (= c!1397111 (isEmpty!41443 s!13436))))

(assert (=> d!2317648 (validRegex!10453 (regTwo!40563 r!22341))))

(assert (=> d!2317648 (= (matchR!9621 (regTwo!40563 r!22341) s!13436) lt!2651536)))

(declare-fun b!7572670 () Bool)

(assert (=> b!7572670 (= e!4508077 (nullable!8741 (regTwo!40563 r!22341)))))

(declare-fun b!7572671 () Bool)

(declare-fun res!3033511 () Bool)

(declare-fun e!4508079 () Bool)

(assert (=> b!7572671 (=> res!3033511 e!4508079)))

(declare-fun e!4508073 () Bool)

(assert (=> b!7572671 (= res!3033511 e!4508073)))

(declare-fun res!3033513 () Bool)

(assert (=> b!7572671 (=> (not res!3033513) (not e!4508073))))

(assert (=> b!7572671 (= res!3033513 lt!2651536)))

(declare-fun b!7572672 () Bool)

(declare-fun res!3033508 () Bool)

(assert (=> b!7572672 (=> res!3033508 e!4508079)))

(assert (=> b!7572672 (= res!3033508 (not ((_ is ElementMatch!20025) (regTwo!40563 r!22341))))))

(declare-fun e!4508075 () Bool)

(assert (=> b!7572672 (= e!4508075 e!4508079)))

(declare-fun b!7572673 () Bool)

(declare-fun res!3033514 () Bool)

(assert (=> b!7572673 (=> (not res!3033514) (not e!4508073))))

(assert (=> b!7572673 (= res!3033514 (isEmpty!41443 (tail!15112 s!13436)))))

(declare-fun b!7572674 () Bool)

(declare-fun e!4508076 () Bool)

(assert (=> b!7572674 (= e!4508076 (not (= (head!15572 s!13436) (c!1397046 (regTwo!40563 r!22341)))))))

(declare-fun b!7572675 () Bool)

(assert (=> b!7572675 (= e!4508073 (= (head!15572 s!13436) (c!1397046 (regTwo!40563 r!22341))))))

(declare-fun b!7572676 () Bool)

(assert (=> b!7572676 (= e!4508075 (not lt!2651536))))

(declare-fun b!7572677 () Bool)

(declare-fun res!3033510 () Bool)

(assert (=> b!7572677 (=> res!3033510 e!4508076)))

(assert (=> b!7572677 (= res!3033510 (not (isEmpty!41443 (tail!15112 s!13436))))))

(declare-fun b!7572678 () Bool)

(assert (=> b!7572678 (= e!4508074 e!4508075)))

(declare-fun c!1397109 () Bool)

(assert (=> b!7572678 (= c!1397109 ((_ is EmptyLang!20025) (regTwo!40563 r!22341)))))

(declare-fun b!7572679 () Bool)

(declare-fun call!694244 () Bool)

(assert (=> b!7572679 (= e!4508074 (= lt!2651536 call!694244))))

(declare-fun b!7572680 () Bool)

(declare-fun e!4508078 () Bool)

(assert (=> b!7572680 (= e!4508078 e!4508076)))

(declare-fun res!3033512 () Bool)

(assert (=> b!7572680 (=> res!3033512 e!4508076)))

(assert (=> b!7572680 (= res!3033512 call!694244)))

(declare-fun bm!694239 () Bool)

(assert (=> bm!694239 (= call!694244 (isEmpty!41443 s!13436))))

(declare-fun b!7572681 () Bool)

(declare-fun res!3033509 () Bool)

(assert (=> b!7572681 (=> (not res!3033509) (not e!4508073))))

(assert (=> b!7572681 (= res!3033509 (not call!694244))))

(declare-fun b!7572682 () Bool)

(assert (=> b!7572682 (= e!4508079 e!4508078)))

(declare-fun res!3033515 () Bool)

(assert (=> b!7572682 (=> (not res!3033515) (not e!4508078))))

(assert (=> b!7572682 (= res!3033515 (not lt!2651536))))

(assert (= (and d!2317648 c!1397111) b!7572670))

(assert (= (and d!2317648 (not c!1397111)) b!7572669))

(assert (= (and d!2317648 c!1397110) b!7572679))

(assert (= (and d!2317648 (not c!1397110)) b!7572678))

(assert (= (and b!7572678 c!1397109) b!7572676))

(assert (= (and b!7572678 (not c!1397109)) b!7572672))

(assert (= (and b!7572672 (not res!3033508)) b!7572671))

(assert (= (and b!7572671 res!3033513) b!7572681))

(assert (= (and b!7572681 res!3033509) b!7572673))

(assert (= (and b!7572673 res!3033514) b!7572675))

(assert (= (and b!7572671 (not res!3033511)) b!7572682))

(assert (= (and b!7572682 res!3033515) b!7572680))

(assert (= (and b!7572680 (not res!3033512)) b!7572677))

(assert (= (and b!7572677 (not res!3033510)) b!7572674))

(assert (= (or b!7572679 b!7572680 b!7572681) bm!694239))

(declare-fun m!8132592 () Bool)

(assert (=> b!7572670 m!8132592))

(assert (=> d!2317648 m!8132508))

(declare-fun m!8132594 () Bool)

(assert (=> d!2317648 m!8132594))

(assert (=> b!7572675 m!8132512))

(assert (=> b!7572677 m!8132514))

(assert (=> b!7572677 m!8132514))

(assert (=> b!7572677 m!8132516))

(assert (=> bm!694239 m!8132508))

(assert (=> b!7572674 m!8132512))

(assert (=> b!7572673 m!8132514))

(assert (=> b!7572673 m!8132514))

(assert (=> b!7572673 m!8132516))

(assert (=> b!7572669 m!8132512))

(assert (=> b!7572669 m!8132512))

(declare-fun m!8132596 () Bool)

(assert (=> b!7572669 m!8132596))

(assert (=> b!7572669 m!8132514))

(assert (=> b!7572669 m!8132596))

(assert (=> b!7572669 m!8132514))

(declare-fun m!8132598 () Bool)

(assert (=> b!7572669 m!8132598))

(assert (=> b!7572390 d!2317648))

(declare-fun d!2317650 () Bool)

(assert (=> d!2317650 (not (matchR!9621 (regTwo!40563 r!22341) s!13436))))

(declare-fun lt!2651537 () Unit!167006)

(assert (=> d!2317650 (= lt!2651537 (choose!58545 (regTwo!40563 r!22341) s!13436))))

(assert (=> d!2317650 (validRegex!10453 (regTwo!40563 r!22341))))

(assert (=> d!2317650 (= (lemmaLostCauseCannotMatch!63 (regTwo!40563 r!22341) s!13436) lt!2651537)))

(declare-fun bs!1940626 () Bool)

(assert (= bs!1940626 d!2317650))

(assert (=> bs!1940626 m!8132490))

(declare-fun m!8132600 () Bool)

(assert (=> bs!1940626 m!8132600))

(assert (=> bs!1940626 m!8132594))

(assert (=> b!7572390 d!2317650))

(declare-fun bm!694240 () Bool)

(declare-fun call!694246 () Bool)

(declare-fun c!1397113 () Bool)

(assert (=> bm!694240 (= call!694246 (validRegex!10453 (ite c!1397113 (regOne!40563 (regOne!40563 r!22341)) (regTwo!40562 (regOne!40563 r!22341)))))))

(declare-fun b!7572706 () Bool)

(declare-fun e!4508085 () Bool)

(assert (=> b!7572706 (= e!4508085 call!694246)))

(declare-fun b!7572707 () Bool)

(declare-fun e!4508087 () Bool)

(declare-fun e!4508088 () Bool)

(assert (=> b!7572707 (= e!4508087 e!4508088)))

(assert (=> b!7572707 (= c!1397113 ((_ is Union!20025) (regOne!40563 r!22341)))))

(declare-fun b!7572708 () Bool)

(declare-fun res!3033518 () Bool)

(declare-fun e!4508091 () Bool)

(assert (=> b!7572708 (=> (not res!3033518) (not e!4508091))))

(assert (=> b!7572708 (= res!3033518 call!694246)))

(assert (=> b!7572708 (= e!4508088 e!4508091)))

(declare-fun b!7572709 () Bool)

(declare-fun e!4508090 () Bool)

(assert (=> b!7572709 (= e!4508087 e!4508090)))

(declare-fun res!3033517 () Bool)

(assert (=> b!7572709 (= res!3033517 (not (nullable!8741 (reg!20354 (regOne!40563 r!22341)))))))

(assert (=> b!7572709 (=> (not res!3033517) (not e!4508090))))

(declare-fun b!7572710 () Bool)

(declare-fun res!3033516 () Bool)

(declare-fun e!4508092 () Bool)

(assert (=> b!7572710 (=> res!3033516 e!4508092)))

(assert (=> b!7572710 (= res!3033516 (not ((_ is Concat!28870) (regOne!40563 r!22341))))))

(assert (=> b!7572710 (= e!4508088 e!4508092)))

(declare-fun b!7572711 () Bool)

(declare-fun e!4508086 () Bool)

(assert (=> b!7572711 (= e!4508086 e!4508087)))

(declare-fun c!1397112 () Bool)

(assert (=> b!7572711 (= c!1397112 ((_ is Star!20025) (regOne!40563 r!22341)))))

(declare-fun b!7572712 () Bool)

(declare-fun call!694245 () Bool)

(assert (=> b!7572712 (= e!4508090 call!694245)))

(declare-fun b!7572713 () Bool)

(assert (=> b!7572713 (= e!4508092 e!4508085)))

(declare-fun res!3033520 () Bool)

(assert (=> b!7572713 (=> (not res!3033520) (not e!4508085))))

(declare-fun call!694247 () Bool)

(assert (=> b!7572713 (= res!3033520 call!694247)))

(declare-fun d!2317652 () Bool)

(declare-fun res!3033519 () Bool)

(assert (=> d!2317652 (=> res!3033519 e!4508086)))

(assert (=> d!2317652 (= res!3033519 ((_ is ElementMatch!20025) (regOne!40563 r!22341)))))

(assert (=> d!2317652 (= (validRegex!10453 (regOne!40563 r!22341)) e!4508086)))

(declare-fun bm!694241 () Bool)

(assert (=> bm!694241 (= call!694247 call!694245)))

(declare-fun bm!694242 () Bool)

(assert (=> bm!694242 (= call!694245 (validRegex!10453 (ite c!1397112 (reg!20354 (regOne!40563 r!22341)) (ite c!1397113 (regTwo!40563 (regOne!40563 r!22341)) (regOne!40562 (regOne!40563 r!22341))))))))

(declare-fun b!7572714 () Bool)

(assert (=> b!7572714 (= e!4508091 call!694247)))

(assert (= (and d!2317652 (not res!3033519)) b!7572711))

(assert (= (and b!7572711 c!1397112) b!7572709))

(assert (= (and b!7572711 (not c!1397112)) b!7572707))

(assert (= (and b!7572709 res!3033517) b!7572712))

(assert (= (and b!7572707 c!1397113) b!7572708))

(assert (= (and b!7572707 (not c!1397113)) b!7572710))

(assert (= (and b!7572708 res!3033518) b!7572714))

(assert (= (and b!7572710 (not res!3033516)) b!7572713))

(assert (= (and b!7572713 res!3033520) b!7572706))

(assert (= (or b!7572714 b!7572713) bm!694241))

(assert (= (or b!7572708 b!7572706) bm!694240))

(assert (= (or b!7572712 bm!694241) bm!694242))

(declare-fun m!8132602 () Bool)

(assert (=> bm!694240 m!8132602))

(declare-fun m!8132604 () Bool)

(assert (=> b!7572709 m!8132604))

(declare-fun m!8132606 () Bool)

(assert (=> bm!694242 m!8132606))

(assert (=> b!7572390 d!2317652))

(declare-fun b!7572723 () Bool)

(declare-fun e!4508099 () Bool)

(assert (=> b!7572723 (= e!4508099 (matchR!9621 (derivativeStep!5772 (regOne!40563 r!22341) (head!15572 s!13436)) (tail!15112 s!13436)))))

(declare-fun d!2317654 () Bool)

(declare-fun e!4508096 () Bool)

(assert (=> d!2317654 e!4508096))

(declare-fun c!1397115 () Bool)

(assert (=> d!2317654 (= c!1397115 ((_ is EmptyExpr!20025) (regOne!40563 r!22341)))))

(declare-fun lt!2651538 () Bool)

(assert (=> d!2317654 (= lt!2651538 e!4508099)))

(declare-fun c!1397116 () Bool)

(assert (=> d!2317654 (= c!1397116 (isEmpty!41443 s!13436))))

(assert (=> d!2317654 (validRegex!10453 (regOne!40563 r!22341))))

(assert (=> d!2317654 (= (matchR!9621 (regOne!40563 r!22341) s!13436) lt!2651538)))

(declare-fun b!7572724 () Bool)

(assert (=> b!7572724 (= e!4508099 (nullable!8741 (regOne!40563 r!22341)))))

(declare-fun b!7572725 () Bool)

(declare-fun res!3033524 () Bool)

(declare-fun e!4508101 () Bool)

(assert (=> b!7572725 (=> res!3033524 e!4508101)))

(declare-fun e!4508095 () Bool)

(assert (=> b!7572725 (= res!3033524 e!4508095)))

(declare-fun res!3033526 () Bool)

(assert (=> b!7572725 (=> (not res!3033526) (not e!4508095))))

(assert (=> b!7572725 (= res!3033526 lt!2651538)))

(declare-fun b!7572726 () Bool)

(declare-fun res!3033521 () Bool)

(assert (=> b!7572726 (=> res!3033521 e!4508101)))

(assert (=> b!7572726 (= res!3033521 (not ((_ is ElementMatch!20025) (regOne!40563 r!22341))))))

(declare-fun e!4508097 () Bool)

(assert (=> b!7572726 (= e!4508097 e!4508101)))

(declare-fun b!7572727 () Bool)

(declare-fun res!3033527 () Bool)

(assert (=> b!7572727 (=> (not res!3033527) (not e!4508095))))

(assert (=> b!7572727 (= res!3033527 (isEmpty!41443 (tail!15112 s!13436)))))

(declare-fun b!7572728 () Bool)

(declare-fun e!4508098 () Bool)

(assert (=> b!7572728 (= e!4508098 (not (= (head!15572 s!13436) (c!1397046 (regOne!40563 r!22341)))))))

(declare-fun b!7572729 () Bool)

(assert (=> b!7572729 (= e!4508095 (= (head!15572 s!13436) (c!1397046 (regOne!40563 r!22341))))))

(declare-fun b!7572730 () Bool)

(assert (=> b!7572730 (= e!4508097 (not lt!2651538))))

(declare-fun b!7572731 () Bool)

(declare-fun res!3033523 () Bool)

(assert (=> b!7572731 (=> res!3033523 e!4508098)))

(assert (=> b!7572731 (= res!3033523 (not (isEmpty!41443 (tail!15112 s!13436))))))

(declare-fun b!7572732 () Bool)

(assert (=> b!7572732 (= e!4508096 e!4508097)))

(declare-fun c!1397114 () Bool)

(assert (=> b!7572732 (= c!1397114 ((_ is EmptyLang!20025) (regOne!40563 r!22341)))))

(declare-fun b!7572733 () Bool)

(declare-fun call!694248 () Bool)

(assert (=> b!7572733 (= e!4508096 (= lt!2651538 call!694248))))

(declare-fun b!7572734 () Bool)

(declare-fun e!4508100 () Bool)

(assert (=> b!7572734 (= e!4508100 e!4508098)))

(declare-fun res!3033525 () Bool)

(assert (=> b!7572734 (=> res!3033525 e!4508098)))

(assert (=> b!7572734 (= res!3033525 call!694248)))

(declare-fun bm!694243 () Bool)

(assert (=> bm!694243 (= call!694248 (isEmpty!41443 s!13436))))

(declare-fun b!7572735 () Bool)

(declare-fun res!3033522 () Bool)

(assert (=> b!7572735 (=> (not res!3033522) (not e!4508095))))

(assert (=> b!7572735 (= res!3033522 (not call!694248))))

(declare-fun b!7572736 () Bool)

(assert (=> b!7572736 (= e!4508101 e!4508100)))

(declare-fun res!3033528 () Bool)

(assert (=> b!7572736 (=> (not res!3033528) (not e!4508100))))

(assert (=> b!7572736 (= res!3033528 (not lt!2651538))))

(assert (= (and d!2317654 c!1397116) b!7572724))

(assert (= (and d!2317654 (not c!1397116)) b!7572723))

(assert (= (and d!2317654 c!1397115) b!7572733))

(assert (= (and d!2317654 (not c!1397115)) b!7572732))

(assert (= (and b!7572732 c!1397114) b!7572730))

(assert (= (and b!7572732 (not c!1397114)) b!7572726))

(assert (= (and b!7572726 (not res!3033521)) b!7572725))

(assert (= (and b!7572725 res!3033526) b!7572735))

(assert (= (and b!7572735 res!3033522) b!7572727))

(assert (= (and b!7572727 res!3033527) b!7572729))

(assert (= (and b!7572725 (not res!3033524)) b!7572736))

(assert (= (and b!7572736 res!3033528) b!7572734))

(assert (= (and b!7572734 (not res!3033525)) b!7572731))

(assert (= (and b!7572731 (not res!3033523)) b!7572728))

(assert (= (or b!7572733 b!7572734 b!7572735) bm!694243))

(declare-fun m!8132608 () Bool)

(assert (=> b!7572724 m!8132608))

(assert (=> d!2317654 m!8132508))

(assert (=> d!2317654 m!8132496))

(assert (=> b!7572729 m!8132512))

(assert (=> b!7572731 m!8132514))

(assert (=> b!7572731 m!8132514))

(assert (=> b!7572731 m!8132516))

(assert (=> bm!694243 m!8132508))

(assert (=> b!7572728 m!8132512))

(assert (=> b!7572727 m!8132514))

(assert (=> b!7572727 m!8132514))

(assert (=> b!7572727 m!8132516))

(assert (=> b!7572723 m!8132512))

(assert (=> b!7572723 m!8132512))

(declare-fun m!8132610 () Bool)

(assert (=> b!7572723 m!8132610))

(assert (=> b!7572723 m!8132514))

(assert (=> b!7572723 m!8132610))

(assert (=> b!7572723 m!8132514))

(declare-fun m!8132612 () Bool)

(assert (=> b!7572723 m!8132612))

(assert (=> b!7572390 d!2317654))

(declare-fun b!7572749 () Bool)

(declare-fun e!4508104 () Bool)

(declare-fun tp!2206617 () Bool)

(assert (=> b!7572749 (= e!4508104 tp!2206617)))

(declare-fun b!7572748 () Bool)

(declare-fun tp!2206616 () Bool)

(declare-fun tp!2206614 () Bool)

(assert (=> b!7572748 (= e!4508104 (and tp!2206616 tp!2206614))))

(assert (=> b!7572393 (= tp!2206560 e!4508104)))

(declare-fun b!7572747 () Bool)

(assert (=> b!7572747 (= e!4508104 tp_is_empty!50405)))

(declare-fun b!7572750 () Bool)

(declare-fun tp!2206618 () Bool)

(declare-fun tp!2206615 () Bool)

(assert (=> b!7572750 (= e!4508104 (and tp!2206618 tp!2206615))))

(assert (= (and b!7572393 ((_ is ElementMatch!20025) (regOne!40563 r!22341))) b!7572747))

(assert (= (and b!7572393 ((_ is Concat!28870) (regOne!40563 r!22341))) b!7572748))

(assert (= (and b!7572393 ((_ is Star!20025) (regOne!40563 r!22341))) b!7572749))

(assert (= (and b!7572393 ((_ is Union!20025) (regOne!40563 r!22341))) b!7572750))

(declare-fun b!7572753 () Bool)

(declare-fun e!4508105 () Bool)

(declare-fun tp!2206622 () Bool)

(assert (=> b!7572753 (= e!4508105 tp!2206622)))

(declare-fun b!7572752 () Bool)

(declare-fun tp!2206621 () Bool)

(declare-fun tp!2206619 () Bool)

(assert (=> b!7572752 (= e!4508105 (and tp!2206621 tp!2206619))))

(assert (=> b!7572393 (= tp!2206561 e!4508105)))

(declare-fun b!7572751 () Bool)

(assert (=> b!7572751 (= e!4508105 tp_is_empty!50405)))

(declare-fun b!7572754 () Bool)

(declare-fun tp!2206623 () Bool)

(declare-fun tp!2206620 () Bool)

(assert (=> b!7572754 (= e!4508105 (and tp!2206623 tp!2206620))))

(assert (= (and b!7572393 ((_ is ElementMatch!20025) (regTwo!40563 r!22341))) b!7572751))

(assert (= (and b!7572393 ((_ is Concat!28870) (regTwo!40563 r!22341))) b!7572752))

(assert (= (and b!7572393 ((_ is Star!20025) (regTwo!40563 r!22341))) b!7572753))

(assert (= (and b!7572393 ((_ is Union!20025) (regTwo!40563 r!22341))) b!7572754))

(declare-fun b!7572757 () Bool)

(declare-fun e!4508106 () Bool)

(declare-fun tp!2206627 () Bool)

(assert (=> b!7572757 (= e!4508106 tp!2206627)))

(declare-fun b!7572756 () Bool)

(declare-fun tp!2206626 () Bool)

(declare-fun tp!2206624 () Bool)

(assert (=> b!7572756 (= e!4508106 (and tp!2206626 tp!2206624))))

(assert (=> b!7572388 (= tp!2206565 e!4508106)))

(declare-fun b!7572755 () Bool)

(assert (=> b!7572755 (= e!4508106 tp_is_empty!50405)))

(declare-fun b!7572758 () Bool)

(declare-fun tp!2206628 () Bool)

(declare-fun tp!2206625 () Bool)

(assert (=> b!7572758 (= e!4508106 (and tp!2206628 tp!2206625))))

(assert (= (and b!7572388 ((_ is ElementMatch!20025) (reg!20354 r!22341))) b!7572755))

(assert (= (and b!7572388 ((_ is Concat!28870) (reg!20354 r!22341))) b!7572756))

(assert (= (and b!7572388 ((_ is Star!20025) (reg!20354 r!22341))) b!7572757))

(assert (= (and b!7572388 ((_ is Union!20025) (reg!20354 r!22341))) b!7572758))

(declare-fun b!7572763 () Bool)

(declare-fun e!4508109 () Bool)

(declare-fun tp!2206631 () Bool)

(assert (=> b!7572763 (= e!4508109 (and tp_is_empty!50405 tp!2206631))))

(assert (=> b!7572392 (= tp!2206562 e!4508109)))

(assert (= (and b!7572392 ((_ is Cons!72784) (t!387643 s!13436))) b!7572763))

(declare-fun b!7572766 () Bool)

(declare-fun e!4508110 () Bool)

(declare-fun tp!2206635 () Bool)

(assert (=> b!7572766 (= e!4508110 tp!2206635)))

(declare-fun b!7572765 () Bool)

(declare-fun tp!2206634 () Bool)

(declare-fun tp!2206632 () Bool)

(assert (=> b!7572765 (= e!4508110 (and tp!2206634 tp!2206632))))

(assert (=> b!7572391 (= tp!2206563 e!4508110)))

(declare-fun b!7572764 () Bool)

(assert (=> b!7572764 (= e!4508110 tp_is_empty!50405)))

(declare-fun b!7572767 () Bool)

(declare-fun tp!2206636 () Bool)

(declare-fun tp!2206633 () Bool)

(assert (=> b!7572767 (= e!4508110 (and tp!2206636 tp!2206633))))

(assert (= (and b!7572391 ((_ is ElementMatch!20025) (regOne!40562 r!22341))) b!7572764))

(assert (= (and b!7572391 ((_ is Concat!28870) (regOne!40562 r!22341))) b!7572765))

(assert (= (and b!7572391 ((_ is Star!20025) (regOne!40562 r!22341))) b!7572766))

(assert (= (and b!7572391 ((_ is Union!20025) (regOne!40562 r!22341))) b!7572767))

(declare-fun b!7572770 () Bool)

(declare-fun e!4508111 () Bool)

(declare-fun tp!2206640 () Bool)

(assert (=> b!7572770 (= e!4508111 tp!2206640)))

(declare-fun b!7572769 () Bool)

(declare-fun tp!2206639 () Bool)

(declare-fun tp!2206637 () Bool)

(assert (=> b!7572769 (= e!4508111 (and tp!2206639 tp!2206637))))

(assert (=> b!7572391 (= tp!2206564 e!4508111)))

(declare-fun b!7572768 () Bool)

(assert (=> b!7572768 (= e!4508111 tp_is_empty!50405)))

(declare-fun b!7572771 () Bool)

(declare-fun tp!2206641 () Bool)

(declare-fun tp!2206638 () Bool)

(assert (=> b!7572771 (= e!4508111 (and tp!2206641 tp!2206638))))

(assert (= (and b!7572391 ((_ is ElementMatch!20025) (regTwo!40562 r!22341))) b!7572768))

(assert (= (and b!7572391 ((_ is Concat!28870) (regTwo!40562 r!22341))) b!7572769))

(assert (= (and b!7572391 ((_ is Star!20025) (regTwo!40562 r!22341))) b!7572770))

(assert (= (and b!7572391 ((_ is Union!20025) (regTwo!40562 r!22341))) b!7572771))

(check-sat (not b!7572675) (not d!2317630) (not b!7572456) (not b!7572769) (not bm!694215) tp_is_empty!50405 (not b!7572756) (not b!7572765) (not bm!694243) (not bm!694235) (not b!7572723) (not b!7572731) (not bm!694214) (not b!7572670) (not b!7572727) (not b!7572563) (not b!7572453) (not b!7572767) (not b!7572673) (not b!7572724) (not b!7572674) (not b!7572458) (not b!7572669) (not bm!694239) (not b!7572757) (not b!7572650) (not d!2317654) (not b!7572729) (not d!2317642) (not b!7572568) (not b!7572771) (not b!7572758) (not b!7572457) (not d!2317622) (not b!7572452) (not b!7572763) (not d!2317650) (not b!7572770) (not bm!694202) (not d!2317614) (not b!7572728) (not b!7572750) (not b!7572748) (not bm!694233) (not d!2317648) (not b!7572766) (not b!7572460) (not b!7572753) (not b!7572677) (not bm!694242) (not b!7572752) (not bm!694240) (not b!7572749) (not b!7572754) (not b!7572709))
(check-sat)
