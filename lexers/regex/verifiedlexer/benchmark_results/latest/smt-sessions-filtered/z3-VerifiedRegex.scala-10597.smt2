; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544732 () Bool)

(assert start!544732)

(declare-fun b!5145932 () Bool)

(declare-fun e!3208700 () Bool)

(declare-fun tp!1437323 () Bool)

(declare-fun tp!1437322 () Bool)

(assert (=> b!5145932 (= e!3208700 (and tp!1437323 tp!1437322))))

(declare-fun b!5145933 () Bool)

(declare-fun res!2190538 () Bool)

(declare-fun e!3208702 () Bool)

(assert (=> b!5145933 (=> (not res!2190538) (not e!3208702))))

(declare-datatypes ((C!29236 0))(
  ( (C!29237 (val!24270 Int)) )
))
(declare-datatypes ((Regex!14485 0))(
  ( (ElementMatch!14485 (c!886040 C!29236)) (Concat!23330 (regOne!29482 Regex!14485) (regTwo!29482 Regex!14485)) (EmptyExpr!14485) (Star!14485 (reg!14814 Regex!14485)) (EmptyLang!14485) (Union!14485 (regOne!29483 Regex!14485) (regTwo!29483 Regex!14485)) )
))
(declare-fun expr!117 () Regex!14485)

(declare-fun a!1296 () C!29236)

(get-info :version)

(assert (=> b!5145933 (= res!2190538 (and (or (not ((_ is ElementMatch!14485) expr!117)) (not (= (c!886040 expr!117) a!1296))) (not ((_ is Union!14485) expr!117)) ((_ is Concat!23330) expr!117)))))

(declare-fun b!5145934 () Bool)

(declare-fun tp_is_empty!38119 () Bool)

(assert (=> b!5145934 (= e!3208700 tp_is_empty!38119)))

(declare-fun res!2190536 () Bool)

(assert (=> start!544732 (=> (not res!2190536) (not e!3208702))))

(declare-fun validRegex!6340 (Regex!14485) Bool)

(assert (=> start!544732 (= res!2190536 (validRegex!6340 expr!117))))

(assert (=> start!544732 e!3208702))

(assert (=> start!544732 e!3208700))

(declare-datatypes ((List!59889 0))(
  ( (Nil!59765) (Cons!59765 (h!66213 Regex!14485) (t!372926 List!59889)) )
))
(declare-datatypes ((Context!7738 0))(
  ( (Context!7739 (exprs!4369 List!59889)) )
))
(declare-fun ctx!100 () Context!7738)

(declare-fun e!3208701 () Bool)

(declare-fun inv!79393 (Context!7738) Bool)

(assert (=> start!544732 (and (inv!79393 ctx!100) e!3208701)))

(assert (=> start!544732 tp_is_empty!38119))

(declare-fun b!5145935 () Bool)

(declare-fun e!3208699 () Bool)

(declare-fun lostCause!1522 (Context!7738) Bool)

(assert (=> b!5145935 (= e!3208699 (lostCause!1522 ctx!100))))

(declare-fun b!5145936 () Bool)

(declare-fun tp!1437326 () Bool)

(declare-fun tp!1437327 () Bool)

(assert (=> b!5145936 (= e!3208700 (and tp!1437326 tp!1437327))))

(declare-fun b!5145937 () Bool)

(declare-fun tp!1437325 () Bool)

(assert (=> b!5145937 (= e!3208701 tp!1437325)))

(declare-fun b!5145938 () Bool)

(assert (=> b!5145938 (= e!3208702 (not (validRegex!6340 (regTwo!29482 expr!117))))))

(declare-fun lostCause!1523 (Regex!14485) Bool)

(assert (=> b!5145938 (not (lostCause!1523 (regOne!29482 expr!117)))))

(declare-datatypes ((Unit!151173 0))(
  ( (Unit!151174) )
))
(declare-fun lt!2121075 () Unit!151173)

(declare-fun lemmaNullableThenNotLostCause!74 (Regex!14485) Unit!151173)

