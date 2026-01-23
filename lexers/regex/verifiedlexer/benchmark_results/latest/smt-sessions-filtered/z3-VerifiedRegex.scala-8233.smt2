; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!426312 () Bool)

(assert start!426312)

(declare-fun b!4393446 () Bool)

(declare-fun res!1811093 () Bool)

(declare-fun e!2735459 () Bool)

(assert (=> b!4393446 (=> res!1811093 e!2735459)))

(declare-datatypes ((K!10570 0))(
  ( (K!10571 (val!16727 Int)) )
))
(declare-datatypes ((V!10816 0))(
  ( (V!10817 (val!16728 Int)) )
))
(declare-datatypes ((tuple2!48774 0))(
  ( (tuple2!48775 (_1!27681 K!10570) (_2!27681 V!10816)) )
))
(declare-datatypes ((List!49334 0))(
  ( (Nil!49210) (Cons!49210 (h!54817 tuple2!48774) (t!356268 List!49334)) )
))
(declare-fun newBucket!200 () List!49334)

(declare-fun noDuplicateKeys!601 (List!49334) Bool)

(assert (=> b!4393446 (= res!1811093 (not (noDuplicateKeys!601 newBucket!200)))))

(declare-fun b!4393447 () Bool)

(declare-fun res!1811091 () Bool)

(declare-fun e!2735456 () Bool)

(assert (=> b!4393447 (=> (not res!1811091) (not e!2735456))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4993 0))(
  ( (HashableExt!4992 (__x!30696 Int)) )
))
(declare-fun hashF!1247 () Hashable!4993)

(declare-fun allKeysSameHash!559 (List!49334 (_ BitVec 64) Hashable!4993) Bool)

