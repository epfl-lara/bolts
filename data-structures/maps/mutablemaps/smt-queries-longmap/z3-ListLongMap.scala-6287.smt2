; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80430 () Bool)

(assert start!80430)

(declare-fun b!944209 () Bool)

(declare-fun b_free!18045 () Bool)

(declare-fun b_next!18045 () Bool)

(assert (=> b!944209 (= b_free!18045 (not b_next!18045))))

(declare-fun tp!62646 () Bool)

(declare-fun b_and!29481 () Bool)

(assert (=> b!944209 (= tp!62646 b_and!29481)))

(declare-fun mapNonEmpty!32655 () Bool)

(declare-fun mapRes!32655 () Bool)

(declare-fun tp!62645 () Bool)

(declare-fun e!531001 () Bool)

(assert (=> mapNonEmpty!32655 (= mapRes!32655 (and tp!62645 e!531001))))

(declare-datatypes ((V!32369 0))(
  ( (V!32370 (val!10327 Int)) )
))
(declare-datatypes ((ValueCell!9795 0))(
  ( (ValueCellFull!9795 (v!12859 V!32369)) (EmptyCell!9795) )
))
(declare-fun mapRest!32655 () (Array (_ BitVec 32) ValueCell!9795))

(declare-fun mapKey!32655 () (_ BitVec 32))

