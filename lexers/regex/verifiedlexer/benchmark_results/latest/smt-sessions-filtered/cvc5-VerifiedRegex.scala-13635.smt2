; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731642 () Bool)

(assert start!731642)

(declare-fun b!7577097 () Bool)

(assert (=> b!7577097 true))

(assert (=> b!7577097 true))

(declare-fun lambda!466827 () Int)

(declare-fun lambda!466826 () Int)

(assert (=> b!7577097 (not (= lambda!466827 lambda!466826))))

(assert (=> b!7577097 true))

(assert (=> b!7577097 true))

(declare-fun b!7577094 () Bool)

(declare-fun res!3035657 () Bool)

(declare-fun e!4510254 () Bool)

(assert (=> b!7577094 (=> (not res!3035657) (not e!4510254))))

(declare-datatypes ((C!40454 0))(
  ( (C!40455 (val!30667 Int)) )
))
(declare-datatypes ((Regex!20064 0))(
  ( (ElementMatch!20064 (c!1397669 C!40454)) (Concat!28909 (regOne!40640 Regex!20064) (regTwo!40640 Regex!20064)) (EmptyExpr!20064) (Star!20064 (reg!20393 Regex!20064)) (EmptyLang!20064) (Union!20064 (regOne!40641 Regex!20064) (regTwo!40641 Regex!20064)) )
))
(declare-fun r!22341 () Regex!20064)

(declare-fun lostCause!1840 (Regex!20064) Bool)

(assert (=> b!7577094 (= res!3035657 (lostCause!1840 r!22341))))

(declare-fun b!7577095 () Bool)

(declare-fun e!4510255 () Bool)

(declare-datatypes ((List!72947 0))(
  ( (Nil!72823) (Cons!72823 (h!79271 C!40454) (t!387682 List!72947)) )
))
(declare-datatypes ((tuple2!68914 0))(
  ( (tuple2!68915 (_1!37760 List!72947) (_2!37760 List!72947)) )
))
(declare-fun lt!2652327 () tuple2!68914)

(declare-fun matchR!9658 (Regex!20064 List!72947) Bool)

(assert (=> b!7577095 (= e!4510255 (matchR!9658 (regTwo!40640 r!22341) (_2!37760 lt!2652327)))))

(declare-fun b!7577096 () Bool)

(declare-fun res!3035661 () Bool)

(assert (=> b!7577096 (=> (not res!3035661) (not e!4510254))))

(declare-fun s!13436 () List!72947)

(declare-fun isEmpty!41492 (List!72947) Bool)

(assert (=> b!7577096 (= res!3035661 (not (isEmpty!41492 s!13436)))))

(declare-fun e!4510253 () Bool)

(assert (=> b!7577097 (= e!4510253 e!4510255)))

(declare-fun res!3035659 () Bool)

(assert (=> b!7577097 (=> res!3035659 e!4510255)))

(assert (=> b!7577097 (= res!3035659 (not (matchR!9658 (regOne!40640 r!22341) (_1!37760 lt!2652327))))))

(declare-datatypes ((Option!17293 0))(
  ( (None!17292) (Some!17292 (v!54427 tuple2!68914)) )
))
(declare-fun lt!2652323 () Option!17293)

(declare-fun get!25598 (Option!17293) tuple2!68914)

(assert (=> b!7577097 (= lt!2652327 (get!25598 lt!2652323))))

(declare-fun Exists!4303 (Int) Bool)

(assert (=> b!7577097 (= (Exists!4303 lambda!466826) (Exists!4303 lambda!466827))))

(declare-datatypes ((Unit!167086 0))(
  ( (Unit!167087) )
))
(declare-fun lt!2652325 () Unit!167086)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2621 (Regex!20064 Regex!20064 List!72947) Unit!167086)

(assert (=> b!7577097 (= lt!2652325 (lemmaExistCutMatchRandMatchRSpecEquivalent!2621 (regOne!40640 r!22341) (regTwo!40640 r!22341) s!13436))))

(declare-fun isDefined!13939 (Option!17293) Bool)

(assert (=> b!7577097 (= (isDefined!13939 lt!2652323) (Exists!4303 lambda!466826))))

(declare-fun findConcatSeparation!3353 (Regex!20064 Regex!20064 List!72947 List!72947 List!72947) Option!17293)

(assert (=> b!7577097 (= lt!2652323 (findConcatSeparation!3353 (regOne!40640 r!22341) (regTwo!40640 r!22341) Nil!72823 s!13436 s!13436))))

(declare-fun lt!2652326 () Unit!167086)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3111 (Regex!20064 Regex!20064 List!72947) Unit!167086)

(assert (=> b!7577097 (= lt!2652326 (lemmaFindConcatSeparationEquivalentToExists!3111 (regOne!40640 r!22341) (regTwo!40640 r!22341) s!13436))))

(declare-fun res!3035660 () Bool)

(assert (=> start!731642 (=> (not res!3035660) (not e!4510254))))

(declare-fun validRegex!10492 (Regex!20064) Bool)

(assert (=> start!731642 (= res!3035660 (validRegex!10492 r!22341))))

(assert (=> start!731642 e!4510254))

(declare-fun e!4510252 () Bool)

(assert (=> start!731642 e!4510252))

(declare-fun e!4510256 () Bool)

(assert (=> start!731642 e!4510256))

(declare-fun b!7577098 () Bool)

(assert (=> b!7577098 (= e!4510254 (not e!4510253))))

(declare-fun res!3035658 () Bool)

(assert (=> b!7577098 (=> res!3035658 e!4510253)))

(declare-fun lt!2652328 () Bool)

(assert (=> b!7577098 (= res!3035658 (or (is-EmptyLang!20064 r!22341) (is-EmptyExpr!20064 r!22341) (is-ElementMatch!20064 r!22341) (is-Union!20064 r!22341) (is-Star!20064 r!22341) (not lt!2652328)))))

(declare-fun matchRSpec!4381 (Regex!20064 List!72947) Bool)

(assert (=> b!7577098 (= lt!2652328 (matchRSpec!4381 r!22341 s!13436))))

(assert (=> b!7577098 (= lt!2652328 (matchR!9658 r!22341 s!13436))))

(declare-fun lt!2652324 () Unit!167086)

(declare-fun mainMatchTheorem!4375 (Regex!20064 List!72947) Unit!167086)

(assert (=> b!7577098 (= lt!2652324 (mainMatchTheorem!4375 r!22341 s!13436))))

(declare-fun b!7577099 () Bool)

(declare-fun tp!2207871 () Bool)

(assert (=> b!7577099 (= e!4510252 tp!2207871)))

(declare-fun b!7577100 () Bool)

(declare-fun tp_is_empty!50483 () Bool)

(declare-fun tp!2207870 () Bool)

(assert (=> b!7577100 (= e!4510256 (and tp_is_empty!50483 tp!2207870))))

(declare-fun b!7577101 () Bool)

(declare-fun tp!2207873 () Bool)

(declare-fun tp!2207872 () Bool)

(assert (=> b!7577101 (= e!4510252 (and tp!2207873 tp!2207872))))

(declare-fun b!7577102 () Bool)

(assert (=> b!7577102 (= e!4510252 tp_is_empty!50483)))

(declare-fun b!7577103 () Bool)

(declare-fun tp!2207874 () Bool)

(declare-fun tp!2207875 () Bool)

(assert (=> b!7577103 (= e!4510252 (and tp!2207874 tp!2207875))))

(assert (= (and start!731642 res!3035660) b!7577094))

(assert (= (and b!7577094 res!3035657) b!7577096))

(assert (= (and b!7577096 res!3035661) b!7577098))

(assert (= (and b!7577098 (not res!3035658)) b!7577097))

(assert (= (and b!7577097 (not res!3035659)) b!7577095))

(assert (= (and start!731642 (is-ElementMatch!20064 r!22341)) b!7577102))

(assert (= (and start!731642 (is-Concat!28909 r!22341)) b!7577103))

(assert (= (and start!731642 (is-Star!20064 r!22341)) b!7577099))

(assert (= (and start!731642 (is-Union!20064 r!22341)) b!7577101))

(assert (= (and start!731642 (is-Cons!72823 s!13436)) b!7577100))

