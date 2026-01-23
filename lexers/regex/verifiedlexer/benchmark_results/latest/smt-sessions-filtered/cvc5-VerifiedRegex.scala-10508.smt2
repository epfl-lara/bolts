; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541966 () Bool)

(assert start!541966)

(declare-fun bs!1195113 () Bool)

(declare-fun b!5128946 () Bool)

(declare-fun b!5128948 () Bool)

(assert (= bs!1195113 (and b!5128946 b!5128948)))

(declare-fun lambda!252855 () Int)

(declare-fun lambda!252854 () Int)

(assert (=> bs!1195113 (not (= lambda!252855 lambda!252854))))

(declare-fun bs!1195114 () Bool)

(declare-fun b!5128940 () Bool)

(assert (= bs!1195114 (and b!5128940 b!5128948)))

(declare-fun lambda!252856 () Int)

(assert (=> bs!1195114 (not (= lambda!252856 lambda!252854))))

(declare-fun bs!1195115 () Bool)

(assert (= bs!1195115 (and b!5128940 b!5128946)))

(assert (=> bs!1195115 (not (= lambda!252856 lambda!252855))))

(declare-fun res!2183919 () Bool)

(declare-fun e!3198726 () Bool)

(assert (=> b!5128940 (=> res!2183919 e!3198726)))

(declare-datatypes ((C!28878 0))(
  ( (C!28879 (val!24091 Int)) )
))
(declare-datatypes ((Regex!14306 0))(
  ( (ElementMatch!14306 (c!882028 C!28878)) (Concat!23151 (regOne!29124 Regex!14306) (regTwo!29124 Regex!14306)) (EmptyExpr!14306) (Star!14306 (reg!14635 Regex!14306)) (EmptyLang!14306) (Union!14306 (regOne!29125 Regex!14306) (regTwo!29125 Regex!14306)) )
))
(declare-datatypes ((List!59541 0))(
  ( (Nil!59417) (Cons!59417 (h!65865 Regex!14306) (t!372568 List!59541)) )
))
(declare-datatypes ((Context!7380 0))(
  ( (Context!7381 (exprs!4190 List!59541)) )
))
(declare-fun lt!2115421 () Context!7380)

(declare-fun exists!1578 (List!59541 Int) Bool)

(assert (=> b!5128940 (= res!2183919 (not (exists!1578 (exprs!4190 lt!2115421) lambda!252856)))))

(declare-fun b!5128941 () Bool)

(declare-fun e!3198728 () Bool)

(declare-fun tp!1430983 () Bool)

(assert (=> b!5128941 (= e!3198728 tp!1430983)))

(declare-fun b!5128942 () Bool)

(declare-fun e!3198729 () Bool)

(declare-fun lt!2115420 () Regex!14306)

(declare-fun nullable!4735 (Regex!14306) Bool)

(assert (=> b!5128942 (= e!3198729 (nullable!4735 lt!2115420))))

(declare-datatypes ((Unit!150621 0))(
  ( (Unit!150622) )
))
(declare-fun lt!2115417 () Unit!150621)

(declare-fun forallContained!4594 (List!59541 Int Regex!14306) Unit!150621)

(assert (=> b!5128942 (= lt!2115417 (forallContained!4594 (exprs!4190 lt!2115421) lambda!252854 lt!2115420))))

(declare-fun lt!2115419 () Unit!150621)

(assert (=> b!5128942 (= lt!2115419 (forallContained!4594 (exprs!4190 lt!2115421) lambda!252855 lt!2115420))))

(declare-fun b!5128943 () Bool)

(declare-fun res!2183925 () Bool)

(declare-fun e!3198730 () Bool)

(assert (=> b!5128943 (=> (not res!2183925) (not e!3198730))))

(declare-fun z!1113 () (Set Context!7380))

(declare-fun lambda!252853 () Int)

(declare-fun exists!1579 ((Set Context!7380) Int) Bool)

(assert (=> b!5128943 (= res!2183925 (exists!1579 z!1113 lambda!252853))))

(declare-fun setIsEmpty!30923 () Bool)

(declare-fun setRes!30923 () Bool)

(assert (=> setIsEmpty!30923 setRes!30923))

(declare-fun b!5128944 () Bool)

(declare-fun e!3198727 () Bool)

(assert (=> b!5128944 (= e!3198730 e!3198727)))

(declare-fun res!2183923 () Bool)

(assert (=> b!5128944 (=> (not res!2183923) (not e!3198727))))

(declare-fun nullableContext!25 (Context!7380) Bool)

(assert (=> b!5128944 (= res!2183923 (nullableContext!25 lt!2115421))))

(declare-fun getWitness!733 ((Set Context!7380) Int) Context!7380)

(assert (=> b!5128944 (= lt!2115421 (getWitness!733 z!1113 lambda!252853))))

(declare-fun res!2183926 () Bool)

(assert (=> start!541966 (=> (not res!2183926) (not e!3198730))))

(declare-fun nullableZipper!1091 ((Set Context!7380)) Bool)

(assert (=> start!541966 (= res!2183926 (nullableZipper!1091 z!1113))))

(assert (=> start!541966 e!3198730))

(declare-fun condSetEmpty!30923 () Bool)

(assert (=> start!541966 (= condSetEmpty!30923 (= z!1113 (as set.empty (Set Context!7380))))))

(assert (=> start!541966 setRes!30923))

(declare-fun b!5128945 () Bool)

(declare-fun res!2183921 () Bool)

