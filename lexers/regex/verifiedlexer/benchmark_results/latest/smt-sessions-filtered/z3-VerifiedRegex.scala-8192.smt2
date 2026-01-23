; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423120 () Bool)

(assert start!423120)

(declare-fun b!4364168 () Bool)

(declare-fun e!2716110 () Bool)

(declare-fun e!2716107 () Bool)

(assert (=> b!4364168 (= e!2716110 (not e!2716107))))

(declare-fun res!1794810 () Bool)

(assert (=> b!4364168 (=> res!1794810 e!2716107)))

(declare-datatypes ((K!10365 0))(
  ( (K!10366 (val!16563 Int)) )
))
(declare-datatypes ((V!10611 0))(
  ( (V!10612 (val!16564 Int)) )
))
(declare-datatypes ((tuple2!48446 0))(
  ( (tuple2!48447 (_1!27517 K!10365) (_2!27517 V!10611)) )
))
(declare-datatypes ((List!49133 0))(
  ( (Nil!49009) (Cons!49009 (h!54578 tuple2!48446) (t!356053 List!49133)) )
))
(declare-fun newBucket!200 () List!49133)

(declare-fun lt!1576840 () List!49133)

(declare-fun key!3918 () K!10365)

(declare-fun lt!1576839 () tuple2!48446)

(declare-fun removePairForKey!489 (List!49133 K!10365) List!49133)

(assert (=> b!4364168 (= res!1794810 (not (= newBucket!200 (Cons!49009 lt!1576839 (removePairForKey!489 lt!1576840 key!3918)))))))

(declare-fun newValue!99 () V!10611)

(assert (=> b!4364168 (= lt!1576839 (tuple2!48447 key!3918 newValue!99))))

(declare-datatypes ((tuple2!48448 0))(
  ( (tuple2!48449 (_1!27518 (_ BitVec 64)) (_2!27518 List!49133)) )
))
(declare-datatypes ((List!49134 0))(
  ( (Nil!49010) (Cons!49010 (h!54579 tuple2!48448) (t!356054 List!49134)) )
))
(declare-datatypes ((ListLongMap!1671 0))(
  ( (ListLongMap!1672 (toList!3021 List!49134)) )
))
(declare-fun lm!1707 () ListLongMap!1671)

(declare-fun lambda!142223 () Int)

(declare-datatypes ((Unit!72865 0))(
  ( (Unit!72866) )
))
(declare-fun lt!1576823 () Unit!72865)

(declare-fun lt!1576826 () tuple2!48448)

(declare-fun forallContained!1815 (List!49134 Int tuple2!48448) Unit!72865)

(assert (=> b!4364168 (= lt!1576823 (forallContained!1815 (toList!3021 lm!1707) lambda!142223 lt!1576826))))

(declare-fun contains!11261 (List!49134 tuple2!48448) Bool)

(assert (=> b!4364168 (contains!11261 (toList!3021 lm!1707) lt!1576826)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4364168 (= lt!1576826 (tuple2!48449 hash!377 lt!1576840))))

(declare-fun lt!1576820 () Unit!72865)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!366 (List!49134 (_ BitVec 64) List!49133) Unit!72865)

(assert (=> b!4364168 (= lt!1576820 (lemmaGetValueByKeyImpliesContainsTuple!366 (toList!3021 lm!1707) hash!377 lt!1576840))))

(declare-fun apply!11371 (ListLongMap!1671 (_ BitVec 64)) List!49133)

(assert (=> b!4364168 (= lt!1576840 (apply!11371 lm!1707 hash!377))))

(declare-fun b!4364169 () Bool)

(declare-fun e!2716101 () Bool)

(declare-fun lt!1576828 () ListLongMap!1671)

(declare-fun forall!9174 (List!49134 Int) Bool)

(assert (=> b!4364169 (= e!2716101 (forall!9174 (toList!3021 lt!1576828) lambda!142223))))

(declare-fun b!4364170 () Bool)

(declare-fun res!1794815 () Bool)

(declare-fun e!2716106 () Bool)

(assert (=> b!4364170 (=> (not res!1794815) (not e!2716106))))

(declare-datatypes ((Hashable!4911 0))(
  ( (HashableExt!4910 (__x!30614 Int)) )
))
(declare-fun hashF!1247 () Hashable!4911)

(declare-fun allKeysSameHash!477 (List!49133 (_ BitVec 64) Hashable!4911) Bool)

