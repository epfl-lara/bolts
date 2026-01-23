; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423112 () Bool)

(assert start!423112)

(declare-fun b!4363987 () Bool)

(declare-fun e!2715985 () Bool)

(assert (=> b!4363987 (= e!2715985 true)))

(declare-fun lt!1576550 () Bool)

(declare-datatypes ((K!10355 0))(
  ( (K!10356 (val!16555 Int)) )
))
(declare-datatypes ((V!10601 0))(
  ( (V!10602 (val!16556 Int)) )
))
(declare-datatypes ((tuple2!48430 0))(
  ( (tuple2!48431 (_1!27509 K!10355) (_2!27509 V!10601)) )
))
(declare-datatypes ((List!49125 0))(
  ( (Nil!49001) (Cons!49001 (h!54570 tuple2!48430) (t!356045 List!49125)) )
))
(declare-datatypes ((ListMap!2257 0))(
  ( (ListMap!2258 (toList!3013 List!49125)) )
))
(declare-fun lt!1576551 () ListMap!2257)

(declare-fun lt!1576552 () ListMap!2257)

(declare-fun eq!285 (ListMap!2257 ListMap!2257) Bool)

(assert (=> b!4363987 (= lt!1576550 (eq!285 lt!1576551 lt!1576552))))

(declare-fun e!2715981 () Bool)

(declare-fun b!4363988 () Bool)

(declare-fun tp_is_empty!25299 () Bool)

(declare-fun tp!1330473 () Bool)

(declare-fun tp_is_empty!25297 () Bool)

(assert (=> b!4363988 (= e!2715981 (and tp_is_empty!25297 tp_is_empty!25299 tp!1330473))))

(declare-fun b!4363989 () Bool)

(declare-fun res!1794652 () Bool)

(declare-fun e!2715982 () Bool)

(assert (=> b!4363989 (=> (not res!1794652) (not e!2715982))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4907 0))(
  ( (HashableExt!4906 (__x!30610 Int)) )
))
(declare-fun hashF!1247 () Hashable!4907)

(declare-fun key!3918 () K!10355)

(declare-fun hash!1649 (Hashable!4907 K!10355) (_ BitVec 64))

(assert (=> b!4363989 (= res!1794652 (= (hash!1649 hashF!1247 key!3918) hash!377))))

(declare-fun b!4363990 () Bool)

(declare-fun e!2715987 () Bool)

(declare-datatypes ((tuple2!48432 0))(
  ( (tuple2!48433 (_1!27510 (_ BitVec 64)) (_2!27510 List!49125)) )
))
(declare-datatypes ((List!49126 0))(
  ( (Nil!49002) (Cons!49002 (h!54571 tuple2!48432) (t!356046 List!49126)) )
))
(declare-datatypes ((ListLongMap!1663 0))(
  ( (ListLongMap!1664 (toList!3014 List!49126)) )
))
(declare-fun lt!1576539 () ListLongMap!1663)

(declare-fun lambda!142171 () Int)

(declare-fun forall!9170 (List!49126 Int) Bool)

(assert (=> b!4363990 (= e!2715987 (forall!9170 (toList!3014 lt!1576539) lambda!142171))))

(declare-fun b!4363991 () Bool)

(declare-fun e!2715984 () Bool)

(declare-fun e!2715980 () Bool)

(assert (=> b!4363991 (= e!2715984 e!2715980)))

(declare-fun res!1794663 () Bool)

(assert (=> b!4363991 (=> res!1794663 e!2715980)))

(declare-fun lt!1576540 () ListMap!2257)

(declare-fun lt!1576549 () ListMap!2257)

(assert (=> b!4363991 (= res!1794663 (not (eq!285 lt!1576540 lt!1576549)))))

(declare-fun lt!1576538 () ListMap!2257)

(declare-fun lt!1576555 () ListMap!2257)

(assert (=> b!4363991 (eq!285 lt!1576538 lt!1576555)))

(declare-fun lt!1576541 () tuple2!48430)

(declare-fun +!687 (ListMap!2257 tuple2!48430) ListMap!2257)

(assert (=> b!4363991 (= lt!1576555 (+!687 lt!1576540 lt!1576541))))

(declare-fun lm!1707 () ListLongMap!1663)

(declare-fun addToMapMapFromBucket!211 (List!49125 ListMap!2257) ListMap!2257)