(assert (=> b!5128945 (=> res!2183921 e!3198726)))

(declare-fun lostCause!1243 (Context!7380) Bool)

(assert (=> b!5128945 (= res!2183921 (not (lostCause!1243 lt!2115421)))))

(declare-fun res!2183927 () Bool)

(assert (=> b!5128946 (=> res!2183927 e!3198726)))

(declare-fun forall!13699 (List!59541 Int) Bool)

(assert (=> b!5128946 (= res!2183927 (not (forall!13699 (exprs!4190 lt!2115421) lambda!252855)))))

(declare-fun b!5128947 () Bool)

(assert (=> b!5128947 (= e!3198726 e!3198729)))

(declare-fun res!2183922 () Bool)

(assert (=> b!5128947 (=> res!2183922 e!3198729)))

(declare-fun contains!19621 (List!59541 Regex!14306) Bool)

(assert (=> b!5128947 (= res!2183922 (not (contains!19621 (exprs!4190 lt!2115421) lt!2115420)))))

(declare-fun getWitness!734 (List!59541 Int) Regex!14306)

(assert (=> b!5128947 (= lt!2115420 (getWitness!734 (exprs!4190 lt!2115421) lambda!252856))))

(assert (=> b!5128948 (= e!3198727 (not e!3198726))))

(declare-fun res!2183920 () Bool)

(assert (=> b!5128948 (=> res!2183920 e!3198726)))

(assert (=> b!5128948 (= res!2183920 (not (set.member lt!2115421 z!1113)))))

(assert (=> b!5128948 (forall!13699 (exprs!4190 lt!2115421) lambda!252854)))

(declare-fun lt!2115418 () Unit!150621)

(declare-fun lemmaContextForallValidExprs!21 (Context!7380 List!59541) Unit!150621)

(assert (=> b!5128948 (= lt!2115418 (lemmaContextForallValidExprs!21 lt!2115421 (exprs!4190 lt!2115421)))))

(declare-fun b!5128949 () Bool)

(declare-fun res!2183924 () Bool)

(assert (=> b!5128949 (=> res!2183924 e!3198729)))

(declare-fun lostCause!1244 (Regex!14306) Bool)

(assert (=> b!5128949 (= res!2183924 (not (lostCause!1244 lt!2115420)))))

(declare-fun tp!1430982 () Bool)

(declare-fun setElem!30923 () Context!7380)

(declare-fun setNonEmpty!30923 () Bool)

(declare-fun inv!78947 (Context!7380) Bool)

(assert (=> setNonEmpty!30923 (= setRes!30923 (and tp!1430982 (inv!78947 setElem!30923) e!3198728))))

(declare-fun setRest!30923 () (Set Context!7380))

(assert (=> setNonEmpty!30923 (= z!1113 (set.union (set.insert setElem!30923 (as set.empty (Set Context!7380))) setRest!30923))))

(assert (= (and start!541966 res!2183926) b!5128943))

(assert (= (and b!5128943 res!2183925) b!5128944))

(assert (= (and b!5128944 res!2183923) b!5128948))

(assert (= (and b!5128948 (not res!2183920)) b!5128946))

(assert (= (and b!5128946 (not res!2183927)) b!5128945))

(assert (= (and b!5128945 (not res!2183921)) b!5128940))

(assert (= (and b!5128940 (not res!2183919)) b!5128947))

(assert (= (and b!5128947 (not res!2183922)) b!5128949))

(assert (= (and b!5128949 (not res!2183924)) b!5128942))

(assert (= (and start!541966 condSetEmpty!30923) setIsEmpty!30923))

(assert (= (and start!541966 (not condSetEmpty!30923)) setNonEmpty!30923))

(assert (= setNonEmpty!30923 b!5128941))

(declare-fun m!6193370 () Bool)

(assert (=> b!5128946 m!6193370))

(declare-fun m!6193372 () Bool)

(assert (=> b!5128943 m!6193372))

(declare-fun m!6193374 () Bool)

(assert (=> b!5128944 m!6193374))

(declare-fun m!6193376 () Bool)

(assert (=> b!5128944 m!6193376))

(declare-fun m!6193378 () Bool)

(assert (=> setNonEmpty!30923 m!6193378))

(declare-fun m!6193380 () Bool)

(assert (=> b!5128949 m!6193380))

(declare-fun m!6193382 () Bool)

(assert (=> start!541966 m!6193382))

(declare-fun m!6193384 () Bool)

(assert (=> b!5128945 m!6193384))

(declare-fun m!6193386 () Bool)

(assert (=> b!5128942 m!6193386))

(declare-fun m!6193388 () Bool)

(assert (=> b!5128942 m!6193388))

(declare-fun m!6193390 () Bool)

(assert (=> b!5128942 m!6193390))

(declare-fun m!6193392 () Bool)

(assert (=> b!5128947 m!6193392))

(declare-fun m!6193394 () Bool)

(assert (=> b!5128947 m!6193394))

(declare-fun m!6193396 () Bool)

(assert (=> b!5128948 m!6193396))

(declare-fun m!6193398 () Bool)

(assert (=> b!5128948 m!6193398))

(declare-fun m!6193400 () Bool)

(assert (=> b!5128948 m!6193400))

(declare-fun m!6193402 () Bool)

(assert (=> b!5128940 m!6193402))

(push 1)

(assert (not b!5128945))

(assert (not b!5128941))

(assert (not b!5128947))

(assert (not start!541966))

(assert (not b!5128946))

(assert (not b!5128948))

