; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90292 () Bool)

(assert start!90292)

(declare-fun b!1033189 () Bool)

(declare-fun b_free!20775 () Bool)

(declare-fun b_next!20775 () Bool)

(assert (=> b!1033189 (= b_free!20775 (not b_next!20775))))

(declare-fun tp!73420 () Bool)

(declare-fun b_and!33261 () Bool)

(assert (=> b!1033189 (= tp!73420 b_and!33261)))

(declare-fun mapNonEmpty!38219 () Bool)

(declare-fun mapRes!38219 () Bool)

(declare-fun tp!73419 () Bool)

(declare-fun e!583980 () Bool)

(assert (=> mapNonEmpty!38219 (= mapRes!38219 (and tp!73419 e!583980))))

(declare-datatypes ((V!37533 0))(
  ( (V!37534 (val!12298 Int)) )
))
(declare-datatypes ((ValueCell!11544 0))(
  ( (ValueCellFull!11544 (v!14876 V!37533)) (EmptyCell!11544) )
))
(declare-fun mapValue!38219 () ValueCell!11544)

(declare-fun mapRest!38219 () (Array (_ BitVec 32) ValueCell!11544))

(declare-fun mapKey!38219 () (_ BitVec 32))

(declare-datatypes ((array!65050 0))(
  ( (array!65051 (arr!31317 (Array (_ BitVec 32) (_ BitVec 64))) (size!31840 (_ BitVec 32))) )
))
(declare-datatypes ((array!65052 0))(
  ( (array!65053 (arr!31318 (Array (_ BitVec 32) ValueCell!11544)) (size!31841 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5682 0))(
  ( (LongMapFixedSize!5683 (defaultEntry!6215 Int) (mask!30055 (_ BitVec 32)) (extraKeys!5947 (_ BitVec 32)) (zeroValue!6051 V!37533) (minValue!6051 V!37533) (_size!2896 (_ BitVec 32)) (_keys!11390 array!65050) (_values!6238 array!65052) (_vacant!2896 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5682)

(assert (=> mapNonEmpty!38219 (= (arr!31318 (_values!6238 thiss!1427)) (store mapRest!38219 mapKey!38219 mapValue!38219))))

(declare-fun b!1033185 () Bool)

(declare-fun res!690466 () Bool)

(declare-fun e!583985 () Bool)

(assert (=> b!1033185 (=> (not res!690466) (not e!583985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033185 (= res!690466 (validMask!0 (mask!30055 thiss!1427)))))

(declare-fun b!1033186 () Bool)

(declare-fun tp_is_empty!24495 () Bool)

(assert (=> b!1033186 (= e!583980 tp_is_empty!24495)))

(declare-fun b!1033187 () Bool)

(declare-fun e!583981 () Bool)

(assert (=> b!1033187 (= e!583981 tp_is_empty!24495)))

(declare-fun b!1033188 () Bool)

(declare-fun res!690467 () Bool)

(assert (=> b!1033188 (=> (not res!690467) (not e!583985))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033188 (= res!690467 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38219 () Bool)

(assert (=> mapIsEmpty!38219 mapRes!38219))

(declare-fun e!583982 () Bool)

(declare-fun e!583984 () Bool)

(declare-fun array_inv!24065 (array!65050) Bool)

(declare-fun array_inv!24066 (array!65052) Bool)

(assert (=> b!1033189 (= e!583984 (and tp!73420 tp_is_empty!24495 (array_inv!24065 (_keys!11390 thiss!1427)) (array_inv!24066 (_values!6238 thiss!1427)) e!583982))))

(declare-fun res!690468 () Bool)

(assert (=> start!90292 (=> (not res!690468) (not e!583985))))

(declare-fun valid!2098 (LongMapFixedSize!5682) Bool)

(assert (=> start!90292 (= res!690468 (valid!2098 thiss!1427))))

(assert (=> start!90292 e!583985))

(assert (=> start!90292 e!583984))

(assert (=> start!90292 true))

(declare-fun b!1033190 () Bool)

(assert (=> b!1033190 (= e!583985 (and (= (size!31841 (_values!6238 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30055 thiss!1427))) (= (size!31840 (_keys!11390 thiss!1427)) (size!31841 (_values!6238 thiss!1427))) (bvsge (mask!30055 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5947 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5947 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5947 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5947 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!5947 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5947 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)))))))

(declare-fun b!1033191 () Bool)

(assert (=> b!1033191 (= e!583982 (and e!583981 mapRes!38219))))

(declare-fun condMapEmpty!38219 () Bool)

(declare-fun mapDefault!38219 () ValueCell!11544)

(assert (=> b!1033191 (= condMapEmpty!38219 (= (arr!31318 (_values!6238 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11544)) mapDefault!38219)))))

(assert (= (and start!90292 res!690468) b!1033188))

(assert (= (and b!1033188 res!690467) b!1033185))

(assert (= (and b!1033185 res!690466) b!1033190))

(assert (= (and b!1033191 condMapEmpty!38219) mapIsEmpty!38219))

(assert (= (and b!1033191 (not condMapEmpty!38219)) mapNonEmpty!38219))

(get-info :version)

(assert (= (and mapNonEmpty!38219 ((_ is ValueCellFull!11544) mapValue!38219)) b!1033186))

(assert (= (and b!1033191 ((_ is ValueCellFull!11544) mapDefault!38219)) b!1033187))

(assert (= b!1033189 b!1033191))

(assert (= start!90292 b!1033189))

(declare-fun m!953181 () Bool)

(assert (=> mapNonEmpty!38219 m!953181))

(declare-fun m!953183 () Bool)

(assert (=> b!1033185 m!953183))

(declare-fun m!953185 () Bool)

(assert (=> b!1033189 m!953185))

(declare-fun m!953187 () Bool)

(assert (=> b!1033189 m!953187))

(declare-fun m!953189 () Bool)

(assert (=> start!90292 m!953189))

(check-sat b_and!33261 (not b_next!20775) tp_is_empty!24495 (not b!1033189) (not start!90292) (not mapNonEmpty!38219) (not b!1033185))
(check-sat b_and!33261 (not b_next!20775))
