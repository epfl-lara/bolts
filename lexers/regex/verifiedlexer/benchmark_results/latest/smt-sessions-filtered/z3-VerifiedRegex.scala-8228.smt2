; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425928 () Bool)

(assert start!425928)

(declare-fun b!4386307 () Bool)

(declare-fun e!2730712 () Bool)

(declare-fun tp_is_empty!25601 () Bool)

(declare-fun tp_is_empty!25603 () Bool)

(declare-fun tp!1331350 () Bool)

(assert (=> b!4386307 (= e!2730712 (and tp_is_empty!25601 tp_is_empty!25603 tp!1331350))))

(declare-fun b!4386308 () Bool)

(declare-fun res!1807338 () Bool)

(declare-fun e!2730715 () Bool)

(assert (=> b!4386308 (=> (not res!1807338) (not e!2730715))))

(declare-datatypes ((V!10791 0))(
  ( (V!10792 (val!16707 Int)) )
))
(declare-datatypes ((K!10545 0))(
  ( (K!10546 (val!16708 Int)) )
))
(declare-datatypes ((tuple2!48734 0))(
  ( (tuple2!48735 (_1!27661 K!10545) (_2!27661 V!10791)) )
))
(declare-datatypes ((List!49312 0))(
  ( (Nil!49188) (Cons!49188 (h!54793 tuple2!48734) (t!356242 List!49312)) )
))
(declare-datatypes ((tuple2!48736 0))(
  ( (tuple2!48737 (_1!27662 (_ BitVec 64)) (_2!27662 List!49312)) )
))
(declare-datatypes ((List!49313 0))(
  ( (Nil!49189) (Cons!49189 (h!54794 tuple2!48736) (t!356243 List!49313)) )
))
(declare-datatypes ((ListLongMap!1815 0))(
  ( (ListLongMap!1816 (toList!3165 List!49313)) )
))
(declare-fun lm!1707 () ListLongMap!1815)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11539 (ListLongMap!1815 (_ BitVec 64)) Bool)

(assert (=> b!4386308 (= res!1807338 (contains!11539 lm!1707 hash!377))))

(declare-fun lt!1595886 () tuple2!48736)

(declare-fun lt!1595899 () ListLongMap!1815)

(declare-fun b!4386309 () Bool)

(declare-fun e!2730711 () Bool)

(get-info :version)

(assert (=> b!4386309 (= e!2730711 (or (not ((_ is Cons!49189) (toList!3165 lm!1707))) (not (= (_1!27662 (h!54794 (toList!3165 lm!1707))) hash!377)) (= lt!1595899 (ListLongMap!1816 (Cons!49189 lt!1595886 (t!356243 (toList!3165 lm!1707)))))))))

(declare-fun b!4386310 () Bool)

(declare-fun res!1807340 () Bool)

(declare-fun e!2730710 () Bool)

(assert (=> b!4386310 (=> (not res!1807340) (not e!2730710))))

(declare-fun newBucket!200 () List!49312)

(declare-datatypes ((Hashable!4983 0))(
  ( (HashableExt!4982 (__x!30686 Int)) )
))
(declare-fun hashF!1247 () Hashable!4983)

(declare-fun allKeysSameHash!549 (List!49312 (_ BitVec 64) Hashable!4983) Bool)

