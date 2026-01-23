; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472264 () Bool)

(assert start!472264)

(declare-fun b!4678374 () Bool)

(declare-fun e!2918929 () Bool)

(declare-fun e!2918921 () Bool)

(assert (=> b!4678374 (= e!2918929 e!2918921)))

(declare-fun res!1971049 () Bool)

(assert (=> b!4678374 (=> res!1971049 e!2918921)))

(declare-datatypes ((K!13605 0))(
  ( (K!13606 (val!19155 Int)) )
))
(declare-datatypes ((V!13851 0))(
  ( (V!13852 (val!19156 Int)) )
))
(declare-datatypes ((tuple2!53522 0))(
  ( (tuple2!53523 (_1!30055 K!13605) (_2!30055 V!13851)) )
))
(declare-datatypes ((List!52349 0))(
  ( (Nil!52225) (Cons!52225 (h!58430 tuple2!53522) (t!359497 List!52349)) )
))
(declare-fun lt!1837938 () List!52349)

(declare-fun newBucket!218 () List!52349)

(assert (=> b!4678374 (= res!1971049 (not (= lt!1837938 newBucket!218)))))

(declare-fun oldBucket!34 () List!52349)

(declare-fun tail!8416 (List!52349) List!52349)

(assert (=> b!4678374 (= lt!1837938 (tail!8416 oldBucket!34))))

(declare-fun res!1971065 () Bool)

(declare-fun e!2918926 () Bool)

(assert (=> start!472264 (=> (not res!1971065) (not e!2918926))))

(declare-datatypes ((tuple2!53524 0))(
  ( (tuple2!53525 (_1!30056 (_ BitVec 64)) (_2!30056 List!52349)) )
))
(declare-datatypes ((List!52350 0))(
  ( (Nil!52226) (Cons!52226 (h!58431 tuple2!53524) (t!359498 List!52350)) )
))
(declare-datatypes ((ListLongMap!3983 0))(
  ( (ListLongMap!3984 (toList!5453 List!52350)) )
))
(declare-fun lm!2023 () ListLongMap!3983)

(declare-fun lambda!204151 () Int)

(declare-fun forall!11209 (List!52350 Int) Bool)

(assert (=> start!472264 (= res!1971065 (forall!11209 (toList!5453 lm!2023) lambda!204151))))

(assert (=> start!472264 e!2918926))

(declare-fun e!2918918 () Bool)

(declare-fun inv!67479 (ListLongMap!3983) Bool)

(assert (=> start!472264 (and (inv!67479 lm!2023) e!2918918)))

(declare-fun tp_is_empty!30421 () Bool)

(assert (=> start!472264 tp_is_empty!30421))

(declare-fun e!2918923 () Bool)

(assert (=> start!472264 e!2918923))

(assert (=> start!472264 true))

(declare-fun e!2918924 () Bool)

(assert (=> start!472264 e!2918924))

(declare-fun b!4678375 () Bool)

(declare-fun res!1971056 () Bool)

(declare-fun e!2918930 () Bool)

(assert (=> b!4678375 (=> res!1971056 e!2918930)))

(declare-fun key!4653 () K!13605)

(declare-fun containsKey!2921 (List!52349 K!13605) Bool)

(assert (=> b!4678375 (= res!1971056 (containsKey!2921 lt!1837938 key!4653))))

(declare-fun b!4678376 () Bool)

(declare-fun res!1971061 () Bool)

(declare-fun e!2918925 () Bool)

(assert (=> b!4678376 (=> (not res!1971061) (not e!2918925))))

(declare-datatypes ((Hashable!6151 0))(
  ( (HashableExt!6150 (__x!31854 Int)) )
))
(declare-fun hashF!1323 () Hashable!6151)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3954 (Hashable!6151 K!13605) (_ BitVec 64))

(assert (=> b!4678376 (= res!1971061 (= (hash!3954 hashF!1323 key!4653) hash!405))))

(declare-fun b!4678377 () Bool)

(declare-fun tp!1344869 () Bool)

(assert (=> b!4678377 (= e!2918918 tp!1344869)))

(declare-fun b!4678378 () Bool)

(declare-fun e!2918928 () Bool)

(declare-fun lt!1837933 () List!52350)

(assert (=> b!4678378 (= e!2918928 (forall!11209 lt!1837933 lambda!204151))))

(declare-fun b!4678379 () Bool)

(declare-fun e!2918920 () Bool)

(assert (=> b!4678379 (= e!2918921 e!2918920)))

(declare-fun res!1971060 () Bool)

(assert (=> b!4678379 (=> res!1971060 e!2918920)))

(declare-datatypes ((ListMap!4817 0))(
  ( (ListMap!4818 (toList!5454 List!52349)) )
))
(declare-fun lt!1837936 () ListMap!4817)

(declare-fun extractMap!1808 (List!52350) ListMap!4817)

(assert (=> b!4678379 (= res!1971060 (not (= lt!1837936 (extractMap!1808 (Cons!52226 (tuple2!53525 hash!405 newBucket!218) (t!359498 (toList!5453 lm!2023)))))))))

(declare-fun lt!1837930 () List!52350)

(assert (=> b!4678379 (= lt!1837936 (extractMap!1808 lt!1837930))))

(assert (=> b!4678379 (= lt!1837930 (Cons!52226 (tuple2!53525 hash!405 lt!1837938) (t!359498 (toList!5453 lm!2023))))))

(declare-fun b!4678380 () Bool)

(declare-fun e!2918917 () Bool)

(assert (=> b!4678380 (= e!2918925 e!2918917)))

(declare-fun res!1971063 () Bool)

(assert (=> b!4678380 (=> (not res!1971063) (not e!2918917))))

(declare-fun lt!1837937 () tuple2!53524)

(declare-fun head!9855 (List!52350) tuple2!53524)

(assert (=> b!4678380 (= res!1971063 (= (head!9855 (toList!5453 lm!2023)) lt!1837937))))

(assert (=> b!4678380 (= lt!1837937 (tuple2!53525 hash!405 oldBucket!34))))

(declare-fun b!4678381 () Bool)

(declare-fun e!2918927 () Bool)

(assert (=> b!4678381 (= e!2918927 e!2918930)))

(declare-fun res!1971053 () Bool)

(assert (=> b!4678381 (=> res!1971053 e!2918930)))

(declare-fun lt!1837934 () ListMap!4817)

(declare-fun lt!1837926 () ListMap!4817)

(declare-fun eq!971 (ListMap!4817 ListMap!4817) Bool)

(declare-fun addToMapMapFromBucket!1214 (List!52349 ListMap!4817) ListMap!4817)

(assert (=> b!4678381 (= res!1971053 (not (eq!971 lt!1837934 (addToMapMapFromBucket!1214 oldBucket!34 lt!1837926))))))

(declare-fun lt!1837927 () ListMap!4817)

(declare-fun +!2084 (ListMap!4817 tuple2!53522) ListMap!4817)

(assert (=> b!4678381 (= lt!1837934 (+!2084 lt!1837927 (h!58430 oldBucket!34)))))

(declare-fun lt!1837932 () tuple2!53522)

(assert (=> b!4678381 (eq!971 (addToMapMapFromBucket!1214 (Cons!52225 lt!1837932 lt!1837938) lt!1837926) (+!2084 lt!1837927 lt!1837932))))

(declare-datatypes ((Unit!122107 0))(
  ( (Unit!122108) )
))
(declare-fun lt!1837935 () Unit!122107)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!220 (tuple2!53522 List!52349 ListMap!4817) Unit!122107)

(assert (=> b!4678381 (= lt!1837935 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!220 lt!1837932 lt!1837938 lt!1837926))))

(declare-fun head!9856 (List!52349) tuple2!53522)

(assert (=> b!4678381 (= lt!1837932 (head!9856 oldBucket!34))))

(declare-fun b!4678382 () Bool)

(declare-fun res!1971068 () Bool)

(assert (=> b!4678382 (=> (not res!1971068) (not e!2918926))))

(declare-fun allKeysSameHash!1608 (List!52349 (_ BitVec 64) Hashable!6151) Bool)