(declare-fun m!8134650 () Bool)

(assert (=> b!7577098 m!8134650))

(declare-fun m!8134652 () Bool)

(assert (=> b!7577098 m!8134652))

(declare-fun m!8134654 () Bool)

(assert (=> b!7577098 m!8134654))

(declare-fun m!8134656 () Bool)

(assert (=> b!7577096 m!8134656))

(declare-fun m!8134658 () Bool)

(assert (=> b!7577095 m!8134658))

(declare-fun m!8134660 () Bool)

(assert (=> start!731642 m!8134660))

(declare-fun m!8134662 () Bool)

(assert (=> b!7577094 m!8134662))

(declare-fun m!8134664 () Bool)

(assert (=> b!7577097 m!8134664))

(declare-fun m!8134666 () Bool)

(assert (=> b!7577097 m!8134666))

(declare-fun m!8134668 () Bool)

(assert (=> b!7577097 m!8134668))

(declare-fun m!8134670 () Bool)

(assert (=> b!7577097 m!8134670))

(declare-fun m!8134672 () Bool)

(assert (=> b!7577097 m!8134672))

(assert (=> b!7577097 m!8134670))

(declare-fun m!8134674 () Bool)

(assert (=> b!7577097 m!8134674))

(declare-fun m!8134676 () Bool)

(assert (=> b!7577097 m!8134676))

(declare-fun m!8134678 () Bool)

(assert (=> b!7577097 m!8134678))

(push 1)

(assert (not b!7577095))

(assert (not b!7577099))

(assert (not start!731642))

(assert (not b!7577101))

(assert (not b!7577097))

(assert (not b!7577100))

(assert (not b!7577098))

(assert (not b!7577103))

(assert (not b!7577094))

(assert tp_is_empty!50483)

