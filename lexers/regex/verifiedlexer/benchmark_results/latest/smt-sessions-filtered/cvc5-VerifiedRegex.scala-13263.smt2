; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721532 () Bool)

(assert start!721532)

(declare-fun b!7407934 () Bool)

(assert (=> b!7407934 true))

(declare-fun b!7407940 () Bool)

(assert (=> b!7407940 true))

(declare-fun bs!1924047 () Bool)

(declare-fun b!7407935 () Bool)

(assert (= bs!1924047 (and b!7407935 b!7407940)))

(declare-fun lambda!459576 () Int)

(declare-fun lambda!459575 () Int)

(assert (=> bs!1924047 (not (= lambda!459576 lambda!459575))))

(assert (=> b!7407935 true))

(assert (=> b!7407935 true))

(declare-fun b!7407932 () Bool)

(declare-fun e!4430611 () Bool)

(declare-fun tp_is_empty!49063 () Bool)

(declare-fun tp!2119409 () Bool)

(assert (=> b!7407932 (= e!4430611 (and tp_is_empty!49063 tp!2119409))))

(declare-fun b!7407933 () Bool)

(declare-fun res!2982399 () Bool)

(declare-fun e!4430614 () Bool)

(assert (=> b!7407933 (=> (not res!2982399) (not e!4430614))))

(declare-datatypes ((C!39074 0))(
  ( (C!39075 (val!29911 Int)) )
))
(declare-datatypes ((Regex!19400 0))(
  ( (ElementMatch!19400 (c!1374944 C!39074)) (Concat!28245 (regOne!39312 Regex!19400) (regTwo!39312 Regex!19400)) (EmptyExpr!19400) (Star!19400 (reg!19729 Regex!19400)) (EmptyLang!19400) (Union!19400 (regOne!39313 Regex!19400) (regTwo!39313 Regex!19400)) )
))
(declare-datatypes ((List!71988 0))(
  ( (Nil!71864) (Cons!71864 (h!78312 Regex!19400) (t!386547 List!71988)) )
))
(declare-datatypes ((Context!16680 0))(
  ( (Context!16681 (exprs!8840 List!71988)) )
))
(declare-fun c!10532 () Context!16680)

(declare-fun isEmpty!41040 (List!71988) Bool)

(declare-fun tail!14807 (List!71988) List!71988)

(assert (=> b!7407933 (= res!2982399 (isEmpty!41040 (tail!14807 (exprs!8840 c!10532))))))

(declare-fun e!4430617 () Bool)

(declare-fun e!4430615 () Bool)

(assert (=> b!7407934 (= e!4430617 (not e!4430615))))

(declare-fun res!2982397 () Bool)

(assert (=> b!7407934 (=> res!2982397 e!4430615)))

(declare-fun lt!2618290 () (Set Context!16680))

(declare-fun lt!2618291 () Context!16680)

(declare-fun lt!2618293 () (Set Context!16680))

(assert (=> b!7407934 (= res!2982397 (or (not (set.member lt!2618291 lt!2618293)) (= lt!2618293 lt!2618290)))))

(declare-fun lambda!459574 () Int)

(declare-fun lt!2618289 () Context!16680)

(declare-fun z!3451 () (Set Context!16680))

(declare-fun flatMapPost!207 ((Set Context!16680) Int Context!16680) Context!16680)

(assert (=> b!7407934 (= (flatMapPost!207 z!3451 lambda!459574 lt!2618291) lt!2618289)))

(declare-fun empty!3547 () Context!16680)

(assert (=> b!7407934 (= lt!2618289 empty!3547)))

(assert (=> b!7407934 true))

(declare-fun e!4430612 () Bool)

(declare-fun inv!91862 (Context!16680) Bool)

(assert (=> b!7407934 (and (inv!91862 empty!3547) e!4430612)))

(declare-fun res!2982398 () Bool)

(declare-fun e!4430616 () Bool)

(assert (=> b!7407935 (=> res!2982398 e!4430616)))

(declare-fun exists!4762 ((Set Context!16680) Int) Bool)

(assert (=> b!7407935 (= res!2982398 (not (exists!4762 z!3451 lambda!459576)))))

(declare-fun b!7407936 () Bool)

(declare-fun tp!2119405 () Bool)

(assert (=> b!7407936 (= e!4430612 tp!2119405)))

(declare-fun b!7407937 () Bool)

