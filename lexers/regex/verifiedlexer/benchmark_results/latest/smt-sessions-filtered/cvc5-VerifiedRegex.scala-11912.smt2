; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667700 () Bool)

(assert start!667700)

(declare-fun b!6958386 () Bool)

(declare-fun e!4183983 () Bool)

(declare-fun tp!1918267 () Bool)

(declare-fun tp!1918260 () Bool)

(assert (=> b!6958386 (= e!4183983 (and tp!1918267 tp!1918260))))

(declare-fun b!6958387 () Bool)

(declare-fun tp!1918262 () Bool)

(declare-fun tp!1918266 () Bool)

(assert (=> b!6958387 (= e!4183983 (and tp!1918262 tp!1918266))))

(declare-fun b!6958388 () Bool)

(declare-fun e!4183985 () Bool)

(declare-fun e!4183984 () Bool)

(assert (=> b!6958388 (= e!4183985 (not e!4183984))))

(declare-fun res!2839380 () Bool)

(assert (=> b!6958388 (=> res!2839380 e!4183984)))

(declare-datatypes ((C!34410 0))(
  ( (C!34411 (val!26907 Int)) )
))
(declare-datatypes ((Regex!17070 0))(
  ( (ElementMatch!17070 (c!1290302 C!34410)) (Concat!25915 (regOne!34652 Regex!17070) (regTwo!34652 Regex!17070)) (EmptyExpr!17070) (Star!17070 (reg!17399 Regex!17070)) (EmptyLang!17070) (Union!17070 (regOne!34653 Regex!17070) (regTwo!34653 Regex!17070)) )
))
(declare-fun r!13765 () Regex!17070)

(assert (=> b!6958388 (= res!2839380 (not (is-Union!17070 r!13765)))))

(declare-datatypes ((List!66825 0))(
  ( (Nil!66701) (Cons!66701 (h!73149 C!34410) (t!380568 List!66825)) )
))
(declare-fun s!9351 () List!66825)

(declare-fun matchR!9176 (Regex!17070 List!66825) Bool)

(declare-fun matchRSpec!4091 (Regex!17070 List!66825) Bool)

(assert (=> b!6958388 (= (matchR!9176 r!13765 s!9351) (matchRSpec!4091 r!13765 s!9351))))

(declare-datatypes ((Unit!160800 0))(
  ( (Unit!160801) )
))
(declare-fun lt!2478732 () Unit!160800)

(declare-fun mainMatchTheorem!4085 (Regex!17070 List!66825) Unit!160800)

(assert (=> b!6958388 (= lt!2478732 (mainMatchTheorem!4085 r!13765 s!9351))))

(declare-fun b!6958389 () Bool)

(declare-fun res!2839381 () Bool)

(assert (=> b!6958389 (=> (not res!2839381) (not e!4183985))))

(declare-datatypes ((List!66826 0))(
  ( (Nil!66702) (Cons!66702 (h!73150 Regex!17070) (t!380569 List!66826)) )
))
(declare-fun l!9142 () List!66826)

(declare-fun generalisedUnion!2545 (List!66826) Regex!17070)

(assert (=> b!6958389 (= res!2839381 (= r!13765 (generalisedUnion!2545 l!9142)))))

(declare-fun b!6958390 () Bool)

(declare-fun e!4183987 () Bool)

(declare-fun tp_is_empty!43365 () Bool)

(declare-fun tp!1918265 () Bool)

(assert (=> b!6958390 (= e!4183987 (and tp_is_empty!43365 tp!1918265))))

(declare-fun b!6958391 () Bool)

(declare-fun tp!1918261 () Bool)

(assert (=> b!6958391 (= e!4183983 tp!1918261)))

(declare-fun res!2839382 () Bool)

(assert (=> start!667700 (=> (not res!2839382) (not e!4183985))))

(declare-fun lambda!396997 () Int)

(declare-fun forall!15941 (List!66826 Int) Bool)

(assert (=> start!667700 (= res!2839382 (forall!15941 l!9142 lambda!396997))))

(assert (=> start!667700 e!4183985))

(declare-fun e!4183986 () Bool)

(assert (=> start!667700 e!4183986))

(assert (=> start!667700 e!4183983))

(assert (=> start!667700 e!4183987))

(declare-fun b!6958392 () Bool)

(declare-fun res!2839379 () Bool)

(assert (=> b!6958392 (=> res!2839379 e!4183984)))

(declare-fun isEmpty!38929 (List!66826) Bool)

(assert (=> b!6958392 (= res!2839379 (isEmpty!38929 l!9142))))

(declare-fun b!6958393 () Bool)

(declare-fun tp!1918264 () Bool)

(declare-fun tp!1918263 () Bool)

(assert (=> b!6958393 (= e!4183986 (and tp!1918264 tp!1918263))))