(assert (not b!7577096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2318052 () Bool)

(declare-fun e!4510298 () Bool)

(assert (=> d!2318052 e!4510298))

(declare-fun c!1397678 () Bool)

(assert (=> d!2318052 (= c!1397678 (is-EmptyExpr!20064 (regTwo!40640 r!22341)))))

(declare-fun lt!2652349 () Bool)

(declare-fun e!4510294 () Bool)

(assert (=> d!2318052 (= lt!2652349 e!4510294)))

(declare-fun c!1397679 () Bool)

(assert (=> d!2318052 (= c!1397679 (isEmpty!41492 (_2!37760 lt!2652327)))))

(assert (=> d!2318052 (validRegex!10492 (regTwo!40640 r!22341))))

(assert (=> d!2318052 (= (matchR!9658 (regTwo!40640 r!22341) (_2!37760 lt!2652327)) lt!2652349)))

(declare-fun b!7577182 () Bool)

(declare-fun e!4510293 () Bool)

(assert (=> b!7577182 (= e!4510293 (not lt!2652349))))

(declare-fun b!7577183 () Bool)

(declare-fun res!3035706 () Bool)

(declare-fun e!4510292 () Bool)

(assert (=> b!7577183 (=> res!3035706 e!4510292)))

(declare-fun e!4510297 () Bool)

(assert (=> b!7577183 (= res!3035706 e!4510297)))

(declare-fun res!3035708 () Bool)

(assert (=> b!7577183 (=> (not res!3035708) (not e!4510297))))

(assert (=> b!7577183 (= res!3035708 lt!2652349)))

(declare-fun b!7577184 () Bool)

(declare-fun res!3035710 () Bool)

(assert (=> b!7577184 (=> (not res!3035710) (not e!4510297))))

(declare-fun call!694553 () Bool)

(assert (=> b!7577184 (= res!3035710 (not call!694553))))

(declare-fun b!7577185 () Bool)

(declare-fun e!4510295 () Bool)

(declare-fun head!15586 (List!72947) C!40454)

(assert (=> b!7577185 (= e!4510295 (not (= (head!15586 (_2!37760 lt!2652327)) (c!1397669 (regTwo!40640 r!22341)))))))

(declare-fun b!7577186 () Bool)

(declare-fun e!4510296 () Bool)

(assert (=> b!7577186 (= e!4510296 e!4510295)))

(declare-fun res!3035705 () Bool)

(assert (=> b!7577186 (=> res!3035705 e!4510295)))

(assert (=> b!7577186 (= res!3035705 call!694553)))

(declare-fun bm!694548 () Bool)

(assert (=> bm!694548 (= call!694553 (isEmpty!41492 (_2!37760 lt!2652327)))))

(declare-fun b!7577187 () Bool)

(assert (=> b!7577187 (= e!4510298 e!4510293)))

(declare-fun c!1397677 () Bool)

(assert (=> b!7577187 (= c!1397677 (is-EmptyLang!20064 (regTwo!40640 r!22341)))))

(declare-fun b!7577188 () Bool)

(declare-fun nullable!8757 (Regex!20064) Bool)

(assert (=> b!7577188 (= e!4510294 (nullable!8757 (regTwo!40640 r!22341)))))

(declare-fun b!7577189 () Bool)

(declare-fun res!3035707 () Bool)

(assert (=> b!7577189 (=> res!3035707 e!4510292)))

(assert (=> b!7577189 (= res!3035707 (not (is-ElementMatch!20064 (regTwo!40640 r!22341))))))

(assert (=> b!7577189 (= e!4510293 e!4510292)))

(declare-fun b!7577190 () Bool)

(declare-fun res!3035712 () Bool)

(assert (=> b!7577190 (=> res!3035712 e!4510295)))

(declare-fun tail!15126 (List!72947) List!72947)

(assert (=> b!7577190 (= res!3035712 (not (isEmpty!41492 (tail!15126 (_2!37760 lt!2652327)))))))

(declare-fun b!7577191 () Bool)

(declare-fun res!3035711 () Bool)

(assert (=> b!7577191 (=> (not res!3035711) (not e!4510297))))

(assert (=> b!7577191 (= res!3035711 (isEmpty!41492 (tail!15126 (_2!37760 lt!2652327))))))

(declare-fun b!7577192 () Bool)

(assert (=> b!7577192 (= e!4510292 e!4510296)))

(declare-fun res!3035709 () Bool)

(assert (=> b!7577192 (=> (not res!3035709) (not e!4510296))))

(assert (=> b!7577192 (= res!3035709 (not lt!2652349))))

(declare-fun b!7577193 () Bool)

(assert (=> b!7577193 (= e!4510298 (= lt!2652349 call!694553))))

(declare-fun b!7577194 () Bool)

(declare-fun derivativeStep!5786 (Regex!20064 C!40454) Regex!20064)

(assert (=> b!7577194 (= e!4510294 (matchR!9658 (derivativeStep!5786 (regTwo!40640 r!22341) (head!15586 (_2!37760 lt!2652327))) (tail!15126 (_2!37760 lt!2652327))))))

(declare-fun b!7577195 () Bool)

(assert (=> b!7577195 (= e!4510297 (= (head!15586 (_2!37760 lt!2652327)) (c!1397669 (regTwo!40640 r!22341))))))

(assert (= (and d!2318052 c!1397679) b!7577188))

(assert (= (and d!2318052 (not c!1397679)) b!7577194))

(assert (= (and d!2318052 c!1397678) b!7577193))

(assert (= (and d!2318052 (not c!1397678)) b!7577187))

(assert (= (and b!7577187 c!1397677) b!7577182))

(assert (= (and b!7577187 (not c!1397677)) b!7577189))

(assert (= (and b!7577189 (not res!3035707)) b!7577183))

(assert (= (and b!7577183 res!3035708) b!7577184))

(assert (= (and b!7577184 res!3035710) b!7577191))

(assert (= (and b!7577191 res!3035711) b!7577195))

(assert (= (and b!7577183 (not res!3035706)) b!7577192))

(assert (= (and b!7577192 res!3035709) b!7577186))

(assert (= (and b!7577186 (not res!3035705)) b!7577190))

(assert (= (and b!7577190 (not res!3035712)) b!7577185))

(assert (= (or b!7577193 b!7577184 b!7577186) bm!694548))

(declare-fun m!8134710 () Bool)

(assert (=> b!7577195 m!8134710))

(declare-fun m!8134712 () Bool)

(assert (=> b!7577188 m!8134712))

(declare-fun m!8134714 () Bool)

(assert (=> bm!694548 m!8134714))

(declare-fun m!8134716 () Bool)

(assert (=> b!7577190 m!8134716))

(assert (=> b!7577190 m!8134716))

(declare-fun m!8134718 () Bool)

(assert (=> b!7577190 m!8134718))

(assert (=> b!7577191 m!8134716))

(assert (=> b!7577191 m!8134716))

(assert (=> b!7577191 m!8134718))

(assert (=> b!7577194 m!8134710))

(assert (=> b!7577194 m!8134710))

(declare-fun m!8134720 () Bool)

(assert (=> b!7577194 m!8134720))

(assert (=> b!7577194 m!8134716))

(assert (=> b!7577194 m!8134720))

(assert (=> b!7577194 m!8134716))

(declare-fun m!8134722 () Bool)

(assert (=> b!7577194 m!8134722))

(assert (=> b!7577185 m!8134710))

(assert (=> d!2318052 m!8134714))

(declare-fun m!8134724 () Bool)

(assert (=> d!2318052 m!8134724))

(assert (=> b!7577095 d!2318052))

(declare-fun bm!694555 () Bool)

(declare-fun call!694562 () Bool)

(declare-fun c!1397684 () Bool)

(assert (=> bm!694555 (= call!694562 (validRegex!10492 (ite c!1397684 (regTwo!40641 r!22341) (regOne!40640 r!22341))))))

(declare-fun b!7577214 () Bool)

(declare-fun e!4510314 () Bool)

(declare-fun e!4510315 () Bool)

(assert (=> b!7577214 (= e!4510314 e!4510315)))

(declare-fun res!3035723 () Bool)

(assert (=> b!7577214 (=> (not res!3035723) (not e!4510315))))

(assert (=> b!7577214 (= res!3035723 call!694562)))

(declare-fun d!2318054 () Bool)

(declare-fun res!3035725 () Bool)

(declare-fun e!4510317 () Bool)

(assert (=> d!2318054 (=> res!3035725 e!4510317)))

(assert (=> d!2318054 (= res!3035725 (is-ElementMatch!20064 r!22341))))

(assert (=> d!2318054 (= (validRegex!10492 r!22341) e!4510317)))

(declare-fun b!7577215 () Bool)

(declare-fun res!3035727 () Bool)

(declare-fun e!4510319 () Bool)

(assert (=> b!7577215 (=> (not res!3035727) (not e!4510319))))

(declare-fun call!694560 () Bool)

(assert (=> b!7577215 (= res!3035727 call!694560)))

(declare-fun e!4510316 () Bool)

(assert (=> b!7577215 (= e!4510316 e!4510319)))

(declare-fun bm!694556 () Bool)

(declare-fun call!694561 () Bool)

(assert (=> bm!694556 (= call!694560 call!694561)))

(declare-fun b!7577216 () Bool)

(declare-fun e!4510313 () Bool)

(declare-fun e!4510318 () Bool)

(assert (=> b!7577216 (= e!4510313 e!4510318)))

(declare-fun res!3035726 () Bool)

(assert (=> b!7577216 (= res!3035726 (not (nullable!8757 (reg!20393 r!22341))))))

(assert (=> b!7577216 (=> (not res!3035726) (not e!4510318))))

(declare-fun b!7577217 () Bool)

(assert (=> b!7577217 (= e!4510319 call!694562)))

(declare-fun b!7577218 () Bool)

(declare-fun res!3035724 () Bool)

(assert (=> b!7577218 (=> res!3035724 e!4510314)))

(assert (=> b!7577218 (= res!3035724 (not (is-Concat!28909 r!22341)))))

(assert (=> b!7577218 (= e!4510316 e!4510314)))

(declare-fun b!7577219 () Bool)

(assert (=> b!7577219 (= e!4510317 e!4510313)))

(declare-fun c!1397685 () Bool)

(assert (=> b!7577219 (= c!1397685 (is-Star!20064 r!22341))))

(declare-fun b!7577220 () Bool)

(assert (=> b!7577220 (= e!4510318 call!694561)))

(declare-fun b!7577221 () Bool)

(assert (=> b!7577221 (= e!4510315 call!694560)))

(declare-fun b!7577222 () Bool)

(assert (=> b!7577222 (= e!4510313 e!4510316)))

(assert (=> b!7577222 (= c!1397684 (is-Union!20064 r!22341))))

(declare-fun bm!694557 () Bool)

(assert (=> bm!694557 (= call!694561 (validRegex!10492 (ite c!1397685 (reg!20393 r!22341) (ite c!1397684 (regOne!40641 r!22341) (regTwo!40640 r!22341)))))))

(assert (= (and d!2318054 (not res!3035725)) b!7577219))

(assert (= (and b!7577219 c!1397685) b!7577216))

(assert (= (and b!7577219 (not c!1397685)) b!7577222))

(assert (= (and b!7577216 res!3035726) b!7577220))

(assert (= (and b!7577222 c!1397684) b!7577215))

(assert (= (and b!7577222 (not c!1397684)) b!7577218))

(assert (= (and b!7577215 res!3035727) b!7577217))

(assert (= (and b!7577218 (not res!3035724)) b!7577214))

(assert (= (and b!7577214 res!3035723) b!7577221))

(assert (= (or b!7577217 b!7577214) bm!694555))

(assert (= (or b!7577215 b!7577221) bm!694556))

(assert (= (or b!7577220 bm!694556) bm!694557))

(declare-fun m!8134726 () Bool)

(assert (=> bm!694555 m!8134726))

(declare-fun m!8134728 () Bool)

(assert (=> b!7577216 m!8134728))

(declare-fun m!8134730 () Bool)

(assert (=> bm!694557 m!8134730))

(assert (=> start!731642 d!2318054))

(declare-fun d!2318058 () Bool)

(declare-fun lostCauseFct!494 (Regex!20064) Bool)

(assert (=> d!2318058 (= (lostCause!1840 r!22341) (lostCauseFct!494 r!22341))))

(declare-fun bs!1940881 () Bool)

(assert (= bs!1940881 d!2318058))

(declare-fun m!8134732 () Bool)

(assert (=> bs!1940881 m!8134732))

(assert (=> b!7577094 d!2318058))

(declare-fun d!2318060 () Bool)

(assert (=> d!2318060 (= (isEmpty!41492 s!13436) (is-Nil!72823 s!13436))))

(assert (=> b!7577096 d!2318060))

(declare-fun d!2318062 () Bool)

(declare-fun choose!58588 (Int) Bool)

(assert (=> d!2318062 (= (Exists!4303 lambda!466826) (choose!58588 lambda!466826))))

(declare-fun bs!1940882 () Bool)

(assert (= bs!1940882 d!2318062))

(declare-fun m!8134734 () Bool)

(assert (=> bs!1940882 m!8134734))

(assert (=> b!7577097 d!2318062))

(declare-fun d!2318064 () Bool)

(declare-fun isEmpty!41494 (Option!17293) Bool)

(assert (=> d!2318064 (= (isDefined!13939 lt!2652323) (not (isEmpty!41494 lt!2652323)))))

(declare-fun bs!1940883 () Bool)

(assert (= bs!1940883 d!2318064))

(declare-fun m!8134736 () Bool)

(assert (=> bs!1940883 m!8134736))

(assert (=> b!7577097 d!2318064))

(declare-fun bs!1940884 () Bool)

(declare-fun d!2318066 () Bool)

(assert (= bs!1940884 (and d!2318066 b!7577097)))

(declare-fun lambda!466840 () Int)

(assert (=> bs!1940884 (= lambda!466840 lambda!466826)))

(assert (=> bs!1940884 (not (= lambda!466840 lambda!466827))))

(assert (=> d!2318066 true))

(assert (=> d!2318066 true))

(assert (=> d!2318066 true))

(declare-fun lambda!466841 () Int)

(assert (=> bs!1940884 (not (= lambda!466841 lambda!466826))))

(assert (=> bs!1940884 (= lambda!466841 lambda!466827)))

(declare-fun bs!1940885 () Bool)

(assert (= bs!1940885 d!2318066))

(assert (=> bs!1940885 (not (= lambda!466841 lambda!466840))))

(assert (=> d!2318066 true))

(assert (=> d!2318066 true))

(assert (=> d!2318066 true))

(assert (=> d!2318066 (= (Exists!4303 lambda!466840) (Exists!4303 lambda!466841))))

(declare-fun lt!2652352 () Unit!167086)

(declare-fun choose!58589 (Regex!20064 Regex!20064 List!72947) Unit!167086)

(assert (=> d!2318066 (= lt!2652352 (choose!58589 (regOne!40640 r!22341) (regTwo!40640 r!22341) s!13436))))

(assert (=> d!2318066 (validRegex!10492 (regOne!40640 r!22341))))

(assert (=> d!2318066 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2621 (regOne!40640 r!22341) (regTwo!40640 r!22341) s!13436) lt!2652352)))

