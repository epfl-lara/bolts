; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419148 () Bool)

(assert start!419148)

(declare-fun b!4343743 () Bool)

(declare-fun res!1782955 () Bool)

(declare-fun e!2703079 () Bool)

(assert (=> b!4343743 (=> (not res!1782955) (not e!2703079))))

(declare-datatypes ((V!10346 0))(
  ( (V!10347 (val!16351 Int)) )
))
(declare-datatypes ((K!10100 0))(
  ( (K!10101 (val!16352 Int)) )
))
(declare-datatypes ((tuple2!48022 0))(
  ( (tuple2!48023 (_1!27305 K!10100) (_2!27305 V!10346)) )
))
(declare-datatypes ((List!48869 0))(
  ( (Nil!48745) (Cons!48745 (h!54262 tuple2!48022) (t!355789 List!48869)) )
))
(declare-datatypes ((tuple2!48024 0))(
  ( (tuple2!48025 (_1!27306 (_ BitVec 64)) (_2!27306 List!48869)) )
))
(declare-datatypes ((List!48870 0))(
  ( (Nil!48746) (Cons!48746 (h!54263 tuple2!48024) (t!355790 List!48870)) )
))
(declare-datatypes ((ListLongMap!1459 0))(
  ( (ListLongMap!1460 (toList!2809 List!48870)) )
))
(declare-fun lm!1707 () ListLongMap!1459)

(declare-fun key!3918 () K!10100)

(declare-datatypes ((ListMap!2053 0))(
  ( (ListMap!2054 (toList!2810 List!48869)) )
))
(declare-fun contains!10848 (ListMap!2053 K!10100) Bool)

(declare-fun extractMap!472 (List!48870) ListMap!2053)

(assert (=> b!4343743 (= res!1782955 (contains!10848 (extractMap!472 (toList!2809 lm!1707)) key!3918))))

(declare-fun b!4343744 () Bool)

(declare-fun e!2703086 () Bool)

(declare-fun e!2703081 () Bool)

(assert (=> b!4343744 (= e!2703086 e!2703081)))

(declare-fun res!1782958 () Bool)

(assert (=> b!4343744 (=> res!1782958 e!2703081)))

(declare-fun lt!1557026 () List!48869)

(declare-fun noDuplicateKeys!413 (List!48869) Bool)

(assert (=> b!4343744 (= res!1782958 (not (noDuplicateKeys!413 lt!1557026)))))

(declare-datatypes ((Unit!70169 0))(
  ( (Unit!70170) )
))
(declare-fun lt!1557023 () Unit!70169)

(declare-fun lt!1557027 () tuple2!48024)

(declare-fun lambda!137511 () Int)

(declare-fun forallContained!1649 (List!48870 Int tuple2!48024) Unit!70169)

(assert (=> b!4343744 (= lt!1557023 (forallContained!1649 (toList!2809 lm!1707) lambda!137511 lt!1557027))))

(declare-fun lt!1557021 () (_ BitVec 64))

(declare-fun contains!10849 (ListLongMap!1459 (_ BitVec 64)) Bool)

(assert (=> b!4343744 (contains!10849 lm!1707 lt!1557021)))

(declare-datatypes ((Hashable!4805 0))(
  ( (HashableExt!4804 (__x!30508 Int)) )
))
(declare-fun hashF!1247 () Hashable!4805)

(declare-fun lt!1557019 () Unit!70169)

(declare-fun lemmaInGenMapThenLongMapContainsHash!48 (ListLongMap!1459 K!10100 Hashable!4805) Unit!70169)

(assert (=> b!4343744 (= lt!1557019 (lemmaInGenMapThenLongMapContainsHash!48 lm!1707 key!3918 hashF!1247))))

(declare-fun b!4343745 () Bool)

(declare-fun e!2703084 () Bool)

(declare-fun tp!1329322 () Bool)

(assert (=> b!4343745 (= e!2703084 tp!1329322)))

(declare-fun res!1782966 () Bool)

(declare-fun e!2703082 () Bool)

(assert (=> start!419148 (=> (not res!1782966) (not e!2703082))))

(declare-fun forall!8999 (List!48870 Int) Bool)

