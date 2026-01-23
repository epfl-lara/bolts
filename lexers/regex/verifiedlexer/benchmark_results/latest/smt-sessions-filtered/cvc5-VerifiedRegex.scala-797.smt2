; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45148 () Bool)

(assert start!45148)

(declare-fun b_free!13157 () Bool)

(declare-fun b_next!13157 () Bool)

(assert (=> start!45148 (= b_free!13157 (not b_next!13157))))

(declare-fun tp!130716 () Bool)

(declare-fun b_and!50461 () Bool)

(assert (=> start!45148 (= tp!130716 b_and!50461)))

(declare-fun b_free!13159 () Bool)

(declare-fun b_next!13159 () Bool)

(assert (=> start!45148 (= b_free!13159 (not b_next!13159))))

(declare-fun tp!130719 () Bool)

(declare-fun b_and!50463 () Bool)

(assert (=> start!45148 (= tp!130719 b_and!50463)))

(assert (=> start!45148 true))

(declare-fun lambda!13987 () Int)

(declare-fun order!4191 () Int)

(declare-fun f!1027 () Int)

(declare-fun order!4193 () Int)

(declare-fun dynLambda!2861 (Int Int) Int)

(declare-fun dynLambda!2862 (Int Int) Int)

(assert (=> start!45148 (< (dynLambda!2861 order!4191 f!1027) (dynLambda!2862 order!4193 lambda!13987))))

(assert (=> start!45148 true))

(declare-fun order!4195 () Int)

(declare-fun p!1789 () Int)

(declare-fun dynLambda!2863 (Int Int) Int)

(assert (=> start!45148 (< (dynLambda!2863 order!4195 p!1789) (dynLambda!2862 order!4193 lambda!13987))))

(declare-fun setIsEmpty!1949 () Bool)

(declare-fun setRes!1949 () Bool)

(assert (=> setIsEmpty!1949 setRes!1949))

(declare-fun b!471894 () Bool)

(declare-fun e!288616 () Bool)

(declare-datatypes ((B!935 0))(
  ( (B!936 (val!1511 Int)) )
))
(declare-datatypes ((List!4555 0))(
  ( (Nil!4545) (Cons!4545 (h!9942 B!935) (t!72985 List!4555)) )
))
(declare-fun l!2882 () List!4555)

(declare-fun forall!1327 (List!4555 Int) Bool)

(assert (=> b!471894 (= e!288616 (forall!1327 l!2882 p!1789))))

(assert (=> b!471894 (forall!1327 (t!72985 l!2882) p!1789)))

(declare-datatypes ((A!373 0))(
  ( (A!374 (val!1512 Int)) )
))
(declare-fun s!1494 () (Set A!373))

(declare-datatypes ((Unit!8299 0))(
  ( (Unit!8300) )
))
(declare-fun lt!210204 () Unit!8299)

(declare-fun lemmaFlatMapForallToList!3 ((Set A!373) Int Int List!4555) Unit!8299)

(assert (=> b!471894 (= lt!210204 (lemmaFlatMapForallToList!3 s!1494 f!1027 p!1789 (t!72985 l!2882)))))

(declare-fun setNonEmpty!1949 () Bool)

(declare-fun tp!130717 () Bool)

(declare-fun tp_is_empty!2125 () Bool)

(assert (=> setNonEmpty!1949 (= setRes!1949 (and tp!130717 tp_is_empty!2125))))

(declare-fun setElem!1949 () A!373)

(declare-fun setRest!1949 () (Set A!373))

(assert (=> setNonEmpty!1949 (= s!1494 (set.union (set.insert setElem!1949 (as set.empty (Set A!373))) setRest!1949))))

(declare-fun b!471895 () Bool)

(declare-fun res!209311 () Bool)

(assert (=> b!471895 (=> res!209311 e!288616)))

(declare-fun lt!210202 () List!4555)

(declare-fun subseq!112 (List!4555 List!4555) Bool)

(assert (=> b!471895 (= res!209311 (not (subseq!112 (t!72985 l!2882) lt!210202)))))

(declare-fun b!471896 () Bool)

(declare-fun e!288619 () Bool)

(declare-fun e!288617 () Bool)

(assert (=> b!471896 (= e!288619 e!288617)))

(declare-fun res!209308 () Bool)

