; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1740 () Bool)

(assert start!1740)

(declare-fun b!12237 () Bool)

(declare-fun res!9924 () Bool)

(declare-fun e!7312 () Bool)

(assert (=> b!12237 (=> (not res!9924) (not e!7312))))

(declare-datatypes ((B!446 0))(
  ( (B!447 (val!318 Int)) )
))
(declare-datatypes ((tuple2!418 0))(
  ( (tuple2!419 (_1!209 (_ BitVec 64)) (_2!209 B!446)) )
))
(declare-datatypes ((List!365 0))(
  ( (Nil!362) (Cons!361 (h!927 tuple2!418) (t!2752 List!365)) )
))
(declare-fun l!1094 () List!365)

(declare-fun key!303 () (_ BitVec 64))

(assert (=> b!12237 (= res!9924 (and (is-Cons!361 l!1094) (not (= (_1!209 (h!927 l!1094)) key!303))))))

(declare-fun b!12238 () Bool)

(declare-fun res!9926 () Bool)

(assert (=> b!12238 (=> (not res!9926) (not e!7312))))

(declare-fun isStrictlySorted!62 (List!365) Bool)

(assert (=> b!12238 (= res!9926 (isStrictlySorted!62 (t!2752 l!1094)))))

(declare-fun b!12239 () Bool)

(declare-fun e!7313 () Bool)

(declare-fun tp_is_empty!619 () Bool)

(declare-fun tp!2060 () Bool)

(assert (=> b!12239 (= e!7313 (and tp_is_empty!619 tp!2060))))

(declare-fun b!12240 () Bool)

(declare-fun ListPrimitiveSize!16 (List!365) Int)

(assert (=> b!12240 (= e!7312 (>= (ListPrimitiveSize!16 (t!2752 l!1094)) (ListPrimitiveSize!16 l!1094)))))

(declare-fun res!9925 () Bool)

(declare-fun e!7311 () Bool)

(assert (=> start!1740 (=> (not res!9925) (not e!7311))))

(assert (=> start!1740 (= res!9925 (isStrictlySorted!62 l!1094))))

(assert (=> start!1740 e!7311))

(assert (=> start!1740 e!7313))

(assert (=> start!1740 tp_is_empty!619))

(assert (=> start!1740 true))

(declare-fun b!12241 () Bool)

(declare-fun res!9928 () Bool)

(assert (=> b!12241 (=> (not res!9928) (not e!7312))))

(declare-datatypes ((Option!50 0))(
  ( (Some!49 (v!1364 B!446)) (None!48) )
))
(declare-fun lt!3108 () Option!50)

(declare-fun getValueByKey!44 (List!365 (_ BitVec 64)) Option!50)

(assert (=> b!12241 (= res!9928 (= (getValueByKey!44 (t!2752 l!1094) key!303) lt!3108))))

(declare-fun b!12242 () Bool)

(assert (=> b!12242 (= e!7311 e!7312)))

(declare-fun res!9927 () Bool)

(assert (=> b!12242 (=> (not res!9927) (not e!7312))))

(assert (=> b!12242 (= res!9927 (= (getValueByKey!44 l!1094 key!303) lt!3108))))

(declare-fun v!194 () B!446)

(assert (=> b!12242 (= lt!3108 (Some!49 v!194))))

(assert (= (and start!1740 res!9925) b!12242))

(assert (= (and b!12242 res!9927) b!12237))

(assert (= (and b!12237 res!9924) b!12238))

(assert (= (and b!12238 res!9926) b!12241))

(assert (= (and b!12241 res!9928) b!12240))

(assert (= (and start!1740 (is-Cons!361 l!1094)) b!12239))

(declare-fun m!8399 () Bool)

(assert (=> start!1740 m!8399))

(declare-fun m!8401 () Bool)

(assert (=> b!12241 m!8401))

(declare-fun m!8403 () Bool)

(assert (=> b!12242 m!8403))

(declare-fun m!8405 () Bool)

(assert (=> b!12238 m!8405))

(declare-fun m!8407 () Bool)

(assert (=> b!12240 m!8407))

(declare-fun m!8409 () Bool)

(assert (=> b!12240 m!8409))