(assert (=> b!5145938 (= lt!2121075 (lemmaNullableThenNotLostCause!74 (regOne!29482 expr!117)))))

(declare-fun b!5145939 () Bool)

(declare-fun res!2190535 () Bool)

(assert (=> b!5145939 (=> (not res!2190535) (not e!3208702))))

(assert (=> b!5145939 (= res!2190535 e!3208699)))

(declare-fun res!2190537 () Bool)

(assert (=> b!5145939 (=> res!2190537 e!3208699)))

(assert (=> b!5145939 (= res!2190537 (lostCause!1523 expr!117))))

(declare-fun b!5145940 () Bool)

(declare-fun tp!1437324 () Bool)

(assert (=> b!5145940 (= e!3208700 tp!1437324)))

(declare-fun b!5145941 () Bool)

(declare-fun res!2190534 () Bool)

(assert (=> b!5145941 (=> (not res!2190534) (not e!3208702))))

(declare-fun nullable!4841 (Regex!14485) Bool)

(assert (=> b!5145941 (= res!2190534 (nullable!4841 (regOne!29482 expr!117)))))

(assert (= (and start!544732 res!2190536) b!5145939))

(assert (= (and b!5145939 (not res!2190537)) b!5145935))

(assert (= (and b!5145939 res!2190535) b!5145933))

(assert (= (and b!5145933 res!2190538) b!5145941))

(assert (= (and b!5145941 res!2190534) b!5145938))

(assert (= (and start!544732 ((_ is ElementMatch!14485) expr!117)) b!5145934))

(assert (= (and start!544732 ((_ is Concat!23330) expr!117)) b!5145936))

(assert (= (and start!544732 ((_ is Star!14485) expr!117)) b!5145940))

(assert (= (and start!544732 ((_ is Union!14485) expr!117)) b!5145932))

(assert (= start!544732 b!5145937))

(declare-fun m!6206634 () Bool)

(assert (=> b!5145939 m!6206634))

(declare-fun m!6206636 () Bool)

(assert (=> b!5145938 m!6206636))

(declare-fun m!6206638 () Bool)

(assert (=> b!5145938 m!6206638))

(declare-fun m!6206640 () Bool)

(assert (=> b!5145938 m!6206640))

(declare-fun m!6206642 () Bool)

(assert (=> b!5145941 m!6206642))

(declare-fun m!6206644 () Bool)

(assert (=> b!5145935 m!6206644))

(declare-fun m!6206646 () Bool)

(assert (=> start!544732 m!6206646))

(declare-fun m!6206648 () Bool)

(assert (=> start!544732 m!6206648))

(check-sat (not b!5145941) (not b!5145935) (not b!5145937) (not b!5145940) (not b!5145936) (not b!5145939) (not b!5145938) (not start!544732) tp_is_empty!38119 (not b!5145932))
(check-sat)
(get-model)

(declare-fun d!1663430 () Bool)

(declare-fun lostCauseFct!364 (Regex!14485) Bool)

(assert (=> d!1663430 (= (lostCause!1523 expr!117) (lostCauseFct!364 expr!117))))

(declare-fun bs!1201255 () Bool)

(assert (= bs!1201255 d!1663430))

(declare-fun m!6206650 () Bool)

(assert (=> bs!1201255 m!6206650))

(assert (=> b!5145939 d!1663430))

(declare-fun d!1663432 () Bool)

(declare-fun res!2190553 () Bool)

(declare-fun e!3208718 () Bool)

(assert (=> d!1663432 (=> res!2190553 e!3208718)))

(assert (=> d!1663432 (= res!2190553 ((_ is ElementMatch!14485) expr!117))))

(assert (=> d!1663432 (= (validRegex!6340 expr!117) e!3208718)))

(declare-fun c!886046 () Bool)

(declare-fun c!886045 () Bool)

(declare-fun call!359728 () Bool)

(declare-fun bm!359723 () Bool)

