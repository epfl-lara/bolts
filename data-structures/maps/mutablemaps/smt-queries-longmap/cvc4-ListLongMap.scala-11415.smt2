; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133034 () Bool)

(assert start!133034)

(declare-fun b!1557024 () Bool)

(declare-fun res!1065135 () Bool)

(declare-fun e!867322 () Bool)

(assert (=> b!1557024 (=> (not res!1065135) (not e!867322))))

(declare-fun a!524 () (_ BitVec 64))

(declare-fun a0!50 () (_ BitVec 64))

(assert (=> b!1557024 (= res!1065135 (not (= a!524 a0!50)))))

(declare-fun b!1557025 () Bool)

(declare-fun e!867323 () Bool)

(assert (=> b!1557025 (= e!867322 e!867323)))

(declare-fun res!1065133 () Bool)

(assert (=> b!1557025 (=> res!1065133 e!867323)))

(declare-datatypes ((B!2370 0))(
  ( (B!2371 (val!19271 Int)) )
))
(declare-datatypes ((tuple2!25058 0))(
  ( (tuple2!25059 (_1!12539 (_ BitVec 64)) (_2!12539 B!2370)) )
))
(declare-datatypes ((List!36451 0))(
  ( (Nil!36448) (Cons!36447 (h!37894 tuple2!25058) (t!51185 List!36451)) )
))
(declare-datatypes ((ListLongMap!22571 0))(
  ( (ListLongMap!22572 (toList!11301 List!36451)) )
))
(declare-fun lm!250 () ListLongMap!22571)

(declare-fun isStrictlySorted!952 (List!36451) Bool)

(assert (=> b!1557025 (= res!1065133 (not (isStrictlySorted!952 (toList!11301 lm!250))))))

(declare-fun res!1065132 () Bool)

(assert (=> start!133034 (=> (not res!1065132) (not e!867322))))

(declare-fun contains!10200 (ListLongMap!22571 (_ BitVec 64)) Bool)

(assert (=> start!133034 (= res!1065132 (contains!10200 lm!250 a0!50))))

(assert (=> start!133034 e!867322))

(declare-fun e!867324 () Bool)

(declare-fun inv!57459 (ListLongMap!22571) Bool)

(assert (=> start!133034 (and (inv!57459 lm!250) e!867324)))

(assert (=> start!133034 true))

(declare-fun b!1557026 () Bool)

(declare-fun res!1065134 () Bool)

(assert (=> b!1557026 (=> res!1065134 e!867323)))

(declare-fun containsKey!815 (List!36451 (_ BitVec 64)) Bool)

(assert (=> b!1557026 (= res!1065134 (not (containsKey!815 (toList!11301 lm!250) a0!50)))))

(declare-fun b!1557027 () Bool)

(assert (=> b!1557027 (= e!867323 (= a0!50 a!524))))

(declare-fun b!1557028 () Bool)

(declare-fun tp!112483 () Bool)

(assert (=> b!1557028 (= e!867324 tp!112483)))

(assert (= (and start!133034 res!1065132) b!1557024))

(assert (= (and b!1557024 res!1065135) b!1557025))

(assert (= (and b!1557025 (not res!1065133)) b!1557026))

(assert (= (and b!1557026 (not res!1065134)) b!1557027))

(assert (= start!133034 b!1557028))

(declare-fun m!1434301 () Bool)

(assert (=> b!1557025 m!1434301))

(declare-fun m!1434303 () Bool)

(assert (=> start!133034 m!1434303))

(declare-fun m!1434305 () Bool)

(assert (=> start!133034 m!1434305))

(declare-fun m!1434307 () Bool)

(assert (=> b!1557026 m!1434307))

(push 1)

(assert (not b!1557026))

(assert (not start!133034))

(assert (not b!1557025))