(assert (=> b!471896 (=> (not res!209308) (not e!288617))))

(assert (=> b!471896 (= res!209308 (subseq!112 l!2882 lt!210202))))

(declare-fun lt!210206 () (Set B!935))

(declare-fun toList!326 ((Set B!935)) List!4555)

(assert (=> b!471896 (= lt!210202 (toList!326 lt!210206))))

(declare-fun flatMap!91 ((Set A!373) Int) (Set B!935))

(assert (=> b!471896 (= lt!210206 (flatMap!91 s!1494 f!1027))))

(declare-fun res!209313 () Bool)

(assert (=> start!45148 (=> (not res!209313) (not e!288619))))

(declare-fun Forall!241 (Int) Bool)

(assert (=> start!45148 (= res!209313 (Forall!241 lambda!13987))))

(assert (=> start!45148 e!288619))

(assert (=> start!45148 tp!130716))

(assert (=> start!45148 tp!130719))

(declare-fun condSetEmpty!1949 () Bool)

(assert (=> start!45148 (= condSetEmpty!1949 (= s!1494 (as set.empty (Set A!373))))))

(assert (=> start!45148 setRes!1949))

(declare-fun e!288620 () Bool)

(assert (=> start!45148 e!288620))

(declare-fun b!471897 () Bool)

(declare-fun e!288618 () Bool)

(assert (=> b!471897 (= e!288618 (not e!288616))))

(declare-fun res!209312 () Bool)

(assert (=> b!471897 (=> res!209312 e!288616)))

(assert (=> b!471897 (= res!209312 (not (Forall!241 lambda!13987)))))

(declare-fun lt!210201 () Unit!8299)

(declare-fun subseqTail!11 (List!4555 List!4555) Unit!8299)

(assert (=> b!471897 (= lt!210201 (subseqTail!11 l!2882 lt!210202))))

(declare-fun dynLambda!2864 (Int B!935) Bool)

(assert (=> b!471897 (dynLambda!2864 p!1789 (h!9942 l!2882))))

(declare-fun lt!210205 () Unit!8299)

(declare-fun lemmaFlatMapForallElem!13 ((Set A!373) Int Int B!935) Unit!8299)

(assert (=> b!471897 (= lt!210205 (lemmaFlatMapForallElem!13 s!1494 f!1027 p!1789 (h!9942 l!2882)))))

(declare-fun empty!2607 () A!373)

(declare-fun flatMapPost!19 ((Set A!373) Int B!935) A!373)

(assert (=> b!471897 (= (flatMapPost!19 s!1494 f!1027 (h!9942 l!2882)) empty!2607)))

(assert (=> b!471897 true))

(assert (=> b!471897 tp_is_empty!2125))

(declare-fun b!471898 () Bool)

(declare-fun res!209309 () Bool)

(assert (=> b!471898 (=> (not res!209309) (not e!288617))))

(assert (=> b!471898 (= res!209309 (is-Cons!4545 l!2882))))

(declare-fun b!471899 () Bool)

(declare-fun tp_is_empty!2127 () Bool)

(declare-fun tp!130718 () Bool)

(assert (=> b!471899 (= e!288620 (and tp_is_empty!2127 tp!130718))))

(declare-fun b!471900 () Bool)

(assert (=> b!471900 (= e!288617 e!288618)))

(declare-fun res!209310 () Bool)

(assert (=> b!471900 (=> (not res!209310) (not e!288618))))

(assert (=> b!471900 (= res!209310 (set.member (h!9942 l!2882) lt!210206))))

(declare-fun lt!210203 () Unit!8299)

(declare-fun subseqContains!21 (List!4555 List!4555 B!935) Unit!8299)

(assert (=> b!471900 (= lt!210203 (subseqContains!21 l!2882 lt!210202 (h!9942 l!2882)))))

(assert (= (and start!45148 res!209313) b!471896))

(assert (= (and b!471896 res!209308) b!471898))

(assert (= (and b!471898 res!209309) b!471900))

(assert (= (and b!471900 res!209310) b!471897))

(assert (= (and b!471897 (not res!209312)) b!471895))

(assert (= (and b!471895 (not res!209311)) b!471894))

(assert (= (and start!45148 condSetEmpty!1949) setIsEmpty!1949))

(assert (= (and start!45148 (not condSetEmpty!1949)) setNonEmpty!1949))

