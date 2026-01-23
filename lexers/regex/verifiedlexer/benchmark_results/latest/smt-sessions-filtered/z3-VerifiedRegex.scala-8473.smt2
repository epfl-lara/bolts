; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440532 () Bool)

(assert start!440532)

(declare-fun tp_is_empty!27487 () Bool)

(declare-fun b!4479812 () Bool)

(declare-fun tp_is_empty!27485 () Bool)

(declare-fun e!2790050 () Bool)

(declare-fun tp!1336597 () Bool)

(assert (=> b!4479812 (= e!2790050 (and tp_is_empty!27485 tp_is_empty!27487 tp!1336597))))

(declare-fun b!4479813 () Bool)

(declare-fun e!2790055 () Bool)

(declare-fun e!2790046 () Bool)

(assert (=> b!4479813 (= e!2790055 e!2790046)))

(declare-fun res!1859764 () Bool)

(assert (=> b!4479813 (=> res!1859764 e!2790046)))

(declare-datatypes ((K!11770 0))(
  ( (K!11771 (val!17687 Int)) )
))
(declare-datatypes ((V!12016 0))(
  ( (V!12017 (val!17688 Int)) )
))
(declare-datatypes ((tuple2!50642 0))(
  ( (tuple2!50643 (_1!28615 K!11770) (_2!28615 V!12016)) )
))
(declare-datatypes ((List!50482 0))(
  ( (Nil!50358) (Cons!50358 (h!56139 tuple2!50642) (t!357436 List!50482)) )
))
(declare-datatypes ((ListMap!3373 0))(
  ( (ListMap!3374 (toList!4111 List!50482)) )
))
(declare-fun lt!1666457 () ListMap!3373)

(declare-fun lt!1666471 () ListMap!3373)

(assert (=> b!4479813 (= res!1859764 (not (= lt!1666457 lt!1666471)))))

(declare-datatypes ((tuple2!50644 0))(
  ( (tuple2!50645 (_1!28616 (_ BitVec 64)) (_2!28616 List!50482)) )
))
(declare-datatypes ((List!50483 0))(
  ( (Nil!50359) (Cons!50359 (h!56140 tuple2!50644) (t!357437 List!50483)) )
))
(declare-datatypes ((ListLongMap!2743 0))(
  ( (ListLongMap!2744 (toList!4112 List!50483)) )
))
(declare-fun lm!1477 () ListLongMap!2743)

(declare-fun extractMap!1108 (List!50483) ListMap!3373)

(assert (=> b!4479813 (= lt!1666471 (extractMap!1108 (t!357437 (toList!4112 lm!1477))))))

(declare-fun lt!1666456 () ListLongMap!2743)

(assert (=> b!4479813 (= lt!1666457 (extractMap!1108 (toList!4112 lt!1666456)))))

(declare-fun b!4479814 () Bool)

(declare-fun e!2790048 () Bool)

(declare-fun e!2790053 () Bool)

(assert (=> b!4479814 (= e!2790048 e!2790053)))

(declare-fun res!1859767 () Bool)

(assert (=> b!4479814 (=> res!1859767 e!2790053)))

(declare-fun lt!1666475 () Bool)

(assert (=> b!4479814 (= res!1859767 lt!1666475)))

(declare-datatypes ((Unit!89579 0))(
  ( (Unit!89580) )
))
(declare-fun lt!1666467 () Unit!89579)

(declare-fun e!2790044 () Unit!89579)

(assert (=> b!4479814 (= lt!1666467 e!2790044)))

(declare-fun c!763098 () Bool)

(assert (=> b!4479814 (= c!763098 lt!1666475)))

(declare-fun key!3287 () K!11770)

(declare-fun containsKey!1532 (List!50482 K!11770) Bool)

(assert (=> b!4479814 (= lt!1666475 (not (containsKey!1532 (_2!28616 (h!56140 (toList!4112 lm!1477))) key!3287)))))

(declare-fun b!4479815 () Bool)

(declare-fun res!1859758 () Bool)

(declare-fun e!2790045 () Bool)

(assert (=> b!4479815 (=> res!1859758 e!2790045)))

(declare-fun lt!1666455 () ListLongMap!2743)

(declare-fun newBucket!178 () List!50482)

(declare-fun eq!545 (ListMap!3373 ListMap!3373) Bool)

(declare-fun addToMapMapFromBucket!607 (List!50482 ListMap!3373) ListMap!3373)

(assert (=> b!4479815 (= res!1859758 (not (eq!545 (extractMap!1108 (toList!4112 lt!1666455)) (addToMapMapFromBucket!607 newBucket!178 lt!1666471))))))

(declare-fun b!4479816 () Bool)

(declare-fun e!2790049 () Unit!89579)

(declare-fun Unit!89581 () Unit!89579)

(assert (=> b!4479816 (= e!2790049 Unit!89581)))

(declare-datatypes ((Hashable!5447 0))(
  ( (HashableExt!5446 (__x!31150 Int)) )
))
(declare-fun hashF!1107 () Hashable!5447)

(declare-fun lt!1666463 () Unit!89579)

(declare-fun lemmaInGenMapThenLongMapContainsHash!126 (ListLongMap!2743 K!11770 Hashable!5447) Unit!89579)

(assert (=> b!4479816 (= lt!1666463 (lemmaInGenMapThenLongMapContainsHash!126 lt!1666456 key!3287 hashF!1107))))

(declare-fun res!1859754 () Bool)

(declare-fun lt!1666464 () (_ BitVec 64))

(declare-fun contains!12943 (ListLongMap!2743 (_ BitVec 64)) Bool)

(assert (=> b!4479816 (= res!1859754 (contains!12943 lt!1666456 lt!1666464))))

(declare-fun e!2790052 () Bool)

(assert (=> b!4479816 (=> (not res!1859754) (not e!2790052))))

(assert (=> b!4479816 e!2790052))

(declare-fun b!4479817 () Bool)

(declare-fun Unit!89582 () Unit!89579)

(assert (=> b!4479817 (= e!2790044 Unit!89582)))

(declare-fun lt!1666460 () Unit!89579)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!52 (ListLongMap!2743 K!11770 Hashable!5447) Unit!89579)

(assert (=> b!4479817 (= lt!1666460 (lemmaNotInItsHashBucketThenNotInMap!52 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4479817 false))

(declare-fun b!4479818 () Bool)

(declare-fun e!2790057 () Bool)

(assert (=> b!4479818 (= e!2790057 e!2790055)))

(declare-fun res!1859752 () Bool)

(assert (=> b!4479818 (=> res!1859752 e!2790055)))

(declare-fun lt!1666468 () tuple2!50644)

(declare-fun +!1404 (ListLongMap!2743 tuple2!50644) ListLongMap!2743)

(assert (=> b!4479818 (= res!1859752 (not (= lt!1666455 (+!1404 lt!1666456 lt!1666468))))))

(declare-fun tail!7556 (ListLongMap!2743) ListLongMap!2743)

(assert (=> b!4479818 (= lt!1666456 (tail!7556 lm!1477))))

(declare-fun b!4479819 () Bool)

(declare-fun e!2790047 () Bool)

(assert (=> b!4479819 (= e!2790047 (not e!2790048))))

(declare-fun res!1859756 () Bool)

(assert (=> b!4479819 (=> res!1859756 e!2790048)))

(declare-fun lt!1666474 () List!50482)

(declare-fun removePairForKey!679 (List!50482 K!11770) List!50482)

(assert (=> b!4479819 (= res!1859756 (not (= newBucket!178 (removePairForKey!679 lt!1666474 key!3287))))))

(declare-fun lambda!165041 () Int)

(declare-fun lt!1666466 () Unit!89579)

(declare-fun lt!1666453 () tuple2!50644)

(declare-fun forallContained!2303 (List!50483 Int tuple2!50644) Unit!89579)

(assert (=> b!4479819 (= lt!1666466 (forallContained!2303 (toList!4112 lm!1477) lambda!165041 lt!1666453))))

(declare-fun contains!12944 (List!50483 tuple2!50644) Bool)

(assert (=> b!4479819 (contains!12944 (toList!4112 lm!1477) lt!1666453)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4479819 (= lt!1666453 (tuple2!50645 hash!344 lt!1666474))))

(declare-fun lt!1666459 () Unit!89579)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!564 (List!50483 (_ BitVec 64) List!50482) Unit!89579)

(assert (=> b!4479819 (= lt!1666459 (lemmaGetValueByKeyImpliesContainsTuple!564 (toList!4112 lm!1477) hash!344 lt!1666474))))

(declare-fun apply!11789 (ListLongMap!2743 (_ BitVec 64)) List!50482)

(assert (=> b!4479819 (= lt!1666474 (apply!11789 lm!1477 hash!344))))

(assert (=> b!4479819 (contains!12943 lm!1477 lt!1666464)))

(declare-fun lt!1666465 () Unit!89579)

(assert (=> b!4479819 (= lt!1666465 (lemmaInGenMapThenLongMapContainsHash!126 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1859759 () Bool)

(declare-fun e!2790043 () Bool)

(assert (=> start!440532 (=> (not res!1859759) (not e!2790043))))

(declare-fun forall!10042 (List!50483 Int) Bool)

(assert (=> start!440532 (= res!1859759 (forall!10042 (toList!4112 lm!1477) lambda!165041))))

(assert (=> start!440532 e!2790043))

(assert (=> start!440532 true))

(declare-fun e!2790056 () Bool)

(declare-fun inv!65954 (ListLongMap!2743) Bool)

(assert (=> start!440532 (and (inv!65954 lm!1477) e!2790056)))

(assert (=> start!440532 tp_is_empty!27485))

(assert (=> start!440532 e!2790050))

(declare-fun b!4479820 () Bool)

(declare-fun e!2790051 () Bool)

(assert (=> b!4479820 (= e!2790053 e!2790051)))

(declare-fun res!1859766 () Bool)

(assert (=> b!4479820 (=> res!1859766 e!2790051)))

(declare-fun lt!1666461 () List!50483)

(declare-fun containsKeyBiggerList!52 (List!50483 K!11770) Bool)

(assert (=> b!4479820 (= res!1859766 (not (containsKeyBiggerList!52 lt!1666461 key!3287)))))

(assert (=> b!4479820 (= lt!1666461 (Cons!50359 (h!56140 (toList!4112 lm!1477)) Nil!50359))))

(declare-fun b!4479821 () Bool)

(declare-fun res!1859765 () Bool)

(assert (=> b!4479821 (=> res!1859765 e!2790048)))

(declare-fun noDuplicateKeys!1052 (List!50482) Bool)

(assert (=> b!4479821 (= res!1859765 (not (noDuplicateKeys!1052 newBucket!178)))))

(declare-fun b!4479822 () Bool)

(declare-fun res!1859753 () Bool)

(assert (=> b!4479822 (=> res!1859753 e!2790048)))

(get-info :version)

(assert (=> b!4479822 (= res!1859753 (or ((_ is Nil!50359) (toList!4112 lm!1477)) (not (= (_1!28616 (h!56140 (toList!4112 lm!1477))) hash!344))))))

(declare-fun b!4479823 () Bool)

(declare-fun res!1859757 () Bool)

(assert (=> b!4479823 (=> (not res!1859757) (not e!2790043))))

(declare-fun allKeysSameHashInMap!1159 (ListLongMap!2743 Hashable!5447) Bool)

(assert (=> b!4479823 (= res!1859757 (allKeysSameHashInMap!1159 lm!1477 hashF!1107))))

(declare-fun b!4479824 () Bool)

(assert (=> b!4479824 (= e!2790052 false)))

(declare-fun b!4479825 () Bool)

(assert (=> b!4479825 (= e!2790051 e!2790057)))

(declare-fun res!1859755 () Bool)

(assert (=> b!4479825 (=> res!1859755 e!2790057)))

(declare-fun tail!7557 (List!50483) List!50483)

(assert (=> b!4479825 (= res!1859755 (not (= (t!357437 (toList!4112 lm!1477)) (tail!7557 (toList!4112 lt!1666455)))))))

(assert (=> b!4479825 (= lt!1666455 (+!1404 lm!1477 lt!1666468))))

(declare-fun lt!1666476 () tuple2!50644)

(declare-fun -!314 (ListMap!3373 K!11770) ListMap!3373)

(assert (=> b!4479825 (eq!545 (extractMap!1108 (Cons!50359 lt!1666468 Nil!50359)) (-!314 (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359)) key!3287))))

(assert (=> b!4479825 (= lt!1666476 (tuple2!50645 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477)))))))

(assert (=> b!4479825 (= lt!1666468 (tuple2!50645 hash!344 newBucket!178))))

(declare-fun lt!1666469 () Unit!89579)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!44 ((_ BitVec 64) List!50482 List!50482 K!11770 Hashable!5447) Unit!89579)

