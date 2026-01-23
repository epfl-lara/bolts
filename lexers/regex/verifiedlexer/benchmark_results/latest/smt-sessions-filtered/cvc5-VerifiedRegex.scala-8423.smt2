; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437222 () Bool)

(assert start!437222)

(declare-fun b!4459321 () Bool)

(declare-fun res!1848998 () Bool)

(declare-fun e!2776788 () Bool)

(assert (=> b!4459321 (=> (not res!1848998) (not e!2776788))))

(declare-datatypes ((K!11518 0))(
  ( (K!11519 (val!17485 Int)) )
))
(declare-datatypes ((V!11764 0))(
  ( (V!11765 (val!17486 Int)) )
))
(declare-datatypes ((tuple2!50290 0))(
  ( (tuple2!50291 (_1!28439 K!11518) (_2!28439 V!11764)) )
))
(declare-datatypes ((List!50255 0))(
  ( (Nil!50131) (Cons!50131 (h!55876 tuple2!50290) (t!357205 List!50255)) )
))
(declare-fun l!12858 () List!50255)

(declare-fun noDuplicateKeys!965 (List!50255) Bool)

(assert (=> b!4459321 (= res!1848998 (noDuplicateKeys!965 l!12858))))

(declare-fun b!4459322 () Bool)

(declare-fun res!1848997 () Bool)

(assert (=> b!4459322 (=> (not res!1848997) (not e!2776788))))

(declare-datatypes ((tuple2!50292 0))(
  ( (tuple2!50293 (_1!28440 (_ BitVec 64)) (_2!28440 List!50255)) )
))
(declare-datatypes ((List!50256 0))(
  ( (Nil!50132) (Cons!50132 (h!55877 tuple2!50292) (t!357206 List!50256)) )
))
(declare-datatypes ((ListLongMap!2593 0))(
  ( (ListLongMap!2594 (toList!3937 List!50256)) )
))
(declare-fun lm!1853 () ListLongMap!2593)

(declare-datatypes ((Hashable!5372 0))(
  ( (HashableExt!5371 (__x!31075 Int)) )
))
(declare-fun hashF!1313 () Hashable!5372)

(declare-fun allKeysSameHashInMap!1084 (ListLongMap!2593 Hashable!5372) Bool)

(assert (=> b!4459322 (= res!1848997 (allKeysSameHashInMap!1084 lm!1853 hashF!1313))))

(declare-fun b!4459323 () Bool)

(declare-fun e!2776789 () Bool)

(assert (=> b!4459323 (= e!2776788 e!2776789)))

(declare-fun res!1848999 () Bool)

(assert (=> b!4459323 (=> (not res!1848999) (not e!2776789))))

(declare-datatypes ((ListMap!3175 0))(
  ( (ListMap!3176 (toList!3938 List!50255)) )
))
(declare-fun lt!1650465 () ListMap!3175)

(declare-fun key!4412 () K!11518)

(declare-fun contains!12631 (ListMap!3175 K!11518) Bool)

(assert (=> b!4459323 (= res!1848999 (contains!12631 lt!1650465 key!4412))))

(declare-fun extractMap!1033 (List!50256) ListMap!3175)

(assert (=> b!4459323 (= lt!1650465 (extractMap!1033 (toList!3937 lm!1853)))))

(declare-fun b!4459324 () Bool)

(declare-fun e!2776791 () Bool)

(declare-fun tp!1335517 () Bool)

(assert (=> b!4459324 (= e!2776791 tp!1335517)))

(declare-fun b!4459325 () Bool)

(declare-fun res!1849000 () Bool)

(assert (=> b!4459325 (=> (not res!1849000) (not e!2776789))))

(assert (=> b!4459325 (= res!1849000 (not (is-Cons!50131 l!12858)))))

(declare-fun tp!1335516 () Bool)

(declare-fun tp_is_empty!27081 () Bool)

(declare-fun e!2776790 () Bool)

(declare-fun b!4459326 () Bool)

(declare-fun tp_is_empty!27083 () Bool)

(assert (=> b!4459326 (= e!2776790 (and tp_is_empty!27081 tp_is_empty!27083 tp!1335516))))

(declare-fun res!1848996 () Bool)

(assert (=> start!437222 (=> (not res!1848996) (not e!2776788))))

(declare-fun lambda!161228 () Int)

(declare-fun forall!9901 (List!50256 Int) Bool)

(assert (=> start!437222 (= res!1848996 (forall!9901 (toList!3937 lm!1853) lambda!161228))))

(assert (=> start!437222 e!2776788))

(declare-fun inv!65705 (ListLongMap!2593) Bool)

(assert (=> start!437222 (and (inv!65705 lm!1853) e!2776791)))

(assert (=> start!437222 true))

(assert (=> start!437222 e!2776790))

(assert (=> start!437222 tp_is_empty!27081))

(declare-fun b!4459320 () Bool)

(declare-fun addToMapMapFromBucket!546 (List!50255 ListMap!3175) ListMap!3175)

(assert (=> b!4459320 (= e!2776789 (not (contains!12631 (addToMapMapFromBucket!546 l!12858 lt!1650465) key!4412)))))

(assert (= (and start!437222 res!1848996) b!4459322))

(assert (= (and b!4459322 res!1848997) b!4459321))