(assert (= (and start!45148 (is-Cons!4545 l!2882)) b!471899))

(declare-fun b_lambda!19703 () Bool)

(assert (=> (not b_lambda!19703) (not b!471897)))

(declare-fun t!72984 () Bool)

(declare-fun tb!47029 () Bool)

(assert (=> (and start!45148 (= p!1789 p!1789) t!72984) tb!47029))

(declare-fun result!51800 () Bool)

(assert (=> tb!47029 (= result!51800 true)))

(assert (=> b!471897 t!72984))

(declare-fun b_and!50465 () Bool)

(assert (= b_and!50463 (and (=> t!72984 result!51800) b_and!50465)))

(declare-fun m!745331 () Bool)

(assert (=> b!471895 m!745331))

(declare-fun m!745333 () Bool)

(assert (=> b!471894 m!745333))

(declare-fun m!745335 () Bool)

(assert (=> b!471894 m!745335))

(declare-fun m!745337 () Bool)

(assert (=> b!471894 m!745337))

(declare-fun m!745339 () Bool)

(assert (=> b!471897 m!745339))

(declare-fun m!745341 () Bool)

(assert (=> b!471897 m!745341))

(declare-fun m!745343 () Bool)

(assert (=> b!471897 m!745343))

(declare-fun m!745345 () Bool)

(assert (=> b!471897 m!745345))

(declare-fun m!745347 () Bool)

(assert (=> b!471897 m!745347))

(assert (=> start!45148 m!745347))

(declare-fun m!745349 () Bool)

(assert (=> b!471896 m!745349))

(declare-fun m!745351 () Bool)

(assert (=> b!471896 m!745351))

(declare-fun m!745353 () Bool)

(assert (=> b!471896 m!745353))

(declare-fun m!745355 () Bool)

(assert (=> b!471900 m!745355))

(declare-fun m!745357 () Bool)

(assert (=> b!471900 m!745357))

(push 1)

(assert b_and!50461)

(assert (not b!471900))

(assert (not b!471897))

(assert (not b!471895))

(assert (not b!471899))

(assert tp_is_empty!2125)

(assert (not b_lambda!19703))

(assert (not b_next!13159))

(assert b_and!50465)

(assert tp_is_empty!2127)

(assert (not b!471894))

(assert (not b_next!13157))

(assert (not setNonEmpty!1949))

(assert (not start!45148))

(assert (not b!471896))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50461)

(assert b_and!50465)

(assert (not b_next!13159))

(assert (not b_next!13157))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19707 () Bool)

(assert (= b_lambda!19703 (or (and start!45148 b_free!13159) b_lambda!19707)))

(push 1)

(assert b_and!50461)

(assert (not b!471900))

(assert (not b!471897))

(assert (not b!471895))

(assert (not b!471899))

(assert tp_is_empty!2125)

(assert (not b_lambda!19707))

(assert (not b_next!13159))

(assert b_and!50465)

(assert tp_is_empty!2127)

(assert (not b!471894))

(assert (not b_next!13157))

(assert (not setNonEmpty!1949))

(assert (not start!45148))

(assert (not b!471896))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50461)

(assert b_and!50465)

(assert (not b_next!13159))

(assert (not b_next!13157))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!471940 () Bool)

(declare-fun e!288646 () Bool)

(assert (=> b!471940 (= e!288646 (subseq!112 (t!72985 (t!72985 l!2882)) (t!72985 lt!210202)))))

(declare-fun d!179438 () Bool)

(declare-fun res!209343 () Bool)

(declare-fun e!288647 () Bool)

(assert (=> d!179438 (=> res!209343 e!288647)))

(assert (=> d!179438 (= res!209343 (is-Nil!4545 (t!72985 l!2882)))))

(assert (=> d!179438 (= (subseq!112 (t!72985 l!2882) lt!210202) e!288647)))

(declare-fun b!471939 () Bool)

(declare-fun e!288644 () Bool)

(declare-fun e!288645 () Bool)

(assert (=> b!471939 (= e!288644 e!288645)))

(declare-fun res!209342 () Bool)

(assert (=> b!471939 (=> res!209342 e!288645)))

(assert (=> b!471939 (= res!209342 e!288646)))

(declare-fun res!209340 () Bool)

(assert (=> b!471939 (=> (not res!209340) (not e!288646))))

