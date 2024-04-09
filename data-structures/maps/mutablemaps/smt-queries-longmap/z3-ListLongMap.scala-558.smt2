; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15204 () Bool)

(assert start!15204)

(declare-fun b!146104 () Bool)

(declare-fun b_free!3089 () Bool)

(declare-fun b_next!3089 () Bool)

(assert (=> b!146104 (= b_free!3089 (not b_next!3089))))

(declare-fun tp!11772 () Bool)

(declare-fun b_and!9121 () Bool)

(assert (=> b!146104 (= tp!11772 b_and!9121)))

(declare-fun b!146094 () Bool)

(declare-fun b_free!3091 () Bool)

(declare-fun b_next!3091 () Bool)

(assert (=> b!146094 (= b_free!3091 (not b_next!3091))))

(declare-fun tp!11770 () Bool)

(declare-fun b_and!9123 () Bool)

(assert (=> b!146094 (= tp!11770 b_and!9123)))

(declare-datatypes ((V!3595 0))(
  ( (V!3596 (val!1525 Int)) )
))
(declare-datatypes ((array!4966 0))(
  ( (array!4967 (arr!2344 (Array (_ BitVec 32) (_ BitVec 64))) (size!2620 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1137 0))(
  ( (ValueCellFull!1137 (v!3339 V!3595)) (EmptyCell!1137) )
))
(declare-datatypes ((array!4968 0))(
  ( (array!4969 (arr!2345 (Array (_ BitVec 32) ValueCell!1137)) (size!2621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1182 0))(
  ( (LongMapFixedSize!1183 (defaultEntry!3007 Int) (mask!7379 (_ BitVec 32)) (extraKeys!2752 (_ BitVec 32)) (zeroValue!2852 V!3595) (minValue!2852 V!3595) (_size!640 (_ BitVec 32)) (_keys!4776 array!4966) (_values!2990 array!4968) (_vacant!640 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1182)

(declare-fun tp_is_empty!2961 () Bool)

(declare-fun e!95224 () Bool)

(declare-fun e!95217 () Bool)

(declare-fun array_inv!1453 (array!4966) Bool)

(declare-fun array_inv!1454 (array!4968) Bool)

(assert (=> b!146094 (= e!95224 (and tp!11770 tp_is_empty!2961 (array_inv!1453 (_keys!4776 newMap!16)) (array_inv!1454 (_values!2990 newMap!16)) e!95217))))

(declare-fun b!146095 () Bool)

(declare-fun e!95223 () Bool)

(declare-fun e!95225 () Bool)

(assert (=> b!146095 (= e!95223 e!95225)))

(declare-fun res!69545 () Bool)

(assert (=> b!146095 (=> (not res!69545) (not e!95225))))

(declare-datatypes ((Cell!966 0))(
  ( (Cell!967 (v!3340 LongMapFixedSize!1182)) )
))
(declare-datatypes ((LongMap!966 0))(
  ( (LongMap!967 (underlying!494 Cell!966)) )
))
(declare-fun thiss!992 () LongMap!966)

(declare-datatypes ((tuple2!2720 0))(
  ( (tuple2!2721 (_1!1370 (_ BitVec 64)) (_2!1370 V!3595)) )
))
(declare-datatypes ((List!1785 0))(
  ( (Nil!1782) (Cons!1781 (h!2389 tuple2!2720) (t!6466 List!1785)) )
))
(declare-datatypes ((ListLongMap!1767 0))(
  ( (ListLongMap!1768 (toList!899 List!1785)) )
))
(declare-fun lt!76854 () ListLongMap!1767)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!941 (ListLongMap!1767 (_ BitVec 64)) Bool)

(assert (=> b!146095 (= res!69545 (contains!941 lt!76854 (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2722 0))(
  ( (tuple2!2723 (_1!1371 Bool) (_2!1371 LongMapFixedSize!1182)) )
))
(declare-fun lt!76853 () tuple2!2722)

(declare-fun update!218 (LongMapFixedSize!1182 (_ BitVec 64) V!3595) tuple2!2722)

(declare-fun get!1567 (ValueCell!1137 V!3595) V!3595)

(declare-fun dynLambda!451 (Int (_ BitVec 64)) V!3595)

(assert (=> b!146095 (= lt!76853 (update!218 newMap!16 (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) (get!1567 (select (arr!2345 (_values!2990 (v!3340 (underlying!494 thiss!992)))) from!355) (dynLambda!451 (defaultEntry!3007 (v!3340 (underlying!494 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!146096 () Bool)

(declare-fun e!95222 () Bool)

(declare-fun e!95226 () Bool)

(declare-fun mapRes!4956 () Bool)

(assert (=> b!146096 (= e!95222 (and e!95226 mapRes!4956))))

(declare-fun condMapEmpty!4956 () Bool)

(declare-fun mapDefault!4955 () ValueCell!1137)

(assert (=> b!146096 (= condMapEmpty!4956 (= (arr!2345 (_values!2990 (v!3340 (underlying!494 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1137)) mapDefault!4955)))))

(declare-fun b!146097 () Bool)

(declare-fun e!95221 () Bool)

(declare-fun e!95215 () Bool)

(assert (=> b!146097 (= e!95221 e!95215)))

(declare-fun res!69548 () Bool)

(declare-fun e!95218 () Bool)

(assert (=> start!15204 (=> (not res!69548) (not e!95218))))

(declare-fun valid!574 (LongMap!966) Bool)

(assert (=> start!15204 (= res!69548 (valid!574 thiss!992))))

(assert (=> start!15204 e!95218))

(declare-fun e!95213 () Bool)

(assert (=> start!15204 e!95213))

(assert (=> start!15204 true))

(assert (=> start!15204 e!95224))

(declare-fun b!146098 () Bool)

(assert (=> b!146098 (= e!95226 tp_is_empty!2961)))

(declare-fun mapIsEmpty!4955 () Bool)

(assert (=> mapIsEmpty!4955 mapRes!4956))

(declare-fun b!146099 () Bool)

(declare-fun res!69547 () Bool)

(assert (=> b!146099 (=> (not res!69547) (not e!95218))))

(assert (=> b!146099 (= res!69547 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7379 newMap!16)) (_size!640 (v!3340 (underlying!494 thiss!992)))))))

(declare-fun b!146100 () Bool)

(assert (=> b!146100 (= e!95225 (not true))))

(assert (=> b!146100 false))

(declare-datatypes ((Unit!4619 0))(
  ( (Unit!4620) )
))
(declare-fun lt!76851 () Unit!4619)

(declare-datatypes ((List!1786 0))(
  ( (Nil!1783) (Cons!1782 (h!2390 (_ BitVec 64)) (t!6467 List!1786)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4966 (_ BitVec 32) (_ BitVec 64) List!1786) Unit!4619)

(assert (=> b!146100 (= lt!76851 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4776 (v!3340 (underlying!494 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) (Cons!1782 (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) Nil!1783)))))

(declare-fun arrayNoDuplicates!0 (array!4966 (_ BitVec 32) List!1786) Bool)

(assert (=> b!146100 (arrayNoDuplicates!0 (_keys!4776 (v!3340 (underlying!494 thiss!992))) from!355 Nil!1783)))

(declare-fun lt!76850 () Unit!4619)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4966 (_ BitVec 32) (_ BitVec 32)) Unit!4619)

(assert (=> b!146100 (= lt!76850 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4776 (v!3340 (underlying!494 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146100 (arrayContainsKey!0 (_keys!4776 (v!3340 (underlying!494 thiss!992))) (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76849 () Unit!4619)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!152 (array!4966 array!4968 (_ BitVec 32) (_ BitVec 32) V!3595 V!3595 (_ BitVec 64) (_ BitVec 32) Int) Unit!4619)

(assert (=> b!146100 (= lt!76849 (lemmaListMapContainsThenArrayContainsFrom!152 (_keys!4776 (v!3340 (underlying!494 thiss!992))) (_values!2990 (v!3340 (underlying!494 thiss!992))) (mask!7379 (v!3340 (underlying!494 thiss!992))) (extraKeys!2752 (v!3340 (underlying!494 thiss!992))) (zeroValue!2852 (v!3340 (underlying!494 thiss!992))) (minValue!2852 (v!3340 (underlying!494 thiss!992))) (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3007 (v!3340 (underlying!494 thiss!992)))))))

(declare-fun mapIsEmpty!4956 () Bool)

(declare-fun mapRes!4955 () Bool)

(assert (=> mapIsEmpty!4956 mapRes!4955))

(declare-fun b!146101 () Bool)

(declare-fun e!95219 () Bool)

(assert (=> b!146101 (= e!95219 tp_is_empty!2961)))

(declare-fun mapNonEmpty!4955 () Bool)

(declare-fun tp!11769 () Bool)

(declare-fun e!95214 () Bool)

(assert (=> mapNonEmpty!4955 (= mapRes!4956 (and tp!11769 e!95214))))

(declare-fun mapRest!4955 () (Array (_ BitVec 32) ValueCell!1137))

(declare-fun mapKey!4955 () (_ BitVec 32))

(declare-fun mapValue!4956 () ValueCell!1137)

(assert (=> mapNonEmpty!4955 (= (arr!2345 (_values!2990 (v!3340 (underlying!494 thiss!992)))) (store mapRest!4955 mapKey!4955 mapValue!4956))))

(declare-fun b!146102 () Bool)

(declare-fun res!69546 () Bool)

(assert (=> b!146102 (=> (not res!69546) (not e!95218))))

(declare-fun valid!575 (LongMapFixedSize!1182) Bool)

(assert (=> b!146102 (= res!69546 (valid!575 newMap!16))))

(declare-fun b!146103 () Bool)

(assert (=> b!146103 (= e!95218 e!95223)))

(declare-fun res!69544 () Bool)

(assert (=> b!146103 (=> (not res!69544) (not e!95223))))

(declare-fun lt!76852 () ListLongMap!1767)

(assert (=> b!146103 (= res!69544 (and (= lt!76852 lt!76854) (not (= (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2344 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1457 (LongMapFixedSize!1182) ListLongMap!1767)

(assert (=> b!146103 (= lt!76854 (map!1457 newMap!16))))

(declare-fun getCurrentListMap!564 (array!4966 array!4968 (_ BitVec 32) (_ BitVec 32) V!3595 V!3595 (_ BitVec 32) Int) ListLongMap!1767)

(assert (=> b!146103 (= lt!76852 (getCurrentListMap!564 (_keys!4776 (v!3340 (underlying!494 thiss!992))) (_values!2990 (v!3340 (underlying!494 thiss!992))) (mask!7379 (v!3340 (underlying!494 thiss!992))) (extraKeys!2752 (v!3340 (underlying!494 thiss!992))) (zeroValue!2852 (v!3340 (underlying!494 thiss!992))) (minValue!2852 (v!3340 (underlying!494 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3007 (v!3340 (underlying!494 thiss!992)))))))

(assert (=> b!146104 (= e!95215 (and tp!11772 tp_is_empty!2961 (array_inv!1453 (_keys!4776 (v!3340 (underlying!494 thiss!992)))) (array_inv!1454 (_values!2990 (v!3340 (underlying!494 thiss!992)))) e!95222))))

(declare-fun b!146105 () Bool)

(assert (=> b!146105 (= e!95214 tp_is_empty!2961)))

(declare-fun b!146106 () Bool)

(declare-fun e!95216 () Bool)

(assert (=> b!146106 (= e!95216 tp_is_empty!2961)))

(declare-fun b!146107 () Bool)

(declare-fun res!69549 () Bool)

(assert (=> b!146107 (=> (not res!69549) (not e!95218))))

(assert (=> b!146107 (= res!69549 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2620 (_keys!4776 (v!3340 (underlying!494 thiss!992)))))))))

(declare-fun mapNonEmpty!4956 () Bool)

(declare-fun tp!11771 () Bool)

(assert (=> mapNonEmpty!4956 (= mapRes!4955 (and tp!11771 e!95216))))

(declare-fun mapRest!4956 () (Array (_ BitVec 32) ValueCell!1137))

(declare-fun mapKey!4956 () (_ BitVec 32))

(declare-fun mapValue!4955 () ValueCell!1137)

(assert (=> mapNonEmpty!4956 (= (arr!2345 (_values!2990 newMap!16)) (store mapRest!4956 mapKey!4956 mapValue!4955))))

(declare-fun b!146108 () Bool)

(assert (=> b!146108 (= e!95217 (and e!95219 mapRes!4955))))

(declare-fun condMapEmpty!4955 () Bool)

(declare-fun mapDefault!4956 () ValueCell!1137)

(assert (=> b!146108 (= condMapEmpty!4955 (= (arr!2345 (_values!2990 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1137)) mapDefault!4956)))))

(declare-fun b!146109 () Bool)

(assert (=> b!146109 (= e!95213 e!95221)))

(assert (= (and start!15204 res!69548) b!146107))

(assert (= (and b!146107 res!69549) b!146102))

(assert (= (and b!146102 res!69546) b!146099))

(assert (= (and b!146099 res!69547) b!146103))

(assert (= (and b!146103 res!69544) b!146095))

(assert (= (and b!146095 res!69545) b!146100))

(assert (= (and b!146096 condMapEmpty!4956) mapIsEmpty!4955))

(assert (= (and b!146096 (not condMapEmpty!4956)) mapNonEmpty!4955))

(get-info :version)

(assert (= (and mapNonEmpty!4955 ((_ is ValueCellFull!1137) mapValue!4956)) b!146105))

(assert (= (and b!146096 ((_ is ValueCellFull!1137) mapDefault!4955)) b!146098))

(assert (= b!146104 b!146096))

(assert (= b!146097 b!146104))

(assert (= b!146109 b!146097))

(assert (= start!15204 b!146109))

(assert (= (and b!146108 condMapEmpty!4955) mapIsEmpty!4956))

(assert (= (and b!146108 (not condMapEmpty!4955)) mapNonEmpty!4956))

(assert (= (and mapNonEmpty!4956 ((_ is ValueCellFull!1137) mapValue!4955)) b!146106))

(assert (= (and b!146108 ((_ is ValueCellFull!1137) mapDefault!4956)) b!146101))

(assert (= b!146094 b!146108))

(assert (= start!15204 b!146094))

(declare-fun b_lambda!6575 () Bool)

(assert (=> (not b_lambda!6575) (not b!146095)))

(declare-fun t!6463 () Bool)

(declare-fun tb!2641 () Bool)

(assert (=> (and b!146104 (= (defaultEntry!3007 (v!3340 (underlying!494 thiss!992))) (defaultEntry!3007 (v!3340 (underlying!494 thiss!992)))) t!6463) tb!2641))

(declare-fun result!4313 () Bool)

(assert (=> tb!2641 (= result!4313 tp_is_empty!2961)))

(assert (=> b!146095 t!6463))

(declare-fun b_and!9125 () Bool)

(assert (= b_and!9121 (and (=> t!6463 result!4313) b_and!9125)))

(declare-fun tb!2643 () Bool)

(declare-fun t!6465 () Bool)

(assert (=> (and b!146094 (= (defaultEntry!3007 newMap!16) (defaultEntry!3007 (v!3340 (underlying!494 thiss!992)))) t!6465) tb!2643))

(declare-fun result!4317 () Bool)

(assert (= result!4317 result!4313))

(assert (=> b!146095 t!6465))

(declare-fun b_and!9127 () Bool)

(assert (= b_and!9123 (and (=> t!6465 result!4317) b_and!9127)))

(declare-fun m!176105 () Bool)

(assert (=> b!146102 m!176105))

(declare-fun m!176107 () Bool)

(assert (=> b!146103 m!176107))

(declare-fun m!176109 () Bool)

(assert (=> b!146103 m!176109))

(declare-fun m!176111 () Bool)

(assert (=> b!146103 m!176111))

(declare-fun m!176113 () Bool)

(assert (=> mapNonEmpty!4956 m!176113))

(declare-fun m!176115 () Bool)

(assert (=> b!146100 m!176115))

(declare-fun m!176117 () Bool)

(assert (=> b!146100 m!176117))

(assert (=> b!146100 m!176107))

(declare-fun m!176119 () Bool)

(assert (=> b!146100 m!176119))

(assert (=> b!146100 m!176107))

(assert (=> b!146100 m!176107))

(declare-fun m!176121 () Bool)

(assert (=> b!146100 m!176121))

(assert (=> b!146100 m!176107))

(declare-fun m!176123 () Bool)

(assert (=> b!146100 m!176123))

(declare-fun m!176125 () Bool)

(assert (=> mapNonEmpty!4955 m!176125))

(declare-fun m!176127 () Bool)

(assert (=> b!146095 m!176127))

(declare-fun m!176129 () Bool)

(assert (=> b!146095 m!176129))

(declare-fun m!176131 () Bool)

(assert (=> b!146095 m!176131))

(assert (=> b!146095 m!176107))

(assert (=> b!146095 m!176107))

(declare-fun m!176133 () Bool)

(assert (=> b!146095 m!176133))

(assert (=> b!146095 m!176129))

(assert (=> b!146095 m!176107))

(assert (=> b!146095 m!176131))

(declare-fun m!176135 () Bool)

(assert (=> b!146095 m!176135))

(assert (=> b!146095 m!176127))

(declare-fun m!176137 () Bool)

(assert (=> b!146104 m!176137))

(declare-fun m!176139 () Bool)

(assert (=> b!146104 m!176139))

(declare-fun m!176141 () Bool)

(assert (=> b!146094 m!176141))

(declare-fun m!176143 () Bool)

(assert (=> b!146094 m!176143))

(declare-fun m!176145 () Bool)

(assert (=> start!15204 m!176145))

(check-sat (not b!146095) (not b_next!3089) (not b_next!3091) (not start!15204) (not b!146103) (not b!146094) (not b_lambda!6575) tp_is_empty!2961 (not mapNonEmpty!4955) b_and!9125 (not b!146104) (not b!146102) b_and!9127 (not mapNonEmpty!4956) (not b!146100))
(check-sat b_and!9125 b_and!9127 (not b_next!3089) (not b_next!3091))
