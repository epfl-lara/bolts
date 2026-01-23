; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419260 () Bool)

(assert start!419260)

(declare-fun b!4344539 () Bool)

(declare-fun res!1783542 () Bool)

(declare-fun e!2703563 () Bool)

(assert (=> b!4344539 (=> (not res!1783542) (not e!2703563))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4815 0))(
  ( (HashableExt!4814 (__x!30518 Int)) )
))
(declare-fun hashF!1247 () Hashable!4815)

(declare-datatypes ((K!10125 0))(
  ( (K!10126 (val!16371 Int)) )
))
(declare-fun key!3918 () K!10125)

(declare-fun hash!1390 (Hashable!4815 K!10125) (_ BitVec 64))

(assert (=> b!4344539 (= res!1783542 (= (hash!1390 hashF!1247 key!3918) hash!377))))

(declare-fun b!4344540 () Bool)

(declare-fun e!2703566 () Bool)

(declare-datatypes ((V!10371 0))(
  ( (V!10372 (val!16372 Int)) )
))
(declare-datatypes ((tuple2!48062 0))(
  ( (tuple2!48063 (_1!27325 K!10125) (_2!27325 V!10371)) )
))
(declare-datatypes ((List!48891 0))(
  ( (Nil!48767) (Cons!48767 (h!54286 tuple2!48062) (t!355811 List!48891)) )
))
(declare-datatypes ((ListMap!2073 0))(
  ( (ListMap!2074 (toList!2829 List!48891)) )
))
(declare-fun lt!1558132 () ListMap!2073)

(declare-fun lt!1558140 () ListMap!2073)

(declare-fun eq!213 (ListMap!2073 ListMap!2073) Bool)

(assert (=> b!4344540 (= e!2703566 (eq!213 lt!1558132 lt!1558140))))

(declare-fun b!4344541 () Bool)

(declare-fun e!2703562 () Bool)

(declare-fun e!2703567 () Bool)

(assert (=> b!4344541 (= e!2703562 e!2703567)))

(declare-fun res!1783543 () Bool)

(assert (=> b!4344541 (=> res!1783543 e!2703567)))

(declare-datatypes ((tuple2!48064 0))(
  ( (tuple2!48065 (_1!27326 (_ BitVec 64)) (_2!27326 List!48891)) )
))
(declare-datatypes ((List!48892 0))(
  ( (Nil!48768) (Cons!48768 (h!54287 tuple2!48064) (t!355812 List!48892)) )
))
(declare-datatypes ((ListLongMap!1479 0))(
  ( (ListLongMap!1480 (toList!2830 List!48892)) )
))
(declare-fun lm!1707 () ListLongMap!1479)

(get-info :version)

(assert (=> b!4344541 (= res!1783543 (or (not ((_ is Cons!48768) (toList!2830 lm!1707))) (not (= (_1!27326 (h!54287 (toList!2830 lm!1707))) hash!377))))))

(declare-fun e!2703564 () Bool)

(assert (=> b!4344541 e!2703564))

(declare-fun res!1783533 () Bool)

(assert (=> b!4344541 (=> (not res!1783533) (not e!2703564))))

(declare-fun lt!1558135 () ListLongMap!1479)

(declare-fun lambda!137771 () Int)

(declare-fun forall!9011 (List!48892 Int) Bool)

(assert (=> b!4344541 (= res!1783533 (forall!9011 (toList!2830 lt!1558135) lambda!137771))))

(declare-fun lt!1558131 () tuple2!48064)

(declare-fun +!517 (ListLongMap!1479 tuple2!48064) ListLongMap!1479)

(assert (=> b!4344541 (= lt!1558135 (+!517 lm!1707 lt!1558131))))

(declare-fun newBucket!200 () List!48891)

(assert (=> b!4344541 (= lt!1558131 (tuple2!48065 hash!377 newBucket!200))))

(declare-datatypes ((Unit!70283 0))(
  ( (Unit!70284) )
))
(declare-fun lt!1558141 () Unit!70283)

(declare-fun addValidProp!77 (ListLongMap!1479 Int (_ BitVec 64) List!48891) Unit!70283)

(assert (=> b!4344541 (= lt!1558141 (addValidProp!77 lm!1707 lambda!137771 hash!377 newBucket!200))))

(assert (=> b!4344541 (forall!9011 (toList!2830 lm!1707) lambda!137771)))

(declare-fun b!4344542 () Bool)

(declare-fun tp!1329399 () Bool)

(declare-fun tp_is_empty!24929 () Bool)

(declare-fun e!2703561 () Bool)

(declare-fun tp_is_empty!24931 () Bool)

(assert (=> b!4344542 (= e!2703561 (and tp_is_empty!24929 tp_is_empty!24931 tp!1329399))))