(assert (=> bm!359723 (= call!359728 (validRegex!6340 (ite c!886046 (reg!14814 expr!117) (ite c!886045 (regTwo!29483 expr!117) (regTwo!29482 expr!117)))))))

(declare-fun bm!359724 () Bool)

(declare-fun call!359729 () Bool)

(assert (=> bm!359724 (= call!359729 (validRegex!6340 (ite c!886045 (regOne!29483 expr!117) (regOne!29482 expr!117))))))

(declare-fun b!5145960 () Bool)

(declare-fun e!3208722 () Bool)

(assert (=> b!5145960 (= e!3208718 e!3208722)))

(assert (=> b!5145960 (= c!886046 ((_ is Star!14485) expr!117))))

(declare-fun b!5145961 () Bool)

(declare-fun res!2190549 () Bool)

(declare-fun e!3208721 () Bool)

(assert (=> b!5145961 (=> (not res!2190549) (not e!3208721))))

(assert (=> b!5145961 (= res!2190549 call!359729)))

(declare-fun e!3208717 () Bool)

(assert (=> b!5145961 (= e!3208717 e!3208721)))

(declare-fun b!5145962 () Bool)

(declare-fun e!3208720 () Bool)

(declare-fun call!359730 () Bool)

(assert (=> b!5145962 (= e!3208720 call!359730)))

(declare-fun b!5145963 () Bool)

(declare-fun e!3208719 () Bool)

(assert (=> b!5145963 (= e!3208719 call!359728)))

(declare-fun b!5145964 () Bool)

(assert (=> b!5145964 (= e!3208722 e!3208719)))

(declare-fun res!2190552 () Bool)

(assert (=> b!5145964 (= res!2190552 (not (nullable!4841 (reg!14814 expr!117))))))

(assert (=> b!5145964 (=> (not res!2190552) (not e!3208719))))

(declare-fun b!5145965 () Bool)

(assert (=> b!5145965 (= e!3208721 call!359730)))

(declare-fun bm!359725 () Bool)

(assert (=> bm!359725 (= call!359730 call!359728)))

(declare-fun b!5145966 () Bool)

(declare-fun res!2190551 () Bool)

(declare-fun e!3208723 () Bool)

(assert (=> b!5145966 (=> res!2190551 e!3208723)))

(assert (=> b!5145966 (= res!2190551 (not ((_ is Concat!23330) expr!117)))))

(assert (=> b!5145966 (= e!3208717 e!3208723)))

(declare-fun b!5145967 () Bool)

(assert (=> b!5145967 (= e!3208723 e!3208720)))

(declare-fun res!2190550 () Bool)

(assert (=> b!5145967 (=> (not res!2190550) (not e!3208720))))

(assert (=> b!5145967 (= res!2190550 call!359729)))

(declare-fun b!5145968 () Bool)

(assert (=> b!5145968 (= e!3208722 e!3208717)))

(assert (=> b!5145968 (= c!886045 ((_ is Union!14485) expr!117))))

(assert (= (and d!1663432 (not res!2190553)) b!5145960))

(assert (= (and b!5145960 c!886046) b!5145964))

(assert (= (and b!5145960 (not c!886046)) b!5145968))

(assert (= (and b!5145964 res!2190552) b!5145963))

(assert (= (and b!5145968 c!886045) b!5145961))

(assert (= (and b!5145968 (not c!886045)) b!5145966))

(assert (= (and b!5145961 res!2190549) b!5145965))

(assert (= (and b!5145966 (not res!2190551)) b!5145967))

(assert (= (and b!5145967 res!2190550) b!5145962))

(assert (= (or b!5145965 b!5145962) bm!359725))

(assert (= (or b!5145961 b!5145967) bm!359724))

(assert (= (or b!5145963 bm!359725) bm!359723))

(declare-fun m!6206652 () Bool)

(assert (=> bm!359723 m!6206652))

(declare-fun m!6206654 () Bool)

(assert (=> bm!359724 m!6206654))

(declare-fun m!6206656 () Bool)

(assert (=> b!5145964 m!6206656))

(assert (=> start!544732 d!1663432))