(assert (=> start!419148 (= res!1782966 (forall!8999 (toList!2809 lm!1707) lambda!137511))))

(assert (=> start!419148 e!2703082))

(declare-fun e!2703083 () Bool)

(assert (=> start!419148 e!2703083))

(assert (=> start!419148 true))

(declare-fun inv!64286 (ListLongMap!1459) Bool)

(assert (=> start!419148 (and (inv!64286 lm!1707) e!2703084)))

(declare-fun tp_is_empty!24889 () Bool)

(assert (=> start!419148 tp_is_empty!24889))

(declare-fun tp_is_empty!24891 () Bool)

(assert (=> start!419148 tp_is_empty!24891))

(declare-fun b!4343746 () Bool)

(declare-fun e!2703085 () Bool)

(declare-fun e!2703088 () Bool)

(assert (=> b!4343746 (= e!2703085 e!2703088)))

(declare-fun res!1782954 () Bool)

(assert (=> b!4343746 (=> res!1782954 e!2703088)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4343746 (= res!1782954 (or (not ((_ is Cons!48746) (toList!2809 lm!1707))) (not (= (_1!27306 (h!54263 (toList!2809 lm!1707))) hash!377))))))

(declare-fun e!2703078 () Bool)

(assert (=> b!4343746 e!2703078))

(declare-fun res!1782962 () Bool)

(assert (=> b!4343746 (=> (not res!1782962) (not e!2703078))))

(declare-fun lt!1557028 () ListLongMap!1459)

(assert (=> b!4343746 (= res!1782962 (forall!8999 (toList!2809 lt!1557028) lambda!137511))))

(declare-fun lt!1557025 () tuple2!48024)

(declare-fun +!497 (ListLongMap!1459 tuple2!48024) ListLongMap!1459)

(assert (=> b!4343746 (= lt!1557028 (+!497 lm!1707 lt!1557025))))

(declare-fun newBucket!200 () List!48869)

(assert (=> b!4343746 (= lt!1557025 (tuple2!48025 hash!377 newBucket!200))))

(declare-fun lt!1557020 () Unit!70169)

(declare-fun addValidProp!67 (ListLongMap!1459 Int (_ BitVec 64) List!48869) Unit!70169)

(assert (=> b!4343746 (= lt!1557020 (addValidProp!67 lm!1707 lambda!137511 hash!377 newBucket!200))))

(assert (=> b!4343746 (forall!8999 (toList!2809 lm!1707) lambda!137511)))

(declare-fun b!4343747 () Bool)

(declare-fun res!1782957 () Bool)

(assert (=> b!4343747 (=> res!1782957 e!2703086)))

(declare-fun allKeysSameHash!371 (List!48869 (_ BitVec 64) Hashable!4805) Bool)

(assert (=> b!4343747 (= res!1782957 (not (allKeysSameHash!371 lt!1557026 hash!377 hashF!1247)))))

(declare-fun b!4343748 () Bool)

(assert (=> b!4343748 (= e!2703079 (not e!2703085))))

(declare-fun res!1782959 () Bool)

(assert (=> b!4343748 (=> res!1782959 e!2703085)))

(declare-fun lt!1557018 () List!48869)

(assert (=> b!4343748 (= res!1782959 (not (= newBucket!200 lt!1557018)))))

(declare-fun lt!1557030 () tuple2!48022)

(declare-fun lt!1557024 () List!48869)

(assert (=> b!4343748 (= lt!1557018 (Cons!48745 lt!1557030 lt!1557024))))

(declare-fun lt!1557012 () List!48869)

(declare-fun removePairForKey!383 (List!48869 K!10100) List!48869)

(assert (=> b!4343748 (= lt!1557024 (removePairForKey!383 lt!1557012 key!3918))))

(declare-fun newValue!99 () V!10346)

(assert (=> b!4343748 (= lt!1557030 (tuple2!48023 key!3918 newValue!99))))

(declare-fun lt!1557022 () Unit!70169)

(assert (=> b!4343748 (= lt!1557022 (forallContained!1649 (toList!2809 lm!1707) lambda!137511 lt!1557027))))

(declare-fun contains!10850 (List!48870 tuple2!48024) Bool)