(assert (=> b!4678382 (= res!1971068 (allKeysSameHash!1608 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4678383 () Bool)

(declare-fun e!2918922 () Bool)

(assert (=> b!4678383 (= e!2918930 e!2918922)))

(declare-fun res!1971066 () Bool)

(assert (=> b!4678383 (=> res!1971066 e!2918922)))

(declare-fun contains!15362 (ListMap!4817 K!13605) Bool)

(assert (=> b!4678383 (= res!1971066 (contains!15362 lt!1837927 key!4653))))

(assert (=> b!4678383 (not (contains!15362 lt!1837936 key!4653))))

(declare-fun lt!1837929 () Unit!122107)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!382 (ListLongMap!3983 K!13605 Hashable!6151) Unit!122107)

(assert (=> b!4678383 (= lt!1837929 (lemmaNotInItsHashBucketThenNotInMap!382 (ListLongMap!3984 lt!1837930) key!4653 hashF!1323))))

(declare-fun b!4678384 () Bool)

(declare-fun res!1971069 () Bool)

(assert (=> b!4678384 (=> (not res!1971069) (not e!2918926))))

(declare-fun noDuplicateKeys!1782 (List!52349) Bool)

(assert (=> b!4678384 (= res!1971069 (noDuplicateKeys!1782 newBucket!218))))

(declare-fun b!4678385 () Bool)

(assert (=> b!4678385 (= e!2918920 e!2918927)))

(declare-fun res!1971059 () Bool)

(assert (=> b!4678385 (=> res!1971059 e!2918927)))

(assert (=> b!4678385 (= res!1971059 (not (= lt!1837927 (addToMapMapFromBucket!1214 newBucket!218 lt!1837926))))))

(assert (=> b!4678385 (= lt!1837927 (addToMapMapFromBucket!1214 lt!1837938 lt!1837926))))

(declare-fun b!4678386 () Bool)

(declare-fun res!1971054 () Bool)

(assert (=> b!4678386 (=> (not res!1971054) (not e!2918926))))

(declare-fun removePairForKey!1377 (List!52349 K!13605) List!52349)

(assert (=> b!4678386 (= res!1971054 (= (removePairForKey!1377 oldBucket!34 key!4653) newBucket!218))))

(declare-fun tp_is_empty!30423 () Bool)

(declare-fun b!4678387 () Bool)

(declare-fun tp!1344868 () Bool)

(assert (=> b!4678387 (= e!2918924 (and tp_is_empty!30421 tp_is_empty!30423 tp!1344868))))

(declare-fun b!4678388 () Bool)

(assert (=> b!4678388 (= e!2918917 (not e!2918929))))

(declare-fun res!1971057 () Bool)

(assert (=> b!4678388 (=> res!1971057 e!2918929)))

(get-info :version)

(assert (=> b!4678388 (= res!1971057 (or (not ((_ is Cons!52225) oldBucket!34)) (not (= (_1!30055 (h!58430 oldBucket!34)) key!4653))))))

(declare-fun lt!1837931 () ListMap!4817)

(assert (=> b!4678388 (= lt!1837931 (addToMapMapFromBucket!1214 (_2!30056 (h!58431 (toList!5453 lm!2023))) lt!1837926))))

(assert (=> b!4678388 (= lt!1837926 (extractMap!1808 (t!359498 (toList!5453 lm!2023))))))

(declare-fun tail!8417 (ListLongMap!3983) ListLongMap!3983)

(assert (=> b!4678388 (= (t!359498 (toList!5453 lm!2023)) (toList!5453 (tail!8417 lm!2023)))))

(declare-fun tp!1344867 () Bool)

(declare-fun b!4678389 () Bool)

(assert (=> b!4678389 (= e!2918923 (and tp_is_empty!30421 tp_is_empty!30423 tp!1344867))))

(declare-fun b!4678390 () Bool)

(declare-fun res!1971055 () Bool)

(assert (=> b!4678390 (=> (not res!1971055) (not e!2918925))))

(assert (=> b!4678390 (= res!1971055 (allKeysSameHash!1608 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4678391 () Bool)

(declare-fun res!1971067 () Bool)

(assert (=> b!4678391 (=> (not res!1971067) (not e!2918917))))

(assert (=> b!4678391 (= res!1971067 ((_ is Cons!52226) (toList!5453 lm!2023)))))

(declare-fun b!4678392 () Bool)

(assert (=> b!4678392 (= e!2918926 e!2918925)))

(declare-fun res!1971051 () Bool)

(assert (=> b!4678392 (=> (not res!1971051) (not e!2918925))))

(assert (=> b!4678392 (= res!1971051 (contains!15362 lt!1837931 key!4653))))

(assert (=> b!4678392 (= lt!1837931 (extractMap!1808 (toList!5453 lm!2023)))))

(declare-fun b!4678393 () Bool)

(declare-fun res!1971058 () Bool)

(assert (=> b!4678393 (=> res!1971058 e!2918930)))

(assert (=> b!4678393 (= res!1971058 (not (= lt!1837927 lt!1837936)))))

(declare-fun b!4678394 () Bool)

(declare-fun res!1971050 () Bool)

(assert (=> b!4678394 (=> (not res!1971050) (not e!2918925))))

(declare-fun allKeysSameHashInMap!1696 (ListLongMap!3983 Hashable!6151) Bool)

(assert (=> b!4678394 (= res!1971050 (allKeysSameHashInMap!1696 lm!2023 hashF!1323))))

(declare-fun b!4678395 () Bool)

(declare-fun res!1971062 () Bool)

(assert (=> b!4678395 (=> (not res!1971062) (not e!2918926))))

(assert (=> b!4678395 (= res!1971062 (noDuplicateKeys!1782 oldBucket!34))))

(declare-fun b!4678396 () Bool)

(declare-fun e!2918919 () Bool)

(assert (=> b!4678396 (= e!2918922 e!2918919)))

(declare-fun res!1971064 () Bool)

(assert (=> b!4678396 (=> res!1971064 e!2918919)))

(declare-fun -!646 (ListMap!4817 K!13605) ListMap!4817)

(assert (=> b!4678396 (= res!1971064 (not (= (-!646 lt!1837934 key!4653) lt!1837927)))))

(assert (=> b!4678396 (= (-!646 (+!2084 lt!1837927 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))) key!4653) lt!1837927)))

(declare-fun lt!1837928 () Unit!122107)

(declare-fun addThenRemoveForNewKeyIsSame!37 (ListMap!4817 K!13605 V!13851) Unit!122107)

(assert (=> b!4678396 (= lt!1837928 (addThenRemoveForNewKeyIsSame!37 lt!1837927 key!4653 (_2!30055 (h!58430 oldBucket!34))))))

(declare-fun b!4678397 () Bool)

(assert (=> b!4678397 (= e!2918919 e!2918928)))

(declare-fun res!1971052 () Bool)

(assert (=> b!4678397 (=> res!1971052 e!2918928)))

(assert (=> b!4678397 (= res!1971052 (not (eq!971 lt!1837934 (extractMap!1808 lt!1837933))))))

(assert (=> b!4678397 (= lt!1837933 (Cons!52226 lt!1837937 (t!359498 (toList!5453 lm!2023))))))

(assert (= (and start!472264 res!1971065) b!4678395))

(assert (= (and b!4678395 res!1971062) b!4678384))

(assert (= (and b!4678384 res!1971069) b!4678386))

(assert (= (and b!4678386 res!1971054) b!4678382))

(assert (= (and b!4678382 res!1971068) b!4678392))

(assert (= (and b!4678392 res!1971051) b!4678376))

(assert (= (and b!4678376 res!1971061) b!4678390))

(assert (= (and b!4678390 res!1971055) b!4678394))

(assert (= (and b!4678394 res!1971050) b!4678380))

(assert (= (and b!4678380 res!1971063) b!4678391))

(assert (= (and b!4678391 res!1971067) b!4678388))

(assert (= (and b!4678388 (not res!1971057)) b!4678374))

(assert (= (and b!4678374 (not res!1971049)) b!4678379))

(assert (= (and b!4678379 (not res!1971060)) b!4678385))

(assert (= (and b!4678385 (not res!1971059)) b!4678381))

(assert (= (and b!4678381 (not res!1971053)) b!4678375))

(assert (= (and b!4678375 (not res!1971056)) b!4678393))

(assert (= (and b!4678393 (not res!1971058)) b!4678383))

(assert (= (and b!4678383 (not res!1971066)) b!4678396))

(assert (= (and b!4678396 (not res!1971064)) b!4678397))

(assert (= (and b!4678397 (not res!1971052)) b!4678378))

(assert (= start!472264 b!4678377))

(assert (= (and start!472264 ((_ is Cons!52225) oldBucket!34)) b!4678389))

(assert (= (and start!472264 ((_ is Cons!52225) newBucket!218)) b!4678387))

(declare-fun m!5573243 () Bool)

(assert (=> b!4678386 m!5573243))

(declare-fun m!5573245 () Bool)

(assert (=> b!4678396 m!5573245))

(declare-fun m!5573247 () Bool)

(assert (=> b!4678396 m!5573247))

(assert (=> b!4678396 m!5573247))

(declare-fun m!5573249 () Bool)

(assert (=> b!4678396 m!5573249))

(declare-fun m!5573251 () Bool)

(assert (=> b!4678396 m!5573251))

(declare-fun m!5573253 () Bool)

(assert (=> b!4678375 m!5573253))

(declare-fun m!5573255 () Bool)

(assert (=> b!4678374 m!5573255))

(declare-fun m!5573257 () Bool)

(assert (=> b!4678384 m!5573257))

(declare-fun m!5573259 () Bool)

(assert (=> start!472264 m!5573259))

(declare-fun m!5573261 () Bool)

(assert (=> start!472264 m!5573261))

(declare-fun m!5573263 () Bool)

(assert (=> b!4678379 m!5573263))

(declare-fun m!5573265 () Bool)

(assert (=> b!4678379 m!5573265))

(declare-fun m!5573267 () Bool)

(assert (=> b!4678382 m!5573267))

(declare-fun m!5573269 () Bool)

(assert (=> b!4678385 m!5573269))

(declare-fun m!5573271 () Bool)

(assert (=> b!4678385 m!5573271))

(declare-fun m!5573273 () Bool)

(assert (=> b!4678395 m!5573273))

(declare-fun m!5573275 () Bool)

(assert (=> b!4678380 m!5573275))

(declare-fun m!5573277 () Bool)

(assert (=> b!4678378 m!5573277))

(declare-fun m!5573279 () Bool)

(assert (=> b!4678376 m!5573279))

(declare-fun m!5573281 () Bool)

(assert (=> b!4678394 m!5573281))

(declare-fun m!5573283 () Bool)

(assert (=> b!4678392 m!5573283))

(declare-fun m!5573285 () Bool)

(assert (=> b!4678392 m!5573285))

(declare-fun m!5573287 () Bool)

(assert (=> b!4678397 m!5573287))

(assert (=> b!4678397 m!5573287))

(declare-fun m!5573289 () Bool)

(assert (=> b!4678397 m!5573289))

(declare-fun m!5573291 () Bool)

(assert (=> b!4678388 m!5573291))

(declare-fun m!5573293 () Bool)

(assert (=> b!4678388 m!5573293))

(declare-fun m!5573295 () Bool)

(assert (=> b!4678388 m!5573295))

(declare-fun m!5573297 () Bool)

(assert (=> b!4678383 m!5573297))

(declare-fun m!5573299 () Bool)

(assert (=> b!4678383 m!5573299))

(declare-fun m!5573301 () Bool)

(assert (=> b!4678383 m!5573301))

(declare-fun m!5573303 () Bool)

(assert (=> b!4678390 m!5573303))

(declare-fun m!5573305 () Bool)

(assert (=> b!4678381 m!5573305))

(declare-fun m!5573307 () Bool)

(assert (=> b!4678381 m!5573307))

(declare-fun m!5573309 () Bool)

(assert (=> b!4678381 m!5573309))

(declare-fun m!5573311 () Bool)

(assert (=> b!4678381 m!5573311))

(declare-fun m!5573313 () Bool)

(assert (=> b!4678381 m!5573313))

(assert (=> b!4678381 m!5573307))

(declare-fun m!5573315 () Bool)

(assert (=> b!4678381 m!5573315))

(assert (=> b!4678381 m!5573309))

(declare-fun m!5573317 () Bool)

(assert (=> b!4678381 m!5573317))

(assert (=> b!4678381 m!5573313))

(declare-fun m!5573319 () Bool)

(assert (=> b!4678381 m!5573319))

(check-sat (not b!4678385) (not b!4678390) tp_is_empty!30423 tp_is_empty!30421 (not b!4678386) (not b!4678380) (not b!4678387) (not b!4678375) (not b!4678394) (not b!4678384) (not b!4678388) (not b!4678397) (not b!4678396) (not b!4678381) (not b!4678383) (not b!4678382) (not b!4678378) (not b!4678377) (not b!4678389) (not b!4678395) (not start!472264) (not b!4678376) (not b!4678392) (not b!4678374) (not b!4678379))
(check-sat)
(get-model)

(declare-fun b!4678536 () Bool)

(assert (=> b!4678536 true))

(declare-fun bs!1081103 () Bool)

(declare-fun b!4678537 () Bool)

(assert (= bs!1081103 (and b!4678537 b!4678536)))

(declare-fun lambda!204233 () Int)

(declare-fun lambda!204231 () Int)

(assert (=> bs!1081103 (= lambda!204233 lambda!204231)))

(assert (=> b!4678537 true))

(declare-fun lambda!204234 () Int)

(declare-fun lt!1838146 () ListMap!4817)

(assert (=> bs!1081103 (= (= lt!1838146 lt!1837926) (= lambda!204234 lambda!204231))))

(assert (=> b!4678537 (= (= lt!1838146 lt!1837926) (= lambda!204234 lambda!204233))))

(assert (=> b!4678537 true))

(declare-fun bs!1081107 () Bool)

(declare-fun d!1486977 () Bool)

(assert (= bs!1081107 (and d!1486977 b!4678536)))

(declare-fun lambda!204236 () Int)

(declare-fun lt!1838141 () ListMap!4817)

(assert (=> bs!1081107 (= (= lt!1838141 lt!1837926) (= lambda!204236 lambda!204231))))

(declare-fun bs!1081109 () Bool)

(assert (= bs!1081109 (and d!1486977 b!4678537)))

(assert (=> bs!1081109 (= (= lt!1838141 lt!1837926) (= lambda!204236 lambda!204233))))

(assert (=> bs!1081109 (= (= lt!1838141 lt!1838146) (= lambda!204236 lambda!204234))))

(assert (=> d!1486977 true))

(declare-fun b!4678533 () Bool)

(declare-fun e!2919016 () Bool)

(declare-fun invariantList!1370 (List!52349) Bool)

(assert (=> b!4678533 (= e!2919016 (invariantList!1370 (toList!5454 lt!1838141)))))

(declare-fun b!4678534 () Bool)

(declare-fun e!2919017 () Bool)

(declare-fun forall!11211 (List!52349 Int) Bool)

(assert (=> b!4678534 (= e!2919017 (forall!11211 (toList!5454 lt!1837926) lambda!204234))))

(assert (=> d!1486977 e!2919016))

(declare-fun res!1971129 () Bool)

(assert (=> d!1486977 (=> (not res!1971129) (not e!2919016))))

(assert (=> d!1486977 (= res!1971129 (forall!11211 newBucket!218 lambda!204236))))

(declare-fun e!2919015 () ListMap!4817)

(assert (=> d!1486977 (= lt!1838141 e!2919015)))

(declare-fun c!800394 () Bool)

(assert (=> d!1486977 (= c!800394 ((_ is Nil!52225) newBucket!218))))

(assert (=> d!1486977 (noDuplicateKeys!1782 newBucket!218)))

(assert (=> d!1486977 (= (addToMapMapFromBucket!1214 newBucket!218 lt!1837926) lt!1838141)))

(declare-fun b!4678535 () Bool)

(declare-fun res!1971131 () Bool)

(assert (=> b!4678535 (=> (not res!1971131) (not e!2919016))))

(assert (=> b!4678535 (= res!1971131 (forall!11211 (toList!5454 lt!1837926) lambda!204236))))

(declare-fun bm!326938 () Bool)

(declare-fun call!326944 () Unit!122107)

(declare-fun lemmaContainsAllItsOwnKeys!658 (ListMap!4817) Unit!122107)

(assert (=> bm!326938 (= call!326944 (lemmaContainsAllItsOwnKeys!658 lt!1837926))))

(assert (=> b!4678536 (= e!2919015 lt!1837926)))

(declare-fun lt!1838143 () Unit!122107)

(assert (=> b!4678536 (= lt!1838143 call!326944)))

(declare-fun call!326943 () Bool)

(assert (=> b!4678536 call!326943))

(declare-fun lt!1838149 () Unit!122107)

(assert (=> b!4678536 (= lt!1838149 lt!1838143)))

(declare-fun call!326945 () Bool)

(assert (=> b!4678536 call!326945))

(declare-fun lt!1838136 () Unit!122107)

(declare-fun Unit!122124 () Unit!122107)

(assert (=> b!4678536 (= lt!1838136 Unit!122124)))

(assert (=> b!4678537 (= e!2919015 lt!1838146)))

(declare-fun lt!1838134 () ListMap!4817)

(assert (=> b!4678537 (= lt!1838134 (+!2084 lt!1837926 (h!58430 newBucket!218)))))

(assert (=> b!4678537 (= lt!1838146 (addToMapMapFromBucket!1214 (t!359497 newBucket!218) (+!2084 lt!1837926 (h!58430 newBucket!218))))))

(declare-fun lt!1838145 () Unit!122107)

(assert (=> b!4678537 (= lt!1838145 call!326944)))

(assert (=> b!4678537 (forall!11211 (toList!5454 lt!1837926) lambda!204233)))

(declare-fun lt!1838147 () Unit!122107)

(assert (=> b!4678537 (= lt!1838147 lt!1838145)))

(assert (=> b!4678537 (forall!11211 (toList!5454 lt!1838134) lambda!204234)))

(declare-fun lt!1838133 () Unit!122107)

(declare-fun Unit!122125 () Unit!122107)

(assert (=> b!4678537 (= lt!1838133 Unit!122125)))

(assert (=> b!4678537 (forall!11211 (t!359497 newBucket!218) lambda!204234)))

(declare-fun lt!1838142 () Unit!122107)

(declare-fun Unit!122126 () Unit!122107)

(assert (=> b!4678537 (= lt!1838142 Unit!122126)))

(declare-fun lt!1838132 () Unit!122107)

(declare-fun Unit!122127 () Unit!122107)

(assert (=> b!4678537 (= lt!1838132 Unit!122127)))

(declare-fun lt!1838140 () Unit!122107)

(declare-fun forallContained!3342 (List!52349 Int tuple2!53522) Unit!122107)

(assert (=> b!4678537 (= lt!1838140 (forallContained!3342 (toList!5454 lt!1838134) lambda!204234 (h!58430 newBucket!218)))))

(assert (=> b!4678537 (contains!15362 lt!1838134 (_1!30055 (h!58430 newBucket!218)))))

(declare-fun lt!1838137 () Unit!122107)

(declare-fun Unit!122128 () Unit!122107)

(assert (=> b!4678537 (= lt!1838137 Unit!122128)))

(assert (=> b!4678537 (contains!15362 lt!1838146 (_1!30055 (h!58430 newBucket!218)))))

(declare-fun lt!1838144 () Unit!122107)

(declare-fun Unit!122129 () Unit!122107)

(assert (=> b!4678537 (= lt!1838144 Unit!122129)))

(assert (=> b!4678537 call!326945))

(declare-fun lt!1838130 () Unit!122107)

(declare-fun Unit!122130 () Unit!122107)

(assert (=> b!4678537 (= lt!1838130 Unit!122130)))

(assert (=> b!4678537 (forall!11211 (toList!5454 lt!1838134) lambda!204234)))

(declare-fun lt!1838139 () Unit!122107)

(declare-fun Unit!122131 () Unit!122107)

(assert (=> b!4678537 (= lt!1838139 Unit!122131)))

(declare-fun lt!1838131 () Unit!122107)

(declare-fun Unit!122132 () Unit!122107)

(assert (=> b!4678537 (= lt!1838131 Unit!122132)))

(declare-fun lt!1838135 () Unit!122107)

(declare-fun addForallContainsKeyThenBeforeAdding!657 (ListMap!4817 ListMap!4817 K!13605 V!13851) Unit!122107)

(assert (=> b!4678537 (= lt!1838135 (addForallContainsKeyThenBeforeAdding!657 lt!1837926 lt!1838146 (_1!30055 (h!58430 newBucket!218)) (_2!30055 (h!58430 newBucket!218))))))

(assert (=> b!4678537 call!326943))

(declare-fun lt!1838148 () Unit!122107)

(assert (=> b!4678537 (= lt!1838148 lt!1838135)))

(assert (=> b!4678537 (forall!11211 (toList!5454 lt!1837926) lambda!204234)))

(declare-fun lt!1838138 () Unit!122107)

(declare-fun Unit!122133 () Unit!122107)

(assert (=> b!4678537 (= lt!1838138 Unit!122133)))

(declare-fun res!1971130 () Bool)

(assert (=> b!4678537 (= res!1971130 (forall!11211 newBucket!218 lambda!204234))))

(assert (=> b!4678537 (=> (not res!1971130) (not e!2919017))))

(assert (=> b!4678537 e!2919017))

(declare-fun lt!1838150 () Unit!122107)

(declare-fun Unit!122134 () Unit!122107)

(assert (=> b!4678537 (= lt!1838150 Unit!122134)))

(declare-fun bm!326939 () Bool)

(assert (=> bm!326939 (= call!326945 (forall!11211 (ite c!800394 (toList!5454 lt!1837926) newBucket!218) (ite c!800394 lambda!204231 lambda!204234)))))

(declare-fun bm!326940 () Bool)

(assert (=> bm!326940 (= call!326943 (forall!11211 (toList!5454 lt!1837926) (ite c!800394 lambda!204231 lambda!204234)))))

(assert (= (and d!1486977 c!800394) b!4678536))

(assert (= (and d!1486977 (not c!800394)) b!4678537))

(assert (= (and b!4678537 res!1971130) b!4678534))

(assert (= (or b!4678536 b!4678537) bm!326938))

(assert (= (or b!4678536 b!4678537) bm!326940))

(assert (= (or b!4678536 b!4678537) bm!326939))

(assert (= (and d!1486977 res!1971129) b!4678535))

(assert (= (and b!4678535 res!1971131) b!4678533))

(declare-fun m!5573509 () Bool)

(assert (=> b!4678535 m!5573509))

(declare-fun m!5573511 () Bool)

(assert (=> bm!326939 m!5573511))

(declare-fun m!5573513 () Bool)

(assert (=> b!4678537 m!5573513))

(declare-fun m!5573517 () Bool)

(assert (=> b!4678537 m!5573517))

(declare-fun m!5573521 () Bool)

(assert (=> b!4678537 m!5573521))

(declare-fun m!5573527 () Bool)

(assert (=> b!4678537 m!5573527))

(declare-fun m!5573531 () Bool)

(assert (=> b!4678537 m!5573531))

(declare-fun m!5573535 () Bool)

(assert (=> b!4678537 m!5573535))

(declare-fun m!5573537 () Bool)

(assert (=> b!4678537 m!5573537))

(declare-fun m!5573541 () Bool)

(assert (=> b!4678537 m!5573541))

(assert (=> b!4678537 m!5573535))

(declare-fun m!5573547 () Bool)

(assert (=> b!4678537 m!5573547))

(declare-fun m!5573551 () Bool)

(assert (=> b!4678537 m!5573551))

(assert (=> b!4678537 m!5573531))

(declare-fun m!5573553 () Bool)

(assert (=> b!4678537 m!5573553))

(assert (=> b!4678534 m!5573553))

(declare-fun m!5573559 () Bool)

(assert (=> bm!326940 m!5573559))

(declare-fun m!5573561 () Bool)

(assert (=> bm!326938 m!5573561))

(declare-fun m!5573563 () Bool)

(assert (=> b!4678533 m!5573563))

(declare-fun m!5573567 () Bool)

(assert (=> d!1486977 m!5573567))

(assert (=> d!1486977 m!5573257))

(assert (=> b!4678385 d!1486977))

(declare-fun bs!1081113 () Bool)

(declare-fun b!4678543 () Bool)

(assert (= bs!1081113 (and b!4678543 b!4678536)))

(declare-fun lambda!204237 () Int)

(assert (=> bs!1081113 (= lambda!204237 lambda!204231)))

(declare-fun bs!1081114 () Bool)

(assert (= bs!1081114 (and b!4678543 b!4678537)))

(assert (=> bs!1081114 (= lambda!204237 lambda!204233)))

(assert (=> bs!1081114 (= (= lt!1837926 lt!1838146) (= lambda!204237 lambda!204234))))

(declare-fun bs!1081115 () Bool)

(assert (= bs!1081115 (and b!4678543 d!1486977)))

(assert (=> bs!1081115 (= (= lt!1837926 lt!1838141) (= lambda!204237 lambda!204236))))

(assert (=> b!4678543 true))

(declare-fun bs!1081117 () Bool)

(declare-fun b!4678544 () Bool)

(assert (= bs!1081117 (and b!4678544 b!4678537)))

(declare-fun lambda!204238 () Int)

(assert (=> bs!1081117 (= lambda!204238 lambda!204233)))

(declare-fun bs!1081119 () Bool)

(assert (= bs!1081119 (and b!4678544 b!4678543)))

(assert (=> bs!1081119 (= lambda!204238 lambda!204237)))

(declare-fun bs!1081120 () Bool)

(assert (= bs!1081120 (and b!4678544 b!4678536)))

(assert (=> bs!1081120 (= lambda!204238 lambda!204231)))

(declare-fun bs!1081121 () Bool)

(assert (= bs!1081121 (and b!4678544 d!1486977)))

(assert (=> bs!1081121 (= (= lt!1837926 lt!1838141) (= lambda!204238 lambda!204236))))

(assert (=> bs!1081117 (= (= lt!1837926 lt!1838146) (= lambda!204238 lambda!204234))))

(assert (=> b!4678544 true))

(declare-fun lambda!204239 () Int)

(declare-fun lt!1838167 () ListMap!4817)

(assert (=> bs!1081117 (= (= lt!1838167 lt!1837926) (= lambda!204239 lambda!204233))))

(assert (=> b!4678544 (= (= lt!1838167 lt!1837926) (= lambda!204239 lambda!204238))))

(assert (=> bs!1081119 (= (= lt!1838167 lt!1837926) (= lambda!204239 lambda!204237))))

(assert (=> bs!1081120 (= (= lt!1838167 lt!1837926) (= lambda!204239 lambda!204231))))

(assert (=> bs!1081121 (= (= lt!1838167 lt!1838141) (= lambda!204239 lambda!204236))))

(assert (=> bs!1081117 (= (= lt!1838167 lt!1838146) (= lambda!204239 lambda!204234))))

(assert (=> b!4678544 true))

(declare-fun bs!1081122 () Bool)

(declare-fun d!1487029 () Bool)

(assert (= bs!1081122 (and d!1487029 b!4678537)))

(declare-fun lt!1838162 () ListMap!4817)

(declare-fun lambda!204240 () Int)

(assert (=> bs!1081122 (= (= lt!1838162 lt!1837926) (= lambda!204240 lambda!204233))))

(declare-fun bs!1081123 () Bool)

(assert (= bs!1081123 (and d!1487029 b!4678544)))

(assert (=> bs!1081123 (= (= lt!1838162 lt!1837926) (= lambda!204240 lambda!204238))))

(declare-fun bs!1081124 () Bool)

(assert (= bs!1081124 (and d!1487029 b!4678543)))

(assert (=> bs!1081124 (= (= lt!1838162 lt!1837926) (= lambda!204240 lambda!204237))))

(declare-fun bs!1081125 () Bool)

(assert (= bs!1081125 (and d!1487029 b!4678536)))

(assert (=> bs!1081125 (= (= lt!1838162 lt!1837926) (= lambda!204240 lambda!204231))))

(assert (=> bs!1081123 (= (= lt!1838162 lt!1838167) (= lambda!204240 lambda!204239))))

(declare-fun bs!1081126 () Bool)

(assert (= bs!1081126 (and d!1487029 d!1486977)))

(assert (=> bs!1081126 (= (= lt!1838162 lt!1838141) (= lambda!204240 lambda!204236))))

(assert (=> bs!1081122 (= (= lt!1838162 lt!1838146) (= lambda!204240 lambda!204234))))

(assert (=> d!1487029 true))

(declare-fun b!4678540 () Bool)

(declare-fun e!2919019 () Bool)

(assert (=> b!4678540 (= e!2919019 (invariantList!1370 (toList!5454 lt!1838162)))))

(declare-fun b!4678541 () Bool)

(declare-fun e!2919020 () Bool)

(assert (=> b!4678541 (= e!2919020 (forall!11211 (toList!5454 lt!1837926) lambda!204239))))

(assert (=> d!1487029 e!2919019))

(declare-fun res!1971132 () Bool)

(assert (=> d!1487029 (=> (not res!1971132) (not e!2919019))))

(assert (=> d!1487029 (= res!1971132 (forall!11211 lt!1837938 lambda!204240))))

(declare-fun e!2919018 () ListMap!4817)

(assert (=> d!1487029 (= lt!1838162 e!2919018)))

(declare-fun c!800395 () Bool)

(assert (=> d!1487029 (= c!800395 ((_ is Nil!52225) lt!1837938))))

(assert (=> d!1487029 (noDuplicateKeys!1782 lt!1837938)))

(assert (=> d!1487029 (= (addToMapMapFromBucket!1214 lt!1837938 lt!1837926) lt!1838162)))

(declare-fun b!4678542 () Bool)

(declare-fun res!1971134 () Bool)

(assert (=> b!4678542 (=> (not res!1971134) (not e!2919019))))

(assert (=> b!4678542 (= res!1971134 (forall!11211 (toList!5454 lt!1837926) lambda!204240))))

(declare-fun bm!326941 () Bool)

(declare-fun call!326947 () Unit!122107)

(assert (=> bm!326941 (= call!326947 (lemmaContainsAllItsOwnKeys!658 lt!1837926))))

(assert (=> b!4678543 (= e!2919018 lt!1837926)))

(declare-fun lt!1838164 () Unit!122107)

(assert (=> b!4678543 (= lt!1838164 call!326947)))

(declare-fun call!326946 () Bool)

(assert (=> b!4678543 call!326946))

(declare-fun lt!1838170 () Unit!122107)

(assert (=> b!4678543 (= lt!1838170 lt!1838164)))

(declare-fun call!326948 () Bool)

(assert (=> b!4678543 call!326948))

(declare-fun lt!1838157 () Unit!122107)

(declare-fun Unit!122137 () Unit!122107)

(assert (=> b!4678543 (= lt!1838157 Unit!122137)))

(assert (=> b!4678544 (= e!2919018 lt!1838167)))

(declare-fun lt!1838155 () ListMap!4817)

(assert (=> b!4678544 (= lt!1838155 (+!2084 lt!1837926 (h!58430 lt!1837938)))))

(assert (=> b!4678544 (= lt!1838167 (addToMapMapFromBucket!1214 (t!359497 lt!1837938) (+!2084 lt!1837926 (h!58430 lt!1837938))))))

(declare-fun lt!1838166 () Unit!122107)

(assert (=> b!4678544 (= lt!1838166 call!326947)))

(assert (=> b!4678544 (forall!11211 (toList!5454 lt!1837926) lambda!204238)))

(declare-fun lt!1838168 () Unit!122107)

(assert (=> b!4678544 (= lt!1838168 lt!1838166)))

(assert (=> b!4678544 (forall!11211 (toList!5454 lt!1838155) lambda!204239)))

(declare-fun lt!1838154 () Unit!122107)

(declare-fun Unit!122138 () Unit!122107)

(assert (=> b!4678544 (= lt!1838154 Unit!122138)))

(assert (=> b!4678544 (forall!11211 (t!359497 lt!1837938) lambda!204239)))

(declare-fun lt!1838163 () Unit!122107)

(declare-fun Unit!122139 () Unit!122107)

(assert (=> b!4678544 (= lt!1838163 Unit!122139)))

(declare-fun lt!1838153 () Unit!122107)

(declare-fun Unit!122140 () Unit!122107)

(assert (=> b!4678544 (= lt!1838153 Unit!122140)))

(declare-fun lt!1838161 () Unit!122107)

(assert (=> b!4678544 (= lt!1838161 (forallContained!3342 (toList!5454 lt!1838155) lambda!204239 (h!58430 lt!1837938)))))

(assert (=> b!4678544 (contains!15362 lt!1838155 (_1!30055 (h!58430 lt!1837938)))))

(declare-fun lt!1838158 () Unit!122107)

(declare-fun Unit!122141 () Unit!122107)

(assert (=> b!4678544 (= lt!1838158 Unit!122141)))

(assert (=> b!4678544 (contains!15362 lt!1838167 (_1!30055 (h!58430 lt!1837938)))))

(declare-fun lt!1838165 () Unit!122107)

(declare-fun Unit!122142 () Unit!122107)

(assert (=> b!4678544 (= lt!1838165 Unit!122142)))

(assert (=> b!4678544 call!326948))

(declare-fun lt!1838151 () Unit!122107)

(declare-fun Unit!122143 () Unit!122107)

(assert (=> b!4678544 (= lt!1838151 Unit!122143)))

(assert (=> b!4678544 (forall!11211 (toList!5454 lt!1838155) lambda!204239)))

(declare-fun lt!1838160 () Unit!122107)

(declare-fun Unit!122144 () Unit!122107)

(assert (=> b!4678544 (= lt!1838160 Unit!122144)))

(declare-fun lt!1838152 () Unit!122107)

(declare-fun Unit!122145 () Unit!122107)

(assert (=> b!4678544 (= lt!1838152 Unit!122145)))

(declare-fun lt!1838156 () Unit!122107)

(assert (=> b!4678544 (= lt!1838156 (addForallContainsKeyThenBeforeAdding!657 lt!1837926 lt!1838167 (_1!30055 (h!58430 lt!1837938)) (_2!30055 (h!58430 lt!1837938))))))

(assert (=> b!4678544 call!326946))

(declare-fun lt!1838169 () Unit!122107)

(assert (=> b!4678544 (= lt!1838169 lt!1838156)))

(assert (=> b!4678544 (forall!11211 (toList!5454 lt!1837926) lambda!204239)))

(declare-fun lt!1838159 () Unit!122107)

(declare-fun Unit!122146 () Unit!122107)

(assert (=> b!4678544 (= lt!1838159 Unit!122146)))

(declare-fun res!1971133 () Bool)

(assert (=> b!4678544 (= res!1971133 (forall!11211 lt!1837938 lambda!204239))))

(assert (=> b!4678544 (=> (not res!1971133) (not e!2919020))))

(assert (=> b!4678544 e!2919020))

(declare-fun lt!1838171 () Unit!122107)

(declare-fun Unit!122147 () Unit!122107)

(assert (=> b!4678544 (= lt!1838171 Unit!122147)))

(declare-fun bm!326942 () Bool)

(assert (=> bm!326942 (= call!326948 (forall!11211 (ite c!800395 (toList!5454 lt!1837926) lt!1837938) (ite c!800395 lambda!204237 lambda!204239)))))

(declare-fun bm!326943 () Bool)

(assert (=> bm!326943 (= call!326946 (forall!11211 (toList!5454 lt!1837926) (ite c!800395 lambda!204237 lambda!204239)))))

(assert (= (and d!1487029 c!800395) b!4678543))

(assert (= (and d!1487029 (not c!800395)) b!4678544))

(assert (= (and b!4678544 res!1971133) b!4678541))

(assert (= (or b!4678543 b!4678544) bm!326941))

(assert (= (or b!4678543 b!4678544) bm!326943))

(assert (= (or b!4678543 b!4678544) bm!326942))

(assert (= (and d!1487029 res!1971132) b!4678542))

(assert (= (and b!4678542 res!1971134) b!4678540))

(declare-fun m!5573595 () Bool)

(assert (=> b!4678542 m!5573595))

(declare-fun m!5573597 () Bool)

(assert (=> bm!326942 m!5573597))

(declare-fun m!5573599 () Bool)

(assert (=> b!4678544 m!5573599))

(declare-fun m!5573601 () Bool)

(assert (=> b!4678544 m!5573601))

(declare-fun m!5573603 () Bool)

(assert (=> b!4678544 m!5573603))

(declare-fun m!5573605 () Bool)

(assert (=> b!4678544 m!5573605))

(declare-fun m!5573607 () Bool)

(assert (=> b!4678544 m!5573607))

(declare-fun m!5573609 () Bool)

(assert (=> b!4678544 m!5573609))

(declare-fun m!5573611 () Bool)

(assert (=> b!4678544 m!5573611))

(declare-fun m!5573613 () Bool)

(assert (=> b!4678544 m!5573613))

(assert (=> b!4678544 m!5573609))

(declare-fun m!5573615 () Bool)

(assert (=> b!4678544 m!5573615))

(declare-fun m!5573617 () Bool)

(assert (=> b!4678544 m!5573617))

(assert (=> b!4678544 m!5573607))

(declare-fun m!5573619 () Bool)

(assert (=> b!4678544 m!5573619))

(assert (=> b!4678541 m!5573619))

(declare-fun m!5573621 () Bool)

(assert (=> bm!326943 m!5573621))

(assert (=> bm!326941 m!5573561))

(declare-fun m!5573623 () Bool)

(assert (=> b!4678540 m!5573623))

(declare-fun m!5573625 () Bool)

(assert (=> d!1487029 m!5573625))

(declare-fun m!5573627 () Bool)

(assert (=> d!1487029 m!5573627))

(assert (=> b!4678385 d!1487029))

(declare-fun d!1487039 () Bool)

(declare-fun e!2919027 () Bool)

(assert (=> d!1487039 e!2919027))

(declare-fun res!1971142 () Bool)

(assert (=> d!1487039 (=> (not res!1971142) (not e!2919027))))

(declare-fun lt!1838202 () ListMap!4817)

(assert (=> d!1487039 (= res!1971142 (not (contains!15362 lt!1838202 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!322 (List!52349 K!13605) List!52349)

(assert (=> d!1487039 (= lt!1838202 (ListMap!4818 (removePresrvNoDuplicatedKeys!322 (toList!5454 lt!1837934) key!4653)))))

(assert (=> d!1487039 (= (-!646 lt!1837934 key!4653) lt!1838202)))

(declare-fun b!4678554 () Bool)

(declare-datatypes ((List!52352 0))(
  ( (Nil!52228) (Cons!52228 (h!58435 K!13605) (t!359502 List!52352)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9096 (List!52352) (InoxSet K!13605))

(declare-fun keys!18601 (ListMap!4817) List!52352)

(assert (=> b!4678554 (= e!2919027 (= ((_ map and) (content!9096 (keys!18601 lt!1837934)) ((_ map not) (store ((as const (Array K!13605 Bool)) false) key!4653 true))) (content!9096 (keys!18601 lt!1838202))))))

(assert (= (and d!1487039 res!1971142) b!4678554))

(declare-fun m!5573637 () Bool)

(assert (=> d!1487039 m!5573637))

(declare-fun m!5573639 () Bool)

(assert (=> d!1487039 m!5573639))

(declare-fun m!5573641 () Bool)

(assert (=> b!4678554 m!5573641))

(declare-fun m!5573643 () Bool)

(assert (=> b!4678554 m!5573643))

(assert (=> b!4678554 m!5573641))

(declare-fun m!5573645 () Bool)

(assert (=> b!4678554 m!5573645))

(declare-fun m!5573647 () Bool)

(assert (=> b!4678554 m!5573647))

(assert (=> b!4678554 m!5573643))

(declare-fun m!5573649 () Bool)

(assert (=> b!4678554 m!5573649))

(assert (=> b!4678396 d!1487039))

(declare-fun d!1487043 () Bool)

(declare-fun e!2919028 () Bool)

(assert (=> d!1487043 e!2919028))

(declare-fun res!1971143 () Bool)

(assert (=> d!1487043 (=> (not res!1971143) (not e!2919028))))

(declare-fun lt!1838203 () ListMap!4817)

(assert (=> d!1487043 (= res!1971143 (not (contains!15362 lt!1838203 key!4653)))))

(assert (=> d!1487043 (= lt!1838203 (ListMap!4818 (removePresrvNoDuplicatedKeys!322 (toList!5454 (+!2084 lt!1837927 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))) key!4653)))))

(assert (=> d!1487043 (= (-!646 (+!2084 lt!1837927 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))) key!4653) lt!1838203)))

(declare-fun b!4678555 () Bool)

(assert (=> b!4678555 (= e!2919028 (= ((_ map and) (content!9096 (keys!18601 (+!2084 lt!1837927 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13605 Bool)) false) key!4653 true))) (content!9096 (keys!18601 lt!1838203))))))

(assert (= (and d!1487043 res!1971143) b!4678555))

(declare-fun m!5573651 () Bool)

(assert (=> d!1487043 m!5573651))

(declare-fun m!5573653 () Bool)

(assert (=> d!1487043 m!5573653))

(assert (=> b!4678555 m!5573247))

(declare-fun m!5573655 () Bool)

(assert (=> b!4678555 m!5573655))

(declare-fun m!5573657 () Bool)

(assert (=> b!4678555 m!5573657))

(assert (=> b!4678555 m!5573655))

(declare-fun m!5573659 () Bool)

(assert (=> b!4678555 m!5573659))

(assert (=> b!4678555 m!5573647))

(assert (=> b!4678555 m!5573657))

(declare-fun m!5573661 () Bool)

(assert (=> b!4678555 m!5573661))

(assert (=> b!4678396 d!1487043))

(declare-fun d!1487045 () Bool)

(declare-fun e!2919031 () Bool)

(assert (=> d!1487045 e!2919031))

(declare-fun res!1971149 () Bool)

(assert (=> d!1487045 (=> (not res!1971149) (not e!2919031))))

(declare-fun lt!1838213 () ListMap!4817)

(assert (=> d!1487045 (= res!1971149 (contains!15362 lt!1838213 (_1!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))))))

(declare-fun lt!1838215 () List!52349)

(assert (=> d!1487045 (= lt!1838213 (ListMap!4818 lt!1838215))))

(declare-fun lt!1838214 () Unit!122107)

(declare-fun lt!1838212 () Unit!122107)

(assert (=> d!1487045 (= lt!1838214 lt!1838212)))

(declare-datatypes ((Option!11965 0))(
  ( (None!11964) (Some!11964 (v!46327 V!13851)) )
))
(declare-fun getValueByKey!1713 (List!52349 K!13605) Option!11965)

(assert (=> d!1487045 (= (getValueByKey!1713 lt!1838215 (_1!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))) (Some!11964 (_2!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!972 (List!52349 K!13605 V!13851) Unit!122107)

(assert (=> d!1487045 (= lt!1838212 (lemmaContainsTupThenGetReturnValue!972 lt!1838215 (_1!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))) (_2!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!480 (List!52349 K!13605 V!13851) List!52349)

(assert (=> d!1487045 (= lt!1838215 (insertNoDuplicatedKeys!480 (toList!5454 lt!1837927) (_1!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))) (_2!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))))))

(assert (=> d!1487045 (= (+!2084 lt!1837927 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))) lt!1838213)))

(declare-fun b!4678560 () Bool)

(declare-fun res!1971148 () Bool)

(assert (=> b!4678560 (=> (not res!1971148) (not e!2919031))))

(assert (=> b!4678560 (= res!1971148 (= (getValueByKey!1713 (toList!5454 lt!1838213) (_1!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34))))) (Some!11964 (_2!30055 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))))))))