(declare-fun b!6958394 () Bool)

(assert (=> b!6958394 (= e!4183983 tp_is_empty!43365)))

(declare-fun b!6958395 () Bool)

(assert (=> b!6958395 (= e!4183984 (not (= l!9142 Nil!66702)))))

(assert (= (and start!667700 res!2839382) b!6958389))

(assert (= (and b!6958389 res!2839381) b!6958388))

(assert (= (and b!6958388 (not res!2839380)) b!6958392))

(assert (= (and b!6958392 (not res!2839379)) b!6958395))

(assert (= (and start!667700 (is-Cons!66702 l!9142)) b!6958393))

(assert (= (and start!667700 (is-ElementMatch!17070 r!13765)) b!6958394))

(assert (= (and start!667700 (is-Concat!25915 r!13765)) b!6958386))

(assert (= (and start!667700 (is-Star!17070 r!13765)) b!6958391))

(assert (= (and start!667700 (is-Union!17070 r!13765)) b!6958387))

(assert (= (and start!667700 (is-Cons!66701 s!9351)) b!6958390))

(declare-fun m!7655256 () Bool)

(assert (=> b!6958388 m!7655256))

(declare-fun m!7655258 () Bool)

(assert (=> b!6958388 m!7655258))

(declare-fun m!7655260 () Bool)

(assert (=> b!6958388 m!7655260))

(declare-fun m!7655262 () Bool)

(assert (=> b!6958389 m!7655262))

(declare-fun m!7655264 () Bool)

(assert (=> start!667700 m!7655264))

(declare-fun m!7655266 () Bool)

(assert (=> b!6958392 m!7655266))

(push 1)

(assert (not b!6958390))

(assert (not b!6958388))

(assert (not b!6958392))

(assert (not start!667700))

(assert (not b!6958386))

(assert tp_is_empty!43365)

(assert (not b!6958387))

(assert (not b!6958393))

(assert (not b!6958389))

