; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!438912 () Bool)

(assert start!438912)

(declare-fun b!4468305 () Bool)

(declare-fun res!1853745 () Bool)

(declare-fun e!2782449 () Bool)

(assert (=> b!4468305 (=> res!1853745 e!2782449)))

(declare-datatypes ((K!11700 0))(
  ( (K!11701 (val!17631 Int)) )
))
(declare-datatypes ((V!11946 0))(
  ( (V!11947 (val!17632 Int)) )
))
(declare-datatypes ((tuple2!50530 0))(
  ( (tuple2!50531 (_1!28559 K!11700) (_2!28559 V!11946)) )
))
(declare-datatypes ((List!50408 0))(
  ( (Nil!50284) (Cons!50284 (h!56047 tuple2!50530) (t!357358 List!50408)) )
))
(declare-datatypes ((tuple2!50532 0))(
  ( (tuple2!50533 (_1!28560 (_ BitVec 64)) (_2!28560 List!50408)) )
))
(declare-datatypes ((List!50409 0))(
  ( (Nil!50285) (Cons!50285 (h!56048 tuple2!50532) (t!357359 List!50409)) )
))
(declare-datatypes ((ListLongMap!2687 0))(
  ( (ListLongMap!2688 (toList!4055 List!50409)) )
))
(declare-fun lt!1657407 () ListLongMap!2687)

(declare-fun lm!1477 () ListLongMap!2687)

(declare-datatypes ((ListMap!3317 0))(
  ( (ListMap!3318 (toList!4056 List!50408)) )
))
(declare-fun extractMap!1080 (List!50409) ListMap!3317)

(assert (=> b!4468305 (= res!1853745 (not (= (extractMap!1080 (toList!4055 lt!1657407)) (extractMap!1080 (t!357359 (toList!4055 lm!1477))))))))

(declare-fun b!4468306 () Bool)

(declare-fun res!1853741 () Bool)

(declare-fun e!2782448 () Bool)

(assert (=> b!4468306 (=> (not res!1853741) (not e!2782448))))

(declare-datatypes ((Hashable!5419 0))(
  ( (HashableExt!5418 (__x!31122 Int)) )
))
(declare-fun hashF!1107 () Hashable!5419)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50408)

(declare-fun allKeysSameHash!878 (List!50408 (_ BitVec 64) Hashable!5419) Bool)

(assert (=> b!4468306 (= res!1853741 (allKeysSameHash!878 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4468307 () Bool)

(declare-fun isEmpty!28483 (ListLongMap!2687) Bool)

(assert (=> b!4468307 (= e!2782449 (not (isEmpty!28483 lm!1477)))))

(declare-fun b!4468308 () Bool)

(declare-fun res!1853744 () Bool)

(declare-fun e!2782447 () Bool)

(assert (=> b!4468308 (=> (not res!1853744) (not e!2782447))))

(declare-fun allKeysSameHashInMap!1131 (ListLongMap!2687 Hashable!5419) Bool)

(assert (=> b!4468308 (= res!1853744 (allKeysSameHashInMap!1131 lm!1477 hashF!1107))))

(declare-fun b!4468309 () Bool)

(declare-fun e!2782446 () Bool)

(declare-fun tp_is_empty!27373 () Bool)

(declare-fun tp_is_empty!27375 () Bool)

(declare-fun tp!1336224 () Bool)

(assert (=> b!4468309 (= e!2782446 (and tp_is_empty!27373 tp_is_empty!27375 tp!1336224))))

(declare-fun b!4468310 () Bool)

(declare-fun e!2782451 () Bool)

(assert (=> b!4468310 (= e!2782448 (not e!2782451))))

(declare-fun res!1853736 () Bool)

(assert (=> b!4468310 (=> res!1853736 e!2782451)))

(declare-fun key!3287 () K!11700)

(declare-fun lt!1657408 () List!50408)

(declare-fun removePairForKey!651 (List!50408 K!11700) List!50408)

(assert (=> b!4468310 (= res!1853736 (not (= newBucket!178 (removePairForKey!651 lt!1657408 key!3287))))))

(declare-fun lambda!163077 () Int)

(declare-fun lt!1657410 () tuple2!50532)

(declare-datatypes ((Unit!87585 0))(
  ( (Unit!87586) )
))
(declare-fun lt!1657417 () Unit!87585)

(declare-fun forallContained!2257 (List!50409 Int tuple2!50532) Unit!87585)

(assert (=> b!4468310 (= lt!1657417 (forallContained!2257 (toList!4055 lm!1477) lambda!163077 lt!1657410))))

(declare-fun contains!12833 (List!50409 tuple2!50532) Bool)

(assert (=> b!4468310 (contains!12833 (toList!4055 lm!1477) lt!1657410)))

(assert (=> b!4468310 (= lt!1657410 (tuple2!50533 hash!344 lt!1657408))))

(declare-fun lt!1657416 () Unit!87585)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!536 (List!50409 (_ BitVec 64) List!50408) Unit!87585)

(assert (=> b!4468310 (= lt!1657416 (lemmaGetValueByKeyImpliesContainsTuple!536 (toList!4055 lm!1477) hash!344 lt!1657408))))

(declare-fun apply!11761 (ListLongMap!2687 (_ BitVec 64)) List!50408)

(assert (=> b!4468310 (= lt!1657408 (apply!11761 lm!1477 hash!344))))

(declare-fun lt!1657405 () (_ BitVec 64))

(declare-fun contains!12834 (ListLongMap!2687 (_ BitVec 64)) Bool)

(assert (=> b!4468310 (contains!12834 lm!1477 lt!1657405)))

(declare-fun lt!1657404 () Unit!87585)

(declare-fun lemmaInGenMapThenLongMapContainsHash!98 (ListLongMap!2687 K!11700 Hashable!5419) Unit!87585)

(assert (=> b!4468310 (= lt!1657404 (lemmaInGenMapThenLongMapContainsHash!98 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4468311 () Bool)

(declare-fun res!1853735 () Bool)

(assert (=> b!4468311 (=> res!1853735 e!2782451)))

(declare-fun noDuplicateKeys!1024 (List!50408) Bool)

(assert (=> b!4468311 (= res!1853735 (not (noDuplicateKeys!1024 newBucket!178)))))

(declare-fun b!4468312 () Bool)

(declare-fun e!2782442 () Bool)

(declare-fun e!2782444 () Bool)

(assert (=> b!4468312 (= e!2782442 e!2782444)))

(declare-fun res!1853737 () Bool)

(assert (=> b!4468312 (=> res!1853737 e!2782444)))

(declare-fun lt!1657412 () ListLongMap!2687)

(declare-fun tail!7500 (List!50409) List!50409)

(assert (=> b!4468312 (= res!1853737 (not (= (t!357359 (toList!4055 lm!1477)) (tail!7500 (toList!4055 lt!1657412)))))))

(declare-fun lt!1657409 () tuple2!50532)

(declare-fun +!1366 (ListLongMap!2687 tuple2!50532) ListLongMap!2687)

(assert (=> b!4468312 (= lt!1657412 (+!1366 lm!1477 lt!1657409))))

(declare-fun eq!517 (ListMap!3317 ListMap!3317) Bool)

(declare-fun -!286 (ListMap!3317 K!11700) ListMap!3317)

(assert (=> b!4468312 (eq!517 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)) (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))))

(assert (=> b!4468312 (= lt!1657409 (tuple2!50533 hash!344 newBucket!178))))

(declare-fun lt!1657406 () Unit!87585)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!16 ((_ BitVec 64) List!50408 List!50408 K!11700 Hashable!5419) Unit!87585)

(assert (=> b!4468312 (= lt!1657406 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!16 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1657413 () List!50409)

(declare-fun contains!12835 (ListMap!3317 K!11700) Bool)

(assert (=> b!4468312 (contains!12835 (extractMap!1080 lt!1657413) key!3287)))

(declare-fun lt!1657411 () Unit!87585)

(declare-fun lemmaListContainsThenExtractedMapContains!20 (ListLongMap!2687 K!11700 Hashable!5419) Unit!87585)

(assert (=> b!4468312 (= lt!1657411 (lemmaListContainsThenExtractedMapContains!20 (ListLongMap!2688 lt!1657413) key!3287 hashF!1107))))

(declare-fun b!4468313 () Bool)

(declare-fun e!2782450 () Unit!87585)

(declare-fun Unit!87587 () Unit!87585)

(assert (=> b!4468313 (= e!2782450 Unit!87587)))

(declare-fun lt!1657415 () Unit!87585)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!24 (ListLongMap!2687 K!11700 Hashable!5419) Unit!87585)

(assert (=> b!4468313 (= lt!1657415 (lemmaNotInItsHashBucketThenNotInMap!24 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4468313 false))

(declare-fun b!4468314 () Bool)

(declare-fun res!1853738 () Bool)

(assert (=> b!4468314 (=> (not res!1853738) (not e!2782447))))

(assert (=> b!4468314 (= res!1853738 (contains!12835 (extractMap!1080 (toList!4055 lm!1477)) key!3287))))

(declare-fun b!4468315 () Bool)

(assert (=> b!4468315 (= e!2782447 e!2782448)))

(declare-fun res!1853743 () Bool)

(assert (=> b!4468315 (=> (not res!1853743) (not e!2782448))))

(assert (=> b!4468315 (= res!1853743 (= lt!1657405 hash!344))))

(declare-fun hash!2445 (Hashable!5419 K!11700) (_ BitVec 64))

(assert (=> b!4468315 (= lt!1657405 (hash!2445 hashF!1107 key!3287))))

(declare-fun b!4468316 () Bool)

(declare-fun Unit!87588 () Unit!87585)

(assert (=> b!4468316 (= e!2782450 Unit!87588)))

(declare-fun b!4468317 () Bool)

(declare-fun e!2782445 () Bool)

(assert (=> b!4468317 (= e!2782451 e!2782445)))

(declare-fun res!1853747 () Bool)

(assert (=> b!4468317 (=> res!1853747 e!2782445)))

(declare-fun lt!1657414 () Bool)

(assert (=> b!4468317 (= res!1853747 lt!1657414)))

(declare-fun lt!1657418 () Unit!87585)

(assert (=> b!4468317 (= lt!1657418 e!2782450)))

(declare-fun c!760624 () Bool)

(assert (=> b!4468317 (= c!760624 lt!1657414)))

(declare-fun containsKey!1468 (List!50408 K!11700) Bool)

(assert (=> b!4468317 (= lt!1657414 (not (containsKey!1468 (_2!28560 (h!56048 (toList!4055 lm!1477))) key!3287)))))

(declare-fun b!4468318 () Bool)

(assert (=> b!4468318 (= e!2782445 e!2782442)))

(declare-fun res!1853739 () Bool)

(assert (=> b!4468318 (=> res!1853739 e!2782442)))

(declare-fun containsKeyBiggerList!24 (List!50409 K!11700) Bool)

(assert (=> b!4468318 (= res!1853739 (not (containsKeyBiggerList!24 lt!1657413 key!3287)))))

(assert (=> b!4468318 (= lt!1657413 (Cons!50285 (h!56048 (toList!4055 lm!1477)) Nil!50285))))

(declare-fun b!4468319 () Bool)

(declare-fun res!1853742 () Bool)

(assert (=> b!4468319 (=> res!1853742 e!2782451)))

(get-info :version)

(assert (=> b!4468319 (= res!1853742 (or ((_ is Nil!50285) (toList!4055 lm!1477)) (not (= (_1!28560 (h!56048 (toList!4055 lm!1477))) hash!344))))))

(declare-fun res!1853746 () Bool)

(assert (=> start!438912 (=> (not res!1853746) (not e!2782447))))

(declare-fun forall!9988 (List!50409 Int) Bool)

(assert (=> start!438912 (= res!1853746 (forall!9988 (toList!4055 lm!1477) lambda!163077))))

(assert (=> start!438912 e!2782447))

(assert (=> start!438912 true))

(declare-fun e!2782443 () Bool)

(declare-fun inv!65884 (ListLongMap!2687) Bool)

(assert (=> start!438912 (and (inv!65884 lm!1477) e!2782443)))

(assert (=> start!438912 tp_is_empty!27373))

(assert (=> start!438912 e!2782446))

(declare-fun b!4468320 () Bool)

(assert (=> b!4468320 (= e!2782444 e!2782449)))

(declare-fun res!1853740 () Bool)

(assert (=> b!4468320 (=> res!1853740 e!2782449)))

(assert (=> b!4468320 (= res!1853740 (not (= lt!1657412 (+!1366 lt!1657407 lt!1657409))))))

(declare-fun tail!7501 (ListLongMap!2687) ListLongMap!2687)

(assert (=> b!4468320 (= lt!1657407 (tail!7501 lm!1477))))

(declare-fun b!4468321 () Bool)

(declare-fun tp!1336225 () Bool)

(assert (=> b!4468321 (= e!2782443 tp!1336225)))

(assert (= (and start!438912 res!1853746) b!4468308))

(assert (= (and b!4468308 res!1853744) b!4468314))

(assert (= (and b!4468314 res!1853738) b!4468315))

(assert (= (and b!4468315 res!1853743) b!4468306))

(assert (= (and b!4468306 res!1853741) b!4468310))

(assert (= (and b!4468310 (not res!1853736)) b!4468311))

(assert (= (and b!4468311 (not res!1853735)) b!4468319))

(assert (= (and b!4468319 (not res!1853742)) b!4468317))

(assert (= (and b!4468317 c!760624) b!4468313))

(assert (= (and b!4468317 (not c!760624)) b!4468316))

(assert (= (and b!4468317 (not res!1853747)) b!4468318))

(assert (= (and b!4468318 (not res!1853739)) b!4468312))

(assert (= (and b!4468312 (not res!1853737)) b!4468320))

(assert (= (and b!4468320 (not res!1853740)) b!4468305))

(assert (= (and b!4468305 (not res!1853745)) b!4468307))

(assert (= start!438912 b!4468321))

(assert (= (and start!438912 ((_ is Cons!50284) newBucket!178)) b!4468309))

(declare-fun m!5174317 () Bool)

(assert (=> b!4468312 m!5174317))

(declare-fun m!5174319 () Bool)

(assert (=> b!4468312 m!5174319))

(declare-fun m!5174321 () Bool)

(assert (=> b!4468312 m!5174321))

(declare-fun m!5174323 () Bool)

(assert (=> b!4468312 m!5174323))

(assert (=> b!4468312 m!5174323))

(declare-fun m!5174325 () Bool)

(assert (=> b!4468312 m!5174325))

(assert (=> b!4468312 m!5174319))

(declare-fun m!5174327 () Bool)

(assert (=> b!4468312 m!5174327))

(assert (=> b!4468312 m!5174321))

(assert (=> b!4468312 m!5174325))

(declare-fun m!5174329 () Bool)

(assert (=> b!4468312 m!5174329))

(declare-fun m!5174331 () Bool)

(assert (=> b!4468312 m!5174331))

(declare-fun m!5174333 () Bool)

(assert (=> b!4468312 m!5174333))

(declare-fun m!5174335 () Bool)

(assert (=> b!4468312 m!5174335))

(declare-fun m!5174337 () Bool)

(assert (=> b!4468308 m!5174337))

(declare-fun m!5174339 () Bool)

(assert (=> b!4468318 m!5174339))

(declare-fun m!5174341 () Bool)

(assert (=> b!4468306 m!5174341))

(declare-fun m!5174343 () Bool)

(assert (=> b!4468315 m!5174343))

(declare-fun m!5174345 () Bool)

(assert (=> b!4468310 m!5174345))

(declare-fun m!5174347 () Bool)

(assert (=> b!4468310 m!5174347))

(declare-fun m!5174349 () Bool)

(assert (=> b!4468310 m!5174349))

(declare-fun m!5174351 () Bool)

(assert (=> b!4468310 m!5174351))

(declare-fun m!5174353 () Bool)

(assert (=> b!4468310 m!5174353))

(declare-fun m!5174355 () Bool)

(assert (=> b!4468310 m!5174355))

(declare-fun m!5174357 () Bool)

(assert (=> b!4468310 m!5174357))

(declare-fun m!5174359 () Bool)

(assert (=> b!4468311 m!5174359))

(declare-fun m!5174361 () Bool)

(assert (=> b!4468305 m!5174361))

(declare-fun m!5174363 () Bool)

(assert (=> b!4468305 m!5174363))

(declare-fun m!5174365 () Bool)

(assert (=> b!4468307 m!5174365))

(declare-fun m!5174367 () Bool)

(assert (=> b!4468313 m!5174367))

(declare-fun m!5174369 () Bool)

(assert (=> start!438912 m!5174369))

(declare-fun m!5174371 () Bool)

(assert (=> start!438912 m!5174371))

(declare-fun m!5174373 () Bool)

(assert (=> b!4468314 m!5174373))

(assert (=> b!4468314 m!5174373))

(declare-fun m!5174375 () Bool)

(assert (=> b!4468314 m!5174375))

(declare-fun m!5174377 () Bool)

(assert (=> b!4468320 m!5174377))

(declare-fun m!5174379 () Bool)

(assert (=> b!4468320 m!5174379))

(declare-fun m!5174381 () Bool)

(assert (=> b!4468317 m!5174381))

(check-sat (not b!4468309) (not b!4468307) (not b!4468310) (not b!4468306) (not b!4468318) (not b!4468321) (not start!438912) (not b!4468320) (not b!4468305) (not b!4468317) (not b!4468313) (not b!4468311) (not b!4468315) tp_is_empty!27375 (not b!4468314) (not b!4468312) (not b!4468308) tp_is_empty!27373)
(check-sat)
(get-model)

(declare-fun d!1363002 () Bool)

(declare-fun res!1853758 () Bool)

(declare-fun e!2782465 () Bool)

(assert (=> d!1363002 (=> res!1853758 e!2782465)))

(assert (=> d!1363002 (= res!1853758 (not ((_ is Cons!50284) newBucket!178)))))

(assert (=> d!1363002 (= (noDuplicateKeys!1024 newBucket!178) e!2782465)))

(declare-fun b!4468340 () Bool)

(declare-fun e!2782466 () Bool)

(assert (=> b!4468340 (= e!2782465 e!2782466)))

(declare-fun res!1853759 () Bool)

(assert (=> b!4468340 (=> (not res!1853759) (not e!2782466))))

(assert (=> b!4468340 (= res!1853759 (not (containsKey!1468 (t!357358 newBucket!178) (_1!28559 (h!56047 newBucket!178)))))))

(declare-fun b!4468341 () Bool)

(assert (=> b!4468341 (= e!2782466 (noDuplicateKeys!1024 (t!357358 newBucket!178)))))

(assert (= (and d!1363002 (not res!1853758)) b!4468340))

(assert (= (and b!4468340 res!1853759) b!4468341))

(declare-fun m!5174399 () Bool)

(assert (=> b!4468340 m!5174399))

(declare-fun m!5174401 () Bool)

(assert (=> b!4468341 m!5174401))

(assert (=> b!4468311 d!1363002))

(declare-fun d!1363006 () Bool)

(declare-fun e!2782474 () Bool)

(assert (=> d!1363006 e!2782474))

(declare-fun res!1853772 () Bool)

(assert (=> d!1363006 (=> (not res!1853772) (not e!2782474))))

(declare-fun lt!1657446 () ListLongMap!2687)

(assert (=> d!1363006 (= res!1853772 (contains!12834 lt!1657446 (_1!28560 lt!1657409)))))

(declare-fun lt!1657444 () List!50409)

(assert (=> d!1363006 (= lt!1657446 (ListLongMap!2688 lt!1657444))))

(declare-fun lt!1657447 () Unit!87585)

(declare-fun lt!1657445 () Unit!87585)

(assert (=> d!1363006 (= lt!1657447 lt!1657445)))

(declare-datatypes ((Option!10926 0))(
  ( (None!10925) (Some!10925 (v!44239 List!50408)) )
))
(declare-fun getValueByKey!912 (List!50409 (_ BitVec 64)) Option!10926)

(assert (=> d!1363006 (= (getValueByKey!912 lt!1657444 (_1!28560 lt!1657409)) (Some!10925 (_2!28560 lt!1657409)))))

(declare-fun lemmaContainsTupThenGetReturnValue!584 (List!50409 (_ BitVec 64) List!50408) Unit!87585)

(assert (=> d!1363006 (= lt!1657445 (lemmaContainsTupThenGetReturnValue!584 lt!1657444 (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(declare-fun insertStrictlySorted!330 (List!50409 (_ BitVec 64) List!50408) List!50409)

(assert (=> d!1363006 (= lt!1657444 (insertStrictlySorted!330 (toList!4055 lt!1657407) (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(assert (=> d!1363006 (= (+!1366 lt!1657407 lt!1657409) lt!1657446)))

(declare-fun b!4468353 () Bool)

(declare-fun res!1853771 () Bool)

(assert (=> b!4468353 (=> (not res!1853771) (not e!2782474))))

(assert (=> b!4468353 (= res!1853771 (= (getValueByKey!912 (toList!4055 lt!1657446) (_1!28560 lt!1657409)) (Some!10925 (_2!28560 lt!1657409))))))

(declare-fun b!4468354 () Bool)

(assert (=> b!4468354 (= e!2782474 (contains!12833 (toList!4055 lt!1657446) lt!1657409))))

(assert (= (and d!1363006 res!1853772) b!4468353))

(assert (= (and b!4468353 res!1853771) b!4468354))

(declare-fun m!5174425 () Bool)

(assert (=> d!1363006 m!5174425))

(declare-fun m!5174427 () Bool)

(assert (=> d!1363006 m!5174427))

(declare-fun m!5174429 () Bool)

(assert (=> d!1363006 m!5174429))

(declare-fun m!5174431 () Bool)

(assert (=> d!1363006 m!5174431))

(declare-fun m!5174433 () Bool)

(assert (=> b!4468353 m!5174433))

(declare-fun m!5174437 () Bool)

(assert (=> b!4468354 m!5174437))

(assert (=> b!4468320 d!1363006))

(declare-fun d!1363012 () Bool)

(assert (=> d!1363012 (= (tail!7501 lm!1477) (ListLongMap!2688 (tail!7500 (toList!4055 lm!1477))))))

(declare-fun bs!794246 () Bool)

(assert (= bs!794246 d!1363012))

(declare-fun m!5174451 () Bool)

(assert (=> bs!794246 m!5174451))

(assert (=> b!4468320 d!1363012))

(declare-fun bs!794247 () Bool)

(declare-fun d!1363020 () Bool)

(assert (= bs!794247 (and d!1363020 start!438912)))

(declare-fun lambda!163089 () Int)

(assert (=> bs!794247 (= lambda!163089 lambda!163077)))

(assert (=> d!1363020 (contains!12834 lm!1477 (hash!2445 hashF!1107 key!3287))))

(declare-fun lt!1657454 () Unit!87585)

(declare-fun choose!28562 (ListLongMap!2687 K!11700 Hashable!5419) Unit!87585)

(assert (=> d!1363020 (= lt!1657454 (choose!28562 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1363020 (forall!9988 (toList!4055 lm!1477) lambda!163089)))

(assert (=> d!1363020 (= (lemmaInGenMapThenLongMapContainsHash!98 lm!1477 key!3287 hashF!1107) lt!1657454)))

(declare-fun bs!794248 () Bool)

(assert (= bs!794248 d!1363020))

(assert (=> bs!794248 m!5174343))

(assert (=> bs!794248 m!5174343))

(declare-fun m!5174455 () Bool)

(assert (=> bs!794248 m!5174455))

(declare-fun m!5174457 () Bool)

(assert (=> bs!794248 m!5174457))

(declare-fun m!5174459 () Bool)

(assert (=> bs!794248 m!5174459))

(assert (=> b!4468310 d!1363020))

(declare-fun d!1363022 () Bool)

(declare-fun lt!1657462 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8102 (List!50409) (InoxSet tuple2!50532))

(assert (=> d!1363022 (= lt!1657462 (select (content!8102 (toList!4055 lm!1477)) lt!1657410))))

(declare-fun e!2782483 () Bool)

(assert (=> d!1363022 (= lt!1657462 e!2782483)))

(declare-fun res!1853780 () Bool)

(assert (=> d!1363022 (=> (not res!1853780) (not e!2782483))))

(assert (=> d!1363022 (= res!1853780 ((_ is Cons!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363022 (= (contains!12833 (toList!4055 lm!1477) lt!1657410) lt!1657462)))

(declare-fun b!4468365 () Bool)

(declare-fun e!2782482 () Bool)

(assert (=> b!4468365 (= e!2782483 e!2782482)))

(declare-fun res!1853779 () Bool)

(assert (=> b!4468365 (=> res!1853779 e!2782482)))

(assert (=> b!4468365 (= res!1853779 (= (h!56048 (toList!4055 lm!1477)) lt!1657410))))

(declare-fun b!4468366 () Bool)

(assert (=> b!4468366 (= e!2782482 (contains!12833 (t!357359 (toList!4055 lm!1477)) lt!1657410))))

(assert (= (and d!1363022 res!1853780) b!4468365))

(assert (= (and b!4468365 (not res!1853779)) b!4468366))

(declare-fun m!5174485 () Bool)

(assert (=> d!1363022 m!5174485))

(declare-fun m!5174487 () Bool)

(assert (=> d!1363022 m!5174487))

(declare-fun m!5174489 () Bool)

(assert (=> b!4468366 m!5174489))

(assert (=> b!4468310 d!1363022))

(declare-fun d!1363030 () Bool)

(declare-fun get!16391 (Option!10926) List!50408)

(assert (=> d!1363030 (= (apply!11761 lm!1477 hash!344) (get!16391 (getValueByKey!912 (toList!4055 lm!1477) hash!344)))))

(declare-fun bs!794259 () Bool)

(assert (= bs!794259 d!1363030))

(declare-fun m!5174491 () Bool)

(assert (=> bs!794259 m!5174491))

(assert (=> bs!794259 m!5174491))

(declare-fun m!5174493 () Bool)

(assert (=> bs!794259 m!5174493))

(assert (=> b!4468310 d!1363030))

(declare-fun d!1363032 () Bool)

(declare-fun e!2782510 () Bool)

(assert (=> d!1363032 e!2782510))

(declare-fun res!1853795 () Bool)

(assert (=> d!1363032 (=> res!1853795 e!2782510)))

(declare-fun lt!1657499 () Bool)

(assert (=> d!1363032 (= res!1853795 (not lt!1657499))))

(declare-fun lt!1657501 () Bool)

(assert (=> d!1363032 (= lt!1657499 lt!1657501)))

(declare-fun lt!1657498 () Unit!87585)

(declare-fun e!2782509 () Unit!87585)

(assert (=> d!1363032 (= lt!1657498 e!2782509)))

(declare-fun c!760641 () Bool)

(assert (=> d!1363032 (= c!760641 lt!1657501)))

(declare-fun containsKey!1471 (List!50409 (_ BitVec 64)) Bool)

(assert (=> d!1363032 (= lt!1657501 (containsKey!1471 (toList!4055 lm!1477) lt!1657405))))

(assert (=> d!1363032 (= (contains!12834 lm!1477 lt!1657405) lt!1657499)))

(declare-fun b!4468403 () Bool)

(declare-fun lt!1657500 () Unit!87585)

(assert (=> b!4468403 (= e!2782509 lt!1657500)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!816 (List!50409 (_ BitVec 64)) Unit!87585)

(assert (=> b!4468403 (= lt!1657500 (lemmaContainsKeyImpliesGetValueByKeyDefined!816 (toList!4055 lm!1477) lt!1657405))))

(declare-fun isDefined!8213 (Option!10926) Bool)

(assert (=> b!4468403 (isDefined!8213 (getValueByKey!912 (toList!4055 lm!1477) lt!1657405))))

(declare-fun b!4468404 () Bool)

(declare-fun Unit!87594 () Unit!87585)

(assert (=> b!4468404 (= e!2782509 Unit!87594)))

(declare-fun b!4468405 () Bool)

(assert (=> b!4468405 (= e!2782510 (isDefined!8213 (getValueByKey!912 (toList!4055 lm!1477) lt!1657405)))))

(assert (= (and d!1363032 c!760641) b!4468403))

(assert (= (and d!1363032 (not c!760641)) b!4468404))

(assert (= (and d!1363032 (not res!1853795)) b!4468405))

(declare-fun m!5174519 () Bool)

(assert (=> d!1363032 m!5174519))

(declare-fun m!5174521 () Bool)

(assert (=> b!4468403 m!5174521))

(declare-fun m!5174523 () Bool)

(assert (=> b!4468403 m!5174523))

(assert (=> b!4468403 m!5174523))

(declare-fun m!5174525 () Bool)

(assert (=> b!4468403 m!5174525))

(assert (=> b!4468405 m!5174523))

(assert (=> b!4468405 m!5174523))

(assert (=> b!4468405 m!5174525))

(assert (=> b!4468310 d!1363032))

(declare-fun d!1363038 () Bool)

(assert (=> d!1363038 (contains!12833 (toList!4055 lm!1477) (tuple2!50533 hash!344 lt!1657408))))

(declare-fun lt!1657510 () Unit!87585)

(declare-fun choose!28563 (List!50409 (_ BitVec 64) List!50408) Unit!87585)

(assert (=> d!1363038 (= lt!1657510 (choose!28563 (toList!4055 lm!1477) hash!344 lt!1657408))))

(declare-fun e!2782516 () Bool)

(assert (=> d!1363038 e!2782516))

(declare-fun res!1853801 () Bool)

(assert (=> d!1363038 (=> (not res!1853801) (not e!2782516))))

(declare-fun isStrictlySorted!341 (List!50409) Bool)

(assert (=> d!1363038 (= res!1853801 (isStrictlySorted!341 (toList!4055 lm!1477)))))

(assert (=> d!1363038 (= (lemmaGetValueByKeyImpliesContainsTuple!536 (toList!4055 lm!1477) hash!344 lt!1657408) lt!1657510)))

(declare-fun b!4468411 () Bool)

(assert (=> b!4468411 (= e!2782516 (= (getValueByKey!912 (toList!4055 lm!1477) hash!344) (Some!10925 lt!1657408)))))

(assert (= (and d!1363038 res!1853801) b!4468411))

(declare-fun m!5174541 () Bool)

(assert (=> d!1363038 m!5174541))

(declare-fun m!5174543 () Bool)

(assert (=> d!1363038 m!5174543))

(declare-fun m!5174545 () Bool)

(assert (=> d!1363038 m!5174545))

(assert (=> b!4468411 m!5174491))

(assert (=> b!4468310 d!1363038))

(declare-fun d!1363046 () Bool)

(declare-fun dynLambda!21012 (Int tuple2!50532) Bool)

(assert (=> d!1363046 (dynLambda!21012 lambda!163077 lt!1657410)))

(declare-fun lt!1657519 () Unit!87585)

(declare-fun choose!28564 (List!50409 Int tuple2!50532) Unit!87585)

(assert (=> d!1363046 (= lt!1657519 (choose!28564 (toList!4055 lm!1477) lambda!163077 lt!1657410))))

(declare-fun e!2782531 () Bool)

(assert (=> d!1363046 e!2782531))

(declare-fun res!1853810 () Bool)

(assert (=> d!1363046 (=> (not res!1853810) (not e!2782531))))

(assert (=> d!1363046 (= res!1853810 (forall!9988 (toList!4055 lm!1477) lambda!163077))))

(assert (=> d!1363046 (= (forallContained!2257 (toList!4055 lm!1477) lambda!163077 lt!1657410) lt!1657519)))

(declare-fun b!4468432 () Bool)

(assert (=> b!4468432 (= e!2782531 (contains!12833 (toList!4055 lm!1477) lt!1657410))))

(assert (= (and d!1363046 res!1853810) b!4468432))

(declare-fun b_lambda!148305 () Bool)

(assert (=> (not b_lambda!148305) (not d!1363046)))

(declare-fun m!5174559 () Bool)

(assert (=> d!1363046 m!5174559))

(declare-fun m!5174561 () Bool)

(assert (=> d!1363046 m!5174561))

(assert (=> d!1363046 m!5174369))

(assert (=> b!4468432 m!5174349))

(assert (=> b!4468310 d!1363046))

(declare-fun b!4468473 () Bool)

(declare-fun e!2782560 () List!50408)

(declare-fun e!2782559 () List!50408)

(assert (=> b!4468473 (= e!2782560 e!2782559)))

(declare-fun c!760659 () Bool)

(assert (=> b!4468473 (= c!760659 ((_ is Cons!50284) lt!1657408))))

(declare-fun b!4468475 () Bool)

(assert (=> b!4468475 (= e!2782559 Nil!50284)))

(declare-fun d!1363052 () Bool)

(declare-fun lt!1657547 () List!50408)

(assert (=> d!1363052 (not (containsKey!1468 lt!1657547 key!3287))))

(assert (=> d!1363052 (= lt!1657547 e!2782560)))

(declare-fun c!760660 () Bool)

(assert (=> d!1363052 (= c!760660 (and ((_ is Cons!50284) lt!1657408) (= (_1!28559 (h!56047 lt!1657408)) key!3287)))))

(assert (=> d!1363052 (noDuplicateKeys!1024 lt!1657408)))

(assert (=> d!1363052 (= (removePairForKey!651 lt!1657408 key!3287) lt!1657547)))

(declare-fun b!4468474 () Bool)

(assert (=> b!4468474 (= e!2782559 (Cons!50284 (h!56047 lt!1657408) (removePairForKey!651 (t!357358 lt!1657408) key!3287)))))

(declare-fun b!4468472 () Bool)

(assert (=> b!4468472 (= e!2782560 (t!357358 lt!1657408))))

(assert (= (and d!1363052 c!760660) b!4468472))

(assert (= (and d!1363052 (not c!760660)) b!4468473))

(assert (= (and b!4468473 c!760659) b!4468474))

(assert (= (and b!4468473 (not c!760659)) b!4468475))

(declare-fun m!5174615 () Bool)

(assert (=> d!1363052 m!5174615))

(declare-fun m!5174617 () Bool)

(assert (=> d!1363052 m!5174617))

(declare-fun m!5174619 () Bool)

(assert (=> b!4468474 m!5174619))

(assert (=> b!4468310 d!1363052))

(declare-fun bs!794277 () Bool)

(declare-fun d!1363066 () Bool)

(assert (= bs!794277 (and d!1363066 start!438912)))

(declare-fun lambda!163098 () Int)

(assert (=> bs!794277 (not (= lambda!163098 lambda!163077))))

(declare-fun bs!794278 () Bool)

(assert (= bs!794278 (and d!1363066 d!1363020)))

(assert (=> bs!794278 (not (= lambda!163098 lambda!163089))))

(assert (=> d!1363066 true))

(assert (=> d!1363066 (= (allKeysSameHashInMap!1131 lm!1477 hashF!1107) (forall!9988 (toList!4055 lm!1477) lambda!163098))))

(declare-fun bs!794279 () Bool)

(assert (= bs!794279 d!1363066))

(declare-fun m!5174629 () Bool)

(assert (=> bs!794279 m!5174629))

(assert (=> b!4468308 d!1363066))

(declare-fun d!1363074 () Bool)

(declare-fun isEmpty!28485 (List!50409) Bool)

(assert (=> d!1363074 (= (isEmpty!28483 lm!1477) (isEmpty!28485 (toList!4055 lm!1477)))))

(declare-fun bs!794280 () Bool)

(assert (= bs!794280 d!1363074))

(declare-fun m!5174631 () Bool)

(assert (=> bs!794280 m!5174631))

(assert (=> b!4468307 d!1363074))

(declare-fun d!1363076 () Bool)

(declare-fun res!1853848 () Bool)

(declare-fun e!2782579 () Bool)

(assert (=> d!1363076 (=> res!1853848 e!2782579)))

(declare-fun e!2782580 () Bool)

(assert (=> d!1363076 (= res!1853848 e!2782580)))

(declare-fun res!1853846 () Bool)

(assert (=> d!1363076 (=> (not res!1853846) (not e!2782580))))

(assert (=> d!1363076 (= res!1853846 ((_ is Cons!50285) lt!1657413))))

(assert (=> d!1363076 (= (containsKeyBiggerList!24 lt!1657413 key!3287) e!2782579)))

(declare-fun b!4468496 () Bool)

(assert (=> b!4468496 (= e!2782580 (containsKey!1468 (_2!28560 (h!56048 lt!1657413)) key!3287))))

(declare-fun b!4468497 () Bool)

(declare-fun e!2782581 () Bool)

(assert (=> b!4468497 (= e!2782579 e!2782581)))

(declare-fun res!1853847 () Bool)

(assert (=> b!4468497 (=> (not res!1853847) (not e!2782581))))

(assert (=> b!4468497 (= res!1853847 ((_ is Cons!50285) lt!1657413))))

(declare-fun b!4468498 () Bool)

(assert (=> b!4468498 (= e!2782581 (containsKeyBiggerList!24 (t!357359 lt!1657413) key!3287))))

(assert (= (and d!1363076 res!1853846) b!4468496))

(assert (= (and d!1363076 (not res!1853848)) b!4468497))

(assert (= (and b!4468497 res!1853847) b!4468498))

(declare-fun m!5174633 () Bool)

(assert (=> b!4468496 m!5174633))

(declare-fun m!5174635 () Bool)

(assert (=> b!4468498 m!5174635))

(assert (=> b!4468318 d!1363076))

(declare-fun d!1363078 () Bool)

(assert (=> d!1363078 true))

(assert (=> d!1363078 true))

(declare-fun lambda!163106 () Int)

(declare-fun forall!9990 (List!50408 Int) Bool)

(assert (=> d!1363078 (= (allKeysSameHash!878 newBucket!178 hash!344 hashF!1107) (forall!9990 newBucket!178 lambda!163106))))

(declare-fun bs!794310 () Bool)

(assert (= bs!794310 d!1363078))

(declare-fun m!5174659 () Bool)

(assert (=> bs!794310 m!5174659))

(assert (=> b!4468306 d!1363078))

(declare-fun d!1363088 () Bool)

(declare-fun res!1853853 () Bool)

(declare-fun e!2782594 () Bool)

(assert (=> d!1363088 (=> res!1853853 e!2782594)))

(assert (=> d!1363088 (= res!1853853 (and ((_ is Cons!50284) (_2!28560 (h!56048 (toList!4055 lm!1477)))) (= (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))) key!3287)))))

(assert (=> d!1363088 (= (containsKey!1468 (_2!28560 (h!56048 (toList!4055 lm!1477))) key!3287) e!2782594)))

(declare-fun b!4468525 () Bool)

(declare-fun e!2782595 () Bool)

(assert (=> b!4468525 (= e!2782594 e!2782595)))

(declare-fun res!1853854 () Bool)

(assert (=> b!4468525 (=> (not res!1853854) (not e!2782595))))

(assert (=> b!4468525 (= res!1853854 ((_ is Cons!50284) (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(declare-fun b!4468526 () Bool)

(assert (=> b!4468526 (= e!2782595 (containsKey!1468 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477)))) key!3287))))

(assert (= (and d!1363088 (not res!1853853)) b!4468525))

(assert (= (and b!4468525 res!1853854) b!4468526))

(declare-fun m!5174665 () Bool)

(assert (=> b!4468526 m!5174665))

(assert (=> b!4468317 d!1363088))

(declare-fun d!1363094 () Bool)

(declare-fun hash!2449 (Hashable!5419 K!11700) (_ BitVec 64))

(assert (=> d!1363094 (= (hash!2445 hashF!1107 key!3287) (hash!2449 hashF!1107 key!3287))))

(declare-fun bs!794314 () Bool)

(assert (= bs!794314 d!1363094))

(declare-fun m!5174667 () Bool)

(assert (=> bs!794314 m!5174667))

(assert (=> b!4468315 d!1363094))

(declare-fun bs!794315 () Bool)

(declare-fun d!1363096 () Bool)

(assert (= bs!794315 (and d!1363096 start!438912)))

(declare-fun lambda!163112 () Int)

(assert (=> bs!794315 (= lambda!163112 lambda!163077)))

(declare-fun bs!794316 () Bool)

(assert (= bs!794316 (and d!1363096 d!1363020)))

(assert (=> bs!794316 (= lambda!163112 lambda!163089)))

(declare-fun bs!794317 () Bool)

(assert (= bs!794317 (and d!1363096 d!1363066)))

(assert (=> bs!794317 (not (= lambda!163112 lambda!163098))))

(declare-fun lt!1657555 () ListMap!3317)

(declare-fun invariantList!927 (List!50408) Bool)

(assert (=> d!1363096 (invariantList!927 (toList!4056 lt!1657555))))

(declare-fun e!2782598 () ListMap!3317)

(assert (=> d!1363096 (= lt!1657555 e!2782598)))

(declare-fun c!760665 () Bool)

(assert (=> d!1363096 (= c!760665 ((_ is Cons!50285) (toList!4055 lt!1657407)))))

(assert (=> d!1363096 (forall!9988 (toList!4055 lt!1657407) lambda!163112)))

(assert (=> d!1363096 (= (extractMap!1080 (toList!4055 lt!1657407)) lt!1657555)))

(declare-fun b!4468531 () Bool)

(declare-fun addToMapMapFromBucket!589 (List!50408 ListMap!3317) ListMap!3317)

(assert (=> b!4468531 (= e!2782598 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (toList!4055 lt!1657407))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))))))

(declare-fun b!4468532 () Bool)

(assert (=> b!4468532 (= e!2782598 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363096 c!760665) b!4468531))

(assert (= (and d!1363096 (not c!760665)) b!4468532))

(declare-fun m!5174669 () Bool)

(assert (=> d!1363096 m!5174669))

(declare-fun m!5174671 () Bool)

(assert (=> d!1363096 m!5174671))

(declare-fun m!5174673 () Bool)

(assert (=> b!4468531 m!5174673))

(assert (=> b!4468531 m!5174673))

(declare-fun m!5174675 () Bool)

(assert (=> b!4468531 m!5174675))

(assert (=> b!4468305 d!1363096))

(declare-fun bs!794318 () Bool)

(declare-fun d!1363098 () Bool)

(assert (= bs!794318 (and d!1363098 start!438912)))

(declare-fun lambda!163113 () Int)

(assert (=> bs!794318 (= lambda!163113 lambda!163077)))

(declare-fun bs!794319 () Bool)

(assert (= bs!794319 (and d!1363098 d!1363020)))

(assert (=> bs!794319 (= lambda!163113 lambda!163089)))

(declare-fun bs!794320 () Bool)

(assert (= bs!794320 (and d!1363098 d!1363066)))

(assert (=> bs!794320 (not (= lambda!163113 lambda!163098))))

(declare-fun bs!794321 () Bool)

(assert (= bs!794321 (and d!1363098 d!1363096)))

(assert (=> bs!794321 (= lambda!163113 lambda!163112)))

(declare-fun lt!1657556 () ListMap!3317)

(assert (=> d!1363098 (invariantList!927 (toList!4056 lt!1657556))))

(declare-fun e!2782599 () ListMap!3317)

(assert (=> d!1363098 (= lt!1657556 e!2782599)))

(declare-fun c!760666 () Bool)

(assert (=> d!1363098 (= c!760666 ((_ is Cons!50285) (t!357359 (toList!4055 lm!1477))))))

(assert (=> d!1363098 (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163113)))

(assert (=> d!1363098 (= (extractMap!1080 (t!357359 (toList!4055 lm!1477))) lt!1657556)))

(declare-fun b!4468533 () Bool)

(assert (=> b!4468533 (= e!2782599 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))))))

(declare-fun b!4468534 () Bool)

(assert (=> b!4468534 (= e!2782599 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363098 c!760666) b!4468533))

(assert (= (and d!1363098 (not c!760666)) b!4468534))

(declare-fun m!5174677 () Bool)

(assert (=> d!1363098 m!5174677))

(declare-fun m!5174679 () Bool)

(assert (=> d!1363098 m!5174679))

(declare-fun m!5174681 () Bool)

(assert (=> b!4468533 m!5174681))

(assert (=> b!4468533 m!5174681))

(declare-fun m!5174683 () Bool)

(assert (=> b!4468533 m!5174683))

(assert (=> b!4468305 d!1363098))

(declare-fun b!4468553 () Bool)

(declare-fun e!2782613 () Bool)

(declare-datatypes ((List!50411 0))(
  ( (Nil!50287) (Cons!50287 (h!56052 K!11700) (t!357361 List!50411)) )
))
(declare-fun contains!12837 (List!50411 K!11700) Bool)

(declare-fun keys!17362 (ListMap!3317) List!50411)

(assert (=> b!4468553 (= e!2782613 (contains!12837 (keys!17362 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(declare-fun b!4468554 () Bool)

(declare-fun e!2782612 () List!50411)

(declare-fun getKeysList!375 (List!50408) List!50411)

(assert (=> b!4468554 (= e!2782612 (getKeysList!375 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))

(declare-fun d!1363100 () Bool)

(declare-fun e!2782617 () Bool)

(assert (=> d!1363100 e!2782617))

(declare-fun res!1853862 () Bool)

(assert (=> d!1363100 (=> res!1853862 e!2782617)))

(declare-fun e!2782615 () Bool)

(assert (=> d!1363100 (= res!1853862 e!2782615)))

(declare-fun res!1853863 () Bool)

(assert (=> d!1363100 (=> (not res!1853863) (not e!2782615))))

(declare-fun lt!1657576 () Bool)

(assert (=> d!1363100 (= res!1853863 (not lt!1657576))))

(declare-fun lt!1657574 () Bool)

(assert (=> d!1363100 (= lt!1657576 lt!1657574)))

(declare-fun lt!1657578 () Unit!87585)

(declare-fun e!2782614 () Unit!87585)

(assert (=> d!1363100 (= lt!1657578 e!2782614)))

(declare-fun c!760675 () Bool)

(assert (=> d!1363100 (= c!760675 lt!1657574)))

(declare-fun containsKey!1472 (List!50408 K!11700) Bool)

(assert (=> d!1363100 (= lt!1657574 (containsKey!1472 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(assert (=> d!1363100 (= (contains!12835 (extractMap!1080 (toList!4055 lm!1477)) key!3287) lt!1657576)))

(declare-fun b!4468555 () Bool)

(declare-fun e!2782616 () Unit!87585)

(assert (=> b!4468555 (= e!2782614 e!2782616)))

(declare-fun c!760673 () Bool)

(declare-fun call!311093 () Bool)

(assert (=> b!4468555 (= c!760673 call!311093)))

(declare-fun b!4468556 () Bool)

(assert (=> b!4468556 (= e!2782617 e!2782613)))

(declare-fun res!1853861 () Bool)

(assert (=> b!4468556 (=> (not res!1853861) (not e!2782613))))

(declare-datatypes ((Option!10927 0))(
  ( (None!10926) (Some!10926 (v!44240 V!11946)) )
))
(declare-fun isDefined!8214 (Option!10927) Bool)

(declare-fun getValueByKey!913 (List!50408 K!11700) Option!10927)

(assert (=> b!4468556 (= res!1853861 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287)))))

(declare-fun b!4468557 () Bool)

(declare-fun lt!1657577 () Unit!87585)

(assert (=> b!4468557 (= e!2782614 lt!1657577)))

(declare-fun lt!1657579 () Unit!87585)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!817 (List!50408 K!11700) Unit!87585)

(assert (=> b!4468557 (= lt!1657579 (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(assert (=> b!4468557 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(declare-fun lt!1657573 () Unit!87585)

(assert (=> b!4468557 (= lt!1657573 lt!1657579)))

(declare-fun lemmaInListThenGetKeysListContains!371 (List!50408 K!11700) Unit!87585)

(assert (=> b!4468557 (= lt!1657577 (lemmaInListThenGetKeysListContains!371 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(assert (=> b!4468557 call!311093))

(declare-fun b!4468558 () Bool)

(assert (=> b!4468558 (= e!2782615 (not (contains!12837 (keys!17362 (extractMap!1080 (toList!4055 lm!1477))) key!3287)))))

(declare-fun b!4468559 () Bool)

(declare-fun Unit!87595 () Unit!87585)

(assert (=> b!4468559 (= e!2782616 Unit!87595)))

(declare-fun b!4468560 () Bool)

(assert (=> b!4468560 false))

(declare-fun lt!1657580 () Unit!87585)

(declare-fun lt!1657575 () Unit!87585)

(assert (=> b!4468560 (= lt!1657580 lt!1657575)))

(assert (=> b!4468560 (containsKey!1472 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!374 (List!50408 K!11700) Unit!87585)

(assert (=> b!4468560 (= lt!1657575 (lemmaInGetKeysListThenContainsKey!374 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(declare-fun Unit!87596 () Unit!87585)

(assert (=> b!4468560 (= e!2782616 Unit!87596)))

(declare-fun b!4468561 () Bool)

(assert (=> b!4468561 (= e!2782612 (keys!17362 (extractMap!1080 (toList!4055 lm!1477))))))

(declare-fun bm!311088 () Bool)

(assert (=> bm!311088 (= call!311093 (contains!12837 e!2782612 key!3287))))

(declare-fun c!760674 () Bool)

(assert (=> bm!311088 (= c!760674 c!760675)))

(assert (= (and d!1363100 c!760675) b!4468557))

(assert (= (and d!1363100 (not c!760675)) b!4468555))

(assert (= (and b!4468555 c!760673) b!4468560))

(assert (= (and b!4468555 (not c!760673)) b!4468559))

(assert (= (or b!4468557 b!4468555) bm!311088))

(assert (= (and bm!311088 c!760674) b!4468554))

(assert (= (and bm!311088 (not c!760674)) b!4468561))

(assert (= (and d!1363100 res!1853863) b!4468558))

(assert (= (and d!1363100 (not res!1853862)) b!4468556))

(assert (= (and b!4468556 res!1853861) b!4468553))

(assert (=> b!4468561 m!5174373))

(declare-fun m!5174685 () Bool)

(assert (=> b!4468561 m!5174685))

(assert (=> b!4468558 m!5174373))

(assert (=> b!4468558 m!5174685))

(assert (=> b!4468558 m!5174685))

(declare-fun m!5174687 () Bool)

(assert (=> b!4468558 m!5174687))

(declare-fun m!5174689 () Bool)

(assert (=> d!1363100 m!5174689))

(declare-fun m!5174691 () Bool)

(assert (=> bm!311088 m!5174691))

(declare-fun m!5174693 () Bool)

(assert (=> b!4468556 m!5174693))

(assert (=> b!4468556 m!5174693))

(declare-fun m!5174695 () Bool)

(assert (=> b!4468556 m!5174695))

(assert (=> b!4468560 m!5174689))

(declare-fun m!5174697 () Bool)

(assert (=> b!4468560 m!5174697))

(declare-fun m!5174699 () Bool)

(assert (=> b!4468557 m!5174699))

(assert (=> b!4468557 m!5174693))

(assert (=> b!4468557 m!5174693))

(assert (=> b!4468557 m!5174695))

(declare-fun m!5174701 () Bool)

(assert (=> b!4468557 m!5174701))

(assert (=> b!4468553 m!5174373))

(assert (=> b!4468553 m!5174685))

(assert (=> b!4468553 m!5174685))

(assert (=> b!4468553 m!5174687))

(declare-fun m!5174703 () Bool)

(assert (=> b!4468554 m!5174703))

(assert (=> b!4468314 d!1363100))

(declare-fun bs!794322 () Bool)

(declare-fun d!1363102 () Bool)

(assert (= bs!794322 (and d!1363102 d!1363098)))

(declare-fun lambda!163114 () Int)

(assert (=> bs!794322 (= lambda!163114 lambda!163113)))

(declare-fun bs!794323 () Bool)

(assert (= bs!794323 (and d!1363102 d!1363020)))

(assert (=> bs!794323 (= lambda!163114 lambda!163089)))

(declare-fun bs!794324 () Bool)

(assert (= bs!794324 (and d!1363102 d!1363066)))

(assert (=> bs!794324 (not (= lambda!163114 lambda!163098))))

(declare-fun bs!794325 () Bool)

(assert (= bs!794325 (and d!1363102 d!1363096)))

(assert (=> bs!794325 (= lambda!163114 lambda!163112)))

(declare-fun bs!794326 () Bool)

(assert (= bs!794326 (and d!1363102 start!438912)))

(assert (=> bs!794326 (= lambda!163114 lambda!163077)))

(declare-fun lt!1657581 () ListMap!3317)

(assert (=> d!1363102 (invariantList!927 (toList!4056 lt!1657581))))

(declare-fun e!2782618 () ListMap!3317)

(assert (=> d!1363102 (= lt!1657581 e!2782618)))

(declare-fun c!760676 () Bool)

(assert (=> d!1363102 (= c!760676 ((_ is Cons!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363102 (forall!9988 (toList!4055 lm!1477) lambda!163114)))

(assert (=> d!1363102 (= (extractMap!1080 (toList!4055 lm!1477)) lt!1657581)))

(declare-fun b!4468562 () Bool)

(assert (=> b!4468562 (= e!2782618 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (toList!4055 lm!1477))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))))))

(declare-fun b!4468563 () Bool)

(assert (=> b!4468563 (= e!2782618 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363102 c!760676) b!4468562))

(assert (= (and d!1363102 (not c!760676)) b!4468563))

(declare-fun m!5174705 () Bool)

(assert (=> d!1363102 m!5174705))

(declare-fun m!5174707 () Bool)

(assert (=> d!1363102 m!5174707))

(assert (=> b!4468562 m!5174363))

(assert (=> b!4468562 m!5174363))

(declare-fun m!5174709 () Bool)

(assert (=> b!4468562 m!5174709))

(assert (=> b!4468314 d!1363102))

(declare-fun bs!794327 () Bool)

(declare-fun d!1363104 () Bool)

(assert (= bs!794327 (and d!1363104 d!1363098)))

(declare-fun lambda!163115 () Int)

(assert (=> bs!794327 (= lambda!163115 lambda!163113)))

(declare-fun bs!794328 () Bool)

(assert (= bs!794328 (and d!1363104 d!1363066)))

(assert (=> bs!794328 (not (= lambda!163115 lambda!163098))))

(declare-fun bs!794329 () Bool)

(assert (= bs!794329 (and d!1363104 d!1363096)))

(assert (=> bs!794329 (= lambda!163115 lambda!163112)))

(declare-fun bs!794330 () Bool)

(assert (= bs!794330 (and d!1363104 start!438912)))

(assert (=> bs!794330 (= lambda!163115 lambda!163077)))

(declare-fun bs!794331 () Bool)

(assert (= bs!794331 (and d!1363104 d!1363020)))

(assert (=> bs!794331 (= lambda!163115 lambda!163089)))

(declare-fun bs!794332 () Bool)

(assert (= bs!794332 (and d!1363104 d!1363102)))

(assert (=> bs!794332 (= lambda!163115 lambda!163114)))

(declare-fun lt!1657582 () ListMap!3317)

(assert (=> d!1363104 (invariantList!927 (toList!4056 lt!1657582))))

(declare-fun e!2782619 () ListMap!3317)

(assert (=> d!1363104 (= lt!1657582 e!2782619)))

(declare-fun c!760677 () Bool)

(assert (=> d!1363104 (= c!760677 ((_ is Cons!50285) (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))

(assert (=> d!1363104 (forall!9988 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285) lambda!163115)))

(assert (=> d!1363104 (= (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) lt!1657582)))

(declare-fun b!4468564 () Bool)

(assert (=> b!4468564 (= e!2782619 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(declare-fun b!4468565 () Bool)

(assert (=> b!4468565 (= e!2782619 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363104 c!760677) b!4468564))

(assert (= (and d!1363104 (not c!760677)) b!4468565))

(declare-fun m!5174711 () Bool)

(assert (=> d!1363104 m!5174711))

(declare-fun m!5174713 () Bool)

(assert (=> d!1363104 m!5174713))

(declare-fun m!5174715 () Bool)

(assert (=> b!4468564 m!5174715))

(assert (=> b!4468564 m!5174715))

(declare-fun m!5174717 () Bool)

(assert (=> b!4468564 m!5174717))

(assert (=> b!4468312 d!1363104))

(declare-fun d!1363106 () Bool)

(declare-fun e!2782620 () Bool)

(assert (=> d!1363106 e!2782620))

(declare-fun res!1853865 () Bool)

(assert (=> d!1363106 (=> (not res!1853865) (not e!2782620))))

(declare-fun lt!1657585 () ListLongMap!2687)

(assert (=> d!1363106 (= res!1853865 (contains!12834 lt!1657585 (_1!28560 lt!1657409)))))

(declare-fun lt!1657583 () List!50409)

(assert (=> d!1363106 (= lt!1657585 (ListLongMap!2688 lt!1657583))))

(declare-fun lt!1657586 () Unit!87585)

(declare-fun lt!1657584 () Unit!87585)

(assert (=> d!1363106 (= lt!1657586 lt!1657584)))

(assert (=> d!1363106 (= (getValueByKey!912 lt!1657583 (_1!28560 lt!1657409)) (Some!10925 (_2!28560 lt!1657409)))))

(assert (=> d!1363106 (= lt!1657584 (lemmaContainsTupThenGetReturnValue!584 lt!1657583 (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(assert (=> d!1363106 (= lt!1657583 (insertStrictlySorted!330 (toList!4055 lm!1477) (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(assert (=> d!1363106 (= (+!1366 lm!1477 lt!1657409) lt!1657585)))

(declare-fun b!4468566 () Bool)

(declare-fun res!1853864 () Bool)

(assert (=> b!4468566 (=> (not res!1853864) (not e!2782620))))

(assert (=> b!4468566 (= res!1853864 (= (getValueByKey!912 (toList!4055 lt!1657585) (_1!28560 lt!1657409)) (Some!10925 (_2!28560 lt!1657409))))))

(declare-fun b!4468567 () Bool)

(assert (=> b!4468567 (= e!2782620 (contains!12833 (toList!4055 lt!1657585) lt!1657409))))

(assert (= (and d!1363106 res!1853865) b!4468566))

(assert (= (and b!4468566 res!1853864) b!4468567))

(declare-fun m!5174719 () Bool)

(assert (=> d!1363106 m!5174719))

(declare-fun m!5174721 () Bool)

(assert (=> d!1363106 m!5174721))

(declare-fun m!5174723 () Bool)

(assert (=> d!1363106 m!5174723))

(declare-fun m!5174725 () Bool)

(assert (=> d!1363106 m!5174725))

(declare-fun m!5174727 () Bool)

(assert (=> b!4468566 m!5174727))

(declare-fun m!5174729 () Bool)

(assert (=> b!4468567 m!5174729))

(assert (=> b!4468312 d!1363106))

(declare-fun b!4468568 () Bool)

(declare-fun e!2782622 () Bool)

(assert (=> b!4468568 (= e!2782622 (contains!12837 (keys!17362 (extractMap!1080 lt!1657413)) key!3287))))

(declare-fun b!4468569 () Bool)

(declare-fun e!2782621 () List!50411)

(assert (=> b!4468569 (= e!2782621 (getKeysList!375 (toList!4056 (extractMap!1080 lt!1657413))))))

(declare-fun d!1363108 () Bool)

(declare-fun e!2782626 () Bool)

(assert (=> d!1363108 e!2782626))

(declare-fun res!1853867 () Bool)

(assert (=> d!1363108 (=> res!1853867 e!2782626)))

(declare-fun e!2782624 () Bool)

(assert (=> d!1363108 (= res!1853867 e!2782624)))

(declare-fun res!1853868 () Bool)

(assert (=> d!1363108 (=> (not res!1853868) (not e!2782624))))

(declare-fun lt!1657590 () Bool)

(assert (=> d!1363108 (= res!1853868 (not lt!1657590))))

(declare-fun lt!1657588 () Bool)

(assert (=> d!1363108 (= lt!1657590 lt!1657588)))

(declare-fun lt!1657592 () Unit!87585)

(declare-fun e!2782623 () Unit!87585)

(assert (=> d!1363108 (= lt!1657592 e!2782623)))

(declare-fun c!760680 () Bool)

(assert (=> d!1363108 (= c!760680 lt!1657588)))

(assert (=> d!1363108 (= lt!1657588 (containsKey!1472 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(assert (=> d!1363108 (= (contains!12835 (extractMap!1080 lt!1657413) key!3287) lt!1657590)))

(declare-fun b!4468570 () Bool)

(declare-fun e!2782625 () Unit!87585)

(assert (=> b!4468570 (= e!2782623 e!2782625)))

(declare-fun c!760678 () Bool)

(declare-fun call!311094 () Bool)

(assert (=> b!4468570 (= c!760678 call!311094)))

(declare-fun b!4468571 () Bool)

(assert (=> b!4468571 (= e!2782626 e!2782622)))

(declare-fun res!1853866 () Bool)

(assert (=> b!4468571 (=> (not res!1853866) (not e!2782622))))

(assert (=> b!4468571 (= res!1853866 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 lt!1657413)) key!3287)))))

(declare-fun b!4468572 () Bool)

(declare-fun lt!1657591 () Unit!87585)

(assert (=> b!4468572 (= e!2782623 lt!1657591)))

(declare-fun lt!1657593 () Unit!87585)

(assert (=> b!4468572 (= lt!1657593 (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(assert (=> b!4468572 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(declare-fun lt!1657587 () Unit!87585)

(assert (=> b!4468572 (= lt!1657587 lt!1657593)))

(assert (=> b!4468572 (= lt!1657591 (lemmaInListThenGetKeysListContains!371 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(assert (=> b!4468572 call!311094))

(declare-fun b!4468573 () Bool)

(assert (=> b!4468573 (= e!2782624 (not (contains!12837 (keys!17362 (extractMap!1080 lt!1657413)) key!3287)))))

(declare-fun b!4468574 () Bool)

(declare-fun Unit!87597 () Unit!87585)

(assert (=> b!4468574 (= e!2782625 Unit!87597)))

(declare-fun b!4468575 () Bool)

(assert (=> b!4468575 false))

(declare-fun lt!1657594 () Unit!87585)

(declare-fun lt!1657589 () Unit!87585)

(assert (=> b!4468575 (= lt!1657594 lt!1657589)))

(assert (=> b!4468575 (containsKey!1472 (toList!4056 (extractMap!1080 lt!1657413)) key!3287)))

(assert (=> b!4468575 (= lt!1657589 (lemmaInGetKeysListThenContainsKey!374 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(declare-fun Unit!87598 () Unit!87585)

(assert (=> b!4468575 (= e!2782625 Unit!87598)))

(declare-fun b!4468576 () Bool)

(assert (=> b!4468576 (= e!2782621 (keys!17362 (extractMap!1080 lt!1657413)))))

(declare-fun bm!311089 () Bool)

(assert (=> bm!311089 (= call!311094 (contains!12837 e!2782621 key!3287))))

(declare-fun c!760679 () Bool)

(assert (=> bm!311089 (= c!760679 c!760680)))

(assert (= (and d!1363108 c!760680) b!4468572))

(assert (= (and d!1363108 (not c!760680)) b!4468570))

(assert (= (and b!4468570 c!760678) b!4468575))

(assert (= (and b!4468570 (not c!760678)) b!4468574))

(assert (= (or b!4468572 b!4468570) bm!311089))

(assert (= (and bm!311089 c!760679) b!4468569))

(assert (= (and bm!311089 (not c!760679)) b!4468576))

(assert (= (and d!1363108 res!1853868) b!4468573))

(assert (= (and d!1363108 (not res!1853867)) b!4468571))

(assert (= (and b!4468571 res!1853866) b!4468568))

(assert (=> b!4468576 m!5174319))

(declare-fun m!5174731 () Bool)

(assert (=> b!4468576 m!5174731))

(assert (=> b!4468573 m!5174319))

(assert (=> b!4468573 m!5174731))

(assert (=> b!4468573 m!5174731))

(declare-fun m!5174733 () Bool)

(assert (=> b!4468573 m!5174733))

(declare-fun m!5174735 () Bool)

(assert (=> d!1363108 m!5174735))

(declare-fun m!5174737 () Bool)

(assert (=> bm!311089 m!5174737))

(declare-fun m!5174739 () Bool)

(assert (=> b!4468571 m!5174739))

(assert (=> b!4468571 m!5174739))

(declare-fun m!5174741 () Bool)

(assert (=> b!4468571 m!5174741))

(assert (=> b!4468575 m!5174735))

(declare-fun m!5174743 () Bool)

(assert (=> b!4468575 m!5174743))

(declare-fun m!5174745 () Bool)

(assert (=> b!4468572 m!5174745))

(assert (=> b!4468572 m!5174739))

(assert (=> b!4468572 m!5174739))

(assert (=> b!4468572 m!5174741))

(declare-fun m!5174747 () Bool)

(assert (=> b!4468572 m!5174747))

(assert (=> b!4468568 m!5174319))

(assert (=> b!4468568 m!5174731))

(assert (=> b!4468568 m!5174731))

(assert (=> b!4468568 m!5174733))

(declare-fun m!5174749 () Bool)

(assert (=> b!4468569 m!5174749))

(assert (=> b!4468312 d!1363108))

(declare-fun bs!794333 () Bool)

(declare-fun d!1363110 () Bool)

(assert (= bs!794333 (and d!1363110 d!1363066)))

(declare-fun lambda!163116 () Int)

(assert (=> bs!794333 (not (= lambda!163116 lambda!163098))))

(declare-fun bs!794334 () Bool)

(assert (= bs!794334 (and d!1363110 d!1363096)))

(assert (=> bs!794334 (= lambda!163116 lambda!163112)))

(declare-fun bs!794335 () Bool)

(assert (= bs!794335 (and d!1363110 start!438912)))

(assert (=> bs!794335 (= lambda!163116 lambda!163077)))

(declare-fun bs!794336 () Bool)

(assert (= bs!794336 (and d!1363110 d!1363104)))

(assert (=> bs!794336 (= lambda!163116 lambda!163115)))

(declare-fun bs!794337 () Bool)

(assert (= bs!794337 (and d!1363110 d!1363098)))

(assert (=> bs!794337 (= lambda!163116 lambda!163113)))

(declare-fun bs!794338 () Bool)

(assert (= bs!794338 (and d!1363110 d!1363020)))

(assert (=> bs!794338 (= lambda!163116 lambda!163089)))

(declare-fun bs!794339 () Bool)

(assert (= bs!794339 (and d!1363110 d!1363102)))

(assert (=> bs!794339 (= lambda!163116 lambda!163114)))

(declare-fun lt!1657595 () ListMap!3317)

(assert (=> d!1363110 (invariantList!927 (toList!4056 lt!1657595))))

(declare-fun e!2782627 () ListMap!3317)

(assert (=> d!1363110 (= lt!1657595 e!2782627)))

(declare-fun c!760681 () Bool)

(assert (=> d!1363110 (= c!760681 ((_ is Cons!50285) (Cons!50285 lt!1657409 Nil!50285)))))

(assert (=> d!1363110 (forall!9988 (Cons!50285 lt!1657409 Nil!50285) lambda!163116)))

(assert (=> d!1363110 (= (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)) lt!1657595)))

(declare-fun b!4468577 () Bool)

(assert (=> b!4468577 (= e!2782627 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))))))

(declare-fun b!4468578 () Bool)

(assert (=> b!4468578 (= e!2782627 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363110 c!760681) b!4468577))

(assert (= (and d!1363110 (not c!760681)) b!4468578))

(declare-fun m!5174751 () Bool)

(assert (=> d!1363110 m!5174751))

(declare-fun m!5174753 () Bool)

(assert (=> d!1363110 m!5174753))

(declare-fun m!5174755 () Bool)

(assert (=> b!4468577 m!5174755))

(assert (=> b!4468577 m!5174755))

(declare-fun m!5174757 () Bool)

(assert (=> b!4468577 m!5174757))

(assert (=> b!4468312 d!1363110))

(declare-fun d!1363112 () Bool)

(assert (=> d!1363112 (eq!517 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)) (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))))

(declare-fun lt!1657598 () Unit!87585)

(declare-fun choose!28565 ((_ BitVec 64) List!50408 List!50408 K!11700 Hashable!5419) Unit!87585)

(assert (=> d!1363112 (= lt!1657598 (choose!28565 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1363112 (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477))))))

(assert (=> d!1363112 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!16 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1657598)))

(declare-fun bs!794340 () Bool)

(assert (= bs!794340 d!1363112))

(assert (=> bs!794340 m!5174323))

(assert (=> bs!794340 m!5174325))

(declare-fun m!5174759 () Bool)

(assert (=> bs!794340 m!5174759))

(assert (=> bs!794340 m!5174323))

(declare-fun m!5174761 () Bool)

(assert (=> bs!794340 m!5174761))

(assert (=> bs!794340 m!5174759))

(assert (=> bs!794340 m!5174325))

(declare-fun m!5174763 () Bool)

(assert (=> bs!794340 m!5174763))

(declare-fun m!5174765 () Bool)

(assert (=> bs!794340 m!5174765))

(assert (=> b!4468312 d!1363112))

(declare-fun bs!794341 () Bool)

(declare-fun d!1363114 () Bool)

(assert (= bs!794341 (and d!1363114 d!1363066)))

(declare-fun lambda!163117 () Int)

(assert (=> bs!794341 (not (= lambda!163117 lambda!163098))))

(declare-fun bs!794342 () Bool)

(assert (= bs!794342 (and d!1363114 d!1363096)))

(assert (=> bs!794342 (= lambda!163117 lambda!163112)))

(declare-fun bs!794343 () Bool)

(assert (= bs!794343 (and d!1363114 start!438912)))

(assert (=> bs!794343 (= lambda!163117 lambda!163077)))

(declare-fun bs!794344 () Bool)

(assert (= bs!794344 (and d!1363114 d!1363110)))

(assert (=> bs!794344 (= lambda!163117 lambda!163116)))

(declare-fun bs!794345 () Bool)

(assert (= bs!794345 (and d!1363114 d!1363104)))

(assert (=> bs!794345 (= lambda!163117 lambda!163115)))

(declare-fun bs!794346 () Bool)

(assert (= bs!794346 (and d!1363114 d!1363098)))

(assert (=> bs!794346 (= lambda!163117 lambda!163113)))

(declare-fun bs!794347 () Bool)

(assert (= bs!794347 (and d!1363114 d!1363020)))

(assert (=> bs!794347 (= lambda!163117 lambda!163089)))

(declare-fun bs!794348 () Bool)

(assert (= bs!794348 (and d!1363114 d!1363102)))

(assert (=> bs!794348 (= lambda!163117 lambda!163114)))

(declare-fun lt!1657599 () ListMap!3317)

(assert (=> d!1363114 (invariantList!927 (toList!4056 lt!1657599))))

(declare-fun e!2782628 () ListMap!3317)

(assert (=> d!1363114 (= lt!1657599 e!2782628)))

(declare-fun c!760682 () Bool)

(assert (=> d!1363114 (= c!760682 ((_ is Cons!50285) lt!1657413))))

(assert (=> d!1363114 (forall!9988 lt!1657413 lambda!163117)))

(assert (=> d!1363114 (= (extractMap!1080 lt!1657413) lt!1657599)))

(declare-fun b!4468579 () Bool)

(assert (=> b!4468579 (= e!2782628 (addToMapMapFromBucket!589 (_2!28560 (h!56048 lt!1657413)) (extractMap!1080 (t!357359 lt!1657413))))))

(declare-fun b!4468580 () Bool)

(assert (=> b!4468580 (= e!2782628 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363114 c!760682) b!4468579))

(assert (= (and d!1363114 (not c!760682)) b!4468580))

(declare-fun m!5174767 () Bool)

(assert (=> d!1363114 m!5174767))

(declare-fun m!5174769 () Bool)

(assert (=> d!1363114 m!5174769))

(declare-fun m!5174771 () Bool)

(assert (=> b!4468579 m!5174771))

(assert (=> b!4468579 m!5174771))

(declare-fun m!5174773 () Bool)

(assert (=> b!4468579 m!5174773))

(assert (=> b!4468312 d!1363114))

(declare-fun d!1363116 () Bool)

(declare-fun e!2782631 () Bool)

(assert (=> d!1363116 e!2782631))

(declare-fun res!1853871 () Bool)

(assert (=> d!1363116 (=> (not res!1853871) (not e!2782631))))

(declare-fun lt!1657602 () ListMap!3317)

(assert (=> d!1363116 (= res!1853871 (not (contains!12835 lt!1657602 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!63 (List!50408 K!11700) List!50408)

(assert (=> d!1363116 (= lt!1657602 (ListMap!3318 (removePresrvNoDuplicatedKeys!63 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287)))))

(assert (=> d!1363116 (= (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287) lt!1657602)))

(declare-fun b!4468583 () Bool)

(declare-fun content!8103 (List!50411) (InoxSet K!11700))

(assert (=> b!4468583 (= e!2782631 (= ((_ map and) (content!8103 (keys!17362 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) ((_ map not) (store ((as const (Array K!11700 Bool)) false) key!3287 true))) (content!8103 (keys!17362 lt!1657602))))))

(assert (= (and d!1363116 res!1853871) b!4468583))

(declare-fun m!5174775 () Bool)

(assert (=> d!1363116 m!5174775))

(declare-fun m!5174777 () Bool)

(assert (=> d!1363116 m!5174777))

(declare-fun m!5174779 () Bool)

(assert (=> b!4468583 m!5174779))

(declare-fun m!5174781 () Bool)

(assert (=> b!4468583 m!5174781))

(declare-fun m!5174783 () Bool)

(assert (=> b!4468583 m!5174783))

(declare-fun m!5174785 () Bool)

(assert (=> b!4468583 m!5174785))

(declare-fun m!5174787 () Bool)

(assert (=> b!4468583 m!5174787))

(assert (=> b!4468583 m!5174323))

(assert (=> b!4468583 m!5174781))

(assert (=> b!4468583 m!5174785))

(assert (=> b!4468312 d!1363116))

(declare-fun bs!794349 () Bool)

(declare-fun d!1363118 () Bool)

(assert (= bs!794349 (and d!1363118 d!1363114)))

(declare-fun lambda!163120 () Int)

(assert (=> bs!794349 (= lambda!163120 lambda!163117)))

(declare-fun bs!794350 () Bool)

(assert (= bs!794350 (and d!1363118 d!1363066)))

(assert (=> bs!794350 (not (= lambda!163120 lambda!163098))))

(declare-fun bs!794351 () Bool)

(assert (= bs!794351 (and d!1363118 d!1363096)))

(assert (=> bs!794351 (= lambda!163120 lambda!163112)))

(declare-fun bs!794352 () Bool)

(assert (= bs!794352 (and d!1363118 start!438912)))

(assert (=> bs!794352 (= lambda!163120 lambda!163077)))

(declare-fun bs!794353 () Bool)

(assert (= bs!794353 (and d!1363118 d!1363110)))

(assert (=> bs!794353 (= lambda!163120 lambda!163116)))

(declare-fun bs!794354 () Bool)

(assert (= bs!794354 (and d!1363118 d!1363104)))

(assert (=> bs!794354 (= lambda!163120 lambda!163115)))

(declare-fun bs!794355 () Bool)

(assert (= bs!794355 (and d!1363118 d!1363098)))

(assert (=> bs!794355 (= lambda!163120 lambda!163113)))

(declare-fun bs!794356 () Bool)

(assert (= bs!794356 (and d!1363118 d!1363020)))

(assert (=> bs!794356 (= lambda!163120 lambda!163089)))

(declare-fun bs!794357 () Bool)

(assert (= bs!794357 (and d!1363118 d!1363102)))

(assert (=> bs!794357 (= lambda!163120 lambda!163114)))

(assert (=> d!1363118 (contains!12835 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413))) key!3287)))

(declare-fun lt!1657605 () Unit!87585)

(declare-fun choose!28566 (ListLongMap!2687 K!11700 Hashable!5419) Unit!87585)

(assert (=> d!1363118 (= lt!1657605 (choose!28566 (ListLongMap!2688 lt!1657413) key!3287 hashF!1107))))

(assert (=> d!1363118 (forall!9988 (toList!4055 (ListLongMap!2688 lt!1657413)) lambda!163120)))

(assert (=> d!1363118 (= (lemmaListContainsThenExtractedMapContains!20 (ListLongMap!2688 lt!1657413) key!3287 hashF!1107) lt!1657605)))

(declare-fun bs!794358 () Bool)

(assert (= bs!794358 d!1363118))

(declare-fun m!5174789 () Bool)

(assert (=> bs!794358 m!5174789))

(assert (=> bs!794358 m!5174789))

(declare-fun m!5174791 () Bool)

(assert (=> bs!794358 m!5174791))

(declare-fun m!5174793 () Bool)

(assert (=> bs!794358 m!5174793))

(declare-fun m!5174795 () Bool)

(assert (=> bs!794358 m!5174795))

(assert (=> b!4468312 d!1363118))

(declare-fun d!1363120 () Bool)

(declare-fun content!8104 (List!50408) (InoxSet tuple2!50530))

(assert (=> d!1363120 (= (eq!517 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)) (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287)) (= (content!8104 (toList!4056 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)))) (content!8104 (toList!4056 (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287)))))))

(declare-fun bs!794359 () Bool)

(assert (= bs!794359 d!1363120))

(declare-fun m!5174797 () Bool)

(assert (=> bs!794359 m!5174797))

(declare-fun m!5174799 () Bool)

(assert (=> bs!794359 m!5174799))

(assert (=> b!4468312 d!1363120))

(declare-fun d!1363122 () Bool)

(assert (=> d!1363122 (= (tail!7500 (toList!4055 lt!1657412)) (t!357359 (toList!4055 lt!1657412)))))

(assert (=> b!4468312 d!1363122))

(declare-fun d!1363124 () Bool)

(declare-fun res!1853876 () Bool)

(declare-fun e!2782636 () Bool)

(assert (=> d!1363124 (=> res!1853876 e!2782636)))

(assert (=> d!1363124 (= res!1853876 ((_ is Nil!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363124 (= (forall!9988 (toList!4055 lm!1477) lambda!163077) e!2782636)))

(declare-fun b!4468588 () Bool)

(declare-fun e!2782637 () Bool)

(assert (=> b!4468588 (= e!2782636 e!2782637)))

(declare-fun res!1853877 () Bool)

(assert (=> b!4468588 (=> (not res!1853877) (not e!2782637))))

(assert (=> b!4468588 (= res!1853877 (dynLambda!21012 lambda!163077 (h!56048 (toList!4055 lm!1477))))))

(declare-fun b!4468589 () Bool)

(assert (=> b!4468589 (= e!2782637 (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163077))))

(assert (= (and d!1363124 (not res!1853876)) b!4468588))

(assert (= (and b!4468588 res!1853877) b!4468589))

(declare-fun b_lambda!148311 () Bool)

(assert (=> (not b_lambda!148311) (not b!4468588)))

(declare-fun m!5174801 () Bool)

(assert (=> b!4468588 m!5174801))

(declare-fun m!5174803 () Bool)

(assert (=> b!4468589 m!5174803))

(assert (=> start!438912 d!1363124))

(declare-fun d!1363126 () Bool)

(assert (=> d!1363126 (= (inv!65884 lm!1477) (isStrictlySorted!341 (toList!4055 lm!1477)))))

(declare-fun bs!794360 () Bool)

(assert (= bs!794360 d!1363126))

(assert (=> bs!794360 m!5174545))

(assert (=> start!438912 d!1363126))

(declare-fun bs!794361 () Bool)

(declare-fun d!1363128 () Bool)

(assert (= bs!794361 (and d!1363128 d!1363114)))

(declare-fun lambda!163123 () Int)

(assert (=> bs!794361 (= lambda!163123 lambda!163117)))

(declare-fun bs!794362 () Bool)

(assert (= bs!794362 (and d!1363128 d!1363066)))

(assert (=> bs!794362 (not (= lambda!163123 lambda!163098))))

(declare-fun bs!794363 () Bool)

(assert (= bs!794363 (and d!1363128 d!1363096)))

(assert (=> bs!794363 (= lambda!163123 lambda!163112)))

(declare-fun bs!794364 () Bool)

(assert (= bs!794364 (and d!1363128 d!1363110)))

(assert (=> bs!794364 (= lambda!163123 lambda!163116)))

(declare-fun bs!794365 () Bool)

(assert (= bs!794365 (and d!1363128 d!1363104)))

(assert (=> bs!794365 (= lambda!163123 lambda!163115)))

(declare-fun bs!794366 () Bool)

(assert (= bs!794366 (and d!1363128 d!1363098)))

(assert (=> bs!794366 (= lambda!163123 lambda!163113)))

(declare-fun bs!794367 () Bool)

(assert (= bs!794367 (and d!1363128 d!1363020)))

(assert (=> bs!794367 (= lambda!163123 lambda!163089)))

(declare-fun bs!794368 () Bool)

(assert (= bs!794368 (and d!1363128 d!1363102)))

(assert (=> bs!794368 (= lambda!163123 lambda!163114)))

(declare-fun bs!794369 () Bool)

(assert (= bs!794369 (and d!1363128 d!1363118)))

(assert (=> bs!794369 (= lambda!163123 lambda!163120)))

(declare-fun bs!794370 () Bool)

(assert (= bs!794370 (and d!1363128 start!438912)))

(assert (=> bs!794370 (= lambda!163123 lambda!163077)))

(assert (=> d!1363128 (not (contains!12835 (extractMap!1080 (toList!4055 lm!1477)) key!3287))))

(declare-fun lt!1657608 () Unit!87585)

(declare-fun choose!28567 (ListLongMap!2687 K!11700 Hashable!5419) Unit!87585)

(assert (=> d!1363128 (= lt!1657608 (choose!28567 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1363128 (forall!9988 (toList!4055 lm!1477) lambda!163123)))

(assert (=> d!1363128 (= (lemmaNotInItsHashBucketThenNotInMap!24 lm!1477 key!3287 hashF!1107) lt!1657608)))

(declare-fun bs!794371 () Bool)

(assert (= bs!794371 d!1363128))

(assert (=> bs!794371 m!5174373))

(assert (=> bs!794371 m!5174373))

(assert (=> bs!794371 m!5174375))

(declare-fun m!5174805 () Bool)

(assert (=> bs!794371 m!5174805))

(declare-fun m!5174807 () Bool)

(assert (=> bs!794371 m!5174807))

(assert (=> b!4468313 d!1363128))

(declare-fun b!4468594 () Bool)

(declare-fun e!2782640 () Bool)

(declare-fun tp!1336239 () Bool)

(declare-fun tp!1336240 () Bool)

(assert (=> b!4468594 (= e!2782640 (and tp!1336239 tp!1336240))))

(assert (=> b!4468321 (= tp!1336225 e!2782640)))

(assert (= (and b!4468321 ((_ is Cons!50285) (toList!4055 lm!1477))) b!4468594))

(declare-fun tp!1336243 () Bool)

(declare-fun b!4468599 () Bool)

(declare-fun e!2782643 () Bool)

(assert (=> b!4468599 (= e!2782643 (and tp_is_empty!27373 tp_is_empty!27375 tp!1336243))))

(assert (=> b!4468309 (= tp!1336224 e!2782643)))

(assert (= (and b!4468309 ((_ is Cons!50284) (t!357358 newBucket!178))) b!4468599))

(declare-fun b_lambda!148313 () Bool)

(assert (= b_lambda!148311 (or start!438912 b_lambda!148313)))

(declare-fun bs!794372 () Bool)

(declare-fun d!1363130 () Bool)

(assert (= bs!794372 (and d!1363130 start!438912)))

(assert (=> bs!794372 (= (dynLambda!21012 lambda!163077 (h!56048 (toList!4055 lm!1477))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(assert (=> bs!794372 m!5174761))

(assert (=> b!4468588 d!1363130))

(declare-fun b_lambda!148315 () Bool)

(assert (= b_lambda!148305 (or start!438912 b_lambda!148315)))

(declare-fun bs!794373 () Bool)

(declare-fun d!1363132 () Bool)

(assert (= bs!794373 (and d!1363132 start!438912)))

(assert (=> bs!794373 (= (dynLambda!21012 lambda!163077 lt!1657410) (noDuplicateKeys!1024 (_2!28560 lt!1657410)))))

(declare-fun m!5174809 () Bool)

(assert (=> bs!794373 m!5174809))

(assert (=> d!1363046 d!1363132))

(check-sat (not b!4468594) (not b!4468573) (not b!4468561) (not b!4468572) (not b!4468531) (not d!1363098) (not b!4468589) (not b!4468566) (not b!4468558) (not bm!311089) (not b!4468579) (not b!4468583) (not b!4468533) (not d!1363096) (not b!4468575) (not b_lambda!148315) (not b!4468498) (not d!1363110) (not b!4468526) (not d!1363030) (not d!1363120) (not b!4468556) (not d!1363078) (not b!4468576) (not d!1363032) (not b_lambda!148313) (not d!1363128) tp_is_empty!27373 (not b!4468403) (not b!4468599) (not d!1363100) (not b!4468557) (not d!1363114) (not b!4468353) (not d!1363104) (not d!1363046) (not d!1363118) (not b!4468340) (not b!4468366) (not b!4468568) (not b!4468569) (not d!1363022) (not d!1363102) (not b!4468562) (not d!1363116) (not d!1363012) (not b!4468571) (not d!1363020) (not d!1363006) (not bm!311088) (not d!1363074) (not b!4468341) (not b!4468554) (not b!4468577) (not b!4468553) (not d!1363108) (not b!4468354) (not d!1363066) (not b!4468432) (not b!4468474) (not b!4468411) (not d!1363038) (not b!4468560) (not bs!794372) (not b!4468564) (not b!4468405) (not bs!794373) (not b!4468567) (not d!1363094) tp_is_empty!27375 (not d!1363052) (not d!1363112) (not d!1363126) (not d!1363106) (not b!4468496))
(check-sat)
(get-model)

(declare-fun d!1363160 () Bool)

(declare-fun noDuplicatedKeys!213 (List!50408) Bool)

(assert (=> d!1363160 (= (invariantList!927 (toList!4056 lt!1657556)) (noDuplicatedKeys!213 (toList!4056 lt!1657556)))))

(declare-fun bs!794377 () Bool)

(assert (= bs!794377 d!1363160))

(declare-fun m!5174857 () Bool)

(assert (=> bs!794377 m!5174857))

(assert (=> d!1363098 d!1363160))

(declare-fun d!1363162 () Bool)

(declare-fun res!1853905 () Bool)

(declare-fun e!2782669 () Bool)

(assert (=> d!1363162 (=> res!1853905 e!2782669)))

(assert (=> d!1363162 (= res!1853905 ((_ is Nil!50285) (t!357359 (toList!4055 lm!1477))))))

(assert (=> d!1363162 (= (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163113) e!2782669)))

(declare-fun b!4468637 () Bool)

(declare-fun e!2782670 () Bool)

(assert (=> b!4468637 (= e!2782669 e!2782670)))

(declare-fun res!1853906 () Bool)

(assert (=> b!4468637 (=> (not res!1853906) (not e!2782670))))

(assert (=> b!4468637 (= res!1853906 (dynLambda!21012 lambda!163113 (h!56048 (t!357359 (toList!4055 lm!1477)))))))

(declare-fun b!4468638 () Bool)

(assert (=> b!4468638 (= e!2782670 (forall!9988 (t!357359 (t!357359 (toList!4055 lm!1477))) lambda!163113))))

(assert (= (and d!1363162 (not res!1853905)) b!4468637))

(assert (= (and b!4468637 res!1853906) b!4468638))

(declare-fun b_lambda!148321 () Bool)

(assert (=> (not b_lambda!148321) (not b!4468637)))

(declare-fun m!5174859 () Bool)

(assert (=> b!4468637 m!5174859))

(declare-fun m!5174861 () Bool)

(assert (=> b!4468638 m!5174861))

(assert (=> d!1363098 d!1363162))

(declare-fun d!1363164 () Bool)

(assert (=> d!1363164 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(declare-fun lt!1657618 () Unit!87585)

(declare-fun choose!28568 (List!50408 K!11700) Unit!87585)

(assert (=> d!1363164 (= lt!1657618 (choose!28568 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(assert (=> d!1363164 (invariantList!927 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))

(assert (=> d!1363164 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287) lt!1657618)))

(declare-fun bs!794378 () Bool)

(assert (= bs!794378 d!1363164))

(assert (=> bs!794378 m!5174693))

(assert (=> bs!794378 m!5174693))

(assert (=> bs!794378 m!5174695))

(declare-fun m!5174863 () Bool)

(assert (=> bs!794378 m!5174863))

(declare-fun m!5174865 () Bool)

(assert (=> bs!794378 m!5174865))

(assert (=> b!4468557 d!1363164))

(declare-fun d!1363166 () Bool)

(declare-fun isEmpty!28486 (Option!10927) Bool)

(assert (=> d!1363166 (= (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287)) (not (isEmpty!28486 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))))

(declare-fun bs!794380 () Bool)

(assert (= bs!794380 d!1363166))

(assert (=> bs!794380 m!5174693))

(declare-fun m!5174867 () Bool)

(assert (=> bs!794380 m!5174867))

(assert (=> b!4468557 d!1363166))

(declare-fun d!1363168 () Bool)

(declare-fun c!760692 () Bool)

(assert (=> d!1363168 (= c!760692 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) key!3287)))))

(declare-fun e!2782678 () Option!10927)

(assert (=> d!1363168 (= (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287) e!2782678)))

(declare-fun b!4468653 () Bool)

(declare-fun e!2782679 () Option!10927)

(assert (=> b!4468653 (= e!2782679 (getValueByKey!913 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) key!3287))))

(declare-fun b!4468652 () Bool)

(assert (=> b!4468652 (= e!2782678 e!2782679)))

(declare-fun c!760693 () Bool)

(assert (=> b!4468652 (= c!760693 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (not (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) key!3287))))))

(declare-fun b!4468654 () Bool)

(assert (=> b!4468654 (= e!2782679 None!10926)))

(declare-fun b!4468651 () Bool)

(assert (=> b!4468651 (= e!2782678 (Some!10926 (_2!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))))

(assert (= (and d!1363168 c!760692) b!4468651))

(assert (= (and d!1363168 (not c!760692)) b!4468652))

(assert (= (and b!4468652 c!760693) b!4468653))

(assert (= (and b!4468652 (not c!760693)) b!4468654))

(declare-fun m!5174883 () Bool)

(assert (=> b!4468653 m!5174883))

(assert (=> b!4468557 d!1363168))

(declare-fun d!1363178 () Bool)

(assert (=> d!1363178 (contains!12837 (getKeysList!375 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) key!3287)))

(declare-fun lt!1657622 () Unit!87585)

(declare-fun choose!28569 (List!50408 K!11700) Unit!87585)

(assert (=> d!1363178 (= lt!1657622 (choose!28569 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(assert (=> d!1363178 (invariantList!927 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))

(assert (=> d!1363178 (= (lemmaInListThenGetKeysListContains!371 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287) lt!1657622)))

(declare-fun bs!794393 () Bool)

(assert (= bs!794393 d!1363178))

(assert (=> bs!794393 m!5174703))

(assert (=> bs!794393 m!5174703))

(declare-fun m!5174885 () Bool)

(assert (=> bs!794393 m!5174885))

(declare-fun m!5174887 () Bool)

(assert (=> bs!794393 m!5174887))

(assert (=> bs!794393 m!5174865))

(assert (=> b!4468557 d!1363178))

(declare-fun d!1363180 () Bool)

(declare-fun lt!1657623 () Bool)

(assert (=> d!1363180 (= lt!1657623 (select (content!8102 (toList!4055 lt!1657446)) lt!1657409))))

(declare-fun e!2782681 () Bool)

(assert (=> d!1363180 (= lt!1657623 e!2782681)))

(declare-fun res!1853910 () Bool)

(assert (=> d!1363180 (=> (not res!1853910) (not e!2782681))))

(assert (=> d!1363180 (= res!1853910 ((_ is Cons!50285) (toList!4055 lt!1657446)))))

(assert (=> d!1363180 (= (contains!12833 (toList!4055 lt!1657446) lt!1657409) lt!1657623)))

(declare-fun b!4468655 () Bool)

(declare-fun e!2782680 () Bool)

(assert (=> b!4468655 (= e!2782681 e!2782680)))

(declare-fun res!1853909 () Bool)

(assert (=> b!4468655 (=> res!1853909 e!2782680)))

(assert (=> b!4468655 (= res!1853909 (= (h!56048 (toList!4055 lt!1657446)) lt!1657409))))

(declare-fun b!4468656 () Bool)

(assert (=> b!4468656 (= e!2782680 (contains!12833 (t!357359 (toList!4055 lt!1657446)) lt!1657409))))

(assert (= (and d!1363180 res!1853910) b!4468655))

(assert (= (and b!4468655 (not res!1853909)) b!4468656))

(declare-fun m!5174889 () Bool)

(assert (=> d!1363180 m!5174889))

(declare-fun m!5174891 () Bool)

(assert (=> d!1363180 m!5174891))

(declare-fun m!5174893 () Bool)

(assert (=> b!4468656 m!5174893))

(assert (=> b!4468354 d!1363180))

(declare-fun d!1363182 () Bool)

(declare-fun e!2782683 () Bool)

(assert (=> d!1363182 e!2782683))

(declare-fun res!1853911 () Bool)

(assert (=> d!1363182 (=> res!1853911 e!2782683)))

(declare-fun lt!1657625 () Bool)

(assert (=> d!1363182 (= res!1853911 (not lt!1657625))))

(declare-fun lt!1657627 () Bool)

(assert (=> d!1363182 (= lt!1657625 lt!1657627)))

(declare-fun lt!1657624 () Unit!87585)

(declare-fun e!2782682 () Unit!87585)

(assert (=> d!1363182 (= lt!1657624 e!2782682)))

(declare-fun c!760694 () Bool)

(assert (=> d!1363182 (= c!760694 lt!1657627)))

(assert (=> d!1363182 (= lt!1657627 (containsKey!1471 (toList!4055 lm!1477) (hash!2445 hashF!1107 key!3287)))))

(assert (=> d!1363182 (= (contains!12834 lm!1477 (hash!2445 hashF!1107 key!3287)) lt!1657625)))

(declare-fun b!4468657 () Bool)

(declare-fun lt!1657626 () Unit!87585)

(assert (=> b!4468657 (= e!2782682 lt!1657626)))

(assert (=> b!4468657 (= lt!1657626 (lemmaContainsKeyImpliesGetValueByKeyDefined!816 (toList!4055 lm!1477) (hash!2445 hashF!1107 key!3287)))))

(assert (=> b!4468657 (isDefined!8213 (getValueByKey!912 (toList!4055 lm!1477) (hash!2445 hashF!1107 key!3287)))))

(declare-fun b!4468658 () Bool)

(declare-fun Unit!87599 () Unit!87585)

(assert (=> b!4468658 (= e!2782682 Unit!87599)))

(declare-fun b!4468659 () Bool)

(assert (=> b!4468659 (= e!2782683 (isDefined!8213 (getValueByKey!912 (toList!4055 lm!1477) (hash!2445 hashF!1107 key!3287))))))

(assert (= (and d!1363182 c!760694) b!4468657))

(assert (= (and d!1363182 (not c!760694)) b!4468658))

(assert (= (and d!1363182 (not res!1853911)) b!4468659))

(assert (=> d!1363182 m!5174343))

(declare-fun m!5174895 () Bool)

(assert (=> d!1363182 m!5174895))

(assert (=> b!4468657 m!5174343))

(declare-fun m!5174897 () Bool)

(assert (=> b!4468657 m!5174897))

(assert (=> b!4468657 m!5174343))

(declare-fun m!5174899 () Bool)

(assert (=> b!4468657 m!5174899))

(assert (=> b!4468657 m!5174899))

(declare-fun m!5174901 () Bool)

(assert (=> b!4468657 m!5174901))

(assert (=> b!4468659 m!5174343))

(assert (=> b!4468659 m!5174899))

(assert (=> b!4468659 m!5174899))

(assert (=> b!4468659 m!5174901))

(assert (=> d!1363020 d!1363182))

(assert (=> d!1363020 d!1363094))

(declare-fun d!1363184 () Bool)

(assert (=> d!1363184 (contains!12834 lm!1477 (hash!2445 hashF!1107 key!3287))))

(assert (=> d!1363184 true))

(declare-fun _$27!1079 () Unit!87585)

(assert (=> d!1363184 (= (choose!28562 lm!1477 key!3287 hashF!1107) _$27!1079)))

(declare-fun bs!794394 () Bool)

(assert (= bs!794394 d!1363184))

(assert (=> bs!794394 m!5174343))

(assert (=> bs!794394 m!5174343))

(assert (=> bs!794394 m!5174455))

(assert (=> d!1363020 d!1363184))

(declare-fun d!1363186 () Bool)

(declare-fun res!1853912 () Bool)

(declare-fun e!2782684 () Bool)

(assert (=> d!1363186 (=> res!1853912 e!2782684)))

(assert (=> d!1363186 (= res!1853912 ((_ is Nil!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363186 (= (forall!9988 (toList!4055 lm!1477) lambda!163089) e!2782684)))

(declare-fun b!4468660 () Bool)

(declare-fun e!2782685 () Bool)

(assert (=> b!4468660 (= e!2782684 e!2782685)))

(declare-fun res!1853913 () Bool)

(assert (=> b!4468660 (=> (not res!1853913) (not e!2782685))))

(assert (=> b!4468660 (= res!1853913 (dynLambda!21012 lambda!163089 (h!56048 (toList!4055 lm!1477))))))

(declare-fun b!4468661 () Bool)

(assert (=> b!4468661 (= e!2782685 (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163089))))

(assert (= (and d!1363186 (not res!1853912)) b!4468660))

(assert (= (and b!4468660 res!1853913) b!4468661))

(declare-fun b_lambda!148323 () Bool)

(assert (=> (not b_lambda!148323) (not b!4468660)))

(declare-fun m!5174903 () Bool)

(assert (=> b!4468660 m!5174903))

(declare-fun m!5174905 () Bool)

(assert (=> b!4468661 m!5174905))

(assert (=> d!1363020 d!1363186))

(declare-fun b!4468662 () Bool)

(declare-fun e!2782687 () Bool)

(assert (=> b!4468662 (= e!2782687 (contains!12837 (keys!17362 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287))))

(declare-fun b!4468663 () Bool)

(declare-fun e!2782686 () List!50411)

(assert (=> b!4468663 (= e!2782686 (getKeysList!375 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413))))))))

(declare-fun d!1363188 () Bool)

(declare-fun e!2782691 () Bool)

(assert (=> d!1363188 e!2782691))

(declare-fun res!1853915 () Bool)

(assert (=> d!1363188 (=> res!1853915 e!2782691)))

(declare-fun e!2782689 () Bool)

(assert (=> d!1363188 (= res!1853915 e!2782689)))

(declare-fun res!1853916 () Bool)

(assert (=> d!1363188 (=> (not res!1853916) (not e!2782689))))

(declare-fun lt!1657631 () Bool)

(assert (=> d!1363188 (= res!1853916 (not lt!1657631))))

(declare-fun lt!1657629 () Bool)

(assert (=> d!1363188 (= lt!1657631 lt!1657629)))

(declare-fun lt!1657633 () Unit!87585)

(declare-fun e!2782688 () Unit!87585)

(assert (=> d!1363188 (= lt!1657633 e!2782688)))

(declare-fun c!760697 () Bool)

(assert (=> d!1363188 (= c!760697 lt!1657629)))

(assert (=> d!1363188 (= lt!1657629 (containsKey!1472 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287))))

(assert (=> d!1363188 (= (contains!12835 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413))) key!3287) lt!1657631)))

(declare-fun b!4468664 () Bool)

(declare-fun e!2782690 () Unit!87585)

(assert (=> b!4468664 (= e!2782688 e!2782690)))

(declare-fun c!760695 () Bool)

(declare-fun call!311095 () Bool)

(assert (=> b!4468664 (= c!760695 call!311095)))

(declare-fun b!4468665 () Bool)

(assert (=> b!4468665 (= e!2782691 e!2782687)))

(declare-fun res!1853914 () Bool)

(assert (=> b!4468665 (=> (not res!1853914) (not e!2782687))))

(assert (=> b!4468665 (= res!1853914 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287)))))

(declare-fun b!4468666 () Bool)

(declare-fun lt!1657632 () Unit!87585)

(assert (=> b!4468666 (= e!2782688 lt!1657632)))

(declare-fun lt!1657634 () Unit!87585)

(assert (=> b!4468666 (= lt!1657634 (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287))))

(assert (=> b!4468666 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287))))

(declare-fun lt!1657628 () Unit!87585)

(assert (=> b!4468666 (= lt!1657628 lt!1657634)))

(assert (=> b!4468666 (= lt!1657632 (lemmaInListThenGetKeysListContains!371 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287))))

(assert (=> b!4468666 call!311095))

(declare-fun b!4468667 () Bool)

(assert (=> b!4468667 (= e!2782689 (not (contains!12837 (keys!17362 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287)))))

(declare-fun b!4468668 () Bool)

(declare-fun Unit!87601 () Unit!87585)

(assert (=> b!4468668 (= e!2782690 Unit!87601)))

(declare-fun b!4468669 () Bool)

(assert (=> b!4468669 false))

(declare-fun lt!1657635 () Unit!87585)

(declare-fun lt!1657630 () Unit!87585)

(assert (=> b!4468669 (= lt!1657635 lt!1657630)))

(assert (=> b!4468669 (containsKey!1472 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287)))

(assert (=> b!4468669 (= lt!1657630 (lemmaInGetKeysListThenContainsKey!374 (toList!4056 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))) key!3287))))

(declare-fun Unit!87602 () Unit!87585)

(assert (=> b!4468669 (= e!2782690 Unit!87602)))

(declare-fun b!4468670 () Bool)

(assert (=> b!4468670 (= e!2782686 (keys!17362 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413)))))))

(declare-fun bm!311090 () Bool)

(assert (=> bm!311090 (= call!311095 (contains!12837 e!2782686 key!3287))))

(declare-fun c!760696 () Bool)

(assert (=> bm!311090 (= c!760696 c!760697)))

(assert (= (and d!1363188 c!760697) b!4468666))

(assert (= (and d!1363188 (not c!760697)) b!4468664))

(assert (= (and b!4468664 c!760695) b!4468669))

(assert (= (and b!4468664 (not c!760695)) b!4468668))

(assert (= (or b!4468666 b!4468664) bm!311090))

(assert (= (and bm!311090 c!760696) b!4468663))

(assert (= (and bm!311090 (not c!760696)) b!4468670))

(assert (= (and d!1363188 res!1853916) b!4468667))

(assert (= (and d!1363188 (not res!1853915)) b!4468665))

(assert (= (and b!4468665 res!1853914) b!4468662))

(assert (=> b!4468670 m!5174789))

(declare-fun m!5174907 () Bool)

(assert (=> b!4468670 m!5174907))

(assert (=> b!4468667 m!5174789))

(assert (=> b!4468667 m!5174907))

(assert (=> b!4468667 m!5174907))

(declare-fun m!5174909 () Bool)

(assert (=> b!4468667 m!5174909))

(declare-fun m!5174911 () Bool)

(assert (=> d!1363188 m!5174911))

(declare-fun m!5174913 () Bool)

(assert (=> bm!311090 m!5174913))

(declare-fun m!5174915 () Bool)

(assert (=> b!4468665 m!5174915))

(assert (=> b!4468665 m!5174915))

(declare-fun m!5174917 () Bool)

(assert (=> b!4468665 m!5174917))

(assert (=> b!4468669 m!5174911))

(declare-fun m!5174919 () Bool)

(assert (=> b!4468669 m!5174919))

(declare-fun m!5174921 () Bool)

(assert (=> b!4468666 m!5174921))

(assert (=> b!4468666 m!5174915))

(assert (=> b!4468666 m!5174915))

(assert (=> b!4468666 m!5174917))

(declare-fun m!5174923 () Bool)

(assert (=> b!4468666 m!5174923))

(assert (=> b!4468662 m!5174789))

(assert (=> b!4468662 m!5174907))

(assert (=> b!4468662 m!5174907))

(assert (=> b!4468662 m!5174909))

(declare-fun m!5174925 () Bool)

(assert (=> b!4468663 m!5174925))

(assert (=> d!1363118 d!1363188))

(declare-fun bs!794395 () Bool)

(declare-fun d!1363190 () Bool)

(assert (= bs!794395 (and d!1363190 d!1363114)))

(declare-fun lambda!163131 () Int)

(assert (=> bs!794395 (= lambda!163131 lambda!163117)))

(declare-fun bs!794396 () Bool)

(assert (= bs!794396 (and d!1363190 d!1363066)))

(assert (=> bs!794396 (not (= lambda!163131 lambda!163098))))

(declare-fun bs!794397 () Bool)

(assert (= bs!794397 (and d!1363190 d!1363096)))

(assert (=> bs!794397 (= lambda!163131 lambda!163112)))

(declare-fun bs!794398 () Bool)

(assert (= bs!794398 (and d!1363190 d!1363128)))

(assert (=> bs!794398 (= lambda!163131 lambda!163123)))

(declare-fun bs!794399 () Bool)

(assert (= bs!794399 (and d!1363190 d!1363110)))

(assert (=> bs!794399 (= lambda!163131 lambda!163116)))

(declare-fun bs!794400 () Bool)

(assert (= bs!794400 (and d!1363190 d!1363104)))

(assert (=> bs!794400 (= lambda!163131 lambda!163115)))

(declare-fun bs!794401 () Bool)

(assert (= bs!794401 (and d!1363190 d!1363098)))

(assert (=> bs!794401 (= lambda!163131 lambda!163113)))

(declare-fun bs!794402 () Bool)

(assert (= bs!794402 (and d!1363190 d!1363020)))

(assert (=> bs!794402 (= lambda!163131 lambda!163089)))

(declare-fun bs!794403 () Bool)

(assert (= bs!794403 (and d!1363190 d!1363102)))

(assert (=> bs!794403 (= lambda!163131 lambda!163114)))

(declare-fun bs!794404 () Bool)

(assert (= bs!794404 (and d!1363190 d!1363118)))

(assert (=> bs!794404 (= lambda!163131 lambda!163120)))

(declare-fun bs!794405 () Bool)

(assert (= bs!794405 (and d!1363190 start!438912)))

(assert (=> bs!794405 (= lambda!163131 lambda!163077)))

(declare-fun lt!1657636 () ListMap!3317)

(assert (=> d!1363190 (invariantList!927 (toList!4056 lt!1657636))))

(declare-fun e!2782692 () ListMap!3317)

(assert (=> d!1363190 (= lt!1657636 e!2782692)))

(declare-fun c!760698 () Bool)

(assert (=> d!1363190 (= c!760698 ((_ is Cons!50285) (toList!4055 (ListLongMap!2688 lt!1657413))))))

(assert (=> d!1363190 (forall!9988 (toList!4055 (ListLongMap!2688 lt!1657413)) lambda!163131)))

(assert (=> d!1363190 (= (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413))) lt!1657636)))

(declare-fun b!4468671 () Bool)

(assert (=> b!4468671 (= e!2782692 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (toList!4055 (ListLongMap!2688 lt!1657413)))) (extractMap!1080 (t!357359 (toList!4055 (ListLongMap!2688 lt!1657413))))))))

(declare-fun b!4468672 () Bool)

(assert (=> b!4468672 (= e!2782692 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363190 c!760698) b!4468671))

(assert (= (and d!1363190 (not c!760698)) b!4468672))

(declare-fun m!5174927 () Bool)

(assert (=> d!1363190 m!5174927))

(declare-fun m!5174929 () Bool)

(assert (=> d!1363190 m!5174929))

(declare-fun m!5174931 () Bool)

(assert (=> b!4468671 m!5174931))

(assert (=> b!4468671 m!5174931))

(declare-fun m!5174933 () Bool)

(assert (=> b!4468671 m!5174933))

(assert (=> d!1363118 d!1363190))

(declare-fun d!1363192 () Bool)

(assert (=> d!1363192 (contains!12835 (extractMap!1080 (toList!4055 (ListLongMap!2688 lt!1657413))) key!3287)))

(assert (=> d!1363192 true))

(declare-fun _$34!553 () Unit!87585)

(assert (=> d!1363192 (= (choose!28566 (ListLongMap!2688 lt!1657413) key!3287 hashF!1107) _$34!553)))

(declare-fun bs!794406 () Bool)

(assert (= bs!794406 d!1363192))

(assert (=> bs!794406 m!5174789))

(assert (=> bs!794406 m!5174789))

(assert (=> bs!794406 m!5174791))

(assert (=> d!1363118 d!1363192))

(declare-fun d!1363194 () Bool)

(declare-fun res!1853917 () Bool)

(declare-fun e!2782693 () Bool)

(assert (=> d!1363194 (=> res!1853917 e!2782693)))

(assert (=> d!1363194 (= res!1853917 ((_ is Nil!50285) (toList!4055 (ListLongMap!2688 lt!1657413))))))

(assert (=> d!1363194 (= (forall!9988 (toList!4055 (ListLongMap!2688 lt!1657413)) lambda!163120) e!2782693)))

(declare-fun b!4468673 () Bool)

(declare-fun e!2782694 () Bool)

(assert (=> b!4468673 (= e!2782693 e!2782694)))

(declare-fun res!1853918 () Bool)

(assert (=> b!4468673 (=> (not res!1853918) (not e!2782694))))

(assert (=> b!4468673 (= res!1853918 (dynLambda!21012 lambda!163120 (h!56048 (toList!4055 (ListLongMap!2688 lt!1657413)))))))

(declare-fun b!4468674 () Bool)

(assert (=> b!4468674 (= e!2782694 (forall!9988 (t!357359 (toList!4055 (ListLongMap!2688 lt!1657413))) lambda!163120))))

(assert (= (and d!1363194 (not res!1853917)) b!4468673))

(assert (= (and b!4468673 res!1853918) b!4468674))

(declare-fun b_lambda!148325 () Bool)

(assert (=> (not b_lambda!148325) (not b!4468673)))

(declare-fun m!5174935 () Bool)

(assert (=> b!4468673 m!5174935))

(declare-fun m!5174937 () Bool)

(assert (=> b!4468674 m!5174937))

(assert (=> d!1363118 d!1363194))

(declare-fun b!4468682 () Bool)

(assert (=> b!4468682 true))

(declare-fun d!1363196 () Bool)

(declare-fun e!2782697 () Bool)

(assert (=> d!1363196 e!2782697))

(declare-fun res!1853927 () Bool)

(assert (=> d!1363196 (=> (not res!1853927) (not e!2782697))))

(declare-fun lt!1657639 () List!50411)

(declare-fun noDuplicate!698 (List!50411) Bool)

(assert (=> d!1363196 (= res!1853927 (noDuplicate!698 lt!1657639))))

(assert (=> d!1363196 (= lt!1657639 (getKeysList!375 (toList!4056 (extractMap!1080 lt!1657413))))))

(assert (=> d!1363196 (= (keys!17362 (extractMap!1080 lt!1657413)) lt!1657639)))

(declare-fun b!4468681 () Bool)

(declare-fun res!1853926 () Bool)

(assert (=> b!4468681 (=> (not res!1853926) (not e!2782697))))

(declare-fun length!252 (List!50411) Int)

(declare-fun length!253 (List!50408) Int)

(assert (=> b!4468681 (= res!1853926 (= (length!252 lt!1657639) (length!253 (toList!4056 (extractMap!1080 lt!1657413)))))))

(declare-fun res!1853925 () Bool)

(assert (=> b!4468682 (=> (not res!1853925) (not e!2782697))))

(declare-fun lambda!163136 () Int)

(declare-fun forall!9992 (List!50411 Int) Bool)

(assert (=> b!4468682 (= res!1853925 (forall!9992 lt!1657639 lambda!163136))))

(declare-fun b!4468683 () Bool)

(declare-fun lambda!163137 () Int)

(declare-fun map!11021 (List!50408 Int) List!50411)

(assert (=> b!4468683 (= e!2782697 (= (content!8103 lt!1657639) (content!8103 (map!11021 (toList!4056 (extractMap!1080 lt!1657413)) lambda!163137))))))

(assert (= (and d!1363196 res!1853927) b!4468681))

(assert (= (and b!4468681 res!1853926) b!4468682))

(assert (= (and b!4468682 res!1853925) b!4468683))

(declare-fun m!5174939 () Bool)

(assert (=> d!1363196 m!5174939))

(assert (=> d!1363196 m!5174749))

(declare-fun m!5174941 () Bool)

(assert (=> b!4468681 m!5174941))

(declare-fun m!5174943 () Bool)

(assert (=> b!4468681 m!5174943))

(declare-fun m!5174945 () Bool)

(assert (=> b!4468682 m!5174945))

(declare-fun m!5174947 () Bool)

(assert (=> b!4468683 m!5174947))

(declare-fun m!5174949 () Bool)

(assert (=> b!4468683 m!5174949))

(assert (=> b!4468683 m!5174949))

(declare-fun m!5174951 () Bool)

(assert (=> b!4468683 m!5174951))

(assert (=> b!4468576 d!1363196))

(declare-fun d!1363198 () Bool)

(declare-fun lt!1657642 () Bool)

(assert (=> d!1363198 (= lt!1657642 (select (content!8103 (keys!17362 (extractMap!1080 (toList!4055 lm!1477)))) key!3287))))

(declare-fun e!2782703 () Bool)

(assert (=> d!1363198 (= lt!1657642 e!2782703)))

(declare-fun res!1853933 () Bool)

(assert (=> d!1363198 (=> (not res!1853933) (not e!2782703))))

(assert (=> d!1363198 (= res!1853933 ((_ is Cons!50287) (keys!17362 (extractMap!1080 (toList!4055 lm!1477)))))))

(assert (=> d!1363198 (= (contains!12837 (keys!17362 (extractMap!1080 (toList!4055 lm!1477))) key!3287) lt!1657642)))

(declare-fun b!4468690 () Bool)

(declare-fun e!2782702 () Bool)

(assert (=> b!4468690 (= e!2782703 e!2782702)))

(declare-fun res!1853932 () Bool)

(assert (=> b!4468690 (=> res!1853932 e!2782702)))

(assert (=> b!4468690 (= res!1853932 (= (h!56052 (keys!17362 (extractMap!1080 (toList!4055 lm!1477)))) key!3287))))

(declare-fun b!4468691 () Bool)

(assert (=> b!4468691 (= e!2782702 (contains!12837 (t!357361 (keys!17362 (extractMap!1080 (toList!4055 lm!1477)))) key!3287))))

(assert (= (and d!1363198 res!1853933) b!4468690))

(assert (= (and b!4468690 (not res!1853932)) b!4468691))

(assert (=> d!1363198 m!5174685))

(declare-fun m!5174953 () Bool)

(assert (=> d!1363198 m!5174953))

(declare-fun m!5174955 () Bool)

(assert (=> d!1363198 m!5174955))

(declare-fun m!5174957 () Bool)

(assert (=> b!4468691 m!5174957))

(assert (=> b!4468553 d!1363198))

(declare-fun bs!794407 () Bool)

(declare-fun b!4468693 () Bool)

(assert (= bs!794407 (and b!4468693 b!4468682)))

(declare-fun lambda!163138 () Int)

(assert (=> bs!794407 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163138 lambda!163136))))

(assert (=> b!4468693 true))

(declare-fun bs!794408 () Bool)

(declare-fun b!4468694 () Bool)

(assert (= bs!794408 (and b!4468694 b!4468683)))

(declare-fun lambda!163139 () Int)

(assert (=> bs!794408 (= lambda!163139 lambda!163137)))

(declare-fun d!1363200 () Bool)

(declare-fun e!2782704 () Bool)

(assert (=> d!1363200 e!2782704))

(declare-fun res!1853936 () Bool)

(assert (=> d!1363200 (=> (not res!1853936) (not e!2782704))))

(declare-fun lt!1657643 () List!50411)

(assert (=> d!1363200 (= res!1853936 (noDuplicate!698 lt!1657643))))

(assert (=> d!1363200 (= lt!1657643 (getKeysList!375 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))

(assert (=> d!1363200 (= (keys!17362 (extractMap!1080 (toList!4055 lm!1477))) lt!1657643)))

(declare-fun b!4468692 () Bool)

(declare-fun res!1853935 () Bool)

(assert (=> b!4468692 (=> (not res!1853935) (not e!2782704))))

(assert (=> b!4468692 (= res!1853935 (= (length!252 lt!1657643) (length!253 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))))

(declare-fun res!1853934 () Bool)

(assert (=> b!4468693 (=> (not res!1853934) (not e!2782704))))

(assert (=> b!4468693 (= res!1853934 (forall!9992 lt!1657643 lambda!163138))))

(assert (=> b!4468694 (= e!2782704 (= (content!8103 lt!1657643) (content!8103 (map!11021 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) lambda!163139))))))

(assert (= (and d!1363200 res!1853936) b!4468692))

(assert (= (and b!4468692 res!1853935) b!4468693))

(assert (= (and b!4468693 res!1853934) b!4468694))

(declare-fun m!5174959 () Bool)

(assert (=> d!1363200 m!5174959))

(assert (=> d!1363200 m!5174703))

(declare-fun m!5174961 () Bool)

(assert (=> b!4468692 m!5174961))

(declare-fun m!5174963 () Bool)

(assert (=> b!4468692 m!5174963))

(declare-fun m!5174965 () Bool)

(assert (=> b!4468693 m!5174965))

(declare-fun m!5174967 () Bool)

(assert (=> b!4468694 m!5174967))

(declare-fun m!5174969 () Bool)

(assert (=> b!4468694 m!5174969))

(assert (=> b!4468694 m!5174969))

(declare-fun m!5174971 () Bool)

(assert (=> b!4468694 m!5174971))

(assert (=> b!4468553 d!1363200))

(declare-fun b!4468703 () Bool)

(declare-fun e!2782709 () Option!10926)

(assert (=> b!4468703 (= e!2782709 (Some!10925 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(declare-fun b!4468705 () Bool)

(declare-fun e!2782710 () Option!10926)

(assert (=> b!4468705 (= e!2782710 (getValueByKey!912 (t!357359 (toList!4055 lm!1477)) hash!344))))

(declare-fun b!4468706 () Bool)

(assert (=> b!4468706 (= e!2782710 None!10925)))

(declare-fun b!4468704 () Bool)

(assert (=> b!4468704 (= e!2782709 e!2782710)))

(declare-fun c!760704 () Bool)

(assert (=> b!4468704 (= c!760704 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (not (= (_1!28560 (h!56048 (toList!4055 lm!1477))) hash!344))))))

(declare-fun d!1363202 () Bool)

(declare-fun c!760703 () Bool)

(assert (=> d!1363202 (= c!760703 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (= (_1!28560 (h!56048 (toList!4055 lm!1477))) hash!344)))))

(assert (=> d!1363202 (= (getValueByKey!912 (toList!4055 lm!1477) hash!344) e!2782709)))

(assert (= (and d!1363202 c!760703) b!4468703))

(assert (= (and d!1363202 (not c!760703)) b!4468704))

(assert (= (and b!4468704 c!760704) b!4468705))

(assert (= (and b!4468704 (not c!760704)) b!4468706))

(declare-fun m!5174973 () Bool)

(assert (=> b!4468705 m!5174973))

(assert (=> b!4468411 d!1363202))

(declare-fun d!1363204 () Bool)

(declare-fun lt!1657644 () Bool)

(assert (=> d!1363204 (= lt!1657644 (select (content!8102 (toList!4055 lt!1657585)) lt!1657409))))

(declare-fun e!2782712 () Bool)

(assert (=> d!1363204 (= lt!1657644 e!2782712)))

(declare-fun res!1853938 () Bool)

(assert (=> d!1363204 (=> (not res!1853938) (not e!2782712))))

(assert (=> d!1363204 (= res!1853938 ((_ is Cons!50285) (toList!4055 lt!1657585)))))

(assert (=> d!1363204 (= (contains!12833 (toList!4055 lt!1657585) lt!1657409) lt!1657644)))

(declare-fun b!4468707 () Bool)

(declare-fun e!2782711 () Bool)

(assert (=> b!4468707 (= e!2782712 e!2782711)))

(declare-fun res!1853937 () Bool)

(assert (=> b!4468707 (=> res!1853937 e!2782711)))

(assert (=> b!4468707 (= res!1853937 (= (h!56048 (toList!4055 lt!1657585)) lt!1657409))))

(declare-fun b!4468708 () Bool)

(assert (=> b!4468708 (= e!2782711 (contains!12833 (t!357359 (toList!4055 lt!1657585)) lt!1657409))))

(assert (= (and d!1363204 res!1853938) b!4468707))

(assert (= (and b!4468707 (not res!1853937)) b!4468708))

(declare-fun m!5174975 () Bool)

(assert (=> d!1363204 m!5174975))

(declare-fun m!5174977 () Bool)

(assert (=> d!1363204 m!5174977))

(declare-fun m!5174979 () Bool)

(assert (=> b!4468708 m!5174979))

(assert (=> b!4468567 d!1363204))

(declare-fun d!1363206 () Bool)

(assert (=> d!1363206 (= (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 lt!1657413)) key!3287)) (not (isEmpty!28486 (getValueByKey!913 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))))

(declare-fun bs!794409 () Bool)

(assert (= bs!794409 d!1363206))

(assert (=> bs!794409 m!5174739))

(declare-fun m!5174981 () Bool)

(assert (=> bs!794409 m!5174981))

(assert (=> b!4468571 d!1363206))

(declare-fun d!1363208 () Bool)

(declare-fun c!760705 () Bool)

(assert (=> d!1363208 (= c!760705 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 lt!1657413))) (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413)))) key!3287)))))

(declare-fun e!2782713 () Option!10927)

(assert (=> d!1363208 (= (getValueByKey!913 (toList!4056 (extractMap!1080 lt!1657413)) key!3287) e!2782713)))

(declare-fun b!4468711 () Bool)

(declare-fun e!2782714 () Option!10927)

(assert (=> b!4468711 (= e!2782714 (getValueByKey!913 (t!357358 (toList!4056 (extractMap!1080 lt!1657413))) key!3287))))

(declare-fun b!4468710 () Bool)

(assert (=> b!4468710 (= e!2782713 e!2782714)))

(declare-fun c!760706 () Bool)

(assert (=> b!4468710 (= c!760706 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 lt!1657413))) (not (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413)))) key!3287))))))

(declare-fun b!4468712 () Bool)

(assert (=> b!4468712 (= e!2782714 None!10926)))

(declare-fun b!4468709 () Bool)

(assert (=> b!4468709 (= e!2782713 (Some!10926 (_2!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))))))))

(assert (= (and d!1363208 c!760705) b!4468709))

(assert (= (and d!1363208 (not c!760705)) b!4468710))

(assert (= (and b!4468710 c!760706) b!4468711))

(assert (= (and b!4468710 (not c!760706)) b!4468712))

(declare-fun m!5174983 () Bool)

(assert (=> b!4468711 m!5174983))

(assert (=> b!4468571 d!1363208))

(declare-fun bs!794436 () Bool)

(declare-fun b!4468796 () Bool)

(assert (= bs!794436 (and b!4468796 d!1363078)))

(declare-fun lambda!163213 () Int)

(assert (=> bs!794436 (not (= lambda!163213 lambda!163106))))

(assert (=> b!4468796 true))

(declare-fun bs!794437 () Bool)

(declare-fun b!4468792 () Bool)

(assert (= bs!794437 (and b!4468792 d!1363078)))

(declare-fun lambda!163214 () Int)

(assert (=> bs!794437 (not (= lambda!163214 lambda!163106))))

(declare-fun bs!794438 () Bool)

(assert (= bs!794438 (and b!4468792 b!4468796)))

(assert (=> bs!794438 (= lambda!163214 lambda!163213)))

(assert (=> b!4468792 true))

(declare-fun lambda!163215 () Int)

(assert (=> bs!794437 (not (= lambda!163215 lambda!163106))))

(declare-fun lt!1657779 () ListMap!3317)

(assert (=> bs!794438 (= (= lt!1657779 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163215 lambda!163213))))

(assert (=> b!4468792 (= (= lt!1657779 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163215 lambda!163214))))

(assert (=> b!4468792 true))

(declare-fun bs!794439 () Bool)

(declare-fun d!1363210 () Bool)

(assert (= bs!794439 (and d!1363210 d!1363078)))

(declare-fun lambda!163216 () Int)

(assert (=> bs!794439 (not (= lambda!163216 lambda!163106))))

(declare-fun bs!794440 () Bool)

(assert (= bs!794440 (and d!1363210 b!4468796)))

(declare-fun lt!1657792 () ListMap!3317)

(assert (=> bs!794440 (= (= lt!1657792 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163216 lambda!163213))))

(declare-fun bs!794441 () Bool)

(assert (= bs!794441 (and d!1363210 b!4468792)))

(assert (=> bs!794441 (= (= lt!1657792 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163216 lambda!163214))))

(assert (=> bs!794441 (= (= lt!1657792 lt!1657779) (= lambda!163216 lambda!163215))))

(assert (=> d!1363210 true))

(declare-fun e!2782758 () ListMap!3317)

(assert (=> b!4468792 (= e!2782758 lt!1657779)))

(declare-fun lt!1657784 () ListMap!3317)

(declare-fun +!1368 (ListMap!3317 tuple2!50530) ListMap!3317)

(assert (=> b!4468792 (= lt!1657784 (+!1368 (extractMap!1080 (t!357359 (toList!4055 lm!1477))) (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(assert (=> b!4468792 (= lt!1657779 (addToMapMapFromBucket!589 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477)))) (+!1368 (extractMap!1080 (t!357359 (toList!4055 lm!1477))) (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))))

(declare-fun lt!1657787 () Unit!87585)

(declare-fun call!311111 () Unit!87585)

(assert (=> b!4468792 (= lt!1657787 call!311111)))

(assert (=> b!4468792 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) lambda!163214)))

(declare-fun lt!1657785 () Unit!87585)

(assert (=> b!4468792 (= lt!1657785 lt!1657787)))

(declare-fun call!311113 () Bool)

(assert (=> b!4468792 call!311113))

(declare-fun lt!1657789 () Unit!87585)

(declare-fun Unit!87614 () Unit!87585)

(assert (=> b!4468792 (= lt!1657789 Unit!87614)))

(assert (=> b!4468792 (forall!9990 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477)))) lambda!163215)))

(declare-fun lt!1657782 () Unit!87585)

(declare-fun Unit!87616 () Unit!87585)

(assert (=> b!4468792 (= lt!1657782 Unit!87616)))

(declare-fun lt!1657786 () Unit!87585)

(declare-fun Unit!87618 () Unit!87585)

(assert (=> b!4468792 (= lt!1657786 Unit!87618)))

(declare-fun lt!1657795 () Unit!87585)

(declare-fun forallContained!2259 (List!50408 Int tuple2!50530) Unit!87585)

(assert (=> b!4468792 (= lt!1657795 (forallContained!2259 (toList!4056 lt!1657784) lambda!163215 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(assert (=> b!4468792 (contains!12835 lt!1657784 (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(declare-fun lt!1657797 () Unit!87585)

(declare-fun Unit!87620 () Unit!87585)

(assert (=> b!4468792 (= lt!1657797 Unit!87620)))

(assert (=> b!4468792 (contains!12835 lt!1657779 (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(declare-fun lt!1657781 () Unit!87585)

(declare-fun Unit!87621 () Unit!87585)

(assert (=> b!4468792 (= lt!1657781 Unit!87621)))

(assert (=> b!4468792 (forall!9990 (_2!28560 (h!56048 (toList!4055 lm!1477))) lambda!163215)))

(declare-fun lt!1657790 () Unit!87585)

(declare-fun Unit!87622 () Unit!87585)

(assert (=> b!4468792 (= lt!1657790 Unit!87622)))

(assert (=> b!4468792 (forall!9990 (toList!4056 lt!1657784) lambda!163215)))

(declare-fun lt!1657796 () Unit!87585)

(declare-fun Unit!87623 () Unit!87585)

(assert (=> b!4468792 (= lt!1657796 Unit!87623)))

(declare-fun lt!1657788 () Unit!87585)

(declare-fun Unit!87624 () Unit!87585)

(assert (=> b!4468792 (= lt!1657788 Unit!87624)))

(declare-fun lt!1657794 () Unit!87585)

(declare-fun addForallContainsKeyThenBeforeAdding!266 (ListMap!3317 ListMap!3317 K!11700 V!11946) Unit!87585)

(assert (=> b!4468792 (= lt!1657794 (addForallContainsKeyThenBeforeAdding!266 (extractMap!1080 (t!357359 (toList!4055 lm!1477))) lt!1657779 (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))) (_2!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))))

(declare-fun call!311112 () Bool)

(assert (=> b!4468792 call!311112))

(declare-fun lt!1657791 () Unit!87585)

(assert (=> b!4468792 (= lt!1657791 lt!1657794)))

(assert (=> b!4468792 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) lambda!163215)))

(declare-fun lt!1657778 () Unit!87585)

(declare-fun Unit!87625 () Unit!87585)

(assert (=> b!4468792 (= lt!1657778 Unit!87625)))

(declare-fun res!1853970 () Bool)

(assert (=> b!4468792 (= res!1853970 (forall!9990 (_2!28560 (h!56048 (toList!4055 lm!1477))) lambda!163215))))

(declare-fun e!2782757 () Bool)

(assert (=> b!4468792 (=> (not res!1853970) (not e!2782757))))

(assert (=> b!4468792 e!2782757))

(declare-fun lt!1657777 () Unit!87585)

(declare-fun Unit!87626 () Unit!87585)

(assert (=> b!4468792 (= lt!1657777 Unit!87626)))

(declare-fun bm!311106 () Bool)

(declare-fun c!760729 () Bool)

(assert (=> bm!311106 (= call!311112 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (ite c!760729 lambda!163213 lambda!163215)))))

(declare-fun bm!311107 () Bool)

(assert (=> bm!311107 (= call!311113 (forall!9990 (ite c!760729 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (toList!4056 lt!1657784)) (ite c!760729 lambda!163213 lambda!163215)))))

(declare-fun b!4468794 () Bool)

(assert (=> b!4468794 (= e!2782757 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) lambda!163215))))

(declare-fun bm!311108 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!267 (ListMap!3317) Unit!87585)

(assert (=> bm!311108 (= call!311111 (lemmaContainsAllItsOwnKeys!267 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))))))

(declare-fun b!4468795 () Bool)

(declare-fun res!1853972 () Bool)

(declare-fun e!2782759 () Bool)

(assert (=> b!4468795 (=> (not res!1853972) (not e!2782759))))

(assert (=> b!4468795 (= res!1853972 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) lambda!163216))))

(assert (=> b!4468796 (= e!2782758 (extractMap!1080 (t!357359 (toList!4055 lm!1477))))))

(declare-fun lt!1657793 () Unit!87585)

(assert (=> b!4468796 (= lt!1657793 call!311111)))

(assert (=> b!4468796 call!311112))

(declare-fun lt!1657783 () Unit!87585)

(assert (=> b!4468796 (= lt!1657783 lt!1657793)))

(assert (=> b!4468796 call!311113))

(declare-fun lt!1657780 () Unit!87585)

(declare-fun Unit!87627 () Unit!87585)

(assert (=> b!4468796 (= lt!1657780 Unit!87627)))

(assert (=> d!1363210 e!2782759))

(declare-fun res!1853971 () Bool)

(assert (=> d!1363210 (=> (not res!1853971) (not e!2782759))))

(assert (=> d!1363210 (= res!1853971 (forall!9990 (_2!28560 (h!56048 (toList!4055 lm!1477))) lambda!163216))))

(assert (=> d!1363210 (= lt!1657792 e!2782758)))

(assert (=> d!1363210 (= c!760729 ((_ is Nil!50284) (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(assert (=> d!1363210 (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477))))))

(assert (=> d!1363210 (= (addToMapMapFromBucket!589 (_2!28560 (h!56048 (toList!4055 lm!1477))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) lt!1657792)))

(declare-fun b!4468793 () Bool)

(assert (=> b!4468793 (= e!2782759 (invariantList!927 (toList!4056 lt!1657792)))))

(assert (= (and d!1363210 c!760729) b!4468796))

(assert (= (and d!1363210 (not c!760729)) b!4468792))

(assert (= (and b!4468792 res!1853970) b!4468794))

(assert (= (or b!4468796 b!4468792) bm!311107))

(assert (= (or b!4468796 b!4468792) bm!311106))

(assert (= (or b!4468796 b!4468792) bm!311108))

(assert (= (and d!1363210 res!1853971) b!4468795))

(assert (= (and b!4468795 res!1853972) b!4468793))

(declare-fun m!5175079 () Bool)

(assert (=> bm!311106 m!5175079))

(declare-fun m!5175081 () Bool)

(assert (=> b!4468792 m!5175081))

(assert (=> b!4468792 m!5174363))

(declare-fun m!5175083 () Bool)

(assert (=> b!4468792 m!5175083))

(assert (=> b!4468792 m!5175083))

(declare-fun m!5175085 () Bool)

(assert (=> b!4468792 m!5175085))

(declare-fun m!5175087 () Bool)

(assert (=> b!4468792 m!5175087))

(declare-fun m!5175089 () Bool)

(assert (=> b!4468792 m!5175089))

(declare-fun m!5175091 () Bool)

(assert (=> b!4468792 m!5175091))

(declare-fun m!5175093 () Bool)

(assert (=> b!4468792 m!5175093))

(declare-fun m!5175095 () Bool)

(assert (=> b!4468792 m!5175095))

(declare-fun m!5175097 () Bool)

(assert (=> b!4468792 m!5175097))

(assert (=> b!4468792 m!5174363))

(declare-fun m!5175099 () Bool)

(assert (=> b!4468792 m!5175099))

(assert (=> b!4468792 m!5175091))

(declare-fun m!5175101 () Bool)

(assert (=> b!4468792 m!5175101))

(declare-fun m!5175103 () Bool)

(assert (=> bm!311107 m!5175103))

(declare-fun m!5175105 () Bool)

(assert (=> b!4468795 m!5175105))

(declare-fun m!5175107 () Bool)

(assert (=> b!4468793 m!5175107))

(assert (=> bm!311108 m!5174363))

(declare-fun m!5175109 () Bool)

(assert (=> bm!311108 m!5175109))

(declare-fun m!5175111 () Bool)

(assert (=> d!1363210 m!5175111))

(assert (=> d!1363210 m!5174761))

(assert (=> b!4468794 m!5175095))

(assert (=> b!4468562 d!1363210))

(assert (=> b!4468562 d!1363098))

(declare-fun d!1363232 () Bool)

(declare-fun c!760732 () Bool)

(assert (=> d!1363232 (= c!760732 ((_ is Nil!50284) (toList!4056 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)))))))

(declare-fun e!2782765 () (InoxSet tuple2!50530))

(assert (=> d!1363232 (= (content!8104 (toList!4056 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)))) e!2782765)))

(declare-fun b!4468809 () Bool)

(assert (=> b!4468809 (= e!2782765 ((as const (Array tuple2!50530 Bool)) false))))

(declare-fun b!4468810 () Bool)

(assert (=> b!4468810 (= e!2782765 ((_ map or) (store ((as const (Array tuple2!50530 Bool)) false) (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)))) true) (content!8104 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 lt!1657409 Nil!50285)))))))))

(assert (= (and d!1363232 c!760732) b!4468809))

(assert (= (and d!1363232 (not c!760732)) b!4468810))

(declare-fun m!5175113 () Bool)

(assert (=> b!4468810 m!5175113))

(declare-fun m!5175115 () Bool)

(assert (=> b!4468810 m!5175115))

(assert (=> d!1363120 d!1363232))

(declare-fun c!760733 () Bool)

(declare-fun d!1363234 () Bool)

(assert (=> d!1363234 (= c!760733 ((_ is Nil!50284) (toList!4056 (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))))))

(declare-fun e!2782766 () (InoxSet tuple2!50530))

(assert (=> d!1363234 (= (content!8104 (toList!4056 (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))) e!2782766)))

(declare-fun b!4468811 () Bool)

(assert (=> b!4468811 (= e!2782766 ((as const (Array tuple2!50530 Bool)) false))))

(declare-fun b!4468812 () Bool)

(assert (=> b!4468812 (= e!2782766 ((_ map or) (store ((as const (Array tuple2!50530 Bool)) false) (h!56047 (toList!4056 (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))) true) (content!8104 (t!357358 (toList!4056 (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))))))))

(assert (= (and d!1363234 c!760733) b!4468811))

(assert (= (and d!1363234 (not c!760733)) b!4468812))

(declare-fun m!5175117 () Bool)

(assert (=> b!4468812 m!5175117))

(declare-fun m!5175119 () Bool)

(assert (=> b!4468812 m!5175119))

(assert (=> d!1363120 d!1363234))

(declare-fun d!1363236 () Bool)

(declare-fun res!1853979 () Bool)

(declare-fun e!2782767 () Bool)

(assert (=> d!1363236 (=> res!1853979 e!2782767)))

(assert (=> d!1363236 (= res!1853979 (not ((_ is Cons!50284) (t!357358 newBucket!178))))))

(assert (=> d!1363236 (= (noDuplicateKeys!1024 (t!357358 newBucket!178)) e!2782767)))

(declare-fun b!4468813 () Bool)

(declare-fun e!2782768 () Bool)

(assert (=> b!4468813 (= e!2782767 e!2782768)))

(declare-fun res!1853980 () Bool)

(assert (=> b!4468813 (=> (not res!1853980) (not e!2782768))))

(assert (=> b!4468813 (= res!1853980 (not (containsKey!1468 (t!357358 (t!357358 newBucket!178)) (_1!28559 (h!56047 (t!357358 newBucket!178))))))))

(declare-fun b!4468814 () Bool)

(assert (=> b!4468814 (= e!2782768 (noDuplicateKeys!1024 (t!357358 (t!357358 newBucket!178))))))

(assert (= (and d!1363236 (not res!1853979)) b!4468813))

(assert (= (and b!4468813 res!1853980) b!4468814))

(declare-fun m!5175121 () Bool)

(assert (=> b!4468813 m!5175121))

(declare-fun m!5175123 () Bool)

(assert (=> b!4468814 m!5175123))

(assert (=> b!4468341 d!1363236))

(declare-fun d!1363238 () Bool)

(assert (=> d!1363238 (isDefined!8213 (getValueByKey!912 (toList!4055 lm!1477) lt!1657405))))

(declare-fun lt!1657805 () Unit!87585)

(declare-fun choose!28571 (List!50409 (_ BitVec 64)) Unit!87585)

(assert (=> d!1363238 (= lt!1657805 (choose!28571 (toList!4055 lm!1477) lt!1657405))))

(declare-fun e!2782777 () Bool)

(assert (=> d!1363238 e!2782777))

(declare-fun res!1853983 () Bool)

(assert (=> d!1363238 (=> (not res!1853983) (not e!2782777))))

(assert (=> d!1363238 (= res!1853983 (isStrictlySorted!341 (toList!4055 lm!1477)))))

(assert (=> d!1363238 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!816 (toList!4055 lm!1477) lt!1657405) lt!1657805)))

(declare-fun b!4468829 () Bool)

(assert (=> b!4468829 (= e!2782777 (containsKey!1471 (toList!4055 lm!1477) lt!1657405))))

(assert (= (and d!1363238 res!1853983) b!4468829))

(assert (=> d!1363238 m!5174523))

(assert (=> d!1363238 m!5174523))

(assert (=> d!1363238 m!5174525))

(declare-fun m!5175125 () Bool)

(assert (=> d!1363238 m!5175125))

(assert (=> d!1363238 m!5174545))

(assert (=> b!4468829 m!5174519))

(assert (=> b!4468403 d!1363238))

(declare-fun d!1363240 () Bool)

(declare-fun isEmpty!28487 (Option!10926) Bool)

(assert (=> d!1363240 (= (isDefined!8213 (getValueByKey!912 (toList!4055 lm!1477) lt!1657405)) (not (isEmpty!28487 (getValueByKey!912 (toList!4055 lm!1477) lt!1657405))))))

(declare-fun bs!794442 () Bool)

(assert (= bs!794442 d!1363240))

(assert (=> bs!794442 m!5174523))

(declare-fun m!5175127 () Bool)

(assert (=> bs!794442 m!5175127))

(assert (=> b!4468403 d!1363240))

(declare-fun b!4468834 () Bool)

(declare-fun e!2782780 () Option!10926)

(assert (=> b!4468834 (= e!2782780 (Some!10925 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(declare-fun b!4468836 () Bool)

(declare-fun e!2782781 () Option!10926)

(assert (=> b!4468836 (= e!2782781 (getValueByKey!912 (t!357359 (toList!4055 lm!1477)) lt!1657405))))

(declare-fun b!4468837 () Bool)

(assert (=> b!4468837 (= e!2782781 None!10925)))

(declare-fun b!4468835 () Bool)

(assert (=> b!4468835 (= e!2782780 e!2782781)))

(declare-fun c!760743 () Bool)

(assert (=> b!4468835 (= c!760743 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (not (= (_1!28560 (h!56048 (toList!4055 lm!1477))) lt!1657405))))))

(declare-fun d!1363242 () Bool)

(declare-fun c!760742 () Bool)

(assert (=> d!1363242 (= c!760742 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (= (_1!28560 (h!56048 (toList!4055 lm!1477))) lt!1657405)))))

(assert (=> d!1363242 (= (getValueByKey!912 (toList!4055 lm!1477) lt!1657405) e!2782780)))

(assert (= (and d!1363242 c!760742) b!4468834))

(assert (= (and d!1363242 (not c!760742)) b!4468835))

(assert (= (and b!4468835 c!760743) b!4468836))

(assert (= (and b!4468835 (not c!760743)) b!4468837))

(declare-fun m!5175129 () Bool)

(assert (=> b!4468836 m!5175129))

(assert (=> b!4468403 d!1363242))

(declare-fun d!1363244 () Bool)

(assert (=> d!1363244 (= (invariantList!927 (toList!4056 lt!1657555)) (noDuplicatedKeys!213 (toList!4056 lt!1657555)))))

(declare-fun bs!794443 () Bool)

(assert (= bs!794443 d!1363244))

(declare-fun m!5175131 () Bool)

(assert (=> bs!794443 m!5175131))

(assert (=> d!1363096 d!1363244))

(declare-fun d!1363246 () Bool)

(declare-fun res!1853988 () Bool)

(declare-fun e!2782784 () Bool)

(assert (=> d!1363246 (=> res!1853988 e!2782784)))

(assert (=> d!1363246 (= res!1853988 ((_ is Nil!50285) (toList!4055 lt!1657407)))))

(assert (=> d!1363246 (= (forall!9988 (toList!4055 lt!1657407) lambda!163112) e!2782784)))

(declare-fun b!4468842 () Bool)

(declare-fun e!2782785 () Bool)

(assert (=> b!4468842 (= e!2782784 e!2782785)))

(declare-fun res!1853989 () Bool)

(assert (=> b!4468842 (=> (not res!1853989) (not e!2782785))))

(assert (=> b!4468842 (= res!1853989 (dynLambda!21012 lambda!163112 (h!56048 (toList!4055 lt!1657407))))))

(declare-fun b!4468843 () Bool)

(assert (=> b!4468843 (= e!2782785 (forall!9988 (t!357359 (toList!4055 lt!1657407)) lambda!163112))))

(assert (= (and d!1363246 (not res!1853988)) b!4468842))

(assert (= (and b!4468842 res!1853989) b!4468843))

(declare-fun b_lambda!148329 () Bool)

(assert (=> (not b_lambda!148329) (not b!4468842)))

(declare-fun m!5175133 () Bool)

(assert (=> b!4468842 m!5175133))

(declare-fun m!5175135 () Bool)

(assert (=> b!4468843 m!5175135))

(assert (=> d!1363096 d!1363246))

(declare-fun d!1363248 () Bool)

(declare-fun res!1853990 () Bool)

(declare-fun e!2782786 () Bool)

(assert (=> d!1363248 (=> res!1853990 e!2782786)))

(assert (=> d!1363248 (= res!1853990 ((_ is Nil!50285) (t!357359 (toList!4055 lm!1477))))))

(assert (=> d!1363248 (= (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163077) e!2782786)))

(declare-fun b!4468844 () Bool)

(declare-fun e!2782787 () Bool)

(assert (=> b!4468844 (= e!2782786 e!2782787)))

(declare-fun res!1853991 () Bool)

(assert (=> b!4468844 (=> (not res!1853991) (not e!2782787))))

(assert (=> b!4468844 (= res!1853991 (dynLambda!21012 lambda!163077 (h!56048 (t!357359 (toList!4055 lm!1477)))))))

(declare-fun b!4468845 () Bool)

(assert (=> b!4468845 (= e!2782787 (forall!9988 (t!357359 (t!357359 (toList!4055 lm!1477))) lambda!163077))))

(assert (= (and d!1363248 (not res!1853990)) b!4468844))

(assert (= (and b!4468844 res!1853991) b!4468845))

(declare-fun b_lambda!148331 () Bool)

(assert (=> (not b_lambda!148331) (not b!4468844)))

(declare-fun m!5175137 () Bool)

(assert (=> b!4468844 m!5175137))

(declare-fun m!5175139 () Bool)

(assert (=> b!4468845 m!5175139))

(assert (=> b!4468589 d!1363248))

(declare-fun d!1363250 () Bool)

(assert (=> d!1363250 (= (isEmpty!28485 (toList!4055 lm!1477)) ((_ is Nil!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363074 d!1363250))

(assert (=> b!4468405 d!1363240))

(assert (=> b!4468405 d!1363242))

(declare-fun d!1363252 () Bool)

(assert (=> d!1363252 (= (tail!7500 (toList!4055 lm!1477)) (t!357359 (toList!4055 lm!1477)))))

(assert (=> d!1363012 d!1363252))

(declare-fun bs!794460 () Bool)

(declare-fun b!4468894 () Bool)

(assert (= bs!794460 (and b!4468894 b!4468682)))

(declare-fun lambda!163229 () Int)

(assert (=> bs!794460 (= (= (t!357358 (toList!4056 (extractMap!1080 lt!1657413))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163229 lambda!163136))))

(declare-fun bs!794461 () Bool)

(assert (= bs!794461 (and b!4468894 b!4468693)))

(assert (=> bs!794461 (= (= (t!357358 (toList!4056 (extractMap!1080 lt!1657413))) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163229 lambda!163138))))

(assert (=> b!4468894 true))

(declare-fun bs!794462 () Bool)

(declare-fun b!4468890 () Bool)

(assert (= bs!794462 (and b!4468890 b!4468682)))

(declare-fun lambda!163230 () Int)

(assert (=> bs!794462 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163230 lambda!163136))))

(declare-fun bs!794463 () Bool)

(assert (= bs!794463 (and b!4468890 b!4468693)))

(assert (=> bs!794463 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163230 lambda!163138))))

(declare-fun bs!794464 () Bool)

(assert (= bs!794464 (and b!4468890 b!4468894)))

(assert (=> bs!794464 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163230 lambda!163229))))

(assert (=> b!4468890 true))

(declare-fun bs!794465 () Bool)

(declare-fun b!4468892 () Bool)

(assert (= bs!794465 (and b!4468892 b!4468682)))

(declare-fun lambda!163231 () Int)

(assert (=> bs!794465 (= lambda!163231 lambda!163136)))

(declare-fun bs!794466 () Bool)

(assert (= bs!794466 (and b!4468892 b!4468693)))

(assert (=> bs!794466 (= (= (toList!4056 (extractMap!1080 lt!1657413)) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163231 lambda!163138))))

(declare-fun bs!794467 () Bool)

(assert (= bs!794467 (and b!4468892 b!4468894)))

(assert (=> bs!794467 (= (= (toList!4056 (extractMap!1080 lt!1657413)) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163231 lambda!163229))))

(declare-fun bs!794468 () Bool)

(assert (= bs!794468 (and b!4468892 b!4468890)))

(assert (=> bs!794468 (= (= (toList!4056 (extractMap!1080 lt!1657413)) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))) (= lambda!163231 lambda!163230))))

(assert (=> b!4468892 true))

(declare-fun bs!794469 () Bool)

(declare-fun b!4468897 () Bool)

(assert (= bs!794469 (and b!4468897 b!4468683)))

(declare-fun lambda!163232 () Int)

(assert (=> bs!794469 (= lambda!163232 lambda!163137)))

(declare-fun bs!794470 () Bool)

(assert (= bs!794470 (and b!4468897 b!4468694)))

(assert (=> bs!794470 (= lambda!163232 lambda!163139)))

(declare-fun e!2782813 () List!50411)

(assert (=> b!4468890 (= e!2782813 (Cons!50287 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413)))) (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))))))

(declare-fun c!760760 () Bool)

(assert (=> b!4468890 (= c!760760 (containsKey!1472 (t!357358 (toList!4056 (extractMap!1080 lt!1657413))) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))))))))

(declare-fun lt!1657852 () Unit!87585)

(declare-fun e!2782812 () Unit!87585)

(assert (=> b!4468890 (= lt!1657852 e!2782812)))

(declare-fun c!760759 () Bool)

(assert (=> b!4468890 (= c!760759 (contains!12837 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))))))))

(declare-fun lt!1657853 () Unit!87585)

(declare-fun e!2782815 () Unit!87585)

(assert (=> b!4468890 (= lt!1657853 e!2782815)))

(declare-fun lt!1657851 () List!50411)

(assert (=> b!4468890 (= lt!1657851 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))))))

(declare-fun lt!1657854 () Unit!87585)

(declare-fun lemmaForallContainsAddHeadPreserves!120 (List!50408 List!50411 tuple2!50530) Unit!87585)

(assert (=> b!4468890 (= lt!1657854 (lemmaForallContainsAddHeadPreserves!120 (t!357358 (toList!4056 (extractMap!1080 lt!1657413))) lt!1657851 (h!56047 (toList!4056 (extractMap!1080 lt!1657413)))))))

(assert (=> b!4468890 (forall!9992 lt!1657851 lambda!163230)))

(declare-fun lt!1657856 () Unit!87585)

(assert (=> b!4468890 (= lt!1657856 lt!1657854)))

(declare-fun b!4468891 () Bool)

(declare-fun res!1854010 () Bool)

(declare-fun e!2782814 () Bool)

(assert (=> b!4468891 (=> (not res!1854010) (not e!2782814))))

(declare-fun lt!1657850 () List!50411)

(assert (=> b!4468891 (= res!1854010 (= (length!252 lt!1657850) (length!253 (toList!4056 (extractMap!1080 lt!1657413)))))))

(declare-fun res!1854008 () Bool)

(assert (=> b!4468892 (=> (not res!1854008) (not e!2782814))))

(assert (=> b!4468892 (= res!1854008 (forall!9992 lt!1657850 lambda!163231))))

(declare-fun b!4468893 () Bool)

(assert (=> b!4468893 false))

(declare-fun Unit!87629 () Unit!87585)

(assert (=> b!4468893 (= e!2782812 Unit!87629)))

(declare-fun d!1363254 () Bool)

(assert (=> d!1363254 e!2782814))

(declare-fun res!1854009 () Bool)

(assert (=> d!1363254 (=> (not res!1854009) (not e!2782814))))

(assert (=> d!1363254 (= res!1854009 (noDuplicate!698 lt!1657850))))

(assert (=> d!1363254 (= lt!1657850 e!2782813)))

(declare-fun c!760758 () Bool)

(assert (=> d!1363254 (= c!760758 ((_ is Cons!50284) (toList!4056 (extractMap!1080 lt!1657413))))))

(assert (=> d!1363254 (invariantList!927 (toList!4056 (extractMap!1080 lt!1657413)))))

(assert (=> d!1363254 (= (getKeysList!375 (toList!4056 (extractMap!1080 lt!1657413))) lt!1657850)))

(assert (=> b!4468894 false))

(declare-fun lt!1657855 () Unit!87585)

(declare-fun forallContained!2261 (List!50411 Int K!11700) Unit!87585)

(assert (=> b!4468894 (= lt!1657855 (forallContained!2261 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) lambda!163229 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))))))))

(declare-fun Unit!87631 () Unit!87585)

(assert (=> b!4468894 (= e!2782815 Unit!87631)))

(declare-fun b!4468895 () Bool)

(declare-fun Unit!87632 () Unit!87585)

(assert (=> b!4468895 (= e!2782815 Unit!87632)))

(declare-fun b!4468896 () Bool)

(declare-fun Unit!87633 () Unit!87585)

(assert (=> b!4468896 (= e!2782812 Unit!87633)))

(assert (=> b!4468897 (= e!2782814 (= (content!8103 lt!1657850) (content!8103 (map!11021 (toList!4056 (extractMap!1080 lt!1657413)) lambda!163232))))))

(declare-fun b!4468898 () Bool)

(assert (=> b!4468898 (= e!2782813 Nil!50287)))

(assert (= (and d!1363254 c!760758) b!4468890))

(assert (= (and d!1363254 (not c!760758)) b!4468898))

(assert (= (and b!4468890 c!760760) b!4468893))

(assert (= (and b!4468890 (not c!760760)) b!4468896))

(assert (= (and b!4468890 c!760759) b!4468894))

(assert (= (and b!4468890 (not c!760759)) b!4468895))

(assert (= (and d!1363254 res!1854009) b!4468891))

(assert (= (and b!4468891 res!1854010) b!4468892))

(assert (= (and b!4468892 res!1854008) b!4468897))

(declare-fun m!5175205 () Bool)

(assert (=> b!4468891 m!5175205))

(assert (=> b!4468891 m!5174943))

(declare-fun m!5175207 () Bool)

(assert (=> d!1363254 m!5175207))

(declare-fun m!5175209 () Bool)

(assert (=> d!1363254 m!5175209))

(declare-fun m!5175211 () Bool)

(assert (=> b!4468897 m!5175211))

(declare-fun m!5175213 () Bool)

(assert (=> b!4468897 m!5175213))

(assert (=> b!4468897 m!5175213))

(declare-fun m!5175215 () Bool)

(assert (=> b!4468897 m!5175215))

(declare-fun m!5175217 () Bool)

(assert (=> b!4468890 m!5175217))

(declare-fun m!5175219 () Bool)

(assert (=> b!4468890 m!5175219))

(declare-fun m!5175221 () Bool)

(assert (=> b!4468890 m!5175221))

(declare-fun m!5175223 () Bool)

(assert (=> b!4468890 m!5175223))

(declare-fun m!5175225 () Bool)

(assert (=> b!4468890 m!5175225))

(assert (=> b!4468890 m!5175223))

(declare-fun m!5175227 () Bool)

(assert (=> b!4468892 m!5175227))

(assert (=> b!4468894 m!5175223))

(assert (=> b!4468894 m!5175223))

(declare-fun m!5175229 () Bool)

(assert (=> b!4468894 m!5175229))

(assert (=> b!4468569 d!1363254))

(declare-fun d!1363266 () Bool)

(declare-fun e!2782817 () Bool)

(assert (=> d!1363266 e!2782817))

(declare-fun res!1854011 () Bool)

(assert (=> d!1363266 (=> res!1854011 e!2782817)))

(declare-fun lt!1657858 () Bool)

(assert (=> d!1363266 (= res!1854011 (not lt!1657858))))

(declare-fun lt!1657860 () Bool)

(assert (=> d!1363266 (= lt!1657858 lt!1657860)))

(declare-fun lt!1657857 () Unit!87585)

(declare-fun e!2782816 () Unit!87585)

(assert (=> d!1363266 (= lt!1657857 e!2782816)))

(declare-fun c!760761 () Bool)

(assert (=> d!1363266 (= c!760761 lt!1657860)))

(assert (=> d!1363266 (= lt!1657860 (containsKey!1471 (toList!4055 lt!1657585) (_1!28560 lt!1657409)))))

(assert (=> d!1363266 (= (contains!12834 lt!1657585 (_1!28560 lt!1657409)) lt!1657858)))

(declare-fun b!4468901 () Bool)

(declare-fun lt!1657859 () Unit!87585)

(assert (=> b!4468901 (= e!2782816 lt!1657859)))

(assert (=> b!4468901 (= lt!1657859 (lemmaContainsKeyImpliesGetValueByKeyDefined!816 (toList!4055 lt!1657585) (_1!28560 lt!1657409)))))

(assert (=> b!4468901 (isDefined!8213 (getValueByKey!912 (toList!4055 lt!1657585) (_1!28560 lt!1657409)))))

(declare-fun b!4468902 () Bool)

(declare-fun Unit!87644 () Unit!87585)

(assert (=> b!4468902 (= e!2782816 Unit!87644)))

(declare-fun b!4468903 () Bool)

(assert (=> b!4468903 (= e!2782817 (isDefined!8213 (getValueByKey!912 (toList!4055 lt!1657585) (_1!28560 lt!1657409))))))

(assert (= (and d!1363266 c!760761) b!4468901))

(assert (= (and d!1363266 (not c!760761)) b!4468902))

(assert (= (and d!1363266 (not res!1854011)) b!4468903))

(declare-fun m!5175231 () Bool)

(assert (=> d!1363266 m!5175231))

(declare-fun m!5175233 () Bool)

(assert (=> b!4468901 m!5175233))

(assert (=> b!4468901 m!5174727))

(assert (=> b!4468901 m!5174727))

(declare-fun m!5175235 () Bool)

(assert (=> b!4468901 m!5175235))

(assert (=> b!4468903 m!5174727))

(assert (=> b!4468903 m!5174727))

(assert (=> b!4468903 m!5175235))

(assert (=> d!1363106 d!1363266))

(declare-fun b!4468904 () Bool)

(declare-fun e!2782818 () Option!10926)

(assert (=> b!4468904 (= e!2782818 (Some!10925 (_2!28560 (h!56048 lt!1657583))))))

(declare-fun b!4468906 () Bool)

(declare-fun e!2782819 () Option!10926)

(assert (=> b!4468906 (= e!2782819 (getValueByKey!912 (t!357359 lt!1657583) (_1!28560 lt!1657409)))))

(declare-fun b!4468907 () Bool)

(assert (=> b!4468907 (= e!2782819 None!10925)))

(declare-fun b!4468905 () Bool)

(assert (=> b!4468905 (= e!2782818 e!2782819)))

(declare-fun c!760763 () Bool)

(assert (=> b!4468905 (= c!760763 (and ((_ is Cons!50285) lt!1657583) (not (= (_1!28560 (h!56048 lt!1657583)) (_1!28560 lt!1657409)))))))

(declare-fun d!1363268 () Bool)

(declare-fun c!760762 () Bool)

(assert (=> d!1363268 (= c!760762 (and ((_ is Cons!50285) lt!1657583) (= (_1!28560 (h!56048 lt!1657583)) (_1!28560 lt!1657409))))))

(assert (=> d!1363268 (= (getValueByKey!912 lt!1657583 (_1!28560 lt!1657409)) e!2782818)))

(assert (= (and d!1363268 c!760762) b!4468904))

(assert (= (and d!1363268 (not c!760762)) b!4468905))

(assert (= (and b!4468905 c!760763) b!4468906))

(assert (= (and b!4468905 (not c!760763)) b!4468907))

(declare-fun m!5175237 () Bool)

(assert (=> b!4468906 m!5175237))

(assert (=> d!1363106 d!1363268))

(declare-fun d!1363270 () Bool)

(assert (=> d!1363270 (= (getValueByKey!912 lt!1657583 (_1!28560 lt!1657409)) (Some!10925 (_2!28560 lt!1657409)))))

(declare-fun lt!1657863 () Unit!87585)

(declare-fun choose!28572 (List!50409 (_ BitVec 64) List!50408) Unit!87585)

(assert (=> d!1363270 (= lt!1657863 (choose!28572 lt!1657583 (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(declare-fun e!2782822 () Bool)

(assert (=> d!1363270 e!2782822))

(declare-fun res!1854016 () Bool)

(assert (=> d!1363270 (=> (not res!1854016) (not e!2782822))))

(assert (=> d!1363270 (= res!1854016 (isStrictlySorted!341 lt!1657583))))

(assert (=> d!1363270 (= (lemmaContainsTupThenGetReturnValue!584 lt!1657583 (_1!28560 lt!1657409) (_2!28560 lt!1657409)) lt!1657863)))

(declare-fun b!4468912 () Bool)

(declare-fun res!1854017 () Bool)

(assert (=> b!4468912 (=> (not res!1854017) (not e!2782822))))

(assert (=> b!4468912 (= res!1854017 (containsKey!1471 lt!1657583 (_1!28560 lt!1657409)))))

(declare-fun b!4468913 () Bool)

(assert (=> b!4468913 (= e!2782822 (contains!12833 lt!1657583 (tuple2!50533 (_1!28560 lt!1657409) (_2!28560 lt!1657409))))))

(assert (= (and d!1363270 res!1854016) b!4468912))

(assert (= (and b!4468912 res!1854017) b!4468913))

(assert (=> d!1363270 m!5174721))

(declare-fun m!5175239 () Bool)

(assert (=> d!1363270 m!5175239))

(declare-fun m!5175241 () Bool)

(assert (=> d!1363270 m!5175241))

(declare-fun m!5175243 () Bool)

(assert (=> b!4468912 m!5175243))

(declare-fun m!5175245 () Bool)

(assert (=> b!4468913 m!5175245))

(assert (=> d!1363106 d!1363270))

(declare-fun b!4468934 () Bool)

(declare-fun e!2782835 () Bool)

(declare-fun lt!1657866 () List!50409)

(assert (=> b!4468934 (= e!2782835 (contains!12833 lt!1657866 (tuple2!50533 (_1!28560 lt!1657409) (_2!28560 lt!1657409))))))

(declare-fun bm!311128 () Bool)

(declare-fun call!311134 () List!50409)

(declare-fun call!311135 () List!50409)

(assert (=> bm!311128 (= call!311134 call!311135)))

(declare-fun b!4468935 () Bool)

(declare-fun e!2782839 () List!50409)

(declare-fun e!2782837 () List!50409)

(assert (=> b!4468935 (= e!2782839 e!2782837)))

(declare-fun c!760773 () Bool)

(assert (=> b!4468935 (= c!760773 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (= (_1!28560 (h!56048 (toList!4055 lm!1477))) (_1!28560 lt!1657409))))))

(declare-fun b!4468936 () Bool)

(assert (=> b!4468936 (= e!2782839 call!311135)))

(declare-fun b!4468937 () Bool)

(declare-fun e!2782838 () List!50409)

(declare-fun call!311133 () List!50409)

(assert (=> b!4468937 (= e!2782838 call!311133)))

(declare-fun b!4468938 () Bool)

(assert (=> b!4468938 (= e!2782837 call!311134)))

(declare-fun b!4468939 () Bool)

(declare-fun c!760775 () Bool)

(assert (=> b!4468939 (= c!760775 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (bvsgt (_1!28560 (h!56048 (toList!4055 lm!1477))) (_1!28560 lt!1657409))))))

(assert (=> b!4468939 (= e!2782837 e!2782838)))

(declare-fun b!4468940 () Bool)

(assert (=> b!4468940 (= e!2782838 call!311133)))

(declare-fun b!4468941 () Bool)

(declare-fun e!2782836 () List!50409)

(assert (=> b!4468941 (= e!2782836 (insertStrictlySorted!330 (t!357359 (toList!4055 lm!1477)) (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(declare-fun bm!311129 () Bool)

(assert (=> bm!311129 (= call!311133 call!311134)))

(declare-fun c!760772 () Bool)

(declare-fun bm!311130 () Bool)

(declare-fun $colon$colon!850 (List!50409 tuple2!50532) List!50409)

(assert (=> bm!311130 (= call!311135 ($colon$colon!850 e!2782836 (ite c!760772 (h!56048 (toList!4055 lm!1477)) (tuple2!50533 (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))))

(declare-fun c!760774 () Bool)

(assert (=> bm!311130 (= c!760774 c!760772)))

(declare-fun b!4468943 () Bool)

(declare-fun res!1854022 () Bool)

(assert (=> b!4468943 (=> (not res!1854022) (not e!2782835))))

(assert (=> b!4468943 (= res!1854022 (containsKey!1471 lt!1657866 (_1!28560 lt!1657409)))))

(declare-fun d!1363272 () Bool)

(assert (=> d!1363272 e!2782835))

(declare-fun res!1854023 () Bool)

(assert (=> d!1363272 (=> (not res!1854023) (not e!2782835))))

(assert (=> d!1363272 (= res!1854023 (isStrictlySorted!341 lt!1657866))))

(assert (=> d!1363272 (= lt!1657866 e!2782839)))

(assert (=> d!1363272 (= c!760772 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (bvslt (_1!28560 (h!56048 (toList!4055 lm!1477))) (_1!28560 lt!1657409))))))

(assert (=> d!1363272 (isStrictlySorted!341 (toList!4055 lm!1477))))

(assert (=> d!1363272 (= (insertStrictlySorted!330 (toList!4055 lm!1477) (_1!28560 lt!1657409) (_2!28560 lt!1657409)) lt!1657866)))

(declare-fun b!4468942 () Bool)

(assert (=> b!4468942 (= e!2782836 (ite c!760773 (t!357359 (toList!4055 lm!1477)) (ite c!760775 (Cons!50285 (h!56048 (toList!4055 lm!1477)) (t!357359 (toList!4055 lm!1477))) Nil!50285)))))

(assert (= (and d!1363272 c!760772) b!4468936))

(assert (= (and d!1363272 (not c!760772)) b!4468935))

(assert (= (and b!4468935 c!760773) b!4468938))

(assert (= (and b!4468935 (not c!760773)) b!4468939))

(assert (= (and b!4468939 c!760775) b!4468940))

(assert (= (and b!4468939 (not c!760775)) b!4468937))

(assert (= (or b!4468940 b!4468937) bm!311129))

(assert (= (or b!4468938 bm!311129) bm!311128))

(assert (= (or b!4468936 bm!311128) bm!311130))

(assert (= (and bm!311130 c!760774) b!4468941))

(assert (= (and bm!311130 (not c!760774)) b!4468942))

(assert (= (and d!1363272 res!1854023) b!4468943))

(assert (= (and b!4468943 res!1854022) b!4468934))

(declare-fun m!5175247 () Bool)

(assert (=> b!4468943 m!5175247))

(declare-fun m!5175249 () Bool)

(assert (=> d!1363272 m!5175249))

(assert (=> d!1363272 m!5174545))

(declare-fun m!5175251 () Bool)

(assert (=> bm!311130 m!5175251))

(declare-fun m!5175253 () Bool)

(assert (=> b!4468934 m!5175253))

(declare-fun m!5175255 () Bool)

(assert (=> b!4468941 m!5175255))

(assert (=> d!1363106 d!1363272))

(declare-fun lt!1657867 () Bool)

(declare-fun d!1363274 () Bool)

(assert (=> d!1363274 (= lt!1657867 (select (content!8102 (toList!4055 lm!1477)) (tuple2!50533 hash!344 lt!1657408)))))

(declare-fun e!2782841 () Bool)

(assert (=> d!1363274 (= lt!1657867 e!2782841)))

(declare-fun res!1854025 () Bool)

(assert (=> d!1363274 (=> (not res!1854025) (not e!2782841))))

(assert (=> d!1363274 (= res!1854025 ((_ is Cons!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363274 (= (contains!12833 (toList!4055 lm!1477) (tuple2!50533 hash!344 lt!1657408)) lt!1657867)))

(declare-fun b!4468944 () Bool)

(declare-fun e!2782840 () Bool)

(assert (=> b!4468944 (= e!2782841 e!2782840)))

(declare-fun res!1854024 () Bool)

(assert (=> b!4468944 (=> res!1854024 e!2782840)))

(assert (=> b!4468944 (= res!1854024 (= (h!56048 (toList!4055 lm!1477)) (tuple2!50533 hash!344 lt!1657408)))))

(declare-fun b!4468945 () Bool)

(assert (=> b!4468945 (= e!2782840 (contains!12833 (t!357359 (toList!4055 lm!1477)) (tuple2!50533 hash!344 lt!1657408)))))

(assert (= (and d!1363274 res!1854025) b!4468944))

(assert (= (and b!4468944 (not res!1854024)) b!4468945))

(assert (=> d!1363274 m!5174485))

(declare-fun m!5175257 () Bool)

(assert (=> d!1363274 m!5175257))

(declare-fun m!5175259 () Bool)

(assert (=> b!4468945 m!5175259))

(assert (=> d!1363038 d!1363274))

(declare-fun d!1363276 () Bool)

(assert (=> d!1363276 (contains!12833 (toList!4055 lm!1477) (tuple2!50533 hash!344 lt!1657408))))

(assert (=> d!1363276 true))

(declare-fun _$14!984 () Unit!87585)

(assert (=> d!1363276 (= (choose!28563 (toList!4055 lm!1477) hash!344 lt!1657408) _$14!984)))

(declare-fun bs!794471 () Bool)

(assert (= bs!794471 d!1363276))

(assert (=> bs!794471 m!5174541))

(assert (=> d!1363038 d!1363276))

(declare-fun d!1363278 () Bool)

(declare-fun res!1854030 () Bool)

(declare-fun e!2782846 () Bool)

(assert (=> d!1363278 (=> res!1854030 e!2782846)))

(assert (=> d!1363278 (= res!1854030 (or ((_ is Nil!50285) (toList!4055 lm!1477)) ((_ is Nil!50285) (t!357359 (toList!4055 lm!1477)))))))

(assert (=> d!1363278 (= (isStrictlySorted!341 (toList!4055 lm!1477)) e!2782846)))

(declare-fun b!4468950 () Bool)

(declare-fun e!2782847 () Bool)

(assert (=> b!4468950 (= e!2782846 e!2782847)))

(declare-fun res!1854031 () Bool)

(assert (=> b!4468950 (=> (not res!1854031) (not e!2782847))))

(assert (=> b!4468950 (= res!1854031 (bvslt (_1!28560 (h!56048 (toList!4055 lm!1477))) (_1!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))))))

(declare-fun b!4468951 () Bool)

(assert (=> b!4468951 (= e!2782847 (isStrictlySorted!341 (t!357359 (toList!4055 lm!1477))))))

(assert (= (and d!1363278 (not res!1854030)) b!4468950))

(assert (= (and b!4468950 res!1854031) b!4468951))

(declare-fun m!5175261 () Bool)

(assert (=> b!4468951 m!5175261))

(assert (=> d!1363038 d!1363278))

(declare-fun bs!794472 () Bool)

(declare-fun b!4468958 () Bool)

(assert (= bs!794472 (and b!4468958 b!4468792)))

(declare-fun lambda!163233 () Int)

(assert (=> bs!794472 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163233 lambda!163214))))

(declare-fun bs!794473 () Bool)

(assert (= bs!794473 (and b!4468958 d!1363210)))

(assert (=> bs!794473 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) lt!1657792) (= lambda!163233 lambda!163216))))

(declare-fun bs!794474 () Bool)

(assert (= bs!794474 (and b!4468958 d!1363078)))

(assert (=> bs!794474 (not (= lambda!163233 lambda!163106))))

(assert (=> bs!794472 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) lt!1657779) (= lambda!163233 lambda!163215))))

(declare-fun bs!794475 () Bool)

(assert (= bs!794475 (and b!4468958 b!4468796)))

(assert (=> bs!794475 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163233 lambda!163213))))

(assert (=> b!4468958 true))

(declare-fun bs!794476 () Bool)

(declare-fun b!4468954 () Bool)

(assert (= bs!794476 (and b!4468954 b!4468792)))

(declare-fun lambda!163234 () Int)

(assert (=> bs!794476 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163234 lambda!163214))))

(declare-fun bs!794477 () Bool)

(assert (= bs!794477 (and b!4468954 b!4468958)))

(assert (=> bs!794477 (= lambda!163234 lambda!163233)))

(declare-fun bs!794478 () Bool)

(assert (= bs!794478 (and b!4468954 d!1363210)))

(assert (=> bs!794478 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) lt!1657792) (= lambda!163234 lambda!163216))))

(declare-fun bs!794479 () Bool)

(assert (= bs!794479 (and b!4468954 d!1363078)))

(assert (=> bs!794479 (not (= lambda!163234 lambda!163106))))

(assert (=> bs!794476 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) lt!1657779) (= lambda!163234 lambda!163215))))

(declare-fun bs!794480 () Bool)

(assert (= bs!794480 (and b!4468954 b!4468796)))

(assert (=> bs!794480 (= (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163234 lambda!163213))))

(assert (=> b!4468954 true))

(declare-fun lt!1657872 () ListMap!3317)

(declare-fun lambda!163235 () Int)

(assert (=> bs!794476 (= (= lt!1657872 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163235 lambda!163214))))

(assert (=> bs!794477 (= (= lt!1657872 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163235 lambda!163233))))

(assert (=> bs!794478 (= (= lt!1657872 lt!1657792) (= lambda!163235 lambda!163216))))

(assert (=> b!4468954 (= (= lt!1657872 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163235 lambda!163234))))

(assert (=> bs!794479 (not (= lambda!163235 lambda!163106))))

(assert (=> bs!794476 (= (= lt!1657872 lt!1657779) (= lambda!163235 lambda!163215))))

(assert (=> bs!794480 (= (= lt!1657872 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163235 lambda!163213))))

(assert (=> b!4468954 true))

(declare-fun bs!794481 () Bool)

(declare-fun d!1363280 () Bool)

(assert (= bs!794481 (and d!1363280 b!4468792)))

(declare-fun lambda!163236 () Int)

(declare-fun lt!1657885 () ListMap!3317)

(assert (=> bs!794481 (= (= lt!1657885 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163236 lambda!163214))))

(declare-fun bs!794482 () Bool)

(assert (= bs!794482 (and d!1363280 b!4468958)))

(assert (=> bs!794482 (= (= lt!1657885 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163236 lambda!163233))))

(declare-fun bs!794483 () Bool)

(assert (= bs!794483 (and d!1363280 d!1363210)))

(assert (=> bs!794483 (= (= lt!1657885 lt!1657792) (= lambda!163236 lambda!163216))))

(declare-fun bs!794484 () Bool)

(assert (= bs!794484 (and d!1363280 b!4468954)))

(assert (=> bs!794484 (= (= lt!1657885 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163236 lambda!163234))))

(declare-fun bs!794485 () Bool)

(assert (= bs!794485 (and d!1363280 d!1363078)))

(assert (=> bs!794485 (not (= lambda!163236 lambda!163106))))

(assert (=> bs!794484 (= (= lt!1657885 lt!1657872) (= lambda!163236 lambda!163235))))

(assert (=> bs!794481 (= (= lt!1657885 lt!1657779) (= lambda!163236 lambda!163215))))

(declare-fun bs!794486 () Bool)

(assert (= bs!794486 (and d!1363280 b!4468796)))

(assert (=> bs!794486 (= (= lt!1657885 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163236 lambda!163213))))

(assert (=> d!1363280 true))

(declare-fun e!2782849 () ListMap!3317)

(assert (=> b!4468954 (= e!2782849 lt!1657872)))

(declare-fun lt!1657877 () ListMap!3317)

(assert (=> b!4468954 (= lt!1657877 (+!1368 (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407))))))))

(assert (=> b!4468954 (= lt!1657872 (addToMapMapFromBucket!589 (t!357358 (_2!28560 (h!56048 (toList!4055 lt!1657407)))) (+!1368 (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407)))))))))

(declare-fun lt!1657880 () Unit!87585)

(declare-fun call!311136 () Unit!87585)

(assert (=> b!4468954 (= lt!1657880 call!311136)))

(assert (=> b!4468954 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) lambda!163234)))

(declare-fun lt!1657878 () Unit!87585)

(assert (=> b!4468954 (= lt!1657878 lt!1657880)))

(declare-fun call!311138 () Bool)

(assert (=> b!4468954 call!311138))

(declare-fun lt!1657882 () Unit!87585)

(declare-fun Unit!87650 () Unit!87585)

(assert (=> b!4468954 (= lt!1657882 Unit!87650)))

(assert (=> b!4468954 (forall!9990 (t!357358 (_2!28560 (h!56048 (toList!4055 lt!1657407)))) lambda!163235)))

(declare-fun lt!1657875 () Unit!87585)

(declare-fun Unit!87651 () Unit!87585)

(assert (=> b!4468954 (= lt!1657875 Unit!87651)))

(declare-fun lt!1657879 () Unit!87585)

(declare-fun Unit!87652 () Unit!87585)

(assert (=> b!4468954 (= lt!1657879 Unit!87652)))

(declare-fun lt!1657888 () Unit!87585)

(assert (=> b!4468954 (= lt!1657888 (forallContained!2259 (toList!4056 lt!1657877) lambda!163235 (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407))))))))

(assert (=> b!4468954 (contains!12835 lt!1657877 (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407))))))))

(declare-fun lt!1657890 () Unit!87585)

(declare-fun Unit!87654 () Unit!87585)

(assert (=> b!4468954 (= lt!1657890 Unit!87654)))

(assert (=> b!4468954 (contains!12835 lt!1657872 (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407))))))))

(declare-fun lt!1657874 () Unit!87585)

(declare-fun Unit!87655 () Unit!87585)

(assert (=> b!4468954 (= lt!1657874 Unit!87655)))

(assert (=> b!4468954 (forall!9990 (_2!28560 (h!56048 (toList!4055 lt!1657407))) lambda!163235)))

(declare-fun lt!1657883 () Unit!87585)

(declare-fun Unit!87656 () Unit!87585)

(assert (=> b!4468954 (= lt!1657883 Unit!87656)))

(assert (=> b!4468954 (forall!9990 (toList!4056 lt!1657877) lambda!163235)))

(declare-fun lt!1657889 () Unit!87585)

(declare-fun Unit!87658 () Unit!87585)

(assert (=> b!4468954 (= lt!1657889 Unit!87658)))

(declare-fun lt!1657881 () Unit!87585)

(declare-fun Unit!87659 () Unit!87585)

(assert (=> b!4468954 (= lt!1657881 Unit!87659)))

(declare-fun lt!1657887 () Unit!87585)

(assert (=> b!4468954 (= lt!1657887 (addForallContainsKeyThenBeforeAdding!266 (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) lt!1657872 (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407))))) (_2!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lt!1657407)))))))))

(declare-fun call!311137 () Bool)

(assert (=> b!4468954 call!311137))

(declare-fun lt!1657884 () Unit!87585)

(assert (=> b!4468954 (= lt!1657884 lt!1657887)))

(assert (=> b!4468954 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) lambda!163235)))

(declare-fun lt!1657871 () Unit!87585)

(declare-fun Unit!87660 () Unit!87585)

(assert (=> b!4468954 (= lt!1657871 Unit!87660)))

(declare-fun res!1854032 () Bool)

(assert (=> b!4468954 (= res!1854032 (forall!9990 (_2!28560 (h!56048 (toList!4055 lt!1657407))) lambda!163235))))

(declare-fun e!2782848 () Bool)

(assert (=> b!4468954 (=> (not res!1854032) (not e!2782848))))

(assert (=> b!4468954 e!2782848))

(declare-fun lt!1657870 () Unit!87585)

(declare-fun Unit!87661 () Unit!87585)

(assert (=> b!4468954 (= lt!1657870 Unit!87661)))

(declare-fun bm!311131 () Bool)

(declare-fun c!760776 () Bool)

(assert (=> bm!311131 (= call!311137 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (ite c!760776 lambda!163233 lambda!163235)))))

(declare-fun bm!311132 () Bool)

(assert (=> bm!311132 (= call!311138 (forall!9990 (ite c!760776 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (toList!4056 lt!1657877)) (ite c!760776 lambda!163233 lambda!163235)))))

(declare-fun b!4468956 () Bool)

(assert (=> b!4468956 (= e!2782848 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) lambda!163235))))

(declare-fun bm!311133 () Bool)

(assert (=> bm!311133 (= call!311136 (lemmaContainsAllItsOwnKeys!267 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))))))

(declare-fun b!4468957 () Bool)

(declare-fun res!1854034 () Bool)

(declare-fun e!2782850 () Bool)

(assert (=> b!4468957 (=> (not res!1854034) (not e!2782850))))

(assert (=> b!4468957 (= res!1854034 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) lambda!163236))))

(assert (=> b!4468958 (= e!2782849 (extractMap!1080 (t!357359 (toList!4055 lt!1657407))))))

(declare-fun lt!1657886 () Unit!87585)

(assert (=> b!4468958 (= lt!1657886 call!311136)))

(assert (=> b!4468958 call!311137))

(declare-fun lt!1657876 () Unit!87585)

(assert (=> b!4468958 (= lt!1657876 lt!1657886)))

(assert (=> b!4468958 call!311138))

(declare-fun lt!1657873 () Unit!87585)

(declare-fun Unit!87664 () Unit!87585)

(assert (=> b!4468958 (= lt!1657873 Unit!87664)))

(assert (=> d!1363280 e!2782850))

(declare-fun res!1854033 () Bool)

(assert (=> d!1363280 (=> (not res!1854033) (not e!2782850))))

(assert (=> d!1363280 (= res!1854033 (forall!9990 (_2!28560 (h!56048 (toList!4055 lt!1657407))) lambda!163236))))

(assert (=> d!1363280 (= lt!1657885 e!2782849)))

(assert (=> d!1363280 (= c!760776 ((_ is Nil!50284) (_2!28560 (h!56048 (toList!4055 lt!1657407)))))))

(assert (=> d!1363280 (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lt!1657407))))))

(assert (=> d!1363280 (= (addToMapMapFromBucket!589 (_2!28560 (h!56048 (toList!4055 lt!1657407))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) lt!1657885)))

(declare-fun b!4468955 () Bool)

(assert (=> b!4468955 (= e!2782850 (invariantList!927 (toList!4056 lt!1657885)))))

(assert (= (and d!1363280 c!760776) b!4468958))

(assert (= (and d!1363280 (not c!760776)) b!4468954))

(assert (= (and b!4468954 res!1854032) b!4468956))

(assert (= (or b!4468958 b!4468954) bm!311132))

(assert (= (or b!4468958 b!4468954) bm!311131))

(assert (= (or b!4468958 b!4468954) bm!311133))

(assert (= (and d!1363280 res!1854033) b!4468957))

(assert (= (and b!4468957 res!1854034) b!4468955))

(declare-fun m!5175263 () Bool)

(assert (=> bm!311131 m!5175263))

(declare-fun m!5175265 () Bool)

(assert (=> b!4468954 m!5175265))

(assert (=> b!4468954 m!5174673))

(declare-fun m!5175267 () Bool)

(assert (=> b!4468954 m!5175267))

(assert (=> b!4468954 m!5175267))

(declare-fun m!5175269 () Bool)

(assert (=> b!4468954 m!5175269))

(declare-fun m!5175271 () Bool)

(assert (=> b!4468954 m!5175271))

(declare-fun m!5175273 () Bool)

(assert (=> b!4468954 m!5175273))

(declare-fun m!5175275 () Bool)

(assert (=> b!4468954 m!5175275))

(declare-fun m!5175277 () Bool)

(assert (=> b!4468954 m!5175277))

(declare-fun m!5175279 () Bool)

(assert (=> b!4468954 m!5175279))

(declare-fun m!5175281 () Bool)

(assert (=> b!4468954 m!5175281))

(assert (=> b!4468954 m!5174673))

(declare-fun m!5175283 () Bool)

(assert (=> b!4468954 m!5175283))

(assert (=> b!4468954 m!5175275))

(declare-fun m!5175285 () Bool)

(assert (=> b!4468954 m!5175285))

(declare-fun m!5175287 () Bool)

(assert (=> bm!311132 m!5175287))

(declare-fun m!5175289 () Bool)

(assert (=> b!4468957 m!5175289))

(declare-fun m!5175291 () Bool)

(assert (=> b!4468955 m!5175291))

(assert (=> bm!311133 m!5174673))

(declare-fun m!5175293 () Bool)

(assert (=> bm!311133 m!5175293))

(declare-fun m!5175295 () Bool)

(assert (=> d!1363280 m!5175295))

(declare-fun m!5175297 () Bool)

(assert (=> d!1363280 m!5175297))

(assert (=> b!4468956 m!5175279))

(assert (=> b!4468531 d!1363280))

(declare-fun bs!794487 () Bool)

(declare-fun d!1363282 () Bool)

(assert (= bs!794487 (and d!1363282 d!1363114)))

(declare-fun lambda!163237 () Int)

(assert (=> bs!794487 (= lambda!163237 lambda!163117)))

(declare-fun bs!794488 () Bool)

(assert (= bs!794488 (and d!1363282 d!1363190)))

(assert (=> bs!794488 (= lambda!163237 lambda!163131)))

(declare-fun bs!794489 () Bool)

(assert (= bs!794489 (and d!1363282 d!1363066)))

(assert (=> bs!794489 (not (= lambda!163237 lambda!163098))))

(declare-fun bs!794490 () Bool)

(assert (= bs!794490 (and d!1363282 d!1363096)))

(assert (=> bs!794490 (= lambda!163237 lambda!163112)))

(declare-fun bs!794491 () Bool)

(assert (= bs!794491 (and d!1363282 d!1363128)))

(assert (=> bs!794491 (= lambda!163237 lambda!163123)))

(declare-fun bs!794492 () Bool)

(assert (= bs!794492 (and d!1363282 d!1363110)))

(assert (=> bs!794492 (= lambda!163237 lambda!163116)))

(declare-fun bs!794493 () Bool)

(assert (= bs!794493 (and d!1363282 d!1363104)))

(assert (=> bs!794493 (= lambda!163237 lambda!163115)))

(declare-fun bs!794494 () Bool)

(assert (= bs!794494 (and d!1363282 d!1363098)))

(assert (=> bs!794494 (= lambda!163237 lambda!163113)))

(declare-fun bs!794495 () Bool)

(assert (= bs!794495 (and d!1363282 d!1363020)))

(assert (=> bs!794495 (= lambda!163237 lambda!163089)))

(declare-fun bs!794496 () Bool)

(assert (= bs!794496 (and d!1363282 d!1363102)))

(assert (=> bs!794496 (= lambda!163237 lambda!163114)))

(declare-fun bs!794497 () Bool)

(assert (= bs!794497 (and d!1363282 d!1363118)))

(assert (=> bs!794497 (= lambda!163237 lambda!163120)))

(declare-fun bs!794498 () Bool)

(assert (= bs!794498 (and d!1363282 start!438912)))

(assert (=> bs!794498 (= lambda!163237 lambda!163077)))

(declare-fun lt!1657925 () ListMap!3317)

(assert (=> d!1363282 (invariantList!927 (toList!4056 lt!1657925))))

(declare-fun e!2782869 () ListMap!3317)

(assert (=> d!1363282 (= lt!1657925 e!2782869)))

(declare-fun c!760793 () Bool)

(assert (=> d!1363282 (= c!760793 ((_ is Cons!50285) (t!357359 (toList!4055 lt!1657407))))))

(assert (=> d!1363282 (forall!9988 (t!357359 (toList!4055 lt!1657407)) lambda!163237)))

(assert (=> d!1363282 (= (extractMap!1080 (t!357359 (toList!4055 lt!1657407))) lt!1657925)))

(declare-fun b!4468995 () Bool)

(assert (=> b!4468995 (= e!2782869 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 (toList!4055 lt!1657407)))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lt!1657407))))))))

(declare-fun b!4468996 () Bool)

(assert (=> b!4468996 (= e!2782869 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363282 c!760793) b!4468995))

(assert (= (and d!1363282 (not c!760793)) b!4468996))

(declare-fun m!5175299 () Bool)

(assert (=> d!1363282 m!5175299))

(declare-fun m!5175301 () Bool)

(assert (=> d!1363282 m!5175301))

(declare-fun m!5175303 () Bool)

(assert (=> b!4468995 m!5175303))

(assert (=> b!4468995 m!5175303))

(declare-fun m!5175305 () Bool)

(assert (=> b!4468995 m!5175305))

(assert (=> b!4468531 d!1363282))

(declare-fun d!1363284 () Bool)

(declare-fun res!1854045 () Bool)

(declare-fun e!2782874 () Bool)

(assert (=> d!1363284 (=> res!1854045 e!2782874)))

(assert (=> d!1363284 (= res!1854045 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 lt!1657413))) (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 lt!1657413)))) key!3287)))))

(assert (=> d!1363284 (= (containsKey!1472 (toList!4056 (extractMap!1080 lt!1657413)) key!3287) e!2782874)))

(declare-fun b!4469001 () Bool)

(declare-fun e!2782875 () Bool)

(assert (=> b!4469001 (= e!2782874 e!2782875)))

(declare-fun res!1854046 () Bool)

(assert (=> b!4469001 (=> (not res!1854046) (not e!2782875))))

(assert (=> b!4469001 (= res!1854046 ((_ is Cons!50284) (toList!4056 (extractMap!1080 lt!1657413))))))

(declare-fun b!4469002 () Bool)

(assert (=> b!4469002 (= e!2782875 (containsKey!1472 (t!357358 (toList!4056 (extractMap!1080 lt!1657413))) key!3287))))

(assert (= (and d!1363284 (not res!1854045)) b!4469001))

(assert (= (and b!4469001 res!1854046) b!4469002))

(declare-fun m!5175307 () Bool)

(assert (=> b!4469002 m!5175307))

(assert (=> d!1363108 d!1363284))

(declare-fun d!1363286 () Bool)

(assert (=> d!1363286 (= (invariantList!927 (toList!4056 lt!1657581)) (noDuplicatedKeys!213 (toList!4056 lt!1657581)))))

(declare-fun bs!794499 () Bool)

(assert (= bs!794499 d!1363286))

(declare-fun m!5175309 () Bool)

(assert (=> bs!794499 m!5175309))

(assert (=> d!1363102 d!1363286))

(declare-fun d!1363288 () Bool)

(declare-fun res!1854047 () Bool)

(declare-fun e!2782876 () Bool)

(assert (=> d!1363288 (=> res!1854047 e!2782876)))

(assert (=> d!1363288 (= res!1854047 ((_ is Nil!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363288 (= (forall!9988 (toList!4055 lm!1477) lambda!163114) e!2782876)))

(declare-fun b!4469003 () Bool)

(declare-fun e!2782877 () Bool)

(assert (=> b!4469003 (= e!2782876 e!2782877)))

(declare-fun res!1854048 () Bool)

(assert (=> b!4469003 (=> (not res!1854048) (not e!2782877))))

(assert (=> b!4469003 (= res!1854048 (dynLambda!21012 lambda!163114 (h!56048 (toList!4055 lm!1477))))))

(declare-fun b!4469004 () Bool)

(assert (=> b!4469004 (= e!2782877 (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163114))))

(assert (= (and d!1363288 (not res!1854047)) b!4469003))

(assert (= (and b!4469003 res!1854048) b!4469004))

(declare-fun b_lambda!148335 () Bool)

(assert (=> (not b_lambda!148335) (not b!4469003)))

(declare-fun m!5175311 () Bool)

(assert (=> b!4469003 m!5175311))

(declare-fun m!5175313 () Bool)

(assert (=> b!4469004 m!5175313))

(assert (=> d!1363102 d!1363288))

(declare-fun d!1363290 () Bool)

(declare-fun res!1854049 () Bool)

(declare-fun e!2782878 () Bool)

(assert (=> d!1363290 (=> res!1854049 e!2782878)))

(assert (=> d!1363290 (= res!1854049 (not ((_ is Cons!50284) (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(assert (=> d!1363290 (= (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477)))) e!2782878)))

(declare-fun b!4469005 () Bool)

(declare-fun e!2782879 () Bool)

(assert (=> b!4469005 (= e!2782878 e!2782879)))

(declare-fun res!1854050 () Bool)

(assert (=> b!4469005 (=> (not res!1854050) (not e!2782879))))

(assert (=> b!4469005 (= res!1854050 (not (containsKey!1468 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477)))) (_1!28559 (h!56047 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))))

(declare-fun b!4469006 () Bool)

(assert (=> b!4469006 (= e!2782879 (noDuplicateKeys!1024 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(assert (= (and d!1363290 (not res!1854049)) b!4469005))

(assert (= (and b!4469005 res!1854050) b!4469006))

(declare-fun m!5175315 () Bool)

(assert (=> b!4469005 m!5175315))

(declare-fun m!5175317 () Bool)

(assert (=> b!4469006 m!5175317))

(assert (=> bs!794372 d!1363290))

(declare-fun bs!794500 () Bool)

(declare-fun b!4469011 () Bool)

(assert (= bs!794500 (and b!4469011 b!4468792)))

(declare-fun lambda!163238 () Int)

(assert (=> bs!794500 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163238 lambda!163214))))

(declare-fun bs!794501 () Bool)

(assert (= bs!794501 (and b!4469011 b!4468958)))

(assert (=> bs!794501 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163238 lambda!163233))))

(declare-fun bs!794502 () Bool)

(assert (= bs!794502 (and b!4469011 d!1363210)))

(assert (=> bs!794502 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657792) (= lambda!163238 lambda!163216))))

(declare-fun bs!794503 () Bool)

(assert (= bs!794503 (and b!4469011 b!4468954)))

(assert (=> bs!794503 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163238 lambda!163234))))

(declare-fun bs!794504 () Bool)

(assert (= bs!794504 (and b!4469011 d!1363078)))

(assert (=> bs!794504 (not (= lambda!163238 lambda!163106))))

(assert (=> bs!794503 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657872) (= lambda!163238 lambda!163235))))

(assert (=> bs!794500 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657779) (= lambda!163238 lambda!163215))))

(declare-fun bs!794505 () Bool)

(assert (= bs!794505 (and b!4469011 d!1363280)))

(assert (=> bs!794505 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657885) (= lambda!163238 lambda!163236))))

(declare-fun bs!794506 () Bool)

(assert (= bs!794506 (and b!4469011 b!4468796)))

(assert (=> bs!794506 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163238 lambda!163213))))

(assert (=> b!4469011 true))

(declare-fun bs!794507 () Bool)

(declare-fun b!4469007 () Bool)

(assert (= bs!794507 (and b!4469007 b!4468792)))

(declare-fun lambda!163239 () Int)

(assert (=> bs!794507 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163239 lambda!163214))))

(declare-fun bs!794508 () Bool)

(assert (= bs!794508 (and b!4469007 b!4468958)))

(assert (=> bs!794508 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163239 lambda!163233))))

(declare-fun bs!794509 () Bool)

(assert (= bs!794509 (and b!4469007 d!1363210)))

(assert (=> bs!794509 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657792) (= lambda!163239 lambda!163216))))

(declare-fun bs!794510 () Bool)

(assert (= bs!794510 (and b!4469007 b!4468954)))

(assert (=> bs!794510 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163239 lambda!163234))))

(declare-fun bs!794511 () Bool)

(assert (= bs!794511 (and b!4469007 b!4469011)))

(assert (=> bs!794511 (= lambda!163239 lambda!163238)))

(declare-fun bs!794512 () Bool)

(assert (= bs!794512 (and b!4469007 d!1363078)))

(assert (=> bs!794512 (not (= lambda!163239 lambda!163106))))

(assert (=> bs!794510 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657872) (= lambda!163239 lambda!163235))))

(assert (=> bs!794507 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657779) (= lambda!163239 lambda!163215))))

(declare-fun bs!794513 () Bool)

(assert (= bs!794513 (and b!4469007 d!1363280)))

(assert (=> bs!794513 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657885) (= lambda!163239 lambda!163236))))

(declare-fun bs!794514 () Bool)

(assert (= bs!794514 (and b!4469007 b!4468796)))

(assert (=> bs!794514 (= (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163239 lambda!163213))))

(assert (=> b!4469007 true))

(declare-fun lt!1657928 () ListMap!3317)

(declare-fun lambda!163240 () Int)

(assert (=> bs!794507 (= (= lt!1657928 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163240 lambda!163214))))

(assert (=> bs!794508 (= (= lt!1657928 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163240 lambda!163233))))

(assert (=> bs!794509 (= (= lt!1657928 lt!1657792) (= lambda!163240 lambda!163216))))

(assert (=> bs!794510 (= (= lt!1657928 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163240 lambda!163234))))

(assert (=> bs!794511 (= (= lt!1657928 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163240 lambda!163238))))

(assert (=> bs!794512 (not (= lambda!163240 lambda!163106))))

(assert (=> bs!794510 (= (= lt!1657928 lt!1657872) (= lambda!163240 lambda!163235))))

(assert (=> bs!794507 (= (= lt!1657928 lt!1657779) (= lambda!163240 lambda!163215))))

(assert (=> bs!794514 (= (= lt!1657928 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163240 lambda!163213))))

(assert (=> b!4469007 (= (= lt!1657928 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163240 lambda!163239))))

(assert (=> bs!794513 (= (= lt!1657928 lt!1657885) (= lambda!163240 lambda!163236))))

(assert (=> b!4469007 true))

(declare-fun bs!794515 () Bool)

(declare-fun d!1363292 () Bool)

(assert (= bs!794515 (and d!1363292 b!4468792)))

(declare-fun lambda!163241 () Int)

(declare-fun lt!1657941 () ListMap!3317)

(assert (=> bs!794515 (= (= lt!1657941 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163241 lambda!163214))))

(declare-fun bs!794516 () Bool)

(assert (= bs!794516 (and d!1363292 b!4468958)))

(assert (=> bs!794516 (= (= lt!1657941 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163241 lambda!163233))))

(declare-fun bs!794517 () Bool)

(assert (= bs!794517 (and d!1363292 d!1363210)))

(assert (=> bs!794517 (= (= lt!1657941 lt!1657792) (= lambda!163241 lambda!163216))))

(declare-fun bs!794518 () Bool)

(assert (= bs!794518 (and d!1363292 b!4469011)))

(assert (=> bs!794518 (= (= lt!1657941 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163241 lambda!163238))))

(declare-fun bs!794519 () Bool)

(assert (= bs!794519 (and d!1363292 d!1363078)))

(assert (=> bs!794519 (not (= lambda!163241 lambda!163106))))

(declare-fun bs!794520 () Bool)

(assert (= bs!794520 (and d!1363292 b!4468954)))

(assert (=> bs!794520 (= (= lt!1657941 lt!1657872) (= lambda!163241 lambda!163235))))

(assert (=> bs!794515 (= (= lt!1657941 lt!1657779) (= lambda!163241 lambda!163215))))

(declare-fun bs!794521 () Bool)

(assert (= bs!794521 (and d!1363292 b!4468796)))

(assert (=> bs!794521 (= (= lt!1657941 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163241 lambda!163213))))

(declare-fun bs!794522 () Bool)

(assert (= bs!794522 (and d!1363292 b!4469007)))

(assert (=> bs!794522 (= (= lt!1657941 lt!1657928) (= lambda!163241 lambda!163240))))

(assert (=> bs!794520 (= (= lt!1657941 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163241 lambda!163234))))

(assert (=> bs!794522 (= (= lt!1657941 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163241 lambda!163239))))

(declare-fun bs!794523 () Bool)

(assert (= bs!794523 (and d!1363292 d!1363280)))

(assert (=> bs!794523 (= (= lt!1657941 lt!1657885) (= lambda!163241 lambda!163236))))

(assert (=> d!1363292 true))

(declare-fun e!2782881 () ListMap!3317)

(assert (=> b!4469007 (= e!2782881 lt!1657928)))

(declare-fun lt!1657933 () ListMap!3317)

(assert (=> b!4469007 (= lt!1657933 (+!1368 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))))))))

(assert (=> b!4469007 (= lt!1657928 (addToMapMapFromBucket!589 (t!357358 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))) (+!1368 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))))))))

(declare-fun lt!1657936 () Unit!87585)

(declare-fun call!311151 () Unit!87585)

(assert (=> b!4469007 (= lt!1657936 call!311151)))

(assert (=> b!4469007 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) lambda!163239)))

(declare-fun lt!1657934 () Unit!87585)

(assert (=> b!4469007 (= lt!1657934 lt!1657936)))

(declare-fun call!311153 () Bool)

(assert (=> b!4469007 call!311153))

(declare-fun lt!1657938 () Unit!87585)

(declare-fun Unit!87666 () Unit!87585)

(assert (=> b!4469007 (= lt!1657938 Unit!87666)))

(assert (=> b!4469007 (forall!9990 (t!357358 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))) lambda!163240)))

(declare-fun lt!1657931 () Unit!87585)

(declare-fun Unit!87668 () Unit!87585)

(assert (=> b!4469007 (= lt!1657931 Unit!87668)))

(declare-fun lt!1657935 () Unit!87585)

(declare-fun Unit!87669 () Unit!87585)

(assert (=> b!4469007 (= lt!1657935 Unit!87669)))

(declare-fun lt!1657944 () Unit!87585)

(assert (=> b!4469007 (= lt!1657944 (forallContained!2259 (toList!4056 lt!1657933) lambda!163240 (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))))))))

(assert (=> b!4469007 (contains!12835 lt!1657933 (_1!28559 (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))))))))

(declare-fun lt!1657946 () Unit!87585)

(declare-fun Unit!87670 () Unit!87585)

(assert (=> b!4469007 (= lt!1657946 Unit!87670)))

(assert (=> b!4469007 (contains!12835 lt!1657928 (_1!28559 (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))))))))

(declare-fun lt!1657930 () Unit!87585)

(declare-fun Unit!87671 () Unit!87585)

(assert (=> b!4469007 (= lt!1657930 Unit!87671)))

(assert (=> b!4469007 (forall!9990 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))) lambda!163240)))

(declare-fun lt!1657939 () Unit!87585)

(declare-fun Unit!87672 () Unit!87585)

(assert (=> b!4469007 (= lt!1657939 Unit!87672)))

(assert (=> b!4469007 (forall!9990 (toList!4056 lt!1657933) lambda!163240)))

(declare-fun lt!1657945 () Unit!87585)

(declare-fun Unit!87673 () Unit!87585)

(assert (=> b!4469007 (= lt!1657945 Unit!87673)))

(declare-fun lt!1657937 () Unit!87585)

(declare-fun Unit!87675 () Unit!87585)

(assert (=> b!4469007 (= lt!1657937 Unit!87675)))

(declare-fun lt!1657943 () Unit!87585)

(assert (=> b!4469007 (= lt!1657943 (addForallContainsKeyThenBeforeAdding!266 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657928 (_1!28559 (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))))) (_2!28559 (h!56047 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))))))))

(declare-fun call!311152 () Bool)

(assert (=> b!4469007 call!311152))

(declare-fun lt!1657940 () Unit!87585)

(assert (=> b!4469007 (= lt!1657940 lt!1657943)))

(assert (=> b!4469007 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) lambda!163240)))

(declare-fun lt!1657927 () Unit!87585)

(declare-fun Unit!87678 () Unit!87585)

(assert (=> b!4469007 (= lt!1657927 Unit!87678)))

(declare-fun res!1854051 () Bool)

(assert (=> b!4469007 (= res!1854051 (forall!9990 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))) lambda!163240))))

(declare-fun e!2782880 () Bool)

(assert (=> b!4469007 (=> (not res!1854051) (not e!2782880))))

(assert (=> b!4469007 e!2782880))

(declare-fun lt!1657926 () Unit!87585)

(declare-fun Unit!87681 () Unit!87585)

(assert (=> b!4469007 (= lt!1657926 Unit!87681)))

(declare-fun c!760794 () Bool)

(declare-fun bm!311146 () Bool)

(assert (=> bm!311146 (= call!311152 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (ite c!760794 lambda!163238 lambda!163240)))))

(declare-fun bm!311147 () Bool)

(assert (=> bm!311147 (= call!311153 (forall!9990 (ite c!760794 (toList!4056 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (toList!4056 lt!1657933)) (ite c!760794 lambda!163238 lambda!163240)))))

(declare-fun b!4469009 () Bool)

(assert (=> b!4469009 (= e!2782880 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) lambda!163240))))

(declare-fun bm!311148 () Bool)

(assert (=> bm!311148 (= call!311151 (lemmaContainsAllItsOwnKeys!267 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))))))

(declare-fun b!4469010 () Bool)

(declare-fun res!1854053 () Bool)

(declare-fun e!2782882 () Bool)

(assert (=> b!4469010 (=> (not res!1854053) (not e!2782882))))

(assert (=> b!4469010 (= res!1854053 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) lambda!163241))))

(assert (=> b!4469011 (= e!2782881 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))))))

(declare-fun lt!1657942 () Unit!87585)

(assert (=> b!4469011 (= lt!1657942 call!311151)))

(assert (=> b!4469011 call!311152))

(declare-fun lt!1657932 () Unit!87585)

(assert (=> b!4469011 (= lt!1657932 lt!1657942)))

(assert (=> b!4469011 call!311153))

(declare-fun lt!1657929 () Unit!87585)

(declare-fun Unit!87686 () Unit!87585)

(assert (=> b!4469011 (= lt!1657929 Unit!87686)))

(assert (=> d!1363292 e!2782882))

(declare-fun res!1854052 () Bool)

(assert (=> d!1363292 (=> (not res!1854052) (not e!2782882))))

(assert (=> d!1363292 (= res!1854052 (forall!9990 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))) lambda!163241))))

(assert (=> d!1363292 (= lt!1657941 e!2782881)))

(assert (=> d!1363292 (= c!760794 ((_ is Nil!50284) (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))))))

(assert (=> d!1363292 (noDuplicateKeys!1024 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))))))

(assert (=> d!1363292 (= (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477)))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) lt!1657941)))

(declare-fun b!4469008 () Bool)

(assert (=> b!4469008 (= e!2782882 (invariantList!927 (toList!4056 lt!1657941)))))

(assert (= (and d!1363292 c!760794) b!4469011))

(assert (= (and d!1363292 (not c!760794)) b!4469007))

(assert (= (and b!4469007 res!1854051) b!4469009))

(assert (= (or b!4469011 b!4469007) bm!311147))

(assert (= (or b!4469011 b!4469007) bm!311146))

(assert (= (or b!4469011 b!4469007) bm!311148))

(assert (= (and d!1363292 res!1854052) b!4469010))

(assert (= (and b!4469010 res!1854053) b!4469008))

(declare-fun m!5175319 () Bool)

(assert (=> bm!311146 m!5175319))

(declare-fun m!5175321 () Bool)

(assert (=> b!4469007 m!5175321))

(assert (=> b!4469007 m!5174681))

(declare-fun m!5175323 () Bool)

(assert (=> b!4469007 m!5175323))

(assert (=> b!4469007 m!5175323))

(declare-fun m!5175325 () Bool)

(assert (=> b!4469007 m!5175325))

(declare-fun m!5175329 () Bool)

(assert (=> b!4469007 m!5175329))

(declare-fun m!5175331 () Bool)

(assert (=> b!4469007 m!5175331))

(declare-fun m!5175333 () Bool)

(assert (=> b!4469007 m!5175333))

(declare-fun m!5175335 () Bool)

(assert (=> b!4469007 m!5175335))

(declare-fun m!5175339 () Bool)

(assert (=> b!4469007 m!5175339))

(declare-fun m!5175341 () Bool)

(assert (=> b!4469007 m!5175341))

(assert (=> b!4469007 m!5174681))

(declare-fun m!5175345 () Bool)

(assert (=> b!4469007 m!5175345))

(assert (=> b!4469007 m!5175333))

(declare-fun m!5175351 () Bool)

(assert (=> b!4469007 m!5175351))

(declare-fun m!5175355 () Bool)

(assert (=> bm!311147 m!5175355))

(declare-fun m!5175357 () Bool)

(assert (=> b!4469010 m!5175357))

(declare-fun m!5175359 () Bool)

(assert (=> b!4469008 m!5175359))

(assert (=> bm!311148 m!5174681))

(declare-fun m!5175363 () Bool)

(assert (=> bm!311148 m!5175363))

(declare-fun m!5175365 () Bool)

(assert (=> d!1363292 m!5175365))

(declare-fun m!5175369 () Bool)

(assert (=> d!1363292 m!5175369))

(assert (=> b!4469009 m!5175339))

(assert (=> b!4468533 d!1363292))

(declare-fun bs!794524 () Bool)

(declare-fun d!1363294 () Bool)

(assert (= bs!794524 (and d!1363294 d!1363114)))

(declare-fun lambda!163242 () Int)

(assert (=> bs!794524 (= lambda!163242 lambda!163117)))

(declare-fun bs!794525 () Bool)

(assert (= bs!794525 (and d!1363294 d!1363066)))

(assert (=> bs!794525 (not (= lambda!163242 lambda!163098))))

(declare-fun bs!794526 () Bool)

(assert (= bs!794526 (and d!1363294 d!1363096)))

(assert (=> bs!794526 (= lambda!163242 lambda!163112)))

(declare-fun bs!794527 () Bool)

(assert (= bs!794527 (and d!1363294 d!1363128)))

(assert (=> bs!794527 (= lambda!163242 lambda!163123)))

(declare-fun bs!794528 () Bool)

(assert (= bs!794528 (and d!1363294 d!1363110)))

(assert (=> bs!794528 (= lambda!163242 lambda!163116)))

(declare-fun bs!794529 () Bool)

(assert (= bs!794529 (and d!1363294 d!1363104)))

(assert (=> bs!794529 (= lambda!163242 lambda!163115)))

(declare-fun bs!794530 () Bool)

(assert (= bs!794530 (and d!1363294 d!1363098)))

(assert (=> bs!794530 (= lambda!163242 lambda!163113)))

(declare-fun bs!794531 () Bool)

(assert (= bs!794531 (and d!1363294 d!1363190)))

(assert (=> bs!794531 (= lambda!163242 lambda!163131)))

(declare-fun bs!794532 () Bool)

(assert (= bs!794532 (and d!1363294 d!1363282)))

(assert (=> bs!794532 (= lambda!163242 lambda!163237)))

(declare-fun bs!794533 () Bool)

(assert (= bs!794533 (and d!1363294 d!1363020)))

(assert (=> bs!794533 (= lambda!163242 lambda!163089)))

(declare-fun bs!794534 () Bool)

(assert (= bs!794534 (and d!1363294 d!1363102)))

(assert (=> bs!794534 (= lambda!163242 lambda!163114)))

(declare-fun bs!794535 () Bool)

(assert (= bs!794535 (and d!1363294 d!1363118)))

(assert (=> bs!794535 (= lambda!163242 lambda!163120)))

(declare-fun bs!794536 () Bool)

(assert (= bs!794536 (and d!1363294 start!438912)))

(assert (=> bs!794536 (= lambda!163242 lambda!163077)))

(declare-fun lt!1657965 () ListMap!3317)

(assert (=> d!1363294 (invariantList!927 (toList!4056 lt!1657965))))

(declare-fun e!2782892 () ListMap!3317)

(assert (=> d!1363294 (= lt!1657965 e!2782892)))

(declare-fun c!760803 () Bool)

(assert (=> d!1363294 (= c!760803 ((_ is Cons!50285) (t!357359 (t!357359 (toList!4055 lm!1477)))))))

(assert (=> d!1363294 (forall!9988 (t!357359 (t!357359 (toList!4055 lm!1477))) lambda!163242)))

(assert (=> d!1363294 (= (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477)))) lt!1657965)))

(declare-fun b!4469031 () Bool)

(assert (=> b!4469031 (= e!2782892 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 (t!357359 (toList!4055 lm!1477))))) (extractMap!1080 (t!357359 (t!357359 (t!357359 (toList!4055 lm!1477)))))))))

(declare-fun b!4469032 () Bool)

(assert (=> b!4469032 (= e!2782892 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363294 c!760803) b!4469031))

(assert (= (and d!1363294 (not c!760803)) b!4469032))

(declare-fun m!5175413 () Bool)

(assert (=> d!1363294 m!5175413))

(declare-fun m!5175415 () Bool)

(assert (=> d!1363294 m!5175415))

(declare-fun m!5175417 () Bool)

(assert (=> b!4469031 m!5175417))

(assert (=> b!4469031 m!5175417))

(declare-fun m!5175419 () Bool)

(assert (=> b!4469031 m!5175419))

(assert (=> b!4468533 d!1363294))

(assert (=> b!4468561 d!1363200))

(declare-fun b!4469038 () Bool)

(declare-fun e!2782896 () List!50408)

(declare-fun e!2782895 () List!50408)

(assert (=> b!4469038 (= e!2782896 e!2782895)))

(declare-fun c!760806 () Bool)

(assert (=> b!4469038 (= c!760806 ((_ is Cons!50284) (t!357358 lt!1657408)))))

(declare-fun b!4469040 () Bool)

(assert (=> b!4469040 (= e!2782895 Nil!50284)))

(declare-fun d!1363298 () Bool)

(declare-fun lt!1657966 () List!50408)

(assert (=> d!1363298 (not (containsKey!1468 lt!1657966 key!3287))))

(assert (=> d!1363298 (= lt!1657966 e!2782896)))

(declare-fun c!760807 () Bool)

(assert (=> d!1363298 (= c!760807 (and ((_ is Cons!50284) (t!357358 lt!1657408)) (= (_1!28559 (h!56047 (t!357358 lt!1657408))) key!3287)))))

(assert (=> d!1363298 (noDuplicateKeys!1024 (t!357358 lt!1657408))))

(assert (=> d!1363298 (= (removePairForKey!651 (t!357358 lt!1657408) key!3287) lt!1657966)))

(declare-fun b!4469039 () Bool)

(assert (=> b!4469039 (= e!2782895 (Cons!50284 (h!56047 (t!357358 lt!1657408)) (removePairForKey!651 (t!357358 (t!357358 lt!1657408)) key!3287)))))

(declare-fun b!4469037 () Bool)

(assert (=> b!4469037 (= e!2782896 (t!357358 (t!357358 lt!1657408)))))

(assert (= (and d!1363298 c!760807) b!4469037))

(assert (= (and d!1363298 (not c!760807)) b!4469038))

(assert (= (and b!4469038 c!760806) b!4469039))

(assert (= (and b!4469038 (not c!760806)) b!4469040))

(declare-fun m!5175423 () Bool)

(assert (=> d!1363298 m!5175423))

(declare-fun m!5175427 () Bool)

(assert (=> d!1363298 m!5175427))

(declare-fun m!5175429 () Bool)

(assert (=> b!4469039 m!5175429))

(assert (=> b!4468474 d!1363298))

(declare-fun b!4469043 () Bool)

(declare-fun e!2782899 () Option!10926)

(assert (=> b!4469043 (= e!2782899 (Some!10925 (_2!28560 (h!56048 (toList!4055 lt!1657446)))))))

(declare-fun b!4469045 () Bool)

(declare-fun e!2782900 () Option!10926)

(assert (=> b!4469045 (= e!2782900 (getValueByKey!912 (t!357359 (toList!4055 lt!1657446)) (_1!28560 lt!1657409)))))

(declare-fun b!4469046 () Bool)

(assert (=> b!4469046 (= e!2782900 None!10925)))

(declare-fun b!4469044 () Bool)

(assert (=> b!4469044 (= e!2782899 e!2782900)))

(declare-fun c!760809 () Bool)

(assert (=> b!4469044 (= c!760809 (and ((_ is Cons!50285) (toList!4055 lt!1657446)) (not (= (_1!28560 (h!56048 (toList!4055 lt!1657446))) (_1!28560 lt!1657409)))))))

(declare-fun d!1363304 () Bool)

(declare-fun c!760808 () Bool)

(assert (=> d!1363304 (= c!760808 (and ((_ is Cons!50285) (toList!4055 lt!1657446)) (= (_1!28560 (h!56048 (toList!4055 lt!1657446))) (_1!28560 lt!1657409))))))

(assert (=> d!1363304 (= (getValueByKey!912 (toList!4055 lt!1657446) (_1!28560 lt!1657409)) e!2782899)))

(assert (= (and d!1363304 c!760808) b!4469043))

(assert (= (and d!1363304 (not c!760808)) b!4469044))

(assert (= (and b!4469044 c!760809) b!4469045))

(assert (= (and b!4469044 (not c!760809)) b!4469046))

(declare-fun m!5175431 () Bool)

(assert (=> b!4469045 m!5175431))

(assert (=> b!4468353 d!1363304))

(assert (=> d!1363128 d!1363100))

(assert (=> d!1363128 d!1363102))

(declare-fun d!1363306 () Bool)

(assert (=> d!1363306 (not (contains!12835 (extractMap!1080 (toList!4055 lm!1477)) key!3287))))

(assert (=> d!1363306 true))

(declare-fun _$26!236 () Unit!87585)

(assert (=> d!1363306 (= (choose!28567 lm!1477 key!3287 hashF!1107) _$26!236)))

(declare-fun bs!794574 () Bool)

(assert (= bs!794574 d!1363306))

(assert (=> bs!794574 m!5174373))

(assert (=> bs!794574 m!5174373))

(assert (=> bs!794574 m!5174375))

(assert (=> d!1363128 d!1363306))

(declare-fun d!1363312 () Bool)

(declare-fun res!1854062 () Bool)

(declare-fun e!2782905 () Bool)

(assert (=> d!1363312 (=> res!1854062 e!2782905)))

(assert (=> d!1363312 (= res!1854062 ((_ is Nil!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363312 (= (forall!9988 (toList!4055 lm!1477) lambda!163123) e!2782905)))

(declare-fun b!4469054 () Bool)

(declare-fun e!2782906 () Bool)

(assert (=> b!4469054 (= e!2782905 e!2782906)))

(declare-fun res!1854063 () Bool)

(assert (=> b!4469054 (=> (not res!1854063) (not e!2782906))))

(assert (=> b!4469054 (= res!1854063 (dynLambda!21012 lambda!163123 (h!56048 (toList!4055 lm!1477))))))

(declare-fun b!4469055 () Bool)

(assert (=> b!4469055 (= e!2782906 (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163123))))

(assert (= (and d!1363312 (not res!1854062)) b!4469054))

(assert (= (and b!4469054 res!1854063) b!4469055))

(declare-fun b_lambda!148339 () Bool)

(assert (=> (not b_lambda!148339) (not b!4469054)))

(declare-fun m!5175477 () Bool)

(assert (=> b!4469054 m!5175477))

(declare-fun m!5175479 () Bool)

(assert (=> b!4469055 m!5175479))

(assert (=> d!1363128 d!1363312))

(assert (=> b!4468556 d!1363166))

(assert (=> b!4468556 d!1363168))

(declare-fun d!1363316 () Bool)

(declare-fun res!1854073 () Bool)

(declare-fun e!2782921 () Bool)

(assert (=> d!1363316 (=> res!1854073 e!2782921)))

(assert (=> d!1363316 (= res!1854073 (and ((_ is Cons!50285) (toList!4055 lm!1477)) (= (_1!28560 (h!56048 (toList!4055 lm!1477))) lt!1657405)))))

(assert (=> d!1363316 (= (containsKey!1471 (toList!4055 lm!1477) lt!1657405) e!2782921)))

(declare-fun b!4469079 () Bool)

(declare-fun e!2782922 () Bool)

(assert (=> b!4469079 (= e!2782921 e!2782922)))

(declare-fun res!1854074 () Bool)

(assert (=> b!4469079 (=> (not res!1854074) (not e!2782922))))

(assert (=> b!4469079 (= res!1854074 (and (or (not ((_ is Cons!50285) (toList!4055 lm!1477))) (bvsle (_1!28560 (h!56048 (toList!4055 lm!1477))) lt!1657405)) ((_ is Cons!50285) (toList!4055 lm!1477)) (bvslt (_1!28560 (h!56048 (toList!4055 lm!1477))) lt!1657405)))))

(declare-fun b!4469080 () Bool)

(assert (=> b!4469080 (= e!2782922 (containsKey!1471 (t!357359 (toList!4055 lm!1477)) lt!1657405))))

(assert (= (and d!1363316 (not res!1854073)) b!4469079))

(assert (= (and b!4469079 res!1854074) b!4469080))

(declare-fun m!5175509 () Bool)

(assert (=> b!4469080 m!5175509))

(assert (=> d!1363032 d!1363316))

(declare-fun d!1363326 () Bool)

(declare-fun lt!1658016 () Bool)

(assert (=> d!1363326 (= lt!1658016 (select (content!8102 (t!357359 (toList!4055 lm!1477))) lt!1657410))))

(declare-fun e!2782927 () Bool)

(assert (=> d!1363326 (= lt!1658016 e!2782927)))

(declare-fun res!1854079 () Bool)

(assert (=> d!1363326 (=> (not res!1854079) (not e!2782927))))

(assert (=> d!1363326 (= res!1854079 ((_ is Cons!50285) (t!357359 (toList!4055 lm!1477))))))

(assert (=> d!1363326 (= (contains!12833 (t!357359 (toList!4055 lm!1477)) lt!1657410) lt!1658016)))

(declare-fun b!4469086 () Bool)

(declare-fun e!2782926 () Bool)

(assert (=> b!4469086 (= e!2782927 e!2782926)))

(declare-fun res!1854078 () Bool)

(assert (=> b!4469086 (=> res!1854078 e!2782926)))

(assert (=> b!4469086 (= res!1854078 (= (h!56048 (t!357359 (toList!4055 lm!1477))) lt!1657410))))

(declare-fun b!4469087 () Bool)

(assert (=> b!4469087 (= e!2782926 (contains!12833 (t!357359 (t!357359 (toList!4055 lm!1477))) lt!1657410))))

(assert (= (and d!1363326 res!1854079) b!4469086))

(assert (= (and b!4469086 (not res!1854078)) b!4469087))

(declare-fun m!5175511 () Bool)

(assert (=> d!1363326 m!5175511))

(declare-fun m!5175513 () Bool)

(assert (=> d!1363326 m!5175513))

(declare-fun m!5175515 () Bool)

(assert (=> b!4469087 m!5175515))

(assert (=> b!4468366 d!1363326))

(assert (=> b!4468558 d!1363198))

(assert (=> b!4468558 d!1363200))

(assert (=> d!1363112 d!1363104))

(declare-fun d!1363328 () Bool)

(assert (=> d!1363328 (eq!517 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)) (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287))))

(assert (=> d!1363328 true))

(declare-fun _$18!204 () Unit!87585)

(assert (=> d!1363328 (= (choose!28565 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!204)))

(declare-fun bs!794629 () Bool)

(assert (= bs!794629 d!1363328))

(assert (=> bs!794629 m!5174759))

(assert (=> bs!794629 m!5174323))

(assert (=> bs!794629 m!5174323))

(assert (=> bs!794629 m!5174325))

(assert (=> bs!794629 m!5174759))

(assert (=> bs!794629 m!5174325))

(assert (=> bs!794629 m!5174763))

(assert (=> d!1363112 d!1363328))

(assert (=> d!1363112 d!1363116))

(assert (=> d!1363112 d!1363290))

(declare-fun bs!794630 () Bool)

(declare-fun d!1363338 () Bool)

(assert (= bs!794630 (and d!1363338 d!1363114)))

(declare-fun lambda!163255 () Int)

(assert (=> bs!794630 (= lambda!163255 lambda!163117)))

(declare-fun bs!794631 () Bool)

(assert (= bs!794631 (and d!1363338 d!1363066)))

(assert (=> bs!794631 (not (= lambda!163255 lambda!163098))))

(declare-fun bs!794632 () Bool)

(assert (= bs!794632 (and d!1363338 d!1363096)))

(assert (=> bs!794632 (= lambda!163255 lambda!163112)))

(declare-fun bs!794633 () Bool)

(assert (= bs!794633 (and d!1363338 d!1363128)))

(assert (=> bs!794633 (= lambda!163255 lambda!163123)))

(declare-fun bs!794634 () Bool)

(assert (= bs!794634 (and d!1363338 d!1363110)))

(assert (=> bs!794634 (= lambda!163255 lambda!163116)))

(declare-fun bs!794635 () Bool)

(assert (= bs!794635 (and d!1363338 d!1363104)))

(assert (=> bs!794635 (= lambda!163255 lambda!163115)))

(declare-fun bs!794636 () Bool)

(assert (= bs!794636 (and d!1363338 d!1363098)))

(assert (=> bs!794636 (= lambda!163255 lambda!163113)))

(declare-fun bs!794637 () Bool)

(assert (= bs!794637 (and d!1363338 d!1363190)))

(assert (=> bs!794637 (= lambda!163255 lambda!163131)))

(declare-fun bs!794638 () Bool)

(assert (= bs!794638 (and d!1363338 d!1363294)))

(assert (=> bs!794638 (= lambda!163255 lambda!163242)))

(declare-fun bs!794639 () Bool)

(assert (= bs!794639 (and d!1363338 d!1363282)))

(assert (=> bs!794639 (= lambda!163255 lambda!163237)))

(declare-fun bs!794640 () Bool)

(assert (= bs!794640 (and d!1363338 d!1363020)))

(assert (=> bs!794640 (= lambda!163255 lambda!163089)))

(declare-fun bs!794641 () Bool)

(assert (= bs!794641 (and d!1363338 d!1363102)))

(assert (=> bs!794641 (= lambda!163255 lambda!163114)))

(declare-fun bs!794642 () Bool)

(assert (= bs!794642 (and d!1363338 d!1363118)))

(assert (=> bs!794642 (= lambda!163255 lambda!163120)))

(declare-fun bs!794643 () Bool)

(assert (= bs!794643 (and d!1363338 start!438912)))

(assert (=> bs!794643 (= lambda!163255 lambda!163077)))

(declare-fun lt!1658019 () ListMap!3317)

(assert (=> d!1363338 (invariantList!927 (toList!4056 lt!1658019))))

(declare-fun e!2782932 () ListMap!3317)

(assert (=> d!1363338 (= lt!1658019 e!2782932)))

(declare-fun c!760823 () Bool)

(assert (=> d!1363338 (= c!760823 ((_ is Cons!50285) (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)))))

(assert (=> d!1363338 (forall!9988 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285) lambda!163255)))

(assert (=> d!1363338 (= (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)) lt!1658019)))

(declare-fun b!4469097 () Bool)

(assert (=> b!4469097 (= e!2782932 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)))))))

(declare-fun b!4469098 () Bool)

(assert (=> b!4469098 (= e!2782932 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363338 c!760823) b!4469097))

(assert (= (and d!1363338 (not c!760823)) b!4469098))

(declare-fun m!5175571 () Bool)

(assert (=> d!1363338 m!5175571))

(declare-fun m!5175573 () Bool)

(assert (=> d!1363338 m!5175573))

(declare-fun m!5175575 () Bool)

(assert (=> b!4469097 m!5175575))

(assert (=> b!4469097 m!5175575))

(declare-fun m!5175577 () Bool)

(assert (=> b!4469097 m!5175577))

(assert (=> d!1363112 d!1363338))

(declare-fun d!1363342 () Bool)

(assert (=> d!1363342 (= (eq!517 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)) (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287)) (= (content!8104 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 newBucket!178) Nil!50285)))) (content!8104 (toList!4056 (-!286 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) key!3287)))))))

(declare-fun bs!794644 () Bool)

(assert (= bs!794644 d!1363342))

(declare-fun m!5175581 () Bool)

(assert (=> bs!794644 m!5175581))

(assert (=> bs!794644 m!5174799))

(assert (=> d!1363112 d!1363342))

(declare-fun bs!794645 () Bool)

(declare-fun b!4469109 () Bool)

(assert (= bs!794645 (and b!4469109 b!4468792)))

(declare-fun lambda!163256 () Int)

(assert (=> bs!794645 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163256 lambda!163214))))

(declare-fun bs!794646 () Bool)

(assert (= bs!794646 (and b!4469109 b!4468958)))

(assert (=> bs!794646 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163256 lambda!163233))))

(declare-fun bs!794647 () Bool)

(assert (= bs!794647 (and b!4469109 d!1363210)))

(assert (=> bs!794647 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657792) (= lambda!163256 lambda!163216))))

(declare-fun bs!794648 () Bool)

(assert (= bs!794648 (and b!4469109 b!4469011)))

(assert (=> bs!794648 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163256 lambda!163238))))

(declare-fun bs!794649 () Bool)

(assert (= bs!794649 (and b!4469109 d!1363078)))

(assert (=> bs!794649 (not (= lambda!163256 lambda!163106))))

(declare-fun bs!794650 () Bool)

(assert (= bs!794650 (and b!4469109 b!4468954)))

(assert (=> bs!794650 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657872) (= lambda!163256 lambda!163235))))

(assert (=> bs!794645 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657779) (= lambda!163256 lambda!163215))))

(declare-fun bs!794651 () Bool)

(assert (= bs!794651 (and b!4469109 d!1363292)))

(assert (=> bs!794651 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657941) (= lambda!163256 lambda!163241))))

(declare-fun bs!794652 () Bool)

(assert (= bs!794652 (and b!4469109 b!4468796)))

(assert (=> bs!794652 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163256 lambda!163213))))

(declare-fun bs!794653 () Bool)

(assert (= bs!794653 (and b!4469109 b!4469007)))

(assert (=> bs!794653 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657928) (= lambda!163256 lambda!163240))))

(assert (=> bs!794650 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163256 lambda!163234))))

(assert (=> bs!794653 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163256 lambda!163239))))

(declare-fun bs!794655 () Bool)

(assert (= bs!794655 (and b!4469109 d!1363280)))

(assert (=> bs!794655 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657885) (= lambda!163256 lambda!163236))))

(assert (=> b!4469109 true))

(declare-fun bs!794656 () Bool)

(declare-fun b!4469105 () Bool)

(assert (= bs!794656 (and b!4469105 b!4468792)))

(declare-fun lambda!163257 () Int)

(assert (=> bs!794656 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163257 lambda!163214))))

(declare-fun bs!794657 () Bool)

(assert (= bs!794657 (and b!4469105 b!4468958)))

(assert (=> bs!794657 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163257 lambda!163233))))

(declare-fun bs!794658 () Bool)

(assert (= bs!794658 (and b!4469105 d!1363210)))

(assert (=> bs!794658 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657792) (= lambda!163257 lambda!163216))))

(declare-fun bs!794659 () Bool)

(assert (= bs!794659 (and b!4469105 b!4469011)))

(assert (=> bs!794659 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163257 lambda!163238))))

(declare-fun bs!794660 () Bool)

(assert (= bs!794660 (and b!4469105 b!4469109)))

(assert (=> bs!794660 (= lambda!163257 lambda!163256)))

(declare-fun bs!794661 () Bool)

(assert (= bs!794661 (and b!4469105 d!1363078)))

(assert (=> bs!794661 (not (= lambda!163257 lambda!163106))))

(declare-fun bs!794662 () Bool)

(assert (= bs!794662 (and b!4469105 b!4468954)))

(assert (=> bs!794662 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657872) (= lambda!163257 lambda!163235))))

(assert (=> bs!794656 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657779) (= lambda!163257 lambda!163215))))

(declare-fun bs!794663 () Bool)

(assert (= bs!794663 (and b!4469105 d!1363292)))

(assert (=> bs!794663 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657941) (= lambda!163257 lambda!163241))))

(declare-fun bs!794664 () Bool)

(assert (= bs!794664 (and b!4469105 b!4468796)))

(assert (=> bs!794664 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163257 lambda!163213))))

(declare-fun bs!794665 () Bool)

(assert (= bs!794665 (and b!4469105 b!4469007)))

(assert (=> bs!794665 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657928) (= lambda!163257 lambda!163240))))

(assert (=> bs!794662 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163257 lambda!163234))))

(assert (=> bs!794665 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163257 lambda!163239))))

(declare-fun bs!794666 () Bool)

(assert (= bs!794666 (and b!4469105 d!1363280)))

(assert (=> bs!794666 (= (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1657885) (= lambda!163257 lambda!163236))))

(assert (=> b!4469105 true))

(declare-fun lambda!163258 () Int)

(declare-fun lt!1658022 () ListMap!3317)

(assert (=> bs!794656 (= (= lt!1658022 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163258 lambda!163214))))

(assert (=> bs!794657 (= (= lt!1658022 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163258 lambda!163233))))

(assert (=> bs!794658 (= (= lt!1658022 lt!1657792) (= lambda!163258 lambda!163216))))

(assert (=> bs!794659 (= (= lt!1658022 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163258 lambda!163238))))

(assert (=> bs!794660 (= (= lt!1658022 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163258 lambda!163256))))

(assert (=> bs!794661 (not (= lambda!163258 lambda!163106))))

(assert (=> bs!794662 (= (= lt!1658022 lt!1657872) (= lambda!163258 lambda!163235))))

(assert (=> bs!794656 (= (= lt!1658022 lt!1657779) (= lambda!163258 lambda!163215))))

(assert (=> bs!794664 (= (= lt!1658022 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163258 lambda!163213))))

(assert (=> bs!794665 (= (= lt!1658022 lt!1657928) (= lambda!163258 lambda!163240))))

(assert (=> bs!794662 (= (= lt!1658022 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163258 lambda!163234))))

(assert (=> bs!794665 (= (= lt!1658022 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163258 lambda!163239))))

(assert (=> bs!794666 (= (= lt!1658022 lt!1657885) (= lambda!163258 lambda!163236))))

(assert (=> b!4469105 (= (= lt!1658022 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163258 lambda!163257))))

(assert (=> bs!794663 (= (= lt!1658022 lt!1657941) (= lambda!163258 lambda!163241))))

(assert (=> b!4469105 true))

(declare-fun bs!794682 () Bool)

(declare-fun d!1363346 () Bool)

(assert (= bs!794682 (and d!1363346 b!4469105)))

(declare-fun lambda!163260 () Int)

(declare-fun lt!1658035 () ListMap!3317)

(assert (=> bs!794682 (= (= lt!1658035 lt!1658022) (= lambda!163260 lambda!163258))))

(declare-fun bs!794683 () Bool)

(assert (= bs!794683 (and d!1363346 b!4468792)))

(assert (=> bs!794683 (= (= lt!1658035 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163260 lambda!163214))))

(declare-fun bs!794684 () Bool)

(assert (= bs!794684 (and d!1363346 b!4468958)))

(assert (=> bs!794684 (= (= lt!1658035 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163260 lambda!163233))))

(declare-fun bs!794685 () Bool)

(assert (= bs!794685 (and d!1363346 d!1363210)))

(assert (=> bs!794685 (= (= lt!1658035 lt!1657792) (= lambda!163260 lambda!163216))))

(declare-fun bs!794686 () Bool)

(assert (= bs!794686 (and d!1363346 b!4469011)))

(assert (=> bs!794686 (= (= lt!1658035 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163260 lambda!163238))))

(declare-fun bs!794687 () Bool)

(assert (= bs!794687 (and d!1363346 b!4469109)))

(assert (=> bs!794687 (= (= lt!1658035 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163260 lambda!163256))))

(declare-fun bs!794688 () Bool)

(assert (= bs!794688 (and d!1363346 d!1363078)))

(assert (=> bs!794688 (not (= lambda!163260 lambda!163106))))

(declare-fun bs!794689 () Bool)

(assert (= bs!794689 (and d!1363346 b!4468954)))

(assert (=> bs!794689 (= (= lt!1658035 lt!1657872) (= lambda!163260 lambda!163235))))

(assert (=> bs!794683 (= (= lt!1658035 lt!1657779) (= lambda!163260 lambda!163215))))

(declare-fun bs!794690 () Bool)

(assert (= bs!794690 (and d!1363346 b!4468796)))

(assert (=> bs!794690 (= (= lt!1658035 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163260 lambda!163213))))

(declare-fun bs!794691 () Bool)

(assert (= bs!794691 (and d!1363346 b!4469007)))

(assert (=> bs!794691 (= (= lt!1658035 lt!1657928) (= lambda!163260 lambda!163240))))

(assert (=> bs!794689 (= (= lt!1658035 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163260 lambda!163234))))

(assert (=> bs!794691 (= (= lt!1658035 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163260 lambda!163239))))

(declare-fun bs!794692 () Bool)

(assert (= bs!794692 (and d!1363346 d!1363280)))

(assert (=> bs!794692 (= (= lt!1658035 lt!1657885) (= lambda!163260 lambda!163236))))

(assert (=> bs!794682 (= (= lt!1658035 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163260 lambda!163257))))

(declare-fun bs!794693 () Bool)

(assert (= bs!794693 (and d!1363346 d!1363292)))

(assert (=> bs!794693 (= (= lt!1658035 lt!1657941) (= lambda!163260 lambda!163241))))

(assert (=> d!1363346 true))

(declare-fun e!2782940 () ListMap!3317)

(assert (=> b!4469105 (= e!2782940 lt!1658022)))

(declare-fun lt!1658027 () ListMap!3317)

(assert (=> b!4469105 (= lt!1658027 (+!1368 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))))))

(assert (=> b!4469105 (= lt!1658022 (addToMapMapFromBucket!589 (t!357358 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285)))) (+!1368 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285)))))))))

(declare-fun lt!1658030 () Unit!87585)

(declare-fun call!311169 () Unit!87585)

(assert (=> b!4469105 (= lt!1658030 call!311169)))

(assert (=> b!4469105 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) lambda!163257)))

(declare-fun lt!1658028 () Unit!87585)

(assert (=> b!4469105 (= lt!1658028 lt!1658030)))

(declare-fun call!311171 () Bool)

(assert (=> b!4469105 call!311171))

(declare-fun lt!1658032 () Unit!87585)

(declare-fun Unit!87689 () Unit!87585)

(assert (=> b!4469105 (= lt!1658032 Unit!87689)))

(assert (=> b!4469105 (forall!9990 (t!357358 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285)))) lambda!163258)))

(declare-fun lt!1658025 () Unit!87585)

(declare-fun Unit!87690 () Unit!87585)

(assert (=> b!4469105 (= lt!1658025 Unit!87690)))

(declare-fun lt!1658029 () Unit!87585)

(declare-fun Unit!87691 () Unit!87585)

(assert (=> b!4469105 (= lt!1658029 Unit!87691)))

(declare-fun lt!1658038 () Unit!87585)

(assert (=> b!4469105 (= lt!1658038 (forallContained!2259 (toList!4056 lt!1658027) lambda!163258 (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))))))

(assert (=> b!4469105 (contains!12835 lt!1658027 (_1!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))))))

(declare-fun lt!1658040 () Unit!87585)

(declare-fun Unit!87692 () Unit!87585)

(assert (=> b!4469105 (= lt!1658040 Unit!87692)))

(assert (=> b!4469105 (contains!12835 lt!1658022 (_1!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))))))

(declare-fun lt!1658024 () Unit!87585)

(declare-fun Unit!87693 () Unit!87585)

(assert (=> b!4469105 (= lt!1658024 Unit!87693)))

(assert (=> b!4469105 (forall!9990 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))) lambda!163258)))

(declare-fun lt!1658033 () Unit!87585)

(declare-fun Unit!87695 () Unit!87585)

(assert (=> b!4469105 (= lt!1658033 Unit!87695)))

(assert (=> b!4469105 (forall!9990 (toList!4056 lt!1658027) lambda!163258)))

(declare-fun lt!1658039 () Unit!87585)

(declare-fun Unit!87696 () Unit!87585)

(assert (=> b!4469105 (= lt!1658039 Unit!87696)))

(declare-fun lt!1658031 () Unit!87585)

(declare-fun Unit!87697 () Unit!87585)

(assert (=> b!4469105 (= lt!1658031 Unit!87697)))

(declare-fun lt!1658037 () Unit!87585)

(assert (=> b!4469105 (= lt!1658037 (addForallContainsKeyThenBeforeAdding!266 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1658022 (_1!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))) (_2!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285)))))))))

(declare-fun call!311170 () Bool)

(assert (=> b!4469105 call!311170))

(declare-fun lt!1658034 () Unit!87585)

(assert (=> b!4469105 (= lt!1658034 lt!1658037)))

(assert (=> b!4469105 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) lambda!163258)))

(declare-fun lt!1658021 () Unit!87585)

(declare-fun Unit!87698 () Unit!87585)

(assert (=> b!4469105 (= lt!1658021 Unit!87698)))

(declare-fun res!1854089 () Bool)

(assert (=> b!4469105 (= res!1854089 (forall!9990 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))) lambda!163258))))

(declare-fun e!2782939 () Bool)

(assert (=> b!4469105 (=> (not res!1854089) (not e!2782939))))

(assert (=> b!4469105 e!2782939))

(declare-fun lt!1658020 () Unit!87585)

(declare-fun Unit!87700 () Unit!87585)

(assert (=> b!4469105 (= lt!1658020 Unit!87700)))

(declare-fun bm!311164 () Bool)

(declare-fun c!760824 () Bool)

(assert (=> bm!311164 (= call!311170 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (ite c!760824 lambda!163256 lambda!163258)))))

(declare-fun bm!311165 () Bool)

(assert (=> bm!311165 (= call!311171 (forall!9990 (ite c!760824 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (toList!4056 lt!1658027)) (ite c!760824 lambda!163256 lambda!163258)))))

(declare-fun b!4469107 () Bool)

(assert (=> b!4469107 (= e!2782939 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) lambda!163258))))

(declare-fun bm!311166 () Bool)

(assert (=> bm!311166 (= call!311169 (lemmaContainsAllItsOwnKeys!267 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))))))

(declare-fun b!4469108 () Bool)

(declare-fun res!1854091 () Bool)

(declare-fun e!2782941 () Bool)

(assert (=> b!4469108 (=> (not res!1854091) (not e!2782941))))

(assert (=> b!4469108 (= res!1854091 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) lambda!163260))))

(assert (=> b!4469109 (= e!2782940 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))))))

(declare-fun lt!1658036 () Unit!87585)

(assert (=> b!4469109 (= lt!1658036 call!311169)))

(assert (=> b!4469109 call!311170))

(declare-fun lt!1658026 () Unit!87585)

(assert (=> b!4469109 (= lt!1658026 lt!1658036)))

(assert (=> b!4469109 call!311171))

(declare-fun lt!1658023 () Unit!87585)

(declare-fun Unit!87707 () Unit!87585)

(assert (=> b!4469109 (= lt!1658023 Unit!87707)))

(assert (=> d!1363346 e!2782941))

(declare-fun res!1854090 () Bool)

(assert (=> d!1363346 (=> (not res!1854090) (not e!2782941))))

(assert (=> d!1363346 (= res!1854090 (forall!9990 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))) lambda!163260))))

(assert (=> d!1363346 (= lt!1658035 e!2782940)))

(assert (=> d!1363346 (= c!760824 ((_ is Nil!50284) (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285)))))))

(assert (=> d!1363346 (noDuplicateKeys!1024 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))))

(assert (=> d!1363346 (= (addToMapMapFromBucket!589 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) lt!1658035)))

(declare-fun b!4469106 () Bool)

(assert (=> b!4469106 (= e!2782941 (invariantList!927 (toList!4056 lt!1658035)))))

(assert (= (and d!1363346 c!760824) b!4469109))

(assert (= (and d!1363346 (not c!760824)) b!4469105))

(assert (= (and b!4469105 res!1854089) b!4469107))

(assert (= (or b!4469109 b!4469105) bm!311165))

(assert (= (or b!4469109 b!4469105) bm!311164))

(assert (= (or b!4469109 b!4469105) bm!311166))

(assert (= (and d!1363346 res!1854090) b!4469108))

(assert (= (and b!4469108 res!1854091) b!4469106))

(declare-fun m!5175613 () Bool)

(assert (=> bm!311164 m!5175613))

(declare-fun m!5175615 () Bool)

(assert (=> b!4469105 m!5175615))

(assert (=> b!4469105 m!5174755))

(declare-fun m!5175617 () Bool)

(assert (=> b!4469105 m!5175617))

(assert (=> b!4469105 m!5175617))

(declare-fun m!5175619 () Bool)

(assert (=> b!4469105 m!5175619))

(declare-fun m!5175621 () Bool)

(assert (=> b!4469105 m!5175621))

(declare-fun m!5175623 () Bool)

(assert (=> b!4469105 m!5175623))

(declare-fun m!5175625 () Bool)

(assert (=> b!4469105 m!5175625))

(declare-fun m!5175627 () Bool)

(assert (=> b!4469105 m!5175627))

(declare-fun m!5175629 () Bool)

(assert (=> b!4469105 m!5175629))

(declare-fun m!5175631 () Bool)

(assert (=> b!4469105 m!5175631))

(assert (=> b!4469105 m!5174755))

(declare-fun m!5175633 () Bool)

(assert (=> b!4469105 m!5175633))

(assert (=> b!4469105 m!5175625))

(declare-fun m!5175635 () Bool)

(assert (=> b!4469105 m!5175635))

(declare-fun m!5175637 () Bool)

(assert (=> bm!311165 m!5175637))

(declare-fun m!5175639 () Bool)

(assert (=> b!4469108 m!5175639))

(declare-fun m!5175641 () Bool)

(assert (=> b!4469106 m!5175641))

(assert (=> bm!311166 m!5174755))

(declare-fun m!5175643 () Bool)

(assert (=> bm!311166 m!5175643))

(declare-fun m!5175645 () Bool)

(assert (=> d!1363346 m!5175645))

(declare-fun m!5175647 () Bool)

(assert (=> d!1363346 m!5175647))

(assert (=> b!4469107 m!5175629))

(assert (=> b!4468577 d!1363346))

(declare-fun bs!794694 () Bool)

(declare-fun d!1363354 () Bool)

(assert (= bs!794694 (and d!1363354 d!1363114)))

(declare-fun lambda!163261 () Int)

(assert (=> bs!794694 (= lambda!163261 lambda!163117)))

(declare-fun bs!794695 () Bool)

(assert (= bs!794695 (and d!1363354 d!1363066)))

(assert (=> bs!794695 (not (= lambda!163261 lambda!163098))))

(declare-fun bs!794696 () Bool)

(assert (= bs!794696 (and d!1363354 d!1363096)))

(assert (=> bs!794696 (= lambda!163261 lambda!163112)))

(declare-fun bs!794697 () Bool)

(assert (= bs!794697 (and d!1363354 d!1363338)))

(assert (=> bs!794697 (= lambda!163261 lambda!163255)))

(declare-fun bs!794698 () Bool)

(assert (= bs!794698 (and d!1363354 d!1363128)))

(assert (=> bs!794698 (= lambda!163261 lambda!163123)))

(declare-fun bs!794699 () Bool)

(assert (= bs!794699 (and d!1363354 d!1363110)))

(assert (=> bs!794699 (= lambda!163261 lambda!163116)))

(declare-fun bs!794700 () Bool)

(assert (= bs!794700 (and d!1363354 d!1363104)))

(assert (=> bs!794700 (= lambda!163261 lambda!163115)))

(declare-fun bs!794701 () Bool)

(assert (= bs!794701 (and d!1363354 d!1363098)))

(assert (=> bs!794701 (= lambda!163261 lambda!163113)))

(declare-fun bs!794702 () Bool)

(assert (= bs!794702 (and d!1363354 d!1363190)))

(assert (=> bs!794702 (= lambda!163261 lambda!163131)))

(declare-fun bs!794703 () Bool)

(assert (= bs!794703 (and d!1363354 d!1363294)))

(assert (=> bs!794703 (= lambda!163261 lambda!163242)))

(declare-fun bs!794704 () Bool)

(assert (= bs!794704 (and d!1363354 d!1363282)))

(assert (=> bs!794704 (= lambda!163261 lambda!163237)))

(declare-fun bs!794705 () Bool)

(assert (= bs!794705 (and d!1363354 d!1363020)))

(assert (=> bs!794705 (= lambda!163261 lambda!163089)))

(declare-fun bs!794706 () Bool)

(assert (= bs!794706 (and d!1363354 d!1363102)))

(assert (=> bs!794706 (= lambda!163261 lambda!163114)))

(declare-fun bs!794707 () Bool)

(assert (= bs!794707 (and d!1363354 d!1363118)))

(assert (=> bs!794707 (= lambda!163261 lambda!163120)))

(declare-fun bs!794708 () Bool)

(assert (= bs!794708 (and d!1363354 start!438912)))

(assert (=> bs!794708 (= lambda!163261 lambda!163077)))

(declare-fun lt!1658053 () ListMap!3317)

(assert (=> d!1363354 (invariantList!927 (toList!4056 lt!1658053))))

(declare-fun e!2782949 () ListMap!3317)

(assert (=> d!1363354 (= lt!1658053 e!2782949)))

(declare-fun c!760829 () Bool)

(assert (=> d!1363354 (= c!760829 ((_ is Cons!50285) (t!357359 (Cons!50285 lt!1657409 Nil!50285))))))

(assert (=> d!1363354 (forall!9988 (t!357359 (Cons!50285 lt!1657409 Nil!50285)) lambda!163261)))

(assert (=> d!1363354 (= (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285))) lt!1658053)))

(declare-fun b!4469121 () Bool)

(assert (=> b!4469121 (= e!2782949 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (extractMap!1080 (t!357359 (t!357359 (Cons!50285 lt!1657409 Nil!50285))))))))

(declare-fun b!4469122 () Bool)

(assert (=> b!4469122 (= e!2782949 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363354 c!760829) b!4469121))

(assert (= (and d!1363354 (not c!760829)) b!4469122))

(declare-fun m!5175649 () Bool)

(assert (=> d!1363354 m!5175649))

(declare-fun m!5175651 () Bool)

(assert (=> d!1363354 m!5175651))

(declare-fun m!5175653 () Bool)

(assert (=> b!4469121 m!5175653))

(assert (=> b!4469121 m!5175653))

(declare-fun m!5175655 () Bool)

(assert (=> b!4469121 m!5175655))

(assert (=> b!4468577 d!1363354))

(declare-fun bs!794709 () Bool)

(declare-fun b!4469127 () Bool)

(assert (= bs!794709 (and b!4469127 b!4468892)))

(declare-fun lambda!163262 () Int)

(assert (=> bs!794709 (= (= (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163262 lambda!163231))))

(declare-fun bs!794710 () Bool)

(assert (= bs!794710 (and b!4469127 b!4468894)))

(assert (=> bs!794710 (= (= (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163262 lambda!163229))))

(declare-fun bs!794711 () Bool)

(assert (= bs!794711 (and b!4469127 b!4468693)))

(assert (=> bs!794711 (= (= (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163262 lambda!163138))))

(declare-fun bs!794712 () Bool)

(assert (= bs!794712 (and b!4469127 b!4468682)))

(assert (=> bs!794712 (= (= (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163262 lambda!163136))))

(declare-fun bs!794713 () Bool)

(assert (= bs!794713 (and b!4469127 b!4468890)))

(assert (=> bs!794713 (= (= (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))) (= lambda!163262 lambda!163230))))

(assert (=> b!4469127 true))

(declare-fun bs!794714 () Bool)

(declare-fun b!4469123 () Bool)

(assert (= bs!794714 (and b!4469123 b!4468892)))

(declare-fun lambda!163263 () Int)

(assert (=> bs!794714 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163263 lambda!163231))))

(declare-fun bs!794715 () Bool)

(assert (= bs!794715 (and b!4469123 b!4468894)))

(assert (=> bs!794715 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163263 lambda!163229))))

(declare-fun bs!794716 () Bool)

(assert (= bs!794716 (and b!4469123 b!4468693)))

(assert (=> bs!794716 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163263 lambda!163138))))

(declare-fun bs!794717 () Bool)

(assert (= bs!794717 (and b!4469123 b!4469127)))

(assert (=> bs!794717 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (= lambda!163263 lambda!163262))))

(declare-fun bs!794718 () Bool)

(assert (= bs!794718 (and b!4469123 b!4468682)))

(assert (=> bs!794718 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163263 lambda!163136))))

(declare-fun bs!794719 () Bool)

(assert (= bs!794719 (and b!4469123 b!4468890)))

(assert (=> bs!794719 (= (= (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))) (= lambda!163263 lambda!163230))))

(assert (=> b!4469123 true))

(declare-fun bs!794720 () Bool)

(declare-fun b!4469125 () Bool)

(assert (= bs!794720 (and b!4469125 b!4468892)))

(declare-fun lambda!163264 () Int)

(assert (=> bs!794720 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163264 lambda!163231))))

(declare-fun bs!794721 () Bool)

(assert (= bs!794721 (and b!4469125 b!4468693)))

(assert (=> bs!794721 (= lambda!163264 lambda!163138)))

(declare-fun bs!794722 () Bool)

(assert (= bs!794722 (and b!4469125 b!4469127)))

(assert (=> bs!794722 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (= lambda!163264 lambda!163262))))

(declare-fun bs!794723 () Bool)

(assert (= bs!794723 (and b!4469125 b!4468894)))

(assert (=> bs!794723 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163264 lambda!163229))))

(declare-fun bs!794724 () Bool)

(assert (= bs!794724 (and b!4469125 b!4469123)))

(assert (=> bs!794724 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))) (= lambda!163264 lambda!163263))))

(declare-fun bs!794725 () Bool)

(assert (= bs!794725 (and b!4469125 b!4468682)))

(assert (=> bs!794725 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163264 lambda!163136))))

(declare-fun bs!794726 () Bool)

(assert (= bs!794726 (and b!4469125 b!4468890)))

(assert (=> bs!794726 (= (= (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))) (= lambda!163264 lambda!163230))))

(assert (=> b!4469125 true))

(declare-fun bs!794727 () Bool)

(declare-fun b!4469130 () Bool)

(assert (= bs!794727 (and b!4469130 b!4468683)))

(declare-fun lambda!163265 () Int)

(assert (=> bs!794727 (= lambda!163265 lambda!163137)))

(declare-fun bs!794728 () Bool)

(assert (= bs!794728 (and b!4469130 b!4468694)))

(assert (=> bs!794728 (= lambda!163265 lambda!163139)))

(declare-fun bs!794729 () Bool)

(assert (= bs!794729 (and b!4469130 b!4468897)))

(assert (=> bs!794729 (= lambda!163265 lambda!163232)))

(declare-fun e!2782951 () List!50411)

(assert (=> b!4469123 (= e!2782951 (Cons!50287 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))))

(declare-fun c!760832 () Bool)

(assert (=> b!4469123 (= c!760832 (containsKey!1472 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))))

(declare-fun lt!1658056 () Unit!87585)

(declare-fun e!2782950 () Unit!87585)

(assert (=> b!4469123 (= lt!1658056 e!2782950)))

(declare-fun c!760831 () Bool)

(assert (=> b!4469123 (= c!760831 (contains!12837 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))))

(declare-fun lt!1658057 () Unit!87585)

(declare-fun e!2782953 () Unit!87585)

(assert (=> b!4469123 (= lt!1658057 e!2782953)))

(declare-fun lt!1658055 () List!50411)

(assert (=> b!4469123 (= lt!1658055 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))))

(declare-fun lt!1658058 () Unit!87585)

(assert (=> b!4469123 (= lt!1658058 (lemmaForallContainsAddHeadPreserves!120 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) lt!1658055 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))))

(assert (=> b!4469123 (forall!9992 lt!1658055 lambda!163263)))

(declare-fun lt!1658060 () Unit!87585)

(assert (=> b!4469123 (= lt!1658060 lt!1658058)))

(declare-fun b!4469124 () Bool)

(declare-fun res!1854097 () Bool)

(declare-fun e!2782952 () Bool)

(assert (=> b!4469124 (=> (not res!1854097) (not e!2782952))))

(declare-fun lt!1658054 () List!50411)

(assert (=> b!4469124 (= res!1854097 (= (length!252 lt!1658054) (length!253 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))))

(declare-fun res!1854095 () Bool)

(assert (=> b!4469125 (=> (not res!1854095) (not e!2782952))))

(assert (=> b!4469125 (= res!1854095 (forall!9992 lt!1658054 lambda!163264))))

(declare-fun b!4469126 () Bool)

(assert (=> b!4469126 false))

(declare-fun Unit!87711 () Unit!87585)

(assert (=> b!4469126 (= e!2782950 Unit!87711)))

(declare-fun d!1363356 () Bool)

(assert (=> d!1363356 e!2782952))

(declare-fun res!1854096 () Bool)

(assert (=> d!1363356 (=> (not res!1854096) (not e!2782952))))

(assert (=> d!1363356 (= res!1854096 (noDuplicate!698 lt!1658054))))

(assert (=> d!1363356 (= lt!1658054 e!2782951)))

(declare-fun c!760830 () Bool)

(assert (=> d!1363356 (= c!760830 ((_ is Cons!50284) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))

(assert (=> d!1363356 (invariantList!927 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))

(assert (=> d!1363356 (= (getKeysList!375 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) lt!1658054)))

(assert (=> b!4469127 false))

(declare-fun lt!1658059 () Unit!87585)

(assert (=> b!4469127 (= lt!1658059 (forallContained!2261 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) lambda!163262 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))))

(declare-fun Unit!87712 () Unit!87585)

(assert (=> b!4469127 (= e!2782953 Unit!87712)))

(declare-fun b!4469128 () Bool)

(declare-fun Unit!87713 () Unit!87585)

(assert (=> b!4469128 (= e!2782953 Unit!87713)))

(declare-fun b!4469129 () Bool)

(declare-fun Unit!87714 () Unit!87585)

(assert (=> b!4469129 (= e!2782950 Unit!87714)))

(assert (=> b!4469130 (= e!2782952 (= (content!8103 lt!1658054) (content!8103 (map!11021 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) lambda!163265))))))

(declare-fun b!4469131 () Bool)

(assert (=> b!4469131 (= e!2782951 Nil!50287)))

(assert (= (and d!1363356 c!760830) b!4469123))

(assert (= (and d!1363356 (not c!760830)) b!4469131))

(assert (= (and b!4469123 c!760832) b!4469126))

(assert (= (and b!4469123 (not c!760832)) b!4469129))

(assert (= (and b!4469123 c!760831) b!4469127))

(assert (= (and b!4469123 (not c!760831)) b!4469128))

(assert (= (and d!1363356 res!1854096) b!4469124))

(assert (= (and b!4469124 res!1854097) b!4469125))

(assert (= (and b!4469125 res!1854095) b!4469130))

(declare-fun m!5175657 () Bool)

(assert (=> b!4469124 m!5175657))

(assert (=> b!4469124 m!5174963))

(declare-fun m!5175659 () Bool)

(assert (=> d!1363356 m!5175659))

(assert (=> d!1363356 m!5174865))

(declare-fun m!5175661 () Bool)

(assert (=> b!4469130 m!5175661))

(declare-fun m!5175663 () Bool)

(assert (=> b!4469130 m!5175663))

(assert (=> b!4469130 m!5175663))

(declare-fun m!5175667 () Bool)

(assert (=> b!4469130 m!5175667))

(declare-fun m!5175669 () Bool)

(assert (=> b!4469123 m!5175669))

(declare-fun m!5175673 () Bool)

(assert (=> b!4469123 m!5175673))

(declare-fun m!5175675 () Bool)

(assert (=> b!4469123 m!5175675))

(declare-fun m!5175677 () Bool)

(assert (=> b!4469123 m!5175677))

(declare-fun m!5175679 () Bool)

(assert (=> b!4469123 m!5175679))

(assert (=> b!4469123 m!5175677))

(declare-fun m!5175681 () Bool)

(assert (=> b!4469125 m!5175681))

(assert (=> b!4469127 m!5175677))

(assert (=> b!4469127 m!5175677))

(declare-fun m!5175683 () Bool)

(assert (=> b!4469127 m!5175683))

(assert (=> b!4468554 d!1363356))

(declare-fun d!1363362 () Bool)

(assert (=> d!1363362 (= (invariantList!927 (toList!4056 lt!1657595)) (noDuplicatedKeys!213 (toList!4056 lt!1657595)))))

(declare-fun bs!794731 () Bool)

(assert (= bs!794731 d!1363362))

(declare-fun m!5175685 () Bool)

(assert (=> bs!794731 m!5175685))

(assert (=> d!1363110 d!1363362))

(declare-fun d!1363364 () Bool)

(declare-fun res!1854100 () Bool)

(declare-fun e!2782956 () Bool)

(assert (=> d!1363364 (=> res!1854100 e!2782956)))

(assert (=> d!1363364 (= res!1854100 ((_ is Nil!50285) (Cons!50285 lt!1657409 Nil!50285)))))

(assert (=> d!1363364 (= (forall!9988 (Cons!50285 lt!1657409 Nil!50285) lambda!163116) e!2782956)))

(declare-fun b!4469134 () Bool)

(declare-fun e!2782957 () Bool)

(assert (=> b!4469134 (= e!2782956 e!2782957)))

(declare-fun res!1854101 () Bool)

(assert (=> b!4469134 (=> (not res!1854101) (not e!2782957))))

(assert (=> b!4469134 (= res!1854101 (dynLambda!21012 lambda!163116 (h!56048 (Cons!50285 lt!1657409 Nil!50285))))))

(declare-fun b!4469135 () Bool)

(assert (=> b!4469135 (= e!2782957 (forall!9988 (t!357359 (Cons!50285 lt!1657409 Nil!50285)) lambda!163116))))

(assert (= (and d!1363364 (not res!1854100)) b!4469134))

(assert (= (and b!4469134 res!1854101) b!4469135))

(declare-fun b_lambda!148343 () Bool)

(assert (=> (not b_lambda!148343) (not b!4469134)))

(declare-fun m!5175687 () Bool)

(assert (=> b!4469134 m!5175687))

(declare-fun m!5175689 () Bool)

(assert (=> b!4469135 m!5175689))

(assert (=> d!1363110 d!1363364))

(declare-fun d!1363366 () Bool)

(declare-fun res!1854102 () Bool)

(declare-fun e!2782958 () Bool)

(assert (=> d!1363366 (=> res!1854102 e!2782958)))

(assert (=> d!1363366 (= res!1854102 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) key!3287)))))

(assert (=> d!1363366 (= (containsKey!1472 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287) e!2782958)))

(declare-fun b!4469136 () Bool)

(declare-fun e!2782959 () Bool)

(assert (=> b!4469136 (= e!2782958 e!2782959)))

(declare-fun res!1854103 () Bool)

(assert (=> b!4469136 (=> (not res!1854103) (not e!2782959))))

(assert (=> b!4469136 (= res!1854103 ((_ is Cons!50284) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))))

(declare-fun b!4469137 () Bool)

(assert (=> b!4469137 (= e!2782959 (containsKey!1472 (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) key!3287))))

(assert (= (and d!1363366 (not res!1854102)) b!4469136))

(assert (= (and b!4469136 res!1854103) b!4469137))

(declare-fun m!5175691 () Bool)

(assert (=> b!4469137 m!5175691))

(assert (=> d!1363100 d!1363366))

(declare-fun d!1363368 () Bool)

(declare-fun choose!28574 (Hashable!5419 K!11700) (_ BitVec 64))

(assert (=> d!1363368 (= (hash!2449 hashF!1107 key!3287) (choose!28574 hashF!1107 key!3287))))

(declare-fun bs!794732 () Bool)

(assert (= bs!794732 d!1363368))

(declare-fun m!5175693 () Bool)

(assert (=> bs!794732 m!5175693))

(assert (=> d!1363094 d!1363368))

(assert (=> d!1363126 d!1363278))

(declare-fun d!1363370 () Bool)

(declare-fun res!1854104 () Bool)

(declare-fun e!2782960 () Bool)

(assert (=> d!1363370 (=> res!1854104 e!2782960)))

(assert (=> d!1363370 (= res!1854104 (and ((_ is Cons!50284) (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477))))) (= (_1!28559 (h!56047 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477)))))) key!3287)))))

(assert (=> d!1363370 (= (containsKey!1468 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477)))) key!3287) e!2782960)))

(declare-fun b!4469138 () Bool)

(declare-fun e!2782961 () Bool)

(assert (=> b!4469138 (= e!2782960 e!2782961)))

(declare-fun res!1854105 () Bool)

(assert (=> b!4469138 (=> (not res!1854105) (not e!2782961))))

(assert (=> b!4469138 (= res!1854105 ((_ is Cons!50284) (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477))))))))

(declare-fun b!4469139 () Bool)

(assert (=> b!4469139 (= e!2782961 (containsKey!1468 (t!357358 (t!357358 (_2!28560 (h!56048 (toList!4055 lm!1477))))) key!3287))))

(assert (= (and d!1363370 (not res!1854104)) b!4469138))

(assert (= (and b!4469138 res!1854105) b!4469139))

(declare-fun m!5175699 () Bool)

(assert (=> b!4469139 m!5175699))

(assert (=> b!4468526 d!1363370))

(declare-fun d!1363374 () Bool)

(declare-fun e!2782963 () Bool)

(assert (=> d!1363374 e!2782963))

(declare-fun res!1854106 () Bool)

(assert (=> d!1363374 (=> res!1854106 e!2782963)))

(declare-fun lt!1658065 () Bool)

(assert (=> d!1363374 (= res!1854106 (not lt!1658065))))

(declare-fun lt!1658067 () Bool)

(assert (=> d!1363374 (= lt!1658065 lt!1658067)))

(declare-fun lt!1658064 () Unit!87585)

(declare-fun e!2782962 () Unit!87585)

(assert (=> d!1363374 (= lt!1658064 e!2782962)))

(declare-fun c!760833 () Bool)

(assert (=> d!1363374 (= c!760833 lt!1658067)))

(assert (=> d!1363374 (= lt!1658067 (containsKey!1471 (toList!4055 lt!1657446) (_1!28560 lt!1657409)))))

(assert (=> d!1363374 (= (contains!12834 lt!1657446 (_1!28560 lt!1657409)) lt!1658065)))

(declare-fun b!4469140 () Bool)

(declare-fun lt!1658066 () Unit!87585)

(assert (=> b!4469140 (= e!2782962 lt!1658066)))

(assert (=> b!4469140 (= lt!1658066 (lemmaContainsKeyImpliesGetValueByKeyDefined!816 (toList!4055 lt!1657446) (_1!28560 lt!1657409)))))

(assert (=> b!4469140 (isDefined!8213 (getValueByKey!912 (toList!4055 lt!1657446) (_1!28560 lt!1657409)))))

(declare-fun b!4469141 () Bool)

(declare-fun Unit!87717 () Unit!87585)

(assert (=> b!4469141 (= e!2782962 Unit!87717)))

(declare-fun b!4469142 () Bool)

(assert (=> b!4469142 (= e!2782963 (isDefined!8213 (getValueByKey!912 (toList!4055 lt!1657446) (_1!28560 lt!1657409))))))

(assert (= (and d!1363374 c!760833) b!4469140))

(assert (= (and d!1363374 (not c!760833)) b!4469141))

(assert (= (and d!1363374 (not res!1854106)) b!4469142))

(declare-fun m!5175701 () Bool)

(assert (=> d!1363374 m!5175701))

(declare-fun m!5175703 () Bool)

(assert (=> b!4469140 m!5175703))

(assert (=> b!4469140 m!5174433))

(assert (=> b!4469140 m!5174433))

(declare-fun m!5175707 () Bool)

(assert (=> b!4469140 m!5175707))

(assert (=> b!4469142 m!5174433))

(assert (=> b!4469142 m!5174433))

(assert (=> b!4469142 m!5175707))

(assert (=> d!1363006 d!1363374))

(declare-fun b!4469143 () Bool)

(declare-fun e!2782964 () Option!10926)

(assert (=> b!4469143 (= e!2782964 (Some!10925 (_2!28560 (h!56048 lt!1657444))))))

(declare-fun b!4469145 () Bool)

(declare-fun e!2782965 () Option!10926)

(assert (=> b!4469145 (= e!2782965 (getValueByKey!912 (t!357359 lt!1657444) (_1!28560 lt!1657409)))))

(declare-fun b!4469146 () Bool)

(assert (=> b!4469146 (= e!2782965 None!10925)))

(declare-fun b!4469144 () Bool)

(assert (=> b!4469144 (= e!2782964 e!2782965)))

(declare-fun c!760835 () Bool)

(assert (=> b!4469144 (= c!760835 (and ((_ is Cons!50285) lt!1657444) (not (= (_1!28560 (h!56048 lt!1657444)) (_1!28560 lt!1657409)))))))

(declare-fun d!1363378 () Bool)

(declare-fun c!760834 () Bool)

(assert (=> d!1363378 (= c!760834 (and ((_ is Cons!50285) lt!1657444) (= (_1!28560 (h!56048 lt!1657444)) (_1!28560 lt!1657409))))))

(assert (=> d!1363378 (= (getValueByKey!912 lt!1657444 (_1!28560 lt!1657409)) e!2782964)))

(assert (= (and d!1363378 c!760834) b!4469143))

(assert (= (and d!1363378 (not c!760834)) b!4469144))

(assert (= (and b!4469144 c!760835) b!4469145))

(assert (= (and b!4469144 (not c!760835)) b!4469146))

(declare-fun m!5175709 () Bool)

(assert (=> b!4469145 m!5175709))

(assert (=> d!1363006 d!1363378))

(declare-fun d!1363380 () Bool)

(assert (=> d!1363380 (= (getValueByKey!912 lt!1657444 (_1!28560 lt!1657409)) (Some!10925 (_2!28560 lt!1657409)))))

(declare-fun lt!1658068 () Unit!87585)

(assert (=> d!1363380 (= lt!1658068 (choose!28572 lt!1657444 (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(declare-fun e!2782966 () Bool)

(assert (=> d!1363380 e!2782966))

(declare-fun res!1854107 () Bool)

(assert (=> d!1363380 (=> (not res!1854107) (not e!2782966))))

(assert (=> d!1363380 (= res!1854107 (isStrictlySorted!341 lt!1657444))))

(assert (=> d!1363380 (= (lemmaContainsTupThenGetReturnValue!584 lt!1657444 (_1!28560 lt!1657409) (_2!28560 lt!1657409)) lt!1658068)))

(declare-fun b!4469147 () Bool)

(declare-fun res!1854108 () Bool)

(assert (=> b!4469147 (=> (not res!1854108) (not e!2782966))))

(assert (=> b!4469147 (= res!1854108 (containsKey!1471 lt!1657444 (_1!28560 lt!1657409)))))

(declare-fun b!4469148 () Bool)

(assert (=> b!4469148 (= e!2782966 (contains!12833 lt!1657444 (tuple2!50533 (_1!28560 lt!1657409) (_2!28560 lt!1657409))))))

(assert (= (and d!1363380 res!1854107) b!4469147))

(assert (= (and b!4469147 res!1854108) b!4469148))

(assert (=> d!1363380 m!5174427))

(declare-fun m!5175711 () Bool)

(assert (=> d!1363380 m!5175711))

(declare-fun m!5175713 () Bool)

(assert (=> d!1363380 m!5175713))

(declare-fun m!5175715 () Bool)

(assert (=> b!4469147 m!5175715))

(declare-fun m!5175717 () Bool)

(assert (=> b!4469148 m!5175717))

(assert (=> d!1363006 d!1363380))

(declare-fun b!4469149 () Bool)

(declare-fun e!2782967 () Bool)

(declare-fun lt!1658069 () List!50409)

(assert (=> b!4469149 (= e!2782967 (contains!12833 lt!1658069 (tuple2!50533 (_1!28560 lt!1657409) (_2!28560 lt!1657409))))))

(declare-fun bm!311168 () Bool)

(declare-fun call!311174 () List!50409)

(declare-fun call!311175 () List!50409)

(assert (=> bm!311168 (= call!311174 call!311175)))

(declare-fun b!4469150 () Bool)

(declare-fun e!2782971 () List!50409)

(declare-fun e!2782969 () List!50409)

(assert (=> b!4469150 (= e!2782971 e!2782969)))

(declare-fun c!760837 () Bool)

(assert (=> b!4469150 (= c!760837 (and ((_ is Cons!50285) (toList!4055 lt!1657407)) (= (_1!28560 (h!56048 (toList!4055 lt!1657407))) (_1!28560 lt!1657409))))))

(declare-fun b!4469151 () Bool)

(assert (=> b!4469151 (= e!2782971 call!311175)))

(declare-fun b!4469152 () Bool)

(declare-fun e!2782970 () List!50409)

(declare-fun call!311173 () List!50409)

(assert (=> b!4469152 (= e!2782970 call!311173)))

(declare-fun b!4469153 () Bool)

(assert (=> b!4469153 (= e!2782969 call!311174)))

(declare-fun b!4469154 () Bool)

(declare-fun c!760839 () Bool)

(assert (=> b!4469154 (= c!760839 (and ((_ is Cons!50285) (toList!4055 lt!1657407)) (bvsgt (_1!28560 (h!56048 (toList!4055 lt!1657407))) (_1!28560 lt!1657409))))))

(assert (=> b!4469154 (= e!2782969 e!2782970)))

(declare-fun b!4469155 () Bool)

(assert (=> b!4469155 (= e!2782970 call!311173)))

(declare-fun b!4469156 () Bool)

(declare-fun e!2782968 () List!50409)

(assert (=> b!4469156 (= e!2782968 (insertStrictlySorted!330 (t!357359 (toList!4055 lt!1657407)) (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))

(declare-fun bm!311169 () Bool)

(assert (=> bm!311169 (= call!311173 call!311174)))

(declare-fun bm!311170 () Bool)

(declare-fun c!760836 () Bool)

(assert (=> bm!311170 (= call!311175 ($colon$colon!850 e!2782968 (ite c!760836 (h!56048 (toList!4055 lt!1657407)) (tuple2!50533 (_1!28560 lt!1657409) (_2!28560 lt!1657409)))))))

(declare-fun c!760838 () Bool)

(assert (=> bm!311170 (= c!760838 c!760836)))

(declare-fun b!4469158 () Bool)

(declare-fun res!1854109 () Bool)

(assert (=> b!4469158 (=> (not res!1854109) (not e!2782967))))

(assert (=> b!4469158 (= res!1854109 (containsKey!1471 lt!1658069 (_1!28560 lt!1657409)))))

(declare-fun d!1363382 () Bool)

(assert (=> d!1363382 e!2782967))

(declare-fun res!1854110 () Bool)

(assert (=> d!1363382 (=> (not res!1854110) (not e!2782967))))

(assert (=> d!1363382 (= res!1854110 (isStrictlySorted!341 lt!1658069))))

(assert (=> d!1363382 (= lt!1658069 e!2782971)))

(assert (=> d!1363382 (= c!760836 (and ((_ is Cons!50285) (toList!4055 lt!1657407)) (bvslt (_1!28560 (h!56048 (toList!4055 lt!1657407))) (_1!28560 lt!1657409))))))

(assert (=> d!1363382 (isStrictlySorted!341 (toList!4055 lt!1657407))))

(assert (=> d!1363382 (= (insertStrictlySorted!330 (toList!4055 lt!1657407) (_1!28560 lt!1657409) (_2!28560 lt!1657409)) lt!1658069)))

(declare-fun b!4469157 () Bool)

(assert (=> b!4469157 (= e!2782968 (ite c!760837 (t!357359 (toList!4055 lt!1657407)) (ite c!760839 (Cons!50285 (h!56048 (toList!4055 lt!1657407)) (t!357359 (toList!4055 lt!1657407))) Nil!50285)))))

(assert (= (and d!1363382 c!760836) b!4469151))

(assert (= (and d!1363382 (not c!760836)) b!4469150))

(assert (= (and b!4469150 c!760837) b!4469153))

(assert (= (and b!4469150 (not c!760837)) b!4469154))

(assert (= (and b!4469154 c!760839) b!4469155))

(assert (= (and b!4469154 (not c!760839)) b!4469152))

(assert (= (or b!4469155 b!4469152) bm!311169))

(assert (= (or b!4469153 bm!311169) bm!311168))

(assert (= (or b!4469151 bm!311168) bm!311170))

(assert (= (and bm!311170 c!760838) b!4469156))

(assert (= (and bm!311170 (not c!760838)) b!4469157))

(assert (= (and d!1363382 res!1854110) b!4469158))

(assert (= (and b!4469158 res!1854109) b!4469149))

(declare-fun m!5175719 () Bool)

(assert (=> b!4469158 m!5175719))

(declare-fun m!5175721 () Bool)

(assert (=> d!1363382 m!5175721))

(declare-fun m!5175723 () Bool)

(assert (=> d!1363382 m!5175723))

(declare-fun m!5175725 () Bool)

(assert (=> bm!311170 m!5175725))

(declare-fun m!5175727 () Bool)

(assert (=> b!4469149 m!5175727))

(declare-fun m!5175729 () Bool)

(assert (=> b!4469156 m!5175729))

(assert (=> d!1363006 d!1363382))

(declare-fun d!1363384 () Bool)

(declare-fun lt!1658070 () Bool)

(assert (=> d!1363384 (= lt!1658070 (select (content!8103 e!2782621) key!3287))))

(declare-fun e!2782977 () Bool)

(assert (=> d!1363384 (= lt!1658070 e!2782977)))

(declare-fun res!1854112 () Bool)

(assert (=> d!1363384 (=> (not res!1854112) (not e!2782977))))

(assert (=> d!1363384 (= res!1854112 ((_ is Cons!50287) e!2782621))))

(assert (=> d!1363384 (= (contains!12837 e!2782621 key!3287) lt!1658070)))

(declare-fun b!4469167 () Bool)

(declare-fun e!2782976 () Bool)

(assert (=> b!4469167 (= e!2782977 e!2782976)))

(declare-fun res!1854111 () Bool)

(assert (=> b!4469167 (=> res!1854111 e!2782976)))

(assert (=> b!4469167 (= res!1854111 (= (h!56052 e!2782621) key!3287))))

(declare-fun b!4469168 () Bool)

(assert (=> b!4469168 (= e!2782976 (contains!12837 (t!357361 e!2782621) key!3287))))

(assert (= (and d!1363384 res!1854112) b!4469167))

(assert (= (and b!4469167 (not res!1854111)) b!4469168))

(declare-fun m!5175731 () Bool)

(assert (=> d!1363384 m!5175731))

(declare-fun m!5175733 () Bool)

(assert (=> d!1363384 m!5175733))

(declare-fun m!5175735 () Bool)

(assert (=> b!4469168 m!5175735))

(assert (=> bm!311089 d!1363384))

(declare-fun b!4469169 () Bool)

(declare-fun e!2782978 () Option!10926)

(assert (=> b!4469169 (= e!2782978 (Some!10925 (_2!28560 (h!56048 (toList!4055 lt!1657585)))))))

(declare-fun b!4469171 () Bool)

(declare-fun e!2782979 () Option!10926)

(assert (=> b!4469171 (= e!2782979 (getValueByKey!912 (t!357359 (toList!4055 lt!1657585)) (_1!28560 lt!1657409)))))

(declare-fun b!4469172 () Bool)

(assert (=> b!4469172 (= e!2782979 None!10925)))

(declare-fun b!4469170 () Bool)

(assert (=> b!4469170 (= e!2782978 e!2782979)))

(declare-fun c!760845 () Bool)

(assert (=> b!4469170 (= c!760845 (and ((_ is Cons!50285) (toList!4055 lt!1657585)) (not (= (_1!28560 (h!56048 (toList!4055 lt!1657585))) (_1!28560 lt!1657409)))))))

(declare-fun d!1363386 () Bool)

(declare-fun c!760844 () Bool)

(assert (=> d!1363386 (= c!760844 (and ((_ is Cons!50285) (toList!4055 lt!1657585)) (= (_1!28560 (h!56048 (toList!4055 lt!1657585))) (_1!28560 lt!1657409))))))

(assert (=> d!1363386 (= (getValueByKey!912 (toList!4055 lt!1657585) (_1!28560 lt!1657409)) e!2782978)))

(assert (= (and d!1363386 c!760844) b!4469169))

(assert (= (and d!1363386 (not c!760844)) b!4469170))

(assert (= (and b!4469170 c!760845) b!4469171))

(assert (= (and b!4469170 (not c!760845)) b!4469172))

(declare-fun m!5175737 () Bool)

(assert (=> b!4469171 m!5175737))

(assert (=> b!4468566 d!1363386))

(declare-fun d!1363388 () Bool)

(declare-fun lt!1658071 () Bool)

(assert (=> d!1363388 (= lt!1658071 (select (content!8103 (keys!17362 (extractMap!1080 lt!1657413))) key!3287))))

(declare-fun e!2782983 () Bool)

(assert (=> d!1363388 (= lt!1658071 e!2782983)))

(declare-fun res!1854114 () Bool)

(assert (=> d!1363388 (=> (not res!1854114) (not e!2782983))))

(assert (=> d!1363388 (= res!1854114 ((_ is Cons!50287) (keys!17362 (extractMap!1080 lt!1657413))))))

(assert (=> d!1363388 (= (contains!12837 (keys!17362 (extractMap!1080 lt!1657413)) key!3287) lt!1658071)))

(declare-fun b!4469177 () Bool)

(declare-fun e!2782982 () Bool)

(assert (=> b!4469177 (= e!2782983 e!2782982)))

(declare-fun res!1854113 () Bool)

(assert (=> b!4469177 (=> res!1854113 e!2782982)))

(assert (=> b!4469177 (= res!1854113 (= (h!56052 (keys!17362 (extractMap!1080 lt!1657413))) key!3287))))

(declare-fun b!4469178 () Bool)

(assert (=> b!4469178 (= e!2782982 (contains!12837 (t!357361 (keys!17362 (extractMap!1080 lt!1657413))) key!3287))))

(assert (= (and d!1363388 res!1854114) b!4469177))

(assert (= (and b!4469177 (not res!1854113)) b!4469178))

(assert (=> d!1363388 m!5174731))

(declare-fun m!5175741 () Bool)

(assert (=> d!1363388 m!5175741))

(declare-fun m!5175743 () Bool)

(assert (=> d!1363388 m!5175743))

(declare-fun m!5175745 () Bool)

(assert (=> b!4469178 m!5175745))

(assert (=> b!4468573 d!1363388))

(assert (=> b!4468573 d!1363196))

(declare-fun d!1363392 () Bool)

(declare-fun res!1854115 () Bool)

(declare-fun e!2782984 () Bool)

(assert (=> d!1363392 (=> res!1854115 e!2782984)))

(assert (=> d!1363392 (= res!1854115 (and ((_ is Cons!50284) (_2!28560 (h!56048 lt!1657413))) (= (_1!28559 (h!56047 (_2!28560 (h!56048 lt!1657413)))) key!3287)))))

(assert (=> d!1363392 (= (containsKey!1468 (_2!28560 (h!56048 lt!1657413)) key!3287) e!2782984)))

(declare-fun b!4469179 () Bool)

(declare-fun e!2782985 () Bool)

(assert (=> b!4469179 (= e!2782984 e!2782985)))

(declare-fun res!1854116 () Bool)

(assert (=> b!4469179 (=> (not res!1854116) (not e!2782985))))

(assert (=> b!4469179 (= res!1854116 ((_ is Cons!50284) (_2!28560 (h!56048 lt!1657413))))))

(declare-fun b!4469180 () Bool)

(assert (=> b!4469180 (= e!2782985 (containsKey!1468 (t!357358 (_2!28560 (h!56048 lt!1657413))) key!3287))))

(assert (= (and d!1363392 (not res!1854115)) b!4469179))

(assert (= (and b!4469179 res!1854116) b!4469180))

(declare-fun m!5175747 () Bool)

(assert (=> b!4469180 m!5175747))

(assert (=> b!4468496 d!1363392))

(assert (=> b!4468575 d!1363284))

(declare-fun d!1363394 () Bool)

(assert (=> d!1363394 (containsKey!1472 (toList!4056 (extractMap!1080 lt!1657413)) key!3287)))

(declare-fun lt!1658074 () Unit!87585)

(declare-fun choose!28577 (List!50408 K!11700) Unit!87585)

(assert (=> d!1363394 (= lt!1658074 (choose!28577 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(assert (=> d!1363394 (invariantList!927 (toList!4056 (extractMap!1080 lt!1657413)))))

(assert (=> d!1363394 (= (lemmaInGetKeysListThenContainsKey!374 (toList!4056 (extractMap!1080 lt!1657413)) key!3287) lt!1658074)))

(declare-fun bs!794735 () Bool)

(assert (= bs!794735 d!1363394))

(assert (=> bs!794735 m!5174735))

(declare-fun m!5175749 () Bool)

(assert (=> bs!794735 m!5175749))

(assert (=> bs!794735 m!5175209))

(assert (=> b!4468575 d!1363394))

(declare-fun d!1363396 () Bool)

(declare-fun res!1854119 () Bool)

(declare-fun e!2782986 () Bool)

(assert (=> d!1363396 (=> res!1854119 e!2782986)))

(declare-fun e!2782987 () Bool)

(assert (=> d!1363396 (= res!1854119 e!2782987)))

(declare-fun res!1854117 () Bool)

(assert (=> d!1363396 (=> (not res!1854117) (not e!2782987))))

(assert (=> d!1363396 (= res!1854117 ((_ is Cons!50285) (t!357359 lt!1657413)))))

(assert (=> d!1363396 (= (containsKeyBiggerList!24 (t!357359 lt!1657413) key!3287) e!2782986)))

(declare-fun b!4469181 () Bool)

(assert (=> b!4469181 (= e!2782987 (containsKey!1468 (_2!28560 (h!56048 (t!357359 lt!1657413))) key!3287))))

(declare-fun b!4469182 () Bool)

(declare-fun e!2782988 () Bool)

(assert (=> b!4469182 (= e!2782986 e!2782988)))

(declare-fun res!1854118 () Bool)

(assert (=> b!4469182 (=> (not res!1854118) (not e!2782988))))

(assert (=> b!4469182 (= res!1854118 ((_ is Cons!50285) (t!357359 lt!1657413)))))

(declare-fun b!4469183 () Bool)

(assert (=> b!4469183 (= e!2782988 (containsKeyBiggerList!24 (t!357359 (t!357359 lt!1657413)) key!3287))))

(assert (= (and d!1363396 res!1854117) b!4469181))

(assert (= (and d!1363396 (not res!1854119)) b!4469182))

(assert (= (and b!4469182 res!1854118) b!4469183))

(declare-fun m!5175751 () Bool)

(assert (=> b!4469181 m!5175751))

(declare-fun m!5175753 () Bool)

(assert (=> b!4469183 m!5175753))

(assert (=> b!4468498 d!1363396))

(declare-fun d!1363398 () Bool)

(assert (=> d!1363398 (dynLambda!21012 lambda!163077 lt!1657410)))

(assert (=> d!1363398 true))

(declare-fun _$7!1681 () Unit!87585)

(assert (=> d!1363398 (= (choose!28564 (toList!4055 lm!1477) lambda!163077 lt!1657410) _$7!1681)))

(declare-fun b_lambda!148345 () Bool)

(assert (=> (not b_lambda!148345) (not d!1363398)))

(declare-fun bs!794738 () Bool)

(assert (= bs!794738 d!1363398))

(assert (=> bs!794738 m!5174559))

(assert (=> d!1363046 d!1363398))

(assert (=> d!1363046 d!1363124))

(declare-fun d!1363404 () Bool)

(declare-fun res!1854120 () Bool)

(declare-fun e!2782991 () Bool)

(assert (=> d!1363404 (=> res!1854120 e!2782991)))

(assert (=> d!1363404 (= res!1854120 (and ((_ is Cons!50284) (t!357358 newBucket!178)) (= (_1!28559 (h!56047 (t!357358 newBucket!178))) (_1!28559 (h!56047 newBucket!178)))))))

(assert (=> d!1363404 (= (containsKey!1468 (t!357358 newBucket!178) (_1!28559 (h!56047 newBucket!178))) e!2782991)))

(declare-fun b!4469188 () Bool)

(declare-fun e!2782992 () Bool)

(assert (=> b!4469188 (= e!2782991 e!2782992)))

(declare-fun res!1854121 () Bool)

(assert (=> b!4469188 (=> (not res!1854121) (not e!2782992))))

(assert (=> b!4469188 (= res!1854121 ((_ is Cons!50284) (t!357358 newBucket!178)))))

(declare-fun b!4469189 () Bool)

(assert (=> b!4469189 (= e!2782992 (containsKey!1468 (t!357358 (t!357358 newBucket!178)) (_1!28559 (h!56047 newBucket!178))))))

(assert (= (and d!1363404 (not res!1854120)) b!4469188))

(assert (= (and b!4469188 res!1854121) b!4469189))

(declare-fun m!5175763 () Bool)

(assert (=> b!4469189 m!5175763))

(assert (=> b!4468340 d!1363404))

(declare-fun d!1363408 () Bool)

(declare-fun res!1854124 () Bool)

(declare-fun e!2782995 () Bool)

(assert (=> d!1363408 (=> res!1854124 e!2782995)))

(assert (=> d!1363408 (= res!1854124 (and ((_ is Cons!50284) lt!1657547) (= (_1!28559 (h!56047 lt!1657547)) key!3287)))))

(assert (=> d!1363408 (= (containsKey!1468 lt!1657547 key!3287) e!2782995)))

(declare-fun b!4469192 () Bool)

(declare-fun e!2782996 () Bool)

(assert (=> b!4469192 (= e!2782995 e!2782996)))

(declare-fun res!1854125 () Bool)

(assert (=> b!4469192 (=> (not res!1854125) (not e!2782996))))

(assert (=> b!4469192 (= res!1854125 ((_ is Cons!50284) lt!1657547))))

(declare-fun b!4469193 () Bool)

(assert (=> b!4469193 (= e!2782996 (containsKey!1468 (t!357358 lt!1657547) key!3287))))

(assert (= (and d!1363408 (not res!1854124)) b!4469192))

(assert (= (and b!4469192 res!1854125) b!4469193))

(declare-fun m!5175765 () Bool)

(assert (=> b!4469193 m!5175765))

(assert (=> d!1363052 d!1363408))

(declare-fun d!1363410 () Bool)

(declare-fun res!1854126 () Bool)

(declare-fun e!2782997 () Bool)

(assert (=> d!1363410 (=> res!1854126 e!2782997)))

(assert (=> d!1363410 (= res!1854126 (not ((_ is Cons!50284) lt!1657408)))))

(assert (=> d!1363410 (= (noDuplicateKeys!1024 lt!1657408) e!2782997)))

(declare-fun b!4469194 () Bool)

(declare-fun e!2782998 () Bool)

(assert (=> b!4469194 (= e!2782997 e!2782998)))

(declare-fun res!1854127 () Bool)

(assert (=> b!4469194 (=> (not res!1854127) (not e!2782998))))

(assert (=> b!4469194 (= res!1854127 (not (containsKey!1468 (t!357358 lt!1657408) (_1!28559 (h!56047 lt!1657408)))))))

(declare-fun b!4469195 () Bool)

(assert (=> b!4469195 (= e!2782998 (noDuplicateKeys!1024 (t!357358 lt!1657408)))))

(assert (= (and d!1363410 (not res!1854126)) b!4469194))

(assert (= (and b!4469194 res!1854127) b!4469195))

(declare-fun m!5175773 () Bool)

(assert (=> b!4469194 m!5175773))

(assert (=> b!4469195 m!5175427))

(assert (=> d!1363052 d!1363410))

(declare-fun d!1363414 () Bool)

(assert (=> d!1363414 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(declare-fun lt!1658079 () Unit!87585)

(assert (=> d!1363414 (= lt!1658079 (choose!28568 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(assert (=> d!1363414 (invariantList!927 (toList!4056 (extractMap!1080 lt!1657413)))))

(assert (=> d!1363414 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 (extractMap!1080 lt!1657413)) key!3287) lt!1658079)))

(declare-fun bs!794739 () Bool)

(assert (= bs!794739 d!1363414))

(assert (=> bs!794739 m!5174739))

(assert (=> bs!794739 m!5174739))

(assert (=> bs!794739 m!5174741))

(declare-fun m!5175777 () Bool)

(assert (=> bs!794739 m!5175777))

(assert (=> bs!794739 m!5175209))

(assert (=> b!4468572 d!1363414))

(assert (=> b!4468572 d!1363206))

(assert (=> b!4468572 d!1363208))

(declare-fun d!1363418 () Bool)

(assert (=> d!1363418 (contains!12837 (getKeysList!375 (toList!4056 (extractMap!1080 lt!1657413))) key!3287)))

(declare-fun lt!1658080 () Unit!87585)

(assert (=> d!1363418 (= lt!1658080 (choose!28569 (toList!4056 (extractMap!1080 lt!1657413)) key!3287))))

(assert (=> d!1363418 (invariantList!927 (toList!4056 (extractMap!1080 lt!1657413)))))

(assert (=> d!1363418 (= (lemmaInListThenGetKeysListContains!371 (toList!4056 (extractMap!1080 lt!1657413)) key!3287) lt!1658080)))

(declare-fun bs!794740 () Bool)

(assert (= bs!794740 d!1363418))

(assert (=> bs!794740 m!5174749))

(assert (=> bs!794740 m!5174749))

(declare-fun m!5175779 () Bool)

(assert (=> bs!794740 m!5175779))

(declare-fun m!5175781 () Bool)

(assert (=> bs!794740 m!5175781))

(assert (=> bs!794740 m!5175209))

(assert (=> b!4468572 d!1363418))

(declare-fun d!1363420 () Bool)

(declare-fun res!1854130 () Bool)

(declare-fun e!2783001 () Bool)

(assert (=> d!1363420 (=> res!1854130 e!2783001)))

(assert (=> d!1363420 (= res!1854130 ((_ is Nil!50285) (toList!4055 lm!1477)))))

(assert (=> d!1363420 (= (forall!9988 (toList!4055 lm!1477) lambda!163098) e!2783001)))

(declare-fun b!4469198 () Bool)

(declare-fun e!2783002 () Bool)

(assert (=> b!4469198 (= e!2783001 e!2783002)))

(declare-fun res!1854131 () Bool)

(assert (=> b!4469198 (=> (not res!1854131) (not e!2783002))))

(assert (=> b!4469198 (= res!1854131 (dynLambda!21012 lambda!163098 (h!56048 (toList!4055 lm!1477))))))

(declare-fun b!4469199 () Bool)

(assert (=> b!4469199 (= e!2783002 (forall!9988 (t!357359 (toList!4055 lm!1477)) lambda!163098))))

(assert (= (and d!1363420 (not res!1854130)) b!4469198))

(assert (= (and b!4469198 res!1854131) b!4469199))

(declare-fun b_lambda!148347 () Bool)

(assert (=> (not b_lambda!148347) (not b!4469198)))

(declare-fun m!5175783 () Bool)

(assert (=> b!4469198 m!5175783))

(declare-fun m!5175785 () Bool)

(assert (=> b!4469199 m!5175785))

(assert (=> d!1363066 d!1363420))

(declare-fun b!4469200 () Bool)

(declare-fun e!2783004 () Bool)

(assert (=> b!4469200 (= e!2783004 (contains!12837 (keys!17362 lt!1657602) key!3287))))

(declare-fun b!4469201 () Bool)

(declare-fun e!2783003 () List!50411)

(assert (=> b!4469201 (= e!2783003 (getKeysList!375 (toList!4056 lt!1657602)))))

(declare-fun d!1363422 () Bool)

(declare-fun e!2783008 () Bool)

(assert (=> d!1363422 e!2783008))

(declare-fun res!1854133 () Bool)

(assert (=> d!1363422 (=> res!1854133 e!2783008)))

(declare-fun e!2783006 () Bool)

(assert (=> d!1363422 (= res!1854133 e!2783006)))

(declare-fun res!1854134 () Bool)

(assert (=> d!1363422 (=> (not res!1854134) (not e!2783006))))

(declare-fun lt!1658084 () Bool)

(assert (=> d!1363422 (= res!1854134 (not lt!1658084))))

(declare-fun lt!1658082 () Bool)

(assert (=> d!1363422 (= lt!1658084 lt!1658082)))

(declare-fun lt!1658086 () Unit!87585)

(declare-fun e!2783005 () Unit!87585)

(assert (=> d!1363422 (= lt!1658086 e!2783005)))

(declare-fun c!760852 () Bool)

(assert (=> d!1363422 (= c!760852 lt!1658082)))

(assert (=> d!1363422 (= lt!1658082 (containsKey!1472 (toList!4056 lt!1657602) key!3287))))

(assert (=> d!1363422 (= (contains!12835 lt!1657602 key!3287) lt!1658084)))

(declare-fun b!4469202 () Bool)

(declare-fun e!2783007 () Unit!87585)

(assert (=> b!4469202 (= e!2783005 e!2783007)))

(declare-fun c!760850 () Bool)

(declare-fun call!311176 () Bool)

(assert (=> b!4469202 (= c!760850 call!311176)))

(declare-fun b!4469203 () Bool)

(assert (=> b!4469203 (= e!2783008 e!2783004)))

(declare-fun res!1854132 () Bool)

(assert (=> b!4469203 (=> (not res!1854132) (not e!2783004))))

(assert (=> b!4469203 (= res!1854132 (isDefined!8214 (getValueByKey!913 (toList!4056 lt!1657602) key!3287)))))

(declare-fun b!4469204 () Bool)

(declare-fun lt!1658085 () Unit!87585)

(assert (=> b!4469204 (= e!2783005 lt!1658085)))

(declare-fun lt!1658087 () Unit!87585)

(assert (=> b!4469204 (= lt!1658087 (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 lt!1657602) key!3287))))

(assert (=> b!4469204 (isDefined!8214 (getValueByKey!913 (toList!4056 lt!1657602) key!3287))))

(declare-fun lt!1658081 () Unit!87585)

(assert (=> b!4469204 (= lt!1658081 lt!1658087)))

(assert (=> b!4469204 (= lt!1658085 (lemmaInListThenGetKeysListContains!371 (toList!4056 lt!1657602) key!3287))))

(assert (=> b!4469204 call!311176))

(declare-fun b!4469205 () Bool)

(assert (=> b!4469205 (= e!2783006 (not (contains!12837 (keys!17362 lt!1657602) key!3287)))))

(declare-fun b!4469206 () Bool)

(declare-fun Unit!87718 () Unit!87585)

(assert (=> b!4469206 (= e!2783007 Unit!87718)))

(declare-fun b!4469207 () Bool)

(assert (=> b!4469207 false))

(declare-fun lt!1658088 () Unit!87585)

(declare-fun lt!1658083 () Unit!87585)

(assert (=> b!4469207 (= lt!1658088 lt!1658083)))

(assert (=> b!4469207 (containsKey!1472 (toList!4056 lt!1657602) key!3287)))

(assert (=> b!4469207 (= lt!1658083 (lemmaInGetKeysListThenContainsKey!374 (toList!4056 lt!1657602) key!3287))))

(declare-fun Unit!87719 () Unit!87585)

(assert (=> b!4469207 (= e!2783007 Unit!87719)))

(declare-fun b!4469208 () Bool)

(assert (=> b!4469208 (= e!2783003 (keys!17362 lt!1657602))))

(declare-fun bm!311171 () Bool)

(assert (=> bm!311171 (= call!311176 (contains!12837 e!2783003 key!3287))))

(declare-fun c!760851 () Bool)

(assert (=> bm!311171 (= c!760851 c!760852)))

(assert (= (and d!1363422 c!760852) b!4469204))

(assert (= (and d!1363422 (not c!760852)) b!4469202))

(assert (= (and b!4469202 c!760850) b!4469207))

(assert (= (and b!4469202 (not c!760850)) b!4469206))

(assert (= (or b!4469204 b!4469202) bm!311171))

(assert (= (and bm!311171 c!760851) b!4469201))

(assert (= (and bm!311171 (not c!760851)) b!4469208))

(assert (= (and d!1363422 res!1854134) b!4469205))

(assert (= (and d!1363422 (not res!1854133)) b!4469203))

(assert (= (and b!4469203 res!1854132) b!4469200))

(assert (=> b!4469208 m!5174785))

(assert (=> b!4469205 m!5174785))

(assert (=> b!4469205 m!5174785))

(declare-fun m!5175787 () Bool)

(assert (=> b!4469205 m!5175787))

(declare-fun m!5175789 () Bool)

(assert (=> d!1363422 m!5175789))

(declare-fun m!5175791 () Bool)

(assert (=> bm!311171 m!5175791))

(declare-fun m!5175793 () Bool)

(assert (=> b!4469203 m!5175793))

(assert (=> b!4469203 m!5175793))

(declare-fun m!5175795 () Bool)

(assert (=> b!4469203 m!5175795))

(assert (=> b!4469207 m!5175789))

(declare-fun m!5175797 () Bool)

(assert (=> b!4469207 m!5175797))

(declare-fun m!5175799 () Bool)

(assert (=> b!4469204 m!5175799))

(assert (=> b!4469204 m!5175793))

(assert (=> b!4469204 m!5175793))

(assert (=> b!4469204 m!5175795))

(declare-fun m!5175801 () Bool)

(assert (=> b!4469204 m!5175801))

(assert (=> b!4469200 m!5174785))

(assert (=> b!4469200 m!5174785))

(assert (=> b!4469200 m!5175787))

(declare-fun m!5175803 () Bool)

(assert (=> b!4469201 m!5175803))

(assert (=> d!1363116 d!1363422))

(declare-fun b!4469328 () Bool)

(declare-fun res!1854189 () Bool)

(declare-fun e!2783088 () Bool)

(assert (=> b!4469328 (=> (not res!1854189) (not e!2783088))))

(declare-fun lt!1658183 () List!50408)

(assert (=> b!4469328 (= res!1854189 (= (content!8103 (getKeysList!375 lt!1658183)) ((_ map and) (content!8103 (getKeysList!375 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))) ((_ map not) (store ((as const (Array K!11700 Bool)) false) key!3287 true)))))))

(declare-fun bm!311187 () Bool)

(declare-fun call!311192 () (InoxSet tuple2!50530))

(assert (=> bm!311187 (= call!311192 (content!8104 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun b!4469329 () Bool)

(declare-fun e!2783094 () List!50408)

(assert (=> b!4469329 (= e!2783094 Nil!50284)))

(declare-fun b!4469330 () Bool)

(declare-fun e!2783090 () List!50408)

(assert (=> b!4469330 (= e!2783090 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(declare-fun c!760889 () Bool)

(declare-fun call!311193 () Bool)

(assert (=> b!4469330 (= c!760889 call!311193)))

(declare-fun lt!1658175 () Unit!87585)

(declare-fun e!2783087 () Unit!87585)

(assert (=> b!4469330 (= lt!1658175 e!2783087)))

(declare-fun c!760888 () Bool)

(declare-fun bm!311188 () Bool)

(declare-fun call!311196 () (InoxSet tuple2!50530))

(assert (=> bm!311188 (= call!311196 (content!8104 (ite c!760888 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658183)))))

(declare-fun b!4469331 () Bool)

(declare-fun call!311195 () (InoxSet tuple2!50530))

(assert (=> b!4469331 (= call!311192 call!311195)))

(declare-fun Unit!87720 () Unit!87585)

(assert (=> b!4469331 (= e!2783087 Unit!87720)))

(declare-fun bm!311189 () Bool)

(declare-fun lt!1658178 () K!11700)

(declare-fun c!760892 () Bool)

(declare-fun call!311194 () Bool)

(declare-fun e!2783093 () List!50408)

(assert (=> bm!311189 (= call!311194 (containsKey!1472 e!2783093 (ite c!760892 lt!1658178 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))))

(declare-fun c!760890 () Bool)

(assert (=> bm!311189 (= c!760890 c!760892)))

(declare-fun b!4469332 () Bool)

(declare-fun e!2783089 () Unit!87585)

(declare-fun Unit!87721 () Unit!87585)

(assert (=> b!4469332 (= e!2783089 Unit!87721)))

(declare-fun lt!1658182 () Unit!87585)

(assert (=> b!4469332 (= lt!1658182 (lemmaInGetKeysListThenContainsKey!374 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))))

(assert (=> b!4469332 call!311193))

(declare-fun lt!1658171 () Unit!87585)

(assert (=> b!4469332 (= lt!1658171 lt!1658182)))

(assert (=> b!4469332 false))

(declare-fun b!4469333 () Bool)

(declare-fun e!2783086 () Unit!87585)

(declare-fun Unit!87722 () Unit!87585)

(assert (=> b!4469333 (= e!2783086 Unit!87722)))

(declare-fun d!1363424 () Bool)

(assert (=> d!1363424 e!2783088))

(declare-fun res!1854190 () Bool)

(assert (=> d!1363424 (=> (not res!1854190) (not e!2783088))))

(assert (=> d!1363424 (= res!1854190 (invariantList!927 lt!1658183))))

(assert (=> d!1363424 (= lt!1658183 e!2783090)))

(assert (=> d!1363424 (= c!760892 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))) key!3287)))))

(assert (=> d!1363424 (invariantList!927 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))

(assert (=> d!1363424 (= (removePresrvNoDuplicatedKeys!63 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287) lt!1658183)))

(declare-fun b!4469334 () Bool)

(assert (=> b!4469334 (= e!2783093 (removePresrvNoDuplicatedKeys!63 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) key!3287))))

(declare-fun b!4469335 () Bool)

(declare-fun Unit!87723 () Unit!87585)

(assert (=> b!4469335 (= e!2783089 Unit!87723)))

(declare-fun b!4469336 () Bool)

(declare-fun get!16393 (Option!10927) V!11946)

(assert (=> b!4469336 (= call!311192 ((_ map and) call!311195 ((_ map not) (store ((as const (Array tuple2!50530 Bool)) false) (tuple2!50531 key!3287 (get!16393 (getValueByKey!913 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287))) true))))))

(declare-fun lt!1658169 () Unit!87585)

(declare-fun e!2783091 () Unit!87585)

(assert (=> b!4469336 (= lt!1658169 e!2783091)))

(declare-fun c!760886 () Bool)

(declare-fun contains!12839 (List!50408 tuple2!50530) Bool)

(assert (=> b!4469336 (= c!760886 (contains!12839 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (tuple2!50531 key!3287 (get!16393 (getValueByKey!913 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287)))))))

(declare-fun Unit!87725 () Unit!87585)

(assert (=> b!4469336 (= e!2783087 Unit!87725)))

(declare-fun bm!311190 () Bool)

(declare-fun call!311197 () (InoxSet tuple2!50530))

(assert (=> bm!311190 (= call!311197 (content!8104 (ite c!760888 lt!1658183 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun bm!311191 () Bool)

(assert (=> bm!311191 (= call!311193 (containsKey!1472 (ite c!760892 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))) (ite c!760892 key!3287 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))))

(declare-fun b!4469337 () Bool)

(assert (=> b!4469337 (= e!2783090 e!2783094)))

(declare-fun c!760887 () Bool)

(assert (=> b!4469337 (= c!760887 (and ((_ is Cons!50284) (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (not (= (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))) key!3287))))))

(declare-fun bm!311192 () Bool)

(assert (=> bm!311192 (= call!311195 (content!8104 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(declare-fun b!4469338 () Bool)

(declare-fun Unit!87727 () Unit!87585)

(assert (=> b!4469338 (= e!2783091 Unit!87727)))

(declare-fun b!4469339 () Bool)

(assert (=> b!4469339 (= e!2783093 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(declare-fun b!4469340 () Bool)

(declare-fun e!2783092 () Bool)

(assert (=> b!4469340 (= e!2783088 e!2783092)))

(assert (=> b!4469340 (= c!760888 (containsKey!1472 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287))))

(declare-fun b!4469341 () Bool)

(assert (=> b!4469341 (= e!2783092 (= call!311197 ((_ map and) call!311196 ((_ map not) (store ((as const (Array tuple2!50530 Bool)) false) (tuple2!50531 key!3287 (get!16393 (getValueByKey!913 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287))) true)))))))

(assert (=> b!4469341 (containsKey!1472 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287)))

(declare-fun lt!1658172 () Unit!87585)

(assert (=> b!4469341 (= lt!1658172 (lemmaContainsKeyImpliesGetValueByKeyDefined!817 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287))))

(assert (=> b!4469341 (isDefined!8214 (getValueByKey!913 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287))))

(declare-fun lt!1658180 () Unit!87585)

(assert (=> b!4469341 (= lt!1658180 lt!1658172)))

(declare-fun b!4469342 () Bool)

(declare-fun Unit!87733 () Unit!87585)

(assert (=> b!4469342 (= e!2783091 Unit!87733)))

(declare-fun lt!1658176 () V!11946)

(assert (=> b!4469342 (= lt!1658176 (get!16393 (getValueByKey!913 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287)))))

(assert (=> b!4469342 (= lt!1658178 key!3287)))

(declare-fun lt!1658179 () K!11700)

(assert (=> b!4469342 (= lt!1658179 key!3287)))

(declare-fun lt!1658185 () Unit!87585)

(declare-fun lemmaContainsTupleThenContainsKey!23 (List!50408 K!11700 V!11946) Unit!87585)

(assert (=> b!4469342 (= lt!1658185 (lemmaContainsTupleThenContainsKey!23 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lt!1658178 (get!16393 (getValueByKey!913 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) key!3287))))))

(assert (=> b!4469342 call!311194))

(declare-fun lt!1658168 () Unit!87585)

(assert (=> b!4469342 (= lt!1658168 lt!1658185)))

(assert (=> b!4469342 false))

(declare-fun b!4469343 () Bool)

(assert (=> b!4469343 (= e!2783092 (= call!311196 call!311197))))

(declare-fun b!4469344 () Bool)

(declare-fun Unit!87737 () Unit!87585)

(assert (=> b!4469344 (= e!2783086 Unit!87737)))

(declare-fun lt!1658173 () List!50408)

(assert (=> b!4469344 (= lt!1658173 (removePresrvNoDuplicatedKeys!63 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) key!3287))))

(declare-fun lt!1658170 () Unit!87585)

(assert (=> b!4469344 (= lt!1658170 (lemmaInListThenGetKeysListContains!371 lt!1658173 (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))))

(assert (=> b!4469344 (contains!12837 (getKeysList!375 lt!1658173) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun lt!1658184 () Unit!87585)

(assert (=> b!4469344 (= lt!1658184 lt!1658170)))

(assert (=> b!4469344 false))

(declare-fun b!4469345 () Bool)

(declare-fun res!1854188 () Bool)

(assert (=> b!4469345 (=> (not res!1854188) (not e!2783088))))

(assert (=> b!4469345 (= res!1854188 (not (containsKey!1472 lt!1658183 key!3287)))))

(declare-fun b!4469346 () Bool)

(declare-fun lt!1658181 () Unit!87585)

(assert (=> b!4469346 (= lt!1658181 e!2783086)))

(declare-fun c!760893 () Bool)

(assert (=> b!4469346 (= c!760893 call!311194)))

(declare-fun lt!1658174 () Unit!87585)

(assert (=> b!4469346 (= lt!1658174 e!2783089)))

(declare-fun c!760891 () Bool)

(assert (=> b!4469346 (= c!760891 (contains!12837 (getKeysList!375 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))) (_1!28559 (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))))

(declare-fun lt!1658177 () List!50408)

(declare-fun $colon$colon!852 (List!50408 tuple2!50530) List!50408)

(assert (=> b!4469346 (= lt!1658177 ($colon$colon!852 (removePresrvNoDuplicatedKeys!63 (t!357358 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) key!3287) (h!56047 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(assert (=> b!4469346 (= e!2783094 lt!1658177)))

(assert (= (and d!1363424 c!760892) b!4469330))

(assert (= (and d!1363424 (not c!760892)) b!4469337))

(assert (= (and b!4469330 c!760889) b!4469336))

(assert (= (and b!4469330 (not c!760889)) b!4469331))

(assert (= (and b!4469336 c!760886) b!4469342))

(assert (= (and b!4469336 (not c!760886)) b!4469338))

(assert (= (or b!4469336 b!4469331) bm!311187))

(assert (= (or b!4469336 b!4469331) bm!311192))

(assert (= (and b!4469337 c!760887) b!4469346))

(assert (= (and b!4469337 (not c!760887)) b!4469329))

(assert (= (and b!4469346 c!760891) b!4469332))

(assert (= (and b!4469346 (not c!760891)) b!4469335))

(assert (= (and b!4469346 c!760893) b!4469344))

(assert (= (and b!4469346 (not c!760893)) b!4469333))

(assert (= (or b!4469330 b!4469332) bm!311191))

(assert (= (or b!4469342 b!4469346) bm!311189))

(assert (= (and bm!311189 c!760890) b!4469339))

(assert (= (and bm!311189 (not c!760890)) b!4469334))

(assert (= (and d!1363424 res!1854190) b!4469345))

(assert (= (and b!4469345 res!1854188) b!4469328))

(assert (= (and b!4469328 res!1854189) b!4469340))

(assert (= (and b!4469340 c!760888) b!4469341))

(assert (= (and b!4469340 (not c!760888)) b!4469343))

(assert (= (or b!4469341 b!4469343) bm!311188))

(assert (= (or b!4469341 b!4469343) bm!311190))

(declare-fun m!5176009 () Bool)

(assert (=> d!1363424 m!5176009))

(declare-fun m!5176011 () Bool)

(assert (=> d!1363424 m!5176011))

(declare-fun m!5176013 () Bool)

(assert (=> b!4469341 m!5176013))

(declare-fun m!5176015 () Bool)

(assert (=> b!4469341 m!5176015))

(declare-fun m!5176017 () Bool)

(assert (=> b!4469341 m!5176017))

(declare-fun m!5176019 () Bool)

(assert (=> b!4469341 m!5176019))

(assert (=> b!4469341 m!5176019))

(declare-fun m!5176021 () Bool)

(assert (=> b!4469341 m!5176021))

(assert (=> b!4469341 m!5176019))

(declare-fun m!5176023 () Bool)

(assert (=> b!4469341 m!5176023))

(declare-fun m!5176025 () Bool)

(assert (=> bm!311191 m!5176025))

(declare-fun m!5176027 () Bool)

(assert (=> bm!311189 m!5176027))

(declare-fun m!5176029 () Bool)

(assert (=> b!4469345 m!5176029))

(declare-fun m!5176031 () Bool)

(assert (=> b!4469332 m!5176031))

(declare-fun m!5176033 () Bool)

(assert (=> b!4469344 m!5176033))

(declare-fun m!5176035 () Bool)

(assert (=> b!4469344 m!5176035))

(declare-fun m!5176037 () Bool)

(assert (=> b!4469344 m!5176037))

(assert (=> b!4469344 m!5176037))

(declare-fun m!5176039 () Bool)

(assert (=> b!4469344 m!5176039))

(declare-fun m!5176041 () Bool)

(assert (=> bm!311188 m!5176041))

(assert (=> b!4469342 m!5176019))

(assert (=> b!4469342 m!5176019))

(assert (=> b!4469342 m!5176021))

(assert (=> b!4469342 m!5176021))

(declare-fun m!5176043 () Bool)

(assert (=> b!4469342 m!5176043))

(assert (=> b!4469340 m!5176017))

(declare-fun m!5176047 () Bool)

(assert (=> b!4469328 m!5176047))

(declare-fun m!5176051 () Bool)

(assert (=> b!4469328 m!5176051))

(declare-fun m!5176053 () Bool)

(assert (=> b!4469328 m!5176053))

(assert (=> b!4469328 m!5176051))

(assert (=> b!4469328 m!5174779))

(assert (=> b!4469328 m!5176047))

(declare-fun m!5176055 () Bool)

(assert (=> b!4469328 m!5176055))

(declare-fun m!5176057 () Bool)

(assert (=> bm!311192 m!5176057))

(assert (=> b!4469334 m!5176033))

(declare-fun m!5176059 () Bool)

(assert (=> b!4469346 m!5176059))

(assert (=> b!4469346 m!5176059))

(declare-fun m!5176061 () Bool)

(assert (=> b!4469346 m!5176061))

(assert (=> b!4469346 m!5176033))

(assert (=> b!4469346 m!5176033))

(declare-fun m!5176063 () Bool)

(assert (=> b!4469346 m!5176063))

(declare-fun m!5176065 () Bool)

(assert (=> bm!311190 m!5176065))

(declare-fun m!5176067 () Bool)

(assert (=> bm!311187 m!5176067))

(assert (=> b!4469336 m!5176019))

(assert (=> b!4469336 m!5176019))

(assert (=> b!4469336 m!5176021))

(assert (=> b!4469336 m!5176015))

(declare-fun m!5176069 () Bool)

(assert (=> b!4469336 m!5176069))

(assert (=> d!1363116 d!1363424))

(declare-fun bs!794867 () Bool)

(declare-fun b!4469374 () Bool)

(assert (= bs!794867 (and b!4469374 b!4469105)))

(declare-fun lambda!163280 () Int)

(assert (=> bs!794867 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1658022) (= lambda!163280 lambda!163258))))

(declare-fun bs!794868 () Bool)

(assert (= bs!794868 (and b!4469374 b!4468792)))

(assert (=> bs!794868 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163280 lambda!163214))))

(declare-fun bs!794870 () Bool)

(assert (= bs!794870 (and b!4469374 b!4468958)))

(assert (=> bs!794870 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163280 lambda!163233))))

(declare-fun bs!794872 () Bool)

(assert (= bs!794872 (and b!4469374 d!1363346)))

(assert (=> bs!794872 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1658035) (= lambda!163280 lambda!163260))))

(declare-fun bs!794873 () Bool)

(assert (= bs!794873 (and b!4469374 d!1363210)))

(assert (=> bs!794873 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657792) (= lambda!163280 lambda!163216))))

(declare-fun bs!794875 () Bool)

(assert (= bs!794875 (and b!4469374 b!4469011)))

(assert (=> bs!794875 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163280 lambda!163238))))

(declare-fun bs!794876 () Bool)

(assert (= bs!794876 (and b!4469374 b!4469109)))

(assert (=> bs!794876 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163280 lambda!163256))))

(declare-fun bs!794877 () Bool)

(assert (= bs!794877 (and b!4469374 d!1363078)))

(assert (=> bs!794877 (not (= lambda!163280 lambda!163106))))

(declare-fun bs!794878 () Bool)

(assert (= bs!794878 (and b!4469374 b!4468954)))

(assert (=> bs!794878 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657872) (= lambda!163280 lambda!163235))))

(assert (=> bs!794868 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657779) (= lambda!163280 lambda!163215))))

(declare-fun bs!794880 () Bool)

(assert (= bs!794880 (and b!4469374 b!4468796)))

(assert (=> bs!794880 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163280 lambda!163213))))

(declare-fun bs!794882 () Bool)

(assert (= bs!794882 (and b!4469374 b!4469007)))

(assert (=> bs!794882 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657928) (= lambda!163280 lambda!163240))))

(assert (=> bs!794878 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163280 lambda!163234))))

(assert (=> bs!794882 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163280 lambda!163239))))

(declare-fun bs!794885 () Bool)

(assert (= bs!794885 (and b!4469374 d!1363280)))

(assert (=> bs!794885 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657885) (= lambda!163280 lambda!163236))))

(assert (=> bs!794867 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163280 lambda!163257))))

(declare-fun bs!794888 () Bool)

(assert (= bs!794888 (and b!4469374 d!1363292)))

(assert (=> bs!794888 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657941) (= lambda!163280 lambda!163241))))

(assert (=> b!4469374 true))

(declare-fun bs!794895 () Bool)

(declare-fun b!4469370 () Bool)

(assert (= bs!794895 (and b!4469370 b!4469105)))

(declare-fun lambda!163282 () Int)

(assert (=> bs!794895 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1658022) (= lambda!163282 lambda!163258))))

(declare-fun bs!794896 () Bool)

(assert (= bs!794896 (and b!4469370 b!4468792)))

(assert (=> bs!794896 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163282 lambda!163214))))

(declare-fun bs!794898 () Bool)

(assert (= bs!794898 (and b!4469370 b!4468958)))

(assert (=> bs!794898 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163282 lambda!163233))))

(declare-fun bs!794899 () Bool)

(assert (= bs!794899 (and b!4469370 d!1363346)))

(assert (=> bs!794899 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1658035) (= lambda!163282 lambda!163260))))

(declare-fun bs!794901 () Bool)

(assert (= bs!794901 (and b!4469370 d!1363210)))

(assert (=> bs!794901 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657792) (= lambda!163282 lambda!163216))))

(declare-fun bs!794902 () Bool)

(assert (= bs!794902 (and b!4469370 b!4469011)))

(assert (=> bs!794902 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163282 lambda!163238))))

(declare-fun bs!794904 () Bool)

(assert (= bs!794904 (and b!4469370 b!4469109)))

(assert (=> bs!794904 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163282 lambda!163256))))

(declare-fun bs!794906 () Bool)

(assert (= bs!794906 (and b!4469370 d!1363078)))

(assert (=> bs!794906 (not (= lambda!163282 lambda!163106))))

(declare-fun bs!794907 () Bool)

(assert (= bs!794907 (and b!4469370 b!4468954)))

(assert (=> bs!794907 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657872) (= lambda!163282 lambda!163235))))

(assert (=> bs!794896 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657779) (= lambda!163282 lambda!163215))))

(declare-fun bs!794909 () Bool)

(assert (= bs!794909 (and b!4469370 b!4469007)))

(assert (=> bs!794909 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657928) (= lambda!163282 lambda!163240))))

(assert (=> bs!794907 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163282 lambda!163234))))

(assert (=> bs!794909 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163282 lambda!163239))))

(declare-fun bs!794910 () Bool)

(assert (= bs!794910 (and b!4469370 d!1363280)))

(assert (=> bs!794910 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657885) (= lambda!163282 lambda!163236))))

(assert (=> bs!794895 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163282 lambda!163257))))

(declare-fun bs!794911 () Bool)

(assert (= bs!794911 (and b!4469370 d!1363292)))

(assert (=> bs!794911 (= (= (extractMap!1080 (t!357359 lt!1657413)) lt!1657941) (= lambda!163282 lambda!163241))))

(declare-fun bs!794912 () Bool)

(assert (= bs!794912 (and b!4469370 b!4468796)))

(assert (=> bs!794912 (= (= (extractMap!1080 (t!357359 lt!1657413)) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163282 lambda!163213))))

(declare-fun bs!794913 () Bool)

(assert (= bs!794913 (and b!4469370 b!4469374)))

(assert (=> bs!794913 (= lambda!163282 lambda!163280)))

(assert (=> b!4469370 true))

(declare-fun lambda!163284 () Int)

(declare-fun lt!1658211 () ListMap!3317)

(assert (=> bs!794896 (= (= lt!1658211 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163284 lambda!163214))))

(assert (=> bs!794898 (= (= lt!1658211 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163284 lambda!163233))))

(assert (=> bs!794899 (= (= lt!1658211 lt!1658035) (= lambda!163284 lambda!163260))))

(assert (=> bs!794901 (= (= lt!1658211 lt!1657792) (= lambda!163284 lambda!163216))))

(assert (=> bs!794902 (= (= lt!1658211 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163284 lambda!163238))))

(assert (=> bs!794904 (= (= lt!1658211 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163284 lambda!163256))))

(assert (=> bs!794906 (not (= lambda!163284 lambda!163106))))

(assert (=> bs!794907 (= (= lt!1658211 lt!1657872) (= lambda!163284 lambda!163235))))

(assert (=> bs!794896 (= (= lt!1658211 lt!1657779) (= lambda!163284 lambda!163215))))

(assert (=> bs!794895 (= (= lt!1658211 lt!1658022) (= lambda!163284 lambda!163258))))

(assert (=> b!4469370 (= (= lt!1658211 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163284 lambda!163282))))

(assert (=> bs!794909 (= (= lt!1658211 lt!1657928) (= lambda!163284 lambda!163240))))

(assert (=> bs!794907 (= (= lt!1658211 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163284 lambda!163234))))

(assert (=> bs!794909 (= (= lt!1658211 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163284 lambda!163239))))

(assert (=> bs!794910 (= (= lt!1658211 lt!1657885) (= lambda!163284 lambda!163236))))

(assert (=> bs!794895 (= (= lt!1658211 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163284 lambda!163257))))

(assert (=> bs!794911 (= (= lt!1658211 lt!1657941) (= lambda!163284 lambda!163241))))

(assert (=> bs!794912 (= (= lt!1658211 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163284 lambda!163213))))

(assert (=> bs!794913 (= (= lt!1658211 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163284 lambda!163280))))

(assert (=> b!4469370 true))

(declare-fun bs!794918 () Bool)

(declare-fun d!1363506 () Bool)

(assert (= bs!794918 (and d!1363506 b!4468792)))

(declare-fun lt!1658224 () ListMap!3317)

(declare-fun lambda!163286 () Int)

(assert (=> bs!794918 (= (= lt!1658224 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163286 lambda!163214))))

(declare-fun bs!794920 () Bool)

(assert (= bs!794920 (and d!1363506 b!4468958)))

(assert (=> bs!794920 (= (= lt!1658224 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163286 lambda!163233))))

(declare-fun bs!794922 () Bool)

(assert (= bs!794922 (and d!1363506 d!1363346)))

(assert (=> bs!794922 (= (= lt!1658224 lt!1658035) (= lambda!163286 lambda!163260))))

(declare-fun bs!794924 () Bool)

(assert (= bs!794924 (and d!1363506 d!1363210)))

(assert (=> bs!794924 (= (= lt!1658224 lt!1657792) (= lambda!163286 lambda!163216))))

(declare-fun bs!794925 () Bool)

(assert (= bs!794925 (and d!1363506 b!4469011)))

(assert (=> bs!794925 (= (= lt!1658224 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163286 lambda!163238))))

(declare-fun bs!794927 () Bool)

(assert (= bs!794927 (and d!1363506 b!4469109)))

(assert (=> bs!794927 (= (= lt!1658224 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163286 lambda!163256))))

(declare-fun bs!794929 () Bool)

(assert (= bs!794929 (and d!1363506 b!4469370)))

(assert (=> bs!794929 (= (= lt!1658224 lt!1658211) (= lambda!163286 lambda!163284))))

(declare-fun bs!794931 () Bool)

(assert (= bs!794931 (and d!1363506 d!1363078)))

(assert (=> bs!794931 (not (= lambda!163286 lambda!163106))))

(declare-fun bs!794933 () Bool)

(assert (= bs!794933 (and d!1363506 b!4468954)))

(assert (=> bs!794933 (= (= lt!1658224 lt!1657872) (= lambda!163286 lambda!163235))))

(assert (=> bs!794918 (= (= lt!1658224 lt!1657779) (= lambda!163286 lambda!163215))))

(declare-fun bs!794935 () Bool)

(assert (= bs!794935 (and d!1363506 b!4469105)))

(assert (=> bs!794935 (= (= lt!1658224 lt!1658022) (= lambda!163286 lambda!163258))))

(assert (=> bs!794929 (= (= lt!1658224 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163286 lambda!163282))))

(declare-fun bs!794937 () Bool)

(assert (= bs!794937 (and d!1363506 b!4469007)))

(assert (=> bs!794937 (= (= lt!1658224 lt!1657928) (= lambda!163286 lambda!163240))))

(assert (=> bs!794933 (= (= lt!1658224 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163286 lambda!163234))))

(assert (=> bs!794937 (= (= lt!1658224 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163286 lambda!163239))))

(declare-fun bs!794939 () Bool)

(assert (= bs!794939 (and d!1363506 d!1363280)))

(assert (=> bs!794939 (= (= lt!1658224 lt!1657885) (= lambda!163286 lambda!163236))))

(assert (=> bs!794935 (= (= lt!1658224 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163286 lambda!163257))))

(declare-fun bs!794941 () Bool)

(assert (= bs!794941 (and d!1363506 d!1363292)))

(assert (=> bs!794941 (= (= lt!1658224 lt!1657941) (= lambda!163286 lambda!163241))))

(declare-fun bs!794943 () Bool)

(assert (= bs!794943 (and d!1363506 b!4468796)))

(assert (=> bs!794943 (= (= lt!1658224 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163286 lambda!163213))))

(declare-fun bs!794945 () Bool)

(assert (= bs!794945 (and d!1363506 b!4469374)))

(assert (=> bs!794945 (= (= lt!1658224 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163286 lambda!163280))))

(assert (=> d!1363506 true))

(declare-fun e!2783115 () ListMap!3317)

(assert (=> b!4469370 (= e!2783115 lt!1658211)))

(declare-fun lt!1658216 () ListMap!3317)

(assert (=> b!4469370 (= lt!1658216 (+!1368 (extractMap!1080 (t!357359 lt!1657413)) (h!56047 (_2!28560 (h!56048 lt!1657413)))))))

(assert (=> b!4469370 (= lt!1658211 (addToMapMapFromBucket!589 (t!357358 (_2!28560 (h!56048 lt!1657413))) (+!1368 (extractMap!1080 (t!357359 lt!1657413)) (h!56047 (_2!28560 (h!56048 lt!1657413))))))))

(declare-fun lt!1658219 () Unit!87585)

(declare-fun call!311201 () Unit!87585)

(assert (=> b!4469370 (= lt!1658219 call!311201)))

(assert (=> b!4469370 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 lt!1657413))) lambda!163282)))

(declare-fun lt!1658217 () Unit!87585)

(assert (=> b!4469370 (= lt!1658217 lt!1658219)))

(declare-fun call!311203 () Bool)

(assert (=> b!4469370 call!311203))

(declare-fun lt!1658221 () Unit!87585)

(declare-fun Unit!87740 () Unit!87585)

(assert (=> b!4469370 (= lt!1658221 Unit!87740)))

(assert (=> b!4469370 (forall!9990 (t!357358 (_2!28560 (h!56048 lt!1657413))) lambda!163284)))

(declare-fun lt!1658214 () Unit!87585)

(declare-fun Unit!87741 () Unit!87585)

(assert (=> b!4469370 (= lt!1658214 Unit!87741)))

(declare-fun lt!1658218 () Unit!87585)

(declare-fun Unit!87742 () Unit!87585)

(assert (=> b!4469370 (= lt!1658218 Unit!87742)))

(declare-fun lt!1658227 () Unit!87585)

(assert (=> b!4469370 (= lt!1658227 (forallContained!2259 (toList!4056 lt!1658216) lambda!163284 (h!56047 (_2!28560 (h!56048 lt!1657413)))))))

(assert (=> b!4469370 (contains!12835 lt!1658216 (_1!28559 (h!56047 (_2!28560 (h!56048 lt!1657413)))))))

(declare-fun lt!1658229 () Unit!87585)

(declare-fun Unit!87743 () Unit!87585)

(assert (=> b!4469370 (= lt!1658229 Unit!87743)))

(assert (=> b!4469370 (contains!12835 lt!1658211 (_1!28559 (h!56047 (_2!28560 (h!56048 lt!1657413)))))))

(declare-fun lt!1658213 () Unit!87585)

(declare-fun Unit!87744 () Unit!87585)

(assert (=> b!4469370 (= lt!1658213 Unit!87744)))

(assert (=> b!4469370 (forall!9990 (_2!28560 (h!56048 lt!1657413)) lambda!163284)))

(declare-fun lt!1658222 () Unit!87585)

(declare-fun Unit!87745 () Unit!87585)

(assert (=> b!4469370 (= lt!1658222 Unit!87745)))

(assert (=> b!4469370 (forall!9990 (toList!4056 lt!1658216) lambda!163284)))

(declare-fun lt!1658228 () Unit!87585)

(declare-fun Unit!87746 () Unit!87585)

(assert (=> b!4469370 (= lt!1658228 Unit!87746)))

(declare-fun lt!1658220 () Unit!87585)

(declare-fun Unit!87747 () Unit!87585)

(assert (=> b!4469370 (= lt!1658220 Unit!87747)))

(declare-fun lt!1658226 () Unit!87585)

(assert (=> b!4469370 (= lt!1658226 (addForallContainsKeyThenBeforeAdding!266 (extractMap!1080 (t!357359 lt!1657413)) lt!1658211 (_1!28559 (h!56047 (_2!28560 (h!56048 lt!1657413)))) (_2!28559 (h!56047 (_2!28560 (h!56048 lt!1657413))))))))

(declare-fun call!311202 () Bool)

(assert (=> b!4469370 call!311202))

(declare-fun lt!1658223 () Unit!87585)

(assert (=> b!4469370 (= lt!1658223 lt!1658226)))

(assert (=> b!4469370 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 lt!1657413))) lambda!163284)))

(declare-fun lt!1658210 () Unit!87585)

(declare-fun Unit!87748 () Unit!87585)

(assert (=> b!4469370 (= lt!1658210 Unit!87748)))

(declare-fun res!1854208 () Bool)

(assert (=> b!4469370 (= res!1854208 (forall!9990 (_2!28560 (h!56048 lt!1657413)) lambda!163284))))

(declare-fun e!2783114 () Bool)

(assert (=> b!4469370 (=> (not res!1854208) (not e!2783114))))

(assert (=> b!4469370 e!2783114))

(declare-fun lt!1658209 () Unit!87585)

(declare-fun Unit!87749 () Unit!87585)

(assert (=> b!4469370 (= lt!1658209 Unit!87749)))

(declare-fun bm!311196 () Bool)

(declare-fun c!760897 () Bool)

(assert (=> bm!311196 (= call!311202 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 lt!1657413))) (ite c!760897 lambda!163280 lambda!163284)))))

(declare-fun bm!311197 () Bool)

(assert (=> bm!311197 (= call!311203 (forall!9990 (ite c!760897 (toList!4056 (extractMap!1080 (t!357359 lt!1657413))) (toList!4056 lt!1658216)) (ite c!760897 lambda!163280 lambda!163284)))))

(declare-fun b!4469372 () Bool)

(assert (=> b!4469372 (= e!2783114 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 lt!1657413))) lambda!163284))))

(declare-fun bm!311198 () Bool)

(assert (=> bm!311198 (= call!311201 (lemmaContainsAllItsOwnKeys!267 (extractMap!1080 (t!357359 lt!1657413))))))

(declare-fun b!4469373 () Bool)

(declare-fun res!1854210 () Bool)

(declare-fun e!2783116 () Bool)

(assert (=> b!4469373 (=> (not res!1854210) (not e!2783116))))

(assert (=> b!4469373 (= res!1854210 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 lt!1657413))) lambda!163286))))

(assert (=> b!4469374 (= e!2783115 (extractMap!1080 (t!357359 lt!1657413)))))

(declare-fun lt!1658225 () Unit!87585)

(assert (=> b!4469374 (= lt!1658225 call!311201)))

(assert (=> b!4469374 call!311202))

(declare-fun lt!1658215 () Unit!87585)

(assert (=> b!4469374 (= lt!1658215 lt!1658225)))

(assert (=> b!4469374 call!311203))

(declare-fun lt!1658212 () Unit!87585)

(declare-fun Unit!87750 () Unit!87585)

(assert (=> b!4469374 (= lt!1658212 Unit!87750)))

(assert (=> d!1363506 e!2783116))

(declare-fun res!1854209 () Bool)

(assert (=> d!1363506 (=> (not res!1854209) (not e!2783116))))

(assert (=> d!1363506 (= res!1854209 (forall!9990 (_2!28560 (h!56048 lt!1657413)) lambda!163286))))

(assert (=> d!1363506 (= lt!1658224 e!2783115)))

(assert (=> d!1363506 (= c!760897 ((_ is Nil!50284) (_2!28560 (h!56048 lt!1657413))))))

(assert (=> d!1363506 (noDuplicateKeys!1024 (_2!28560 (h!56048 lt!1657413)))))

(assert (=> d!1363506 (= (addToMapMapFromBucket!589 (_2!28560 (h!56048 lt!1657413)) (extractMap!1080 (t!357359 lt!1657413))) lt!1658224)))

(declare-fun b!4469371 () Bool)

(assert (=> b!4469371 (= e!2783116 (invariantList!927 (toList!4056 lt!1658224)))))

(assert (= (and d!1363506 c!760897) b!4469374))

(assert (= (and d!1363506 (not c!760897)) b!4469370))

(assert (= (and b!4469370 res!1854208) b!4469372))

(assert (= (or b!4469374 b!4469370) bm!311197))

(assert (= (or b!4469374 b!4469370) bm!311196))

(assert (= (or b!4469374 b!4469370) bm!311198))

(assert (= (and d!1363506 res!1854209) b!4469373))

(assert (= (and b!4469373 res!1854210) b!4469371))

(declare-fun m!5176071 () Bool)

(assert (=> bm!311196 m!5176071))

(declare-fun m!5176075 () Bool)

(assert (=> b!4469370 m!5176075))

(assert (=> b!4469370 m!5174771))

(declare-fun m!5176079 () Bool)

(assert (=> b!4469370 m!5176079))

(assert (=> b!4469370 m!5176079))

(declare-fun m!5176087 () Bool)

(assert (=> b!4469370 m!5176087))

(declare-fun m!5176089 () Bool)

(assert (=> b!4469370 m!5176089))

(declare-fun m!5176091 () Bool)

(assert (=> b!4469370 m!5176091))

(declare-fun m!5176095 () Bool)

(assert (=> b!4469370 m!5176095))

(declare-fun m!5176099 () Bool)

(assert (=> b!4469370 m!5176099))

(declare-fun m!5176101 () Bool)

(assert (=> b!4469370 m!5176101))

(declare-fun m!5176105 () Bool)

(assert (=> b!4469370 m!5176105))

(assert (=> b!4469370 m!5174771))

(declare-fun m!5176109 () Bool)

(assert (=> b!4469370 m!5176109))

(assert (=> b!4469370 m!5176095))

(declare-fun m!5176113 () Bool)

(assert (=> b!4469370 m!5176113))

(declare-fun m!5176119 () Bool)

(assert (=> bm!311197 m!5176119))

(declare-fun m!5176121 () Bool)

(assert (=> b!4469373 m!5176121))

(declare-fun m!5176125 () Bool)

(assert (=> b!4469371 m!5176125))

(assert (=> bm!311198 m!5174771))

(declare-fun m!5176129 () Bool)

(assert (=> bm!311198 m!5176129))

(declare-fun m!5176133 () Bool)

(assert (=> d!1363506 m!5176133))

(declare-fun m!5176135 () Bool)

(assert (=> d!1363506 m!5176135))

(assert (=> b!4469372 m!5176101))

(assert (=> b!4468579 d!1363506))

(declare-fun bs!794948 () Bool)

(declare-fun d!1363508 () Bool)

(assert (= bs!794948 (and d!1363508 d!1363114)))

(declare-fun lambda!163288 () Int)

(assert (=> bs!794948 (= lambda!163288 lambda!163117)))

(declare-fun bs!794950 () Bool)

(assert (= bs!794950 (and d!1363508 d!1363066)))

(assert (=> bs!794950 (not (= lambda!163288 lambda!163098))))

(declare-fun bs!794952 () Bool)

(assert (= bs!794952 (and d!1363508 d!1363096)))

(assert (=> bs!794952 (= lambda!163288 lambda!163112)))

(declare-fun bs!794954 () Bool)

(assert (= bs!794954 (and d!1363508 d!1363354)))

(assert (=> bs!794954 (= lambda!163288 lambda!163261)))

(declare-fun bs!794956 () Bool)

(assert (= bs!794956 (and d!1363508 d!1363338)))

(assert (=> bs!794956 (= lambda!163288 lambda!163255)))

(declare-fun bs!794958 () Bool)

(assert (= bs!794958 (and d!1363508 d!1363128)))

(assert (=> bs!794958 (= lambda!163288 lambda!163123)))

(declare-fun bs!794960 () Bool)

(assert (= bs!794960 (and d!1363508 d!1363110)))

(assert (=> bs!794960 (= lambda!163288 lambda!163116)))

(declare-fun bs!794962 () Bool)

(assert (= bs!794962 (and d!1363508 d!1363104)))

(assert (=> bs!794962 (= lambda!163288 lambda!163115)))

(declare-fun bs!794964 () Bool)

(assert (= bs!794964 (and d!1363508 d!1363098)))

(assert (=> bs!794964 (= lambda!163288 lambda!163113)))

(declare-fun bs!794966 () Bool)

(assert (= bs!794966 (and d!1363508 d!1363190)))

(assert (=> bs!794966 (= lambda!163288 lambda!163131)))

(declare-fun bs!794968 () Bool)

(assert (= bs!794968 (and d!1363508 d!1363294)))

(assert (=> bs!794968 (= lambda!163288 lambda!163242)))

(declare-fun bs!794971 () Bool)

(assert (= bs!794971 (and d!1363508 d!1363282)))

(assert (=> bs!794971 (= lambda!163288 lambda!163237)))

(declare-fun bs!794973 () Bool)

(assert (= bs!794973 (and d!1363508 d!1363020)))

(assert (=> bs!794973 (= lambda!163288 lambda!163089)))

(declare-fun bs!794975 () Bool)

(assert (= bs!794975 (and d!1363508 d!1363102)))

(assert (=> bs!794975 (= lambda!163288 lambda!163114)))

(declare-fun bs!794977 () Bool)

(assert (= bs!794977 (and d!1363508 d!1363118)))

(assert (=> bs!794977 (= lambda!163288 lambda!163120)))

(declare-fun bs!794978 () Bool)

(assert (= bs!794978 (and d!1363508 start!438912)))

(assert (=> bs!794978 (= lambda!163288 lambda!163077)))

(declare-fun lt!1658231 () ListMap!3317)

(assert (=> d!1363508 (invariantList!927 (toList!4056 lt!1658231))))

(declare-fun e!2783118 () ListMap!3317)

(assert (=> d!1363508 (= lt!1658231 e!2783118)))

(declare-fun c!760899 () Bool)

(assert (=> d!1363508 (= c!760899 ((_ is Cons!50285) (t!357359 lt!1657413)))))

(assert (=> d!1363508 (forall!9988 (t!357359 lt!1657413) lambda!163288)))

(assert (=> d!1363508 (= (extractMap!1080 (t!357359 lt!1657413)) lt!1658231)))

(declare-fun b!4469377 () Bool)

(assert (=> b!4469377 (= e!2783118 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 lt!1657413))) (extractMap!1080 (t!357359 (t!357359 lt!1657413)))))))

(declare-fun b!4469378 () Bool)

(assert (=> b!4469378 (= e!2783118 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363508 c!760899) b!4469377))

(assert (= (and d!1363508 (not c!760899)) b!4469378))

(declare-fun m!5176139 () Bool)

(assert (=> d!1363508 m!5176139))

(declare-fun m!5176143 () Bool)

(assert (=> d!1363508 m!5176143))

(declare-fun m!5176147 () Bool)

(assert (=> b!4469377 m!5176147))

(assert (=> b!4469377 m!5176147))

(declare-fun m!5176151 () Bool)

(assert (=> b!4469377 m!5176151))

(assert (=> b!4468579 d!1363508))

(assert (=> b!4468568 d!1363388))

(assert (=> b!4468568 d!1363196))

(declare-fun d!1363512 () Bool)

(assert (=> d!1363512 (= (get!16391 (getValueByKey!912 (toList!4055 lm!1477) hash!344)) (v!44239 (getValueByKey!912 (toList!4055 lm!1477) hash!344)))))

(assert (=> d!1363030 d!1363512))

(assert (=> d!1363030 d!1363202))

(declare-fun bs!794981 () Bool)

(declare-fun b!4469383 () Bool)

(assert (= bs!794981 (and b!4469383 b!4468792)))

(declare-fun lambda!163289 () Int)

(assert (=> bs!794981 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163289 lambda!163214))))

(declare-fun bs!794982 () Bool)

(assert (= bs!794982 (and b!4469383 b!4468958)))

(assert (=> bs!794982 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163289 lambda!163233))))

(declare-fun bs!794983 () Bool)

(assert (= bs!794983 (and b!4469383 d!1363346)))

(assert (=> bs!794983 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658035) (= lambda!163289 lambda!163260))))

(declare-fun bs!794984 () Bool)

(assert (= bs!794984 (and b!4469383 d!1363210)))

(assert (=> bs!794984 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657792) (= lambda!163289 lambda!163216))))

(declare-fun bs!794985 () Bool)

(assert (= bs!794985 (and b!4469383 b!4469011)))

(assert (=> bs!794985 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163289 lambda!163238))))

(declare-fun bs!794986 () Bool)

(assert (= bs!794986 (and b!4469383 b!4469109)))

(assert (=> bs!794986 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163289 lambda!163256))))

(declare-fun bs!794987 () Bool)

(assert (= bs!794987 (and b!4469383 d!1363506)))

(assert (=> bs!794987 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658224) (= lambda!163289 lambda!163286))))

(declare-fun bs!794988 () Bool)

(assert (= bs!794988 (and b!4469383 b!4469370)))

(assert (=> bs!794988 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658211) (= lambda!163289 lambda!163284))))

(declare-fun bs!794989 () Bool)

(assert (= bs!794989 (and b!4469383 d!1363078)))

(assert (=> bs!794989 (not (= lambda!163289 lambda!163106))))

(declare-fun bs!794990 () Bool)

(assert (= bs!794990 (and b!4469383 b!4468954)))

(assert (=> bs!794990 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657872) (= lambda!163289 lambda!163235))))

(assert (=> bs!794981 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657779) (= lambda!163289 lambda!163215))))

(declare-fun bs!794991 () Bool)

(assert (= bs!794991 (and b!4469383 b!4469105)))

(assert (=> bs!794991 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658022) (= lambda!163289 lambda!163258))))

(assert (=> bs!794988 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163289 lambda!163282))))

(declare-fun bs!794992 () Bool)

(assert (= bs!794992 (and b!4469383 b!4469007)))

(assert (=> bs!794992 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657928) (= lambda!163289 lambda!163240))))

(assert (=> bs!794990 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163289 lambda!163234))))

(assert (=> bs!794992 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163289 lambda!163239))))

(declare-fun bs!794993 () Bool)

(assert (= bs!794993 (and b!4469383 d!1363280)))

(assert (=> bs!794993 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657885) (= lambda!163289 lambda!163236))))

(assert (=> bs!794991 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163289 lambda!163257))))

(declare-fun bs!794994 () Bool)

(assert (= bs!794994 (and b!4469383 d!1363292)))

(assert (=> bs!794994 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657941) (= lambda!163289 lambda!163241))))

(declare-fun bs!794995 () Bool)

(assert (= bs!794995 (and b!4469383 b!4468796)))

(assert (=> bs!794995 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163289 lambda!163213))))

(declare-fun bs!794996 () Bool)

(assert (= bs!794996 (and b!4469383 b!4469374)))

(assert (=> bs!794996 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163289 lambda!163280))))

(assert (=> b!4469383 true))

(declare-fun bs!795001 () Bool)

(declare-fun b!4469379 () Bool)

(assert (= bs!795001 (and b!4469379 b!4468792)))

(declare-fun lambda!163290 () Int)

(assert (=> bs!795001 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163290 lambda!163214))))

(declare-fun bs!795003 () Bool)

(assert (= bs!795003 (and b!4469379 b!4468958)))

(assert (=> bs!795003 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163290 lambda!163233))))

(declare-fun bs!795005 () Bool)

(assert (= bs!795005 (and b!4469379 d!1363346)))

(assert (=> bs!795005 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658035) (= lambda!163290 lambda!163260))))

(declare-fun bs!795007 () Bool)

(assert (= bs!795007 (and b!4469379 d!1363210)))

(assert (=> bs!795007 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657792) (= lambda!163290 lambda!163216))))

(declare-fun bs!795008 () Bool)

(assert (= bs!795008 (and b!4469379 b!4469011)))

(assert (=> bs!795008 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163290 lambda!163238))))

(declare-fun bs!795010 () Bool)

(assert (= bs!795010 (and b!4469379 b!4469109)))

(assert (=> bs!795010 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163290 lambda!163256))))

(declare-fun bs!795012 () Bool)

(assert (= bs!795012 (and b!4469379 d!1363506)))

(assert (=> bs!795012 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658224) (= lambda!163290 lambda!163286))))

(declare-fun bs!795014 () Bool)

(assert (= bs!795014 (and b!4469379 d!1363078)))

(assert (=> bs!795014 (not (= lambda!163290 lambda!163106))))

(declare-fun bs!795016 () Bool)

(assert (= bs!795016 (and b!4469379 b!4468954)))

(assert (=> bs!795016 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657872) (= lambda!163290 lambda!163235))))

(assert (=> bs!795001 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657779) (= lambda!163290 lambda!163215))))

(declare-fun bs!795018 () Bool)

(assert (= bs!795018 (and b!4469379 b!4469105)))

(assert (=> bs!795018 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658022) (= lambda!163290 lambda!163258))))

(declare-fun bs!795019 () Bool)

(assert (= bs!795019 (and b!4469379 b!4469370)))

(assert (=> bs!795019 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163290 lambda!163282))))

(declare-fun bs!795020 () Bool)

(assert (= bs!795020 (and b!4469379 b!4469007)))

(assert (=> bs!795020 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657928) (= lambda!163290 lambda!163240))))

(assert (=> bs!795016 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163290 lambda!163234))))

(declare-fun bs!795021 () Bool)

(assert (= bs!795021 (and b!4469379 b!4469383)))

(assert (=> bs!795021 (= lambda!163290 lambda!163289)))

(assert (=> bs!795019 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658211) (= lambda!163290 lambda!163284))))

(assert (=> bs!795020 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163290 lambda!163239))))

(declare-fun bs!795022 () Bool)

(assert (= bs!795022 (and b!4469379 d!1363280)))

(assert (=> bs!795022 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657885) (= lambda!163290 lambda!163236))))

(assert (=> bs!795018 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163290 lambda!163257))))

(declare-fun bs!795023 () Bool)

(assert (= bs!795023 (and b!4469379 d!1363292)))

(assert (=> bs!795023 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1657941) (= lambda!163290 lambda!163241))))

(declare-fun bs!795024 () Bool)

(assert (= bs!795024 (and b!4469379 b!4468796)))

(assert (=> bs!795024 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163290 lambda!163213))))

(declare-fun bs!795025 () Bool)

(assert (= bs!795025 (and b!4469379 b!4469374)))

(assert (=> bs!795025 (= (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163290 lambda!163280))))

(assert (=> b!4469379 true))

(declare-fun lambda!163291 () Int)

(declare-fun lt!1658235 () ListMap!3317)

(assert (=> bs!795001 (= (= lt!1658235 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163291 lambda!163214))))

(assert (=> bs!795003 (= (= lt!1658235 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163291 lambda!163233))))

(assert (=> bs!795005 (= (= lt!1658235 lt!1658035) (= lambda!163291 lambda!163260))))

(assert (=> bs!795007 (= (= lt!1658235 lt!1657792) (= lambda!163291 lambda!163216))))

(assert (=> bs!795008 (= (= lt!1658235 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163291 lambda!163238))))

(assert (=> bs!795010 (= (= lt!1658235 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163291 lambda!163256))))

(assert (=> bs!795012 (= (= lt!1658235 lt!1658224) (= lambda!163291 lambda!163286))))

(assert (=> bs!795014 (not (= lambda!163291 lambda!163106))))

(assert (=> bs!795016 (= (= lt!1658235 lt!1657872) (= lambda!163291 lambda!163235))))

(assert (=> bs!795001 (= (= lt!1658235 lt!1657779) (= lambda!163291 lambda!163215))))

(assert (=> bs!795018 (= (= lt!1658235 lt!1658022) (= lambda!163291 lambda!163258))))

(assert (=> bs!795019 (= (= lt!1658235 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163291 lambda!163282))))

(assert (=> bs!795020 (= (= lt!1658235 lt!1657928) (= lambda!163291 lambda!163240))))

(assert (=> bs!795016 (= (= lt!1658235 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163291 lambda!163234))))

(assert (=> bs!795021 (= (= lt!1658235 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (= lambda!163291 lambda!163289))))

(assert (=> bs!795019 (= (= lt!1658235 lt!1658211) (= lambda!163291 lambda!163284))))

(assert (=> bs!795020 (= (= lt!1658235 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163291 lambda!163239))))

(assert (=> bs!795022 (= (= lt!1658235 lt!1657885) (= lambda!163291 lambda!163236))))

(assert (=> b!4469379 (= (= lt!1658235 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (= lambda!163291 lambda!163290))))

(assert (=> bs!795018 (= (= lt!1658235 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163291 lambda!163257))))

(assert (=> bs!795023 (= (= lt!1658235 lt!1657941) (= lambda!163291 lambda!163241))))

(assert (=> bs!795024 (= (= lt!1658235 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163291 lambda!163213))))

(assert (=> bs!795025 (= (= lt!1658235 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163291 lambda!163280))))

(assert (=> b!4469379 true))

(declare-fun bs!795026 () Bool)

(declare-fun d!1363516 () Bool)

(assert (= bs!795026 (and d!1363516 b!4468792)))

(declare-fun lambda!163292 () Int)

(declare-fun lt!1658248 () ListMap!3317)

(assert (=> bs!795026 (= (= lt!1658248 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163292 lambda!163214))))

(declare-fun bs!795027 () Bool)

(assert (= bs!795027 (and d!1363516 b!4468958)))

(assert (=> bs!795027 (= (= lt!1658248 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163292 lambda!163233))))

(declare-fun bs!795028 () Bool)

(assert (= bs!795028 (and d!1363516 d!1363346)))

(assert (=> bs!795028 (= (= lt!1658248 lt!1658035) (= lambda!163292 lambda!163260))))

(declare-fun bs!795029 () Bool)

(assert (= bs!795029 (and d!1363516 d!1363210)))

(assert (=> bs!795029 (= (= lt!1658248 lt!1657792) (= lambda!163292 lambda!163216))))

(declare-fun bs!795030 () Bool)

(assert (= bs!795030 (and d!1363516 b!4469011)))

(assert (=> bs!795030 (= (= lt!1658248 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163292 lambda!163238))))

(declare-fun bs!795031 () Bool)

(assert (= bs!795031 (and d!1363516 b!4469109)))

(assert (=> bs!795031 (= (= lt!1658248 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163292 lambda!163256))))

(declare-fun bs!795032 () Bool)

(assert (= bs!795032 (and d!1363516 d!1363506)))

(assert (=> bs!795032 (= (= lt!1658248 lt!1658224) (= lambda!163292 lambda!163286))))

(declare-fun bs!795033 () Bool)

(assert (= bs!795033 (and d!1363516 d!1363078)))

(assert (=> bs!795033 (not (= lambda!163292 lambda!163106))))

(declare-fun bs!795034 () Bool)

(assert (= bs!795034 (and d!1363516 b!4468954)))

(assert (=> bs!795034 (= (= lt!1658248 lt!1657872) (= lambda!163292 lambda!163235))))

(assert (=> bs!795026 (= (= lt!1658248 lt!1657779) (= lambda!163292 lambda!163215))))

(declare-fun bs!795035 () Bool)

(assert (= bs!795035 (and d!1363516 b!4469105)))

(assert (=> bs!795035 (= (= lt!1658248 lt!1658022) (= lambda!163292 lambda!163258))))

(declare-fun bs!795036 () Bool)

(assert (= bs!795036 (and d!1363516 b!4469370)))

(assert (=> bs!795036 (= (= lt!1658248 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163292 lambda!163282))))

(declare-fun bs!795037 () Bool)

(assert (= bs!795037 (and d!1363516 b!4469007)))

(assert (=> bs!795037 (= (= lt!1658248 lt!1657928) (= lambda!163292 lambda!163240))))

(assert (=> bs!795034 (= (= lt!1658248 (extractMap!1080 (t!357359 (toList!4055 lt!1657407)))) (= lambda!163292 lambda!163234))))

(declare-fun bs!795038 () Bool)

(assert (= bs!795038 (and d!1363516 b!4469379)))

(assert (=> bs!795038 (= (= lt!1658248 lt!1658235) (= lambda!163292 lambda!163291))))

(declare-fun bs!795039 () Bool)

(assert (= bs!795039 (and d!1363516 b!4469383)))

(assert (=> bs!795039 (= (= lt!1658248 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (= lambda!163292 lambda!163289))))

(assert (=> bs!795036 (= (= lt!1658248 lt!1658211) (= lambda!163292 lambda!163284))))

(assert (=> bs!795037 (= (= lt!1658248 (extractMap!1080 (t!357359 (t!357359 (toList!4055 lm!1477))))) (= lambda!163292 lambda!163239))))

(declare-fun bs!795040 () Bool)

(assert (= bs!795040 (and d!1363516 d!1363280)))

(assert (=> bs!795040 (= (= lt!1658248 lt!1657885) (= lambda!163292 lambda!163236))))

(assert (=> bs!795038 (= (= lt!1658248 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (= lambda!163292 lambda!163290))))

(assert (=> bs!795035 (= (= lt!1658248 (extractMap!1080 (t!357359 (Cons!50285 lt!1657409 Nil!50285)))) (= lambda!163292 lambda!163257))))

(declare-fun bs!795041 () Bool)

(assert (= bs!795041 (and d!1363516 d!1363292)))

(assert (=> bs!795041 (= (= lt!1658248 lt!1657941) (= lambda!163292 lambda!163241))))

(declare-fun bs!795042 () Bool)

(assert (= bs!795042 (and d!1363516 b!4468796)))

(assert (=> bs!795042 (= (= lt!1658248 (extractMap!1080 (t!357359 (toList!4055 lm!1477)))) (= lambda!163292 lambda!163213))))

(declare-fun bs!795043 () Bool)

(assert (= bs!795043 (and d!1363516 b!4469374)))

(assert (=> bs!795043 (= (= lt!1658248 (extractMap!1080 (t!357359 lt!1657413))) (= lambda!163292 lambda!163280))))

(assert (=> d!1363516 true))

(declare-fun e!2783120 () ListMap!3317)

(assert (=> b!4469379 (= e!2783120 lt!1658235)))

(declare-fun lt!1658240 () ListMap!3317)

(assert (=> b!4469379 (= lt!1658240 (+!1368 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(assert (=> b!4469379 (= lt!1658235 (addToMapMapFromBucket!589 (t!357358 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (+!1368 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))))

(declare-fun lt!1658243 () Unit!87585)

(declare-fun call!311204 () Unit!87585)

(assert (=> b!4469379 (= lt!1658243 call!311204)))

(assert (=> b!4469379 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lambda!163290)))

(declare-fun lt!1658241 () Unit!87585)

(assert (=> b!4469379 (= lt!1658241 lt!1658243)))

(declare-fun call!311206 () Bool)

(assert (=> b!4469379 call!311206))

(declare-fun lt!1658245 () Unit!87585)

(declare-fun Unit!87751 () Unit!87585)

(assert (=> b!4469379 (= lt!1658245 Unit!87751)))

(assert (=> b!4469379 (forall!9990 (t!357358 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lambda!163291)))

(declare-fun lt!1658238 () Unit!87585)

(declare-fun Unit!87752 () Unit!87585)

(assert (=> b!4469379 (= lt!1658238 Unit!87752)))

(declare-fun lt!1658242 () Unit!87585)

(declare-fun Unit!87753 () Unit!87585)

(assert (=> b!4469379 (= lt!1658242 Unit!87753)))

(declare-fun lt!1658251 () Unit!87585)

(assert (=> b!4469379 (= lt!1658251 (forallContained!2259 (toList!4056 lt!1658240) lambda!163291 (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(assert (=> b!4469379 (contains!12835 lt!1658240 (_1!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun lt!1658253 () Unit!87585)

(declare-fun Unit!87754 () Unit!87585)

(assert (=> b!4469379 (= lt!1658253 Unit!87754)))

(assert (=> b!4469379 (contains!12835 lt!1658235 (_1!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun lt!1658237 () Unit!87585)

(declare-fun Unit!87755 () Unit!87585)

(assert (=> b!4469379 (= lt!1658237 Unit!87755)))

(assert (=> b!4469379 (forall!9990 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lambda!163291)))

(declare-fun lt!1658246 () Unit!87585)

(declare-fun Unit!87756 () Unit!87585)

(assert (=> b!4469379 (= lt!1658246 Unit!87756)))

(assert (=> b!4469379 (forall!9990 (toList!4056 lt!1658240) lambda!163291)))

(declare-fun lt!1658252 () Unit!87585)

(declare-fun Unit!87757 () Unit!87585)

(assert (=> b!4469379 (= lt!1658252 Unit!87757)))

(declare-fun lt!1658244 () Unit!87585)

(declare-fun Unit!87758 () Unit!87585)

(assert (=> b!4469379 (= lt!1658244 Unit!87758)))

(declare-fun lt!1658250 () Unit!87585)

(assert (=> b!4469379 (= lt!1658250 (addForallContainsKeyThenBeforeAdding!266 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658235 (_1!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))) (_2!28559 (h!56047 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))))

(declare-fun call!311205 () Bool)

(assert (=> b!4469379 call!311205))

(declare-fun lt!1658247 () Unit!87585)

(assert (=> b!4469379 (= lt!1658247 lt!1658250)))

(assert (=> b!4469379 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lambda!163291)))

(declare-fun lt!1658234 () Unit!87585)

(declare-fun Unit!87759 () Unit!87585)

(assert (=> b!4469379 (= lt!1658234 Unit!87759)))

(declare-fun res!1854211 () Bool)

(assert (=> b!4469379 (= res!1854211 (forall!9990 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lambda!163291))))

(declare-fun e!2783119 () Bool)

(assert (=> b!4469379 (=> (not res!1854211) (not e!2783119))))

(assert (=> b!4469379 e!2783119))

(declare-fun lt!1658233 () Unit!87585)

(declare-fun Unit!87760 () Unit!87585)

(assert (=> b!4469379 (= lt!1658233 Unit!87760)))

(declare-fun bm!311199 () Bool)

(declare-fun c!760900 () Bool)

(assert (=> bm!311199 (= call!311205 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (ite c!760900 lambda!163289 lambda!163291)))))

(declare-fun bm!311200 () Bool)

(assert (=> bm!311200 (= call!311206 (forall!9990 (ite c!760900 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (toList!4056 lt!1658240)) (ite c!760900 lambda!163289 lambda!163291)))))

(declare-fun b!4469381 () Bool)

(assert (=> b!4469381 (= e!2783119 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lambda!163291))))

(declare-fun bm!311201 () Bool)

(assert (=> bm!311201 (= call!311204 (lemmaContainsAllItsOwnKeys!267 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(declare-fun b!4469382 () Bool)

(declare-fun res!1854213 () Bool)

(declare-fun e!2783121 () Bool)

(assert (=> b!4469382 (=> (not res!1854213) (not e!2783121))))

(assert (=> b!4469382 (= res!1854213 (forall!9990 (toList!4056 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lambda!163292))))

(assert (=> b!4469383 (= e!2783120 (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))

(declare-fun lt!1658249 () Unit!87585)

(assert (=> b!4469383 (= lt!1658249 call!311204)))

(assert (=> b!4469383 call!311205))

(declare-fun lt!1658239 () Unit!87585)

(assert (=> b!4469383 (= lt!1658239 lt!1658249)))

(assert (=> b!4469383 call!311206))

(declare-fun lt!1658236 () Unit!87585)

(declare-fun Unit!87761 () Unit!87585)

(assert (=> b!4469383 (= lt!1658236 Unit!87761)))

(assert (=> d!1363516 e!2783121))

(declare-fun res!1854212 () Bool)

(assert (=> d!1363516 (=> (not res!1854212) (not e!2783121))))

(assert (=> d!1363516 (= res!1854212 (forall!9990 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lambda!163292))))

(assert (=> d!1363516 (= lt!1658248 e!2783120)))

(assert (=> d!1363516 (= c!760900 ((_ is Nil!50284) (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(assert (=> d!1363516 (noDuplicateKeys!1024 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))

(assert (=> d!1363516 (= (addToMapMapFromBucket!589 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) lt!1658248)))

(declare-fun b!4469380 () Bool)

(assert (=> b!4469380 (= e!2783121 (invariantList!927 (toList!4056 lt!1658248)))))

(assert (= (and d!1363516 c!760900) b!4469383))

(assert (= (and d!1363516 (not c!760900)) b!4469379))

(assert (= (and b!4469379 res!1854211) b!4469381))

(assert (= (or b!4469383 b!4469379) bm!311200))

(assert (= (or b!4469383 b!4469379) bm!311199))

(assert (= (or b!4469383 b!4469379) bm!311201))

(assert (= (and d!1363516 res!1854212) b!4469382))

(assert (= (and b!4469382 res!1854213) b!4469380))

(declare-fun m!5176163 () Bool)

(assert (=> bm!311199 m!5176163))

(declare-fun m!5176165 () Bool)

(assert (=> b!4469379 m!5176165))

(assert (=> b!4469379 m!5174715))

(declare-fun m!5176167 () Bool)

(assert (=> b!4469379 m!5176167))

(assert (=> b!4469379 m!5176167))

(declare-fun m!5176169 () Bool)

(assert (=> b!4469379 m!5176169))

(declare-fun m!5176171 () Bool)

(assert (=> b!4469379 m!5176171))

(declare-fun m!5176173 () Bool)

(assert (=> b!4469379 m!5176173))

(declare-fun m!5176175 () Bool)

(assert (=> b!4469379 m!5176175))

(declare-fun m!5176177 () Bool)

(assert (=> b!4469379 m!5176177))

(declare-fun m!5176179 () Bool)

(assert (=> b!4469379 m!5176179))

(declare-fun m!5176181 () Bool)

(assert (=> b!4469379 m!5176181))

(assert (=> b!4469379 m!5174715))

(declare-fun m!5176183 () Bool)

(assert (=> b!4469379 m!5176183))

(assert (=> b!4469379 m!5176175))

(declare-fun m!5176185 () Bool)

(assert (=> b!4469379 m!5176185))

(declare-fun m!5176187 () Bool)

(assert (=> bm!311200 m!5176187))

(declare-fun m!5176189 () Bool)

(assert (=> b!4469382 m!5176189))

(declare-fun m!5176191 () Bool)

(assert (=> b!4469380 m!5176191))

(assert (=> bm!311201 m!5174715))

(declare-fun m!5176193 () Bool)

(assert (=> bm!311201 m!5176193))

(declare-fun m!5176195 () Bool)

(assert (=> d!1363516 m!5176195))

(declare-fun m!5176197 () Bool)

(assert (=> d!1363516 m!5176197))

(assert (=> b!4469381 m!5176179))

(assert (=> b!4468564 d!1363516))

(declare-fun bs!795044 () Bool)

(declare-fun d!1363542 () Bool)

(assert (= bs!795044 (and d!1363542 d!1363114)))

(declare-fun lambda!163293 () Int)

(assert (=> bs!795044 (= lambda!163293 lambda!163117)))

(declare-fun bs!795045 () Bool)

(assert (= bs!795045 (and d!1363542 d!1363066)))

(assert (=> bs!795045 (not (= lambda!163293 lambda!163098))))

(declare-fun bs!795046 () Bool)

(assert (= bs!795046 (and d!1363542 d!1363096)))

(assert (=> bs!795046 (= lambda!163293 lambda!163112)))

(declare-fun bs!795047 () Bool)

(assert (= bs!795047 (and d!1363542 d!1363354)))

(assert (=> bs!795047 (= lambda!163293 lambda!163261)))

(declare-fun bs!795048 () Bool)

(assert (= bs!795048 (and d!1363542 d!1363338)))

(assert (=> bs!795048 (= lambda!163293 lambda!163255)))

(declare-fun bs!795049 () Bool)

(assert (= bs!795049 (and d!1363542 d!1363128)))

(assert (=> bs!795049 (= lambda!163293 lambda!163123)))

(declare-fun bs!795050 () Bool)

(assert (= bs!795050 (and d!1363542 d!1363110)))

(assert (=> bs!795050 (= lambda!163293 lambda!163116)))

(declare-fun bs!795051 () Bool)

(assert (= bs!795051 (and d!1363542 d!1363104)))

(assert (=> bs!795051 (= lambda!163293 lambda!163115)))

(declare-fun bs!795052 () Bool)

(assert (= bs!795052 (and d!1363542 d!1363098)))

(assert (=> bs!795052 (= lambda!163293 lambda!163113)))

(declare-fun bs!795053 () Bool)

(assert (= bs!795053 (and d!1363542 d!1363190)))

(assert (=> bs!795053 (= lambda!163293 lambda!163131)))

(declare-fun bs!795054 () Bool)

(assert (= bs!795054 (and d!1363542 d!1363508)))

(assert (=> bs!795054 (= lambda!163293 lambda!163288)))

(declare-fun bs!795055 () Bool)

(assert (= bs!795055 (and d!1363542 d!1363294)))

(assert (=> bs!795055 (= lambda!163293 lambda!163242)))

(declare-fun bs!795056 () Bool)

(assert (= bs!795056 (and d!1363542 d!1363282)))

(assert (=> bs!795056 (= lambda!163293 lambda!163237)))

(declare-fun bs!795057 () Bool)

(assert (= bs!795057 (and d!1363542 d!1363020)))

(assert (=> bs!795057 (= lambda!163293 lambda!163089)))

(declare-fun bs!795058 () Bool)

(assert (= bs!795058 (and d!1363542 d!1363102)))

(assert (=> bs!795058 (= lambda!163293 lambda!163114)))

(declare-fun bs!795059 () Bool)

(assert (= bs!795059 (and d!1363542 d!1363118)))

(assert (=> bs!795059 (= lambda!163293 lambda!163120)))

(declare-fun bs!795060 () Bool)

(assert (= bs!795060 (and d!1363542 start!438912)))

(assert (=> bs!795060 (= lambda!163293 lambda!163077)))

(declare-fun lt!1658254 () ListMap!3317)

(assert (=> d!1363542 (invariantList!927 (toList!4056 lt!1658254))))

(declare-fun e!2783125 () ListMap!3317)

(assert (=> d!1363542 (= lt!1658254 e!2783125)))

(declare-fun c!760901 () Bool)

(assert (=> d!1363542 (= c!760901 ((_ is Cons!50285) (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))

(assert (=> d!1363542 (forall!9988 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) lambda!163293)))

(assert (=> d!1363542 (= (extractMap!1080 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658254)))

(declare-fun b!4469387 () Bool)

(assert (=> b!4469387 (= e!2783125 (addToMapMapFromBucket!589 (_2!28560 (h!56048 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (extractMap!1080 (t!357359 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun b!4469388 () Bool)

(assert (=> b!4469388 (= e!2783125 (ListMap!3318 Nil!50284))))

(assert (= (and d!1363542 c!760901) b!4469387))

(assert (= (and d!1363542 (not c!760901)) b!4469388))

(declare-fun m!5176199 () Bool)

(assert (=> d!1363542 m!5176199))

(declare-fun m!5176201 () Bool)

(assert (=> d!1363542 m!5176201))

(declare-fun m!5176203 () Bool)

(assert (=> b!4469387 m!5176203))

(assert (=> b!4469387 m!5176203))

(declare-fun m!5176205 () Bool)

(assert (=> b!4469387 m!5176205))

(assert (=> b!4468564 d!1363542))

(declare-fun d!1363544 () Bool)

(declare-fun lt!1658255 () Bool)

(assert (=> d!1363544 (= lt!1658255 (select (content!8103 e!2782612) key!3287))))

(declare-fun e!2783127 () Bool)

(assert (=> d!1363544 (= lt!1658255 e!2783127)))

(declare-fun res!1854215 () Bool)

(assert (=> d!1363544 (=> (not res!1854215) (not e!2783127))))

(assert (=> d!1363544 (= res!1854215 ((_ is Cons!50287) e!2782612))))

(assert (=> d!1363544 (= (contains!12837 e!2782612 key!3287) lt!1658255)))

(declare-fun b!4469389 () Bool)

(declare-fun e!2783126 () Bool)

(assert (=> b!4469389 (= e!2783127 e!2783126)))

(declare-fun res!1854214 () Bool)

(assert (=> b!4469389 (=> res!1854214 e!2783126)))

(assert (=> b!4469389 (= res!1854214 (= (h!56052 e!2782612) key!3287))))

(declare-fun b!4469390 () Bool)

(assert (=> b!4469390 (= e!2783126 (contains!12837 (t!357361 e!2782612) key!3287))))

(assert (= (and d!1363544 res!1854215) b!4469389))

(assert (= (and b!4469389 (not res!1854214)) b!4469390))

(declare-fun m!5176207 () Bool)

(assert (=> d!1363544 m!5176207))

(declare-fun m!5176209 () Bool)

(assert (=> d!1363544 m!5176209))

(declare-fun m!5176211 () Bool)

(assert (=> b!4469390 m!5176211))

(assert (=> bm!311088 d!1363544))

(declare-fun d!1363546 () Bool)

(declare-fun res!1854220 () Bool)

(declare-fun e!2783132 () Bool)

(assert (=> d!1363546 (=> res!1854220 e!2783132)))

(assert (=> d!1363546 (= res!1854220 ((_ is Nil!50284) newBucket!178))))

(assert (=> d!1363546 (= (forall!9990 newBucket!178 lambda!163106) e!2783132)))

(declare-fun b!4469395 () Bool)

(declare-fun e!2783133 () Bool)

(assert (=> b!4469395 (= e!2783132 e!2783133)))

(declare-fun res!1854221 () Bool)

(assert (=> b!4469395 (=> (not res!1854221) (not e!2783133))))

(declare-fun dynLambda!21013 (Int tuple2!50530) Bool)

(assert (=> b!4469395 (= res!1854221 (dynLambda!21013 lambda!163106 (h!56047 newBucket!178)))))

(declare-fun b!4469396 () Bool)

(assert (=> b!4469396 (= e!2783133 (forall!9990 (t!357358 newBucket!178) lambda!163106))))

(assert (= (and d!1363546 (not res!1854220)) b!4469395))

(assert (= (and b!4469395 res!1854221) b!4469396))

(declare-fun b_lambda!148389 () Bool)

(assert (=> (not b_lambda!148389) (not b!4469395)))

(declare-fun m!5176213 () Bool)

(assert (=> b!4469395 m!5176213))

(declare-fun m!5176215 () Bool)

(assert (=> b!4469396 m!5176215))

(assert (=> d!1363078 d!1363546))

(declare-fun d!1363548 () Bool)

(assert (=> d!1363548 (= (invariantList!927 (toList!4056 lt!1657582)) (noDuplicatedKeys!213 (toList!4056 lt!1657582)))))

(declare-fun bs!795061 () Bool)

(assert (= bs!795061 d!1363548))

(declare-fun m!5176217 () Bool)

(assert (=> bs!795061 m!5176217))

(assert (=> d!1363104 d!1363548))

(declare-fun d!1363550 () Bool)

(declare-fun res!1854222 () Bool)

(declare-fun e!2783134 () Bool)

(assert (=> d!1363550 (=> res!1854222 e!2783134)))

(assert (=> d!1363550 (= res!1854222 ((_ is Nil!50285) (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))

(assert (=> d!1363550 (= (forall!9988 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285) lambda!163115) e!2783134)))

(declare-fun b!4469397 () Bool)

(declare-fun e!2783135 () Bool)

(assert (=> b!4469397 (= e!2783134 e!2783135)))

(declare-fun res!1854223 () Bool)

(assert (=> b!4469397 (=> (not res!1854223) (not e!2783135))))

(assert (=> b!4469397 (= res!1854223 (dynLambda!21012 lambda!163115 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))

(declare-fun b!4469398 () Bool)

(assert (=> b!4469398 (= e!2783135 (forall!9988 (t!357359 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)) lambda!163115))))

(assert (= (and d!1363550 (not res!1854222)) b!4469397))

(assert (= (and b!4469397 res!1854223) b!4469398))

(declare-fun b_lambda!148391 () Bool)

(assert (=> (not b_lambda!148391) (not b!4469397)))

(declare-fun m!5176219 () Bool)

(assert (=> b!4469397 m!5176219))

(declare-fun m!5176221 () Bool)

(assert (=> b!4469398 m!5176221))

(assert (=> d!1363104 d!1363550))

(declare-fun d!1363552 () Bool)

(declare-fun c!760904 () Bool)

(assert (=> d!1363552 (= c!760904 ((_ is Nil!50285) (toList!4055 lm!1477)))))

(declare-fun e!2783138 () (InoxSet tuple2!50532))

(assert (=> d!1363552 (= (content!8102 (toList!4055 lm!1477)) e!2783138)))

(declare-fun b!4469403 () Bool)

(assert (=> b!4469403 (= e!2783138 ((as const (Array tuple2!50532 Bool)) false))))

(declare-fun b!4469404 () Bool)

(assert (=> b!4469404 (= e!2783138 ((_ map or) (store ((as const (Array tuple2!50532 Bool)) false) (h!56048 (toList!4055 lm!1477)) true) (content!8102 (t!357359 (toList!4055 lm!1477)))))))

(assert (= (and d!1363552 c!760904) b!4469403))

(assert (= (and d!1363552 (not c!760904)) b!4469404))

(declare-fun m!5176223 () Bool)

(assert (=> b!4469404 m!5176223))

(assert (=> b!4469404 m!5175511))

(assert (=> d!1363022 d!1363552))

(declare-fun d!1363554 () Bool)

(declare-fun res!1854224 () Bool)

(declare-fun e!2783139 () Bool)

(assert (=> d!1363554 (=> res!1854224 e!2783139)))

(assert (=> d!1363554 (= res!1854224 (not ((_ is Cons!50284) (_2!28560 lt!1657410))))))

(assert (=> d!1363554 (= (noDuplicateKeys!1024 (_2!28560 lt!1657410)) e!2783139)))

(declare-fun b!4469405 () Bool)

(declare-fun e!2783140 () Bool)

(assert (=> b!4469405 (= e!2783139 e!2783140)))

(declare-fun res!1854225 () Bool)

(assert (=> b!4469405 (=> (not res!1854225) (not e!2783140))))

(assert (=> b!4469405 (= res!1854225 (not (containsKey!1468 (t!357358 (_2!28560 lt!1657410)) (_1!28559 (h!56047 (_2!28560 lt!1657410))))))))

(declare-fun b!4469406 () Bool)

(assert (=> b!4469406 (= e!2783140 (noDuplicateKeys!1024 (t!357358 (_2!28560 lt!1657410))))))

(assert (= (and d!1363554 (not res!1854224)) b!4469405))

(assert (= (and b!4469405 res!1854225) b!4469406))

(declare-fun m!5176225 () Bool)

(assert (=> b!4469405 m!5176225))

(declare-fun m!5176227 () Bool)

(assert (=> b!4469406 m!5176227))

(assert (=> bs!794373 d!1363554))

(declare-fun d!1363556 () Bool)

(assert (=> d!1363556 (= (invariantList!927 (toList!4056 lt!1657599)) (noDuplicatedKeys!213 (toList!4056 lt!1657599)))))

(declare-fun bs!795062 () Bool)

(assert (= bs!795062 d!1363556))

(declare-fun m!5176229 () Bool)

(assert (=> bs!795062 m!5176229))

(assert (=> d!1363114 d!1363556))

(declare-fun d!1363558 () Bool)

(declare-fun res!1854226 () Bool)

(declare-fun e!2783141 () Bool)

(assert (=> d!1363558 (=> res!1854226 e!2783141)))

(assert (=> d!1363558 (= res!1854226 ((_ is Nil!50285) lt!1657413))))

(assert (=> d!1363558 (= (forall!9988 lt!1657413 lambda!163117) e!2783141)))

(declare-fun b!4469407 () Bool)

(declare-fun e!2783142 () Bool)

(assert (=> b!4469407 (= e!2783141 e!2783142)))

(declare-fun res!1854227 () Bool)

(assert (=> b!4469407 (=> (not res!1854227) (not e!2783142))))

(assert (=> b!4469407 (= res!1854227 (dynLambda!21012 lambda!163117 (h!56048 lt!1657413)))))

(declare-fun b!4469408 () Bool)

(assert (=> b!4469408 (= e!2783142 (forall!9988 (t!357359 lt!1657413) lambda!163117))))

(assert (= (and d!1363558 (not res!1854226)) b!4469407))

(assert (= (and b!4469407 res!1854227) b!4469408))

(declare-fun b_lambda!148393 () Bool)

(assert (=> (not b_lambda!148393) (not b!4469407)))

(declare-fun m!5176231 () Bool)

(assert (=> b!4469407 m!5176231))

(declare-fun m!5176233 () Bool)

(assert (=> b!4469408 m!5176233))

(assert (=> d!1363114 d!1363558))

(assert (=> b!4468432 d!1363022))

(assert (=> b!4468560 d!1363366))

(declare-fun d!1363560 () Bool)

(assert (=> d!1363560 (containsKey!1472 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287)))

(declare-fun lt!1658256 () Unit!87585)

(assert (=> d!1363560 (= lt!1658256 (choose!28577 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287))))

(assert (=> d!1363560 (invariantList!927 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))))

(assert (=> d!1363560 (= (lemmaInGetKeysListThenContainsKey!374 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))) key!3287) lt!1658256)))

(declare-fun bs!795063 () Bool)

(assert (= bs!795063 d!1363560))

(assert (=> bs!795063 m!5174689))

(declare-fun m!5176235 () Bool)

(assert (=> bs!795063 m!5176235))

(assert (=> bs!795063 m!5174865))

(assert (=> b!4468560 d!1363560))

(declare-fun d!1363562 () Bool)

(declare-fun c!760907 () Bool)

(assert (=> d!1363562 (= c!760907 ((_ is Nil!50287) (keys!17362 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(declare-fun e!2783145 () (InoxSet K!11700))

(assert (=> d!1363562 (= (content!8103 (keys!17362 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) e!2783145)))

(declare-fun b!4469413 () Bool)

(assert (=> b!4469413 (= e!2783145 ((as const (Array K!11700 Bool)) false))))

(declare-fun b!4469414 () Bool)

(assert (=> b!4469414 (= e!2783145 ((_ map or) (store ((as const (Array K!11700 Bool)) false) (h!56052 (keys!17362 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) true) (content!8103 (t!357361 (keys!17362 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))))

(assert (= (and d!1363562 c!760907) b!4469413))

(assert (= (and d!1363562 (not c!760907)) b!4469414))

(declare-fun m!5176237 () Bool)

(assert (=> b!4469414 m!5176237))

(declare-fun m!5176239 () Bool)

(assert (=> b!4469414 m!5176239))

(assert (=> b!4468583 d!1363562))

(declare-fun bs!795064 () Bool)

(declare-fun b!4469416 () Bool)

(assert (= bs!795064 (and b!4469416 b!4468892)))

(declare-fun lambda!163294 () Int)

(assert (=> bs!795064 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163294 lambda!163231))))

(declare-fun bs!795065 () Bool)

(assert (= bs!795065 (and b!4469416 b!4468693)))

(assert (=> bs!795065 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163294 lambda!163138))))

(declare-fun bs!795066 () Bool)

(assert (= bs!795066 (and b!4469416 b!4469127)))

(assert (=> bs!795066 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (= lambda!163294 lambda!163262))))

(declare-fun bs!795067 () Bool)

(assert (= bs!795067 (and b!4469416 b!4469125)))

(assert (=> bs!795067 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163294 lambda!163264))))

(declare-fun bs!795068 () Bool)

(assert (= bs!795068 (and b!4469416 b!4468894)))

(assert (=> bs!795068 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163294 lambda!163229))))

(declare-fun bs!795069 () Bool)

(assert (= bs!795069 (and b!4469416 b!4469123)))

(assert (=> bs!795069 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))) (= lambda!163294 lambda!163263))))

(declare-fun bs!795070 () Bool)

(assert (= bs!795070 (and b!4469416 b!4468682)))

(assert (=> bs!795070 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163294 lambda!163136))))

(declare-fun bs!795071 () Bool)

(assert (= bs!795071 (and b!4469416 b!4468890)))

(assert (=> bs!795071 (= (= (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))) (= lambda!163294 lambda!163230))))

(assert (=> b!4469416 true))

(declare-fun bs!795072 () Bool)

(declare-fun b!4469417 () Bool)

(assert (= bs!795072 (and b!4469417 b!4468683)))

(declare-fun lambda!163295 () Int)

(assert (=> bs!795072 (= lambda!163295 lambda!163137)))

(declare-fun bs!795073 () Bool)

(assert (= bs!795073 (and b!4469417 b!4468694)))

(assert (=> bs!795073 (= lambda!163295 lambda!163139)))

(declare-fun bs!795074 () Bool)

(assert (= bs!795074 (and b!4469417 b!4468897)))

(assert (=> bs!795074 (= lambda!163295 lambda!163232)))

(declare-fun bs!795075 () Bool)

(assert (= bs!795075 (and b!4469417 b!4469130)))

(assert (=> bs!795075 (= lambda!163295 lambda!163265)))

(declare-fun d!1363564 () Bool)

(declare-fun e!2783146 () Bool)

(assert (=> d!1363564 e!2783146))

(declare-fun res!1854230 () Bool)

(assert (=> d!1363564 (=> (not res!1854230) (not e!2783146))))

(declare-fun lt!1658257 () List!50411)

(assert (=> d!1363564 (= res!1854230 (noDuplicate!698 lt!1658257))))

(assert (=> d!1363564 (= lt!1658257 (getKeysList!375 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(assert (=> d!1363564 (= (keys!17362 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lt!1658257)))

(declare-fun b!4469415 () Bool)

(declare-fun res!1854229 () Bool)

(assert (=> b!4469415 (=> (not res!1854229) (not e!2783146))))

(assert (=> b!4469415 (= res!1854229 (= (length!252 lt!1658257) (length!253 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))))))))

(declare-fun res!1854228 () Bool)

(assert (=> b!4469416 (=> (not res!1854228) (not e!2783146))))

(assert (=> b!4469416 (= res!1854228 (forall!9992 lt!1658257 lambda!163294))))

(assert (=> b!4469417 (= e!2783146 (= (content!8103 lt!1658257) (content!8103 (map!11021 (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) lambda!163295))))))

(assert (= (and d!1363564 res!1854230) b!4469415))

(assert (= (and b!4469415 res!1854229) b!4469416))

(assert (= (and b!4469416 res!1854228) b!4469417))

(declare-fun m!5176241 () Bool)

(assert (=> d!1363564 m!5176241))

(assert (=> d!1363564 m!5176051))

(declare-fun m!5176243 () Bool)

(assert (=> b!4469415 m!5176243))

(declare-fun m!5176245 () Bool)

(assert (=> b!4469415 m!5176245))

(declare-fun m!5176247 () Bool)

(assert (=> b!4469416 m!5176247))

(declare-fun m!5176249 () Bool)

(assert (=> b!4469417 m!5176249))

(declare-fun m!5176251 () Bool)

(assert (=> b!4469417 m!5176251))

(assert (=> b!4469417 m!5176251))

(declare-fun m!5176253 () Bool)

(assert (=> b!4469417 m!5176253))

(assert (=> b!4468583 d!1363564))

(declare-fun d!1363566 () Bool)

(declare-fun c!760908 () Bool)

(assert (=> d!1363566 (= c!760908 ((_ is Nil!50287) (keys!17362 lt!1657602)))))

(declare-fun e!2783147 () (InoxSet K!11700))

(assert (=> d!1363566 (= (content!8103 (keys!17362 lt!1657602)) e!2783147)))

(declare-fun b!4469418 () Bool)

(assert (=> b!4469418 (= e!2783147 ((as const (Array K!11700 Bool)) false))))

(declare-fun b!4469419 () Bool)

(assert (=> b!4469419 (= e!2783147 ((_ map or) (store ((as const (Array K!11700 Bool)) false) (h!56052 (keys!17362 lt!1657602)) true) (content!8103 (t!357361 (keys!17362 lt!1657602)))))))

(assert (= (and d!1363566 c!760908) b!4469418))

(assert (= (and d!1363566 (not c!760908)) b!4469419))

(declare-fun m!5176255 () Bool)

(assert (=> b!4469419 m!5176255))

(declare-fun m!5176257 () Bool)

(assert (=> b!4469419 m!5176257))

(assert (=> b!4468583 d!1363566))

(declare-fun bs!795076 () Bool)

(declare-fun b!4469421 () Bool)

(assert (= bs!795076 (and b!4469421 b!4468693)))

(declare-fun lambda!163296 () Int)

(assert (=> bs!795076 (= (= (toList!4056 lt!1657602) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163296 lambda!163138))))

(declare-fun bs!795077 () Bool)

(assert (= bs!795077 (and b!4469421 b!4469127)))

(assert (=> bs!795077 (= (= (toList!4056 lt!1657602) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477))))) (= lambda!163296 lambda!163262))))

(declare-fun bs!795078 () Bool)

(assert (= bs!795078 (and b!4469421 b!4469125)))

(assert (=> bs!795078 (= (= (toList!4056 lt!1657602) (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (= lambda!163296 lambda!163264))))

(declare-fun bs!795079 () Bool)

(assert (= bs!795079 (and b!4469421 b!4469416)))

(assert (=> bs!795079 (= (= (toList!4056 lt!1657602) (toList!4056 (extractMap!1080 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))) (= lambda!163296 lambda!163294))))

(declare-fun bs!795080 () Bool)

(assert (= bs!795080 (and b!4469421 b!4468892)))

(assert (=> bs!795080 (= (= (toList!4056 lt!1657602) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163296 lambda!163231))))

(declare-fun bs!795081 () Bool)

(assert (= bs!795081 (and b!4469421 b!4468894)))

(assert (=> bs!795081 (= (= (toList!4056 lt!1657602) (t!357358 (toList!4056 (extractMap!1080 lt!1657413)))) (= lambda!163296 lambda!163229))))

(declare-fun bs!795082 () Bool)

(assert (= bs!795082 (and b!4469421 b!4469123)))

(assert (=> bs!795082 (= (= (toList!4056 lt!1657602) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))) (t!357358 (toList!4056 (extractMap!1080 (toList!4055 lm!1477)))))) (= lambda!163296 lambda!163263))))

(declare-fun bs!795083 () Bool)

(assert (= bs!795083 (and b!4469421 b!4468682)))

(assert (=> bs!795083 (= (= (toList!4056 lt!1657602) (toList!4056 (extractMap!1080 lt!1657413))) (= lambda!163296 lambda!163136))))

(declare-fun bs!795084 () Bool)

(assert (= bs!795084 (and b!4469421 b!4468890)))

(assert (=> bs!795084 (= (= (toList!4056 lt!1657602) (Cons!50284 (h!56047 (toList!4056 (extractMap!1080 lt!1657413))) (t!357358 (toList!4056 (extractMap!1080 lt!1657413))))) (= lambda!163296 lambda!163230))))

(assert (=> b!4469421 true))

(declare-fun bs!795085 () Bool)

(declare-fun b!4469422 () Bool)

(assert (= bs!795085 (and b!4469422 b!4468694)))

(declare-fun lambda!163297 () Int)

(assert (=> bs!795085 (= lambda!163297 lambda!163139)))

(declare-fun bs!795086 () Bool)

(assert (= bs!795086 (and b!4469422 b!4468683)))

(assert (=> bs!795086 (= lambda!163297 lambda!163137)))

(declare-fun bs!795087 () Bool)

(assert (= bs!795087 (and b!4469422 b!4469130)))

(assert (=> bs!795087 (= lambda!163297 lambda!163265)))

(declare-fun bs!795088 () Bool)

(assert (= bs!795088 (and b!4469422 b!4468897)))

(assert (=> bs!795088 (= lambda!163297 lambda!163232)))

(declare-fun bs!795089 () Bool)

(assert (= bs!795089 (and b!4469422 b!4469417)))

(assert (=> bs!795089 (= lambda!163297 lambda!163295)))

(declare-fun d!1363568 () Bool)

(declare-fun e!2783148 () Bool)

(assert (=> d!1363568 e!2783148))

(declare-fun res!1854233 () Bool)

(assert (=> d!1363568 (=> (not res!1854233) (not e!2783148))))

(declare-fun lt!1658258 () List!50411)

(assert (=> d!1363568 (= res!1854233 (noDuplicate!698 lt!1658258))))

(assert (=> d!1363568 (= lt!1658258 (getKeysList!375 (toList!4056 lt!1657602)))))

(assert (=> d!1363568 (= (keys!17362 lt!1657602) lt!1658258)))

(declare-fun b!4469420 () Bool)

(declare-fun res!1854232 () Bool)

(assert (=> b!4469420 (=> (not res!1854232) (not e!2783148))))

(assert (=> b!4469420 (= res!1854232 (= (length!252 lt!1658258) (length!253 (toList!4056 lt!1657602))))))

(declare-fun res!1854231 () Bool)

(assert (=> b!4469421 (=> (not res!1854231) (not e!2783148))))

(assert (=> b!4469421 (= res!1854231 (forall!9992 lt!1658258 lambda!163296))))

(assert (=> b!4469422 (= e!2783148 (= (content!8103 lt!1658258) (content!8103 (map!11021 (toList!4056 lt!1657602) lambda!163297))))))

(assert (= (and d!1363568 res!1854233) b!4469420))

(assert (= (and b!4469420 res!1854232) b!4469421))

(assert (= (and b!4469421 res!1854231) b!4469422))

(declare-fun m!5176259 () Bool)

(assert (=> d!1363568 m!5176259))

(assert (=> d!1363568 m!5175803))

(declare-fun m!5176261 () Bool)

(assert (=> b!4469420 m!5176261))

(declare-fun m!5176263 () Bool)

(assert (=> b!4469420 m!5176263))

(declare-fun m!5176265 () Bool)

(assert (=> b!4469421 m!5176265))

(declare-fun m!5176267 () Bool)

(assert (=> b!4469422 m!5176267))

(declare-fun m!5176269 () Bool)

(assert (=> b!4469422 m!5176269))

(assert (=> b!4469422 m!5176269))

(declare-fun m!5176271 () Bool)

(assert (=> b!4469422 m!5176271))

(assert (=> b!4468583 d!1363568))

(declare-fun e!2783149 () Bool)

(declare-fun b!4469423 () Bool)

(declare-fun tp!1336248 () Bool)

(assert (=> b!4469423 (= e!2783149 (and tp_is_empty!27373 tp_is_empty!27375 tp!1336248))))

(assert (=> b!4468599 (= tp!1336243 e!2783149)))

(assert (= (and b!4468599 ((_ is Cons!50284) (t!357358 (t!357358 newBucket!178)))) b!4469423))

(declare-fun tp!1336249 () Bool)

(declare-fun e!2783150 () Bool)

(declare-fun b!4469424 () Bool)

(assert (=> b!4469424 (= e!2783150 (and tp_is_empty!27373 tp_is_empty!27375 tp!1336249))))

(assert (=> b!4468594 (= tp!1336239 e!2783150)))

(assert (= (and b!4468594 ((_ is Cons!50284) (_2!28560 (h!56048 (toList!4055 lm!1477))))) b!4469424))

(declare-fun b!4469425 () Bool)

(declare-fun e!2783151 () Bool)

(declare-fun tp!1336250 () Bool)

(declare-fun tp!1336251 () Bool)

(assert (=> b!4469425 (= e!2783151 (and tp!1336250 tp!1336251))))

(assert (=> b!4468594 (= tp!1336240 e!2783151)))

(assert (= (and b!4468594 ((_ is Cons!50285) (t!357359 (toList!4055 lm!1477)))) b!4469425))

(declare-fun b_lambda!148395 () Bool)

(assert (= b_lambda!148329 (or d!1363096 b_lambda!148395)))

(declare-fun bs!795090 () Bool)

(declare-fun d!1363570 () Bool)

(assert (= bs!795090 (and d!1363570 d!1363096)))

(assert (=> bs!795090 (= (dynLambda!21012 lambda!163112 (h!56048 (toList!4055 lt!1657407))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lt!1657407)))))))

(assert (=> bs!795090 m!5175297))

(assert (=> b!4468842 d!1363570))

(declare-fun b_lambda!148397 () Bool)

(assert (= b_lambda!148345 (or start!438912 b_lambda!148397)))

(assert (=> d!1363398 d!1363132))

(declare-fun b_lambda!148399 () Bool)

(assert (= b_lambda!148335 (or d!1363102 b_lambda!148399)))

(declare-fun bs!795091 () Bool)

(declare-fun d!1363572 () Bool)

(assert (= bs!795091 (and d!1363572 d!1363102)))

(assert (=> bs!795091 (= (dynLambda!21012 lambda!163114 (h!56048 (toList!4055 lm!1477))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(assert (=> bs!795091 m!5174761))

(assert (=> b!4469003 d!1363572))

(declare-fun b_lambda!148401 () Bool)

(assert (= b_lambda!148393 (or d!1363114 b_lambda!148401)))

(declare-fun bs!795092 () Bool)

(declare-fun d!1363574 () Bool)

(assert (= bs!795092 (and d!1363574 d!1363114)))

(assert (=> bs!795092 (= (dynLambda!21012 lambda!163117 (h!56048 lt!1657413)) (noDuplicateKeys!1024 (_2!28560 (h!56048 lt!1657413))))))

(assert (=> bs!795092 m!5176135))

(assert (=> b!4469407 d!1363574))

(declare-fun b_lambda!148403 () Bool)

(assert (= b_lambda!148331 (or start!438912 b_lambda!148403)))

(declare-fun bs!795093 () Bool)

(declare-fun d!1363576 () Bool)

(assert (= bs!795093 (and d!1363576 start!438912)))

(assert (=> bs!795093 (= (dynLambda!21012 lambda!163077 (h!56048 (t!357359 (toList!4055 lm!1477)))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))))))

(assert (=> bs!795093 m!5175369))

(assert (=> b!4468844 d!1363576))

(declare-fun b_lambda!148405 () Bool)

(assert (= b_lambda!148391 (or d!1363104 b_lambda!148405)))

(declare-fun bs!795094 () Bool)

(declare-fun d!1363578 () Bool)

(assert (= bs!795094 (and d!1363578 d!1363104)))

(assert (=> bs!795094 (= (dynLambda!21012 lambda!163115 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (Cons!50285 (tuple2!50533 hash!344 (_2!28560 (h!56048 (toList!4055 lm!1477)))) Nil!50285)))))))

(assert (=> bs!795094 m!5176197))

(assert (=> b!4469397 d!1363578))

(declare-fun b_lambda!148407 () Bool)

(assert (= b_lambda!148339 (or d!1363128 b_lambda!148407)))

(declare-fun bs!795095 () Bool)

(declare-fun d!1363580 () Bool)

(assert (= bs!795095 (and d!1363580 d!1363128)))

(assert (=> bs!795095 (= (dynLambda!21012 lambda!163123 (h!56048 (toList!4055 lm!1477))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(assert (=> bs!795095 m!5174761))

(assert (=> b!4469054 d!1363580))

(declare-fun b_lambda!148409 () Bool)

(assert (= b_lambda!148389 (or d!1363078 b_lambda!148409)))

(declare-fun bs!795096 () Bool)

(declare-fun d!1363582 () Bool)

(assert (= bs!795096 (and d!1363582 d!1363078)))

(assert (=> bs!795096 (= (dynLambda!21013 lambda!163106 (h!56047 newBucket!178)) (= (hash!2445 hashF!1107 (_1!28559 (h!56047 newBucket!178))) hash!344))))

(declare-fun m!5176273 () Bool)

(assert (=> bs!795096 m!5176273))

(assert (=> b!4469395 d!1363582))

(declare-fun b_lambda!148411 () Bool)

(assert (= b_lambda!148325 (or d!1363118 b_lambda!148411)))

(declare-fun bs!795097 () Bool)

(declare-fun d!1363584 () Bool)

(assert (= bs!795097 (and d!1363584 d!1363118)))

(assert (=> bs!795097 (= (dynLambda!21012 lambda!163120 (h!56048 (toList!4055 (ListLongMap!2688 lt!1657413)))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 (ListLongMap!2688 lt!1657413))))))))

(declare-fun m!5176275 () Bool)

(assert (=> bs!795097 m!5176275))

(assert (=> b!4468673 d!1363584))

(declare-fun b_lambda!148413 () Bool)

(assert (= b_lambda!148343 (or d!1363110 b_lambda!148413)))

(declare-fun bs!795098 () Bool)

(declare-fun d!1363586 () Bool)

(assert (= bs!795098 (and d!1363586 d!1363110)))

(assert (=> bs!795098 (= (dynLambda!21012 lambda!163116 (h!56048 (Cons!50285 lt!1657409 Nil!50285))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (Cons!50285 lt!1657409 Nil!50285)))))))

(assert (=> bs!795098 m!5175647))

(assert (=> b!4469134 d!1363586))

(declare-fun b_lambda!148415 () Bool)

(assert (= b_lambda!148347 (or d!1363066 b_lambda!148415)))

(declare-fun bs!795099 () Bool)

(declare-fun d!1363588 () Bool)

(assert (= bs!795099 (and d!1363588 d!1363066)))

(assert (=> bs!795099 (= (dynLambda!21012 lambda!163098 (h!56048 (toList!4055 lm!1477))) (allKeysSameHash!878 (_2!28560 (h!56048 (toList!4055 lm!1477))) (_1!28560 (h!56048 (toList!4055 lm!1477))) hashF!1107))))

(declare-fun m!5176277 () Bool)

(assert (=> bs!795099 m!5176277))

(assert (=> b!4469198 d!1363588))

(declare-fun b_lambda!148417 () Bool)

(assert (= b_lambda!148323 (or d!1363020 b_lambda!148417)))

(declare-fun bs!795100 () Bool)

(declare-fun d!1363590 () Bool)

(assert (= bs!795100 (and d!1363590 d!1363020)))

(assert (=> bs!795100 (= (dynLambda!21012 lambda!163089 (h!56048 (toList!4055 lm!1477))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (toList!4055 lm!1477)))))))

(assert (=> bs!795100 m!5174761))

(assert (=> b!4468660 d!1363590))

(declare-fun b_lambda!148419 () Bool)

(assert (= b_lambda!148321 (or d!1363098 b_lambda!148419)))

(declare-fun bs!795101 () Bool)

(declare-fun d!1363592 () Bool)

(assert (= bs!795101 (and d!1363592 d!1363098)))

(assert (=> bs!795101 (= (dynLambda!21012 lambda!163113 (h!56048 (t!357359 (toList!4055 lm!1477)))) (noDuplicateKeys!1024 (_2!28560 (h!56048 (t!357359 (toList!4055 lm!1477))))))))

(assert (=> bs!795101 m!5175369))

(assert (=> b!4468637 d!1363592))

(check-sat (not b!4469377) (not bm!311165) (not bm!311130) (not b!4468913) (not b!4469009) (not b!4469404) (not b!4469199) (not bm!311170) (not b!4469341) (not b_lambda!148413) (not b!4468792) (not b!4468653) (not b_lambda!148405) (not b!4469039) (not b_lambda!148411) (not d!1363286) (not b!4469336) (not b!4468656) (not d!1363338) (not d!1363544) (not b!4468691) (not bm!311198) (not b_lambda!148395) (not bs!795096) (not b!4468843) (not d!1363394) (not d!1363180) (not bm!311171) (not b!4469387) (not b!4469379) (not d!1363200) (not b_lambda!148403) (not b!4469148) (not b!4468955) (not bm!311090) (not b!4469168) (not b!4469207) (not b!4469334) (not b!4468956) (not b!4469406) (not b!4469398) (not b!4468683) (not b!4469107) (not bm!311201) (not bm!311108) (not b_lambda!148407) (not b!4468795) (not d!1363164) (not d!1363424) (not b!4469371) (not bs!795101) (not b_lambda!148315) (not b!4469105) (not d!1363210) (not d!1363388) (not b!4468903) (not b_lambda!148397) (not d!1363298) (not b!4469420) (not d!1363272) (not b!4468897) (not d!1363270) (not b!4468711) (not b_lambda!148417) (not d!1363206) (not d!1363362) (not b!4468665) (not b!4469195) (not d!1363564) (not d!1363254) (not b!4468661) (not b!4469171) (not b!4469416) (not bs!795091) (not b!4468793) (not b!4469373) (not d!1363516) (not bm!311106) (not bm!311166) (not b!4468659) (not d!1363382) (not b!4469396) (not b!4469380) (not b!4469080) (not b_lambda!148313) (not b!4469345) tp_is_empty!27373 (not b!4468890) (not b!4469147) (not d!1363328) (not b!4469005) (not b!4469130) (not bs!795100) (not d!1363346) (not d!1363276) (not b!4468674) (not d!1363326) (not d!1363196) (not d!1363166) (not d!1363182) (not bs!795093) (not bm!311199) (not b!4469178) (not d!1363274) (not b!4469370) (not b!4468941) (not b!4469108) (not b!4469382) (not b_lambda!148401) (not d!1363374) (not b!4468692) (not b!4469423) (not b!4468705) (not b!4469390) (not d!1363306) (not b!4468813) (not d!1363384) (not bm!311131) (not b!4469417) (not b!4469346) (not b!4468694) (not b!4468995) (not b!4469181) (not b!4469137) (not b!4468693) (not b!4469002) (not b!4469142) (not b_lambda!148415) (not bm!311189) (not b_lambda!148419) (not b!4468951) (not bs!795098) (not b!4468954) (not b!4468945) (not d!1363422) (not d!1363508) (not b!4468912) (not b!4469415) (not b!4469031) (not b!4468892) (not b!4468957) (not b!4469087) (not bm!311132) (not b!4469156) (not b!4469139) (not d!1363160) (not b!4469424) (not bm!311200) (not b!4469121) (not bm!311197) (not b!4469183) (not b!4468671) (not d!1363238) (not b!4468670) (not b!4469004) (not d!1363184) (not d!1363356) (not b!4468794) (not d!1363354) (not b!4469381) (not b!4469010) (not bm!311187) (not bs!795095) (not b!4468906) (not d!1363542) (not d!1363292) (not b!4468657) (not b!4469124) (not b!4469342) (not d!1363192) (not bs!795094) (not bm!311107) (not bs!795090) (not b!4469408) (not b!4469189) (not bm!311148) (not b!4468810) (not b!4469180) (not b!4468682) (not b!4469372) (not b!4468681) (not d!1363178) (not d!1363244) (not d!1363560) (not d!1363280) (not b!4468934) (not b!4469123) (not bm!311133) (not d!1363418) (not b!4468845) (not bm!311164) (not b!4469405) (not b!4468638) (not b!4469419) (not d!1363294) (not bm!311191) (not d!1363188) (not b!4469135) (not d!1363266) (not bm!311147) (not bm!311192) (not b!4469127) (not b!4468814) (not b!4469008) (not b!4468663) (not d!1363568) (not b!4469140) (not b!4469193) (not b!4468812) (not b!4469332) (not b!4469158) (not d!1363548) (not b!4469205) (not d!1363556) (not b!4468829) (not b!4468708) (not b!4469340) (not bs!795097) (not d!1363368) (not b!4469007) (not b!4469106) (not bs!795092) (not b!4469149) (not d!1363240) (not d!1363282) (not b!4468836) (not b!4469145) (not b!4469414) (not b!4468891) (not b!4469421) (not bm!311146) (not b!4469125) (not b!4469328) (not b!4469203) (not b!4469204) (not b!4469006) (not d!1363204) (not d!1363414) (not b!4468662) (not d!1363506) (not b!4469194) (not b!4469045) (not b_lambda!148399) (not b!4468666) (not b!4469201) (not b!4469200) (not bm!311196) (not d!1363342) (not b!4469208) tp_is_empty!27375 (not b_lambda!148409) (not d!1363198) (not b!4469422) (not b!4468669) (not d!1363190) (not bm!311190) (not b!4469425) (not d!1363380) (not b!4468943) (not b!4469097) (not b!4469055) (not b!4468667) (not bm!311188) (not b!4468894) (not b!4469344) (not bs!795099) (not b!4468901))
(check-sat)