(declare-fun m!8134738 () Bool)

(assert (=> bs!1940885 m!8134738))

(declare-fun m!8134740 () Bool)

(assert (=> bs!1940885 m!8134740))

(declare-fun m!8134742 () Bool)

(assert (=> bs!1940885 m!8134742))

(declare-fun m!8134744 () Bool)

(assert (=> bs!1940885 m!8134744))

(assert (=> b!7577097 d!2318066))

(declare-fun bs!1940886 () Bool)

(declare-fun d!2318068 () Bool)

(assert (= bs!1940886 (and d!2318068 b!7577097)))

(declare-fun lambda!466844 () Int)

(assert (=> bs!1940886 (= lambda!466844 lambda!466826)))

(assert (=> bs!1940886 (not (= lambda!466844 lambda!466827))))

(declare-fun bs!1940887 () Bool)

(assert (= bs!1940887 (and d!2318068 d!2318066)))

(assert (=> bs!1940887 (= lambda!466844 lambda!466840)))

(assert (=> bs!1940887 (not (= lambda!466844 lambda!466841))))

(assert (=> d!2318068 true))

(assert (=> d!2318068 true))

(assert (=> d!2318068 true))

(assert (=> d!2318068 (= (isDefined!13939 (findConcatSeparation!3353 (regOne!40640 r!22341) (regTwo!40640 r!22341) Nil!72823 s!13436 s!13436)) (Exists!4303 lambda!466844))))

(declare-fun lt!2652355 () Unit!167086)

(declare-fun choose!58590 (Regex!20064 Regex!20064 List!72947) Unit!167086)

(assert (=> d!2318068 (= lt!2652355 (choose!58590 (regOne!40640 r!22341) (regTwo!40640 r!22341) s!13436))))

(assert (=> d!2318068 (validRegex!10492 (regOne!40640 r!22341))))

(assert (=> d!2318068 (= (lemmaFindConcatSeparationEquivalentToExists!3111 (regOne!40640 r!22341) (regTwo!40640 r!22341) s!13436) lt!2652355)))

(declare-fun bs!1940888 () Bool)

(assert (= bs!1940888 d!2318068))

(declare-fun m!8134752 () Bool)

(assert (=> bs!1940888 m!8134752))

(assert (=> bs!1940888 m!8134744))

(assert (=> bs!1940888 m!8134674))

(declare-fun m!8134754 () Bool)

(assert (=> bs!1940888 m!8134754))

(assert (=> bs!1940888 m!8134674))

(declare-fun m!8134756 () Bool)

(assert (=> bs!1940888 m!8134756))

(assert (=> b!7577097 d!2318068))

(declare-fun d!2318072 () Bool)

(assert (=> d!2318072 (= (get!25598 lt!2652323) (v!54427 lt!2652323))))

(assert (=> b!7577097 d!2318072))

(declare-fun d!2318074 () Bool)

(declare-fun e!4510353 () Bool)

(assert (=> d!2318074 e!4510353))

(declare-fun c!1397693 () Bool)

(assert (=> d!2318074 (= c!1397693 (is-EmptyExpr!20064 (regOne!40640 r!22341)))))

(declare-fun lt!2652356 () Bool)

(declare-fun e!4510349 () Bool)

(assert (=> d!2318074 (= lt!2652356 e!4510349)))

(declare-fun c!1397694 () Bool)

(assert (=> d!2318074 (= c!1397694 (isEmpty!41492 (_1!37760 lt!2652327)))))

(assert (=> d!2318074 (validRegex!10492 (regOne!40640 r!22341))))

(assert (=> d!2318074 (= (matchR!9658 (regOne!40640 r!22341) (_1!37760 lt!2652327)) lt!2652356)))

(declare-fun b!7577262 () Bool)

(declare-fun e!4510348 () Bool)

(assert (=> b!7577262 (= e!4510348 (not lt!2652356))))

(declare-fun b!7577263 () Bool)

(declare-fun res!3035756 () Bool)

(declare-fun e!4510347 () Bool)

(assert (=> b!7577263 (=> res!3035756 e!4510347)))

(declare-fun e!4510352 () Bool)

(assert (=> b!7577263 (= res!3035756 e!4510352)))

(declare-fun res!3035758 () Bool)

(assert (=> b!7577263 (=> (not res!3035758) (not e!4510352))))

(assert (=> b!7577263 (= res!3035758 lt!2652356)))

(declare-fun b!7577264 () Bool)

(declare-fun res!3035760 () Bool)

(assert (=> b!7577264 (=> (not res!3035760) (not e!4510352))))

(declare-fun call!694572 () Bool)

(assert (=> b!7577264 (= res!3035760 (not call!694572))))

(declare-fun b!7577265 () Bool)

(declare-fun e!4510350 () Bool)

(assert (=> b!7577265 (= e!4510350 (not (= (head!15586 (_1!37760 lt!2652327)) (c!1397669 (regOne!40640 r!22341)))))))

(declare-fun b!7577266 () Bool)

(declare-fun e!4510351 () Bool)

(assert (=> b!7577266 (= e!4510351 e!4510350)))

(declare-fun res!3035755 () Bool)

(assert (=> b!7577266 (=> res!3035755 e!4510350)))

(assert (=> b!7577266 (= res!3035755 call!694572)))

(declare-fun bm!694567 () Bool)

(assert (=> bm!694567 (= call!694572 (isEmpty!41492 (_1!37760 lt!2652327)))))

(declare-fun b!7577267 () Bool)

(assert (=> b!7577267 (= e!4510353 e!4510348)))

(declare-fun c!1397692 () Bool)

(assert (=> b!7577267 (= c!1397692 (is-EmptyLang!20064 (regOne!40640 r!22341)))))

(declare-fun b!7577268 () Bool)

(assert (=> b!7577268 (= e!4510349 (nullable!8757 (regOne!40640 r!22341)))))

(declare-fun b!7577269 () Bool)

(declare-fun res!3035757 () Bool)

(assert (=> b!7577269 (=> res!3035757 e!4510347)))

(assert (=> b!7577269 (= res!3035757 (not (is-ElementMatch!20064 (regOne!40640 r!22341))))))

(assert (=> b!7577269 (= e!4510348 e!4510347)))

(declare-fun b!7577270 () Bool)

(declare-fun res!3035762 () Bool)

(assert (=> b!7577270 (=> res!3035762 e!4510350)))

(assert (=> b!7577270 (= res!3035762 (not (isEmpty!41492 (tail!15126 (_1!37760 lt!2652327)))))))

(declare-fun b!7577271 () Bool)

(declare-fun res!3035761 () Bool)

(assert (=> b!7577271 (=> (not res!3035761) (not e!4510352))))

(assert (=> b!7577271 (= res!3035761 (isEmpty!41492 (tail!15126 (_1!37760 lt!2652327))))))

(declare-fun b!7577272 () Bool)

(assert (=> b!7577272 (= e!4510347 e!4510351)))

(declare-fun res!3035759 () Bool)

(assert (=> b!7577272 (=> (not res!3035759) (not e!4510351))))

(assert (=> b!7577272 (= res!3035759 (not lt!2652356))))

(declare-fun b!7577273 () Bool)

(assert (=> b!7577273 (= e!4510353 (= lt!2652356 call!694572))))

(declare-fun b!7577274 () Bool)

