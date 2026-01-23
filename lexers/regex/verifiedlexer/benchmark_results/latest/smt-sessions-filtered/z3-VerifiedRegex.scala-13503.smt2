; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728248 () Bool)

(assert start!728248)

(declare-fun b!7524513 () Bool)

(declare-fun e!4485201 () Bool)

(declare-fun tp!2186403 () Bool)

(assert (=> b!7524513 (= e!4485201 tp!2186403)))

(declare-fun res!3015845 () Bool)

(declare-fun e!4485200 () Bool)

(assert (=> start!728248 (=> (not res!3015845) (not e!4485200))))

(declare-datatypes ((C!39928 0))(
  ( (C!39929 (val!30404 Int)) )
))
(declare-datatypes ((Regex!19801 0))(
  ( (ElementMatch!19801 (c!1390058 C!39928)) (Concat!28646 (regOne!40114 Regex!19801) (regTwo!40114 Regex!19801)) (EmptyExpr!19801) (Star!19801 (reg!20130 Regex!19801)) (EmptyLang!19801) (Union!19801 (regOne!40115 Regex!19801) (regTwo!40115 Regex!19801)) )
))
(declare-fun expr!41 () Regex!19801)

(declare-fun validRegex!10229 (Regex!19801) Bool)

(assert (=> start!728248 (= res!3015845 (validRegex!10229 expr!41))))

(assert (=> start!728248 e!4485200))

(assert (=> start!728248 e!4485201))

(declare-fun tp_is_empty!49957 () Bool)

(assert (=> start!728248 tp_is_empty!49957))

(declare-fun b!7524514 () Bool)

(declare-fun e!4485199 () Bool)

(declare-fun nullable!8635 (Regex!19801) Bool)

(assert (=> b!7524514 (= e!4485199 (not (nullable!8635 (regOne!40114 expr!41))))))

(declare-fun b!7524515 () Bool)

(declare-fun res!3015842 () Bool)

(assert (=> b!7524515 (=> (not res!3015842) (not e!4485200))))

(declare-fun a!1106 () C!39928)

(get-info :version)

(assert (=> b!7524515 (= res!3015842 (and (or (not ((_ is ElementMatch!19801) expr!41)) (not (= (c!1390058 expr!41) a!1106))) (not ((_ is Union!19801) expr!41))))))

(declare-fun b!7524516 () Bool)

(declare-fun res!3015844 () Bool)

(assert (=> b!7524516 (=> (not res!3015844) (not e!4485200))))

(assert (=> b!7524516 (= res!3015844 ((_ is Concat!28646) expr!41))))

(declare-fun b!7524517 () Bool)

(declare-fun res!3015843 () Bool)

(assert (=> b!7524517 (=> (not res!3015843) (not e!4485200))))

(assert (=> b!7524517 (= res!3015843 e!4485199)))

(declare-fun res!3015846 () Bool)

(assert (=> b!7524517 (=> res!3015846 e!4485199)))

(assert (=> b!7524517 (= res!3015846 (not ((_ is Concat!28646) expr!41)))))

(declare-fun b!7524518 () Bool)

(declare-fun tp!2186401 () Bool)

(declare-fun tp!2186402 () Bool)

(assert (=> b!7524518 (= e!4485201 (and tp!2186401 tp!2186402))))

(declare-fun b!7524519 () Bool)

(declare-fun tp!2186400 () Bool)

(declare-fun tp!2186399 () Bool)

(assert (=> b!7524519 (= e!4485201 (and tp!2186400 tp!2186399))))

(declare-fun b!7524520 () Bool)

(assert (=> b!7524520 (= e!4485201 tp_is_empty!49957)))

(declare-fun b!7524521 () Bool)

(declare-fun regexDepth!455 (Regex!19801) Int)

(assert (=> b!7524521 (= e!4485200 (>= (regexDepth!455 (regOne!40114 expr!41)) (regexDepth!455 expr!41)))))

(assert (= (and start!728248 res!3015845) b!7524515))

(assert (= (and b!7524515 res!3015842) b!7524517))

(assert (= (and b!7524517 (not res!3015846)) b!7524514))

(assert (= (and b!7524517 res!3015843) b!7524516))

(assert (= (and b!7524516 res!3015844) b!7524521))

(assert (= (and start!728248 ((_ is ElementMatch!19801) expr!41)) b!7524520))

