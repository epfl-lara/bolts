; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!441162 () Bool)

(assert start!441162)

(declare-fun b!4482877 () Bool)

(declare-fun e!2792073 () Bool)

(declare-datatypes ((K!11813 0))(
  ( (K!11814 (val!17721 Int)) )
))
(declare-datatypes ((V!12059 0))(
  ( (V!12060 (val!17722 Int)) )
))
(declare-datatypes ((tuple2!50710 0))(
  ( (tuple2!50711 (_1!28649 K!11813) (_2!28649 V!12059)) )
))
(declare-datatypes ((List!50526 0))(
  ( (Nil!50402) (Cons!50402 (h!56193 tuple2!50710) (t!357480 List!50526)) )
))
(declare-datatypes ((tuple2!50712 0))(
  ( (tuple2!50713 (_1!28650 (_ BitVec 64)) (_2!28650 List!50526)) )
))
(declare-datatypes ((List!50527 0))(
  ( (Nil!50403) (Cons!50403 (h!56194 tuple2!50712) (t!357481 List!50527)) )
))
(declare-datatypes ((ListLongMap!2777 0))(
  ( (ListLongMap!2778 (toList!4145 List!50527)) )
))
(declare-fun lm!1477 () ListLongMap!2777)

(declare-fun isEmpty!28518 (ListLongMap!2777) Bool)

(assert (=> b!4482877 (= e!2792073 (not (isEmpty!28518 lm!1477)))))

(declare-fun b!4482878 () Bool)

(declare-fun res!1861510 () Bool)

(declare-fun e!2792072 () Bool)

(assert (=> b!4482878 (=> (not res!1861510) (not e!2792072))))

(declare-fun key!3287 () K!11813)

(declare-datatypes ((ListMap!3407 0))(
  ( (ListMap!3408 (toList!4146 List!50526)) )
))
(declare-fun contains!13004 (ListMap!3407 K!11813) Bool)

(declare-fun extractMap!1125 (List!50527) ListMap!3407)

(assert (=> b!4482878 (= res!1861510 (contains!13004 (extractMap!1125 (toList!4145 lm!1477)) key!3287))))

(declare-fun res!1861509 () Bool)

(assert (=> start!441162 (=> (not res!1861509) (not e!2792072))))

(declare-fun lambda!165804 () Int)

(declare-fun forall!10071 (List!50527 Int) Bool)

(assert (=> start!441162 (= res!1861509 (forall!10071 (toList!4145 lm!1477) lambda!165804))))

(assert (=> start!441162 e!2792072))

(assert (=> start!441162 true))

(declare-fun e!2792075 () Bool)

(declare-fun inv!65998 (ListLongMap!2777) Bool)

(assert (=> start!441162 (and (inv!65998 lm!1477) e!2792075)))

(declare-fun tp_is_empty!27553 () Bool)

(assert (=> start!441162 tp_is_empty!27553))

(declare-fun e!2792076 () Bool)

(assert (=> start!441162 e!2792076))

(declare-fun b!4482879 () Bool)

(declare-fun e!2792074 () Bool)

(assert (=> b!4482879 (= e!2792074 (not e!2792073))))

(declare-fun res!1861512 () Bool)

(assert (=> b!4482879 (=> res!1861512 e!2792073)))

(declare-fun lt!1669380 () List!50526)

(declare-fun newBucket!178 () List!50526)

(declare-fun removePairForKey!696 (List!50526 K!11813) List!50526)

(assert (=> b!4482879 (= res!1861512 (not (= newBucket!178 (removePairForKey!696 lt!1669380 key!3287))))))

(declare-fun lt!1669379 () tuple2!50712)

(declare-datatypes ((Unit!89921 0))(
  ( (Unit!89922) )
))
(declare-fun lt!1669378 () Unit!89921)

(declare-fun forallContained!2332 (List!50527 Int tuple2!50712) Unit!89921)

(assert (=> b!4482879 (= lt!1669378 (forallContained!2332 (toList!4145 lm!1477) lambda!165804 lt!1669379))))

(declare-fun contains!13005 (List!50527 tuple2!50712) Bool)

(assert (=> b!4482879 (contains!13005 (toList!4145 lm!1477) lt!1669379)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4482879 (= lt!1669379 (tuple2!50713 hash!344 lt!1669380))))

(declare-fun lt!1669382 () Unit!89921)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!581 (List!50527 (_ BitVec 64) List!50526) Unit!89921)

(assert (=> b!4482879 (= lt!1669382 (lemmaGetValueByKeyImpliesContainsTuple!581 (toList!4145 lm!1477) hash!344 lt!1669380))))

(declare-fun apply!11806 (ListLongMap!2777 (_ BitVec 64)) List!50526)

(assert (=> b!4482879 (= lt!1669380 (apply!11806 lm!1477 hash!344))))

(declare-fun lt!1669381 () (_ BitVec 64))

(declare-fun contains!13006 (ListLongMap!2777 (_ BitVec 64)) Bool)

(assert (=> b!4482879 (contains!13006 lm!1477 lt!1669381)))

(declare-datatypes ((Hashable!5464 0))(
  ( (HashableExt!5463 (__x!31167 Int)) )
))
(declare-fun hashF!1107 () Hashable!5464)

(declare-fun lt!1669377 () Unit!89921)

(declare-fun lemmaInGenMapThenLongMapContainsHash!143 (ListLongMap!2777 K!11813 Hashable!5464) Unit!89921)

