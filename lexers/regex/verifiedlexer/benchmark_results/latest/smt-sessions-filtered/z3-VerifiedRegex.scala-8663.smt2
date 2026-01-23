; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461432 () Bool)

(assert start!461432)

(declare-fun b!4613552 () Bool)

(declare-fun e!2877763 () Bool)

(assert (=> b!4613552 (= e!2877763 true)))

(declare-fun lt!1768609 () Bool)

(declare-datatypes ((K!12720 0))(
  ( (K!12721 (val!18447 Int)) )
))
(declare-datatypes ((V!12966 0))(
  ( (V!12967 (val!18448 Int)) )
))
(declare-datatypes ((tuple2!52158 0))(
  ( (tuple2!52159 (_1!29373 K!12720) (_2!29373 V!12966)) )
))
(declare-datatypes ((List!51457 0))(
  ( (Nil!51333) (Cons!51333 (h!57337 tuple2!52158) (t!358453 List!51457)) )
))
(declare-datatypes ((ListMap!4125 0))(
  ( (ListMap!4126 (toList!4821 List!51457)) )
))
(declare-fun lt!1768608 () ListMap!4125)

(declare-fun key!4968 () K!12720)

(declare-fun contains!14302 (ListMap!4125 K!12720) Bool)

(assert (=> b!4613552 (= lt!1768609 (contains!14302 lt!1768608 key!4968))))

(declare-fun lt!1768611 () ListMap!4125)

(assert (=> b!4613552 (not (contains!14302 lt!1768611 key!4968))))

(declare-datatypes ((Hashable!5825 0))(
  ( (HashableExt!5824 (__x!31528 Int)) )
))
(declare-fun hashF!1389 () Hashable!5825)

(declare-datatypes ((Unit!109626 0))(
  ( (Unit!109627) )
))
(declare-fun lt!1768615 () Unit!109626)

(declare-datatypes ((tuple2!52160 0))(
  ( (tuple2!52161 (_1!29374 (_ BitVec 64)) (_2!29374 List!51457)) )
))
(declare-datatypes ((List!51458 0))(
  ( (Nil!51334) (Cons!51334 (h!57338 tuple2!52160) (t!358454 List!51458)) )
))
(declare-fun lt!1768607 () List!51458)