(assert (=> b!7577274 (= e!4510349 (matchR!9658 (derivativeStep!5786 (regOne!40640 r!22341) (head!15586 (_1!37760 lt!2652327))) (tail!15126 (_1!37760 lt!2652327))))))

(declare-fun b!7577275 () Bool)

(assert (=> b!7577275 (= e!4510352 (= (head!15586 (_1!37760 lt!2652327)) (c!1397669 (regOne!40640 r!22341))))))

(assert (= (and d!2318074 c!1397694) b!7577268))

(assert (= (and d!2318074 (not c!1397694)) b!7577274))

(assert (= (and d!2318074 c!1397693) b!7577273))

(assert (= (and d!2318074 (not c!1397693)) b!7577267))

(assert (= (and b!7577267 c!1397692) b!7577262))

(assert (= (and b!7577267 (not c!1397692)) b!7577269))

(assert (= (and b!7577269 (not res!3035757)) b!7577263))

(assert (= (and b!7577263 res!3035758) b!7577264))

(assert (= (and b!7577264 res!3035760) b!7577271))

(assert (= (and b!7577271 res!3035761) b!7577275))

(assert (= (and b!7577263 (not res!3035756)) b!7577272))

(assert (= (and b!7577272 res!3035759) b!7577266))

(assert (= (and b!7577266 (not res!3035755)) b!7577270))

(assert (= (and b!7577270 (not res!3035762)) b!7577265))

(assert (= (or b!7577273 b!7577264 b!7577266) bm!694567))

(declare-fun m!8134758 () Bool)

(assert (=> b!7577275 m!8134758))

(declare-fun m!8134760 () Bool)

(assert (=> b!7577268 m!8134760))

(declare-fun m!8134762 () Bool)

(assert (=> bm!694567 m!8134762))

(declare-fun m!8134764 () Bool)

(assert (=> b!7577270 m!8134764))

(assert (=> b!7577270 m!8134764))

(declare-fun m!8134766 () Bool)

(assert (=> b!7577270 m!8134766))

(assert (=> b!7577271 m!8134764))

(assert (=> b!7577271 m!8134764))

(assert (=> b!7577271 m!8134766))

(assert (=> b!7577274 m!8134758))

(assert (=> b!7577274 m!8134758))

(declare-fun m!8134768 () Bool)

(assert (=> b!7577274 m!8134768))

(assert (=> b!7577274 m!8134764))

(assert (=> b!7577274 m!8134768))

(assert (=> b!7577274 m!8134764))

(declare-fun m!8134770 () Bool)

(assert (=> b!7577274 m!8134770))

(assert (=> b!7577265 m!8134758))

(assert (=> d!2318074 m!8134762))

(assert (=> d!2318074 m!8134744))

(assert (=> b!7577097 d!2318074))

(declare-fun b!7577322 () Bool)

(declare-fun res!3035791 () Bool)

(declare-fun e!4510381 () Bool)

(assert (=> b!7577322 (=> (not res!3035791) (not e!4510381))))

(declare-fun lt!2652365 () Option!17293)

(assert (=> b!7577322 (= res!3035791 (matchR!9658 (regOne!40640 r!22341) (_1!37760 (get!25598 lt!2652365))))))

(declare-fun b!7577323 () Bool)

(declare-fun lt!2652367 () Unit!167086)

(declare-fun lt!2652366 () Unit!167086)

(assert (=> b!7577323 (= lt!2652367 lt!2652366)))

(declare-fun ++!17505 (List!72947 List!72947) List!72947)

