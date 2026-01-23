; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727736 () Bool)

(assert start!727736)

(declare-fun res!3013662 () Bool)

(declare-fun e!4480881 () Bool)

(assert (=> start!727736 (=> (not res!3013662) (not e!4480881))))

(declare-datatypes ((C!39830 0))(
  ( (C!39831 (val!30335 Int)) )
))
(declare-datatypes ((Regex!19752 0))(
  ( (ElementMatch!19752 (c!1388536 C!39830)) (Concat!28597 (regOne!40016 Regex!19752) (regTwo!40016 Regex!19752)) (EmptyExpr!19752) (Star!19752 (reg!20081 Regex!19752)) (EmptyLang!19752) (Union!19752 (regOne!40017 Regex!19752) (regTwo!40017 Regex!19752)) )
))
(declare-datatypes ((List!72635 0))(
  ( (Nil!72511) (Cons!72511 (h!78959 Regex!19752) (t!387272 List!72635)) )
))
(declare-datatypes ((Context!17008 0))(
  ( (Context!17009 (exprs!9004 List!72635)) )
))
(declare-fun c!7091 () Context!17008)

(assert (=> start!727736 (= res!3013662 (is-Cons!72511 (exprs!9004 c!7091)))))

(assert (=> start!727736 e!4480881))

(declare-fun e!4480882 () Bool)

(declare-fun inv!92644 (Context!17008) Bool)

(assert (=> start!727736 (and (inv!92644 c!7091) e!4480882)))

(declare-fun b!7515780 () Bool)

(declare-fun lambda!466224 () Int)

(declare-fun exists!4934 (List!72635 Int) Bool)

(assert (=> b!7515780 (= e!4480881 (not (= true (exists!4934 (exprs!9004 c!7091) lambda!466224))))))

(declare-fun b!7515779 () Bool)

(declare-fun res!3013660 () Bool)

(assert (=> b!7515779 (=> (not res!3013660) (not e!4480881))))

(declare-datatypes ((List!72636 0))(
  ( (Nil!72512) (Cons!72512 (h!78960 C!39830) (t!387273 List!72636)) )
))
(declare-datatypes ((Option!17249 0))(
  ( (None!17248) (Some!17248 (v!54383 List!72636)) )
))
(declare-fun getLanguageWitness!1088 (Context!17008) Option!17249)

