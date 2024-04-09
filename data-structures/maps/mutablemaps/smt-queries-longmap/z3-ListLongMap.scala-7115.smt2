; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90222 () Bool)

(assert start!90222)

(declare-fun b!1032713 () Bool)

(declare-fun b_free!20745 () Bool)

(declare-fun b_next!20745 () Bool)

(assert (=> b!1032713 (= b_free!20745 (not b_next!20745))))

(declare-fun tp!73319 () Bool)

(declare-fun b_and!33231 () Bool)

(assert (=> b!1032713 (= tp!73319 b_and!33231)))

(declare-fun tp_is_empty!24465 () Bool)

(declare-fun e!583624 () Bool)

(declare-datatypes ((V!37493 0))(
  ( (V!37494 (val!12283 Int)) )
))
(declare-datatypes ((ValueCell!11529 0))(
  ( (ValueCellFull!11529 (v!14861 V!37493)) (EmptyCell!11529) )
))
(declare-datatypes ((array!64984 0))(
  ( (array!64985 (arr!31287 (Array (_ BitVec 32) (_ BitVec 64))) (size!31808 (_ BitVec 32))) )
))
(declare-datatypes ((array!64986 0))(
  ( (array!64987 (arr!31288 (Array (_ BitVec 32) ValueCell!11529)) (size!31809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5652 0))(
  ( (LongMapFixedSize!5653 (defaultEntry!6200 Int) (mask!30025 (_ BitVec 32)) (extraKeys!5932 (_ BitVec 32)) (zeroValue!6036 V!37493) (minValue!6036 V!37493) (_size!2881 (_ BitVec 32)) (_keys!11373 array!64984) (_values!6223 array!64986) (_vacant!2881 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5652)

(declare-fun e!583621 () Bool)

(declare-fun array_inv!24047 (array!64984) Bool)

(declare-fun array_inv!24048 (array!64986) Bool)

(assert (=> b!1032713 (= e!583621 (and tp!73319 tp_is_empty!24465 (array_inv!24047 (_keys!11373 thiss!1427)) (array_inv!24048 (_values!6223 thiss!1427)) e!583624))))

(declare-fun b!1032714 () Bool)

(declare-fun e!583619 () Bool)

(assert (=> b!1032714 (= e!583619 tp_is_empty!24465)))

(declare-fun b!1032715 () Bool)

(declare-fun e!583623 () Bool)

(assert (=> b!1032715 (= e!583623 (and (= (size!31809 (_values!6223 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30025 thiss!1427))) (= (size!31808 (_keys!11373 thiss!1427)) (size!31809 (_values!6223 thiss!1427))) (bvslt (mask!30025 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1032716 () Bool)

(declare-fun e!583622 () Bool)

(declare-fun mapRes!38163 () Bool)

(assert (=> b!1032716 (= e!583624 (and e!583622 mapRes!38163))))

(declare-fun condMapEmpty!38163 () Bool)

(declare-fun mapDefault!38163 () ValueCell!11529)

(assert (=> b!1032716 (= condMapEmpty!38163 (= (arr!31288 (_values!6223 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11529)) mapDefault!38163)))))

(declare-fun mapIsEmpty!38163 () Bool)

(assert (=> mapIsEmpty!38163 mapRes!38163))

(declare-fun b!1032717 () Bool)

(declare-fun res!690252 () Bool)

(assert (=> b!1032717 (=> (not res!690252) (not e!583623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032717 (= res!690252 (validMask!0 (mask!30025 thiss!1427)))))

(declare-fun mapNonEmpty!38163 () Bool)

(declare-fun tp!73318 () Bool)

(assert (=> mapNonEmpty!38163 (= mapRes!38163 (and tp!73318 e!583619))))

(declare-fun mapKey!38163 () (_ BitVec 32))

(declare-fun mapValue!38163 () ValueCell!11529)

(declare-fun mapRest!38163 () (Array (_ BitVec 32) ValueCell!11529))

(assert (=> mapNonEmpty!38163 (= (arr!31288 (_values!6223 thiss!1427)) (store mapRest!38163 mapKey!38163 mapValue!38163))))

(declare-fun res!690250 () Bool)

(assert (=> start!90222 (=> (not res!690250) (not e!583623))))

(declare-fun valid!2087 (LongMapFixedSize!5652) Bool)

(assert (=> start!90222 (= res!690250 (valid!2087 thiss!1427))))

(assert (=> start!90222 e!583623))

(assert (=> start!90222 e!583621))

(assert (=> start!90222 true))

(declare-fun b!1032718 () Bool)

(declare-fun res!690251 () Bool)

(assert (=> b!1032718 (=> (not res!690251) (not e!583623))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032718 (= res!690251 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1032719 () Bool)

(assert (=> b!1032719 (= e!583622 tp_is_empty!24465)))

(assert (= (and start!90222 res!690250) b!1032718))

(assert (= (and b!1032718 res!690251) b!1032717))

(assert (= (and b!1032717 res!690252) b!1032715))

(assert (= (and b!1032716 condMapEmpty!38163) mapIsEmpty!38163))

(assert (= (and b!1032716 (not condMapEmpty!38163)) mapNonEmpty!38163))

(get-info :version)

(assert (= (and mapNonEmpty!38163 ((_ is ValueCellFull!11529) mapValue!38163)) b!1032714))

(assert (= (and b!1032716 ((_ is ValueCellFull!11529) mapDefault!38163)) b!1032719))

(assert (= b!1032713 b!1032716))

(assert (= start!90222 b!1032713))

(declare-fun m!952957 () Bool)

(assert (=> b!1032713 m!952957))

(declare-fun m!952959 () Bool)

(assert (=> b!1032713 m!952959))

(declare-fun m!952961 () Bool)

(assert (=> b!1032717 m!952961))

(declare-fun m!952963 () Bool)

(assert (=> mapNonEmpty!38163 m!952963))

(declare-fun m!952965 () Bool)

(assert (=> start!90222 m!952965))

(check-sat b_and!33231 tp_is_empty!24465 (not b!1032717) (not b!1032713) (not start!90222) (not b_next!20745) (not mapNonEmpty!38163))
(check-sat b_and!33231 (not b_next!20745))
(get-model)

(declare-fun d!123679 () Bool)

(assert (=> d!123679 (= (validMask!0 (mask!30025 thiss!1427)) (and (or (= (mask!30025 thiss!1427) #b00000000000000000000000000000111) (= (mask!30025 thiss!1427) #b00000000000000000000000000001111) (= (mask!30025 thiss!1427) #b00000000000000000000000000011111) (= (mask!30025 thiss!1427) #b00000000000000000000000000111111) (= (mask!30025 thiss!1427) #b00000000000000000000000001111111) (= (mask!30025 thiss!1427) #b00000000000000000000000011111111) (= (mask!30025 thiss!1427) #b00000000000000000000000111111111) (= (mask!30025 thiss!1427) #b00000000000000000000001111111111) (= (mask!30025 thiss!1427) #b00000000000000000000011111111111) (= (mask!30025 thiss!1427) #b00000000000000000000111111111111) (= (mask!30025 thiss!1427) #b00000000000000000001111111111111) (= (mask!30025 thiss!1427) #b00000000000000000011111111111111) (= (mask!30025 thiss!1427) #b00000000000000000111111111111111) (= (mask!30025 thiss!1427) #b00000000000000001111111111111111) (= (mask!30025 thiss!1427) #b00000000000000011111111111111111) (= (mask!30025 thiss!1427) #b00000000000000111111111111111111) (= (mask!30025 thiss!1427) #b00000000000001111111111111111111) (= (mask!30025 thiss!1427) #b00000000000011111111111111111111) (= (mask!30025 thiss!1427) #b00000000000111111111111111111111) (= (mask!30025 thiss!1427) #b00000000001111111111111111111111) (= (mask!30025 thiss!1427) #b00000000011111111111111111111111) (= (mask!30025 thiss!1427) #b00000000111111111111111111111111) (= (mask!30025 thiss!1427) #b00000001111111111111111111111111) (= (mask!30025 thiss!1427) #b00000011111111111111111111111111) (= (mask!30025 thiss!1427) #b00000111111111111111111111111111) (= (mask!30025 thiss!1427) #b00001111111111111111111111111111) (= (mask!30025 thiss!1427) #b00011111111111111111111111111111) (= (mask!30025 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30025 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> b!1032717 d!123679))

(declare-fun d!123681 () Bool)

(assert (=> d!123681 (= (array_inv!24047 (_keys!11373 thiss!1427)) (bvsge (size!31808 (_keys!11373 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032713 d!123681))

(declare-fun d!123683 () Bool)

(assert (=> d!123683 (= (array_inv!24048 (_values!6223 thiss!1427)) (bvsge (size!31809 (_values!6223 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1032713 d!123683))

(declare-fun d!123685 () Bool)

(declare-fun res!690268 () Bool)

(declare-fun e!583645 () Bool)

(assert (=> d!123685 (=> (not res!690268) (not e!583645))))

(declare-fun simpleValid!399 (LongMapFixedSize!5652) Bool)

(assert (=> d!123685 (= res!690268 (simpleValid!399 thiss!1427))))

(assert (=> d!123685 (= (valid!2087 thiss!1427) e!583645)))

(declare-fun b!1032747 () Bool)

(declare-fun res!690269 () Bool)

(assert (=> b!1032747 (=> (not res!690269) (not e!583645))))

(declare-fun arrayCountValidKeys!0 (array!64984 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1032747 (= res!690269 (= (arrayCountValidKeys!0 (_keys!11373 thiss!1427) #b00000000000000000000000000000000 (size!31808 (_keys!11373 thiss!1427))) (_size!2881 thiss!1427)))))

(declare-fun b!1032748 () Bool)

(declare-fun res!690270 () Bool)

(assert (=> b!1032748 (=> (not res!690270) (not e!583645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64984 (_ BitVec 32)) Bool)

(assert (=> b!1032748 (= res!690270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11373 thiss!1427) (mask!30025 thiss!1427)))))

(declare-fun b!1032749 () Bool)

(declare-datatypes ((List!22015 0))(
  ( (Nil!22012) (Cons!22011 (h!23213 (_ BitVec 64)) (t!31216 List!22015)) )
))
(declare-fun arrayNoDuplicates!0 (array!64984 (_ BitVec 32) List!22015) Bool)

(assert (=> b!1032749 (= e!583645 (arrayNoDuplicates!0 (_keys!11373 thiss!1427) #b00000000000000000000000000000000 Nil!22012))))

(assert (= (and d!123685 res!690268) b!1032747))

(assert (= (and b!1032747 res!690269) b!1032748))

(assert (= (and b!1032748 res!690270) b!1032749))

(declare-fun m!952977 () Bool)

(assert (=> d!123685 m!952977))

(declare-fun m!952979 () Bool)

(assert (=> b!1032747 m!952979))

(declare-fun m!952981 () Bool)

(assert (=> b!1032748 m!952981))

(declare-fun m!952983 () Bool)

(assert (=> b!1032749 m!952983))

(assert (=> start!90222 d!123685))

(declare-fun b!1032757 () Bool)

(declare-fun e!583651 () Bool)

(assert (=> b!1032757 (= e!583651 tp_is_empty!24465)))

(declare-fun b!1032756 () Bool)

(declare-fun e!583650 () Bool)

(assert (=> b!1032756 (= e!583650 tp_is_empty!24465)))

(declare-fun mapIsEmpty!38169 () Bool)

(declare-fun mapRes!38169 () Bool)

(assert (=> mapIsEmpty!38169 mapRes!38169))

(declare-fun mapNonEmpty!38169 () Bool)

(declare-fun tp!73328 () Bool)

(assert (=> mapNonEmpty!38169 (= mapRes!38169 (and tp!73328 e!583650))))

(declare-fun mapRest!38169 () (Array (_ BitVec 32) ValueCell!11529))

(declare-fun mapKey!38169 () (_ BitVec 32))

(declare-fun mapValue!38169 () ValueCell!11529)

(assert (=> mapNonEmpty!38169 (= mapRest!38163 (store mapRest!38169 mapKey!38169 mapValue!38169))))

(declare-fun condMapEmpty!38169 () Bool)

(declare-fun mapDefault!38169 () ValueCell!11529)

(assert (=> mapNonEmpty!38163 (= condMapEmpty!38169 (= mapRest!38163 ((as const (Array (_ BitVec 32) ValueCell!11529)) mapDefault!38169)))))

(assert (=> mapNonEmpty!38163 (= tp!73318 (and e!583651 mapRes!38169))))

(assert (= (and mapNonEmpty!38163 condMapEmpty!38169) mapIsEmpty!38169))

(assert (= (and mapNonEmpty!38163 (not condMapEmpty!38169)) mapNonEmpty!38169))

(assert (= (and mapNonEmpty!38169 ((_ is ValueCellFull!11529) mapValue!38169)) b!1032756))

(assert (= (and mapNonEmpty!38163 ((_ is ValueCellFull!11529) mapDefault!38169)) b!1032757))

(declare-fun m!952985 () Bool)

(assert (=> mapNonEmpty!38169 m!952985))

(check-sat (not b_next!20745) (not b!1032748) (not b!1032747) (not mapNonEmpty!38169) b_and!33231 (not b!1032749) (not d!123685) tp_is_empty!24465)
(check-sat b_and!33231 (not b_next!20745))