(declare-fun b!4344543 () Bool)

(declare-fun res!1783539 () Bool)

(assert (=> b!4344543 (=> (not res!1783539) (not e!2703563))))

(declare-fun allKeysSameHash!381 (List!48891 (_ BitVec 64) Hashable!4815) Bool)

(assert (=> b!4344543 (= res!1783539 (allKeysSameHash!381 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4344544 () Bool)

(assert (=> b!4344544 (= e!2703564 (or (not ((_ is Cons!48768) (toList!2830 lm!1707))) (not (= (_1!27326 (h!54287 (toList!2830 lm!1707))) hash!377)) (= lt!1558135 (ListLongMap!1480 (Cons!48768 lt!1558131 (t!355812 (toList!2830 lm!1707)))))))))

(declare-fun b!4344545 () Bool)

(declare-fun e!2703568 () Bool)

(declare-fun tp!1329400 () Bool)

(assert (=> b!4344545 (= e!2703568 tp!1329400)))

(declare-fun b!4344546 () Bool)

(assert (=> b!4344546 (= e!2703567 true)))

(declare-fun lt!1558143 () ListMap!2073)

(declare-fun lt!1558139 () ListMap!2073)

(declare-fun -!224 (ListMap!2073 K!10125) ListMap!2073)

(assert (=> b!4344546 (eq!213 lt!1558143 (-!224 lt!1558139 key!3918))))

(declare-fun lt!1558134 () Unit!70283)

(declare-fun lt!1558133 () List!48891)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!39 (ListLongMap!1479 (_ BitVec 64) List!48891 K!10125 Hashable!4815) Unit!70283)

(assert (=> b!4344546 (= lt!1558134 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!39 lm!1707 hash!377 lt!1558133 key!3918 hashF!1247))))

(declare-fun lt!1558138 () ListMap!2073)

(assert (=> b!4344546 (= lt!1558138 lt!1558143)))

(declare-fun lt!1558125 () ListLongMap!1479)

(declare-fun extractMap!482 (List!48892) ListMap!2073)

(assert (=> b!4344546 (= lt!1558143 (extractMap!482 (toList!2830 lt!1558125)))))

(declare-fun lt!1558137 () List!48891)

(assert (=> b!4344546 (= lt!1558133 lt!1558137)))

(assert (=> b!4344546 (= lt!1558125 (+!517 lm!1707 (tuple2!48065 hash!377 lt!1558133)))))

(declare-fun tail!6921 (List!48891) List!48891)

(assert (=> b!4344546 (= lt!1558133 (tail!6921 newBucket!200))))

(assert (=> b!4344546 e!2703566))

(declare-fun res!1783535 () Bool)

(assert (=> b!4344546 (=> (not res!1783535) (not e!2703566))))

(declare-fun lt!1558142 () ListMap!2073)

(assert (=> b!4344546 (= res!1783535 (eq!213 lt!1558142 lt!1558140))))

(declare-fun lt!1558145 () tuple2!48062)

(declare-fun +!518 (ListMap!2073 tuple2!48062) ListMap!2073)

(assert (=> b!4344546 (= lt!1558140 (+!518 lt!1558138 lt!1558145))))

(declare-fun lt!1558136 () ListMap!2073)

(declare-fun addToMapMapFromBucket!131 (List!48891 ListMap!2073) ListMap!2073)

(assert (=> b!4344546 (= lt!1558138 (addToMapMapFromBucket!131 lt!1558137 lt!1558136))))

(declare-fun lt!1558129 () Unit!70283)

(declare-fun newValue!99 () V!10371)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!42 (ListMap!2073 K!10125 V!10371 List!48891) Unit!70283)

(assert (=> b!4344546 (= lt!1558129 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!42 lt!1558136 key!3918 newValue!99 lt!1558137))))

(assert (=> b!4344546 (= lt!1558132 lt!1558142)))

(assert (=> b!4344546 (= lt!1558142 (addToMapMapFromBucket!131 lt!1558137 (+!518 lt!1558136 lt!1558145)))))

(declare-fun lt!1558146 () ListMap!2073)

(assert (=> b!4344546 (= lt!1558146 lt!1558132)))

(declare-fun lt!1558126 () List!48891)

(assert (=> b!4344546 (= lt!1558132 (addToMapMapFromBucket!131 lt!1558126 lt!1558136))))

(assert (=> b!4344546 (= lt!1558146 (addToMapMapFromBucket!131 newBucket!200 lt!1558136))))

(assert (=> b!4344546 (= lt!1558146 (extractMap!482 (toList!2830 lt!1558135)))))