(declare-fun b!4678561 () Bool)

(declare-fun contains!15365 (List!52349 tuple2!53522) Bool)

(assert (=> b!4678561 (= e!2919031 (contains!15365 (toList!5454 lt!1838213) (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))))))

(assert (= (and d!1487045 res!1971149) b!4678560))

(assert (= (and b!4678560 res!1971148) b!4678561))

(declare-fun m!5573695 () Bool)

(assert (=> d!1487045 m!5573695))

(declare-fun m!5573697 () Bool)

(assert (=> d!1487045 m!5573697))

(declare-fun m!5573699 () Bool)

(assert (=> d!1487045 m!5573699))

(declare-fun m!5573701 () Bool)

(assert (=> d!1487045 m!5573701))

(declare-fun m!5573703 () Bool)

(assert (=> b!4678560 m!5573703))

(declare-fun m!5573705 () Bool)

(assert (=> b!4678561 m!5573705))

(assert (=> b!4678396 d!1487045))

(declare-fun d!1487049 () Bool)

(assert (=> d!1487049 (= (-!646 (+!2084 lt!1837927 (tuple2!53523 key!4653 (_2!30055 (h!58430 oldBucket!34)))) key!4653) lt!1837927)))

(declare-fun lt!1838226 () Unit!122107)

(declare-fun choose!32363 (ListMap!4817 K!13605 V!13851) Unit!122107)

(assert (=> d!1487049 (= lt!1838226 (choose!32363 lt!1837927 key!4653 (_2!30055 (h!58430 oldBucket!34))))))

(assert (=> d!1487049 (not (contains!15362 lt!1837927 key!4653))))

(assert (=> d!1487049 (= (addThenRemoveForNewKeyIsSame!37 lt!1837927 key!4653 (_2!30055 (h!58430 oldBucket!34))) lt!1838226)))

(declare-fun bs!1081155 () Bool)

(assert (= bs!1081155 d!1487049))

(assert (=> bs!1081155 m!5573247))

(assert (=> bs!1081155 m!5573247))

(assert (=> bs!1081155 m!5573249))

(declare-fun m!5573745 () Bool)

(assert (=> bs!1081155 m!5573745))

(assert (=> bs!1081155 m!5573297))

(assert (=> b!4678396 d!1487049))

(declare-fun d!1487057 () Bool)

(declare-fun res!1971160 () Bool)

(declare-fun e!2919041 () Bool)

(assert (=> d!1487057 (=> res!1971160 e!2919041)))

(assert (=> d!1487057 (= res!1971160 (not ((_ is Cons!52225) oldBucket!34)))))

(assert (=> d!1487057 (= (noDuplicateKeys!1782 oldBucket!34) e!2919041)))

(declare-fun b!4678572 () Bool)

(declare-fun e!2919042 () Bool)

(assert (=> b!4678572 (= e!2919041 e!2919042)))

(declare-fun res!1971161 () Bool)

(assert (=> b!4678572 (=> (not res!1971161) (not e!2919042))))

(assert (=> b!4678572 (= res!1971161 (not (containsKey!2921 (t!359497 oldBucket!34) (_1!30055 (h!58430 oldBucket!34)))))))

(declare-fun b!4678573 () Bool)

(assert (=> b!4678573 (= e!2919042 (noDuplicateKeys!1782 (t!359497 oldBucket!34)))))

(assert (= (and d!1487057 (not res!1971160)) b!4678572))

(assert (= (and b!4678572 res!1971161) b!4678573))

(declare-fun m!5573747 () Bool)

(assert (=> b!4678572 m!5573747))

(declare-fun m!5573749 () Bool)

(assert (=> b!4678573 m!5573749))

(assert (=> b!4678395 d!1487057))

(declare-fun d!1487059 () Bool)

(assert (=> d!1487059 (= (tail!8416 oldBucket!34) (t!359497 oldBucket!34))))

(assert (=> b!4678374 d!1487059))

(declare-fun d!1487061 () Bool)

(declare-fun res!1971162 () Bool)

(declare-fun e!2919043 () Bool)

(assert (=> d!1487061 (=> res!1971162 e!2919043)))

(assert (=> d!1487061 (= res!1971162 (not ((_ is Cons!52225) newBucket!218)))))

(assert (=> d!1487061 (= (noDuplicateKeys!1782 newBucket!218) e!2919043)))

(declare-fun b!4678574 () Bool)

(declare-fun e!2919044 () Bool)

(assert (=> b!4678574 (= e!2919043 e!2919044)))

(declare-fun res!1971163 () Bool)

(assert (=> b!4678574 (=> (not res!1971163) (not e!2919044))))

(assert (=> b!4678574 (= res!1971163 (not (containsKey!2921 (t!359497 newBucket!218) (_1!30055 (h!58430 newBucket!218)))))))

(declare-fun b!4678575 () Bool)

(assert (=> b!4678575 (= e!2919044 (noDuplicateKeys!1782 (t!359497 newBucket!218)))))

(assert (= (and d!1487061 (not res!1971162)) b!4678574))

(assert (= (and b!4678574 res!1971163) b!4678575))

(declare-fun m!5573751 () Bool)

(assert (=> b!4678574 m!5573751))

(declare-fun m!5573753 () Bool)

(assert (=> b!4678575 m!5573753))

(assert (=> b!4678384 d!1487061))

(declare-fun d!1487063 () Bool)

(declare-fun e!2919067 () Bool)

(assert (=> d!1487063 e!2919067))

(declare-fun res!1971179 () Bool)

(assert (=> d!1487063 (=> res!1971179 e!2919067)))

(declare-fun e!2919070 () Bool)

(assert (=> d!1487063 (= res!1971179 e!2919070)))

(declare-fun res!1971180 () Bool)

(assert (=> d!1487063 (=> (not res!1971180) (not e!2919070))))

(declare-fun lt!1838288 () Bool)

(assert (=> d!1487063 (= res!1971180 (not lt!1838288))))

(declare-fun lt!1838291 () Bool)

(assert (=> d!1487063 (= lt!1838288 lt!1838291)))

(declare-fun lt!1838295 () Unit!122107)

(declare-fun e!2919069 () Unit!122107)

(assert (=> d!1487063 (= lt!1838295 e!2919069)))

(declare-fun c!800407 () Bool)

(assert (=> d!1487063 (= c!800407 lt!1838291)))

(declare-fun containsKey!2923 (List!52349 K!13605) Bool)

(assert (=> d!1487063 (= lt!1838291 (containsKey!2923 (toList!5454 lt!1837927) key!4653))))

(assert (=> d!1487063 (= (contains!15362 lt!1837927 key!4653) lt!1838288)))

(declare-fun b!4678606 () Bool)

(declare-fun e!2919065 () Bool)

(assert (=> b!4678606 (= e!2919067 e!2919065)))

(declare-fun res!1971178 () Bool)

(assert (=> b!4678606 (=> (not res!1971178) (not e!2919065))))

(declare-fun isDefined!9220 (Option!11965) Bool)

(assert (=> b!4678606 (= res!1971178 (isDefined!9220 (getValueByKey!1713 (toList!5454 lt!1837927) key!4653)))))

(declare-fun b!4678607 () Bool)

(declare-fun contains!15366 (List!52352 K!13605) Bool)

(assert (=> b!4678607 (= e!2919070 (not (contains!15366 (keys!18601 lt!1837927) key!4653)))))

(declare-fun b!4678608 () Bool)

(declare-fun e!2919068 () List!52352)

(declare-fun getKeysList!810 (List!52349) List!52352)

(assert (=> b!4678608 (= e!2919068 (getKeysList!810 (toList!5454 lt!1837927)))))

(declare-fun b!4678609 () Bool)

(declare-fun e!2919066 () Unit!122107)

(assert (=> b!4678609 (= e!2919069 e!2919066)))

(declare-fun c!800406 () Bool)

(declare-fun call!326960 () Bool)

(assert (=> b!4678609 (= c!800406 call!326960)))

(declare-fun b!4678610 () Bool)

(declare-fun lt!1838293 () Unit!122107)

(assert (=> b!4678610 (= e!2919069 lt!1838293)))

(declare-fun lt!1838292 () Unit!122107)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1605 (List!52349 K!13605) Unit!122107)

(assert (=> b!4678610 (= lt!1838292 (lemmaContainsKeyImpliesGetValueByKeyDefined!1605 (toList!5454 lt!1837927) key!4653))))

(assert (=> b!4678610 (isDefined!9220 (getValueByKey!1713 (toList!5454 lt!1837927) key!4653))))

(declare-fun lt!1838290 () Unit!122107)

(assert (=> b!4678610 (= lt!1838290 lt!1838292)))

(declare-fun lemmaInListThenGetKeysListContains!805 (List!52349 K!13605) Unit!122107)

(assert (=> b!4678610 (= lt!1838293 (lemmaInListThenGetKeysListContains!805 (toList!5454 lt!1837927) key!4653))))

(assert (=> b!4678610 call!326960))

(declare-fun b!4678611 () Bool)

(assert (=> b!4678611 (= e!2919065 (contains!15366 (keys!18601 lt!1837927) key!4653))))

(declare-fun b!4678612 () Bool)

(declare-fun Unit!122159 () Unit!122107)

(assert (=> b!4678612 (= e!2919066 Unit!122159)))

(declare-fun bm!326955 () Bool)

(assert (=> bm!326955 (= call!326960 (contains!15366 e!2919068 key!4653))))

(declare-fun c!800405 () Bool)

(assert (=> bm!326955 (= c!800405 c!800407)))

(declare-fun b!4678613 () Bool)

(assert (=> b!4678613 (= e!2919068 (keys!18601 lt!1837927))))

(declare-fun b!4678614 () Bool)

(assert (=> b!4678614 false))

(declare-fun lt!1838289 () Unit!122107)

(declare-fun lt!1838294 () Unit!122107)

(assert (=> b!4678614 (= lt!1838289 lt!1838294)))

