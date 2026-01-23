; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689522 () Bool)

(assert start!689522)

(declare-fun b!7084303 () Bool)

(assert (=> b!7084303 true))

(declare-fun b!7084295 () Bool)

(declare-fun e!4259073 () Bool)

(declare-fun tp!1944594 () Bool)

(declare-fun tp!1944596 () Bool)

(assert (=> b!7084295 (= e!4259073 (and tp!1944594 tp!1944596))))

(declare-fun b!7084296 () Bool)

(declare-fun e!4259074 () Bool)

(declare-fun tp!1944598 () Bool)

(assert (=> b!7084296 (= e!4259074 tp!1944598)))

(declare-fun b!7084298 () Bool)

(declare-fun e!4259071 () Bool)

(declare-datatypes ((C!35722 0))(
  ( (C!35723 (val!27567 Int)) )
))
(declare-datatypes ((Regex!17726 0))(
  ( (ElementMatch!17726 (c!1322279 C!35722)) (Concat!26571 (regOne!35964 Regex!17726) (regTwo!35964 Regex!17726)) (EmptyExpr!17726) (Star!17726 (reg!18055 Regex!17726)) (EmptyLang!17726) (Union!17726 (regOne!35965 Regex!17726) (regTwo!35965 Regex!17726)) )
))
(declare-datatypes ((List!68689 0))(
  ( (Nil!68565) (Cons!68565 (h!75013 Regex!17726) (t!382474 List!68689)) )
))
(declare-datatypes ((Context!13444 0))(
  ( (Context!13445 (exprs!7222 List!68689)) )
))
(declare-fun auxCtx!45 () Context!13444)

(declare-fun lambda!428823 () Int)

(declare-fun forall!16682 (List!68689 Int) Bool)

(assert (=> b!7084298 (= e!4259071 (forall!16682 (exprs!7222 auxCtx!45) lambda!428823))))

(declare-fun b!7084299 () Bool)

(declare-fun e!4259069 () Bool)

(assert (=> b!7084299 (= e!4259069 (not e!4259071))))

(declare-fun res!2894132 () Bool)

(assert (=> b!7084299 (=> res!2894132 e!4259071)))

(declare-fun c!9994 () Context!13444)

(assert (=> b!7084299 (= res!2894132 (not (forall!16682 (exprs!7222 c!9994) lambda!428823)))))

(declare-fun lambda!428822 () Int)

(declare-fun lt!2554319 () (Set Context!13444))

(declare-fun map!16080 ((Set Context!13444) Int) (Set Context!13444))

(declare-fun ++!15903 (List!68689 List!68689) List!68689)

(assert (=> b!7084299 (= (map!16080 lt!2554319 lambda!428822) (set.insert (Context!13445 (++!15903 (exprs!7222 c!9994) (exprs!7222 auxCtx!45))) (as set.empty (Set Context!13444))))))

(declare-datatypes ((Unit!162159 0))(
  ( (Unit!162160) )
))
(declare-fun lt!2554320 () Unit!162159)

(declare-fun lemmaConcatPreservesForall!1033 (List!68689 List!68689 Int) Unit!162159)

(assert (=> b!7084299 (= lt!2554320 (lemmaConcatPreservesForall!1033 (exprs!7222 c!9994) (exprs!7222 auxCtx!45) lambda!428823))))

(declare-fun lt!2554321 () Unit!162159)

(declare-fun lemmaMapOnSingletonSet!439 ((Set Context!13444) Context!13444 Int) Unit!162159)

(assert (=> b!7084299 (= lt!2554321 (lemmaMapOnSingletonSet!439 lt!2554319 c!9994 lambda!428822))))

(assert (=> b!7084299 (= lt!2554319 (set.insert c!9994 (as set.empty (Set Context!13444))))))

(declare-fun b!7084300 () Bool)

(declare-fun tp!1944597 () Bool)

(assert (=> b!7084300 (= e!4259073 tp!1944597)))

(declare-fun b!7084301 () Bool)

(declare-fun tp!1944593 () Bool)

(declare-fun tp!1944599 () Bool)

(assert (=> b!7084301 (= e!4259073 (and tp!1944593 tp!1944599))))

(declare-fun b!7084302 () Bool)

(declare-fun e!4259070 () Bool)

(declare-fun tp!1944595 () Bool)

(assert (=> b!7084302 (= e!4259070 tp!1944595)))

(declare-fun e!4259072 () Bool)

