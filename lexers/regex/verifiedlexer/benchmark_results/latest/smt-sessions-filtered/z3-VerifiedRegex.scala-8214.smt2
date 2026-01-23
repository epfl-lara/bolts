; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424384 () Bool)

(assert start!424384)

(declare-fun b!4370436 () Bool)

(declare-fun res!1798547 () Bool)

(declare-fun e!2720070 () Bool)

(assert (=> b!4370436 (=> res!1798547 e!2720070)))

(declare-datatypes ((K!10475 0))(
  ( (K!10476 (val!16651 Int)) )
))
(declare-datatypes ((V!10721 0))(
  ( (V!10722 (val!16652 Int)) )
))
(declare-datatypes ((tuple2!48622 0))(
  ( (tuple2!48623 (_1!27605 K!10475) (_2!27605 V!10721)) )
))
(declare-datatypes ((List!49240 0))(
  ( (Nil!49116) (Cons!49116 (h!54705 tuple2!48622) (t!356162 List!49240)) )
))
(declare-fun newBucket!200 () List!49240)

(declare-fun noDuplicateKeys!563 (List!49240) Bool)

(assert (=> b!4370436 (= res!1798547 (not (noDuplicateKeys!563 newBucket!200)))))

(declare-fun b!4370437 () Bool)

(declare-fun res!1798544 () Bool)

(declare-fun e!2720073 () Bool)

(assert (=> b!4370437 (=> (not res!1798544) (not e!2720073))))

(declare-datatypes ((tuple2!48624 0))(
  ( (tuple2!48625 (_1!27606 (_ BitVec 64)) (_2!27606 List!49240)) )
))
(declare-datatypes ((List!49241 0))(
  ( (Nil!49117) (Cons!49117 (h!54706 tuple2!48624) (t!356163 List!49241)) )
))
(declare-datatypes ((ListLongMap!1759 0))(
  ( (ListLongMap!1760 (toList!3109 List!49241)) )
))
(declare-fun lm!1707 () ListLongMap!1759)

(declare-fun key!3918 () K!10475)

(declare-datatypes ((ListMap!2353 0))(
  ( (ListMap!2354 (toList!3110 List!49240)) )
))
(declare-fun contains!11423 (ListMap!2353 K!10475) Bool)

(declare-fun extractMap!622 (List!49241) ListMap!2353)

(assert (=> b!4370437 (= res!1798544 (contains!11423 (extractMap!622 (toList!3109 lm!1707)) key!3918))))

(declare-fun b!4370438 () Bool)

(declare-fun lt!1582120 () tuple2!48624)

(declare-fun lt!1582125 () ListLongMap!1759)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun e!2720071 () Bool)

(get-info :version)

(assert (=> b!4370438 (= e!2720071 (or (not ((_ is Cons!49117) (toList!3109 lm!1707))) (not (= (_1!27606 (h!54706 (toList!3109 lm!1707))) hash!377)) (= lt!1582125 (ListLongMap!1760 (Cons!49117 lt!1582120 (t!356163 (toList!3109 lm!1707)))))))))

(declare-fun b!4370439 () Bool)

(declare-fun e!2720069 () Bool)

(declare-fun lt!1582117 () ListMap!2353)

(declare-fun lt!1582126 () ListMap!2353)

(declare-fun eq!301 (ListMap!2353 ListMap!2353) Bool)

(assert (=> b!4370439 (= e!2720069 (eq!301 lt!1582117 lt!1582126))))

(declare-fun lt!1582121 () ListMap!2353)

(assert (=> b!4370439 (eq!301 lt!1582121 lt!1582126)))

(declare-fun lt!1582128 () List!49240)

(declare-fun lt!1582124 () ListMap!2353)

(declare-fun lt!1582132 () tuple2!48622)

(declare-fun +!757 (ListMap!2353 tuple2!48622) ListMap!2353)

(declare-fun addToMapMapFromBucket!244 (List!49240 ListMap!2353) ListMap!2353)

(assert (=> b!4370439 (= lt!1582126 (+!757 (addToMapMapFromBucket!244 lt!1582128 lt!1582124) lt!1582132))))

