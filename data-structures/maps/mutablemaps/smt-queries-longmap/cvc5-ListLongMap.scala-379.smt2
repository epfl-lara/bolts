; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7180 () Bool)

(assert start!7180)

(declare-fun res!26919 () Bool)

(declare-fun e!29303 () Bool)

(assert (=> start!7180 (=> (not res!26919) (not e!29303))))

(declare-datatypes ((B!854 0))(
  ( (B!855 (val!1014 Int)) )
))
(declare-datatypes ((tuple2!1680 0))(
  ( (tuple2!1681 (_1!850 (_ BitVec 64)) (_2!850 B!854)) )
))
(declare-datatypes ((List!1248 0))(
  ( (Nil!1245) (Cons!1244 (h!1824 tuple2!1680) (t!4281 List!1248)) )
))
(declare-fun l!812 () List!1248)

(declare-fun isStrictlySorted!222 (List!1248) Bool)

(assert (=> start!7180 (= res!26919 (isStrictlySorted!222 l!812))))

(assert (=> start!7180 e!29303))

(declare-fun e!29302 () Bool)

(assert (=> start!7180 e!29302))

(assert (=> start!7180 true))

(declare-fun b!46019 () Bool)

(declare-fun res!26920 () Bool)

(assert (=> b!46019 (=> (not res!26920) (not e!29303))))

(assert (=> b!46019 (= res!26920 (not (is-Cons!1244 l!812)))))

(declare-fun b!46020 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!37 (List!1248 (_ BitVec 64)) List!1248)

(assert (=> b!46020 (= e!29303 (not (isStrictlySorted!222 (removeStrictlySorted!37 l!812 key1!43))))))

(declare-fun b!46021 () Bool)

(declare-fun tp_is_empty!1951 () Bool)

(declare-fun tp!6038 () Bool)

(assert (=> b!46021 (= e!29302 (and tp_is_empty!1951 tp!6038))))

(assert (= (and start!7180 res!26919) b!46019))

(assert (= (and b!46019 res!26920) b!46020))

(assert (= (and start!7180 (is-Cons!1244 l!812)) b!46021))

(declare-fun m!40593 () Bool)

(assert (=> start!7180 m!40593))

(declare-fun m!40595 () Bool)

(assert (=> b!46020 m!40595))

(assert (=> b!46020 m!40595))

(declare-fun m!40597 () Bool)

(assert (=> b!46020 m!40597))

(push 1)

(assert (not start!7180))

(assert (not b!46020))

(assert (not b!46021))

(assert tp_is_empty!1951)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9035 () Bool)

(declare-fun res!26949 () Bool)

(declare-fun e!29328 () Bool)

(assert (=> d!9035 (=> res!26949 e!29328)))

(assert (=> d!9035 (= res!26949 (or (is-Nil!1245 l!812) (is-Nil!1245 (t!4281 l!812))))))

(assert (=> d!9035 (= (isStrictlySorted!222 l!812) e!29328)))

(declare-fun b!46056 () Bool)

(declare-fun e!29333 () Bool)

(assert (=> b!46056 (= e!29328 e!29333)))

(declare-fun res!26950 () Bool)

(assert (=> b!46056 (=> (not res!26950) (not e!29333))))

(assert (=> b!46056 (= res!26950 (bvslt (_1!850 (h!1824 l!812)) (_1!850 (h!1824 (t!4281 l!812)))))))

(declare-fun b!46057 () Bool)

(assert (=> b!46057 (= e!29333 (isStrictlySorted!222 (t!4281 l!812)))))

(assert (= (and d!9035 (not res!26949)) b!46056))

(assert (= (and b!46056 res!26950) b!46057))

(declare-fun m!40613 () Bool)

(assert (=> b!46057 m!40613))

(assert (=> start!7180 d!9035))

(declare-fun d!9039 () Bool)

(declare-fun res!26951 () Bool)

(declare-fun e!29334 () Bool)

(assert (=> d!9039 (=> res!26951 e!29334)))

(assert (=> d!9039 (= res!26951 (or (is-Nil!1245 (removeStrictlySorted!37 l!812 key1!43)) (is-Nil!1245 (t!4281 (removeStrictlySorted!37 l!812 key1!43)))))))

