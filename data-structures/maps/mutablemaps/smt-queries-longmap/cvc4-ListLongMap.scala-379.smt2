; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7184 () Bool)

(assert start!7184)

(declare-fun res!26931 () Bool)

(declare-fun e!29315 () Bool)

(assert (=> start!7184 (=> (not res!26931) (not e!29315))))

(declare-datatypes ((B!858 0))(
  ( (B!859 (val!1016 Int)) )
))
(declare-datatypes ((tuple2!1684 0))(
  ( (tuple2!1685 (_1!852 (_ BitVec 64)) (_2!852 B!858)) )
))
(declare-datatypes ((List!1250 0))(
  ( (Nil!1247) (Cons!1246 (h!1826 tuple2!1684) (t!4283 List!1250)) )
))
(declare-fun l!812 () List!1250)

(declare-fun isStrictlySorted!224 (List!1250) Bool)

(assert (=> start!7184 (= res!26931 (isStrictlySorted!224 l!812))))

(assert (=> start!7184 e!29315))

(declare-fun e!29314 () Bool)

(assert (=> start!7184 e!29314))

(assert (=> start!7184 true))

(declare-fun b!46037 () Bool)

(declare-fun res!26932 () Bool)

(assert (=> b!46037 (=> (not res!26932) (not e!29315))))

(assert (=> b!46037 (= res!26932 (not (is-Cons!1246 l!812)))))

(declare-fun b!46038 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!39 (List!1250 (_ BitVec 64)) List!1250)

(assert (=> b!46038 (= e!29315 (not (isStrictlySorted!224 (removeStrictlySorted!39 l!812 key1!43))))))

(declare-fun b!46039 () Bool)

(declare-fun tp_is_empty!1955 () Bool)

(declare-fun tp!6044 () Bool)

(assert (=> b!46039 (= e!29314 (and tp_is_empty!1955 tp!6044))))

(assert (= (and start!7184 res!26931) b!46037))

(assert (= (and b!46037 res!26932) b!46038))

(assert (= (and start!7184 (is-Cons!1246 l!812)) b!46039))

(declare-fun m!40605 () Bool)

(assert (=> start!7184 m!40605))

(declare-fun m!40607 () Bool)

(assert (=> b!46038 m!40607))

(assert (=> b!46038 m!40607))

(declare-fun m!40609 () Bool)

(assert (=> b!46038 m!40609))

(push 1)

(assert (not start!7184))

(assert (not b!46038))

(assert (not b!46039))

(assert tp_is_empty!1955)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9033 () Bool)

(declare-fun res!26946 () Bool)

(declare-fun e!29330 () Bool)

(assert (=> d!9033 (=> res!26946 e!29330)))

(assert (=> d!9033 (= res!26946 (or (is-Nil!1247 l!812) (is-Nil!1247 (t!4283 l!812))))))

(assert (=> d!9033 (= (isStrictlySorted!224 l!812) e!29330)))

(declare-fun b!46052 () Bool)

(declare-fun e!29332 () Bool)

(assert (=> b!46052 (= e!29330 e!29332)))

(declare-fun res!26948 () Bool)

(assert (=> b!46052 (=> (not res!26948) (not e!29332))))

(assert (=> b!46052 (= res!26948 (bvslt (_1!852 (h!1826 l!812)) (_1!852 (h!1826 (t!4283 l!812)))))))

(declare-fun b!46053 () Bool)

(assert (=> b!46053 (= e!29332 (isStrictlySorted!224 (t!4283 l!812)))))

(assert (= (and d!9033 (not res!26946)) b!46052))

(assert (= (and b!46052 res!26948) b!46053))

(declare-fun m!40615 () Bool)

(assert (=> b!46053 m!40615))

(assert (=> start!7184 d!9033))

(declare-fun d!9041 () Bool)

(declare-fun res!26953 () Bool)

(declare-fun e!29336 () Bool)

(assert (=> d!9041 (=> res!26953 e!29336)))