(declare-datatypes ((Unit!73580 0))(
  ( (Unit!73581) )
))
(declare-fun lt!1582122 () Unit!73580)

(declare-fun newValue!99 () V!10721)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!110 (ListMap!2353 K!10475 V!10721 List!49240) Unit!73580)

(assert (=> b!4370439 (= lt!1582122 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!110 lt!1582124 key!3918 newValue!99 lt!1582128))))

(assert (=> b!4370439 (= lt!1582117 lt!1582121)))

(assert (=> b!4370439 (= lt!1582121 (addToMapMapFromBucket!244 lt!1582128 (+!757 lt!1582124 lt!1582132)))))

(declare-fun lt!1582131 () ListMap!2353)

(assert (=> b!4370439 (= lt!1582131 lt!1582117)))

(declare-fun lt!1582127 () List!49240)

(assert (=> b!4370439 (= lt!1582117 (addToMapMapFromBucket!244 lt!1582127 lt!1582124))))

(assert (=> b!4370439 (= lt!1582131 (addToMapMapFromBucket!244 newBucket!200 lt!1582124))))

(assert (=> b!4370439 (= lt!1582131 (extractMap!622 (toList!3109 lt!1582125)))))

(assert (=> b!4370439 (= lt!1582124 (extractMap!622 (t!356163 (toList!3109 lm!1707))))))

(declare-fun b!4370440 () Bool)

(assert (=> b!4370440 (= e!2720073 (not e!2720070))))

(declare-fun res!1798541 () Bool)

(assert (=> b!4370440 (=> res!1798541 e!2720070)))

(assert (=> b!4370440 (= res!1798541 (not (= newBucket!200 lt!1582127)))))

(assert (=> b!4370440 (= lt!1582127 (Cons!49116 lt!1582132 lt!1582128))))

(declare-fun lt!1582118 () List!49240)

(declare-fun removePairForKey!531 (List!49240 K!10475) List!49240)

(assert (=> b!4370440 (= lt!1582128 (removePairForKey!531 lt!1582118 key!3918))))

(assert (=> b!4370440 (= lt!1582132 (tuple2!48623 key!3918 newValue!99))))

(declare-fun lt!1582119 () Unit!73580)

(declare-fun lt!1582130 () tuple2!48624)

(declare-fun lambda!143787 () Int)

(declare-fun forallContained!1881 (List!49241 Int tuple2!48624) Unit!73580)

(assert (=> b!4370440 (= lt!1582119 (forallContained!1881 (toList!3109 lm!1707) lambda!143787 lt!1582130))))

(declare-fun contains!11424 (List!49241 tuple2!48624) Bool)

(assert (=> b!4370440 (contains!11424 (toList!3109 lm!1707) lt!1582130)))

(assert (=> b!4370440 (= lt!1582130 (tuple2!48625 hash!377 lt!1582118))))

(declare-fun lt!1582129 () Unit!73580)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!408 (List!49241 (_ BitVec 64) List!49240) Unit!73580)

(assert (=> b!4370440 (= lt!1582129 (lemmaGetValueByKeyImpliesContainsTuple!408 (toList!3109 lm!1707) hash!377 lt!1582118))))

(declare-fun apply!11415 (ListLongMap!1759 (_ BitVec 64)) List!49240)

(assert (=> b!4370440 (= lt!1582118 (apply!11415 lm!1707 hash!377))))

(declare-fun b!4370441 () Bool)

(assert (=> b!4370441 (= e!2720070 e!2720069)))

(declare-fun res!1798548 () Bool)

(assert (=> b!4370441 (=> res!1798548 e!2720069)))

(assert (=> b!4370441 (= res!1798548 (or (not ((_ is Cons!49117) (toList!3109 lm!1707))) (not (= (_1!27606 (h!54706 (toList!3109 lm!1707))) hash!377))))))

(assert (=> b!4370441 e!2720071))

(declare-fun res!1798545 () Bool)

(assert (=> b!4370441 (=> (not res!1798545) (not e!2720071))))

(declare-fun forall!9243 (List!49241 Int) Bool)

