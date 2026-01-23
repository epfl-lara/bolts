; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432284 () Bool)

(assert start!432284)

(declare-fun b!4428537 () Bool)

(declare-fun e!2757465 () Bool)

(declare-fun tp!1333357 () Bool)

(assert (=> b!4428537 (= e!2757465 tp!1333357)))

(declare-fun b!4428538 () Bool)

(declare-fun res!1831348 () Bool)

(declare-fun e!2757472 () Bool)

(assert (=> b!4428538 (=> (not res!1831348) (not e!2757472))))

(declare-datatypes ((K!10980 0))(
  ( (K!10981 (val!17055 Int)) )
))
(declare-datatypes ((V!11226 0))(
  ( (V!11227 (val!17056 Int)) )
))
(declare-datatypes ((tuple2!49430 0))(
  ( (tuple2!49431 (_1!28009 K!10980) (_2!28009 V!11226)) )
))
(declare-datatypes ((List!49741 0))(
  ( (Nil!49617) (Cons!49617 (h!55310 tuple2!49430) (t!356679 List!49741)) )
))
(declare-fun newBucket!194 () List!49741)

(declare-datatypes ((Hashable!5157 0))(
  ( (HashableExt!5156 (__x!30860 Int)) )
))
(declare-fun hashF!1220 () Hashable!5157)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!723 (List!49741 (_ BitVec 64) Hashable!5157) Bool)

(assert (=> b!4428538 (= res!1831348 (allKeysSameHash!723 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4428539 () Bool)

(declare-fun e!2757475 () Bool)

(declare-fun e!2757473 () Bool)

(assert (=> b!4428539 (= e!2757475 e!2757473)))

(declare-fun res!1831339 () Bool)

(assert (=> b!4428539 (=> res!1831339 e!2757473)))

(declare-datatypes ((tuple2!49432 0))(
  ( (tuple2!49433 (_1!28010 (_ BitVec 64)) (_2!28010 List!49741)) )
))
(declare-datatypes ((List!49742 0))(
  ( (Nil!49618) (Cons!49618 (h!55311 tuple2!49432) (t!356680 List!49742)) )
))
(declare-datatypes ((ListLongMap!2163 0))(
  ( (ListLongMap!2164 (toList!3513 List!49742)) )
))
(declare-fun lm!1616 () ListLongMap!2163)

(declare-fun key!3717 () K!10980)

(declare-fun containsKey!1142 (List!49741 K!10980) Bool)

(assert (=> b!4428539 (= res!1831339 (containsKey!1142 (_2!28010 (h!55311 (toList!3513 lm!1616))) key!3717))))

(declare-fun apply!11615 (ListLongMap!2163 (_ BitVec 64)) List!49741)

(assert (=> b!4428539 (not (containsKey!1142 (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616)))) key!3717))))

(declare-datatypes ((Unit!82465 0))(
  ( (Unit!82466) )
))
(declare-fun lt!1627755 () Unit!82465)

(declare-fun lemmaNotSameHashThenCannotContainKey!142 (ListLongMap!2163 K!10980 (_ BitVec 64) Hashable!5157) Unit!82465)

(assert (=> b!4428539 (= lt!1627755 (lemmaNotSameHashThenCannotContainKey!142 lm!1616 key!3717 (_1!28010 (h!55311 (toList!3513 lm!1616))) hashF!1220))))

(declare-fun b!4428540 () Bool)

(declare-fun res!1831341 () Bool)

(assert (=> b!4428540 (=> (not res!1831341) (not e!2757472))))

(declare-fun allKeysSameHashInMap!869 (ListLongMap!2163 Hashable!5157) Bool)

(assert (=> b!4428540 (= res!1831341 (allKeysSameHashInMap!869 lm!1616 hashF!1220))))

(declare-fun b!4428542 () Bool)

(declare-fun e!2757474 () Bool)

(assert (=> b!4428542 (= e!2757472 e!2757474)))

(declare-fun res!1831344 () Bool)

(assert (=> b!4428542 (=> (not res!1831344) (not e!2757474))))

(declare-datatypes ((ListMap!2757 0))(
  ( (ListMap!2758 (toList!3514 List!49741)) )
))
(declare-fun lt!1627770 () ListMap!2757)

(declare-fun contains!12134 (ListMap!2757 K!10980) Bool)

(assert (=> b!4428542 (= res!1831344 (not (contains!12134 lt!1627770 key!3717)))))

(declare-fun extractMap!824 (List!49742) ListMap!2757)

(assert (=> b!4428542 (= lt!1627770 (extractMap!824 (toList!3513 lm!1616)))))

(declare-fun b!4428543 () Bool)

(declare-fun e!2757469 () Bool)

(declare-fun e!2757471 () Bool)

(assert (=> b!4428543 (= e!2757469 (not e!2757471))))

(declare-fun res!1831338 () Bool)

(assert (=> b!4428543 (=> res!1831338 e!2757471)))

(declare-fun lt!1627771 () ListLongMap!2163)

(declare-fun lambda!154646 () Int)

(declare-fun forall!9586 (List!49742 Int) Bool)

(assert (=> b!4428543 (= res!1831338 (not (forall!9586 (toList!3513 lt!1627771) lambda!154646)))))

(assert (=> b!4428543 (forall!9586 (toList!3513 lt!1627771) lambda!154646)))

(declare-fun lt!1627762 () tuple2!49432)

(declare-fun +!1110 (ListLongMap!2163 tuple2!49432) ListLongMap!2163)

(assert (=> b!4428543 (= lt!1627771 (+!1110 lm!1616 lt!1627762))))

(assert (=> b!4428543 (= lt!1627762 (tuple2!49433 hash!366 newBucket!194))))

(declare-fun lt!1627769 () Unit!82465)

(declare-fun addValidProp!407 (ListLongMap!2163 Int (_ BitVec 64) List!49741) Unit!82465)

(assert (=> b!4428543 (= lt!1627769 (addValidProp!407 lm!1616 lambda!154646 hash!366 newBucket!194))))

(declare-fun e!2757470 () Bool)

(declare-fun newValue!93 () V!11226)

(declare-fun lt!1627763 () Bool)

(declare-fun b!4428544 () Bool)

(assert (=> b!4428544 (= e!2757470 (and (not lt!1627763) (= newBucket!194 (Cons!49617 (tuple2!49431 key!3717 newValue!93) Nil!49617))))))

(declare-fun b!4428545 () Bool)

(declare-fun res!1831340 () Bool)

(assert (=> b!4428545 (=> (not res!1831340) (not e!2757469))))

(declare-fun noDuplicateKeys!763 (List!49741) Bool)

(assert (=> b!4428545 (= res!1831340 (noDuplicateKeys!763 newBucket!194))))

(declare-fun b!4428546 () Bool)

(declare-fun res!1831350 () Bool)

(assert (=> b!4428546 (=> (not res!1831350) (not e!2757469))))

(assert (=> b!4428546 (= res!1831350 (forall!9586 (toList!3513 lm!1616) lambda!154646))))

(declare-fun tp_is_empty!26299 () Bool)

(declare-fun tp!1333358 () Bool)

(declare-fun tp_is_empty!26297 () Bool)

(declare-fun e!2757468 () Bool)

(declare-fun b!4428547 () Bool)

(assert (=> b!4428547 (= e!2757468 (and tp_is_empty!26299 tp_is_empty!26297 tp!1333358))))

(declare-fun b!4428548 () Bool)

(declare-fun res!1831345 () Bool)

(assert (=> b!4428548 (=> (not res!1831345) (not e!2757472))))

(declare-fun hash!2164 (Hashable!5157 K!10980) (_ BitVec 64))

(assert (=> b!4428548 (= res!1831345 (= (hash!2164 hashF!1220 key!3717) hash!366))))

(declare-fun b!4428541 () Bool)