(assert (=> b!4386310 (= res!1807340 (allKeysSameHash!549 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4386311 () Bool)

(declare-fun e!2730716 () Bool)

(assert (=> b!4386311 (= e!2730715 (not e!2730716))))

(declare-fun res!1807332 () Bool)

(assert (=> b!4386311 (=> res!1807332 e!2730716)))

(declare-fun lt!1595900 () List!49312)

(assert (=> b!4386311 (= res!1807332 (not (= newBucket!200 lt!1595900)))))

(declare-fun lt!1595909 () tuple2!48734)

(declare-fun lt!1595890 () List!49312)

(assert (=> b!4386311 (= lt!1595900 (Cons!49188 lt!1595909 lt!1595890))))

(declare-fun lt!1595885 () List!49312)

(declare-fun key!3918 () K!10545)

(declare-fun removePairForKey!559 (List!49312 K!10545) List!49312)

(assert (=> b!4386311 (= lt!1595890 (removePairForKey!559 lt!1595885 key!3918))))

(declare-fun newValue!99 () V!10791)

(assert (=> b!4386311 (= lt!1595909 (tuple2!48735 key!3918 newValue!99))))

(declare-fun lambda!146431 () Int)

(declare-datatypes ((Unit!76850 0))(
  ( (Unit!76851) )
))
(declare-fun lt!1595893 () Unit!76850)

(declare-fun lt!1595887 () tuple2!48736)

(declare-fun forallContained!1933 (List!49313 Int tuple2!48736) Unit!76850)

(assert (=> b!4386311 (= lt!1595893 (forallContained!1933 (toList!3165 lm!1707) lambda!146431 lt!1595887))))

(declare-fun contains!11540 (List!49313 tuple2!48736) Bool)

(assert (=> b!4386311 (contains!11540 (toList!3165 lm!1707) lt!1595887)))

(assert (=> b!4386311 (= lt!1595887 (tuple2!48737 hash!377 lt!1595885))))

(declare-fun lt!1595895 () Unit!76850)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!436 (List!49313 (_ BitVec 64) List!49312) Unit!76850)

(assert (=> b!4386311 (= lt!1595895 (lemmaGetValueByKeyImpliesContainsTuple!436 (toList!3165 lm!1707) hash!377 lt!1595885))))

(declare-fun apply!11443 (ListLongMap!1815 (_ BitVec 64)) List!49312)

(assert (=> b!4386311 (= lt!1595885 (apply!11443 lm!1707 hash!377))))

(declare-fun b!4386312 () Bool)

(declare-fun res!1807334 () Bool)

(assert (=> b!4386312 (=> (not res!1807334) (not e!2730710))))

(declare-fun allKeysSameHashInMap!695 (ListLongMap!1815 Hashable!4983) Bool)

(assert (=> b!4386312 (= res!1807334 (allKeysSameHashInMap!695 lm!1707 hashF!1247))))

(declare-fun res!1807333 () Bool)

(assert (=> start!425928 (=> (not res!1807333) (not e!2730710))))

(declare-fun forall!9295 (List!49313 Int) Bool)

(assert (=> start!425928 (= res!1807333 (forall!9295 (toList!3165 lm!1707) lambda!146431))))

(assert (=> start!425928 e!2730710))

(assert (=> start!425928 e!2730712))

(assert (=> start!425928 true))

(declare-fun e!2730714 () Bool)

(declare-fun inv!64731 (ListLongMap!1815) Bool)

(assert (=> start!425928 (and (inv!64731 lm!1707) e!2730714)))

(assert (=> start!425928 tp_is_empty!25601))

(assert (=> start!425928 tp_is_empty!25603))

(declare-fun b!4386313 () Bool)

(declare-fun res!1807341 () Bool)

(assert (=> b!4386313 (=> (not res!1807341) (not e!2730711))))

(assert (=> b!4386313 (= res!1807341 (forall!9295 (toList!3165 lt!1595899) lambda!146431))))

(declare-fun b!4386314 () Bool)

(declare-fun e!2730713 () Bool)

(assert (=> b!4386314 (= e!2730713 true)))

(declare-fun lt!1595908 () ListLongMap!1815)

(declare-datatypes ((ListMap!2409 0))(
  ( (ListMap!2410 (toList!3166 List!49312)) )
))
(declare-fun lt!1595891 () ListMap!2409)

(declare-fun eq!329 (ListMap!2409 ListMap!2409) Bool)

(declare-fun extractMap!650 (List!49313) ListMap!2409)

(declare-fun +!813 (ListLongMap!1815 tuple2!48736) ListLongMap!1815)

(declare-fun +!814 (ListMap!2409 tuple2!48734) ListMap!2409)

(assert (=> b!4386314 (eq!329 (extractMap!650 (toList!3165 (+!813 lt!1595908 lt!1595886))) (+!814 lt!1595891 lt!1595909))))

(declare-fun lt!1595897 () Unit!76850)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!91 (ListLongMap!1815 (_ BitVec 64) List!49312 K!10545 V!10791 Hashable!4983) Unit!76850)

(assert (=> b!4386314 (= lt!1595897 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!91 lt!1595908 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4386315 () Bool)

(declare-fun e!2730707 () Bool)

(assert (=> b!4386315 (= e!2730707 e!2730713)))

(declare-fun res!1807336 () Bool)

(assert (=> b!4386315 (=> res!1807336 e!2730713)))

(declare-fun lt!1595901 () Bool)

(assert (=> b!4386315 (= res!1807336 lt!1595901)))

(declare-fun e!2730709 () Bool)

(assert (=> b!4386315 e!2730709))

(declare-fun res!1807339 () Bool)

(assert (=> b!4386315 (=> (not res!1807339) (not e!2730709))))

(declare-fun lt!1595898 () ListMap!2409)

(declare-fun contains!11541 (ListMap!2409 K!10545) Bool)

(assert (=> b!4386315 (= res!1807339 (= lt!1595901 (contains!11541 lt!1595898 key!3918)))))

(assert (=> b!4386315 (= lt!1595901 (contains!11541 lt!1595891 key!3918))))

(declare-fun lt!1595894 () Unit!76850)

(declare-fun lemmaEquivalentThenSameContains!116 (ListMap!2409 ListMap!2409 K!10545) Unit!76850)

(assert (=> b!4386315 (= lt!1595894 (lemmaEquivalentThenSameContains!116 lt!1595891 lt!1595898 key!3918))))

(assert (=> b!4386315 (eq!329 lt!1595891 lt!1595898)))

(declare-fun lt!1595889 () ListMap!2409)

(declare-fun -!266 (ListMap!2409 K!10545) ListMap!2409)

(assert (=> b!4386315 (= lt!1595898 (-!266 lt!1595889 key!3918))))

(declare-fun lt!1595903 () Unit!76850)

(declare-fun lt!1595910 () List!49312)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!81 (ListLongMap!1815 (_ BitVec 64) List!49312 K!10545 Hashable!4983) Unit!76850)

(assert (=> b!4386315 (= lt!1595903 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!81 lm!1707 hash!377 lt!1595910 key!3918 hashF!1247))))

(declare-fun lt!1595907 () ListMap!2409)

(assert (=> b!4386315 (= lt!1595907 lt!1595891)))

(assert (=> b!4386315 (= lt!1595891 (extractMap!650 (toList!3165 lt!1595908)))))

(assert (=> b!4386315 (= lt!1595910 lt!1595890)))

(assert (=> b!4386315 (= lt!1595908 (+!813 lm!1707 (tuple2!48737 hash!377 lt!1595910)))))

(declare-fun tail!7084 (List!49312) List!49312)

(assert (=> b!4386315 (= lt!1595910 (tail!7084 newBucket!200))))

(declare-fun e!2730708 () Bool)

(assert (=> b!4386315 e!2730708))

(declare-fun res!1807344 () Bool)

(assert (=> b!4386315 (=> (not res!1807344) (not e!2730708))))

(declare-fun lt!1595904 () ListMap!2409)

(declare-fun lt!1595905 () ListMap!2409)

(assert (=> b!4386315 (= res!1807344 (eq!329 lt!1595904 lt!1595905))))

(assert (=> b!4386315 (= lt!1595905 (+!814 lt!1595907 lt!1595909))))

(declare-fun lt!1595892 () ListMap!2409)

(declare-fun addToMapMapFromBucket!272 (List!49312 ListMap!2409) ListMap!2409)

(assert (=> b!4386315 (= lt!1595907 (addToMapMapFromBucket!272 lt!1595890 lt!1595892))))

(declare-fun lt!1595896 () Unit!76850)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!138 (ListMap!2409 K!10545 V!10791 List!49312) Unit!76850)

