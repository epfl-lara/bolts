; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7312 () Bool)

(assert start!7312)

(declare-fun res!27378 () Bool)

(declare-fun e!29971 () Bool)

(assert (=> start!7312 (=> (not res!27378) (not e!29971))))

(declare-datatypes ((B!896 0))(
  ( (B!897 (val!1035 Int)) )
))
(declare-datatypes ((tuple2!1722 0))(
  ( (tuple2!1723 (_1!871 (_ BitVec 64)) (_2!871 B!896)) )
))
(declare-datatypes ((List!1269 0))(
  ( (Nil!1266) (Cons!1265 (h!1845 tuple2!1722) (t!4305 List!1269)) )
))
(declare-fun l!812 () List!1269)

(declare-fun isStrictlySorted!240 (List!1269) Bool)

(assert (=> start!7312 (= res!27378 (isStrictlySorted!240 l!812))))

(assert (=> start!7312 e!29971))

(declare-fun e!29972 () Bool)

(assert (=> start!7312 e!29972))

(assert (=> start!7312 true))

(declare-fun b!46940 () Bool)

(declare-fun res!27379 () Bool)

(assert (=> b!46940 (=> (not res!27379) (not e!29971))))

(assert (=> b!46940 (= res!27379 (not (is-Cons!1265 l!812)))))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun b!46941 () Bool)

(declare-fun removeStrictlySorted!46 (List!1269 (_ BitVec 64)) List!1269)

(assert (=> b!46941 (= e!29971 (not (= (removeStrictlySorted!46 (removeStrictlySorted!46 l!812 key1!43) key2!27) (removeStrictlySorted!46 (removeStrictlySorted!46 l!812 key2!27) key1!43))))))

(declare-fun b!46942 () Bool)

(declare-fun tp_is_empty!1993 () Bool)

(declare-fun tp!6158 () Bool)

(assert (=> b!46942 (= e!29972 (and tp_is_empty!1993 tp!6158))))

(assert (= (and start!7312 res!27378) b!46940))

(assert (= (and b!46940 res!27379) b!46941))

(assert (= (and start!7312 (is-Cons!1265 l!812)) b!46942))

(declare-fun m!41331 () Bool)

(assert (=> start!7312 m!41331))

(declare-fun m!41333 () Bool)

(assert (=> b!46941 m!41333))

(assert (=> b!46941 m!41333))

(declare-fun m!41335 () Bool)

(assert (=> b!46941 m!41335))

(declare-fun m!41337 () Bool)

(assert (=> b!46941 m!41337))

(assert (=> b!46941 m!41337))

(declare-fun m!41339 () Bool)

(assert (=> b!46941 m!41339))

(push 1)

(assert (not start!7312))

(assert (not b!46941))

(assert (not b!46942))

(assert tp_is_empty!1993)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9415 () Bool)

(declare-fun res!27402 () Bool)

(declare-fun e!29995 () Bool)

(assert (=> d!9415 (=> res!27402 e!29995)))

(assert (=> d!9415 (= res!27402 (or (is-Nil!1266 l!812) (is-Nil!1266 (t!4305 l!812))))))

(assert (=> d!9415 (= (isStrictlySorted!240 l!812) e!29995)))

(declare-fun b!46971 () Bool)

(declare-fun e!29996 () Bool)

(assert (=> b!46971 (= e!29995 e!29996)))

(declare-fun res!27403 () Bool)

(assert (=> b!46971 (=> (not res!27403) (not e!29996))))

(assert (=> b!46971 (= res!27403 (bvslt (_1!871 (h!1845 l!812)) (_1!871 (h!1845 (t!4305 l!812)))))))

(declare-fun b!46972 () Bool)

(assert (=> b!46972 (= e!29996 (isStrictlySorted!240 (t!4305 l!812)))))

(assert (= (and d!9415 (not res!27402)) b!46971))

(assert (= (and b!46971 res!27403) b!46972))

