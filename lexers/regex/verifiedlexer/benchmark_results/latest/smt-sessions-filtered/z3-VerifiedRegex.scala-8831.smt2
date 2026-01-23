; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472000 () Bool)

(assert start!472000)

(declare-fun b!4676332 () Bool)

(declare-fun res!1969651 () Bool)

(declare-fun e!2917792 () Bool)

(assert (=> b!4676332 (=> res!1969651 e!2917792)))

(declare-datatypes ((K!13560 0))(
  ( (K!13561 (val!19119 Int)) )
))
(declare-datatypes ((V!13806 0))(
  ( (V!13807 (val!19120 Int)) )
))
(declare-datatypes ((tuple2!53450 0))(
  ( (tuple2!53451 (_1!30019 K!13560) (_2!30019 V!13806)) )
))
(declare-datatypes ((List!52307 0))(
  ( (Nil!52183) (Cons!52183 (h!58382 tuple2!53450) (t!359449 List!52307)) )
))
(declare-fun lt!1836196 () List!52307)

(declare-fun key!4653 () K!13560)

(declare-fun containsKey!2897 (List!52307 K!13560) Bool)

(assert (=> b!4676332 (= res!1969651 (containsKey!2897 lt!1836196 key!4653))))

(declare-fun b!4676333 () Bool)

(declare-fun oldBucket!34 () List!52307)

(assert (=> b!4676333 (= e!2917792 (not (= oldBucket!34 Nil!52183)))))

(declare-fun tp_is_empty!30351 () Bool)

(declare-fun b!4676334 () Bool)

(declare-fun e!2917794 () Bool)

(declare-fun tp!1344647 () Bool)

(declare-fun tp_is_empty!30349 () Bool)

(assert (=> b!4676334 (= e!2917794 (and tp_is_empty!30349 tp_is_empty!30351 tp!1344647))))

(declare-fun b!4676335 () Bool)

(declare-fun res!1969650 () Bool)

(declare-fun e!2917790 () Bool)

(assert (=> b!4676335 (=> (not res!1969650) (not e!2917790))))

(declare-datatypes ((Hashable!6133 0))(
  ( (HashableExt!6132 (__x!31836 Int)) )
))
(declare-fun hashF!1323 () Hashable!6133)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1590 (List!52307 (_ BitVec 64) Hashable!6133) Bool)

