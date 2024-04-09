; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79918 () Bool)

(assert start!79918)

(declare-fun b!939428 () Bool)

(declare-fun b_free!17787 () Bool)

(declare-fun b_next!17787 () Bool)

(assert (=> b!939428 (= b_free!17787 (not b_next!17787))))

(declare-fun tp!61826 () Bool)

(declare-fun b_and!29217 () Bool)

(assert (=> b!939428 (= tp!61826 b_and!29217)))

(declare-fun lt!424506 () Bool)

(declare-datatypes ((V!32025 0))(
  ( (V!32026 (val!10198 Int)) )
))
(declare-datatypes ((ValueCell!9666 0))(
  ( (ValueCellFull!9666 (v!12729 V!32025)) (EmptyCell!9666) )
))
(declare-datatypes ((array!56554 0))(
  ( (array!56555 (arr!27211 (Array (_ BitVec 32) ValueCell!9666)) (size!27671 (_ BitVec 32))) )
))
(declare-datatypes ((array!56556 0))(
  ( (array!56557 (arr!27212 (Array (_ BitVec 32) (_ BitVec 64))) (size!27672 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4482 0))(
  ( (LongMapFixedSize!4483 (defaultEntry!5532 Int) (mask!27039 (_ BitVec 32)) (extraKeys!5264 (_ BitVec 32)) (zeroValue!5368 V!32025) (minValue!5368 V!32025) (_size!2296 (_ BitVec 32)) (_keys!10376 array!56556) (_values!5555 array!56554) (_vacant!2296 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4482)

(declare-fun valid!1703 (LongMapFixedSize!4482) Bool)

(assert (=> start!79918 (= lt!424506 (valid!1703 thiss!1141))))

(assert (=> start!79918 false))

(declare-fun e!527728 () Bool)

(assert (=> start!79918 e!527728))

(declare-fun tp_is_empty!20295 () Bool)

(declare-fun e!527729 () Bool)

(declare-fun array_inv!21114 (array!56556) Bool)

(declare-fun array_inv!21115 (array!56554) Bool)

(assert (=> b!939428 (= e!527728 (and tp!61826 tp_is_empty!20295 (array_inv!21114 (_keys!10376 thiss!1141)) (array_inv!21115 (_values!5555 thiss!1141)) e!527729))))

(declare-fun b!939429 () Bool)

(declare-fun e!527731 () Bool)

(assert (=> b!939429 (= e!527731 tp_is_empty!20295)))

(declare-fun b!939430 () Bool)

(declare-fun mapRes!32222 () Bool)

(assert (=> b!939430 (= e!527729 (and e!527731 mapRes!32222))))

(declare-fun condMapEmpty!32222 () Bool)

(declare-fun mapDefault!32222 () ValueCell!9666)

(assert (=> b!939430 (= condMapEmpty!32222 (= (arr!27211 (_values!5555 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9666)) mapDefault!32222)))))

(declare-fun mapIsEmpty!32222 () Bool)

(assert (=> mapIsEmpty!32222 mapRes!32222))

(declare-fun mapNonEmpty!32222 () Bool)

(declare-fun tp!61825 () Bool)

(declare-fun e!527730 () Bool)

(assert (=> mapNonEmpty!32222 (= mapRes!32222 (and tp!61825 e!527730))))

(declare-fun mapKey!32222 () (_ BitVec 32))

(declare-fun mapRest!32222 () (Array (_ BitVec 32) ValueCell!9666))

(declare-fun mapValue!32222 () ValueCell!9666)

(assert (=> mapNonEmpty!32222 (= (arr!27211 (_values!5555 thiss!1141)) (store mapRest!32222 mapKey!32222 mapValue!32222))))

(declare-fun b!939431 () Bool)

(assert (=> b!939431 (= e!527730 tp_is_empty!20295)))

(assert (= (and b!939430 condMapEmpty!32222) mapIsEmpty!32222))

(assert (= (and b!939430 (not condMapEmpty!32222)) mapNonEmpty!32222))

(get-info :version)

(assert (= (and mapNonEmpty!32222 ((_ is ValueCellFull!9666) mapValue!32222)) b!939431))

(assert (= (and b!939430 ((_ is ValueCellFull!9666) mapDefault!32222)) b!939429))

(assert (= b!939428 b!939430))

(assert (= start!79918 b!939428))

(declare-fun m!875363 () Bool)

(assert (=> start!79918 m!875363))

(declare-fun m!875365 () Bool)

(assert (=> b!939428 m!875365))

(declare-fun m!875367 () Bool)

(assert (=> b!939428 m!875367))

(declare-fun m!875369 () Bool)

(assert (=> mapNonEmpty!32222 m!875369))

(check-sat (not b_next!17787) b_and!29217 (not b!939428) (not mapNonEmpty!32222) tp_is_empty!20295 (not start!79918))
(check-sat b_and!29217 (not b_next!17787))
