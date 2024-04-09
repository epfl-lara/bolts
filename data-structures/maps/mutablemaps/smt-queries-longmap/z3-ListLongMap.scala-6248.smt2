; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79984 () Bool)

(assert start!79984)

(declare-fun b!939824 () Bool)

(declare-fun b_free!17811 () Bool)

(declare-fun b_next!17811 () Bool)

(assert (=> b!939824 (= b_free!17811 (not b_next!17811))))

(declare-fun tp!61909 () Bool)

(declare-fun b_and!29241 () Bool)

(assert (=> b!939824 (= tp!61909 b_and!29241)))

(declare-fun b!939820 () Bool)

(declare-fun e!528036 () Bool)

(assert (=> b!939820 (= e!528036 false)))

(declare-datatypes ((SeekEntryResult!8973 0))(
  ( (MissingZero!8973 (index!38262 (_ BitVec 32))) (Found!8973 (index!38263 (_ BitVec 32))) (Intermediate!8973 (undefined!9785 Bool) (index!38264 (_ BitVec 32)) (x!80571 (_ BitVec 32))) (Undefined!8973) (MissingVacant!8973 (index!38265 (_ BitVec 32))) )
))
(declare-fun lt!424539 () SeekEntryResult!8973)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32057 0))(
  ( (V!32058 (val!10210 Int)) )
))
(declare-datatypes ((ValueCell!9678 0))(
  ( (ValueCellFull!9678 (v!12741 V!32057)) (EmptyCell!9678) )
))
(declare-datatypes ((array!56608 0))(
  ( (array!56609 (arr!27235 (Array (_ BitVec 32) ValueCell!9678)) (size!27697 (_ BitVec 32))) )
))
(declare-datatypes ((array!56610 0))(
  ( (array!56611 (arr!27236 (Array (_ BitVec 32) (_ BitVec 64))) (size!27698 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4506 0))(
  ( (LongMapFixedSize!4507 (defaultEntry!5544 Int) (mask!27064 (_ BitVec 32)) (extraKeys!5276 (_ BitVec 32)) (zeroValue!5380 V!32057) (minValue!5380 V!32057) (_size!2308 (_ BitVec 32)) (_keys!10390 array!56610) (_values!5567 array!56608) (_vacant!2308 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4506)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56610 (_ BitVec 32)) SeekEntryResult!8973)

(assert (=> b!939820 (= lt!424539 (seekEntry!0 key!756 (_keys!10390 thiss!1141) (mask!27064 thiss!1141)))))

(declare-fun b!939821 () Bool)

(declare-fun e!528033 () Bool)

(declare-fun e!528035 () Bool)

(declare-fun mapRes!32269 () Bool)

(assert (=> b!939821 (= e!528033 (and e!528035 mapRes!32269))))

(declare-fun condMapEmpty!32269 () Bool)

(declare-fun mapDefault!32269 () ValueCell!9678)

(assert (=> b!939821 (= condMapEmpty!32269 (= (arr!27235 (_values!5567 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9678)) mapDefault!32269)))))

(declare-fun mapNonEmpty!32269 () Bool)

(declare-fun tp!61908 () Bool)

(declare-fun e!528034 () Bool)

(assert (=> mapNonEmpty!32269 (= mapRes!32269 (and tp!61908 e!528034))))

(declare-fun mapValue!32269 () ValueCell!9678)

(declare-fun mapKey!32269 () (_ BitVec 32))

(declare-fun mapRest!32269 () (Array (_ BitVec 32) ValueCell!9678))

(assert (=> mapNonEmpty!32269 (= (arr!27235 (_values!5567 thiss!1141)) (store mapRest!32269 mapKey!32269 mapValue!32269))))

(declare-fun res!632131 () Bool)

(assert (=> start!79984 (=> (not res!632131) (not e!528036))))

(declare-fun valid!1713 (LongMapFixedSize!4506) Bool)

(assert (=> start!79984 (= res!632131 (valid!1713 thiss!1141))))

(assert (=> start!79984 e!528036))

(declare-fun e!528032 () Bool)

(assert (=> start!79984 e!528032))

(assert (=> start!79984 true))

(declare-fun mapIsEmpty!32269 () Bool)

(assert (=> mapIsEmpty!32269 mapRes!32269))

(declare-fun b!939822 () Bool)

(declare-fun tp_is_empty!20319 () Bool)

(assert (=> b!939822 (= e!528034 tp_is_empty!20319)))

(declare-fun b!939823 () Bool)

(assert (=> b!939823 (= e!528035 tp_is_empty!20319)))

(declare-fun array_inv!21130 (array!56610) Bool)

(declare-fun array_inv!21131 (array!56608) Bool)

(assert (=> b!939824 (= e!528032 (and tp!61909 tp_is_empty!20319 (array_inv!21130 (_keys!10390 thiss!1141)) (array_inv!21131 (_values!5567 thiss!1141)) e!528033))))

(declare-fun b!939825 () Bool)

(declare-fun res!632132 () Bool)

(assert (=> b!939825 (=> (not res!632132) (not e!528036))))

(assert (=> b!939825 (= res!632132 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!79984 res!632131) b!939825))

(assert (= (and b!939825 res!632132) b!939820))

(assert (= (and b!939821 condMapEmpty!32269) mapIsEmpty!32269))

(assert (= (and b!939821 (not condMapEmpty!32269)) mapNonEmpty!32269))

(get-info :version)

(assert (= (and mapNonEmpty!32269 ((_ is ValueCellFull!9678) mapValue!32269)) b!939822))

(assert (= (and b!939821 ((_ is ValueCellFull!9678) mapDefault!32269)) b!939823))

(assert (= b!939824 b!939821))

(assert (= start!79984 b!939824))

(declare-fun m!875559 () Bool)

(assert (=> b!939820 m!875559))

(declare-fun m!875561 () Bool)

(assert (=> mapNonEmpty!32269 m!875561))

(declare-fun m!875563 () Bool)

(assert (=> start!79984 m!875563))

(declare-fun m!875565 () Bool)

(assert (=> b!939824 m!875565))

(declare-fun m!875567 () Bool)

(assert (=> b!939824 m!875567))

(check-sat (not mapNonEmpty!32269) b_and!29241 (not start!79984) (not b_next!17811) tp_is_empty!20319 (not b!939820) (not b!939824))
(check-sat b_and!29241 (not b_next!17811))
