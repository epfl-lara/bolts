; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470392 () Bool)

(assert start!470392)

(declare-fun tp_is_empty!29981 () Bool)

(declare-fun tp_is_empty!29983 () Bool)

(declare-fun e!2911845 () Bool)

(declare-fun tp!1343634 () Bool)

(declare-fun b!4666251 () Bool)

(assert (=> b!4666251 (= e!2911845 (and tp_is_empty!29981 tp_is_empty!29983 tp!1343634))))

(declare-fun b!4666252 () Bool)

(declare-fun res!1963610 () Bool)

(declare-fun e!2911849 () Bool)

(assert (=> b!4666252 (=> (not res!1963610) (not e!2911849))))

(declare-datatypes ((K!13330 0))(
  ( (K!13331 (val!18935 Int)) )
))
(declare-datatypes ((V!13576 0))(
  ( (V!13577 (val!18936 Int)) )
))
(declare-datatypes ((tuple2!53134 0))(
  ( (tuple2!53135 (_1!29861 K!13330) (_2!29861 V!13576)) )
))
(declare-datatypes ((List!52110 0))(
  ( (Nil!51986) (Cons!51986 (h!58156 tuple2!53134) (t!359238 List!52110)) )
))
(declare-fun oldBucket!40 () List!52110)

(declare-fun key!4968 () K!13330)

(declare-fun newBucket!224 () List!52110)

(declare-fun removePairForKey!1295 (List!52110 K!13330) List!52110)