(assert (=> b!7084303 (= e!4259072 e!4259069)))

(declare-fun res!2894133 () Bool)

(assert (=> b!7084303 (=> (not res!2894133) (not e!4259069))))

(declare-fun r!11554 () Regex!17726)

(declare-fun a!1901 () C!35722)

(assert (=> b!7084303 (= res!2894133 (and (is-ElementMatch!17726 r!11554) (= (c!1322279 r!11554) a!1901)))))

(declare-fun res!2894131 () Bool)

(assert (=> start!689522 (=> (not res!2894131) (not e!4259072))))

(declare-fun validRegex!9001 (Regex!17726) Bool)

(assert (=> start!689522 (= res!2894131 (validRegex!9001 r!11554))))

(assert (=> start!689522 e!4259072))

(assert (=> start!689522 e!4259073))

(declare-fun inv!87181 (Context!13444) Bool)

(assert (=> start!689522 (and (inv!87181 c!9994) e!4259074)))

(declare-fun tp_is_empty!44685 () Bool)

(assert (=> start!689522 tp_is_empty!44685))

(assert (=> start!689522 (and (inv!87181 auxCtx!45) e!4259070)))

(declare-fun b!7084297 () Bool)

(assert (=> b!7084297 (= e!4259073 tp_is_empty!44685)))

(assert (= (and start!689522 res!2894131) b!7084303))

(assert (= (and b!7084303 res!2894133) b!7084299))

(assert (= (and b!7084299 (not res!2894132)) b!7084298))

(assert (= (and start!689522 (is-ElementMatch!17726 r!11554)) b!7084297))

(assert (= (and start!689522 (is-Concat!26571 r!11554)) b!7084295))

(assert (= (and start!689522 (is-Star!17726 r!11554)) b!7084300))

(assert (= (and start!689522 (is-Union!17726 r!11554)) b!7084301))

(assert (= start!689522 b!7084296))

(assert (= start!689522 b!7084302))

(declare-fun m!7816088 () Bool)

(assert (=> b!7084298 m!7816088))

(declare-fun m!7816090 () Bool)

(assert (=> b!7084299 m!7816090))

(declare-fun m!7816092 () Bool)

(assert (=> b!7084299 m!7816092))

(declare-fun m!7816094 () Bool)

(assert (=> b!7084299 m!7816094))

(declare-fun m!7816096 () Bool)

(assert (=> b!7084299 m!7816096))

(declare-fun m!7816098 () Bool)

(assert (=> b!7084299 m!7816098))

(declare-fun m!7816100 () Bool)

(assert (=> b!7084299 m!7816100))

(declare-fun m!7816102 () Bool)

(assert (=> b!7084299 m!7816102))

(declare-fun m!7816104 () Bool)

(assert (=> start!689522 m!7816104))

(declare-fun m!7816106 () Bool)

(assert (=> start!689522 m!7816106))

(declare-fun m!7816108 () Bool)

(assert (=> start!689522 m!7816108))

(push 1)

(assert (not b!7084298))

(assert (not start!689522))

(assert (not b!7084300))

(assert (not b!7084296))

(assert (not b!7084302))

(assert (not b!7084301))

(assert (not b!7084295))

(assert tp_is_empty!44685)