(assert (=> b!4479825 (= lt!1666469 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!44 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun contains!12945 (ListMap!3373 K!11770) Bool)

(assert (=> b!4479825 (contains!12945 (extractMap!1108 lt!1666461) key!3287)))

(declare-fun lt!1666470 () Unit!89579)

(declare-fun lemmaListContainsThenExtractedMapContains!48 (ListLongMap!2743 K!11770 Hashable!5447) Unit!89579)

(assert (=> b!4479825 (= lt!1666470 (lemmaListContainsThenExtractedMapContains!48 (ListLongMap!2744 lt!1666461) key!3287 hashF!1107))))

(declare-fun b!4479826 () Bool)

(declare-fun res!1859761 () Bool)

(assert (=> b!4479826 (=> (not res!1859761) (not e!2790047))))

(declare-fun allKeysSameHash!906 (List!50482 (_ BitVec 64) Hashable!5447) Bool)

(assert (=> b!4479826 (= res!1859761 (allKeysSameHash!906 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4479827 () Bool)

(declare-fun Unit!89583 () Unit!89579)

(assert (=> b!4479827 (= e!2790044 Unit!89583)))

(declare-fun b!4479828 () Bool)

(declare-fun e!2790054 () Bool)

(assert (=> b!4479828 (= e!2790054 e!2790045)))

(declare-fun res!1859760 () Bool)

(assert (=> b!4479828 (=> res!1859760 e!2790045)))

(assert (=> b!4479828 (= res!1859760 (not (= (toList!4112 lt!1666455) (Cons!50359 lt!1666468 (t!357437 (toList!4112 lm!1477))))))))

(declare-fun lt!1666472 () List!50483)

(assert (=> b!4479828 (eq!545 (extractMap!1108 (Cons!50359 lt!1666468 lt!1666472)) (-!314 (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472)) key!3287))))

(assert (=> b!4479828 (= lt!1666472 (tail!7557 (toList!4112 lm!1477)))))

(declare-fun lt!1666458 () Unit!89579)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!12 (ListLongMap!2743 (_ BitVec 64) List!50482 List!50482 K!11770 Hashable!5447) Unit!89579)

(assert (=> b!4479828 (= lt!1666458 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!12 lm!1477 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4479829 () Bool)

(declare-fun res!1859768 () Bool)

(assert (=> b!4479829 (=> (not res!1859768) (not e!2790043))))

(assert (=> b!4479829 (= res!1859768 (contains!12945 (extractMap!1108 (toList!4112 lm!1477)) key!3287))))

(declare-fun b!4479830 () Bool)

(declare-fun Unit!89584 () Unit!89579)

(assert (=> b!4479830 (= e!2790049 Unit!89584)))

(declare-fun b!4479831 () Bool)

(assert (=> b!4479831 (= e!2790045 (noDuplicateKeys!1052 (_2!28616 (h!56140 (toList!4112 lm!1477)))))))

(declare-fun lt!1666462 () ListMap!3373)

(assert (=> b!4479831 (= lt!1666462 (extractMap!1108 (toList!4112 (+!1404 lm!1477 lt!1666476))))))

(declare-fun b!4479832 () Bool)

(assert (=> b!4479832 (= e!2790046 e!2790054)))

(declare-fun res!1859762 () Bool)

(assert (=> b!4479832 (=> res!1859762 e!2790054)))

(declare-fun lt!1666454 () Bool)

(assert (=> b!4479832 (= res!1859762 lt!1666454)))

(declare-fun lt!1666473 () Unit!89579)

(assert (=> b!4479832 (= lt!1666473 e!2790049)))

(declare-fun c!763099 () Bool)

(assert (=> b!4479832 (= c!763099 lt!1666454)))

(assert (=> b!4479832 (= lt!1666454 (contains!12945 lt!1666457 key!3287))))

(declare-fun b!4479833 () Bool)

(assert (=> b!4479833 (= e!2790043 e!2790047)))

(declare-fun res!1859763 () Bool)

(assert (=> b!4479833 (=> (not res!1859763) (not e!2790047))))

(assert (=> b!4479833 (= res!1859763 (= lt!1666464 hash!344))))

(declare-fun hash!2527 (Hashable!5447 K!11770) (_ BitVec 64))

(assert (=> b!4479833 (= lt!1666464 (hash!2527 hashF!1107 key!3287))))

(declare-fun b!4479834 () Bool)

(declare-fun tp!1336596 () Bool)

(assert (=> b!4479834 (= e!2790056 tp!1336596)))

(assert (= (and start!440532 res!1859759) b!4479823))

(assert (= (and b!4479823 res!1859757) b!4479829))

(assert (= (and b!4479829 res!1859768) b!4479833))

(assert (= (and b!4479833 res!1859763) b!4479826))

(assert (= (and b!4479826 res!1859761) b!4479819))

(assert (= (and b!4479819 (not res!1859756)) b!4479821))

(assert (= (and b!4479821 (not res!1859765)) b!4479822))

(assert (= (and b!4479822 (not res!1859753)) b!4479814))

(assert (= (and b!4479814 c!763098) b!4479817))

(assert (= (and b!4479814 (not c!763098)) b!4479827))

(assert (= (and b!4479814 (not res!1859767)) b!4479820))

(assert (= (and b!4479820 (not res!1859766)) b!4479825))

(assert (= (and b!4479825 (not res!1859755)) b!4479818))

(assert (= (and b!4479818 (not res!1859752)) b!4479813))

(assert (= (and b!4479813 (not res!1859764)) b!4479832))

(assert (= (and b!4479832 c!763099) b!4479816))

(assert (= (and b!4479832 (not c!763099)) b!4479830))

(assert (= (and b!4479816 res!1859754) b!4479824))

(assert (= (and b!4479832 (not res!1859762)) b!4479828))

(assert (= (and b!4479828 (not res!1859760)) b!4479815))

(assert (= (and b!4479815 (not res!1859758)) b!4479831))

(assert (= start!440532 b!4479834))

(assert (= (and start!440532 ((_ is Cons!50358) newBucket!178)) b!4479812))

(declare-fun m!5198239 () Bool)

(assert (=> b!4479829 m!5198239))

(assert (=> b!4479829 m!5198239))

(declare-fun m!5198241 () Bool)

(assert (=> b!4479829 m!5198241))

(declare-fun m!5198243 () Bool)

(assert (=> b!4479814 m!5198243))

(declare-fun m!5198245 () Bool)

(assert (=> start!440532 m!5198245))

(declare-fun m!5198247 () Bool)

(assert (=> start!440532 m!5198247))

(declare-fun m!5198249 () Bool)

(assert (=> b!4479818 m!5198249))

(declare-fun m!5198251 () Bool)

(assert (=> b!4479818 m!5198251))

(declare-fun m!5198253 () Bool)

(assert (=> b!4479833 m!5198253))

(declare-fun m!5198255 () Bool)

(assert (=> b!4479817 m!5198255))

(declare-fun m!5198257 () Bool)

(assert (=> b!4479820 m!5198257))

(declare-fun m!5198259 () Bool)

(assert (=> b!4479813 m!5198259))

(declare-fun m!5198261 () Bool)

(assert (=> b!4479813 m!5198261))

(declare-fun m!5198263 () Bool)

(assert (=> b!4479821 m!5198263))

(declare-fun m!5198265 () Bool)

(assert (=> b!4479819 m!5198265))

(declare-fun m!5198267 () Bool)

(assert (=> b!4479819 m!5198267))

(declare-fun m!5198269 () Bool)

(assert (=> b!4479819 m!5198269))

(declare-fun m!5198271 () Bool)

(assert (=> b!4479819 m!5198271))

(declare-fun m!5198273 () Bool)

(assert (=> b!4479819 m!5198273))

(declare-fun m!5198275 () Bool)

(assert (=> b!4479819 m!5198275))

(declare-fun m!5198277 () Bool)

(assert (=> b!4479819 m!5198277))

(declare-fun m!5198279 () Bool)

(assert (=> b!4479825 m!5198279))

(declare-fun m!5198281 () Bool)

(assert (=> b!4479825 m!5198281))

(declare-fun m!5198283 () Bool)

(assert (=> b!4479825 m!5198283))

(declare-fun m!5198285 () Bool)

(assert (=> b!4479825 m!5198285))

(declare-fun m!5198287 () Bool)

(assert (=> b!4479825 m!5198287))

(assert (=> b!4479825 m!5198281))

(declare-fun m!5198289 () Bool)

(assert (=> b!4479825 m!5198289))

(declare-fun m!5198291 () Bool)

(assert (=> b!4479825 m!5198291))

(assert (=> b!4479825 m!5198289))

(declare-fun m!5198293 () Bool)

(assert (=> b!4479825 m!5198293))

(assert (=> b!4479825 m!5198283))

(declare-fun m!5198295 () Bool)

(assert (=> b!4479825 m!5198295))

(declare-fun m!5198297 () Bool)

(assert (=> b!4479825 m!5198297))

(assert (=> b!4479825 m!5198293))

(declare-fun m!5198299 () Bool)

(assert (=> b!4479823 m!5198299))

(declare-fun m!5198301 () Bool)

(assert (=> b!4479826 m!5198301))

(declare-fun m!5198303 () Bool)

(assert (=> b!4479831 m!5198303))

(declare-fun m!5198305 () Bool)

(assert (=> b!4479831 m!5198305))

(declare-fun m!5198307 () Bool)

(assert (=> b!4479831 m!5198307))

(declare-fun m!5198309 () Bool)

(assert (=> b!4479832 m!5198309))

(declare-fun m!5198311 () Bool)

(assert (=> b!4479816 m!5198311))

(declare-fun m!5198313 () Bool)

(assert (=> b!4479816 m!5198313))

(declare-fun m!5198315 () Bool)

(assert (=> b!4479828 m!5198315))

(declare-fun m!5198317 () Bool)

(assert (=> b!4479828 m!5198317))

(declare-fun m!5198319 () Bool)

(assert (=> b!4479828 m!5198319))

(declare-fun m!5198321 () Bool)

(assert (=> b!4479828 m!5198321))

(declare-fun m!5198323 () Bool)

(assert (=> b!4479828 m!5198323))

(assert (=> b!4479828 m!5198315))

(assert (=> b!4479828 m!5198321))

(declare-fun m!5198325 () Bool)

(assert (=> b!4479828 m!5198325))

(assert (=> b!4479828 m!5198319))

(declare-fun m!5198327 () Bool)

(assert (=> b!4479815 m!5198327))

(declare-fun m!5198329 () Bool)

(assert (=> b!4479815 m!5198329))

(assert (=> b!4479815 m!5198327))

(assert (=> b!4479815 m!5198329))

(declare-fun m!5198331 () Bool)

(assert (=> b!4479815 m!5198331))

(check-sat (not b!4479814) tp_is_empty!27487 (not b!4479823) (not b!4479834) (not b!4479828) (not b!4479815) tp_is_empty!27485 (not b!4479833) (not b!4479819) (not b!4479826) (not b!4479813) (not b!4479825) (not b!4479816) (not b!4479821) (not start!440532) (not b!4479832) (not b!4479829) (not b!4479818) (not b!4479831) (not b!4479812) (not b!4479820) (not b!4479817))
(check-sat)
(get-model)

(declare-fun bs!824052 () Bool)

(declare-fun d!1371094 () Bool)

(assert (= bs!824052 (and d!1371094 start!440532)))

(declare-fun lambda!165047 () Int)

(assert (=> bs!824052 (= lambda!165047 lambda!165041)))

(declare-fun lt!1666499 () ListMap!3373)

(declare-fun invariantList!945 (List!50482) Bool)

(assert (=> d!1371094 (invariantList!945 (toList!4111 lt!1666499))))

(declare-fun e!2790074 () ListMap!3373)

(assert (=> d!1371094 (= lt!1666499 e!2790074)))

(declare-fun c!763111 () Bool)

(assert (=> d!1371094 (= c!763111 ((_ is Cons!50359) (t!357437 (toList!4112 lm!1477))))))

(assert (=> d!1371094 (forall!10042 (t!357437 (toList!4112 lm!1477)) lambda!165047)))

(assert (=> d!1371094 (= (extractMap!1108 (t!357437 (toList!4112 lm!1477))) lt!1666499)))

(declare-fun b!4479862 () Bool)

(assert (=> b!4479862 (= e!2790074 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (t!357437 (toList!4112 lm!1477)))) (extractMap!1108 (t!357437 (t!357437 (toList!4112 lm!1477))))))))

(declare-fun b!4479863 () Bool)

(assert (=> b!4479863 (= e!2790074 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371094 c!763111) b!4479862))

(assert (= (and d!1371094 (not c!763111)) b!4479863))

(declare-fun m!5198363 () Bool)

(assert (=> d!1371094 m!5198363))

(declare-fun m!5198365 () Bool)

(assert (=> d!1371094 m!5198365))

(declare-fun m!5198367 () Bool)

(assert (=> b!4479862 m!5198367))

(assert (=> b!4479862 m!5198367))

(declare-fun m!5198369 () Bool)

(assert (=> b!4479862 m!5198369))

(assert (=> b!4479813 d!1371094))

(declare-fun bs!824053 () Bool)

(declare-fun d!1371108 () Bool)

(assert (= bs!824053 (and d!1371108 start!440532)))

(declare-fun lambda!165048 () Int)

(assert (=> bs!824053 (= lambda!165048 lambda!165041)))

(declare-fun bs!824054 () Bool)

(assert (= bs!824054 (and d!1371108 d!1371094)))

(assert (=> bs!824054 (= lambda!165048 lambda!165047)))

(declare-fun lt!1666501 () ListMap!3373)

(assert (=> d!1371108 (invariantList!945 (toList!4111 lt!1666501))))

(declare-fun e!2790076 () ListMap!3373)

(assert (=> d!1371108 (= lt!1666501 e!2790076)))

(declare-fun c!763112 () Bool)

(assert (=> d!1371108 (= c!763112 ((_ is Cons!50359) (toList!4112 lt!1666456)))))

(assert (=> d!1371108 (forall!10042 (toList!4112 lt!1666456) lambda!165048)))

(assert (=> d!1371108 (= (extractMap!1108 (toList!4112 lt!1666456)) lt!1666501)))

(declare-fun b!4479865 () Bool)

(assert (=> b!4479865 (= e!2790076 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (toList!4112 lt!1666456))) (extractMap!1108 (t!357437 (toList!4112 lt!1666456)))))))

(declare-fun b!4479866 () Bool)

(assert (=> b!4479866 (= e!2790076 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371108 c!763112) b!4479865))

(assert (= (and d!1371108 (not c!763112)) b!4479866))

(declare-fun m!5198373 () Bool)

(assert (=> d!1371108 m!5198373))

(declare-fun m!5198377 () Bool)

(assert (=> d!1371108 m!5198377))

(declare-fun m!5198379 () Bool)

(assert (=> b!4479865 m!5198379))

(assert (=> b!4479865 m!5198379))

(declare-fun m!5198381 () Bool)

(assert (=> b!4479865 m!5198381))

(assert (=> b!4479813 d!1371108))

(declare-fun bs!824058 () Bool)

(declare-fun d!1371112 () Bool)

(assert (= bs!824058 (and d!1371112 start!440532)))

(declare-fun lambda!165051 () Int)

(assert (=> bs!824058 (not (= lambda!165051 lambda!165041))))

(declare-fun bs!824060 () Bool)

(assert (= bs!824060 (and d!1371112 d!1371094)))

(assert (=> bs!824060 (not (= lambda!165051 lambda!165047))))

(declare-fun bs!824061 () Bool)

(assert (= bs!824061 (and d!1371112 d!1371108)))

(assert (=> bs!824061 (not (= lambda!165051 lambda!165048))))

(assert (=> d!1371112 true))

(assert (=> d!1371112 (= (allKeysSameHashInMap!1159 lm!1477 hashF!1107) (forall!10042 (toList!4112 lm!1477) lambda!165051))))

(declare-fun bs!824062 () Bool)

(assert (= bs!824062 d!1371112))

(declare-fun m!5198407 () Bool)

(assert (=> bs!824062 m!5198407))

(assert (=> b!4479823 d!1371112))

(declare-fun d!1371124 () Bool)

(declare-fun hash!2532 (Hashable!5447 K!11770) (_ BitVec 64))

(assert (=> d!1371124 (= (hash!2527 hashF!1107 key!3287) (hash!2532 hashF!1107 key!3287))))

(declare-fun bs!824063 () Bool)

(assert (= bs!824063 d!1371124))

(declare-fun m!5198409 () Bool)

(assert (=> bs!824063 m!5198409))

(assert (=> b!4479833 d!1371124))

(declare-fun b!4479915 () Bool)

(assert (=> b!4479915 false))

(declare-fun lt!1666538 () Unit!89579)

(declare-fun lt!1666537 () Unit!89579)

(assert (=> b!4479915 (= lt!1666538 lt!1666537)))

(declare-fun containsKey!1534 (List!50482 K!11770) Bool)

(assert (=> b!4479915 (containsKey!1534 (toList!4111 lt!1666457) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!391 (List!50482 K!11770) Unit!89579)

(assert (=> b!4479915 (= lt!1666537 (lemmaInGetKeysListThenContainsKey!391 (toList!4111 lt!1666457) key!3287))))

(declare-fun e!2790116 () Unit!89579)

(declare-fun Unit!89598 () Unit!89579)

(assert (=> b!4479915 (= e!2790116 Unit!89598)))

(declare-fun b!4479916 () Bool)

(declare-fun e!2790114 () Bool)

(declare-fun e!2790112 () Bool)

(assert (=> b!4479916 (= e!2790114 e!2790112)))

(declare-fun res!1859798 () Bool)

(assert (=> b!4479916 (=> (not res!1859798) (not e!2790112))))

(declare-datatypes ((Option!10961 0))(
  ( (None!10960) (Some!10960 (v!44328 V!12016)) )
))
(declare-fun isDefined!8248 (Option!10961) Bool)

(declare-fun getValueByKey!947 (List!50482 K!11770) Option!10961)

(assert (=> b!4479916 (= res!1859798 (isDefined!8248 (getValueByKey!947 (toList!4111 lt!1666457) key!3287)))))

(declare-fun b!4479918 () Bool)

(declare-fun e!2790115 () Unit!89579)

(assert (=> b!4479918 (= e!2790115 e!2790116)))

(declare-fun c!763127 () Bool)

(declare-fun call!311980 () Bool)

(assert (=> b!4479918 (= c!763127 call!311980)))

(declare-fun b!4479919 () Bool)

(declare-datatypes ((List!50484 0))(
  ( (Nil!50360) (Cons!50360 (h!56143 K!11770) (t!357438 List!50484)) )
))
(declare-fun e!2790113 () List!50484)

(declare-fun keys!17409 (ListMap!3373) List!50484)

(assert (=> b!4479919 (= e!2790113 (keys!17409 lt!1666457))))

(declare-fun b!4479920 () Bool)

(declare-fun lt!1666539 () Unit!89579)

(assert (=> b!4479920 (= e!2790115 lt!1666539)))

(declare-fun lt!1666540 () Unit!89579)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!851 (List!50482 K!11770) Unit!89579)

(assert (=> b!4479920 (= lt!1666540 (lemmaContainsKeyImpliesGetValueByKeyDefined!851 (toList!4111 lt!1666457) key!3287))))

(assert (=> b!4479920 (isDefined!8248 (getValueByKey!947 (toList!4111 lt!1666457) key!3287))))

(declare-fun lt!1666535 () Unit!89579)

(assert (=> b!4479920 (= lt!1666535 lt!1666540)))

(declare-fun lemmaInListThenGetKeysListContains!388 (List!50482 K!11770) Unit!89579)

(assert (=> b!4479920 (= lt!1666539 (lemmaInListThenGetKeysListContains!388 (toList!4111 lt!1666457) key!3287))))

(assert (=> b!4479920 call!311980))

(declare-fun b!4479921 () Bool)

(declare-fun getKeysList!392 (List!50482) List!50484)

(assert (=> b!4479921 (= e!2790113 (getKeysList!392 (toList!4111 lt!1666457)))))

(declare-fun b!4479922 () Bool)

(declare-fun Unit!89600 () Unit!89579)

(assert (=> b!4479922 (= e!2790116 Unit!89600)))

(declare-fun b!4479917 () Bool)

(declare-fun e!2790111 () Bool)

(declare-fun contains!12946 (List!50484 K!11770) Bool)

(assert (=> b!4479917 (= e!2790111 (not (contains!12946 (keys!17409 lt!1666457) key!3287)))))

(declare-fun d!1371126 () Bool)

(assert (=> d!1371126 e!2790114))

(declare-fun res!1859799 () Bool)

(assert (=> d!1371126 (=> res!1859799 e!2790114)))

(assert (=> d!1371126 (= res!1859799 e!2790111)))

(declare-fun res!1859797 () Bool)

(assert (=> d!1371126 (=> (not res!1859797) (not e!2790111))))

(declare-fun lt!1666534 () Bool)

(assert (=> d!1371126 (= res!1859797 (not lt!1666534))))

(declare-fun lt!1666536 () Bool)

(assert (=> d!1371126 (= lt!1666534 lt!1666536)))

(declare-fun lt!1666541 () Unit!89579)

(assert (=> d!1371126 (= lt!1666541 e!2790115)))

(declare-fun c!763125 () Bool)

(assert (=> d!1371126 (= c!763125 lt!1666536)))

(assert (=> d!1371126 (= lt!1666536 (containsKey!1534 (toList!4111 lt!1666457) key!3287))))

(assert (=> d!1371126 (= (contains!12945 lt!1666457 key!3287) lt!1666534)))

(declare-fun b!4479923 () Bool)

(assert (=> b!4479923 (= e!2790112 (contains!12946 (keys!17409 lt!1666457) key!3287))))

(declare-fun bm!311975 () Bool)

(assert (=> bm!311975 (= call!311980 (contains!12946 e!2790113 key!3287))))

(declare-fun c!763126 () Bool)

(assert (=> bm!311975 (= c!763126 c!763125)))

(assert (= (and d!1371126 c!763125) b!4479920))

(assert (= (and d!1371126 (not c!763125)) b!4479918))

(assert (= (and b!4479918 c!763127) b!4479915))

(assert (= (and b!4479918 (not c!763127)) b!4479922))

(assert (= (or b!4479920 b!4479918) bm!311975))

(assert (= (and bm!311975 c!763126) b!4479921))

(assert (= (and bm!311975 (not c!763126)) b!4479919))

(assert (= (and d!1371126 res!1859797) b!4479917))

(assert (= (and d!1371126 (not res!1859799)) b!4479916))

(assert (= (and b!4479916 res!1859798) b!4479923))

(declare-fun m!5198439 () Bool)

(assert (=> b!4479919 m!5198439))

(assert (=> b!4479917 m!5198439))

(assert (=> b!4479917 m!5198439))

(declare-fun m!5198441 () Bool)

(assert (=> b!4479917 m!5198441))

(assert (=> b!4479923 m!5198439))

(assert (=> b!4479923 m!5198439))

(assert (=> b!4479923 m!5198441))

(declare-fun m!5198443 () Bool)

(assert (=> b!4479920 m!5198443))

(declare-fun m!5198445 () Bool)

(assert (=> b!4479920 m!5198445))

(assert (=> b!4479920 m!5198445))

(declare-fun m!5198447 () Bool)

(assert (=> b!4479920 m!5198447))

(declare-fun m!5198449 () Bool)

(assert (=> b!4479920 m!5198449))

(declare-fun m!5198451 () Bool)

(assert (=> b!4479915 m!5198451))

(declare-fun m!5198453 () Bool)

(assert (=> b!4479915 m!5198453))

(declare-fun m!5198455 () Bool)

(assert (=> bm!311975 m!5198455))

(assert (=> b!4479916 m!5198445))

(assert (=> b!4479916 m!5198445))

(assert (=> b!4479916 m!5198447))

(declare-fun m!5198457 () Bool)

(assert (=> b!4479921 m!5198457))

(assert (=> d!1371126 m!5198451))

(assert (=> b!4479832 d!1371126))

(declare-fun d!1371136 () Bool)

(declare-fun res!1859804 () Bool)

(declare-fun e!2790121 () Bool)

(assert (=> d!1371136 (=> res!1859804 e!2790121)))

(assert (=> d!1371136 (= res!1859804 (not ((_ is Cons!50358) newBucket!178)))))

(assert (=> d!1371136 (= (noDuplicateKeys!1052 newBucket!178) e!2790121)))

(declare-fun b!4479928 () Bool)

(declare-fun e!2790122 () Bool)

(assert (=> b!4479928 (= e!2790121 e!2790122)))

(declare-fun res!1859805 () Bool)

(assert (=> b!4479928 (=> (not res!1859805) (not e!2790122))))

(assert (=> b!4479928 (= res!1859805 (not (containsKey!1532 (t!357436 newBucket!178) (_1!28615 (h!56139 newBucket!178)))))))

(declare-fun b!4479929 () Bool)

(assert (=> b!4479929 (= e!2790122 (noDuplicateKeys!1052 (t!357436 newBucket!178)))))

(assert (= (and d!1371136 (not res!1859804)) b!4479928))

(assert (= (and b!4479928 res!1859805) b!4479929))

(declare-fun m!5198459 () Bool)

(assert (=> b!4479928 m!5198459))

(declare-fun m!5198461 () Bool)

(assert (=> b!4479929 m!5198461))

(assert (=> b!4479821 d!1371136))

(declare-fun d!1371138 () Bool)

(declare-fun res!1859812 () Bool)

(declare-fun e!2790131 () Bool)

(assert (=> d!1371138 (=> res!1859812 e!2790131)))

(declare-fun e!2790129 () Bool)

(assert (=> d!1371138 (= res!1859812 e!2790129)))

(declare-fun res!1859813 () Bool)

(assert (=> d!1371138 (=> (not res!1859813) (not e!2790129))))

(assert (=> d!1371138 (= res!1859813 ((_ is Cons!50359) lt!1666461))))

(assert (=> d!1371138 (= (containsKeyBiggerList!52 lt!1666461 key!3287) e!2790131)))

(declare-fun b!4479936 () Bool)

(assert (=> b!4479936 (= e!2790129 (containsKey!1532 (_2!28616 (h!56140 lt!1666461)) key!3287))))

(declare-fun b!4479937 () Bool)

(declare-fun e!2790130 () Bool)

(assert (=> b!4479937 (= e!2790131 e!2790130)))

(declare-fun res!1859814 () Bool)

(assert (=> b!4479937 (=> (not res!1859814) (not e!2790130))))

(assert (=> b!4479937 (= res!1859814 ((_ is Cons!50359) lt!1666461))))

(declare-fun b!4479938 () Bool)

(assert (=> b!4479938 (= e!2790130 (containsKeyBiggerList!52 (t!357437 lt!1666461) key!3287))))

(assert (= (and d!1371138 res!1859813) b!4479936))

(assert (= (and d!1371138 (not res!1859812)) b!4479937))

(assert (= (and b!4479937 res!1859814) b!4479938))

(declare-fun m!5198463 () Bool)

(assert (=> b!4479936 m!5198463))

(declare-fun m!5198465 () Bool)

(assert (=> b!4479938 m!5198465))

(assert (=> b!4479820 d!1371138))

(declare-fun d!1371140 () Bool)

(declare-fun res!1859815 () Bool)

(declare-fun e!2790132 () Bool)

(assert (=> d!1371140 (=> res!1859815 e!2790132)))

(assert (=> d!1371140 (= res!1859815 (not ((_ is Cons!50358) (_2!28616 (h!56140 (toList!4112 lm!1477))))))))

(assert (=> d!1371140 (= (noDuplicateKeys!1052 (_2!28616 (h!56140 (toList!4112 lm!1477)))) e!2790132)))

(declare-fun b!4479939 () Bool)

(declare-fun e!2790133 () Bool)

(assert (=> b!4479939 (= e!2790132 e!2790133)))

(declare-fun res!1859816 () Bool)

(assert (=> b!4479939 (=> (not res!1859816) (not e!2790133))))

(assert (=> b!4479939 (= res!1859816 (not (containsKey!1532 (t!357436 (_2!28616 (h!56140 (toList!4112 lm!1477)))) (_1!28615 (h!56139 (_2!28616 (h!56140 (toList!4112 lm!1477))))))))))

(declare-fun b!4479940 () Bool)

(assert (=> b!4479940 (= e!2790133 (noDuplicateKeys!1052 (t!357436 (_2!28616 (h!56140 (toList!4112 lm!1477))))))))

(assert (= (and d!1371140 (not res!1859815)) b!4479939))

(assert (= (and b!4479939 res!1859816) b!4479940))

(declare-fun m!5198467 () Bool)

(assert (=> b!4479939 m!5198467))

(declare-fun m!5198469 () Bool)

(assert (=> b!4479940 m!5198469))

(assert (=> b!4479831 d!1371140))

(declare-fun bs!824077 () Bool)

(declare-fun d!1371142 () Bool)

(assert (= bs!824077 (and d!1371142 start!440532)))

(declare-fun lambda!165058 () Int)

(assert (=> bs!824077 (= lambda!165058 lambda!165041)))

(declare-fun bs!824078 () Bool)

(assert (= bs!824078 (and d!1371142 d!1371094)))

(assert (=> bs!824078 (= lambda!165058 lambda!165047)))

(declare-fun bs!824079 () Bool)

(assert (= bs!824079 (and d!1371142 d!1371108)))

(assert (=> bs!824079 (= lambda!165058 lambda!165048)))

(declare-fun bs!824080 () Bool)

(assert (= bs!824080 (and d!1371142 d!1371112)))

(assert (=> bs!824080 (not (= lambda!165058 lambda!165051))))

(declare-fun lt!1666542 () ListMap!3373)

(assert (=> d!1371142 (invariantList!945 (toList!4111 lt!1666542))))

(declare-fun e!2790134 () ListMap!3373)

(assert (=> d!1371142 (= lt!1666542 e!2790134)))

(declare-fun c!763128 () Bool)

(assert (=> d!1371142 (= c!763128 ((_ is Cons!50359) (toList!4112 (+!1404 lm!1477 lt!1666476))))))

(assert (=> d!1371142 (forall!10042 (toList!4112 (+!1404 lm!1477 lt!1666476)) lambda!165058)))

(assert (=> d!1371142 (= (extractMap!1108 (toList!4112 (+!1404 lm!1477 lt!1666476))) lt!1666542)))

(declare-fun b!4479941 () Bool)

(assert (=> b!4479941 (= e!2790134 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (toList!4112 (+!1404 lm!1477 lt!1666476)))) (extractMap!1108 (t!357437 (toList!4112 (+!1404 lm!1477 lt!1666476))))))))