(assert (=> b!4363991 (= lt!1576538 (addToMapMapFromBucket!211 (_2!27510 (h!54571 (toList!3014 lm!1707))) lt!1576551))))

(declare-datatypes ((Unit!72857 0))(
  ( (Unit!72858) )
))
(declare-fun lt!1576558 () Unit!72857)

(declare-fun lt!1576556 () ListMap!2257)

(declare-fun newValue!99 () V!10601)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!94 (ListMap!2257 K!10355 V!10601 List!49125) Unit!72857)

(assert (=> b!4363991 (= lt!1576558 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!94 lt!1576556 key!3918 newValue!99 (_2!27510 (h!54571 (toList!3014 lm!1707)))))))

(assert (=> b!4363991 (= lt!1576549 lt!1576540)))

(assert (=> b!4363991 (= lt!1576540 (addToMapMapFromBucket!211 (_2!27510 (h!54571 (toList!3014 lm!1707))) lt!1576556))))

(declare-fun e!2715990 () Bool)

(assert (=> b!4363991 e!2715990))

(declare-fun res!1794659 () Bool)

(assert (=> b!4363991 (=> (not res!1794659) (not e!2715990))))

(assert (=> b!4363991 (= res!1794659 (eq!285 lt!1576552 lt!1576551))))

(assert (=> b!4363991 (= lt!1576551 (+!687 lt!1576556 lt!1576541))))

(declare-fun lt!1576557 () ListLongMap!1663)

(declare-fun lt!1576542 () tuple2!48432)

(declare-fun extractMap!574 (List!49126) ListMap!2257)

(declare-fun +!688 (ListLongMap!1663 tuple2!48432) ListLongMap!1663)

(assert (=> b!4363991 (= lt!1576552 (extractMap!574 (toList!3014 (+!688 lt!1576557 lt!1576542))))))

(declare-fun newBucket!200 () List!49125)

(declare-fun lt!1576546 () Unit!72857)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!119 (ListLongMap!1663 (_ BitVec 64) List!49125 K!10355 V!10601 Hashable!4907) Unit!72857)

(assert (=> b!4363991 (= lt!1576546 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!119 lt!1576557 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11249 (ListMap!2257 K!10355) Bool)

(assert (=> b!4363991 (contains!11249 lt!1576556 key!3918)))

(assert (=> b!4363991 (= lt!1576556 (extractMap!574 (toList!3014 lt!1576557)))))

(declare-fun tail!7040 (ListLongMap!1663) ListLongMap!1663)

(assert (=> b!4363991 (= lt!1576557 (tail!7040 lm!1707))))

(declare-fun lt!1576554 () ListMap!2257)

(assert (=> b!4363991 (contains!11249 lt!1576554 key!3918)))

(declare-fun lt!1576537 () Unit!72857)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!58 (List!49125 K!10355 V!10601 ListMap!2257) Unit!72857)

(assert (=> b!4363991 (= lt!1576537 (lemmaAddToMapContainsAndNotInListThenInAcc!58 (_2!27510 (h!54571 (toList!3014 lm!1707))) key!3918 newValue!99 lt!1576554))))

(assert (=> b!4363991 (= lt!1576554 (extractMap!574 (t!356046 (toList!3014 lm!1707))))))

(declare-fun e!2715989 () Bool)

(assert (=> b!4363991 e!2715989))

(declare-fun res!1794658 () Bool)

(assert (=> b!4363991 (=> (not res!1794658) (not e!2715989))))

(declare-fun containsKey!752 (List!49125 K!10355) Bool)

(declare-fun apply!11367 (ListLongMap!1663 (_ BitVec 64)) List!49125)

(assert (=> b!4363991 (= res!1794658 (not (containsKey!752 (apply!11367 lm!1707 (_1!27510 (h!54571 (toList!3014 lm!1707)))) key!3918)))))

(declare-fun lt!1576545 () Unit!72857)

(declare-fun lemmaNotSameHashThenCannotContainKey!62 (ListLongMap!1663 K!10355 (_ BitVec 64) Hashable!4907) Unit!72857)

(assert (=> b!4363991 (= lt!1576545 (lemmaNotSameHashThenCannotContainKey!62 lm!1707 key!3918 (_1!27510 (h!54571 (toList!3014 lm!1707))) hashF!1247))))

(declare-fun b!4363992 () Bool)

(declare-fun e!2715986 () Bool)

(declare-fun e!2715988 () Bool)

(assert (=> b!4363992 (= e!2715986 (not e!2715988))))

(declare-fun res!1794654 () Bool)

(assert (=> b!4363992 (=> res!1794654 e!2715988)))

(declare-fun lt!1576547 () List!49125)

(declare-fun removePairForKey!485 (List!49125 K!10355) List!49125)

(assert (=> b!4363992 (= res!1794654 (not (= newBucket!200 (Cons!49001 lt!1576541 (removePairForKey!485 lt!1576547 key!3918)))))))

(assert (=> b!4363992 (= lt!1576541 (tuple2!48431 key!3918 newValue!99))))

(declare-fun lt!1576543 () Unit!72857)

(declare-fun lt!1576536 () tuple2!48432)

(declare-fun forallContained!1811 (List!49126 Int tuple2!48432) Unit!72857)

(assert (=> b!4363992 (= lt!1576543 (forallContained!1811 (toList!3014 lm!1707) lambda!142171 lt!1576536))))

(declare-fun contains!11250 (List!49126 tuple2!48432) Bool)

(assert (=> b!4363992 (contains!11250 (toList!3014 lm!1707) lt!1576536)))

(assert (=> b!4363992 (= lt!1576536 (tuple2!48433 hash!377 lt!1576547))))

(declare-fun lt!1576548 () Unit!72857)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!362 (List!49126 (_ BitVec 64) List!49125) Unit!72857)