(assert (not b!5128942))

(assert (not b!5128949))

(assert (not b!5128944))

(assert (not b!5128940))

(assert (not b!5128943))

(assert (not setNonEmpty!30923))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1195119 () Bool)

(declare-fun d!1659235 () Bool)

(assert (= bs!1195119 (and d!1659235 b!5128948)))

(declare-fun lambda!252879 () Int)

(assert (=> bs!1195119 (not (= lambda!252879 lambda!252854))))

(declare-fun bs!1195120 () Bool)

(assert (= bs!1195120 (and d!1659235 b!5128946)))

(assert (=> bs!1195120 (not (= lambda!252879 lambda!252855))))

(declare-fun bs!1195121 () Bool)

(assert (= bs!1195121 (and d!1659235 b!5128940)))

(assert (=> bs!1195121 (not (= lambda!252879 lambda!252856))))

(assert (=> d!1659235 true))

(declare-fun order!26827 () Int)

(declare-fun dynLambda!23653 (Int Int) Int)

(assert (=> d!1659235 (< (dynLambda!23653 order!26827 lambda!252856) (dynLambda!23653 order!26827 lambda!252879))))

(assert (=> d!1659235 (= (exists!1578 (exprs!4190 lt!2115421) lambda!252856) (not (forall!13699 (exprs!4190 lt!2115421) lambda!252879)))))

(declare-fun bs!1195122 () Bool)

(assert (= bs!1195122 d!1659235))

(declare-fun m!6193438 () Bool)

(assert (=> bs!1195122 m!6193438))

(assert (=> b!5128940 d!1659235))

(declare-fun bs!1195123 () Bool)

(declare-fun d!1659237 () Bool)

(assert (= bs!1195123 (and d!1659237 b!5128948)))

(declare-fun lambda!252882 () Int)

(assert (=> bs!1195123 (not (= lambda!252882 lambda!252854))))

(declare-fun bs!1195124 () Bool)

(assert (= bs!1195124 (and d!1659237 b!5128946)))

(assert (=> bs!1195124 (= lambda!252882 lambda!252855)))

(declare-fun bs!1195125 () Bool)

(assert (= bs!1195125 (and d!1659237 b!5128940)))

(assert (=> bs!1195125 (not (= lambda!252882 lambda!252856))))

(declare-fun bs!1195126 () Bool)

(assert (= bs!1195126 (and d!1659237 d!1659235)))

(assert (=> bs!1195126 (not (= lambda!252882 lambda!252879))))

(assert (=> d!1659237 (= (nullableContext!25 lt!2115421) (forall!13699 (exprs!4190 lt!2115421) lambda!252882))))

(declare-fun bs!1195127 () Bool)

(assert (= bs!1195127 d!1659237))

(declare-fun m!6193440 () Bool)

(assert (=> bs!1195127 m!6193440))

(assert (=> b!5128944 d!1659237))

(declare-fun d!1659239 () Bool)

(declare-fun e!3198748 () Bool)

(assert (=> d!1659239 e!3198748))

(declare-fun res!2183957 () Bool)

(assert (=> d!1659239 (=> (not res!2183957) (not e!3198748))))

(declare-fun lt!2115439 () Context!7380)

(declare-fun dynLambda!23654 (Int Context!7380) Bool)

(assert (=> d!1659239 (= res!2183957 (dynLambda!23654 lambda!252853 lt!2115439))))

(declare-datatypes ((List!59543 0))(
  ( (Nil!59419) (Cons!59419 (h!65867 Context!7380) (t!372570 List!59543)) )
))
(declare-fun getWitness!737 (List!59543 Int) Context!7380)

(declare-fun toList!8302 ((Set Context!7380)) List!59543)

(assert (=> d!1659239 (= lt!2115439 (getWitness!737 (toList!8302 z!1113) lambda!252853))))

(assert (=> d!1659239 (exists!1579 z!1113 lambda!252853)))

(assert (=> d!1659239 (= (getWitness!733 z!1113 lambda!252853) lt!2115439)))

(declare-fun b!5128984 () Bool)

(assert (=> b!5128984 (= e!3198748 (set.member lt!2115439 z!1113))))

(assert (= (and d!1659239 res!2183957) b!5128984))

(declare-fun b_lambda!199301 () Bool)

(assert (=> (not b_lambda!199301) (not d!1659239)))

(declare-fun m!6193442 () Bool)

(assert (=> d!1659239 m!6193442))

(declare-fun m!6193444 () Bool)

(assert (=> d!1659239 m!6193444))

(assert (=> d!1659239 m!6193444))

(declare-fun m!6193446 () Bool)

(assert (=> d!1659239 m!6193446))

(assert (=> d!1659239 m!6193372))

(declare-fun m!6193448 () Bool)

(assert (=> b!5128984 m!6193448))

(assert (=> b!5128944 d!1659239))

(declare-fun d!1659241 () Bool)

(declare-fun lostCauseFct!308 (Regex!14306) Bool)

(assert (=> d!1659241 (= (lostCause!1244 lt!2115420) (lostCauseFct!308 lt!2115420))))

(declare-fun bs!1195128 () Bool)

(assert (= bs!1195128 d!1659241))

(declare-fun m!6193450 () Bool)

(assert (=> bs!1195128 m!6193450))

(assert (=> b!5128949 d!1659241))

(declare-fun bs!1195129 () Bool)

(declare-fun d!1659243 () Bool)

(assert (= bs!1195129 (and d!1659243 d!1659237)))