(assert (=> b!4364170 (= res!1794815 (allKeysSameHash!477 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364171 () Bool)

(declare-fun e!2716109 () Bool)

(declare-fun e!2716108 () Bool)

(assert (=> b!4364171 (= e!2716109 e!2716108)))

(declare-fun res!1794817 () Bool)

(assert (=> b!4364171 (=> res!1794817 e!2716108)))

(declare-datatypes ((ListMap!2265 0))(
  ( (ListMap!2266 (toList!3022 List!49133)) )
))
(declare-fun lt!1576836 () ListMap!2265)

(declare-fun lt!1576817 () ListMap!2265)

(declare-fun eq!289 (ListMap!2265 ListMap!2265) Bool)

(assert (=> b!4364171 (= res!1794817 (not (eq!289 lt!1576836 lt!1576817)))))

(declare-fun lt!1576833 () ListMap!2265)

(declare-fun lt!1576838 () ListMap!2265)

(assert (=> b!4364171 (eq!289 lt!1576833 lt!1576838)))

(declare-fun +!695 (ListMap!2265 tuple2!48446) ListMap!2265)

(assert (=> b!4364171 (= lt!1576838 (+!695 lt!1576836 lt!1576839))))

(declare-fun lt!1576825 () ListMap!2265)

(declare-fun addToMapMapFromBucket!215 (List!49133 ListMap!2265) ListMap!2265)

(assert (=> b!4364171 (= lt!1576833 (addToMapMapFromBucket!215 (_2!27518 (h!54579 (toList!3021 lm!1707))) lt!1576825))))

(declare-fun lt!1576831 () ListMap!2265)

(declare-fun lt!1576824 () Unit!72865)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!98 (ListMap!2265 K!10365 V!10611 List!49133) Unit!72865)

(assert (=> b!4364171 (= lt!1576824 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!98 lt!1576831 key!3918 newValue!99 (_2!27518 (h!54579 (toList!3021 lm!1707)))))))

(assert (=> b!4364171 (= lt!1576817 lt!1576836)))

(assert (=> b!4364171 (= lt!1576836 (addToMapMapFromBucket!215 (_2!27518 (h!54579 (toList!3021 lm!1707))) lt!1576831))))

(declare-fun e!2716103 () Bool)

(assert (=> b!4364171 e!2716103))

(declare-fun res!1794811 () Bool)

(assert (=> b!4364171 (=> (not res!1794811) (not e!2716103))))

(declare-fun lt!1576827 () ListMap!2265)

(assert (=> b!4364171 (= res!1794811 (eq!289 lt!1576827 lt!1576825))))

(assert (=> b!4364171 (= lt!1576825 (+!695 lt!1576831 lt!1576839))))

(declare-fun lt!1576821 () ListLongMap!1671)

(declare-fun lt!1576822 () tuple2!48448)

(declare-fun extractMap!578 (List!49134) ListMap!2265)

(declare-fun +!696 (ListLongMap!1671 tuple2!48448) ListLongMap!1671)

(assert (=> b!4364171 (= lt!1576827 (extractMap!578 (toList!3021 (+!696 lt!1576821 lt!1576822))))))

(declare-fun lt!1576819 () Unit!72865)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!123 (ListLongMap!1671 (_ BitVec 64) List!49133 K!10365 V!10611 Hashable!4911) Unit!72865)