(assert (=> b!4428541 (= e!2757473 (noDuplicateKeys!763 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(declare-fun lt!1627767 () tuple2!49430)

(declare-fun lt!1627765 () ListMap!2757)

(declare-fun eq!421 (ListMap!2757 ListMap!2757) Bool)

(declare-fun +!1111 (ListMap!2757 tuple2!49430) ListMap!2757)

(assert (=> b!4428541 (eq!421 (+!1111 lt!1627770 lt!1627767) lt!1627765)))

(declare-fun lt!1627766 () Unit!82465)

(declare-fun lt!1627760 () ListMap!2757)

(declare-fun lemmaAddToEqMapsPreservesEq!32 (ListMap!2757 ListMap!2757 K!10980 V!11226) Unit!82465)

(assert (=> b!4428541 (= lt!1627766 (lemmaAddToEqMapsPreservesEq!32 lt!1627770 lt!1627760 key!3717 newValue!93))))

(declare-fun lt!1627757 () ListMap!2757)

(assert (=> b!4428541 (eq!421 lt!1627757 lt!1627765)))

(assert (=> b!4428541 (= lt!1627765 (+!1111 lt!1627760 lt!1627767))))

(declare-fun lt!1627754 () ListMap!2757)

(declare-fun addToMapMapFromBucket!400 (List!49741 ListMap!2757) ListMap!2757)

(assert (=> b!4428541 (= lt!1627757 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) lt!1627754))))

(declare-fun lt!1627764 () Unit!82465)

(declare-fun lt!1627753 () ListMap!2757)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!192 (ListMap!2757 K!10980 V!11226 List!49741) Unit!82465)

(assert (=> b!4428541 (= lt!1627764 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!192 lt!1627753 key!3717 newValue!93 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(declare-fun res!1831343 () Bool)

(assert (=> start!432284 (=> (not res!1831343) (not e!2757472))))

(assert (=> start!432284 (= res!1831343 (forall!9586 (toList!3513 lm!1616) lambda!154646))))

(assert (=> start!432284 e!2757472))

(assert (=> start!432284 tp_is_empty!26297))

(assert (=> start!432284 tp_is_empty!26299))

(assert (=> start!432284 e!2757468))

(declare-fun inv!65166 (ListLongMap!2163) Bool)

(assert (=> start!432284 (and (inv!65166 lm!1616) e!2757465)))

(assert (=> start!432284 true))

(declare-fun b!4428549 () Bool)

(declare-fun e!2757476 () Bool)

(assert (=> b!4428549 (= e!2757476 e!2757475)))

(declare-fun res!1831351 () Bool)

(assert (=> b!4428549 (=> res!1831351 e!2757475)))

(assert (=> b!4428549 (= res!1831351 (not (eq!421 lt!1627770 lt!1627760)))))

(assert (=> b!4428549 (= lt!1627760 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) lt!1627753))))

(declare-fun b!4428550 () Bool)

(assert (=> b!4428550 (= e!2757474 e!2757469)))

(declare-fun res!1831347 () Bool)

(assert (=> b!4428550 (=> (not res!1831347) (not e!2757469))))

(assert (=> b!4428550 (= res!1831347 e!2757470)))

(declare-fun res!1831342 () Bool)

(assert (=> b!4428550 (=> res!1831342 e!2757470)))

(declare-fun e!2757466 () Bool)

(assert (=> b!4428550 (= res!1831342 e!2757466)))

(declare-fun res!1831337 () Bool)

(assert (=> b!4428550 (=> (not res!1831337) (not e!2757466))))

(assert (=> b!4428550 (= res!1831337 lt!1627763)))

(declare-fun contains!12135 (ListLongMap!2163 (_ BitVec 64)) Bool)

(assert (=> b!4428550 (= lt!1627763 (contains!12135 lm!1616 hash!366))))

(declare-fun b!4428551 () Bool)

(assert (=> b!4428551 (= e!2757471 e!2757476)))

(declare-fun res!1831349 () Bool)

(assert (=> b!4428551 (=> res!1831349 e!2757476)))

(declare-fun head!9238 (ListLongMap!2163) tuple2!49432)

(assert (=> b!4428551 (= res!1831349 (= (head!9238 lm!1616) lt!1627762))))

(declare-fun lt!1627758 () ListMap!2757)

(assert (=> b!4428551 (eq!421 lt!1627758 lt!1627754)))

(assert (=> b!4428551 (= lt!1627754 (+!1111 lt!1627753 lt!1627767))))

(assert (=> b!4428551 (= lt!1627767 (tuple2!49431 key!3717 newValue!93))))

(declare-fun lt!1627756 () ListLongMap!2163)

(assert (=> b!4428551 (= lt!1627753 (extractMap!824 (toList!3513 lt!1627756)))))

(assert (=> b!4428551 (= lt!1627758 (extractMap!824 (toList!3513 (+!1110 lt!1627756 lt!1627762))))))

(declare-fun lt!1627759 () Unit!82465)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!137 (ListLongMap!2163 (_ BitVec 64) List!49741 K!10980 V!11226 Hashable!5157) Unit!82465)

(assert (=> b!4428551 (= lt!1627759 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!137 lt!1627756 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7298 (ListLongMap!2163) ListLongMap!2163)

(assert (=> b!4428551 (= lt!1627756 (tail!7298 lm!1616))))

(declare-fun lt!1627768 () Unit!82465)

(declare-fun e!2757467 () Unit!82465)

(assert (=> b!4428551 (= lt!1627768 e!2757467)))

(declare-fun c!753877 () Bool)

(declare-fun tail!7299 (List!49742) List!49742)

(assert (=> b!4428551 (= c!753877 (contains!12134 (extractMap!824 (tail!7299 (toList!3513 lm!1616))) key!3717))))

(declare-fun b!4428552 () Bool)

(assert (=> b!4428552 (= e!2757466 (= newBucket!194 (Cons!49617 (tuple2!49431 key!3717 newValue!93) (apply!11615 lm!1616 hash!366))))))

(declare-fun b!4428553 () Bool)

(declare-fun Unit!82467 () Unit!82465)

(assert (=> b!4428553 (= e!2757467 Unit!82467)))

(declare-fun lt!1627761 () Unit!82465)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!50 (ListLongMap!2163 K!10980 Hashable!5157) Unit!82465)

(assert (=> b!4428553 (= lt!1627761 (lemmaExtractTailMapContainsThenExtractMapDoes!50 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4428553 false))

(declare-fun b!4428554 () Bool)

(declare-fun res!1831346 () Bool)

(assert (=> b!4428554 (=> res!1831346 e!2757471)))

(get-info :version)

(assert (=> b!4428554 (= res!1831346 (or (and ((_ is Cons!49618) (toList!3513 lm!1616)) (= (_1!28010 (h!55311 (toList!3513 lm!1616))) hash!366)) (not ((_ is Cons!49618) (toList!3513 lm!1616))) (= (_1!28010 (h!55311 (toList!3513 lm!1616))) hash!366)))))

(declare-fun b!4428555 () Bool)

(declare-fun Unit!82468 () Unit!82465)

(assert (=> b!4428555 (= e!2757467 Unit!82468)))

(assert (= (and start!432284 res!1831343) b!4428540))

(assert (= (and b!4428540 res!1831341) b!4428548))

(assert (= (and b!4428548 res!1831345) b!4428538))

(assert (= (and b!4428538 res!1831348) b!4428542))

(assert (= (and b!4428542 res!1831344) b!4428550))

(assert (= (and b!4428550 res!1831337) b!4428552))

(assert (= (and b!4428550 (not res!1831342)) b!4428544))

(assert (= (and b!4428550 res!1831347) b!4428545))

(assert (= (and b!4428545 res!1831340) b!4428546))

(assert (= (and b!4428546 res!1831350) b!4428543))

(assert (= (and b!4428543 (not res!1831338)) b!4428554))

(assert (= (and b!4428554 (not res!1831346)) b!4428551))

(assert (= (and b!4428551 c!753877) b!4428553))

(assert (= (and b!4428551 (not c!753877)) b!4428555))

(assert (= (and b!4428551 (not res!1831349)) b!4428549))

(assert (= (and b!4428549 (not res!1831351)) b!4428539))

(assert (= (and b!4428539 (not res!1831339)) b!4428541))

(assert (= (and start!432284 ((_ is Cons!49617) newBucket!194)) b!4428547))

(assert (= start!432284 b!4428537))

(declare-fun m!5111917 () Bool)

(assert (=> b!4428550 m!5111917))

(declare-fun m!5111919 () Bool)

(assert (=> b!4428541 m!5111919))

(declare-fun m!5111921 () Bool)

(assert (=> b!4428541 m!5111921))

(declare-fun m!5111923 () Bool)

(assert (=> b!4428541 m!5111923))

(declare-fun m!5111925 () Bool)

(assert (=> b!4428541 m!5111925))

(declare-fun m!5111927 () Bool)

(assert (=> b!4428541 m!5111927))

(declare-fun m!5111929 () Bool)

(assert (=> b!4428541 m!5111929))

(assert (=> b!4428541 m!5111927))

(declare-fun m!5111931 () Bool)

(assert (=> b!4428541 m!5111931))

(declare-fun m!5111933 () Bool)

(assert (=> b!4428541 m!5111933))

(declare-fun m!5111935 () Bool)

(assert (=> b!4428552 m!5111935))

(declare-fun m!5111937 () Bool)

(assert (=> b!4428538 m!5111937))

(declare-fun m!5111939 () Bool)

(assert (=> b!4428543 m!5111939))

(assert (=> b!4428543 m!5111939))

(declare-fun m!5111941 () Bool)

(assert (=> b!4428543 m!5111941))

(declare-fun m!5111943 () Bool)

(assert (=> b!4428543 m!5111943))

(declare-fun m!5111945 () Bool)

(assert (=> b!4428545 m!5111945))

(declare-fun m!5111947 () Bool)

(assert (=> b!4428553 m!5111947))

(declare-fun m!5111949 () Bool)

(assert (=> b!4428539 m!5111949))

(declare-fun m!5111951 () Bool)

(assert (=> b!4428539 m!5111951))

(assert (=> b!4428539 m!5111951))

(declare-fun m!5111953 () Bool)

(assert (=> b!4428539 m!5111953))

(declare-fun m!5111955 () Bool)

(assert (=> b!4428539 m!5111955))

(declare-fun m!5111957 () Bool)

(assert (=> b!4428548 m!5111957))

(declare-fun m!5111959 () Bool)

(assert (=> start!432284 m!5111959))

(declare-fun m!5111961 () Bool)

(assert (=> start!432284 m!5111961))

(declare-fun m!5111963 () Bool)

(assert (=> b!4428549 m!5111963))

(declare-fun m!5111965 () Bool)

(assert (=> b!4428549 m!5111965))

(declare-fun m!5111967 () Bool)

(assert (=> b!4428551 m!5111967))

(declare-fun m!5111969 () Bool)

(assert (=> b!4428551 m!5111969))

(declare-fun m!5111971 () Bool)

(assert (=> b!4428551 m!5111971))

(declare-fun m!5111973 () Bool)

(assert (=> b!4428551 m!5111973))

(assert (=> b!4428551 m!5111967))

(declare-fun m!5111975 () Bool)

(assert (=> b!4428551 m!5111975))

(declare-fun m!5111977 () Bool)

(assert (=> b!4428551 m!5111977))

(declare-fun m!5111979 () Bool)

(assert (=> b!4428551 m!5111979))

(declare-fun m!5111981 () Bool)

(assert (=> b!4428551 m!5111981))

(declare-fun m!5111983 () Bool)

(assert (=> b!4428551 m!5111983))

(assert (=> b!4428551 m!5111969))

(declare-fun m!5111985 () Bool)

(assert (=> b!4428551 m!5111985))

(declare-fun m!5111987 () Bool)

(assert (=> b!4428551 m!5111987))

(declare-fun m!5111989 () Bool)

(assert (=> b!4428540 m!5111989))

(declare-fun m!5111991 () Bool)

(assert (=> b!4428542 m!5111991))

(declare-fun m!5111993 () Bool)

(assert (=> b!4428542 m!5111993))

(assert (=> b!4428546 m!5111959))

(check-sat (not b!4428549) (not b!4428543) (not b!4428538) (not start!432284) tp_is_empty!26299 (not b!4428546) tp_is_empty!26297 (not b!4428539) (not b!4428552) (not b!4428542) (not b!4428541) (not b!4428551) (not b!4428550) (not b!4428553) (not b!4428548) (not b!4428547) (not b!4428545) (not b!4428540) (not b!4428537))
(check-sat)
(get-model)

(declare-fun bs!759382 () Bool)

(declare-fun d!1342982 () Bool)

(assert (= bs!759382 (and d!1342982 start!432284)))

(declare-fun lambda!154649 () Int)

(assert (=> bs!759382 (not (= lambda!154649 lambda!154646))))

(assert (=> d!1342982 true))

(assert (=> d!1342982 (= (allKeysSameHashInMap!869 lm!1616 hashF!1220) (forall!9586 (toList!3513 lm!1616) lambda!154649))))

(declare-fun bs!759383 () Bool)

(assert (= bs!759383 d!1342982))

(declare-fun m!5112007 () Bool)

(assert (=> bs!759383 m!5112007))

(assert (=> b!4428540 d!1342982))

(declare-fun d!1342986 () Bool)

(declare-fun e!2757479 () Bool)

(assert (=> d!1342986 e!2757479))

(declare-fun res!1831356 () Bool)

(assert (=> d!1342986 (=> (not res!1831356) (not e!2757479))))

(declare-fun lt!1627783 () ListMap!2757)

(assert (=> d!1342986 (= res!1831356 (contains!12134 lt!1627783 (_1!28009 lt!1627767)))))

(declare-fun lt!1627786 () List!49741)

(assert (=> d!1342986 (= lt!1627783 (ListMap!2758 lt!1627786))))

(declare-fun lt!1627784 () Unit!82465)

(declare-fun lt!1627785 () Unit!82465)

(assert (=> d!1342986 (= lt!1627784 lt!1627785)))

(declare-datatypes ((Option!10741 0))(
  ( (None!10740) (Some!10740 (v!43934 V!11226)) )
))
(declare-fun getValueByKey!727 (List!49741 K!10980) Option!10741)

(assert (=> d!1342986 (= (getValueByKey!727 lt!1627786 (_1!28009 lt!1627767)) (Some!10740 (_2!28009 lt!1627767)))))

(declare-fun lemmaContainsTupThenGetReturnValue!462 (List!49741 K!10980 V!11226) Unit!82465)

(assert (=> d!1342986 (= lt!1627785 (lemmaContainsTupThenGetReturnValue!462 lt!1627786 (_1!28009 lt!1627767) (_2!28009 lt!1627767)))))

(declare-fun insertNoDuplicatedKeys!203 (List!49741 K!10980 V!11226) List!49741)

(assert (=> d!1342986 (= lt!1627786 (insertNoDuplicatedKeys!203 (toList!3514 lt!1627753) (_1!28009 lt!1627767) (_2!28009 lt!1627767)))))

(assert (=> d!1342986 (= (+!1111 lt!1627753 lt!1627767) lt!1627783)))

(declare-fun b!4428562 () Bool)

(declare-fun res!1831357 () Bool)

(assert (=> b!4428562 (=> (not res!1831357) (not e!2757479))))

(assert (=> b!4428562 (= res!1831357 (= (getValueByKey!727 (toList!3514 lt!1627783) (_1!28009 lt!1627767)) (Some!10740 (_2!28009 lt!1627767))))))

(declare-fun b!4428563 () Bool)

(declare-fun contains!12139 (List!49741 tuple2!49430) Bool)

(assert (=> b!4428563 (= e!2757479 (contains!12139 (toList!3514 lt!1627783) lt!1627767))))

(assert (= (and d!1342986 res!1831356) b!4428562))

(assert (= (and b!4428562 res!1831357) b!4428563))

(declare-fun m!5112009 () Bool)

(assert (=> d!1342986 m!5112009))

(declare-fun m!5112011 () Bool)

(assert (=> d!1342986 m!5112011))

(declare-fun m!5112013 () Bool)

(assert (=> d!1342986 m!5112013))

(declare-fun m!5112015 () Bool)

(assert (=> d!1342986 m!5112015))

(declare-fun m!5112017 () Bool)

(assert (=> b!4428562 m!5112017))

(declare-fun m!5112019 () Bool)

(assert (=> b!4428563 m!5112019))

(assert (=> b!4428551 d!1342986))

(declare-fun bs!759384 () Bool)

(declare-fun d!1342988 () Bool)

(assert (= bs!759384 (and d!1342988 start!432284)))

(declare-fun lambda!154652 () Int)

(assert (=> bs!759384 (= lambda!154652 lambda!154646)))

(declare-fun bs!759385 () Bool)

(assert (= bs!759385 (and d!1342988 d!1342982)))

(assert (=> bs!759385 (not (= lambda!154652 lambda!154649))))

(declare-fun lt!1627789 () ListMap!2757)

(declare-fun invariantList!813 (List!49741) Bool)

(assert (=> d!1342988 (invariantList!813 (toList!3514 lt!1627789))))

(declare-fun e!2757482 () ListMap!2757)

(assert (=> d!1342988 (= lt!1627789 e!2757482)))

(declare-fun c!753880 () Bool)

(assert (=> d!1342988 (= c!753880 ((_ is Cons!49618) (toList!3513 lt!1627756)))))

(assert (=> d!1342988 (forall!9586 (toList!3513 lt!1627756) lambda!154652)))

(assert (=> d!1342988 (= (extractMap!824 (toList!3513 lt!1627756)) lt!1627789)))

(declare-fun b!4428568 () Bool)

(assert (=> b!4428568 (= e!2757482 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lt!1627756))) (extractMap!824 (t!356680 (toList!3513 lt!1627756)))))))

(declare-fun b!4428569 () Bool)

(assert (=> b!4428569 (= e!2757482 (ListMap!2758 Nil!49617))))

(assert (= (and d!1342988 c!753880) b!4428568))

(assert (= (and d!1342988 (not c!753880)) b!4428569))

(declare-fun m!5112021 () Bool)

(assert (=> d!1342988 m!5112021))

(declare-fun m!5112023 () Bool)

(assert (=> d!1342988 m!5112023))

(declare-fun m!5112025 () Bool)

(assert (=> b!4428568 m!5112025))

(assert (=> b!4428568 m!5112025))

(declare-fun m!5112027 () Bool)

(assert (=> b!4428568 m!5112027))

(assert (=> b!4428551 d!1342988))

(declare-fun d!1342990 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7970 (List!49741) (InoxSet tuple2!49430))

(assert (=> d!1342990 (= (eq!421 lt!1627758 lt!1627754) (= (content!7970 (toList!3514 lt!1627758)) (content!7970 (toList!3514 lt!1627754))))))

(declare-fun bs!759386 () Bool)

(assert (= bs!759386 d!1342990))

(declare-fun m!5112029 () Bool)

(assert (=> bs!759386 m!5112029))

(declare-fun m!5112031 () Bool)

(assert (=> bs!759386 m!5112031))

(assert (=> b!4428551 d!1342990))

(declare-fun d!1342992 () Bool)

(declare-fun head!9239 (List!49742) tuple2!49432)

(assert (=> d!1342992 (= (head!9238 lm!1616) (head!9239 (toList!3513 lm!1616)))))

(declare-fun bs!759387 () Bool)

(assert (= bs!759387 d!1342992))

(declare-fun m!5112033 () Bool)

(assert (=> bs!759387 m!5112033))

(assert (=> b!4428551 d!1342992))

(declare-fun d!1342994 () Bool)

(assert (=> d!1342994 (= (tail!7298 lm!1616) (ListLongMap!2164 (tail!7299 (toList!3513 lm!1616))))))

(declare-fun bs!759388 () Bool)

(assert (= bs!759388 d!1342994))

(assert (=> bs!759388 m!5111967))

(assert (=> b!4428551 d!1342994))

(declare-fun bs!759389 () Bool)

(declare-fun d!1342996 () Bool)

(assert (= bs!759389 (and d!1342996 start!432284)))

(declare-fun lambda!154653 () Int)

(assert (=> bs!759389 (= lambda!154653 lambda!154646)))

(declare-fun bs!759390 () Bool)

(assert (= bs!759390 (and d!1342996 d!1342982)))

(assert (=> bs!759390 (not (= lambda!154653 lambda!154649))))

(declare-fun bs!759391 () Bool)

(assert (= bs!759391 (and d!1342996 d!1342988)))

(assert (=> bs!759391 (= lambda!154653 lambda!154652)))

(declare-fun lt!1627790 () ListMap!2757)

(assert (=> d!1342996 (invariantList!813 (toList!3514 lt!1627790))))

(declare-fun e!2757483 () ListMap!2757)

(assert (=> d!1342996 (= lt!1627790 e!2757483)))

(declare-fun c!753881 () Bool)

(assert (=> d!1342996 (= c!753881 ((_ is Cons!49618) (tail!7299 (toList!3513 lm!1616))))))

(assert (=> d!1342996 (forall!9586 (tail!7299 (toList!3513 lm!1616)) lambda!154653)))

(assert (=> d!1342996 (= (extractMap!824 (tail!7299 (toList!3513 lm!1616))) lt!1627790)))

(declare-fun b!4428570 () Bool)

(assert (=> b!4428570 (= e!2757483 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (tail!7299 (toList!3513 lm!1616)))) (extractMap!824 (t!356680 (tail!7299 (toList!3513 lm!1616))))))))

(declare-fun b!4428571 () Bool)

(assert (=> b!4428571 (= e!2757483 (ListMap!2758 Nil!49617))))

(assert (= (and d!1342996 c!753881) b!4428570))

(assert (= (and d!1342996 (not c!753881)) b!4428571))

(declare-fun m!5112035 () Bool)

(assert (=> d!1342996 m!5112035))

(assert (=> d!1342996 m!5111967))

(declare-fun m!5112037 () Bool)

(assert (=> d!1342996 m!5112037))

(declare-fun m!5112039 () Bool)

(assert (=> b!4428570 m!5112039))

(assert (=> b!4428570 m!5112039))

(declare-fun m!5112041 () Bool)

(assert (=> b!4428570 m!5112041))

(assert (=> b!4428551 d!1342996))

(declare-fun d!1342998 () Bool)

