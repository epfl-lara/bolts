; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!428504 () Bool)

(assert start!428504)

(declare-fun b!4404334 () Bool)

(declare-fun res!1817101 () Bool)

(declare-fun e!2742474 () Bool)

(assert (=> b!4404334 (=> (not res!1817101) (not e!2742474))))

(declare-datatypes ((K!10670 0))(
  ( (K!10671 (val!16807 Int)) )
))
(declare-datatypes ((V!10916 0))(
  ( (V!10917 (val!16808 Int)) )
))
(declare-datatypes ((tuple2!48934 0))(
  ( (tuple2!48935 (_1!27761 K!10670) (_2!27761 V!10916)) )
))
(declare-datatypes ((List!49438 0))(
  ( (Nil!49314) (Cons!49314 (h!54947 tuple2!48934) (t!356372 List!49438)) )
))
(declare-fun newBucket!200 () List!49438)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!5033 0))(
  ( (HashableExt!5032 (__x!30736 Int)) )
))
(declare-fun hashF!1247 () Hashable!5033)

(declare-fun allKeysSameHash!599 (List!49438 (_ BitVec 64) Hashable!5033) Bool)

(assert (=> b!4404334 (= res!1817101 (allKeysSameHash!599 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4404335 () Bool)

(declare-fun e!2742475 () Bool)

(declare-fun e!2742470 () Bool)

(assert (=> b!4404335 (= e!2742475 e!2742470)))

(declare-fun res!1817102 () Bool)

(assert (=> b!4404335 (=> res!1817102 e!2742470)))

(declare-datatypes ((tuple2!48936 0))(
  ( (tuple2!48937 (_1!27762 (_ BitVec 64)) (_2!27762 List!49438)) )
))
(declare-datatypes ((List!49439 0))(
  ( (Nil!49315) (Cons!49315 (h!54948 tuple2!48936) (t!356373 List!49439)) )
))
(declare-datatypes ((ListLongMap!1915 0))(
  ( (ListLongMap!1916 (toList!3265 List!49439)) )
))
(declare-fun lm!1707 () ListLongMap!1915)

(get-info :version)

(assert (=> b!4404335 (= res!1817102 (or (and ((_ is Cons!49315) (toList!3265 lm!1707)) (= (_1!27762 (h!54948 (toList!3265 lm!1707))) hash!377)) (not ((_ is Cons!49315) (toList!3265 lm!1707))) (= (_1!27762 (h!54948 (toList!3265 lm!1707))) hash!377)))))

(declare-fun e!2742476 () Bool)

(assert (=> b!4404335 e!2742476))

(declare-fun res!1817109 () Bool)

(assert (=> b!4404335 (=> (not res!1817109) (not e!2742476))))

(declare-fun lt!1608770 () ListLongMap!1915)

(declare-fun lambda!149633 () Int)

(declare-fun forall!9392 (List!49439 Int) Bool)

(assert (=> b!4404335 (= res!1817109 (forall!9392 (toList!3265 lt!1608770) lambda!149633))))

(declare-fun lt!1608760 () tuple2!48936)

(declare-fun +!897 (ListLongMap!1915 tuple2!48936) ListLongMap!1915)

(assert (=> b!4404335 (= lt!1608770 (+!897 lm!1707 lt!1608760))))

(assert (=> b!4404335 (= lt!1608760 (tuple2!48937 hash!377 newBucket!200))))

(declare-datatypes ((Unit!79251 0))(
  ( (Unit!79252) )
))
(declare-fun lt!1608752 () Unit!79251)

(declare-fun addValidProp!287 (ListLongMap!1915 Int (_ BitVec 64) List!49438) Unit!79251)

(assert (=> b!4404335 (= lt!1608752 (addValidProp!287 lm!1707 lambda!149633 hash!377 newBucket!200))))

(assert (=> b!4404335 (forall!9392 (toList!3265 lm!1707) lambda!149633)))

(declare-fun res!1817103 () Bool)

(assert (=> start!428504 (=> (not res!1817103) (not e!2742474))))

(assert (=> start!428504 (= res!1817103 (forall!9392 (toList!3265 lm!1707) lambda!149633))))

(assert (=> start!428504 e!2742474))

(declare-fun e!2742471 () Bool)

(assert (=> start!428504 e!2742471))

(assert (=> start!428504 true))

(declare-fun e!2742472 () Bool)

(declare-fun inv!64856 (ListLongMap!1915) Bool)

(assert (=> start!428504 (and (inv!64856 lm!1707) e!2742472)))

(declare-fun tp_is_empty!25801 () Bool)

(assert (=> start!428504 tp_is_empty!25801))

(declare-fun tp_is_empty!25803 () Bool)

(assert (=> start!428504 tp_is_empty!25803))

(declare-fun b!4404336 () Bool)

(declare-fun e!2742478 () Bool)

(declare-fun head!9124 (ListLongMap!1915) tuple2!48936)

(assert (=> b!4404336 (= e!2742478 (not (= (head!9124 lm!1707) lt!1608760)))))

(declare-fun b!4404337 () Bool)

(declare-fun e!2742477 () Bool)

(declare-fun noDuplicateKeys!641 (List!49438) Bool)

(assert (=> b!4404337 (= e!2742477 (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(declare-datatypes ((ListMap!2509 0))(
  ( (ListMap!2510 (toList!3266 List!49438)) )
))
(declare-fun lt!1608771 () ListMap!2509)

(declare-fun lt!1608755 () tuple2!48934)

(declare-fun lt!1608759 () ListMap!2509)

(declare-fun eq!347 (ListMap!2509 ListMap!2509) Bool)

(declare-fun +!898 (ListMap!2509 tuple2!48934) ListMap!2509)

(assert (=> b!4404337 (eq!347 (+!898 lt!1608771 lt!1608755) lt!1608759)))

(declare-fun lt!1608764 () ListMap!2509)

(declare-fun lt!1608761 () Unit!79251)

(declare-fun key!3918 () K!10670)

(declare-fun newValue!99 () V!10916)

(declare-fun lemmaAddToEqMapsPreservesEq!18 (ListMap!2509 ListMap!2509 K!10670 V!10916) Unit!79251)

(assert (=> b!4404337 (= lt!1608761 (lemmaAddToEqMapsPreservesEq!18 lt!1608771 lt!1608764 key!3918 newValue!99))))

(declare-fun b!4404338 () Bool)

(assert (=> b!4404338 (= e!2742476 (forall!9392 (toList!3265 lt!1608770) lambda!149633))))

(declare-fun b!4404339 () Bool)

(declare-fun tp!1331992 () Bool)

(assert (=> b!4404339 (= e!2742472 tp!1331992)))

(declare-fun b!4404340 () Bool)

(declare-fun e!2742473 () Bool)

(assert (=> b!4404340 (= e!2742474 e!2742473)))

(declare-fun res!1817099 () Bool)

(assert (=> b!4404340 (=> (not res!1817099) (not e!2742473))))

(declare-fun contains!11723 (ListMap!2509 K!10670) Bool)

(assert (=> b!4404340 (= res!1817099 (contains!11723 lt!1608771 key!3918))))

(declare-fun extractMap!700 (List!49439) ListMap!2509)

(assert (=> b!4404340 (= lt!1608771 (extractMap!700 (toList!3265 lm!1707)))))

(declare-fun b!4404341 () Bool)

(declare-fun e!2742469 () Bool)

(declare-fun containsKey!963 (List!49438 K!10670) Bool)

(assert (=> b!4404341 (= e!2742469 (not (containsKey!963 (_2!27762 (h!54948 (toList!3265 lm!1707))) key!3918)))))

(declare-fun b!4404342 () Bool)

(declare-fun res!1817107 () Bool)

(assert (=> b!4404342 (=> (not res!1817107) (not e!2742474))))

(declare-fun hash!1913 (Hashable!5033 K!10670) (_ BitVec 64))

(assert (=> b!4404342 (= res!1817107 (= (hash!1913 hashF!1247 key!3918) hash!377))))

(declare-fun b!4404343 () Bool)

(assert (=> b!4404343 (= e!2742473 (not e!2742475))))

(declare-fun res!1817110 () Bool)

(assert (=> b!4404343 (=> res!1817110 e!2742475)))

(declare-fun lt!1608757 () List!49438)

(declare-fun removePairForKey!609 (List!49438 K!10670) List!49438)

(assert (=> b!4404343 (= res!1817110 (not (= newBucket!200 (Cons!49314 lt!1608755 (removePairForKey!609 lt!1608757 key!3918)))))))

(assert (=> b!4404343 (= lt!1608755 (tuple2!48935 key!3918 newValue!99))))

(declare-fun lt!1608768 () Unit!79251)

(declare-fun lt!1608753 () tuple2!48936)

(declare-fun forallContained!2027 (List!49439 Int tuple2!48936) Unit!79251)

(assert (=> b!4404343 (= lt!1608768 (forallContained!2027 (toList!3265 lm!1707) lambda!149633 lt!1608753))))

(declare-fun contains!11724 (List!49439 tuple2!48936) Bool)

(assert (=> b!4404343 (contains!11724 (toList!3265 lm!1707) lt!1608753)))

(assert (=> b!4404343 (= lt!1608753 (tuple2!48937 hash!377 lt!1608757))))

(declare-fun lt!1608754 () Unit!79251)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!486 (List!49439 (_ BitVec 64) List!49438) Unit!79251)

(assert (=> b!4404343 (= lt!1608754 (lemmaGetValueByKeyImpliesContainsTuple!486 (toList!3265 lm!1707) hash!377 lt!1608757))))

(declare-fun apply!11493 (ListLongMap!1915 (_ BitVec 64)) List!49438)

(assert (=> b!4404343 (= lt!1608757 (apply!11493 lm!1707 hash!377))))

(declare-fun tp!1331991 () Bool)

(declare-fun b!4404344 () Bool)

(assert (=> b!4404344 (= e!2742471 (and tp_is_empty!25801 tp_is_empty!25803 tp!1331991))))

(declare-fun b!4404345 () Bool)

(declare-fun res!1817105 () Bool)

(assert (=> b!4404345 (=> (not res!1817105) (not e!2742474))))

(declare-fun allKeysSameHashInMap!745 (ListLongMap!1915 Hashable!5033) Bool)

(assert (=> b!4404345 (= res!1817105 (allKeysSameHashInMap!745 lm!1707 hashF!1247))))

(declare-fun b!4404346 () Bool)

(declare-fun res!1817108 () Bool)

(assert (=> b!4404346 (=> res!1817108 e!2742475)))

(assert (=> b!4404346 (= res!1817108 (not (noDuplicateKeys!641 newBucket!200)))))

(declare-fun b!4404347 () Bool)

(declare-fun res!1817106 () Bool)

(assert (=> b!4404347 (=> (not res!1817106) (not e!2742473))))

(declare-fun contains!11725 (ListLongMap!1915 (_ BitVec 64)) Bool)

(assert (=> b!4404347 (= res!1817106 (contains!11725 lm!1707 hash!377))))

(declare-fun b!4404348 () Bool)

(assert (=> b!4404348 (= e!2742470 e!2742477)))

(declare-fun res!1817111 () Bool)

(assert (=> b!4404348 (=> res!1817111 e!2742477)))

(assert (=> b!4404348 (= res!1817111 (not (eq!347 lt!1608764 lt!1608771)))))

(declare-fun lt!1608758 () ListMap!2509)

(assert (=> b!4404348 (eq!347 lt!1608758 lt!1608759)))

(assert (=> b!4404348 (= lt!1608759 (+!898 lt!1608764 lt!1608755))))

(declare-fun lt!1608762 () ListMap!2509)

(declare-fun addToMapMapFromBucket!307 (List!49438 ListMap!2509) ListMap!2509)

(assert (=> b!4404348 (= lt!1608758 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) lt!1608762))))

(declare-fun lt!1608767 () Unit!79251)

(declare-fun lt!1608772 () ListMap!2509)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!146 (ListMap!2509 K!10670 V!10916 List!49438) Unit!79251)

(assert (=> b!4404348 (= lt!1608767 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!146 lt!1608772 key!3918 newValue!99 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(assert (=> b!4404348 (= lt!1608771 lt!1608764)))

(assert (=> b!4404348 (= lt!1608764 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) lt!1608772))))

(assert (=> b!4404348 e!2742478))

(declare-fun res!1817100 () Bool)

(assert (=> b!4404348 (=> (not res!1817100) (not e!2742478))))

(declare-fun lt!1608756 () ListMap!2509)

(assert (=> b!4404348 (= res!1817100 (eq!347 lt!1608756 lt!1608762))))

(assert (=> b!4404348 (= lt!1608762 (+!898 lt!1608772 lt!1608755))))

(declare-fun lt!1608751 () ListLongMap!1915)

(assert (=> b!4404348 (= lt!1608756 (extractMap!700 (toList!3265 (+!897 lt!1608751 lt!1608760))))))

(declare-fun lt!1608763 () Unit!79251)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!145 (ListLongMap!1915 (_ BitVec 64) List!49438 K!10670 V!10916 Hashable!5033) Unit!79251)

(assert (=> b!4404348 (= lt!1608763 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!145 lt!1608751 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4404348 (contains!11723 lt!1608772 key!3918)))

(assert (=> b!4404348 (= lt!1608772 (extractMap!700 (toList!3265 lt!1608751)))))

(declare-fun tail!7135 (ListLongMap!1915) ListLongMap!1915)

(assert (=> b!4404348 (= lt!1608751 (tail!7135 lm!1707))))

(declare-fun lt!1608769 () ListMap!2509)

(assert (=> b!4404348 (contains!11723 lt!1608769 key!3918)))

(declare-fun lt!1608765 () Unit!79251)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!100 (List!49438 K!10670 V!10916 ListMap!2509) Unit!79251)

(assert (=> b!4404348 (= lt!1608765 (lemmaAddToMapContainsAndNotInListThenInAcc!100 (_2!27762 (h!54948 (toList!3265 lm!1707))) key!3918 newValue!99 lt!1608769))))

(assert (=> b!4404348 (= lt!1608769 (extractMap!700 (t!356373 (toList!3265 lm!1707))))))

(assert (=> b!4404348 e!2742469))

(declare-fun res!1817104 () Bool)

(assert (=> b!4404348 (=> (not res!1817104) (not e!2742469))))

(assert (=> b!4404348 (= res!1817104 (not (containsKey!963 (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707)))) key!3918)))))

(declare-fun lt!1608766 () Unit!79251)

(declare-fun lemmaNotSameHashThenCannotContainKey!112 (ListLongMap!1915 K!10670 (_ BitVec 64) Hashable!5033) Unit!79251)

(assert (=> b!4404348 (= lt!1608766 (lemmaNotSameHashThenCannotContainKey!112 lm!1707 key!3918 (_1!27762 (h!54948 (toList!3265 lm!1707))) hashF!1247))))

(assert (= (and start!428504 res!1817103) b!4404345))

(assert (= (and b!4404345 res!1817105) b!4404342))

(assert (= (and b!4404342 res!1817107) b!4404334))

(assert (= (and b!4404334 res!1817101) b!4404340))

(assert (= (and b!4404340 res!1817099) b!4404347))

(assert (= (and b!4404347 res!1817106) b!4404343))

(assert (= (and b!4404343 (not res!1817110)) b!4404346))

(assert (= (and b!4404346 (not res!1817108)) b!4404335))

(assert (= (and b!4404335 res!1817109) b!4404338))

(assert (= (and b!4404335 (not res!1817102)) b!4404348))

(assert (= (and b!4404348 res!1817104) b!4404341))

(assert (= (and b!4404348 res!1817100) b!4404336))

(assert (= (and b!4404348 (not res!1817111)) b!4404337))

(assert (= (and start!428504 ((_ is Cons!49314) newBucket!200)) b!4404344))

(assert (= start!428504 b!4404339))

(declare-fun m!5069639 () Bool)

(assert (=> b!4404338 m!5069639))

(declare-fun m!5069641 () Bool)

(assert (=> b!4404337 m!5069641))

(declare-fun m!5069643 () Bool)

(assert (=> b!4404337 m!5069643))

(assert (=> b!4404337 m!5069643))

(declare-fun m!5069645 () Bool)

(assert (=> b!4404337 m!5069645))

(declare-fun m!5069647 () Bool)

(assert (=> b!4404337 m!5069647))

(assert (=> b!4404335 m!5069639))

(declare-fun m!5069649 () Bool)

(assert (=> b!4404335 m!5069649))

(declare-fun m!5069651 () Bool)

(assert (=> b!4404335 m!5069651))

(declare-fun m!5069653 () Bool)

(assert (=> b!4404335 m!5069653))

(declare-fun m!5069655 () Bool)

