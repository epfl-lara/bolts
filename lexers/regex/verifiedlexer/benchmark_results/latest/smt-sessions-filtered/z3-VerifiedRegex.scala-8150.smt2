; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419476 () Bool)

(assert start!419476)

(declare-fun res!1784387 () Bool)

(declare-fun e!2704345 () Bool)

(assert (=> start!419476 (=> (not res!1784387) (not e!2704345))))

(declare-datatypes ((V!10401 0))(
  ( (V!10402 (val!16395 Int)) )
))
(declare-datatypes ((K!10155 0))(
  ( (K!10156 (val!16396 Int)) )
))
(declare-datatypes ((tuple2!48110 0))(
  ( (tuple2!48111 (_1!27349 K!10155) (_2!27349 V!10401)) )
))
(declare-datatypes ((List!48919 0))(
  ( (Nil!48795) (Cons!48795 (h!54318 tuple2!48110) (t!355839 List!48919)) )
))
(declare-datatypes ((tuple2!48112 0))(
  ( (tuple2!48113 (_1!27350 (_ BitVec 64)) (_2!27350 List!48919)) )
))
(declare-datatypes ((List!48920 0))(
  ( (Nil!48796) (Cons!48796 (h!54319 tuple2!48112) (t!355840 List!48920)) )
))
(declare-datatypes ((ListLongMap!1503 0))(
  ( (ListLongMap!1504 (toList!2853 List!48920)) )
))
(declare-fun lm!1707 () ListLongMap!1503)

(declare-fun lambda!138163 () Int)

(declare-fun forall!9027 (List!48920 Int) Bool)

(assert (=> start!419476 (= res!1784387 (forall!9027 (toList!2853 lm!1707) lambda!138163))))

(assert (=> start!419476 e!2704345))

(declare-fun e!2704339 () Bool)

(assert (=> start!419476 e!2704339))

(assert (=> start!419476 true))

(declare-fun e!2704347 () Bool)

(declare-fun inv!64341 (ListLongMap!1503) Bool)

(assert (=> start!419476 (and (inv!64341 lm!1707) e!2704347)))

(declare-fun tp_is_empty!24977 () Bool)

(assert (=> start!419476 tp_is_empty!24977))

(declare-fun tp_is_empty!24979 () Bool)

(assert (=> start!419476 tp_is_empty!24979))

(declare-fun b!4345826 () Bool)

(declare-fun tp!1329508 () Bool)

(assert (=> b!4345826 (= e!2704347 tp!1329508)))

(declare-fun b!4345827 () Bool)

(declare-fun e!2704340 () Bool)

(declare-fun e!2704342 () Bool)

(assert (=> b!4345827 (= e!2704340 (not e!2704342))))

(declare-fun res!1784379 () Bool)

(assert (=> b!4345827 (=> res!1784379 e!2704342)))

(declare-fun newBucket!200 () List!48919)

(declare-fun lt!1560026 () List!48919)

(assert (=> b!4345827 (= res!1784379 (not (= newBucket!200 lt!1560026)))))

(declare-fun lt!1560030 () tuple2!48110)

(declare-fun lt!1560021 () List!48919)

(assert (=> b!4345827 (= lt!1560026 (Cons!48795 lt!1560030 lt!1560021))))

(declare-fun lt!1560019 () List!48919)

(declare-fun key!3918 () K!10155)

(declare-fun removePairForKey!405 (List!48919 K!10155) List!48919)

(assert (=> b!4345827 (= lt!1560021 (removePairForKey!405 lt!1560019 key!3918))))

(declare-fun newValue!99 () V!10401)

(assert (=> b!4345827 (= lt!1560030 (tuple2!48111 key!3918 newValue!99))))

(declare-datatypes ((Unit!70513 0))(
  ( (Unit!70514) )
))
(declare-fun lt!1560039 () Unit!70513)

(declare-fun lt!1560025 () tuple2!48112)

(declare-fun forallContained!1677 (List!48920 Int tuple2!48112) Unit!70513)

(assert (=> b!4345827 (= lt!1560039 (forallContained!1677 (toList!2853 lm!1707) lambda!138163 lt!1560025))))

(declare-fun contains!10926 (List!48920 tuple2!48112) Bool)

(assert (=> b!4345827 (contains!10926 (toList!2853 lm!1707) lt!1560025)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4345827 (= lt!1560025 (tuple2!48113 hash!377 lt!1560019))))

(declare-fun lt!1560027 () Unit!70513)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!282 (List!48920 (_ BitVec 64) List!48919) Unit!70513)