(declare-fun getWitness!2435 ((Set Context!16680) Int) Context!16680)

(assert (=> b!7407937 (= e!4430616 (not (set.member (getWitness!2435 z!3451 lambda!459576) z!3451)))))

(declare-fun b!7407938 () Bool)

(assert (=> b!7407938 (= e!4430615 e!4430616)))

(declare-fun res!2982402 () Bool)

(assert (=> b!7407938 (=> res!2982402 e!4430616)))

(declare-fun lt!2618288 () Context!16680)

(assert (=> b!7407938 (= res!2982402 (not (set.member lt!2618288 lt!2618293)))))

(assert (=> b!7407938 (= (flatMapPost!207 z!3451 lambda!459574 lt!2618288) lt!2618289)))

(assert (=> b!7407938 (= lt!2618288 (getWitness!2435 lt!2618293 lambda!459575))))

(declare-fun b!7407939 () Bool)

(declare-fun res!2982401 () Bool)

(assert (=> b!7407939 (=> (not res!2982401) (not e!4430614))))

(declare-fun a!2228 () C!39074)

(declare-fun head!15184 (List!71988) Regex!19400)

(assert (=> b!7407939 (= res!2982401 (= (head!15184 (exprs!8840 c!10532)) (ElementMatch!19400 a!2228)))))

(declare-fun res!2982403 () Bool)

(assert (=> start!721532 (=> (not res!2982403) (not e!4430614))))

(assert (=> start!721532 (= res!2982403 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16680)))))))

(assert (=> start!721532 e!4430614))

(declare-fun condSetEmpty!56208 () Bool)

(assert (=> start!721532 (= condSetEmpty!56208 (= z!3451 (as set.empty (Set Context!16680))))))

(declare-fun setRes!56208 () Bool)

(assert (=> start!721532 setRes!56208))

(declare-fun e!4430610 () Bool)

(assert (=> start!721532 (and (inv!91862 c!10532) e!4430610)))

(assert (=> start!721532 tp_is_empty!49063))

(assert (=> start!721532 e!4430611))

(declare-fun tp!2119408 () Bool)

(declare-fun e!4430613 () Bool)

(declare-fun setNonEmpty!56208 () Bool)

(declare-fun setElem!56208 () Context!16680)

(assert (=> setNonEmpty!56208 (= setRes!56208 (and tp!2119408 (inv!91862 setElem!56208) e!4430613))))

(declare-fun setRest!56208 () (Set Context!16680))

(assert (=> setNonEmpty!56208 (= z!3451 (set.union (set.insert setElem!56208 (as set.empty (Set Context!16680))) setRest!56208))))

(declare-fun res!2982405 () Bool)

(assert (=> b!7407940 (=> res!2982405 e!4430615)))

(assert (=> b!7407940 (= res!2982405 (not (exists!4762 lt!2618293 lambda!459575)))))

(declare-fun b!7407941 () Bool)

(assert (=> b!7407941 (= e!4430614 e!4430617)))

(declare-fun res!2982406 () Bool)

(assert (=> b!7407941 (=> (not res!2982406) (not e!4430617))))

(declare-fun lt!2618292 () C!39074)

(declare-fun derivationStepZipperUp!2804 (Context!16680 C!39074) (Set Context!16680))

(assert (=> b!7407941 (= res!2982406 (= (derivationStepZipperUp!2804 c!10532 lt!2618292) lt!2618290))))

(assert (=> b!7407941 (= lt!2618290 (set.insert lt!2618291 (as set.empty (Set Context!16680))))))

(assert (=> b!7407941 (= lt!2618291 (Context!16681 Nil!71864))))

(declare-fun derivationStepZipper!3674 ((Set Context!16680) C!39074) (Set Context!16680))

(assert (=> b!7407941 (= lt!2618293 (derivationStepZipper!3674 z!3451 lt!2618292))))

(declare-datatypes ((List!71989 0))(
  ( (Nil!71865) (Cons!71865 (h!78313 C!39074) (t!386548 List!71989)) )
))
(declare-fun s!7927 () List!71989)

(declare-fun head!15185 (List!71989) C!39074)

(assert (=> b!7407941 (= lt!2618292 (head!15185 s!7927))))

(declare-fun b!7407942 () Bool)

(declare-fun tp!2119406 () Bool)

(assert (=> b!7407942 (= e!4430610 tp!2119406)))

(declare-fun b!7407943 () Bool)

