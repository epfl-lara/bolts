; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!440994 () Bool)

(assert start!440994)

(declare-fun b!4482295 () Bool)

(declare-fun res!1861205 () Bool)

(declare-fun e!2791695 () Bool)

(assert (=> b!4482295 (=> res!1861205 e!2791695)))

(declare-datatypes ((K!11808 0))(
  ( (K!11809 (val!17717 Int)) )
))
(declare-datatypes ((V!12054 0))(
  ( (V!12055 (val!17718 Int)) )
))
(declare-datatypes ((tuple2!50702 0))(
  ( (tuple2!50703 (_1!28645 K!11808) (_2!28645 V!12054)) )
))
(declare-datatypes ((List!50520 0))(
  ( (Nil!50396) (Cons!50396 (h!56185 tuple2!50702) (t!357474 List!50520)) )
))
(declare-datatypes ((tuple2!50704 0))(
  ( (tuple2!50705 (_1!28646 (_ BitVec 64)) (_2!28646 List!50520)) )
))
(declare-datatypes ((List!50521 0))(
  ( (Nil!50397) (Cons!50397 (h!56186 tuple2!50704) (t!357475 List!50521)) )
))
(declare-datatypes ((ListLongMap!2773 0))(
  ( (ListLongMap!2774 (toList!4141 List!50521)) )
))
(declare-fun lm!1477 () ListLongMap!2773)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4482295 (= res!1861205 (or (is-Nil!50397 (toList!4141 lm!1477)) (= (_1!28646 (h!56186 (toList!4141 lm!1477))) hash!344)))))

(declare-fun tp!1336759 () Bool)

(declare-fun tp_is_empty!27545 () Bool)

(declare-fun tp_is_empty!27547 () Bool)

(declare-fun b!4482296 () Bool)

(declare-fun e!2791694 () Bool)

(assert (=> b!4482296 (= e!2791694 (and tp_is_empty!27545 tp_is_empty!27547 tp!1336759))))

(declare-fun b!4482297 () Bool)

(declare-fun res!1861207 () Bool)

(declare-fun e!2791692 () Bool)

(assert (=> b!4482297 (=> (not res!1861207) (not e!2791692))))

(declare-datatypes ((Hashable!5462 0))(
  ( (HashableExt!5461 (__x!31165 Int)) )
))
(declare-fun hashF!1107 () Hashable!5462)

(declare-fun newBucket!178 () List!50520)

(declare-fun allKeysSameHash!921 (List!50520 (_ BitVec 64) Hashable!5462) Bool)