(assert (=> b!4364171 (= lt!1576819 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!123 lt!1576821 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11262 (ListMap!2265 K!10365) Bool)

(assert (=> b!4364171 (contains!11262 lt!1576831 key!3918)))

(assert (=> b!4364171 (= lt!1576831 (extractMap!578 (toList!3021 lt!1576821)))))

(declare-fun tail!7044 (ListLongMap!1671) ListLongMap!1671)

(assert (=> b!4364171 (= lt!1576821 (tail!7044 lm!1707))))

(declare-fun lt!1576832 () ListMap!2265)

(assert (=> b!4364171 (contains!11262 lt!1576832 key!3918)))

(declare-fun lt!1576837 () Unit!72865)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!62 (List!49133 K!10365 V!10611 ListMap!2265) Unit!72865)

(assert (=> b!4364171 (= lt!1576837 (lemmaAddToMapContainsAndNotInListThenInAcc!62 (_2!27518 (h!54579 (toList!3021 lm!1707))) key!3918 newValue!99 lt!1576832))))

(assert (=> b!4364171 (= lt!1576832 (extractMap!578 (t!356054 (toList!3021 lm!1707))))))

(declare-fun e!2716102 () Bool)

(assert (=> b!4364171 e!2716102))

(declare-fun res!1794809 () Bool)

(assert (=> b!4364171 (=> (not res!1794809) (not e!2716102))))

(declare-fun containsKey!756 (List!49133 K!10365) Bool)

(assert (=> b!4364171 (= res!1794809 (not (containsKey!756 (apply!11371 lm!1707 (_1!27518 (h!54579 (toList!3021 lm!1707)))) key!3918)))))

(declare-fun lt!1576818 () Unit!72865)

(declare-fun lemmaNotSameHashThenCannotContainKey!66 (ListLongMap!1671 K!10365 (_ BitVec 64) Hashable!4911) Unit!72865)

(assert (=> b!4364171 (= lt!1576818 (lemmaNotSameHashThenCannotContainKey!66 lm!1707 key!3918 (_1!27518 (h!54579 (toList!3021 lm!1707))) hashF!1247))))

(declare-fun res!1794819 () Bool)

(assert (=> start!423120 (=> (not res!1794819) (not e!2716106))))

(assert (=> start!423120 (= res!1794819 (forall!9174 (toList!3021 lm!1707) lambda!142223))))

(assert (=> start!423120 e!2716106))

(declare-fun e!2716105 () Bool)

(assert (=> start!423120 e!2716105))

(assert (=> start!423120 true))

(declare-fun e!2716104 () Bool)

(declare-fun inv!64551 (ListLongMap!1671) Bool)

(assert (=> start!423120 (and (inv!64551 lm!1707) e!2716104)))

(declare-fun tp_is_empty!25313 () Bool)

(assert (=> start!423120 tp_is_empty!25313))

(declare-fun tp_is_empty!25315 () Bool)

(assert (=> start!423120 tp_is_empty!25315))

(declare-fun b!4364172 () Bool)

(declare-fun res!1794814 () Bool)

(assert (=> b!4364172 (=> (not res!1794814) (not e!2716106))))

(declare-fun hash!1653 (Hashable!4911 K!10365) (_ BitVec 64))

(assert (=> b!4364172 (= res!1794814 (= (hash!1653 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364173 () Bool)

(declare-fun res!1794808 () Bool)

(assert (=> b!4364173 (=> (not res!1794808) (not e!2716106))))

(declare-fun allKeysSameHashInMap!623 (ListLongMap!1671 Hashable!4911) Bool)

(assert (=> b!4364173 (= res!1794808 (allKeysSameHashInMap!623 lm!1707 hashF!1247))))

(declare-fun b!4364174 () Bool)

(assert (=> b!4364174 (= e!2716106 e!2716110)))

(declare-fun res!1794807 () Bool)

(assert (=> b!4364174 (=> (not res!1794807) (not e!2716110))))

(assert (=> b!4364174 (= res!1794807 (contains!11262 lt!1576817 key!3918))))

(assert (=> b!4364174 (= lt!1576817 (extractMap!578 (toList!3021 lm!1707)))))

(declare-fun b!4364175 () Bool)

(declare-fun head!9096 (ListLongMap!1671) tuple2!48448)

(assert (=> b!4364175 (= e!2716103 (not (= (head!9096 lm!1707) lt!1576822)))))

(declare-fun b!4364176 () Bool)

(assert (=> b!4364176 (= e!2716108 (forall!9174 (toList!3021 lm!1707) lambda!142223))))

(declare-fun lt!1576834 () ListMap!2265)

(assert (=> b!4364176 (= lt!1576834 (extractMap!578 (toList!3021 lt!1576828)))))

(assert (=> b!4364176 (eq!289 lt!1576833 (addToMapMapFromBucket!215 (_2!27518 (h!54579 (toList!3021 lm!1707))) lt!1576827))))

(declare-fun lt!1576830 () Unit!72865)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!4 (ListMap!2265 ListMap!2265 List!49133) Unit!72865)

(assert (=> b!4364176 (= lt!1576830 (lemmaAddToMapFromBucketPreservesEquivalence!4 lt!1576825 lt!1576827 (_2!27518 (h!54579 (toList!3021 lm!1707)))))))

(assert (=> b!4364176 (eq!289 (+!695 lt!1576817 lt!1576839) lt!1576838)))

(declare-fun lt!1576829 () Unit!72865)

(declare-fun lemmaAddToEqMapsPreservesEq!12 (ListMap!2265 ListMap!2265 K!10365 V!10611) Unit!72865)

(assert (=> b!4364176 (= lt!1576829 (lemmaAddToEqMapsPreservesEq!12 lt!1576817 lt!1576836 key!3918 newValue!99))))

(declare-fun b!4364177 () Bool)

(declare-fun res!1794816 () Bool)

(assert (=> b!4364177 (=> res!1794816 e!2716107)))

(declare-fun noDuplicateKeys!519 (List!49133) Bool)

(assert (=> b!4364177 (= res!1794816 (not (noDuplicateKeys!519 newBucket!200)))))

(declare-fun b!4364178 () Bool)

(declare-fun tp!1330498 () Bool)

(assert (=> b!4364178 (= e!2716104 tp!1330498)))

(declare-fun b!4364179 () Bool)

(assert (=> b!4364179 (= e!2716102 (not (containsKey!756 (_2!27518 (h!54579 (toList!3021 lm!1707))) key!3918)))))

(declare-fun b!4364180 () Bool)

(declare-fun res!1794812 () Bool)

(assert (=> b!4364180 (=> (not res!1794812) (not e!2716110))))

(declare-fun contains!11263 (ListLongMap!1671 (_ BitVec 64)) Bool)

(assert (=> b!4364180 (= res!1794812 (contains!11263 lm!1707 hash!377))))

(declare-fun b!4364181 () Bool)

(assert (=> b!4364181 (= e!2716107 e!2716109)))

(declare-fun res!1794818 () Bool)

(assert (=> b!4364181 (=> res!1794818 e!2716109)))

(get-info :version)

(assert (=> b!4364181 (= res!1794818 (or (and ((_ is Cons!49010) (toList!3021 lm!1707)) (= (_1!27518 (h!54579 (toList!3021 lm!1707))) hash!377)) (not ((_ is Cons!49010) (toList!3021 lm!1707))) (= (_1!27518 (h!54579 (toList!3021 lm!1707))) hash!377)))))

(assert (=> b!4364181 e!2716101))

(declare-fun res!1794813 () Bool)

(assert (=> b!4364181 (=> (not res!1794813) (not e!2716101))))

(assert (=> b!4364181 (= res!1794813 (forall!9174 (toList!3021 lt!1576828) lambda!142223))))

(assert (=> b!4364181 (= lt!1576828 (+!696 lm!1707 lt!1576822))))

(assert (=> b!4364181 (= lt!1576822 (tuple2!48449 hash!377 newBucket!200))))

(declare-fun lt!1576835 () Unit!72865)

(declare-fun addValidProp!173 (ListLongMap!1671 Int (_ BitVec 64) List!49133) Unit!72865)

(assert (=> b!4364181 (= lt!1576835 (addValidProp!173 lm!1707 lambda!142223 hash!377 newBucket!200))))

(assert (=> b!4364181 (forall!9174 (toList!3021 lm!1707) lambda!142223)))

(declare-fun tp!1330497 () Bool)

(declare-fun b!4364182 () Bool)

(assert (=> b!4364182 (= e!2716105 (and tp_is_empty!25313 tp_is_empty!25315 tp!1330497))))

(assert (= (and start!423120 res!1794819) b!4364173))

(assert (= (and b!4364173 res!1794808) b!4364172))

(assert (= (and b!4364172 res!1794814) b!4364170))

(assert (= (and b!4364170 res!1794815) b!4364174))

(assert (= (and b!4364174 res!1794807) b!4364180))

(assert (= (and b!4364180 res!1794812) b!4364168))

(assert (= (and b!4364168 (not res!1794810)) b!4364177))

(assert (= (and b!4364177 (not res!1794816)) b!4364181))

(assert (= (and b!4364181 res!1794813) b!4364169))

(assert (= (and b!4364181 (not res!1794818)) b!4364171))

(assert (= (and b!4364171 res!1794809) b!4364179))

(assert (= (and b!4364171 res!1794811) b!4364175))

(assert (= (and b!4364171 (not res!1794817)) b!4364176))

(assert (= (and start!423120 ((_ is Cons!49009) newBucket!200)) b!4364182))

(assert (= start!423120 b!4364178))

(declare-fun m!4985723 () Bool)

(assert (=> b!4364172 m!4985723))

(declare-fun m!4985725 () Bool)

(assert (=> b!4364176 m!4985725))

(declare-fun m!4985727 () Bool)

(assert (=> b!4364176 m!4985727))

(declare-fun m!4985729 () Bool)

(assert (=> b!4364176 m!4985729))

(declare-fun m!4985731 () Bool)

(assert (=> b!4364176 m!4985731))

(assert (=> b!4364176 m!4985727))

(declare-fun m!4985733 () Bool)

(assert (=> b!4364176 m!4985733))

(assert (=> b!4364176 m!4985729))

(declare-fun m!4985735 () Bool)

(assert (=> b!4364176 m!4985735))

(declare-fun m!4985737 () Bool)

(assert (=> b!4364176 m!4985737))

(declare-fun m!4985739 () Bool)

(assert (=> b!4364176 m!4985739))

(declare-fun m!4985741 () Bool)

(assert (=> b!4364180 m!4985741))

(declare-fun m!4985743 () Bool)

(assert (=> b!4364171 m!4985743))

(declare-fun m!4985745 () Bool)

(assert (=> b!4364171 m!4985745))

(declare-fun m!4985747 () Bool)

(assert (=> b!4364171 m!4985747))

(declare-fun m!4985749 () Bool)

(assert (=> b!4364171 m!4985749))

(declare-fun m!4985751 () Bool)

(assert (=> b!4364171 m!4985751))

(declare-fun m!4985753 () Bool)

(assert (=> b!4364171 m!4985753))

(declare-fun m!4985755 () Bool)

(assert (=> b!4364171 m!4985755))

(declare-fun m!4985757 () Bool)

(assert (=> b!4364171 m!4985757))

(declare-fun m!4985759 () Bool)

(assert (=> b!4364171 m!4985759))

(declare-fun m!4985761 () Bool)

(assert (=> b!4364171 m!4985761))

(declare-fun m!4985763 () Bool)

(assert (=> b!4364171 m!4985763))

(declare-fun m!4985765 () Bool)

(assert (=> b!4364171 m!4985765))

(declare-fun m!4985767 () Bool)

(assert (=> b!4364171 m!4985767))

(declare-fun m!4985769 () Bool)

(assert (=> b!4364171 m!4985769))

(declare-fun m!4985771 () Bool)

(assert (=> b!4364171 m!4985771))

(declare-fun m!4985773 () Bool)

(assert (=> b!4364171 m!4985773))

(assert (=> b!4364171 m!4985773))

(declare-fun m!4985775 () Bool)

(assert (=> b!4364171 m!4985775))

(declare-fun m!4985777 () Bool)

(assert (=> b!4364171 m!4985777))

(declare-fun m!4985779 () Bool)

(assert (=> b!4364171 m!4985779))

(declare-fun m!4985781 () Bool)

(assert (=> b!4364171 m!4985781))

(declare-fun m!4985783 () Bool)

(assert (=> b!4364170 m!4985783))

(declare-fun m!4985785 () Bool)

(assert (=> b!4364181 m!4985785))

(declare-fun m!4985787 () Bool)

(assert (=> b!4364181 m!4985787))

(declare-fun m!4985789 () Bool)

(assert (=> b!4364181 m!4985789))

(assert (=> b!4364181 m!4985737))

(declare-fun m!4985791 () Bool)

(assert (=> b!4364175 m!4985791))

(declare-fun m!4985793 () Bool)

(assert (=> b!4364177 m!4985793))

(declare-fun m!4985795 () Bool)

(assert (=> b!4364173 m!4985795))

(assert (=> b!4364169 m!4985785))

(declare-fun m!4985797 () Bool)

(assert (=> b!4364168 m!4985797))

(declare-fun m!4985799 () Bool)

(assert (=> b!4364168 m!4985799))

(declare-fun m!4985801 () Bool)

(assert (=> b!4364168 m!4985801))

(declare-fun m!4985803 () Bool)

(assert (=> b!4364168 m!4985803))

(declare-fun m!4985805 () Bool)

(assert (=> b!4364168 m!4985805))

(declare-fun m!4985807 () Bool)

(assert (=> b!4364179 m!4985807))

(declare-fun m!4985809 () Bool)

(assert (=> b!4364174 m!4985809))

(declare-fun m!4985811 () Bool)

(assert (=> b!4364174 m!4985811))

(assert (=> start!423120 m!4985737))

(declare-fun m!4985813 () Bool)

(assert (=> start!423120 m!4985813))

(check-sat (not b!4364174) (not b!4364177) (not b!4364179) (not b!4364175) (not start!423120) (not b!4364176) (not b!4364170) (not b!4364172) (not b!4364182) tp_is_empty!25313 (not b!4364173) (not b!4364181) tp_is_empty!25315 (not b!4364169) (not b!4364180) (not b!4364178) (not b!4364171) (not b!4364168))
(check-sat)
