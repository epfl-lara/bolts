; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7316 () Bool)

(assert start!7316)

(declare-fun res!27390 () Bool)

(declare-fun e!29983 () Bool)

(assert (=> start!7316 (=> (not res!27390) (not e!29983))))

(declare-datatypes ((B!900 0))(
  ( (B!901 (val!1037 Int)) )
))
(declare-datatypes ((tuple2!1726 0))(
  ( (tuple2!1727 (_1!873 (_ BitVec 64)) (_2!873 B!900)) )
))
(declare-datatypes ((List!1271 0))(
  ( (Nil!1268) (Cons!1267 (h!1847 tuple2!1726) (t!4307 List!1271)) )
))
(declare-fun l!812 () List!1271)

(declare-fun isStrictlySorted!242 (List!1271) Bool)

(assert (=> start!7316 (= res!27390 (isStrictlySorted!242 l!812))))

(assert (=> start!7316 e!29983))

(declare-fun e!29984 () Bool)

(assert (=> start!7316 e!29984))

(assert (=> start!7316 true))

(declare-fun b!46958 () Bool)

(declare-fun res!27391 () Bool)

(assert (=> b!46958 (=> (not res!27391) (not e!29983))))

(assert (=> b!46958 (= res!27391 (not (is-Cons!1267 l!812)))))

(declare-fun b!46959 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!48 (List!1271 (_ BitVec 64)) List!1271)

(assert (=> b!46959 (= e!29983 (not (= (removeStrictlySorted!48 (removeStrictlySorted!48 l!812 key1!43) key2!27) (removeStrictlySorted!48 (removeStrictlySorted!48 l!812 key2!27) key1!43))))))

(declare-fun b!46960 () Bool)

(declare-fun tp_is_empty!1997 () Bool)

(declare-fun tp!6164 () Bool)

(assert (=> b!46960 (= e!29984 (and tp_is_empty!1997 tp!6164))))

(assert (= (and start!7316 res!27390) b!46958))

(assert (= (and b!46958 res!27391) b!46959))

(assert (= (and start!7316 (is-Cons!1267 l!812)) b!46960))

(declare-fun m!41351 () Bool)

(assert (=> start!7316 m!41351))

(declare-fun m!41353 () Bool)

(assert (=> b!46959 m!41353))

(assert (=> b!46959 m!41353))

(declare-fun m!41355 () Bool)

(assert (=> b!46959 m!41355))

(declare-fun m!41357 () Bool)

(assert (=> b!46959 m!41357))

(assert (=> b!46959 m!41357))

(declare-fun m!41359 () Bool)

(assert (=> b!46959 m!41359))

(push 1)

(assert (not start!7316))

(assert (not b!46959))

(assert (not b!46960))

(assert tp_is_empty!1997)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9413 () Bool)

(declare-fun res!27400 () Bool)

(declare-fun e!29993 () Bool)

(assert (=> d!9413 (=> res!27400 e!29993)))

(assert (=> d!9413 (= res!27400 (or (is-Nil!1268 l!812) (is-Nil!1268 (t!4307 l!812))))))

(assert (=> d!9413 (= (isStrictlySorted!242 l!812) e!29993)))

(declare-fun b!46969 () Bool)

(declare-fun e!29994 () Bool)

(assert (=> b!46969 (= e!29993 e!29994)))

(declare-fun res!27401 () Bool)

(assert (=> b!46969 (=> (not res!27401) (not e!29994))))

(assert (=> b!46969 (= res!27401 (bvslt (_1!873 (h!1847 l!812)) (_1!873 (h!1847 (t!4307 l!812)))))))

(declare-fun b!46970 () Bool)

(assert (=> b!46970 (= e!29994 (isStrictlySorted!242 (t!4307 l!812)))))

(assert (= (and d!9413 (not res!27400)) b!46969))

(assert (= (and b!46969 res!27401) b!46970))

(declare-fun m!41361 () Bool)

(assert (=> b!46970 m!41361))

(assert (=> start!7316 d!9413))

(declare-fun b!47023 () Bool)

(declare-fun e!30029 () List!1271)

(declare-fun $colon$colon!47 (List!1271 tuple2!1726) List!1271)