(assert (=> b!471939 (= res!209340 (= (h!9942 (t!72985 l!2882)) (h!9942 lt!210202)))))

(declare-fun b!471941 () Bool)

(assert (=> b!471941 (= e!288645 (subseq!112 (t!72985 l!2882) (t!72985 lt!210202)))))

(declare-fun b!471938 () Bool)

(assert (=> b!471938 (= e!288647 e!288644)))

(declare-fun res!209341 () Bool)

(assert (=> b!471938 (=> (not res!209341) (not e!288644))))

(assert (=> b!471938 (= res!209341 (is-Cons!4545 lt!210202))))

(assert (= (and d!179438 (not res!209343)) b!471938))

(assert (= (and b!471938 res!209341) b!471939))

(assert (= (and b!471939 res!209340) b!471940))

(assert (= (and b!471939 (not res!209342)) b!471941))

(declare-fun m!745387 () Bool)

(assert (=> b!471940 m!745387))

(declare-fun m!745389 () Bool)

(assert (=> b!471941 m!745389))

(assert (=> b!471895 d!179438))

(declare-fun d!179440 () Bool)

(declare-fun contains!1026 (List!4555 B!935) Bool)

(assert (=> d!179440 (contains!1026 lt!210202 (h!9942 l!2882))))

(declare-fun lt!210227 () Unit!8299)

(declare-fun choose!3571 (List!4555 List!4555 B!935) Unit!8299)

(assert (=> d!179440 (= lt!210227 (choose!3571 l!2882 lt!210202 (h!9942 l!2882)))))

(declare-fun e!288650 () Bool)

(assert (=> d!179440 e!288650))

(declare-fun res!209346 () Bool)

(assert (=> d!179440 (=> (not res!209346) (not e!288650))))

(assert (=> d!179440 (= res!209346 (subseq!112 l!2882 lt!210202))))

(assert (=> d!179440 (= (subseqContains!21 l!2882 lt!210202 (h!9942 l!2882)) lt!210227)))

(declare-fun b!471944 () Bool)

(assert (=> b!471944 (= e!288650 (contains!1026 l!2882 (h!9942 l!2882)))))

(assert (= (and d!179440 res!209346) b!471944))

(declare-fun m!745391 () Bool)

(assert (=> d!179440 m!745391))

(declare-fun m!745393 () Bool)

(assert (=> d!179440 m!745393))

(assert (=> d!179440 m!745349))

(declare-fun m!745395 () Bool)

(assert (=> b!471944 m!745395))

(assert (=> b!471900 d!179440))

(declare-fun d!179442 () Bool)

(declare-fun res!209351 () Bool)

(declare-fun e!288655 () Bool)

(assert (=> d!179442 (=> res!209351 e!288655)))

(assert (=> d!179442 (= res!209351 (is-Nil!4545 l!2882))))

(assert (=> d!179442 (= (forall!1327 l!2882 p!1789) e!288655)))

(declare-fun b!471949 () Bool)

(declare-fun e!288656 () Bool)

(assert (=> b!471949 (= e!288655 e!288656)))

(declare-fun res!209352 () Bool)

(assert (=> b!471949 (=> (not res!209352) (not e!288656))))

(assert (=> b!471949 (= res!209352 (dynLambda!2864 p!1789 (h!9942 l!2882)))))

(declare-fun b!471950 () Bool)

(assert (=> b!471950 (= e!288656 (forall!1327 (t!72985 l!2882) p!1789))))

(assert (= (and d!179442 (not res!209351)) b!471949))

(assert (= (and b!471949 res!209352) b!471950))

(declare-fun b_lambda!19709 () Bool)

(assert (=> (not b_lambda!19709) (not b!471949)))

(assert (=> b!471949 t!72984))

(declare-fun b_and!50473 () Bool)

(assert (= b_and!50465 (and (=> t!72984 result!51800) b_and!50473)))

(assert (=> b!471949 m!745341))

(assert (=> b!471950 m!745335))

(assert (=> b!471894 d!179442))

(declare-fun d!179444 () Bool)

(declare-fun res!209353 () Bool)

(declare-fun e!288657 () Bool)

(assert (=> d!179444 (=> res!209353 e!288657)))

(assert (=> d!179444 (= res!209353 (is-Nil!4545 (t!72985 l!2882)))))