(declare-fun m!41363 () Bool)

(assert (=> b!46972 m!41363))

(assert (=> start!7312 d!9415))

(declare-fun b!47033 () Bool)

(declare-fun e!30035 () Bool)

(declare-fun lt!20388 () List!1269)

(declare-fun containsKey!93 (List!1269 (_ BitVec 64)) Bool)

(assert (=> b!47033 (= e!30035 (not (containsKey!93 lt!20388 key2!27)))))

(declare-fun d!9419 () Bool)

(assert (=> d!9419 e!30035))

(declare-fun res!27416 () Bool)

(assert (=> d!9419 (=> (not res!27416) (not e!30035))))

(assert (=> d!9419 (= res!27416 (isStrictlySorted!240 lt!20388))))

(declare-fun e!30034 () List!1269)

(assert (=> d!9419 (= lt!20388 e!30034)))

(declare-fun c!6403 () Bool)

(assert (=> d!9419 (= c!6403 (and (is-Cons!1265 (removeStrictlySorted!46 l!812 key1!43)) (= (_1!871 (h!1845 (removeStrictlySorted!46 l!812 key1!43))) key2!27)))))

(assert (=> d!9419 (isStrictlySorted!240 (removeStrictlySorted!46 l!812 key1!43))))

(assert (=> d!9419 (= (removeStrictlySorted!46 (removeStrictlySorted!46 l!812 key1!43) key2!27) lt!20388)))

(declare-fun e!30033 () List!1269)

(declare-fun b!47034 () Bool)

(declare-fun $colon$colon!48 (List!1269 tuple2!1722) List!1269)

(assert (=> b!47034 (= e!30033 ($colon$colon!48 (removeStrictlySorted!46 (t!4305 (removeStrictlySorted!46 l!812 key1!43)) key2!27) (h!1845 (removeStrictlySorted!46 l!812 key1!43))))))

(declare-fun b!47035 () Bool)

(assert (=> b!47035 (= e!30034 (t!4305 (removeStrictlySorted!46 l!812 key1!43)))))

(declare-fun b!47036 () Bool)

(assert (=> b!47036 (= e!30034 e!30033)))

(declare-fun c!6404 () Bool)

(assert (=> b!47036 (= c!6404 (and (is-Cons!1265 (removeStrictlySorted!46 l!812 key1!43)) (not (= (_1!871 (h!1845 (removeStrictlySorted!46 l!812 key1!43))) key2!27))))))

(declare-fun b!47037 () Bool)

(assert (=> b!47037 (= e!30033 Nil!1266)))

(assert (= (and d!9419 c!6403) b!47035))

(assert (= (and d!9419 (not c!6403)) b!47036))

(assert (= (and b!47036 c!6404) b!47034))

(assert (= (and b!47036 (not c!6404)) b!47037))

(assert (= (and d!9419 res!27416) b!47033))

(declare-fun m!41417 () Bool)

(assert (=> b!47033 m!41417))

(declare-fun m!41421 () Bool)

(assert (=> d!9419 m!41421))

(assert (=> d!9419 m!41333))

(declare-fun m!41423 () Bool)

(assert (=> d!9419 m!41423))

(declare-fun m!41425 () Bool)

(assert (=> b!47034 m!41425))

(assert (=> b!47034 m!41425))

(declare-fun m!41427 () Bool)

(assert (=> b!47034 m!41427))

(assert (=> b!46941 d!9419))

(declare-fun b!47045 () Bool)

(declare-fun e!30045 () Bool)

(declare-fun lt!20390 () List!1269)

(assert (=> b!47045 (= e!30045 (not (containsKey!93 lt!20390 key1!43)))))

(declare-fun d!9433 () Bool)

(assert (=> d!9433 e!30045))

(declare-fun res!27422 () Bool)

(assert (=> d!9433 (=> (not res!27422) (not e!30045))))

(assert (=> d!9433 (= res!27422 (isStrictlySorted!240 lt!20390))))

