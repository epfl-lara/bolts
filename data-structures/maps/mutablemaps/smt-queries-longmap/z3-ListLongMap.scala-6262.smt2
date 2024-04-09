; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80068 () Bool)

(assert start!80068)

(declare-fun b!940941 () Bool)

(declare-fun b_free!17895 () Bool)

(declare-fun b_next!17895 () Bool)

(assert (=> b!940941 (= b_free!17895 (not b_next!17895))))

(declare-fun tp!62161 () Bool)

(declare-fun b_and!29325 () Bool)

(assert (=> b!940941 (= tp!62161 b_and!29325)))

(declare-datatypes ((V!32169 0))(
  ( (V!32170 (val!10252 Int)) )
))
(declare-datatypes ((ValueCell!9720 0))(
  ( (ValueCellFull!9720 (v!12783 V!32169)) (EmptyCell!9720) )
))
(declare-datatypes ((array!56776 0))(
  ( (array!56777 (arr!27319 (Array (_ BitVec 32) ValueCell!9720)) (size!27781 (_ BitVec 32))) )
))
(declare-datatypes ((array!56778 0))(
  ( (array!56779 (arr!27320 (Array (_ BitVec 32) (_ BitVec 64))) (size!27782 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4590 0))(
  ( (LongMapFixedSize!4591 (defaultEntry!5586 Int) (mask!27134 (_ BitVec 32)) (extraKeys!5318 (_ BitVec 32)) (zeroValue!5422 V!32169) (minValue!5422 V!32169) (_size!2350 (_ BitVec 32)) (_keys!10432 array!56778) (_values!5609 array!56776) (_vacant!2350 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4590)

(declare-fun tp_is_empty!20403 () Bool)

(declare-fun e!528977 () Bool)

(declare-fun e!528972 () Bool)

(declare-fun array_inv!21186 (array!56778) Bool)

(declare-fun array_inv!21187 (array!56776) Bool)

(assert (=> b!940941 (= e!528977 (and tp!62161 tp_is_empty!20403 (array_inv!21186 (_keys!10432 thiss!1141)) (array_inv!21187 (_values!5609 thiss!1141)) e!528972))))

(declare-fun res!632750 () Bool)

(declare-fun e!528978 () Bool)

(assert (=> start!80068 (=> (not res!632750) (not e!528978))))

(declare-fun valid!1741 (LongMapFixedSize!4590) Bool)

(assert (=> start!80068 (= res!632750 (valid!1741 thiss!1141))))

(assert (=> start!80068 e!528978))

(assert (=> start!80068 e!528977))

(assert (=> start!80068 true))

(declare-fun b!940942 () Bool)

(declare-fun e!528973 () Bool)

(assert (=> b!940942 (= e!528973 tp_is_empty!20403)))

(declare-fun b!940943 () Bool)

(declare-fun res!632748 () Bool)

(assert (=> b!940943 (=> (not res!632748) (not e!528978))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!940943 (= res!632748 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32395 () Bool)

(declare-fun mapRes!32395 () Bool)

(declare-fun tp!62160 () Bool)

(assert (=> mapNonEmpty!32395 (= mapRes!32395 (and tp!62160 e!528973))))

(declare-fun mapKey!32395 () (_ BitVec 32))

(declare-fun mapRest!32395 () (Array (_ BitVec 32) ValueCell!9720))

(declare-fun mapValue!32395 () ValueCell!9720)

(assert (=> mapNonEmpty!32395 (= (arr!27319 (_values!5609 thiss!1141)) (store mapRest!32395 mapKey!32395 mapValue!32395))))

(declare-fun b!940944 () Bool)

(declare-fun e!528976 () Bool)

(assert (=> b!940944 (= e!528976 tp_is_empty!20403)))

(declare-fun mapIsEmpty!32395 () Bool)

(assert (=> mapIsEmpty!32395 mapRes!32395))

(declare-fun b!940945 () Bool)

(declare-fun e!528974 () Bool)

(assert (=> b!940945 (= e!528974 (not true))))

(declare-datatypes ((SeekEntryResult!9007 0))(
  ( (MissingZero!9007 (index!38398 (_ BitVec 32))) (Found!9007 (index!38399 (_ BitVec 32))) (Intermediate!9007 (undefined!9819 Bool) (index!38400 (_ BitVec 32)) (x!80717 (_ BitVec 32))) (Undefined!9007) (MissingVacant!9007 (index!38401 (_ BitVec 32))) )
))
(declare-fun lt!424856 () SeekEntryResult!9007)

(declare-datatypes ((tuple2!13506 0))(
  ( (tuple2!13507 (_1!6763 (_ BitVec 64)) (_2!6763 V!32169)) )
))
(declare-datatypes ((List!19337 0))(
  ( (Nil!19334) (Cons!19333 (h!20479 tuple2!13506) (t!27660 List!19337)) )
))
(declare-datatypes ((ListLongMap!12217 0))(
  ( (ListLongMap!12218 (toList!6124 List!19337)) )
))
(declare-fun contains!5139 (ListLongMap!12217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3312 (array!56778 array!56776 (_ BitVec 32) (_ BitVec 32) V!32169 V!32169 (_ BitVec 32) Int) ListLongMap!12217)

(assert (=> b!940945 (contains!5139 (getCurrentListMap!3312 (_keys!10432 thiss!1141) (_values!5609 thiss!1141) (mask!27134 thiss!1141) (extraKeys!5318 thiss!1141) (zeroValue!5422 thiss!1141) (minValue!5422 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5586 thiss!1141)) (select (arr!27320 (_keys!10432 thiss!1141)) (index!38399 lt!424856)))))

(declare-datatypes ((Unit!31801 0))(
  ( (Unit!31802) )
))
(declare-fun lt!424857 () Unit!31801)

(declare-fun lemmaValidKeyInArrayIsInListMap!255 (array!56778 array!56776 (_ BitVec 32) (_ BitVec 32) V!32169 V!32169 (_ BitVec 32) Int) Unit!31801)

(assert (=> b!940945 (= lt!424857 (lemmaValidKeyInArrayIsInListMap!255 (_keys!10432 thiss!1141) (_values!5609 thiss!1141) (mask!27134 thiss!1141) (extraKeys!5318 thiss!1141) (zeroValue!5422 thiss!1141) (minValue!5422 thiss!1141) (index!38399 lt!424856) (defaultEntry!5586 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!56778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940945 (arrayContainsKey!0 (_keys!10432 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!424855 () Unit!31801)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56778 (_ BitVec 64) (_ BitVec 32)) Unit!31801)

(assert (=> b!940945 (= lt!424855 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10432 thiss!1141) key!756 (index!38399 lt!424856)))))

(declare-fun b!940946 () Bool)

(assert (=> b!940946 (= e!528978 e!528974)))

(declare-fun res!632749 () Bool)

(assert (=> b!940946 (=> (not res!632749) (not e!528974))))

(get-info :version)

(assert (=> b!940946 (= res!632749 ((_ is Found!9007) lt!424856))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56778 (_ BitVec 32)) SeekEntryResult!9007)

(assert (=> b!940946 (= lt!424856 (seekEntry!0 key!756 (_keys!10432 thiss!1141) (mask!27134 thiss!1141)))))

(declare-fun b!940947 () Bool)

(assert (=> b!940947 (= e!528972 (and e!528976 mapRes!32395))))

(declare-fun condMapEmpty!32395 () Bool)

(declare-fun mapDefault!32395 () ValueCell!9720)

(assert (=> b!940947 (= condMapEmpty!32395 (= (arr!27319 (_values!5609 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9720)) mapDefault!32395)))))

(assert (= (and start!80068 res!632750) b!940943))

(assert (= (and b!940943 res!632748) b!940946))

(assert (= (and b!940946 res!632749) b!940945))

(assert (= (and b!940947 condMapEmpty!32395) mapIsEmpty!32395))

(assert (= (and b!940947 (not condMapEmpty!32395)) mapNonEmpty!32395))

(assert (= (and mapNonEmpty!32395 ((_ is ValueCellFull!9720) mapValue!32395)) b!940942))

(assert (= (and b!940947 ((_ is ValueCellFull!9720) mapDefault!32395)) b!940944))

(assert (= b!940941 b!940947))

(assert (= start!80068 b!940941))

(declare-fun m!876291 () Bool)

(assert (=> mapNonEmpty!32395 m!876291))

(declare-fun m!876293 () Bool)

(assert (=> start!80068 m!876293))

(declare-fun m!876295 () Bool)

(assert (=> b!940941 m!876295))

(declare-fun m!876297 () Bool)

(assert (=> b!940941 m!876297))

(declare-fun m!876299 () Bool)

(assert (=> b!940946 m!876299))

(declare-fun m!876301 () Bool)

(assert (=> b!940945 m!876301))

(declare-fun m!876303 () Bool)

(assert (=> b!940945 m!876303))

(declare-fun m!876305 () Bool)

(assert (=> b!940945 m!876305))

(declare-fun m!876307 () Bool)

(assert (=> b!940945 m!876307))

(declare-fun m!876309 () Bool)

(assert (=> b!940945 m!876309))

(declare-fun m!876311 () Bool)

(assert (=> b!940945 m!876311))

(assert (=> b!940945 m!876307))

(assert (=> b!940945 m!876305))

(check-sat (not b!940941) (not start!80068) tp_is_empty!20403 b_and!29325 (not b!940945) (not b!940946) (not mapNonEmpty!32395) (not b_next!17895))
(check-sat b_and!29325 (not b_next!17895))