(declare-fun d!1663436 () Bool)

(declare-fun lambda!256872 () Int)

(declare-fun forall!13959 (List!59889 Int) Bool)

(assert (=> d!1663436 (= (inv!79393 ctx!100) (forall!13959 (exprs!4369 ctx!100) lambda!256872))))

(declare-fun bs!1201256 () Bool)

(assert (= bs!1201256 d!1663436))

(declare-fun m!6206664 () Bool)

(assert (=> bs!1201256 m!6206664))

(assert (=> start!544732 d!1663436))

(declare-fun d!1663440 () Bool)

(declare-fun nullableFct!1323 (Regex!14485) Bool)

(assert (=> d!1663440 (= (nullable!4841 (regOne!29482 expr!117)) (nullableFct!1323 (regOne!29482 expr!117)))))

(declare-fun bs!1201257 () Bool)

(assert (= bs!1201257 d!1663440))

(declare-fun m!6206666 () Bool)

(assert (=> bs!1201257 m!6206666))

(assert (=> b!5145941 d!1663440))

(declare-fun bs!1201258 () Bool)

(declare-fun d!1663442 () Bool)

(assert (= bs!1201258 (and d!1663442 d!1663436)))

(declare-fun lambda!256875 () Int)

(assert (=> bs!1201258 (not (= lambda!256875 lambda!256872))))

(declare-fun exists!1815 (List!59889 Int) Bool)

(assert (=> d!1663442 (= (lostCause!1522 ctx!100) (exists!1815 (exprs!4369 ctx!100) lambda!256875))))

(declare-fun bs!1201259 () Bool)

(assert (= bs!1201259 d!1663442))

(declare-fun m!6206668 () Bool)

(assert (=> bs!1201259 m!6206668))

(assert (=> b!5145935 d!1663442))

(declare-fun d!1663444 () Bool)

(declare-fun res!2190573 () Bool)

(declare-fun e!3208746 () Bool)

(assert (=> d!1663444 (=> res!2190573 e!3208746)))

(assert (=> d!1663444 (= res!2190573 ((_ is ElementMatch!14485) (regTwo!29482 expr!117)))))

(assert (=> d!1663444 (= (validRegex!6340 (regTwo!29482 expr!117)) e!3208746)))

(declare-fun call!359740 () Bool)

(declare-fun bm!359735 () Bool)

(declare-fun c!886053 () Bool)

(declare-fun c!886054 () Bool)

(assert (=> bm!359735 (= call!359740 (validRegex!6340 (ite c!886054 (reg!14814 (regTwo!29482 expr!117)) (ite c!886053 (regTwo!29483 (regTwo!29482 expr!117)) (regTwo!29482 (regTwo!29482 expr!117))))))))

(declare-fun bm!359736 () Bool)

(declare-fun call!359741 () Bool)

(assert (=> bm!359736 (= call!359741 (validRegex!6340 (ite c!886053 (regOne!29483 (regTwo!29482 expr!117)) (regOne!29482 (regTwo!29482 expr!117)))))))

(declare-fun b!5145996 () Bool)

(declare-fun e!3208750 () Bool)

(assert (=> b!5145996 (= e!3208746 e!3208750)))

(assert (=> b!5145996 (= c!886054 ((_ is Star!14485) (regTwo!29482 expr!117)))))

(declare-fun b!5145997 () Bool)

(declare-fun res!2190569 () Bool)

(declare-fun e!3208749 () Bool)

(assert (=> b!5145997 (=> (not res!2190569) (not e!3208749))))

(assert (=> b!5145997 (= res!2190569 call!359741)))

(declare-fun e!3208745 () Bool)

(assert (=> b!5145997 (= e!3208745 e!3208749)))

(declare-fun b!5145998 () Bool)

(declare-fun e!3208748 () Bool)

(declare-fun call!359742 () Bool)

(assert (=> b!5145998 (= e!3208748 call!359742)))

(declare-fun b!5145999 () Bool)

(declare-fun e!3208747 () Bool)