(declare-fun lambda!252885 () Int)

(assert (=> bs!1195129 (not (= lambda!252885 lambda!252882))))

(declare-fun bs!1195130 () Bool)

(assert (= bs!1195130 (and d!1659243 b!5128948)))

(assert (=> bs!1195130 (not (= lambda!252885 lambda!252854))))

(declare-fun bs!1195131 () Bool)

(assert (= bs!1195131 (and d!1659243 b!5128940)))

(assert (=> bs!1195131 (= lambda!252885 lambda!252856)))

(declare-fun bs!1195132 () Bool)

(assert (= bs!1195132 (and d!1659243 b!5128946)))

(assert (=> bs!1195132 (not (= lambda!252885 lambda!252855))))

(declare-fun bs!1195133 () Bool)

(assert (= bs!1195133 (and d!1659243 d!1659235)))

(assert (=> bs!1195133 (not (= lambda!252885 lambda!252879))))

(assert (=> d!1659243 (= (lostCause!1243 lt!2115421) (exists!1578 (exprs!4190 lt!2115421) lambda!252885))))

(declare-fun bs!1195134 () Bool)

(assert (= bs!1195134 d!1659243))

(declare-fun m!6193452 () Bool)

(assert (=> bs!1195134 m!6193452))

(assert (=> b!5128945 d!1659243))

(declare-fun bs!1195135 () Bool)

(declare-fun d!1659245 () Bool)

(assert (= bs!1195135 (and d!1659245 d!1659237)))

(declare-fun lambda!252888 () Int)

(assert (=> bs!1195135 (not (= lambda!252888 lambda!252882))))

(declare-fun bs!1195136 () Bool)

(assert (= bs!1195136 (and d!1659245 b!5128948)))

(assert (=> bs!1195136 (= lambda!252888 lambda!252854)))

(declare-fun bs!1195137 () Bool)

(assert (= bs!1195137 (and d!1659245 b!5128940)))

(assert (=> bs!1195137 (not (= lambda!252888 lambda!252856))))

(declare-fun bs!1195138 () Bool)

(assert (= bs!1195138 (and d!1659245 b!5128946)))

(assert (=> bs!1195138 (not (= lambda!252888 lambda!252855))))

(declare-fun bs!1195139 () Bool)

(assert (= bs!1195139 (and d!1659245 d!1659243)))

(assert (=> bs!1195139 (not (= lambda!252888 lambda!252885))))

(declare-fun bs!1195140 () Bool)

(assert (= bs!1195140 (and d!1659245 d!1659235)))

(assert (=> bs!1195140 (not (= lambda!252888 lambda!252879))))

(assert (=> d!1659245 (= (inv!78947 setElem!30923) (forall!13699 (exprs!4190 setElem!30923) lambda!252888))))

(declare-fun bs!1195141 () Bool)

(assert (= bs!1195141 d!1659245))

(declare-fun m!6193454 () Bool)

(assert (=> bs!1195141 m!6193454))

(assert (=> setNonEmpty!30923 d!1659245))

(declare-fun d!1659247 () Bool)

(declare-fun lt!2115442 () Bool)

(declare-fun content!10562 (List!59541) (Set Regex!14306))

(assert (=> d!1659247 (= lt!2115442 (set.member lt!2115420 (content!10562 (exprs!4190 lt!2115421))))))

(declare-fun e!3198754 () Bool)

(assert (=> d!1659247 (= lt!2115442 e!3198754)))

(declare-fun res!2183962 () Bool)

(assert (=> d!1659247 (=> (not res!2183962) (not e!3198754))))

(assert (=> d!1659247 (= res!2183962 (is-Cons!59417 (exprs!4190 lt!2115421)))))

(assert (=> d!1659247 (= (contains!19621 (exprs!4190 lt!2115421) lt!2115420) lt!2115442)))

(declare-fun b!5128989 () Bool)

(declare-fun e!3198753 () Bool)

(assert (=> b!5128989 (= e!3198754 e!3198753)))

(declare-fun res!2183963 () Bool)

(assert (=> b!5128989 (=> res!2183963 e!3198753)))

(assert (=> b!5128989 (= res!2183963 (= (h!65865 (exprs!4190 lt!2115421)) lt!2115420))))

(declare-fun b!5128990 () Bool)

(assert (=> b!5128990 (= e!3198753 (contains!19621 (t!372568 (exprs!4190 lt!2115421)) lt!2115420))))

(assert (= (and d!1659247 res!2183962) b!5128989))

(assert (= (and b!5128989 (not res!2183963)) b!5128990))

(declare-fun m!6193456 () Bool)

(assert (=> d!1659247 m!6193456))

(declare-fun m!6193458 () Bool)

(assert (=> d!1659247 m!6193458))

(declare-fun m!6193460 () Bool)

(assert (=> b!5128990 m!6193460))

(assert (=> b!5128947 d!1659247))

(declare-fun b!5129003 () Bool)

(declare-fun e!3198763 () Bool)

(declare-fun dynLambda!23655 (Int Regex!14306) Bool)

(assert (=> b!5129003 (= e!3198763 (dynLambda!23655 lambda!252856 (h!65865 (exprs!4190 lt!2115421))))))

(declare-fun b!5129004 () Bool)

(declare-fun lt!2115447 () Unit!150621)

(declare-fun Unit!150625 () Unit!150621)

(assert (=> b!5129004 (= lt!2115447 Unit!150625)))

(assert (=> b!5129004 false))