(assert (=> b!4678614 (containsKey!2923 (toList!5454 lt!1837927) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!809 (List!52349 K!13605) Unit!122107)

(assert (=> b!4678614 (= lt!1838294 (lemmaInGetKeysListThenContainsKey!809 (toList!5454 lt!1837927) key!4653))))

(declare-fun Unit!122160 () Unit!122107)

(assert (=> b!4678614 (= e!2919066 Unit!122160)))

(assert (= (and d!1487063 c!800407) b!4678610))

(assert (= (and d!1487063 (not c!800407)) b!4678609))

(assert (= (and b!4678609 c!800406) b!4678614))

(assert (= (and b!4678609 (not c!800406)) b!4678612))

(assert (= (or b!4678610 b!4678609) bm!326955))

(assert (= (and bm!326955 c!800405) b!4678608))

(assert (= (and bm!326955 (not c!800405)) b!4678613))

(assert (= (and d!1487063 res!1971180) b!4678607))

(assert (= (and d!1487063 (not res!1971179)) b!4678606))

(assert (= (and b!4678606 res!1971178) b!4678611))

(declare-fun m!5573793 () Bool)

(assert (=> bm!326955 m!5573793))

(declare-fun m!5573795 () Bool)

(assert (=> b!4678606 m!5573795))

(assert (=> b!4678606 m!5573795))

(declare-fun m!5573797 () Bool)

(assert (=> b!4678606 m!5573797))

(declare-fun m!5573799 () Bool)

(assert (=> b!4678611 m!5573799))

(assert (=> b!4678611 m!5573799))

(declare-fun m!5573801 () Bool)

(assert (=> b!4678611 m!5573801))

(assert (=> b!4678607 m!5573799))

(assert (=> b!4678607 m!5573799))

(assert (=> b!4678607 m!5573801))

(declare-fun m!5573803 () Bool)

(assert (=> d!1487063 m!5573803))

(declare-fun m!5573805 () Bool)

(assert (=> b!4678608 m!5573805))

(assert (=> b!4678614 m!5573803))

(declare-fun m!5573807 () Bool)

(assert (=> b!4678614 m!5573807))

(assert (=> b!4678613 m!5573799))

(declare-fun m!5573809 () Bool)

(assert (=> b!4678610 m!5573809))

(assert (=> b!4678610 m!5573795))

(assert (=> b!4678610 m!5573795))

(assert (=> b!4678610 m!5573797))

(declare-fun m!5573813 () Bool)

(assert (=> b!4678610 m!5573813))

(assert (=> b!4678383 d!1487063))

(declare-fun d!1487071 () Bool)

(declare-fun e!2919073 () Bool)

(assert (=> d!1487071 e!2919073))

(declare-fun res!1971182 () Bool)

(assert (=> d!1487071 (=> res!1971182 e!2919073)))

(declare-fun e!2919076 () Bool)

(assert (=> d!1487071 (= res!1971182 e!2919076)))

(declare-fun res!1971183 () Bool)

(assert (=> d!1487071 (=> (not res!1971183) (not e!2919076))))

(declare-fun lt!1838296 () Bool)

(assert (=> d!1487071 (= res!1971183 (not lt!1838296))))

(declare-fun lt!1838299 () Bool)

(assert (=> d!1487071 (= lt!1838296 lt!1838299)))

(declare-fun lt!1838303 () Unit!122107)

(declare-fun e!2919075 () Unit!122107)

(assert (=> d!1487071 (= lt!1838303 e!2919075)))

(declare-fun c!800410 () Bool)

(assert (=> d!1487071 (= c!800410 lt!1838299)))

(assert (=> d!1487071 (= lt!1838299 (containsKey!2923 (toList!5454 lt!1837936) key!4653))))

(assert (=> d!1487071 (= (contains!15362 lt!1837936 key!4653) lt!1838296)))

(declare-fun b!4678615 () Bool)

(declare-fun e!2919071 () Bool)

(assert (=> b!4678615 (= e!2919073 e!2919071)))

(declare-fun res!1971181 () Bool)

(assert (=> b!4678615 (=> (not res!1971181) (not e!2919071))))

(assert (=> b!4678615 (= res!1971181 (isDefined!9220 (getValueByKey!1713 (toList!5454 lt!1837936) key!4653)))))

(declare-fun b!4678616 () Bool)

(assert (=> b!4678616 (= e!2919076 (not (contains!15366 (keys!18601 lt!1837936) key!4653)))))

(declare-fun b!4678617 () Bool)

(declare-fun e!2919074 () List!52352)

(assert (=> b!4678617 (= e!2919074 (getKeysList!810 (toList!5454 lt!1837936)))))

(declare-fun b!4678618 () Bool)

(declare-fun e!2919072 () Unit!122107)

(assert (=> b!4678618 (= e!2919075 e!2919072)))

(declare-fun c!800409 () Bool)

(declare-fun call!326961 () Bool)

(assert (=> b!4678618 (= c!800409 call!326961)))

(declare-fun b!4678619 () Bool)

(declare-fun lt!1838301 () Unit!122107)

(assert (=> b!4678619 (= e!2919075 lt!1838301)))

(declare-fun lt!1838300 () Unit!122107)

(assert (=> b!4678619 (= lt!1838300 (lemmaContainsKeyImpliesGetValueByKeyDefined!1605 (toList!5454 lt!1837936) key!4653))))

(assert (=> b!4678619 (isDefined!9220 (getValueByKey!1713 (toList!5454 lt!1837936) key!4653))))

(declare-fun lt!1838298 () Unit!122107)

(assert (=> b!4678619 (= lt!1838298 lt!1838300)))

(assert (=> b!4678619 (= lt!1838301 (lemmaInListThenGetKeysListContains!805 (toList!5454 lt!1837936) key!4653))))

(assert (=> b!4678619 call!326961))

(declare-fun b!4678620 () Bool)

(assert (=> b!4678620 (= e!2919071 (contains!15366 (keys!18601 lt!1837936) key!4653))))

(declare-fun b!4678621 () Bool)

(declare-fun Unit!122161 () Unit!122107)

(assert (=> b!4678621 (= e!2919072 Unit!122161)))

(declare-fun bm!326956 () Bool)

(assert (=> bm!326956 (= call!326961 (contains!15366 e!2919074 key!4653))))

(declare-fun c!800408 () Bool)

(assert (=> bm!326956 (= c!800408 c!800410)))

(declare-fun b!4678622 () Bool)

(assert (=> b!4678622 (= e!2919074 (keys!18601 lt!1837936))))

(declare-fun b!4678623 () Bool)

(assert (=> b!4678623 false))

(declare-fun lt!1838297 () Unit!122107)

(declare-fun lt!1838302 () Unit!122107)

(assert (=> b!4678623 (= lt!1838297 lt!1838302)))

(assert (=> b!4678623 (containsKey!2923 (toList!5454 lt!1837936) key!4653)))

(assert (=> b!4678623 (= lt!1838302 (lemmaInGetKeysListThenContainsKey!809 (toList!5454 lt!1837936) key!4653))))

(declare-fun Unit!122162 () Unit!122107)

(assert (=> b!4678623 (= e!2919072 Unit!122162)))

(assert (= (and d!1487071 c!800410) b!4678619))

(assert (= (and d!1487071 (not c!800410)) b!4678618))

(assert (= (and b!4678618 c!800409) b!4678623))

(assert (= (and b!4678618 (not c!800409)) b!4678621))

(assert (= (or b!4678619 b!4678618) bm!326956))

(assert (= (and bm!326956 c!800408) b!4678617))

(assert (= (and bm!326956 (not c!800408)) b!4678622))

(assert (= (and d!1487071 res!1971183) b!4678616))

(assert (= (and d!1487071 (not res!1971182)) b!4678615))

(assert (= (and b!4678615 res!1971181) b!4678620))

(declare-fun m!5573845 () Bool)

(assert (=> bm!326956 m!5573845))

(declare-fun m!5573847 () Bool)

(assert (=> b!4678615 m!5573847))

(assert (=> b!4678615 m!5573847))

(declare-fun m!5573849 () Bool)

(assert (=> b!4678615 m!5573849))

(declare-fun m!5573851 () Bool)

(assert (=> b!4678620 m!5573851))

(assert (=> b!4678620 m!5573851))

(declare-fun m!5573853 () Bool)

(assert (=> b!4678620 m!5573853))

(assert (=> b!4678616 m!5573851))

(assert (=> b!4678616 m!5573851))

(assert (=> b!4678616 m!5573853))

(declare-fun m!5573855 () Bool)

(assert (=> d!1487071 m!5573855))

(declare-fun m!5573857 () Bool)

(assert (=> b!4678617 m!5573857))

(assert (=> b!4678623 m!5573855))

(declare-fun m!5573859 () Bool)

(assert (=> b!4678623 m!5573859))

(assert (=> b!4678622 m!5573851))

(declare-fun m!5573861 () Bool)

(assert (=> b!4678619 m!5573861))

(assert (=> b!4678619 m!5573847))

(assert (=> b!4678619 m!5573847))

(assert (=> b!4678619 m!5573849))

(declare-fun m!5573863 () Bool)

(assert (=> b!4678619 m!5573863))

(assert (=> b!4678383 d!1487071))

(declare-fun bs!1081240 () Bool)

(declare-fun d!1487073 () Bool)

(assert (= bs!1081240 (and d!1487073 start!472264)))

(declare-fun lambda!204255 () Int)

(assert (=> bs!1081240 (= lambda!204255 lambda!204151)))

(assert (=> d!1487073 (not (contains!15362 (extractMap!1808 (toList!5453 (ListLongMap!3984 lt!1837930))) key!4653))))

(declare-fun lt!1838306 () Unit!122107)

(declare-fun choose!32365 (ListLongMap!3983 K!13605 Hashable!6151) Unit!122107)

(assert (=> d!1487073 (= lt!1838306 (choose!32365 (ListLongMap!3984 lt!1837930) key!4653 hashF!1323))))

(assert (=> d!1487073 (forall!11209 (toList!5453 (ListLongMap!3984 lt!1837930)) lambda!204255)))

(assert (=> d!1487073 (= (lemmaNotInItsHashBucketThenNotInMap!382 (ListLongMap!3984 lt!1837930) key!4653 hashF!1323) lt!1838306)))

(declare-fun bs!1081241 () Bool)

(assert (= bs!1081241 d!1487073))

(declare-fun m!5573867 () Bool)

(assert (=> bs!1081241 m!5573867))

(assert (=> bs!1081241 m!5573867))

(declare-fun m!5573869 () Bool)

(assert (=> bs!1081241 m!5573869))

(declare-fun m!5573871 () Bool)

(assert (=> bs!1081241 m!5573871))

(declare-fun m!5573873 () Bool)

(assert (=> bs!1081241 m!5573873))

(assert (=> b!4678383 d!1487073))

(declare-fun bs!1081242 () Bool)

(declare-fun d!1487079 () Bool)

(assert (= bs!1081242 (and d!1487079 start!472264)))

(declare-fun lambda!204258 () Int)

(assert (=> bs!1081242 (not (= lambda!204258 lambda!204151))))

(declare-fun bs!1081243 () Bool)

(assert (= bs!1081243 (and d!1487079 d!1487073)))

(assert (=> bs!1081243 (not (= lambda!204258 lambda!204255))))

(assert (=> d!1487079 true))

(assert (=> d!1487079 (= (allKeysSameHashInMap!1696 lm!2023 hashF!1323) (forall!11209 (toList!5453 lm!2023) lambda!204258))))

(declare-fun bs!1081244 () Bool)

(assert (= bs!1081244 d!1487079))

(declare-fun m!5573875 () Bool)

(assert (=> bs!1081244 m!5573875))

(assert (=> b!4678394 d!1487079))

(declare-fun bs!1081245 () Bool)

(declare-fun b!4678640 () Bool)

(assert (= bs!1081245 (and b!4678640 b!4678537)))

(declare-fun lambda!204259 () Int)

(assert (=> bs!1081245 (= lambda!204259 lambda!204233)))

(declare-fun bs!1081246 () Bool)

(assert (= bs!1081246 (and b!4678640 b!4678544)))

(assert (=> bs!1081246 (= lambda!204259 lambda!204238)))

(declare-fun bs!1081247 () Bool)

(assert (= bs!1081247 (and b!4678640 b!4678543)))

(assert (=> bs!1081247 (= lambda!204259 lambda!204237)))

(declare-fun bs!1081248 () Bool)

(assert (= bs!1081248 (and b!4678640 b!4678536)))

(assert (=> bs!1081248 (= lambda!204259 lambda!204231)))

(assert (=> bs!1081246 (= (= lt!1837926 lt!1838167) (= lambda!204259 lambda!204239))))

(declare-fun bs!1081249 () Bool)

(assert (= bs!1081249 (and b!4678640 d!1486977)))

(assert (=> bs!1081249 (= (= lt!1837926 lt!1838141) (= lambda!204259 lambda!204236))))

(declare-fun bs!1081250 () Bool)

(assert (= bs!1081250 (and b!4678640 d!1487029)))

(assert (=> bs!1081250 (= (= lt!1837926 lt!1838162) (= lambda!204259 lambda!204240))))

(assert (=> bs!1081245 (= (= lt!1837926 lt!1838146) (= lambda!204259 lambda!204234))))

(assert (=> b!4678640 true))

(declare-fun bs!1081251 () Bool)

(declare-fun b!4678641 () Bool)

(assert (= bs!1081251 (and b!4678641 b!4678640)))

(declare-fun lambda!204260 () Int)

(assert (=> bs!1081251 (= lambda!204260 lambda!204259)))

(declare-fun bs!1081252 () Bool)

(assert (= bs!1081252 (and b!4678641 b!4678537)))

(assert (=> bs!1081252 (= lambda!204260 lambda!204233)))

(declare-fun bs!1081253 () Bool)

(assert (= bs!1081253 (and b!4678641 b!4678544)))

(assert (=> bs!1081253 (= lambda!204260 lambda!204238)))

(declare-fun bs!1081254 () Bool)

(assert (= bs!1081254 (and b!4678641 b!4678543)))

(assert (=> bs!1081254 (= lambda!204260 lambda!204237)))

(declare-fun bs!1081255 () Bool)

(assert (= bs!1081255 (and b!4678641 b!4678536)))

(assert (=> bs!1081255 (= lambda!204260 lambda!204231)))

(assert (=> bs!1081253 (= (= lt!1837926 lt!1838167) (= lambda!204260 lambda!204239))))

(declare-fun bs!1081256 () Bool)

(assert (= bs!1081256 (and b!4678641 d!1486977)))

(assert (=> bs!1081256 (= (= lt!1837926 lt!1838141) (= lambda!204260 lambda!204236))))

(declare-fun bs!1081257 () Bool)

(assert (= bs!1081257 (and b!4678641 d!1487029)))

(assert (=> bs!1081257 (= (= lt!1837926 lt!1838162) (= lambda!204260 lambda!204240))))

(assert (=> bs!1081252 (= (= lt!1837926 lt!1838146) (= lambda!204260 lambda!204234))))

(assert (=> b!4678641 true))

(declare-fun lambda!204261 () Int)

(declare-fun lt!1838323 () ListMap!4817)

(assert (=> bs!1081252 (= (= lt!1838323 lt!1837926) (= lambda!204261 lambda!204233))))

(assert (=> bs!1081253 (= (= lt!1838323 lt!1837926) (= lambda!204261 lambda!204238))))

(assert (=> bs!1081254 (= (= lt!1838323 lt!1837926) (= lambda!204261 lambda!204237))))

(assert (=> bs!1081255 (= (= lt!1838323 lt!1837926) (= lambda!204261 lambda!204231))))

(assert (=> bs!1081253 (= (= lt!1838323 lt!1838167) (= lambda!204261 lambda!204239))))

(assert (=> bs!1081256 (= (= lt!1838323 lt!1838141) (= lambda!204261 lambda!204236))))

(assert (=> bs!1081257 (= (= lt!1838323 lt!1838162) (= lambda!204261 lambda!204240))))

(assert (=> bs!1081252 (= (= lt!1838323 lt!1838146) (= lambda!204261 lambda!204234))))

(assert (=> b!4678641 (= (= lt!1838323 lt!1837926) (= lambda!204261 lambda!204260))))

(assert (=> bs!1081251 (= (= lt!1838323 lt!1837926) (= lambda!204261 lambda!204259))))

(assert (=> b!4678641 true))

(declare-fun bs!1081258 () Bool)

(declare-fun d!1487081 () Bool)

(assert (= bs!1081258 (and d!1487081 b!4678537)))

(declare-fun lambda!204262 () Int)

(declare-fun lt!1838318 () ListMap!4817)

(assert (=> bs!1081258 (= (= lt!1838318 lt!1837926) (= lambda!204262 lambda!204233))))

(declare-fun bs!1081259 () Bool)

(assert (= bs!1081259 (and d!1487081 b!4678544)))

(assert (=> bs!1081259 (= (= lt!1838318 lt!1837926) (= lambda!204262 lambda!204238))))

(declare-fun bs!1081260 () Bool)

(assert (= bs!1081260 (and d!1487081 b!4678543)))

(assert (=> bs!1081260 (= (= lt!1838318 lt!1837926) (= lambda!204262 lambda!204237))))

(declare-fun bs!1081261 () Bool)

(assert (= bs!1081261 (and d!1487081 b!4678536)))

(assert (=> bs!1081261 (= (= lt!1838318 lt!1837926) (= lambda!204262 lambda!204231))))

(declare-fun bs!1081262 () Bool)

(assert (= bs!1081262 (and d!1487081 d!1486977)))

(assert (=> bs!1081262 (= (= lt!1838318 lt!1838141) (= lambda!204262 lambda!204236))))

(declare-fun bs!1081263 () Bool)

(assert (= bs!1081263 (and d!1487081 d!1487029)))

(assert (=> bs!1081263 (= (= lt!1838318 lt!1838162) (= lambda!204262 lambda!204240))))

(assert (=> bs!1081258 (= (= lt!1838318 lt!1838146) (= lambda!204262 lambda!204234))))

(declare-fun bs!1081264 () Bool)

(assert (= bs!1081264 (and d!1487081 b!4678641)))

(assert (=> bs!1081264 (= (= lt!1838318 lt!1837926) (= lambda!204262 lambda!204260))))

(declare-fun bs!1081265 () Bool)

(assert (= bs!1081265 (and d!1487081 b!4678640)))

(assert (=> bs!1081265 (= (= lt!1838318 lt!1837926) (= lambda!204262 lambda!204259))))

(assert (=> bs!1081264 (= (= lt!1838318 lt!1838323) (= lambda!204262 lambda!204261))))

(assert (=> bs!1081259 (= (= lt!1838318 lt!1838167) (= lambda!204262 lambda!204239))))

(assert (=> d!1487081 true))

(declare-fun b!4678637 () Bool)

(declare-fun e!2919085 () Bool)

(assert (=> b!4678637 (= e!2919085 (invariantList!1370 (toList!5454 lt!1838318)))))

(declare-fun b!4678638 () Bool)

(declare-fun e!2919086 () Bool)

(assert (=> b!4678638 (= e!2919086 (forall!11211 (toList!5454 lt!1837926) lambda!204261))))

(assert (=> d!1487081 e!2919085))

(declare-fun res!1971184 () Bool)

(assert (=> d!1487081 (=> (not res!1971184) (not e!2919085))))

(assert (=> d!1487081 (= res!1971184 (forall!11211 (_2!30056 (h!58431 (toList!5453 lm!2023))) lambda!204262))))

(declare-fun e!2919084 () ListMap!4817)

(assert (=> d!1487081 (= lt!1838318 e!2919084)))

(declare-fun c!800411 () Bool)

(assert (=> d!1487081 (= c!800411 ((_ is Nil!52225) (_2!30056 (h!58431 (toList!5453 lm!2023)))))))

(assert (=> d!1487081 (noDuplicateKeys!1782 (_2!30056 (h!58431 (toList!5453 lm!2023))))))

(assert (=> d!1487081 (= (addToMapMapFromBucket!1214 (_2!30056 (h!58431 (toList!5453 lm!2023))) lt!1837926) lt!1838318)))

(declare-fun b!4678639 () Bool)

(declare-fun res!1971186 () Bool)

(assert (=> b!4678639 (=> (not res!1971186) (not e!2919085))))

(assert (=> b!4678639 (= res!1971186 (forall!11211 (toList!5454 lt!1837926) lambda!204262))))

(declare-fun bm!326957 () Bool)

(declare-fun call!326963 () Unit!122107)

(assert (=> bm!326957 (= call!326963 (lemmaContainsAllItsOwnKeys!658 lt!1837926))))

(assert (=> b!4678640 (= e!2919084 lt!1837926)))

(declare-fun lt!1838320 () Unit!122107)

(assert (=> b!4678640 (= lt!1838320 call!326963)))

(declare-fun call!326962 () Bool)

(assert (=> b!4678640 call!326962))

(declare-fun lt!1838326 () Unit!122107)

(assert (=> b!4678640 (= lt!1838326 lt!1838320)))

(declare-fun call!326964 () Bool)

(assert (=> b!4678640 call!326964))

(declare-fun lt!1838313 () Unit!122107)

(declare-fun Unit!122172 () Unit!122107)

(assert (=> b!4678640 (= lt!1838313 Unit!122172)))

(assert (=> b!4678641 (= e!2919084 lt!1838323)))

(declare-fun lt!1838311 () ListMap!4817)

(assert (=> b!4678641 (= lt!1838311 (+!2084 lt!1837926 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023))))))))

(assert (=> b!4678641 (= lt!1838323 (addToMapMapFromBucket!1214 (t!359497 (_2!30056 (h!58431 (toList!5453 lm!2023)))) (+!2084 lt!1837926 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023)))))))))

(declare-fun lt!1838322 () Unit!122107)

(assert (=> b!4678641 (= lt!1838322 call!326963)))

(assert (=> b!4678641 (forall!11211 (toList!5454 lt!1837926) lambda!204260)))

(declare-fun lt!1838324 () Unit!122107)

(assert (=> b!4678641 (= lt!1838324 lt!1838322)))

(assert (=> b!4678641 (forall!11211 (toList!5454 lt!1838311) lambda!204261)))

(declare-fun lt!1838310 () Unit!122107)

(declare-fun Unit!122175 () Unit!122107)

(assert (=> b!4678641 (= lt!1838310 Unit!122175)))

(assert (=> b!4678641 (forall!11211 (t!359497 (_2!30056 (h!58431 (toList!5453 lm!2023)))) lambda!204261)))

(declare-fun lt!1838319 () Unit!122107)

(declare-fun Unit!122176 () Unit!122107)

(assert (=> b!4678641 (= lt!1838319 Unit!122176)))

(declare-fun lt!1838309 () Unit!122107)

(declare-fun Unit!122177 () Unit!122107)

(assert (=> b!4678641 (= lt!1838309 Unit!122177)))

(declare-fun lt!1838317 () Unit!122107)

(assert (=> b!4678641 (= lt!1838317 (forallContained!3342 (toList!5454 lt!1838311) lambda!204261 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023))))))))

(assert (=> b!4678641 (contains!15362 lt!1838311 (_1!30055 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023))))))))

(declare-fun lt!1838314 () Unit!122107)

(declare-fun Unit!122178 () Unit!122107)

(assert (=> b!4678641 (= lt!1838314 Unit!122178)))

(assert (=> b!4678641 (contains!15362 lt!1838323 (_1!30055 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023))))))))

(declare-fun lt!1838321 () Unit!122107)

(declare-fun Unit!122179 () Unit!122107)

(assert (=> b!4678641 (= lt!1838321 Unit!122179)))

(assert (=> b!4678641 call!326964))

(declare-fun lt!1838307 () Unit!122107)

(declare-fun Unit!122180 () Unit!122107)

(assert (=> b!4678641 (= lt!1838307 Unit!122180)))

(assert (=> b!4678641 (forall!11211 (toList!5454 lt!1838311) lambda!204261)))

(declare-fun lt!1838316 () Unit!122107)

(declare-fun Unit!122181 () Unit!122107)

(assert (=> b!4678641 (= lt!1838316 Unit!122181)))

(declare-fun lt!1838308 () Unit!122107)

(declare-fun Unit!122182 () Unit!122107)

(assert (=> b!4678641 (= lt!1838308 Unit!122182)))

(declare-fun lt!1838312 () Unit!122107)

(assert (=> b!4678641 (= lt!1838312 (addForallContainsKeyThenBeforeAdding!657 lt!1837926 lt!1838323 (_1!30055 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023))))) (_2!30055 (h!58430 (_2!30056 (h!58431 (toList!5453 lm!2023)))))))))

(assert (=> b!4678641 call!326962))

(declare-fun lt!1838325 () Unit!122107)

(assert (=> b!4678641 (= lt!1838325 lt!1838312)))

(assert (=> b!4678641 (forall!11211 (toList!5454 lt!1837926) lambda!204261)))

(declare-fun lt!1838315 () Unit!122107)

(declare-fun Unit!122183 () Unit!122107)

(assert (=> b!4678641 (= lt!1838315 Unit!122183)))

(declare-fun res!1971185 () Bool)

(assert (=> b!4678641 (= res!1971185 (forall!11211 (_2!30056 (h!58431 (toList!5453 lm!2023))) lambda!204261))))

(assert (=> b!4678641 (=> (not res!1971185) (not e!2919086))))

(assert (=> b!4678641 e!2919086))

(declare-fun lt!1838327 () Unit!122107)

(declare-fun Unit!122184 () Unit!122107)

(assert (=> b!4678641 (= lt!1838327 Unit!122184)))

(declare-fun bm!326958 () Bool)

(assert (=> bm!326958 (= call!326964 (forall!11211 (ite c!800411 (toList!5454 lt!1837926) (_2!30056 (h!58431 (toList!5453 lm!2023)))) (ite c!800411 lambda!204259 lambda!204261)))))

(declare-fun bm!326959 () Bool)

(assert (=> bm!326959 (= call!326962 (forall!11211 (toList!5454 lt!1837926) (ite c!800411 lambda!204259 lambda!204261)))))

(assert (= (and d!1487081 c!800411) b!4678640))

(assert (= (and d!1487081 (not c!800411)) b!4678641))

(assert (= (and b!4678641 res!1971185) b!4678638))

(assert (= (or b!4678640 b!4678641) bm!326957))

(assert (= (or b!4678640 b!4678641) bm!326959))

(assert (= (or b!4678640 b!4678641) bm!326958))

(assert (= (and d!1487081 res!1971184) b!4678639))

(assert (= (and b!4678639 res!1971186) b!4678637))

(declare-fun m!5573877 () Bool)

(assert (=> b!4678639 m!5573877))

(declare-fun m!5573879 () Bool)

(assert (=> bm!326958 m!5573879))

(declare-fun m!5573881 () Bool)

(assert (=> b!4678641 m!5573881))

(declare-fun m!5573883 () Bool)

(assert (=> b!4678641 m!5573883))

(declare-fun m!5573885 () Bool)

(assert (=> b!4678641 m!5573885))

(declare-fun m!5573887 () Bool)

(assert (=> b!4678641 m!5573887))

(declare-fun m!5573889 () Bool)

(assert (=> b!4678641 m!5573889))

(declare-fun m!5573891 () Bool)

(assert (=> b!4678641 m!5573891))

(declare-fun m!5573893 () Bool)

(assert (=> b!4678641 m!5573893))

(declare-fun m!5573895 () Bool)

(assert (=> b!4678641 m!5573895))

(assert (=> b!4678641 m!5573891))

(declare-fun m!5573897 () Bool)

(assert (=> b!4678641 m!5573897))

(declare-fun m!5573899 () Bool)

(assert (=> b!4678641 m!5573899))

(assert (=> b!4678641 m!5573889))

(declare-fun m!5573901 () Bool)

(assert (=> b!4678641 m!5573901))

(assert (=> b!4678638 m!5573901))

(declare-fun m!5573903 () Bool)

(assert (=> bm!326959 m!5573903))

(assert (=> bm!326957 m!5573561))

(declare-fun m!5573905 () Bool)

(assert (=> b!4678637 m!5573905))

(declare-fun m!5573907 () Bool)

(assert (=> d!1487081 m!5573907))

(declare-fun m!5573909 () Bool)

(assert (=> d!1487081 m!5573909))

(assert (=> b!4678388 d!1487081))

(declare-fun bs!1081266 () Bool)