(assert (=> b!4345827 (= lt!1560027 (lemmaGetValueByKeyImpliesContainsTuple!282 (toList!2853 lm!1707) hash!377 lt!1560019))))

(declare-fun apply!11287 (ListLongMap!1503 (_ BitVec 64)) List!48919)

(assert (=> b!4345827 (= lt!1560019 (apply!11287 lm!1707 hash!377))))

(declare-fun b!4345828 () Bool)

(declare-fun res!1784394 () Bool)

(assert (=> b!4345828 (=> (not res!1784394) (not e!2704340))))

(declare-fun contains!10927 (ListLongMap!1503 (_ BitVec 64)) Bool)

(assert (=> b!4345828 (= res!1784394 (contains!10927 lm!1707 hash!377))))

(declare-fun b!4345829 () Bool)

(declare-fun res!1784388 () Bool)

(assert (=> b!4345829 (=> res!1784388 e!2704342)))

(declare-fun noDuplicateKeys!435 (List!48919) Bool)

(assert (=> b!4345829 (= res!1784388 (not (noDuplicateKeys!435 newBucket!200)))))

(declare-fun b!4345830 () Bool)

(declare-fun e!2704348 () Bool)

(declare-datatypes ((ListMap!2097 0))(
  ( (ListMap!2098 (toList!2854 List!48919)) )
))
(declare-fun lt!1560033 () ListMap!2097)

(declare-fun lt!1560018 () ListMap!2097)

(declare-fun eq!225 (ListMap!2097 ListMap!2097) Bool)

(assert (=> b!4345830 (= e!2704348 (eq!225 lt!1560033 lt!1560018))))

(declare-fun b!4345831 () Bool)

(declare-fun res!1784383 () Bool)

(declare-fun e!2704343 () Bool)

(assert (=> b!4345831 (=> res!1784383 e!2704343)))

(declare-fun lt!1560032 () ListLongMap!1503)

(declare-datatypes ((Hashable!4827 0))(
  ( (HashableExt!4826 (__x!30530 Int)) )
))
(declare-fun hashF!1247 () Hashable!4827)

(declare-fun allKeysSameHashInMap!539 (ListLongMap!1503 Hashable!4827) Bool)

(assert (=> b!4345831 (= res!1784383 (not (allKeysSameHashInMap!539 lt!1560032 hashF!1247)))))

(declare-fun b!4345832 () Bool)

(declare-fun res!1784395 () Bool)

(declare-fun e!2704346 () Bool)

(assert (=> b!4345832 (=> (not res!1784395) (not e!2704346))))

(declare-fun lt!1560036 () ListLongMap!1503)

(assert (=> b!4345832 (= res!1784395 (forall!9027 (toList!2853 lt!1560036) lambda!138163))))

(declare-fun b!4345833 () Bool)

(assert (=> b!4345833 (= e!2704345 e!2704340)))

(declare-fun res!1784386 () Bool)

(assert (=> b!4345833 (=> (not res!1784386) (not e!2704340))))

(declare-fun lt!1560028 () ListMap!2097)

(declare-fun contains!10928 (ListMap!2097 K!10155) Bool)

(assert (=> b!4345833 (= res!1784386 (contains!10928 lt!1560028 key!3918))))

(declare-fun extractMap!494 (List!48920) ListMap!2097)

(assert (=> b!4345833 (= lt!1560028 (extractMap!494 (toList!2853 lm!1707)))))

(declare-fun b!4345834 () Bool)

(declare-fun e!2704341 () Bool)

(assert (=> b!4345834 (= e!2704342 e!2704341)))

(declare-fun res!1784391 () Bool)

(assert (=> b!4345834 (=> res!1784391 e!2704341)))

(get-info :version)

(assert (=> b!4345834 (= res!1784391 (or (not ((_ is Cons!48796) (toList!2853 lm!1707))) (not (= (_1!27350 (h!54319 (toList!2853 lm!1707))) hash!377))))))

(assert (=> b!4345834 e!2704346))

(declare-fun res!1784393 () Bool)

(assert (=> b!4345834 (=> (not res!1784393) (not e!2704346))))

(assert (=> b!4345834 (= res!1784393 (forall!9027 (toList!2853 lt!1560036) lambda!138163))))

(declare-fun lt!1560035 () tuple2!48112)

(declare-fun +!541 (ListLongMap!1503 tuple2!48112) ListLongMap!1503)

(assert (=> b!4345834 (= lt!1560036 (+!541 lm!1707 lt!1560035))))

(assert (=> b!4345834 (= lt!1560035 (tuple2!48113 hash!377 newBucket!200))))

(declare-fun lt!1560041 () Unit!70513)

