; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!246486 () Bool)

(assert start!246486)

(declare-fun b!2532207 () Bool)

(declare-fun res!1068841 () Bool)

(declare-fun e!1602254 () Bool)

(assert (=> b!2532207 (=> (not res!1068841) (not e!1602254))))

(declare-datatypes ((C!15242 0))(
  ( (C!15243 (val!9273 Int)) )
))
(declare-datatypes ((Regex!7542 0))(
  ( (ElementMatch!7542 (c!404544 C!15242)) (Concat!12238 (regOne!15596 Regex!7542) (regTwo!15596 Regex!7542)) (EmptyExpr!7542) (Star!7542 (reg!7871 Regex!7542)) (EmptyLang!7542) (Union!7542 (regOne!15597 Regex!7542) (regTwo!15597 Regex!7542)) )
))
(declare-fun lt!901302 () Regex!7542)

(declare-fun r!27340 () Regex!7542)

(declare-fun c!14016 () C!15242)

(assert (=> b!2532207 (= res!1068841 (and (not (is-EmptyExpr!7542 r!27340)) (not (is-EmptyLang!7542 r!27340)) (is-ElementMatch!7542 r!27340) (not (= c!14016 (c!404544 r!27340))) (= lt!901302 EmptyLang!7542)))))

(declare-fun b!2532208 () Bool)

(assert (=> b!2532208 (= e!1602254 (not false))))

(declare-fun lt!901303 () Regex!7542)

(assert (=> b!2532208 (= lt!901303 lt!901302)))

(declare-datatypes ((Unit!43301 0))(
  ( (Unit!43302) )
))
(declare-fun lt!901301 () Unit!43301)

(declare-datatypes ((List!29607 0))(
  ( (Nil!29507) (Cons!29507 (h!34927 C!15242) (t!211306 List!29607)) )
))
(declare-fun tl!4068 () List!29607)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!55 (Regex!7542 List!29607) Unit!43301)

(assert (=> b!2532208 (= lt!901301 (lemmaEmptyLangDerivativeIsAFixPoint!55 lt!901302 tl!4068))))

(declare-fun res!1068843 () Bool)

(declare-fun e!1602252 () Bool)

(assert (=> start!246486 (=> (not res!1068843) (not e!1602252))))

(declare-fun validRegex!3168 (Regex!7542) Bool)

(assert (=> start!246486 (= res!1068843 (validRegex!3168 r!27340))))

(assert (=> start!246486 e!1602252))

(declare-fun e!1602251 () Bool)

(assert (=> start!246486 e!1602251))

(declare-fun tp_is_empty!12939 () Bool)

(assert (=> start!246486 tp_is_empty!12939))

(declare-fun e!1602253 () Bool)

(assert (=> start!246486 e!1602253))

(declare-fun b!2532209 () Bool)

(declare-fun tp!808758 () Bool)

(assert (=> b!2532209 (= e!1602251 tp!808758)))

(declare-fun b!2532210 () Bool)

(declare-fun tp!808756 () Bool)

(declare-fun tp!808760 () Bool)

(assert (=> b!2532210 (= e!1602251 (and tp!808756 tp!808760))))

(declare-fun b!2532211 () Bool)

(assert (=> b!2532211 (= e!1602251 tp_is_empty!12939)))

(declare-fun b!2532212 () Bool)

(assert (=> b!2532212 (= e!1602252 e!1602254)))

(declare-fun res!1068842 () Bool)

(assert (=> b!2532212 (=> (not res!1068842) (not e!1602254))))

(declare-fun nullable!2459 (Regex!7542) Bool)

(assert (=> b!2532212 (= res!1068842 (nullable!2459 lt!901303))))

(declare-fun derivative!237 (Regex!7542 List!29607) Regex!7542)

(assert (=> b!2532212 (= lt!901303 (derivative!237 lt!901302 tl!4068))))

(declare-fun derivativeStep!2111 (Regex!7542 C!15242) Regex!7542)

(assert (=> b!2532212 (= lt!901302 (derivativeStep!2111 r!27340 c!14016))))

(declare-fun b!2532213 () Bool)

(declare-fun tp!808755 () Bool)

(declare-fun tp!808757 () Bool)

(assert (=> b!2532213 (= e!1602251 (and tp!808755 tp!808757))))

(declare-fun b!2532214 () Bool)

(declare-fun tp!808759 () Bool)

(assert (=> b!2532214 (= e!1602253 (and tp_is_empty!12939 tp!808759))))

(assert (= (and start!246486 res!1068843) b!2532212))

(assert (= (and b!2532212 res!1068842) b!2532207))

(assert (= (and b!2532207 res!1068841) b!2532208))

(assert (= (and start!246486 (is-ElementMatch!7542 r!27340)) b!2532211))

(assert (= (and start!246486 (is-Concat!12238 r!27340)) b!2532210))

(assert (= (and start!246486 (is-Star!7542 r!27340)) b!2532209))

(assert (= (and start!246486 (is-Union!7542 r!27340)) b!2532213))

(assert (= (and start!246486 (is-Cons!29507 tl!4068)) b!2532214))

(declare-fun m!2882709 () Bool)

(assert (=> b!2532208 m!2882709))

(declare-fun m!2882711 () Bool)

(assert (=> start!246486 m!2882711))

(declare-fun m!2882713 () Bool)

(assert (=> b!2532212 m!2882713))

(declare-fun m!2882715 () Bool)

(assert (=> b!2532212 m!2882715))

(declare-fun m!2882717 () Bool)

(assert (=> b!2532212 m!2882717))

(push 1)

(assert (not b!2532208))

(assert (not b!2532213))

(assert (not b!2532214))

(assert (not b!2532209))

(assert tp_is_empty!12939)

(assert (not b!2532212))

(assert (not start!246486))

(assert (not b!2532210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!720053 () Bool)

(declare-fun res!1068866 () Bool)

(declare-fun e!1602283 () Bool)

(assert (=> d!720053 (=> res!1068866 e!1602283)))

(assert (=> d!720053 (= res!1068866 (is-ElementMatch!7542 r!27340))))

(assert (=> d!720053 (= (validRegex!3168 r!27340) e!1602283)))

(declare-fun bm!158799 () Bool)

(declare-fun call!158805 () Bool)

(declare-fun c!404551 () Bool)

(assert (=> bm!158799 (= call!158805 (validRegex!3168 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))))))

(declare-fun b!2532257 () Bool)

(declare-fun e!1602285 () Bool)

(declare-fun e!1602286 () Bool)

(assert (=> b!2532257 (= e!1602285 e!1602286)))

(declare-fun res!1068864 () Bool)

(assert (=> b!2532257 (= res!1068864 (not (nullable!2459 (reg!7871 r!27340))))))

(assert (=> b!2532257 (=> (not res!1068864) (not e!1602286))))

(declare-fun b!2532258 () Bool)

(declare-fun res!1068867 () Bool)

(declare-fun e!1602284 () Bool)

(assert (=> b!2532258 (=> res!1068867 e!1602284)))

(assert (=> b!2532258 (= res!1068867 (not (is-Concat!12238 r!27340)))))

(declare-fun e!1602282 () Bool)

(assert (=> b!2532258 (= e!1602282 e!1602284)))

(declare-fun b!2532259 () Bool)

(declare-fun e!1602281 () Bool)

(assert (=> b!2532259 (= e!1602281 call!158805)))

(declare-fun b!2532260 () Bool)

(assert (=> b!2532260 (= e!1602283 e!1602285)))

(declare-fun c!404550 () Bool)

(assert (=> b!2532260 (= c!404550 (is-Star!7542 r!27340))))

(declare-fun b!2532261 () Bool)

(assert (=> b!2532261 (= e!1602284 e!1602281)))

(declare-fun res!1068865 () Bool)

(assert (=> b!2532261 (=> (not res!1068865) (not e!1602281))))

(declare-fun call!158806 () Bool)

(assert (=> b!2532261 (= res!1068865 call!158806)))

(declare-fun b!2532262 () Bool)

(assert (=> b!2532262 (= e!1602285 e!1602282)))

(assert (=> b!2532262 (= c!404551 (is-Union!7542 r!27340))))

(declare-fun b!2532263 () Bool)

(declare-fun e!1602287 () Bool)

(assert (=> b!2532263 (= e!1602287 call!158806)))

(declare-fun call!158804 () Bool)

(declare-fun bm!158800 () Bool)

(assert (=> bm!158800 (= call!158804 (validRegex!3168 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))))))

(declare-fun b!2532264 () Bool)

(assert (=> b!2532264 (= e!1602286 call!158804)))

(declare-fun bm!158801 () Bool)

(assert (=> bm!158801 (= call!158806 call!158804)))

(declare-fun b!2532265 () Bool)

(declare-fun res!1068863 () Bool)

(assert (=> b!2532265 (=> (not res!1068863) (not e!1602287))))

(assert (=> b!2532265 (= res!1068863 call!158805)))

(assert (=> b!2532265 (= e!1602282 e!1602287)))

(assert (= (and d!720053 (not res!1068866)) b!2532260))

(assert (= (and b!2532260 c!404550) b!2532257))

(assert (= (and b!2532260 (not c!404550)) b!2532262))

(assert (= (and b!2532257 res!1068864) b!2532264))

(assert (= (and b!2532262 c!404551) b!2532265))

(assert (= (and b!2532262 (not c!404551)) b!2532258))

(assert (= (and b!2532265 res!1068863) b!2532263))

(assert (= (and b!2532258 (not res!1068867)) b!2532261))

(assert (= (and b!2532261 res!1068865) b!2532259))

(assert (= (or b!2532265 b!2532259) bm!158799))

(assert (= (or b!2532263 b!2532261) bm!158801))

(assert (= (or b!2532264 bm!158801) bm!158800))

(declare-fun m!2882731 () Bool)

(assert (=> bm!158799 m!2882731))

(declare-fun m!2882733 () Bool)

(assert (=> b!2532257 m!2882733))

(declare-fun m!2882735 () Bool)

(assert (=> bm!158800 m!2882735))

(assert (=> start!246486 d!720053))

(declare-fun d!720059 () Bool)

(assert (=> d!720059 (= (derivative!237 lt!901302 tl!4068) lt!901302)))

(declare-fun lt!901317 () Unit!43301)

(declare-fun choose!15010 (Regex!7542 List!29607) Unit!43301)

(assert (=> d!720059 (= lt!901317 (choose!15010 lt!901302 tl!4068))))

(assert (=> d!720059 (= lt!901302 EmptyLang!7542)))

(assert (=> d!720059 (= (lemmaEmptyLangDerivativeIsAFixPoint!55 lt!901302 tl!4068) lt!901317)))

(declare-fun bs!469227 () Bool)

(assert (= bs!469227 d!720059))

(assert (=> bs!469227 m!2882715))

(declare-fun m!2882737 () Bool)

(assert (=> bs!469227 m!2882737))

(assert (=> b!2532208 d!720059))

(declare-fun d!720061 () Bool)

(declare-fun nullableFct!693 (Regex!7542) Bool)

(assert (=> d!720061 (= (nullable!2459 lt!901303) (nullableFct!693 lt!901303))))

(declare-fun bs!469228 () Bool)

(assert (= bs!469228 d!720061))

(declare-fun m!2882739 () Bool)

(assert (=> bs!469228 m!2882739))

(assert (=> b!2532212 d!720061))

(declare-fun d!720063 () Bool)

(declare-fun lt!901321 () Regex!7542)

(assert (=> d!720063 (validRegex!3168 lt!901321)))

(declare-fun e!1602293 () Regex!7542)

(assert (=> d!720063 (= lt!901321 e!1602293)))

(declare-fun c!404557 () Bool)

(assert (=> d!720063 (= c!404557 (is-Cons!29507 tl!4068))))

(assert (=> d!720063 (validRegex!3168 lt!901302)))

(assert (=> d!720063 (= (derivative!237 lt!901302 tl!4068) lt!901321)))

(declare-fun b!2532276 () Bool)

(assert (=> b!2532276 (= e!1602293 (derivative!237 (derivativeStep!2111 lt!901302 (h!34927 tl!4068)) (t!211306 tl!4068)))))

(declare-fun b!2532277 () Bool)

(assert (=> b!2532277 (= e!1602293 lt!901302)))

(assert (= (and d!720063 c!404557) b!2532276))

(assert (= (and d!720063 (not c!404557)) b!2532277))

(declare-fun m!2882749 () Bool)

(assert (=> d!720063 m!2882749))

(declare-fun m!2882751 () Bool)

(assert (=> d!720063 m!2882751))

(declare-fun m!2882753 () Bool)

(assert (=> b!2532276 m!2882753))

(assert (=> b!2532276 m!2882753))

(declare-fun m!2882755 () Bool)

(assert (=> b!2532276 m!2882755))

(assert (=> b!2532212 d!720063))

(declare-fun bm!158810 () Bool)

(declare-fun call!158817 () Regex!7542)

(declare-fun call!158816 () Regex!7542)

(assert (=> bm!158810 (= call!158817 call!158816)))

(declare-fun b!2532300 () Bool)

(declare-fun e!1602307 () Regex!7542)

(declare-fun e!1602304 () Regex!7542)

(assert (=> b!2532300 (= e!1602307 e!1602304)))

(declare-fun c!404570 () Bool)

(assert (=> b!2532300 (= c!404570 (is-ElementMatch!7542 r!27340))))

(declare-fun bm!158811 () Bool)

(declare-fun call!158818 () Regex!7542)

(assert (=> bm!158811 (= call!158816 call!158818)))

(declare-fun b!2532301 () Bool)