(assert (=> b!7515779 (= res!3013660 (not (is-Some!17248 (getLanguageWitness!1088 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(declare-fun b!7515781 () Bool)

(declare-fun tp!2182035 () Bool)

(assert (=> b!7515781 (= e!4480882 tp!2182035)))

(declare-fun b!7515778 () Bool)

(declare-fun res!3013661 () Bool)

(assert (=> b!7515778 (=> (not res!3013661) (not e!4480881))))

(declare-fun getLanguageWitness!1089 (Regex!19752) Option!17249)

(assert (=> b!7515778 (= res!3013661 (is-Some!17248 (getLanguageWitness!1089 (h!78959 (exprs!9004 c!7091)))))))

(assert (= (and start!727736 res!3013662) b!7515778))

(assert (= (and b!7515778 res!3013661) b!7515779))

(assert (= (and b!7515779 res!3013660) b!7515780))

(assert (= start!727736 b!7515781))

(declare-fun m!8097716 () Bool)

(assert (=> start!727736 m!8097716))

(declare-fun m!8097718 () Bool)

(assert (=> b!7515780 m!8097718))

(declare-fun m!8097720 () Bool)

(assert (=> b!7515779 m!8097720))

(declare-fun m!8097722 () Bool)

(assert (=> b!7515778 m!8097722))

(push 1)

(assert (not b!7515778))

(assert (not start!727736))

(assert (not b!7515781))

(assert (not b!7515780))

(assert (not b!7515779))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!689290 () Bool)

(declare-fun call!689296 () Option!17249)

(declare-fun c!1388556 () Bool)

(assert (=> bm!689290 (= call!689296 (getLanguageWitness!1089 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))

(declare-fun d!2307848 () Bool)

(declare-fun c!1388560 () Bool)

(assert (=> d!2307848 (= c!1388560 (is-EmptyExpr!19752 (h!78959 (exprs!9004 c!7091))))))

(declare-fun e!4480910 () Option!17249)

(assert (=> d!2307848 (= (getLanguageWitness!1089 (h!78959 (exprs!9004 c!7091))) e!4480910)))

(declare-fun bm!689291 () Bool)

(declare-fun call!689295 () Option!17249)

(assert (=> bm!689291 (= call!689295 (getLanguageWitness!1089 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))

(declare-fun b!7515826 () Bool)

(declare-fun e!4480906 () Option!17249)

(declare-fun lt!2638146 () Option!17249)

(assert (=> b!7515826 (= e!4480906 lt!2638146)))

(declare-fun b!7515827 () Bool)

(declare-fun e!4480908 () Option!17249)

(assert (=> b!7515827 (= e!4480908 e!4480906)))

(assert (=> b!7515827 (= lt!2638146 call!689296)))

(declare-fun c!1388555 () Bool)

(assert (=> b!7515827 (= c!1388555 (is-Some!17248 lt!2638146))))

(declare-fun b!7515828 () Bool)

(assert (=> b!7515828 (= e!4480906 call!689295)))

(declare-fun b!7515829 () Bool)

(declare-fun c!1388557 () Bool)

(declare-fun lt!2638147 () Option!17249)

(assert (=> b!7515829 (= c!1388557 (is-Some!17248 lt!2638147))))

(assert (=> b!7515829 (= lt!2638147 call!689296)))

(declare-fun e!4480909 () Option!17249)

(declare-fun e!4480905 () Option!17249)

(assert (=> b!7515829 (= e!4480909 e!4480905)))

(declare-fun b!7515830 () Bool)

(assert (=> b!7515830 (= e!4480908 e!4480909)))

(declare-fun lt!2638145 () Option!17249)

(assert (=> b!7515830 (= lt!2638145 call!689295)))

(declare-fun c!1388558 () Bool)

(assert (=> b!7515830 (= c!1388558 (is-Some!17248 lt!2638145))))

(declare-fun b!7515831 () Bool)

(declare-fun ++!17357 (List!72636 List!72636) List!72636)

(assert (=> b!7515831 (= e!4480905 (Some!17248 (++!17357 (v!54383 lt!2638145) (v!54383 lt!2638147))))))

(declare-fun b!7515832 () Bool)

(declare-fun e!4480907 () Option!17249)

(assert (=> b!7515832 (= e!4480910 e!4480907)))

(declare-fun c!1388561 () Bool)

(assert (=> b!7515832 (= c!1388561 (is-EmptyLang!19752 (h!78959 (exprs!9004 c!7091))))))

(declare-fun b!7515833 () Bool)

(assert (=> b!7515833 (= e!4480905 None!17248)))

(declare-fun b!7515834 () Bool)

(declare-fun e!4480911 () Option!17249)

(assert (=> b!7515834 (= e!4480911 (Some!17248 (Cons!72512 (c!1388536 (h!78959 (exprs!9004 c!7091))) Nil!72512)))))

(declare-fun b!7515835 () Bool)

(declare-fun e!4480912 () Option!17249)

(assert (=> b!7515835 (= e!4480912 (Some!17248 Nil!72512))))

(declare-fun b!7515836 () Bool)

(assert (=> b!7515836 (= e!4480909 None!17248)))

(declare-fun b!7515837 () Bool)

(assert (=> b!7515837 (= c!1388556 (is-Union!19752 (h!78959 (exprs!9004 c!7091))))))

(assert (=> b!7515837 (= e!4480912 e!4480908)))

(declare-fun b!7515838 () Bool)

(declare-fun c!1388554 () Bool)

(assert (=> b!7515838 (= c!1388554 (is-ElementMatch!19752 (h!78959 (exprs!9004 c!7091))))))

(assert (=> b!7515838 (= e!4480907 e!4480911)))

(declare-fun b!7515839 () Bool)

(assert (=> b!7515839 (= e!4480907 None!17248)))

(declare-fun b!7515840 () Bool)

(assert (=> b!7515840 (= e!4480910 (Some!17248 Nil!72512))))

(declare-fun b!7515841 () Bool)

(assert (=> b!7515841 (= e!4480911 e!4480912)))

(declare-fun c!1388559 () Bool)

(assert (=> b!7515841 (= c!1388559 (is-Star!19752 (h!78959 (exprs!9004 c!7091))))))

(assert (= (and d!2307848 c!1388560) b!7515840))

(assert (= (and d!2307848 (not c!1388560)) b!7515832))

(assert (= (and b!7515832 c!1388561) b!7515839))

(assert (= (and b!7515832 (not c!1388561)) b!7515838))

(assert (= (and b!7515838 c!1388554) b!7515834))

(assert (= (and b!7515838 (not c!1388554)) b!7515841))

(assert (= (and b!7515841 c!1388559) b!7515835))

(assert (= (and b!7515841 (not c!1388559)) b!7515837))

(assert (= (and b!7515837 c!1388556) b!7515827))

(assert (= (and b!7515837 (not c!1388556)) b!7515830))

(assert (= (and b!7515827 c!1388555) b!7515826))

(assert (= (and b!7515827 (not c!1388555)) b!7515828))

(assert (= (and b!7515830 c!1388558) b!7515829))

(assert (= (and b!7515830 (not c!1388558)) b!7515836))

(assert (= (and b!7515829 c!1388557) b!7515831))

(assert (= (and b!7515829 (not c!1388557)) b!7515833))

(assert (= (or b!7515828 b!7515830) bm!689291))

(assert (= (or b!7515827 b!7515829) bm!689290))

(declare-fun m!8097732 () Bool)

(assert (=> bm!689290 m!8097732))

(declare-fun m!8097734 () Bool)

(assert (=> bm!689291 m!8097734))

(declare-fun m!8097736 () Bool)

(assert (=> b!7515831 m!8097736))

(assert (=> b!7515778 d!2307848))

(declare-fun bs!1939343 () Bool)

(declare-fun d!2307852 () Bool)

(assert (= bs!1939343 (and d!2307852 b!7515780)))

(declare-fun lambda!466230 () Int)

(assert (=> bs!1939343 (not (= lambda!466230 lambda!466224))))

(declare-fun forall!18379 (List!72635 Int) Bool)

(assert (=> d!2307852 (= (inv!92644 c!7091) (forall!18379 (exprs!9004 c!7091) lambda!466230))))

(declare-fun bs!1939344 () Bool)

(assert (= bs!1939344 d!2307852))

(declare-fun m!8097738 () Bool)

(assert (=> bs!1939344 m!8097738))

(assert (=> start!727736 d!2307852))

(declare-fun bs!1939345 () Bool)

(declare-fun d!2307854 () Bool)

(assert (= bs!1939345 (and d!2307854 b!7515780)))

(declare-fun lambda!466233 () Int)

(assert (=> bs!1939345 (= lambda!466233 lambda!466224)))

(declare-fun bs!1939346 () Bool)

(assert (= bs!1939346 (and d!2307854 d!2307852)))

(assert (=> bs!1939346 (not (= lambda!466233 lambda!466230))))

(declare-fun b!7515886 () Bool)

(declare-fun c!1388585 () Bool)

(declare-fun lt!2638161 () Option!17249)

(assert (=> b!7515886 (= c!1388585 (is-Some!17248 lt!2638161))))

(assert (=> b!7515886 (= lt!2638161 (getLanguageWitness!1088 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091))))))))))

(declare-fun e!4480936 () Option!17249)

(declare-fun e!4480935 () Option!17249)

(assert (=> b!7515886 (= e!4480936 e!4480935)))

(declare-fun b!7515887 () Bool)

(declare-fun e!4480937 () Option!17249)

(assert (=> b!7515887 (= e!4480937 (Some!17248 Nil!72512))))

(declare-fun lt!2638162 () Option!17249)

(declare-fun isEmpty!41332 (Option!17249) Bool)

(assert (=> d!2307854 (= (isEmpty!41332 lt!2638162) (exists!4934 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))) lambda!466233))))

(assert (=> d!2307854 (= lt!2638162 e!4480937)))

(declare-fun c!1388587 () Bool)

(assert (=> d!2307854 (= c!1388587 (is-Cons!72511 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091))))))))

(assert (=> d!2307854 (= (getLanguageWitness!1088 (Context!17009 (t!387272 (exprs!9004 c!7091)))) lt!2638162)))

(declare-fun b!7515888 () Bool)

(declare-fun lt!2638160 () Option!17249)

(assert (=> b!7515888 (= e!4480935 (Some!17248 (++!17357 (v!54383 lt!2638160) (v!54383 lt!2638161))))))

(declare-fun b!7515889 () Bool)

(assert (=> b!7515889 (= e!4480935 None!17248)))

(declare-fun b!7515890 () Bool)

(assert (=> b!7515890 (= e!4480936 None!17248)))

(declare-fun b!7515891 () Bool)

(assert (=> b!7515891 (= e!4480937 e!4480936)))