(assert (= (and b!4459321 res!1848998) b!4459323))

(assert (= (and b!4459323 res!1848999) b!4459325))

(assert (= (and b!4459325 res!1849000) b!4459320))

(assert (= start!437222 b!4459324))

(assert (= (and start!437222 (is-Cons!50131 l!12858)) b!4459326))

(declare-fun m!5162271 () Bool)

(assert (=> b!4459323 m!5162271))

(declare-fun m!5162273 () Bool)

(assert (=> b!4459323 m!5162273))

(declare-fun m!5162275 () Bool)

(assert (=> b!4459321 m!5162275))

(declare-fun m!5162277 () Bool)

(assert (=> start!437222 m!5162277))

(declare-fun m!5162279 () Bool)

(assert (=> start!437222 m!5162279))

(declare-fun m!5162281 () Bool)

(assert (=> b!4459322 m!5162281))

(declare-fun m!5162283 () Bool)

(assert (=> b!4459320 m!5162283))

(assert (=> b!4459320 m!5162283))

(declare-fun m!5162285 () Bool)

(assert (=> b!4459320 m!5162285))

(push 1)

(assert (not start!437222))

(assert (not b!4459323))

(assert (not b!4459326))

(assert (not b!4459321))

(assert tp_is_empty!27081)

(assert (not b!4459320))

(assert tp_is_empty!27083)

(assert (not b!4459322))

(assert (not b!4459324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!310386 () Bool)

(declare-fun call!310391 () Bool)

(declare-datatypes ((List!50259 0))(
  ( (Nil!50135) (Cons!50135 (h!55880 K!11518) (t!357209 List!50259)) )
))
(declare-fun e!2776822 () List!50259)

(declare-fun contains!12633 (List!50259 K!11518) Bool)

(assert (=> bm!310386 (= call!310391 (contains!12633 e!2776822 key!4412))))

(declare-fun c!758983 () Bool)

(declare-fun c!758982 () Bool)

(assert (=> bm!310386 (= c!758983 c!758982)))

(declare-fun b!4459372 () Bool)

(declare-fun e!2776826 () Bool)

(declare-fun keys!17256 (ListMap!3175) List!50259)

(assert (=> b!4459372 (= e!2776826 (not (contains!12633 (keys!17256 lt!1650465) key!4412)))))

(declare-fun b!4459373 () Bool)

(declare-datatypes ((Unit!86532 0))(
  ( (Unit!86533) )
))
(declare-fun e!2776827 () Unit!86532)

(declare-fun Unit!86534 () Unit!86532)

(assert (=> b!4459373 (= e!2776827 Unit!86534)))

(declare-fun b!4459374 () Bool)

(declare-fun e!2776825 () Unit!86532)

(assert (=> b!4459374 (= e!2776825 e!2776827)))

(declare-fun c!758981 () Bool)

(assert (=> b!4459374 (= c!758981 call!310391)))

(declare-fun b!4459375 () Bool)

(declare-fun lt!1650485 () Unit!86532)

(assert (=> b!4459375 (= e!2776825 lt!1650485)))

(declare-fun lt!1650489 () Unit!86532)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!764 (List!50255 K!11518) Unit!86532)

(assert (=> b!4459375 (= lt!1650489 (lemmaContainsKeyImpliesGetValueByKeyDefined!764 (toList!3938 lt!1650465) key!4412))))

(declare-datatypes ((Option!10873 0))(
  ( (None!10872) (Some!10872 (v!44130 V!11764)) )
))
(declare-fun isDefined!8161 (Option!10873) Bool)

(declare-fun getValueByKey!859 (List!50255 K!11518) Option!10873)

(assert (=> b!4459375 (isDefined!8161 (getValueByKey!859 (toList!3938 lt!1650465) key!4412))))

(declare-fun lt!1650492 () Unit!86532)

(assert (=> b!4459375 (= lt!1650492 lt!1650489)))

(declare-fun lemmaInListThenGetKeysListContains!337 (List!50255 K!11518) Unit!86532)

(assert (=> b!4459375 (= lt!1650485 (lemmaInListThenGetKeysListContains!337 (toList!3938 lt!1650465) key!4412))))

(assert (=> b!4459375 call!310391))

(declare-fun b!4459377 () Bool)

(declare-fun e!2776824 () Bool)

(assert (=> b!4459377 (= e!2776824 (contains!12633 (keys!17256 lt!1650465) key!4412))))

(declare-fun b!4459378 () Bool)

(declare-fun getKeysList!341 (List!50255) List!50259)

(assert (=> b!4459378 (= e!2776822 (getKeysList!341 (toList!3938 lt!1650465)))))

(declare-fun b!4459379 () Bool)

(assert (=> b!4459379 (= e!2776822 (keys!17256 lt!1650465))))

(declare-fun b!4459380 () Bool)

(declare-fun e!2776823 () Bool)

(assert (=> b!4459380 (= e!2776823 e!2776824)))

(declare-fun res!1849028 () Bool)

(assert (=> b!4459380 (=> (not res!1849028) (not e!2776824))))

(assert (=> b!4459380 (= res!1849028 (isDefined!8161 (getValueByKey!859 (toList!3938 lt!1650465) key!4412)))))

(declare-fun d!1359964 () Bool)