(assert (=> b!5145999 (= e!3208747 call!359740)))

(declare-fun b!5146000 () Bool)

(assert (=> b!5146000 (= e!3208750 e!3208747)))

(declare-fun res!2190572 () Bool)

(assert (=> b!5146000 (= res!2190572 (not (nullable!4841 (reg!14814 (regTwo!29482 expr!117)))))))

(assert (=> b!5146000 (=> (not res!2190572) (not e!3208747))))

(declare-fun b!5146001 () Bool)

(assert (=> b!5146001 (= e!3208749 call!359742)))

(declare-fun bm!359737 () Bool)

(assert (=> bm!359737 (= call!359742 call!359740)))

(declare-fun b!5146002 () Bool)

(declare-fun res!2190571 () Bool)

(declare-fun e!3208751 () Bool)

(assert (=> b!5146002 (=> res!2190571 e!3208751)))

(assert (=> b!5146002 (= res!2190571 (not ((_ is Concat!23330) (regTwo!29482 expr!117))))))

(assert (=> b!5146002 (= e!3208745 e!3208751)))

(declare-fun b!5146003 () Bool)

(assert (=> b!5146003 (= e!3208751 e!3208748)))

(declare-fun res!2190570 () Bool)

(assert (=> b!5146003 (=> (not res!2190570) (not e!3208748))))

(assert (=> b!5146003 (= res!2190570 call!359741)))

(declare-fun b!5146004 () Bool)

(assert (=> b!5146004 (= e!3208750 e!3208745)))

(assert (=> b!5146004 (= c!886053 ((_ is Union!14485) (regTwo!29482 expr!117)))))

(assert (= (and d!1663444 (not res!2190573)) b!5145996))

(assert (= (and b!5145996 c!886054) b!5146000))

(assert (= (and b!5145996 (not c!886054)) b!5146004))

(assert (= (and b!5146000 res!2190572) b!5145999))

(assert (= (and b!5146004 c!886053) b!5145997))

(assert (= (and b!5146004 (not c!886053)) b!5146002))

(assert (= (and b!5145997 res!2190569) b!5146001))

(assert (= (and b!5146002 (not res!2190571)) b!5146003))

(assert (= (and b!5146003 res!2190570) b!5145998))

(assert (= (or b!5146001 b!5145998) bm!359737))

(assert (= (or b!5145997 b!5146003) bm!359736))

(assert (= (or b!5145999 bm!359737) bm!359735))

(declare-fun m!6206670 () Bool)

(assert (=> bm!359735 m!6206670))

(declare-fun m!6206672 () Bool)

(assert (=> bm!359736 m!6206672))

(declare-fun m!6206674 () Bool)

(assert (=> b!5146000 m!6206674))

(assert (=> b!5145938 d!1663444))

(declare-fun d!1663446 () Bool)

(assert (=> d!1663446 (= (lostCause!1523 (regOne!29482 expr!117)) (lostCauseFct!364 (regOne!29482 expr!117)))))

(declare-fun bs!1201260 () Bool)

(assert (= bs!1201260 d!1663446))

(declare-fun m!6206676 () Bool)

(assert (=> bs!1201260 m!6206676))

(assert (=> b!5145938 d!1663446))

(declare-fun d!1663448 () Bool)

(assert (=> d!1663448 (not (lostCause!1523 (regOne!29482 expr!117)))))

(declare-fun lt!2121078 () Unit!151173)

(declare-fun choose!38076 (Regex!14485) Unit!151173)

(assert (=> d!1663448 (= lt!2121078 (choose!38076 (regOne!29482 expr!117)))))

(assert (=> d!1663448 (validRegex!6340 (regOne!29482 expr!117))))

(assert (=> d!1663448 (= (lemmaNullableThenNotLostCause!74 (regOne!29482 expr!117)) lt!2121078)))

(declare-fun bs!1201261 () Bool)

(assert (= bs!1201261 d!1663448))

(assert (=> bs!1201261 m!6206638))

(declare-fun m!6206678 () Bool)

(assert (=> bs!1201261 m!6206678))

