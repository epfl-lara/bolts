; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!439492 () Bool)

(assert start!439492)

(declare-fun b!4471304 () Bool)

(declare-fun e!2784342 () Bool)

(declare-fun e!2784341 () Bool)

(assert (=> b!4471304 (= e!2784342 e!2784341)))

(declare-fun res!1855235 () Bool)

(assert (=> b!4471304 (=> res!1855235 e!2784341)))

(declare-datatypes ((K!11720 0))(
  ( (K!11721 (val!17647 Int)) )
))
(declare-datatypes ((V!11966 0))(
  ( (V!11967 (val!17648 Int)) )
))
(declare-datatypes ((tuple2!50562 0))(
  ( (tuple2!50563 (_1!28575 K!11720) (_2!28575 V!11966)) )
))
(declare-datatypes ((List!50430 0))(
  ( (Nil!50306) (Cons!50306 (h!56075 tuple2!50562) (t!357380 List!50430)) )
))
(declare-datatypes ((tuple2!50564 0))(
  ( (tuple2!50565 (_1!28576 (_ BitVec 64)) (_2!28576 List!50430)) )
))
(declare-datatypes ((List!50431 0))(
  ( (Nil!50307) (Cons!50307 (h!56076 tuple2!50564) (t!357381 List!50431)) )
))
(declare-fun lt!1659700 () List!50431)

(declare-fun key!3287 () K!11720)

(declare-fun containsKeyBiggerList!32 (List!50431 K!11720) Bool)

(assert (=> b!4471304 (= res!1855235 (not (containsKeyBiggerList!32 lt!1659700 key!3287)))))

(declare-datatypes ((ListLongMap!2703 0))(
  ( (ListLongMap!2704 (toList!4071 List!50431)) )
))
(declare-fun lm!1477 () ListLongMap!2703)

(assert (=> b!4471304 (= lt!1659700 (Cons!50307 (h!56076 (toList!4071 lm!1477)) Nil!50307))))

(declare-fun b!4471305 () Bool)

(declare-fun res!1855226 () Bool)

(declare-fun e!2784334 () Bool)

(assert (=> b!4471305 (=> res!1855226 e!2784334)))

(declare-fun newBucket!178 () List!50430)

(declare-fun noDuplicateKeys!1032 (List!50430) Bool)

(assert (=> b!4471305 (= res!1855226 (not (noDuplicateKeys!1032 newBucket!178)))))

(declare-fun b!4471306 () Bool)

(declare-fun res!1855224 () Bool)

(declare-fun e!2784333 () Bool)

(assert (=> b!4471306 (=> res!1855224 e!2784333)))

(declare-fun lt!1659693 () ListLongMap!2703)

(declare-fun lambda!163631 () Int)

(declare-fun forall!10006 (List!50431 Int) Bool)

(assert (=> b!4471306 (= res!1855224 (not (forall!10006 (toList!4071 lt!1659693) lambda!163631)))))

(declare-fun b!4471307 () Bool)

(assert (=> b!4471307 (= e!2784334 e!2784342)))

(declare-fun res!1855237 () Bool)

(assert (=> b!4471307 (=> res!1855237 e!2784342)))

(declare-fun lt!1659706 () Bool)

(assert (=> b!4471307 (= res!1855237 lt!1659706)))

(declare-datatypes ((Unit!88015 0))(
  ( (Unit!88016) )
))
(declare-fun lt!1659701 () Unit!88015)

(declare-fun e!2784343 () Unit!88015)

(assert (=> b!4471307 (= lt!1659701 e!2784343)))

(declare-fun c!761290 () Bool)

(assert (=> b!4471307 (= c!761290 lt!1659706)))

(declare-fun containsKey!1488 (List!50430 K!11720) Bool)

(assert (=> b!4471307 (= lt!1659706 (not (containsKey!1488 (_2!28576 (h!56076 (toList!4071 lm!1477))) key!3287)))))

(declare-fun b!4471308 () Bool)