(assert (=> d!1359964 e!2776823))

(declare-fun res!1849030 () Bool)

(assert (=> d!1359964 (=> res!1849030 e!2776823)))

(assert (=> d!1359964 (= res!1849030 e!2776826)))

(declare-fun res!1849029 () Bool)

(assert (=> d!1359964 (=> (not res!1849029) (not e!2776826))))

(declare-fun lt!1650487 () Bool)

(assert (=> d!1359964 (= res!1849029 (not lt!1650487))))

(declare-fun lt!1650490 () Bool)

(assert (=> d!1359964 (= lt!1650487 lt!1650490)))

(declare-fun lt!1650486 () Unit!86532)

(assert (=> d!1359964 (= lt!1650486 e!2776825)))

(assert (=> d!1359964 (= c!758982 lt!1650490)))

(declare-fun containsKey!1363 (List!50255 K!11518) Bool)

(assert (=> d!1359964 (= lt!1650490 (containsKey!1363 (toList!3938 lt!1650465) key!4412))))

(assert (=> d!1359964 (= (contains!12631 lt!1650465 key!4412) lt!1650487)))

(declare-fun b!4459376 () Bool)

(assert (=> b!4459376 false))

(declare-fun lt!1650491 () Unit!86532)

(declare-fun lt!1650488 () Unit!86532)

(assert (=> b!4459376 (= lt!1650491 lt!1650488)))