(declare-datatypes ((array!57096 0))(
  ( (array!57097 (arr!27469 (Array (_ BitVec 32) ValueCell!9795)) (size!27936 (_ BitVec 32))) )
))
(declare-datatypes ((array!57098 0))(
  ( (array!57099 (arr!27470 (Array (_ BitVec 32) (_ BitVec 64))) (size!27937 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4740 0))(
  ( (LongMapFixedSize!4741 (defaultEntry!5665 Int) (mask!27306 (_ BitVec 32)) (extraKeys!5397 (_ BitVec 32)) (zeroValue!5501 V!32369) (minValue!5501 V!32369) (_size!2425 (_ BitVec 32)) (_keys!10539 array!57098) (_values!5688 array!57096) (_vacant!2425 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4740)

(declare-fun mapValue!32655 () ValueCell!9795)

(assert (=> mapNonEmpty!32655 (= (arr!27469 (_values!5688 thiss!1141)) (store mapRest!32655 mapKey!32655 mapValue!32655))))

(declare-fun b!944205 () Bool)

(declare-fun res!634409 () Bool)

(declare-fun e!530999 () Bool)

(assert (=> b!944205 (=> (not res!634409) (not e!530999))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13576 0))(
  ( (tuple2!13577 (_1!6798 (_ BitVec 64)) (_2!6798 V!32369)) )
))
(declare-datatypes ((List!19402 0))(
  ( (Nil!19399) (Cons!19398 (h!20549 tuple2!13576) (t!27727 List!19402)) )
))
(declare-datatypes ((ListLongMap!12287 0))(
  ( (ListLongMap!12288 (toList!6159 List!19402)) )
))
(declare-fun contains!5182 (ListLongMap!12287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3347 (array!57098 array!57096 (_ BitVec 32) (_ BitVec 32) V!32369 V!32369 (_ BitVec 32) Int) ListLongMap!12287)

(assert (=> b!944205 (= res!634409 (contains!5182 (getCurrentListMap!3347 (_keys!10539 thiss!1141) (_values!5688 thiss!1141) (mask!27306 thiss!1141) (extraKeys!5397 thiss!1141) (zeroValue!5501 thiss!1141) (minValue!5501 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5665 thiss!1141)) key!756))))

(declare-fun res!634410 () Bool)

(assert (=> start!80430 (=> (not res!634410) (not e!530999))))

(declare-fun valid!1790 (LongMapFixedSize!4740) Bool)

(assert (=> start!80430 (= res!634410 (valid!1790 thiss!1141))))

(assert (=> start!80430 e!530999))

(declare-fun e!531000 () Bool)

(assert (=> start!80430 e!531000))

(assert (=> start!80430 true))

(declare-fun mapIsEmpty!32655 () Bool)

(assert (=> mapIsEmpty!32655 mapRes!32655))

(declare-fun b!944206 () Bool)

(declare-fun res!634412 () Bool)

(assert (=> b!944206 (=> (not res!634412) (not e!530999))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9056 0))(
  ( (MissingZero!9056 (index!38594 (_ BitVec 32))) (Found!9056 (index!38595 (_ BitVec 32))) (Intermediate!9056 (undefined!9868 Bool) (index!38596 (_ BitVec 32)) (x!81092 (_ BitVec 32))) (Undefined!9056) (MissingVacant!9056 (index!38597 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57098 (_ BitVec 32)) SeekEntryResult!9056)

(assert (=> b!944206 (= res!634412 (not ((_ is Found!9056) (seekEntry!0 key!756 (_keys!10539 thiss!1141) (mask!27306 thiss!1141)))))))

(declare-fun b!944207 () Bool)

(declare-fun e!531003 () Bool)

(declare-fun e!531002 () Bool)

(assert (=> b!944207 (= e!531003 (and e!531002 mapRes!32655))))

(declare-fun condMapEmpty!32655 () Bool)

(declare-fun mapDefault!32655 () ValueCell!9795)

(assert (=> b!944207 (= condMapEmpty!32655 (= (arr!27469 (_values!5688 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9795)) mapDefault!32655)))))

(declare-fun b!944208 () Bool)

(declare-fun tp_is_empty!20553 () Bool)

(assert (=> b!944208 (= e!531001 tp_is_empty!20553)))

(declare-fun array_inv!21288 (array!57098) Bool)

(declare-fun array_inv!21289 (array!57096) Bool)

(assert (=> b!944209 (= e!531000 (and tp!62646 tp_is_empty!20553 (array_inv!21288 (_keys!10539 thiss!1141)) (array_inv!21289 (_values!5688 thiss!1141)) e!531003))))

(declare-fun b!944210 () Bool)

(assert (=> b!944210 (= e!531002 tp_is_empty!20553)))

(declare-fun b!944211 () Bool)

(declare-fun res!634413 () Bool)

(assert (=> b!944211 (=> (not res!634413) (not e!530999))))

(assert (=> b!944211 (= res!634413 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944212 () Bool)

(declare-fun res!634411 () Bool)

(declare-fun e!530998 () Bool)

(assert (=> b!944212 (=> res!634411 e!530998)))

(declare-fun lt!425549 () (_ BitVec 32))

(assert (=> b!944212 (= res!634411 (or (not (= (size!27937 (_keys!10539 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27306 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27937 (_keys!10539 thiss!1141))) (bvslt lt!425549 #b00000000000000000000000000000000) (bvsgt lt!425549 (size!27937 (_keys!10539 thiss!1141)))))))

(declare-fun b!944213 () Bool)

(assert (=> b!944213 (= e!530998 true)))

(declare-fun lt!425547 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57098 (_ BitVec 32)) Bool)

(assert (=> b!944213 (= lt!425547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10539 thiss!1141) (mask!27306 thiss!1141)))))

(declare-fun b!944214 () Bool)

(assert (=> b!944214 (= e!530999 (not e!530998))))

(declare-fun res!634414 () Bool)

(assert (=> b!944214 (=> res!634414 e!530998)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944214 (= res!634414 (not (validMask!0 (mask!27306 thiss!1141))))))

(declare-fun arrayScanForKey!0 (array!57098 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944214 (= lt!425549 (arrayScanForKey!0 (_keys!10539 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944214 (arrayContainsKey!0 (_keys!10539 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31845 0))(
  ( (Unit!31846) )
))
(declare-fun lt!425548 () Unit!31845)

(declare-fun lemmaKeyInListMapIsInArray!306 (array!57098 array!57096 (_ BitVec 32) (_ BitVec 32) V!32369 V!32369 (_ BitVec 64) Int) Unit!31845)

(assert (=> b!944214 (= lt!425548 (lemmaKeyInListMapIsInArray!306 (_keys!10539 thiss!1141) (_values!5688 thiss!1141) (mask!27306 thiss!1141) (extraKeys!5397 thiss!1141) (zeroValue!5501 thiss!1141) (minValue!5501 thiss!1141) key!756 (defaultEntry!5665 thiss!1141)))))

(assert (= (and start!80430 res!634410) b!944211))

(assert (= (and b!944211 res!634413) b!944206))

(assert (= (and b!944206 res!634412) b!944205))

(assert (= (and b!944205 res!634409) b!944214))

(assert (= (and b!944214 (not res!634414)) b!944212))

(assert (= (and b!944212 (not res!634411)) b!944213))

(assert (= (and b!944207 condMapEmpty!32655) mapIsEmpty!32655))

(assert (= (and b!944207 (not condMapEmpty!32655)) mapNonEmpty!32655))

(assert (= (and mapNonEmpty!32655 ((_ is ValueCellFull!9795) mapValue!32655)) b!944208))

(assert (= (and b!944207 ((_ is ValueCellFull!9795) mapDefault!32655)) b!944210))

(assert (= b!944209 b!944207))

(assert (= start!80430 b!944209))

(declare-fun m!878329 () Bool)

(assert (=> b!944205 m!878329))

(assert (=> b!944205 m!878329))

(declare-fun m!878331 () Bool)

(assert (=> b!944205 m!878331))

(declare-fun m!878333 () Bool)

(assert (=> b!944214 m!878333))

(declare-fun m!878335 () Bool)

(assert (=> b!944214 m!878335))

(declare-fun m!878337 () Bool)

(assert (=> b!944214 m!878337))

(declare-fun m!878339 () Bool)

(assert (=> b!944214 m!878339))

(declare-fun m!878341 () Bool)

(assert (=> b!944209 m!878341))

(declare-fun m!878343 () Bool)

(assert (=> b!944209 m!878343))

(declare-fun m!878345 () Bool)

(assert (=> start!80430 m!878345))

(declare-fun m!878347 () Bool)

(assert (=> b!944213 m!878347))

(declare-fun m!878349 () Bool)

(assert (=> b!944206 m!878349))

(declare-fun m!878351 () Bool)

(assert (=> mapNonEmpty!32655 m!878351))

(check-sat (not b!944213) (not b!944209) b_and!29481 (not start!80430) (not b!944205) (not b!944214) (not b_next!18045) tp_is_empty!20553 (not b!944206) (not mapNonEmpty!32655))
(check-sat b_and!29481 (not b_next!18045))