(declare-fun e!3198766 () Regex!14306)

(declare-fun head!10974 (List!59541) Regex!14306)

(assert (=> b!5129004 (= e!3198766 (head!10974 (exprs!4190 lt!2115421)))))

(declare-fun b!5129005 () Bool)

(declare-fun e!3198764 () Regex!14306)

(assert (=> b!5129005 (= e!3198764 e!3198766)))

(declare-fun c!882041 () Bool)

(assert (=> b!5129005 (= c!882041 (is-Cons!59417 (exprs!4190 lt!2115421)))))

(declare-fun b!5129007 () Bool)

(assert (=> b!5129007 (= e!3198766 (getWitness!734 (t!372568 (exprs!4190 lt!2115421)) lambda!252856))))

(declare-fun b!5129008 () Bool)

(declare-fun e!3198765 () Bool)

(declare-fun lt!2115448 () Regex!14306)

(assert (=> b!5129008 (= e!3198765 (contains!19621 (exprs!4190 lt!2115421) lt!2115448))))

(declare-fun b!5129006 () Bool)

(assert (=> b!5129006 (= e!3198764 (h!65865 (exprs!4190 lt!2115421)))))

(declare-fun d!1659251 () Bool)

(assert (=> d!1659251 e!3198765))

(declare-fun res!2183969 () Bool)

(assert (=> d!1659251 (=> (not res!2183969) (not e!3198765))))

(assert (=> d!1659251 (= res!2183969 (dynLambda!23655 lambda!252856 lt!2115448))))

(assert (=> d!1659251 (= lt!2115448 e!3198764)))

(declare-fun c!882040 () Bool)

(assert (=> d!1659251 (= c!882040 e!3198763)))

(declare-fun res!2183968 () Bool)

(assert (=> d!1659251 (=> (not res!2183968) (not e!3198763))))

(assert (=> d!1659251 (= res!2183968 (is-Cons!59417 (exprs!4190 lt!2115421)))))

(assert (=> d!1659251 (exists!1578 (exprs!4190 lt!2115421) lambda!252856)))

(assert (=> d!1659251 (= (getWitness!734 (exprs!4190 lt!2115421) lambda!252856) lt!2115448)))

(assert (= (and d!1659251 res!2183968) b!5129003))

(assert (= (and d!1659251 c!882040) b!5129006))

(assert (= (and d!1659251 (not c!882040)) b!5129005))

(assert (= (and b!5129005 c!882041) b!5129007))

(assert (= (and b!5129005 (not c!882041)) b!5129004))

(assert (= (and d!1659251 res!2183969) b!5129008))

(declare-fun b_lambda!199303 () Bool)

(assert (=> (not b_lambda!199303) (not b!5129003)))

(declare-fun b_lambda!199305 () Bool)

(assert (=> (not b_lambda!199305) (not d!1659251)))

(declare-fun m!6193464 () Bool)

(assert (=> b!5129008 m!6193464))

(declare-fun m!6193466 () Bool)

(assert (=> d!1659251 m!6193466))

(assert (=> d!1659251 m!6193402))

(declare-fun m!6193468 () Bool)

(assert (=> b!5129003 m!6193468))

(declare-fun m!6193470 () Bool)

(assert (=> b!5129004 m!6193470))

(declare-fun m!6193472 () Bool)

(assert (=> b!5129007 m!6193472))

(assert (=> b!5128947 d!1659251))

(declare-fun d!1659255 () Bool)

(declare-fun nullableFct!1277 (Regex!14306) Bool)

(assert (=> d!1659255 (= (nullable!4735 lt!2115420) (nullableFct!1277 lt!2115420))))

(declare-fun bs!1195146 () Bool)

(assert (= bs!1195146 d!1659255))

(declare-fun m!6193474 () Bool)

(assert (=> bs!1195146 m!6193474))

(assert (=> b!5128942 d!1659255))

(declare-fun d!1659257 () Bool)

(assert (=> d!1659257 (dynLambda!23655 lambda!252854 lt!2115420)))

(declare-fun lt!2115453 () Unit!150621)

(declare-fun choose!37806 (List!59541 Int Regex!14306) Unit!150621)

(assert (=> d!1659257 (= lt!2115453 (choose!37806 (exprs!4190 lt!2115421) lambda!252854 lt!2115420))))

(declare-fun e!3198771 () Bool)

(assert (=> d!1659257 e!3198771))

(declare-fun res!2183974 () Bool)

(assert (=> d!1659257 (=> (not res!2183974) (not e!3198771))))

(assert (=> d!1659257 (= res!2183974 (forall!13699 (exprs!4190 lt!2115421) lambda!252854))))

(assert (=> d!1659257 (= (forallContained!4594 (exprs!4190 lt!2115421) lambda!252854 lt!2115420) lt!2115453)))

(declare-fun b!5129013 () Bool)

(assert (=> b!5129013 (= e!3198771 (contains!19621 (exprs!4190 lt!2115421) lt!2115420))))

(assert (= (and d!1659257 res!2183974) b!5129013))

(declare-fun b_lambda!199307 () Bool)

(assert (=> (not b_lambda!199307) (not d!1659257)))

(declare-fun m!6193476 () Bool)

(assert (=> d!1659257 m!6193476))

(declare-fun m!6193478 () Bool)

(assert (=> d!1659257 m!6193478))

(assert (=> d!1659257 m!6193398))

(assert (=> b!5129013 m!6193392))

(assert (=> b!5128942 d!1659257))