(assert (=> b!4459376 (containsKey!1363 (toList!3938 lt!1650465) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!340 (List!50255 K!11518) Unit!86532)

(assert (=> b!4459376 (= lt!1650488 (lemmaInGetKeysListThenContainsKey!340 (toList!3938 lt!1650465) key!4412))))

(declare-fun Unit!86535 () Unit!86532)

(assert (=> b!4459376 (= e!2776827 Unit!86535)))

(assert (= (and d!1359964 c!758982) b!4459375))

(assert (= (and d!1359964 (not c!758982)) b!4459374))

(assert (= (and b!4459374 c!758981) b!4459376))

(assert (= (and b!4459374 (not c!758981)) b!4459373))

(assert (= (or b!4459375 b!4459374) bm!310386))

(assert (= (and bm!310386 c!758983) b!4459378))

(assert (= (and bm!310386 (not c!758983)) b!4459379))

(assert (= (and d!1359964 res!1849029) b!4459372))

(assert (= (and d!1359964 (not res!1849030)) b!4459380))

(assert (= (and b!4459380 res!1849028) b!4459377))

(declare-fun m!5162307 () Bool)

(assert (=> b!4459379 m!5162307))

(assert (=> b!4459377 m!5162307))

(assert (=> b!4459377 m!5162307))

(declare-fun m!5162309 () Bool)

(assert (=> b!4459377 m!5162309))

(assert (=> b!4459372 m!5162307))

(assert (=> b!4459372 m!5162307))

(assert (=> b!4459372 m!5162309))

(declare-fun m!5162311 () Bool)

(assert (=> d!1359964 m!5162311))

(declare-fun m!5162313 () Bool)

(assert (=> bm!310386 m!5162313))

(declare-fun m!5162315 () Bool)

(assert (=> b!4459375 m!5162315))

(declare-fun m!5162317 () Bool)

(assert (=> b!4459375 m!5162317))

(assert (=> b!4459375 m!5162317))

(declare-fun m!5162319 () Bool)

(assert (=> b!4459375 m!5162319))

(declare-fun m!5162321 () Bool)

(assert (=> b!4459375 m!5162321))

(assert (=> b!4459376 m!5162311))

(declare-fun m!5162323 () Bool)

(assert (=> b!4459376 m!5162323))

(assert (=> b!4459380 m!5162317))

(assert (=> b!4459380 m!5162317))

(assert (=> b!4459380 m!5162319))

(declare-fun m!5162325 () Bool)

(assert (=> b!4459378 m!5162325))

(assert (=> b!4459323 d!1359964))

(declare-fun bs!791347 () Bool)

(declare-fun d!1359970 () Bool)

(assert (= bs!791347 (and d!1359970 start!437222)))

(declare-fun lambda!161234 () Int)

(assert (=> bs!791347 (= lambda!161234 lambda!161228)))

(declare-fun lt!1650495 () ListMap!3175)

(declare-fun invariantList!894 (List!50255) Bool)

(assert (=> d!1359970 (invariantList!894 (toList!3938 lt!1650495))))

(declare-fun e!2776830 () ListMap!3175)

(assert (=> d!1359970 (= lt!1650495 e!2776830)))

(declare-fun c!758986 () Bool)

(assert (=> d!1359970 (= c!758986 (is-Cons!50132 (toList!3937 lm!1853)))))

(assert (=> d!1359970 (forall!9901 (toList!3937 lm!1853) lambda!161234)))

(assert (=> d!1359970 (= (extractMap!1033 (toList!3937 lm!1853)) lt!1650495)))

(declare-fun b!4459385 () Bool)

(assert (=> b!4459385 (= e!2776830 (addToMapMapFromBucket!546 (_2!28440 (h!55877 (toList!3937 lm!1853))) (extractMap!1033 (t!357206 (toList!3937 lm!1853)))))))

(declare-fun b!4459386 () Bool)

(assert (=> b!4459386 (= e!2776830 (ListMap!3176 Nil!50131))))

(assert (= (and d!1359970 c!758986) b!4459385))

(assert (= (and d!1359970 (not c!758986)) b!4459386))

(declare-fun m!5162327 () Bool)

(assert (=> d!1359970 m!5162327))

(declare-fun m!5162329 () Bool)

(assert (=> d!1359970 m!5162329))

(declare-fun m!5162331 () Bool)

(assert (=> b!4459385 m!5162331))

(assert (=> b!4459385 m!5162331))

(declare-fun m!5162333 () Bool)

(assert (=> b!4459385 m!5162333))

(assert (=> b!4459323 d!1359970))

(declare-fun bm!310387 () Bool)

(declare-fun call!310392 () Bool)

(declare-fun e!2776831 () List!50259)

(assert (=> bm!310387 (= call!310392 (contains!12633 e!2776831 key!4412))))

(declare-fun c!758989 () Bool)

(declare-fun c!758988 () Bool)

(assert (=> bm!310387 (= c!758989 c!758988)))

(declare-fun e!2776835 () Bool)

(declare-fun b!4459387 () Bool)

(assert (=> b!4459387 (= e!2776835 (not (contains!12633 (keys!17256 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412)))))

(declare-fun b!4459388 () Bool)

(declare-fun e!2776836 () Unit!86532)

(declare-fun Unit!86536 () Unit!86532)

(assert (=> b!4459388 (= e!2776836 Unit!86536)))

(declare-fun b!4459389 () Bool)

(declare-fun e!2776834 () Unit!86532)

(assert (=> b!4459389 (= e!2776834 e!2776836)))

(declare-fun c!758987 () Bool)

(assert (=> b!4459389 (= c!758987 call!310392)))

(declare-fun b!4459390 () Bool)

(declare-fun lt!1650496 () Unit!86532)

(assert (=> b!4459390 (= e!2776834 lt!1650496)))

(declare-fun lt!1650500 () Unit!86532)

(assert (=> b!4459390 (= lt!1650500 (lemmaContainsKeyImpliesGetValueByKeyDefined!764 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412))))

(assert (=> b!4459390 (isDefined!8161 (getValueByKey!859 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412))))

(declare-fun lt!1650503 () Unit!86532)

(assert (=> b!4459390 (= lt!1650503 lt!1650500)))

(assert (=> b!4459390 (= lt!1650496 (lemmaInListThenGetKeysListContains!337 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412))))

(assert (=> b!4459390 call!310392))

(declare-fun b!4459392 () Bool)

(declare-fun e!2776833 () Bool)

(assert (=> b!4459392 (= e!2776833 (contains!12633 (keys!17256 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412))))

(declare-fun b!4459393 () Bool)

(assert (=> b!4459393 (= e!2776831 (getKeysList!341 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465))))))

(declare-fun b!4459394 () Bool)

(assert (=> b!4459394 (= e!2776831 (keys!17256 (addToMapMapFromBucket!546 l!12858 lt!1650465)))))

(declare-fun b!4459395 () Bool)

(declare-fun e!2776832 () Bool)

(assert (=> b!4459395 (= e!2776832 e!2776833)))

(declare-fun res!1849031 () Bool)

(assert (=> b!4459395 (=> (not res!1849031) (not e!2776833))))

(assert (=> b!4459395 (= res!1849031 (isDefined!8161 (getValueByKey!859 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412)))))

(declare-fun d!1359972 () Bool)

(assert (=> d!1359972 e!2776832))

(declare-fun res!1849033 () Bool)

(assert (=> d!1359972 (=> res!1849033 e!2776832)))

(assert (=> d!1359972 (= res!1849033 e!2776835)))

(declare-fun res!1849032 () Bool)

(assert (=> d!1359972 (=> (not res!1849032) (not e!2776835))))

(declare-fun lt!1650498 () Bool)

(assert (=> d!1359972 (= res!1849032 (not lt!1650498))))

(declare-fun lt!1650501 () Bool)

(assert (=> d!1359972 (= lt!1650498 lt!1650501)))

(declare-fun lt!1650497 () Unit!86532)

(assert (=> d!1359972 (= lt!1650497 e!2776834)))

(assert (=> d!1359972 (= c!758988 lt!1650501)))

(assert (=> d!1359972 (= lt!1650501 (containsKey!1363 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412))))

(assert (=> d!1359972 (= (contains!12631 (addToMapMapFromBucket!546 l!12858 lt!1650465) key!4412) lt!1650498)))

(declare-fun b!4459391 () Bool)

(assert (=> b!4459391 false))

(declare-fun lt!1650502 () Unit!86532)

(declare-fun lt!1650499 () Unit!86532)

(assert (=> b!4459391 (= lt!1650502 lt!1650499)))

(assert (=> b!4459391 (containsKey!1363 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412)))

(assert (=> b!4459391 (= lt!1650499 (lemmaInGetKeysListThenContainsKey!340 (toList!3938 (addToMapMapFromBucket!546 l!12858 lt!1650465)) key!4412))))

(declare-fun Unit!86537 () Unit!86532)

(assert (=> b!4459391 (= e!2776836 Unit!86537)))

(assert (= (and d!1359972 c!758988) b!4459390))

(assert (= (and d!1359972 (not c!758988)) b!4459389))

(assert (= (and b!4459389 c!758987) b!4459391))

(assert (= (and b!4459389 (not c!758987)) b!4459388))

(assert (= (or b!4459390 b!4459389) bm!310387))

(assert (= (and bm!310387 c!758989) b!4459393))

(assert (= (and bm!310387 (not c!758989)) b!4459394))

(assert (= (and d!1359972 res!1849032) b!4459387))

(assert (= (and d!1359972 (not res!1849033)) b!4459395))

(assert (= (and b!4459395 res!1849031) b!4459392))

(assert (=> b!4459394 m!5162283))

(declare-fun m!5162335 () Bool)

(assert (=> b!4459394 m!5162335))

(assert (=> b!4459392 m!5162283))

(assert (=> b!4459392 m!5162335))

(assert (=> b!4459392 m!5162335))

(declare-fun m!5162337 () Bool)

(assert (=> b!4459392 m!5162337))

(assert (=> b!4459387 m!5162283))

(assert (=> b!4459387 m!5162335))

(assert (=> b!4459387 m!5162335))

(assert (=> b!4459387 m!5162337))

(declare-fun m!5162339 () Bool)

(assert (=> d!1359972 m!5162339))

(declare-fun m!5162341 () Bool)

(assert (=> bm!310387 m!5162341))

(declare-fun m!5162343 () Bool)

(assert (=> b!4459390 m!5162343))

(declare-fun m!5162345 () Bool)

(assert (=> b!4459390 m!5162345))

(assert (=> b!4459390 m!5162345))

(declare-fun m!5162347 () Bool)

(assert (=> b!4459390 m!5162347))

(declare-fun m!5162349 () Bool)

(assert (=> b!4459390 m!5162349))

(assert (=> b!4459391 m!5162339))

(declare-fun m!5162351 () Bool)

(assert (=> b!4459391 m!5162351))

(assert (=> b!4459395 m!5162345))

(assert (=> b!4459395 m!5162345))

(assert (=> b!4459395 m!5162347))

(declare-fun m!5162353 () Bool)

(assert (=> b!4459393 m!5162353))

(assert (=> b!4459320 d!1359972))

(declare-fun b!4459451 () Bool)

(assert (=> b!4459451 true))

(declare-fun bs!791349 () Bool)

(declare-fun b!4459448 () Bool)

(assert (= bs!791349 (and b!4459448 b!4459451)))

(declare-fun lambda!161267 () Int)

(declare-fun lambda!161266 () Int)

(assert (=> bs!791349 (= lambda!161267 lambda!161266)))

(assert (=> b!4459448 true))

(declare-fun lambda!161268 () Int)

(declare-fun lt!1650587 () ListMap!3175)

(assert (=> bs!791349 (= (= lt!1650587 lt!1650465) (= lambda!161268 lambda!161266))))

(assert (=> b!4459448 (= (= lt!1650587 lt!1650465) (= lambda!161268 lambda!161267))))

(assert (=> b!4459448 true))

(declare-fun bs!791350 () Bool)

(declare-fun d!1359974 () Bool)

(assert (= bs!791350 (and d!1359974 b!4459451)))

(declare-fun lambda!161269 () Int)

(declare-fun lt!1650582 () ListMap!3175)

(assert (=> bs!791350 (= (= lt!1650582 lt!1650465) (= lambda!161269 lambda!161266))))

(declare-fun bs!791351 () Bool)

(assert (= bs!791351 (and d!1359974 b!4459448)))

(assert (=> bs!791351 (= (= lt!1650582 lt!1650465) (= lambda!161269 lambda!161267))))

(assert (=> bs!791351 (= (= lt!1650582 lt!1650587) (= lambda!161269 lambda!161268))))

(assert (=> d!1359974 true))

(declare-fun call!310404 () Bool)

(declare-fun bm!310398 () Bool)

(declare-fun c!759007 () Bool)

(declare-fun forall!9903 (List!50255 Int) Bool)

(assert (=> bm!310398 (= call!310404 (forall!9903 (toList!3938 lt!1650465) (ite c!759007 lambda!161266 lambda!161267)))))

(declare-fun lt!1650595 () ListMap!3175)

(declare-fun bm!310399 () Bool)

(declare-fun call!310403 () Bool)

(assert (=> bm!310399 (= call!310403 (forall!9903 (ite c!759007 (toList!3938 lt!1650465) (toList!3938 lt!1650595)) (ite c!759007 lambda!161266 lambda!161268)))))

(declare-fun e!2776872 () ListMap!3175)

(assert (=> b!4459448 (= e!2776872 lt!1650587)))

(declare-fun +!1321 (ListMap!3175 tuple2!50290) ListMap!3175)

(assert (=> b!4459448 (= lt!1650595 (+!1321 lt!1650465 (h!55876 l!12858)))))

(assert (=> b!4459448 (= lt!1650587 (addToMapMapFromBucket!546 (t!357205 l!12858) (+!1321 lt!1650465 (h!55876 l!12858))))))

(declare-fun lt!1650601 () Unit!86532)

(declare-fun call!310405 () Unit!86532)

(assert (=> b!4459448 (= lt!1650601 call!310405)))

(assert (=> b!4459448 call!310404))

(declare-fun lt!1650592 () Unit!86532)

(assert (=> b!4459448 (= lt!1650592 lt!1650601)))

(assert (=> b!4459448 (forall!9903 (toList!3938 lt!1650595) lambda!161268)))

(declare-fun lt!1650591 () Unit!86532)

(declare-fun Unit!86538 () Unit!86532)

(assert (=> b!4459448 (= lt!1650591 Unit!86538)))

(assert (=> b!4459448 (forall!9903 (t!357205 l!12858) lambda!161268)))

(declare-fun lt!1650585 () Unit!86532)

(declare-fun Unit!86539 () Unit!86532)

(assert (=> b!4459448 (= lt!1650585 Unit!86539)))

(declare-fun lt!1650581 () Unit!86532)

(declare-fun Unit!86540 () Unit!86532)

(assert (=> b!4459448 (= lt!1650581 Unit!86540)))

(declare-fun lt!1650596 () Unit!86532)

(declare-fun forallContained!2192 (List!50255 Int tuple2!50290) Unit!86532)

(assert (=> b!4459448 (= lt!1650596 (forallContained!2192 (toList!3938 lt!1650595) lambda!161268 (h!55876 l!12858)))))

(assert (=> b!4459448 (contains!12631 lt!1650595 (_1!28439 (h!55876 l!12858)))))

(declare-fun lt!1650583 () Unit!86532)

(declare-fun Unit!86541 () Unit!86532)

(assert (=> b!4459448 (= lt!1650583 Unit!86541)))

(assert (=> b!4459448 (contains!12631 lt!1650587 (_1!28439 (h!55876 l!12858)))))

(declare-fun lt!1650600 () Unit!86532)

(declare-fun Unit!86542 () Unit!86532)

(assert (=> b!4459448 (= lt!1650600 Unit!86542)))

(assert (=> b!4459448 (forall!9903 l!12858 lambda!161268)))

(declare-fun lt!1650593 () Unit!86532)

(declare-fun Unit!86543 () Unit!86532)

(assert (=> b!4459448 (= lt!1650593 Unit!86543)))

(assert (=> b!4459448 call!310403))

(declare-fun lt!1650594 () Unit!86532)

(declare-fun Unit!86544 () Unit!86532)

(assert (=> b!4459448 (= lt!1650594 Unit!86544)))

(declare-fun lt!1650588 () Unit!86532)

(declare-fun Unit!86545 () Unit!86532)

(assert (=> b!4459448 (= lt!1650588 Unit!86545)))

(declare-fun lt!1650589 () Unit!86532)

(declare-fun addForallContainsKeyThenBeforeAdding!241 (ListMap!3175 ListMap!3175 K!11518 V!11764) Unit!86532)

(assert (=> b!4459448 (= lt!1650589 (addForallContainsKeyThenBeforeAdding!241 lt!1650465 lt!1650587 (_1!28439 (h!55876 l!12858)) (_2!28439 (h!55876 l!12858))))))

(assert (=> b!4459448 (forall!9903 (toList!3938 lt!1650465) lambda!161268)))

(declare-fun lt!1650597 () Unit!86532)

(assert (=> b!4459448 (= lt!1650597 lt!1650589)))

(assert (=> b!4459448 (forall!9903 (toList!3938 lt!1650465) lambda!161268)))

(declare-fun lt!1650599 () Unit!86532)

(declare-fun Unit!86546 () Unit!86532)

(assert (=> b!4459448 (= lt!1650599 Unit!86546)))

(declare-fun res!1849054 () Bool)

(assert (=> b!4459448 (= res!1849054 (forall!9903 l!12858 lambda!161268))))

(declare-fun e!2776870 () Bool)

(assert (=> b!4459448 (=> (not res!1849054) (not e!2776870))))

(assert (=> b!4459448 e!2776870))

(declare-fun lt!1650598 () Unit!86532)

(declare-fun Unit!86547 () Unit!86532)

(assert (=> b!4459448 (= lt!1650598 Unit!86547)))

(declare-fun e!2776871 () Bool)

(assert (=> d!1359974 e!2776871))

(declare-fun res!1849052 () Bool)

(assert (=> d!1359974 (=> (not res!1849052) (not e!2776871))))

(assert (=> d!1359974 (= res!1849052 (forall!9903 l!12858 lambda!161269))))

(assert (=> d!1359974 (= lt!1650582 e!2776872)))

(assert (=> d!1359974 (= c!759007 (is-Nil!50131 l!12858))))

(assert (=> d!1359974 (noDuplicateKeys!965 l!12858)))

(assert (=> d!1359974 (= (addToMapMapFromBucket!546 l!12858 lt!1650465) lt!1650582)))

(declare-fun b!4459449 () Bool)

(assert (=> b!4459449 (= e!2776871 (invariantList!894 (toList!3938 lt!1650582)))))

(declare-fun b!4459450 () Bool)

(declare-fun res!1849053 () Bool)

(assert (=> b!4459450 (=> (not res!1849053) (not e!2776871))))

(assert (=> b!4459450 (= res!1849053 (forall!9903 (toList!3938 lt!1650465) lambda!161269))))

(assert (=> b!4459451 (= e!2776872 lt!1650465)))

(declare-fun lt!1650584 () Unit!86532)

(assert (=> b!4459451 (= lt!1650584 call!310405)))

(assert (=> b!4459451 call!310404))

(declare-fun lt!1650590 () Unit!86532)

(assert (=> b!4459451 (= lt!1650590 lt!1650584)))

(assert (=> b!4459451 call!310403))

(declare-fun lt!1650586 () Unit!86532)

(declare-fun Unit!86548 () Unit!86532)

(assert (=> b!4459451 (= lt!1650586 Unit!86548)))

(declare-fun bm!310400 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!242 (ListMap!3175) Unit!86532)

(assert (=> bm!310400 (= call!310405 (lemmaContainsAllItsOwnKeys!242 lt!1650465))))

(declare-fun b!4459452 () Bool)

(assert (=> b!4459452 (= e!2776870 (forall!9903 (toList!3938 lt!1650465) lambda!161268))))

(assert (= (and d!1359974 c!759007) b!4459451))

(assert (= (and d!1359974 (not c!759007)) b!4459448))

(assert (= (and b!4459448 res!1849054) b!4459452))

(assert (= (or b!4459451 b!4459448) bm!310400))

(assert (= (or b!4459451 b!4459448) bm!310399))

(assert (= (or b!4459451 b!4459448) bm!310398))

(assert (= (and d!1359974 res!1849052) b!4459450))

(assert (= (and b!4459450 res!1849053) b!4459449))

(declare-fun m!5162403 () Bool)

(assert (=> bm!310398 m!5162403))

(declare-fun m!5162405 () Bool)

(assert (=> b!4459448 m!5162405))

(declare-fun m!5162407 () Bool)

(assert (=> b!4459448 m!5162407))

(declare-fun m!5162409 () Bool)

(assert (=> b!4459448 m!5162409))

(declare-fun m!5162411 () Bool)

(assert (=> b!4459448 m!5162411))

(assert (=> b!4459448 m!5162411))

(declare-fun m!5162413 () Bool)

(assert (=> b!4459448 m!5162413))

(assert (=> b!4459448 m!5162413))

(declare-fun m!5162415 () Bool)

(assert (=> b!4459448 m!5162415))

(declare-fun m!5162417 () Bool)

(assert (=> b!4459448 m!5162417))

(declare-fun m!5162419 () Bool)

(assert (=> b!4459448 m!5162419))

(declare-fun m!5162421 () Bool)

(assert (=> b!4459448 m!5162421))

(declare-fun m!5162423 () Bool)

(assert (=> b!4459448 m!5162423))

(assert (=> b!4459448 m!5162419))

(declare-fun m!5162425 () Bool)

(assert (=> bm!310399 m!5162425))

(declare-fun m!5162427 () Bool)

(assert (=> b!4459450 m!5162427))

(assert (=> b!4459452 m!5162419))

(declare-fun m!5162429 () Bool)

(assert (=> b!4459449 m!5162429))

(declare-fun m!5162431 () Bool)

(assert (=> d!1359974 m!5162431))

(assert (=> d!1359974 m!5162275))

(declare-fun m!5162433 () Bool)

(assert (=> bm!310400 m!5162433))

(assert (=> b!4459320 d!1359974))

(declare-fun d!1359982 () Bool)

(declare-fun res!1849059 () Bool)

(declare-fun e!2776877 () Bool)

(assert (=> d!1359982 (=> res!1849059 e!2776877)))

(assert (=> d!1359982 (= res!1849059 (is-Nil!50132 (toList!3937 lm!1853)))))

(assert (=> d!1359982 (= (forall!9901 (toList!3937 lm!1853) lambda!161228) e!2776877)))

(declare-fun b!4459459 () Bool)

(declare-fun e!2776878 () Bool)

(assert (=> b!4459459 (= e!2776877 e!2776878)))

(declare-fun res!1849060 () Bool)

(assert (=> b!4459459 (=> (not res!1849060) (not e!2776878))))

(declare-fun dynLambda!20985 (Int tuple2!50292) Bool)

(assert (=> b!4459459 (= res!1849060 (dynLambda!20985 lambda!161228 (h!55877 (toList!3937 lm!1853))))))

(declare-fun b!4459460 () Bool)

(assert (=> b!4459460 (= e!2776878 (forall!9901 (t!357206 (toList!3937 lm!1853)) lambda!161228))))

(assert (= (and d!1359982 (not res!1849059)) b!4459459))

(assert (= (and b!4459459 res!1849060) b!4459460))

(declare-fun b_lambda!147749 () Bool)

(assert (=> (not b_lambda!147749) (not b!4459459)))

(declare-fun m!5162435 () Bool)

(assert (=> b!4459459 m!5162435))

(declare-fun m!5162437 () Bool)

(assert (=> b!4459460 m!5162437))

(assert (=> start!437222 d!1359982))

(declare-fun d!1359984 () Bool)

(declare-fun isStrictlySorted!322 (List!50256) Bool)

(assert (=> d!1359984 (= (inv!65705 lm!1853) (isStrictlySorted!322 (toList!3937 lm!1853)))))

(declare-fun bs!791352 () Bool)

(assert (= bs!791352 d!1359984))

(declare-fun m!5162439 () Bool)

(assert (=> bs!791352 m!5162439))

(assert (=> start!437222 d!1359984))

(declare-fun d!1359986 () Bool)

(declare-fun res!1849065 () Bool)

(declare-fun e!2776883 () Bool)

(assert (=> d!1359986 (=> res!1849065 e!2776883)))

(assert (=> d!1359986 (= res!1849065 (not (is-Cons!50131 l!12858)))))

(assert (=> d!1359986 (= (noDuplicateKeys!965 l!12858) e!2776883)))

(declare-fun b!4459465 () Bool)

(declare-fun e!2776884 () Bool)

(assert (=> b!4459465 (= e!2776883 e!2776884)))

(declare-fun res!1849066 () Bool)

(assert (=> b!4459465 (=> (not res!1849066) (not e!2776884))))

(declare-fun containsKey!1364 (List!50255 K!11518) Bool)

(assert (=> b!4459465 (= res!1849066 (not (containsKey!1364 (t!357205 l!12858) (_1!28439 (h!55876 l!12858)))))))

(declare-fun b!4459466 () Bool)

(assert (=> b!4459466 (= e!2776884 (noDuplicateKeys!965 (t!357205 l!12858)))))

(assert (= (and d!1359986 (not res!1849065)) b!4459465))

(assert (= (and b!4459465 res!1849066) b!4459466))

(declare-fun m!5162441 () Bool)

(assert (=> b!4459465 m!5162441))

(declare-fun m!5162443 () Bool)

(assert (=> b!4459466 m!5162443))

(assert (=> b!4459321 d!1359986))

(declare-fun bs!791353 () Bool)

(declare-fun d!1359988 () Bool)

(assert (= bs!791353 (and d!1359988 start!437222)))

(declare-fun lambda!161272 () Int)

(assert (=> bs!791353 (not (= lambda!161272 lambda!161228))))

(declare-fun bs!791354 () Bool)

(assert (= bs!791354 (and d!1359988 d!1359970)))

(assert (=> bs!791354 (not (= lambda!161272 lambda!161234))))

(assert (=> d!1359988 true))

(assert (=> d!1359988 (= (allKeysSameHashInMap!1084 lm!1853 hashF!1313) (forall!9901 (toList!3937 lm!1853) lambda!161272))))

(declare-fun bs!791355 () Bool)

(assert (= bs!791355 d!1359988))

(declare-fun m!5162445 () Bool)

(assert (=> bs!791355 m!5162445))

(assert (=> b!4459322 d!1359988))

(declare-fun b!4459473 () Bool)

(declare-fun e!2776887 () Bool)

(declare-fun tp!1335528 () Bool)

(declare-fun tp!1335529 () Bool)

(assert (=> b!4459473 (= e!2776887 (and tp!1335528 tp!1335529))))

(assert (=> b!4459324 (= tp!1335517 e!2776887)))

(assert (= (and b!4459324 (is-Cons!50132 (toList!3937 lm!1853))) b!4459473))

(declare-fun b!4459478 () Bool)

(declare-fun e!2776890 () Bool)

(declare-fun tp!1335532 () Bool)

(assert (=> b!4459478 (= e!2776890 (and tp_is_empty!27081 tp_is_empty!27083 tp!1335532))))

(assert (=> b!4459326 (= tp!1335516 e!2776890)))

(assert (= (and b!4459326 (is-Cons!50131 (t!357205 l!12858))) b!4459478))

(declare-fun b_lambda!147751 () Bool)

(assert (= b_lambda!147749 (or start!437222 b_lambda!147751)))

(declare-fun bs!791356 () Bool)

(declare-fun d!1359990 () Bool)

(assert (= bs!791356 (and d!1359990 start!437222)))

(assert (=> bs!791356 (= (dynLambda!20985 lambda!161228 (h!55877 (toList!3937 lm!1853))) (noDuplicateKeys!965 (_2!28440 (h!55877 (toList!3937 lm!1853)))))))

(declare-fun m!5162447 () Bool)

(assert (=> bs!791356 m!5162447))

(assert (=> b!4459459 d!1359990))

(push 1)

(assert (not d!1359972))

(assert (not d!1359974))

(assert (not b!4459378))

(assert (not d!1359964))

(assert (not b!4459377))

(assert (not b!4459375))

(assert (not b!4459387))

(assert tp_is_empty!27081)

(assert (not b!4459465))

(assert (not b!4459450))

(assert tp_is_empty!27083)

(assert (not b!4459473))

(assert (not b!4459390))

(assert (not bm!310387))

(assert (not d!1359988))

(assert (not bm!310400))

(assert (not d!1359970))

(assert (not b!4459379))

(assert (not b!4459449))

(assert (not bm!310399))

(assert (not b!4459385))

(assert (not b!4459395))

(assert (not b!4459372))

(assert (not b!4459466))

(assert (not b!4459391))

(assert (not d!1359984))

(assert (not b!4459393))

(assert (not b!4459394))

(assert (not b!4459376))

(assert (not bm!310386))

(assert (not b!4459478))

(assert (not b!4459452))

(assert (not bm!310398))

(assert (not bs!791356))

(assert (not b_lambda!147751))

(assert (not b!4459448))

(assert (not b!4459392))

(assert (not b!4459460))

(assert (not b!4459380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

