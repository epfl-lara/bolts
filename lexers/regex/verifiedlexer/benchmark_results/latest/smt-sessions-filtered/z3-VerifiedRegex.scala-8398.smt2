; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436732 () Bool)

(assert start!436732)

(declare-fun b!4456351 () Bool)

(declare-fun e!2774957 () Bool)

(declare-fun e!2774955 () Bool)

(assert (=> b!4456351 (= e!2774957 e!2774955)))

(declare-fun res!1847392 () Bool)

(assert (=> b!4456351 (=> (not res!1847392) (not e!2774955))))

(declare-datatypes ((K!11395 0))(
  ( (K!11396 (val!17387 Int)) )
))
(declare-datatypes ((V!11641 0))(
  ( (V!11642 (val!17388 Int)) )
))
(declare-datatypes ((tuple2!50094 0))(
  ( (tuple2!50095 (_1!28341 K!11395) (_2!28341 V!11641)) )
))
(declare-datatypes ((List!50139 0))(
  ( (Nil!50015) (Cons!50015 (h!55760 tuple2!50094) (t!357089 List!50139)) )
))
(declare-datatypes ((ListMap!3077 0))(
  ( (ListMap!3078 (toList!3839 List!50139)) )
))
(declare-fun lt!1647648 () ListMap!3077)

(declare-fun key!4412 () K!11395)

(declare-fun contains!12554 (ListMap!3077 K!11395) Bool)

(assert (=> b!4456351 (= res!1847392 (contains!12554 lt!1647648 key!4412))))

(declare-datatypes ((tuple2!50096 0))(
  ( (tuple2!50097 (_1!28342 (_ BitVec 64)) (_2!28342 List!50139)) )
))
(declare-datatypes ((List!50140 0))(
  ( (Nil!50016) (Cons!50016 (h!55761 tuple2!50096) (t!357090 List!50140)) )
))
(declare-datatypes ((ListLongMap!2495 0))(
  ( (ListLongMap!2496 (toList!3840 List!50140)) )
))
(declare-fun lm!1853 () ListLongMap!2495)

(declare-fun extractMap!984 (List!50140) ListMap!3077)

(assert (=> b!4456351 (= lt!1647648 (extractMap!984 (toList!3840 lm!1853)))))

(declare-fun b!4456352 () Bool)

(declare-fun res!1847393 () Bool)

(assert (=> b!4456352 (=> (not res!1847393) (not e!2774957))))

(declare-datatypes ((Hashable!5323 0))(
  ( (HashableExt!5322 (__x!31026 Int)) )
))
(declare-fun hashF!1313 () Hashable!5323)

(declare-fun allKeysSameHashInMap!1035 (ListLongMap!2495 Hashable!5323) Bool)

(assert (=> b!4456352 (= res!1847393 (allKeysSameHashInMap!1035 lm!1853 hashF!1313))))

(declare-fun b!4456353 () Bool)

(declare-fun e!2774954 () Bool)

(declare-fun tp!1335042 () Bool)

(assert (=> b!4456353 (= e!2774954 tp!1335042)))

(declare-fun b!4456354 () Bool)

(declare-fun res!1847394 () Bool)

(assert (=> b!4456354 (=> (not res!1847394) (not e!2774957))))

(declare-fun l!12858 () List!50139)

(declare-fun noDuplicateKeys!916 (List!50139) Bool)

(assert (=> b!4456354 (= res!1847394 (noDuplicateKeys!916 l!12858))))

(declare-fun res!1847391 () Bool)

(assert (=> start!436732 (=> (not res!1847391) (not e!2774957))))

(declare-fun lambda!160391 () Int)

(declare-fun forall!9839 (List!50140 Int) Bool)

(assert (=> start!436732 (= res!1847391 (forall!9839 (toList!3840 lm!1853) lambda!160391))))

(assert (=> start!436732 e!2774957))

(declare-fun inv!65581 (ListLongMap!2495) Bool)

(assert (=> start!436732 (and (inv!65581 lm!1853) e!2774954)))

(assert (=> start!436732 true))

(declare-fun e!2774956 () Bool)

(assert (=> start!436732 e!2774956))

(declare-fun tp_is_empty!26885 () Bool)

(assert (=> start!436732 tp_is_empty!26885))

(declare-fun tp_is_empty!26887 () Bool)

(declare-fun tp!1335043 () Bool)

(declare-fun b!4456355 () Bool)

(assert (=> b!4456355 (= e!2774956 (and tp_is_empty!26885 tp_is_empty!26887 tp!1335043))))

(declare-fun b!4456356 () Bool)

(declare-fun res!1847395 () Bool)

(assert (=> b!4456356 (=> (not res!1847395) (not e!2774955))))

(get-info :version)

(assert (=> b!4456356 (= res!1847395 ((_ is Cons!50015) l!12858))))

(declare-fun b!4456357 () Bool)

(assert (=> b!4456357 (= e!2774955 (not (noDuplicateKeys!916 (t!357089 l!12858))))))

(declare-fun lt!1647644 () ListMap!3077)

(declare-fun addToMapMapFromBucket!510 (List!50139 ListMap!3077) ListMap!3077)

(declare-fun +!1291 (ListMap!3077 tuple2!50094) ListMap!3077)

(assert (=> b!4456357 (= lt!1647644 (addToMapMapFromBucket!510 (t!357089 l!12858) (+!1291 lt!1647648 (h!55760 l!12858))))))

(declare-fun lt!1647647 () ListMap!3077)

(declare-fun eq!475 (ListMap!3077 ListMap!3077) Bool)

(assert (=> b!4456357 (eq!475 (addToMapMapFromBucket!510 (t!357089 l!12858) (+!1291 lt!1647648 (h!55760 l!12858))) (+!1291 lt!1647647 (h!55760 l!12858)))))

(declare-datatypes ((Unit!86092 0))(
  ( (Unit!86093) )
))
(declare-fun lt!1647645 () Unit!86092)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!222 (ListMap!3077 K!11395 V!11641 List!50139) Unit!86092)

(assert (=> b!4456357 (= lt!1647645 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!222 lt!1647648 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858)) (t!357089 l!12858)))))

(assert (=> b!4456357 (contains!12554 lt!1647647 key!4412)))

(assert (=> b!4456357 (= lt!1647647 (addToMapMapFromBucket!510 (t!357089 l!12858) lt!1647648))))

(declare-fun lt!1647646 () Unit!86092)

(declare-fun lemmaAddToMapMaintainsContains!18 (ListLongMap!2495 K!11395 List!50139 Hashable!5323) Unit!86092)

(assert (=> b!4456357 (= lt!1647646 (lemmaAddToMapMaintainsContains!18 lm!1853 key!4412 (t!357089 l!12858) hashF!1313))))

(assert (= (and start!436732 res!1847391) b!4456352))

(assert (= (and b!4456352 res!1847393) b!4456354))

(assert (= (and b!4456354 res!1847394) b!4456351))

(assert (= (and b!4456351 res!1847392) b!4456356))

(assert (= (and b!4456356 res!1847395) b!4456357))

(assert (= start!436732 b!4456353))

(assert (= (and start!436732 ((_ is Cons!50015) l!12858)) b!4456355))

(declare-fun m!5158111 () Bool)

(assert (=> start!436732 m!5158111))

(declare-fun m!5158113 () Bool)

(assert (=> start!436732 m!5158113))

(declare-fun m!5158115 () Bool)

(assert (=> b!4456357 m!5158115))

(declare-fun m!5158117 () Bool)

(assert (=> b!4456357 m!5158117))

(declare-fun m!5158119 () Bool)

(assert (=> b!4456357 m!5158119))

(declare-fun m!5158121 () Bool)

(assert (=> b!4456357 m!5158121))

(declare-fun m!5158123 () Bool)

(assert (=> b!4456357 m!5158123))

(declare-fun m!5158125 () Bool)

(assert (=> b!4456357 m!5158125))

(assert (=> b!4456357 m!5158119))

(declare-fun m!5158127 () Bool)

(assert (=> b!4456357 m!5158127))

(declare-fun m!5158129 () Bool)

(assert (=> b!4456357 m!5158129))

(assert (=> b!4456357 m!5158121))

(assert (=> b!4456357 m!5158115))

(declare-fun m!5158131 () Bool)

(assert (=> b!4456357 m!5158131))

(declare-fun m!5158133 () Bool)

(assert (=> b!4456352 m!5158133))

(declare-fun m!5158135 () Bool)

(assert (=> b!4456351 m!5158135))

(declare-fun m!5158137 () Bool)

(assert (=> b!4456351 m!5158137))

(declare-fun m!5158139 () Bool)

(assert (=> b!4456354 m!5158139))

(check-sat tp_is_empty!26887 (not start!436732) tp_is_empty!26885 (not b!4456357) (not b!4456354) (not b!4456353) (not b!4456351) (not b!4456355) (not b!4456352))
(check-sat)
(get-model)

