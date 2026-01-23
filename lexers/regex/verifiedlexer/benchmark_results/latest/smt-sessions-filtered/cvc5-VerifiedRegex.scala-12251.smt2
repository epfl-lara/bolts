; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689698 () Bool)

(assert start!689698)

(declare-fun res!2894599 () Bool)

(declare-fun e!4259950 () Bool)

(assert (=> start!689698 (=> (not res!2894599) (not e!4259950))))

(declare-datatypes ((C!35758 0))(
  ( (C!35759 (val!27585 Int)) )
))
(declare-datatypes ((Regex!17744 0))(
  ( (ElementMatch!17744 (c!1322471 C!35758)) (Concat!26589 (regOne!36000 Regex!17744) (regTwo!36000 Regex!17744)) (EmptyExpr!17744) (Star!17744 (reg!18073 Regex!17744)) (EmptyLang!17744) (Union!17744 (regOne!36001 Regex!17744) (regTwo!36001 Regex!17744)) )
))
(declare-fun r!11554 () Regex!17744)

(declare-fun validRegex!9019 (Regex!17744) Bool)

(assert (=> start!689698 (= res!2894599 (validRegex!9019 r!11554))))

(assert (=> start!689698 e!4259950))

(declare-fun e!4259948 () Bool)

(assert (=> start!689698 e!4259948))

(declare-fun tp_is_empty!44721 () Bool)

(assert (=> start!689698 tp_is_empty!44721))

(declare-datatypes ((List!68707 0))(
  ( (Nil!68583) (Cons!68583 (h!75031 Regex!17744) (t!382492 List!68707)) )
))
(declare-datatypes ((Context!13480 0))(
  ( (Context!13481 (exprs!7240 List!68707)) )
))
(declare-fun c!9994 () Context!13480)

(declare-fun e!4259949 () Bool)

(declare-fun inv!87226 (Context!13480) Bool)

(assert (=> start!689698 (and (inv!87226 c!9994) e!4259949)))

(declare-fun auxCtx!45 () Context!13480)

(declare-fun e!4259947 () Bool)

(assert (=> start!689698 (and (inv!87226 auxCtx!45) e!4259947)))

(declare-fun b!7085867 () Bool)

(declare-fun e!4259951 () Bool)

(assert (=> b!7085867 (= e!4259950 e!4259951)))

(declare-fun res!2894598 () Bool)

(assert (=> b!7085867 (=> (not res!2894598) (not e!4259951))))

(declare-fun lambda!429044 () Int)

(declare-fun forall!16694 (List!68707 Int) Bool)

(assert (=> b!7085867 (= res!2894598 (forall!16694 (exprs!7240 c!9994) lambda!429044))))

(declare-datatypes ((Unit!162187 0))(
  ( (Unit!162188) )
))
(declare-fun lt!2554567 () Unit!162187)

(declare-fun lemmaConcatPreservesForall!1047 (List!68707 List!68707 Int) Unit!162187)

(assert (=> b!7085867 (= lt!2554567 (lemmaConcatPreservesForall!1047 (exprs!7240 c!9994) (exprs!7240 auxCtx!45) lambda!429044))))

(declare-fun b!7085868 () Bool)

(declare-fun tp!1945478 () Bool)

(declare-fun tp!1945481 () Bool)

(assert (=> b!7085868 (= e!4259948 (and tp!1945478 tp!1945481))))

(declare-fun b!7085869 () Bool)

(declare-fun tp!1945480 () Bool)

(assert (=> b!7085869 (= e!4259949 tp!1945480)))

(declare-fun b!7085870 () Bool)

(declare-fun res!2894597 () Bool)

(assert (=> b!7085870 (=> (not res!2894597) (not e!4259950))))

(declare-fun a!1901 () C!35758)

(assert (=> b!7085870 (= res!2894597 (and (or (not (is-ElementMatch!17744 r!11554)) (not (= (c!1322471 r!11554) a!1901))) (is-Union!17744 r!11554)))))

