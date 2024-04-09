; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90298 () Bool)

(assert start!90298)

(declare-fun b!1033254 () Bool)

(declare-fun b_free!20781 () Bool)

(declare-fun b_next!20781 () Bool)

(assert (=> b!1033254 (= b_free!20781 (not b_next!20781))))

(declare-fun tp!73438 () Bool)

(declare-fun b_and!33267 () Bool)

(assert (=> b!1033254 (= tp!73438 b_and!33267)))

(declare-fun mapNonEmpty!38228 () Bool)

(declare-fun mapRes!38228 () Bool)

(declare-fun tp!73437 () Bool)

(declare-fun e!584039 () Bool)

(assert (=> mapNonEmpty!38228 (= mapRes!38228 (and tp!73437 e!584039))))

(declare-fun mapKey!38228 () (_ BitVec 32))

(declare-datatypes ((V!37541 0))(
  ( (V!37542 (val!12301 Int)) )
))
(declare-datatypes ((ValueCell!11547 0))(
  ( (ValueCellFull!11547 (v!14879 V!37541)) (EmptyCell!11547) )
))
(declare-datatypes ((array!65062 0))(
  ( (array!65063 (arr!31323 (Array (_ BitVec 32) (_ BitVec 64))) (size!31846 (_ BitVec 32))) )
))
(declare-datatypes ((array!65064 0))(
  ( (array!65065 (arr!31324 (Array (_ BitVec 32) ValueCell!11547)) (size!31847 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5688 0))(
  ( (LongMapFixedSize!5689 (defaultEntry!6218 Int) (mask!30060 (_ BitVec 32)) (extraKeys!5950 (_ BitVec 32)) (zeroValue!6054 V!37541) (minValue!6054 V!37541) (_size!2899 (_ BitVec 32)) (_keys!11393 array!65062) (_values!6241 array!65064) (_vacant!2899 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5688)

(declare-fun mapValue!38228 () ValueCell!11547)

(declare-fun mapRest!38228 () (Array (_ BitVec 32) ValueCell!11547))

(assert (=> mapNonEmpty!38228 (= (arr!31324 (_values!6241 thiss!1427)) (store mapRest!38228 mapKey!38228 mapValue!38228))))

(declare-fun b!1033248 () Bool)

(declare-fun tp_is_empty!24501 () Bool)

(assert (=> b!1033248 (= e!584039 tp_is_empty!24501)))

(declare-fun b!1033249 () Bool)

(declare-fun e!584034 () Bool)

(declare-fun e!584037 () Bool)

(assert (=> b!1033249 (= e!584034 (and e!584037 mapRes!38228))))

(declare-fun condMapEmpty!38228 () Bool)

(declare-fun mapDefault!38228 () ValueCell!11547)

(assert (=> b!1033249 (= condMapEmpty!38228 (= (arr!31324 (_values!6241 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11547)) mapDefault!38228)))))

(declare-fun mapIsEmpty!38228 () Bool)

(assert (=> mapIsEmpty!38228 mapRes!38228))

(declare-fun b!1033250 () Bool)

(declare-fun res!690493 () Bool)

(declare-fun e!584036 () Bool)

(assert (=> b!1033250 (=> (not res!690493) (not e!584036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033250 (= res!690493 (validMask!0 (mask!30060 thiss!1427)))))

(declare-fun res!690494 () Bool)

(assert (=> start!90298 (=> (not res!690494) (not e!584036))))

(declare-fun valid!2101 (LongMapFixedSize!5688) Bool)

(assert (=> start!90298 (= res!690494 (valid!2101 thiss!1427))))

(assert (=> start!90298 e!584036))

(declare-fun e!584038 () Bool)

(assert (=> start!90298 e!584038))

(assert (=> start!90298 true))

(declare-fun b!1033251 () Bool)

(assert (=> b!1033251 (= e!584036 (and (= (size!31847 (_values!6241 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30060 thiss!1427))) (= (size!31846 (_keys!11393 thiss!1427)) (size!31847 (_values!6241 thiss!1427))) (bvsge (mask!30060 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5950 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5950 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5950 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5950 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5950 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5950 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (not (= (bvand (bvand (extraKeys!5950 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1033252 () Bool)

(declare-fun res!690495 () Bool)

(assert (=> b!1033252 (=> (not res!690495) (not e!584036))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033252 (= res!690495 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033253 () Bool)

(assert (=> b!1033253 (= e!584037 tp_is_empty!24501)))

(declare-fun array_inv!24069 (array!65062) Bool)

(declare-fun array_inv!24070 (array!65064) Bool)

(assert (=> b!1033254 (= e!584038 (and tp!73438 tp_is_empty!24501 (array_inv!24069 (_keys!11393 thiss!1427)) (array_inv!24070 (_values!6241 thiss!1427)) e!584034))))

(assert (= (and start!90298 res!690494) b!1033252))

(assert (= (and b!1033252 res!690495) b!1033250))

(assert (= (and b!1033250 res!690493) b!1033251))

(assert (= (and b!1033249 condMapEmpty!38228) mapIsEmpty!38228))

(assert (= (and b!1033249 (not condMapEmpty!38228)) mapNonEmpty!38228))

(get-info :version)

(assert (= (and mapNonEmpty!38228 ((_ is ValueCellFull!11547) mapValue!38228)) b!1033248))

(assert (= (and b!1033249 ((_ is ValueCellFull!11547) mapDefault!38228)) b!1033253))

(assert (= b!1033254 b!1033249))

(assert (= start!90298 b!1033254))

(declare-fun m!953211 () Bool)

(assert (=> mapNonEmpty!38228 m!953211))

(declare-fun m!953213 () Bool)

(assert (=> b!1033250 m!953213))

(declare-fun m!953215 () Bool)

(assert (=> start!90298 m!953215))

(declare-fun m!953217 () Bool)

(assert (=> b!1033254 m!953217))

(declare-fun m!953219 () Bool)

(assert (=> b!1033254 m!953219))

(check-sat (not mapNonEmpty!38228) (not b!1033250) tp_is_empty!24501 (not start!90298) (not b_next!20781) b_and!33267 (not b!1033254))
(check-sat b_and!33267 (not b_next!20781))