(assert (= (and start!728248 ((_ is Concat!28646) expr!41)) b!7524518))

(assert (= (and start!728248 ((_ is Star!19801) expr!41)) b!7524513))

(assert (= (and start!728248 ((_ is Union!19801) expr!41)) b!7524519))

(declare-fun m!8101118 () Bool)

(assert (=> start!728248 m!8101118))

(declare-fun m!8101120 () Bool)

(assert (=> b!7524514 m!8101120))

(declare-fun m!8101122 () Bool)

(assert (=> b!7524521 m!8101122))

(declare-fun m!8101124 () Bool)

(assert (=> b!7524521 m!8101124))

(check-sat tp_is_empty!49957 (not start!728248) (not b!7524521) (not b!7524518) (not b!7524519) (not b!7524513) (not b!7524514))
(check-sat)
(get-model)

(declare-fun d!2309304 () Bool)

(declare-fun nullableFct!3462 (Regex!19801) Bool)

(assert (=> d!2309304 (= (nullable!8635 (regOne!40114 expr!41)) (nullableFct!3462 (regOne!40114 expr!41)))))

(declare-fun bs!1939734 () Bool)

(assert (= bs!1939734 d!2309304))

(declare-fun m!8101128 () Bool)

(assert (=> bs!1939734 m!8101128))

(assert (=> b!7524514 d!2309304))

(declare-fun b!7524617 () Bool)

(declare-fun e!4485269 () Int)

(assert (=> b!7524617 (= e!4485269 1)))

(declare-fun b!7524618 () Bool)

(declare-fun e!4485264 () Bool)

(declare-fun e!4485266 () Bool)

(assert (=> b!7524618 (= e!4485264 e!4485266)))

(declare-fun c!1390093 () Bool)

(assert (=> b!7524618 (= c!1390093 ((_ is Union!19801) (regOne!40114 expr!41)))))

(declare-fun bm!690265 () Bool)

(declare-fun call!690270 () Int)

(declare-fun c!1390099 () Bool)

(assert (=> bm!690265 (= call!690270 (regexDepth!455 (ite c!1390099 (regTwo!40115 (regOne!40114 expr!41)) (regOne!40114 (regOne!40114 expr!41)))))))

(declare-fun b!7524619 () Bool)

(declare-fun e!4485267 () Int)

(assert (=> b!7524619 (= e!4485267 e!4485269)))

(declare-fun c!1390097 () Bool)

(assert (=> b!7524619 (= c!1390097 ((_ is Concat!28646) (regOne!40114 expr!41)))))

(declare-fun b!7524620 () Bool)

(declare-fun c!1390094 () Bool)

(assert (=> b!7524620 (= c!1390094 ((_ is Star!19801) (regOne!40114 expr!41)))))

(declare-fun e!4485268 () Bool)

(declare-fun e!4485271 () Bool)

(assert (=> b!7524620 (= e!4485268 e!4485271)))

(declare-fun b!7524621 () Bool)

(declare-fun e!4485272 () Int)

(declare-fun call!690276 () Int)

(assert (=> b!7524621 (= e!4485272 (+ 1 call!690276))))

(declare-fun b!7524622 () Bool)

(declare-fun e!4485265 () Int)

(assert (=> b!7524622 (= e!4485265 1)))

(declare-fun b!7524623 () Bool)

(declare-fun e!4485263 () Bool)

(assert (=> b!7524623 (= e!4485266 e!4485263)))

(declare-fun res!3015876 () Bool)

(declare-fun lt!2638637 () Int)

(declare-fun call!690271 () Int)

(assert (=> b!7524623 (= res!3015876 (> lt!2638637 call!690271))))

(assert (=> b!7524623 (=> (not res!3015876) (not e!4485263))))

(declare-fun b!7524624 () Bool)

(assert (=> b!7524624 (= c!1390099 ((_ is Union!19801) (regOne!40114 expr!41)))))

(assert (=> b!7524624 (= e!4485272 e!4485267)))

(declare-fun b!7524626 () Bool)

(declare-fun call!690275 () Int)

(assert (=> b!7524626 (= e!4485269 (+ 1 call!690275))))

(declare-fun bm!690266 () Bool)

(declare-fun call!690272 () Int)

(assert (=> bm!690266 (= call!690272 call!690271)))

(declare-fun b!7524627 () Bool)