(assert (=> b!4676335 (= res!1969650 (allKeysSameHash!1590 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4676336 () Bool)

(declare-fun e!2917793 () Bool)

(declare-fun e!2917797 () Bool)

(assert (=> b!4676336 (= e!2917793 (not e!2917797))))

(declare-fun res!1969652 () Bool)

(assert (=> b!4676336 (=> res!1969652 e!2917797)))

(get-info :version)

(assert (=> b!4676336 (= res!1969652 (or (not ((_ is Cons!52183) oldBucket!34)) (not (= (_1!30019 (h!58382 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!4781 0))(
  ( (ListMap!4782 (toList!5417 List!52307)) )
))
(declare-fun lt!1836195 () ListMap!4781)

(declare-datatypes ((tuple2!53452 0))(
  ( (tuple2!53453 (_1!30020 (_ BitVec 64)) (_2!30020 List!52307)) )
))
(declare-datatypes ((List!52308 0))(
  ( (Nil!52184) (Cons!52184 (h!58383 tuple2!53452) (t!359450 List!52308)) )
))
(declare-datatypes ((ListLongMap!3947 0))(
  ( (ListLongMap!3948 (toList!5418 List!52308)) )
))
(declare-fun lm!2023 () ListLongMap!3947)

(declare-fun lt!1836197 () ListMap!4781)

(declare-fun addToMapMapFromBucket!1196 (List!52307 ListMap!4781) ListMap!4781)

(assert (=> b!4676336 (= lt!1836195 (addToMapMapFromBucket!1196 (_2!30020 (h!58383 (toList!5418 lm!2023))) lt!1836197))))

(declare-fun extractMap!1790 (List!52308) ListMap!4781)

(assert (=> b!4676336 (= lt!1836197 (extractMap!1790 (t!359450 (toList!5418 lm!2023))))))

(declare-fun tail!8374 (ListLongMap!3947) ListLongMap!3947)

(assert (=> b!4676336 (= (t!359450 (toList!5418 lm!2023)) (toList!5418 (tail!8374 lm!2023)))))

(declare-fun b!4676338 () Bool)

(declare-fun e!2917796 () Bool)

(declare-fun e!2917795 () Bool)

(assert (=> b!4676338 (= e!2917796 e!2917795)))

(declare-fun res!1969645 () Bool)

(assert (=> b!4676338 (=> res!1969645 e!2917795)))

(declare-fun newBucket!218 () List!52307)

(declare-fun lt!1836193 () ListMap!4781)

(assert (=> b!4676338 (= res!1969645 (not (= lt!1836193 (addToMapMapFromBucket!1196 newBucket!218 lt!1836197))))))

(assert (=> b!4676338 (= lt!1836193 (addToMapMapFromBucket!1196 lt!1836196 lt!1836197))))

(declare-fun b!4676339 () Bool)

(assert (=> b!4676339 (= e!2917795 e!2917792)))

(declare-fun res!1969659 () Bool)

(assert (=> b!4676339 (=> res!1969659 e!2917792)))

(declare-fun eq!953 (ListMap!4781 ListMap!4781) Bool)

(declare-fun +!2066 (ListMap!4781 tuple2!53450) ListMap!4781)

(assert (=> b!4676339 (= res!1969659 (not (eq!953 (+!2066 lt!1836193 (h!58382 oldBucket!34)) (addToMapMapFromBucket!1196 oldBucket!34 lt!1836197))))))

(declare-fun lt!1836194 () tuple2!53450)

(assert (=> b!4676339 (eq!953 (addToMapMapFromBucket!1196 (Cons!52183 lt!1836194 lt!1836196) lt!1836197) (+!2066 lt!1836193 lt!1836194))))

(declare-datatypes ((Unit!121721 0))(
  ( (Unit!121722) )
))
(declare-fun lt!1836198 () Unit!121721)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!202 (tuple2!53450 List!52307 ListMap!4781) Unit!121721)

(assert (=> b!4676339 (= lt!1836198 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!202 lt!1836194 lt!1836196 lt!1836197))))

(declare-fun head!9819 (List!52307) tuple2!53450)

(assert (=> b!4676339 (= lt!1836194 (head!9819 oldBucket!34))))

(declare-fun b!4676340 () Bool)

(declare-fun res!1969653 () Bool)

(assert (=> b!4676340 (=> res!1969653 e!2917796)))

(assert (=> b!4676340 (= res!1969653 (not (= (extractMap!1790 (Cons!52184 (tuple2!53453 hash!405 lt!1836196) (t!359450 (toList!5418 lm!2023)))) (extractMap!1790 (Cons!52184 (tuple2!53453 hash!405 newBucket!218) (t!359450 (toList!5418 lm!2023)))))))))

(declare-fun b!4676341 () Bool)

(assert (=> b!4676341 (= e!2917797 e!2917796)))

(declare-fun res!1969643 () Bool)

(assert (=> b!4676341 (=> res!1969643 e!2917796)))

(assert (=> b!4676341 (= res!1969643 (not (= lt!1836196 newBucket!218)))))

(declare-fun tail!8375 (List!52307) List!52307)

(assert (=> b!4676341 (= lt!1836196 (tail!8375 oldBucket!34))))

(declare-fun b!4676337 () Bool)

(declare-fun res!1969655 () Bool)

(assert (=> b!4676337 (=> (not res!1969655) (not e!2917793))))

(assert (=> b!4676337 (= res!1969655 (allKeysSameHash!1590 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!1969646 () Bool)

(assert (=> start!472000 (=> (not res!1969646) (not e!2917790))))

(declare-fun lambda!203697 () Int)

(declare-fun forall!11185 (List!52308 Int) Bool)

(assert (=> start!472000 (= res!1969646 (forall!11185 (toList!5418 lm!2023) lambda!203697))))

(assert (=> start!472000 e!2917790))

(declare-fun e!2917798 () Bool)

(declare-fun inv!67434 (ListLongMap!3947) Bool)

(assert (=> start!472000 (and (inv!67434 lm!2023) e!2917798)))

(assert (=> start!472000 tp_is_empty!30349))

(declare-fun e!2917791 () Bool)

(assert (=> start!472000 e!2917791))

(assert (=> start!472000 true))

(assert (=> start!472000 e!2917794))

(declare-fun b!4676342 () Bool)

(declare-fun res!1969656 () Bool)

(assert (=> b!4676342 (=> (not res!1969656) (not e!2917793))))

(assert (=> b!4676342 (= res!1969656 ((_ is Cons!52184) (toList!5418 lm!2023)))))

(declare-fun b!4676343 () Bool)

(declare-fun res!1969647 () Bool)

(assert (=> b!4676343 (=> (not res!1969647) (not e!2917793))))

(declare-fun allKeysSameHashInMap!1678 (ListLongMap!3947 Hashable!6133) Bool)

(assert (=> b!4676343 (= res!1969647 (allKeysSameHashInMap!1678 lm!2023 hashF!1323))))

(declare-fun b!4676344 () Bool)

(declare-fun res!1969644 () Bool)

(assert (=> b!4676344 (=> (not res!1969644) (not e!2917793))))

(declare-fun hash!3930 (Hashable!6133 K!13560) (_ BitVec 64))

(assert (=> b!4676344 (= res!1969644 (= (hash!3930 hashF!1323 key!4653) hash!405))))

(declare-fun b!4676345 () Bool)

(declare-fun res!1969658 () Bool)

(assert (=> b!4676345 (=> (not res!1969658) (not e!2917790))))

(declare-fun noDuplicateKeys!1764 (List!52307) Bool)

(assert (=> b!4676345 (= res!1969658 (noDuplicateKeys!1764 oldBucket!34))))

(declare-fun b!4676346 () Bool)

(declare-fun res!1969648 () Bool)

(assert (=> b!4676346 (=> (not res!1969648) (not e!2917790))))

(assert (=> b!4676346 (= res!1969648 (noDuplicateKeys!1764 newBucket!218))))

(declare-fun tp!1344645 () Bool)

(declare-fun b!4676347 () Bool)

(assert (=> b!4676347 (= e!2917791 (and tp_is_empty!30349 tp_is_empty!30351 tp!1344645))))

(declare-fun b!4676348 () Bool)

(declare-fun tp!1344646 () Bool)

(assert (=> b!4676348 (= e!2917798 tp!1344646)))

(declare-fun b!4676349 () Bool)

(declare-fun res!1969657 () Bool)

(assert (=> b!4676349 (=> (not res!1969657) (not e!2917790))))

(declare-fun removePairForKey!1359 (List!52307 K!13560) List!52307)

(assert (=> b!4676349 (= res!1969657 (= (removePairForKey!1359 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4676350 () Bool)

(declare-fun res!1969654 () Bool)

(assert (=> b!4676350 (=> (not res!1969654) (not e!2917793))))

(declare-fun head!9820 (List!52308) tuple2!53452)

(assert (=> b!4676350 (= res!1969654 (= (head!9820 (toList!5418 lm!2023)) (tuple2!53453 hash!405 oldBucket!34)))))

(declare-fun b!4676351 () Bool)

(assert (=> b!4676351 (= e!2917790 e!2917793)))

(declare-fun res!1969649 () Bool)

(assert (=> b!4676351 (=> (not res!1969649) (not e!2917793))))

(declare-fun contains!15328 (ListMap!4781 K!13560) Bool)

(assert (=> b!4676351 (= res!1969649 (contains!15328 lt!1836195 key!4653))))

(assert (=> b!4676351 (= lt!1836195 (extractMap!1790 (toList!5418 lm!2023)))))

(assert (= (and start!472000 res!1969646) b!4676345))

(assert (= (and b!4676345 res!1969658) b!4676346))

(assert (= (and b!4676346 res!1969648) b!4676349))

(assert (= (and b!4676349 res!1969657) b!4676335))

(assert (= (and b!4676335 res!1969650) b!4676351))

(assert (= (and b!4676351 res!1969649) b!4676344))

(assert (= (and b!4676344 res!1969644) b!4676337))

(assert (= (and b!4676337 res!1969655) b!4676343))

(assert (= (and b!4676343 res!1969647) b!4676350))

(assert (= (and b!4676350 res!1969654) b!4676342))

(assert (= (and b!4676342 res!1969656) b!4676336))

(assert (= (and b!4676336 (not res!1969652)) b!4676341))

(assert (= (and b!4676341 (not res!1969643)) b!4676340))

(assert (= (and b!4676340 (not res!1969653)) b!4676338))

(assert (= (and b!4676338 (not res!1969645)) b!4676339))

(assert (= (and b!4676339 (not res!1969659)) b!4676332))

(assert (= (and b!4676332 (not res!1969651)) b!4676333))

(assert (= start!472000 b!4676348))

(assert (= (and start!472000 ((_ is Cons!52183) oldBucket!34)) b!4676347))

(assert (= (and start!472000 ((_ is Cons!52183) newBucket!218)) b!4676334))

(declare-fun m!5570219 () Bool)

(assert (=> b!4676341 m!5570219))

(declare-fun m!5570221 () Bool)

(assert (=> b!4676345 m!5570221))

(declare-fun m!5570223 () Bool)

(assert (=> b!4676346 m!5570223))

(declare-fun m!5570225 () Bool)

(assert (=> b!4676336 m!5570225))

(declare-fun m!5570227 () Bool)

(assert (=> b!4676336 m!5570227))

(declare-fun m!5570229 () Bool)

(assert (=> b!4676336 m!5570229))

(declare-fun m!5570231 () Bool)

(assert (=> start!472000 m!5570231))

(declare-fun m!5570233 () Bool)

(assert (=> start!472000 m!5570233))

(declare-fun m!5570235 () Bool)

(assert (=> b!4676335 m!5570235))

(declare-fun m!5570237 () Bool)

(assert (=> b!4676349 m!5570237))

(declare-fun m!5570239 () Bool)

(assert (=> b!4676351 m!5570239))

(declare-fun m!5570241 () Bool)

(assert (=> b!4676351 m!5570241))

(declare-fun m!5570243 () Bool)

(assert (=> b!4676350 m!5570243))

(declare-fun m!5570245 () Bool)

(assert (=> b!4676332 m!5570245))

(declare-fun m!5570247 () Bool)

(assert (=> b!4676338 m!5570247))

(declare-fun m!5570249 () Bool)

(assert (=> b!4676338 m!5570249))

(declare-fun m!5570251 () Bool)

(assert (=> b!4676339 m!5570251))

(assert (=> b!4676339 m!5570251))

(declare-fun m!5570253 () Bool)

(assert (=> b!4676339 m!5570253))

(declare-fun m!5570255 () Bool)

(assert (=> b!4676339 m!5570255))

(declare-fun m!5570257 () Bool)

(assert (=> b!4676339 m!5570257))

(declare-fun m!5570259 () Bool)

(assert (=> b!4676339 m!5570259))

(declare-fun m!5570261 () Bool)

(assert (=> b!4676339 m!5570261))

(assert (=> b!4676339 m!5570253))

(declare-fun m!5570263 () Bool)

(assert (=> b!4676339 m!5570263))

(assert (=> b!4676339 m!5570257))

(declare-fun m!5570265 () Bool)

(assert (=> b!4676339 m!5570265))

(assert (=> b!4676339 m!5570263))

(declare-fun m!5570267 () Bool)

(assert (=> b!4676343 m!5570267))

(declare-fun m!5570269 () Bool)

(assert (=> b!4676337 m!5570269))

(declare-fun m!5570271 () Bool)

(assert (=> b!4676344 m!5570271))

(declare-fun m!5570273 () Bool)

(assert (=> b!4676340 m!5570273))

(declare-fun m!5570275 () Bool)

(assert (=> b!4676340 m!5570275))

(check-sat (not b!4676335) (not b!4676350) (not b!4676345) (not b!4676348) (not b!4676338) (not b!4676343) (not b!4676347) (not b!4676344) (not b!4676346) (not start!472000) tp_is_empty!30351 (not b!4676351) (not b!4676337) (not b!4676349) (not b!4676340) tp_is_empty!30349 (not b!4676341) (not b!4676334) (not b!4676339) (not b!4676332) (not b!4676336))
(check-sat)