(assert (=> d!9039 (= (isStrictlySorted!222 (removeStrictlySorted!37 l!812 key1!43)) e!29334)))

(declare-fun b!46058 () Bool)

(declare-fun e!29335 () Bool)

(assert (=> b!46058 (= e!29334 e!29335)))

(declare-fun res!26952 () Bool)

(assert (=> b!46058 (=> (not res!26952) (not e!29335))))

(assert (=> b!46058 (= res!26952 (bvslt (_1!850 (h!1824 (removeStrictlySorted!37 l!812 key1!43))) (_1!850 (h!1824 (t!4281 (removeStrictlySorted!37 l!812 key1!43))))))))

(declare-fun b!46059 () Bool)

(assert (=> b!46059 (= e!29335 (isStrictlySorted!222 (t!4281 (removeStrictlySorted!37 l!812 key1!43))))))

(assert (= (and d!9039 (not res!26951)) b!46058))

(assert (= (and b!46058 res!26952) b!46059))

(declare-fun m!40617 () Bool)

(assert (=> b!46059 m!40617))

(assert (=> b!46020 d!9039))

(declare-fun b!46099 () Bool)

(declare-fun e!29362 () List!1248)

(assert (=> b!46099 (= e!29362 (t!4281 l!812))))

(declare-fun b!46100 () Bool)

(declare-fun e!29361 () List!1248)

(declare-fun $colon$colon!37 (List!1248 tuple2!1680) List!1248)

(assert (=> b!46100 (= e!29361 ($colon$colon!37 (removeStrictlySorted!37 (t!4281 l!812) key1!43) (h!1824 l!812)))))

(declare-fun d!9043 () Bool)

(declare-fun e!29363 () Bool)

(assert (=> d!9043 e!29363))

(declare-fun res!26964 () Bool)

(assert (=> d!9043 (=> (not res!26964) (not e!29363))))

(declare-fun lt!20278 () List!1248)

(assert (=> d!9043 (= res!26964 (isStrictlySorted!222 lt!20278))))

(assert (=> d!9043 (= lt!20278 e!29362)))

(declare-fun c!6240 () Bool)

(assert (=> d!9043 (= c!6240 (and (is-Cons!1244 l!812) (= (_1!850 (h!1824 l!812)) key1!43)))))

(assert (=> d!9043 (isStrictlySorted!222 l!812)))

(assert (=> d!9043 (= (removeStrictlySorted!37 l!812 key1!43) lt!20278)))

(declare-fun b!46101 () Bool)

(assert (=> b!46101 (= e!29362 e!29361)))

(declare-fun c!6241 () Bool)

(assert (=> b!46101 (= c!6241 (and (is-Cons!1244 l!812) (not (= (_1!850 (h!1824 l!812)) key1!43))))))

(declare-fun b!46102 () Bool)

(declare-fun containsKey!84 (List!1248 (_ BitVec 64)) Bool)

(assert (=> b!46102 (= e!29363 (not (containsKey!84 lt!20278 key1!43)))))

(declare-fun b!46103 () Bool)

(assert (=> b!46103 (= e!29361 Nil!1245)))

(assert (= (and d!9043 c!6240) b!46099))

(assert (= (and d!9043 (not c!6240)) b!46101))

(assert (= (and b!46101 c!6241) b!46100))

(assert (= (and b!46101 (not c!6241)) b!46103))

(assert (= (and d!9043 res!26964) b!46102))

(declare-fun m!40625 () Bool)

(assert (=> b!46100 m!40625))

(assert (=> b!46100 m!40625))

(declare-fun m!40635 () Bool)

(assert (=> b!46100 m!40635))

(declare-fun m!40639 () Bool)

(assert (=> d!9043 m!40639))

(assert (=> d!9043 m!40593))

(declare-fun m!40644 () Bool)

(assert (=> b!46102 m!40644))

(assert (=> b!46020 d!9043))

(declare-fun b!46123 () Bool)

(declare-fun e!29375 () Bool)

(declare-fun tp!6053 () Bool)

(assert (=> b!46123 (= e!29375 (and tp_is_empty!1951 tp!6053))))

(assert (=> b!46021 (= tp!6038 e!29375)))

(assert (= (and b!46021 (is-Cons!1244 (t!4281 l!812))) b!46123))

(push 1)