(assert (=> b!7524627 (= e!4485271 (> lt!2638637 call!690272))))

(declare-fun bm!690267 () Bool)

(declare-fun call!690273 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!690267 (= call!690275 (maxBigInt!0 (ite c!1390099 call!690273 call!690270) (ite c!1390099 call!690270 call!690273)))))

(declare-fun b!7524628 () Bool)

(assert (=> b!7524628 (= e!4485271 (= lt!2638637 1))))

(declare-fun b!7524629 () Bool)

(declare-fun res!3015875 () Bool)

(declare-fun e!4485270 () Bool)

(assert (=> b!7524629 (=> (not res!3015875) (not e!4485270))))

(declare-fun call!690274 () Int)

(assert (=> b!7524629 (= res!3015875 (> lt!2638637 call!690274))))

(assert (=> b!7524629 (= e!4485268 e!4485270)))

(declare-fun b!7524630 () Bool)

(assert (=> b!7524630 (= e!4485265 e!4485272)))

(declare-fun c!1390098 () Bool)

(assert (=> b!7524630 (= c!1390098 ((_ is Star!19801) (regOne!40114 expr!41)))))

(declare-fun c!1390095 () Bool)

(declare-fun bm!690268 () Bool)

(assert (=> bm!690268 (= call!690271 (regexDepth!455 (ite c!1390093 (regOne!40115 (regOne!40114 expr!41)) (ite c!1390095 (regTwo!40114 (regOne!40114 expr!41)) (reg!20130 (regOne!40114 expr!41))))))))

(declare-fun b!7524631 () Bool)

(assert (=> b!7524631 (= e!4485266 e!4485268)))

(assert (=> b!7524631 (= c!1390095 ((_ is Concat!28646) (regOne!40114 expr!41)))))

(declare-fun bm!690269 () Bool)

(assert (=> bm!690269 (= call!690273 call!690276)))

(declare-fun bm!690270 () Bool)

(assert (=> bm!690270 (= call!690274 (regexDepth!455 (ite c!1390093 (regTwo!40115 (regOne!40114 expr!41)) (regOne!40114 (regOne!40114 expr!41)))))))

(declare-fun b!7524632 () Bool)

(assert (=> b!7524632 (= e!4485267 (+ 1 call!690275))))

(declare-fun b!7524633 () Bool)

(assert (=> b!7524633 (= e!4485263 (> lt!2638637 call!690274))))

(declare-fun bm!690271 () Bool)

(assert (=> bm!690271 (= call!690276 (regexDepth!455 (ite c!1390098 (reg!20130 (regOne!40114 expr!41)) (ite c!1390099 (regOne!40115 (regOne!40114 expr!41)) (regTwo!40114 (regOne!40114 expr!41))))))))

(declare-fun d!2309306 () Bool)

(assert (=> d!2309306 e!4485264))

(declare-fun res!3015874 () Bool)

(assert (=> d!2309306 (=> (not res!3015874) (not e!4485264))))

(assert (=> d!2309306 (= res!3015874 (> lt!2638637 0))))

(assert (=> d!2309306 (= lt!2638637 e!4485265)))

(declare-fun c!1390096 () Bool)

(assert (=> d!2309306 (= c!1390096 ((_ is ElementMatch!19801) (regOne!40114 expr!41)))))

(assert (=> d!2309306 (= (regexDepth!455 (regOne!40114 expr!41)) lt!2638637)))

(declare-fun b!7524625 () Bool)

(assert (=> b!7524625 (= e!4485270 (> lt!2638637 call!690272))))

(assert (= (and d!2309306 c!1390096) b!7524622))

(assert (= (and d!2309306 (not c!1390096)) b!7524630))

(assert (= (and b!7524630 c!1390098) b!7524621))

(assert (= (and b!7524630 (not c!1390098)) b!7524624))

(assert (= (and b!7524624 c!1390099) b!7524632))

(assert (= (and b!7524624 (not c!1390099)) b!7524619))

(assert (= (and b!7524619 c!1390097) b!7524626))

(assert (= (and b!7524619 (not c!1390097)) b!7524617))

(assert (= (or b!7524632 b!7524626) bm!690269))

(assert (= (or b!7524632 b!7524626) bm!690265))

(assert (= (or b!7524632 b!7524626) bm!690267))

(assert (= (or b!7524621 bm!690269) bm!690271))