(declare-fun tp!2119407 () Bool)

(assert (=> b!7407943 (= e!4430613 tp!2119407)))

(declare-fun b!7407944 () Bool)

(declare-fun res!2982404 () Bool)

(assert (=> b!7407944 (=> (not res!2982404) (not e!4430614))))

(assert (=> b!7407944 (= res!2982404 (not (isEmpty!41040 (exprs!8840 c!10532))))))

(declare-fun b!7407945 () Bool)

(declare-fun res!2982400 () Bool)

(assert (=> b!7407945 (=> (not res!2982400) (not e!4430614))))

(assert (=> b!7407945 (= res!2982400 (and (is-Cons!71865 s!7927) (= (h!78313 s!7927) a!2228)))))

(declare-fun setIsEmpty!56208 () Bool)

(assert (=> setIsEmpty!56208 setRes!56208))

(assert (= (and start!721532 res!2982403) b!7407944))

(assert (= (and b!7407944 res!2982404) b!7407939))

(assert (= (and b!7407939 res!2982401) b!7407933))

(assert (= (and b!7407933 res!2982399) b!7407945))

(assert (= (and b!7407945 res!2982400) b!7407941))

(assert (= (and b!7407941 res!2982406) b!7407934))

(assert (= b!7407934 b!7407936))

(assert (= (and b!7407934 (not res!2982397)) b!7407940))

(assert (= (and b!7407940 (not res!2982405)) b!7407938))

(assert (= (and b!7407938 (not res!2982402)) b!7407935))

(assert (= (and b!7407935 (not res!2982398)) b!7407937))

(assert (= (and start!721532 condSetEmpty!56208) setIsEmpty!56208))

(assert (= (and start!721532 (not condSetEmpty!56208)) setNonEmpty!56208))

(assert (= setNonEmpty!56208 b!7407943))

(assert (= start!721532 b!7407942))

(assert (= (and start!721532 (is-Cons!71865 s!7927)) b!7407932))

(declare-fun m!8043140 () Bool)

(assert (=> b!7407935 m!8043140))

(declare-fun m!8043142 () Bool)

(assert (=> b!7407940 m!8043142))

(declare-fun m!8043144 () Bool)

(assert (=> start!721532 m!8043144))

(declare-fun m!8043146 () Bool)

(assert (=> start!721532 m!8043146))

(declare-fun m!8043148 () Bool)

(assert (=> b!7407933 m!8043148))

(assert (=> b!7407933 m!8043148))

(declare-fun m!8043150 () Bool)

(assert (=> b!7407933 m!8043150))

(declare-fun m!8043152 () Bool)

(assert (=> b!7407939 m!8043152))

(declare-fun m!8043154 () Bool)

(assert (=> b!7407944 m!8043154))

(declare-fun m!8043156 () Bool)

(assert (=> b!7407937 m!8043156))

(assert (=> b!7407937 m!8043156))

(declare-fun m!8043158 () Bool)

(assert (=> b!7407937 m!8043158))

(declare-fun m!8043160 () Bool)

(assert (=> b!7407938 m!8043160))

(declare-fun m!8043162 () Bool)

(assert (=> b!7407938 m!8043162))

(declare-fun m!8043164 () Bool)

(assert (=> b!7407938 m!8043164))

(declare-fun m!8043166 () Bool)

(assert (=> b!7407934 m!8043166))

(declare-fun m!8043168 () Bool)

(assert (=> b!7407934 m!8043168))

(declare-fun m!8043170 () Bool)

(assert (=> b!7407934 m!8043170))

(declare-fun m!8043172 () Bool)

(assert (=> setNonEmpty!56208 m!8043172))

(declare-fun m!8043174 () Bool)

(assert (=> b!7407941 m!8043174))

(declare-fun m!8043176 () Bool)

(assert (=> b!7407941 m!8043176))

(declare-fun m!8043178 () Bool)

(assert (=> b!7407941 m!8043178))

(declare-fun m!8043180 () Bool)

(assert (=> b!7407941 m!8043180))

(push 1)

(assert (not setNonEmpty!56208))

(assert (not b!7407944))

(assert (not b!7407933))

(assert (not start!721532))

(assert (not b!7407937))

(assert (not b!7407939))

(assert tp_is_empty!49063)

(assert (not b!7407942))

(assert (not b!7407943))

(assert (not b!7407936))

(assert (not b!7407934))

(assert (not b!7407940))