(declare-fun m!6206680 () Bool)

(assert (=> bs!1201261 m!6206680))

(assert (=> b!5145938 d!1663448))

(declare-fun b!5146017 () Bool)

(declare-fun e!3208754 () Bool)

(declare-fun tp!1437341 () Bool)

(assert (=> b!5146017 (= e!3208754 tp!1437341)))

(assert (=> b!5145940 (= tp!1437324 e!3208754)))

(declare-fun b!5146018 () Bool)

(declare-fun tp!1437338 () Bool)

(declare-fun tp!1437339 () Bool)

(assert (=> b!5146018 (= e!3208754 (and tp!1437338 tp!1437339))))

(declare-fun b!5146016 () Bool)

(declare-fun tp!1437342 () Bool)

(declare-fun tp!1437340 () Bool)

(assert (=> b!5146016 (= e!3208754 (and tp!1437342 tp!1437340))))

(declare-fun b!5146015 () Bool)

(assert (=> b!5146015 (= e!3208754 tp_is_empty!38119)))

(assert (= (and b!5145940 ((_ is ElementMatch!14485) (reg!14814 expr!117))) b!5146015))

(assert (= (and b!5145940 ((_ is Concat!23330) (reg!14814 expr!117))) b!5146016))

(assert (= (and b!5145940 ((_ is Star!14485) (reg!14814 expr!117))) b!5146017))

(assert (= (and b!5145940 ((_ is Union!14485) (reg!14814 expr!117))) b!5146018))

(declare-fun b!5146023 () Bool)

(declare-fun e!3208757 () Bool)

(declare-fun tp!1437347 () Bool)

(declare-fun tp!1437348 () Bool)

(assert (=> b!5146023 (= e!3208757 (and tp!1437347 tp!1437348))))

(assert (=> b!5145937 (= tp!1437325 e!3208757)))

(assert (= (and b!5145937 ((_ is Cons!59765) (exprs!4369 ctx!100))) b!5146023))

(declare-fun b!5146026 () Bool)

(declare-fun e!3208758 () Bool)

(declare-fun tp!1437352 () Bool)

(assert (=> b!5146026 (= e!3208758 tp!1437352)))

(assert (=> b!5145936 (= tp!1437326 e!3208758)))

(declare-fun b!5146027 () Bool)

(declare-fun tp!1437349 () Bool)

(declare-fun tp!1437350 () Bool)

(assert (=> b!5146027 (= e!3208758 (and tp!1437349 tp!1437350))))

(declare-fun b!5146025 () Bool)

(declare-fun tp!1437353 () Bool)

(declare-fun tp!1437351 () Bool)

(assert (=> b!5146025 (= e!3208758 (and tp!1437353 tp!1437351))))

(declare-fun b!5146024 () Bool)

(assert (=> b!5146024 (= e!3208758 tp_is_empty!38119)))

(assert (= (and b!5145936 ((_ is ElementMatch!14485) (regOne!29482 expr!117))) b!5146024))

(assert (= (and b!5145936 ((_ is Concat!23330) (regOne!29482 expr!117))) b!5146025))

(assert (= (and b!5145936 ((_ is Star!14485) (regOne!29482 expr!117))) b!5146026))

(assert (= (and b!5145936 ((_ is Union!14485) (regOne!29482 expr!117))) b!5146027))

(declare-fun b!5146030 () Bool)

(declare-fun e!3208759 () Bool)

(declare-fun tp!1437357 () Bool)

(assert (=> b!5146030 (= e!3208759 tp!1437357)))

(assert (=> b!5145936 (= tp!1437327 e!3208759)))

(declare-fun b!5146031 () Bool)

(declare-fun tp!1437354 () Bool)

(declare-fun tp!1437355 () Bool)

(assert (=> b!5146031 (= e!3208759 (and tp!1437354 tp!1437355))))

(declare-fun b!5146029 () Bool)

(declare-fun tp!1437358 () Bool)

(declare-fun tp!1437356 () Bool)

