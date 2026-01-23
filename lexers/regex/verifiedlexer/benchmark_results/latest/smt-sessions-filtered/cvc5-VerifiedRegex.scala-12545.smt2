; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696646 () Bool)

(assert start!696646)

(declare-fun b!7145022 () Bool)

(declare-fun e!4293824 () Bool)

(declare-fun e!4293823 () Bool)

(assert (=> b!7145022 (= e!4293824 e!4293823)))

(declare-fun res!2915234 () Bool)

(assert (=> b!7145022 (=> res!2915234 e!4293823)))

(declare-datatypes ((C!36670 0))(
  ( (C!36671 (val!28283 Int)) )
))
(declare-datatypes ((Regex!18198 0))(
  ( (ElementMatch!18198 (c!1332455 C!36670)) (Concat!27043 (regOne!36908 Regex!18198) (regTwo!36908 Regex!18198)) (EmptyExpr!18198) (Star!18198 (reg!18527 Regex!18198)) (EmptyLang!18198) (Union!18198 (regOne!36909 Regex!18198) (regTwo!36909 Regex!18198)) )
))
(declare-datatypes ((List!69474 0))(
  ( (Nil!69350) (Cons!69350 (h!75798 Regex!18198) (t!383491 List!69474)) )
))
(declare-datatypes ((Context!14384 0))(
  ( (Context!14385 (exprs!7692 List!69474)) )
))
(declare-fun lt!2568561 () Context!14384)

(declare-fun z!3189 () (Set Context!14384))

(assert (=> b!7145022 (= res!2915234 (not (set.member lt!2568561 z!3189)))))

(declare-fun lambda!435540 () Int)

(declare-fun getWitness!1983 ((Set Context!14384) Int) Context!14384)

(assert (=> b!7145022 (= lt!2568561 (getWitness!1983 z!3189 lambda!435540))))

(declare-fun b!7145023 () Bool)

(declare-fun res!2915235 () Bool)

(assert (=> b!7145023 (=> res!2915235 e!4293824)))

(declare-fun lt!2568557 () Bool)

(assert (=> b!7145023 (= res!2915235 lt!2568557)))

(declare-fun res!2915232 () Bool)

(declare-fun e!4293827 () Bool)

(assert (=> start!696646 (=> (not res!2915232) (not e!4293827))))

(declare-fun r!11483 () Regex!18198)

(declare-fun validRegex!9365 (Regex!18198) Bool)

(assert (=> start!696646 (= res!2915232 (validRegex!9365 r!11483))))

(assert (=> start!696646 e!4293827))

(declare-fun e!4293829 () Bool)

(assert (=> start!696646 e!4293829))

(declare-fun condSetEmpty!52702 () Bool)

(assert (=> start!696646 (= condSetEmpty!52702 (= z!3189 (as set.empty (Set Context!14384))))))

(declare-fun setRes!52702 () Bool)

(assert (=> start!696646 setRes!52702))

(declare-fun setIsEmpty!52702 () Bool)

(assert (=> setIsEmpty!52702 setRes!52702))

(declare-fun setElem!52702 () Context!14384)

(declare-fun tp!1970998 () Bool)

(declare-fun setNonEmpty!52702 () Bool)

(declare-fun e!4293826 () Bool)

(declare-fun inv!88560 (Context!14384) Bool)

(assert (=> setNonEmpty!52702 (= setRes!52702 (and tp!1970998 (inv!88560 setElem!52702) e!4293826))))

(declare-fun setRest!52702 () (Set Context!14384))

(assert (=> setNonEmpty!52702 (= z!3189 (set.union (set.insert setElem!52702 (as set.empty (Set Context!14384))) setRest!52702))))

(declare-fun b!7145024 () Bool)

(declare-datatypes ((List!69475 0))(
  ( (Nil!69351) (Cons!69351 (h!75799 Context!14384) (t!383492 List!69475)) )
))
(declare-fun lt!2568558 () List!69475)

(declare-fun contains!20630 (List!69475 Context!14384) Bool)

(assert (=> b!7145024 (= e!4293823 (contains!20630 lt!2568558 lt!2568561))))

(declare-fun b!7145025 () Bool)

(declare-fun tp!1970999 () Bool)

(declare-fun tp!1971002 () Bool)

(assert (=> b!7145025 (= e!4293829 (and tp!1970999 tp!1971002))))

(declare-fun b!7145026 () Bool)

(declare-fun res!2915236 () Bool)

(assert (=> b!7145026 (=> res!2915236 e!4293824)))

(declare-fun lt!2568559 () List!69474)

(declare-fun lambda!435539 () Int)

(declare-fun exists!4020 (List!69474 Int) Bool)

(assert (=> b!7145026 (= res!2915236 (exists!4020 lt!2568559 lambda!435539))))

(declare-fun b!7145027 () Bool)

(declare-fun e!4293825 () Bool)

(declare-fun e!4293828 () Bool)

(assert (=> b!7145027 (= e!4293825 e!4293828)))

(declare-fun res!2915238 () Bool)

(assert (=> b!7145027 (=> (not res!2915238) (not e!4293828))))

(declare-fun lt!2568560 () Regex!18198)

(assert (=> b!7145027 (= res!2915238 (= r!11483 lt!2568560))))

(declare-fun generalisedUnion!2703 (List!69474) Regex!18198)

(assert (=> b!7145027 (= lt!2568560 (generalisedUnion!2703 lt!2568559))))

(declare-fun unfocusZipperList!2239 (List!69475) List!69474)

(assert (=> b!7145027 (= lt!2568559 (unfocusZipperList!2239 lt!2568558))))

(declare-fun b!7145028 () Bool)

(declare-fun res!2915230 () Bool)

(assert (=> b!7145028 (=> res!2915230 e!4293824)))

(declare-fun exists!4021 ((Set Context!14384) Int) Bool)

(assert (=> b!7145028 (= res!2915230 (not (exists!4021 z!3189 lambda!435540)))))

(declare-fun b!7145029 () Bool)

(declare-fun tp!1971000 () Bool)

(declare-fun tp!1970997 () Bool)

