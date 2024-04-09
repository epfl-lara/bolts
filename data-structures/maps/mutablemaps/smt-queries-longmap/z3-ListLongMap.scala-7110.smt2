; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90144 () Bool)

(assert start!90144)

(declare-fun b!1032215 () Bool)

(declare-fun b_free!20715 () Bool)

(declare-fun b_next!20715 () Bool)

(assert (=> b!1032215 (= b_free!20715 (not b_next!20715))))

(declare-fun tp!73216 () Bool)

(declare-fun b_and!33201 () Bool)

(assert (=> b!1032215 (= tp!73216 b_and!33201)))

(declare-fun b!1032210 () Bool)

(declare-fun e!583229 () Bool)

(declare-fun tp_is_empty!24435 () Bool)

(assert (=> b!1032210 (= e!583229 tp_is_empty!24435)))

(declare-fun mapNonEmpty!38106 () Bool)

(declare-fun mapRes!38106 () Bool)

(declare-fun tp!73217 () Bool)

(declare-fun e!583228 () Bool)

(assert (=> mapNonEmpty!38106 (= mapRes!38106 (and tp!73217 e!583228))))

(declare-fun mapKey!38106 () (_ BitVec 32))

(declare-datatypes ((V!37453 0))(
  ( (V!37454 (val!12268 Int)) )
))
(declare-datatypes ((ValueCell!11514 0))(
  ( (ValueCellFull!11514 (v!14846 V!37453)) (EmptyCell!11514) )
))
(declare-datatypes ((array!64918 0))(
  ( (array!64919 (arr!31257 (Array (_ BitVec 32) (_ BitVec 64))) (size!31775 (_ BitVec 32))) )
))
(declare-datatypes ((array!64920 0))(
  ( (array!64921 (arr!31258 (Array (_ BitVec 32) ValueCell!11514)) (size!31776 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5622 0))(
  ( (LongMapFixedSize!5623 (defaultEntry!6185 Int) (mask!29994 (_ BitVec 32)) (extraKeys!5917 (_ BitVec 32)) (zeroValue!6021 V!37453) (minValue!6021 V!37453) (_size!2866 (_ BitVec 32)) (_keys!11355 array!64918) (_values!6208 array!64920) (_vacant!2866 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5622)

(declare-fun mapRest!38106 () (Array (_ BitVec 32) ValueCell!11514))

(declare-fun mapValue!38106 () ValueCell!11514)

(assert (=> mapNonEmpty!38106 (= (arr!31258 (_values!6208 thiss!1427)) (store mapRest!38106 mapKey!38106 mapValue!38106))))

(declare-fun res!690029 () Bool)

(declare-fun e!583226 () Bool)

(assert (=> start!90144 (=> (not res!690029) (not e!583226))))

(declare-fun valid!2079 (LongMapFixedSize!5622) Bool)

(assert (=> start!90144 (= res!690029 (valid!2079 thiss!1427))))

(assert (=> start!90144 e!583226))

(declare-fun e!583230 () Bool)

(assert (=> start!90144 e!583230))

(assert (=> start!90144 true))

(declare-fun mapIsEmpty!38106 () Bool)

(assert (=> mapIsEmpty!38106 mapRes!38106))

(declare-fun b!1032211 () Bool)

(declare-fun res!690030 () Bool)

(assert (=> b!1032211 (=> (not res!690030) (not e!583226))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032211 (= res!690030 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1032212 () Bool)

(declare-fun e!583231 () Bool)

(assert (=> b!1032212 (= e!583231 (and e!583229 mapRes!38106))))

(declare-fun condMapEmpty!38106 () Bool)

(declare-fun mapDefault!38106 () ValueCell!11514)

(assert (=> b!1032212 (= condMapEmpty!38106 (= (arr!31258 (_values!6208 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11514)) mapDefault!38106)))))

(declare-fun b!1032213 () Bool)

(assert (=> b!1032213 (= e!583228 tp_is_empty!24435)))

(declare-fun b!1032214 () Bool)

(assert (=> b!1032214 (= e!583226 false)))

(declare-datatypes ((SeekEntryResult!9723 0))(
  ( (MissingZero!9723 (index!41262 (_ BitVec 32))) (Found!9723 (index!41263 (_ BitVec 32))) (Intermediate!9723 (undefined!10535 Bool) (index!41264 (_ BitVec 32)) (x!91966 (_ BitVec 32))) (Undefined!9723) (MissingVacant!9723 (index!41265 (_ BitVec 32))) )
))
(declare-fun lt!455994 () SeekEntryResult!9723)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64918 (_ BitVec 32)) SeekEntryResult!9723)

(assert (=> b!1032214 (= lt!455994 (seekEntry!0 key!909 (_keys!11355 thiss!1427) (mask!29994 thiss!1427)))))

(declare-fun array_inv!24031 (array!64918) Bool)

(declare-fun array_inv!24032 (array!64920) Bool)

(assert (=> b!1032215 (= e!583230 (and tp!73216 tp_is_empty!24435 (array_inv!24031 (_keys!11355 thiss!1427)) (array_inv!24032 (_values!6208 thiss!1427)) e!583231))))

(assert (= (and start!90144 res!690029) b!1032211))

(assert (= (and b!1032211 res!690030) b!1032214))

(assert (= (and b!1032212 condMapEmpty!38106) mapIsEmpty!38106))

(assert (= (and b!1032212 (not condMapEmpty!38106)) mapNonEmpty!38106))

(get-info :version)

(assert (= (and mapNonEmpty!38106 ((_ is ValueCellFull!11514) mapValue!38106)) b!1032213))

(assert (= (and b!1032212 ((_ is ValueCellFull!11514) mapDefault!38106)) b!1032210))

(assert (= b!1032215 b!1032212))

(assert (= start!90144 b!1032215))

(declare-fun m!952711 () Bool)

(assert (=> mapNonEmpty!38106 m!952711))

(declare-fun m!952713 () Bool)

(assert (=> start!90144 m!952713))

(declare-fun m!952715 () Bool)

(assert (=> b!1032214 m!952715))

(declare-fun m!952717 () Bool)

(assert (=> b!1032215 m!952717))

(declare-fun m!952719 () Bool)

(assert (=> b!1032215 m!952719))

(check-sat (not start!90144) (not b!1032214) (not b!1032215) tp_is_empty!24435 (not b_next!20715) b_and!33201 (not mapNonEmpty!38106))
(check-sat b_and!33201 (not b_next!20715))