(assert (=> d!1342998 (= (tail!7299 (toList!3513 lm!1616)) (t!356680 (toList!3513 lm!1616)))))

(assert (=> b!4428551 d!1342998))

(declare-fun bs!759392 () Bool)

(declare-fun d!1343000 () Bool)

(assert (= bs!759392 (and d!1343000 start!432284)))

(declare-fun lambda!154654 () Int)

(assert (=> bs!759392 (= lambda!154654 lambda!154646)))

(declare-fun bs!759393 () Bool)

(assert (= bs!759393 (and d!1343000 d!1342982)))

(assert (=> bs!759393 (not (= lambda!154654 lambda!154649))))

(declare-fun bs!759394 () Bool)

(assert (= bs!759394 (and d!1343000 d!1342988)))

(assert (=> bs!759394 (= lambda!154654 lambda!154652)))

(declare-fun bs!759395 () Bool)

(assert (= bs!759395 (and d!1343000 d!1342996)))

(assert (=> bs!759395 (= lambda!154654 lambda!154653)))

(declare-fun lt!1627791 () ListMap!2757)

(assert (=> d!1343000 (invariantList!813 (toList!3514 lt!1627791))))

(declare-fun e!2757484 () ListMap!2757)

(assert (=> d!1343000 (= lt!1627791 e!2757484)))

(declare-fun c!753882 () Bool)

(assert (=> d!1343000 (= c!753882 ((_ is Cons!49618) (toList!3513 (+!1110 lt!1627756 lt!1627762))))))

(assert (=> d!1343000 (forall!9586 (toList!3513 (+!1110 lt!1627756 lt!1627762)) lambda!154654)))

(assert (=> d!1343000 (= (extractMap!824 (toList!3513 (+!1110 lt!1627756 lt!1627762))) lt!1627791)))

(declare-fun b!4428572 () Bool)

(assert (=> b!4428572 (= e!2757484 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 (+!1110 lt!1627756 lt!1627762)))) (extractMap!824 (t!356680 (toList!3513 (+!1110 lt!1627756 lt!1627762))))))))

(declare-fun b!4428573 () Bool)

(assert (=> b!4428573 (= e!2757484 (ListMap!2758 Nil!49617))))

(assert (= (and d!1343000 c!753882) b!4428572))

(assert (= (and d!1343000 (not c!753882)) b!4428573))

(declare-fun m!5112043 () Bool)

(assert (=> d!1343000 m!5112043))

(declare-fun m!5112045 () Bool)

(assert (=> d!1343000 m!5112045))

(declare-fun m!5112047 () Bool)

(assert (=> b!4428572 m!5112047))

(assert (=> b!4428572 m!5112047))

(declare-fun m!5112049 () Bool)

(assert (=> b!4428572 m!5112049))

(assert (=> b!4428551 d!1343000))

(declare-fun d!1343002 () Bool)

(declare-fun e!2757517 () Bool)

(assert (=> d!1343002 e!2757517))

(declare-fun res!1831385 () Bool)

(assert (=> d!1343002 (=> res!1831385 e!2757517)))

(declare-fun e!2757515 () Bool)

(assert (=> d!1343002 (= res!1831385 e!2757515)))

(declare-fun res!1831384 () Bool)

(assert (=> d!1343002 (=> (not res!1831384) (not e!2757515))))

(declare-fun lt!1627879 () Bool)

(assert (=> d!1343002 (= res!1831384 (not lt!1627879))))

(declare-fun lt!1627886 () Bool)

(assert (=> d!1343002 (= lt!1627879 lt!1627886)))

(declare-fun lt!1627885 () Unit!82465)

(declare-fun e!2757516 () Unit!82465)

(assert (=> d!1343002 (= lt!1627885 e!2757516)))

(declare-fun c!753892 () Bool)

(assert (=> d!1343002 (= c!753892 lt!1627886)))

(declare-fun containsKey!1144 (List!49741 K!10980) Bool)

(assert (=> d!1343002 (= lt!1627886 (containsKey!1144 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717))))

(assert (=> d!1343002 (= (contains!12134 (extractMap!824 (tail!7299 (toList!3513 lm!1616))) key!3717) lt!1627879)))

(declare-fun b!4428619 () Bool)

(declare-fun e!2757514 () Bool)

(declare-datatypes ((List!49744 0))(
  ( (Nil!49620) (Cons!49620 (h!55315 K!10980) (t!356682 List!49744)) )
))
(declare-fun contains!12140 (List!49744 K!10980) Bool)

(declare-fun keys!16950 (ListMap!2757) List!49744)

(assert (=> b!4428619 (= e!2757514 (contains!12140 (keys!16950 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717))))

(declare-fun bm!308187 () Bool)

(declare-fun call!308192 () Bool)

(declare-fun e!2757518 () List!49744)

(assert (=> bm!308187 (= call!308192 (contains!12140 e!2757518 key!3717))))

(declare-fun c!753893 () Bool)

(assert (=> bm!308187 (= c!753893 c!753892)))

(declare-fun b!4428620 () Bool)

(assert (=> b!4428620 false))

(declare-fun lt!1627884 () Unit!82465)

(declare-fun lt!1627880 () Unit!82465)

(assert (=> b!4428620 (= lt!1627884 lt!1627880)))

(assert (=> b!4428620 (containsKey!1144 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!258 (List!49741 K!10980) Unit!82465)

(assert (=> b!4428620 (= lt!1627880 (lemmaInGetKeysListThenContainsKey!258 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717))))

(declare-fun e!2757519 () Unit!82465)

(declare-fun Unit!82484 () Unit!82465)

(assert (=> b!4428620 (= e!2757519 Unit!82484)))

(declare-fun b!4428621 () Bool)

(assert (=> b!4428621 (= e!2757517 e!2757514)))

(declare-fun res!1831383 () Bool)

(assert (=> b!4428621 (=> (not res!1831383) (not e!2757514))))

(declare-fun isDefined!8032 (Option!10741) Bool)

(assert (=> b!4428621 (= res!1831383 (isDefined!8032 (getValueByKey!727 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717)))))

(declare-fun b!4428622 () Bool)

(assert (=> b!4428622 (= e!2757515 (not (contains!12140 (keys!16950 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717)))))

(declare-fun b!4428623 () Bool)

(declare-fun Unit!82485 () Unit!82465)

(assert (=> b!4428623 (= e!2757519 Unit!82485)))

(declare-fun b!4428624 () Bool)

(declare-fun lt!1627881 () Unit!82465)

(assert (=> b!4428624 (= e!2757516 lt!1627881)))

(declare-fun lt!1627882 () Unit!82465)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!635 (List!49741 K!10980) Unit!82465)

(assert (=> b!4428624 (= lt!1627882 (lemmaContainsKeyImpliesGetValueByKeyDefined!635 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717))))

(assert (=> b!4428624 (isDefined!8032 (getValueByKey!727 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717))))

(declare-fun lt!1627883 () Unit!82465)

(assert (=> b!4428624 (= lt!1627883 lt!1627882)))

(declare-fun lemmaInListThenGetKeysListContains!257 (List!49741 K!10980) Unit!82465)

(assert (=> b!4428624 (= lt!1627881 (lemmaInListThenGetKeysListContains!257 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))) key!3717))))

(assert (=> b!4428624 call!308192))

(declare-fun b!4428625 () Bool)

(assert (=> b!4428625 (= e!2757518 (keys!16950 (extractMap!824 (tail!7299 (toList!3513 lm!1616)))))))

(declare-fun b!4428626 () Bool)

(declare-fun getKeysList!260 (List!49741) List!49744)

(assert (=> b!4428626 (= e!2757518 (getKeysList!260 (toList!3514 (extractMap!824 (tail!7299 (toList!3513 lm!1616))))))))

(declare-fun b!4428627 () Bool)

(assert (=> b!4428627 (= e!2757516 e!2757519)))

(declare-fun c!753894 () Bool)

(assert (=> b!4428627 (= c!753894 call!308192)))

(assert (= (and d!1343002 c!753892) b!4428624))

(assert (= (and d!1343002 (not c!753892)) b!4428627))

(assert (= (and b!4428627 c!753894) b!4428620))

(assert (= (and b!4428627 (not c!753894)) b!4428623))

(assert (= (or b!4428624 b!4428627) bm!308187))

(assert (= (and bm!308187 c!753893) b!4428626))

(assert (= (and bm!308187 (not c!753893)) b!4428625))

(assert (= (and d!1343002 res!1831384) b!4428622))

(assert (= (and d!1343002 (not res!1831385)) b!4428621))

(assert (= (and b!4428621 res!1831383) b!4428619))

(declare-fun m!5112091 () Bool)

(assert (=> b!4428620 m!5112091))

(declare-fun m!5112093 () Bool)

(assert (=> b!4428620 m!5112093))

(declare-fun m!5112095 () Bool)

(assert (=> b!4428624 m!5112095))

(declare-fun m!5112101 () Bool)

(assert (=> b!4428624 m!5112101))

(assert (=> b!4428624 m!5112101))

(declare-fun m!5112109 () Bool)

(assert (=> b!4428624 m!5112109))

(declare-fun m!5112113 () Bool)

(assert (=> b!4428624 m!5112113))

(assert (=> b!4428622 m!5111969))

(declare-fun m!5112115 () Bool)

(assert (=> b!4428622 m!5112115))

(assert (=> b!4428622 m!5112115))

(declare-fun m!5112117 () Bool)

(assert (=> b!4428622 m!5112117))

(declare-fun m!5112119 () Bool)

(assert (=> b!4428626 m!5112119))

(assert (=> b!4428619 m!5111969))

(assert (=> b!4428619 m!5112115))

(assert (=> b!4428619 m!5112115))

(assert (=> b!4428619 m!5112117))

(assert (=> b!4428625 m!5111969))

(assert (=> b!4428625 m!5112115))

(assert (=> d!1343002 m!5112091))

(assert (=> b!4428621 m!5112101))

(assert (=> b!4428621 m!5112101))

(assert (=> b!4428621 m!5112109))

(declare-fun m!5112133 () Bool)

(assert (=> bm!308187 m!5112133))

(assert (=> b!4428551 d!1343002))

(declare-fun d!1343014 () Bool)

(declare-fun e!2757524 () Bool)

(assert (=> d!1343014 e!2757524))

(declare-fun res!1831394 () Bool)

(assert (=> d!1343014 (=> (not res!1831394) (not e!2757524))))

(declare-fun lt!1627907 () ListLongMap!2163)

(assert (=> d!1343014 (= res!1831394 (contains!12135 lt!1627907 (_1!28010 lt!1627762)))))

(declare-fun lt!1627909 () List!49742)

(assert (=> d!1343014 (= lt!1627907 (ListLongMap!2164 lt!1627909))))

(declare-fun lt!1627906 () Unit!82465)

(declare-fun lt!1627908 () Unit!82465)

(assert (=> d!1343014 (= lt!1627906 lt!1627908)))

(declare-datatypes ((Option!10742 0))(
  ( (None!10741) (Some!10741 (v!43935 List!49741)) )
))
(declare-fun getValueByKey!728 (List!49742 (_ BitVec 64)) Option!10742)

(assert (=> d!1343014 (= (getValueByKey!728 lt!1627909 (_1!28010 lt!1627762)) (Some!10741 (_2!28010 lt!1627762)))))

(declare-fun lemmaContainsTupThenGetReturnValue!463 (List!49742 (_ BitVec 64) List!49741) Unit!82465)

(assert (=> d!1343014 (= lt!1627908 (lemmaContainsTupThenGetReturnValue!463 lt!1627909 (_1!28010 lt!1627762) (_2!28010 lt!1627762)))))

(declare-fun insertStrictlySorted!268 (List!49742 (_ BitVec 64) List!49741) List!49742)

(assert (=> d!1343014 (= lt!1627909 (insertStrictlySorted!268 (toList!3513 lt!1627756) (_1!28010 lt!1627762) (_2!28010 lt!1627762)))))

(assert (=> d!1343014 (= (+!1110 lt!1627756 lt!1627762) lt!1627907)))

(declare-fun b!4428636 () Bool)

(declare-fun res!1831395 () Bool)

(assert (=> b!4428636 (=> (not res!1831395) (not e!2757524))))

(assert (=> b!4428636 (= res!1831395 (= (getValueByKey!728 (toList!3513 lt!1627907) (_1!28010 lt!1627762)) (Some!10741 (_2!28010 lt!1627762))))))

(declare-fun b!4428637 () Bool)

(declare-fun contains!12141 (List!49742 tuple2!49432) Bool)

(assert (=> b!4428637 (= e!2757524 (contains!12141 (toList!3513 lt!1627907) lt!1627762))))

(assert (= (and d!1343014 res!1831394) b!4428636))

(assert (= (and b!4428636 res!1831395) b!4428637))

(declare-fun m!5112145 () Bool)

(assert (=> d!1343014 m!5112145))

(declare-fun m!5112147 () Bool)

(assert (=> d!1343014 m!5112147))

(declare-fun m!5112149 () Bool)

(assert (=> d!1343014 m!5112149))

(declare-fun m!5112151 () Bool)

(assert (=> d!1343014 m!5112151))

(declare-fun m!5112153 () Bool)

(assert (=> b!4428636 m!5112153))

(declare-fun m!5112155 () Bool)

(assert (=> b!4428637 m!5112155))

(assert (=> b!4428551 d!1343014))

(declare-fun bs!759404 () Bool)

(declare-fun d!1343018 () Bool)

(assert (= bs!759404 (and d!1343018 d!1342982)))

(declare-fun lambda!154692 () Int)

(assert (=> bs!759404 (not (= lambda!154692 lambda!154649))))

(declare-fun bs!759405 () Bool)

(assert (= bs!759405 (and d!1343018 d!1342988)))

(assert (=> bs!759405 (= lambda!154692 lambda!154652)))

(declare-fun bs!759406 () Bool)

(assert (= bs!759406 (and d!1343018 d!1342996)))

(assert (=> bs!759406 (= lambda!154692 lambda!154653)))

(declare-fun bs!759407 () Bool)

(assert (= bs!759407 (and d!1343018 start!432284)))

(assert (=> bs!759407 (= lambda!154692 lambda!154646)))

(declare-fun bs!759408 () Bool)

(assert (= bs!759408 (and d!1343018 d!1343000)))

(assert (=> bs!759408 (= lambda!154692 lambda!154654)))

(assert (=> d!1343018 (eq!421 (extractMap!824 (toList!3513 (+!1110 lt!1627756 (tuple2!49433 hash!366 newBucket!194)))) (+!1111 (extractMap!824 (toList!3513 lt!1627756)) (tuple2!49431 key!3717 newValue!93)))))

(declare-fun lt!1627931 () Unit!82465)

(declare-fun choose!28010 (ListLongMap!2163 (_ BitVec 64) List!49741 K!10980 V!11226 Hashable!5157) Unit!82465)

