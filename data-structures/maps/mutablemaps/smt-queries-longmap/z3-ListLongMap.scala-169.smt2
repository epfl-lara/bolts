; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3236 () Bool)

(assert start!3236)

(declare-fun b!19714 () Bool)

(declare-fun b_free!693 () Bool)

(declare-fun b_next!693 () Bool)

(assert (=> b!19714 (= b_free!693 (not b_next!693))))

(declare-fun tp!3298 () Bool)

(declare-fun b_and!1359 () Bool)

(assert (=> b!19714 (= tp!3298 b_and!1359)))

(declare-fun res!13265 () Bool)

(declare-fun e!12805 () Bool)

(assert (=> start!3236 (=> (not res!13265) (not e!12805))))

(declare-datatypes ((V!1101 0))(
  ( (V!1102 (val!505 Int)) )
))
(declare-datatypes ((ValueCell!279 0))(
  ( (ValueCellFull!279 (v!1526 V!1101)) (EmptyCell!279) )
))
(declare-datatypes ((array!1125 0))(
  ( (array!1126 (arr!537 (Array (_ BitVec 32) ValueCell!279)) (size!630 (_ BitVec 32))) )
))
(declare-datatypes ((array!1127 0))(
  ( (array!1128 (arr!538 (Array (_ BitVec 32) (_ BitVec 64))) (size!631 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!144 0))(
  ( (LongMapFixedSize!145 (defaultEntry!1692 Int) (mask!4648 (_ BitVec 32)) (extraKeys!1601 (_ BitVec 32)) (zeroValue!1625 V!1101) (minValue!1625 V!1101) (_size!107 (_ BitVec 32)) (_keys!3119 array!1127) (_values!1687 array!1125) (_vacant!107 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!144 0))(
  ( (Cell!145 (v!1527 LongMapFixedSize!144)) )
))
(declare-datatypes ((LongMap!144 0))(
  ( (LongMap!145 (underlying!83 Cell!144)) )
))
(declare-fun thiss!938 () LongMap!144)

(declare-fun valid!72 (LongMap!144) Bool)

(assert (=> start!3236 (= res!13265 (valid!72 thiss!938))))

(assert (=> start!3236 e!12805))

(declare-fun e!12810 () Bool)

(assert (=> start!3236 e!12810))

(declare-fun e!12812 () Bool)

(declare-fun e!12807 () Bool)

(declare-fun tp_is_empty!957 () Bool)

(declare-fun array_inv!379 (array!1127) Bool)

(declare-fun array_inv!380 (array!1125) Bool)

(assert (=> b!19714 (= e!12812 (and tp!3298 tp_is_empty!957 (array_inv!379 (_keys!3119 (v!1527 (underlying!83 thiss!938)))) (array_inv!380 (_values!1687 (v!1527 (underlying!83 thiss!938)))) e!12807))))

(declare-fun b!19715 () Bool)

(declare-fun e!12808 () Bool)

(assert (=> b!19715 (= e!12810 e!12808)))

(declare-fun b!19716 () Bool)

(declare-fun e!12809 () Bool)

(assert (=> b!19716 (= e!12809 tp_is_empty!957)))

(declare-fun b!19717 () Bool)

(assert (=> b!19717 (= e!12808 e!12812)))

(declare-fun mapIsEmpty!898 () Bool)

(declare-fun mapRes!898 () Bool)

(assert (=> mapIsEmpty!898 mapRes!898))

(declare-fun b!19718 () Bool)

(declare-fun e!12813 () Bool)

(assert (=> b!19718 (= e!12805 e!12813)))

(declare-fun res!13266 () Bool)

(assert (=> b!19718 (=> (not res!13266) (not e!12813))))

(assert (=> b!19718 (= res!13266 (and (not (= (bvand (extraKeys!1601 (v!1527 (underlying!83 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1601 (v!1527 (underlying!83 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!5522 () LongMapFixedSize!144)

(declare-fun getNewLongMapFixedSize!12 ((_ BitVec 32) Int) LongMapFixedSize!144)

(declare-fun computeNewMask!9 (LongMap!144 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19718 (= lt!5522 (getNewLongMapFixedSize!12 (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) (defaultEntry!1692 (v!1527 (underlying!83 thiss!938)))))))

(declare-fun mapNonEmpty!898 () Bool)

(declare-fun tp!3297 () Bool)

(declare-fun e!12806 () Bool)

(assert (=> mapNonEmpty!898 (= mapRes!898 (and tp!3297 e!12806))))

(declare-fun mapValue!898 () ValueCell!279)

(declare-fun mapRest!898 () (Array (_ BitVec 32) ValueCell!279))

(declare-fun mapKey!898 () (_ BitVec 32))

(assert (=> mapNonEmpty!898 (= (arr!537 (_values!1687 (v!1527 (underlying!83 thiss!938)))) (store mapRest!898 mapKey!898 mapValue!898))))

(declare-fun b!19719 () Bool)

(declare-fun valid!73 (LongMapFixedSize!144) Bool)

(declare-datatypes ((tuple2!812 0))(
  ( (tuple2!813 (_1!409 Bool) (_2!409 LongMapFixedSize!144)) )
))
(declare-fun update!15 (LongMapFixedSize!144 (_ BitVec 64) V!1101) tuple2!812)

(assert (=> b!19719 (= e!12813 (not (valid!73 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))))))))

(declare-fun b!19720 () Bool)

(assert (=> b!19720 (= e!12806 tp_is_empty!957)))

(declare-fun b!19721 () Bool)

(assert (=> b!19721 (= e!12807 (and e!12809 mapRes!898))))

(declare-fun condMapEmpty!898 () Bool)

(declare-fun mapDefault!898 () ValueCell!279)

(assert (=> b!19721 (= condMapEmpty!898 (= (arr!537 (_values!1687 (v!1527 (underlying!83 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!279)) mapDefault!898)))))

(assert (= (and start!3236 res!13265) b!19718))

(assert (= (and b!19718 res!13266) b!19719))

(assert (= (and b!19721 condMapEmpty!898) mapIsEmpty!898))

(assert (= (and b!19721 (not condMapEmpty!898)) mapNonEmpty!898))

(get-info :version)

(assert (= (and mapNonEmpty!898 ((_ is ValueCellFull!279) mapValue!898)) b!19720))

(assert (= (and b!19721 ((_ is ValueCellFull!279) mapDefault!898)) b!19716))

(assert (= b!19714 b!19721))

(assert (= b!19717 b!19714))

(assert (= b!19715 b!19717))

(assert (= start!3236 b!19715))

(declare-fun m!13863 () Bool)

(assert (=> b!19714 m!13863))

(declare-fun m!13865 () Bool)

(assert (=> b!19714 m!13865))

(declare-fun m!13867 () Bool)

(assert (=> b!19719 m!13867))

(declare-fun m!13869 () Bool)

(assert (=> b!19719 m!13869))

(declare-fun m!13871 () Bool)

(assert (=> mapNonEmpty!898 m!13871))

(declare-fun m!13873 () Bool)

(assert (=> start!3236 m!13873))

(declare-fun m!13875 () Bool)

(assert (=> b!19718 m!13875))

(assert (=> b!19718 m!13875))

(declare-fun m!13877 () Bool)

(assert (=> b!19718 m!13877))

(check-sat (not b_next!693) (not start!3236) tp_is_empty!957 (not mapNonEmpty!898) (not b!19718) (not b!19719) (not b!19714) b_and!1359)
(check-sat b_and!1359 (not b_next!693))
(get-model)

(declare-fun d!3635 () Bool)

(assert (=> d!3635 (= (valid!72 thiss!938) (valid!73 (v!1527 (underlying!83 thiss!938))))))

(declare-fun bs!881 () Bool)

(assert (= bs!881 d!3635))

(declare-fun m!13895 () Bool)

(assert (=> bs!881 m!13895))

(assert (=> start!3236 d!3635))

(declare-fun d!3637 () Bool)

(declare-fun res!13279 () Bool)

(declare-fun e!12843 () Bool)

(assert (=> d!3637 (=> (not res!13279) (not e!12843))))

(declare-fun simpleValid!13 (LongMapFixedSize!144) Bool)

(assert (=> d!3637 (= res!13279 (simpleValid!13 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))))))

(assert (=> d!3637 (= (valid!73 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))) e!12843)))

(declare-fun b!19752 () Bool)

(declare-fun res!13280 () Bool)

(assert (=> b!19752 (=> (not res!13280) (not e!12843))))

(declare-fun arrayCountValidKeys!0 (array!1127 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19752 (= res!13280 (= (arrayCountValidKeys!0 (_keys!3119 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))) #b00000000000000000000000000000000 (size!631 (_keys!3119 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))))) (_size!107 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))))))))

(declare-fun b!19753 () Bool)

(declare-fun res!13281 () Bool)

(assert (=> b!19753 (=> (not res!13281) (not e!12843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1127 (_ BitVec 32)) Bool)

(assert (=> b!19753 (= res!13281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3119 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))) (mask!4648 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))))))))

(declare-fun b!19754 () Bool)

(declare-datatypes ((List!545 0))(
  ( (Nil!542) (Cons!541 (h!1107 (_ BitVec 64)) (t!3194 List!545)) )
))
(declare-fun arrayNoDuplicates!0 (array!1127 (_ BitVec 32) List!545) Bool)

(assert (=> b!19754 (= e!12843 (arrayNoDuplicates!0 (_keys!3119 (_2!409 (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))) #b00000000000000000000000000000000 Nil!542))))

(assert (= (and d!3637 res!13279) b!19752))

(assert (= (and b!19752 res!13280) b!19753))

(assert (= (and b!19753 res!13281) b!19754))

(declare-fun m!13897 () Bool)

(assert (=> d!3637 m!13897))

(declare-fun m!13899 () Bool)

(assert (=> b!19752 m!13899))

(declare-fun m!13901 () Bool)

(assert (=> b!19753 m!13901))

(declare-fun m!13903 () Bool)

(assert (=> b!19754 m!13903))

(assert (=> b!19719 d!3637))

(declare-fun bm!950 () Bool)

(declare-fun call!973 () Bool)

(declare-fun call!971 () Bool)

(assert (=> bm!950 (= call!973 call!971)))

(declare-fun b!19840 () Bool)

(declare-datatypes ((Unit!398 0))(
  ( (Unit!399) )
))
(declare-fun lt!5586 () Unit!398)

(declare-fun lt!5588 () Unit!398)

(assert (=> b!19840 (= lt!5586 lt!5588)))

(declare-fun call!957 () Bool)

(assert (=> b!19840 call!957))

(declare-fun lt!5593 () array!1125)

(declare-datatypes ((SeekEntryResult!52 0))(
  ( (MissingZero!52 (index!2328 (_ BitVec 32))) (Found!52 (index!2329 (_ BitVec 32))) (Intermediate!52 (undefined!864 Bool) (index!2330 (_ BitVec 32)) (x!4831 (_ BitVec 32))) (Undefined!52) (MissingVacant!52 (index!2331 (_ BitVec 32))) )
))
(declare-fun lt!5606 () SeekEntryResult!52)

(declare-fun lemmaValidKeyInArrayIsInListMap!3 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 (_ BitVec 32) Int) Unit!398)

(assert (=> b!19840 (= lt!5588 (lemmaValidKeyInArrayIsInListMap!3 (_keys!3119 lt!5522) lt!5593 (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) (index!2329 lt!5606) (defaultEntry!1692 lt!5522)))))

(assert (=> b!19840 (= lt!5593 (array!1126 (store (arr!537 (_values!1687 lt!5522)) (index!2329 lt!5606) (ValueCellFull!279 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))) (size!630 (_values!1687 lt!5522))))))

(declare-fun lt!5582 () Unit!398)

(declare-fun lt!5598 () Unit!398)

(assert (=> b!19840 (= lt!5582 lt!5598)))

(declare-datatypes ((tuple2!814 0))(
  ( (tuple2!815 (_1!410 (_ BitVec 64)) (_2!410 V!1101)) )
))
(declare-datatypes ((List!546 0))(
  ( (Nil!543) (Cons!542 (h!1108 tuple2!814) (t!3195 List!546)) )
))
(declare-datatypes ((ListLongMap!531 0))(
  ( (ListLongMap!532 (toList!281 List!546)) )
))
(declare-fun call!966 () ListLongMap!531)

(declare-fun call!961 () ListLongMap!531)

(assert (=> b!19840 (= call!966 call!961)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!3 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 (_ BitVec 32) (_ BitVec 64) V!1101 Int) Unit!398)

(assert (=> b!19840 (= lt!5598 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!3 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) (index!2329 lt!5606) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (defaultEntry!1692 lt!5522)))))

(declare-fun lt!5585 () Unit!398)

(declare-fun e!12902 () Unit!398)

(assert (=> b!19840 (= lt!5585 e!12902)))

(declare-fun c!2127 () Bool)

(declare-fun contains!211 (ListLongMap!531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!112 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 (_ BitVec 32) Int) ListLongMap!531)

(assert (=> b!19840 (= c!2127 (contains!211 (getCurrentListMap!112 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) #b00000000000000000000000000000000 (defaultEntry!1692 lt!5522)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!12895 () tuple2!812)

(assert (=> b!19840 (= e!12895 (tuple2!813 true (LongMapFixedSize!145 (defaultEntry!1692 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) (_size!107 lt!5522) (_keys!3119 lt!5522) (array!1126 (store (arr!537 (_values!1687 lt!5522)) (index!2329 lt!5606) (ValueCellFull!279 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))) (size!630 (_values!1687 lt!5522))) (_vacant!107 lt!5522))))))

(declare-fun b!19841 () Bool)

(declare-fun e!12906 () ListLongMap!531)

(declare-fun call!963 () ListLongMap!531)

(assert (=> b!19841 (= e!12906 call!963)))

(declare-fun b!19842 () Bool)

(declare-fun e!12889 () tuple2!812)

(declare-fun e!12899 () tuple2!812)

(assert (=> b!19842 (= e!12889 e!12899)))

(declare-fun c!2126 () Bool)

(assert (=> b!19842 (= c!2126 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!2134 () Bool)

(declare-fun lt!5601 () SeekEntryResult!52)

(declare-fun call!962 () Bool)

(declare-fun c!2130 () Bool)

(declare-fun lt!5605 () SeekEntryResult!52)

(declare-fun c!2137 () Bool)

(declare-fun lt!5592 () SeekEntryResult!52)

(declare-fun c!2138 () Bool)

(declare-fun lt!5581 () SeekEntryResult!52)

(declare-fun bm!951 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!951 (= call!962 (inRange!0 (ite c!2137 (ite c!2130 (index!2329 lt!5601) (ite c!2138 (index!2328 lt!5592) (index!2331 lt!5592))) (ite c!2127 (index!2329 lt!5605) (ite c!2134 (index!2328 lt!5581) (index!2331 lt!5581)))) (mask!4648 lt!5522)))))

(declare-fun b!19843 () Bool)

(declare-fun e!12908 () Bool)

(assert (=> b!19843 (= e!12908 (= (select (arr!538 (_keys!3119 lt!5522)) (index!2329 lt!5601)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!19844 () Bool)

(declare-fun lt!5604 () Unit!398)

(declare-fun e!12898 () Unit!398)

(assert (=> b!19844 (= lt!5604 e!12898)))

(assert (=> b!19844 (= c!2130 call!957)))

(declare-fun e!12901 () tuple2!812)

(assert (=> b!19844 (= e!12901 (tuple2!813 false lt!5522))))

(declare-fun bm!952 () Bool)

(declare-fun call!976 () ListLongMap!531)

(assert (=> bm!952 (= call!961 call!976)))

(declare-fun lt!5583 () (_ BitVec 32))

(declare-fun c!2132 () Bool)

(declare-fun bm!953 () Bool)

(declare-fun lt!5594 () (_ BitVec 32))

(assert (=> bm!953 (= call!976 (getCurrentListMap!112 (_keys!3119 lt!5522) (ite (or c!2132 c!2137) (_values!1687 lt!5522) (array!1126 (store (arr!537 (_values!1687 lt!5522)) (index!2329 lt!5606) (ValueCellFull!279 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))) (size!630 (_values!1687 lt!5522)))) (mask!4648 lt!5522) (ite c!2132 (ite c!2126 lt!5594 lt!5583) (extraKeys!1601 lt!5522)) (ite (and c!2132 c!2126) (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (zeroValue!1625 lt!5522)) (ite c!2132 (ite c!2126 (minValue!1625 lt!5522) (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))) (minValue!1625 lt!5522)) #b00000000000000000000000000000000 (defaultEntry!1692 lt!5522)))))

(declare-fun b!19845 () Bool)

(declare-fun res!13311 () Bool)

(assert (=> b!19845 (= res!13311 (= (select (arr!538 (_keys!3119 lt!5522)) (index!2331 lt!5592)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!12892 () Bool)

(assert (=> b!19845 (=> (not res!13311) (not e!12892))))

(declare-fun bm!954 () Bool)

(assert (=> bm!954 (= call!963 (getCurrentListMap!112 (_keys!3119 lt!5522) (ite c!2132 (_values!1687 lt!5522) lt!5593) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) #b00000000000000000000000000000000 (defaultEntry!1692 lt!5522)))))

(declare-fun bm!955 () Bool)

(declare-fun call!969 () Bool)

(declare-fun arrayContainsKey!0 (array!1127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!955 (= call!969 (arrayContainsKey!0 (_keys!3119 lt!5522) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!19846 () Bool)

(declare-fun e!12905 () Bool)

(declare-fun e!12903 () Bool)

(assert (=> b!19846 (= e!12905 e!12903)))

(declare-fun res!13314 () Bool)

(declare-fun call!959 () ListLongMap!531)

(assert (=> b!19846 (= res!13314 (contains!211 call!959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!19846 (=> (not res!13314) (not e!12903))))

(declare-fun b!19847 () Bool)

(assert (=> b!19847 (= e!12906 call!961)))

(declare-fun b!19848 () Bool)

(declare-fun c!2135 () Bool)

(assert (=> b!19848 (= c!2135 ((_ is MissingVacant!52) lt!5592))))

(declare-fun e!12890 () Bool)

(declare-fun e!12907 () Bool)

(assert (=> b!19848 (= e!12890 e!12907)))

(declare-fun b!19849 () Bool)

(declare-fun lt!5587 () tuple2!812)

(declare-fun call!953 () tuple2!812)

(assert (=> b!19849 (= lt!5587 call!953)))

(assert (=> b!19849 (= e!12895 (tuple2!813 (_1!409 lt!5587) (_2!409 lt!5587)))))

(declare-fun bm!956 () Bool)

(declare-fun c!2128 () Bool)

(declare-fun updateHelperNewKey!3 (LongMapFixedSize!144 (_ BitVec 64) V!1101 (_ BitVec 32)) tuple2!812)

(assert (=> bm!956 (= call!953 (updateHelperNewKey!3 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (ite c!2128 (index!2331 lt!5606) (index!2328 lt!5606))))))

(declare-fun b!19850 () Bool)

(declare-fun lt!5602 () Unit!398)

(declare-fun lt!5595 () Unit!398)

(assert (=> b!19850 (= lt!5602 lt!5595)))

(declare-fun call!956 () ListLongMap!531)

(declare-fun call!968 () ListLongMap!531)

(assert (=> b!19850 (= call!956 call!968)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!3 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 V!1101 Int) Unit!398)

(assert (=> b!19850 (= lt!5595 (lemmaChangeLongMinValueKeyThenAddPairToListMap!3 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) lt!5583 (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (defaultEntry!1692 lt!5522)))))

(assert (=> b!19850 (= lt!5583 (bvor (extraKeys!1601 lt!5522) #b00000000000000000000000000000010))))

(assert (=> b!19850 (= e!12899 (tuple2!813 true (LongMapFixedSize!145 (defaultEntry!1692 lt!5522) (mask!4648 lt!5522) (bvor (extraKeys!1601 lt!5522) #b00000000000000000000000000000010) (zeroValue!1625 lt!5522) (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (_size!107 lt!5522) (_keys!3119 lt!5522) (_values!1687 lt!5522) (_vacant!107 lt!5522))))))

(declare-fun b!19851 () Bool)

(declare-fun lt!5591 () Unit!398)

(declare-fun lt!5596 () Unit!398)

(assert (=> b!19851 (= lt!5591 lt!5596)))

(assert (=> b!19851 (= call!956 call!968)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!3 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 V!1101 Int) Unit!398)

(assert (=> b!19851 (= lt!5596 (lemmaChangeZeroKeyThenAddPairToListMap!3 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) lt!5594 (zeroValue!1625 lt!5522) (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (minValue!1625 lt!5522) (defaultEntry!1692 lt!5522)))))

(assert (=> b!19851 (= lt!5594 (bvor (extraKeys!1601 lt!5522) #b00000000000000000000000000000001))))

(assert (=> b!19851 (= e!12899 (tuple2!813 true (LongMapFixedSize!145 (defaultEntry!1692 lt!5522) (mask!4648 lt!5522) (bvor (extraKeys!1601 lt!5522) #b00000000000000000000000000000001) (zeroValue!1625 (v!1527 (underlying!83 thiss!938))) (minValue!1625 lt!5522) (_size!107 lt!5522) (_keys!3119 lt!5522) (_values!1687 lt!5522) (_vacant!107 lt!5522))))))

(declare-fun b!19852 () Bool)

(declare-fun e!12893 () Bool)

(declare-fun e!12896 () Bool)

(assert (=> b!19852 (= e!12893 e!12896)))

(declare-fun res!13320 () Bool)

(declare-fun call!972 () Bool)

(assert (=> b!19852 (= res!13320 call!972)))

(assert (=> b!19852 (=> (not res!13320) (not e!12896))))

(declare-fun b!19853 () Bool)

(assert (=> b!19853 (= e!12907 e!12892)))

(declare-fun res!13323 () Bool)

(assert (=> b!19853 (= res!13323 call!973)))

(assert (=> b!19853 (=> (not res!13323) (not e!12892))))

(declare-fun b!19854 () Bool)

(declare-fun res!13313 () Bool)

(declare-fun e!12904 () Bool)

(assert (=> b!19854 (=> (not res!13313) (not e!12904))))

(assert (=> b!19854 (= res!13313 call!973)))

(assert (=> b!19854 (= e!12890 e!12904)))

(declare-fun b!19855 () Bool)

(assert (=> b!19855 (= e!12889 e!12901)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1127 (_ BitVec 32)) SeekEntryResult!52)

(assert (=> b!19855 (= lt!5606 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3119 lt!5522) (mask!4648 lt!5522)))))

(assert (=> b!19855 (= c!2137 ((_ is Undefined!52) lt!5606))))

(declare-fun d!3639 () Bool)

(declare-fun e!12888 () Bool)

(assert (=> d!3639 e!12888))

(declare-fun res!13318 () Bool)

(assert (=> d!3639 (=> (not res!13318) (not e!12888))))

(declare-fun lt!5580 () tuple2!812)

(assert (=> d!3639 (= res!13318 (valid!73 (_2!409 lt!5580)))))

(assert (=> d!3639 (= lt!5580 e!12889)))

(assert (=> d!3639 (= c!2132 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3639 (valid!73 lt!5522)))

(assert (=> d!3639 (= (update!15 lt!5522 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))) lt!5580)))

(declare-fun b!19839 () Bool)

(declare-fun e!12897 () Bool)

(assert (=> b!19839 (= e!12897 (= (select (arr!538 (_keys!3119 lt!5522)) (index!2329 lt!5605)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!957 () Bool)

(declare-fun call!960 () ListLongMap!531)

(assert (=> bm!957 (= call!960 call!963)))

(declare-fun b!19856 () Bool)

(declare-fun c!2133 () Bool)

(assert (=> b!19856 (= c!2133 ((_ is MissingVacant!52) lt!5581))))

(declare-fun e!12900 () Bool)

(assert (=> b!19856 (= e!12900 e!12893)))

(declare-fun bm!958 () Bool)

(declare-fun map!377 (LongMapFixedSize!144) ListLongMap!531)

(assert (=> bm!958 (= call!959 (map!377 (_2!409 lt!5580)))))

(declare-fun b!19857 () Bool)

(declare-fun e!12891 () Bool)

(declare-fun call!954 () Bool)

(assert (=> b!19857 (= e!12891 (not call!954))))

(declare-fun bm!959 () Bool)

(declare-fun c!2131 () Bool)

(assert (=> bm!959 (= c!2131 c!2137)))

(assert (=> bm!959 (= call!957 (contains!211 e!12906 (ite c!2137 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!538 (_keys!3119 lt!5522)) (index!2329 lt!5606)))))))

(declare-fun bm!960 () Bool)

(declare-fun call!967 () Bool)

(assert (=> bm!960 (= call!967 call!962)))

(declare-fun bm!961 () Bool)

(assert (=> bm!961 (= call!968 call!976)))

(declare-fun bm!962 () Bool)

(assert (=> bm!962 (= call!956 call!966)))

(declare-fun b!19858 () Bool)

(declare-fun call!965 () ListLongMap!531)

(declare-fun +!38 (ListLongMap!531 tuple2!814) ListLongMap!531)

(assert (=> b!19858 (= e!12903 (= call!959 (+!38 call!965 (tuple2!815 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))))))

(declare-fun b!19859 () Bool)

(declare-fun res!13322 () Bool)

(assert (=> b!19859 (= res!13322 call!967)))

(assert (=> b!19859 (=> (not res!13322) (not e!12897))))

(declare-fun b!19860 () Bool)

(assert (=> b!19860 (= e!12896 (not call!954))))

(declare-fun b!19861 () Bool)

(declare-fun call!964 () Bool)

(assert (=> b!19861 (= e!12904 (not call!964))))

(declare-fun b!19862 () Bool)

(assert (=> b!19862 (= c!2128 ((_ is MissingVacant!52) lt!5606))))

(declare-fun e!12894 () tuple2!812)

(assert (=> b!19862 (= e!12901 e!12894)))

(declare-fun b!19863 () Bool)

(declare-fun res!13316 () Bool)

(assert (=> b!19863 (= res!13316 call!971)))

(assert (=> b!19863 (=> (not res!13316) (not e!12908))))

(declare-fun bm!963 () Bool)

(assert (=> bm!963 (= call!954 call!969)))

(declare-fun bm!964 () Bool)

(assert (=> bm!964 (= call!965 (map!377 lt!5522))))

(declare-fun b!19864 () Bool)

(declare-fun res!13312 () Bool)

(assert (=> b!19864 (=> (not res!13312) (not e!12891))))

(assert (=> b!19864 (= res!13312 (= (select (arr!538 (_keys!3119 lt!5522)) (index!2328 lt!5581)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!965 () Bool)

(declare-fun call!970 () Unit!398)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!3 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 (_ BitVec 64) Int) Unit!398)

(assert (=> bm!965 (= call!970 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!3 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1692 lt!5522)))))

(declare-fun b!19865 () Bool)

(assert (=> b!19865 (= e!12892 (not call!964))))

(declare-fun bm!966 () Bool)

(declare-fun call!958 () SeekEntryResult!52)

(assert (=> bm!966 (= call!958 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3119 lt!5522) (mask!4648 lt!5522)))))

(declare-fun b!19866 () Bool)

(declare-fun e!12909 () ListLongMap!531)

(assert (=> b!19866 (= e!12909 (getCurrentListMap!112 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) #b00000000000000000000000000000000 (defaultEntry!1692 lt!5522)))))

(declare-fun bm!967 () Bool)

(assert (=> bm!967 (= call!972 call!967)))

(declare-fun bm!968 () Bool)

(assert (=> bm!968 (= call!966 (+!38 e!12909 (ite c!2132 (ite c!2126 (tuple2!815 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))) (tuple2!815 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938))))) (tuple2!815 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1625 (v!1527 (underlying!83 thiss!938)))))))))

(declare-fun c!2129 () Bool)

(assert (=> bm!968 (= c!2129 c!2132)))

(declare-fun b!19867 () Bool)

(declare-fun lt!5599 () Unit!398)

(assert (=> b!19867 (= e!12902 lt!5599)))

(declare-fun call!974 () Unit!398)

(assert (=> b!19867 (= lt!5599 call!974)))

(declare-fun call!975 () SeekEntryResult!52)

(assert (=> b!19867 (= lt!5605 call!975)))

(declare-fun res!13321 () Bool)

(assert (=> b!19867 (= res!13321 ((_ is Found!52) lt!5605))))

(assert (=> b!19867 (=> (not res!13321) (not e!12897))))

(assert (=> b!19867 e!12897))

(declare-fun b!19868 () Bool)

(declare-fun res!13310 () Bool)

(assert (=> b!19868 (=> (not res!13310) (not e!12904))))

(assert (=> b!19868 (= res!13310 (= (select (arr!538 (_keys!3119 lt!5522)) (index!2328 lt!5592)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!969 () Bool)

(assert (=> bm!969 (= call!971 call!962)))

(declare-fun b!19869 () Bool)

(assert (=> b!19869 (= e!12888 e!12905)))

(declare-fun c!2139 () Bool)

(assert (=> b!19869 (= c!2139 (_1!409 lt!5580))))

(declare-fun b!19870 () Bool)

(assert (=> b!19870 (= e!12893 ((_ is Undefined!52) lt!5581))))

(declare-fun b!19871 () Bool)

(declare-fun res!13319 () Bool)

(assert (=> b!19871 (= res!13319 (= (select (arr!538 (_keys!3119 lt!5522)) (index!2331 lt!5581)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!19871 (=> (not res!13319) (not e!12896))))

(declare-fun b!19872 () Bool)

(declare-fun lt!5597 () tuple2!812)

(assert (=> b!19872 (= e!12894 (tuple2!813 (_1!409 lt!5597) (_2!409 lt!5597)))))

(assert (=> b!19872 (= lt!5597 call!953)))

(declare-fun b!19873 () Bool)

(assert (=> b!19873 (= e!12894 e!12895)))

(declare-fun c!2136 () Bool)

(assert (=> b!19873 (= c!2136 ((_ is MissingZero!52) lt!5606))))

(declare-fun b!19874 () Bool)

(declare-fun lt!5589 () Unit!398)

(assert (=> b!19874 (= e!12898 lt!5589)))

(assert (=> b!19874 (= lt!5589 call!970)))

(declare-fun call!955 () SeekEntryResult!52)

(assert (=> b!19874 (= lt!5592 call!955)))

(assert (=> b!19874 (= c!2138 ((_ is MissingZero!52) lt!5592))))

(assert (=> b!19874 e!12890))

(declare-fun b!19875 () Bool)

(declare-fun Unit!400 () Unit!398)

(assert (=> b!19875 (= e!12902 Unit!400)))

(declare-fun lt!5590 () Unit!398)

(assert (=> b!19875 (= lt!5590 call!970)))

(assert (=> b!19875 (= lt!5581 call!975)))

(assert (=> b!19875 (= c!2134 ((_ is MissingZero!52) lt!5581))))

(assert (=> b!19875 e!12900))

(declare-fun lt!5584 () Unit!398)

(assert (=> b!19875 (= lt!5584 lt!5590)))

(assert (=> b!19875 false))

(declare-fun b!19876 () Bool)

(assert (=> b!19876 (= e!12905 (= call!959 call!965))))

(declare-fun bm!970 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!3 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 (_ BitVec 64) Int) Unit!398)

(assert (=> bm!970 (= call!974 (lemmaInListMapThenSeekEntryOrOpenFindsIt!3 (_keys!3119 lt!5522) (_values!1687 lt!5522) (mask!4648 lt!5522) (extraKeys!1601 lt!5522) (zeroValue!1625 lt!5522) (minValue!1625 lt!5522) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1692 lt!5522)))))

(declare-fun bm!971 () Bool)

(assert (=> bm!971 (= call!955 call!958)))

(declare-fun b!19877 () Bool)

(assert (=> b!19877 (= e!12909 call!960)))

(declare-fun b!19878 () Bool)

(declare-fun Unit!401 () Unit!398)

(assert (=> b!19878 (= e!12898 Unit!401)))

(declare-fun lt!5603 () Unit!398)

(assert (=> b!19878 (= lt!5603 call!974)))

(assert (=> b!19878 (= lt!5601 call!955)))

(declare-fun res!13315 () Bool)

(assert (=> b!19878 (= res!13315 ((_ is Found!52) lt!5601))))

(assert (=> b!19878 (=> (not res!13315) (not e!12908))))

(assert (=> b!19878 e!12908))

(declare-fun lt!5600 () Unit!398)

(assert (=> b!19878 (= lt!5600 lt!5603)))

(assert (=> b!19878 false))

(declare-fun b!19879 () Bool)

(assert (=> b!19879 (= e!12907 ((_ is Undefined!52) lt!5592))))

(declare-fun b!19880 () Bool)

(declare-fun res!13317 () Bool)

(assert (=> b!19880 (=> (not res!13317) (not e!12891))))

(assert (=> b!19880 (= res!13317 call!972)))

(assert (=> b!19880 (= e!12900 e!12891)))

(declare-fun bm!972 () Bool)

(assert (=> bm!972 (= call!975 call!958)))

(declare-fun bm!973 () Bool)

(assert (=> bm!973 (= call!964 call!969)))

(assert (= (and d!3639 c!2132) b!19842))

(assert (= (and d!3639 (not c!2132)) b!19855))

(assert (= (and b!19842 c!2126) b!19851))

(assert (= (and b!19842 (not c!2126)) b!19850))

(assert (= (or b!19851 b!19850) bm!961))

(assert (= (or b!19851 b!19850) bm!957))

(assert (= (or b!19851 b!19850) bm!962))

(assert (= (and b!19855 c!2137) b!19844))

(assert (= (and b!19855 (not c!2137)) b!19862))

(assert (= (and b!19844 c!2130) b!19878))

(assert (= (and b!19844 (not c!2130)) b!19874))

(assert (= (and b!19878 res!13315) b!19863))

(assert (= (and b!19863 res!13316) b!19843))

(assert (= (and b!19874 c!2138) b!19854))

(assert (= (and b!19874 (not c!2138)) b!19848))

(assert (= (and b!19854 res!13313) b!19868))

(assert (= (and b!19868 res!13310) b!19861))

(assert (= (and b!19848 c!2135) b!19853))

(assert (= (and b!19848 (not c!2135)) b!19879))

(assert (= (and b!19853 res!13323) b!19845))

(assert (= (and b!19845 res!13311) b!19865))

(assert (= (or b!19854 b!19853) bm!950))

(assert (= (or b!19861 b!19865) bm!973))

(assert (= (or b!19863 bm!950) bm!969))

(assert (= (or b!19878 b!19874) bm!971))

(assert (= (and b!19862 c!2128) b!19872))

(assert (= (and b!19862 (not c!2128)) b!19873))

(assert (= (and b!19873 c!2136) b!19849))

(assert (= (and b!19873 (not c!2136)) b!19840))

(assert (= (and b!19840 c!2127) b!19867))

(assert (= (and b!19840 (not c!2127)) b!19875))

(assert (= (and b!19867 res!13321) b!19859))

(assert (= (and b!19859 res!13322) b!19839))

(assert (= (and b!19875 c!2134) b!19880))

(assert (= (and b!19875 (not c!2134)) b!19856))

(assert (= (and b!19880 res!13317) b!19864))

(assert (= (and b!19864 res!13312) b!19857))

(assert (= (and b!19856 c!2133) b!19852))

(assert (= (and b!19856 (not c!2133)) b!19870))

(assert (= (and b!19852 res!13320) b!19871))

(assert (= (and b!19871 res!13319) b!19860))

(assert (= (or b!19880 b!19852) bm!967))

(assert (= (or b!19857 b!19860) bm!963))

(assert (= (or b!19859 bm!967) bm!960))

(assert (= (or b!19867 b!19875) bm!972))

(assert (= (or b!19872 b!19849) bm!956))

(assert (= (or b!19844 b!19840) bm!952))

(assert (= (or bm!973 bm!963) bm!955))

(assert (= (or b!19874 b!19875) bm!965))

(assert (= (or b!19878 b!19867) bm!970))

(assert (= (or bm!969 bm!960) bm!951))

(assert (= (or bm!971 bm!972) bm!966))

(assert (= (or b!19844 b!19840) bm!959))

(assert (= (and bm!959 c!2131) b!19847))

(assert (= (and bm!959 (not c!2131)) b!19841))

(assert (= (or bm!961 bm!952) bm!953))

(assert (= (or bm!957 b!19841) bm!954))

(assert (= (or bm!962 b!19840) bm!968))

(assert (= (and bm!968 c!2129) b!19877))

(assert (= (and bm!968 (not c!2129)) b!19866))

(assert (= (and d!3639 res!13318) b!19869))

(assert (= (and b!19869 c!2139) b!19846))

(assert (= (and b!19869 (not c!2139)) b!19876))

(assert (= (and b!19846 res!13314) b!19858))

(assert (= (or b!19846 b!19858 b!19876) bm!958))

(assert (= (or b!19858 b!19876) bm!964))

(declare-fun m!13905 () Bool)

(assert (=> bm!953 m!13905))

(declare-fun m!13907 () Bool)

(assert (=> bm!953 m!13907))

(declare-fun m!13909 () Bool)

(assert (=> bm!956 m!13909))

(declare-fun m!13911 () Bool)

(assert (=> b!19846 m!13911))

(declare-fun m!13913 () Bool)

(assert (=> bm!970 m!13913))

(declare-fun m!13915 () Bool)

(assert (=> b!19868 m!13915))

(declare-fun m!13917 () Bool)

(assert (=> bm!955 m!13917))

(declare-fun m!13919 () Bool)

(assert (=> b!19843 m!13919))

(declare-fun m!13921 () Bool)

(assert (=> b!19851 m!13921))

(declare-fun m!13923 () Bool)

(assert (=> b!19864 m!13923))

(declare-fun m!13925 () Bool)

(assert (=> bm!964 m!13925))

(declare-fun m!13927 () Bool)

(assert (=> b!19871 m!13927))

(declare-fun m!13929 () Bool)

(assert (=> bm!951 m!13929))

(declare-fun m!13931 () Bool)

(assert (=> bm!958 m!13931))

(declare-fun m!13933 () Bool)

(assert (=> b!19845 m!13933))

(declare-fun m!13935 () Bool)

(assert (=> bm!968 m!13935))

(declare-fun m!13937 () Bool)

(assert (=> b!19840 m!13937))

(declare-fun m!13939 () Bool)

(assert (=> b!19840 m!13939))

(declare-fun m!13941 () Bool)

(assert (=> b!19840 m!13941))

(assert (=> b!19840 m!13941))

(declare-fun m!13943 () Bool)

(assert (=> b!19840 m!13943))

(assert (=> b!19840 m!13905))

(declare-fun m!13945 () Bool)

(assert (=> b!19858 m!13945))

(declare-fun m!13947 () Bool)

(assert (=> b!19839 m!13947))

(declare-fun m!13949 () Bool)

(assert (=> bm!965 m!13949))

(declare-fun m!13951 () Bool)

(assert (=> d!3639 m!13951))

(declare-fun m!13953 () Bool)

(assert (=> d!3639 m!13953))

(assert (=> b!19866 m!13941))

(declare-fun m!13955 () Bool)

(assert (=> b!19855 m!13955))

(declare-fun m!13957 () Bool)

(assert (=> bm!959 m!13957))

(declare-fun m!13959 () Bool)

(assert (=> bm!959 m!13959))

(declare-fun m!13961 () Bool)

(assert (=> b!19850 m!13961))

(declare-fun m!13963 () Bool)

(assert (=> bm!954 m!13963))

(assert (=> bm!966 m!13955))

(assert (=> b!19719 d!3639))

(declare-fun d!3641 () Bool)

(assert (=> d!3641 (= (array_inv!379 (_keys!3119 (v!1527 (underlying!83 thiss!938)))) (bvsge (size!631 (_keys!3119 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19714 d!3641))

(declare-fun d!3643 () Bool)

(assert (=> d!3643 (= (array_inv!380 (_values!1687 (v!1527 (underlying!83 thiss!938)))) (bvsge (size!630 (_values!1687 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19714 d!3643))

(declare-fun b!19894 () Bool)

(declare-fun e!12917 () Bool)

(declare-fun lt!5661 () LongMapFixedSize!144)

(assert (=> b!19894 (= e!12917 (= (map!377 lt!5661) (ListLongMap!532 Nil!543)))))

(declare-fun b!19895 () Bool)

(declare-fun res!13329 () Bool)

(assert (=> b!19895 (=> (not res!13329) (not e!12917))))

(assert (=> b!19895 (= res!13329 (= (mask!4648 lt!5661) (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938))))))))

(declare-fun b!19896 () Bool)

(declare-fun e!12916 () Bool)

(declare-fun lt!5674 () array!1127)

(declare-fun lt!5657 () tuple2!814)

(assert (=> b!19896 (= e!12916 (arrayContainsKey!0 lt!5674 (_1!410 lt!5657) #b00000000000000000000000000000000))))

(declare-fun b!19897 () Bool)

(declare-fun e!12918 () Unit!398)

(declare-fun Unit!402 () Unit!398)

(assert (=> b!19897 (= e!12918 Unit!402)))

(declare-fun lt!5658 () LongMapFixedSize!144)

(declare-fun head!821 (List!546) tuple2!814)

(assert (=> b!19897 (= lt!5657 (head!821 (toList!281 (map!377 lt!5658))))))

(assert (=> b!19897 (= lt!5674 (array!1128 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5667 () (_ BitVec 32))

(assert (=> b!19897 (= lt!5667 #b00000000000000000000000000000000)))

(declare-fun lt!5664 () Unit!398)

(declare-fun lemmaKeyInListMapIsInArray!84 (array!1127 array!1125 (_ BitVec 32) (_ BitVec 32) V!1101 V!1101 (_ BitVec 64) Int) Unit!398)

(declare-fun dynLambda!135 (Int (_ BitVec 64)) V!1101)

(assert (=> b!19897 (= lt!5664 (lemmaKeyInListMapIsInArray!84 lt!5674 (array!1126 ((as const (Array (_ BitVec 32) ValueCell!279)) EmptyCell!279) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) lt!5667 (dynLambda!135 (defaultEntry!1692 (v!1527 (underlying!83 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!135 (defaultEntry!1692 (v!1527 (underlying!83 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!410 lt!5657) (defaultEntry!1692 (v!1527 (underlying!83 thiss!938)))))))

(declare-fun c!2144 () Bool)

(assert (=> b!19897 (= c!2144 (and (not (= (_1!410 lt!5657) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!410 lt!5657) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!19897 e!12916))

(declare-fun lt!5672 () Unit!398)

(assert (=> b!19897 (= lt!5672 lt!5664)))

(declare-fun lt!5666 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1127 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19897 (= lt!5666 (arrayScanForKey!0 (array!1128 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)) (_1!410 lt!5657) #b00000000000000000000000000000000))))

(assert (=> b!19897 false))

(declare-fun b!19898 () Bool)

(assert (=> b!19898 (= e!12916 (ite (= (_1!410 lt!5657) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!5667 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!5667 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun d!3645 () Bool)

(assert (=> d!3645 e!12917))

(declare-fun res!13328 () Bool)

(assert (=> d!3645 (=> (not res!13328) (not e!12917))))

(assert (=> d!3645 (= res!13328 (valid!73 lt!5661))))

(assert (=> d!3645 (= lt!5661 lt!5658)))

(declare-fun lt!5656 () Unit!398)

(assert (=> d!3645 (= lt!5656 e!12918)))

(declare-fun c!2145 () Bool)

(assert (=> d!3645 (= c!2145 (not (= (map!377 lt!5658) (ListLongMap!532 Nil!543))))))

(declare-fun lt!5663 () Unit!398)

(declare-fun lt!5670 () Unit!398)

(assert (=> d!3645 (= lt!5663 lt!5670)))

(declare-fun lt!5655 () array!1127)

(declare-fun lt!5668 () (_ BitVec 32))

(declare-fun lt!5671 () List!545)

(assert (=> d!3645 (arrayNoDuplicates!0 lt!5655 lt!5668 lt!5671)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1127 (_ BitVec 32) (_ BitVec 32) List!545) Unit!398)

(assert (=> d!3645 (= lt!5670 (lemmaArrayNoDuplicatesInAll0Array!0 lt!5655 lt!5668 (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001) lt!5671))))

(assert (=> d!3645 (= lt!5671 Nil!542)))

(assert (=> d!3645 (= lt!5668 #b00000000000000000000000000000000)))

(assert (=> d!3645 (= lt!5655 (array!1128 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5660 () Unit!398)

(declare-fun lt!5669 () Unit!398)

(assert (=> d!3645 (= lt!5660 lt!5669)))

(declare-fun lt!5653 () (_ BitVec 32))

(declare-fun lt!5675 () array!1127)

(assert (=> d!3645 (arrayForallSeekEntryOrOpenFound!0 lt!5653 lt!5675 (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1127 (_ BitVec 32) (_ BitVec 32)) Unit!398)

(assert (=> d!3645 (= lt!5669 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!5675 (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) lt!5653))))

(assert (=> d!3645 (= lt!5653 #b00000000000000000000000000000000)))

(assert (=> d!3645 (= lt!5675 (array!1128 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!5659 () Unit!398)

(declare-fun lt!5665 () Unit!398)

(assert (=> d!3645 (= lt!5659 lt!5665)))

(declare-fun lt!5673 () array!1127)

(declare-fun lt!5662 () (_ BitVec 32))

(declare-fun lt!5654 () (_ BitVec 32))

(assert (=> d!3645 (= (arrayCountValidKeys!0 lt!5673 lt!5662 lt!5654) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1127 (_ BitVec 32) (_ BitVec 32)) Unit!398)

(assert (=> d!3645 (= lt!5665 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!5673 lt!5662 lt!5654))))

(assert (=> d!3645 (= lt!5654 (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3645 (= lt!5662 #b00000000000000000000000000000000)))

(assert (=> d!3645 (= lt!5673 (array!1128 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!3645 (= lt!5658 (LongMapFixedSize!145 (defaultEntry!1692 (v!1527 (underlying!83 thiss!938))) (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!135 (defaultEntry!1692 (v!1527 (underlying!83 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!135 (defaultEntry!1692 (v!1527 (underlying!83 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1128 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)) (array!1126 ((as const (Array (_ BitVec 32) ValueCell!279)) EmptyCell!279) (bvadd (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3645 (validMask!0 (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))))))

(assert (=> d!3645 (= (getNewLongMapFixedSize!12 (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) (defaultEntry!1692 (v!1527 (underlying!83 thiss!938)))) lt!5661)))

(declare-fun b!19893 () Bool)

(declare-fun Unit!403 () Unit!398)

(assert (=> b!19893 (= e!12918 Unit!403)))

(assert (= (and d!3645 c!2145) b!19897))

(assert (= (and d!3645 (not c!2145)) b!19893))

(assert (= (and b!19897 c!2144) b!19896))

(assert (= (and b!19897 (not c!2144)) b!19898))

(assert (= (and d!3645 res!13328) b!19895))

(assert (= (and b!19895 res!13329) b!19894))

(declare-fun b_lambda!1477 () Bool)

(assert (=> (not b_lambda!1477) (not b!19897)))

(declare-fun t!3193 () Bool)

(declare-fun tb!635 () Bool)

(assert (=> (and b!19714 (= (defaultEntry!1692 (v!1527 (underlying!83 thiss!938))) (defaultEntry!1692 (v!1527 (underlying!83 thiss!938)))) t!3193) tb!635))

(declare-fun result!1035 () Bool)

(assert (=> tb!635 (= result!1035 tp_is_empty!957)))

(assert (=> b!19897 t!3193))

(declare-fun b_and!1363 () Bool)

(assert (= b_and!1359 (and (=> t!3193 result!1035) b_and!1363)))

(declare-fun b_lambda!1479 () Bool)

(assert (=> (not b_lambda!1479) (not d!3645)))

(assert (=> d!3645 t!3193))

(declare-fun b_and!1365 () Bool)

(assert (= b_and!1363 (and (=> t!3193 result!1035) b_and!1365)))

(declare-fun m!13965 () Bool)

(assert (=> b!19894 m!13965))

(declare-fun m!13967 () Bool)

(assert (=> b!19896 m!13967))

(declare-fun m!13969 () Bool)

(assert (=> b!19897 m!13969))

(assert (=> b!19897 m!13875))

(declare-fun m!13971 () Bool)

(assert (=> b!19897 m!13971))

(assert (=> b!19897 m!13971))

(declare-fun m!13973 () Bool)

(assert (=> b!19897 m!13973))

(declare-fun m!13975 () Bool)

(assert (=> b!19897 m!13975))

(declare-fun m!13977 () Bool)

(assert (=> b!19897 m!13977))

(assert (=> b!19897 m!13971))

(assert (=> d!3645 m!13969))

(assert (=> d!3645 m!13875))

(declare-fun m!13979 () Bool)

(assert (=> d!3645 m!13979))

(declare-fun m!13981 () Bool)

(assert (=> d!3645 m!13981))

(declare-fun m!13983 () Bool)

(assert (=> d!3645 m!13983))

(assert (=> d!3645 m!13875))

(declare-fun m!13985 () Bool)

(assert (=> d!3645 m!13985))

(assert (=> d!3645 m!13875))

(declare-fun m!13987 () Bool)

(assert (=> d!3645 m!13987))

(declare-fun m!13989 () Bool)

(assert (=> d!3645 m!13989))

(assert (=> d!3645 m!13971))

(declare-fun m!13991 () Bool)

(assert (=> d!3645 m!13991))

(declare-fun m!13993 () Bool)

(assert (=> d!3645 m!13993))

(assert (=> b!19718 d!3645))

(declare-fun d!3647 () Bool)

(declare-fun e!12924 () Bool)

(assert (=> d!3647 e!12924))

(declare-fun res!13332 () Bool)

(assert (=> d!3647 (=> (not res!13332) (not e!12924))))

(declare-fun lt!5680 () (_ BitVec 32))

(assert (=> d!3647 (= res!13332 (validMask!0 lt!5680))))

(declare-datatypes ((tuple2!816 0))(
  ( (tuple2!817 (_1!411 Unit!398) (_2!411 (_ BitVec 32))) )
))
(declare-fun e!12923 () tuple2!816)

(assert (=> d!3647 (= lt!5680 (_2!411 e!12923))))

(declare-fun c!2148 () Bool)

(declare-fun lt!5681 () tuple2!816)

(assert (=> d!3647 (= c!2148 (and (bvsgt (_2!411 lt!5681) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!107 (v!1527 (underlying!83 thiss!938)))) (_2!411 lt!5681)) (bvsge (bvadd (bvand (bvashr (_2!411 lt!5681) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!107 (v!1527 (underlying!83 thiss!938))))))))

(declare-fun Unit!404 () Unit!398)

(declare-fun Unit!405 () Unit!398)

(assert (=> d!3647 (= lt!5681 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!107 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))))) (mask!4648 (v!1527 (underlying!83 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!107 (v!1527 (underlying!83 thiss!938)))) (mask!4648 (v!1527 (underlying!83 thiss!938))))) (tuple2!817 Unit!404 (bvand (bvadd (bvshl (mask!4648 (v!1527 (underlying!83 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!817 Unit!405 (mask!4648 (v!1527 (underlying!83 thiss!938))))))))

(assert (=> d!3647 (validMask!0 (mask!4648 (v!1527 (underlying!83 thiss!938))))))

(assert (=> d!3647 (= (computeNewMask!9 thiss!938 (mask!4648 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (_size!107 (v!1527 (underlying!83 thiss!938)))) lt!5680)))

(declare-fun b!19907 () Bool)

(declare-fun computeNewMaskWhile!5 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!816)

(assert (=> b!19907 (= e!12923 (computeNewMaskWhile!5 (_size!107 (v!1527 (underlying!83 thiss!938))) (_vacant!107 (v!1527 (underlying!83 thiss!938))) (mask!4648 (v!1527 (underlying!83 thiss!938))) (_2!411 lt!5681)))))

(declare-fun b!19908 () Bool)

(declare-fun Unit!406 () Unit!398)

(assert (=> b!19908 (= e!12923 (tuple2!817 Unit!406 (_2!411 lt!5681)))))

(declare-fun b!19909 () Bool)

(assert (=> b!19909 (= e!12924 (bvsle (_size!107 (v!1527 (underlying!83 thiss!938))) (bvadd lt!5680 #b00000000000000000000000000000001)))))

(assert (= (and d!3647 c!2148) b!19907))

(assert (= (and d!3647 (not c!2148)) b!19908))

(assert (= (and d!3647 res!13332) b!19909))

(declare-fun m!13995 () Bool)

(assert (=> d!3647 m!13995))

(declare-fun m!13997 () Bool)

(assert (=> d!3647 m!13997))

(declare-fun m!13999 () Bool)

(assert (=> b!19907 m!13999))

(assert (=> b!19718 d!3647))

(declare-fun mapNonEmpty!904 () Bool)

(declare-fun mapRes!904 () Bool)

(declare-fun tp!3307 () Bool)

(declare-fun e!12930 () Bool)

(assert (=> mapNonEmpty!904 (= mapRes!904 (and tp!3307 e!12930))))

(declare-fun mapRest!904 () (Array (_ BitVec 32) ValueCell!279))

(declare-fun mapKey!904 () (_ BitVec 32))

(declare-fun mapValue!904 () ValueCell!279)

(assert (=> mapNonEmpty!904 (= mapRest!898 (store mapRest!904 mapKey!904 mapValue!904))))

(declare-fun condMapEmpty!904 () Bool)

(declare-fun mapDefault!904 () ValueCell!279)

(assert (=> mapNonEmpty!898 (= condMapEmpty!904 (= mapRest!898 ((as const (Array (_ BitVec 32) ValueCell!279)) mapDefault!904)))))

(declare-fun e!12929 () Bool)

(assert (=> mapNonEmpty!898 (= tp!3297 (and e!12929 mapRes!904))))

(declare-fun b!19917 () Bool)

(assert (=> b!19917 (= e!12929 tp_is_empty!957)))

(declare-fun mapIsEmpty!904 () Bool)

(assert (=> mapIsEmpty!904 mapRes!904))

(declare-fun b!19916 () Bool)

(assert (=> b!19916 (= e!12930 tp_is_empty!957)))

(assert (= (and mapNonEmpty!898 condMapEmpty!904) mapIsEmpty!904))

(assert (= (and mapNonEmpty!898 (not condMapEmpty!904)) mapNonEmpty!904))

(assert (= (and mapNonEmpty!904 ((_ is ValueCellFull!279) mapValue!904)) b!19916))

(assert (= (and mapNonEmpty!898 ((_ is ValueCellFull!279) mapDefault!904)) b!19917))

(declare-fun m!14001 () Bool)

(assert (=> mapNonEmpty!904 m!14001))

(declare-fun b_lambda!1481 () Bool)

(assert (= b_lambda!1479 (or (and b!19714 b_free!693) b_lambda!1481)))

(declare-fun b_lambda!1483 () Bool)

(assert (= b_lambda!1477 (or (and b!19714 b_free!693) b_lambda!1483)))

(check-sat (not bm!968) (not b_next!693) (not b!19894) (not bm!959) (not d!3639) (not d!3637) (not bm!970) (not b!19907) (not bm!953) (not mapNonEmpty!904) (not d!3645) (not bm!966) (not d!3635) (not b!19897) (not b_lambda!1483) (not bm!954) (not b!19855) (not b!19896) (not b!19840) (not bm!958) (not b!19752) tp_is_empty!957 (not d!3647) b_and!1365 (not bm!964) (not b!19753) (not b!19850) (not bm!965) (not bm!955) (not b!19754) (not b!19858) (not b!19851) (not b!19866) (not bm!951) (not b_lambda!1481) (not b!19846) (not bm!956))
(check-sat b_and!1365 (not b_next!693))