(declare-fun b!4479942 () Bool)

(assert (=> b!4479942 (= e!2790134 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371142 c!763128) b!4479941))

(assert (= (and d!1371142 (not c!763128)) b!4479942))

(declare-fun m!5198471 () Bool)

(assert (=> d!1371142 m!5198471))

(declare-fun m!5198473 () Bool)

(assert (=> d!1371142 m!5198473))

(declare-fun m!5198475 () Bool)

(assert (=> b!4479941 m!5198475))

(assert (=> b!4479941 m!5198475))

(declare-fun m!5198477 () Bool)

(assert (=> b!4479941 m!5198477))

(assert (=> b!4479831 d!1371142))

(declare-fun d!1371144 () Bool)

(declare-fun e!2790137 () Bool)

(assert (=> d!1371144 e!2790137))

(declare-fun res!1859821 () Bool)

(assert (=> d!1371144 (=> (not res!1859821) (not e!2790137))))

(declare-fun lt!1666554 () ListLongMap!2743)

(assert (=> d!1371144 (= res!1859821 (contains!12943 lt!1666554 (_1!28616 lt!1666476)))))

(declare-fun lt!1666553 () List!50483)

(assert (=> d!1371144 (= lt!1666554 (ListLongMap!2744 lt!1666553))))

(declare-fun lt!1666552 () Unit!89579)

(declare-fun lt!1666551 () Unit!89579)

(assert (=> d!1371144 (= lt!1666552 lt!1666551)))

(declare-datatypes ((Option!10963 0))(
  ( (None!10962) (Some!10962 (v!44330 List!50482)) )
))
(declare-fun getValueByKey!949 (List!50483 (_ BitVec 64)) Option!10963)

(assert (=> d!1371144 (= (getValueByKey!949 lt!1666553 (_1!28616 lt!1666476)) (Some!10962 (_2!28616 lt!1666476)))))

(declare-fun lemmaContainsTupThenGetReturnValue!603 (List!50483 (_ BitVec 64) List!50482) Unit!89579)

(assert (=> d!1371144 (= lt!1666551 (lemmaContainsTupThenGetReturnValue!603 lt!1666553 (_1!28616 lt!1666476) (_2!28616 lt!1666476)))))

(declare-fun insertStrictlySorted!347 (List!50483 (_ BitVec 64) List!50482) List!50483)

(assert (=> d!1371144 (= lt!1666553 (insertStrictlySorted!347 (toList!4112 lm!1477) (_1!28616 lt!1666476) (_2!28616 lt!1666476)))))

(assert (=> d!1371144 (= (+!1404 lm!1477 lt!1666476) lt!1666554)))

(declare-fun b!4479947 () Bool)

(declare-fun res!1859822 () Bool)

(assert (=> b!4479947 (=> (not res!1859822) (not e!2790137))))

(assert (=> b!4479947 (= res!1859822 (= (getValueByKey!949 (toList!4112 lt!1666554) (_1!28616 lt!1666476)) (Some!10962 (_2!28616 lt!1666476))))))

(declare-fun b!4479948 () Bool)

(assert (=> b!4479948 (= e!2790137 (contains!12944 (toList!4112 lt!1666554) lt!1666476))))

(assert (= (and d!1371144 res!1859821) b!4479947))

(assert (= (and b!4479947 res!1859822) b!4479948))

(declare-fun m!5198479 () Bool)

(assert (=> d!1371144 m!5198479))

(declare-fun m!5198481 () Bool)

(assert (=> d!1371144 m!5198481))

(declare-fun m!5198483 () Bool)

(assert (=> d!1371144 m!5198483))

(declare-fun m!5198485 () Bool)

(assert (=> d!1371144 m!5198485))

(declare-fun m!5198487 () Bool)

(assert (=> b!4479947 m!5198487))

(declare-fun m!5198489 () Bool)

(assert (=> b!4479948 m!5198489))

(assert (=> b!4479831 d!1371144))

(declare-fun d!1371146 () Bool)

(declare-fun dynLambda!21042 (Int tuple2!50644) Bool)

(assert (=> d!1371146 (dynLambda!21042 lambda!165041 lt!1666453)))

(declare-fun lt!1666557 () Unit!89579)

(declare-fun choose!28736 (List!50483 Int tuple2!50644) Unit!89579)

(assert (=> d!1371146 (= lt!1666557 (choose!28736 (toList!4112 lm!1477) lambda!165041 lt!1666453))))

(declare-fun e!2790140 () Bool)

(assert (=> d!1371146 e!2790140))

(declare-fun res!1859825 () Bool)

(assert (=> d!1371146 (=> (not res!1859825) (not e!2790140))))

(assert (=> d!1371146 (= res!1859825 (forall!10042 (toList!4112 lm!1477) lambda!165041))))

(assert (=> d!1371146 (= (forallContained!2303 (toList!4112 lm!1477) lambda!165041 lt!1666453) lt!1666557)))

(declare-fun b!4479951 () Bool)

(assert (=> b!4479951 (= e!2790140 (contains!12944 (toList!4112 lm!1477) lt!1666453))))

(assert (= (and d!1371146 res!1859825) b!4479951))

(declare-fun b_lambda!150269 () Bool)

(assert (=> (not b_lambda!150269) (not d!1371146)))

(declare-fun m!5198491 () Bool)

(assert (=> d!1371146 m!5198491))

(declare-fun m!5198493 () Bool)

(assert (=> d!1371146 m!5198493))

(assert (=> d!1371146 m!5198245))

(assert (=> b!4479951 m!5198269))

(assert (=> b!4479819 d!1371146))

(declare-fun bs!824081 () Bool)

(declare-fun d!1371148 () Bool)

(assert (= bs!824081 (and d!1371148 d!1371094)))

(declare-fun lambda!165061 () Int)

(assert (=> bs!824081 (= lambda!165061 lambda!165047)))

(declare-fun bs!824082 () Bool)

(assert (= bs!824082 (and d!1371148 d!1371112)))

(assert (=> bs!824082 (not (= lambda!165061 lambda!165051))))

(declare-fun bs!824083 () Bool)

(assert (= bs!824083 (and d!1371148 d!1371142)))

(assert (=> bs!824083 (= lambda!165061 lambda!165058)))

(declare-fun bs!824084 () Bool)

(assert (= bs!824084 (and d!1371148 d!1371108)))

(assert (=> bs!824084 (= lambda!165061 lambda!165048)))

(declare-fun bs!824085 () Bool)

(assert (= bs!824085 (and d!1371148 start!440532)))

(assert (=> bs!824085 (= lambda!165061 lambda!165041)))

(assert (=> d!1371148 (contains!12943 lm!1477 (hash!2527 hashF!1107 key!3287))))

(declare-fun lt!1666560 () Unit!89579)

(declare-fun choose!28737 (ListLongMap!2743 K!11770 Hashable!5447) Unit!89579)