(assert (= (and d!2309306 res!3015874) b!7524618))

(assert (= (and b!7524618 c!1390093) b!7524623))

(assert (= (and b!7524618 (not c!1390093)) b!7524631))

(assert (= (and b!7524623 res!3015876) b!7524633))

(assert (= (and b!7524631 c!1390095) b!7524629))

(assert (= (and b!7524631 (not c!1390095)) b!7524620))

(assert (= (and b!7524629 res!3015875) b!7524625))

(assert (= (and b!7524620 c!1390094) b!7524627))

(assert (= (and b!7524620 (not c!1390094)) b!7524628))

(assert (= (or b!7524625 b!7524627) bm!690266))

(assert (= (or b!7524623 bm!690266) bm!690268))

(assert (= (or b!7524633 b!7524629) bm!690270))

(declare-fun m!8101136 () Bool)

(assert (=> bm!690268 m!8101136))

(declare-fun m!8101138 () Bool)

(assert (=> bm!690271 m!8101138))

(declare-fun m!8101140 () Bool)

(assert (=> bm!690267 m!8101140))

(declare-fun m!8101142 () Bool)

(assert (=> bm!690270 m!8101142))

(declare-fun m!8101144 () Bool)

(assert (=> bm!690265 m!8101144))

(assert (=> b!7524521 d!2309306))

(declare-fun b!7524634 () Bool)

(declare-fun e!4485279 () Int)

(assert (=> b!7524634 (= e!4485279 1)))

(declare-fun b!7524635 () Bool)

(declare-fun e!4485274 () Bool)

(declare-fun e!4485276 () Bool)

(assert (=> b!7524635 (= e!4485274 e!4485276)))

(declare-fun c!1390100 () Bool)

(assert (=> b!7524635 (= c!1390100 ((_ is Union!19801) expr!41))))

(declare-fun bm!690272 () Bool)

(declare-fun call!690277 () Int)

(declare-fun c!1390106 () Bool)

(assert (=> bm!690272 (= call!690277 (regexDepth!455 (ite c!1390106 (regTwo!40115 expr!41) (regOne!40114 expr!41))))))

(declare-fun b!7524636 () Bool)

(declare-fun e!4485277 () Int)

(assert (=> b!7524636 (= e!4485277 e!4485279)))

(declare-fun c!1390104 () Bool)

(assert (=> b!7524636 (= c!1390104 ((_ is Concat!28646) expr!41))))

(declare-fun b!7524637 () Bool)

(declare-fun c!1390101 () Bool)

(assert (=> b!7524637 (= c!1390101 ((_ is Star!19801) expr!41))))

(declare-fun e!4485278 () Bool)

(declare-fun e!4485281 () Bool)

(assert (=> b!7524637 (= e!4485278 e!4485281)))

(declare-fun b!7524638 () Bool)

(declare-fun e!4485282 () Int)

(declare-fun call!690283 () Int)

(assert (=> b!7524638 (= e!4485282 (+ 1 call!690283))))

(declare-fun b!7524639 () Bool)

(declare-fun e!4485275 () Int)

(assert (=> b!7524639 (= e!4485275 1)))

(declare-fun b!7524640 () Bool)

(declare-fun e!4485273 () Bool)

(assert (=> b!7524640 (= e!4485276 e!4485273)))

(declare-fun res!3015879 () Bool)

(declare-fun lt!2638638 () Int)

(declare-fun call!690278 () Int)

(assert (=> b!7524640 (= res!3015879 (> lt!2638638 call!690278))))

(assert (=> b!7524640 (=> (not res!3015879) (not e!4485273))))

(declare-fun b!7524641 () Bool)

(assert (=> b!7524641 (= c!1390106 ((_ is Union!19801) expr!41))))

(assert (=> b!7524641 (= e!4485282 e!4485277)))

(declare-fun b!7524643 () Bool)

(declare-fun call!690282 () Int)

(assert (=> b!7524643 (= e!4485279 (+ 1 call!690282))))

(declare-fun bm!690273 () Bool)

(declare-fun call!690279 () Int)

(assert (=> bm!690273 (= call!690279 call!690278)))

(declare-fun b!7524644 () Bool)

(assert (=> b!7524644 (= e!4485281 (> lt!2638638 call!690279))))

(declare-fun bm!690274 () Bool)

(declare-fun call!690280 () Int)