(assert (not b!7407941))

(assert (not b!7407938))

(assert (not b!7407935))

(assert (not b!7407932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2290824 () Bool)

(declare-fun lambda!459594 () Int)

(declare-fun forall!18186 (List!71988 Int) Bool)

(assert (=> d!2290824 (= (inv!91862 c!10532) (forall!18186 (exprs!8840 c!10532) lambda!459594))))

(declare-fun bs!1924049 () Bool)

(assert (= bs!1924049 d!2290824))

(declare-fun m!8043224 () Bool)

(assert (=> bs!1924049 m!8043224))

(assert (=> start!721532 d!2290824))

(declare-fun b!7408010 () Bool)

(declare-fun e!4430648 () (Set Context!16680))

(declare-fun e!4430650 () (Set Context!16680))

(assert (=> b!7408010 (= e!4430648 e!4430650)))

(declare-fun c!1374963 () Bool)

(assert (=> b!7408010 (= c!1374963 (is-Cons!71864 (exprs!8840 c!10532)))))

(declare-fun d!2290826 () Bool)

(declare-fun c!1374962 () Bool)

(declare-fun e!4430649 () Bool)

(assert (=> d!2290826 (= c!1374962 e!4430649)))

(declare-fun res!2982439 () Bool)

(assert (=> d!2290826 (=> (not res!2982439) (not e!4430649))))

(assert (=> d!2290826 (= res!2982439 (is-Cons!71864 (exprs!8840 c!10532)))))

(assert (=> d!2290826 (= (derivationStepZipperUp!2804 c!10532 lt!2618292) e!4430648)))

(declare-fun b!7408011 () Bool)

(declare-fun nullable!8446 (Regex!19400) Bool)

(assert (=> b!7408011 (= e!4430649 (nullable!8446 (h!78312 (exprs!8840 c!10532))))))

(declare-fun b!7408012 () Bool)

(declare-fun call!682049 () (Set Context!16680))

(assert (=> b!7408012 (= e!4430650 call!682049)))

(declare-fun b!7408013 () Bool)

(assert (=> b!7408013 (= e!4430650 (as set.empty (Set Context!16680)))))

(declare-fun bm!682044 () Bool)

(declare-fun derivationStepZipperDown!3198 (Regex!19400 Context!16680 C!39074) (Set Context!16680))

(assert (=> bm!682044 (= call!682049 (derivationStepZipperDown!3198 (h!78312 (exprs!8840 c!10532)) (Context!16681 (t!386547 (exprs!8840 c!10532))) lt!2618292))))

(declare-fun b!7408014 () Bool)

(assert (=> b!7408014 (= e!4430648 (set.union call!682049 (derivationStepZipperUp!2804 (Context!16681 (t!386547 (exprs!8840 c!10532))) lt!2618292)))))

(assert (= (and d!2290826 res!2982439) b!7408011))

(assert (= (and d!2290826 c!1374962) b!7408014))

(assert (= (and d!2290826 (not c!1374962)) b!7408010))

(assert (= (and b!7408010 c!1374963) b!7408012))

(assert (= (and b!7408010 (not c!1374963)) b!7408013))

(assert (= (or b!7408014 b!7408012) bm!682044))

(declare-fun m!8043226 () Bool)

(assert (=> b!7408011 m!8043226))

(declare-fun m!8043228 () Bool)

(assert (=> bm!682044 m!8043228))

(declare-fun m!8043230 () Bool)

(assert (=> b!7408014 m!8043230))

(assert (=> b!7407941 d!2290826))

(declare-fun bs!1924050 () Bool)

(declare-fun d!2290828 () Bool)

(assert (= bs!1924050 (and d!2290828 b!7407934)))

(declare-fun lambda!459597 () Int)

(assert (=> bs!1924050 (= (= lt!2618292 a!2228) (= lambda!459597 lambda!459574))))

(assert (=> d!2290828 true))

(declare-fun flatMap!3202 ((Set Context!16680) Int) (Set Context!16680))

(assert (=> d!2290828 (= (derivationStepZipper!3674 z!3451 lt!2618292) (flatMap!3202 z!3451 lambda!459597))))

(declare-fun bs!1924051 () Bool)

(assert (= bs!1924051 d!2290828))

(declare-fun m!8043232 () Bool)

(assert (=> bs!1924051 m!8043232))

(assert (=> b!7407941 d!2290828))

(declare-fun d!2290832 () Bool)

(assert (=> d!2290832 (= (head!15185 s!7927) (h!78313 s!7927))))

(assert (=> b!7407941 d!2290832))

(declare-fun d!2290834 () Bool)

(declare-fun lt!2618314 () Bool)

(declare-datatypes ((List!71992 0))(
  ( (Nil!71868) (Cons!71868 (h!78316 Context!16680) (t!386551 List!71992)) )
))
(declare-fun exists!4764 (List!71992 Int) Bool)

(declare-fun toList!11753 ((Set Context!16680)) List!71992)

(assert (=> d!2290834 (= lt!2618314 (exists!4764 (toList!11753 lt!2618293) lambda!459575))))

(declare-fun choose!57432 ((Set Context!16680) Int) Bool)

(assert (=> d!2290834 (= lt!2618314 (choose!57432 lt!2618293 lambda!459575))))

(assert (=> d!2290834 (= (exists!4762 lt!2618293 lambda!459575) lt!2618314)))

(declare-fun bs!1924052 () Bool)

(assert (= bs!1924052 d!2290834))

(declare-fun m!8043234 () Bool)

(assert (=> bs!1924052 m!8043234))

(assert (=> bs!1924052 m!8043234))

(declare-fun m!8043236 () Bool)

(assert (=> bs!1924052 m!8043236))

(declare-fun m!8043238 () Bool)

(assert (=> bs!1924052 m!8043238))

(assert (=> b!7407940 d!2290834))

(declare-fun d!2290836 () Bool)

(declare-fun lt!2618315 () Bool)

(assert (=> d!2290836 (= lt!2618315 (exists!4764 (toList!11753 z!3451) lambda!459576))))

(assert (=> d!2290836 (= lt!2618315 (choose!57432 z!3451 lambda!459576))))

(assert (=> d!2290836 (= (exists!4762 z!3451 lambda!459576) lt!2618315)))

(declare-fun bs!1924053 () Bool)

(assert (= bs!1924053 d!2290836))

(declare-fun m!8043240 () Bool)

(assert (=> bs!1924053 m!8043240))

(assert (=> bs!1924053 m!8043240))

(declare-fun m!8043242 () Bool)

(assert (=> bs!1924053 m!8043242))

(declare-fun m!8043244 () Bool)

(assert (=> bs!1924053 m!8043244))

(assert (=> b!7407935 d!2290836))

(declare-fun d!2290838 () Bool)

(assert (=> d!2290838 (= (isEmpty!41040 (exprs!8840 c!10532)) (is-Nil!71864 (exprs!8840 c!10532)))))

(assert (=> b!7407944 d!2290838))

(declare-fun bs!1924054 () Bool)

(declare-fun d!2290840 () Bool)

(assert (= bs!1924054 (and d!2290840 d!2290824)))

(declare-fun lambda!459598 () Int)

(assert (=> bs!1924054 (= lambda!459598 lambda!459594)))

(assert (=> d!2290840 (= (inv!91862 setElem!56208) (forall!18186 (exprs!8840 setElem!56208) lambda!459598))))

(declare-fun bs!1924055 () Bool)

(assert (= bs!1924055 d!2290840))

(declare-fun m!8043246 () Bool)

(assert (=> bs!1924055 m!8043246))

(assert (=> setNonEmpty!56208 d!2290840))

(declare-fun d!2290842 () Bool)

(assert (=> d!2290842 (= (head!15184 (exprs!8840 c!10532)) (h!78312 (exprs!8840 c!10532)))))

(assert (=> b!7407939 d!2290842))

(declare-fun bs!1924056 () Bool)

(declare-fun d!2290844 () Bool)

(assert (= bs!1924056 (and d!2290844 b!7407940)))

(declare-fun lambda!459603 () Int)

(assert (=> bs!1924056 (not (= lambda!459603 lambda!459575))))

(declare-fun bs!1924057 () Bool)

(assert (= bs!1924057 (and d!2290844 b!7407935)))

(assert (=> bs!1924057 (not (= lambda!459603 lambda!459576))))

(assert (=> d!2290844 true))

(assert (=> d!2290844 true))

(declare-fun order!29499 () Int)

(declare-fun order!29497 () Int)

(declare-fun dynLambda!29634 (Int Int) Int)

(declare-fun dynLambda!29635 (Int Int) Int)

(assert (=> d!2290844 (< (dynLambda!29634 order!29497 lambda!459574) (dynLambda!29635 order!29499 lambda!459603))))

(assert (=> d!2290844 (= (set.member lt!2618291 (flatMap!3202 z!3451 lambda!459574)) (exists!4762 z!3451 lambda!459603))))

(declare-fun lt!2618320 () Context!16680)

(declare-fun choose!57433 ((Set Context!16680) Int Context!16680) Context!16680)

(assert (=> d!2290844 (= lt!2618320 (choose!57433 z!3451 lambda!459574 lt!2618291))))

(assert (=> d!2290844 (= (flatMapPost!207 z!3451 lambda!459574 lt!2618291) lt!2618320)))

(declare-fun bs!1924058 () Bool)

(assert (= bs!1924058 d!2290844))

(declare-fun m!8043248 () Bool)

(assert (=> bs!1924058 m!8043248))

(declare-fun m!8043250 () Bool)

(assert (=> bs!1924058 m!8043250))

(declare-fun m!8043252 () Bool)

(assert (=> bs!1924058 m!8043252))

(declare-fun m!8043254 () Bool)

(assert (=> bs!1924058 m!8043254))

(assert (=> b!7407934 d!2290844))

(declare-fun bs!1924059 () Bool)

(declare-fun d!2290846 () Bool)

(assert (= bs!1924059 (and d!2290846 d!2290824)))

(declare-fun lambda!459604 () Int)

(assert (=> bs!1924059 (= lambda!459604 lambda!459594)))

(declare-fun bs!1924060 () Bool)

(assert (= bs!1924060 (and d!2290846 d!2290840)))

(assert (=> bs!1924060 (= lambda!459604 lambda!459598)))

(assert (=> d!2290846 (= (inv!91862 empty!3547) (forall!18186 (exprs!8840 empty!3547) lambda!459604))))

(declare-fun bs!1924061 () Bool)

(assert (= bs!1924061 d!2290846))

(declare-fun m!8043256 () Bool)

(assert (=> bs!1924061 m!8043256))

(assert (=> b!7407934 d!2290846))

(declare-fun d!2290848 () Bool)

(assert (=> d!2290848 (= (isEmpty!41040 (tail!14807 (exprs!8840 c!10532))) (is-Nil!71864 (tail!14807 (exprs!8840 c!10532))))))

(assert (=> b!7407933 d!2290848))

(declare-fun d!2290850 () Bool)

(assert (=> d!2290850 (= (tail!14807 (exprs!8840 c!10532)) (t!386547 (exprs!8840 c!10532)))))

(assert (=> b!7407933 d!2290850))

(declare-fun bs!1924062 () Bool)

(declare-fun d!2290852 () Bool)

(assert (= bs!1924062 (and d!2290852 b!7407940)))

(declare-fun lambda!459605 () Int)

(assert (=> bs!1924062 (not (= lambda!459605 lambda!459575))))

(declare-fun bs!1924063 () Bool)

(assert (= bs!1924063 (and d!2290852 b!7407935)))

(assert (=> bs!1924063 (not (= lambda!459605 lambda!459576))))

(declare-fun bs!1924064 () Bool)

(assert (= bs!1924064 (and d!2290852 d!2290844)))

(assert (=> bs!1924064 (= (= lt!2618288 lt!2618291) (= lambda!459605 lambda!459603))))

(assert (=> d!2290852 true))

(assert (=> d!2290852 true))

(assert (=> d!2290852 (< (dynLambda!29634 order!29497 lambda!459574) (dynLambda!29635 order!29499 lambda!459605))))

(assert (=> d!2290852 (= (set.member lt!2618288 (flatMap!3202 z!3451 lambda!459574)) (exists!4762 z!3451 lambda!459605))))

(declare-fun lt!2618322 () Context!16680)

(assert (=> d!2290852 (= lt!2618322 (choose!57433 z!3451 lambda!459574 lt!2618288))))

(assert (=> d!2290852 (= (flatMapPost!207 z!3451 lambda!459574 lt!2618288) lt!2618322)))

(declare-fun bs!1924065 () Bool)

(assert (= bs!1924065 d!2290852))

(assert (=> bs!1924065 m!8043248))

(declare-fun m!8043258 () Bool)

(assert (=> bs!1924065 m!8043258))

(declare-fun m!8043260 () Bool)

(assert (=> bs!1924065 m!8043260))

(declare-fun m!8043262 () Bool)

(assert (=> bs!1924065 m!8043262))

(assert (=> b!7407938 d!2290852))

(declare-fun d!2290854 () Bool)

(declare-fun e!4430653 () Bool)

(assert (=> d!2290854 e!4430653))

(declare-fun res!2982442 () Bool)

(assert (=> d!2290854 (=> (not res!2982442) (not e!4430653))))

(declare-fun lt!2618325 () Context!16680)

(declare-fun dynLambda!29636 (Int Context!16680) Bool)

(assert (=> d!2290854 (= res!2982442 (dynLambda!29636 lambda!459575 lt!2618325))))

(declare-fun getWitness!2437 (List!71992 Int) Context!16680)

(assert (=> d!2290854 (= lt!2618325 (getWitness!2437 (toList!11753 lt!2618293) lambda!459575))))

(assert (=> d!2290854 (exists!4762 lt!2618293 lambda!459575)))

(assert (=> d!2290854 (= (getWitness!2435 lt!2618293 lambda!459575) lt!2618325)))

(declare-fun b!7408023 () Bool)

(assert (=> b!7408023 (= e!4430653 (set.member lt!2618325 lt!2618293))))

(assert (= (and d!2290854 res!2982442) b!7408023))

(declare-fun b_lambda!286247 () Bool)

(assert (=> (not b_lambda!286247) (not d!2290854)))

(declare-fun m!8043272 () Bool)

(assert (=> d!2290854 m!8043272))

(assert (=> d!2290854 m!8043234))

(assert (=> d!2290854 m!8043234))

(declare-fun m!8043274 () Bool)

(assert (=> d!2290854 m!8043274))

(assert (=> d!2290854 m!8043142))

(declare-fun m!8043276 () Bool)

(assert (=> b!7408023 m!8043276))

(assert (=> b!7407938 d!2290854))

(declare-fun d!2290858 () Bool)

(declare-fun e!4430654 () Bool)

(assert (=> d!2290858 e!4430654))

(declare-fun res!2982443 () Bool)

(assert (=> d!2290858 (=> (not res!2982443) (not e!4430654))))

(declare-fun lt!2618326 () Context!16680)

(assert (=> d!2290858 (= res!2982443 (dynLambda!29636 lambda!459576 lt!2618326))))

(assert (=> d!2290858 (= lt!2618326 (getWitness!2437 (toList!11753 z!3451) lambda!459576))))

(assert (=> d!2290858 (exists!4762 z!3451 lambda!459576)))

(assert (=> d!2290858 (= (getWitness!2435 z!3451 lambda!459576) lt!2618326)))

(declare-fun b!7408024 () Bool)

(assert (=> b!7408024 (= e!4430654 (set.member lt!2618326 z!3451))))

(assert (= (and d!2290858 res!2982443) b!7408024))

(declare-fun b_lambda!286249 () Bool)

(assert (=> (not b_lambda!286249) (not d!2290858)))

(declare-fun m!8043278 () Bool)

(assert (=> d!2290858 m!8043278))

(assert (=> d!2290858 m!8043240))

(assert (=> d!2290858 m!8043240))

(declare-fun m!8043280 () Bool)

(assert (=> d!2290858 m!8043280))

(assert (=> d!2290858 m!8043140))

(declare-fun m!8043282 () Bool)

(assert (=> b!7408024 m!8043282))

(assert (=> b!7407937 d!2290858))

(declare-fun b!7408029 () Bool)

(declare-fun e!4430657 () Bool)

(declare-fun tp!2119429 () Bool)

(declare-fun tp!2119430 () Bool)

(assert (=> b!7408029 (= e!4430657 (and tp!2119429 tp!2119430))))

(assert (=> b!7407936 (= tp!2119405 e!4430657)))

(assert (= (and b!7407936 (is-Cons!71864 (exprs!8840 empty!3547))) b!7408029))

(declare-fun condSetEmpty!56214 () Bool)

(assert (=> setNonEmpty!56208 (= condSetEmpty!56214 (= setRest!56208 (as set.empty (Set Context!16680))))))

(declare-fun setRes!56214 () Bool)

(assert (=> setNonEmpty!56208 (= tp!2119408 setRes!56214)))

(declare-fun setIsEmpty!56214 () Bool)

(assert (=> setIsEmpty!56214 setRes!56214))

(declare-fun setNonEmpty!56214 () Bool)

(declare-fun e!4430660 () Bool)

(declare-fun setElem!56214 () Context!16680)

(declare-fun tp!2119435 () Bool)

(assert (=> setNonEmpty!56214 (= setRes!56214 (and tp!2119435 (inv!91862 setElem!56214) e!4430660))))

(declare-fun setRest!56214 () (Set Context!16680))

(assert (=> setNonEmpty!56214 (= setRest!56208 (set.union (set.insert setElem!56214 (as set.empty (Set Context!16680))) setRest!56214))))

(declare-fun b!7408034 () Bool)

(declare-fun tp!2119436 () Bool)

(assert (=> b!7408034 (= e!4430660 tp!2119436)))

(assert (= (and setNonEmpty!56208 condSetEmpty!56214) setIsEmpty!56214))

(assert (= (and setNonEmpty!56208 (not condSetEmpty!56214)) setNonEmpty!56214))

(assert (= setNonEmpty!56214 b!7408034))

(declare-fun m!8043284 () Bool)

(assert (=> setNonEmpty!56214 m!8043284))

(declare-fun b!7408035 () Bool)

(declare-fun e!4430661 () Bool)

(declare-fun tp!2119437 () Bool)

(declare-fun tp!2119438 () Bool)

(assert (=> b!7408035 (= e!4430661 (and tp!2119437 tp!2119438))))

(assert (=> b!7407943 (= tp!2119407 e!4430661)))

(assert (= (and b!7407943 (is-Cons!71864 (exprs!8840 setElem!56208))) b!7408035))

(declare-fun b!7408036 () Bool)

(declare-fun e!4430662 () Bool)

(declare-fun tp!2119439 () Bool)

(declare-fun tp!2119440 () Bool)

(assert (=> b!7408036 (= e!4430662 (and tp!2119439 tp!2119440))))

(assert (=> b!7407942 (= tp!2119406 e!4430662)))

(assert (= (and b!7407942 (is-Cons!71864 (exprs!8840 c!10532))) b!7408036))

(declare-fun b!7408041 () Bool)

(declare-fun e!4430665 () Bool)

(declare-fun tp!2119443 () Bool)

(assert (=> b!7408041 (= e!4430665 (and tp_is_empty!49063 tp!2119443))))

(assert (=> b!7407932 (= tp!2119409 e!4430665)))

(assert (= (and b!7407932 (is-Cons!71865 (t!386548 s!7927))) b!7408041))

(declare-fun b_lambda!286251 () Bool)

(assert (= b_lambda!286249 (or b!7407935 b_lambda!286251)))

(declare-fun bs!1924069 () Bool)

(declare-fun d!2290860 () Bool)

(assert (= bs!1924069 (and d!2290860 b!7407935)))

(assert (=> bs!1924069 (= (dynLambda!29636 lambda!459576 lt!2618326) (set.member lt!2618288 (derivationStepZipperUp!2804 lt!2618326 lt!2618292)))))

(declare-fun m!8043286 () Bool)

(assert (=> bs!1924069 m!8043286))

(declare-fun m!8043288 () Bool)

(assert (=> bs!1924069 m!8043288))

(assert (=> d!2290858 d!2290860))

(declare-fun b_lambda!286253 () Bool)

(assert (= b_lambda!286247 (or b!7407940 b_lambda!286253)))

(declare-fun bs!1924070 () Bool)

(declare-fun d!2290862 () Bool)

(assert (= bs!1924070 (and d!2290862 b!7407940)))

(assert (=> bs!1924070 (= (dynLambda!29636 lambda!459575 lt!2618325) (not (= lt!2618325 lt!2618291)))))

(assert (=> d!2290854 d!2290862))

(push 1)

(assert (not d!2290854))

(assert (not d!2290858))

(assert (not b!7408035))

(assert (not setNonEmpty!56214))

(assert (not b!7408041))

(assert (not b!7408014))

(assert (not b!7408036))

(assert (not d!2290828))

(assert (not b_lambda!286251))

(assert (not bs!1924069))

(assert (not b!7408029))

(assert (not b!7408011))

(assert (not d!2290846))

(assert (not d!2290834))

(assert (not d!2290852))

(assert (not d!2290824))

(assert (not d!2290844))

(assert (not d!2290836))

(assert (not bm!682044))

(assert (not d!2290840))

(assert tp_is_empty!49063)

(assert (not b!7408034))

(assert (not b_lambda!286253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

