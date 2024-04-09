; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80424 () Bool)

(assert start!80424)

(declare-fun b!944119 () Bool)

(declare-fun b_free!18039 () Bool)

(declare-fun b_next!18039 () Bool)

(assert (=> b!944119 (= b_free!18039 (not b_next!18039))))

(declare-fun tp!62627 () Bool)

(declare-fun b_and!29475 () Bool)

(assert (=> b!944119 (= tp!62627 b_and!29475)))

(declare-fun mapNonEmpty!32646 () Bool)

(declare-fun mapRes!32646 () Bool)

(declare-fun tp!62628 () Bool)

(declare-fun e!530936 () Bool)

(assert (=> mapNonEmpty!32646 (= mapRes!32646 (and tp!62628 e!530936))))

(declare-datatypes ((V!32361 0))(
  ( (V!32362 (val!10324 Int)) )
))
(declare-datatypes ((ValueCell!9792 0))(
  ( (ValueCellFull!9792 (v!12856 V!32361)) (EmptyCell!9792) )
))
(declare-fun mapRest!32646 () (Array (_ BitVec 32) ValueCell!9792))

(declare-fun mapValue!32646 () ValueCell!9792)

(declare-datatypes ((array!57084 0))(
  ( (array!57085 (arr!27463 (Array (_ BitVec 32) ValueCell!9792)) (size!27930 (_ BitVec 32))) )
))
(declare-datatypes ((array!57086 0))(
  ( (array!57087 (arr!27464 (Array (_ BitVec 32) (_ BitVec 64))) (size!27931 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4734 0))(
  ( (LongMapFixedSize!4735 (defaultEntry!5662 Int) (mask!27301 (_ BitVec 32)) (extraKeys!5394 (_ BitVec 32)) (zeroValue!5498 V!32361) (minValue!5498 V!32361) (_size!2422 (_ BitVec 32)) (_keys!10536 array!57086) (_values!5685 array!57084) (_vacant!2422 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4734)

(declare-fun mapKey!32646 () (_ BitVec 32))

(assert (=> mapNonEmpty!32646 (= (arr!27463 (_values!5685 thiss!1141)) (store mapRest!32646 mapKey!32646 mapValue!32646))))

(declare-fun mapIsEmpty!32646 () Bool)

(assert (=> mapIsEmpty!32646 mapRes!32646))

(declare-fun b!944116 () Bool)

(declare-fun res!634356 () Bool)

(declare-fun e!530937 () Bool)

(assert (=> b!944116 (=> (not res!634356) (not e!530937))))

(declare-fun key!756 () (_ BitVec 64))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9054 0))(
  ( (MissingZero!9054 (index!38586 (_ BitVec 32))) (Found!9054 (index!38587 (_ BitVec 32))) (Intermediate!9054 (undefined!9866 Bool) (index!38588 (_ BitVec 32)) (x!81082 (_ BitVec 32))) (Undefined!9054) (MissingVacant!9054 (index!38589 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57086 (_ BitVec 32)) SeekEntryResult!9054)

(assert (=> b!944116 (= res!634356 (not ((_ is Found!9054) (seekEntry!0 key!756 (_keys!10536 thiss!1141) (mask!27301 thiss!1141)))))))

(declare-fun b!944117 () Bool)

(declare-fun e!530934 () Bool)

(assert (=> b!944117 (= e!530934 true)))

(declare-fun lt!425520 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57086 (_ BitVec 32)) Bool)

(assert (=> b!944117 (= lt!425520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10536 thiss!1141) (mask!27301 thiss!1141)))))

(declare-fun b!944118 () Bool)

(assert (=> b!944118 (= e!530937 (not e!530934))))

(declare-fun res!634355 () Bool)

(assert (=> b!944118 (=> res!634355 e!530934)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944118 (= res!634355 (not (validMask!0 (mask!27301 thiss!1141))))))

(declare-fun lt!425522 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57086 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944118 (= lt!425522 (arrayScanForKey!0 (_keys!10536 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944118 (arrayContainsKey!0 (_keys!10536 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31841 0))(
  ( (Unit!31842) )
))
(declare-fun lt!425521 () Unit!31841)

(declare-fun lemmaKeyInListMapIsInArray!304 (array!57086 array!57084 (_ BitVec 32) (_ BitVec 32) V!32361 V!32361 (_ BitVec 64) Int) Unit!31841)

(assert (=> b!944118 (= lt!425521 (lemmaKeyInListMapIsInArray!304 (_keys!10536 thiss!1141) (_values!5685 thiss!1141) (mask!27301 thiss!1141) (extraKeys!5394 thiss!1141) (zeroValue!5498 thiss!1141) (minValue!5498 thiss!1141) key!756 (defaultEntry!5662 thiss!1141)))))

(declare-fun tp_is_empty!20547 () Bool)

(declare-fun e!530935 () Bool)

(declare-fun e!530940 () Bool)

(declare-fun array_inv!21284 (array!57086) Bool)

(declare-fun array_inv!21285 (array!57084) Bool)

(assert (=> b!944119 (= e!530935 (and tp!62627 tp_is_empty!20547 (array_inv!21284 (_keys!10536 thiss!1141)) (array_inv!21285 (_values!5685 thiss!1141)) e!530940))))

(declare-fun b!944120 () Bool)

(declare-fun res!634360 () Bool)

(assert (=> b!944120 (=> (not res!634360) (not e!530937))))

(declare-datatypes ((tuple2!13570 0))(
  ( (tuple2!13571 (_1!6795 (_ BitVec 64)) (_2!6795 V!32361)) )
))
(declare-datatypes ((List!19399 0))(
  ( (Nil!19396) (Cons!19395 (h!20546 tuple2!13570) (t!27724 List!19399)) )
))
(declare-datatypes ((ListLongMap!12281 0))(
  ( (ListLongMap!12282 (toList!6156 List!19399)) )
))
(declare-fun contains!5179 (ListLongMap!12281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3344 (array!57086 array!57084 (_ BitVec 32) (_ BitVec 32) V!32361 V!32361 (_ BitVec 32) Int) ListLongMap!12281)

(assert (=> b!944120 (= res!634360 (contains!5179 (getCurrentListMap!3344 (_keys!10536 thiss!1141) (_values!5685 thiss!1141) (mask!27301 thiss!1141) (extraKeys!5394 thiss!1141) (zeroValue!5498 thiss!1141) (minValue!5498 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5662 thiss!1141)) key!756))))

(declare-fun b!944121 () Bool)

(assert (=> b!944121 (= e!530936 tp_is_empty!20547)))

(declare-fun b!944122 () Bool)

(declare-fun e!530939 () Bool)

(assert (=> b!944122 (= e!530939 tp_is_empty!20547)))

(declare-fun b!944123 () Bool)

(declare-fun res!634358 () Bool)

(assert (=> b!944123 (=> res!634358 e!530934)))

(assert (=> b!944123 (= res!634358 (or (not (= (size!27931 (_keys!10536 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27301 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27931 (_keys!10536 thiss!1141))) (bvslt lt!425522 #b00000000000000000000000000000000) (bvsgt lt!425522 (size!27931 (_keys!10536 thiss!1141)))))))

(declare-fun b!944124 () Bool)

(assert (=> b!944124 (= e!530940 (and e!530939 mapRes!32646))))

(declare-fun condMapEmpty!32646 () Bool)

(declare-fun mapDefault!32646 () ValueCell!9792)

(assert (=> b!944124 (= condMapEmpty!32646 (= (arr!27463 (_values!5685 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9792)) mapDefault!32646)))))

(declare-fun b!944115 () Bool)

(declare-fun res!634359 () Bool)

(assert (=> b!944115 (=> (not res!634359) (not e!530937))))

(assert (=> b!944115 (= res!634359 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!634357 () Bool)

(assert (=> start!80424 (=> (not res!634357) (not e!530937))))

(declare-fun valid!1787 (LongMapFixedSize!4734) Bool)

(assert (=> start!80424 (= res!634357 (valid!1787 thiss!1141))))

(assert (=> start!80424 e!530937))

(assert (=> start!80424 e!530935))

(assert (=> start!80424 true))

(assert (= (and start!80424 res!634357) b!944115))

(assert (= (and b!944115 res!634359) b!944116))

(assert (= (and b!944116 res!634356) b!944120))

(assert (= (and b!944120 res!634360) b!944118))

(assert (= (and b!944118 (not res!634355)) b!944123))

(assert (= (and b!944123 (not res!634358)) b!944117))

(assert (= (and b!944124 condMapEmpty!32646) mapIsEmpty!32646))

(assert (= (and b!944124 (not condMapEmpty!32646)) mapNonEmpty!32646))

(assert (= (and mapNonEmpty!32646 ((_ is ValueCellFull!9792) mapValue!32646)) b!944121))

(assert (= (and b!944124 ((_ is ValueCellFull!9792) mapDefault!32646)) b!944122))

(assert (= b!944119 b!944124))

(assert (= start!80424 b!944119))

(declare-fun m!878257 () Bool)

(assert (=> mapNonEmpty!32646 m!878257))

(declare-fun m!878259 () Bool)

(assert (=> b!944119 m!878259))

(declare-fun m!878261 () Bool)

(assert (=> b!944119 m!878261))

(declare-fun m!878263 () Bool)

(assert (=> b!944120 m!878263))

(assert (=> b!944120 m!878263))

(declare-fun m!878265 () Bool)

(assert (=> b!944120 m!878265))

(declare-fun m!878267 () Bool)

(assert (=> b!944116 m!878267))

(declare-fun m!878269 () Bool)

(assert (=> b!944118 m!878269))

(declare-fun m!878271 () Bool)

(assert (=> b!944118 m!878271))

(declare-fun m!878273 () Bool)

(assert (=> b!944118 m!878273))

(declare-fun m!878275 () Bool)

(assert (=> b!944118 m!878275))

(declare-fun m!878277 () Bool)

(assert (=> start!80424 m!878277))

(declare-fun m!878279 () Bool)

(assert (=> b!944117 m!878279))

(check-sat b_and!29475 (not start!80424) (not b!944118) (not b_next!18039) tp_is_empty!20547 (not mapNonEmpty!32646) (not b!944119) (not b!944117) (not b!944120) (not b!944116))
(check-sat b_and!29475 (not b_next!18039))