(assert (=> bm!690274 (= call!690282 (maxBigInt!0 (ite c!1390106 call!690280 call!690277) (ite c!1390106 call!690277 call!690280)))))

(declare-fun b!7524645 () Bool)

(assert (=> b!7524645 (= e!4485281 (= lt!2638638 1))))

(declare-fun b!7524646 () Bool)

(declare-fun res!3015878 () Bool)

(declare-fun e!4485280 () Bool)

(assert (=> b!7524646 (=> (not res!3015878) (not e!4485280))))

(declare-fun call!690281 () Int)

(assert (=> b!7524646 (= res!3015878 (> lt!2638638 call!690281))))

(assert (=> b!7524646 (= e!4485278 e!4485280)))

(declare-fun b!7524647 () Bool)

(assert (=> b!7524647 (= e!4485275 e!4485282)))

(declare-fun c!1390105 () Bool)

(assert (=> b!7524647 (= c!1390105 ((_ is Star!19801) expr!41))))

(declare-fun c!1390102 () Bool)

(declare-fun bm!690275 () Bool)

(assert (=> bm!690275 (= call!690278 (regexDepth!455 (ite c!1390100 (regOne!40115 expr!41) (ite c!1390102 (regTwo!40114 expr!41) (reg!20130 expr!41)))))))

(declare-fun b!7524648 () Bool)

(assert (=> b!7524648 (= e!4485276 e!4485278)))

(assert (=> b!7524648 (= c!1390102 ((_ is Concat!28646) expr!41))))

(declare-fun bm!690276 () Bool)

(assert (=> bm!690276 (= call!690280 call!690283)))

(declare-fun bm!690277 () Bool)

(assert (=> bm!690277 (= call!690281 (regexDepth!455 (ite c!1390100 (regTwo!40115 expr!41) (regOne!40114 expr!41))))))

(declare-fun b!7524649 () Bool)

(assert (=> b!7524649 (= e!4485277 (+ 1 call!690282))))

(declare-fun b!7524650 () Bool)

(assert (=> b!7524650 (= e!4485273 (> lt!2638638 call!690281))))

(declare-fun bm!690278 () Bool)

(assert (=> bm!690278 (= call!690283 (regexDepth!455 (ite c!1390105 (reg!20130 expr!41) (ite c!1390106 (regOne!40115 expr!41) (regTwo!40114 expr!41)))))))

(declare-fun d!2309310 () Bool)

(assert (=> d!2309310 e!4485274))

(declare-fun res!3015877 () Bool)

(assert (=> d!2309310 (=> (not res!3015877) (not e!4485274))))

(assert (=> d!2309310 (= res!3015877 (> lt!2638638 0))))

(assert (=> d!2309310 (= lt!2638638 e!4485275)))

(declare-fun c!1390103 () Bool)

(assert (=> d!2309310 (= c!1390103 ((_ is ElementMatch!19801) expr!41))))

(assert (=> d!2309310 (= (regexDepth!455 expr!41) lt!2638638)))

(declare-fun b!7524642 () Bool)

(assert (=> b!7524642 (= e!4485280 (> lt!2638638 call!690279))))

(assert (= (and d!2309310 c!1390103) b!7524639))

(assert (= (and d!2309310 (not c!1390103)) b!7524647))

(assert (= (and b!7524647 c!1390105) b!7524638))

(assert (= (and b!7524647 (not c!1390105)) b!7524641))

(assert (= (and b!7524641 c!1390106) b!7524649))

(assert (= (and b!7524641 (not c!1390106)) b!7524636))

(assert (= (and b!7524636 c!1390104) b!7524643))

(assert (= (and b!7524636 (not c!1390104)) b!7524634))

(assert (= (or b!7524649 b!7524643) bm!690276))

(assert (= (or b!7524649 b!7524643) bm!690272))

(assert (= (or b!7524649 b!7524643) bm!690274))

(assert (= (or b!7524638 bm!690276) bm!690278))

(assert (= (and d!2309310 res!3015877) b!7524635))

(assert (= (and b!7524635 c!1390100) b!7524640))

(assert (= (and b!7524635 (not c!1390100)) b!7524648))

(assert (= (and b!7524640 res!3015879) b!7524650))

(assert (= (and b!7524648 c!1390102) b!7524646))

(assert (= (and b!7524648 (not c!1390102)) b!7524637))