(assert (not b!1557028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162317 () Bool)

(declare-fun res!1065140 () Bool)

(declare-fun e!867329 () Bool)

(assert (=> d!162317 (=> res!1065140 e!867329)))

(assert (=> d!162317 (= res!1065140 (and (is-Cons!36447 (toList!11301 lm!250)) (= (_1!12539 (h!37894 (toList!11301 lm!250))) a0!50)))))

(assert (=> d!162317 (= (containsKey!815 (toList!11301 lm!250) a0!50) e!867329)))

(declare-fun b!1557033 () Bool)

(declare-fun e!867330 () Bool)

(assert (=> b!1557033 (= e!867329 e!867330)))

(declare-fun res!1065141 () Bool)

(assert (=> b!1557033 (=> (not res!1065141) (not e!867330))))

(assert (=> b!1557033 (= res!1065141 (and (or (not (is-Cons!36447 (toList!11301 lm!250))) (bvsle (_1!12539 (h!37894 (toList!11301 lm!250))) a0!50)) (is-Cons!36447 (toList!11301 lm!250)) (bvslt (_1!12539 (h!37894 (toList!11301 lm!250))) a0!50)))))

(declare-fun b!1557034 () Bool)

(assert (=> b!1557034 (= e!867330 (containsKey!815 (t!51185 (toList!11301 lm!250)) a0!50))))

(assert (= (and d!162317 (not res!1065140)) b!1557033))

(assert (= (and b!1557033 res!1065141) b!1557034))

(declare-fun m!1434309 () Bool)

(assert (=> b!1557034 m!1434309))

(assert (=> b!1557026 d!162317))

(declare-fun d!162321 () Bool)

(declare-fun e!867351 () Bool)

(assert (=> d!162321 e!867351))

(declare-fun res!1065154 () Bool)

(assert (=> d!162321 (=> res!1065154 e!867351)))

(declare-fun lt!670441 () Bool)

(assert (=> d!162321 (= res!1065154 (not lt!670441))))

(declare-fun lt!670440 () Bool)

(assert (=> d!162321 (= lt!670441 lt!670440)))

(declare-datatypes ((Unit!51785 0))(
  ( (Unit!51786) )
))
(declare-fun lt!670439 () Unit!51785)

(declare-fun e!867352 () Unit!51785)

(assert (=> d!162321 (= lt!670439 e!867352)))

(declare-fun c!143873 () Bool)

(assert (=> d!162321 (= c!143873 lt!670440)))

(assert (=> d!162321 (= lt!670440 (containsKey!815 (toList!11301 lm!250) a0!50))))

(assert (=> d!162321 (= (contains!10200 lm!250 a0!50) lt!670441)))

(declare-fun b!1557061 () Bool)

(declare-fun lt!670442 () Unit!51785)

(assert (=> b!1557061 (= e!867352 lt!670442)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!520 (List!36451 (_ BitVec 64)) Unit!51785)

(assert (=> b!1557061 (= lt!670442 (lemmaContainsKeyImpliesGetValueByKeyDefined!520 (toList!11301 lm!250) a0!50))))

(declare-datatypes ((Option!860 0))(
  ( (Some!859 (v!22046 B!2370)) (None!858) )
))
(declare-fun isDefined!569 (Option!860) Bool)

(declare-fun getValueByKey!785 (List!36451 (_ BitVec 64)) Option!860)

(assert (=> b!1557061 (isDefined!569 (getValueByKey!785 (toList!11301 lm!250) a0!50))))

(declare-fun b!1557062 () Bool)

(declare-fun Unit!51787 () Unit!51785)

(assert (=> b!1557062 (= e!867352 Unit!51787)))

(declare-fun b!1557063 () Bool)

(assert (=> b!1557063 (= e!867351 (isDefined!569 (getValueByKey!785 (toList!11301 lm!250) a0!50)))))

(assert (= (and d!162321 c!143873) b!1557061))

(assert (= (and d!162321 (not c!143873)) b!1557062))

(assert (= (and d!162321 (not res!1065154)) b!1557063))

(assert (=> d!162321 m!1434307))

(declare-fun m!1434323 () Bool)

(assert (=> b!1557061 m!1434323))

(declare-fun m!1434325 () Bool)

(assert (=> b!1557061 m!1434325))

(assert (=> b!1557061 m!1434325))

(declare-fun m!1434327 () Bool)

(assert (=> b!1557061 m!1434327))

(assert (=> b!1557063 m!1434325))

(assert (=> b!1557063 m!1434325))

(assert (=> b!1557063 m!1434327))

(assert (=> start!133034 d!162321))

(declare-fun d!162331 () Bool)

(assert (=> d!162331 (= (inv!57459 lm!250) (isStrictlySorted!952 (toList!11301 lm!250)))))

(declare-fun bs!44750 () Bool)

(assert (= bs!44750 d!162331))

(assert (=> bs!44750 m!1434301))

(assert (=> start!133034 d!162331))

(declare-fun d!162333 () Bool)

(declare-fun res!1065175 () Bool)

(declare-fun e!867373 () Bool)

(assert (=> d!162333 (=> res!1065175 e!867373)))

(assert (=> d!162333 (= res!1065175 (or (is-Nil!36448 (toList!11301 lm!250)) (is-Nil!36448 (t!51185 (toList!11301 lm!250)))))))

(assert (=> d!162333 (= (isStrictlySorted!952 (toList!11301 lm!250)) e!867373)))

(declare-fun b!1557084 () Bool)

(declare-fun e!867374 () Bool)

(assert (=> b!1557084 (= e!867373 e!867374)))

(declare-fun res!1065176 () Bool)

(assert (=> b!1557084 (=> (not res!1065176) (not e!867374))))

(assert (=> b!1557084 (= res!1065176 (bvslt (_1!12539 (h!37894 (toList!11301 lm!250))) (_1!12539 (h!37894 (t!51185 (toList!11301 lm!250))))))))

(declare-fun b!1557086 () Bool)

(assert (=> b!1557086 (= e!867374 (isStrictlySorted!952 (t!51185 (toList!11301 lm!250))))))

(assert (= (and d!162333 (not res!1065175)) b!1557084))

(assert (= (and b!1557084 res!1065176) b!1557086))

(declare-fun m!1434333 () Bool)

(assert (=> b!1557086 m!1434333))

(assert (=> b!1557025 d!162333))

(declare-fun b!1557098 () Bool)

(declare-fun e!867381 () Bool)

(declare-fun tp_is_empty!38372 () Bool)

(declare-fun tp!112488 () Bool)

(assert (=> b!1557098 (= e!867381 (and tp_is_empty!38372 tp!112488))))

(assert (=> b!1557028 (= tp!112483 e!867381)))

(assert (= (and b!1557028 (is-Cons!36447 (toList!11301 lm!250))) b!1557098))

(push 1)