(declare-fun d!1659259 () Bool)

(assert (=> d!1659259 (dynLambda!23655 lambda!252855 lt!2115420)))

(declare-fun lt!2115454 () Unit!150621)

(assert (=> d!1659259 (= lt!2115454 (choose!37806 (exprs!4190 lt!2115421) lambda!252855 lt!2115420))))

(declare-fun e!3198772 () Bool)

(assert (=> d!1659259 e!3198772))

(declare-fun res!2183975 () Bool)

(assert (=> d!1659259 (=> (not res!2183975) (not e!3198772))))

(assert (=> d!1659259 (= res!2183975 (forall!13699 (exprs!4190 lt!2115421) lambda!252855))))

(assert (=> d!1659259 (= (forallContained!4594 (exprs!4190 lt!2115421) lambda!252855 lt!2115420) lt!2115454)))

(declare-fun b!5129014 () Bool)

(assert (=> b!5129014 (= e!3198772 (contains!19621 (exprs!4190 lt!2115421) lt!2115420))))

(assert (= (and d!1659259 res!2183975) b!5129014))

(declare-fun b_lambda!199309 () Bool)

(assert (=> (not b_lambda!199309) (not d!1659259)))

(declare-fun m!6193480 () Bool)

(assert (=> d!1659259 m!6193480))

(declare-fun m!6193482 () Bool)

(assert (=> d!1659259 m!6193482))

(assert (=> d!1659259 m!6193370))

(assert (=> b!5129014 m!6193392))

(assert (=> b!5128942 d!1659259))

(declare-fun d!1659261 () Bool)

(declare-fun res!2183981 () Bool)

(declare-fun e!3198778 () Bool)

(assert (=> d!1659261 (=> res!2183981 e!3198778)))

(assert (=> d!1659261 (= res!2183981 (is-Nil!59417 (exprs!4190 lt!2115421)))))

(assert (=> d!1659261 (= (forall!13699 (exprs!4190 lt!2115421) lambda!252855) e!3198778)))

(declare-fun b!5129020 () Bool)

(declare-fun e!3198779 () Bool)

(assert (=> b!5129020 (= e!3198778 e!3198779)))

(declare-fun res!2183982 () Bool)

(assert (=> b!5129020 (=> (not res!2183982) (not e!3198779))))

(assert (=> b!5129020 (= res!2183982 (dynLambda!23655 lambda!252855 (h!65865 (exprs!4190 lt!2115421))))))

(declare-fun b!5129021 () Bool)

(assert (=> b!5129021 (= e!3198779 (forall!13699 (t!372568 (exprs!4190 lt!2115421)) lambda!252855))))

(assert (= (and d!1659261 (not res!2183981)) b!5129020))

(assert (= (and b!5129020 res!2183982) b!5129021))

(declare-fun b_lambda!199313 () Bool)

(assert (=> (not b_lambda!199313) (not b!5129020)))

(declare-fun m!6193492 () Bool)

(assert (=> b!5129020 m!6193492))

(declare-fun m!6193494 () Bool)

(assert (=> b!5129021 m!6193494))

(assert (=> b!5128946 d!1659261))

(declare-fun bs!1195147 () Bool)

(declare-fun d!1659265 () Bool)

(assert (= bs!1195147 (and d!1659265 b!5128943)))

(declare-fun lambda!252894 () Int)

(assert (=> bs!1195147 (= lambda!252894 lambda!252853)))

(assert (=> d!1659265 (= (nullableZipper!1091 z!1113) (exists!1579 z!1113 lambda!252894))))

(declare-fun bs!1195148 () Bool)

(assert (= bs!1195148 d!1659265))

(declare-fun m!6193496 () Bool)

(assert (=> bs!1195148 m!6193496))

(assert (=> start!541966 d!1659265))

(declare-fun d!1659267 () Bool)

(declare-fun res!2183983 () Bool)

(declare-fun e!3198780 () Bool)

(assert (=> d!1659267 (=> res!2183983 e!3198780)))

(assert (=> d!1659267 (= res!2183983 (is-Nil!59417 (exprs!4190 lt!2115421)))))

(assert (=> d!1659267 (= (forall!13699 (exprs!4190 lt!2115421) lambda!252854) e!3198780)))

(declare-fun b!5129022 () Bool)

(declare-fun e!3198781 () Bool)

(assert (=> b!5129022 (= e!3198780 e!3198781)))

(declare-fun res!2183984 () Bool)

(assert (=> b!5129022 (=> (not res!2183984) (not e!3198781))))

(assert (=> b!5129022 (= res!2183984 (dynLambda!23655 lambda!252854 (h!65865 (exprs!4190 lt!2115421))))))

(declare-fun b!5129023 () Bool)

(assert (=> b!5129023 (= e!3198781 (forall!13699 (t!372568 (exprs!4190 lt!2115421)) lambda!252854))))

(assert (= (and d!1659267 (not res!2183983)) b!5129022))

(assert (= (and b!5129022 res!2183984) b!5129023))

(declare-fun b_lambda!199315 () Bool)

(assert (=> (not b_lambda!199315) (not b!5129022)))

(declare-fun m!6193498 () Bool)

(assert (=> b!5129022 m!6193498))

(declare-fun m!6193502 () Bool)

(assert (=> b!5129023 m!6193502))

(assert (=> b!5128948 d!1659267))

(declare-fun bs!1195151 () Bool)

(declare-fun d!1659269 () Bool)

(assert (= bs!1195151 (and d!1659269 d!1659237)))