(assert (=> b!4404342 m!5069655))

(declare-fun m!5069657 () Bool)

(assert (=> b!4404336 m!5069657))

(assert (=> start!428504 m!5069653))

(declare-fun m!5069659 () Bool)

(assert (=> start!428504 m!5069659))

(declare-fun m!5069661 () Bool)

(assert (=> b!4404340 m!5069661))

(declare-fun m!5069663 () Bool)

(assert (=> b!4404340 m!5069663))

(declare-fun m!5069665 () Bool)

(assert (=> b!4404341 m!5069665))

(declare-fun m!5069667 () Bool)

(assert (=> b!4404343 m!5069667))

(declare-fun m!5069669 () Bool)

(assert (=> b!4404343 m!5069669))

(declare-fun m!5069671 () Bool)

(assert (=> b!4404343 m!5069671))

(declare-fun m!5069673 () Bool)

(assert (=> b!4404343 m!5069673))

(declare-fun m!5069675 () Bool)

(assert (=> b!4404343 m!5069675))

(declare-fun m!5069677 () Bool)

(assert (=> b!4404345 m!5069677))

(declare-fun m!5069679 () Bool)

(assert (=> b!4404334 m!5069679))

(declare-fun m!5069681 () Bool)

(assert (=> b!4404348 m!5069681))

(declare-fun m!5069683 () Bool)

(assert (=> b!4404348 m!5069683))

(declare-fun m!5069685 () Bool)

(assert (=> b!4404348 m!5069685))

(declare-fun m!5069687 () Bool)

(assert (=> b!4404348 m!5069687))

(declare-fun m!5069689 () Bool)

(assert (=> b!4404348 m!5069689))

(declare-fun m!5069691 () Bool)

(assert (=> b!4404348 m!5069691))

(declare-fun m!5069693 () Bool)

(assert (=> b!4404348 m!5069693))

(declare-fun m!5069695 () Bool)

(assert (=> b!4404348 m!5069695))

(declare-fun m!5069697 () Bool)

(assert (=> b!4404348 m!5069697))

(declare-fun m!5069699 () Bool)

(assert (=> b!4404348 m!5069699))

(declare-fun m!5069701 () Bool)

(assert (=> b!4404348 m!5069701))

(declare-fun m!5069703 () Bool)

(assert (=> b!4404348 m!5069703))

(declare-fun m!5069705 () Bool)

(assert (=> b!4404348 m!5069705))

(declare-fun m!5069707 () Bool)

(assert (=> b!4404348 m!5069707))

(declare-fun m!5069709 () Bool)

(assert (=> b!4404348 m!5069709))

(declare-fun m!5069711 () Bool)

(assert (=> b!4404348 m!5069711))

(assert (=> b!4404348 m!5069711))

(declare-fun m!5069713 () Bool)

(assert (=> b!4404348 m!5069713))

(declare-fun m!5069715 () Bool)

(assert (=> b!4404348 m!5069715))

(declare-fun m!5069717 () Bool)

(assert (=> b!4404348 m!5069717))

(declare-fun m!5069719 () Bool)

(assert (=> b!4404348 m!5069719))

(declare-fun m!5069721 () Bool)

(assert (=> b!4404347 m!5069721))

(declare-fun m!5069723 () Bool)

(assert (=> b!4404346 m!5069723))

(check-sat (not b!4404341) tp_is_empty!25801 (not b!4404340) (not b!4404336) (not b!4404347) (not b!4404346) (not b!4404334) (not start!428504) (not b!4404344) (not b!4404338) (not b!4404343) (not b!4404345) (not b!4404335) (not b!4404339) (not b!4404348) (not b!4404337) tp_is_empty!25803 (not b!4404342))
(check-sat)
(get-model)

(declare-fun b!4404389 () Bool)

(declare-fun e!2742508 () Unit!79251)

(declare-fun e!2742507 () Unit!79251)

(assert (=> b!4404389 (= e!2742508 e!2742507)))

(declare-fun c!749907 () Bool)

(declare-fun call!306508 () Bool)

(assert (=> b!4404389 (= c!749907 call!306508)))

(declare-fun b!4404390 () Bool)

(declare-datatypes ((List!49441 0))(
  ( (Nil!49317) (Cons!49317 (h!54952 K!10670) (t!356375 List!49441)) )
))
(declare-fun e!2742503 () List!49441)

(declare-fun getKeysList!205 (List!49438) List!49441)

(assert (=> b!4404390 (= e!2742503 (getKeysList!205 (toList!3266 lt!1608771)))))

(declare-fun b!4404391 () Bool)

(assert (=> b!4404391 false))

(declare-fun lt!1608828 () Unit!79251)

(declare-fun lt!1608826 () Unit!79251)

(assert (=> b!4404391 (= lt!1608828 lt!1608826)))

(declare-fun containsKey!965 (List!49438 K!10670) Bool)

(assert (=> b!4404391 (containsKey!965 (toList!3266 lt!1608771) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!202 (List!49438 K!10670) Unit!79251)

(assert (=> b!4404391 (= lt!1608826 (lemmaInGetKeysListThenContainsKey!202 (toList!3266 lt!1608771) key!3918))))

(declare-fun Unit!79275 () Unit!79251)

(assert (=> b!4404391 (= e!2742507 Unit!79275)))

(declare-fun d!1328786 () Bool)

(declare-fun e!2742504 () Bool)

(assert (=> d!1328786 e!2742504))

(declare-fun res!1817138 () Bool)

(assert (=> d!1328786 (=> res!1817138 e!2742504)))

(declare-fun e!2742505 () Bool)

(assert (=> d!1328786 (= res!1817138 e!2742505)))

(declare-fun res!1817137 () Bool)

(assert (=> d!1328786 (=> (not res!1817137) (not e!2742505))))

(declare-fun lt!1608832 () Bool)

(assert (=> d!1328786 (= res!1817137 (not lt!1608832))))

(declare-fun lt!1608825 () Bool)

(assert (=> d!1328786 (= lt!1608832 lt!1608825)))

(declare-fun lt!1608829 () Unit!79251)

(assert (=> d!1328786 (= lt!1608829 e!2742508)))

(declare-fun c!749909 () Bool)

(assert (=> d!1328786 (= c!749909 lt!1608825)))

(assert (=> d!1328786 (= lt!1608825 (containsKey!965 (toList!3266 lt!1608771) key!3918))))

(assert (=> d!1328786 (= (contains!11723 lt!1608771 key!3918) lt!1608832)))

(declare-fun b!4404392 () Bool)

(declare-fun contains!11728 (List!49441 K!10670) Bool)

(declare-fun keys!16769 (ListMap!2509) List!49441)

(assert (=> b!4404392 (= e!2742505 (not (contains!11728 (keys!16769 lt!1608771) key!3918)))))

(declare-fun b!4404393 () Bool)

(declare-fun e!2742506 () Bool)

(assert (=> b!4404393 (= e!2742504 e!2742506)))

(declare-fun res!1817136 () Bool)

(assert (=> b!4404393 (=> (not res!1817136) (not e!2742506))))

(declare-datatypes ((Option!10628 0))(
  ( (None!10627) (Some!10627 (v!43761 V!10916)) )
))
(declare-fun isDefined!7920 (Option!10628) Bool)

(declare-fun getValueByKey!614 (List!49438 K!10670) Option!10628)

(assert (=> b!4404393 (= res!1817136 (isDefined!7920 (getValueByKey!614 (toList!3266 lt!1608771) key!3918)))))

(declare-fun b!4404394 () Bool)

(assert (=> b!4404394 (= e!2742503 (keys!16769 lt!1608771))))

(declare-fun b!4404395 () Bool)

(assert (=> b!4404395 (= e!2742506 (contains!11728 (keys!16769 lt!1608771) key!3918))))

(declare-fun b!4404396 () Bool)

(declare-fun Unit!79278 () Unit!79251)

(assert (=> b!4404396 (= e!2742507 Unit!79278)))

(declare-fun bm!306503 () Bool)

(assert (=> bm!306503 (= call!306508 (contains!11728 e!2742503 key!3918))))

(declare-fun c!749908 () Bool)

(assert (=> bm!306503 (= c!749908 c!749909)))

(declare-fun b!4404397 () Bool)

(declare-fun lt!1608831 () Unit!79251)

(assert (=> b!4404397 (= e!2742508 lt!1608831)))

(declare-fun lt!1608827 () Unit!79251)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!523 (List!49438 K!10670) Unit!79251)

(assert (=> b!4404397 (= lt!1608827 (lemmaContainsKeyImpliesGetValueByKeyDefined!523 (toList!3266 lt!1608771) key!3918))))

(assert (=> b!4404397 (isDefined!7920 (getValueByKey!614 (toList!3266 lt!1608771) key!3918))))

(declare-fun lt!1608830 () Unit!79251)

(assert (=> b!4404397 (= lt!1608830 lt!1608827)))

(declare-fun lemmaInListThenGetKeysListContains!202 (List!49438 K!10670) Unit!79251)

(assert (=> b!4404397 (= lt!1608831 (lemmaInListThenGetKeysListContains!202 (toList!3266 lt!1608771) key!3918))))

(assert (=> b!4404397 call!306508))

(assert (= (and d!1328786 c!749909) b!4404397))

(assert (= (and d!1328786 (not c!749909)) b!4404389))

(assert (= (and b!4404389 c!749907) b!4404391))

(assert (= (and b!4404389 (not c!749907)) b!4404396))

(assert (= (or b!4404397 b!4404389) bm!306503))

(assert (= (and bm!306503 c!749908) b!4404390))

(assert (= (and bm!306503 (not c!749908)) b!4404394))

(assert (= (and d!1328786 res!1817137) b!4404392))

(assert (= (and d!1328786 (not res!1817138)) b!4404393))

(assert (= (and b!4404393 res!1817136) b!4404395))

(declare-fun m!5069797 () Bool)

(assert (=> b!4404390 m!5069797))

(declare-fun m!5069799 () Bool)

(assert (=> bm!306503 m!5069799))

(declare-fun m!5069801 () Bool)

(assert (=> b!4404397 m!5069801))

(declare-fun m!5069803 () Bool)

(assert (=> b!4404397 m!5069803))

(assert (=> b!4404397 m!5069803))

(declare-fun m!5069805 () Bool)

(assert (=> b!4404397 m!5069805))

(declare-fun m!5069807 () Bool)

(assert (=> b!4404397 m!5069807))

(declare-fun m!5069809 () Bool)

(assert (=> b!4404395 m!5069809))

(assert (=> b!4404395 m!5069809))

(declare-fun m!5069811 () Bool)

(assert (=> b!4404395 m!5069811))

(assert (=> b!4404392 m!5069809))

(assert (=> b!4404392 m!5069809))

(assert (=> b!4404392 m!5069811))

(declare-fun m!5069813 () Bool)

(assert (=> b!4404391 m!5069813))

(declare-fun m!5069815 () Bool)

(assert (=> b!4404391 m!5069815))

(assert (=> d!1328786 m!5069813))

(assert (=> b!4404393 m!5069803))

(assert (=> b!4404393 m!5069803))

(assert (=> b!4404393 m!5069805))

(assert (=> b!4404394 m!5069809))

(assert (=> b!4404340 d!1328786))

(declare-fun bs!730131 () Bool)

(declare-fun d!1328798 () Bool)

(assert (= bs!730131 (and d!1328798 start!428504)))

(declare-fun lambda!149642 () Int)

(assert (=> bs!730131 (= lambda!149642 lambda!149633)))

(declare-fun lt!1608835 () ListMap!2509)

(declare-fun invariantList!758 (List!49438) Bool)

(assert (=> d!1328798 (invariantList!758 (toList!3266 lt!1608835))))

(declare-fun e!2742511 () ListMap!2509)

(assert (=> d!1328798 (= lt!1608835 e!2742511)))

(declare-fun c!749912 () Bool)

(assert (=> d!1328798 (= c!749912 ((_ is Cons!49315) (toList!3265 lm!1707)))))

(assert (=> d!1328798 (forall!9392 (toList!3265 lm!1707) lambda!149642)))

(assert (=> d!1328798 (= (extractMap!700 (toList!3265 lm!1707)) lt!1608835)))

(declare-fun b!4404402 () Bool)

(assert (=> b!4404402 (= e!2742511 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) (extractMap!700 (t!356373 (toList!3265 lm!1707)))))))

(declare-fun b!4404403 () Bool)

(assert (=> b!4404403 (= e!2742511 (ListMap!2510 Nil!49314))))

(assert (= (and d!1328798 c!749912) b!4404402))

(assert (= (and d!1328798 (not c!749912)) b!4404403))

(declare-fun m!5069817 () Bool)

(assert (=> d!1328798 m!5069817))

(declare-fun m!5069819 () Bool)

(assert (=> d!1328798 m!5069819))

(assert (=> b!4404402 m!5069703))

(assert (=> b!4404402 m!5069703))

(declare-fun m!5069821 () Bool)

(assert (=> b!4404402 m!5069821))

(assert (=> b!4404340 d!1328798))

(declare-fun d!1328800 () Bool)

(declare-fun res!1817143 () Bool)

(declare-fun e!2742516 () Bool)

(assert (=> d!1328800 (=> res!1817143 e!2742516)))

(assert (=> d!1328800 (= res!1817143 ((_ is Nil!49315) (toList!3265 lt!1608770)))))

(assert (=> d!1328800 (= (forall!9392 (toList!3265 lt!1608770) lambda!149633) e!2742516)))

(declare-fun b!4404408 () Bool)

(declare-fun e!2742517 () Bool)

(assert (=> b!4404408 (= e!2742516 e!2742517)))

(declare-fun res!1817144 () Bool)

(assert (=> b!4404408 (=> (not res!1817144) (not e!2742517))))

(declare-fun dynLambda!20775 (Int tuple2!48936) Bool)

(assert (=> b!4404408 (= res!1817144 (dynLambda!20775 lambda!149633 (h!54948 (toList!3265 lt!1608770))))))

(declare-fun b!4404409 () Bool)

(assert (=> b!4404409 (= e!2742517 (forall!9392 (t!356373 (toList!3265 lt!1608770)) lambda!149633))))

(assert (= (and d!1328800 (not res!1817143)) b!4404408))

(assert (= (and b!4404408 res!1817144) b!4404409))

(declare-fun b_lambda!140215 () Bool)

(assert (=> (not b_lambda!140215) (not b!4404408)))

(declare-fun m!5069823 () Bool)

(assert (=> b!4404408 m!5069823))

(declare-fun m!5069825 () Bool)

(assert (=> b!4404409 m!5069825))

(assert (=> b!4404338 d!1328800))

(declare-fun bs!730132 () Bool)

(declare-fun d!1328802 () Bool)

(assert (= bs!730132 (and d!1328802 start!428504)))

(declare-fun lambda!149643 () Int)

(assert (=> bs!730132 (= lambda!149643 lambda!149633)))

(declare-fun bs!730133 () Bool)

(assert (= bs!730133 (and d!1328802 d!1328798)))

(assert (=> bs!730133 (= lambda!149643 lambda!149642)))

(declare-fun lt!1608836 () ListMap!2509)

(assert (=> d!1328802 (invariantList!758 (toList!3266 lt!1608836))))

(declare-fun e!2742518 () ListMap!2509)

(assert (=> d!1328802 (= lt!1608836 e!2742518)))

(declare-fun c!749913 () Bool)

(assert (=> d!1328802 (= c!749913 ((_ is Cons!49315) (toList!3265 lt!1608751)))))

(assert (=> d!1328802 (forall!9392 (toList!3265 lt!1608751) lambda!149643)))

(assert (=> d!1328802 (= (extractMap!700 (toList!3265 lt!1608751)) lt!1608836)))

(declare-fun b!4404410 () Bool)

(assert (=> b!4404410 (= e!2742518 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lt!1608751))) (extractMap!700 (t!356373 (toList!3265 lt!1608751)))))))

(declare-fun b!4404411 () Bool)

(assert (=> b!4404411 (= e!2742518 (ListMap!2510 Nil!49314))))

(assert (= (and d!1328802 c!749913) b!4404410))

(assert (= (and d!1328802 (not c!749913)) b!4404411))

(declare-fun m!5069827 () Bool)

(assert (=> d!1328802 m!5069827))

(declare-fun m!5069829 () Bool)

(assert (=> d!1328802 m!5069829))

(declare-fun m!5069831 () Bool)

(assert (=> b!4404410 m!5069831))

(assert (=> b!4404410 m!5069831))

(declare-fun m!5069833 () Bool)

(assert (=> b!4404410 m!5069833))

(assert (=> b!4404348 d!1328802))