(declare-fun d!1359369 () Bool)

(declare-fun res!1847412 () Bool)

(declare-fun e!2774974 () Bool)

(assert (=> d!1359369 (=> res!1847412 e!2774974)))

(assert (=> d!1359369 (= res!1847412 (not ((_ is Cons!50015) l!12858)))))

(assert (=> d!1359369 (= (noDuplicateKeys!916 l!12858) e!2774974)))

(declare-fun b!4456376 () Bool)

(declare-fun e!2774975 () Bool)

(assert (=> b!4456376 (= e!2774974 e!2774975)))

(declare-fun res!1847413 () Bool)

(assert (=> b!4456376 (=> (not res!1847413) (not e!2774975))))

(declare-fun containsKey!1329 (List!50139 K!11395) Bool)

(assert (=> b!4456376 (= res!1847413 (not (containsKey!1329 (t!357089 l!12858) (_1!28341 (h!55760 l!12858)))))))

(declare-fun b!4456377 () Bool)

(assert (=> b!4456377 (= e!2774975 (noDuplicateKeys!916 (t!357089 l!12858)))))

(assert (= (and d!1359369 (not res!1847412)) b!4456376))

(assert (= (and b!4456376 res!1847413) b!4456377))

(declare-fun m!5158151 () Bool)

(assert (=> b!4456376 m!5158151))

(assert (=> b!4456377 m!5158129))

(assert (=> b!4456354 d!1359369))

(declare-fun bs!790885 () Bool)

(declare-fun d!1359371 () Bool)

(assert (= bs!790885 (and d!1359371 start!436732)))

(declare-fun lambda!160397 () Int)

(assert (=> bs!790885 (not (= lambda!160397 lambda!160391))))

(assert (=> d!1359371 true))

(assert (=> d!1359371 (= (allKeysSameHashInMap!1035 lm!1853 hashF!1313) (forall!9839 (toList!3840 lm!1853) lambda!160397))))

(declare-fun bs!790886 () Bool)

(assert (= bs!790886 d!1359371))

(declare-fun m!5158163 () Bool)

(assert (=> bs!790886 m!5158163))

(assert (=> b!4456352 d!1359371))

(declare-fun b!4456406 () Bool)

(declare-fun e!2774996 () Bool)

(declare-datatypes ((List!50142 0))(
  ( (Nil!50018) (Cons!50018 (h!55763 K!11395) (t!357092 List!50142)) )
))
(declare-fun contains!12557 (List!50142 K!11395) Bool)

(declare-fun keys!17190 (ListMap!3077) List!50142)

(assert (=> b!4456406 (= e!2774996 (contains!12557 (keys!17190 lt!1647647) key!4412))))

(declare-fun bm!310134 () Bool)

(declare-fun call!310139 () Bool)

(declare-fun e!2774995 () List!50142)

(assert (=> bm!310134 (= call!310139 (contains!12557 e!2774995 key!4412))))

(declare-fun c!758585 () Bool)

(declare-fun c!758583 () Bool)

(assert (=> bm!310134 (= c!758585 c!758583)))

(declare-fun b!4456407 () Bool)

(declare-fun e!2774994 () Unit!86092)

(declare-fun e!2774992 () Unit!86092)

(assert (=> b!4456407 (= e!2774994 e!2774992)))

(declare-fun c!758584 () Bool)

(assert (=> b!4456407 (= c!758584 call!310139)))

(declare-fun b!4456408 () Bool)

(declare-fun getKeysList!325 (List!50139) List!50142)

(assert (=> b!4456408 (= e!2774995 (getKeysList!325 (toList!3839 lt!1647647)))))

(declare-fun b!4456409 () Bool)

(declare-fun e!2774993 () Bool)

(assert (=> b!4456409 (= e!2774993 e!2774996)))

(declare-fun res!1847430 () Bool)

(assert (=> b!4456409 (=> (not res!1847430) (not e!2774996))))

(declare-datatypes ((Option!10857 0))(
  ( (None!10856) (Some!10856 (v!44114 V!11641)) )
))
(declare-fun isDefined!8145 (Option!10857) Bool)

(declare-fun getValueByKey!843 (List!50139 K!11395) Option!10857)

(assert (=> b!4456409 (= res!1847430 (isDefined!8145 (getValueByKey!843 (toList!3839 lt!1647647) key!4412)))))

(declare-fun d!1359375 () Bool)

(assert (=> d!1359375 e!2774993))

(declare-fun res!1847429 () Bool)

(assert (=> d!1359375 (=> res!1847429 e!2774993)))

(declare-fun e!2774997 () Bool)

(assert (=> d!1359375 (= res!1847429 e!2774997)))

(declare-fun res!1847428 () Bool)

(assert (=> d!1359375 (=> (not res!1847428) (not e!2774997))))

(declare-fun lt!1647689 () Bool)

(assert (=> d!1359375 (= res!1847428 (not lt!1647689))))

(declare-fun lt!1647692 () Bool)

(assert (=> d!1359375 (= lt!1647689 lt!1647692)))

(declare-fun lt!1647694 () Unit!86092)

(assert (=> d!1359375 (= lt!1647694 e!2774994)))

(assert (=> d!1359375 (= c!758583 lt!1647692)))

(declare-fun containsKey!1330 (List!50139 K!11395) Bool)

(assert (=> d!1359375 (= lt!1647692 (containsKey!1330 (toList!3839 lt!1647647) key!4412))))

(assert (=> d!1359375 (= (contains!12554 lt!1647647 key!4412) lt!1647689)))

(declare-fun b!4456410 () Bool)

(assert (=> b!4456410 (= e!2774995 (keys!17190 lt!1647647))))

(declare-fun b!4456411 () Bool)

(declare-fun Unit!86107 () Unit!86092)

(assert (=> b!4456411 (= e!2774992 Unit!86107)))

(declare-fun b!4456412 () Bool)

(declare-fun lt!1647687 () Unit!86092)

(assert (=> b!4456412 (= e!2774994 lt!1647687)))

(declare-fun lt!1647691 () Unit!86092)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!748 (List!50139 K!11395) Unit!86092)

(assert (=> b!4456412 (= lt!1647691 (lemmaContainsKeyImpliesGetValueByKeyDefined!748 (toList!3839 lt!1647647) key!4412))))

(assert (=> b!4456412 (isDefined!8145 (getValueByKey!843 (toList!3839 lt!1647647) key!4412))))

(declare-fun lt!1647693 () Unit!86092)

(assert (=> b!4456412 (= lt!1647693 lt!1647691)))

(declare-fun lemmaInListThenGetKeysListContains!321 (List!50139 K!11395) Unit!86092)

(assert (=> b!4456412 (= lt!1647687 (lemmaInListThenGetKeysListContains!321 (toList!3839 lt!1647647) key!4412))))

(assert (=> b!4456412 call!310139))

(declare-fun b!4456413 () Bool)

(assert (=> b!4456413 (= e!2774997 (not (contains!12557 (keys!17190 lt!1647647) key!4412)))))

(declare-fun b!4456414 () Bool)

(assert (=> b!4456414 false))

(declare-fun lt!1647688 () Unit!86092)

(declare-fun lt!1647690 () Unit!86092)

(assert (=> b!4456414 (= lt!1647688 lt!1647690)))