(declare-fun e!30044 () List!1269)

(assert (=> d!9433 (= lt!20390 e!30044)))

(declare-fun c!6407 () Bool)

(assert (=> d!9433 (= c!6407 (and (is-Cons!1265 l!812) (= (_1!871 (h!1845 l!812)) key1!43)))))

(assert (=> d!9433 (isStrictlySorted!240 l!812)))

(assert (=> d!9433 (= (removeStrictlySorted!46 l!812 key1!43) lt!20390)))

(declare-fun b!47046 () Bool)

(declare-fun e!30043 () List!1269)

(assert (=> b!47046 (= e!30043 ($colon$colon!48 (removeStrictlySorted!46 (t!4305 l!812) key1!43) (h!1845 l!812)))))

(declare-fun b!47047 () Bool)

(assert (=> b!47047 (= e!30044 (t!4305 l!812))))

(declare-fun b!47048 () Bool)

(assert (=> b!47048 (= e!30044 e!30043)))

(declare-fun c!6408 () Bool)

(assert (=> b!47048 (= c!6408 (and (is-Cons!1265 l!812) (not (= (_1!871 (h!1845 l!812)) key1!43))))))

(declare-fun b!47049 () Bool)

(assert (=> b!47049 (= e!30043 Nil!1266)))

(assert (= (and d!9433 c!6407) b!47047))

(assert (= (and d!9433 (not c!6407)) b!47048))

(assert (= (and b!47048 c!6408) b!47046))

(assert (= (and b!47048 (not c!6408)) b!47049))

(assert (= (and d!9433 res!27422) b!47045))

(declare-fun m!41435 () Bool)

(assert (=> b!47045 m!41435))

(declare-fun m!41439 () Bool)

(assert (=> d!9433 m!41439))

(assert (=> d!9433 m!41331))

(declare-fun m!41443 () Bool)

(assert (=> b!47046 m!41443))

(assert (=> b!47046 m!41443))

(declare-fun m!41445 () Bool)

(assert (=> b!47046 m!41445))

(assert (=> b!46941 d!9433))

(declare-fun b!47057 () Bool)

(declare-fun e!30051 () Bool)

(declare-fun lt!20392 () List!1269)

(assert (=> b!47057 (= e!30051 (not (containsKey!93 lt!20392 key1!43)))))

(declare-fun d!9437 () Bool)

(assert (=> d!9437 e!30051))

(declare-fun res!27424 () Bool)

(assert (=> d!9437 (=> (not res!27424) (not e!30051))))

(assert (=> d!9437 (= res!27424 (isStrictlySorted!240 lt!20392))))

(declare-fun e!30050 () List!1269)

(assert (=> d!9437 (= lt!20392 e!30050)))

(declare-fun c!6411 () Bool)

(assert (=> d!9437 (= c!6411 (and (is-Cons!1265 (removeStrictlySorted!46 l!812 key2!27)) (= (_1!871 (h!1845 (removeStrictlySorted!46 l!812 key2!27))) key1!43)))))

(assert (=> d!9437 (isStrictlySorted!240 (removeStrictlySorted!46 l!812 key2!27))))

(assert (=> d!9437 (= (removeStrictlySorted!46 (removeStrictlySorted!46 l!812 key2!27) key1!43) lt!20392)))

(declare-fun e!30049 () List!1269)

(declare-fun b!47058 () Bool)

(assert (=> b!47058 (= e!30049 ($colon$colon!48 (removeStrictlySorted!46 (t!4305 (removeStrictlySorted!46 l!812 key2!27)) key1!43) (h!1845 (removeStrictlySorted!46 l!812 key2!27))))))

(declare-fun b!47059 () Bool)

(assert (=> b!47059 (= e!30050 (t!4305 (removeStrictlySorted!46 l!812 key2!27)))))

(declare-fun b!47060 () Bool)