(assert (not b!6958391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6958454 () Bool)

(declare-fun e!4184021 () Bool)

(declare-fun lt!2478738 () Bool)

(declare-fun call!631894 () Bool)

(assert (=> b!6958454 (= e!4184021 (= lt!2478738 call!631894))))

(declare-fun b!6958455 () Bool)

(declare-fun res!2839418 () Bool)

(declare-fun e!4184020 () Bool)

(assert (=> b!6958455 (=> res!2839418 e!4184020)))

(declare-fun isEmpty!38931 (List!66825) Bool)

(declare-fun tail!13010 (List!66825) List!66825)

(assert (=> b!6958455 (= res!2839418 (not (isEmpty!38931 (tail!13010 s!9351))))))

(declare-fun b!6958456 () Bool)

(declare-fun e!4184023 () Bool)

(assert (=> b!6958456 (= e!4184021 e!4184023)))

(declare-fun c!1290312 () Bool)

(assert (=> b!6958456 (= c!1290312 (is-EmptyLang!17070 r!13765))))

(declare-fun b!6958457 () Bool)

(declare-fun e!4184019 () Bool)

(assert (=> b!6958457 (= e!4184019 e!4184020)))

(declare-fun res!2839412 () Bool)

(assert (=> b!6958457 (=> res!2839412 e!4184020)))

(assert (=> b!6958457 (= res!2839412 call!631894)))

(declare-fun b!6958458 () Bool)

(declare-fun e!4184022 () Bool)

(assert (=> b!6958458 (= e!4184022 e!4184019)))

(declare-fun res!2839416 () Bool)

(assert (=> b!6958458 (=> (not res!2839416) (not e!4184019))))

(assert (=> b!6958458 (= res!2839416 (not lt!2478738))))

(declare-fun bm!631889 () Bool)

(assert (=> bm!631889 (= call!631894 (isEmpty!38931 s!9351))))

(declare-fun b!6958459 () Bool)

(declare-fun e!4184017 () Bool)

(declare-fun derivativeStep!5505 (Regex!17070 C!34410) Regex!17070)

(declare-fun head!13958 (List!66825) C!34410)

(assert (=> b!6958459 (= e!4184017 (matchR!9176 (derivativeStep!5505 r!13765 (head!13958 s!9351)) (tail!13010 s!9351)))))

(declare-fun d!2169807 () Bool)

(assert (=> d!2169807 e!4184021))

(declare-fun c!1290310 () Bool)

(assert (=> d!2169807 (= c!1290310 (is-EmptyExpr!17070 r!13765))))

(assert (=> d!2169807 (= lt!2478738 e!4184017)))

(declare-fun c!1290311 () Bool)

(assert (=> d!2169807 (= c!1290311 (isEmpty!38931 s!9351))))

(declare-fun validRegex!8772 (Regex!17070) Bool)

(assert (=> d!2169807 (validRegex!8772 r!13765)))

(assert (=> d!2169807 (= (matchR!9176 r!13765 s!9351) lt!2478738)))

(declare-fun b!6958460 () Bool)

(declare-fun res!2839414 () Bool)

(assert (=> b!6958460 (=> res!2839414 e!4184022)))

(declare-fun e!4184018 () Bool)

(assert (=> b!6958460 (= res!2839414 e!4184018)))

(declare-fun res!2839417 () Bool)

(assert (=> b!6958460 (=> (not res!2839417) (not e!4184018))))

(assert (=> b!6958460 (= res!2839417 lt!2478738)))

(declare-fun b!6958461 () Bool)

(declare-fun res!2839415 () Bool)

(assert (=> b!6958461 (=> (not res!2839415) (not e!4184018))))

(assert (=> b!6958461 (= res!2839415 (isEmpty!38931 (tail!13010 s!9351)))))

(declare-fun b!6958462 () Bool)

(assert (=> b!6958462 (= e!4184018 (= (head!13958 s!9351) (c!1290302 r!13765)))))

(declare-fun b!6958463 () Bool)

(declare-fun nullable!6879 (Regex!17070) Bool)

(assert (=> b!6958463 (= e!4184017 (nullable!6879 r!13765))))

(declare-fun b!6958464 () Bool)

(assert (=> b!6958464 (= e!4184020 (not (= (head!13958 s!9351) (c!1290302 r!13765))))))

(declare-fun b!6958465 () Bool)

(declare-fun res!2839411 () Bool)

(assert (=> b!6958465 (=> res!2839411 e!4184022)))

(assert (=> b!6958465 (= res!2839411 (not (is-ElementMatch!17070 r!13765)))))

(assert (=> b!6958465 (= e!4184023 e!4184022)))

(declare-fun b!6958466 () Bool)

(assert (=> b!6958466 (= e!4184023 (not lt!2478738))))

(declare-fun b!6958467 () Bool)

(declare-fun res!2839413 () Bool)

(assert (=> b!6958467 (=> (not res!2839413) (not e!4184018))))

(assert (=> b!6958467 (= res!2839413 (not call!631894))))

(assert (= (and d!2169807 c!1290311) b!6958463))

(assert (= (and d!2169807 (not c!1290311)) b!6958459))

(assert (= (and d!2169807 c!1290310) b!6958454))

(assert (= (and d!2169807 (not c!1290310)) b!6958456))

(assert (= (and b!6958456 c!1290312) b!6958466))

(assert (= (and b!6958456 (not c!1290312)) b!6958465))

(assert (= (and b!6958465 (not res!2839411)) b!6958460))

(assert (= (and b!6958460 res!2839417) b!6958467))

(assert (= (and b!6958467 res!2839413) b!6958461))

(assert (= (and b!6958461 res!2839415) b!6958462))

(assert (= (and b!6958460 (not res!2839414)) b!6958458))

(assert (= (and b!6958458 res!2839416) b!6958457))

(assert (= (and b!6958457 (not res!2839412)) b!6958455))

(assert (= (and b!6958455 (not res!2839418)) b!6958464))

(assert (= (or b!6958454 b!6958457 b!6958467) bm!631889))

(declare-fun m!7655280 () Bool)

(assert (=> b!6958459 m!7655280))

(assert (=> b!6958459 m!7655280))

(declare-fun m!7655282 () Bool)

(assert (=> b!6958459 m!7655282))

(declare-fun m!7655284 () Bool)

(assert (=> b!6958459 m!7655284))

(assert (=> b!6958459 m!7655282))

(assert (=> b!6958459 m!7655284))

(declare-fun m!7655286 () Bool)

(assert (=> b!6958459 m!7655286))

(declare-fun m!7655288 () Bool)

(assert (=> b!6958463 m!7655288))

(assert (=> b!6958455 m!7655284))

(assert (=> b!6958455 m!7655284))

(declare-fun m!7655290 () Bool)

(assert (=> b!6958455 m!7655290))

(declare-fun m!7655292 () Bool)

(assert (=> d!2169807 m!7655292))

(declare-fun m!7655294 () Bool)

(assert (=> d!2169807 m!7655294))

(assert (=> b!6958464 m!7655280))

(assert (=> bm!631889 m!7655292))

(assert (=> b!6958461 m!7655284))

(assert (=> b!6958461 m!7655284))

(assert (=> b!6958461 m!7655290))

(assert (=> b!6958462 m!7655280))

(assert (=> b!6958388 d!2169807))

(declare-fun b!6958536 () Bool)

(assert (=> b!6958536 true))

(assert (=> b!6958536 true))

(declare-fun bs!1858245 () Bool)

(declare-fun b!6958534 () Bool)

(assert (= bs!1858245 (and b!6958534 b!6958536)))

(declare-fun lambda!397009 () Int)

(declare-fun lambda!397008 () Int)

(assert (=> bs!1858245 (not (= lambda!397009 lambda!397008))))

(assert (=> b!6958534 true))

(assert (=> b!6958534 true))

(declare-fun b!6958530 () Bool)

(declare-fun e!4184061 () Bool)

(assert (=> b!6958530 (= e!4184061 (= s!9351 (Cons!66701 (c!1290302 r!13765) Nil!66701)))))

(declare-fun b!6958531 () Bool)

(declare-fun e!4184060 () Bool)

(declare-fun e!4184064 () Bool)

(assert (=> b!6958531 (= e!4184060 e!4184064)))

(declare-fun res!2839442 () Bool)

(assert (=> b!6958531 (= res!2839442 (not (is-EmptyLang!17070 r!13765)))))

(assert (=> b!6958531 (=> (not res!2839442) (not e!4184064))))

(declare-fun bm!631894 () Bool)

(declare-fun call!631899 () Bool)

(assert (=> bm!631894 (= call!631899 (isEmpty!38931 s!9351))))

(declare-fun b!6958532 () Bool)

(declare-fun c!1290336 () Bool)

(assert (=> b!6958532 (= c!1290336 (is-ElementMatch!17070 r!13765))))

(assert (=> b!6958532 (= e!4184064 e!4184061)))

(declare-fun b!6958533 () Bool)

(declare-fun e!4184066 () Bool)

(assert (=> b!6958533 (= e!4184066 (matchRSpec!4091 (regTwo!34653 r!13765) s!9351))))

(declare-fun e!4184063 () Bool)

(declare-fun call!631900 () Bool)

(assert (=> b!6958534 (= e!4184063 call!631900)))

(declare-fun d!2169811 () Bool)

(declare-fun c!1290334 () Bool)

(assert (=> d!2169811 (= c!1290334 (is-EmptyExpr!17070 r!13765))))

(assert (=> d!2169811 (= (matchRSpec!4091 r!13765 s!9351) e!4184060)))

(declare-fun b!6958535 () Bool)

(declare-fun e!4184062 () Bool)

(assert (=> b!6958535 (= e!4184062 e!4184066)))

(declare-fun res!2839441 () Bool)

(assert (=> b!6958535 (= res!2839441 (matchRSpec!4091 (regOne!34653 r!13765) s!9351))))

(assert (=> b!6958535 (=> res!2839441 e!4184066)))

(declare-fun e!4184065 () Bool)

(assert (=> b!6958536 (= e!4184065 call!631900)))

(declare-fun b!6958537 () Bool)

(declare-fun c!1290335 () Bool)

(assert (=> b!6958537 (= c!1290335 (is-Union!17070 r!13765))))

(assert (=> b!6958537 (= e!4184061 e!4184062)))

(declare-fun b!6958538 () Bool)

(assert (=> b!6958538 (= e!4184060 call!631899)))

(declare-fun b!6958539 () Bool)

(declare-fun res!2839443 () Bool)

(assert (=> b!6958539 (=> res!2839443 e!4184065)))

(assert (=> b!6958539 (= res!2839443 call!631899)))

(assert (=> b!6958539 (= e!4184063 e!4184065)))

(declare-fun c!1290333 () Bool)

(declare-fun bm!631895 () Bool)

(declare-fun Exists!4062 (Int) Bool)

(assert (=> bm!631895 (= call!631900 (Exists!4062 (ite c!1290333 lambda!397008 lambda!397009)))))

(declare-fun b!6958540 () Bool)

(assert (=> b!6958540 (= e!4184062 e!4184063)))

(assert (=> b!6958540 (= c!1290333 (is-Star!17070 r!13765))))

(assert (= (and d!2169811 c!1290334) b!6958538))

(assert (= (and d!2169811 (not c!1290334)) b!6958531))

(assert (= (and b!6958531 res!2839442) b!6958532))

(assert (= (and b!6958532 c!1290336) b!6958530))

(assert (= (and b!6958532 (not c!1290336)) b!6958537))

(assert (= (and b!6958537 c!1290335) b!6958535))

(assert (= (and b!6958537 (not c!1290335)) b!6958540))

(assert (= (and b!6958535 (not res!2839441)) b!6958533))

(assert (= (and b!6958540 c!1290333) b!6958539))

(assert (= (and b!6958540 (not c!1290333)) b!6958534))

(assert (= (and b!6958539 (not res!2839443)) b!6958536))

(assert (= (or b!6958536 b!6958534) bm!631895))

(assert (= (or b!6958538 b!6958539) bm!631894))

(assert (=> bm!631894 m!7655292))

(declare-fun m!7655314 () Bool)

(assert (=> b!6958533 m!7655314))

(declare-fun m!7655316 () Bool)

(assert (=> b!6958535 m!7655316))

(declare-fun m!7655318 () Bool)

(assert (=> bm!631895 m!7655318))

(assert (=> b!6958388 d!2169811))

(declare-fun d!2169815 () Bool)

(assert (=> d!2169815 (= (matchR!9176 r!13765 s!9351) (matchRSpec!4091 r!13765 s!9351))))

(declare-fun lt!2478744 () Unit!160800)

(declare-fun choose!51873 (Regex!17070 List!66825) Unit!160800)

(assert (=> d!2169815 (= lt!2478744 (choose!51873 r!13765 s!9351))))

(assert (=> d!2169815 (validRegex!8772 r!13765)))

(assert (=> d!2169815 (= (mainMatchTheorem!4085 r!13765 s!9351) lt!2478744)))

(declare-fun bs!1858246 () Bool)

(assert (= bs!1858246 d!2169815))

(assert (=> bs!1858246 m!7655256))

(assert (=> bs!1858246 m!7655258))

(declare-fun m!7655320 () Bool)

(assert (=> bs!1858246 m!7655320))

(assert (=> bs!1858246 m!7655294))

(assert (=> b!6958388 d!2169815))

(declare-fun bs!1858247 () Bool)

(declare-fun d!2169817 () Bool)

(assert (= bs!1858247 (and d!2169817 start!667700)))

(declare-fun lambda!397012 () Int)

(assert (=> bs!1858247 (= lambda!397012 lambda!396997)))

(declare-fun e!4184096 () Bool)

(assert (=> d!2169817 e!4184096))

(declare-fun res!2839464 () Bool)

(assert (=> d!2169817 (=> (not res!2839464) (not e!4184096))))

(declare-fun lt!2478749 () Regex!17070)

(assert (=> d!2169817 (= res!2839464 (validRegex!8772 lt!2478749))))

(declare-fun e!4184093 () Regex!17070)

(assert (=> d!2169817 (= lt!2478749 e!4184093)))

(declare-fun c!1290354 () Bool)

(declare-fun e!4184094 () Bool)

(assert (=> d!2169817 (= c!1290354 e!4184094)))

(declare-fun res!2839465 () Bool)

(assert (=> d!2169817 (=> (not res!2839465) (not e!4184094))))

(assert (=> d!2169817 (= res!2839465 (is-Cons!66702 l!9142))))

(assert (=> d!2169817 (forall!15941 l!9142 lambda!397012)))

(assert (=> d!2169817 (= (generalisedUnion!2545 l!9142) lt!2478749)))

(declare-fun b!6958593 () Bool)

(declare-fun e!4184097 () Bool)

(assert (=> b!6958593 (= e!4184096 e!4184097)))

(declare-fun c!1290353 () Bool)

(assert (=> b!6958593 (= c!1290353 (isEmpty!38929 l!9142))))

(declare-fun b!6958594 () Bool)

(declare-fun e!4184095 () Bool)

(assert (=> b!6958594 (= e!4184097 e!4184095)))

(declare-fun c!1290352 () Bool)

(declare-fun tail!13011 (List!66826) List!66826)

(assert (=> b!6958594 (= c!1290352 (isEmpty!38929 (tail!13011 l!9142)))))

(declare-fun b!6958595 () Bool)

(assert (=> b!6958595 (= e!4184094 (isEmpty!38929 (t!380569 l!9142)))))

(declare-fun b!6958596 () Bool)

(declare-fun e!4184098 () Regex!17070)

(assert (=> b!6958596 (= e!4184093 e!4184098)))

(declare-fun c!1290351 () Bool)

(assert (=> b!6958596 (= c!1290351 (is-Cons!66702 l!9142))))

(declare-fun b!6958597 () Bool)

(assert (=> b!6958597 (= e!4184093 (h!73150 l!9142))))

(declare-fun b!6958598 () Bool)

(declare-fun isEmptyLang!2032 (Regex!17070) Bool)

(assert (=> b!6958598 (= e!4184097 (isEmptyLang!2032 lt!2478749))))

(declare-fun b!6958599 () Bool)

(declare-fun head!13959 (List!66826) Regex!17070)

(assert (=> b!6958599 (= e!4184095 (= lt!2478749 (head!13959 l!9142)))))

(declare-fun b!6958600 () Bool)

(assert (=> b!6958600 (= e!4184098 EmptyLang!17070)))

(declare-fun b!6958601 () Bool)

(assert (=> b!6958601 (= e!4184098 (Union!17070 (h!73150 l!9142) (generalisedUnion!2545 (t!380569 l!9142))))))

(declare-fun b!6958602 () Bool)

(declare-fun isUnion!1460 (Regex!17070) Bool)

(assert (=> b!6958602 (= e!4184095 (isUnion!1460 lt!2478749))))

(assert (= (and d!2169817 res!2839465) b!6958595))

(assert (= (and d!2169817 c!1290354) b!6958597))

(assert (= (and d!2169817 (not c!1290354)) b!6958596))

(assert (= (and b!6958596 c!1290351) b!6958601))

(assert (= (and b!6958596 (not c!1290351)) b!6958600))

(assert (= (and d!2169817 res!2839464) b!6958593))

(assert (= (and b!6958593 c!1290353) b!6958598))

(assert (= (and b!6958593 (not c!1290353)) b!6958594))

(assert (= (and b!6958594 c!1290352) b!6958599))

(assert (= (and b!6958594 (not c!1290352)) b!6958602))

(declare-fun m!7655322 () Bool)

(assert (=> b!6958598 m!7655322))

(declare-fun m!7655324 () Bool)

(assert (=> b!6958602 m!7655324))

(declare-fun m!7655326 () Bool)

(assert (=> b!6958594 m!7655326))

(assert (=> b!6958594 m!7655326))

(declare-fun m!7655328 () Bool)

(assert (=> b!6958594 m!7655328))

(declare-fun m!7655330 () Bool)

(assert (=> b!6958599 m!7655330))

(declare-fun m!7655332 () Bool)

(assert (=> b!6958595 m!7655332))

(assert (=> b!6958593 m!7655266))

(declare-fun m!7655334 () Bool)

(assert (=> d!2169817 m!7655334))

(declare-fun m!7655336 () Bool)

(assert (=> d!2169817 m!7655336))

(declare-fun m!7655338 () Bool)

(assert (=> b!6958601 m!7655338))

(assert (=> b!6958389 d!2169817))

(declare-fun d!2169819 () Bool)

(assert (=> d!2169819 (= (isEmpty!38929 l!9142) (is-Nil!66702 l!9142))))

(assert (=> b!6958392 d!2169819))

(declare-fun d!2169821 () Bool)

(declare-fun res!2839470 () Bool)

(declare-fun e!4184103 () Bool)

(assert (=> d!2169821 (=> res!2839470 e!4184103)))

(assert (=> d!2169821 (= res!2839470 (is-Nil!66702 l!9142))))

(assert (=> d!2169821 (= (forall!15941 l!9142 lambda!396997) e!4184103)))

(declare-fun b!6958607 () Bool)

(declare-fun e!4184104 () Bool)

(assert (=> b!6958607 (= e!4184103 e!4184104)))

(declare-fun res!2839471 () Bool)

(assert (=> b!6958607 (=> (not res!2839471) (not e!4184104))))

(declare-fun dynLambda!26604 (Int Regex!17070) Bool)

(assert (=> b!6958607 (= res!2839471 (dynLambda!26604 lambda!396997 (h!73150 l!9142)))))

(declare-fun b!6958608 () Bool)

(assert (=> b!6958608 (= e!4184104 (forall!15941 (t!380569 l!9142) lambda!396997))))

(assert (= (and d!2169821 (not res!2839470)) b!6958607))

(assert (= (and b!6958607 res!2839471) b!6958608))

(declare-fun b_lambda!260513 () Bool)

(assert (=> (not b_lambda!260513) (not b!6958607)))

(declare-fun m!7655340 () Bool)

(assert (=> b!6958607 m!7655340))

(declare-fun m!7655342 () Bool)

(assert (=> b!6958608 m!7655342))

(assert (=> start!667700 d!2169821))

(declare-fun b!6958622 () Bool)

(declare-fun e!4184107 () Bool)

(declare-fun tp!1918302 () Bool)

(declare-fun tp!1918305 () Bool)

(assert (=> b!6958622 (= e!4184107 (and tp!1918302 tp!1918305))))

(declare-fun b!6958619 () Bool)

(assert (=> b!6958619 (= e!4184107 tp_is_empty!43365)))

(declare-fun b!6958621 () Bool)

(declare-fun tp!1918303 () Bool)

(assert (=> b!6958621 (= e!4184107 tp!1918303)))

(declare-fun b!6958620 () Bool)

(declare-fun tp!1918304 () Bool)

(declare-fun tp!1918306 () Bool)

(assert (=> b!6958620 (= e!4184107 (and tp!1918304 tp!1918306))))

(assert (=> b!6958393 (= tp!1918264 e!4184107)))

(assert (= (and b!6958393 (is-ElementMatch!17070 (h!73150 l!9142))) b!6958619))

(assert (= (and b!6958393 (is-Concat!25915 (h!73150 l!9142))) b!6958620))

(assert (= (and b!6958393 (is-Star!17070 (h!73150 l!9142))) b!6958621))

(assert (= (and b!6958393 (is-Union!17070 (h!73150 l!9142))) b!6958622))

(declare-fun b!6958627 () Bool)

(declare-fun e!4184110 () Bool)

(declare-fun tp!1918311 () Bool)

(declare-fun tp!1918312 () Bool)

(assert (=> b!6958627 (= e!4184110 (and tp!1918311 tp!1918312))))

(assert (=> b!6958393 (= tp!1918263 e!4184110)))

(assert (= (and b!6958393 (is-Cons!66702 (t!380569 l!9142))) b!6958627))

(declare-fun b!6958631 () Bool)

(declare-fun e!4184111 () Bool)

(declare-fun tp!1918313 () Bool)

(declare-fun tp!1918316 () Bool)

(assert (=> b!6958631 (= e!4184111 (and tp!1918313 tp!1918316))))

(declare-fun b!6958628 () Bool)

(assert (=> b!6958628 (= e!4184111 tp_is_empty!43365)))

(declare-fun b!6958630 () Bool)

(declare-fun tp!1918314 () Bool)

(assert (=> b!6958630 (= e!4184111 tp!1918314)))

(declare-fun b!6958629 () Bool)

(declare-fun tp!1918315 () Bool)

(declare-fun tp!1918317 () Bool)

(assert (=> b!6958629 (= e!4184111 (and tp!1918315 tp!1918317))))

(assert (=> b!6958391 (= tp!1918261 e!4184111)))

(assert (= (and b!6958391 (is-ElementMatch!17070 (reg!17399 r!13765))) b!6958628))

(assert (= (and b!6958391 (is-Concat!25915 (reg!17399 r!13765))) b!6958629))

(assert (= (and b!6958391 (is-Star!17070 (reg!17399 r!13765))) b!6958630))

(assert (= (and b!6958391 (is-Union!17070 (reg!17399 r!13765))) b!6958631))

(declare-fun b!6958636 () Bool)

(declare-fun e!4184114 () Bool)

(declare-fun tp!1918320 () Bool)

(assert (=> b!6958636 (= e!4184114 (and tp_is_empty!43365 tp!1918320))))

(assert (=> b!6958390 (= tp!1918265 e!4184114)))

(assert (= (and b!6958390 (is-Cons!66701 (t!380568 s!9351))) b!6958636))

(declare-fun b!6958640 () Bool)

(declare-fun e!4184115 () Bool)

(declare-fun tp!1918321 () Bool)

(declare-fun tp!1918324 () Bool)

(assert (=> b!6958640 (= e!4184115 (and tp!1918321 tp!1918324))))

(declare-fun b!6958637 () Bool)

(assert (=> b!6958637 (= e!4184115 tp_is_empty!43365)))

(declare-fun b!6958639 () Bool)

(declare-fun tp!1918322 () Bool)

(assert (=> b!6958639 (= e!4184115 tp!1918322)))

(declare-fun b!6958638 () Bool)

(declare-fun tp!1918323 () Bool)

(declare-fun tp!1918325 () Bool)

(assert (=> b!6958638 (= e!4184115 (and tp!1918323 tp!1918325))))

(assert (=> b!6958387 (= tp!1918262 e!4184115)))

(assert (= (and b!6958387 (is-ElementMatch!17070 (regOne!34653 r!13765))) b!6958637))

(assert (= (and b!6958387 (is-Concat!25915 (regOne!34653 r!13765))) b!6958638))

(assert (= (and b!6958387 (is-Star!17070 (regOne!34653 r!13765))) b!6958639))

(assert (= (and b!6958387 (is-Union!17070 (regOne!34653 r!13765))) b!6958640))

(declare-fun b!6958644 () Bool)

(declare-fun e!4184116 () Bool)

(declare-fun tp!1918326 () Bool)

(declare-fun tp!1918329 () Bool)

(assert (=> b!6958644 (= e!4184116 (and tp!1918326 tp!1918329))))

(declare-fun b!6958641 () Bool)

(assert (=> b!6958641 (= e!4184116 tp_is_empty!43365)))

(declare-fun b!6958643 () Bool)

(declare-fun tp!1918327 () Bool)

(assert (=> b!6958643 (= e!4184116 tp!1918327)))

(declare-fun b!6958642 () Bool)

(declare-fun tp!1918328 () Bool)

(declare-fun tp!1918330 () Bool)

(assert (=> b!6958642 (= e!4184116 (and tp!1918328 tp!1918330))))

(assert (=> b!6958387 (= tp!1918266 e!4184116)))

(assert (= (and b!6958387 (is-ElementMatch!17070 (regTwo!34653 r!13765))) b!6958641))

(assert (= (and b!6958387 (is-Concat!25915 (regTwo!34653 r!13765))) b!6958642))

(assert (= (and b!6958387 (is-Star!17070 (regTwo!34653 r!13765))) b!6958643))

(assert (= (and b!6958387 (is-Union!17070 (regTwo!34653 r!13765))) b!6958644))

(declare-fun b!6958648 () Bool)

(declare-fun e!4184117 () Bool)

(declare-fun tp!1918331 () Bool)

(declare-fun tp!1918334 () Bool)

(assert (=> b!6958648 (= e!4184117 (and tp!1918331 tp!1918334))))

(declare-fun b!6958645 () Bool)

(assert (=> b!6958645 (= e!4184117 tp_is_empty!43365)))

(declare-fun b!6958647 () Bool)

(declare-fun tp!1918332 () Bool)

(assert (=> b!6958647 (= e!4184117 tp!1918332)))

(declare-fun b!6958646 () Bool)

(declare-fun tp!1918333 () Bool)

(declare-fun tp!1918335 () Bool)

(assert (=> b!6958646 (= e!4184117 (and tp!1918333 tp!1918335))))

(assert (=> b!6958386 (= tp!1918267 e!4184117)))

(assert (= (and b!6958386 (is-ElementMatch!17070 (regOne!34652 r!13765))) b!6958645))

(assert (= (and b!6958386 (is-Concat!25915 (regOne!34652 r!13765))) b!6958646))

(assert (= (and b!6958386 (is-Star!17070 (regOne!34652 r!13765))) b!6958647))

(assert (= (and b!6958386 (is-Union!17070 (regOne!34652 r!13765))) b!6958648))

(declare-fun b!6958655 () Bool)

(declare-fun e!4184125 () Bool)

(declare-fun tp!1918336 () Bool)

(declare-fun tp!1918339 () Bool)

(assert (=> b!6958655 (= e!4184125 (and tp!1918336 tp!1918339))))

(declare-fun b!6958651 () Bool)

(assert (=> b!6958651 (= e!4184125 tp_is_empty!43365)))

(declare-fun b!6958654 () Bool)

(declare-fun tp!1918337 () Bool)

(assert (=> b!6958654 (= e!4184125 tp!1918337)))

(declare-fun b!6958652 () Bool)

(declare-fun tp!1918338 () Bool)

(declare-fun tp!1918340 () Bool)

(assert (=> b!6958652 (= e!4184125 (and tp!1918338 tp!1918340))))

(assert (=> b!6958386 (= tp!1918260 e!4184125)))

(assert (= (and b!6958386 (is-ElementMatch!17070 (regTwo!34652 r!13765))) b!6958651))

(assert (= (and b!6958386 (is-Concat!25915 (regTwo!34652 r!13765))) b!6958652))

(assert (= (and b!6958386 (is-Star!17070 (regTwo!34652 r!13765))) b!6958654))

(assert (= (and b!6958386 (is-Union!17070 (regTwo!34652 r!13765))) b!6958655))

(declare-fun b_lambda!260515 () Bool)

(assert (= b_lambda!260513 (or start!667700 b_lambda!260515)))

(declare-fun bs!1858248 () Bool)

(declare-fun d!2169823 () Bool)

(assert (= bs!1858248 (and d!2169823 start!667700)))

(assert (=> bs!1858248 (= (dynLambda!26604 lambda!396997 (h!73150 l!9142)) (validRegex!8772 (h!73150 l!9142)))))

(declare-fun m!7655344 () Bool)

(assert (=> bs!1858248 m!7655344))

(assert (=> b!6958607 d!2169823))

(push 1)

(assert (not b!6958647))

(assert (not b!6958621))

(assert (not b!6958463))

(assert (not b!6958642))

(assert (not b!6958459))

(assert (not b!6958455))

(assert (not b!6958593))

(assert (not b!6958640))

(assert (not bm!631894))

(assert tp_is_empty!43365)

(assert (not b!6958535))

(assert (not b!6958639))

(assert (not d!2169817))

(assert (not b!6958636))

(assert (not b!6958601))

(assert (not bs!1858248))

(assert (not b_lambda!260515))

(assert (not b!6958602))

(assert (not b!6958638))

(assert (not b!6958595))

(assert (not bm!631895))

(assert (not b!6958598))

(assert (not b!6958464))

(assert (not b!6958627))

(assert (not b!6958622))

(assert (not b!6958462))

(assert (not b!6958608))

(assert (not d!2169807))

(assert (not b!6958631))

(assert (not b!6958648))

(assert (not b!6958533))

(assert (not b!6958654))

(assert (not b!6958644))

(assert (not b!6958599))

(assert (not b!6958620))

(assert (not b!6958629))

(assert (not bm!631889))

(assert (not b!6958646))

(assert (not d!2169815))

(assert (not b!6958655))

(assert (not b!6958630))

(assert (not b!6958594))

(assert (not b!6958643))

(assert (not b!6958652))

(assert (not b!6958461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