(assert (= (and b!7524646 res!3015878) b!7524642))

(assert (= (and b!7524637 c!1390101) b!7524644))

(assert (= (and b!7524637 (not c!1390101)) b!7524645))

(assert (= (or b!7524642 b!7524644) bm!690273))

(assert (= (or b!7524640 bm!690273) bm!690275))

(assert (= (or b!7524650 b!7524646) bm!690277))

(declare-fun m!8101146 () Bool)

(assert (=> bm!690275 m!8101146))

(declare-fun m!8101148 () Bool)

(assert (=> bm!690278 m!8101148))

(declare-fun m!8101150 () Bool)

(assert (=> bm!690274 m!8101150))

(declare-fun m!8101152 () Bool)

(assert (=> bm!690277 m!8101152))

(declare-fun m!8101154 () Bool)

(assert (=> bm!690272 m!8101154))

(assert (=> b!7524521 d!2309310))

(declare-fun b!7524733 () Bool)

(declare-fun e!4485327 () Bool)

(declare-fun call!690304 () Bool)

(assert (=> b!7524733 (= e!4485327 call!690304)))

(declare-fun bm!690299 () Bool)

(declare-fun call!690306 () Bool)

(assert (=> bm!690299 (= call!690306 call!690304)))

(declare-fun b!7524734 () Bool)

(declare-fun e!4485330 () Bool)

(declare-fun call!690305 () Bool)

(assert (=> b!7524734 (= e!4485330 call!690305)))

(declare-fun b!7524735 () Bool)

(declare-fun res!3015898 () Bool)

(declare-fun e!4485324 () Bool)

(assert (=> b!7524735 (=> (not res!3015898) (not e!4485324))))

(assert (=> b!7524735 (= res!3015898 call!690305)))

(declare-fun e!4485325 () Bool)

(assert (=> b!7524735 (= e!4485325 e!4485324)))

(declare-fun b!7524736 () Bool)

(declare-fun e!4485326 () Bool)

(declare-fun e!4485328 () Bool)

(assert (=> b!7524736 (= e!4485326 e!4485328)))

(declare-fun c!1390126 () Bool)

(assert (=> b!7524736 (= c!1390126 ((_ is Star!19801) expr!41))))

(declare-fun b!7524737 () Bool)

(assert (=> b!7524737 (= e!4485324 call!690306)))

(declare-fun bm!690300 () Bool)

(declare-fun c!1390125 () Bool)

(assert (=> bm!690300 (= call!690305 (validRegex!10229 (ite c!1390125 (regOne!40115 expr!41) (regTwo!40114 expr!41))))))

(declare-fun b!7524738 () Bool)

(assert (=> b!7524738 (= e!4485328 e!4485327)))

(declare-fun res!3015900 () Bool)

(assert (=> b!7524738 (= res!3015900 (not (nullable!8635 (reg!20130 expr!41))))))

(assert (=> b!7524738 (=> (not res!3015900) (not e!4485327))))

(declare-fun b!7524739 () Bool)

(assert (=> b!7524739 (= e!4485328 e!4485325)))

(assert (=> b!7524739 (= c!1390125 ((_ is Union!19801) expr!41))))

(declare-fun b!7524740 () Bool)

(declare-fun e!4485329 () Bool)

(assert (=> b!7524740 (= e!4485329 e!4485330)))

(declare-fun res!3015899 () Bool)

(assert (=> b!7524740 (=> (not res!3015899) (not e!4485330))))

(assert (=> b!7524740 (= res!3015899 call!690306)))

(declare-fun b!7524741 () Bool)

(declare-fun res!3015897 () Bool)

(assert (=> b!7524741 (=> res!3015897 e!4485329)))

(assert (=> b!7524741 (= res!3015897 (not ((_ is Concat!28646) expr!41)))))

(assert (=> b!7524741 (= e!4485325 e!4485329)))

(declare-fun d!2309312 () Bool)

(declare-fun res!3015896 () Bool)

(assert (=> d!2309312 (=> res!3015896 e!4485326)))

(assert (=> d!2309312 (= res!3015896 ((_ is ElementMatch!19801) expr!41))))

(assert (=> d!2309312 (= (validRegex!10229 expr!41) e!4485326)))

(declare-fun bm!690301 () Bool)

