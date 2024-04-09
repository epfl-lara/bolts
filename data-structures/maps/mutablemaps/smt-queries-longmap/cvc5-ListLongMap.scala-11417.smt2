; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133108 () Bool)

(assert start!133108)

(declare-fun res!1065339 () Bool)

(declare-fun e!867549 () Bool)

(assert (=> start!133108 (=> (not res!1065339) (not e!867549))))

(declare-datatypes ((B!2378 0))(
  ( (B!2379 (val!19275 Int)) )
))
(declare-datatypes ((tuple2!25066 0))(
  ( (tuple2!25067 (_1!12543 (_ BitVec 64)) (_2!12543 B!2378)) )
))
(declare-datatypes ((List!36455 0))(
  ( (Nil!36452) (Cons!36451 (h!37898 tuple2!25066) (t!51189 List!36455)) )
))
(declare-datatypes ((ListLongMap!22579 0))(
  ( (ListLongMap!22580 (toList!11305 List!36455)) )
))
(declare-fun lm!250 () ListLongMap!22579)

(declare-fun a0!50 () (_ BitVec 64))

(declare-fun contains!10207 (ListLongMap!22579 (_ BitVec 64)) Bool)

(assert (=> start!133108 (= res!1065339 (contains!10207 lm!250 a0!50))))

(assert (=> start!133108 e!867549))

(declare-fun e!867548 () Bool)

(declare-fun inv!57473 (ListLongMap!22579) Bool)

(assert (=> start!133108 (and (inv!57473 lm!250) e!867548)))

(assert (=> start!133108 true))

(declare-fun tp_is_empty!38383 () Bool)

(assert (=> start!133108 tp_is_empty!38383))

(declare-fun b!1557386 () Bool)

(declare-fun res!1065338 () Bool)

(assert (=> b!1557386 (=> (not res!1065338) (not e!867549))))

(declare-fun a!524 () (_ BitVec 64))

(assert (=> b!1557386 (= res!1065338 (= a!524 a0!50))))

(declare-fun b!97 () B!2378)

(declare-fun b!1557387 () Bool)

(declare-fun +!4984 (ListLongMap!22579 tuple2!25066) ListLongMap!22579)

(assert (=> b!1557387 (= e!867549 (not (contains!10207 (+!4984 lm!250 (tuple2!25067 a!524 b!97)) a0!50)))))

(declare-fun b!1557388 () Bool)

(declare-fun tp!112513 () Bool)

(assert (=> b!1557388 (= e!867548 tp!112513)))

(assert (= (and start!133108 res!1065339) b!1557386))

(assert (= (and b!1557386 res!1065338) b!1557387))

(assert (= start!133108 b!1557388))

(declare-fun m!1434525 () Bool)

(assert (=> start!133108 m!1434525))

(declare-fun m!1434527 () Bool)

(assert (=> start!133108 m!1434527))

(declare-fun m!1434529 () Bool)

(assert (=> b!1557387 m!1434529))

(assert (=> b!1557387 m!1434529))

(declare-fun m!1434531 () Bool)

(assert (=> b!1557387 m!1434531))

(push 1)

(assert (not b!1557387))

(assert (not start!133108))

(assert (not b!1557388))

(assert tp_is_empty!38383)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162397 () Bool)

(declare-fun e!867574 () Bool)

(assert (=> d!162397 e!867574))

(declare-fun res!1065358 () Bool)

(assert (=> d!162397 (=> res!1065358 e!867574)))

(declare-fun lt!670581 () Bool)

(assert (=> d!162397 (= res!1065358 (not lt!670581))))

(declare-fun lt!670580 () Bool)

(assert (=> d!162397 (= lt!670581 lt!670580)))

(declare-datatypes ((Unit!51802 0))(
  ( (Unit!51803) )
))
(declare-fun lt!670579 () Unit!51802)

(declare-fun e!867575 () Unit!51802)

(assert (=> d!162397 (= lt!670579 e!867575)))

(declare-fun c!143928 () Bool)

(assert (=> d!162397 (= c!143928 lt!670580)))

(declare-fun containsKey!820 (List!36455 (_ BitVec 64)) Bool)

