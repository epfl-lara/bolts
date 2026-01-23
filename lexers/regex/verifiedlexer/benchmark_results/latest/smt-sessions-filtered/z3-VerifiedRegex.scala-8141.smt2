; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419156 () Bool)

(assert start!419156)

(declare-fun b!4343964 () Bool)

(declare-fun res!1783151 () Bool)

(declare-fun e!2703212 () Bool)

(assert (=> b!4343964 (=> (not res!1783151) (not e!2703212))))

(declare-datatypes ((V!10356 0))(
  ( (V!10357 (val!16359 Int)) )
))
(declare-datatypes ((K!10110 0))(
  ( (K!10111 (val!16360 Int)) )
))
(declare-datatypes ((tuple2!48038 0))(
  ( (tuple2!48039 (_1!27313 K!10110) (_2!27313 V!10356)) )
))
(declare-datatypes ((List!48877 0))(
  ( (Nil!48753) (Cons!48753 (h!54270 tuple2!48038) (t!355797 List!48877)) )
))
(declare-datatypes ((tuple2!48040 0))(
  ( (tuple2!48041 (_1!27314 (_ BitVec 64)) (_2!27314 List!48877)) )
))
(declare-datatypes ((List!48878 0))(
  ( (Nil!48754) (Cons!48754 (h!54271 tuple2!48040) (t!355798 List!48878)) )
))
(declare-datatypes ((ListLongMap!1467 0))(
  ( (ListLongMap!1468 (toList!2817 List!48878)) )
))
(declare-fun lt!1557302 () ListLongMap!1467)

(declare-fun lambda!137579 () Int)

(declare-fun forall!9003 (List!48878 Int) Bool)

(assert (=> b!4343964 (= res!1783151 (forall!9003 (toList!2817 lt!1557302) lambda!137579))))

(declare-fun b!4343966 () Bool)

(declare-fun res!1783154 () Bool)

(declare-fun e!2703210 () Bool)

(assert (=> b!4343966 (=> (not res!1783154) (not e!2703210))))

(declare-fun lm!1707 () ListLongMap!1467)

(declare-fun key!3918 () K!10110)

(declare-datatypes ((ListMap!2061 0))(
  ( (ListMap!2062 (toList!2818 List!48877)) )
))
(declare-fun contains!10860 (ListMap!2061 K!10110) Bool)

(declare-fun extractMap!476 (List!48878) ListMap!2061)

(assert (=> b!4343966 (= res!1783154 (contains!10860 (extractMap!476 (toList!2817 lm!1707)) key!3918))))

(declare-fun b!4343967 () Bool)

(declare-fun res!1783167 () Bool)

(declare-fun e!2703219 () Bool)

(assert (=> b!4343967 (=> res!1783167 e!2703219)))

(declare-fun newBucket!200 () List!48877)

(declare-fun noDuplicateKeys!417 (List!48877) Bool)

(assert (=> b!4343967 (= res!1783167 (not (noDuplicateKeys!417 newBucket!200)))))

(declare-fun b!4343968 () Bool)

(declare-fun e!2703220 () Bool)

(declare-fun tp!1329345 () Bool)

(assert (=> b!4343968 (= e!2703220 tp!1329345)))

(declare-fun b!4343969 () Bool)

(declare-fun res!1783160 () Bool)