(assert (=> bm!690301 (= call!690304 (validRegex!10229 (ite c!1390126 (reg!20130 expr!41) (ite c!1390125 (regTwo!40115 expr!41) (regOne!40114 expr!41)))))))

(assert (= (and d!2309312 (not res!3015896)) b!7524736))

(assert (= (and b!7524736 c!1390126) b!7524738))

(assert (= (and b!7524736 (not c!1390126)) b!7524739))

(assert (= (and b!7524738 res!3015900) b!7524733))

(assert (= (and b!7524739 c!1390125) b!7524735))

(assert (= (and b!7524739 (not c!1390125)) b!7524741))

(assert (= (and b!7524735 res!3015898) b!7524737))

(assert (= (and b!7524741 (not res!3015897)) b!7524740))

(assert (= (and b!7524740 res!3015899) b!7524734))

(assert (= (or b!7524737 b!7524740) bm!690299))

(assert (= (or b!7524735 b!7524734) bm!690300))

(assert (= (or b!7524733 bm!690299) bm!690301))

(declare-fun m!8101176 () Bool)

(assert (=> bm!690300 m!8101176))

(declare-fun m!8101178 () Bool)

(assert (=> b!7524738 m!8101178))

(declare-fun m!8101180 () Bool)

(assert (=> bm!690301 m!8101180))

(assert (=> start!728248 d!2309312))

(declare-fun b!7524753 () Bool)

(declare-fun e!4485333 () Bool)

(declare-fun tp!2186449 () Bool)

(declare-fun tp!2186451 () Bool)

(assert (=> b!7524753 (= e!4485333 (and tp!2186449 tp!2186451))))

(declare-fun b!7524754 () Bool)

(declare-fun tp!2186450 () Bool)

(assert (=> b!7524754 (= e!4485333 tp!2186450)))

(assert (=> b!7524519 (= tp!2186400 e!4485333)))

(declare-fun b!7524752 () Bool)

(assert (=> b!7524752 (= e!4485333 tp_is_empty!49957)))

(declare-fun b!7524755 () Bool)

(declare-fun tp!2186453 () Bool)

(declare-fun tp!2186452 () Bool)

(assert (=> b!7524755 (= e!4485333 (and tp!2186453 tp!2186452))))

(assert (= (and b!7524519 ((_ is ElementMatch!19801) (regOne!40115 expr!41))) b!7524752))

(assert (= (and b!7524519 ((_ is Concat!28646) (regOne!40115 expr!41))) b!7524753))

(assert (= (and b!7524519 ((_ is Star!19801) (regOne!40115 expr!41))) b!7524754))

(assert (= (and b!7524519 ((_ is Union!19801) (regOne!40115 expr!41))) b!7524755))

(declare-fun b!7524757 () Bool)

(declare-fun e!4485334 () Bool)

(declare-fun tp!2186454 () Bool)

(declare-fun tp!2186456 () Bool)

(assert (=> b!7524757 (= e!4485334 (and tp!2186454 tp!2186456))))

(declare-fun b!7524758 () Bool)

(declare-fun tp!2186455 () Bool)

(assert (=> b!7524758 (= e!4485334 tp!2186455)))

(assert (=> b!7524519 (= tp!2186399 e!4485334)))

(declare-fun b!7524756 () Bool)

(assert (=> b!7524756 (= e!4485334 tp_is_empty!49957)))

(declare-fun b!7524759 () Bool)

(declare-fun tp!2186458 () Bool)

(declare-fun tp!2186457 () Bool)

(assert (=> b!7524759 (= e!4485334 (and tp!2186458 tp!2186457))))

(assert (= (and b!7524519 ((_ is ElementMatch!19801) (regTwo!40115 expr!41))) b!7524756))

(assert (= (and b!7524519 ((_ is Concat!28646) (regTwo!40115 expr!41))) b!7524757))

(assert (= (and b!7524519 ((_ is Star!19801) (regTwo!40115 expr!41))) b!7524758))

(assert (= (and b!7524519 ((_ is Union!19801) (regTwo!40115 expr!41))) b!7524759))

(declare-fun b!7524761 () Bool)

(declare-fun e!4485335 () Bool)

(declare-fun tp!2186459 () Bool)

(declare-fun tp!2186461 () Bool)

(assert (=> b!7524761 (= e!4485335 (and tp!2186459 tp!2186461))))

(declare-fun b!7524762 () Bool)

(declare-fun tp!2186460 () Bool)