(assert (=> b!4482297 (= res!1861207 (allKeysSameHash!921 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1861204 () Bool)

(declare-fun e!2791696 () Bool)

(assert (=> start!440994 (=> (not res!1861204) (not e!2791696))))

(declare-fun lambda!165668 () Int)

(declare-fun forall!10065 (List!50521 Int) Bool)

(assert (=> start!440994 (= res!1861204 (forall!10065 (toList!4141 lm!1477) lambda!165668))))

(assert (=> start!440994 e!2791696))

(assert (=> start!440994 true))

(declare-fun e!2791693 () Bool)

(declare-fun inv!65993 (ListLongMap!2773) Bool)

(assert (=> start!440994 (and (inv!65993 lm!1477) e!2791693)))

(assert (=> start!440994 tp_is_empty!27545))

(assert (=> start!440994 e!2791694))

(declare-fun b!4482298 () Bool)

(declare-fun res!1861203 () Bool)

(assert (=> b!4482298 (=> (not res!1861203) (not e!2791696))))

(declare-fun key!3287 () K!11808)

(declare-datatypes ((ListMap!3403 0))(
  ( (ListMap!3404 (toList!4142 List!50520)) )
))
(declare-fun contains!12996 (ListMap!3403 K!11808) Bool)

(declare-fun extractMap!1123 (List!50521) ListMap!3403)

(assert (=> b!4482298 (= res!1861203 (contains!12996 (extractMap!1123 (toList!4141 lm!1477)) key!3287))))

(declare-fun b!4482299 () Bool)

(declare-fun res!1861201 () Bool)

(assert (=> b!4482299 (=> res!1861201 e!2791695)))

(declare-fun noDuplicateKeys!1067 (List!50520) Bool)

(assert (=> b!4482299 (= res!1861201 (not (noDuplicateKeys!1067 newBucket!178)))))

(declare-fun b!4482300 () Bool)

(declare-fun res!1861206 () Bool)

(assert (=> b!4482300 (=> (not res!1861206) (not e!2791696))))

(declare-fun allKeysSameHashInMap!1174 (ListLongMap!2773 Hashable!5462) Bool)

(assert (=> b!4482300 (= res!1861206 (allKeysSameHashInMap!1174 lm!1477 hashF!1107))))

(declare-fun b!4482301 () Bool)

(declare-fun tp!1336758 () Bool)

(assert (=> b!4482301 (= e!2791693 tp!1336758)))

(declare-fun b!4482302 () Bool)

(assert (=> b!4482302 (= e!2791696 e!2791692)))

(declare-fun res!1861208 () Bool)

(assert (=> b!4482302 (=> (not res!1861208) (not e!2791692))))

(declare-fun lt!1669013 () (_ BitVec 64))

(assert (=> b!4482302 (= res!1861208 (= lt!1669013 hash!344))))

(declare-fun hash!2566 (Hashable!5462 K!11808) (_ BitVec 64))

(assert (=> b!4482302 (= lt!1669013 (hash!2566 hashF!1107 key!3287))))

(declare-fun b!4482303 () Bool)

(declare-fun isEmpty!28510 (ListLongMap!2773) Bool)

(assert (=> b!4482303 (= e!2791695 (not (isEmpty!28510 lm!1477)))))

(declare-fun b!4482304 () Bool)

(assert (=> b!4482304 (= e!2791692 (not e!2791695))))

(declare-fun res!1861202 () Bool)

(assert (=> b!4482304 (=> res!1861202 e!2791695)))

(declare-fun lt!1669015 () List!50520)

(declare-fun removePairForKey!694 (List!50520 K!11808) List!50520)

(assert (=> b!4482304 (= res!1861202 (not (= newBucket!178 (removePairForKey!694 lt!1669015 key!3287))))))

(declare-fun lt!1669014 () tuple2!50704)

(declare-datatypes ((Unit!89879 0))(
  ( (Unit!89880) )
))
(declare-fun lt!1669011 () Unit!89879)

(declare-fun forallContained!2326 (List!50521 Int tuple2!50704) Unit!89879)

(assert (=> b!4482304 (= lt!1669011 (forallContained!2326 (toList!4141 lm!1477) lambda!165668 lt!1669014))))

(declare-fun contains!12997 (List!50521 tuple2!50704) Bool)

(assert (=> b!4482304 (contains!12997 (toList!4141 lm!1477) lt!1669014)))

(assert (=> b!4482304 (= lt!1669014 (tuple2!50705 hash!344 lt!1669015))))

(declare-fun lt!1669016 () Unit!89879)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!579 (List!50521 (_ BitVec 64) List!50520) Unit!89879)

(assert (=> b!4482304 (= lt!1669016 (lemmaGetValueByKeyImpliesContainsTuple!579 (toList!4141 lm!1477) hash!344 lt!1669015))))

(declare-fun apply!11804 (ListLongMap!2773 (_ BitVec 64)) List!50520)

(assert (=> b!4482304 (= lt!1669015 (apply!11804 lm!1477 hash!344))))

(declare-fun contains!12998 (ListLongMap!2773 (_ BitVec 64)) Bool)

(assert (=> b!4482304 (contains!12998 lm!1477 lt!1669013)))

(declare-fun lt!1669012 () Unit!89879)

(declare-fun lemmaInGenMapThenLongMapContainsHash!141 (ListLongMap!2773 K!11808 Hashable!5462) Unit!89879)

(assert (=> b!4482304 (= lt!1669012 (lemmaInGenMapThenLongMapContainsHash!141 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!440994 res!1861204) b!4482300))

(assert (= (and b!4482300 res!1861206) b!4482298))

(assert (= (and b!4482298 res!1861203) b!4482302))

(assert (= (and b!4482302 res!1861208) b!4482297))

(assert (= (and b!4482297 res!1861207) b!4482304))

(assert (= (and b!4482304 (not res!1861202)) b!4482299))

(assert (= (and b!4482299 (not res!1861201)) b!4482295))

(assert (= (and b!4482295 (not res!1861205)) b!4482303))

(assert (= start!440994 b!4482301))

(assert (= (and start!440994 (is-Cons!50396 newBucket!178)) b!4482296))

(declare-fun m!5202739 () Bool)

(assert (=> b!4482302 m!5202739))

(declare-fun m!5202741 () Bool)

(assert (=> b!4482300 m!5202741))

(declare-fun m!5202743 () Bool)

(assert (=> b!4482303 m!5202743))

(declare-fun m!5202745 () Bool)

(assert (=> b!4482297 m!5202745))

(declare-fun m!5202747 () Bool)

(assert (=> b!4482298 m!5202747))

(assert (=> b!4482298 m!5202747))

(declare-fun m!5202749 () Bool)

(assert (=> b!4482298 m!5202749))

(declare-fun m!5202751 () Bool)

(assert (=> start!440994 m!5202751))

(declare-fun m!5202753 () Bool)

(assert (=> start!440994 m!5202753))

(declare-fun m!5202755 () Bool)

(assert (=> b!4482299 m!5202755))

(declare-fun m!5202757 () Bool)

(assert (=> b!4482304 m!5202757))

(declare-fun m!5202759 () Bool)

(assert (=> b!4482304 m!5202759))

(declare-fun m!5202761 () Bool)

(assert (=> b!4482304 m!5202761))

(declare-fun m!5202763 () Bool)

(assert (=> b!4482304 m!5202763))

(declare-fun m!5202765 () Bool)

(assert (=> b!4482304 m!5202765))

(declare-fun m!5202767 () Bool)

(assert (=> b!4482304 m!5202767))

(declare-fun m!5202769 () Bool)

(assert (=> b!4482304 m!5202769))

(push 1)

(assert (not b!4482297))

(assert tp_is_empty!27547)

(assert (not b!4482296))

(assert tp_is_empty!27545)

(assert (not b!4482304))

(assert (not b!4482299))

(assert (not b!4482300))

(assert (not b!4482302))

(assert (not b!4482301))

(assert (not b!4482298))

(assert (not b!4482303))

(assert (not start!440994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1371944 () Bool)

(declare-fun res!1861247 () Bool)

(declare-fun e!2791726 () Bool)

(assert (=> d!1371944 (=> res!1861247 e!2791726)))

(assert (=> d!1371944 (= res!1861247 (not (is-Cons!50396 newBucket!178)))))

(assert (=> d!1371944 (= (noDuplicateKeys!1067 newBucket!178) e!2791726)))

(declare-fun b!4482349 () Bool)

(declare-fun e!2791727 () Bool)

(assert (=> b!4482349 (= e!2791726 e!2791727)))

(declare-fun res!1861248 () Bool)

(assert (=> b!4482349 (=> (not res!1861248) (not e!2791727))))

(declare-fun containsKey!1561 (List!50520 K!11808) Bool)

(assert (=> b!4482349 (= res!1861248 (not (containsKey!1561 (t!357474 newBucket!178) (_1!28645 (h!56185 newBucket!178)))))))

(declare-fun b!4482350 () Bool)

(assert (=> b!4482350 (= e!2791727 (noDuplicateKeys!1067 (t!357474 newBucket!178)))))

(assert (= (and d!1371944 (not res!1861247)) b!4482349))

(assert (= (and b!4482349 res!1861248) b!4482350))

(declare-fun m!5202809 () Bool)

(assert (=> b!4482349 m!5202809))

(declare-fun m!5202811 () Bool)

(assert (=> b!4482350 m!5202811))

(assert (=> b!4482299 d!1371944))

(declare-fun d!1371946 () Bool)

(assert (=> d!1371946 (contains!12997 (toList!4141 lm!1477) (tuple2!50705 hash!344 lt!1669015))))

(declare-fun lt!1669040 () Unit!89879)

(declare-fun choose!28787 (List!50521 (_ BitVec 64) List!50520) Unit!89879)

(assert (=> d!1371946 (= lt!1669040 (choose!28787 (toList!4141 lm!1477) hash!344 lt!1669015))))

(declare-fun e!2791732 () Bool)

(assert (=> d!1371946 e!2791732))

(declare-fun res!1861253 () Bool)

(assert (=> d!1371946 (=> (not res!1861253) (not e!2791732))))

(declare-fun isStrictlySorted!366 (List!50521) Bool)

(assert (=> d!1371946 (= res!1861253 (isStrictlySorted!366 (toList!4141 lm!1477)))))

(assert (=> d!1371946 (= (lemmaGetValueByKeyImpliesContainsTuple!579 (toList!4141 lm!1477) hash!344 lt!1669015) lt!1669040)))

(declare-fun b!4482355 () Bool)

(declare-datatypes ((Option!10976 0))(
  ( (None!10975) (Some!10975 (v!44359 List!50520)) )
))
(declare-fun getValueByKey!962 (List!50521 (_ BitVec 64)) Option!10976)

(assert (=> b!4482355 (= e!2791732 (= (getValueByKey!962 (toList!4141 lm!1477) hash!344) (Some!10975 lt!1669015)))))

(assert (= (and d!1371946 res!1861253) b!4482355))

(declare-fun m!5202819 () Bool)

(assert (=> d!1371946 m!5202819))

(declare-fun m!5202821 () Bool)

(assert (=> d!1371946 m!5202821))

(declare-fun m!5202823 () Bool)

(assert (=> d!1371946 m!5202823))

(declare-fun m!5202825 () Bool)

(assert (=> b!4482355 m!5202825))

(assert (=> b!4482304 d!1371946))

(declare-fun b!4482365 () Bool)

(declare-fun e!2791737 () List!50520)

(declare-fun e!2791738 () List!50520)

(assert (=> b!4482365 (= e!2791737 e!2791738)))

(declare-fun c!763503 () Bool)

(assert (=> b!4482365 (= c!763503 (is-Cons!50396 lt!1669015))))

(declare-fun b!4482366 () Bool)

(assert (=> b!4482366 (= e!2791738 (Cons!50396 (h!56185 lt!1669015) (removePairForKey!694 (t!357474 lt!1669015) key!3287)))))

(declare-fun d!1371950 () Bool)

(declare-fun lt!1669043 () List!50520)

(assert (=> d!1371950 (not (containsKey!1561 lt!1669043 key!3287))))

(assert (=> d!1371950 (= lt!1669043 e!2791737)))

(declare-fun c!763502 () Bool)

(assert (=> d!1371950 (= c!763502 (and (is-Cons!50396 lt!1669015) (= (_1!28645 (h!56185 lt!1669015)) key!3287)))))

(assert (=> d!1371950 (noDuplicateKeys!1067 lt!1669015)))

(assert (=> d!1371950 (= (removePairForKey!694 lt!1669015 key!3287) lt!1669043)))

(declare-fun b!4482367 () Bool)

(assert (=> b!4482367 (= e!2791738 Nil!50396)))

(declare-fun b!4482364 () Bool)

(assert (=> b!4482364 (= e!2791737 (t!357474 lt!1669015))))

(assert (= (and d!1371950 c!763502) b!4482364))

(assert (= (and d!1371950 (not c!763502)) b!4482365))

(assert (= (and b!4482365 c!763503) b!4482366))

(assert (= (and b!4482365 (not c!763503)) b!4482367))

(declare-fun m!5202827 () Bool)

(assert (=> b!4482366 m!5202827))

(declare-fun m!5202829 () Bool)

(assert (=> d!1371950 m!5202829))

(declare-fun m!5202831 () Bool)

(assert (=> d!1371950 m!5202831))

(assert (=> b!4482304 d!1371950))

(declare-fun d!1371952 () Bool)

(declare-fun e!2791743 () Bool)

(assert (=> d!1371952 e!2791743))

(declare-fun res!1861256 () Bool)

(assert (=> d!1371952 (=> res!1861256 e!2791743)))

(declare-fun lt!1669058 () Bool)

(assert (=> d!1371952 (= res!1861256 (not lt!1669058))))

(declare-fun lt!1669056 () Bool)

(assert (=> d!1371952 (= lt!1669058 lt!1669056)))

(declare-fun lt!1669055 () Unit!89879)

(declare-fun e!2791744 () Unit!89879)

(assert (=> d!1371952 (= lt!1669055 e!2791744)))

(declare-fun c!763506 () Bool)

(assert (=> d!1371952 (= c!763506 lt!1669056)))

(declare-fun containsKey!1562 (List!50521 (_ BitVec 64)) Bool)

(assert (=> d!1371952 (= lt!1669056 (containsKey!1562 (toList!4141 lm!1477) lt!1669013))))

(assert (=> d!1371952 (= (contains!12998 lm!1477 lt!1669013) lt!1669058)))

(declare-fun b!4482374 () Bool)

(declare-fun lt!1669057 () Unit!89879)

(assert (=> b!4482374 (= e!2791744 lt!1669057)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!866 (List!50521 (_ BitVec 64)) Unit!89879)

(assert (=> b!4482374 (= lt!1669057 (lemmaContainsKeyImpliesGetValueByKeyDefined!866 (toList!4141 lm!1477) lt!1669013))))

(declare-fun isDefined!8263 (Option!10976) Bool)

(assert (=> b!4482374 (isDefined!8263 (getValueByKey!962 (toList!4141 lm!1477) lt!1669013))))

(declare-fun b!4482375 () Bool)

(declare-fun Unit!89883 () Unit!89879)

(assert (=> b!4482375 (= e!2791744 Unit!89883)))

(declare-fun b!4482376 () Bool)

(assert (=> b!4482376 (= e!2791743 (isDefined!8263 (getValueByKey!962 (toList!4141 lm!1477) lt!1669013)))))

(assert (= (and d!1371952 c!763506) b!4482374))

(assert (= (and d!1371952 (not c!763506)) b!4482375))

(assert (= (and d!1371952 (not res!1861256)) b!4482376))

(declare-fun m!5202839 () Bool)

(assert (=> d!1371952 m!5202839))

(declare-fun m!5202841 () Bool)

(assert (=> b!4482374 m!5202841))

(declare-fun m!5202843 () Bool)

(assert (=> b!4482374 m!5202843))

(assert (=> b!4482374 m!5202843))

(declare-fun m!5202845 () Bool)

(assert (=> b!4482374 m!5202845))

(assert (=> b!4482376 m!5202843))

(assert (=> b!4482376 m!5202843))

(assert (=> b!4482376 m!5202845))

(assert (=> b!4482304 d!1371952))

(declare-fun bs!825448 () Bool)

(declare-fun d!1371956 () Bool)

(assert (= bs!825448 (and d!1371956 start!440994)))

(declare-fun lambda!165679 () Int)

(assert (=> bs!825448 (= lambda!165679 lambda!165668)))

(assert (=> d!1371956 (contains!12998 lm!1477 (hash!2566 hashF!1107 key!3287))))

(declare-fun lt!1669064 () Unit!89879)

(declare-fun choose!28788 (ListLongMap!2773 K!11808 Hashable!5462) Unit!89879)

(assert (=> d!1371956 (= lt!1669064 (choose!28788 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371956 (forall!10065 (toList!4141 lm!1477) lambda!165679)))

(assert (=> d!1371956 (= (lemmaInGenMapThenLongMapContainsHash!141 lm!1477 key!3287 hashF!1107) lt!1669064)))

(declare-fun bs!825449 () Bool)

(assert (= bs!825449 d!1371956))

(assert (=> bs!825449 m!5202739))

(assert (=> bs!825449 m!5202739))

(declare-fun m!5202847 () Bool)

(assert (=> bs!825449 m!5202847))

(declare-fun m!5202849 () Bool)

(assert (=> bs!825449 m!5202849))

(declare-fun m!5202851 () Bool)

(assert (=> bs!825449 m!5202851))

(assert (=> b!4482304 d!1371956))

(declare-fun d!1371958 () Bool)

(declare-fun lt!1669067 () Bool)

(declare-fun content!8176 (List!50521) (Set tuple2!50704))

(assert (=> d!1371958 (= lt!1669067 (set.member lt!1669014 (content!8176 (toList!4141 lm!1477))))))

(declare-fun e!2791752 () Bool)

(assert (=> d!1371958 (= lt!1669067 e!2791752)))

(declare-fun res!1861265 () Bool)

(assert (=> d!1371958 (=> (not res!1861265) (not e!2791752))))

(assert (=> d!1371958 (= res!1861265 (is-Cons!50397 (toList!4141 lm!1477)))))

(assert (=> d!1371958 (= (contains!12997 (toList!4141 lm!1477) lt!1669014) lt!1669067)))

(declare-fun b!4482384 () Bool)

(declare-fun e!2791753 () Bool)

(assert (=> b!4482384 (= e!2791752 e!2791753)))

(declare-fun res!1861264 () Bool)

(assert (=> b!4482384 (=> res!1861264 e!2791753)))

(assert (=> b!4482384 (= res!1861264 (= (h!56186 (toList!4141 lm!1477)) lt!1669014))))

(declare-fun b!4482385 () Bool)

(assert (=> b!4482385 (= e!2791753 (contains!12997 (t!357475 (toList!4141 lm!1477)) lt!1669014))))

(assert (= (and d!1371958 res!1861265) b!4482384))

(assert (= (and b!4482384 (not res!1861264)) b!4482385))

(declare-fun m!5202857 () Bool)

(assert (=> d!1371958 m!5202857))

(declare-fun m!5202859 () Bool)

(assert (=> d!1371958 m!5202859))

(declare-fun m!5202861 () Bool)

(assert (=> b!4482385 m!5202861))

(assert (=> b!4482304 d!1371958))

(declare-fun d!1371962 () Bool)

(declare-fun dynLambda!21049 (Int tuple2!50704) Bool)

(assert (=> d!1371962 (dynLambda!21049 lambda!165668 lt!1669014)))

(declare-fun lt!1669070 () Unit!89879)

(declare-fun choose!28789 (List!50521 Int tuple2!50704) Unit!89879)

(assert (=> d!1371962 (= lt!1669070 (choose!28789 (toList!4141 lm!1477) lambda!165668 lt!1669014))))

(declare-fun e!2791756 () Bool)

(assert (=> d!1371962 e!2791756))

(declare-fun res!1861268 () Bool)

(assert (=> d!1371962 (=> (not res!1861268) (not e!2791756))))

(assert (=> d!1371962 (= res!1861268 (forall!10065 (toList!4141 lm!1477) lambda!165668))))

(assert (=> d!1371962 (= (forallContained!2326 (toList!4141 lm!1477) lambda!165668 lt!1669014) lt!1669070)))

(declare-fun b!4482388 () Bool)

(assert (=> b!4482388 (= e!2791756 (contains!12997 (toList!4141 lm!1477) lt!1669014))))

(assert (= (and d!1371962 res!1861268) b!4482388))

(declare-fun b_lambda!150357 () Bool)

(assert (=> (not b_lambda!150357) (not d!1371962)))

(declare-fun m!5202867 () Bool)

(assert (=> d!1371962 m!5202867))

(declare-fun m!5202869 () Bool)

(assert (=> d!1371962 m!5202869))

(assert (=> d!1371962 m!5202751))

(assert (=> b!4482388 m!5202757))

(assert (=> b!4482304 d!1371962))

(declare-fun d!1371966 () Bool)

(declare-fun get!16445 (Option!10976) List!50520)

(assert (=> d!1371966 (= (apply!11804 lm!1477 hash!344) (get!16445 (getValueByKey!962 (toList!4141 lm!1477) hash!344)))))

(declare-fun bs!825451 () Bool)

(assert (= bs!825451 d!1371966))

(assert (=> bs!825451 m!5202825))

(assert (=> bs!825451 m!5202825))

(declare-fun m!5202871 () Bool)

(assert (=> bs!825451 m!5202871))

(assert (=> b!4482304 d!1371966))

(declare-fun bs!825452 () Bool)

(declare-fun d!1371968 () Bool)

(assert (= bs!825452 (and d!1371968 start!440994)))

(declare-fun lambda!165682 () Int)

(assert (=> bs!825452 (not (= lambda!165682 lambda!165668))))

(declare-fun bs!825453 () Bool)

(assert (= bs!825453 (and d!1371968 d!1371956)))

(assert (=> bs!825453 (not (= lambda!165682 lambda!165679))))

(assert (=> d!1371968 true))

(assert (=> d!1371968 (= (allKeysSameHashInMap!1174 lm!1477 hashF!1107) (forall!10065 (toList!4141 lm!1477) lambda!165682))))

(declare-fun bs!825454 () Bool)

(assert (= bs!825454 d!1371968))

(declare-fun m!5202873 () Bool)

(assert (=> bs!825454 m!5202873))

(assert (=> b!4482300 d!1371968))

(declare-fun d!1371970 () Bool)

(declare-fun hash!2568 (Hashable!5462 K!11808) (_ BitVec 64))

(assert (=> d!1371970 (= (hash!2566 hashF!1107 key!3287) (hash!2568 hashF!1107 key!3287))))

(declare-fun bs!825455 () Bool)

(assert (= bs!825455 d!1371970))

(declare-fun m!5202875 () Bool)

(assert (=> bs!825455 m!5202875))

(assert (=> b!4482302 d!1371970))

(declare-fun d!1371972 () Bool)

(declare-fun res!1861276 () Bool)

(declare-fun e!2791764 () Bool)

(assert (=> d!1371972 (=> res!1861276 e!2791764)))

(assert (=> d!1371972 (= res!1861276 (is-Nil!50397 (toList!4141 lm!1477)))))

(assert (=> d!1371972 (= (forall!10065 (toList!4141 lm!1477) lambda!165668) e!2791764)))

(declare-fun b!4482398 () Bool)

(declare-fun e!2791765 () Bool)

(assert (=> b!4482398 (= e!2791764 e!2791765)))

(declare-fun res!1861277 () Bool)

(assert (=> b!4482398 (=> (not res!1861277) (not e!2791765))))

(assert (=> b!4482398 (= res!1861277 (dynLambda!21049 lambda!165668 (h!56186 (toList!4141 lm!1477))))))

(declare-fun b!4482399 () Bool)

(assert (=> b!4482399 (= e!2791765 (forall!10065 (t!357475 (toList!4141 lm!1477)) lambda!165668))))

(assert (= (and d!1371972 (not res!1861276)) b!4482398))

(assert (= (and b!4482398 res!1861277) b!4482399))

(declare-fun b_lambda!150359 () Bool)

(assert (=> (not b_lambda!150359) (not b!4482398)))

(declare-fun m!5202881 () Bool)

(assert (=> b!4482398 m!5202881))

(declare-fun m!5202883 () Bool)

(assert (=> b!4482399 m!5202883))

(assert (=> start!440994 d!1371972))

(declare-fun d!1371976 () Bool)

(assert (=> d!1371976 (= (inv!65993 lm!1477) (isStrictlySorted!366 (toList!4141 lm!1477)))))

(declare-fun bs!825456 () Bool)

(assert (= bs!825456 d!1371976))

(assert (=> bs!825456 m!5202823))

(assert (=> start!440994 d!1371976))

(declare-fun b!4482427 () Bool)

(declare-fun e!2791787 () Bool)

(declare-datatypes ((List!50524 0))(
  ( (Nil!50400) (Cons!50400 (h!56190 K!11808) (t!357478 List!50524)) )
))
(declare-fun contains!13002 (List!50524 K!11808) Bool)

(declare-fun keys!17433 (ListMap!3403) List!50524)

(assert (=> b!4482427 (= e!2791787 (contains!13002 (keys!17433 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(declare-fun b!4482428 () Bool)

(declare-fun e!2791785 () Bool)

(assert (=> b!4482428 (= e!2791785 e!2791787)))

(declare-fun res!1861287 () Bool)

(assert (=> b!4482428 (=> (not res!1861287) (not e!2791787))))

(declare-datatypes ((Option!10977 0))(
  ( (None!10976) (Some!10976 (v!44360 V!12054)) )
))
(declare-fun isDefined!8264 (Option!10977) Bool)

(declare-fun getValueByKey!963 (List!50520 K!11808) Option!10977)

(assert (=> b!4482428 (= res!1861287 (isDefined!8264 (getValueByKey!963 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287)))))

(declare-fun b!4482429 () Bool)

(declare-fun e!2791789 () List!50524)

(declare-fun getKeysList!400 (List!50520) List!50524)

(assert (=> b!4482429 (= e!2791789 (getKeysList!400 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))

(declare-fun b!4482430 () Bool)

(declare-fun e!2791788 () Unit!89879)

(declare-fun e!2791786 () Unit!89879)

(assert (=> b!4482430 (= e!2791788 e!2791786)))

(declare-fun c!763516 () Bool)

(declare-fun call!312110 () Bool)

(assert (=> b!4482430 (= c!763516 call!312110)))

(declare-fun bm!312105 () Bool)

(assert (=> bm!312105 (= call!312110 (contains!13002 e!2791789 key!3287))))

(declare-fun c!763518 () Bool)

(declare-fun c!763517 () Bool)

(assert (=> bm!312105 (= c!763518 c!763517)))

(declare-fun b!4482431 () Bool)

(declare-fun lt!1669109 () Unit!89879)

(assert (=> b!4482431 (= e!2791788 lt!1669109)))

(declare-fun lt!1669105 () Unit!89879)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!867 (List!50520 K!11808) Unit!89879)

(assert (=> b!4482431 (= lt!1669105 (lemmaContainsKeyImpliesGetValueByKeyDefined!867 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(assert (=> b!4482431 (isDefined!8264 (getValueByKey!963 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(declare-fun lt!1669102 () Unit!89879)

(assert (=> b!4482431 (= lt!1669102 lt!1669105)))

(declare-fun lemmaInListThenGetKeysListContains!396 (List!50520 K!11808) Unit!89879)

(assert (=> b!4482431 (= lt!1669109 (lemmaInListThenGetKeysListContains!396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(assert (=> b!4482431 call!312110))

(declare-fun d!1371978 () Bool)

(assert (=> d!1371978 e!2791785))

(declare-fun res!1861288 () Bool)

(assert (=> d!1371978 (=> res!1861288 e!2791785)))

(declare-fun e!2791784 () Bool)

(assert (=> d!1371978 (= res!1861288 e!2791784)))

(declare-fun res!1861289 () Bool)

(assert (=> d!1371978 (=> (not res!1861289) (not e!2791784))))

(declare-fun lt!1669106 () Bool)

(assert (=> d!1371978 (= res!1861289 (not lt!1669106))))

(declare-fun lt!1669104 () Bool)

(assert (=> d!1371978 (= lt!1669106 lt!1669104)))

(declare-fun lt!1669108 () Unit!89879)

(assert (=> d!1371978 (= lt!1669108 e!2791788)))

(assert (=> d!1371978 (= c!763517 lt!1669104)))

(declare-fun containsKey!1563 (List!50520 K!11808) Bool)

(assert (=> d!1371978 (= lt!1669104 (containsKey!1563 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(assert (=> d!1371978 (= (contains!12996 (extractMap!1123 (toList!4141 lm!1477)) key!3287) lt!1669106)))

(declare-fun b!4482432 () Bool)

(assert (=> b!4482432 (= e!2791784 (not (contains!13002 (keys!17433 (extractMap!1123 (toList!4141 lm!1477))) key!3287)))))

(declare-fun b!4482433 () Bool)

(assert (=> b!4482433 false))

(declare-fun lt!1669103 () Unit!89879)

(declare-fun lt!1669107 () Unit!89879)

(assert (=> b!4482433 (= lt!1669103 lt!1669107)))

(assert (=> b!4482433 (containsKey!1563 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!399 (List!50520 K!11808) Unit!89879)

(assert (=> b!4482433 (= lt!1669107 (lemmaInGetKeysListThenContainsKey!399 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(declare-fun Unit!89884 () Unit!89879)

(assert (=> b!4482433 (= e!2791786 Unit!89884)))

(declare-fun b!4482434 () Bool)

(declare-fun Unit!89885 () Unit!89879)

(assert (=> b!4482434 (= e!2791786 Unit!89885)))

(declare-fun b!4482435 () Bool)

(assert (=> b!4482435 (= e!2791789 (keys!17433 (extractMap!1123 (toList!4141 lm!1477))))))

(assert (= (and d!1371978 c!763517) b!4482431))

(assert (= (and d!1371978 (not c!763517)) b!4482430))

(assert (= (and b!4482430 c!763516) b!4482433))

(assert (= (and b!4482430 (not c!763516)) b!4482434))

(assert (= (or b!4482431 b!4482430) bm!312105))

(assert (= (and bm!312105 c!763518) b!4482429))

(assert (= (and bm!312105 (not c!763518)) b!4482435))

(assert (= (and d!1371978 res!1861289) b!4482432))

(assert (= (and d!1371978 (not res!1861288)) b!4482428))

(assert (= (and b!4482428 res!1861287) b!4482427))

(assert (=> b!4482435 m!5202747))

(declare-fun m!5202893 () Bool)

(assert (=> b!4482435 m!5202893))

(assert (=> b!4482432 m!5202747))

(assert (=> b!4482432 m!5202893))

(assert (=> b!4482432 m!5202893))

(declare-fun m!5202895 () Bool)

(assert (=> b!4482432 m!5202895))

(declare-fun m!5202897 () Bool)

(assert (=> b!4482428 m!5202897))

(assert (=> b!4482428 m!5202897))

(declare-fun m!5202899 () Bool)

(assert (=> b!4482428 m!5202899))

(declare-fun m!5202901 () Bool)

(assert (=> b!4482429 m!5202901))

(assert (=> b!4482427 m!5202747))

(assert (=> b!4482427 m!5202893))

(assert (=> b!4482427 m!5202893))

(assert (=> b!4482427 m!5202895))

(declare-fun m!5202903 () Bool)

(assert (=> d!1371978 m!5202903))

(declare-fun m!5202905 () Bool)

(assert (=> bm!312105 m!5202905))

(declare-fun m!5202907 () Bool)

(assert (=> b!4482431 m!5202907))

(assert (=> b!4482431 m!5202897))

(assert (=> b!4482431 m!5202897))

(assert (=> b!4482431 m!5202899))

(declare-fun m!5202909 () Bool)

(assert (=> b!4482431 m!5202909))

(assert (=> b!4482433 m!5202903))

(declare-fun m!5202911 () Bool)

(assert (=> b!4482433 m!5202911))

(assert (=> b!4482298 d!1371978))

(declare-fun bs!825458 () Bool)

(declare-fun d!1371982 () Bool)

(assert (= bs!825458 (and d!1371982 start!440994)))

(declare-fun lambda!165685 () Int)

(assert (=> bs!825458 (= lambda!165685 lambda!165668)))

(declare-fun bs!825459 () Bool)

(assert (= bs!825459 (and d!1371982 d!1371956)))

(assert (=> bs!825459 (= lambda!165685 lambda!165679)))

(declare-fun bs!825460 () Bool)

(assert (= bs!825460 (and d!1371982 d!1371968)))

(assert (=> bs!825460 (not (= lambda!165685 lambda!165682))))

(declare-fun lt!1669115 () ListMap!3403)

(declare-fun invariantList!952 (List!50520) Bool)

(assert (=> d!1371982 (invariantList!952 (toList!4142 lt!1669115))))

(declare-fun e!2791798 () ListMap!3403)

(assert (=> d!1371982 (= lt!1669115 e!2791798)))

(declare-fun c!763527 () Bool)

(assert (=> d!1371982 (= c!763527 (is-Cons!50397 (toList!4141 lm!1477)))))

(assert (=> d!1371982 (forall!10065 (toList!4141 lm!1477) lambda!165685)))

(assert (=> d!1371982 (= (extractMap!1123 (toList!4141 lm!1477)) lt!1669115)))

(declare-fun b!4482452 () Bool)

(declare-fun addToMapMapFromBucket!620 (List!50520 ListMap!3403) ListMap!3403)

(assert (=> b!4482452 (= e!2791798 (addToMapMapFromBucket!620 (_2!28646 (h!56186 (toList!4141 lm!1477))) (extractMap!1123 (t!357475 (toList!4141 lm!1477)))))))

(declare-fun b!4482453 () Bool)

(assert (=> b!4482453 (= e!2791798 (ListMap!3404 Nil!50396))))

(assert (= (and d!1371982 c!763527) b!4482452))

(assert (= (and d!1371982 (not c!763527)) b!4482453))

(declare-fun m!5202921 () Bool)

(assert (=> d!1371982 m!5202921))

(declare-fun m!5202923 () Bool)

(assert (=> d!1371982 m!5202923))

(declare-fun m!5202925 () Bool)

(assert (=> b!4482452 m!5202925))

(assert (=> b!4482452 m!5202925))

(declare-fun m!5202927 () Bool)

(assert (=> b!4482452 m!5202927))

(assert (=> b!4482298 d!1371982))

(declare-fun d!1371988 () Bool)

(declare-fun isEmpty!28512 (List!50521) Bool)

(assert (=> d!1371988 (= (isEmpty!28510 lm!1477) (isEmpty!28512 (toList!4141 lm!1477)))))

(declare-fun bs!825461 () Bool)

(assert (= bs!825461 d!1371988))

(declare-fun m!5202929 () Bool)

(assert (=> bs!825461 m!5202929))

(assert (=> b!4482303 d!1371988))

(declare-fun d!1371990 () Bool)

(assert (=> d!1371990 true))

(assert (=> d!1371990 true))

(declare-fun lambda!165688 () Int)

(declare-fun forall!10067 (List!50520 Int) Bool)

(assert (=> d!1371990 (= (allKeysSameHash!921 newBucket!178 hash!344 hashF!1107) (forall!10067 newBucket!178 lambda!165688))))

(declare-fun bs!825462 () Bool)

(assert (= bs!825462 d!1371990))

(declare-fun m!5202931 () Bool)

(assert (=> bs!825462 m!5202931))

(assert (=> b!4482297 d!1371990))

(declare-fun tp!1336768 () Bool)

(declare-fun e!2791801 () Bool)

(declare-fun b!4482462 () Bool)

(assert (=> b!4482462 (= e!2791801 (and tp_is_empty!27545 tp_is_empty!27547 tp!1336768))))

(assert (=> b!4482296 (= tp!1336759 e!2791801)))

(assert (= (and b!4482296 (is-Cons!50396 (t!357474 newBucket!178))) b!4482462))

(declare-fun b!4482467 () Bool)

(declare-fun e!2791804 () Bool)

(declare-fun tp!1336773 () Bool)

(declare-fun tp!1336774 () Bool)

(assert (=> b!4482467 (= e!2791804 (and tp!1336773 tp!1336774))))

(assert (=> b!4482301 (= tp!1336758 e!2791804)))

(assert (= (and b!4482301 (is-Cons!50397 (toList!4141 lm!1477))) b!4482467))

(declare-fun b_lambda!150361 () Bool)

(assert (= b_lambda!150359 (or start!440994 b_lambda!150361)))

(declare-fun bs!825463 () Bool)

(declare-fun d!1371992 () Bool)

(assert (= bs!825463 (and d!1371992 start!440994)))

(assert (=> bs!825463 (= (dynLambda!21049 lambda!165668 (h!56186 (toList!4141 lm!1477))) (noDuplicateKeys!1067 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))

(declare-fun m!5202933 () Bool)

(assert (=> bs!825463 m!5202933))

(assert (=> b!4482398 d!1371992))

(declare-fun b_lambda!150363 () Bool)

(assert (= b_lambda!150357 (or start!440994 b_lambda!150363)))

(declare-fun bs!825464 () Bool)

(declare-fun d!1371994 () Bool)

(assert (= bs!825464 (and d!1371994 start!440994)))

(assert (=> bs!825464 (= (dynLambda!21049 lambda!165668 lt!1669014) (noDuplicateKeys!1067 (_2!28646 lt!1669014)))))

(declare-fun m!5202935 () Bool)

(assert (=> bs!825464 m!5202935))

(assert (=> d!1371962 d!1371994))

(push 1)

(assert (not b!4482428))

(assert (not b!4482427))

(assert (not d!1371956))

(assert (not bs!825463))

(assert (not d!1371958))

(assert (not d!1371982))

(assert (not b!4482462))

(assert (not b!4482431))

(assert (not d!1371950))

(assert (not b!4482452))

(assert (not d!1371968))

(assert (not d!1371970))

(assert (not b!4482350))

(assert (not b!4482374))

(assert (not b_lambda!150361))

(assert (not d!1371990))

(assert (not d!1371988))

(assert (not b!4482385))

(assert (not b!4482429))

(assert tp_is_empty!27547)

(assert (not b_lambda!150363))

(assert (not b!4482355))

(assert (not d!1371966))

(assert (not d!1371978))

(assert (not b!4482433))

(assert (not b!4482399))

(assert (not bs!825464))

(assert (not b!4482435))

(assert (not b!4482376))

(assert (not d!1371946))

(assert tp_is_empty!27545)

(assert (not b!4482366))

(assert (not d!1371962))

(assert (not b!4482467))

(assert (not b!4482349))

(assert (not b!4482388))

(assert (not bm!312105))

(assert (not b!4482432))

(assert (not d!1371952))

(assert (not d!1371976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1372010 () Bool)

(declare-fun isEmpty!28514 (Option!10977) Bool)

(assert (=> d!1372010 (= (isDefined!8264 (getValueByKey!963 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287)) (not (isEmpty!28514 (getValueByKey!963 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))))

(declare-fun bs!825475 () Bool)

(assert (= bs!825475 d!1372010))

(assert (=> bs!825475 m!5202897))

(declare-fun m!5202979 () Bool)

(assert (=> bs!825475 m!5202979))

(assert (=> b!4482428 d!1372010))

(declare-fun b!4482532 () Bool)

(declare-fun e!2791842 () Option!10977)

(declare-fun e!2791843 () Option!10977)

(assert (=> b!4482532 (= e!2791842 e!2791843)))

(declare-fun c!763545 () Bool)

(assert (=> b!4482532 (= c!763545 (and (is-Cons!50396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (not (= (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) key!3287))))))

(declare-fun d!1372012 () Bool)

(declare-fun c!763544 () Bool)

(assert (=> d!1372012 (= c!763544 (and (is-Cons!50396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (= (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) key!3287)))))

(assert (=> d!1372012 (= (getValueByKey!963 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287) e!2791842)))

(declare-fun b!4482534 () Bool)

(assert (=> b!4482534 (= e!2791843 None!10976)))

(declare-fun b!4482533 () Bool)

(assert (=> b!4482533 (= e!2791843 (getValueByKey!963 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) key!3287))))

(declare-fun b!4482531 () Bool)

(assert (=> b!4482531 (= e!2791842 (Some!10976 (_2!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))))

(assert (= (and d!1372012 c!763544) b!4482531))

(assert (= (and d!1372012 (not c!763544)) b!4482532))

(assert (= (and b!4482532 c!763545) b!4482533))

(assert (= (and b!4482532 (not c!763545)) b!4482534))

(declare-fun m!5202981 () Bool)

(assert (=> b!4482533 m!5202981))

(assert (=> b!4482428 d!1372012))

(declare-fun d!1372014 () Bool)

(declare-fun res!1861305 () Bool)

(declare-fun e!2791844 () Bool)

(assert (=> d!1372014 (=> res!1861305 e!2791844)))

(assert (=> d!1372014 (= res!1861305 (is-Nil!50397 (t!357475 (toList!4141 lm!1477))))))

(assert (=> d!1372014 (= (forall!10065 (t!357475 (toList!4141 lm!1477)) lambda!165668) e!2791844)))

(declare-fun b!4482535 () Bool)

(declare-fun e!2791845 () Bool)

(assert (=> b!4482535 (= e!2791844 e!2791845)))

(declare-fun res!1861306 () Bool)

(assert (=> b!4482535 (=> (not res!1861306) (not e!2791845))))

(assert (=> b!4482535 (= res!1861306 (dynLambda!21049 lambda!165668 (h!56186 (t!357475 (toList!4141 lm!1477)))))))

(declare-fun b!4482536 () Bool)

(assert (=> b!4482536 (= e!2791845 (forall!10065 (t!357475 (t!357475 (toList!4141 lm!1477))) lambda!165668))))

(assert (= (and d!1372014 (not res!1861305)) b!4482535))

(assert (= (and b!4482535 res!1861306) b!4482536))

(declare-fun b_lambda!150369 () Bool)

(assert (=> (not b_lambda!150369) (not b!4482535)))

(declare-fun m!5202983 () Bool)

(assert (=> b!4482535 m!5202983))

(declare-fun m!5202985 () Bool)

(assert (=> b!4482536 m!5202985))

(assert (=> b!4482399 d!1372014))

(declare-fun d!1372016 () Bool)

(declare-fun lt!1669145 () Bool)

(declare-fun content!8178 (List!50524) (Set K!11808))

(assert (=> d!1372016 (= lt!1669145 (set.member key!3287 (content!8178 (keys!17433 (extractMap!1123 (toList!4141 lm!1477))))))))

(declare-fun e!2791851 () Bool)

(assert (=> d!1372016 (= lt!1669145 e!2791851)))

(declare-fun res!1861311 () Bool)

(assert (=> d!1372016 (=> (not res!1861311) (not e!2791851))))

(assert (=> d!1372016 (= res!1861311 (is-Cons!50400 (keys!17433 (extractMap!1123 (toList!4141 lm!1477)))))))

(assert (=> d!1372016 (= (contains!13002 (keys!17433 (extractMap!1123 (toList!4141 lm!1477))) key!3287) lt!1669145)))

(declare-fun b!4482541 () Bool)

(declare-fun e!2791850 () Bool)

(assert (=> b!4482541 (= e!2791851 e!2791850)))

(declare-fun res!1861312 () Bool)

(assert (=> b!4482541 (=> res!1861312 e!2791850)))

(assert (=> b!4482541 (= res!1861312 (= (h!56190 (keys!17433 (extractMap!1123 (toList!4141 lm!1477)))) key!3287))))

(declare-fun b!4482542 () Bool)

(assert (=> b!4482542 (= e!2791850 (contains!13002 (t!357478 (keys!17433 (extractMap!1123 (toList!4141 lm!1477)))) key!3287))))

(assert (= (and d!1372016 res!1861311) b!4482541))

(assert (= (and b!4482541 (not res!1861312)) b!4482542))

(assert (=> d!1372016 m!5202893))

(declare-fun m!5202987 () Bool)

(assert (=> d!1372016 m!5202987))

(declare-fun m!5202989 () Bool)

(assert (=> d!1372016 m!5202989))

(declare-fun m!5202991 () Bool)

(assert (=> b!4482542 m!5202991))

(assert (=> b!4482427 d!1372016))

(declare-fun b!4482550 () Bool)

(assert (=> b!4482550 true))

(declare-fun d!1372018 () Bool)

(declare-fun e!2791854 () Bool)

(assert (=> d!1372018 e!2791854))

(declare-fun res!1861321 () Bool)

(assert (=> d!1372018 (=> (not res!1861321) (not e!2791854))))

(declare-fun lt!1669148 () List!50524)

(declare-fun noDuplicate!705 (List!50524) Bool)

(assert (=> d!1372018 (= res!1861321 (noDuplicate!705 lt!1669148))))

(assert (=> d!1372018 (= lt!1669148 (getKeysList!400 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))

(assert (=> d!1372018 (= (keys!17433 (extractMap!1123 (toList!4141 lm!1477))) lt!1669148)))

(declare-fun b!4482549 () Bool)

(declare-fun res!1861319 () Bool)

(assert (=> b!4482549 (=> (not res!1861319) (not e!2791854))))

(declare-fun length!266 (List!50524) Int)

(declare-fun length!267 (List!50520) Int)

(assert (=> b!4482549 (= res!1861319 (= (length!266 lt!1669148) (length!267 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))))

(declare-fun res!1861320 () Bool)

(assert (=> b!4482550 (=> (not res!1861320) (not e!2791854))))

(declare-fun lambda!165702 () Int)

(declare-fun forall!10069 (List!50524 Int) Bool)

(assert (=> b!4482550 (= res!1861320 (forall!10069 lt!1669148 lambda!165702))))

(declare-fun b!4482551 () Bool)

(declare-fun lambda!165703 () Int)

(declare-fun map!11050 (List!50520 Int) List!50524)

(assert (=> b!4482551 (= e!2791854 (= (content!8178 lt!1669148) (content!8178 (map!11050 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) lambda!165703))))))

(assert (= (and d!1372018 res!1861321) b!4482549))

(assert (= (and b!4482549 res!1861319) b!4482550))

(assert (= (and b!4482550 res!1861320) b!4482551))

(declare-fun m!5202993 () Bool)

(assert (=> d!1372018 m!5202993))

(assert (=> d!1372018 m!5202901))

(declare-fun m!5202995 () Bool)

(assert (=> b!4482549 m!5202995))

(declare-fun m!5202997 () Bool)

(assert (=> b!4482549 m!5202997))

(declare-fun m!5202999 () Bool)

(assert (=> b!4482550 m!5202999))

(declare-fun m!5203001 () Bool)

(assert (=> b!4482551 m!5203001))

(declare-fun m!5203003 () Bool)

(assert (=> b!4482551 m!5203003))

(assert (=> b!4482551 m!5203003))

(declare-fun m!5203005 () Bool)

(assert (=> b!4482551 m!5203005))

(assert (=> b!4482427 d!1372018))

(declare-fun bs!825476 () Bool)

(declare-fun b!4482574 () Bool)

(assert (= bs!825476 (and b!4482574 b!4482550)))

(declare-fun lambda!165712 () Int)

(assert (=> bs!825476 (= (= (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (= lambda!165712 lambda!165702))))

(assert (=> b!4482574 true))

(declare-fun bs!825477 () Bool)

(declare-fun b!4482579 () Bool)

(assert (= bs!825477 (and b!4482579 b!4482550)))

(declare-fun lambda!165713 () Int)

(assert (=> bs!825477 (= (= (Cons!50396 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (= lambda!165713 lambda!165702))))

(declare-fun bs!825478 () Bool)

(assert (= bs!825478 (and b!4482579 b!4482574)))

(assert (=> bs!825478 (= (= (Cons!50396 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) (= lambda!165713 lambda!165712))))

(assert (=> b!4482579 true))

(declare-fun bs!825479 () Bool)

(declare-fun b!4482572 () Bool)

(assert (= bs!825479 (and b!4482572 b!4482550)))

(declare-fun lambda!165714 () Int)

(assert (=> bs!825479 (= lambda!165714 lambda!165702)))

(declare-fun bs!825480 () Bool)

(assert (= bs!825480 (and b!4482572 b!4482574)))

(assert (=> bs!825480 (= (= (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) (= lambda!165714 lambda!165712))))

(declare-fun bs!825481 () Bool)

(assert (= bs!825481 (and b!4482572 b!4482579)))

(assert (=> bs!825481 (= (= (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) (Cons!50396 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))) (= lambda!165714 lambda!165713))))

(assert (=> b!4482572 true))

(declare-fun bs!825482 () Bool)

(declare-fun b!4482576 () Bool)

(assert (= bs!825482 (and b!4482576 b!4482551)))

(declare-fun lambda!165715 () Int)

(assert (=> bs!825482 (= lambda!165715 lambda!165703)))

(declare-fun res!1861328 () Bool)

(declare-fun e!2791866 () Bool)

(assert (=> b!4482572 (=> (not res!1861328) (not e!2791866))))

(declare-fun lt!1669164 () List!50524)

(assert (=> b!4482572 (= res!1861328 (forall!10069 lt!1669164 lambda!165714))))

(declare-fun d!1372020 () Bool)

(assert (=> d!1372020 e!2791866))

(declare-fun res!1861329 () Bool)

(assert (=> d!1372020 (=> (not res!1861329) (not e!2791866))))

(assert (=> d!1372020 (= res!1861329 (noDuplicate!705 lt!1669164))))

(declare-fun e!2791864 () List!50524)

(assert (=> d!1372020 (= lt!1669164 e!2791864)))

(declare-fun c!763553 () Bool)

(assert (=> d!1372020 (= c!763553 (is-Cons!50396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))

(assert (=> d!1372020 (invariantList!952 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))

(assert (=> d!1372020 (= (getKeysList!400 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) lt!1669164)))

(declare-fun b!4482573 () Bool)

(declare-fun res!1861330 () Bool)

(assert (=> b!4482573 (=> (not res!1861330) (not e!2791866))))

(assert (=> b!4482573 (= res!1861330 (= (length!266 lt!1669164) (length!267 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))))

(assert (=> b!4482574 false))

(declare-fun lt!1669169 () Unit!89879)

(declare-fun forallContained!2328 (List!50524 Int K!11808) Unit!89879)

(assert (=> b!4482574 (= lt!1669169 (forallContained!2328 (getKeysList!400 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) lambda!165712 (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))))

(declare-fun e!2791865 () Unit!89879)

(declare-fun Unit!89889 () Unit!89879)

(assert (=> b!4482574 (= e!2791865 Unit!89889)))

(declare-fun b!4482575 () Bool)

(declare-fun e!2791863 () Unit!89879)

(declare-fun Unit!89890 () Unit!89879)

(assert (=> b!4482575 (= e!2791863 Unit!89890)))

(assert (=> b!4482576 (= e!2791866 (= (content!8178 lt!1669164) (content!8178 (map!11050 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) lambda!165715))))))

(declare-fun b!4482577 () Bool)

(assert (=> b!4482577 (= e!2791864 Nil!50400)))

(declare-fun b!4482578 () Bool)

(assert (=> b!4482578 false))

(declare-fun Unit!89891 () Unit!89879)

(assert (=> b!4482578 (= e!2791863 Unit!89891)))

(assert (=> b!4482579 (= e!2791864 (Cons!50400 (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) (getKeysList!400 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))))

(declare-fun c!763552 () Bool)

(assert (=> b!4482579 (= c!763552 (containsKey!1563 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))))

(declare-fun lt!1669166 () Unit!89879)

(assert (=> b!4482579 (= lt!1669166 e!2791863)))

(declare-fun c!763554 () Bool)

(assert (=> b!4482579 (= c!763554 (contains!13002 (getKeysList!400 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))))

(declare-fun lt!1669163 () Unit!89879)

(assert (=> b!4482579 (= lt!1669163 e!2791865)))

(declare-fun lt!1669168 () List!50524)

(assert (=> b!4482579 (= lt!1669168 (getKeysList!400 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))))

(declare-fun lt!1669165 () Unit!89879)

(declare-fun lemmaForallContainsAddHeadPreserves!127 (List!50520 List!50524 tuple2!50702) Unit!89879)

(assert (=> b!4482579 (= lt!1669165 (lemmaForallContainsAddHeadPreserves!127 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) lt!1669168 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))))

(assert (=> b!4482579 (forall!10069 lt!1669168 lambda!165713)))

(declare-fun lt!1669167 () Unit!89879)

(assert (=> b!4482579 (= lt!1669167 lt!1669165)))

(declare-fun b!4482580 () Bool)

(declare-fun Unit!89892 () Unit!89879)

(assert (=> b!4482580 (= e!2791865 Unit!89892)))

(assert (= (and d!1372020 c!763553) b!4482579))

(assert (= (and d!1372020 (not c!763553)) b!4482577))

(assert (= (and b!4482579 c!763552) b!4482578))

(assert (= (and b!4482579 (not c!763552)) b!4482575))

(assert (= (and b!4482579 c!763554) b!4482574))

(assert (= (and b!4482579 (not c!763554)) b!4482580))

(assert (= (and d!1372020 res!1861329) b!4482573))

(assert (= (and b!4482573 res!1861330) b!4482572))

(assert (= (and b!4482572 res!1861328) b!4482576))

(declare-fun m!5203007 () Bool)

(assert (=> b!4482574 m!5203007))

(assert (=> b!4482574 m!5203007))

(declare-fun m!5203009 () Bool)

(assert (=> b!4482574 m!5203009))

(declare-fun m!5203011 () Bool)

(assert (=> b!4482573 m!5203011))

(assert (=> b!4482573 m!5202997))

(declare-fun m!5203013 () Bool)

(assert (=> d!1372020 m!5203013))

(declare-fun m!5203015 () Bool)

(assert (=> d!1372020 m!5203015))

(declare-fun m!5203017 () Bool)

(assert (=> b!4482579 m!5203017))

(declare-fun m!5203019 () Bool)

(assert (=> b!4482579 m!5203019))

(declare-fun m!5203021 () Bool)

(assert (=> b!4482579 m!5203021))

(assert (=> b!4482579 m!5203007))

(assert (=> b!4482579 m!5203007))

(declare-fun m!5203023 () Bool)

(assert (=> b!4482579 m!5203023))

(declare-fun m!5203025 () Bool)

(assert (=> b!4482576 m!5203025))

(declare-fun m!5203027 () Bool)

(assert (=> b!4482576 m!5203027))

(assert (=> b!4482576 m!5203027))

(declare-fun m!5203029 () Bool)

(assert (=> b!4482576 m!5203029))

(declare-fun m!5203031 () Bool)

(assert (=> b!4482572 m!5203031))

(assert (=> b!4482429 d!1372020))

(declare-fun d!1372022 () Bool)

(declare-fun res!1861331 () Bool)

(declare-fun e!2791867 () Bool)

(assert (=> d!1372022 (=> res!1861331 e!2791867)))

(assert (=> d!1372022 (= res!1861331 (not (is-Cons!50396 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))

(assert (=> d!1372022 (= (noDuplicateKeys!1067 (_2!28646 (h!56186 (toList!4141 lm!1477)))) e!2791867)))

(declare-fun b!4482583 () Bool)

(declare-fun e!2791868 () Bool)

(assert (=> b!4482583 (= e!2791867 e!2791868)))

(declare-fun res!1861332 () Bool)

(assert (=> b!4482583 (=> (not res!1861332) (not e!2791868))))

(assert (=> b!4482583 (= res!1861332 (not (containsKey!1561 (t!357474 (_2!28646 (h!56186 (toList!4141 lm!1477)))) (_1!28645 (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))))

(declare-fun b!4482584 () Bool)

(assert (=> b!4482584 (= e!2791868 (noDuplicateKeys!1067 (t!357474 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))

(assert (= (and d!1372022 (not res!1861331)) b!4482583))

(assert (= (and b!4482583 res!1861332) b!4482584))

(declare-fun m!5203033 () Bool)

(assert (=> b!4482583 m!5203033))

(declare-fun m!5203035 () Bool)

(assert (=> b!4482584 m!5203035))

(assert (=> bs!825463 d!1372022))

(declare-fun d!1372024 () Bool)

(declare-fun choose!28793 (Hashable!5462 K!11808) (_ BitVec 64))

(assert (=> d!1372024 (= (hash!2568 hashF!1107 key!3287) (choose!28793 hashF!1107 key!3287))))

(declare-fun bs!825483 () Bool)

(assert (= bs!825483 d!1372024))

(declare-fun m!5203037 () Bool)

(assert (=> bs!825483 m!5203037))

(assert (=> d!1371970 d!1372024))

(declare-fun d!1372026 () Bool)

(declare-fun noDuplicatedKeys!220 (List!50520) Bool)

(assert (=> d!1372026 (= (invariantList!952 (toList!4142 lt!1669115)) (noDuplicatedKeys!220 (toList!4142 lt!1669115)))))

(declare-fun bs!825484 () Bool)

(assert (= bs!825484 d!1372026))

(declare-fun m!5203039 () Bool)

(assert (=> bs!825484 m!5203039))

(assert (=> d!1371982 d!1372026))

(declare-fun d!1372028 () Bool)

(declare-fun res!1861333 () Bool)

(declare-fun e!2791869 () Bool)

(assert (=> d!1372028 (=> res!1861333 e!2791869)))

(assert (=> d!1372028 (= res!1861333 (is-Nil!50397 (toList!4141 lm!1477)))))

(assert (=> d!1372028 (= (forall!10065 (toList!4141 lm!1477) lambda!165685) e!2791869)))

(declare-fun b!4482585 () Bool)

(declare-fun e!2791870 () Bool)

(assert (=> b!4482585 (= e!2791869 e!2791870)))

(declare-fun res!1861334 () Bool)

(assert (=> b!4482585 (=> (not res!1861334) (not e!2791870))))

(assert (=> b!4482585 (= res!1861334 (dynLambda!21049 lambda!165685 (h!56186 (toList!4141 lm!1477))))))

(declare-fun b!4482586 () Bool)

(assert (=> b!4482586 (= e!2791870 (forall!10065 (t!357475 (toList!4141 lm!1477)) lambda!165685))))

(assert (= (and d!1372028 (not res!1861333)) b!4482585))

(assert (= (and b!4482585 res!1861334) b!4482586))

(declare-fun b_lambda!150371 () Bool)

(assert (=> (not b_lambda!150371) (not b!4482585)))

(declare-fun m!5203041 () Bool)

(assert (=> b!4482585 m!5203041))

(declare-fun m!5203043 () Bool)

(assert (=> b!4482586 m!5203043))

(assert (=> d!1371982 d!1372028))

(declare-fun d!1372030 () Bool)

(declare-fun res!1861339 () Bool)

(declare-fun e!2791875 () Bool)

(assert (=> d!1372030 (=> res!1861339 e!2791875)))

(assert (=> d!1372030 (= res!1861339 (and (is-Cons!50396 (t!357474 newBucket!178)) (= (_1!28645 (h!56185 (t!357474 newBucket!178))) (_1!28645 (h!56185 newBucket!178)))))))

(assert (=> d!1372030 (= (containsKey!1561 (t!357474 newBucket!178) (_1!28645 (h!56185 newBucket!178))) e!2791875)))

(declare-fun b!4482591 () Bool)

(declare-fun e!2791876 () Bool)

(assert (=> b!4482591 (= e!2791875 e!2791876)))

(declare-fun res!1861340 () Bool)

(assert (=> b!4482591 (=> (not res!1861340) (not e!2791876))))

(assert (=> b!4482591 (= res!1861340 (is-Cons!50396 (t!357474 newBucket!178)))))

(declare-fun b!4482592 () Bool)

(assert (=> b!4482592 (= e!2791876 (containsKey!1561 (t!357474 (t!357474 newBucket!178)) (_1!28645 (h!56185 newBucket!178))))))

(assert (= (and d!1372030 (not res!1861339)) b!4482591))

(assert (= (and b!4482591 res!1861340) b!4482592))

(declare-fun m!5203045 () Bool)

(assert (=> b!4482592 m!5203045))

(assert (=> b!4482349 d!1372030))

(declare-fun d!1372032 () Bool)

(declare-fun res!1861341 () Bool)

(declare-fun e!2791877 () Bool)

(assert (=> d!1372032 (=> res!1861341 e!2791877)))

(assert (=> d!1372032 (= res!1861341 (not (is-Cons!50396 (t!357474 newBucket!178))))))

(assert (=> d!1372032 (= (noDuplicateKeys!1067 (t!357474 newBucket!178)) e!2791877)))

(declare-fun b!4482593 () Bool)

(declare-fun e!2791878 () Bool)

(assert (=> b!4482593 (= e!2791877 e!2791878)))

(declare-fun res!1861342 () Bool)

(assert (=> b!4482593 (=> (not res!1861342) (not e!2791878))))

(assert (=> b!4482593 (= res!1861342 (not (containsKey!1561 (t!357474 (t!357474 newBucket!178)) (_1!28645 (h!56185 (t!357474 newBucket!178))))))))

(declare-fun b!4482594 () Bool)

(assert (=> b!4482594 (= e!2791878 (noDuplicateKeys!1067 (t!357474 (t!357474 newBucket!178))))))

(assert (= (and d!1372032 (not res!1861341)) b!4482593))

(assert (= (and b!4482593 res!1861342) b!4482594))

(declare-fun m!5203047 () Bool)

(assert (=> b!4482593 m!5203047))

(declare-fun m!5203049 () Bool)

(assert (=> b!4482594 m!5203049))

(assert (=> b!4482350 d!1372032))

(declare-fun d!1372034 () Bool)

(assert (=> d!1372034 (= (get!16445 (getValueByKey!962 (toList!4141 lm!1477) hash!344)) (v!44359 (getValueByKey!962 (toList!4141 lm!1477) hash!344)))))

(assert (=> d!1371966 d!1372034))

(declare-fun d!1372036 () Bool)

(declare-fun c!763559 () Bool)

(assert (=> d!1372036 (= c!763559 (and (is-Cons!50397 (toList!4141 lm!1477)) (= (_1!28646 (h!56186 (toList!4141 lm!1477))) hash!344)))))

(declare-fun e!2791883 () Option!10976)

(assert (=> d!1372036 (= (getValueByKey!962 (toList!4141 lm!1477) hash!344) e!2791883)))

(declare-fun b!4482605 () Bool)

(declare-fun e!2791884 () Option!10976)

(assert (=> b!4482605 (= e!2791884 (getValueByKey!962 (t!357475 (toList!4141 lm!1477)) hash!344))))

(declare-fun b!4482604 () Bool)

(assert (=> b!4482604 (= e!2791883 e!2791884)))

(declare-fun c!763560 () Bool)

(assert (=> b!4482604 (= c!763560 (and (is-Cons!50397 (toList!4141 lm!1477)) (not (= (_1!28646 (h!56186 (toList!4141 lm!1477))) hash!344))))))

(declare-fun b!4482606 () Bool)

(assert (=> b!4482606 (= e!2791884 None!10975)))

(declare-fun b!4482603 () Bool)

(assert (=> b!4482603 (= e!2791883 (Some!10975 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))

(assert (= (and d!1372036 c!763559) b!4482603))

(assert (= (and d!1372036 (not c!763559)) b!4482604))

(assert (= (and b!4482604 c!763560) b!4482605))

(assert (= (and b!4482604 (not c!763560)) b!4482606))

(declare-fun m!5203051 () Bool)

(assert (=> b!4482605 m!5203051))

(assert (=> d!1371966 d!1372036))

(declare-fun d!1372038 () Bool)

(assert (=> d!1372038 (isDefined!8263 (getValueByKey!962 (toList!4141 lm!1477) lt!1669013))))

(declare-fun lt!1669172 () Unit!89879)

(declare-fun choose!28794 (List!50521 (_ BitVec 64)) Unit!89879)

(assert (=> d!1372038 (= lt!1669172 (choose!28794 (toList!4141 lm!1477) lt!1669013))))

(declare-fun e!2791887 () Bool)

(assert (=> d!1372038 e!2791887))

(declare-fun res!1861345 () Bool)

(assert (=> d!1372038 (=> (not res!1861345) (not e!2791887))))

(assert (=> d!1372038 (= res!1861345 (isStrictlySorted!366 (toList!4141 lm!1477)))))

(assert (=> d!1372038 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!866 (toList!4141 lm!1477) lt!1669013) lt!1669172)))

(declare-fun b!4482609 () Bool)

(assert (=> b!4482609 (= e!2791887 (containsKey!1562 (toList!4141 lm!1477) lt!1669013))))

(assert (= (and d!1372038 res!1861345) b!4482609))

(assert (=> d!1372038 m!5202843))

(assert (=> d!1372038 m!5202843))

(assert (=> d!1372038 m!5202845))

(declare-fun m!5203053 () Bool)

(assert (=> d!1372038 m!5203053))

(assert (=> d!1372038 m!5202823))

(assert (=> b!4482609 m!5202839))

(assert (=> b!4482374 d!1372038))

(declare-fun d!1372040 () Bool)

(declare-fun isEmpty!28515 (Option!10976) Bool)

(assert (=> d!1372040 (= (isDefined!8263 (getValueByKey!962 (toList!4141 lm!1477) lt!1669013)) (not (isEmpty!28515 (getValueByKey!962 (toList!4141 lm!1477) lt!1669013))))))

(declare-fun bs!825485 () Bool)

(assert (= bs!825485 d!1372040))

(assert (=> bs!825485 m!5202843))

(declare-fun m!5203055 () Bool)

(assert (=> bs!825485 m!5203055))

(assert (=> b!4482374 d!1372040))

(declare-fun d!1372042 () Bool)

(declare-fun c!763561 () Bool)

(assert (=> d!1372042 (= c!763561 (and (is-Cons!50397 (toList!4141 lm!1477)) (= (_1!28646 (h!56186 (toList!4141 lm!1477))) lt!1669013)))))

(declare-fun e!2791888 () Option!10976)

(assert (=> d!1372042 (= (getValueByKey!962 (toList!4141 lm!1477) lt!1669013) e!2791888)))

(declare-fun b!4482612 () Bool)

(declare-fun e!2791889 () Option!10976)

(assert (=> b!4482612 (= e!2791889 (getValueByKey!962 (t!357475 (toList!4141 lm!1477)) lt!1669013))))

(declare-fun b!4482611 () Bool)

(assert (=> b!4482611 (= e!2791888 e!2791889)))

(declare-fun c!763562 () Bool)

(assert (=> b!4482611 (= c!763562 (and (is-Cons!50397 (toList!4141 lm!1477)) (not (= (_1!28646 (h!56186 (toList!4141 lm!1477))) lt!1669013))))))

(declare-fun b!4482613 () Bool)

(assert (=> b!4482613 (= e!2791889 None!10975)))

(declare-fun b!4482610 () Bool)

(assert (=> b!4482610 (= e!2791888 (Some!10975 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))

(assert (= (and d!1372042 c!763561) b!4482610))

(assert (= (and d!1372042 (not c!763561)) b!4482611))

(assert (= (and b!4482611 c!763562) b!4482612))

(assert (= (and b!4482611 (not c!763562)) b!4482613))

(declare-fun m!5203057 () Bool)

(assert (=> b!4482612 m!5203057))

(assert (=> b!4482374 d!1372042))

(declare-fun d!1372044 () Bool)

(declare-fun res!1861350 () Bool)

(declare-fun e!2791894 () Bool)

(assert (=> d!1372044 (=> res!1861350 e!2791894)))

(assert (=> d!1372044 (= res!1861350 (is-Nil!50396 newBucket!178))))

(assert (=> d!1372044 (= (forall!10067 newBucket!178 lambda!165688) e!2791894)))

(declare-fun b!4482618 () Bool)

(declare-fun e!2791895 () Bool)

(assert (=> b!4482618 (= e!2791894 e!2791895)))

(declare-fun res!1861351 () Bool)

(assert (=> b!4482618 (=> (not res!1861351) (not e!2791895))))

(declare-fun dynLambda!21051 (Int tuple2!50702) Bool)

(assert (=> b!4482618 (= res!1861351 (dynLambda!21051 lambda!165688 (h!56185 newBucket!178)))))

(declare-fun b!4482619 () Bool)

(assert (=> b!4482619 (= e!2791895 (forall!10067 (t!357474 newBucket!178) lambda!165688))))

(assert (= (and d!1372044 (not res!1861350)) b!4482618))

(assert (= (and b!4482618 res!1861351) b!4482619))

(declare-fun b_lambda!150373 () Bool)

(assert (=> (not b_lambda!150373) (not b!4482618)))

(declare-fun m!5203059 () Bool)

(assert (=> b!4482618 m!5203059))

(declare-fun m!5203061 () Bool)

(assert (=> b!4482619 m!5203061))

(assert (=> d!1371990 d!1372044))

(assert (=> b!4482376 d!1372040))

(assert (=> b!4482376 d!1372042))

(declare-fun d!1372046 () Bool)

(declare-fun res!1861356 () Bool)

(declare-fun e!2791900 () Bool)

(assert (=> d!1372046 (=> res!1861356 e!2791900)))

(assert (=> d!1372046 (= res!1861356 (and (is-Cons!50396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) (= (_1!28645 (h!56185 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))) key!3287)))))

(assert (=> d!1372046 (= (containsKey!1563 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287) e!2791900)))

(declare-fun b!4482624 () Bool)

(declare-fun e!2791901 () Bool)

(assert (=> b!4482624 (= e!2791900 e!2791901)))

(declare-fun res!1861357 () Bool)

(assert (=> b!4482624 (=> (not res!1861357) (not e!2791901))))

(assert (=> b!4482624 (= res!1861357 (is-Cons!50396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))))))

(declare-fun b!4482625 () Bool)

(assert (=> b!4482625 (= e!2791901 (containsKey!1563 (t!357474 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) key!3287))))

(assert (= (and d!1372046 (not res!1861356)) b!4482624))

(assert (= (and b!4482624 res!1861357) b!4482625))

(declare-fun m!5203063 () Bool)

(assert (=> b!4482625 m!5203063))

(assert (=> d!1371978 d!1372046))

(declare-fun d!1372048 () Bool)

(declare-fun lt!1669173 () Bool)

(assert (=> d!1372048 (= lt!1669173 (set.member lt!1669014 (content!8176 (t!357475 (toList!4141 lm!1477)))))))

(declare-fun e!2791902 () Bool)

(assert (=> d!1372048 (= lt!1669173 e!2791902)))

(declare-fun res!1861359 () Bool)

(assert (=> d!1372048 (=> (not res!1861359) (not e!2791902))))

(assert (=> d!1372048 (= res!1861359 (is-Cons!50397 (t!357475 (toList!4141 lm!1477))))))

(assert (=> d!1372048 (= (contains!12997 (t!357475 (toList!4141 lm!1477)) lt!1669014) lt!1669173)))

(declare-fun b!4482626 () Bool)

(declare-fun e!2791903 () Bool)

(assert (=> b!4482626 (= e!2791902 e!2791903)))

(declare-fun res!1861358 () Bool)

(assert (=> b!4482626 (=> res!1861358 e!2791903)))

(assert (=> b!4482626 (= res!1861358 (= (h!56186 (t!357475 (toList!4141 lm!1477))) lt!1669014))))

(declare-fun b!4482627 () Bool)

(assert (=> b!4482627 (= e!2791903 (contains!12997 (t!357475 (t!357475 (toList!4141 lm!1477))) lt!1669014))))

(assert (= (and d!1372048 res!1861359) b!4482626))

(assert (= (and b!4482626 (not res!1861358)) b!4482627))

(declare-fun m!5203065 () Bool)

(assert (=> d!1372048 m!5203065))

(declare-fun m!5203067 () Bool)

(assert (=> d!1372048 m!5203067))

(declare-fun m!5203069 () Bool)

(assert (=> b!4482627 m!5203069))

(assert (=> b!4482385 d!1372048))

(assert (=> b!4482355 d!1372036))

(declare-fun bs!825490 () Bool)

(declare-fun b!4482692 () Bool)

(assert (= bs!825490 (and b!4482692 d!1371990)))

(declare-fun lambda!165750 () Int)

(assert (=> bs!825490 (not (= lambda!165750 lambda!165688))))

(assert (=> b!4482692 true))

(declare-fun bs!825491 () Bool)

(declare-fun b!4482693 () Bool)

(assert (= bs!825491 (and b!4482693 d!1371990)))

(declare-fun lambda!165751 () Int)

(assert (=> bs!825491 (not (= lambda!165751 lambda!165688))))

(declare-fun bs!825492 () Bool)

(assert (= bs!825492 (and b!4482693 b!4482692)))

(assert (=> bs!825492 (= lambda!165751 lambda!165750)))

(assert (=> b!4482693 true))

(declare-fun lambda!165752 () Int)

(assert (=> bs!825491 (not (= lambda!165752 lambda!165688))))

(declare-fun lt!1669244 () ListMap!3403)

(assert (=> bs!825492 (= (= lt!1669244 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) (= lambda!165752 lambda!165750))))

(assert (=> b!4482693 (= (= lt!1669244 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) (= lambda!165752 lambda!165751))))

(assert (=> b!4482693 true))

(declare-fun bs!825493 () Bool)

(declare-fun d!1372050 () Bool)

(assert (= bs!825493 (and d!1372050 d!1371990)))

(declare-fun lambda!165753 () Int)

(assert (=> bs!825493 (not (= lambda!165753 lambda!165688))))

(declare-fun bs!825494 () Bool)

(assert (= bs!825494 (and d!1372050 b!4482692)))

(declare-fun lt!1669245 () ListMap!3403)

(assert (=> bs!825494 (= (= lt!1669245 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) (= lambda!165753 lambda!165750))))

(declare-fun bs!825495 () Bool)

(assert (= bs!825495 (and d!1372050 b!4482693)))

(assert (=> bs!825495 (= (= lt!1669245 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) (= lambda!165753 lambda!165751))))

(assert (=> bs!825495 (= (= lt!1669245 lt!1669244) (= lambda!165753 lambda!165752))))

(assert (=> d!1372050 true))

(declare-fun bm!312115 () Bool)

(declare-fun call!312120 () Unit!89879)

(declare-fun lemmaContainsAllItsOwnKeys!283 (ListMap!3403) Unit!89879)

(assert (=> bm!312115 (= call!312120 (lemmaContainsAllItsOwnKeys!283 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))))))

(declare-fun b!4482691 () Bool)

(declare-fun e!2791943 () Bool)

(assert (=> b!4482691 (= e!2791943 (forall!10067 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) lambda!165752))))

(declare-fun call!312122 () Bool)

(declare-fun bm!312116 () Bool)

(declare-fun c!763577 () Bool)

(declare-fun lt!1669240 () ListMap!3403)

(assert (=> bm!312116 (= call!312122 (forall!10067 (ite c!763577 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) (toList!4142 lt!1669240)) (ite c!763577 lambda!165750 lambda!165752)))))

(declare-fun bm!312117 () Bool)

(declare-fun call!312121 () Bool)

(assert (=> bm!312117 (= call!312121 (forall!10067 (ite c!763577 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) (toList!4142 lt!1669240)) (ite c!763577 lambda!165750 lambda!165752)))))

(declare-fun e!2791944 () ListMap!3403)

(assert (=> b!4482692 (= e!2791944 (extractMap!1123 (t!357475 (toList!4141 lm!1477))))))

(declare-fun lt!1669228 () Unit!89879)

(assert (=> b!4482692 (= lt!1669228 call!312120)))

(assert (=> b!4482692 call!312121))

(declare-fun lt!1669246 () Unit!89879)

(assert (=> b!4482692 (= lt!1669246 lt!1669228)))

(assert (=> b!4482692 call!312122))

(declare-fun lt!1669242 () Unit!89879)

(declare-fun Unit!89893 () Unit!89879)

(assert (=> b!4482692 (= lt!1669242 Unit!89893)))

(assert (=> b!4482693 (= e!2791944 lt!1669244)))

(declare-fun +!1425 (ListMap!3403 tuple2!50702) ListMap!3403)

(assert (=> b!4482693 (= lt!1669240 (+!1425 (extractMap!1123 (t!357475 (toList!4141 lm!1477))) (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))

(assert (=> b!4482693 (= lt!1669244 (addToMapMapFromBucket!620 (t!357474 (_2!28646 (h!56186 (toList!4141 lm!1477)))) (+!1425 (extractMap!1123 (t!357475 (toList!4141 lm!1477))) (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))))

(declare-fun lt!1669239 () Unit!89879)

(assert (=> b!4482693 (= lt!1669239 call!312120)))

(assert (=> b!4482693 (forall!10067 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) lambda!165751)))

(declare-fun lt!1669230 () Unit!89879)

(assert (=> b!4482693 (= lt!1669230 lt!1669239)))

(assert (=> b!4482693 call!312121))

(declare-fun lt!1669233 () Unit!89879)

(declare-fun Unit!89894 () Unit!89879)

(assert (=> b!4482693 (= lt!1669233 Unit!89894)))

(assert (=> b!4482693 (forall!10067 (t!357474 (_2!28646 (h!56186 (toList!4141 lm!1477)))) lambda!165752)))

(declare-fun lt!1669238 () Unit!89879)

(declare-fun Unit!89895 () Unit!89879)

(assert (=> b!4482693 (= lt!1669238 Unit!89895)))

(declare-fun lt!1669236 () Unit!89879)

(declare-fun Unit!89896 () Unit!89879)

(assert (=> b!4482693 (= lt!1669236 Unit!89896)))

(declare-fun lt!1669227 () Unit!89879)

(declare-fun forallContained!2329 (List!50520 Int tuple2!50702) Unit!89879)

(assert (=> b!4482693 (= lt!1669227 (forallContained!2329 (toList!4142 lt!1669240) lambda!165752 (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))

(assert (=> b!4482693 (contains!12996 lt!1669240 (_1!28645 (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))

(declare-fun lt!1669247 () Unit!89879)

(declare-fun Unit!89897 () Unit!89879)

(assert (=> b!4482693 (= lt!1669247 Unit!89897)))

(assert (=> b!4482693 (contains!12996 lt!1669244 (_1!28645 (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477))))))))

(declare-fun lt!1669237 () Unit!89879)

(declare-fun Unit!89898 () Unit!89879)

(assert (=> b!4482693 (= lt!1669237 Unit!89898)))

(assert (=> b!4482693 (forall!10067 (_2!28646 (h!56186 (toList!4141 lm!1477))) lambda!165752)))

(declare-fun lt!1669241 () Unit!89879)

(declare-fun Unit!89899 () Unit!89879)

(assert (=> b!4482693 (= lt!1669241 Unit!89899)))

(assert (=> b!4482693 call!312122))

(declare-fun lt!1669243 () Unit!89879)

(declare-fun Unit!89900 () Unit!89879)

(assert (=> b!4482693 (= lt!1669243 Unit!89900)))

(declare-fun lt!1669232 () Unit!89879)

(declare-fun Unit!89901 () Unit!89879)

(assert (=> b!4482693 (= lt!1669232 Unit!89901)))

(declare-fun lt!1669234 () Unit!89879)

(declare-fun addForallContainsKeyThenBeforeAdding!283 (ListMap!3403 ListMap!3403 K!11808 V!12054) Unit!89879)

(assert (=> b!4482693 (= lt!1669234 (addForallContainsKeyThenBeforeAdding!283 (extractMap!1123 (t!357475 (toList!4141 lm!1477))) lt!1669244 (_1!28645 (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477))))) (_2!28645 (h!56185 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))))

(assert (=> b!4482693 (forall!10067 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) lambda!165752)))

(declare-fun lt!1669231 () Unit!89879)

(assert (=> b!4482693 (= lt!1669231 lt!1669234)))

(assert (=> b!4482693 (forall!10067 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) lambda!165752)))

(declare-fun lt!1669235 () Unit!89879)

(declare-fun Unit!89902 () Unit!89879)

(assert (=> b!4482693 (= lt!1669235 Unit!89902)))

(declare-fun res!1861393 () Bool)

(assert (=> b!4482693 (= res!1861393 (forall!10067 (_2!28646 (h!56186 (toList!4141 lm!1477))) lambda!165752))))

(assert (=> b!4482693 (=> (not res!1861393) (not e!2791943))))

(assert (=> b!4482693 e!2791943))

(declare-fun lt!1669229 () Unit!89879)

(declare-fun Unit!89903 () Unit!89879)

(assert (=> b!4482693 (= lt!1669229 Unit!89903)))

(declare-fun b!4482694 () Bool)

(declare-fun res!1861392 () Bool)

(declare-fun e!2791942 () Bool)

(assert (=> b!4482694 (=> (not res!1861392) (not e!2791942))))

(assert (=> b!4482694 (= res!1861392 (forall!10067 (toList!4142 (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) lambda!165753))))

(assert (=> d!1372050 e!2791942))

(declare-fun res!1861394 () Bool)

(assert (=> d!1372050 (=> (not res!1861394) (not e!2791942))))

(assert (=> d!1372050 (= res!1861394 (forall!10067 (_2!28646 (h!56186 (toList!4141 lm!1477))) lambda!165753))))

(assert (=> d!1372050 (= lt!1669245 e!2791944)))

(assert (=> d!1372050 (= c!763577 (is-Nil!50396 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))

(assert (=> d!1372050 (noDuplicateKeys!1067 (_2!28646 (h!56186 (toList!4141 lm!1477))))))

(assert (=> d!1372050 (= (addToMapMapFromBucket!620 (_2!28646 (h!56186 (toList!4141 lm!1477))) (extractMap!1123 (t!357475 (toList!4141 lm!1477)))) lt!1669245)))

(declare-fun b!4482690 () Bool)

(assert (=> b!4482690 (= e!2791942 (invariantList!952 (toList!4142 lt!1669245)))))

(assert (= (and d!1372050 c!763577) b!4482692))

(assert (= (and d!1372050 (not c!763577)) b!4482693))

(assert (= (and b!4482693 res!1861393) b!4482691))

(assert (= (or b!4482692 b!4482693) bm!312117))

(assert (= (or b!4482692 b!4482693) bm!312116))

(assert (= (or b!4482692 b!4482693) bm!312115))

(assert (= (and d!1372050 res!1861394) b!4482694))

(assert (= (and b!4482694 res!1861392) b!4482690))

(declare-fun m!5203135 () Bool)

(assert (=> b!4482691 m!5203135))

(assert (=> b!4482693 m!5202925))

(declare-fun m!5203137 () Bool)

(assert (=> b!4482693 m!5203137))

(declare-fun m!5203139 () Bool)

(assert (=> b!4482693 m!5203139))

(declare-fun m!5203141 () Bool)

(assert (=> b!4482693 m!5203141))

(declare-fun m!5203143 () Bool)

(assert (=> b!4482693 m!5203143))

(declare-fun m!5203145 () Bool)

(assert (=> b!4482693 m!5203145))

(declare-fun m!5203147 () Bool)

(assert (=> b!4482693 m!5203147))

(declare-fun m!5203149 () Bool)

(assert (=> b!4482693 m!5203149))

(declare-fun m!5203151 () Bool)

(assert (=> b!4482693 m!5203151))

(assert (=> b!4482693 m!5202925))

(assert (=> b!4482693 m!5203141))

(assert (=> b!4482693 m!5203135))

(declare-fun m!5203153 () Bool)

(assert (=> b!4482693 m!5203153))

(assert (=> b!4482693 m!5203147))

(assert (=> b!4482693 m!5203135))

(assert (=> bm!312115 m!5202925))

(declare-fun m!5203155 () Bool)

(assert (=> bm!312115 m!5203155))

(declare-fun m!5203157 () Bool)

(assert (=> b!4482694 m!5203157))

(declare-fun m!5203159 () Bool)

(assert (=> d!1372050 m!5203159))

(assert (=> d!1372050 m!5202933))

(declare-fun m!5203161 () Bool)

(assert (=> bm!312117 m!5203161))

(assert (=> bm!312116 m!5203161))

(declare-fun m!5203163 () Bool)

(assert (=> b!4482690 m!5203163))

(assert (=> b!4482452 d!1372050))

(declare-fun bs!825496 () Bool)

(declare-fun d!1372084 () Bool)

(assert (= bs!825496 (and d!1372084 start!440994)))

(declare-fun lambda!165754 () Int)

(assert (=> bs!825496 (= lambda!165754 lambda!165668)))

(declare-fun bs!825497 () Bool)

(assert (= bs!825497 (and d!1372084 d!1371956)))

(assert (=> bs!825497 (= lambda!165754 lambda!165679)))

(declare-fun bs!825498 () Bool)

(assert (= bs!825498 (and d!1372084 d!1371968)))

(assert (=> bs!825498 (not (= lambda!165754 lambda!165682))))

(declare-fun bs!825499 () Bool)

(assert (= bs!825499 (and d!1372084 d!1371982)))

(assert (=> bs!825499 (= lambda!165754 lambda!165685)))

(declare-fun lt!1669248 () ListMap!3403)

(assert (=> d!1372084 (invariantList!952 (toList!4142 lt!1669248))))

(declare-fun e!2791945 () ListMap!3403)

(assert (=> d!1372084 (= lt!1669248 e!2791945)))

(declare-fun c!763578 () Bool)

(assert (=> d!1372084 (= c!763578 (is-Cons!50397 (t!357475 (toList!4141 lm!1477))))))

(assert (=> d!1372084 (forall!10065 (t!357475 (toList!4141 lm!1477)) lambda!165754)))

(assert (=> d!1372084 (= (extractMap!1123 (t!357475 (toList!4141 lm!1477))) lt!1669248)))

(declare-fun b!4482697 () Bool)

(assert (=> b!4482697 (= e!2791945 (addToMapMapFromBucket!620 (_2!28646 (h!56186 (t!357475 (toList!4141 lm!1477)))) (extractMap!1123 (t!357475 (t!357475 (toList!4141 lm!1477))))))))

(declare-fun b!4482698 () Bool)

(assert (=> b!4482698 (= e!2791945 (ListMap!3404 Nil!50396))))

(assert (= (and d!1372084 c!763578) b!4482697))

(assert (= (and d!1372084 (not c!763578)) b!4482698))

(declare-fun m!5203165 () Bool)

(assert (=> d!1372084 m!5203165))

(declare-fun m!5203167 () Bool)

(assert (=> d!1372084 m!5203167))

(declare-fun m!5203169 () Bool)

(assert (=> b!4482697 m!5203169))

(assert (=> b!4482697 m!5203169))

(declare-fun m!5203171 () Bool)

(assert (=> b!4482697 m!5203171))

(assert (=> b!4482452 d!1372084))

(declare-fun b!4482700 () Bool)

(declare-fun e!2791946 () List!50520)

(declare-fun e!2791947 () List!50520)

(assert (=> b!4482700 (= e!2791946 e!2791947)))

(declare-fun c!763580 () Bool)

(assert (=> b!4482700 (= c!763580 (is-Cons!50396 (t!357474 lt!1669015)))))

(declare-fun b!4482701 () Bool)

(assert (=> b!4482701 (= e!2791947 (Cons!50396 (h!56185 (t!357474 lt!1669015)) (removePairForKey!694 (t!357474 (t!357474 lt!1669015)) key!3287)))))

(declare-fun d!1372086 () Bool)

(declare-fun lt!1669249 () List!50520)

(assert (=> d!1372086 (not (containsKey!1561 lt!1669249 key!3287))))

(assert (=> d!1372086 (= lt!1669249 e!2791946)))

(declare-fun c!763579 () Bool)

(assert (=> d!1372086 (= c!763579 (and (is-Cons!50396 (t!357474 lt!1669015)) (= (_1!28645 (h!56185 (t!357474 lt!1669015))) key!3287)))))

(assert (=> d!1372086 (noDuplicateKeys!1067 (t!357474 lt!1669015))))

(assert (=> d!1372086 (= (removePairForKey!694 (t!357474 lt!1669015) key!3287) lt!1669249)))

(declare-fun b!4482702 () Bool)

(assert (=> b!4482702 (= e!2791947 Nil!50396)))

(declare-fun b!4482699 () Bool)

(assert (=> b!4482699 (= e!2791946 (t!357474 (t!357474 lt!1669015)))))

(assert (= (and d!1372086 c!763579) b!4482699))

(assert (= (and d!1372086 (not c!763579)) b!4482700))

(assert (= (and b!4482700 c!763580) b!4482701))

(assert (= (and b!4482700 (not c!763580)) b!4482702))

(declare-fun m!5203173 () Bool)

(assert (=> b!4482701 m!5203173))

(declare-fun m!5203175 () Bool)

(assert (=> d!1372086 m!5203175))

(declare-fun m!5203177 () Bool)

(assert (=> d!1372086 m!5203177))

(assert (=> b!4482366 d!1372086))

(assert (=> b!4482388 d!1371958))

(assert (=> b!4482435 d!1372018))

(declare-fun d!1372088 () Bool)

(declare-fun res!1861399 () Bool)

(declare-fun e!2791952 () Bool)

(assert (=> d!1372088 (=> res!1861399 e!2791952)))

(assert (=> d!1372088 (= res!1861399 (or (is-Nil!50397 (toList!4141 lm!1477)) (is-Nil!50397 (t!357475 (toList!4141 lm!1477)))))))

(assert (=> d!1372088 (= (isStrictlySorted!366 (toList!4141 lm!1477)) e!2791952)))

(declare-fun b!4482707 () Bool)

(declare-fun e!2791953 () Bool)

(assert (=> b!4482707 (= e!2791952 e!2791953)))

(declare-fun res!1861400 () Bool)

(assert (=> b!4482707 (=> (not res!1861400) (not e!2791953))))

(assert (=> b!4482707 (= res!1861400 (bvslt (_1!28646 (h!56186 (toList!4141 lm!1477))) (_1!28646 (h!56186 (t!357475 (toList!4141 lm!1477))))))))

(declare-fun b!4482708 () Bool)

(assert (=> b!4482708 (= e!2791953 (isStrictlySorted!366 (t!357475 (toList!4141 lm!1477))))))

(assert (= (and d!1372088 (not res!1861399)) b!4482707))

(assert (= (and b!4482707 res!1861400) b!4482708))

(declare-fun m!5203179 () Bool)

(assert (=> b!4482708 m!5203179))

(assert (=> d!1371976 d!1372088))

(declare-fun d!1372090 () Bool)

(declare-fun c!763583 () Bool)

(assert (=> d!1372090 (= c!763583 (is-Nil!50397 (toList!4141 lm!1477)))))

(declare-fun e!2791956 () (Set tuple2!50704))

(assert (=> d!1372090 (= (content!8176 (toList!4141 lm!1477)) e!2791956)))

(declare-fun b!4482713 () Bool)

(assert (=> b!4482713 (= e!2791956 (as set.empty (Set tuple2!50704)))))

(declare-fun b!4482714 () Bool)

(assert (=> b!4482714 (= e!2791956 (set.union (set.insert (h!56186 (toList!4141 lm!1477)) (as set.empty (Set tuple2!50704))) (content!8176 (t!357475 (toList!4141 lm!1477)))))))

(assert (= (and d!1372090 c!763583) b!4482713))

(assert (= (and d!1372090 (not c!763583)) b!4482714))

(declare-fun m!5203181 () Bool)

(assert (=> b!4482714 m!5203181))

(assert (=> b!4482714 m!5203065))

(assert (=> d!1371958 d!1372090))

(declare-fun d!1372092 () Bool)

(assert (=> d!1372092 (= (isEmpty!28512 (toList!4141 lm!1477)) (is-Nil!50397 (toList!4141 lm!1477)))))

(assert (=> d!1371988 d!1372092))

(declare-fun d!1372094 () Bool)

(assert (=> d!1372094 (dynLambda!21049 lambda!165668 lt!1669014)))

(assert (=> d!1372094 true))

(declare-fun _$7!1711 () Unit!89879)

(assert (=> d!1372094 (= (choose!28789 (toList!4141 lm!1477) lambda!165668 lt!1669014) _$7!1711)))

(declare-fun b_lambda!150385 () Bool)

(assert (=> (not b_lambda!150385) (not d!1372094)))

(declare-fun bs!825500 () Bool)

(assert (= bs!825500 d!1372094))

(assert (=> bs!825500 m!5202867))

(assert (=> d!1371962 d!1372094))

(assert (=> d!1371962 d!1371972))

(assert (=> b!4482432 d!1372016))

(assert (=> b!4482432 d!1372018))

(declare-fun d!1372096 () Bool)

(declare-fun res!1861405 () Bool)

(declare-fun e!2791961 () Bool)

(assert (=> d!1372096 (=> res!1861405 e!2791961)))

(assert (=> d!1372096 (= res!1861405 (and (is-Cons!50397 (toList!4141 lm!1477)) (= (_1!28646 (h!56186 (toList!4141 lm!1477))) lt!1669013)))))

(assert (=> d!1372096 (= (containsKey!1562 (toList!4141 lm!1477) lt!1669013) e!2791961)))

(declare-fun b!4482719 () Bool)

(declare-fun e!2791962 () Bool)

(assert (=> b!4482719 (= e!2791961 e!2791962)))

(declare-fun res!1861406 () Bool)

(assert (=> b!4482719 (=> (not res!1861406) (not e!2791962))))

(assert (=> b!4482719 (= res!1861406 (and (or (not (is-Cons!50397 (toList!4141 lm!1477))) (bvsle (_1!28646 (h!56186 (toList!4141 lm!1477))) lt!1669013)) (is-Cons!50397 (toList!4141 lm!1477)) (bvslt (_1!28646 (h!56186 (toList!4141 lm!1477))) lt!1669013)))))

(declare-fun b!4482720 () Bool)

(assert (=> b!4482720 (= e!2791962 (containsKey!1562 (t!357475 (toList!4141 lm!1477)) lt!1669013))))

(assert (= (and d!1372096 (not res!1861405)) b!4482719))

(assert (= (and b!4482719 res!1861406) b!4482720))

(declare-fun m!5203183 () Bool)

(assert (=> b!4482720 m!5203183))

(assert (=> d!1371952 d!1372096))

(declare-fun d!1372098 () Bool)

(declare-fun e!2791963 () Bool)

(assert (=> d!1372098 e!2791963))

(declare-fun res!1861407 () Bool)

(assert (=> d!1372098 (=> res!1861407 e!2791963)))

(declare-fun lt!1669253 () Bool)

(assert (=> d!1372098 (= res!1861407 (not lt!1669253))))

(declare-fun lt!1669251 () Bool)

(assert (=> d!1372098 (= lt!1669253 lt!1669251)))

(declare-fun lt!1669250 () Unit!89879)

(declare-fun e!2791964 () Unit!89879)

(assert (=> d!1372098 (= lt!1669250 e!2791964)))

(declare-fun c!763584 () Bool)

(assert (=> d!1372098 (= c!763584 lt!1669251)))

(assert (=> d!1372098 (= lt!1669251 (containsKey!1562 (toList!4141 lm!1477) (hash!2566 hashF!1107 key!3287)))))

(assert (=> d!1372098 (= (contains!12998 lm!1477 (hash!2566 hashF!1107 key!3287)) lt!1669253)))

(declare-fun b!4482721 () Bool)

(declare-fun lt!1669252 () Unit!89879)

(assert (=> b!4482721 (= e!2791964 lt!1669252)))

(assert (=> b!4482721 (= lt!1669252 (lemmaContainsKeyImpliesGetValueByKeyDefined!866 (toList!4141 lm!1477) (hash!2566 hashF!1107 key!3287)))))

(assert (=> b!4482721 (isDefined!8263 (getValueByKey!962 (toList!4141 lm!1477) (hash!2566 hashF!1107 key!3287)))))

(declare-fun b!4482722 () Bool)

(declare-fun Unit!89905 () Unit!89879)

(assert (=> b!4482722 (= e!2791964 Unit!89905)))

(declare-fun b!4482723 () Bool)

(assert (=> b!4482723 (= e!2791963 (isDefined!8263 (getValueByKey!962 (toList!4141 lm!1477) (hash!2566 hashF!1107 key!3287))))))

(assert (= (and d!1372098 c!763584) b!4482721))

(assert (= (and d!1372098 (not c!763584)) b!4482722))

(assert (= (and d!1372098 (not res!1861407)) b!4482723))

(assert (=> d!1372098 m!5202739))

(declare-fun m!5203185 () Bool)

(assert (=> d!1372098 m!5203185))

(assert (=> b!4482721 m!5202739))

(declare-fun m!5203187 () Bool)

(assert (=> b!4482721 m!5203187))

(assert (=> b!4482721 m!5202739))

(declare-fun m!5203189 () Bool)

(assert (=> b!4482721 m!5203189))

(assert (=> b!4482721 m!5203189))

(declare-fun m!5203191 () Bool)

(assert (=> b!4482721 m!5203191))

(assert (=> b!4482723 m!5202739))

(assert (=> b!4482723 m!5203189))

(assert (=> b!4482723 m!5203189))

(assert (=> b!4482723 m!5203191))

(assert (=> d!1371956 d!1372098))

(assert (=> d!1371956 d!1371970))

(declare-fun d!1372100 () Bool)

(assert (=> d!1372100 (contains!12998 lm!1477 (hash!2566 hashF!1107 key!3287))))

(assert (=> d!1372100 true))

(declare-fun _$27!1110 () Unit!89879)

(assert (=> d!1372100 (= (choose!28788 lm!1477 key!3287 hashF!1107) _$27!1110)))

(declare-fun bs!825501 () Bool)

(assert (= bs!825501 d!1372100))

(assert (=> bs!825501 m!5202739))

(assert (=> bs!825501 m!5202739))

(assert (=> bs!825501 m!5202847))

(assert (=> d!1371956 d!1372100))

(declare-fun d!1372102 () Bool)

(declare-fun res!1861408 () Bool)

(declare-fun e!2791965 () Bool)

(assert (=> d!1372102 (=> res!1861408 e!2791965)))

(assert (=> d!1372102 (= res!1861408 (is-Nil!50397 (toList!4141 lm!1477)))))

(assert (=> d!1372102 (= (forall!10065 (toList!4141 lm!1477) lambda!165679) e!2791965)))

(declare-fun b!4482724 () Bool)

(declare-fun e!2791966 () Bool)

(assert (=> b!4482724 (= e!2791965 e!2791966)))

(declare-fun res!1861409 () Bool)

(assert (=> b!4482724 (=> (not res!1861409) (not e!2791966))))

(assert (=> b!4482724 (= res!1861409 (dynLambda!21049 lambda!165679 (h!56186 (toList!4141 lm!1477))))))

(declare-fun b!4482725 () Bool)

(assert (=> b!4482725 (= e!2791966 (forall!10065 (t!357475 (toList!4141 lm!1477)) lambda!165679))))

(assert (= (and d!1372102 (not res!1861408)) b!4482724))

(assert (= (and b!4482724 res!1861409) b!4482725))

(declare-fun b_lambda!150387 () Bool)

(assert (=> (not b_lambda!150387) (not b!4482724)))

(declare-fun m!5203193 () Bool)

(assert (=> b!4482724 m!5203193))

(declare-fun m!5203195 () Bool)

(assert (=> b!4482725 m!5203195))

(assert (=> d!1371956 d!1372102))

(assert (=> b!4482433 d!1372046))

(declare-fun d!1372104 () Bool)

(assert (=> d!1372104 (containsKey!1563 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287)))

(declare-fun lt!1669256 () Unit!89879)

(declare-fun choose!28795 (List!50520 K!11808) Unit!89879)

(assert (=> d!1372104 (= lt!1669256 (choose!28795 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(assert (=> d!1372104 (invariantList!952 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))

(assert (=> d!1372104 (= (lemmaInGetKeysListThenContainsKey!399 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287) lt!1669256)))

(declare-fun bs!825502 () Bool)

(assert (= bs!825502 d!1372104))

(assert (=> bs!825502 m!5202903))

(declare-fun m!5203197 () Bool)

(assert (=> bs!825502 m!5203197))

(assert (=> bs!825502 m!5203015))

(assert (=> b!4482433 d!1372104))

(declare-fun d!1372106 () Bool)

(declare-fun res!1861410 () Bool)

(declare-fun e!2791967 () Bool)

(assert (=> d!1372106 (=> res!1861410 e!2791967)))

(assert (=> d!1372106 (= res!1861410 (not (is-Cons!50396 (_2!28646 lt!1669014))))))

(assert (=> d!1372106 (= (noDuplicateKeys!1067 (_2!28646 lt!1669014)) e!2791967)))

(declare-fun b!4482726 () Bool)

(declare-fun e!2791968 () Bool)

(assert (=> b!4482726 (= e!2791967 e!2791968)))

(declare-fun res!1861411 () Bool)

(assert (=> b!4482726 (=> (not res!1861411) (not e!2791968))))

(assert (=> b!4482726 (= res!1861411 (not (containsKey!1561 (t!357474 (_2!28646 lt!1669014)) (_1!28645 (h!56185 (_2!28646 lt!1669014))))))))

(declare-fun b!4482727 () Bool)

(assert (=> b!4482727 (= e!2791968 (noDuplicateKeys!1067 (t!357474 (_2!28646 lt!1669014))))))

(assert (= (and d!1372106 (not res!1861410)) b!4482726))

(assert (= (and b!4482726 res!1861411) b!4482727))

(declare-fun m!5203199 () Bool)

(assert (=> b!4482726 m!5203199))

(declare-fun m!5203201 () Bool)

(assert (=> b!4482727 m!5203201))

(assert (=> bs!825464 d!1372106))

(declare-fun d!1372108 () Bool)

(declare-fun lt!1669257 () Bool)

(assert (=> d!1372108 (= lt!1669257 (set.member (tuple2!50705 hash!344 lt!1669015) (content!8176 (toList!4141 lm!1477))))))

(declare-fun e!2791969 () Bool)

(assert (=> d!1372108 (= lt!1669257 e!2791969)))

(declare-fun res!1861413 () Bool)

(assert (=> d!1372108 (=> (not res!1861413) (not e!2791969))))

(assert (=> d!1372108 (= res!1861413 (is-Cons!50397 (toList!4141 lm!1477)))))

(assert (=> d!1372108 (= (contains!12997 (toList!4141 lm!1477) (tuple2!50705 hash!344 lt!1669015)) lt!1669257)))

(declare-fun b!4482728 () Bool)

(declare-fun e!2791970 () Bool)

(assert (=> b!4482728 (= e!2791969 e!2791970)))

(declare-fun res!1861412 () Bool)

(assert (=> b!4482728 (=> res!1861412 e!2791970)))

(assert (=> b!4482728 (= res!1861412 (= (h!56186 (toList!4141 lm!1477)) (tuple2!50705 hash!344 lt!1669015)))))

(declare-fun b!4482729 () Bool)

(assert (=> b!4482729 (= e!2791970 (contains!12997 (t!357475 (toList!4141 lm!1477)) (tuple2!50705 hash!344 lt!1669015)))))

(assert (= (and d!1372108 res!1861413) b!4482728))

(assert (= (and b!4482728 (not res!1861412)) b!4482729))

(assert (=> d!1372108 m!5202857))

(declare-fun m!5203203 () Bool)

(assert (=> d!1372108 m!5203203))

(declare-fun m!5203205 () Bool)

(assert (=> b!4482729 m!5203205))

(assert (=> d!1371946 d!1372108))

(declare-fun d!1372110 () Bool)

(assert (=> d!1372110 (contains!12997 (toList!4141 lm!1477) (tuple2!50705 hash!344 lt!1669015))))

(assert (=> d!1372110 true))

(declare-fun _$14!1015 () Unit!89879)

(assert (=> d!1372110 (= (choose!28787 (toList!4141 lm!1477) hash!344 lt!1669015) _$14!1015)))

(declare-fun bs!825503 () Bool)

(assert (= bs!825503 d!1372110))

(assert (=> bs!825503 m!5202819))

(assert (=> d!1371946 d!1372110))

(assert (=> d!1371946 d!1372088))

(declare-fun d!1372112 () Bool)

(declare-fun res!1861414 () Bool)

(declare-fun e!2791971 () Bool)

(assert (=> d!1372112 (=> res!1861414 e!2791971)))

(assert (=> d!1372112 (= res!1861414 (is-Nil!50397 (toList!4141 lm!1477)))))

(assert (=> d!1372112 (= (forall!10065 (toList!4141 lm!1477) lambda!165682) e!2791971)))

(declare-fun b!4482730 () Bool)

(declare-fun e!2791972 () Bool)

(assert (=> b!4482730 (= e!2791971 e!2791972)))

(declare-fun res!1861415 () Bool)

(assert (=> b!4482730 (=> (not res!1861415) (not e!2791972))))

(assert (=> b!4482730 (= res!1861415 (dynLambda!21049 lambda!165682 (h!56186 (toList!4141 lm!1477))))))

(declare-fun b!4482731 () Bool)

(assert (=> b!4482731 (= e!2791972 (forall!10065 (t!357475 (toList!4141 lm!1477)) lambda!165682))))

(assert (= (and d!1372112 (not res!1861414)) b!4482730))

(assert (= (and b!4482730 res!1861415) b!4482731))

(declare-fun b_lambda!150389 () Bool)

(assert (=> (not b_lambda!150389) (not b!4482730)))

(declare-fun m!5203207 () Bool)

(assert (=> b!4482730 m!5203207))

(declare-fun m!5203209 () Bool)

(assert (=> b!4482731 m!5203209))

(assert (=> d!1371968 d!1372112))

(declare-fun d!1372114 () Bool)

(assert (=> d!1372114 (isDefined!8264 (getValueByKey!963 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(declare-fun lt!1669260 () Unit!89879)

(declare-fun choose!28797 (List!50520 K!11808) Unit!89879)

(assert (=> d!1372114 (= lt!1669260 (choose!28797 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(assert (=> d!1372114 (invariantList!952 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))

(assert (=> d!1372114 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!867 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287) lt!1669260)))

(declare-fun bs!825504 () Bool)

(assert (= bs!825504 d!1372114))

(assert (=> bs!825504 m!5202897))

(assert (=> bs!825504 m!5202897))

(assert (=> bs!825504 m!5202899))

(declare-fun m!5203211 () Bool)

(assert (=> bs!825504 m!5203211))

(assert (=> bs!825504 m!5203015))

(assert (=> b!4482431 d!1372114))

(assert (=> b!4482431 d!1372010))

(assert (=> b!4482431 d!1372012))

(declare-fun d!1372116 () Bool)

(assert (=> d!1372116 (contains!13002 (getKeysList!400 (toList!4142 (extractMap!1123 (toList!4141 lm!1477)))) key!3287)))

(declare-fun lt!1669263 () Unit!89879)

(declare-fun choose!28798 (List!50520 K!11808) Unit!89879)

(assert (=> d!1372116 (= lt!1669263 (choose!28798 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287))))

(assert (=> d!1372116 (invariantList!952 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))))))

(assert (=> d!1372116 (= (lemmaInListThenGetKeysListContains!396 (toList!4142 (extractMap!1123 (toList!4141 lm!1477))) key!3287) lt!1669263)))

(declare-fun bs!825505 () Bool)

(assert (= bs!825505 d!1372116))

(assert (=> bs!825505 m!5202901))

(assert (=> bs!825505 m!5202901))

(declare-fun m!5203213 () Bool)

(assert (=> bs!825505 m!5203213))

(declare-fun m!5203215 () Bool)

(assert (=> bs!825505 m!5203215))

(assert (=> bs!825505 m!5203015))

(assert (=> b!4482431 d!1372116))

(declare-fun d!1372118 () Bool)

(declare-fun res!1861416 () Bool)

(declare-fun e!2791973 () Bool)

(assert (=> d!1372118 (=> res!1861416 e!2791973)))

(assert (=> d!1372118 (= res!1861416 (and (is-Cons!50396 lt!1669043) (= (_1!28645 (h!56185 lt!1669043)) key!3287)))))

(assert (=> d!1372118 (= (containsKey!1561 lt!1669043 key!3287) e!2791973)))

(declare-fun b!4482732 () Bool)

(declare-fun e!2791974 () Bool)

(assert (=> b!4482732 (= e!2791973 e!2791974)))

(declare-fun res!1861417 () Bool)

(assert (=> b!4482732 (=> (not res!1861417) (not e!2791974))))

(assert (=> b!4482732 (= res!1861417 (is-Cons!50396 lt!1669043))))

(declare-fun b!4482733 () Bool)

(assert (=> b!4482733 (= e!2791974 (containsKey!1561 (t!357474 lt!1669043) key!3287))))

(assert (= (and d!1372118 (not res!1861416)) b!4482732))

(assert (= (and b!4482732 res!1861417) b!4482733))

(declare-fun m!5203217 () Bool)

(assert (=> b!4482733 m!5203217))

(assert (=> d!1371950 d!1372118))

(declare-fun d!1372120 () Bool)

(declare-fun res!1861418 () Bool)

(declare-fun e!2791975 () Bool)

(assert (=> d!1372120 (=> res!1861418 e!2791975)))

(assert (=> d!1372120 (= res!1861418 (not (is-Cons!50396 lt!1669015)))))

(assert (=> d!1372120 (= (noDuplicateKeys!1067 lt!1669015) e!2791975)))

(declare-fun b!4482734 () Bool)

(declare-fun e!2791976 () Bool)

(assert (=> b!4482734 (= e!2791975 e!2791976)))

(declare-fun res!1861419 () Bool)

(assert (=> b!4482734 (=> (not res!1861419) (not e!2791976))))

(assert (=> b!4482734 (= res!1861419 (not (containsKey!1561 (t!357474 lt!1669015) (_1!28645 (h!56185 lt!1669015)))))))

(declare-fun b!4482735 () Bool)

(assert (=> b!4482735 (= e!2791976 (noDuplicateKeys!1067 (t!357474 lt!1669015)))))

(assert (= (and d!1372120 (not res!1861418)) b!4482734))

(assert (= (and b!4482734 res!1861419) b!4482735))

(declare-fun m!5203219 () Bool)

(assert (=> b!4482734 m!5203219))

(assert (=> b!4482735 m!5203177))

(assert (=> d!1371950 d!1372120))

(declare-fun d!1372122 () Bool)

(declare-fun lt!1669264 () Bool)

(assert (=> d!1372122 (= lt!1669264 (set.member key!3287 (content!8178 e!2791789)))))

(declare-fun e!2791978 () Bool)

(assert (=> d!1372122 (= lt!1669264 e!2791978)))

(declare-fun res!1861420 () Bool)

(assert (=> d!1372122 (=> (not res!1861420) (not e!2791978))))

(assert (=> d!1372122 (= res!1861420 (is-Cons!50400 e!2791789))))

(assert (=> d!1372122 (= (contains!13002 e!2791789 key!3287) lt!1669264)))

(declare-fun b!4482736 () Bool)

(declare-fun e!2791977 () Bool)

(assert (=> b!4482736 (= e!2791978 e!2791977)))

(declare-fun res!1861421 () Bool)

(assert (=> b!4482736 (=> res!1861421 e!2791977)))

(assert (=> b!4482736 (= res!1861421 (= (h!56190 e!2791789) key!3287))))

(declare-fun b!4482737 () Bool)

(assert (=> b!4482737 (= e!2791977 (contains!13002 (t!357478 e!2791789) key!3287))))

(assert (= (and d!1372122 res!1861420) b!4482736))

(assert (= (and b!4482736 (not res!1861421)) b!4482737))

(declare-fun m!5203221 () Bool)

(assert (=> d!1372122 m!5203221))

(declare-fun m!5203223 () Bool)

(assert (=> d!1372122 m!5203223))

(declare-fun m!5203225 () Bool)

(assert (=> b!4482737 m!5203225))

(assert (=> bm!312105 d!1372122))

(declare-fun e!2791979 () Bool)

(declare-fun tp!1336784 () Bool)

(declare-fun b!4482738 () Bool)

(assert (=> b!4482738 (= e!2791979 (and tp_is_empty!27545 tp_is_empty!27547 tp!1336784))))

(assert (=> b!4482467 (= tp!1336773 e!2791979)))

(assert (= (and b!4482467 (is-Cons!50396 (_2!28646 (h!56186 (toList!4141 lm!1477))))) b!4482738))

(declare-fun b!4482739 () Bool)

(declare-fun e!2791980 () Bool)

(declare-fun tp!1336785 () Bool)

(declare-fun tp!1336786 () Bool)

(assert (=> b!4482739 (= e!2791980 (and tp!1336785 tp!1336786))))

(assert (=> b!4482467 (= tp!1336774 e!2791980)))

(assert (= (and b!4482467 (is-Cons!50397 (t!357475 (toList!4141 lm!1477)))) b!4482739))

(declare-fun tp!1336787 () Bool)

(declare-fun b!4482740 () Bool)

(declare-fun e!2791981 () Bool)

(assert (=> b!4482740 (= e!2791981 (and tp_is_empty!27545 tp_is_empty!27547 tp!1336787))))

(assert (=> b!4482462 (= tp!1336768 e!2791981)))

(assert (= (and b!4482462 (is-Cons!50396 (t!357474 (t!357474 newBucket!178)))) b!4482740))

(declare-fun b_lambda!150391 () Bool)

(assert (= b_lambda!150371 (or d!1371982 b_lambda!150391)))

(declare-fun bs!825506 () Bool)

(declare-fun d!1372124 () Bool)

(assert (= bs!825506 (and d!1372124 d!1371982)))

(assert (=> bs!825506 (= (dynLambda!21049 lambda!165685 (h!56186 (toList!4141 lm!1477))) (noDuplicateKeys!1067 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))

(assert (=> bs!825506 m!5202933))

(assert (=> b!4482585 d!1372124))

(declare-fun b_lambda!150393 () Bool)

(assert (= b_lambda!150373 (or d!1371990 b_lambda!150393)))

(declare-fun bs!825507 () Bool)

(declare-fun d!1372126 () Bool)

(assert (= bs!825507 (and d!1372126 d!1371990)))

(assert (=> bs!825507 (= (dynLambda!21051 lambda!165688 (h!56185 newBucket!178)) (= (hash!2566 hashF!1107 (_1!28645 (h!56185 newBucket!178))) hash!344))))

(declare-fun m!5203227 () Bool)

(assert (=> bs!825507 m!5203227))

(assert (=> b!4482618 d!1372126))

(declare-fun b_lambda!150395 () Bool)

(assert (= b_lambda!150389 (or d!1371968 b_lambda!150395)))

(declare-fun bs!825508 () Bool)

(declare-fun d!1372128 () Bool)

(assert (= bs!825508 (and d!1372128 d!1371968)))

(assert (=> bs!825508 (= (dynLambda!21049 lambda!165682 (h!56186 (toList!4141 lm!1477))) (allKeysSameHash!921 (_2!28646 (h!56186 (toList!4141 lm!1477))) (_1!28646 (h!56186 (toList!4141 lm!1477))) hashF!1107))))

(declare-fun m!5203229 () Bool)

(assert (=> bs!825508 m!5203229))

(assert (=> b!4482730 d!1372128))

(declare-fun b_lambda!150397 () Bool)

(assert (= b_lambda!150385 (or start!440994 b_lambda!150397)))

(assert (=> d!1372094 d!1371994))

(declare-fun b_lambda!150399 () Bool)

(assert (= b_lambda!150387 (or d!1371956 b_lambda!150399)))

(declare-fun bs!825509 () Bool)

(declare-fun d!1372130 () Bool)

(assert (= bs!825509 (and d!1372130 d!1371956)))

(assert (=> bs!825509 (= (dynLambda!21049 lambda!165679 (h!56186 (toList!4141 lm!1477))) (noDuplicateKeys!1067 (_2!28646 (h!56186 (toList!4141 lm!1477)))))))

(assert (=> bs!825509 m!5202933))

(assert (=> b!4482724 d!1372130))

(declare-fun b_lambda!150401 () Bool)

(assert (= b_lambda!150369 (or start!440994 b_lambda!150401)))

(declare-fun bs!825510 () Bool)

(declare-fun d!1372132 () Bool)

(assert (= bs!825510 (and d!1372132 start!440994)))

(assert (=> bs!825510 (= (dynLambda!21049 lambda!165668 (h!56186 (t!357475 (toList!4141 lm!1477)))) (noDuplicateKeys!1067 (_2!28646 (h!56186 (t!357475 (toList!4141 lm!1477))))))))

(declare-fun m!5203231 () Bool)

(assert (=> bs!825510 m!5203231))

(assert (=> b!4482535 d!1372132))

(push 1)

(assert (not d!1372040))

(assert (not b!4482584))

(assert (not d!1372018))

(assert (not b!4482594))

(assert (not b!4482720))

(assert (not b!4482551))

(assert (not b!4482542))

(assert (not bs!825506))

(assert (not b!4482579))

(assert (not bs!825510))

(assert (not b!4482609))

(assert (not b!4482731))

(assert (not b!4482723))

(assert (not b!4482708))

(assert (not d!1372048))

(assert (not d!1372010))

(assert (not b!4482726))

(assert tp_is_empty!27547)

(assert (not b_lambda!150363))

(assert (not b!4482729))

(assert (not d!1372016))

(assert (not bm!312116))

(assert (not b!4482612))

(assert (not d!1372108))

(assert (not d!1372086))

(assert (not d!1372122))

(assert (not bs!825509))

(assert (not d!1372026))

(assert (not b!4482725))

(assert (not b!4482697))

(assert (not d!1372020))

(assert (not b!4482693))

(assert (not b!4482690))

(assert (not b!4482738))

(assert (not d!1372050))

(assert (not b!4482549))

(assert (not b!4482727))

(assert (not d!1372038))

(assert (not b!4482536))

(assert (not d!1372104))

(assert (not b!4482625))

(assert (not b!4482574))

(assert (not d!1372098))

(assert (not b!4482735))

(assert (not b_lambda!150399))

(assert (not bs!825508))

(assert (not b!4482737))

(assert (not b!4482627))

(assert (not b!4482694))

(assert (not d!1372084))

(assert (not b!4482733))

(assert (not b!4482583))

(assert (not b!4482533))

(assert tp_is_empty!27545)

(assert (not b!4482592))

(assert (not bs!825507))

(assert (not b_lambda!150395))

(assert (not bm!312117))

(assert (not b!4482740))

(assert (not d!1372116))

(assert (not bm!312115))

(assert (not b!4482734))

(assert (not d!1372100))

(assert (not b!4482691))

(assert (not b!4482586))

(assert (not b!4482721))

(assert (not b!4482572))

(assert (not b!4482701))

(assert (not d!1372114))

(assert (not b!4482573))

(assert (not b!4482714))

(assert (not b_lambda!150391))

(assert (not b_lambda!150401))

(assert (not d!1372024))

(assert (not b!4482605))

(assert (not b!4482550))

(assert (not b!4482576))

(assert (not d!1372110))

(assert (not b_lambda!150393))

(assert (not b!4482739))

(assert (not b_lambda!150361))

(assert (not b!4482619))

(assert (not b_lambda!150397))

(assert (not b!4482593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