(declare-fun lambda!252897 () Int)

(assert (=> bs!1195151 (not (= lambda!252897 lambda!252882))))

(declare-fun bs!1195152 () Bool)

(assert (= bs!1195152 (and d!1659269 b!5128948)))

(assert (=> bs!1195152 (= lambda!252897 lambda!252854)))

(declare-fun bs!1195153 () Bool)

(assert (= bs!1195153 (and d!1659269 d!1659245)))

(assert (=> bs!1195153 (= lambda!252897 lambda!252888)))

(declare-fun bs!1195154 () Bool)

(assert (= bs!1195154 (and d!1659269 b!5128940)))

(assert (=> bs!1195154 (not (= lambda!252897 lambda!252856))))

(declare-fun bs!1195155 () Bool)

(assert (= bs!1195155 (and d!1659269 b!5128946)))

(assert (=> bs!1195155 (not (= lambda!252897 lambda!252855))))

(declare-fun bs!1195156 () Bool)

(assert (= bs!1195156 (and d!1659269 d!1659243)))

(assert (=> bs!1195156 (not (= lambda!252897 lambda!252885))))

(declare-fun bs!1195157 () Bool)

(assert (= bs!1195157 (and d!1659269 d!1659235)))

(assert (=> bs!1195157 (not (= lambda!252897 lambda!252879))))

(assert (=> d!1659269 (forall!13699 (exprs!4190 lt!2115421) lambda!252897)))

(declare-fun lt!2115461 () Unit!150621)

(declare-fun choose!37807 (Context!7380 List!59541) Unit!150621)

(assert (=> d!1659269 (= lt!2115461 (choose!37807 lt!2115421 (exprs!4190 lt!2115421)))))

(assert (=> d!1659269 (= (exprs!4190 lt!2115421) (exprs!4190 lt!2115421))))

(assert (=> d!1659269 (= (lemmaContextForallValidExprs!21 lt!2115421 (exprs!4190 lt!2115421)) lt!2115461)))

(declare-fun bs!1195158 () Bool)

(assert (= bs!1195158 d!1659269))

(declare-fun m!6193508 () Bool)

(assert (=> bs!1195158 m!6193508))

(declare-fun m!6193510 () Bool)

(assert (=> bs!1195158 m!6193510))

(assert (=> b!5128948 d!1659269))

(declare-fun d!1659275 () Bool)

(declare-fun lt!2115466 () Bool)

(declare-fun exists!1582 (List!59543 Int) Bool)

(assert (=> d!1659275 (= lt!2115466 (exists!1582 (toList!8302 z!1113) lambda!252853))))

(declare-fun choose!37808 ((Set Context!7380) Int) Bool)

(assert (=> d!1659275 (= lt!2115466 (choose!37808 z!1113 lambda!252853))))

(assert (=> d!1659275 (= (exists!1579 z!1113 lambda!252853) lt!2115466)))

(declare-fun bs!1195159 () Bool)

(assert (= bs!1195159 d!1659275))

(assert (=> bs!1195159 m!6193444))

(assert (=> bs!1195159 m!6193444))

(declare-fun m!6193512 () Bool)

(assert (=> bs!1195159 m!6193512))

(declare-fun m!6193514 () Bool)

(assert (=> bs!1195159 m!6193514))

(assert (=> b!5128943 d!1659275))

(declare-fun b!5129031 () Bool)

(declare-fun e!3198787 () Bool)

(declare-fun tp!1430994 () Bool)

(declare-fun tp!1430995 () Bool)

(assert (=> b!5129031 (= e!3198787 (and tp!1430994 tp!1430995))))

(assert (=> b!5128941 (= tp!1430983 e!3198787)))

(assert (= (and b!5128941 (is-Cons!59417 (exprs!4190 setElem!30923))) b!5129031))

(declare-fun condSetEmpty!30929 () Bool)

(assert (=> setNonEmpty!30923 (= condSetEmpty!30929 (= setRest!30923 (as set.empty (Set Context!7380))))))

(declare-fun setRes!30929 () Bool)

(assert (=> setNonEmpty!30923 (= tp!1430982 setRes!30929)))

(declare-fun setIsEmpty!30929 () Bool)

(assert (=> setIsEmpty!30929 setRes!30929))

(declare-fun setNonEmpty!30929 () Bool)

(declare-fun tp!1431000 () Bool)

(declare-fun setElem!30929 () Context!7380)

(declare-fun e!3198791 () Bool)

(assert (=> setNonEmpty!30929 (= setRes!30929 (and tp!1431000 (inv!78947 setElem!30929) e!3198791))))

(declare-fun setRest!30929 () (Set Context!7380))

(assert (=> setNonEmpty!30929 (= setRest!30923 (set.union (set.insert setElem!30929 (as set.empty (Set Context!7380))) setRest!30929))))

(declare-fun b!5129037 () Bool)

(declare-fun tp!1431001 () Bool)

(assert (=> b!5129037 (= e!3198791 tp!1431001)))

(assert (= (and setNonEmpty!30923 condSetEmpty!30929) setIsEmpty!30929))

(assert (= (and setNonEmpty!30923 (not condSetEmpty!30929)) setNonEmpty!30929))

(assert (= setNonEmpty!30929 b!5129037))

(declare-fun m!6193524 () Bool)

(assert (=> setNonEmpty!30929 m!6193524))

(declare-fun b_lambda!199321 () Bool)

(assert (= b_lambda!199301 (or b!5128943 b_lambda!199321)))