(assert (=> d!179444 (= (forall!1327 (t!72985 l!2882) p!1789) e!288657)))

(declare-fun b!471951 () Bool)

(declare-fun e!288658 () Bool)

(assert (=> b!471951 (= e!288657 e!288658)))

(declare-fun res!209354 () Bool)

(assert (=> b!471951 (=> (not res!209354) (not e!288658))))

(assert (=> b!471951 (= res!209354 (dynLambda!2864 p!1789 (h!9942 (t!72985 l!2882))))))

(declare-fun b!471952 () Bool)

(assert (=> b!471952 (= e!288658 (forall!1327 (t!72985 (t!72985 l!2882)) p!1789))))

(assert (= (and d!179444 (not res!209353)) b!471951))

(assert (= (and b!471951 res!209354) b!471952))

(declare-fun b_lambda!19711 () Bool)

(assert (=> (not b_lambda!19711) (not b!471951)))

(declare-fun t!72991 () Bool)

(declare-fun tb!47033 () Bool)

(assert (=> (and start!45148 (= p!1789 p!1789) t!72991) tb!47033))

(declare-fun result!51804 () Bool)

(assert (=> tb!47033 (= result!51804 true)))

(assert (=> b!471951 t!72991))

(declare-fun b_and!50475 () Bool)

(assert (= b_and!50473 (and (=> t!72991 result!51804) b_and!50475)))

(declare-fun m!745397 () Bool)

(assert (=> b!471951 m!745397))

(declare-fun m!745399 () Bool)

(assert (=> b!471952 m!745399))

(assert (=> b!471894 d!179444))

(declare-fun bs!58446 () Bool)

(declare-fun d!179446 () Bool)

(assert (= bs!58446 (and d!179446 start!45148)))

(declare-fun lambda!13995 () Int)

(assert (=> bs!58446 (= lambda!13995 lambda!13987)))

(assert (=> d!179446 true))

(assert (=> d!179446 (< (dynLambda!2861 order!4191 f!1027) (dynLambda!2862 order!4193 lambda!13995))))

(assert (=> d!179446 true))

(assert (=> d!179446 (< (dynLambda!2863 order!4195 p!1789) (dynLambda!2862 order!4193 lambda!13995))))

(assert (=> d!179446 (forall!1327 (t!72985 l!2882) p!1789)))

(declare-fun lt!210230 () Unit!8299)

(declare-fun choose!3572 ((Set A!373) Int Int List!4555) Unit!8299)

(assert (=> d!179446 (= lt!210230 (choose!3572 s!1494 f!1027 p!1789 (t!72985 l!2882)))))

(assert (=> d!179446 (Forall!241 lambda!13995)))

(assert (=> d!179446 (= (lemmaFlatMapForallToList!3 s!1494 f!1027 p!1789 (t!72985 l!2882)) lt!210230)))

(declare-fun bs!58447 () Bool)

(assert (= bs!58447 d!179446))

(assert (=> bs!58447 m!745335))

(declare-fun m!745401 () Bool)

(assert (=> bs!58447 m!745401))

(declare-fun m!745403 () Bool)

(assert (=> bs!58447 m!745403))

(assert (=> b!471894 d!179446))

(declare-fun d!179448 () Bool)

(declare-fun choose!3573 (Int) Bool)

(assert (=> d!179448 (= (Forall!241 lambda!13987) (choose!3573 lambda!13987))))

(declare-fun bs!58448 () Bool)

(assert (= bs!58448 d!179448))

(declare-fun m!745405 () Bool)

(assert (=> bs!58448 m!745405))

(assert (=> b!471897 d!179448))

(declare-fun b!471967 () Bool)

(declare-fun e!288669 () Bool)

(assert (=> b!471967 (= e!288669 (subseq!112 l!2882 lt!210202))))

(declare-fun b!471968 () Bool)

(declare-fun c!94859 () Bool)

(declare-fun isEmpty!3531 (List!4555) Bool)

(assert (=> b!471968 (= c!94859 (not (isEmpty!3531 (t!72985 l!2882))))))

(declare-fun e!288667 () Unit!8299)

(declare-fun e!288668 () Unit!8299)

(assert (=> b!471968 (= e!288667 e!288668)))

(declare-fun b!471969 () Bool)

(declare-fun call!32814 () Unit!8299)