(assert (=> b!4456414 (containsKey!1330 (toList!3839 lt!1647647) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!323 (List!50139 K!11395) Unit!86092)

(assert (=> b!4456414 (= lt!1647690 (lemmaInGetKeysListThenContainsKey!323 (toList!3839 lt!1647647) key!4412))))

(declare-fun Unit!86108 () Unit!86092)

(assert (=> b!4456414 (= e!2774992 Unit!86108)))

(assert (= (and d!1359375 c!758583) b!4456412))

(assert (= (and d!1359375 (not c!758583)) b!4456407))

(assert (= (and b!4456407 c!758584) b!4456414))

(assert (= (and b!4456407 (not c!758584)) b!4456411))

(assert (= (or b!4456412 b!4456407) bm!310134))

(assert (= (and bm!310134 c!758585) b!4456408))

(assert (= (and bm!310134 (not c!758585)) b!4456410))

(assert (= (and d!1359375 res!1847428) b!4456413))

(assert (= (and d!1359375 (not res!1847429)) b!4456409))

(assert (= (and b!4456409 res!1847430) b!4456406))

(declare-fun m!5158197 () Bool)

(assert (=> b!4456414 m!5158197))

(declare-fun m!5158199 () Bool)

(assert (=> b!4456414 m!5158199))

(declare-fun m!5158201 () Bool)

(assert (=> b!4456413 m!5158201))

(assert (=> b!4456413 m!5158201))

(declare-fun m!5158203 () Bool)

(assert (=> b!4456413 m!5158203))

(declare-fun m!5158205 () Bool)

(assert (=> b!4456412 m!5158205))

(declare-fun m!5158207 () Bool)

(assert (=> b!4456412 m!5158207))

(assert (=> b!4456412 m!5158207))

(declare-fun m!5158209 () Bool)

(assert (=> b!4456412 m!5158209))

(declare-fun m!5158211 () Bool)

(assert (=> b!4456412 m!5158211))

(assert (=> d!1359375 m!5158197))

(declare-fun m!5158213 () Bool)

(assert (=> bm!310134 m!5158213))

(assert (=> b!4456409 m!5158207))

(assert (=> b!4456409 m!5158207))

(assert (=> b!4456409 m!5158209))

(assert (=> b!4456410 m!5158201))

(declare-fun m!5158215 () Bool)

(assert (=> b!4456408 m!5158215))

(assert (=> b!4456406 m!5158201))

(assert (=> b!4456406 m!5158201))

(assert (=> b!4456406 m!5158203))

(assert (=> b!4456357 d!1359375))

(declare-fun b!4456502 () Bool)

(assert (=> b!4456502 true))

(declare-fun bs!790910 () Bool)

(declare-fun b!4456503 () Bool)

(assert (= bs!790910 (and b!4456503 b!4456502)))

(declare-fun lambda!160469 () Int)

(declare-fun lambda!160468 () Int)

(assert (=> bs!790910 (= lambda!160469 lambda!160468)))

(assert (=> b!4456503 true))

(declare-fun lambda!160470 () Int)

(declare-fun lt!1647870 () ListMap!3077)

(assert (=> bs!790910 (= (= lt!1647870 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160470 lambda!160468))))

(assert (=> b!4456503 (= (= lt!1647870 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160470 lambda!160469))))

(assert (=> b!4456503 true))

(declare-fun bs!790911 () Bool)

(declare-fun d!1359383 () Bool)

(assert (= bs!790911 (and d!1359383 b!4456502)))

(declare-fun lambda!160471 () Int)

(declare-fun lt!1647861 () ListMap!3077)

(assert (=> bs!790911 (= (= lt!1647861 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160471 lambda!160468))))

(declare-fun bs!790912 () Bool)

(assert (= bs!790912 (and d!1359383 b!4456503)))

(assert (=> bs!790912 (= (= lt!1647861 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160471 lambda!160469))))

(assert (=> bs!790912 (= (= lt!1647861 lt!1647870) (= lambda!160471 lambda!160470))))

(assert (=> d!1359383 true))

(declare-fun e!2775052 () Bool)

(assert (=> d!1359383 e!2775052))

(declare-fun res!1847465 () Bool)

(assert (=> d!1359383 (=> (not res!1847465) (not e!2775052))))

(declare-fun forall!9841 (List!50139 Int) Bool)

(assert (=> d!1359383 (= res!1847465 (forall!9841 (t!357089 l!12858) lambda!160471))))

(declare-fun e!2775053 () ListMap!3077)

(assert (=> d!1359383 (= lt!1647861 e!2775053)))

(declare-fun c!758607 () Bool)

(assert (=> d!1359383 (= c!758607 ((_ is Nil!50015) (t!357089 l!12858)))))

(assert (=> d!1359383 (noDuplicateKeys!916 (t!357089 l!12858))))

(assert (=> d!1359383 (= (addToMapMapFromBucket!510 (t!357089 l!12858) (+!1291 lt!1647648 (h!55760 l!12858))) lt!1647861)))

(declare-fun bm!310157 () Bool)

(declare-fun call!310164 () Unit!86092)

(declare-fun lemmaContainsAllItsOwnKeys!230 (ListMap!3077) Unit!86092)

(assert (=> bm!310157 (= call!310164 (lemmaContainsAllItsOwnKeys!230 (+!1291 lt!1647648 (h!55760 l!12858))))))

(declare-fun bm!310158 () Bool)

(declare-fun call!310162 () Bool)

(assert (=> bm!310158 (= call!310162 (forall!9841 (ite c!758607 (toList!3839 (+!1291 lt!1647648 (h!55760 l!12858))) (t!357089 l!12858)) (ite c!758607 lambda!160468 lambda!160470)))))

(declare-fun b!4456501 () Bool)

(declare-fun invariantList!879 (List!50139) Bool)

(assert (=> b!4456501 (= e!2775052 (invariantList!879 (toList!3839 lt!1647861)))))

(assert (=> b!4456502 (= e!2775053 (+!1291 lt!1647648 (h!55760 l!12858)))))

(declare-fun lt!1647864 () Unit!86092)

(assert (=> b!4456502 (= lt!1647864 call!310164)))

(assert (=> b!4456502 call!310162))

(declare-fun lt!1647859 () Unit!86092)

(assert (=> b!4456502 (= lt!1647859 lt!1647864)))

(declare-fun call!310163 () Bool)

(assert (=> b!4456502 call!310163))

(declare-fun lt!1647869 () Unit!86092)

(declare-fun Unit!86120 () Unit!86092)

(assert (=> b!4456502 (= lt!1647869 Unit!86120)))

(assert (=> b!4456503 (= e!2775053 lt!1647870)))

(declare-fun lt!1647876 () ListMap!3077)

(assert (=> b!4456503 (= lt!1647876 (+!1291 (+!1291 lt!1647648 (h!55760 l!12858)) (h!55760 (t!357089 l!12858))))))

(assert (=> b!4456503 (= lt!1647870 (addToMapMapFromBucket!510 (t!357089 (t!357089 l!12858)) (+!1291 (+!1291 lt!1647648 (h!55760 l!12858)) (h!55760 (t!357089 l!12858)))))))

(declare-fun lt!1647860 () Unit!86092)

(assert (=> b!4456503 (= lt!1647860 call!310164)))

(assert (=> b!4456503 (forall!9841 (toList!3839 (+!1291 lt!1647648 (h!55760 l!12858))) lambda!160469)))

(declare-fun lt!1647867 () Unit!86092)

(assert (=> b!4456503 (= lt!1647867 lt!1647860)))

(assert (=> b!4456503 (forall!9841 (toList!3839 lt!1647876) lambda!160470)))

(declare-fun lt!1647872 () Unit!86092)

(declare-fun Unit!86121 () Unit!86092)

(assert (=> b!4456503 (= lt!1647872 Unit!86121)))

(assert (=> b!4456503 (forall!9841 (t!357089 (t!357089 l!12858)) lambda!160470)))

(declare-fun lt!1647863 () Unit!86092)

(declare-fun Unit!86122 () Unit!86092)

(assert (=> b!4456503 (= lt!1647863 Unit!86122)))

(declare-fun lt!1647862 () Unit!86092)

(declare-fun Unit!86123 () Unit!86092)

(assert (=> b!4456503 (= lt!1647862 Unit!86123)))

(declare-fun lt!1647865 () Unit!86092)

(declare-fun forallContained!2180 (List!50139 Int tuple2!50094) Unit!86092)

(assert (=> b!4456503 (= lt!1647865 (forallContained!2180 (toList!3839 lt!1647876) lambda!160470 (h!55760 (t!357089 l!12858))))))

(assert (=> b!4456503 (contains!12554 lt!1647876 (_1!28341 (h!55760 (t!357089 l!12858))))))

(declare-fun lt!1647856 () Unit!86092)

(declare-fun Unit!86124 () Unit!86092)

(assert (=> b!4456503 (= lt!1647856 Unit!86124)))

(assert (=> b!4456503 (contains!12554 lt!1647870 (_1!28341 (h!55760 (t!357089 l!12858))))))

(declare-fun lt!1647858 () Unit!86092)

(declare-fun Unit!86125 () Unit!86092)

(assert (=> b!4456503 (= lt!1647858 Unit!86125)))

(assert (=> b!4456503 call!310162))

(declare-fun lt!1647868 () Unit!86092)

(declare-fun Unit!86126 () Unit!86092)

(assert (=> b!4456503 (= lt!1647868 Unit!86126)))

(assert (=> b!4456503 (forall!9841 (toList!3839 lt!1647876) lambda!160470)))

(declare-fun lt!1647871 () Unit!86092)

(declare-fun Unit!86127 () Unit!86092)

(assert (=> b!4456503 (= lt!1647871 Unit!86127)))

(declare-fun lt!1647866 () Unit!86092)

(declare-fun Unit!86128 () Unit!86092)

(assert (=> b!4456503 (= lt!1647866 Unit!86128)))

(declare-fun lt!1647875 () Unit!86092)

(declare-fun addForallContainsKeyThenBeforeAdding!229 (ListMap!3077 ListMap!3077 K!11395 V!11641) Unit!86092)

(assert (=> b!4456503 (= lt!1647875 (addForallContainsKeyThenBeforeAdding!229 (+!1291 lt!1647648 (h!55760 l!12858)) lt!1647870 (_1!28341 (h!55760 (t!357089 l!12858))) (_2!28341 (h!55760 (t!357089 l!12858)))))))

(assert (=> b!4456503 (forall!9841 (toList!3839 (+!1291 lt!1647648 (h!55760 l!12858))) lambda!160470)))

(declare-fun lt!1647874 () Unit!86092)

(assert (=> b!4456503 (= lt!1647874 lt!1647875)))

(assert (=> b!4456503 (forall!9841 (toList!3839 (+!1291 lt!1647648 (h!55760 l!12858))) lambda!160470)))

(declare-fun lt!1647873 () Unit!86092)

(declare-fun Unit!86129 () Unit!86092)

(assert (=> b!4456503 (= lt!1647873 Unit!86129)))

(declare-fun res!1847464 () Bool)

(assert (=> b!4456503 (= res!1847464 (forall!9841 (t!357089 l!12858) lambda!160470))))

(declare-fun e!2775051 () Bool)

(assert (=> b!4456503 (=> (not res!1847464) (not e!2775051))))

(assert (=> b!4456503 e!2775051))

(declare-fun lt!1647857 () Unit!86092)

(declare-fun Unit!86130 () Unit!86092)

(assert (=> b!4456503 (= lt!1647857 Unit!86130)))

(declare-fun bm!310159 () Bool)

(assert (=> bm!310159 (= call!310163 (forall!9841 (toList!3839 (+!1291 lt!1647648 (h!55760 l!12858))) (ite c!758607 lambda!160468 lambda!160470)))))

(declare-fun b!4456504 () Bool)

(declare-fun res!1847463 () Bool)

(assert (=> b!4456504 (=> (not res!1847463) (not e!2775052))))

(assert (=> b!4456504 (= res!1847463 (forall!9841 (toList!3839 (+!1291 lt!1647648 (h!55760 l!12858))) lambda!160471))))

(declare-fun b!4456505 () Bool)

(assert (=> b!4456505 (= e!2775051 call!310163)))

(assert (= (and d!1359383 c!758607) b!4456502))

(assert (= (and d!1359383 (not c!758607)) b!4456503))

(assert (= (and b!4456503 res!1847464) b!4456505))

(assert (= (or b!4456502 b!4456503) bm!310157))

(assert (= (or b!4456502 b!4456503) bm!310158))

(assert (= (or b!4456502 b!4456505) bm!310159))

(assert (= (and d!1359383 res!1847465) b!4456504))

(assert (= (and b!4456504 res!1847463) b!4456501))

(declare-fun m!5158339 () Bool)

(assert (=> b!4456503 m!5158339))

(declare-fun m!5158341 () Bool)

(assert (=> b!4456503 m!5158341))

(declare-fun m!5158343 () Bool)

(assert (=> b!4456503 m!5158343))

(declare-fun m!5158345 () Bool)

(assert (=> b!4456503 m!5158345))

(assert (=> b!4456503 m!5158341))

(assert (=> b!4456503 m!5158119))

(declare-fun m!5158347 () Bool)

(assert (=> b!4456503 m!5158347))

(declare-fun m!5158349 () Bool)

(assert (=> b!4456503 m!5158349))

(declare-fun m!5158351 () Bool)

(assert (=> b!4456503 m!5158351))

(declare-fun m!5158353 () Bool)

(assert (=> b!4456503 m!5158353))

(assert (=> b!4456503 m!5158119))

(declare-fun m!5158355 () Bool)

(assert (=> b!4456503 m!5158355))

(assert (=> b!4456503 m!5158355))

(declare-fun m!5158357 () Bool)

(assert (=> b!4456503 m!5158357))

(declare-fun m!5158359 () Bool)

(assert (=> b!4456503 m!5158359))

(assert (=> b!4456503 m!5158351))

(assert (=> bm!310157 m!5158119))

(declare-fun m!5158361 () Bool)

(assert (=> bm!310157 m!5158361))

(declare-fun m!5158363 () Bool)

(assert (=> b!4456501 m!5158363))

(declare-fun m!5158365 () Bool)

(assert (=> b!4456504 m!5158365))

(declare-fun m!5158367 () Bool)

(assert (=> bm!310159 m!5158367))

(declare-fun m!5158369 () Bool)

(assert (=> d!1359383 m!5158369))

(assert (=> d!1359383 m!5158129))

(declare-fun m!5158371 () Bool)

(assert (=> bm!310158 m!5158371))

(assert (=> b!4456357 d!1359383))

(declare-fun d!1359399 () Bool)

(declare-fun e!2775056 () Bool)

(assert (=> d!1359399 e!2775056))

(declare-fun res!1847470 () Bool)

(assert (=> d!1359399 (=> (not res!1847470) (not e!2775056))))

(declare-fun lt!1647886 () ListMap!3077)

(assert (=> d!1359399 (= res!1847470 (contains!12554 lt!1647886 (_1!28341 (h!55760 l!12858))))))

(declare-fun lt!1647885 () List!50139)

(assert (=> d!1359399 (= lt!1647886 (ListMap!3078 lt!1647885))))

(declare-fun lt!1647887 () Unit!86092)

(declare-fun lt!1647888 () Unit!86092)

(assert (=> d!1359399 (= lt!1647887 lt!1647888)))

(assert (=> d!1359399 (= (getValueByKey!843 lt!1647885 (_1!28341 (h!55760 l!12858))) (Some!10856 (_2!28341 (h!55760 l!12858))))))

(declare-fun lemmaContainsTupThenGetReturnValue!548 (List!50139 K!11395 V!11641) Unit!86092)

(assert (=> d!1359399 (= lt!1647888 (lemmaContainsTupThenGetReturnValue!548 lt!1647885 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858))))))