(declare-fun bs!1195160 () Bool)

(declare-fun d!1659281 () Bool)

(assert (= bs!1195160 (and d!1659281 b!5128943)))

(assert (=> bs!1195160 (= (dynLambda!23654 lambda!252853 lt!2115439) (nullableContext!25 lt!2115439))))

(declare-fun m!6193526 () Bool)

(assert (=> bs!1195160 m!6193526))

(assert (=> d!1659239 d!1659281))

(declare-fun b_lambda!199323 () Bool)

(assert (= b_lambda!199313 (or b!5128946 b_lambda!199323)))

(declare-fun bs!1195161 () Bool)

(declare-fun d!1659283 () Bool)

(assert (= bs!1195161 (and d!1659283 b!5128946)))

(assert (=> bs!1195161 (= (dynLambda!23655 lambda!252855 (h!65865 (exprs!4190 lt!2115421))) (nullable!4735 (h!65865 (exprs!4190 lt!2115421))))))

(declare-fun m!6193528 () Bool)

(assert (=> bs!1195161 m!6193528))

(assert (=> b!5129020 d!1659283))

(declare-fun b_lambda!199325 () Bool)

(assert (= b_lambda!199307 (or b!5128948 b_lambda!199325)))

(declare-fun bs!1195162 () Bool)

(declare-fun d!1659285 () Bool)

(assert (= bs!1195162 (and d!1659285 b!5128948)))

(declare-fun validRegex!6231 (Regex!14306) Bool)

(assert (=> bs!1195162 (= (dynLambda!23655 lambda!252854 lt!2115420) (validRegex!6231 lt!2115420))))

(declare-fun m!6193530 () Bool)

(assert (=> bs!1195162 m!6193530))

(assert (=> d!1659257 d!1659285))

(declare-fun b_lambda!199327 () Bool)

(assert (= b_lambda!199303 (or b!5128940 b_lambda!199327)))

(declare-fun bs!1195163 () Bool)

(declare-fun d!1659287 () Bool)

(assert (= bs!1195163 (and d!1659287 b!5128940)))

(assert (=> bs!1195163 (= (dynLambda!23655 lambda!252856 (h!65865 (exprs!4190 lt!2115421))) (lostCause!1244 (h!65865 (exprs!4190 lt!2115421))))))

(declare-fun m!6193532 () Bool)

(assert (=> bs!1195163 m!6193532))

(assert (=> b!5129003 d!1659287))

(declare-fun b_lambda!199329 () Bool)

(assert (= b_lambda!199315 (or b!5128948 b_lambda!199329)))

(declare-fun bs!1195164 () Bool)

(declare-fun d!1659289 () Bool)

(assert (= bs!1195164 (and d!1659289 b!5128948)))

(assert (=> bs!1195164 (= (dynLambda!23655 lambda!252854 (h!65865 (exprs!4190 lt!2115421))) (validRegex!6231 (h!65865 (exprs!4190 lt!2115421))))))

(declare-fun m!6193534 () Bool)

(assert (=> bs!1195164 m!6193534))

(assert (=> b!5129022 d!1659289))

(declare-fun b_lambda!199331 () Bool)

(assert (= b_lambda!199305 (or b!5128940 b_lambda!199331)))

(declare-fun bs!1195165 () Bool)

(declare-fun d!1659291 () Bool)

(assert (= bs!1195165 (and d!1659291 b!5128940)))

(assert (=> bs!1195165 (= (dynLambda!23655 lambda!252856 lt!2115448) (lostCause!1244 lt!2115448))))

(declare-fun m!6193536 () Bool)

(assert (=> bs!1195165 m!6193536))

(assert (=> d!1659251 d!1659291))

(declare-fun b_lambda!199333 () Bool)

(assert (= b_lambda!199309 (or b!5128946 b_lambda!199333)))

(declare-fun bs!1195166 () Bool)

(declare-fun d!1659293 () Bool)

(assert (= bs!1195166 (and d!1659293 b!5128946)))

(assert (=> bs!1195166 (= (dynLambda!23655 lambda!252855 lt!2115420) (nullable!4735 lt!2115420))))

(assert (=> bs!1195166 m!6193386))

(assert (=> d!1659259 d!1659293))

(push 1)

(assert (not d!1659259))

(assert (not b!5129021))

(assert (not bs!1195166))

(assert (not setNonEmpty!30929))

(assert (not b!5129008))

(assert (not b!5129013))

(assert (not b!5128990))

(assert (not d!1659257))

(assert (not b!5129031))

(assert (not d!1659275))

(assert (not b!5129037))

(assert (not b!5129023))

(assert (not bs!1195162))

(assert (not d!1659269))

(assert (not d!1659255))

(assert (not d!1659247))

(assert (not bs!1195164))

(assert (not d!1659265))

(assert (not b_lambda!199325))

(assert (not b_lambda!199323))

(assert (not d!1659251))

(assert (not b_lambda!199331))

(assert (not b!5129014))

(assert (not bs!1195163))

(assert (not d!1659245))

(assert (not bs!1195161))

(assert (not bs!1195160))

(assert (not d!1659243))

(assert (not b!5129004))

(assert (not b_lambda!199321))

(assert (not d!1659241))

(assert (not b_lambda!199333))

(assert (not b_lambda!199329))

(assert (not d!1659239))

(assert (not d!1659235))

(assert (not b!5129007))

(assert (not bs!1195165))

(assert (not d!1659237))

(assert (not b_lambda!199327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