(assert (=> d!1371148 (= lt!1666560 (choose!28737 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371148 (forall!10042 (toList!4112 lm!1477) lambda!165061)))

(assert (=> d!1371148 (= (lemmaInGenMapThenLongMapContainsHash!126 lm!1477 key!3287 hashF!1107) lt!1666560)))

(declare-fun bs!824086 () Bool)

(assert (= bs!824086 d!1371148))

(assert (=> bs!824086 m!5198253))

(assert (=> bs!824086 m!5198253))

(declare-fun m!5198495 () Bool)

(assert (=> bs!824086 m!5198495))

(declare-fun m!5198497 () Bool)

(assert (=> bs!824086 m!5198497))

(declare-fun m!5198499 () Bool)

(assert (=> bs!824086 m!5198499))

(assert (=> b!4479819 d!1371148))

(declare-fun d!1371150 () Bool)

(declare-fun e!2790148 () Bool)

(assert (=> d!1371150 e!2790148))

(declare-fun res!1859828 () Bool)

(assert (=> d!1371150 (=> res!1859828 e!2790148)))

(declare-fun lt!1666605 () Bool)

(assert (=> d!1371150 (= res!1859828 (not lt!1666605))))

(declare-fun lt!1666606 () Bool)

(assert (=> d!1371150 (= lt!1666605 lt!1666606)))

(declare-fun lt!1666602 () Unit!89579)

(declare-fun e!2790147 () Unit!89579)

(assert (=> d!1371150 (= lt!1666602 e!2790147)))

(declare-fun c!763133 () Bool)

(assert (=> d!1371150 (= c!763133 lt!1666606)))

(declare-fun containsKey!1536 (List!50483 (_ BitVec 64)) Bool)

(assert (=> d!1371150 (= lt!1666606 (containsKey!1536 (toList!4112 lm!1477) lt!1666464))))

(assert (=> d!1371150 (= (contains!12943 lm!1477 lt!1666464) lt!1666605)))

(declare-fun b!4479962 () Bool)

(declare-fun lt!1666601 () Unit!89579)

(assert (=> b!4479962 (= e!2790147 lt!1666601)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!853 (List!50483 (_ BitVec 64)) Unit!89579)

(assert (=> b!4479962 (= lt!1666601 (lemmaContainsKeyImpliesGetValueByKeyDefined!853 (toList!4112 lm!1477) lt!1666464))))

(declare-fun isDefined!8250 (Option!10963) Bool)

(assert (=> b!4479962 (isDefined!8250 (getValueByKey!949 (toList!4112 lm!1477) lt!1666464))))

(declare-fun b!4479963 () Bool)

(declare-fun Unit!89602 () Unit!89579)

(assert (=> b!4479963 (= e!2790147 Unit!89602)))

(declare-fun b!4479964 () Bool)

(assert (=> b!4479964 (= e!2790148 (isDefined!8250 (getValueByKey!949 (toList!4112 lm!1477) lt!1666464)))))

(assert (= (and d!1371150 c!763133) b!4479962))

(assert (= (and d!1371150 (not c!763133)) b!4479963))

(assert (= (and d!1371150 (not res!1859828)) b!4479964))

(declare-fun m!5198501 () Bool)

(assert (=> d!1371150 m!5198501))

(declare-fun m!5198503 () Bool)

(assert (=> b!4479962 m!5198503))

(declare-fun m!5198505 () Bool)

(assert (=> b!4479962 m!5198505))

(assert (=> b!4479962 m!5198505))

(declare-fun m!5198507 () Bool)

(assert (=> b!4479962 m!5198507))

(assert (=> b!4479964 m!5198505))

(assert (=> b!4479964 m!5198505))

(assert (=> b!4479964 m!5198507))

(assert (=> b!4479819 d!1371150))

(declare-fun d!1371152 () Bool)

(declare-fun get!16430 (Option!10963) List!50482)

(assert (=> d!1371152 (= (apply!11789 lm!1477 hash!344) (get!16430 (getValueByKey!949 (toList!4112 lm!1477) hash!344)))))

(declare-fun bs!824087 () Bool)

(assert (= bs!824087 d!1371152))

(declare-fun m!5198509 () Bool)

(assert (=> bs!824087 m!5198509))

(assert (=> bs!824087 m!5198509))

(declare-fun m!5198511 () Bool)

(assert (=> bs!824087 m!5198511))

(assert (=> b!4479819 d!1371152))

(declare-fun d!1371154 () Bool)

(declare-fun lt!1666617 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8155 (List!50483) (InoxSet tuple2!50644))

(assert (=> d!1371154 (= lt!1666617 (select (content!8155 (toList!4112 lm!1477)) lt!1666453))))

(declare-fun e!2790158 () Bool)

(assert (=> d!1371154 (= lt!1666617 e!2790158)))

(declare-fun res!1859839 () Bool)

(assert (=> d!1371154 (=> (not res!1859839) (not e!2790158))))

(assert (=> d!1371154 (= res!1859839 ((_ is Cons!50359) (toList!4112 lm!1477)))))

(assert (=> d!1371154 (= (contains!12944 (toList!4112 lm!1477) lt!1666453) lt!1666617)))

(declare-fun b!4479975 () Bool)

(declare-fun e!2790157 () Bool)

(assert (=> b!4479975 (= e!2790158 e!2790157)))

(declare-fun res!1859840 () Bool)

(assert (=> b!4479975 (=> res!1859840 e!2790157)))

(assert (=> b!4479975 (= res!1859840 (= (h!56140 (toList!4112 lm!1477)) lt!1666453))))

(declare-fun b!4479976 () Bool)

(assert (=> b!4479976 (= e!2790157 (contains!12944 (t!357437 (toList!4112 lm!1477)) lt!1666453))))

(assert (= (and d!1371154 res!1859839) b!4479975))

(assert (= (and b!4479975 (not res!1859840)) b!4479976))

(declare-fun m!5198513 () Bool)

(assert (=> d!1371154 m!5198513))

(declare-fun m!5198515 () Bool)

(assert (=> d!1371154 m!5198515))

(declare-fun m!5198517 () Bool)

(assert (=> b!4479976 m!5198517))

(assert (=> b!4479819 d!1371154))

(declare-fun d!1371156 () Bool)

(assert (=> d!1371156 (contains!12944 (toList!4112 lm!1477) (tuple2!50645 hash!344 lt!1666474))))

(declare-fun lt!1666641 () Unit!89579)

(declare-fun choose!28739 (List!50483 (_ BitVec 64) List!50482) Unit!89579)

(assert (=> d!1371156 (= lt!1666641 (choose!28739 (toList!4112 lm!1477) hash!344 lt!1666474))))

(declare-fun e!2790164 () Bool)

(assert (=> d!1371156 e!2790164))

(declare-fun res!1859846 () Bool)

(assert (=> d!1371156 (=> (not res!1859846) (not e!2790164))))

(declare-fun isStrictlySorted!359 (List!50483) Bool)

(assert (=> d!1371156 (= res!1859846 (isStrictlySorted!359 (toList!4112 lm!1477)))))

(assert (=> d!1371156 (= (lemmaGetValueByKeyImpliesContainsTuple!564 (toList!4112 lm!1477) hash!344 lt!1666474) lt!1666641)))

(declare-fun b!4479986 () Bool)

(assert (=> b!4479986 (= e!2790164 (= (getValueByKey!949 (toList!4112 lm!1477) hash!344) (Some!10962 lt!1666474)))))

(assert (= (and d!1371156 res!1859846) b!4479986))

(declare-fun m!5198519 () Bool)

(assert (=> d!1371156 m!5198519))

(declare-fun m!5198521 () Bool)

(assert (=> d!1371156 m!5198521))

(declare-fun m!5198523 () Bool)

(assert (=> d!1371156 m!5198523))

(assert (=> b!4479986 m!5198509))

(assert (=> b!4479819 d!1371156))

(declare-fun b!4479997 () Bool)

(declare-fun e!2790169 () List!50482)

(assert (=> b!4479997 (= e!2790169 (Cons!50358 (h!56139 lt!1666474) (removePairForKey!679 (t!357436 lt!1666474) key!3287)))))

(declare-fun d!1371158 () Bool)

(declare-fun lt!1666644 () List!50482)

(assert (=> d!1371158 (not (containsKey!1532 lt!1666644 key!3287))))

(declare-fun e!2790170 () List!50482)

(assert (=> d!1371158 (= lt!1666644 e!2790170)))

(declare-fun c!763139 () Bool)

(assert (=> d!1371158 (= c!763139 (and ((_ is Cons!50358) lt!1666474) (= (_1!28615 (h!56139 lt!1666474)) key!3287)))))

(assert (=> d!1371158 (noDuplicateKeys!1052 lt!1666474)))

(assert (=> d!1371158 (= (removePairForKey!679 lt!1666474 key!3287) lt!1666644)))

(declare-fun b!4479996 () Bool)

(assert (=> b!4479996 (= e!2790170 e!2790169)))

(declare-fun c!763140 () Bool)

(assert (=> b!4479996 (= c!763140 ((_ is Cons!50358) lt!1666474))))

(declare-fun b!4479998 () Bool)

(assert (=> b!4479998 (= e!2790169 Nil!50358)))

(declare-fun b!4479995 () Bool)

(assert (=> b!4479995 (= e!2790170 (t!357436 lt!1666474))))

(assert (= (and d!1371158 c!763139) b!4479995))

(assert (= (and d!1371158 (not c!763139)) b!4479996))

(assert (= (and b!4479996 c!763140) b!4479997))

(assert (= (and b!4479996 (not c!763140)) b!4479998))

(declare-fun m!5198559 () Bool)

(assert (=> b!4479997 m!5198559))

(declare-fun m!5198561 () Bool)

(assert (=> d!1371158 m!5198561))

(declare-fun m!5198563 () Bool)

(assert (=> d!1371158 m!5198563))

(assert (=> b!4479819 d!1371158))

(declare-fun d!1371162 () Bool)

(declare-fun e!2790171 () Bool)

(assert (=> d!1371162 e!2790171))

(declare-fun res!1859847 () Bool)

(assert (=> d!1371162 (=> (not res!1859847) (not e!2790171))))

(declare-fun lt!1666648 () ListLongMap!2743)

(assert (=> d!1371162 (= res!1859847 (contains!12943 lt!1666648 (_1!28616 lt!1666468)))))

(declare-fun lt!1666647 () List!50483)

(assert (=> d!1371162 (= lt!1666648 (ListLongMap!2744 lt!1666647))))

(declare-fun lt!1666646 () Unit!89579)

(declare-fun lt!1666645 () Unit!89579)

(assert (=> d!1371162 (= lt!1666646 lt!1666645)))

(assert (=> d!1371162 (= (getValueByKey!949 lt!1666647 (_1!28616 lt!1666468)) (Some!10962 (_2!28616 lt!1666468)))))

(assert (=> d!1371162 (= lt!1666645 (lemmaContainsTupThenGetReturnValue!603 lt!1666647 (_1!28616 lt!1666468) (_2!28616 lt!1666468)))))

(assert (=> d!1371162 (= lt!1666647 (insertStrictlySorted!347 (toList!4112 lt!1666456) (_1!28616 lt!1666468) (_2!28616 lt!1666468)))))

(assert (=> d!1371162 (= (+!1404 lt!1666456 lt!1666468) lt!1666648)))

(declare-fun b!4479999 () Bool)

(declare-fun res!1859848 () Bool)

(assert (=> b!4479999 (=> (not res!1859848) (not e!2790171))))

(assert (=> b!4479999 (= res!1859848 (= (getValueByKey!949 (toList!4112 lt!1666648) (_1!28616 lt!1666468)) (Some!10962 (_2!28616 lt!1666468))))))

(declare-fun b!4480000 () Bool)

(assert (=> b!4480000 (= e!2790171 (contains!12944 (toList!4112 lt!1666648) lt!1666468))))

(assert (= (and d!1371162 res!1859847) b!4479999))

(assert (= (and b!4479999 res!1859848) b!4480000))

(declare-fun m!5198565 () Bool)

(assert (=> d!1371162 m!5198565))

(declare-fun m!5198567 () Bool)

(assert (=> d!1371162 m!5198567))

(declare-fun m!5198569 () Bool)

(assert (=> d!1371162 m!5198569))

(declare-fun m!5198571 () Bool)

(assert (=> d!1371162 m!5198571))

(declare-fun m!5198573 () Bool)

(assert (=> b!4479999 m!5198573))

(declare-fun m!5198575 () Bool)

(assert (=> b!4480000 m!5198575))

(assert (=> b!4479818 d!1371162))

(declare-fun d!1371164 () Bool)

(assert (=> d!1371164 (= (tail!7556 lm!1477) (ListLongMap!2744 (tail!7557 (toList!4112 lm!1477))))))

(declare-fun bs!824091 () Bool)

(assert (= bs!824091 d!1371164))

(assert (=> bs!824091 m!5198323))

(assert (=> b!4479818 d!1371164))

(declare-fun b!4480001 () Bool)

(assert (=> b!4480001 false))

(declare-fun lt!1666653 () Unit!89579)

(declare-fun lt!1666652 () Unit!89579)

(assert (=> b!4480001 (= lt!1666653 lt!1666652)))

(assert (=> b!4480001 (containsKey!1534 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287)))

(assert (=> b!4480001 (= lt!1666652 (lemmaInGetKeysListThenContainsKey!391 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287))))

(declare-fun e!2790177 () Unit!89579)

(declare-fun Unit!89603 () Unit!89579)

(assert (=> b!4480001 (= e!2790177 Unit!89603)))

(declare-fun b!4480002 () Bool)

(declare-fun e!2790175 () Bool)

(declare-fun e!2790173 () Bool)

(assert (=> b!4480002 (= e!2790175 e!2790173)))

(declare-fun res!1859850 () Bool)

(assert (=> b!4480002 (=> (not res!1859850) (not e!2790173))))

(assert (=> b!4480002 (= res!1859850 (isDefined!8248 (getValueByKey!947 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287)))))

(declare-fun b!4480004 () Bool)

(declare-fun e!2790176 () Unit!89579)

(assert (=> b!4480004 (= e!2790176 e!2790177)))

(declare-fun c!763143 () Bool)

(declare-fun call!311990 () Bool)

(assert (=> b!4480004 (= c!763143 call!311990)))

(declare-fun b!4480005 () Bool)

(declare-fun e!2790174 () List!50484)

(assert (=> b!4480005 (= e!2790174 (keys!17409 (extractMap!1108 (toList!4112 lm!1477))))))

(declare-fun b!4480006 () Bool)

(declare-fun lt!1666654 () Unit!89579)

(assert (=> b!4480006 (= e!2790176 lt!1666654)))

(declare-fun lt!1666655 () Unit!89579)

(assert (=> b!4480006 (= lt!1666655 (lemmaContainsKeyImpliesGetValueByKeyDefined!851 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287))))

(assert (=> b!4480006 (isDefined!8248 (getValueByKey!947 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287))))

(declare-fun lt!1666650 () Unit!89579)

(assert (=> b!4480006 (= lt!1666650 lt!1666655)))

(assert (=> b!4480006 (= lt!1666654 (lemmaInListThenGetKeysListContains!388 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287))))

(assert (=> b!4480006 call!311990))

(declare-fun b!4480007 () Bool)

(assert (=> b!4480007 (= e!2790174 (getKeysList!392 (toList!4111 (extractMap!1108 (toList!4112 lm!1477)))))))

(declare-fun b!4480008 () Bool)

(declare-fun Unit!89604 () Unit!89579)

(assert (=> b!4480008 (= e!2790177 Unit!89604)))

(declare-fun b!4480003 () Bool)

(declare-fun e!2790172 () Bool)

(assert (=> b!4480003 (= e!2790172 (not (contains!12946 (keys!17409 (extractMap!1108 (toList!4112 lm!1477))) key!3287)))))

(declare-fun d!1371166 () Bool)

(assert (=> d!1371166 e!2790175))

(declare-fun res!1859851 () Bool)

(assert (=> d!1371166 (=> res!1859851 e!2790175)))

(assert (=> d!1371166 (= res!1859851 e!2790172)))

(declare-fun res!1859849 () Bool)

(assert (=> d!1371166 (=> (not res!1859849) (not e!2790172))))

(declare-fun lt!1666649 () Bool)

(assert (=> d!1371166 (= res!1859849 (not lt!1666649))))

(declare-fun lt!1666651 () Bool)

(assert (=> d!1371166 (= lt!1666649 lt!1666651)))

(declare-fun lt!1666656 () Unit!89579)

(assert (=> d!1371166 (= lt!1666656 e!2790176)))

(declare-fun c!763141 () Bool)

(assert (=> d!1371166 (= c!763141 lt!1666651)))

(assert (=> d!1371166 (= lt!1666651 (containsKey!1534 (toList!4111 (extractMap!1108 (toList!4112 lm!1477))) key!3287))))

(assert (=> d!1371166 (= (contains!12945 (extractMap!1108 (toList!4112 lm!1477)) key!3287) lt!1666649)))

(declare-fun b!4480009 () Bool)

(assert (=> b!4480009 (= e!2790173 (contains!12946 (keys!17409 (extractMap!1108 (toList!4112 lm!1477))) key!3287))))

(declare-fun bm!311985 () Bool)

(assert (=> bm!311985 (= call!311990 (contains!12946 e!2790174 key!3287))))

(declare-fun c!763142 () Bool)

(assert (=> bm!311985 (= c!763142 c!763141)))

(assert (= (and d!1371166 c!763141) b!4480006))

(assert (= (and d!1371166 (not c!763141)) b!4480004))

(assert (= (and b!4480004 c!763143) b!4480001))

(assert (= (and b!4480004 (not c!763143)) b!4480008))

(assert (= (or b!4480006 b!4480004) bm!311985))

(assert (= (and bm!311985 c!763142) b!4480007))

(assert (= (and bm!311985 (not c!763142)) b!4480005))

(assert (= (and d!1371166 res!1859849) b!4480003))

(assert (= (and d!1371166 (not res!1859851)) b!4480002))

(assert (= (and b!4480002 res!1859850) b!4480009))

(assert (=> b!4480005 m!5198239))

(declare-fun m!5198577 () Bool)

(assert (=> b!4480005 m!5198577))

(assert (=> b!4480003 m!5198239))

(assert (=> b!4480003 m!5198577))

(assert (=> b!4480003 m!5198577))

(declare-fun m!5198579 () Bool)

(assert (=> b!4480003 m!5198579))

(assert (=> b!4480009 m!5198239))

(assert (=> b!4480009 m!5198577))

(assert (=> b!4480009 m!5198577))

(assert (=> b!4480009 m!5198579))

(declare-fun m!5198581 () Bool)

(assert (=> b!4480006 m!5198581))

(declare-fun m!5198583 () Bool)

(assert (=> b!4480006 m!5198583))

(assert (=> b!4480006 m!5198583))

(declare-fun m!5198585 () Bool)

(assert (=> b!4480006 m!5198585))

(declare-fun m!5198587 () Bool)

(assert (=> b!4480006 m!5198587))

(declare-fun m!5198589 () Bool)

(assert (=> b!4480001 m!5198589))

(declare-fun m!5198591 () Bool)

(assert (=> b!4480001 m!5198591))

(declare-fun m!5198593 () Bool)

(assert (=> bm!311985 m!5198593))

(assert (=> b!4480002 m!5198583))

(assert (=> b!4480002 m!5198583))

(assert (=> b!4480002 m!5198585))

(declare-fun m!5198595 () Bool)

(assert (=> b!4480007 m!5198595))

(assert (=> d!1371166 m!5198589))

(assert (=> b!4479829 d!1371166))

(declare-fun bs!824092 () Bool)

(declare-fun d!1371168 () Bool)

(assert (= bs!824092 (and d!1371168 d!1371148)))

(declare-fun lambda!165094 () Int)

(assert (=> bs!824092 (= lambda!165094 lambda!165061)))

(declare-fun bs!824093 () Bool)

(assert (= bs!824093 (and d!1371168 d!1371094)))

(assert (=> bs!824093 (= lambda!165094 lambda!165047)))

(declare-fun bs!824094 () Bool)

(assert (= bs!824094 (and d!1371168 d!1371112)))

(assert (=> bs!824094 (not (= lambda!165094 lambda!165051))))

(declare-fun bs!824095 () Bool)

(assert (= bs!824095 (and d!1371168 d!1371142)))

(assert (=> bs!824095 (= lambda!165094 lambda!165058)))

(declare-fun bs!824096 () Bool)

(assert (= bs!824096 (and d!1371168 d!1371108)))

(assert (=> bs!824096 (= lambda!165094 lambda!165048)))

(declare-fun bs!824097 () Bool)

(assert (= bs!824097 (and d!1371168 start!440532)))

(assert (=> bs!824097 (= lambda!165094 lambda!165041)))

(declare-fun lt!1666657 () ListMap!3373)

(assert (=> d!1371168 (invariantList!945 (toList!4111 lt!1666657))))

(declare-fun e!2790178 () ListMap!3373)

(assert (=> d!1371168 (= lt!1666657 e!2790178)))

(declare-fun c!763144 () Bool)

(assert (=> d!1371168 (= c!763144 ((_ is Cons!50359) (toList!4112 lm!1477)))))

(assert (=> d!1371168 (forall!10042 (toList!4112 lm!1477) lambda!165094)))

(assert (=> d!1371168 (= (extractMap!1108 (toList!4112 lm!1477)) lt!1666657)))

(declare-fun b!4480010 () Bool)

(assert (=> b!4480010 (= e!2790178 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (toList!4112 lm!1477))) (extractMap!1108 (t!357437 (toList!4112 lm!1477)))))))

(declare-fun b!4480011 () Bool)

(assert (=> b!4480011 (= e!2790178 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371168 c!763144) b!4480010))

(assert (= (and d!1371168 (not c!763144)) b!4480011))

(declare-fun m!5198597 () Bool)

(assert (=> d!1371168 m!5198597))

(declare-fun m!5198599 () Bool)

(assert (=> d!1371168 m!5198599))

(assert (=> b!4480010 m!5198259))

(assert (=> b!4480010 m!5198259))

(declare-fun m!5198601 () Bool)

(assert (=> b!4480010 m!5198601))

(assert (=> b!4479829 d!1371168))

(declare-fun d!1371170 () Bool)

(declare-fun content!8156 (List!50482) (InoxSet tuple2!50642))

(assert (=> d!1371170 (= (eq!545 (extractMap!1108 (Cons!50359 lt!1666468 lt!1666472)) (-!314 (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472)) key!3287)) (= (content!8156 (toList!4111 (extractMap!1108 (Cons!50359 lt!1666468 lt!1666472)))) (content!8156 (toList!4111 (-!314 (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472)) key!3287)))))))

(declare-fun bs!824098 () Bool)

(assert (= bs!824098 d!1371170))

(declare-fun m!5198603 () Bool)

(assert (=> bs!824098 m!5198603))

(declare-fun m!5198605 () Bool)

(assert (=> bs!824098 m!5198605))

(assert (=> b!4479828 d!1371170))

(declare-fun d!1371172 () Bool)

(assert (=> d!1371172 (= (tail!7557 (toList!4112 lm!1477)) (t!357437 (toList!4112 lm!1477)))))

(assert (=> b!4479828 d!1371172))

(declare-fun bs!824099 () Bool)

(declare-fun d!1371174 () Bool)

(assert (= bs!824099 (and d!1371174 d!1371168)))

(declare-fun lambda!165097 () Int)

(assert (=> bs!824099 (= lambda!165097 lambda!165094)))

(declare-fun bs!824100 () Bool)

(assert (= bs!824100 (and d!1371174 d!1371148)))

(assert (=> bs!824100 (= lambda!165097 lambda!165061)))

(declare-fun bs!824101 () Bool)

(assert (= bs!824101 (and d!1371174 d!1371094)))

(assert (=> bs!824101 (= lambda!165097 lambda!165047)))

(declare-fun bs!824102 () Bool)

(assert (= bs!824102 (and d!1371174 d!1371112)))

(assert (=> bs!824102 (not (= lambda!165097 lambda!165051))))

(declare-fun bs!824103 () Bool)

(assert (= bs!824103 (and d!1371174 d!1371142)))

(assert (=> bs!824103 (= lambda!165097 lambda!165058)))

(declare-fun bs!824104 () Bool)

(assert (= bs!824104 (and d!1371174 d!1371108)))

(assert (=> bs!824104 (= lambda!165097 lambda!165048)))

(declare-fun bs!824105 () Bool)

(assert (= bs!824105 (and d!1371174 start!440532)))

(assert (=> bs!824105 (= lambda!165097 lambda!165041)))