(declare-fun insertNoDuplicatedKeys!242 (List!50139 K!11395 V!11641) List!50139)

(assert (=> d!1359399 (= lt!1647885 (insertNoDuplicatedKeys!242 (toList!3839 lt!1647648) (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858))))))

(assert (=> d!1359399 (= (+!1291 lt!1647648 (h!55760 l!12858)) lt!1647886)))

(declare-fun b!4456512 () Bool)

(declare-fun res!1847471 () Bool)

(assert (=> b!4456512 (=> (not res!1847471) (not e!2775056))))

(assert (=> b!4456512 (= res!1847471 (= (getValueByKey!843 (toList!3839 lt!1647886) (_1!28341 (h!55760 l!12858))) (Some!10856 (_2!28341 (h!55760 l!12858)))))))

(declare-fun b!4456513 () Bool)

(declare-fun contains!12558 (List!50139 tuple2!50094) Bool)

(assert (=> b!4456513 (= e!2775056 (contains!12558 (toList!3839 lt!1647886) (h!55760 l!12858)))))

(assert (= (and d!1359399 res!1847470) b!4456512))

(assert (= (and b!4456512 res!1847471) b!4456513))

(declare-fun m!5158373 () Bool)

(assert (=> d!1359399 m!5158373))

(declare-fun m!5158375 () Bool)

(assert (=> d!1359399 m!5158375))

(declare-fun m!5158377 () Bool)

(assert (=> d!1359399 m!5158377))

(declare-fun m!5158379 () Bool)

(assert (=> d!1359399 m!5158379))

(declare-fun m!5158381 () Bool)

(assert (=> b!4456512 m!5158381))

(declare-fun m!5158383 () Bool)

(assert (=> b!4456513 m!5158383))

(assert (=> b!4456357 d!1359399))

(declare-fun d!1359401 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8045 (List!50139) (InoxSet tuple2!50094))

(assert (=> d!1359401 (= (eq!475 (addToMapMapFromBucket!510 (t!357089 l!12858) (+!1291 lt!1647648 (h!55760 l!12858))) (+!1291 lt!1647647 (h!55760 l!12858))) (= (content!8045 (toList!3839 (addToMapMapFromBucket!510 (t!357089 l!12858) (+!1291 lt!1647648 (h!55760 l!12858))))) (content!8045 (toList!3839 (+!1291 lt!1647647 (h!55760 l!12858))))))))

(declare-fun bs!790913 () Bool)

(assert (= bs!790913 d!1359401))

(declare-fun m!5158385 () Bool)

(assert (=> bs!790913 m!5158385))

(declare-fun m!5158387 () Bool)

(assert (=> bs!790913 m!5158387))

(assert (=> b!4456357 d!1359401))

(declare-fun d!1359403 () Bool)

(declare-fun e!2775057 () Bool)

(assert (=> d!1359403 e!2775057))

(declare-fun res!1847472 () Bool)

(assert (=> d!1359403 (=> (not res!1847472) (not e!2775057))))

(declare-fun lt!1647890 () ListMap!3077)

(assert (=> d!1359403 (= res!1847472 (contains!12554 lt!1647890 (_1!28341 (h!55760 l!12858))))))

