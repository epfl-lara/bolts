; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134180 () Bool)

(assert start!134180)

(declare-fun res!1071305 () Bool)

(declare-fun e!873761 () Bool)

(assert (=> start!134180 (=> (not res!1071305) (not e!873761))))

(declare-datatypes ((B!2460 0))(
  ( (B!2461 (val!19592 Int)) )
))
(declare-datatypes ((tuple2!25450 0))(
  ( (tuple2!25451 (_1!12735 (_ BitVec 64)) (_2!12735 B!2460)) )
))
(declare-datatypes ((List!36828 0))(
  ( (Nil!36825) (Cons!36824 (h!38272 tuple2!25450) (t!51743 List!36828)) )
))
(declare-datatypes ((ListLongMap!22897 0))(
  ( (ListLongMap!22898 (toList!11464 List!36828)) )
))
(declare-fun thiss!194 () ListLongMap!22897)

(declare-fun key!103 () (_ BitVec 64))

(declare-fun contains!10387 (ListLongMap!22897 (_ BitVec 64)) Bool)

(assert (=> start!134180 (= res!1071305 (contains!10387 thiss!194 key!103))))

(assert (=> start!134180 e!873761))

(declare-fun e!873762 () Bool)

(declare-fun inv!58006 (ListLongMap!22897) Bool)

(assert (=> start!134180 (and (inv!58006 thiss!194) e!873762)))

(assert (=> start!134180 true))

(declare-fun b!1567411 () Bool)

(declare-datatypes ((Option!875 0))(
  ( (Some!874 (v!22347 B!2460)) (None!873) )
))
(declare-fun isDefined!584 (Option!875) Bool)

(declare-fun getValueByKey!800 (List!36828 (_ BitVec 64)) Option!875)

(assert (=> b!1567411 (= e!873761 (not (isDefined!584 (getValueByKey!800 (toList!11464 thiss!194) key!103))))))

(declare-fun b!1567412 () Bool)

(declare-fun tp!114010 () Bool)

(assert (=> b!1567412 (= e!873762 tp!114010)))

(assert (= (and start!134180 res!1071305) b!1567411))

(assert (= start!134180 b!1567412))

(declare-fun m!1442321 () Bool)

(assert (=> start!134180 m!1442321))

(declare-fun m!1442323 () Bool)

(assert (=> start!134180 m!1442323))

(declare-fun m!1442325 () Bool)

(assert (=> b!1567411 m!1442325))

(assert (=> b!1567411 m!1442325))

(declare-fun m!1442327 () Bool)

(assert (=> b!1567411 m!1442327))

(push 1)

(assert (not start!134180))

(assert (not b!1567411))