(assert (=> d!1343018 (= lt!1627931 (choose!28010 lt!1627756 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1343018 (forall!9586 (toList!3513 lt!1627756) lambda!154692)))

(assert (=> d!1343018 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!137 lt!1627756 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1627931)))

(declare-fun bs!759409 () Bool)

(assert (= bs!759409 d!1343018))

(declare-fun m!5112169 () Bool)

(assert (=> bs!759409 m!5112169))

(declare-fun m!5112171 () Bool)

(assert (=> bs!759409 m!5112171))

(declare-fun m!5112173 () Bool)

(assert (=> bs!759409 m!5112173))

(declare-fun m!5112175 () Bool)

(assert (=> bs!759409 m!5112175))

(declare-fun m!5112177 () Bool)

(assert (=> bs!759409 m!5112177))

(declare-fun m!5112179 () Bool)

(assert (=> bs!759409 m!5112179))

(assert (=> bs!759409 m!5111979))

(assert (=> bs!759409 m!5112175))

(assert (=> bs!759409 m!5112173))

(assert (=> bs!759409 m!5111979))

(assert (=> b!4428551 d!1343018))

(declare-fun d!1343026 () Bool)

(declare-fun res!1831415 () Bool)

(declare-fun e!2757553 () Bool)

(assert (=> d!1343026 (=> res!1831415 e!2757553)))

(assert (=> d!1343026 (= res!1831415 ((_ is Nil!49618) (toList!3513 lm!1616)))))

(assert (=> d!1343026 (= (forall!9586 (toList!3513 lm!1616) lambda!154646) e!2757553)))

(declare-fun b!4428675 () Bool)

(declare-fun e!2757554 () Bool)

(assert (=> b!4428675 (= e!2757553 e!2757554)))

(declare-fun res!1831416 () Bool)

(assert (=> b!4428675 (=> (not res!1831416) (not e!2757554))))

(declare-fun dynLambda!20856 (Int tuple2!49432) Bool)

(assert (=> b!4428675 (= res!1831416 (dynLambda!20856 lambda!154646 (h!55311 (toList!3513 lm!1616))))))

(declare-fun b!4428676 () Bool)

(assert (=> b!4428676 (= e!2757554 (forall!9586 (t!356680 (toList!3513 lm!1616)) lambda!154646))))

(assert (= (and d!1343026 (not res!1831415)) b!4428675))

(assert (= (and b!4428675 res!1831416) b!4428676))

(declare-fun b_lambda!143501 () Bool)

(assert (=> (not b_lambda!143501) (not b!4428675)))

(declare-fun m!5112201 () Bool)

(assert (=> b!4428675 m!5112201))

(declare-fun m!5112203 () Bool)

(assert (=> b!4428676 m!5112203))

(assert (=> start!432284 d!1343026))

(declare-fun d!1343030 () Bool)

(declare-fun isStrictlySorted!240 (List!49742) Bool)

(assert (=> d!1343030 (= (inv!65166 lm!1616) (isStrictlySorted!240 (toList!3513 lm!1616)))))

(declare-fun bs!759410 () Bool)

(assert (= bs!759410 d!1343030))

(declare-fun m!5112205 () Bool)

(assert (=> bs!759410 m!5112205))

(assert (=> start!432284 d!1343030))

(declare-fun b!4428768 () Bool)

(assert (=> b!4428768 true))

(declare-fun bs!759478 () Bool)

(declare-fun b!4428764 () Bool)

(assert (= bs!759478 (and b!4428764 b!4428768)))

(declare-fun lambda!154744 () Int)

(declare-fun lambda!154743 () Int)

(assert (=> bs!759478 (= lambda!154744 lambda!154743)))

(assert (=> b!4428764 true))

(declare-fun lt!1628059 () ListMap!2757)

(declare-fun lambda!154745 () Int)

(assert (=> bs!759478 (= (= lt!1628059 lt!1627754) (= lambda!154745 lambda!154743))))

(assert (=> b!4428764 (= (= lt!1628059 lt!1627754) (= lambda!154745 lambda!154744))))

(assert (=> b!4428764 true))

(declare-fun bs!759479 () Bool)

(declare-fun d!1343032 () Bool)

(assert (= bs!759479 (and d!1343032 b!4428768)))

(declare-fun lt!1628068 () ListMap!2757)

(declare-fun lambda!154746 () Int)

(assert (=> bs!759479 (= (= lt!1628068 lt!1627754) (= lambda!154746 lambda!154743))))

(declare-fun bs!759480 () Bool)

(assert (= bs!759480 (and d!1343032 b!4428764)))

(assert (=> bs!759480 (= (= lt!1628068 lt!1627754) (= lambda!154746 lambda!154744))))

(assert (=> bs!759480 (= (= lt!1628068 lt!1628059) (= lambda!154746 lambda!154745))))

(assert (=> d!1343032 true))

(declare-fun bm!308201 () Bool)

(declare-fun call!308206 () Bool)

(declare-fun c!753919 () Bool)

(declare-fun forall!9588 (List!49741 Int) Bool)

(assert (=> bm!308201 (= call!308206 (forall!9588 (toList!3514 lt!1627754) (ite c!753919 lambda!154743 lambda!154745)))))

(declare-fun e!2757609 () ListMap!2757)

(assert (=> b!4428764 (= e!2757609 lt!1628059)))

(declare-fun lt!1628073 () ListMap!2757)

(assert (=> b!4428764 (= lt!1628073 (+!1111 lt!1627754 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(assert (=> b!4428764 (= lt!1628059 (addToMapMapFromBucket!400 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616)))) (+!1111 lt!1627754 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))))

(declare-fun lt!1628070 () Unit!82465)

(declare-fun call!308207 () Unit!82465)

(assert (=> b!4428764 (= lt!1628070 call!308207)))

(assert (=> b!4428764 (forall!9588 (toList!3514 lt!1627754) lambda!154744)))

(declare-fun lt!1628065 () Unit!82465)

(assert (=> b!4428764 (= lt!1628065 lt!1628070)))

(assert (=> b!4428764 (forall!9588 (toList!3514 lt!1628073) lambda!154745)))

(declare-fun lt!1628078 () Unit!82465)

(declare-fun Unit!82487 () Unit!82465)

(assert (=> b!4428764 (= lt!1628078 Unit!82487)))

(assert (=> b!4428764 (forall!9588 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616)))) lambda!154745)))

(declare-fun lt!1628067 () Unit!82465)

(declare-fun Unit!82488 () Unit!82465)

(assert (=> b!4428764 (= lt!1628067 Unit!82488)))

(declare-fun lt!1628060 () Unit!82465)

(declare-fun Unit!82489 () Unit!82465)

(assert (=> b!4428764 (= lt!1628060 Unit!82489)))

(declare-fun lt!1628058 () Unit!82465)

(declare-fun forallContained!2103 (List!49741 Int tuple2!49430) Unit!82465)