(declare-datatypes ((ListLongMap!3411 0))(
  ( (ListLongMap!3412 (toList!4822 List!51458)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!342 (ListLongMap!3411 K!12720 Hashable!5825) Unit!109626)

(assert (=> b!4613552 (= lt!1768615 (lemmaNotInItsHashBucketThenNotInMap!342 (ListLongMap!3412 lt!1768607) key!4968 hashF!1389))))

(declare-fun b!4613553 () Bool)

(declare-fun e!2877761 () Bool)

(declare-fun e!2877762 () Bool)

(assert (=> b!4613553 (= e!2877761 e!2877762)))

(declare-fun res!1932464 () Bool)

(assert (=> b!4613553 (=> res!1932464 e!2877762)))

(declare-fun lt!1768612 () List!51457)

(declare-fun newBucket!224 () List!51457)

(assert (=> b!4613553 (= res!1932464 (not (= lt!1768612 newBucket!224)))))

(declare-fun oldBucket!40 () List!51457)

(declare-fun tail!8075 (List!51457) List!51457)

(assert (=> b!4613553 (= lt!1768612 (tail!8075 oldBucket!40))))

(declare-fun b!4613554 () Bool)

(declare-fun e!2877765 () Bool)

(declare-fun e!2877759 () Bool)

(assert (=> b!4613554 (= e!2877765 e!2877759)))

(declare-fun res!1932457 () Bool)

(assert (=> b!4613554 (=> (not res!1932457) (not e!2877759))))

(declare-fun lt!1768613 () ListMap!4125)

(assert (=> b!4613554 (= res!1932457 (contains!14302 lt!1768613 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun extractMap!1484 (List!51458) ListMap!4125)

(assert (=> b!4613554 (= lt!1768613 (extractMap!1484 (Cons!51334 (tuple2!52161 hash!414 oldBucket!40) Nil!51334)))))

(declare-fun b!4613555 () Bool)

(assert (=> b!4613555 (= e!2877759 (not e!2877761))))

(declare-fun res!1932458 () Bool)

(assert (=> b!4613555 (=> res!1932458 e!2877761)))

(get-info :version)

(assert (=> b!4613555 (= res!1932458 (or (not ((_ is Cons!51333) oldBucket!40)) (not (= (_1!29373 (h!57337 oldBucket!40)) key!4968))))))

(declare-fun e!2877760 () Bool)

(assert (=> b!4613555 e!2877760))

(declare-fun res!1932467 () Bool)

(assert (=> b!4613555 (=> (not res!1932467) (not e!2877760))))

(declare-fun lt!1768606 () ListMap!4125)

(declare-fun addToMapMapFromBucket!889 (List!51457 ListMap!4125) ListMap!4125)

(assert (=> b!4613555 (= res!1932467 (= lt!1768613 (addToMapMapFromBucket!889 oldBucket!40 lt!1768606)))))

(assert (=> b!4613555 (= lt!1768606 (extractMap!1484 Nil!51334))))

(assert (=> b!4613555 true))

(declare-fun res!1932460 () Bool)

(assert (=> start!461432 (=> (not res!1932460) (not e!2877765))))

(declare-fun noDuplicateKeys!1428 (List!51457) Bool)

(assert (=> start!461432 (= res!1932460 (noDuplicateKeys!1428 oldBucket!40))))

(assert (=> start!461432 e!2877765))

(assert (=> start!461432 true))

(declare-fun e!2877757 () Bool)

(assert (=> start!461432 e!2877757))

(declare-fun tp_is_empty!29005 () Bool)

(assert (=> start!461432 tp_is_empty!29005))

(declare-fun e!2877766 () Bool)

(assert (=> start!461432 e!2877766))

(declare-fun b!4613556 () Bool)

(declare-fun res!1932461 () Bool)

(assert (=> b!4613556 (=> (not res!1932461) (not e!2877765))))

(assert (=> b!4613556 (= res!1932461 (noDuplicateKeys!1428 newBucket!224))))

(declare-fun b!4613557 () Bool)

(declare-fun res!1932465 () Bool)

(assert (=> b!4613557 (=> (not res!1932465) (not e!2877759))))

(declare-fun hash!3373 (Hashable!5825 K!12720) (_ BitVec 64))

(assert (=> b!4613557 (= res!1932465 (= (hash!3373 hashF!1389 key!4968) hash!414))))

(declare-fun b!4613558 () Bool)

(declare-fun e!2877758 () Bool)

(assert (=> b!4613558 (= e!2877758 e!2877763)))

(declare-fun res!1932456 () Bool)

(assert (=> b!4613558 (=> res!1932456 e!2877763)))

(declare-fun eq!771 (ListMap!4125 ListMap!4125) Bool)

(declare-fun +!1813 (ListMap!4125 tuple2!52158) ListMap!4125)

(assert (=> b!4613558 (= res!1932456 (not (eq!771 (+!1813 lt!1768608 (h!57337 oldBucket!40)) (addToMapMapFromBucket!889 oldBucket!40 (ListMap!4126 Nil!51333)))))))

(declare-fun lt!1768610 () tuple2!52158)

(assert (=> b!4613558 (eq!771 (addToMapMapFromBucket!889 (Cons!51333 lt!1768610 lt!1768612) (ListMap!4126 Nil!51333)) (+!1813 lt!1768608 lt!1768610))))

(declare-fun lt!1768614 () Unit!109626)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!22 (tuple2!52158 List!51457 ListMap!4125) Unit!109626)

(assert (=> b!4613558 (= lt!1768614 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!22 lt!1768610 lt!1768612 (ListMap!4126 Nil!51333)))))

(declare-fun head!9588 (List!51457) tuple2!52158)

(assert (=> b!4613558 (= lt!1768610 (head!9588 oldBucket!40))))

(declare-fun tp_is_empty!29007 () Bool)

(declare-fun tp!1341454 () Bool)

(declare-fun b!4613559 () Bool)

(assert (=> b!4613559 (= e!2877757 (and tp_is_empty!29005 tp_is_empty!29007 tp!1341454))))

(declare-fun b!4613560 () Bool)

(declare-fun res!1932463 () Bool)

(assert (=> b!4613560 (=> (not res!1932463) (not e!2877765))))

(declare-fun allKeysSameHash!1282 (List!51457 (_ BitVec 64) Hashable!5825) Bool)

(assert (=> b!4613560 (= res!1932463 (allKeysSameHash!1282 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4613561 () Bool)

(declare-fun e!2877764 () Bool)

(assert (=> b!4613561 (= e!2877762 e!2877764)))

(declare-fun res!1932468 () Bool)

(assert (=> b!4613561 (=> res!1932468 e!2877764)))

(assert (=> b!4613561 (= res!1932468 (not (= lt!1768611 (extractMap!1484 (Cons!51334 (tuple2!52161 hash!414 newBucket!224) Nil!51334)))))))

(assert (=> b!4613561 (= lt!1768611 (extractMap!1484 lt!1768607))))

(assert (=> b!4613561 (= lt!1768607 (Cons!51334 (tuple2!52161 hash!414 lt!1768612) Nil!51334))))

(declare-fun b!4613562 () Bool)

(declare-fun res!1932459 () Bool)

(assert (=> b!4613562 (=> res!1932459 e!2877763)))

(assert (=> b!4613562 (= res!1932459 (not (= lt!1768608 lt!1768611)))))

(declare-fun b!4613563 () Bool)

(assert (=> b!4613563 (= e!2877764 e!2877758)))

(declare-fun res!1932470 () Bool)

(assert (=> b!4613563 (=> res!1932470 e!2877758)))

(assert (=> b!4613563 (= res!1932470 (not (= lt!1768608 (addToMapMapFromBucket!889 newBucket!224 (ListMap!4126 Nil!51333)))))))

(assert (=> b!4613563 (= lt!1768608 (addToMapMapFromBucket!889 lt!1768612 (ListMap!4126 Nil!51333)))))

(declare-fun tp!1341455 () Bool)

(declare-fun b!4613564 () Bool)

(assert (=> b!4613564 (= e!2877766 (and tp_is_empty!29005 tp_is_empty!29007 tp!1341455))))

(declare-fun b!4613565 () Bool)

(declare-fun res!1932469 () Bool)

(assert (=> b!4613565 (=> (not res!1932469) (not e!2877765))))

(declare-fun removePairForKey!1051 (List!51457 K!12720) List!51457)

(assert (=> b!4613565 (= res!1932469 (= (removePairForKey!1051 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4613566 () Bool)

(declare-fun res!1932466 () Bool)

(assert (=> b!4613566 (=> res!1932466 e!2877763)))

(declare-fun containsKey!2300 (List!51457 K!12720) Bool)

(assert (=> b!4613566 (= res!1932466 (containsKey!2300 lt!1768612 key!4968))))

(declare-fun b!4613567 () Bool)

(declare-fun res!1932462 () Bool)

(assert (=> b!4613567 (=> (not res!1932462) (not e!2877759))))

(assert (=> b!4613567 (= res!1932462 (allKeysSameHash!1282 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4613568 () Bool)

(assert (=> b!4613568 (= e!2877760 (= lt!1768606 (ListMap!4126 Nil!51333)))))

(assert (= (and start!461432 res!1932460) b!4613556))

(assert (= (and b!4613556 res!1932461) b!4613565))

(assert (= (and b!4613565 res!1932469) b!4613560))

(assert (= (and b!4613560 res!1932463) b!4613554))

(assert (= (and b!4613554 res!1932457) b!4613557))

(assert (= (and b!4613557 res!1932465) b!4613567))

(assert (= (and b!4613567 res!1932462) b!4613555))

(assert (= (and b!4613555 res!1932467) b!4613568))

(assert (= (and b!4613555 (not res!1932458)) b!4613553))

(assert (= (and b!4613553 (not res!1932464)) b!4613561))

(assert (= (and b!4613561 (not res!1932468)) b!4613563))

(assert (= (and b!4613563 (not res!1932470)) b!4613558))

(assert (= (and b!4613558 (not res!1932456)) b!4613566))

(assert (= (and b!4613566 (not res!1932466)) b!4613562))

(assert (= (and b!4613562 (not res!1932459)) b!4613552))

(assert (= (and start!461432 ((_ is Cons!51333) oldBucket!40)) b!4613559))

(assert (= (and start!461432 ((_ is Cons!51333) newBucket!224)) b!4613564))

(declare-fun m!5445113 () Bool)

(assert (=> b!4613556 m!5445113))

(declare-fun m!5445115 () Bool)

(assert (=> b!4613553 m!5445115))

(declare-fun m!5445117 () Bool)

(assert (=> b!4613552 m!5445117))

(declare-fun m!5445119 () Bool)

(assert (=> b!4613552 m!5445119))

(declare-fun m!5445121 () Bool)

(assert (=> b!4613552 m!5445121))

(declare-fun m!5445123 () Bool)

(assert (=> b!4613566 m!5445123))

(declare-fun m!5445125 () Bool)

(assert (=> b!4613567 m!5445125))

(declare-fun m!5445127 () Bool)

(assert (=> b!4613555 m!5445127))

(declare-fun m!5445129 () Bool)

(assert (=> b!4613555 m!5445129))

(declare-fun m!5445131 () Bool)

(assert (=> start!461432 m!5445131))

(declare-fun m!5445133 () Bool)

(assert (=> b!4613554 m!5445133))

(declare-fun m!5445135 () Bool)

(assert (=> b!4613554 m!5445135))

(declare-fun m!5445137 () Bool)

(assert (=> b!4613560 m!5445137))

(declare-fun m!5445139 () Bool)

(assert (=> b!4613558 m!5445139))

(declare-fun m!5445141 () Bool)

(assert (=> b!4613558 m!5445141))

(assert (=> b!4613558 m!5445141))

(declare-fun m!5445143 () Bool)

(assert (=> b!4613558 m!5445143))

(declare-fun m!5445145 () Bool)

(assert (=> b!4613558 m!5445145))

(declare-fun m!5445147 () Bool)

(assert (=> b!4613558 m!5445147))

(declare-fun m!5445149 () Bool)

(assert (=> b!4613558 m!5445149))

(assert (=> b!4613558 m!5445143))

(assert (=> b!4613558 m!5445139))

(assert (=> b!4613558 m!5445147))

(declare-fun m!5445151 () Bool)

(assert (=> b!4613558 m!5445151))

(declare-fun m!5445153 () Bool)

(assert (=> b!4613558 m!5445153))

(declare-fun m!5445155 () Bool)

(assert (=> b!4613557 m!5445155))

(declare-fun m!5445157 () Bool)

(assert (=> b!4613563 m!5445157))

(declare-fun m!5445159 () Bool)

(assert (=> b!4613563 m!5445159))

(declare-fun m!5445161 () Bool)

(assert (=> b!4613561 m!5445161))

(declare-fun m!5445163 () Bool)

(assert (=> b!4613561 m!5445163))

(declare-fun m!5445165 () Bool)

(assert (=> b!4613565 m!5445165))

(check-sat (not b!4613555) (not b!4613563) tp_is_empty!29007 (not b!4613553) tp_is_empty!29005 (not b!4613557) (not b!4613554) (not b!4613558) (not b!4613559) (not b!4613552) (not b!4613566) (not b!4613556) (not b!4613567) (not b!4613561) (not b!4613560) (not b!4613565) (not start!461432) (not b!4613564))
(check-sat)
