; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471600 () Bool)

(assert start!471600)

(declare-fun b!4673305 () Bool)

(declare-fun res!1967729 () Bool)

(declare-fun e!2916246 () Bool)

(assert (=> b!4673305 (=> (not res!1967729) (not e!2916246))))

(declare-datatypes ((K!13480 0))(
  ( (K!13481 (val!19055 Int)) )
))
(declare-datatypes ((V!13726 0))(
  ( (V!13727 (val!19056 Int)) )
))
(declare-datatypes ((tuple2!53322 0))(
  ( (tuple2!53323 (_1!29955 K!13480) (_2!29955 V!13726)) )
))
(declare-datatypes ((List!52232 0))(
  ( (Nil!52108) (Cons!52108 (h!58296 tuple2!53322) (t!359370 List!52232)) )
))
(declare-fun oldBucket!34 () List!52232)

(declare-fun noDuplicateKeys!1732 (List!52232) Bool)

(assert (=> b!4673305 (= res!1967729 (noDuplicateKeys!1732 oldBucket!34))))

(declare-fun b!4673306 () Bool)

(declare-fun res!1967719 () Bool)

(assert (=> b!4673306 (=> (not res!1967719) (not e!2916246))))

(declare-fun newBucket!218 () List!52232)

(declare-fun key!4653 () K!13480)

(declare-fun removePairForKey!1327 (List!52232 K!13480) List!52232)