(declare-fun e!1602305 () Regex!7542)

(declare-fun e!1602306 () Regex!7542)

(assert (=> b!2532301 (= e!1602305 e!1602306)))

(declare-fun c!404571 () Bool)

(assert (=> b!2532301 (= c!404571 (is-Star!7542 r!27340))))

(declare-fun b!2532302 () Bool)

(assert (=> b!2532302 (= e!1602304 (ite (= c!14016 (c!404544 r!27340)) EmptyExpr!7542 EmptyLang!7542))))

(declare-fun c!404572 () Bool)

(declare-fun bm!158812 () Bool)

(assert (=> bm!158812 (= call!158818 (derivativeStep!2111 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))) c!14016))))

(declare-fun b!2532303 () Bool)

(declare-fun call!158815 () Regex!7542)

(assert (=> b!2532303 (= e!1602305 (Union!7542 call!158818 call!158815))))

(declare-fun b!2532304 () Bool)

(assert (=> b!2532304 (= e!1602306 (Concat!12238 call!158816 r!27340))))

(declare-fun b!2532305 () Bool)

(declare-fun c!404569 () Bool)

(assert (=> b!2532305 (= c!404569 (nullable!2459 (regOne!15596 r!27340)))))

(declare-fun e!1602308 () Regex!7542)

(assert (=> b!2532305 (= e!1602306 e!1602308)))

(declare-fun d!720067 () Bool)

(declare-fun lt!901326 () Regex!7542)

(assert (=> d!720067 (validRegex!3168 lt!901326)))

(assert (=> d!720067 (= lt!901326 e!1602307)))

(declare-fun c!404568 () Bool)

(assert (=> d!720067 (= c!404568 (or (is-EmptyExpr!7542 r!27340) (is-EmptyLang!7542 r!27340)))))

(assert (=> d!720067 (validRegex!3168 r!27340)))

(assert (=> d!720067 (= (derivativeStep!2111 r!27340 c!14016) lt!901326)))

(declare-fun b!2532306 () Bool)

(assert (=> b!2532306 (= e!1602308 (Union!7542 (Concat!12238 call!158817 (regTwo!15596 r!27340)) EmptyLang!7542))))

(declare-fun b!2532307 () Bool)

(assert (=> b!2532307 (= e!1602307 EmptyLang!7542)))

(declare-fun b!2532308 () Bool)

(assert (=> b!2532308 (= e!1602308 (Union!7542 (Concat!12238 call!158817 (regTwo!15596 r!27340)) call!158815))))

(declare-fun bm!158813 () Bool)

(assert (=> bm!158813 (= call!158815 (derivativeStep!2111 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)) c!14016))))

(declare-fun b!2532309 () Bool)

(assert (=> b!2532309 (= c!404572 (is-Union!7542 r!27340))))

(assert (=> b!2532309 (= e!1602304 e!1602305)))

(assert (= (and d!720067 c!404568) b!2532307))

(assert (= (and d!720067 (not c!404568)) b!2532300))

(assert (= (and b!2532300 c!404570) b!2532302))

(assert (= (and b!2532300 (not c!404570)) b!2532309))

(assert (= (and b!2532309 c!404572) b!2532303))

(assert (= (and b!2532309 (not c!404572)) b!2532301))

(assert (= (and b!2532301 c!404571) b!2532304))

(assert (= (and b!2532301 (not c!404571)) b!2532305))

(assert (= (and b!2532305 c!404569) b!2532308))

(assert (= (and b!2532305 (not c!404569)) b!2532306))

(assert (= (or b!2532308 b!2532306) bm!158810))

(assert (= (or b!2532304 bm!158810) bm!158811))

(assert (= (or b!2532303 b!2532308) bm!158813))

(assert (= (or b!2532303 bm!158811) bm!158812))

(declare-fun m!2882757 () Bool)

(assert (=> bm!158812 m!2882757))

(declare-fun m!2882759 () Bool)

(assert (=> b!2532305 m!2882759))

(declare-fun m!2882761 () Bool)

(assert (=> d!720067 m!2882761))

(assert (=> d!720067 m!2882711))

(declare-fun m!2882763 () Bool)

(assert (=> bm!158813 m!2882763))

(assert (=> b!2532212 d!720067))

(declare-fun b!2532338 () Bool)

(declare-fun e!1602321 () Bool)

(assert (=> b!2532338 (= e!1602321 tp_is_empty!12939)))

(declare-fun b!2532340 () Bool)

(declare-fun tp!808790 () Bool)

(assert (=> b!2532340 (= e!1602321 tp!808790)))

(declare-fun b!2532341 () Bool)

(declare-fun tp!808792 () Bool)

(declare-fun tp!808793 () Bool)

(assert (=> b!2532341 (= e!1602321 (and tp!808792 tp!808793))))

(declare-fun b!2532339 () Bool)

(declare-fun tp!808789 () Bool)

(declare-fun tp!808791 () Bool)

(assert (=> b!2532339 (= e!1602321 (and tp!808789 tp!808791))))

(assert (=> b!2532210 (= tp!808756 e!1602321)))

(assert (= (and b!2532210 (is-ElementMatch!7542 (regOne!15596 r!27340))) b!2532338))

(assert (= (and b!2532210 (is-Concat!12238 (regOne!15596 r!27340))) b!2532339))

(assert (= (and b!2532210 (is-Star!7542 (regOne!15596 r!27340))) b!2532340))

(assert (= (and b!2532210 (is-Union!7542 (regOne!15596 r!27340))) b!2532341))

(declare-fun b!2532342 () Bool)

(declare-fun e!1602322 () Bool)

(assert (=> b!2532342 (= e!1602322 tp_is_empty!12939)))

(declare-fun b!2532344 () Bool)

(declare-fun tp!808795 () Bool)

(assert (=> b!2532344 (= e!1602322 tp!808795)))

(declare-fun b!2532345 () Bool)

(declare-fun tp!808797 () Bool)

(declare-fun tp!808798 () Bool)

(assert (=> b!2532345 (= e!1602322 (and tp!808797 tp!808798))))

(declare-fun b!2532343 () Bool)

(declare-fun tp!808794 () Bool)

(declare-fun tp!808796 () Bool)

(assert (=> b!2532343 (= e!1602322 (and tp!808794 tp!808796))))

(assert (=> b!2532210 (= tp!808760 e!1602322)))

(assert (= (and b!2532210 (is-ElementMatch!7542 (regTwo!15596 r!27340))) b!2532342))

(assert (= (and b!2532210 (is-Concat!12238 (regTwo!15596 r!27340))) b!2532343))

(assert (= (and b!2532210 (is-Star!7542 (regTwo!15596 r!27340))) b!2532344))

(assert (= (and b!2532210 (is-Union!7542 (regTwo!15596 r!27340))) b!2532345))

(declare-fun b!2532346 () Bool)

(declare-fun e!1602323 () Bool)

(assert (=> b!2532346 (= e!1602323 tp_is_empty!12939)))

(declare-fun b!2532348 () Bool)

(declare-fun tp!808800 () Bool)

(assert (=> b!2532348 (= e!1602323 tp!808800)))

(declare-fun b!2532349 () Bool)

(declare-fun tp!808802 () Bool)

(declare-fun tp!808803 () Bool)

(assert (=> b!2532349 (= e!1602323 (and tp!808802 tp!808803))))

(declare-fun b!2532347 () Bool)

(declare-fun tp!808799 () Bool)

(declare-fun tp!808801 () Bool)

(assert (=> b!2532347 (= e!1602323 (and tp!808799 tp!808801))))

(assert (=> b!2532209 (= tp!808758 e!1602323)))

(assert (= (and b!2532209 (is-ElementMatch!7542 (reg!7871 r!27340))) b!2532346))

(assert (= (and b!2532209 (is-Concat!12238 (reg!7871 r!27340))) b!2532347))

(assert (= (and b!2532209 (is-Star!7542 (reg!7871 r!27340))) b!2532348))

(assert (= (and b!2532209 (is-Union!7542 (reg!7871 r!27340))) b!2532349))

(declare-fun b!2532354 () Bool)

(declare-fun e!1602326 () Bool)

(declare-fun tp!808806 () Bool)

(assert (=> b!2532354 (= e!1602326 (and tp_is_empty!12939 tp!808806))))

(assert (=> b!2532214 (= tp!808759 e!1602326)))

(assert (= (and b!2532214 (is-Cons!29507 (t!211306 tl!4068))) b!2532354))

(declare-fun b!2532355 () Bool)

(declare-fun e!1602327 () Bool)

(assert (=> b!2532355 (= e!1602327 tp_is_empty!12939)))

(declare-fun b!2532357 () Bool)

(declare-fun tp!808808 () Bool)

(assert (=> b!2532357 (= e!1602327 tp!808808)))

(declare-fun b!2532358 () Bool)

(declare-fun tp!808810 () Bool)

(declare-fun tp!808811 () Bool)

(assert (=> b!2532358 (= e!1602327 (and tp!808810 tp!808811))))

(declare-fun b!2532356 () Bool)

(declare-fun tp!808807 () Bool)

(declare-fun tp!808809 () Bool)

(assert (=> b!2532356 (= e!1602327 (and tp!808807 tp!808809))))

(assert (=> b!2532213 (= tp!808755 e!1602327)))

(assert (= (and b!2532213 (is-ElementMatch!7542 (regOne!15597 r!27340))) b!2532355))

(assert (= (and b!2532213 (is-Concat!12238 (regOne!15597 r!27340))) b!2532356))

(assert (= (and b!2532213 (is-Star!7542 (regOne!15597 r!27340))) b!2532357))

(assert (= (and b!2532213 (is-Union!7542 (regOne!15597 r!27340))) b!2532358))

(declare-fun b!2532359 () Bool)

(declare-fun e!1602328 () Bool)

(assert (=> b!2532359 (= e!1602328 tp_is_empty!12939)))

(declare-fun b!2532361 () Bool)

(declare-fun tp!808813 () Bool)

(assert (=> b!2532361 (= e!1602328 tp!808813)))

(declare-fun b!2532362 () Bool)

(declare-fun tp!808815 () Bool)

(declare-fun tp!808816 () Bool)

(assert (=> b!2532362 (= e!1602328 (and tp!808815 tp!808816))))

(declare-fun b!2532360 () Bool)

(declare-fun tp!808812 () Bool)

(declare-fun tp!808814 () Bool)

(assert (=> b!2532360 (= e!1602328 (and tp!808812 tp!808814))))

(assert (=> b!2532213 (= tp!808757 e!1602328)))

(assert (= (and b!2532213 (is-ElementMatch!7542 (regTwo!15597 r!27340))) b!2532359))

(assert (= (and b!2532213 (is-Concat!12238 (regTwo!15597 r!27340))) b!2532360))

(assert (= (and b!2532213 (is-Star!7542 (regTwo!15597 r!27340))) b!2532361))

(assert (= (and b!2532213 (is-Union!7542 (regTwo!15597 r!27340))) b!2532362))

(push 1)

(assert (not b!2532358))

(assert (not b!2532360))

(assert (not b!2532341))

(assert (not b!2532356))

(assert (not b!2532340))

(assert (not b!2532349))

(assert (not d!720063))

(assert (not b!2532348))

(assert (not b!2532339))

(assert (not b!2532357))

(assert (not b!2532345))

(assert (not b!2532354))

(assert (not bm!158799))

(assert (not d!720061))

(assert (not b!2532276))

(assert (not b!2532305))

(assert (not b!2532361))

(assert (not b!2532362))

(assert (not b!2532347))

(assert (not bm!158812))

(assert (not b!2532344))

(assert (not d!720059))

(assert (not bm!158800))

(assert (not d!720067))

(assert (not b!2532257))

(assert (not bm!158813))

(assert (not b!2532343))

(assert tp_is_empty!12939)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!158835 () Bool)

(declare-fun call!158842 () Regex!7542)

(declare-fun call!158841 () Regex!7542)

(assert (=> bm!158835 (= call!158842 call!158841)))

(declare-fun b!2532435 () Bool)

(declare-fun e!1602368 () Regex!7542)

(declare-fun e!1602365 () Regex!7542)

(assert (=> b!2532435 (= e!1602368 e!1602365)))

(declare-fun c!404596 () Bool)

(assert (=> b!2532435 (= c!404596 (is-ElementMatch!7542 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))))))

(declare-fun bm!158836 () Bool)

(declare-fun call!158843 () Regex!7542)

(assert (=> bm!158836 (= call!158841 call!158843)))

(declare-fun b!2532436 () Bool)

(declare-fun e!1602366 () Regex!7542)

(declare-fun e!1602367 () Regex!7542)

(assert (=> b!2532436 (= e!1602366 e!1602367)))

(declare-fun c!404597 () Bool)

(assert (=> b!2532436 (= c!404597 (is-Star!7542 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))))))

(declare-fun b!2532437 () Bool)

(assert (=> b!2532437 (= e!1602365 (ite (= c!14016 (c!404544 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))) EmptyExpr!7542 EmptyLang!7542))))

(declare-fun c!404598 () Bool)

(declare-fun bm!158837 () Bool)

(assert (=> bm!158837 (= call!158843 (derivativeStep!2111 (ite c!404598 (regOne!15597 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))) (ite c!404597 (reg!7871 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))) (regOne!15596 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))))) c!14016))))

(declare-fun b!2532438 () Bool)

(declare-fun call!158840 () Regex!7542)

(assert (=> b!2532438 (= e!1602366 (Union!7542 call!158843 call!158840))))

(declare-fun b!2532439 () Bool)

(assert (=> b!2532439 (= e!1602367 (Concat!12238 call!158841 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))))))