(declare-fun res!1855228 () Bool)

(declare-fun e!2784340 () Bool)

(assert (=> b!4471308 (=> (not res!1855228) (not e!2784340))))

(declare-datatypes ((ListMap!3333 0))(
  ( (ListMap!3334 (toList!4072 List!50430)) )
))
(declare-fun contains!12867 (ListMap!3333 K!11720) Bool)

(declare-fun extractMap!1088 (List!50431) ListMap!3333)

(assert (=> b!4471308 (= res!1855228 (contains!12867 (extractMap!1088 (toList!4071 lm!1477)) key!3287))))

(declare-fun b!4471309 () Bool)

(declare-fun Unit!88017 () Unit!88015)

(assert (=> b!4471309 (= e!2784343 Unit!88017)))

(declare-datatypes ((Hashable!5427 0))(
  ( (HashableExt!5426 (__x!31130 Int)) )
))
(declare-fun hashF!1107 () Hashable!5427)

(declare-fun lt!1659699 () Unit!88015)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!32 (ListLongMap!2703 K!11720 Hashable!5427) Unit!88015)

(assert (=> b!4471309 (= lt!1659699 (lemmaNotInItsHashBucketThenNotInMap!32 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4471309 false))

(declare-fun b!4471310 () Bool)

(assert (=> b!4471310 (= e!2784333 true)))

(declare-fun b!4471311 () Bool)

(declare-fun res!1855232 () Bool)

(declare-fun e!2784339 () Bool)

(assert (=> b!4471311 (=> (not res!1855232) (not e!2784339))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!886 (List!50430 (_ BitVec 64) Hashable!5427) Bool)

(assert (=> b!4471311 (= res!1855232 (allKeysSameHash!886 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4471313 () Bool)

(declare-fun res!1855233 () Bool)

(assert (=> b!4471313 (=> res!1855233 e!2784334)))

(get-info :version)

(assert (=> b!4471313 (= res!1855233 (or ((_ is Nil!50307) (toList!4071 lm!1477)) (not (= (_1!28576 (h!56076 (toList!4071 lm!1477))) hash!344))))))

(declare-fun b!4471314 () Bool)

(declare-fun e!2784338 () Bool)

(declare-fun e!2784336 () Bool)

(assert (=> b!4471314 (= e!2784338 e!2784336)))

(declare-fun res!1855230 () Bool)

(assert (=> b!4471314 (=> res!1855230 e!2784336)))

(declare-fun lt!1659698 () tuple2!50564)

(declare-fun lt!1659705 () ListLongMap!2703)

(declare-fun +!1378 (ListLongMap!2703 tuple2!50564) ListLongMap!2703)

(assert (=> b!4471314 (= res!1855230 (not (= lt!1659705 (+!1378 lt!1659693 lt!1659698))))))

(declare-fun tail!7516 (ListLongMap!2703) ListLongMap!2703)

(assert (=> b!4471314 (= lt!1659693 (tail!7516 lm!1477))))

(declare-fun b!4471315 () Bool)

(declare-fun res!1855225 () Bool)

(assert (=> b!4471315 (=> (not res!1855225) (not e!2784340))))

(declare-fun allKeysSameHashInMap!1139 (ListLongMap!2703 Hashable!5427) Bool)

(assert (=> b!4471315 (= res!1855225 (allKeysSameHashInMap!1139 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!27407 () Bool)

(declare-fun b!4471316 () Bool)

(declare-fun tp!1336343 () Bool)

(declare-fun e!2784337 () Bool)

(declare-fun tp_is_empty!27405 () Bool)

(assert (=> b!4471316 (= e!2784337 (and tp_is_empty!27405 tp_is_empty!27407 tp!1336343))))

(declare-fun b!4471317 () Bool)

(assert (=> b!4471317 (= e!2784341 e!2784338)))

(declare-fun res!1855234 () Bool)

(assert (=> b!4471317 (=> res!1855234 e!2784338)))

(declare-fun tail!7517 (List!50431) List!50431)

(assert (=> b!4471317 (= res!1855234 (not (= (t!357381 (toList!4071 lm!1477)) (tail!7517 (toList!4071 lt!1659705)))))))

(assert (=> b!4471317 (= lt!1659705 (+!1378 lm!1477 lt!1659698))))

(declare-fun eq!525 (ListMap!3333 ListMap!3333) Bool)

(declare-fun -!294 (ListMap!3333 K!11720) ListMap!3333)

(assert (=> b!4471317 (eq!525 (extractMap!1088 (Cons!50307 lt!1659698 Nil!50307)) (-!294 (extractMap!1088 (Cons!50307 (tuple2!50565 hash!344 (_2!28576 (h!56076 (toList!4071 lm!1477)))) Nil!50307)) key!3287))))

(assert (=> b!4471317 (= lt!1659698 (tuple2!50565 hash!344 newBucket!178))))

(declare-fun lt!1659708 () Unit!88015)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!24 ((_ BitVec 64) List!50430 List!50430 K!11720 Hashable!5427) Unit!88015)

(assert (=> b!4471317 (= lt!1659708 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!24 hash!344 (_2!28576 (h!56076 (toList!4071 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4471317 (contains!12867 (extractMap!1088 lt!1659700) key!3287)))

(declare-fun lt!1659696 () Unit!88015)

(declare-fun lemmaListContainsThenExtractedMapContains!28 (ListLongMap!2703 K!11720 Hashable!5427) Unit!88015)

(assert (=> b!4471317 (= lt!1659696 (lemmaListContainsThenExtractedMapContains!28 (ListLongMap!2704 lt!1659700) key!3287 hashF!1107))))

(declare-fun b!4471318 () Bool)

(assert (=> b!4471318 (= e!2784340 e!2784339)))

(declare-fun res!1855223 () Bool)

(assert (=> b!4471318 (=> (not res!1855223) (not e!2784339))))

(declare-fun lt!1659695 () (_ BitVec 64))

(assert (=> b!4471318 (= res!1855223 (= lt!1659695 hash!344))))

(declare-fun hash!2469 (Hashable!5427 K!11720) (_ BitVec 64))

(assert (=> b!4471318 (= lt!1659695 (hash!2469 hashF!1107 key!3287))))

(declare-fun b!4471319 () Bool)

(declare-fun e!2784335 () Bool)

(declare-fun tp!1336342 () Bool)

(assert (=> b!4471319 (= e!2784335 tp!1336342)))

(declare-fun b!4471320 () Bool)

(declare-fun res!1855227 () Bool)

(assert (=> b!4471320 (=> res!1855227 e!2784333)))

(declare-fun lt!1659703 () ListMap!3333)

(assert (=> b!4471320 (= res!1855227 (not (contains!12867 lt!1659703 key!3287)))))

(declare-fun res!1855231 () Bool)

(assert (=> start!439492 (=> (not res!1855231) (not e!2784340))))

(assert (=> start!439492 (= res!1855231 (forall!10006 (toList!4071 lm!1477) lambda!163631))))

(assert (=> start!439492 e!2784340))

(assert (=> start!439492 true))

(declare-fun inv!65904 (ListLongMap!2703) Bool)

(assert (=> start!439492 (and (inv!65904 lm!1477) e!2784335)))

(assert (=> start!439492 tp_is_empty!27405))

(assert (=> start!439492 e!2784337))

(declare-fun b!4471312 () Bool)

(assert (=> b!4471312 (= e!2784339 (not e!2784334))))

(declare-fun res!1855229 () Bool)

(assert (=> b!4471312 (=> res!1855229 e!2784334)))

(declare-fun lt!1659697 () List!50430)

(declare-fun removePairForKey!659 (List!50430 K!11720) List!50430)

(assert (=> b!4471312 (= res!1855229 (not (= newBucket!178 (removePairForKey!659 lt!1659697 key!3287))))))

(declare-fun lt!1659707 () tuple2!50564)

(declare-fun lt!1659704 () Unit!88015)

(declare-fun forallContained!2273 (List!50431 Int tuple2!50564) Unit!88015)

(assert (=> b!4471312 (= lt!1659704 (forallContained!2273 (toList!4071 lm!1477) lambda!163631 lt!1659707))))

(declare-fun contains!12868 (List!50431 tuple2!50564) Bool)

(assert (=> b!4471312 (contains!12868 (toList!4071 lm!1477) lt!1659707)))

(assert (=> b!4471312 (= lt!1659707 (tuple2!50565 hash!344 lt!1659697))))

(declare-fun lt!1659694 () Unit!88015)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!544 (List!50431 (_ BitVec 64) List!50430) Unit!88015)

(assert (=> b!4471312 (= lt!1659694 (lemmaGetValueByKeyImpliesContainsTuple!544 (toList!4071 lm!1477) hash!344 lt!1659697))))

(declare-fun apply!11769 (ListLongMap!2703 (_ BitVec 64)) List!50430)

(assert (=> b!4471312 (= lt!1659697 (apply!11769 lm!1477 hash!344))))

(declare-fun contains!12869 (ListLongMap!2703 (_ BitVec 64)) Bool)

(assert (=> b!4471312 (contains!12869 lm!1477 lt!1659695)))

(declare-fun lt!1659702 () Unit!88015)

(declare-fun lemmaInGenMapThenLongMapContainsHash!106 (ListLongMap!2703 K!11720 Hashable!5427) Unit!88015)

(assert (=> b!4471312 (= lt!1659702 (lemmaInGenMapThenLongMapContainsHash!106 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4471321 () Bool)

(assert (=> b!4471321 (= e!2784336 e!2784333)))

(declare-fun res!1855222 () Bool)

(assert (=> b!4471321 (=> res!1855222 e!2784333)))

(assert (=> b!4471321 (= res!1855222 (not (= lt!1659703 (extractMap!1088 (t!357381 (toList!4071 lm!1477))))))))

(assert (=> b!4471321 (= lt!1659703 (extractMap!1088 (toList!4071 lt!1659693)))))

(declare-fun b!4471322 () Bool)

(declare-fun Unit!88018 () Unit!88015)

(assert (=> b!4471322 (= e!2784343 Unit!88018)))

(declare-fun b!4471323 () Bool)

(declare-fun res!1855236 () Bool)

(assert (=> b!4471323 (=> res!1855236 e!2784333)))

(assert (=> b!4471323 (= res!1855236 (not (allKeysSameHashInMap!1139 lt!1659693 hashF!1107)))))

(assert (= (and start!439492 res!1855231) b!4471315))

(assert (= (and b!4471315 res!1855225) b!4471308))

(assert (= (and b!4471308 res!1855228) b!4471318))

(assert (= (and b!4471318 res!1855223) b!4471311))

(assert (= (and b!4471311 res!1855232) b!4471312))

(assert (= (and b!4471312 (not res!1855229)) b!4471305))

(assert (= (and b!4471305 (not res!1855226)) b!4471313))

(assert (= (and b!4471313 (not res!1855233)) b!4471307))

(assert (= (and b!4471307 c!761290) b!4471309))

(assert (= (and b!4471307 (not c!761290)) b!4471322))

(assert (= (and b!4471307 (not res!1855237)) b!4471304))

(assert (= (and b!4471304 (not res!1855235)) b!4471317))

(assert (= (and b!4471317 (not res!1855234)) b!4471314))

(assert (= (and b!4471314 (not res!1855230)) b!4471321))

(assert (= (and b!4471321 (not res!1855222)) b!4471320))

(assert (= (and b!4471320 (not res!1855227)) b!4471306))

(assert (= (and b!4471306 (not res!1855224)) b!4471323))

(assert (= (and b!4471323 (not res!1855236)) b!4471310))

(assert (= start!439492 b!4471319))

(assert (= (and start!439492 ((_ is Cons!50306) newBucket!178)) b!4471316))

(declare-fun m!5179283 () Bool)

(assert (=> b!4471309 m!5179283))

(declare-fun m!5179285 () Bool)

(assert (=> b!4471307 m!5179285))

(declare-fun m!5179287 () Bool)

(assert (=> b!4471315 m!5179287))

(declare-fun m!5179289 () Bool)

(assert (=> b!4471305 m!5179289))

(declare-fun m!5179291 () Bool)

(assert (=> b!4471308 m!5179291))

(assert (=> b!4471308 m!5179291))

(declare-fun m!5179293 () Bool)

(assert (=> b!4471308 m!5179293))

(declare-fun m!5179295 () Bool)

(assert (=> b!4471321 m!5179295))

(declare-fun m!5179297 () Bool)

(assert (=> b!4471321 m!5179297))

(declare-fun m!5179299 () Bool)

(assert (=> b!4471314 m!5179299))

(declare-fun m!5179301 () Bool)

(assert (=> b!4471314 m!5179301))

(declare-fun m!5179303 () Bool)

(assert (=> b!4471323 m!5179303))

(declare-fun m!5179305 () Bool)

(assert (=> b!4471312 m!5179305))

(declare-fun m!5179307 () Bool)

(assert (=> b!4471312 m!5179307))

(declare-fun m!5179309 () Bool)

(assert (=> b!4471312 m!5179309))

(declare-fun m!5179311 () Bool)

(assert (=> b!4471312 m!5179311))

(declare-fun m!5179313 () Bool)

(assert (=> b!4471312 m!5179313))

(declare-fun m!5179315 () Bool)

(assert (=> b!4471312 m!5179315))

(declare-fun m!5179317 () Bool)

(assert (=> b!4471312 m!5179317))

(declare-fun m!5179319 () Bool)

(assert (=> b!4471311 m!5179319))

(declare-fun m!5179321 () Bool)

(assert (=> b!4471304 m!5179321))

(declare-fun m!5179323 () Bool)

(assert (=> start!439492 m!5179323))

(declare-fun m!5179325 () Bool)

(assert (=> start!439492 m!5179325))

(declare-fun m!5179327 () Bool)

(assert (=> b!4471320 m!5179327))

(declare-fun m!5179329 () Bool)

(assert (=> b!4471317 m!5179329))

(declare-fun m!5179331 () Bool)

(assert (=> b!4471317 m!5179331))

(declare-fun m!5179333 () Bool)

(assert (=> b!4471317 m!5179333))

(declare-fun m!5179335 () Bool)

(assert (=> b!4471317 m!5179335))

(declare-fun m!5179337 () Bool)

(assert (=> b!4471317 m!5179337))

(declare-fun m!5179339 () Bool)

(assert (=> b!4471317 m!5179339))

(assert (=> b!4471317 m!5179335))

(declare-fun m!5179341 () Bool)

(assert (=> b!4471317 m!5179341))

(declare-fun m!5179343 () Bool)

(assert (=> b!4471317 m!5179343))

(declare-fun m!5179345 () Bool)

(assert (=> b!4471317 m!5179345))

(assert (=> b!4471317 m!5179329))

(declare-fun m!5179347 () Bool)

(assert (=> b!4471317 m!5179347))

(assert (=> b!4471317 m!5179339))

(assert (=> b!4471317 m!5179333))

(declare-fun m!5179349 () Bool)

(assert (=> b!4471318 m!5179349))

(declare-fun m!5179351 () Bool)

(assert (=> b!4471306 m!5179351))

(check-sat (not b!4471321) (not b!4471309) tp_is_empty!27407 (not b!4471308) (not b!4471305) (not b!4471312) (not b!4471304) (not b!4471318) (not b!4471319) (not b!4471311) (not b!4471317) (not start!439492) (not b!4471306) (not b!4471320) (not b!4471323) (not b!4471314) (not b!4471315) (not b!4471307) tp_is_empty!27405 (not b!4471316))
(check-sat)
