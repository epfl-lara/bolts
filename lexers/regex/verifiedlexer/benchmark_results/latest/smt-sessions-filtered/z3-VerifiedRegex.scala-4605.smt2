; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242034 () Bool)

(assert start!242034)

(declare-fun b!2480108 () Bool)

(declare-fun b_free!72177 () Bool)

(declare-fun b_next!72881 () Bool)

(assert (=> b!2480108 (= b_free!72177 (not b_next!72881))))

(declare-fun tp!793724 () Bool)

(declare-fun b_and!188423 () Bool)

(assert (=> b!2480108 (= tp!793724 b_and!188423)))

(declare-fun b!2480115 () Bool)

(declare-fun b_free!72179 () Bool)

(declare-fun b_next!72883 () Bool)

(assert (=> b!2480115 (= b_free!72179 (not b_next!72883))))

(declare-fun tp!793726 () Bool)

(declare-fun b_and!188425 () Bool)

(assert (=> b!2480115 (= tp!793726 b_and!188425)))

(declare-fun b!2480099 () Bool)

(declare-fun e!1574062 () Bool)

(declare-fun e!1574054 () Bool)

(assert (=> b!2480099 (= e!1574062 e!1574054)))

(declare-fun res!1049822 () Bool)

(assert (=> b!2480099 (=> res!1049822 e!1574054)))

(declare-datatypes ((V!5612 0))(
  ( (V!5613 (val!8803 Int)) )
))
(declare-datatypes ((K!5410 0))(
  ( (K!5411 (val!8804 Int)) )
))
(declare-datatypes ((tuple2!28646 0))(
  ( (tuple2!28647 (_1!16864 K!5410) (_2!16864 V!5612)) )
))
(declare-datatypes ((List!29147 0))(
  ( (Nil!29047) (Cons!29047 (h!34453 tuple2!28646) (t!210804 List!29147)) )
))
(declare-datatypes ((tuple2!28648 0))(
  ( (tuple2!28649 (_1!16865 (_ BitVec 64)) (_2!16865 List!29147)) )
))
(declare-datatypes ((List!29148 0))(
  ( (Nil!29048) (Cons!29048 (h!34454 tuple2!28648) (t!210805 List!29148)) )
))
(declare-datatypes ((ListLongMap!477 0))(
  ( (ListLongMap!478 (toList!1532 List!29148)) )
))
(declare-fun lt!887146 () ListLongMap!477)

(declare-fun lambda!93808 () Int)

(declare-fun forall!5956 (List!29148 Int) Bool)

(assert (=> b!2480099 (= res!1049822 (not (forall!5956 (toList!1532 lt!887146) lambda!93808)))))

(declare-fun e!1574058 () Bool)

(assert (=> b!2480099 e!1574058))

(declare-fun res!1049825 () Bool)

(assert (=> b!2480099 (=> (not res!1049825) (not e!1574058))))

(declare-fun lt!887139 () ListLongMap!477)

(assert (=> b!2480099 (= res!1049825 (forall!5956 (toList!1532 lt!887139) lambda!93808))))