(declare-fun b!2532440 () Bool)

(declare-fun c!404595 () Bool)

(assert (=> b!2532440 (= c!404595 (nullable!2459 (regOne!15596 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))))))

(declare-fun e!1602369 () Regex!7542)

(assert (=> b!2532440 (= e!1602367 e!1602369)))

(declare-fun d!720073 () Bool)

(declare-fun lt!901331 () Regex!7542)

(assert (=> d!720073 (validRegex!3168 lt!901331)))

(assert (=> d!720073 (= lt!901331 e!1602368)))

(declare-fun c!404594 () Bool)

(assert (=> d!720073 (= c!404594 (or (is-EmptyExpr!7542 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))) (is-EmptyLang!7542 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))))))

(assert (=> d!720073 (validRegex!3168 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))))

(assert (=> d!720073 (= (derivativeStep!2111 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)) c!14016) lt!901331)))

(declare-fun b!2532441 () Bool)

(assert (=> b!2532441 (= e!1602369 (Union!7542 (Concat!12238 call!158842 (regTwo!15596 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))) EmptyLang!7542))))

(declare-fun b!2532442 () Bool)

(assert (=> b!2532442 (= e!1602368 EmptyLang!7542)))

(declare-fun b!2532443 () Bool)

(assert (=> b!2532443 (= e!1602369 (Union!7542 (Concat!12238 call!158842 (regTwo!15596 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))) call!158840))))

(declare-fun bm!158838 () Bool)

(assert (=> bm!158838 (= call!158840 (derivativeStep!2111 (ite c!404598 (regTwo!15597 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))) (regTwo!15596 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340)))) c!14016))))

(declare-fun b!2532444 () Bool)

(assert (=> b!2532444 (= c!404598 (is-Union!7542 (ite c!404572 (regTwo!15597 r!27340) (regTwo!15596 r!27340))))))

(assert (=> b!2532444 (= e!1602365 e!1602366)))

(assert (= (and d!720073 c!404594) b!2532442))

(assert (= (and d!720073 (not c!404594)) b!2532435))

(assert (= (and b!2532435 c!404596) b!2532437))

(assert (= (and b!2532435 (not c!404596)) b!2532444))

(assert (= (and b!2532444 c!404598) b!2532438))

(assert (= (and b!2532444 (not c!404598)) b!2532436))

(assert (= (and b!2532436 c!404597) b!2532439))

(assert (= (and b!2532436 (not c!404597)) b!2532440))

(assert (= (and b!2532440 c!404595) b!2532443))

(assert (= (and b!2532440 (not c!404595)) b!2532441))

(assert (= (or b!2532443 b!2532441) bm!158835))

(assert (= (or b!2532439 bm!158835) bm!158836))

(assert (= (or b!2532438 b!2532443) bm!158838))

(assert (= (or b!2532438 bm!158836) bm!158837))

(declare-fun m!2882781 () Bool)

(assert (=> bm!158837 m!2882781))

(declare-fun m!2882783 () Bool)

(assert (=> b!2532440 m!2882783))

(declare-fun m!2882785 () Bool)

(assert (=> d!720073 m!2882785))

(declare-fun m!2882787 () Bool)

(assert (=> d!720073 m!2882787))

(declare-fun m!2882789 () Bool)

(assert (=> bm!158838 m!2882789))

(assert (=> bm!158813 d!720073))

(assert (=> d!720059 d!720063))

(declare-fun d!720075 () Bool)

(assert (=> d!720075 (= (derivative!237 lt!901302 tl!4068) lt!901302)))

(assert (=> d!720075 true))

(declare-fun _$134!171 () Unit!43301)

(assert (=> d!720075 (= (choose!15010 lt!901302 tl!4068) _$134!171)))

(declare-fun bs!469230 () Bool)

(assert (= bs!469230 d!720075))

(assert (=> bs!469230 m!2882715))

(assert (=> d!720059 d!720075))

(declare-fun d!720077 () Bool)

(declare-fun res!1068886 () Bool)

(declare-fun e!1602372 () Bool)

(assert (=> d!720077 (=> res!1068886 e!1602372)))

(assert (=> d!720077 (= res!1068886 (is-ElementMatch!7542 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))))))

(assert (=> d!720077 (= (validRegex!3168 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))) e!1602372)))

(declare-fun bm!158839 () Bool)

(declare-fun call!158845 () Bool)

(declare-fun c!404600 () Bool)

(assert (=> bm!158839 (= call!158845 (validRegex!3168 (ite c!404600 (regOne!15597 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))) (regTwo!15596 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))))))))

(declare-fun b!2532445 () Bool)

(declare-fun e!1602374 () Bool)

(declare-fun e!1602375 () Bool)

(assert (=> b!2532445 (= e!1602374 e!1602375)))

(declare-fun res!1068884 () Bool)

(assert (=> b!2532445 (= res!1068884 (not (nullable!2459 (reg!7871 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))))))))

(assert (=> b!2532445 (=> (not res!1068884) (not e!1602375))))

(declare-fun b!2532446 () Bool)

(declare-fun res!1068887 () Bool)

(declare-fun e!1602373 () Bool)

(assert (=> b!2532446 (=> res!1068887 e!1602373)))

(assert (=> b!2532446 (= res!1068887 (not (is-Concat!12238 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340))))))))

(declare-fun e!1602371 () Bool)

(assert (=> b!2532446 (= e!1602371 e!1602373)))

(declare-fun b!2532447 () Bool)

(declare-fun e!1602370 () Bool)

(assert (=> b!2532447 (= e!1602370 call!158845)))

(declare-fun b!2532448 () Bool)

(assert (=> b!2532448 (= e!1602372 e!1602374)))

(declare-fun c!404599 () Bool)

(assert (=> b!2532448 (= c!404599 (is-Star!7542 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))))))

(declare-fun b!2532449 () Bool)

(assert (=> b!2532449 (= e!1602373 e!1602370)))

(declare-fun res!1068885 () Bool)

(assert (=> b!2532449 (=> (not res!1068885) (not e!1602370))))

(declare-fun call!158846 () Bool)

(assert (=> b!2532449 (= res!1068885 call!158846)))

(declare-fun b!2532450 () Bool)

(assert (=> b!2532450 (= e!1602374 e!1602371)))

(assert (=> b!2532450 (= c!404600 (is-Union!7542 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))))))

(declare-fun b!2532451 () Bool)

(declare-fun e!1602376 () Bool)

(assert (=> b!2532451 (= e!1602376 call!158846)))

(declare-fun bm!158840 () Bool)

(declare-fun call!158844 () Bool)

(assert (=> bm!158840 (= call!158844 (validRegex!3168 (ite c!404599 (reg!7871 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))) (ite c!404600 (regTwo!15597 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340)))) (regOne!15596 (ite c!404550 (reg!7871 r!27340) (ite c!404551 (regTwo!15597 r!27340) (regOne!15596 r!27340))))))))))

(declare-fun b!2532452 () Bool)

(assert (=> b!2532452 (= e!1602375 call!158844)))

(declare-fun bm!158841 () Bool)

(assert (=> bm!158841 (= call!158846 call!158844)))

(declare-fun b!2532453 () Bool)

(declare-fun res!1068883 () Bool)

(assert (=> b!2532453 (=> (not res!1068883) (not e!1602376))))

(assert (=> b!2532453 (= res!1068883 call!158845)))

(assert (=> b!2532453 (= e!1602371 e!1602376)))

(assert (= (and d!720077 (not res!1068886)) b!2532448))

(assert (= (and b!2532448 c!404599) b!2532445))

(assert (= (and b!2532448 (not c!404599)) b!2532450))

(assert (= (and b!2532445 res!1068884) b!2532452))

(assert (= (and b!2532450 c!404600) b!2532453))

(assert (= (and b!2532450 (not c!404600)) b!2532446))

(assert (= (and b!2532453 res!1068883) b!2532451))

(assert (= (and b!2532446 (not res!1068887)) b!2532449))

(assert (= (and b!2532449 res!1068885) b!2532447))

(assert (= (or b!2532453 b!2532447) bm!158839))

(assert (= (or b!2532451 b!2532449) bm!158841))

(assert (= (or b!2532452 bm!158841) bm!158840))

(declare-fun m!2882791 () Bool)

(assert (=> bm!158839 m!2882791))

(declare-fun m!2882793 () Bool)

(assert (=> b!2532445 m!2882793))

(declare-fun m!2882795 () Bool)

(assert (=> bm!158840 m!2882795))

(assert (=> bm!158800 d!720077))

(declare-fun b!2532469 () Bool)

(declare-fun e!1602391 () Bool)

(declare-fun e!1602392 () Bool)

(assert (=> b!2532469 (= e!1602391 e!1602392)))

(declare-fun res!1068900 () Bool)

(assert (=> b!2532469 (=> (not res!1068900) (not e!1602392))))

(assert (=> b!2532469 (= res!1068900 (and (not (is-EmptyLang!7542 lt!901303)) (not (is-ElementMatch!7542 lt!901303))))))

(declare-fun b!2532470 () Bool)

(declare-fun e!1602389 () Bool)

(assert (=> b!2532470 (= e!1602392 e!1602389)))

(declare-fun res!1068902 () Bool)

(assert (=> b!2532470 (=> res!1068902 e!1602389)))

(assert (=> b!2532470 (= res!1068902 (is-Star!7542 lt!901303))))

(declare-fun b!2532471 () Bool)

(declare-fun e!1602390 () Bool)

(declare-fun call!158851 () Bool)

(assert (=> b!2532471 (= e!1602390 call!158851)))

(declare-fun b!2532472 () Bool)

(declare-fun e!1602394 () Bool)

(declare-fun e!1602393 () Bool)

(assert (=> b!2532472 (= e!1602394 e!1602393)))

(declare-fun res!1068898 () Bool)

(assert (=> b!2532472 (= res!1068898 call!158851)))

(assert (=> b!2532472 (=> (not res!1068898) (not e!1602393))))

(declare-fun bm!158846 () Bool)

(declare-fun call!158852 () Bool)

(declare-fun c!404603 () Bool)

(assert (=> bm!158846 (= call!158852 (nullable!2459 (ite c!404603 (regOne!15597 lt!901303) (regTwo!15596 lt!901303))))))

(declare-fun b!2532473 () Bool)

(assert (=> b!2532473 (= e!1602389 e!1602394)))

(assert (=> b!2532473 (= c!404603 (is-Union!7542 lt!901303))))

(declare-fun b!2532468 () Bool)

(assert (=> b!2532468 (= e!1602394 e!1602390)))

(declare-fun res!1068899 () Bool)

(assert (=> b!2532468 (= res!1068899 call!158852)))

(assert (=> b!2532468 (=> res!1068899 e!1602390)))

(declare-fun d!720079 () Bool)

(declare-fun res!1068901 () Bool)

(assert (=> d!720079 (=> res!1068901 e!1602391)))

(assert (=> d!720079 (= res!1068901 (is-EmptyExpr!7542 lt!901303))))

(assert (=> d!720079 (= (nullableFct!693 lt!901303) e!1602391)))

(declare-fun b!2532474 () Bool)

(assert (=> b!2532474 (= e!1602393 call!158852)))

(declare-fun bm!158847 () Bool)

(assert (=> bm!158847 (= call!158851 (nullable!2459 (ite c!404603 (regTwo!15597 lt!901303) (regOne!15596 lt!901303))))))

(assert (= (and d!720079 (not res!1068901)) b!2532469))

(assert (= (and b!2532469 res!1068900) b!2532470))

(assert (= (and b!2532470 (not res!1068902)) b!2532473))

(assert (= (and b!2532473 c!404603) b!2532468))

(assert (= (and b!2532473 (not c!404603)) b!2532472))

(assert (= (and b!2532468 (not res!1068899)) b!2532471))

(assert (= (and b!2532472 res!1068898) b!2532474))

(assert (= (or b!2532471 b!2532472) bm!158847))

(assert (= (or b!2532468 b!2532474) bm!158846))

(declare-fun m!2882797 () Bool)

(assert (=> bm!158846 m!2882797))

(declare-fun m!2882799 () Bool)

(assert (=> bm!158847 m!2882799))

(assert (=> d!720061 d!720079))

(declare-fun d!720081 () Bool)

(declare-fun lt!901332 () Regex!7542)

(assert (=> d!720081 (validRegex!3168 lt!901332)))

(declare-fun e!1602395 () Regex!7542)

(assert (=> d!720081 (= lt!901332 e!1602395)))

(declare-fun c!404604 () Bool)

(assert (=> d!720081 (= c!404604 (is-Cons!29507 (t!211306 tl!4068)))))

(assert (=> d!720081 (validRegex!3168 (derivativeStep!2111 lt!901302 (h!34927 tl!4068)))))

(assert (=> d!720081 (= (derivative!237 (derivativeStep!2111 lt!901302 (h!34927 tl!4068)) (t!211306 tl!4068)) lt!901332)))

(declare-fun b!2532475 () Bool)

(assert (=> b!2532475 (= e!1602395 (derivative!237 (derivativeStep!2111 (derivativeStep!2111 lt!901302 (h!34927 tl!4068)) (h!34927 (t!211306 tl!4068))) (t!211306 (t!211306 tl!4068))))))

(declare-fun b!2532476 () Bool)

(assert (=> b!2532476 (= e!1602395 (derivativeStep!2111 lt!901302 (h!34927 tl!4068)))))

(assert (= (and d!720081 c!404604) b!2532475))

(assert (= (and d!720081 (not c!404604)) b!2532476))

(declare-fun m!2882801 () Bool)

