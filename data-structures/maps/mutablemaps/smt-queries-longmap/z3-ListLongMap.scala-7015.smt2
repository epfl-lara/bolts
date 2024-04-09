; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89140 () Bool)

(assert start!89140)

(declare-fun b!1021444 () Bool)

(declare-fun b_free!20145 () Bool)

(declare-fun b_next!20145 () Bool)

(assert (=> b!1021444 (= b_free!20145 (not b_next!20145))))

(declare-fun tp!71470 () Bool)

(declare-fun b_and!32361 () Bool)

(assert (=> b!1021444 (= tp!71470 b_and!32361)))

(declare-fun mapNonEmpty!37215 () Bool)

(declare-fun mapRes!37215 () Bool)

(declare-fun tp!71471 () Bool)

(declare-fun e!575353 () Bool)

(assert (=> mapNonEmpty!37215 (= mapRes!37215 (and tp!71471 e!575353))))

(declare-datatypes ((V!36693 0))(
  ( (V!36694 (val!11983 Int)) )
))
(declare-datatypes ((ValueCell!11229 0))(
  ( (ValueCellFull!11229 (v!14553 V!36693)) (EmptyCell!11229) )
))
(declare-fun mapValue!37215 () ValueCell!11229)

(declare-fun mapRest!37215 () (Array (_ BitVec 32) ValueCell!11229))

(declare-fun mapKey!37215 () (_ BitVec 32))