(assert (=> b!4370441 (= res!1798545 (forall!9243 (toList!3109 lt!1582125) lambda!143787))))

(declare-fun +!758 (ListLongMap!1759 tuple2!48624) ListLongMap!1759)

(assert (=> b!4370441 (= lt!1582125 (+!758 lm!1707 lt!1582120))))

(assert (=> b!4370441 (= lt!1582120 (tuple2!48625 hash!377 newBucket!200))))

(declare-fun lt!1582123 () Unit!73580)

(declare-fun addValidProp!209 (ListLongMap!1759 Int (_ BitVec 64) List!49240) Unit!73580)

(assert (=> b!4370441 (= lt!1582123 (addValidProp!209 lm!1707 lambda!143787 hash!377 newBucket!200))))

(assert (=> b!4370441 (forall!9243 (toList!3109 lm!1707) lambda!143787)))

(declare-fun b!4370442 () Bool)

(declare-fun tp_is_empty!25491 () Bool)

(declare-fun tp_is_empty!25489 () Bool)

(declare-fun tp!1330985 () Bool)

(declare-fun e!2720074 () Bool)

(assert (=> b!4370442 (= e!2720074 (and tp_is_empty!25489 tp_is_empty!25491 tp!1330985))))

(declare-fun res!1798550 () Bool)

(assert (=> start!424384 (=> (not res!1798550) (not e!2720073))))

(assert (=> start!424384 (= res!1798550 (forall!9243 (toList!3109 lm!1707) lambda!143787))))

(assert (=> start!424384 e!2720073))

(assert (=> start!424384 e!2720074))

(assert (=> start!424384 true))

(declare-fun e!2720072 () Bool)

(declare-fun inv!64661 (ListLongMap!1759) Bool)

(assert (=> start!424384 (and (inv!64661 lm!1707) e!2720072)))

(assert (=> start!424384 tp_is_empty!25489))

(assert (=> start!424384 tp_is_empty!25491))

(declare-fun b!4370443 () Bool)

(declare-fun res!1798542 () Bool)

(assert (=> b!4370443 (=> (not res!1798542) (not e!2720073))))

(declare-datatypes ((Hashable!4955 0))(
  ( (HashableExt!4954 (__x!30658 Int)) )
))
(declare-fun hashF!1247 () Hashable!4955)

(declare-fun allKeysSameHash!521 (List!49240 (_ BitVec 64) Hashable!4955) Bool)

