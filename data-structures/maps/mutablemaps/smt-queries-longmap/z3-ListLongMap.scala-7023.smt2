; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89188 () Bool)

(assert start!89188)

(declare-fun b!1022097 () Bool)

(declare-fun b_free!20193 () Bool)

(declare-fun b_next!20193 () Bool)

(assert (=> b!1022097 (= b_free!20193 (not b_next!20193))))

(declare-fun tp!71615 () Bool)

(declare-fun b_and!32409 () Bool)

(assert (=> b!1022097 (= tp!71615 b_and!32409)))

(declare-fun b!1022090 () Bool)

(declare-fun res!684829 () Bool)

(declare-fun e!575781 () Bool)

(assert (=> b!1022090 (=> (not res!684829) (not e!575781))))

(declare-datatypes ((V!36757 0))(
  ( (V!36758 (val!12007 Int)) )
))
(declare-datatypes ((ValueCell!11253 0))(
  ( (ValueCellFull!11253 (v!14577 V!36757)) (EmptyCell!11253) )
))
(declare-datatypes ((array!63854 0))(
  ( (array!63855 (arr!30735 (Array (_ BitVec 32) (_ BitVec 64))) (size!31247 (_ BitVec 32))) )
))
(declare-datatypes ((array!63856 0))(
  ( (array!63857 (arr!30736 (Array (_ BitVec 32) ValueCell!11253)) (size!31248 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5100 0))(
  ( (LongMapFixedSize!5101 (defaultEntry!5902 Int) (mask!29484 (_ BitVec 32)) (extraKeys!5634 (_ BitVec 32)) (zeroValue!5738 V!36757) (minValue!5738 V!36757) (_size!2605 (_ BitVec 32)) (_keys!11044 array!63854) (_values!5925 array!63856) (_vacant!2605 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5100)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022090 (= res!684829 (validMask!0 (mask!29484 thiss!1427)))))

(declare-fun b!1022091 () Bool)

(declare-fun res!684827 () Bool)

(assert (=> b!1022091 (=> (not res!684827) (not e!575781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63854 (_ BitVec 32)) Bool)

(assert (=> b!1022091 (= res!684827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11044 thiss!1427) (mask!29484 thiss!1427)))))

(declare-fun mapIsEmpty!37287 () Bool)

(declare-fun mapRes!37287 () Bool)

(assert (=> mapIsEmpty!37287 mapRes!37287))

(declare-fun b!1022092 () Bool)

(declare-fun e!575783 () Bool)

(declare-fun tp_is_empty!23913 () Bool)

(assert (=> b!1022092 (= e!575783 tp_is_empty!23913)))

(declare-fun mapNonEmpty!37287 () Bool)

(declare-fun tp!71614 () Bool)

(assert (=> mapNonEmpty!37287 (= mapRes!37287 (and tp!71614 e!575783))))

(declare-fun mapRest!37287 () (Array (_ BitVec 32) ValueCell!11253))

(declare-fun mapKey!37287 () (_ BitVec 32))

(declare-fun mapValue!37287 () ValueCell!11253)

(assert (=> mapNonEmpty!37287 (= (arr!30736 (_values!5925 thiss!1427)) (store mapRest!37287 mapKey!37287 mapValue!37287))))

(declare-fun res!684830 () Bool)

(assert (=> start!89188 (=> (not res!684830) (not e!575781))))

(declare-fun valid!1907 (LongMapFixedSize!5100) Bool)

(assert (=> start!89188 (= res!684830 (valid!1907 thiss!1427))))

(assert (=> start!89188 e!575781))

(declare-fun e!575780 () Bool)

(assert (=> start!89188 e!575780))

(assert (=> start!89188 true))

(declare-fun b!1022093 () Bool)

(assert (=> b!1022093 (= e!575781 false)))

(declare-fun lt!450160 () Bool)

(declare-datatypes ((List!21781 0))(
  ( (Nil!21778) (Cons!21777 (h!22975 (_ BitVec 64)) (t!30802 List!21781)) )
))
(declare-fun arrayNoDuplicates!0 (array!63854 (_ BitVec 32) List!21781) Bool)

(assert (=> b!1022093 (= lt!450160 (arrayNoDuplicates!0 (_keys!11044 thiss!1427) #b00000000000000000000000000000000 Nil!21778))))

(declare-fun b!1022094 () Bool)

(declare-fun res!684828 () Bool)

(assert (=> b!1022094 (=> (not res!684828) (not e!575781))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022094 (= res!684828 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1022095 () Bool)

(declare-fun e!575785 () Bool)

(assert (=> b!1022095 (= e!575785 tp_is_empty!23913)))

(declare-fun b!1022096 () Bool)

(declare-fun e!575782 () Bool)

(assert (=> b!1022096 (= e!575782 (and e!575785 mapRes!37287))))

(declare-fun condMapEmpty!37287 () Bool)

(declare-fun mapDefault!37287 () ValueCell!11253)

(assert (=> b!1022096 (= condMapEmpty!37287 (= (arr!30736 (_values!5925 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11253)) mapDefault!37287)))))

(declare-fun array_inv!23691 (array!63854) Bool)

(declare-fun array_inv!23692 (array!63856) Bool)

(assert (=> b!1022097 (= e!575780 (and tp!71615 tp_is_empty!23913 (array_inv!23691 (_keys!11044 thiss!1427)) (array_inv!23692 (_values!5925 thiss!1427)) e!575782))))

(declare-fun b!1022098 () Bool)

(declare-fun res!684831 () Bool)

(assert (=> b!1022098 (=> (not res!684831) (not e!575781))))

(assert (=> b!1022098 (= res!684831 (and (= (size!31248 (_values!5925 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29484 thiss!1427))) (= (size!31247 (_keys!11044 thiss!1427)) (size!31248 (_values!5925 thiss!1427))) (bvsge (mask!29484 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5634 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5634 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5634 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5634 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5634 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5634 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5634 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!89188 res!684830) b!1022094))

(assert (= (and b!1022094 res!684828) b!1022090))

(assert (= (and b!1022090 res!684829) b!1022098))

(assert (= (and b!1022098 res!684831) b!1022091))

(assert (= (and b!1022091 res!684827) b!1022093))

(assert (= (and b!1022096 condMapEmpty!37287) mapIsEmpty!37287))

(assert (= (and b!1022096 (not condMapEmpty!37287)) mapNonEmpty!37287))

(get-info :version)

(assert (= (and mapNonEmpty!37287 ((_ is ValueCellFull!11253) mapValue!37287)) b!1022092))

(assert (= (and b!1022096 ((_ is ValueCellFull!11253) mapDefault!37287)) b!1022095))

(assert (= b!1022097 b!1022096))

(assert (= start!89188 b!1022097))

(declare-fun m!941419 () Bool)

(assert (=> b!1022093 m!941419))

(declare-fun m!941421 () Bool)

(assert (=> start!89188 m!941421))

(declare-fun m!941423 () Bool)

(assert (=> b!1022090 m!941423))

(declare-fun m!941425 () Bool)

(assert (=> b!1022097 m!941425))

(declare-fun m!941427 () Bool)

(assert (=> b!1022097 m!941427))

(declare-fun m!941429 () Bool)

(assert (=> b!1022091 m!941429))

(declare-fun m!941431 () Bool)

(assert (=> mapNonEmpty!37287 m!941431))

(check-sat (not b!1022090) (not b!1022091) tp_is_empty!23913 (not b_next!20193) (not b!1022097) (not start!89188) b_and!32409 (not mapNonEmpty!37287) (not b!1022093))
(check-sat b_and!32409 (not b_next!20193))