(assert (=> b!47060 (= e!30050 e!30049)))

(declare-fun c!6412 () Bool)

(assert (=> b!47060 (= c!6412 (and (is-Cons!1265 (removeStrictlySorted!46 l!812 key2!27)) (not (= (_1!871 (h!1845 (removeStrictlySorted!46 l!812 key2!27))) key1!43))))))

(declare-fun b!47061 () Bool)

(assert (=> b!47061 (= e!30049 Nil!1266)))

(assert (= (and d!9437 c!6411) b!47059))

(assert (= (and d!9437 (not c!6411)) b!47060))

(assert (= (and b!47060 c!6412) b!47058))

(assert (= (and b!47060 (not c!6412)) b!47061))

(assert (= (and d!9437 res!27424) b!47057))

(declare-fun m!41455 () Bool)

(assert (=> b!47057 m!41455))

(declare-fun m!41459 () Bool)

(assert (=> d!9437 m!41459))

(assert (=> d!9437 m!41337))

(declare-fun m!41461 () Bool)

(assert (=> d!9437 m!41461))

(declare-fun m!41463 () Bool)

(assert (=> b!47058 m!41463))

(assert (=> b!47058 m!41463))

(declare-fun m!41465 () Bool)

(assert (=> b!47058 m!41465))

(assert (=> b!46941 d!9437))

(declare-fun b!47072 () Bool)

(declare-fun e!30060 () Bool)

(declare-fun lt!20393 () List!1269)

(assert (=> b!47072 (= e!30060 (not (containsKey!93 lt!20393 key2!27)))))

(declare-fun d!9439 () Bool)

(assert (=> d!9439 e!30060))

(declare-fun res!27427 () Bool)

(assert (=> d!9439 (=> (not res!27427) (not e!30060))))

(assert (=> d!9439 (= res!27427 (isStrictlySorted!240 lt!20393))))

(declare-fun e!30059 () List!1269)

(assert (=> d!9439 (= lt!20393 e!30059)))

(declare-fun c!6413 () Bool)

(assert (=> d!9439 (= c!6413 (and (is-Cons!1265 l!812) (= (_1!871 (h!1845 l!812)) key2!27)))))

(assert (=> d!9439 (isStrictlySorted!240 l!812)))

(assert (=> d!9439 (= (removeStrictlySorted!46 l!812 key2!27) lt!20393)))

(declare-fun b!47073 () Bool)

(declare-fun e!30058 () List!1269)

(assert (=> b!47073 (= e!30058 ($colon$colon!48 (removeStrictlySorted!46 (t!4305 l!812) key2!27) (h!1845 l!812)))))

(declare-fun b!47074 () Bool)

(assert (=> b!47074 (= e!30059 (t!4305 l!812))))

(declare-fun b!47075 () Bool)

(assert (=> b!47075 (= e!30059 e!30058)))

(declare-fun c!6414 () Bool)

(assert (=> b!47075 (= c!6414 (and (is-Cons!1265 l!812) (not (= (_1!871 (h!1845 l!812)) key2!27))))))

(declare-fun b!47076 () Bool)

(assert (=> b!47076 (= e!30058 Nil!1266)))

(assert (= (and d!9439 c!6413) b!47074))

(assert (= (and d!9439 (not c!6413)) b!47075))

(assert (= (and b!47075 c!6414) b!47073))

(assert (= (and b!47075 (not c!6414)) b!47076))

(assert (= (and d!9439 res!27427) b!47072))

(declare-fun m!41467 () Bool)

(assert (=> b!47072 m!41467))

(declare-fun m!41469 () Bool)

(assert (=> d!9439 m!41469))

(assert (=> d!9439 m!41331))

(declare-fun m!41471 () Bool)

(assert (=> b!47073 m!41471))

(assert (=> b!47073 m!41471))

(declare-fun m!41473 () Bool)

(assert (=> b!47073 m!41473))

(assert (=> b!46941 d!9439))