(assert (=> b!4393447 (= res!1811091 (allKeysSameHash!559 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4393448 () Bool)

(declare-fun res!1811095 () Bool)

(assert (=> b!4393448 (=> (not res!1811095) (not e!2735456))))

(declare-datatypes ((tuple2!48776 0))(
  ( (tuple2!48777 (_1!27682 (_ BitVec 64)) (_2!27682 List!49334)) )
))
(declare-datatypes ((List!49335 0))(
  ( (Nil!49211) (Cons!49211 (h!54818 tuple2!48776) (t!356269 List!49335)) )
))
(declare-datatypes ((ListLongMap!1835 0))(
  ( (ListLongMap!1836 (toList!3185 List!49335)) )
))
(declare-fun lm!1707 () ListLongMap!1835)

(declare-fun key!3918 () K!10570)

(declare-datatypes ((ListMap!2429 0))(
  ( (ListMap!2430 (toList!3186 List!49334)) )
))
(declare-fun contains!11573 (ListMap!2429 K!10570) Bool)

(declare-fun extractMap!660 (List!49335) ListMap!2429)

(assert (=> b!4393448 (= res!1811095 (contains!11573 (extractMap!660 (toList!3185 lm!1707)) key!3918))))

(declare-fun b!4393449 () Bool)

(declare-fun res!1811097 () Bool)

(assert (=> b!4393449 (=> (not res!1811097) (not e!2735456))))

(declare-fun allKeysSameHashInMap!705 (ListLongMap!1835 Hashable!4993) Bool)

(assert (=> b!4393449 (= res!1811097 (allKeysSameHashInMap!705 lm!1707 hashF!1247))))

(declare-fun res!1811089 () Bool)

(assert (=> start!426312 (=> (not res!1811089) (not e!2735456))))

(declare-fun lambda!147375 () Int)

(declare-fun forall!9309 (List!49335 Int) Bool)

(assert (=> start!426312 (= res!1811089 (forall!9309 (toList!3185 lm!1707) lambda!147375))))

(assert (=> start!426312 e!2735456))

(declare-fun e!2735458 () Bool)

(assert (=> start!426312 e!2735458))

(assert (=> start!426312 true))

(declare-fun e!2735455 () Bool)

(declare-fun inv!64756 (ListLongMap!1835) Bool)

(assert (=> start!426312 (and (inv!64756 lm!1707) e!2735455)))

(declare-fun tp_is_empty!25641 () Bool)

(assert (=> start!426312 tp_is_empty!25641))

(declare-fun tp_is_empty!25643 () Bool)

(assert (=> start!426312 tp_is_empty!25643))

(declare-fun b!4393450 () Bool)

(declare-fun res!1811096 () Bool)

(assert (=> b!4393450 (=> (not res!1811096) (not e!2735456))))

(declare-fun contains!11574 (ListLongMap!1835 (_ BitVec 64)) Bool)

(assert (=> b!4393450 (= res!1811096 (contains!11574 lm!1707 hash!377))))

(declare-fun b!4393451 () Bool)

(declare-fun res!1811088 () Bool)

(declare-fun e!2735460 () Bool)

(assert (=> b!4393451 (=> res!1811088 e!2735460)))

(assert (=> b!4393451 (= res!1811088 (not (forall!9309 (toList!3185 lm!1707) lambda!147375)))))

(declare-fun b!4393452 () Bool)

(assert (=> b!4393452 (= e!2735456 (not e!2735459))))

(declare-fun res!1811092 () Bool)

(assert (=> b!4393452 (=> res!1811092 e!2735459)))

(declare-fun newValue!99 () V!10816)

(declare-fun lt!1601058 () List!49334)

(declare-fun removePairForKey!569 (List!49334 K!10570) List!49334)

(assert (=> b!4393452 (= res!1811092 (not (= newBucket!200 (Cons!49210 (tuple2!48775 key!3918 newValue!99) (removePairForKey!569 lt!1601058 key!3918)))))))

(declare-fun lt!1601057 () tuple2!48776)

(declare-datatypes ((Unit!78151 0))(
  ( (Unit!78152) )
))
(declare-fun lt!1601053 () Unit!78151)

(declare-fun forallContained!1947 (List!49335 Int tuple2!48776) Unit!78151)

(assert (=> b!4393452 (= lt!1601053 (forallContained!1947 (toList!3185 lm!1707) lambda!147375 lt!1601057))))

(declare-fun contains!11575 (List!49335 tuple2!48776) Bool)

(assert (=> b!4393452 (contains!11575 (toList!3185 lm!1707) lt!1601057)))

(assert (=> b!4393452 (= lt!1601057 (tuple2!48777 hash!377 lt!1601058))))

(declare-fun lt!1601055 () Unit!78151)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!446 (List!49335 (_ BitVec 64) List!49334) Unit!78151)

(assert (=> b!4393452 (= lt!1601055 (lemmaGetValueByKeyImpliesContainsTuple!446 (toList!3185 lm!1707) hash!377 lt!1601058))))

(declare-fun apply!11453 (ListLongMap!1835 (_ BitVec 64)) List!49334)

(assert (=> b!4393452 (= lt!1601058 (apply!11453 lm!1707 hash!377))))

(declare-fun b!4393453 () Bool)

(declare-fun e!2735457 () Bool)

(declare-fun lt!1601054 () ListLongMap!1835)

(assert (=> b!4393453 (= e!2735457 (forall!9309 (toList!3185 lt!1601054) lambda!147375))))

(declare-fun b!4393454 () Bool)

(assert (=> b!4393454 (= e!2735460 (contains!11574 lm!1707 (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-fun b!4393455 () Bool)

(assert (=> b!4393455 (= e!2735459 e!2735460)))

(declare-fun res!1811094 () Bool)

(assert (=> b!4393455 (=> res!1811094 e!2735460)))

(get-info :version)

(assert (=> b!4393455 (= res!1811094 (or (and ((_ is Cons!49211) (toList!3185 lm!1707)) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377)) (not ((_ is Cons!49211) (toList!3185 lm!1707))) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377)))))

(assert (=> b!4393455 e!2735457))

(declare-fun res!1811087 () Bool)

(assert (=> b!4393455 (=> (not res!1811087) (not e!2735457))))

(assert (=> b!4393455 (= res!1811087 (forall!9309 (toList!3185 lt!1601054) lambda!147375))))

(declare-fun +!828 (ListLongMap!1835 tuple2!48776) ListLongMap!1835)

(assert (=> b!4393455 (= lt!1601054 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200)))))

(declare-fun lt!1601056 () Unit!78151)

(declare-fun addValidProp!247 (ListLongMap!1835 Int (_ BitVec 64) List!49334) Unit!78151)

(assert (=> b!4393455 (= lt!1601056 (addValidProp!247 lm!1707 lambda!147375 hash!377 newBucket!200))))

(assert (=> b!4393455 (forall!9309 (toList!3185 lm!1707) lambda!147375)))

(declare-fun tp!1331445 () Bool)

(declare-fun b!4393456 () Bool)

(assert (=> b!4393456 (= e!2735458 (and tp_is_empty!25641 tp_is_empty!25643 tp!1331445))))

(declare-fun b!4393457 () Bool)

(declare-fun res!1811090 () Bool)

(assert (=> b!4393457 (=> (not res!1811090) (not e!2735456))))

(declare-fun hash!1798 (Hashable!4993 K!10570) (_ BitVec 64))

(assert (=> b!4393457 (= res!1811090 (= (hash!1798 hashF!1247 key!3918) hash!377))))

(declare-fun b!4393458 () Bool)

(declare-fun tp!1331446 () Bool)

(assert (=> b!4393458 (= e!2735455 tp!1331446)))

(assert (= (and start!426312 res!1811089) b!4393449))

(assert (= (and b!4393449 res!1811097) b!4393457))

(assert (= (and b!4393457 res!1811090) b!4393447))

(assert (= (and b!4393447 res!1811091) b!4393448))

(assert (= (and b!4393448 res!1811095) b!4393450))

(assert (= (and b!4393450 res!1811096) b!4393452))

(assert (= (and b!4393452 (not res!1811092)) b!4393446))

(assert (= (and b!4393446 (not res!1811093)) b!4393455))

(assert (= (and b!4393455 res!1811087) b!4393453))

(assert (= (and b!4393455 (not res!1811094)) b!4393451))

(assert (= (and b!4393451 (not res!1811088)) b!4393454))

(assert (= (and start!426312 ((_ is Cons!49210) newBucket!200)) b!4393456))

(assert (= start!426312 b!4393458))

(declare-fun m!5053511 () Bool)

(assert (=> b!4393450 m!5053511))

(declare-fun m!5053513 () Bool)

(assert (=> b!4393454 m!5053513))

(declare-fun m!5053515 () Bool)

(assert (=> b!4393455 m!5053515))

(declare-fun m!5053517 () Bool)

(assert (=> b!4393455 m!5053517))

(declare-fun m!5053519 () Bool)

(assert (=> b!4393455 m!5053519))

(declare-fun m!5053521 () Bool)

(assert (=> b!4393455 m!5053521))

(declare-fun m!5053523 () Bool)

(assert (=> b!4393452 m!5053523))

(declare-fun m!5053525 () Bool)

(assert (=> b!4393452 m!5053525))

(declare-fun m!5053527 () Bool)

(assert (=> b!4393452 m!5053527))

(declare-fun m!5053529 () Bool)

(assert (=> b!4393452 m!5053529))

(declare-fun m!5053531 () Bool)

(assert (=> b!4393452 m!5053531))

(assert (=> b!4393453 m!5053515))

(declare-fun m!5053533 () Bool)

(assert (=> b!4393448 m!5053533))

(assert (=> b!4393448 m!5053533))

(declare-fun m!5053535 () Bool)

(assert (=> b!4393448 m!5053535))

(declare-fun m!5053537 () Bool)

(assert (=> b!4393457 m!5053537))

(declare-fun m!5053539 () Bool)

(assert (=> b!4393449 m!5053539))

(assert (=> b!4393451 m!5053521))

(declare-fun m!5053541 () Bool)

(assert (=> b!4393446 m!5053541))

(assert (=> start!426312 m!5053521))

(declare-fun m!5053543 () Bool)

(assert (=> start!426312 m!5053543))

(declare-fun m!5053545 () Bool)

(assert (=> b!4393447 m!5053545))

(check-sat (not b!4393447) (not b!4393448) (not b!4393452) (not b!4393450) (not b!4393454) tp_is_empty!25641 (not b!4393449) (not b!4393455) tp_is_empty!25643 (not b!4393446) (not b!4393453) (not b!4393457) (not b!4393456) (not b!4393458) (not b!4393451) (not start!426312))
(check-sat)
(get-model)

(declare-fun d!1323474 () Bool)

(declare-fun res!1811120 () Bool)

(declare-fun e!2735489 () Bool)

(assert (=> d!1323474 (=> res!1811120 e!2735489)))

(assert (=> d!1323474 (= res!1811120 ((_ is Nil!49211) (toList!3185 lt!1601054)))))

(assert (=> d!1323474 (= (forall!9309 (toList!3185 lt!1601054) lambda!147375) e!2735489)))

(declare-fun b!4393493 () Bool)

(declare-fun e!2735490 () Bool)

(assert (=> b!4393493 (= e!2735489 e!2735490)))

(declare-fun res!1811121 () Bool)

(assert (=> b!4393493 (=> (not res!1811121) (not e!2735490))))

(declare-fun dynLambda!20733 (Int tuple2!48776) Bool)

(assert (=> b!4393493 (= res!1811121 (dynLambda!20733 lambda!147375 (h!54818 (toList!3185 lt!1601054))))))

(declare-fun b!4393494 () Bool)

(assert (=> b!4393494 (= e!2735490 (forall!9309 (t!356269 (toList!3185 lt!1601054)) lambda!147375))))

(assert (= (and d!1323474 (not res!1811120)) b!4393493))

(assert (= (and b!4393493 res!1811121) b!4393494))

(declare-fun b_lambda!138885 () Bool)

(assert (=> (not b_lambda!138885) (not b!4393493)))

(declare-fun m!5053577 () Bool)

(assert (=> b!4393493 m!5053577))

(declare-fun m!5053579 () Bool)

(assert (=> b!4393494 m!5053579))

(assert (=> b!4393453 d!1323474))

(declare-fun d!1323476 () Bool)

(declare-fun e!2735514 () Bool)

(assert (=> d!1323476 e!2735514))

(declare-fun res!1811133 () Bool)

(assert (=> d!1323476 (=> res!1811133 e!2735514)))

(declare-fun lt!1601105 () Bool)

(assert (=> d!1323476 (= res!1811133 (not lt!1601105))))

(declare-fun lt!1601104 () Bool)

(assert (=> d!1323476 (= lt!1601105 lt!1601104)))

(declare-fun lt!1601106 () Unit!78151)

(declare-fun e!2735513 () Unit!78151)

(assert (=> d!1323476 (= lt!1601106 e!2735513)))

(declare-fun c!747916 () Bool)

(assert (=> d!1323476 (= c!747916 lt!1601104)))

(declare-fun containsKey!879 (List!49335 (_ BitVec 64)) Bool)

(assert (=> d!1323476 (= lt!1601104 (containsKey!879 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (=> d!1323476 (= (contains!11574 lm!1707 (_1!27682 (h!54818 (toList!3185 lm!1707)))) lt!1601105)))

(declare-fun b!4393528 () Bool)

(declare-fun lt!1601103 () Unit!78151)

(assert (=> b!4393528 (= e!2735513 lt!1601103)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!476 (List!49335 (_ BitVec 64)) Unit!78151)

(assert (=> b!4393528 (= lt!1601103 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-datatypes ((Option!10579 0))(
  ( (None!10578) (Some!10578 (v!43620 List!49334)) )
))
(declare-fun isDefined!7873 (Option!10579) Bool)

(declare-fun getValueByKey!565 (List!49335 (_ BitVec 64)) Option!10579)

(assert (=> b!4393528 (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-fun b!4393529 () Bool)

(declare-fun Unit!78157 () Unit!78151)

(assert (=> b!4393529 (= e!2735513 Unit!78157)))

(declare-fun b!4393530 () Bool)

(assert (=> b!4393530 (= e!2735514 (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (= (and d!1323476 c!747916) b!4393528))

(assert (= (and d!1323476 (not c!747916)) b!4393529))

(assert (= (and d!1323476 (not res!1811133)) b!4393530))

(declare-fun m!5053601 () Bool)

(assert (=> d!1323476 m!5053601))

(declare-fun m!5053603 () Bool)

(assert (=> b!4393528 m!5053603))

(declare-fun m!5053605 () Bool)

(assert (=> b!4393528 m!5053605))

(assert (=> b!4393528 m!5053605))

(declare-fun m!5053607 () Bool)

(assert (=> b!4393528 m!5053607))

(assert (=> b!4393530 m!5053605))

(assert (=> b!4393530 m!5053605))

(assert (=> b!4393530 m!5053607))

(assert (=> b!4393454 d!1323476))

(assert (=> b!4393455 d!1323474))

(declare-fun d!1323480 () Bool)

(declare-fun e!2735526 () Bool)

(assert (=> d!1323480 e!2735526))

(declare-fun res!1811142 () Bool)

(assert (=> d!1323480 (=> (not res!1811142) (not e!2735526))))

(declare-fun lt!1601132 () ListLongMap!1835)

(assert (=> d!1323480 (= res!1811142 (contains!11574 lt!1601132 (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun lt!1601130 () List!49335)

(assert (=> d!1323480 (= lt!1601132 (ListLongMap!1836 lt!1601130))))

(declare-fun lt!1601131 () Unit!78151)

(declare-fun lt!1601133 () Unit!78151)

(assert (=> d!1323480 (= lt!1601131 lt!1601133)))

(assert (=> d!1323480 (= (getValueByKey!565 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200))) (Some!10578 (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!328 (List!49335 (_ BitVec 64) List!49334) Unit!78151)

(assert (=> d!1323480 (= lt!1601133 (lemmaContainsTupThenGetReturnValue!328 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!187 (List!49335 (_ BitVec 64) List!49334) List!49335)

(assert (=> d!1323480 (= lt!1601130 (insertStrictlySorted!187 (toList!3185 lm!1707) (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(assert (=> d!1323480 (= (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200)) lt!1601132)))

(declare-fun b!4393550 () Bool)

(declare-fun res!1811141 () Bool)

(assert (=> b!4393550 (=> (not res!1811141) (not e!2735526))))

(assert (=> b!4393550 (= res!1811141 (= (getValueByKey!565 (toList!3185 lt!1601132) (_1!27682 (tuple2!48777 hash!377 newBucket!200))) (Some!10578 (_2!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(declare-fun b!4393551 () Bool)

(assert (=> b!4393551 (= e!2735526 (contains!11575 (toList!3185 lt!1601132) (tuple2!48777 hash!377 newBucket!200)))))

(assert (= (and d!1323480 res!1811142) b!4393550))

(assert (= (and b!4393550 res!1811141) b!4393551))

(declare-fun m!5053623 () Bool)

(assert (=> d!1323480 m!5053623))

(declare-fun m!5053625 () Bool)

(assert (=> d!1323480 m!5053625))

(declare-fun m!5053627 () Bool)

(assert (=> d!1323480 m!5053627))

(declare-fun m!5053629 () Bool)

(assert (=> d!1323480 m!5053629))

(declare-fun m!5053631 () Bool)

(assert (=> b!4393550 m!5053631))

(declare-fun m!5053633 () Bool)

(assert (=> b!4393551 m!5053633))

(assert (=> b!4393455 d!1323480))

(declare-fun d!1323486 () Bool)

(assert (=> d!1323486 (forall!9309 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200))) lambda!147375)))

(declare-fun lt!1601155 () Unit!78151)

(declare-fun choose!27434 (ListLongMap!1835 Int (_ BitVec 64) List!49334) Unit!78151)

(assert (=> d!1323486 (= lt!1601155 (choose!27434 lm!1707 lambda!147375 hash!377 newBucket!200))))

(declare-fun e!2735545 () Bool)

(assert (=> d!1323486 e!2735545))

(declare-fun res!1811163 () Bool)

(assert (=> d!1323486 (=> (not res!1811163) (not e!2735545))))

(assert (=> d!1323486 (= res!1811163 (forall!9309 (toList!3185 lm!1707) lambda!147375))))

(assert (=> d!1323486 (= (addValidProp!247 lm!1707 lambda!147375 hash!377 newBucket!200) lt!1601155)))

(declare-fun b!4393576 () Bool)

(assert (=> b!4393576 (= e!2735545 (dynLambda!20733 lambda!147375 (tuple2!48777 hash!377 newBucket!200)))))

(assert (= (and d!1323486 res!1811163) b!4393576))

(declare-fun b_lambda!138891 () Bool)

(assert (=> (not b_lambda!138891) (not b!4393576)))

(assert (=> d!1323486 m!5053517))

(declare-fun m!5053669 () Bool)

(assert (=> d!1323486 m!5053669))

(declare-fun m!5053673 () Bool)

(assert (=> d!1323486 m!5053673))

(assert (=> d!1323486 m!5053521))

(declare-fun m!5053675 () Bool)

(assert (=> b!4393576 m!5053675))

(assert (=> b!4393455 d!1323486))

(declare-fun d!1323500 () Bool)

(declare-fun res!1811164 () Bool)

(declare-fun e!2735546 () Bool)

(assert (=> d!1323500 (=> res!1811164 e!2735546)))

(assert (=> d!1323500 (= res!1811164 ((_ is Nil!49211) (toList!3185 lm!1707)))))

(assert (=> d!1323500 (= (forall!9309 (toList!3185 lm!1707) lambda!147375) e!2735546)))

(declare-fun b!4393581 () Bool)

(declare-fun e!2735547 () Bool)

(assert (=> b!4393581 (= e!2735546 e!2735547)))

(declare-fun res!1811165 () Bool)

(assert (=> b!4393581 (=> (not res!1811165) (not e!2735547))))

(assert (=> b!4393581 (= res!1811165 (dynLambda!20733 lambda!147375 (h!54818 (toList!3185 lm!1707))))))

(declare-fun b!4393582 () Bool)

(assert (=> b!4393582 (= e!2735547 (forall!9309 (t!356269 (toList!3185 lm!1707)) lambda!147375))))

(assert (= (and d!1323500 (not res!1811164)) b!4393581))

(assert (= (and b!4393581 res!1811165) b!4393582))

(declare-fun b_lambda!138893 () Bool)

(assert (=> (not b_lambda!138893) (not b!4393581)))

(declare-fun m!5053677 () Bool)

(assert (=> b!4393581 m!5053677))

(declare-fun m!5053679 () Bool)

(assert (=> b!4393582 m!5053679))

(assert (=> b!4393455 d!1323500))

(assert (=> b!4393451 d!1323500))

(declare-fun d!1323502 () Bool)

(declare-fun get!16012 (Option!10579) List!49334)

(assert (=> d!1323502 (= (apply!11453 lm!1707 hash!377) (get!16012 (getValueByKey!565 (toList!3185 lm!1707) hash!377)))))

(declare-fun bs!726153 () Bool)

(assert (= bs!726153 d!1323502))

(declare-fun m!5053685 () Bool)

(assert (=> bs!726153 m!5053685))

(assert (=> bs!726153 m!5053685))

(declare-fun m!5053687 () Bool)

(assert (=> bs!726153 m!5053687))

(assert (=> b!4393452 d!1323502))

(declare-fun b!4393605 () Bool)

(declare-fun e!2735559 () List!49334)

(assert (=> b!4393605 (= e!2735559 (Cons!49210 (h!54817 lt!1601058) (removePairForKey!569 (t!356268 lt!1601058) key!3918)))))

(declare-fun b!4393604 () Bool)

(declare-fun e!2735558 () List!49334)

(assert (=> b!4393604 (= e!2735558 e!2735559)))

(declare-fun c!747929 () Bool)

(assert (=> b!4393604 (= c!747929 ((_ is Cons!49210) lt!1601058))))

(declare-fun d!1323508 () Bool)

(declare-fun lt!1601158 () List!49334)

(declare-fun containsKey!880 (List!49334 K!10570) Bool)

(assert (=> d!1323508 (not (containsKey!880 lt!1601158 key!3918))))

(assert (=> d!1323508 (= lt!1601158 e!2735558)))

(declare-fun c!747928 () Bool)

(assert (=> d!1323508 (= c!747928 (and ((_ is Cons!49210) lt!1601058) (= (_1!27681 (h!54817 lt!1601058)) key!3918)))))

(assert (=> d!1323508 (noDuplicateKeys!601 lt!1601058)))

(assert (=> d!1323508 (= (removePairForKey!569 lt!1601058 key!3918) lt!1601158)))

(declare-fun b!4393603 () Bool)

(assert (=> b!4393603 (= e!2735558 (t!356268 lt!1601058))))

(declare-fun b!4393606 () Bool)

(assert (=> b!4393606 (= e!2735559 Nil!49210)))

(assert (= (and d!1323508 c!747928) b!4393603))

(assert (= (and d!1323508 (not c!747928)) b!4393604))

(assert (= (and b!4393604 c!747929) b!4393605))

(assert (= (and b!4393604 (not c!747929)) b!4393606))

(declare-fun m!5053697 () Bool)

(assert (=> b!4393605 m!5053697))

(declare-fun m!5053699 () Bool)

(assert (=> d!1323508 m!5053699))

(declare-fun m!5053701 () Bool)

(assert (=> d!1323508 m!5053701))

(assert (=> b!4393452 d!1323508))

(declare-fun d!1323518 () Bool)

(assert (=> d!1323518 (dynLambda!20733 lambda!147375 lt!1601057)))

(declare-fun lt!1601161 () Unit!78151)

(declare-fun choose!27435 (List!49335 Int tuple2!48776) Unit!78151)

(assert (=> d!1323518 (= lt!1601161 (choose!27435 (toList!3185 lm!1707) lambda!147375 lt!1601057))))

(declare-fun e!2735562 () Bool)

(assert (=> d!1323518 e!2735562))

(declare-fun res!1811168 () Bool)

(assert (=> d!1323518 (=> (not res!1811168) (not e!2735562))))

(assert (=> d!1323518 (= res!1811168 (forall!9309 (toList!3185 lm!1707) lambda!147375))))

(assert (=> d!1323518 (= (forallContained!1947 (toList!3185 lm!1707) lambda!147375 lt!1601057) lt!1601161)))

(declare-fun b!4393609 () Bool)

(assert (=> b!4393609 (= e!2735562 (contains!11575 (toList!3185 lm!1707) lt!1601057))))

(assert (= (and d!1323518 res!1811168) b!4393609))

(declare-fun b_lambda!138903 () Bool)

(assert (=> (not b_lambda!138903) (not d!1323518)))

(declare-fun m!5053703 () Bool)

(assert (=> d!1323518 m!5053703))

(declare-fun m!5053705 () Bool)

(assert (=> d!1323518 m!5053705))

(assert (=> d!1323518 m!5053521))

(assert (=> b!4393609 m!5053529))

(assert (=> b!4393452 d!1323518))

(declare-fun d!1323520 () Bool)

(declare-fun lt!1601164 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7840 (List!49335) (InoxSet tuple2!48776))

(assert (=> d!1323520 (= lt!1601164 (select (content!7840 (toList!3185 lm!1707)) lt!1601057))))

(declare-fun e!2735568 () Bool)

(assert (=> d!1323520 (= lt!1601164 e!2735568)))

(declare-fun res!1811174 () Bool)

(assert (=> d!1323520 (=> (not res!1811174) (not e!2735568))))

(assert (=> d!1323520 (= res!1811174 ((_ is Cons!49211) (toList!3185 lm!1707)))))

(assert (=> d!1323520 (= (contains!11575 (toList!3185 lm!1707) lt!1601057) lt!1601164)))

(declare-fun b!4393614 () Bool)

(declare-fun e!2735567 () Bool)

(assert (=> b!4393614 (= e!2735568 e!2735567)))

(declare-fun res!1811173 () Bool)

(assert (=> b!4393614 (=> res!1811173 e!2735567)))

(assert (=> b!4393614 (= res!1811173 (= (h!54818 (toList!3185 lm!1707)) lt!1601057))))

(declare-fun b!4393615 () Bool)

(assert (=> b!4393615 (= e!2735567 (contains!11575 (t!356269 (toList!3185 lm!1707)) lt!1601057))))

(assert (= (and d!1323520 res!1811174) b!4393614))

(assert (= (and b!4393614 (not res!1811173)) b!4393615))

(declare-fun m!5053707 () Bool)

(assert (=> d!1323520 m!5053707))

(declare-fun m!5053709 () Bool)

(assert (=> d!1323520 m!5053709))

(declare-fun m!5053711 () Bool)

(assert (=> b!4393615 m!5053711))

(assert (=> b!4393452 d!1323520))

(declare-fun d!1323522 () Bool)

(assert (=> d!1323522 (contains!11575 (toList!3185 lm!1707) (tuple2!48777 hash!377 lt!1601058))))

(declare-fun lt!1601167 () Unit!78151)

(declare-fun choose!27436 (List!49335 (_ BitVec 64) List!49334) Unit!78151)

(assert (=> d!1323522 (= lt!1601167 (choose!27436 (toList!3185 lm!1707) hash!377 lt!1601058))))

(declare-fun e!2735571 () Bool)

(assert (=> d!1323522 e!2735571))

(declare-fun res!1811177 () Bool)

(assert (=> d!1323522 (=> (not res!1811177) (not e!2735571))))

(declare-fun isStrictlySorted!160 (List!49335) Bool)

(assert (=> d!1323522 (= res!1811177 (isStrictlySorted!160 (toList!3185 lm!1707)))))

(assert (=> d!1323522 (= (lemmaGetValueByKeyImpliesContainsTuple!446 (toList!3185 lm!1707) hash!377 lt!1601058) lt!1601167)))

(declare-fun b!4393618 () Bool)

(assert (=> b!4393618 (= e!2735571 (= (getValueByKey!565 (toList!3185 lm!1707) hash!377) (Some!10578 lt!1601058)))))

(assert (= (and d!1323522 res!1811177) b!4393618))

(declare-fun m!5053713 () Bool)

(assert (=> d!1323522 m!5053713))

(declare-fun m!5053715 () Bool)

(assert (=> d!1323522 m!5053715))

(declare-fun m!5053717 () Bool)

(assert (=> d!1323522 m!5053717))

(assert (=> b!4393618 m!5053685))

(assert (=> b!4393452 d!1323522))

(declare-fun d!1323524 () Bool)

(declare-fun e!2735584 () Bool)

(assert (=> d!1323524 e!2735584))

(declare-fun res!1811185 () Bool)

(assert (=> d!1323524 (=> res!1811185 e!2735584)))

(declare-fun e!2735587 () Bool)

(assert (=> d!1323524 (= res!1811185 e!2735587)))

(declare-fun res!1811184 () Bool)

(assert (=> d!1323524 (=> (not res!1811184) (not e!2735587))))

(declare-fun lt!1601188 () Bool)

(assert (=> d!1323524 (= res!1811184 (not lt!1601188))))

(declare-fun lt!1601187 () Bool)

(assert (=> d!1323524 (= lt!1601188 lt!1601187)))

(declare-fun lt!1601185 () Unit!78151)

(declare-fun e!2735585 () Unit!78151)

(assert (=> d!1323524 (= lt!1601185 e!2735585)))

(declare-fun c!747936 () Bool)

(assert (=> d!1323524 (= c!747936 lt!1601187)))

(declare-fun containsKey!881 (List!49334 K!10570) Bool)

(assert (=> d!1323524 (= lt!1601187 (containsKey!881 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(assert (=> d!1323524 (= (contains!11573 (extractMap!660 (toList!3185 lm!1707)) key!3918) lt!1601188)))

(declare-fun b!4393637 () Bool)

(declare-fun e!2735586 () Unit!78151)

(assert (=> b!4393637 (= e!2735585 e!2735586)))

(declare-fun c!747938 () Bool)

(declare-fun call!305859 () Bool)

(assert (=> b!4393637 (= c!747938 call!305859)))

(declare-fun bm!305854 () Bool)

(declare-datatypes ((List!49337 0))(
  ( (Nil!49213) (Cons!49213 (h!54822 K!10570) (t!356271 List!49337)) )
))
(declare-fun e!2735588 () List!49337)

(declare-fun contains!11577 (List!49337 K!10570) Bool)

(assert (=> bm!305854 (= call!305859 (contains!11577 e!2735588 key!3918))))

(declare-fun c!747937 () Bool)

(assert (=> bm!305854 (= c!747937 c!747936)))

(declare-fun b!4393638 () Bool)

(declare-fun keys!16705 (ListMap!2429) List!49337)

(assert (=> b!4393638 (= e!2735587 (not (contains!11577 (keys!16705 (extractMap!660 (toList!3185 lm!1707))) key!3918)))))

(declare-fun b!4393639 () Bool)

(declare-fun e!2735589 () Bool)

(assert (=> b!4393639 (= e!2735584 e!2735589)))

(declare-fun res!1811186 () Bool)

(assert (=> b!4393639 (=> (not res!1811186) (not e!2735589))))

(declare-datatypes ((Option!10580 0))(
  ( (None!10579) (Some!10579 (v!43621 V!10816)) )
))
(declare-fun isDefined!7874 (Option!10580) Bool)

(declare-fun getValueByKey!566 (List!49334 K!10570) Option!10580)

(assert (=> b!4393639 (= res!1811186 (isDefined!7874 (getValueByKey!566 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918)))))

(declare-fun b!4393640 () Bool)

(declare-fun lt!1601186 () Unit!78151)

(assert (=> b!4393640 (= e!2735585 lt!1601186)))

(declare-fun lt!1601191 () Unit!78151)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!477 (List!49334 K!10570) Unit!78151)

(assert (=> b!4393640 (= lt!1601191 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(assert (=> b!4393640 (isDefined!7874 (getValueByKey!566 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(declare-fun lt!1601190 () Unit!78151)

(assert (=> b!4393640 (= lt!1601190 lt!1601191)))

(declare-fun lemmaInListThenGetKeysListContains!178 (List!49334 K!10570) Unit!78151)

(assert (=> b!4393640 (= lt!1601186 (lemmaInListThenGetKeysListContains!178 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(assert (=> b!4393640 call!305859))

(declare-fun b!4393641 () Bool)

(assert (=> b!4393641 false))

(declare-fun lt!1601189 () Unit!78151)

(declare-fun lt!1601184 () Unit!78151)

(assert (=> b!4393641 (= lt!1601189 lt!1601184)))

(assert (=> b!4393641 (containsKey!881 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!179 (List!49334 K!10570) Unit!78151)

(assert (=> b!4393641 (= lt!1601184 (lemmaInGetKeysListThenContainsKey!179 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(declare-fun Unit!78158 () Unit!78151)

(assert (=> b!4393641 (= e!2735586 Unit!78158)))

(declare-fun b!4393642 () Bool)

(declare-fun getKeysList!181 (List!49334) List!49337)

(assert (=> b!4393642 (= e!2735588 (getKeysList!181 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))

(declare-fun b!4393643 () Bool)

(declare-fun Unit!78159 () Unit!78151)

(assert (=> b!4393643 (= e!2735586 Unit!78159)))

(declare-fun b!4393644 () Bool)

(assert (=> b!4393644 (= e!2735589 (contains!11577 (keys!16705 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(declare-fun b!4393645 () Bool)

(assert (=> b!4393645 (= e!2735588 (keys!16705 (extractMap!660 (toList!3185 lm!1707))))))

(assert (= (and d!1323524 c!747936) b!4393640))

(assert (= (and d!1323524 (not c!747936)) b!4393637))

(assert (= (and b!4393637 c!747938) b!4393641))

(assert (= (and b!4393637 (not c!747938)) b!4393643))

(assert (= (or b!4393640 b!4393637) bm!305854))

(assert (= (and bm!305854 c!747937) b!4393642))

(assert (= (and bm!305854 (not c!747937)) b!4393645))

(assert (= (and d!1323524 res!1811184) b!4393638))

(assert (= (and d!1323524 (not res!1811185)) b!4393639))

(assert (= (and b!4393639 res!1811186) b!4393644))

(declare-fun m!5053719 () Bool)

(assert (=> bm!305854 m!5053719))

(declare-fun m!5053721 () Bool)

(assert (=> d!1323524 m!5053721))

(assert (=> b!4393645 m!5053533))

(declare-fun m!5053723 () Bool)

(assert (=> b!4393645 m!5053723))

(assert (=> b!4393644 m!5053533))

(assert (=> b!4393644 m!5053723))

(assert (=> b!4393644 m!5053723))

(declare-fun m!5053725 () Bool)

(assert (=> b!4393644 m!5053725))

(assert (=> b!4393638 m!5053533))

(assert (=> b!4393638 m!5053723))

(assert (=> b!4393638 m!5053723))

(assert (=> b!4393638 m!5053725))

(declare-fun m!5053727 () Bool)

(assert (=> b!4393639 m!5053727))

(assert (=> b!4393639 m!5053727))

(declare-fun m!5053729 () Bool)

(assert (=> b!4393639 m!5053729))

(declare-fun m!5053731 () Bool)

(assert (=> b!4393640 m!5053731))

(assert (=> b!4393640 m!5053727))

(assert (=> b!4393640 m!5053727))

(assert (=> b!4393640 m!5053729))

(declare-fun m!5053733 () Bool)

(assert (=> b!4393640 m!5053733))

(declare-fun m!5053735 () Bool)

(assert (=> b!4393642 m!5053735))

(assert (=> b!4393641 m!5053721))

(declare-fun m!5053737 () Bool)

(assert (=> b!4393641 m!5053737))

(assert (=> b!4393448 d!1323524))

(declare-fun bs!726158 () Bool)

(declare-fun d!1323526 () Bool)

(assert (= bs!726158 (and d!1323526 start!426312)))

(declare-fun lambda!147387 () Int)

(assert (=> bs!726158 (= lambda!147387 lambda!147375)))

(declare-fun lt!1601194 () ListMap!2429)

(declare-fun invariantList!733 (List!49334) Bool)

(assert (=> d!1323526 (invariantList!733 (toList!3186 lt!1601194))))

(declare-fun e!2735592 () ListMap!2429)

(assert (=> d!1323526 (= lt!1601194 e!2735592)))

(declare-fun c!747941 () Bool)

(assert (=> d!1323526 (= c!747941 ((_ is Cons!49211) (toList!3185 lm!1707)))))

(assert (=> d!1323526 (forall!9309 (toList!3185 lm!1707) lambda!147387)))

(assert (=> d!1323526 (= (extractMap!660 (toList!3185 lm!1707)) lt!1601194)))

(declare-fun b!4393650 () Bool)

(declare-fun addToMapMapFromBucket!278 (List!49334 ListMap!2429) ListMap!2429)

(assert (=> b!4393650 (= e!2735592 (addToMapMapFromBucket!278 (_2!27682 (h!54818 (toList!3185 lm!1707))) (extractMap!660 (t!356269 (toList!3185 lm!1707)))))))

(declare-fun b!4393651 () Bool)

(assert (=> b!4393651 (= e!2735592 (ListMap!2430 Nil!49210))))

(assert (= (and d!1323526 c!747941) b!4393650))

(assert (= (and d!1323526 (not c!747941)) b!4393651))

(declare-fun m!5053739 () Bool)

(assert (=> d!1323526 m!5053739))

(declare-fun m!5053741 () Bool)

(assert (=> d!1323526 m!5053741))

(declare-fun m!5053743 () Bool)

(assert (=> b!4393650 m!5053743))

(assert (=> b!4393650 m!5053743))

(declare-fun m!5053745 () Bool)

(assert (=> b!4393650 m!5053745))

(assert (=> b!4393448 d!1323526))

(declare-fun bs!726159 () Bool)

(declare-fun d!1323528 () Bool)

(assert (= bs!726159 (and d!1323528 start!426312)))

(declare-fun lambda!147390 () Int)

(assert (=> bs!726159 (not (= lambda!147390 lambda!147375))))

(declare-fun bs!726160 () Bool)

(assert (= bs!726160 (and d!1323528 d!1323526)))

(assert (=> bs!726160 (not (= lambda!147390 lambda!147387))))

(assert (=> d!1323528 true))

(assert (=> d!1323528 (= (allKeysSameHashInMap!705 lm!1707 hashF!1247) (forall!9309 (toList!3185 lm!1707) lambda!147390))))

(declare-fun bs!726161 () Bool)

(assert (= bs!726161 d!1323528))

(declare-fun m!5053747 () Bool)

(assert (=> bs!726161 m!5053747))

(assert (=> b!4393449 d!1323528))

(declare-fun d!1323530 () Bool)

(declare-fun e!2735594 () Bool)

(assert (=> d!1323530 e!2735594))

(declare-fun res!1811187 () Bool)

(assert (=> d!1323530 (=> res!1811187 e!2735594)))

(declare-fun lt!1601197 () Bool)

(assert (=> d!1323530 (= res!1811187 (not lt!1601197))))

(declare-fun lt!1601196 () Bool)

(assert (=> d!1323530 (= lt!1601197 lt!1601196)))

(declare-fun lt!1601198 () Unit!78151)

(declare-fun e!2735593 () Unit!78151)

(assert (=> d!1323530 (= lt!1601198 e!2735593)))

(declare-fun c!747942 () Bool)

(assert (=> d!1323530 (= c!747942 lt!1601196)))

(assert (=> d!1323530 (= lt!1601196 (containsKey!879 (toList!3185 lm!1707) hash!377))))

(assert (=> d!1323530 (= (contains!11574 lm!1707 hash!377) lt!1601197)))

(declare-fun b!4393654 () Bool)

(declare-fun lt!1601195 () Unit!78151)

(assert (=> b!4393654 (= e!2735593 lt!1601195)))

(assert (=> b!4393654 (= lt!1601195 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!3185 lm!1707) hash!377))))

(assert (=> b!4393654 (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) hash!377))))

(declare-fun b!4393655 () Bool)

(declare-fun Unit!78160 () Unit!78151)

(assert (=> b!4393655 (= e!2735593 Unit!78160)))

(declare-fun b!4393656 () Bool)

(assert (=> b!4393656 (= e!2735594 (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) hash!377)))))

(assert (= (and d!1323530 c!747942) b!4393654))

(assert (= (and d!1323530 (not c!747942)) b!4393655))

(assert (= (and d!1323530 (not res!1811187)) b!4393656))

(declare-fun m!5053749 () Bool)

(assert (=> d!1323530 m!5053749))

(declare-fun m!5053751 () Bool)

(assert (=> b!4393654 m!5053751))

(assert (=> b!4393654 m!5053685))

(assert (=> b!4393654 m!5053685))

(declare-fun m!5053753 () Bool)

(assert (=> b!4393654 m!5053753))

(assert (=> b!4393656 m!5053685))

(assert (=> b!4393656 m!5053685))

(assert (=> b!4393656 m!5053753))

(assert (=> b!4393450 d!1323530))

(assert (=> start!426312 d!1323500))

(declare-fun d!1323532 () Bool)

(assert (=> d!1323532 (= (inv!64756 lm!1707) (isStrictlySorted!160 (toList!3185 lm!1707)))))

(declare-fun bs!726162 () Bool)

(assert (= bs!726162 d!1323532))

(assert (=> bs!726162 m!5053717))

(assert (=> start!426312 d!1323532))

(declare-fun d!1323534 () Bool)

(declare-fun res!1811192 () Bool)

(declare-fun e!2735599 () Bool)

(assert (=> d!1323534 (=> res!1811192 e!2735599)))

(assert (=> d!1323534 (= res!1811192 (not ((_ is Cons!49210) newBucket!200)))))

(assert (=> d!1323534 (= (noDuplicateKeys!601 newBucket!200) e!2735599)))

(declare-fun b!4393661 () Bool)

(declare-fun e!2735600 () Bool)

(assert (=> b!4393661 (= e!2735599 e!2735600)))

(declare-fun res!1811193 () Bool)

(assert (=> b!4393661 (=> (not res!1811193) (not e!2735600))))

(assert (=> b!4393661 (= res!1811193 (not (containsKey!880 (t!356268 newBucket!200) (_1!27681 (h!54817 newBucket!200)))))))

(declare-fun b!4393662 () Bool)

(assert (=> b!4393662 (= e!2735600 (noDuplicateKeys!601 (t!356268 newBucket!200)))))

(assert (= (and d!1323534 (not res!1811192)) b!4393661))

(assert (= (and b!4393661 res!1811193) b!4393662))

(declare-fun m!5053755 () Bool)

(assert (=> b!4393661 m!5053755))

(declare-fun m!5053757 () Bool)

(assert (=> b!4393662 m!5053757))

(assert (=> b!4393446 d!1323534))

(declare-fun d!1323536 () Bool)

(declare-fun hash!1800 (Hashable!4993 K!10570) (_ BitVec 64))

(assert (=> d!1323536 (= (hash!1798 hashF!1247 key!3918) (hash!1800 hashF!1247 key!3918))))

(declare-fun bs!726163 () Bool)

(assert (= bs!726163 d!1323536))

(declare-fun m!5053759 () Bool)

(assert (=> bs!726163 m!5053759))

(assert (=> b!4393457 d!1323536))

(declare-fun d!1323538 () Bool)

(assert (=> d!1323538 true))

(assert (=> d!1323538 true))

(declare-fun lambda!147393 () Int)

(declare-fun forall!9311 (List!49334 Int) Bool)

(assert (=> d!1323538 (= (allKeysSameHash!559 newBucket!200 hash!377 hashF!1247) (forall!9311 newBucket!200 lambda!147393))))

(declare-fun bs!726164 () Bool)

(assert (= bs!726164 d!1323538))

(declare-fun m!5053761 () Bool)

(assert (=> bs!726164 m!5053761))

(assert (=> b!4393447 d!1323538))

(declare-fun b!4393671 () Bool)

(declare-fun e!2735603 () Bool)

(declare-fun tp!1331458 () Bool)

(assert (=> b!4393671 (= e!2735603 (and tp_is_empty!25641 tp_is_empty!25643 tp!1331458))))

(assert (=> b!4393456 (= tp!1331445 e!2735603)))

(assert (= (and b!4393456 ((_ is Cons!49210) (t!356268 newBucket!200))) b!4393671))

(declare-fun b!4393676 () Bool)

(declare-fun e!2735606 () Bool)

(declare-fun tp!1331463 () Bool)

(declare-fun tp!1331464 () Bool)

(assert (=> b!4393676 (= e!2735606 (and tp!1331463 tp!1331464))))

(assert (=> b!4393458 (= tp!1331446 e!2735606)))

(assert (= (and b!4393458 ((_ is Cons!49211) (toList!3185 lm!1707))) b!4393676))

(declare-fun b_lambda!138905 () Bool)

(assert (= b_lambda!138891 (or start!426312 b_lambda!138905)))

(declare-fun bs!726165 () Bool)

(declare-fun d!1323540 () Bool)

(assert (= bs!726165 (and d!1323540 start!426312)))

(assert (=> bs!726165 (= (dynLambda!20733 lambda!147375 (tuple2!48777 hash!377 newBucket!200)) (noDuplicateKeys!601 (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun m!5053763 () Bool)

(assert (=> bs!726165 m!5053763))

(assert (=> b!4393576 d!1323540))

(declare-fun b_lambda!138907 () Bool)

(assert (= b_lambda!138903 (or start!426312 b_lambda!138907)))

(declare-fun bs!726166 () Bool)

(declare-fun d!1323542 () Bool)

(assert (= bs!726166 (and d!1323542 start!426312)))

(assert (=> bs!726166 (= (dynLambda!20733 lambda!147375 lt!1601057) (noDuplicateKeys!601 (_2!27682 lt!1601057)))))

(declare-fun m!5053765 () Bool)

(assert (=> bs!726166 m!5053765))

(assert (=> d!1323518 d!1323542))

(declare-fun b_lambda!138909 () Bool)

(assert (= b_lambda!138893 (or start!426312 b_lambda!138909)))

(declare-fun bs!726167 () Bool)

(declare-fun d!1323544 () Bool)

(assert (= bs!726167 (and d!1323544 start!426312)))

(assert (=> bs!726167 (= (dynLambda!20733 lambda!147375 (h!54818 (toList!3185 lm!1707))) (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-fun m!5053767 () Bool)

(assert (=> bs!726167 m!5053767))

(assert (=> b!4393581 d!1323544))

(declare-fun b_lambda!138911 () Bool)

(assert (= b_lambda!138885 (or start!426312 b_lambda!138911)))

(declare-fun bs!726168 () Bool)

(declare-fun d!1323546 () Bool)

(assert (= bs!726168 (and d!1323546 start!426312)))

(assert (=> bs!726168 (= (dynLambda!20733 lambda!147375 (h!54818 (toList!3185 lt!1601054))) (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 lt!1601054)))))))

(declare-fun m!5053769 () Bool)

(assert (=> bs!726168 m!5053769))

(assert (=> b!4393493 d!1323546))

(check-sat (not b!4393494) (not d!1323528) (not b!4393582) (not b!4393676) (not d!1323480) (not d!1323520) (not bs!726165) (not b!4393645) (not b!4393662) (not bs!726168) (not d!1323538) (not b!4393639) (not b!4393615) (not d!1323522) (not b_lambda!138905) (not b!4393661) (not bs!726167) (not bs!726166) (not d!1323486) (not b!4393638) (not b_lambda!138909) (not b!4393644) (not b_lambda!138911) (not b!4393671) (not d!1323518) (not d!1323536) (not b!4393618) (not b!4393530) (not d!1323526) (not d!1323502) (not d!1323508) (not b!4393656) (not b!4393609) (not b!4393550) (not d!1323530) tp_is_empty!25641 (not d!1323532) (not b!4393650) (not d!1323524) (not b!4393605) tp_is_empty!25643 (not d!1323476) (not bm!305854) (not b!4393642) (not b_lambda!138907) (not b!4393640) (not b!4393641) (not b!4393528) (not b!4393654) (not b!4393551))
(check-sat)
(get-model)

(declare-fun d!1323566 () Bool)

(declare-fun res!1811215 () Bool)

(declare-fun e!2735633 () Bool)

(assert (=> d!1323566 (=> res!1811215 e!2735633)))

(assert (=> d!1323566 (= res!1811215 (not ((_ is Cons!49210) (_2!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (=> d!1323566 (= (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 lm!1707)))) e!2735633)))

(declare-fun b!4393717 () Bool)

(declare-fun e!2735634 () Bool)

(assert (=> b!4393717 (= e!2735633 e!2735634)))

(declare-fun res!1811216 () Bool)

(assert (=> b!4393717 (=> (not res!1811216) (not e!2735634))))

(assert (=> b!4393717 (= res!1811216 (not (containsKey!880 (t!356268 (_2!27682 (h!54818 (toList!3185 lm!1707)))) (_1!27681 (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707))))))))))

(declare-fun b!4393718 () Bool)

(assert (=> b!4393718 (= e!2735634 (noDuplicateKeys!601 (t!356268 (_2!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (= (and d!1323566 (not res!1811215)) b!4393717))

(assert (= (and b!4393717 res!1811216) b!4393718))

(declare-fun m!5053831 () Bool)

(assert (=> b!4393717 m!5053831))

(declare-fun m!5053833 () Bool)

(assert (=> b!4393718 m!5053833))

(assert (=> bs!726167 d!1323566))

(declare-fun d!1323570 () Bool)

(declare-fun res!1811233 () Bool)

(declare-fun e!2735652 () Bool)

(assert (=> d!1323570 (=> res!1811233 e!2735652)))

(assert (=> d!1323570 (= res!1811233 (and ((_ is Cons!49210) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (= (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) key!3918)))))

(assert (=> d!1323570 (= (containsKey!881 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918) e!2735652)))

(declare-fun b!4393737 () Bool)

(declare-fun e!2735653 () Bool)

(assert (=> b!4393737 (= e!2735652 e!2735653)))

(declare-fun res!1811234 () Bool)

(assert (=> b!4393737 (=> (not res!1811234) (not e!2735653))))

(assert (=> b!4393737 (= res!1811234 ((_ is Cons!49210) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))

(declare-fun b!4393738 () Bool)

(assert (=> b!4393738 (= e!2735653 (containsKey!881 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) key!3918))))

(assert (= (and d!1323570 (not res!1811233)) b!4393737))

(assert (= (and b!4393737 res!1811234) b!4393738))

(declare-fun m!5053859 () Bool)

(assert (=> b!4393738 m!5053859))

(assert (=> d!1323524 d!1323570))

(declare-fun d!1323582 () Bool)

(declare-fun res!1811245 () Bool)

(declare-fun e!2735664 () Bool)

(assert (=> d!1323582 (=> res!1811245 e!2735664)))

(assert (=> d!1323582 (= res!1811245 ((_ is Nil!49210) newBucket!200))))

(assert (=> d!1323582 (= (forall!9311 newBucket!200 lambda!147393) e!2735664)))

(declare-fun b!4393749 () Bool)

(declare-fun e!2735665 () Bool)

(assert (=> b!4393749 (= e!2735664 e!2735665)))

(declare-fun res!1811246 () Bool)

(assert (=> b!4393749 (=> (not res!1811246) (not e!2735665))))

(declare-fun dynLambda!20735 (Int tuple2!48774) Bool)

(assert (=> b!4393749 (= res!1811246 (dynLambda!20735 lambda!147393 (h!54817 newBucket!200)))))

(declare-fun b!4393750 () Bool)

(assert (=> b!4393750 (= e!2735665 (forall!9311 (t!356268 newBucket!200) lambda!147393))))

(assert (= (and d!1323582 (not res!1811245)) b!4393749))

(assert (= (and b!4393749 res!1811246) b!4393750))

(declare-fun b_lambda!138919 () Bool)

(assert (=> (not b_lambda!138919) (not b!4393749)))

(declare-fun m!5053863 () Bool)

(assert (=> b!4393749 m!5053863))

(declare-fun m!5053865 () Bool)

(assert (=> b!4393750 m!5053865))

(assert (=> d!1323538 d!1323582))

(assert (=> b!4393609 d!1323520))

(declare-fun d!1323590 () Bool)

(declare-fun res!1811255 () Bool)

(declare-fun e!2735680 () Bool)

(assert (=> d!1323590 (=> res!1811255 e!2735680)))

(assert (=> d!1323590 (= res!1811255 (or ((_ is Nil!49211) (toList!3185 lm!1707)) ((_ is Nil!49211) (t!356269 (toList!3185 lm!1707)))))))

(assert (=> d!1323590 (= (isStrictlySorted!160 (toList!3185 lm!1707)) e!2735680)))

(declare-fun b!4393771 () Bool)

(declare-fun e!2735681 () Bool)

(assert (=> b!4393771 (= e!2735680 e!2735681)))

(declare-fun res!1811256 () Bool)

(assert (=> b!4393771 (=> (not res!1811256) (not e!2735681))))

(assert (=> b!4393771 (= res!1811256 (bvslt (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (t!356269 (toList!3185 lm!1707))))))))

(declare-fun b!4393772 () Bool)

(assert (=> b!4393772 (= e!2735681 (isStrictlySorted!160 (t!356269 (toList!3185 lm!1707))))))

(assert (= (and d!1323590 (not res!1811255)) b!4393771))

(assert (= (and b!4393771 res!1811256) b!4393772))

(declare-fun m!5053869 () Bool)

(assert (=> b!4393772 m!5053869))

(assert (=> d!1323532 d!1323590))

(declare-fun d!1323594 () Bool)

(declare-fun lt!1601271 () Bool)

(declare-fun content!7842 (List!49337) (InoxSet K!10570))

(assert (=> d!1323594 (= lt!1601271 (select (content!7842 (keys!16705 (extractMap!660 (toList!3185 lm!1707)))) key!3918))))

(declare-fun e!2735695 () Bool)

(assert (=> d!1323594 (= lt!1601271 e!2735695)))

(declare-fun res!1811269 () Bool)

(assert (=> d!1323594 (=> (not res!1811269) (not e!2735695))))

(assert (=> d!1323594 (= res!1811269 ((_ is Cons!49213) (keys!16705 (extractMap!660 (toList!3185 lm!1707)))))))

(assert (=> d!1323594 (= (contains!11577 (keys!16705 (extractMap!660 (toList!3185 lm!1707))) key!3918) lt!1601271)))

(declare-fun b!4393785 () Bool)

(declare-fun e!2735694 () Bool)

(assert (=> b!4393785 (= e!2735695 e!2735694)))

(declare-fun res!1811270 () Bool)

(assert (=> b!4393785 (=> res!1811270 e!2735694)))

(assert (=> b!4393785 (= res!1811270 (= (h!54822 (keys!16705 (extractMap!660 (toList!3185 lm!1707)))) key!3918))))

(declare-fun b!4393786 () Bool)

(assert (=> b!4393786 (= e!2735694 (contains!11577 (t!356271 (keys!16705 (extractMap!660 (toList!3185 lm!1707)))) key!3918))))

(assert (= (and d!1323594 res!1811269) b!4393785))

(assert (= (and b!4393785 (not res!1811270)) b!4393786))

(assert (=> d!1323594 m!5053723))

(declare-fun m!5053879 () Bool)

(assert (=> d!1323594 m!5053879))

(declare-fun m!5053881 () Bool)

(assert (=> d!1323594 m!5053881))

(declare-fun m!5053883 () Bool)

(assert (=> b!4393786 m!5053883))

(assert (=> b!4393644 d!1323594))

(declare-fun b!4393820 () Bool)

(assert (=> b!4393820 true))

(declare-fun d!1323600 () Bool)

(declare-fun e!2735710 () Bool)

(assert (=> d!1323600 e!2735710))

(declare-fun res!1811295 () Bool)

(assert (=> d!1323600 (=> (not res!1811295) (not e!2735710))))

(declare-fun lt!1601284 () List!49337)

(declare-fun noDuplicate!626 (List!49337) Bool)

(assert (=> d!1323600 (= res!1811295 (noDuplicate!626 lt!1601284))))

(assert (=> d!1323600 (= lt!1601284 (getKeysList!181 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))

(assert (=> d!1323600 (= (keys!16705 (extractMap!660 (toList!3185 lm!1707))) lt!1601284)))

(declare-fun b!4393819 () Bool)

(declare-fun res!1811296 () Bool)

(assert (=> b!4393819 (=> (not res!1811296) (not e!2735710))))

(declare-fun length!108 (List!49337) Int)

(declare-fun length!109 (List!49334) Int)

(assert (=> b!4393819 (= res!1811296 (= (length!108 lt!1601284) (length!109 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))))

(declare-fun res!1811297 () Bool)

(assert (=> b!4393820 (=> (not res!1811297) (not e!2735710))))

(declare-fun lambda!147437 () Int)

(declare-fun forall!9313 (List!49337 Int) Bool)

(assert (=> b!4393820 (= res!1811297 (forall!9313 lt!1601284 lambda!147437))))

(declare-fun b!4393821 () Bool)

(declare-fun lambda!147438 () Int)

(declare-fun map!10723 (List!49334 Int) List!49337)

(assert (=> b!4393821 (= e!2735710 (= (content!7842 lt!1601284) (content!7842 (map!10723 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) lambda!147438))))))

(assert (= (and d!1323600 res!1811295) b!4393819))

(assert (= (and b!4393819 res!1811296) b!4393820))

(assert (= (and b!4393820 res!1811297) b!4393821))

(declare-fun m!5053921 () Bool)

(assert (=> d!1323600 m!5053921))

(assert (=> d!1323600 m!5053735))

(declare-fun m!5053923 () Bool)

(assert (=> b!4393819 m!5053923))

(declare-fun m!5053925 () Bool)

(assert (=> b!4393819 m!5053925))

(declare-fun m!5053927 () Bool)

(assert (=> b!4393820 m!5053927))

(declare-fun m!5053929 () Bool)

(assert (=> b!4393821 m!5053929))

(declare-fun m!5053931 () Bool)

(assert (=> b!4393821 m!5053931))

(assert (=> b!4393821 m!5053931))

(declare-fun m!5053933 () Bool)

(assert (=> b!4393821 m!5053933))

(assert (=> b!4393644 d!1323600))

(declare-fun d!1323614 () Bool)

(assert (=> d!1323614 (dynLambda!20733 lambda!147375 lt!1601057)))

(assert (=> d!1323614 true))

(declare-fun _$7!1570 () Unit!78151)

(assert (=> d!1323614 (= (choose!27435 (toList!3185 lm!1707) lambda!147375 lt!1601057) _$7!1570)))

(declare-fun b_lambda!138923 () Bool)

(assert (=> (not b_lambda!138923) (not d!1323614)))

(declare-fun bs!726182 () Bool)

(assert (= bs!726182 d!1323614))

(assert (=> bs!726182 m!5053703))

(assert (=> d!1323518 d!1323614))

(assert (=> d!1323518 d!1323500))

(declare-fun b!4393854 () Bool)

(declare-fun e!2735726 () Option!10579)

(assert (=> b!4393854 (= e!2735726 (getValueByKey!565 (t!356269 (toList!3185 lt!1601132)) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun b!4393853 () Bool)

(declare-fun e!2735725 () Option!10579)

(assert (=> b!4393853 (= e!2735725 e!2735726)))

(declare-fun c!747974 () Bool)

(assert (=> b!4393853 (= c!747974 (and ((_ is Cons!49211) (toList!3185 lt!1601132)) (not (= (_1!27682 (h!54818 (toList!3185 lt!1601132))) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))))

(declare-fun d!1323616 () Bool)

(declare-fun c!747973 () Bool)

(assert (=> d!1323616 (= c!747973 (and ((_ is Cons!49211) (toList!3185 lt!1601132)) (= (_1!27682 (h!54818 (toList!3185 lt!1601132))) (_1!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (=> d!1323616 (= (getValueByKey!565 (toList!3185 lt!1601132) (_1!27682 (tuple2!48777 hash!377 newBucket!200))) e!2735725)))

(declare-fun b!4393855 () Bool)

(assert (=> b!4393855 (= e!2735726 None!10578)))

(declare-fun b!4393852 () Bool)

(assert (=> b!4393852 (= e!2735725 (Some!10578 (_2!27682 (h!54818 (toList!3185 lt!1601132)))))))

(assert (= (and d!1323616 c!747973) b!4393852))

(assert (= (and d!1323616 (not c!747973)) b!4393853))

(assert (= (and b!4393853 c!747974) b!4393854))

(assert (= (and b!4393853 (not c!747974)) b!4393855))

(declare-fun m!5053935 () Bool)

(assert (=> b!4393854 m!5053935))

(assert (=> b!4393550 d!1323616))

(declare-fun d!1323618 () Bool)

(assert (=> d!1323618 (isDefined!7874 (getValueByKey!566 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(declare-fun lt!1601290 () Unit!78151)

(declare-fun choose!27442 (List!49334 K!10570) Unit!78151)

(assert (=> d!1323618 (= lt!1601290 (choose!27442 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(assert (=> d!1323618 (invariantList!733 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))

(assert (=> d!1323618 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918) lt!1601290)))

(declare-fun bs!726183 () Bool)

(assert (= bs!726183 d!1323618))

(assert (=> bs!726183 m!5053727))

(assert (=> bs!726183 m!5053727))

(assert (=> bs!726183 m!5053729))

(declare-fun m!5053937 () Bool)

(assert (=> bs!726183 m!5053937))

(declare-fun m!5053939 () Bool)

(assert (=> bs!726183 m!5053939))

(assert (=> b!4393640 d!1323618))

(declare-fun d!1323620 () Bool)

(declare-fun isEmpty!28258 (Option!10580) Bool)

(assert (=> d!1323620 (= (isDefined!7874 (getValueByKey!566 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918)) (not (isEmpty!28258 (getValueByKey!566 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))))

(declare-fun bs!726184 () Bool)

(assert (= bs!726184 d!1323620))

(assert (=> bs!726184 m!5053727))

(declare-fun m!5053951 () Bool)

(assert (=> bs!726184 m!5053951))

(assert (=> b!4393640 d!1323620))

(declare-fun b!4393876 () Bool)

(declare-fun e!2735737 () Option!10580)

(assert (=> b!4393876 (= e!2735737 (getValueByKey!566 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) key!3918))))

(declare-fun b!4393877 () Bool)

(assert (=> b!4393877 (= e!2735737 None!10579)))

(declare-fun d!1323624 () Bool)

(declare-fun c!747983 () Bool)

(assert (=> d!1323624 (= c!747983 (and ((_ is Cons!49210) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (= (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) key!3918)))))

(declare-fun e!2735736 () Option!10580)

(assert (=> d!1323624 (= (getValueByKey!566 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918) e!2735736)))

(declare-fun b!4393874 () Bool)

(assert (=> b!4393874 (= e!2735736 (Some!10579 (_2!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))))

(declare-fun b!4393875 () Bool)

(assert (=> b!4393875 (= e!2735736 e!2735737)))

(declare-fun c!747984 () Bool)

(assert (=> b!4393875 (= c!747984 (and ((_ is Cons!49210) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (not (= (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) key!3918))))))

(assert (= (and d!1323624 c!747983) b!4393874))

(assert (= (and d!1323624 (not c!747983)) b!4393875))

(assert (= (and b!4393875 c!747984) b!4393876))

(assert (= (and b!4393875 (not c!747984)) b!4393877))

(declare-fun m!5053959 () Bool)

(assert (=> b!4393876 m!5053959))

(assert (=> b!4393640 d!1323624))

(declare-fun d!1323630 () Bool)

(assert (=> d!1323630 (contains!11577 (getKeysList!181 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) key!3918)))

(declare-fun lt!1601296 () Unit!78151)

(declare-fun choose!27443 (List!49334 K!10570) Unit!78151)

(assert (=> d!1323630 (= lt!1601296 (choose!27443 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(assert (=> d!1323630 (invariantList!733 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))

(assert (=> d!1323630 (= (lemmaInListThenGetKeysListContains!178 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918) lt!1601296)))

(declare-fun bs!726187 () Bool)

(assert (= bs!726187 d!1323630))

(assert (=> bs!726187 m!5053735))

(assert (=> bs!726187 m!5053735))

(declare-fun m!5053963 () Bool)

(assert (=> bs!726187 m!5053963))

(declare-fun m!5053965 () Bool)

(assert (=> bs!726187 m!5053965))

(assert (=> bs!726187 m!5053939))

(assert (=> b!4393640 d!1323630))

(declare-fun d!1323634 () Bool)

(declare-fun res!1811304 () Bool)

(declare-fun e!2735744 () Bool)

(assert (=> d!1323634 (=> res!1811304 e!2735744)))

(assert (=> d!1323634 (= res!1811304 ((_ is Nil!49211) (toList!3185 lm!1707)))))

(assert (=> d!1323634 (= (forall!9309 (toList!3185 lm!1707) lambda!147390) e!2735744)))

(declare-fun b!4393890 () Bool)

(declare-fun e!2735745 () Bool)

(assert (=> b!4393890 (= e!2735744 e!2735745)))

(declare-fun res!1811305 () Bool)

(assert (=> b!4393890 (=> (not res!1811305) (not e!2735745))))

(assert (=> b!4393890 (= res!1811305 (dynLambda!20733 lambda!147390 (h!54818 (toList!3185 lm!1707))))))

(declare-fun b!4393891 () Bool)

(assert (=> b!4393891 (= e!2735745 (forall!9309 (t!356269 (toList!3185 lm!1707)) lambda!147390))))

(assert (= (and d!1323634 (not res!1811304)) b!4393890))

(assert (= (and b!4393890 res!1811305) b!4393891))

(declare-fun b_lambda!138925 () Bool)

(assert (=> (not b_lambda!138925) (not b!4393890)))

(declare-fun m!5053967 () Bool)

(assert (=> b!4393890 m!5053967))

(declare-fun m!5053969 () Bool)

(assert (=> b!4393891 m!5053969))

(assert (=> d!1323528 d!1323634))

(assert (=> b!4393641 d!1323570))

(declare-fun d!1323636 () Bool)

(assert (=> d!1323636 (containsKey!881 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918)))

(declare-fun lt!1601299 () Unit!78151)

(declare-fun choose!27444 (List!49334 K!10570) Unit!78151)

(assert (=> d!1323636 (= lt!1601299 (choose!27444 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918))))

(assert (=> d!1323636 (invariantList!733 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))

(assert (=> d!1323636 (= (lemmaInGetKeysListThenContainsKey!179 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) key!3918) lt!1601299)))

(declare-fun bs!726188 () Bool)

(assert (= bs!726188 d!1323636))

(assert (=> bs!726188 m!5053721))

(declare-fun m!5053971 () Bool)

(assert (=> bs!726188 m!5053971))

(assert (=> bs!726188 m!5053939))

(assert (=> b!4393641 d!1323636))

(declare-fun d!1323638 () Bool)

(declare-fun e!2735747 () Bool)

(assert (=> d!1323638 e!2735747))

(declare-fun res!1811306 () Bool)

(assert (=> d!1323638 (=> res!1811306 e!2735747)))

(declare-fun lt!1601304 () Bool)

(assert (=> d!1323638 (= res!1811306 (not lt!1601304))))

(declare-fun lt!1601303 () Bool)

(assert (=> d!1323638 (= lt!1601304 lt!1601303)))

(declare-fun lt!1601305 () Unit!78151)

(declare-fun e!2735746 () Unit!78151)

(assert (=> d!1323638 (= lt!1601305 e!2735746)))

(declare-fun c!747991 () Bool)

(assert (=> d!1323638 (= c!747991 lt!1601303)))

(assert (=> d!1323638 (= lt!1601303 (containsKey!879 (toList!3185 lt!1601132) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(assert (=> d!1323638 (= (contains!11574 lt!1601132 (_1!27682 (tuple2!48777 hash!377 newBucket!200))) lt!1601304)))

(declare-fun b!4393892 () Bool)

(declare-fun lt!1601302 () Unit!78151)

(assert (=> b!4393892 (= e!2735746 lt!1601302)))

(assert (=> b!4393892 (= lt!1601302 (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!3185 lt!1601132) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(assert (=> b!4393892 (isDefined!7873 (getValueByKey!565 (toList!3185 lt!1601132) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun b!4393893 () Bool)

(declare-fun Unit!78173 () Unit!78151)

(assert (=> b!4393893 (= e!2735746 Unit!78173)))

(declare-fun b!4393894 () Bool)

(assert (=> b!4393894 (= e!2735747 (isDefined!7873 (getValueByKey!565 (toList!3185 lt!1601132) (_1!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (= (and d!1323638 c!747991) b!4393892))

(assert (= (and d!1323638 (not c!747991)) b!4393893))

(assert (= (and d!1323638 (not res!1811306)) b!4393894))

(declare-fun m!5053973 () Bool)

(assert (=> d!1323638 m!5053973))

(declare-fun m!5053975 () Bool)

(assert (=> b!4393892 m!5053975))

(assert (=> b!4393892 m!5053631))

(assert (=> b!4393892 m!5053631))

(declare-fun m!5053981 () Bool)

(assert (=> b!4393892 m!5053981))

(assert (=> b!4393894 m!5053631))

(assert (=> b!4393894 m!5053631))

(assert (=> b!4393894 m!5053981))

(assert (=> d!1323480 d!1323638))

(declare-fun b!4393899 () Bool)

(declare-fun e!2735751 () Option!10579)

(assert (=> b!4393899 (= e!2735751 (getValueByKey!565 (t!356269 lt!1601130) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun b!4393898 () Bool)

(declare-fun e!2735750 () Option!10579)

(assert (=> b!4393898 (= e!2735750 e!2735751)))

(declare-fun c!747993 () Bool)

(assert (=> b!4393898 (= c!747993 (and ((_ is Cons!49211) lt!1601130) (not (= (_1!27682 (h!54818 lt!1601130)) (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))))

(declare-fun d!1323642 () Bool)

(declare-fun c!747992 () Bool)

(assert (=> d!1323642 (= c!747992 (and ((_ is Cons!49211) lt!1601130) (= (_1!27682 (h!54818 lt!1601130)) (_1!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (=> d!1323642 (= (getValueByKey!565 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200))) e!2735750)))

(declare-fun b!4393900 () Bool)

(assert (=> b!4393900 (= e!2735751 None!10578)))

(declare-fun b!4393897 () Bool)

(assert (=> b!4393897 (= e!2735750 (Some!10578 (_2!27682 (h!54818 lt!1601130))))))

(assert (= (and d!1323642 c!747992) b!4393897))

(assert (= (and d!1323642 (not c!747992)) b!4393898))

(assert (= (and b!4393898 c!747993) b!4393899))

(assert (= (and b!4393898 (not c!747993)) b!4393900))

(declare-fun m!5053987 () Bool)

(assert (=> b!4393899 m!5053987))

(assert (=> d!1323480 d!1323642))

(declare-fun d!1323646 () Bool)

(assert (=> d!1323646 (= (getValueByKey!565 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200))) (Some!10578 (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun lt!1601313 () Unit!78151)

(declare-fun choose!27445 (List!49335 (_ BitVec 64) List!49334) Unit!78151)

(assert (=> d!1323646 (= lt!1601313 (choose!27445 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun e!2735762 () Bool)

(assert (=> d!1323646 e!2735762))

(declare-fun res!1811321 () Bool)

(assert (=> d!1323646 (=> (not res!1811321) (not e!2735762))))

(assert (=> d!1323646 (= res!1811321 (isStrictlySorted!160 lt!1601130))))

(assert (=> d!1323646 (= (lemmaContainsTupThenGetReturnValue!328 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))) lt!1601313)))

(declare-fun b!4393913 () Bool)

(declare-fun res!1811322 () Bool)

(assert (=> b!4393913 (=> (not res!1811322) (not e!2735762))))

(assert (=> b!4393913 (= res!1811322 (containsKey!879 lt!1601130 (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun b!4393914 () Bool)

(assert (=> b!4393914 (= e!2735762 (contains!11575 lt!1601130 (tuple2!48777 (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (= (and d!1323646 res!1811321) b!4393913))

(assert (= (and b!4393913 res!1811322) b!4393914))

(assert (=> d!1323646 m!5053625))

(declare-fun m!5054009 () Bool)

(assert (=> d!1323646 m!5054009))

(declare-fun m!5054011 () Bool)

(assert (=> d!1323646 m!5054011))

(declare-fun m!5054013 () Bool)

(assert (=> b!4393913 m!5054013))

(declare-fun m!5054015 () Bool)

(assert (=> b!4393914 m!5054015))

(assert (=> d!1323480 d!1323646))

(declare-fun c!748006 () Bool)

(declare-fun e!2735795 () List!49335)

(declare-fun b!4393957 () Bool)

(declare-fun c!748004 () Bool)

(assert (=> b!4393957 (= e!2735795 (ite c!748004 (t!356269 (toList!3185 lm!1707)) (ite c!748006 (Cons!49211 (h!54818 (toList!3185 lm!1707)) (t!356269 (toList!3185 lm!1707))) Nil!49211)))))

(declare-fun b!4393958 () Bool)

(assert (=> b!4393958 (= e!2735795 (insertStrictlySorted!187 (t!356269 (toList!3185 lm!1707)) (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun b!4393959 () Bool)

(declare-fun e!2735796 () List!49335)

(declare-fun call!305886 () List!49335)

(assert (=> b!4393959 (= e!2735796 call!305886)))

(declare-fun bm!305879 () Bool)

(declare-fun call!305884 () List!49335)

(assert (=> bm!305879 (= call!305886 call!305884)))

(declare-fun b!4393960 () Bool)

(declare-fun res!1811345 () Bool)

(declare-fun e!2735794 () Bool)

(assert (=> b!4393960 (=> (not res!1811345) (not e!2735794))))

(declare-fun lt!1601321 () List!49335)

(assert (=> b!4393960 (= res!1811345 (containsKey!879 lt!1601321 (_1!27682 (tuple2!48777 hash!377 newBucket!200))))))

(declare-fun b!4393961 () Bool)

(assert (=> b!4393961 (= c!748006 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (bvsgt (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(declare-fun e!2735797 () List!49335)

(assert (=> b!4393961 (= e!2735797 e!2735796)))

(declare-fun bm!305880 () Bool)

(declare-fun call!305885 () List!49335)

(assert (=> bm!305880 (= call!305884 call!305885)))

(declare-fun b!4393962 () Bool)

(declare-fun e!2735793 () List!49335)

(assert (=> b!4393962 (= e!2735793 e!2735797)))

(assert (=> b!4393962 (= c!748004 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(declare-fun d!1323660 () Bool)

(assert (=> d!1323660 e!2735794))

(declare-fun res!1811346 () Bool)

(assert (=> d!1323660 (=> (not res!1811346) (not e!2735794))))

(assert (=> d!1323660 (= res!1811346 (isStrictlySorted!160 lt!1601321))))

(assert (=> d!1323660 (= lt!1601321 e!2735793)))

(declare-fun c!748007 () Bool)

(assert (=> d!1323660 (= c!748007 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (bvslt (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (=> d!1323660 (isStrictlySorted!160 (toList!3185 lm!1707))))

(assert (=> d!1323660 (= (insertStrictlySorted!187 (toList!3185 lm!1707) (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))) lt!1601321)))

(declare-fun b!4393963 () Bool)

(assert (=> b!4393963 (= e!2735793 call!305885)))

(declare-fun bm!305881 () Bool)

(declare-fun $colon$colon!739 (List!49335 tuple2!48776) List!49335)

(assert (=> bm!305881 (= call!305885 ($colon$colon!739 e!2735795 (ite c!748007 (h!54818 (toList!3185 lm!1707)) (tuple2!48777 (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200))))))))

(declare-fun c!748005 () Bool)

(assert (=> bm!305881 (= c!748005 c!748007)))

(declare-fun b!4393964 () Bool)

(assert (=> b!4393964 (= e!2735796 call!305886)))

(declare-fun b!4393965 () Bool)

(assert (=> b!4393965 (= e!2735797 call!305884)))

(declare-fun b!4393966 () Bool)

(assert (=> b!4393966 (= e!2735794 (contains!11575 lt!1601321 (tuple2!48777 (_1!27682 (tuple2!48777 hash!377 newBucket!200)) (_2!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (= (and d!1323660 c!748007) b!4393963))

(assert (= (and d!1323660 (not c!748007)) b!4393962))

(assert (= (and b!4393962 c!748004) b!4393965))

(assert (= (and b!4393962 (not c!748004)) b!4393961))

(assert (= (and b!4393961 c!748006) b!4393959))

(assert (= (and b!4393961 (not c!748006)) b!4393964))

(assert (= (or b!4393959 b!4393964) bm!305879))

(assert (= (or b!4393965 bm!305879) bm!305880))

(assert (= (or b!4393963 bm!305880) bm!305881))

(assert (= (and bm!305881 c!748005) b!4393958))

(assert (= (and bm!305881 (not c!748005)) b!4393957))

(assert (= (and d!1323660 res!1811346) b!4393960))

(assert (= (and b!4393960 res!1811345) b!4393966))

(declare-fun m!5054041 () Bool)

(assert (=> b!4393958 m!5054041))

(declare-fun m!5054043 () Bool)

(assert (=> b!4393960 m!5054043))

(declare-fun m!5054045 () Bool)

(assert (=> bm!305881 m!5054045))

(declare-fun m!5054047 () Bool)

(assert (=> d!1323660 m!5054047))

(assert (=> d!1323660 m!5053717))

(declare-fun m!5054049 () Bool)

(assert (=> b!4393966 m!5054049))

(assert (=> d!1323480 d!1323660))

(declare-fun bs!726201 () Bool)

(declare-fun b!4394027 () Bool)

(assert (= bs!726201 (and b!4394027 b!4393820)))

(declare-fun lambda!147459 () Int)

(assert (=> bs!726201 (= (= (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (= lambda!147459 lambda!147437))))

(assert (=> b!4394027 true))

(declare-fun bs!726205 () Bool)

(declare-fun b!4394022 () Bool)

(assert (= bs!726205 (and b!4394022 b!4393820)))

(declare-fun lambda!147460 () Int)

(assert (=> bs!726205 (= (= (Cons!49210 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (= lambda!147460 lambda!147437))))

(declare-fun bs!726206 () Bool)

(assert (= bs!726206 (and b!4394022 b!4394027)))

(assert (=> bs!726206 (= (= (Cons!49210 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) (= lambda!147460 lambda!147459))))

(assert (=> b!4394022 true))

(declare-fun bs!726210 () Bool)

(declare-fun b!4394026 () Bool)

(assert (= bs!726210 (and b!4394026 b!4393820)))

(declare-fun lambda!147461 () Int)

(assert (=> bs!726210 (= lambda!147461 lambda!147437)))

(declare-fun bs!726211 () Bool)

(assert (= bs!726211 (and b!4394026 b!4394027)))

(assert (=> bs!726211 (= (= (toList!3186 (extractMap!660 (toList!3185 lm!1707))) (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) (= lambda!147461 lambda!147459))))

(declare-fun bs!726212 () Bool)

(assert (= bs!726212 (and b!4394026 b!4394022)))

(assert (=> bs!726212 (= (= (toList!3186 (extractMap!660 (toList!3185 lm!1707))) (Cons!49210 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))) (= lambda!147461 lambda!147460))))

(assert (=> b!4394026 true))

(declare-fun bs!726213 () Bool)

(declare-fun b!4394028 () Bool)

(assert (= bs!726213 (and b!4394028 b!4393821)))

(declare-fun lambda!147462 () Int)

(assert (=> bs!726213 (= lambda!147462 lambda!147438)))

(declare-fun b!4394021 () Bool)

(declare-fun res!1811364 () Bool)

(declare-fun e!2735825 () Bool)

(assert (=> b!4394021 (=> (not res!1811364) (not e!2735825))))

(declare-fun lt!1601361 () List!49337)

(assert (=> b!4394021 (= res!1811364 (= (length!108 lt!1601361) (length!109 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))))

(declare-fun e!2735823 () List!49337)

(assert (=> b!4394022 (= e!2735823 (Cons!49213 (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) (getKeysList!181 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))))

(declare-fun c!748027 () Bool)

(assert (=> b!4394022 (= c!748027 (containsKey!881 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))))

(declare-fun lt!1601357 () Unit!78151)

(declare-fun e!2735826 () Unit!78151)

(assert (=> b!4394022 (= lt!1601357 e!2735826)))

(declare-fun c!748025 () Bool)

(assert (=> b!4394022 (= c!748025 (contains!11577 (getKeysList!181 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))))

(declare-fun lt!1601360 () Unit!78151)

(declare-fun e!2735824 () Unit!78151)

(assert (=> b!4394022 (= lt!1601360 e!2735824)))

(declare-fun lt!1601362 () List!49337)

(assert (=> b!4394022 (= lt!1601362 (getKeysList!181 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))))

(declare-fun lt!1601358 () Unit!78151)

(declare-fun lemmaForallContainsAddHeadPreserves!47 (List!49334 List!49337 tuple2!48774) Unit!78151)

(assert (=> b!4394022 (= lt!1601358 (lemmaForallContainsAddHeadPreserves!47 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) lt!1601362 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))))

(assert (=> b!4394022 (forall!9313 lt!1601362 lambda!147460)))

(declare-fun lt!1601359 () Unit!78151)

(assert (=> b!4394022 (= lt!1601359 lt!1601358)))

(declare-fun b!4394023 () Bool)

(declare-fun Unit!78174 () Unit!78151)

(assert (=> b!4394023 (= e!2735824 Unit!78174)))

(declare-fun d!1323682 () Bool)

(assert (=> d!1323682 e!2735825))

(declare-fun res!1811365 () Bool)

(assert (=> d!1323682 (=> (not res!1811365) (not e!2735825))))

(assert (=> d!1323682 (= res!1811365 (noDuplicate!626 lt!1601361))))

(assert (=> d!1323682 (= lt!1601361 e!2735823)))

(declare-fun c!748026 () Bool)

(assert (=> d!1323682 (= c!748026 ((_ is Cons!49210) (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))

(assert (=> d!1323682 (invariantList!733 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))))

(assert (=> d!1323682 (= (getKeysList!181 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))) lt!1601361)))

(declare-fun b!4394024 () Bool)

(assert (=> b!4394024 false))

(declare-fun Unit!78175 () Unit!78151)

(assert (=> b!4394024 (= e!2735826 Unit!78175)))

(declare-fun b!4394025 () Bool)

(assert (=> b!4394025 (= e!2735823 Nil!49213)))

(declare-fun res!1811366 () Bool)

(assert (=> b!4394026 (=> (not res!1811366) (not e!2735825))))

(assert (=> b!4394026 (= res!1811366 (forall!9313 lt!1601361 lambda!147461))))

(assert (=> b!4394027 false))

(declare-fun lt!1601363 () Unit!78151)

(declare-fun forallContained!1949 (List!49337 Int K!10570) Unit!78151)

(assert (=> b!4394027 (= lt!1601363 (forallContained!1949 (getKeysList!181 (t!356268 (toList!3186 (extractMap!660 (toList!3185 lm!1707))))) lambda!147459 (_1!27681 (h!54817 (toList!3186 (extractMap!660 (toList!3185 lm!1707)))))))))

(declare-fun Unit!78176 () Unit!78151)

(assert (=> b!4394027 (= e!2735824 Unit!78176)))

(assert (=> b!4394028 (= e!2735825 (= (content!7842 lt!1601361) (content!7842 (map!10723 (toList!3186 (extractMap!660 (toList!3185 lm!1707))) lambda!147462))))))

(declare-fun b!4394029 () Bool)

(declare-fun Unit!78177 () Unit!78151)

(assert (=> b!4394029 (= e!2735826 Unit!78177)))

(assert (= (and d!1323682 c!748026) b!4394022))

(assert (= (and d!1323682 (not c!748026)) b!4394025))

(assert (= (and b!4394022 c!748027) b!4394024))

(assert (= (and b!4394022 (not c!748027)) b!4394029))

(assert (= (and b!4394022 c!748025) b!4394027))

(assert (= (and b!4394022 (not c!748025)) b!4394023))

(assert (= (and d!1323682 res!1811365) b!4394021))

(assert (= (and b!4394021 res!1811364) b!4394026))

(assert (= (and b!4394026 res!1811366) b!4394028))

(declare-fun m!5054091 () Bool)

(assert (=> b!4394028 m!5054091))

(declare-fun m!5054093 () Bool)

(assert (=> b!4394028 m!5054093))

(assert (=> b!4394028 m!5054093))

(declare-fun m!5054095 () Bool)

(assert (=> b!4394028 m!5054095))

(declare-fun m!5054097 () Bool)

(assert (=> b!4394022 m!5054097))

(declare-fun m!5054099 () Bool)

(assert (=> b!4394022 m!5054099))

(declare-fun m!5054101 () Bool)

(assert (=> b!4394022 m!5054101))

(declare-fun m!5054103 () Bool)

(assert (=> b!4394022 m!5054103))

(declare-fun m!5054105 () Bool)

(assert (=> b!4394022 m!5054105))

(assert (=> b!4394022 m!5054101))

(declare-fun m!5054107 () Bool)

(assert (=> d!1323682 m!5054107))

(assert (=> d!1323682 m!5053939))

(declare-fun m!5054109 () Bool)

(assert (=> b!4394026 m!5054109))

(assert (=> b!4394027 m!5054101))

(assert (=> b!4394027 m!5054101))

(declare-fun m!5054111 () Bool)

(assert (=> b!4394027 m!5054111))

(declare-fun m!5054113 () Bool)

(assert (=> b!4394021 m!5054113))

(assert (=> b!4394021 m!5053925))

(assert (=> b!4393642 d!1323682))

(declare-fun d!1323700 () Bool)

(declare-fun lt!1601364 () Bool)

(assert (=> d!1323700 (= lt!1601364 (select (content!7842 e!2735588) key!3918))))

(declare-fun e!2735830 () Bool)

(assert (=> d!1323700 (= lt!1601364 e!2735830)))

(declare-fun res!1811367 () Bool)

(assert (=> d!1323700 (=> (not res!1811367) (not e!2735830))))

(assert (=> d!1323700 (= res!1811367 ((_ is Cons!49213) e!2735588))))

(assert (=> d!1323700 (= (contains!11577 e!2735588 key!3918) lt!1601364)))

(declare-fun b!4394034 () Bool)

(declare-fun e!2735829 () Bool)

(assert (=> b!4394034 (= e!2735830 e!2735829)))

(declare-fun res!1811368 () Bool)

(assert (=> b!4394034 (=> res!1811368 e!2735829)))

(assert (=> b!4394034 (= res!1811368 (= (h!54822 e!2735588) key!3918))))

(declare-fun b!4394035 () Bool)

(assert (=> b!4394035 (= e!2735829 (contains!11577 (t!356271 e!2735588) key!3918))))

(assert (= (and d!1323700 res!1811367) b!4394034))

(assert (= (and b!4394034 (not res!1811368)) b!4394035))

(declare-fun m!5054115 () Bool)

(assert (=> d!1323700 m!5054115))

(declare-fun m!5054117 () Bool)

(assert (=> d!1323700 m!5054117))

(declare-fun m!5054119 () Bool)

(assert (=> b!4394035 m!5054119))

(assert (=> bm!305854 d!1323700))

(declare-fun d!1323702 () Bool)

(declare-fun res!1811369 () Bool)

(declare-fun e!2735831 () Bool)

(assert (=> d!1323702 (=> res!1811369 e!2735831)))

(assert (=> d!1323702 (= res!1811369 (not ((_ is Cons!49210) (_2!27682 lt!1601057))))))

(assert (=> d!1323702 (= (noDuplicateKeys!601 (_2!27682 lt!1601057)) e!2735831)))

(declare-fun b!4394036 () Bool)

(declare-fun e!2735832 () Bool)

(assert (=> b!4394036 (= e!2735831 e!2735832)))

(declare-fun res!1811370 () Bool)

(assert (=> b!4394036 (=> (not res!1811370) (not e!2735832))))

(assert (=> b!4394036 (= res!1811370 (not (containsKey!880 (t!356268 (_2!27682 lt!1601057)) (_1!27681 (h!54817 (_2!27682 lt!1601057))))))))

(declare-fun b!4394037 () Bool)

(assert (=> b!4394037 (= e!2735832 (noDuplicateKeys!601 (t!356268 (_2!27682 lt!1601057))))))

(assert (= (and d!1323702 (not res!1811369)) b!4394036))

(assert (= (and b!4394036 res!1811370) b!4394037))

(declare-fun m!5054121 () Bool)

(assert (=> b!4394036 m!5054121))

(declare-fun m!5054123 () Bool)

(assert (=> b!4394037 m!5054123))

(assert (=> bs!726166 d!1323702))

(declare-fun d!1323704 () Bool)

(declare-fun res!1811371 () Bool)

(declare-fun e!2735833 () Bool)

(assert (=> d!1323704 (=> res!1811371 e!2735833)))

(assert (=> d!1323704 (= res!1811371 ((_ is Nil!49211) (t!356269 (toList!3185 lt!1601054))))))

(assert (=> d!1323704 (= (forall!9309 (t!356269 (toList!3185 lt!1601054)) lambda!147375) e!2735833)))

(declare-fun b!4394038 () Bool)

(declare-fun e!2735834 () Bool)

(assert (=> b!4394038 (= e!2735833 e!2735834)))

(declare-fun res!1811372 () Bool)

(assert (=> b!4394038 (=> (not res!1811372) (not e!2735834))))

(assert (=> b!4394038 (= res!1811372 (dynLambda!20733 lambda!147375 (h!54818 (t!356269 (toList!3185 lt!1601054)))))))

(declare-fun b!4394039 () Bool)

(assert (=> b!4394039 (= e!2735834 (forall!9309 (t!356269 (t!356269 (toList!3185 lt!1601054))) lambda!147375))))

(assert (= (and d!1323704 (not res!1811371)) b!4394038))

(assert (= (and b!4394038 res!1811372) b!4394039))

(declare-fun b_lambda!138947 () Bool)

(assert (=> (not b_lambda!138947) (not b!4394038)))

(declare-fun m!5054125 () Bool)

(assert (=> b!4394038 m!5054125))

(declare-fun m!5054127 () Bool)

(assert (=> b!4394039 m!5054127))

(assert (=> b!4393494 d!1323704))

(assert (=> b!4393638 d!1323594))

(assert (=> b!4393638 d!1323600))

(declare-fun d!1323706 () Bool)

(declare-fun res!1811373 () Bool)

(declare-fun e!2735835 () Bool)

(assert (=> d!1323706 (=> res!1811373 e!2735835)))

(assert (=> d!1323706 (= res!1811373 ((_ is Nil!49211) (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (=> d!1323706 (= (forall!9309 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200))) lambda!147375) e!2735835)))

(declare-fun b!4394040 () Bool)

(declare-fun e!2735836 () Bool)

(assert (=> b!4394040 (= e!2735835 e!2735836)))

(declare-fun res!1811374 () Bool)

(assert (=> b!4394040 (=> (not res!1811374) (not e!2735836))))

(assert (=> b!4394040 (= res!1811374 (dynLambda!20733 lambda!147375 (h!54818 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200))))))))

(declare-fun b!4394041 () Bool)

(assert (=> b!4394041 (= e!2735836 (forall!9309 (t!356269 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200)))) lambda!147375))))

(assert (= (and d!1323706 (not res!1811373)) b!4394040))

(assert (= (and b!4394040 res!1811374) b!4394041))

(declare-fun b_lambda!138949 () Bool)

(assert (=> (not b_lambda!138949) (not b!4394040)))

(declare-fun m!5054129 () Bool)

(assert (=> b!4394040 m!5054129))

(declare-fun m!5054131 () Bool)

(assert (=> b!4394041 m!5054131))

(assert (=> d!1323486 d!1323706))

(assert (=> d!1323486 d!1323480))

(declare-fun d!1323708 () Bool)

(assert (=> d!1323708 (forall!9309 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200))) lambda!147375)))

(assert (=> d!1323708 true))

(declare-fun _$31!292 () Unit!78151)

(assert (=> d!1323708 (= (choose!27434 lm!1707 lambda!147375 hash!377 newBucket!200) _$31!292)))

(declare-fun bs!726214 () Bool)

(assert (= bs!726214 d!1323708))

(assert (=> bs!726214 m!5053517))

(assert (=> bs!726214 m!5053669))

(assert (=> d!1323486 d!1323708))

(assert (=> d!1323486 d!1323500))

(assert (=> b!4393639 d!1323620))

(assert (=> b!4393639 d!1323624))

(declare-fun d!1323710 () Bool)

(declare-fun lt!1601365 () Bool)

(assert (=> d!1323710 (= lt!1601365 (select (content!7840 (t!356269 (toList!3185 lm!1707))) lt!1601057))))

(declare-fun e!2735838 () Bool)

(assert (=> d!1323710 (= lt!1601365 e!2735838)))

(declare-fun res!1811376 () Bool)

(assert (=> d!1323710 (=> (not res!1811376) (not e!2735838))))

(assert (=> d!1323710 (= res!1811376 ((_ is Cons!49211) (t!356269 (toList!3185 lm!1707))))))

(assert (=> d!1323710 (= (contains!11575 (t!356269 (toList!3185 lm!1707)) lt!1601057) lt!1601365)))

(declare-fun b!4394043 () Bool)

(declare-fun e!2735837 () Bool)

(assert (=> b!4394043 (= e!2735838 e!2735837)))

(declare-fun res!1811375 () Bool)

(assert (=> b!4394043 (=> res!1811375 e!2735837)))

(assert (=> b!4394043 (= res!1811375 (= (h!54818 (t!356269 (toList!3185 lm!1707))) lt!1601057))))

(declare-fun b!4394044 () Bool)

(assert (=> b!4394044 (= e!2735837 (contains!11575 (t!356269 (t!356269 (toList!3185 lm!1707))) lt!1601057))))

(assert (= (and d!1323710 res!1811376) b!4394043))

(assert (= (and b!4394043 (not res!1811375)) b!4394044))

(declare-fun m!5054133 () Bool)

(assert (=> d!1323710 m!5054133))

(declare-fun m!5054135 () Bool)

(assert (=> d!1323710 m!5054135))

(declare-fun m!5054137 () Bool)

(assert (=> b!4394044 m!5054137))

(assert (=> b!4393615 d!1323710))

(declare-fun b!4394047 () Bool)

(declare-fun e!2735840 () List!49334)

(assert (=> b!4394047 (= e!2735840 (Cons!49210 (h!54817 (t!356268 lt!1601058)) (removePairForKey!569 (t!356268 (t!356268 lt!1601058)) key!3918)))))

(declare-fun b!4394046 () Bool)

(declare-fun e!2735839 () List!49334)

(assert (=> b!4394046 (= e!2735839 e!2735840)))

(declare-fun c!748029 () Bool)

(assert (=> b!4394046 (= c!748029 ((_ is Cons!49210) (t!356268 lt!1601058)))))

(declare-fun d!1323712 () Bool)

(declare-fun lt!1601366 () List!49334)

(assert (=> d!1323712 (not (containsKey!880 lt!1601366 key!3918))))

(assert (=> d!1323712 (= lt!1601366 e!2735839)))

(declare-fun c!748028 () Bool)

(assert (=> d!1323712 (= c!748028 (and ((_ is Cons!49210) (t!356268 lt!1601058)) (= (_1!27681 (h!54817 (t!356268 lt!1601058))) key!3918)))))

(assert (=> d!1323712 (noDuplicateKeys!601 (t!356268 lt!1601058))))

(assert (=> d!1323712 (= (removePairForKey!569 (t!356268 lt!1601058) key!3918) lt!1601366)))

(declare-fun b!4394045 () Bool)

(assert (=> b!4394045 (= e!2735839 (t!356268 (t!356268 lt!1601058)))))

(declare-fun b!4394048 () Bool)

(assert (=> b!4394048 (= e!2735840 Nil!49210)))

(assert (= (and d!1323712 c!748028) b!4394045))

(assert (= (and d!1323712 (not c!748028)) b!4394046))

(assert (= (and b!4394046 c!748029) b!4394047))

(assert (= (and b!4394046 (not c!748029)) b!4394048))

(declare-fun m!5054139 () Bool)

(assert (=> b!4394047 m!5054139))

(declare-fun m!5054141 () Bool)

(assert (=> d!1323712 m!5054141))

(declare-fun m!5054143 () Bool)

(assert (=> d!1323712 m!5054143))

(assert (=> b!4393605 d!1323712))

(declare-fun d!1323714 () Bool)

(declare-fun isEmpty!28259 (Option!10579) Bool)

(assert (=> d!1323714 (= (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) hash!377)) (not (isEmpty!28259 (getValueByKey!565 (toList!3185 lm!1707) hash!377))))))

(declare-fun bs!726215 () Bool)

(assert (= bs!726215 d!1323714))

(assert (=> bs!726215 m!5053685))

(declare-fun m!5054145 () Bool)

(assert (=> bs!726215 m!5054145))

(assert (=> b!4393656 d!1323714))

(declare-fun b!4394051 () Bool)

(declare-fun e!2735842 () Option!10579)

(assert (=> b!4394051 (= e!2735842 (getValueByKey!565 (t!356269 (toList!3185 lm!1707)) hash!377))))

(declare-fun b!4394050 () Bool)

(declare-fun e!2735841 () Option!10579)

(assert (=> b!4394050 (= e!2735841 e!2735842)))

(declare-fun c!748031 () Bool)

(assert (=> b!4394050 (= c!748031 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (not (= (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377))))))

(declare-fun d!1323716 () Bool)

(declare-fun c!748030 () Bool)

(assert (=> d!1323716 (= c!748030 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377)))))

(assert (=> d!1323716 (= (getValueByKey!565 (toList!3185 lm!1707) hash!377) e!2735841)))

(declare-fun b!4394052 () Bool)

(assert (=> b!4394052 (= e!2735842 None!10578)))

(declare-fun b!4394049 () Bool)

(assert (=> b!4394049 (= e!2735841 (Some!10578 (_2!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (= (and d!1323716 c!748030) b!4394049))

(assert (= (and d!1323716 (not c!748030)) b!4394050))

(assert (= (and b!4394050 c!748031) b!4394051))

(assert (= (and b!4394050 (not c!748031)) b!4394052))

(declare-fun m!5054147 () Bool)

(assert (=> b!4394051 m!5054147))

(assert (=> b!4393656 d!1323716))

(declare-fun d!1323718 () Bool)

(declare-fun res!1811377 () Bool)

(declare-fun e!2735843 () Bool)

(assert (=> d!1323718 (=> res!1811377 e!2735843)))

(assert (=> d!1323718 (= res!1811377 (not ((_ is Cons!49210) (_2!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (=> d!1323718 (= (noDuplicateKeys!601 (_2!27682 (tuple2!48777 hash!377 newBucket!200))) e!2735843)))

(declare-fun b!4394053 () Bool)

(declare-fun e!2735844 () Bool)

(assert (=> b!4394053 (= e!2735843 e!2735844)))

(declare-fun res!1811378 () Bool)

(assert (=> b!4394053 (=> (not res!1811378) (not e!2735844))))

(assert (=> b!4394053 (= res!1811378 (not (containsKey!880 (t!356268 (_2!27682 (tuple2!48777 hash!377 newBucket!200))) (_1!27681 (h!54817 (_2!27682 (tuple2!48777 hash!377 newBucket!200)))))))))

(declare-fun b!4394054 () Bool)

(assert (=> b!4394054 (= e!2735844 (noDuplicateKeys!601 (t!356268 (_2!27682 (tuple2!48777 hash!377 newBucket!200)))))))

(assert (= (and d!1323718 (not res!1811377)) b!4394053))

(assert (= (and b!4394053 res!1811378) b!4394054))

(declare-fun m!5054149 () Bool)

(assert (=> b!4394053 m!5054149))

(declare-fun m!5054151 () Bool)

(assert (=> b!4394054 m!5054151))

(assert (=> bs!726165 d!1323718))

(declare-fun d!1323720 () Bool)

(assert (=> d!1323720 (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) hash!377))))

(declare-fun lt!1601369 () Unit!78151)

(declare-fun choose!27447 (List!49335 (_ BitVec 64)) Unit!78151)

(assert (=> d!1323720 (= lt!1601369 (choose!27447 (toList!3185 lm!1707) hash!377))))

(declare-fun e!2735847 () Bool)

(assert (=> d!1323720 e!2735847))

(declare-fun res!1811381 () Bool)

(assert (=> d!1323720 (=> (not res!1811381) (not e!2735847))))

(assert (=> d!1323720 (= res!1811381 (isStrictlySorted!160 (toList!3185 lm!1707)))))

(assert (=> d!1323720 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!3185 lm!1707) hash!377) lt!1601369)))

(declare-fun b!4394057 () Bool)

(assert (=> b!4394057 (= e!2735847 (containsKey!879 (toList!3185 lm!1707) hash!377))))

(assert (= (and d!1323720 res!1811381) b!4394057))

(assert (=> d!1323720 m!5053685))

(assert (=> d!1323720 m!5053685))

(assert (=> d!1323720 m!5053753))

(declare-fun m!5054153 () Bool)

(assert (=> d!1323720 m!5054153))

(assert (=> d!1323720 m!5053717))

(assert (=> b!4394057 m!5053749))

(assert (=> b!4393654 d!1323720))

(assert (=> b!4393654 d!1323714))

(assert (=> b!4393654 d!1323716))

(assert (=> b!4393618 d!1323716))

(declare-fun d!1323722 () Bool)

(declare-fun res!1811386 () Bool)

(declare-fun e!2735852 () Bool)

(assert (=> d!1323722 (=> res!1811386 e!2735852)))

(assert (=> d!1323722 (= res!1811386 (and ((_ is Cons!49210) lt!1601158) (= (_1!27681 (h!54817 lt!1601158)) key!3918)))))

(assert (=> d!1323722 (= (containsKey!880 lt!1601158 key!3918) e!2735852)))

(declare-fun b!4394062 () Bool)

(declare-fun e!2735853 () Bool)

(assert (=> b!4394062 (= e!2735852 e!2735853)))

(declare-fun res!1811387 () Bool)

(assert (=> b!4394062 (=> (not res!1811387) (not e!2735853))))

(assert (=> b!4394062 (= res!1811387 ((_ is Cons!49210) lt!1601158))))

(declare-fun b!4394063 () Bool)

(assert (=> b!4394063 (= e!2735853 (containsKey!880 (t!356268 lt!1601158) key!3918))))

(assert (= (and d!1323722 (not res!1811386)) b!4394062))

(assert (= (and b!4394062 res!1811387) b!4394063))

(declare-fun m!5054155 () Bool)

(assert (=> b!4394063 m!5054155))

(assert (=> d!1323508 d!1323722))

(declare-fun d!1323724 () Bool)

(declare-fun res!1811388 () Bool)

(declare-fun e!2735854 () Bool)

(assert (=> d!1323724 (=> res!1811388 e!2735854)))

(assert (=> d!1323724 (= res!1811388 (not ((_ is Cons!49210) lt!1601058)))))

(assert (=> d!1323724 (= (noDuplicateKeys!601 lt!1601058) e!2735854)))

(declare-fun b!4394064 () Bool)

(declare-fun e!2735855 () Bool)

(assert (=> b!4394064 (= e!2735854 e!2735855)))

(declare-fun res!1811389 () Bool)

(assert (=> b!4394064 (=> (not res!1811389) (not e!2735855))))

(assert (=> b!4394064 (= res!1811389 (not (containsKey!880 (t!356268 lt!1601058) (_1!27681 (h!54817 lt!1601058)))))))

(declare-fun b!4394065 () Bool)

(assert (=> b!4394065 (= e!2735855 (noDuplicateKeys!601 (t!356268 lt!1601058)))))

(assert (= (and d!1323724 (not res!1811388)) b!4394064))

(assert (= (and b!4394064 res!1811389) b!4394065))

(declare-fun m!5054157 () Bool)

(assert (=> b!4394064 m!5054157))

(assert (=> b!4394065 m!5054143))

(assert (=> d!1323508 d!1323724))

(declare-fun d!1323726 () Bool)

(declare-fun choose!27448 (Hashable!4993 K!10570) (_ BitVec 64))

(assert (=> d!1323726 (= (hash!1800 hashF!1247 key!3918) (choose!27448 hashF!1247 key!3918))))

(declare-fun bs!726216 () Bool)

(assert (= bs!726216 d!1323726))

(declare-fun m!5054159 () Bool)

(assert (=> bs!726216 m!5054159))

(assert (=> d!1323536 d!1323726))

(declare-fun d!1323728 () Bool)

(assert (=> d!1323728 (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-fun lt!1601370 () Unit!78151)

(assert (=> d!1323728 (= lt!1601370 (choose!27447 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-fun e!2735856 () Bool)

(assert (=> d!1323728 e!2735856))

(declare-fun res!1811390 () Bool)

(assert (=> d!1323728 (=> (not res!1811390) (not e!2735856))))

(assert (=> d!1323728 (= res!1811390 (isStrictlySorted!160 (toList!3185 lm!1707)))))

(assert (=> d!1323728 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!476 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))) lt!1601370)))

(declare-fun b!4394066 () Bool)

(assert (=> b!4394066 (= e!2735856 (containsKey!879 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (= (and d!1323728 res!1811390) b!4394066))

(assert (=> d!1323728 m!5053605))

(assert (=> d!1323728 m!5053605))

(assert (=> d!1323728 m!5053607))

(declare-fun m!5054161 () Bool)

(assert (=> d!1323728 m!5054161))

(assert (=> d!1323728 m!5053717))

(assert (=> b!4394066 m!5053601))

(assert (=> b!4393528 d!1323728))

(declare-fun d!1323730 () Bool)

(assert (=> d!1323730 (= (isDefined!7873 (getValueByKey!565 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707))))) (not (isEmpty!28259 (getValueByKey!565 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))))

(declare-fun bs!726217 () Bool)

(assert (= bs!726217 d!1323730))

(assert (=> bs!726217 m!5053605))

(declare-fun m!5054163 () Bool)

(assert (=> bs!726217 m!5054163))

(assert (=> b!4393528 d!1323730))

(declare-fun b!4394069 () Bool)

(declare-fun e!2735858 () Option!10579)

(assert (=> b!4394069 (= e!2735858 (getValueByKey!565 (t!356269 (toList!3185 lm!1707)) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(declare-fun b!4394068 () Bool)

(declare-fun e!2735857 () Option!10579)

(assert (=> b!4394068 (= e!2735857 e!2735858)))

(declare-fun c!748033 () Bool)

(assert (=> b!4394068 (= c!748033 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (not (= (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))))

(declare-fun d!1323732 () Bool)

(declare-fun c!748032 () Bool)

(assert (=> d!1323732 (= c!748032 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (=> d!1323732 (= (getValueByKey!565 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))) e!2735857)))

(declare-fun b!4394070 () Bool)

(assert (=> b!4394070 (= e!2735858 None!10578)))

(declare-fun b!4394067 () Bool)

(assert (=> b!4394067 (= e!2735857 (Some!10578 (_2!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (= (and d!1323732 c!748032) b!4394067))

(assert (= (and d!1323732 (not c!748032)) b!4394068))

(assert (= (and b!4394068 c!748033) b!4394069))

(assert (= (and b!4394068 (not c!748033)) b!4394070))

(declare-fun m!5054165 () Bool)

(assert (=> b!4394069 m!5054165))

(assert (=> b!4393528 d!1323732))

(declare-fun d!1323734 () Bool)

(declare-fun c!748036 () Bool)

(assert (=> d!1323734 (= c!748036 ((_ is Nil!49211) (toList!3185 lm!1707)))))

(declare-fun e!2735861 () (InoxSet tuple2!48776))

(assert (=> d!1323734 (= (content!7840 (toList!3185 lm!1707)) e!2735861)))

(declare-fun b!4394075 () Bool)

(assert (=> b!4394075 (= e!2735861 ((as const (Array tuple2!48776 Bool)) false))))

(declare-fun b!4394076 () Bool)

(assert (=> b!4394076 (= e!2735861 ((_ map or) (store ((as const (Array tuple2!48776 Bool)) false) (h!54818 (toList!3185 lm!1707)) true) (content!7840 (t!356269 (toList!3185 lm!1707)))))))

(assert (= (and d!1323734 c!748036) b!4394075))

(assert (= (and d!1323734 (not c!748036)) b!4394076))

(declare-fun m!5054167 () Bool)

(assert (=> b!4394076 m!5054167))

(assert (=> b!4394076 m!5054133))

(assert (=> d!1323520 d!1323734))

(declare-fun d!1323736 () Bool)

(declare-fun res!1811391 () Bool)

(declare-fun e!2735862 () Bool)

(assert (=> d!1323736 (=> res!1811391 e!2735862)))

(assert (=> d!1323736 (= res!1811391 ((_ is Nil!49211) (t!356269 (toList!3185 lm!1707))))))

(assert (=> d!1323736 (= (forall!9309 (t!356269 (toList!3185 lm!1707)) lambda!147375) e!2735862)))

(declare-fun b!4394077 () Bool)

(declare-fun e!2735863 () Bool)

(assert (=> b!4394077 (= e!2735862 e!2735863)))

(declare-fun res!1811392 () Bool)

(assert (=> b!4394077 (=> (not res!1811392) (not e!2735863))))

(assert (=> b!4394077 (= res!1811392 (dynLambda!20733 lambda!147375 (h!54818 (t!356269 (toList!3185 lm!1707)))))))

(declare-fun b!4394078 () Bool)

(assert (=> b!4394078 (= e!2735863 (forall!9309 (t!356269 (t!356269 (toList!3185 lm!1707))) lambda!147375))))

(assert (= (and d!1323736 (not res!1811391)) b!4394077))

(assert (= (and b!4394077 res!1811392) b!4394078))

(declare-fun b_lambda!138951 () Bool)

(assert (=> (not b_lambda!138951) (not b!4394077)))

(declare-fun m!5054169 () Bool)

(assert (=> b!4394077 m!5054169))

(declare-fun m!5054171 () Bool)

(assert (=> b!4394078 m!5054171))

(assert (=> b!4393582 d!1323736))

(assert (=> b!4393530 d!1323730))

(assert (=> b!4393530 d!1323732))

(declare-fun d!1323738 () Bool)

(assert (=> d!1323738 (= (get!16012 (getValueByKey!565 (toList!3185 lm!1707) hash!377)) (v!43620 (getValueByKey!565 (toList!3185 lm!1707) hash!377)))))

(assert (=> d!1323502 d!1323738))

(assert (=> d!1323502 d!1323716))

(declare-fun d!1323740 () Bool)

(declare-fun res!1811393 () Bool)

(declare-fun e!2735864 () Bool)

(assert (=> d!1323740 (=> res!1811393 e!2735864)))

(assert (=> d!1323740 (= res!1811393 (and ((_ is Cons!49210) (t!356268 newBucket!200)) (= (_1!27681 (h!54817 (t!356268 newBucket!200))) (_1!27681 (h!54817 newBucket!200)))))))

(assert (=> d!1323740 (= (containsKey!880 (t!356268 newBucket!200) (_1!27681 (h!54817 newBucket!200))) e!2735864)))

(declare-fun b!4394079 () Bool)

(declare-fun e!2735865 () Bool)

(assert (=> b!4394079 (= e!2735864 e!2735865)))

(declare-fun res!1811394 () Bool)

(assert (=> b!4394079 (=> (not res!1811394) (not e!2735865))))

(assert (=> b!4394079 (= res!1811394 ((_ is Cons!49210) (t!356268 newBucket!200)))))

(declare-fun b!4394080 () Bool)

(assert (=> b!4394080 (= e!2735865 (containsKey!880 (t!356268 (t!356268 newBucket!200)) (_1!27681 (h!54817 newBucket!200))))))

(assert (= (and d!1323740 (not res!1811393)) b!4394079))

(assert (= (and b!4394079 res!1811394) b!4394080))

(declare-fun m!5054173 () Bool)

(assert (=> b!4394080 m!5054173))

(assert (=> b!4393661 d!1323740))

(declare-fun lt!1601371 () Bool)

(declare-fun d!1323742 () Bool)

(assert (=> d!1323742 (= lt!1601371 (select (content!7840 (toList!3185 lm!1707)) (tuple2!48777 hash!377 lt!1601058)))))

(declare-fun e!2735867 () Bool)

(assert (=> d!1323742 (= lt!1601371 e!2735867)))

(declare-fun res!1811396 () Bool)

(assert (=> d!1323742 (=> (not res!1811396) (not e!2735867))))

(assert (=> d!1323742 (= res!1811396 ((_ is Cons!49211) (toList!3185 lm!1707)))))

(assert (=> d!1323742 (= (contains!11575 (toList!3185 lm!1707) (tuple2!48777 hash!377 lt!1601058)) lt!1601371)))

(declare-fun b!4394081 () Bool)

(declare-fun e!2735866 () Bool)

(assert (=> b!4394081 (= e!2735867 e!2735866)))

(declare-fun res!1811395 () Bool)

(assert (=> b!4394081 (=> res!1811395 e!2735866)))

(assert (=> b!4394081 (= res!1811395 (= (h!54818 (toList!3185 lm!1707)) (tuple2!48777 hash!377 lt!1601058)))))

(declare-fun b!4394082 () Bool)

(assert (=> b!4394082 (= e!2735866 (contains!11575 (t!356269 (toList!3185 lm!1707)) (tuple2!48777 hash!377 lt!1601058)))))

(assert (= (and d!1323742 res!1811396) b!4394081))

(assert (= (and b!4394081 (not res!1811395)) b!4394082))

(assert (=> d!1323742 m!5053707))

(declare-fun m!5054175 () Bool)

(assert (=> d!1323742 m!5054175))

(declare-fun m!5054177 () Bool)

(assert (=> b!4394082 m!5054177))

(assert (=> d!1323522 d!1323742))

(declare-fun d!1323744 () Bool)

(assert (=> d!1323744 (contains!11575 (toList!3185 lm!1707) (tuple2!48777 hash!377 lt!1601058))))

(assert (=> d!1323744 true))

(declare-fun _$14!860 () Unit!78151)

(assert (=> d!1323744 (= (choose!27436 (toList!3185 lm!1707) hash!377 lt!1601058) _$14!860)))

(declare-fun bs!726218 () Bool)

(assert (= bs!726218 d!1323744))

(assert (=> bs!726218 m!5053713))

(assert (=> d!1323522 d!1323744))

(assert (=> d!1323522 d!1323590))

(declare-fun bs!726219 () Bool)

(declare-fun b!4394093 () Bool)

(assert (= bs!726219 (and b!4394093 d!1323538)))

(declare-fun lambda!147491 () Int)

(assert (=> bs!726219 (not (= lambda!147491 lambda!147393))))

(assert (=> b!4394093 true))

(declare-fun bs!726220 () Bool)

(declare-fun b!4394094 () Bool)

(assert (= bs!726220 (and b!4394094 d!1323538)))

(declare-fun lambda!147492 () Int)

(assert (=> bs!726220 (not (= lambda!147492 lambda!147393))))

(declare-fun bs!726221 () Bool)

(assert (= bs!726221 (and b!4394094 b!4394093)))

(assert (=> bs!726221 (= lambda!147492 lambda!147491)))

(assert (=> b!4394094 true))

(declare-fun lambda!147493 () Int)

(assert (=> bs!726220 (not (= lambda!147493 lambda!147393))))

(declare-fun lt!1601434 () ListMap!2429)

(assert (=> bs!726221 (= (= lt!1601434 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) (= lambda!147493 lambda!147491))))

(assert (=> b!4394094 (= (= lt!1601434 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) (= lambda!147493 lambda!147492))))

(assert (=> b!4394094 true))

(declare-fun bs!726222 () Bool)

(declare-fun d!1323746 () Bool)

(assert (= bs!726222 (and d!1323746 d!1323538)))

(declare-fun lambda!147494 () Int)

(assert (=> bs!726222 (not (= lambda!147494 lambda!147393))))

(declare-fun bs!726223 () Bool)

(assert (= bs!726223 (and d!1323746 b!4394093)))

(declare-fun lt!1601416 () ListMap!2429)

(assert (=> bs!726223 (= (= lt!1601416 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) (= lambda!147494 lambda!147491))))

(declare-fun bs!726224 () Bool)

(assert (= bs!726224 (and d!1323746 b!4394094)))

(assert (=> bs!726224 (= (= lt!1601416 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) (= lambda!147494 lambda!147492))))

(assert (=> bs!726224 (= (= lt!1601416 lt!1601434) (= lambda!147494 lambda!147493))))

(assert (=> d!1323746 true))

(declare-fun c!748039 () Bool)

(declare-fun bm!305888 () Bool)

(declare-fun call!305895 () Bool)

(assert (=> bm!305888 (= call!305895 (forall!9311 (toList!3186 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) (ite c!748039 lambda!147491 lambda!147493)))))

(declare-fun call!305894 () Bool)

(declare-fun bm!305889 () Bool)

(assert (=> bm!305889 (= call!305894 (forall!9311 (ite c!748039 (toList!3186 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) (_2!27682 (h!54818 (toList!3185 lm!1707)))) (ite c!748039 lambda!147491 lambda!147493)))))

(declare-fun e!2735875 () ListMap!2429)

(assert (=> b!4394093 (= e!2735875 (extractMap!660 (t!356269 (toList!3185 lm!1707))))))

(declare-fun lt!1601426 () Unit!78151)

(declare-fun call!305893 () Unit!78151)

(assert (=> b!4394093 (= lt!1601426 call!305893)))

(assert (=> b!4394093 call!305895))

(declare-fun lt!1601420 () Unit!78151)

(assert (=> b!4394093 (= lt!1601420 lt!1601426)))

(assert (=> b!4394093 call!305894))

(declare-fun lt!1601427 () Unit!78151)

(declare-fun Unit!78182 () Unit!78151)

(assert (=> b!4394093 (= lt!1601427 Unit!78182)))

(assert (=> b!4394094 (= e!2735875 lt!1601434)))

(declare-fun lt!1601421 () ListMap!2429)

(declare-fun +!830 (ListMap!2429 tuple2!48774) ListMap!2429)

(assert (=> b!4394094 (= lt!1601421 (+!830 (extractMap!660 (t!356269 (toList!3185 lm!1707))) (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (=> b!4394094 (= lt!1601434 (addToMapMapFromBucket!278 (t!356268 (_2!27682 (h!54818 (toList!3185 lm!1707)))) (+!830 (extractMap!660 (t!356269 (toList!3185 lm!1707))) (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707)))))))))

(declare-fun lt!1601431 () Unit!78151)

(assert (=> b!4394094 (= lt!1601431 call!305893)))

(assert (=> b!4394094 (forall!9311 (toList!3186 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) lambda!147492)))

(declare-fun lt!1601430 () Unit!78151)

(assert (=> b!4394094 (= lt!1601430 lt!1601431)))

(assert (=> b!4394094 (forall!9311 (toList!3186 lt!1601421) lambda!147493)))

(declare-fun lt!1601433 () Unit!78151)

(declare-fun Unit!78183 () Unit!78151)

(assert (=> b!4394094 (= lt!1601433 Unit!78183)))

(assert (=> b!4394094 (forall!9311 (t!356268 (_2!27682 (h!54818 (toList!3185 lm!1707)))) lambda!147493)))

(declare-fun lt!1601432 () Unit!78151)

(declare-fun Unit!78184 () Unit!78151)

(assert (=> b!4394094 (= lt!1601432 Unit!78184)))

(declare-fun lt!1601414 () Unit!78151)

(declare-fun Unit!78185 () Unit!78151)

(assert (=> b!4394094 (= lt!1601414 Unit!78185)))

(declare-fun lt!1601417 () Unit!78151)

(declare-fun forallContained!1951 (List!49334 Int tuple2!48774) Unit!78151)

(assert (=> b!4394094 (= lt!1601417 (forallContained!1951 (toList!3186 lt!1601421) lambda!147493 (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (=> b!4394094 (contains!11573 lt!1601421 (_1!27681 (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707))))))))

(declare-fun lt!1601418 () Unit!78151)

(declare-fun Unit!78186 () Unit!78151)

(assert (=> b!4394094 (= lt!1601418 Unit!78186)))

(assert (=> b!4394094 (contains!11573 lt!1601434 (_1!27681 (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707))))))))

(declare-fun lt!1601423 () Unit!78151)

(declare-fun Unit!78187 () Unit!78151)

(assert (=> b!4394094 (= lt!1601423 Unit!78187)))

(assert (=> b!4394094 (forall!9311 (_2!27682 (h!54818 (toList!3185 lm!1707))) lambda!147493)))

(declare-fun lt!1601428 () Unit!78151)

(declare-fun Unit!78188 () Unit!78151)

(assert (=> b!4394094 (= lt!1601428 Unit!78188)))

(assert (=> b!4394094 (forall!9311 (toList!3186 lt!1601421) lambda!147493)))

(declare-fun lt!1601425 () Unit!78151)

(declare-fun Unit!78189 () Unit!78151)

(assert (=> b!4394094 (= lt!1601425 Unit!78189)))

(declare-fun lt!1601429 () Unit!78151)

(declare-fun Unit!78190 () Unit!78151)

(assert (=> b!4394094 (= lt!1601429 Unit!78190)))

(declare-fun lt!1601422 () Unit!78151)

(declare-fun addForallContainsKeyThenBeforeAdding!115 (ListMap!2429 ListMap!2429 K!10570 V!10816) Unit!78151)

(assert (=> b!4394094 (= lt!1601422 (addForallContainsKeyThenBeforeAdding!115 (extractMap!660 (t!356269 (toList!3185 lm!1707))) lt!1601434 (_1!27681 (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707))))) (_2!27681 (h!54817 (_2!27682 (h!54818 (toList!3185 lm!1707)))))))))

(assert (=> b!4394094 (forall!9311 (toList!3186 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) lambda!147493)))

(declare-fun lt!1601419 () Unit!78151)

(assert (=> b!4394094 (= lt!1601419 lt!1601422)))

(assert (=> b!4394094 call!305895))

(declare-fun lt!1601424 () Unit!78151)

(declare-fun Unit!78191 () Unit!78151)

(assert (=> b!4394094 (= lt!1601424 Unit!78191)))

(declare-fun res!1811405 () Bool)

(assert (=> b!4394094 (= res!1811405 call!305894)))

(declare-fun e!2735876 () Bool)

(assert (=> b!4394094 (=> (not res!1811405) (not e!2735876))))

(assert (=> b!4394094 e!2735876))

(declare-fun lt!1601415 () Unit!78151)

(declare-fun Unit!78192 () Unit!78151)

(assert (=> b!4394094 (= lt!1601415 Unit!78192)))

(declare-fun b!4394095 () Bool)

(declare-fun res!1811404 () Bool)

(declare-fun e!2735874 () Bool)

(assert (=> b!4394095 (=> (not res!1811404) (not e!2735874))))

(assert (=> b!4394095 (= res!1811404 (forall!9311 (toList!3186 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) lambda!147494))))

(declare-fun bm!305890 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!115 (ListMap!2429) Unit!78151)

(assert (=> bm!305890 (= call!305893 (lemmaContainsAllItsOwnKeys!115 (extractMap!660 (t!356269 (toList!3185 lm!1707)))))))

(declare-fun b!4394096 () Bool)

(assert (=> b!4394096 (= e!2735876 (forall!9311 (toList!3186 (extractMap!660 (t!356269 (toList!3185 lm!1707)))) lambda!147493))))

(assert (=> d!1323746 e!2735874))

(declare-fun res!1811403 () Bool)

(assert (=> d!1323746 (=> (not res!1811403) (not e!2735874))))

(assert (=> d!1323746 (= res!1811403 (forall!9311 (_2!27682 (h!54818 (toList!3185 lm!1707))) lambda!147494))))

(assert (=> d!1323746 (= lt!1601416 e!2735875)))

(assert (=> d!1323746 (= c!748039 ((_ is Nil!49210) (_2!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (=> d!1323746 (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 lm!1707))))))

(assert (=> d!1323746 (= (addToMapMapFromBucket!278 (_2!27682 (h!54818 (toList!3185 lm!1707))) (extractMap!660 (t!356269 (toList!3185 lm!1707)))) lt!1601416)))

(declare-fun b!4394097 () Bool)

(assert (=> b!4394097 (= e!2735874 (invariantList!733 (toList!3186 lt!1601416)))))

(assert (= (and d!1323746 c!748039) b!4394093))

(assert (= (and d!1323746 (not c!748039)) b!4394094))

(assert (= (and b!4394094 res!1811405) b!4394096))

(assert (= (or b!4394093 b!4394094) bm!305890))

(assert (= (or b!4394093 b!4394094) bm!305888))

(assert (= (or b!4394093 b!4394094) bm!305889))

(assert (= (and d!1323746 res!1811403) b!4394095))

(assert (= (and b!4394095 res!1811404) b!4394097))

(assert (=> bm!305890 m!5053743))

(declare-fun m!5054179 () Bool)

(assert (=> bm!305890 m!5054179))

(declare-fun m!5054181 () Bool)

(assert (=> d!1323746 m!5054181))

(assert (=> d!1323746 m!5053767))

(declare-fun m!5054183 () Bool)

(assert (=> b!4394096 m!5054183))

(declare-fun m!5054185 () Bool)

(assert (=> bm!305888 m!5054185))

(declare-fun m!5054187 () Bool)

(assert (=> b!4394095 m!5054187))

(declare-fun m!5054189 () Bool)

(assert (=> bm!305889 m!5054189))

(assert (=> b!4394094 m!5053743))

(declare-fun m!5054191 () Bool)

(assert (=> b!4394094 m!5054191))

(declare-fun m!5054193 () Bool)

(assert (=> b!4394094 m!5054193))

(assert (=> b!4394094 m!5053743))

(declare-fun m!5054195 () Bool)

(assert (=> b!4394094 m!5054195))

(assert (=> b!4394094 m!5054191))

(declare-fun m!5054197 () Bool)

(assert (=> b!4394094 m!5054197))

(declare-fun m!5054199 () Bool)

(assert (=> b!4394094 m!5054199))

(declare-fun m!5054201 () Bool)

(assert (=> b!4394094 m!5054201))

(declare-fun m!5054203 () Bool)

(assert (=> b!4394094 m!5054203))

(declare-fun m!5054205 () Bool)

(assert (=> b!4394094 m!5054205))

(declare-fun m!5054207 () Bool)

(assert (=> b!4394094 m!5054207))

(declare-fun m!5054209 () Bool)

(assert (=> b!4394094 m!5054209))

(assert (=> b!4394094 m!5054183))

(assert (=> b!4394094 m!5054193))

(declare-fun m!5054211 () Bool)

(assert (=> b!4394097 m!5054211))

(assert (=> b!4393650 d!1323746))

(declare-fun bs!726225 () Bool)

(declare-fun d!1323748 () Bool)

(assert (= bs!726225 (and d!1323748 start!426312)))

(declare-fun lambda!147495 () Int)

(assert (=> bs!726225 (= lambda!147495 lambda!147375)))

(declare-fun bs!726226 () Bool)

(assert (= bs!726226 (and d!1323748 d!1323526)))

(assert (=> bs!726226 (= lambda!147495 lambda!147387)))

(declare-fun bs!726227 () Bool)

(assert (= bs!726227 (and d!1323748 d!1323528)))

(assert (=> bs!726227 (not (= lambda!147495 lambda!147390))))

(declare-fun lt!1601435 () ListMap!2429)

(assert (=> d!1323748 (invariantList!733 (toList!3186 lt!1601435))))

(declare-fun e!2735877 () ListMap!2429)

(assert (=> d!1323748 (= lt!1601435 e!2735877)))

(declare-fun c!748040 () Bool)

(assert (=> d!1323748 (= c!748040 ((_ is Cons!49211) (t!356269 (toList!3185 lm!1707))))))

(assert (=> d!1323748 (forall!9309 (t!356269 (toList!3185 lm!1707)) lambda!147495)))

(assert (=> d!1323748 (= (extractMap!660 (t!356269 (toList!3185 lm!1707))) lt!1601435)))

(declare-fun b!4394100 () Bool)

(assert (=> b!4394100 (= e!2735877 (addToMapMapFromBucket!278 (_2!27682 (h!54818 (t!356269 (toList!3185 lm!1707)))) (extractMap!660 (t!356269 (t!356269 (toList!3185 lm!1707))))))))

(declare-fun b!4394101 () Bool)

(assert (=> b!4394101 (= e!2735877 (ListMap!2430 Nil!49210))))

(assert (= (and d!1323748 c!748040) b!4394100))

(assert (= (and d!1323748 (not c!748040)) b!4394101))

(declare-fun m!5054213 () Bool)

(assert (=> d!1323748 m!5054213))

(declare-fun m!5054215 () Bool)

(assert (=> d!1323748 m!5054215))

(declare-fun m!5054217 () Bool)

(assert (=> b!4394100 m!5054217))

(assert (=> b!4394100 m!5054217))

(declare-fun m!5054219 () Bool)

(assert (=> b!4394100 m!5054219))

(assert (=> b!4393650 d!1323748))

(declare-fun d!1323750 () Bool)

(declare-fun res!1811406 () Bool)

(declare-fun e!2735878 () Bool)

(assert (=> d!1323750 (=> res!1811406 e!2735878)))

(assert (=> d!1323750 (= res!1811406 (not ((_ is Cons!49210) (t!356268 newBucket!200))))))

(assert (=> d!1323750 (= (noDuplicateKeys!601 (t!356268 newBucket!200)) e!2735878)))

(declare-fun b!4394102 () Bool)

(declare-fun e!2735879 () Bool)

(assert (=> b!4394102 (= e!2735878 e!2735879)))

(declare-fun res!1811407 () Bool)

(assert (=> b!4394102 (=> (not res!1811407) (not e!2735879))))

(assert (=> b!4394102 (= res!1811407 (not (containsKey!880 (t!356268 (t!356268 newBucket!200)) (_1!27681 (h!54817 (t!356268 newBucket!200))))))))

(declare-fun b!4394103 () Bool)

(assert (=> b!4394103 (= e!2735879 (noDuplicateKeys!601 (t!356268 (t!356268 newBucket!200))))))

(assert (= (and d!1323750 (not res!1811406)) b!4394102))

(assert (= (and b!4394102 res!1811407) b!4394103))

(declare-fun m!5054221 () Bool)

(assert (=> b!4394102 m!5054221))

(declare-fun m!5054223 () Bool)

(assert (=> b!4394103 m!5054223))

(assert (=> b!4393662 d!1323750))

(declare-fun d!1323752 () Bool)

(declare-fun lt!1601436 () Bool)

(assert (=> d!1323752 (= lt!1601436 (select (content!7840 (toList!3185 lt!1601132)) (tuple2!48777 hash!377 newBucket!200)))))

(declare-fun e!2735881 () Bool)

(assert (=> d!1323752 (= lt!1601436 e!2735881)))

(declare-fun res!1811409 () Bool)

(assert (=> d!1323752 (=> (not res!1811409) (not e!2735881))))

(assert (=> d!1323752 (= res!1811409 ((_ is Cons!49211) (toList!3185 lt!1601132)))))

(assert (=> d!1323752 (= (contains!11575 (toList!3185 lt!1601132) (tuple2!48777 hash!377 newBucket!200)) lt!1601436)))

(declare-fun b!4394104 () Bool)

(declare-fun e!2735880 () Bool)

(assert (=> b!4394104 (= e!2735881 e!2735880)))

(declare-fun res!1811408 () Bool)

(assert (=> b!4394104 (=> res!1811408 e!2735880)))

(assert (=> b!4394104 (= res!1811408 (= (h!54818 (toList!3185 lt!1601132)) (tuple2!48777 hash!377 newBucket!200)))))

(declare-fun b!4394105 () Bool)

(assert (=> b!4394105 (= e!2735880 (contains!11575 (t!356269 (toList!3185 lt!1601132)) (tuple2!48777 hash!377 newBucket!200)))))

(assert (= (and d!1323752 res!1811409) b!4394104))

(assert (= (and b!4394104 (not res!1811408)) b!4394105))

(declare-fun m!5054225 () Bool)

(assert (=> d!1323752 m!5054225))

(declare-fun m!5054227 () Bool)

(assert (=> d!1323752 m!5054227))

(declare-fun m!5054229 () Bool)

(assert (=> b!4394105 m!5054229))

(assert (=> b!4393551 d!1323752))

(assert (=> b!4393645 d!1323600))

(declare-fun d!1323754 () Bool)

(declare-fun noDuplicatedKeys!142 (List!49334) Bool)

(assert (=> d!1323754 (= (invariantList!733 (toList!3186 lt!1601194)) (noDuplicatedKeys!142 (toList!3186 lt!1601194)))))

(declare-fun bs!726228 () Bool)

(assert (= bs!726228 d!1323754))

(declare-fun m!5054231 () Bool)

(assert (=> bs!726228 m!5054231))

(assert (=> d!1323526 d!1323754))

(declare-fun d!1323756 () Bool)

(declare-fun res!1811410 () Bool)

(declare-fun e!2735882 () Bool)

(assert (=> d!1323756 (=> res!1811410 e!2735882)))

(assert (=> d!1323756 (= res!1811410 ((_ is Nil!49211) (toList!3185 lm!1707)))))

(assert (=> d!1323756 (= (forall!9309 (toList!3185 lm!1707) lambda!147387) e!2735882)))

(declare-fun b!4394106 () Bool)

(declare-fun e!2735883 () Bool)

(assert (=> b!4394106 (= e!2735882 e!2735883)))

(declare-fun res!1811411 () Bool)

(assert (=> b!4394106 (=> (not res!1811411) (not e!2735883))))

(assert (=> b!4394106 (= res!1811411 (dynLambda!20733 lambda!147387 (h!54818 (toList!3185 lm!1707))))))

(declare-fun b!4394107 () Bool)

(assert (=> b!4394107 (= e!2735883 (forall!9309 (t!356269 (toList!3185 lm!1707)) lambda!147387))))

(assert (= (and d!1323756 (not res!1811410)) b!4394106))

(assert (= (and b!4394106 res!1811411) b!4394107))

(declare-fun b_lambda!138953 () Bool)

(assert (=> (not b_lambda!138953) (not b!4394106)))

(declare-fun m!5054233 () Bool)

(assert (=> b!4394106 m!5054233))

(declare-fun m!5054235 () Bool)

(assert (=> b!4394107 m!5054235))

(assert (=> d!1323526 d!1323756))

(declare-fun d!1323758 () Bool)

(declare-fun res!1811416 () Bool)

(declare-fun e!2735888 () Bool)

(assert (=> d!1323758 (=> res!1811416 e!2735888)))

(assert (=> d!1323758 (= res!1811416 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377)))))

(assert (=> d!1323758 (= (containsKey!879 (toList!3185 lm!1707) hash!377) e!2735888)))

(declare-fun b!4394112 () Bool)

(declare-fun e!2735889 () Bool)

(assert (=> b!4394112 (= e!2735888 e!2735889)))

(declare-fun res!1811417 () Bool)

(assert (=> b!4394112 (=> (not res!1811417) (not e!2735889))))

(assert (=> b!4394112 (= res!1811417 (and (or (not ((_ is Cons!49211) (toList!3185 lm!1707))) (bvsle (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377)) ((_ is Cons!49211) (toList!3185 lm!1707)) (bvslt (_1!27682 (h!54818 (toList!3185 lm!1707))) hash!377)))))

(declare-fun b!4394113 () Bool)

(assert (=> b!4394113 (= e!2735889 (containsKey!879 (t!356269 (toList!3185 lm!1707)) hash!377))))

(assert (= (and d!1323758 (not res!1811416)) b!4394112))

(assert (= (and b!4394112 res!1811417) b!4394113))

(declare-fun m!5054237 () Bool)

(assert (=> b!4394113 m!5054237))

(assert (=> d!1323530 d!1323758))

(declare-fun d!1323760 () Bool)

(declare-fun res!1811418 () Bool)

(declare-fun e!2735890 () Bool)

(assert (=> d!1323760 (=> res!1811418 e!2735890)))

(assert (=> d!1323760 (= res!1811418 (and ((_ is Cons!49211) (toList!3185 lm!1707)) (= (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (toList!3185 lm!1707))))))))

(assert (=> d!1323760 (= (containsKey!879 (toList!3185 lm!1707) (_1!27682 (h!54818 (toList!3185 lm!1707)))) e!2735890)))

(declare-fun b!4394114 () Bool)

(declare-fun e!2735891 () Bool)

(assert (=> b!4394114 (= e!2735890 e!2735891)))

(declare-fun res!1811419 () Bool)

(assert (=> b!4394114 (=> (not res!1811419) (not e!2735891))))

(assert (=> b!4394114 (= res!1811419 (and (or (not ((_ is Cons!49211) (toList!3185 lm!1707))) (bvsle (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (toList!3185 lm!1707))))) ((_ is Cons!49211) (toList!3185 lm!1707)) (bvslt (_1!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (toList!3185 lm!1707))))))))

(declare-fun b!4394115 () Bool)

(assert (=> b!4394115 (= e!2735891 (containsKey!879 (t!356269 (toList!3185 lm!1707)) (_1!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (= (and d!1323760 (not res!1811418)) b!4394114))

(assert (= (and b!4394114 res!1811419) b!4394115))

(declare-fun m!5054239 () Bool)

(assert (=> b!4394115 m!5054239))

(assert (=> d!1323476 d!1323760))

(declare-fun d!1323762 () Bool)

(declare-fun res!1811420 () Bool)

(declare-fun e!2735892 () Bool)

(assert (=> d!1323762 (=> res!1811420 e!2735892)))

(assert (=> d!1323762 (= res!1811420 (not ((_ is Cons!49210) (_2!27682 (h!54818 (toList!3185 lt!1601054))))))))

(assert (=> d!1323762 (= (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 lt!1601054)))) e!2735892)))

(declare-fun b!4394116 () Bool)

(declare-fun e!2735893 () Bool)

(assert (=> b!4394116 (= e!2735892 e!2735893)))

(declare-fun res!1811421 () Bool)

(assert (=> b!4394116 (=> (not res!1811421) (not e!2735893))))

(assert (=> b!4394116 (= res!1811421 (not (containsKey!880 (t!356268 (_2!27682 (h!54818 (toList!3185 lt!1601054)))) (_1!27681 (h!54817 (_2!27682 (h!54818 (toList!3185 lt!1601054))))))))))

(declare-fun b!4394117 () Bool)

(assert (=> b!4394117 (= e!2735893 (noDuplicateKeys!601 (t!356268 (_2!27682 (h!54818 (toList!3185 lt!1601054))))))))

(assert (= (and d!1323762 (not res!1811420)) b!4394116))

(assert (= (and b!4394116 res!1811421) b!4394117))

(declare-fun m!5054241 () Bool)

(assert (=> b!4394116 m!5054241))

(declare-fun m!5054243 () Bool)

(assert (=> b!4394117 m!5054243))

(assert (=> bs!726168 d!1323762))

(declare-fun tp!1331469 () Bool)

(declare-fun b!4394118 () Bool)

(declare-fun e!2735894 () Bool)

(assert (=> b!4394118 (= e!2735894 (and tp_is_empty!25641 tp_is_empty!25643 tp!1331469))))

(assert (=> b!4393676 (= tp!1331463 e!2735894)))

(assert (= (and b!4393676 ((_ is Cons!49210) (_2!27682 (h!54818 (toList!3185 lm!1707))))) b!4394118))

(declare-fun b!4394119 () Bool)

(declare-fun e!2735895 () Bool)

(declare-fun tp!1331470 () Bool)

(declare-fun tp!1331471 () Bool)

(assert (=> b!4394119 (= e!2735895 (and tp!1331470 tp!1331471))))

(assert (=> b!4393676 (= tp!1331464 e!2735895)))

(assert (= (and b!4393676 ((_ is Cons!49211) (t!356269 (toList!3185 lm!1707)))) b!4394119))

(declare-fun b!4394120 () Bool)

(declare-fun e!2735896 () Bool)

(declare-fun tp!1331472 () Bool)

(assert (=> b!4394120 (= e!2735896 (and tp_is_empty!25641 tp_is_empty!25643 tp!1331472))))

(assert (=> b!4393671 (= tp!1331458 e!2735896)))

(assert (= (and b!4393671 ((_ is Cons!49210) (t!356268 (t!356268 newBucket!200)))) b!4394120))

(declare-fun b_lambda!138955 () Bool)

(assert (= b_lambda!138947 (or start!426312 b_lambda!138955)))

(declare-fun bs!726229 () Bool)

(declare-fun d!1323764 () Bool)

(assert (= bs!726229 (and d!1323764 start!426312)))

(assert (=> bs!726229 (= (dynLambda!20733 lambda!147375 (h!54818 (t!356269 (toList!3185 lt!1601054)))) (noDuplicateKeys!601 (_2!27682 (h!54818 (t!356269 (toList!3185 lt!1601054))))))))

(declare-fun m!5054245 () Bool)

(assert (=> bs!726229 m!5054245))

(assert (=> b!4394038 d!1323764))

(declare-fun b_lambda!138957 () Bool)

(assert (= b_lambda!138949 (or start!426312 b_lambda!138957)))

(declare-fun bs!726230 () Bool)

(declare-fun d!1323766 () Bool)

(assert (= bs!726230 (and d!1323766 start!426312)))

(assert (=> bs!726230 (= (dynLambda!20733 lambda!147375 (h!54818 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200))))) (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 (+!828 lm!1707 (tuple2!48777 hash!377 newBucket!200)))))))))

(declare-fun m!5054247 () Bool)

(assert (=> bs!726230 m!5054247))

(assert (=> b!4394040 d!1323766))

(declare-fun b_lambda!138959 () Bool)

(assert (= b_lambda!138953 (or d!1323526 b_lambda!138959)))

(declare-fun bs!726231 () Bool)

(declare-fun d!1323768 () Bool)

(assert (= bs!726231 (and d!1323768 d!1323526)))

(assert (=> bs!726231 (= (dynLambda!20733 lambda!147387 (h!54818 (toList!3185 lm!1707))) (noDuplicateKeys!601 (_2!27682 (h!54818 (toList!3185 lm!1707)))))))

(assert (=> bs!726231 m!5053767))

(assert (=> b!4394106 d!1323768))

(declare-fun b_lambda!138961 () Bool)

(assert (= b_lambda!138925 (or d!1323528 b_lambda!138961)))

(declare-fun bs!726232 () Bool)

(declare-fun d!1323770 () Bool)

(assert (= bs!726232 (and d!1323770 d!1323528)))

(assert (=> bs!726232 (= (dynLambda!20733 lambda!147390 (h!54818 (toList!3185 lm!1707))) (allKeysSameHash!559 (_2!27682 (h!54818 (toList!3185 lm!1707))) (_1!27682 (h!54818 (toList!3185 lm!1707))) hashF!1247))))

(declare-fun m!5054249 () Bool)

(assert (=> bs!726232 m!5054249))

(assert (=> b!4393890 d!1323770))

(declare-fun b_lambda!138963 () Bool)

(assert (= b_lambda!138951 (or start!426312 b_lambda!138963)))

(declare-fun bs!726233 () Bool)

(declare-fun d!1323772 () Bool)

(assert (= bs!726233 (and d!1323772 start!426312)))

(assert (=> bs!726233 (= (dynLambda!20733 lambda!147375 (h!54818 (t!356269 (toList!3185 lm!1707)))) (noDuplicateKeys!601 (_2!27682 (h!54818 (t!356269 (toList!3185 lm!1707))))))))

(declare-fun m!5054251 () Bool)

(assert (=> bs!726233 m!5054251))

(assert (=> b!4394077 d!1323772))

(declare-fun b_lambda!138965 () Bool)

(assert (= b_lambda!138919 (or d!1323538 b_lambda!138965)))

(declare-fun bs!726234 () Bool)

(declare-fun d!1323774 () Bool)

(assert (= bs!726234 (and d!1323774 d!1323538)))

(assert (=> bs!726234 (= (dynLambda!20735 lambda!147393 (h!54817 newBucket!200)) (= (hash!1798 hashF!1247 (_1!27681 (h!54817 newBucket!200))) hash!377))))

(declare-fun m!5054253 () Bool)

(assert (=> bs!726234 m!5054253))

(assert (=> b!4393749 d!1323774))

(declare-fun b_lambda!138967 () Bool)

(assert (= b_lambda!138923 (or start!426312 b_lambda!138967)))

(assert (=> d!1323614 d!1323542))

(check-sat (not b!4394097) (not b_lambda!138959) (not b!4394021) (not b!4394027) (not b!4394105) (not b!4393892) (not b!4394119) (not b!4393960) (not d!1323682) (not b_lambda!138905) (not d!1323742) (not b!4394113) (not b!4394064) (not b!4393821) (not d!1323710) (not d!1323636) (not b_lambda!138909) (not b!4394022) (not b_lambda!138911) (not b!4394115) (not b!4394102) (not b_lambda!138955) (not d!1323600) (not d!1323712) (not b!4394041) (not b_lambda!138967) (not b!4394078) (not bs!726231) (not b!4393891) (not d!1323746) (not b!4394120) (not b!4394082) (not b!4393854) (not d!1323594) (not b!4394076) (not b!4394044) (not b!4394026) (not b!4393894) (not b!4394069) (not b!4394094) (not b!4394096) (not b!4394095) (not b!4394054) (not b!4393738) (not bm!305881) (not b!4394103) (not b!4394080) (not d!1323630) (not b!4394037) (not b!4394036) (not b!4393819) (not d!1323726) (not b!4394039) (not b!4394118) (not b!4394100) (not b!4394047) (not b!4394116) (not b!4394063) (not d!1323748) (not d!1323714) (not b!4394117) (not b!4393717) (not b!4393899) (not d!1323728) (not b_lambda!138965) tp_is_empty!25641 (not d!1323754) (not b!4394107) (not d!1323730) (not bs!726229) (not b!4393786) (not d!1323752) (not b_lambda!138963) (not bs!726234) (not d!1323700) (not b!4393966) (not bs!726230) (not b!4393914) (not b!4393772) (not b!4394051) (not b!4393913) tp_is_empty!25643 (not bm!305889) (not b!4393750) (not d!1323638) (not d!1323708) (not d!1323744) (not b!4394065) (not b_lambda!138961) (not d!1323660) (not b!4393820) (not bs!726233) (not b!4394028) (not d!1323646) (not b!4394035) (not b!4393958) (not b_lambda!138907) (not b!4393718) (not bm!305890) (not d!1323720) (not b!4394057) (not b!4394066) (not bs!726232) (not bm!305888) (not d!1323618) (not b_lambda!138957) (not b!4393876) (not b!4394053) (not d!1323620))
(check-sat)