(declare-fun lt!1666658 () ListMap!3373)

(assert (=> d!1371174 (invariantList!945 (toList!4111 lt!1666658))))

(declare-fun e!2790179 () ListMap!3373)

(assert (=> d!1371174 (= lt!1666658 e!2790179)))

(declare-fun c!763145 () Bool)

(assert (=> d!1371174 (= c!763145 ((_ is Cons!50359) (Cons!50359 lt!1666468 lt!1666472)))))

(assert (=> d!1371174 (forall!10042 (Cons!50359 lt!1666468 lt!1666472) lambda!165097)))

(assert (=> d!1371174 (= (extractMap!1108 (Cons!50359 lt!1666468 lt!1666472)) lt!1666658)))

(declare-fun b!4480012 () Bool)

(assert (=> b!4480012 (= e!2790179 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (Cons!50359 lt!1666468 lt!1666472))) (extractMap!1108 (t!357437 (Cons!50359 lt!1666468 lt!1666472)))))))

(declare-fun b!4480013 () Bool)

(assert (=> b!4480013 (= e!2790179 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371174 c!763145) b!4480012))

(assert (= (and d!1371174 (not c!763145)) b!4480013))

(declare-fun m!5198607 () Bool)

(assert (=> d!1371174 m!5198607))

(declare-fun m!5198609 () Bool)

(assert (=> d!1371174 m!5198609))

(declare-fun m!5198611 () Bool)

(assert (=> b!4480012 m!5198611))

(assert (=> b!4480012 m!5198611))

(declare-fun m!5198613 () Bool)

(assert (=> b!4480012 m!5198613))

(assert (=> b!4479828 d!1371174))

(declare-fun bs!824120 () Bool)

(declare-fun d!1371176 () Bool)

(assert (= bs!824120 (and d!1371176 d!1371168)))

(declare-fun lambda!165102 () Int)

(assert (=> bs!824120 (= lambda!165102 lambda!165094)))

(declare-fun bs!824121 () Bool)

(assert (= bs!824121 (and d!1371176 d!1371148)))

(assert (=> bs!824121 (= lambda!165102 lambda!165061)))

(declare-fun bs!824122 () Bool)

(assert (= bs!824122 (and d!1371176 d!1371094)))

(assert (=> bs!824122 (= lambda!165102 lambda!165047)))

(declare-fun bs!824123 () Bool)

(assert (= bs!824123 (and d!1371176 d!1371112)))

(assert (=> bs!824123 (not (= lambda!165102 lambda!165051))))

(declare-fun bs!824124 () Bool)

(assert (= bs!824124 (and d!1371176 d!1371142)))

(assert (=> bs!824124 (= lambda!165102 lambda!165058)))

(declare-fun bs!824125 () Bool)

(assert (= bs!824125 (and d!1371176 d!1371108)))

(assert (=> bs!824125 (= lambda!165102 lambda!165048)))

(declare-fun bs!824126 () Bool)

(assert (= bs!824126 (and d!1371176 start!440532)))

(assert (=> bs!824126 (= lambda!165102 lambda!165041)))

(declare-fun bs!824127 () Bool)

(assert (= bs!824127 (and d!1371176 d!1371174)))

(assert (=> bs!824127 (= lambda!165102 lambda!165097)))

(assert (=> d!1371176 (eq!545 (extractMap!1108 (Cons!50359 (tuple2!50645 hash!344 newBucket!178) (tail!7557 (toList!4112 lm!1477)))) (-!314 (extractMap!1108 (Cons!50359 (tuple2!50645 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477)))) (tail!7557 (toList!4112 lm!1477)))) key!3287))))

(declare-fun lt!1666681 () Unit!89579)

(declare-fun choose!28741 (ListLongMap!2743 (_ BitVec 64) List!50482 List!50482 K!11770 Hashable!5447) Unit!89579)

(assert (=> d!1371176 (= lt!1666681 (choose!28741 lm!1477 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371176 (forall!10042 (toList!4112 lm!1477) lambda!165102)))

(assert (=> d!1371176 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!12 lm!1477 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1666681)))

(declare-fun bs!824128 () Bool)

(assert (= bs!824128 d!1371176))

(assert (=> bs!824128 m!5198323))

(declare-fun m!5198631 () Bool)

(assert (=> bs!824128 m!5198631))

(declare-fun m!5198633 () Bool)

(assert (=> bs!824128 m!5198633))

(declare-fun m!5198635 () Bool)

(assert (=> bs!824128 m!5198635))

(declare-fun m!5198637 () Bool)

(assert (=> bs!824128 m!5198637))

(declare-fun m!5198639 () Bool)

(assert (=> bs!824128 m!5198639))

(assert (=> bs!824128 m!5198637))

(declare-fun m!5198641 () Bool)

(assert (=> bs!824128 m!5198641))

(assert (=> bs!824128 m!5198639))

(assert (=> bs!824128 m!5198635))

(assert (=> b!4479828 d!1371176))

(declare-fun bs!824129 () Bool)

(declare-fun d!1371182 () Bool)

(assert (= bs!824129 (and d!1371182 d!1371168)))

(declare-fun lambda!165103 () Int)

(assert (=> bs!824129 (= lambda!165103 lambda!165094)))

(declare-fun bs!824130 () Bool)

(assert (= bs!824130 (and d!1371182 d!1371148)))

(assert (=> bs!824130 (= lambda!165103 lambda!165061)))

(declare-fun bs!824131 () Bool)

(assert (= bs!824131 (and d!1371182 d!1371094)))

(assert (=> bs!824131 (= lambda!165103 lambda!165047)))

(declare-fun bs!824132 () Bool)

(assert (= bs!824132 (and d!1371182 d!1371112)))

(assert (=> bs!824132 (not (= lambda!165103 lambda!165051))))

(declare-fun bs!824133 () Bool)

(assert (= bs!824133 (and d!1371182 d!1371108)))

(assert (=> bs!824133 (= lambda!165103 lambda!165048)))

(declare-fun bs!824134 () Bool)

(assert (= bs!824134 (and d!1371182 start!440532)))

(assert (=> bs!824134 (= lambda!165103 lambda!165041)))

(declare-fun bs!824135 () Bool)

(assert (= bs!824135 (and d!1371182 d!1371174)))

(assert (=> bs!824135 (= lambda!165103 lambda!165097)))

(declare-fun bs!824136 () Bool)

(assert (= bs!824136 (and d!1371182 d!1371176)))

(assert (=> bs!824136 (= lambda!165103 lambda!165102)))

(declare-fun bs!824137 () Bool)

(assert (= bs!824137 (and d!1371182 d!1371142)))

(assert (=> bs!824137 (= lambda!165103 lambda!165058)))

(declare-fun lt!1666682 () ListMap!3373)

(assert (=> d!1371182 (invariantList!945 (toList!4111 lt!1666682))))

(declare-fun e!2790193 () ListMap!3373)

(assert (=> d!1371182 (= lt!1666682 e!2790193)))

(declare-fun c!763153 () Bool)

(assert (=> d!1371182 (= c!763153 ((_ is Cons!50359) (Cons!50359 lt!1666476 lt!1666472)))))

(assert (=> d!1371182 (forall!10042 (Cons!50359 lt!1666476 lt!1666472) lambda!165103)))

(assert (=> d!1371182 (= (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472)) lt!1666682)))

(declare-fun b!4480034 () Bool)

(assert (=> b!4480034 (= e!2790193 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (Cons!50359 lt!1666476 lt!1666472))) (extractMap!1108 (t!357437 (Cons!50359 lt!1666476 lt!1666472)))))))

(declare-fun b!4480035 () Bool)

(assert (=> b!4480035 (= e!2790193 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371182 c!763153) b!4480034))

(assert (= (and d!1371182 (not c!763153)) b!4480035))

(declare-fun m!5198643 () Bool)

(assert (=> d!1371182 m!5198643))

(declare-fun m!5198645 () Bool)

(assert (=> d!1371182 m!5198645))

(declare-fun m!5198647 () Bool)

(assert (=> b!4480034 m!5198647))

(assert (=> b!4480034 m!5198647))

(declare-fun m!5198649 () Bool)

(assert (=> b!4480034 m!5198649))

(assert (=> b!4479828 d!1371182))

(declare-fun d!1371184 () Bool)

(declare-fun e!2790203 () Bool)

(assert (=> d!1371184 e!2790203))

(declare-fun res!1859863 () Bool)

(assert (=> d!1371184 (=> (not res!1859863) (not e!2790203))))

(declare-fun lt!1666694 () ListMap!3373)