(declare-fun lt!1647889 () List!50139)

(assert (=> d!1359403 (= lt!1647890 (ListMap!3078 lt!1647889))))

(declare-fun lt!1647891 () Unit!86092)

(declare-fun lt!1647892 () Unit!86092)

(assert (=> d!1359403 (= lt!1647891 lt!1647892)))

(assert (=> d!1359403 (= (getValueByKey!843 lt!1647889 (_1!28341 (h!55760 l!12858))) (Some!10856 (_2!28341 (h!55760 l!12858))))))

(assert (=> d!1359403 (= lt!1647892 (lemmaContainsTupThenGetReturnValue!548 lt!1647889 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858))))))

(assert (=> d!1359403 (= lt!1647889 (insertNoDuplicatedKeys!242 (toList!3839 lt!1647647) (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858))))))

(assert (=> d!1359403 (= (+!1291 lt!1647647 (h!55760 l!12858)) lt!1647890)))

(declare-fun b!4456514 () Bool)

(declare-fun res!1847473 () Bool)

(assert (=> b!4456514 (=> (not res!1847473) (not e!2775057))))

(assert (=> b!4456514 (= res!1847473 (= (getValueByKey!843 (toList!3839 lt!1647890) (_1!28341 (h!55760 l!12858))) (Some!10856 (_2!28341 (h!55760 l!12858)))))))

(declare-fun b!4456515 () Bool)

(assert (=> b!4456515 (= e!2775057 (contains!12558 (toList!3839 lt!1647890) (h!55760 l!12858)))))

(assert (= (and d!1359403 res!1847472) b!4456514))

(assert (= (and b!4456514 res!1847473) b!4456515))

(declare-fun m!5158389 () Bool)

(assert (=> d!1359403 m!5158389))

(declare-fun m!5158391 () Bool)

(assert (=> d!1359403 m!5158391))

(declare-fun m!5158393 () Bool)

(assert (=> d!1359403 m!5158393))

(declare-fun m!5158395 () Bool)

(assert (=> d!1359403 m!5158395))

(declare-fun m!5158397 () Bool)

(assert (=> b!4456514 m!5158397))

(declare-fun m!5158399 () Bool)

(assert (=> b!4456515 m!5158399))

(assert (=> b!4456357 d!1359403))

(declare-fun d!1359405 () Bool)

(declare-fun res!1847474 () Bool)

(declare-fun e!2775058 () Bool)

(assert (=> d!1359405 (=> res!1847474 e!2775058)))

(assert (=> d!1359405 (= res!1847474 (not ((_ is Cons!50015) (t!357089 l!12858))))))

(assert (=> d!1359405 (= (noDuplicateKeys!916 (t!357089 l!12858)) e!2775058)))

(declare-fun b!4456516 () Bool)

(declare-fun e!2775059 () Bool)

(assert (=> b!4456516 (= e!2775058 e!2775059)))

(declare-fun res!1847475 () Bool)

(assert (=> b!4456516 (=> (not res!1847475) (not e!2775059))))

(assert (=> b!4456516 (= res!1847475 (not (containsKey!1329 (t!357089 (t!357089 l!12858)) (_1!28341 (h!55760 (t!357089 l!12858))))))))

(declare-fun b!4456517 () Bool)

(assert (=> b!4456517 (= e!2775059 (noDuplicateKeys!916 (t!357089 (t!357089 l!12858))))))

(assert (= (and d!1359405 (not res!1847474)) b!4456516))

(assert (= (and b!4456516 res!1847475) b!4456517))

(declare-fun m!5158401 () Bool)

(assert (=> b!4456516 m!5158401))

(declare-fun m!5158403 () Bool)

(assert (=> b!4456517 m!5158403))

(assert (=> b!4456357 d!1359405))

(declare-fun d!1359407 () Bool)

(assert (=> d!1359407 (eq!475 (addToMapMapFromBucket!510 (t!357089 l!12858) (+!1291 lt!1647648 (tuple2!50095 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858))))) (+!1291 (addToMapMapFromBucket!510 (t!357089 l!12858) lt!1647648) (tuple2!50095 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858)))))))

(declare-fun lt!1647895 () Unit!86092)

(declare-fun choose!28381 (ListMap!3077 K!11395 V!11641 List!50139) Unit!86092)

(assert (=> d!1359407 (= lt!1647895 (choose!28381 lt!1647648 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858)) (t!357089 l!12858)))))

(assert (=> d!1359407 (not (containsKey!1329 (t!357089 l!12858) (_1!28341 (h!55760 l!12858))))))

(assert (=> d!1359407 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!222 lt!1647648 (_1!28341 (h!55760 l!12858)) (_2!28341 (h!55760 l!12858)) (t!357089 l!12858)) lt!1647895)))

(declare-fun bs!790914 () Bool)

(assert (= bs!790914 d!1359407))

(declare-fun m!5158405 () Bool)

(assert (=> bs!790914 m!5158405))

(declare-fun m!5158407 () Bool)

(assert (=> bs!790914 m!5158407))

(declare-fun m!5158409 () Bool)

(assert (=> bs!790914 m!5158409))

(declare-fun m!5158411 () Bool)

(assert (=> bs!790914 m!5158411))

(assert (=> bs!790914 m!5158411))

(assert (=> bs!790914 m!5158405))

(assert (=> bs!790914 m!5158151))

(assert (=> bs!790914 m!5158127))

(assert (=> bs!790914 m!5158127))

(assert (=> bs!790914 m!5158407))

(declare-fun m!5158413 () Bool)

(assert (=> bs!790914 m!5158413))

(assert (=> b!4456357 d!1359407))

(declare-fun bs!790915 () Bool)

(declare-fun d!1359409 () Bool)

(assert (= bs!790915 (and d!1359409 start!436732)))

(declare-fun lambda!160474 () Int)

(assert (=> bs!790915 (= lambda!160474 lambda!160391)))

(declare-fun bs!790916 () Bool)

(assert (= bs!790916 (and d!1359409 d!1359371)))

(assert (=> bs!790916 (not (= lambda!160474 lambda!160397))))

(assert (=> d!1359409 (contains!12554 (addToMapMapFromBucket!510 (t!357089 l!12858) (extractMap!984 (toList!3840 lm!1853))) key!4412)))

(declare-fun lt!1647898 () Unit!86092)

(declare-fun choose!28382 (ListLongMap!2495 K!11395 List!50139 Hashable!5323) Unit!86092)

(assert (=> d!1359409 (= lt!1647898 (choose!28382 lm!1853 key!4412 (t!357089 l!12858) hashF!1313))))

(assert (=> d!1359409 (forall!9839 (toList!3840 lm!1853) lambda!160474)))

(assert (=> d!1359409 (= (lemmaAddToMapMaintainsContains!18 lm!1853 key!4412 (t!357089 l!12858) hashF!1313) lt!1647898)))

(declare-fun bs!790917 () Bool)

(assert (= bs!790917 d!1359409))

(declare-fun m!5158415 () Bool)

(assert (=> bs!790917 m!5158415))

(assert (=> bs!790917 m!5158137))

(declare-fun m!5158417 () Bool)

(assert (=> bs!790917 m!5158417))

(declare-fun m!5158419 () Bool)

(assert (=> bs!790917 m!5158419))

(declare-fun m!5158421 () Bool)

(assert (=> bs!790917 m!5158421))

(assert (=> bs!790917 m!5158137))

(assert (=> bs!790917 m!5158419))

(assert (=> b!4456357 d!1359409))

(declare-fun bs!790918 () Bool)

(declare-fun b!4456519 () Bool)

(assert (= bs!790918 (and b!4456519 b!4456502)))

(declare-fun lambda!160475 () Int)

(assert (=> bs!790918 (= (= lt!1647648 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160475 lambda!160468))))

(declare-fun bs!790919 () Bool)

(assert (= bs!790919 (and b!4456519 b!4456503)))

(assert (=> bs!790919 (= (= lt!1647648 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160475 lambda!160469))))

(assert (=> bs!790919 (= (= lt!1647648 lt!1647870) (= lambda!160475 lambda!160470))))

(declare-fun bs!790920 () Bool)

(assert (= bs!790920 (and b!4456519 d!1359383)))

(assert (=> bs!790920 (= (= lt!1647648 lt!1647861) (= lambda!160475 lambda!160471))))

(assert (=> b!4456519 true))

(declare-fun bs!790921 () Bool)

(declare-fun b!4456520 () Bool)

(assert (= bs!790921 (and b!4456520 b!4456519)))

(declare-fun lambda!160476 () Int)

(assert (=> bs!790921 (= lambda!160476 lambda!160475)))

(declare-fun bs!790922 () Bool)

(assert (= bs!790922 (and b!4456520 d!1359383)))

(assert (=> bs!790922 (= (= lt!1647648 lt!1647861) (= lambda!160476 lambda!160471))))

