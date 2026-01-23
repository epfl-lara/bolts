; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423116 () Bool)

(assert start!423116)

(declare-fun b!4364079 () Bool)

(declare-fun res!1794733 () Bool)

(declare-fun e!2716047 () Bool)

(assert (=> b!4364079 (=> res!1794733 e!2716047)))

(declare-datatypes ((K!10360 0))(
  ( (K!10361 (val!16559 Int)) )
))
(declare-datatypes ((V!10606 0))(
  ( (V!10607 (val!16560 Int)) )
))
(declare-datatypes ((tuple2!48438 0))(
  ( (tuple2!48439 (_1!27513 K!10360) (_2!27513 V!10606)) )
))
(declare-datatypes ((List!49129 0))(
  ( (Nil!49005) (Cons!49005 (h!54574 tuple2!48438) (t!356049 List!49129)) )
))
(declare-fun newBucket!200 () List!49129)

(declare-fun noDuplicateKeys!517 (List!49129) Bool)

(assert (=> b!4364079 (= res!1794733 (not (noDuplicateKeys!517 newBucket!200)))))

(declare-fun b!4364080 () Bool)

(declare-fun e!2716049 () Bool)

(declare-datatypes ((tuple2!48440 0))(
  ( (tuple2!48441 (_1!27514 (_ BitVec 64)) (_2!27514 List!49129)) )
))
(declare-datatypes ((List!49130 0))(
  ( (Nil!49006) (Cons!49006 (h!54575 tuple2!48440) (t!356050 List!49130)) )
))
(declare-datatypes ((ListLongMap!1667 0))(
  ( (ListLongMap!1668 (toList!3017 List!49130)) )
))
(declare-fun lm!1707 () ListLongMap!1667)

(declare-fun lt!1576687 () tuple2!48440)

(declare-fun head!9094 (ListLongMap!1667) tuple2!48440)

(assert (=> b!4364080 (= e!2716049 (not (= (head!9094 lm!1707) lt!1576687)))))

(declare-fun b!4364081 () Bool)

(declare-fun e!2716050 () Bool)

(declare-fun key!3918 () K!10360)

(declare-fun containsKey!754 (List!49129 K!10360) Bool)

(assert (=> b!4364081 (= e!2716050 (not (containsKey!754 (_2!27514 (h!54575 (toList!3017 lm!1707))) key!3918)))))

(declare-fun b!4364082 () Bool)

(declare-fun e!2716048 () Bool)

(declare-fun lt!1576689 () ListLongMap!1667)

(declare-fun lambda!142197 () Int)

(declare-fun forall!9172 (List!49130 Int) Bool)

(assert (=> b!4364082 (= e!2716048 (forall!9172 (toList!3017 lt!1576689) lambda!142197))))

(declare-fun b!4364083 () Bool)

(declare-fun res!1794741 () Bool)

(declare-fun e!2716043 () Bool)

(assert (=> b!4364083 (=> (not res!1794741) (not e!2716043))))

(declare-datatypes ((Hashable!4909 0))(
  ( (HashableExt!4908 (__x!30612 Int)) )
))
(declare-fun hashF!1247 () Hashable!4909)

(declare-fun allKeysSameHashInMap!621 (ListLongMap!1667 Hashable!4909) Bool)

(assert (=> b!4364083 (= res!1794741 (allKeysSameHashInMap!621 lm!1707 hashF!1247))))

(declare-fun b!4364084 () Bool)

(declare-fun e!2716041 () Bool)

(declare-fun tp!1330485 () Bool)

(assert (=> b!4364084 (= e!2716041 tp!1330485)))

(declare-fun b!4364085 () Bool)

(declare-fun res!1794732 () Bool)