(assert (=> d!1371184 (= res!1859863 (not (contains!12945 lt!1666694 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!81 (List!50482 K!11770) List!50482)

(assert (=> d!1371184 (= lt!1666694 (ListMap!3374 (removePresrvNoDuplicatedKeys!81 (toList!4111 (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472))) key!3287)))))

(assert (=> d!1371184 (= (-!314 (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472)) key!3287) lt!1666694)))

(declare-fun b!4480049 () Bool)

(declare-fun content!8157 (List!50484) (InoxSet K!11770))

(assert (=> b!4480049 (= e!2790203 (= ((_ map and) (content!8157 (keys!17409 (extractMap!1108 (Cons!50359 lt!1666476 lt!1666472)))) ((_ map not) (store ((as const (Array K!11770 Bool)) false) key!3287 true))) (content!8157 (keys!17409 lt!1666694))))))

(assert (= (and d!1371184 res!1859863) b!4480049))

(declare-fun m!5198679 () Bool)

(assert (=> d!1371184 m!5198679))

(declare-fun m!5198681 () Bool)

(assert (=> d!1371184 m!5198681))

(declare-fun m!5198683 () Bool)

(assert (=> b!4480049 m!5198683))

(declare-fun m!5198685 () Bool)

(assert (=> b!4480049 m!5198685))

(declare-fun m!5198687 () Bool)

(assert (=> b!4480049 m!5198687))

(declare-fun m!5198689 () Bool)

(assert (=> b!4480049 m!5198689))

(declare-fun m!5198691 () Bool)

(assert (=> b!4480049 m!5198691))

(assert (=> b!4480049 m!5198319))

(assert (=> b!4480049 m!5198683))

(assert (=> b!4480049 m!5198687))

(assert (=> b!4479828 d!1371184))

(declare-fun bs!824147 () Bool)

(declare-fun d!1371192 () Bool)

(assert (= bs!824147 (and d!1371192 d!1371168)))

(declare-fun lambda!165107 () Int)

(assert (=> bs!824147 (= lambda!165107 lambda!165094)))

(declare-fun bs!824148 () Bool)

(assert (= bs!824148 (and d!1371192 d!1371148)))

(assert (=> bs!824148 (= lambda!165107 lambda!165061)))

(declare-fun bs!824149 () Bool)

(assert (= bs!824149 (and d!1371192 d!1371112)))

(assert (=> bs!824149 (not (= lambda!165107 lambda!165051))))

(declare-fun bs!824150 () Bool)

(assert (= bs!824150 (and d!1371192 d!1371108)))

(assert (=> bs!824150 (= lambda!165107 lambda!165048)))

(declare-fun bs!824151 () Bool)

(assert (= bs!824151 (and d!1371192 start!440532)))

(assert (=> bs!824151 (= lambda!165107 lambda!165041)))

(declare-fun bs!824152 () Bool)

(assert (= bs!824152 (and d!1371192 d!1371174)))

(assert (=> bs!824152 (= lambda!165107 lambda!165097)))

(declare-fun bs!824153 () Bool)

(assert (= bs!824153 (and d!1371192 d!1371182)))

(assert (=> bs!824153 (= lambda!165107 lambda!165103)))

(declare-fun bs!824154 () Bool)

(assert (= bs!824154 (and d!1371192 d!1371094)))

(assert (=> bs!824154 (= lambda!165107 lambda!165047)))

(declare-fun bs!824155 () Bool)

(assert (= bs!824155 (and d!1371192 d!1371176)))

(assert (=> bs!824155 (= lambda!165107 lambda!165102)))

(declare-fun bs!824156 () Bool)

(assert (= bs!824156 (and d!1371192 d!1371142)))

(assert (=> bs!824156 (= lambda!165107 lambda!165058)))

(assert (=> d!1371192 (not (contains!12945 (extractMap!1108 (toList!4112 lm!1477)) key!3287))))

(declare-fun lt!1666700 () Unit!89579)

(declare-fun choose!28742 (ListLongMap!2743 K!11770 Hashable!5447) Unit!89579)

(assert (=> d!1371192 (= lt!1666700 (choose!28742 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1371192 (forall!10042 (toList!4112 lm!1477) lambda!165107)))

(assert (=> d!1371192 (= (lemmaNotInItsHashBucketThenNotInMap!52 lm!1477 key!3287 hashF!1107) lt!1666700)))

(declare-fun bs!824157 () Bool)

(assert (= bs!824157 d!1371192))

(assert (=> bs!824157 m!5198239))

(assert (=> bs!824157 m!5198239))

(assert (=> bs!824157 m!5198241))

(declare-fun m!5198703 () Bool)

(assert (=> bs!824157 m!5198703))

(declare-fun m!5198705 () Bool)

(assert (=> bs!824157 m!5198705))

(assert (=> b!4479817 d!1371192))

(declare-fun bs!824158 () Bool)

(declare-fun d!1371196 () Bool)

(assert (= bs!824158 (and d!1371196 d!1371168)))

(declare-fun lambda!165108 () Int)

(assert (=> bs!824158 (= lambda!165108 lambda!165094)))

(declare-fun bs!824159 () Bool)

(assert (= bs!824159 (and d!1371196 d!1371148)))

(assert (=> bs!824159 (= lambda!165108 lambda!165061)))

(declare-fun bs!824160 () Bool)

(assert (= bs!824160 (and d!1371196 d!1371112)))

(assert (=> bs!824160 (not (= lambda!165108 lambda!165051))))

(declare-fun bs!824161 () Bool)

(assert (= bs!824161 (and d!1371196 d!1371108)))

(assert (=> bs!824161 (= lambda!165108 lambda!165048)))

(declare-fun bs!824162 () Bool)

(assert (= bs!824162 (and d!1371196 start!440532)))

(assert (=> bs!824162 (= lambda!165108 lambda!165041)))

(declare-fun bs!824163 () Bool)

(assert (= bs!824163 (and d!1371196 d!1371182)))

(assert (=> bs!824163 (= lambda!165108 lambda!165103)))

(declare-fun bs!824164 () Bool)

(assert (= bs!824164 (and d!1371196 d!1371094)))

(assert (=> bs!824164 (= lambda!165108 lambda!165047)))

(declare-fun bs!824165 () Bool)

(assert (= bs!824165 (and d!1371196 d!1371176)))

(assert (=> bs!824165 (= lambda!165108 lambda!165102)))

(declare-fun bs!824166 () Bool)

(assert (= bs!824166 (and d!1371196 d!1371142)))

(assert (=> bs!824166 (= lambda!165108 lambda!165058)))

(declare-fun bs!824167 () Bool)

(assert (= bs!824167 (and d!1371196 d!1371174)))

(assert (=> bs!824167 (= lambda!165108 lambda!165097)))

(declare-fun bs!824168 () Bool)

(assert (= bs!824168 (and d!1371196 d!1371192)))

(assert (=> bs!824168 (= lambda!165108 lambda!165107)))

(assert (=> d!1371196 (contains!12943 lt!1666456 (hash!2527 hashF!1107 key!3287))))

(declare-fun lt!1666701 () Unit!89579)

(assert (=> d!1371196 (= lt!1666701 (choose!28737 lt!1666456 key!3287 hashF!1107))))

(assert (=> d!1371196 (forall!10042 (toList!4112 lt!1666456) lambda!165108)))

(assert (=> d!1371196 (= (lemmaInGenMapThenLongMapContainsHash!126 lt!1666456 key!3287 hashF!1107) lt!1666701)))

(declare-fun bs!824169 () Bool)

(assert (= bs!824169 d!1371196))

(assert (=> bs!824169 m!5198253))

(assert (=> bs!824169 m!5198253))

(declare-fun m!5198707 () Bool)

(assert (=> bs!824169 m!5198707))

(declare-fun m!5198709 () Bool)

(assert (=> bs!824169 m!5198709))

(declare-fun m!5198711 () Bool)

(assert (=> bs!824169 m!5198711))

(assert (=> b!4479816 d!1371196))

(declare-fun d!1371198 () Bool)

(declare-fun e!2790205 () Bool)

(assert (=> d!1371198 e!2790205))

(declare-fun res!1859864 () Bool)

(assert (=> d!1371198 (=> res!1859864 e!2790205)))

(declare-fun lt!1666704 () Bool)

(assert (=> d!1371198 (= res!1859864 (not lt!1666704))))

(declare-fun lt!1666705 () Bool)

(assert (=> d!1371198 (= lt!1666704 lt!1666705)))

(declare-fun lt!1666703 () Unit!89579)

(declare-fun e!2790204 () Unit!89579)

(assert (=> d!1371198 (= lt!1666703 e!2790204)))

(declare-fun c!763158 () Bool)

(assert (=> d!1371198 (= c!763158 lt!1666705)))

(assert (=> d!1371198 (= lt!1666705 (containsKey!1536 (toList!4112 lt!1666456) lt!1666464))))

(assert (=> d!1371198 (= (contains!12943 lt!1666456 lt!1666464) lt!1666704)))

(declare-fun b!4480050 () Bool)

(declare-fun lt!1666702 () Unit!89579)

(assert (=> b!4480050 (= e!2790204 lt!1666702)))

(assert (=> b!4480050 (= lt!1666702 (lemmaContainsKeyImpliesGetValueByKeyDefined!853 (toList!4112 lt!1666456) lt!1666464))))

(assert (=> b!4480050 (isDefined!8250 (getValueByKey!949 (toList!4112 lt!1666456) lt!1666464))))

(declare-fun b!4480051 () Bool)

(declare-fun Unit!89607 () Unit!89579)

(assert (=> b!4480051 (= e!2790204 Unit!89607)))

(declare-fun b!4480052 () Bool)

(assert (=> b!4480052 (= e!2790205 (isDefined!8250 (getValueByKey!949 (toList!4112 lt!1666456) lt!1666464)))))

(assert (= (and d!1371198 c!763158) b!4480050))

(assert (= (and d!1371198 (not c!763158)) b!4480051))

(assert (= (and d!1371198 (not res!1859864)) b!4480052))

(declare-fun m!5198713 () Bool)

(assert (=> d!1371198 m!5198713))

(declare-fun m!5198715 () Bool)

(assert (=> b!4480050 m!5198715))

(declare-fun m!5198717 () Bool)

(assert (=> b!4480050 m!5198717))

(assert (=> b!4480050 m!5198717))

(declare-fun m!5198719 () Bool)

(assert (=> b!4480050 m!5198719))

(assert (=> b!4480052 m!5198717))

(assert (=> b!4480052 m!5198717))

(assert (=> b!4480052 m!5198719))

(assert (=> b!4479816 d!1371198))

(declare-fun d!1371200 () Bool)

(assert (=> d!1371200 true))

(assert (=> d!1371200 true))

(declare-fun lambda!165111 () Int)

(declare-fun forall!10044 (List!50482 Int) Bool)

(assert (=> d!1371200 (= (allKeysSameHash!906 newBucket!178 hash!344 hashF!1107) (forall!10044 newBucket!178 lambda!165111))))

(declare-fun bs!824170 () Bool)

(assert (= bs!824170 d!1371200))

(declare-fun m!5198721 () Bool)

(assert (=> bs!824170 m!5198721))

(assert (=> b!4479826 d!1371200))

(declare-fun d!1371202 () Bool)

(assert (=> d!1371202 (= (eq!545 (extractMap!1108 (toList!4112 lt!1666455)) (addToMapMapFromBucket!607 newBucket!178 lt!1666471)) (= (content!8156 (toList!4111 (extractMap!1108 (toList!4112 lt!1666455)))) (content!8156 (toList!4111 (addToMapMapFromBucket!607 newBucket!178 lt!1666471)))))))

(declare-fun bs!824171 () Bool)

(assert (= bs!824171 d!1371202))

(declare-fun m!5198723 () Bool)

(assert (=> bs!824171 m!5198723))

(declare-fun m!5198725 () Bool)

(assert (=> bs!824171 m!5198725))

(assert (=> b!4479815 d!1371202))

(declare-fun bs!824172 () Bool)

(declare-fun d!1371204 () Bool)

(assert (= bs!824172 (and d!1371204 d!1371168)))

(declare-fun lambda!165112 () Int)

(assert (=> bs!824172 (= lambda!165112 lambda!165094)))

(declare-fun bs!824173 () Bool)

(assert (= bs!824173 (and d!1371204 d!1371148)))

(assert (=> bs!824173 (= lambda!165112 lambda!165061)))

(declare-fun bs!824174 () Bool)

(assert (= bs!824174 (and d!1371204 d!1371112)))

(assert (=> bs!824174 (not (= lambda!165112 lambda!165051))))

(declare-fun bs!824175 () Bool)

(assert (= bs!824175 (and d!1371204 start!440532)))

(assert (=> bs!824175 (= lambda!165112 lambda!165041)))

(declare-fun bs!824176 () Bool)

(assert (= bs!824176 (and d!1371204 d!1371182)))

(assert (=> bs!824176 (= lambda!165112 lambda!165103)))

(declare-fun bs!824177 () Bool)

(assert (= bs!824177 (and d!1371204 d!1371094)))

(assert (=> bs!824177 (= lambda!165112 lambda!165047)))

(declare-fun bs!824178 () Bool)

(assert (= bs!824178 (and d!1371204 d!1371176)))

(assert (=> bs!824178 (= lambda!165112 lambda!165102)))

(declare-fun bs!824179 () Bool)

(assert (= bs!824179 (and d!1371204 d!1371142)))

(assert (=> bs!824179 (= lambda!165112 lambda!165058)))

(declare-fun bs!824180 () Bool)

(assert (= bs!824180 (and d!1371204 d!1371108)))

(assert (=> bs!824180 (= lambda!165112 lambda!165048)))

(declare-fun bs!824181 () Bool)

(assert (= bs!824181 (and d!1371204 d!1371196)))

(assert (=> bs!824181 (= lambda!165112 lambda!165108)))

(declare-fun bs!824182 () Bool)

(assert (= bs!824182 (and d!1371204 d!1371174)))

(assert (=> bs!824182 (= lambda!165112 lambda!165097)))

(declare-fun bs!824183 () Bool)

(assert (= bs!824183 (and d!1371204 d!1371192)))

(assert (=> bs!824183 (= lambda!165112 lambda!165107)))

(declare-fun lt!1666714 () ListMap!3373)

(assert (=> d!1371204 (invariantList!945 (toList!4111 lt!1666714))))

(declare-fun e!2790208 () ListMap!3373)

(assert (=> d!1371204 (= lt!1666714 e!2790208)))

(declare-fun c!763159 () Bool)

(assert (=> d!1371204 (= c!763159 ((_ is Cons!50359) (toList!4112 lt!1666455)))))

(assert (=> d!1371204 (forall!10042 (toList!4112 lt!1666455) lambda!165112)))

(assert (=> d!1371204 (= (extractMap!1108 (toList!4112 lt!1666455)) lt!1666714)))

(declare-fun b!4480061 () Bool)

(assert (=> b!4480061 (= e!2790208 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (toList!4112 lt!1666455))) (extractMap!1108 (t!357437 (toList!4112 lt!1666455)))))))

(declare-fun b!4480062 () Bool)

(assert (=> b!4480062 (= e!2790208 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371204 c!763159) b!4480061))

(assert (= (and d!1371204 (not c!763159)) b!4480062))

(declare-fun m!5198727 () Bool)

(assert (=> d!1371204 m!5198727))

(declare-fun m!5198729 () Bool)

(assert (=> d!1371204 m!5198729))

(declare-fun m!5198731 () Bool)

(assert (=> b!4480061 m!5198731))

(assert (=> b!4480061 m!5198731))

(declare-fun m!5198733 () Bool)

(assert (=> b!4480061 m!5198733))

(assert (=> b!4479815 d!1371204))

(declare-fun bs!824297 () Bool)

(declare-fun b!4480154 () Bool)

(assert (= bs!824297 (and b!4480154 d!1371200)))

(declare-fun lambda!165158 () Int)

(assert (=> bs!824297 (not (= lambda!165158 lambda!165111))))

(assert (=> b!4480154 true))

(declare-fun bs!824298 () Bool)

(declare-fun b!4480151 () Bool)

(assert (= bs!824298 (and b!4480151 d!1371200)))

(declare-fun lambda!165159 () Int)

(assert (=> bs!824298 (not (= lambda!165159 lambda!165111))))

(declare-fun bs!824299 () Bool)

(assert (= bs!824299 (and b!4480151 b!4480154)))

(assert (=> bs!824299 (= lambda!165159 lambda!165158)))

(assert (=> b!4480151 true))

(declare-fun lambda!165160 () Int)

(assert (=> bs!824298 (not (= lambda!165160 lambda!165111))))

(declare-fun lt!1666812 () ListMap!3373)

(assert (=> bs!824299 (= (= lt!1666812 lt!1666471) (= lambda!165160 lambda!165158))))

(assert (=> b!4480151 (= (= lt!1666812 lt!1666471) (= lambda!165160 lambda!165159))))

(assert (=> b!4480151 true))

(declare-fun bs!824300 () Bool)

(declare-fun d!1371206 () Bool)

(assert (= bs!824300 (and d!1371206 d!1371200)))

(declare-fun lambda!165161 () Int)

(assert (=> bs!824300 (not (= lambda!165161 lambda!165111))))

(declare-fun bs!824301 () Bool)

(assert (= bs!824301 (and d!1371206 b!4480154)))

(declare-fun lt!1666811 () ListMap!3373)

(assert (=> bs!824301 (= (= lt!1666811 lt!1666471) (= lambda!165161 lambda!165158))))

(declare-fun bs!824302 () Bool)

(assert (= bs!824302 (and d!1371206 b!4480151)))

(assert (=> bs!824302 (= (= lt!1666811 lt!1666471) (= lambda!165161 lambda!165159))))

(assert (=> bs!824302 (= (= lt!1666811 lt!1666812) (= lambda!165161 lambda!165160))))

(assert (=> d!1371206 true))

(declare-fun c!763173 () Bool)

(declare-fun call!312004 () Bool)

(declare-fun bm!311997 () Bool)

(assert (=> bm!311997 (= call!312004 (forall!10044 (toList!4111 lt!1666471) (ite c!763173 lambda!165158 lambda!165160)))))

(declare-fun b!4480150 () Bool)

(declare-fun res!1859916 () Bool)

(declare-fun e!2790269 () Bool)

(assert (=> b!4480150 (=> (not res!1859916) (not e!2790269))))

(assert (=> b!4480150 (= res!1859916 (forall!10044 (toList!4111 lt!1666471) lambda!165161))))

(assert (=> d!1371206 e!2790269))

(declare-fun res!1859914 () Bool)

(assert (=> d!1371206 (=> (not res!1859914) (not e!2790269))))

(assert (=> d!1371206 (= res!1859914 (forall!10044 newBucket!178 lambda!165161))))

(declare-fun e!2790268 () ListMap!3373)

(assert (=> d!1371206 (= lt!1666811 e!2790268)))

(assert (=> d!1371206 (= c!763173 ((_ is Nil!50358) newBucket!178))))

(assert (=> d!1371206 (noDuplicateKeys!1052 newBucket!178)))

(assert (=> d!1371206 (= (addToMapMapFromBucket!607 newBucket!178 lt!1666471) lt!1666811)))

(assert (=> b!4480151 (= e!2790268 lt!1666812)))

(declare-fun lt!1666820 () ListMap!3373)

(declare-fun +!1406 (ListMap!3373 tuple2!50642) ListMap!3373)

(assert (=> b!4480151 (= lt!1666820 (+!1406 lt!1666471 (h!56139 newBucket!178)))))

(assert (=> b!4480151 (= lt!1666812 (addToMapMapFromBucket!607 (t!357436 newBucket!178) (+!1406 lt!1666471 (h!56139 newBucket!178))))))

(declare-fun lt!1666807 () Unit!89579)

(declare-fun call!312002 () Unit!89579)

(assert (=> b!4480151 (= lt!1666807 call!312002)))

(assert (=> b!4480151 (forall!10044 (toList!4111 lt!1666471) lambda!165159)))

(declare-fun lt!1666805 () Unit!89579)

(assert (=> b!4480151 (= lt!1666805 lt!1666807)))

(assert (=> b!4480151 (forall!10044 (toList!4111 lt!1666820) lambda!165160)))

(declare-fun lt!1666810 () Unit!89579)

(declare-fun Unit!89610 () Unit!89579)

(assert (=> b!4480151 (= lt!1666810 Unit!89610)))

(assert (=> b!4480151 (forall!10044 (t!357436 newBucket!178) lambda!165160)))

(declare-fun lt!1666818 () Unit!89579)

(declare-fun Unit!89611 () Unit!89579)

(assert (=> b!4480151 (= lt!1666818 Unit!89611)))

(declare-fun lt!1666800 () Unit!89579)

(declare-fun Unit!89612 () Unit!89579)

(assert (=> b!4480151 (= lt!1666800 Unit!89612)))

(declare-fun lt!1666816 () Unit!89579)

(declare-fun forallContained!2305 (List!50482 Int tuple2!50642) Unit!89579)

(assert (=> b!4480151 (= lt!1666816 (forallContained!2305 (toList!4111 lt!1666820) lambda!165160 (h!56139 newBucket!178)))))

(assert (=> b!4480151 (contains!12945 lt!1666820 (_1!28615 (h!56139 newBucket!178)))))

(declare-fun lt!1666814 () Unit!89579)

(declare-fun Unit!89613 () Unit!89579)

(assert (=> b!4480151 (= lt!1666814 Unit!89613)))

(assert (=> b!4480151 (contains!12945 lt!1666812 (_1!28615 (h!56139 newBucket!178)))))

(declare-fun lt!1666813 () Unit!89579)

(declare-fun Unit!89614 () Unit!89579)

(assert (=> b!4480151 (= lt!1666813 Unit!89614)))

(assert (=> b!4480151 (forall!10044 newBucket!178 lambda!165160)))

(declare-fun lt!1666801 () Unit!89579)

(declare-fun Unit!89615 () Unit!89579)

(assert (=> b!4480151 (= lt!1666801 Unit!89615)))

(assert (=> b!4480151 (forall!10044 (toList!4111 lt!1666820) lambda!165160)))

(declare-fun lt!1666802 () Unit!89579)

(declare-fun Unit!89616 () Unit!89579)

(assert (=> b!4480151 (= lt!1666802 Unit!89616)))

(declare-fun lt!1666815 () Unit!89579)

(declare-fun Unit!89617 () Unit!89579)

(assert (=> b!4480151 (= lt!1666815 Unit!89617)))

(declare-fun lt!1666808 () Unit!89579)

(declare-fun addForallContainsKeyThenBeforeAdding!276 (ListMap!3373 ListMap!3373 K!11770 V!12016) Unit!89579)

(assert (=> b!4480151 (= lt!1666808 (addForallContainsKeyThenBeforeAdding!276 lt!1666471 lt!1666812 (_1!28615 (h!56139 newBucket!178)) (_2!28615 (h!56139 newBucket!178))))))

(declare-fun call!312003 () Bool)

(assert (=> b!4480151 call!312003))

(declare-fun lt!1666804 () Unit!89579)

(assert (=> b!4480151 (= lt!1666804 lt!1666808)))

(assert (=> b!4480151 call!312004))

(declare-fun lt!1666817 () Unit!89579)

(declare-fun Unit!89618 () Unit!89579)

(assert (=> b!4480151 (= lt!1666817 Unit!89618)))

(declare-fun res!1859915 () Bool)

(assert (=> b!4480151 (= res!1859915 (forall!10044 newBucket!178 lambda!165160))))

(declare-fun e!2790270 () Bool)

(assert (=> b!4480151 (=> (not res!1859915) (not e!2790270))))

(assert (=> b!4480151 e!2790270))

(declare-fun lt!1666806 () Unit!89579)

(declare-fun Unit!89619 () Unit!89579)

(assert (=> b!4480151 (= lt!1666806 Unit!89619)))

(declare-fun bm!311998 () Bool)

(assert (=> bm!311998 (= call!312003 (forall!10044 (toList!4111 lt!1666471) (ite c!763173 lambda!165158 lambda!165160)))))

(declare-fun b!4480152 () Bool)

(assert (=> b!4480152 (= e!2790269 (invariantList!945 (toList!4111 lt!1666811)))))

(declare-fun bm!311999 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!276 (ListMap!3373) Unit!89579)

(assert (=> bm!311999 (= call!312002 (lemmaContainsAllItsOwnKeys!276 lt!1666471))))

(declare-fun b!4480153 () Bool)

(assert (=> b!4480153 (= e!2790270 (forall!10044 (toList!4111 lt!1666471) lambda!165160))))

(assert (=> b!4480154 (= e!2790268 lt!1666471)))

(declare-fun lt!1666819 () Unit!89579)

(assert (=> b!4480154 (= lt!1666819 call!312002)))

(assert (=> b!4480154 call!312003))

(declare-fun lt!1666803 () Unit!89579)

(assert (=> b!4480154 (= lt!1666803 lt!1666819)))

(assert (=> b!4480154 call!312004))

(declare-fun lt!1666809 () Unit!89579)

(declare-fun Unit!89620 () Unit!89579)

(assert (=> b!4480154 (= lt!1666809 Unit!89620)))

(assert (= (and d!1371206 c!763173) b!4480154))

(assert (= (and d!1371206 (not c!763173)) b!4480151))

(assert (= (and b!4480151 res!1859915) b!4480153))

(assert (= (or b!4480154 b!4480151) bm!311998))

(assert (= (or b!4480154 b!4480151) bm!311997))

(assert (= (or b!4480154 b!4480151) bm!311999))

(assert (= (and d!1371206 res!1859914) b!4480150))

(assert (= (and b!4480150 res!1859916) b!4480152))

(declare-fun m!5198921 () Bool)

(assert (=> b!4480152 m!5198921))

(declare-fun m!5198923 () Bool)

(assert (=> b!4480151 m!5198923))

(declare-fun m!5198925 () Bool)

(assert (=> b!4480151 m!5198925))

(declare-fun m!5198927 () Bool)

(assert (=> b!4480151 m!5198927))

(declare-fun m!5198929 () Bool)

(assert (=> b!4480151 m!5198929))

(declare-fun m!5198931 () Bool)

(assert (=> b!4480151 m!5198931))

(declare-fun m!5198933 () Bool)

(assert (=> b!4480151 m!5198933))

(declare-fun m!5198935 () Bool)

(assert (=> b!4480151 m!5198935))

(assert (=> b!4480151 m!5198923))

(assert (=> b!4480151 m!5198933))

(declare-fun m!5198937 () Bool)

(assert (=> b!4480151 m!5198937))

(declare-fun m!5198939 () Bool)

(assert (=> b!4480151 m!5198939))

(declare-fun m!5198941 () Bool)

(assert (=> b!4480151 m!5198941))

(assert (=> b!4480151 m!5198935))

(declare-fun m!5198943 () Bool)

(assert (=> b!4480153 m!5198943))

(declare-fun m!5198945 () Bool)

(assert (=> b!4480150 m!5198945))

(declare-fun m!5198947 () Bool)

(assert (=> bm!311999 m!5198947))

(declare-fun m!5198949 () Bool)

(assert (=> bm!311998 m!5198949))

(assert (=> bm!311997 m!5198949))

(declare-fun m!5198951 () Bool)

(assert (=> d!1371206 m!5198951))

(assert (=> d!1371206 m!5198263))

(assert (=> b!4479815 d!1371206))

(declare-fun d!1371260 () Bool)

(declare-fun res!1859921 () Bool)

(declare-fun e!2790275 () Bool)

(assert (=> d!1371260 (=> res!1859921 e!2790275)))

(assert (=> d!1371260 (= res!1859921 ((_ is Nil!50359) (toList!4112 lm!1477)))))

(assert (=> d!1371260 (= (forall!10042 (toList!4112 lm!1477) lambda!165041) e!2790275)))

(declare-fun b!4480161 () Bool)

(declare-fun e!2790276 () Bool)

(assert (=> b!4480161 (= e!2790275 e!2790276)))

(declare-fun res!1859922 () Bool)

(assert (=> b!4480161 (=> (not res!1859922) (not e!2790276))))

(assert (=> b!4480161 (= res!1859922 (dynLambda!21042 lambda!165041 (h!56140 (toList!4112 lm!1477))))))

(declare-fun b!4480162 () Bool)

(assert (=> b!4480162 (= e!2790276 (forall!10042 (t!357437 (toList!4112 lm!1477)) lambda!165041))))

(assert (= (and d!1371260 (not res!1859921)) b!4480161))

(assert (= (and b!4480161 res!1859922) b!4480162))

(declare-fun b_lambda!150275 () Bool)

(assert (=> (not b_lambda!150275) (not b!4480161)))

(declare-fun m!5198953 () Bool)

(assert (=> b!4480161 m!5198953))

(declare-fun m!5198955 () Bool)

(assert (=> b!4480162 m!5198955))

(assert (=> start!440532 d!1371260))

(declare-fun d!1371262 () Bool)

(assert (=> d!1371262 (= (inv!65954 lm!1477) (isStrictlySorted!359 (toList!4112 lm!1477)))))

(declare-fun bs!824303 () Bool)

(assert (= bs!824303 d!1371262))

(assert (=> bs!824303 m!5198523))

(assert (=> start!440532 d!1371262))

(declare-fun d!1371264 () Bool)

(declare-fun res!1859927 () Bool)

(declare-fun e!2790281 () Bool)

(assert (=> d!1371264 (=> res!1859927 e!2790281)))

(assert (=> d!1371264 (= res!1859927 (and ((_ is Cons!50358) (_2!28616 (h!56140 (toList!4112 lm!1477)))) (= (_1!28615 (h!56139 (_2!28616 (h!56140 (toList!4112 lm!1477))))) key!3287)))))

(assert (=> d!1371264 (= (containsKey!1532 (_2!28616 (h!56140 (toList!4112 lm!1477))) key!3287) e!2790281)))

(declare-fun b!4480167 () Bool)

(declare-fun e!2790282 () Bool)

(assert (=> b!4480167 (= e!2790281 e!2790282)))

(declare-fun res!1859928 () Bool)

(assert (=> b!4480167 (=> (not res!1859928) (not e!2790282))))

(assert (=> b!4480167 (= res!1859928 ((_ is Cons!50358) (_2!28616 (h!56140 (toList!4112 lm!1477)))))))

(declare-fun b!4480168 () Bool)

(assert (=> b!4480168 (= e!2790282 (containsKey!1532 (t!357436 (_2!28616 (h!56140 (toList!4112 lm!1477)))) key!3287))))

(assert (= (and d!1371264 (not res!1859927)) b!4480167))

(assert (= (and b!4480167 res!1859928) b!4480168))

(declare-fun m!5198957 () Bool)

(assert (=> b!4480168 m!5198957))

(assert (=> b!4479814 d!1371264))

(declare-fun bs!824304 () Bool)

(declare-fun d!1371266 () Bool)

(assert (= bs!824304 (and d!1371266 d!1371168)))

(declare-fun lambda!165164 () Int)

(assert (=> bs!824304 (= lambda!165164 lambda!165094)))

(declare-fun bs!824305 () Bool)

(assert (= bs!824305 (and d!1371266 d!1371148)))

(assert (=> bs!824305 (= lambda!165164 lambda!165061)))

(declare-fun bs!824306 () Bool)

(assert (= bs!824306 (and d!1371266 d!1371112)))

(assert (=> bs!824306 (not (= lambda!165164 lambda!165051))))

(declare-fun bs!824307 () Bool)

(assert (= bs!824307 (and d!1371266 d!1371204)))

(assert (=> bs!824307 (= lambda!165164 lambda!165112)))

(declare-fun bs!824308 () Bool)

(assert (= bs!824308 (and d!1371266 start!440532)))

(assert (=> bs!824308 (= lambda!165164 lambda!165041)))

(declare-fun bs!824309 () Bool)

(assert (= bs!824309 (and d!1371266 d!1371182)))

(assert (=> bs!824309 (= lambda!165164 lambda!165103)))

(declare-fun bs!824310 () Bool)

(assert (= bs!824310 (and d!1371266 d!1371094)))

(assert (=> bs!824310 (= lambda!165164 lambda!165047)))

(declare-fun bs!824311 () Bool)

(assert (= bs!824311 (and d!1371266 d!1371176)))

(assert (=> bs!824311 (= lambda!165164 lambda!165102)))

(declare-fun bs!824312 () Bool)

(assert (= bs!824312 (and d!1371266 d!1371142)))

(assert (=> bs!824312 (= lambda!165164 lambda!165058)))

(declare-fun bs!824313 () Bool)

(assert (= bs!824313 (and d!1371266 d!1371108)))

(assert (=> bs!824313 (= lambda!165164 lambda!165048)))

(declare-fun bs!824314 () Bool)

(assert (= bs!824314 (and d!1371266 d!1371196)))

(assert (=> bs!824314 (= lambda!165164 lambda!165108)))

(declare-fun bs!824315 () Bool)

(assert (= bs!824315 (and d!1371266 d!1371174)))

(assert (=> bs!824315 (= lambda!165164 lambda!165097)))

(declare-fun bs!824316 () Bool)

(assert (= bs!824316 (and d!1371266 d!1371192)))

(assert (=> bs!824316 (= lambda!165164 lambda!165107)))

(assert (=> d!1371266 (contains!12945 (extractMap!1108 (toList!4112 (ListLongMap!2744 lt!1666461))) key!3287)))

(declare-fun lt!1666823 () Unit!89579)

(declare-fun choose!28743 (ListLongMap!2743 K!11770 Hashable!5447) Unit!89579)

(assert (=> d!1371266 (= lt!1666823 (choose!28743 (ListLongMap!2744 lt!1666461) key!3287 hashF!1107))))

(assert (=> d!1371266 (forall!10042 (toList!4112 (ListLongMap!2744 lt!1666461)) lambda!165164)))

(assert (=> d!1371266 (= (lemmaListContainsThenExtractedMapContains!48 (ListLongMap!2744 lt!1666461) key!3287 hashF!1107) lt!1666823)))

(declare-fun bs!824317 () Bool)

(assert (= bs!824317 d!1371266))

(declare-fun m!5198959 () Bool)

(assert (=> bs!824317 m!5198959))

(assert (=> bs!824317 m!5198959))

(declare-fun m!5198961 () Bool)

(assert (=> bs!824317 m!5198961))

(declare-fun m!5198963 () Bool)

(assert (=> bs!824317 m!5198963))

(declare-fun m!5198965 () Bool)

(assert (=> bs!824317 m!5198965))

(assert (=> b!4479825 d!1371266))

(declare-fun bs!824318 () Bool)

(declare-fun d!1371268 () Bool)

(assert (= bs!824318 (and d!1371268 d!1371168)))

(declare-fun lambda!165165 () Int)

(assert (=> bs!824318 (= lambda!165165 lambda!165094)))

(declare-fun bs!824319 () Bool)

(assert (= bs!824319 (and d!1371268 d!1371148)))

(assert (=> bs!824319 (= lambda!165165 lambda!165061)))

(declare-fun bs!824320 () Bool)

(assert (= bs!824320 (and d!1371268 d!1371112)))

(assert (=> bs!824320 (not (= lambda!165165 lambda!165051))))

(declare-fun bs!824321 () Bool)

(assert (= bs!824321 (and d!1371268 d!1371204)))

(assert (=> bs!824321 (= lambda!165165 lambda!165112)))

(declare-fun bs!824322 () Bool)

(assert (= bs!824322 (and d!1371268 d!1371266)))

(assert (=> bs!824322 (= lambda!165165 lambda!165164)))

(declare-fun bs!824323 () Bool)

(assert (= bs!824323 (and d!1371268 start!440532)))

(assert (=> bs!824323 (= lambda!165165 lambda!165041)))

(declare-fun bs!824324 () Bool)

(assert (= bs!824324 (and d!1371268 d!1371182)))

(assert (=> bs!824324 (= lambda!165165 lambda!165103)))

(declare-fun bs!824325 () Bool)

(assert (= bs!824325 (and d!1371268 d!1371094)))

(assert (=> bs!824325 (= lambda!165165 lambda!165047)))

(declare-fun bs!824326 () Bool)

(assert (= bs!824326 (and d!1371268 d!1371176)))

(assert (=> bs!824326 (= lambda!165165 lambda!165102)))

(declare-fun bs!824327 () Bool)

(assert (= bs!824327 (and d!1371268 d!1371142)))

(assert (=> bs!824327 (= lambda!165165 lambda!165058)))

(declare-fun bs!824328 () Bool)

(assert (= bs!824328 (and d!1371268 d!1371108)))

(assert (=> bs!824328 (= lambda!165165 lambda!165048)))

(declare-fun bs!824329 () Bool)

(assert (= bs!824329 (and d!1371268 d!1371196)))

(assert (=> bs!824329 (= lambda!165165 lambda!165108)))

(declare-fun bs!824330 () Bool)

(assert (= bs!824330 (and d!1371268 d!1371174)))

(assert (=> bs!824330 (= lambda!165165 lambda!165097)))

(declare-fun bs!824331 () Bool)

(assert (= bs!824331 (and d!1371268 d!1371192)))

(assert (=> bs!824331 (= lambda!165165 lambda!165107)))

(declare-fun lt!1666824 () ListMap!3373)

(assert (=> d!1371268 (invariantList!945 (toList!4111 lt!1666824))))

(declare-fun e!2790283 () ListMap!3373)

(assert (=> d!1371268 (= lt!1666824 e!2790283)))

(declare-fun c!763174 () Bool)

(assert (=> d!1371268 (= c!763174 ((_ is Cons!50359) lt!1666461))))

(assert (=> d!1371268 (forall!10042 lt!1666461 lambda!165165)))

(assert (=> d!1371268 (= (extractMap!1108 lt!1666461) lt!1666824)))

(declare-fun b!4480169 () Bool)

(assert (=> b!4480169 (= e!2790283 (addToMapMapFromBucket!607 (_2!28616 (h!56140 lt!1666461)) (extractMap!1108 (t!357437 lt!1666461))))))

(declare-fun b!4480170 () Bool)

(assert (=> b!4480170 (= e!2790283 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371268 c!763174) b!4480169))

(assert (= (and d!1371268 (not c!763174)) b!4480170))

(declare-fun m!5198967 () Bool)

(assert (=> d!1371268 m!5198967))

(declare-fun m!5198969 () Bool)

(assert (=> d!1371268 m!5198969))

(declare-fun m!5198971 () Bool)

(assert (=> b!4480169 m!5198971))

(assert (=> b!4480169 m!5198971))

(declare-fun m!5198973 () Bool)

(assert (=> b!4480169 m!5198973))

(assert (=> b!4479825 d!1371268))

(declare-fun bs!824332 () Bool)

(declare-fun d!1371270 () Bool)

(assert (= bs!824332 (and d!1371270 d!1371168)))

(declare-fun lambda!165166 () Int)

(assert (=> bs!824332 (= lambda!165166 lambda!165094)))

(declare-fun bs!824333 () Bool)

(assert (= bs!824333 (and d!1371270 d!1371148)))

(assert (=> bs!824333 (= lambda!165166 lambda!165061)))

(declare-fun bs!824334 () Bool)

(assert (= bs!824334 (and d!1371270 d!1371268)))

(assert (=> bs!824334 (= lambda!165166 lambda!165165)))

(declare-fun bs!824335 () Bool)

(assert (= bs!824335 (and d!1371270 d!1371112)))

(assert (=> bs!824335 (not (= lambda!165166 lambda!165051))))

(declare-fun bs!824336 () Bool)

(assert (= bs!824336 (and d!1371270 d!1371204)))

(assert (=> bs!824336 (= lambda!165166 lambda!165112)))

(declare-fun bs!824337 () Bool)

(assert (= bs!824337 (and d!1371270 d!1371266)))

(assert (=> bs!824337 (= lambda!165166 lambda!165164)))

(declare-fun bs!824338 () Bool)

(assert (= bs!824338 (and d!1371270 start!440532)))

(assert (=> bs!824338 (= lambda!165166 lambda!165041)))

(declare-fun bs!824339 () Bool)

(assert (= bs!824339 (and d!1371270 d!1371182)))

(assert (=> bs!824339 (= lambda!165166 lambda!165103)))

(declare-fun bs!824340 () Bool)

(assert (= bs!824340 (and d!1371270 d!1371094)))

(assert (=> bs!824340 (= lambda!165166 lambda!165047)))

(declare-fun bs!824341 () Bool)

(assert (= bs!824341 (and d!1371270 d!1371176)))

(assert (=> bs!824341 (= lambda!165166 lambda!165102)))

(declare-fun bs!824342 () Bool)

(assert (= bs!824342 (and d!1371270 d!1371142)))

(assert (=> bs!824342 (= lambda!165166 lambda!165058)))

(declare-fun bs!824343 () Bool)

(assert (= bs!824343 (and d!1371270 d!1371108)))

(assert (=> bs!824343 (= lambda!165166 lambda!165048)))

(declare-fun bs!824344 () Bool)

(assert (= bs!824344 (and d!1371270 d!1371196)))

(assert (=> bs!824344 (= lambda!165166 lambda!165108)))

(declare-fun bs!824345 () Bool)

(assert (= bs!824345 (and d!1371270 d!1371174)))

(assert (=> bs!824345 (= lambda!165166 lambda!165097)))

(declare-fun bs!824346 () Bool)

(assert (= bs!824346 (and d!1371270 d!1371192)))

(assert (=> bs!824346 (= lambda!165166 lambda!165107)))

(declare-fun lt!1666825 () ListMap!3373)

(assert (=> d!1371270 (invariantList!945 (toList!4111 lt!1666825))))

(declare-fun e!2790284 () ListMap!3373)

(assert (=> d!1371270 (= lt!1666825 e!2790284)))

(declare-fun c!763175 () Bool)

(assert (=> d!1371270 (= c!763175 ((_ is Cons!50359) (Cons!50359 lt!1666468 Nil!50359)))))

(assert (=> d!1371270 (forall!10042 (Cons!50359 lt!1666468 Nil!50359) lambda!165166)))

(assert (=> d!1371270 (= (extractMap!1108 (Cons!50359 lt!1666468 Nil!50359)) lt!1666825)))

(declare-fun b!4480171 () Bool)

(assert (=> b!4480171 (= e!2790284 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (Cons!50359 lt!1666468 Nil!50359))) (extractMap!1108 (t!357437 (Cons!50359 lt!1666468 Nil!50359)))))))

