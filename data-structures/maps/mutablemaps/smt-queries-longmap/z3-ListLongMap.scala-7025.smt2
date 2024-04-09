; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89200 () Bool)

(assert start!89200)

(declare-fun b!1022257 () Bool)

(declare-fun b_free!20205 () Bool)

(declare-fun b_next!20205 () Bool)

(assert (=> b!1022257 (= b_free!20205 (not b_next!20205))))

(declare-fun tp!71651 () Bool)

(declare-fun b_and!32421 () Bool)

(assert (=> b!1022257 (= tp!71651 b_and!32421)))

(declare-fun b!1022252 () Bool)

(declare-fun res!684917 () Bool)

(declare-fun e!575889 () Bool)

(assert (=> b!1022252 (=> (not res!684917) (not e!575889))))

(declare-datatypes ((V!36773 0))(
  ( (V!36774 (val!12013 Int)) )
))
(declare-datatypes ((ValueCell!11259 0))(
  ( (ValueCellFull!11259 (v!14583 V!36773)) (EmptyCell!11259) )
))
(declare-datatypes ((array!63878 0))(
  ( (array!63879 (arr!30747 (Array (_ BitVec 32) (_ BitVec 64))) (size!31259 (_ BitVec 32))) )
))
(declare-datatypes ((array!63880 0))(
  ( (array!63881 (arr!30748 (Array (_ BitVec 32) ValueCell!11259)) (size!31260 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5112 0))(
  ( (LongMapFixedSize!5113 (defaultEntry!5908 Int) (mask!29494 (_ BitVec 32)) (extraKeys!5640 (_ BitVec 32)) (zeroValue!5744 V!36773) (minValue!5744 V!36773) (_size!2611 (_ BitVec 32)) (_keys!11050 array!63878) (_values!5931 array!63880) (_vacant!2611 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5112)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63878 (_ BitVec 32)) Bool)

(assert (=> b!1022252 (= res!684917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11050 thiss!1427) (mask!29494 thiss!1427)))))

(declare-fun b!1022253 () Bool)

(declare-fun res!684920 () Bool)

(assert (=> b!1022253 (=> (not res!684920) (not e!575889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022253 (= res!684920 (validMask!0 (mask!29494 thiss!1427)))))

(declare-fun b!1022254 () Bool)

(declare-fun e!575890 () Bool)

(declare-fun e!575888 () Bool)

(declare-fun mapRes!37305 () Bool)

(assert (=> b!1022254 (= e!575890 (and e!575888 mapRes!37305))))

(declare-fun condMapEmpty!37305 () Bool)

(declare-fun mapDefault!37305 () ValueCell!11259)

(assert (=> b!1022254 (= condMapEmpty!37305 (= (arr!30748 (_values!5931 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11259)) mapDefault!37305)))))

(declare-fun b!1022255 () Bool)

(declare-fun res!684921 () Bool)

(assert (=> b!1022255 (=> (not res!684921) (not e!575889))))

(assert (=> b!1022255 (= res!684921 (and (= (size!31260 (_values!5931 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29494 thiss!1427))) (= (size!31259 (_keys!11050 thiss!1427)) (size!31260 (_values!5931 thiss!1427))) (bvsge (mask!29494 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5640 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5640 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5640 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5640 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5640 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5640 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5640 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37305 () Bool)

(assert (=> mapIsEmpty!37305 mapRes!37305))

(declare-fun b!1022256 () Bool)

(declare-fun res!684918 () Bool)

(assert (=> b!1022256 (=> (not res!684918) (not e!575889))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022256 (= res!684918 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun tp_is_empty!23925 () Bool)

(declare-fun e!575891 () Bool)

(declare-fun array_inv!23703 (array!63878) Bool)

(declare-fun array_inv!23704 (array!63880) Bool)

(assert (=> b!1022257 (= e!575891 (and tp!71651 tp_is_empty!23925 (array_inv!23703 (_keys!11050 thiss!1427)) (array_inv!23704 (_values!5931 thiss!1427)) e!575890))))

(declare-fun mapNonEmpty!37305 () Bool)

(declare-fun tp!71650 () Bool)

(declare-fun e!575892 () Bool)

(assert (=> mapNonEmpty!37305 (= mapRes!37305 (and tp!71650 e!575892))))

(declare-fun mapValue!37305 () ValueCell!11259)

(declare-fun mapKey!37305 () (_ BitVec 32))

(declare-fun mapRest!37305 () (Array (_ BitVec 32) ValueCell!11259))

(assert (=> mapNonEmpty!37305 (= (arr!30748 (_values!5931 thiss!1427)) (store mapRest!37305 mapKey!37305 mapValue!37305))))

(declare-fun b!1022258 () Bool)

(assert (=> b!1022258 (= e!575889 false)))

(declare-fun lt!450178 () Bool)

(declare-datatypes ((List!21787 0))(
  ( (Nil!21784) (Cons!21783 (h!22981 (_ BitVec 64)) (t!30808 List!21787)) )
))
(declare-fun arrayNoDuplicates!0 (array!63878 (_ BitVec 32) List!21787) Bool)

(assert (=> b!1022258 (= lt!450178 (arrayNoDuplicates!0 (_keys!11050 thiss!1427) #b00000000000000000000000000000000 Nil!21784))))

(declare-fun res!684919 () Bool)

(assert (=> start!89200 (=> (not res!684919) (not e!575889))))

(declare-fun valid!1912 (LongMapFixedSize!5112) Bool)

(assert (=> start!89200 (= res!684919 (valid!1912 thiss!1427))))

(assert (=> start!89200 e!575889))

(assert (=> start!89200 e!575891))

(assert (=> start!89200 true))

(declare-fun b!1022259 () Bool)

(assert (=> b!1022259 (= e!575892 tp_is_empty!23925)))

(declare-fun b!1022260 () Bool)

(assert (=> b!1022260 (= e!575888 tp_is_empty!23925)))

(assert (= (and start!89200 res!684919) b!1022256))

(assert (= (and b!1022256 res!684918) b!1022253))

(assert (= (and b!1022253 res!684920) b!1022255))

(assert (= (and b!1022255 res!684921) b!1022252))

(assert (= (and b!1022252 res!684917) b!1022258))

(assert (= (and b!1022254 condMapEmpty!37305) mapIsEmpty!37305))

(assert (= (and b!1022254 (not condMapEmpty!37305)) mapNonEmpty!37305))

(get-info :version)

(assert (= (and mapNonEmpty!37305 ((_ is ValueCellFull!11259) mapValue!37305)) b!1022259))

(assert (= (and b!1022254 ((_ is ValueCellFull!11259) mapDefault!37305)) b!1022260))

(assert (= b!1022257 b!1022254))

(assert (= start!89200 b!1022257))

(declare-fun m!941503 () Bool)

(assert (=> start!89200 m!941503))

(declare-fun m!941505 () Bool)

(assert (=> b!1022257 m!941505))

(declare-fun m!941507 () Bool)

(assert (=> b!1022257 m!941507))

(declare-fun m!941509 () Bool)

(assert (=> mapNonEmpty!37305 m!941509))

(declare-fun m!941511 () Bool)

(assert (=> b!1022258 m!941511))

(declare-fun m!941513 () Bool)

(assert (=> b!1022253 m!941513))

(declare-fun m!941515 () Bool)

(assert (=> b!1022252 m!941515))

(check-sat tp_is_empty!23925 (not start!89200) (not b!1022253) (not mapNonEmpty!37305) (not b!1022257) (not b!1022252) (not b_next!20205) (not b!1022258) b_and!32421)
(check-sat b_and!32421 (not b_next!20205))