(declare-fun d!1487083 () Bool)

(assert (= bs!1081266 (and d!1487083 start!472264)))

(declare-fun lambda!204265 () Int)

(assert (=> bs!1081266 (= lambda!204265 lambda!204151)))

(declare-fun bs!1081267 () Bool)

(assert (= bs!1081267 (and d!1487083 d!1487073)))

(assert (=> bs!1081267 (= lambda!204265 lambda!204255)))

(declare-fun bs!1081268 () Bool)

(assert (= bs!1081268 (and d!1487083 d!1487079)))

(assert (=> bs!1081268 (not (= lambda!204265 lambda!204258))))

(declare-fun lt!1838330 () ListMap!4817)

(assert (=> d!1487083 (invariantList!1370 (toList!5454 lt!1838330))))

(declare-fun e!2919089 () ListMap!4817)

(assert (=> d!1487083 (= lt!1838330 e!2919089)))

(declare-fun c!800414 () Bool)

(assert (=> d!1487083 (= c!800414 ((_ is Cons!52226) (t!359498 (toList!5453 lm!2023))))))

(assert (=> d!1487083 (forall!11209 (t!359498 (toList!5453 lm!2023)) lambda!204265)))

(assert (=> d!1487083 (= (extractMap!1808 (t!359498 (toList!5453 lm!2023))) lt!1838330)))

(declare-fun b!4678646 () Bool)

(assert (=> b!4678646 (= e!2919089 (addToMapMapFromBucket!1214 (_2!30056 (h!58431 (t!359498 (toList!5453 lm!2023)))) (extractMap!1808 (t!359498 (t!359498 (toList!5453 lm!2023))))))))

(declare-fun b!4678647 () Bool)

(assert (=> b!4678647 (= e!2919089 (ListMap!4818 Nil!52225))))

(assert (= (and d!1487083 c!800414) b!4678646))

(assert (= (and d!1487083 (not c!800414)) b!4678647))

(declare-fun m!5573911 () Bool)

(assert (=> d!1487083 m!5573911))

(declare-fun m!5573913 () Bool)

(assert (=> d!1487083 m!5573913))

(declare-fun m!5573915 () Bool)

(assert (=> b!4678646 m!5573915))

(assert (=> b!4678646 m!5573915))

(declare-fun m!5573917 () Bool)

(assert (=> b!4678646 m!5573917))

(assert (=> b!4678388 d!1487083))

(declare-fun d!1487085 () Bool)

(declare-fun tail!8419 (List!52350) List!52350)

(assert (=> d!1487085 (= (tail!8417 lm!2023) (ListLongMap!3984 (tail!8419 (toList!5453 lm!2023))))))

(declare-fun bs!1081269 () Bool)

(assert (= bs!1081269 d!1487085))

(declare-fun m!5573919 () Bool)

(assert (=> bs!1081269 m!5573919))

(assert (=> b!4678388 d!1487085))

(declare-fun d!1487087 () Bool)

(declare-fun content!9098 (List!52349) (InoxSet tuple2!53522))

(assert (=> d!1487087 (= (eq!971 lt!1837934 (extractMap!1808 lt!1837933)) (= (content!9098 (toList!5454 lt!1837934)) (content!9098 (toList!5454 (extractMap!1808 lt!1837933)))))))

(declare-fun bs!1081270 () Bool)

(assert (= bs!1081270 d!1487087))

(declare-fun m!5573921 () Bool)

(assert (=> bs!1081270 m!5573921))

(declare-fun m!5573923 () Bool)

(assert (=> bs!1081270 m!5573923))

(assert (=> b!4678397 d!1487087))

(declare-fun bs!1081271 () Bool)

(declare-fun d!1487089 () Bool)

(assert (= bs!1081271 (and d!1487089 start!472264)))

(declare-fun lambda!204266 () Int)

(assert (=> bs!1081271 (= lambda!204266 lambda!204151)))

(declare-fun bs!1081272 () Bool)

(assert (= bs!1081272 (and d!1487089 d!1487073)))

(assert (=> bs!1081272 (= lambda!204266 lambda!204255)))

(declare-fun bs!1081273 () Bool)

(assert (= bs!1081273 (and d!1487089 d!1487079)))

(assert (=> bs!1081273 (not (= lambda!204266 lambda!204258))))

(declare-fun bs!1081274 () Bool)

(assert (= bs!1081274 (and d!1487089 d!1487083)))

(assert (=> bs!1081274 (= lambda!204266 lambda!204265)))

(declare-fun lt!1838331 () ListMap!4817)

(assert (=> d!1487089 (invariantList!1370 (toList!5454 lt!1838331))))

(declare-fun e!2919090 () ListMap!4817)

(assert (=> d!1487089 (= lt!1838331 e!2919090)))

(declare-fun c!800415 () Bool)

(assert (=> d!1487089 (= c!800415 ((_ is Cons!52226) lt!1837933))))

(assert (=> d!1487089 (forall!11209 lt!1837933 lambda!204266)))

(assert (=> d!1487089 (= (extractMap!1808 lt!1837933) lt!1838331)))

(declare-fun b!4678648 () Bool)

(assert (=> b!4678648 (= e!2919090 (addToMapMapFromBucket!1214 (_2!30056 (h!58431 lt!1837933)) (extractMap!1808 (t!359498 lt!1837933))))))

(declare-fun b!4678649 () Bool)

(assert (=> b!4678649 (= e!2919090 (ListMap!4818 Nil!52225))))

(assert (= (and d!1487089 c!800415) b!4678648))

(assert (= (and d!1487089 (not c!800415)) b!4678649))

(declare-fun m!5573925 () Bool)

(assert (=> d!1487089 m!5573925))

(declare-fun m!5573927 () Bool)

(assert (=> d!1487089 m!5573927))

(declare-fun m!5573929 () Bool)

(assert (=> b!4678648 m!5573929))

(assert (=> b!4678648 m!5573929))

(declare-fun m!5573931 () Bool)

(assert (=> b!4678648 m!5573931))

(assert (=> b!4678397 d!1487089))

(declare-fun d!1487091 () Bool)

(declare-fun hash!3956 (Hashable!6151 K!13605) (_ BitVec 64))

(assert (=> d!1487091 (= (hash!3954 hashF!1323 key!4653) (hash!3956 hashF!1323 key!4653))))

(declare-fun bs!1081275 () Bool)

(assert (= bs!1081275 d!1487091))

(declare-fun m!5573933 () Bool)

(assert (=> bs!1081275 m!5573933))

(assert (=> b!4678376 d!1487091))

(declare-fun d!1487093 () Bool)

(declare-fun res!1971191 () Bool)

(declare-fun e!2919095 () Bool)

(assert (=> d!1487093 (=> res!1971191 e!2919095)))

(assert (=> d!1487093 (= res!1971191 (and ((_ is Cons!52225) lt!1837938) (= (_1!30055 (h!58430 lt!1837938)) key!4653)))))

(assert (=> d!1487093 (= (containsKey!2921 lt!1837938 key!4653) e!2919095)))

(declare-fun b!4678654 () Bool)

(declare-fun e!2919096 () Bool)

(assert (=> b!4678654 (= e!2919095 e!2919096)))

(declare-fun res!1971192 () Bool)

(assert (=> b!4678654 (=> (not res!1971192) (not e!2919096))))

(assert (=> b!4678654 (= res!1971192 ((_ is Cons!52225) lt!1837938))))

(declare-fun b!4678655 () Bool)

(assert (=> b!4678655 (= e!2919096 (containsKey!2921 (t!359497 lt!1837938) key!4653))))

(assert (= (and d!1487093 (not res!1971191)) b!4678654))

(assert (= (and b!4678654 res!1971192) b!4678655))

(declare-fun m!5573935 () Bool)

(assert (=> b!4678655 m!5573935))

(assert (=> b!4678375 d!1487093))

(declare-fun b!4678667 () Bool)

(declare-fun e!2919101 () List!52349)

(assert (=> b!4678667 (= e!2919101 Nil!52225)))

(declare-fun d!1487095 () Bool)

(declare-fun lt!1838334 () List!52349)

(assert (=> d!1487095 (not (containsKey!2921 lt!1838334 key!4653))))

(declare-fun e!2919102 () List!52349)

(assert (=> d!1487095 (= lt!1838334 e!2919102)))

(declare-fun c!800420 () Bool)

(assert (=> d!1487095 (= c!800420 (and ((_ is Cons!52225) oldBucket!34) (= (_1!30055 (h!58430 oldBucket!34)) key!4653)))))

(assert (=> d!1487095 (noDuplicateKeys!1782 oldBucket!34)))

(assert (=> d!1487095 (= (removePairForKey!1377 oldBucket!34 key!4653) lt!1838334)))

(declare-fun b!4678666 () Bool)

(assert (=> b!4678666 (= e!2919101 (Cons!52225 (h!58430 oldBucket!34) (removePairForKey!1377 (t!359497 oldBucket!34) key!4653)))))

(declare-fun b!4678664 () Bool)

(assert (=> b!4678664 (= e!2919102 (t!359497 oldBucket!34))))

(declare-fun b!4678665 () Bool)

(assert (=> b!4678665 (= e!2919102 e!2919101)))

(declare-fun c!800421 () Bool)

(assert (=> b!4678665 (= c!800421 ((_ is Cons!52225) oldBucket!34))))

(assert (= (and d!1487095 c!800420) b!4678664))

(assert (= (and d!1487095 (not c!800420)) b!4678665))

(assert (= (and b!4678665 c!800421) b!4678666))

(assert (= (and b!4678665 (not c!800421)) b!4678667))

(declare-fun m!5573937 () Bool)

(assert (=> d!1487095 m!5573937))

(assert (=> d!1487095 m!5573273))

(declare-fun m!5573939 () Bool)

(assert (=> b!4678666 m!5573939))

(assert (=> b!4678386 d!1487095))

(declare-fun d!1487097 () Bool)

(declare-fun res!1971197 () Bool)

(declare-fun e!2919107 () Bool)

(assert (=> d!1487097 (=> res!1971197 e!2919107)))

(assert (=> d!1487097 (= res!1971197 ((_ is Nil!52226) (toList!5453 lm!2023)))))

(assert (=> d!1487097 (= (forall!11209 (toList!5453 lm!2023) lambda!204151) e!2919107)))

(declare-fun b!4678672 () Bool)

(declare-fun e!2919108 () Bool)

(assert (=> b!4678672 (= e!2919107 e!2919108)))

(declare-fun res!1971198 () Bool)

(assert (=> b!4678672 (=> (not res!1971198) (not e!2919108))))

(declare-fun dynLambda!21673 (Int tuple2!53524) Bool)

(assert (=> b!4678672 (= res!1971198 (dynLambda!21673 lambda!204151 (h!58431 (toList!5453 lm!2023))))))

(declare-fun b!4678673 () Bool)

(assert (=> b!4678673 (= e!2919108 (forall!11209 (t!359498 (toList!5453 lm!2023)) lambda!204151))))

(assert (= (and d!1487097 (not res!1971197)) b!4678672))

(assert (= (and b!4678672 res!1971198) b!4678673))

(declare-fun b_lambda!176621 () Bool)

(assert (=> (not b_lambda!176621) (not b!4678672)))

(declare-fun m!5573941 () Bool)

(assert (=> b!4678672 m!5573941))

(declare-fun m!5573943 () Bool)

(assert (=> b!4678673 m!5573943))

(assert (=> start!472264 d!1487097))

(declare-fun d!1487099 () Bool)

(declare-fun isStrictlySorted!610 (List!52350) Bool)

(assert (=> d!1487099 (= (inv!67479 lm!2023) (isStrictlySorted!610 (toList!5453 lm!2023)))))

(declare-fun bs!1081276 () Bool)

(assert (= bs!1081276 d!1487099))

(declare-fun m!5573945 () Bool)

(assert (=> bs!1081276 m!5573945))

(assert (=> start!472264 d!1487099))

(declare-fun d!1487101 () Bool)

(assert (=> d!1487101 (= (head!9855 (toList!5453 lm!2023)) (h!58431 (toList!5453 lm!2023)))))

(assert (=> b!4678380 d!1487101))

(declare-fun bs!1081277 () Bool)

(declare-fun d!1487103 () Bool)

(assert (= bs!1081277 (and d!1487103 d!1487073)))

(declare-fun lambda!204267 () Int)

(assert (=> bs!1081277 (= lambda!204267 lambda!204255)))

(declare-fun bs!1081278 () Bool)

(assert (= bs!1081278 (and d!1487103 d!1487079)))

(assert (=> bs!1081278 (not (= lambda!204267 lambda!204258))))

(declare-fun bs!1081279 () Bool)

(assert (= bs!1081279 (and d!1487103 d!1487089)))

(assert (=> bs!1081279 (= lambda!204267 lambda!204266)))

(declare-fun bs!1081280 () Bool)

(assert (= bs!1081280 (and d!1487103 start!472264)))

(assert (=> bs!1081280 (= lambda!204267 lambda!204151)))

(declare-fun bs!1081281 () Bool)

(assert (= bs!1081281 (and d!1487103 d!1487083)))

(assert (=> bs!1081281 (= lambda!204267 lambda!204265)))

(declare-fun lt!1838335 () ListMap!4817)

(assert (=> d!1487103 (invariantList!1370 (toList!5454 lt!1838335))))

(declare-fun e!2919109 () ListMap!4817)

(assert (=> d!1487103 (= lt!1838335 e!2919109)))

(declare-fun c!800422 () Bool)

(assert (=> d!1487103 (= c!800422 ((_ is Cons!52226) (Cons!52226 (tuple2!53525 hash!405 newBucket!218) (t!359498 (toList!5453 lm!2023)))))))

(assert (=> d!1487103 (forall!11209 (Cons!52226 (tuple2!53525 hash!405 newBucket!218) (t!359498 (toList!5453 lm!2023))) lambda!204267)))

(assert (=> d!1487103 (= (extractMap!1808 (Cons!52226 (tuple2!53525 hash!405 newBucket!218) (t!359498 (toList!5453 lm!2023)))) lt!1838335)))

(declare-fun b!4678674 () Bool)

(assert (=> b!4678674 (= e!2919109 (addToMapMapFromBucket!1214 (_2!30056 (h!58431 (Cons!52226 (tuple2!53525 hash!405 newBucket!218) (t!359498 (toList!5453 lm!2023))))) (extractMap!1808 (t!359498 (Cons!52226 (tuple2!53525 hash!405 newBucket!218) (t!359498 (toList!5453 lm!2023)))))))))

(declare-fun b!4678675 () Bool)

(assert (=> b!4678675 (= e!2919109 (ListMap!4818 Nil!52225))))

(assert (= (and d!1487103 c!800422) b!4678674))

(assert (= (and d!1487103 (not c!800422)) b!4678675))

(declare-fun m!5573947 () Bool)

(assert (=> d!1487103 m!5573947))

(declare-fun m!5573949 () Bool)

(assert (=> d!1487103 m!5573949))

(declare-fun m!5573951 () Bool)

(assert (=> b!4678674 m!5573951))

(assert (=> b!4678674 m!5573951))

(declare-fun m!5573953 () Bool)

(assert (=> b!4678674 m!5573953))

(assert (=> b!4678379 d!1487103))

(declare-fun bs!1081282 () Bool)

(declare-fun d!1487105 () Bool)

(assert (= bs!1081282 (and d!1487105 d!1487073)))

(declare-fun lambda!204268 () Int)

(assert (=> bs!1081282 (= lambda!204268 lambda!204255)))

(declare-fun bs!1081283 () Bool)

(assert (= bs!1081283 (and d!1487105 d!1487079)))

(assert (=> bs!1081283 (not (= lambda!204268 lambda!204258))))

(declare-fun bs!1081284 () Bool)

(assert (= bs!1081284 (and d!1487105 d!1487103)))

(assert (=> bs!1081284 (= lambda!204268 lambda!204267)))

(declare-fun bs!1081285 () Bool)

(assert (= bs!1081285 (and d!1487105 d!1487089)))

(assert (=> bs!1081285 (= lambda!204268 lambda!204266)))

(declare-fun bs!1081286 () Bool)

(assert (= bs!1081286 (and d!1487105 start!472264)))

(assert (=> bs!1081286 (= lambda!204268 lambda!204151)))

(declare-fun bs!1081287 () Bool)

(assert (= bs!1081287 (and d!1487105 d!1487083)))

(assert (=> bs!1081287 (= lambda!204268 lambda!204265)))

(declare-fun lt!1838336 () ListMap!4817)

(assert (=> d!1487105 (invariantList!1370 (toList!5454 lt!1838336))))

(declare-fun e!2919110 () ListMap!4817)

(assert (=> d!1487105 (= lt!1838336 e!2919110)))

(declare-fun c!800423 () Bool)

(assert (=> d!1487105 (= c!800423 ((_ is Cons!52226) lt!1837930))))

(assert (=> d!1487105 (forall!11209 lt!1837930 lambda!204268)))

(assert (=> d!1487105 (= (extractMap!1808 lt!1837930) lt!1838336)))

(declare-fun b!4678676 () Bool)

(assert (=> b!4678676 (= e!2919110 (addToMapMapFromBucket!1214 (_2!30056 (h!58431 lt!1837930)) (extractMap!1808 (t!359498 lt!1837930))))))

(declare-fun b!4678677 () Bool)

(assert (=> b!4678677 (= e!2919110 (ListMap!4818 Nil!52225))))

(assert (= (and d!1487105 c!800423) b!4678676))

(assert (= (and d!1487105 (not c!800423)) b!4678677))

(declare-fun m!5573955 () Bool)

(assert (=> d!1487105 m!5573955))

(declare-fun m!5573957 () Bool)

(assert (=> d!1487105 m!5573957))

(declare-fun m!5573959 () Bool)

(assert (=> b!4678676 m!5573959))

(assert (=> b!4678676 m!5573959))

(declare-fun m!5573961 () Bool)

(assert (=> b!4678676 m!5573961))

(assert (=> b!4678379 d!1487105))

(declare-fun bs!1081288 () Bool)

(declare-fun d!1487107 () Bool)

(assert (= bs!1081288 (and d!1487107 b!4678537)))

(declare-fun lambda!204271 () Int)

(assert (=> bs!1081288 (not (= lambda!204271 lambda!204233))))

(declare-fun bs!1081289 () Bool)

(assert (= bs!1081289 (and d!1487107 b!4678544)))

(assert (=> bs!1081289 (not (= lambda!204271 lambda!204238))))

(declare-fun bs!1081290 () Bool)

(assert (= bs!1081290 (and d!1487107 b!4678543)))

(assert (=> bs!1081290 (not (= lambda!204271 lambda!204237))))

(declare-fun bs!1081291 () Bool)

(assert (= bs!1081291 (and d!1487107 b!4678536)))

(assert (=> bs!1081291 (not (= lambda!204271 lambda!204231))))

(declare-fun bs!1081292 () Bool)

(assert (= bs!1081292 (and d!1487107 d!1486977)))

(assert (=> bs!1081292 (not (= lambda!204271 lambda!204236))))

(declare-fun bs!1081293 () Bool)

(assert (= bs!1081293 (and d!1487107 d!1487029)))

(assert (=> bs!1081293 (not (= lambda!204271 lambda!204240))))

(declare-fun bs!1081294 () Bool)

(assert (= bs!1081294 (and d!1487107 d!1487081)))

(assert (=> bs!1081294 (not (= lambda!204271 lambda!204262))))

(assert (=> bs!1081288 (not (= lambda!204271 lambda!204234))))

(declare-fun bs!1081295 () Bool)

(assert (= bs!1081295 (and d!1487107 b!4678641)))

(assert (=> bs!1081295 (not (= lambda!204271 lambda!204260))))

(declare-fun bs!1081296 () Bool)

(assert (= bs!1081296 (and d!1487107 b!4678640)))

(assert (=> bs!1081296 (not (= lambda!204271 lambda!204259))))

(assert (=> bs!1081295 (not (= lambda!204271 lambda!204261))))

(assert (=> bs!1081289 (not (= lambda!204271 lambda!204239))))

(assert (=> d!1487107 true))

(assert (=> d!1487107 true))

(assert (=> d!1487107 (= (allKeysSameHash!1608 newBucket!218 hash!405 hashF!1323) (forall!11211 newBucket!218 lambda!204271))))

(declare-fun bs!1081297 () Bool)

(assert (= bs!1081297 d!1487107))

(declare-fun m!5573963 () Bool)

(assert (=> bs!1081297 m!5573963))

(assert (=> b!4678390 d!1487107))

(declare-fun d!1487109 () Bool)

(declare-fun res!1971199 () Bool)

(declare-fun e!2919111 () Bool)

(assert (=> d!1487109 (=> res!1971199 e!2919111)))

(assert (=> d!1487109 (= res!1971199 ((_ is Nil!52226) lt!1837933))))

(assert (=> d!1487109 (= (forall!11209 lt!1837933 lambda!204151) e!2919111)))

(declare-fun b!4678682 () Bool)

(declare-fun e!2919112 () Bool)

(assert (=> b!4678682 (= e!2919111 e!2919112)))

(declare-fun res!1971200 () Bool)

(assert (=> b!4678682 (=> (not res!1971200) (not e!2919112))))

(assert (=> b!4678682 (= res!1971200 (dynLambda!21673 lambda!204151 (h!58431 lt!1837933)))))

(declare-fun b!4678683 () Bool)

(assert (=> b!4678683 (= e!2919112 (forall!11209 (t!359498 lt!1837933) lambda!204151))))

(assert (= (and d!1487109 (not res!1971199)) b!4678682))

(assert (= (and b!4678682 res!1971200) b!4678683))

(declare-fun b_lambda!176623 () Bool)

(assert (=> (not b_lambda!176623) (not b!4678682)))

(declare-fun m!5573965 () Bool)

(assert (=> b!4678682 m!5573965))

(declare-fun m!5573967 () Bool)

(assert (=> b!4678683 m!5573967))

(assert (=> b!4678378 d!1487109))

(declare-fun bs!1081298 () Bool)

(declare-fun d!1487111 () Bool)

(assert (= bs!1081298 (and d!1487111 b!4678537)))

(declare-fun lambda!204272 () Int)

(assert (=> bs!1081298 (not (= lambda!204272 lambda!204233))))

(declare-fun bs!1081299 () Bool)

(assert (= bs!1081299 (and d!1487111 b!4678544)))

(assert (=> bs!1081299 (not (= lambda!204272 lambda!204238))))

(declare-fun bs!1081300 () Bool)

(assert (= bs!1081300 (and d!1487111 b!4678543)))