(declare-fun b!4404547 () Bool)

(assert (=> b!4404547 true))

(declare-fun bs!730192 () Bool)

(declare-fun b!4404548 () Bool)

(assert (= bs!730192 (and b!4404548 b!4404547)))

(declare-fun lambda!149721 () Int)

(declare-fun lambda!149720 () Int)

(assert (=> bs!730192 (= lambda!149721 lambda!149720)))

(assert (=> b!4404548 true))

(declare-fun lambda!149722 () Int)

(declare-fun lt!1609050 () ListMap!2509)

(assert (=> bs!730192 (= (= lt!1609050 lt!1608772) (= lambda!149722 lambda!149720))))

(assert (=> b!4404548 (= (= lt!1609050 lt!1608772) (= lambda!149722 lambda!149721))))

(assert (=> b!4404548 true))

(declare-fun bs!730193 () Bool)

(declare-fun d!1328804 () Bool)

(assert (= bs!730193 (and d!1328804 b!4404547)))

(declare-fun lambda!149723 () Int)

(declare-fun lt!1609047 () ListMap!2509)

(assert (=> bs!730193 (= (= lt!1609047 lt!1608772) (= lambda!149723 lambda!149720))))

(declare-fun bs!730194 () Bool)

(assert (= bs!730194 (and d!1328804 b!4404548)))

(assert (=> bs!730194 (= (= lt!1609047 lt!1608772) (= lambda!149723 lambda!149721))))

(assert (=> bs!730194 (= (= lt!1609047 lt!1609050) (= lambda!149723 lambda!149722))))

(assert (=> d!1328804 true))

(declare-fun e!2742612 () ListMap!2509)

(assert (=> b!4404547 (= e!2742612 lt!1608772)))

(declare-fun lt!1609045 () Unit!79251)

(declare-fun call!306533 () Unit!79251)

(assert (=> b!4404547 (= lt!1609045 call!306533)))

(declare-fun call!306534 () Bool)

(assert (=> b!4404547 call!306534))

(declare-fun lt!1609052 () Unit!79251)

(assert (=> b!4404547 (= lt!1609052 lt!1609045)))

(declare-fun call!306532 () Bool)

(assert (=> b!4404547 call!306532))

(declare-fun lt!1609058 () Unit!79251)

(declare-fun Unit!79281 () Unit!79251)

(assert (=> b!4404547 (= lt!1609058 Unit!79281)))

(assert (=> b!4404548 (= e!2742612 lt!1609050)))

(declare-fun lt!1609062 () ListMap!2509)

(assert (=> b!4404548 (= lt!1609062 (+!898 lt!1608772 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(assert (=> b!4404548 (= lt!1609050 (addToMapMapFromBucket!307 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707)))) (+!898 lt!1608772 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))))

(declare-fun lt!1609064 () Unit!79251)

(assert (=> b!4404548 (= lt!1609064 call!306533)))

(declare-fun forall!9394 (List!49438 Int) Bool)

(assert (=> b!4404548 (forall!9394 (toList!3266 lt!1608772) lambda!149721)))

(declare-fun lt!1609060 () Unit!79251)

(assert (=> b!4404548 (= lt!1609060 lt!1609064)))

(assert (=> b!4404548 call!306534))

(declare-fun lt!1609049 () Unit!79251)

(declare-fun Unit!79282 () Unit!79251)

(assert (=> b!4404548 (= lt!1609049 Unit!79282)))

(assert (=> b!4404548 (forall!9394 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707)))) lambda!149722)))

(declare-fun lt!1609056 () Unit!79251)

(declare-fun Unit!79283 () Unit!79251)

(assert (=> b!4404548 (= lt!1609056 Unit!79283)))

(declare-fun lt!1609053 () Unit!79251)

(declare-fun Unit!79284 () Unit!79251)

(assert (=> b!4404548 (= lt!1609053 Unit!79284)))

(declare-fun lt!1609063 () Unit!79251)

(declare-fun forallContained!2029 (List!49438 Int tuple2!48934) Unit!79251)