(assert (=> b!7524762 (= e!4485335 tp!2186460)))

(assert (=> b!7524513 (= tp!2186403 e!4485335)))

(declare-fun b!7524760 () Bool)

(assert (=> b!7524760 (= e!4485335 tp_is_empty!49957)))

(declare-fun b!7524763 () Bool)

(declare-fun tp!2186463 () Bool)

(declare-fun tp!2186462 () Bool)

(assert (=> b!7524763 (= e!4485335 (and tp!2186463 tp!2186462))))

(assert (= (and b!7524513 ((_ is ElementMatch!19801) (reg!20130 expr!41))) b!7524760))

(assert (= (and b!7524513 ((_ is Concat!28646) (reg!20130 expr!41))) b!7524761))

(assert (= (and b!7524513 ((_ is Star!19801) (reg!20130 expr!41))) b!7524762))

(assert (= (and b!7524513 ((_ is Union!19801) (reg!20130 expr!41))) b!7524763))

(declare-fun b!7524765 () Bool)

(declare-fun e!4485336 () Bool)

(declare-fun tp!2186464 () Bool)

(declare-fun tp!2186466 () Bool)

(assert (=> b!7524765 (= e!4485336 (and tp!2186464 tp!2186466))))

(declare-fun b!7524766 () Bool)

(declare-fun tp!2186465 () Bool)

(assert (=> b!7524766 (= e!4485336 tp!2186465)))

(assert (=> b!7524518 (= tp!2186401 e!4485336)))

(declare-fun b!7524764 () Bool)

(assert (=> b!7524764 (= e!4485336 tp_is_empty!49957)))

(declare-fun b!7524767 () Bool)

(declare-fun tp!2186468 () Bool)

(declare-fun tp!2186467 () Bool)

(assert (=> b!7524767 (= e!4485336 (and tp!2186468 tp!2186467))))

(assert (= (and b!7524518 ((_ is ElementMatch!19801) (regOne!40114 expr!41))) b!7524764))

(assert (= (and b!7524518 ((_ is Concat!28646) (regOne!40114 expr!41))) b!7524765))

(assert (= (and b!7524518 ((_ is Star!19801) (regOne!40114 expr!41))) b!7524766))

(assert (= (and b!7524518 ((_ is Union!19801) (regOne!40114 expr!41))) b!7524767))

(declare-fun b!7524769 () Bool)

(declare-fun e!4485337 () Bool)

(declare-fun tp!2186469 () Bool)

(declare-fun tp!2186471 () Bool)

(assert (=> b!7524769 (= e!4485337 (and tp!2186469 tp!2186471))))

(declare-fun b!7524770 () Bool)

(declare-fun tp!2186470 () Bool)

(assert (=> b!7524770 (= e!4485337 tp!2186470)))

(assert (=> b!7524518 (= tp!2186402 e!4485337)))

(declare-fun b!7524768 () Bool)

(assert (=> b!7524768 (= e!4485337 tp_is_empty!49957)))

(declare-fun b!7524771 () Bool)

(declare-fun tp!2186473 () Bool)

(declare-fun tp!2186472 () Bool)

(assert (=> b!7524771 (= e!4485337 (and tp!2186473 tp!2186472))))

(assert (= (and b!7524518 ((_ is ElementMatch!19801) (regTwo!40114 expr!41))) b!7524768))

(assert (= (and b!7524518 ((_ is Concat!28646) (regTwo!40114 expr!41))) b!7524769))

(assert (= (and b!7524518 ((_ is Star!19801) (regTwo!40114 expr!41))) b!7524770))

(assert (= (and b!7524518 ((_ is Union!19801) (regTwo!40114 expr!41))) b!7524771))

(check-sat (not bm!690270) (not bm!690277) (not b!7524766) (not bm!690274) (not bm!690275) (not b!7524767) (not b!7524762) (not b!7524770) (not b!7524769) (not bm!690271) (not bm!690300) (not b!7524765) (not b!7524771) tp_is_empty!49957 (not bm!690272) (not d!2309304) (not b!7524757) (not bm!690268) (not b!7524738) (not b!7524754) (not bm!690267) (not b!7524758) (not bm!690265) (not b!7524761) (not bm!690301) (not b!7524759) (not b!7524763) (not bm!690278) (not b!7524755) (not b!7524753))
(check-sat)