(assert (=> b!471969 (= e!288668 call!32814)))

(declare-fun b!471970 () Bool)

(declare-fun e!288670 () Unit!8299)

(declare-fun Unit!8303 () Unit!8299)

(assert (=> b!471970 (= e!288670 Unit!8303)))

(declare-fun d!179450 () Bool)

(declare-fun tail!666 (List!4555) List!4555)

(assert (=> d!179450 (subseq!112 (tail!666 l!2882) lt!210202)))

(declare-fun lt!210233 () Unit!8299)

(assert (=> d!179450 (= lt!210233 e!288670)))

(declare-fun c!94857 () Bool)

(assert (=> d!179450 (= c!94857 (and (is-Cons!4545 l!2882) (is-Cons!4545 lt!210202)))))

(assert (=> d!179450 e!288669))

(declare-fun res!209357 () Bool)

(assert (=> d!179450 (=> (not res!209357) (not e!288669))))

(assert (=> d!179450 (= res!209357 (not (isEmpty!3531 l!2882)))))

(assert (=> d!179450 (= (subseqTail!11 l!2882 lt!210202) lt!210233)))

(declare-fun bm!32809 () Bool)

(declare-fun c!94858 () Bool)

(assert (=> bm!32809 (= call!32814 (subseqTail!11 (ite c!94858 l!2882 (t!72985 l!2882)) (t!72985 lt!210202)))))

(declare-fun b!471971 () Bool)

(assert (=> b!471971 (= e!288670 e!288667)))

(assert (=> b!471971 (= c!94858 (subseq!112 l!2882 (t!72985 lt!210202)))))

(declare-fun b!471972 () Bool)

(declare-fun Unit!8304 () Unit!8299)

(assert (=> b!471972 (= e!288668 Unit!8304)))

(declare-fun b!471973 () Bool)

(assert (=> b!471973 (= e!288667 call!32814)))

(assert (= (and d!179450 res!209357) b!471967))

(assert (= (and d!179450 c!94857) b!471971))

(assert (= (and d!179450 (not c!94857)) b!471970))

(assert (= (and b!471971 c!94858) b!471973))

(assert (= (and b!471971 (not c!94858)) b!471968))

(assert (= (and b!471968 c!94859) b!471969))

(assert (= (and b!471968 (not c!94859)) b!471972))

(assert (= (or b!471973 b!471969) bm!32809))

(declare-fun m!745407 () Bool)

(assert (=> b!471968 m!745407))

(declare-fun m!745409 () Bool)

(assert (=> b!471971 m!745409))

(declare-fun m!745411 () Bool)

(assert (=> bm!32809 m!745411))

(declare-fun m!745413 () Bool)

(assert (=> d!179450 m!745413))

(assert (=> d!179450 m!745413))

(declare-fun m!745415 () Bool)

(assert (=> d!179450 m!745415))

(declare-fun m!745417 () Bool)

(assert (=> d!179450 m!745417))

(assert (=> b!471967 m!745349))

(assert (=> b!471897 d!179450))

(declare-fun d!179452 () Bool)

(assert (=> d!179452 (dynLambda!2864 p!1789 (h!9942 l!2882))))

(declare-fun lt!210236 () Unit!8299)

(declare-fun choose!3574 ((Set A!373) Int Int B!935) Unit!8299)

(assert (=> d!179452 (= lt!210236 (choose!3574 s!1494 f!1027 p!1789 (h!9942 l!2882)))))

(assert (=> d!179452 (set.member (h!9942 l!2882) (flatMap!91 s!1494 f!1027))))

(assert (=> d!179452 (= (lemmaFlatMapForallElem!13 s!1494 f!1027 p!1789 (h!9942 l!2882)) lt!210236)))

(declare-fun b_lambda!19713 () Bool)

(assert (=> (not b_lambda!19713) (not d!179452)))

(assert (=> d!179452 t!72984))

(declare-fun b_and!50477 () Bool)

(assert (= b_and!50475 (and (=> t!72984 result!51800) b_and!50477)))

(assert (=> d!179452 m!745341))

(declare-fun m!745419 () Bool)

(assert (=> d!179452 m!745419))

(assert (=> d!179452 m!745353))

(declare-fun m!745421 () Bool)

(assert (=> d!179452 m!745421))

(assert (=> b!471897 d!179452))