(assert (=> b!4386315 (= lt!1595896 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!138 lt!1595892 key!3918 newValue!99 lt!1595890))))

(declare-fun lt!1595902 () ListMap!2409)

(assert (=> b!4386315 (= lt!1595902 lt!1595904)))

(assert (=> b!4386315 (= lt!1595904 (addToMapMapFromBucket!272 lt!1595890 (+!814 lt!1595892 lt!1595909)))))

(declare-fun lt!1595906 () ListMap!2409)

(assert (=> b!4386315 (= lt!1595906 lt!1595902)))

(assert (=> b!4386315 (= lt!1595902 (addToMapMapFromBucket!272 lt!1595900 lt!1595892))))

(assert (=> b!4386315 (= lt!1595906 (addToMapMapFromBucket!272 newBucket!200 lt!1595892))))

(assert (=> b!4386315 (= lt!1595906 (extractMap!650 (toList!3165 lt!1595899)))))

(assert (=> b!4386315 (= lt!1595892 (extractMap!650 (t!356243 (toList!3165 lm!1707))))))

(declare-fun b!4386316 () Bool)

(assert (=> b!4386316 (= e!2730708 (eq!329 lt!1595902 lt!1595905))))

(declare-fun b!4386317 () Bool)

(assert (=> b!4386317 (= e!2730710 e!2730715)))