(assert (=> bs!1081300 (not (= lambda!204272 lambda!204237))))

(declare-fun bs!1081301 () Bool)

(assert (= bs!1081301 (and d!1487111 b!4678536)))

(assert (=> bs!1081301 (not (= lambda!204272 lambda!204231))))

(declare-fun bs!1081302 () Bool)

(assert (= bs!1081302 (and d!1487111 d!1486977)))

(assert (=> bs!1081302 (not (= lambda!204272 lambda!204236))))

(declare-fun bs!1081303 () Bool)

(assert (= bs!1081303 (and d!1487111 d!1487029)))

(assert (=> bs!1081303 (not (= lambda!204272 lambda!204240))))

(declare-fun bs!1081304 () Bool)

(assert (= bs!1081304 (and d!1487111 d!1487107)))

(assert (=> bs!1081304 (= lambda!204272 lambda!204271)))

(declare-fun bs!1081305 () Bool)

(assert (= bs!1081305 (and d!1487111 d!1487081)))

(assert (=> bs!1081305 (not (= lambda!204272 lambda!204262))))

(assert (=> bs!1081298 (not (= lambda!204272 lambda!204234))))

(declare-fun bs!1081306 () Bool)

(assert (= bs!1081306 (and d!1487111 b!4678641)))

(assert (=> bs!1081306 (not (= lambda!204272 lambda!204260))))

(declare-fun bs!1081307 () Bool)

(assert (= bs!1081307 (and d!1487111 b!4678640)))

(assert (=> bs!1081307 (not (= lambda!204272 lambda!204259))))

(assert (=> bs!1081306 (not (= lambda!204272 lambda!204261))))

(assert (=> bs!1081299 (not (= lambda!204272 lambda!204239))))

(assert (=> d!1487111 true))

(assert (=> d!1487111 true))

(assert (=> d!1487111 (= (allKeysSameHash!1608 oldBucket!34 hash!405 hashF!1323) (forall!11211 oldBucket!34 lambda!204272))))

(declare-fun bs!1081308 () Bool)

(assert (= bs!1081308 d!1487111))

(declare-fun m!5573969 () Bool)

(assert (=> bs!1081308 m!5573969))

(assert (=> b!4678382 d!1487111))

(declare-fun bs!1081309 () Bool)

(declare-fun b!4678687 () Bool)

(assert (= bs!1081309 (and b!4678687 b!4678537)))

(declare-fun lambda!204273 () Int)

(assert (=> bs!1081309 (= lambda!204273 lambda!204233)))

(declare-fun bs!1081310 () Bool)

(assert (= bs!1081310 (and b!4678687 b!4678544)))

(assert (=> bs!1081310 (= lambda!204273 lambda!204238)))

(declare-fun bs!1081311 () Bool)

(assert (= bs!1081311 (and b!4678687 b!4678543)))

(assert (=> bs!1081311 (= lambda!204273 lambda!204237)))

(declare-fun bs!1081312 () Bool)

(assert (= bs!1081312 (and b!4678687 b!4678536)))

(assert (=> bs!1081312 (= lambda!204273 lambda!204231)))

(declare-fun bs!1081313 () Bool)

(assert (= bs!1081313 (and b!4678687 d!1486977)))

(assert (=> bs!1081313 (= (= lt!1837926 lt!1838141) (= lambda!204273 lambda!204236))))

(declare-fun bs!1081314 () Bool)

(assert (= bs!1081314 (and b!4678687 d!1487029)))

(assert (=> bs!1081314 (= (= lt!1837926 lt!1838162) (= lambda!204273 lambda!204240))))

(declare-fun bs!1081315 () Bool)

(assert (= bs!1081315 (and b!4678687 d!1487107)))

(assert (=> bs!1081315 (not (= lambda!204273 lambda!204271))))

(assert (=> bs!1081309 (= (= lt!1837926 lt!1838146) (= lambda!204273 lambda!204234))))

(declare-fun bs!1081316 () Bool)

(assert (= bs!1081316 (and b!4678687 b!4678641)))

(assert (=> bs!1081316 (= lambda!204273 lambda!204260)))

(declare-fun bs!1081317 () Bool)

(assert (= bs!1081317 (and b!4678687 b!4678640)))

(assert (=> bs!1081317 (= lambda!204273 lambda!204259)))

(assert (=> bs!1081316 (= (= lt!1837926 lt!1838323) (= lambda!204273 lambda!204261))))

(assert (=> bs!1081310 (= (= lt!1837926 lt!1838167) (= lambda!204273 lambda!204239))))

(declare-fun bs!1081318 () Bool)

(assert (= bs!1081318 (and b!4678687 d!1487081)))

(assert (=> bs!1081318 (= (= lt!1837926 lt!1838318) (= lambda!204273 lambda!204262))))

(declare-fun bs!1081319 () Bool)

(assert (= bs!1081319 (and b!4678687 d!1487111)))

(assert (=> bs!1081319 (not (= lambda!204273 lambda!204272))))

(assert (=> b!4678687 true))

(declare-fun bs!1081320 () Bool)

(declare-fun b!4678688 () Bool)

(assert (= bs!1081320 (and b!4678688 b!4678537)))

(declare-fun lambda!204274 () Int)

(assert (=> bs!1081320 (= lambda!204274 lambda!204233)))

(declare-fun bs!1081321 () Bool)

(assert (= bs!1081321 (and b!4678688 b!4678544)))

(assert (=> bs!1081321 (= lambda!204274 lambda!204238)))

(declare-fun bs!1081322 () Bool)

(assert (= bs!1081322 (and b!4678688 b!4678543)))

(assert (=> bs!1081322 (= lambda!204274 lambda!204237)))

(declare-fun bs!1081323 () Bool)

(assert (= bs!1081323 (and b!4678688 b!4678536)))

(assert (=> bs!1081323 (= lambda!204274 lambda!204231)))

(declare-fun bs!1081324 () Bool)

(assert (= bs!1081324 (and b!4678688 d!1486977)))

(assert (=> bs!1081324 (= (= lt!1837926 lt!1838141) (= lambda!204274 lambda!204236))))

(declare-fun bs!1081325 () Bool)

(assert (= bs!1081325 (and b!4678688 d!1487029)))

(assert (=> bs!1081325 (= (= lt!1837926 lt!1838162) (= lambda!204274 lambda!204240))))

(declare-fun bs!1081326 () Bool)

(assert (= bs!1081326 (and b!4678688 d!1487107)))

(assert (=> bs!1081326 (not (= lambda!204274 lambda!204271))))

(assert (=> bs!1081320 (= (= lt!1837926 lt!1838146) (= lambda!204274 lambda!204234))))

(declare-fun bs!1081327 () Bool)

(assert (= bs!1081327 (and b!4678688 b!4678687)))

(assert (=> bs!1081327 (= lambda!204274 lambda!204273)))

(declare-fun bs!1081328 () Bool)

(assert (= bs!1081328 (and b!4678688 b!4678641)))

(assert (=> bs!1081328 (= lambda!204274 lambda!204260)))

(declare-fun bs!1081329 () Bool)

(assert (= bs!1081329 (and b!4678688 b!4678640)))

(assert (=> bs!1081329 (= lambda!204274 lambda!204259)))

(assert (=> bs!1081328 (= (= lt!1837926 lt!1838323) (= lambda!204274 lambda!204261))))

(assert (=> bs!1081321 (= (= lt!1837926 lt!1838167) (= lambda!204274 lambda!204239))))

(declare-fun bs!1081330 () Bool)

(assert (= bs!1081330 (and b!4678688 d!1487081)))

(assert (=> bs!1081330 (= (= lt!1837926 lt!1838318) (= lambda!204274 lambda!204262))))

(declare-fun bs!1081331 () Bool)

(assert (= bs!1081331 (and b!4678688 d!1487111)))

(assert (=> bs!1081331 (not (= lambda!204274 lambda!204272))))

(assert (=> b!4678688 true))

(declare-fun lambda!204275 () Int)

(declare-fun lt!1838353 () ListMap!4817)

(assert (=> bs!1081320 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204233))))

(assert (=> bs!1081321 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204238))))

(assert (=> bs!1081322 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204237))))

(assert (=> bs!1081323 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204231))))

(assert (=> bs!1081324 (= (= lt!1838353 lt!1838141) (= lambda!204275 lambda!204236))))

(assert (=> b!4678688 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204274))))

(assert (=> bs!1081325 (= (= lt!1838353 lt!1838162) (= lambda!204275 lambda!204240))))

(assert (=> bs!1081326 (not (= lambda!204275 lambda!204271))))

(assert (=> bs!1081320 (= (= lt!1838353 lt!1838146) (= lambda!204275 lambda!204234))))

(assert (=> bs!1081327 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204273))))

(assert (=> bs!1081328 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204260))))

(assert (=> bs!1081329 (= (= lt!1838353 lt!1837926) (= lambda!204275 lambda!204259))))

(assert (=> bs!1081328 (= (= lt!1838353 lt!1838323) (= lambda!204275 lambda!204261))))

(assert (=> bs!1081321 (= (= lt!1838353 lt!1838167) (= lambda!204275 lambda!204239))))

(assert (=> bs!1081330 (= (= lt!1838353 lt!1838318) (= lambda!204275 lambda!204262))))

(assert (=> bs!1081331 (not (= lambda!204275 lambda!204272))))

(assert (=> b!4678688 true))

(declare-fun bs!1081332 () Bool)

(declare-fun d!1487113 () Bool)

(assert (= bs!1081332 (and d!1487113 b!4678537)))

(declare-fun lambda!204276 () Int)

(declare-fun lt!1838348 () ListMap!4817)

(assert (=> bs!1081332 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204233))))

(declare-fun bs!1081333 () Bool)

(assert (= bs!1081333 (and d!1487113 b!4678544)))

(assert (=> bs!1081333 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204238))))

(declare-fun bs!1081334 () Bool)

(assert (= bs!1081334 (and d!1487113 b!4678543)))

(assert (=> bs!1081334 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204237))))

(declare-fun bs!1081335 () Bool)

(assert (= bs!1081335 (and d!1487113 b!4678536)))

(assert (=> bs!1081335 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204231))))

(declare-fun bs!1081336 () Bool)

(assert (= bs!1081336 (and d!1487113 d!1486977)))

(assert (=> bs!1081336 (= (= lt!1838348 lt!1838141) (= lambda!204276 lambda!204236))))

(declare-fun bs!1081337 () Bool)

(assert (= bs!1081337 (and d!1487113 b!4678688)))

(assert (=> bs!1081337 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204274))))

(declare-fun bs!1081338 () Bool)

(assert (= bs!1081338 (and d!1487113 d!1487029)))

(assert (=> bs!1081338 (= (= lt!1838348 lt!1838162) (= lambda!204276 lambda!204240))))

(assert (=> bs!1081337 (= (= lt!1838348 lt!1838353) (= lambda!204276 lambda!204275))))

(declare-fun bs!1081339 () Bool)

(assert (= bs!1081339 (and d!1487113 d!1487107)))

(assert (=> bs!1081339 (not (= lambda!204276 lambda!204271))))

(assert (=> bs!1081332 (= (= lt!1838348 lt!1838146) (= lambda!204276 lambda!204234))))

(declare-fun bs!1081340 () Bool)

(assert (= bs!1081340 (and d!1487113 b!4678687)))

(assert (=> bs!1081340 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204273))))

(declare-fun bs!1081341 () Bool)

(assert (= bs!1081341 (and d!1487113 b!4678641)))

(assert (=> bs!1081341 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204260))))

(declare-fun bs!1081342 () Bool)

(assert (= bs!1081342 (and d!1487113 b!4678640)))

(assert (=> bs!1081342 (= (= lt!1838348 lt!1837926) (= lambda!204276 lambda!204259))))

(assert (=> bs!1081341 (= (= lt!1838348 lt!1838323) (= lambda!204276 lambda!204261))))

(assert (=> bs!1081333 (= (= lt!1838348 lt!1838167) (= lambda!204276 lambda!204239))))

(declare-fun bs!1081343 () Bool)

(assert (= bs!1081343 (and d!1487113 d!1487081)))

(assert (=> bs!1081343 (= (= lt!1838348 lt!1838318) (= lambda!204276 lambda!204262))))

(declare-fun bs!1081344 () Bool)

(assert (= bs!1081344 (and d!1487113 d!1487111)))

(assert (=> bs!1081344 (not (= lambda!204276 lambda!204272))))

(assert (=> d!1487113 true))

(declare-fun b!4678684 () Bool)

(declare-fun e!2919114 () Bool)

(assert (=> b!4678684 (= e!2919114 (invariantList!1370 (toList!5454 lt!1838348)))))

(declare-fun b!4678685 () Bool)

(declare-fun e!2919115 () Bool)

(assert (=> b!4678685 (= e!2919115 (forall!11211 (toList!5454 lt!1837926) lambda!204275))))

(assert (=> d!1487113 e!2919114))

(declare-fun res!1971201 () Bool)

(assert (=> d!1487113 (=> (not res!1971201) (not e!2919114))))

(assert (=> d!1487113 (= res!1971201 (forall!11211 (Cons!52225 lt!1837932 lt!1837938) lambda!204276))))

(declare-fun e!2919113 () ListMap!4817)

(assert (=> d!1487113 (= lt!1838348 e!2919113)))

(declare-fun c!800424 () Bool)

(assert (=> d!1487113 (= c!800424 ((_ is Nil!52225) (Cons!52225 lt!1837932 lt!1837938)))))

(assert (=> d!1487113 (noDuplicateKeys!1782 (Cons!52225 lt!1837932 lt!1837938))))

(assert (=> d!1487113 (= (addToMapMapFromBucket!1214 (Cons!52225 lt!1837932 lt!1837938) lt!1837926) lt!1838348)))

(declare-fun b!4678686 () Bool)

(declare-fun res!1971203 () Bool)

(assert (=> b!4678686 (=> (not res!1971203) (not e!2919114))))

(assert (=> b!4678686 (= res!1971203 (forall!11211 (toList!5454 lt!1837926) lambda!204276))))

(declare-fun bm!326960 () Bool)

(declare-fun call!326966 () Unit!122107)

(assert (=> bm!326960 (= call!326966 (lemmaContainsAllItsOwnKeys!658 lt!1837926))))

(assert (=> b!4678687 (= e!2919113 lt!1837926)))

(declare-fun lt!1838350 () Unit!122107)

(assert (=> b!4678687 (= lt!1838350 call!326966)))

(declare-fun call!326965 () Bool)

(assert (=> b!4678687 call!326965))

(declare-fun lt!1838356 () Unit!122107)

(assert (=> b!4678687 (= lt!1838356 lt!1838350)))

(declare-fun call!326967 () Bool)

(assert (=> b!4678687 call!326967))

(declare-fun lt!1838343 () Unit!122107)

(declare-fun Unit!122196 () Unit!122107)

(assert (=> b!4678687 (= lt!1838343 Unit!122196)))

(assert (=> b!4678688 (= e!2919113 lt!1838353)))

(declare-fun lt!1838341 () ListMap!4817)

(assert (=> b!4678688 (= lt!1838341 (+!2084 lt!1837926 (h!58430 (Cons!52225 lt!1837932 lt!1837938))))))

(assert (=> b!4678688 (= lt!1838353 (addToMapMapFromBucket!1214 (t!359497 (Cons!52225 lt!1837932 lt!1837938)) (+!2084 lt!1837926 (h!58430 (Cons!52225 lt!1837932 lt!1837938)))))))

(declare-fun lt!1838352 () Unit!122107)

(assert (=> b!4678688 (= lt!1838352 call!326966)))

(assert (=> b!4678688 (forall!11211 (toList!5454 lt!1837926) lambda!204274)))

(declare-fun lt!1838354 () Unit!122107)

(assert (=> b!4678688 (= lt!1838354 lt!1838352)))

(assert (=> b!4678688 (forall!11211 (toList!5454 lt!1838341) lambda!204275)))

(declare-fun lt!1838340 () Unit!122107)

(declare-fun Unit!122197 () Unit!122107)

(assert (=> b!4678688 (= lt!1838340 Unit!122197)))

(assert (=> b!4678688 (forall!11211 (t!359497 (Cons!52225 lt!1837932 lt!1837938)) lambda!204275)))

(declare-fun lt!1838349 () Unit!122107)

(declare-fun Unit!122198 () Unit!122107)

(assert (=> b!4678688 (= lt!1838349 Unit!122198)))

(declare-fun lt!1838339 () Unit!122107)

(declare-fun Unit!122199 () Unit!122107)

(assert (=> b!4678688 (= lt!1838339 Unit!122199)))

(declare-fun lt!1838347 () Unit!122107)

(assert (=> b!4678688 (= lt!1838347 (forallContained!3342 (toList!5454 lt!1838341) lambda!204275 (h!58430 (Cons!52225 lt!1837932 lt!1837938))))))

(assert (=> b!4678688 (contains!15362 lt!1838341 (_1!30055 (h!58430 (Cons!52225 lt!1837932 lt!1837938))))))

(declare-fun lt!1838344 () Unit!122107)

(declare-fun Unit!122200 () Unit!122107)

(assert (=> b!4678688 (= lt!1838344 Unit!122200)))

(assert (=> b!4678688 (contains!15362 lt!1838353 (_1!30055 (h!58430 (Cons!52225 lt!1837932 lt!1837938))))))

(declare-fun lt!1838351 () Unit!122107)

(declare-fun Unit!122201 () Unit!122107)

(assert (=> b!4678688 (= lt!1838351 Unit!122201)))

(assert (=> b!4678688 call!326967))

(declare-fun lt!1838337 () Unit!122107)

(declare-fun Unit!122202 () Unit!122107)

(assert (=> b!4678688 (= lt!1838337 Unit!122202)))

(assert (=> b!4678688 (forall!11211 (toList!5454 lt!1838341) lambda!204275)))

(declare-fun lt!1838346 () Unit!122107)

(declare-fun Unit!122203 () Unit!122107)

(assert (=> b!4678688 (= lt!1838346 Unit!122203)))

(declare-fun lt!1838338 () Unit!122107)

(declare-fun Unit!122204 () Unit!122107)

(assert (=> b!4678688 (= lt!1838338 Unit!122204)))

(declare-fun lt!1838342 () Unit!122107)

(assert (=> b!4678688 (= lt!1838342 (addForallContainsKeyThenBeforeAdding!657 lt!1837926 lt!1838353 (_1!30055 (h!58430 (Cons!52225 lt!1837932 lt!1837938))) (_2!30055 (h!58430 (Cons!52225 lt!1837932 lt!1837938)))))))

(assert (=> b!4678688 call!326965))

(declare-fun lt!1838355 () Unit!122107)

(assert (=> b!4678688 (= lt!1838355 lt!1838342)))

(assert (=> b!4678688 (forall!11211 (toList!5454 lt!1837926) lambda!204275)))

(declare-fun lt!1838345 () Unit!122107)

(declare-fun Unit!122205 () Unit!122107)

(assert (=> b!4678688 (= lt!1838345 Unit!122205)))

(declare-fun res!1971202 () Bool)

(assert (=> b!4678688 (= res!1971202 (forall!11211 (Cons!52225 lt!1837932 lt!1837938) lambda!204275))))

(assert (=> b!4678688 (=> (not res!1971202) (not e!2919115))))

(assert (=> b!4678688 e!2919115))

(declare-fun lt!1838357 () Unit!122107)

(declare-fun Unit!122206 () Unit!122107)

(assert (=> b!4678688 (= lt!1838357 Unit!122206)))

(declare-fun bm!326961 () Bool)

(assert (=> bm!326961 (= call!326967 (forall!11211 (ite c!800424 (toList!5454 lt!1837926) (Cons!52225 lt!1837932 lt!1837938)) (ite c!800424 lambda!204273 lambda!204275)))))

(declare-fun bm!326962 () Bool)

(assert (=> bm!326962 (= call!326965 (forall!11211 (toList!5454 lt!1837926) (ite c!800424 lambda!204273 lambda!204275)))))

(assert (= (and d!1487113 c!800424) b!4678687))

(assert (= (and d!1487113 (not c!800424)) b!4678688))

(assert (= (and b!4678688 res!1971202) b!4678685))

(assert (= (or b!4678687 b!4678688) bm!326960))

(assert (= (or b!4678687 b!4678688) bm!326962))

(assert (= (or b!4678687 b!4678688) bm!326961))

(assert (= (and d!1487113 res!1971201) b!4678686))

(assert (= (and b!4678686 res!1971203) b!4678684))

(declare-fun m!5573971 () Bool)

(assert (=> b!4678686 m!5573971))

(declare-fun m!5573973 () Bool)

(assert (=> bm!326961 m!5573973))

(declare-fun m!5573975 () Bool)

(assert (=> b!4678688 m!5573975))

(declare-fun m!5573977 () Bool)

(assert (=> b!4678688 m!5573977))

(declare-fun m!5573979 () Bool)

(assert (=> b!4678688 m!5573979))

(declare-fun m!5573981 () Bool)

(assert (=> b!4678688 m!5573981))

(declare-fun m!5573983 () Bool)

(assert (=> b!4678688 m!5573983))

(declare-fun m!5573985 () Bool)

(assert (=> b!4678688 m!5573985))

(declare-fun m!5573987 () Bool)

(assert (=> b!4678688 m!5573987))

(declare-fun m!5573989 () Bool)

(assert (=> b!4678688 m!5573989))

(assert (=> b!4678688 m!5573985))

(declare-fun m!5573991 () Bool)

(assert (=> b!4678688 m!5573991))

(declare-fun m!5573993 () Bool)

(assert (=> b!4678688 m!5573993))

(assert (=> b!4678688 m!5573983))

(declare-fun m!5573995 () Bool)

(assert (=> b!4678688 m!5573995))

(assert (=> b!4678685 m!5573995))

(declare-fun m!5573997 () Bool)

(assert (=> bm!326962 m!5573997))

(assert (=> bm!326960 m!5573561))

(declare-fun m!5573999 () Bool)

(assert (=> b!4678684 m!5573999))

(declare-fun m!5574001 () Bool)

(assert (=> d!1487113 m!5574001))

(declare-fun m!5574003 () Bool)

(assert (=> d!1487113 m!5574003))

(assert (=> b!4678381 d!1487113))

(declare-fun d!1487115 () Bool)

(assert (=> d!1487115 (= (eq!971 lt!1837934 (addToMapMapFromBucket!1214 oldBucket!34 lt!1837926)) (= (content!9098 (toList!5454 lt!1837934)) (content!9098 (toList!5454 (addToMapMapFromBucket!1214 oldBucket!34 lt!1837926)))))))

