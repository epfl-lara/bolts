; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89158 () Bool)

(assert start!89158)

(declare-fun b!1021688 () Bool)

(declare-fun b_free!20163 () Bool)

(declare-fun b_next!20163 () Bool)

(assert (=> b!1021688 (= b_free!20163 (not b_next!20163))))

(declare-fun tp!71525 () Bool)

(declare-fun b_and!32379 () Bool)

(assert (=> b!1021688 (= tp!71525 b_and!32379)))

(declare-fun b!1021685 () Bool)

(declare-fun res!684602 () Bool)

(declare-fun e!575512 () Bool)

(assert (=> b!1021685 (=> (not res!684602) (not e!575512))))

(declare-datatypes ((V!36717 0))(
  ( (V!36718 (val!11992 Int)) )
))
(declare-datatypes ((ValueCell!11238 0))(
  ( (ValueCellFull!11238 (v!14562 V!36717)) (EmptyCell!11238) )
))
(declare-datatypes ((array!63794 0))(
  ( (array!63795 (arr!30705 (Array (_ BitVec 32) (_ BitVec 64))) (size!31217 (_ BitVec 32))) )
))
(declare-datatypes ((array!63796 0))(
  ( (array!63797 (arr!30706 (Array (_ BitVec 32) ValueCell!11238)) (size!31218 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5070 0))(
  ( (LongMapFixedSize!5071 (defaultEntry!5887 Int) (mask!29459 (_ BitVec 32)) (extraKeys!5619 (_ BitVec 32)) (zeroValue!5723 V!36717) (minValue!5723 V!36717) (_size!2590 (_ BitVec 32)) (_keys!11029 array!63794) (_values!5910 array!63796) (_vacant!2590 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5070)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63794 (_ BitVec 32)) Bool)

(assert (=> b!1021685 (= res!684602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11029 thiss!1427) (mask!29459 thiss!1427)))))

(declare-fun b!1021686 () Bool)

(declare-fun e!575514 () Bool)

(declare-fun tp_is_empty!23883 () Bool)

(assert (=> b!1021686 (= e!575514 tp_is_empty!23883)))

(declare-fun b!1021687 () Bool)

(declare-fun res!684606 () Bool)

(assert (=> b!1021687 (=> (not res!684606) (not e!575512))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021687 (= res!684606 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!37242 () Bool)

(declare-fun mapRes!37242 () Bool)

(declare-fun tp!71524 () Bool)

(declare-fun e!575515 () Bool)

(assert (=> mapNonEmpty!37242 (= mapRes!37242 (and tp!71524 e!575515))))

(declare-fun mapValue!37242 () ValueCell!11238)

(declare-fun mapKey!37242 () (_ BitVec 32))

(declare-fun mapRest!37242 () (Array (_ BitVec 32) ValueCell!11238))

(assert (=> mapNonEmpty!37242 (= (arr!30706 (_values!5910 thiss!1427)) (store mapRest!37242 mapKey!37242 mapValue!37242))))

(declare-fun res!684605 () Bool)

(assert (=> start!89158 (=> (not res!684605) (not e!575512))))

(declare-fun valid!1900 (LongMapFixedSize!5070) Bool)

(assert (=> start!89158 (= res!684605 (valid!1900 thiss!1427))))

(assert (=> start!89158 e!575512))

(declare-fun e!575511 () Bool)

(assert (=> start!89158 e!575511))

(assert (=> start!89158 true))

(declare-fun e!575513 () Bool)

(declare-fun array_inv!23675 (array!63794) Bool)

(declare-fun array_inv!23676 (array!63796) Bool)

(assert (=> b!1021688 (= e!575511 (and tp!71525 tp_is_empty!23883 (array_inv!23675 (_keys!11029 thiss!1427)) (array_inv!23676 (_values!5910 thiss!1427)) e!575513))))

(declare-fun b!1021689 () Bool)

(assert (=> b!1021689 (= e!575512 false)))

(declare-fun lt!450115 () Bool)

(declare-datatypes ((List!21775 0))(
  ( (Nil!21772) (Cons!21771 (h!22969 (_ BitVec 64)) (t!30796 List!21775)) )
))
(declare-fun arrayNoDuplicates!0 (array!63794 (_ BitVec 32) List!21775) Bool)

(assert (=> b!1021689 (= lt!450115 (arrayNoDuplicates!0 (_keys!11029 thiss!1427) #b00000000000000000000000000000000 Nil!21772))))

(declare-fun b!1021690 () Bool)

(declare-fun res!684603 () Bool)

(assert (=> b!1021690 (=> (not res!684603) (not e!575512))))

(assert (=> b!1021690 (= res!684603 (and (= (size!31218 (_values!5910 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29459 thiss!1427))) (= (size!31217 (_keys!11029 thiss!1427)) (size!31218 (_values!5910 thiss!1427))) (bvsge (mask!29459 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5619 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5619 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5619 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5619 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5619 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5619 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5619 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1021691 () Bool)

(assert (=> b!1021691 (= e!575515 tp_is_empty!23883)))

(declare-fun b!1021692 () Bool)

(declare-fun res!684604 () Bool)

(assert (=> b!1021692 (=> (not res!684604) (not e!575512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021692 (= res!684604 (validMask!0 (mask!29459 thiss!1427)))))

(declare-fun mapIsEmpty!37242 () Bool)

(assert (=> mapIsEmpty!37242 mapRes!37242))

(declare-fun b!1021693 () Bool)

(assert (=> b!1021693 (= e!575513 (and e!575514 mapRes!37242))))

(declare-fun condMapEmpty!37242 () Bool)

(declare-fun mapDefault!37242 () ValueCell!11238)

(assert (=> b!1021693 (= condMapEmpty!37242 (= (arr!30706 (_values!5910 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11238)) mapDefault!37242)))))

(assert (= (and start!89158 res!684605) b!1021687))

(assert (= (and b!1021687 res!684606) b!1021692))

(assert (= (and b!1021692 res!684604) b!1021690))

(assert (= (and b!1021690 res!684603) b!1021685))

(assert (= (and b!1021685 res!684602) b!1021689))

(assert (= (and b!1021693 condMapEmpty!37242) mapIsEmpty!37242))

(assert (= (and b!1021693 (not condMapEmpty!37242)) mapNonEmpty!37242))

(get-info :version)

(assert (= (and mapNonEmpty!37242 ((_ is ValueCellFull!11238) mapValue!37242)) b!1021691))

(assert (= (and b!1021693 ((_ is ValueCellFull!11238) mapDefault!37242)) b!1021686))

(assert (= b!1021688 b!1021693))

(assert (= start!89158 b!1021688))

(declare-fun m!941209 () Bool)

(assert (=> b!1021685 m!941209))

(declare-fun m!941211 () Bool)

(assert (=> mapNonEmpty!37242 m!941211))

(declare-fun m!941213 () Bool)

(assert (=> b!1021688 m!941213))

(declare-fun m!941215 () Bool)

(assert (=> b!1021688 m!941215))

(declare-fun m!941217 () Bool)

(assert (=> start!89158 m!941217))

(declare-fun m!941219 () Bool)

(assert (=> b!1021692 m!941219))

(declare-fun m!941221 () Bool)

(assert (=> b!1021689 m!941221))

(check-sat (not b!1021685) (not start!89158) (not b!1021692) (not b_next!20163) tp_is_empty!23883 b_and!32379 (not b!1021689) (not b!1021688) (not mapNonEmpty!37242))
(check-sat b_and!32379 (not b_next!20163))
