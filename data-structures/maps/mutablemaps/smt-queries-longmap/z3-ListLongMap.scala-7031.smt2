; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89236 () Bool)

(assert start!89236)

(declare-fun b!1022655 () Bool)

(declare-fun b_free!20241 () Bool)

(declare-fun b_next!20241 () Bool)

(assert (=> b!1022655 (= b_free!20241 (not b_next!20241))))

(declare-fun tp!71758 () Bool)

(declare-fun b_and!32481 () Bool)

(assert (=> b!1022655 (= tp!71758 b_and!32481)))

(declare-fun b!1022654 () Bool)

(declare-fun e!576212 () Bool)

(declare-fun tp_is_empty!23961 () Bool)

(assert (=> b!1022654 (= e!576212 tp_is_empty!23961)))

(declare-fun mapIsEmpty!37359 () Bool)

(declare-fun mapRes!37359 () Bool)

(assert (=> mapIsEmpty!37359 mapRes!37359))

(declare-fun e!576217 () Bool)

(declare-fun e!576214 () Bool)

(declare-datatypes ((V!36821 0))(
  ( (V!36822 (val!12031 Int)) )
))
(declare-datatypes ((ValueCell!11277 0))(
  ( (ValueCellFull!11277 (v!14601 V!36821)) (EmptyCell!11277) )
))
(declare-datatypes ((array!63950 0))(
  ( (array!63951 (arr!30783 (Array (_ BitVec 32) (_ BitVec 64))) (size!31295 (_ BitVec 32))) )
))
(declare-datatypes ((array!63952 0))(
  ( (array!63953 (arr!30784 (Array (_ BitVec 32) ValueCell!11277)) (size!31296 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5148 0))(
  ( (LongMapFixedSize!5149 (defaultEntry!5926 Int) (mask!29524 (_ BitVec 32)) (extraKeys!5658 (_ BitVec 32)) (zeroValue!5762 V!36821) (minValue!5762 V!36821) (_size!2629 (_ BitVec 32)) (_keys!11068 array!63950) (_values!5949 array!63952) (_vacant!2629 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5148)

(declare-fun array_inv!23727 (array!63950) Bool)

(declare-fun array_inv!23728 (array!63952) Bool)

(assert (=> b!1022655 (= e!576217 (and tp!71758 tp_is_empty!23961 (array_inv!23727 (_keys!11068 thiss!1427)) (array_inv!23728 (_values!5949 thiss!1427)) e!576214))))

(declare-fun b!1022656 () Bool)

(declare-fun res!685082 () Bool)

(declare-fun e!576213 () Bool)

(assert (=> b!1022656 (=> (not res!685082) (not e!576213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022656 (= res!685082 (validMask!0 (mask!29524 thiss!1427)))))

(declare-fun res!685083 () Bool)

(assert (=> start!89236 (=> (not res!685083) (not e!576213))))

(declare-fun valid!1925 (LongMapFixedSize!5148) Bool)

(assert (=> start!89236 (= res!685083 (valid!1925 thiss!1427))))

(assert (=> start!89236 e!576213))

(assert (=> start!89236 e!576217))

(assert (=> start!89236 true))

(declare-fun b!1022657 () Bool)

(declare-fun e!576216 () Bool)

(assert (=> b!1022657 (= e!576214 (and e!576216 mapRes!37359))))

(declare-fun condMapEmpty!37359 () Bool)

(declare-fun mapDefault!37359 () ValueCell!11277)

(assert (=> b!1022657 (= condMapEmpty!37359 (= (arr!30784 (_values!5949 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11277)) mapDefault!37359)))))

(declare-fun b!1022658 () Bool)

(assert (=> b!1022658 (= e!576213 false)))

(declare-fun lt!450304 () Bool)

(declare-datatypes ((List!21800 0))(
  ( (Nil!21797) (Cons!21796 (h!22994 (_ BitVec 64)) (t!30845 List!21800)) )
))
(declare-fun arrayNoDuplicates!0 (array!63950 (_ BitVec 32) List!21800) Bool)

(assert (=> b!1022658 (= lt!450304 (arrayNoDuplicates!0 (_keys!11068 thiss!1427) #b00000000000000000000000000000000 Nil!21797))))

(declare-fun b!1022659 () Bool)

(declare-fun res!685079 () Bool)

(assert (=> b!1022659 (=> (not res!685079) (not e!576213))))

(assert (=> b!1022659 (= res!685079 (and (= (size!31296 (_values!5949 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29524 thiss!1427))) (= (size!31295 (_keys!11068 thiss!1427)) (size!31296 (_values!5949 thiss!1427))) (bvsge (mask!29524 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5658 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5658 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5658 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5658 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5658 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5658 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5658 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1022660 () Bool)

(declare-fun res!685080 () Bool)

(assert (=> b!1022660 (=> (not res!685080) (not e!576213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63950 (_ BitVec 32)) Bool)

(assert (=> b!1022660 (= res!685080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11068 thiss!1427) (mask!29524 thiss!1427)))))

(declare-fun b!1022661 () Bool)

(declare-fun res!685081 () Bool)

(assert (=> b!1022661 (=> (not res!685081) (not e!576213))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022661 (= res!685081 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!37359 () Bool)

(declare-fun tp!71759 () Bool)

(assert (=> mapNonEmpty!37359 (= mapRes!37359 (and tp!71759 e!576212))))

(declare-fun mapRest!37359 () (Array (_ BitVec 32) ValueCell!11277))

(declare-fun mapValue!37359 () ValueCell!11277)

(declare-fun mapKey!37359 () (_ BitVec 32))

(assert (=> mapNonEmpty!37359 (= (arr!30784 (_values!5949 thiss!1427)) (store mapRest!37359 mapKey!37359 mapValue!37359))))

(declare-fun b!1022662 () Bool)

(assert (=> b!1022662 (= e!576216 tp_is_empty!23961)))

(assert (= (and start!89236 res!685083) b!1022661))

(assert (= (and b!1022661 res!685081) b!1022656))

(assert (= (and b!1022656 res!685082) b!1022659))

(assert (= (and b!1022659 res!685079) b!1022660))

(assert (= (and b!1022660 res!685080) b!1022658))

(assert (= (and b!1022657 condMapEmpty!37359) mapIsEmpty!37359))

(assert (= (and b!1022657 (not condMapEmpty!37359)) mapNonEmpty!37359))

(get-info :version)

(assert (= (and mapNonEmpty!37359 ((_ is ValueCellFull!11277) mapValue!37359)) b!1022654))

(assert (= (and b!1022657 ((_ is ValueCellFull!11277) mapDefault!37359)) b!1022662))

(assert (= b!1022655 b!1022657))

(assert (= start!89236 b!1022655))

(declare-fun m!941827 () Bool)

(assert (=> b!1022656 m!941827))

(declare-fun m!941829 () Bool)

(assert (=> b!1022655 m!941829))

(declare-fun m!941831 () Bool)

(assert (=> b!1022655 m!941831))

(declare-fun m!941833 () Bool)

(assert (=> mapNonEmpty!37359 m!941833))

(declare-fun m!941835 () Bool)

(assert (=> b!1022660 m!941835))

(declare-fun m!941837 () Bool)

(assert (=> start!89236 m!941837))

(declare-fun m!941839 () Bool)

(assert (=> b!1022658 m!941839))

(check-sat (not b!1022658) (not b!1022660) (not b_next!20241) (not mapNonEmpty!37359) (not start!89236) (not b!1022656) tp_is_empty!23961 (not b!1022655) b_and!32481)
(check-sat b_and!32481 (not b_next!20241))