(assert (=> b!47023 (= e!30029 ($colon$colon!47 (removeStrictlySorted!48 (t!4307 (removeStrictlySorted!48 l!812 key1!43)) key2!27) (h!1847 (removeStrictlySorted!48 l!812 key1!43))))))

(declare-fun d!9417 () Bool)

(declare-fun e!30027 () Bool)

(assert (=> d!9417 e!30027))

(declare-fun res!27414 () Bool)

(assert (=> d!9417 (=> (not res!27414) (not e!30027))))

(declare-fun lt!20386 () List!1271)

(assert (=> d!9417 (= res!27414 (isStrictlySorted!242 lt!20386))))

(declare-fun e!30028 () List!1271)

(assert (=> d!9417 (= lt!20386 e!30028)))

(declare-fun c!6400 () Bool)

(assert (=> d!9417 (= c!6400 (and (is-Cons!1267 (removeStrictlySorted!48 l!812 key1!43)) (= (_1!873 (h!1847 (removeStrictlySorted!48 l!812 key1!43))) key2!27)))))

(assert (=> d!9417 (isStrictlySorted!242 (removeStrictlySorted!48 l!812 key1!43))))

(assert (=> d!9417 (= (removeStrictlySorted!48 (removeStrictlySorted!48 l!812 key1!43) key2!27) lt!20386)))

(declare-fun b!47024 () Bool)

(assert (=> b!47024 (= e!30028 (t!4307 (removeStrictlySorted!48 l!812 key1!43)))))

(declare-fun b!47025 () Bool)

(declare-fun containsKey!94 (List!1271 (_ BitVec 64)) Bool)

(assert (=> b!47025 (= e!30027 (not (containsKey!94 lt!20386 key2!27)))))

(declare-fun b!47026 () Bool)

(assert (=> b!47026 (= e!30028 e!30029)))

(declare-fun c!6399 () Bool)

(assert (=> b!47026 (= c!6399 (and (is-Cons!1267 (removeStrictlySorted!48 l!812 key1!43)) (not (= (_1!873 (h!1847 (removeStrictlySorted!48 l!812 key1!43))) key2!27))))))

(declare-fun b!47027 () Bool)

(assert (=> b!47027 (= e!30029 Nil!1268)))

(assert (= (and d!9417 c!6400) b!47024))

(assert (= (and d!9417 (not c!6400)) b!47026))

(assert (= (and b!47026 c!6399) b!47023))

(assert (= (and b!47026 (not c!6399)) b!47027))

(assert (= (and d!9417 res!27414) b!47025))

(declare-fun m!41401 () Bool)

(assert (=> b!47023 m!41401))

(assert (=> b!47023 m!41401))

(declare-fun m!41403 () Bool)

(assert (=> b!47023 m!41403))

(declare-fun m!41405 () Bool)

(assert (=> d!9417 m!41405))

(assert (=> d!9417 m!41353))

(declare-fun m!41407 () Bool)

(assert (=> d!9417 m!41407))

(declare-fun m!41409 () Bool)

(assert (=> b!47025 m!41409))

(assert (=> b!46959 d!9417))

(declare-fun b!47028 () Bool)

(declare-fun e!30032 () List!1271)

(assert (=> b!47028 (= e!30032 ($colon$colon!47 (removeStrictlySorted!48 (t!4307 l!812) key1!43) (h!1847 l!812)))))

(declare-fun d!9429 () Bool)

(declare-fun e!30030 () Bool)

(assert (=> d!9429 e!30030))

(declare-fun res!27415 () Bool)

(assert (=> d!9429 (=> (not res!27415) (not e!30030))))

(declare-fun lt!20387 () List!1271)

(assert (=> d!9429 (= res!27415 (isStrictlySorted!242 lt!20387))))

(declare-fun e!30031 () List!1271)

(assert (=> d!9429 (= lt!20387 e!30031)))

(declare-fun c!6402 () Bool)

(assert (=> d!9429 (= c!6402 (and (is-Cons!1267 l!812) (= (_1!873 (h!1847 l!812)) key1!43)))))

(assert (=> d!9429 (isStrictlySorted!242 l!812)))

(assert (=> d!9429 (= (removeStrictlySorted!48 l!812 key1!43) lt!20387)))