(declare-fun bs!58449 () Bool)

(declare-fun d!179454 () Bool)

(assert (= bs!58449 (and d!179454 start!45148)))

(declare-fun lambda!13998 () Int)

(assert (=> bs!58449 (not (= lambda!13998 lambda!13987))))

(declare-fun bs!58450 () Bool)

(assert (= bs!58450 (and d!179454 d!179446)))

(assert (=> bs!58450 (not (= lambda!13998 lambda!13995))))

(assert (=> d!179454 true))

(assert (=> d!179454 true))

(assert (=> d!179454 (< (dynLambda!2861 order!4191 f!1027) (dynLambda!2862 order!4193 lambda!13998))))

(declare-fun exists!52 ((Set A!373) Int) Bool)

(assert (=> d!179454 (= (set.member (h!9942 l!2882) (flatMap!91 s!1494 f!1027)) (exists!52 s!1494 lambda!13998))))

(declare-fun lt!210239 () A!373)

(declare-fun choose!3575 ((Set A!373) Int B!935) A!373)

(assert (=> d!179454 (= lt!210239 (choose!3575 s!1494 f!1027 (h!9942 l!2882)))))

(assert (=> d!179454 (= (flatMapPost!19 s!1494 f!1027 (h!9942 l!2882)) lt!210239)))

(declare-fun bs!58451 () Bool)

(assert (= bs!58451 d!179454))

(assert (=> bs!58451 m!745353))

(assert (=> bs!58451 m!745421))

(declare-fun m!745423 () Bool)

(assert (=> bs!58451 m!745423))

(declare-fun m!745425 () Bool)

(assert (=> bs!58451 m!745425))

(assert (=> b!471897 d!179454))

(assert (=> start!45148 d!179448))

(declare-fun b!471979 () Bool)

(declare-fun e!288673 () Bool)

(assert (=> b!471979 (= e!288673 (subseq!112 (t!72985 l!2882) (t!72985 lt!210202)))))

(declare-fun d!179456 () Bool)

(declare-fun res!209361 () Bool)

(declare-fun e!288674 () Bool)

(assert (=> d!179456 (=> res!209361 e!288674)))

(assert (=> d!179456 (= res!209361 (is-Nil!4545 l!2882))))

(assert (=> d!179456 (= (subseq!112 l!2882 lt!210202) e!288674)))

(declare-fun b!471978 () Bool)

(declare-fun e!288671 () Bool)

(declare-fun e!288672 () Bool)

(assert (=> b!471978 (= e!288671 e!288672)))

(declare-fun res!209360 () Bool)

(assert (=> b!471978 (=> res!209360 e!288672)))

(assert (=> b!471978 (= res!209360 e!288673)))

(declare-fun res!209358 () Bool)

(assert (=> b!471978 (=> (not res!209358) (not e!288673))))

(assert (=> b!471978 (= res!209358 (= (h!9942 l!2882) (h!9942 lt!210202)))))

(declare-fun b!471980 () Bool)

(assert (=> b!471980 (= e!288672 (subseq!112 l!2882 (t!72985 lt!210202)))))

(declare-fun b!471977 () Bool)

(assert (=> b!471977 (= e!288674 e!288671)))

(declare-fun res!209359 () Bool)

(assert (=> b!471977 (=> (not res!209359) (not e!288671))))

(assert (=> b!471977 (= res!209359 (is-Cons!4545 lt!210202))))

(assert (= (and d!179456 (not res!209361)) b!471977))

(assert (= (and b!471977 res!209359) b!471978))

(assert (= (and b!471978 res!209358) b!471979))

(assert (= (and b!471978 (not res!209360)) b!471980))

(assert (=> b!471979 m!745389))

(assert (=> b!471980 m!745409))

(assert (=> b!471896 d!179456))

(declare-fun d!179458 () Bool)

(declare-fun e!288677 () Bool)

(assert (=> d!179458 e!288677))

(declare-fun res!209364 () Bool)

(assert (=> d!179458 (=> (not res!209364) (not e!288677))))

(declare-fun lt!210242 () List!4555)

(declare-fun noDuplicate!97 (List!4555) Bool)

(assert (=> d!179458 (= res!209364 (noDuplicate!97 lt!210242))))

(declare-fun choose!3576 ((Set B!935)) List!4555)