(declare-datatypes ((Unit!42499 0))(
  ( (Unit!42500) )
))
(declare-datatypes ((Hashable!3240 0))(
  ( (HashableExt!3239 (__x!18896 Int)) )
))
(declare-datatypes ((array!11777 0))(
  ( (array!11778 (arr!5250 (Array (_ BitVec 32) List!29147)) (size!22669 (_ BitVec 32))) )
))
(declare-datatypes ((array!11779 0))(
  ( (array!11780 (arr!5251 (Array (_ BitVec 32) (_ BitVec 64))) (size!22670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6660 0))(
  ( (LongMapFixedSize!6661 (defaultEntry!3704 Int) (mask!8484 (_ BitVec 32)) (extraKeys!3578 (_ BitVec 32)) (zeroValue!3588 List!29147) (minValue!3588 List!29147) (_size!6707 (_ BitVec 32)) (_keys!3627 array!11779) (_values!3610 array!11777) (_vacant!3391 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13137 0))(
  ( (Cell!13138 (v!31372 LongMapFixedSize!6660)) )
))
(declare-datatypes ((MutLongMap!3330 0))(
  ( (LongMap!3330 (underlying!6867 Cell!13137)) (MutLongMapExt!3329 (__x!18897 Int)) )
))
(declare-datatypes ((Cell!13139 0))(
  ( (Cell!13140 (v!31373 MutLongMap!3330)) )
))
(declare-datatypes ((MutableMap!3240 0))(
  ( (MutableMapExt!3239 (__x!18898 Int)) (HashMap!3240 (underlying!6868 Cell!13139) (hashF!5198 Hashable!3240) (_size!6708 (_ BitVec 32)) (defaultValue!3402 Int)) )
))
(declare-datatypes ((tuple2!28650 0))(
  ( (tuple2!28651 (_1!16866 Unit!42499) (_2!16866 MutableMap!3240)) )
))
(declare-fun lt!887143 () tuple2!28650)

(declare-fun map!6136 (MutLongMap!3330) ListLongMap!477)

(assert (=> b!2480099 (= lt!887139 (map!6136 (v!31373 (underlying!6868 (_2!16866 lt!887143)))))))

(declare-fun e!1574060 () Bool)

(assert (=> b!2480099 e!1574060))

(declare-fun res!1049834 () Bool)

(assert (=> b!2480099 (=> (not res!1049834) (not e!1574060))))

(declare-fun lt!887141 () ListLongMap!477)

(assert (=> b!2480099 (= res!1049834 (forall!5956 (toList!1532 lt!887141) lambda!93808))))

(declare-fun lt!887150 () (_ BitVec 64))

(declare-fun lt!887134 () List!29147)

(declare-fun +!73 (ListLongMap!477 tuple2!28648) ListLongMap!477)

(assert (=> b!2480099 (= lt!887141 (+!73 lt!887146 (tuple2!28649 lt!887150 lt!887134)))))

(declare-fun lt!887142 () Unit!42499)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!44 (ListLongMap!477 (_ BitVec 64) List!29147 Hashable!3240) Unit!42499)

(assert (=> b!2480099 (= lt!887142 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!44 lt!887146 lt!887150 lt!887134 (hashF!5198 (_2!16866 lt!887143))))))

(declare-fun allKeysSameHash!54 (List!29147 (_ BitVec 64) Hashable!3240) Bool)

(assert (=> b!2480099 (allKeysSameHash!54 lt!887134 lt!887150 (hashF!5198 (_2!16866 lt!887143)))))

(declare-fun key!2246 () K!5410)

(declare-fun lt!887153 () List!29147)

(declare-fun lt!887140 () Unit!42499)

(declare-fun lemmaRemovePairForKeyPreservesHash!48 (List!29147 K!5410 (_ BitVec 64) Hashable!3240) Unit!42499)

(assert (=> b!2480099 (= lt!887140 (lemmaRemovePairForKeyPreservesHash!48 lt!887153 key!2246 lt!887150 (hashF!5198 (_2!16866 lt!887143))))))

(assert (=> b!2480099 (allKeysSameHash!54 lt!887153 lt!887150 (hashF!5198 (_2!16866 lt!887143)))))

(declare-fun lt!887135 () Unit!42499)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!50 (List!29148 (_ BitVec 64) List!29147 Hashable!3240) Unit!42499)

(assert (=> b!2480099 (= lt!887135 (lemmaInLongMapAllKeySameHashThenForTuple!50 (toList!1532 lt!887146) lt!887150 lt!887153 (hashF!5198 (_2!16866 lt!887143))))))

(declare-fun b!2480100 () Bool)

(declare-fun e!1574064 () Bool)

(declare-fun e!1574063 () Bool)

(assert (=> b!2480100 (= e!1574064 e!1574063)))

(declare-fun b!2480101 () Bool)

(declare-fun e!1574059 () Bool)

(declare-fun tp!793725 () Bool)

(declare-fun mapRes!15448 () Bool)

(assert (=> b!2480101 (= e!1574059 (and tp!793725 mapRes!15448))))

(declare-fun condMapEmpty!15448 () Bool)

(declare-fun thiss!42540 () MutableMap!3240)

(declare-fun mapDefault!15448 () List!29147)

(assert (=> b!2480101 (= condMapEmpty!15448 (= (arr!5250 (_values!3610 (v!31372 (underlying!6867 (v!31373 (underlying!6868 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29147)) mapDefault!15448)))))

(declare-fun mapIsEmpty!15448 () Bool)

(assert (=> mapIsEmpty!15448 mapRes!15448))

(declare-fun b!2480102 () Bool)

(declare-fun res!1049827 () Bool)

(assert (=> b!2480102 (=> res!1049827 e!1574054)))

(declare-datatypes ((ListMap!1017 0))(
  ( (ListMap!1018 (toList!1533 List!29147)) )
))
(declare-fun contains!5052 (ListMap!1017 K!5410) Bool)

(declare-fun extractMap!158 (List!29148) ListMap!1017)

(assert (=> b!2480102 (= res!1049827 (not (contains!5052 (extractMap!158 (toList!1532 lt!887146)) key!2246)))))

(declare-fun b!2480103 () Bool)

(declare-fun e!1574061 () Bool)

(assert (=> b!2480103 (= e!1574061 (not e!1574062))))

(declare-fun res!1049826 () Bool)

(assert (=> b!2480103 (=> res!1049826 e!1574062)))

(declare-datatypes ((tuple2!28652 0))(
  ( (tuple2!28653 (_1!16867 Bool) (_2!16867 MutLongMap!3330)) )
))
(declare-fun lt!887144 () tuple2!28652)

(assert (=> b!2480103 (= res!1049826 (not (_1!16867 lt!887144)))))

(declare-fun noDuplicateKeys!67 (List!29147) Bool)

(assert (=> b!2480103 (noDuplicateKeys!67 lt!887134)))

(declare-fun lt!887136 () Unit!42499)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!53 (List!29147 K!5410) Unit!42499)

(assert (=> b!2480103 (= lt!887136 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!53 lt!887153 key!2246))))

(declare-fun lt!887149 () Cell!13139)

(declare-fun Unit!42501 () Unit!42499)

(declare-fun Unit!42502 () Unit!42499)

(assert (=> b!2480103 (= lt!887143 (ite (_1!16867 lt!887144) (tuple2!28651 Unit!42501 (HashMap!3240 lt!887149 (hashF!5198 thiss!42540) (bvsub (_size!6708 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3402 thiss!42540))) (tuple2!28651 Unit!42502 (HashMap!3240 lt!887149 (hashF!5198 thiss!42540) (_size!6708 thiss!42540) (defaultValue!3402 thiss!42540)))))))

(assert (=> b!2480103 (= lt!887149 (Cell!13140 (_2!16867 lt!887144)))))

(declare-fun update!174 (MutLongMap!3330 (_ BitVec 64) List!29147) tuple2!28652)

(assert (=> b!2480103 (= lt!887144 (update!174 (v!31373 (underlying!6868 thiss!42540)) lt!887150 lt!887134))))

(declare-fun removePairForKey!57 (List!29147 K!5410) List!29147)

(assert (=> b!2480103 (= lt!887134 (removePairForKey!57 lt!887153 key!2246))))

(declare-fun lt!887145 () ListMap!1017)

(declare-fun map!6137 (MutableMap!3240) ListMap!1017)

(assert (=> b!2480103 (= lt!887145 (map!6137 thiss!42540))))

(declare-fun lt!887154 () Unit!42499)

(declare-fun forallContained!838 (List!29148 Int tuple2!28648) Unit!42499)

(assert (=> b!2480103 (= lt!887154 (forallContained!838 (toList!1532 lt!887146) lambda!93808 (tuple2!28649 lt!887150 lt!887153)))))

(assert (=> b!2480103 (= lt!887146 (map!6136 (v!31373 (underlying!6868 thiss!42540))))))

(declare-fun apply!6893 (MutLongMap!3330 (_ BitVec 64)) List!29147)

(assert (=> b!2480103 (= lt!887153 (apply!6893 (v!31373 (underlying!6868 thiss!42540)) lt!887150))))

(declare-fun hash!670 (Hashable!3240 K!5410) (_ BitVec 64))

(assert (=> b!2480103 (= lt!887150 (hash!670 (hashF!5198 thiss!42540) key!2246))))

(declare-fun b!2480104 () Bool)

(declare-fun e!1574066 () Bool)

(assert (=> b!2480104 (= e!1574054 e!1574066)))

(declare-fun res!1049830 () Bool)

(assert (=> b!2480104 (=> res!1049830 e!1574066)))

(declare-fun lt!887147 () (_ BitVec 64))

(assert (=> b!2480104 (= res!1049830 (not (= lt!887147 lt!887150)))))

(assert (=> b!2480104 (= lt!887147 (hash!670 (hashF!5198 (_2!16866 lt!887143)) key!2246))))

(declare-fun res!1049833 () Bool)

(assert (=> start!242034 (=> (not res!1049833) (not e!1574061))))

(get-info :version)

(assert (=> start!242034 (= res!1049833 ((_ is HashMap!3240) thiss!42540))))

(assert (=> start!242034 e!1574061))

(declare-fun e!1574055 () Bool)

(assert (=> start!242034 e!1574055))

(declare-fun tp_is_empty!12183 () Bool)

(assert (=> start!242034 tp_is_empty!12183))

(declare-fun b!2480105 () Bool)

(declare-fun res!1049828 () Bool)

(assert (=> b!2480105 (=> (not res!1049828) (not e!1574061))))

(declare-fun valid!2542 (MutableMap!3240) Bool)

(assert (=> b!2480105 (= res!1049828 (valid!2542 thiss!42540))))

(declare-fun b!2480106 () Bool)

(declare-fun e!1574056 () Bool)

(assert (=> b!2480106 (= e!1574063 e!1574056)))

(declare-fun b!2480107 () Bool)

(declare-fun allKeysSameHashInMap!149 (ListLongMap!477 Hashable!3240) Bool)

(assert (=> b!2480107 (= e!1574060 (allKeysSameHashInMap!149 lt!887141 (hashF!5198 (_2!16866 lt!887143))))))

(declare-fun tp!793729 () Bool)

(declare-fun tp!793727 () Bool)

(declare-fun array_inv!3763 (array!11779) Bool)

(declare-fun array_inv!3764 (array!11777) Bool)

(assert (=> b!2480108 (= e!1574056 (and tp!793724 tp!793729 tp!793727 (array_inv!3763 (_keys!3627 (v!31372 (underlying!6867 (v!31373 (underlying!6868 thiss!42540)))))) (array_inv!3764 (_values!3610 (v!31372 (underlying!6867 (v!31373 (underlying!6868 thiss!42540)))))) e!1574059))))

(declare-fun b!2480109 () Bool)

(declare-fun e!1574057 () Bool)

(declare-fun lt!887133 () MutLongMap!3330)

(assert (=> b!2480109 (= e!1574057 (and e!1574064 ((_ is LongMap!3330) lt!887133)))))

(assert (=> b!2480109 (= lt!887133 (v!31373 (underlying!6868 thiss!42540)))))

(declare-fun b!2480110 () Bool)

(declare-fun res!1049832 () Bool)

(assert (=> b!2480110 (=> res!1049832 e!1574054)))

(assert (=> b!2480110 (= res!1049832 (not (allKeysSameHashInMap!149 lt!887146 (hashF!5198 (_2!16866 lt!887143)))))))

(declare-fun mapNonEmpty!15448 () Bool)

(declare-fun tp!793730 () Bool)

(declare-fun tp!793728 () Bool)

(assert (=> mapNonEmpty!15448 (= mapRes!15448 (and tp!793730 tp!793728))))

(declare-fun mapValue!15448 () List!29147)

(declare-fun mapRest!15448 () (Array (_ BitVec 32) List!29147))

(declare-fun mapKey!15448 () (_ BitVec 32))

(assert (=> mapNonEmpty!15448 (= (arr!5250 (_values!3610 (v!31372 (underlying!6867 (v!31373 (underlying!6868 thiss!42540)))))) (store mapRest!15448 mapKey!15448 mapValue!15448))))

(declare-fun b!2480111 () Bool)

(declare-fun res!1049831 () Bool)

(assert (=> b!2480111 (=> (not res!1049831) (not e!1574058))))

(assert (=> b!2480111 (= res!1049831 (valid!2542 (_2!16866 lt!887143)))))

(declare-fun b!2480112 () Bool)

(declare-fun e!1574067 () Bool)

(assert (=> b!2480112 (= e!1574066 e!1574067)))

(declare-fun res!1049823 () Bool)

(assert (=> b!2480112 (=> res!1049823 e!1574067)))

(declare-fun lt!887137 () List!29147)

(assert (=> b!2480112 (= res!1049823 (not (= lt!887134 (removePairForKey!57 lt!887137 key!2246))))))

(declare-fun lt!887138 () Unit!42499)

(declare-fun lt!887151 () tuple2!28648)

(assert (=> b!2480112 (= lt!887138 (forallContained!838 (toList!1532 lt!887146) lambda!93808 lt!887151))))

(declare-fun contains!5053 (List!29148 tuple2!28648) Bool)

(assert (=> b!2480112 (contains!5053 (toList!1532 lt!887146) lt!887151)))

(assert (=> b!2480112 (= lt!887151 (tuple2!28649 lt!887150 lt!887137))))

(declare-fun lt!887148 () Unit!42499)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!70 (List!29148 (_ BitVec 64) List!29147) Unit!42499)

(assert (=> b!2480112 (= lt!887148 (lemmaGetValueByKeyImpliesContainsTuple!70 (toList!1532 lt!887146) lt!887150 lt!887137))))

(declare-fun apply!6894 (ListLongMap!477 (_ BitVec 64)) List!29147)

(assert (=> b!2480112 (= lt!887137 (apply!6894 lt!887146 lt!887150))))

(declare-fun contains!5054 (ListLongMap!477 (_ BitVec 64)) Bool)

(assert (=> b!2480112 (contains!5054 lt!887146 lt!887147)))

(declare-fun lt!887152 () Unit!42499)

(declare-fun lemmaInGenMapThenLongMapContainsHash!30 (ListLongMap!477 K!5410 Hashable!3240) Unit!42499)

(assert (=> b!2480112 (= lt!887152 (lemmaInGenMapThenLongMapContainsHash!30 lt!887146 key!2246 (hashF!5198 (_2!16866 lt!887143))))))

(declare-fun b!2480113 () Bool)

(assert (=> b!2480113 (= e!1574067 true)))

(declare-fun b!2480114 () Bool)

(assert (=> b!2480114 (= e!1574058 (contains!5052 lt!887145 key!2246))))

(assert (=> b!2480115 (= e!1574055 (and e!1574057 tp!793726))))

(declare-fun b!2480116 () Bool)

(declare-fun res!1049824 () Bool)

(assert (=> b!2480116 (=> (not res!1049824) (not e!1574058))))

(assert (=> b!2480116 (= res!1049824 (allKeysSameHashInMap!149 lt!887139 (hashF!5198 (_2!16866 lt!887143))))))

(declare-fun b!2480117 () Bool)

(declare-fun res!1049829 () Bool)

(assert (=> b!2480117 (=> (not res!1049829) (not e!1574061))))

(declare-fun contains!5055 (MutableMap!3240 K!5410) Bool)

(assert (=> b!2480117 (= res!1049829 (contains!5055 thiss!42540 key!2246))))

(assert (= (and start!242034 res!1049833) b!2480105))

(assert (= (and b!2480105 res!1049828) b!2480117))

(assert (= (and b!2480117 res!1049829) b!2480103))

(assert (= (and b!2480103 (not res!1049826)) b!2480099))

(assert (= (and b!2480099 res!1049834) b!2480107))

(assert (= (and b!2480099 res!1049825) b!2480116))

(assert (= (and b!2480116 res!1049824) b!2480111))

(assert (= (and b!2480111 res!1049831) b!2480114))

(assert (= (and b!2480099 (not res!1049822)) b!2480110))

(assert (= (and b!2480110 (not res!1049832)) b!2480102))

(assert (= (and b!2480102 (not res!1049827)) b!2480104))

(assert (= (and b!2480104 (not res!1049830)) b!2480112))

(assert (= (and b!2480112 (not res!1049823)) b!2480113))

(assert (= (and b!2480101 condMapEmpty!15448) mapIsEmpty!15448))

(assert (= (and b!2480101 (not condMapEmpty!15448)) mapNonEmpty!15448))

(assert (= b!2480108 b!2480101))

(assert (= b!2480106 b!2480108))

(assert (= b!2480100 b!2480106))

(assert (= (and b!2480109 ((_ is LongMap!3330) (v!31373 (underlying!6868 thiss!42540)))) b!2480100))

(assert (= b!2480115 b!2480109))

(assert (= (and start!242034 ((_ is HashMap!3240) thiss!42540)) b!2480115))

(declare-fun m!2847987 () Bool)

(assert (=> b!2480114 m!2847987))

(declare-fun m!2847989 () Bool)

(assert (=> mapNonEmpty!15448 m!2847989))

(declare-fun m!2847991 () Bool)

(assert (=> b!2480105 m!2847991))

(declare-fun m!2847993 () Bool)

(assert (=> b!2480111 m!2847993))

(declare-fun m!2847995 () Bool)

(assert (=> b!2480107 m!2847995))

(declare-fun m!2847997 () Bool)

(assert (=> b!2480110 m!2847997))

(declare-fun m!2847999 () Bool)

(assert (=> b!2480099 m!2847999))

(declare-fun m!2848001 () Bool)

(assert (=> b!2480099 m!2848001))

(declare-fun m!2848003 () Bool)

(assert (=> b!2480099 m!2848003))

(declare-fun m!2848005 () Bool)

(assert (=> b!2480099 m!2848005))

(declare-fun m!2848007 () Bool)

(assert (=> b!2480099 m!2848007))

(declare-fun m!2848009 () Bool)

(assert (=> b!2480099 m!2848009))

(declare-fun m!2848011 () Bool)

(assert (=> b!2480099 m!2848011))

(declare-fun m!2848013 () Bool)

(assert (=> b!2480099 m!2848013))

(declare-fun m!2848015 () Bool)

(assert (=> b!2480099 m!2848015))

(declare-fun m!2848017 () Bool)

(assert (=> b!2480099 m!2848017))

(declare-fun m!2848019 () Bool)

(assert (=> b!2480108 m!2848019))

(declare-fun m!2848021 () Bool)

(assert (=> b!2480108 m!2848021))

(declare-fun m!2848023 () Bool)

(assert (=> b!2480103 m!2848023))

(declare-fun m!2848025 () Bool)

(assert (=> b!2480103 m!2848025))

(declare-fun m!2848027 () Bool)

(assert (=> b!2480103 m!2848027))

(declare-fun m!2848029 () Bool)

(assert (=> b!2480103 m!2848029))

(declare-fun m!2848031 () Bool)

(assert (=> b!2480103 m!2848031))

(declare-fun m!2848033 () Bool)

(assert (=> b!2480103 m!2848033))

(declare-fun m!2848035 () Bool)

(assert (=> b!2480103 m!2848035))

(declare-fun m!2848037 () Bool)

(assert (=> b!2480103 m!2848037))

(declare-fun m!2848039 () Bool)

(assert (=> b!2480103 m!2848039))

(declare-fun m!2848041 () Bool)

(assert (=> b!2480117 m!2848041))

(declare-fun m!2848043 () Bool)

(assert (=> b!2480116 m!2848043))

(declare-fun m!2848045 () Bool)

(assert (=> b!2480112 m!2848045))

(declare-fun m!2848047 () Bool)

(assert (=> b!2480112 m!2848047))

(declare-fun m!2848049 () Bool)

(assert (=> b!2480112 m!2848049))

(declare-fun m!2848051 () Bool)

(assert (=> b!2480112 m!2848051))

(declare-fun m!2848053 () Bool)

(assert (=> b!2480112 m!2848053))

(declare-fun m!2848055 () Bool)

(assert (=> b!2480112 m!2848055))

(declare-fun m!2848057 () Bool)

(assert (=> b!2480112 m!2848057))

(declare-fun m!2848059 () Bool)

(assert (=> b!2480104 m!2848059))

(declare-fun m!2848061 () Bool)

(assert (=> b!2480102 m!2848061))

(assert (=> b!2480102 m!2848061))

(declare-fun m!2848063 () Bool)

(assert (=> b!2480102 m!2848063))

(check-sat (not b!2480111) b_and!188425 (not b!2480107) (not b_next!72883) (not b!2480099) (not b!2480117) b_and!188423 (not b!2480103) (not b!2480104) (not b!2480110) (not b!2480102) tp_is_empty!12183 (not mapNonEmpty!15448) (not b_next!72881) (not b!2480112) (not b!2480108) (not b!2480101) (not b!2480105) (not b!2480114) (not b!2480116))
(check-sat b_and!188425 b_and!188423 (not b_next!72881) (not b_next!72883))