(assert (=> b!7577323 (= (++!17505 (++!17505 Nil!72823 (Cons!72823 (h!79271 s!13436) Nil!72823)) (t!387682 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3193 (List!72947 C!40454 List!72947 List!72947) Unit!167086)

(assert (=> b!7577323 (= lt!2652366 (lemmaMoveElementToOtherListKeepsConcatEq!3193 Nil!72823 (h!79271 s!13436) (t!387682 s!13436) s!13436))))

(declare-fun e!4510382 () Option!17293)

(assert (=> b!7577323 (= e!4510382 (findConcatSeparation!3353 (regOne!40640 r!22341) (regTwo!40640 r!22341) (++!17505 Nil!72823 (Cons!72823 (h!79271 s!13436) Nil!72823)) (t!387682 s!13436) s!13436))))

(declare-fun b!7577324 () Bool)

(declare-fun res!3035789 () Bool)

(assert (=> b!7577324 (=> (not res!3035789) (not e!4510381))))

(assert (=> b!7577324 (= res!3035789 (matchR!9658 (regTwo!40640 r!22341) (_2!37760 (get!25598 lt!2652365))))))

(declare-fun b!7577325 () Bool)

(declare-fun e!4510378 () Option!17293)

(assert (=> b!7577325 (= e!4510378 (Some!17292 (tuple2!68915 Nil!72823 s!13436)))))

(declare-fun d!2318076 () Bool)

(declare-fun e!4510379 () Bool)

(assert (=> d!2318076 e!4510379))

(declare-fun res!3035792 () Bool)

(assert (=> d!2318076 (=> res!3035792 e!4510379)))

(assert (=> d!2318076 (= res!3035792 e!4510381)))

(declare-fun res!3035790 () Bool)

(assert (=> d!2318076 (=> (not res!3035790) (not e!4510381))))

(assert (=> d!2318076 (= res!3035790 (isDefined!13939 lt!2652365))))

(assert (=> d!2318076 (= lt!2652365 e!4510378)))

(declare-fun c!1397705 () Bool)

(declare-fun e!4510380 () Bool)

(assert (=> d!2318076 (= c!1397705 e!4510380)))

(declare-fun res!3035793 () Bool)

(assert (=> d!2318076 (=> (not res!3035793) (not e!4510380))))

(assert (=> d!2318076 (= res!3035793 (matchR!9658 (regOne!40640 r!22341) Nil!72823))))

(assert (=> d!2318076 (validRegex!10492 (regOne!40640 r!22341))))

(assert (=> d!2318076 (= (findConcatSeparation!3353 (regOne!40640 r!22341) (regTwo!40640 r!22341) Nil!72823 s!13436 s!13436) lt!2652365)))

(declare-fun b!7577326 () Bool)

(assert (=> b!7577326 (= e!4510378 e!4510382)))

(declare-fun c!1397706 () Bool)

(assert (=> b!7577326 (= c!1397706 (is-Nil!72823 s!13436))))

(declare-fun b!7577327 () Bool)

(assert (=> b!7577327 (= e!4510380 (matchR!9658 (regTwo!40640 r!22341) s!13436))))

(declare-fun b!7577328 () Bool)

(assert (=> b!7577328 (= e!4510381 (= (++!17505 (_1!37760 (get!25598 lt!2652365)) (_2!37760 (get!25598 lt!2652365))) s!13436))))

(declare-fun b!7577329 () Bool)

(assert (=> b!7577329 (= e!4510382 None!17292)))

(declare-fun b!7577330 () Bool)

(assert (=> b!7577330 (= e!4510379 (not (isDefined!13939 lt!2652365)))))

(assert (= (and d!2318076 res!3035793) b!7577327))

(assert (= (and d!2318076 c!1397705) b!7577325))

(assert (= (and d!2318076 (not c!1397705)) b!7577326))

(assert (= (and b!7577326 c!1397706) b!7577329))

(assert (= (and b!7577326 (not c!1397706)) b!7577323))

(assert (= (and d!2318076 res!3035790) b!7577322))

(assert (= (and b!7577322 res!3035791) b!7577324))

(assert (= (and b!7577324 res!3035789) b!7577328))

(assert (= (and d!2318076 (not res!3035792)) b!7577330))

(declare-fun m!8134772 () Bool)

(assert (=> d!2318076 m!8134772))

(declare-fun m!8134774 () Bool)

(assert (=> d!2318076 m!8134774))

(assert (=> d!2318076 m!8134744))

(declare-fun m!8134776 () Bool)

(assert (=> b!7577328 m!8134776))

(declare-fun m!8134778 () Bool)

(assert (=> b!7577328 m!8134778))

(assert (=> b!7577324 m!8134776))

(declare-fun m!8134780 () Bool)

(assert (=> b!7577324 m!8134780))

(assert (=> b!7577322 m!8134776))

(declare-fun m!8134782 () Bool)

(assert (=> b!7577322 m!8134782))

(assert (=> b!7577330 m!8134772))

(declare-fun m!8134784 () Bool)

(assert (=> b!7577327 m!8134784))

(declare-fun m!8134786 () Bool)

(assert (=> b!7577323 m!8134786))

(assert (=> b!7577323 m!8134786))

(declare-fun m!8134788 () Bool)

(assert (=> b!7577323 m!8134788))

(declare-fun m!8134790 () Bool)

(assert (=> b!7577323 m!8134790))

(assert (=> b!7577323 m!8134786))

(declare-fun m!8134792 () Bool)

(assert (=> b!7577323 m!8134792))

(assert (=> b!7577097 d!2318076))

(declare-fun d!2318078 () Bool)

(assert (=> d!2318078 (= (Exists!4303 lambda!466827) (choose!58588 lambda!466827))))

(declare-fun bs!1940889 () Bool)

(assert (= bs!1940889 d!2318078))

(declare-fun m!8134794 () Bool)

(assert (=> bs!1940889 m!8134794))

(assert (=> b!7577097 d!2318078))

(declare-fun bs!1940890 () Bool)

(declare-fun b!7577382 () Bool)

(assert (= bs!1940890 (and b!7577382 d!2318066)))

(declare-fun lambda!466849 () Int)

(assert (=> bs!1940890 (not (= lambda!466849 lambda!466840))))

(declare-fun bs!1940891 () Bool)

(assert (= bs!1940891 (and b!7577382 d!2318068)))

(assert (=> bs!1940891 (not (= lambda!466849 lambda!466844))))

(declare-fun bs!1940892 () Bool)

(assert (= bs!1940892 (and b!7577382 b!7577097)))

(assert (=> bs!1940892 (not (= lambda!466849 lambda!466827))))

(assert (=> bs!1940892 (not (= lambda!466849 lambda!466826))))

(assert (=> bs!1940890 (not (= lambda!466849 lambda!466841))))

(assert (=> b!7577382 true))

(assert (=> b!7577382 true))

(declare-fun bs!1940893 () Bool)

(declare-fun b!7577381 () Bool)

(assert (= bs!1940893 (and b!7577381 d!2318066)))

(declare-fun lambda!466850 () Int)

(assert (=> bs!1940893 (not (= lambda!466850 lambda!466840))))

(declare-fun bs!1940894 () Bool)

(assert (= bs!1940894 (and b!7577381 d!2318068)))

(assert (=> bs!1940894 (not (= lambda!466850 lambda!466844))))

(declare-fun bs!1940895 () Bool)

(assert (= bs!1940895 (and b!7577381 b!7577097)))

(assert (=> bs!1940895 (= lambda!466850 lambda!466827)))

(assert (=> bs!1940895 (not (= lambda!466850 lambda!466826))))

(assert (=> bs!1940893 (= lambda!466850 lambda!466841)))

(declare-fun bs!1940896 () Bool)

(assert (= bs!1940896 (and b!7577381 b!7577382)))

(assert (=> bs!1940896 (not (= lambda!466850 lambda!466849))))

(assert (=> b!7577381 true))

(assert (=> b!7577381 true))

(declare-fun b!7577377 () Bool)

(declare-fun e!4510408 () Bool)

(assert (=> b!7577377 (= e!4510408 (= s!13436 (Cons!72823 (c!1397669 r!22341) Nil!72823)))))

(declare-fun d!2318080 () Bool)

(declare-fun c!1397719 () Bool)

(assert (=> d!2318080 (= c!1397719 (is-EmptyExpr!20064 r!22341))))

(declare-fun e!4510412 () Bool)

(assert (=> d!2318080 (= (matchRSpec!4381 r!22341 s!13436) e!4510412)))

(declare-fun bm!694575 () Bool)

(declare-fun call!694581 () Bool)

(assert (=> bm!694575 (= call!694581 (isEmpty!41492 s!13436))))

(declare-fun b!7577378 () Bool)

(declare-fun e!4510411 () Bool)

(assert (=> b!7577378 (= e!4510411 (matchRSpec!4381 (regTwo!40641 r!22341) s!13436))))

(declare-fun b!7577379 () Bool)

(declare-fun e!4510414 () Bool)

(declare-fun e!4510410 () Bool)

(assert (=> b!7577379 (= e!4510414 e!4510410)))

(declare-fun c!1397718 () Bool)

(assert (=> b!7577379 (= c!1397718 (is-Star!20064 r!22341))))

(declare-fun b!7577380 () Bool)

(declare-fun c!1397720 () Bool)

(assert (=> b!7577380 (= c!1397720 (is-ElementMatch!20064 r!22341))))

(declare-fun e!4510409 () Bool)

(assert (=> b!7577380 (= e!4510409 e!4510408)))

(declare-fun call!694580 () Bool)

(assert (=> b!7577381 (= e!4510410 call!694580)))

(declare-fun e!4510413 () Bool)

(assert (=> b!7577382 (= e!4510413 call!694580)))

(declare-fun bm!694576 () Bool)

(assert (=> bm!694576 (= call!694580 (Exists!4303 (ite c!1397718 lambda!466849 lambda!466850)))))

(declare-fun b!7577383 () Bool)

(declare-fun c!1397721 () Bool)

(assert (=> b!7577383 (= c!1397721 (is-Union!20064 r!22341))))

(assert (=> b!7577383 (= e!4510408 e!4510414)))

(declare-fun b!7577384 () Bool)

(assert (=> b!7577384 (= e!4510412 e!4510409)))

(declare-fun res!3035820 () Bool)

(assert (=> b!7577384 (= res!3035820 (not (is-EmptyLang!20064 r!22341)))))

(assert (=> b!7577384 (=> (not res!3035820) (not e!4510409))))

(declare-fun b!7577385 () Bool)

(assert (=> b!7577385 (= e!4510414 e!4510411)))

(declare-fun res!3035819 () Bool)

(assert (=> b!7577385 (= res!3035819 (matchRSpec!4381 (regOne!40641 r!22341) s!13436))))

(assert (=> b!7577385 (=> res!3035819 e!4510411)))

(declare-fun b!7577386 () Bool)

(assert (=> b!7577386 (= e!4510412 call!694581)))

(declare-fun b!7577387 () Bool)

(declare-fun res!3035818 () Bool)

(assert (=> b!7577387 (=> res!3035818 e!4510413)))

(assert (=> b!7577387 (= res!3035818 call!694581)))

(assert (=> b!7577387 (= e!4510410 e!4510413)))

(assert (= (and d!2318080 c!1397719) b!7577386))

(assert (= (and d!2318080 (not c!1397719)) b!7577384))

(assert (= (and b!7577384 res!3035820) b!7577380))

(assert (= (and b!7577380 c!1397720) b!7577377))

(assert (= (and b!7577380 (not c!1397720)) b!7577383))

(assert (= (and b!7577383 c!1397721) b!7577385))

(assert (= (and b!7577383 (not c!1397721)) b!7577379))

(assert (= (and b!7577385 (not res!3035819)) b!7577378))

(assert (= (and b!7577379 c!1397718) b!7577387))

(assert (= (and b!7577379 (not c!1397718)) b!7577381))

(assert (= (and b!7577387 (not res!3035818)) b!7577382))

(assert (= (or b!7577382 b!7577381) bm!694576))

(assert (= (or b!7577386 b!7577387) bm!694575))

(assert (=> bm!694575 m!8134656))

(declare-fun m!8134812 () Bool)

(assert (=> b!7577378 m!8134812))

(declare-fun m!8134814 () Bool)

(assert (=> bm!694576 m!8134814))

(declare-fun m!8134816 () Bool)

(assert (=> b!7577385 m!8134816))

(assert (=> b!7577098 d!2318080))

(declare-fun d!2318084 () Bool)

(declare-fun e!4510421 () Bool)

(assert (=> d!2318084 e!4510421))

(declare-fun c!1397723 () Bool)

(assert (=> d!2318084 (= c!1397723 (is-EmptyExpr!20064 r!22341))))

(declare-fun lt!2652371 () Bool)

(declare-fun e!4510417 () Bool)

(assert (=> d!2318084 (= lt!2652371 e!4510417)))

(declare-fun c!1397724 () Bool)

(assert (=> d!2318084 (= c!1397724 (isEmpty!41492 s!13436))))

(assert (=> d!2318084 (validRegex!10492 r!22341)))

(assert (=> d!2318084 (= (matchR!9658 r!22341 s!13436) lt!2652371)))

(declare-fun b!7577388 () Bool)

(declare-fun e!4510416 () Bool)

(assert (=> b!7577388 (= e!4510416 (not lt!2652371))))

(declare-fun b!7577389 () Bool)

(declare-fun res!3035822 () Bool)

(declare-fun e!4510415 () Bool)

(assert (=> b!7577389 (=> res!3035822 e!4510415)))

(declare-fun e!4510420 () Bool)

(assert (=> b!7577389 (= res!3035822 e!4510420)))

(declare-fun res!3035824 () Bool)

(assert (=> b!7577389 (=> (not res!3035824) (not e!4510420))))

(assert (=> b!7577389 (= res!3035824 lt!2652371)))

(declare-fun b!7577390 () Bool)

(declare-fun res!3035826 () Bool)

(assert (=> b!7577390 (=> (not res!3035826) (not e!4510420))))

(declare-fun call!694582 () Bool)

(assert (=> b!7577390 (= res!3035826 (not call!694582))))

(declare-fun b!7577391 () Bool)

(declare-fun e!4510418 () Bool)

(assert (=> b!7577391 (= e!4510418 (not (= (head!15586 s!13436) (c!1397669 r!22341))))))

(declare-fun b!7577392 () Bool)

(declare-fun e!4510419 () Bool)

(assert (=> b!7577392 (= e!4510419 e!4510418)))

(declare-fun res!3035821 () Bool)

(assert (=> b!7577392 (=> res!3035821 e!4510418)))

(assert (=> b!7577392 (= res!3035821 call!694582)))

(declare-fun bm!694577 () Bool)

(assert (=> bm!694577 (= call!694582 (isEmpty!41492 s!13436))))

(declare-fun b!7577393 () Bool)

(assert (=> b!7577393 (= e!4510421 e!4510416)))

(declare-fun c!1397722 () Bool)

(assert (=> b!7577393 (= c!1397722 (is-EmptyLang!20064 r!22341))))

(declare-fun b!7577394 () Bool)

(assert (=> b!7577394 (= e!4510417 (nullable!8757 r!22341))))

(declare-fun b!7577395 () Bool)

(declare-fun res!3035823 () Bool)

(assert (=> b!7577395 (=> res!3035823 e!4510415)))

(assert (=> b!7577395 (= res!3035823 (not (is-ElementMatch!20064 r!22341)))))

(assert (=> b!7577395 (= e!4510416 e!4510415)))

(declare-fun b!7577396 () Bool)

(declare-fun res!3035828 () Bool)

(assert (=> b!7577396 (=> res!3035828 e!4510418)))

(assert (=> b!7577396 (= res!3035828 (not (isEmpty!41492 (tail!15126 s!13436))))))

(declare-fun b!7577397 () Bool)

(declare-fun res!3035827 () Bool)

(assert (=> b!7577397 (=> (not res!3035827) (not e!4510420))))

(assert (=> b!7577397 (= res!3035827 (isEmpty!41492 (tail!15126 s!13436)))))

(declare-fun b!7577398 () Bool)

(assert (=> b!7577398 (= e!4510415 e!4510419)))

(declare-fun res!3035825 () Bool)

(assert (=> b!7577398 (=> (not res!3035825) (not e!4510419))))

(assert (=> b!7577398 (= res!3035825 (not lt!2652371))))

(declare-fun b!7577399 () Bool)

(assert (=> b!7577399 (= e!4510421 (= lt!2652371 call!694582))))

(declare-fun b!7577400 () Bool)

(assert (=> b!7577400 (= e!4510417 (matchR!9658 (derivativeStep!5786 r!22341 (head!15586 s!13436)) (tail!15126 s!13436)))))

(declare-fun b!7577401 () Bool)

(assert (=> b!7577401 (= e!4510420 (= (head!15586 s!13436) (c!1397669 r!22341)))))

(assert (= (and d!2318084 c!1397724) b!7577394))

(assert (= (and d!2318084 (not c!1397724)) b!7577400))

(assert (= (and d!2318084 c!1397723) b!7577399))

(assert (= (and d!2318084 (not c!1397723)) b!7577393))

(assert (= (and b!7577393 c!1397722) b!7577388))

(assert (= (and b!7577393 (not c!1397722)) b!7577395))

(assert (= (and b!7577395 (not res!3035823)) b!7577389))

(assert (= (and b!7577389 res!3035824) b!7577390))

(assert (= (and b!7577390 res!3035826) b!7577397))

(assert (= (and b!7577397 res!3035827) b!7577401))

(assert (= (and b!7577389 (not res!3035822)) b!7577398))

(assert (= (and b!7577398 res!3035825) b!7577392))

(assert (= (and b!7577392 (not res!3035821)) b!7577396))

(assert (= (and b!7577396 (not res!3035828)) b!7577391))

(assert (= (or b!7577399 b!7577390 b!7577392) bm!694577))

(declare-fun m!8134818 () Bool)

(assert (=> b!7577401 m!8134818))

(declare-fun m!8134820 () Bool)

(assert (=> b!7577394 m!8134820))

(assert (=> bm!694577 m!8134656))

(declare-fun m!8134822 () Bool)

(assert (=> b!7577396 m!8134822))

(assert (=> b!7577396 m!8134822))

(declare-fun m!8134824 () Bool)

(assert (=> b!7577396 m!8134824))

(assert (=> b!7577397 m!8134822))

(assert (=> b!7577397 m!8134822))

(assert (=> b!7577397 m!8134824))

(assert (=> b!7577400 m!8134818))

(assert (=> b!7577400 m!8134818))

(declare-fun m!8134826 () Bool)

(assert (=> b!7577400 m!8134826))

(assert (=> b!7577400 m!8134822))

(assert (=> b!7577400 m!8134826))

(assert (=> b!7577400 m!8134822))

(declare-fun m!8134828 () Bool)

(assert (=> b!7577400 m!8134828))

(assert (=> b!7577391 m!8134818))

(assert (=> d!2318084 m!8134656))

(assert (=> d!2318084 m!8134660))

(assert (=> b!7577098 d!2318084))

(declare-fun d!2318086 () Bool)

(assert (=> d!2318086 (= (matchR!9658 r!22341 s!13436) (matchRSpec!4381 r!22341 s!13436))))

(declare-fun lt!2652374 () Unit!167086)

(declare-fun choose!58591 (Regex!20064 List!72947) Unit!167086)

(assert (=> d!2318086 (= lt!2652374 (choose!58591 r!22341 s!13436))))

(assert (=> d!2318086 (validRegex!10492 r!22341)))

(assert (=> d!2318086 (= (mainMatchTheorem!4375 r!22341 s!13436) lt!2652374)))

(declare-fun bs!1940897 () Bool)

(assert (= bs!1940897 d!2318086))

(assert (=> bs!1940897 m!8134652))

(assert (=> bs!1940897 m!8134650))

(declare-fun m!8134830 () Bool)

(assert (=> bs!1940897 m!8134830))

(assert (=> bs!1940897 m!8134660))

(assert (=> b!7577098 d!2318086))

(declare-fun b!7577410 () Bool)

(declare-fun e!4510426 () Bool)

(declare-fun tp!2207896 () Bool)

(assert (=> b!7577410 (= e!4510426 (and tp_is_empty!50483 tp!2207896))))

(assert (=> b!7577100 (= tp!2207870 e!4510426)))

(assert (= (and b!7577100 (is-Cons!72823 (t!387682 s!13436))) b!7577410))

(declare-fun b!7577422 () Bool)

(declare-fun e!4510429 () Bool)

(declare-fun tp!2207907 () Bool)

(declare-fun tp!2207910 () Bool)

(assert (=> b!7577422 (= e!4510429 (and tp!2207907 tp!2207910))))

(declare-fun b!7577421 () Bool)

(assert (=> b!7577421 (= e!4510429 tp_is_empty!50483)))

(declare-fun b!7577424 () Bool)

(declare-fun tp!2207909 () Bool)

(declare-fun tp!2207911 () Bool)

(assert (=> b!7577424 (= e!4510429 (and tp!2207909 tp!2207911))))

(assert (=> b!7577101 (= tp!2207873 e!4510429)))

(declare-fun b!7577423 () Bool)

(declare-fun tp!2207908 () Bool)

(assert (=> b!7577423 (= e!4510429 tp!2207908)))

(assert (= (and b!7577101 (is-ElementMatch!20064 (regOne!40641 r!22341))) b!7577421))

(assert (= (and b!7577101 (is-Concat!28909 (regOne!40641 r!22341))) b!7577422))

(assert (= (and b!7577101 (is-Star!20064 (regOne!40641 r!22341))) b!7577423))

(assert (= (and b!7577101 (is-Union!20064 (regOne!40641 r!22341))) b!7577424))

(declare-fun b!7577426 () Bool)

(declare-fun e!4510430 () Bool)

(declare-fun tp!2207912 () Bool)

(declare-fun tp!2207915 () Bool)

(assert (=> b!7577426 (= e!4510430 (and tp!2207912 tp!2207915))))

(declare-fun b!7577425 () Bool)

(assert (=> b!7577425 (= e!4510430 tp_is_empty!50483)))

(declare-fun b!7577428 () Bool)

(declare-fun tp!2207914 () Bool)

(declare-fun tp!2207916 () Bool)

(assert (=> b!7577428 (= e!4510430 (and tp!2207914 tp!2207916))))

(assert (=> b!7577101 (= tp!2207872 e!4510430)))

(declare-fun b!7577427 () Bool)

(declare-fun tp!2207913 () Bool)

(assert (=> b!7577427 (= e!4510430 tp!2207913)))

(assert (= (and b!7577101 (is-ElementMatch!20064 (regTwo!40641 r!22341))) b!7577425))

(assert (= (and b!7577101 (is-Concat!28909 (regTwo!40641 r!22341))) b!7577426))

(assert (= (and b!7577101 (is-Star!20064 (regTwo!40641 r!22341))) b!7577427))

(assert (= (and b!7577101 (is-Union!20064 (regTwo!40641 r!22341))) b!7577428))

(declare-fun b!7577430 () Bool)

(declare-fun e!4510431 () Bool)

(declare-fun tp!2207917 () Bool)

(declare-fun tp!2207920 () Bool)

(assert (=> b!7577430 (= e!4510431 (and tp!2207917 tp!2207920))))

(declare-fun b!7577429 () Bool)

(assert (=> b!7577429 (= e!4510431 tp_is_empty!50483)))

(declare-fun b!7577432 () Bool)

(declare-fun tp!2207919 () Bool)

(declare-fun tp!2207921 () Bool)

(assert (=> b!7577432 (= e!4510431 (and tp!2207919 tp!2207921))))

(assert (=> b!7577103 (= tp!2207874 e!4510431)))

(declare-fun b!7577431 () Bool)

(declare-fun tp!2207918 () Bool)

(assert (=> b!7577431 (= e!4510431 tp!2207918)))

(assert (= (and b!7577103 (is-ElementMatch!20064 (regOne!40640 r!22341))) b!7577429))

(assert (= (and b!7577103 (is-Concat!28909 (regOne!40640 r!22341))) b!7577430))

(assert (= (and b!7577103 (is-Star!20064 (regOne!40640 r!22341))) b!7577431))

(assert (= (and b!7577103 (is-Union!20064 (regOne!40640 r!22341))) b!7577432))

(declare-fun b!7577434 () Bool)

(declare-fun e!4510432 () Bool)

(declare-fun tp!2207922 () Bool)

(declare-fun tp!2207925 () Bool)

(assert (=> b!7577434 (= e!4510432 (and tp!2207922 tp!2207925))))

(declare-fun b!7577433 () Bool)

(assert (=> b!7577433 (= e!4510432 tp_is_empty!50483)))

(declare-fun b!7577436 () Bool)

(declare-fun tp!2207924 () Bool)

(declare-fun tp!2207926 () Bool)

(assert (=> b!7577436 (= e!4510432 (and tp!2207924 tp!2207926))))

(assert (=> b!7577103 (= tp!2207875 e!4510432)))

(declare-fun b!7577435 () Bool)

(declare-fun tp!2207923 () Bool)

(assert (=> b!7577435 (= e!4510432 tp!2207923)))

(assert (= (and b!7577103 (is-ElementMatch!20064 (regTwo!40640 r!22341))) b!7577433))

(assert (= (and b!7577103 (is-Concat!28909 (regTwo!40640 r!22341))) b!7577434))

(assert (= (and b!7577103 (is-Star!20064 (regTwo!40640 r!22341))) b!7577435))

(assert (= (and b!7577103 (is-Union!20064 (regTwo!40640 r!22341))) b!7577436))

(declare-fun b!7577438 () Bool)

(declare-fun e!4510433 () Bool)

(declare-fun tp!2207927 () Bool)

(declare-fun tp!2207930 () Bool)

(assert (=> b!7577438 (= e!4510433 (and tp!2207927 tp!2207930))))

(declare-fun b!7577437 () Bool)

(assert (=> b!7577437 (= e!4510433 tp_is_empty!50483)))

(declare-fun b!7577440 () Bool)

(declare-fun tp!2207929 () Bool)

(declare-fun tp!2207931 () Bool)

(assert (=> b!7577440 (= e!4510433 (and tp!2207929 tp!2207931))))

(assert (=> b!7577099 (= tp!2207871 e!4510433)))

(declare-fun b!7577439 () Bool)

(declare-fun tp!2207928 () Bool)

(assert (=> b!7577439 (= e!4510433 tp!2207928)))

(assert (= (and b!7577099 (is-ElementMatch!20064 (reg!20393 r!22341))) b!7577437))

(assert (= (and b!7577099 (is-Concat!28909 (reg!20393 r!22341))) b!7577438))

(assert (= (and b!7577099 (is-Star!20064 (reg!20393 r!22341))) b!7577439))

(assert (= (and b!7577099 (is-Union!20064 (reg!20393 r!22341))) b!7577440))

(push 1)

(assert (not b!7577324))

(assert (not b!7577396))

(assert (not b!7577185))

(assert (not b!7577323))

(assert (not bm!694567))

(assert (not bm!694548))

(assert (not b!7577328))

(assert (not b!7577427))

(assert (not d!2318086))

(assert (not b!7577424))

(assert (not b!7577271))

(assert (not d!2318064))

(assert (not d!2318062))

(assert (not b!7577439))

(assert (not b!7577322))

(assert (not b!7577268))

(assert tp_is_empty!50483)

(assert (not b!7577440))

(assert (not b!7577194))

(assert (not b!7577195))

(assert (not d!2318052))

(assert (not bm!694555))

(assert (not b!7577391))

(assert (not d!2318078))

(assert (not b!7577394))

(assert (not b!7577270))

(assert (not b!7577422))

(assert (not b!7577431))

(assert (not bm!694557))

(assert (not bm!694575))

(assert (not b!7577190))

(assert (not b!7577188))

(assert (not b!7577265))

(assert (not b!7577397))

(assert (not b!7577423))

(assert (not d!2318068))

(assert (not b!7577438))

(assert (not b!7577327))

(assert (not b!7577274))

(assert (not d!2318084))

(assert (not d!2318076))

(assert (not b!7577430))

(assert (not d!2318066))

(assert (not b!7577330))

(assert (not b!7577275))

(assert (not b!7577435))

(assert (not b!7577191))

(assert (not b!7577432))

(assert (not b!7577378))

(assert (not b!7577385))

(assert (not d!2318058))

(assert (not b!7577426))

(assert (not d!2318074))

(assert (not b!7577428))

(assert (not bm!694576))

(assert (not b!7577434))

(assert (not b!7577216))

(assert (not bm!694577))

(assert (not b!7577436))

(assert (not b!7577410))

(assert (not b!7577400))

(assert (not b!7577401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

