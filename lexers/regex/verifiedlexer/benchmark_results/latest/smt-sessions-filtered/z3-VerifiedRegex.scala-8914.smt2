; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478296 () Bool)

(assert start!478296)

(declare-fun b!4708269 () Bool)

(declare-fun res!1989335 () Bool)

(declare-fun e!2936821 () Bool)

(assert (=> b!4708269 (=> (not res!1989335) (not e!2936821))))

(declare-datatypes ((K!13975 0))(
  ( (K!13976 (val!19451 Int)) )
))
(declare-datatypes ((V!14221 0))(
  ( (V!14222 (val!19452 Int)) )
))
(declare-datatypes ((tuple2!54114 0))(
  ( (tuple2!54115 (_1!30351 K!13975) (_2!30351 V!14221)) )
))
(declare-datatypes ((List!52741 0))(
  ( (Nil!52617) (Cons!52617 (h!58918 tuple2!54114) (t!359973 List!52741)) )
))
(declare-datatypes ((tuple2!54116 0))(
  ( (tuple2!54117 (_1!30352 (_ BitVec 64)) (_2!30352 List!52741)) )
))
(declare-datatypes ((List!52742 0))(
  ( (Nil!52618) (Cons!52618 (h!58919 tuple2!54116) (t!359974 List!52742)) )
))
(declare-datatypes ((ListLongMap!4279 0))(
  ( (ListLongMap!4280 (toList!5749 List!52742)) )
))
(declare-fun lm!2023 () ListLongMap!4279)

(declare-datatypes ((Hashable!6299 0))(
  ( (HashableExt!6298 (__x!32002 Int)) )
))
(declare-fun hashF!1323 () Hashable!6299)

(declare-fun allKeysSameHashInMap!1844 (ListLongMap!4279 Hashable!6299) Bool)

(assert (=> b!4708269 (= res!1989335 (allKeysSameHashInMap!1844 lm!2023 hashF!1323))))

(declare-fun e!2936822 () Bool)

(declare-fun b!4708270 () Bool)

(declare-fun tp_is_empty!31013 () Bool)

(declare-fun tp_is_empty!31015 () Bool)

(declare-fun tp!1347161 () Bool)

(assert (=> b!4708270 (= e!2936822 (and tp_is_empty!31013 tp_is_empty!31015 tp!1347161))))

(declare-fun b!4708271 () Bool)

(declare-fun res!1989341 () Bool)

(assert (=> b!4708271 (=> (not res!1989341) (not e!2936821))))

(declare-fun key!4653 () K!13975)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4246 (Hashable!6299 K!13975) (_ BitVec 64))