(assert (=> b!4482879 (= lt!1669377 (lemmaInGenMapThenLongMapContainsHash!143 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4482880 () Bool)

(declare-fun res!1861507 () Bool)

(assert (=> b!4482880 (=> res!1861507 e!2792073)))

(declare-fun tail!7582 (ListLongMap!2777) ListLongMap!2777)

(assert (=> b!4482880 (= res!1861507 (not (contains!13006 (tail!7582 lm!1477) hash!344)))))

(declare-fun b!4482881 () Bool)

(declare-fun res!1861508 () Bool)

(assert (=> b!4482881 (=> (not res!1861508) (not e!2792074))))

(declare-fun allKeysSameHash!923 (List!50526 (_ BitVec 64) Hashable!5464) Bool)

(assert (=> b!4482881 (= res!1861508 (allKeysSameHash!923 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4482882 () Bool)

(declare-fun res!1861505 () Bool)

(assert (=> b!4482882 (=> res!1861505 e!2792073)))

(assert (=> b!4482882 (= res!1861505 (or (is-Nil!50403 (toList!4145 lm!1477)) (= (_1!28650 (h!56194 (toList!4145 lm!1477))) hash!344)))))

(declare-fun b!4482883 () Bool)

(declare-fun tp!1336796 () Bool)

(assert (=> b!4482883 (= e!2792075 tp!1336796)))

(declare-fun b!4482884 () Bool)

(declare-fun res!1861511 () Bool)

(assert (=> b!4482884 (=> res!1861511 e!2792073)))

(declare-fun noDuplicateKeys!1069 (List!50526) Bool)

(assert (=> b!4482884 (= res!1861511 (not (noDuplicateKeys!1069 newBucket!178)))))

(declare-fun b!4482885 () Bool)

(declare-fun res!1861506 () Bool)

(assert (=> b!4482885 (=> (not res!1861506) (not e!2792072))))

(declare-fun allKeysSameHashInMap!1176 (ListLongMap!2777 Hashable!5464) Bool)

(assert (=> b!4482885 (= res!1861506 (allKeysSameHashInMap!1176 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!27555 () Bool)

(declare-fun tp!1336797 () Bool)

(declare-fun b!4482886 () Bool)

(assert (=> b!4482886 (= e!2792076 (and tp_is_empty!27553 tp_is_empty!27555 tp!1336797))))

(declare-fun b!4482887 () Bool)

(assert (=> b!4482887 (= e!2792072 e!2792074)))

(declare-fun res!1861513 () Bool)

(assert (=> b!4482887 (=> (not res!1861513) (not e!2792074))))

(assert (=> b!4482887 (= res!1861513 (= lt!1669381 hash!344))))

(declare-fun hash!2570 (Hashable!5464 K!11813) (_ BitVec 64))

(assert (=> b!4482887 (= lt!1669381 (hash!2570 hashF!1107 key!3287))))

(assert (= (and start!441162 res!1861509) b!4482885))

(assert (= (and b!4482885 res!1861506) b!4482878))

(assert (= (and b!4482878 res!1861510) b!4482887))

(assert (= (and b!4482887 res!1861513) b!4482881))

(assert (= (and b!4482881 res!1861508) b!4482879))

(assert (= (and b!4482879 (not res!1861512)) b!4482884))

(assert (= (and b!4482884 (not res!1861511)) b!4482882))

(assert (= (and b!4482882 (not res!1861505)) b!4482880))

(assert (= (and b!4482880 (not res!1861507)) b!4482877))

(assert (= start!441162 b!4482883))

(assert (= (and start!441162 (is-Cons!50402 newBucket!178)) b!4482886))

(declare-fun m!5203359 () Bool)

(assert (=> b!4482885 m!5203359))

(declare-fun m!5203361 () Bool)

(assert (=> b!4482878 m!5203361))

(assert (=> b!4482878 m!5203361))

(declare-fun m!5203363 () Bool)

(assert (=> b!4482878 m!5203363))

(declare-fun m!5203365 () Bool)

(assert (=> b!4482887 m!5203365))

(declare-fun m!5203367 () Bool)

(assert (=> b!4482877 m!5203367))

(declare-fun m!5203369 () Bool)

(assert (=> b!4482879 m!5203369))

(declare-fun m!5203371 () Bool)

(assert (=> b!4482879 m!5203371))

(declare-fun m!5203373 () Bool)

(assert (=> b!4482879 m!5203373))

(declare-fun m!5203375 () Bool)

(assert (=> b!4482879 m!5203375))

(declare-fun m!5203377 () Bool)

(assert (=> b!4482879 m!5203377))

(declare-fun m!5203379 () Bool)

(assert (=> b!4482879 m!5203379))

(declare-fun m!5203381 () Bool)

(assert (=> b!4482879 m!5203381))

(declare-fun m!5203383 () Bool)

(assert (=> b!4482881 m!5203383))

(declare-fun m!5203385 () Bool)

(assert (=> b!4482884 m!5203385))

(declare-fun m!5203387 () Bool)

(assert (=> start!441162 m!5203387))

(declare-fun m!5203389 () Bool)

(assert (=> start!441162 m!5203389))

(declare-fun m!5203391 () Bool)

(assert (=> b!4482880 m!5203391))

(assert (=> b!4482880 m!5203391))

(declare-fun m!5203393 () Bool)

(assert (=> b!4482880 m!5203393))

(push 1)

(assert tp_is_empty!27555)

(assert (not b!4482877))

(assert (not b!4482881))

(assert (not start!441162))

(assert (not b!4482887))

(assert (not b!4482878))

(assert (not b!4482886))

(assert (not b!4482884))

(assert (not b!4482880))

(assert tp_is_empty!27553)

(assert (not b!4482885))

(assert (not b!4482883))

(assert (not b!4482879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1372199 () Bool)

(declare-fun isEmpty!28520 (List!50527) Bool)

(assert (=> d!1372199 (= (isEmpty!28518 lm!1477) (isEmpty!28520 (toList!4145 lm!1477)))))

(declare-fun bs!825542 () Bool)

(assert (= bs!825542 d!1372199))

(declare-fun m!5203435 () Bool)

(assert (=> bs!825542 m!5203435))

(assert (=> b!4482877 d!1372199))

(declare-fun d!1372201 () Bool)

(declare-fun e!2792116 () Bool)

(assert (=> d!1372201 e!2792116))

(declare-fun res!1861554 () Bool)

(assert (=> d!1372201 (=> res!1861554 e!2792116)))

(declare-fun e!2792111 () Bool)

(assert (=> d!1372201 (= res!1861554 e!2792111)))

(declare-fun res!1861550 () Bool)

(assert (=> d!1372201 (=> (not res!1861550) (not e!2792111))))

(declare-fun lt!1669435 () Bool)

(assert (=> d!1372201 (= res!1861550 (not lt!1669435))))

(declare-fun lt!1669432 () Bool)

(assert (=> d!1372201 (= lt!1669435 lt!1669432)))

(declare-fun lt!1669436 () Unit!89921)

(declare-fun e!2792113 () Unit!89921)

(assert (=> d!1372201 (= lt!1669436 e!2792113)))

(declare-fun c!763616 () Bool)

(assert (=> d!1372201 (= c!763616 lt!1669432)))

(declare-fun containsKey!1567 (List!50526 K!11813) Bool)

(assert (=> d!1372201 (= lt!1669432 (containsKey!1567 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(assert (=> d!1372201 (= (contains!13004 (extractMap!1125 (toList!4145 lm!1477)) key!3287) lt!1669435)))

(declare-fun b!4482948 () Bool)

(declare-datatypes ((List!50530 0))(
  ( (Nil!50406) (Cons!50406 (h!56199 K!11813) (t!357484 List!50530)) )
))
(declare-fun contains!13010 (List!50530 K!11813) Bool)

(declare-fun keys!17437 (ListMap!3407) List!50530)

(assert (=> b!4482948 (= e!2792111 (not (contains!13010 (keys!17437 (extractMap!1125 (toList!4145 lm!1477))) key!3287)))))

(declare-fun b!4482949 () Bool)

(declare-fun e!2792110 () Unit!89921)

(declare-fun Unit!89925 () Unit!89921)

(assert (=> b!4482949 (= e!2792110 Unit!89925)))

(declare-fun b!4482950 () Bool)

(declare-fun e!2792114 () Bool)

(assert (=> b!4482950 (= e!2792114 (contains!13010 (keys!17437 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(declare-fun b!4482951 () Bool)

(assert (=> b!4482951 (= e!2792113 e!2792110)))

(declare-fun c!763615 () Bool)

(declare-fun call!312134 () Bool)

(assert (=> b!4482951 (= c!763615 call!312134)))

(declare-fun b!4482952 () Bool)

(declare-fun e!2792117 () List!50530)

(declare-fun getKeysList!402 (List!50526) List!50530)

(assert (=> b!4482952 (= e!2792117 (getKeysList!402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))

(declare-fun b!4482953 () Bool)

(assert (=> b!4482953 (= e!2792116 e!2792114)))

(declare-fun res!1861553 () Bool)

(assert (=> b!4482953 (=> (not res!1861553) (not e!2792114))))

(declare-datatypes ((Option!10980 0))(
  ( (None!10979) (Some!10979 (v!44371 V!12059)) )
))
(declare-fun isDefined!8267 (Option!10980) Bool)

(declare-fun getValueByKey!966 (List!50526 K!11813) Option!10980)

(assert (=> b!4482953 (= res!1861553 (isDefined!8267 (getValueByKey!966 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287)))))

(declare-fun b!4482954 () Bool)

(declare-fun lt!1669429 () Unit!89921)

(assert (=> b!4482954 (= e!2792113 lt!1669429)))

(declare-fun lt!1669434 () Unit!89921)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!870 (List!50526 K!11813) Unit!89921)

(assert (=> b!4482954 (= lt!1669434 (lemmaContainsKeyImpliesGetValueByKeyDefined!870 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(assert (=> b!4482954 (isDefined!8267 (getValueByKey!966 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(declare-fun lt!1669433 () Unit!89921)

(assert (=> b!4482954 (= lt!1669433 lt!1669434)))

(declare-fun lemmaInListThenGetKeysListContains!398 (List!50526 K!11813) Unit!89921)

(assert (=> b!4482954 (= lt!1669429 (lemmaInListThenGetKeysListContains!398 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(assert (=> b!4482954 call!312134))

(declare-fun bm!312129 () Bool)

(assert (=> bm!312129 (= call!312134 (contains!13010 e!2792117 key!3287))))

(declare-fun c!763617 () Bool)

(assert (=> bm!312129 (= c!763617 c!763616)))

(declare-fun b!4482955 () Bool)

(assert (=> b!4482955 (= e!2792117 (keys!17437 (extractMap!1125 (toList!4145 lm!1477))))))

(declare-fun b!4482958 () Bool)

(assert (=> b!4482958 false))

(declare-fun lt!1669431 () Unit!89921)

(declare-fun lt!1669430 () Unit!89921)

(assert (=> b!4482958 (= lt!1669431 lt!1669430)))

(assert (=> b!4482958 (containsKey!1567 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!401 (List!50526 K!11813) Unit!89921)

(assert (=> b!4482958 (= lt!1669430 (lemmaInGetKeysListThenContainsKey!401 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(declare-fun Unit!89926 () Unit!89921)

(assert (=> b!4482958 (= e!2792110 Unit!89926)))

(assert (= (and d!1372201 c!763616) b!4482954))

(assert (= (and d!1372201 (not c!763616)) b!4482951))

(assert (= (and b!4482951 c!763615) b!4482958))

(assert (= (and b!4482951 (not c!763615)) b!4482949))

(assert (= (or b!4482954 b!4482951) bm!312129))

(assert (= (and bm!312129 c!763617) b!4482952))

(assert (= (and bm!312129 (not c!763617)) b!4482955))

(assert (= (and d!1372201 res!1861550) b!4482948))

(assert (= (and d!1372201 (not res!1861554)) b!4482953))

(assert (= (and b!4482953 res!1861553) b!4482950))

(declare-fun m!5203445 () Bool)

(assert (=> b!4482958 m!5203445))

(declare-fun m!5203447 () Bool)

(assert (=> b!4482958 m!5203447))

(declare-fun m!5203449 () Bool)

(assert (=> b!4482954 m!5203449))

(declare-fun m!5203451 () Bool)

(assert (=> b!4482954 m!5203451))

(assert (=> b!4482954 m!5203451))

(declare-fun m!5203453 () Bool)

(assert (=> b!4482954 m!5203453))

(declare-fun m!5203455 () Bool)

(assert (=> b!4482954 m!5203455))

(assert (=> b!4482948 m!5203361))

(declare-fun m!5203457 () Bool)

(assert (=> b!4482948 m!5203457))

(assert (=> b!4482948 m!5203457))

(declare-fun m!5203459 () Bool)

(assert (=> b!4482948 m!5203459))

(assert (=> b!4482950 m!5203361))

(assert (=> b!4482950 m!5203457))

(assert (=> b!4482950 m!5203457))

(assert (=> b!4482950 m!5203459))

(assert (=> d!1372201 m!5203445))

(assert (=> b!4482955 m!5203361))

(assert (=> b!4482955 m!5203457))

(declare-fun m!5203461 () Bool)

(assert (=> bm!312129 m!5203461))

(declare-fun m!5203463 () Bool)

(assert (=> b!4482952 m!5203463))

(assert (=> b!4482953 m!5203451))

(assert (=> b!4482953 m!5203451))

(assert (=> b!4482953 m!5203453))

(assert (=> b!4482878 d!1372201))

(declare-fun bs!825543 () Bool)

(declare-fun d!1372205 () Bool)

(assert (= bs!825543 (and d!1372205 start!441162)))

(declare-fun lambda!165812 () Int)

(assert (=> bs!825543 (= lambda!165812 lambda!165804)))

(declare-fun lt!1669445 () ListMap!3407)

(declare-fun invariantList!954 (List!50526) Bool)

(assert (=> d!1372205 (invariantList!954 (toList!4146 lt!1669445))))

(declare-fun e!2792124 () ListMap!3407)

(assert (=> d!1372205 (= lt!1669445 e!2792124)))

(declare-fun c!763620 () Bool)

(assert (=> d!1372205 (= c!763620 (is-Cons!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372205 (forall!10071 (toList!4145 lm!1477) lambda!165812)))

(assert (=> d!1372205 (= (extractMap!1125 (toList!4145 lm!1477)) lt!1669445)))

(declare-fun b!4482967 () Bool)

(declare-fun addToMapMapFromBucket!622 (List!50526 ListMap!3407) ListMap!3407)

(assert (=> b!4482967 (= e!2792124 (addToMapMapFromBucket!622 (_2!28650 (h!56194 (toList!4145 lm!1477))) (extractMap!1125 (t!357481 (toList!4145 lm!1477)))))))

(declare-fun b!4482968 () Bool)

(assert (=> b!4482968 (= e!2792124 (ListMap!3408 Nil!50402))))

(assert (= (and d!1372205 c!763620) b!4482967))

(assert (= (and d!1372205 (not c!763620)) b!4482968))

(declare-fun m!5203475 () Bool)

(assert (=> d!1372205 m!5203475))

(declare-fun m!5203477 () Bool)

(assert (=> d!1372205 m!5203477))

(declare-fun m!5203479 () Bool)

(assert (=> b!4482967 m!5203479))

(assert (=> b!4482967 m!5203479))

(declare-fun m!5203481 () Bool)

(assert (=> b!4482967 m!5203481))

(assert (=> b!4482878 d!1372205))

(declare-fun d!1372211 () Bool)

(declare-fun res!1861563 () Bool)

(declare-fun e!2792129 () Bool)

(assert (=> d!1372211 (=> res!1861563 e!2792129)))

(assert (=> d!1372211 (= res!1861563 (is-Nil!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372211 (= (forall!10071 (toList!4145 lm!1477) lambda!165804) e!2792129)))

(declare-fun b!4482973 () Bool)

(declare-fun e!2792130 () Bool)

(assert (=> b!4482973 (= e!2792129 e!2792130)))

(declare-fun res!1861564 () Bool)

(assert (=> b!4482973 (=> (not res!1861564) (not e!2792130))))

(declare-fun dynLambda!21053 (Int tuple2!50712) Bool)

(assert (=> b!4482973 (= res!1861564 (dynLambda!21053 lambda!165804 (h!56194 (toList!4145 lm!1477))))))

(declare-fun b!4482974 () Bool)

(assert (=> b!4482974 (= e!2792130 (forall!10071 (t!357481 (toList!4145 lm!1477)) lambda!165804))))

(assert (= (and d!1372211 (not res!1861563)) b!4482973))

(assert (= (and b!4482973 res!1861564) b!4482974))

(declare-fun b_lambda!150419 () Bool)

(assert (=> (not b_lambda!150419) (not b!4482973)))

(declare-fun m!5203483 () Bool)

(assert (=> b!4482973 m!5203483))

(declare-fun m!5203485 () Bool)

(assert (=> b!4482974 m!5203485))

(assert (=> start!441162 d!1372211))

(declare-fun d!1372213 () Bool)

(declare-fun isStrictlySorted!368 (List!50527) Bool)

(assert (=> d!1372213 (= (inv!65998 lm!1477) (isStrictlySorted!368 (toList!4145 lm!1477)))))

(declare-fun bs!825544 () Bool)

(assert (= bs!825544 d!1372213))

(declare-fun m!5203487 () Bool)

(assert (=> bs!825544 m!5203487))

(assert (=> start!441162 d!1372213))

(declare-fun d!1372215 () Bool)

(declare-fun res!1861569 () Bool)

(declare-fun e!2792139 () Bool)

(assert (=> d!1372215 (=> res!1861569 e!2792139)))

(assert (=> d!1372215 (= res!1861569 (not (is-Cons!50402 newBucket!178)))))

(assert (=> d!1372215 (= (noDuplicateKeys!1069 newBucket!178) e!2792139)))

(declare-fun b!4482987 () Bool)

(declare-fun e!2792140 () Bool)

(assert (=> b!4482987 (= e!2792139 e!2792140)))

(declare-fun res!1861570 () Bool)

(assert (=> b!4482987 (=> (not res!1861570) (not e!2792140))))

(declare-fun containsKey!1568 (List!50526 K!11813) Bool)

(assert (=> b!4482987 (= res!1861570 (not (containsKey!1568 (t!357480 newBucket!178) (_1!28649 (h!56193 newBucket!178)))))))

(declare-fun b!4482988 () Bool)

(assert (=> b!4482988 (= e!2792140 (noDuplicateKeys!1069 (t!357480 newBucket!178)))))

(assert (= (and d!1372215 (not res!1861569)) b!4482987))

(assert (= (and b!4482987 res!1861570) b!4482988))

(declare-fun m!5203489 () Bool)

(assert (=> b!4482987 m!5203489))

(declare-fun m!5203491 () Bool)

(assert (=> b!4482988 m!5203491))

(assert (=> b!4482884 d!1372215))

(declare-fun d!1372217 () Bool)

(assert (=> d!1372217 (contains!13005 (toList!4145 lm!1477) (tuple2!50713 hash!344 lt!1669380))))

(declare-fun lt!1669451 () Unit!89921)

(declare-fun choose!28803 (List!50527 (_ BitVec 64) List!50526) Unit!89921)

(assert (=> d!1372217 (= lt!1669451 (choose!28803 (toList!4145 lm!1477) hash!344 lt!1669380))))

(declare-fun e!2792145 () Bool)

(assert (=> d!1372217 e!2792145))

(declare-fun res!1861573 () Bool)

(assert (=> d!1372217 (=> (not res!1861573) (not e!2792145))))

(assert (=> d!1372217 (= res!1861573 (isStrictlySorted!368 (toList!4145 lm!1477)))))

(assert (=> d!1372217 (= (lemmaGetValueByKeyImpliesContainsTuple!581 (toList!4145 lm!1477) hash!344 lt!1669380) lt!1669451)))

(declare-fun b!4482995 () Bool)

(declare-datatypes ((Option!10981 0))(
  ( (None!10980) (Some!10980 (v!44372 List!50526)) )
))
(declare-fun getValueByKey!967 (List!50527 (_ BitVec 64)) Option!10981)

(assert (=> b!4482995 (= e!2792145 (= (getValueByKey!967 (toList!4145 lm!1477) hash!344) (Some!10980 lt!1669380)))))

(assert (= (and d!1372217 res!1861573) b!4482995))

(declare-fun m!5203499 () Bool)

(assert (=> d!1372217 m!5203499))

(declare-fun m!5203501 () Bool)

(assert (=> d!1372217 m!5203501))

(assert (=> d!1372217 m!5203487))

(declare-fun m!5203503 () Bool)

(assert (=> b!4482995 m!5203503))

(assert (=> b!4482879 d!1372217))

(declare-fun bs!825545 () Bool)

(declare-fun d!1372221 () Bool)

(assert (= bs!825545 (and d!1372221 start!441162)))

(declare-fun lambda!165815 () Int)

(assert (=> bs!825545 (= lambda!165815 lambda!165804)))

(declare-fun bs!825546 () Bool)

(assert (= bs!825546 (and d!1372221 d!1372205)))

(assert (=> bs!825546 (= lambda!165815 lambda!165812)))

(assert (=> d!1372221 (contains!13006 lm!1477 (hash!2570 hashF!1107 key!3287))))

(declare-fun lt!1669454 () Unit!89921)

(declare-fun choose!28804 (ListLongMap!2777 K!11813 Hashable!5464) Unit!89921)

(assert (=> d!1372221 (= lt!1669454 (choose!28804 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1372221 (forall!10071 (toList!4145 lm!1477) lambda!165815)))

(assert (=> d!1372221 (= (lemmaInGenMapThenLongMapContainsHash!143 lm!1477 key!3287 hashF!1107) lt!1669454)))

(declare-fun bs!825547 () Bool)

(assert (= bs!825547 d!1372221))

(assert (=> bs!825547 m!5203365))

(assert (=> bs!825547 m!5203365))

(declare-fun m!5203505 () Bool)

(assert (=> bs!825547 m!5203505))

(declare-fun m!5203507 () Bool)

(assert (=> bs!825547 m!5203507))

(declare-fun m!5203509 () Bool)

(assert (=> bs!825547 m!5203509))

(assert (=> b!4482879 d!1372221))

(declare-fun d!1372223 () Bool)

(declare-fun get!16448 (Option!10981) List!50526)

(assert (=> d!1372223 (= (apply!11806 lm!1477 hash!344) (get!16448 (getValueByKey!967 (toList!4145 lm!1477) hash!344)))))

(declare-fun bs!825548 () Bool)

(assert (= bs!825548 d!1372223))

(assert (=> bs!825548 m!5203503))

(assert (=> bs!825548 m!5203503))

(declare-fun m!5203511 () Bool)

(assert (=> bs!825548 m!5203511))

(assert (=> b!4482879 d!1372223))

(declare-fun d!1372225 () Bool)

(declare-fun lt!1669459 () Bool)

(declare-fun content!8180 (List!50527) (Set tuple2!50712))

(assert (=> d!1372225 (= lt!1669459 (set.member lt!1669379 (content!8180 (toList!4145 lm!1477))))))

(declare-fun e!2792151 () Bool)

(assert (=> d!1372225 (= lt!1669459 e!2792151)))

(declare-fun res!1861578 () Bool)

(assert (=> d!1372225 (=> (not res!1861578) (not e!2792151))))

(assert (=> d!1372225 (= res!1861578 (is-Cons!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372225 (= (contains!13005 (toList!4145 lm!1477) lt!1669379) lt!1669459)))

(declare-fun b!4483000 () Bool)

(declare-fun e!2792150 () Bool)

(assert (=> b!4483000 (= e!2792151 e!2792150)))

(declare-fun res!1861579 () Bool)

(assert (=> b!4483000 (=> res!1861579 e!2792150)))

(assert (=> b!4483000 (= res!1861579 (= (h!56194 (toList!4145 lm!1477)) lt!1669379))))

(declare-fun b!4483001 () Bool)

(assert (=> b!4483001 (= e!2792150 (contains!13005 (t!357481 (toList!4145 lm!1477)) lt!1669379))))

(assert (= (and d!1372225 res!1861578) b!4483000))

(assert (= (and b!4483000 (not res!1861579)) b!4483001))

(declare-fun m!5203513 () Bool)

(assert (=> d!1372225 m!5203513))

(declare-fun m!5203515 () Bool)

(assert (=> d!1372225 m!5203515))

(declare-fun m!5203517 () Bool)

(assert (=> b!4483001 m!5203517))

(assert (=> b!4482879 d!1372225))

(declare-fun d!1372227 () Bool)

(declare-fun e!2792156 () Bool)

(assert (=> d!1372227 e!2792156))

(declare-fun res!1861582 () Bool)

(assert (=> d!1372227 (=> res!1861582 e!2792156)))

(declare-fun lt!1669470 () Bool)

(assert (=> d!1372227 (= res!1861582 (not lt!1669470))))

(declare-fun lt!1669469 () Bool)

(assert (=> d!1372227 (= lt!1669470 lt!1669469)))

(declare-fun lt!1669472 () Unit!89921)

(declare-fun e!2792157 () Unit!89921)

(assert (=> d!1372227 (= lt!1669472 e!2792157)))

(declare-fun c!763629 () Bool)

(assert (=> d!1372227 (= c!763629 lt!1669469)))

(declare-fun containsKey!1569 (List!50527 (_ BitVec 64)) Bool)

(assert (=> d!1372227 (= lt!1669469 (containsKey!1569 (toList!4145 lm!1477) lt!1669381))))

(assert (=> d!1372227 (= (contains!13006 lm!1477 lt!1669381) lt!1669470)))

(declare-fun b!4483008 () Bool)

(declare-fun lt!1669471 () Unit!89921)

(assert (=> b!4483008 (= e!2792157 lt!1669471)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!871 (List!50527 (_ BitVec 64)) Unit!89921)

(assert (=> b!4483008 (= lt!1669471 (lemmaContainsKeyImpliesGetValueByKeyDefined!871 (toList!4145 lm!1477) lt!1669381))))

(declare-fun isDefined!8268 (Option!10981) Bool)

(assert (=> b!4483008 (isDefined!8268 (getValueByKey!967 (toList!4145 lm!1477) lt!1669381))))

(declare-fun b!4483009 () Bool)

(declare-fun Unit!89927 () Unit!89921)

(assert (=> b!4483009 (= e!2792157 Unit!89927)))

(declare-fun b!4483010 () Bool)

(assert (=> b!4483010 (= e!2792156 (isDefined!8268 (getValueByKey!967 (toList!4145 lm!1477) lt!1669381)))))

(assert (= (and d!1372227 c!763629) b!4483008))

(assert (= (and d!1372227 (not c!763629)) b!4483009))

(assert (= (and d!1372227 (not res!1861582)) b!4483010))

(declare-fun m!5203525 () Bool)

(assert (=> d!1372227 m!5203525))

(declare-fun m!5203527 () Bool)

(assert (=> b!4483008 m!5203527))

(declare-fun m!5203529 () Bool)

(assert (=> b!4483008 m!5203529))

(assert (=> b!4483008 m!5203529))

(declare-fun m!5203531 () Bool)

(assert (=> b!4483008 m!5203531))

(assert (=> b!4483010 m!5203529))

(assert (=> b!4483010 m!5203529))

(assert (=> b!4483010 m!5203531))

(assert (=> b!4482879 d!1372227))

(declare-fun d!1372231 () Bool)

(assert (=> d!1372231 (dynLambda!21053 lambda!165804 lt!1669379)))

(declare-fun lt!1669477 () Unit!89921)

(declare-fun choose!28805 (List!50527 Int tuple2!50712) Unit!89921)

(assert (=> d!1372231 (= lt!1669477 (choose!28805 (toList!4145 lm!1477) lambda!165804 lt!1669379))))

(declare-fun e!2792164 () Bool)

(assert (=> d!1372231 e!2792164))

(declare-fun res!1861589 () Bool)

(assert (=> d!1372231 (=> (not res!1861589) (not e!2792164))))

(assert (=> d!1372231 (= res!1861589 (forall!10071 (toList!4145 lm!1477) lambda!165804))))

(assert (=> d!1372231 (= (forallContained!2332 (toList!4145 lm!1477) lambda!165804 lt!1669379) lt!1669477)))

(declare-fun b!4483017 () Bool)

(assert (=> b!4483017 (= e!2792164 (contains!13005 (toList!4145 lm!1477) lt!1669379))))

(assert (= (and d!1372231 res!1861589) b!4483017))

(declare-fun b_lambda!150421 () Bool)

(assert (=> (not b_lambda!150421) (not d!1372231)))

(declare-fun m!5203533 () Bool)

(assert (=> d!1372231 m!5203533))

(declare-fun m!5203535 () Bool)

(assert (=> d!1372231 m!5203535))

(assert (=> d!1372231 m!5203387))

(assert (=> b!4483017 m!5203371))

(assert (=> b!4482879 d!1372231))

(declare-fun b!4483029 () Bool)

(declare-fun e!2792171 () List!50526)

(declare-fun e!2792172 () List!50526)

(assert (=> b!4483029 (= e!2792171 e!2792172)))

(declare-fun c!763634 () Bool)

(assert (=> b!4483029 (= c!763634 (is-Cons!50402 lt!1669380))))

(declare-fun b!4483030 () Bool)

(assert (=> b!4483030 (= e!2792172 (Cons!50402 (h!56193 lt!1669380) (removePairForKey!696 (t!357480 lt!1669380) key!3287)))))

(declare-fun d!1372233 () Bool)

(declare-fun lt!1669481 () List!50526)

(assert (=> d!1372233 (not (containsKey!1568 lt!1669481 key!3287))))

(assert (=> d!1372233 (= lt!1669481 e!2792171)))

(declare-fun c!763635 () Bool)

(assert (=> d!1372233 (= c!763635 (and (is-Cons!50402 lt!1669380) (= (_1!28649 (h!56193 lt!1669380)) key!3287)))))

(assert (=> d!1372233 (noDuplicateKeys!1069 lt!1669380)))

(assert (=> d!1372233 (= (removePairForKey!696 lt!1669380 key!3287) lt!1669481)))

(declare-fun b!4483031 () Bool)

(assert (=> b!4483031 (= e!2792172 Nil!50402)))

(declare-fun b!4483028 () Bool)

(assert (=> b!4483028 (= e!2792171 (t!357480 lt!1669380))))

(assert (= (and d!1372233 c!763635) b!4483028))

(assert (= (and d!1372233 (not c!763635)) b!4483029))

(assert (= (and b!4483029 c!763634) b!4483030))

(assert (= (and b!4483029 (not c!763634)) b!4483031))

(declare-fun m!5203543 () Bool)

(assert (=> b!4483030 m!5203543))

(declare-fun m!5203545 () Bool)

(assert (=> d!1372233 m!5203545))

(declare-fun m!5203547 () Bool)

(assert (=> d!1372233 m!5203547))

(assert (=> b!4482879 d!1372233))

(declare-fun bs!825552 () Bool)

(declare-fun d!1372237 () Bool)

(assert (= bs!825552 (and d!1372237 start!441162)))

(declare-fun lambda!165824 () Int)

(assert (=> bs!825552 (not (= lambda!165824 lambda!165804))))

(declare-fun bs!825553 () Bool)

(assert (= bs!825553 (and d!1372237 d!1372205)))

(assert (=> bs!825553 (not (= lambda!165824 lambda!165812))))

(declare-fun bs!825554 () Bool)

(assert (= bs!825554 (and d!1372237 d!1372221)))

(assert (=> bs!825554 (not (= lambda!165824 lambda!165815))))

(assert (=> d!1372237 true))

(assert (=> d!1372237 (= (allKeysSameHashInMap!1176 lm!1477 hashF!1107) (forall!10071 (toList!4145 lm!1477) lambda!165824))))

(declare-fun bs!825555 () Bool)

(assert (= bs!825555 d!1372237))

(declare-fun m!5203551 () Bool)

(assert (=> bs!825555 m!5203551))

(assert (=> b!4482885 d!1372237))

(declare-fun d!1372241 () Bool)

(declare-fun e!2792173 () Bool)

(assert (=> d!1372241 e!2792173))

(declare-fun res!1861592 () Bool)

(assert (=> d!1372241 (=> res!1861592 e!2792173)))

(declare-fun lt!1669483 () Bool)

(assert (=> d!1372241 (= res!1861592 (not lt!1669483))))

(declare-fun lt!1669482 () Bool)

(assert (=> d!1372241 (= lt!1669483 lt!1669482)))

(declare-fun lt!1669485 () Unit!89921)

(declare-fun e!2792174 () Unit!89921)

(assert (=> d!1372241 (= lt!1669485 e!2792174)))

(declare-fun c!763636 () Bool)

(assert (=> d!1372241 (= c!763636 lt!1669482)))

(assert (=> d!1372241 (= lt!1669482 (containsKey!1569 (toList!4145 (tail!7582 lm!1477)) hash!344))))

(assert (=> d!1372241 (= (contains!13006 (tail!7582 lm!1477) hash!344) lt!1669483)))

(declare-fun b!4483038 () Bool)

(declare-fun lt!1669484 () Unit!89921)

(assert (=> b!4483038 (= e!2792174 lt!1669484)))

(assert (=> b!4483038 (= lt!1669484 (lemmaContainsKeyImpliesGetValueByKeyDefined!871 (toList!4145 (tail!7582 lm!1477)) hash!344))))

(assert (=> b!4483038 (isDefined!8268 (getValueByKey!967 (toList!4145 (tail!7582 lm!1477)) hash!344))))

(declare-fun b!4483039 () Bool)

(declare-fun Unit!89928 () Unit!89921)

(assert (=> b!4483039 (= e!2792174 Unit!89928)))

(declare-fun b!4483040 () Bool)

(assert (=> b!4483040 (= e!2792173 (isDefined!8268 (getValueByKey!967 (toList!4145 (tail!7582 lm!1477)) hash!344)))))

(assert (= (and d!1372241 c!763636) b!4483038))

(assert (= (and d!1372241 (not c!763636)) b!4483039))

(assert (= (and d!1372241 (not res!1861592)) b!4483040))

(declare-fun m!5203553 () Bool)

(assert (=> d!1372241 m!5203553))

(declare-fun m!5203555 () Bool)

(assert (=> b!4483038 m!5203555))

(declare-fun m!5203557 () Bool)

(assert (=> b!4483038 m!5203557))

(assert (=> b!4483038 m!5203557))

(declare-fun m!5203559 () Bool)

(assert (=> b!4483038 m!5203559))

(assert (=> b!4483040 m!5203557))

(assert (=> b!4483040 m!5203557))

(assert (=> b!4483040 m!5203559))

(assert (=> b!4482880 d!1372241))

(declare-fun d!1372243 () Bool)

(declare-fun tail!7584 (List!50527) List!50527)

(assert (=> d!1372243 (= (tail!7582 lm!1477) (ListLongMap!2778 (tail!7584 (toList!4145 lm!1477))))))

(declare-fun bs!825556 () Bool)

(assert (= bs!825556 d!1372243))

(declare-fun m!5203561 () Bool)

(assert (=> bs!825556 m!5203561))

(assert (=> b!4482880 d!1372243))

(declare-fun d!1372245 () Bool)

(assert (=> d!1372245 true))

(assert (=> d!1372245 true))

(declare-fun lambda!165827 () Int)

(declare-fun forall!10073 (List!50526 Int) Bool)

(assert (=> d!1372245 (= (allKeysSameHash!923 newBucket!178 hash!344 hashF!1107) (forall!10073 newBucket!178 lambda!165827))))

(declare-fun bs!825558 () Bool)

(assert (= bs!825558 d!1372245))

(declare-fun m!5203565 () Bool)

(assert (=> bs!825558 m!5203565))

(assert (=> b!4482881 d!1372245))

(declare-fun d!1372249 () Bool)

(declare-fun hash!2572 (Hashable!5464 K!11813) (_ BitVec 64))

(assert (=> d!1372249 (= (hash!2570 hashF!1107 key!3287) (hash!2572 hashF!1107 key!3287))))

(declare-fun bs!825559 () Bool)

(assert (= bs!825559 d!1372249))

(declare-fun m!5203567 () Bool)

(assert (=> bs!825559 m!5203567))

(assert (=> b!4482887 d!1372249))

(declare-fun b!4483053 () Bool)

(declare-fun e!2792181 () Bool)

(declare-fun tp!1336808 () Bool)

(declare-fun tp!1336809 () Bool)

(assert (=> b!4483053 (= e!2792181 (and tp!1336808 tp!1336809))))

(assert (=> b!4482883 (= tp!1336796 e!2792181)))

(assert (= (and b!4482883 (is-Cons!50403 (toList!4145 lm!1477))) b!4483053))

(declare-fun e!2792184 () Bool)

(declare-fun tp!1336812 () Bool)

(declare-fun b!4483058 () Bool)

(assert (=> b!4483058 (= e!2792184 (and tp_is_empty!27553 tp_is_empty!27555 tp!1336812))))

(assert (=> b!4482886 (= tp!1336797 e!2792184)))

(assert (= (and b!4482886 (is-Cons!50402 (t!357480 newBucket!178))) b!4483058))

(declare-fun b_lambda!150423 () Bool)

(assert (= b_lambda!150419 (or start!441162 b_lambda!150423)))

(declare-fun bs!825560 () Bool)

(declare-fun d!1372251 () Bool)

(assert (= bs!825560 (and d!1372251 start!441162)))

(assert (=> bs!825560 (= (dynLambda!21053 lambda!165804 (h!56194 (toList!4145 lm!1477))) (noDuplicateKeys!1069 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))

(declare-fun m!5203569 () Bool)

(assert (=> bs!825560 m!5203569))

(assert (=> b!4482973 d!1372251))

(declare-fun b_lambda!150425 () Bool)

(assert (= b_lambda!150421 (or start!441162 b_lambda!150425)))

(declare-fun bs!825561 () Bool)

(declare-fun d!1372253 () Bool)

(assert (= bs!825561 (and d!1372253 start!441162)))

(assert (=> bs!825561 (= (dynLambda!21053 lambda!165804 lt!1669379) (noDuplicateKeys!1069 (_2!28650 lt!1669379)))))

(declare-fun m!5203571 () Bool)

(assert (=> bs!825561 m!5203571))

(assert (=> d!1372231 d!1372253))

(push 1)

(assert (not b!4482950))

(assert (not d!1372227))

(assert (not bm!312129))

(assert (not b!4483053))

(assert (not d!1372217))

(assert (not d!1372245))

(assert (not b!4482974))

(assert (not b!4482948))

(assert tp_is_empty!27555)

(assert (not d!1372231))

(assert (not b_lambda!150425))

(assert (not d!1372233))

(assert (not b!4483030))

(assert (not b!4483017))

(assert (not b!4483001))

(assert (not b!4483058))

(assert (not b!4482952))

(assert (not d!1372205))

(assert (not b!4482953))

(assert (not b_lambda!150423))

(assert (not b!4483010))

(assert (not b!4483008))

(assert (not b!4482967))

(assert (not d!1372213))

(assert (not d!1372243))

(assert (not d!1372237))

(assert (not b!4482954))

(assert (not d!1372221))

(assert (not b!4483038))

(assert (not b!4482987))

(assert (not bs!825560))

(assert (not d!1372199))

(assert (not b!4482958))

(assert tp_is_empty!27553)

(assert (not b!4482988))

(assert (not d!1372223))

(assert (not d!1372225))

(assert (not b!4482995))

(assert (not b!4483040))

(assert (not bs!825561))

(assert (not d!1372249))

(assert (not d!1372241))

(assert (not b!4482955))

(assert (not d!1372201))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1372275 () Bool)

(declare-fun res!1861619 () Bool)

(declare-fun e!2792226 () Bool)

(assert (=> d!1372275 (=> res!1861619 e!2792226)))

(assert (=> d!1372275 (= res!1861619 (and (is-Cons!50403 (toList!4145 (tail!7582 lm!1477))) (= (_1!28650 (h!56194 (toList!4145 (tail!7582 lm!1477)))) hash!344)))))

(assert (=> d!1372275 (= (containsKey!1569 (toList!4145 (tail!7582 lm!1477)) hash!344) e!2792226)))

(declare-fun b!4483119 () Bool)

(declare-fun e!2792227 () Bool)

(assert (=> b!4483119 (= e!2792226 e!2792227)))

(declare-fun res!1861620 () Bool)

(assert (=> b!4483119 (=> (not res!1861620) (not e!2792227))))

(assert (=> b!4483119 (= res!1861620 (and (or (not (is-Cons!50403 (toList!4145 (tail!7582 lm!1477)))) (bvsle (_1!28650 (h!56194 (toList!4145 (tail!7582 lm!1477)))) hash!344)) (is-Cons!50403 (toList!4145 (tail!7582 lm!1477))) (bvslt (_1!28650 (h!56194 (toList!4145 (tail!7582 lm!1477)))) hash!344)))))

(declare-fun b!4483120 () Bool)

(assert (=> b!4483120 (= e!2792227 (containsKey!1569 (t!357481 (toList!4145 (tail!7582 lm!1477))) hash!344))))

(assert (= (and d!1372275 (not res!1861619)) b!4483119))

(assert (= (and b!4483119 res!1861620) b!4483120))

(declare-fun m!5203627 () Bool)

(assert (=> b!4483120 m!5203627))

(assert (=> d!1372241 d!1372275))

(declare-fun d!1372277 () Bool)

(assert (=> d!1372277 (= (tail!7584 (toList!4145 lm!1477)) (t!357481 (toList!4145 lm!1477)))))

(assert (=> d!1372243 d!1372277))

(declare-fun d!1372279 () Bool)

(declare-fun lt!1669519 () Bool)

(declare-fun content!8182 (List!50530) (Set K!11813))

(assert (=> d!1372279 (= lt!1669519 (set.member key!3287 (content!8182 (keys!17437 (extractMap!1125 (toList!4145 lm!1477))))))))

(declare-fun e!2792232 () Bool)

(assert (=> d!1372279 (= lt!1669519 e!2792232)))

(declare-fun res!1861626 () Bool)

(assert (=> d!1372279 (=> (not res!1861626) (not e!2792232))))

(assert (=> d!1372279 (= res!1861626 (is-Cons!50406 (keys!17437 (extractMap!1125 (toList!4145 lm!1477)))))))

(assert (=> d!1372279 (= (contains!13010 (keys!17437 (extractMap!1125 (toList!4145 lm!1477))) key!3287) lt!1669519)))

(declare-fun b!4483125 () Bool)

(declare-fun e!2792233 () Bool)

(assert (=> b!4483125 (= e!2792232 e!2792233)))

(declare-fun res!1861625 () Bool)

(assert (=> b!4483125 (=> res!1861625 e!2792233)))

(assert (=> b!4483125 (= res!1861625 (= (h!56199 (keys!17437 (extractMap!1125 (toList!4145 lm!1477)))) key!3287))))

(declare-fun b!4483126 () Bool)

(assert (=> b!4483126 (= e!2792233 (contains!13010 (t!357484 (keys!17437 (extractMap!1125 (toList!4145 lm!1477)))) key!3287))))

(assert (= (and d!1372279 res!1861626) b!4483125))

(assert (= (and b!4483125 (not res!1861625)) b!4483126))

(assert (=> d!1372279 m!5203457))

(declare-fun m!5203629 () Bool)

(assert (=> d!1372279 m!5203629))

(declare-fun m!5203631 () Bool)

(assert (=> d!1372279 m!5203631))

(declare-fun m!5203633 () Bool)

(assert (=> b!4483126 m!5203633))

(assert (=> b!4482948 d!1372279))

(declare-fun b!4483134 () Bool)

(assert (=> b!4483134 true))

(declare-fun d!1372281 () Bool)

(declare-fun e!2792236 () Bool)

(assert (=> d!1372281 e!2792236))

(declare-fun res!1861633 () Bool)

(assert (=> d!1372281 (=> (not res!1861633) (not e!2792236))))

(declare-fun lt!1669522 () List!50530)

(declare-fun noDuplicate!707 (List!50530) Bool)

(assert (=> d!1372281 (= res!1861633 (noDuplicate!707 lt!1669522))))

(assert (=> d!1372281 (= lt!1669522 (getKeysList!402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))

(assert (=> d!1372281 (= (keys!17437 (extractMap!1125 (toList!4145 lm!1477))) lt!1669522)))

(declare-fun b!4483133 () Bool)

(declare-fun res!1861634 () Bool)

(assert (=> b!4483133 (=> (not res!1861634) (not e!2792236))))

(declare-fun length!270 (List!50530) Int)

(declare-fun length!271 (List!50526) Int)

(assert (=> b!4483133 (= res!1861634 (= (length!270 lt!1669522) (length!271 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))))

(declare-fun res!1861635 () Bool)

(assert (=> b!4483134 (=> (not res!1861635) (not e!2792236))))

(declare-fun lambda!165838 () Int)

(declare-fun forall!10075 (List!50530 Int) Bool)

(assert (=> b!4483134 (= res!1861635 (forall!10075 lt!1669522 lambda!165838))))

(declare-fun lambda!165839 () Int)

(declare-fun b!4483135 () Bool)

(declare-fun map!11053 (List!50526 Int) List!50530)

(assert (=> b!4483135 (= e!2792236 (= (content!8182 lt!1669522) (content!8182 (map!11053 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) lambda!165839))))))

(assert (= (and d!1372281 res!1861633) b!4483133))

(assert (= (and b!4483133 res!1861634) b!4483134))

(assert (= (and b!4483134 res!1861635) b!4483135))

(declare-fun m!5203635 () Bool)

(assert (=> d!1372281 m!5203635))

(assert (=> d!1372281 m!5203463))

(declare-fun m!5203637 () Bool)

(assert (=> b!4483133 m!5203637))

(declare-fun m!5203639 () Bool)

(assert (=> b!4483133 m!5203639))

(declare-fun m!5203641 () Bool)

(assert (=> b!4483134 m!5203641))

(declare-fun m!5203643 () Bool)

(assert (=> b!4483135 m!5203643))

(declare-fun m!5203645 () Bool)

(assert (=> b!4483135 m!5203645))

(assert (=> b!4483135 m!5203645))

(declare-fun m!5203647 () Bool)

(assert (=> b!4483135 m!5203647))

(assert (=> b!4482948 d!1372281))

(declare-fun d!1372283 () Bool)

(declare-fun isEmpty!28522 (Option!10981) Bool)

(assert (=> d!1372283 (= (isDefined!8268 (getValueByKey!967 (toList!4145 lm!1477) lt!1669381)) (not (isEmpty!28522 (getValueByKey!967 (toList!4145 lm!1477) lt!1669381))))))

(declare-fun bs!825573 () Bool)

(assert (= bs!825573 d!1372283))

(assert (=> bs!825573 m!5203529))

(declare-fun m!5203649 () Bool)

(assert (=> bs!825573 m!5203649))

(assert (=> b!4483010 d!1372283))

(declare-fun b!4483146 () Bool)

(declare-fun e!2792241 () Option!10981)

(assert (=> b!4483146 (= e!2792241 (Some!10980 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))

(declare-fun b!4483148 () Bool)

(declare-fun e!2792242 () Option!10981)

(assert (=> b!4483148 (= e!2792242 (getValueByKey!967 (t!357481 (toList!4145 lm!1477)) lt!1669381))))

(declare-fun b!4483147 () Bool)

(assert (=> b!4483147 (= e!2792241 e!2792242)))

(declare-fun c!763655 () Bool)

(assert (=> b!4483147 (= c!763655 (and (is-Cons!50403 (toList!4145 lm!1477)) (not (= (_1!28650 (h!56194 (toList!4145 lm!1477))) lt!1669381))))))

(declare-fun d!1372285 () Bool)

(declare-fun c!763654 () Bool)

(assert (=> d!1372285 (= c!763654 (and (is-Cons!50403 (toList!4145 lm!1477)) (= (_1!28650 (h!56194 (toList!4145 lm!1477))) lt!1669381)))))

(assert (=> d!1372285 (= (getValueByKey!967 (toList!4145 lm!1477) lt!1669381) e!2792241)))

(declare-fun b!4483149 () Bool)

(assert (=> b!4483149 (= e!2792242 None!10980)))

(assert (= (and d!1372285 c!763654) b!4483146))

(assert (= (and d!1372285 (not c!763654)) b!4483147))

(assert (= (and b!4483147 c!763655) b!4483148))

(assert (= (and b!4483147 (not c!763655)) b!4483149))

(declare-fun m!5203651 () Bool)

(assert (=> b!4483148 m!5203651))

(assert (=> b!4483010 d!1372285))

(declare-fun d!1372287 () Bool)

(declare-fun c!763658 () Bool)

(assert (=> d!1372287 (= c!763658 (is-Nil!50403 (toList!4145 lm!1477)))))

(declare-fun e!2792245 () (Set tuple2!50712))

(assert (=> d!1372287 (= (content!8180 (toList!4145 lm!1477)) e!2792245)))

(declare-fun b!4483154 () Bool)

(assert (=> b!4483154 (= e!2792245 (as set.empty (Set tuple2!50712)))))

(declare-fun b!4483155 () Bool)

(assert (=> b!4483155 (= e!2792245 (set.union (set.insert (h!56194 (toList!4145 lm!1477)) (as set.empty (Set tuple2!50712))) (content!8180 (t!357481 (toList!4145 lm!1477)))))))

(assert (= (and d!1372287 c!763658) b!4483154))

(assert (= (and d!1372287 (not c!763658)) b!4483155))

(declare-fun m!5203653 () Bool)

(assert (=> b!4483155 m!5203653))

(declare-fun m!5203655 () Bool)

(assert (=> b!4483155 m!5203655))

(assert (=> d!1372225 d!1372287))

(assert (=> b!4482950 d!1372279))

(assert (=> b!4482950 d!1372281))

(declare-fun d!1372289 () Bool)

(declare-fun lt!1669523 () Bool)

(assert (=> d!1372289 (= lt!1669523 (set.member (tuple2!50713 hash!344 lt!1669380) (content!8180 (toList!4145 lm!1477))))))

(declare-fun e!2792247 () Bool)

(assert (=> d!1372289 (= lt!1669523 e!2792247)))

(declare-fun res!1861636 () Bool)

(assert (=> d!1372289 (=> (not res!1861636) (not e!2792247))))

(assert (=> d!1372289 (= res!1861636 (is-Cons!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372289 (= (contains!13005 (toList!4145 lm!1477) (tuple2!50713 hash!344 lt!1669380)) lt!1669523)))

(declare-fun b!4483156 () Bool)

(declare-fun e!2792246 () Bool)

(assert (=> b!4483156 (= e!2792247 e!2792246)))

(declare-fun res!1861637 () Bool)

(assert (=> b!4483156 (=> res!1861637 e!2792246)))

(assert (=> b!4483156 (= res!1861637 (= (h!56194 (toList!4145 lm!1477)) (tuple2!50713 hash!344 lt!1669380)))))

(declare-fun b!4483157 () Bool)

(assert (=> b!4483157 (= e!2792246 (contains!13005 (t!357481 (toList!4145 lm!1477)) (tuple2!50713 hash!344 lt!1669380)))))

(assert (= (and d!1372289 res!1861636) b!4483156))

(assert (= (and b!4483156 (not res!1861637)) b!4483157))

(assert (=> d!1372289 m!5203513))

(declare-fun m!5203657 () Bool)

(assert (=> d!1372289 m!5203657))

(declare-fun m!5203659 () Bool)

(assert (=> b!4483157 m!5203659))

(assert (=> d!1372217 d!1372289))

(declare-fun d!1372291 () Bool)

(assert (=> d!1372291 (contains!13005 (toList!4145 lm!1477) (tuple2!50713 hash!344 lt!1669380))))

(assert (=> d!1372291 true))

(declare-fun _$14!1021 () Unit!89921)

(assert (=> d!1372291 (= (choose!28803 (toList!4145 lm!1477) hash!344 lt!1669380) _$14!1021)))

(declare-fun bs!825574 () Bool)

(assert (= bs!825574 d!1372291))

(assert (=> bs!825574 m!5203499))

(assert (=> d!1372217 d!1372291))

(declare-fun d!1372293 () Bool)

(declare-fun res!1861642 () Bool)

(declare-fun e!2792252 () Bool)

(assert (=> d!1372293 (=> res!1861642 e!2792252)))

(assert (=> d!1372293 (= res!1861642 (or (is-Nil!50403 (toList!4145 lm!1477)) (is-Nil!50403 (t!357481 (toList!4145 lm!1477)))))))

(assert (=> d!1372293 (= (isStrictlySorted!368 (toList!4145 lm!1477)) e!2792252)))

(declare-fun b!4483162 () Bool)

(declare-fun e!2792253 () Bool)

(assert (=> b!4483162 (= e!2792252 e!2792253)))

(declare-fun res!1861643 () Bool)

(assert (=> b!4483162 (=> (not res!1861643) (not e!2792253))))

(assert (=> b!4483162 (= res!1861643 (bvslt (_1!28650 (h!56194 (toList!4145 lm!1477))) (_1!28650 (h!56194 (t!357481 (toList!4145 lm!1477))))))))

(declare-fun b!4483163 () Bool)

(assert (=> b!4483163 (= e!2792253 (isStrictlySorted!368 (t!357481 (toList!4145 lm!1477))))))

(assert (= (and d!1372293 (not res!1861642)) b!4483162))

(assert (= (and b!4483162 res!1861643) b!4483163))

(declare-fun m!5203661 () Bool)

(assert (=> b!4483163 m!5203661))

(assert (=> d!1372217 d!1372293))

(declare-fun b!4483165 () Bool)

(declare-fun e!2792254 () List!50526)

(declare-fun e!2792255 () List!50526)

(assert (=> b!4483165 (= e!2792254 e!2792255)))

(declare-fun c!763659 () Bool)

(assert (=> b!4483165 (= c!763659 (is-Cons!50402 (t!357480 lt!1669380)))))

(declare-fun b!4483166 () Bool)

(assert (=> b!4483166 (= e!2792255 (Cons!50402 (h!56193 (t!357480 lt!1669380)) (removePairForKey!696 (t!357480 (t!357480 lt!1669380)) key!3287)))))

(declare-fun d!1372295 () Bool)

(declare-fun lt!1669524 () List!50526)

(assert (=> d!1372295 (not (containsKey!1568 lt!1669524 key!3287))))

(assert (=> d!1372295 (= lt!1669524 e!2792254)))

(declare-fun c!763660 () Bool)

(assert (=> d!1372295 (= c!763660 (and (is-Cons!50402 (t!357480 lt!1669380)) (= (_1!28649 (h!56193 (t!357480 lt!1669380))) key!3287)))))

(assert (=> d!1372295 (noDuplicateKeys!1069 (t!357480 lt!1669380))))

(assert (=> d!1372295 (= (removePairForKey!696 (t!357480 lt!1669380) key!3287) lt!1669524)))

(declare-fun b!4483167 () Bool)

(assert (=> b!4483167 (= e!2792255 Nil!50402)))

(declare-fun b!4483164 () Bool)

(assert (=> b!4483164 (= e!2792254 (t!357480 (t!357480 lt!1669380)))))

(assert (= (and d!1372295 c!763660) b!4483164))

(assert (= (and d!1372295 (not c!763660)) b!4483165))

(assert (= (and b!4483165 c!763659) b!4483166))

(assert (= (and b!4483165 (not c!763659)) b!4483167))

(declare-fun m!5203663 () Bool)

(assert (=> b!4483166 m!5203663))

(declare-fun m!5203665 () Bool)

(assert (=> d!1372295 m!5203665))

(declare-fun m!5203667 () Bool)

(assert (=> d!1372295 m!5203667))

(assert (=> b!4483030 d!1372295))

(assert (=> b!4483017 d!1372225))

(declare-fun d!1372297 () Bool)

(declare-fun e!2792256 () Bool)

(assert (=> d!1372297 e!2792256))

(declare-fun res!1861644 () Bool)

(assert (=> d!1372297 (=> res!1861644 e!2792256)))

(declare-fun lt!1669526 () Bool)

(assert (=> d!1372297 (= res!1861644 (not lt!1669526))))

(declare-fun lt!1669525 () Bool)

(assert (=> d!1372297 (= lt!1669526 lt!1669525)))

(declare-fun lt!1669528 () Unit!89921)

(declare-fun e!2792257 () Unit!89921)

(assert (=> d!1372297 (= lt!1669528 e!2792257)))

(declare-fun c!763661 () Bool)

(assert (=> d!1372297 (= c!763661 lt!1669525)))

(assert (=> d!1372297 (= lt!1669525 (containsKey!1569 (toList!4145 lm!1477) (hash!2570 hashF!1107 key!3287)))))

(assert (=> d!1372297 (= (contains!13006 lm!1477 (hash!2570 hashF!1107 key!3287)) lt!1669526)))

(declare-fun b!4483168 () Bool)

(declare-fun lt!1669527 () Unit!89921)

(assert (=> b!4483168 (= e!2792257 lt!1669527)))

(assert (=> b!4483168 (= lt!1669527 (lemmaContainsKeyImpliesGetValueByKeyDefined!871 (toList!4145 lm!1477) (hash!2570 hashF!1107 key!3287)))))

(assert (=> b!4483168 (isDefined!8268 (getValueByKey!967 (toList!4145 lm!1477) (hash!2570 hashF!1107 key!3287)))))

(declare-fun b!4483169 () Bool)

(declare-fun Unit!89933 () Unit!89921)

(assert (=> b!4483169 (= e!2792257 Unit!89933)))

(declare-fun b!4483170 () Bool)

(assert (=> b!4483170 (= e!2792256 (isDefined!8268 (getValueByKey!967 (toList!4145 lm!1477) (hash!2570 hashF!1107 key!3287))))))

(assert (= (and d!1372297 c!763661) b!4483168))

(assert (= (and d!1372297 (not c!763661)) b!4483169))

(assert (= (and d!1372297 (not res!1861644)) b!4483170))

(assert (=> d!1372297 m!5203365))

(declare-fun m!5203669 () Bool)

(assert (=> d!1372297 m!5203669))

(assert (=> b!4483168 m!5203365))

(declare-fun m!5203671 () Bool)

(assert (=> b!4483168 m!5203671))

(assert (=> b!4483168 m!5203365))

(declare-fun m!5203673 () Bool)

(assert (=> b!4483168 m!5203673))

(assert (=> b!4483168 m!5203673))

(declare-fun m!5203675 () Bool)

(assert (=> b!4483168 m!5203675))

(assert (=> b!4483170 m!5203365))

(assert (=> b!4483170 m!5203673))

(assert (=> b!4483170 m!5203673))

(assert (=> b!4483170 m!5203675))

(assert (=> d!1372221 d!1372297))

(assert (=> d!1372221 d!1372249))

(declare-fun d!1372299 () Bool)

(assert (=> d!1372299 (contains!13006 lm!1477 (hash!2570 hashF!1107 key!3287))))

(assert (=> d!1372299 true))

(declare-fun _$27!1113 () Unit!89921)

(assert (=> d!1372299 (= (choose!28804 lm!1477 key!3287 hashF!1107) _$27!1113)))

(declare-fun bs!825575 () Bool)

(assert (= bs!825575 d!1372299))

(assert (=> bs!825575 m!5203365))

(assert (=> bs!825575 m!5203365))

(assert (=> bs!825575 m!5203505))

(assert (=> d!1372221 d!1372299))

(declare-fun d!1372301 () Bool)

(declare-fun res!1861645 () Bool)

(declare-fun e!2792258 () Bool)

(assert (=> d!1372301 (=> res!1861645 e!2792258)))

(assert (=> d!1372301 (= res!1861645 (is-Nil!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372301 (= (forall!10071 (toList!4145 lm!1477) lambda!165815) e!2792258)))

(declare-fun b!4483171 () Bool)

(declare-fun e!2792259 () Bool)

(assert (=> b!4483171 (= e!2792258 e!2792259)))

(declare-fun res!1861646 () Bool)

(assert (=> b!4483171 (=> (not res!1861646) (not e!2792259))))

(assert (=> b!4483171 (= res!1861646 (dynLambda!21053 lambda!165815 (h!56194 (toList!4145 lm!1477))))))

(declare-fun b!4483172 () Bool)

(assert (=> b!4483172 (= e!2792259 (forall!10071 (t!357481 (toList!4145 lm!1477)) lambda!165815))))

(assert (= (and d!1372301 (not res!1861645)) b!4483171))

(assert (= (and b!4483171 res!1861646) b!4483172))

(declare-fun b_lambda!150433 () Bool)

(assert (=> (not b_lambda!150433) (not b!4483171)))

(declare-fun m!5203677 () Bool)

(assert (=> b!4483171 m!5203677))

(declare-fun m!5203679 () Bool)

(assert (=> b!4483172 m!5203679))

(assert (=> d!1372221 d!1372301))

(declare-fun d!1372303 () Bool)

(declare-fun res!1861647 () Bool)

(declare-fun e!2792260 () Bool)

(assert (=> d!1372303 (=> res!1861647 e!2792260)))

(assert (=> d!1372303 (= res!1861647 (is-Nil!50403 (t!357481 (toList!4145 lm!1477))))))

(assert (=> d!1372303 (= (forall!10071 (t!357481 (toList!4145 lm!1477)) lambda!165804) e!2792260)))

(declare-fun b!4483173 () Bool)

(declare-fun e!2792261 () Bool)

(assert (=> b!4483173 (= e!2792260 e!2792261)))

(declare-fun res!1861648 () Bool)

(assert (=> b!4483173 (=> (not res!1861648) (not e!2792261))))

(assert (=> b!4483173 (= res!1861648 (dynLambda!21053 lambda!165804 (h!56194 (t!357481 (toList!4145 lm!1477)))))))

(declare-fun b!4483174 () Bool)

(assert (=> b!4483174 (= e!2792261 (forall!10071 (t!357481 (t!357481 (toList!4145 lm!1477))) lambda!165804))))

(assert (= (and d!1372303 (not res!1861647)) b!4483173))

(assert (= (and b!4483173 res!1861648) b!4483174))

(declare-fun b_lambda!150435 () Bool)

(assert (=> (not b_lambda!150435) (not b!4483173)))

(declare-fun m!5203681 () Bool)

(assert (=> b!4483173 m!5203681))

(declare-fun m!5203683 () Bool)

(assert (=> b!4483174 m!5203683))

(assert (=> b!4482974 d!1372303))

(declare-fun d!1372305 () Bool)

(declare-fun res!1861653 () Bool)

(declare-fun e!2792266 () Bool)

(assert (=> d!1372305 (=> res!1861653 e!2792266)))

(assert (=> d!1372305 (= res!1861653 (and (is-Cons!50402 (t!357480 newBucket!178)) (= (_1!28649 (h!56193 (t!357480 newBucket!178))) (_1!28649 (h!56193 newBucket!178)))))))

(assert (=> d!1372305 (= (containsKey!1568 (t!357480 newBucket!178) (_1!28649 (h!56193 newBucket!178))) e!2792266)))

(declare-fun b!4483179 () Bool)

(declare-fun e!2792267 () Bool)

(assert (=> b!4483179 (= e!2792266 e!2792267)))

(declare-fun res!1861654 () Bool)

(assert (=> b!4483179 (=> (not res!1861654) (not e!2792267))))

(assert (=> b!4483179 (= res!1861654 (is-Cons!50402 (t!357480 newBucket!178)))))

(declare-fun b!4483180 () Bool)

(assert (=> b!4483180 (= e!2792267 (containsKey!1568 (t!357480 (t!357480 newBucket!178)) (_1!28649 (h!56193 newBucket!178))))))

(assert (= (and d!1372305 (not res!1861653)) b!4483179))

(assert (= (and b!4483179 res!1861654) b!4483180))

(declare-fun m!5203685 () Bool)

(assert (=> b!4483180 m!5203685))

(assert (=> b!4482987 d!1372305))

(declare-fun d!1372307 () Bool)

(declare-fun res!1861655 () Bool)

(declare-fun e!2792268 () Bool)

(assert (=> d!1372307 (=> res!1861655 e!2792268)))

(assert (=> d!1372307 (= res!1861655 (is-Nil!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372307 (= (forall!10071 (toList!4145 lm!1477) lambda!165824) e!2792268)))

(declare-fun b!4483181 () Bool)

(declare-fun e!2792269 () Bool)

(assert (=> b!4483181 (= e!2792268 e!2792269)))

(declare-fun res!1861656 () Bool)

(assert (=> b!4483181 (=> (not res!1861656) (not e!2792269))))

(assert (=> b!4483181 (= res!1861656 (dynLambda!21053 lambda!165824 (h!56194 (toList!4145 lm!1477))))))

(declare-fun b!4483182 () Bool)

(assert (=> b!4483182 (= e!2792269 (forall!10071 (t!357481 (toList!4145 lm!1477)) lambda!165824))))

(assert (= (and d!1372307 (not res!1861655)) b!4483181))

(assert (= (and b!4483181 res!1861656) b!4483182))

(declare-fun b_lambda!150437 () Bool)

(assert (=> (not b_lambda!150437) (not b!4483181)))

(declare-fun m!5203687 () Bool)

(assert (=> b!4483181 m!5203687))

(declare-fun m!5203689 () Bool)

(assert (=> b!4483182 m!5203689))

(assert (=> d!1372237 d!1372307))

(declare-fun b!4483183 () Bool)

(declare-fun e!2792270 () Option!10981)

(assert (=> b!4483183 (= e!2792270 (Some!10980 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))

(declare-fun b!4483185 () Bool)

(declare-fun e!2792271 () Option!10981)

(assert (=> b!4483185 (= e!2792271 (getValueByKey!967 (t!357481 (toList!4145 lm!1477)) hash!344))))

(declare-fun b!4483184 () Bool)

(assert (=> b!4483184 (= e!2792270 e!2792271)))

(declare-fun c!763663 () Bool)

(assert (=> b!4483184 (= c!763663 (and (is-Cons!50403 (toList!4145 lm!1477)) (not (= (_1!28650 (h!56194 (toList!4145 lm!1477))) hash!344))))))

(declare-fun d!1372309 () Bool)

(declare-fun c!763662 () Bool)

(assert (=> d!1372309 (= c!763662 (and (is-Cons!50403 (toList!4145 lm!1477)) (= (_1!28650 (h!56194 (toList!4145 lm!1477))) hash!344)))))

(assert (=> d!1372309 (= (getValueByKey!967 (toList!4145 lm!1477) hash!344) e!2792270)))

(declare-fun b!4483186 () Bool)

(assert (=> b!4483186 (= e!2792271 None!10980)))

(assert (= (and d!1372309 c!763662) b!4483183))

(assert (= (and d!1372309 (not c!763662)) b!4483184))

(assert (= (and b!4483184 c!763663) b!4483185))

(assert (= (and b!4483184 (not c!763663)) b!4483186))

(declare-fun m!5203691 () Bool)

(assert (=> b!4483185 m!5203691))

(assert (=> b!4482995 d!1372309))

(declare-fun d!1372311 () Bool)

(declare-fun res!1861657 () Bool)

(declare-fun e!2792272 () Bool)

(assert (=> d!1372311 (=> res!1861657 e!2792272)))

(assert (=> d!1372311 (= res!1861657 (and (is-Cons!50403 (toList!4145 lm!1477)) (= (_1!28650 (h!56194 (toList!4145 lm!1477))) lt!1669381)))))

(assert (=> d!1372311 (= (containsKey!1569 (toList!4145 lm!1477) lt!1669381) e!2792272)))

(declare-fun b!4483187 () Bool)

(declare-fun e!2792273 () Bool)

(assert (=> b!4483187 (= e!2792272 e!2792273)))

(declare-fun res!1861658 () Bool)

(assert (=> b!4483187 (=> (not res!1861658) (not e!2792273))))

(assert (=> b!4483187 (= res!1861658 (and (or (not (is-Cons!50403 (toList!4145 lm!1477))) (bvsle (_1!28650 (h!56194 (toList!4145 lm!1477))) lt!1669381)) (is-Cons!50403 (toList!4145 lm!1477)) (bvslt (_1!28650 (h!56194 (toList!4145 lm!1477))) lt!1669381)))))

(declare-fun b!4483188 () Bool)

(assert (=> b!4483188 (= e!2792273 (containsKey!1569 (t!357481 (toList!4145 lm!1477)) lt!1669381))))

(assert (= (and d!1372311 (not res!1861657)) b!4483187))

(assert (= (and b!4483187 res!1861658) b!4483188))

(declare-fun m!5203693 () Bool)

(assert (=> b!4483188 m!5203693))

(assert (=> d!1372227 d!1372311))

(declare-fun d!1372313 () Bool)

(assert (=> d!1372313 (dynLambda!21053 lambda!165804 lt!1669379)))

(assert (=> d!1372313 true))

(declare-fun _$7!1714 () Unit!89921)

(assert (=> d!1372313 (= (choose!28805 (toList!4145 lm!1477) lambda!165804 lt!1669379) _$7!1714)))

(declare-fun b_lambda!150439 () Bool)

(assert (=> (not b_lambda!150439) (not d!1372313)))

(declare-fun bs!825576 () Bool)

(assert (= bs!825576 d!1372313))

(assert (=> bs!825576 m!5203533))

(assert (=> d!1372231 d!1372313))

(assert (=> d!1372231 d!1372211))

(declare-fun d!1372315 () Bool)

(assert (=> d!1372315 (= (isEmpty!28520 (toList!4145 lm!1477)) (is-Nil!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372199 d!1372315))

(declare-fun d!1372317 () Bool)

(assert (=> d!1372317 (isDefined!8268 (getValueByKey!967 (toList!4145 lm!1477) lt!1669381))))

(declare-fun lt!1669531 () Unit!89921)

(declare-fun choose!28809 (List!50527 (_ BitVec 64)) Unit!89921)

(assert (=> d!1372317 (= lt!1669531 (choose!28809 (toList!4145 lm!1477) lt!1669381))))

(declare-fun e!2792276 () Bool)

(assert (=> d!1372317 e!2792276))

(declare-fun res!1861661 () Bool)

(assert (=> d!1372317 (=> (not res!1861661) (not e!2792276))))

(assert (=> d!1372317 (= res!1861661 (isStrictlySorted!368 (toList!4145 lm!1477)))))

(assert (=> d!1372317 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!871 (toList!4145 lm!1477) lt!1669381) lt!1669531)))

(declare-fun b!4483191 () Bool)

(assert (=> b!4483191 (= e!2792276 (containsKey!1569 (toList!4145 lm!1477) lt!1669381))))

(assert (= (and d!1372317 res!1861661) b!4483191))

(assert (=> d!1372317 m!5203529))

(assert (=> d!1372317 m!5203529))

(assert (=> d!1372317 m!5203531))

(declare-fun m!5203695 () Bool)

(assert (=> d!1372317 m!5203695))

(assert (=> d!1372317 m!5203487))

(assert (=> b!4483191 m!5203525))

(assert (=> b!4483008 d!1372317))

(assert (=> b!4483008 d!1372283))

(assert (=> b!4483008 d!1372285))

(declare-fun d!1372319 () Bool)

(declare-fun res!1861662 () Bool)

(declare-fun e!2792277 () Bool)

(assert (=> d!1372319 (=> res!1861662 e!2792277)))

(assert (=> d!1372319 (= res!1861662 (not (is-Cons!50402 (t!357480 newBucket!178))))))

(assert (=> d!1372319 (= (noDuplicateKeys!1069 (t!357480 newBucket!178)) e!2792277)))

(declare-fun b!4483192 () Bool)

(declare-fun e!2792278 () Bool)

(assert (=> b!4483192 (= e!2792277 e!2792278)))

(declare-fun res!1861663 () Bool)

(assert (=> b!4483192 (=> (not res!1861663) (not e!2792278))))

(assert (=> b!4483192 (= res!1861663 (not (containsKey!1568 (t!357480 (t!357480 newBucket!178)) (_1!28649 (h!56193 (t!357480 newBucket!178))))))))

(declare-fun b!4483193 () Bool)

(assert (=> b!4483193 (= e!2792278 (noDuplicateKeys!1069 (t!357480 (t!357480 newBucket!178))))))

(assert (= (and d!1372319 (not res!1861662)) b!4483192))

(assert (= (and b!4483192 res!1861663) b!4483193))

(declare-fun m!5203697 () Bool)

(assert (=> b!4483192 m!5203697))

(declare-fun m!5203699 () Bool)

(assert (=> b!4483193 m!5203699))

(assert (=> b!4482988 d!1372319))

(declare-fun d!1372321 () Bool)

(declare-fun res!1861668 () Bool)

(declare-fun e!2792283 () Bool)

(assert (=> d!1372321 (=> res!1861668 e!2792283)))

(assert (=> d!1372321 (= res!1861668 (is-Nil!50402 newBucket!178))))

(assert (=> d!1372321 (= (forall!10073 newBucket!178 lambda!165827) e!2792283)))

(declare-fun b!4483198 () Bool)

(declare-fun e!2792284 () Bool)

(assert (=> b!4483198 (= e!2792283 e!2792284)))

(declare-fun res!1861669 () Bool)

(assert (=> b!4483198 (=> (not res!1861669) (not e!2792284))))

(declare-fun dynLambda!21055 (Int tuple2!50710) Bool)

(assert (=> b!4483198 (= res!1861669 (dynLambda!21055 lambda!165827 (h!56193 newBucket!178)))))

(declare-fun b!4483199 () Bool)

(assert (=> b!4483199 (= e!2792284 (forall!10073 (t!357480 newBucket!178) lambda!165827))))

(assert (= (and d!1372321 (not res!1861668)) b!4483198))

(assert (= (and b!4483198 res!1861669) b!4483199))

(declare-fun b_lambda!150441 () Bool)

(assert (=> (not b_lambda!150441) (not b!4483198)))

(declare-fun m!5203701 () Bool)

(assert (=> b!4483198 m!5203701))

(declare-fun m!5203703 () Bool)

(assert (=> b!4483199 m!5203703))

(assert (=> d!1372245 d!1372321))

(declare-fun d!1372323 () Bool)

(declare-fun res!1861674 () Bool)

(declare-fun e!2792289 () Bool)

(assert (=> d!1372323 (=> res!1861674 e!2792289)))

(assert (=> d!1372323 (= res!1861674 (and (is-Cons!50402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (= (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) key!3287)))))

(assert (=> d!1372323 (= (containsKey!1567 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287) e!2792289)))

(declare-fun b!4483204 () Bool)

(declare-fun e!2792290 () Bool)

(assert (=> b!4483204 (= e!2792289 e!2792290)))

(declare-fun res!1861675 () Bool)

(assert (=> b!4483204 (=> (not res!1861675) (not e!2792290))))

(assert (=> b!4483204 (= res!1861675 (is-Cons!50402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))

(declare-fun b!4483205 () Bool)

(assert (=> b!4483205 (= e!2792290 (containsKey!1567 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) key!3287))))

(assert (= (and d!1372323 (not res!1861674)) b!4483204))

(assert (= (and b!4483204 res!1861675) b!4483205))

(declare-fun m!5203705 () Bool)

(assert (=> b!4483205 m!5203705))

(assert (=> b!4482958 d!1372323))

(declare-fun d!1372325 () Bool)

(assert (=> d!1372325 (containsKey!1567 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287)))

(declare-fun lt!1669534 () Unit!89921)

(declare-fun choose!28810 (List!50526 K!11813) Unit!89921)

(assert (=> d!1372325 (= lt!1669534 (choose!28810 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(assert (=> d!1372325 (invariantList!954 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))

(assert (=> d!1372325 (= (lemmaInGetKeysListThenContainsKey!401 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287) lt!1669534)))

(declare-fun bs!825577 () Bool)

(assert (= bs!825577 d!1372325))

(assert (=> bs!825577 m!5203445))

(declare-fun m!5203707 () Bool)

(assert (=> bs!825577 m!5203707))

(declare-fun m!5203709 () Bool)

(assert (=> bs!825577 m!5203709))

(assert (=> b!4482958 d!1372325))

(declare-fun d!1372327 () Bool)

(declare-fun res!1861676 () Bool)

(declare-fun e!2792291 () Bool)

(assert (=> d!1372327 (=> res!1861676 e!2792291)))

(assert (=> d!1372327 (= res!1861676 (not (is-Cons!50402 (_2!28650 lt!1669379))))))

(assert (=> d!1372327 (= (noDuplicateKeys!1069 (_2!28650 lt!1669379)) e!2792291)))

(declare-fun b!4483206 () Bool)

(declare-fun e!2792292 () Bool)

(assert (=> b!4483206 (= e!2792291 e!2792292)))

(declare-fun res!1861677 () Bool)

(assert (=> b!4483206 (=> (not res!1861677) (not e!2792292))))

(assert (=> b!4483206 (= res!1861677 (not (containsKey!1568 (t!357480 (_2!28650 lt!1669379)) (_1!28649 (h!56193 (_2!28650 lt!1669379))))))))

(declare-fun b!4483207 () Bool)

(assert (=> b!4483207 (= e!2792292 (noDuplicateKeys!1069 (t!357480 (_2!28650 lt!1669379))))))

(assert (= (and d!1372327 (not res!1861676)) b!4483206))

(assert (= (and b!4483206 res!1861677) b!4483207))

(declare-fun m!5203711 () Bool)

(assert (=> b!4483206 m!5203711))

(declare-fun m!5203713 () Bool)

(assert (=> b!4483207 m!5203713))

(assert (=> bs!825561 d!1372327))

(declare-fun d!1372329 () Bool)

(assert (=> d!1372329 (isDefined!8268 (getValueByKey!967 (toList!4145 (tail!7582 lm!1477)) hash!344))))

(declare-fun lt!1669535 () Unit!89921)

(assert (=> d!1372329 (= lt!1669535 (choose!28809 (toList!4145 (tail!7582 lm!1477)) hash!344))))

(declare-fun e!2792293 () Bool)

(assert (=> d!1372329 e!2792293))

(declare-fun res!1861678 () Bool)

(assert (=> d!1372329 (=> (not res!1861678) (not e!2792293))))

(assert (=> d!1372329 (= res!1861678 (isStrictlySorted!368 (toList!4145 (tail!7582 lm!1477))))))

(assert (=> d!1372329 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!871 (toList!4145 (tail!7582 lm!1477)) hash!344) lt!1669535)))

(declare-fun b!4483208 () Bool)

(assert (=> b!4483208 (= e!2792293 (containsKey!1569 (toList!4145 (tail!7582 lm!1477)) hash!344))))

(assert (= (and d!1372329 res!1861678) b!4483208))

(assert (=> d!1372329 m!5203557))

(assert (=> d!1372329 m!5203557))

(assert (=> d!1372329 m!5203559))

(declare-fun m!5203715 () Bool)

(assert (=> d!1372329 m!5203715))

(declare-fun m!5203717 () Bool)

(assert (=> d!1372329 m!5203717))

(assert (=> b!4483208 m!5203553))

(assert (=> b!4483038 d!1372329))

(declare-fun d!1372331 () Bool)

(assert (=> d!1372331 (= (isDefined!8268 (getValueByKey!967 (toList!4145 (tail!7582 lm!1477)) hash!344)) (not (isEmpty!28522 (getValueByKey!967 (toList!4145 (tail!7582 lm!1477)) hash!344))))))

(declare-fun bs!825578 () Bool)

(assert (= bs!825578 d!1372331))

(assert (=> bs!825578 m!5203557))

(declare-fun m!5203719 () Bool)

(assert (=> bs!825578 m!5203719))

(assert (=> b!4483038 d!1372331))

(declare-fun b!4483209 () Bool)

(declare-fun e!2792294 () Option!10981)

(assert (=> b!4483209 (= e!2792294 (Some!10980 (_2!28650 (h!56194 (toList!4145 (tail!7582 lm!1477))))))))

(declare-fun b!4483211 () Bool)

(declare-fun e!2792295 () Option!10981)

(assert (=> b!4483211 (= e!2792295 (getValueByKey!967 (t!357481 (toList!4145 (tail!7582 lm!1477))) hash!344))))

(declare-fun b!4483210 () Bool)

(assert (=> b!4483210 (= e!2792294 e!2792295)))

(declare-fun c!763665 () Bool)

(assert (=> b!4483210 (= c!763665 (and (is-Cons!50403 (toList!4145 (tail!7582 lm!1477))) (not (= (_1!28650 (h!56194 (toList!4145 (tail!7582 lm!1477)))) hash!344))))))

(declare-fun d!1372333 () Bool)

(declare-fun c!763664 () Bool)

(assert (=> d!1372333 (= c!763664 (and (is-Cons!50403 (toList!4145 (tail!7582 lm!1477))) (= (_1!28650 (h!56194 (toList!4145 (tail!7582 lm!1477)))) hash!344)))))

(assert (=> d!1372333 (= (getValueByKey!967 (toList!4145 (tail!7582 lm!1477)) hash!344) e!2792294)))

(declare-fun b!4483212 () Bool)

(assert (=> b!4483212 (= e!2792295 None!10980)))

(assert (= (and d!1372333 c!763664) b!4483209))

(assert (= (and d!1372333 (not c!763664)) b!4483210))

(assert (= (and b!4483210 c!763665) b!4483211))

(assert (= (and b!4483210 (not c!763665)) b!4483212))

(declare-fun m!5203721 () Bool)

(assert (=> b!4483211 m!5203721))

(assert (=> b!4483038 d!1372333))

(assert (=> d!1372213 d!1372293))

(declare-fun d!1372335 () Bool)

(declare-fun noDuplicatedKeys!222 (List!50526) Bool)

(assert (=> d!1372335 (= (invariantList!954 (toList!4146 lt!1669445)) (noDuplicatedKeys!222 (toList!4146 lt!1669445)))))

(declare-fun bs!825579 () Bool)

(assert (= bs!825579 d!1372335))

(declare-fun m!5203723 () Bool)

(assert (=> bs!825579 m!5203723))

(assert (=> d!1372205 d!1372335))

(declare-fun d!1372337 () Bool)

(declare-fun res!1861679 () Bool)

(declare-fun e!2792296 () Bool)

(assert (=> d!1372337 (=> res!1861679 e!2792296)))

(assert (=> d!1372337 (= res!1861679 (is-Nil!50403 (toList!4145 lm!1477)))))

(assert (=> d!1372337 (= (forall!10071 (toList!4145 lm!1477) lambda!165812) e!2792296)))

(declare-fun b!4483213 () Bool)

(declare-fun e!2792297 () Bool)

(assert (=> b!4483213 (= e!2792296 e!2792297)))

(declare-fun res!1861680 () Bool)

(assert (=> b!4483213 (=> (not res!1861680) (not e!2792297))))

(assert (=> b!4483213 (= res!1861680 (dynLambda!21053 lambda!165812 (h!56194 (toList!4145 lm!1477))))))

(declare-fun b!4483214 () Bool)

(assert (=> b!4483214 (= e!2792297 (forall!10071 (t!357481 (toList!4145 lm!1477)) lambda!165812))))

(assert (= (and d!1372337 (not res!1861679)) b!4483213))

(assert (= (and b!4483213 res!1861680) b!4483214))

(declare-fun b_lambda!150443 () Bool)

(assert (=> (not b_lambda!150443) (not b!4483213)))

(declare-fun m!5203725 () Bool)

(assert (=> b!4483213 m!5203725))

(declare-fun m!5203727 () Bool)

(assert (=> b!4483214 m!5203727))

(assert (=> d!1372205 d!1372337))

(declare-fun d!1372339 () Bool)

(declare-fun res!1861681 () Bool)

(declare-fun e!2792298 () Bool)

(assert (=> d!1372339 (=> res!1861681 e!2792298)))

(assert (=> d!1372339 (= res!1861681 (and (is-Cons!50402 lt!1669481) (= (_1!28649 (h!56193 lt!1669481)) key!3287)))))

(assert (=> d!1372339 (= (containsKey!1568 lt!1669481 key!3287) e!2792298)))

(declare-fun b!4483215 () Bool)

(declare-fun e!2792299 () Bool)

(assert (=> b!4483215 (= e!2792298 e!2792299)))

(declare-fun res!1861682 () Bool)

(assert (=> b!4483215 (=> (not res!1861682) (not e!2792299))))

(assert (=> b!4483215 (= res!1861682 (is-Cons!50402 lt!1669481))))

(declare-fun b!4483216 () Bool)

(assert (=> b!4483216 (= e!2792299 (containsKey!1568 (t!357480 lt!1669481) key!3287))))

(assert (= (and d!1372339 (not res!1861681)) b!4483215))

(assert (= (and b!4483215 res!1861682) b!4483216))

(declare-fun m!5203729 () Bool)

(assert (=> b!4483216 m!5203729))

(assert (=> d!1372233 d!1372339))

(declare-fun d!1372341 () Bool)

(declare-fun res!1861683 () Bool)

(declare-fun e!2792300 () Bool)

(assert (=> d!1372341 (=> res!1861683 e!2792300)))

(assert (=> d!1372341 (= res!1861683 (not (is-Cons!50402 lt!1669380)))))

(assert (=> d!1372341 (= (noDuplicateKeys!1069 lt!1669380) e!2792300)))

(declare-fun b!4483217 () Bool)

(declare-fun e!2792301 () Bool)

(assert (=> b!4483217 (= e!2792300 e!2792301)))

(declare-fun res!1861684 () Bool)

(assert (=> b!4483217 (=> (not res!1861684) (not e!2792301))))

(assert (=> b!4483217 (= res!1861684 (not (containsKey!1568 (t!357480 lt!1669380) (_1!28649 (h!56193 lt!1669380)))))))

(declare-fun b!4483218 () Bool)

(assert (=> b!4483218 (= e!2792301 (noDuplicateKeys!1069 (t!357480 lt!1669380)))))

(assert (= (and d!1372341 (not res!1861683)) b!4483217))

(assert (= (and b!4483217 res!1861684) b!4483218))

(declare-fun m!5203731 () Bool)

(assert (=> b!4483217 m!5203731))

(assert (=> b!4483218 m!5203667))

(assert (=> d!1372233 d!1372341))

(assert (=> b!4483040 d!1372331))

(assert (=> b!4483040 d!1372333))

(declare-fun d!1372343 () Bool)

(assert (=> d!1372343 (isDefined!8267 (getValueByKey!966 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(declare-fun lt!1669538 () Unit!89921)

(declare-fun choose!28811 (List!50526 K!11813) Unit!89921)

(assert (=> d!1372343 (= lt!1669538 (choose!28811 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(assert (=> d!1372343 (invariantList!954 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))

(assert (=> d!1372343 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!870 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287) lt!1669538)))

(declare-fun bs!825580 () Bool)

(assert (= bs!825580 d!1372343))

(assert (=> bs!825580 m!5203451))

(assert (=> bs!825580 m!5203451))

(assert (=> bs!825580 m!5203453))

(declare-fun m!5203733 () Bool)

(assert (=> bs!825580 m!5203733))

(assert (=> bs!825580 m!5203709))

(assert (=> b!4482954 d!1372343))

(declare-fun d!1372345 () Bool)

(declare-fun isEmpty!28523 (Option!10980) Bool)

(assert (=> d!1372345 (= (isDefined!8267 (getValueByKey!966 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287)) (not (isEmpty!28523 (getValueByKey!966 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))))

(declare-fun bs!825581 () Bool)

(assert (= bs!825581 d!1372345))

(assert (=> bs!825581 m!5203451))

(declare-fun m!5203735 () Bool)

(assert (=> bs!825581 m!5203735))

(assert (=> b!4482954 d!1372345))

(declare-fun b!4483227 () Bool)

(declare-fun e!2792306 () Option!10980)

(assert (=> b!4483227 (= e!2792306 (Some!10979 (_2!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))))

(declare-fun b!4483229 () Bool)

(declare-fun e!2792307 () Option!10980)

(assert (=> b!4483229 (= e!2792307 (getValueByKey!966 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) key!3287))))

(declare-fun b!4483230 () Bool)

(assert (=> b!4483230 (= e!2792307 None!10979)))

(declare-fun b!4483228 () Bool)

(assert (=> b!4483228 (= e!2792306 e!2792307)))

(declare-fun c!763671 () Bool)

(assert (=> b!4483228 (= c!763671 (and (is-Cons!50402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (not (= (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) key!3287))))))

(declare-fun d!1372347 () Bool)

(declare-fun c!763670 () Bool)

(assert (=> d!1372347 (= c!763670 (and (is-Cons!50402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (= (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) key!3287)))))

(assert (=> d!1372347 (= (getValueByKey!966 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287) e!2792306)))

(assert (= (and d!1372347 c!763670) b!4483227))

(assert (= (and d!1372347 (not c!763670)) b!4483228))

(assert (= (and b!4483228 c!763671) b!4483229))

(assert (= (and b!4483228 (not c!763671)) b!4483230))

(declare-fun m!5203737 () Bool)

(assert (=> b!4483229 m!5203737))

(assert (=> b!4482954 d!1372347))

(declare-fun d!1372349 () Bool)

(assert (=> d!1372349 (contains!13010 (getKeysList!402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) key!3287)))

(declare-fun lt!1669541 () Unit!89921)

(declare-fun choose!28812 (List!50526 K!11813) Unit!89921)

(assert (=> d!1372349 (= lt!1669541 (choose!28812 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287))))

(assert (=> d!1372349 (invariantList!954 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))

(assert (=> d!1372349 (= (lemmaInListThenGetKeysListContains!398 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) key!3287) lt!1669541)))

(declare-fun bs!825582 () Bool)

(assert (= bs!825582 d!1372349))

(assert (=> bs!825582 m!5203463))

(assert (=> bs!825582 m!5203463))

(declare-fun m!5203739 () Bool)

(assert (=> bs!825582 m!5203739))

(declare-fun m!5203741 () Bool)

(assert (=> bs!825582 m!5203741))

(assert (=> bs!825582 m!5203709))

(assert (=> b!4482954 d!1372349))

(assert (=> d!1372201 d!1372323))

(assert (=> b!4482953 d!1372345))

(assert (=> b!4482953 d!1372347))

(declare-fun d!1372351 () Bool)

(declare-fun res!1861685 () Bool)

(declare-fun e!2792308 () Bool)

(assert (=> d!1372351 (=> res!1861685 e!2792308)))

(assert (=> d!1372351 (= res!1861685 (not (is-Cons!50402 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))

(assert (=> d!1372351 (= (noDuplicateKeys!1069 (_2!28650 (h!56194 (toList!4145 lm!1477)))) e!2792308)))

(declare-fun b!4483231 () Bool)

(declare-fun e!2792309 () Bool)

(assert (=> b!4483231 (= e!2792308 e!2792309)))

(declare-fun res!1861686 () Bool)

(assert (=> b!4483231 (=> (not res!1861686) (not e!2792309))))

(assert (=> b!4483231 (= res!1861686 (not (containsKey!1568 (t!357480 (_2!28650 (h!56194 (toList!4145 lm!1477)))) (_1!28649 (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))))

(declare-fun b!4483232 () Bool)

(assert (=> b!4483232 (= e!2792309 (noDuplicateKeys!1069 (t!357480 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))

(assert (= (and d!1372351 (not res!1861685)) b!4483231))

(assert (= (and b!4483231 res!1861686) b!4483232))

(declare-fun m!5203743 () Bool)

(assert (=> b!4483231 m!5203743))

(declare-fun m!5203745 () Bool)

(assert (=> b!4483232 m!5203745))

(assert (=> bs!825560 d!1372351))

(declare-fun bs!825583 () Bool)

(declare-fun b!4483251 () Bool)

(assert (= bs!825583 (and b!4483251 b!4483134)))

(declare-fun lambda!165848 () Int)

(assert (=> bs!825583 (= (= (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (= lambda!165848 lambda!165838))))

(assert (=> b!4483251 true))

(declare-fun bs!825584 () Bool)

(declare-fun b!4483256 () Bool)

(assert (= bs!825584 (and b!4483256 b!4483134)))

(declare-fun lambda!165849 () Int)

(assert (=> bs!825584 (= (= (Cons!50402 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (= lambda!165849 lambda!165838))))

(declare-fun bs!825585 () Bool)

(assert (= bs!825585 (and b!4483256 b!4483251)))

(assert (=> bs!825585 (= (= (Cons!50402 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) (= lambda!165849 lambda!165848))))

(assert (=> b!4483256 true))

(declare-fun bs!825586 () Bool)

(declare-fun b!4483258 () Bool)

(assert (= bs!825586 (and b!4483258 b!4483134)))

(declare-fun lambda!165850 () Int)

(assert (=> bs!825586 (= lambda!165850 lambda!165838)))

(declare-fun bs!825587 () Bool)

(assert (= bs!825587 (and b!4483258 b!4483251)))

(assert (=> bs!825587 (= (= (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) (= lambda!165850 lambda!165848))))

(declare-fun bs!825588 () Bool)

(assert (= bs!825588 (and b!4483258 b!4483256)))

(assert (=> bs!825588 (= (= (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) (Cons!50402 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))) (= lambda!165850 lambda!165849))))

(assert (=> b!4483258 true))

(declare-fun bs!825589 () Bool)

(declare-fun b!4483257 () Bool)

(assert (= bs!825589 (and b!4483257 b!4483135)))

(declare-fun lambda!165851 () Int)

(assert (=> bs!825589 (= lambda!165851 lambda!165839)))

(assert (=> b!4483251 false))

(declare-fun lt!1669558 () Unit!89921)

(declare-fun forallContained!2334 (List!50530 Int K!11813) Unit!89921)

(assert (=> b!4483251 (= lt!1669558 (forallContained!2334 (getKeysList!402 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) lambda!165848 (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))))

(declare-fun e!2792321 () Unit!89921)

(declare-fun Unit!89934 () Unit!89921)

(assert (=> b!4483251 (= e!2792321 Unit!89934)))

(declare-fun b!4483252 () Bool)

(declare-fun e!2792318 () List!50530)

(assert (=> b!4483252 (= e!2792318 Nil!50406)))

(declare-fun b!4483253 () Bool)

(assert (=> b!4483253 false))

(declare-fun e!2792320 () Unit!89921)

(declare-fun Unit!89935 () Unit!89921)

(assert (=> b!4483253 (= e!2792320 Unit!89935)))

(declare-fun d!1372353 () Bool)

(declare-fun e!2792319 () Bool)

(assert (=> d!1372353 e!2792319))

(declare-fun res!1861693 () Bool)

(assert (=> d!1372353 (=> (not res!1861693) (not e!2792319))))

(declare-fun lt!1669556 () List!50530)

(assert (=> d!1372353 (= res!1861693 (noDuplicate!707 lt!1669556))))

(assert (=> d!1372353 (= lt!1669556 e!2792318)))

(declare-fun c!763679 () Bool)

(assert (=> d!1372353 (= c!763679 (is-Cons!50402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))

(assert (=> d!1372353 (invariantList!954 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))

(assert (=> d!1372353 (= (getKeysList!402 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) lt!1669556)))

(declare-fun b!4483254 () Bool)

(declare-fun res!1861695 () Bool)

(assert (=> b!4483254 (=> (not res!1861695) (not e!2792319))))

(assert (=> b!4483254 (= res!1861695 (= (length!270 lt!1669556) (length!271 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))))

(declare-fun b!4483255 () Bool)

(declare-fun Unit!89936 () Unit!89921)

(assert (=> b!4483255 (= e!2792320 Unit!89936)))

(assert (=> b!4483256 (= e!2792318 (Cons!50406 (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) (getKeysList!402 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))))

(declare-fun c!763678 () Bool)

(assert (=> b!4483256 (= c!763678 (containsKey!1567 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))))

(declare-fun lt!1669561 () Unit!89921)

(assert (=> b!4483256 (= lt!1669561 e!2792320)))

(declare-fun c!763680 () Bool)

(assert (=> b!4483256 (= c!763680 (contains!13010 (getKeysList!402 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))) (_1!28649 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))))))))

(declare-fun lt!1669559 () Unit!89921)

(assert (=> b!4483256 (= lt!1669559 e!2792321)))

(declare-fun lt!1669557 () List!50530)

(assert (=> b!4483256 (= lt!1669557 (getKeysList!402 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))))

(declare-fun lt!1669560 () Unit!89921)

(declare-fun lemmaForallContainsAddHeadPreserves!129 (List!50526 List!50530 tuple2!50710) Unit!89921)

(assert (=> b!4483256 (= lt!1669560 (lemmaForallContainsAddHeadPreserves!129 (t!357480 (toList!4146 (extractMap!1125 (toList!4145 lm!1477)))) lt!1669557 (h!56193 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))))))))

(assert (=> b!4483256 (forall!10075 lt!1669557 lambda!165849)))

(declare-fun lt!1669562 () Unit!89921)

(assert (=> b!4483256 (= lt!1669562 lt!1669560)))

(assert (=> b!4483257 (= e!2792319 (= (content!8182 lt!1669556) (content!8182 (map!11053 (toList!4146 (extractMap!1125 (toList!4145 lm!1477))) lambda!165851))))))

(declare-fun res!1861694 () Bool)

(assert (=> b!4483258 (=> (not res!1861694) (not e!2792319))))

(assert (=> b!4483258 (= res!1861694 (forall!10075 lt!1669556 lambda!165850))))

(declare-fun b!4483259 () Bool)

(declare-fun Unit!89937 () Unit!89921)

(assert (=> b!4483259 (= e!2792321 Unit!89937)))

(assert (= (and d!1372353 c!763679) b!4483256))

(assert (= (and d!1372353 (not c!763679)) b!4483252))

(assert (= (and b!4483256 c!763678) b!4483253))

(assert (= (and b!4483256 (not c!763678)) b!4483255))

(assert (= (and b!4483256 c!763680) b!4483251))

(assert (= (and b!4483256 (not c!763680)) b!4483259))

(assert (= (and d!1372353 res!1861693) b!4483254))

(assert (= (and b!4483254 res!1861695) b!4483258))

(assert (= (and b!4483258 res!1861694) b!4483257))

(declare-fun m!5203747 () Bool)

(assert (=> b!4483258 m!5203747))

(declare-fun m!5203749 () Bool)

(assert (=> b!4483254 m!5203749))

(assert (=> b!4483254 m!5203639))

(declare-fun m!5203751 () Bool)

(assert (=> d!1372353 m!5203751))

(assert (=> d!1372353 m!5203709))

(declare-fun m!5203753 () Bool)

(assert (=> b!4483257 m!5203753))

(declare-fun m!5203755 () Bool)

(assert (=> b!4483257 m!5203755))

(assert (=> b!4483257 m!5203755))

(declare-fun m!5203757 () Bool)

(assert (=> b!4483257 m!5203757))

(declare-fun m!5203759 () Bool)

(assert (=> b!4483251 m!5203759))

(assert (=> b!4483251 m!5203759))

(declare-fun m!5203761 () Bool)

(assert (=> b!4483251 m!5203761))

(declare-fun m!5203763 () Bool)

(assert (=> b!4483256 m!5203763))

(assert (=> b!4483256 m!5203759))

(assert (=> b!4483256 m!5203759))

(declare-fun m!5203765 () Bool)

(assert (=> b!4483256 m!5203765))

(declare-fun m!5203767 () Bool)

(assert (=> b!4483256 m!5203767))

(declare-fun m!5203769 () Bool)

(assert (=> b!4483256 m!5203769))

(assert (=> b!4482952 d!1372353))

(declare-fun d!1372355 () Bool)

(assert (=> d!1372355 (= (get!16448 (getValueByKey!967 (toList!4145 lm!1477) hash!344)) (v!44372 (getValueByKey!967 (toList!4145 lm!1477) hash!344)))))

(assert (=> d!1372223 d!1372355))

(assert (=> d!1372223 d!1372309))

(declare-fun bs!825593 () Bool)

(declare-fun b!4483330 () Bool)

(assert (= bs!825593 (and b!4483330 d!1372245)))

(declare-fun lambda!165886 () Int)

(assert (=> bs!825593 (not (= lambda!165886 lambda!165827))))

(assert (=> b!4483330 true))

(declare-fun bs!825594 () Bool)

(declare-fun b!4483334 () Bool)

(assert (= bs!825594 (and b!4483334 d!1372245)))

(declare-fun lambda!165887 () Int)

(assert (=> bs!825594 (not (= lambda!165887 lambda!165827))))

(declare-fun bs!825595 () Bool)

(assert (= bs!825595 (and b!4483334 b!4483330)))

(assert (=> bs!825595 (= lambda!165887 lambda!165886)))

(assert (=> b!4483334 true))

(declare-fun lambda!165888 () Int)

(assert (=> bs!825594 (not (= lambda!165888 lambda!165827))))

(declare-fun lt!1669623 () ListMap!3407)

(assert (=> bs!825595 (= (= lt!1669623 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) (= lambda!165888 lambda!165886))))

(assert (=> b!4483334 (= (= lt!1669623 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) (= lambda!165888 lambda!165887))))

(assert (=> b!4483334 true))

(declare-fun bs!825596 () Bool)

(declare-fun d!1372357 () Bool)

(assert (= bs!825596 (and d!1372357 d!1372245)))

(declare-fun lambda!165889 () Int)

(assert (=> bs!825596 (not (= lambda!165889 lambda!165827))))

(declare-fun bs!825597 () Bool)

(assert (= bs!825597 (and d!1372357 b!4483330)))

(declare-fun lt!1669636 () ListMap!3407)

(assert (=> bs!825597 (= (= lt!1669636 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) (= lambda!165889 lambda!165886))))

(declare-fun bs!825598 () Bool)

(assert (= bs!825598 (and d!1372357 b!4483334)))

(assert (=> bs!825598 (= (= lt!1669636 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) (= lambda!165889 lambda!165887))))

(assert (=> bs!825598 (= (= lt!1669636 lt!1669623) (= lambda!165889 lambda!165888))))

(assert (=> d!1372357 true))

(declare-fun bm!312139 () Bool)

(declare-fun c!763693 () Bool)

(declare-fun call!312144 () Bool)

(assert (=> bm!312139 (= call!312144 (forall!10073 (toList!4146 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) (ite c!763693 lambda!165886 lambda!165887)))))

(declare-fun e!2792370 () Bool)

(assert (=> d!1372357 e!2792370))

(declare-fun res!1861740 () Bool)

(assert (=> d!1372357 (=> (not res!1861740) (not e!2792370))))

(assert (=> d!1372357 (= res!1861740 (forall!10073 (_2!28650 (h!56194 (toList!4145 lm!1477))) lambda!165889))))

(declare-fun e!2792369 () ListMap!3407)

(assert (=> d!1372357 (= lt!1669636 e!2792369)))

(assert (=> d!1372357 (= c!763693 (is-Nil!50402 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))

(assert (=> d!1372357 (noDuplicateKeys!1069 (_2!28650 (h!56194 (toList!4145 lm!1477))))))

(assert (=> d!1372357 (= (addToMapMapFromBucket!622 (_2!28650 (h!56194 (toList!4145 lm!1477))) (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) lt!1669636)))

(declare-fun call!312145 () Bool)

(declare-fun bm!312140 () Bool)

(assert (=> bm!312140 (= call!312145 (forall!10073 (ite c!763693 (toList!4146 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) (_2!28650 (h!56194 (toList!4145 lm!1477)))) (ite c!763693 lambda!165886 lambda!165888)))))

(assert (=> b!4483330 (= e!2792369 (extractMap!1125 (t!357481 (toList!4145 lm!1477))))))

(declare-fun lt!1669633 () Unit!89921)

(declare-fun call!312146 () Unit!89921)

(assert (=> b!4483330 (= lt!1669633 call!312146)))

(assert (=> b!4483330 call!312144))

(declare-fun lt!1669624 () Unit!89921)

(assert (=> b!4483330 (= lt!1669624 lt!1669633)))

(assert (=> b!4483330 call!312145))

(declare-fun lt!1669629 () Unit!89921)

(declare-fun Unit!89938 () Unit!89921)

(assert (=> b!4483330 (= lt!1669629 Unit!89938)))

(declare-fun b!4483331 () Bool)

(declare-fun e!2792368 () Bool)

(assert (=> b!4483331 (= e!2792368 (forall!10073 (toList!4146 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) lambda!165888))))

(declare-fun b!4483332 () Bool)

(assert (=> b!4483332 (= e!2792370 (invariantList!954 (toList!4146 lt!1669636)))))

(declare-fun b!4483333 () Bool)

(declare-fun res!1861739 () Bool)

(assert (=> b!4483333 (=> (not res!1861739) (not e!2792370))))

(assert (=> b!4483333 (= res!1861739 (forall!10073 (toList!4146 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) lambda!165889))))

(declare-fun bm!312141 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!285 (ListMap!3407) Unit!89921)

(assert (=> bm!312141 (= call!312146 (lemmaContainsAllItsOwnKeys!285 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))))))

(assert (=> b!4483334 (= e!2792369 lt!1669623)))

(declare-fun lt!1669620 () ListMap!3407)

(declare-fun +!1427 (ListMap!3407 tuple2!50710) ListMap!3407)

(assert (=> b!4483334 (= lt!1669620 (+!1427 (extractMap!1125 (t!357481 (toList!4145 lm!1477))) (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))

(assert (=> b!4483334 (= lt!1669623 (addToMapMapFromBucket!622 (t!357480 (_2!28650 (h!56194 (toList!4145 lm!1477)))) (+!1427 (extractMap!1125 (t!357481 (toList!4145 lm!1477))) (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))))

(declare-fun lt!1669630 () Unit!89921)

(assert (=> b!4483334 (= lt!1669630 call!312146)))

(assert (=> b!4483334 call!312144))

(declare-fun lt!1669621 () Unit!89921)

(assert (=> b!4483334 (= lt!1669621 lt!1669630)))

(assert (=> b!4483334 (forall!10073 (toList!4146 lt!1669620) lambda!165888)))

(declare-fun lt!1669619 () Unit!89921)

(declare-fun Unit!89939 () Unit!89921)

(assert (=> b!4483334 (= lt!1669619 Unit!89939)))

(assert (=> b!4483334 (forall!10073 (t!357480 (_2!28650 (h!56194 (toList!4145 lm!1477)))) lambda!165888)))

(declare-fun lt!1669635 () Unit!89921)

(declare-fun Unit!89940 () Unit!89921)

(assert (=> b!4483334 (= lt!1669635 Unit!89940)))

(declare-fun lt!1669626 () Unit!89921)

(declare-fun Unit!89941 () Unit!89921)

(assert (=> b!4483334 (= lt!1669626 Unit!89941)))

(declare-fun lt!1669631 () Unit!89921)

(declare-fun forallContained!2335 (List!50526 Int tuple2!50710) Unit!89921)

(assert (=> b!4483334 (= lt!1669631 (forallContained!2335 (toList!4146 lt!1669620) lambda!165888 (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))

(assert (=> b!4483334 (contains!13004 lt!1669620 (_1!28649 (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))

(declare-fun lt!1669628 () Unit!89921)

(declare-fun Unit!89942 () Unit!89921)

(assert (=> b!4483334 (= lt!1669628 Unit!89942)))

(assert (=> b!4483334 (contains!13004 lt!1669623 (_1!28649 (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477))))))))

(declare-fun lt!1669627 () Unit!89921)

(declare-fun Unit!89943 () Unit!89921)

(assert (=> b!4483334 (= lt!1669627 Unit!89943)))

(assert (=> b!4483334 (forall!10073 (_2!28650 (h!56194 (toList!4145 lm!1477))) lambda!165888)))

(declare-fun lt!1669625 () Unit!89921)

(declare-fun Unit!89944 () Unit!89921)

(assert (=> b!4483334 (= lt!1669625 Unit!89944)))

(assert (=> b!4483334 (forall!10073 (toList!4146 lt!1669620) lambda!165888)))

(declare-fun lt!1669622 () Unit!89921)

(declare-fun Unit!89945 () Unit!89921)

(assert (=> b!4483334 (= lt!1669622 Unit!89945)))

(declare-fun lt!1669618 () Unit!89921)

(declare-fun Unit!89946 () Unit!89921)

(assert (=> b!4483334 (= lt!1669618 Unit!89946)))

(declare-fun lt!1669616 () Unit!89921)

(declare-fun addForallContainsKeyThenBeforeAdding!285 (ListMap!3407 ListMap!3407 K!11813 V!12059) Unit!89921)

(assert (=> b!4483334 (= lt!1669616 (addForallContainsKeyThenBeforeAdding!285 (extractMap!1125 (t!357481 (toList!4145 lm!1477))) lt!1669623 (_1!28649 (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477))))) (_2!28649 (h!56193 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))))

(assert (=> b!4483334 (forall!10073 (toList!4146 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) lambda!165888)))

(declare-fun lt!1669634 () Unit!89921)

(assert (=> b!4483334 (= lt!1669634 lt!1669616)))

(assert (=> b!4483334 (forall!10073 (toList!4146 (extractMap!1125 (t!357481 (toList!4145 lm!1477)))) lambda!165888)))

(declare-fun lt!1669632 () Unit!89921)

(declare-fun Unit!89947 () Unit!89921)

(assert (=> b!4483334 (= lt!1669632 Unit!89947)))

(declare-fun res!1861738 () Bool)

(assert (=> b!4483334 (= res!1861738 call!312145)))

(assert (=> b!4483334 (=> (not res!1861738) (not e!2792368))))

(assert (=> b!4483334 e!2792368))

(declare-fun lt!1669617 () Unit!89921)

(declare-fun Unit!89948 () Unit!89921)

(assert (=> b!4483334 (= lt!1669617 Unit!89948)))

(assert (= (and d!1372357 c!763693) b!4483330))

(assert (= (and d!1372357 (not c!763693)) b!4483334))

(assert (= (and b!4483334 res!1861738) b!4483331))

(assert (= (or b!4483330 b!4483334) bm!312139))

(assert (= (or b!4483330 b!4483334) bm!312140))

(assert (= (or b!4483330 b!4483334) bm!312141))

(assert (= (and d!1372357 res!1861740) b!4483333))

(assert (= (and b!4483333 res!1861739) b!4483332))

(declare-fun m!5203839 () Bool)

(assert (=> b!4483331 m!5203839))

(declare-fun m!5203841 () Bool)

(assert (=> d!1372357 m!5203841))

(assert (=> d!1372357 m!5203569))

(declare-fun m!5203843 () Bool)

(assert (=> bm!312140 m!5203843))

(declare-fun m!5203845 () Bool)

(assert (=> bm!312139 m!5203845))

(declare-fun m!5203847 () Bool)

(assert (=> b!4483334 m!5203847))

(assert (=> b!4483334 m!5203839))

(declare-fun m!5203849 () Bool)

(assert (=> b!4483334 m!5203849))

(assert (=> b!4483334 m!5203479))

(declare-fun m!5203851 () Bool)

(assert (=> b!4483334 m!5203851))

(assert (=> b!4483334 m!5203839))

(declare-fun m!5203853 () Bool)

(assert (=> b!4483334 m!5203853))

(declare-fun m!5203855 () Bool)

(assert (=> b!4483334 m!5203855))

(assert (=> b!4483334 m!5203851))

(declare-fun m!5203857 () Bool)

(assert (=> b!4483334 m!5203857))

(assert (=> b!4483334 m!5203849))

(declare-fun m!5203859 () Bool)

(assert (=> b!4483334 m!5203859))

(declare-fun m!5203861 () Bool)

(assert (=> b!4483334 m!5203861))

(assert (=> b!4483334 m!5203479))

(declare-fun m!5203863 () Bool)

(assert (=> b!4483334 m!5203863))

(declare-fun m!5203865 () Bool)

(assert (=> b!4483332 m!5203865))

(declare-fun m!5203867 () Bool)

(assert (=> b!4483333 m!5203867))

(assert (=> bm!312141 m!5203479))

(declare-fun m!5203869 () Bool)

(assert (=> bm!312141 m!5203869))

(assert (=> b!4482967 d!1372357))

(declare-fun bs!825599 () Bool)

(declare-fun d!1372399 () Bool)

(assert (= bs!825599 (and d!1372399 start!441162)))

(declare-fun lambda!165890 () Int)

(assert (=> bs!825599 (= lambda!165890 lambda!165804)))

(declare-fun bs!825600 () Bool)

(assert (= bs!825600 (and d!1372399 d!1372205)))

(assert (=> bs!825600 (= lambda!165890 lambda!165812)))

(declare-fun bs!825601 () Bool)

(assert (= bs!825601 (and d!1372399 d!1372221)))

(assert (=> bs!825601 (= lambda!165890 lambda!165815)))

(declare-fun bs!825602 () Bool)

(assert (= bs!825602 (and d!1372399 d!1372237)))

(assert (=> bs!825602 (not (= lambda!165890 lambda!165824))))

(declare-fun lt!1669637 () ListMap!3407)

(assert (=> d!1372399 (invariantList!954 (toList!4146 lt!1669637))))

(declare-fun e!2792371 () ListMap!3407)

(assert (=> d!1372399 (= lt!1669637 e!2792371)))

(declare-fun c!763694 () Bool)

(assert (=> d!1372399 (= c!763694 (is-Cons!50403 (t!357481 (toList!4145 lm!1477))))))

(assert (=> d!1372399 (forall!10071 (t!357481 (toList!4145 lm!1477)) lambda!165890)))

(assert (=> d!1372399 (= (extractMap!1125 (t!357481 (toList!4145 lm!1477))) lt!1669637)))

(declare-fun b!4483337 () Bool)

(assert (=> b!4483337 (= e!2792371 (addToMapMapFromBucket!622 (_2!28650 (h!56194 (t!357481 (toList!4145 lm!1477)))) (extractMap!1125 (t!357481 (t!357481 (toList!4145 lm!1477))))))))

(declare-fun b!4483338 () Bool)

(assert (=> b!4483338 (= e!2792371 (ListMap!3408 Nil!50402))))

(assert (= (and d!1372399 c!763694) b!4483337))

(assert (= (and d!1372399 (not c!763694)) b!4483338))

(declare-fun m!5203871 () Bool)

(assert (=> d!1372399 m!5203871))

(declare-fun m!5203873 () Bool)

(assert (=> d!1372399 m!5203873))

(declare-fun m!5203875 () Bool)

(assert (=> b!4483337 m!5203875))

(assert (=> b!4483337 m!5203875))

(declare-fun m!5203877 () Bool)

(assert (=> b!4483337 m!5203877))

(assert (=> b!4482967 d!1372399))

(assert (=> b!4482955 d!1372281))

(declare-fun d!1372401 () Bool)

(declare-fun lt!1669638 () Bool)

(assert (=> d!1372401 (= lt!1669638 (set.member key!3287 (content!8182 e!2792117)))))

(declare-fun e!2792372 () Bool)

(assert (=> d!1372401 (= lt!1669638 e!2792372)))

(declare-fun res!1861742 () Bool)

(assert (=> d!1372401 (=> (not res!1861742) (not e!2792372))))

(assert (=> d!1372401 (= res!1861742 (is-Cons!50406 e!2792117))))

(assert (=> d!1372401 (= (contains!13010 e!2792117 key!3287) lt!1669638)))

(declare-fun b!4483339 () Bool)

(declare-fun e!2792373 () Bool)

(assert (=> b!4483339 (= e!2792372 e!2792373)))

(declare-fun res!1861741 () Bool)

(assert (=> b!4483339 (=> res!1861741 e!2792373)))

(assert (=> b!4483339 (= res!1861741 (= (h!56199 e!2792117) key!3287))))

(declare-fun b!4483340 () Bool)

(assert (=> b!4483340 (= e!2792373 (contains!13010 (t!357484 e!2792117) key!3287))))

(assert (= (and d!1372401 res!1861742) b!4483339))

(assert (= (and b!4483339 (not res!1861741)) b!4483340))

(declare-fun m!5203879 () Bool)

(assert (=> d!1372401 m!5203879))

(declare-fun m!5203881 () Bool)

(assert (=> d!1372401 m!5203881))

(declare-fun m!5203883 () Bool)

(assert (=> b!4483340 m!5203883))

(assert (=> bm!312129 d!1372401))

(declare-fun d!1372403 () Bool)

(declare-fun choose!28813 (Hashable!5464 K!11813) (_ BitVec 64))

(assert (=> d!1372403 (= (hash!2572 hashF!1107 key!3287) (choose!28813 hashF!1107 key!3287))))

(declare-fun bs!825603 () Bool)

(assert (= bs!825603 d!1372403))

(declare-fun m!5203885 () Bool)

(assert (=> bs!825603 m!5203885))

(assert (=> d!1372249 d!1372403))

(declare-fun d!1372405 () Bool)

(declare-fun lt!1669639 () Bool)

(assert (=> d!1372405 (= lt!1669639 (set.member lt!1669379 (content!8180 (t!357481 (toList!4145 lm!1477)))))))

(declare-fun e!2792375 () Bool)

(assert (=> d!1372405 (= lt!1669639 e!2792375)))

(declare-fun res!1861743 () Bool)

(assert (=> d!1372405 (=> (not res!1861743) (not e!2792375))))

(assert (=> d!1372405 (= res!1861743 (is-Cons!50403 (t!357481 (toList!4145 lm!1477))))))

(assert (=> d!1372405 (= (contains!13005 (t!357481 (toList!4145 lm!1477)) lt!1669379) lt!1669639)))

(declare-fun b!4483341 () Bool)

(declare-fun e!2792374 () Bool)

(assert (=> b!4483341 (= e!2792375 e!2792374)))

(declare-fun res!1861744 () Bool)

(assert (=> b!4483341 (=> res!1861744 e!2792374)))

(assert (=> b!4483341 (= res!1861744 (= (h!56194 (t!357481 (toList!4145 lm!1477))) lt!1669379))))

(declare-fun b!4483342 () Bool)

(assert (=> b!4483342 (= e!2792374 (contains!13005 (t!357481 (t!357481 (toList!4145 lm!1477))) lt!1669379))))

(assert (= (and d!1372405 res!1861743) b!4483341))

(assert (= (and b!4483341 (not res!1861744)) b!4483342))

(assert (=> d!1372405 m!5203655))

(declare-fun m!5203887 () Bool)

(assert (=> d!1372405 m!5203887))

(declare-fun m!5203889 () Bool)

(assert (=> b!4483342 m!5203889))

(assert (=> b!4483001 d!1372405))

(declare-fun b!4483343 () Bool)

(declare-fun e!2792376 () Bool)

(declare-fun tp!1336822 () Bool)

(assert (=> b!4483343 (= e!2792376 (and tp_is_empty!27553 tp_is_empty!27555 tp!1336822))))

(assert (=> b!4483053 (= tp!1336808 e!2792376)))

(assert (= (and b!4483053 (is-Cons!50402 (_2!28650 (h!56194 (toList!4145 lm!1477))))) b!4483343))

(declare-fun b!4483344 () Bool)

(declare-fun e!2792377 () Bool)

(declare-fun tp!1336823 () Bool)

(declare-fun tp!1336824 () Bool)

(assert (=> b!4483344 (= e!2792377 (and tp!1336823 tp!1336824))))

(assert (=> b!4483053 (= tp!1336809 e!2792377)))

(assert (= (and b!4483053 (is-Cons!50403 (t!357481 (toList!4145 lm!1477)))) b!4483344))

(declare-fun b!4483345 () Bool)

(declare-fun e!2792378 () Bool)

(declare-fun tp!1336825 () Bool)

(assert (=> b!4483345 (= e!2792378 (and tp_is_empty!27553 tp_is_empty!27555 tp!1336825))))

(assert (=> b!4483058 (= tp!1336812 e!2792378)))

(assert (= (and b!4483058 (is-Cons!50402 (t!357480 (t!357480 newBucket!178)))) b!4483345))

(declare-fun b_lambda!150453 () Bool)

(assert (= b_lambda!150433 (or d!1372221 b_lambda!150453)))

(declare-fun bs!825604 () Bool)

(declare-fun d!1372407 () Bool)

(assert (= bs!825604 (and d!1372407 d!1372221)))

(assert (=> bs!825604 (= (dynLambda!21053 lambda!165815 (h!56194 (toList!4145 lm!1477))) (noDuplicateKeys!1069 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))

(assert (=> bs!825604 m!5203569))

(assert (=> b!4483171 d!1372407))

(declare-fun b_lambda!150455 () Bool)

(assert (= b_lambda!150443 (or d!1372205 b_lambda!150455)))

(declare-fun bs!825605 () Bool)

(declare-fun d!1372409 () Bool)

(assert (= bs!825605 (and d!1372409 d!1372205)))

(assert (=> bs!825605 (= (dynLambda!21053 lambda!165812 (h!56194 (toList!4145 lm!1477))) (noDuplicateKeys!1069 (_2!28650 (h!56194 (toList!4145 lm!1477)))))))

(assert (=> bs!825605 m!5203569))

(assert (=> b!4483213 d!1372409))

(declare-fun b_lambda!150457 () Bool)

(assert (= b_lambda!150437 (or d!1372237 b_lambda!150457)))

(declare-fun bs!825606 () Bool)

(declare-fun d!1372411 () Bool)

(assert (= bs!825606 (and d!1372411 d!1372237)))

(assert (=> bs!825606 (= (dynLambda!21053 lambda!165824 (h!56194 (toList!4145 lm!1477))) (allKeysSameHash!923 (_2!28650 (h!56194 (toList!4145 lm!1477))) (_1!28650 (h!56194 (toList!4145 lm!1477))) hashF!1107))))

(declare-fun m!5203891 () Bool)

(assert (=> bs!825606 m!5203891))

(assert (=> b!4483181 d!1372411))

(declare-fun b_lambda!150459 () Bool)

(assert (= b_lambda!150435 (or start!441162 b_lambda!150459)))

(declare-fun bs!825607 () Bool)

(declare-fun d!1372413 () Bool)

(assert (= bs!825607 (and d!1372413 start!441162)))

(assert (=> bs!825607 (= (dynLambda!21053 lambda!165804 (h!56194 (t!357481 (toList!4145 lm!1477)))) (noDuplicateKeys!1069 (_2!28650 (h!56194 (t!357481 (toList!4145 lm!1477))))))))

(declare-fun m!5203893 () Bool)

(assert (=> bs!825607 m!5203893))

(assert (=> b!4483173 d!1372413))

(declare-fun b_lambda!150461 () Bool)

(assert (= b_lambda!150439 (or start!441162 b_lambda!150461)))

(assert (=> d!1372313 d!1372253))

(declare-fun b_lambda!150463 () Bool)

(assert (= b_lambda!150441 (or d!1372245 b_lambda!150463)))

(declare-fun bs!825608 () Bool)

(declare-fun d!1372415 () Bool)

(assert (= bs!825608 (and d!1372415 d!1372245)))

(assert (=> bs!825608 (= (dynLambda!21055 lambda!165827 (h!56193 newBucket!178)) (= (hash!2570 hashF!1107 (_1!28649 (h!56193 newBucket!178))) hash!344))))

(declare-fun m!5203895 () Bool)

(assert (=> bs!825608 m!5203895))

(assert (=> b!4483198 d!1372415))

(push 1)

(assert (not d!1372331))

(assert (not bs!825605))

(assert (not b!4483155))

(assert tp_is_empty!27555)

(assert (not b_lambda!150459))

(assert (not b_lambda!150453))

(assert (not bm!312140))

(assert (not d!1372357))

(assert (not b_lambda!150425))

(assert (not b!4483207))

(assert (not d!1372401))

(assert (not b!4483256))

(assert (not b!4483170))

(assert (not b!4483126))

(assert (not b!4483331))

(assert (not bs!825608))

(assert (not d!1372335))

(assert (not d!1372343))

(assert (not b!4483344))

(assert (not b!4483193))

(assert (not b!4483334))

(assert (not d!1372289))

(assert (not b_lambda!150463))

(assert (not d!1372403))

(assert (not bs!825606))

(assert (not b!4483345))

(assert (not b!4483208))

(assert (not b!4483172))

(assert (not b_lambda!150423))

(assert (not b!4483229))

(assert (not b!4483185))

(assert (not b!4483333))

(assert (not b!4483182))

(assert (not b!4483188))

(assert (not b!4483120))

(assert (not d!1372295))

(assert (not b!4483342))

(assert (not b!4483217))

(assert (not b_lambda!150457))

(assert (not b!4483163))

(assert (not b!4483340))

(assert (not bm!312139))

(assert (not b!4483191))

(assert (not bs!825604))

(assert (not b!4483337))

(assert (not b!4483343))

(assert (not b!4483206))

(assert (not b!4483211))

(assert (not d!1372349))

(assert (not b!4483251))

(assert (not b!4483134))

(assert (not b!4483180))

(assert (not b!4483254))

(assert (not d!1372345))

(assert (not b!4483174))

(assert (not d!1372283))

(assert (not b_lambda!150461))

(assert (not d!1372399))

(assert (not b!4483133))

(assert (not d!1372281))

(assert (not b!4483257))

(assert (not b!4483231))

(assert (not b!4483332))

(assert (not b!4483166))

(assert tp_is_empty!27553)

(assert (not b!4483205))

(assert (not b!4483214))

(assert (not d!1372291))

(assert (not b!4483258))

(assert (not b!4483192))

(assert (not d!1372329))

(assert (not d!1372279))

(assert (not d!1372325))

(assert (not d!1372297))

(assert (not b!4483148))

(assert (not d!1372299))

(assert (not b!4483216))

(assert (not d!1372405))

(assert (not b!4483157))

(assert (not bs!825607))

(assert (not b!4483232))

(assert (not b_lambda!150455))

(assert (not b!4483135))

(assert (not b!4483218))

(assert (not d!1372317))

(assert (not b!4483199))

(assert (not bm!312141))

(assert (not b!4483168))

(assert (not d!1372353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