(assert (=> b!4404548 (= lt!1609063 (forallContained!2029 (toList!3266 lt!1609062) lambda!149722 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(assert (=> b!4404548 (contains!11723 lt!1609062 (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(declare-fun lt!1609057 () Unit!79251)

(declare-fun Unit!79285 () Unit!79251)

(assert (=> b!4404548 (= lt!1609057 Unit!79285)))

(assert (=> b!4404548 (contains!11723 lt!1609050 (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(declare-fun lt!1609048 () Unit!79251)

(declare-fun Unit!79286 () Unit!79251)

(assert (=> b!4404548 (= lt!1609048 Unit!79286)))

(assert (=> b!4404548 call!306532))

(declare-fun lt!1609055 () Unit!79251)

(declare-fun Unit!79287 () Unit!79251)

(assert (=> b!4404548 (= lt!1609055 Unit!79287)))

(assert (=> b!4404548 (forall!9394 (toList!3266 lt!1609062) lambda!149722)))

(declare-fun lt!1609046 () Unit!79251)

(declare-fun Unit!79288 () Unit!79251)

(assert (=> b!4404548 (= lt!1609046 Unit!79288)))

(declare-fun lt!1609065 () Unit!79251)

(declare-fun Unit!79289 () Unit!79251)

(assert (=> b!4404548 (= lt!1609065 Unit!79289)))

(declare-fun lt!1609054 () Unit!79251)

(declare-fun addForallContainsKeyThenBeforeAdding!137 (ListMap!2509 ListMap!2509 K!10670 V!10916) Unit!79251)

(assert (=> b!4404548 (= lt!1609054 (addForallContainsKeyThenBeforeAdding!137 lt!1608772 lt!1609050 (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))) (_2!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))))

(assert (=> b!4404548 (forall!9394 (toList!3266 lt!1608772) lambda!149722)))

(declare-fun lt!1609051 () Unit!79251)

(assert (=> b!4404548 (= lt!1609051 lt!1609054)))

(assert (=> b!4404548 (forall!9394 (toList!3266 lt!1608772) lambda!149722)))

(declare-fun lt!1609059 () Unit!79251)

(declare-fun Unit!79290 () Unit!79251)

(assert (=> b!4404548 (= lt!1609059 Unit!79290)))

(declare-fun res!1817217 () Bool)

(assert (=> b!4404548 (= res!1817217 (forall!9394 (_2!27762 (h!54948 (toList!3265 lm!1707))) lambda!149722))))

(declare-fun e!2742610 () Bool)

(assert (=> b!4404548 (=> (not res!1817217) (not e!2742610))))

(assert (=> b!4404548 e!2742610))

(declare-fun lt!1609061 () Unit!79251)

(declare-fun Unit!79291 () Unit!79251)

(assert (=> b!4404548 (= lt!1609061 Unit!79291)))

(declare-fun b!4404549 () Bool)

(assert (=> b!4404549 (= e!2742610 (forall!9394 (toList!3266 lt!1608772) lambda!149722))))

(declare-fun b!4404550 () Bool)

(declare-fun e!2742611 () Bool)

(assert (=> b!4404550 (= e!2742611 (invariantList!758 (toList!3266 lt!1609047)))))

(declare-fun bm!306527 () Bool)

(declare-fun c!749944 () Bool)

(assert (=> bm!306527 (= call!306532 (forall!9394 (ite c!749944 (toList!3266 lt!1608772) (_2!27762 (h!54948 (toList!3265 lm!1707)))) (ite c!749944 lambda!149720 lambda!149722)))))

(assert (=> d!1328804 e!2742611))

(declare-fun res!1817216 () Bool)

(assert (=> d!1328804 (=> (not res!1817216) (not e!2742611))))

(assert (=> d!1328804 (= res!1817216 (forall!9394 (_2!27762 (h!54948 (toList!3265 lm!1707))) lambda!149723))))

(assert (=> d!1328804 (= lt!1609047 e!2742612)))

(assert (=> d!1328804 (= c!749944 ((_ is Nil!49314) (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(assert (=> d!1328804 (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lm!1707))))))

(assert (=> d!1328804 (= (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) lt!1608772) lt!1609047)))

(declare-fun bm!306528 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!137 (ListMap!2509) Unit!79251)

(assert (=> bm!306528 (= call!306533 (lemmaContainsAllItsOwnKeys!137 lt!1608772))))

(declare-fun b!4404551 () Bool)

(declare-fun res!1817215 () Bool)

(assert (=> b!4404551 (=> (not res!1817215) (not e!2742611))))

(assert (=> b!4404551 (= res!1817215 (forall!9394 (toList!3266 lt!1608772) lambda!149723))))

(declare-fun bm!306529 () Bool)

(assert (=> bm!306529 (= call!306534 (forall!9394 (ite c!749944 (toList!3266 lt!1608772) (toList!3266 lt!1609062)) (ite c!749944 lambda!149720 lambda!149722)))))

(assert (= (and d!1328804 c!749944) b!4404547))

(assert (= (and d!1328804 (not c!749944)) b!4404548))

(assert (= (and b!4404548 res!1817217) b!4404549))

(assert (= (or b!4404547 b!4404548) bm!306528))

(assert (= (or b!4404547 b!4404548) bm!306529))

(assert (= (or b!4404547 b!4404548) bm!306527))

(assert (= (and d!1328804 res!1817216) b!4404551))

(assert (= (and b!4404551 res!1817215) b!4404550))

(declare-fun m!5070095 () Bool)

(assert (=> b!4404551 m!5070095))

(declare-fun m!5070097 () Bool)

(assert (=> bm!306528 m!5070097))

(declare-fun m!5070099 () Bool)

(assert (=> bm!306527 m!5070099))

(declare-fun m!5070101 () Bool)

(assert (=> b!4404550 m!5070101))

(declare-fun m!5070103 () Bool)

(assert (=> b!4404548 m!5070103))

(declare-fun m!5070105 () Bool)

(assert (=> b!4404548 m!5070105))

(declare-fun m!5070107 () Bool)

(assert (=> b!4404548 m!5070107))

(declare-fun m!5070109 () Bool)

(assert (=> b!4404548 m!5070109))

(declare-fun m!5070111 () Bool)

(assert (=> b!4404548 m!5070111))

(declare-fun m!5070113 () Bool)

(assert (=> b!4404548 m!5070113))

(declare-fun m!5070115 () Bool)

(assert (=> b!4404548 m!5070115))

(assert (=> b!4404548 m!5070113))

(declare-fun m!5070117 () Bool)

(assert (=> b!4404548 m!5070117))

(declare-fun m!5070119 () Bool)

(assert (=> b!4404548 m!5070119))

(declare-fun m!5070121 () Bool)

(assert (=> b!4404548 m!5070121))

(assert (=> b!4404548 m!5070103))

(declare-fun m!5070123 () Bool)

(assert (=> b!4404548 m!5070123))

(assert (=> b!4404549 m!5070113))

(declare-fun m!5070125 () Bool)

(assert (=> d!1328804 m!5070125))

(assert (=> d!1328804 m!5069641))

(declare-fun m!5070127 () Bool)

(assert (=> bm!306529 m!5070127))

(assert (=> b!4404348 d!1328804))

(declare-fun b!4404568 () Bool)

(declare-fun e!2742626 () Unit!79251)

(declare-fun e!2742625 () Unit!79251)

(assert (=> b!4404568 (= e!2742626 e!2742625)))

(declare-fun c!749951 () Bool)

(declare-fun call!306535 () Bool)

(assert (=> b!4404568 (= c!749951 call!306535)))

(declare-fun b!4404569 () Bool)

(declare-fun e!2742621 () List!49441)

(assert (=> b!4404569 (= e!2742621 (getKeysList!205 (toList!3266 lt!1608772)))))

(declare-fun b!4404570 () Bool)

(assert (=> b!4404570 false))

(declare-fun lt!1609074 () Unit!79251)

(declare-fun lt!1609072 () Unit!79251)

(assert (=> b!4404570 (= lt!1609074 lt!1609072)))

(assert (=> b!4404570 (containsKey!965 (toList!3266 lt!1608772) key!3918)))

(assert (=> b!4404570 (= lt!1609072 (lemmaInGetKeysListThenContainsKey!202 (toList!3266 lt!1608772) key!3918))))

(declare-fun Unit!79293 () Unit!79251)

(assert (=> b!4404570 (= e!2742625 Unit!79293)))

(declare-fun d!1328868 () Bool)

(declare-fun e!2742622 () Bool)

(assert (=> d!1328868 e!2742622))

(declare-fun res!1817222 () Bool)

(assert (=> d!1328868 (=> res!1817222 e!2742622)))

(declare-fun e!2742623 () Bool)

(assert (=> d!1328868 (= res!1817222 e!2742623)))

(declare-fun res!1817221 () Bool)

(assert (=> d!1328868 (=> (not res!1817221) (not e!2742623))))

(declare-fun lt!1609078 () Bool)

(assert (=> d!1328868 (= res!1817221 (not lt!1609078))))

(declare-fun lt!1609071 () Bool)

(assert (=> d!1328868 (= lt!1609078 lt!1609071)))

(declare-fun lt!1609075 () Unit!79251)

(assert (=> d!1328868 (= lt!1609075 e!2742626)))

(declare-fun c!749953 () Bool)

(assert (=> d!1328868 (= c!749953 lt!1609071)))

(assert (=> d!1328868 (= lt!1609071 (containsKey!965 (toList!3266 lt!1608772) key!3918))))

(assert (=> d!1328868 (= (contains!11723 lt!1608772 key!3918) lt!1609078)))

(declare-fun b!4404571 () Bool)

(assert (=> b!4404571 (= e!2742623 (not (contains!11728 (keys!16769 lt!1608772) key!3918)))))

(declare-fun b!4404572 () Bool)

(declare-fun e!2742624 () Bool)

(assert (=> b!4404572 (= e!2742622 e!2742624)))

(declare-fun res!1817220 () Bool)

(assert (=> b!4404572 (=> (not res!1817220) (not e!2742624))))

(assert (=> b!4404572 (= res!1817220 (isDefined!7920 (getValueByKey!614 (toList!3266 lt!1608772) key!3918)))))

(declare-fun b!4404573 () Bool)

(assert (=> b!4404573 (= e!2742621 (keys!16769 lt!1608772))))

(declare-fun b!4404574 () Bool)

(assert (=> b!4404574 (= e!2742624 (contains!11728 (keys!16769 lt!1608772) key!3918))))

(declare-fun b!4404575 () Bool)

(declare-fun Unit!79295 () Unit!79251)

(assert (=> b!4404575 (= e!2742625 Unit!79295)))

(declare-fun bm!306530 () Bool)

(assert (=> bm!306530 (= call!306535 (contains!11728 e!2742621 key!3918))))

(declare-fun c!749952 () Bool)

(assert (=> bm!306530 (= c!749952 c!749953)))

(declare-fun b!4404576 () Bool)

(declare-fun lt!1609077 () Unit!79251)

(assert (=> b!4404576 (= e!2742626 lt!1609077)))

(declare-fun lt!1609073 () Unit!79251)

(assert (=> b!4404576 (= lt!1609073 (lemmaContainsKeyImpliesGetValueByKeyDefined!523 (toList!3266 lt!1608772) key!3918))))

(assert (=> b!4404576 (isDefined!7920 (getValueByKey!614 (toList!3266 lt!1608772) key!3918))))

(declare-fun lt!1609076 () Unit!79251)

(assert (=> b!4404576 (= lt!1609076 lt!1609073)))

(assert (=> b!4404576 (= lt!1609077 (lemmaInListThenGetKeysListContains!202 (toList!3266 lt!1608772) key!3918))))

(assert (=> b!4404576 call!306535))

(assert (= (and d!1328868 c!749953) b!4404576))

(assert (= (and d!1328868 (not c!749953)) b!4404568))

(assert (= (and b!4404568 c!749951) b!4404570))

(assert (= (and b!4404568 (not c!749951)) b!4404575))

(assert (= (or b!4404576 b!4404568) bm!306530))

(assert (= (and bm!306530 c!749952) b!4404569))

(assert (= (and bm!306530 (not c!749952)) b!4404573))

(assert (= (and d!1328868 res!1817221) b!4404571))

(assert (= (and d!1328868 (not res!1817222)) b!4404572))

(assert (= (and b!4404572 res!1817220) b!4404574))

(declare-fun m!5070133 () Bool)

(assert (=> b!4404569 m!5070133))

(declare-fun m!5070135 () Bool)

(assert (=> bm!306530 m!5070135))

(declare-fun m!5070137 () Bool)

(assert (=> b!4404576 m!5070137))

(declare-fun m!5070139 () Bool)

(assert (=> b!4404576 m!5070139))

(assert (=> b!4404576 m!5070139))

(declare-fun m!5070141 () Bool)

(assert (=> b!4404576 m!5070141))

(declare-fun m!5070143 () Bool)

(assert (=> b!4404576 m!5070143))

(declare-fun m!5070145 () Bool)

(assert (=> b!4404574 m!5070145))

(assert (=> b!4404574 m!5070145))

(declare-fun m!5070147 () Bool)

(assert (=> b!4404574 m!5070147))

(assert (=> b!4404571 m!5070145))

(assert (=> b!4404571 m!5070145))

(assert (=> b!4404571 m!5070147))

(declare-fun m!5070151 () Bool)

(assert (=> b!4404570 m!5070151))

(declare-fun m!5070155 () Bool)

(assert (=> b!4404570 m!5070155))

(assert (=> d!1328868 m!5070151))

(assert (=> b!4404572 m!5070139))

(assert (=> b!4404572 m!5070139))

(assert (=> b!4404572 m!5070141))

(assert (=> b!4404573 m!5070145))

(assert (=> b!4404348 d!1328868))

(declare-fun d!1328872 () Bool)

(declare-fun e!2742638 () Bool)

(assert (=> d!1328872 e!2742638))

(declare-fun res!1817230 () Bool)

(assert (=> d!1328872 (=> (not res!1817230) (not e!2742638))))

(declare-fun lt!1609091 () ListMap!2509)

(assert (=> d!1328872 (= res!1817230 (contains!11723 lt!1609091 (_1!27761 lt!1608755)))))

(declare-fun lt!1609090 () List!49438)

(assert (=> d!1328872 (= lt!1609091 (ListMap!2510 lt!1609090))))

(declare-fun lt!1609089 () Unit!79251)

(declare-fun lt!1609088 () Unit!79251)

(assert (=> d!1328872 (= lt!1609089 lt!1609088)))

(assert (=> d!1328872 (= (getValueByKey!614 lt!1609090 (_1!27761 lt!1608755)) (Some!10627 (_2!27761 lt!1608755)))))

(declare-fun lemmaContainsTupThenGetReturnValue!360 (List!49438 K!10670 V!10916) Unit!79251)

(assert (=> d!1328872 (= lt!1609088 (lemmaContainsTupThenGetReturnValue!360 lt!1609090 (_1!27761 lt!1608755) (_2!27761 lt!1608755)))))

(declare-fun insertNoDuplicatedKeys!157 (List!49438 K!10670 V!10916) List!49438)

(assert (=> d!1328872 (= lt!1609090 (insertNoDuplicatedKeys!157 (toList!3266 lt!1608764) (_1!27761 lt!1608755) (_2!27761 lt!1608755)))))

(assert (=> d!1328872 (= (+!898 lt!1608764 lt!1608755) lt!1609091)))

(declare-fun b!4404594 () Bool)

(declare-fun res!1817231 () Bool)

(assert (=> b!4404594 (=> (not res!1817231) (not e!2742638))))

(assert (=> b!4404594 (= res!1817231 (= (getValueByKey!614 (toList!3266 lt!1609091) (_1!27761 lt!1608755)) (Some!10627 (_2!27761 lt!1608755))))))

(declare-fun b!4404595 () Bool)

(declare-fun contains!11729 (List!49438 tuple2!48934) Bool)

(assert (=> b!4404595 (= e!2742638 (contains!11729 (toList!3266 lt!1609091) lt!1608755))))

(assert (= (and d!1328872 res!1817230) b!4404594))

(assert (= (and b!4404594 res!1817231) b!4404595))

(declare-fun m!5070163 () Bool)

(assert (=> d!1328872 m!5070163))

(declare-fun m!5070165 () Bool)

(assert (=> d!1328872 m!5070165))

(declare-fun m!5070167 () Bool)

(assert (=> d!1328872 m!5070167))

(declare-fun m!5070169 () Bool)

(assert (=> d!1328872 m!5070169))

(declare-fun m!5070171 () Bool)

(assert (=> b!4404594 m!5070171))

(declare-fun m!5070173 () Bool)

(assert (=> b!4404595 m!5070173))

(assert (=> b!4404348 d!1328872))

(declare-fun bs!730199 () Bool)

(declare-fun b!4404596 () Bool)

(assert (= bs!730199 (and b!4404596 b!4404547)))

(declare-fun lambda!149724 () Int)

(assert (=> bs!730199 (= (= lt!1608762 lt!1608772) (= lambda!149724 lambda!149720))))

(declare-fun bs!730200 () Bool)

(assert (= bs!730200 (and b!4404596 b!4404548)))

(assert (=> bs!730200 (= (= lt!1608762 lt!1608772) (= lambda!149724 lambda!149721))))

(assert (=> bs!730200 (= (= lt!1608762 lt!1609050) (= lambda!149724 lambda!149722))))

(declare-fun bs!730201 () Bool)

(assert (= bs!730201 (and b!4404596 d!1328804)))

(assert (=> bs!730201 (= (= lt!1608762 lt!1609047) (= lambda!149724 lambda!149723))))

(assert (=> b!4404596 true))

(declare-fun bs!730202 () Bool)

(declare-fun b!4404597 () Bool)

(assert (= bs!730202 (and b!4404597 d!1328804)))

(declare-fun lambda!149725 () Int)

(assert (=> bs!730202 (= (= lt!1608762 lt!1609047) (= lambda!149725 lambda!149723))))

(declare-fun bs!730203 () Bool)

(assert (= bs!730203 (and b!4404597 b!4404548)))

(assert (=> bs!730203 (= (= lt!1608762 lt!1609050) (= lambda!149725 lambda!149722))))

(declare-fun bs!730204 () Bool)

(assert (= bs!730204 (and b!4404597 b!4404596)))

(assert (=> bs!730204 (= lambda!149725 lambda!149724)))

(assert (=> bs!730203 (= (= lt!1608762 lt!1608772) (= lambda!149725 lambda!149721))))

(declare-fun bs!730205 () Bool)

(assert (= bs!730205 (and b!4404597 b!4404547)))

(assert (=> bs!730205 (= (= lt!1608762 lt!1608772) (= lambda!149725 lambda!149720))))

(assert (=> b!4404597 true))

(declare-fun lambda!149726 () Int)

(declare-fun lt!1609097 () ListMap!2509)

(assert (=> bs!730202 (= (= lt!1609097 lt!1609047) (= lambda!149726 lambda!149723))))

(assert (=> bs!730203 (= (= lt!1609097 lt!1609050) (= lambda!149726 lambda!149722))))

(assert (=> bs!730204 (= (= lt!1609097 lt!1608762) (= lambda!149726 lambda!149724))))

(assert (=> bs!730203 (= (= lt!1609097 lt!1608772) (= lambda!149726 lambda!149721))))

(assert (=> bs!730205 (= (= lt!1609097 lt!1608772) (= lambda!149726 lambda!149720))))

(assert (=> b!4404597 (= (= lt!1609097 lt!1608762) (= lambda!149726 lambda!149725))))

(assert (=> b!4404597 true))

(declare-fun bs!730206 () Bool)

(declare-fun d!1328882 () Bool)

(assert (= bs!730206 (and d!1328882 d!1328804)))

(declare-fun lambda!149727 () Int)

(declare-fun lt!1609094 () ListMap!2509)

(assert (=> bs!730206 (= (= lt!1609094 lt!1609047) (= lambda!149727 lambda!149723))))

(declare-fun bs!730207 () Bool)

(assert (= bs!730207 (and d!1328882 b!4404548)))

(assert (=> bs!730207 (= (= lt!1609094 lt!1609050) (= lambda!149727 lambda!149722))))

(assert (=> bs!730207 (= (= lt!1609094 lt!1608772) (= lambda!149727 lambda!149721))))

(declare-fun bs!730208 () Bool)

(assert (= bs!730208 (and d!1328882 b!4404547)))

(assert (=> bs!730208 (= (= lt!1609094 lt!1608772) (= lambda!149727 lambda!149720))))

(declare-fun bs!730209 () Bool)

(assert (= bs!730209 (and d!1328882 b!4404597)))

(assert (=> bs!730209 (= (= lt!1609094 lt!1608762) (= lambda!149727 lambda!149725))))

(declare-fun bs!730210 () Bool)

(assert (= bs!730210 (and d!1328882 b!4404596)))

(assert (=> bs!730210 (= (= lt!1609094 lt!1608762) (= lambda!149727 lambda!149724))))

(assert (=> bs!730209 (= (= lt!1609094 lt!1609097) (= lambda!149727 lambda!149726))))

(assert (=> d!1328882 true))

(declare-fun e!2742641 () ListMap!2509)

(assert (=> b!4404596 (= e!2742641 lt!1608762)))

(declare-fun lt!1609092 () Unit!79251)

(declare-fun call!306537 () Unit!79251)

(assert (=> b!4404596 (= lt!1609092 call!306537)))

(declare-fun call!306538 () Bool)

(assert (=> b!4404596 call!306538))

(declare-fun lt!1609099 () Unit!79251)

(assert (=> b!4404596 (= lt!1609099 lt!1609092)))

(declare-fun call!306536 () Bool)

(assert (=> b!4404596 call!306536))

(declare-fun lt!1609105 () Unit!79251)

(declare-fun Unit!79296 () Unit!79251)

(assert (=> b!4404596 (= lt!1609105 Unit!79296)))

(assert (=> b!4404597 (= e!2742641 lt!1609097)))

(declare-fun lt!1609109 () ListMap!2509)

(assert (=> b!4404597 (= lt!1609109 (+!898 lt!1608762 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(assert (=> b!4404597 (= lt!1609097 (addToMapMapFromBucket!307 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707)))) (+!898 lt!1608762 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))))

(declare-fun lt!1609111 () Unit!79251)

(assert (=> b!4404597 (= lt!1609111 call!306537)))

(assert (=> b!4404597 (forall!9394 (toList!3266 lt!1608762) lambda!149725)))

(declare-fun lt!1609107 () Unit!79251)

(assert (=> b!4404597 (= lt!1609107 lt!1609111)))

(assert (=> b!4404597 call!306538))

(declare-fun lt!1609096 () Unit!79251)

(declare-fun Unit!79297 () Unit!79251)

(assert (=> b!4404597 (= lt!1609096 Unit!79297)))

(assert (=> b!4404597 (forall!9394 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707)))) lambda!149726)))

(declare-fun lt!1609103 () Unit!79251)

(declare-fun Unit!79298 () Unit!79251)

(assert (=> b!4404597 (= lt!1609103 Unit!79298)))

(declare-fun lt!1609100 () Unit!79251)

(declare-fun Unit!79299 () Unit!79251)

(assert (=> b!4404597 (= lt!1609100 Unit!79299)))

(declare-fun lt!1609110 () Unit!79251)

(assert (=> b!4404597 (= lt!1609110 (forallContained!2029 (toList!3266 lt!1609109) lambda!149726 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(assert (=> b!4404597 (contains!11723 lt!1609109 (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(declare-fun lt!1609104 () Unit!79251)

(declare-fun Unit!79300 () Unit!79251)

(assert (=> b!4404597 (= lt!1609104 Unit!79300)))

(assert (=> b!4404597 (contains!11723 lt!1609097 (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(declare-fun lt!1609095 () Unit!79251)

(declare-fun Unit!79301 () Unit!79251)

(assert (=> b!4404597 (= lt!1609095 Unit!79301)))

(assert (=> b!4404597 call!306536))

(declare-fun lt!1609102 () Unit!79251)

(declare-fun Unit!79302 () Unit!79251)

(assert (=> b!4404597 (= lt!1609102 Unit!79302)))

(assert (=> b!4404597 (forall!9394 (toList!3266 lt!1609109) lambda!149726)))

(declare-fun lt!1609093 () Unit!79251)

(declare-fun Unit!79303 () Unit!79251)

(assert (=> b!4404597 (= lt!1609093 Unit!79303)))

(declare-fun lt!1609112 () Unit!79251)

(declare-fun Unit!79304 () Unit!79251)

(assert (=> b!4404597 (= lt!1609112 Unit!79304)))

(declare-fun lt!1609101 () Unit!79251)

(assert (=> b!4404597 (= lt!1609101 (addForallContainsKeyThenBeforeAdding!137 lt!1608762 lt!1609097 (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))) (_2!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))))

(assert (=> b!4404597 (forall!9394 (toList!3266 lt!1608762) lambda!149726)))

(declare-fun lt!1609098 () Unit!79251)

(assert (=> b!4404597 (= lt!1609098 lt!1609101)))

(assert (=> b!4404597 (forall!9394 (toList!3266 lt!1608762) lambda!149726)))

(declare-fun lt!1609106 () Unit!79251)

(declare-fun Unit!79305 () Unit!79251)

(assert (=> b!4404597 (= lt!1609106 Unit!79305)))

(declare-fun res!1817234 () Bool)

(assert (=> b!4404597 (= res!1817234 (forall!9394 (_2!27762 (h!54948 (toList!3265 lm!1707))) lambda!149726))))

(declare-fun e!2742639 () Bool)

(assert (=> b!4404597 (=> (not res!1817234) (not e!2742639))))

(assert (=> b!4404597 e!2742639))

(declare-fun lt!1609108 () Unit!79251)

(declare-fun Unit!79306 () Unit!79251)

(assert (=> b!4404597 (= lt!1609108 Unit!79306)))

(declare-fun b!4404598 () Bool)

(assert (=> b!4404598 (= e!2742639 (forall!9394 (toList!3266 lt!1608762) lambda!149726))))

(declare-fun b!4404599 () Bool)

(declare-fun e!2742640 () Bool)

(assert (=> b!4404599 (= e!2742640 (invariantList!758 (toList!3266 lt!1609094)))))

(declare-fun bm!306531 () Bool)

(declare-fun c!749954 () Bool)

(assert (=> bm!306531 (= call!306536 (forall!9394 (ite c!749954 (toList!3266 lt!1608762) (_2!27762 (h!54948 (toList!3265 lm!1707)))) (ite c!749954 lambda!149724 lambda!149726)))))

(assert (=> d!1328882 e!2742640))

(declare-fun res!1817233 () Bool)

(assert (=> d!1328882 (=> (not res!1817233) (not e!2742640))))

(assert (=> d!1328882 (= res!1817233 (forall!9394 (_2!27762 (h!54948 (toList!3265 lm!1707))) lambda!149727))))

(assert (=> d!1328882 (= lt!1609094 e!2742641)))

(assert (=> d!1328882 (= c!749954 ((_ is Nil!49314) (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(assert (=> d!1328882 (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lm!1707))))))

(assert (=> d!1328882 (= (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) lt!1608762) lt!1609094)))

(declare-fun bm!306532 () Bool)

(assert (=> bm!306532 (= call!306537 (lemmaContainsAllItsOwnKeys!137 lt!1608762))))

(declare-fun b!4404600 () Bool)

(declare-fun res!1817232 () Bool)

(assert (=> b!4404600 (=> (not res!1817232) (not e!2742640))))

(assert (=> b!4404600 (= res!1817232 (forall!9394 (toList!3266 lt!1608762) lambda!149727))))

(declare-fun bm!306533 () Bool)

(assert (=> bm!306533 (= call!306538 (forall!9394 (ite c!749954 (toList!3266 lt!1608762) (toList!3266 lt!1609109)) (ite c!749954 lambda!149724 lambda!149726)))))

(assert (= (and d!1328882 c!749954) b!4404596))

(assert (= (and d!1328882 (not c!749954)) b!4404597))

(assert (= (and b!4404597 res!1817234) b!4404598))

(assert (= (or b!4404596 b!4404597) bm!306532))

(assert (= (or b!4404596 b!4404597) bm!306533))

(assert (= (or b!4404596 b!4404597) bm!306531))

(assert (= (and d!1328882 res!1817233) b!4404600))

(assert (= (and b!4404600 res!1817232) b!4404599))

(declare-fun m!5070175 () Bool)

(assert (=> b!4404600 m!5070175))

(declare-fun m!5070177 () Bool)

(assert (=> bm!306532 m!5070177))

(declare-fun m!5070179 () Bool)

(assert (=> bm!306531 m!5070179))

(declare-fun m!5070181 () Bool)

(assert (=> b!4404599 m!5070181))

(declare-fun m!5070183 () Bool)

(assert (=> b!4404597 m!5070183))

(declare-fun m!5070185 () Bool)

(assert (=> b!4404597 m!5070185))

(declare-fun m!5070187 () Bool)

(assert (=> b!4404597 m!5070187))

(declare-fun m!5070189 () Bool)

(assert (=> b!4404597 m!5070189))

(declare-fun m!5070191 () Bool)

(assert (=> b!4404597 m!5070191))

(declare-fun m!5070193 () Bool)

(assert (=> b!4404597 m!5070193))

(declare-fun m!5070195 () Bool)

(assert (=> b!4404597 m!5070195))

(assert (=> b!4404597 m!5070193))

(declare-fun m!5070197 () Bool)

(assert (=> b!4404597 m!5070197))

(declare-fun m!5070199 () Bool)

(assert (=> b!4404597 m!5070199))

(declare-fun m!5070201 () Bool)

(assert (=> b!4404597 m!5070201))

(assert (=> b!4404597 m!5070183))

(declare-fun m!5070203 () Bool)

(assert (=> b!4404597 m!5070203))

(assert (=> b!4404598 m!5070193))

(declare-fun m!5070205 () Bool)

(assert (=> d!1328882 m!5070205))

(assert (=> d!1328882 m!5069641))

(declare-fun m!5070207 () Bool)

(assert (=> bm!306533 m!5070207))

(assert (=> b!4404348 d!1328882))

(declare-fun d!1328884 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7888 (List!49438) (InoxSet tuple2!48934))

(assert (=> d!1328884 (= (eq!347 lt!1608756 lt!1608762) (= (content!7888 (toList!3266 lt!1608756)) (content!7888 (toList!3266 lt!1608762))))))

(declare-fun bs!730211 () Bool)

(assert (= bs!730211 d!1328884))

(declare-fun m!5070209 () Bool)

(assert (=> bs!730211 m!5070209))

(declare-fun m!5070211 () Bool)

(assert (=> bs!730211 m!5070211))

(assert (=> b!4404348 d!1328884))

(declare-fun bs!730212 () Bool)

(declare-fun d!1328886 () Bool)

(assert (= bs!730212 (and d!1328886 start!428504)))

(declare-fun lambda!149730 () Int)

(assert (=> bs!730212 (= lambda!149730 lambda!149633)))

(declare-fun bs!730213 () Bool)

(assert (= bs!730213 (and d!1328886 d!1328798)))

(assert (=> bs!730213 (= lambda!149730 lambda!149642)))

(declare-fun bs!730214 () Bool)

(assert (= bs!730214 (and d!1328886 d!1328802)))

(assert (=> bs!730214 (= lambda!149730 lambda!149643)))

(assert (=> d!1328886 (not (containsKey!963 (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707)))) key!3918))))

(declare-fun lt!1609115 () Unit!79251)

(declare-fun choose!27674 (ListLongMap!1915 K!10670 (_ BitVec 64) Hashable!5033) Unit!79251)

(assert (=> d!1328886 (= lt!1609115 (choose!27674 lm!1707 key!3918 (_1!27762 (h!54948 (toList!3265 lm!1707))) hashF!1247))))

(assert (=> d!1328886 (forall!9392 (toList!3265 lm!1707) lambda!149730)))

(assert (=> d!1328886 (= (lemmaNotSameHashThenCannotContainKey!112 lm!1707 key!3918 (_1!27762 (h!54948 (toList!3265 lm!1707))) hashF!1247) lt!1609115)))

(declare-fun bs!730215 () Bool)

(assert (= bs!730215 d!1328886))

(assert (=> bs!730215 m!5069711))

(assert (=> bs!730215 m!5069711))

(assert (=> bs!730215 m!5069713))

(declare-fun m!5070213 () Bool)

(assert (=> bs!730215 m!5070213))

(declare-fun m!5070215 () Bool)

(assert (=> bs!730215 m!5070215))

(assert (=> b!4404348 d!1328886))

(declare-fun d!1328888 () Bool)

(declare-datatypes ((Option!10629 0))(
  ( (None!10628) (Some!10628 (v!43762 List!49438)) )
))
(declare-fun get!16057 (Option!10629) List!49438)

(declare-fun getValueByKey!615 (List!49439 (_ BitVec 64)) Option!10629)

(assert (=> d!1328888 (= (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707)))) (get!16057 (getValueByKey!615 (toList!3265 lm!1707) (_1!27762 (h!54948 (toList!3265 lm!1707))))))))

(declare-fun bs!730216 () Bool)

(assert (= bs!730216 d!1328888))

(declare-fun m!5070217 () Bool)

(assert (=> bs!730216 m!5070217))

(assert (=> bs!730216 m!5070217))

(declare-fun m!5070219 () Bool)

(assert (=> bs!730216 m!5070219))

(assert (=> b!4404348 d!1328888))

(declare-fun d!1328890 () Bool)

(declare-fun e!2742642 () Bool)

(assert (=> d!1328890 e!2742642))

(declare-fun res!1817235 () Bool)

(assert (=> d!1328890 (=> (not res!1817235) (not e!2742642))))

(declare-fun lt!1609119 () ListMap!2509)

(assert (=> d!1328890 (= res!1817235 (contains!11723 lt!1609119 (_1!27761 lt!1608755)))))

(declare-fun lt!1609118 () List!49438)

(assert (=> d!1328890 (= lt!1609119 (ListMap!2510 lt!1609118))))

(declare-fun lt!1609117 () Unit!79251)

(declare-fun lt!1609116 () Unit!79251)

(assert (=> d!1328890 (= lt!1609117 lt!1609116)))

(assert (=> d!1328890 (= (getValueByKey!614 lt!1609118 (_1!27761 lt!1608755)) (Some!10627 (_2!27761 lt!1608755)))))

(assert (=> d!1328890 (= lt!1609116 (lemmaContainsTupThenGetReturnValue!360 lt!1609118 (_1!27761 lt!1608755) (_2!27761 lt!1608755)))))

(assert (=> d!1328890 (= lt!1609118 (insertNoDuplicatedKeys!157 (toList!3266 lt!1608772) (_1!27761 lt!1608755) (_2!27761 lt!1608755)))))

(assert (=> d!1328890 (= (+!898 lt!1608772 lt!1608755) lt!1609119)))

(declare-fun b!4404601 () Bool)

(declare-fun res!1817236 () Bool)

(assert (=> b!4404601 (=> (not res!1817236) (not e!2742642))))

(assert (=> b!4404601 (= res!1817236 (= (getValueByKey!614 (toList!3266 lt!1609119) (_1!27761 lt!1608755)) (Some!10627 (_2!27761 lt!1608755))))))

(declare-fun b!4404602 () Bool)

(assert (=> b!4404602 (= e!2742642 (contains!11729 (toList!3266 lt!1609119) lt!1608755))))

(assert (= (and d!1328890 res!1817235) b!4404601))

(assert (= (and b!4404601 res!1817236) b!4404602))

(declare-fun m!5070221 () Bool)

(assert (=> d!1328890 m!5070221))

(declare-fun m!5070223 () Bool)

(assert (=> d!1328890 m!5070223))

(declare-fun m!5070225 () Bool)

(assert (=> d!1328890 m!5070225))

(declare-fun m!5070227 () Bool)

(assert (=> d!1328890 m!5070227))

(declare-fun m!5070229 () Bool)

(assert (=> b!4404601 m!5070229))

(declare-fun m!5070231 () Bool)

(assert (=> b!4404602 m!5070231))

(assert (=> b!4404348 d!1328890))

(declare-fun d!1328892 () Bool)

(declare-fun res!1817241 () Bool)

(declare-fun e!2742647 () Bool)

(assert (=> d!1328892 (=> res!1817241 e!2742647)))

(assert (=> d!1328892 (= res!1817241 (and ((_ is Cons!49314) (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707))))) (= (_1!27761 (h!54947 (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707)))))) key!3918)))))

(assert (=> d!1328892 (= (containsKey!963 (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707)))) key!3918) e!2742647)))

(declare-fun b!4404607 () Bool)

(declare-fun e!2742648 () Bool)

(assert (=> b!4404607 (= e!2742647 e!2742648)))

(declare-fun res!1817242 () Bool)

(assert (=> b!4404607 (=> (not res!1817242) (not e!2742648))))

(assert (=> b!4404607 (= res!1817242 ((_ is Cons!49314) (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707))))))))

(declare-fun b!4404608 () Bool)

(assert (=> b!4404608 (= e!2742648 (containsKey!963 (t!356372 (apply!11493 lm!1707 (_1!27762 (h!54948 (toList!3265 lm!1707))))) key!3918))))

(assert (= (and d!1328892 (not res!1817241)) b!4404607))

(assert (= (and b!4404607 res!1817242) b!4404608))

(declare-fun m!5070233 () Bool)

(assert (=> b!4404608 m!5070233))

(assert (=> b!4404348 d!1328892))

(declare-fun d!1328894 () Bool)

(assert (=> d!1328894 (eq!347 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) (+!898 lt!1608772 (tuple2!48935 key!3918 newValue!99))) (+!898 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 lm!1707))) lt!1608772) (tuple2!48935 key!3918 newValue!99)))))