(declare-fun b!7085871 () Bool)

(assert (=> b!7085871 (= e!4259948 tp_is_empty!44721)))

(declare-fun b!7085872 () Bool)

(declare-fun tp!1945479 () Bool)

(declare-fun tp!1945482 () Bool)

(assert (=> b!7085872 (= e!4259948 (and tp!1945479 tp!1945482))))

(declare-fun b!7085873 () Bool)

(assert (=> b!7085873 (= e!4259951 (not (forall!16694 (exprs!7240 auxCtx!45) lambda!429044)))))

(declare-fun b!7085874 () Bool)

(declare-fun tp!1945483 () Bool)

(assert (=> b!7085874 (= e!4259947 tp!1945483)))

(declare-fun b!7085875 () Bool)

(declare-fun tp!1945477 () Bool)

(assert (=> b!7085875 (= e!4259948 tp!1945477)))

(assert (= (and start!689698 res!2894599) b!7085870))

(assert (= (and b!7085870 res!2894597) b!7085867))

(assert (= (and b!7085867 res!2894598) b!7085873))

(assert (= (and start!689698 (is-ElementMatch!17744 r!11554)) b!7085871))

(assert (= (and start!689698 (is-Concat!26589 r!11554)) b!7085868))

(assert (= (and start!689698 (is-Star!17744 r!11554)) b!7085875))

(assert (= (and start!689698 (is-Union!17744 r!11554)) b!7085872))

(assert (= start!689698 b!7085869))

(assert (= start!689698 b!7085874))

(declare-fun m!7816880 () Bool)

(assert (=> start!689698 m!7816880))

(declare-fun m!7816882 () Bool)

(assert (=> start!689698 m!7816882))

(declare-fun m!7816884 () Bool)

(assert (=> start!689698 m!7816884))

(declare-fun m!7816886 () Bool)

(assert (=> b!7085867 m!7816886))

(declare-fun m!7816888 () Bool)

(assert (=> b!7085867 m!7816888))

(declare-fun m!7816890 () Bool)

(assert (=> b!7085873 m!7816890))

(push 1)

(assert (not b!7085869))

(assert (not start!689698))

(assert (not b!7085867))

(assert (not b!7085872))

(assert (not b!7085874))

(assert (not b!7085868))

(assert (not b!7085873))

(assert tp_is_empty!44721)