(assert (=> d!720081 m!2882801))

(assert (=> d!720081 m!2882753))

(declare-fun m!2882803 () Bool)

(assert (=> d!720081 m!2882803))

(assert (=> b!2532475 m!2882753))

(declare-fun m!2882805 () Bool)

(assert (=> b!2532475 m!2882805))

(assert (=> b!2532475 m!2882805))

(declare-fun m!2882807 () Bool)

(assert (=> b!2532475 m!2882807))

(assert (=> b!2532276 d!720081))

(declare-fun bm!158848 () Bool)

(declare-fun call!158855 () Regex!7542)

(declare-fun call!158854 () Regex!7542)

(assert (=> bm!158848 (= call!158855 call!158854)))

(declare-fun b!2532477 () Bool)

(declare-fun e!1602399 () Regex!7542)

(declare-fun e!1602396 () Regex!7542)

(assert (=> b!2532477 (= e!1602399 e!1602396)))

(declare-fun c!404607 () Bool)

(assert (=> b!2532477 (= c!404607 (is-ElementMatch!7542 lt!901302))))

(declare-fun bm!158849 () Bool)

(declare-fun call!158856 () Regex!7542)

(assert (=> bm!158849 (= call!158854 call!158856)))

(declare-fun b!2532478 () Bool)

(declare-fun e!1602397 () Regex!7542)

(declare-fun e!1602398 () Regex!7542)

(assert (=> b!2532478 (= e!1602397 e!1602398)))

(declare-fun c!404608 () Bool)

(assert (=> b!2532478 (= c!404608 (is-Star!7542 lt!901302))))

(declare-fun b!2532479 () Bool)

(assert (=> b!2532479 (= e!1602396 (ite (= (h!34927 tl!4068) (c!404544 lt!901302)) EmptyExpr!7542 EmptyLang!7542))))

(declare-fun bm!158850 () Bool)

(declare-fun c!404609 () Bool)

(assert (=> bm!158850 (= call!158856 (derivativeStep!2111 (ite c!404609 (regOne!15597 lt!901302) (ite c!404608 (reg!7871 lt!901302) (regOne!15596 lt!901302))) (h!34927 tl!4068)))))

(declare-fun b!2532480 () Bool)

(declare-fun call!158853 () Regex!7542)

(assert (=> b!2532480 (= e!1602397 (Union!7542 call!158856 call!158853))))

(declare-fun b!2532481 () Bool)

(assert (=> b!2532481 (= e!1602398 (Concat!12238 call!158854 lt!901302))))

(declare-fun b!2532482 () Bool)

(declare-fun c!404606 () Bool)

(assert (=> b!2532482 (= c!404606 (nullable!2459 (regOne!15596 lt!901302)))))

(declare-fun e!1602400 () Regex!7542)

(assert (=> b!2532482 (= e!1602398 e!1602400)))

(declare-fun d!720083 () Bool)

(declare-fun lt!901333 () Regex!7542)

(assert (=> d!720083 (validRegex!3168 lt!901333)))

(assert (=> d!720083 (= lt!901333 e!1602399)))

(declare-fun c!404605 () Bool)

(assert (=> d!720083 (= c!404605 (or (is-EmptyExpr!7542 lt!901302) (is-EmptyLang!7542 lt!901302)))))

(assert (=> d!720083 (validRegex!3168 lt!901302)))

(assert (=> d!720083 (= (derivativeStep!2111 lt!901302 (h!34927 tl!4068)) lt!901333)))

(declare-fun b!2532483 () Bool)

(assert (=> b!2532483 (= e!1602400 (Union!7542 (Concat!12238 call!158855 (regTwo!15596 lt!901302)) EmptyLang!7542))))

(declare-fun b!2532484 () Bool)

(assert (=> b!2532484 (= e!1602399 EmptyLang!7542)))

(declare-fun b!2532485 () Bool)

(assert (=> b!2532485 (= e!1602400 (Union!7542 (Concat!12238 call!158855 (regTwo!15596 lt!901302)) call!158853))))

(declare-fun bm!158851 () Bool)

(assert (=> bm!158851 (= call!158853 (derivativeStep!2111 (ite c!404609 (regTwo!15597 lt!901302) (regTwo!15596 lt!901302)) (h!34927 tl!4068)))))

(declare-fun b!2532486 () Bool)

(assert (=> b!2532486 (= c!404609 (is-Union!7542 lt!901302))))

(assert (=> b!2532486 (= e!1602396 e!1602397)))

(assert (= (and d!720083 c!404605) b!2532484))

(assert (= (and d!720083 (not c!404605)) b!2532477))

(assert (= (and b!2532477 c!404607) b!2532479))

(assert (= (and b!2532477 (not c!404607)) b!2532486))

(assert (= (and b!2532486 c!404609) b!2532480))

(assert (= (and b!2532486 (not c!404609)) b!2532478))

(assert (= (and b!2532478 c!404608) b!2532481))

(assert (= (and b!2532478 (not c!404608)) b!2532482))

(assert (= (and b!2532482 c!404606) b!2532485))

(assert (= (and b!2532482 (not c!404606)) b!2532483))

(assert (= (or b!2532485 b!2532483) bm!158848))

(assert (= (or b!2532481 bm!158848) bm!158849))

(assert (= (or b!2532480 b!2532485) bm!158851))

(assert (= (or b!2532480 bm!158849) bm!158850))

(declare-fun m!2882809 () Bool)

(assert (=> bm!158850 m!2882809))

(declare-fun m!2882811 () Bool)

(assert (=> b!2532482 m!2882811))

(declare-fun m!2882813 () Bool)

(assert (=> d!720083 m!2882813))

(assert (=> d!720083 m!2882751))

(declare-fun m!2882815 () Bool)

(assert (=> bm!158851 m!2882815))

(assert (=> b!2532276 d!720083))

(declare-fun bm!158852 () Bool)

(declare-fun call!158859 () Regex!7542)

(declare-fun call!158858 () Regex!7542)

(assert (=> bm!158852 (= call!158859 call!158858)))

(declare-fun b!2532487 () Bool)

(declare-fun e!1602404 () Regex!7542)

(declare-fun e!1602401 () Regex!7542)

(assert (=> b!2532487 (= e!1602404 e!1602401)))

(declare-fun c!404612 () Bool)

(assert (=> b!2532487 (= c!404612 (is-ElementMatch!7542 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))))))

(declare-fun bm!158853 () Bool)

(declare-fun call!158860 () Regex!7542)

(assert (=> bm!158853 (= call!158858 call!158860)))

(declare-fun b!2532488 () Bool)

(declare-fun e!1602402 () Regex!7542)

(declare-fun e!1602403 () Regex!7542)

(assert (=> b!2532488 (= e!1602402 e!1602403)))

(declare-fun c!404613 () Bool)

(assert (=> b!2532488 (= c!404613 (is-Star!7542 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))))))

(declare-fun b!2532489 () Bool)

(assert (=> b!2532489 (= e!1602401 (ite (= c!14016 (c!404544 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))) EmptyExpr!7542 EmptyLang!7542))))

(declare-fun bm!158854 () Bool)

(declare-fun c!404614 () Bool)

(assert (=> bm!158854 (= call!158860 (derivativeStep!2111 (ite c!404614 (regOne!15597 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))) (ite c!404613 (reg!7871 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))) (regOne!15596 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))))) c!14016))))

(declare-fun b!2532490 () Bool)

(declare-fun call!158857 () Regex!7542)

(assert (=> b!2532490 (= e!1602402 (Union!7542 call!158860 call!158857))))

(declare-fun b!2532491 () Bool)

(assert (=> b!2532491 (= e!1602403 (Concat!12238 call!158858 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))))))

(declare-fun c!404611 () Bool)

(declare-fun b!2532492 () Bool)

(assert (=> b!2532492 (= c!404611 (nullable!2459 (regOne!15596 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))))))

(declare-fun e!1602405 () Regex!7542)

(assert (=> b!2532492 (= e!1602403 e!1602405)))

(declare-fun d!720085 () Bool)

(declare-fun lt!901334 () Regex!7542)

(assert (=> d!720085 (validRegex!3168 lt!901334)))

(assert (=> d!720085 (= lt!901334 e!1602404)))

(declare-fun c!404610 () Bool)

(assert (=> d!720085 (= c!404610 (or (is-EmptyExpr!7542 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))) (is-EmptyLang!7542 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))))))

(assert (=> d!720085 (validRegex!3168 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))))

(assert (=> d!720085 (= (derivativeStep!2111 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))) c!14016) lt!901334)))

(declare-fun b!2532493 () Bool)

(assert (=> b!2532493 (= e!1602405 (Union!7542 (Concat!12238 call!158859 (regTwo!15596 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))) EmptyLang!7542))))

(declare-fun b!2532494 () Bool)

(assert (=> b!2532494 (= e!1602404 EmptyLang!7542)))

(declare-fun b!2532495 () Bool)

(assert (=> b!2532495 (= e!1602405 (Union!7542 (Concat!12238 call!158859 (regTwo!15596 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))) call!158857))))

(declare-fun bm!158855 () Bool)

(assert (=> bm!158855 (= call!158857 (derivativeStep!2111 (ite c!404614 (regTwo!15597 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))) (regTwo!15596 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340))))) c!14016))))

(declare-fun b!2532496 () Bool)

(assert (=> b!2532496 (= c!404614 (is-Union!7542 (ite c!404572 (regOne!15597 r!27340) (ite c!404571 (reg!7871 r!27340) (regOne!15596 r!27340)))))))

(assert (=> b!2532496 (= e!1602401 e!1602402)))

(assert (= (and d!720085 c!404610) b!2532494))

(assert (= (and d!720085 (not c!404610)) b!2532487))

(assert (= (and b!2532487 c!404612) b!2532489))

(assert (= (and b!2532487 (not c!404612)) b!2532496))

(assert (= (and b!2532496 c!404614) b!2532490))

(assert (= (and b!2532496 (not c!404614)) b!2532488))

(assert (= (and b!2532488 c!404613) b!2532491))

(assert (= (and b!2532488 (not c!404613)) b!2532492))

(assert (= (and b!2532492 c!404611) b!2532495))

(assert (= (and b!2532492 (not c!404611)) b!2532493))

(assert (= (or b!2532495 b!2532493) bm!158852))

(assert (= (or b!2532491 bm!158852) bm!158853))

(assert (= (or b!2532490 b!2532495) bm!158855))

(assert (= (or b!2532490 bm!158853) bm!158854))

(declare-fun m!2882817 () Bool)

(assert (=> bm!158854 m!2882817))

(declare-fun m!2882819 () Bool)

(assert (=> b!2532492 m!2882819))

(declare-fun m!2882821 () Bool)

(assert (=> d!720085 m!2882821))

(declare-fun m!2882823 () Bool)

(assert (=> d!720085 m!2882823))

(declare-fun m!2882825 () Bool)

(assert (=> bm!158855 m!2882825))

(assert (=> bm!158812 d!720085))

(declare-fun d!720087 () Bool)

(assert (=> d!720087 (= (nullable!2459 (reg!7871 r!27340)) (nullableFct!693 (reg!7871 r!27340)))))

(declare-fun bs!469231 () Bool)

(assert (= bs!469231 d!720087))

(declare-fun m!2882827 () Bool)

(assert (=> bs!469231 m!2882827))

(assert (=> b!2532257 d!720087))

(declare-fun d!720089 () Bool)

(declare-fun res!1068906 () Bool)

(declare-fun e!1602408 () Bool)

(assert (=> d!720089 (=> res!1068906 e!1602408)))

(assert (=> d!720089 (= res!1068906 (is-ElementMatch!7542 lt!901326))))

(assert (=> d!720089 (= (validRegex!3168 lt!901326) e!1602408)))

(declare-fun bm!158856 () Bool)

(declare-fun call!158862 () Bool)

(declare-fun c!404616 () Bool)

(assert (=> bm!158856 (= call!158862 (validRegex!3168 (ite c!404616 (regOne!15597 lt!901326) (regTwo!15596 lt!901326))))))

(declare-fun b!2532497 () Bool)

(declare-fun e!1602410 () Bool)

(declare-fun e!1602411 () Bool)

(assert (=> b!2532497 (= e!1602410 e!1602411)))

(declare-fun res!1068904 () Bool)

(assert (=> b!2532497 (= res!1068904 (not (nullable!2459 (reg!7871 lt!901326))))))

(assert (=> b!2532497 (=> (not res!1068904) (not e!1602411))))

(declare-fun b!2532498 () Bool)

(declare-fun res!1068907 () Bool)

(declare-fun e!1602409 () Bool)

(assert (=> b!2532498 (=> res!1068907 e!1602409)))

(assert (=> b!2532498 (= res!1068907 (not (is-Concat!12238 lt!901326)))))

(declare-fun e!1602407 () Bool)

(assert (=> b!2532498 (= e!1602407 e!1602409)))

(declare-fun b!2532499 () Bool)

(declare-fun e!1602406 () Bool)

(assert (=> b!2532499 (= e!1602406 call!158862)))

(declare-fun b!2532500 () Bool)

(assert (=> b!2532500 (= e!1602408 e!1602410)))

(declare-fun c!404615 () Bool)

(assert (=> b!2532500 (= c!404615 (is-Star!7542 lt!901326))))

(declare-fun b!2532501 () Bool)

(assert (=> b!2532501 (= e!1602409 e!1602406)))

(declare-fun res!1068905 () Bool)

(assert (=> b!2532501 (=> (not res!1068905) (not e!1602406))))

(declare-fun call!158863 () Bool)

(assert (=> b!2532501 (= res!1068905 call!158863)))