(assert (not b!7084299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1322286 () Bool)

(declare-fun bm!643675 () Bool)

(declare-fun c!1322285 () Bool)

(declare-fun call!643681 () Bool)

(assert (=> bm!643675 (= call!643681 (validRegex!9001 (ite c!1322286 (reg!18055 r!11554) (ite c!1322285 (regTwo!35965 r!11554) (regOne!35964 r!11554)))))))

(declare-fun d!2215785 () Bool)

(declare-fun res!2894156 () Bool)

(declare-fun e!4259109 () Bool)

(assert (=> d!2215785 (=> res!2894156 e!4259109)))

(assert (=> d!2215785 (= res!2894156 (is-ElementMatch!17726 r!11554))))

(assert (=> d!2215785 (= (validRegex!9001 r!11554) e!4259109)))

(declare-fun bm!643676 () Bool)

(declare-fun call!643680 () Bool)

(assert (=> bm!643676 (= call!643680 call!643681)))

(declare-fun b!7084353 () Bool)

(declare-fun e!4259111 () Bool)

(assert (=> b!7084353 (= e!4259109 e!4259111)))

(assert (=> b!7084353 (= c!1322286 (is-Star!17726 r!11554))))

(declare-fun b!7084354 () Bool)

(declare-fun e!4259107 () Bool)

(assert (=> b!7084354 (= e!4259107 call!643680)))

(declare-fun b!7084355 () Bool)

(declare-fun res!2894159 () Bool)

(declare-fun e!4259108 () Bool)

(assert (=> b!7084355 (=> res!2894159 e!4259108)))

(assert (=> b!7084355 (= res!2894159 (not (is-Concat!26571 r!11554)))))

(declare-fun e!4259110 () Bool)

(assert (=> b!7084355 (= e!4259110 e!4259108)))

(declare-fun b!7084356 () Bool)

(declare-fun e!4259112 () Bool)

(declare-fun call!643682 () Bool)

(assert (=> b!7084356 (= e!4259112 call!643682)))

(declare-fun b!7084357 () Bool)

(declare-fun res!2894155 () Bool)

(assert (=> b!7084357 (=> (not res!2894155) (not e!4259107))))

(assert (=> b!7084357 (= res!2894155 call!643682)))

(assert (=> b!7084357 (= e!4259110 e!4259107)))

(declare-fun b!7084358 () Bool)

(assert (=> b!7084358 (= e!4259111 e!4259110)))

(assert (=> b!7084358 (= c!1322285 (is-Union!17726 r!11554))))

(declare-fun bm!643677 () Bool)

(assert (=> bm!643677 (= call!643682 (validRegex!9001 (ite c!1322285 (regOne!35965 r!11554) (regTwo!35964 r!11554))))))

(declare-fun b!7084359 () Bool)

(assert (=> b!7084359 (= e!4259108 e!4259112)))

(declare-fun res!2894157 () Bool)

(assert (=> b!7084359 (=> (not res!2894157) (not e!4259112))))

(assert (=> b!7084359 (= res!2894157 call!643680)))

(declare-fun b!7084360 () Bool)

(declare-fun e!4259113 () Bool)

(assert (=> b!7084360 (= e!4259113 call!643681)))

(declare-fun b!7084361 () Bool)

(assert (=> b!7084361 (= e!4259111 e!4259113)))

(declare-fun res!2894158 () Bool)

(declare-fun nullable!7383 (Regex!17726) Bool)

(assert (=> b!7084361 (= res!2894158 (not (nullable!7383 (reg!18055 r!11554))))))

(assert (=> b!7084361 (=> (not res!2894158) (not e!4259113))))

(assert (= (and d!2215785 (not res!2894156)) b!7084353))

(assert (= (and b!7084353 c!1322286) b!7084361))

(assert (= (and b!7084353 (not c!1322286)) b!7084358))

(assert (= (and b!7084361 res!2894158) b!7084360))

(assert (= (and b!7084358 c!1322285) b!7084357))

(assert (= (and b!7084358 (not c!1322285)) b!7084355))

(assert (= (and b!7084357 res!2894155) b!7084354))

(assert (= (and b!7084355 (not res!2894159)) b!7084359))

(assert (= (and b!7084359 res!2894157) b!7084356))

(assert (= (or b!7084357 b!7084356) bm!643677))

(assert (= (or b!7084354 b!7084359) bm!643676))

(assert (= (or b!7084360 bm!643676) bm!643675))

(declare-fun m!7816132 () Bool)

(assert (=> bm!643675 m!7816132))

(declare-fun m!7816134 () Bool)

(assert (=> bm!643677 m!7816134))

(declare-fun m!7816136 () Bool)

(assert (=> b!7084361 m!7816136))

(assert (=> start!689522 d!2215785))

(declare-fun bs!1882797 () Bool)

(declare-fun d!2215787 () Bool)

(assert (= bs!1882797 (and d!2215787 b!7084299)))

(declare-fun lambda!428836 () Int)

(assert (=> bs!1882797 (= lambda!428836 lambda!428823)))

(assert (=> d!2215787 (= (inv!87181 c!9994) (forall!16682 (exprs!7222 c!9994) lambda!428836))))

(declare-fun bs!1882798 () Bool)

(assert (= bs!1882798 d!2215787))

(declare-fun m!7816138 () Bool)

(assert (=> bs!1882798 m!7816138))

(assert (=> start!689522 d!2215787))

(declare-fun bs!1882799 () Bool)

(declare-fun d!2215789 () Bool)

(assert (= bs!1882799 (and d!2215789 b!7084299)))

(declare-fun lambda!428837 () Int)

(assert (=> bs!1882799 (= lambda!428837 lambda!428823)))

(declare-fun bs!1882800 () Bool)

(assert (= bs!1882800 (and d!2215789 d!2215787)))

(assert (=> bs!1882800 (= lambda!428837 lambda!428836)))

(assert (=> d!2215789 (= (inv!87181 auxCtx!45) (forall!16682 (exprs!7222 auxCtx!45) lambda!428837))))

(declare-fun bs!1882801 () Bool)

(assert (= bs!1882801 d!2215789))

(declare-fun m!7816140 () Bool)

(assert (=> bs!1882801 m!7816140))

(assert (=> start!689522 d!2215789))

(declare-fun d!2215791 () Bool)

(declare-fun res!2894164 () Bool)

(declare-fun e!4259118 () Bool)

(assert (=> d!2215791 (=> res!2894164 e!4259118)))

(assert (=> d!2215791 (= res!2894164 (is-Nil!68565 (exprs!7222 c!9994)))))

(assert (=> d!2215791 (= (forall!16682 (exprs!7222 c!9994) lambda!428823) e!4259118)))

(declare-fun b!7084366 () Bool)

(declare-fun e!4259119 () Bool)

(assert (=> b!7084366 (= e!4259118 e!4259119)))

(declare-fun res!2894165 () Bool)

(assert (=> b!7084366 (=> (not res!2894165) (not e!4259119))))

(declare-fun dynLambda!27957 (Int Regex!17726) Bool)

(assert (=> b!7084366 (= res!2894165 (dynLambda!27957 lambda!428823 (h!75013 (exprs!7222 c!9994))))))

(declare-fun b!7084367 () Bool)

(assert (=> b!7084367 (= e!4259119 (forall!16682 (t!382474 (exprs!7222 c!9994)) lambda!428823))))

(assert (= (and d!2215791 (not res!2894164)) b!7084366))

(assert (= (and b!7084366 res!2894165) b!7084367))

(declare-fun b_lambda!270769 () Bool)

(assert (=> (not b_lambda!270769) (not b!7084366)))

(declare-fun m!7816142 () Bool)

(assert (=> b!7084366 m!7816142))

(declare-fun m!7816144 () Bool)

(assert (=> b!7084367 m!7816144))

(assert (=> b!7084299 d!2215791))

(declare-fun d!2215793 () Bool)

(assert (=> d!2215793 (forall!16682 (++!15903 (exprs!7222 c!9994) (exprs!7222 auxCtx!45)) lambda!428823)))

(declare-fun lt!2554335 () Unit!162159)

(declare-fun choose!54588 (List!68689 List!68689 Int) Unit!162159)

(assert (=> d!2215793 (= lt!2554335 (choose!54588 (exprs!7222 c!9994) (exprs!7222 auxCtx!45) lambda!428823))))

(assert (=> d!2215793 (forall!16682 (exprs!7222 c!9994) lambda!428823)))

(assert (=> d!2215793 (= (lemmaConcatPreservesForall!1033 (exprs!7222 c!9994) (exprs!7222 auxCtx!45) lambda!428823) lt!2554335)))

(declare-fun bs!1882802 () Bool)

(assert (= bs!1882802 d!2215793))

(assert (=> bs!1882802 m!7816098))

(assert (=> bs!1882802 m!7816098))

(declare-fun m!7816146 () Bool)

(assert (=> bs!1882802 m!7816146))

(declare-fun m!7816148 () Bool)

(assert (=> bs!1882802 m!7816148))

(assert (=> bs!1882802 m!7816100))

(assert (=> b!7084299 d!2215793))

(declare-fun b!7084384 () Bool)

(declare-fun res!2894176 () Bool)

(declare-fun e!4259131 () Bool)

(assert (=> b!7084384 (=> (not res!2894176) (not e!4259131))))

(declare-fun lt!2554338 () List!68689)

(declare-fun size!41288 (List!68689) Int)

(assert (=> b!7084384 (= res!2894176 (= (size!41288 lt!2554338) (+ (size!41288 (exprs!7222 c!9994)) (size!41288 (exprs!7222 auxCtx!45)))))))

(declare-fun b!7084383 () Bool)

(declare-fun e!4259130 () List!68689)

(assert (=> b!7084383 (= e!4259130 (Cons!68565 (h!75013 (exprs!7222 c!9994)) (++!15903 (t!382474 (exprs!7222 c!9994)) (exprs!7222 auxCtx!45))))))

(declare-fun b!7084382 () Bool)

(assert (=> b!7084382 (= e!4259130 (exprs!7222 auxCtx!45))))

(declare-fun d!2215797 () Bool)

(assert (=> d!2215797 e!4259131))

(declare-fun res!2894177 () Bool)

(assert (=> d!2215797 (=> (not res!2894177) (not e!4259131))))

(declare-fun content!13913 (List!68689) (Set Regex!17726))

(assert (=> d!2215797 (= res!2894177 (= (content!13913 lt!2554338) (set.union (content!13913 (exprs!7222 c!9994)) (content!13913 (exprs!7222 auxCtx!45)))))))

(assert (=> d!2215797 (= lt!2554338 e!4259130)))

(declare-fun c!1322289 () Bool)

(assert (=> d!2215797 (= c!1322289 (is-Nil!68565 (exprs!7222 c!9994)))))

(assert (=> d!2215797 (= (++!15903 (exprs!7222 c!9994) (exprs!7222 auxCtx!45)) lt!2554338)))

(declare-fun b!7084385 () Bool)

(assert (=> b!7084385 (= e!4259131 (or (not (= (exprs!7222 auxCtx!45) Nil!68565)) (= lt!2554338 (exprs!7222 c!9994))))))

(assert (= (and d!2215797 c!1322289) b!7084382))

(assert (= (and d!2215797 (not c!1322289)) b!7084383))

(assert (= (and d!2215797 res!2894177) b!7084384))

(assert (= (and b!7084384 res!2894176) b!7084385))

(declare-fun m!7816154 () Bool)

(assert (=> b!7084384 m!7816154))

(declare-fun m!7816156 () Bool)

(assert (=> b!7084384 m!7816156))

(declare-fun m!7816158 () Bool)

(assert (=> b!7084384 m!7816158))

(declare-fun m!7816160 () Bool)

(assert (=> b!7084383 m!7816160))

(declare-fun m!7816162 () Bool)

(assert (=> d!2215797 m!7816162))

(declare-fun m!7816164 () Bool)

(assert (=> d!2215797 m!7816164))

(declare-fun m!7816166 () Bool)

(assert (=> d!2215797 m!7816166))

(assert (=> b!7084299 d!2215797))

(declare-fun d!2215801 () Bool)

(declare-fun dynLambda!27958 (Int Context!13444) Context!13444)

(assert (=> d!2215801 (= (map!16080 lt!2554319 lambda!428822) (set.insert (dynLambda!27958 lambda!428822 c!9994) (as set.empty (Set Context!13444))))))

(declare-fun lt!2554341 () Unit!162159)

(declare-fun choose!54589 ((Set Context!13444) Context!13444 Int) Unit!162159)

(assert (=> d!2215801 (= lt!2554341 (choose!54589 lt!2554319 c!9994 lambda!428822))))

(assert (=> d!2215801 (= lt!2554319 (set.insert c!9994 (as set.empty (Set Context!13444))))))

(assert (=> d!2215801 (= (lemmaMapOnSingletonSet!439 lt!2554319 c!9994 lambda!428822) lt!2554341)))

(declare-fun b_lambda!270773 () Bool)

(assert (=> (not b_lambda!270773) (not d!2215801)))

(declare-fun bs!1882803 () Bool)

(assert (= bs!1882803 d!2215801))

(declare-fun m!7816168 () Bool)

(assert (=> bs!1882803 m!7816168))

(declare-fun m!7816170 () Bool)

(assert (=> bs!1882803 m!7816170))

(assert (=> bs!1882803 m!7816090))

(assert (=> bs!1882803 m!7816168))

(assert (=> bs!1882803 m!7816094))

(declare-fun m!7816172 () Bool)

(assert (=> bs!1882803 m!7816172))

(assert (=> b!7084299 d!2215801))

(declare-fun d!2215803 () Bool)

(declare-fun choose!54590 ((Set Context!13444) Int) (Set Context!13444))

(assert (=> d!2215803 (= (map!16080 lt!2554319 lambda!428822) (choose!54590 lt!2554319 lambda!428822))))

(declare-fun bs!1882804 () Bool)

(assert (= bs!1882804 d!2215803))

(declare-fun m!7816174 () Bool)

(assert (=> bs!1882804 m!7816174))

(assert (=> b!7084299 d!2215803))

(declare-fun d!2215805 () Bool)

(declare-fun res!2894178 () Bool)

(declare-fun e!4259132 () Bool)

(assert (=> d!2215805 (=> res!2894178 e!4259132)))

(assert (=> d!2215805 (= res!2894178 (is-Nil!68565 (exprs!7222 auxCtx!45)))))

(assert (=> d!2215805 (= (forall!16682 (exprs!7222 auxCtx!45) lambda!428823) e!4259132)))

(declare-fun b!7084386 () Bool)

(declare-fun e!4259133 () Bool)

(assert (=> b!7084386 (= e!4259132 e!4259133)))

(declare-fun res!2894179 () Bool)

(assert (=> b!7084386 (=> (not res!2894179) (not e!4259133))))

(assert (=> b!7084386 (= res!2894179 (dynLambda!27957 lambda!428823 (h!75013 (exprs!7222 auxCtx!45))))))

(declare-fun b!7084387 () Bool)

(assert (=> b!7084387 (= e!4259133 (forall!16682 (t!382474 (exprs!7222 auxCtx!45)) lambda!428823))))

(assert (= (and d!2215805 (not res!2894178)) b!7084386))

(assert (= (and b!7084386 res!2894179) b!7084387))

(declare-fun b_lambda!270775 () Bool)

(assert (=> (not b_lambda!270775) (not b!7084386)))

(declare-fun m!7816176 () Bool)

(assert (=> b!7084386 m!7816176))

(declare-fun m!7816178 () Bool)

(assert (=> b!7084387 m!7816178))

(assert (=> b!7084298 d!2215805))

(declare-fun b!7084399 () Bool)

(declare-fun e!4259136 () Bool)

(declare-fun tp!1944633 () Bool)

(declare-fun tp!1944631 () Bool)

(assert (=> b!7084399 (= e!4259136 (and tp!1944633 tp!1944631))))

(assert (=> b!7084300 (= tp!1944597 e!4259136)))

(declare-fun b!7084398 () Bool)

(assert (=> b!7084398 (= e!4259136 tp_is_empty!44685)))

(declare-fun b!7084400 () Bool)

(declare-fun tp!1944635 () Bool)

(assert (=> b!7084400 (= e!4259136 tp!1944635)))

(declare-fun b!7084401 () Bool)

(declare-fun tp!1944634 () Bool)

(declare-fun tp!1944632 () Bool)

(assert (=> b!7084401 (= e!4259136 (and tp!1944634 tp!1944632))))

(assert (= (and b!7084300 (is-ElementMatch!17726 (reg!18055 r!11554))) b!7084398))

(assert (= (and b!7084300 (is-Concat!26571 (reg!18055 r!11554))) b!7084399))

(assert (= (and b!7084300 (is-Star!17726 (reg!18055 r!11554))) b!7084400))

(assert (= (and b!7084300 (is-Union!17726 (reg!18055 r!11554))) b!7084401))

(declare-fun b!7084406 () Bool)

(declare-fun e!4259139 () Bool)

(declare-fun tp!1944640 () Bool)

(declare-fun tp!1944641 () Bool)

(assert (=> b!7084406 (= e!4259139 (and tp!1944640 tp!1944641))))

(assert (=> b!7084302 (= tp!1944595 e!4259139)))

(assert (= (and b!7084302 (is-Cons!68565 (exprs!7222 auxCtx!45))) b!7084406))

(declare-fun b!7084408 () Bool)

(declare-fun e!4259140 () Bool)

(declare-fun tp!1944644 () Bool)

(declare-fun tp!1944642 () Bool)

(assert (=> b!7084408 (= e!4259140 (and tp!1944644 tp!1944642))))

(assert (=> b!7084301 (= tp!1944593 e!4259140)))

(declare-fun b!7084407 () Bool)

(assert (=> b!7084407 (= e!4259140 tp_is_empty!44685)))

(declare-fun b!7084409 () Bool)

(declare-fun tp!1944646 () Bool)

(assert (=> b!7084409 (= e!4259140 tp!1944646)))

(declare-fun b!7084410 () Bool)

(declare-fun tp!1944645 () Bool)

(declare-fun tp!1944643 () Bool)

(assert (=> b!7084410 (= e!4259140 (and tp!1944645 tp!1944643))))

(assert (= (and b!7084301 (is-ElementMatch!17726 (regOne!35965 r!11554))) b!7084407))

(assert (= (and b!7084301 (is-Concat!26571 (regOne!35965 r!11554))) b!7084408))

(assert (= (and b!7084301 (is-Star!17726 (regOne!35965 r!11554))) b!7084409))

(assert (= (and b!7084301 (is-Union!17726 (regOne!35965 r!11554))) b!7084410))

(declare-fun b!7084412 () Bool)

(declare-fun e!4259141 () Bool)

(declare-fun tp!1944649 () Bool)

(declare-fun tp!1944647 () Bool)

(assert (=> b!7084412 (= e!4259141 (and tp!1944649 tp!1944647))))

(assert (=> b!7084301 (= tp!1944599 e!4259141)))

(declare-fun b!7084411 () Bool)

(assert (=> b!7084411 (= e!4259141 tp_is_empty!44685)))

(declare-fun b!7084413 () Bool)

(declare-fun tp!1944651 () Bool)

(assert (=> b!7084413 (= e!4259141 tp!1944651)))

(declare-fun b!7084414 () Bool)

(declare-fun tp!1944650 () Bool)

(declare-fun tp!1944648 () Bool)

(assert (=> b!7084414 (= e!4259141 (and tp!1944650 tp!1944648))))

(assert (= (and b!7084301 (is-ElementMatch!17726 (regTwo!35965 r!11554))) b!7084411))

(assert (= (and b!7084301 (is-Concat!26571 (regTwo!35965 r!11554))) b!7084412))

(assert (= (and b!7084301 (is-Star!17726 (regTwo!35965 r!11554))) b!7084413))

(assert (= (and b!7084301 (is-Union!17726 (regTwo!35965 r!11554))) b!7084414))

(declare-fun b!7084415 () Bool)

(declare-fun e!4259142 () Bool)

(declare-fun tp!1944652 () Bool)

(declare-fun tp!1944653 () Bool)

(assert (=> b!7084415 (= e!4259142 (and tp!1944652 tp!1944653))))

(assert (=> b!7084296 (= tp!1944598 e!4259142)))

(assert (= (and b!7084296 (is-Cons!68565 (exprs!7222 c!9994))) b!7084415))

(declare-fun b!7084417 () Bool)

(declare-fun e!4259143 () Bool)

(declare-fun tp!1944656 () Bool)

(declare-fun tp!1944654 () Bool)

(assert (=> b!7084417 (= e!4259143 (and tp!1944656 tp!1944654))))

(assert (=> b!7084295 (= tp!1944594 e!4259143)))

(declare-fun b!7084416 () Bool)

(assert (=> b!7084416 (= e!4259143 tp_is_empty!44685)))

(declare-fun b!7084418 () Bool)

(declare-fun tp!1944658 () Bool)

(assert (=> b!7084418 (= e!4259143 tp!1944658)))

(declare-fun b!7084419 () Bool)

(declare-fun tp!1944657 () Bool)

(declare-fun tp!1944655 () Bool)

(assert (=> b!7084419 (= e!4259143 (and tp!1944657 tp!1944655))))

(assert (= (and b!7084295 (is-ElementMatch!17726 (regOne!35964 r!11554))) b!7084416))

(assert (= (and b!7084295 (is-Concat!26571 (regOne!35964 r!11554))) b!7084417))

(assert (= (and b!7084295 (is-Star!17726 (regOne!35964 r!11554))) b!7084418))

(assert (= (and b!7084295 (is-Union!17726 (regOne!35964 r!11554))) b!7084419))

(declare-fun b!7084421 () Bool)

(declare-fun e!4259144 () Bool)

(declare-fun tp!1944661 () Bool)

(declare-fun tp!1944659 () Bool)

(assert (=> b!7084421 (= e!4259144 (and tp!1944661 tp!1944659))))

(assert (=> b!7084295 (= tp!1944596 e!4259144)))

(declare-fun b!7084420 () Bool)

(assert (=> b!7084420 (= e!4259144 tp_is_empty!44685)))

(declare-fun b!7084422 () Bool)

(declare-fun tp!1944663 () Bool)

(assert (=> b!7084422 (= e!4259144 tp!1944663)))

(declare-fun b!7084423 () Bool)

(declare-fun tp!1944662 () Bool)

(declare-fun tp!1944660 () Bool)

(assert (=> b!7084423 (= e!4259144 (and tp!1944662 tp!1944660))))

(assert (= (and b!7084295 (is-ElementMatch!17726 (regTwo!35964 r!11554))) b!7084420))

(assert (= (and b!7084295 (is-Concat!26571 (regTwo!35964 r!11554))) b!7084421))

(assert (= (and b!7084295 (is-Star!17726 (regTwo!35964 r!11554))) b!7084422))

(assert (= (and b!7084295 (is-Union!17726 (regTwo!35964 r!11554))) b!7084423))

(declare-fun b_lambda!270779 () Bool)

(assert (= b_lambda!270775 (or b!7084299 b_lambda!270779)))

(declare-fun bs!1882806 () Bool)

(declare-fun d!2215809 () Bool)

(assert (= bs!1882806 (and d!2215809 b!7084299)))

(assert (=> bs!1882806 (= (dynLambda!27957 lambda!428823 (h!75013 (exprs!7222 auxCtx!45))) (validRegex!9001 (h!75013 (exprs!7222 auxCtx!45))))))

(declare-fun m!7816186 () Bool)

(assert (=> bs!1882806 m!7816186))

(assert (=> b!7084386 d!2215809))

(declare-fun b_lambda!270781 () Bool)

(assert (= b_lambda!270773 (or b!7084303 b_lambda!270781)))

(declare-fun bs!1882807 () Bool)

(declare-fun d!2215811 () Bool)

(assert (= bs!1882807 (and d!2215811 b!7084303)))

(declare-fun bs!1882808 () Bool)

(assert (= bs!1882808 (and d!2215811 b!7084303 b!7084299)))

(declare-fun lambda!428838 () Int)

(assert (=> bs!1882808 (= lambda!428838 lambda!428823)))

(declare-fun bs!1882809 () Bool)

(assert (= bs!1882809 (and d!2215811 b!7084303 d!2215787)))

(assert (=> bs!1882809 (= lambda!428838 lambda!428836)))

(declare-fun bs!1882810 () Bool)

(assert (= bs!1882810 (and d!2215811 b!7084303 d!2215789)))

(assert (=> bs!1882810 (= lambda!428838 lambda!428837)))

(declare-fun lt!2554345 () Unit!162159)

(assert (=> bs!1882807 (= lt!2554345 (lemmaConcatPreservesForall!1033 (exprs!7222 c!9994) (exprs!7222 auxCtx!45) lambda!428838))))

(assert (=> bs!1882807 (= (dynLambda!27958 lambda!428822 c!9994) (Context!13445 (++!15903 (exprs!7222 c!9994) (exprs!7222 auxCtx!45))))))

(declare-fun m!7816190 () Bool)

(assert (=> bs!1882807 m!7816190))

(assert (=> bs!1882807 m!7816098))

(assert (=> d!2215801 d!2215811))

(declare-fun b_lambda!270783 () Bool)

(assert (= b_lambda!270769 (or b!7084299 b_lambda!270783)))

(declare-fun bs!1882812 () Bool)

(declare-fun d!2215815 () Bool)

(assert (= bs!1882812 (and d!2215815 b!7084299)))

(assert (=> bs!1882812 (= (dynLambda!27957 lambda!428823 (h!75013 (exprs!7222 c!9994))) (validRegex!9001 (h!75013 (exprs!7222 c!9994))))))

(declare-fun m!7816192 () Bool)

(assert (=> bs!1882812 m!7816192))

(assert (=> b!7084366 d!2215815))

(push 1)

(assert (not bs!1882812))

(assert (not d!2215801))

(assert (not bm!643677))

(assert (not b!7084367))

(assert (not b!7084409))

(assert (not b_lambda!270783))

(assert (not b!7084387))

(assert (not b!7084401))

(assert (not b!7084415))

(assert (not d!2215787))

(assert (not b!7084419))

(assert (not b!7084422))

(assert (not b!7084383))

(assert (not b!7084412))

(assert (not b!7084410))

(assert tp_is_empty!44685)

(assert (not b!7084384))

(assert (not bs!1882807))

(assert (not d!2215803))

(assert (not b!7084418))

(assert (not b!7084361))

(assert (not b!7084421))

(assert (not b!7084423))

(assert (not b!7084414))

(assert (not b!7084413))

(assert (not d!2215789))

(assert (not d!2215793))

(assert (not bs!1882806))

(assert (not bm!643675))

(assert (not b_lambda!270781))

(assert (not b_lambda!270779))

(assert (not b!7084408))

(assert (not b!7084399))

(assert (not b!7084400))

(assert (not b!7084417))

(assert (not d!2215797))

(assert (not b!7084406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