(declare-fun addValidProp!89 (ListLongMap!1503 Int (_ BitVec 64) List!48919) Unit!70513)

(assert (=> b!4345834 (= lt!1560041 (addValidProp!89 lm!1707 lambda!138163 hash!377 newBucket!200))))

(assert (=> b!4345834 (forall!9027 (toList!2853 lm!1707) lambda!138163)))

(declare-fun b!4345835 () Bool)

(declare-fun res!1784390 () Bool)

(declare-fun e!2704344 () Bool)

(assert (=> b!4345835 (=> res!1784390 e!2704344)))

(assert (=> b!4345835 (= res!1784390 (not (forall!9027 (toList!2853 lt!1560032) lambda!138163)))))

(declare-fun b!4345836 () Bool)

(declare-fun lt!1560038 () Bool)

(assert (=> b!4345836 (= e!2704344 lt!1560038)))

(declare-fun b!4345837 () Bool)

(declare-fun res!1784389 () Bool)

(assert (=> b!4345837 (=> (not res!1784389) (not e!2704345))))

(declare-fun hash!1410 (Hashable!4827 K!10155) (_ BitVec 64))

(assert (=> b!4345837 (= res!1784389 (= (hash!1410 hashF!1247 key!3918) hash!377))))

(declare-fun b!4345838 () Bool)

(declare-fun res!1784380 () Bool)

(assert (=> b!4345838 (=> res!1784380 e!2704343)))

(assert (=> b!4345838 (= res!1784380 (not (forall!9027 (toList!2853 lt!1560032) lambda!138163)))))

(declare-fun b!4345839 () Bool)

(assert (=> b!4345839 (= e!2704341 e!2704343)))

(declare-fun res!1784382 () Bool)

(assert (=> b!4345839 (=> res!1784382 e!2704343)))

(declare-fun lt!1560022 () Bool)

(assert (=> b!4345839 (= res!1784382 lt!1560022)))

(declare-fun lt!1560043 () List!48919)

(declare-fun lt!1560042 () List!48919)

(assert (=> b!4345839 (= lt!1560043 lt!1560042)))

(assert (=> b!4345839 (= lt!1560043 (apply!11287 lt!1560032 hash!377))))

(declare-fun lt!1560031 () ListMap!2097)

(assert (=> b!4345839 (= lt!1560022 (contains!10928 lt!1560031 key!3918))))

(declare-fun lt!1560029 () ListMap!2097)

(assert (=> b!4345839 (= lt!1560022 (contains!10928 lt!1560029 key!3918))))

(declare-fun lt!1560023 () Unit!70513)

(declare-fun lemmaEquivalentThenSameContains!86 (ListMap!2097 ListMap!2097 K!10155) Unit!70513)

(assert (=> b!4345839 (= lt!1560023 (lemmaEquivalentThenSameContains!86 lt!1560029 lt!1560031 key!3918))))

(assert (=> b!4345839 (eq!225 lt!1560029 lt!1560031)))

(declare-fun -!236 (ListMap!2097 K!10155) ListMap!2097)

(assert (=> b!4345839 (= lt!1560031 (-!236 lt!1560028 key!3918))))

(declare-fun lt!1560024 () Unit!70513)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!51 (ListLongMap!1503 (_ BitVec 64) List!48919 K!10155 Hashable!4827) Unit!70513)

(assert (=> b!4345839 (= lt!1560024 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!51 lm!1707 hash!377 lt!1560042 key!3918 hashF!1247))))

(declare-fun lt!1560040 () ListMap!2097)

(assert (=> b!4345839 (= lt!1560040 lt!1560029)))

(assert (=> b!4345839 (= lt!1560029 (extractMap!494 (toList!2853 lt!1560032)))))

(assert (=> b!4345839 (= lt!1560042 lt!1560021)))

(assert (=> b!4345839 (= lt!1560032 (+!541 lm!1707 (tuple2!48113 hash!377 lt!1560042)))))

(declare-fun tail!6933 (List!48919) List!48919)

(assert (=> b!4345839 (= lt!1560042 (tail!6933 newBucket!200))))

(assert (=> b!4345839 e!2704348))

(declare-fun res!1784392 () Bool)

(assert (=> b!4345839 (=> (not res!1784392) (not e!2704348))))

(declare-fun lt!1560037 () ListMap!2097)

(assert (=> b!4345839 (= res!1784392 (eq!225 lt!1560037 lt!1560018))))

(declare-fun +!542 (ListMap!2097 tuple2!48110) ListMap!2097)

(assert (=> b!4345839 (= lt!1560018 (+!542 lt!1560040 lt!1560030))))