(declare-fun lt!1609122 () Unit!79251)

(declare-fun choose!27676 (ListMap!2509 K!10670 V!10916 List!49438) Unit!79251)

(assert (=> d!1328894 (= lt!1609122 (choose!27676 lt!1608772 key!3918 newValue!99 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(assert (=> d!1328894 (not (containsKey!963 (_2!27762 (h!54948 (toList!3265 lm!1707))) key!3918))))

(assert (=> d!1328894 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!146 lt!1608772 key!3918 newValue!99 (_2!27762 (h!54948 (toList!3265 lm!1707)))) lt!1609122)))

(declare-fun bs!730217 () Bool)

(assert (= bs!730217 d!1328894))

(declare-fun m!5070235 () Bool)

(assert (=> bs!730217 m!5070235))

(declare-fun m!5070237 () Bool)

(assert (=> bs!730217 m!5070237))

(declare-fun m!5070239 () Bool)

(assert (=> bs!730217 m!5070239))

(assert (=> bs!730217 m!5069709))

(assert (=> bs!730217 m!5070237))

(declare-fun m!5070241 () Bool)

(assert (=> bs!730217 m!5070241))

(declare-fun m!5070243 () Bool)

(assert (=> bs!730217 m!5070243))

(assert (=> bs!730217 m!5069709))

(assert (=> bs!730217 m!5069665))

(assert (=> bs!730217 m!5070243))

(assert (=> bs!730217 m!5070235))

(assert (=> b!4404348 d!1328894))

(declare-fun d!1328896 () Bool)

(assert (=> d!1328896 (contains!11723 lt!1608769 key!3918)))

(declare-fun lt!1609125 () Unit!79251)

(declare-fun choose!27678 (List!49438 K!10670 V!10916 ListMap!2509) Unit!79251)

(assert (=> d!1328896 (= lt!1609125 (choose!27678 (_2!27762 (h!54948 (toList!3265 lm!1707))) key!3918 newValue!99 lt!1608769))))

(assert (=> d!1328896 (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lm!1707))))))

(assert (=> d!1328896 (= (lemmaAddToMapContainsAndNotInListThenInAcc!100 (_2!27762 (h!54948 (toList!3265 lm!1707))) key!3918 newValue!99 lt!1608769) lt!1609125)))

(declare-fun bs!730218 () Bool)

(assert (= bs!730218 d!1328896))

(assert (=> bs!730218 m!5069685))

(declare-fun m!5070245 () Bool)

(assert (=> bs!730218 m!5070245))

(assert (=> bs!730218 m!5069641))

(assert (=> b!4404348 d!1328896))

(declare-fun d!1328898 () Bool)

(declare-fun e!2742651 () Bool)

(assert (=> d!1328898 e!2742651))

(declare-fun res!1817247 () Bool)

(assert (=> d!1328898 (=> (not res!1817247) (not e!2742651))))

(declare-fun lt!1609137 () ListLongMap!1915)

(assert (=> d!1328898 (= res!1817247 (contains!11725 lt!1609137 (_1!27762 lt!1608760)))))

(declare-fun lt!1609136 () List!49439)

(assert (=> d!1328898 (= lt!1609137 (ListLongMap!1916 lt!1609136))))

(declare-fun lt!1609135 () Unit!79251)

(declare-fun lt!1609134 () Unit!79251)

(assert (=> d!1328898 (= lt!1609135 lt!1609134)))

(assert (=> d!1328898 (= (getValueByKey!615 lt!1609136 (_1!27762 lt!1608760)) (Some!10628 (_2!27762 lt!1608760)))))

(declare-fun lemmaContainsTupThenGetReturnValue!361 (List!49439 (_ BitVec 64) List!49438) Unit!79251)

(assert (=> d!1328898 (= lt!1609134 (lemmaContainsTupThenGetReturnValue!361 lt!1609136 (_1!27762 lt!1608760) (_2!27762 lt!1608760)))))

(declare-fun insertStrictlySorted!212 (List!49439 (_ BitVec 64) List!49438) List!49439)

(assert (=> d!1328898 (= lt!1609136 (insertStrictlySorted!212 (toList!3265 lt!1608751) (_1!27762 lt!1608760) (_2!27762 lt!1608760)))))

(assert (=> d!1328898 (= (+!897 lt!1608751 lt!1608760) lt!1609137)))

(declare-fun b!4404613 () Bool)

(declare-fun res!1817248 () Bool)

(assert (=> b!4404613 (=> (not res!1817248) (not e!2742651))))

(assert (=> b!4404613 (= res!1817248 (= (getValueByKey!615 (toList!3265 lt!1609137) (_1!27762 lt!1608760)) (Some!10628 (_2!27762 lt!1608760))))))

(declare-fun b!4404614 () Bool)

(assert (=> b!4404614 (= e!2742651 (contains!11724 (toList!3265 lt!1609137) lt!1608760))))

(assert (= (and d!1328898 res!1817247) b!4404613))

(assert (= (and b!4404613 res!1817248) b!4404614))

(declare-fun m!5070247 () Bool)

(assert (=> d!1328898 m!5070247))

(declare-fun m!5070249 () Bool)

(assert (=> d!1328898 m!5070249))

(declare-fun m!5070251 () Bool)

(assert (=> d!1328898 m!5070251))

(declare-fun m!5070253 () Bool)

(assert (=> d!1328898 m!5070253))

(declare-fun m!5070255 () Bool)

(assert (=> b!4404613 m!5070255))

(declare-fun m!5070257 () Bool)

(assert (=> b!4404614 m!5070257))

(assert (=> b!4404348 d!1328898))

(declare-fun d!1328900 () Bool)

(assert (=> d!1328900 (= (eq!347 lt!1608764 lt!1608771) (= (content!7888 (toList!3266 lt!1608764)) (content!7888 (toList!3266 lt!1608771))))))

(declare-fun bs!730219 () Bool)

(assert (= bs!730219 d!1328900))

(declare-fun m!5070259 () Bool)

(assert (=> bs!730219 m!5070259))

(declare-fun m!5070261 () Bool)

(assert (=> bs!730219 m!5070261))

(assert (=> b!4404348 d!1328900))

(declare-fun b!4404615 () Bool)

(declare-fun e!2742657 () Unit!79251)

(declare-fun e!2742656 () Unit!79251)

(assert (=> b!4404615 (= e!2742657 e!2742656)))

(declare-fun c!749955 () Bool)

(declare-fun call!306539 () Bool)

(assert (=> b!4404615 (= c!749955 call!306539)))

(declare-fun b!4404616 () Bool)

(declare-fun e!2742652 () List!49441)

(assert (=> b!4404616 (= e!2742652 (getKeysList!205 (toList!3266 lt!1608769)))))

(declare-fun b!4404617 () Bool)

(assert (=> b!4404617 false))

(declare-fun lt!1609141 () Unit!79251)

(declare-fun lt!1609139 () Unit!79251)

(assert (=> b!4404617 (= lt!1609141 lt!1609139)))

(assert (=> b!4404617 (containsKey!965 (toList!3266 lt!1608769) key!3918)))

(assert (=> b!4404617 (= lt!1609139 (lemmaInGetKeysListThenContainsKey!202 (toList!3266 lt!1608769) key!3918))))

(declare-fun Unit!79308 () Unit!79251)

(assert (=> b!4404617 (= e!2742656 Unit!79308)))

(declare-fun d!1328902 () Bool)

(declare-fun e!2742653 () Bool)

(assert (=> d!1328902 e!2742653))

(declare-fun res!1817251 () Bool)

(assert (=> d!1328902 (=> res!1817251 e!2742653)))

(declare-fun e!2742654 () Bool)

(assert (=> d!1328902 (= res!1817251 e!2742654)))

(declare-fun res!1817250 () Bool)

(assert (=> d!1328902 (=> (not res!1817250) (not e!2742654))))

(declare-fun lt!1609145 () Bool)

(assert (=> d!1328902 (= res!1817250 (not lt!1609145))))

(declare-fun lt!1609138 () Bool)

(assert (=> d!1328902 (= lt!1609145 lt!1609138)))