(push 1)

(assert (not b!12239))

(assert (not b!12238))

(assert (not b!12241))

(assert tp_is_empty!619)

(assert (not b!12242))

(assert (not b!12240))

(assert (not start!1740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1717 () Bool)

(declare-fun res!9963 () Bool)

(declare-fun e!7342 () Bool)

(assert (=> d!1717 (=> res!9963 e!7342)))

(assert (=> d!1717 (= res!9963 (or (is-Nil!362 (t!2752 l!1094)) (is-Nil!362 (t!2752 (t!2752 l!1094)))))))

(assert (=> d!1717 (= (isStrictlySorted!62 (t!2752 l!1094)) e!7342)))

(declare-fun b!12295 () Bool)

(declare-fun e!7343 () Bool)

(assert (=> b!12295 (= e!7342 e!7343)))

(declare-fun res!9964 () Bool)

(assert (=> b!12295 (=> (not res!9964) (not e!7343))))

(assert (=> b!12295 (= res!9964 (bvslt (_1!209 (h!927 (t!2752 l!1094))) (_1!209 (h!927 (t!2752 (t!2752 l!1094))))))))

(declare-fun b!12296 () Bool)

(assert (=> b!12296 (= e!7343 (isStrictlySorted!62 (t!2752 (t!2752 l!1094))))))

(assert (= (and d!1717 (not res!9963)) b!12295))

(assert (= (and b!12295 res!9964) b!12296))

(declare-fun m!8437 () Bool)

(assert (=> b!12296 m!8437))

(assert (=> b!12238 d!1717))

(declare-fun d!1723 () Bool)

(declare-fun lt!3120 () Int)

(assert (=> d!1723 (>= lt!3120 0)))

(declare-fun e!7353 () Int)

(assert (=> d!1723 (= lt!3120 e!7353)))

(declare-fun c!1076 () Bool)

(assert (=> d!1723 (= c!1076 (is-Nil!362 (t!2752 l!1094)))))

(assert (=> d!1723 (= (ListPrimitiveSize!16 (t!2752 l!1094)) lt!3120)))

(declare-fun b!12310 () Bool)

(assert (=> b!12310 (= e!7353 0)))

(declare-fun b!12312 () Bool)

(assert (=> b!12312 (= e!7353 (+ 1 (ListPrimitiveSize!16 (t!2752 (t!2752 l!1094)))))))

(assert (= (and d!1723 c!1076) b!12310))

(assert (= (and d!1723 (not c!1076)) b!12312))

(declare-fun m!8439 () Bool)

(assert (=> b!12312 m!8439))

(assert (=> b!12240 d!1723))

(declare-fun d!1725 () Bool)

(declare-fun lt!3121 () Int)

(assert (=> d!1725 (>= lt!3121 0)))

(declare-fun e!7354 () Int)

(assert (=> d!1725 (= lt!3121 e!7354)))

(declare-fun c!1077 () Bool)

(assert (=> d!1725 (= c!1077 (is-Nil!362 l!1094))))

(assert (=> d!1725 (= (ListPrimitiveSize!16 l!1094) lt!3121)))

(declare-fun b!12313 () Bool)

(assert (=> b!12313 (= e!7354 0)))

(declare-fun b!12314 () Bool)

(assert (=> b!12314 (= e!7354 (+ 1 (ListPrimitiveSize!16 (t!2752 l!1094))))))

(assert (= (and d!1725 c!1077) b!12313))

(assert (= (and d!1725 (not c!1077)) b!12314))

(assert (=> b!12314 m!8407))

(assert (=> b!12240 d!1725))

(declare-fun d!1729 () Bool)

(declare-fun res!9971 () Bool)

(declare-fun e!7358 () Bool)

(assert (=> d!1729 (=> res!9971 e!7358)))

(assert (=> d!1729 (= res!9971 (or (is-Nil!362 l!1094) (is-Nil!362 (t!2752 l!1094))))))

(assert (=> d!1729 (= (isStrictlySorted!62 l!1094) e!7358)))

(declare-fun b!12319 () Bool)

(declare-fun e!7359 () Bool)

(assert (=> b!12319 (= e!7358 e!7359)))

(declare-fun res!9972 () Bool)

(assert (=> b!12319 (=> (not res!9972) (not e!7359))))

(assert (=> b!12319 (= res!9972 (bvslt (_1!209 (h!927 l!1094)) (_1!209 (h!927 (t!2752 l!1094)))))))

(declare-fun b!12320 () Bool)

(assert (=> b!12320 (= e!7359 (isStrictlySorted!62 (t!2752 l!1094)))))

(assert (= (and d!1729 (not res!9971)) b!12319))

(assert (= (and b!12319 res!9972) b!12320))

(assert (=> b!12320 m!8405))

(assert (=> start!1740 d!1729))

(declare-fun b!12352 () Bool)

(declare-fun e!7379 () Option!50)

(assert (=> b!12352 (= e!7379 None!48)))

(declare-fun b!12349 () Bool)

(declare-fun e!7378 () Option!50)

(assert (=> b!12349 (= e!7378 (Some!49 (_2!209 (h!927 (t!2752 l!1094)))))))

(declare-fun b!12351 () Bool)

(assert (=> b!12351 (= e!7379 (getValueByKey!44 (t!2752 (t!2752 l!1094)) key!303))))

(declare-fun b!12350 () Bool)

(assert (=> b!12350 (= e!7378 e!7379)))

(declare-fun c!1090 () Bool)

(assert (=> b!12350 (= c!1090 (and (is-Cons!361 (t!2752 l!1094)) (not (= (_1!209 (h!927 (t!2752 l!1094))) key!303))))))

(declare-fun d!1733 () Bool)

(declare-fun c!1089 () Bool)

(assert (=> d!1733 (= c!1089 (and (is-Cons!361 (t!2752 l!1094)) (= (_1!209 (h!927 (t!2752 l!1094))) key!303)))))

(assert (=> d!1733 (= (getValueByKey!44 (t!2752 l!1094) key!303) e!7378)))

(assert (= (and d!1733 c!1089) b!12349))

(assert (= (and d!1733 (not c!1089)) b!12350))

(assert (= (and b!12350 c!1090) b!12351))

(assert (= (and b!12350 (not c!1090)) b!12352))

(declare-fun m!8447 () Bool)

(assert (=> b!12351 m!8447))

(assert (=> b!12241 d!1733))

(declare-fun b!12360 () Bool)

(declare-fun e!7383 () Option!50)

(assert (=> b!12360 (= e!7383 None!48)))

(declare-fun b!12357 () Bool)

(declare-fun e!7382 () Option!50)

(assert (=> b!12357 (= e!7382 (Some!49 (_2!209 (h!927 l!1094))))))

(declare-fun b!12359 () Bool)

(assert (=> b!12359 (= e!7383 (getValueByKey!44 (t!2752 l!1094) key!303))))

(declare-fun b!12358 () Bool)

(assert (=> b!12358 (= e!7382 e!7383)))

(declare-fun c!1092 () Bool)

(assert (=> b!12358 (= c!1092 (and (is-Cons!361 l!1094) (not (= (_1!209 (h!927 l!1094)) key!303))))))

(declare-fun d!1741 () Bool)

(declare-fun c!1091 () Bool)

(assert (=> d!1741 (= c!1091 (and (is-Cons!361 l!1094) (= (_1!209 (h!927 l!1094)) key!303)))))

(assert (=> d!1741 (= (getValueByKey!44 l!1094 key!303) e!7382)))

(assert (= (and d!1741 c!1091) b!12357))

(assert (= (and d!1741 (not c!1091)) b!12358))

(assert (= (and b!12358 c!1092) b!12359))

(assert (= (and b!12358 (not c!1092)) b!12360))

(assert (=> b!12359 m!8401))

(assert (=> b!12242 d!1741))

(declare-fun b!12366 () Bool)

(declare-fun e!7387 () Bool)

(declare-fun tp!2072 () Bool)

(assert (=> b!12366 (= e!7387 (and tp_is_empty!619 tp!2072))))

(assert (=> b!12239 (= tp!2060 e!7387)))

(assert (= (and b!12239 (is-Cons!361 (t!2752 l!1094))) b!12366))

(push 1)