(assert (=> d!179458 (= lt!210242 (choose!3576 lt!210206))))

(assert (=> d!179458 (= (toList!326 lt!210206) lt!210242)))

(declare-fun b!471983 () Bool)

(declare-fun content!774 (List!4555) (Set B!935))

(assert (=> b!471983 (= e!288677 (= (content!774 lt!210242) lt!210206))))

(assert (= (and d!179458 res!209364) b!471983))

(declare-fun m!745427 () Bool)

(assert (=> d!179458 m!745427))

(declare-fun m!745429 () Bool)

(assert (=> d!179458 m!745429))

(declare-fun m!745431 () Bool)

(assert (=> b!471983 m!745431))

(assert (=> b!471896 d!179458))

(declare-fun d!179460 () Bool)

(declare-fun choose!3577 ((Set A!373) Int) (Set B!935))

(assert (=> d!179460 (= (flatMap!91 s!1494 f!1027) (choose!3577 s!1494 f!1027))))

(declare-fun bs!58452 () Bool)

(assert (= bs!58452 d!179460))

(declare-fun m!745433 () Bool)

(assert (=> bs!58452 m!745433))

(assert (=> b!471896 d!179460))

(declare-fun condSetEmpty!1955 () Bool)

(assert (=> setNonEmpty!1949 (= condSetEmpty!1955 (= setRest!1949 (as set.empty (Set A!373))))))

(declare-fun setRes!1955 () Bool)

(assert (=> setNonEmpty!1949 (= tp!130717 setRes!1955)))

(declare-fun setIsEmpty!1955 () Bool)

(assert (=> setIsEmpty!1955 setRes!1955))

(declare-fun setNonEmpty!1955 () Bool)

(declare-fun tp!130734 () Bool)

(assert (=> setNonEmpty!1955 (= setRes!1955 (and tp!130734 tp_is_empty!2125))))

(declare-fun setElem!1955 () A!373)

(declare-fun setRest!1955 () (Set A!373))

(assert (=> setNonEmpty!1955 (= setRest!1949 (set.union (set.insert setElem!1955 (as set.empty (Set A!373))) setRest!1955))))

(assert (= (and setNonEmpty!1949 condSetEmpty!1955) setIsEmpty!1955))

(assert (= (and setNonEmpty!1949 (not condSetEmpty!1955)) setNonEmpty!1955))

(declare-fun b!471990 () Bool)

(declare-fun e!288680 () Bool)

(declare-fun tp!130737 () Bool)

(assert (=> b!471990 (= e!288680 (and tp_is_empty!2127 tp!130737))))

(assert (=> b!471899 (= tp!130718 e!288680)))

(assert (= (and b!471899 (is-Cons!4545 (t!72985 l!2882))) b!471990))

(declare-fun b_lambda!19717 () Bool)

(assert (= b_lambda!19709 (or (and start!45148 b_free!13159) b_lambda!19717)))

(declare-fun b_lambda!19719 () Bool)

(assert (= b_lambda!19713 (or (and start!45148 b_free!13159) b_lambda!19719)))

(declare-fun b_lambda!19721 () Bool)

(assert (= b_lambda!19711 (or (and start!45148 b_free!13159) b_lambda!19721)))

(push 1)

(assert b_and!50461)

(assert b_and!50477)

(assert (not b!471968))

(assert (not d!179452))

(assert (not bm!32809))

(assert (not b!471950))

(assert (not b!471980))

(assert (not b!471979))

(assert (not b!471952))

(assert (not d!179450))

(assert (not d!179448))

(assert (not b!471967))

(assert (not b_lambda!19719))

(assert (not b_lambda!19721))

(assert (not b_lambda!19707))

(assert (not b_next!13159))

(assert (not d!179446))

(assert (not b!471983))

(assert (not b!471944))

(assert tp_is_empty!2127)

(assert (not d!179440))

(assert (not d!179454))

(assert (not b!471971))

(assert (not setNonEmpty!1955))

(assert (not b_lambda!19717))

(assert (not d!179458))

(assert (not b!471990))

(assert tp_is_empty!2125)

(assert (not b!471940))

(assert (not d!179460))

(assert (not b!471941))

(assert (not b_next!13157))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50461)

(assert b_and!50477)

(assert (not b_next!13159))

(assert (not b_next!13157))

(check-sat)

(pop 1)