(declare-fun lt!1609142 () Unit!79251)

(assert (=> d!1328902 (= lt!1609142 e!2742657)))

(declare-fun c!749957 () Bool)

(assert (=> d!1328902 (= c!749957 lt!1609138)))

(assert (=> d!1328902 (= lt!1609138 (containsKey!965 (toList!3266 lt!1608769) key!3918))))

(assert (=> d!1328902 (= (contains!11723 lt!1608769 key!3918) lt!1609145)))

(declare-fun b!4404618 () Bool)

(assert (=> b!4404618 (= e!2742654 (not (contains!11728 (keys!16769 lt!1608769) key!3918)))))

(declare-fun b!4404619 () Bool)

(declare-fun e!2742655 () Bool)

(assert (=> b!4404619 (= e!2742653 e!2742655)))

(declare-fun res!1817249 () Bool)

(assert (=> b!4404619 (=> (not res!1817249) (not e!2742655))))

(assert (=> b!4404619 (= res!1817249 (isDefined!7920 (getValueByKey!614 (toList!3266 lt!1608769) key!3918)))))

(declare-fun b!4404620 () Bool)

(assert (=> b!4404620 (= e!2742652 (keys!16769 lt!1608769))))

(declare-fun b!4404621 () Bool)

(assert (=> b!4404621 (= e!2742655 (contains!11728 (keys!16769 lt!1608769) key!3918))))

(declare-fun b!4404622 () Bool)

(declare-fun Unit!79309 () Unit!79251)

(assert (=> b!4404622 (= e!2742656 Unit!79309)))

(declare-fun bm!306534 () Bool)

(assert (=> bm!306534 (= call!306539 (contains!11728 e!2742652 key!3918))))

(declare-fun c!749956 () Bool)

(assert (=> bm!306534 (= c!749956 c!749957)))

(declare-fun b!4404623 () Bool)

(declare-fun lt!1609144 () Unit!79251)

(assert (=> b!4404623 (= e!2742657 lt!1609144)))

(declare-fun lt!1609140 () Unit!79251)

(assert (=> b!4404623 (= lt!1609140 (lemmaContainsKeyImpliesGetValueByKeyDefined!523 (toList!3266 lt!1608769) key!3918))))

(assert (=> b!4404623 (isDefined!7920 (getValueByKey!614 (toList!3266 lt!1608769) key!3918))))

(declare-fun lt!1609143 () Unit!79251)

(assert (=> b!4404623 (= lt!1609143 lt!1609140)))

(assert (=> b!4404623 (= lt!1609144 (lemmaInListThenGetKeysListContains!202 (toList!3266 lt!1608769) key!3918))))

(assert (=> b!4404623 call!306539))

(assert (= (and d!1328902 c!749957) b!4404623))

(assert (= (and d!1328902 (not c!749957)) b!4404615))

(assert (= (and b!4404615 c!749955) b!4404617))

(assert (= (and b!4404615 (not c!749955)) b!4404622))

(assert (= (or b!4404623 b!4404615) bm!306534))

(assert (= (and bm!306534 c!749956) b!4404616))

(assert (= (and bm!306534 (not c!749956)) b!4404620))

(assert (= (and d!1328902 res!1817250) b!4404618))

(assert (= (and d!1328902 (not res!1817251)) b!4404619))

(assert (= (and b!4404619 res!1817249) b!4404621))

(declare-fun m!5070263 () Bool)

(assert (=> b!4404616 m!5070263))

(declare-fun m!5070265 () Bool)

(assert (=> bm!306534 m!5070265))

(declare-fun m!5070267 () Bool)

(assert (=> b!4404623 m!5070267))

(declare-fun m!5070269 () Bool)

(assert (=> b!4404623 m!5070269))

(assert (=> b!4404623 m!5070269))

(declare-fun m!5070271 () Bool)

(assert (=> b!4404623 m!5070271))

(declare-fun m!5070273 () Bool)

(assert (=> b!4404623 m!5070273))

(declare-fun m!5070275 () Bool)

(assert (=> b!4404621 m!5070275))

(assert (=> b!4404621 m!5070275))

(declare-fun m!5070277 () Bool)

(assert (=> b!4404621 m!5070277))

(assert (=> b!4404618 m!5070275))

(assert (=> b!4404618 m!5070275))

(assert (=> b!4404618 m!5070277))

(declare-fun m!5070279 () Bool)

(assert (=> b!4404617 m!5070279))

(declare-fun m!5070281 () Bool)

(assert (=> b!4404617 m!5070281))

(assert (=> d!1328902 m!5070279))

(assert (=> b!4404619 m!5070269))

(assert (=> b!4404619 m!5070269))

(assert (=> b!4404619 m!5070271))

(assert (=> b!4404620 m!5070275))

(assert (=> b!4404348 d!1328902))

(declare-fun d!1328904 () Bool)

(assert (=> d!1328904 (= (eq!347 lt!1608758 lt!1608759) (= (content!7888 (toList!3266 lt!1608758)) (content!7888 (toList!3266 lt!1608759))))))

(declare-fun bs!730220 () Bool)

(assert (= bs!730220 d!1328904))

(declare-fun m!5070283 () Bool)

(assert (=> bs!730220 m!5070283))

(declare-fun m!5070285 () Bool)

(assert (=> bs!730220 m!5070285))

(assert (=> b!4404348 d!1328904))

(declare-fun d!1328906 () Bool)

(declare-fun tail!7137 (List!49439) List!49439)

(assert (=> d!1328906 (= (tail!7135 lm!1707) (ListLongMap!1916 (tail!7137 (toList!3265 lm!1707))))))

(declare-fun bs!730221 () Bool)

(assert (= bs!730221 d!1328906))

(declare-fun m!5070287 () Bool)

(assert (=> bs!730221 m!5070287))

(assert (=> b!4404348 d!1328906))

(declare-fun bs!730222 () Bool)

(declare-fun d!1328908 () Bool)

(assert (= bs!730222 (and d!1328908 start!428504)))

(declare-fun lambda!149733 () Int)

(assert (=> bs!730222 (= lambda!149733 lambda!149633)))

(declare-fun bs!730223 () Bool)

(assert (= bs!730223 (and d!1328908 d!1328798)))

(assert (=> bs!730223 (= lambda!149733 lambda!149642)))

(declare-fun bs!730224 () Bool)

(assert (= bs!730224 (and d!1328908 d!1328802)))

(assert (=> bs!730224 (= lambda!149733 lambda!149643)))

(declare-fun bs!730225 () Bool)

(assert (= bs!730225 (and d!1328908 d!1328886)))

(assert (=> bs!730225 (= lambda!149733 lambda!149730)))

(assert (=> d!1328908 (eq!347 (extractMap!700 (toList!3265 (+!897 lt!1608751 (tuple2!48937 hash!377 newBucket!200)))) (+!898 (extractMap!700 (toList!3265 lt!1608751)) (tuple2!48935 key!3918 newValue!99)))))

(declare-fun lt!1609148 () Unit!79251)

(declare-fun choose!27679 (ListLongMap!1915 (_ BitVec 64) List!49438 K!10670 V!10916 Hashable!5033) Unit!79251)

(assert (=> d!1328908 (= lt!1609148 (choose!27679 lt!1608751 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1328908 (forall!9392 (toList!3265 lt!1608751) lambda!149733)))

(assert (=> d!1328908 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!145 lt!1608751 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1609148)))

(declare-fun bs!730226 () Bool)

(assert (= bs!730226 d!1328908))

(assert (=> bs!730226 m!5069681))

(declare-fun m!5070289 () Bool)

(assert (=> bs!730226 m!5070289))

(declare-fun m!5070291 () Bool)

(assert (=> bs!730226 m!5070291))

(declare-fun m!5070293 () Bool)

(assert (=> bs!730226 m!5070293))

(declare-fun m!5070295 () Bool)

(assert (=> bs!730226 m!5070295))

(assert (=> bs!730226 m!5070289))

(declare-fun m!5070297 () Bool)

(assert (=> bs!730226 m!5070297))

(declare-fun m!5070299 () Bool)

(assert (=> bs!730226 m!5070299))

(assert (=> bs!730226 m!5069681))

(assert (=> bs!730226 m!5070297))

(assert (=> b!4404348 d!1328908))

(declare-fun bs!730227 () Bool)

(declare-fun d!1328910 () Bool)

(assert (= bs!730227 (and d!1328910 d!1328886)))

(declare-fun lambda!149734 () Int)

(assert (=> bs!730227 (= lambda!149734 lambda!149730)))

(declare-fun bs!730228 () Bool)

(assert (= bs!730228 (and d!1328910 d!1328798)))

(assert (=> bs!730228 (= lambda!149734 lambda!149642)))

(declare-fun bs!730229 () Bool)

(assert (= bs!730229 (and d!1328910 d!1328802)))

(assert (=> bs!730229 (= lambda!149734 lambda!149643)))

(declare-fun bs!730230 () Bool)

(assert (= bs!730230 (and d!1328910 start!428504)))

(assert (=> bs!730230 (= lambda!149734 lambda!149633)))

(declare-fun bs!730231 () Bool)

(assert (= bs!730231 (and d!1328910 d!1328908)))

(assert (=> bs!730231 (= lambda!149734 lambda!149733)))

(declare-fun lt!1609149 () ListMap!2509)

(assert (=> d!1328910 (invariantList!758 (toList!3266 lt!1609149))))

(declare-fun e!2742658 () ListMap!2509)

(assert (=> d!1328910 (= lt!1609149 e!2742658)))

(declare-fun c!749958 () Bool)

(assert (=> d!1328910 (= c!749958 ((_ is Cons!49315) (t!356373 (toList!3265 lm!1707))))))

(assert (=> d!1328910 (forall!9392 (t!356373 (toList!3265 lm!1707)) lambda!149734)))

(assert (=> d!1328910 (= (extractMap!700 (t!356373 (toList!3265 lm!1707))) lt!1609149)))

(declare-fun b!4404624 () Bool)

(assert (=> b!4404624 (= e!2742658 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (t!356373 (toList!3265 lm!1707)))) (extractMap!700 (t!356373 (t!356373 (toList!3265 lm!1707))))))))

(declare-fun b!4404625 () Bool)

(assert (=> b!4404625 (= e!2742658 (ListMap!2510 Nil!49314))))

(assert (= (and d!1328910 c!749958) b!4404624))

(assert (= (and d!1328910 (not c!749958)) b!4404625))

(declare-fun m!5070301 () Bool)

(assert (=> d!1328910 m!5070301))

(declare-fun m!5070303 () Bool)

(assert (=> d!1328910 m!5070303))

(declare-fun m!5070305 () Bool)

(assert (=> b!4404624 m!5070305))

(assert (=> b!4404624 m!5070305))

(declare-fun m!5070307 () Bool)

(assert (=> b!4404624 m!5070307))

(assert (=> b!4404348 d!1328910))

(declare-fun bs!730232 () Bool)

(declare-fun d!1328912 () Bool)

(assert (= bs!730232 (and d!1328912 d!1328798)))

(declare-fun lambda!149735 () Int)

(assert (=> bs!730232 (= lambda!149735 lambda!149642)))

(declare-fun bs!730233 () Bool)

(assert (= bs!730233 (and d!1328912 d!1328802)))

(assert (=> bs!730233 (= lambda!149735 lambda!149643)))

(declare-fun bs!730234 () Bool)

(assert (= bs!730234 (and d!1328912 start!428504)))

(assert (=> bs!730234 (= lambda!149735 lambda!149633)))

(declare-fun bs!730235 () Bool)

(assert (= bs!730235 (and d!1328912 d!1328908)))

(assert (=> bs!730235 (= lambda!149735 lambda!149733)))

(declare-fun bs!730236 () Bool)

(assert (= bs!730236 (and d!1328912 d!1328910)))

(assert (=> bs!730236 (= lambda!149735 lambda!149734)))

(declare-fun bs!730237 () Bool)

(assert (= bs!730237 (and d!1328912 d!1328886)))

(assert (=> bs!730237 (= lambda!149735 lambda!149730)))

(declare-fun lt!1609150 () ListMap!2509)

(assert (=> d!1328912 (invariantList!758 (toList!3266 lt!1609150))))

(declare-fun e!2742659 () ListMap!2509)

(assert (=> d!1328912 (= lt!1609150 e!2742659)))

(declare-fun c!749959 () Bool)

(assert (=> d!1328912 (= c!749959 ((_ is Cons!49315) (toList!3265 (+!897 lt!1608751 lt!1608760))))))

(assert (=> d!1328912 (forall!9392 (toList!3265 (+!897 lt!1608751 lt!1608760)) lambda!149735)))

(assert (=> d!1328912 (= (extractMap!700 (toList!3265 (+!897 lt!1608751 lt!1608760))) lt!1609150)))

(declare-fun b!4404626 () Bool)

(assert (=> b!4404626 (= e!2742659 (addToMapMapFromBucket!307 (_2!27762 (h!54948 (toList!3265 (+!897 lt!1608751 lt!1608760)))) (extractMap!700 (t!356373 (toList!3265 (+!897 lt!1608751 lt!1608760))))))))

(declare-fun b!4404627 () Bool)

(assert (=> b!4404627 (= e!2742659 (ListMap!2510 Nil!49314))))

(assert (= (and d!1328912 c!749959) b!4404626))

(assert (= (and d!1328912 (not c!749959)) b!4404627))

(declare-fun m!5070309 () Bool)

(assert (=> d!1328912 m!5070309))

(declare-fun m!5070311 () Bool)

(assert (=> d!1328912 m!5070311))

(declare-fun m!5070313 () Bool)

(assert (=> b!4404626 m!5070313))

(assert (=> b!4404626 m!5070313))

(declare-fun m!5070315 () Bool)

(assert (=> b!4404626 m!5070315))

(assert (=> b!4404348 d!1328912))

(declare-fun d!1328914 () Bool)

(declare-fun res!1817256 () Bool)

(declare-fun e!2742664 () Bool)

(assert (=> d!1328914 (=> res!1817256 e!2742664)))

(assert (=> d!1328914 (= res!1817256 (not ((_ is Cons!49314) (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(assert (=> d!1328914 (= (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lm!1707)))) e!2742664)))

(declare-fun b!4404632 () Bool)

(declare-fun e!2742665 () Bool)

(assert (=> b!4404632 (= e!2742664 e!2742665)))

(declare-fun res!1817257 () Bool)

(assert (=> b!4404632 (=> (not res!1817257) (not e!2742665))))

(assert (=> b!4404632 (= res!1817257 (not (containsKey!963 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707)))) (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))))

(declare-fun b!4404633 () Bool)

(assert (=> b!4404633 (= e!2742665 (noDuplicateKeys!641 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707))))))))

(assert (= (and d!1328914 (not res!1817256)) b!4404632))

(assert (= (and b!4404632 res!1817257) b!4404633))

(declare-fun m!5070317 () Bool)

(assert (=> b!4404632 m!5070317))

(declare-fun m!5070319 () Bool)

(assert (=> b!4404633 m!5070319))

(assert (=> b!4404337 d!1328914))

(declare-fun d!1328916 () Bool)

(assert (=> d!1328916 (= (eq!347 (+!898 lt!1608771 lt!1608755) lt!1608759) (= (content!7888 (toList!3266 (+!898 lt!1608771 lt!1608755))) (content!7888 (toList!3266 lt!1608759))))))

(declare-fun bs!730238 () Bool)

(assert (= bs!730238 d!1328916))

(declare-fun m!5070321 () Bool)

(assert (=> bs!730238 m!5070321))

(assert (=> bs!730238 m!5070285))

(assert (=> b!4404337 d!1328916))

(declare-fun d!1328918 () Bool)

(declare-fun e!2742666 () Bool)

(assert (=> d!1328918 e!2742666))

(declare-fun res!1817258 () Bool)

(assert (=> d!1328918 (=> (not res!1817258) (not e!2742666))))

(declare-fun lt!1609154 () ListMap!2509)

(assert (=> d!1328918 (= res!1817258 (contains!11723 lt!1609154 (_1!27761 lt!1608755)))))

(declare-fun lt!1609153 () List!49438)

(assert (=> d!1328918 (= lt!1609154 (ListMap!2510 lt!1609153))))

(declare-fun lt!1609152 () Unit!79251)

(declare-fun lt!1609151 () Unit!79251)

(assert (=> d!1328918 (= lt!1609152 lt!1609151)))

(assert (=> d!1328918 (= (getValueByKey!614 lt!1609153 (_1!27761 lt!1608755)) (Some!10627 (_2!27761 lt!1608755)))))

(assert (=> d!1328918 (= lt!1609151 (lemmaContainsTupThenGetReturnValue!360 lt!1609153 (_1!27761 lt!1608755) (_2!27761 lt!1608755)))))

