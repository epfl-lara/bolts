; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689474 () Bool)

(assert start!689474)

(declare-fun b!7083889 () Bool)

(declare-fun e!4258840 () Bool)

(declare-fun tp_is_empty!44677 () Bool)

(assert (=> b!7083889 (= e!4258840 tp_is_empty!44677)))

(declare-fun b!7083890 () Bool)

(declare-fun tp!1944341 () Bool)

(assert (=> b!7083890 (= e!4258840 tp!1944341)))

(declare-fun res!2894004 () Bool)

(declare-fun e!4258841 () Bool)

(assert (=> start!689474 (=> (not res!2894004) (not e!4258841))))

(declare-datatypes ((C!35714 0))(
  ( (C!35715 (val!27563 Int)) )
))
(declare-datatypes ((Regex!17722 0))(
  ( (ElementMatch!17722 (c!1322245 C!35714)) (Concat!26567 (regOne!35956 Regex!17722) (regTwo!35956 Regex!17722)) (EmptyExpr!17722) (Star!17722 (reg!18051 Regex!17722)) (EmptyLang!17722) (Union!17722 (regOne!35957 Regex!17722) (regTwo!35957 Regex!17722)) )
))
(declare-fun r!11554 () Regex!17722)

(declare-fun validRegex!8997 (Regex!17722) Bool)

(assert (=> start!689474 (= res!2894004 (validRegex!8997 r!11554))))

(assert (=> start!689474 e!4258841))

(assert (=> start!689474 e!4258840))

(declare-datatypes ((List!68685 0))(
  ( (Nil!68561) (Cons!68561 (h!75009 Regex!17722) (t!382470 List!68685)) )
))
(declare-datatypes ((Context!13436 0))(
  ( (Context!13437 (exprs!7218 List!68685)) )
))
(declare-fun cz!4 () Context!13436)

(declare-fun e!4258842 () Bool)

(declare-fun inv!87171 (Context!13436) Bool)

(assert (=> start!689474 (and (inv!87171 cz!4) e!4258842)))

(declare-fun auxCtx!45 () Context!13436)

(declare-fun e!4258839 () Bool)

(assert (=> start!689474 (and (inv!87171 auxCtx!45) e!4258839)))

(declare-fun b!7083891 () Bool)

(declare-fun e!4258843 () Bool)

(declare-fun lambda!428772 () Int)

(declare-fun forall!16678 (List!68685 Int) Bool)

(assert (=> b!7083891 (= e!4258843 (not (forall!16678 (exprs!7218 auxCtx!45) lambda!428772)))))

(declare-fun b!7083892 () Bool)

(declare-fun tp!1944343 () Bool)

(assert (=> b!7083892 (= e!4258842 tp!1944343)))

(declare-fun b!7083893 () Bool)

(declare-fun tp!1944339 () Bool)

(declare-fun tp!1944340 () Bool)

(assert (=> b!7083893 (= e!4258840 (and tp!1944339 tp!1944340))))

(declare-fun b!7083894 () Bool)

(declare-fun tp!1944338 () Bool)

(assert (=> b!7083894 (= e!4258839 tp!1944338)))

(declare-fun b!7083895 () Bool)

(assert (=> b!7083895 (= e!4258841 e!4258843)))

(declare-fun res!2894003 () Bool)

(assert (=> b!7083895 (=> (not res!2894003) (not e!4258843))))

(assert (=> b!7083895 (= res!2894003 (forall!16678 (exprs!7218 cz!4) lambda!428772))))

(declare-fun b!7083896 () Bool)

(declare-fun tp!1944337 () Bool)

(declare-fun tp!1944342 () Bool)

(assert (=> b!7083896 (= e!4258840 (and tp!1944337 tp!1944342))))

(assert (= (and start!689474 res!2894004) b!7083895))

(assert (= (and b!7083895 res!2894003) b!7083891))

(assert (= (and start!689474 (is-ElementMatch!17722 r!11554)) b!7083889))

(assert (= (and start!689474 (is-Concat!26567 r!11554)) b!7083893))