(assert (=> b!7145029 (= e!4293829 (and tp!1971000 tp!1970997))))

(declare-fun b!7145030 () Bool)

(declare-fun res!2915233 () Bool)

(assert (=> b!7145030 (=> res!2915233 e!4293823)))

(declare-fun nullableContext!163 (Context!14384) Bool)

(assert (=> b!7145030 (= res!2915233 (not (nullableContext!163 lt!2568561)))))

(declare-fun b!7145031 () Bool)

(declare-fun tp!1970996 () Bool)

(assert (=> b!7145031 (= e!4293829 tp!1970996)))

(declare-fun b!7145032 () Bool)

(declare-fun tp!1971001 () Bool)

(assert (=> b!7145032 (= e!4293826 tp!1971001)))

(declare-fun b!7145033 () Bool)

(declare-fun tp_is_empty!46033 () Bool)

(assert (=> b!7145033 (= e!4293829 tp_is_empty!46033)))

(declare-fun b!7145034 () Bool)

(assert (=> b!7145034 (= e!4293827 e!4293825)))

(declare-fun res!2915237 () Bool)

(assert (=> b!7145034 (=> (not res!2915237) (not e!4293825))))

(declare-fun unfocusZipper!2546 (List!69475) Regex!18198)

(assert (=> b!7145034 (= res!2915237 (= r!11483 (unfocusZipper!2546 lt!2568558)))))

(declare-fun toList!11229 ((Set Context!14384)) List!69475)

(assert (=> b!7145034 (= lt!2568558 (toList!11229 z!3189))))

(declare-fun b!7145035 () Bool)

(assert (=> b!7145035 (= e!4293828 (not e!4293824))))

(declare-fun res!2915231 () Bool)

(assert (=> b!7145035 (=> res!2915231 e!4293824)))

(assert (=> b!7145035 (= res!2915231 (not (= lt!2568557 (exists!4020 lt!2568559 lambda!435539))))))

(assert (=> b!7145035 (= lt!2568557 (exists!4020 lt!2568559 lambda!435539))))

(declare-fun nullable!7715 (Regex!18198) Bool)

(assert (=> b!7145035 (= lt!2568557 (nullable!7715 lt!2568560))))

(declare-datatypes ((Unit!163263 0))(
  ( (Unit!163264) )
))
(declare-fun lt!2568562 () Unit!163263)

(declare-fun nullableGenUnionSpec!79 (Regex!18198 List!69474) Unit!163263)

(assert (=> b!7145035 (= lt!2568562 (nullableGenUnionSpec!79 lt!2568560 lt!2568559))))

(assert (= (and start!696646 res!2915232) b!7145034))

(assert (= (and b!7145034 res!2915237) b!7145027))

(assert (= (and b!7145027 res!2915238) b!7145035))

(assert (= (and b!7145035 (not res!2915231)) b!7145023))

(assert (= (and b!7145023 (not res!2915235)) b!7145026))

(assert (= (and b!7145026 (not res!2915236)) b!7145028))

(assert (= (and b!7145028 (not res!2915230)) b!7145022))

(assert (= (and b!7145022 (not res!2915234)) b!7145030))

(assert (= (and b!7145030 (not res!2915233)) b!7145024))

(assert (= (and start!696646 (is-ElementMatch!18198 r!11483)) b!7145033))

(assert (= (and start!696646 (is-Concat!27043 r!11483)) b!7145025))

(assert (= (and start!696646 (is-Star!18198 r!11483)) b!7145031))

(assert (= (and start!696646 (is-Union!18198 r!11483)) b!7145029))

(assert (= (and start!696646 condSetEmpty!52702) setIsEmpty!52702))

(assert (= (and start!696646 (not condSetEmpty!52702)) setNonEmpty!52702))

(assert (= setNonEmpty!52702 b!7145032))

(declare-fun m!7858538 () Bool)

(assert (=> b!7145030 m!7858538))

(declare-fun m!7858540 () Bool)

(assert (=> b!7145022 m!7858540))

(declare-fun m!7858542 () Bool)

(assert (=> b!7145022 m!7858542))

(declare-fun m!7858544 () Bool)

(assert (=> start!696646 m!7858544))

(declare-fun m!7858546 () Bool)

(assert (=> b!7145024 m!7858546))

(declare-fun m!7858548 () Bool)

(assert (=> setNonEmpty!52702 m!7858548))

(declare-fun m!7858550 () Bool)

(assert (=> b!7145028 m!7858550))

(declare-fun m!7858552 () Bool)

(assert (=> b!7145035 m!7858552))

(assert (=> b!7145035 m!7858552))

(declare-fun m!7858554 () Bool)

(assert (=> b!7145035 m!7858554))

(declare-fun m!7858556 () Bool)

(assert (=> b!7145035 m!7858556))

(declare-fun m!7858558 () Bool)

(assert (=> b!7145034 m!7858558))

(declare-fun m!7858560 () Bool)

(assert (=> b!7145034 m!7858560))

(declare-fun m!7858562 () Bool)

(assert (=> b!7145027 m!7858562))

(declare-fun m!7858564 () Bool)

(assert (=> b!7145027 m!7858564))

(assert (=> b!7145026 m!7858552))

(push 1)

(assert tp_is_empty!46033)

(assert (not b!7145031))

(assert (not b!7145027))

(assert (not b!7145026))

(assert (not b!7145032))

(assert (not b!7145028))

(assert (not b!7145022))

(assert (not b!7145030))

(assert (not b!7145035))

(assert (not b!7145034))

(assert (not b!7145025))

(assert (not b!7145024))

(assert (not start!696646))

(assert (not setNonEmpty!52702))