(assert (not b!7085875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216022 () Bool)

(declare-fun res!2894613 () Bool)

(declare-fun e!4259971 () Bool)

(assert (=> d!2216022 (=> res!2894613 e!4259971)))

(assert (=> d!2216022 (= res!2894613 (is-Nil!68583 (exprs!7240 auxCtx!45)))))

(assert (=> d!2216022 (= (forall!16694 (exprs!7240 auxCtx!45) lambda!429044) e!4259971)))

(declare-fun b!7085907 () Bool)

(declare-fun e!4259972 () Bool)

(assert (=> b!7085907 (= e!4259971 e!4259972)))

(declare-fun res!2894614 () Bool)

(assert (=> b!7085907 (=> (not res!2894614) (not e!4259972))))

(declare-fun dynLambda!27974 (Int Regex!17744) Bool)

(assert (=> b!7085907 (= res!2894614 (dynLambda!27974 lambda!429044 (h!75031 (exprs!7240 auxCtx!45))))))

(declare-fun b!7085908 () Bool)

(assert (=> b!7085908 (= e!4259972 (forall!16694 (t!382492 (exprs!7240 auxCtx!45)) lambda!429044))))

(assert (= (and d!2216022 (not res!2894613)) b!7085907))

(assert (= (and b!7085907 res!2894614) b!7085908))

(declare-fun b_lambda!270865 () Bool)

(assert (=> (not b_lambda!270865) (not b!7085907)))

(declare-fun m!7816904 () Bool)

(assert (=> b!7085907 m!7816904))

(declare-fun m!7816906 () Bool)

(assert (=> b!7085908 m!7816906))

(assert (=> b!7085873 d!2216022))

(declare-fun d!2216024 () Bool)

(declare-fun res!2894615 () Bool)

(declare-fun e!4259973 () Bool)

(assert (=> d!2216024 (=> res!2894615 e!4259973)))

(assert (=> d!2216024 (= res!2894615 (is-Nil!68583 (exprs!7240 c!9994)))))

(assert (=> d!2216024 (= (forall!16694 (exprs!7240 c!9994) lambda!429044) e!4259973)))

(declare-fun b!7085909 () Bool)

(declare-fun e!4259974 () Bool)

(assert (=> b!7085909 (= e!4259973 e!4259974)))

(declare-fun res!2894616 () Bool)

(assert (=> b!7085909 (=> (not res!2894616) (not e!4259974))))

(assert (=> b!7085909 (= res!2894616 (dynLambda!27974 lambda!429044 (h!75031 (exprs!7240 c!9994))))))

(declare-fun b!7085910 () Bool)

(assert (=> b!7085910 (= e!4259974 (forall!16694 (t!382492 (exprs!7240 c!9994)) lambda!429044))))

(assert (= (and d!2216024 (not res!2894615)) b!7085909))

(assert (= (and b!7085909 res!2894616) b!7085910))

(declare-fun b_lambda!270867 () Bool)

(assert (=> (not b_lambda!270867) (not b!7085909)))

(declare-fun m!7816908 () Bool)

(assert (=> b!7085909 m!7816908))

(declare-fun m!7816910 () Bool)

(assert (=> b!7085910 m!7816910))

(assert (=> b!7085867 d!2216024))

(declare-fun d!2216026 () Bool)

(declare-fun ++!15917 (List!68707 List!68707) List!68707)

(assert (=> d!2216026 (forall!16694 (++!15917 (exprs!7240 c!9994) (exprs!7240 auxCtx!45)) lambda!429044)))

(declare-fun lt!2554573 () Unit!162187)

(declare-fun choose!54608 (List!68707 List!68707 Int) Unit!162187)

(assert (=> d!2216026 (= lt!2554573 (choose!54608 (exprs!7240 c!9994) (exprs!7240 auxCtx!45) lambda!429044))))

(assert (=> d!2216026 (forall!16694 (exprs!7240 c!9994) lambda!429044)))

(assert (=> d!2216026 (= (lemmaConcatPreservesForall!1047 (exprs!7240 c!9994) (exprs!7240 auxCtx!45) lambda!429044) lt!2554573)))

(declare-fun bs!1882939 () Bool)

(assert (= bs!1882939 d!2216026))

(declare-fun m!7816912 () Bool)

(assert (=> bs!1882939 m!7816912))

(assert (=> bs!1882939 m!7816912))

(declare-fun m!7816914 () Bool)

(assert (=> bs!1882939 m!7816914))

(declare-fun m!7816916 () Bool)

(assert (=> bs!1882939 m!7816916))

(assert (=> bs!1882939 m!7816886))

(assert (=> b!7085867 d!2216026))

(declare-fun b!7085937 () Bool)

(declare-fun e!4260001 () Bool)

(declare-fun call!643885 () Bool)

(assert (=> b!7085937 (= e!4260001 call!643885)))

(declare-fun b!7085938 () Bool)

(declare-fun e!4260000 () Bool)

(declare-fun e!4260002 () Bool)

(assert (=> b!7085938 (= e!4260000 e!4260002)))

(declare-fun c!1322477 () Bool)

(assert (=> b!7085938 (= c!1322477 (is-Star!17744 r!11554))))

(declare-fun bm!643879 () Bool)

(declare-fun c!1322478 () Bool)

(assert (=> bm!643879 (= call!643885 (validRegex!9019 (ite c!1322478 (regTwo!36001 r!11554) (regOne!36000 r!11554))))))

(declare-fun b!7085939 () Bool)

(declare-fun res!2894638 () Bool)

(declare-fun e!4259999 () Bool)

(assert (=> b!7085939 (=> res!2894638 e!4259999)))

(assert (=> b!7085939 (= res!2894638 (not (is-Concat!26589 r!11554)))))

(declare-fun e!4259998 () Bool)

(assert (=> b!7085939 (= e!4259998 e!4259999)))

(declare-fun d!2216028 () Bool)

(declare-fun res!2894636 () Bool)

(assert (=> d!2216028 (=> res!2894636 e!4260000)))

(assert (=> d!2216028 (= res!2894636 (is-ElementMatch!17744 r!11554))))

(assert (=> d!2216028 (= (validRegex!9019 r!11554) e!4260000)))

(declare-fun bm!643880 () Bool)

(declare-fun call!643886 () Bool)

(declare-fun call!643884 () Bool)

(assert (=> bm!643880 (= call!643886 call!643884)))

(declare-fun b!7085940 () Bool)

(declare-fun e!4259995 () Bool)

(assert (=> b!7085940 (= e!4259995 call!643886)))

(declare-fun bm!643881 () Bool)

(assert (=> bm!643881 (= call!643884 (validRegex!9019 (ite c!1322477 (reg!18073 r!11554) (ite c!1322478 (regOne!36001 r!11554) (regTwo!36000 r!11554)))))))

(declare-fun b!7085941 () Bool)

(declare-fun e!4260003 () Bool)

(assert (=> b!7085941 (= e!4260002 e!4260003)))

(declare-fun res!2894633 () Bool)

(declare-fun nullable!7395 (Regex!17744) Bool)

(assert (=> b!7085941 (= res!2894633 (not (nullable!7395 (reg!18073 r!11554))))))

(assert (=> b!7085941 (=> (not res!2894633) (not e!4260003))))

(declare-fun b!7085942 () Bool)

(assert (=> b!7085942 (= e!4260002 e!4259998)))

(assert (=> b!7085942 (= c!1322478 (is-Union!17744 r!11554))))

(declare-fun b!7085943 () Bool)

(assert (=> b!7085943 (= e!4259999 e!4259995)))

(declare-fun res!2894639 () Bool)

(assert (=> b!7085943 (=> (not res!2894639) (not e!4259995))))

(assert (=> b!7085943 (= res!2894639 call!643885)))

(declare-fun b!7085944 () Bool)

(assert (=> b!7085944 (= e!4260003 call!643884)))

(declare-fun b!7085945 () Bool)

(declare-fun res!2894635 () Bool)

(assert (=> b!7085945 (=> (not res!2894635) (not e!4260001))))

(assert (=> b!7085945 (= res!2894635 call!643886)))

(assert (=> b!7085945 (= e!4259998 e!4260001)))

(assert (= (and d!2216028 (not res!2894636)) b!7085938))

(assert (= (and b!7085938 c!1322477) b!7085941))

(assert (= (and b!7085938 (not c!1322477)) b!7085942))

(assert (= (and b!7085941 res!2894633) b!7085944))

(assert (= (and b!7085942 c!1322478) b!7085945))

(assert (= (and b!7085942 (not c!1322478)) b!7085939))

(assert (= (and b!7085945 res!2894635) b!7085937))

(assert (= (and b!7085939 (not res!2894638)) b!7085943))

(assert (= (and b!7085943 res!2894639) b!7085940))

(assert (= (or b!7085945 b!7085940) bm!643880))

(assert (= (or b!7085937 b!7085943) bm!643879))

(assert (= (or b!7085944 bm!643880) bm!643881))

(declare-fun m!7816924 () Bool)

(assert (=> bm!643879 m!7816924))

(declare-fun m!7816928 () Bool)

(assert (=> bm!643881 m!7816928))

(declare-fun m!7816930 () Bool)

(assert (=> b!7085941 m!7816930))

(assert (=> start!689698 d!2216028))

(declare-fun bs!1882940 () Bool)

(declare-fun d!2216035 () Bool)

(assert (= bs!1882940 (and d!2216035 b!7085867)))

(declare-fun lambda!429052 () Int)

(assert (=> bs!1882940 (= lambda!429052 lambda!429044)))

(assert (=> d!2216035 (= (inv!87226 c!9994) (forall!16694 (exprs!7240 c!9994) lambda!429052))))

(declare-fun bs!1882941 () Bool)

(assert (= bs!1882941 d!2216035))

(declare-fun m!7816932 () Bool)

(assert (=> bs!1882941 m!7816932))

(assert (=> start!689698 d!2216035))

(declare-fun bs!1882942 () Bool)

(declare-fun d!2216038 () Bool)

(assert (= bs!1882942 (and d!2216038 b!7085867)))

(declare-fun lambda!429053 () Int)

(assert (=> bs!1882942 (= lambda!429053 lambda!429044)))

(declare-fun bs!1882943 () Bool)

(assert (= bs!1882943 (and d!2216038 d!2216035)))

(assert (=> bs!1882943 (= lambda!429053 lambda!429052)))

(assert (=> d!2216038 (= (inv!87226 auxCtx!45) (forall!16694 (exprs!7240 auxCtx!45) lambda!429053))))

(declare-fun bs!1882944 () Bool)

(assert (= bs!1882944 d!2216038))

(declare-fun m!7816934 () Bool)

(assert (=> bs!1882944 m!7816934))

(assert (=> start!689698 d!2216038))

(declare-fun e!4260006 () Bool)

(assert (=> b!7085875 (= tp!1945477 e!4260006)))

(declare-fun b!7085958 () Bool)

(declare-fun tp!1945518 () Bool)

(assert (=> b!7085958 (= e!4260006 tp!1945518)))

(declare-fun b!7085959 () Bool)

(declare-fun tp!1945515 () Bool)

(declare-fun tp!1945517 () Bool)

(assert (=> b!7085959 (= e!4260006 (and tp!1945515 tp!1945517))))

(declare-fun b!7085957 () Bool)

(declare-fun tp!1945516 () Bool)

(declare-fun tp!1945519 () Bool)

(assert (=> b!7085957 (= e!4260006 (and tp!1945516 tp!1945519))))

(declare-fun b!7085956 () Bool)

(assert (=> b!7085956 (= e!4260006 tp_is_empty!44721)))

(assert (= (and b!7085875 (is-ElementMatch!17744 (reg!18073 r!11554))) b!7085956))

(assert (= (and b!7085875 (is-Concat!26589 (reg!18073 r!11554))) b!7085957))

(assert (= (and b!7085875 (is-Star!17744 (reg!18073 r!11554))) b!7085958))

(assert (= (and b!7085875 (is-Union!17744 (reg!18073 r!11554))) b!7085959))

(declare-fun b!7085964 () Bool)

(declare-fun e!4260009 () Bool)

(declare-fun tp!1945524 () Bool)

(declare-fun tp!1945525 () Bool)

(assert (=> b!7085964 (= e!4260009 (and tp!1945524 tp!1945525))))

(assert (=> b!7085869 (= tp!1945480 e!4260009)))

(assert (= (and b!7085869 (is-Cons!68583 (exprs!7240 c!9994))) b!7085964))

(declare-fun b!7085965 () Bool)

(declare-fun e!4260010 () Bool)

(declare-fun tp!1945526 () Bool)

(declare-fun tp!1945527 () Bool)

(assert (=> b!7085965 (= e!4260010 (and tp!1945526 tp!1945527))))

(assert (=> b!7085874 (= tp!1945483 e!4260010)))

(assert (= (and b!7085874 (is-Cons!68583 (exprs!7240 auxCtx!45))) b!7085965))

(declare-fun e!4260011 () Bool)

(assert (=> b!7085868 (= tp!1945478 e!4260011)))

(declare-fun b!7085968 () Bool)

(declare-fun tp!1945531 () Bool)

(assert (=> b!7085968 (= e!4260011 tp!1945531)))

(declare-fun b!7085969 () Bool)

(declare-fun tp!1945528 () Bool)

(declare-fun tp!1945530 () Bool)

(assert (=> b!7085969 (= e!4260011 (and tp!1945528 tp!1945530))))

(declare-fun b!7085967 () Bool)

(declare-fun tp!1945529 () Bool)

(declare-fun tp!1945532 () Bool)

(assert (=> b!7085967 (= e!4260011 (and tp!1945529 tp!1945532))))

(declare-fun b!7085966 () Bool)

(assert (=> b!7085966 (= e!4260011 tp_is_empty!44721)))

(assert (= (and b!7085868 (is-ElementMatch!17744 (regOne!36000 r!11554))) b!7085966))

(assert (= (and b!7085868 (is-Concat!26589 (regOne!36000 r!11554))) b!7085967))

(assert (= (and b!7085868 (is-Star!17744 (regOne!36000 r!11554))) b!7085968))

(assert (= (and b!7085868 (is-Union!17744 (regOne!36000 r!11554))) b!7085969))

(declare-fun e!4260012 () Bool)

(assert (=> b!7085868 (= tp!1945481 e!4260012)))

(declare-fun b!7085972 () Bool)

(declare-fun tp!1945536 () Bool)

(assert (=> b!7085972 (= e!4260012 tp!1945536)))

(declare-fun b!7085973 () Bool)

(declare-fun tp!1945533 () Bool)

(declare-fun tp!1945535 () Bool)

(assert (=> b!7085973 (= e!4260012 (and tp!1945533 tp!1945535))))

(declare-fun b!7085971 () Bool)

(declare-fun tp!1945534 () Bool)

(declare-fun tp!1945537 () Bool)

(assert (=> b!7085971 (= e!4260012 (and tp!1945534 tp!1945537))))

(declare-fun b!7085970 () Bool)

(assert (=> b!7085970 (= e!4260012 tp_is_empty!44721)))

(assert (= (and b!7085868 (is-ElementMatch!17744 (regTwo!36000 r!11554))) b!7085970))

(assert (= (and b!7085868 (is-Concat!26589 (regTwo!36000 r!11554))) b!7085971))

(assert (= (and b!7085868 (is-Star!17744 (regTwo!36000 r!11554))) b!7085972))

(assert (= (and b!7085868 (is-Union!17744 (regTwo!36000 r!11554))) b!7085973))

(declare-fun e!4260013 () Bool)

(assert (=> b!7085872 (= tp!1945479 e!4260013)))

(declare-fun b!7085976 () Bool)

(declare-fun tp!1945541 () Bool)

(assert (=> b!7085976 (= e!4260013 tp!1945541)))

(declare-fun b!7085977 () Bool)

(declare-fun tp!1945538 () Bool)

(declare-fun tp!1945540 () Bool)

(assert (=> b!7085977 (= e!4260013 (and tp!1945538 tp!1945540))))

(declare-fun b!7085975 () Bool)

(declare-fun tp!1945539 () Bool)

(declare-fun tp!1945542 () Bool)

(assert (=> b!7085975 (= e!4260013 (and tp!1945539 tp!1945542))))

(declare-fun b!7085974 () Bool)

(assert (=> b!7085974 (= e!4260013 tp_is_empty!44721)))

(assert (= (and b!7085872 (is-ElementMatch!17744 (regOne!36001 r!11554))) b!7085974))

(assert (= (and b!7085872 (is-Concat!26589 (regOne!36001 r!11554))) b!7085975))

(assert (= (and b!7085872 (is-Star!17744 (regOne!36001 r!11554))) b!7085976))

(assert (= (and b!7085872 (is-Union!17744 (regOne!36001 r!11554))) b!7085977))

(declare-fun e!4260014 () Bool)

(assert (=> b!7085872 (= tp!1945482 e!4260014)))

(declare-fun b!7085980 () Bool)

(declare-fun tp!1945546 () Bool)

(assert (=> b!7085980 (= e!4260014 tp!1945546)))

(declare-fun b!7085981 () Bool)

(declare-fun tp!1945543 () Bool)

(declare-fun tp!1945545 () Bool)

(assert (=> b!7085981 (= e!4260014 (and tp!1945543 tp!1945545))))

(declare-fun b!7085979 () Bool)

(declare-fun tp!1945544 () Bool)

(declare-fun tp!1945547 () Bool)

(assert (=> b!7085979 (= e!4260014 (and tp!1945544 tp!1945547))))

(declare-fun b!7085978 () Bool)

(assert (=> b!7085978 (= e!4260014 tp_is_empty!44721)))

(assert (= (and b!7085872 (is-ElementMatch!17744 (regTwo!36001 r!11554))) b!7085978))

(assert (= (and b!7085872 (is-Concat!26589 (regTwo!36001 r!11554))) b!7085979))

(assert (= (and b!7085872 (is-Star!17744 (regTwo!36001 r!11554))) b!7085980))

(assert (= (and b!7085872 (is-Union!17744 (regTwo!36001 r!11554))) b!7085981))

(declare-fun b_lambda!270873 () Bool)

(assert (= b_lambda!270865 (or b!7085867 b_lambda!270873)))

(declare-fun bs!1882945 () Bool)

(declare-fun d!2216040 () Bool)

(assert (= bs!1882945 (and d!2216040 b!7085867)))

(assert (=> bs!1882945 (= (dynLambda!27974 lambda!429044 (h!75031 (exprs!7240 auxCtx!45))) (validRegex!9019 (h!75031 (exprs!7240 auxCtx!45))))))

(declare-fun m!7816936 () Bool)

(assert (=> bs!1882945 m!7816936))

(assert (=> b!7085907 d!2216040))

(declare-fun b_lambda!270875 () Bool)

(assert (= b_lambda!270867 (or b!7085867 b_lambda!270875)))

(declare-fun bs!1882946 () Bool)

(declare-fun d!2216042 () Bool)

(assert (= bs!1882946 (and d!2216042 b!7085867)))

(assert (=> bs!1882946 (= (dynLambda!27974 lambda!429044 (h!75031 (exprs!7240 c!9994))) (validRegex!9019 (h!75031 (exprs!7240 c!9994))))))

(declare-fun m!7816938 () Bool)

(assert (=> bs!1882946 m!7816938))

(assert (=> b!7085909 d!2216042))

(push 1)

(assert (not bs!1882945))

(assert (not d!2216035))

(assert (not b!7085965))

(assert tp_is_empty!44721)

(assert (not b!7085959))

(assert (not b!7085964))

(assert (not b!7085977))

(assert (not b!7085910))

(assert (not bm!643881))

(assert (not b!7085973))

(assert (not b!7085976))

(assert (not b!7085957))

(assert (not d!2216038))

(assert (not b!7085908))

(assert (not b!7085975))

(assert (not b!7085968))

(assert (not b!7085981))

(assert (not b!7085980))

(assert (not b!7085972))

(assert (not b_lambda!270873))

(assert (not b!7085967))

(assert (not b!7085969))

(assert (not b!7085941))

(assert (not b!7085971))

(assert (not b_lambda!270875))

(assert (not b!7085958))

(assert (not d!2216026))

(assert (not bm!643879))

(assert (not b!7085979))

(assert (not bs!1882946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

