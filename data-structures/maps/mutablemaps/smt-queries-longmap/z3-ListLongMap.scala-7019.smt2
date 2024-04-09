; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89164 () Bool)

(assert start!89164)

(declare-fun b!1021772 () Bool)

(declare-fun b_free!20169 () Bool)

(declare-fun b_next!20169 () Bool)

(assert (=> b!1021772 (= b_free!20169 (not b_next!20169))))

(declare-fun tp!71542 () Bool)

(declare-fun b_and!32385 () Bool)

(assert (=> b!1021772 (= tp!71542 b_and!32385)))

(declare-fun b!1021766 () Bool)

(declare-fun res!684650 () Bool)

(declare-fun e!575567 () Bool)

(assert (=> b!1021766 (=> (not res!684650) (not e!575567))))

(declare-datatypes ((V!36725 0))(
  ( (V!36726 (val!11995 Int)) )
))
(declare-datatypes ((ValueCell!11241 0))(
  ( (ValueCellFull!11241 (v!14565 V!36725)) (EmptyCell!11241) )
))
(declare-datatypes ((array!63806 0))(
  ( (array!63807 (arr!30711 (Array (_ BitVec 32) (_ BitVec 64))) (size!31223 (_ BitVec 32))) )
))
(declare-datatypes ((array!63808 0))(
  ( (array!63809 (arr!30712 (Array (_ BitVec 32) ValueCell!11241)) (size!31224 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5076 0))(
  ( (LongMapFixedSize!5077 (defaultEntry!5890 Int) (mask!29464 (_ BitVec 32)) (extraKeys!5622 (_ BitVec 32)) (zeroValue!5726 V!36725) (minValue!5726 V!36725) (_size!2593 (_ BitVec 32)) (_keys!11032 array!63806) (_values!5913 array!63808) (_vacant!2593 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5076)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021766 (= res!684650 (validMask!0 (mask!29464 thiss!1427)))))

(declare-fun b!1021767 () Bool)

(assert (=> b!1021767 (= e!575567 false)))

(declare-fun lt!450124 () Bool)

(declare-datatypes ((List!21776 0))(
  ( (Nil!21773) (Cons!21772 (h!22970 (_ BitVec 64)) (t!30797 List!21776)) )
))
(declare-fun arrayNoDuplicates!0 (array!63806 (_ BitVec 32) List!21776) Bool)

(assert (=> b!1021767 (= lt!450124 (arrayNoDuplicates!0 (_keys!11032 thiss!1427) #b00000000000000000000000000000000 Nil!21773))))

(declare-fun b!1021768 () Bool)

(declare-fun e!575569 () Bool)

(declare-fun e!575566 () Bool)

(declare-fun mapRes!37251 () Bool)

(assert (=> b!1021768 (= e!575569 (and e!575566 mapRes!37251))))

(declare-fun condMapEmpty!37251 () Bool)

(declare-fun mapDefault!37251 () ValueCell!11241)

(assert (=> b!1021768 (= condMapEmpty!37251 (= (arr!30712 (_values!5913 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11241)) mapDefault!37251)))))

(declare-fun res!684647 () Bool)

(assert (=> start!89164 (=> (not res!684647) (not e!575567))))

(declare-fun valid!1901 (LongMapFixedSize!5076) Bool)

(assert (=> start!89164 (= res!684647 (valid!1901 thiss!1427))))

(assert (=> start!89164 e!575567))

(declare-fun e!575565 () Bool)

(assert (=> start!89164 e!575565))

(assert (=> start!89164 true))

(declare-fun mapIsEmpty!37251 () Bool)

(assert (=> mapIsEmpty!37251 mapRes!37251))

(declare-fun b!1021769 () Bool)

(declare-fun res!684649 () Bool)

(assert (=> b!1021769 (=> (not res!684649) (not e!575567))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021769 (= res!684649 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021770 () Bool)

(declare-fun res!684651 () Bool)

(assert (=> b!1021770 (=> (not res!684651) (not e!575567))))

(assert (=> b!1021770 (= res!684651 (and (= (size!31224 (_values!5913 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29464 thiss!1427))) (= (size!31223 (_keys!11032 thiss!1427)) (size!31224 (_values!5913 thiss!1427))) (bvsge (mask!29464 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5622 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5622 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5622 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5622 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5622 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5622 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5622 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021771 () Bool)

(declare-fun e!575568 () Bool)

(declare-fun tp_is_empty!23889 () Bool)

(assert (=> b!1021771 (= e!575568 tp_is_empty!23889)))

(declare-fun mapNonEmpty!37251 () Bool)

(declare-fun tp!71543 () Bool)

(assert (=> mapNonEmpty!37251 (= mapRes!37251 (and tp!71543 e!575568))))

(declare-fun mapRest!37251 () (Array (_ BitVec 32) ValueCell!11241))

(declare-fun mapKey!37251 () (_ BitVec 32))

(declare-fun mapValue!37251 () ValueCell!11241)

(assert (=> mapNonEmpty!37251 (= (arr!30712 (_values!5913 thiss!1427)) (store mapRest!37251 mapKey!37251 mapValue!37251))))

(declare-fun array_inv!23679 (array!63806) Bool)

(declare-fun array_inv!23680 (array!63808) Bool)

(assert (=> b!1021772 (= e!575565 (and tp!71542 tp_is_empty!23889 (array_inv!23679 (_keys!11032 thiss!1427)) (array_inv!23680 (_values!5913 thiss!1427)) e!575569))))

(declare-fun b!1021773 () Bool)

(assert (=> b!1021773 (= e!575566 tp_is_empty!23889)))

(declare-fun b!1021774 () Bool)

(declare-fun res!684648 () Bool)

(assert (=> b!1021774 (=> (not res!684648) (not e!575567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63806 (_ BitVec 32)) Bool)

(assert (=> b!1021774 (= res!684648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11032 thiss!1427) (mask!29464 thiss!1427)))))

(assert (= (and start!89164 res!684647) b!1021769))

(assert (= (and b!1021769 res!684649) b!1021766))

(assert (= (and b!1021766 res!684650) b!1021770))

(assert (= (and b!1021770 res!684651) b!1021774))

(assert (= (and b!1021774 res!684648) b!1021767))

(assert (= (and b!1021768 condMapEmpty!37251) mapIsEmpty!37251))

(assert (= (and b!1021768 (not condMapEmpty!37251)) mapNonEmpty!37251))

(get-info :version)

(assert (= (and mapNonEmpty!37251 ((_ is ValueCellFull!11241) mapValue!37251)) b!1021771))

(assert (= (and b!1021768 ((_ is ValueCellFull!11241) mapDefault!37251)) b!1021773))

(assert (= b!1021772 b!1021768))

(assert (= start!89164 b!1021772))

(declare-fun m!941251 () Bool)

(assert (=> b!1021774 m!941251))

(declare-fun m!941253 () Bool)

(assert (=> b!1021772 m!941253))

(declare-fun m!941255 () Bool)

(assert (=> b!1021772 m!941255))

(declare-fun m!941257 () Bool)

(assert (=> mapNonEmpty!37251 m!941257))

(declare-fun m!941259 () Bool)

(assert (=> b!1021767 m!941259))

(declare-fun m!941261 () Bool)

(assert (=> start!89164 m!941261))

(declare-fun m!941263 () Bool)

(assert (=> b!1021766 m!941263))

(check-sat (not b_next!20169) (not b!1021774) (not mapNonEmpty!37251) (not start!89164) b_and!32385 (not b!1021766) (not b!1021772) (not b!1021767) tp_is_empty!23889)
(check-sat b_and!32385 (not b_next!20169))