(assert (=> b!4344546 (= lt!1558136 (extractMap!482 (t!355812 (toList!2830 lm!1707))))))

(declare-fun res!1783538 () Bool)

(assert (=> start!419260 (=> (not res!1783538) (not e!2703563))))

(assert (=> start!419260 (= res!1783538 (forall!9011 (toList!2830 lm!1707) lambda!137771))))

(assert (=> start!419260 e!2703563))

(assert (=> start!419260 e!2703561))

(assert (=> start!419260 true))

(declare-fun inv!64311 (ListLongMap!1479) Bool)

(assert (=> start!419260 (and (inv!64311 lm!1707) e!2703568)))

(assert (=> start!419260 tp_is_empty!24929))

(assert (=> start!419260 tp_is_empty!24931))

(declare-fun b!4344547 () Bool)

(declare-fun res!1783540 () Bool)

(assert (=> b!4344547 (=> (not res!1783540) (not e!2703563))))

(declare-fun allKeysSameHashInMap!527 (ListLongMap!1479 Hashable!4815) Bool)

(assert (=> b!4344547 (= res!1783540 (allKeysSameHashInMap!527 lm!1707 hashF!1247))))

(declare-fun b!4344548 () Bool)

(declare-fun res!1783534 () Bool)

(declare-fun e!2703565 () Bool)

(assert (=> b!4344548 (=> (not res!1783534) (not e!2703565))))

(declare-fun contains!10882 (ListLongMap!1479 (_ BitVec 64)) Bool)

(assert (=> b!4344548 (= res!1783534 (contains!10882 lm!1707 hash!377))))

(declare-fun b!4344549 () Bool)

(assert (=> b!4344549 (= e!2703563 e!2703565)))

(declare-fun res!1783537 () Bool)

(assert (=> b!4344549 (=> (not res!1783537) (not e!2703565))))

(declare-fun contains!10883 (ListMap!2073 K!10125) Bool)

(assert (=> b!4344549 (= res!1783537 (contains!10883 lt!1558139 key!3918))))

(assert (=> b!4344549 (= lt!1558139 (extractMap!482 (toList!2830 lm!1707)))))

(declare-fun b!4344550 () Bool)

(declare-fun res!1783541 () Bool)

(assert (=> b!4344550 (=> res!1783541 e!2703562)))

(declare-fun noDuplicateKeys!423 (List!48891) Bool)

(assert (=> b!4344550 (= res!1783541 (not (noDuplicateKeys!423 newBucket!200)))))

(declare-fun b!4344551 () Bool)

(assert (=> b!4344551 (= e!2703565 (not e!2703562))))

(declare-fun res!1783536 () Bool)

(assert (=> b!4344551 (=> res!1783536 e!2703562)))

(assert (=> b!4344551 (= res!1783536 (not (= newBucket!200 lt!1558126)))))

(assert (=> b!4344551 (= lt!1558126 (Cons!48767 lt!1558145 lt!1558137))))

(declare-fun lt!1558130 () List!48891)

(declare-fun removePairForKey!393 (List!48891 K!10125) List!48891)

(assert (=> b!4344551 (= lt!1558137 (removePairForKey!393 lt!1558130 key!3918))))

(assert (=> b!4344551 (= lt!1558145 (tuple2!48063 key!3918 newValue!99))))

(declare-fun lt!1558127 () Unit!70283)

(declare-fun lt!1558144 () tuple2!48064)

(declare-fun forallContained!1661 (List!48892 Int tuple2!48064) Unit!70283)

(assert (=> b!4344551 (= lt!1558127 (forallContained!1661 (toList!2830 lm!1707) lambda!137771 lt!1558144))))

(declare-fun contains!10884 (List!48892 tuple2!48064) Bool)

(assert (=> b!4344551 (contains!10884 (toList!2830 lm!1707) lt!1558144)))

(assert (=> b!4344551 (= lt!1558144 (tuple2!48065 hash!377 lt!1558130))))

(declare-fun lt!1558128 () Unit!70283)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!270 (List!48892 (_ BitVec 64) List!48891) Unit!70283)

(assert (=> b!4344551 (= lt!1558128 (lemmaGetValueByKeyImpliesContainsTuple!270 (toList!2830 lm!1707) hash!377 lt!1558130))))

(declare-fun apply!11275 (ListLongMap!1479 (_ BitVec 64)) List!48891)

(assert (=> b!4344551 (= lt!1558130 (apply!11275 lm!1707 hash!377))))

(declare-fun b!4344552 () Bool)

(declare-fun res!1783532 () Bool)

(assert (=> b!4344552 (=> (not res!1783532) (not e!2703564))))

(assert (=> b!4344552 (= res!1783532 (forall!9011 (toList!2830 lt!1558135) lambda!137771))))