(assert (not b!7145029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1889015 () Bool)

(declare-fun d!2227978 () Bool)

(assert (= bs!1889015 (and d!2227978 b!7145035)))

(declare-fun lambda!435555 () Int)

(assert (=> bs!1889015 (not (= lambda!435555 lambda!435539))))

(declare-fun forall!17036 (List!69474 Int) Bool)

(assert (=> d!2227978 (= (inv!88560 setElem!52702) (forall!17036 (exprs!7692 setElem!52702) lambda!435555))))

(declare-fun bs!1889016 () Bool)

(assert (= bs!1889016 d!2227978))

(declare-fun m!7858594 () Bool)

(assert (=> bs!1889016 m!7858594))

(assert (=> setNonEmpty!52702 d!2227978))

(declare-fun b!7145096 () Bool)

(declare-fun e!4293867 () Bool)

(declare-fun call!651401 () Bool)

(assert (=> b!7145096 (= e!4293867 call!651401)))

(declare-fun b!7145097 () Bool)

(declare-fun res!2915276 () Bool)

(declare-fun e!4293866 () Bool)

(assert (=> b!7145097 (=> (not res!2915276) (not e!4293866))))

(declare-fun call!651403 () Bool)

(assert (=> b!7145097 (= res!2915276 call!651403)))

(declare-fun e!4293865 () Bool)

(assert (=> b!7145097 (= e!4293865 e!4293866)))

(declare-fun b!7145098 () Bool)

(declare-fun res!2915279 () Bool)

(declare-fun e!4293869 () Bool)

(assert (=> b!7145098 (=> res!2915279 e!4293869)))

(assert (=> b!7145098 (= res!2915279 (not (is-Concat!27043 r!11483)))))

(assert (=> b!7145098 (= e!4293865 e!4293869)))

(declare-fun b!7145099 () Bool)

(declare-fun e!4293871 () Bool)

(declare-fun e!4293868 () Bool)

(assert (=> b!7145099 (= e!4293871 e!4293868)))

(declare-fun c!1332466 () Bool)

(assert (=> b!7145099 (= c!1332466 (is-Star!18198 r!11483))))

(declare-fun c!1332465 () Bool)

(declare-fun bm!651396 () Bool)

(assert (=> bm!651396 (= call!651401 (validRegex!9365 (ite c!1332466 (reg!18527 r!11483) (ite c!1332465 (regTwo!36909 r!11483) (regTwo!36908 r!11483)))))))

(declare-fun b!7145100 () Bool)

(assert (=> b!7145100 (= e!4293868 e!4293865)))

(assert (=> b!7145100 (= c!1332465 (is-Union!18198 r!11483))))

(declare-fun bm!651397 () Bool)

(assert (=> bm!651397 (= call!651403 (validRegex!9365 (ite c!1332465 (regOne!36909 r!11483) (regOne!36908 r!11483))))))

(declare-fun d!2227982 () Bool)

(declare-fun res!2915280 () Bool)

(assert (=> d!2227982 (=> res!2915280 e!4293871)))

(assert (=> d!2227982 (= res!2915280 (is-ElementMatch!18198 r!11483))))

(assert (=> d!2227982 (= (validRegex!9365 r!11483) e!4293871)))

(declare-fun b!7145101 () Bool)

(declare-fun e!4293870 () Bool)

(assert (=> b!7145101 (= e!4293869 e!4293870)))

(declare-fun res!2915278 () Bool)

(assert (=> b!7145101 (=> (not res!2915278) (not e!4293870))))

(assert (=> b!7145101 (= res!2915278 call!651403)))

(declare-fun b!7145102 () Bool)

(assert (=> b!7145102 (= e!4293868 e!4293867)))

(declare-fun res!2915277 () Bool)

(assert (=> b!7145102 (= res!2915277 (not (nullable!7715 (reg!18527 r!11483))))))

(assert (=> b!7145102 (=> (not res!2915277) (not e!4293867))))

(declare-fun bm!651398 () Bool)

(declare-fun call!651402 () Bool)

(assert (=> bm!651398 (= call!651402 call!651401)))

(declare-fun b!7145103 () Bool)

(assert (=> b!7145103 (= e!4293866 call!651402)))

(declare-fun b!7145104 () Bool)

(assert (=> b!7145104 (= e!4293870 call!651402)))

(assert (= (and d!2227982 (not res!2915280)) b!7145099))

(assert (= (and b!7145099 c!1332466) b!7145102))

(assert (= (and b!7145099 (not c!1332466)) b!7145100))

(assert (= (and b!7145102 res!2915277) b!7145096))

(assert (= (and b!7145100 c!1332465) b!7145097))

(assert (= (and b!7145100 (not c!1332465)) b!7145098))

(assert (= (and b!7145097 res!2915276) b!7145103))

(assert (= (and b!7145098 (not res!2915279)) b!7145101))

(assert (= (and b!7145101 res!2915278) b!7145104))

(assert (= (or b!7145103 b!7145104) bm!651398))

(assert (= (or b!7145097 b!7145101) bm!651397))

(assert (= (or b!7145096 bm!651398) bm!651396))

(declare-fun m!7858600 () Bool)

(assert (=> bm!651396 m!7858600))

(declare-fun m!7858602 () Bool)

(assert (=> bm!651397 m!7858602))

(declare-fun m!7858604 () Bool)

(assert (=> b!7145102 m!7858604))

(assert (=> start!696646 d!2227982))

(declare-fun d!2227986 () Bool)

(declare-fun lt!2568586 () Regex!18198)

(assert (=> d!2227986 (validRegex!9365 lt!2568586)))

(assert (=> d!2227986 (= lt!2568586 (generalisedUnion!2703 (unfocusZipperList!2239 lt!2568558)))))

(assert (=> d!2227986 (= (unfocusZipper!2546 lt!2568558) lt!2568586)))

(declare-fun bs!1889020 () Bool)

(assert (= bs!1889020 d!2227986))

(declare-fun m!7858608 () Bool)

(assert (=> bs!1889020 m!7858608))

(assert (=> bs!1889020 m!7858564))

(assert (=> bs!1889020 m!7858564))

(declare-fun m!7858610 () Bool)

(assert (=> bs!1889020 m!7858610))

(assert (=> b!7145034 d!2227986))

(declare-fun d!2227990 () Bool)

(declare-fun e!4293874 () Bool)

(assert (=> d!2227990 e!4293874))

(declare-fun res!2915283 () Bool)

(assert (=> d!2227990 (=> (not res!2915283) (not e!4293874))))

(declare-fun lt!2568589 () List!69475)

(declare-fun noDuplicate!2846 (List!69475) Bool)

(assert (=> d!2227990 (= res!2915283 (noDuplicate!2846 lt!2568589))))

(declare-fun choose!55293 ((Set Context!14384)) List!69475)

(assert (=> d!2227990 (= lt!2568589 (choose!55293 z!3189))))

(assert (=> d!2227990 (= (toList!11229 z!3189) lt!2568589)))

(declare-fun b!7145107 () Bool)

(declare-fun content!14228 (List!69475) (Set Context!14384))

(assert (=> b!7145107 (= e!4293874 (= (content!14228 lt!2568589) z!3189))))

(assert (= (and d!2227990 res!2915283) b!7145107))

(declare-fun m!7858612 () Bool)

(assert (=> d!2227990 m!7858612))

(declare-fun m!7858614 () Bool)

(assert (=> d!2227990 m!7858614))

(declare-fun m!7858616 () Bool)

(assert (=> b!7145107 m!7858616))

(assert (=> b!7145034 d!2227990))

(declare-fun d!2227992 () Bool)

(declare-fun lt!2568592 () Bool)

(assert (=> d!2227992 (= lt!2568592 (set.member lt!2568561 (content!14228 lt!2568558)))))

(declare-fun e!4293879 () Bool)

(assert (=> d!2227992 (= lt!2568592 e!4293879)))

(declare-fun res!2915288 () Bool)

(assert (=> d!2227992 (=> (not res!2915288) (not e!4293879))))

(assert (=> d!2227992 (= res!2915288 (is-Cons!69351 lt!2568558))))

(assert (=> d!2227992 (= (contains!20630 lt!2568558 lt!2568561) lt!2568592)))

(declare-fun b!7145114 () Bool)

(declare-fun e!4293880 () Bool)

(assert (=> b!7145114 (= e!4293879 e!4293880)))

(declare-fun res!2915289 () Bool)

(assert (=> b!7145114 (=> res!2915289 e!4293880)))

(assert (=> b!7145114 (= res!2915289 (= (h!75799 lt!2568558) lt!2568561))))

(declare-fun b!7145115 () Bool)

(assert (=> b!7145115 (= e!4293880 (contains!20630 (t!383492 lt!2568558) lt!2568561))))

(assert (= (and d!2227992 res!2915288) b!7145114))

(assert (= (and b!7145114 (not res!2915289)) b!7145115))

(declare-fun m!7858620 () Bool)

(assert (=> d!2227992 m!7858620))

(declare-fun m!7858622 () Bool)

(assert (=> d!2227992 m!7858622))

(declare-fun m!7858624 () Bool)

(assert (=> b!7145115 m!7858624))

(assert (=> b!7145024 d!2227992))

(declare-fun bs!1889024 () Bool)

(declare-fun d!2227996 () Bool)

(assert (= bs!1889024 (and d!2227996 b!7145035)))

(declare-fun lambda!435564 () Int)

(assert (=> bs!1889024 (not (= lambda!435564 lambda!435539))))

(declare-fun bs!1889025 () Bool)

(assert (= bs!1889025 (and d!2227996 d!2227978)))

(assert (=> bs!1889025 (not (= lambda!435564 lambda!435555))))

(assert (=> d!2227996 true))

(declare-fun order!28605 () Int)

(declare-fun dynLambda!28248 (Int Int) Int)

(assert (=> d!2227996 (< (dynLambda!28248 order!28605 lambda!435539) (dynLambda!28248 order!28605 lambda!435564))))

(assert (=> d!2227996 (= (exists!4020 lt!2568559 lambda!435539) (not (forall!17036 lt!2568559 lambda!435564)))))

(declare-fun bs!1889026 () Bool)

(assert (= bs!1889026 d!2227996))

(declare-fun m!7858626 () Bool)

(assert (=> bs!1889026 m!7858626))

(assert (=> b!7145035 d!2227996))

(declare-fun d!2227998 () Bool)

(declare-fun nullableFct!3003 (Regex!18198) Bool)

(assert (=> d!2227998 (= (nullable!7715 lt!2568560) (nullableFct!3003 lt!2568560))))

(declare-fun bs!1889027 () Bool)

(assert (= bs!1889027 d!2227998))

(declare-fun m!7858628 () Bool)

(assert (=> bs!1889027 m!7858628))

(assert (=> b!7145035 d!2227998))

(declare-fun bs!1889029 () Bool)

(declare-fun d!2228000 () Bool)

(assert (= bs!1889029 (and d!2228000 b!7145035)))

(declare-fun lambda!435569 () Int)

(assert (=> bs!1889029 (not (= lambda!435569 lambda!435539))))

(declare-fun bs!1889030 () Bool)

(assert (= bs!1889030 (and d!2228000 d!2227978)))

(assert (=> bs!1889030 (= lambda!435569 lambda!435555)))

(declare-fun bs!1889031 () Bool)

(assert (= bs!1889031 (and d!2228000 d!2227996)))

(assert (=> bs!1889031 (not (= lambda!435569 lambda!435564))))

(declare-fun lambda!435570 () Int)

(assert (=> bs!1889029 (= lambda!435570 lambda!435539)))

(assert (=> bs!1889030 (not (= lambda!435570 lambda!435555))))

(assert (=> bs!1889031 (not (= lambda!435570 lambda!435564))))

(declare-fun bs!1889032 () Bool)

(assert (= bs!1889032 d!2228000))

(assert (=> bs!1889032 (not (= lambda!435570 lambda!435569))))

(assert (=> d!2228000 (= (nullable!7715 lt!2568560) (exists!4020 lt!2568559 lambda!435570))))

(declare-fun lt!2568598 () Unit!163263)

(declare-fun choose!55294 (Regex!18198 List!69474) Unit!163263)

(assert (=> d!2228000 (= lt!2568598 (choose!55294 lt!2568560 lt!2568559))))

(assert (=> d!2228000 (forall!17036 lt!2568559 lambda!435569)))

(assert (=> d!2228000 (= (nullableGenUnionSpec!79 lt!2568560 lt!2568559) lt!2568598)))

(assert (=> bs!1889032 m!7858554))

(declare-fun m!7858634 () Bool)

(assert (=> bs!1889032 m!7858634))

(declare-fun m!7858636 () Bool)

(assert (=> bs!1889032 m!7858636))

(declare-fun m!7858638 () Bool)

(assert (=> bs!1889032 m!7858638))

(assert (=> b!7145035 d!2228000))

(declare-fun bs!1889033 () Bool)

(declare-fun d!2228004 () Bool)

(assert (= bs!1889033 (and d!2228004 d!2227996)))

(declare-fun lambda!435573 () Int)

(assert (=> bs!1889033 (not (= lambda!435573 lambda!435564))))

(declare-fun bs!1889034 () Bool)

(assert (= bs!1889034 (and d!2228004 b!7145035)))

(assert (=> bs!1889034 (= lambda!435573 lambda!435539)))

(declare-fun bs!1889035 () Bool)

(assert (= bs!1889035 (and d!2228004 d!2228000)))

(assert (=> bs!1889035 (not (= lambda!435573 lambda!435569))))

(declare-fun bs!1889036 () Bool)

(assert (= bs!1889036 (and d!2228004 d!2227978)))

(assert (=> bs!1889036 (not (= lambda!435573 lambda!435555))))

(assert (=> bs!1889035 (= lambda!435573 lambda!435570)))

(assert (=> d!2228004 (= (nullableContext!163 lt!2568561) (forall!17036 (exprs!7692 lt!2568561) lambda!435573))))

(declare-fun bs!1889037 () Bool)

(assert (= bs!1889037 d!2228004))

(declare-fun m!7858642 () Bool)

(assert (=> bs!1889037 m!7858642))

(assert (=> b!7145030 d!2228004))

(declare-fun d!2228006 () Bool)

(declare-fun e!4293890 () Bool)

(assert (=> d!2228006 e!4293890))

(declare-fun res!2915299 () Bool)

(assert (=> d!2228006 (=> (not res!2915299) (not e!4293890))))

(declare-fun lt!2568606 () Context!14384)

(declare-fun dynLambda!28249 (Int Context!14384) Bool)

(assert (=> d!2228006 (= res!2915299 (dynLambda!28249 lambda!435540 lt!2568606))))

(declare-fun getWitness!1985 (List!69475 Int) Context!14384)

(assert (=> d!2228006 (= lt!2568606 (getWitness!1985 (toList!11229 z!3189) lambda!435540))))

(assert (=> d!2228006 (exists!4021 z!3189 lambda!435540)))

(assert (=> d!2228006 (= (getWitness!1983 z!3189 lambda!435540) lt!2568606)))

(declare-fun b!7145127 () Bool)

(assert (=> b!7145127 (= e!4293890 (set.member lt!2568606 z!3189))))

(assert (= (and d!2228006 res!2915299) b!7145127))

(declare-fun b_lambda!272725 () Bool)

(assert (=> (not b_lambda!272725) (not d!2228006)))

(declare-fun m!7858648 () Bool)

(assert (=> d!2228006 m!7858648))

(assert (=> d!2228006 m!7858560))

(assert (=> d!2228006 m!7858560))

(declare-fun m!7858650 () Bool)

(assert (=> d!2228006 m!7858650))

(assert (=> d!2228006 m!7858550))

(declare-fun m!7858652 () Bool)

(assert (=> b!7145127 m!7858652))

(assert (=> b!7145022 d!2228006))

(assert (=> b!7145026 d!2227996))

(declare-fun bs!1889038 () Bool)

(declare-fun d!2228010 () Bool)

(assert (= bs!1889038 (and d!2228010 d!2227996)))

(declare-fun lambda!435576 () Int)

(assert (=> bs!1889038 (not (= lambda!435576 lambda!435564))))

(declare-fun bs!1889039 () Bool)

(assert (= bs!1889039 (and d!2228010 b!7145035)))

(assert (=> bs!1889039 (not (= lambda!435576 lambda!435539))))

(declare-fun bs!1889040 () Bool)

(assert (= bs!1889040 (and d!2228010 d!2228004)))

(assert (=> bs!1889040 (not (= lambda!435576 lambda!435573))))

(declare-fun bs!1889041 () Bool)

(assert (= bs!1889041 (and d!2228010 d!2228000)))

(assert (=> bs!1889041 (= lambda!435576 lambda!435569)))

(declare-fun bs!1889042 () Bool)

(assert (= bs!1889042 (and d!2228010 d!2227978)))

(assert (=> bs!1889042 (= lambda!435576 lambda!435555)))

(assert (=> bs!1889041 (not (= lambda!435576 lambda!435570))))

(declare-fun b!7145152 () Bool)

(declare-fun e!4293909 () Bool)

(declare-fun e!4293907 () Bool)

(assert (=> b!7145152 (= e!4293909 e!4293907)))

(declare-fun c!1332477 () Bool)

(declare-fun isEmpty!40083 (List!69474) Bool)

(assert (=> b!7145152 (= c!1332477 (isEmpty!40083 lt!2568559))))

(declare-fun b!7145153 () Bool)

(declare-fun e!4293910 () Bool)

(declare-fun lt!2568612 () Regex!18198)

(declare-fun head!14524 (List!69474) Regex!18198)

(assert (=> b!7145153 (= e!4293910 (= lt!2568612 (head!14524 lt!2568559)))))

(declare-fun b!7145154 () Bool)

(declare-fun e!4293911 () Regex!18198)

(assert (=> b!7145154 (= e!4293911 EmptyLang!18198)))

(declare-fun b!7145155 () Bool)

(declare-fun e!4293912 () Regex!18198)

(assert (=> b!7145155 (= e!4293912 e!4293911)))

(declare-fun c!1332479 () Bool)

(assert (=> b!7145155 (= c!1332479 (is-Cons!69350 lt!2568559))))

(declare-fun b!7145156 () Bool)

(assert (=> b!7145156 (= e!4293912 (h!75798 lt!2568559))))

(declare-fun b!7145157 () Bool)

(assert (=> b!7145157 (= e!4293911 (Union!18198 (h!75798 lt!2568559) (generalisedUnion!2703 (t!383491 lt!2568559))))))

(assert (=> d!2228010 e!4293909))

(declare-fun res!2915308 () Bool)

(assert (=> d!2228010 (=> (not res!2915308) (not e!4293909))))

(assert (=> d!2228010 (= res!2915308 (validRegex!9365 lt!2568612))))

(assert (=> d!2228010 (= lt!2568612 e!4293912)))

(declare-fun c!1332476 () Bool)

(declare-fun e!4293908 () Bool)

(assert (=> d!2228010 (= c!1332476 e!4293908)))

(declare-fun res!2915309 () Bool)

(assert (=> d!2228010 (=> (not res!2915309) (not e!4293908))))

(assert (=> d!2228010 (= res!2915309 (is-Cons!69350 lt!2568559))))

(assert (=> d!2228010 (forall!17036 lt!2568559 lambda!435576)))

(assert (=> d!2228010 (= (generalisedUnion!2703 lt!2568559) lt!2568612)))

(declare-fun b!7145158 () Bool)

(assert (=> b!7145158 (= e!4293907 e!4293910)))

(declare-fun c!1332478 () Bool)

(declare-fun tail!13994 (List!69474) List!69474)

(assert (=> b!7145158 (= c!1332478 (isEmpty!40083 (tail!13994 lt!2568559)))))

(declare-fun b!7145159 () Bool)

(assert (=> b!7145159 (= e!4293908 (isEmpty!40083 (t!383491 lt!2568559)))))

(declare-fun b!7145160 () Bool)

(declare-fun isEmptyLang!2115 (Regex!18198) Bool)

(assert (=> b!7145160 (= e!4293907 (isEmptyLang!2115 lt!2568612))))

(declare-fun b!7145161 () Bool)

(declare-fun isUnion!1542 (Regex!18198) Bool)

(assert (=> b!7145161 (= e!4293910 (isUnion!1542 lt!2568612))))

(assert (= (and d!2228010 res!2915309) b!7145159))

(assert (= (and d!2228010 c!1332476) b!7145156))

(assert (= (and d!2228010 (not c!1332476)) b!7145155))

(assert (= (and b!7145155 c!1332479) b!7145157))

(assert (= (and b!7145155 (not c!1332479)) b!7145154))

(assert (= (and d!2228010 res!2915308) b!7145152))

(assert (= (and b!7145152 c!1332477) b!7145160))

(assert (= (and b!7145152 (not c!1332477)) b!7145158))

(assert (= (and b!7145158 c!1332478) b!7145153))

(assert (= (and b!7145158 (not c!1332478)) b!7145161))

(declare-fun m!7858660 () Bool)

(assert (=> b!7145152 m!7858660))

(declare-fun m!7858662 () Bool)

(assert (=> b!7145159 m!7858662))

(declare-fun m!7858664 () Bool)

(assert (=> d!2228010 m!7858664))

(declare-fun m!7858666 () Bool)

(assert (=> d!2228010 m!7858666))

(declare-fun m!7858668 () Bool)

(assert (=> b!7145161 m!7858668))

(declare-fun m!7858670 () Bool)

(assert (=> b!7145153 m!7858670))

(declare-fun m!7858672 () Bool)

(assert (=> b!7145160 m!7858672))

(declare-fun m!7858674 () Bool)

(assert (=> b!7145158 m!7858674))

(assert (=> b!7145158 m!7858674))

(declare-fun m!7858676 () Bool)

(assert (=> b!7145158 m!7858676))

(declare-fun m!7858678 () Bool)

(assert (=> b!7145157 m!7858678))

(assert (=> b!7145027 d!2228010))

(declare-fun bs!1889044 () Bool)

(declare-fun d!2228014 () Bool)

(assert (= bs!1889044 (and d!2228014 d!2227996)))

(declare-fun lambda!435579 () Int)

(assert (=> bs!1889044 (not (= lambda!435579 lambda!435564))))

(declare-fun bs!1889045 () Bool)

(assert (= bs!1889045 (and d!2228014 b!7145035)))

(assert (=> bs!1889045 (not (= lambda!435579 lambda!435539))))

(declare-fun bs!1889046 () Bool)

(assert (= bs!1889046 (and d!2228014 d!2228004)))

(assert (=> bs!1889046 (not (= lambda!435579 lambda!435573))))

(declare-fun bs!1889047 () Bool)

(assert (= bs!1889047 (and d!2228014 d!2228000)))

(assert (=> bs!1889047 (= lambda!435579 lambda!435569)))

(declare-fun bs!1889048 () Bool)

(assert (= bs!1889048 (and d!2228014 d!2228010)))

(assert (=> bs!1889048 (= lambda!435579 lambda!435576)))

(declare-fun bs!1889049 () Bool)

(assert (= bs!1889049 (and d!2228014 d!2227978)))

(assert (=> bs!1889049 (= lambda!435579 lambda!435555)))

(assert (=> bs!1889047 (not (= lambda!435579 lambda!435570))))

(declare-fun lt!2568616 () List!69474)

(assert (=> d!2228014 (forall!17036 lt!2568616 lambda!435579)))

(declare-fun e!4293916 () List!69474)

(assert (=> d!2228014 (= lt!2568616 e!4293916)))

(declare-fun c!1332482 () Bool)

(assert (=> d!2228014 (= c!1332482 (is-Cons!69351 lt!2568558))))

(assert (=> d!2228014 (= (unfocusZipperList!2239 lt!2568558) lt!2568616)))

(declare-fun b!7145167 () Bool)

(declare-fun generalisedConcat!2375 (List!69474) Regex!18198)

(assert (=> b!7145167 (= e!4293916 (Cons!69350 (generalisedConcat!2375 (exprs!7692 (h!75799 lt!2568558))) (unfocusZipperList!2239 (t!383492 lt!2568558))))))

(declare-fun b!7145168 () Bool)

(assert (=> b!7145168 (= e!4293916 Nil!69350)))

(assert (= (and d!2228014 c!1332482) b!7145167))

(assert (= (and d!2228014 (not c!1332482)) b!7145168))

(declare-fun m!7858688 () Bool)

(assert (=> d!2228014 m!7858688))

(declare-fun m!7858690 () Bool)

(assert (=> b!7145167 m!7858690))

(declare-fun m!7858692 () Bool)

(assert (=> b!7145167 m!7858692))

(assert (=> b!7145027 d!2228014))

(declare-fun d!2228020 () Bool)

(declare-fun lt!2568619 () Bool)

(declare-fun exists!4024 (List!69475 Int) Bool)

(assert (=> d!2228020 (= lt!2568619 (exists!4024 (toList!11229 z!3189) lambda!435540))))

(declare-fun choose!55295 ((Set Context!14384) Int) Bool)

(assert (=> d!2228020 (= lt!2568619 (choose!55295 z!3189 lambda!435540))))

(assert (=> d!2228020 (= (exists!4021 z!3189 lambda!435540) lt!2568619)))

(declare-fun bs!1889050 () Bool)

(assert (= bs!1889050 d!2228020))

(assert (=> bs!1889050 m!7858560))

(assert (=> bs!1889050 m!7858560))

(declare-fun m!7858694 () Bool)

(assert (=> bs!1889050 m!7858694))

(declare-fun m!7858696 () Bool)

(assert (=> bs!1889050 m!7858696))

(assert (=> b!7145028 d!2228020))

(declare-fun condSetEmpty!52708 () Bool)

(assert (=> setNonEmpty!52702 (= condSetEmpty!52708 (= setRest!52702 (as set.empty (Set Context!14384))))))

(declare-fun setRes!52708 () Bool)

(assert (=> setNonEmpty!52702 (= tp!1970998 setRes!52708)))

(declare-fun setIsEmpty!52708 () Bool)

(assert (=> setIsEmpty!52708 setRes!52708))

(declare-fun setElem!52708 () Context!14384)

(declare-fun tp!1971029 () Bool)

(declare-fun e!4293919 () Bool)

(declare-fun setNonEmpty!52708 () Bool)

(assert (=> setNonEmpty!52708 (= setRes!52708 (and tp!1971029 (inv!88560 setElem!52708) e!4293919))))

(declare-fun setRest!52708 () (Set Context!14384))

(assert (=> setNonEmpty!52708 (= setRest!52702 (set.union (set.insert setElem!52708 (as set.empty (Set Context!14384))) setRest!52708))))

(declare-fun b!7145173 () Bool)

(declare-fun tp!1971028 () Bool)

(assert (=> b!7145173 (= e!4293919 tp!1971028)))

(assert (= (and setNonEmpty!52702 condSetEmpty!52708) setIsEmpty!52708))

(assert (= (and setNonEmpty!52702 (not condSetEmpty!52708)) setNonEmpty!52708))

(assert (= setNonEmpty!52708 b!7145173))

(declare-fun m!7858698 () Bool)

(assert (=> setNonEmpty!52708 m!7858698))

(declare-fun b!7145187 () Bool)

(declare-fun e!4293922 () Bool)

(declare-fun tp!1971041 () Bool)

(declare-fun tp!1971040 () Bool)

(assert (=> b!7145187 (= e!4293922 (and tp!1971041 tp!1971040))))

(declare-fun b!7145184 () Bool)

(assert (=> b!7145184 (= e!4293922 tp_is_empty!46033)))

(assert (=> b!7145029 (= tp!1971000 e!4293922)))

(declare-fun b!7145185 () Bool)

(declare-fun tp!1971042 () Bool)

(declare-fun tp!1971043 () Bool)

(assert (=> b!7145185 (= e!4293922 (and tp!1971042 tp!1971043))))

(declare-fun b!7145186 () Bool)

(declare-fun tp!1971044 () Bool)

(assert (=> b!7145186 (= e!4293922 tp!1971044)))

(assert (= (and b!7145029 (is-ElementMatch!18198 (regOne!36909 r!11483))) b!7145184))

(assert (= (and b!7145029 (is-Concat!27043 (regOne!36909 r!11483))) b!7145185))

(assert (= (and b!7145029 (is-Star!18198 (regOne!36909 r!11483))) b!7145186))

(assert (= (and b!7145029 (is-Union!18198 (regOne!36909 r!11483))) b!7145187))

(declare-fun b!7145191 () Bool)

(declare-fun e!4293923 () Bool)

(declare-fun tp!1971046 () Bool)

(declare-fun tp!1971045 () Bool)

(assert (=> b!7145191 (= e!4293923 (and tp!1971046 tp!1971045))))

(declare-fun b!7145188 () Bool)

(assert (=> b!7145188 (= e!4293923 tp_is_empty!46033)))

(assert (=> b!7145029 (= tp!1970997 e!4293923)))

(declare-fun b!7145189 () Bool)

(declare-fun tp!1971047 () Bool)

(declare-fun tp!1971048 () Bool)

(assert (=> b!7145189 (= e!4293923 (and tp!1971047 tp!1971048))))

(declare-fun b!7145190 () Bool)

(declare-fun tp!1971049 () Bool)

(assert (=> b!7145190 (= e!4293923 tp!1971049)))

(assert (= (and b!7145029 (is-ElementMatch!18198 (regTwo!36909 r!11483))) b!7145188))

(assert (= (and b!7145029 (is-Concat!27043 (regTwo!36909 r!11483))) b!7145189))

(assert (= (and b!7145029 (is-Star!18198 (regTwo!36909 r!11483))) b!7145190))

(assert (= (and b!7145029 (is-Union!18198 (regTwo!36909 r!11483))) b!7145191))

(declare-fun b!7145195 () Bool)

(declare-fun e!4293924 () Bool)

(declare-fun tp!1971051 () Bool)

(declare-fun tp!1971050 () Bool)

(assert (=> b!7145195 (= e!4293924 (and tp!1971051 tp!1971050))))

(declare-fun b!7145192 () Bool)

(assert (=> b!7145192 (= e!4293924 tp_is_empty!46033)))

(assert (=> b!7145025 (= tp!1970999 e!4293924)))

(declare-fun b!7145193 () Bool)

(declare-fun tp!1971052 () Bool)

(declare-fun tp!1971053 () Bool)

(assert (=> b!7145193 (= e!4293924 (and tp!1971052 tp!1971053))))

(declare-fun b!7145194 () Bool)

(declare-fun tp!1971054 () Bool)

(assert (=> b!7145194 (= e!4293924 tp!1971054)))

(assert (= (and b!7145025 (is-ElementMatch!18198 (regOne!36908 r!11483))) b!7145192))

(assert (= (and b!7145025 (is-Concat!27043 (regOne!36908 r!11483))) b!7145193))

(assert (= (and b!7145025 (is-Star!18198 (regOne!36908 r!11483))) b!7145194))

(assert (= (and b!7145025 (is-Union!18198 (regOne!36908 r!11483))) b!7145195))

(declare-fun b!7145199 () Bool)

(declare-fun e!4293925 () Bool)

(declare-fun tp!1971056 () Bool)

(declare-fun tp!1971055 () Bool)

(assert (=> b!7145199 (= e!4293925 (and tp!1971056 tp!1971055))))

(declare-fun b!7145196 () Bool)

(assert (=> b!7145196 (= e!4293925 tp_is_empty!46033)))

(assert (=> b!7145025 (= tp!1971002 e!4293925)))

(declare-fun b!7145197 () Bool)

(declare-fun tp!1971057 () Bool)

(declare-fun tp!1971058 () Bool)

(assert (=> b!7145197 (= e!4293925 (and tp!1971057 tp!1971058))))

(declare-fun b!7145198 () Bool)

(declare-fun tp!1971059 () Bool)

(assert (=> b!7145198 (= e!4293925 tp!1971059)))

(assert (= (and b!7145025 (is-ElementMatch!18198 (regTwo!36908 r!11483))) b!7145196))

(assert (= (and b!7145025 (is-Concat!27043 (regTwo!36908 r!11483))) b!7145197))

(assert (= (and b!7145025 (is-Star!18198 (regTwo!36908 r!11483))) b!7145198))

(assert (= (and b!7145025 (is-Union!18198 (regTwo!36908 r!11483))) b!7145199))

(declare-fun b!7145203 () Bool)

(declare-fun e!4293926 () Bool)

(declare-fun tp!1971061 () Bool)

(declare-fun tp!1971060 () Bool)

(assert (=> b!7145203 (= e!4293926 (and tp!1971061 tp!1971060))))

(declare-fun b!7145200 () Bool)

(assert (=> b!7145200 (= e!4293926 tp_is_empty!46033)))

(assert (=> b!7145031 (= tp!1970996 e!4293926)))

(declare-fun b!7145201 () Bool)

(declare-fun tp!1971062 () Bool)

(declare-fun tp!1971063 () Bool)

(assert (=> b!7145201 (= e!4293926 (and tp!1971062 tp!1971063))))

(declare-fun b!7145202 () Bool)

(declare-fun tp!1971064 () Bool)

(assert (=> b!7145202 (= e!4293926 tp!1971064)))

(assert (= (and b!7145031 (is-ElementMatch!18198 (reg!18527 r!11483))) b!7145200))

(assert (= (and b!7145031 (is-Concat!27043 (reg!18527 r!11483))) b!7145201))

(assert (= (and b!7145031 (is-Star!18198 (reg!18527 r!11483))) b!7145202))

(assert (= (and b!7145031 (is-Union!18198 (reg!18527 r!11483))) b!7145203))

(declare-fun b!7145208 () Bool)

(declare-fun e!4293929 () Bool)

(declare-fun tp!1971069 () Bool)

(declare-fun tp!1971070 () Bool)

(assert (=> b!7145208 (= e!4293929 (and tp!1971069 tp!1971070))))

(assert (=> b!7145032 (= tp!1971001 e!4293929)))

(assert (= (and b!7145032 (is-Cons!69350 (exprs!7692 setElem!52702))) b!7145208))

(declare-fun b_lambda!272729 () Bool)

(assert (= b_lambda!272725 (or b!7145028 b_lambda!272729)))

(declare-fun bs!1889054 () Bool)

(declare-fun d!2228022 () Bool)

(assert (= bs!1889054 (and d!2228022 b!7145028)))

(assert (=> bs!1889054 (= (dynLambda!28249 lambda!435540 lt!2568606) (nullableContext!163 lt!2568606))))

(declare-fun m!7858700 () Bool)

(assert (=> bs!1889054 m!7858700))

(assert (=> d!2228006 d!2228022))

(push 1)

(assert (not b!7145201))

(assert (not b!7145173))

(assert (not b!7145189))

(assert (not b!7145161))

(assert (not b!7145107))

(assert (not d!2227978))

(assert (not b!7145158))

(assert (not b!7145194))

(assert (not b!7145157))

(assert (not b!7145167))

(assert (not d!2228000))

(assert (not b!7145198))

(assert (not b!7145191))

(assert (not d!2228010))

(assert (not d!2227990))

(assert (not d!2227992))

(assert (not d!2227998))

(assert (not b!7145115))

(assert (not d!2228004))

(assert tp_is_empty!46033)

(assert (not d!2228020))

(assert (not b!7145160))

(assert (not b!7145190))

(assert (not setNonEmpty!52708))

(assert (not d!2227996))

(assert (not b!7145152))

(assert (not b!7145193))

(assert (not b!7145186))

(assert (not b!7145187))

(assert (not b!7145195))

(assert (not b!7145203))

(assert (not b!7145197))

(assert (not b!7145153))

(assert (not b!7145159))

(assert (not b_lambda!272729))

(assert (not d!2228006))

(assert (not bm!651396))

(assert (not b!7145102))

(assert (not d!2227986))

(assert (not bs!1889054))

(assert (not b!7145185))

(assert (not b!7145208))

(assert (not bm!651397))

(assert (not b!7145202))

(assert (not b!7145199))

(assert (not d!2228014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