(declare-fun bs!790923 () Bool)

(assert (= bs!790923 (and b!4456520 b!4456502)))

(assert (=> bs!790923 (= (= lt!1647648 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160476 lambda!160468))))

(declare-fun bs!790924 () Bool)

(assert (= bs!790924 (and b!4456520 b!4456503)))

(assert (=> bs!790924 (= (= lt!1647648 lt!1647870) (= lambda!160476 lambda!160470))))

(assert (=> bs!790924 (= (= lt!1647648 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160476 lambda!160469))))

(assert (=> b!4456520 true))

(declare-fun lt!1647913 () ListMap!3077)

(declare-fun lambda!160477 () Int)

(assert (=> b!4456520 (= (= lt!1647913 lt!1647648) (= lambda!160477 lambda!160476))))

(assert (=> bs!790921 (= (= lt!1647913 lt!1647648) (= lambda!160477 lambda!160475))))

(assert (=> bs!790922 (= (= lt!1647913 lt!1647861) (= lambda!160477 lambda!160471))))

(assert (=> bs!790923 (= (= lt!1647913 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160477 lambda!160468))))

(assert (=> bs!790924 (= (= lt!1647913 lt!1647870) (= lambda!160477 lambda!160470))))

(assert (=> bs!790924 (= (= lt!1647913 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160477 lambda!160469))))

(assert (=> b!4456520 true))

(declare-fun bs!790925 () Bool)

(declare-fun d!1359411 () Bool)

(assert (= bs!790925 (and d!1359411 b!4456520)))

(declare-fun lt!1647904 () ListMap!3077)

(declare-fun lambda!160478 () Int)

(assert (=> bs!790925 (= (= lt!1647904 lt!1647648) (= lambda!160478 lambda!160476))))

(declare-fun bs!790926 () Bool)

(assert (= bs!790926 (and d!1359411 b!4456519)))

(assert (=> bs!790926 (= (= lt!1647904 lt!1647648) (= lambda!160478 lambda!160475))))

(declare-fun bs!790927 () Bool)

(assert (= bs!790927 (and d!1359411 d!1359383)))

(assert (=> bs!790927 (= (= lt!1647904 lt!1647861) (= lambda!160478 lambda!160471))))

(declare-fun bs!790928 () Bool)

(assert (= bs!790928 (and d!1359411 b!4456502)))

(assert (=> bs!790928 (= (= lt!1647904 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160478 lambda!160468))))

(declare-fun bs!790929 () Bool)

(assert (= bs!790929 (and d!1359411 b!4456503)))

(assert (=> bs!790929 (= (= lt!1647904 lt!1647870) (= lambda!160478 lambda!160470))))

(assert (=> bs!790925 (= (= lt!1647904 lt!1647913) (= lambda!160478 lambda!160477))))

(assert (=> bs!790929 (= (= lt!1647904 (+!1291 lt!1647648 (h!55760 l!12858))) (= lambda!160478 lambda!160469))))

(assert (=> d!1359411 true))

(declare-fun e!2775061 () Bool)

(assert (=> d!1359411 e!2775061))

(declare-fun res!1847478 () Bool)

(assert (=> d!1359411 (=> (not res!1847478) (not e!2775061))))

(assert (=> d!1359411 (= res!1847478 (forall!9841 (t!357089 l!12858) lambda!160478))))

(declare-fun e!2775062 () ListMap!3077)

(assert (=> d!1359411 (= lt!1647904 e!2775062)))

(declare-fun c!758608 () Bool)

(assert (=> d!1359411 (= c!758608 ((_ is Nil!50015) (t!357089 l!12858)))))

(assert (=> d!1359411 (noDuplicateKeys!916 (t!357089 l!12858))))

(assert (=> d!1359411 (= (addToMapMapFromBucket!510 (t!357089 l!12858) lt!1647648) lt!1647904)))

(declare-fun bm!310160 () Bool)

(declare-fun call!310167 () Unit!86092)

(assert (=> bm!310160 (= call!310167 (lemmaContainsAllItsOwnKeys!230 lt!1647648))))

(declare-fun call!310165 () Bool)

(declare-fun bm!310161 () Bool)

(assert (=> bm!310161 (= call!310165 (forall!9841 (ite c!758608 (toList!3839 lt!1647648) (t!357089 l!12858)) (ite c!758608 lambda!160475 lambda!160477)))))

(declare-fun b!4456518 () Bool)

(assert (=> b!4456518 (= e!2775061 (invariantList!879 (toList!3839 lt!1647904)))))

(assert (=> b!4456519 (= e!2775062 lt!1647648)))

(declare-fun lt!1647907 () Unit!86092)

(assert (=> b!4456519 (= lt!1647907 call!310167)))

(assert (=> b!4456519 call!310165))

(declare-fun lt!1647902 () Unit!86092)

(assert (=> b!4456519 (= lt!1647902 lt!1647907)))

(declare-fun call!310166 () Bool)

(assert (=> b!4456519 call!310166))

(declare-fun lt!1647912 () Unit!86092)

(declare-fun Unit!86133 () Unit!86092)

(assert (=> b!4456519 (= lt!1647912 Unit!86133)))

(assert (=> b!4456520 (= e!2775062 lt!1647913)))

(declare-fun lt!1647919 () ListMap!3077)

(assert (=> b!4456520 (= lt!1647919 (+!1291 lt!1647648 (h!55760 (t!357089 l!12858))))))

(assert (=> b!4456520 (= lt!1647913 (addToMapMapFromBucket!510 (t!357089 (t!357089 l!12858)) (+!1291 lt!1647648 (h!55760 (t!357089 l!12858)))))))

(declare-fun lt!1647903 () Unit!86092)

(assert (=> b!4456520 (= lt!1647903 call!310167)))

(assert (=> b!4456520 (forall!9841 (toList!3839 lt!1647648) lambda!160476)))

(declare-fun lt!1647910 () Unit!86092)

(assert (=> b!4456520 (= lt!1647910 lt!1647903)))

(assert (=> b!4456520 (forall!9841 (toList!3839 lt!1647919) lambda!160477)))

(declare-fun lt!1647915 () Unit!86092)

(declare-fun Unit!86134 () Unit!86092)

(assert (=> b!4456520 (= lt!1647915 Unit!86134)))

(assert (=> b!4456520 (forall!9841 (t!357089 (t!357089 l!12858)) lambda!160477)))

(declare-fun lt!1647906 () Unit!86092)

(declare-fun Unit!86135 () Unit!86092)

(assert (=> b!4456520 (= lt!1647906 Unit!86135)))

(declare-fun lt!1647905 () Unit!86092)

(declare-fun Unit!86136 () Unit!86092)

(assert (=> b!4456520 (= lt!1647905 Unit!86136)))

(declare-fun lt!1647908 () Unit!86092)

(assert (=> b!4456520 (= lt!1647908 (forallContained!2180 (toList!3839 lt!1647919) lambda!160477 (h!55760 (t!357089 l!12858))))))

(assert (=> b!4456520 (contains!12554 lt!1647919 (_1!28341 (h!55760 (t!357089 l!12858))))))

(declare-fun lt!1647899 () Unit!86092)

(declare-fun Unit!86137 () Unit!86092)

(assert (=> b!4456520 (= lt!1647899 Unit!86137)))

(assert (=> b!4456520 (contains!12554 lt!1647913 (_1!28341 (h!55760 (t!357089 l!12858))))))

(declare-fun lt!1647901 () Unit!86092)

(declare-fun Unit!86138 () Unit!86092)

(assert (=> b!4456520 (= lt!1647901 Unit!86138)))

(assert (=> b!4456520 call!310165))

(declare-fun lt!1647911 () Unit!86092)

(declare-fun Unit!86139 () Unit!86092)

(assert (=> b!4456520 (= lt!1647911 Unit!86139)))

(assert (=> b!4456520 (forall!9841 (toList!3839 lt!1647919) lambda!160477)))

(declare-fun lt!1647914 () Unit!86092)

(declare-fun Unit!86140 () Unit!86092)

(assert (=> b!4456520 (= lt!1647914 Unit!86140)))

(declare-fun lt!1647909 () Unit!86092)

(declare-fun Unit!86141 () Unit!86092)

(assert (=> b!4456520 (= lt!1647909 Unit!86141)))

(declare-fun lt!1647918 () Unit!86092)

(assert (=> b!4456520 (= lt!1647918 (addForallContainsKeyThenBeforeAdding!229 lt!1647648 lt!1647913 (_1!28341 (h!55760 (t!357089 l!12858))) (_2!28341 (h!55760 (t!357089 l!12858)))))))

(assert (=> b!4456520 (forall!9841 (toList!3839 lt!1647648) lambda!160477)))

(declare-fun lt!1647917 () Unit!86092)