(declare-fun lt!1560044 () ListMap!2097)

(declare-fun addToMapMapFromBucket!143 (List!48919 ListMap!2097) ListMap!2097)

(assert (=> b!4345839 (= lt!1560040 (addToMapMapFromBucket!143 lt!1560021 lt!1560044))))

(declare-fun lt!1560020 () Unit!70513)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!54 (ListMap!2097 K!10155 V!10401 List!48919) Unit!70513)

(assert (=> b!4345839 (= lt!1560020 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!54 lt!1560044 key!3918 newValue!99 lt!1560021))))

(assert (=> b!4345839 (= lt!1560033 lt!1560037)))

(assert (=> b!4345839 (= lt!1560037 (addToMapMapFromBucket!143 lt!1560021 (+!542 lt!1560044 lt!1560030)))))

(declare-fun lt!1560017 () ListMap!2097)

(assert (=> b!4345839 (= lt!1560017 lt!1560033)))

(assert (=> b!4345839 (= lt!1560033 (addToMapMapFromBucket!143 lt!1560026 lt!1560044))))

(assert (=> b!4345839 (= lt!1560017 (addToMapMapFromBucket!143 newBucket!200 lt!1560044))))

(assert (=> b!4345839 (= lt!1560017 (extractMap!494 (toList!2853 lt!1560036)))))

(assert (=> b!4345839 (= lt!1560044 (extractMap!494 (t!355840 (toList!2853 lm!1707))))))

(declare-fun b!4345840 () Bool)

(declare-fun res!1784384 () Bool)

(assert (=> b!4345840 (=> (not res!1784384) (not e!2704345))))

(assert (=> b!4345840 (= res!1784384 (allKeysSameHashInMap!539 lm!1707 hashF!1247))))

(declare-fun b!4345841 () Bool)

(assert (=> b!4345841 (= e!2704346 (or (not ((_ is Cons!48796) (toList!2853 lm!1707))) (not (= (_1!27350 (h!54319 (toList!2853 lm!1707))) hash!377)) (= lt!1560036 (ListLongMap!1504 (Cons!48796 lt!1560035 (t!355840 (toList!2853 lm!1707)))))))))

(declare-fun b!4345842 () Bool)

(declare-fun res!1784381 () Bool)

(assert (=> b!4345842 (=> (not res!1784381) (not e!2704345))))

(declare-fun allKeysSameHash!393 (List!48919 (_ BitVec 64) Hashable!4827) Bool)