(assert (=> b!4708271 (= res!1989341 (= (hash!4246 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708272 () Bool)

(declare-fun tp!1347160 () Bool)

(declare-fun e!2936818 () Bool)

(assert (=> b!4708272 (= e!2936818 (and tp_is_empty!31013 tp_is_empty!31015 tp!1347160))))

(declare-fun b!4708273 () Bool)

(declare-fun e!2936820 () Bool)

(declare-fun tp!1347159 () Bool)

(assert (=> b!4708273 (= e!2936820 tp!1347159)))

(declare-fun b!4708274 () Bool)

(declare-fun res!1989336 () Bool)

(assert (=> b!4708274 (=> (not res!1989336) (not e!2936821))))

(declare-fun oldBucket!34 () List!52741)

(declare-fun head!10116 (List!52742) tuple2!54116)

(assert (=> b!4708274 (= res!1989336 (= (head!10116 (toList!5749 lm!2023)) (tuple2!54117 hash!405 oldBucket!34)))))

(declare-fun b!4708275 () Bool)

(get-info :version)

(assert (=> b!4708275 (= e!2936821 (not (or (and ((_ is Cons!52617) oldBucket!34) (= (_1!30351 (h!58918 oldBucket!34)) key!4653)) (and ((_ is Cons!52617) oldBucket!34) (not (= (_1!30351 (h!58918 oldBucket!34)) key!4653))) ((_ is Nil!52617) oldBucket!34) (not (= (toList!5749 lm!2023) Nil!52618)))))))

(declare-fun e!2936819 () Bool)

(assert (=> b!4708275 e!2936819))

(declare-fun res!1989334 () Bool)

(assert (=> b!4708275 (=> (not res!1989334) (not e!2936819))))

(declare-fun tail!8801 (ListLongMap!4279) ListLongMap!4279)

(assert (=> b!4708275 (= res!1989334 (= (t!359974 (toList!5749 lm!2023)) (toList!5749 (tail!8801 lm!2023))))))

(declare-fun b!4708276 () Bool)

(declare-fun res!1989331 () Bool)

(declare-fun e!2936817 () Bool)

(assert (=> b!4708276 (=> (not res!1989331) (not e!2936817))))

(declare-fun newBucket!218 () List!52741)

(declare-fun removePairForKey!1525 (List!52741 K!13975) List!52741)

(assert (=> b!4708276 (= res!1989331 (= (removePairForKey!1525 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708277 () Bool)

(declare-fun res!1989340 () Bool)

(assert (=> b!4708277 (=> (not res!1989340) (not e!2936817))))

(declare-fun noDuplicateKeys!1930 (List!52741) Bool)

(assert (=> b!4708277 (= res!1989340 (noDuplicateKeys!1930 oldBucket!34))))

(declare-fun b!4708278 () Bool)

(declare-fun res!1989332 () Bool)

(assert (=> b!4708278 (=> (not res!1989332) (not e!2936821))))

(declare-fun allKeysSameHash!1756 (List!52741 (_ BitVec 64) Hashable!6299) Bool)

(assert (=> b!4708278 (= res!1989332 (allKeysSameHash!1756 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708279 () Bool)

(declare-fun res!1989339 () Bool)

(assert (=> b!4708279 (=> (not res!1989339) (not e!2936821))))

(assert (=> b!4708279 (= res!1989339 ((_ is Cons!52618) (toList!5749 lm!2023)))))

(declare-fun b!4708280 () Bool)

(assert (=> b!4708280 (= e!2936817 e!2936821)))

(declare-fun res!1989337 () Bool)

(assert (=> b!4708280 (=> (not res!1989337) (not e!2936821))))

(declare-datatypes ((ListMap!5113 0))(
  ( (ListMap!5114 (toList!5750 List!52741)) )
))
(declare-fun lt!1873278 () ListMap!5113)

(declare-fun contains!15938 (ListMap!5113 K!13975) Bool)

(assert (=> b!4708280 (= res!1989337 (contains!15938 lt!1873278 key!4653))))

(declare-fun extractMap!1956 (List!52742) ListMap!5113)

(assert (=> b!4708280 (= lt!1873278 (extractMap!1956 (toList!5749 lm!2023)))))

(declare-fun b!4708281 () Bool)

(declare-fun res!1989330 () Bool)

(assert (=> b!4708281 (=> (not res!1989330) (not e!2936817))))

(assert (=> b!4708281 (= res!1989330 (noDuplicateKeys!1930 newBucket!218))))

(declare-fun res!1989333 () Bool)

(assert (=> start!478296 (=> (not res!1989333) (not e!2936817))))

(declare-fun lambda!212085 () Int)

(declare-fun forall!11453 (List!52742 Int) Bool)

(assert (=> start!478296 (= res!1989333 (forall!11453 (toList!5749 lm!2023) lambda!212085))))

(assert (=> start!478296 e!2936817))

(declare-fun inv!67849 (ListLongMap!4279) Bool)

(assert (=> start!478296 (and (inv!67849 lm!2023) e!2936820)))

(assert (=> start!478296 tp_is_empty!31013))

(assert (=> start!478296 e!2936818))

(assert (=> start!478296 true))

(assert (=> start!478296 e!2936822))

(declare-fun b!4708282 () Bool)

(declare-fun res!1989338 () Bool)

(assert (=> b!4708282 (=> (not res!1989338) (not e!2936817))))

(assert (=> b!4708282 (= res!1989338 (allKeysSameHash!1756 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708283 () Bool)

(declare-fun addToMapMapFromBucket!1362 (List!52741 ListMap!5113) ListMap!5113)

(assert (=> b!4708283 (= e!2936819 (= lt!1873278 (addToMapMapFromBucket!1362 (_2!30352 (h!58919 (toList!5749 lm!2023))) (extractMap!1956 (t!359974 (toList!5749 lm!2023))))))))

(assert (= (and start!478296 res!1989333) b!4708277))

(assert (= (and b!4708277 res!1989340) b!4708281))

(assert (= (and b!4708281 res!1989330) b!4708276))

(assert (= (and b!4708276 res!1989331) b!4708282))

(assert (= (and b!4708282 res!1989338) b!4708280))

(assert (= (and b!4708280 res!1989337) b!4708271))

(assert (= (and b!4708271 res!1989341) b!4708278))

(assert (= (and b!4708278 res!1989332) b!4708269))

(assert (= (and b!4708269 res!1989335) b!4708274))

(assert (= (and b!4708274 res!1989336) b!4708279))

(assert (= (and b!4708279 res!1989339) b!4708275))

(assert (= (and b!4708275 res!1989334) b!4708283))

(assert (= start!478296 b!4708273))

(assert (= (and start!478296 ((_ is Cons!52617) oldBucket!34)) b!4708272))

(assert (= (and start!478296 ((_ is Cons!52617) newBucket!218)) b!4708270))

(declare-fun m!5632759 () Bool)

(assert (=> b!4708274 m!5632759))

(declare-fun m!5632761 () Bool)

(assert (=> b!4708281 m!5632761))

(declare-fun m!5632763 () Bool)

(assert (=> b!4708280 m!5632763))

(declare-fun m!5632765 () Bool)

(assert (=> b!4708280 m!5632765))

(declare-fun m!5632767 () Bool)

(assert (=> b!4708276 m!5632767))

(declare-fun m!5632769 () Bool)

(assert (=> b!4708278 m!5632769))

(declare-fun m!5632771 () Bool)

(assert (=> b!4708283 m!5632771))

(assert (=> b!4708283 m!5632771))

(declare-fun m!5632773 () Bool)

(assert (=> b!4708283 m!5632773))

(declare-fun m!5632775 () Bool)

(assert (=> b!4708282 m!5632775))

(declare-fun m!5632777 () Bool)

(assert (=> b!4708275 m!5632777))

(declare-fun m!5632779 () Bool)

(assert (=> b!4708269 m!5632779))

(declare-fun m!5632781 () Bool)

(assert (=> start!478296 m!5632781))

(declare-fun m!5632783 () Bool)

(assert (=> start!478296 m!5632783))

(declare-fun m!5632785 () Bool)

(assert (=> b!4708277 m!5632785))

(declare-fun m!5632787 () Bool)

(assert (=> b!4708271 m!5632787))

(check-sat (not b!4708276) (not b!4708277) (not b!4708271) tp_is_empty!31015 (not b!4708280) (not b!4708283) (not b!4708269) (not start!478296) (not b!4708272) (not b!4708275) (not b!4708278) (not b!4708282) (not b!4708274) (not b!4708270) (not b!4708281) (not b!4708273) tp_is_empty!31013)
(check-sat)