(assert (=> b!5146029 (= e!3208759 (and tp!1437358 tp!1437356))))

(declare-fun b!5146028 () Bool)

(assert (=> b!5146028 (= e!3208759 tp_is_empty!38119)))

(assert (= (and b!5145936 ((_ is ElementMatch!14485) (regTwo!29482 expr!117))) b!5146028))

(assert (= (and b!5145936 ((_ is Concat!23330) (regTwo!29482 expr!117))) b!5146029))

(assert (= (and b!5145936 ((_ is Star!14485) (regTwo!29482 expr!117))) b!5146030))

(assert (= (and b!5145936 ((_ is Union!14485) (regTwo!29482 expr!117))) b!5146031))

(declare-fun b!5146034 () Bool)

(declare-fun e!3208760 () Bool)

(declare-fun tp!1437362 () Bool)

(assert (=> b!5146034 (= e!3208760 tp!1437362)))

(assert (=> b!5145932 (= tp!1437323 e!3208760)))

(declare-fun b!5146035 () Bool)

(declare-fun tp!1437359 () Bool)

(declare-fun tp!1437360 () Bool)

(assert (=> b!5146035 (= e!3208760 (and tp!1437359 tp!1437360))))

(declare-fun b!5146033 () Bool)

(declare-fun tp!1437363 () Bool)

(declare-fun tp!1437361 () Bool)

(assert (=> b!5146033 (= e!3208760 (and tp!1437363 tp!1437361))))

(declare-fun b!5146032 () Bool)

(assert (=> b!5146032 (= e!3208760 tp_is_empty!38119)))

(assert (= (and b!5145932 ((_ is ElementMatch!14485) (regOne!29483 expr!117))) b!5146032))

(assert (= (and b!5145932 ((_ is Concat!23330) (regOne!29483 expr!117))) b!5146033))

(assert (= (and b!5145932 ((_ is Star!14485) (regOne!29483 expr!117))) b!5146034))

(assert (= (and b!5145932 ((_ is Union!14485) (regOne!29483 expr!117))) b!5146035))

(declare-fun b!5146038 () Bool)

(declare-fun e!3208761 () Bool)

(declare-fun tp!1437367 () Bool)

(assert (=> b!5146038 (= e!3208761 tp!1437367)))

(assert (=> b!5145932 (= tp!1437322 e!3208761)))

(declare-fun b!5146039 () Bool)

(declare-fun tp!1437364 () Bool)

(declare-fun tp!1437365 () Bool)

(assert (=> b!5146039 (= e!3208761 (and tp!1437364 tp!1437365))))

(declare-fun b!5146037 () Bool)

(declare-fun tp!1437368 () Bool)

(declare-fun tp!1437366 () Bool)

(assert (=> b!5146037 (= e!3208761 (and tp!1437368 tp!1437366))))

(declare-fun b!5146036 () Bool)

(assert (=> b!5146036 (= e!3208761 tp_is_empty!38119)))

(assert (= (and b!5145932 ((_ is ElementMatch!14485) (regTwo!29483 expr!117))) b!5146036))

(assert (= (and b!5145932 ((_ is Concat!23330) (regTwo!29483 expr!117))) b!5146037))

(assert (= (and b!5145932 ((_ is Star!14485) (regTwo!29483 expr!117))) b!5146038))

(assert (= (and b!5145932 ((_ is Union!14485) (regTwo!29483 expr!117))) b!5146039))

(check-sat (not b!5146033) (not b!5146017) (not b!5146016) (not b!5146035) (not b!5146029) (not d!1663436) (not b!5146027) (not b!5145964) (not b!5146018) (not b!5146030) (not d!1663430) (not d!1663440) (not bm!359724) (not b!5146038) (not bm!359735) (not b!5146000) (not b!5146025) (not b!5146039) (not d!1663446) (not b!5146031) (not bm!359736) (not b!5146037) (not b!5146034) (not d!1663442) (not bm!359723) (not b!5146026) (not d!1663448) tp_is_empty!38119 (not b!5146023))
(check-sat)
