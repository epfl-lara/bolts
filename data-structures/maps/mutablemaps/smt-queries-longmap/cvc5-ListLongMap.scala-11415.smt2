; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133030 () Bool)

(assert start!133030)

(declare-fun res!1065108 () Bool)

(declare-fun e!867306 () Bool)

(assert (=> start!133030 (=> (not res!1065108) (not e!867306))))

(declare-datatypes ((B!2366 0))(
  ( (B!2367 (val!19269 Int)) )
))
(declare-datatypes ((tuple2!25054 0))(
  ( (tuple2!25055 (_1!12537 (_ BitVec 64)) (_2!12537 B!2366)) )
))
(declare-datatypes ((List!36449 0))(
  ( (Nil!36446) (Cons!36445 (h!37892 tuple2!25054) (t!51183 List!36449)) )
))
(declare-datatypes ((ListLongMap!22567 0))(
  ( (ListLongMap!22568 (toList!11299 List!36449)) )
))
(declare-fun lm!250 () ListLongMap!22567)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10198 (ListLongMap!22567 (_ BitVec 64)) Bool)

(assert (=> start!133030 (= res!1065108 (contains!10198 lm!250 a0!50))))

(assert (=> start!133030 e!867306))

(declare-fun e!867304 () Bool)

(declare-fun inv!57457 (ListLongMap!22567) Bool)

(assert (=> start!133030 (and (inv!57457 lm!250) e!867304)))

(assert (=> start!133030 true))

(declare-fun b!1556994 () Bool)

(declare-fun e!867305 () Bool)

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1556994 (= e!867305 (= a0!50 a!524))))

(declare-fun b!1556995 () Bool)

(declare-fun res!1065109 () Bool)

(assert (=> b!1556995 (=> res!1065109 e!867305)))

(declare-fun containsKey!813 (List!36449 (_ BitVec 64)) Bool)

(assert (=> b!1556995 (= res!1065109 (not (containsKey!813 (toList!11299 lm!250) a0!50)))))

(declare-fun b!1556996 () Bool)

(declare-fun tp!112477 () Bool)

(assert (=> b!1556996 (= e!867304 tp!112477)))

(declare-fun b!1556997 () Bool)

(declare-fun res!1065110 () Bool)

(assert (=> b!1556997 (=> (not res!1065110) (not e!867306))))

(assert (=> b!1556997 (= res!1065110 (not (= a!524 a0!50)))))

(declare-fun b!1556998 () Bool)

(assert (=> b!1556998 (= e!867306 e!867305)))

(declare-fun res!1065111 () Bool)

(assert (=> b!1556998 (=> res!1065111 e!867305)))

(declare-fun isStrictlySorted!950 (List!36449) Bool)

(assert (=> b!1556998 (= res!1065111 (not (isStrictlySorted!950 (toList!11299 lm!250))))))

(assert (= (and start!133030 res!1065108) b!1556997))

(assert (= (and b!1556997 res!1065110) b!1556998))

(assert (= (and b!1556998 (not res!1065111)) b!1556995))

(assert (= (and b!1556995 (not res!1065109)) b!1556994))

(assert (= start!133030 b!1556996))

(declare-fun m!1434285 () Bool)

(assert (=> start!133030 m!1434285))

(declare-fun m!1434287 () Bool)

(assert (=> start!133030 m!1434287))

(declare-fun m!1434289 () Bool)

(assert (=> b!1556995 m!1434289))

(declare-fun m!1434291 () Bool)

(assert (=> b!1556998 m!1434291))

(push 1)

(assert (not start!133030))

(assert (not b!1556995))

(assert (not b!1556998))