(declare-fun b!2532502 () Bool)

(assert (=> b!2532502 (= e!1602410 e!1602407)))

(assert (=> b!2532502 (= c!404616 (is-Union!7542 lt!901326))))

(declare-fun b!2532503 () Bool)

(declare-fun e!1602412 () Bool)

(assert (=> b!2532503 (= e!1602412 call!158863)))

(declare-fun call!158861 () Bool)

(declare-fun bm!158857 () Bool)

(assert (=> bm!158857 (= call!158861 (validRegex!3168 (ite c!404615 (reg!7871 lt!901326) (ite c!404616 (regTwo!15597 lt!901326) (regOne!15596 lt!901326)))))))

(declare-fun b!2532504 () Bool)

(assert (=> b!2532504 (= e!1602411 call!158861)))

(declare-fun bm!158858 () Bool)

(assert (=> bm!158858 (= call!158863 call!158861)))

(declare-fun b!2532505 () Bool)

(declare-fun res!1068903 () Bool)

(assert (=> b!2532505 (=> (not res!1068903) (not e!1602412))))

(assert (=> b!2532505 (= res!1068903 call!158862)))

(assert (=> b!2532505 (= e!1602407 e!1602412)))

(assert (= (and d!720089 (not res!1068906)) b!2532500))

(assert (= (and b!2532500 c!404615) b!2532497))

(assert (= (and b!2532500 (not c!404615)) b!2532502))

(assert (= (and b!2532497 res!1068904) b!2532504))

(assert (= (and b!2532502 c!404616) b!2532505))

(assert (= (and b!2532502 (not c!404616)) b!2532498))

(assert (= (and b!2532505 res!1068903) b!2532503))

(assert (= (and b!2532498 (not res!1068907)) b!2532501))

(assert (= (and b!2532501 res!1068905) b!2532499))

(assert (= (or b!2532505 b!2532499) bm!158856))

(assert (= (or b!2532503 b!2532501) bm!158858))

(assert (= (or b!2532504 bm!158858) bm!158857))

(declare-fun m!2882829 () Bool)

(assert (=> bm!158856 m!2882829))

(declare-fun m!2882831 () Bool)

(assert (=> b!2532497 m!2882831))

(declare-fun m!2882833 () Bool)

(assert (=> bm!158857 m!2882833))

(assert (=> d!720067 d!720089))

(assert (=> d!720067 d!720053))

(declare-fun d!720091 () Bool)

(assert (=> d!720091 (= (nullable!2459 (regOne!15596 r!27340)) (nullableFct!693 (regOne!15596 r!27340)))))

(declare-fun bs!469232 () Bool)

(assert (= bs!469232 d!720091))

(declare-fun m!2882835 () Bool)

(assert (=> bs!469232 m!2882835))

(assert (=> b!2532305 d!720091))

(declare-fun d!720093 () Bool)

(declare-fun res!1068911 () Bool)

(declare-fun e!1602415 () Bool)

(assert (=> d!720093 (=> res!1068911 e!1602415)))

(assert (=> d!720093 (= res!1068911 (is-ElementMatch!7542 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))))))

(assert (=> d!720093 (= (validRegex!3168 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))) e!1602415)))

(declare-fun c!404618 () Bool)

(declare-fun bm!158859 () Bool)

(declare-fun call!158865 () Bool)

(assert (=> bm!158859 (= call!158865 (validRegex!3168 (ite c!404618 (regOne!15597 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))) (regTwo!15596 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))))))))

(declare-fun b!2532506 () Bool)

(declare-fun e!1602417 () Bool)

(declare-fun e!1602418 () Bool)

(assert (=> b!2532506 (= e!1602417 e!1602418)))

(declare-fun res!1068909 () Bool)

(assert (=> b!2532506 (= res!1068909 (not (nullable!2459 (reg!7871 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))))))))

(assert (=> b!2532506 (=> (not res!1068909) (not e!1602418))))

(declare-fun b!2532507 () Bool)

(declare-fun res!1068912 () Bool)

(declare-fun e!1602416 () Bool)

(assert (=> b!2532507 (=> res!1068912 e!1602416)))

(assert (=> b!2532507 (= res!1068912 (not (is-Concat!12238 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340)))))))

(declare-fun e!1602414 () Bool)

(assert (=> b!2532507 (= e!1602414 e!1602416)))

(declare-fun b!2532508 () Bool)

(declare-fun e!1602413 () Bool)

(assert (=> b!2532508 (= e!1602413 call!158865)))

(declare-fun b!2532509 () Bool)

(assert (=> b!2532509 (= e!1602415 e!1602417)))

(declare-fun c!404617 () Bool)

(assert (=> b!2532509 (= c!404617 (is-Star!7542 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))))))

(declare-fun b!2532510 () Bool)

(assert (=> b!2532510 (= e!1602416 e!1602413)))

(declare-fun res!1068910 () Bool)

(assert (=> b!2532510 (=> (not res!1068910) (not e!1602413))))

(declare-fun call!158866 () Bool)

(assert (=> b!2532510 (= res!1068910 call!158866)))

(declare-fun b!2532511 () Bool)

(assert (=> b!2532511 (= e!1602417 e!1602414)))

(assert (=> b!2532511 (= c!404618 (is-Union!7542 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))))))

(declare-fun b!2532512 () Bool)

(declare-fun e!1602419 () Bool)

(assert (=> b!2532512 (= e!1602419 call!158866)))

(declare-fun bm!158860 () Bool)

(declare-fun call!158864 () Bool)

(assert (=> bm!158860 (= call!158864 (validRegex!3168 (ite c!404617 (reg!7871 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))) (ite c!404618 (regTwo!15597 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340))) (regOne!15596 (ite c!404551 (regOne!15597 r!27340) (regTwo!15596 r!27340)))))))))

(declare-fun b!2532513 () Bool)

(assert (=> b!2532513 (= e!1602418 call!158864)))

(declare-fun bm!158861 () Bool)

(assert (=> bm!158861 (= call!158866 call!158864)))

(declare-fun b!2532514 () Bool)

(declare-fun res!1068908 () Bool)

(assert (=> b!2532514 (=> (not res!1068908) (not e!1602419))))

(assert (=> b!2532514 (= res!1068908 call!158865)))

(assert (=> b!2532514 (= e!1602414 e!1602419)))

(assert (= (and d!720093 (not res!1068911)) b!2532509))

(assert (= (and b!2532509 c!404617) b!2532506))

(assert (= (and b!2532509 (not c!404617)) b!2532511))

(assert (= (and b!2532506 res!1068909) b!2532513))

(assert (= (and b!2532511 c!404618) b!2532514))

(assert (= (and b!2532511 (not c!404618)) b!2532507))

(assert (= (and b!2532514 res!1068908) b!2532512))

(assert (= (and b!2532507 (not res!1068912)) b!2532510))

(assert (= (and b!2532510 res!1068910) b!2532508))

(assert (= (or b!2532514 b!2532508) bm!158859))

(assert (= (or b!2532512 b!2532510) bm!158861))

(assert (= (or b!2532513 bm!158861) bm!158860))

(declare-fun m!2882837 () Bool)

(assert (=> bm!158859 m!2882837))

(declare-fun m!2882839 () Bool)

(assert (=> b!2532506 m!2882839))

(declare-fun m!2882841 () Bool)

(assert (=> bm!158860 m!2882841))

(assert (=> bm!158799 d!720093))

(declare-fun d!720095 () Bool)

(declare-fun res!1068916 () Bool)

(declare-fun e!1602422 () Bool)

(assert (=> d!720095 (=> res!1068916 e!1602422)))

(assert (=> d!720095 (= res!1068916 (is-ElementMatch!7542 lt!901321))))

(assert (=> d!720095 (= (validRegex!3168 lt!901321) e!1602422)))

(declare-fun bm!158862 () Bool)

(declare-fun call!158868 () Bool)

(declare-fun c!404620 () Bool)

(assert (=> bm!158862 (= call!158868 (validRegex!3168 (ite c!404620 (regOne!15597 lt!901321) (regTwo!15596 lt!901321))))))

(declare-fun b!2532515 () Bool)

(declare-fun e!1602424 () Bool)

(declare-fun e!1602425 () Bool)

(assert (=> b!2532515 (= e!1602424 e!1602425)))

(declare-fun res!1068914 () Bool)

(assert (=> b!2532515 (= res!1068914 (not (nullable!2459 (reg!7871 lt!901321))))))

(assert (=> b!2532515 (=> (not res!1068914) (not e!1602425))))

(declare-fun b!2532516 () Bool)

(declare-fun res!1068917 () Bool)

(declare-fun e!1602423 () Bool)

(assert (=> b!2532516 (=> res!1068917 e!1602423)))

(assert (=> b!2532516 (= res!1068917 (not (is-Concat!12238 lt!901321)))))

(declare-fun e!1602421 () Bool)

(assert (=> b!2532516 (= e!1602421 e!1602423)))

(declare-fun b!2532517 () Bool)

(declare-fun e!1602420 () Bool)

(assert (=> b!2532517 (= e!1602420 call!158868)))

(declare-fun b!2532518 () Bool)

(assert (=> b!2532518 (= e!1602422 e!1602424)))

(declare-fun c!404619 () Bool)

(assert (=> b!2532518 (= c!404619 (is-Star!7542 lt!901321))))

(declare-fun b!2532519 () Bool)

(assert (=> b!2532519 (= e!1602423 e!1602420)))

(declare-fun res!1068915 () Bool)

(assert (=> b!2532519 (=> (not res!1068915) (not e!1602420))))

(declare-fun call!158869 () Bool)

(assert (=> b!2532519 (= res!1068915 call!158869)))

(declare-fun b!2532520 () Bool)

(assert (=> b!2532520 (= e!1602424 e!1602421)))

(assert (=> b!2532520 (= c!404620 (is-Union!7542 lt!901321))))

(declare-fun b!2532521 () Bool)

(declare-fun e!1602426 () Bool)

(assert (=> b!2532521 (= e!1602426 call!158869)))

(declare-fun call!158867 () Bool)

(declare-fun bm!158863 () Bool)

(assert (=> bm!158863 (= call!158867 (validRegex!3168 (ite c!404619 (reg!7871 lt!901321) (ite c!404620 (regTwo!15597 lt!901321) (regOne!15596 lt!901321)))))))

(declare-fun b!2532522 () Bool)

(assert (=> b!2532522 (= e!1602425 call!158867)))

(declare-fun bm!158864 () Bool)

(assert (=> bm!158864 (= call!158869 call!158867)))

(declare-fun b!2532523 () Bool)

(declare-fun res!1068913 () Bool)

(assert (=> b!2532523 (=> (not res!1068913) (not e!1602426))))

(assert (=> b!2532523 (= res!1068913 call!158868)))

(assert (=> b!2532523 (= e!1602421 e!1602426)))

(assert (= (and d!720095 (not res!1068916)) b!2532518))

(assert (= (and b!2532518 c!404619) b!2532515))

(assert (= (and b!2532518 (not c!404619)) b!2532520))

(assert (= (and b!2532515 res!1068914) b!2532522))

(assert (= (and b!2532520 c!404620) b!2532523))

(assert (= (and b!2532520 (not c!404620)) b!2532516))

(assert (= (and b!2532523 res!1068913) b!2532521))

(assert (= (and b!2532516 (not res!1068917)) b!2532519))

(assert (= (and b!2532519 res!1068915) b!2532517))

(assert (= (or b!2532523 b!2532517) bm!158862))

(assert (= (or b!2532521 b!2532519) bm!158864))

(assert (= (or b!2532522 bm!158864) bm!158863))

(declare-fun m!2882843 () Bool)

(assert (=> bm!158862 m!2882843))

(declare-fun m!2882845 () Bool)

(assert (=> b!2532515 m!2882845))

(declare-fun m!2882847 () Bool)

(assert (=> bm!158863 m!2882847))

(assert (=> d!720063 d!720095))

(declare-fun d!720097 () Bool)

(declare-fun res!1068921 () Bool)

(declare-fun e!1602429 () Bool)

(assert (=> d!720097 (=> res!1068921 e!1602429)))

(assert (=> d!720097 (= res!1068921 (is-ElementMatch!7542 lt!901302))))

(assert (=> d!720097 (= (validRegex!3168 lt!901302) e!1602429)))

(declare-fun bm!158865 () Bool)

(declare-fun call!158871 () Bool)

(declare-fun c!404622 () Bool)

(assert (=> bm!158865 (= call!158871 (validRegex!3168 (ite c!404622 (regOne!15597 lt!901302) (regTwo!15596 lt!901302))))))

(declare-fun b!2532524 () Bool)

(declare-fun e!1602431 () Bool)

(declare-fun e!1602432 () Bool)

(assert (=> b!2532524 (= e!1602431 e!1602432)))

(declare-fun res!1068919 () Bool)

(assert (=> b!2532524 (= res!1068919 (not (nullable!2459 (reg!7871 lt!901302))))))

(assert (=> b!2532524 (=> (not res!1068919) (not e!1602432))))

(declare-fun b!2532525 () Bool)

(declare-fun res!1068922 () Bool)

(declare-fun e!1602430 () Bool)

(assert (=> b!2532525 (=> res!1068922 e!1602430)))

(assert (=> b!2532525 (= res!1068922 (not (is-Concat!12238 lt!901302)))))

(declare-fun e!1602428 () Bool)

(assert (=> b!2532525 (= e!1602428 e!1602430)))

(declare-fun b!2532526 () Bool)

(declare-fun e!1602427 () Bool)

(assert (=> b!2532526 (= e!1602427 call!158871)))