(declare-fun b!4480172 () Bool)

(assert (=> b!4480172 (= e!2790284 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371270 c!763175) b!4480171))

(assert (= (and d!1371270 (not c!763175)) b!4480172))

(declare-fun m!5198975 () Bool)

(assert (=> d!1371270 m!5198975))

(declare-fun m!5198977 () Bool)

(assert (=> d!1371270 m!5198977))

(declare-fun m!5198979 () Bool)

(assert (=> b!4480171 m!5198979))

(assert (=> b!4480171 m!5198979))

(declare-fun m!5198981 () Bool)

(assert (=> b!4480171 m!5198981))

(assert (=> b!4479825 d!1371270))

(declare-fun d!1371272 () Bool)

(declare-fun e!2790285 () Bool)

(assert (=> d!1371272 e!2790285))

(declare-fun res!1859929 () Bool)

(assert (=> d!1371272 (=> (not res!1859929) (not e!2790285))))

(declare-fun lt!1666826 () ListMap!3373)

(assert (=> d!1371272 (= res!1859929 (not (contains!12945 lt!1666826 key!3287)))))

(assert (=> d!1371272 (= lt!1666826 (ListMap!3374 (removePresrvNoDuplicatedKeys!81 (toList!4111 (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359))) key!3287)))))

(assert (=> d!1371272 (= (-!314 (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359)) key!3287) lt!1666826)))

(declare-fun b!4480173 () Bool)

(assert (=> b!4480173 (= e!2790285 (= ((_ map and) (content!8157 (keys!17409 (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359)))) ((_ map not) (store ((as const (Array K!11770 Bool)) false) key!3287 true))) (content!8157 (keys!17409 lt!1666826))))))

(assert (= (and d!1371272 res!1859929) b!4480173))

(declare-fun m!5198983 () Bool)

(assert (=> d!1371272 m!5198983))

(declare-fun m!5198985 () Bool)

(assert (=> d!1371272 m!5198985))

(declare-fun m!5198987 () Bool)

(assert (=> b!4480173 m!5198987))

(declare-fun m!5198989 () Bool)

(assert (=> b!4480173 m!5198989))

(declare-fun m!5198991 () Bool)

(assert (=> b!4480173 m!5198991))

(declare-fun m!5198993 () Bool)

(assert (=> b!4480173 m!5198993))

(assert (=> b!4480173 m!5198691))

(assert (=> b!4480173 m!5198293))

(assert (=> b!4480173 m!5198987))

(assert (=> b!4480173 m!5198991))

(assert (=> b!4479825 d!1371272))

(declare-fun d!1371274 () Bool)

(declare-fun e!2790286 () Bool)

(assert (=> d!1371274 e!2790286))

(declare-fun res!1859930 () Bool)

(assert (=> d!1371274 (=> (not res!1859930) (not e!2790286))))

(declare-fun lt!1666830 () ListLongMap!2743)

(assert (=> d!1371274 (= res!1859930 (contains!12943 lt!1666830 (_1!28616 lt!1666468)))))

(declare-fun lt!1666829 () List!50483)

(assert (=> d!1371274 (= lt!1666830 (ListLongMap!2744 lt!1666829))))

(declare-fun lt!1666828 () Unit!89579)

(declare-fun lt!1666827 () Unit!89579)

(assert (=> d!1371274 (= lt!1666828 lt!1666827)))

(assert (=> d!1371274 (= (getValueByKey!949 lt!1666829 (_1!28616 lt!1666468)) (Some!10962 (_2!28616 lt!1666468)))))

(assert (=> d!1371274 (= lt!1666827 (lemmaContainsTupThenGetReturnValue!603 lt!1666829 (_1!28616 lt!1666468) (_2!28616 lt!1666468)))))

(assert (=> d!1371274 (= lt!1666829 (insertStrictlySorted!347 (toList!4112 lm!1477) (_1!28616 lt!1666468) (_2!28616 lt!1666468)))))

(assert (=> d!1371274 (= (+!1404 lm!1477 lt!1666468) lt!1666830)))

(declare-fun b!4480174 () Bool)

(declare-fun res!1859931 () Bool)

(assert (=> b!4480174 (=> (not res!1859931) (not e!2790286))))

(assert (=> b!4480174 (= res!1859931 (= (getValueByKey!949 (toList!4112 lt!1666830) (_1!28616 lt!1666468)) (Some!10962 (_2!28616 lt!1666468))))))

(declare-fun b!4480175 () Bool)

(assert (=> b!4480175 (= e!2790286 (contains!12944 (toList!4112 lt!1666830) lt!1666468))))

(assert (= (and d!1371274 res!1859930) b!4480174))

(assert (= (and b!4480174 res!1859931) b!4480175))

(declare-fun m!5198995 () Bool)

(assert (=> d!1371274 m!5198995))

(declare-fun m!5198997 () Bool)

(assert (=> d!1371274 m!5198997))

(declare-fun m!5198999 () Bool)

(assert (=> d!1371274 m!5198999))

(declare-fun m!5199001 () Bool)

(assert (=> d!1371274 m!5199001))

(declare-fun m!5199003 () Bool)

(assert (=> b!4480174 m!5199003))

(declare-fun m!5199005 () Bool)

(assert (=> b!4480175 m!5199005))

(assert (=> b!4479825 d!1371274))