(assert (= (and start!689474 (is-Star!17722 r!11554)) b!7083890))

(assert (= (and start!689474 (is-Union!17722 r!11554)) b!7083896))

(assert (= start!689474 b!7083892))

(assert (= start!689474 b!7083894))

(declare-fun m!7815896 () Bool)

(assert (=> start!689474 m!7815896))

(declare-fun m!7815898 () Bool)

(assert (=> start!689474 m!7815898))

(declare-fun m!7815900 () Bool)

(assert (=> start!689474 m!7815900))

(declare-fun m!7815902 () Bool)

(assert (=> b!7083891 m!7815902))

(declare-fun m!7815904 () Bool)

(assert (=> b!7083895 m!7815904))

(push 1)

(assert (not b!7083891))

(assert (not b!7083893))

(assert (not b!7083894))

(assert (not b!7083890))

(assert (not b!7083895))

(assert (not b!7083896))

(assert (not b!7083892))

(assert tp_is_empty!44677)

(assert (not start!689474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1322256 () Bool)

(declare-fun c!1322255 () Bool)

(declare-fun call!643650 () Bool)

(declare-fun bm!643643 () Bool)

(assert (=> bm!643643 (= call!643650 (validRegex!8997 (ite c!1322255 (reg!18051 r!11554) (ite c!1322256 (regTwo!35957 r!11554) (regOne!35956 r!11554)))))))

(declare-fun bm!643644 () Bool)

(declare-fun call!643649 () Bool)

(assert (=> bm!643644 (= call!643649 (validRegex!8997 (ite c!1322256 (regOne!35957 r!11554) (regTwo!35956 r!11554))))))

(declare-fun b!7083957 () Bool)

(declare-fun e!4258887 () Bool)

(assert (=> b!7083957 (= e!4258887 call!643649)))

(declare-fun bm!643645 () Bool)

(declare-fun call!643648 () Bool)

(assert (=> bm!643645 (= call!643648 call!643650)))

(declare-fun b!7083958 () Bool)

(declare-fun e!4258888 () Bool)

(declare-fun e!4258893 () Bool)

(assert (=> b!7083958 (= e!4258888 e!4258893)))

(declare-fun res!2894033 () Bool)

(declare-fun nullable!7379 (Regex!17722) Bool)

(assert (=> b!7083958 (= res!2894033 (not (nullable!7379 (reg!18051 r!11554))))))

(assert (=> b!7083958 (=> (not res!2894033) (not e!4258893))))

(declare-fun b!7083959 () Bool)

(declare-fun res!2894035 () Bool)

(declare-fun e!4258892 () Bool)

(assert (=> b!7083959 (=> (not res!2894035) (not e!4258892))))

(assert (=> b!7083959 (= res!2894035 call!643649)))

(declare-fun e!4258890 () Bool)

(assert (=> b!7083959 (= e!4258890 e!4258892)))

(declare-fun d!2215717 () Bool)

(declare-fun res!2894034 () Bool)

(declare-fun e!4258889 () Bool)

(assert (=> d!2215717 (=> res!2894034 e!4258889)))

(assert (=> d!2215717 (= res!2894034 (is-ElementMatch!17722 r!11554))))

(assert (=> d!2215717 (= (validRegex!8997 r!11554) e!4258889)))

(declare-fun b!7083960 () Bool)

(assert (=> b!7083960 (= e!4258889 e!4258888)))

(assert (=> b!7083960 (= c!1322255 (is-Star!17722 r!11554))))

(declare-fun b!7083961 () Bool)

(assert (=> b!7083961 (= e!4258892 call!643648)))

(declare-fun b!7083962 () Bool)

(declare-fun res!2894032 () Bool)

(declare-fun e!4258891 () Bool)

(assert (=> b!7083962 (=> res!2894032 e!4258891)))

(assert (=> b!7083962 (= res!2894032 (not (is-Concat!26567 r!11554)))))

(assert (=> b!7083962 (= e!4258890 e!4258891)))

(declare-fun b!7083963 () Bool)

(assert (=> b!7083963 (= e!4258888 e!4258890)))

(assert (=> b!7083963 (= c!1322256 (is-Union!17722 r!11554))))

(declare-fun b!7083964 () Bool)

(assert (=> b!7083964 (= e!4258891 e!4258887)))

(declare-fun res!2894031 () Bool)

(assert (=> b!7083964 (=> (not res!2894031) (not e!4258887))))

(assert (=> b!7083964 (= res!2894031 call!643648)))

(declare-fun b!7083965 () Bool)

(assert (=> b!7083965 (= e!4258893 call!643650)))

(assert (= (and d!2215717 (not res!2894034)) b!7083960))

(assert (= (and b!7083960 c!1322255) b!7083958))

(assert (= (and b!7083960 (not c!1322255)) b!7083963))

(assert (= (and b!7083958 res!2894033) b!7083965))

(assert (= (and b!7083963 c!1322256) b!7083959))

(assert (= (and b!7083963 (not c!1322256)) b!7083962))

(assert (= (and b!7083959 res!2894035) b!7083961))

(assert (= (and b!7083962 (not res!2894032)) b!7083964))

(assert (= (and b!7083964 res!2894031) b!7083957))

(assert (= (or b!7083959 b!7083957) bm!643644))

(assert (= (or b!7083961 b!7083964) bm!643645))

(assert (= (or b!7083965 bm!643645) bm!643643))

(declare-fun m!7815916 () Bool)

(assert (=> bm!643643 m!7815916))

(declare-fun m!7815918 () Bool)

(assert (=> bm!643644 m!7815918))

(declare-fun m!7815920 () Bool)

(assert (=> b!7083958 m!7815920))

(assert (=> start!689474 d!2215717))

(declare-fun bs!1882753 () Bool)

(declare-fun d!2215719 () Bool)

(assert (= bs!1882753 (and d!2215719 b!7083895)))

(declare-fun lambda!428778 () Int)

(assert (=> bs!1882753 (= lambda!428778 lambda!428772)))

(assert (=> d!2215719 (= (inv!87171 cz!4) (forall!16678 (exprs!7218 cz!4) lambda!428778))))

(declare-fun bs!1882754 () Bool)

(assert (= bs!1882754 d!2215719))

(declare-fun m!7815922 () Bool)

(assert (=> bs!1882754 m!7815922))

(assert (=> start!689474 d!2215719))

(declare-fun bs!1882755 () Bool)

(declare-fun d!2215721 () Bool)

(assert (= bs!1882755 (and d!2215721 b!7083895)))

(declare-fun lambda!428779 () Int)

(assert (=> bs!1882755 (= lambda!428779 lambda!428772)))

(declare-fun bs!1882756 () Bool)

(assert (= bs!1882756 (and d!2215721 d!2215719)))

(assert (=> bs!1882756 (= lambda!428779 lambda!428778)))

(assert (=> d!2215721 (= (inv!87171 auxCtx!45) (forall!16678 (exprs!7218 auxCtx!45) lambda!428779))))

(declare-fun bs!1882757 () Bool)

(assert (= bs!1882757 d!2215721))

(declare-fun m!7815924 () Bool)

(assert (=> bs!1882757 m!7815924))

(assert (=> start!689474 d!2215721))

(declare-fun d!2215723 () Bool)

(declare-fun res!2894040 () Bool)

(declare-fun e!4258898 () Bool)

(assert (=> d!2215723 (=> res!2894040 e!4258898)))

(assert (=> d!2215723 (= res!2894040 (is-Nil!68561 (exprs!7218 cz!4)))))

(assert (=> d!2215723 (= (forall!16678 (exprs!7218 cz!4) lambda!428772) e!4258898)))

(declare-fun b!7083970 () Bool)

(declare-fun e!4258899 () Bool)

(assert (=> b!7083970 (= e!4258898 e!4258899)))

(declare-fun res!2894041 () Bool)

(assert (=> b!7083970 (=> (not res!2894041) (not e!4258899))))

(declare-fun dynLambda!27951 (Int Regex!17722) Bool)

(assert (=> b!7083970 (= res!2894041 (dynLambda!27951 lambda!428772 (h!75009 (exprs!7218 cz!4))))))

(declare-fun b!7083971 () Bool)

(assert (=> b!7083971 (= e!4258899 (forall!16678 (t!382470 (exprs!7218 cz!4)) lambda!428772))))

(assert (= (and d!2215723 (not res!2894040)) b!7083970))

(assert (= (and b!7083970 res!2894041) b!7083971))

(declare-fun b_lambda!270737 () Bool)

(assert (=> (not b_lambda!270737) (not b!7083970)))

(declare-fun m!7815926 () Bool)

(assert (=> b!7083970 m!7815926))

(declare-fun m!7815928 () Bool)

(assert (=> b!7083971 m!7815928))

(assert (=> b!7083895 d!2215723))

(declare-fun d!2215725 () Bool)

(declare-fun res!2894042 () Bool)

(declare-fun e!4258900 () Bool)

(assert (=> d!2215725 (=> res!2894042 e!4258900)))

(assert (=> d!2215725 (= res!2894042 (is-Nil!68561 (exprs!7218 auxCtx!45)))))

(assert (=> d!2215725 (= (forall!16678 (exprs!7218 auxCtx!45) lambda!428772) e!4258900)))

(declare-fun b!7083972 () Bool)

(declare-fun e!4258901 () Bool)

(assert (=> b!7083972 (= e!4258900 e!4258901)))

(declare-fun res!2894043 () Bool)

(assert (=> b!7083972 (=> (not res!2894043) (not e!4258901))))

(assert (=> b!7083972 (= res!2894043 (dynLambda!27951 lambda!428772 (h!75009 (exprs!7218 auxCtx!45))))))

(declare-fun b!7083973 () Bool)

(assert (=> b!7083973 (= e!4258901 (forall!16678 (t!382470 (exprs!7218 auxCtx!45)) lambda!428772))))

(assert (= (and d!2215725 (not res!2894042)) b!7083972))

(assert (= (and b!7083972 res!2894043) b!7083973))

(declare-fun b_lambda!270739 () Bool)

(assert (=> (not b_lambda!270739) (not b!7083972)))

(declare-fun m!7815930 () Bool)

(assert (=> b!7083972 m!7815930))

(declare-fun m!7815932 () Bool)

(assert (=> b!7083973 m!7815932))

(assert (=> b!7083891 d!2215725))

(declare-fun b!7083986 () Bool)

(declare-fun e!4258904 () Bool)

(declare-fun tp!1944377 () Bool)

(assert (=> b!7083986 (= e!4258904 tp!1944377)))

(declare-fun b!7083987 () Bool)

(declare-fun tp!1944375 () Bool)

(declare-fun tp!1944376 () Bool)

(assert (=> b!7083987 (= e!4258904 (and tp!1944375 tp!1944376))))

(declare-fun b!7083984 () Bool)

(assert (=> b!7083984 (= e!4258904 tp_is_empty!44677)))

(assert (=> b!7083893 (= tp!1944339 e!4258904)))

(declare-fun b!7083985 () Bool)

(declare-fun tp!1944378 () Bool)

(declare-fun tp!1944379 () Bool)

(assert (=> b!7083985 (= e!4258904 (and tp!1944378 tp!1944379))))

(assert (= (and b!7083893 (is-ElementMatch!17722 (regOne!35956 r!11554))) b!7083984))

(assert (= (and b!7083893 (is-Concat!26567 (regOne!35956 r!11554))) b!7083985))

(assert (= (and b!7083893 (is-Star!17722 (regOne!35956 r!11554))) b!7083986))

(assert (= (and b!7083893 (is-Union!17722 (regOne!35956 r!11554))) b!7083987))

(declare-fun b!7083990 () Bool)

(declare-fun e!4258905 () Bool)

(declare-fun tp!1944382 () Bool)

(assert (=> b!7083990 (= e!4258905 tp!1944382)))

(declare-fun b!7083991 () Bool)

(declare-fun tp!1944380 () Bool)

(declare-fun tp!1944381 () Bool)

(assert (=> b!7083991 (= e!4258905 (and tp!1944380 tp!1944381))))

(declare-fun b!7083988 () Bool)

(assert (=> b!7083988 (= e!4258905 tp_is_empty!44677)))

(assert (=> b!7083893 (= tp!1944340 e!4258905)))

(declare-fun b!7083989 () Bool)

(declare-fun tp!1944383 () Bool)

(declare-fun tp!1944384 () Bool)

(assert (=> b!7083989 (= e!4258905 (and tp!1944383 tp!1944384))))

(assert (= (and b!7083893 (is-ElementMatch!17722 (regTwo!35956 r!11554))) b!7083988))

(assert (= (and b!7083893 (is-Concat!26567 (regTwo!35956 r!11554))) b!7083989))

(assert (= (and b!7083893 (is-Star!17722 (regTwo!35956 r!11554))) b!7083990))

(assert (= (and b!7083893 (is-Union!17722 (regTwo!35956 r!11554))) b!7083991))

(declare-fun b!7084005 () Bool)

(declare-fun e!4258915 () Bool)

(declare-fun tp!1944389 () Bool)

(declare-fun tp!1944390 () Bool)

(assert (=> b!7084005 (= e!4258915 (and tp!1944389 tp!1944390))))

(assert (=> b!7083894 (= tp!1944338 e!4258915)))

(assert (= (and b!7083894 (is-Cons!68561 (exprs!7218 auxCtx!45))) b!7084005))

(declare-fun b!7084008 () Bool)

(declare-fun e!4258916 () Bool)

(declare-fun tp!1944393 () Bool)

(assert (=> b!7084008 (= e!4258916 tp!1944393)))

(declare-fun b!7084009 () Bool)

(declare-fun tp!1944391 () Bool)

(declare-fun tp!1944392 () Bool)

(assert (=> b!7084009 (= e!4258916 (and tp!1944391 tp!1944392))))

(declare-fun b!7084006 () Bool)

(assert (=> b!7084006 (= e!4258916 tp_is_empty!44677)))

(assert (=> b!7083890 (= tp!1944341 e!4258916)))

(declare-fun b!7084007 () Bool)

(declare-fun tp!1944394 () Bool)

(declare-fun tp!1944395 () Bool)

(assert (=> b!7084007 (= e!4258916 (and tp!1944394 tp!1944395))))

(assert (= (and b!7083890 (is-ElementMatch!17722 (reg!18051 r!11554))) b!7084006))

(assert (= (and b!7083890 (is-Concat!26567 (reg!18051 r!11554))) b!7084007))

(assert (= (and b!7083890 (is-Star!17722 (reg!18051 r!11554))) b!7084008))

(assert (= (and b!7083890 (is-Union!17722 (reg!18051 r!11554))) b!7084009))

(declare-fun b!7084012 () Bool)

(declare-fun e!4258917 () Bool)

(declare-fun tp!1944398 () Bool)

(assert (=> b!7084012 (= e!4258917 tp!1944398)))

(declare-fun b!7084013 () Bool)

(declare-fun tp!1944396 () Bool)

(declare-fun tp!1944397 () Bool)

(assert (=> b!7084013 (= e!4258917 (and tp!1944396 tp!1944397))))

(declare-fun b!7084010 () Bool)

(assert (=> b!7084010 (= e!4258917 tp_is_empty!44677)))

(assert (=> b!7083896 (= tp!1944337 e!4258917)))

(declare-fun b!7084011 () Bool)

(declare-fun tp!1944399 () Bool)

(declare-fun tp!1944400 () Bool)

(assert (=> b!7084011 (= e!4258917 (and tp!1944399 tp!1944400))))

(assert (= (and b!7083896 (is-ElementMatch!17722 (regOne!35957 r!11554))) b!7084010))

(assert (= (and b!7083896 (is-Concat!26567 (regOne!35957 r!11554))) b!7084011))

(assert (= (and b!7083896 (is-Star!17722 (regOne!35957 r!11554))) b!7084012))

(assert (= (and b!7083896 (is-Union!17722 (regOne!35957 r!11554))) b!7084013))

(declare-fun b!7084016 () Bool)

(declare-fun e!4258918 () Bool)

(declare-fun tp!1944403 () Bool)

(assert (=> b!7084016 (= e!4258918 tp!1944403)))

(declare-fun b!7084017 () Bool)

(declare-fun tp!1944401 () Bool)

(declare-fun tp!1944402 () Bool)

(assert (=> b!7084017 (= e!4258918 (and tp!1944401 tp!1944402))))

(declare-fun b!7084014 () Bool)

(assert (=> b!7084014 (= e!4258918 tp_is_empty!44677)))

(assert (=> b!7083896 (= tp!1944342 e!4258918)))

(declare-fun b!7084015 () Bool)

(declare-fun tp!1944404 () Bool)

(declare-fun tp!1944405 () Bool)

(assert (=> b!7084015 (= e!4258918 (and tp!1944404 tp!1944405))))

(assert (= (and b!7083896 (is-ElementMatch!17722 (regTwo!35957 r!11554))) b!7084014))

(assert (= (and b!7083896 (is-Concat!26567 (regTwo!35957 r!11554))) b!7084015))

(assert (= (and b!7083896 (is-Star!17722 (regTwo!35957 r!11554))) b!7084016))

(assert (= (and b!7083896 (is-Union!17722 (regTwo!35957 r!11554))) b!7084017))

(declare-fun b!7084018 () Bool)

(declare-fun e!4258919 () Bool)

(declare-fun tp!1944406 () Bool)

(declare-fun tp!1944407 () Bool)

(assert (=> b!7084018 (= e!4258919 (and tp!1944406 tp!1944407))))

(assert (=> b!7083892 (= tp!1944343 e!4258919)))

(assert (= (and b!7083892 (is-Cons!68561 (exprs!7218 cz!4))) b!7084018))

(declare-fun b_lambda!270741 () Bool)

(assert (= b_lambda!270737 (or b!7083895 b_lambda!270741)))

(declare-fun bs!1882758 () Bool)

(declare-fun d!2215727 () Bool)

(assert (= bs!1882758 (and d!2215727 b!7083895)))

(assert (=> bs!1882758 (= (dynLambda!27951 lambda!428772 (h!75009 (exprs!7218 cz!4))) (validRegex!8997 (h!75009 (exprs!7218 cz!4))))))

(declare-fun m!7815934 () Bool)

(assert (=> bs!1882758 m!7815934))

(assert (=> b!7083970 d!2215727))

(declare-fun b_lambda!270743 () Bool)

(assert (= b_lambda!270739 (or b!7083895 b_lambda!270743)))

(declare-fun bs!1882759 () Bool)

(declare-fun d!2215729 () Bool)

(assert (= bs!1882759 (and d!2215729 b!7083895)))

(assert (=> bs!1882759 (= (dynLambda!27951 lambda!428772 (h!75009 (exprs!7218 auxCtx!45))) (validRegex!8997 (h!75009 (exprs!7218 auxCtx!45))))))

(declare-fun m!7815940 () Bool)

(assert (=> bs!1882759 m!7815940))

(assert (=> b!7083972 d!2215729))

(push 1)

(assert (not b!7083991))

(assert (not bs!1882758))

(assert (not b!7084008))

(assert (not b!7084005))

(assert (not b!7083986))

(assert (not b!7083971))

(assert (not b!7084009))

(assert (not bm!643643))

(assert (not b!7084015))

(assert (not b!7083990))

(assert (not b!7083987))

(assert (not b_lambda!270743))

(assert (not b!7083985))

(assert (not b!7083958))

(assert (not b_lambda!270741))

(assert (not b!7084007))

(assert (not bs!1882759))

(assert (not b!7084016))

(assert (not b!7084013))

(assert (not b!7083989))

(assert (not d!2215721))

(assert (not b!7084017))

(assert (not bm!643644))

(assert (not b!7084018))

(assert (not b!7084011))

(assert (not b!7083973))

(assert (not b!7084012))

(assert tp_is_empty!44677)

(assert (not d!2215719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