(assert (=> b!7515891 (= lt!2638160 (getLanguageWitness!1089 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(declare-fun c!1388586 () Bool)

(assert (=> b!7515891 (= c!1388586 (is-Some!17248 lt!2638160))))

(assert (= (and d!2307854 c!1388587) b!7515891))

(assert (= (and d!2307854 (not c!1388587)) b!7515887))

(assert (= (and b!7515891 c!1388586) b!7515886))

(assert (= (and b!7515891 (not c!1388586)) b!7515890))

(assert (= (and b!7515886 c!1388585) b!7515888))

(assert (= (and b!7515886 (not c!1388585)) b!7515889))

(declare-fun m!8097740 () Bool)

(assert (=> b!7515886 m!8097740))

(declare-fun m!8097742 () Bool)

(assert (=> d!2307854 m!8097742))

(declare-fun m!8097744 () Bool)

(assert (=> d!2307854 m!8097744))

(declare-fun m!8097746 () Bool)

(assert (=> b!7515888 m!8097746))

(declare-fun m!8097748 () Bool)

(assert (=> b!7515891 m!8097748))

(assert (=> b!7515779 d!2307854))

(declare-fun bs!1939347 () Bool)

(declare-fun d!2307856 () Bool)

(assert (= bs!1939347 (and d!2307856 b!7515780)))

(declare-fun lambda!466236 () Int)

(assert (=> bs!1939347 (not (= lambda!466236 lambda!466224))))

(declare-fun bs!1939348 () Bool)

(assert (= bs!1939348 (and d!2307856 d!2307852)))

(assert (=> bs!1939348 (not (= lambda!466236 lambda!466230))))

(declare-fun bs!1939349 () Bool)

(assert (= bs!1939349 (and d!2307856 d!2307854)))

(assert (=> bs!1939349 (not (= lambda!466236 lambda!466233))))

(assert (=> d!2307856 true))

(declare-fun order!29725 () Int)

(declare-fun dynLambda!29844 (Int Int) Int)

(assert (=> d!2307856 (< (dynLambda!29844 order!29725 lambda!466224) (dynLambda!29844 order!29725 lambda!466236))))

(assert (=> d!2307856 (= (exists!4934 (exprs!9004 c!7091) lambda!466224) (not (forall!18379 (exprs!9004 c!7091) lambda!466236)))))

(declare-fun bs!1939350 () Bool)

(assert (= bs!1939350 d!2307856))

(declare-fun m!8097750 () Bool)

(assert (=> bs!1939350 m!8097750))

(assert (=> b!7515780 d!2307856))

(declare-fun b!7515898 () Bool)

(declare-fun e!4480940 () Bool)

(declare-fun tp!2182043 () Bool)

(declare-fun tp!2182044 () Bool)

(assert (=> b!7515898 (= e!4480940 (and tp!2182043 tp!2182044))))

(assert (=> b!7515781 (= tp!2182035 e!4480940)))

(assert (= (and b!7515781 (is-Cons!72511 (exprs!9004 c!7091))) b!7515898))

(push 1)

(assert (not b!7515898))

(assert (not d!2307856))

(assert (not b!7515891))

(assert (not b!7515888))

(assert (not b!7515886))

(assert (not bm!689290))

(assert (not b!7515831))

(assert (not d!2307852))

(assert (not d!2307854))

(assert (not bm!689291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2307864 () Bool)

(assert (=> d!2307864 (= (isEmpty!41332 lt!2638162) (not (is-Some!17248 lt!2638162)))))

(assert (=> d!2307854 d!2307864))

(declare-fun bs!1939359 () Bool)

(declare-fun d!2307866 () Bool)

(assert (= bs!1939359 (and d!2307866 b!7515780)))

(declare-fun lambda!466246 () Int)

(assert (=> bs!1939359 (not (= lambda!466246 lambda!466224))))

(declare-fun bs!1939360 () Bool)

(assert (= bs!1939360 (and d!2307866 d!2307852)))

(assert (=> bs!1939360 (not (= lambda!466246 lambda!466230))))

(declare-fun bs!1939361 () Bool)

(assert (= bs!1939361 (and d!2307866 d!2307854)))

(assert (=> bs!1939361 (not (= lambda!466246 lambda!466233))))

(declare-fun bs!1939362 () Bool)

(assert (= bs!1939362 (and d!2307866 d!2307856)))

(assert (=> bs!1939362 (= (= lambda!466233 lambda!466224) (= lambda!466246 lambda!466236))))

(assert (=> d!2307866 true))

(assert (=> d!2307866 (< (dynLambda!29844 order!29725 lambda!466233) (dynLambda!29844 order!29725 lambda!466246))))

(assert (=> d!2307866 (= (exists!4934 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))) lambda!466233) (not (forall!18379 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))) lambda!466246)))))

(declare-fun bs!1939363 () Bool)

(assert (= bs!1939363 d!2307866))

(declare-fun m!8097772 () Bool)

(assert (=> bs!1939363 m!8097772))

(assert (=> d!2307854 d!2307866))

(declare-fun bs!1939364 () Bool)

(declare-fun d!2307868 () Bool)

(assert (= bs!1939364 (and d!2307868 d!2307854)))

(declare-fun lambda!466247 () Int)

(assert (=> bs!1939364 (= lambda!466247 lambda!466233)))

(declare-fun bs!1939365 () Bool)

(assert (= bs!1939365 (and d!2307868 b!7515780)))

(assert (=> bs!1939365 (= lambda!466247 lambda!466224)))

(declare-fun bs!1939366 () Bool)

(assert (= bs!1939366 (and d!2307868 d!2307866)))

(assert (=> bs!1939366 (not (= lambda!466247 lambda!466246))))

(declare-fun bs!1939367 () Bool)

(assert (= bs!1939367 (and d!2307868 d!2307852)))

(assert (=> bs!1939367 (not (= lambda!466247 lambda!466230))))

(declare-fun bs!1939368 () Bool)

(assert (= bs!1939368 (and d!2307868 d!2307856)))

(assert (=> bs!1939368 (not (= lambda!466247 lambda!466236))))

(declare-fun b!7515940 () Bool)

(declare-fun c!1388606 () Bool)

(declare-fun lt!2638176 () Option!17249)

(assert (=> b!7515940 (= c!1388606 (is-Some!17248 lt!2638176))))

(assert (=> b!7515940 (= lt!2638176 (getLanguageWitness!1088 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))))))

(declare-fun e!4480962 () Option!17249)

(declare-fun e!4480961 () Option!17249)

(assert (=> b!7515940 (= e!4480962 e!4480961)))

(declare-fun b!7515941 () Bool)

(declare-fun e!4480963 () Option!17249)

(assert (=> b!7515941 (= e!4480963 (Some!17248 Nil!72512))))

(declare-fun lt!2638177 () Option!17249)

(assert (=> d!2307868 (= (isEmpty!41332 lt!2638177) (exists!4934 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091))))))) lambda!466247))))

(assert (=> d!2307868 (= lt!2638177 e!4480963)))

(declare-fun c!1388608 () Bool)

(assert (=> d!2307868 (= c!1388608 (is-Cons!72511 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))))