(assert (=> b!4343748 (contains!10850 (toList!2809 lm!1707) lt!1557027)))

(assert (=> b!4343748 (= lt!1557027 (tuple2!48025 hash!377 lt!1557012))))

(declare-fun lt!1557015 () Unit!70169)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!260 (List!48870 (_ BitVec 64) List!48869) Unit!70169)

(assert (=> b!4343748 (= lt!1557015 (lemmaGetValueByKeyImpliesContainsTuple!260 (toList!2809 lm!1707) hash!377 lt!1557012))))

(declare-fun apply!11265 (ListLongMap!1459 (_ BitVec 64)) List!48869)

(assert (=> b!4343748 (= lt!1557012 (apply!11265 lm!1707 hash!377))))

(declare-fun b!4343749 () Bool)

(assert (=> b!4343749 (= e!2703081 (forall!8999 (toList!2809 lm!1707) lambda!137511))))

(declare-fun b!4343750 () Bool)

(declare-fun e!2703087 () Bool)

(declare-fun lt!1557014 () ListMap!2053)

(declare-fun lt!1557032 () ListLongMap!1459)

(assert (=> b!4343750 (= e!2703087 (= lt!1557014 (extractMap!472 (toList!2809 lt!1557032))))))

(declare-fun b!4343751 () Bool)

(declare-fun res!1782963 () Bool)

(assert (=> b!4343751 (=> res!1782963 e!2703085)))

(assert (=> b!4343751 (= res!1782963 (not (noDuplicateKeys!413 newBucket!200)))))

(declare-fun b!4343752 () Bool)

(declare-fun res!1782960 () Bool)

(assert (=> b!4343752 (=> (not res!1782960) (not e!2703078))))

(assert (=> b!4343752 (= res!1782960 (forall!8999 (toList!2809 lt!1557028) lambda!137511))))

(declare-fun b!4343753 () Bool)

(declare-fun res!1782956 () Bool)

(assert (=> b!4343753 (=> (not res!1782956) (not e!2703079))))