(declare-datatypes ((array!63758 0))(
  ( (array!63759 (arr!30687 (Array (_ BitVec 32) (_ BitVec 64))) (size!31199 (_ BitVec 32))) )
))
(declare-datatypes ((array!63760 0))(
  ( (array!63761 (arr!30688 (Array (_ BitVec 32) ValueCell!11229)) (size!31200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5052 0))(
  ( (LongMapFixedSize!5053 (defaultEntry!5878 Int) (mask!29444 (_ BitVec 32)) (extraKeys!5610 (_ BitVec 32)) (zeroValue!5714 V!36693) (minValue!5714 V!36693) (_size!2581 (_ BitVec 32)) (_keys!11020 array!63758) (_values!5901 array!63760) (_vacant!2581 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5052)

(assert (=> mapNonEmpty!37215 (= (arr!30688 (_values!5901 thiss!1427)) (store mapRest!37215 mapKey!37215 mapValue!37215))))

(declare-fun b!1021442 () Bool)

(declare-fun res!684467 () Bool)

(declare-fun e!575349 () Bool)

(assert (=> b!1021442 (=> (not res!684467) (not e!575349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021442 (= res!684467 (validMask!0 (mask!29444 thiss!1427)))))

(declare-fun b!1021443 () Bool)

(declare-fun res!684470 () Bool)

(assert (=> b!1021443 (=> (not res!684470) (not e!575349))))

(assert (=> b!1021443 (= res!684470 (and (= (size!31200 (_values!5901 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29444 thiss!1427))) (= (size!31199 (_keys!11020 thiss!1427)) (size!31200 (_values!5901 thiss!1427))) (bvsge (mask!29444 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5610 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5610 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5610 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5610 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5610 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5610 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5610 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!575348 () Bool)

(declare-fun e!575350 () Bool)

(declare-fun tp_is_empty!23865 () Bool)

(declare-fun array_inv!23661 (array!63758) Bool)

(declare-fun array_inv!23662 (array!63760) Bool)

(assert (=> b!1021444 (= e!575350 (and tp!71470 tp_is_empty!23865 (array_inv!23661 (_keys!11020 thiss!1427)) (array_inv!23662 (_values!5901 thiss!1427)) e!575348))))

(declare-fun b!1021445 () Bool)

(assert (=> b!1021445 (= e!575353 tp_is_empty!23865)))

(declare-fun b!1021446 () Bool)

(declare-fun e!575351 () Bool)

(assert (=> b!1021446 (= e!575351 tp_is_empty!23865)))

(declare-fun b!1021447 () Bool)

(assert (=> b!1021447 (= e!575348 (and e!575351 mapRes!37215))))

(declare-fun condMapEmpty!37215 () Bool)

(declare-fun mapDefault!37215 () ValueCell!11229)

(assert (=> b!1021447 (= condMapEmpty!37215 (= (arr!30688 (_values!5901 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11229)) mapDefault!37215)))))

(declare-fun mapIsEmpty!37215 () Bool)

(assert (=> mapIsEmpty!37215 mapRes!37215))

(declare-fun b!1021448 () Bool)

(declare-fun res!684471 () Bool)

(assert (=> b!1021448 (=> (not res!684471) (not e!575349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63758 (_ BitVec 32)) Bool)

(assert (=> b!1021448 (= res!684471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11020 thiss!1427) (mask!29444 thiss!1427)))))

(declare-fun b!1021449 () Bool)

(declare-fun res!684469 () Bool)

(assert (=> b!1021449 (=> (not res!684469) (not e!575349))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021449 (= res!684469 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!684468 () Bool)

(assert (=> start!89140 (=> (not res!684468) (not e!575349))))

(declare-fun valid!1893 (LongMapFixedSize!5052) Bool)

(assert (=> start!89140 (= res!684468 (valid!1893 thiss!1427))))

(assert (=> start!89140 e!575349))

(assert (=> start!89140 e!575350))

(assert (=> start!89140 true))

(declare-fun b!1021450 () Bool)

(assert (=> b!1021450 (= e!575349 false)))

(declare-fun lt!450088 () Bool)

(declare-datatypes ((List!21769 0))(
  ( (Nil!21766) (Cons!21765 (h!22963 (_ BitVec 64)) (t!30790 List!21769)) )
))
(declare-fun arrayNoDuplicates!0 (array!63758 (_ BitVec 32) List!21769) Bool)

(assert (=> b!1021450 (= lt!450088 (arrayNoDuplicates!0 (_keys!11020 thiss!1427) #b00000000000000000000000000000000 Nil!21766))))

(assert (= (and start!89140 res!684468) b!1021449))

(assert (= (and b!1021449 res!684469) b!1021442))

(assert (= (and b!1021442 res!684467) b!1021443))

(assert (= (and b!1021443 res!684470) b!1021448))

(assert (= (and b!1021448 res!684471) b!1021450))

(assert (= (and b!1021447 condMapEmpty!37215) mapIsEmpty!37215))

(assert (= (and b!1021447 (not condMapEmpty!37215)) mapNonEmpty!37215))

(get-info :version)

(assert (= (and mapNonEmpty!37215 ((_ is ValueCellFull!11229) mapValue!37215)) b!1021445))

(assert (= (and b!1021447 ((_ is ValueCellFull!11229) mapDefault!37215)) b!1021446))

(assert (= b!1021444 b!1021447))

(assert (= start!89140 b!1021444))

(declare-fun m!941083 () Bool)

(assert (=> mapNonEmpty!37215 m!941083))

(declare-fun m!941085 () Bool)

(assert (=> b!1021444 m!941085))

(declare-fun m!941087 () Bool)

(assert (=> b!1021444 m!941087))

(declare-fun m!941089 () Bool)

(assert (=> b!1021450 m!941089))

(declare-fun m!941091 () Bool)

(assert (=> b!1021448 m!941091))

(declare-fun m!941093 () Bool)

(assert (=> start!89140 m!941093))

(declare-fun m!941095 () Bool)

(assert (=> b!1021442 m!941095))

(check-sat (not mapNonEmpty!37215) (not b_next!20145) (not b!1021444) (not b!1021450) b_and!32361 (not b!1021442) (not start!89140) (not b!1021448) tp_is_empty!23865)
(check-sat b_and!32361 (not b_next!20145))
