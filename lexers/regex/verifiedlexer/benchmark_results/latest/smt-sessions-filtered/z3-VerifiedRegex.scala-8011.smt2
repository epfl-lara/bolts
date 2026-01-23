; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414958 () Bool)

(assert start!414958)

(declare-fun b!4314653 () Bool)

(declare-fun b_free!128771 () Bool)

(declare-fun b_next!129475 () Bool)

(assert (=> b!4314653 (= b_free!128771 (not b_next!129475))))

(declare-fun tp!1325609 () Bool)

(declare-fun b_and!340243 () Bool)

(assert (=> b!4314653 (= tp!1325609 b_and!340243)))

(declare-fun b!4314660 () Bool)

(declare-fun b_free!128773 () Bool)

(declare-fun b_next!129477 () Bool)

(assert (=> b!4314660 (= b_free!128773 (not b_next!129477))))

(declare-fun tp!1325608 () Bool)

(declare-fun b_and!340245 () Bool)

(assert (=> b!4314660 (= tp!1325608 b_and!340245)))

(declare-fun b!4314650 () Bool)

(declare-fun res!1768461 () Bool)

(declare-fun e!2683822 () Bool)

(assert (=> b!4314650 (=> (not res!1768461) (not e!2683822))))

(declare-datatypes ((K!9504 0))(
  ( (K!9505 (val!15861 Int)) )
))
(declare-datatypes ((V!9706 0))(
  ( (V!9707 (val!15862 Int)) )
))
(declare-datatypes ((tuple2!46884 0))(
  ( (tuple2!46885 (_1!26724 K!9504) (_2!26724 V!9706)) )
))
(declare-datatypes ((List!48402 0))(
  ( (Nil!48278) (Cons!48278 (h!53727 tuple2!46884) (t!355241 List!48402)) )
))
(declare-fun lt!1534213 () List!48402)

(declare-fun key!2048 () K!9504)

(declare-fun containsKey!358 (List!48402 K!9504) Bool)

(assert (=> b!4314650 (= res!1768461 (not (containsKey!358 lt!1534213 key!2048)))))

(declare-fun b!4314651 () Bool)

(declare-fun e!2683828 () Bool)

(declare-fun e!2683818 () Bool)

(assert (=> b!4314651 (= e!2683828 e!2683818)))

(declare-fun res!1768465 () Bool)

(assert (=> b!4314651 (=> (not res!1768465) (not e!2683818))))