(declare-fun res!1807342 () Bool)

(assert (=> b!4386317 (=> (not res!1807342) (not e!2730715))))

(assert (=> b!4386317 (= res!1807342 (contains!11541 lt!1595889 key!3918))))

(assert (=> b!4386317 (= lt!1595889 (extractMap!650 (toList!3165 lm!1707)))))

(declare-fun b!4386318 () Bool)

(assert (=> b!4386318 (= e!2730716 e!2730707)))

(declare-fun res!1807337 () Bool)

(assert (=> b!4386318 (=> res!1807337 e!2730707)))

(assert (=> b!4386318 (= res!1807337 (or (not ((_ is Cons!49189) (toList!3165 lm!1707))) (not (= (_1!27662 (h!54794 (toList!3165 lm!1707))) hash!377))))))

(assert (=> b!4386318 e!2730711))

(declare-fun res!1807345 () Bool)

(assert (=> b!4386318 (=> (not res!1807345) (not e!2730711))))

(assert (=> b!4386318 (= res!1807345 (forall!9295 (toList!3165 lt!1595899) lambda!146431))))

(assert (=> b!4386318 (= lt!1595899 (+!813 lm!1707 lt!1595886))))

(assert (=> b!4386318 (= lt!1595886 (tuple2!48737 hash!377 newBucket!200))))

(declare-fun lt!1595888 () Unit!76850)

(declare-fun addValidProp!237 (ListLongMap!1815 Int (_ BitVec 64) List!49312) Unit!76850)

(assert (=> b!4386318 (= lt!1595888 (addValidProp!237 lm!1707 lambda!146431 hash!377 newBucket!200))))

(assert (=> b!4386318 (forall!9295 (toList!3165 lm!1707) lambda!146431)))

(declare-fun b!4386319 () Bool)

(declare-fun res!1807343 () Bool)

(assert (=> b!4386319 (=> res!1807343 e!2730716)))

(declare-fun noDuplicateKeys!591 (List!49312) Bool)

(assert (=> b!4386319 (= res!1807343 (not (noDuplicateKeys!591 newBucket!200)))))

(declare-fun b!4386320 () Bool)

(declare-fun res!1807335 () Bool)

(assert (=> b!4386320 (=> (not res!1807335) (not e!2730710))))

(declare-fun hash!1778 (Hashable!4983 K!10545) (_ BitVec 64))

(assert (=> b!4386320 (= res!1807335 (= (hash!1778 hashF!1247 key!3918) hash!377))))

(declare-fun b!4386321 () Bool)

(declare-fun tp!1331349 () Bool)

(assert (=> b!4386321 (= e!2730714 tp!1331349)))

(declare-fun b!4386322 () Bool)

(assert (=> b!4386322 (= e!2730709 (= (apply!11443 lt!1595908 hash!377) lt!1595910))))

(assert (= (and start!425928 res!1807333) b!4386312))

(assert (= (and b!4386312 res!1807334) b!4386320))

(assert (= (and b!4386320 res!1807335) b!4386310))

(assert (= (and b!4386310 res!1807340) b!4386317))

(assert (= (and b!4386317 res!1807342) b!4386308))

(assert (= (and b!4386308 res!1807338) b!4386311))

(assert (= (and b!4386311 (not res!1807332)) b!4386319))

(assert (= (and b!4386319 (not res!1807343)) b!4386318))

(assert (= (and b!4386318 res!1807345) b!4386313))

(assert (= (and b!4386313 res!1807341) b!4386309))

(assert (= (and b!4386318 (not res!1807337)) b!4386315))

(assert (= (and b!4386315 res!1807344) b!4386316))

(assert (= (and b!4386315 res!1807339) b!4386322))

(assert (= (and b!4386315 (not res!1807336)) b!4386314))

(assert (= (and start!425928 ((_ is Cons!49188) newBucket!200)) b!4386307))

(assert (= start!425928 b!4386321))

(declare-fun m!5034333 () Bool)

(assert (=> b!4386312 m!5034333))

(declare-fun m!5034335 () Bool)

(assert (=> b!4386317 m!5034335))

(declare-fun m!5034337 () Bool)

(assert (=> b!4386317 m!5034337))