(declare-fun b!2532527 () Bool)

(assert (=> b!2532527 (= e!1602429 e!1602431)))

(declare-fun c!404621 () Bool)

(assert (=> b!2532527 (= c!404621 (is-Star!7542 lt!901302))))

(declare-fun b!2532528 () Bool)

(assert (=> b!2532528 (= e!1602430 e!1602427)))

(declare-fun res!1068920 () Bool)

(assert (=> b!2532528 (=> (not res!1068920) (not e!1602427))))

(declare-fun call!158872 () Bool)

(assert (=> b!2532528 (= res!1068920 call!158872)))

(declare-fun b!2532529 () Bool)

(assert (=> b!2532529 (= e!1602431 e!1602428)))

(assert (=> b!2532529 (= c!404622 (is-Union!7542 lt!901302))))

(declare-fun b!2532530 () Bool)

(declare-fun e!1602433 () Bool)

(assert (=> b!2532530 (= e!1602433 call!158872)))

(declare-fun call!158870 () Bool)

(declare-fun bm!158866 () Bool)

(assert (=> bm!158866 (= call!158870 (validRegex!3168 (ite c!404621 (reg!7871 lt!901302) (ite c!404622 (regTwo!15597 lt!901302) (regOne!15596 lt!901302)))))))

(declare-fun b!2532531 () Bool)

(assert (=> b!2532531 (= e!1602432 call!158870)))

(declare-fun bm!158867 () Bool)

(assert (=> bm!158867 (= call!158872 call!158870)))

(declare-fun b!2532532 () Bool)

(declare-fun res!1068918 () Bool)

(assert (=> b!2532532 (=> (not res!1068918) (not e!1602433))))

(assert (=> b!2532532 (= res!1068918 call!158871)))

(assert (=> b!2532532 (= e!1602428 e!1602433)))

(assert (= (and d!720097 (not res!1068921)) b!2532527))

(assert (= (and b!2532527 c!404621) b!2532524))

(assert (= (and b!2532527 (not c!404621)) b!2532529))

(assert (= (and b!2532524 res!1068919) b!2532531))

(assert (= (and b!2532529 c!404622) b!2532532))

(assert (= (and b!2532529 (not c!404622)) b!2532525))

(assert (= (and b!2532532 res!1068918) b!2532530))

(assert (= (and b!2532525 (not res!1068922)) b!2532528))

(assert (= (and b!2532528 res!1068920) b!2532526))

(assert (= (or b!2532532 b!2532526) bm!158865))

(assert (= (or b!2532530 b!2532528) bm!158867))

(assert (= (or b!2532531 bm!158867) bm!158866))

(declare-fun m!2882849 () Bool)

(assert (=> bm!158865 m!2882849))

(declare-fun m!2882851 () Bool)

(assert (=> b!2532524 m!2882851))

(declare-fun m!2882853 () Bool)

(assert (=> bm!158866 m!2882853))

(assert (=> d!720063 d!720097))

(declare-fun b!2532533 () Bool)

(declare-fun e!1602434 () Bool)

(assert (=> b!2532533 (= e!1602434 tp_is_empty!12939)))

(declare-fun b!2532535 () Bool)

(declare-fun tp!808856 () Bool)

(assert (=> b!2532535 (= e!1602434 tp!808856)))

(declare-fun b!2532536 () Bool)

(declare-fun tp!808858 () Bool)

(declare-fun tp!808859 () Bool)

(assert (=> b!2532536 (= e!1602434 (and tp!808858 tp!808859))))

(declare-fun b!2532534 () Bool)

(declare-fun tp!808855 () Bool)

(declare-fun tp!808857 () Bool)

(assert (=> b!2532534 (= e!1602434 (and tp!808855 tp!808857))))

(assert (=> b!2532344 (= tp!808795 e!1602434)))

(assert (= (and b!2532344 (is-ElementMatch!7542 (reg!7871 (regTwo!15596 r!27340)))) b!2532533))

(assert (= (and b!2532344 (is-Concat!12238 (reg!7871 (regTwo!15596 r!27340)))) b!2532534))

(assert (= (and b!2532344 (is-Star!7542 (reg!7871 (regTwo!15596 r!27340)))) b!2532535))

(assert (= (and b!2532344 (is-Union!7542 (reg!7871 (regTwo!15596 r!27340)))) b!2532536))

(declare-fun b!2532537 () Bool)

(declare-fun e!1602435 () Bool)

(assert (=> b!2532537 (= e!1602435 tp_is_empty!12939)))

(declare-fun b!2532539 () Bool)

(declare-fun tp!808861 () Bool)

(assert (=> b!2532539 (= e!1602435 tp!808861)))

(declare-fun b!2532540 () Bool)

(declare-fun tp!808863 () Bool)

(declare-fun tp!808864 () Bool)

(assert (=> b!2532540 (= e!1602435 (and tp!808863 tp!808864))))

(declare-fun b!2532538 () Bool)

(declare-fun tp!808860 () Bool)

(declare-fun tp!808862 () Bool)

(assert (=> b!2532538 (= e!1602435 (and tp!808860 tp!808862))))

(assert (=> b!2532349 (= tp!808802 e!1602435)))

(assert (= (and b!2532349 (is-ElementMatch!7542 (regOne!15597 (reg!7871 r!27340)))) b!2532537))

(assert (= (and b!2532349 (is-Concat!12238 (regOne!15597 (reg!7871 r!27340)))) b!2532538))

(assert (= (and b!2532349 (is-Star!7542 (regOne!15597 (reg!7871 r!27340)))) b!2532539))

(assert (= (and b!2532349 (is-Union!7542 (regOne!15597 (reg!7871 r!27340)))) b!2532540))

(declare-fun b!2532541 () Bool)

(declare-fun e!1602436 () Bool)

(assert (=> b!2532541 (= e!1602436 tp_is_empty!12939)))

(declare-fun b!2532543 () Bool)

(declare-fun tp!808866 () Bool)

(assert (=> b!2532543 (= e!1602436 tp!808866)))

(declare-fun b!2532544 () Bool)

(declare-fun tp!808868 () Bool)

(declare-fun tp!808869 () Bool)

(assert (=> b!2532544 (= e!1602436 (and tp!808868 tp!808869))))

(declare-fun b!2532542 () Bool)

(declare-fun tp!808865 () Bool)

(declare-fun tp!808867 () Bool)

(assert (=> b!2532542 (= e!1602436 (and tp!808865 tp!808867))))

(assert (=> b!2532349 (= tp!808803 e!1602436)))

(assert (= (and b!2532349 (is-ElementMatch!7542 (regTwo!15597 (reg!7871 r!27340)))) b!2532541))

(assert (= (and b!2532349 (is-Concat!12238 (regTwo!15597 (reg!7871 r!27340)))) b!2532542))

(assert (= (and b!2532349 (is-Star!7542 (regTwo!15597 (reg!7871 r!27340)))) b!2532543))

(assert (= (and b!2532349 (is-Union!7542 (regTwo!15597 (reg!7871 r!27340)))) b!2532544))

(declare-fun b!2532545 () Bool)

(declare-fun e!1602437 () Bool)

(assert (=> b!2532545 (= e!1602437 tp_is_empty!12939)))

(declare-fun b!2532547 () Bool)

(declare-fun tp!808871 () Bool)

(assert (=> b!2532547 (= e!1602437 tp!808871)))

(declare-fun b!2532548 () Bool)

(declare-fun tp!808873 () Bool)

(declare-fun tp!808874 () Bool)

(assert (=> b!2532548 (= e!1602437 (and tp!808873 tp!808874))))

(declare-fun b!2532546 () Bool)

(declare-fun tp!808870 () Bool)

(declare-fun tp!808872 () Bool)

(assert (=> b!2532546 (= e!1602437 (and tp!808870 tp!808872))))

(assert (=> b!2532340 (= tp!808790 e!1602437)))

(assert (= (and b!2532340 (is-ElementMatch!7542 (reg!7871 (regOne!15596 r!27340)))) b!2532545))

(assert (= (and b!2532340 (is-Concat!12238 (reg!7871 (regOne!15596 r!27340)))) b!2532546))

(assert (= (and b!2532340 (is-Star!7542 (reg!7871 (regOne!15596 r!27340)))) b!2532547))

(assert (= (and b!2532340 (is-Union!7542 (reg!7871 (regOne!15596 r!27340)))) b!2532548))

(declare-fun b!2532549 () Bool)

(declare-fun e!1602438 () Bool)

(assert (=> b!2532549 (= e!1602438 tp_is_empty!12939)))

(declare-fun b!2532551 () Bool)

(declare-fun tp!808876 () Bool)

(assert (=> b!2532551 (= e!1602438 tp!808876)))

(declare-fun b!2532552 () Bool)

(declare-fun tp!808878 () Bool)

(declare-fun tp!808879 () Bool)

(assert (=> b!2532552 (= e!1602438 (and tp!808878 tp!808879))))

(declare-fun b!2532550 () Bool)

(declare-fun tp!808875 () Bool)

(declare-fun tp!808877 () Bool)

(assert (=> b!2532550 (= e!1602438 (and tp!808875 tp!808877))))

(assert (=> b!2532345 (= tp!808797 e!1602438)))

(assert (= (and b!2532345 (is-ElementMatch!7542 (regOne!15597 (regTwo!15596 r!27340)))) b!2532549))

(assert (= (and b!2532345 (is-Concat!12238 (regOne!15597 (regTwo!15596 r!27340)))) b!2532550))

(assert (= (and b!2532345 (is-Star!7542 (regOne!15597 (regTwo!15596 r!27340)))) b!2532551))

(assert (= (and b!2532345 (is-Union!7542 (regOne!15597 (regTwo!15596 r!27340)))) b!2532552))

(declare-fun b!2532553 () Bool)

(declare-fun e!1602439 () Bool)

(assert (=> b!2532553 (= e!1602439 tp_is_empty!12939)))

(declare-fun b!2532555 () Bool)

(declare-fun tp!808881 () Bool)

(assert (=> b!2532555 (= e!1602439 tp!808881)))

(declare-fun b!2532556 () Bool)

(declare-fun tp!808883 () Bool)

(declare-fun tp!808884 () Bool)

(assert (=> b!2532556 (= e!1602439 (and tp!808883 tp!808884))))

(declare-fun b!2532554 () Bool)

(declare-fun tp!808880 () Bool)

(declare-fun tp!808882 () Bool)

(assert (=> b!2532554 (= e!1602439 (and tp!808880 tp!808882))))

(assert (=> b!2532345 (= tp!808798 e!1602439)))

(assert (= (and b!2532345 (is-ElementMatch!7542 (regTwo!15597 (regTwo!15596 r!27340)))) b!2532553))

(assert (= (and b!2532345 (is-Concat!12238 (regTwo!15597 (regTwo!15596 r!27340)))) b!2532554))

(assert (= (and b!2532345 (is-Star!7542 (regTwo!15597 (regTwo!15596 r!27340)))) b!2532555))

(assert (= (and b!2532345 (is-Union!7542 (regTwo!15597 (regTwo!15596 r!27340)))) b!2532556))

(declare-fun b!2532557 () Bool)

(declare-fun e!1602440 () Bool)

(assert (=> b!2532557 (= e!1602440 tp_is_empty!12939)))

(declare-fun b!2532559 () Bool)

(declare-fun tp!808886 () Bool)

(assert (=> b!2532559 (= e!1602440 tp!808886)))

(declare-fun b!2532560 () Bool)

(declare-fun tp!808888 () Bool)

(declare-fun tp!808889 () Bool)

(assert (=> b!2532560 (= e!1602440 (and tp!808888 tp!808889))))

(declare-fun b!2532558 () Bool)

(declare-fun tp!808885 () Bool)

(declare-fun tp!808887 () Bool)

(assert (=> b!2532558 (= e!1602440 (and tp!808885 tp!808887))))

(assert (=> b!2532343 (= tp!808794 e!1602440)))

(assert (= (and b!2532343 (is-ElementMatch!7542 (regOne!15596 (regTwo!15596 r!27340)))) b!2532557))

(assert (= (and b!2532343 (is-Concat!12238 (regOne!15596 (regTwo!15596 r!27340)))) b!2532558))

(assert (= (and b!2532343 (is-Star!7542 (regOne!15596 (regTwo!15596 r!27340)))) b!2532559))

(assert (= (and b!2532343 (is-Union!7542 (regOne!15596 (regTwo!15596 r!27340)))) b!2532560))

(declare-fun b!2532561 () Bool)

(declare-fun e!1602441 () Bool)

(assert (=> b!2532561 (= e!1602441 tp_is_empty!12939)))

(declare-fun b!2532563 () Bool)

(declare-fun tp!808891 () Bool)

(assert (=> b!2532563 (= e!1602441 tp!808891)))

(declare-fun b!2532564 () Bool)

(declare-fun tp!808893 () Bool)

(declare-fun tp!808894 () Bool)

(assert (=> b!2532564 (= e!1602441 (and tp!808893 tp!808894))))

(declare-fun b!2532562 () Bool)

(declare-fun tp!808890 () Bool)

(declare-fun tp!808892 () Bool)

(assert (=> b!2532562 (= e!1602441 (and tp!808890 tp!808892))))

(assert (=> b!2532343 (= tp!808796 e!1602441)))

(assert (= (and b!2532343 (is-ElementMatch!7542 (regTwo!15596 (regTwo!15596 r!27340)))) b!2532561))

(assert (= (and b!2532343 (is-Concat!12238 (regTwo!15596 (regTwo!15596 r!27340)))) b!2532562))