(assert (=> d!2307868 (= (getLanguageWitness!1088 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091))))))) lt!2638177)))

(declare-fun b!7515942 () Bool)

(declare-fun lt!2638175 () Option!17249)

(assert (=> b!7515942 (= e!4480961 (Some!17248 (++!17357 (v!54383 lt!2638175) (v!54383 lt!2638176))))))

(declare-fun b!7515943 () Bool)

(assert (=> b!7515943 (= e!4480961 None!17248)))

(declare-fun b!7515944 () Bool)

(assert (=> b!7515944 (= e!4480962 None!17248)))

(declare-fun b!7515945 () Bool)

(assert (=> b!7515945 (= e!4480963 e!4480962)))

(assert (=> b!7515945 (= lt!2638175 (getLanguageWitness!1089 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091))))))))))))

(declare-fun c!1388607 () Bool)

(assert (=> b!7515945 (= c!1388607 (is-Some!17248 lt!2638175))))

(assert (= (and d!2307868 c!1388608) b!7515945))

(assert (= (and d!2307868 (not c!1388608)) b!7515941))

(assert (= (and b!7515945 c!1388607) b!7515940))

(assert (= (and b!7515945 (not c!1388607)) b!7515944))

(assert (= (and b!7515940 c!1388606) b!7515942))

(assert (= (and b!7515940 (not c!1388606)) b!7515943))

(declare-fun m!8097774 () Bool)

(assert (=> b!7515940 m!8097774))

(declare-fun m!8097776 () Bool)

(assert (=> d!2307868 m!8097776))

(declare-fun m!8097778 () Bool)

(assert (=> d!2307868 m!8097778))

(declare-fun m!8097780 () Bool)

(assert (=> b!7515942 m!8097780))

(declare-fun m!8097782 () Bool)

(assert (=> b!7515945 m!8097782))

(assert (=> b!7515886 d!2307868))

(declare-fun b!7515954 () Bool)

(declare-fun e!4480969 () List!72636)

(assert (=> b!7515954 (= e!4480969 (v!54383 lt!2638147))))

(declare-fun d!2307870 () Bool)

(declare-fun e!4480968 () Bool)

(assert (=> d!2307870 e!4480968))

(declare-fun res!3013676 () Bool)

(assert (=> d!2307870 (=> (not res!3013676) (not e!4480968))))

(declare-fun lt!2638180 () List!72636)

(declare-fun content!15341 (List!72636) (Set C!39830))

(assert (=> d!2307870 (= res!3013676 (= (content!15341 lt!2638180) (set.union (content!15341 (v!54383 lt!2638145)) (content!15341 (v!54383 lt!2638147)))))))

(assert (=> d!2307870 (= lt!2638180 e!4480969)))

(declare-fun c!1388611 () Bool)

(assert (=> d!2307870 (= c!1388611 (is-Nil!72512 (v!54383 lt!2638145)))))

(assert (=> d!2307870 (= (++!17357 (v!54383 lt!2638145) (v!54383 lt!2638147)) lt!2638180)))

(declare-fun b!7515955 () Bool)

(assert (=> b!7515955 (= e!4480969 (Cons!72512 (h!78960 (v!54383 lt!2638145)) (++!17357 (t!387273 (v!54383 lt!2638145)) (v!54383 lt!2638147))))))

(declare-fun b!7515957 () Bool)

(assert (=> b!7515957 (= e!4480968 (or (not (= (v!54383 lt!2638147) Nil!72512)) (= lt!2638180 (v!54383 lt!2638145))))))

(declare-fun b!7515956 () Bool)

(declare-fun res!3013677 () Bool)

(assert (=> b!7515956 (=> (not res!3013677) (not e!4480968))))

(declare-fun size!42298 (List!72636) Int)

(assert (=> b!7515956 (= res!3013677 (= (size!42298 lt!2638180) (+ (size!42298 (v!54383 lt!2638145)) (size!42298 (v!54383 lt!2638147)))))))

(assert (= (and d!2307870 c!1388611) b!7515954))

(assert (= (and d!2307870 (not c!1388611)) b!7515955))

(assert (= (and d!2307870 res!3013676) b!7515956))

(assert (= (and b!7515956 res!3013677) b!7515957))

(declare-fun m!8097784 () Bool)

(assert (=> d!2307870 m!8097784))

(declare-fun m!8097786 () Bool)

(assert (=> d!2307870 m!8097786))

(declare-fun m!8097788 () Bool)

(assert (=> d!2307870 m!8097788))

(declare-fun m!8097790 () Bool)

(assert (=> b!7515955 m!8097790))

(declare-fun m!8097792 () Bool)

(assert (=> b!7515956 m!8097792))

(declare-fun m!8097794 () Bool)

(assert (=> b!7515956 m!8097794))

(declare-fun m!8097796 () Bool)

(assert (=> b!7515956 m!8097796))

(assert (=> b!7515831 d!2307870))

(declare-fun d!2307872 () Bool)

(declare-fun res!3013682 () Bool)

(declare-fun e!4480974 () Bool)

(assert (=> d!2307872 (=> res!3013682 e!4480974)))

(assert (=> d!2307872 (= res!3013682 (is-Nil!72511 (exprs!9004 c!7091)))))

(assert (=> d!2307872 (= (forall!18379 (exprs!9004 c!7091) lambda!466236) e!4480974)))

(declare-fun b!7515962 () Bool)

(declare-fun e!4480975 () Bool)

(assert (=> b!7515962 (= e!4480974 e!4480975)))

(declare-fun res!3013683 () Bool)

(assert (=> b!7515962 (=> (not res!3013683) (not e!4480975))))

(declare-fun dynLambda!29846 (Int Regex!19752) Bool)

(assert (=> b!7515962 (= res!3013683 (dynLambda!29846 lambda!466236 (h!78959 (exprs!9004 c!7091))))))

(declare-fun b!7515963 () Bool)

(assert (=> b!7515963 (= e!4480975 (forall!18379 (t!387272 (exprs!9004 c!7091)) lambda!466236))))

(assert (= (and d!2307872 (not res!3013682)) b!7515962))

(assert (= (and b!7515962 res!3013683) b!7515963))

(declare-fun b_lambda!288317 () Bool)

(assert (=> (not b_lambda!288317) (not b!7515962)))

(declare-fun m!8097798 () Bool)

(assert (=> b!7515962 m!8097798))

(declare-fun m!8097800 () Bool)

(assert (=> b!7515963 m!8097800))

(assert (=> d!2307856 d!2307872))

(declare-fun bm!689298 () Bool)

(declare-fun call!689304 () Option!17249)

(declare-fun c!1388614 () Bool)

(assert (=> bm!689298 (= call!689304 (getLanguageWitness!1089 (ite c!1388614 (regOne!40017 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))) (regTwo!40016 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))))