(assert (= (and start!419260 res!1783538) b!4344547))

(assert (= (and b!4344547 res!1783540) b!4344539))

(assert (= (and b!4344539 res!1783542) b!4344543))

(assert (= (and b!4344543 res!1783539) b!4344549))

(assert (= (and b!4344549 res!1783537) b!4344548))

(assert (= (and b!4344548 res!1783534) b!4344551))

(assert (= (and b!4344551 (not res!1783536)) b!4344550))

(assert (= (and b!4344550 (not res!1783541)) b!4344541))

(assert (= (and b!4344541 res!1783533) b!4344552))

(assert (= (and b!4344552 res!1783532) b!4344544))

(assert (= (and b!4344541 (not res!1783543)) b!4344546))

(assert (= (and b!4344546 res!1783535) b!4344540))

(assert (= (and start!419260 ((_ is Cons!48767) newBucket!200)) b!4344542))

(assert (= start!419260 b!4344545))

(declare-fun m!4950747 () Bool)

(assert (=> b!4344549 m!4950747))

(declare-fun m!4950749 () Bool)

(assert (=> b!4344549 m!4950749))

(declare-fun m!4950751 () Bool)

(assert (=> b!4344552 m!4950751))

(declare-fun m!4950753 () Bool)

(assert (=> b!4344547 m!4950753))

(declare-fun m!4950755 () Bool)

(assert (=> b!4344539 m!4950755))

(declare-fun m!4950757 () Bool)

(assert (=> start!419260 m!4950757))

(declare-fun m!4950759 () Bool)

(assert (=> start!419260 m!4950759))

(declare-fun m!4950761 () Bool)

(assert (=> b!4344540 m!4950761))

(declare-fun m!4950763 () Bool)

(assert (=> b!4344551 m!4950763))

(declare-fun m!4950765 () Bool)

(assert (=> b!4344551 m!4950765))

(declare-fun m!4950767 () Bool)

(assert (=> b!4344551 m!4950767))

(declare-fun m!4950769 () Bool)

(assert (=> b!4344551 m!4950769))

(declare-fun m!4950771 () Bool)

(assert (=> b!4344551 m!4950771))

(declare-fun m!4950773 () Bool)

(assert (=> b!4344550 m!4950773))

(declare-fun m!4950775 () Bool)

(assert (=> b!4344543 m!4950775))

(assert (=> b!4344541 m!4950751))

(declare-fun m!4950777 () Bool)

(assert (=> b!4344541 m!4950777))

(declare-fun m!4950779 () Bool)

(assert (=> b!4344541 m!4950779))

(assert (=> b!4344541 m!4950757))

(declare-fun m!4950781 () Bool)

(assert (=> b!4344546 m!4950781))

(declare-fun m!4950783 () Bool)

(assert (=> b!4344546 m!4950783))

(declare-fun m!4950785 () Bool)

(assert (=> b!4344546 m!4950785))

(declare-fun m!4950787 () Bool)

(assert (=> b!4344546 m!4950787))

(assert (=> b!4344546 m!4950785))

(declare-fun m!4950789 () Bool)

(assert (=> b!4344546 m!4950789))

(declare-fun m!4950791 () Bool)

(assert (=> b!4344546 m!4950791))

(declare-fun m!4950793 () Bool)

(assert (=> b!4344546 m!4950793))

(declare-fun m!4950795 () Bool)

(assert (=> b!4344546 m!4950795))

(declare-fun m!4950797 () Bool)

(assert (=> b!4344546 m!4950797))

(declare-fun m!4950799 () Bool)

(assert (=> b!4344546 m!4950799))

(declare-fun m!4950801 () Bool)

(assert (=> b!4344546 m!4950801))

(declare-fun m!4950803 () Bool)

(assert (=> b!4344546 m!4950803))

(declare-fun m!4950805 () Bool)

(assert (=> b!4344546 m!4950805))

(declare-fun m!4950807 () Bool)

(assert (=> b!4344546 m!4950807))

(assert (=> b!4344546 m!4950805))

(declare-fun m!4950809 () Bool)

(assert (=> b!4344546 m!4950809))

(declare-fun m!4950811 () Bool)

(assert (=> b!4344546 m!4950811))

(declare-fun m!4950813 () Bool)

(assert (=> b!4344548 m!4950813))

(check-sat (not b!4344545) (not b!4344540) (not b!4344542) (not b!4344539) (not start!419260) tp_is_empty!24931 (not b!4344548) (not b!4344551) (not b!4344541) (not b!4344550) tp_is_empty!24929 (not b!4344549) (not b!4344546) (not b!4344547) (not b!4344543) (not b!4344552))
(check-sat)