(assert (=> b!4364085 (=> (not res!1794732) (not e!2716043))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!475 (List!49129 (_ BitVec 64) Hashable!4909) Bool)

(assert (=> b!4364085 (= res!1794732 (allKeysSameHash!475 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364086 () Bool)

(declare-fun res!1794736 () Bool)

(assert (=> b!4364086 (=> (not res!1794736) (not e!2716043))))

(declare-fun hash!1651 (Hashable!4909 K!10360) (_ BitVec 64))

(assert (=> b!4364086 (= res!1794736 (= (hash!1651 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364078 () Bool)

(declare-fun res!1794730 () Bool)

(declare-fun e!2716046 () Bool)

(assert (=> b!4364078 (=> (not res!1794730) (not e!2716046))))

(declare-fun contains!11255 (ListLongMap!1667 (_ BitVec 64)) Bool)

(assert (=> b!4364078 (= res!1794730 (contains!11255 lm!1707 hash!377))))

(declare-fun res!1794739 () Bool)

(assert (=> start!423116 (=> (not res!1794739) (not e!2716043))))

(assert (=> start!423116 (= res!1794739 (forall!9172 (toList!3017 lm!1707) lambda!142197))))

(assert (=> start!423116 e!2716043))

(declare-fun e!2716042 () Bool)

(assert (=> start!423116 e!2716042))

(assert (=> start!423116 true))

(declare-fun inv!64546 (ListLongMap!1667) Bool)

(assert (=> start!423116 (and (inv!64546 lm!1707) e!2716041)))

(declare-fun tp_is_empty!25305 () Bool)

(assert (=> start!423116 tp_is_empty!25305))

(declare-fun tp_is_empty!25307 () Bool)

(assert (=> start!423116 tp_is_empty!25307))

(declare-fun b!4364087 () Bool)

(declare-fun e!2716045 () Bool)

(assert (=> b!4364087 (= e!2716047 e!2716045)))

(declare-fun res!1794735 () Bool)

(assert (=> b!4364087 (=> res!1794735 e!2716045)))

(get-info :version)

(assert (=> b!4364087 (= res!1794735 (or (and ((_ is Cons!49006) (toList!3017 lm!1707)) (= (_1!27514 (h!54575 (toList!3017 lm!1707))) hash!377)) (not ((_ is Cons!49006) (toList!3017 lm!1707))) (= (_1!27514 (h!54575 (toList!3017 lm!1707))) hash!377)))))

(assert (=> b!4364087 e!2716048))

(declare-fun res!1794734 () Bool)

(assert (=> b!4364087 (=> (not res!1794734) (not e!2716048))))

(assert (=> b!4364087 (= res!1794734 (forall!9172 (toList!3017 lt!1576689) lambda!142197))))

(declare-fun +!691 (ListLongMap!1667 tuple2!48440) ListLongMap!1667)

(assert (=> b!4364087 (= lt!1576689 (+!691 lm!1707 lt!1576687))))

(assert (=> b!4364087 (= lt!1576687 (tuple2!48441 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72861 0))(
  ( (Unit!72862) )
))
(declare-fun lt!1576684 () Unit!72861)

(declare-fun addValidProp!171 (ListLongMap!1667 Int (_ BitVec 64) List!49129) Unit!72861)

(assert (=> b!4364087 (= lt!1576684 (addValidProp!171 lm!1707 lambda!142197 hash!377 newBucket!200))))

(assert (=> b!4364087 (forall!9172 (toList!3017 lm!1707) lambda!142197)))

(declare-fun b!4364088 () Bool)

(assert (=> b!4364088 (= e!2716046 (not e!2716047))))

(declare-fun res!1794740 () Bool)

(assert (=> b!4364088 (=> res!1794740 e!2716047)))

(declare-fun lt!1576675 () tuple2!48438)

(declare-fun lt!1576680 () List!49129)

(declare-fun removePairForKey!487 (List!49129 K!10360) List!49129)

(assert (=> b!4364088 (= res!1794740 (not (= newBucket!200 (Cons!49005 lt!1576675 (removePairForKey!487 lt!1576680 key!3918)))))))

(declare-fun newValue!99 () V!10606)

(assert (=> b!4364088 (= lt!1576675 (tuple2!48439 key!3918 newValue!99))))

(declare-fun lt!1576688 () tuple2!48440)

(declare-fun lt!1576678 () Unit!72861)

(declare-fun forallContained!1813 (List!49130 Int tuple2!48440) Unit!72861)

(assert (=> b!4364088 (= lt!1576678 (forallContained!1813 (toList!3017 lm!1707) lambda!142197 lt!1576688))))

(declare-fun contains!11256 (List!49130 tuple2!48440) Bool)

(assert (=> b!4364088 (contains!11256 (toList!3017 lm!1707) lt!1576688)))

(assert (=> b!4364088 (= lt!1576688 (tuple2!48441 hash!377 lt!1576680))))

(declare-fun lt!1576674 () Unit!72861)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!364 (List!49130 (_ BitVec 64) List!49129) Unit!72861)

(assert (=> b!4364088 (= lt!1576674 (lemmaGetValueByKeyImpliesContainsTuple!364 (toList!3017 lm!1707) hash!377 lt!1576680))))

(declare-fun apply!11369 (ListLongMap!1667 (_ BitVec 64)) List!49129)

(assert (=> b!4364088 (= lt!1576680 (apply!11369 lm!1707 hash!377))))

(declare-fun b!4364089 () Bool)

(assert (=> b!4364089 (= e!2716043 e!2716046)))

(declare-fun res!1794729 () Bool)

(assert (=> b!4364089 (=> (not res!1794729) (not e!2716046))))

(declare-datatypes ((ListMap!2261 0))(
  ( (ListMap!2262 (toList!3018 List!49129)) )
))
(declare-fun lt!1576690 () ListMap!2261)

(declare-fun contains!11257 (ListMap!2261 K!10360) Bool)

(assert (=> b!4364089 (= res!1794729 (contains!11257 lt!1576690 key!3918))))

(declare-fun extractMap!576 (List!49130) ListMap!2261)

(assert (=> b!4364089 (= lt!1576690 (extractMap!576 (toList!3017 lm!1707)))))

(declare-fun b!4364090 () Bool)

(declare-fun e!2716044 () Bool)

(assert (=> b!4364090 (= e!2716045 e!2716044)))

(declare-fun res!1794737 () Bool)

(assert (=> b!4364090 (=> res!1794737 e!2716044)))

(declare-fun lt!1576682 () ListMap!2261)

(declare-fun eq!287 (ListMap!2261 ListMap!2261) Bool)

(assert (=> b!4364090 (= res!1794737 (not (eq!287 lt!1576682 lt!1576690)))))

(declare-fun lt!1576694 () ListMap!2261)

(declare-fun lt!1576677 () ListMap!2261)

(assert (=> b!4364090 (eq!287 lt!1576694 lt!1576677)))

(declare-fun +!692 (ListMap!2261 tuple2!48438) ListMap!2261)

(assert (=> b!4364090 (= lt!1576677 (+!692 lt!1576682 lt!1576675))))

(declare-fun lt!1576676 () ListMap!2261)

(declare-fun addToMapMapFromBucket!213 (List!49129 ListMap!2261) ListMap!2261)

(assert (=> b!4364090 (= lt!1576694 (addToMapMapFromBucket!213 (_2!27514 (h!54575 (toList!3017 lm!1707))) lt!1576676))))

(declare-fun lt!1576685 () Unit!72861)

(declare-fun lt!1576679 () ListMap!2261)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!96 (ListMap!2261 K!10360 V!10606 List!49129) Unit!72861)

(assert (=> b!4364090 (= lt!1576685 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!96 lt!1576679 key!3918 newValue!99 (_2!27514 (h!54575 (toList!3017 lm!1707)))))))

(assert (=> b!4364090 (= lt!1576690 lt!1576682)))

(assert (=> b!4364090 (= lt!1576682 (addToMapMapFromBucket!213 (_2!27514 (h!54575 (toList!3017 lm!1707))) lt!1576679))))

(assert (=> b!4364090 e!2716049))

(declare-fun res!1794738 () Bool)

(assert (=> b!4364090 (=> (not res!1794738) (not e!2716049))))

(declare-fun lt!1576692 () ListMap!2261)

(assert (=> b!4364090 (= res!1794738 (eq!287 lt!1576692 lt!1576676))))

(assert (=> b!4364090 (= lt!1576676 (+!692 lt!1576679 lt!1576675))))

(declare-fun lt!1576691 () ListLongMap!1667)

(assert (=> b!4364090 (= lt!1576692 (extractMap!576 (toList!3017 (+!691 lt!1576691 lt!1576687))))))

(declare-fun lt!1576693 () Unit!72861)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!121 (ListLongMap!1667 (_ BitVec 64) List!49129 K!10360 V!10606 Hashable!4909) Unit!72861)

(assert (=> b!4364090 (= lt!1576693 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!121 lt!1576691 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4364090 (contains!11257 lt!1576679 key!3918)))

(assert (=> b!4364090 (= lt!1576679 (extractMap!576 (toList!3017 lt!1576691)))))

(declare-fun tail!7042 (ListLongMap!1667) ListLongMap!1667)

(assert (=> b!4364090 (= lt!1576691 (tail!7042 lm!1707))))

(declare-fun lt!1576686 () ListMap!2261)

(assert (=> b!4364090 (contains!11257 lt!1576686 key!3918)))

(declare-fun lt!1576683 () Unit!72861)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!60 (List!49129 K!10360 V!10606 ListMap!2261) Unit!72861)

(assert (=> b!4364090 (= lt!1576683 (lemmaAddToMapContainsAndNotInListThenInAcc!60 (_2!27514 (h!54575 (toList!3017 lm!1707))) key!3918 newValue!99 lt!1576686))))

(assert (=> b!4364090 (= lt!1576686 (extractMap!576 (t!356050 (toList!3017 lm!1707))))))

(assert (=> b!4364090 e!2716050))

(declare-fun res!1794731 () Bool)

(assert (=> b!4364090 (=> (not res!1794731) (not e!2716050))))

(assert (=> b!4364090 (= res!1794731 (not (containsKey!754 (apply!11369 lm!1707 (_1!27514 (h!54575 (toList!3017 lm!1707)))) key!3918)))))

(declare-fun lt!1576681 () Unit!72861)

(declare-fun lemmaNotSameHashThenCannotContainKey!64 (ListLongMap!1667 K!10360 (_ BitVec 64) Hashable!4909) Unit!72861)

(assert (=> b!4364090 (= lt!1576681 (lemmaNotSameHashThenCannotContainKey!64 lm!1707 key!3918 (_1!27514 (h!54575 (toList!3017 lm!1707))) hashF!1247))))

(declare-fun b!4364091 () Bool)

(assert (=> b!4364091 (= e!2716044 (forall!9172 (toList!3017 lt!1576689) lambda!142197))))

(assert (=> b!4364091 (eq!287 lt!1576694 (addToMapMapFromBucket!213 (_2!27514 (h!54575 (toList!3017 lm!1707))) lt!1576692))))

(declare-fun lt!1576696 () Unit!72861)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!2 (ListMap!2261 ListMap!2261 List!49129) Unit!72861)

(assert (=> b!4364091 (= lt!1576696 (lemmaAddToMapFromBucketPreservesEquivalence!2 lt!1576676 lt!1576692 (_2!27514 (h!54575 (toList!3017 lm!1707)))))))

(assert (=> b!4364091 (eq!287 (+!692 lt!1576690 lt!1576675) lt!1576677)))

(declare-fun lt!1576695 () Unit!72861)

(declare-fun lemmaAddToEqMapsPreservesEq!10 (ListMap!2261 ListMap!2261 K!10360 V!10606) Unit!72861)

(assert (=> b!4364091 (= lt!1576695 (lemmaAddToEqMapsPreservesEq!10 lt!1576690 lt!1576682 key!3918 newValue!99))))

(declare-fun b!4364092 () Bool)

(declare-fun tp!1330486 () Bool)

(assert (=> b!4364092 (= e!2716042 (and tp_is_empty!25305 tp_is_empty!25307 tp!1330486))))

(assert (= (and start!423116 res!1794739) b!4364083))

(assert (= (and b!4364083 res!1794741) b!4364086))

(assert (= (and b!4364086 res!1794736) b!4364085))

(assert (= (and b!4364085 res!1794732) b!4364089))

(assert (= (and b!4364089 res!1794729) b!4364078))

(assert (= (and b!4364078 res!1794730) b!4364088))

(assert (= (and b!4364088 (not res!1794740)) b!4364079))

(assert (= (and b!4364079 (not res!1794733)) b!4364087))

(assert (= (and b!4364087 res!1794734) b!4364082))

(assert (= (and b!4364087 (not res!1794735)) b!4364090))

(assert (= (and b!4364090 res!1794731) b!4364081))

(assert (= (and b!4364090 res!1794738) b!4364080))

(assert (= (and b!4364090 (not res!1794737)) b!4364091))

(assert (= (and start!423116 ((_ is Cons!49005) newBucket!200)) b!4364092))

(assert (= start!423116 b!4364084))

(declare-fun m!4985541 () Bool)

(assert (=> b!4364086 m!4985541))

(declare-fun m!4985543 () Bool)

(assert (=> b!4364091 m!4985543))

(assert (=> b!4364091 m!4985543))

(declare-fun m!4985545 () Bool)

(assert (=> b!4364091 m!4985545))

(declare-fun m!4985547 () Bool)

(assert (=> b!4364091 m!4985547))

(declare-fun m!4985549 () Bool)

(assert (=> b!4364091 m!4985549))

(declare-fun m!4985551 () Bool)

(assert (=> b!4364091 m!4985551))

(declare-fun m!4985553 () Bool)

(assert (=> b!4364091 m!4985553))

(assert (=> b!4364091 m!4985547))

(declare-fun m!4985555 () Bool)

(assert (=> b!4364091 m!4985555))

(assert (=> b!4364087 m!4985553))

(declare-fun m!4985557 () Bool)

(assert (=> b!4364087 m!4985557))

(declare-fun m!4985559 () Bool)

(assert (=> b!4364087 m!4985559))

(declare-fun m!4985561 () Bool)

(assert (=> b!4364087 m!4985561))

(declare-fun m!4985563 () Bool)

(assert (=> b!4364081 m!4985563))

(declare-fun m!4985565 () Bool)

(assert (=> b!4364078 m!4985565))

(declare-fun m!4985567 () Bool)

(assert (=> b!4364079 m!4985567))

(declare-fun m!4985569 () Bool)

(assert (=> b!4364089 m!4985569))

(declare-fun m!4985571 () Bool)

(assert (=> b!4364089 m!4985571))

(assert (=> start!423116 m!4985561))

(declare-fun m!4985573 () Bool)

(assert (=> start!423116 m!4985573))

(declare-fun m!4985575 () Bool)

(assert (=> b!4364080 m!4985575))

(declare-fun m!4985577 () Bool)

(assert (=> b!4364083 m!4985577))

(declare-fun m!4985579 () Bool)

(assert (=> b!4364085 m!4985579))

(assert (=> b!4364082 m!4985553))

(declare-fun m!4985581 () Bool)

(assert (=> b!4364088 m!4985581))

(declare-fun m!4985583 () Bool)

(assert (=> b!4364088 m!4985583))

(declare-fun m!4985585 () Bool)

(assert (=> b!4364088 m!4985585))

(declare-fun m!4985587 () Bool)

(assert (=> b!4364088 m!4985587))

(declare-fun m!4985589 () Bool)

(assert (=> b!4364088 m!4985589))

(declare-fun m!4985591 () Bool)

(assert (=> b!4364090 m!4985591))

(declare-fun m!4985593 () Bool)

(assert (=> b!4364090 m!4985593))

(declare-fun m!4985595 () Bool)

(assert (=> b!4364090 m!4985595))

(declare-fun m!4985597 () Bool)

(assert (=> b!4364090 m!4985597))

(declare-fun m!4985599 () Bool)

(assert (=> b!4364090 m!4985599))

(declare-fun m!4985601 () Bool)

(assert (=> b!4364090 m!4985601))

(declare-fun m!4985603 () Bool)

(assert (=> b!4364090 m!4985603))

(declare-fun m!4985605 () Bool)

(assert (=> b!4364090 m!4985605))

(declare-fun m!4985607 () Bool)

(assert (=> b!4364090 m!4985607))

(declare-fun m!4985609 () Bool)

(assert (=> b!4364090 m!4985609))

(declare-fun m!4985611 () Bool)

(assert (=> b!4364090 m!4985611))

(declare-fun m!4985613 () Bool)

(assert (=> b!4364090 m!4985613))

(declare-fun m!4985615 () Bool)

(assert (=> b!4364090 m!4985615))

(declare-fun m!4985617 () Bool)

(assert (=> b!4364090 m!4985617))

(declare-fun m!4985619 () Bool)

(assert (=> b!4364090 m!4985619))

(declare-fun m!4985621 () Bool)

(assert (=> b!4364090 m!4985621))

(declare-fun m!4985623 () Bool)

(assert (=> b!4364090 m!4985623))

(assert (=> b!4364090 m!4985623))

(declare-fun m!4985625 () Bool)

(assert (=> b!4364090 m!4985625))

(declare-fun m!4985627 () Bool)

(assert (=> b!4364090 m!4985627))

(declare-fun m!4985629 () Bool)

(assert (=> b!4364090 m!4985629))

(check-sat (not start!423116) tp_is_empty!25305 (not b!4364086) (not b!4364082) (not b!4364078) (not b!4364089) tp_is_empty!25307 (not b!4364079) (not b!4364085) (not b!4364083) (not b!4364087) (not b!4364091) (not b!4364088) (not b!4364092) (not b!4364084) (not b!4364090) (not b!4364081) (not b!4364080))
(check-sat)