(assert (=> b!4456520 (= lt!1647917 lt!1647918)))

(assert (=> b!4456520 (forall!9841 (toList!3839 lt!1647648) lambda!160477)))

(declare-fun lt!1647916 () Unit!86092)

(declare-fun Unit!86142 () Unit!86092)

(assert (=> b!4456520 (= lt!1647916 Unit!86142)))

(declare-fun res!1847477 () Bool)

(assert (=> b!4456520 (= res!1847477 (forall!9841 (t!357089 l!12858) lambda!160477))))

(declare-fun e!2775060 () Bool)

(assert (=> b!4456520 (=> (not res!1847477) (not e!2775060))))

(assert (=> b!4456520 e!2775060))

(declare-fun lt!1647900 () Unit!86092)

(declare-fun Unit!86143 () Unit!86092)

(assert (=> b!4456520 (= lt!1647900 Unit!86143)))

(declare-fun bm!310162 () Bool)

(assert (=> bm!310162 (= call!310166 (forall!9841 (toList!3839 lt!1647648) (ite c!758608 lambda!160475 lambda!160477)))))

(declare-fun b!4456521 () Bool)

(declare-fun res!1847476 () Bool)

(assert (=> b!4456521 (=> (not res!1847476) (not e!2775061))))

(assert (=> b!4456521 (= res!1847476 (forall!9841 (toList!3839 lt!1647648) lambda!160478))))

(declare-fun b!4456522 () Bool)

(assert (=> b!4456522 (= e!2775060 call!310166)))

(assert (= (and d!1359411 c!758608) b!4456519))

(assert (= (and d!1359411 (not c!758608)) b!4456520))

(assert (= (and b!4456520 res!1847477) b!4456522))

(assert (= (or b!4456519 b!4456520) bm!310160))

(assert (= (or b!4456519 b!4456520) bm!310161))

(assert (= (or b!4456519 b!4456522) bm!310162))

(assert (= (and d!1359411 res!1847478) b!4456521))

(assert (= (and b!4456521 res!1847476) b!4456518))

(declare-fun m!5158423 () Bool)

(assert (=> b!4456520 m!5158423))

(declare-fun m!5158425 () Bool)

(assert (=> b!4456520 m!5158425))

(declare-fun m!5158427 () Bool)

(assert (=> b!4456520 m!5158427))

(declare-fun m!5158429 () Bool)

(assert (=> b!4456520 m!5158429))

(assert (=> b!4456520 m!5158425))

(declare-fun m!5158431 () Bool)

(assert (=> b!4456520 m!5158431))

(declare-fun m!5158433 () Bool)

(assert (=> b!4456520 m!5158433))

(declare-fun m!5158435 () Bool)

(assert (=> b!4456520 m!5158435))

(declare-fun m!5158437 () Bool)

(assert (=> b!4456520 m!5158437))

(declare-fun m!5158439 () Bool)

(assert (=> b!4456520 m!5158439))

(assert (=> b!4456520 m!5158439))

(declare-fun m!5158441 () Bool)

(assert (=> b!4456520 m!5158441))

(declare-fun m!5158443 () Bool)

(assert (=> b!4456520 m!5158443))

(assert (=> b!4456520 m!5158435))

(declare-fun m!5158445 () Bool)

(assert (=> bm!310160 m!5158445))

(declare-fun m!5158447 () Bool)

(assert (=> b!4456518 m!5158447))

(declare-fun m!5158449 () Bool)

(assert (=> b!4456521 m!5158449))

(declare-fun m!5158451 () Bool)

(assert (=> bm!310162 m!5158451))

(declare-fun m!5158453 () Bool)

(assert (=> d!1359411 m!5158453))

(assert (=> d!1359411 m!5158129))

(declare-fun m!5158455 () Bool)

(assert (=> bm!310161 m!5158455))

(assert (=> b!4456357 d!1359411))

(declare-fun b!4456523 () Bool)

(declare-fun e!2775067 () Bool)

(assert (=> b!4456523 (= e!2775067 (contains!12557 (keys!17190 lt!1647648) key!4412))))

(declare-fun bm!310163 () Bool)

(declare-fun call!310168 () Bool)

(declare-fun e!2775066 () List!50142)

(assert (=> bm!310163 (= call!310168 (contains!12557 e!2775066 key!4412))))

(declare-fun c!758611 () Bool)

(declare-fun c!758609 () Bool)

(assert (=> bm!310163 (= c!758611 c!758609)))

(declare-fun b!4456524 () Bool)

(declare-fun e!2775065 () Unit!86092)

(declare-fun e!2775063 () Unit!86092)

(assert (=> b!4456524 (= e!2775065 e!2775063)))

(declare-fun c!758610 () Bool)

(assert (=> b!4456524 (= c!758610 call!310168)))

(declare-fun b!4456525 () Bool)

(assert (=> b!4456525 (= e!2775066 (getKeysList!325 (toList!3839 lt!1647648)))))

(declare-fun b!4456526 () Bool)

(declare-fun e!2775064 () Bool)

(assert (=> b!4456526 (= e!2775064 e!2775067)))

(declare-fun res!1847481 () Bool)

(assert (=> b!4456526 (=> (not res!1847481) (not e!2775067))))

(assert (=> b!4456526 (= res!1847481 (isDefined!8145 (getValueByKey!843 (toList!3839 lt!1647648) key!4412)))))

(declare-fun d!1359413 () Bool)

(assert (=> d!1359413 e!2775064))

(declare-fun res!1847480 () Bool)

(assert (=> d!1359413 (=> res!1847480 e!2775064)))

(declare-fun e!2775068 () Bool)

(assert (=> d!1359413 (= res!1847480 e!2775068)))

(declare-fun res!1847479 () Bool)

(assert (=> d!1359413 (=> (not res!1847479) (not e!2775068))))

(declare-fun lt!1647922 () Bool)

(assert (=> d!1359413 (= res!1847479 (not lt!1647922))))

(declare-fun lt!1647925 () Bool)

(assert (=> d!1359413 (= lt!1647922 lt!1647925)))

(declare-fun lt!1647927 () Unit!86092)

(assert (=> d!1359413 (= lt!1647927 e!2775065)))

(assert (=> d!1359413 (= c!758609 lt!1647925)))

(assert (=> d!1359413 (= lt!1647925 (containsKey!1330 (toList!3839 lt!1647648) key!4412))))

(assert (=> d!1359413 (= (contains!12554 lt!1647648 key!4412) lt!1647922)))

(declare-fun b!4456527 () Bool)

(assert (=> b!4456527 (= e!2775066 (keys!17190 lt!1647648))))

(declare-fun b!4456528 () Bool)

(declare-fun Unit!86144 () Unit!86092)

(assert (=> b!4456528 (= e!2775063 Unit!86144)))

(declare-fun b!4456529 () Bool)

(declare-fun lt!1647920 () Unit!86092)

(assert (=> b!4456529 (= e!2775065 lt!1647920)))

(declare-fun lt!1647924 () Unit!86092)

(assert (=> b!4456529 (= lt!1647924 (lemmaContainsKeyImpliesGetValueByKeyDefined!748 (toList!3839 lt!1647648) key!4412))))

(assert (=> b!4456529 (isDefined!8145 (getValueByKey!843 (toList!3839 lt!1647648) key!4412))))

(declare-fun lt!1647926 () Unit!86092)

(assert (=> b!4456529 (= lt!1647926 lt!1647924)))

(assert (=> b!4456529 (= lt!1647920 (lemmaInListThenGetKeysListContains!321 (toList!3839 lt!1647648) key!4412))))

(assert (=> b!4456529 call!310168))

(declare-fun b!4456530 () Bool)

(assert (=> b!4456530 (= e!2775068 (not (contains!12557 (keys!17190 lt!1647648) key!4412)))))

(declare-fun b!4456531 () Bool)

(assert (=> b!4456531 false))

(declare-fun lt!1647921 () Unit!86092)

(declare-fun lt!1647923 () Unit!86092)

(assert (=> b!4456531 (= lt!1647921 lt!1647923)))

(assert (=> b!4456531 (containsKey!1330 (toList!3839 lt!1647648) key!4412)))

(assert (=> b!4456531 (= lt!1647923 (lemmaInGetKeysListThenContainsKey!323 (toList!3839 lt!1647648) key!4412))))

(declare-fun Unit!86145 () Unit!86092)

(assert (=> b!4456531 (= e!2775063 Unit!86145)))

(assert (= (and d!1359413 c!758609) b!4456529))

(assert (= (and d!1359413 (not c!758609)) b!4456524))

(assert (= (and b!4456524 c!758610) b!4456531))

(assert (= (and b!4456524 (not c!758610)) b!4456528))

(assert (= (or b!4456529 b!4456524) bm!310163))

(assert (= (and bm!310163 c!758611) b!4456525))