(declare-fun b!47029 () Bool)

(assert (=> b!47029 (= e!30031 (t!4307 l!812))))

(declare-fun b!47030 () Bool)

(assert (=> b!47030 (= e!30030 (not (containsKey!94 lt!20387 key1!43)))))

(declare-fun b!47031 () Bool)

(assert (=> b!47031 (= e!30031 e!30032)))

(declare-fun c!6401 () Bool)

(assert (=> b!47031 (= c!6401 (and (is-Cons!1267 l!812) (not (= (_1!873 (h!1847 l!812)) key1!43))))))

(declare-fun b!47032 () Bool)

(assert (=> b!47032 (= e!30032 Nil!1268)))

(assert (= (and d!9429 c!6402) b!47029))

(assert (= (and d!9429 (not c!6402)) b!47031))

(assert (= (and b!47031 c!6401) b!47028))

(assert (= (and b!47031 (not c!6401)) b!47032))

(assert (= (and d!9429 res!27415) b!47030))

(declare-fun m!41411 () Bool)

(assert (=> b!47028 m!41411))

(assert (=> b!47028 m!41411))

(declare-fun m!41413 () Bool)

(assert (=> b!47028 m!41413))

(declare-fun m!41415 () Bool)

(assert (=> d!9429 m!41415))

(assert (=> d!9429 m!41351))

(declare-fun m!41419 () Bool)

(assert (=> b!47030 m!41419))

(assert (=> b!46959 d!9429))

(declare-fun e!30040 () List!1271)

(declare-fun b!47038 () Bool)

(assert (=> b!47038 (= e!30040 ($colon$colon!47 (removeStrictlySorted!48 (t!4307 (removeStrictlySorted!48 l!812 key2!27)) key1!43) (h!1847 (removeStrictlySorted!48 l!812 key2!27))))))

(declare-fun d!9431 () Bool)

(declare-fun e!30036 () Bool)

(assert (=> d!9431 e!30036))

(declare-fun res!27417 () Bool)

(assert (=> d!9431 (=> (not res!27417) (not e!30036))))

(declare-fun lt!20389 () List!1271)

(assert (=> d!9431 (= res!27417 (isStrictlySorted!242 lt!20389))))

(declare-fun e!30039 () List!1271)

(assert (=> d!9431 (= lt!20389 e!30039)))

(declare-fun c!6406 () Bool)

(assert (=> d!9431 (= c!6406 (and (is-Cons!1267 (removeStrictlySorted!48 l!812 key2!27)) (= (_1!873 (h!1847 (removeStrictlySorted!48 l!812 key2!27))) key1!43)))))

(assert (=> d!9431 (isStrictlySorted!242 (removeStrictlySorted!48 l!812 key2!27))))

(assert (=> d!9431 (= (removeStrictlySorted!48 (removeStrictlySorted!48 l!812 key2!27) key1!43) lt!20389)))

(declare-fun b!47039 () Bool)

(assert (=> b!47039 (= e!30039 (t!4307 (removeStrictlySorted!48 l!812 key2!27)))))

(declare-fun b!47040 () Bool)

(assert (=> b!47040 (= e!30036 (not (containsKey!94 lt!20389 key1!43)))))

(declare-fun b!47041 () Bool)

(assert (=> b!47041 (= e!30039 e!30040)))

(declare-fun c!6405 () Bool)

(assert (=> b!47041 (= c!6405 (and (is-Cons!1267 (removeStrictlySorted!48 l!812 key2!27)) (not (= (_1!873 (h!1847 (removeStrictlySorted!48 l!812 key2!27))) key1!43))))))

(declare-fun b!47042 () Bool)

(assert (=> b!47042 (= e!30040 Nil!1268)))

(assert (= (and d!9431 c!6406) b!47039))

(assert (= (and d!9431 (not c!6406)) b!47041))

(assert (= (and b!47041 c!6405) b!47038))

(assert (= (and b!47041 (not c!6405)) b!47042))

(assert (= (and d!9431 res!27417) b!47040))

(declare-fun m!41429 () Bool)

(assert (=> b!47038 m!41429))

(assert (=> b!47038 m!41429))

(declare-fun m!41431 () Bool)

(assert (=> b!47038 m!41431))

