; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81262 () Bool)

(assert start!81262)

(declare-fun b!950368 () Bool)

(declare-fun b_free!18249 () Bool)

(declare-fun b_next!18249 () Bool)

(assert (=> b!950368 (= b_free!18249 (not b_next!18249))))

(declare-fun tp!63346 () Bool)

(declare-fun b_and!29725 () Bool)

(assert (=> b!950368 (= tp!63346 b_and!29725)))

(declare-fun b!950365 () Bool)

(declare-fun e!535117 () Bool)

(declare-fun tp_is_empty!20757 () Bool)

(assert (=> b!950365 (= e!535117 tp_is_empty!20757)))

(declare-fun b!950366 () Bool)

(declare-fun e!535113 () Bool)

(declare-fun e!535116 () Bool)

(assert (=> b!950366 (= e!535113 (not e!535116))))

(declare-fun res!637253 () Bool)

(assert (=> b!950366 (=> res!637253 e!535116)))

(declare-datatypes ((V!32641 0))(
  ( (V!32642 (val!10429 Int)) )
))
(declare-datatypes ((ValueCell!9897 0))(
  ( (ValueCellFull!9897 (v!12973 V!32641)) (EmptyCell!9897) )
))
(declare-datatypes ((array!57556 0))(
  ( (array!57557 (arr!27673 (Array (_ BitVec 32) ValueCell!9897)) (size!28151 (_ BitVec 32))) )
))
(declare-datatypes ((array!57558 0))(
  ( (array!57559 (arr!27674 (Array (_ BitVec 32) (_ BitVec 64))) (size!28152 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4944 0))(
  ( (LongMapFixedSize!4945 (defaultEntry!5785 Int) (mask!27582 (_ BitVec 32)) (extraKeys!5517 (_ BitVec 32)) (zeroValue!5621 V!32641) (minValue!5621 V!32641) (_size!2527 (_ BitVec 32)) (_keys!10718 array!57558) (_values!5808 array!57556) (_vacant!2527 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4944)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!950366 (= res!637253 (not (validMask!0 (mask!27582 thiss!1141))))))

(declare-fun lt!428008 () (_ BitVec 32))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57558 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950366 (= lt!428008 (arrayScanForKey!0 (_keys!10718 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!950366 (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31988 0))(
  ( (Unit!31989) )
))
(declare-fun lt!428009 () Unit!31988)

(declare-fun lemmaKeyInListMapIsInArray!324 (array!57558 array!57556 (_ BitVec 32) (_ BitVec 32) V!32641 V!32641 (_ BitVec 64) Int) Unit!31988)

(assert (=> b!950366 (= lt!428009 (lemmaKeyInListMapIsInArray!324 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) key!756 (defaultEntry!5785 thiss!1141)))))

(declare-fun b!950367 () Bool)

(declare-fun res!637252 () Bool)

(assert (=> b!950367 (=> (not res!637252) (not e!535113))))

(declare-datatypes ((tuple2!13646 0))(
  ( (tuple2!13647 (_1!6833 (_ BitVec 64)) (_2!6833 V!32641)) )
))
(declare-datatypes ((List!19472 0))(
  ( (Nil!19469) (Cons!19468 (h!20628 tuple2!13646) (t!27821 List!19472)) )
))
(declare-datatypes ((ListLongMap!12357 0))(
  ( (ListLongMap!12358 (toList!6194 List!19472)) )
))
(declare-fun contains!5236 (ListLongMap!12357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3379 (array!57558 array!57556 (_ BitVec 32) (_ BitVec 32) V!32641 V!32641 (_ BitVec 32) Int) ListLongMap!12357)

(assert (=> b!950367 (= res!637252 (contains!5236 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)) key!756))))

(declare-fun e!535118 () Bool)

(declare-fun e!535112 () Bool)

(declare-fun array_inv!21420 (array!57558) Bool)

(declare-fun array_inv!21421 (array!57556) Bool)

(assert (=> b!950368 (= e!535112 (and tp!63346 tp_is_empty!20757 (array_inv!21420 (_keys!10718 thiss!1141)) (array_inv!21421 (_values!5808 thiss!1141)) e!535118))))

(declare-fun b!950369 () Bool)

(declare-fun e!535114 () Bool)

(assert (=> b!950369 (= e!535114 tp_is_empty!20757)))

(declare-fun b!950370 () Bool)

(declare-fun mapRes!33050 () Bool)

(assert (=> b!950370 (= e!535118 (and e!535117 mapRes!33050))))

(declare-fun condMapEmpty!33050 () Bool)

(declare-fun mapDefault!33050 () ValueCell!9897)

(assert (=> b!950370 (= condMapEmpty!33050 (= (arr!27673 (_values!5808 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9897)) mapDefault!33050)))))

(declare-fun b!950371 () Bool)

(assert (=> b!950371 (= e!535116 (= (size!28152 (_keys!10718 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27582 thiss!1141))))))

(declare-fun b!950372 () Bool)

(declare-fun res!637256 () Bool)

(assert (=> b!950372 (=> (not res!637256) (not e!535113))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!9131 0))(
  ( (MissingZero!9131 (index!38894 (_ BitVec 32))) (Found!9131 (index!38895 (_ BitVec 32))) (Intermediate!9131 (undefined!9943 Bool) (index!38896 (_ BitVec 32)) (x!81760 (_ BitVec 32))) (Undefined!9131) (MissingVacant!9131 (index!38897 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57558 (_ BitVec 32)) SeekEntryResult!9131)

(assert (=> b!950372 (= res!637256 (not ((_ is Found!9131) (seekEntry!0 key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))))

(declare-fun res!637254 () Bool)

(assert (=> start!81262 (=> (not res!637254) (not e!535113))))

(declare-fun valid!1853 (LongMapFixedSize!4944) Bool)

(assert (=> start!81262 (= res!637254 (valid!1853 thiss!1141))))

(assert (=> start!81262 e!535113))

(assert (=> start!81262 e!535112))

(assert (=> start!81262 true))

(declare-fun mapNonEmpty!33050 () Bool)

(declare-fun tp!63347 () Bool)

(assert (=> mapNonEmpty!33050 (= mapRes!33050 (and tp!63347 e!535114))))

(declare-fun mapRest!33050 () (Array (_ BitVec 32) ValueCell!9897))

(declare-fun mapKey!33050 () (_ BitVec 32))

(declare-fun mapValue!33050 () ValueCell!9897)

(assert (=> mapNonEmpty!33050 (= (arr!27673 (_values!5808 thiss!1141)) (store mapRest!33050 mapKey!33050 mapValue!33050))))

(declare-fun mapIsEmpty!33050 () Bool)

(assert (=> mapIsEmpty!33050 mapRes!33050))

(declare-fun b!950373 () Bool)

(declare-fun res!637255 () Bool)

(assert (=> b!950373 (=> (not res!637255) (not e!535113))))

(assert (=> b!950373 (= res!637255 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!81262 res!637254) b!950373))

(assert (= (and b!950373 res!637255) b!950372))

(assert (= (and b!950372 res!637256) b!950367))

(assert (= (and b!950367 res!637252) b!950366))

(assert (= (and b!950366 (not res!637253)) b!950371))

(assert (= (and b!950370 condMapEmpty!33050) mapIsEmpty!33050))

(assert (= (and b!950370 (not condMapEmpty!33050)) mapNonEmpty!33050))

(assert (= (and mapNonEmpty!33050 ((_ is ValueCellFull!9897) mapValue!33050)) b!950369))

(assert (= (and b!950370 ((_ is ValueCellFull!9897) mapDefault!33050)) b!950365))

(assert (= b!950368 b!950370))

(assert (= start!81262 b!950368))

(declare-fun m!882869 () Bool)

(assert (=> b!950367 m!882869))

(assert (=> b!950367 m!882869))

(declare-fun m!882871 () Bool)

(assert (=> b!950367 m!882871))

(declare-fun m!882873 () Bool)

(assert (=> b!950372 m!882873))

(declare-fun m!882875 () Bool)

(assert (=> b!950368 m!882875))

(declare-fun m!882877 () Bool)

(assert (=> b!950368 m!882877))

(declare-fun m!882879 () Bool)

(assert (=> start!81262 m!882879))

(declare-fun m!882881 () Bool)

(assert (=> b!950366 m!882881))

(declare-fun m!882883 () Bool)

(assert (=> b!950366 m!882883))

(declare-fun m!882885 () Bool)

(assert (=> b!950366 m!882885))

(declare-fun m!882887 () Bool)

(assert (=> b!950366 m!882887))

(declare-fun m!882889 () Bool)

(assert (=> mapNonEmpty!33050 m!882889))

(check-sat (not b!950368) (not mapNonEmpty!33050) (not start!81262) tp_is_empty!20757 (not b!950366) (not b!950372) b_and!29725 (not b!950367) (not b_next!18249))
(check-sat b_and!29725 (not b_next!18249))
(get-model)

(declare-fun d!115111 () Bool)

(declare-fun res!637278 () Bool)

(declare-fun e!535142 () Bool)

(assert (=> d!115111 (=> (not res!637278) (not e!535142))))

(declare-fun simpleValid!374 (LongMapFixedSize!4944) Bool)

(assert (=> d!115111 (= res!637278 (simpleValid!374 thiss!1141))))

(assert (=> d!115111 (= (valid!1853 thiss!1141) e!535142)))

(declare-fun b!950407 () Bool)

(declare-fun res!637279 () Bool)

(assert (=> b!950407 (=> (not res!637279) (not e!535142))))

(declare-fun arrayCountValidKeys!0 (array!57558 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950407 (= res!637279 (= (arrayCountValidKeys!0 (_keys!10718 thiss!1141) #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))) (_size!2527 thiss!1141)))))

(declare-fun b!950408 () Bool)

(declare-fun res!637280 () Bool)

(assert (=> b!950408 (=> (not res!637280) (not e!535142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57558 (_ BitVec 32)) Bool)

(assert (=> b!950408 (= res!637280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))

(declare-fun b!950409 () Bool)

(declare-datatypes ((List!19474 0))(
  ( (Nil!19471) (Cons!19470 (h!20630 (_ BitVec 64)) (t!27825 List!19474)) )
))
(declare-fun arrayNoDuplicates!0 (array!57558 (_ BitVec 32) List!19474) Bool)

(assert (=> b!950409 (= e!535142 (arrayNoDuplicates!0 (_keys!10718 thiss!1141) #b00000000000000000000000000000000 Nil!19471))))

(assert (= (and d!115111 res!637278) b!950407))

(assert (= (and b!950407 res!637279) b!950408))

(assert (= (and b!950408 res!637280) b!950409))

(declare-fun m!882913 () Bool)

(assert (=> d!115111 m!882913))

(declare-fun m!882915 () Bool)

(assert (=> b!950407 m!882915))

(declare-fun m!882917 () Bool)

(assert (=> b!950408 m!882917))

(declare-fun m!882919 () Bool)

(assert (=> b!950409 m!882919))

(assert (=> start!81262 d!115111))

(declare-fun d!115113 () Bool)

(assert (=> d!115113 (= (validMask!0 (mask!27582 thiss!1141)) (and (or (= (mask!27582 thiss!1141) #b00000000000000000000000000000111) (= (mask!27582 thiss!1141) #b00000000000000000000000000001111) (= (mask!27582 thiss!1141) #b00000000000000000000000000011111) (= (mask!27582 thiss!1141) #b00000000000000000000000000111111) (= (mask!27582 thiss!1141) #b00000000000000000000000001111111) (= (mask!27582 thiss!1141) #b00000000000000000000000011111111) (= (mask!27582 thiss!1141) #b00000000000000000000000111111111) (= (mask!27582 thiss!1141) #b00000000000000000000001111111111) (= (mask!27582 thiss!1141) #b00000000000000000000011111111111) (= (mask!27582 thiss!1141) #b00000000000000000000111111111111) (= (mask!27582 thiss!1141) #b00000000000000000001111111111111) (= (mask!27582 thiss!1141) #b00000000000000000011111111111111) (= (mask!27582 thiss!1141) #b00000000000000000111111111111111) (= (mask!27582 thiss!1141) #b00000000000000001111111111111111) (= (mask!27582 thiss!1141) #b00000000000000011111111111111111) (= (mask!27582 thiss!1141) #b00000000000000111111111111111111) (= (mask!27582 thiss!1141) #b00000000000001111111111111111111) (= (mask!27582 thiss!1141) #b00000000000011111111111111111111) (= (mask!27582 thiss!1141) #b00000000000111111111111111111111) (= (mask!27582 thiss!1141) #b00000000001111111111111111111111) (= (mask!27582 thiss!1141) #b00000000011111111111111111111111) (= (mask!27582 thiss!1141) #b00000000111111111111111111111111) (= (mask!27582 thiss!1141) #b00000001111111111111111111111111) (= (mask!27582 thiss!1141) #b00000011111111111111111111111111) (= (mask!27582 thiss!1141) #b00000111111111111111111111111111) (= (mask!27582 thiss!1141) #b00001111111111111111111111111111) (= (mask!27582 thiss!1141) #b00011111111111111111111111111111) (= (mask!27582 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27582 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!950366 d!115113))

(declare-fun d!115115 () Bool)

(declare-fun lt!428018 () (_ BitVec 32))

(assert (=> d!115115 (and (or (bvslt lt!428018 #b00000000000000000000000000000000) (bvsge lt!428018 (size!28152 (_keys!10718 thiss!1141))) (and (bvsge lt!428018 #b00000000000000000000000000000000) (bvslt lt!428018 (size!28152 (_keys!10718 thiss!1141))))) (bvsge lt!428018 #b00000000000000000000000000000000) (bvslt lt!428018 (size!28152 (_keys!10718 thiss!1141))) (= (select (arr!27674 (_keys!10718 thiss!1141)) lt!428018) key!756))))

(declare-fun e!535145 () (_ BitVec 32))

(assert (=> d!115115 (= lt!428018 e!535145)))

(declare-fun c!99174 () Bool)

(assert (=> d!115115 (= c!99174 (= (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115115 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))) (bvslt (size!28152 (_keys!10718 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115115 (= (arrayScanForKey!0 (_keys!10718 thiss!1141) key!756 #b00000000000000000000000000000000) lt!428018)))

(declare-fun b!950414 () Bool)

(assert (=> b!950414 (= e!535145 #b00000000000000000000000000000000)))

(declare-fun b!950415 () Bool)

(assert (=> b!950415 (= e!535145 (arrayScanForKey!0 (_keys!10718 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115115 c!99174) b!950414))

(assert (= (and d!115115 (not c!99174)) b!950415))

(declare-fun m!882921 () Bool)

(assert (=> d!115115 m!882921))

(declare-fun m!882923 () Bool)

(assert (=> d!115115 m!882923))

(declare-fun m!882925 () Bool)

(assert (=> b!950415 m!882925))

(assert (=> b!950366 d!115115))

(declare-fun d!115117 () Bool)

(declare-fun res!637285 () Bool)

(declare-fun e!535150 () Bool)

(assert (=> d!115117 (=> res!637285 e!535150)))

(assert (=> d!115117 (= res!637285 (= (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!115117 (= (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 #b00000000000000000000000000000000) e!535150)))

(declare-fun b!950420 () Bool)

(declare-fun e!535151 () Bool)

(assert (=> b!950420 (= e!535150 e!535151)))

(declare-fun res!637286 () Bool)

(assert (=> b!950420 (=> (not res!637286) (not e!535151))))

(assert (=> b!950420 (= res!637286 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun b!950421 () Bool)

(assert (=> b!950421 (= e!535151 (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!115117 (not res!637285)) b!950420))

(assert (= (and b!950420 res!637286) b!950421))

(assert (=> d!115117 m!882923))

(declare-fun m!882927 () Bool)

(assert (=> b!950421 m!882927))

(assert (=> b!950366 d!115117))

(declare-fun d!115119 () Bool)

(declare-fun e!535154 () Bool)

(assert (=> d!115119 e!535154))

(declare-fun c!99177 () Bool)

(assert (=> d!115119 (= c!99177 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!428021 () Unit!31988)

(declare-fun choose!1593 (array!57558 array!57556 (_ BitVec 32) (_ BitVec 32) V!32641 V!32641 (_ BitVec 64) Int) Unit!31988)

(assert (=> d!115119 (= lt!428021 (choose!1593 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) key!756 (defaultEntry!5785 thiss!1141)))))

(assert (=> d!115119 (validMask!0 (mask!27582 thiss!1141))))

(assert (=> d!115119 (= (lemmaKeyInListMapIsInArray!324 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) key!756 (defaultEntry!5785 thiss!1141)) lt!428021)))

(declare-fun b!950426 () Bool)

(assert (=> b!950426 (= e!535154 (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!950427 () Bool)

(assert (=> b!950427 (= e!535154 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115119 c!99177) b!950426))

(assert (= (and d!115119 (not c!99177)) b!950427))

(declare-fun m!882929 () Bool)

(assert (=> d!115119 m!882929))

(assert (=> d!115119 m!882881))

(assert (=> b!950426 m!882885))

(assert (=> b!950366 d!115119))

(declare-fun d!115121 () Bool)

(declare-fun e!535160 () Bool)

(assert (=> d!115121 e!535160))

(declare-fun res!637289 () Bool)

(assert (=> d!115121 (=> res!637289 e!535160)))

(declare-fun lt!428032 () Bool)

(assert (=> d!115121 (= res!637289 (not lt!428032))))

(declare-fun lt!428033 () Bool)

(assert (=> d!115121 (= lt!428032 lt!428033)))

(declare-fun lt!428031 () Unit!31988)

(declare-fun e!535159 () Unit!31988)

(assert (=> d!115121 (= lt!428031 e!535159)))

(declare-fun c!99180 () Bool)

(assert (=> d!115121 (= c!99180 lt!428033)))

(declare-fun containsKey!466 (List!19472 (_ BitVec 64)) Bool)

(assert (=> d!115121 (= lt!428033 (containsKey!466 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))

(assert (=> d!115121 (= (contains!5236 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)) key!756) lt!428032)))

(declare-fun b!950434 () Bool)

(declare-fun lt!428030 () Unit!31988)

(assert (=> b!950434 (= e!535159 lt!428030)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!361 (List!19472 (_ BitVec 64)) Unit!31988)

(assert (=> b!950434 (= lt!428030 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))

(declare-datatypes ((Option!507 0))(
  ( (Some!506 (v!12975 V!32641)) (None!505) )
))
(declare-fun isDefined!371 (Option!507) Bool)

(declare-fun getValueByKey!501 (List!19472 (_ BitVec 64)) Option!507)

(assert (=> b!950434 (isDefined!371 (getValueByKey!501 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))

(declare-fun b!950435 () Bool)

(declare-fun Unit!31992 () Unit!31988)

(assert (=> b!950435 (= e!535159 Unit!31992)))

(declare-fun b!950436 () Bool)

(assert (=> b!950436 (= e!535160 (isDefined!371 (getValueByKey!501 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756)))))

(assert (= (and d!115121 c!99180) b!950434))

(assert (= (and d!115121 (not c!99180)) b!950435))

(assert (= (and d!115121 (not res!637289)) b!950436))

(declare-fun m!882931 () Bool)

(assert (=> d!115121 m!882931))

(declare-fun m!882933 () Bool)

(assert (=> b!950434 m!882933))

(declare-fun m!882935 () Bool)

(assert (=> b!950434 m!882935))

(assert (=> b!950434 m!882935))

(declare-fun m!882937 () Bool)

(assert (=> b!950434 m!882937))

(assert (=> b!950436 m!882935))

(assert (=> b!950436 m!882935))

(assert (=> b!950436 m!882937))

(assert (=> b!950367 d!115121))

(declare-fun b!950479 () Bool)

(declare-fun e!535192 () Bool)

(declare-fun e!535193 () Bool)

(assert (=> b!950479 (= e!535192 e!535193)))

(declare-fun res!637310 () Bool)

(declare-fun call!41412 () Bool)

(assert (=> b!950479 (= res!637310 call!41412)))

(assert (=> b!950479 (=> (not res!637310) (not e!535193))))

(declare-fun b!950480 () Bool)

(declare-fun e!535190 () Bool)

(declare-fun call!41408 () Bool)

(assert (=> b!950480 (= e!535190 (not call!41408))))

(declare-fun b!950481 () Bool)

(declare-fun res!637309 () Bool)

(declare-fun e!535197 () Bool)

(assert (=> b!950481 (=> (not res!637309) (not e!535197))))

(declare-fun e!535187 () Bool)

(assert (=> b!950481 (= res!637309 e!535187)))

(declare-fun res!637316 () Bool)

(assert (=> b!950481 (=> res!637316 e!535187)))

(declare-fun e!535191 () Bool)

(assert (=> b!950481 (= res!637316 (not e!535191))))

(declare-fun res!637313 () Bool)

(assert (=> b!950481 (=> (not res!637313) (not e!535191))))

(assert (=> b!950481 (= res!637313 (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun b!950482 () Bool)

(declare-fun e!535199 () ListLongMap!12357)

(declare-fun e!535194 () ListLongMap!12357)

(assert (=> b!950482 (= e!535199 e!535194)))

(declare-fun c!99197 () Bool)

(assert (=> b!950482 (= c!99197 (and (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!950483 () Bool)

(declare-fun e!535189 () ListLongMap!12357)

(declare-fun call!41406 () ListLongMap!12357)

(assert (=> b!950483 (= e!535189 call!41406)))

(declare-fun d!115123 () Bool)

(assert (=> d!115123 e!535197))

(declare-fun res!637308 () Bool)

(assert (=> d!115123 (=> (not res!637308) (not e!535197))))

(assert (=> d!115123 (= res!637308 (or (bvsge #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))))

(declare-fun lt!428085 () ListLongMap!12357)

(declare-fun lt!428099 () ListLongMap!12357)

(assert (=> d!115123 (= lt!428085 lt!428099)))

(declare-fun lt!428086 () Unit!31988)

(declare-fun e!535196 () Unit!31988)

(assert (=> d!115123 (= lt!428086 e!535196)))

(declare-fun c!99194 () Bool)

(declare-fun e!535195 () Bool)

(assert (=> d!115123 (= c!99194 e!535195)))

(declare-fun res!637315 () Bool)

(assert (=> d!115123 (=> (not res!637315) (not e!535195))))

(assert (=> d!115123 (= res!637315 (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> d!115123 (= lt!428099 e!535199)))

(declare-fun c!99193 () Bool)

(assert (=> d!115123 (= c!99193 (and (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!115123 (validMask!0 (mask!27582 thiss!1141))))

(assert (=> d!115123 (= (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)) lt!428085)))

(declare-fun b!950484 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!950484 (= e!535191 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950485 () Bool)

(declare-fun Unit!31993 () Unit!31988)

(assert (=> b!950485 (= e!535196 Unit!31993)))

(declare-fun b!950486 () Bool)

(declare-fun lt!428089 () Unit!31988)

(assert (=> b!950486 (= e!535196 lt!428089)))

(declare-fun lt!428087 () ListLongMap!12357)

(declare-fun getCurrentListMapNoExtraKeys!3334 (array!57558 array!57556 (_ BitVec 32) (_ BitVec 32) V!32641 V!32641 (_ BitVec 32) Int) ListLongMap!12357)

(assert (=> b!950486 (= lt!428087 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))

(declare-fun lt!428092 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428092 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428082 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428082 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428097 () Unit!31988)

(declare-fun addStillContains!584 (ListLongMap!12357 (_ BitVec 64) V!32641 (_ BitVec 64)) Unit!31988)

(assert (=> b!950486 (= lt!428097 (addStillContains!584 lt!428087 lt!428092 (zeroValue!5621 thiss!1141) lt!428082))))

(declare-fun +!2828 (ListLongMap!12357 tuple2!13646) ListLongMap!12357)

(assert (=> b!950486 (contains!5236 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))) lt!428082)))

(declare-fun lt!428080 () Unit!31988)

(assert (=> b!950486 (= lt!428080 lt!428097)))

(declare-fun lt!428095 () ListLongMap!12357)

(assert (=> b!950486 (= lt!428095 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))

(declare-fun lt!428078 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428078 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428093 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428093 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428088 () Unit!31988)

(declare-fun addApplyDifferent!458 (ListLongMap!12357 (_ BitVec 64) V!32641 (_ BitVec 64)) Unit!31988)

(assert (=> b!950486 (= lt!428088 (addApplyDifferent!458 lt!428095 lt!428078 (minValue!5621 thiss!1141) lt!428093))))

(declare-fun apply!914 (ListLongMap!12357 (_ BitVec 64)) V!32641)

(assert (=> b!950486 (= (apply!914 (+!2828 lt!428095 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))) lt!428093) (apply!914 lt!428095 lt!428093))))

(declare-fun lt!428081 () Unit!31988)

(assert (=> b!950486 (= lt!428081 lt!428088)))

(declare-fun lt!428090 () ListLongMap!12357)

(assert (=> b!950486 (= lt!428090 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))

(declare-fun lt!428098 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428098 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428079 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428079 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428096 () Unit!31988)

(assert (=> b!950486 (= lt!428096 (addApplyDifferent!458 lt!428090 lt!428098 (zeroValue!5621 thiss!1141) lt!428079))))

(assert (=> b!950486 (= (apply!914 (+!2828 lt!428090 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))) lt!428079) (apply!914 lt!428090 lt!428079))))

(declare-fun lt!428091 () Unit!31988)

(assert (=> b!950486 (= lt!428091 lt!428096)))

(declare-fun lt!428083 () ListLongMap!12357)

(assert (=> b!950486 (= lt!428083 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))

(declare-fun lt!428094 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428094 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!428084 () (_ BitVec 64))

(assert (=> b!950486 (= lt!428084 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950486 (= lt!428089 (addApplyDifferent!458 lt!428083 lt!428094 (minValue!5621 thiss!1141) lt!428084))))

(assert (=> b!950486 (= (apply!914 (+!2828 lt!428083 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))) lt!428084) (apply!914 lt!428083 lt!428084))))

(declare-fun b!950487 () Bool)

(declare-fun res!637312 () Bool)

(assert (=> b!950487 (=> (not res!637312) (not e!535197))))

(assert (=> b!950487 (= res!637312 e!535192)))

(declare-fun c!99195 () Bool)

(assert (=> b!950487 (= c!99195 (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!950488 () Bool)

(declare-fun e!535188 () Bool)

(declare-fun get!14559 (ValueCell!9897 V!32641) V!32641)

(declare-fun dynLambda!1667 (Int (_ BitVec 64)) V!32641)

(assert (=> b!950488 (= e!535188 (= (apply!914 lt!428085 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)) (get!14559 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!950488 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28151 (_values!5808 thiss!1141))))))

(assert (=> b!950488 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun bm!41403 () Bool)

(assert (=> bm!41403 (= call!41412 (contains!5236 lt!428085 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950489 () Bool)

(assert (=> b!950489 (= e!535195 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41404 () Bool)

(declare-fun call!41409 () ListLongMap!12357)

(declare-fun call!41411 () ListLongMap!12357)

(assert (=> bm!41404 (= call!41409 call!41411)))

(declare-fun b!950490 () Bool)

(declare-fun call!41410 () ListLongMap!12357)

(assert (=> b!950490 (= e!535189 call!41410)))

(declare-fun b!950491 () Bool)

(declare-fun e!535198 () Bool)

(assert (=> b!950491 (= e!535198 (= (apply!914 lt!428085 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5621 thiss!1141)))))

(declare-fun b!950492 () Bool)

(assert (=> b!950492 (= e!535197 e!535190)))

(declare-fun c!99196 () Bool)

(assert (=> b!950492 (= c!99196 (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!950493 () Bool)

(assert (=> b!950493 (= e!535194 call!41406)))

(declare-fun bm!41405 () Bool)

(assert (=> bm!41405 (= call!41411 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))

(declare-fun b!950494 () Bool)

(assert (=> b!950494 (= e!535190 e!535198)))

(declare-fun res!637314 () Bool)

(assert (=> b!950494 (= res!637314 call!41408)))

(assert (=> b!950494 (=> (not res!637314) (not e!535198))))

(declare-fun bm!41406 () Bool)

(declare-fun call!41407 () ListLongMap!12357)

(assert (=> bm!41406 (= call!41406 call!41407)))

(declare-fun bm!41407 () Bool)

(assert (=> bm!41407 (= call!41407 (+!2828 (ite c!99193 call!41411 (ite c!99197 call!41409 call!41410)) (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))

(declare-fun bm!41408 () Bool)

(assert (=> bm!41408 (= call!41408 (contains!5236 lt!428085 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950495 () Bool)

(assert (=> b!950495 (= e!535192 (not call!41412))))

(declare-fun b!950496 () Bool)

(assert (=> b!950496 (= e!535193 (= (apply!914 lt!428085 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5621 thiss!1141)))))

(declare-fun b!950497 () Bool)

(assert (=> b!950497 (= e!535199 (+!2828 call!41407 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))

(declare-fun b!950498 () Bool)

(assert (=> b!950498 (= e!535187 e!535188)))

(declare-fun res!637311 () Bool)

(assert (=> b!950498 (=> (not res!637311) (not e!535188))))

(assert (=> b!950498 (= res!637311 (contains!5236 lt!428085 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!950498 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun b!950499 () Bool)

(declare-fun c!99198 () Bool)

(assert (=> b!950499 (= c!99198 (and (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!950499 (= e!535194 e!535189)))

(declare-fun bm!41409 () Bool)

(assert (=> bm!41409 (= call!41410 call!41409)))

(assert (= (and d!115123 c!99193) b!950497))

(assert (= (and d!115123 (not c!99193)) b!950482))

(assert (= (and b!950482 c!99197) b!950493))

(assert (= (and b!950482 (not c!99197)) b!950499))

(assert (= (and b!950499 c!99198) b!950483))

(assert (= (and b!950499 (not c!99198)) b!950490))

(assert (= (or b!950483 b!950490) bm!41409))

(assert (= (or b!950493 bm!41409) bm!41404))

(assert (= (or b!950493 b!950483) bm!41406))

(assert (= (or b!950497 bm!41404) bm!41405))

(assert (= (or b!950497 bm!41406) bm!41407))

(assert (= (and d!115123 res!637315) b!950489))

(assert (= (and d!115123 c!99194) b!950486))

(assert (= (and d!115123 (not c!99194)) b!950485))

(assert (= (and d!115123 res!637308) b!950481))

(assert (= (and b!950481 res!637313) b!950484))

(assert (= (and b!950481 (not res!637316)) b!950498))

(assert (= (and b!950498 res!637311) b!950488))

(assert (= (and b!950481 res!637309) b!950487))

(assert (= (and b!950487 c!99195) b!950479))

(assert (= (and b!950487 (not c!99195)) b!950495))

(assert (= (and b!950479 res!637310) b!950496))

(assert (= (or b!950479 b!950495) bm!41403))

(assert (= (and b!950487 res!637312) b!950492))

(assert (= (and b!950492 c!99196) b!950494))

(assert (= (and b!950492 (not c!99196)) b!950480))

(assert (= (and b!950494 res!637314) b!950491))

(assert (= (or b!950494 b!950480) bm!41408))

(declare-fun b_lambda!14401 () Bool)

(assert (=> (not b_lambda!14401) (not b!950488)))

(declare-fun t!27824 () Bool)

(declare-fun tb!6201 () Bool)

(assert (=> (and b!950368 (= (defaultEntry!5785 thiss!1141) (defaultEntry!5785 thiss!1141)) t!27824) tb!6201))

(declare-fun result!12309 () Bool)

(assert (=> tb!6201 (= result!12309 tp_is_empty!20757)))

(assert (=> b!950488 t!27824))

(declare-fun b_and!29729 () Bool)

(assert (= b_and!29725 (and (=> t!27824 result!12309) b_and!29729)))

(declare-fun m!882939 () Bool)

(assert (=> bm!41407 m!882939))

(declare-fun m!882941 () Bool)

(assert (=> b!950497 m!882941))

(declare-fun m!882943 () Bool)

(assert (=> b!950496 m!882943))

(assert (=> b!950489 m!882923))

(assert (=> b!950489 m!882923))

(declare-fun m!882945 () Bool)

(assert (=> b!950489 m!882945))

(assert (=> b!950484 m!882923))

(assert (=> b!950484 m!882923))

(assert (=> b!950484 m!882945))

(declare-fun m!882947 () Bool)

(assert (=> bm!41403 m!882947))

(declare-fun m!882949 () Bool)

(assert (=> bm!41408 m!882949))

(assert (=> b!950498 m!882923))

(assert (=> b!950498 m!882923))

(declare-fun m!882951 () Bool)

(assert (=> b!950498 m!882951))

(declare-fun m!882953 () Bool)

(assert (=> b!950488 m!882953))

(declare-fun m!882955 () Bool)

(assert (=> b!950488 m!882955))

(assert (=> b!950488 m!882953))

(assert (=> b!950488 m!882955))

(declare-fun m!882957 () Bool)

(assert (=> b!950488 m!882957))

(assert (=> b!950488 m!882923))

(assert (=> b!950488 m!882923))

(declare-fun m!882959 () Bool)

(assert (=> b!950488 m!882959))

(declare-fun m!882961 () Bool)

(assert (=> bm!41405 m!882961))

(declare-fun m!882963 () Bool)

(assert (=> b!950486 m!882963))

(declare-fun m!882965 () Bool)

(assert (=> b!950486 m!882965))

(declare-fun m!882967 () Bool)

(assert (=> b!950486 m!882967))

(declare-fun m!882969 () Bool)

(assert (=> b!950486 m!882969))

(declare-fun m!882971 () Bool)

(assert (=> b!950486 m!882971))

(assert (=> b!950486 m!882965))

(assert (=> b!950486 m!882923))

(declare-fun m!882973 () Bool)

(assert (=> b!950486 m!882973))

(declare-fun m!882975 () Bool)

(assert (=> b!950486 m!882975))

(declare-fun m!882977 () Bool)

(assert (=> b!950486 m!882977))

(assert (=> b!950486 m!882973))

(declare-fun m!882979 () Bool)

(assert (=> b!950486 m!882979))

(declare-fun m!882981 () Bool)

(assert (=> b!950486 m!882981))

(declare-fun m!882983 () Bool)

(assert (=> b!950486 m!882983))

(declare-fun m!882985 () Bool)

(assert (=> b!950486 m!882985))

(declare-fun m!882987 () Bool)

(assert (=> b!950486 m!882987))

(assert (=> b!950486 m!882985))

(declare-fun m!882989 () Bool)

(assert (=> b!950486 m!882989))

(assert (=> b!950486 m!882961))

(declare-fun m!882991 () Bool)

(assert (=> b!950486 m!882991))

(assert (=> b!950486 m!882981))

(assert (=> d!115123 m!882881))

(declare-fun m!882993 () Bool)

(assert (=> b!950491 m!882993))

(assert (=> b!950367 d!115123))

(declare-fun d!115125 () Bool)

(assert (=> d!115125 (= (array_inv!21420 (_keys!10718 thiss!1141)) (bvsge (size!28152 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950368 d!115125))

(declare-fun d!115127 () Bool)

(assert (=> d!115127 (= (array_inv!21421 (_values!5808 thiss!1141)) (bvsge (size!28151 (_values!5808 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950368 d!115127))

(declare-fun d!115129 () Bool)

(declare-fun lt!428109 () SeekEntryResult!9131)

(assert (=> d!115129 (and (or ((_ is MissingVacant!9131) lt!428109) (not ((_ is Found!9131) lt!428109)) (and (bvsge (index!38895 lt!428109) #b00000000000000000000000000000000) (bvslt (index!38895 lt!428109) (size!28152 (_keys!10718 thiss!1141))))) (not ((_ is MissingVacant!9131) lt!428109)) (or (not ((_ is Found!9131) lt!428109)) (= (select (arr!27674 (_keys!10718 thiss!1141)) (index!38895 lt!428109)) key!756)))))

(declare-fun e!535208 () SeekEntryResult!9131)

(assert (=> d!115129 (= lt!428109 e!535208)))

(declare-fun c!99206 () Bool)

(declare-fun lt!428108 () SeekEntryResult!9131)

(assert (=> d!115129 (= c!99206 (and ((_ is Intermediate!9131) lt!428108) (undefined!9943 lt!428108)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57558 (_ BitVec 32)) SeekEntryResult!9131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!115129 (= lt!428108 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27582 thiss!1141)) key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))

(assert (=> d!115129 (validMask!0 (mask!27582 thiss!1141))))

(assert (=> d!115129 (= (seekEntry!0 key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)) lt!428109)))

(declare-fun b!950514 () Bool)

(assert (=> b!950514 (= e!535208 Undefined!9131)))

(declare-fun b!950515 () Bool)

(declare-fun e!535207 () SeekEntryResult!9131)

(assert (=> b!950515 (= e!535208 e!535207)))

(declare-fun lt!428110 () (_ BitVec 64))

(assert (=> b!950515 (= lt!428110 (select (arr!27674 (_keys!10718 thiss!1141)) (index!38896 lt!428108)))))

(declare-fun c!99205 () Bool)

(assert (=> b!950515 (= c!99205 (= lt!428110 key!756))))

(declare-fun b!950516 () Bool)

(declare-fun e!535206 () SeekEntryResult!9131)

(declare-fun lt!428111 () SeekEntryResult!9131)

(assert (=> b!950516 (= e!535206 (ite ((_ is MissingVacant!9131) lt!428111) (MissingZero!9131 (index!38897 lt!428111)) lt!428111))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57558 (_ BitVec 32)) SeekEntryResult!9131)

(assert (=> b!950516 (= lt!428111 (seekKeyOrZeroReturnVacant!0 (x!81760 lt!428108) (index!38896 lt!428108) (index!38896 lt!428108) key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))

(declare-fun b!950517 () Bool)

(assert (=> b!950517 (= e!535207 (Found!9131 (index!38896 lt!428108)))))

(declare-fun b!950518 () Bool)

(assert (=> b!950518 (= e!535206 (MissingZero!9131 (index!38896 lt!428108)))))

(declare-fun b!950519 () Bool)

(declare-fun c!99207 () Bool)

(assert (=> b!950519 (= c!99207 (= lt!428110 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!950519 (= e!535207 e!535206)))

(assert (= (and d!115129 c!99206) b!950514))

(assert (= (and d!115129 (not c!99206)) b!950515))

(assert (= (and b!950515 c!99205) b!950517))

(assert (= (and b!950515 (not c!99205)) b!950519))

(assert (= (and b!950519 c!99207) b!950518))

(assert (= (and b!950519 (not c!99207)) b!950516))

(declare-fun m!882995 () Bool)

(assert (=> d!115129 m!882995))

(declare-fun m!882997 () Bool)

(assert (=> d!115129 m!882997))

(assert (=> d!115129 m!882997))

(declare-fun m!882999 () Bool)

(assert (=> d!115129 m!882999))

(assert (=> d!115129 m!882881))

(declare-fun m!883001 () Bool)

(assert (=> b!950515 m!883001))

(declare-fun m!883003 () Bool)

(assert (=> b!950516 m!883003))

(assert (=> b!950372 d!115129))

(declare-fun b!950526 () Bool)

(declare-fun e!535214 () Bool)

(assert (=> b!950526 (= e!535214 tp_is_empty!20757)))

(declare-fun mapIsEmpty!33056 () Bool)

(declare-fun mapRes!33056 () Bool)

(assert (=> mapIsEmpty!33056 mapRes!33056))

(declare-fun condMapEmpty!33056 () Bool)

(declare-fun mapDefault!33056 () ValueCell!9897)

(assert (=> mapNonEmpty!33050 (= condMapEmpty!33056 (= mapRest!33050 ((as const (Array (_ BitVec 32) ValueCell!9897)) mapDefault!33056)))))

(declare-fun e!535213 () Bool)

(assert (=> mapNonEmpty!33050 (= tp!63347 (and e!535213 mapRes!33056))))

(declare-fun mapNonEmpty!33056 () Bool)

(declare-fun tp!63356 () Bool)

(assert (=> mapNonEmpty!33056 (= mapRes!33056 (and tp!63356 e!535214))))

(declare-fun mapRest!33056 () (Array (_ BitVec 32) ValueCell!9897))

(declare-fun mapValue!33056 () ValueCell!9897)

(declare-fun mapKey!33056 () (_ BitVec 32))

(assert (=> mapNonEmpty!33056 (= mapRest!33050 (store mapRest!33056 mapKey!33056 mapValue!33056))))

(declare-fun b!950527 () Bool)

(assert (=> b!950527 (= e!535213 tp_is_empty!20757)))

(assert (= (and mapNonEmpty!33050 condMapEmpty!33056) mapIsEmpty!33056))

(assert (= (and mapNonEmpty!33050 (not condMapEmpty!33056)) mapNonEmpty!33056))

(assert (= (and mapNonEmpty!33056 ((_ is ValueCellFull!9897) mapValue!33056)) b!950526))

(assert (= (and mapNonEmpty!33050 ((_ is ValueCellFull!9897) mapDefault!33056)) b!950527))

(declare-fun m!883005 () Bool)

(assert (=> mapNonEmpty!33056 m!883005))

(declare-fun b_lambda!14403 () Bool)

(assert (= b_lambda!14401 (or (and b!950368 b_free!18249) b_lambda!14403)))

(check-sat (not d!115119) (not b_next!18249) (not b!950496) (not b!950484) (not b!950488) tp_is_empty!20757 (not b!950407) (not b!950498) (not bm!41405) (not b_lambda!14403) (not b!950415) (not b!950409) (not bm!41403) (not b!950436) (not b!950434) (not d!115111) (not b!950491) (not d!115121) (not b!950486) (not b!950489) (not b!950408) (not b!950516) (not bm!41408) (not d!115129) (not mapNonEmpty!33056) (not b!950497) b_and!29729 (not bm!41407) (not b!950426) (not d!115123) (not b!950421))
(check-sat b_and!29729 (not b_next!18249))
(get-model)

(declare-fun b!950540 () Bool)

(declare-fun e!535221 () SeekEntryResult!9131)

(assert (=> b!950540 (= e!535221 Undefined!9131)))

(declare-fun b!950541 () Bool)

(declare-fun e!535222 () SeekEntryResult!9131)

(assert (=> b!950541 (= e!535222 (Found!9131 (index!38896 lt!428108)))))

(declare-fun b!950542 () Bool)

(declare-fun c!99214 () Bool)

(declare-fun lt!428116 () (_ BitVec 64))

(assert (=> b!950542 (= c!99214 (= lt!428116 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!535223 () SeekEntryResult!9131)

(assert (=> b!950542 (= e!535222 e!535223)))

(declare-fun b!950543 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!950543 (= e!535223 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81760 lt!428108) #b00000000000000000000000000000001) (nextIndex!0 (index!38896 lt!428108) (x!81760 lt!428108) (mask!27582 thiss!1141)) (index!38896 lt!428108) key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))

(declare-fun lt!428117 () SeekEntryResult!9131)

(declare-fun d!115131 () Bool)

(assert (=> d!115131 (and (or ((_ is Undefined!9131) lt!428117) (not ((_ is Found!9131) lt!428117)) (and (bvsge (index!38895 lt!428117) #b00000000000000000000000000000000) (bvslt (index!38895 lt!428117) (size!28152 (_keys!10718 thiss!1141))))) (or ((_ is Undefined!9131) lt!428117) ((_ is Found!9131) lt!428117) (not ((_ is MissingVacant!9131) lt!428117)) (not (= (index!38897 lt!428117) (index!38896 lt!428108))) (and (bvsge (index!38897 lt!428117) #b00000000000000000000000000000000) (bvslt (index!38897 lt!428117) (size!28152 (_keys!10718 thiss!1141))))) (or ((_ is Undefined!9131) lt!428117) (ite ((_ is Found!9131) lt!428117) (= (select (arr!27674 (_keys!10718 thiss!1141)) (index!38895 lt!428117)) key!756) (and ((_ is MissingVacant!9131) lt!428117) (= (index!38897 lt!428117) (index!38896 lt!428108)) (= (select (arr!27674 (_keys!10718 thiss!1141)) (index!38897 lt!428117)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!115131 (= lt!428117 e!535221)))

(declare-fun c!99215 () Bool)

(assert (=> d!115131 (= c!99215 (bvsge (x!81760 lt!428108) #b01111111111111111111111111111110))))

(assert (=> d!115131 (= lt!428116 (select (arr!27674 (_keys!10718 thiss!1141)) (index!38896 lt!428108)))))

(assert (=> d!115131 (validMask!0 (mask!27582 thiss!1141))))

(assert (=> d!115131 (= (seekKeyOrZeroReturnVacant!0 (x!81760 lt!428108) (index!38896 lt!428108) (index!38896 lt!428108) key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)) lt!428117)))

(declare-fun b!950544 () Bool)

(assert (=> b!950544 (= e!535223 (MissingVacant!9131 (index!38896 lt!428108)))))

(declare-fun b!950545 () Bool)

(assert (=> b!950545 (= e!535221 e!535222)))

(declare-fun c!99216 () Bool)

(assert (=> b!950545 (= c!99216 (= lt!428116 key!756))))

(assert (= (and d!115131 c!99215) b!950540))

(assert (= (and d!115131 (not c!99215)) b!950545))

(assert (= (and b!950545 c!99216) b!950541))

(assert (= (and b!950545 (not c!99216)) b!950542))

(assert (= (and b!950542 c!99214) b!950544))

(assert (= (and b!950542 (not c!99214)) b!950543))

(declare-fun m!883007 () Bool)

(assert (=> b!950543 m!883007))

(assert (=> b!950543 m!883007))

(declare-fun m!883009 () Bool)

(assert (=> b!950543 m!883009))

(declare-fun m!883011 () Bool)

(assert (=> d!115131 m!883011))

(declare-fun m!883013 () Bool)

(assert (=> d!115131 m!883013))

(assert (=> d!115131 m!883001))

(assert (=> d!115131 m!882881))

(assert (=> b!950516 d!115131))

(declare-fun d!115133 () Bool)

(declare-fun res!637321 () Bool)

(declare-fun e!535228 () Bool)

(assert (=> d!115133 (=> res!637321 e!535228)))

(assert (=> d!115133 (= res!637321 (and ((_ is Cons!19468) (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))) (= (_1!6833 (h!20628 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))))) key!756)))))

(assert (=> d!115133 (= (containsKey!466 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756) e!535228)))

(declare-fun b!950550 () Bool)

(declare-fun e!535229 () Bool)

(assert (=> b!950550 (= e!535228 e!535229)))

(declare-fun res!637322 () Bool)

(assert (=> b!950550 (=> (not res!637322) (not e!535229))))

(assert (=> b!950550 (= res!637322 (and (or (not ((_ is Cons!19468) (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))))) (bvsle (_1!6833 (h!20628 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))))) key!756)) ((_ is Cons!19468) (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))) (bvslt (_1!6833 (h!20628 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))))) key!756)))))

(declare-fun b!950551 () Bool)

(assert (=> b!950551 (= e!535229 (containsKey!466 (t!27821 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))) key!756))))

(assert (= (and d!115133 (not res!637321)) b!950550))

(assert (= (and b!950550 res!637322) b!950551))

(declare-fun m!883015 () Bool)

(assert (=> b!950551 m!883015))

(assert (=> d!115121 d!115133))

(declare-fun d!115135 () Bool)

(declare-fun lt!428118 () (_ BitVec 32))

(assert (=> d!115135 (and (or (bvslt lt!428118 #b00000000000000000000000000000000) (bvsge lt!428118 (size!28152 (_keys!10718 thiss!1141))) (and (bvsge lt!428118 #b00000000000000000000000000000000) (bvslt lt!428118 (size!28152 (_keys!10718 thiss!1141))))) (bvsge lt!428118 #b00000000000000000000000000000000) (bvslt lt!428118 (size!28152 (_keys!10718 thiss!1141))) (= (select (arr!27674 (_keys!10718 thiss!1141)) lt!428118) key!756))))

(declare-fun e!535230 () (_ BitVec 32))

(assert (=> d!115135 (= lt!428118 e!535230)))

(declare-fun c!99217 () Bool)

(assert (=> d!115135 (= c!99217 (= (select (arr!27674 (_keys!10718 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!115135 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28152 (_keys!10718 thiss!1141))) (bvslt (size!28152 (_keys!10718 thiss!1141)) #b01111111111111111111111111111111))))

(assert (=> d!115135 (= (arrayScanForKey!0 (_keys!10718 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!428118)))

(declare-fun b!950552 () Bool)

(assert (=> b!950552 (= e!535230 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))

(declare-fun b!950553 () Bool)

(assert (=> b!950553 (= e!535230 (arrayScanForKey!0 (_keys!10718 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!115135 c!99217) b!950552))

(assert (= (and d!115135 (not c!99217)) b!950553))

(declare-fun m!883017 () Bool)

(assert (=> d!115135 m!883017))

(declare-fun m!883019 () Bool)

(assert (=> d!115135 m!883019))

(declare-fun m!883021 () Bool)

(assert (=> b!950553 m!883021))

(assert (=> b!950415 d!115135))

(declare-fun d!115137 () Bool)

(declare-fun get!14560 (Option!507) V!32641)

(assert (=> d!115137 (= (apply!914 lt!428085 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14560 (getValueByKey!501 (toList!6194 lt!428085) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26707 () Bool)

(assert (= bs!26707 d!115137))

(declare-fun m!883023 () Bool)

(assert (=> bs!26707 m!883023))

(assert (=> bs!26707 m!883023))

(declare-fun m!883025 () Bool)

(assert (=> bs!26707 m!883025))

(assert (=> b!950491 d!115137))

(declare-fun bm!41412 () Bool)

(declare-fun call!41415 () ListLongMap!12357)

(assert (=> bm!41412 (= call!41415 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5785 thiss!1141)))))

(declare-fun d!115139 () Bool)

(declare-fun e!535249 () Bool)

(assert (=> d!115139 e!535249))

(declare-fun res!637334 () Bool)

(assert (=> d!115139 (=> (not res!637334) (not e!535249))))

(declare-fun lt!428137 () ListLongMap!12357)

(assert (=> d!115139 (= res!637334 (not (contains!5236 lt!428137 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!535245 () ListLongMap!12357)

(assert (=> d!115139 (= lt!428137 e!535245)))

(declare-fun c!99226 () Bool)

(assert (=> d!115139 (= c!99226 (bvsge #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> d!115139 (validMask!0 (mask!27582 thiss!1141))))

(assert (=> d!115139 (= (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)) lt!428137)))

(declare-fun b!950578 () Bool)

(declare-fun e!535248 () Bool)

(assert (=> b!950578 (= e!535248 (= lt!428137 (getCurrentListMapNoExtraKeys!3334 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5785 thiss!1141))))))

(declare-fun b!950579 () Bool)

(declare-fun e!535246 () Bool)

(assert (=> b!950579 (= e!535249 e!535246)))

(declare-fun c!99228 () Bool)

(declare-fun e!535251 () Bool)

(assert (=> b!950579 (= c!99228 e!535251)))

(declare-fun res!637333 () Bool)

(assert (=> b!950579 (=> (not res!637333) (not e!535251))))

(assert (=> b!950579 (= res!637333 (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun b!950580 () Bool)

(declare-fun e!535247 () Bool)

(assert (=> b!950580 (= e!535246 e!535247)))

(assert (=> b!950580 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun res!637332 () Bool)

(assert (=> b!950580 (= res!637332 (contains!5236 lt!428137 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!950580 (=> (not res!637332) (not e!535247))))

(declare-fun b!950581 () Bool)

(assert (=> b!950581 (= e!535251 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!950581 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!950582 () Bool)

(assert (=> b!950582 (= e!535245 (ListLongMap!12358 Nil!19469))))

(declare-fun b!950583 () Bool)

(declare-fun lt!428139 () Unit!31988)

(declare-fun lt!428135 () Unit!31988)

(assert (=> b!950583 (= lt!428139 lt!428135)))

(declare-fun lt!428133 () ListLongMap!12357)

(declare-fun lt!428136 () (_ BitVec 64))

(declare-fun lt!428138 () (_ BitVec 64))

(declare-fun lt!428134 () V!32641)

(assert (=> b!950583 (not (contains!5236 (+!2828 lt!428133 (tuple2!13647 lt!428136 lt!428134)) lt!428138))))

(declare-fun addStillNotContains!229 (ListLongMap!12357 (_ BitVec 64) V!32641 (_ BitVec 64)) Unit!31988)

(assert (=> b!950583 (= lt!428135 (addStillNotContains!229 lt!428133 lt!428136 lt!428134 lt!428138))))

(assert (=> b!950583 (= lt!428138 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!950583 (= lt!428134 (get!14559 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!950583 (= lt!428136 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!950583 (= lt!428133 call!41415)))

(declare-fun e!535250 () ListLongMap!12357)

(assert (=> b!950583 (= e!535250 (+!2828 call!41415 (tuple2!13647 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) (get!14559 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!950584 () Bool)

(declare-fun isEmpty!717 (ListLongMap!12357) Bool)

(assert (=> b!950584 (= e!535248 (isEmpty!717 lt!428137))))

(declare-fun b!950585 () Bool)

(assert (=> b!950585 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> b!950585 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28151 (_values!5808 thiss!1141))))))

(assert (=> b!950585 (= e!535247 (= (apply!914 lt!428137 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)) (get!14559 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!950586 () Bool)

(assert (=> b!950586 (= e!535246 e!535248)))

(declare-fun c!99227 () Bool)

(assert (=> b!950586 (= c!99227 (bvslt #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun b!950587 () Bool)

(assert (=> b!950587 (= e!535245 e!535250)))

(declare-fun c!99229 () Bool)

(assert (=> b!950587 (= c!99229 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950588 () Bool)

(assert (=> b!950588 (= e!535250 call!41415)))

(declare-fun b!950589 () Bool)

(declare-fun res!637331 () Bool)

(assert (=> b!950589 (=> (not res!637331) (not e!535249))))

(assert (=> b!950589 (= res!637331 (not (contains!5236 lt!428137 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115139 c!99226) b!950582))

(assert (= (and d!115139 (not c!99226)) b!950587))

(assert (= (and b!950587 c!99229) b!950583))

(assert (= (and b!950587 (not c!99229)) b!950588))

(assert (= (or b!950583 b!950588) bm!41412))

(assert (= (and d!115139 res!637334) b!950589))

(assert (= (and b!950589 res!637331) b!950579))

(assert (= (and b!950579 res!637333) b!950581))

(assert (= (and b!950579 c!99228) b!950580))

(assert (= (and b!950579 (not c!99228)) b!950586))

(assert (= (and b!950580 res!637332) b!950585))

(assert (= (and b!950586 c!99227) b!950578))

(assert (= (and b!950586 (not c!99227)) b!950584))

(declare-fun b_lambda!14405 () Bool)

(assert (=> (not b_lambda!14405) (not b!950583)))

(assert (=> b!950583 t!27824))

(declare-fun b_and!29731 () Bool)

(assert (= b_and!29729 (and (=> t!27824 result!12309) b_and!29731)))

(declare-fun b_lambda!14407 () Bool)

(assert (=> (not b_lambda!14407) (not b!950585)))

(assert (=> b!950585 t!27824))

(declare-fun b_and!29733 () Bool)

(assert (= b_and!29731 (and (=> t!27824 result!12309) b_and!29733)))

(declare-fun m!883027 () Bool)

(assert (=> b!950589 m!883027))

(assert (=> b!950583 m!882923))

(declare-fun m!883029 () Bool)

(assert (=> b!950583 m!883029))

(assert (=> b!950583 m!882953))

(assert (=> b!950583 m!882955))

(assert (=> b!950583 m!882957))

(declare-fun m!883031 () Bool)

(assert (=> b!950583 m!883031))

(assert (=> b!950583 m!882953))

(assert (=> b!950583 m!883031))

(declare-fun m!883033 () Bool)

(assert (=> b!950583 m!883033))

(assert (=> b!950583 m!882955))

(declare-fun m!883035 () Bool)

(assert (=> b!950583 m!883035))

(assert (=> b!950581 m!882923))

(assert (=> b!950581 m!882923))

(assert (=> b!950581 m!882945))

(declare-fun m!883037 () Bool)

(assert (=> d!115139 m!883037))

(assert (=> d!115139 m!882881))

(declare-fun m!883039 () Bool)

(assert (=> bm!41412 m!883039))

(assert (=> b!950580 m!882923))

(assert (=> b!950580 m!882923))

(declare-fun m!883041 () Bool)

(assert (=> b!950580 m!883041))

(declare-fun m!883043 () Bool)

(assert (=> b!950584 m!883043))

(assert (=> b!950587 m!882923))

(assert (=> b!950587 m!882923))

(assert (=> b!950587 m!882945))

(assert (=> b!950578 m!883039))

(assert (=> b!950585 m!882923))

(assert (=> b!950585 m!882953))

(assert (=> b!950585 m!882955))

(assert (=> b!950585 m!882957))

(assert (=> b!950585 m!882923))

(declare-fun m!883045 () Bool)

(assert (=> b!950585 m!883045))

(assert (=> b!950585 m!882953))

(assert (=> b!950585 m!882955))

(assert (=> bm!41405 d!115139))

(declare-fun d!115141 () Bool)

(declare-fun isEmpty!718 (Option!507) Bool)

(assert (=> d!115141 (= (isDefined!371 (getValueByKey!501 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756)) (not (isEmpty!718 (getValueByKey!501 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))))

(declare-fun bs!26708 () Bool)

(assert (= bs!26708 d!115141))

(assert (=> bs!26708 m!882935))

(declare-fun m!883047 () Bool)

(assert (=> bs!26708 m!883047))

(assert (=> b!950436 d!115141))

(declare-fun b!950599 () Bool)

(declare-fun e!535256 () Option!507)

(declare-fun e!535257 () Option!507)

(assert (=> b!950599 (= e!535256 e!535257)))

(declare-fun c!99235 () Bool)

(assert (=> b!950599 (= c!99235 (and ((_ is Cons!19468) (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))) (not (= (_1!6833 (h!20628 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))))) key!756))))))

(declare-fun b!950598 () Bool)

(assert (=> b!950598 (= e!535256 (Some!506 (_2!6833 (h!20628 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))))))

(declare-fun d!115143 () Bool)

(declare-fun c!99234 () Bool)

(assert (=> d!115143 (= c!99234 (and ((_ is Cons!19468) (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))) (= (_1!6833 (h!20628 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))))) key!756)))))

(assert (=> d!115143 (= (getValueByKey!501 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756) e!535256)))

(declare-fun b!950601 () Bool)

(assert (=> b!950601 (= e!535257 None!505)))

(declare-fun b!950600 () Bool)

(assert (=> b!950600 (= e!535257 (getValueByKey!501 (t!27821 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))) key!756))))

(assert (= (and d!115143 c!99234) b!950598))

(assert (= (and d!115143 (not c!99234)) b!950599))

(assert (= (and b!950599 c!99235) b!950600))

(assert (= (and b!950599 (not c!99235)) b!950601))

(declare-fun m!883049 () Bool)

(assert (=> b!950600 m!883049))

(assert (=> b!950436 d!115143))

(assert (=> b!950426 d!115117))

(declare-fun d!115145 () Bool)

(assert (=> d!115145 (= (apply!914 lt!428085 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)) (get!14560 (getValueByKey!501 (toList!6194 lt!428085) (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26709 () Bool)

(assert (= bs!26709 d!115145))

(assert (=> bs!26709 m!882923))

(declare-fun m!883051 () Bool)

(assert (=> bs!26709 m!883051))

(assert (=> bs!26709 m!883051))

(declare-fun m!883053 () Bool)

(assert (=> bs!26709 m!883053))

(assert (=> b!950488 d!115145))

(declare-fun d!115147 () Bool)

(declare-fun c!99238 () Bool)

(assert (=> d!115147 (= c!99238 ((_ is ValueCellFull!9897) (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!535260 () V!32641)

(assert (=> d!115147 (= (get!14559 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!535260)))

(declare-fun b!950606 () Bool)

(declare-fun get!14561 (ValueCell!9897 V!32641) V!32641)

(assert (=> b!950606 (= e!535260 (get!14561 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!950607 () Bool)

(declare-fun get!14562 (ValueCell!9897 V!32641) V!32641)

(assert (=> b!950607 (= e!535260 (get!14562 (select (arr!27673 (_values!5808 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1667 (defaultEntry!5785 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115147 c!99238) b!950606))

(assert (= (and d!115147 (not c!99238)) b!950607))

(assert (=> b!950606 m!882953))

(assert (=> b!950606 m!882955))

(declare-fun m!883055 () Bool)

(assert (=> b!950606 m!883055))

(assert (=> b!950607 m!882953))

(assert (=> b!950607 m!882955))

(declare-fun m!883057 () Bool)

(assert (=> b!950607 m!883057))

(assert (=> b!950488 d!115147))

(declare-fun d!115149 () Bool)

(declare-fun e!535262 () Bool)

(assert (=> d!115149 e!535262))

(declare-fun res!637335 () Bool)

(assert (=> d!115149 (=> res!637335 e!535262)))

(declare-fun lt!428142 () Bool)

(assert (=> d!115149 (= res!637335 (not lt!428142))))

(declare-fun lt!428143 () Bool)

(assert (=> d!115149 (= lt!428142 lt!428143)))

(declare-fun lt!428141 () Unit!31988)

(declare-fun e!535261 () Unit!31988)

(assert (=> d!115149 (= lt!428141 e!535261)))

(declare-fun c!99239 () Bool)

(assert (=> d!115149 (= c!99239 lt!428143)))

(assert (=> d!115149 (= lt!428143 (containsKey!466 (toList!6194 lt!428085) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!115149 (= (contains!5236 lt!428085 #b0000000000000000000000000000000000000000000000000000000000000000) lt!428142)))

(declare-fun b!950608 () Bool)

(declare-fun lt!428140 () Unit!31988)

(assert (=> b!950608 (= e!535261 lt!428140)))

(assert (=> b!950608 (= lt!428140 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!6194 lt!428085) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!950608 (isDefined!371 (getValueByKey!501 (toList!6194 lt!428085) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950609 () Bool)

(declare-fun Unit!31994 () Unit!31988)

(assert (=> b!950609 (= e!535261 Unit!31994)))

(declare-fun b!950610 () Bool)

(assert (=> b!950610 (= e!535262 (isDefined!371 (getValueByKey!501 (toList!6194 lt!428085) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115149 c!99239) b!950608))

(assert (= (and d!115149 (not c!99239)) b!950609))

(assert (= (and d!115149 (not res!637335)) b!950610))

(declare-fun m!883059 () Bool)

(assert (=> d!115149 m!883059))

(declare-fun m!883061 () Bool)

(assert (=> b!950608 m!883061))

(declare-fun m!883063 () Bool)

(assert (=> b!950608 m!883063))

(assert (=> b!950608 m!883063))

(declare-fun m!883065 () Bool)

(assert (=> b!950608 m!883065))

(assert (=> b!950610 m!883063))

(assert (=> b!950610 m!883063))

(assert (=> b!950610 m!883065))

(assert (=> bm!41403 d!115149))

(declare-fun d!115151 () Bool)

(assert (=> d!115151 (= (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!950489 d!115151))

(declare-fun d!115153 () Bool)

(declare-fun res!637336 () Bool)

(declare-fun e!535263 () Bool)

(assert (=> d!115153 (=> res!637336 e!535263)))

(assert (=> d!115153 (= res!637336 (= (select (arr!27674 (_keys!10718 thiss!1141)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!756))))

(assert (=> d!115153 (= (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!535263)))

(declare-fun b!950611 () Bool)

(declare-fun e!535264 () Bool)

(assert (=> b!950611 (= e!535263 e!535264)))

(declare-fun res!637337 () Bool)

(assert (=> b!950611 (=> (not res!637337) (not e!535264))))

(assert (=> b!950611 (= res!637337 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun b!950612 () Bool)

(assert (=> b!950612 (= e!535264 (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!115153 (not res!637336)) b!950611))

(assert (= (and b!950611 res!637337) b!950612))

(assert (=> d!115153 m!883019))

(declare-fun m!883067 () Bool)

(assert (=> b!950612 m!883067))

(assert (=> b!950421 d!115153))

(declare-fun d!115155 () Bool)

(declare-fun e!535267 () Bool)

(assert (=> d!115155 e!535267))

(declare-fun res!637343 () Bool)

(assert (=> d!115155 (=> (not res!637343) (not e!535267))))

(declare-fun lt!428152 () ListLongMap!12357)

(assert (=> d!115155 (= res!637343 (contains!5236 lt!428152 (_1!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))

(declare-fun lt!428155 () List!19472)

(assert (=> d!115155 (= lt!428152 (ListLongMap!12358 lt!428155))))

(declare-fun lt!428153 () Unit!31988)

(declare-fun lt!428154 () Unit!31988)

(assert (=> d!115155 (= lt!428153 lt!428154)))

(assert (=> d!115155 (= (getValueByKey!501 lt!428155 (_1!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!267 (List!19472 (_ BitVec 64) V!32641) Unit!31988)

(assert (=> d!115155 (= lt!428154 (lemmaContainsTupThenGetReturnValue!267 lt!428155 (_1!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))

(declare-fun insertStrictlySorted!323 (List!19472 (_ BitVec 64) V!32641) List!19472)

(assert (=> d!115155 (= lt!428155 (insertStrictlySorted!323 (toList!6194 call!41407) (_1!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))

(assert (=> d!115155 (= (+!2828 call!41407 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))) lt!428152)))

(declare-fun b!950617 () Bool)

(declare-fun res!637342 () Bool)

(assert (=> b!950617 (=> (not res!637342) (not e!535267))))

(assert (=> b!950617 (= res!637342 (= (getValueByKey!501 (toList!6194 lt!428152) (_1!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))))

(declare-fun b!950618 () Bool)

(declare-fun contains!5238 (List!19472 tuple2!13646) Bool)

(assert (=> b!950618 (= e!535267 (contains!5238 (toList!6194 lt!428152) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))

(assert (= (and d!115155 res!637343) b!950617))

(assert (= (and b!950617 res!637342) b!950618))

(declare-fun m!883069 () Bool)

(assert (=> d!115155 m!883069))

(declare-fun m!883071 () Bool)

(assert (=> d!115155 m!883071))

(declare-fun m!883073 () Bool)

(assert (=> d!115155 m!883073))

(declare-fun m!883075 () Bool)

(assert (=> d!115155 m!883075))

(declare-fun m!883077 () Bool)

(assert (=> b!950617 m!883077))

(declare-fun m!883079 () Bool)

(assert (=> b!950618 m!883079))

(assert (=> b!950497 d!115155))

(declare-fun d!115157 () Bool)

(declare-fun e!535269 () Bool)

(assert (=> d!115157 e!535269))

(declare-fun res!637344 () Bool)

(assert (=> d!115157 (=> res!637344 e!535269)))

(declare-fun lt!428158 () Bool)

(assert (=> d!115157 (= res!637344 (not lt!428158))))

(declare-fun lt!428159 () Bool)

(assert (=> d!115157 (= lt!428158 lt!428159)))

(declare-fun lt!428157 () Unit!31988)

(declare-fun e!535268 () Unit!31988)

(assert (=> d!115157 (= lt!428157 e!535268)))

(declare-fun c!99240 () Bool)

(assert (=> d!115157 (= c!99240 lt!428159)))

(assert (=> d!115157 (= lt!428159 (containsKey!466 (toList!6194 lt!428085) (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!115157 (= (contains!5236 lt!428085 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)) lt!428158)))

(declare-fun b!950619 () Bool)

(declare-fun lt!428156 () Unit!31988)

(assert (=> b!950619 (= e!535268 lt!428156)))

(assert (=> b!950619 (= lt!428156 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!6194 lt!428085) (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!950619 (isDefined!371 (getValueByKey!501 (toList!6194 lt!428085) (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950620 () Bool)

(declare-fun Unit!31995 () Unit!31988)

(assert (=> b!950620 (= e!535268 Unit!31995)))

(declare-fun b!950621 () Bool)

(assert (=> b!950621 (= e!535269 (isDefined!371 (getValueByKey!501 (toList!6194 lt!428085) (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!115157 c!99240) b!950619))

(assert (= (and d!115157 (not c!99240)) b!950620))

(assert (= (and d!115157 (not res!637344)) b!950621))

(assert (=> d!115157 m!882923))

(declare-fun m!883081 () Bool)

(assert (=> d!115157 m!883081))

(assert (=> b!950619 m!882923))

(declare-fun m!883083 () Bool)

(assert (=> b!950619 m!883083))

(assert (=> b!950619 m!882923))

(assert (=> b!950619 m!883051))

(assert (=> b!950619 m!883051))

(declare-fun m!883085 () Bool)

(assert (=> b!950619 m!883085))

(assert (=> b!950621 m!882923))

(assert (=> b!950621 m!883051))

(assert (=> b!950621 m!883051))

(assert (=> b!950621 m!883085))

(assert (=> b!950498 d!115157))

(declare-fun b!950641 () Bool)

(declare-fun lt!428164 () SeekEntryResult!9131)

(assert (=> b!950641 (and (bvsge (index!38896 lt!428164) #b00000000000000000000000000000000) (bvslt (index!38896 lt!428164) (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun e!535283 () Bool)

(assert (=> b!950641 (= e!535283 (= (select (arr!27674 (_keys!10718 thiss!1141)) (index!38896 lt!428164)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950642 () Bool)

(declare-fun e!535284 () Bool)

(declare-fun e!535280 () Bool)

(assert (=> b!950642 (= e!535284 e!535280)))

(declare-fun res!637351 () Bool)

(assert (=> b!950642 (= res!637351 (and ((_ is Intermediate!9131) lt!428164) (not (undefined!9943 lt!428164)) (bvslt (x!81760 lt!428164) #b01111111111111111111111111111110) (bvsge (x!81760 lt!428164) #b00000000000000000000000000000000) (bvsge (x!81760 lt!428164) #b00000000000000000000000000000000)))))

(assert (=> b!950642 (=> (not res!637351) (not e!535280))))

(declare-fun b!950643 () Bool)

(assert (=> b!950643 (and (bvsge (index!38896 lt!428164) #b00000000000000000000000000000000) (bvslt (index!38896 lt!428164) (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun res!637352 () Bool)

(assert (=> b!950643 (= res!637352 (= (select (arr!27674 (_keys!10718 thiss!1141)) (index!38896 lt!428164)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!950643 (=> res!637352 e!535283)))

(declare-fun b!950644 () Bool)

(assert (=> b!950644 (= e!535284 (bvsge (x!81760 lt!428164) #b01111111111111111111111111111110))))

(declare-fun b!950645 () Bool)

(declare-fun e!535282 () SeekEntryResult!9131)

(declare-fun e!535281 () SeekEntryResult!9131)

(assert (=> b!950645 (= e!535282 e!535281)))

(declare-fun c!99248 () Bool)

(declare-fun lt!428165 () (_ BitVec 64))

(assert (=> b!950645 (= c!99248 (or (= lt!428165 key!756) (= (bvadd lt!428165 lt!428165) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!950646 () Bool)

(assert (=> b!950646 (= e!535281 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27582 thiss!1141)) #b00000000000000000000000000000000 (mask!27582 thiss!1141)) key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))

(declare-fun b!950640 () Bool)

(assert (=> b!950640 (= e!535281 (Intermediate!9131 false (toIndex!0 key!756 (mask!27582 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun d!115159 () Bool)

(assert (=> d!115159 e!535284))

(declare-fun c!99247 () Bool)

(assert (=> d!115159 (= c!99247 (and ((_ is Intermediate!9131) lt!428164) (undefined!9943 lt!428164)))))

(assert (=> d!115159 (= lt!428164 e!535282)))

(declare-fun c!99249 () Bool)

(assert (=> d!115159 (= c!99249 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!115159 (= lt!428165 (select (arr!27674 (_keys!10718 thiss!1141)) (toIndex!0 key!756 (mask!27582 thiss!1141))))))

(assert (=> d!115159 (validMask!0 (mask!27582 thiss!1141))))

(assert (=> d!115159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27582 thiss!1141)) key!756 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)) lt!428164)))

(declare-fun b!950647 () Bool)

(assert (=> b!950647 (and (bvsge (index!38896 lt!428164) #b00000000000000000000000000000000) (bvslt (index!38896 lt!428164) (size!28152 (_keys!10718 thiss!1141))))))

(declare-fun res!637353 () Bool)

(assert (=> b!950647 (= res!637353 (= (select (arr!27674 (_keys!10718 thiss!1141)) (index!38896 lt!428164)) key!756))))

(assert (=> b!950647 (=> res!637353 e!535283)))

(assert (=> b!950647 (= e!535280 e!535283)))

(declare-fun b!950648 () Bool)

(assert (=> b!950648 (= e!535282 (Intermediate!9131 true (toIndex!0 key!756 (mask!27582 thiss!1141)) #b00000000000000000000000000000000))))

(assert (= (and d!115159 c!99249) b!950648))

(assert (= (and d!115159 (not c!99249)) b!950645))

(assert (= (and b!950645 c!99248) b!950640))

(assert (= (and b!950645 (not c!99248)) b!950646))

(assert (= (and d!115159 c!99247) b!950644))

(assert (= (and d!115159 (not c!99247)) b!950642))

(assert (= (and b!950642 res!637351) b!950647))

(assert (= (and b!950647 (not res!637353)) b!950643))

(assert (= (and b!950643 (not res!637352)) b!950641))

(assert (=> d!115159 m!882997))

(declare-fun m!883087 () Bool)

(assert (=> d!115159 m!883087))

(assert (=> d!115159 m!882881))

(declare-fun m!883089 () Bool)

(assert (=> b!950647 m!883089))

(assert (=> b!950641 m!883089))

(assert (=> b!950646 m!882997))

(declare-fun m!883091 () Bool)

(assert (=> b!950646 m!883091))

(assert (=> b!950646 m!883091))

(declare-fun m!883093 () Bool)

(assert (=> b!950646 m!883093))

(assert (=> b!950643 m!883089))

(assert (=> d!115129 d!115159))

(declare-fun d!115161 () Bool)

(declare-fun lt!428171 () (_ BitVec 32))

(declare-fun lt!428170 () (_ BitVec 32))

(assert (=> d!115161 (= lt!428171 (bvmul (bvxor lt!428170 (bvlshr lt!428170 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!115161 (= lt!428170 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!115161 (and (bvsge (mask!27582 thiss!1141) #b00000000000000000000000000000000) (let ((res!637354 (let ((h!20631 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81778 (bvmul (bvxor h!20631 (bvlshr h!20631 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81778 (bvlshr x!81778 #b00000000000000000000000000001101)) (mask!27582 thiss!1141)))))) (and (bvslt res!637354 (bvadd (mask!27582 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!637354 #b00000000000000000000000000000000))))))

(assert (=> d!115161 (= (toIndex!0 key!756 (mask!27582 thiss!1141)) (bvand (bvxor lt!428171 (bvlshr lt!428171 #b00000000000000000000000000001101)) (mask!27582 thiss!1141)))))

(assert (=> d!115129 d!115161))

(assert (=> d!115129 d!115113))

(assert (=> b!950484 d!115151))

(declare-fun d!115163 () Bool)

(assert (=> d!115163 (isDefined!371 (getValueByKey!501 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))

(declare-fun lt!428174 () Unit!31988)

(declare-fun choose!1594 (List!19472 (_ BitVec 64)) Unit!31988)

(assert (=> d!115163 (= lt!428174 (choose!1594 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))

(declare-fun e!535287 () Bool)

(assert (=> d!115163 e!535287))

(declare-fun res!637357 () Bool)

(assert (=> d!115163 (=> (not res!637357) (not e!535287))))

(declare-fun isStrictlySorted!508 (List!19472) Bool)

(assert (=> d!115163 (= res!637357 (isStrictlySorted!508 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141)))))))

(assert (=> d!115163 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756) lt!428174)))

(declare-fun b!950651 () Bool)

(assert (=> b!950651 (= e!535287 (containsKey!466 (toList!6194 (getCurrentListMap!3379 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5785 thiss!1141))) key!756))))

(assert (= (and d!115163 res!637357) b!950651))

(assert (=> d!115163 m!882935))

(assert (=> d!115163 m!882935))

(assert (=> d!115163 m!882937))

(declare-fun m!883095 () Bool)

(assert (=> d!115163 m!883095))

(declare-fun m!883097 () Bool)

(assert (=> d!115163 m!883097))

(assert (=> b!950651 m!882931))

(assert (=> b!950434 d!115163))

(assert (=> b!950434 d!115141))

(assert (=> b!950434 d!115143))

(declare-fun d!115165 () Bool)

(declare-fun e!535290 () Bool)

(assert (=> d!115165 e!535290))

(declare-fun c!99252 () Bool)

(assert (=> d!115165 (= c!99252 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!115165 true))

(declare-fun _$15!104 () Unit!31988)

(assert (=> d!115165 (= (choose!1593 (_keys!10718 thiss!1141) (_values!5808 thiss!1141) (mask!27582 thiss!1141) (extraKeys!5517 thiss!1141) (zeroValue!5621 thiss!1141) (minValue!5621 thiss!1141) key!756 (defaultEntry!5785 thiss!1141)) _$15!104)))

(declare-fun b!950656 () Bool)

(assert (=> b!950656 (= e!535290 (arrayContainsKey!0 (_keys!10718 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun b!950657 () Bool)

(assert (=> b!950657 (= e!535290 (ite (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5517 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!115165 c!99252) b!950656))

(assert (= (and d!115165 (not c!99252)) b!950657))

(assert (=> b!950656 m!882885))

(assert (=> d!115119 d!115165))

(assert (=> d!115119 d!115113))

(declare-fun d!115167 () Bool)

(declare-fun e!535291 () Bool)

(assert (=> d!115167 e!535291))

(declare-fun res!637359 () Bool)

(assert (=> d!115167 (=> (not res!637359) (not e!535291))))

(declare-fun lt!428175 () ListLongMap!12357)

(assert (=> d!115167 (= res!637359 (contains!5236 lt!428175 (_1!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))))))

(declare-fun lt!428178 () List!19472)

(assert (=> d!115167 (= lt!428175 (ListLongMap!12358 lt!428178))))

(declare-fun lt!428176 () Unit!31988)

(declare-fun lt!428177 () Unit!31988)

(assert (=> d!115167 (= lt!428176 lt!428177)))

(assert (=> d!115167 (= (getValueByKey!501 lt!428178 (_1!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))))))

(assert (=> d!115167 (= lt!428177 (lemmaContainsTupThenGetReturnValue!267 lt!428178 (_1!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))))))

(assert (=> d!115167 (= lt!428178 (insertStrictlySorted!323 (toList!6194 lt!428087) (_1!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))))))

(assert (=> d!115167 (= (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))) lt!428175)))

(declare-fun b!950658 () Bool)

(declare-fun res!637358 () Bool)

(assert (=> b!950658 (=> (not res!637358) (not e!535291))))

(assert (=> b!950658 (= res!637358 (= (getValueByKey!501 (toList!6194 lt!428175) (_1!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))))))))

(declare-fun b!950659 () Bool)

(assert (=> b!950659 (= e!535291 (contains!5238 (toList!6194 lt!428175) (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))))))

(assert (= (and d!115167 res!637359) b!950658))

(assert (= (and b!950658 res!637358) b!950659))

(declare-fun m!883099 () Bool)

(assert (=> d!115167 m!883099))

(declare-fun m!883101 () Bool)

(assert (=> d!115167 m!883101))

(declare-fun m!883103 () Bool)

(assert (=> d!115167 m!883103))

(declare-fun m!883105 () Bool)

(assert (=> d!115167 m!883105))

(declare-fun m!883107 () Bool)

(assert (=> b!950658 m!883107))

(declare-fun m!883109 () Bool)

(assert (=> b!950659 m!883109))

(assert (=> b!950486 d!115167))

(declare-fun d!115169 () Bool)

(assert (=> d!115169 (= (apply!914 (+!2828 lt!428095 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))) lt!428093) (get!14560 (getValueByKey!501 (toList!6194 (+!2828 lt!428095 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))) lt!428093)))))

(declare-fun bs!26710 () Bool)

(assert (= bs!26710 d!115169))

(declare-fun m!883111 () Bool)

(assert (=> bs!26710 m!883111))

(assert (=> bs!26710 m!883111))

(declare-fun m!883113 () Bool)

(assert (=> bs!26710 m!883113))

(assert (=> b!950486 d!115169))

(declare-fun d!115171 () Bool)

(assert (=> d!115171 (= (apply!914 (+!2828 lt!428083 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))) lt!428084) (get!14560 (getValueByKey!501 (toList!6194 (+!2828 lt!428083 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))) lt!428084)))))

(declare-fun bs!26711 () Bool)

(assert (= bs!26711 d!115171))

(declare-fun m!883115 () Bool)

(assert (=> bs!26711 m!883115))

(assert (=> bs!26711 m!883115))

(declare-fun m!883117 () Bool)

(assert (=> bs!26711 m!883117))

(assert (=> b!950486 d!115171))

(declare-fun d!115173 () Bool)

(declare-fun e!535293 () Bool)

(assert (=> d!115173 e!535293))

(declare-fun res!637360 () Bool)

(assert (=> d!115173 (=> res!637360 e!535293)))

(declare-fun lt!428181 () Bool)

(assert (=> d!115173 (= res!637360 (not lt!428181))))

(declare-fun lt!428182 () Bool)

(assert (=> d!115173 (= lt!428181 lt!428182)))

(declare-fun lt!428180 () Unit!31988)

(declare-fun e!535292 () Unit!31988)

(assert (=> d!115173 (= lt!428180 e!535292)))

(declare-fun c!99253 () Bool)

(assert (=> d!115173 (= c!99253 lt!428182)))

(assert (=> d!115173 (= lt!428182 (containsKey!466 (toList!6194 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))) lt!428082))))

(assert (=> d!115173 (= (contains!5236 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))) lt!428082) lt!428181)))

(declare-fun b!950660 () Bool)

(declare-fun lt!428179 () Unit!31988)

(assert (=> b!950660 (= e!535292 lt!428179)))

(assert (=> b!950660 (= lt!428179 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!6194 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))) lt!428082))))

(assert (=> b!950660 (isDefined!371 (getValueByKey!501 (toList!6194 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))) lt!428082))))

(declare-fun b!950661 () Bool)

(declare-fun Unit!31996 () Unit!31988)

(assert (=> b!950661 (= e!535292 Unit!31996)))

(declare-fun b!950662 () Bool)

(assert (=> b!950662 (= e!535293 (isDefined!371 (getValueByKey!501 (toList!6194 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141)))) lt!428082)))))

(assert (= (and d!115173 c!99253) b!950660))

(assert (= (and d!115173 (not c!99253)) b!950661))

(assert (= (and d!115173 (not res!637360)) b!950662))

(declare-fun m!883119 () Bool)

(assert (=> d!115173 m!883119))

(declare-fun m!883121 () Bool)

(assert (=> b!950660 m!883121))

(declare-fun m!883123 () Bool)

(assert (=> b!950660 m!883123))

(assert (=> b!950660 m!883123))

(declare-fun m!883125 () Bool)

(assert (=> b!950660 m!883125))

(assert (=> b!950662 m!883123))

(assert (=> b!950662 m!883123))

(assert (=> b!950662 m!883125))

(assert (=> b!950486 d!115173))

(declare-fun d!115175 () Bool)

(declare-fun e!535294 () Bool)

(assert (=> d!115175 e!535294))

(declare-fun res!637362 () Bool)

(assert (=> d!115175 (=> (not res!637362) (not e!535294))))

(declare-fun lt!428183 () ListLongMap!12357)

(assert (=> d!115175 (= res!637362 (contains!5236 lt!428183 (_1!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))))))

(declare-fun lt!428186 () List!19472)

(assert (=> d!115175 (= lt!428183 (ListLongMap!12358 lt!428186))))

(declare-fun lt!428184 () Unit!31988)

(declare-fun lt!428185 () Unit!31988)

(assert (=> d!115175 (= lt!428184 lt!428185)))

(assert (=> d!115175 (= (getValueByKey!501 lt!428186 (_1!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))))))

(assert (=> d!115175 (= lt!428185 (lemmaContainsTupThenGetReturnValue!267 lt!428186 (_1!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))))))

(assert (=> d!115175 (= lt!428186 (insertStrictlySorted!323 (toList!6194 lt!428090) (_1!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))))))

(assert (=> d!115175 (= (+!2828 lt!428090 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))) lt!428183)))

(declare-fun b!950663 () Bool)

(declare-fun res!637361 () Bool)

(assert (=> b!950663 (=> (not res!637361) (not e!535294))))

(assert (=> b!950663 (= res!637361 (= (getValueByKey!501 (toList!6194 lt!428183) (_1!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))))))))

(declare-fun b!950664 () Bool)

(assert (=> b!950664 (= e!535294 (contains!5238 (toList!6194 lt!428183) (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))))))

(assert (= (and d!115175 res!637362) b!950663))

(assert (= (and b!950663 res!637361) b!950664))

(declare-fun m!883127 () Bool)

(assert (=> d!115175 m!883127))

(declare-fun m!883129 () Bool)

(assert (=> d!115175 m!883129))

(declare-fun m!883131 () Bool)

(assert (=> d!115175 m!883131))

(declare-fun m!883133 () Bool)

(assert (=> d!115175 m!883133))

(declare-fun m!883135 () Bool)

(assert (=> b!950663 m!883135))

(declare-fun m!883137 () Bool)

(assert (=> b!950664 m!883137))

(assert (=> b!950486 d!115175))

(declare-fun d!115177 () Bool)

(assert (=> d!115177 (= (apply!914 (+!2828 lt!428083 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))) lt!428084) (apply!914 lt!428083 lt!428084))))

(declare-fun lt!428189 () Unit!31988)

(declare-fun choose!1595 (ListLongMap!12357 (_ BitVec 64) V!32641 (_ BitVec 64)) Unit!31988)

(assert (=> d!115177 (= lt!428189 (choose!1595 lt!428083 lt!428094 (minValue!5621 thiss!1141) lt!428084))))

(declare-fun e!535297 () Bool)

(assert (=> d!115177 e!535297))

(declare-fun res!637365 () Bool)

(assert (=> d!115177 (=> (not res!637365) (not e!535297))))

(assert (=> d!115177 (= res!637365 (contains!5236 lt!428083 lt!428084))))

(assert (=> d!115177 (= (addApplyDifferent!458 lt!428083 lt!428094 (minValue!5621 thiss!1141) lt!428084) lt!428189)))

(declare-fun b!950668 () Bool)

(assert (=> b!950668 (= e!535297 (not (= lt!428084 lt!428094)))))

(assert (= (and d!115177 res!637365) b!950668))

(assert (=> d!115177 m!882985))

(assert (=> d!115177 m!882989))

(assert (=> d!115177 m!882985))

(declare-fun m!883139 () Bool)

(assert (=> d!115177 m!883139))

(assert (=> d!115177 m!882977))

(declare-fun m!883141 () Bool)

(assert (=> d!115177 m!883141))

(assert (=> b!950486 d!115177))

(declare-fun d!115179 () Bool)

(assert (=> d!115179 (contains!5236 (+!2828 lt!428087 (tuple2!13647 lt!428092 (zeroValue!5621 thiss!1141))) lt!428082)))

(declare-fun lt!428192 () Unit!31988)

(declare-fun choose!1596 (ListLongMap!12357 (_ BitVec 64) V!32641 (_ BitVec 64)) Unit!31988)

(assert (=> d!115179 (= lt!428192 (choose!1596 lt!428087 lt!428092 (zeroValue!5621 thiss!1141) lt!428082))))

(assert (=> d!115179 (contains!5236 lt!428087 lt!428082)))

(assert (=> d!115179 (= (addStillContains!584 lt!428087 lt!428092 (zeroValue!5621 thiss!1141) lt!428082) lt!428192)))

(declare-fun bs!26712 () Bool)

(assert (= bs!26712 d!115179))

(assert (=> bs!26712 m!882973))

(assert (=> bs!26712 m!882973))

(assert (=> bs!26712 m!882979))

(declare-fun m!883143 () Bool)

(assert (=> bs!26712 m!883143))

(declare-fun m!883145 () Bool)

(assert (=> bs!26712 m!883145))

(assert (=> b!950486 d!115179))

(declare-fun d!115181 () Bool)

(declare-fun e!535298 () Bool)

(assert (=> d!115181 e!535298))

(declare-fun res!637367 () Bool)

(assert (=> d!115181 (=> (not res!637367) (not e!535298))))

(declare-fun lt!428193 () ListLongMap!12357)

(assert (=> d!115181 (= res!637367 (contains!5236 lt!428193 (_1!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))))))

(declare-fun lt!428196 () List!19472)

(assert (=> d!115181 (= lt!428193 (ListLongMap!12358 lt!428196))))

(declare-fun lt!428194 () Unit!31988)

(declare-fun lt!428195 () Unit!31988)

(assert (=> d!115181 (= lt!428194 lt!428195)))

(assert (=> d!115181 (= (getValueByKey!501 lt!428196 (_1!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))))))

(assert (=> d!115181 (= lt!428195 (lemmaContainsTupThenGetReturnValue!267 lt!428196 (_1!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))))))

(assert (=> d!115181 (= lt!428196 (insertStrictlySorted!323 (toList!6194 lt!428095) (_1!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))))))

(assert (=> d!115181 (= (+!2828 lt!428095 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))) lt!428193)))

(declare-fun b!950670 () Bool)

(declare-fun res!637366 () Bool)

(assert (=> b!950670 (=> (not res!637366) (not e!535298))))

(assert (=> b!950670 (= res!637366 (= (getValueByKey!501 (toList!6194 lt!428193) (_1!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))))))))

(declare-fun b!950671 () Bool)

(assert (=> b!950671 (= e!535298 (contains!5238 (toList!6194 lt!428193) (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))))))

(assert (= (and d!115181 res!637367) b!950670))

(assert (= (and b!950670 res!637366) b!950671))

(declare-fun m!883147 () Bool)

(assert (=> d!115181 m!883147))

(declare-fun m!883149 () Bool)

(assert (=> d!115181 m!883149))

(declare-fun m!883151 () Bool)

(assert (=> d!115181 m!883151))

(declare-fun m!883153 () Bool)

(assert (=> d!115181 m!883153))

(declare-fun m!883155 () Bool)

(assert (=> b!950670 m!883155))

(declare-fun m!883157 () Bool)

(assert (=> b!950671 m!883157))

(assert (=> b!950486 d!115181))

(declare-fun d!115183 () Bool)

(declare-fun e!535299 () Bool)

(assert (=> d!115183 e!535299))

(declare-fun res!637369 () Bool)

(assert (=> d!115183 (=> (not res!637369) (not e!535299))))

(declare-fun lt!428197 () ListLongMap!12357)

(assert (=> d!115183 (= res!637369 (contains!5236 lt!428197 (_1!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))))))

(declare-fun lt!428200 () List!19472)

(assert (=> d!115183 (= lt!428197 (ListLongMap!12358 lt!428200))))

(declare-fun lt!428198 () Unit!31988)

(declare-fun lt!428199 () Unit!31988)

(assert (=> d!115183 (= lt!428198 lt!428199)))

(assert (=> d!115183 (= (getValueByKey!501 lt!428200 (_1!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))))))

(assert (=> d!115183 (= lt!428199 (lemmaContainsTupThenGetReturnValue!267 lt!428200 (_1!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))))))

(assert (=> d!115183 (= lt!428200 (insertStrictlySorted!323 (toList!6194 lt!428083) (_1!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))) (_2!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))))))

(assert (=> d!115183 (= (+!2828 lt!428083 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))) lt!428197)))

(declare-fun b!950672 () Bool)

(declare-fun res!637368 () Bool)

(assert (=> b!950672 (=> (not res!637368) (not e!535299))))

(assert (=> b!950672 (= res!637368 (= (getValueByKey!501 (toList!6194 lt!428197) (_1!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141)))) (Some!506 (_2!6833 (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))))))))

(declare-fun b!950673 () Bool)

(assert (=> b!950673 (= e!535299 (contains!5238 (toList!6194 lt!428197) (tuple2!13647 lt!428094 (minValue!5621 thiss!1141))))))

(assert (= (and d!115183 res!637369) b!950672))

(assert (= (and b!950672 res!637368) b!950673))

(declare-fun m!883159 () Bool)

(assert (=> d!115183 m!883159))

(declare-fun m!883161 () Bool)

(assert (=> d!115183 m!883161))

(declare-fun m!883163 () Bool)

(assert (=> d!115183 m!883163))

(declare-fun m!883165 () Bool)

(assert (=> d!115183 m!883165))

(declare-fun m!883167 () Bool)

(assert (=> b!950672 m!883167))

(declare-fun m!883169 () Bool)

(assert (=> b!950673 m!883169))

(assert (=> b!950486 d!115183))

(declare-fun d!115185 () Bool)

(assert (=> d!115185 (= (apply!914 lt!428090 lt!428079) (get!14560 (getValueByKey!501 (toList!6194 lt!428090) lt!428079)))))

(declare-fun bs!26713 () Bool)

(assert (= bs!26713 d!115185))

(declare-fun m!883171 () Bool)

(assert (=> bs!26713 m!883171))

(assert (=> bs!26713 m!883171))

(declare-fun m!883173 () Bool)

(assert (=> bs!26713 m!883173))

(assert (=> b!950486 d!115185))

(declare-fun d!115187 () Bool)

(assert (=> d!115187 (= (apply!914 lt!428095 lt!428093) (get!14560 (getValueByKey!501 (toList!6194 lt!428095) lt!428093)))))

(declare-fun bs!26714 () Bool)

(assert (= bs!26714 d!115187))

(declare-fun m!883175 () Bool)

(assert (=> bs!26714 m!883175))

(assert (=> bs!26714 m!883175))

(declare-fun m!883177 () Bool)

(assert (=> bs!26714 m!883177))

(assert (=> b!950486 d!115187))

(declare-fun d!115189 () Bool)

(assert (=> d!115189 (= (apply!914 (+!2828 lt!428090 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))) lt!428079) (apply!914 lt!428090 lt!428079))))

(declare-fun lt!428201 () Unit!31988)

(assert (=> d!115189 (= lt!428201 (choose!1595 lt!428090 lt!428098 (zeroValue!5621 thiss!1141) lt!428079))))

(declare-fun e!535300 () Bool)

(assert (=> d!115189 e!535300))

(declare-fun res!637370 () Bool)

(assert (=> d!115189 (=> (not res!637370) (not e!535300))))

(assert (=> d!115189 (= res!637370 (contains!5236 lt!428090 lt!428079))))

(assert (=> d!115189 (= (addApplyDifferent!458 lt!428090 lt!428098 (zeroValue!5621 thiss!1141) lt!428079) lt!428201)))

(declare-fun b!950674 () Bool)

(assert (=> b!950674 (= e!535300 (not (= lt!428079 lt!428098)))))

(assert (= (and d!115189 res!637370) b!950674))

(assert (=> d!115189 m!882965))

(assert (=> d!115189 m!882967))

(assert (=> d!115189 m!882965))

(declare-fun m!883179 () Bool)

(assert (=> d!115189 m!883179))

(assert (=> d!115189 m!882969))

(declare-fun m!883181 () Bool)

(assert (=> d!115189 m!883181))

(assert (=> b!950486 d!115189))

(declare-fun d!115191 () Bool)

(assert (=> d!115191 (= (apply!914 lt!428083 lt!428084) (get!14560 (getValueByKey!501 (toList!6194 lt!428083) lt!428084)))))

(declare-fun bs!26715 () Bool)

(assert (= bs!26715 d!115191))

(declare-fun m!883183 () Bool)

(assert (=> bs!26715 m!883183))

(assert (=> bs!26715 m!883183))

(declare-fun m!883185 () Bool)

(assert (=> bs!26715 m!883185))

(assert (=> b!950486 d!115191))

(declare-fun d!115193 () Bool)

(assert (=> d!115193 (= (apply!914 (+!2828 lt!428095 (tuple2!13647 lt!428078 (minValue!5621 thiss!1141))) lt!428093) (apply!914 lt!428095 lt!428093))))

(declare-fun lt!428202 () Unit!31988)

(assert (=> d!115193 (= lt!428202 (choose!1595 lt!428095 lt!428078 (minValue!5621 thiss!1141) lt!428093))))

(declare-fun e!535301 () Bool)

(assert (=> d!115193 e!535301))

(declare-fun res!637371 () Bool)

(assert (=> d!115193 (=> (not res!637371) (not e!535301))))

(assert (=> d!115193 (= res!637371 (contains!5236 lt!428095 lt!428093))))

(assert (=> d!115193 (= (addApplyDifferent!458 lt!428095 lt!428078 (minValue!5621 thiss!1141) lt!428093) lt!428202)))

(declare-fun b!950675 () Bool)

(assert (=> b!950675 (= e!535301 (not (= lt!428093 lt!428078)))))

(assert (= (and d!115193 res!637371) b!950675))

(assert (=> d!115193 m!882981))

(assert (=> d!115193 m!882983))

(assert (=> d!115193 m!882981))

(declare-fun m!883187 () Bool)

(assert (=> d!115193 m!883187))

(assert (=> d!115193 m!882963))

(declare-fun m!883189 () Bool)

(assert (=> d!115193 m!883189))

(assert (=> b!950486 d!115193))

(assert (=> b!950486 d!115139))

(declare-fun d!115195 () Bool)

(assert (=> d!115195 (= (apply!914 (+!2828 lt!428090 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141))) lt!428079) (get!14560 (getValueByKey!501 (toList!6194 (+!2828 lt!428090 (tuple2!13647 lt!428098 (zeroValue!5621 thiss!1141)))) lt!428079)))))

(declare-fun bs!26716 () Bool)

(assert (= bs!26716 d!115195))

(declare-fun m!883191 () Bool)

(assert (=> bs!26716 m!883191))

(assert (=> bs!26716 m!883191))

(declare-fun m!883193 () Bool)

(assert (=> bs!26716 m!883193))

(assert (=> b!950486 d!115195))

(assert (=> d!115123 d!115113))

(declare-fun d!115197 () Bool)

(declare-fun res!637381 () Bool)

(declare-fun e!535304 () Bool)

(assert (=> d!115197 (=> (not res!637381) (not e!535304))))

(assert (=> d!115197 (= res!637381 (validMask!0 (mask!27582 thiss!1141)))))

(assert (=> d!115197 (= (simpleValid!374 thiss!1141) e!535304)))

(declare-fun b!950685 () Bool)

(declare-fun res!637383 () Bool)

(assert (=> b!950685 (=> (not res!637383) (not e!535304))))

(declare-fun size!28155 (LongMapFixedSize!4944) (_ BitVec 32))

(assert (=> b!950685 (= res!637383 (bvsge (size!28155 thiss!1141) (_size!2527 thiss!1141)))))

(declare-fun b!950686 () Bool)

(declare-fun res!637382 () Bool)

(assert (=> b!950686 (=> (not res!637382) (not e!535304))))

(assert (=> b!950686 (= res!637382 (= (size!28155 thiss!1141) (bvadd (_size!2527 thiss!1141) (bvsdiv (bvadd (extraKeys!5517 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!950687 () Bool)

(assert (=> b!950687 (= e!535304 (and (bvsge (extraKeys!5517 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5517 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2527 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!950684 () Bool)

(declare-fun res!637380 () Bool)

(assert (=> b!950684 (=> (not res!637380) (not e!535304))))

(assert (=> b!950684 (= res!637380 (and (= (size!28151 (_values!5808 thiss!1141)) (bvadd (mask!27582 thiss!1141) #b00000000000000000000000000000001)) (= (size!28152 (_keys!10718 thiss!1141)) (size!28151 (_values!5808 thiss!1141))) (bvsge (_size!2527 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2527 thiss!1141) (bvadd (mask!27582 thiss!1141) #b00000000000000000000000000000001))))))

(assert (= (and d!115197 res!637381) b!950684))

(assert (= (and b!950684 res!637380) b!950685))

(assert (= (and b!950685 res!637383) b!950686))

(assert (= (and b!950686 res!637382) b!950687))

(assert (=> d!115197 m!882881))

(declare-fun m!883195 () Bool)

(assert (=> b!950685 m!883195))

(assert (=> b!950686 m!883195))

(assert (=> d!115111 d!115197))

(declare-fun d!115199 () Bool)

(declare-fun lt!428205 () (_ BitVec 32))

(assert (=> d!115199 (and (bvsge lt!428205 #b00000000000000000000000000000000) (bvsle lt!428205 (bvsub (size!28152 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!535309 () (_ BitVec 32))

(assert (=> d!115199 (= lt!428205 e!535309)))

(declare-fun c!99258 () Bool)

(assert (=> d!115199 (= c!99258 (bvsge #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> d!115199 (and (bvsle #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28152 (_keys!10718 thiss!1141)) (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> d!115199 (= (arrayCountValidKeys!0 (_keys!10718 thiss!1141) #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))) lt!428205)))

(declare-fun b!950696 () Bool)

(declare-fun e!535310 () (_ BitVec 32))

(assert (=> b!950696 (= e!535309 e!535310)))

(declare-fun c!99259 () Bool)

(assert (=> b!950696 (= c!99259 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950697 () Bool)

(declare-fun call!41418 () (_ BitVec 32))

(assert (=> b!950697 (= e!535310 call!41418)))

(declare-fun b!950698 () Bool)

(assert (=> b!950698 (= e!535310 (bvadd #b00000000000000000000000000000001 call!41418))))

(declare-fun b!950699 () Bool)

(assert (=> b!950699 (= e!535309 #b00000000000000000000000000000000)))

(declare-fun bm!41415 () Bool)

(assert (=> bm!41415 (= call!41418 (arrayCountValidKeys!0 (_keys!10718 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28152 (_keys!10718 thiss!1141))))))

(assert (= (and d!115199 c!99258) b!950699))

(assert (= (and d!115199 (not c!99258)) b!950696))

(assert (= (and b!950696 c!99259) b!950698))

(assert (= (and b!950696 (not c!99259)) b!950697))

(assert (= (or b!950698 b!950697) bm!41415))

(assert (=> b!950696 m!882923))

(assert (=> b!950696 m!882923))

(assert (=> b!950696 m!882945))

(declare-fun m!883197 () Bool)

(assert (=> bm!41415 m!883197))

(assert (=> b!950407 d!115199))

(declare-fun d!115201 () Bool)

(declare-fun res!637388 () Bool)

(declare-fun e!535317 () Bool)

(assert (=> d!115201 (=> res!637388 e!535317)))

(assert (=> d!115201 (= res!637388 (bvsge #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> d!115201 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10718 thiss!1141) (mask!27582 thiss!1141)) e!535317)))

(declare-fun b!950708 () Bool)

(declare-fun e!535319 () Bool)

(declare-fun call!41421 () Bool)

(assert (=> b!950708 (= e!535319 call!41421)))

(declare-fun b!950709 () Bool)

(declare-fun e!535318 () Bool)

(assert (=> b!950709 (= e!535317 e!535318)))

(declare-fun c!99262 () Bool)

(assert (=> b!950709 (= c!99262 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950710 () Bool)

(assert (=> b!950710 (= e!535318 e!535319)))

(declare-fun lt!428214 () (_ BitVec 64))

(assert (=> b!950710 (= lt!428214 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!428212 () Unit!31988)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57558 (_ BitVec 64) (_ BitVec 32)) Unit!31988)

(assert (=> b!950710 (= lt!428212 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10718 thiss!1141) lt!428214 #b00000000000000000000000000000000))))

(assert (=> b!950710 (arrayContainsKey!0 (_keys!10718 thiss!1141) lt!428214 #b00000000000000000000000000000000)))

(declare-fun lt!428213 () Unit!31988)

(assert (=> b!950710 (= lt!428213 lt!428212)))

(declare-fun res!637389 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57558 (_ BitVec 32)) SeekEntryResult!9131)

(assert (=> b!950710 (= res!637389 (= (seekEntryOrOpen!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) (_keys!10718 thiss!1141) (mask!27582 thiss!1141)) (Found!9131 #b00000000000000000000000000000000)))))

(assert (=> b!950710 (=> (not res!637389) (not e!535319))))

(declare-fun bm!41418 () Bool)

(assert (=> bm!41418 (= call!41421 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10718 thiss!1141) (mask!27582 thiss!1141)))))

(declare-fun b!950711 () Bool)

(assert (=> b!950711 (= e!535318 call!41421)))

(assert (= (and d!115201 (not res!637388)) b!950709))

(assert (= (and b!950709 c!99262) b!950710))

(assert (= (and b!950709 (not c!99262)) b!950711))

(assert (= (and b!950710 res!637389) b!950708))

(assert (= (or b!950708 b!950711) bm!41418))

(assert (=> b!950709 m!882923))

(assert (=> b!950709 m!882923))

(assert (=> b!950709 m!882945))

(assert (=> b!950710 m!882923))

(declare-fun m!883199 () Bool)

(assert (=> b!950710 m!883199))

(declare-fun m!883201 () Bool)

(assert (=> b!950710 m!883201))

(assert (=> b!950710 m!882923))

(declare-fun m!883203 () Bool)

(assert (=> b!950710 m!883203))

(declare-fun m!883205 () Bool)

(assert (=> bm!41418 m!883205))

(assert (=> b!950408 d!115201))

(declare-fun d!115203 () Bool)

(declare-fun e!535320 () Bool)

(assert (=> d!115203 e!535320))

(declare-fun res!637391 () Bool)

(assert (=> d!115203 (=> (not res!637391) (not e!535320))))

(declare-fun lt!428215 () ListLongMap!12357)

(assert (=> d!115203 (= res!637391 (contains!5236 lt!428215 (_1!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))))

(declare-fun lt!428218 () List!19472)

(assert (=> d!115203 (= lt!428215 (ListLongMap!12358 lt!428218))))

(declare-fun lt!428216 () Unit!31988)

(declare-fun lt!428217 () Unit!31988)

(assert (=> d!115203 (= lt!428216 lt!428217)))

(assert (=> d!115203 (= (getValueByKey!501 lt!428218 (_1!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))) (Some!506 (_2!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))))

(assert (=> d!115203 (= lt!428217 (lemmaContainsTupThenGetReturnValue!267 lt!428218 (_1!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))) (_2!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))))

(assert (=> d!115203 (= lt!428218 (insertStrictlySorted!323 (toList!6194 (ite c!99193 call!41411 (ite c!99197 call!41409 call!41410))) (_1!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))) (_2!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))))))

(assert (=> d!115203 (= (+!2828 (ite c!99193 call!41411 (ite c!99197 call!41409 call!41410)) (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))) lt!428215)))

(declare-fun b!950712 () Bool)

(declare-fun res!637390 () Bool)

(assert (=> b!950712 (=> (not res!637390) (not e!535320))))

(assert (=> b!950712 (= res!637390 (= (getValueByKey!501 (toList!6194 lt!428215) (_1!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141))))) (Some!506 (_2!6833 (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))))

(declare-fun b!950713 () Bool)

(assert (=> b!950713 (= e!535320 (contains!5238 (toList!6194 lt!428215) (ite (or c!99193 c!99197) (tuple2!13647 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5621 thiss!1141)) (tuple2!13647 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5621 thiss!1141)))))))

(assert (= (and d!115203 res!637391) b!950712))

(assert (= (and b!950712 res!637390) b!950713))

(declare-fun m!883207 () Bool)

(assert (=> d!115203 m!883207))

(declare-fun m!883209 () Bool)

(assert (=> d!115203 m!883209))

(declare-fun m!883211 () Bool)

(assert (=> d!115203 m!883211))

(declare-fun m!883213 () Bool)

(assert (=> d!115203 m!883213))

(declare-fun m!883215 () Bool)

(assert (=> b!950712 m!883215))

(declare-fun m!883217 () Bool)

(assert (=> b!950713 m!883217))

(assert (=> bm!41407 d!115203))

(declare-fun d!115205 () Bool)

(declare-fun e!535322 () Bool)

(assert (=> d!115205 e!535322))

(declare-fun res!637392 () Bool)

(assert (=> d!115205 (=> res!637392 e!535322)))

(declare-fun lt!428221 () Bool)

(assert (=> d!115205 (= res!637392 (not lt!428221))))

(declare-fun lt!428222 () Bool)

(assert (=> d!115205 (= lt!428221 lt!428222)))

(declare-fun lt!428220 () Unit!31988)

(declare-fun e!535321 () Unit!31988)

(assert (=> d!115205 (= lt!428220 e!535321)))

(declare-fun c!99263 () Bool)

(assert (=> d!115205 (= c!99263 lt!428222)))

(assert (=> d!115205 (= lt!428222 (containsKey!466 (toList!6194 lt!428085) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!115205 (= (contains!5236 lt!428085 #b1000000000000000000000000000000000000000000000000000000000000000) lt!428221)))

(declare-fun b!950714 () Bool)

(declare-fun lt!428219 () Unit!31988)

(assert (=> b!950714 (= e!535321 lt!428219)))

(assert (=> b!950714 (= lt!428219 (lemmaContainsKeyImpliesGetValueByKeyDefined!361 (toList!6194 lt!428085) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!950714 (isDefined!371 (getValueByKey!501 (toList!6194 lt!428085) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!950715 () Bool)

(declare-fun Unit!31997 () Unit!31988)

(assert (=> b!950715 (= e!535321 Unit!31997)))

(declare-fun b!950716 () Bool)

(assert (=> b!950716 (= e!535322 (isDefined!371 (getValueByKey!501 (toList!6194 lt!428085) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115205 c!99263) b!950714))

(assert (= (and d!115205 (not c!99263)) b!950715))

(assert (= (and d!115205 (not res!637392)) b!950716))

(declare-fun m!883219 () Bool)

(assert (=> d!115205 m!883219))

(declare-fun m!883221 () Bool)

(assert (=> b!950714 m!883221))

(assert (=> b!950714 m!883023))

(assert (=> b!950714 m!883023))

(declare-fun m!883223 () Bool)

(assert (=> b!950714 m!883223))

(assert (=> b!950716 m!883023))

(assert (=> b!950716 m!883023))

(assert (=> b!950716 m!883223))

(assert (=> bm!41408 d!115205))

(declare-fun b!950727 () Bool)

(declare-fun e!535332 () Bool)

(declare-fun e!535334 () Bool)

(assert (=> b!950727 (= e!535332 e!535334)))

(declare-fun res!637401 () Bool)

(assert (=> b!950727 (=> (not res!637401) (not e!535334))))

(declare-fun e!535333 () Bool)

(assert (=> b!950727 (= res!637401 (not e!535333))))

(declare-fun res!637400 () Bool)

(assert (=> b!950727 (=> (not res!637400) (not e!535333))))

(assert (=> b!950727 (= res!637400 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun d!115207 () Bool)

(declare-fun res!637399 () Bool)

(assert (=> d!115207 (=> res!637399 e!535332)))

(assert (=> d!115207 (= res!637399 (bvsge #b00000000000000000000000000000000 (size!28152 (_keys!10718 thiss!1141))))))

(assert (=> d!115207 (= (arrayNoDuplicates!0 (_keys!10718 thiss!1141) #b00000000000000000000000000000000 Nil!19471) e!535332)))

(declare-fun b!950728 () Bool)

(declare-fun e!535331 () Bool)

(assert (=> b!950728 (= e!535334 e!535331)))

(declare-fun c!99266 () Bool)

(assert (=> b!950728 (= c!99266 (validKeyInArray!0 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950729 () Bool)

(declare-fun call!41424 () Bool)

(assert (=> b!950729 (= e!535331 call!41424)))

(declare-fun b!950730 () Bool)

(declare-fun contains!5239 (List!19474 (_ BitVec 64)) Bool)

(assert (=> b!950730 (= e!535333 (contains!5239 Nil!19471 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!950731 () Bool)

(assert (=> b!950731 (= e!535331 call!41424)))

(declare-fun bm!41421 () Bool)

(assert (=> bm!41421 (= call!41424 (arrayNoDuplicates!0 (_keys!10718 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99266 (Cons!19470 (select (arr!27674 (_keys!10718 thiss!1141)) #b00000000000000000000000000000000) Nil!19471) Nil!19471)))))

(assert (= (and d!115207 (not res!637399)) b!950727))

(assert (= (and b!950727 res!637400) b!950730))

(assert (= (and b!950727 res!637401) b!950728))

(assert (= (and b!950728 c!99266) b!950729))

(assert (= (and b!950728 (not c!99266)) b!950731))

(assert (= (or b!950729 b!950731) bm!41421))

(assert (=> b!950727 m!882923))

(assert (=> b!950727 m!882923))

(assert (=> b!950727 m!882945))

(assert (=> b!950728 m!882923))

(assert (=> b!950728 m!882923))

(assert (=> b!950728 m!882945))

(assert (=> b!950730 m!882923))

(assert (=> b!950730 m!882923))

(declare-fun m!883225 () Bool)

(assert (=> b!950730 m!883225))

(assert (=> bm!41421 m!882923))

(declare-fun m!883227 () Bool)

(assert (=> bm!41421 m!883227))

(assert (=> b!950409 d!115207))

(declare-fun d!115209 () Bool)

(assert (=> d!115209 (= (apply!914 lt!428085 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14560 (getValueByKey!501 (toList!6194 lt!428085) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26717 () Bool)

(assert (= bs!26717 d!115209))

(assert (=> bs!26717 m!883063))

(assert (=> bs!26717 m!883063))

(declare-fun m!883229 () Bool)

(assert (=> bs!26717 m!883229))

(assert (=> b!950496 d!115209))

(declare-fun b!950732 () Bool)

(declare-fun e!535336 () Bool)

(assert (=> b!950732 (= e!535336 tp_is_empty!20757)))

(declare-fun mapIsEmpty!33057 () Bool)

(declare-fun mapRes!33057 () Bool)

(assert (=> mapIsEmpty!33057 mapRes!33057))

(declare-fun condMapEmpty!33057 () Bool)

(declare-fun mapDefault!33057 () ValueCell!9897)

(assert (=> mapNonEmpty!33056 (= condMapEmpty!33057 (= mapRest!33056 ((as const (Array (_ BitVec 32) ValueCell!9897)) mapDefault!33057)))))

(declare-fun e!535335 () Bool)

(assert (=> mapNonEmpty!33056 (= tp!63356 (and e!535335 mapRes!33057))))

(declare-fun mapNonEmpty!33057 () Bool)

(declare-fun tp!63357 () Bool)

(assert (=> mapNonEmpty!33057 (= mapRes!33057 (and tp!63357 e!535336))))

(declare-fun mapKey!33057 () (_ BitVec 32))

(declare-fun mapRest!33057 () (Array (_ BitVec 32) ValueCell!9897))

(declare-fun mapValue!33057 () ValueCell!9897)

(assert (=> mapNonEmpty!33057 (= mapRest!33056 (store mapRest!33057 mapKey!33057 mapValue!33057))))

(declare-fun b!950733 () Bool)

(assert (=> b!950733 (= e!535335 tp_is_empty!20757)))

(assert (= (and mapNonEmpty!33056 condMapEmpty!33057) mapIsEmpty!33057))

(assert (= (and mapNonEmpty!33056 (not condMapEmpty!33057)) mapNonEmpty!33057))

(assert (= (and mapNonEmpty!33057 ((_ is ValueCellFull!9897) mapValue!33057)) b!950732))

(assert (= (and mapNonEmpty!33056 ((_ is ValueCellFull!9897) mapDefault!33057)) b!950733))

(declare-fun m!883231 () Bool)

(assert (=> mapNonEmpty!33057 m!883231))

(declare-fun b_lambda!14409 () Bool)

(assert (= b_lambda!14407 (or (and b!950368 b_free!18249) b_lambda!14409)))

(declare-fun b_lambda!14411 () Bool)

(assert (= b_lambda!14405 (or (and b!950368 b_free!18249) b_lambda!14411)))

(check-sat (not b!950551) (not b!950710) (not d!115141) (not b!950659) (not b!950714) (not d!115209) (not b!950583) (not d!115181) (not b!950617) (not b!950584) (not d!115149) (not d!115139) (not b_lambda!14411) (not b!950612) (not b!950672) (not d!115187) (not d!115155) (not d!115157) (not b!950709) (not b!950587) (not b!950685) (not b!950600) (not d!115169) (not b_next!18249) (not b!950696) (not b!950660) (not d!115183) (not b!950646) (not b!950673) (not b!950730) (not b!950713) (not d!115159) (not d!115179) b_and!29733 (not b!950727) (not b!950578) (not d!115163) (not b!950543) (not b!950670) tp_is_empty!20757 (not b!950621) (not b!950619) (not d!115175) (not bm!41415) (not bm!41412) (not d!115193) (not b!950728) (not d!115177) (not d!115171) (not d!115173) (not b!950618) (not d!115195) (not d!115205) (not b!950585) (not b!950651) (not b_lambda!14409) (not mapNonEmpty!33057) (not b!950656) (not b!950686) (not b_lambda!14403) (not b!950580) (not d!115131) (not b!950663) (not b!950553) (not bm!41418) (not b!950589) (not d!115145) (not d!115167) (not b!950712) (not b!950610) (not b!950662) (not d!115191) (not b!950658) (not bm!41421) (not d!115185) (not d!115203) (not b!950607) (not d!115197) (not d!115137) (not b!950608) (not b!950716) (not b!950664) (not d!115189) (not b!950606) (not b!950581) (not b!950671))
(check-sat b_and!29733 (not b_next!18249))