(assert (= (and bm!310163 (not c!758611)) b!4456527))

(assert (= (and d!1359413 res!1847479) b!4456530))

(assert (= (and d!1359413 (not res!1847480)) b!4456526))

(assert (= (and b!4456526 res!1847481) b!4456523))

(declare-fun m!5158457 () Bool)

(assert (=> b!4456531 m!5158457))

(declare-fun m!5158459 () Bool)

(assert (=> b!4456531 m!5158459))

(declare-fun m!5158461 () Bool)

(assert (=> b!4456530 m!5158461))

(assert (=> b!4456530 m!5158461))

(declare-fun m!5158463 () Bool)

(assert (=> b!4456530 m!5158463))

(declare-fun m!5158465 () Bool)

(assert (=> b!4456529 m!5158465))

(declare-fun m!5158467 () Bool)

(assert (=> b!4456529 m!5158467))

(assert (=> b!4456529 m!5158467))

(declare-fun m!5158469 () Bool)

(assert (=> b!4456529 m!5158469))

(declare-fun m!5158471 () Bool)

(assert (=> b!4456529 m!5158471))

(assert (=> d!1359413 m!5158457))

(declare-fun m!5158473 () Bool)

(assert (=> bm!310163 m!5158473))

(assert (=> b!4456526 m!5158467))

(assert (=> b!4456526 m!5158467))

(assert (=> b!4456526 m!5158469))

(assert (=> b!4456527 m!5158461))

(declare-fun m!5158475 () Bool)

(assert (=> b!4456525 m!5158475))

(assert (=> b!4456523 m!5158461))

(assert (=> b!4456523 m!5158461))

(assert (=> b!4456523 m!5158463))

(assert (=> b!4456351 d!1359413))

(declare-fun bs!790930 () Bool)

(declare-fun d!1359415 () Bool)

(assert (= bs!790930 (and d!1359415 start!436732)))

(declare-fun lambda!160481 () Int)

(assert (=> bs!790930 (= lambda!160481 lambda!160391)))

(declare-fun bs!790931 () Bool)

(assert (= bs!790931 (and d!1359415 d!1359371)))

(assert (=> bs!790931 (not (= lambda!160481 lambda!160397))))

(declare-fun bs!790932 () Bool)

(assert (= bs!790932 (and d!1359415 d!1359409)))

(assert (=> bs!790932 (= lambda!160481 lambda!160474)))

(declare-fun lt!1647930 () ListMap!3077)

(assert (=> d!1359415 (invariantList!879 (toList!3839 lt!1647930))))

(declare-fun e!2775071 () ListMap!3077)

(assert (=> d!1359415 (= lt!1647930 e!2775071)))

(declare-fun c!758614 () Bool)

(assert (=> d!1359415 (= c!758614 ((_ is Cons!50016) (toList!3840 lm!1853)))))

(assert (=> d!1359415 (forall!9839 (toList!3840 lm!1853) lambda!160481)))

(assert (=> d!1359415 (= (extractMap!984 (toList!3840 lm!1853)) lt!1647930)))

(declare-fun b!4456536 () Bool)

(assert (=> b!4456536 (= e!2775071 (addToMapMapFromBucket!510 (_2!28342 (h!55761 (toList!3840 lm!1853))) (extractMap!984 (t!357090 (toList!3840 lm!1853)))))))

(declare-fun b!4456537 () Bool)

(assert (=> b!4456537 (= e!2775071 (ListMap!3078 Nil!50015))))

(assert (= (and d!1359415 c!758614) b!4456536))

(assert (= (and d!1359415 (not c!758614)) b!4456537))

(declare-fun m!5158477 () Bool)

(assert (=> d!1359415 m!5158477))

(declare-fun m!5158479 () Bool)

(assert (=> d!1359415 m!5158479))

(declare-fun m!5158481 () Bool)

(assert (=> b!4456536 m!5158481))

(assert (=> b!4456536 m!5158481))

(declare-fun m!5158483 () Bool)

(assert (=> b!4456536 m!5158483))

(assert (=> b!4456351 d!1359415))

(declare-fun d!1359417 () Bool)

(declare-fun res!1847486 () Bool)

(declare-fun e!2775076 () Bool)

(assert (=> d!1359417 (=> res!1847486 e!2775076)))

(assert (=> d!1359417 (= res!1847486 ((_ is Nil!50016) (toList!3840 lm!1853)))))

(assert (=> d!1359417 (= (forall!9839 (toList!3840 lm!1853) lambda!160391) e!2775076)))

(declare-fun b!4456542 () Bool)

(declare-fun e!2775077 () Bool)

(assert (=> b!4456542 (= e!2775076 e!2775077)))

(declare-fun res!1847487 () Bool)

(assert (=> b!4456542 (=> (not res!1847487) (not e!2775077))))

(declare-fun dynLambda!20971 (Int tuple2!50096) Bool)

(assert (=> b!4456542 (= res!1847487 (dynLambda!20971 lambda!160391 (h!55761 (toList!3840 lm!1853))))))

(declare-fun b!4456543 () Bool)

(assert (=> b!4456543 (= e!2775077 (forall!9839 (t!357090 (toList!3840 lm!1853)) lambda!160391))))

(assert (= (and d!1359417 (not res!1847486)) b!4456542))

(assert (= (and b!4456542 res!1847487) b!4456543))

(declare-fun b_lambda!147673 () Bool)

(assert (=> (not b_lambda!147673) (not b!4456542)))

(declare-fun m!5158485 () Bool)

(assert (=> b!4456542 m!5158485))

(declare-fun m!5158487 () Bool)

(assert (=> b!4456543 m!5158487))

(assert (=> start!436732 d!1359417))

(declare-fun d!1359419 () Bool)

(declare-fun isStrictlySorted!308 (List!50140) Bool)

(assert (=> d!1359419 (= (inv!65581 lm!1853) (isStrictlySorted!308 (toList!3840 lm!1853)))))

(declare-fun bs!790933 () Bool)

(assert (= bs!790933 d!1359419))

(declare-fun m!5158489 () Bool)

(assert (=> bs!790933 m!5158489))

(assert (=> start!436732 d!1359419))

(declare-fun b!4456548 () Bool)

(declare-fun e!2775080 () Bool)

(declare-fun tp!1335057 () Bool)

(declare-fun tp!1335058 () Bool)

(assert (=> b!4456548 (= e!2775080 (and tp!1335057 tp!1335058))))

(assert (=> b!4456353 (= tp!1335042 e!2775080)))

(assert (= (and b!4456353 ((_ is Cons!50016) (toList!3840 lm!1853))) b!4456548))

(declare-fun b!4456553 () Bool)

(declare-fun e!2775083 () Bool)

(declare-fun tp!1335061 () Bool)

(assert (=> b!4456553 (= e!2775083 (and tp_is_empty!26885 tp_is_empty!26887 tp!1335061))))

(assert (=> b!4456355 (= tp!1335043 e!2775083)))

(assert (= (and b!4456355 ((_ is Cons!50015) (t!357089 l!12858))) b!4456553))

(declare-fun b_lambda!147675 () Bool)

(assert (= b_lambda!147673 (or start!436732 b_lambda!147675)))

(declare-fun bs!790934 () Bool)

(declare-fun d!1359421 () Bool)

(assert (= bs!790934 (and d!1359421 start!436732)))

(assert (=> bs!790934 (= (dynLambda!20971 lambda!160391 (h!55761 (toList!3840 lm!1853))) (noDuplicateKeys!916 (_2!28342 (h!55761 (toList!3840 lm!1853)))))))

(declare-fun m!5158491 () Bool)

(assert (=> bs!790934 m!5158491))

(assert (=> b!4456542 d!1359421))

(check-sat tp_is_empty!26885 (not b!4456406) (not b!4456531) (not bs!790934) (not d!1359401) (not b!4456553) (not b!4456548) (not b!4456518) (not b!4456529) (not bm!310159) (not b!4456526) (not bm!310162) (not b!4456377) (not d!1359419) (not b!4456514) (not b!4456525) (not d!1359411) (not b!4456515) tp_is_empty!26887 (not b!4456513) (not bm!310160) (not d!1359399) (not d!1359371) (not b!4456521) (not b!4456376) (not b!4456412) (not b!4456409) (not b_lambda!147675) (not b!4456414) (not b!4456517) (not b!4456530) (not b!4456504) (not d!1359403) (not b!4456527) (not bm!310163) (not b!4456520) (not b!4456523) (not b!4456410) (not bm!310157) (not b!4456543) (not b!4456413) (not b!4456503) (not b!4456536) (not d!1359415) (not d!1359413) (not bm!310158) (not d!1359383) (not b!4456516) (not d!1359409) (not d!1359375) (not b!4456408) (not d!1359407) (not b!4456501) (not bm!310134) (not b!4456512) (not bm!310161))
(check-sat)