(assert (=> d!1328918 (= lt!1609153 (insertNoDuplicatedKeys!157 (toList!3266 lt!1608771) (_1!27761 lt!1608755) (_2!27761 lt!1608755)))))

(assert (=> d!1328918 (= (+!898 lt!1608771 lt!1608755) lt!1609154)))

(declare-fun b!4404634 () Bool)

(declare-fun res!1817259 () Bool)

(assert (=> b!4404634 (=> (not res!1817259) (not e!2742666))))

(assert (=> b!4404634 (= res!1817259 (= (getValueByKey!614 (toList!3266 lt!1609154) (_1!27761 lt!1608755)) (Some!10627 (_2!27761 lt!1608755))))))

(declare-fun b!4404635 () Bool)

(assert (=> b!4404635 (= e!2742666 (contains!11729 (toList!3266 lt!1609154) lt!1608755))))

(assert (= (and d!1328918 res!1817258) b!4404634))

(assert (= (and b!4404634 res!1817259) b!4404635))

(declare-fun m!5070323 () Bool)

(assert (=> d!1328918 m!5070323))

(declare-fun m!5070325 () Bool)

(assert (=> d!1328918 m!5070325))

(declare-fun m!5070327 () Bool)

(assert (=> d!1328918 m!5070327))

(declare-fun m!5070329 () Bool)

(assert (=> d!1328918 m!5070329))

(declare-fun m!5070331 () Bool)

(assert (=> b!4404634 m!5070331))

(declare-fun m!5070333 () Bool)

(assert (=> b!4404635 m!5070333))

(assert (=> b!4404337 d!1328918))

(declare-fun d!1328920 () Bool)

(assert (=> d!1328920 (eq!347 (+!898 lt!1608771 (tuple2!48935 key!3918 newValue!99)) (+!898 lt!1608764 (tuple2!48935 key!3918 newValue!99)))))

(declare-fun lt!1609157 () Unit!79251)

(declare-fun choose!27680 (ListMap!2509 ListMap!2509 K!10670 V!10916) Unit!79251)

(assert (=> d!1328920 (= lt!1609157 (choose!27680 lt!1608771 lt!1608764 key!3918 newValue!99))))

(assert (=> d!1328920 (eq!347 lt!1608771 lt!1608764)))

(assert (=> d!1328920 (= (lemmaAddToEqMapsPreservesEq!18 lt!1608771 lt!1608764 key!3918 newValue!99) lt!1609157)))

(declare-fun bs!730239 () Bool)

(assert (= bs!730239 d!1328920))

(declare-fun m!5070335 () Bool)

(assert (=> bs!730239 m!5070335))

(declare-fun m!5070337 () Bool)

(assert (=> bs!730239 m!5070337))

(assert (=> bs!730239 m!5070337))

(assert (=> bs!730239 m!5070335))

(declare-fun m!5070339 () Bool)

(assert (=> bs!730239 m!5070339))

(declare-fun m!5070341 () Bool)

(assert (=> bs!730239 m!5070341))

(declare-fun m!5070343 () Bool)

(assert (=> bs!730239 m!5070343))

(assert (=> b!4404337 d!1328920))

(declare-fun d!1328922 () Bool)

(declare-fun e!2742672 () Bool)

(assert (=> d!1328922 e!2742672))

(declare-fun res!1817262 () Bool)

(assert (=> d!1328922 (=> res!1817262 e!2742672)))

(declare-fun lt!1609166 () Bool)

(assert (=> d!1328922 (= res!1817262 (not lt!1609166))))

(declare-fun lt!1609167 () Bool)

(assert (=> d!1328922 (= lt!1609166 lt!1609167)))

(declare-fun lt!1609168 () Unit!79251)

(declare-fun e!2742671 () Unit!79251)

(assert (=> d!1328922 (= lt!1609168 e!2742671)))

(declare-fun c!749962 () Bool)

(assert (=> d!1328922 (= c!749962 lt!1609167)))

(declare-fun containsKey!967 (List!49439 (_ BitVec 64)) Bool)

(assert (=> d!1328922 (= lt!1609167 (containsKey!967 (toList!3265 lm!1707) hash!377))))

(assert (=> d!1328922 (= (contains!11725 lm!1707 hash!377) lt!1609166)))

(declare-fun b!4404642 () Bool)

(declare-fun lt!1609169 () Unit!79251)