(assert (not b!1567412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163525 () Bool)

(declare-fun e!873779 () Bool)

(assert (=> d!163525 e!873779))

(declare-fun res!1071311 () Bool)

(assert (=> d!163525 (=> res!1071311 e!873779)))

(declare-fun lt!672929 () Bool)

(assert (=> d!163525 (= res!1071311 (not lt!672929))))

(declare-fun lt!672928 () Bool)

(assert (=> d!163525 (= lt!672929 lt!672928)))

(declare-datatypes ((Unit!52005 0))(
  ( (Unit!52006) )
))
(declare-fun lt!672930 () Unit!52005)

(declare-fun e!873780 () Unit!52005)

(assert (=> d!163525 (= lt!672930 e!873780)))

(declare-fun c!144453 () Bool)

(assert (=> d!163525 (= c!144453 lt!672928)))

(declare-fun containsKey!853 (List!36828 (_ BitVec 64)) Bool)

(assert (=> d!163525 (= lt!672928 (containsKey!853 (toList!11464 thiss!194) key!103))))

(assert (=> d!163525 (= (contains!10387 thiss!194 key!103) lt!672929)))

(declare-fun b!1567440 () Bool)

(declare-fun lt!672931 () Unit!52005)

(assert (=> b!1567440 (= e!873780 lt!672931)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!534 (List!36828 (_ BitVec 64)) Unit!52005)

(assert (=> b!1567440 (= lt!672931 (lemmaContainsKeyImpliesGetValueByKeyDefined!534 (toList!11464 thiss!194) key!103))))

(assert (=> b!1567440 (isDefined!584 (getValueByKey!800 (toList!11464 thiss!194) key!103))))

(declare-fun b!1567441 () Bool)

(declare-fun Unit!52008 () Unit!52005)

(assert (=> b!1567441 (= e!873780 Unit!52008)))

(declare-fun b!1567442 () Bool)

(assert (=> b!1567442 (= e!873779 (isDefined!584 (getValueByKey!800 (toList!11464 thiss!194) key!103)))))

(assert (= (and d!163525 c!144453) b!1567440))

(assert (= (and d!163525 (not c!144453)) b!1567441))

(assert (= (and d!163525 (not res!1071311)) b!1567442))

(declare-fun m!1442337 () Bool)

(assert (=> d!163525 m!1442337))

(declare-fun m!1442339 () Bool)

(assert (=> b!1567440 m!1442339))

(assert (=> b!1567440 m!1442325))

(assert (=> b!1567440 m!1442325))

(assert (=> b!1567440 m!1442327))

(assert (=> b!1567442 m!1442325))

(assert (=> b!1567442 m!1442325))

(assert (=> b!1567442 m!1442327))

(assert (=> start!134180 d!163525))

(declare-fun d!163533 () Bool)

(declare-fun isStrictlySorted!988 (List!36828) Bool)

(assert (=> d!163533 (= (inv!58006 thiss!194) (isStrictlySorted!988 (toList!11464 thiss!194)))))

(declare-fun bs!45115 () Bool)

(assert (= bs!45115 d!163533))

(declare-fun m!1442343 () Bool)

(assert (=> bs!45115 m!1442343))

(assert (=> start!134180 d!163533))

(declare-fun d!163537 () Bool)

(declare-fun isEmpty!1155 (Option!875) Bool)

(assert (=> d!163537 (= (isDefined!584 (getValueByKey!800 (toList!11464 thiss!194) key!103)) (not (isEmpty!1155 (getValueByKey!800 (toList!11464 thiss!194) key!103))))))

(declare-fun bs!45117 () Bool)

(assert (= bs!45117 d!163537))

(assert (=> bs!45117 m!1442325))

(declare-fun m!1442347 () Bool)

(assert (=> bs!45117 m!1442347))

(assert (=> b!1567411 d!163537))

(declare-fun b!1567477 () Bool)

(declare-fun e!873798 () Option!875)

(assert (=> b!1567477 (= e!873798 None!873)))

(declare-fun b!1567474 () Bool)

(declare-fun e!873797 () Option!875)

(assert (=> b!1567474 (= e!873797 (Some!874 (_2!12735 (h!38272 (toList!11464 thiss!194)))))))

(declare-fun b!1567476 () Bool)

(assert (=> b!1567476 (= e!873798 (getValueByKey!800 (t!51743 (toList!11464 thiss!194)) key!103))))

(declare-fun b!1567475 () Bool)

(assert (=> b!1567475 (= e!873797 e!873798)))

(declare-fun c!144468 () Bool)

(assert (=> b!1567475 (= c!144468 (and (is-Cons!36824 (toList!11464 thiss!194)) (not (= (_1!12735 (h!38272 (toList!11464 thiss!194))) key!103))))))

(declare-fun d!163541 () Bool)

(declare-fun c!144467 () Bool)

(assert (=> d!163541 (= c!144467 (and (is-Cons!36824 (toList!11464 thiss!194)) (= (_1!12735 (h!38272 (toList!11464 thiss!194))) key!103)))))

(assert (=> d!163541 (= (getValueByKey!800 (toList!11464 thiss!194) key!103) e!873797)))

