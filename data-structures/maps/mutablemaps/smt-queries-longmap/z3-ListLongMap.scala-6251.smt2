; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80002 () Bool)

(assert start!80002)

(declare-fun b!939982 () Bool)

(declare-fun b_free!17829 () Bool)

(declare-fun b_next!17829 () Bool)

(assert (=> b!939982 (= b_free!17829 (not b_next!17829))))

(declare-fun tp!61962 () Bool)

(declare-fun b_and!29259 () Bool)

(assert (=> b!939982 (= tp!61962 b_and!29259)))

(declare-fun e!528194 () Bool)

(declare-fun e!528195 () Bool)

(declare-datatypes ((V!32081 0))(
  ( (V!32082 (val!10219 Int)) )
))
(declare-datatypes ((ValueCell!9687 0))(
  ( (ValueCellFull!9687 (v!12750 V!32081)) (EmptyCell!9687) )
))
(declare-datatypes ((array!56644 0))(
  ( (array!56645 (arr!27253 (Array (_ BitVec 32) ValueCell!9687)) (size!27715 (_ BitVec 32))) )
))
(declare-datatypes ((array!56646 0))(
  ( (array!56647 (arr!27254 (Array (_ BitVec 32) (_ BitVec 64))) (size!27716 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4524 0))(
  ( (LongMapFixedSize!4525 (defaultEntry!5553 Int) (mask!27079 (_ BitVec 32)) (extraKeys!5285 (_ BitVec 32)) (zeroValue!5389 V!32081) (minValue!5389 V!32081) (_size!2317 (_ BitVec 32)) (_keys!10399 array!56646) (_values!5576 array!56644) (_vacant!2317 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4524)

(declare-fun tp_is_empty!20337 () Bool)

(declare-fun array_inv!21140 (array!56646) Bool)

(declare-fun array_inv!21141 (array!56644) Bool)

(assert (=> b!939982 (= e!528195 (and tp!61962 tp_is_empty!20337 (array_inv!21140 (_keys!10399 thiss!1141)) (array_inv!21141 (_values!5576 thiss!1141)) e!528194))))

(declare-fun b!939983 () Bool)

(declare-fun e!528197 () Bool)

(declare-fun mapRes!32296 () Bool)

(assert (=> b!939983 (= e!528194 (and e!528197 mapRes!32296))))

(declare-fun condMapEmpty!32296 () Bool)

(declare-fun mapDefault!32296 () ValueCell!9687)

(assert (=> b!939983 (= condMapEmpty!32296 (= (arr!27253 (_values!5576 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9687)) mapDefault!32296)))))

(declare-fun b!939984 () Bool)

(declare-fun res!632185 () Bool)

(declare-fun e!528196 () Bool)

(assert (=> b!939984 (=> (not res!632185) (not e!528196))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939984 (= res!632185 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!632186 () Bool)

(assert (=> start!80002 (=> (not res!632186) (not e!528196))))

(declare-fun valid!1719 (LongMapFixedSize!4524) Bool)

(assert (=> start!80002 (= res!632186 (valid!1719 thiss!1141))))

(assert (=> start!80002 e!528196))

(assert (=> start!80002 e!528195))

(assert (=> start!80002 true))

(declare-fun b!939985 () Bool)

(assert (=> b!939985 (= e!528197 tp_is_empty!20337)))

(declare-fun b!939986 () Bool)

(declare-fun e!528193 () Bool)

(assert (=> b!939986 (= e!528193 tp_is_empty!20337)))

(declare-fun mapIsEmpty!32296 () Bool)

(assert (=> mapIsEmpty!32296 mapRes!32296))

(declare-fun b!939987 () Bool)

(assert (=> b!939987 (= e!528196 false)))

(declare-datatypes ((SeekEntryResult!8978 0))(
  ( (MissingZero!8978 (index!38282 (_ BitVec 32))) (Found!8978 (index!38283 (_ BitVec 32))) (Intermediate!8978 (undefined!9790 Bool) (index!38284 (_ BitVec 32)) (x!80600 (_ BitVec 32))) (Undefined!8978) (MissingVacant!8978 (index!38285 (_ BitVec 32))) )
))
(declare-fun lt!424566 () SeekEntryResult!8978)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56646 (_ BitVec 32)) SeekEntryResult!8978)

(assert (=> b!939987 (= lt!424566 (seekEntry!0 key!756 (_keys!10399 thiss!1141) (mask!27079 thiss!1141)))))

(declare-fun mapNonEmpty!32296 () Bool)

(declare-fun tp!61963 () Bool)

(assert (=> mapNonEmpty!32296 (= mapRes!32296 (and tp!61963 e!528193))))

(declare-fun mapRest!32296 () (Array (_ BitVec 32) ValueCell!9687))

(declare-fun mapValue!32296 () ValueCell!9687)

(declare-fun mapKey!32296 () (_ BitVec 32))

(assert (=> mapNonEmpty!32296 (= (arr!27253 (_values!5576 thiss!1141)) (store mapRest!32296 mapKey!32296 mapValue!32296))))

(assert (= (and start!80002 res!632186) b!939984))

(assert (= (and b!939984 res!632185) b!939987))

(assert (= (and b!939983 condMapEmpty!32296) mapIsEmpty!32296))

(assert (= (and b!939983 (not condMapEmpty!32296)) mapNonEmpty!32296))

(get-info :version)

(assert (= (and mapNonEmpty!32296 ((_ is ValueCellFull!9687) mapValue!32296)) b!939986))

(assert (= (and b!939983 ((_ is ValueCellFull!9687) mapDefault!32296)) b!939985))

(assert (= b!939982 b!939983))

(assert (= start!80002 b!939982))

(declare-fun m!875649 () Bool)

(assert (=> b!939982 m!875649))

(declare-fun m!875651 () Bool)

(assert (=> b!939982 m!875651))

(declare-fun m!875653 () Bool)

(assert (=> start!80002 m!875653))

(declare-fun m!875655 () Bool)

(assert (=> b!939987 m!875655))

(declare-fun m!875657 () Bool)

(assert (=> mapNonEmpty!32296 m!875657))

(check-sat (not start!80002) (not b!939982) tp_is_empty!20337 (not mapNonEmpty!32296) b_and!29259 (not b!939987) (not b_next!17829))
(check-sat b_and!29259 (not b_next!17829))