(assert (=> b!4428764 (= lt!1628058 (forallContained!2103 (toList!3514 lt!1628073) lambda!154745 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(assert (=> b!4428764 (contains!12134 lt!1628073 (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(declare-fun lt!1628064 () Unit!82465)

(declare-fun Unit!82491 () Unit!82465)

(assert (=> b!4428764 (= lt!1628064 Unit!82491)))

(assert (=> b!4428764 (contains!12134 lt!1628059 (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(declare-fun lt!1628066 () Unit!82465)

(declare-fun Unit!82493 () Unit!82465)

(assert (=> b!4428764 (= lt!1628066 Unit!82493)))

(assert (=> b!4428764 (forall!9588 (_2!28010 (h!55311 (toList!3513 lm!1616))) lambda!154745)))

(declare-fun lt!1628062 () Unit!82465)

(declare-fun Unit!82495 () Unit!82465)

(assert (=> b!4428764 (= lt!1628062 Unit!82495)))

(declare-fun call!308208 () Bool)

(assert (=> b!4428764 call!308208))

(declare-fun lt!1628074 () Unit!82465)

(declare-fun Unit!82496 () Unit!82465)

(assert (=> b!4428764 (= lt!1628074 Unit!82496)))

(declare-fun lt!1628072 () Unit!82465)

(declare-fun Unit!82498 () Unit!82465)

(assert (=> b!4428764 (= lt!1628072 Unit!82498)))

(declare-fun lt!1628069 () Unit!82465)

(declare-fun addForallContainsKeyThenBeforeAdding!181 (ListMap!2757 ListMap!2757 K!10980 V!11226) Unit!82465)

(assert (=> b!4428764 (= lt!1628069 (addForallContainsKeyThenBeforeAdding!181 lt!1627754 lt!1628059 (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))) (_2!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))))

(assert (=> b!4428764 (forall!9588 (toList!3514 lt!1627754) lambda!154745)))

(declare-fun lt!1628063 () Unit!82465)

(assert (=> b!4428764 (= lt!1628063 lt!1628069)))

(assert (=> b!4428764 (forall!9588 (toList!3514 lt!1627754) lambda!154745)))

(declare-fun lt!1628077 () Unit!82465)

(declare-fun Unit!82502 () Unit!82465)

(assert (=> b!4428764 (= lt!1628077 Unit!82502)))

(declare-fun res!1831457 () Bool)

(assert (=> b!4428764 (= res!1831457 (forall!9588 (_2!28010 (h!55311 (toList!3513 lm!1616))) lambda!154745))))

(declare-fun e!2757610 () Bool)

(assert (=> b!4428764 (=> (not res!1831457) (not e!2757610))))

(assert (=> b!4428764 e!2757610))

(declare-fun lt!1628075 () Unit!82465)

(declare-fun Unit!82504 () Unit!82465)

(assert (=> b!4428764 (= lt!1628075 Unit!82504)))

(declare-fun bm!308202 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!181 (ListMap!2757) Unit!82465)

(assert (=> bm!308202 (= call!308207 (lemmaContainsAllItsOwnKeys!181 lt!1627754))))

(declare-fun b!4428765 () Bool)

(assert (=> b!4428765 (= e!2757610 call!308206)))

(declare-fun b!4428766 () Bool)

(declare-fun e!2757608 () Bool)

(assert (=> b!4428766 (= e!2757608 (invariantList!813 (toList!3514 lt!1628068)))))

(assert (=> d!1343032 e!2757608))

(declare-fun res!1831458 () Bool)

(assert (=> d!1343032 (=> (not res!1831458) (not e!2757608))))

(assert (=> d!1343032 (= res!1831458 (forall!9588 (_2!28010 (h!55311 (toList!3513 lm!1616))) lambda!154746))))

(assert (=> d!1343032 (= lt!1628068 e!2757609)))

(assert (=> d!1343032 (= c!753919 ((_ is Nil!49617) (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(assert (=> d!1343032 (noDuplicateKeys!763 (_2!28010 (h!55311 (toList!3513 lm!1616))))))

(assert (=> d!1343032 (= (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) lt!1627754) lt!1628068)))

(declare-fun b!4428767 () Bool)

(declare-fun res!1831459 () Bool)

(assert (=> b!4428767 (=> (not res!1831459) (not e!2757608))))

(assert (=> b!4428767 (= res!1831459 (forall!9588 (toList!3514 lt!1627754) lambda!154746))))

(declare-fun bm!308203 () Bool)

(assert (=> bm!308203 (= call!308208 (forall!9588 (ite c!753919 (toList!3514 lt!1627754) (toList!3514 lt!1628073)) (ite c!753919 lambda!154743 lambda!154745)))))

(assert (=> b!4428768 (= e!2757609 lt!1627754)))

(declare-fun lt!1628061 () Unit!82465)

(assert (=> b!4428768 (= lt!1628061 call!308207)))

(assert (=> b!4428768 call!308208))

(declare-fun lt!1628076 () Unit!82465)

(assert (=> b!4428768 (= lt!1628076 lt!1628061)))

(assert (=> b!4428768 call!308206))

(declare-fun lt!1628071 () Unit!82465)

(declare-fun Unit!82507 () Unit!82465)

(assert (=> b!4428768 (= lt!1628071 Unit!82507)))

(assert (= (and d!1343032 c!753919) b!4428768))

(assert (= (and d!1343032 (not c!753919)) b!4428764))

(assert (= (and b!4428764 res!1831457) b!4428765))

(assert (= (or b!4428768 b!4428764) bm!308202))

(assert (= (or b!4428768 b!4428765) bm!308201))

(assert (= (or b!4428768 b!4428764) bm!308203))

(assert (= (and d!1343032 res!1831458) b!4428767))

(assert (= (and b!4428767 res!1831459) b!4428766))

(declare-fun m!5112399 () Bool)

(assert (=> b!4428767 m!5112399))

(declare-fun m!5112401 () Bool)

(assert (=> b!4428766 m!5112401))

(declare-fun m!5112403 () Bool)

(assert (=> bm!308203 m!5112403))

(declare-fun m!5112405 () Bool)

(assert (=> bm!308201 m!5112405))

(declare-fun m!5112407 () Bool)

(assert (=> bm!308202 m!5112407))

(declare-fun m!5112409 () Bool)

(assert (=> d!1343032 m!5112409))

(assert (=> d!1343032 m!5111925))

(declare-fun m!5112411 () Bool)

(assert (=> b!4428764 m!5112411))

(declare-fun m!5112413 () Bool)

(assert (=> b!4428764 m!5112413))

(declare-fun m!5112415 () Bool)

(assert (=> b!4428764 m!5112415))

(declare-fun m!5112417 () Bool)

(assert (=> b!4428764 m!5112417))

(declare-fun m!5112419 () Bool)

(assert (=> b!4428764 m!5112419))

(declare-fun m!5112421 () Bool)

(assert (=> b!4428764 m!5112421))

(declare-fun m!5112423 () Bool)

(assert (=> b!4428764 m!5112423))

(declare-fun m!5112425 () Bool)

(assert (=> b!4428764 m!5112425))

(declare-fun m!5112427 () Bool)

(assert (=> b!4428764 m!5112427))

(declare-fun m!5112429 () Bool)

(assert (=> b!4428764 m!5112429))

(declare-fun m!5112431 () Bool)

(assert (=> b!4428764 m!5112431))

(assert (=> b!4428764 m!5112429))

(assert (=> b!4428764 m!5112417))

(assert (=> b!4428764 m!5112419))

(assert (=> b!4428541 d!1343032))

(declare-fun d!1343092 () Bool)

(declare-fun e!2757611 () Bool)

(assert (=> d!1343092 e!2757611))

(declare-fun res!1831460 () Bool)

(assert (=> d!1343092 (=> (not res!1831460) (not e!2757611))))

(declare-fun lt!1628079 () ListMap!2757)

(assert (=> d!1343092 (= res!1831460 (contains!12134 lt!1628079 (_1!28009 lt!1627767)))))

(declare-fun lt!1628082 () List!49741)

(assert (=> d!1343092 (= lt!1628079 (ListMap!2758 lt!1628082))))

(declare-fun lt!1628080 () Unit!82465)

(declare-fun lt!1628081 () Unit!82465)

(assert (=> d!1343092 (= lt!1628080 lt!1628081)))

(assert (=> d!1343092 (= (getValueByKey!727 lt!1628082 (_1!28009 lt!1627767)) (Some!10740 (_2!28009 lt!1627767)))))

(assert (=> d!1343092 (= lt!1628081 (lemmaContainsTupThenGetReturnValue!462 lt!1628082 (_1!28009 lt!1627767) (_2!28009 lt!1627767)))))

(assert (=> d!1343092 (= lt!1628082 (insertNoDuplicatedKeys!203 (toList!3514 lt!1627770) (_1!28009 lt!1627767) (_2!28009 lt!1627767)))))

(assert (=> d!1343092 (= (+!1111 lt!1627770 lt!1627767) lt!1628079)))

(declare-fun b!4428771 () Bool)

(declare-fun res!1831461 () Bool)

(assert (=> b!4428771 (=> (not res!1831461) (not e!2757611))))

(assert (=> b!4428771 (= res!1831461 (= (getValueByKey!727 (toList!3514 lt!1628079) (_1!28009 lt!1627767)) (Some!10740 (_2!28009 lt!1627767))))))

(declare-fun b!4428772 () Bool)

(assert (=> b!4428772 (= e!2757611 (contains!12139 (toList!3514 lt!1628079) lt!1627767))))

(assert (= (and d!1343092 res!1831460) b!4428771))

(assert (= (and b!4428771 res!1831461) b!4428772))

(declare-fun m!5112433 () Bool)

(assert (=> d!1343092 m!5112433))

(declare-fun m!5112435 () Bool)

(assert (=> d!1343092 m!5112435))

(declare-fun m!5112437 () Bool)

(assert (=> d!1343092 m!5112437))

(declare-fun m!5112439 () Bool)

(assert (=> d!1343092 m!5112439))

(declare-fun m!5112441 () Bool)

(assert (=> b!4428771 m!5112441))

(declare-fun m!5112443 () Bool)

(assert (=> b!4428772 m!5112443))

(assert (=> b!4428541 d!1343092))

(declare-fun d!1343094 () Bool)

(assert (=> d!1343094 (eq!421 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) (+!1111 lt!1627753 (tuple2!49431 key!3717 newValue!93))) (+!1111 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) lt!1627753) (tuple2!49431 key!3717 newValue!93)))))

(declare-fun lt!1628085 () Unit!82465)

(declare-fun choose!28011 (ListMap!2757 K!10980 V!11226 List!49741) Unit!82465)

(assert (=> d!1343094 (= lt!1628085 (choose!28011 lt!1627753 key!3717 newValue!93 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(assert (=> d!1343094 (not (containsKey!1142 (_2!28010 (h!55311 (toList!3513 lm!1616))) key!3717))))

(assert (=> d!1343094 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!192 lt!1627753 key!3717 newValue!93 (_2!28010 (h!55311 (toList!3513 lm!1616)))) lt!1628085)))

(declare-fun bs!759481 () Bool)

(assert (= bs!759481 d!1343094))

(declare-fun m!5112445 () Bool)

(assert (=> bs!759481 m!5112445))

(declare-fun m!5112447 () Bool)

(assert (=> bs!759481 m!5112447))

(declare-fun m!5112449 () Bool)

(assert (=> bs!759481 m!5112449))

(assert (=> bs!759481 m!5111965))

(assert (=> bs!759481 m!5112447))

(declare-fun m!5112451 () Bool)

(assert (=> bs!759481 m!5112451))

(declare-fun m!5112453 () Bool)

(assert (=> bs!759481 m!5112453))

(assert (=> bs!759481 m!5111965))

(assert (=> bs!759481 m!5112451))

(assert (=> bs!759481 m!5111949))

(assert (=> bs!759481 m!5112445))

(assert (=> b!4428541 d!1343094))

(declare-fun d!1343096 () Bool)

(assert (=> d!1343096 (= (eq!421 lt!1627757 lt!1627765) (= (content!7970 (toList!3514 lt!1627757)) (content!7970 (toList!3514 lt!1627765))))))

(declare-fun bs!759482 () Bool)

(assert (= bs!759482 d!1343096))

(declare-fun m!5112455 () Bool)

(assert (=> bs!759482 m!5112455))

(declare-fun m!5112457 () Bool)

(assert (=> bs!759482 m!5112457))

(assert (=> b!4428541 d!1343096))

(declare-fun d!1343098 () Bool)

(assert (=> d!1343098 (eq!421 (+!1111 lt!1627770 (tuple2!49431 key!3717 newValue!93)) (+!1111 lt!1627760 (tuple2!49431 key!3717 newValue!93)))))

(declare-fun lt!1628088 () Unit!82465)

(declare-fun choose!28012 (ListMap!2757 ListMap!2757 K!10980 V!11226) Unit!82465)

(assert (=> d!1343098 (= lt!1628088 (choose!28012 lt!1627770 lt!1627760 key!3717 newValue!93))))

(assert (=> d!1343098 (eq!421 lt!1627770 lt!1627760)))

(assert (=> d!1343098 (= (lemmaAddToEqMapsPreservesEq!32 lt!1627770 lt!1627760 key!3717 newValue!93) lt!1628088)))

(declare-fun bs!759483 () Bool)

(assert (= bs!759483 d!1343098))

(declare-fun m!5112459 () Bool)

(assert (=> bs!759483 m!5112459))

(declare-fun m!5112461 () Bool)

(assert (=> bs!759483 m!5112461))

(declare-fun m!5112463 () Bool)

(assert (=> bs!759483 m!5112463))

(assert (=> bs!759483 m!5111963))

(assert (=> bs!759483 m!5112461))

(declare-fun m!5112465 () Bool)

(assert (=> bs!759483 m!5112465))

(assert (=> bs!759483 m!5112459))

(assert (=> b!4428541 d!1343098))

(declare-fun d!1343100 () Bool)

(declare-fun res!1831466 () Bool)

(declare-fun e!2757616 () Bool)

(assert (=> d!1343100 (=> res!1831466 e!2757616)))

(assert (=> d!1343100 (= res!1831466 (not ((_ is Cons!49617) (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(assert (=> d!1343100 (= (noDuplicateKeys!763 (_2!28010 (h!55311 (toList!3513 lm!1616)))) e!2757616)))

(declare-fun b!4428777 () Bool)

(declare-fun e!2757617 () Bool)

(assert (=> b!4428777 (= e!2757616 e!2757617)))

(declare-fun res!1831467 () Bool)

(assert (=> b!4428777 (=> (not res!1831467) (not e!2757617))))

(assert (=> b!4428777 (= res!1831467 (not (containsKey!1142 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616)))) (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))))

(declare-fun b!4428778 () Bool)

(assert (=> b!4428778 (= e!2757617 (noDuplicateKeys!763 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(assert (= (and d!1343100 (not res!1831466)) b!4428777))

(assert (= (and b!4428777 res!1831467) b!4428778))

(declare-fun m!5112467 () Bool)

(assert (=> b!4428777 m!5112467))

(declare-fun m!5112469 () Bool)

(assert (=> b!4428778 m!5112469))

(assert (=> b!4428541 d!1343100))

(declare-fun d!1343102 () Bool)

(assert (=> d!1343102 (= (eq!421 (+!1111 lt!1627770 lt!1627767) lt!1627765) (= (content!7970 (toList!3514 (+!1111 lt!1627770 lt!1627767))) (content!7970 (toList!3514 lt!1627765))))))

(declare-fun bs!759484 () Bool)

(assert (= bs!759484 d!1343102))

(declare-fun m!5112471 () Bool)

(assert (=> bs!759484 m!5112471))

(assert (=> bs!759484 m!5112457))

(assert (=> b!4428541 d!1343102))

(declare-fun d!1343104 () Bool)

(declare-fun e!2757618 () Bool)

(assert (=> d!1343104 e!2757618))

(declare-fun res!1831468 () Bool)

(assert (=> d!1343104 (=> (not res!1831468) (not e!2757618))))

(declare-fun lt!1628089 () ListMap!2757)

(assert (=> d!1343104 (= res!1831468 (contains!12134 lt!1628089 (_1!28009 lt!1627767)))))

(declare-fun lt!1628092 () List!49741)

(assert (=> d!1343104 (= lt!1628089 (ListMap!2758 lt!1628092))))

(declare-fun lt!1628090 () Unit!82465)

(declare-fun lt!1628091 () Unit!82465)

(assert (=> d!1343104 (= lt!1628090 lt!1628091)))

(assert (=> d!1343104 (= (getValueByKey!727 lt!1628092 (_1!28009 lt!1627767)) (Some!10740 (_2!28009 lt!1627767)))))

(assert (=> d!1343104 (= lt!1628091 (lemmaContainsTupThenGetReturnValue!462 lt!1628092 (_1!28009 lt!1627767) (_2!28009 lt!1627767)))))

(assert (=> d!1343104 (= lt!1628092 (insertNoDuplicatedKeys!203 (toList!3514 lt!1627760) (_1!28009 lt!1627767) (_2!28009 lt!1627767)))))

(assert (=> d!1343104 (= (+!1111 lt!1627760 lt!1627767) lt!1628089)))

(declare-fun b!4428779 () Bool)

(declare-fun res!1831469 () Bool)

(assert (=> b!4428779 (=> (not res!1831469) (not e!2757618))))

(assert (=> b!4428779 (= res!1831469 (= (getValueByKey!727 (toList!3514 lt!1628089) (_1!28009 lt!1627767)) (Some!10740 (_2!28009 lt!1627767))))))

(declare-fun b!4428780 () Bool)

(assert (=> b!4428780 (= e!2757618 (contains!12139 (toList!3514 lt!1628089) lt!1627767))))

(assert (= (and d!1343104 res!1831468) b!4428779))

(assert (= (and b!4428779 res!1831469) b!4428780))

(declare-fun m!5112473 () Bool)

(assert (=> d!1343104 m!5112473))

(declare-fun m!5112475 () Bool)

(assert (=> d!1343104 m!5112475))

(declare-fun m!5112477 () Bool)

(assert (=> d!1343104 m!5112477))

(declare-fun m!5112479 () Bool)

(assert (=> d!1343104 m!5112479))

(declare-fun m!5112481 () Bool)

(assert (=> b!4428779 m!5112481))

(declare-fun m!5112483 () Bool)

(assert (=> b!4428780 m!5112483))

(assert (=> b!4428541 d!1343104))

(declare-fun d!1343106 () Bool)

(declare-fun res!1831474 () Bool)

(declare-fun e!2757623 () Bool)

(assert (=> d!1343106 (=> res!1831474 e!2757623)))

(assert (=> d!1343106 (= res!1831474 (and ((_ is Cons!49617) (_2!28010 (h!55311 (toList!3513 lm!1616)))) (= (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))) key!3717)))))

(assert (=> d!1343106 (= (containsKey!1142 (_2!28010 (h!55311 (toList!3513 lm!1616))) key!3717) e!2757623)))

(declare-fun b!4428785 () Bool)

(declare-fun e!2757624 () Bool)

(assert (=> b!4428785 (= e!2757623 e!2757624)))

(declare-fun res!1831475 () Bool)

(assert (=> b!4428785 (=> (not res!1831475) (not e!2757624))))

(assert (=> b!4428785 (= res!1831475 ((_ is Cons!49617) (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(declare-fun b!4428786 () Bool)

(assert (=> b!4428786 (= e!2757624 (containsKey!1142 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616)))) key!3717))))

(assert (= (and d!1343106 (not res!1831474)) b!4428785))

(assert (= (and b!4428785 res!1831475) b!4428786))

(declare-fun m!5112485 () Bool)

(assert (=> b!4428786 m!5112485))

(assert (=> b!4428539 d!1343106))

(declare-fun d!1343108 () Bool)

(declare-fun res!1831476 () Bool)

(declare-fun e!2757625 () Bool)

(assert (=> d!1343108 (=> res!1831476 e!2757625)))

(assert (=> d!1343108 (= res!1831476 (and ((_ is Cons!49617) (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616))))) (= (_1!28009 (h!55310 (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616)))))) key!3717)))))

(assert (=> d!1343108 (= (containsKey!1142 (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616)))) key!3717) e!2757625)))

(declare-fun b!4428787 () Bool)

(declare-fun e!2757626 () Bool)

(assert (=> b!4428787 (= e!2757625 e!2757626)))

(declare-fun res!1831477 () Bool)

(assert (=> b!4428787 (=> (not res!1831477) (not e!2757626))))

(assert (=> b!4428787 (= res!1831477 ((_ is Cons!49617) (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616))))))))

(declare-fun b!4428788 () Bool)

(assert (=> b!4428788 (= e!2757626 (containsKey!1142 (t!356679 (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616))))) key!3717))))

(assert (= (and d!1343108 (not res!1831476)) b!4428787))

(assert (= (and b!4428787 res!1831477) b!4428788))

(declare-fun m!5112487 () Bool)

(assert (=> b!4428788 m!5112487))

(assert (=> b!4428539 d!1343108))

(declare-fun d!1343110 () Bool)

(declare-fun get!16174 (Option!10742) List!49741)

(assert (=> d!1343110 (= (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616)))) (get!16174 (getValueByKey!728 (toList!3513 lm!1616) (_1!28010 (h!55311 (toList!3513 lm!1616))))))))

(declare-fun bs!759485 () Bool)

(assert (= bs!759485 d!1343110))

(declare-fun m!5112489 () Bool)

(assert (=> bs!759485 m!5112489))

(assert (=> bs!759485 m!5112489))

(declare-fun m!5112491 () Bool)

(assert (=> bs!759485 m!5112491))

(assert (=> b!4428539 d!1343110))

(declare-fun bs!759486 () Bool)

(declare-fun d!1343112 () Bool)

(assert (= bs!759486 (and d!1343112 d!1343018)))

(declare-fun lambda!154749 () Int)

(assert (=> bs!759486 (= lambda!154749 lambda!154692)))

(declare-fun bs!759487 () Bool)

(assert (= bs!759487 (and d!1343112 d!1342982)))

(assert (=> bs!759487 (not (= lambda!154749 lambda!154649))))

(declare-fun bs!759488 () Bool)

(assert (= bs!759488 (and d!1343112 d!1342988)))

(assert (=> bs!759488 (= lambda!154749 lambda!154652)))

(declare-fun bs!759489 () Bool)

(assert (= bs!759489 (and d!1343112 d!1342996)))

(assert (=> bs!759489 (= lambda!154749 lambda!154653)))

(declare-fun bs!759490 () Bool)

(assert (= bs!759490 (and d!1343112 start!432284)))

(assert (=> bs!759490 (= lambda!154749 lambda!154646)))

(declare-fun bs!759491 () Bool)

(assert (= bs!759491 (and d!1343112 d!1343000)))

(assert (=> bs!759491 (= lambda!154749 lambda!154654)))

(assert (=> d!1343112 (not (containsKey!1142 (apply!11615 lm!1616 (_1!28010 (h!55311 (toList!3513 lm!1616)))) key!3717))))

(declare-fun lt!1628095 () Unit!82465)

(declare-fun choose!28015 (ListLongMap!2163 K!10980 (_ BitVec 64) Hashable!5157) Unit!82465)

(assert (=> d!1343112 (= lt!1628095 (choose!28015 lm!1616 key!3717 (_1!28010 (h!55311 (toList!3513 lm!1616))) hashF!1220))))

(assert (=> d!1343112 (forall!9586 (toList!3513 lm!1616) lambda!154749)))

(assert (=> d!1343112 (= (lemmaNotSameHashThenCannotContainKey!142 lm!1616 key!3717 (_1!28010 (h!55311 (toList!3513 lm!1616))) hashF!1220) lt!1628095)))

(declare-fun bs!759492 () Bool)

(assert (= bs!759492 d!1343112))

(assert (=> bs!759492 m!5111951))

(assert (=> bs!759492 m!5111951))

(assert (=> bs!759492 m!5111953))

(declare-fun m!5112493 () Bool)

(assert (=> bs!759492 m!5112493))

(declare-fun m!5112495 () Bool)

(assert (=> bs!759492 m!5112495))

(assert (=> b!4428539 d!1343112))

(declare-fun d!1343114 () Bool)

(declare-fun e!2757631 () Bool)

(assert (=> d!1343114 e!2757631))

(declare-fun res!1831480 () Bool)

(assert (=> d!1343114 (=> res!1831480 e!2757631)))

(declare-fun lt!1628107 () Bool)

(assert (=> d!1343114 (= res!1831480 (not lt!1628107))))

(declare-fun lt!1628105 () Bool)

(assert (=> d!1343114 (= lt!1628107 lt!1628105)))

(declare-fun lt!1628106 () Unit!82465)

(declare-fun e!2757632 () Unit!82465)

(assert (=> d!1343114 (= lt!1628106 e!2757632)))

(declare-fun c!753922 () Bool)

(assert (=> d!1343114 (= c!753922 lt!1628105)))

(declare-fun containsKey!1146 (List!49742 (_ BitVec 64)) Bool)

(assert (=> d!1343114 (= lt!1628105 (containsKey!1146 (toList!3513 lm!1616) hash!366))))

(assert (=> d!1343114 (= (contains!12135 lm!1616 hash!366) lt!1628107)))

(declare-fun b!4428795 () Bool)

(declare-fun lt!1628104 () Unit!82465)

(assert (=> b!4428795 (= e!2757632 lt!1628104)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!637 (List!49742 (_ BitVec 64)) Unit!82465)

(assert (=> b!4428795 (= lt!1628104 (lemmaContainsKeyImpliesGetValueByKeyDefined!637 (toList!3513 lm!1616) hash!366))))

(declare-fun isDefined!8034 (Option!10742) Bool)

(assert (=> b!4428795 (isDefined!8034 (getValueByKey!728 (toList!3513 lm!1616) hash!366))))

(declare-fun b!4428796 () Bool)

(declare-fun Unit!82509 () Unit!82465)

(assert (=> b!4428796 (= e!2757632 Unit!82509)))

(declare-fun b!4428797 () Bool)

(assert (=> b!4428797 (= e!2757631 (isDefined!8034 (getValueByKey!728 (toList!3513 lm!1616) hash!366)))))

(assert (= (and d!1343114 c!753922) b!4428795))

(assert (= (and d!1343114 (not c!753922)) b!4428796))

(assert (= (and d!1343114 (not res!1831480)) b!4428797))

(declare-fun m!5112497 () Bool)

(assert (=> d!1343114 m!5112497))

(declare-fun m!5112499 () Bool)

(assert (=> b!4428795 m!5112499))

(declare-fun m!5112501 () Bool)

(assert (=> b!4428795 m!5112501))

(assert (=> b!4428795 m!5112501))

(declare-fun m!5112503 () Bool)

(assert (=> b!4428795 m!5112503))

(assert (=> b!4428797 m!5112501))

(assert (=> b!4428797 m!5112501))

(assert (=> b!4428797 m!5112503))

(assert (=> b!4428550 d!1343114))

(declare-fun d!1343116 () Bool)

(declare-fun hash!2170 (Hashable!5157 K!10980) (_ BitVec 64))

(assert (=> d!1343116 (= (hash!2164 hashF!1220 key!3717) (hash!2170 hashF!1220 key!3717))))

(declare-fun bs!759493 () Bool)

(assert (= bs!759493 d!1343116))

(declare-fun m!5112505 () Bool)

(assert (=> bs!759493 m!5112505))

(assert (=> b!4428548 d!1343116))

(declare-fun bs!759494 () Bool)

(declare-fun d!1343118 () Bool)

(assert (= bs!759494 (and d!1343118 b!4428768)))

(declare-fun lambda!154752 () Int)

(assert (=> bs!759494 (not (= lambda!154752 lambda!154743))))

(declare-fun bs!759495 () Bool)

(assert (= bs!759495 (and d!1343118 b!4428764)))

(assert (=> bs!759495 (not (= lambda!154752 lambda!154744))))

(assert (=> bs!759495 (not (= lambda!154752 lambda!154745))))

(declare-fun bs!759496 () Bool)

(assert (= bs!759496 (and d!1343118 d!1343032)))

(assert (=> bs!759496 (not (= lambda!154752 lambda!154746))))

(assert (=> d!1343118 true))

(assert (=> d!1343118 true))

(assert (=> d!1343118 (= (allKeysSameHash!723 newBucket!194 hash!366 hashF!1220) (forall!9588 newBucket!194 lambda!154752))))

(declare-fun bs!759497 () Bool)

(assert (= bs!759497 d!1343118))

(declare-fun m!5112507 () Bool)

(assert (=> bs!759497 m!5112507))

(assert (=> b!4428538 d!1343118))

(declare-fun d!1343120 () Bool)

(assert (=> d!1343120 (= (eq!421 lt!1627770 lt!1627760) (= (content!7970 (toList!3514 lt!1627770)) (content!7970 (toList!3514 lt!1627760))))))

(declare-fun bs!759498 () Bool)

(assert (= bs!759498 d!1343120))

(declare-fun m!5112509 () Bool)

(assert (=> bs!759498 m!5112509))

(declare-fun m!5112511 () Bool)

(assert (=> bs!759498 m!5112511))

(assert (=> b!4428549 d!1343120))

(declare-fun bs!759499 () Bool)

(declare-fun b!4428806 () Bool)

(assert (= bs!759499 (and b!4428806 d!1343032)))

(declare-fun lambda!154753 () Int)

(assert (=> bs!759499 (= (= lt!1627753 lt!1628068) (= lambda!154753 lambda!154746))))

(declare-fun bs!759500 () Bool)

(assert (= bs!759500 (and b!4428806 b!4428764)))

(assert (=> bs!759500 (= (= lt!1627753 lt!1627754) (= lambda!154753 lambda!154744))))

(declare-fun bs!759501 () Bool)

(assert (= bs!759501 (and b!4428806 b!4428768)))

(assert (=> bs!759501 (= (= lt!1627753 lt!1627754) (= lambda!154753 lambda!154743))))

(assert (=> bs!759500 (= (= lt!1627753 lt!1628059) (= lambda!154753 lambda!154745))))

(declare-fun bs!759502 () Bool)

(assert (= bs!759502 (and b!4428806 d!1343118)))

(assert (=> bs!759502 (not (= lambda!154753 lambda!154752))))

(assert (=> b!4428806 true))

(declare-fun bs!759503 () Bool)

(declare-fun b!4428802 () Bool)

(assert (= bs!759503 (and b!4428802 b!4428806)))

(declare-fun lambda!154754 () Int)

(assert (=> bs!759503 (= lambda!154754 lambda!154753)))

(declare-fun bs!759504 () Bool)

(assert (= bs!759504 (and b!4428802 d!1343032)))

(assert (=> bs!759504 (= (= lt!1627753 lt!1628068) (= lambda!154754 lambda!154746))))

(declare-fun bs!759505 () Bool)

(assert (= bs!759505 (and b!4428802 b!4428764)))

(assert (=> bs!759505 (= (= lt!1627753 lt!1627754) (= lambda!154754 lambda!154744))))

(declare-fun bs!759506 () Bool)

(assert (= bs!759506 (and b!4428802 b!4428768)))

(assert (=> bs!759506 (= (= lt!1627753 lt!1627754) (= lambda!154754 lambda!154743))))

(assert (=> bs!759505 (= (= lt!1627753 lt!1628059) (= lambda!154754 lambda!154745))))

(declare-fun bs!759507 () Bool)

(assert (= bs!759507 (and b!4428802 d!1343118)))

(assert (=> bs!759507 (not (= lambda!154754 lambda!154752))))

(assert (=> b!4428802 true))

(declare-fun lt!1628109 () ListMap!2757)

(declare-fun lambda!154755 () Int)

(assert (=> bs!759503 (= (= lt!1628109 lt!1627753) (= lambda!154755 lambda!154753))))

(assert (=> bs!759504 (= (= lt!1628109 lt!1628068) (= lambda!154755 lambda!154746))))

(assert (=> bs!759505 (= (= lt!1628109 lt!1627754) (= lambda!154755 lambda!154744))))

(assert (=> bs!759506 (= (= lt!1628109 lt!1627754) (= lambda!154755 lambda!154743))))

(assert (=> b!4428802 (= (= lt!1628109 lt!1627753) (= lambda!154755 lambda!154754))))

(assert (=> bs!759505 (= (= lt!1628109 lt!1628059) (= lambda!154755 lambda!154745))))

(assert (=> bs!759507 (not (= lambda!154755 lambda!154752))))

(assert (=> b!4428802 true))

(declare-fun bs!759508 () Bool)

(declare-fun d!1343122 () Bool)

(assert (= bs!759508 (and d!1343122 b!4428806)))

(declare-fun lambda!154756 () Int)

(declare-fun lt!1628118 () ListMap!2757)

(assert (=> bs!759508 (= (= lt!1628118 lt!1627753) (= lambda!154756 lambda!154753))))

(declare-fun bs!759509 () Bool)

(assert (= bs!759509 (and d!1343122 d!1343032)))

(assert (=> bs!759509 (= (= lt!1628118 lt!1628068) (= lambda!154756 lambda!154746))))

(declare-fun bs!759510 () Bool)

(assert (= bs!759510 (and d!1343122 b!4428764)))

(assert (=> bs!759510 (= (= lt!1628118 lt!1627754) (= lambda!154756 lambda!154744))))

(declare-fun bs!759511 () Bool)

(assert (= bs!759511 (and d!1343122 b!4428768)))

(assert (=> bs!759511 (= (= lt!1628118 lt!1627754) (= lambda!154756 lambda!154743))))

(declare-fun bs!759512 () Bool)

(assert (= bs!759512 (and d!1343122 b!4428802)))

(assert (=> bs!759512 (= (= lt!1628118 lt!1627753) (= lambda!154756 lambda!154754))))

(assert (=> bs!759510 (= (= lt!1628118 lt!1628059) (= lambda!154756 lambda!154745))))

(declare-fun bs!759513 () Bool)

(assert (= bs!759513 (and d!1343122 d!1343118)))

(assert (=> bs!759513 (not (= lambda!154756 lambda!154752))))

(assert (=> bs!759512 (= (= lt!1628118 lt!1628109) (= lambda!154756 lambda!154755))))

(assert (=> d!1343122 true))

(declare-fun call!308209 () Bool)

(declare-fun c!753923 () Bool)

(declare-fun bm!308204 () Bool)

(assert (=> bm!308204 (= call!308209 (forall!9588 (toList!3514 lt!1627753) (ite c!753923 lambda!154753 lambda!154755)))))

(declare-fun e!2757634 () ListMap!2757)

(assert (=> b!4428802 (= e!2757634 lt!1628109)))

(declare-fun lt!1628123 () ListMap!2757)

(assert (=> b!4428802 (= lt!1628123 (+!1111 lt!1627753 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(assert (=> b!4428802 (= lt!1628109 (addToMapMapFromBucket!400 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616)))) (+!1111 lt!1627753 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))))

(declare-fun lt!1628120 () Unit!82465)

(declare-fun call!308210 () Unit!82465)

(assert (=> b!4428802 (= lt!1628120 call!308210)))

(assert (=> b!4428802 (forall!9588 (toList!3514 lt!1627753) lambda!154754)))

(declare-fun lt!1628115 () Unit!82465)

(assert (=> b!4428802 (= lt!1628115 lt!1628120)))

(assert (=> b!4428802 (forall!9588 (toList!3514 lt!1628123) lambda!154755)))

(declare-fun lt!1628128 () Unit!82465)

(declare-fun Unit!82510 () Unit!82465)

(assert (=> b!4428802 (= lt!1628128 Unit!82510)))

(assert (=> b!4428802 (forall!9588 (t!356679 (_2!28010 (h!55311 (toList!3513 lm!1616)))) lambda!154755)))

(declare-fun lt!1628117 () Unit!82465)

(declare-fun Unit!82511 () Unit!82465)

(assert (=> b!4428802 (= lt!1628117 Unit!82511)))

(declare-fun lt!1628110 () Unit!82465)

(declare-fun Unit!82512 () Unit!82465)

(assert (=> b!4428802 (= lt!1628110 Unit!82512)))

(declare-fun lt!1628108 () Unit!82465)

(assert (=> b!4428802 (= lt!1628108 (forallContained!2103 (toList!3514 lt!1628123) lambda!154755 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(assert (=> b!4428802 (contains!12134 lt!1628123 (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(declare-fun lt!1628114 () Unit!82465)

(declare-fun Unit!82513 () Unit!82465)

(assert (=> b!4428802 (= lt!1628114 Unit!82513)))

(assert (=> b!4428802 (contains!12134 lt!1628109 (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))))))

(declare-fun lt!1628116 () Unit!82465)

(declare-fun Unit!82514 () Unit!82465)

(assert (=> b!4428802 (= lt!1628116 Unit!82514)))

(assert (=> b!4428802 (forall!9588 (_2!28010 (h!55311 (toList!3513 lm!1616))) lambda!154755)))

(declare-fun lt!1628112 () Unit!82465)

(declare-fun Unit!82515 () Unit!82465)

(assert (=> b!4428802 (= lt!1628112 Unit!82515)))

(declare-fun call!308211 () Bool)

(assert (=> b!4428802 call!308211))

(declare-fun lt!1628124 () Unit!82465)

(declare-fun Unit!82516 () Unit!82465)

(assert (=> b!4428802 (= lt!1628124 Unit!82516)))

(declare-fun lt!1628122 () Unit!82465)

(declare-fun Unit!82517 () Unit!82465)

(assert (=> b!4428802 (= lt!1628122 Unit!82517)))

(declare-fun lt!1628119 () Unit!82465)

(assert (=> b!4428802 (= lt!1628119 (addForallContainsKeyThenBeforeAdding!181 lt!1627753 lt!1628109 (_1!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616))))) (_2!28009 (h!55310 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))))

(assert (=> b!4428802 (forall!9588 (toList!3514 lt!1627753) lambda!154755)))

(declare-fun lt!1628113 () Unit!82465)

(assert (=> b!4428802 (= lt!1628113 lt!1628119)))

(assert (=> b!4428802 (forall!9588 (toList!3514 lt!1627753) lambda!154755)))

(declare-fun lt!1628127 () Unit!82465)

(declare-fun Unit!82518 () Unit!82465)

(assert (=> b!4428802 (= lt!1628127 Unit!82518)))

(declare-fun res!1831481 () Bool)

(assert (=> b!4428802 (= res!1831481 (forall!9588 (_2!28010 (h!55311 (toList!3513 lm!1616))) lambda!154755))))

(declare-fun e!2757635 () Bool)

(assert (=> b!4428802 (=> (not res!1831481) (not e!2757635))))

(assert (=> b!4428802 e!2757635))

(declare-fun lt!1628125 () Unit!82465)

(declare-fun Unit!82519 () Unit!82465)

(assert (=> b!4428802 (= lt!1628125 Unit!82519)))

(declare-fun bm!308205 () Bool)

(assert (=> bm!308205 (= call!308210 (lemmaContainsAllItsOwnKeys!181 lt!1627753))))

(declare-fun b!4428803 () Bool)

(assert (=> b!4428803 (= e!2757635 call!308209)))

(declare-fun b!4428804 () Bool)

(declare-fun e!2757633 () Bool)

(assert (=> b!4428804 (= e!2757633 (invariantList!813 (toList!3514 lt!1628118)))))

(assert (=> d!1343122 e!2757633))

(declare-fun res!1831482 () Bool)

(assert (=> d!1343122 (=> (not res!1831482) (not e!2757633))))

(assert (=> d!1343122 (= res!1831482 (forall!9588 (_2!28010 (h!55311 (toList!3513 lm!1616))) lambda!154756))))

(assert (=> d!1343122 (= lt!1628118 e!2757634)))

(assert (=> d!1343122 (= c!753923 ((_ is Nil!49617) (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(assert (=> d!1343122 (noDuplicateKeys!763 (_2!28010 (h!55311 (toList!3513 lm!1616))))))

(assert (=> d!1343122 (= (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) lt!1627753) lt!1628118)))

(declare-fun b!4428805 () Bool)

(declare-fun res!1831483 () Bool)

(assert (=> b!4428805 (=> (not res!1831483) (not e!2757633))))

(assert (=> b!4428805 (= res!1831483 (forall!9588 (toList!3514 lt!1627753) lambda!154756))))

(declare-fun bm!308206 () Bool)

(assert (=> bm!308206 (= call!308211 (forall!9588 (ite c!753923 (toList!3514 lt!1627753) (toList!3514 lt!1628123)) (ite c!753923 lambda!154753 lambda!154755)))))

(assert (=> b!4428806 (= e!2757634 lt!1627753)))

(declare-fun lt!1628111 () Unit!82465)

(assert (=> b!4428806 (= lt!1628111 call!308210)))

(assert (=> b!4428806 call!308211))

(declare-fun lt!1628126 () Unit!82465)

(assert (=> b!4428806 (= lt!1628126 lt!1628111)))

(assert (=> b!4428806 call!308209))

(declare-fun lt!1628121 () Unit!82465)

(declare-fun Unit!82520 () Unit!82465)

(assert (=> b!4428806 (= lt!1628121 Unit!82520)))

(assert (= (and d!1343122 c!753923) b!4428806))

(assert (= (and d!1343122 (not c!753923)) b!4428802))

(assert (= (and b!4428802 res!1831481) b!4428803))

(assert (= (or b!4428806 b!4428802) bm!308205))

(assert (= (or b!4428806 b!4428803) bm!308204))

(assert (= (or b!4428806 b!4428802) bm!308206))

(assert (= (and d!1343122 res!1831482) b!4428805))

(assert (= (and b!4428805 res!1831483) b!4428804))

(declare-fun m!5112513 () Bool)

(assert (=> b!4428805 m!5112513))

(declare-fun m!5112515 () Bool)

(assert (=> b!4428804 m!5112515))

(declare-fun m!5112517 () Bool)

(assert (=> bm!308206 m!5112517))

(declare-fun m!5112519 () Bool)

(assert (=> bm!308204 m!5112519))

(declare-fun m!5112521 () Bool)

(assert (=> bm!308205 m!5112521))

(declare-fun m!5112523 () Bool)

(assert (=> d!1343122 m!5112523))

(assert (=> d!1343122 m!5111925))

(declare-fun m!5112525 () Bool)

(assert (=> b!4428802 m!5112525))

(declare-fun m!5112527 () Bool)

(assert (=> b!4428802 m!5112527))

(declare-fun m!5112529 () Bool)

(assert (=> b!4428802 m!5112529))

(declare-fun m!5112531 () Bool)

(assert (=> b!4428802 m!5112531))

(declare-fun m!5112533 () Bool)

(assert (=> b!4428802 m!5112533))

(declare-fun m!5112535 () Bool)

(assert (=> b!4428802 m!5112535))

(declare-fun m!5112537 () Bool)

(assert (=> b!4428802 m!5112537))

(declare-fun m!5112539 () Bool)

(assert (=> b!4428802 m!5112539))

(declare-fun m!5112541 () Bool)

(assert (=> b!4428802 m!5112541))

(declare-fun m!5112543 () Bool)

(assert (=> b!4428802 m!5112543))

(declare-fun m!5112545 () Bool)

(assert (=> b!4428802 m!5112545))

(assert (=> b!4428802 m!5112543))

(assert (=> b!4428802 m!5112531))

(assert (=> b!4428802 m!5112533))

(assert (=> b!4428549 d!1343122))

(assert (=> b!4428546 d!1343026))

(declare-fun d!1343124 () Bool)

(declare-fun res!1831484 () Bool)

(declare-fun e!2757636 () Bool)

(assert (=> d!1343124 (=> res!1831484 e!2757636)))

(assert (=> d!1343124 (= res!1831484 (not ((_ is Cons!49617) newBucket!194)))))

(assert (=> d!1343124 (= (noDuplicateKeys!763 newBucket!194) e!2757636)))

(declare-fun b!4428807 () Bool)

(declare-fun e!2757637 () Bool)

(assert (=> b!4428807 (= e!2757636 e!2757637)))

(declare-fun res!1831485 () Bool)

(assert (=> b!4428807 (=> (not res!1831485) (not e!2757637))))

(assert (=> b!4428807 (= res!1831485 (not (containsKey!1142 (t!356679 newBucket!194) (_1!28009 (h!55310 newBucket!194)))))))

(declare-fun b!4428808 () Bool)

(assert (=> b!4428808 (= e!2757637 (noDuplicateKeys!763 (t!356679 newBucket!194)))))

(assert (= (and d!1343124 (not res!1831484)) b!4428807))

(assert (= (and b!4428807 res!1831485) b!4428808))

(declare-fun m!5112547 () Bool)

(assert (=> b!4428807 m!5112547))

(declare-fun m!5112549 () Bool)

(assert (=> b!4428808 m!5112549))

(assert (=> b!4428545 d!1343124))

(declare-fun d!1343126 () Bool)

(declare-fun res!1831486 () Bool)

(declare-fun e!2757638 () Bool)

(assert (=> d!1343126 (=> res!1831486 e!2757638)))

(assert (=> d!1343126 (= res!1831486 ((_ is Nil!49618) (toList!3513 lt!1627771)))))

(assert (=> d!1343126 (= (forall!9586 (toList!3513 lt!1627771) lambda!154646) e!2757638)))

(declare-fun b!4428809 () Bool)

(declare-fun e!2757639 () Bool)

(assert (=> b!4428809 (= e!2757638 e!2757639)))

(declare-fun res!1831487 () Bool)

(assert (=> b!4428809 (=> (not res!1831487) (not e!2757639))))

(assert (=> b!4428809 (= res!1831487 (dynLambda!20856 lambda!154646 (h!55311 (toList!3513 lt!1627771))))))

(declare-fun b!4428810 () Bool)

(assert (=> b!4428810 (= e!2757639 (forall!9586 (t!356680 (toList!3513 lt!1627771)) lambda!154646))))

(assert (= (and d!1343126 (not res!1831486)) b!4428809))

(assert (= (and b!4428809 res!1831487) b!4428810))

(declare-fun b_lambda!143513 () Bool)

(assert (=> (not b_lambda!143513) (not b!4428809)))

(declare-fun m!5112551 () Bool)

(assert (=> b!4428809 m!5112551))

(declare-fun m!5112553 () Bool)

(assert (=> b!4428810 m!5112553))

(assert (=> b!4428543 d!1343126))

(declare-fun d!1343128 () Bool)

(declare-fun e!2757640 () Bool)

(assert (=> d!1343128 e!2757640))

(declare-fun res!1831488 () Bool)

(assert (=> d!1343128 (=> (not res!1831488) (not e!2757640))))

(declare-fun lt!1628130 () ListLongMap!2163)

(assert (=> d!1343128 (= res!1831488 (contains!12135 lt!1628130 (_1!28010 lt!1627762)))))

(declare-fun lt!1628132 () List!49742)

(assert (=> d!1343128 (= lt!1628130 (ListLongMap!2164 lt!1628132))))

(declare-fun lt!1628129 () Unit!82465)

(declare-fun lt!1628131 () Unit!82465)

(assert (=> d!1343128 (= lt!1628129 lt!1628131)))

(assert (=> d!1343128 (= (getValueByKey!728 lt!1628132 (_1!28010 lt!1627762)) (Some!10741 (_2!28010 lt!1627762)))))

(assert (=> d!1343128 (= lt!1628131 (lemmaContainsTupThenGetReturnValue!463 lt!1628132 (_1!28010 lt!1627762) (_2!28010 lt!1627762)))))

(assert (=> d!1343128 (= lt!1628132 (insertStrictlySorted!268 (toList!3513 lm!1616) (_1!28010 lt!1627762) (_2!28010 lt!1627762)))))

(assert (=> d!1343128 (= (+!1110 lm!1616 lt!1627762) lt!1628130)))

(declare-fun b!4428811 () Bool)

(declare-fun res!1831489 () Bool)

(assert (=> b!4428811 (=> (not res!1831489) (not e!2757640))))

(assert (=> b!4428811 (= res!1831489 (= (getValueByKey!728 (toList!3513 lt!1628130) (_1!28010 lt!1627762)) (Some!10741 (_2!28010 lt!1627762))))))

(declare-fun b!4428812 () Bool)

(assert (=> b!4428812 (= e!2757640 (contains!12141 (toList!3513 lt!1628130) lt!1627762))))

(assert (= (and d!1343128 res!1831488) b!4428811))

(assert (= (and b!4428811 res!1831489) b!4428812))

(declare-fun m!5112555 () Bool)

(assert (=> d!1343128 m!5112555))

(declare-fun m!5112557 () Bool)

(assert (=> d!1343128 m!5112557))

(declare-fun m!5112559 () Bool)

(assert (=> d!1343128 m!5112559))

(declare-fun m!5112561 () Bool)

(assert (=> d!1343128 m!5112561))

(declare-fun m!5112563 () Bool)

(assert (=> b!4428811 m!5112563))

(declare-fun m!5112565 () Bool)

(assert (=> b!4428812 m!5112565))

(assert (=> b!4428543 d!1343128))

(declare-fun d!1343130 () Bool)

(assert (=> d!1343130 (forall!9586 (toList!3513 (+!1110 lm!1616 (tuple2!49433 hash!366 newBucket!194))) lambda!154646)))

(declare-fun lt!1628135 () Unit!82465)

(declare-fun choose!28016 (ListLongMap!2163 Int (_ BitVec 64) List!49741) Unit!82465)

(assert (=> d!1343130 (= lt!1628135 (choose!28016 lm!1616 lambda!154646 hash!366 newBucket!194))))

(declare-fun e!2757643 () Bool)

(assert (=> d!1343130 e!2757643))

(declare-fun res!1831492 () Bool)

(assert (=> d!1343130 (=> (not res!1831492) (not e!2757643))))

(assert (=> d!1343130 (= res!1831492 (forall!9586 (toList!3513 lm!1616) lambda!154646))))

(assert (=> d!1343130 (= (addValidProp!407 lm!1616 lambda!154646 hash!366 newBucket!194) lt!1628135)))

(declare-fun b!4428816 () Bool)

(assert (=> b!4428816 (= e!2757643 (dynLambda!20856 lambda!154646 (tuple2!49433 hash!366 newBucket!194)))))

(assert (= (and d!1343130 res!1831492) b!4428816))

(declare-fun b_lambda!143515 () Bool)

(assert (=> (not b_lambda!143515) (not b!4428816)))

(declare-fun m!5112567 () Bool)

(assert (=> d!1343130 m!5112567))

(declare-fun m!5112569 () Bool)

(assert (=> d!1343130 m!5112569))

(declare-fun m!5112571 () Bool)

(assert (=> d!1343130 m!5112571))

(assert (=> d!1343130 m!5111959))

(declare-fun m!5112573 () Bool)

(assert (=> b!4428816 m!5112573))

(assert (=> b!4428543 d!1343130))

(declare-fun d!1343132 () Bool)

(assert (=> d!1343132 (= (apply!11615 lm!1616 hash!366) (get!16174 (getValueByKey!728 (toList!3513 lm!1616) hash!366)))))

(declare-fun bs!759514 () Bool)

(assert (= bs!759514 d!1343132))

(assert (=> bs!759514 m!5112501))

(assert (=> bs!759514 m!5112501))

(declare-fun m!5112575 () Bool)

(assert (=> bs!759514 m!5112575))

(assert (=> b!4428552 d!1343132))

(declare-fun d!1343134 () Bool)

(declare-fun e!2757647 () Bool)

(assert (=> d!1343134 e!2757647))

(declare-fun res!1831495 () Bool)

(assert (=> d!1343134 (=> res!1831495 e!2757647)))

(declare-fun e!2757645 () Bool)

(assert (=> d!1343134 (= res!1831495 e!2757645)))

(declare-fun res!1831494 () Bool)

(assert (=> d!1343134 (=> (not res!1831494) (not e!2757645))))

(declare-fun lt!1628136 () Bool)

(assert (=> d!1343134 (= res!1831494 (not lt!1628136))))

(declare-fun lt!1628143 () Bool)

(assert (=> d!1343134 (= lt!1628136 lt!1628143)))

(declare-fun lt!1628142 () Unit!82465)

(declare-fun e!2757646 () Unit!82465)

(assert (=> d!1343134 (= lt!1628142 e!2757646)))

(declare-fun c!753924 () Bool)

(assert (=> d!1343134 (= c!753924 lt!1628143)))

(assert (=> d!1343134 (= lt!1628143 (containsKey!1144 (toList!3514 lt!1627770) key!3717))))

(assert (=> d!1343134 (= (contains!12134 lt!1627770 key!3717) lt!1628136)))

(declare-fun b!4428817 () Bool)

(declare-fun e!2757644 () Bool)

(assert (=> b!4428817 (= e!2757644 (contains!12140 (keys!16950 lt!1627770) key!3717))))

(declare-fun bm!308207 () Bool)

(declare-fun call!308212 () Bool)

(declare-fun e!2757648 () List!49744)

(assert (=> bm!308207 (= call!308212 (contains!12140 e!2757648 key!3717))))

(declare-fun c!753925 () Bool)

(assert (=> bm!308207 (= c!753925 c!753924)))

(declare-fun b!4428818 () Bool)

(assert (=> b!4428818 false))

(declare-fun lt!1628141 () Unit!82465)

(declare-fun lt!1628137 () Unit!82465)

(assert (=> b!4428818 (= lt!1628141 lt!1628137)))

(assert (=> b!4428818 (containsKey!1144 (toList!3514 lt!1627770) key!3717)))

(assert (=> b!4428818 (= lt!1628137 (lemmaInGetKeysListThenContainsKey!258 (toList!3514 lt!1627770) key!3717))))

(declare-fun e!2757649 () Unit!82465)

(declare-fun Unit!82521 () Unit!82465)

(assert (=> b!4428818 (= e!2757649 Unit!82521)))

(declare-fun b!4428819 () Bool)

(assert (=> b!4428819 (= e!2757647 e!2757644)))

(declare-fun res!1831493 () Bool)

(assert (=> b!4428819 (=> (not res!1831493) (not e!2757644))))

(assert (=> b!4428819 (= res!1831493 (isDefined!8032 (getValueByKey!727 (toList!3514 lt!1627770) key!3717)))))

(declare-fun b!4428820 () Bool)

(assert (=> b!4428820 (= e!2757645 (not (contains!12140 (keys!16950 lt!1627770) key!3717)))))

(declare-fun b!4428821 () Bool)

(declare-fun Unit!82522 () Unit!82465)

(assert (=> b!4428821 (= e!2757649 Unit!82522)))

(declare-fun b!4428822 () Bool)

(declare-fun lt!1628138 () Unit!82465)

(assert (=> b!4428822 (= e!2757646 lt!1628138)))

(declare-fun lt!1628139 () Unit!82465)

(assert (=> b!4428822 (= lt!1628139 (lemmaContainsKeyImpliesGetValueByKeyDefined!635 (toList!3514 lt!1627770) key!3717))))

(assert (=> b!4428822 (isDefined!8032 (getValueByKey!727 (toList!3514 lt!1627770) key!3717))))

(declare-fun lt!1628140 () Unit!82465)

(assert (=> b!4428822 (= lt!1628140 lt!1628139)))

(assert (=> b!4428822 (= lt!1628138 (lemmaInListThenGetKeysListContains!257 (toList!3514 lt!1627770) key!3717))))

(assert (=> b!4428822 call!308212))

(declare-fun b!4428823 () Bool)

(assert (=> b!4428823 (= e!2757648 (keys!16950 lt!1627770))))

(declare-fun b!4428824 () Bool)

(assert (=> b!4428824 (= e!2757648 (getKeysList!260 (toList!3514 lt!1627770)))))

(declare-fun b!4428825 () Bool)

(assert (=> b!4428825 (= e!2757646 e!2757649)))

(declare-fun c!753926 () Bool)

(assert (=> b!4428825 (= c!753926 call!308212)))

(assert (= (and d!1343134 c!753924) b!4428822))

(assert (= (and d!1343134 (not c!753924)) b!4428825))

(assert (= (and b!4428825 c!753926) b!4428818))

(assert (= (and b!4428825 (not c!753926)) b!4428821))

(assert (= (or b!4428822 b!4428825) bm!308207))

(assert (= (and bm!308207 c!753925) b!4428824))

(assert (= (and bm!308207 (not c!753925)) b!4428823))

(assert (= (and d!1343134 res!1831494) b!4428820))

(assert (= (and d!1343134 (not res!1831495)) b!4428819))

(assert (= (and b!4428819 res!1831493) b!4428817))

(declare-fun m!5112577 () Bool)

(assert (=> b!4428818 m!5112577))

(declare-fun m!5112579 () Bool)

(assert (=> b!4428818 m!5112579))

(declare-fun m!5112581 () Bool)

(assert (=> b!4428822 m!5112581))

(declare-fun m!5112583 () Bool)

(assert (=> b!4428822 m!5112583))

(assert (=> b!4428822 m!5112583))

(declare-fun m!5112585 () Bool)

(assert (=> b!4428822 m!5112585))

(declare-fun m!5112587 () Bool)

(assert (=> b!4428822 m!5112587))

(declare-fun m!5112589 () Bool)

(assert (=> b!4428820 m!5112589))

(assert (=> b!4428820 m!5112589))

(declare-fun m!5112591 () Bool)

(assert (=> b!4428820 m!5112591))

(declare-fun m!5112593 () Bool)

(assert (=> b!4428824 m!5112593))

(assert (=> b!4428817 m!5112589))

(assert (=> b!4428817 m!5112589))

(assert (=> b!4428817 m!5112591))

(assert (=> b!4428823 m!5112589))

(assert (=> d!1343134 m!5112577))

(assert (=> b!4428819 m!5112583))

(assert (=> b!4428819 m!5112583))

(assert (=> b!4428819 m!5112585))

(declare-fun m!5112595 () Bool)

(assert (=> bm!308207 m!5112595))

(assert (=> b!4428542 d!1343134))

(declare-fun bs!759515 () Bool)

(declare-fun d!1343136 () Bool)

(assert (= bs!759515 (and d!1343136 d!1343018)))

(declare-fun lambda!154757 () Int)

(assert (=> bs!759515 (= lambda!154757 lambda!154692)))

(declare-fun bs!759516 () Bool)

(assert (= bs!759516 (and d!1343136 d!1342982)))

(assert (=> bs!759516 (not (= lambda!154757 lambda!154649))))

(declare-fun bs!759517 () Bool)

(assert (= bs!759517 (and d!1343136 d!1343112)))

(assert (=> bs!759517 (= lambda!154757 lambda!154749)))

(declare-fun bs!759518 () Bool)

(assert (= bs!759518 (and d!1343136 d!1342988)))

(assert (=> bs!759518 (= lambda!154757 lambda!154652)))

(declare-fun bs!759519 () Bool)

(assert (= bs!759519 (and d!1343136 d!1342996)))

(assert (=> bs!759519 (= lambda!154757 lambda!154653)))

(declare-fun bs!759520 () Bool)

(assert (= bs!759520 (and d!1343136 start!432284)))

(assert (=> bs!759520 (= lambda!154757 lambda!154646)))

(declare-fun bs!759521 () Bool)

(assert (= bs!759521 (and d!1343136 d!1343000)))

(assert (=> bs!759521 (= lambda!154757 lambda!154654)))

(declare-fun lt!1628144 () ListMap!2757)

(assert (=> d!1343136 (invariantList!813 (toList!3514 lt!1628144))))

(declare-fun e!2757650 () ListMap!2757)

(assert (=> d!1343136 (= lt!1628144 e!2757650)))

(declare-fun c!753927 () Bool)

(assert (=> d!1343136 (= c!753927 ((_ is Cons!49618) (toList!3513 lm!1616)))))

(assert (=> d!1343136 (forall!9586 (toList!3513 lm!1616) lambda!154757)))

(assert (=> d!1343136 (= (extractMap!824 (toList!3513 lm!1616)) lt!1628144)))

(declare-fun b!4428826 () Bool)

(assert (=> b!4428826 (= e!2757650 (addToMapMapFromBucket!400 (_2!28010 (h!55311 (toList!3513 lm!1616))) (extractMap!824 (t!356680 (toList!3513 lm!1616)))))))

(declare-fun b!4428827 () Bool)

(assert (=> b!4428827 (= e!2757650 (ListMap!2758 Nil!49617))))

(assert (= (and d!1343136 c!753927) b!4428826))

(assert (= (and d!1343136 (not c!753927)) b!4428827))

(declare-fun m!5112597 () Bool)

(assert (=> d!1343136 m!5112597))

(declare-fun m!5112599 () Bool)

(assert (=> d!1343136 m!5112599))

(declare-fun m!5112601 () Bool)

(assert (=> b!4428826 m!5112601))

(assert (=> b!4428826 m!5112601))

(declare-fun m!5112603 () Bool)

(assert (=> b!4428826 m!5112603))

(assert (=> b!4428542 d!1343136))

(declare-fun bs!759522 () Bool)

(declare-fun d!1343138 () Bool)

(assert (= bs!759522 (and d!1343138 d!1343018)))

(declare-fun lambda!154760 () Int)

(assert (=> bs!759522 (= lambda!154760 lambda!154692)))

(declare-fun bs!759523 () Bool)

(assert (= bs!759523 (and d!1343138 d!1342982)))

(assert (=> bs!759523 (not (= lambda!154760 lambda!154649))))

(declare-fun bs!759524 () Bool)

(assert (= bs!759524 (and d!1343138 d!1343136)))

(assert (=> bs!759524 (= lambda!154760 lambda!154757)))

(declare-fun bs!759525 () Bool)

(assert (= bs!759525 (and d!1343138 d!1343112)))

(assert (=> bs!759525 (= lambda!154760 lambda!154749)))

(declare-fun bs!759526 () Bool)

(assert (= bs!759526 (and d!1343138 d!1342988)))

(assert (=> bs!759526 (= lambda!154760 lambda!154652)))

(declare-fun bs!759527 () Bool)

(assert (= bs!759527 (and d!1343138 d!1342996)))

(assert (=> bs!759527 (= lambda!154760 lambda!154653)))

(declare-fun bs!759528 () Bool)

(assert (= bs!759528 (and d!1343138 start!432284)))

(assert (=> bs!759528 (= lambda!154760 lambda!154646)))

(declare-fun bs!759529 () Bool)

(assert (= bs!759529 (and d!1343138 d!1343000)))

(assert (=> bs!759529 (= lambda!154760 lambda!154654)))

(assert (=> d!1343138 (contains!12134 (extractMap!824 (toList!3513 lm!1616)) key!3717)))

(declare-fun lt!1628147 () Unit!82465)

(declare-fun choose!28017 (ListLongMap!2163 K!10980 Hashable!5157) Unit!82465)

(assert (=> d!1343138 (= lt!1628147 (choose!28017 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1343138 (forall!9586 (toList!3513 lm!1616) lambda!154760)))

(assert (=> d!1343138 (= (lemmaExtractTailMapContainsThenExtractMapDoes!50 lm!1616 key!3717 hashF!1220) lt!1628147)))

(declare-fun bs!759530 () Bool)

(assert (= bs!759530 d!1343138))

(assert (=> bs!759530 m!5111993))

(assert (=> bs!759530 m!5111993))

(declare-fun m!5112605 () Bool)

(assert (=> bs!759530 m!5112605))

(declare-fun m!5112607 () Bool)

(assert (=> bs!759530 m!5112607))

(declare-fun m!5112609 () Bool)

(assert (=> bs!759530 m!5112609))

(assert (=> b!4428553 d!1343138))

(declare-fun tp!1333370 () Bool)

(declare-fun e!2757653 () Bool)

(declare-fun b!4428832 () Bool)

(assert (=> b!4428832 (= e!2757653 (and tp_is_empty!26299 tp_is_empty!26297 tp!1333370))))

(assert (=> b!4428547 (= tp!1333358 e!2757653)))

(assert (= (and b!4428547 ((_ is Cons!49617) (t!356679 newBucket!194))) b!4428832))

(declare-fun b!4428837 () Bool)

(declare-fun e!2757656 () Bool)

(declare-fun tp!1333375 () Bool)

(declare-fun tp!1333376 () Bool)

(assert (=> b!4428837 (= e!2757656 (and tp!1333375 tp!1333376))))

(assert (=> b!4428537 (= tp!1333357 e!2757656)))

(assert (= (and b!4428537 ((_ is Cons!49618) (toList!3513 lm!1616))) b!4428837))

(declare-fun b_lambda!143517 () Bool)

(assert (= b_lambda!143513 (or start!432284 b_lambda!143517)))

(declare-fun bs!759531 () Bool)

(declare-fun d!1343140 () Bool)

(assert (= bs!759531 (and d!1343140 start!432284)))

(assert (=> bs!759531 (= (dynLambda!20856 lambda!154646 (h!55311 (toList!3513 lt!1627771))) (noDuplicateKeys!763 (_2!28010 (h!55311 (toList!3513 lt!1627771)))))))

(declare-fun m!5112611 () Bool)

(assert (=> bs!759531 m!5112611))

(assert (=> b!4428809 d!1343140))

(declare-fun b_lambda!143519 () Bool)

(assert (= b_lambda!143515 (or start!432284 b_lambda!143519)))

(declare-fun bs!759532 () Bool)

(declare-fun d!1343142 () Bool)

(assert (= bs!759532 (and d!1343142 start!432284)))

(assert (=> bs!759532 (= (dynLambda!20856 lambda!154646 (tuple2!49433 hash!366 newBucket!194)) (noDuplicateKeys!763 (_2!28010 (tuple2!49433 hash!366 newBucket!194))))))

(declare-fun m!5112613 () Bool)

(assert (=> bs!759532 m!5112613))

(assert (=> b!4428816 d!1343142))

(declare-fun b_lambda!143521 () Bool)

(assert (= b_lambda!143501 (or start!432284 b_lambda!143521)))

(declare-fun bs!759533 () Bool)

(declare-fun d!1343144 () Bool)

(assert (= bs!759533 (and d!1343144 start!432284)))

(assert (=> bs!759533 (= (dynLambda!20856 lambda!154646 (h!55311 (toList!3513 lm!1616))) (noDuplicateKeys!763 (_2!28010 (h!55311 (toList!3513 lm!1616)))))))

(assert (=> bs!759533 m!5111925))

(assert (=> b!4428675 d!1343144))

(check-sat (not d!1343098) (not b!4428805) (not d!1343018) (not b!4428626) (not b!4428811) (not d!1343094) (not d!1342996) (not b!4428767) (not d!1343132) (not d!1343092) (not b!4428676) (not b!4428772) (not b!4428788) (not b!4428779) (not b!4428832) (not b!4428807) (not bs!759532) (not d!1342988) (not d!1343122) (not d!1343000) (not b!4428624) (not d!1343030) (not bm!308203) (not bm!308205) (not b!4428622) (not b!4428636) (not bm!308202) (not d!1343014) (not d!1343114) (not d!1342992) (not b!4428795) tp_is_empty!26299 (not b!4428808) (not b!4428780) (not b!4428802) (not d!1343096) (not d!1343102) (not b!4428771) (not b!4428817) (not d!1343116) (not b!4428797) (not d!1343002) (not b!4428766) (not b!4428570) (not bm!308201) (not b!4428820) (not b!4428778) (not d!1343128) (not b!4428819) (not d!1343130) tp_is_empty!26297 (not b!4428625) (not b!4428562) (not b!4428824) (not b!4428804) (not d!1342994) (not b_lambda!143519) (not b!4428818) (not b!4428764) (not b!4428621) (not d!1343104) (not b!4428777) (not b!4428810) (not d!1343112) (not b!4428619) (not b!4428572) (not b!4428837) (not b_lambda!143521) (not b!4428620) (not d!1343118) (not bs!759533) (not d!1343138) (not bm!308207) (not d!1342990) (not d!1343120) (not b!4428812) (not b!4428786) (not b!4428568) (not bm!308187) (not bm!308206) (not d!1342986) (not b_lambda!143517) (not b!4428822) (not d!1343134) (not d!1343136) (not b!4428826) (not d!1343110) (not d!1343032) (not bs!759531) (not b!4428563) (not bm!308204) (not b!4428637) (not b!4428823) (not d!1342982))
(check-sat)