(assert (= (and b!2532343 (is-Star!7542 (regTwo!15596 (regTwo!15596 r!27340)))) b!2532563))

(assert (= (and b!2532343 (is-Union!7542 (regTwo!15596 (regTwo!15596 r!27340)))) b!2532564))

(declare-fun b!2532565 () Bool)

(declare-fun e!1602442 () Bool)

(assert (=> b!2532565 (= e!1602442 tp_is_empty!12939)))

(declare-fun b!2532567 () Bool)

(declare-fun tp!808896 () Bool)

(assert (=> b!2532567 (= e!1602442 tp!808896)))

(declare-fun b!2532568 () Bool)

(declare-fun tp!808898 () Bool)

(declare-fun tp!808899 () Bool)

(assert (=> b!2532568 (= e!1602442 (and tp!808898 tp!808899))))

(declare-fun b!2532566 () Bool)

(declare-fun tp!808895 () Bool)

(declare-fun tp!808897 () Bool)

(assert (=> b!2532566 (= e!1602442 (and tp!808895 tp!808897))))

(assert (=> b!2532348 (= tp!808800 e!1602442)))

(assert (= (and b!2532348 (is-ElementMatch!7542 (reg!7871 (reg!7871 r!27340)))) b!2532565))

(assert (= (and b!2532348 (is-Concat!12238 (reg!7871 (reg!7871 r!27340)))) b!2532566))

(assert (= (and b!2532348 (is-Star!7542 (reg!7871 (reg!7871 r!27340)))) b!2532567))

(assert (= (and b!2532348 (is-Union!7542 (reg!7871 (reg!7871 r!27340)))) b!2532568))

(declare-fun b!2532569 () Bool)

(declare-fun e!1602443 () Bool)

(assert (=> b!2532569 (= e!1602443 tp_is_empty!12939)))

(declare-fun b!2532571 () Bool)

(declare-fun tp!808901 () Bool)

(assert (=> b!2532571 (= e!1602443 tp!808901)))

(declare-fun b!2532572 () Bool)

(declare-fun tp!808903 () Bool)

(declare-fun tp!808904 () Bool)

(assert (=> b!2532572 (= e!1602443 (and tp!808903 tp!808904))))

(declare-fun b!2532570 () Bool)

(declare-fun tp!808900 () Bool)

(declare-fun tp!808902 () Bool)

(assert (=> b!2532570 (= e!1602443 (and tp!808900 tp!808902))))

(assert (=> b!2532339 (= tp!808789 e!1602443)))

(assert (= (and b!2532339 (is-ElementMatch!7542 (regOne!15596 (regOne!15596 r!27340)))) b!2532569))

(assert (= (and b!2532339 (is-Concat!12238 (regOne!15596 (regOne!15596 r!27340)))) b!2532570))

(assert (= (and b!2532339 (is-Star!7542 (regOne!15596 (regOne!15596 r!27340)))) b!2532571))

(assert (= (and b!2532339 (is-Union!7542 (regOne!15596 (regOne!15596 r!27340)))) b!2532572))

(declare-fun b!2532573 () Bool)

(declare-fun e!1602444 () Bool)

(assert (=> b!2532573 (= e!1602444 tp_is_empty!12939)))

(declare-fun b!2532575 () Bool)

(declare-fun tp!808906 () Bool)

(assert (=> b!2532575 (= e!1602444 tp!808906)))

(declare-fun b!2532576 () Bool)

(declare-fun tp!808908 () Bool)

(declare-fun tp!808909 () Bool)

(assert (=> b!2532576 (= e!1602444 (and tp!808908 tp!808909))))

(declare-fun b!2532574 () Bool)

(declare-fun tp!808905 () Bool)

(declare-fun tp!808907 () Bool)

(assert (=> b!2532574 (= e!1602444 (and tp!808905 tp!808907))))

(assert (=> b!2532339 (= tp!808791 e!1602444)))

(assert (= (and b!2532339 (is-ElementMatch!7542 (regTwo!15596 (regOne!15596 r!27340)))) b!2532573))

(assert (= (and b!2532339 (is-Concat!12238 (regTwo!15596 (regOne!15596 r!27340)))) b!2532574))

(assert (= (and b!2532339 (is-Star!7542 (regTwo!15596 (regOne!15596 r!27340)))) b!2532575))

(assert (= (and b!2532339 (is-Union!7542 (regTwo!15596 (regOne!15596 r!27340)))) b!2532576))

(declare-fun b!2532577 () Bool)

(declare-fun e!1602445 () Bool)

(assert (=> b!2532577 (= e!1602445 tp_is_empty!12939)))

(declare-fun b!2532579 () Bool)

(declare-fun tp!808911 () Bool)

(assert (=> b!2532579 (= e!1602445 tp!808911)))

(declare-fun b!2532580 () Bool)

(declare-fun tp!808913 () Bool)

(declare-fun tp!808914 () Bool)

(assert (=> b!2532580 (= e!1602445 (and tp!808913 tp!808914))))

(declare-fun b!2532578 () Bool)

(declare-fun tp!808910 () Bool)

(declare-fun tp!808912 () Bool)

(assert (=> b!2532578 (= e!1602445 (and tp!808910 tp!808912))))

(assert (=> b!2532341 (= tp!808792 e!1602445)))

(assert (= (and b!2532341 (is-ElementMatch!7542 (regOne!15597 (regOne!15596 r!27340)))) b!2532577))

(assert (= (and b!2532341 (is-Concat!12238 (regOne!15597 (regOne!15596 r!27340)))) b!2532578))

(assert (= (and b!2532341 (is-Star!7542 (regOne!15597 (regOne!15596 r!27340)))) b!2532579))

(assert (= (and b!2532341 (is-Union!7542 (regOne!15597 (regOne!15596 r!27340)))) b!2532580))

(declare-fun b!2532581 () Bool)

(declare-fun e!1602446 () Bool)

(assert (=> b!2532581 (= e!1602446 tp_is_empty!12939)))

(declare-fun b!2532583 () Bool)

(declare-fun tp!808916 () Bool)

(assert (=> b!2532583 (= e!1602446 tp!808916)))

(declare-fun b!2532584 () Bool)

(declare-fun tp!808918 () Bool)

(declare-fun tp!808919 () Bool)

(assert (=> b!2532584 (= e!1602446 (and tp!808918 tp!808919))))

(declare-fun b!2532582 () Bool)

(declare-fun tp!808915 () Bool)

(declare-fun tp!808917 () Bool)

(assert (=> b!2532582 (= e!1602446 (and tp!808915 tp!808917))))

(assert (=> b!2532341 (= tp!808793 e!1602446)))

(assert (= (and b!2532341 (is-ElementMatch!7542 (regTwo!15597 (regOne!15596 r!27340)))) b!2532581))

(assert (= (and b!2532341 (is-Concat!12238 (regTwo!15597 (regOne!15596 r!27340)))) b!2532582))

(assert (= (and b!2532341 (is-Star!7542 (regTwo!15597 (regOne!15596 r!27340)))) b!2532583))

(assert (= (and b!2532341 (is-Union!7542 (regTwo!15597 (regOne!15596 r!27340)))) b!2532584))

(declare-fun b!2532585 () Bool)

(declare-fun e!1602447 () Bool)

(assert (=> b!2532585 (= e!1602447 tp_is_empty!12939)))

(declare-fun b!2532587 () Bool)

(declare-fun tp!808921 () Bool)

(assert (=> b!2532587 (= e!1602447 tp!808921)))

(declare-fun b!2532588 () Bool)

(declare-fun tp!808923 () Bool)

(declare-fun tp!808924 () Bool)

(assert (=> b!2532588 (= e!1602447 (and tp!808923 tp!808924))))

(declare-fun b!2532586 () Bool)

(declare-fun tp!808920 () Bool)

(declare-fun tp!808922 () Bool)

(assert (=> b!2532586 (= e!1602447 (and tp!808920 tp!808922))))

(assert (=> b!2532360 (= tp!808812 e!1602447)))

(assert (= (and b!2532360 (is-ElementMatch!7542 (regOne!15596 (regTwo!15597 r!27340)))) b!2532585))

(assert (= (and b!2532360 (is-Concat!12238 (regOne!15596 (regTwo!15597 r!27340)))) b!2532586))

(assert (= (and b!2532360 (is-Star!7542 (regOne!15596 (regTwo!15597 r!27340)))) b!2532587))

(assert (= (and b!2532360 (is-Union!7542 (regOne!15596 (regTwo!15597 r!27340)))) b!2532588))

(declare-fun b!2532589 () Bool)

(declare-fun e!1602448 () Bool)

(assert (=> b!2532589 (= e!1602448 tp_is_empty!12939)))

(declare-fun b!2532591 () Bool)

(declare-fun tp!808926 () Bool)

(assert (=> b!2532591 (= e!1602448 tp!808926)))

(declare-fun b!2532592 () Bool)

(declare-fun tp!808928 () Bool)

(declare-fun tp!808929 () Bool)

(assert (=> b!2532592 (= e!1602448 (and tp!808928 tp!808929))))

(declare-fun b!2532590 () Bool)

(declare-fun tp!808925 () Bool)

(declare-fun tp!808927 () Bool)

(assert (=> b!2532590 (= e!1602448 (and tp!808925 tp!808927))))

(assert (=> b!2532360 (= tp!808814 e!1602448)))

(assert (= (and b!2532360 (is-ElementMatch!7542 (regTwo!15596 (regTwo!15597 r!27340)))) b!2532589))

(assert (= (and b!2532360 (is-Concat!12238 (regTwo!15596 (regTwo!15597 r!27340)))) b!2532590))

(assert (= (and b!2532360 (is-Star!7542 (regTwo!15596 (regTwo!15597 r!27340)))) b!2532591))

(assert (= (and b!2532360 (is-Union!7542 (regTwo!15596 (regTwo!15597 r!27340)))) b!2532592))

(declare-fun b!2532593 () Bool)

(declare-fun e!1602449 () Bool)

(assert (=> b!2532593 (= e!1602449 tp_is_empty!12939)))

(declare-fun b!2532595 () Bool)

(declare-fun tp!808931 () Bool)

(assert (=> b!2532595 (= e!1602449 tp!808931)))

(declare-fun b!2532596 () Bool)

(declare-fun tp!808933 () Bool)

(declare-fun tp!808934 () Bool)

(assert (=> b!2532596 (= e!1602449 (and tp!808933 tp!808934))))

(declare-fun b!2532594 () Bool)

(declare-fun tp!808930 () Bool)

(declare-fun tp!808932 () Bool)

(assert (=> b!2532594 (= e!1602449 (and tp!808930 tp!808932))))

(assert (=> b!2532356 (= tp!808807 e!1602449)))

(assert (= (and b!2532356 (is-ElementMatch!7542 (regOne!15596 (regOne!15597 r!27340)))) b!2532593))

(assert (= (and b!2532356 (is-Concat!12238 (regOne!15596 (regOne!15597 r!27340)))) b!2532594))

(assert (= (and b!2532356 (is-Star!7542 (regOne!15596 (regOne!15597 r!27340)))) b!2532595))

(assert (= (and b!2532356 (is-Union!7542 (regOne!15596 (regOne!15597 r!27340)))) b!2532596))

(declare-fun b!2532597 () Bool)

(declare-fun e!1602450 () Bool)

(assert (=> b!2532597 (= e!1602450 tp_is_empty!12939)))

(declare-fun b!2532599 () Bool)

(declare-fun tp!808936 () Bool)

(assert (=> b!2532599 (= e!1602450 tp!808936)))

(declare-fun b!2532600 () Bool)

(declare-fun tp!808938 () Bool)

(declare-fun tp!808939 () Bool)

(assert (=> b!2532600 (= e!1602450 (and tp!808938 tp!808939))))

(declare-fun b!2532598 () Bool)

(declare-fun tp!808935 () Bool)

(declare-fun tp!808937 () Bool)

(assert (=> b!2532598 (= e!1602450 (and tp!808935 tp!808937))))

(assert (=> b!2532356 (= tp!808809 e!1602450)))

(assert (= (and b!2532356 (is-ElementMatch!7542 (regTwo!15596 (regOne!15597 r!27340)))) b!2532597))

(assert (= (and b!2532356 (is-Concat!12238 (regTwo!15596 (regOne!15597 r!27340)))) b!2532598))

(assert (= (and b!2532356 (is-Star!7542 (regTwo!15596 (regOne!15597 r!27340)))) b!2532599))

(assert (= (and b!2532356 (is-Union!7542 (regTwo!15596 (regOne!15597 r!27340)))) b!2532600))

(declare-fun b!2532601 () Bool)

(declare-fun e!1602451 () Bool)

(assert (=> b!2532601 (= e!1602451 tp_is_empty!12939)))

(declare-fun b!2532603 () Bool)

(declare-fun tp!808941 () Bool)

(assert (=> b!2532603 (= e!1602451 tp!808941)))

(declare-fun b!2532604 () Bool)

(declare-fun tp!808943 () Bool)

(declare-fun tp!808944 () Bool)

(assert (=> b!2532604 (= e!1602451 (and tp!808943 tp!808944))))

(declare-fun b!2532602 () Bool)

(declare-fun tp!808940 () Bool)

(declare-fun tp!808942 () Bool)

(assert (=> b!2532602 (= e!1602451 (and tp!808940 tp!808942))))

(assert (=> b!2532361 (= tp!808813 e!1602451)))

(assert (= (and b!2532361 (is-ElementMatch!7542 (reg!7871 (regTwo!15597 r!27340)))) b!2532601))