(assert (=> d!162397 (= lt!670580 (containsKey!820 (toList!11305 (+!4984 lm!250 (tuple2!25067 a!524 b!97))) a0!50))))

(assert (=> d!162397 (= (contains!10207 (+!4984 lm!250 (tuple2!25067 a!524 b!97)) a0!50) lt!670581)))

(declare-fun b!1557425 () Bool)

(declare-fun lt!670578 () Unit!51802)

(assert (=> b!1557425 (= e!867575 lt!670578)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!525 (List!36455 (_ BitVec 64)) Unit!51802)

(assert (=> b!1557425 (= lt!670578 (lemmaContainsKeyImpliesGetValueByKeyDefined!525 (toList!11305 (+!4984 lm!250 (tuple2!25067 a!524 b!97))) a0!50))))

(declare-datatypes ((Option!865 0))(
  ( (Some!864 (v!22051 B!2378)) (None!863) )
))
(declare-fun isDefined!574 (Option!865) Bool)

(declare-fun getValueByKey!790 (List!36455 (_ BitVec 64)) Option!865)

(assert (=> b!1557425 (isDefined!574 (getValueByKey!790 (toList!11305 (+!4984 lm!250 (tuple2!25067 a!524 b!97))) a0!50))))

(declare-fun b!1557426 () Bool)

(declare-fun Unit!51807 () Unit!51802)

(assert (=> b!1557426 (= e!867575 Unit!51807)))

(declare-fun b!1557427 () Bool)

(assert (=> b!1557427 (= e!867574 (isDefined!574 (getValueByKey!790 (toList!11305 (+!4984 lm!250 (tuple2!25067 a!524 b!97))) a0!50)))))

(assert (= (and d!162397 c!143928) b!1557425))

(assert (= (and d!162397 (not c!143928)) b!1557426))

(assert (= (and d!162397 (not res!1065358)) b!1557427))

(declare-fun m!1434551 () Bool)

(assert (=> d!162397 m!1434551))

(declare-fun m!1434555 () Bool)

(assert (=> b!1557425 m!1434555))

(declare-fun m!1434559 () Bool)

(assert (=> b!1557425 m!1434559))

(assert (=> b!1557425 m!1434559))

(declare-fun m!1434563 () Bool)

(assert (=> b!1557425 m!1434563))

(assert (=> b!1557427 m!1434559))

(assert (=> b!1557427 m!1434559))

(assert (=> b!1557427 m!1434563))

(assert (=> b!1557387 d!162397))

(declare-fun d!162405 () Bool)

(declare-fun e!867588 () Bool)

(assert (=> d!162405 e!867588))

(declare-fun res!1065374 () Bool)

(assert (=> d!162405 (=> (not res!1065374) (not e!867588))))

(declare-fun lt!670619 () ListLongMap!22579)

(assert (=> d!162405 (= res!1065374 (contains!10207 lt!670619 (_1!12543 (tuple2!25067 a!524 b!97))))))

(declare-fun lt!670621 () List!36455)

(assert (=> d!162405 (= lt!670619 (ListLongMap!22580 lt!670621))))

(declare-fun lt!670620 () Unit!51802)

(declare-fun lt!670618 () Unit!51802)

(assert (=> d!162405 (= lt!670620 lt!670618)))

(assert (=> d!162405 (= (getValueByKey!790 lt!670621 (_1!12543 (tuple2!25067 a!524 b!97))) (Some!864 (_2!12543 (tuple2!25067 a!524 b!97))))))

(declare-fun lemmaContainsTupThenGetReturnValue!384 (List!36455 (_ BitVec 64) B!2378) Unit!51802)

(assert (=> d!162405 (= lt!670618 (lemmaContainsTupThenGetReturnValue!384 lt!670621 (_1!12543 (tuple2!25067 a!524 b!97)) (_2!12543 (tuple2!25067 a!524 b!97))))))

(declare-fun insertStrictlySorted!559 (List!36455 (_ BitVec 64) B!2378) List!36455)

(assert (=> d!162405 (= lt!670621 (insertStrictlySorted!559 (toList!11305 lm!250) (_1!12543 (tuple2!25067 a!524 b!97)) (_2!12543 (tuple2!25067 a!524 b!97))))))

(assert (=> d!162405 (= (+!4984 lm!250 (tuple2!25067 a!524 b!97)) lt!670619)))

(declare-fun b!1557449 () Bool)

(declare-fun res!1065375 () Bool)

(assert (=> b!1557449 (=> (not res!1065375) (not e!867588))))

(assert (=> b!1557449 (= res!1065375 (= (getValueByKey!790 (toList!11305 lt!670619) (_1!12543 (tuple2!25067 a!524 b!97))) (Some!864 (_2!12543 (tuple2!25067 a!524 b!97)))))))

(declare-fun b!1557450 () Bool)

(declare-fun contains!10211 (List!36455 tuple2!25066) Bool)

(assert (=> b!1557450 (= e!867588 (contains!10211 (toList!11305 lt!670619) (tuple2!25067 a!524 b!97)))))

(assert (= (and d!162405 res!1065374) b!1557449))

(assert (= (and b!1557449 res!1065375) b!1557450))

(declare-fun m!1434583 () Bool)

(assert (=> d!162405 m!1434583))

(declare-fun m!1434585 () Bool)

(assert (=> d!162405 m!1434585))

(declare-fun m!1434587 () Bool)

(assert (=> d!162405 m!1434587))

(declare-fun m!1434589 () Bool)

(assert (=> d!162405 m!1434589))

(declare-fun m!1434591 () Bool)

(assert (=> b!1557449 m!1434591))

(declare-fun m!1434595 () Bool)

(assert (=> b!1557450 m!1434595))

(assert (=> b!1557387 d!162405))

(declare-fun d!162413 () Bool)

(declare-fun e!867590 () Bool)

(assert (=> d!162413 e!867590))

(declare-fun res!1065378 () Bool)

(assert (=> d!162413 (=> res!1065378 e!867590)))

(declare-fun lt!670629 () Bool)

(assert (=> d!162413 (= res!1065378 (not lt!670629))))

(declare-fun lt!670628 () Bool)

(assert (=> d!162413 (= lt!670629 lt!670628)))

(declare-fun lt!670627 () Unit!51802)

(declare-fun e!867591 () Unit!51802)

(assert (=> d!162413 (= lt!670627 e!867591)))

(declare-fun c!143932 () Bool)

(assert (=> d!162413 (= c!143932 lt!670628)))

(assert (=> d!162413 (= lt!670628 (containsKey!820 (toList!11305 lm!250) a0!50))))

(assert (=> d!162413 (= (contains!10207 lm!250 a0!50) lt!670629)))

(declare-fun b!1557453 () Bool)

(declare-fun lt!670626 () Unit!51802)

(assert (=> b!1557453 (= e!867591 lt!670626)))

(assert (=> b!1557453 (= lt!670626 (lemmaContainsKeyImpliesGetValueByKeyDefined!525 (toList!11305 lm!250) a0!50))))

(assert (=> b!1557453 (isDefined!574 (getValueByKey!790 (toList!11305 lm!250) a0!50))))

(declare-fun b!1557454 () Bool)

(declare-fun Unit!51811 () Unit!51802)

(assert (=> b!1557454 (= e!867591 Unit!51811)))

(declare-fun b!1557455 () Bool)

(assert (=> b!1557455 (= e!867590 (isDefined!574 (getValueByKey!790 (toList!11305 lm!250) a0!50)))))

(assert (= (and d!162413 c!143932) b!1557453))

(assert (= (and d!162413 (not c!143932)) b!1557454))

(assert (= (and d!162413 (not res!1065378)) b!1557455))

(declare-fun m!1434607 () Bool)

(assert (=> d!162413 m!1434607))

(declare-fun m!1434609 () Bool)

(assert (=> b!1557453 m!1434609))

(declare-fun m!1434611 () Bool)

(assert (=> b!1557453 m!1434611))

(assert (=> b!1557453 m!1434611))

(declare-fun m!1434613 () Bool)

(assert (=> b!1557453 m!1434613))

(assert (=> b!1557455 m!1434611))

(assert (=> b!1557455 m!1434611))