(declare-fun d!1371276 () Bool)

(assert (=> d!1371276 (= (tail!7557 (toList!4112 lt!1666455)) (t!357437 (toList!4112 lt!1666455)))))

(assert (=> b!4479825 d!1371276))

(declare-fun d!1371278 () Bool)

(assert (=> d!1371278 (eq!545 (extractMap!1108 (Cons!50359 (tuple2!50645 hash!344 newBucket!178) Nil!50359)) (-!314 (extractMap!1108 (Cons!50359 (tuple2!50645 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477)))) Nil!50359)) key!3287))))

(declare-fun lt!1666833 () Unit!89579)

(declare-fun choose!28744 ((_ BitVec 64) List!50482 List!50482 K!11770 Hashable!5447) Unit!89579)

(assert (=> d!1371278 (= lt!1666833 (choose!28744 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1371278 (noDuplicateKeys!1052 (_2!28616 (h!56140 (toList!4112 lm!1477))))))

(assert (=> d!1371278 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!44 hash!344 (_2!28616 (h!56140 (toList!4112 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1666833)))

(declare-fun bs!824347 () Bool)

(assert (= bs!824347 d!1371278))

(declare-fun m!5199007 () Bool)

(assert (=> bs!824347 m!5199007))

(declare-fun m!5199009 () Bool)

(assert (=> bs!824347 m!5199009))

(declare-fun m!5199011 () Bool)

(assert (=> bs!824347 m!5199011))

(assert (=> bs!824347 m!5198303))

(assert (=> bs!824347 m!5199007))

(assert (=> bs!824347 m!5199011))

(declare-fun m!5199013 () Bool)

(assert (=> bs!824347 m!5199013))

(assert (=> bs!824347 m!5199009))

(declare-fun m!5199015 () Bool)

(assert (=> bs!824347 m!5199015))

(assert (=> b!4479825 d!1371278))

(declare-fun bs!824348 () Bool)

(declare-fun d!1371280 () Bool)

(assert (= bs!824348 (and d!1371280 d!1371168)))

(declare-fun lambda!165167 () Int)

(assert (=> bs!824348 (= lambda!165167 lambda!165094)))

(declare-fun bs!824349 () Bool)

(assert (= bs!824349 (and d!1371280 d!1371148)))

(assert (=> bs!824349 (= lambda!165167 lambda!165061)))

(declare-fun bs!824350 () Bool)

(assert (= bs!824350 (and d!1371280 d!1371268)))

(assert (=> bs!824350 (= lambda!165167 lambda!165165)))

(declare-fun bs!824351 () Bool)

(assert (= bs!824351 (and d!1371280 d!1371112)))

(assert (=> bs!824351 (not (= lambda!165167 lambda!165051))))

(declare-fun bs!824352 () Bool)

(assert (= bs!824352 (and d!1371280 d!1371204)))

(assert (=> bs!824352 (= lambda!165167 lambda!165112)))

(declare-fun bs!824353 () Bool)

(assert (= bs!824353 (and d!1371280 d!1371270)))

(assert (=> bs!824353 (= lambda!165167 lambda!165166)))

(declare-fun bs!824354 () Bool)

(assert (= bs!824354 (and d!1371280 d!1371266)))

(assert (=> bs!824354 (= lambda!165167 lambda!165164)))

(declare-fun bs!824355 () Bool)

(assert (= bs!824355 (and d!1371280 start!440532)))

(assert (=> bs!824355 (= lambda!165167 lambda!165041)))

(declare-fun bs!824356 () Bool)

(assert (= bs!824356 (and d!1371280 d!1371182)))

(assert (=> bs!824356 (= lambda!165167 lambda!165103)))

(declare-fun bs!824357 () Bool)

(assert (= bs!824357 (and d!1371280 d!1371094)))

(assert (=> bs!824357 (= lambda!165167 lambda!165047)))

(declare-fun bs!824358 () Bool)

(assert (= bs!824358 (and d!1371280 d!1371176)))

(assert (=> bs!824358 (= lambda!165167 lambda!165102)))

(declare-fun bs!824359 () Bool)

(assert (= bs!824359 (and d!1371280 d!1371142)))

(assert (=> bs!824359 (= lambda!165167 lambda!165058)))

(declare-fun bs!824360 () Bool)

(assert (= bs!824360 (and d!1371280 d!1371108)))

(assert (=> bs!824360 (= lambda!165167 lambda!165048)))

(declare-fun bs!824361 () Bool)

(assert (= bs!824361 (and d!1371280 d!1371196)))

(assert (=> bs!824361 (= lambda!165167 lambda!165108)))

(declare-fun bs!824362 () Bool)

(assert (= bs!824362 (and d!1371280 d!1371174)))

(assert (=> bs!824362 (= lambda!165167 lambda!165097)))

(declare-fun bs!824363 () Bool)

(assert (= bs!824363 (and d!1371280 d!1371192)))

(assert (=> bs!824363 (= lambda!165167 lambda!165107)))

(declare-fun lt!1666834 () ListMap!3373)

(assert (=> d!1371280 (invariantList!945 (toList!4111 lt!1666834))))

(declare-fun e!2790287 () ListMap!3373)

(assert (=> d!1371280 (= lt!1666834 e!2790287)))

(declare-fun c!763176 () Bool)

(assert (=> d!1371280 (= c!763176 ((_ is Cons!50359) (Cons!50359 lt!1666476 Nil!50359)))))

(assert (=> d!1371280 (forall!10042 (Cons!50359 lt!1666476 Nil!50359) lambda!165167)))

(assert (=> d!1371280 (= (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359)) lt!1666834)))

(declare-fun b!4480176 () Bool)

(assert (=> b!4480176 (= e!2790287 (addToMapMapFromBucket!607 (_2!28616 (h!56140 (Cons!50359 lt!1666476 Nil!50359))) (extractMap!1108 (t!357437 (Cons!50359 lt!1666476 Nil!50359)))))))

(declare-fun b!4480177 () Bool)

(assert (=> b!4480177 (= e!2790287 (ListMap!3374 Nil!50358))))

(assert (= (and d!1371280 c!763176) b!4480176))

(assert (= (and d!1371280 (not c!763176)) b!4480177))

(declare-fun m!5199017 () Bool)

(assert (=> d!1371280 m!5199017))

(declare-fun m!5199019 () Bool)

(assert (=> d!1371280 m!5199019))

(declare-fun m!5199021 () Bool)

(assert (=> b!4480176 m!5199021))

(assert (=> b!4480176 m!5199021))

(declare-fun m!5199023 () Bool)

(assert (=> b!4480176 m!5199023))

(assert (=> b!4479825 d!1371280))

(declare-fun d!1371282 () Bool)

(assert (=> d!1371282 (= (eq!545 (extractMap!1108 (Cons!50359 lt!1666468 Nil!50359)) (-!314 (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359)) key!3287)) (= (content!8156 (toList!4111 (extractMap!1108 (Cons!50359 lt!1666468 Nil!50359)))) (content!8156 (toList!4111 (-!314 (extractMap!1108 (Cons!50359 lt!1666476 Nil!50359)) key!3287)))))))

(declare-fun bs!824364 () Bool)

(assert (= bs!824364 d!1371282))

(declare-fun m!5199025 () Bool)

(assert (=> bs!824364 m!5199025))

(declare-fun m!5199027 () Bool)

(assert (=> bs!824364 m!5199027))

(assert (=> b!4479825 d!1371282))

(declare-fun b!4480178 () Bool)

(assert (=> b!4480178 false))

(declare-fun lt!1666839 () Unit!89579)

(declare-fun lt!1666838 () Unit!89579)

(assert (=> b!4480178 (= lt!1666839 lt!1666838)))

(assert (=> b!4480178 (containsKey!1534 (toList!4111 (extractMap!1108 lt!1666461)) key!3287)))

(assert (=> b!4480178 (= lt!1666838 (lemmaInGetKeysListThenContainsKey!391 (toList!4111 (extractMap!1108 lt!1666461)) key!3287))))

(declare-fun e!2790293 () Unit!89579)

(declare-fun Unit!89621 () Unit!89579)

(assert (=> b!4480178 (= e!2790293 Unit!89621)))

(declare-fun b!4480179 () Bool)

(declare-fun e!2790291 () Bool)

(declare-fun e!2790289 () Bool)

(assert (=> b!4480179 (= e!2790291 e!2790289)))

(declare-fun res!1859933 () Bool)

(assert (=> b!4480179 (=> (not res!1859933) (not e!2790289))))

(assert (=> b!4480179 (= res!1859933 (isDefined!8248 (getValueByKey!947 (toList!4111 (extractMap!1108 lt!1666461)) key!3287)))))

(declare-fun b!4480181 () Bool)

(declare-fun e!2790292 () Unit!89579)

(assert (=> b!4480181 (= e!2790292 e!2790293)))

(declare-fun c!763179 () Bool)

(declare-fun call!312005 () Bool)

(assert (=> b!4480181 (= c!763179 call!312005)))

(declare-fun b!4480182 () Bool)

(declare-fun e!2790290 () List!50484)

(assert (=> b!4480182 (= e!2790290 (keys!17409 (extractMap!1108 lt!1666461)))))

(declare-fun b!4480183 () Bool)

(declare-fun lt!1666840 () Unit!89579)

(assert (=> b!4480183 (= e!2790292 lt!1666840)))

(declare-fun lt!1666841 () Unit!89579)

(assert (=> b!4480183 (= lt!1666841 (lemmaContainsKeyImpliesGetValueByKeyDefined!851 (toList!4111 (extractMap!1108 lt!1666461)) key!3287))))

(assert (=> b!4480183 (isDefined!8248 (getValueByKey!947 (toList!4111 (extractMap!1108 lt!1666461)) key!3287))))

(declare-fun lt!1666836 () Unit!89579)

(assert (=> b!4480183 (= lt!1666836 lt!1666841)))

(assert (=> b!4480183 (= lt!1666840 (lemmaInListThenGetKeysListContains!388 (toList!4111 (extractMap!1108 lt!1666461)) key!3287))))

(assert (=> b!4480183 call!312005))

(declare-fun b!4480184 () Bool)

(assert (=> b!4480184 (= e!2790290 (getKeysList!392 (toList!4111 (extractMap!1108 lt!1666461))))))

(declare-fun b!4480185 () Bool)

(declare-fun Unit!89622 () Unit!89579)

(assert (=> b!4480185 (= e!2790293 Unit!89622)))

(declare-fun b!4480180 () Bool)

(declare-fun e!2790288 () Bool)

(assert (=> b!4480180 (= e!2790288 (not (contains!12946 (keys!17409 (extractMap!1108 lt!1666461)) key!3287)))))

(declare-fun d!1371284 () Bool)

(assert (=> d!1371284 e!2790291))

(declare-fun res!1859934 () Bool)

(assert (=> d!1371284 (=> res!1859934 e!2790291)))

(assert (=> d!1371284 (= res!1859934 e!2790288)))

(declare-fun res!1859932 () Bool)

(assert (=> d!1371284 (=> (not res!1859932) (not e!2790288))))

(declare-fun lt!1666835 () Bool)

(assert (=> d!1371284 (= res!1859932 (not lt!1666835))))

(declare-fun lt!1666837 () Bool)

(assert (=> d!1371284 (= lt!1666835 lt!1666837)))

(declare-fun lt!1666842 () Unit!89579)

(assert (=> d!1371284 (= lt!1666842 e!2790292)))

(declare-fun c!763177 () Bool)

(assert (=> d!1371284 (= c!763177 lt!1666837)))

(assert (=> d!1371284 (= lt!1666837 (containsKey!1534 (toList!4111 (extractMap!1108 lt!1666461)) key!3287))))

(assert (=> d!1371284 (= (contains!12945 (extractMap!1108 lt!1666461) key!3287) lt!1666835)))

(declare-fun b!4480186 () Bool)

(assert (=> b!4480186 (= e!2790289 (contains!12946 (keys!17409 (extractMap!1108 lt!1666461)) key!3287))))

(declare-fun bm!312000 () Bool)

(assert (=> bm!312000 (= call!312005 (contains!12946 e!2790290 key!3287))))

(declare-fun c!763178 () Bool)

(assert (=> bm!312000 (= c!763178 c!763177)))

(assert (= (and d!1371284 c!763177) b!4480183))

(assert (= (and d!1371284 (not c!763177)) b!4480181))

(assert (= (and b!4480181 c!763179) b!4480178))

(assert (= (and b!4480181 (not c!763179)) b!4480185))

(assert (= (or b!4480183 b!4480181) bm!312000))

(assert (= (and bm!312000 c!763178) b!4480184))

(assert (= (and bm!312000 (not c!763178)) b!4480182))

(assert (= (and d!1371284 res!1859932) b!4480180))

(assert (= (and d!1371284 (not res!1859934)) b!4480179))

(assert (= (and b!4480179 res!1859933) b!4480186))

(assert (=> b!4480182 m!5198289))

(declare-fun m!5199029 () Bool)

(assert (=> b!4480182 m!5199029))

(assert (=> b!4480180 m!5198289))

(assert (=> b!4480180 m!5199029))

(assert (=> b!4480180 m!5199029))

(declare-fun m!5199031 () Bool)

(assert (=> b!4480180 m!5199031))

(assert (=> b!4480186 m!5198289))

(assert (=> b!4480186 m!5199029))

(assert (=> b!4480186 m!5199029))

(assert (=> b!4480186 m!5199031))

(declare-fun m!5199033 () Bool)

(assert (=> b!4480183 m!5199033))

(declare-fun m!5199035 () Bool)

(assert (=> b!4480183 m!5199035))

(assert (=> b!4480183 m!5199035))

(declare-fun m!5199037 () Bool)

(assert (=> b!4480183 m!5199037))

(declare-fun m!5199039 () Bool)

(assert (=> b!4480183 m!5199039))

(declare-fun m!5199041 () Bool)

(assert (=> b!4480178 m!5199041))

(declare-fun m!5199043 () Bool)

(assert (=> b!4480178 m!5199043))

(declare-fun m!5199045 () Bool)

(assert (=> bm!312000 m!5199045))

(assert (=> b!4480179 m!5199035))

(assert (=> b!4480179 m!5199035))

(assert (=> b!4480179 m!5199037))

(declare-fun m!5199047 () Bool)

(assert (=> b!4480184 m!5199047))

(assert (=> d!1371284 m!5199041))

(assert (=> b!4479825 d!1371284))

(declare-fun b!4480191 () Bool)

(declare-fun e!2790296 () Bool)

(declare-fun tp!1336611 () Bool)

(declare-fun tp!1336612 () Bool)

(assert (=> b!4480191 (= e!2790296 (and tp!1336611 tp!1336612))))

(assert (=> b!4479834 (= tp!1336596 e!2790296)))

(assert (= (and b!4479834 ((_ is Cons!50359) (toList!4112 lm!1477))) b!4480191))

(declare-fun b!4480196 () Bool)

(declare-fun tp!1336615 () Bool)

(declare-fun e!2790299 () Bool)

(assert (=> b!4480196 (= e!2790299 (and tp_is_empty!27485 tp_is_empty!27487 tp!1336615))))

(assert (=> b!4479812 (= tp!1336597 e!2790299)))

(assert (= (and b!4479812 ((_ is Cons!50358) (t!357436 newBucket!178))) b!4480196))

(declare-fun b_lambda!150277 () Bool)

(assert (= b_lambda!150275 (or start!440532 b_lambda!150277)))

(declare-fun bs!824365 () Bool)

(declare-fun d!1371286 () Bool)

(assert (= bs!824365 (and d!1371286 start!440532)))

(assert (=> bs!824365 (= (dynLambda!21042 lambda!165041 (h!56140 (toList!4112 lm!1477))) (noDuplicateKeys!1052 (_2!28616 (h!56140 (toList!4112 lm!1477)))))))

(assert (=> bs!824365 m!5198303))

(assert (=> b!4480161 d!1371286))

(declare-fun b_lambda!150279 () Bool)

(assert (= b_lambda!150269 (or start!440532 b_lambda!150279)))

(declare-fun bs!824366 () Bool)

(declare-fun d!1371288 () Bool)

(assert (= bs!824366 (and d!1371288 start!440532)))

(assert (=> bs!824366 (= (dynLambda!21042 lambda!165041 lt!1666453) (noDuplicateKeys!1052 (_2!28616 lt!1666453)))))

(declare-fun m!5199049 () Bool)

(assert (=> bs!824366 m!5199049))

(assert (=> d!1371146 d!1371288))

(check-sat (not d!1371154) (not d!1371144) (not b!4479929) (not bm!311997) (not b!4480183) (not d!1371202) (not b!4480012) (not d!1371094) (not b!4479939) (not b!4480168) (not d!1371164) (not d!1371206) (not d!1371168) (not b!4479915) (not b!4479948) (not b!4480034) (not d!1371150) (not b!4480061) (not d!1371284) (not b!4479976) (not b!4479941) (not b!4479862) tp_is_empty!27487 (not d!1371184) (not b!4479923) (not d!1371124) (not b!4480005) (not b!4480000) (not b!4480153) (not d!1371274) (not b!4479962) (not b!4479999) (not b!4480151) (not b!4479951) (not b!4480010) (not b!4480052) (not b!4479921) (not d!1371146) (not b!4480169) (not d!1371152) (not b!4479917) (not d!1371126) (not b_lambda!150279) (not b!4480002) (not d!1371112) (not b!4480184) (not b!4479964) (not b!4480171) (not b!4479938) (not d!1371196) (not d!1371162) (not b!4480186) (not b!4480191) (not b!4480182) (not d!1371176) (not b!4480176) (not b!4480173) (not b!4479940) (not d!1371166) (not b!4480003) (not bm!311975) (not d!1371266) (not d!1371158) (not d!1371282) (not b!4480150) (not b!4479997) (not b!4480006) (not d!1371268) (not b!4480050) (not d!1371170) (not d!1371198) (not b_lambda!150277) (not b!4480178) (not bm!311985) (not b!4480175) (not d!1371108) (not b!4479947) (not d!1371270) (not b!4480196) (not b!4480174) (not d!1371192) (not b!4479919) (not b!4480162) (not d!1371148) (not bm!311998) (not d!1371280) (not b!4480001) (not d!1371272) (not bm!311999) (not b!4479928) (not bs!824366) (not b!4479936) (not b!4479865) (not d!1371204) (not b!4480152) (not b!4479986) (not bm!312000) (not b!4480049) tp_is_empty!27485 (not b!4480007) (not d!1371174) (not d!1371200) (not d!1371142) (not d!1371262) (not d!1371156) (not b!4480009) (not b!4479920) (not b!4480179) (not bs!824365) (not d!1371278) (not d!1371182) (not b!4479916) (not b!4480180))
(check-sat)