(assert (=> d!9041 (= res!26953 (or (is-Nil!1247 (removeStrictlySorted!39 l!812 key1!43)) (is-Nil!1247 (t!4283 (removeStrictlySorted!39 l!812 key1!43)))))))

(assert (=> d!9041 (= (isStrictlySorted!224 (removeStrictlySorted!39 l!812 key1!43)) e!29336)))

(declare-fun b!46060 () Bool)

(declare-fun e!29338 () Bool)

(assert (=> b!46060 (= e!29336 e!29338)))

(declare-fun res!26955 () Bool)

(assert (=> b!46060 (=> (not res!26955) (not e!29338))))

(assert (=> b!46060 (= res!26955 (bvslt (_1!852 (h!1826 (removeStrictlySorted!39 l!812 key1!43))) (_1!852 (h!1826 (t!4283 (removeStrictlySorted!39 l!812 key1!43))))))))

(declare-fun b!46062 () Bool)

(assert (=> b!46062 (= e!29338 (isStrictlySorted!224 (t!4283 (removeStrictlySorted!39 l!812 key1!43))))))

(assert (= (and d!9041 (not res!26953)) b!46060))

(assert (= (and b!46060 res!26955) b!46062))

(declare-fun m!40621 () Bool)

(assert (=> b!46062 m!40621))

(assert (=> b!46038 d!9041))

(declare-fun b!46104 () Bool)

(declare-fun e!29364 () List!1250)

(declare-fun e!29366 () List!1250)

(assert (=> b!46104 (= e!29364 e!29366)))

(declare-fun c!6243 () Bool)

(assert (=> b!46104 (= c!6243 (and (is-Cons!1246 l!812) (not (= (_1!852 (h!1826 l!812)) key1!43))))))

(declare-fun b!46105 () Bool)

(declare-fun e!29365 () Bool)

(declare-fun lt!20279 () List!1250)

(declare-fun containsKey!85 (List!1250 (_ BitVec 64)) Bool)

(assert (=> b!46105 (= e!29365 (not (containsKey!85 lt!20279 key1!43)))))

(declare-fun b!46106 () Bool)

(assert (=> b!46106 (= e!29366 Nil!1247)))

(declare-fun d!9047 () Bool)

(assert (=> d!9047 e!29365))

(declare-fun res!26965 () Bool)

(assert (=> d!9047 (=> (not res!26965) (not e!29365))))

(assert (=> d!9047 (= res!26965 (isStrictlySorted!224 lt!20279))))

(assert (=> d!9047 (= lt!20279 e!29364)))

(declare-fun c!6242 () Bool)

(assert (=> d!9047 (= c!6242 (and (is-Cons!1246 l!812) (= (_1!852 (h!1826 l!812)) key1!43)))))

(assert (=> d!9047 (isStrictlySorted!224 l!812)))

(assert (=> d!9047 (= (removeStrictlySorted!39 l!812 key1!43) lt!20279)))

(declare-fun b!46107 () Bool)

(assert (=> b!46107 (= e!29364 (t!4283 l!812))))

(declare-fun b!46108 () Bool)

(declare-fun $colon$colon!39 (List!1250 tuple2!1684) List!1250)

(assert (=> b!46108 (= e!29366 ($colon$colon!39 (removeStrictlySorted!39 (t!4283 l!812) key1!43) (h!1826 l!812)))))

(assert (= (and d!9047 c!6242) b!46107))

(assert (= (and d!9047 (not c!6242)) b!46104))

(assert (= (and b!46104 c!6243) b!46108))

(assert (= (and b!46104 (not c!6243)) b!46106))

(assert (= (and d!9047 res!26965) b!46105))

(declare-fun m!40627 () Bool)

(assert (=> b!46105 m!40627))

(declare-fun m!40631 () Bool)

(assert (=> d!9047 m!40631))

(assert (=> d!9047 m!40605))

(declare-fun m!40637 () Bool)

(assert (=> b!46108 m!40637))

(assert (=> b!46108 m!40637))

(declare-fun m!40645 () Bool)

(assert (=> b!46108 m!40645))

(assert (=> b!46038 d!9047))