(assert (=> b!4343969 (=> (not res!1783160) (not e!2703210))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10861 (ListLongMap!1467 (_ BitVec 64)) Bool)

(assert (=> b!4343969 (= res!1783160 (contains!10861 lm!1707 hash!377))))

(declare-fun b!4343970 () Bool)

(declare-fun tp_is_empty!24907 () Bool)

(declare-fun tp!1329346 () Bool)

(declare-fun e!2703211 () Bool)

(declare-fun tp_is_empty!24905 () Bool)

(assert (=> b!4343970 (= e!2703211 (and tp_is_empty!24905 tp_is_empty!24907 tp!1329346))))

(declare-fun b!4343971 () Bool)

(declare-fun res!1783157 () Bool)

(assert (=> b!4343971 (=> (not res!1783157) (not e!2703210))))

(declare-datatypes ((Hashable!4809 0))(
  ( (HashableExt!4808 (__x!30512 Int)) )
))
(declare-fun hashF!1247 () Hashable!4809)

(declare-fun allKeysSameHash!375 (List!48877 (_ BitVec 64) Hashable!4809) Bool)

(assert (=> b!4343971 (= res!1783157 (allKeysSameHash!375 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4343972 () Bool)

(declare-fun e!2703218 () Bool)

(declare-fun e!2703215 () Bool)

(assert (=> b!4343972 (= e!2703218 e!2703215)))

(declare-fun res!1783165 () Bool)

(assert (=> b!4343972 (=> res!1783165 e!2703215)))

(assert (=> b!4343972 (= res!1783165 (not (forall!9003 (toList!2817 lm!1707) lambda!137579)))))

(declare-fun e!2703213 () Bool)

(assert (=> b!4343972 e!2703213))

(declare-fun res!1783164 () Bool)

(assert (=> b!4343972 (=> (not res!1783164) (not e!2703213))))

(declare-fun lt!1557280 () List!48877)

(declare-fun lt!1557285 () List!48877)

(assert (=> b!4343972 (= res!1783164 (= lt!1557280 lt!1557285))))

(declare-fun lt!1557297 () ListLongMap!1467)

(declare-fun +!505 (ListLongMap!1467 tuple2!48040) ListLongMap!1467)

(assert (=> b!4343972 (= lt!1557297 (+!505 lm!1707 (tuple2!48041 hash!377 lt!1557280)))))

(declare-fun tail!6915 (List!48877) List!48877)

(assert (=> b!4343972 (= lt!1557280 (tail!6915 newBucket!200))))

(declare-fun e!2703217 () Bool)

(assert (=> b!4343972 e!2703217))

(declare-fun res!1783161 () Bool)

(assert (=> b!4343972 (=> (not res!1783161) (not e!2703217))))

(declare-fun lt!1557298 () ListMap!2061)

(declare-fun lt!1557295 () ListMap!2061)

(declare-fun eq!207 (ListMap!2061 ListMap!2061) Bool)

(assert (=> b!4343972 (= res!1783161 (eq!207 lt!1557298 lt!1557295))))

(declare-fun lt!1557282 () ListMap!2061)

(declare-fun lt!1557300 () tuple2!48038)

(declare-fun +!506 (ListMap!2061 tuple2!48038) ListMap!2061)

(assert (=> b!4343972 (= lt!1557295 (+!506 lt!1557282 lt!1557300))))

(declare-fun lt!1557292 () ListMap!2061)

(declare-fun addToMapMapFromBucket!125 (List!48877 ListMap!2061) ListMap!2061)

(assert (=> b!4343972 (= lt!1557282 (addToMapMapFromBucket!125 lt!1557285 lt!1557292))))

(declare-datatypes ((Unit!70177 0))(
  ( (Unit!70178) )
))
(declare-fun lt!1557296 () Unit!70177)

(declare-fun newValue!99 () V!10356)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!36 (ListMap!2061 K!10110 V!10356 List!48877) Unit!70177)

(assert (=> b!4343972 (= lt!1557296 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!36 lt!1557292 key!3918 newValue!99 lt!1557285))))

(declare-fun lt!1557286 () ListMap!2061)

(assert (=> b!4343972 (= lt!1557286 lt!1557298)))

(assert (=> b!4343972 (= lt!1557298 (addToMapMapFromBucket!125 lt!1557285 (+!506 lt!1557292 lt!1557300)))))

(declare-fun lt!1557289 () ListMap!2061)

(assert (=> b!4343972 (= lt!1557289 lt!1557286)))

(declare-fun lt!1557283 () List!48877)

(assert (=> b!4343972 (= lt!1557286 (addToMapMapFromBucket!125 lt!1557283 lt!1557292))))

(assert (=> b!4343972 (= lt!1557289 (addToMapMapFromBucket!125 newBucket!200 lt!1557292))))

(assert (=> b!4343972 (= lt!1557289 (extractMap!476 (toList!2817 lt!1557302)))))

(assert (=> b!4343972 (= lt!1557292 (extractMap!476 (t!355798 (toList!2817 lm!1707))))))

(declare-fun b!4343973 () Bool)

(declare-fun res!1783159 () Bool)

(assert (=> b!4343973 (=> res!1783159 e!2703215)))

(assert (=> b!4343973 (= res!1783159 (not (allKeysSameHash!375 lt!1557280 hash!377 hashF!1247)))))

(declare-fun b!4343974 () Bool)

(declare-fun e!2703216 () Bool)

(assert (=> b!4343974 (= e!2703215 e!2703216)))

(declare-fun res!1783166 () Bool)

(assert (=> b!4343974 (=> res!1783166 e!2703216)))

(assert (=> b!4343974 (= res!1783166 (not (noDuplicateKeys!417 lt!1557280)))))

(declare-fun lt!1557284 () tuple2!48040)

(declare-fun lt!1557291 () Unit!70177)

(declare-fun forallContained!1653 (List!48878 Int tuple2!48040) Unit!70177)

(assert (=> b!4343974 (= lt!1557291 (forallContained!1653 (toList!2817 lm!1707) lambda!137579 lt!1557284))))

(declare-fun lt!1557301 () (_ BitVec 64))

(assert (=> b!4343974 (contains!10861 lm!1707 lt!1557301)))

(declare-fun lt!1557287 () Unit!70177)

(declare-fun lemmaInGenMapThenLongMapContainsHash!52 (ListLongMap!1467 K!10110 Hashable!4809) Unit!70177)

(assert (=> b!4343974 (= lt!1557287 (lemmaInGenMapThenLongMapContainsHash!52 lm!1707 key!3918 hashF!1247))))

(declare-fun b!4343975 () Bool)

(assert (=> b!4343975 (= e!2703210 (not e!2703219))))

(declare-fun res!1783156 () Bool)

(assert (=> b!4343975 (=> res!1783156 e!2703219)))

(assert (=> b!4343975 (= res!1783156 (not (= newBucket!200 lt!1557283)))))

(assert (=> b!4343975 (= lt!1557283 (Cons!48753 lt!1557300 lt!1557285))))

(declare-fun lt!1557281 () List!48877)

(declare-fun removePairForKey!387 (List!48877 K!10110) List!48877)

(assert (=> b!4343975 (= lt!1557285 (removePairForKey!387 lt!1557281 key!3918))))

(assert (=> b!4343975 (= lt!1557300 (tuple2!48039 key!3918 newValue!99))))

(declare-fun lt!1557294 () Unit!70177)

(assert (=> b!4343975 (= lt!1557294 (forallContained!1653 (toList!2817 lm!1707) lambda!137579 lt!1557284))))

(declare-fun contains!10862 (List!48878 tuple2!48040) Bool)

(assert (=> b!4343975 (contains!10862 (toList!2817 lm!1707) lt!1557284)))

(assert (=> b!4343975 (= lt!1557284 (tuple2!48041 hash!377 lt!1557281))))

(declare-fun lt!1557293 () Unit!70177)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!264 (List!48878 (_ BitVec 64) List!48877) Unit!70177)

(assert (=> b!4343975 (= lt!1557293 (lemmaGetValueByKeyImpliesContainsTuple!264 (toList!2817 lm!1707) hash!377 lt!1557281))))

(declare-fun apply!11269 (ListLongMap!1467 (_ BitVec 64)) List!48877)

(assert (=> b!4343975 (= lt!1557281 (apply!11269 lm!1707 hash!377))))

(declare-fun b!4343976 () Bool)

(declare-fun res!1783153 () Bool)

(declare-fun e!2703214 () Bool)

(assert (=> b!4343976 (=> (not res!1783153) (not e!2703214))))

(declare-fun allKeysSameHashInMap!521 (ListLongMap!1467 Hashable!4809) Bool)

(assert (=> b!4343976 (= res!1783153 (allKeysSameHashInMap!521 lm!1707 hashF!1247))))

(declare-fun res!1783158 () Bool)

(assert (=> start!419156 (=> (not res!1783158) (not e!2703214))))

(assert (=> start!419156 (= res!1783158 (forall!9003 (toList!2817 lm!1707) lambda!137579))))

(assert (=> start!419156 e!2703214))

(assert (=> start!419156 e!2703211))

(assert (=> start!419156 true))

(declare-fun inv!64296 (ListLongMap!1467) Bool)

(assert (=> start!419156 (and (inv!64296 lm!1707) e!2703220)))

(assert (=> start!419156 tp_is_empty!24905))

(assert (=> start!419156 tp_is_empty!24907))

(declare-fun b!4343965 () Bool)

(assert (=> b!4343965 (= e!2703214 e!2703210)))

(declare-fun res!1783155 () Bool)

(assert (=> b!4343965 (=> (not res!1783155) (not e!2703210))))

(assert (=> b!4343965 (= res!1783155 (= lt!1557301 hash!377))))

(declare-fun hash!1380 (Hashable!4809 K!10110) (_ BitVec 64))

(assert (=> b!4343965 (= lt!1557301 (hash!1380 hashF!1247 key!3918))))

(declare-fun b!4343977 () Bool)

(declare-fun res!1783163 () Bool)

(assert (=> b!4343977 (=> res!1783163 e!2703216)))

(assert (=> b!4343977 (= res!1783163 (not (forall!9003 (toList!2817 lm!1707) lambda!137579)))))

(declare-fun b!4343978 () Bool)

(assert (=> b!4343978 (= e!2703216 true)))

(declare-fun lt!1557288 () Unit!70177)

(assert (=> b!4343978 (= lt!1557288 (forallContained!1653 (toList!2817 lm!1707) lambda!137579 lt!1557284))))

(declare-fun b!4343979 () Bool)

(declare-fun lt!1557290 () tuple2!48040)

(get-info :version)

(assert (=> b!4343979 (= e!2703212 (or (not ((_ is Cons!48754) (toList!2817 lm!1707))) (not (= (_1!27314 (h!54271 (toList!2817 lm!1707))) hash!377)) (= lt!1557302 (ListLongMap!1468 (Cons!48754 lt!1557290 (t!355798 (toList!2817 lm!1707)))))))))

(declare-fun b!4343980 () Bool)

(assert (=> b!4343980 (= e!2703219 e!2703218)))

(declare-fun res!1783152 () Bool)

(assert (=> b!4343980 (=> res!1783152 e!2703218)))

(assert (=> b!4343980 (= res!1783152 (or (not ((_ is Cons!48754) (toList!2817 lm!1707))) (not (= (_1!27314 (h!54271 (toList!2817 lm!1707))) hash!377))))))

(assert (=> b!4343980 e!2703212))

(declare-fun res!1783162 () Bool)

(assert (=> b!4343980 (=> (not res!1783162) (not e!2703212))))

(assert (=> b!4343980 (= res!1783162 (forall!9003 (toList!2817 lt!1557302) lambda!137579))))

(assert (=> b!4343980 (= lt!1557302 (+!505 lm!1707 lt!1557290))))

(assert (=> b!4343980 (= lt!1557290 (tuple2!48041 hash!377 newBucket!200))))

(declare-fun lt!1557299 () Unit!70177)

(declare-fun addValidProp!71 (ListLongMap!1467 Int (_ BitVec 64) List!48877) Unit!70177)

(assert (=> b!4343980 (= lt!1557299 (addValidProp!71 lm!1707 lambda!137579 hash!377 newBucket!200))))

(assert (=> b!4343980 (forall!9003 (toList!2817 lm!1707) lambda!137579)))

(declare-fun b!4343981 () Bool)

(assert (=> b!4343981 (= e!2703213 (= lt!1557282 (extractMap!476 (toList!2817 lt!1557297))))))

(declare-fun b!4343982 () Bool)

(assert (=> b!4343982 (= e!2703217 (eq!207 lt!1557286 lt!1557295))))

(assert (= (and start!419156 res!1783158) b!4343976))

(assert (= (and b!4343976 res!1783153) b!4343965))

(assert (= (and b!4343965 res!1783155) b!4343971))

(assert (= (and b!4343971 res!1783157) b!4343966))

(assert (= (and b!4343966 res!1783154) b!4343969))

(assert (= (and b!4343969 res!1783160) b!4343975))

(assert (= (and b!4343975 (not res!1783156)) b!4343967))

(assert (= (and b!4343967 (not res!1783167)) b!4343980))

(assert (= (and b!4343980 res!1783162) b!4343964))

(assert (= (and b!4343964 res!1783151) b!4343979))

(assert (= (and b!4343980 (not res!1783152)) b!4343972))

(assert (= (and b!4343972 res!1783161) b!4343982))

(assert (= (and b!4343972 res!1783164) b!4343981))

(assert (= (and b!4343972 (not res!1783165)) b!4343973))

(assert (= (and b!4343973 (not res!1783159)) b!4343974))

(assert (= (and b!4343974 (not res!1783166)) b!4343977))

(assert (= (and b!4343977 (not res!1783163)) b!4343978))

(assert (= (and start!419156 ((_ is Cons!48753) newBucket!200)) b!4343970))

(assert (= start!419156 b!4343968))

(declare-fun m!4949649 () Bool)

(assert (=> b!4343971 m!4949649))

(declare-fun m!4949651 () Bool)

(assert (=> b!4343980 m!4949651))

(declare-fun m!4949653 () Bool)

(assert (=> b!4343980 m!4949653))

(declare-fun m!4949655 () Bool)

(assert (=> b!4343980 m!4949655))

(declare-fun m!4949657 () Bool)

(assert (=> b!4343980 m!4949657))

(assert (=> start!419156 m!4949657))

(declare-fun m!4949659 () Bool)

(assert (=> start!419156 m!4949659))

(declare-fun m!4949661 () Bool)

(assert (=> b!4343966 m!4949661))

(assert (=> b!4343966 m!4949661))

(declare-fun m!4949663 () Bool)

(assert (=> b!4343966 m!4949663))

(declare-fun m!4949665 () Bool)

(assert (=> b!4343976 m!4949665))

(declare-fun m!4949667 () Bool)

(assert (=> b!4343973 m!4949667))

(declare-fun m!4949669 () Bool)

(assert (=> b!4343974 m!4949669))

(declare-fun m!4949671 () Bool)

(assert (=> b!4343974 m!4949671))

(declare-fun m!4949673 () Bool)

(assert (=> b!4343974 m!4949673))

(declare-fun m!4949675 () Bool)

(assert (=> b!4343974 m!4949675))

(declare-fun m!4949677 () Bool)

(assert (=> b!4343967 m!4949677))

(declare-fun m!4949679 () Bool)

(assert (=> b!4343972 m!4949679))

(declare-fun m!4949681 () Bool)

(assert (=> b!4343972 m!4949681))

(declare-fun m!4949683 () Bool)

(assert (=> b!4343972 m!4949683))

(declare-fun m!4949685 () Bool)

(assert (=> b!4343972 m!4949685))

(declare-fun m!4949687 () Bool)

(assert (=> b!4343972 m!4949687))

(assert (=> b!4343972 m!4949679))

(declare-fun m!4949689 () Bool)

(assert (=> b!4343972 m!4949689))

(declare-fun m!4949691 () Bool)

(assert (=> b!4343972 m!4949691))

(declare-fun m!4949693 () Bool)

(assert (=> b!4343972 m!4949693))

(declare-fun m!4949695 () Bool)

(assert (=> b!4343972 m!4949695))

(declare-fun m!4949697 () Bool)

(assert (=> b!4343972 m!4949697))

(declare-fun m!4949699 () Bool)

(assert (=> b!4343972 m!4949699))

(declare-fun m!4949701 () Bool)

(assert (=> b!4343972 m!4949701))

(assert (=> b!4343972 m!4949657))

(declare-fun m!4949703 () Bool)

(assert (=> b!4343965 m!4949703))

(declare-fun m!4949705 () Bool)

(assert (=> b!4343975 m!4949705))

(assert (=> b!4343975 m!4949671))

(declare-fun m!4949707 () Bool)

(assert (=> b!4343975 m!4949707))

(declare-fun m!4949709 () Bool)

(assert (=> b!4343975 m!4949709))

(declare-fun m!4949711 () Bool)

(assert (=> b!4343975 m!4949711))

(declare-fun m!4949713 () Bool)

(assert (=> b!4343981 m!4949713))

(declare-fun m!4949715 () Bool)

(assert (=> b!4343969 m!4949715))

(declare-fun m!4949717 () Bool)

(assert (=> b!4343982 m!4949717))

(assert (=> b!4343964 m!4949651))

(assert (=> b!4343978 m!4949671))

(assert (=> b!4343977 m!4949657))

(check-sat (not b!4343969) (not b!4343971) (not b!4343977) (not b!4343976) (not b!4343973) (not b!4343968) (not b!4343964) (not b!4343970) (not b!4343981) (not b!4343967) (not b!4343974) (not b!4343978) (not b!4343975) (not b!4343980) (not b!4343966) (not b!4343982) (not b!4343972) tp_is_empty!24907 (not start!419156) (not b!4343965) tp_is_empty!24905)
(check-sat)
