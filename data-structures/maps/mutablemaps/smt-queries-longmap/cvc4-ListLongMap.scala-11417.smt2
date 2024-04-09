; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133112 () Bool)

(assert start!133112)

(declare-fun res!1065351 () Bool)

(declare-fun e!867560 () Bool)

(assert (=> start!133112 (=> (not res!1065351) (not e!867560))))

(declare-datatypes ((B!2382 0))(
  ( (B!2383 (val!19277 Int)) )
))
(declare-datatypes ((tuple2!25070 0))(
  ( (tuple2!25071 (_1!12545 (_ BitVec 64)) (_2!12545 B!2382)) )
))
(declare-datatypes ((List!36457 0))(
  ( (Nil!36454) (Cons!36453 (h!37900 tuple2!25070) (t!51191 List!36457)) )
))
(declare-datatypes ((ListLongMap!22583 0))(
  ( (ListLongMap!22584 (toList!11307 List!36457)) )
))
(declare-fun lm!250 () ListLongMap!22583)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10209 (ListLongMap!22583 (_ BitVec 64)) Bool)

(assert (=> start!133112 (= res!1065351 (contains!10209 lm!250 a0!50))))

(assert (=> start!133112 e!867560))

(declare-fun e!867561 () Bool)

(declare-fun inv!57475 (ListLongMap!22583) Bool)

(assert (=> start!133112 (and (inv!57475 lm!250) e!867561)))

(assert (=> start!133112 true))

(declare-fun tp_is_empty!38387 () Bool)

(assert (=> start!133112 tp_is_empty!38387))

(declare-fun b!1557404 () Bool)

(declare-fun res!1065350 () Bool)

(assert (=> b!1557404 (=> (not res!1065350) (not e!867560))))

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1557404 (= res!1065350 (= a!524 a0!50))))

(declare-fun b!1557405 () Bool)

(declare-fun b!97 () B!2382)

(declare-fun +!4986 (ListLongMap!22583 tuple2!25070) ListLongMap!22583)

(assert (=> b!1557405 (= e!867560 (not (contains!10209 (+!4986 lm!250 (tuple2!25071 a!524 b!97)) a0!50)))))

(declare-fun b!1557406 () Bool)

(declare-fun tp!112519 () Bool)

(assert (=> b!1557406 (= e!867561 tp!112519)))

(assert (= (and start!133112 res!1065351) b!1557404))

(assert (= (and b!1557404 res!1065350) b!1557405))

(assert (= start!133112 b!1557406))

(declare-fun m!1434541 () Bool)

(assert (=> start!133112 m!1434541))

(declare-fun m!1434543 () Bool)

(assert (=> start!133112 m!1434543))

(declare-fun m!1434545 () Bool)

(assert (=> b!1557405 m!1434545))

(assert (=> b!1557405 m!1434545))

(declare-fun m!1434547 () Bool)

(assert (=> b!1557405 m!1434547))

(push 1)

(assert (not start!133112))

(assert (not b!1557405))

(assert (not b!1557406))

(assert tp_is_empty!38387)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162399 () Bool)

(declare-fun e!867576 () Bool)

(assert (=> d!162399 e!867576))

(declare-fun res!1065359 () Bool)

(assert (=> d!162399 (=> res!1065359 e!867576)))

(declare-fun lt!670582 () Bool)

(assert (=> d!162399 (= res!1065359 (not lt!670582))))

(declare-fun lt!670585 () Bool)

(assert (=> d!162399 (= lt!670582 lt!670585)))

(declare-datatypes ((Unit!51804 0))(
  ( (Unit!51805) )
))
(declare-fun lt!670584 () Unit!51804)

(declare-fun e!867577 () Unit!51804)

(assert (=> d!162399 (= lt!670584 e!867577)))

(declare-fun c!143929 () Bool)

(assert (=> d!162399 (= c!143929 lt!670585)))

(declare-fun containsKey!821 (List!36457 (_ BitVec 64)) Bool)

(assert (=> d!162399 (= lt!670585 (containsKey!821 (toList!11307 lm!250) a0!50))))

(assert (=> d!162399 (= (contains!10209 lm!250 a0!50) lt!670582)))

(declare-fun b!1557428 () Bool)

(declare-fun lt!670583 () Unit!51804)