(declare-fun d!2307874 () Bool)

(declare-fun c!1388618 () Bool)

(assert (=> d!2307874 (= c!1388618 (is-EmptyExpr!19752 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(declare-fun e!4480981 () Option!17249)

(assert (=> d!2307874 (= (getLanguageWitness!1089 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))) e!4480981)))

(declare-fun bm!689299 () Bool)

(declare-fun call!689303 () Option!17249)

(assert (=> bm!689299 (= call!689303 (getLanguageWitness!1089 (ite c!1388614 (regTwo!40017 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))) (regOne!40016 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))))

(declare-fun b!7515964 () Bool)

(declare-fun e!4480977 () Option!17249)

(declare-fun lt!2638182 () Option!17249)

(assert (=> b!7515964 (= e!4480977 lt!2638182)))

(declare-fun b!7515965 () Bool)

(declare-fun e!4480979 () Option!17249)

(assert (=> b!7515965 (= e!4480979 e!4480977)))

(assert (=> b!7515965 (= lt!2638182 call!689304)))

(declare-fun c!1388613 () Bool)

(assert (=> b!7515965 (= c!1388613 (is-Some!17248 lt!2638182))))

(declare-fun b!7515966 () Bool)

(assert (=> b!7515966 (= e!4480977 call!689303)))

(declare-fun b!7515967 () Bool)

(declare-fun c!1388615 () Bool)

(declare-fun lt!2638183 () Option!17249)

(assert (=> b!7515967 (= c!1388615 (is-Some!17248 lt!2638183))))

(assert (=> b!7515967 (= lt!2638183 call!689304)))

(declare-fun e!4480980 () Option!17249)

(declare-fun e!4480976 () Option!17249)

(assert (=> b!7515967 (= e!4480980 e!4480976)))

(declare-fun b!7515968 () Bool)

(assert (=> b!7515968 (= e!4480979 e!4480980)))

(declare-fun lt!2638181 () Option!17249)

(assert (=> b!7515968 (= lt!2638181 call!689303)))

(declare-fun c!1388616 () Bool)

(assert (=> b!7515968 (= c!1388616 (is-Some!17248 lt!2638181))))

(declare-fun b!7515969 () Bool)

(assert (=> b!7515969 (= e!4480976 (Some!17248 (++!17357 (v!54383 lt!2638181) (v!54383 lt!2638183))))))

(declare-fun b!7515970 () Bool)

(declare-fun e!4480978 () Option!17249)

(assert (=> b!7515970 (= e!4480981 e!4480978)))

(declare-fun c!1388619 () Bool)

(assert (=> b!7515970 (= c!1388619 (is-EmptyLang!19752 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(declare-fun b!7515971 () Bool)

(assert (=> b!7515971 (= e!4480976 None!17248)))

(declare-fun b!7515972 () Bool)

(declare-fun e!4480982 () Option!17249)

(assert (=> b!7515972 (= e!4480982 (Some!17248 (Cons!72512 (c!1388536 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))) Nil!72512)))))

(declare-fun b!7515973 () Bool)

(declare-fun e!4480983 () Option!17249)

(assert (=> b!7515973 (= e!4480983 (Some!17248 Nil!72512))))

(declare-fun b!7515974 () Bool)

(assert (=> b!7515974 (= e!4480980 None!17248)))

(declare-fun b!7515975 () Bool)

(assert (=> b!7515975 (= c!1388614 (is-Union!19752 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(assert (=> b!7515975 (= e!4480983 e!4480979)))

(declare-fun b!7515976 () Bool)

(declare-fun c!1388612 () Bool)

(assert (=> b!7515976 (= c!1388612 (is-ElementMatch!19752 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(assert (=> b!7515976 (= e!4480978 e!4480982)))

(declare-fun b!7515977 () Bool)

(assert (=> b!7515977 (= e!4480978 None!17248)))

(declare-fun b!7515978 () Bool)

(assert (=> b!7515978 (= e!4480981 (Some!17248 Nil!72512))))

(declare-fun b!7515979 () Bool)

(assert (=> b!7515979 (= e!4480982 e!4480983)))

(declare-fun c!1388617 () Bool)

(assert (=> b!7515979 (= c!1388617 (is-Star!19752 (h!78959 (exprs!9004 (Context!17009 (t!387272 (exprs!9004 c!7091)))))))))

(assert (= (and d!2307874 c!1388618) b!7515978))

(assert (= (and d!2307874 (not c!1388618)) b!7515970))

(assert (= (and b!7515970 c!1388619) b!7515977))

(assert (= (and b!7515970 (not c!1388619)) b!7515976))

(assert (= (and b!7515976 c!1388612) b!7515972))

(assert (= (and b!7515976 (not c!1388612)) b!7515979))

(assert (= (and b!7515979 c!1388617) b!7515973))

(assert (= (and b!7515979 (not c!1388617)) b!7515975))

(assert (= (and b!7515975 c!1388614) b!7515965))

(assert (= (and b!7515975 (not c!1388614)) b!7515968))

(assert (= (and b!7515965 c!1388613) b!7515964))

(assert (= (and b!7515965 (not c!1388613)) b!7515966))

(assert (= (and b!7515968 c!1388616) b!7515967))

(assert (= (and b!7515968 (not c!1388616)) b!7515974))

(assert (= (and b!7515967 c!1388615) b!7515969))

(assert (= (and b!7515967 (not c!1388615)) b!7515971))

(assert (= (or b!7515966 b!7515968) bm!689299))

(assert (= (or b!7515965 b!7515967) bm!689298))

(declare-fun m!8097802 () Bool)

(assert (=> bm!689298 m!8097802))

(declare-fun m!8097804 () Bool)

(assert (=> bm!689299 m!8097804))

(declare-fun m!8097806 () Bool)

(assert (=> b!7515969 m!8097806))

(assert (=> b!7515891 d!2307874))

(declare-fun c!1388622 () Bool)

(declare-fun bm!689300 () Bool)

(declare-fun call!689306 () Option!17249)

(assert (=> bm!689300 (= call!689306 (getLanguageWitness!1089 (ite c!1388622 (regOne!40017 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))) (regTwo!40016 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))))

(declare-fun d!2307876 () Bool)

(declare-fun c!1388626 () Bool)

(assert (=> d!2307876 (= c!1388626 (is-EmptyExpr!19752 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))

(declare-fun e!4480989 () Option!17249)

(assert (=> d!2307876 (= (getLanguageWitness!1089 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))) e!4480989)))

(declare-fun call!689305 () Option!17249)

(declare-fun bm!689301 () Bool)

(assert (=> bm!689301 (= call!689305 (getLanguageWitness!1089 (ite c!1388622 (regTwo!40017 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))) (regOne!40016 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))))

(declare-fun b!7515980 () Bool)

(declare-fun e!4480985 () Option!17249)

(declare-fun lt!2638185 () Option!17249)

(assert (=> b!7515980 (= e!4480985 lt!2638185)))

(declare-fun b!7515981 () Bool)

(declare-fun e!4480987 () Option!17249)

(assert (=> b!7515981 (= e!4480987 e!4480985)))

(assert (=> b!7515981 (= lt!2638185 call!689306)))

(declare-fun c!1388621 () Bool)

(assert (=> b!7515981 (= c!1388621 (is-Some!17248 lt!2638185))))

(declare-fun b!7515982 () Bool)

(assert (=> b!7515982 (= e!4480985 call!689305)))

(declare-fun b!7515983 () Bool)

(declare-fun c!1388623 () Bool)

(declare-fun lt!2638186 () Option!17249)

(assert (=> b!7515983 (= c!1388623 (is-Some!17248 lt!2638186))))

(assert (=> b!7515983 (= lt!2638186 call!689306)))

(declare-fun e!4480988 () Option!17249)

(declare-fun e!4480984 () Option!17249)

(assert (=> b!7515983 (= e!4480988 e!4480984)))

(declare-fun b!7515984 () Bool)

(assert (=> b!7515984 (= e!4480987 e!4480988)))

(declare-fun lt!2638184 () Option!17249)

(assert (=> b!7515984 (= lt!2638184 call!689305)))

(declare-fun c!1388624 () Bool)

(assert (=> b!7515984 (= c!1388624 (is-Some!17248 lt!2638184))))

(declare-fun b!7515985 () Bool)

(assert (=> b!7515985 (= e!4480984 (Some!17248 (++!17357 (v!54383 lt!2638184) (v!54383 lt!2638186))))))

(declare-fun b!7515986 () Bool)

(declare-fun e!4480986 () Option!17249)

(assert (=> b!7515986 (= e!4480989 e!4480986)))

(declare-fun c!1388627 () Bool)

(assert (=> b!7515986 (= c!1388627 (is-EmptyLang!19752 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))

(declare-fun b!7515987 () Bool)

(assert (=> b!7515987 (= e!4480984 None!17248)))

(declare-fun b!7515988 () Bool)

(declare-fun e!4480990 () Option!17249)

(assert (=> b!7515988 (= e!4480990 (Some!17248 (Cons!72512 (c!1388536 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))) Nil!72512)))))

(declare-fun b!7515989 () Bool)

(declare-fun e!4480991 () Option!17249)

(assert (=> b!7515989 (= e!4480991 (Some!17248 Nil!72512))))

(declare-fun b!7515990 () Bool)

(assert (=> b!7515990 (= e!4480988 None!17248)))

(declare-fun b!7515991 () Bool)

(assert (=> b!7515991 (= c!1388622 (is-Union!19752 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))

(assert (=> b!7515991 (= e!4480991 e!4480987)))

(declare-fun b!7515992 () Bool)

(declare-fun c!1388620 () Bool)

(assert (=> b!7515992 (= c!1388620 (is-ElementMatch!19752 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))

(assert (=> b!7515992 (= e!4480986 e!4480990)))

(declare-fun b!7515993 () Bool)

(assert (=> b!7515993 (= e!4480986 None!17248)))

(declare-fun b!7515994 () Bool)

(assert (=> b!7515994 (= e!4480989 (Some!17248 Nil!72512))))

(declare-fun b!7515995 () Bool)

(assert (=> b!7515995 (= e!4480990 e!4480991)))

(declare-fun c!1388625 () Bool)

(assert (=> b!7515995 (= c!1388625 (is-Star!19752 (ite c!1388556 (regTwo!40017 (h!78959 (exprs!9004 c!7091))) (regOne!40016 (h!78959 (exprs!9004 c!7091))))))))

(assert (= (and d!2307876 c!1388626) b!7515994))

(assert (= (and d!2307876 (not c!1388626)) b!7515986))

(assert (= (and b!7515986 c!1388627) b!7515993))

(assert (= (and b!7515986 (not c!1388627)) b!7515992))

(assert (= (and b!7515992 c!1388620) b!7515988))

(assert (= (and b!7515992 (not c!1388620)) b!7515995))

(assert (= (and b!7515995 c!1388625) b!7515989))

(assert (= (and b!7515995 (not c!1388625)) b!7515991))

(assert (= (and b!7515991 c!1388622) b!7515981))

(assert (= (and b!7515991 (not c!1388622)) b!7515984))

(assert (= (and b!7515981 c!1388621) b!7515980))

(assert (= (and b!7515981 (not c!1388621)) b!7515982))

(assert (= (and b!7515984 c!1388624) b!7515983))

(assert (= (and b!7515984 (not c!1388624)) b!7515990))

(assert (= (and b!7515983 c!1388623) b!7515985))

(assert (= (and b!7515983 (not c!1388623)) b!7515987))

(assert (= (or b!7515982 b!7515984) bm!689301))

(assert (= (or b!7515981 b!7515983) bm!689300))

(declare-fun m!8097808 () Bool)

(assert (=> bm!689300 m!8097808))

(declare-fun m!8097810 () Bool)

(assert (=> bm!689301 m!8097810))

(declare-fun m!8097812 () Bool)

(assert (=> b!7515985 m!8097812))

(assert (=> bm!689291 d!2307876))

(declare-fun bm!689302 () Bool)

(declare-fun c!1388630 () Bool)

(declare-fun call!689308 () Option!17249)

(assert (=> bm!689302 (= call!689308 (getLanguageWitness!1089 (ite c!1388630 (regOne!40017 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))) (regTwo!40016 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))))

(declare-fun d!2307878 () Bool)

(declare-fun c!1388634 () Bool)

(assert (=> d!2307878 (= c!1388634 (is-EmptyExpr!19752 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))

(declare-fun e!4480997 () Option!17249)

(assert (=> d!2307878 (= (getLanguageWitness!1089 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))) e!4480997)))

(declare-fun call!689307 () Option!17249)

(declare-fun bm!689303 () Bool)

(assert (=> bm!689303 (= call!689307 (getLanguageWitness!1089 (ite c!1388630 (regTwo!40017 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))) (regOne!40016 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))))

(declare-fun b!7515996 () Bool)

(declare-fun e!4480993 () Option!17249)

(declare-fun lt!2638188 () Option!17249)

(assert (=> b!7515996 (= e!4480993 lt!2638188)))

(declare-fun b!7515997 () Bool)

(declare-fun e!4480995 () Option!17249)

(assert (=> b!7515997 (= e!4480995 e!4480993)))

(assert (=> b!7515997 (= lt!2638188 call!689308)))

(declare-fun c!1388629 () Bool)

(assert (=> b!7515997 (= c!1388629 (is-Some!17248 lt!2638188))))

(declare-fun b!7515998 () Bool)

(assert (=> b!7515998 (= e!4480993 call!689307)))

(declare-fun b!7515999 () Bool)

(declare-fun c!1388631 () Bool)

(declare-fun lt!2638189 () Option!17249)

(assert (=> b!7515999 (= c!1388631 (is-Some!17248 lt!2638189))))

(assert (=> b!7515999 (= lt!2638189 call!689308)))

(declare-fun e!4480996 () Option!17249)

(declare-fun e!4480992 () Option!17249)

(assert (=> b!7515999 (= e!4480996 e!4480992)))

(declare-fun b!7516000 () Bool)

(assert (=> b!7516000 (= e!4480995 e!4480996)))

(declare-fun lt!2638187 () Option!17249)

(assert (=> b!7516000 (= lt!2638187 call!689307)))

(declare-fun c!1388632 () Bool)

(assert (=> b!7516000 (= c!1388632 (is-Some!17248 lt!2638187))))

(declare-fun b!7516001 () Bool)

(assert (=> b!7516001 (= e!4480992 (Some!17248 (++!17357 (v!54383 lt!2638187) (v!54383 lt!2638189))))))

(declare-fun b!7516002 () Bool)

(declare-fun e!4480994 () Option!17249)

(assert (=> b!7516002 (= e!4480997 e!4480994)))

(declare-fun c!1388635 () Bool)

(assert (=> b!7516002 (= c!1388635 (is-EmptyLang!19752 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))

(declare-fun b!7516003 () Bool)

(assert (=> b!7516003 (= e!4480992 None!17248)))

(declare-fun b!7516004 () Bool)

(declare-fun e!4480998 () Option!17249)

(assert (=> b!7516004 (= e!4480998 (Some!17248 (Cons!72512 (c!1388536 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))) Nil!72512)))))

(declare-fun b!7516005 () Bool)

(declare-fun e!4480999 () Option!17249)

(assert (=> b!7516005 (= e!4480999 (Some!17248 Nil!72512))))

(declare-fun b!7516006 () Bool)

(assert (=> b!7516006 (= e!4480996 None!17248)))

(declare-fun b!7516007 () Bool)

(assert (=> b!7516007 (= c!1388630 (is-Union!19752 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))

(assert (=> b!7516007 (= e!4480999 e!4480995)))

(declare-fun b!7516008 () Bool)

(declare-fun c!1388628 () Bool)

(assert (=> b!7516008 (= c!1388628 (is-ElementMatch!19752 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))

(assert (=> b!7516008 (= e!4480994 e!4480998)))

(declare-fun b!7516009 () Bool)

(assert (=> b!7516009 (= e!4480994 None!17248)))

(declare-fun b!7516010 () Bool)

(assert (=> b!7516010 (= e!4480997 (Some!17248 Nil!72512))))

(declare-fun b!7516011 () Bool)

(assert (=> b!7516011 (= e!4480998 e!4480999)))

(declare-fun c!1388633 () Bool)

(assert (=> b!7516011 (= c!1388633 (is-Star!19752 (ite c!1388556 (regOne!40017 (h!78959 (exprs!9004 c!7091))) (regTwo!40016 (h!78959 (exprs!9004 c!7091))))))))

(assert (= (and d!2307878 c!1388634) b!7516010))

(assert (= (and d!2307878 (not c!1388634)) b!7516002))

(assert (= (and b!7516002 c!1388635) b!7516009))

(assert (= (and b!7516002 (not c!1388635)) b!7516008))

(assert (= (and b!7516008 c!1388628) b!7516004))

(assert (= (and b!7516008 (not c!1388628)) b!7516011))

(assert (= (and b!7516011 c!1388633) b!7516005))

(assert (= (and b!7516011 (not c!1388633)) b!7516007))

(assert (= (and b!7516007 c!1388630) b!7515997))

(assert (= (and b!7516007 (not c!1388630)) b!7516000))

(assert (= (and b!7515997 c!1388629) b!7515996))

(assert (= (and b!7515997 (not c!1388629)) b!7515998))

(assert (= (and b!7516000 c!1388632) b!7515999))

(assert (= (and b!7516000 (not c!1388632)) b!7516006))

(assert (= (and b!7515999 c!1388631) b!7516001))

(assert (= (and b!7515999 (not c!1388631)) b!7516003))

(assert (= (or b!7515998 b!7516000) bm!689303))

(assert (= (or b!7515997 b!7515999) bm!689302))

(declare-fun m!8097814 () Bool)

(assert (=> bm!689302 m!8097814))

(declare-fun m!8097816 () Bool)

(assert (=> bm!689303 m!8097816))

(declare-fun m!8097818 () Bool)

(assert (=> b!7516001 m!8097818))

(assert (=> bm!689290 d!2307878))

(declare-fun d!2307880 () Bool)

(declare-fun res!3013684 () Bool)

(declare-fun e!4481000 () Bool)

(assert (=> d!2307880 (=> res!3013684 e!4481000)))

(assert (=> d!2307880 (= res!3013684 (is-Nil!72511 (exprs!9004 c!7091)))))

(assert (=> d!2307880 (= (forall!18379 (exprs!9004 c!7091) lambda!466230) e!4481000)))

(declare-fun b!7516012 () Bool)

(declare-fun e!4481001 () Bool)

(assert (=> b!7516012 (= e!4481000 e!4481001)))

(declare-fun res!3013685 () Bool)

(assert (=> b!7516012 (=> (not res!3013685) (not e!4481001))))

(assert (=> b!7516012 (= res!3013685 (dynLambda!29846 lambda!466230 (h!78959 (exprs!9004 c!7091))))))

(declare-fun b!7516013 () Bool)

(assert (=> b!7516013 (= e!4481001 (forall!18379 (t!387272 (exprs!9004 c!7091)) lambda!466230))))

(assert (= (and d!2307880 (not res!3013684)) b!7516012))

(assert (= (and b!7516012 res!3013685) b!7516013))

(declare-fun b_lambda!288319 () Bool)

(assert (=> (not b_lambda!288319) (not b!7516012)))

(declare-fun m!8097820 () Bool)

(assert (=> b!7516012 m!8097820))

(declare-fun m!8097822 () Bool)

(assert (=> b!7516013 m!8097822))

(assert (=> d!2307852 d!2307880))

(declare-fun b!7516014 () Bool)

(declare-fun e!4481003 () List!72636)

(assert (=> b!7516014 (= e!4481003 (v!54383 lt!2638161))))

(declare-fun d!2307882 () Bool)

(declare-fun e!4481002 () Bool)

(assert (=> d!2307882 e!4481002))

(declare-fun res!3013686 () Bool)

(assert (=> d!2307882 (=> (not res!3013686) (not e!4481002))))

(declare-fun lt!2638190 () List!72636)

(assert (=> d!2307882 (= res!3013686 (= (content!15341 lt!2638190) (set.union (content!15341 (v!54383 lt!2638160)) (content!15341 (v!54383 lt!2638161)))))))

(assert (=> d!2307882 (= lt!2638190 e!4481003)))

(declare-fun c!1388636 () Bool)

(assert (=> d!2307882 (= c!1388636 (is-Nil!72512 (v!54383 lt!2638160)))))

(assert (=> d!2307882 (= (++!17357 (v!54383 lt!2638160) (v!54383 lt!2638161)) lt!2638190)))

(declare-fun b!7516015 () Bool)

(assert (=> b!7516015 (= e!4481003 (Cons!72512 (h!78960 (v!54383 lt!2638160)) (++!17357 (t!387273 (v!54383 lt!2638160)) (v!54383 lt!2638161))))))

(declare-fun b!7516017 () Bool)

(assert (=> b!7516017 (= e!4481002 (or (not (= (v!54383 lt!2638161) Nil!72512)) (= lt!2638190 (v!54383 lt!2638160))))))

(declare-fun b!7516016 () Bool)

(declare-fun res!3013687 () Bool)

(assert (=> b!7516016 (=> (not res!3013687) (not e!4481002))))

(assert (=> b!7516016 (= res!3013687 (= (size!42298 lt!2638190) (+ (size!42298 (v!54383 lt!2638160)) (size!42298 (v!54383 lt!2638161)))))))

(assert (= (and d!2307882 c!1388636) b!7516014))

(assert (= (and d!2307882 (not c!1388636)) b!7516015))

(assert (= (and d!2307882 res!3013686) b!7516016))

(assert (= (and b!7516016 res!3013687) b!7516017))

(declare-fun m!8097824 () Bool)

(assert (=> d!2307882 m!8097824))

(declare-fun m!8097826 () Bool)

(assert (=> d!2307882 m!8097826))

(declare-fun m!8097828 () Bool)

(assert (=> d!2307882 m!8097828))

(declare-fun m!8097830 () Bool)

(assert (=> b!7516015 m!8097830))

(declare-fun m!8097832 () Bool)

(assert (=> b!7516016 m!8097832))

(declare-fun m!8097834 () Bool)

(assert (=> b!7516016 m!8097834))

(declare-fun m!8097836 () Bool)

(assert (=> b!7516016 m!8097836))

(assert (=> b!7515888 d!2307882))

(declare-fun b!7516030 () Bool)

(declare-fun e!4481006 () Bool)

(declare-fun tp!2182062 () Bool)

(assert (=> b!7516030 (= e!4481006 tp!2182062)))

(declare-fun b!7516031 () Bool)

(declare-fun tp!2182065 () Bool)

(declare-fun tp!2182063 () Bool)

(assert (=> b!7516031 (= e!4481006 (and tp!2182065 tp!2182063))))

(declare-fun b!7516028 () Bool)

(declare-fun tp_is_empty!49839 () Bool)

(assert (=> b!7516028 (= e!4481006 tp_is_empty!49839)))

(declare-fun b!7516029 () Bool)

(declare-fun tp!2182064 () Bool)

(declare-fun tp!2182061 () Bool)

(assert (=> b!7516029 (= e!4481006 (and tp!2182064 tp!2182061))))

(assert (=> b!7515898 (= tp!2182043 e!4481006)))

(assert (= (and b!7515898 (is-ElementMatch!19752 (h!78959 (exprs!9004 c!7091)))) b!7516028))

(assert (= (and b!7515898 (is-Concat!28597 (h!78959 (exprs!9004 c!7091)))) b!7516029))

(assert (= (and b!7515898 (is-Star!19752 (h!78959 (exprs!9004 c!7091)))) b!7516030))

(assert (= (and b!7515898 (is-Union!19752 (h!78959 (exprs!9004 c!7091)))) b!7516031))

(declare-fun b!7516032 () Bool)

(declare-fun e!4481007 () Bool)

(declare-fun tp!2182066 () Bool)

(declare-fun tp!2182067 () Bool)

(assert (=> b!7516032 (= e!4481007 (and tp!2182066 tp!2182067))))

(assert (=> b!7515898 (= tp!2182044 e!4481007)))

(assert (= (and b!7515898 (is-Cons!72511 (t!387272 (exprs!9004 c!7091)))) b!7516032))

(declare-fun b_lambda!288321 () Bool)

(assert (= b_lambda!288317 (or d!2307856 b_lambda!288321)))

(declare-fun bs!1939369 () Bool)

(declare-fun d!2307884 () Bool)

(assert (= bs!1939369 (and d!2307884 d!2307856)))

(assert (=> bs!1939369 (= (dynLambda!29846 lambda!466236 (h!78959 (exprs!9004 c!7091))) (not (dynLambda!29846 lambda!466224 (h!78959 (exprs!9004 c!7091)))))))

(declare-fun b_lambda!288325 () Bool)

(assert (=> (not b_lambda!288325) (not bs!1939369)))

(declare-fun m!8097838 () Bool)

(assert (=> bs!1939369 m!8097838))

(assert (=> b!7515962 d!2307884))

(declare-fun b_lambda!288323 () Bool)

(assert (= b_lambda!288319 (or d!2307852 b_lambda!288323)))

(declare-fun bs!1939370 () Bool)

(declare-fun d!2307886 () Bool)

(assert (= bs!1939370 (and d!2307886 d!2307852)))

(declare-fun validRegex!10191 (Regex!19752) Bool)

(assert (=> bs!1939370 (= (dynLambda!29846 lambda!466230 (h!78959 (exprs!9004 c!7091))) (validRegex!10191 (h!78959 (exprs!9004 c!7091))))))

(declare-fun m!8097840 () Bool)

(assert (=> bs!1939370 m!8097840))

(assert (=> b!7516012 d!2307886))

(push 1)

(assert (not bm!689299))

(assert (not b_lambda!288325))

(assert (not bs!1939370))

(assert (not bm!689298))

(assert (not bm!689303))

(assert (not b!7516001))

(assert (not bm!689301))

(assert (not b!7515955))

(assert (not b!7515945))

(assert (not b!7515963))

(assert (not bm!689302))

(assert (not b!7515985))

(assert (not b!7515940))

(assert (not b!7516013))

(assert (not d!2307866))

(assert (not b!7516032))

(assert (not b_lambda!288321))

(assert (not b!7515942))

(assert (not d!2307868))

(assert tp_is_empty!49839)

(assert (not bm!689300))

(assert (not b!7515956))

(assert (not b!7516015))

(assert (not b_lambda!288323))

(assert (not d!2307870))

(assert (not b!7516016))

(assert (not d!2307882))

(assert (not b!7516031))

(assert (not b!7516029))

(assert (not b!7515969))

(assert (not b!7516030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