(assert (=> b!4345842 (= res!1784381 (allKeysSameHash!393 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp!1329507 () Bool)

(declare-fun b!4345843 () Bool)

(assert (=> b!4345843 (= e!2704339 (and tp_is_empty!24977 tp_is_empty!24979 tp!1329507))))

(declare-fun b!4345844 () Bool)

(assert (=> b!4345844 (= e!2704343 e!2704344)))

(declare-fun res!1784385 () Bool)

(assert (=> b!4345844 (=> res!1784385 e!2704344)))

(assert (=> b!4345844 (= res!1784385 (not lt!1560038))))

(declare-fun lt!1560034 () Bool)

(assert (=> b!4345844 (= lt!1560038 (or (and lt!1560034 (= newBucket!200 (Cons!48795 lt!1560030 lt!1560043))) (and (not lt!1560034) (= newBucket!200 (Cons!48795 lt!1560030 Nil!48795)))))))

(assert (=> b!4345844 (= lt!1560034 (contains!10927 lt!1560032 hash!377))))

(assert (= (and start!419476 res!1784387) b!4345840))

(assert (= (and b!4345840 res!1784384) b!4345837))

(assert (= (and b!4345837 res!1784389) b!4345842))

(assert (= (and b!4345842 res!1784381) b!4345833))

(assert (= (and b!4345833 res!1784386) b!4345828))

(assert (= (and b!4345828 res!1784394) b!4345827))

(assert (= (and b!4345827 (not res!1784379)) b!4345829))

(assert (= (and b!4345829 (not res!1784388)) b!4345834))

(assert (= (and b!4345834 res!1784393) b!4345832))

(assert (= (and b!4345832 res!1784395) b!4345841))

(assert (= (and b!4345834 (not res!1784391)) b!4345839))

(assert (= (and b!4345839 res!1784392) b!4345830))

(assert (= (and b!4345839 (not res!1784382)) b!4345838))

(assert (= (and b!4345838 (not res!1784380)) b!4345831))

(assert (= (and b!4345831 (not res!1784383)) b!4345844))

(assert (= (and b!4345844 (not res!1784385)) b!4345835))

(assert (= (and b!4345835 (not res!1784390)) b!4345836))

(assert (= (and start!419476 ((_ is Cons!48795) newBucket!200)) b!4345843))

(assert (= start!419476 b!4345826))

(declare-fun m!4953253 () Bool)

(assert (=> b!4345837 m!4953253))

(declare-fun m!4953255 () Bool)

(assert (=> b!4345840 m!4953255))

(declare-fun m!4953257 () Bool)

(assert (=> b!4345827 m!4953257))

(declare-fun m!4953259 () Bool)

(assert (=> b!4345827 m!4953259))

(declare-fun m!4953261 () Bool)

(assert (=> b!4345827 m!4953261))

(declare-fun m!4953263 () Bool)

(assert (=> b!4345827 m!4953263))

(declare-fun m!4953265 () Bool)

(assert (=> b!4345827 m!4953265))

(declare-fun m!4953267 () Bool)

(assert (=> b!4345833 m!4953267))

(declare-fun m!4953269 () Bool)

(assert (=> b!4345833 m!4953269))

(declare-fun m!4953271 () Bool)

(assert (=> b!4345834 m!4953271))

(declare-fun m!4953273 () Bool)

(assert (=> b!4345834 m!4953273))

(declare-fun m!4953275 () Bool)

(assert (=> b!4345834 m!4953275))

(declare-fun m!4953277 () Bool)

(assert (=> b!4345834 m!4953277))

(declare-fun m!4953279 () Bool)

(assert (=> b!4345835 m!4953279))

(declare-fun m!4953281 () Bool)

(assert (=> b!4345828 m!4953281))

(declare-fun m!4953283 () Bool)

(assert (=> b!4345839 m!4953283))

(declare-fun m!4953285 () Bool)

(assert (=> b!4345839 m!4953285))

(declare-fun m!4953287 () Bool)

(assert (=> b!4345839 m!4953287))

(declare-fun m!4953289 () Bool)

(assert (=> b!4345839 m!4953289))

(declare-fun m!4953291 () Bool)

(assert (=> b!4345839 m!4953291))

(declare-fun m!4953293 () Bool)

(assert (=> b!4345839 m!4953293))

(declare-fun m!4953295 () Bool)

(assert (=> b!4345839 m!4953295))

(declare-fun m!4953297 () Bool)

(assert (=> b!4345839 m!4953297))

(declare-fun m!4953299 () Bool)

(assert (=> b!4345839 m!4953299))

(declare-fun m!4953301 () Bool)

(assert (=> b!4345839 m!4953301))

(declare-fun m!4953303 () Bool)

(assert (=> b!4345839 m!4953303))

(declare-fun m!4953305 () Bool)

(assert (=> b!4345839 m!4953305))

(declare-fun m!4953307 () Bool)

(assert (=> b!4345839 m!4953307))

(declare-fun m!4953309 () Bool)

(assert (=> b!4345839 m!4953309))

(declare-fun m!4953311 () Bool)

(assert (=> b!4345839 m!4953311))

(assert (=> b!4345839 m!4953309))

(declare-fun m!4953313 () Bool)

(assert (=> b!4345839 m!4953313))

(declare-fun m!4953315 () Bool)

(assert (=> b!4345839 m!4953315))

(declare-fun m!4953317 () Bool)

(assert (=> b!4345839 m!4953317))

(declare-fun m!4953319 () Bool)

(assert (=> b!4345839 m!4953319))

(declare-fun m!4953321 () Bool)

(assert (=> b!4345839 m!4953321))

(assert (=> b!4345832 m!4953271))

(declare-fun m!4953323 () Bool)

(assert (=> b!4345842 m!4953323))

(declare-fun m!4953325 () Bool)

(assert (=> b!4345830 m!4953325))

(assert (=> start!419476 m!4953277))

(declare-fun m!4953327 () Bool)

(assert (=> start!419476 m!4953327))

(declare-fun m!4953329 () Bool)

(assert (=> b!4345831 m!4953329))

(declare-fun m!4953331 () Bool)

(assert (=> b!4345844 m!4953331))

(declare-fun m!4953333 () Bool)

(assert (=> b!4345829 m!4953333))

(assert (=> b!4345838 m!4953279))

(check-sat tp_is_empty!24979 (not b!4345832) (not b!4345835) (not b!4345833) (not b!4345844) (not b!4345830) (not b!4345828) (not b!4345829) tp_is_empty!24977 (not b!4345840) (not b!4345826) (not b!4345839) (not b!4345838) (not b!4345837) (not b!4345834) (not b!4345831) (not b!4345843) (not start!419476) (not b!4345842) (not b!4345827))
(check-sat)