(assert (=> b!4343753 (= res!1782956 (allKeysSameHash!371 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4343754 () Bool)

(assert (=> b!4343754 (= e!2703088 e!2703086)))

(declare-fun res!1782967 () Bool)

(assert (=> b!4343754 (=> res!1782967 e!2703086)))

(assert (=> b!4343754 (= res!1782967 (not (forall!8999 (toList!2809 lm!1707) lambda!137511)))))

(assert (=> b!4343754 e!2703087))

(declare-fun res!1782969 () Bool)

(assert (=> b!4343754 (=> (not res!1782969) (not e!2703087))))

(assert (=> b!4343754 (= res!1782969 (= lt!1557026 lt!1557024))))

(assert (=> b!4343754 (= lt!1557032 (+!497 lm!1707 (tuple2!48025 hash!377 lt!1557026)))))

(declare-fun tail!6911 (List!48869) List!48869)

(assert (=> b!4343754 (= lt!1557026 (tail!6911 newBucket!200))))

(declare-fun e!2703080 () Bool)

(assert (=> b!4343754 e!2703080))

(declare-fun res!1782964 () Bool)

(assert (=> b!4343754 (=> (not res!1782964) (not e!2703080))))

(declare-fun lt!1557016 () ListMap!2053)

(declare-fun lt!1557013 () ListMap!2053)

(declare-fun eq!203 (ListMap!2053 ListMap!2053) Bool)

(assert (=> b!4343754 (= res!1782964 (eq!203 lt!1557016 lt!1557013))))

(declare-fun +!498 (ListMap!2053 tuple2!48022) ListMap!2053)

(assert (=> b!4343754 (= lt!1557013 (+!498 lt!1557014 lt!1557030))))

(declare-fun lt!1557017 () ListMap!2053)

(declare-fun addToMapMapFromBucket!121 (List!48869 ListMap!2053) ListMap!2053)

(assert (=> b!4343754 (= lt!1557014 (addToMapMapFromBucket!121 lt!1557024 lt!1557017))))

(declare-fun lt!1557011 () Unit!70169)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!32 (ListMap!2053 K!10100 V!10346 List!48869) Unit!70169)

(assert (=> b!4343754 (= lt!1557011 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!32 lt!1557017 key!3918 newValue!99 lt!1557024))))

(declare-fun lt!1557029 () ListMap!2053)

(assert (=> b!4343754 (= lt!1557029 lt!1557016)))

(assert (=> b!4343754 (= lt!1557016 (addToMapMapFromBucket!121 lt!1557024 (+!498 lt!1557017 lt!1557030)))))

(declare-fun lt!1557031 () ListMap!2053)

(assert (=> b!4343754 (= lt!1557031 lt!1557029)))

(assert (=> b!4343754 (= lt!1557029 (addToMapMapFromBucket!121 lt!1557018 lt!1557017))))

(assert (=> b!4343754 (= lt!1557031 (addToMapMapFromBucket!121 newBucket!200 lt!1557017))))

(assert (=> b!4343754 (= lt!1557031 (extractMap!472 (toList!2809 lt!1557028)))))

(assert (=> b!4343754 (= lt!1557017 (extractMap!472 (t!355790 (toList!2809 lm!1707))))))

(declare-fun b!4343755 () Bool)

(declare-fun tp!1329321 () Bool)

(assert (=> b!4343755 (= e!2703083 (and tp_is_empty!24889 tp_is_empty!24891 tp!1329321))))

(declare-fun b!4343756 () Bool)

(assert (=> b!4343756 (= e!2703080 (eq!203 lt!1557029 lt!1557013))))

(declare-fun b!4343757 () Bool)

(declare-fun res!1782968 () Bool)

(assert (=> b!4343757 (=> (not res!1782968) (not e!2703082))))

(declare-fun allKeysSameHashInMap!517 (ListLongMap!1459 Hashable!4805) Bool)

(assert (=> b!4343757 (= res!1782968 (allKeysSameHashInMap!517 lm!1707 hashF!1247))))

(declare-fun b!4343758 () Bool)

(declare-fun res!1782965 () Bool)

(assert (=> b!4343758 (=> (not res!1782965) (not e!2703079))))

(assert (=> b!4343758 (= res!1782965 (contains!10849 lm!1707 hash!377))))

(declare-fun b!4343759 () Bool)

(assert (=> b!4343759 (= e!2703082 e!2703079)))

(declare-fun res!1782961 () Bool)

(assert (=> b!4343759 (=> (not res!1782961) (not e!2703079))))

(assert (=> b!4343759 (= res!1782961 (= lt!1557021 hash!377))))

(declare-fun hash!1376 (Hashable!4805 K!10100) (_ BitVec 64))

(assert (=> b!4343759 (= lt!1557021 (hash!1376 hashF!1247 key!3918))))

(declare-fun b!4343760 () Bool)

(assert (=> b!4343760 (= e!2703078 (or (not ((_ is Cons!48746) (toList!2809 lm!1707))) (not (= (_1!27306 (h!54263 (toList!2809 lm!1707))) hash!377)) (= lt!1557028 (ListLongMap!1460 (Cons!48746 lt!1557025 (t!355790 (toList!2809 lm!1707)))))))))

(assert (= (and start!419148 res!1782966) b!4343757))

(assert (= (and b!4343757 res!1782968) b!4343759))

(assert (= (and b!4343759 res!1782961) b!4343753))

(assert (= (and b!4343753 res!1782956) b!4343743))

(assert (= (and b!4343743 res!1782955) b!4343758))

(assert (= (and b!4343758 res!1782965) b!4343748))

(assert (= (and b!4343748 (not res!1782959)) b!4343751))

(assert (= (and b!4343751 (not res!1782963)) b!4343746))

(assert (= (and b!4343746 res!1782962) b!4343752))

(assert (= (and b!4343752 res!1782960) b!4343760))

(assert (= (and b!4343746 (not res!1782954)) b!4343754))

(assert (= (and b!4343754 res!1782964) b!4343756))

(assert (= (and b!4343754 res!1782969) b!4343750))

(assert (= (and b!4343754 (not res!1782967)) b!4343747))

(assert (= (and b!4343747 (not res!1782957)) b!4343744))

(assert (= (and b!4343744 (not res!1782958)) b!4343749))

(assert (= (and start!419148 ((_ is Cons!48745) newBucket!200)) b!4343755))

(assert (= start!419148 b!4343745))

(declare-fun m!4949369 () Bool)

(assert (=> start!419148 m!4949369))

(declare-fun m!4949371 () Bool)

(assert (=> start!419148 m!4949371))

(declare-fun m!4949373 () Bool)

(assert (=> b!4343758 m!4949373))

(declare-fun m!4949375 () Bool)

(assert (=> b!4343753 m!4949375))

(declare-fun m!4949377 () Bool)

(assert (=> b!4343746 m!4949377))

(declare-fun m!4949379 () Bool)

(assert (=> b!4343746 m!4949379))

(declare-fun m!4949381 () Bool)

(assert (=> b!4343746 m!4949381))

(assert (=> b!4343746 m!4949369))

(declare-fun m!4949383 () Bool)

(assert (=> b!4343743 m!4949383))

(assert (=> b!4343743 m!4949383))

(declare-fun m!4949385 () Bool)

(assert (=> b!4343743 m!4949385))

(declare-fun m!4949387 () Bool)

(assert (=> b!4343744 m!4949387))

(declare-fun m!4949389 () Bool)

(assert (=> b!4343744 m!4949389))

(declare-fun m!4949391 () Bool)

(assert (=> b!4343744 m!4949391))

(declare-fun m!4949393 () Bool)

(assert (=> b!4343744 m!4949393))

(declare-fun m!4949395 () Bool)

(assert (=> b!4343754 m!4949395))

(declare-fun m!4949397 () Bool)

(assert (=> b!4343754 m!4949397))

(declare-fun m!4949399 () Bool)

(assert (=> b!4343754 m!4949399))

(declare-fun m!4949401 () Bool)

(assert (=> b!4343754 m!4949401))

(declare-fun m!4949403 () Bool)

(assert (=> b!4343754 m!4949403))

(declare-fun m!4949405 () Bool)

(assert (=> b!4343754 m!4949405))

(declare-fun m!4949407 () Bool)

(assert (=> b!4343754 m!4949407))

(declare-fun m!4949409 () Bool)

(assert (=> b!4343754 m!4949409))

(declare-fun m!4949411 () Bool)

(assert (=> b!4343754 m!4949411))

(assert (=> b!4343754 m!4949397))

(declare-fun m!4949413 () Bool)

(assert (=> b!4343754 m!4949413))

(assert (=> b!4343754 m!4949369))

(declare-fun m!4949415 () Bool)

(assert (=> b!4343754 m!4949415))

(declare-fun m!4949417 () Bool)

(assert (=> b!4343754 m!4949417))

(declare-fun m!4949419 () Bool)

(assert (=> b!4343751 m!4949419))

(declare-fun m!4949421 () Bool)

(assert (=> b!4343747 m!4949421))

(assert (=> b!4343749 m!4949369))

(assert (=> b!4343752 m!4949377))

(declare-fun m!4949423 () Bool)

(assert (=> b!4343756 m!4949423))

(declare-fun m!4949425 () Bool)

(assert (=> b!4343759 m!4949425))

(declare-fun m!4949427 () Bool)

(assert (=> b!4343750 m!4949427))

(declare-fun m!4949429 () Bool)

(assert (=> b!4343757 m!4949429))

(declare-fun m!4949431 () Bool)

(assert (=> b!4343748 m!4949431))

(assert (=> b!4343748 m!4949389))

(declare-fun m!4949433 () Bool)

(assert (=> b!4343748 m!4949433))

(declare-fun m!4949435 () Bool)

(assert (=> b!4343748 m!4949435))

(declare-fun m!4949437 () Bool)

(assert (=> b!4343748 m!4949437))

(check-sat (not b!4343746) (not b!4343751) (not b!4343754) tp_is_empty!24891 (not b!4343752) (not b!4343757) (not b!4343749) (not b!4343744) tp_is_empty!24889 (not start!419148) (not b!4343759) (not b!4343743) (not b!4343748) (not b!4343750) (not b!4343758) (not b!4343755) (not b!4343747) (not b!4343745) (not b!4343753) (not b!4343756))
(check-sat)