(assert (=> b!4666252 (= res!1963610 (= (removePairForKey!1295 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4666253 () Bool)

(declare-fun e!2911847 () Bool)

(declare-fun e!2911851 () Bool)

(assert (=> b!4666253 (= e!2911847 e!2911851)))

(declare-fun res!1963613 () Bool)

(assert (=> b!4666253 (=> res!1963613 e!2911851)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1828078 () List!52110)

(declare-datatypes ((ListMap!4613 0))(
  ( (ListMap!4614 (toList!5273 List!52110)) )
))
(declare-fun lt!1828087 () ListMap!4613)

(declare-fun eq!927 (ListMap!4613 ListMap!4613) Bool)

(declare-fun +!2012 (ListMap!4613 tuple2!53134) ListMap!4613)

(declare-datatypes ((tuple2!53136 0))(
  ( (tuple2!53137 (_1!29862 (_ BitVec 64)) (_2!29862 List!52110)) )
))
(declare-datatypes ((List!52111 0))(
  ( (Nil!51987) (Cons!51987 (h!58157 tuple2!53136) (t!359239 List!52111)) )
))
(declare-fun extractMap!1728 (List!52111) ListMap!4613)

(assert (=> b!4666253 (= res!1963613 (not (eq!927 lt!1828087 (+!2012 (extractMap!1728 (Cons!51987 (tuple2!53137 hash!414 lt!1828078) Nil!51987)) (h!58156 oldBucket!40)))))))

(declare-fun lt!1828088 () tuple2!53134)

(declare-fun lt!1828071 () List!52110)

(declare-fun addToMapMapFromBucket!1129 (List!52110 ListMap!4613) ListMap!4613)

(assert (=> b!4666253 (eq!927 (addToMapMapFromBucket!1129 (Cons!51986 lt!1828088 lt!1828071) (ListMap!4614 Nil!51986)) (+!2012 (addToMapMapFromBucket!1129 lt!1828071 (ListMap!4614 Nil!51986)) lt!1828088))))

(declare-datatypes ((Unit!120212 0))(
  ( (Unit!120213) )
))
(declare-fun lt!1828079 () Unit!120212)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!178 (tuple2!53134 List!52110 ListMap!4613) Unit!120212)

(assert (=> b!4666253 (= lt!1828079 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!178 lt!1828088 lt!1828071 (ListMap!4614 Nil!51986)))))

(declare-fun head!9750 (List!52110) tuple2!53134)

(assert (=> b!4666253 (= lt!1828088 (head!9750 newBucket!224))))

(declare-fun lt!1828073 () tuple2!53134)

(assert (=> b!4666253 (eq!927 (addToMapMapFromBucket!1129 (Cons!51986 lt!1828073 lt!1828078) (ListMap!4614 Nil!51986)) (+!2012 (addToMapMapFromBucket!1129 lt!1828078 (ListMap!4614 Nil!51986)) lt!1828073))))

(declare-fun lt!1828076 () Unit!120212)

(assert (=> b!4666253 (= lt!1828076 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!178 lt!1828073 lt!1828078 (ListMap!4614 Nil!51986)))))

(assert (=> b!4666253 (= lt!1828073 (head!9750 oldBucket!40))))

(declare-fun lt!1828081 () List!52111)

(declare-fun contains!15179 (ListMap!4613 K!13330) Bool)

(assert (=> b!4666253 (contains!15179 (extractMap!1728 lt!1828081) key!4968)))

(declare-datatypes ((Hashable!6069 0))(
  ( (HashableExt!6068 (__x!31772 Int)) )
))
(declare-fun hashF!1389 () Hashable!6069)

(declare-fun lt!1828085 () Unit!120212)

(declare-datatypes ((ListLongMap!3827 0))(
  ( (ListLongMap!3828 (toList!5274 List!52111)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!406 (ListLongMap!3827 K!13330 Hashable!6069) Unit!120212)

(assert (=> b!4666253 (= lt!1828085 (lemmaListContainsThenExtractedMapContains!406 (ListLongMap!3828 lt!1828081) key!4968 hashF!1389))))

(assert (=> b!4666253 (= lt!1828081 (Cons!51987 (tuple2!53137 hash!414 (t!359238 oldBucket!40)) Nil!51987))))

(declare-fun b!4666254 () Bool)

(declare-fun res!1963607 () Bool)

(assert (=> b!4666254 (=> res!1963607 e!2911847)))

(assert (=> b!4666254 (= res!1963607 (not (= (removePairForKey!1295 (t!359238 oldBucket!40) key!4968) lt!1828071)))))

(declare-fun b!4666255 () Bool)

(declare-fun res!1963612 () Bool)

(assert (=> b!4666255 (=> res!1963612 e!2911851)))

(assert (=> b!4666255 (= res!1963612 (not (eq!927 (extractMap!1728 (Cons!51987 (tuple2!53137 hash!414 newBucket!224) Nil!51987)) (+!2012 (extractMap!1728 (Cons!51987 (tuple2!53137 hash!414 lt!1828071) Nil!51987)) lt!1828088))))))

(declare-fun b!4666256 () Bool)

(declare-fun res!1963600 () Bool)

(assert (=> b!4666256 (=> res!1963600 e!2911851)))

(declare-fun noDuplicateKeys!1672 (List!52110) Bool)

(assert (=> b!4666256 (= res!1963600 (not (noDuplicateKeys!1672 (t!359238 oldBucket!40))))))

(declare-fun b!4666257 () Bool)

(declare-fun e!2911844 () Bool)

(declare-fun e!2911852 () Bool)

(assert (=> b!4666257 (= e!2911844 e!2911852)))

(declare-fun res!1963606 () Bool)

(assert (=> b!4666257 (=> res!1963606 e!2911852)))

(declare-fun containsKey!2802 (List!52110 K!13330) Bool)

(assert (=> b!4666257 (= res!1963606 (not (containsKey!2802 (t!359238 oldBucket!40) key!4968)))))

(assert (=> b!4666257 (containsKey!2802 oldBucket!40 key!4968)))

(declare-fun lt!1828082 () Unit!120212)

(declare-fun lemmaGetPairDefinedThenContainsKey!150 (List!52110 K!13330 Hashable!6069) Unit!120212)

(assert (=> b!4666257 (= lt!1828082 (lemmaGetPairDefinedThenContainsKey!150 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1828089 () List!52110)

(declare-datatypes ((Option!11900 0))(
  ( (None!11899) (Some!11899 (v!46237 tuple2!53134)) )
))
(declare-fun isDefined!9165 (Option!11900) Bool)

(declare-fun getPair!400 (List!52110 K!13330) Option!11900)

(assert (=> b!4666257 (isDefined!9165 (getPair!400 lt!1828089 key!4968))))

(declare-fun lt!1828075 () List!52111)

(declare-fun lt!1828074 () tuple2!53136)

(declare-fun lt!1828077 () Unit!120212)

(declare-fun lambda!201528 () Int)

(declare-fun forallContained!3290 (List!52111 Int tuple2!53136) Unit!120212)

(assert (=> b!4666257 (= lt!1828077 (forallContained!3290 lt!1828075 lambda!201528 lt!1828074))))

(declare-fun contains!15180 (List!52111 tuple2!53136) Bool)

(assert (=> b!4666257 (contains!15180 lt!1828075 lt!1828074)))

(declare-fun lt!1828070 () (_ BitVec 64))

(assert (=> b!4666257 (= lt!1828074 (tuple2!53137 lt!1828070 lt!1828089))))

(declare-fun lt!1828080 () ListLongMap!3827)

(declare-fun lt!1828084 () Unit!120212)

(declare-fun lemmaGetValueImpliesTupleContained!205 (ListLongMap!3827 (_ BitVec 64) List!52110) Unit!120212)

(assert (=> b!4666257 (= lt!1828084 (lemmaGetValueImpliesTupleContained!205 lt!1828080 lt!1828070 lt!1828089))))

(declare-fun apply!12275 (ListLongMap!3827 (_ BitVec 64)) List!52110)

(assert (=> b!4666257 (= lt!1828089 (apply!12275 lt!1828080 lt!1828070))))

(declare-fun contains!15181 (ListLongMap!3827 (_ BitVec 64)) Bool)

(assert (=> b!4666257 (contains!15181 lt!1828080 lt!1828070)))

(declare-fun lt!1828086 () Unit!120212)

(declare-fun lemmaInGenMapThenLongMapContainsHash!606 (ListLongMap!3827 K!13330 Hashable!6069) Unit!120212)

(assert (=> b!4666257 (= lt!1828086 (lemmaInGenMapThenLongMapContainsHash!606 lt!1828080 key!4968 hashF!1389))))

(declare-fun lt!1828083 () Unit!120212)

(declare-fun lemmaInGenMapThenGetPairDefined!196 (ListLongMap!3827 K!13330 Hashable!6069) Unit!120212)

(assert (=> b!4666257 (= lt!1828083 (lemmaInGenMapThenGetPairDefined!196 lt!1828080 key!4968 hashF!1389))))

(assert (=> b!4666257 (= lt!1828080 (ListLongMap!3828 lt!1828075))))

(declare-fun b!4666258 () Bool)

(declare-fun res!1963604 () Bool)

(assert (=> b!4666258 (=> (not res!1963604) (not e!2911849))))

(declare-fun allKeysSameHash!1526 (List!52110 (_ BitVec 64) Hashable!6069) Bool)

(assert (=> b!4666258 (= res!1963604 (allKeysSameHash!1526 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4666259 () Bool)

(declare-fun e!2911846 () Bool)

(assert (=> b!4666259 (= e!2911846 (not e!2911844))))

(declare-fun res!1963605 () Bool)

(assert (=> b!4666259 (=> res!1963605 e!2911844)))

(get-info :version)

(assert (=> b!4666259 (= res!1963605 (or (and ((_ is Cons!51986) oldBucket!40) (= (_1!29861 (h!58156 oldBucket!40)) key!4968)) (not ((_ is Cons!51986) oldBucket!40)) (= (_1!29861 (h!58156 oldBucket!40)) key!4968)))))

(declare-fun e!2911843 () Bool)

(assert (=> b!4666259 e!2911843))

(declare-fun res!1963614 () Bool)

(assert (=> b!4666259 (=> (not res!1963614) (not e!2911843))))

(declare-fun lt!1828072 () ListMap!4613)

(assert (=> b!4666259 (= res!1963614 (= lt!1828087 (addToMapMapFromBucket!1129 oldBucket!40 lt!1828072)))))

(assert (=> b!4666259 (= lt!1828072 (extractMap!1728 Nil!51987))))

(assert (=> b!4666259 true))

(declare-fun b!4666260 () Bool)

(declare-fun e!2911850 () Bool)

(assert (=> b!4666260 (= e!2911850 e!2911846)))

(declare-fun res!1963608 () Bool)

(assert (=> b!4666260 (=> (not res!1963608) (not e!2911846))))

(assert (=> b!4666260 (= res!1963608 (= lt!1828070 hash!414))))

(declare-fun hash!3835 (Hashable!6069 K!13330) (_ BitVec 64))

(assert (=> b!4666260 (= lt!1828070 (hash!3835 hashF!1389 key!4968))))

(declare-fun b!4666262 () Bool)

(assert (=> b!4666262 (= e!2911852 e!2911847)))

(declare-fun res!1963609 () Bool)

(assert (=> b!4666262 (=> res!1963609 e!2911847)))

(assert (=> b!4666262 (= res!1963609 (not (= (removePairForKey!1295 lt!1828078 key!4968) lt!1828071)))))

(declare-fun tail!8275 (List!52110) List!52110)

(assert (=> b!4666262 (= lt!1828071 (tail!8275 newBucket!224))))

(assert (=> b!4666262 (= lt!1828078 (tail!8275 oldBucket!40))))

(declare-fun b!4666263 () Bool)

(declare-fun res!1963611 () Bool)

(assert (=> b!4666263 (=> (not res!1963611) (not e!2911849))))

(assert (=> b!4666263 (= res!1963611 (noDuplicateKeys!1672 newBucket!224))))

(declare-fun tp!1343635 () Bool)

(declare-fun b!4666264 () Bool)

(declare-fun e!2911848 () Bool)

(assert (=> b!4666264 (= e!2911848 (and tp_is_empty!29981 tp_is_empty!29983 tp!1343635))))

(declare-fun b!4666265 () Bool)

(declare-fun res!1963603 () Bool)

(assert (=> b!4666265 (=> (not res!1963603) (not e!2911846))))

(assert (=> b!4666265 (= res!1963603 (allKeysSameHash!1526 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4666266 () Bool)

(assert (=> b!4666266 (= e!2911851 true)))

(declare-fun b!4666267 () Bool)

(assert (=> b!4666267 (= e!2911843 (= lt!1828072 (ListMap!4614 Nil!51986)))))

(declare-fun b!4666268 () Bool)

(declare-fun res!1963602 () Bool)

(assert (=> b!4666268 (=> res!1963602 e!2911851)))

(assert (=> b!4666268 (= res!1963602 (not (noDuplicateKeys!1672 lt!1828071)))))

(declare-fun res!1963599 () Bool)

(assert (=> start!470392 (=> (not res!1963599) (not e!2911849))))

(assert (=> start!470392 (= res!1963599 (noDuplicateKeys!1672 oldBucket!40))))

(assert (=> start!470392 e!2911849))

(assert (=> start!470392 true))

(assert (=> start!470392 e!2911845))

(assert (=> start!470392 tp_is_empty!29981))

(assert (=> start!470392 e!2911848))

(declare-fun b!4666261 () Bool)

(assert (=> b!4666261 (= e!2911849 e!2911850)))

(declare-fun res!1963601 () Bool)

(assert (=> b!4666261 (=> (not res!1963601) (not e!2911850))))

(assert (=> b!4666261 (= res!1963601 (contains!15179 lt!1828087 key!4968))))

(assert (=> b!4666261 (= lt!1828087 (extractMap!1728 lt!1828075))))

(assert (=> b!4666261 (= lt!1828075 (Cons!51987 (tuple2!53137 hash!414 oldBucket!40) Nil!51987))))

(assert (= (and start!470392 res!1963599) b!4666263))

(assert (= (and b!4666263 res!1963611) b!4666252))

(assert (= (and b!4666252 res!1963610) b!4666258))

(assert (= (and b!4666258 res!1963604) b!4666261))

(assert (= (and b!4666261 res!1963601) b!4666260))

(assert (= (and b!4666260 res!1963608) b!4666265))

(assert (= (and b!4666265 res!1963603) b!4666259))

(assert (= (and b!4666259 res!1963614) b!4666267))

(assert (= (and b!4666259 (not res!1963605)) b!4666257))

(assert (= (and b!4666257 (not res!1963606)) b!4666262))

(assert (= (and b!4666262 (not res!1963609)) b!4666254))

(assert (= (and b!4666254 (not res!1963607)) b!4666253))

(assert (= (and b!4666253 (not res!1963613)) b!4666255))

(assert (= (and b!4666255 (not res!1963612)) b!4666256))

(assert (= (and b!4666256 (not res!1963600)) b!4666268))

(assert (= (and b!4666268 (not res!1963602)) b!4666266))

(assert (= (and start!470392 ((_ is Cons!51986) oldBucket!40)) b!4666251))

(assert (= (and start!470392 ((_ is Cons!51986) newBucket!224)) b!4666264))

(declare-fun m!5554493 () Bool)

(assert (=> b!4666254 m!5554493))

(declare-fun m!5554495 () Bool)

(assert (=> b!4666262 m!5554495))

(declare-fun m!5554497 () Bool)

(assert (=> b!4666262 m!5554497))

(declare-fun m!5554499 () Bool)

(assert (=> b!4666262 m!5554499))

(declare-fun m!5554501 () Bool)

(assert (=> b!4666252 m!5554501))

(declare-fun m!5554503 () Bool)

(assert (=> b!4666263 m!5554503))

(declare-fun m!5554505 () Bool)

(assert (=> b!4666260 m!5554505))

(declare-fun m!5554507 () Bool)

(assert (=> b!4666255 m!5554507))

(declare-fun m!5554509 () Bool)

(assert (=> b!4666255 m!5554509))

(assert (=> b!4666255 m!5554509))

(declare-fun m!5554511 () Bool)

(assert (=> b!4666255 m!5554511))

(assert (=> b!4666255 m!5554507))

(assert (=> b!4666255 m!5554511))

(declare-fun m!5554513 () Bool)

(assert (=> b!4666255 m!5554513))

(declare-fun m!5554515 () Bool)

(assert (=> b!4666253 m!5554515))

(declare-fun m!5554517 () Bool)

(assert (=> b!4666253 m!5554517))

(declare-fun m!5554519 () Bool)

(assert (=> b!4666253 m!5554519))

(declare-fun m!5554521 () Bool)

(assert (=> b!4666253 m!5554521))

(declare-fun m!5554523 () Bool)

(assert (=> b!4666253 m!5554523))

(declare-fun m!5554525 () Bool)

(assert (=> b!4666253 m!5554525))

(assert (=> b!4666253 m!5554517))

(declare-fun m!5554527 () Bool)

(assert (=> b!4666253 m!5554527))

(declare-fun m!5554529 () Bool)

(assert (=> b!4666253 m!5554529))

(declare-fun m!5554531 () Bool)

(assert (=> b!4666253 m!5554531))

(assert (=> b!4666253 m!5554515))

(declare-fun m!5554533 () Bool)

(assert (=> b!4666253 m!5554533))

(declare-fun m!5554535 () Bool)

(assert (=> b!4666253 m!5554535))

(declare-fun m!5554537 () Bool)

(assert (=> b!4666253 m!5554537))

(declare-fun m!5554539 () Bool)

(assert (=> b!4666253 m!5554539))

(assert (=> b!4666253 m!5554519))

(declare-fun m!5554541 () Bool)

(assert (=> b!4666253 m!5554541))

(assert (=> b!4666253 m!5554533))

(declare-fun m!5554543 () Bool)

(assert (=> b!4666253 m!5554543))

(declare-fun m!5554545 () Bool)

(assert (=> b!4666253 m!5554545))

(assert (=> b!4666253 m!5554525))

(assert (=> b!4666253 m!5554537))

(declare-fun m!5554547 () Bool)

(assert (=> b!4666253 m!5554547))

(assert (=> b!4666253 m!5554535))

(assert (=> b!4666253 m!5554545))

(assert (=> b!4666253 m!5554541))

(declare-fun m!5554549 () Bool)

(assert (=> b!4666253 m!5554549))

(declare-fun m!5554551 () Bool)

(assert (=> b!4666265 m!5554551))

(declare-fun m!5554553 () Bool)

(assert (=> start!470392 m!5554553))

(declare-fun m!5554555 () Bool)

(assert (=> b!4666256 m!5554555))

(declare-fun m!5554557 () Bool)

(assert (=> b!4666268 m!5554557))

(declare-fun m!5554559 () Bool)

(assert (=> b!4666258 m!5554559))

(declare-fun m!5554561 () Bool)

(assert (=> b!4666261 m!5554561))

(declare-fun m!5554563 () Bool)

(assert (=> b!4666261 m!5554563))

(declare-fun m!5554565 () Bool)

(assert (=> b!4666259 m!5554565))

(declare-fun m!5554567 () Bool)

(assert (=> b!4666259 m!5554567))

(declare-fun m!5554569 () Bool)

(assert (=> b!4666257 m!5554569))

(declare-fun m!5554571 () Bool)

(assert (=> b!4666257 m!5554571))

(declare-fun m!5554573 () Bool)

(assert (=> b!4666257 m!5554573))

(declare-fun m!5554575 () Bool)

(assert (=> b!4666257 m!5554575))

(declare-fun m!5554577 () Bool)

(assert (=> b!4666257 m!5554577))

(declare-fun m!5554579 () Bool)

(assert (=> b!4666257 m!5554579))

(declare-fun m!5554581 () Bool)

(assert (=> b!4666257 m!5554581))

(declare-fun m!5554583 () Bool)

(assert (=> b!4666257 m!5554583))

(assert (=> b!4666257 m!5554577))

(declare-fun m!5554585 () Bool)

(assert (=> b!4666257 m!5554585))

(declare-fun m!5554587 () Bool)

(assert (=> b!4666257 m!5554587))

(declare-fun m!5554589 () Bool)

(assert (=> b!4666257 m!5554589))

(declare-fun m!5554591 () Bool)

(assert (=> b!4666257 m!5554591))

(check-sat (not b!4666254) tp_is_empty!29981 (not b!4666268) (not b!4666252) tp_is_empty!29983 (not b!4666262) (not b!4666257) (not b!4666255) (not start!470392) (not b!4666253) (not b!4666256) (not b!4666260) (not b!4666265) (not b!4666259) (not b!4666264) (not b!4666251) (not b!4666263) (not b!4666261) (not b!4666258))
(check-sat)