(assert (=> b!4370443 (= res!1798542 (allKeysSameHash!521 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4370444 () Bool)

(declare-fun res!1798551 () Bool)

(assert (=> b!4370444 (=> (not res!1798551) (not e!2720073))))

(declare-fun allKeysSameHashInMap!667 (ListLongMap!1759 Hashable!4955) Bool)

(assert (=> b!4370444 (= res!1798551 (allKeysSameHashInMap!667 lm!1707 hashF!1247))))

(declare-fun b!4370445 () Bool)

(declare-fun res!1798549 () Bool)

(assert (=> b!4370445 (=> (not res!1798549) (not e!2720073))))

(declare-fun hash!1722 (Hashable!4955 K!10475) (_ BitVec 64))

(assert (=> b!4370445 (= res!1798549 (= (hash!1722 hashF!1247 key!3918) hash!377))))

(declare-fun b!4370446 () Bool)

(declare-fun res!1798543 () Bool)

(assert (=> b!4370446 (=> (not res!1798543) (not e!2720073))))

(declare-fun contains!11425 (ListLongMap!1759 (_ BitVec 64)) Bool)

(assert (=> b!4370446 (= res!1798543 (contains!11425 lm!1707 hash!377))))

(declare-fun b!4370447 () Bool)

(declare-fun res!1798546 () Bool)

(assert (=> b!4370447 (=> (not res!1798546) (not e!2720071))))

(assert (=> b!4370447 (= res!1798546 (forall!9243 (toList!3109 lt!1582125) lambda!143787))))

(declare-fun b!4370448 () Bool)

(declare-fun tp!1330986 () Bool)

(assert (=> b!4370448 (= e!2720072 tp!1330986)))

(assert (= (and start!424384 res!1798550) b!4370444))

(assert (= (and b!4370444 res!1798551) b!4370445))

(assert (= (and b!4370445 res!1798549) b!4370443))

(assert (= (and b!4370443 res!1798542) b!4370437))

(assert (= (and b!4370437 res!1798544) b!4370446))

(assert (= (and b!4370446 res!1798543) b!4370440))

(assert (= (and b!4370440 (not res!1798541)) b!4370436))

(assert (= (and b!4370436 (not res!1798547)) b!4370441))

(assert (= (and b!4370441 res!1798545) b!4370447))

(assert (= (and b!4370447 res!1798546) b!4370438))

(assert (= (and b!4370441 (not res!1798548)) b!4370439))

(assert (= (and start!424384 ((_ is Cons!49116) newBucket!200)) b!4370442))

(assert (= start!424384 b!4370448))

(declare-fun m!4994763 () Bool)

(assert (=> b!4370443 m!4994763))

(declare-fun m!4994765 () Bool)

(assert (=> b!4370447 m!4994765))

(declare-fun m!4994767 () Bool)

(assert (=> b!4370439 m!4994767))

(declare-fun m!4994769 () Bool)

(assert (=> b!4370439 m!4994769))

(declare-fun m!4994771 () Bool)

(assert (=> b!4370439 m!4994771))

(declare-fun m!4994773 () Bool)

(assert (=> b!4370439 m!4994773))

(declare-fun m!4994775 () Bool)

(assert (=> b!4370439 m!4994775))

(declare-fun m!4994777 () Bool)

(assert (=> b!4370439 m!4994777))

(declare-fun m!4994779 () Bool)

(assert (=> b!4370439 m!4994779))

(assert (=> b!4370439 m!4994777))

(declare-fun m!4994781 () Bool)

(assert (=> b!4370439 m!4994781))

(declare-fun m!4994783 () Bool)

(assert (=> b!4370439 m!4994783))

(declare-fun m!4994785 () Bool)

(assert (=> b!4370439 m!4994785))

(assert (=> b!4370439 m!4994773))

(declare-fun m!4994787 () Bool)

(assert (=> b!4370439 m!4994787))

(declare-fun m!4994789 () Bool)

(assert (=> b!4370440 m!4994789))

(declare-fun m!4994791 () Bool)

(assert (=> b!4370440 m!4994791))

(declare-fun m!4994793 () Bool)

(assert (=> b!4370440 m!4994793))

(declare-fun m!4994795 () Bool)

(assert (=> b!4370440 m!4994795))

(declare-fun m!4994797 () Bool)

(assert (=> b!4370440 m!4994797))

(declare-fun m!4994799 () Bool)

(assert (=> b!4370445 m!4994799))

(declare-fun m!4994801 () Bool)

(assert (=> b!4370444 m!4994801))

(assert (=> b!4370441 m!4994765))

(declare-fun m!4994803 () Bool)

(assert (=> b!4370441 m!4994803))

(declare-fun m!4994805 () Bool)

(assert (=> b!4370441 m!4994805))

(declare-fun m!4994807 () Bool)

(assert (=> b!4370441 m!4994807))

(declare-fun m!4994809 () Bool)

(assert (=> b!4370446 m!4994809))

(declare-fun m!4994811 () Bool)

(assert (=> b!4370436 m!4994811))

(assert (=> start!424384 m!4994807))

(declare-fun m!4994813 () Bool)

(assert (=> start!424384 m!4994813))

(declare-fun m!4994815 () Bool)

(assert (=> b!4370437 m!4994815))

(assert (=> b!4370437 m!4994815))

(declare-fun m!4994817 () Bool)

(assert (=> b!4370437 m!4994817))

(check-sat (not b!4370442) (not b!4370444) (not b!4370443) (not b!4370437) (not b!4370447) (not b!4370445) tp_is_empty!25491 (not b!4370440) (not start!424384) tp_is_empty!25489 (not b!4370439) (not b!4370448) (not b!4370436) (not b!4370441) (not b!4370446))
(check-sat)