(assert (=> b!4673306 (= res!1967719 (= (removePairForKey!1327 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4673307 () Bool)

(declare-fun e!2916244 () Bool)

(declare-datatypes ((ListMap!4717 0))(
  ( (ListMap!4718 (toList!5353 List!52232)) )
))
(declare-fun lt!1834249 () ListMap!4717)

(declare-datatypes ((tuple2!53324 0))(
  ( (tuple2!53325 (_1!29956 (_ BitVec 64)) (_2!29956 List!52232)) )
))
(declare-datatypes ((List!52233 0))(
  ( (Nil!52109) (Cons!52109 (h!58297 tuple2!53324) (t!359371 List!52233)) )
))
(declare-datatypes ((ListLongMap!3883 0))(
  ( (ListLongMap!3884 (toList!5354 List!52233)) )
))
(declare-fun lm!2023 () ListLongMap!3883)

(declare-fun addToMapMapFromBucket!1164 (List!52232 ListMap!4717) ListMap!4717)

(declare-fun extractMap!1758 (List!52233) ListMap!4717)

(assert (=> b!4673307 (= e!2916244 (= lt!1834249 (addToMapMapFromBucket!1164 (_2!29956 (h!58297 (toList!5354 lm!2023))) (extractMap!1758 (t!359371 (toList!5354 lm!2023))))))))

(declare-fun b!4673308 () Bool)

(declare-fun res!1967721 () Bool)

(assert (=> b!4673308 (=> (not res!1967721) (not e!2916246))))

(declare-datatypes ((Hashable!6101 0))(
  ( (HashableExt!6100 (__x!31804 Int)) )
))
(declare-fun hashF!1323 () Hashable!6101)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1558 (List!52232 (_ BitVec 64) Hashable!6101) Bool)

(assert (=> b!4673308 (= res!1967721 (allKeysSameHash!1558 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4673309 () Bool)

(declare-fun e!2916241 () Bool)

(declare-fun e!2916242 () Bool)

(assert (=> b!4673309 (= e!2916241 (not e!2916242))))

(declare-fun res!1967725 () Bool)

(assert (=> b!4673309 (=> res!1967725 e!2916242)))

(get-info :version)

(assert (=> b!4673309 (= res!1967725 (or (not ((_ is Cons!52108) oldBucket!34)) (not (= (_1!29955 (h!58296 oldBucket!34)) key!4653))))))

(assert (=> b!4673309 e!2916244))

(declare-fun res!1967726 () Bool)

(assert (=> b!4673309 (=> (not res!1967726) (not e!2916244))))

(declare-fun tail!8299 (ListLongMap!3883) ListLongMap!3883)

(assert (=> b!4673309 (= res!1967726 (= (t!359371 (toList!5354 lm!2023)) (toList!5354 (tail!8299 lm!2023))))))

(declare-fun res!1967722 () Bool)

(assert (=> start!471600 (=> (not res!1967722) (not e!2916246))))

(declare-fun lambda!202986 () Int)

(declare-fun forall!11142 (List!52233 Int) Bool)

(assert (=> start!471600 (= res!1967722 (forall!11142 (toList!5354 lm!2023) lambda!202986))))

(assert (=> start!471600 e!2916246))

(declare-fun e!2916247 () Bool)

(declare-fun inv!67354 (ListLongMap!3883) Bool)

(assert (=> start!471600 (and (inv!67354 lm!2023) e!2916247)))

(declare-fun tp_is_empty!30221 () Bool)

(assert (=> start!471600 tp_is_empty!30221))

(declare-fun e!2916245 () Bool)

(assert (=> start!471600 e!2916245))

(assert (=> start!471600 true))

(declare-fun e!2916243 () Bool)

(assert (=> start!471600 e!2916243))

(declare-fun b!4673310 () Bool)

(assert (=> b!4673310 (= e!2916242 (not (= oldBucket!34 Nil!52108)))))

(declare-fun tp!1344237 () Bool)

(declare-fun b!4673311 () Bool)

(declare-fun tp_is_empty!30223 () Bool)

(assert (=> b!4673311 (= e!2916243 (and tp_is_empty!30221 tp_is_empty!30223 tp!1344237))))

(declare-fun b!4673312 () Bool)

(declare-fun res!1967727 () Bool)

(assert (=> b!4673312 (=> (not res!1967727) (not e!2916241))))

(declare-fun allKeysSameHashInMap!1646 (ListLongMap!3883 Hashable!6101) Bool)

(assert (=> b!4673312 (= res!1967727 (allKeysSameHashInMap!1646 lm!2023 hashF!1323))))

(declare-fun b!4673313 () Bool)

(declare-fun res!1967718 () Bool)

(assert (=> b!4673313 (=> (not res!1967718) (not e!2916241))))

(declare-fun head!9772 (List!52233) tuple2!53324)

(assert (=> b!4673313 (= res!1967718 (= (head!9772 (toList!5354 lm!2023)) (tuple2!53325 hash!405 oldBucket!34)))))

(declare-fun b!4673314 () Bool)

(declare-fun res!1967730 () Bool)

(assert (=> b!4673314 (=> res!1967730 e!2916242)))

(declare-fun tail!8300 (List!52232) List!52232)

(assert (=> b!4673314 (= res!1967730 (not (= (tail!8300 oldBucket!34) newBucket!218)))))

(declare-fun b!4673315 () Bool)

(assert (=> b!4673315 (= e!2916246 e!2916241)))

(declare-fun res!1967724 () Bool)

(assert (=> b!4673315 (=> (not res!1967724) (not e!2916241))))

(declare-fun contains!15281 (ListMap!4717 K!13480) Bool)

(assert (=> b!4673315 (= res!1967724 (contains!15281 lt!1834249 key!4653))))

(assert (=> b!4673315 (= lt!1834249 (extractMap!1758 (toList!5354 lm!2023)))))

(declare-fun b!4673316 () Bool)

(declare-fun res!1967728 () Bool)

(assert (=> b!4673316 (=> (not res!1967728) (not e!2916241))))

(declare-fun hash!3887 (Hashable!6101 K!13480) (_ BitVec 64))

(assert (=> b!4673316 (= res!1967728 (= (hash!3887 hashF!1323 key!4653) hash!405))))

(declare-fun b!4673317 () Bool)

(declare-fun res!1967731 () Bool)

(assert (=> b!4673317 (=> (not res!1967731) (not e!2916246))))

(assert (=> b!4673317 (= res!1967731 (noDuplicateKeys!1732 newBucket!218))))

(declare-fun b!4673318 () Bool)

(declare-fun tp!1344238 () Bool)

(assert (=> b!4673318 (= e!2916247 tp!1344238)))

(declare-fun b!4673319 () Bool)

(declare-fun res!1967723 () Bool)

(assert (=> b!4673319 (=> (not res!1967723) (not e!2916241))))

(assert (=> b!4673319 (= res!1967723 (allKeysSameHash!1558 newBucket!218 hash!405 hashF!1323))))

(declare-fun tp!1344239 () Bool)

(declare-fun b!4673320 () Bool)

(assert (=> b!4673320 (= e!2916245 (and tp_is_empty!30221 tp_is_empty!30223 tp!1344239))))

(declare-fun b!4673321 () Bool)

(declare-fun res!1967720 () Bool)

(assert (=> b!4673321 (=> (not res!1967720) (not e!2916241))))

(assert (=> b!4673321 (= res!1967720 ((_ is Cons!52109) (toList!5354 lm!2023)))))

(assert (= (and start!471600 res!1967722) b!4673305))

(assert (= (and b!4673305 res!1967729) b!4673317))

(assert (= (and b!4673317 res!1967731) b!4673306))

(assert (= (and b!4673306 res!1967719) b!4673308))

(assert (= (and b!4673308 res!1967721) b!4673315))

(assert (= (and b!4673315 res!1967724) b!4673316))

(assert (= (and b!4673316 res!1967728) b!4673319))

(assert (= (and b!4673319 res!1967723) b!4673312))

(assert (= (and b!4673312 res!1967727) b!4673313))

(assert (= (and b!4673313 res!1967718) b!4673321))

(assert (= (and b!4673321 res!1967720) b!4673309))

(assert (= (and b!4673309 res!1967726) b!4673307))

(assert (= (and b!4673309 (not res!1967725)) b!4673314))

(assert (= (and b!4673314 (not res!1967730)) b!4673310))

(assert (= start!471600 b!4673318))

(assert (= (and start!471600 ((_ is Cons!52108) oldBucket!34)) b!4673320))

(assert (= (and start!471600 ((_ is Cons!52108) newBucket!218)) b!4673311))

(declare-fun m!5566901 () Bool)

(assert (=> start!471600 m!5566901))

(declare-fun m!5566903 () Bool)

(assert (=> start!471600 m!5566903))

(declare-fun m!5566905 () Bool)

(assert (=> b!4673309 m!5566905))

(declare-fun m!5566907 () Bool)

(assert (=> b!4673313 m!5566907))

(declare-fun m!5566909 () Bool)

(assert (=> b!4673319 m!5566909))

(declare-fun m!5566911 () Bool)

(assert (=> b!4673314 m!5566911))

(declare-fun m!5566913 () Bool)

(assert (=> b!4673316 m!5566913))

(declare-fun m!5566915 () Bool)

(assert (=> b!4673306 m!5566915))

(declare-fun m!5566917 () Bool)

(assert (=> b!4673308 m!5566917))

(declare-fun m!5566919 () Bool)

(assert (=> b!4673307 m!5566919))

(assert (=> b!4673307 m!5566919))

(declare-fun m!5566921 () Bool)

(assert (=> b!4673307 m!5566921))

(declare-fun m!5566923 () Bool)

(assert (=> b!4673317 m!5566923))

(declare-fun m!5566925 () Bool)

(assert (=> b!4673312 m!5566925))

(declare-fun m!5566927 () Bool)

(assert (=> b!4673305 m!5566927))

(declare-fun m!5566929 () Bool)

(assert (=> b!4673315 m!5566929))

(declare-fun m!5566931 () Bool)

(assert (=> b!4673315 m!5566931))

(check-sat (not b!4673319) tp_is_empty!30221 (not b!4673318) (not b!4673309) (not start!471600) tp_is_empty!30223 (not b!4673313) (not b!4673312) (not b!4673317) (not b!4673316) (not b!4673305) (not b!4673314) (not b!4673320) (not b!4673308) (not b!4673307) (not b!4673311) (not b!4673315) (not b!4673306))
(check-sat)
