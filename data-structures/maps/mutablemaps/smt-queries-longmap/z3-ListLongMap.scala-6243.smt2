; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79912 () Bool)

(assert start!79912)

(declare-fun b!939393 () Bool)

(declare-fun b_free!17781 () Bool)

(declare-fun b_next!17781 () Bool)

(assert (=> b!939393 (= b_free!17781 (not b_next!17781))))

(declare-fun tp!61807 () Bool)

(declare-fun b_and!29211 () Bool)

(assert (=> b!939393 (= tp!61807 b_and!29211)))

(declare-fun b!939392 () Bool)

(declare-fun e!527687 () Bool)

(declare-fun e!527685 () Bool)

(declare-fun mapRes!32213 () Bool)

(assert (=> b!939392 (= e!527687 (and e!527685 mapRes!32213))))

(declare-fun condMapEmpty!32213 () Bool)

(declare-datatypes ((V!32017 0))(
  ( (V!32018 (val!10195 Int)) )
))
(declare-datatypes ((ValueCell!9663 0))(
  ( (ValueCellFull!9663 (v!12726 V!32017)) (EmptyCell!9663) )
))
(declare-datatypes ((array!56542 0))(
  ( (array!56543 (arr!27205 (Array (_ BitVec 32) ValueCell!9663)) (size!27665 (_ BitVec 32))) )
))
(declare-datatypes ((array!56544 0))(
  ( (array!56545 (arr!27206 (Array (_ BitVec 32) (_ BitVec 64))) (size!27666 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4476 0))(
  ( (LongMapFixedSize!4477 (defaultEntry!5529 Int) (mask!27034 (_ BitVec 32)) (extraKeys!5261 (_ BitVec 32)) (zeroValue!5365 V!32017) (minValue!5365 V!32017) (_size!2293 (_ BitVec 32)) (_keys!10373 array!56544) (_values!5552 array!56542) (_vacant!2293 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4476)

(declare-fun mapDefault!32213 () ValueCell!9663)

(assert (=> b!939392 (= condMapEmpty!32213 (= (arr!27205 (_values!5552 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9663)) mapDefault!32213)))))

(declare-fun lt!424497 () Bool)

(declare-fun valid!1701 (LongMapFixedSize!4476) Bool)

(assert (=> start!79912 (= lt!424497 (valid!1701 thiss!1141))))

(assert (=> start!79912 false))

(declare-fun e!527684 () Bool)

(assert (=> start!79912 e!527684))

(declare-fun mapIsEmpty!32213 () Bool)

(assert (=> mapIsEmpty!32213 mapRes!32213))

(declare-fun tp_is_empty!20289 () Bool)

(declare-fun array_inv!21112 (array!56544) Bool)

(declare-fun array_inv!21113 (array!56542) Bool)

(assert (=> b!939393 (= e!527684 (and tp!61807 tp_is_empty!20289 (array_inv!21112 (_keys!10373 thiss!1141)) (array_inv!21113 (_values!5552 thiss!1141)) e!527687))))

(declare-fun mapNonEmpty!32213 () Bool)

(declare-fun tp!61808 () Bool)

(declare-fun e!527686 () Bool)

(assert (=> mapNonEmpty!32213 (= mapRes!32213 (and tp!61808 e!527686))))

(declare-fun mapValue!32213 () ValueCell!9663)

(declare-fun mapKey!32213 () (_ BitVec 32))

(declare-fun mapRest!32213 () (Array (_ BitVec 32) ValueCell!9663))

(assert (=> mapNonEmpty!32213 (= (arr!27205 (_values!5552 thiss!1141)) (store mapRest!32213 mapKey!32213 mapValue!32213))))

(declare-fun b!939394 () Bool)

(assert (=> b!939394 (= e!527685 tp_is_empty!20289)))

(declare-fun b!939395 () Bool)

(assert (=> b!939395 (= e!527686 tp_is_empty!20289)))

(assert (= (and b!939392 condMapEmpty!32213) mapIsEmpty!32213))

(assert (= (and b!939392 (not condMapEmpty!32213)) mapNonEmpty!32213))

(get-info :version)

(assert (= (and mapNonEmpty!32213 ((_ is ValueCellFull!9663) mapValue!32213)) b!939395))

(assert (= (and b!939392 ((_ is ValueCellFull!9663) mapDefault!32213)) b!939394))

(assert (= b!939393 b!939392))

(assert (= start!79912 b!939393))

(declare-fun m!875339 () Bool)

(assert (=> start!79912 m!875339))

(declare-fun m!875341 () Bool)

(assert (=> b!939393 m!875341))

(declare-fun m!875343 () Bool)

(assert (=> b!939393 m!875343))

(declare-fun m!875345 () Bool)

(assert (=> mapNonEmpty!32213 m!875345))

(check-sat (not b!939393) (not mapNonEmpty!32213) tp_is_empty!20289 (not start!79912) (not b_next!17781) b_and!29211)
(check-sat b_and!29211 (not b_next!17781))