(declare-fun bs!1081345 () Bool)

(assert (= bs!1081345 d!1487115))

(assert (=> bs!1081345 m!5573921))

(declare-fun m!5574005 () Bool)

(assert (=> bs!1081345 m!5574005))

(assert (=> b!4678381 d!1487115))

(declare-fun bs!1081346 () Bool)

(declare-fun b!4678692 () Bool)

(assert (= bs!1081346 (and b!4678692 b!4678537)))

(declare-fun lambda!204277 () Int)

(assert (=> bs!1081346 (= lambda!204277 lambda!204233)))

(declare-fun bs!1081347 () Bool)

(assert (= bs!1081347 (and b!4678692 b!4678544)))

(assert (=> bs!1081347 (= lambda!204277 lambda!204238)))

(declare-fun bs!1081348 () Bool)

(assert (= bs!1081348 (and b!4678692 b!4678543)))

(assert (=> bs!1081348 (= lambda!204277 lambda!204237)))

(declare-fun bs!1081349 () Bool)

(assert (= bs!1081349 (and b!4678692 b!4678536)))

(assert (=> bs!1081349 (= lambda!204277 lambda!204231)))

(declare-fun bs!1081350 () Bool)

(assert (= bs!1081350 (and b!4678692 d!1486977)))

(assert (=> bs!1081350 (= (= lt!1837926 lt!1838141) (= lambda!204277 lambda!204236))))

(declare-fun bs!1081351 () Bool)

(assert (= bs!1081351 (and b!4678692 b!4678688)))

(assert (=> bs!1081351 (= lambda!204277 lambda!204274)))

(declare-fun bs!1081352 () Bool)

(assert (= bs!1081352 (and b!4678692 d!1487029)))

(assert (=> bs!1081352 (= (= lt!1837926 lt!1838162) (= lambda!204277 lambda!204240))))

(assert (=> bs!1081351 (= (= lt!1837926 lt!1838353) (= lambda!204277 lambda!204275))))

(declare-fun bs!1081353 () Bool)

(assert (= bs!1081353 (and b!4678692 d!1487107)))

(assert (=> bs!1081353 (not (= lambda!204277 lambda!204271))))

(declare-fun bs!1081354 () Bool)

(assert (= bs!1081354 (and b!4678692 d!1487113)))

(assert (=> bs!1081354 (= (= lt!1837926 lt!1838348) (= lambda!204277 lambda!204276))))

(assert (=> bs!1081346 (= (= lt!1837926 lt!1838146) (= lambda!204277 lambda!204234))))

(declare-fun bs!1081355 () Bool)

(assert (= bs!1081355 (and b!4678692 b!4678687)))

(assert (=> bs!1081355 (= lambda!204277 lambda!204273)))

(declare-fun bs!1081356 () Bool)

(assert (= bs!1081356 (and b!4678692 b!4678641)))

(assert (=> bs!1081356 (= lambda!204277 lambda!204260)))

(declare-fun bs!1081357 () Bool)

(assert (= bs!1081357 (and b!4678692 b!4678640)))

(assert (=> bs!1081357 (= lambda!204277 lambda!204259)))

(assert (=> bs!1081356 (= (= lt!1837926 lt!1838323) (= lambda!204277 lambda!204261))))

(assert (=> bs!1081347 (= (= lt!1837926 lt!1838167) (= lambda!204277 lambda!204239))))

(declare-fun bs!1081358 () Bool)

(assert (= bs!1081358 (and b!4678692 d!1487081)))

(assert (=> bs!1081358 (= (= lt!1837926 lt!1838318) (= lambda!204277 lambda!204262))))

(declare-fun bs!1081359 () Bool)

(assert (= bs!1081359 (and b!4678692 d!1487111)))

(assert (=> bs!1081359 (not (= lambda!204277 lambda!204272))))

(assert (=> b!4678692 true))

(declare-fun bs!1081360 () Bool)

(declare-fun b!4678693 () Bool)

(assert (= bs!1081360 (and b!4678693 b!4678537)))

(declare-fun lambda!204278 () Int)

(assert (=> bs!1081360 (= lambda!204278 lambda!204233)))

(declare-fun bs!1081361 () Bool)

(assert (= bs!1081361 (and b!4678693 b!4678544)))

(assert (=> bs!1081361 (= lambda!204278 lambda!204238)))

(declare-fun bs!1081362 () Bool)

(assert (= bs!1081362 (and b!4678693 b!4678543)))

(assert (=> bs!1081362 (= lambda!204278 lambda!204237)))

(declare-fun bs!1081363 () Bool)

(assert (= bs!1081363 (and b!4678693 b!4678536)))

(assert (=> bs!1081363 (= lambda!204278 lambda!204231)))

(declare-fun bs!1081364 () Bool)

(assert (= bs!1081364 (and b!4678693 b!4678692)))

(assert (=> bs!1081364 (= lambda!204278 lambda!204277)))

(declare-fun bs!1081365 () Bool)

(assert (= bs!1081365 (and b!4678693 d!1486977)))

(assert (=> bs!1081365 (= (= lt!1837926 lt!1838141) (= lambda!204278 lambda!204236))))

(declare-fun bs!1081366 () Bool)

(assert (= bs!1081366 (and b!4678693 b!4678688)))

(assert (=> bs!1081366 (= lambda!204278 lambda!204274)))

(declare-fun bs!1081367 () Bool)

(assert (= bs!1081367 (and b!4678693 d!1487029)))

(assert (=> bs!1081367 (= (= lt!1837926 lt!1838162) (= lambda!204278 lambda!204240))))

(assert (=> bs!1081366 (= (= lt!1837926 lt!1838353) (= lambda!204278 lambda!204275))))

(declare-fun bs!1081368 () Bool)

(assert (= bs!1081368 (and b!4678693 d!1487107)))

(assert (=> bs!1081368 (not (= lambda!204278 lambda!204271))))

(declare-fun bs!1081369 () Bool)

(assert (= bs!1081369 (and b!4678693 d!1487113)))

(assert (=> bs!1081369 (= (= lt!1837926 lt!1838348) (= lambda!204278 lambda!204276))))

(assert (=> bs!1081360 (= (= lt!1837926 lt!1838146) (= lambda!204278 lambda!204234))))

(declare-fun bs!1081370 () Bool)

(assert (= bs!1081370 (and b!4678693 b!4678687)))

(assert (=> bs!1081370 (= lambda!204278 lambda!204273)))

(declare-fun bs!1081371 () Bool)

(assert (= bs!1081371 (and b!4678693 b!4678641)))

(assert (=> bs!1081371 (= lambda!204278 lambda!204260)))

(declare-fun bs!1081372 () Bool)

(assert (= bs!1081372 (and b!4678693 b!4678640)))

(assert (=> bs!1081372 (= lambda!204278 lambda!204259)))

(assert (=> bs!1081371 (= (= lt!1837926 lt!1838323) (= lambda!204278 lambda!204261))))

(assert (=> bs!1081361 (= (= lt!1837926 lt!1838167) (= lambda!204278 lambda!204239))))

(declare-fun bs!1081373 () Bool)

(assert (= bs!1081373 (and b!4678693 d!1487081)))

(assert (=> bs!1081373 (= (= lt!1837926 lt!1838318) (= lambda!204278 lambda!204262))))

(declare-fun bs!1081374 () Bool)

(assert (= bs!1081374 (and b!4678693 d!1487111)))

(assert (=> bs!1081374 (not (= lambda!204278 lambda!204272))))

(assert (=> b!4678693 true))

(declare-fun lt!1838374 () ListMap!4817)

(declare-fun lambda!204279 () Int)

(assert (=> bs!1081360 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204233))))

(assert (=> bs!1081361 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204238))))

(assert (=> bs!1081362 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204237))))

(assert (=> bs!1081363 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204231))))

(assert (=> bs!1081364 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204277))))

(assert (=> bs!1081365 (= (= lt!1838374 lt!1838141) (= lambda!204279 lambda!204236))))

(assert (=> bs!1081366 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204274))))

(assert (=> bs!1081367 (= (= lt!1838374 lt!1838162) (= lambda!204279 lambda!204240))))

(assert (=> bs!1081366 (= (= lt!1838374 lt!1838353) (= lambda!204279 lambda!204275))))

(assert (=> bs!1081369 (= (= lt!1838374 lt!1838348) (= lambda!204279 lambda!204276))))

(assert (=> bs!1081360 (= (= lt!1838374 lt!1838146) (= lambda!204279 lambda!204234))))

(assert (=> bs!1081370 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204273))))

(assert (=> bs!1081371 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204260))))

(assert (=> bs!1081372 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204259))))

(assert (=> bs!1081371 (= (= lt!1838374 lt!1838323) (= lambda!204279 lambda!204261))))

(assert (=> bs!1081361 (= (= lt!1838374 lt!1838167) (= lambda!204279 lambda!204239))))

(assert (=> b!4678693 (= (= lt!1838374 lt!1837926) (= lambda!204279 lambda!204278))))

(assert (=> bs!1081368 (not (= lambda!204279 lambda!204271))))

(assert (=> bs!1081373 (= (= lt!1838374 lt!1838318) (= lambda!204279 lambda!204262))))

(assert (=> bs!1081374 (not (= lambda!204279 lambda!204272))))

(assert (=> b!4678693 true))

(declare-fun bs!1081375 () Bool)

(declare-fun d!1487117 () Bool)

(assert (= bs!1081375 (and d!1487117 b!4678537)))

(declare-fun lambda!204280 () Int)

(declare-fun lt!1838369 () ListMap!4817)

(assert (=> bs!1081375 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204233))))

(declare-fun bs!1081376 () Bool)

(assert (= bs!1081376 (and d!1487117 b!4678544)))

(assert (=> bs!1081376 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204238))))

(declare-fun bs!1081377 () Bool)

(assert (= bs!1081377 (and d!1487117 b!4678543)))

(assert (=> bs!1081377 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204237))))

(declare-fun bs!1081378 () Bool)

(assert (= bs!1081378 (and d!1487117 b!4678536)))

(assert (=> bs!1081378 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204231))))

(declare-fun bs!1081379 () Bool)

(assert (= bs!1081379 (and d!1487117 b!4678692)))

(assert (=> bs!1081379 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204277))))

(declare-fun bs!1081380 () Bool)

(assert (= bs!1081380 (and d!1487117 d!1486977)))

(assert (=> bs!1081380 (= (= lt!1838369 lt!1838141) (= lambda!204280 lambda!204236))))

(declare-fun bs!1081381 () Bool)

(assert (= bs!1081381 (and d!1487117 b!4678688)))

(assert (=> bs!1081381 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204274))))

(declare-fun bs!1081382 () Bool)

(assert (= bs!1081382 (and d!1487117 d!1487029)))

(assert (=> bs!1081382 (= (= lt!1838369 lt!1838162) (= lambda!204280 lambda!204240))))

(assert (=> bs!1081381 (= (= lt!1838369 lt!1838353) (= lambda!204280 lambda!204275))))

(declare-fun bs!1081383 () Bool)

(assert (= bs!1081383 (and d!1487117 b!4678693)))

(assert (=> bs!1081383 (= (= lt!1838369 lt!1838374) (= lambda!204280 lambda!204279))))

(declare-fun bs!1081384 () Bool)

(assert (= bs!1081384 (and d!1487117 d!1487113)))

(assert (=> bs!1081384 (= (= lt!1838369 lt!1838348) (= lambda!204280 lambda!204276))))

(assert (=> bs!1081375 (= (= lt!1838369 lt!1838146) (= lambda!204280 lambda!204234))))

(declare-fun bs!1081385 () Bool)

(assert (= bs!1081385 (and d!1487117 b!4678687)))

(assert (=> bs!1081385 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204273))))

(declare-fun bs!1081386 () Bool)

(assert (= bs!1081386 (and d!1487117 b!4678641)))

(assert (=> bs!1081386 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204260))))

(declare-fun bs!1081387 () Bool)

(assert (= bs!1081387 (and d!1487117 b!4678640)))

(assert (=> bs!1081387 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204259))))

(assert (=> bs!1081386 (= (= lt!1838369 lt!1838323) (= lambda!204280 lambda!204261))))

(assert (=> bs!1081376 (= (= lt!1838369 lt!1838167) (= lambda!204280 lambda!204239))))

(assert (=> bs!1081383 (= (= lt!1838369 lt!1837926) (= lambda!204280 lambda!204278))))

(declare-fun bs!1081388 () Bool)

(assert (= bs!1081388 (and d!1487117 d!1487107)))

(assert (=> bs!1081388 (not (= lambda!204280 lambda!204271))))

(declare-fun bs!1081389 () Bool)

(assert (= bs!1081389 (and d!1487117 d!1487081)))

(assert (=> bs!1081389 (= (= lt!1838369 lt!1838318) (= lambda!204280 lambda!204262))))

(declare-fun bs!1081390 () Bool)

(assert (= bs!1081390 (and d!1487117 d!1487111)))

(assert (=> bs!1081390 (not (= lambda!204280 lambda!204272))))

(assert (=> d!1487117 true))

(declare-fun b!4678689 () Bool)

(declare-fun e!2919117 () Bool)

(assert (=> b!4678689 (= e!2919117 (invariantList!1370 (toList!5454 lt!1838369)))))

(declare-fun b!4678690 () Bool)

(declare-fun e!2919118 () Bool)

(assert (=> b!4678690 (= e!2919118 (forall!11211 (toList!5454 lt!1837926) lambda!204279))))

(assert (=> d!1487117 e!2919117))

(declare-fun res!1971204 () Bool)

(assert (=> d!1487117 (=> (not res!1971204) (not e!2919117))))

(assert (=> d!1487117 (= res!1971204 (forall!11211 oldBucket!34 lambda!204280))))

(declare-fun e!2919116 () ListMap!4817)

(assert (=> d!1487117 (= lt!1838369 e!2919116)))

(declare-fun c!800425 () Bool)

(assert (=> d!1487117 (= c!800425 ((_ is Nil!52225) oldBucket!34))))

(assert (=> d!1487117 (noDuplicateKeys!1782 oldBucket!34)))

(assert (=> d!1487117 (= (addToMapMapFromBucket!1214 oldBucket!34 lt!1837926) lt!1838369)))

(declare-fun b!4678691 () Bool)

(declare-fun res!1971206 () Bool)

(assert (=> b!4678691 (=> (not res!1971206) (not e!2919117))))

(assert (=> b!4678691 (= res!1971206 (forall!11211 (toList!5454 lt!1837926) lambda!204280))))

(declare-fun bm!326963 () Bool)

(declare-fun call!326969 () Unit!122107)

(assert (=> bm!326963 (= call!326969 (lemmaContainsAllItsOwnKeys!658 lt!1837926))))

(assert (=> b!4678692 (= e!2919116 lt!1837926)))

(declare-fun lt!1838371 () Unit!122107)

(assert (=> b!4678692 (= lt!1838371 call!326969)))

(declare-fun call!326968 () Bool)

(assert (=> b!4678692 call!326968))

(declare-fun lt!1838377 () Unit!122107)

(assert (=> b!4678692 (= lt!1838377 lt!1838371)))

(declare-fun call!326970 () Bool)

(assert (=> b!4678692 call!326970))

(declare-fun lt!1838364 () Unit!122107)

(declare-fun Unit!122218 () Unit!122107)

(assert (=> b!4678692 (= lt!1838364 Unit!122218)))

(assert (=> b!4678693 (= e!2919116 lt!1838374)))

(declare-fun lt!1838362 () ListMap!4817)

(assert (=> b!4678693 (= lt!1838362 (+!2084 lt!1837926 (h!58430 oldBucket!34)))))

(assert (=> b!4678693 (= lt!1838374 (addToMapMapFromBucket!1214 (t!359497 oldBucket!34) (+!2084 lt!1837926 (h!58430 oldBucket!34))))))

(declare-fun lt!1838373 () Unit!122107)

(assert (=> b!4678693 (= lt!1838373 call!326969)))

(assert (=> b!4678693 (forall!11211 (toList!5454 lt!1837926) lambda!204278)))

(declare-fun lt!1838375 () Unit!122107)

(assert (=> b!4678693 (= lt!1838375 lt!1838373)))

(assert (=> b!4678693 (forall!11211 (toList!5454 lt!1838362) lambda!204279)))

(declare-fun lt!1838361 () Unit!122107)

(declare-fun Unit!122219 () Unit!122107)

(assert (=> b!4678693 (= lt!1838361 Unit!122219)))

(assert (=> b!4678693 (forall!11211 (t!359497 oldBucket!34) lambda!204279)))

(declare-fun lt!1838370 () Unit!122107)

(declare-fun Unit!122220 () Unit!122107)

(assert (=> b!4678693 (= lt!1838370 Unit!122220)))

(declare-fun lt!1838360 () Unit!122107)

(declare-fun Unit!122221 () Unit!122107)

(assert (=> b!4678693 (= lt!1838360 Unit!122221)))

(declare-fun lt!1838368 () Unit!122107)

(assert (=> b!4678693 (= lt!1838368 (forallContained!3342 (toList!5454 lt!1838362) lambda!204279 (h!58430 oldBucket!34)))))

(assert (=> b!4678693 (contains!15362 lt!1838362 (_1!30055 (h!58430 oldBucket!34)))))

(declare-fun lt!1838365 () Unit!122107)

(declare-fun Unit!122222 () Unit!122107)

(assert (=> b!4678693 (= lt!1838365 Unit!122222)))

(assert (=> b!4678693 (contains!15362 lt!1838374 (_1!30055 (h!58430 oldBucket!34)))))

(declare-fun lt!1838372 () Unit!122107)

(declare-fun Unit!122223 () Unit!122107)

(assert (=> b!4678693 (= lt!1838372 Unit!122223)))

(assert (=> b!4678693 call!326970))

(declare-fun lt!1838358 () Unit!122107)

(declare-fun Unit!122224 () Unit!122107)

(assert (=> b!4678693 (= lt!1838358 Unit!122224)))

(assert (=> b!4678693 (forall!11211 (toList!5454 lt!1838362) lambda!204279)))

(declare-fun lt!1838367 () Unit!122107)

(declare-fun Unit!122225 () Unit!122107)

(assert (=> b!4678693 (= lt!1838367 Unit!122225)))

(declare-fun lt!1838359 () Unit!122107)

(declare-fun Unit!122226 () Unit!122107)

(assert (=> b!4678693 (= lt!1838359 Unit!122226)))

(declare-fun lt!1838363 () Unit!122107)

(assert (=> b!4678693 (= lt!1838363 (addForallContainsKeyThenBeforeAdding!657 lt!1837926 lt!1838374 (_1!30055 (h!58430 oldBucket!34)) (_2!30055 (h!58430 oldBucket!34))))))

(assert (=> b!4678693 call!326968))

(declare-fun lt!1838376 () Unit!122107)

(assert (=> b!4678693 (= lt!1838376 lt!1838363)))

(assert (=> b!4678693 (forall!11211 (toList!5454 lt!1837926) lambda!204279)))

(declare-fun lt!1838366 () Unit!122107)

(declare-fun Unit!122227 () Unit!122107)

(assert (=> b!4678693 (= lt!1838366 Unit!122227)))

(declare-fun res!1971205 () Bool)

(assert (=> b!4678693 (= res!1971205 (forall!11211 oldBucket!34 lambda!204279))))

(assert (=> b!4678693 (=> (not res!1971205) (not e!2919118))))

(assert (=> b!4678693 e!2919118))

(declare-fun lt!1838378 () Unit!122107)

(declare-fun Unit!122228 () Unit!122107)

(assert (=> b!4678693 (= lt!1838378 Unit!122228)))

(declare-fun bm!326964 () Bool)

(assert (=> bm!326964 (= call!326970 (forall!11211 (ite c!800425 (toList!5454 lt!1837926) oldBucket!34) (ite c!800425 lambda!204277 lambda!204279)))))

(declare-fun bm!326965 () Bool)

(assert (=> bm!326965 (= call!326968 (forall!11211 (toList!5454 lt!1837926) (ite c!800425 lambda!204277 lambda!204279)))))

(assert (= (and d!1487117 c!800425) b!4678692))

(assert (= (and d!1487117 (not c!800425)) b!4678693))

(assert (= (and b!4678693 res!1971205) b!4678690))

(assert (= (or b!4678692 b!4678693) bm!326963))

(assert (= (or b!4678692 b!4678693) bm!326965))

(assert (= (or b!4678692 b!4678693) bm!326964))

(assert (= (and d!1487117 res!1971204) b!4678691))

(assert (= (and b!4678691 res!1971206) b!4678689))

(declare-fun m!5574007 () Bool)

(assert (=> b!4678691 m!5574007))

(declare-fun m!5574009 () Bool)

(assert (=> bm!326964 m!5574009))

(declare-fun m!5574011 () Bool)

(assert (=> b!4678693 m!5574011))

(declare-fun m!5574013 () Bool)

(assert (=> b!4678693 m!5574013))

(declare-fun m!5574015 () Bool)

(assert (=> b!4678693 m!5574015))

(declare-fun m!5574017 () Bool)

(assert (=> b!4678693 m!5574017))

(declare-fun m!5574019 () Bool)

(assert (=> b!4678693 m!5574019))

(declare-fun m!5574021 () Bool)

(assert (=> b!4678693 m!5574021))

(declare-fun m!5574023 () Bool)

(assert (=> b!4678693 m!5574023))

(declare-fun m!5574025 () Bool)

(assert (=> b!4678693 m!5574025))

(assert (=> b!4678693 m!5574021))

(declare-fun m!5574027 () Bool)

(assert (=> b!4678693 m!5574027))

(declare-fun m!5574029 () Bool)

(assert (=> b!4678693 m!5574029))

(assert (=> b!4678693 m!5574019))

(declare-fun m!5574031 () Bool)

(assert (=> b!4678693 m!5574031))

(assert (=> b!4678690 m!5574031))

(declare-fun m!5574033 () Bool)

(assert (=> bm!326965 m!5574033))

(assert (=> bm!326963 m!5573561))

(declare-fun m!5574035 () Bool)

(assert (=> b!4678689 m!5574035))

(declare-fun m!5574037 () Bool)

(assert (=> d!1487117 m!5574037))

(assert (=> d!1487117 m!5573273))

(assert (=> b!4678381 d!1487117))

(declare-fun d!1487119 () Bool)

(assert (=> d!1487119 (= (head!9856 oldBucket!34) (h!58430 oldBucket!34))))

(assert (=> b!4678381 d!1487119))