(assert (=> b!4404642 (= e!2742671 lt!1609169)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!525 (List!49439 (_ BitVec 64)) Unit!79251)

(assert (=> b!4404642 (= lt!1609169 (lemmaContainsKeyImpliesGetValueByKeyDefined!525 (toList!3265 lm!1707) hash!377))))

(declare-fun isDefined!7922 (Option!10629) Bool)

(assert (=> b!4404642 (isDefined!7922 (getValueByKey!615 (toList!3265 lm!1707) hash!377))))

(declare-fun b!4404643 () Bool)

(declare-fun Unit!79310 () Unit!79251)

(assert (=> b!4404643 (= e!2742671 Unit!79310)))

(declare-fun b!4404644 () Bool)

(assert (=> b!4404644 (= e!2742672 (isDefined!7922 (getValueByKey!615 (toList!3265 lm!1707) hash!377)))))

(assert (= (and d!1328922 c!749962) b!4404642))

(assert (= (and d!1328922 (not c!749962)) b!4404643))

(assert (= (and d!1328922 (not res!1817262)) b!4404644))

(declare-fun m!5070345 () Bool)

(assert (=> d!1328922 m!5070345))

(declare-fun m!5070347 () Bool)

(assert (=> b!4404642 m!5070347))

(declare-fun m!5070349 () Bool)

(assert (=> b!4404642 m!5070349))

(assert (=> b!4404642 m!5070349))

(declare-fun m!5070351 () Bool)

(assert (=> b!4404642 m!5070351))

(assert (=> b!4404644 m!5070349))

(assert (=> b!4404644 m!5070349))

(assert (=> b!4404644 m!5070351))

(assert (=> b!4404347 d!1328922))

(declare-fun d!1328924 () Bool)

(declare-fun head!9126 (List!49439) tuple2!48936)

(assert (=> d!1328924 (= (head!9124 lm!1707) (head!9126 (toList!3265 lm!1707)))))

(declare-fun bs!730240 () Bool)

(assert (= bs!730240 d!1328924))

(declare-fun m!5070353 () Bool)

(assert (=> bs!730240 m!5070353))

(assert (=> b!4404336 d!1328924))

(declare-fun d!1328926 () Bool)

(declare-fun res!1817263 () Bool)

(declare-fun e!2742673 () Bool)

(assert (=> d!1328926 (=> res!1817263 e!2742673)))

(assert (=> d!1328926 (= res!1817263 ((_ is Nil!49315) (toList!3265 lm!1707)))))

(assert (=> d!1328926 (= (forall!9392 (toList!3265 lm!1707) lambda!149633) e!2742673)))

(declare-fun b!4404645 () Bool)

(declare-fun e!2742674 () Bool)

(assert (=> b!4404645 (= e!2742673 e!2742674)))

(declare-fun res!1817264 () Bool)

(assert (=> b!4404645 (=> (not res!1817264) (not e!2742674))))

(assert (=> b!4404645 (= res!1817264 (dynLambda!20775 lambda!149633 (h!54948 (toList!3265 lm!1707))))))

(declare-fun b!4404646 () Bool)

(assert (=> b!4404646 (= e!2742674 (forall!9392 (t!356373 (toList!3265 lm!1707)) lambda!149633))))

(assert (= (and d!1328926 (not res!1817263)) b!4404645))

(assert (= (and b!4404645 res!1817264) b!4404646))

(declare-fun b_lambda!140233 () Bool)

(assert (=> (not b_lambda!140233) (not b!4404645)))

(declare-fun m!5070355 () Bool)

(assert (=> b!4404645 m!5070355))

(declare-fun m!5070357 () Bool)

(assert (=> b!4404646 m!5070357))

(assert (=> start!428504 d!1328926))

(declare-fun d!1328928 () Bool)

(declare-fun isStrictlySorted!184 (List!49439) Bool)

(assert (=> d!1328928 (= (inv!64856 lm!1707) (isStrictlySorted!184 (toList!3265 lm!1707)))))

(declare-fun bs!730241 () Bool)

(assert (= bs!730241 d!1328928))

(declare-fun m!5070359 () Bool)

(assert (=> bs!730241 m!5070359))

(assert (=> start!428504 d!1328928))

(declare-fun d!1328930 () Bool)

(declare-fun res!1817265 () Bool)

(declare-fun e!2742675 () Bool)

(assert (=> d!1328930 (=> res!1817265 e!2742675)))

(assert (=> d!1328930 (= res!1817265 (not ((_ is Cons!49314) newBucket!200)))))

(assert (=> d!1328930 (= (noDuplicateKeys!641 newBucket!200) e!2742675)))

(declare-fun b!4404647 () Bool)

(declare-fun e!2742676 () Bool)

(assert (=> b!4404647 (= e!2742675 e!2742676)))

(declare-fun res!1817266 () Bool)

(assert (=> b!4404647 (=> (not res!1817266) (not e!2742676))))

(assert (=> b!4404647 (= res!1817266 (not (containsKey!963 (t!356372 newBucket!200) (_1!27761 (h!54947 newBucket!200)))))))

(declare-fun b!4404648 () Bool)

(assert (=> b!4404648 (= e!2742676 (noDuplicateKeys!641 (t!356372 newBucket!200)))))

(assert (= (and d!1328930 (not res!1817265)) b!4404647))

(assert (= (and b!4404647 res!1817266) b!4404648))

(declare-fun m!5070361 () Bool)

(assert (=> b!4404647 m!5070361))

(declare-fun m!5070363 () Bool)

(assert (=> b!4404648 m!5070363))

(assert (=> b!4404346 d!1328930))

(assert (=> b!4404335 d!1328800))

(declare-fun d!1328932 () Bool)

(declare-fun e!2742677 () Bool)

(assert (=> d!1328932 e!2742677))

(declare-fun res!1817267 () Bool)

(assert (=> d!1328932 (=> (not res!1817267) (not e!2742677))))

(declare-fun lt!1609173 () ListLongMap!1915)

(assert (=> d!1328932 (= res!1817267 (contains!11725 lt!1609173 (_1!27762 lt!1608760)))))

(declare-fun lt!1609172 () List!49439)

(assert (=> d!1328932 (= lt!1609173 (ListLongMap!1916 lt!1609172))))

(declare-fun lt!1609171 () Unit!79251)

(declare-fun lt!1609170 () Unit!79251)

(assert (=> d!1328932 (= lt!1609171 lt!1609170)))

(assert (=> d!1328932 (= (getValueByKey!615 lt!1609172 (_1!27762 lt!1608760)) (Some!10628 (_2!27762 lt!1608760)))))

(assert (=> d!1328932 (= lt!1609170 (lemmaContainsTupThenGetReturnValue!361 lt!1609172 (_1!27762 lt!1608760) (_2!27762 lt!1608760)))))

(assert (=> d!1328932 (= lt!1609172 (insertStrictlySorted!212 (toList!3265 lm!1707) (_1!27762 lt!1608760) (_2!27762 lt!1608760)))))

(assert (=> d!1328932 (= (+!897 lm!1707 lt!1608760) lt!1609173)))

(declare-fun b!4404649 () Bool)

(declare-fun res!1817268 () Bool)

(assert (=> b!4404649 (=> (not res!1817268) (not e!2742677))))

(assert (=> b!4404649 (= res!1817268 (= (getValueByKey!615 (toList!3265 lt!1609173) (_1!27762 lt!1608760)) (Some!10628 (_2!27762 lt!1608760))))))

(declare-fun b!4404650 () Bool)

(assert (=> b!4404650 (= e!2742677 (contains!11724 (toList!3265 lt!1609173) lt!1608760))))

(assert (= (and d!1328932 res!1817267) b!4404649))

(assert (= (and b!4404649 res!1817268) b!4404650))

(declare-fun m!5070365 () Bool)

(assert (=> d!1328932 m!5070365))

(declare-fun m!5070367 () Bool)

(assert (=> d!1328932 m!5070367))

(declare-fun m!5070369 () Bool)

(assert (=> d!1328932 m!5070369))

(declare-fun m!5070371 () Bool)

(assert (=> d!1328932 m!5070371))

(declare-fun m!5070373 () Bool)

(assert (=> b!4404649 m!5070373))

(declare-fun m!5070375 () Bool)

(assert (=> b!4404650 m!5070375))

(assert (=> b!4404335 d!1328932))

(declare-fun d!1328934 () Bool)

(assert (=> d!1328934 (forall!9392 (toList!3265 (+!897 lm!1707 (tuple2!48937 hash!377 newBucket!200))) lambda!149633)))

(declare-fun lt!1609176 () Unit!79251)

(declare-fun choose!27681 (ListLongMap!1915 Int (_ BitVec 64) List!49438) Unit!79251)

(assert (=> d!1328934 (= lt!1609176 (choose!27681 lm!1707 lambda!149633 hash!377 newBucket!200))))

(declare-fun e!2742680 () Bool)

(assert (=> d!1328934 e!2742680))

(declare-fun res!1817271 () Bool)

(assert (=> d!1328934 (=> (not res!1817271) (not e!2742680))))

(assert (=> d!1328934 (= res!1817271 (forall!9392 (toList!3265 lm!1707) lambda!149633))))

(assert (=> d!1328934 (= (addValidProp!287 lm!1707 lambda!149633 hash!377 newBucket!200) lt!1609176)))

(declare-fun b!4404654 () Bool)

(assert (=> b!4404654 (= e!2742680 (dynLambda!20775 lambda!149633 (tuple2!48937 hash!377 newBucket!200)))))

(assert (= (and d!1328934 res!1817271) b!4404654))

(declare-fun b_lambda!140235 () Bool)

(assert (=> (not b_lambda!140235) (not b!4404654)))

(declare-fun m!5070377 () Bool)

(assert (=> d!1328934 m!5070377))

(declare-fun m!5070379 () Bool)

(assert (=> d!1328934 m!5070379))

(declare-fun m!5070381 () Bool)

(assert (=> d!1328934 m!5070381))

(assert (=> d!1328934 m!5069653))

(declare-fun m!5070383 () Bool)

(assert (=> b!4404654 m!5070383))

(assert (=> b!4404335 d!1328934))

(assert (=> b!4404335 d!1328926))

(declare-fun bs!730242 () Bool)

(declare-fun d!1328936 () Bool)

(assert (= bs!730242 (and d!1328936 d!1328912)))

(declare-fun lambda!149738 () Int)

(assert (=> bs!730242 (not (= lambda!149738 lambda!149735))))

(declare-fun bs!730243 () Bool)

(assert (= bs!730243 (and d!1328936 d!1328798)))

(assert (=> bs!730243 (not (= lambda!149738 lambda!149642))))

(declare-fun bs!730244 () Bool)

(assert (= bs!730244 (and d!1328936 d!1328802)))

(assert (=> bs!730244 (not (= lambda!149738 lambda!149643))))

(declare-fun bs!730245 () Bool)

(assert (= bs!730245 (and d!1328936 start!428504)))

(assert (=> bs!730245 (not (= lambda!149738 lambda!149633))))

(declare-fun bs!730246 () Bool)

(assert (= bs!730246 (and d!1328936 d!1328908)))

(assert (=> bs!730246 (not (= lambda!149738 lambda!149733))))

(declare-fun bs!730247 () Bool)

(assert (= bs!730247 (and d!1328936 d!1328910)))

(assert (=> bs!730247 (not (= lambda!149738 lambda!149734))))

(declare-fun bs!730248 () Bool)

(assert (= bs!730248 (and d!1328936 d!1328886)))

(assert (=> bs!730248 (not (= lambda!149738 lambda!149730))))

(assert (=> d!1328936 true))

(assert (=> d!1328936 (= (allKeysSameHashInMap!745 lm!1707 hashF!1247) (forall!9392 (toList!3265 lm!1707) lambda!149738))))

(declare-fun bs!730249 () Bool)

(assert (= bs!730249 d!1328936))

(declare-fun m!5070385 () Bool)

(assert (=> bs!730249 m!5070385))

(assert (=> b!4404345 d!1328936))

(declare-fun bs!730250 () Bool)

(declare-fun d!1328938 () Bool)

(assert (= bs!730250 (and d!1328938 d!1328804)))

(declare-fun lambda!149741 () Int)

(assert (=> bs!730250 (not (= lambda!149741 lambda!149723))))

(declare-fun bs!730251 () Bool)

(assert (= bs!730251 (and d!1328938 b!4404548)))

(assert (=> bs!730251 (not (= lambda!149741 lambda!149722))))

(assert (=> bs!730251 (not (= lambda!149741 lambda!149721))))

(declare-fun bs!730252 () Bool)

(assert (= bs!730252 (and d!1328938 b!4404547)))

(assert (=> bs!730252 (not (= lambda!149741 lambda!149720))))

(declare-fun bs!730253 () Bool)

(assert (= bs!730253 (and d!1328938 b!4404597)))

(assert (=> bs!730253 (not (= lambda!149741 lambda!149725))))

(declare-fun bs!730254 () Bool)

(assert (= bs!730254 (and d!1328938 d!1328882)))

(assert (=> bs!730254 (not (= lambda!149741 lambda!149727))))

(declare-fun bs!730255 () Bool)

(assert (= bs!730255 (and d!1328938 b!4404596)))

(assert (=> bs!730255 (not (= lambda!149741 lambda!149724))))

(assert (=> bs!730253 (not (= lambda!149741 lambda!149726))))

(assert (=> d!1328938 true))

(assert (=> d!1328938 true))

(assert (=> d!1328938 (= (allKeysSameHash!599 newBucket!200 hash!377 hashF!1247) (forall!9394 newBucket!200 lambda!149741))))

(declare-fun bs!730256 () Bool)

(assert (= bs!730256 d!1328938))

(declare-fun m!5070387 () Bool)

(assert (=> bs!730256 m!5070387))

(assert (=> b!4404334 d!1328938))

(declare-fun d!1328940 () Bool)

(assert (=> d!1328940 (= (apply!11493 lm!1707 hash!377) (get!16057 (getValueByKey!615 (toList!3265 lm!1707) hash!377)))))

(declare-fun bs!730257 () Bool)

(assert (= bs!730257 d!1328940))

(assert (=> bs!730257 m!5070349))

(assert (=> bs!730257 m!5070349))

(declare-fun m!5070389 () Bool)

(assert (=> bs!730257 m!5070389))

(assert (=> b!4404343 d!1328940))

(declare-fun b!4404671 () Bool)

(declare-fun e!2742685 () List!49438)

(assert (=> b!4404671 (= e!2742685 (Cons!49314 (h!54947 lt!1608757) (removePairForKey!609 (t!356372 lt!1608757) key!3918)))))

(declare-fun b!4404669 () Bool)

(declare-fun e!2742686 () List!49438)

(assert (=> b!4404669 (= e!2742686 (t!356372 lt!1608757))))

(declare-fun d!1328942 () Bool)

(declare-fun lt!1609179 () List!49438)

(assert (=> d!1328942 (not (containsKey!963 lt!1609179 key!3918))))

(assert (=> d!1328942 (= lt!1609179 e!2742686)))

(declare-fun c!749967 () Bool)

(assert (=> d!1328942 (= c!749967 (and ((_ is Cons!49314) lt!1608757) (= (_1!27761 (h!54947 lt!1608757)) key!3918)))))

(assert (=> d!1328942 (noDuplicateKeys!641 lt!1608757)))

(assert (=> d!1328942 (= (removePairForKey!609 lt!1608757 key!3918) lt!1609179)))

(declare-fun b!4404672 () Bool)

(assert (=> b!4404672 (= e!2742685 Nil!49314)))

(declare-fun b!4404670 () Bool)

(assert (=> b!4404670 (= e!2742686 e!2742685)))

(declare-fun c!749968 () Bool)

(assert (=> b!4404670 (= c!749968 ((_ is Cons!49314) lt!1608757))))

(assert (= (and d!1328942 c!749967) b!4404669))

(assert (= (and d!1328942 (not c!749967)) b!4404670))

(assert (= (and b!4404670 c!749968) b!4404671))

(assert (= (and b!4404670 (not c!749968)) b!4404672))

(declare-fun m!5070391 () Bool)

(assert (=> b!4404671 m!5070391))

(declare-fun m!5070393 () Bool)

(assert (=> d!1328942 m!5070393))

(declare-fun m!5070395 () Bool)

(assert (=> d!1328942 m!5070395))

(assert (=> b!4404343 d!1328942))

(declare-fun d!1328944 () Bool)

(assert (=> d!1328944 (contains!11724 (toList!3265 lm!1707) (tuple2!48937 hash!377 lt!1608757))))

(declare-fun lt!1609182 () Unit!79251)

(declare-fun choose!27682 (List!49439 (_ BitVec 64) List!49438) Unit!79251)

(assert (=> d!1328944 (= lt!1609182 (choose!27682 (toList!3265 lm!1707) hash!377 lt!1608757))))

(declare-fun e!2742689 () Bool)

(assert (=> d!1328944 e!2742689))

(declare-fun res!1817274 () Bool)

(assert (=> d!1328944 (=> (not res!1817274) (not e!2742689))))

(assert (=> d!1328944 (= res!1817274 (isStrictlySorted!184 (toList!3265 lm!1707)))))

(assert (=> d!1328944 (= (lemmaGetValueByKeyImpliesContainsTuple!486 (toList!3265 lm!1707) hash!377 lt!1608757) lt!1609182)))

(declare-fun b!4404675 () Bool)

(assert (=> b!4404675 (= e!2742689 (= (getValueByKey!615 (toList!3265 lm!1707) hash!377) (Some!10628 lt!1608757)))))

(assert (= (and d!1328944 res!1817274) b!4404675))

(declare-fun m!5070397 () Bool)

(assert (=> d!1328944 m!5070397))

(declare-fun m!5070399 () Bool)

(assert (=> d!1328944 m!5070399))

(assert (=> d!1328944 m!5070359))

(assert (=> b!4404675 m!5070349))

(assert (=> b!4404343 d!1328944))

(declare-fun d!1328946 () Bool)

(declare-fun lt!1609185 () Bool)

(declare-fun content!7890 (List!49439) (InoxSet tuple2!48936))

(assert (=> d!1328946 (= lt!1609185 (select (content!7890 (toList!3265 lm!1707)) lt!1608753))))

(declare-fun e!2742694 () Bool)

(assert (=> d!1328946 (= lt!1609185 e!2742694)))

(declare-fun res!1817279 () Bool)

(assert (=> d!1328946 (=> (not res!1817279) (not e!2742694))))

(assert (=> d!1328946 (= res!1817279 ((_ is Cons!49315) (toList!3265 lm!1707)))))

(assert (=> d!1328946 (= (contains!11724 (toList!3265 lm!1707) lt!1608753) lt!1609185)))

(declare-fun b!4404680 () Bool)

(declare-fun e!2742695 () Bool)

(assert (=> b!4404680 (= e!2742694 e!2742695)))

(declare-fun res!1817280 () Bool)

(assert (=> b!4404680 (=> res!1817280 e!2742695)))

(assert (=> b!4404680 (= res!1817280 (= (h!54948 (toList!3265 lm!1707)) lt!1608753))))

(declare-fun b!4404681 () Bool)

(assert (=> b!4404681 (= e!2742695 (contains!11724 (t!356373 (toList!3265 lm!1707)) lt!1608753))))

(assert (= (and d!1328946 res!1817279) b!4404680))

(assert (= (and b!4404680 (not res!1817280)) b!4404681))

(declare-fun m!5070401 () Bool)

(assert (=> d!1328946 m!5070401))

(declare-fun m!5070403 () Bool)

(assert (=> d!1328946 m!5070403))

(declare-fun m!5070405 () Bool)

(assert (=> b!4404681 m!5070405))

(assert (=> b!4404343 d!1328946))

(declare-fun d!1328948 () Bool)

(assert (=> d!1328948 (dynLambda!20775 lambda!149633 lt!1608753)))

(declare-fun lt!1609188 () Unit!79251)

(declare-fun choose!27683 (List!49439 Int tuple2!48936) Unit!79251)

(assert (=> d!1328948 (= lt!1609188 (choose!27683 (toList!3265 lm!1707) lambda!149633 lt!1608753))))

(declare-fun e!2742698 () Bool)

(assert (=> d!1328948 e!2742698))

(declare-fun res!1817283 () Bool)

(assert (=> d!1328948 (=> (not res!1817283) (not e!2742698))))

(assert (=> d!1328948 (= res!1817283 (forall!9392 (toList!3265 lm!1707) lambda!149633))))

(assert (=> d!1328948 (= (forallContained!2027 (toList!3265 lm!1707) lambda!149633 lt!1608753) lt!1609188)))

(declare-fun b!4404684 () Bool)

(assert (=> b!4404684 (= e!2742698 (contains!11724 (toList!3265 lm!1707) lt!1608753))))

(assert (= (and d!1328948 res!1817283) b!4404684))

(declare-fun b_lambda!140237 () Bool)

(assert (=> (not b_lambda!140237) (not d!1328948)))

(declare-fun m!5070407 () Bool)

(assert (=> d!1328948 m!5070407))

(declare-fun m!5070409 () Bool)

(assert (=> d!1328948 m!5070409))

(assert (=> d!1328948 m!5069653))

(assert (=> b!4404684 m!5069673))

(assert (=> b!4404343 d!1328948))

(declare-fun d!1328950 () Bool)

(declare-fun hash!1919 (Hashable!5033 K!10670) (_ BitVec 64))

(assert (=> d!1328950 (= (hash!1913 hashF!1247 key!3918) (hash!1919 hashF!1247 key!3918))))

(declare-fun bs!730258 () Bool)

(assert (= bs!730258 d!1328950))

(declare-fun m!5070411 () Bool)

(assert (=> bs!730258 m!5070411))

(assert (=> b!4404342 d!1328950))

(declare-fun d!1328952 () Bool)

(declare-fun res!1817284 () Bool)

(declare-fun e!2742699 () Bool)

(assert (=> d!1328952 (=> res!1817284 e!2742699)))

(assert (=> d!1328952 (= res!1817284 (and ((_ is Cons!49314) (_2!27762 (h!54948 (toList!3265 lm!1707)))) (= (_1!27761 (h!54947 (_2!27762 (h!54948 (toList!3265 lm!1707))))) key!3918)))))

(assert (=> d!1328952 (= (containsKey!963 (_2!27762 (h!54948 (toList!3265 lm!1707))) key!3918) e!2742699)))

(declare-fun b!4404685 () Bool)

(declare-fun e!2742700 () Bool)

(assert (=> b!4404685 (= e!2742699 e!2742700)))

(declare-fun res!1817285 () Bool)

(assert (=> b!4404685 (=> (not res!1817285) (not e!2742700))))

(assert (=> b!4404685 (= res!1817285 ((_ is Cons!49314) (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(declare-fun b!4404686 () Bool)

(assert (=> b!4404686 (= e!2742700 (containsKey!963 (t!356372 (_2!27762 (h!54948 (toList!3265 lm!1707)))) key!3918))))

(assert (= (and d!1328952 (not res!1817284)) b!4404685))

(assert (= (and b!4404685 res!1817285) b!4404686))

(declare-fun m!5070413 () Bool)

(assert (=> b!4404686 m!5070413))

(assert (=> b!4404341 d!1328952))

(declare-fun b!4404691 () Bool)

(declare-fun e!2742703 () Bool)

(declare-fun tp!1332006 () Bool)

(declare-fun tp!1332007 () Bool)

(assert (=> b!4404691 (= e!2742703 (and tp!1332006 tp!1332007))))

(assert (=> b!4404339 (= tp!1331992 e!2742703)))

(assert (= (and b!4404339 ((_ is Cons!49315) (toList!3265 lm!1707))) b!4404691))

(declare-fun tp!1332010 () Bool)

(declare-fun e!2742706 () Bool)

(declare-fun b!4404696 () Bool)

(assert (=> b!4404696 (= e!2742706 (and tp_is_empty!25801 tp_is_empty!25803 tp!1332010))))

(assert (=> b!4404344 (= tp!1331991 e!2742706)))

(assert (= (and b!4404344 ((_ is Cons!49314) (t!356372 newBucket!200))) b!4404696))

(declare-fun b_lambda!140239 () Bool)

(assert (= b_lambda!140233 (or start!428504 b_lambda!140239)))

(declare-fun bs!730259 () Bool)

(declare-fun d!1328954 () Bool)

(assert (= bs!730259 (and d!1328954 start!428504)))

(assert (=> bs!730259 (= (dynLambda!20775 lambda!149633 (h!54948 (toList!3265 lm!1707))) (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lm!1707)))))))

(assert (=> bs!730259 m!5069641))

(assert (=> b!4404645 d!1328954))

(declare-fun b_lambda!140241 () Bool)

(assert (= b_lambda!140235 (or start!428504 b_lambda!140241)))

(declare-fun bs!730260 () Bool)

(declare-fun d!1328956 () Bool)

(assert (= bs!730260 (and d!1328956 start!428504)))

(assert (=> bs!730260 (= (dynLambda!20775 lambda!149633 (tuple2!48937 hash!377 newBucket!200)) (noDuplicateKeys!641 (_2!27762 (tuple2!48937 hash!377 newBucket!200))))))

(declare-fun m!5070415 () Bool)

(assert (=> bs!730260 m!5070415))

(assert (=> b!4404654 d!1328956))

(declare-fun b_lambda!140243 () Bool)

(assert (= b_lambda!140215 (or start!428504 b_lambda!140243)))

(declare-fun bs!730261 () Bool)

(declare-fun d!1328958 () Bool)

(assert (= bs!730261 (and d!1328958 start!428504)))

(assert (=> bs!730261 (= (dynLambda!20775 lambda!149633 (h!54948 (toList!3265 lt!1608770))) (noDuplicateKeys!641 (_2!27762 (h!54948 (toList!3265 lt!1608770)))))))

(declare-fun m!5070417 () Bool)

(assert (=> bs!730261 m!5070417))

(assert (=> b!4404408 d!1328958))

(declare-fun b_lambda!140245 () Bool)

(assert (= b_lambda!140237 (or start!428504 b_lambda!140245)))

(declare-fun bs!730262 () Bool)

(declare-fun d!1328960 () Bool)

(assert (= bs!730262 (and d!1328960 start!428504)))

(assert (=> bs!730262 (= (dynLambda!20775 lambda!149633 lt!1608753) (noDuplicateKeys!641 (_2!27762 lt!1608753)))))

(declare-fun m!5070419 () Bool)

(assert (=> bs!730262 m!5070419))

(assert (=> d!1328948 d!1328960))

(check-sat (not bm!306531) (not b!4404574) (not d!1328916) (not d!1328934) (not bm!306532) (not bm!306503) (not b!4404394) (not b!4404395) (not bs!730260) (not d!1328900) (not b!4404633) (not d!1328910) (not b!4404617) (not b!4404614) (not b!4404393) (not d!1328802) (not b!4404410) (not b!4404621) (not d!1328894) (not bm!306527) (not d!1328908) (not b!4404644) tp_is_empty!25801 (not b!4404597) (not b!4404671) (not d!1328946) (not b!4404626) (not bs!730259) (not b!4404684) (not d!1328906) (not d!1328872) (not d!1328932) (not d!1328902) (not bs!730262) (not bm!306534) (not b!4404391) (not bm!306530) (not b!4404624) (not b!4404571) (not b!4404551) (not b!4404409) (not b!4404599) (not d!1328896) (not b!4404647) (not b_lambda!140243) (not b!4404696) (not b!4404601) (not b!4404632) (not b!4404390) (not b!4404598) (not d!1328884) (not b!4404548) (not b!4404613) (not d!1328922) (not b!4404576) (not d!1328940) (not d!1328918) (not b!4404549) (not d!1328882) (not b!4404620) (not d!1328898) (not b!4404650) (not d!1328912) (not bm!306529) (not b!4404570) (not b!4404602) (not b!4404642) (not b!4404402) (not b!4404392) (not b!4404681) (not d!1328920) (not b!4404397) (not bs!730261) (not b!4404608) (not b!4404550) (not d!1328868) (not b!4404619) (not d!1328924) (not b!4404618) (not d!1328928) (not b_lambda!140241) (not b!4404649) (not b!4404595) (not bm!306533) (not d!1328798) tp_is_empty!25803 (not b!4404691) (not d!1328886) (not d!1328936) (not bm!306528) (not d!1328948) (not d!1328804) (not b!4404600) (not b_lambda!140245) (not d!1328888) (not b!4404686) (not b!4404623) (not d!1328950) (not d!1328944) (not d!1328942) (not b!4404635) (not b!4404675) (not b!4404594) (not b!4404646) (not b!4404634) (not d!1328786) (not b_lambda!140239) (not b!4404573) (not b!4404616) (not d!1328890) (not b!4404648) (not b!4404569) (not d!1328904) (not b!4404572) (not d!1328938))
(check-sat)