(assert (=> b!1557428 (= e!867577 lt!670583)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!526 (List!36457 (_ BitVec 64)) Unit!51804)

(assert (=> b!1557428 (= lt!670583 (lemmaContainsKeyImpliesGetValueByKeyDefined!526 (toList!11307 lm!250) a0!50))))

(declare-datatypes ((Option!866 0))(
  ( (Some!865 (v!22052 B!2382)) (None!864) )
))
(declare-fun isDefined!575 (Option!866) Bool)

(declare-fun getValueByKey!791 (List!36457 (_ BitVec 64)) Option!866)

(assert (=> b!1557428 (isDefined!575 (getValueByKey!791 (toList!11307 lm!250) a0!50))))

(declare-fun b!1557429 () Bool)

(declare-fun Unit!51808 () Unit!51804)

(assert (=> b!1557429 (= e!867577 Unit!51808)))

(declare-fun b!1557430 () Bool)

(assert (=> b!1557430 (= e!867576 (isDefined!575 (getValueByKey!791 (toList!11307 lm!250) a0!50)))))

(assert (= (and d!162399 c!143929) b!1557428))

(assert (= (and d!162399 (not c!143929)) b!1557429))

(assert (= (and d!162399 (not res!1065359)) b!1557430))

(declare-fun m!1434549 () Bool)

(assert (=> d!162399 m!1434549))

(declare-fun m!1434553 () Bool)

(assert (=> b!1557428 m!1434553))

(declare-fun m!1434557 () Bool)

(assert (=> b!1557428 m!1434557))

(assert (=> b!1557428 m!1434557))

(declare-fun m!1434561 () Bool)

(assert (=> b!1557428 m!1434561))

(assert (=> b!1557430 m!1434557))

(assert (=> b!1557430 m!1434557))

(assert (=> b!1557430 m!1434561))

(assert (=> start!133112 d!162399))

(declare-fun d!162403 () Bool)

(declare-fun isStrictlySorted!956 (List!36457) Bool)

(assert (=> d!162403 (= (inv!57475 lm!250) (isStrictlySorted!956 (toList!11307 lm!250)))))

(declare-fun bs!44760 () Bool)

(assert (= bs!44760 d!162403))

(declare-fun m!1434573 () Bool)

(assert (=> bs!44760 m!1434573))

(assert (=> start!133112 d!162403))

(declare-fun d!162409 () Bool)

(declare-fun e!867580 () Bool)

(assert (=> d!162409 e!867580))

(declare-fun res!1065361 () Bool)

(assert (=> d!162409 (=> res!1065361 e!867580)))

(declare-fun lt!670590 () Bool)

(assert (=> d!162409 (= res!1065361 (not lt!670590))))

(declare-fun lt!670593 () Bool)

(assert (=> d!162409 (= lt!670590 lt!670593)))

(declare-fun lt!670592 () Unit!51804)

(declare-fun e!867581 () Unit!51804)

(assert (=> d!162409 (= lt!670592 e!867581)))

(declare-fun c!143931 () Bool)

(assert (=> d!162409 (= c!143931 lt!670593)))

(assert (=> d!162409 (= lt!670593 (containsKey!821 (toList!11307 (+!4986 lm!250 (tuple2!25071 a!524 b!97))) a0!50))))

(assert (=> d!162409 (= (contains!10209 (+!4986 lm!250 (tuple2!25071 a!524 b!97)) a0!50) lt!670590)))

(declare-fun b!1557434 () Bool)

(declare-fun lt!670591 () Unit!51804)

(assert (=> b!1557434 (= e!867581 lt!670591)))

(assert (=> b!1557434 (= lt!670591 (lemmaContainsKeyImpliesGetValueByKeyDefined!526 (toList!11307 (+!4986 lm!250 (tuple2!25071 a!524 b!97))) a0!50))))

(assert (=> b!1557434 (isDefined!575 (getValueByKey!791 (toList!11307 (+!4986 lm!250 (tuple2!25071 a!524 b!97))) a0!50))))

(declare-fun b!1557435 () Bool)

(declare-fun Unit!51810 () Unit!51804)

(assert (=> b!1557435 (= e!867581 Unit!51810)))

(declare-fun b!1557436 () Bool)

(assert (=> b!1557436 (= e!867580 (isDefined!575 (getValueByKey!791 (toList!11307 (+!4986 lm!250 (tuple2!25071 a!524 b!97))) a0!50)))))

(assert (= (and d!162409 c!143931) b!1557434))

(assert (= (and d!162409 (not c!143931)) b!1557435))

(assert (= (and d!162409 (not res!1065361)) b!1557436))

(declare-fun m!1434575 () Bool)

(assert (=> d!162409 m!1434575))

(declare-fun m!1434577 () Bool)

(assert (=> b!1557434 m!1434577))

(declare-fun m!1434579 () Bool)

(assert (=> b!1557434 m!1434579))

(assert (=> b!1557434 m!1434579))

(declare-fun m!1434581 () Bool)

(assert (=> b!1557434 m!1434581))

(assert (=> b!1557436 m!1434579))

(assert (=> b!1557436 m!1434579))

(assert (=> b!1557436 m!1434581))

(assert (=> b!1557405 d!162409))

(declare-fun d!162411 () Bool)

(declare-fun e!867594 () Bool)

(assert (=> d!162411 e!867594))

(declare-fun res!1065380 () Bool)

(assert (=> d!162411 (=> (not res!1065380) (not e!867594))))

(declare-fun lt!670636 () ListLongMap!22583)

(assert (=> d!162411 (= res!1065380 (contains!10209 lt!670636 (_1!12545 (tuple2!25071 a!524 b!97))))))

(declare-fun lt!670637 () List!36457)