(assert (not b!1556996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162319 () Bool)

(declare-fun e!867342 () Bool)

(assert (=> d!162319 e!867342))

(declare-fun res!1065147 () Bool)

(assert (=> d!162319 (=> res!1065147 e!867342)))

(declare-fun lt!670427 () Bool)

(assert (=> d!162319 (= res!1065147 (not lt!670427))))

(declare-fun lt!670429 () Bool)

(assert (=> d!162319 (= lt!670427 lt!670429)))

(declare-datatypes ((Unit!51781 0))(
  ( (Unit!51782) )
))
(declare-fun lt!670428 () Unit!51781)

(declare-fun e!867341 () Unit!51781)

(assert (=> d!162319 (= lt!670428 e!867341)))

(declare-fun c!143870 () Bool)

(assert (=> d!162319 (= c!143870 lt!670429)))

(assert (=> d!162319 (= lt!670429 (containsKey!813 (toList!11299 lm!250) a0!50))))

(assert (=> d!162319 (= (contains!10198 lm!250 a0!50) lt!670427)))

(declare-fun b!1557050 () Bool)

(declare-fun lt!670430 () Unit!51781)

(assert (=> b!1557050 (= e!867341 lt!670430)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!519 (List!36449 (_ BitVec 64)) Unit!51781)

(assert (=> b!1557050 (= lt!670430 (lemmaContainsKeyImpliesGetValueByKeyDefined!519 (toList!11299 lm!250) a0!50))))

(declare-datatypes ((Option!859 0))(
  ( (Some!858 (v!22045 B!2366)) (None!857) )
))
(declare-fun isDefined!568 (Option!859) Bool)

(declare-fun getValueByKey!784 (List!36449 (_ BitVec 64)) Option!859)

(assert (=> b!1557050 (isDefined!568 (getValueByKey!784 (toList!11299 lm!250) a0!50))))

(declare-fun b!1557051 () Bool)

(declare-fun Unit!51784 () Unit!51781)

(assert (=> b!1557051 (= e!867341 Unit!51784)))

(declare-fun b!1557052 () Bool)

(assert (=> b!1557052 (= e!867342 (isDefined!568 (getValueByKey!784 (toList!11299 lm!250) a0!50)))))

(assert (= (and d!162319 c!143870) b!1557050))

(assert (= (and d!162319 (not c!143870)) b!1557051))

(assert (= (and d!162319 (not res!1065147)) b!1557052))

(assert (=> d!162319 m!1434289))

(declare-fun m!1434317 () Bool)

(assert (=> b!1557050 m!1434317))

(declare-fun m!1434319 () Bool)

(assert (=> b!1557050 m!1434319))

(assert (=> b!1557050 m!1434319))

(declare-fun m!1434321 () Bool)

(assert (=> b!1557050 m!1434321))

(assert (=> b!1557052 m!1434319))

(assert (=> b!1557052 m!1434319))

(assert (=> b!1557052 m!1434321))

(assert (=> start!133030 d!162319))

(declare-fun d!162327 () Bool)

(assert (=> d!162327 (= (inv!57457 lm!250) (isStrictlySorted!950 (toList!11299 lm!250)))))

(declare-fun bs!44749 () Bool)

(assert (= bs!44749 d!162327))

(assert (=> bs!44749 m!1434291))

(assert (=> start!133030 d!162327))

(declare-fun d!162329 () Bool)

(declare-fun res!1065161 () Bool)

(declare-fun e!867359 () Bool)

(assert (=> d!162329 (=> res!1065161 e!867359)))

(assert (=> d!162329 (= res!1065161 (and (is-Cons!36445 (toList!11299 lm!250)) (= (_1!12537 (h!37892 (toList!11299 lm!250))) a0!50)))))

(assert (=> d!162329 (= (containsKey!813 (toList!11299 lm!250) a0!50) e!867359)))

(declare-fun b!1557072 () Bool)

(declare-fun e!867360 () Bool)

(assert (=> b!1557072 (= e!867359 e!867360)))

(declare-fun res!1065162 () Bool)

(assert (=> b!1557072 (=> (not res!1065162) (not e!867360))))

(assert (=> b!1557072 (= res!1065162 (and (or (not (is-Cons!36445 (toList!11299 lm!250))) (bvsle (_1!12537 (h!37892 (toList!11299 lm!250))) a0!50)) (is-Cons!36445 (toList!11299 lm!250)) (bvslt (_1!12537 (h!37892 (toList!11299 lm!250))) a0!50)))))

(declare-fun b!1557073 () Bool)

(assert (=> b!1557073 (= e!867360 (containsKey!813 (t!51183 (toList!11299 lm!250)) a0!50))))

(assert (= (and d!162329 (not res!1065161)) b!1557072))

(assert (= (and b!1557072 res!1065162) b!1557073))

(declare-fun m!1434331 () Bool)

(assert (=> b!1557073 m!1434331))

(assert (=> b!1556995 d!162329))

(declare-fun d!162337 () Bool)

(declare-fun res!1065179 () Bool)

(declare-fun e!867383 () Bool)

(assert (=> d!162337 (=> res!1065179 e!867383)))

(assert (=> d!162337 (= res!1065179 (or (is-Nil!36446 (toList!11299 lm!250)) (is-Nil!36446 (t!51183 (toList!11299 lm!250)))))))

(assert (=> d!162337 (= (isStrictlySorted!950 (toList!11299 lm!250)) e!867383)))

(declare-fun b!1557100 () Bool)

(declare-fun e!867384 () Bool)

(assert (=> b!1557100 (= e!867383 e!867384)))

(declare-fun res!1065180 () Bool)

(assert (=> b!1557100 (=> (not res!1065180) (not e!867384))))

(assert (=> b!1557100 (= res!1065180 (bvslt (_1!12537 (h!37892 (toList!11299 lm!250))) (_1!12537 (h!37892 (t!51183 (toList!11299 lm!250))))))))

(declare-fun b!1557101 () Bool)

(assert (=> b!1557101 (= e!867384 (isStrictlySorted!950 (t!51183 (toList!11299 lm!250))))))

(assert (= (and d!162337 (not res!1065179)) b!1557100))

(assert (= (and b!1557100 res!1065180) b!1557101))

(declare-fun m!1434337 () Bool)

(assert (=> b!1557101 m!1434337))

(assert (=> b!1556998 d!162337))

(declare-fun b!1557106 () Bool)

(declare-fun e!867387 () Bool)

(declare-fun tp_is_empty!38375 () Bool)

(declare-fun tp!112492 () Bool)

(assert (=> b!1557106 (= e!867387 (and tp_is_empty!38375 tp!112492))))

(assert (=> b!1556996 (= tp!112477 e!867387)))

(assert (= (and b!1556996 (is-Cons!36445 (toList!11299 lm!250))) b!1557106))

(push 1)

(assert tp_is_empty!38375)

(assert (not d!162319))

(assert (not b!1557106))