(declare-fun d!1487121 () Bool)

(assert (=> d!1487121 (eq!971 (addToMapMapFromBucket!1214 (Cons!52225 lt!1837932 lt!1837938) lt!1837926) (+!2084 (addToMapMapFromBucket!1214 lt!1837938 lt!1837926) lt!1837932))))

(declare-fun lt!1838381 () Unit!122107)

(declare-fun choose!32367 (tuple2!53522 List!52349 ListMap!4817) Unit!122107)

(assert (=> d!1487121 (= lt!1838381 (choose!32367 lt!1837932 lt!1837938 lt!1837926))))

(assert (=> d!1487121 (noDuplicateKeys!1782 lt!1837938)))

(assert (=> d!1487121 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!220 lt!1837932 lt!1837938 lt!1837926) lt!1838381)))

(declare-fun bs!1081391 () Bool)

(assert (= bs!1081391 d!1487121))

(assert (=> bs!1081391 m!5573313))

(declare-fun m!5574039 () Bool)

(assert (=> bs!1081391 m!5574039))

(assert (=> bs!1081391 m!5573313))

(declare-fun m!5574041 () Bool)

(assert (=> bs!1081391 m!5574041))

(declare-fun m!5574043 () Bool)

(assert (=> bs!1081391 m!5574043))

(assert (=> bs!1081391 m!5573627))

(assert (=> bs!1081391 m!5573271))

(assert (=> bs!1081391 m!5573271))

(assert (=> bs!1081391 m!5574041))

(assert (=> b!4678381 d!1487121))

(declare-fun d!1487123 () Bool)

(declare-fun e!2919119 () Bool)

(assert (=> d!1487123 e!2919119))

(declare-fun res!1971208 () Bool)

(assert (=> d!1487123 (=> (not res!1971208) (not e!2919119))))

(declare-fun lt!1838383 () ListMap!4817)

(assert (=> d!1487123 (= res!1971208 (contains!15362 lt!1838383 (_1!30055 lt!1837932)))))

(declare-fun lt!1838385 () List!52349)

(assert (=> d!1487123 (= lt!1838383 (ListMap!4818 lt!1838385))))

(declare-fun lt!1838384 () Unit!122107)

(declare-fun lt!1838382 () Unit!122107)

(assert (=> d!1487123 (= lt!1838384 lt!1838382)))

(assert (=> d!1487123 (= (getValueByKey!1713 lt!1838385 (_1!30055 lt!1837932)) (Some!11964 (_2!30055 lt!1837932)))))

(assert (=> d!1487123 (= lt!1838382 (lemmaContainsTupThenGetReturnValue!972 lt!1838385 (_1!30055 lt!1837932) (_2!30055 lt!1837932)))))

(assert (=> d!1487123 (= lt!1838385 (insertNoDuplicatedKeys!480 (toList!5454 lt!1837927) (_1!30055 lt!1837932) (_2!30055 lt!1837932)))))

(assert (=> d!1487123 (= (+!2084 lt!1837927 lt!1837932) lt!1838383)))

(declare-fun b!4678694 () Bool)

(declare-fun res!1971207 () Bool)

(assert (=> b!4678694 (=> (not res!1971207) (not e!2919119))))

(assert (=> b!4678694 (= res!1971207 (= (getValueByKey!1713 (toList!5454 lt!1838383) (_1!30055 lt!1837932)) (Some!11964 (_2!30055 lt!1837932))))))

(declare-fun b!4678695 () Bool)

(assert (=> b!4678695 (= e!2919119 (contains!15365 (toList!5454 lt!1838383) lt!1837932))))

(assert (= (and d!1487123 res!1971208) b!4678694))

(assert (= (and b!4678694 res!1971207) b!4678695))

(declare-fun m!5574045 () Bool)

(assert (=> d!1487123 m!5574045))

(declare-fun m!5574047 () Bool)

(assert (=> d!1487123 m!5574047))

(declare-fun m!5574049 () Bool)

(assert (=> d!1487123 m!5574049))

(declare-fun m!5574051 () Bool)

(assert (=> d!1487123 m!5574051))

(declare-fun m!5574053 () Bool)

(assert (=> b!4678694 m!5574053))

(declare-fun m!5574055 () Bool)

(assert (=> b!4678695 m!5574055))

(assert (=> b!4678381 d!1487123))

(declare-fun d!1487125 () Bool)

(declare-fun e!2919120 () Bool)

(assert (=> d!1487125 e!2919120))

(declare-fun res!1971210 () Bool)

(assert (=> d!1487125 (=> (not res!1971210) (not e!2919120))))

(declare-fun lt!1838387 () ListMap!4817)

(assert (=> d!1487125 (= res!1971210 (contains!15362 lt!1838387 (_1!30055 (h!58430 oldBucket!34))))))

(declare-fun lt!1838389 () List!52349)

(assert (=> d!1487125 (= lt!1838387 (ListMap!4818 lt!1838389))))

(declare-fun lt!1838388 () Unit!122107)

(declare-fun lt!1838386 () Unit!122107)

(assert (=> d!1487125 (= lt!1838388 lt!1838386)))

(assert (=> d!1487125 (= (getValueByKey!1713 lt!1838389 (_1!30055 (h!58430 oldBucket!34))) (Some!11964 (_2!30055 (h!58430 oldBucket!34))))))

(assert (=> d!1487125 (= lt!1838386 (lemmaContainsTupThenGetReturnValue!972 lt!1838389 (_1!30055 (h!58430 oldBucket!34)) (_2!30055 (h!58430 oldBucket!34))))))

(assert (=> d!1487125 (= lt!1838389 (insertNoDuplicatedKeys!480 (toList!5454 lt!1837927) (_1!30055 (h!58430 oldBucket!34)) (_2!30055 (h!58430 oldBucket!34))))))

(assert (=> d!1487125 (= (+!2084 lt!1837927 (h!58430 oldBucket!34)) lt!1838387)))

(declare-fun b!4678696 () Bool)

(declare-fun res!1971209 () Bool)

(assert (=> b!4678696 (=> (not res!1971209) (not e!2919120))))

(assert (=> b!4678696 (= res!1971209 (= (getValueByKey!1713 (toList!5454 lt!1838387) (_1!30055 (h!58430 oldBucket!34))) (Some!11964 (_2!30055 (h!58430 oldBucket!34)))))))

(declare-fun b!4678697 () Bool)

(assert (=> b!4678697 (= e!2919120 (contains!15365 (toList!5454 lt!1838387) (h!58430 oldBucket!34)))))

(assert (= (and d!1487125 res!1971210) b!4678696))

(assert (= (and b!4678696 res!1971209) b!4678697))

(declare-fun m!5574057 () Bool)

(assert (=> d!1487125 m!5574057))

(declare-fun m!5574059 () Bool)

(assert (=> d!1487125 m!5574059))

(declare-fun m!5574061 () Bool)

(assert (=> d!1487125 m!5574061))

(declare-fun m!5574063 () Bool)

(assert (=> d!1487125 m!5574063))

(declare-fun m!5574065 () Bool)

(assert (=> b!4678696 m!5574065))

(declare-fun m!5574067 () Bool)

(assert (=> b!4678697 m!5574067))

(assert (=> b!4678381 d!1487125))

(declare-fun d!1487127 () Bool)

(assert (=> d!1487127 (= (eq!971 (addToMapMapFromBucket!1214 (Cons!52225 lt!1837932 lt!1837938) lt!1837926) (+!2084 lt!1837927 lt!1837932)) (= (content!9098 (toList!5454 (addToMapMapFromBucket!1214 (Cons!52225 lt!1837932 lt!1837938) lt!1837926))) (content!9098 (toList!5454 (+!2084 lt!1837927 lt!1837932)))))))

(declare-fun bs!1081392 () Bool)

(assert (= bs!1081392 d!1487127))

(declare-fun m!5574069 () Bool)

(assert (=> bs!1081392 m!5574069))

(declare-fun m!5574071 () Bool)

(assert (=> bs!1081392 m!5574071))

(assert (=> b!4678381 d!1487127))

(declare-fun d!1487129 () Bool)

(declare-fun e!2919123 () Bool)

(assert (=> d!1487129 e!2919123))

(declare-fun res!1971212 () Bool)

(assert (=> d!1487129 (=> res!1971212 e!2919123)))

(declare-fun e!2919126 () Bool)

(assert (=> d!1487129 (= res!1971212 e!2919126)))

(declare-fun res!1971213 () Bool)

(assert (=> d!1487129 (=> (not res!1971213) (not e!2919126))))

(declare-fun lt!1838390 () Bool)

(assert (=> d!1487129 (= res!1971213 (not lt!1838390))))

(declare-fun lt!1838393 () Bool)

(assert (=> d!1487129 (= lt!1838390 lt!1838393)))

(declare-fun lt!1838397 () Unit!122107)

(declare-fun e!2919125 () Unit!122107)

(assert (=> d!1487129 (= lt!1838397 e!2919125)))

(declare-fun c!800428 () Bool)

(assert (=> d!1487129 (= c!800428 lt!1838393)))

(assert (=> d!1487129 (= lt!1838393 (containsKey!2923 (toList!5454 lt!1837931) key!4653))))

(assert (=> d!1487129 (= (contains!15362 lt!1837931 key!4653) lt!1838390)))

(declare-fun b!4678698 () Bool)

(declare-fun e!2919121 () Bool)

(assert (=> b!4678698 (= e!2919123 e!2919121)))

(declare-fun res!1971211 () Bool)

(assert (=> b!4678698 (=> (not res!1971211) (not e!2919121))))

(assert (=> b!4678698 (= res!1971211 (isDefined!9220 (getValueByKey!1713 (toList!5454 lt!1837931) key!4653)))))

(declare-fun b!4678699 () Bool)

(assert (=> b!4678699 (= e!2919126 (not (contains!15366 (keys!18601 lt!1837931) key!4653)))))

(declare-fun b!4678700 () Bool)

(declare-fun e!2919124 () List!52352)

(assert (=> b!4678700 (= e!2919124 (getKeysList!810 (toList!5454 lt!1837931)))))

(declare-fun b!4678701 () Bool)

(declare-fun e!2919122 () Unit!122107)

(assert (=> b!4678701 (= e!2919125 e!2919122)))

(declare-fun c!800427 () Bool)

(declare-fun call!326971 () Bool)

(assert (=> b!4678701 (= c!800427 call!326971)))

(declare-fun b!4678702 () Bool)

(declare-fun lt!1838395 () Unit!122107)

(assert (=> b!4678702 (= e!2919125 lt!1838395)))

(declare-fun lt!1838394 () Unit!122107)

(assert (=> b!4678702 (= lt!1838394 (lemmaContainsKeyImpliesGetValueByKeyDefined!1605 (toList!5454 lt!1837931) key!4653))))

(assert (=> b!4678702 (isDefined!9220 (getValueByKey!1713 (toList!5454 lt!1837931) key!4653))))

(declare-fun lt!1838392 () Unit!122107)

(assert (=> b!4678702 (= lt!1838392 lt!1838394)))

(assert (=> b!4678702 (= lt!1838395 (lemmaInListThenGetKeysListContains!805 (toList!5454 lt!1837931) key!4653))))

(assert (=> b!4678702 call!326971))

(declare-fun b!4678703 () Bool)

(assert (=> b!4678703 (= e!2919121 (contains!15366 (keys!18601 lt!1837931) key!4653))))

(declare-fun b!4678704 () Bool)

(declare-fun Unit!122229 () Unit!122107)

(assert (=> b!4678704 (= e!2919122 Unit!122229)))

(declare-fun bm!326966 () Bool)

(assert (=> bm!326966 (= call!326971 (contains!15366 e!2919124 key!4653))))

(declare-fun c!800426 () Bool)

(assert (=> bm!326966 (= c!800426 c!800428)))

(declare-fun b!4678705 () Bool)

(assert (=> b!4678705 (= e!2919124 (keys!18601 lt!1837931))))

(declare-fun b!4678706 () Bool)

(assert (=> b!4678706 false))

(declare-fun lt!1838391 () Unit!122107)

(declare-fun lt!1838396 () Unit!122107)

(assert (=> b!4678706 (= lt!1838391 lt!1838396)))

(assert (=> b!4678706 (containsKey!2923 (toList!5454 lt!1837931) key!4653)))

(assert (=> b!4678706 (= lt!1838396 (lemmaInGetKeysListThenContainsKey!809 (toList!5454 lt!1837931) key!4653))))

(declare-fun Unit!122230 () Unit!122107)

(assert (=> b!4678706 (= e!2919122 Unit!122230)))

(assert (= (and d!1487129 c!800428) b!4678702))

(assert (= (and d!1487129 (not c!800428)) b!4678701))

(assert (= (and b!4678701 c!800427) b!4678706))

(assert (= (and b!4678701 (not c!800427)) b!4678704))

(assert (= (or b!4678702 b!4678701) bm!326966))

(assert (= (and bm!326966 c!800426) b!4678700))

(assert (= (and bm!326966 (not c!800426)) b!4678705))

(assert (= (and d!1487129 res!1971213) b!4678699))

(assert (= (and d!1487129 (not res!1971212)) b!4678698))

(assert (= (and b!4678698 res!1971211) b!4678703))

(declare-fun m!5574073 () Bool)

(assert (=> bm!326966 m!5574073))

(declare-fun m!5574075 () Bool)

(assert (=> b!4678698 m!5574075))

(assert (=> b!4678698 m!5574075))

(declare-fun m!5574077 () Bool)

(assert (=> b!4678698 m!5574077))

(declare-fun m!5574079 () Bool)

(assert (=> b!4678703 m!5574079))

(assert (=> b!4678703 m!5574079))

(declare-fun m!5574081 () Bool)

(assert (=> b!4678703 m!5574081))

(assert (=> b!4678699 m!5574079))

(assert (=> b!4678699 m!5574079))

(assert (=> b!4678699 m!5574081))

(declare-fun m!5574083 () Bool)

(assert (=> d!1487129 m!5574083))

(declare-fun m!5574085 () Bool)

(assert (=> b!4678700 m!5574085))

(assert (=> b!4678706 m!5574083))

(declare-fun m!5574087 () Bool)

(assert (=> b!4678706 m!5574087))

(assert (=> b!4678705 m!5574079))

(declare-fun m!5574089 () Bool)

(assert (=> b!4678702 m!5574089))

(assert (=> b!4678702 m!5574075))

(assert (=> b!4678702 m!5574075))

(assert (=> b!4678702 m!5574077))

(declare-fun m!5574091 () Bool)

(assert (=> b!4678702 m!5574091))

(assert (=> b!4678392 d!1487129))

(declare-fun bs!1081393 () Bool)

(declare-fun d!1487131 () Bool)

(assert (= bs!1081393 (and d!1487131 d!1487073)))

(declare-fun lambda!204281 () Int)

(assert (=> bs!1081393 (= lambda!204281 lambda!204255)))

(declare-fun bs!1081394 () Bool)

(assert (= bs!1081394 (and d!1487131 d!1487079)))

(assert (=> bs!1081394 (not (= lambda!204281 lambda!204258))))

(declare-fun bs!1081395 () Bool)

(assert (= bs!1081395 (and d!1487131 d!1487103)))

(assert (=> bs!1081395 (= lambda!204281 lambda!204267)))

(declare-fun bs!1081396 () Bool)

(assert (= bs!1081396 (and d!1487131 d!1487105)))

(assert (=> bs!1081396 (= lambda!204281 lambda!204268)))

(declare-fun bs!1081397 () Bool)

(assert (= bs!1081397 (and d!1487131 d!1487089)))

(assert (=> bs!1081397 (= lambda!204281 lambda!204266)))

(declare-fun bs!1081398 () Bool)

(assert (= bs!1081398 (and d!1487131 start!472264)))

(assert (=> bs!1081398 (= lambda!204281 lambda!204151)))

(declare-fun bs!1081399 () Bool)

(assert (= bs!1081399 (and d!1487131 d!1487083)))

(assert (=> bs!1081399 (= lambda!204281 lambda!204265)))

(declare-fun lt!1838398 () ListMap!4817)

(assert (=> d!1487131 (invariantList!1370 (toList!5454 lt!1838398))))

(declare-fun e!2919127 () ListMap!4817)

(assert (=> d!1487131 (= lt!1838398 e!2919127)))

(declare-fun c!800429 () Bool)

(assert (=> d!1487131 (= c!800429 ((_ is Cons!52226) (toList!5453 lm!2023)))))

(assert (=> d!1487131 (forall!11209 (toList!5453 lm!2023) lambda!204281)))

(assert (=> d!1487131 (= (extractMap!1808 (toList!5453 lm!2023)) lt!1838398)))

(declare-fun b!4678707 () Bool)

(assert (=> b!4678707 (= e!2919127 (addToMapMapFromBucket!1214 (_2!30056 (h!58431 (toList!5453 lm!2023))) (extractMap!1808 (t!359498 (toList!5453 lm!2023)))))))

(declare-fun b!4678708 () Bool)

(assert (=> b!4678708 (= e!2919127 (ListMap!4818 Nil!52225))))

(assert (= (and d!1487131 c!800429) b!4678707))

(assert (= (and d!1487131 (not c!800429)) b!4678708))

(declare-fun m!5574093 () Bool)

(assert (=> d!1487131 m!5574093))

(declare-fun m!5574095 () Bool)

(assert (=> d!1487131 m!5574095))

(assert (=> b!4678707 m!5573293))

(assert (=> b!4678707 m!5573293))

(declare-fun m!5574097 () Bool)

(assert (=> b!4678707 m!5574097))

(assert (=> b!4678392 d!1487131))

(declare-fun b!4678713 () Bool)

(declare-fun tp!1344882 () Bool)

(declare-fun e!2919130 () Bool)

(assert (=> b!4678713 (= e!2919130 (and tp_is_empty!30421 tp_is_empty!30423 tp!1344882))))

(assert (=> b!4678389 (= tp!1344867 e!2919130)))

(assert (= (and b!4678389 ((_ is Cons!52225) (t!359497 oldBucket!34))) b!4678713))

(declare-fun b!4678718 () Bool)

(declare-fun e!2919133 () Bool)

(declare-fun tp!1344887 () Bool)

(declare-fun tp!1344888 () Bool)

(assert (=> b!4678718 (= e!2919133 (and tp!1344887 tp!1344888))))

(assert (=> b!4678377 (= tp!1344869 e!2919133)))

(assert (= (and b!4678377 ((_ is Cons!52226) (toList!5453 lm!2023))) b!4678718))

(declare-fun tp!1344889 () Bool)

(declare-fun b!4678719 () Bool)

(declare-fun e!2919134 () Bool)

(assert (=> b!4678719 (= e!2919134 (and tp_is_empty!30421 tp_is_empty!30423 tp!1344889))))

(assert (=> b!4678387 (= tp!1344868 e!2919134)))

(assert (= (and b!4678387 ((_ is Cons!52225) (t!359497 newBucket!218))) b!4678719))

(declare-fun b_lambda!176625 () Bool)

(assert (= b_lambda!176623 (or start!472264 b_lambda!176625)))

(declare-fun bs!1081400 () Bool)

(declare-fun d!1487133 () Bool)

(assert (= bs!1081400 (and d!1487133 start!472264)))

(assert (=> bs!1081400 (= (dynLambda!21673 lambda!204151 (h!58431 lt!1837933)) (noDuplicateKeys!1782 (_2!30056 (h!58431 lt!1837933))))))

(declare-fun m!5574099 () Bool)

(assert (=> bs!1081400 m!5574099))

(assert (=> b!4678682 d!1487133))

(declare-fun b_lambda!176627 () Bool)

(assert (= b_lambda!176621 (or start!472264 b_lambda!176627)))

(declare-fun bs!1081401 () Bool)

(declare-fun d!1487135 () Bool)

(assert (= bs!1081401 (and d!1487135 start!472264)))

(assert (=> bs!1081401 (= (dynLambda!21673 lambda!204151 (h!58431 (toList!5453 lm!2023))) (noDuplicateKeys!1782 (_2!30056 (h!58431 (toList!5453 lm!2023)))))))

(assert (=> bs!1081401 m!5573909))

(assert (=> b!4678672 d!1487135))

(check-sat (not b!4678706) (not bm!326956) (not b!4678646) (not d!1487113) (not d!1487029) (not bm!326962) (not b!4678639) (not bm!326943) (not b!4678617) (not b!4678696) (not b!4678638) (not bm!326966) (not b!4678702) (not b!4678542) (not d!1487087) (not b!4678614) (not b_lambda!176627) (not d!1487045) (not bm!326957) (not b!4678623) (not b!4678683) (not bm!326963) (not b!4678695) (not d!1487091) (not bm!326965) (not b!4678613) (not b!4678691) (not b!4678666) (not d!1487039) (not d!1487043) (not bm!326941) (not b!4678610) (not b!4678637) (not b!4678693) tp_is_empty!30423 (not bm!326939) (not b!4678676) (not bm!326940) (not b!4678572) (not b!4678535) (not b!4678703) (not b!4678685) (not bs!1081400) (not d!1487131) tp_is_empty!30421 (not d!1487127) (not d!1487107) (not d!1487083) (not d!1487105) (not b!4678544) (not b!4678575) (not b!4678674) (not d!1487089) (not bm!326955) (not bs!1081401) (not d!1487081) (not b!4678718) (not d!1487129) (not b!4678573) (not b!4678533) (not bm!326938) (not b!4678561) (not d!1487073) (not b!4678697) (not bm!326959) (not d!1487079) (not b!4678641) (not b!4678690) (not bm!326961) (not b!4678689) (not b!4678673) (not d!1487099) (not b!4678534) (not b!4678555) (not b!4678608) (not bm!326958) (not d!1487103) (not b!4678719) (not b_lambda!176625) (not b!4678686) (not d!1487085) (not b!4678615) (not d!1487095) (not b!4678655) (not b!4678611) (not bm!326942) (not d!1486977) (not d!1487049) (not b!4678619) (not b!4678694) (not b!4678560) (not b!4678606) (not b!4678616) (not bm!326960) (not d!1487121) (not d!1487115) (not d!1487117) (not b!4678705) (not b!4678554) (not b!4678622) (not b!4678684) (not b!4678537) (not b!4678620) (not b!4678713) (not b!4678699) (not b!4678648) (not d!1487111) (not b!4678607) (not d!1487123) (not b!4678698) (not b!4678574) (not d!1487125) (not bm!326964) (not b!4678541) (not b!4678688) (not d!1487071) (not b!4678707) (not d!1487063) (not b!4678540) (not b!4678700))
(check-sat)