(declare-fun m!5034339 () Bool)

(assert (=> b!4386311 m!5034339))

(declare-fun m!5034341 () Bool)

(assert (=> b!4386311 m!5034341))

(declare-fun m!5034343 () Bool)

(assert (=> b!4386311 m!5034343))

(declare-fun m!5034345 () Bool)

(assert (=> b!4386311 m!5034345))

(declare-fun m!5034347 () Bool)

(assert (=> b!4386311 m!5034347))

(declare-fun m!5034349 () Bool)

(assert (=> b!4386320 m!5034349))

(declare-fun m!5034351 () Bool)

(assert (=> b!4386314 m!5034351))

(declare-fun m!5034353 () Bool)

(assert (=> b!4386314 m!5034353))

(declare-fun m!5034355 () Bool)

(assert (=> b!4386314 m!5034355))

(assert (=> b!4386314 m!5034355))

(assert (=> b!4386314 m!5034353))

(declare-fun m!5034357 () Bool)

(assert (=> b!4386314 m!5034357))

(declare-fun m!5034359 () Bool)

(assert (=> b!4386314 m!5034359))

(declare-fun m!5034361 () Bool)

(assert (=> b!4386310 m!5034361))

(declare-fun m!5034363 () Bool)

(assert (=> b!4386313 m!5034363))

(declare-fun m!5034365 () Bool)

(assert (=> b!4386315 m!5034365))

(declare-fun m!5034367 () Bool)

(assert (=> b!4386315 m!5034367))

(declare-fun m!5034369 () Bool)

(assert (=> b!4386315 m!5034369))

(declare-fun m!5034371 () Bool)

(assert (=> b!4386315 m!5034371))

(declare-fun m!5034373 () Bool)

(assert (=> b!4386315 m!5034373))

(declare-fun m!5034375 () Bool)

(assert (=> b!4386315 m!5034375))

(declare-fun m!5034377 () Bool)

(assert (=> b!4386315 m!5034377))

(declare-fun m!5034379 () Bool)

(assert (=> b!4386315 m!5034379))

(declare-fun m!5034381 () Bool)

(assert (=> b!4386315 m!5034381))

(declare-fun m!5034383 () Bool)

(assert (=> b!4386315 m!5034383))

(declare-fun m!5034385 () Bool)

(assert (=> b!4386315 m!5034385))

(declare-fun m!5034387 () Bool)

(assert (=> b!4386315 m!5034387))

(assert (=> b!4386315 m!5034383))

(declare-fun m!5034389 () Bool)

(assert (=> b!4386315 m!5034389))

(declare-fun m!5034391 () Bool)

(assert (=> b!4386315 m!5034391))

(declare-fun m!5034393 () Bool)

(assert (=> b!4386315 m!5034393))

(declare-fun m!5034395 () Bool)

(assert (=> b!4386315 m!5034395))

(declare-fun m!5034397 () Bool)

(assert (=> b!4386315 m!5034397))

(declare-fun m!5034399 () Bool)

(assert (=> b!4386315 m!5034399))

(declare-fun m!5034401 () Bool)

(assert (=> b!4386315 m!5034401))

(declare-fun m!5034403 () Bool)

(assert (=> b!4386319 m!5034403))

(declare-fun m!5034405 () Bool)

(assert (=> b!4386316 m!5034405))

(declare-fun m!5034407 () Bool)

(assert (=> b!4386308 m!5034407))

(assert (=> b!4386318 m!5034363))

(declare-fun m!5034409 () Bool)

(assert (=> b!4386318 m!5034409))

(declare-fun m!5034411 () Bool)

(assert (=> b!4386318 m!5034411))

(declare-fun m!5034413 () Bool)

(assert (=> b!4386318 m!5034413))

(assert (=> start!425928 m!5034413))

(declare-fun m!5034415 () Bool)

(assert (=> start!425928 m!5034415))

(declare-fun m!5034417 () Bool)

(assert (=> b!4386322 m!5034417))

(check-sat (not b!4386312) (not b!4386315) (not b!4386316) (not b!4386311) tp_is_empty!25601 (not b!4386317) (not b!4386320) (not b!4386307) (not b!4386319) (not b!4386310) (not b!4386313) (not start!425928) (not b!4386308) (not b!4386318) (not b!4386322) tp_is_empty!25603 (not b!4386321) (not b!4386314))
(check-sat)