(assert (=> b!4363992 (= lt!1576548 (lemmaGetValueByKeyImpliesContainsTuple!362 (toList!3014 lm!1707) hash!377 lt!1576547))))

(assert (=> b!4363992 (= lt!1576547 (apply!11367 lm!1707 hash!377))))

(declare-fun b!4363993 () Bool)

(declare-fun res!1794657 () Bool)

(assert (=> b!4363993 (=> (not res!1794657) (not e!2715982))))

(declare-fun allKeysSameHash!473 (List!49125 (_ BitVec 64) Hashable!4907) Bool)

(assert (=> b!4363993 (= res!1794657 (allKeysSameHash!473 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4363994 () Bool)

(assert (=> b!4363994 (= e!2715982 e!2715986)))

(declare-fun res!1794653 () Bool)

(assert (=> b!4363994 (=> (not res!1794653) (not e!2715986))))

(assert (=> b!4363994 (= res!1794653 (contains!11249 lt!1576549 key!3918))))

(assert (=> b!4363994 (= lt!1576549 (extractMap!574 (toList!3014 lm!1707)))))

(declare-fun b!4363995 () Bool)

(declare-fun res!1794661 () Bool)

(assert (=> b!4363995 (=> res!1794661 e!2715988)))

(declare-fun noDuplicateKeys!515 (List!49125) Bool)

(assert (=> b!4363995 (= res!1794661 (not (noDuplicateKeys!515 newBucket!200)))))

(declare-fun res!1794655 () Bool)

(assert (=> start!423112 (=> (not res!1794655) (not e!2715982))))

(assert (=> start!423112 (= res!1794655 (forall!9170 (toList!3014 lm!1707) lambda!142171))))

(assert (=> start!423112 e!2715982))

(assert (=> start!423112 e!2715981))

(assert (=> start!423112 true))

(declare-fun e!2715983 () Bool)

(declare-fun inv!64541 (ListLongMap!1663) Bool)

(assert (=> start!423112 (and (inv!64541 lm!1707) e!2715983)))

(assert (=> start!423112 tp_is_empty!25297))

(assert (=> start!423112 tp_is_empty!25299))

(declare-fun b!4363996 () Bool)

(declare-fun head!9092 (ListLongMap!1663) tuple2!48432)

(assert (=> b!4363996 (= e!2715990 (not (= (head!9092 lm!1707) lt!1576542)))))

(declare-fun b!4363997 () Bool)

(assert (=> b!4363997 (= e!2715988 e!2715984)))

(declare-fun res!1794651 () Bool)

(assert (=> b!4363997 (=> res!1794651 e!2715984)))

(get-info :version)

(assert (=> b!4363997 (= res!1794651 (or (and ((_ is Cons!49002) (toList!3014 lm!1707)) (= (_1!27510 (h!54571 (toList!3014 lm!1707))) hash!377)) (not ((_ is Cons!49002) (toList!3014 lm!1707))) (= (_1!27510 (h!54571 (toList!3014 lm!1707))) hash!377)))))

(assert (=> b!4363997 e!2715987))

(declare-fun res!1794660 () Bool)

(assert (=> b!4363997 (=> (not res!1794660) (not e!2715987))))

(assert (=> b!4363997 (= res!1794660 (forall!9170 (toList!3014 lt!1576539) lambda!142171))))

(assert (=> b!4363997 (= lt!1576539 (+!688 lm!1707 lt!1576542))))

(assert (=> b!4363997 (= lt!1576542 (tuple2!48433 hash!377 newBucket!200))))

(declare-fun lt!1576544 () Unit!72857)

(declare-fun addValidProp!169 (ListLongMap!1663 Int (_ BitVec 64) List!49125) Unit!72857)

(assert (=> b!4363997 (= lt!1576544 (addValidProp!169 lm!1707 lambda!142171 hash!377 newBucket!200))))

(assert (=> b!4363997 (forall!9170 (toList!3014 lm!1707) lambda!142171)))

(declare-fun b!4363998 () Bool)

(assert (=> b!4363998 (= e!2715980 e!2715985)))

(declare-fun res!1794662 () Bool)

(assert (=> b!4363998 (=> res!1794662 e!2715985)))

(assert (=> b!4363998 (= res!1794662 (not (noDuplicateKeys!515 (_2!27510 (h!54571 (toList!3014 lm!1707))))))))

(assert (=> b!4363998 (eq!285 (+!687 lt!1576549 lt!1576541) lt!1576555)))

(declare-fun lt!1576553 () Unit!72857)

(declare-fun lemmaAddToEqMapsPreservesEq!8 (ListMap!2257 ListMap!2257 K!10355 V!10601) Unit!72857)

(assert (=> b!4363998 (= lt!1576553 (lemmaAddToEqMapsPreservesEq!8 lt!1576549 lt!1576540 key!3918 newValue!99))))

(declare-fun b!4363999 () Bool)

(declare-fun res!1794650 () Bool)

(assert (=> b!4363999 (=> (not res!1794650) (not e!2715986))))

(declare-fun contains!11251 (ListLongMap!1663 (_ BitVec 64)) Bool)

(assert (=> b!4363999 (= res!1794650 (contains!11251 lm!1707 hash!377))))

(declare-fun b!4364000 () Bool)

(declare-fun res!1794656 () Bool)

(assert (=> b!4364000 (=> (not res!1794656) (not e!2715982))))

(declare-fun allKeysSameHashInMap!619 (ListLongMap!1663 Hashable!4907) Bool)

(assert (=> b!4364000 (= res!1794656 (allKeysSameHashInMap!619 lm!1707 hashF!1247))))

(declare-fun b!4364001 () Bool)

(declare-fun tp!1330474 () Bool)

(assert (=> b!4364001 (= e!2715983 tp!1330474)))

(declare-fun b!4364002 () Bool)

(assert (=> b!4364002 (= e!2715989 (not (containsKey!752 (_2!27510 (h!54571 (toList!3014 lm!1707))) key!3918)))))

(assert (= (and start!423112 res!1794655) b!4364000))

(assert (= (and b!4364000 res!1794656) b!4363989))

(assert (= (and b!4363989 res!1794652) b!4363993))

(assert (= (and b!4363993 res!1794657) b!4363994))

(assert (= (and b!4363994 res!1794653) b!4363999))

(assert (= (and b!4363999 res!1794650) b!4363992))

(assert (= (and b!4363992 (not res!1794654)) b!4363995))

(assert (= (and b!4363995 (not res!1794661)) b!4363997))

(assert (= (and b!4363997 res!1794660) b!4363990))

(assert (= (and b!4363997 (not res!1794651)) b!4363991))

(assert (= (and b!4363991 res!1794658) b!4364002))

(assert (= (and b!4363991 res!1794659) b!4363996))

(assert (= (and b!4363991 (not res!1794663)) b!4363998))

(assert (= (and b!4363998 (not res!1794662)) b!4363987))

(assert (= (and start!423112 ((_ is Cons!49001) newBucket!200)) b!4363988))

(assert (= start!423112 b!4364001))

(declare-fun m!4985363 () Bool)

(assert (=> b!4363992 m!4985363))

(declare-fun m!4985365 () Bool)

(assert (=> b!4363992 m!4985365))

(declare-fun m!4985367 () Bool)

(assert (=> b!4363992 m!4985367))

(declare-fun m!4985369 () Bool)

(assert (=> b!4363992 m!4985369))

(declare-fun m!4985371 () Bool)

(assert (=> b!4363992 m!4985371))

(declare-fun m!4985373 () Bool)

(assert (=> b!4363998 m!4985373))

(declare-fun m!4985375 () Bool)

(assert (=> b!4363998 m!4985375))

(assert (=> b!4363998 m!4985375))

(declare-fun m!4985377 () Bool)

(assert (=> b!4363998 m!4985377))

(declare-fun m!4985379 () Bool)

(assert (=> b!4363998 m!4985379))

(declare-fun m!4985381 () Bool)

(assert (=> b!4363989 m!4985381))

(declare-fun m!4985383 () Bool)

(assert (=> b!4363987 m!4985383))

(declare-fun m!4985385 () Bool)

(assert (=> b!4364000 m!4985385))

(declare-fun m!4985387 () Bool)

(assert (=> b!4363990 m!4985387))

(declare-fun m!4985389 () Bool)

(assert (=> b!4363999 m!4985389))

(assert (=> b!4363997 m!4985387))

(declare-fun m!4985391 () Bool)

(assert (=> b!4363997 m!4985391))

(declare-fun m!4985393 () Bool)

(assert (=> b!4363997 m!4985393))

(declare-fun m!4985395 () Bool)

(assert (=> b!4363997 m!4985395))

(declare-fun m!4985397 () Bool)

(assert (=> b!4363994 m!4985397))

(declare-fun m!4985399 () Bool)

(assert (=> b!4363994 m!4985399))

(declare-fun m!4985401 () Bool)

(assert (=> b!4363996 m!4985401))

(declare-fun m!4985403 () Bool)

(assert (=> b!4364002 m!4985403))

(declare-fun m!4985405 () Bool)

(assert (=> b!4363993 m!4985405))

(declare-fun m!4985407 () Bool)

(assert (=> b!4363995 m!4985407))

(declare-fun m!4985409 () Bool)

(assert (=> b!4363991 m!4985409))

(declare-fun m!4985411 () Bool)

(assert (=> b!4363991 m!4985411))

(declare-fun m!4985413 () Bool)

(assert (=> b!4363991 m!4985413))

(declare-fun m!4985415 () Bool)

(assert (=> b!4363991 m!4985415))

(declare-fun m!4985417 () Bool)

(assert (=> b!4363991 m!4985417))

(declare-fun m!4985419 () Bool)

(assert (=> b!4363991 m!4985419))

(declare-fun m!4985421 () Bool)

(assert (=> b!4363991 m!4985421))

(declare-fun m!4985423 () Bool)

(assert (=> b!4363991 m!4985423))

(declare-fun m!4985425 () Bool)

(assert (=> b!4363991 m!4985425))

(declare-fun m!4985427 () Bool)

(assert (=> b!4363991 m!4985427))

(declare-fun m!4985429 () Bool)

(assert (=> b!4363991 m!4985429))

(declare-fun m!4985431 () Bool)

(assert (=> b!4363991 m!4985431))

(declare-fun m!4985433 () Bool)

(assert (=> b!4363991 m!4985433))

(declare-fun m!4985435 () Bool)

(assert (=> b!4363991 m!4985435))

(declare-fun m!4985437 () Bool)

(assert (=> b!4363991 m!4985437))

(assert (=> b!4363991 m!4985437))

(declare-fun m!4985439 () Bool)

(assert (=> b!4363991 m!4985439))

(declare-fun m!4985441 () Bool)

(assert (=> b!4363991 m!4985441))

(declare-fun m!4985443 () Bool)

(assert (=> b!4363991 m!4985443))

(declare-fun m!4985445 () Bool)

(assert (=> b!4363991 m!4985445))

(declare-fun m!4985447 () Bool)

(assert (=> b!4363991 m!4985447))

(assert (=> start!423112 m!4985395))

(declare-fun m!4985449 () Bool)

(assert (=> start!423112 m!4985449))

(check-sat (not b!4364002) (not b!4364000) (not b!4363995) (not b!4364001) (not b!4363991) (not b!4363988) (not b!4363989) (not b!4363992) (not b!4363987) (not b!4363993) (not b!4363999) (not b!4363994) tp_is_empty!25299 (not b!4363996) (not b!4363990) tp_is_empty!25297 (not b!4363998) (not b!4363997) (not start!423112))
(check-sat)