(declare-datatypes ((array!17002 0))(
  ( (array!17003 (arr!7591 (Array (_ BitVec 32) (_ BitVec 64))) (size!35630 (_ BitVec 32))) )
))
(declare-datatypes ((array!17004 0))(
  ( (array!17005 (arr!7592 (Array (_ BitVec 32) List!48402)) (size!35631 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9406 0))(
  ( (LongMapFixedSize!9407 (defaultEntry!5088 Int) (mask!13283 (_ BitVec 32)) (extraKeys!4952 (_ BitVec 32)) (zeroValue!4962 List!48402) (minValue!4962 List!48402) (_size!9449 (_ BitVec 32)) (_keys!5003 array!17002) (_values!4984 array!17004) (_vacant!4764 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18621 0))(
  ( (Cell!18622 (v!42525 LongMapFixedSize!9406)) )
))
(declare-datatypes ((MutLongMap!4703 0))(
  ( (LongMap!4703 (underlying!9635 Cell!18621)) (MutLongMapExt!4702 (__x!30134 Int)) )
))
(declare-datatypes ((tuple2!46886 0))(
  ( (tuple2!46887 (_1!26725 Bool) (_2!26725 MutLongMap!4703)) )
))
(declare-fun lt!1534203 () tuple2!46886)

(assert (=> b!4314651 (= res!1768465 (_1!26725 lt!1534203))))

(declare-fun lt!1534215 () (_ BitVec 64))

(declare-fun lt!1534219 () List!48402)

(declare-datatypes ((Hashable!4619 0))(
  ( (HashableExt!4618 (__x!30135 Int)) )
))
(declare-datatypes ((Cell!18623 0))(
  ( (Cell!18624 (v!42526 MutLongMap!4703)) )
))
(declare-datatypes ((MutableMap!4609 0))(
  ( (MutableMapExt!4608 (__x!30136 Int)) (HashMap!4609 (underlying!9636 Cell!18623) (hashF!6806 Hashable!4619) (_size!9450 (_ BitVec 32)) (defaultValue!4780 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4609)

(declare-fun update!478 (MutLongMap!4703 (_ BitVec 64) List!48402) tuple2!46886)

(assert (=> b!4314651 (= lt!1534203 (update!478 (v!42526 (underlying!9636 thiss!42308)) lt!1534215 lt!1534219))))

(declare-fun lt!1534205 () tuple2!46884)

(assert (=> b!4314651 (= lt!1534219 (Cons!48278 lt!1534205 lt!1534213))))

(declare-fun lt!1534206 () List!48402)

(declare-fun removePairForKey!240 (List!48402 K!9504) List!48402)

(assert (=> b!4314651 (= lt!1534213 (removePairForKey!240 lt!1534206 key!2048))))

(declare-fun v!9179 () V!9706)

(assert (=> b!4314651 (= lt!1534205 (tuple2!46885 key!2048 v!9179))))

(declare-fun apply!11072 (MutLongMap!4703 (_ BitVec 64)) List!48402)

(assert (=> b!4314651 (= lt!1534206 (apply!11072 (v!42526 (underlying!9636 thiss!42308)) lt!1534215))))

(declare-fun hash!1088 (Hashable!4619 K!9504) (_ BitVec 64))

(assert (=> b!4314651 (= lt!1534215 (hash!1088 (hashF!6806 thiss!42308) key!2048))))

(declare-fun b!4314652 () Bool)

(declare-fun e!2683829 () Bool)

(declare-fun e!2683826 () Bool)

(assert (=> b!4314652 (= e!2683829 e!2683826)))

(declare-fun tp!1325606 () Bool)

(declare-fun e!2683825 () Bool)

(declare-fun e!2683827 () Bool)

(declare-fun tp!1325607 () Bool)

(declare-fun array_inv!5455 (array!17002) Bool)

(declare-fun array_inv!5456 (array!17004) Bool)

(assert (=> b!4314653 (= e!2683827 (and tp!1325609 tp!1325606 tp!1325607 (array_inv!5455 (_keys!5003 (v!42525 (underlying!9635 (v!42526 (underlying!9636 thiss!42308)))))) (array_inv!5456 (_values!4984 (v!42525 (underlying!9635 (v!42526 (underlying!9636 thiss!42308)))))) e!2683825))))

(declare-fun b!4314654 () Bool)

(declare-fun res!1768462 () Bool)

(declare-fun e!2683823 () Bool)

(assert (=> b!4314654 (=> (not res!1768462) (not e!2683823))))

(declare-fun valid!3701 (MutableMap!4609) Bool)

(assert (=> b!4314654 (= res!1768462 (valid!3701 thiss!42308))))

(declare-fun b!4314655 () Bool)

(declare-fun noDuplicateKeys!243 (List!48402) Bool)

(assert (=> b!4314655 (= e!2683822 (noDuplicateKeys!243 lt!1534219))))

(declare-fun mapNonEmpty!20986 () Bool)

(declare-fun mapRes!20986 () Bool)

(declare-fun tp!1325610 () Bool)

(declare-fun tp!1325611 () Bool)

(assert (=> mapNonEmpty!20986 (= mapRes!20986 (and tp!1325610 tp!1325611))))

(declare-fun mapRest!20986 () (Array (_ BitVec 32) List!48402))

(declare-fun mapKey!20986 () (_ BitVec 32))

(declare-fun mapValue!20986 () List!48402)

(assert (=> mapNonEmpty!20986 (= (arr!7592 (_values!4984 (v!42525 (underlying!9635 (v!42526 (underlying!9636 thiss!42308)))))) (store mapRest!20986 mapKey!20986 mapValue!20986))))

(declare-fun b!4314656 () Bool)

(declare-fun e!2683819 () Bool)

(declare-fun lt!1534212 () MutLongMap!4703)

(get-info :version)

(assert (=> b!4314656 (= e!2683819 (and e!2683829 ((_ is LongMap!4703) lt!1534212)))))

(assert (=> b!4314656 (= lt!1534212 (v!42526 (underlying!9636 thiss!42308)))))

(declare-fun b!4314657 () Bool)

(declare-fun tp!1325612 () Bool)

(assert (=> b!4314657 (= e!2683825 (and tp!1325612 mapRes!20986))))

(declare-fun condMapEmpty!20986 () Bool)

(declare-fun mapDefault!20986 () List!48402)

(assert (=> b!4314657 (= condMapEmpty!20986 (= (arr!7592 (_values!4984 (v!42525 (underlying!9635 (v!42526 (underlying!9636 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48402)) mapDefault!20986)))))

(declare-fun b!4314658 () Bool)

(declare-fun e!2683820 () Bool)

(declare-datatypes ((tuple2!46888 0))(
  ( (tuple2!46889 (_1!26726 (_ BitVec 64)) (_2!26726 List!48402)) )
))
(declare-datatypes ((List!48403 0))(
  ( (Nil!48279) (Cons!48279 (h!53728 tuple2!46888) (t!355242 List!48403)) )
))
(declare-datatypes ((ListLongMap!1087 0))(
  ( (ListLongMap!1088 (toList!2473 List!48403)) )
))
(declare-fun lt!1534204 () ListLongMap!1087)

(declare-fun allKeysSameHashInMap!363 (ListLongMap!1087 Hashable!4619) Bool)

(assert (=> b!4314658 (= e!2683820 (allKeysSameHashInMap!363 lt!1534204 (hashF!6806 thiss!42308)))))

(declare-fun b!4314659 () Bool)

(assert (=> b!4314659 (= e!2683818 (not true))))

(declare-datatypes ((ListMap!1753 0))(
  ( (ListMap!1754 (toList!2474 List!48402)) )
))
(declare-fun lt!1534216 () ListMap!1753)

(declare-fun lt!1534209 () ListMap!1753)

(declare-fun contains!10278 (ListMap!1753 K!9504) Bool)

(assert (=> b!4314659 (= (contains!10278 lt!1534216 key!2048) (contains!10278 lt!1534209 key!2048))))

(declare-datatypes ((Unit!67475 0))(
  ( (Unit!67476) )
))
(declare-fun lt!1534210 () Unit!67475)

(declare-fun lemmaEquivalentThenSameContains!58 (ListMap!1753 ListMap!1753 K!9504) Unit!67475)

(assert (=> b!4314659 (= lt!1534210 (lemmaEquivalentThenSameContains!58 lt!1534216 lt!1534209 key!2048))))

(declare-fun lt!1534217 () ListMap!1753)

(declare-fun +!295 (ListMap!1753 tuple2!46884) ListMap!1753)

(assert (=> b!4314659 (= lt!1534209 (+!295 lt!1534217 lt!1534205))))

(declare-fun map!10287 (MutableMap!4609) ListMap!1753)

(assert (=> b!4314659 (= lt!1534216 (map!10287 (HashMap!4609 (Cell!18624 (_2!26725 lt!1534203)) (hashF!6806 thiss!42308) (_size!9450 thiss!42308) (defaultValue!4780 thiss!42308))))))

(declare-fun lt!1534207 () ListLongMap!1087)

(declare-fun eq!144 (ListMap!1753 ListMap!1753) Bool)

(declare-fun extractMap!347 (List!48403) ListMap!1753)

(assert (=> b!4314659 (eq!144 (extractMap!347 (toList!2473 lt!1534204)) (+!295 (extractMap!347 (toList!2473 lt!1534207)) lt!1534205))))

(declare-fun lt!1534214 () Unit!67475)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!63 (ListLongMap!1087 (_ BitVec 64) List!48402 K!9504 V!9706 Hashable!4619) Unit!67475)

(assert (=> b!4314659 (= lt!1534214 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!63 lt!1534207 lt!1534215 lt!1534219 key!2048 v!9179 (hashF!6806 thiss!42308)))))

(assert (=> b!4314659 e!2683820))

(declare-fun res!1768463 () Bool)

(assert (=> b!4314659 (=> (not res!1768463) (not e!2683820))))

(declare-fun lambda!133337 () Int)

(declare-fun forall!8771 (List!48403 Int) Bool)

(assert (=> b!4314659 (= res!1768463 (forall!8771 (toList!2473 lt!1534204) lambda!133337))))

(declare-fun +!296 (ListLongMap!1087 tuple2!46888) ListLongMap!1087)

(assert (=> b!4314659 (= lt!1534204 (+!296 lt!1534207 (tuple2!46889 lt!1534215 lt!1534219)))))

(declare-fun lt!1534218 () Unit!67475)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!165 (ListLongMap!1087 (_ BitVec 64) List!48402 Hashable!4619) Unit!67475)

(assert (=> b!4314659 (= lt!1534218 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!165 lt!1534207 lt!1534215 lt!1534219 (hashF!6806 thiss!42308)))))

(assert (=> b!4314659 e!2683822))

(declare-fun res!1768460 () Bool)

(assert (=> b!4314659 (=> (not res!1768460) (not e!2683822))))

(assert (=> b!4314659 (= res!1768460 (noDuplicateKeys!243 lt!1534213))))

(declare-fun lt!1534211 () Unit!67475)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!191 (List!48402 K!9504) Unit!67475)

(assert (=> b!4314659 (= lt!1534211 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!191 lt!1534206 key!2048))))

(declare-fun allKeysSameHash!216 (List!48402 (_ BitVec 64) Hashable!4619) Bool)

(assert (=> b!4314659 (allKeysSameHash!216 lt!1534213 lt!1534215 (hashF!6806 thiss!42308))))

(declare-fun lt!1534208 () Unit!67475)

(declare-fun lemmaRemovePairForKeyPreservesHash!196 (List!48402 K!9504 (_ BitVec 64) Hashable!4619) Unit!67475)

(assert (=> b!4314659 (= lt!1534208 (lemmaRemovePairForKeyPreservesHash!196 lt!1534206 key!2048 lt!1534215 (hashF!6806 thiss!42308)))))

(assert (=> b!4314659 (allKeysSameHash!216 lt!1534206 lt!1534215 (hashF!6806 thiss!42308))))

(declare-fun lt!1534202 () Unit!67475)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!203 (List!48403 (_ BitVec 64) List!48402 Hashable!4619) Unit!67475)

(assert (=> b!4314659 (= lt!1534202 (lemmaInLongMapAllKeySameHashThenForTuple!203 (toList!2473 lt!1534207) lt!1534215 lt!1534206 (hashF!6806 thiss!42308)))))

(declare-fun res!1768459 () Bool)

(assert (=> start!414958 (=> (not res!1768459) (not e!2683823))))

(assert (=> start!414958 (= res!1768459 ((_ is HashMap!4609) thiss!42308))))

(assert (=> start!414958 e!2683823))

(declare-fun e!2683824 () Bool)

(assert (=> start!414958 e!2683824))

(declare-fun tp_is_empty!23917 () Bool)

(assert (=> start!414958 tp_is_empty!23917))

(declare-fun tp_is_empty!23919 () Bool)

(assert (=> start!414958 tp_is_empty!23919))

(assert (=> b!4314660 (= e!2683824 (and e!2683819 tp!1325608))))

(declare-fun mapIsEmpty!20986 () Bool)

(assert (=> mapIsEmpty!20986 mapRes!20986))

(declare-fun b!4314661 () Bool)

(assert (=> b!4314661 (= e!2683823 e!2683828)))

(declare-fun res!1768464 () Bool)

(assert (=> b!4314661 (=> (not res!1768464) (not e!2683828))))

(declare-fun contains!10279 (MutableMap!4609 K!9504) Bool)

(assert (=> b!4314661 (= res!1768464 (contains!10279 thiss!42308 key!2048))))

(declare-fun map!10288 (MutLongMap!4703) ListLongMap!1087)

(assert (=> b!4314661 (= lt!1534207 (map!10288 (v!42526 (underlying!9636 thiss!42308))))))

(assert (=> b!4314661 (= lt!1534217 (map!10287 thiss!42308))))

(declare-fun b!4314662 () Bool)

(assert (=> b!4314662 (= e!2683826 e!2683827)))

(assert (= (and start!414958 res!1768459) b!4314654))

(assert (= (and b!4314654 res!1768462) b!4314661))

(assert (= (and b!4314661 res!1768464) b!4314651))

(assert (= (and b!4314651 res!1768465) b!4314659))

(assert (= (and b!4314659 res!1768460) b!4314650))

(assert (= (and b!4314650 res!1768461) b!4314655))

(assert (= (and b!4314659 res!1768463) b!4314658))

(assert (= (and b!4314657 condMapEmpty!20986) mapIsEmpty!20986))

(assert (= (and b!4314657 (not condMapEmpty!20986)) mapNonEmpty!20986))

(assert (= b!4314653 b!4314657))

(assert (= b!4314662 b!4314653))

(assert (= b!4314652 b!4314662))

(assert (= (and b!4314656 ((_ is LongMap!4703) (v!42526 (underlying!9636 thiss!42308)))) b!4314652))

(assert (= b!4314660 b!4314656))

(assert (= (and start!414958 ((_ is HashMap!4609) thiss!42308)) b!4314660))

(declare-fun m!4908023 () Bool)

(assert (=> b!4314658 m!4908023))

(declare-fun m!4908025 () Bool)

(assert (=> b!4314655 m!4908025))

(declare-fun m!4908027 () Bool)

(assert (=> b!4314653 m!4908027))

(declare-fun m!4908029 () Bool)

(assert (=> b!4314653 m!4908029))

(declare-fun m!4908031 () Bool)

(assert (=> b!4314654 m!4908031))

(declare-fun m!4908033 () Bool)

(assert (=> b!4314661 m!4908033))

(declare-fun m!4908035 () Bool)

(assert (=> b!4314661 m!4908035))

(declare-fun m!4908037 () Bool)

(assert (=> b!4314661 m!4908037))

(declare-fun m!4908039 () Bool)

(assert (=> b!4314659 m!4908039))

(declare-fun m!4908041 () Bool)

(assert (=> b!4314659 m!4908041))

(declare-fun m!4908043 () Bool)

(assert (=> b!4314659 m!4908043))

(declare-fun m!4908045 () Bool)

(assert (=> b!4314659 m!4908045))

(declare-fun m!4908047 () Bool)

(assert (=> b!4314659 m!4908047))

(declare-fun m!4908049 () Bool)

(assert (=> b!4314659 m!4908049))

(declare-fun m!4908051 () Bool)

(assert (=> b!4314659 m!4908051))

(declare-fun m!4908053 () Bool)

(assert (=> b!4314659 m!4908053))

(declare-fun m!4908055 () Bool)

(assert (=> b!4314659 m!4908055))

(declare-fun m!4908057 () Bool)

(assert (=> b!4314659 m!4908057))

(declare-fun m!4908059 () Bool)

(assert (=> b!4314659 m!4908059))

(declare-fun m!4908061 () Bool)

(assert (=> b!4314659 m!4908061))

(assert (=> b!4314659 m!4908053))

(declare-fun m!4908063 () Bool)

(assert (=> b!4314659 m!4908063))

(declare-fun m!4908065 () Bool)

(assert (=> b!4314659 m!4908065))

(declare-fun m!4908067 () Bool)

(assert (=> b!4314659 m!4908067))

(declare-fun m!4908069 () Bool)

(assert (=> b!4314659 m!4908069))

(declare-fun m!4908071 () Bool)

(assert (=> b!4314659 m!4908071))

(declare-fun m!4908073 () Bool)

(assert (=> b!4314659 m!4908073))

(assert (=> b!4314659 m!4908051))

(assert (=> b!4314659 m!4908063))

(declare-fun m!4908075 () Bool)

(assert (=> b!4314659 m!4908075))

(declare-fun m!4908077 () Bool)

(assert (=> b!4314651 m!4908077))

(declare-fun m!4908079 () Bool)

(assert (=> b!4314651 m!4908079))

(declare-fun m!4908081 () Bool)

(assert (=> b!4314651 m!4908081))

(declare-fun m!4908083 () Bool)

(assert (=> b!4314651 m!4908083))

(declare-fun m!4908085 () Bool)

(assert (=> b!4314650 m!4908085))

(declare-fun m!4908087 () Bool)

(assert (=> mapNonEmpty!20986 m!4908087))

(check-sat (not b!4314651) (not b!4314655) (not b_next!129477) b_and!340243 (not b_next!129475) (not b!4314654) (not b!4314658) tp_is_empty!23917 (not b!4314653) (not b!4314657) (not b!4314650) b_and!340245 (not mapNonEmpty!20986) tp_is_empty!23919 (not b!4314659) (not b!4314661))
(check-sat b_and!340243 b_and!340245 (not b_next!129477) (not b_next!129475))