(assert (= (and b!2532361 (is-Concat!12238 (reg!7871 (regTwo!15597 r!27340)))) b!2532602))

(assert (= (and b!2532361 (is-Star!7542 (reg!7871 (regTwo!15597 r!27340)))) b!2532603))

(assert (= (and b!2532361 (is-Union!7542 (reg!7871 (regTwo!15597 r!27340)))) b!2532604))

(declare-fun b!2532605 () Bool)

(declare-fun e!1602452 () Bool)

(assert (=> b!2532605 (= e!1602452 tp_is_empty!12939)))

(declare-fun b!2532607 () Bool)

(declare-fun tp!808946 () Bool)

(assert (=> b!2532607 (= e!1602452 tp!808946)))

(declare-fun b!2532608 () Bool)

(declare-fun tp!808948 () Bool)

(declare-fun tp!808949 () Bool)

(assert (=> b!2532608 (= e!1602452 (and tp!808948 tp!808949))))

(declare-fun b!2532606 () Bool)

(declare-fun tp!808945 () Bool)

(declare-fun tp!808947 () Bool)

(assert (=> b!2532606 (= e!1602452 (and tp!808945 tp!808947))))

(assert (=> b!2532358 (= tp!808810 e!1602452)))

(assert (= (and b!2532358 (is-ElementMatch!7542 (regOne!15597 (regOne!15597 r!27340)))) b!2532605))

(assert (= (and b!2532358 (is-Concat!12238 (regOne!15597 (regOne!15597 r!27340)))) b!2532606))

(assert (= (and b!2532358 (is-Star!7542 (regOne!15597 (regOne!15597 r!27340)))) b!2532607))

(assert (= (and b!2532358 (is-Union!7542 (regOne!15597 (regOne!15597 r!27340)))) b!2532608))

(declare-fun b!2532609 () Bool)

(declare-fun e!1602453 () Bool)

(assert (=> b!2532609 (= e!1602453 tp_is_empty!12939)))

(declare-fun b!2532611 () Bool)

(declare-fun tp!808951 () Bool)

(assert (=> b!2532611 (= e!1602453 tp!808951)))

(declare-fun b!2532612 () Bool)

(declare-fun tp!808953 () Bool)

(declare-fun tp!808954 () Bool)

(assert (=> b!2532612 (= e!1602453 (and tp!808953 tp!808954))))

(declare-fun b!2532610 () Bool)

(declare-fun tp!808950 () Bool)

(declare-fun tp!808952 () Bool)

(assert (=> b!2532610 (= e!1602453 (and tp!808950 tp!808952))))

(assert (=> b!2532358 (= tp!808811 e!1602453)))

(assert (= (and b!2532358 (is-ElementMatch!7542 (regTwo!15597 (regOne!15597 r!27340)))) b!2532609))

(assert (= (and b!2532358 (is-Concat!12238 (regTwo!15597 (regOne!15597 r!27340)))) b!2532610))

(assert (= (and b!2532358 (is-Star!7542 (regTwo!15597 (regOne!15597 r!27340)))) b!2532611))

(assert (= (and b!2532358 (is-Union!7542 (regTwo!15597 (regOne!15597 r!27340)))) b!2532612))

(declare-fun b!2532613 () Bool)

(declare-fun e!1602454 () Bool)

(declare-fun tp!808955 () Bool)

(assert (=> b!2532613 (= e!1602454 (and tp_is_empty!12939 tp!808955))))

(assert (=> b!2532354 (= tp!808806 e!1602454)))

(assert (= (and b!2532354 (is-Cons!29507 (t!211306 (t!211306 tl!4068)))) b!2532613))

(declare-fun b!2532614 () Bool)

(declare-fun e!1602455 () Bool)

(assert (=> b!2532614 (= e!1602455 tp_is_empty!12939)))

(declare-fun b!2532616 () Bool)

(declare-fun tp!808957 () Bool)

(assert (=> b!2532616 (= e!1602455 tp!808957)))

(declare-fun b!2532617 () Bool)

(declare-fun tp!808959 () Bool)

(declare-fun tp!808960 () Bool)

(assert (=> b!2532617 (= e!1602455 (and tp!808959 tp!808960))))

(declare-fun b!2532615 () Bool)

(declare-fun tp!808956 () Bool)

(declare-fun tp!808958 () Bool)

(assert (=> b!2532615 (= e!1602455 (and tp!808956 tp!808958))))

(assert (=> b!2532347 (= tp!808799 e!1602455)))

(assert (= (and b!2532347 (is-ElementMatch!7542 (regOne!15596 (reg!7871 r!27340)))) b!2532614))

(assert (= (and b!2532347 (is-Concat!12238 (regOne!15596 (reg!7871 r!27340)))) b!2532615))

(assert (= (and b!2532347 (is-Star!7542 (regOne!15596 (reg!7871 r!27340)))) b!2532616))

(assert (= (and b!2532347 (is-Union!7542 (regOne!15596 (reg!7871 r!27340)))) b!2532617))

(declare-fun b!2532618 () Bool)

(declare-fun e!1602456 () Bool)

(assert (=> b!2532618 (= e!1602456 tp_is_empty!12939)))

(declare-fun b!2532620 () Bool)

(declare-fun tp!808962 () Bool)

(assert (=> b!2532620 (= e!1602456 tp!808962)))

(declare-fun b!2532621 () Bool)

(declare-fun tp!808964 () Bool)

(declare-fun tp!808965 () Bool)

(assert (=> b!2532621 (= e!1602456 (and tp!808964 tp!808965))))

(declare-fun b!2532619 () Bool)

(declare-fun tp!808961 () Bool)

(declare-fun tp!808963 () Bool)

(assert (=> b!2532619 (= e!1602456 (and tp!808961 tp!808963))))

(assert (=> b!2532347 (= tp!808801 e!1602456)))

(assert (= (and b!2532347 (is-ElementMatch!7542 (regTwo!15596 (reg!7871 r!27340)))) b!2532618))

(assert (= (and b!2532347 (is-Concat!12238 (regTwo!15596 (reg!7871 r!27340)))) b!2532619))

(assert (= (and b!2532347 (is-Star!7542 (regTwo!15596 (reg!7871 r!27340)))) b!2532620))

(assert (= (and b!2532347 (is-Union!7542 (regTwo!15596 (reg!7871 r!27340)))) b!2532621))

(declare-fun b!2532622 () Bool)

(declare-fun e!1602457 () Bool)

(assert (=> b!2532622 (= e!1602457 tp_is_empty!12939)))

(declare-fun b!2532624 () Bool)

(declare-fun tp!808967 () Bool)

(assert (=> b!2532624 (= e!1602457 tp!808967)))

(declare-fun b!2532625 () Bool)

(declare-fun tp!808969 () Bool)

(declare-fun tp!808970 () Bool)

(assert (=> b!2532625 (= e!1602457 (and tp!808969 tp!808970))))

(declare-fun b!2532623 () Bool)

(declare-fun tp!808966 () Bool)

(declare-fun tp!808968 () Bool)

(assert (=> b!2532623 (= e!1602457 (and tp!808966 tp!808968))))

(assert (=> b!2532357 (= tp!808808 e!1602457)))

(assert (= (and b!2532357 (is-ElementMatch!7542 (reg!7871 (regOne!15597 r!27340)))) b!2532622))

(assert (= (and b!2532357 (is-Concat!12238 (reg!7871 (regOne!15597 r!27340)))) b!2532623))

(assert (= (and b!2532357 (is-Star!7542 (reg!7871 (regOne!15597 r!27340)))) b!2532624))

(assert (= (and b!2532357 (is-Union!7542 (reg!7871 (regOne!15597 r!27340)))) b!2532625))

(declare-fun b!2532626 () Bool)

(declare-fun e!1602458 () Bool)

(assert (=> b!2532626 (= e!1602458 tp_is_empty!12939)))

(declare-fun b!2532628 () Bool)

(declare-fun tp!808972 () Bool)

(assert (=> b!2532628 (= e!1602458 tp!808972)))

(declare-fun b!2532629 () Bool)

(declare-fun tp!808974 () Bool)

(declare-fun tp!808975 () Bool)

(assert (=> b!2532629 (= e!1602458 (and tp!808974 tp!808975))))

(declare-fun b!2532627 () Bool)

(declare-fun tp!808971 () Bool)

(declare-fun tp!808973 () Bool)

(assert (=> b!2532627 (= e!1602458 (and tp!808971 tp!808973))))

(assert (=> b!2532362 (= tp!808815 e!1602458)))

(assert (= (and b!2532362 (is-ElementMatch!7542 (regOne!15597 (regTwo!15597 r!27340)))) b!2532626))

(assert (= (and b!2532362 (is-Concat!12238 (regOne!15597 (regTwo!15597 r!27340)))) b!2532627))

(assert (= (and b!2532362 (is-Star!7542 (regOne!15597 (regTwo!15597 r!27340)))) b!2532628))

(assert (= (and b!2532362 (is-Union!7542 (regOne!15597 (regTwo!15597 r!27340)))) b!2532629))

(declare-fun b!2532630 () Bool)

(declare-fun e!1602459 () Bool)

(assert (=> b!2532630 (= e!1602459 tp_is_empty!12939)))

(declare-fun b!2532632 () Bool)

(declare-fun tp!808977 () Bool)

(assert (=> b!2532632 (= e!1602459 tp!808977)))

(declare-fun b!2532633 () Bool)

(declare-fun tp!808979 () Bool)

(declare-fun tp!808980 () Bool)

(assert (=> b!2532633 (= e!1602459 (and tp!808979 tp!808980))))

(declare-fun b!2532631 () Bool)

(declare-fun tp!808976 () Bool)

(declare-fun tp!808978 () Bool)

(assert (=> b!2532631 (= e!1602459 (and tp!808976 tp!808978))))

(assert (=> b!2532362 (= tp!808816 e!1602459)))

(assert (= (and b!2532362 (is-ElementMatch!7542 (regTwo!15597 (regTwo!15597 r!27340)))) b!2532630))

(assert (= (and b!2532362 (is-Concat!12238 (regTwo!15597 (regTwo!15597 r!27340)))) b!2532631))

(assert (= (and b!2532362 (is-Star!7542 (regTwo!15597 (regTwo!15597 r!27340)))) b!2532632))

(assert (= (and b!2532362 (is-Union!7542 (regTwo!15597 (regTwo!15597 r!27340)))) b!2532633))

(push 1)

(assert (not bm!158840))

(assert (not b!2532543))

(assert (not bm!158838))

(assert (not b!2532617))

(assert (not b!2532544))

(assert (not b!2532632))

(assert (not b!2532595))

(assert (not b!2532568))

(assert (not b!2532580))

(assert (not b!2532616))

(assert (not b!2532570))

(assert (not bm!158857))

(assert (not b!2532583))

(assert (not b!2532619))

(assert (not bm!158863))

(assert (not bm!158866))

(assert (not b!2532598))

(assert (not b!2532559))

(assert (not b!2532579))

(assert (not b!2532623))

(assert (not bm!158865))

(assert (not bm!158859))

(assert (not b!2532592))

(assert (not b!2532506))

(assert (not b!2532535))

(assert (not b!2532566))

(assert (not b!2532555))

(assert (not b!2532578))

(assert (not b!2532620))

(assert (not b!2532524))

(assert (not b!2532551))

(assert (not b!2532625))

(assert (not bm!158851))

(assert (not b!2532492))

(assert (not bm!158860))

(assert (not b!2532552))

(assert (not b!2532606))

(assert (not bm!158839))

(assert (not b!2532587))

(assert (not b!2532633))

(assert (not b!2532572))

(assert (not b!2532611))

(assert (not bm!158855))

(assert (not b!2532542))

(assert (not b!2532560))

(assert (not d!720083))

(assert (not bm!158837))

(assert (not b!2532629))

(assert (not b!2532608))

(assert (not b!2532482))

(assert (not b!2532554))

(assert (not b!2532610))

(assert (not b!2532599))

(assert (not b!2532562))

(assert (not b!2532615))

(assert (not b!2532586))

(assert (not bm!158847))

(assert (not b!2532612))

(assert (not b!2532567))

(assert (not b!2532590))

(assert (not b!2532538))

(assert (not b!2532596))

(assert (not b!2532548))

(assert (not b!2532534))

(assert (not b!2532475))

(assert (not b!2532497))

(assert (not b!2532627))

(assert (not d!720087))

(assert (not b!2532564))

(assert (not b!2532604))

(assert (not b!2532584))

(assert (not b!2532539))

(assert (not b!2532575))

(assert (not b!2532594))

(assert (not b!2532540))

(assert (not d!720073))

(assert (not b!2532558))

(assert (not b!2532631))

(assert (not b!2532556))

(assert (not b!2532563))

(assert (not b!2532440))

(assert (not b!2532546))

(assert (not d!720085))

(assert (not b!2532574))

(assert (not b!2532602))

(assert (not b!2532600))

(assert (not b!2532607))

(assert (not b!2532613))

(assert (not b!2532628))

(assert (not b!2532515))

(assert (not b!2532576))

(assert (not d!720091))

(assert (not d!720081))

(assert tp_is_empty!12939)

(assert (not b!2532624))

(assert (not b!2532547))

(assert (not b!2532582))

(assert (not b!2532536))

(assert (not bm!158854))

(assert (not b!2532621))

(assert (not bm!158846))

(assert (not b!2532550))

(assert (not b!2532445))

(assert (not d!720075))

(assert (not b!2532603))

(assert (not bm!158856))

(assert (not b!2532588))

(assert (not bm!158862))

(assert (not b!2532591))

(assert (not bm!158850))

(assert (not b!2532571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

