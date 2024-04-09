; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81128 () Bool)

(assert start!81128)

(declare-fun b!949239 () Bool)

(declare-fun b_free!18219 () Bool)

(declare-fun b_next!18219 () Bool)

(assert (=> b!949239 (= b_free!18219 (not b_next!18219))))

(declare-fun tp!63244 () Bool)

(declare-fun b_and!29683 () Bool)

(assert (=> b!949239 (= tp!63244 b_and!29683)))

(declare-fun b!949235 () Bool)

(declare-fun res!636725 () Bool)

(declare-fun e!534427 () Bool)

(assert (=> b!949235 (=> (not res!636725) (not e!534427))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32601 0))(
  ( (V!32602 (val!10414 Int)) )
))
(declare-datatypes ((ValueCell!9882 0))(
  ( (ValueCellFull!9882 (v!12954 V!32601)) (EmptyCell!9882) )
))
(declare-datatypes ((array!57488 0))(
  ( (array!57489 (arr!27643 (Array (_ BitVec 32) ValueCell!9882)) (size!28120 (_ BitVec 32))) )
))
(declare-datatypes ((array!57490 0))(
  ( (array!57491 (arr!27644 (Array (_ BitVec 32) (_ BitVec 64))) (size!28121 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4914 0))(
  ( (LongMapFixedSize!4915 (defaultEntry!5764 Int) (mask!27537 (_ BitVec 32)) (extraKeys!5496 (_ BitVec 32)) (zeroValue!5600 V!32601) (minValue!5600 V!32601) (_size!2512 (_ BitVec 32)) (_keys!10688 array!57490) (_values!5787 array!57488) (_vacant!2512 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4914)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9123 0))(
  ( (MissingZero!9123 (index!38862 (_ BitVec 32))) (Found!9123 (index!38863 (_ BitVec 32))) (Intermediate!9123 (undefined!9935 Bool) (index!38864 (_ BitVec 32)) (x!81664 (_ BitVec 32))) (Undefined!9123) (MissingVacant!9123 (index!38865 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57490 (_ BitVec 32)) SeekEntryResult!9123)

(assert (=> b!949235 (= res!636725 (not ((_ is Found!9123) (seekEntry!0 key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))))

(declare-fun b!949236 () Bool)

(assert (=> b!949236 (= e!534427 (and (= (size!28120 (_values!5787 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27537 thiss!1141))) (= (size!28121 (_keys!10688 thiss!1141)) (size!28120 (_values!5787 thiss!1141))) (bvsge (mask!27537 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5496 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5496 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!949237 () Bool)

(declare-fun res!636727 () Bool)

(assert (=> b!949237 (=> (not res!636727) (not e!534427))))

(declare-datatypes ((tuple2!13632 0))(
  ( (tuple2!13633 (_1!6826 (_ BitVec 64)) (_2!6826 V!32601)) )
))
(declare-datatypes ((List!19457 0))(
  ( (Nil!19454) (Cons!19453 (h!20612 tuple2!13632) (t!27798 List!19457)) )
))
(declare-datatypes ((ListLongMap!12343 0))(
  ( (ListLongMap!12344 (toList!6187 List!19457)) )
))
(declare-fun contains!5226 (ListLongMap!12343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3372 (array!57490 array!57488 (_ BitVec 32) (_ BitVec 32) V!32601 V!32601 (_ BitVec 32) Int) ListLongMap!12343)

(assert (=> b!949237 (= res!636727 (contains!5226 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!32992 () Bool)

(declare-fun mapRes!32992 () Bool)

(declare-fun tp!63243 () Bool)

(declare-fun e!534432 () Bool)

(assert (=> mapNonEmpty!32992 (= mapRes!32992 (and tp!63243 e!534432))))

(declare-fun mapKey!32992 () (_ BitVec 32))

(declare-fun mapRest!32992 () (Array (_ BitVec 32) ValueCell!9882))

(declare-fun mapValue!32992 () ValueCell!9882)

(assert (=> mapNonEmpty!32992 (= (arr!27643 (_values!5787 thiss!1141)) (store mapRest!32992 mapKey!32992 mapValue!32992))))

(declare-fun mapIsEmpty!32992 () Bool)

(assert (=> mapIsEmpty!32992 mapRes!32992))

(declare-fun b!949238 () Bool)

(declare-fun e!534430 () Bool)

(declare-fun e!534428 () Bool)

(assert (=> b!949238 (= e!534430 (and e!534428 mapRes!32992))))

(declare-fun condMapEmpty!32992 () Bool)

(declare-fun mapDefault!32992 () ValueCell!9882)

(assert (=> b!949238 (= condMapEmpty!32992 (= (arr!27643 (_values!5787 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9882)) mapDefault!32992)))))

(declare-fun res!636726 () Bool)

(assert (=> start!81128 (=> (not res!636726) (not e!534427))))

(declare-fun valid!1846 (LongMapFixedSize!4914) Bool)

(assert (=> start!81128 (= res!636726 (valid!1846 thiss!1141))))

(assert (=> start!81128 e!534427))

(declare-fun e!534431 () Bool)

(assert (=> start!81128 e!534431))

(assert (=> start!81128 true))

(declare-fun tp_is_empty!20727 () Bool)

(declare-fun array_inv!21404 (array!57490) Bool)

(declare-fun array_inv!21405 (array!57488) Bool)

(assert (=> b!949239 (= e!534431 (and tp!63244 tp_is_empty!20727 (array_inv!21404 (_keys!10688 thiss!1141)) (array_inv!21405 (_values!5787 thiss!1141)) e!534430))))

(declare-fun b!949240 () Bool)

(assert (=> b!949240 (= e!534428 tp_is_empty!20727)))

(declare-fun b!949241 () Bool)

(declare-fun res!636728 () Bool)

(assert (=> b!949241 (=> (not res!636728) (not e!534427))))

(assert (=> b!949241 (= res!636728 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949242 () Bool)

(assert (=> b!949242 (= e!534432 tp_is_empty!20727)))

(declare-fun b!949243 () Bool)

(declare-fun res!636729 () Bool)

(assert (=> b!949243 (=> (not res!636729) (not e!534427))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!949243 (= res!636729 (validMask!0 (mask!27537 thiss!1141)))))

(assert (= (and start!81128 res!636726) b!949241))

(assert (= (and b!949241 res!636728) b!949235))

(assert (= (and b!949235 res!636725) b!949237))

(assert (= (and b!949237 res!636727) b!949243))

(assert (= (and b!949243 res!636729) b!949236))

(assert (= (and b!949238 condMapEmpty!32992) mapIsEmpty!32992))

(assert (= (and b!949238 (not condMapEmpty!32992)) mapNonEmpty!32992))

(assert (= (and mapNonEmpty!32992 ((_ is ValueCellFull!9882) mapValue!32992)) b!949242))

(assert (= (and b!949238 ((_ is ValueCellFull!9882) mapDefault!32992)) b!949240))

(assert (= b!949239 b!949238))

(assert (= start!81128 b!949239))

(declare-fun m!881991 () Bool)

(assert (=> b!949239 m!881991))

(declare-fun m!881993 () Bool)

(assert (=> b!949239 m!881993))

(declare-fun m!881995 () Bool)

(assert (=> b!949243 m!881995))

(declare-fun m!881997 () Bool)

(assert (=> start!81128 m!881997))

(declare-fun m!881999 () Bool)

(assert (=> mapNonEmpty!32992 m!881999))

(declare-fun m!882001 () Bool)

(assert (=> b!949235 m!882001))

(declare-fun m!882003 () Bool)

(assert (=> b!949237 m!882003))

(assert (=> b!949237 m!882003))

(declare-fun m!882005 () Bool)

(assert (=> b!949237 m!882005))

(check-sat (not mapNonEmpty!32992) tp_is_empty!20727 (not b!949239) (not b_next!18219) (not b!949237) (not start!81128) b_and!29683 (not b!949235) (not b!949243))
(check-sat b_and!29683 (not b_next!18219))
(get-model)

(declare-fun d!114959 () Bool)

(declare-fun e!534455 () Bool)

(assert (=> d!114959 e!534455))

(declare-fun res!636747 () Bool)

(assert (=> d!114959 (=> res!636747 e!534455)))

(declare-fun lt!427486 () Bool)

(assert (=> d!114959 (= res!636747 (not lt!427486))))

(declare-fun lt!427488 () Bool)

(assert (=> d!114959 (= lt!427486 lt!427488)))

(declare-datatypes ((Unit!31964 0))(
  ( (Unit!31965) )
))
(declare-fun lt!427485 () Unit!31964)

(declare-fun e!534456 () Unit!31964)

(assert (=> d!114959 (= lt!427485 e!534456)))

(declare-fun c!98984 () Bool)

(assert (=> d!114959 (= c!98984 lt!427488)))

(declare-fun containsKey!462 (List!19457 (_ BitVec 64)) Bool)

(assert (=> d!114959 (= lt!427488 (containsKey!462 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))

(assert (=> d!114959 (= (contains!5226 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)) key!756) lt!427486)))

(declare-fun b!949277 () Bool)

(declare-fun lt!427487 () Unit!31964)

(assert (=> b!949277 (= e!534456 lt!427487)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!357 (List!19457 (_ BitVec 64)) Unit!31964)

(assert (=> b!949277 (= lt!427487 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))

(declare-datatypes ((Option!503 0))(
  ( (Some!502 (v!12956 V!32601)) (None!501) )
))
(declare-fun isDefined!367 (Option!503) Bool)

(declare-fun getValueByKey!497 (List!19457 (_ BitVec 64)) Option!503)

(assert (=> b!949277 (isDefined!367 (getValueByKey!497 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))

(declare-fun b!949278 () Bool)

(declare-fun Unit!31966 () Unit!31964)

(assert (=> b!949278 (= e!534456 Unit!31966)))

(declare-fun b!949279 () Bool)

(assert (=> b!949279 (= e!534455 (isDefined!367 (getValueByKey!497 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756)))))

(assert (= (and d!114959 c!98984) b!949277))

(assert (= (and d!114959 (not c!98984)) b!949278))

(assert (= (and d!114959 (not res!636747)) b!949279))

(declare-fun m!882023 () Bool)

(assert (=> d!114959 m!882023))

(declare-fun m!882025 () Bool)

(assert (=> b!949277 m!882025))

(declare-fun m!882027 () Bool)

(assert (=> b!949277 m!882027))

(assert (=> b!949277 m!882027))

(declare-fun m!882029 () Bool)

(assert (=> b!949277 m!882029))

(assert (=> b!949279 m!882027))

(assert (=> b!949279 m!882027))

(assert (=> b!949279 m!882029))

(assert (=> b!949237 d!114959))

(declare-fun b!949322 () Bool)

(declare-fun e!534490 () Bool)

(declare-fun lt!427544 () ListLongMap!12343)

(declare-fun apply!910 (ListLongMap!12343 (_ BitVec 64)) V!32601)

(assert (=> b!949322 (= e!534490 (= (apply!910 lt!427544 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5600 thiss!1141)))))

(declare-fun b!949323 () Bool)

(declare-fun c!98999 () Bool)

(assert (=> b!949323 (= c!98999 (and (not (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!534488 () ListLongMap!12343)

(declare-fun e!534492 () ListLongMap!12343)

(assert (=> b!949323 (= e!534488 e!534492)))

(declare-fun bm!41298 () Bool)

(declare-fun call!41302 () ListLongMap!12343)

(declare-fun call!41305 () ListLongMap!12343)

(assert (=> bm!41298 (= call!41302 call!41305)))

(declare-fun bm!41299 () Bool)

(declare-fun call!41304 () ListLongMap!12343)

(declare-fun getCurrentListMapNoExtraKeys!3330 (array!57490 array!57488 (_ BitVec 32) (_ BitVec 32) V!32601 V!32601 (_ BitVec 32) Int) ListLongMap!12343)

(assert (=> bm!41299 (= call!41304 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))

(declare-fun b!949324 () Bool)

(declare-fun e!534491 () Bool)

(declare-fun e!534494 () Bool)

(assert (=> b!949324 (= e!534491 e!534494)))

(declare-fun c!98998 () Bool)

(assert (=> b!949324 (= c!98998 (not (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!949326 () Bool)

(declare-fun e!534487 () ListLongMap!12343)

(assert (=> b!949326 (= e!534487 e!534488)))

(declare-fun c!99000 () Bool)

(assert (=> b!949326 (= c!99000 (and (not (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!949327 () Bool)

(declare-fun res!636771 () Bool)

(assert (=> b!949327 (=> (not res!636771) (not e!534491))))

(declare-fun e!534485 () Bool)

(assert (=> b!949327 (= res!636771 e!534485)))

(declare-fun c!98997 () Bool)

(assert (=> b!949327 (= c!98997 (not (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!949328 () Bool)

(assert (=> b!949328 (= e!534485 e!534490)))

(declare-fun res!636772 () Bool)

(declare-fun call!41303 () Bool)

(assert (=> b!949328 (= res!636772 call!41303)))

(assert (=> b!949328 (=> (not res!636772) (not e!534490))))

(declare-fun b!949329 () Bool)

(declare-fun call!41307 () Bool)

(assert (=> b!949329 (= e!534494 (not call!41307))))

(declare-fun b!949330 () Bool)

(declare-fun e!534493 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!949330 (= e!534493 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949331 () Bool)

(declare-fun e!534486 () Bool)

(assert (=> b!949331 (= e!534486 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41300 () Bool)

(assert (=> bm!41300 (= call!41307 (contains!5226 lt!427544 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949332 () Bool)

(declare-fun +!2824 (ListLongMap!12343 tuple2!13632) ListLongMap!12343)

(assert (=> b!949332 (= e!534487 (+!2824 call!41305 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))

(declare-fun b!949333 () Bool)

(declare-fun e!534484 () Bool)

(assert (=> b!949333 (= e!534494 e!534484)))

(declare-fun res!636773 () Bool)

(assert (=> b!949333 (= res!636773 call!41307)))

(assert (=> b!949333 (=> (not res!636773) (not e!534484))))

(declare-fun b!949334 () Bool)

(assert (=> b!949334 (= e!534488 call!41302)))

(declare-fun b!949335 () Bool)

(declare-fun e!534483 () Bool)

(declare-fun get!14542 (ValueCell!9882 V!32601) V!32601)

(declare-fun dynLambda!1663 (Int (_ BitVec 64)) V!32601)

(assert (=> b!949335 (= e!534483 (= (apply!910 lt!427544 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)) (get!14542 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!949335 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28120 (_values!5787 thiss!1141))))))

(assert (=> b!949335 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun b!949336 () Bool)

(declare-fun e!534489 () Unit!31964)

(declare-fun Unit!31967 () Unit!31964)

(assert (=> b!949336 (= e!534489 Unit!31967)))

(declare-fun b!949337 () Bool)

(declare-fun lt!427549 () Unit!31964)

(assert (=> b!949337 (= e!534489 lt!427549)))

(declare-fun lt!427553 () ListLongMap!12343)

(assert (=> b!949337 (= lt!427553 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))

(declare-fun lt!427551 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427551 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427535 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427535 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427547 () Unit!31964)

(declare-fun addStillContains!580 (ListLongMap!12343 (_ BitVec 64) V!32601 (_ BitVec 64)) Unit!31964)

(assert (=> b!949337 (= lt!427547 (addStillContains!580 lt!427553 lt!427551 (zeroValue!5600 thiss!1141) lt!427535))))

(assert (=> b!949337 (contains!5226 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))) lt!427535)))

(declare-fun lt!427545 () Unit!31964)

(assert (=> b!949337 (= lt!427545 lt!427547)))

(declare-fun lt!427541 () ListLongMap!12343)

(assert (=> b!949337 (= lt!427541 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))

(declare-fun lt!427540 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427540 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427554 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427554 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427550 () Unit!31964)

(declare-fun addApplyDifferent!454 (ListLongMap!12343 (_ BitVec 64) V!32601 (_ BitVec 64)) Unit!31964)

(assert (=> b!949337 (= lt!427550 (addApplyDifferent!454 lt!427541 lt!427540 (minValue!5600 thiss!1141) lt!427554))))

(assert (=> b!949337 (= (apply!910 (+!2824 lt!427541 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))) lt!427554) (apply!910 lt!427541 lt!427554))))

(declare-fun lt!427542 () Unit!31964)

(assert (=> b!949337 (= lt!427542 lt!427550)))

(declare-fun lt!427548 () ListLongMap!12343)

(assert (=> b!949337 (= lt!427548 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))

(declare-fun lt!427539 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427539 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427552 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427552 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427543 () Unit!31964)

(assert (=> b!949337 (= lt!427543 (addApplyDifferent!454 lt!427548 lt!427539 (zeroValue!5600 thiss!1141) lt!427552))))

(assert (=> b!949337 (= (apply!910 (+!2824 lt!427548 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))) lt!427552) (apply!910 lt!427548 lt!427552))))

(declare-fun lt!427537 () Unit!31964)

(assert (=> b!949337 (= lt!427537 lt!427543)))

(declare-fun lt!427533 () ListLongMap!12343)

(assert (=> b!949337 (= lt!427533 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))

(declare-fun lt!427546 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427546 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!427536 () (_ BitVec 64))

(assert (=> b!949337 (= lt!427536 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949337 (= lt!427549 (addApplyDifferent!454 lt!427533 lt!427546 (minValue!5600 thiss!1141) lt!427536))))

(assert (=> b!949337 (= (apply!910 (+!2824 lt!427533 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))) lt!427536) (apply!910 lt!427533 lt!427536))))

(declare-fun bm!41301 () Bool)

(assert (=> bm!41301 (= call!41303 (contains!5226 lt!427544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949338 () Bool)

(declare-fun res!636768 () Bool)

(assert (=> b!949338 (=> (not res!636768) (not e!534491))))

(declare-fun e!534495 () Bool)

(assert (=> b!949338 (= res!636768 e!534495)))

(declare-fun res!636774 () Bool)

(assert (=> b!949338 (=> res!636774 e!534495)))

(assert (=> b!949338 (= res!636774 (not e!534486))))

(declare-fun res!636769 () Bool)

(assert (=> b!949338 (=> (not res!636769) (not e!534486))))

(assert (=> b!949338 (= res!636769 (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun d!114961 () Bool)

(assert (=> d!114961 e!534491))

(declare-fun res!636767 () Bool)

(assert (=> d!114961 (=> (not res!636767) (not e!534491))))

(assert (=> d!114961 (= res!636767 (or (bvsge #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))))

(declare-fun lt!427538 () ListLongMap!12343)

(assert (=> d!114961 (= lt!427544 lt!427538)))

(declare-fun lt!427534 () Unit!31964)

(assert (=> d!114961 (= lt!427534 e!534489)))

(declare-fun c!99002 () Bool)

(assert (=> d!114961 (= c!99002 e!534493)))

(declare-fun res!636770 () Bool)

(assert (=> d!114961 (=> (not res!636770) (not e!534493))))

(assert (=> d!114961 (= res!636770 (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> d!114961 (= lt!427538 e!534487)))

(declare-fun c!99001 () Bool)

(assert (=> d!114961 (= c!99001 (and (not (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5496 thiss!1141) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!114961 (validMask!0 (mask!27537 thiss!1141))))

(assert (=> d!114961 (= (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)) lt!427544)))

(declare-fun b!949325 () Bool)

(assert (=> b!949325 (= e!534485 (not call!41303))))

(declare-fun b!949339 () Bool)

(assert (=> b!949339 (= e!534492 call!41302)))

(declare-fun bm!41302 () Bool)

(declare-fun call!41306 () ListLongMap!12343)

(declare-fun call!41301 () ListLongMap!12343)

(assert (=> bm!41302 (= call!41305 (+!2824 (ite c!99001 call!41304 (ite c!99000 call!41301 call!41306)) (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))

(declare-fun b!949340 () Bool)

(assert (=> b!949340 (= e!534495 e!534483)))

(declare-fun res!636766 () Bool)

(assert (=> b!949340 (=> (not res!636766) (not e!534483))))

(assert (=> b!949340 (= res!636766 (contains!5226 lt!427544 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949340 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun bm!41303 () Bool)

(assert (=> bm!41303 (= call!41301 call!41304)))

(declare-fun b!949341 () Bool)

(assert (=> b!949341 (= e!534492 call!41306)))

(declare-fun bm!41304 () Bool)

(assert (=> bm!41304 (= call!41306 call!41301)))

(declare-fun b!949342 () Bool)

(assert (=> b!949342 (= e!534484 (= (apply!910 lt!427544 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5600 thiss!1141)))))

(assert (= (and d!114961 c!99001) b!949332))

(assert (= (and d!114961 (not c!99001)) b!949326))

(assert (= (and b!949326 c!99000) b!949334))

(assert (= (and b!949326 (not c!99000)) b!949323))

(assert (= (and b!949323 c!98999) b!949339))

(assert (= (and b!949323 (not c!98999)) b!949341))

(assert (= (or b!949339 b!949341) bm!41304))

(assert (= (or b!949334 bm!41304) bm!41303))

(assert (= (or b!949334 b!949339) bm!41298))

(assert (= (or b!949332 bm!41303) bm!41299))

(assert (= (or b!949332 bm!41298) bm!41302))

(assert (= (and d!114961 res!636770) b!949330))

(assert (= (and d!114961 c!99002) b!949337))

(assert (= (and d!114961 (not c!99002)) b!949336))

(assert (= (and d!114961 res!636767) b!949338))

(assert (= (and b!949338 res!636769) b!949331))

(assert (= (and b!949338 (not res!636774)) b!949340))

(assert (= (and b!949340 res!636766) b!949335))

(assert (= (and b!949338 res!636768) b!949327))

(assert (= (and b!949327 c!98997) b!949328))

(assert (= (and b!949327 (not c!98997)) b!949325))

(assert (= (and b!949328 res!636772) b!949322))

(assert (= (or b!949328 b!949325) bm!41301))

(assert (= (and b!949327 res!636771) b!949324))

(assert (= (and b!949324 c!98998) b!949333))

(assert (= (and b!949324 (not c!98998)) b!949329))

(assert (= (and b!949333 res!636773) b!949342))

(assert (= (or b!949333 b!949329) bm!41300))

(declare-fun b_lambda!14377 () Bool)

(assert (=> (not b_lambda!14377) (not b!949335)))

(declare-fun t!27801 () Bool)

(declare-fun tb!6193 () Bool)

(assert (=> (and b!949239 (= (defaultEntry!5764 thiss!1141) (defaultEntry!5764 thiss!1141)) t!27801) tb!6193))

(declare-fun result!12285 () Bool)

(assert (=> tb!6193 (= result!12285 tp_is_empty!20727)))

(assert (=> b!949335 t!27801))

(declare-fun b_and!29687 () Bool)

(assert (= b_and!29683 (and (=> t!27801 result!12285) b_and!29687)))

(declare-fun m!882031 () Bool)

(assert (=> bm!41299 m!882031))

(declare-fun m!882033 () Bool)

(assert (=> bm!41301 m!882033))

(declare-fun m!882035 () Bool)

(assert (=> b!949335 m!882035))

(declare-fun m!882037 () Bool)

(assert (=> b!949335 m!882037))

(assert (=> b!949335 m!882037))

(assert (=> b!949335 m!882035))

(declare-fun m!882039 () Bool)

(assert (=> b!949335 m!882039))

(declare-fun m!882041 () Bool)

(assert (=> b!949335 m!882041))

(declare-fun m!882043 () Bool)

(assert (=> b!949335 m!882043))

(assert (=> b!949335 m!882041))

(assert (=> b!949340 m!882041))

(assert (=> b!949340 m!882041))

(declare-fun m!882045 () Bool)

(assert (=> b!949340 m!882045))

(declare-fun m!882047 () Bool)

(assert (=> b!949322 m!882047))

(declare-fun m!882049 () Bool)

(assert (=> b!949342 m!882049))

(declare-fun m!882051 () Bool)

(assert (=> bm!41302 m!882051))

(assert (=> b!949331 m!882041))

(assert (=> b!949331 m!882041))

(declare-fun m!882053 () Bool)

(assert (=> b!949331 m!882053))

(declare-fun m!882055 () Bool)

(assert (=> b!949337 m!882055))

(declare-fun m!882057 () Bool)

(assert (=> b!949337 m!882057))

(declare-fun m!882059 () Bool)

(assert (=> b!949337 m!882059))

(declare-fun m!882061 () Bool)

(assert (=> b!949337 m!882061))

(assert (=> b!949337 m!882061))

(declare-fun m!882063 () Bool)

(assert (=> b!949337 m!882063))

(declare-fun m!882065 () Bool)

(assert (=> b!949337 m!882065))

(declare-fun m!882067 () Bool)

(assert (=> b!949337 m!882067))

(declare-fun m!882069 () Bool)

(assert (=> b!949337 m!882069))

(assert (=> b!949337 m!882069))

(declare-fun m!882071 () Bool)

(assert (=> b!949337 m!882071))

(declare-fun m!882073 () Bool)

(assert (=> b!949337 m!882073))

(declare-fun m!882075 () Bool)

(assert (=> b!949337 m!882075))

(declare-fun m!882077 () Bool)

(assert (=> b!949337 m!882077))

(assert (=> b!949337 m!882041))

(assert (=> b!949337 m!882065))

(assert (=> b!949337 m!882031))

(declare-fun m!882079 () Bool)

(assert (=> b!949337 m!882079))

(assert (=> b!949337 m!882057))

(declare-fun m!882081 () Bool)

(assert (=> b!949337 m!882081))

(declare-fun m!882083 () Bool)

(assert (=> b!949337 m!882083))

(declare-fun m!882085 () Bool)

(assert (=> b!949332 m!882085))

(declare-fun m!882087 () Bool)

(assert (=> bm!41300 m!882087))

(assert (=> b!949330 m!882041))

(assert (=> b!949330 m!882041))

(assert (=> b!949330 m!882053))

(assert (=> d!114961 m!881995))

(assert (=> b!949237 d!114961))

(declare-fun d!114963 () Bool)

(assert (=> d!114963 (= (array_inv!21404 (_keys!10688 thiss!1141)) (bvsge (size!28121 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949239 d!114963))

(declare-fun d!114965 () Bool)

(assert (=> d!114965 (= (array_inv!21405 (_values!5787 thiss!1141)) (bvsge (size!28120 (_values!5787 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949239 d!114965))

(declare-fun d!114967 () Bool)

(declare-fun res!636781 () Bool)

(declare-fun e!534498 () Bool)

(assert (=> d!114967 (=> (not res!636781) (not e!534498))))

(declare-fun simpleValid!370 (LongMapFixedSize!4914) Bool)

(assert (=> d!114967 (= res!636781 (simpleValid!370 thiss!1141))))

(assert (=> d!114967 (= (valid!1846 thiss!1141) e!534498)))

(declare-fun b!949351 () Bool)

(declare-fun res!636782 () Bool)

(assert (=> b!949351 (=> (not res!636782) (not e!534498))))

(declare-fun arrayCountValidKeys!0 (array!57490 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!949351 (= res!636782 (= (arrayCountValidKeys!0 (_keys!10688 thiss!1141) #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))) (_size!2512 thiss!1141)))))

(declare-fun b!949352 () Bool)

(declare-fun res!636783 () Bool)

(assert (=> b!949352 (=> (not res!636783) (not e!534498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57490 (_ BitVec 32)) Bool)

(assert (=> b!949352 (= res!636783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))

(declare-fun b!949353 () Bool)

(declare-datatypes ((List!19459 0))(
  ( (Nil!19456) (Cons!19455 (h!20614 (_ BitVec 64)) (t!27802 List!19459)) )
))
(declare-fun arrayNoDuplicates!0 (array!57490 (_ BitVec 32) List!19459) Bool)

(assert (=> b!949353 (= e!534498 (arrayNoDuplicates!0 (_keys!10688 thiss!1141) #b00000000000000000000000000000000 Nil!19456))))

(assert (= (and d!114967 res!636781) b!949351))

(assert (= (and b!949351 res!636782) b!949352))

(assert (= (and b!949352 res!636783) b!949353))

(declare-fun m!882089 () Bool)

(assert (=> d!114967 m!882089))

(declare-fun m!882091 () Bool)

(assert (=> b!949351 m!882091))

(declare-fun m!882093 () Bool)

(assert (=> b!949352 m!882093))

(declare-fun m!882095 () Bool)

(assert (=> b!949353 m!882095))

(assert (=> start!81128 d!114967))

(declare-fun d!114969 () Bool)

(declare-fun lt!427566 () SeekEntryResult!9123)

(assert (=> d!114969 (and (or ((_ is MissingVacant!9123) lt!427566) (not ((_ is Found!9123) lt!427566)) (and (bvsge (index!38863 lt!427566) #b00000000000000000000000000000000) (bvslt (index!38863 lt!427566) (size!28121 (_keys!10688 thiss!1141))))) (not ((_ is MissingVacant!9123) lt!427566)) (or (not ((_ is Found!9123) lt!427566)) (= (select (arr!27644 (_keys!10688 thiss!1141)) (index!38863 lt!427566)) key!756)))))

(declare-fun e!534506 () SeekEntryResult!9123)

(assert (=> d!114969 (= lt!427566 e!534506)))

(declare-fun c!99010 () Bool)

(declare-fun lt!427564 () SeekEntryResult!9123)

(assert (=> d!114969 (= c!99010 (and ((_ is Intermediate!9123) lt!427564) (undefined!9935 lt!427564)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57490 (_ BitVec 32)) SeekEntryResult!9123)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114969 (= lt!427564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27537 thiss!1141)) key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))

(assert (=> d!114969 (validMask!0 (mask!27537 thiss!1141))))

(assert (=> d!114969 (= (seekEntry!0 key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)) lt!427566)))

(declare-fun b!949366 () Bool)

(declare-fun c!99011 () Bool)

(declare-fun lt!427565 () (_ BitVec 64))

(assert (=> b!949366 (= c!99011 (= lt!427565 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534507 () SeekEntryResult!9123)

(declare-fun e!534505 () SeekEntryResult!9123)

(assert (=> b!949366 (= e!534507 e!534505)))

(declare-fun b!949367 () Bool)

(assert (=> b!949367 (= e!534506 e!534507)))

(assert (=> b!949367 (= lt!427565 (select (arr!27644 (_keys!10688 thiss!1141)) (index!38864 lt!427564)))))

(declare-fun c!99009 () Bool)

(assert (=> b!949367 (= c!99009 (= lt!427565 key!756))))

(declare-fun b!949368 () Bool)

(assert (=> b!949368 (= e!534507 (Found!9123 (index!38864 lt!427564)))))

(declare-fun b!949369 () Bool)

(declare-fun lt!427563 () SeekEntryResult!9123)

(assert (=> b!949369 (= e!534505 (ite ((_ is MissingVacant!9123) lt!427563) (MissingZero!9123 (index!38865 lt!427563)) lt!427563))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57490 (_ BitVec 32)) SeekEntryResult!9123)

(assert (=> b!949369 (= lt!427563 (seekKeyOrZeroReturnVacant!0 (x!81664 lt!427564) (index!38864 lt!427564) (index!38864 lt!427564) key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))

(declare-fun b!949370 () Bool)

(assert (=> b!949370 (= e!534506 Undefined!9123)))

(declare-fun b!949371 () Bool)

(assert (=> b!949371 (= e!534505 (MissingZero!9123 (index!38864 lt!427564)))))

(assert (= (and d!114969 c!99010) b!949370))

(assert (= (and d!114969 (not c!99010)) b!949367))

(assert (= (and b!949367 c!99009) b!949368))

(assert (= (and b!949367 (not c!99009)) b!949366))

(assert (= (and b!949366 c!99011) b!949371))

(assert (= (and b!949366 (not c!99011)) b!949369))

(declare-fun m!882097 () Bool)

(assert (=> d!114969 m!882097))

(declare-fun m!882099 () Bool)

(assert (=> d!114969 m!882099))

(assert (=> d!114969 m!882099))

(declare-fun m!882101 () Bool)

(assert (=> d!114969 m!882101))

(assert (=> d!114969 m!881995))

(declare-fun m!882103 () Bool)

(assert (=> b!949367 m!882103))

(declare-fun m!882105 () Bool)

(assert (=> b!949369 m!882105))

(assert (=> b!949235 d!114969))

(declare-fun d!114971 () Bool)

(assert (=> d!114971 (= (validMask!0 (mask!27537 thiss!1141)) (and (or (= (mask!27537 thiss!1141) #b00000000000000000000000000000111) (= (mask!27537 thiss!1141) #b00000000000000000000000000001111) (= (mask!27537 thiss!1141) #b00000000000000000000000000011111) (= (mask!27537 thiss!1141) #b00000000000000000000000000111111) (= (mask!27537 thiss!1141) #b00000000000000000000000001111111) (= (mask!27537 thiss!1141) #b00000000000000000000000011111111) (= (mask!27537 thiss!1141) #b00000000000000000000000111111111) (= (mask!27537 thiss!1141) #b00000000000000000000001111111111) (= (mask!27537 thiss!1141) #b00000000000000000000011111111111) (= (mask!27537 thiss!1141) #b00000000000000000000111111111111) (= (mask!27537 thiss!1141) #b00000000000000000001111111111111) (= (mask!27537 thiss!1141) #b00000000000000000011111111111111) (= (mask!27537 thiss!1141) #b00000000000000000111111111111111) (= (mask!27537 thiss!1141) #b00000000000000001111111111111111) (= (mask!27537 thiss!1141) #b00000000000000011111111111111111) (= (mask!27537 thiss!1141) #b00000000000000111111111111111111) (= (mask!27537 thiss!1141) #b00000000000001111111111111111111) (= (mask!27537 thiss!1141) #b00000000000011111111111111111111) (= (mask!27537 thiss!1141) #b00000000000111111111111111111111) (= (mask!27537 thiss!1141) #b00000000001111111111111111111111) (= (mask!27537 thiss!1141) #b00000000011111111111111111111111) (= (mask!27537 thiss!1141) #b00000000111111111111111111111111) (= (mask!27537 thiss!1141) #b00000001111111111111111111111111) (= (mask!27537 thiss!1141) #b00000011111111111111111111111111) (= (mask!27537 thiss!1141) #b00000111111111111111111111111111) (= (mask!27537 thiss!1141) #b00001111111111111111111111111111) (= (mask!27537 thiss!1141) #b00011111111111111111111111111111) (= (mask!27537 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27537 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!949243 d!114971))

(declare-fun mapIsEmpty!32998 () Bool)

(declare-fun mapRes!32998 () Bool)

(assert (=> mapIsEmpty!32998 mapRes!32998))

(declare-fun b!949379 () Bool)

(declare-fun e!534513 () Bool)

(assert (=> b!949379 (= e!534513 tp_is_empty!20727)))

(declare-fun condMapEmpty!32998 () Bool)

(declare-fun mapDefault!32998 () ValueCell!9882)

(assert (=> mapNonEmpty!32992 (= condMapEmpty!32998 (= mapRest!32992 ((as const (Array (_ BitVec 32) ValueCell!9882)) mapDefault!32998)))))

(assert (=> mapNonEmpty!32992 (= tp!63243 (and e!534513 mapRes!32998))))

(declare-fun b!949378 () Bool)

(declare-fun e!534512 () Bool)

(assert (=> b!949378 (= e!534512 tp_is_empty!20727)))

(declare-fun mapNonEmpty!32998 () Bool)

(declare-fun tp!63253 () Bool)

(assert (=> mapNonEmpty!32998 (= mapRes!32998 (and tp!63253 e!534512))))

(declare-fun mapRest!32998 () (Array (_ BitVec 32) ValueCell!9882))

(declare-fun mapKey!32998 () (_ BitVec 32))

(declare-fun mapValue!32998 () ValueCell!9882)

(assert (=> mapNonEmpty!32998 (= mapRest!32992 (store mapRest!32998 mapKey!32998 mapValue!32998))))

(assert (= (and mapNonEmpty!32992 condMapEmpty!32998) mapIsEmpty!32998))

(assert (= (and mapNonEmpty!32992 (not condMapEmpty!32998)) mapNonEmpty!32998))

(assert (= (and mapNonEmpty!32998 ((_ is ValueCellFull!9882) mapValue!32998)) b!949378))

(assert (= (and mapNonEmpty!32992 ((_ is ValueCellFull!9882) mapDefault!32998)) b!949379))

(declare-fun m!882107 () Bool)

(assert (=> mapNonEmpty!32998 m!882107))

(declare-fun b_lambda!14379 () Bool)

(assert (= b_lambda!14377 (or (and b!949239 b_free!18219) b_lambda!14379)))

(check-sat tp_is_empty!20727 (not b!949337) (not b!949351) (not b!949322) (not b!949353) (not bm!41301) (not b_lambda!14379) (not b!949279) (not mapNonEmpty!32998) (not d!114959) (not b!949331) (not bm!41302) (not b!949277) (not d!114967) (not bm!41300) (not b!949342) (not b_next!18219) (not b!949369) (not b!949340) (not b!949332) (not b!949352) (not bm!41299) (not b!949335) (not d!114969) (not b!949330) b_and!29687 (not d!114961))
(check-sat b_and!29687 (not b_next!18219))
(get-model)

(declare-fun d!114973 () Bool)

(assert (=> d!114973 (= (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)) (and (not (= (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!949330 d!114973))

(declare-fun b!949390 () Bool)

(declare-fun e!534523 () Bool)

(declare-fun e!534522 () Bool)

(assert (=> b!949390 (= e!534523 e!534522)))

(declare-fun res!636790 () Bool)

(assert (=> b!949390 (=> (not res!636790) (not e!534522))))

(declare-fun e!534524 () Bool)

(assert (=> b!949390 (= res!636790 (not e!534524))))

(declare-fun res!636792 () Bool)

(assert (=> b!949390 (=> (not res!636792) (not e!534524))))

(assert (=> b!949390 (= res!636792 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949391 () Bool)

(declare-fun e!534525 () Bool)

(assert (=> b!949391 (= e!534522 e!534525)))

(declare-fun c!99014 () Bool)

(assert (=> b!949391 (= c!99014 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949392 () Bool)

(declare-fun call!41310 () Bool)

(assert (=> b!949392 (= e!534525 call!41310)))

(declare-fun b!949393 () Bool)

(declare-fun contains!5228 (List!19459 (_ BitVec 64)) Bool)

(assert (=> b!949393 (= e!534524 (contains!5228 Nil!19456 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41307 () Bool)

(assert (=> bm!41307 (= call!41310 (arrayNoDuplicates!0 (_keys!10688 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!99014 (Cons!19455 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000) Nil!19456) Nil!19456)))))

(declare-fun d!114975 () Bool)

(declare-fun res!636791 () Bool)

(assert (=> d!114975 (=> res!636791 e!534523)))

(assert (=> d!114975 (= res!636791 (bvsge #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> d!114975 (= (arrayNoDuplicates!0 (_keys!10688 thiss!1141) #b00000000000000000000000000000000 Nil!19456) e!534523)))

(declare-fun b!949394 () Bool)

(assert (=> b!949394 (= e!534525 call!41310)))

(assert (= (and d!114975 (not res!636791)) b!949390))

(assert (= (and b!949390 res!636792) b!949393))

(assert (= (and b!949390 res!636790) b!949391))

(assert (= (and b!949391 c!99014) b!949394))

(assert (= (and b!949391 (not c!99014)) b!949392))

(assert (= (or b!949394 b!949392) bm!41307))

(assert (=> b!949390 m!882041))

(assert (=> b!949390 m!882041))

(assert (=> b!949390 m!882053))

(assert (=> b!949391 m!882041))

(assert (=> b!949391 m!882041))

(assert (=> b!949391 m!882053))

(assert (=> b!949393 m!882041))

(assert (=> b!949393 m!882041))

(declare-fun m!882109 () Bool)

(assert (=> b!949393 m!882109))

(assert (=> bm!41307 m!882041))

(declare-fun m!882111 () Bool)

(assert (=> bm!41307 m!882111))

(assert (=> b!949353 d!114975))

(declare-fun b!949413 () Bool)

(declare-fun e!534538 () SeekEntryResult!9123)

(declare-fun e!534539 () SeekEntryResult!9123)

(assert (=> b!949413 (= e!534538 e!534539)))

(declare-fun c!99022 () Bool)

(declare-fun lt!427571 () (_ BitVec 64))

(assert (=> b!949413 (= c!99022 (or (= lt!427571 key!756) (= (bvadd lt!427571 lt!427571) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!949414 () Bool)

(assert (=> b!949414 (= e!534539 (Intermediate!9123 false (toIndex!0 key!756 (mask!27537 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!949415 () Bool)

(declare-fun e!534536 () Bool)

(declare-fun lt!427572 () SeekEntryResult!9123)

(assert (=> b!949415 (= e!534536 (bvsge (x!81664 lt!427572) #b01111111111111111111111111111110))))

(declare-fun b!949416 () Bool)

(assert (=> b!949416 (and (bvsge (index!38864 lt!427572) #b00000000000000000000000000000000) (bvslt (index!38864 lt!427572) (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun res!636799 () Bool)

(assert (=> b!949416 (= res!636799 (= (select (arr!27644 (_keys!10688 thiss!1141)) (index!38864 lt!427572)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534540 () Bool)

(assert (=> b!949416 (=> res!636799 e!534540)))

(declare-fun b!949417 () Bool)

(declare-fun e!534537 () Bool)

(assert (=> b!949417 (= e!534536 e!534537)))

(declare-fun res!636801 () Bool)

(assert (=> b!949417 (= res!636801 (and ((_ is Intermediate!9123) lt!427572) (not (undefined!9935 lt!427572)) (bvslt (x!81664 lt!427572) #b01111111111111111111111111111110) (bvsge (x!81664 lt!427572) #b00000000000000000000000000000000) (bvsge (x!81664 lt!427572) #b00000000000000000000000000000000)))))

(assert (=> b!949417 (=> (not res!636801) (not e!534537))))

(declare-fun b!949418 () Bool)

(assert (=> b!949418 (and (bvsge (index!38864 lt!427572) #b00000000000000000000000000000000) (bvslt (index!38864 lt!427572) (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> b!949418 (= e!534540 (= (select (arr!27644 (_keys!10688 thiss!1141)) (index!38864 lt!427572)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!114977 () Bool)

(assert (=> d!114977 e!534536))

(declare-fun c!99023 () Bool)

(assert (=> d!114977 (= c!99023 (and ((_ is Intermediate!9123) lt!427572) (undefined!9935 lt!427572)))))

(assert (=> d!114977 (= lt!427572 e!534538)))

(declare-fun c!99021 () Bool)

(assert (=> d!114977 (= c!99021 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!114977 (= lt!427571 (select (arr!27644 (_keys!10688 thiss!1141)) (toIndex!0 key!756 (mask!27537 thiss!1141))))))

(assert (=> d!114977 (validMask!0 (mask!27537 thiss!1141))))

(assert (=> d!114977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27537 thiss!1141)) key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)) lt!427572)))

(declare-fun b!949419 () Bool)

(assert (=> b!949419 (and (bvsge (index!38864 lt!427572) #b00000000000000000000000000000000) (bvslt (index!38864 lt!427572) (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun res!636800 () Bool)

(assert (=> b!949419 (= res!636800 (= (select (arr!27644 (_keys!10688 thiss!1141)) (index!38864 lt!427572)) key!756))))

(assert (=> b!949419 (=> res!636800 e!534540)))

(assert (=> b!949419 (= e!534537 e!534540)))

(declare-fun b!949420 () Bool)

(assert (=> b!949420 (= e!534538 (Intermediate!9123 true (toIndex!0 key!756 (mask!27537 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun b!949421 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!949421 (= e!534539 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!756 (mask!27537 thiss!1141)) #b00000000000000000000000000000000 (mask!27537 thiss!1141)) key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))

(assert (= (and d!114977 c!99021) b!949420))

(assert (= (and d!114977 (not c!99021)) b!949413))

(assert (= (and b!949413 c!99022) b!949414))

(assert (= (and b!949413 (not c!99022)) b!949421))

(assert (= (and d!114977 c!99023) b!949415))

(assert (= (and d!114977 (not c!99023)) b!949417))

(assert (= (and b!949417 res!636801) b!949419))

(assert (= (and b!949419 (not res!636800)) b!949416))

(assert (= (and b!949416 (not res!636799)) b!949418))

(declare-fun m!882113 () Bool)

(assert (=> b!949419 m!882113))

(assert (=> b!949418 m!882113))

(assert (=> b!949416 m!882113))

(assert (=> b!949421 m!882099))

(declare-fun m!882115 () Bool)

(assert (=> b!949421 m!882115))

(assert (=> b!949421 m!882115))

(declare-fun m!882117 () Bool)

(assert (=> b!949421 m!882117))

(assert (=> d!114977 m!882099))

(declare-fun m!882119 () Bool)

(assert (=> d!114977 m!882119))

(assert (=> d!114977 m!881995))

(assert (=> d!114969 d!114977))

(declare-fun d!114979 () Bool)

(declare-fun lt!427578 () (_ BitVec 32))

(declare-fun lt!427577 () (_ BitVec 32))

(assert (=> d!114979 (= lt!427578 (bvmul (bvxor lt!427577 (bvlshr lt!427577 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!114979 (= lt!427577 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!114979 (and (bvsge (mask!27537 thiss!1141) #b00000000000000000000000000000000) (let ((res!636802 (let ((h!20615 ((_ extract 31 0) (bvand (bvxor key!756 (bvlshr key!756 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!81680 (bvmul (bvxor h!20615 (bvlshr h!20615 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!81680 (bvlshr x!81680 #b00000000000000000000000000001101)) (mask!27537 thiss!1141)))))) (and (bvslt res!636802 (bvadd (mask!27537 thiss!1141) #b00000000000000000000000000000001)) (bvsge res!636802 #b00000000000000000000000000000000))))))

(assert (=> d!114979 (= (toIndex!0 key!756 (mask!27537 thiss!1141)) (bvand (bvxor lt!427578 (bvlshr lt!427578 #b00000000000000000000000000001101)) (mask!27537 thiss!1141)))))

(assert (=> d!114969 d!114979))

(assert (=> d!114969 d!114971))

(declare-fun d!114981 () Bool)

(declare-fun e!534541 () Bool)

(assert (=> d!114981 e!534541))

(declare-fun res!636803 () Bool)

(assert (=> d!114981 (=> res!636803 e!534541)))

(declare-fun lt!427580 () Bool)

(assert (=> d!114981 (= res!636803 (not lt!427580))))

(declare-fun lt!427582 () Bool)

(assert (=> d!114981 (= lt!427580 lt!427582)))

(declare-fun lt!427579 () Unit!31964)

(declare-fun e!534542 () Unit!31964)

(assert (=> d!114981 (= lt!427579 e!534542)))

(declare-fun c!99024 () Bool)

(assert (=> d!114981 (= c!99024 lt!427582)))

(assert (=> d!114981 (= lt!427582 (containsKey!462 (toList!6187 lt!427544) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114981 (= (contains!5226 lt!427544 #b0000000000000000000000000000000000000000000000000000000000000000) lt!427580)))

(declare-fun b!949422 () Bool)

(declare-fun lt!427581 () Unit!31964)

(assert (=> b!949422 (= e!534542 lt!427581)))

(assert (=> b!949422 (= lt!427581 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!6187 lt!427544) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949422 (isDefined!367 (getValueByKey!497 (toList!6187 lt!427544) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949423 () Bool)

(declare-fun Unit!31968 () Unit!31964)

(assert (=> b!949423 (= e!534542 Unit!31968)))

(declare-fun b!949424 () Bool)

(assert (=> b!949424 (= e!534541 (isDefined!367 (getValueByKey!497 (toList!6187 lt!427544) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114981 c!99024) b!949422))

(assert (= (and d!114981 (not c!99024)) b!949423))

(assert (= (and d!114981 (not res!636803)) b!949424))

(declare-fun m!882121 () Bool)

(assert (=> d!114981 m!882121))

(declare-fun m!882123 () Bool)

(assert (=> b!949422 m!882123))

(declare-fun m!882125 () Bool)

(assert (=> b!949422 m!882125))

(assert (=> b!949422 m!882125))

(declare-fun m!882127 () Bool)

(assert (=> b!949422 m!882127))

(assert (=> b!949424 m!882125))

(assert (=> b!949424 m!882125))

(assert (=> b!949424 m!882127))

(assert (=> bm!41301 d!114981))

(declare-fun b!949433 () Bool)

(declare-fun e!534549 () Bool)

(declare-fun e!534550 () Bool)

(assert (=> b!949433 (= e!534549 e!534550)))

(declare-fun lt!427591 () (_ BitVec 64))

(assert (=> b!949433 (= lt!427591 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(declare-fun lt!427590 () Unit!31964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57490 (_ BitVec 64) (_ BitVec 32)) Unit!31964)

(assert (=> b!949433 (= lt!427590 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10688 thiss!1141) lt!427591 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!949433 (arrayContainsKey!0 (_keys!10688 thiss!1141) lt!427591 #b00000000000000000000000000000000)))

(declare-fun lt!427589 () Unit!31964)

(assert (=> b!949433 (= lt!427589 lt!427590)))

(declare-fun res!636808 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57490 (_ BitVec 32)) SeekEntryResult!9123)

(assert (=> b!949433 (= res!636808 (= (seekEntryOrOpen!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000) (_keys!10688 thiss!1141) (mask!27537 thiss!1141)) (Found!9123 #b00000000000000000000000000000000)))))

(assert (=> b!949433 (=> (not res!636808) (not e!534550))))

(declare-fun b!949434 () Bool)

(declare-fun call!41313 () Bool)

(assert (=> b!949434 (= e!534550 call!41313)))

(declare-fun bm!41310 () Bool)

(assert (=> bm!41310 (= call!41313 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))

(declare-fun b!949435 () Bool)

(assert (=> b!949435 (= e!534549 call!41313)))

(declare-fun d!114983 () Bool)

(declare-fun res!636809 () Bool)

(declare-fun e!534551 () Bool)

(assert (=> d!114983 (=> res!636809 e!534551)))

(assert (=> d!114983 (= res!636809 (bvsge #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> d!114983 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)) e!534551)))

(declare-fun b!949436 () Bool)

(assert (=> b!949436 (= e!534551 e!534549)))

(declare-fun c!99027 () Bool)

(assert (=> b!949436 (= c!99027 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (= (and d!114983 (not res!636809)) b!949436))

(assert (= (and b!949436 c!99027) b!949433))

(assert (= (and b!949436 (not c!99027)) b!949435))

(assert (= (and b!949433 res!636808) b!949434))

(assert (= (or b!949434 b!949435) bm!41310))

(assert (=> b!949433 m!882041))

(declare-fun m!882129 () Bool)

(assert (=> b!949433 m!882129))

(declare-fun m!882131 () Bool)

(assert (=> b!949433 m!882131))

(assert (=> b!949433 m!882041))

(declare-fun m!882133 () Bool)

(assert (=> b!949433 m!882133))

(declare-fun m!882135 () Bool)

(assert (=> bm!41310 m!882135))

(assert (=> b!949436 m!882041))

(assert (=> b!949436 m!882041))

(assert (=> b!949436 m!882053))

(assert (=> b!949352 d!114983))

(declare-fun d!114985 () Bool)

(declare-fun isEmpty!715 (Option!503) Bool)

(assert (=> d!114985 (= (isDefined!367 (getValueByKey!497 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756)) (not (isEmpty!715 (getValueByKey!497 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))))

(declare-fun bs!26681 () Bool)

(assert (= bs!26681 d!114985))

(assert (=> bs!26681 m!882027))

(declare-fun m!882137 () Bool)

(assert (=> bs!26681 m!882137))

(assert (=> b!949279 d!114985))

(declare-fun b!949446 () Bool)

(declare-fun e!534556 () Option!503)

(declare-fun e!534557 () Option!503)

(assert (=> b!949446 (= e!534556 e!534557)))

(declare-fun c!99033 () Bool)

(assert (=> b!949446 (= c!99033 (and ((_ is Cons!19453) (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))) (not (= (_1!6826 (h!20612 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))))) key!756))))))

(declare-fun d!114987 () Bool)

(declare-fun c!99032 () Bool)

(assert (=> d!114987 (= c!99032 (and ((_ is Cons!19453) (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))) (= (_1!6826 (h!20612 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))))) key!756)))))

(assert (=> d!114987 (= (getValueByKey!497 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756) e!534556)))

(declare-fun b!949445 () Bool)

(assert (=> b!949445 (= e!534556 (Some!502 (_2!6826 (h!20612 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))))))

(declare-fun b!949448 () Bool)

(assert (=> b!949448 (= e!534557 None!501)))

(declare-fun b!949447 () Bool)

(assert (=> b!949447 (= e!534557 (getValueByKey!497 (t!27798 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))) key!756))))

(assert (= (and d!114987 c!99032) b!949445))

(assert (= (and d!114987 (not c!99032)) b!949446))

(assert (= (and b!949446 c!99033) b!949447))

(assert (= (and b!949446 (not c!99033)) b!949448))

(declare-fun m!882139 () Bool)

(assert (=> b!949447 m!882139))

(assert (=> b!949279 d!114987))

(declare-fun d!114989 () Bool)

(declare-fun e!534560 () Bool)

(assert (=> d!114989 e!534560))

(declare-fun res!636815 () Bool)

(assert (=> d!114989 (=> (not res!636815) (not e!534560))))

(declare-fun lt!427601 () ListLongMap!12343)

(assert (=> d!114989 (= res!636815 (contains!5226 lt!427601 (_1!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))

(declare-fun lt!427600 () List!19457)

(assert (=> d!114989 (= lt!427601 (ListLongMap!12344 lt!427600))))

(declare-fun lt!427602 () Unit!31964)

(declare-fun lt!427603 () Unit!31964)

(assert (=> d!114989 (= lt!427602 lt!427603)))

(assert (=> d!114989 (= (getValueByKey!497 lt!427600 (_1!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!266 (List!19457 (_ BitVec 64) V!32601) Unit!31964)

(assert (=> d!114989 (= lt!427603 (lemmaContainsTupThenGetReturnValue!266 lt!427600 (_1!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))

(declare-fun insertStrictlySorted!322 (List!19457 (_ BitVec 64) V!32601) List!19457)

(assert (=> d!114989 (= lt!427600 (insertStrictlySorted!322 (toList!6187 call!41305) (_1!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))

(assert (=> d!114989 (= (+!2824 call!41305 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))) lt!427601)))

(declare-fun b!949453 () Bool)

(declare-fun res!636814 () Bool)

(assert (=> b!949453 (=> (not res!636814) (not e!534560))))

(assert (=> b!949453 (= res!636814 (= (getValueByKey!497 (toList!6187 lt!427601) (_1!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))))

(declare-fun b!949454 () Bool)

(declare-fun contains!5229 (List!19457 tuple2!13632) Bool)

(assert (=> b!949454 (= e!534560 (contains!5229 (toList!6187 lt!427601) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))

(assert (= (and d!114989 res!636815) b!949453))

(assert (= (and b!949453 res!636814) b!949454))

(declare-fun m!882141 () Bool)

(assert (=> d!114989 m!882141))

(declare-fun m!882143 () Bool)

(assert (=> d!114989 m!882143))

(declare-fun m!882145 () Bool)

(assert (=> d!114989 m!882145))

(declare-fun m!882147 () Bool)

(assert (=> d!114989 m!882147))

(declare-fun m!882149 () Bool)

(assert (=> b!949453 m!882149))

(declare-fun m!882151 () Bool)

(assert (=> b!949454 m!882151))

(assert (=> b!949332 d!114989))

(declare-fun d!114991 () Bool)

(declare-fun e!534561 () Bool)

(assert (=> d!114991 e!534561))

(declare-fun res!636816 () Bool)

(assert (=> d!114991 (=> res!636816 e!534561)))

(declare-fun lt!427605 () Bool)

(assert (=> d!114991 (= res!636816 (not lt!427605))))

(declare-fun lt!427607 () Bool)

(assert (=> d!114991 (= lt!427605 lt!427607)))

(declare-fun lt!427604 () Unit!31964)

(declare-fun e!534562 () Unit!31964)

(assert (=> d!114991 (= lt!427604 e!534562)))

(declare-fun c!99034 () Bool)

(assert (=> d!114991 (= c!99034 lt!427607)))

(assert (=> d!114991 (= lt!427607 (containsKey!462 (toList!6187 lt!427544) (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> d!114991 (= (contains!5226 lt!427544 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)) lt!427605)))

(declare-fun b!949455 () Bool)

(declare-fun lt!427606 () Unit!31964)

(assert (=> b!949455 (= e!534562 lt!427606)))

(assert (=> b!949455 (= lt!427606 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!6187 lt!427544) (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949455 (isDefined!367 (getValueByKey!497 (toList!6187 lt!427544) (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949456 () Bool)

(declare-fun Unit!31969 () Unit!31964)

(assert (=> b!949456 (= e!534562 Unit!31969)))

(declare-fun b!949457 () Bool)

(assert (=> b!949457 (= e!534561 (isDefined!367 (getValueByKey!497 (toList!6187 lt!427544) (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))))

(assert (= (and d!114991 c!99034) b!949455))

(assert (= (and d!114991 (not c!99034)) b!949456))

(assert (= (and d!114991 (not res!636816)) b!949457))

(assert (=> d!114991 m!882041))

(declare-fun m!882153 () Bool)

(assert (=> d!114991 m!882153))

(assert (=> b!949455 m!882041))

(declare-fun m!882155 () Bool)

(assert (=> b!949455 m!882155))

(assert (=> b!949455 m!882041))

(declare-fun m!882157 () Bool)

(assert (=> b!949455 m!882157))

(assert (=> b!949455 m!882157))

(declare-fun m!882159 () Bool)

(assert (=> b!949455 m!882159))

(assert (=> b!949457 m!882041))

(assert (=> b!949457 m!882157))

(assert (=> b!949457 m!882157))

(assert (=> b!949457 m!882159))

(assert (=> b!949340 d!114991))

(declare-fun d!114993 () Bool)

(declare-fun e!534563 () Bool)

(assert (=> d!114993 e!534563))

(declare-fun res!636817 () Bool)

(assert (=> d!114993 (=> res!636817 e!534563)))

(declare-fun lt!427609 () Bool)

(assert (=> d!114993 (= res!636817 (not lt!427609))))

(declare-fun lt!427611 () Bool)

(assert (=> d!114993 (= lt!427609 lt!427611)))

(declare-fun lt!427608 () Unit!31964)

(declare-fun e!534564 () Unit!31964)

(assert (=> d!114993 (= lt!427608 e!534564)))

(declare-fun c!99035 () Bool)

(assert (=> d!114993 (= c!99035 lt!427611)))

(assert (=> d!114993 (= lt!427611 (containsKey!462 (toList!6187 lt!427544) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!114993 (= (contains!5226 lt!427544 #b1000000000000000000000000000000000000000000000000000000000000000) lt!427609)))

(declare-fun b!949458 () Bool)

(declare-fun lt!427610 () Unit!31964)

(assert (=> b!949458 (= e!534564 lt!427610)))

(assert (=> b!949458 (= lt!427610 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!6187 lt!427544) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!949458 (isDefined!367 (getValueByKey!497 (toList!6187 lt!427544) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!949459 () Bool)

(declare-fun Unit!31970 () Unit!31964)

(assert (=> b!949459 (= e!534564 Unit!31970)))

(declare-fun b!949460 () Bool)

(assert (=> b!949460 (= e!534563 (isDefined!367 (getValueByKey!497 (toList!6187 lt!427544) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!114993 c!99035) b!949458))

(assert (= (and d!114993 (not c!99035)) b!949459))

(assert (= (and d!114993 (not res!636817)) b!949460))

(declare-fun m!882161 () Bool)

(assert (=> d!114993 m!882161))

(declare-fun m!882163 () Bool)

(assert (=> b!949458 m!882163))

(declare-fun m!882165 () Bool)

(assert (=> b!949458 m!882165))

(assert (=> b!949458 m!882165))

(declare-fun m!882167 () Bool)

(assert (=> b!949458 m!882167))

(assert (=> b!949460 m!882165))

(assert (=> b!949460 m!882165))

(assert (=> b!949460 m!882167))

(assert (=> bm!41300 d!114993))

(declare-fun d!114995 () Bool)

(declare-fun e!534565 () Bool)

(assert (=> d!114995 e!534565))

(declare-fun res!636819 () Bool)

(assert (=> d!114995 (=> (not res!636819) (not e!534565))))

(declare-fun lt!427613 () ListLongMap!12343)

(assert (=> d!114995 (= res!636819 (contains!5226 lt!427613 (_1!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))))

(declare-fun lt!427612 () List!19457)

(assert (=> d!114995 (= lt!427613 (ListLongMap!12344 lt!427612))))

(declare-fun lt!427614 () Unit!31964)

(declare-fun lt!427615 () Unit!31964)

(assert (=> d!114995 (= lt!427614 lt!427615)))

(assert (=> d!114995 (= (getValueByKey!497 lt!427612 (_1!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))) (Some!502 (_2!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))))

(assert (=> d!114995 (= lt!427615 (lemmaContainsTupThenGetReturnValue!266 lt!427612 (_1!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))) (_2!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))))

(assert (=> d!114995 (= lt!427612 (insertStrictlySorted!322 (toList!6187 (ite c!99001 call!41304 (ite c!99000 call!41301 call!41306))) (_1!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))) (_2!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))))))

(assert (=> d!114995 (= (+!2824 (ite c!99001 call!41304 (ite c!99000 call!41301 call!41306)) (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))) lt!427613)))

(declare-fun b!949461 () Bool)

(declare-fun res!636818 () Bool)

(assert (=> b!949461 (=> (not res!636818) (not e!534565))))

(assert (=> b!949461 (= res!636818 (= (getValueByKey!497 (toList!6187 lt!427613) (_1!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141))))) (Some!502 (_2!6826 (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))))

(declare-fun b!949462 () Bool)

(assert (=> b!949462 (= e!534565 (contains!5229 (toList!6187 lt!427613) (ite (or c!99001 c!99000) (tuple2!13633 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5600 thiss!1141)) (tuple2!13633 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5600 thiss!1141)))))))

(assert (= (and d!114995 res!636819) b!949461))

(assert (= (and b!949461 res!636818) b!949462))

(declare-fun m!882169 () Bool)

(assert (=> d!114995 m!882169))

(declare-fun m!882171 () Bool)

(assert (=> d!114995 m!882171))

(declare-fun m!882173 () Bool)

(assert (=> d!114995 m!882173))

(declare-fun m!882175 () Bool)

(assert (=> d!114995 m!882175))

(declare-fun m!882177 () Bool)

(assert (=> b!949461 m!882177))

(declare-fun m!882179 () Bool)

(assert (=> b!949462 m!882179))

(assert (=> bm!41302 d!114995))

(assert (=> b!949331 d!114973))

(declare-fun d!114997 () Bool)

(declare-fun get!14543 (Option!503) V!32601)

(assert (=> d!114997 (= (apply!910 lt!427544 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14543 (getValueByKey!497 (toList!6187 lt!427544) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26682 () Bool)

(assert (= bs!26682 d!114997))

(assert (=> bs!26682 m!882125))

(assert (=> bs!26682 m!882125))

(declare-fun m!882181 () Bool)

(assert (=> bs!26682 m!882181))

(assert (=> b!949322 d!114997))

(declare-fun bm!41313 () Bool)

(declare-fun call!41316 () ListLongMap!12343)

(assert (=> bm!41313 (= call!41316 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5764 thiss!1141)))))

(declare-fun b!949487 () Bool)

(assert (=> b!949487 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> b!949487 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28120 (_values!5787 thiss!1141))))))

(declare-fun e!534583 () Bool)

(declare-fun lt!427633 () ListLongMap!12343)

(assert (=> b!949487 (= e!534583 (= (apply!910 lt!427633 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)) (get!14542 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!949488 () Bool)

(declare-fun e!534585 () ListLongMap!12343)

(declare-fun e!534582 () ListLongMap!12343)

(assert (=> b!949488 (= e!534585 e!534582)))

(declare-fun c!99047 () Bool)

(assert (=> b!949488 (= c!99047 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun b!949489 () Bool)

(declare-fun e!534581 () Bool)

(declare-fun e!534586 () Bool)

(assert (=> b!949489 (= e!534581 e!534586)))

(declare-fun c!99045 () Bool)

(declare-fun e!534580 () Bool)

(assert (=> b!949489 (= c!99045 e!534580)))

(declare-fun res!636830 () Bool)

(assert (=> b!949489 (=> (not res!636830) (not e!534580))))

(assert (=> b!949489 (= res!636830 (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun d!114999 () Bool)

(assert (=> d!114999 e!534581))

(declare-fun res!636829 () Bool)

(assert (=> d!114999 (=> (not res!636829) (not e!534581))))

(assert (=> d!114999 (= res!636829 (not (contains!5226 lt!427633 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!114999 (= lt!427633 e!534585)))

(declare-fun c!99044 () Bool)

(assert (=> d!114999 (= c!99044 (bvsge #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> d!114999 (validMask!0 (mask!27537 thiss!1141))))

(assert (=> d!114999 (= (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)) lt!427633)))

(declare-fun b!949490 () Bool)

(assert (=> b!949490 (= e!534586 e!534583)))

(assert (=> b!949490 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun res!636828 () Bool)

(assert (=> b!949490 (= res!636828 (contains!5226 lt!427633 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949490 (=> (not res!636828) (not e!534583))))

(declare-fun b!949491 () Bool)

(declare-fun lt!427630 () Unit!31964)

(declare-fun lt!427631 () Unit!31964)

(assert (=> b!949491 (= lt!427630 lt!427631)))

(declare-fun lt!427635 () (_ BitVec 64))

(declare-fun lt!427634 () V!32601)

(declare-fun lt!427636 () ListLongMap!12343)

(declare-fun lt!427632 () (_ BitVec 64))

(assert (=> b!949491 (not (contains!5226 (+!2824 lt!427636 (tuple2!13633 lt!427635 lt!427634)) lt!427632))))

(declare-fun addStillNotContains!228 (ListLongMap!12343 (_ BitVec 64) V!32601 (_ BitVec 64)) Unit!31964)

(assert (=> b!949491 (= lt!427631 (addStillNotContains!228 lt!427636 lt!427635 lt!427634 lt!427632))))

(assert (=> b!949491 (= lt!427632 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!949491 (= lt!427634 (get!14542 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!949491 (= lt!427635 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!949491 (= lt!427636 call!41316)))

(assert (=> b!949491 (= e!534582 (+!2824 call!41316 (tuple2!13633 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000) (get!14542 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!949492 () Bool)

(declare-fun e!534584 () Bool)

(assert (=> b!949492 (= e!534586 e!534584)))

(declare-fun c!99046 () Bool)

(assert (=> b!949492 (= c!99046 (bvslt #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun b!949493 () Bool)

(declare-fun res!636831 () Bool)

(assert (=> b!949493 (=> (not res!636831) (not e!534581))))

(assert (=> b!949493 (= res!636831 (not (contains!5226 lt!427633 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!949494 () Bool)

(declare-fun isEmpty!716 (ListLongMap!12343) Bool)

(assert (=> b!949494 (= e!534584 (isEmpty!716 lt!427633))))

(declare-fun b!949495 () Bool)

(assert (=> b!949495 (= e!534585 (ListLongMap!12344 Nil!19454))))

(declare-fun b!949496 () Bool)

(assert (=> b!949496 (= e!534580 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(assert (=> b!949496 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!949497 () Bool)

(assert (=> b!949497 (= e!534584 (= lt!427633 (getCurrentListMapNoExtraKeys!3330 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5764 thiss!1141))))))

(declare-fun b!949498 () Bool)

(assert (=> b!949498 (= e!534582 call!41316)))

(assert (= (and d!114999 c!99044) b!949495))

(assert (= (and d!114999 (not c!99044)) b!949488))

(assert (= (and b!949488 c!99047) b!949491))

(assert (= (and b!949488 (not c!99047)) b!949498))

(assert (= (or b!949491 b!949498) bm!41313))

(assert (= (and d!114999 res!636829) b!949493))

(assert (= (and b!949493 res!636831) b!949489))

(assert (= (and b!949489 res!636830) b!949496))

(assert (= (and b!949489 c!99045) b!949490))

(assert (= (and b!949489 (not c!99045)) b!949492))

(assert (= (and b!949490 res!636828) b!949487))

(assert (= (and b!949492 c!99046) b!949497))

(assert (= (and b!949492 (not c!99046)) b!949494))

(declare-fun b_lambda!14381 () Bool)

(assert (=> (not b_lambda!14381) (not b!949487)))

(assert (=> b!949487 t!27801))

(declare-fun b_and!29689 () Bool)

(assert (= b_and!29687 (and (=> t!27801 result!12285) b_and!29689)))

(declare-fun b_lambda!14383 () Bool)

(assert (=> (not b_lambda!14383) (not b!949491)))

(assert (=> b!949491 t!27801))

(declare-fun b_and!29691 () Bool)

(assert (= b_and!29689 (and (=> t!27801 result!12285) b_and!29691)))

(declare-fun m!882183 () Bool)

(assert (=> b!949497 m!882183))

(declare-fun m!882185 () Bool)

(assert (=> d!114999 m!882185))

(assert (=> d!114999 m!881995))

(assert (=> b!949496 m!882041))

(assert (=> b!949496 m!882041))

(assert (=> b!949496 m!882053))

(assert (=> b!949490 m!882041))

(assert (=> b!949490 m!882041))

(declare-fun m!882187 () Bool)

(assert (=> b!949490 m!882187))

(assert (=> bm!41313 m!882183))

(declare-fun m!882189 () Bool)

(assert (=> b!949493 m!882189))

(assert (=> b!949491 m!882035))

(declare-fun m!882191 () Bool)

(assert (=> b!949491 m!882191))

(declare-fun m!882193 () Bool)

(assert (=> b!949491 m!882193))

(assert (=> b!949491 m!882037))

(assert (=> b!949491 m!882035))

(assert (=> b!949491 m!882039))

(declare-fun m!882195 () Bool)

(assert (=> b!949491 m!882195))

(assert (=> b!949491 m!882037))

(declare-fun m!882197 () Bool)

(assert (=> b!949491 m!882197))

(assert (=> b!949491 m!882191))

(assert (=> b!949491 m!882041))

(declare-fun m!882199 () Bool)

(assert (=> b!949494 m!882199))

(assert (=> b!949488 m!882041))

(assert (=> b!949488 m!882041))

(assert (=> b!949488 m!882053))

(assert (=> b!949487 m!882035))

(assert (=> b!949487 m!882037))

(assert (=> b!949487 m!882035))

(assert (=> b!949487 m!882039))

(assert (=> b!949487 m!882041))

(assert (=> b!949487 m!882037))

(assert (=> b!949487 m!882041))

(declare-fun m!882201 () Bool)

(assert (=> b!949487 m!882201))

(assert (=> bm!41299 d!114999))

(declare-fun d!115001 () Bool)

(declare-fun res!636836 () Bool)

(declare-fun e!534591 () Bool)

(assert (=> d!115001 (=> res!636836 e!534591)))

(assert (=> d!115001 (= res!636836 (and ((_ is Cons!19453) (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))) (= (_1!6826 (h!20612 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))))) key!756)))))

(assert (=> d!115001 (= (containsKey!462 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756) e!534591)))

(declare-fun b!949503 () Bool)

(declare-fun e!534592 () Bool)

(assert (=> b!949503 (= e!534591 e!534592)))

(declare-fun res!636837 () Bool)

(assert (=> b!949503 (=> (not res!636837) (not e!534592))))

(assert (=> b!949503 (= res!636837 (and (or (not ((_ is Cons!19453) (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))))) (bvsle (_1!6826 (h!20612 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))))) key!756)) ((_ is Cons!19453) (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))) (bvslt (_1!6826 (h!20612 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))))) key!756)))))

(declare-fun b!949504 () Bool)

(assert (=> b!949504 (= e!534592 (containsKey!462 (t!27798 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))) key!756))))

(assert (= (and d!115001 (not res!636836)) b!949503))

(assert (= (and b!949503 res!636837) b!949504))

(declare-fun m!882203 () Bool)

(assert (=> b!949504 m!882203))

(assert (=> d!114959 d!115001))

(declare-fun d!115003 () Bool)

(assert (=> d!115003 (= (apply!910 lt!427548 lt!427552) (get!14543 (getValueByKey!497 (toList!6187 lt!427548) lt!427552)))))

(declare-fun bs!26683 () Bool)

(assert (= bs!26683 d!115003))

(declare-fun m!882205 () Bool)

(assert (=> bs!26683 m!882205))

(assert (=> bs!26683 m!882205))

(declare-fun m!882207 () Bool)

(assert (=> bs!26683 m!882207))

(assert (=> b!949337 d!115003))

(declare-fun d!115005 () Bool)

(assert (=> d!115005 (= (apply!910 (+!2824 lt!427541 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))) lt!427554) (get!14543 (getValueByKey!497 (toList!6187 (+!2824 lt!427541 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))) lt!427554)))))

(declare-fun bs!26684 () Bool)

(assert (= bs!26684 d!115005))

(declare-fun m!882209 () Bool)

(assert (=> bs!26684 m!882209))

(assert (=> bs!26684 m!882209))

(declare-fun m!882211 () Bool)

(assert (=> bs!26684 m!882211))

(assert (=> b!949337 d!115005))

(declare-fun d!115007 () Bool)

(declare-fun e!534593 () Bool)

(assert (=> d!115007 e!534593))

(declare-fun res!636839 () Bool)

(assert (=> d!115007 (=> (not res!636839) (not e!534593))))

(declare-fun lt!427638 () ListLongMap!12343)

(assert (=> d!115007 (= res!636839 (contains!5226 lt!427638 (_1!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))))))

(declare-fun lt!427637 () List!19457)

(assert (=> d!115007 (= lt!427638 (ListLongMap!12344 lt!427637))))

(declare-fun lt!427639 () Unit!31964)

(declare-fun lt!427640 () Unit!31964)

(assert (=> d!115007 (= lt!427639 lt!427640)))

(assert (=> d!115007 (= (getValueByKey!497 lt!427637 (_1!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))))))

(assert (=> d!115007 (= lt!427640 (lemmaContainsTupThenGetReturnValue!266 lt!427637 (_1!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))))))

(assert (=> d!115007 (= lt!427637 (insertStrictlySorted!322 (toList!6187 lt!427533) (_1!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))))))

(assert (=> d!115007 (= (+!2824 lt!427533 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))) lt!427638)))

(declare-fun b!949505 () Bool)

(declare-fun res!636838 () Bool)

(assert (=> b!949505 (=> (not res!636838) (not e!534593))))

(assert (=> b!949505 (= res!636838 (= (getValueByKey!497 (toList!6187 lt!427638) (_1!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))))))))

(declare-fun b!949506 () Bool)

(assert (=> b!949506 (= e!534593 (contains!5229 (toList!6187 lt!427638) (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))))))

(assert (= (and d!115007 res!636839) b!949505))

(assert (= (and b!949505 res!636838) b!949506))

(declare-fun m!882213 () Bool)

(assert (=> d!115007 m!882213))

(declare-fun m!882215 () Bool)

(assert (=> d!115007 m!882215))

(declare-fun m!882217 () Bool)

(assert (=> d!115007 m!882217))

(declare-fun m!882219 () Bool)

(assert (=> d!115007 m!882219))

(declare-fun m!882221 () Bool)

(assert (=> b!949505 m!882221))

(declare-fun m!882223 () Bool)

(assert (=> b!949506 m!882223))

(assert (=> b!949337 d!115007))

(declare-fun d!115009 () Bool)

(assert (=> d!115009 (= (apply!910 (+!2824 lt!427541 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))) lt!427554) (apply!910 lt!427541 lt!427554))))

(declare-fun lt!427643 () Unit!31964)

(declare-fun choose!1589 (ListLongMap!12343 (_ BitVec 64) V!32601 (_ BitVec 64)) Unit!31964)

(assert (=> d!115009 (= lt!427643 (choose!1589 lt!427541 lt!427540 (minValue!5600 thiss!1141) lt!427554))))

(declare-fun e!534596 () Bool)

(assert (=> d!115009 e!534596))

(declare-fun res!636842 () Bool)

(assert (=> d!115009 (=> (not res!636842) (not e!534596))))

(assert (=> d!115009 (= res!636842 (contains!5226 lt!427541 lt!427554))))

(assert (=> d!115009 (= (addApplyDifferent!454 lt!427541 lt!427540 (minValue!5600 thiss!1141) lt!427554) lt!427643)))

(declare-fun b!949510 () Bool)

(assert (=> b!949510 (= e!534596 (not (= lt!427554 lt!427540)))))

(assert (= (and d!115009 res!636842) b!949510))

(declare-fun m!882225 () Bool)

(assert (=> d!115009 m!882225))

(assert (=> d!115009 m!882061))

(assert (=> d!115009 m!882063))

(assert (=> d!115009 m!882079))

(declare-fun m!882227 () Bool)

(assert (=> d!115009 m!882227))

(assert (=> d!115009 m!882061))

(assert (=> b!949337 d!115009))

(declare-fun d!115011 () Bool)

(declare-fun e!534597 () Bool)

(assert (=> d!115011 e!534597))

(declare-fun res!636844 () Bool)

(assert (=> d!115011 (=> (not res!636844) (not e!534597))))

(declare-fun lt!427645 () ListLongMap!12343)

(assert (=> d!115011 (= res!636844 (contains!5226 lt!427645 (_1!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))))))

(declare-fun lt!427644 () List!19457)

(assert (=> d!115011 (= lt!427645 (ListLongMap!12344 lt!427644))))

(declare-fun lt!427646 () Unit!31964)

(declare-fun lt!427647 () Unit!31964)

(assert (=> d!115011 (= lt!427646 lt!427647)))

(assert (=> d!115011 (= (getValueByKey!497 lt!427644 (_1!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))))))

(assert (=> d!115011 (= lt!427647 (lemmaContainsTupThenGetReturnValue!266 lt!427644 (_1!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))))))

(assert (=> d!115011 (= lt!427644 (insertStrictlySorted!322 (toList!6187 lt!427548) (_1!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))))))

(assert (=> d!115011 (= (+!2824 lt!427548 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))) lt!427645)))

(declare-fun b!949511 () Bool)

(declare-fun res!636843 () Bool)

(assert (=> b!949511 (=> (not res!636843) (not e!534597))))

(assert (=> b!949511 (= res!636843 (= (getValueByKey!497 (toList!6187 lt!427645) (_1!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))))))))

(declare-fun b!949512 () Bool)

(assert (=> b!949512 (= e!534597 (contains!5229 (toList!6187 lt!427645) (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))))))

(assert (= (and d!115011 res!636844) b!949511))

(assert (= (and b!949511 res!636843) b!949512))

(declare-fun m!882229 () Bool)

(assert (=> d!115011 m!882229))

(declare-fun m!882231 () Bool)

(assert (=> d!115011 m!882231))

(declare-fun m!882233 () Bool)

(assert (=> d!115011 m!882233))

(declare-fun m!882235 () Bool)

(assert (=> d!115011 m!882235))

(declare-fun m!882237 () Bool)

(assert (=> b!949511 m!882237))

(declare-fun m!882239 () Bool)

(assert (=> b!949512 m!882239))

(assert (=> b!949337 d!115011))

(declare-fun d!115013 () Bool)

(assert (=> d!115013 (= (apply!910 (+!2824 lt!427533 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))) lt!427536) (apply!910 lt!427533 lt!427536))))

(declare-fun lt!427648 () Unit!31964)

(assert (=> d!115013 (= lt!427648 (choose!1589 lt!427533 lt!427546 (minValue!5600 thiss!1141) lt!427536))))

(declare-fun e!534598 () Bool)

(assert (=> d!115013 e!534598))

(declare-fun res!636845 () Bool)

(assert (=> d!115013 (=> (not res!636845) (not e!534598))))

(assert (=> d!115013 (= res!636845 (contains!5226 lt!427533 lt!427536))))

(assert (=> d!115013 (= (addApplyDifferent!454 lt!427533 lt!427546 (minValue!5600 thiss!1141) lt!427536) lt!427648)))

(declare-fun b!949513 () Bool)

(assert (=> b!949513 (= e!534598 (not (= lt!427536 lt!427546)))))

(assert (= (and d!115013 res!636845) b!949513))

(declare-fun m!882241 () Bool)

(assert (=> d!115013 m!882241))

(assert (=> d!115013 m!882069))

(assert (=> d!115013 m!882071))

(assert (=> d!115013 m!882055))

(declare-fun m!882243 () Bool)

(assert (=> d!115013 m!882243))

(assert (=> d!115013 m!882069))

(assert (=> b!949337 d!115013))

(declare-fun d!115015 () Bool)

(assert (=> d!115015 (contains!5226 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))) lt!427535)))

(declare-fun lt!427651 () Unit!31964)

(declare-fun choose!1590 (ListLongMap!12343 (_ BitVec 64) V!32601 (_ BitVec 64)) Unit!31964)

(assert (=> d!115015 (= lt!427651 (choose!1590 lt!427553 lt!427551 (zeroValue!5600 thiss!1141) lt!427535))))

(assert (=> d!115015 (contains!5226 lt!427553 lt!427535)))

(assert (=> d!115015 (= (addStillContains!580 lt!427553 lt!427551 (zeroValue!5600 thiss!1141) lt!427535) lt!427651)))

(declare-fun bs!26685 () Bool)

(assert (= bs!26685 d!115015))

(assert (=> bs!26685 m!882065))

(assert (=> bs!26685 m!882065))

(assert (=> bs!26685 m!882067))

(declare-fun m!882245 () Bool)

(assert (=> bs!26685 m!882245))

(declare-fun m!882247 () Bool)

(assert (=> bs!26685 m!882247))

(assert (=> b!949337 d!115015))

(declare-fun d!115017 () Bool)

(declare-fun e!534599 () Bool)

(assert (=> d!115017 e!534599))

(declare-fun res!636847 () Bool)

(assert (=> d!115017 (=> (not res!636847) (not e!534599))))

(declare-fun lt!427653 () ListLongMap!12343)

(assert (=> d!115017 (= res!636847 (contains!5226 lt!427653 (_1!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))))))

(declare-fun lt!427652 () List!19457)

(assert (=> d!115017 (= lt!427653 (ListLongMap!12344 lt!427652))))

(declare-fun lt!427654 () Unit!31964)

(declare-fun lt!427655 () Unit!31964)

(assert (=> d!115017 (= lt!427654 lt!427655)))

(assert (=> d!115017 (= (getValueByKey!497 lt!427652 (_1!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))))))

(assert (=> d!115017 (= lt!427655 (lemmaContainsTupThenGetReturnValue!266 lt!427652 (_1!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))))))

(assert (=> d!115017 (= lt!427652 (insertStrictlySorted!322 (toList!6187 lt!427541) (_1!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))))))

(assert (=> d!115017 (= (+!2824 lt!427541 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))) lt!427653)))

(declare-fun b!949515 () Bool)

(declare-fun res!636846 () Bool)

(assert (=> b!949515 (=> (not res!636846) (not e!534599))))

(assert (=> b!949515 (= res!636846 (= (getValueByKey!497 (toList!6187 lt!427653) (_1!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))))))))

(declare-fun b!949516 () Bool)

(assert (=> b!949516 (= e!534599 (contains!5229 (toList!6187 lt!427653) (tuple2!13633 lt!427540 (minValue!5600 thiss!1141))))))

(assert (= (and d!115017 res!636847) b!949515))

(assert (= (and b!949515 res!636846) b!949516))

(declare-fun m!882249 () Bool)

(assert (=> d!115017 m!882249))

(declare-fun m!882251 () Bool)

(assert (=> d!115017 m!882251))

(declare-fun m!882253 () Bool)

(assert (=> d!115017 m!882253))

(declare-fun m!882255 () Bool)

(assert (=> d!115017 m!882255))

(declare-fun m!882257 () Bool)

(assert (=> b!949515 m!882257))

(declare-fun m!882259 () Bool)

(assert (=> b!949516 m!882259))

(assert (=> b!949337 d!115017))

(declare-fun d!115019 () Bool)

(declare-fun e!534600 () Bool)

(assert (=> d!115019 e!534600))

(declare-fun res!636849 () Bool)

(assert (=> d!115019 (=> (not res!636849) (not e!534600))))

(declare-fun lt!427657 () ListLongMap!12343)

(assert (=> d!115019 (= res!636849 (contains!5226 lt!427657 (_1!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))))))

(declare-fun lt!427656 () List!19457)

(assert (=> d!115019 (= lt!427657 (ListLongMap!12344 lt!427656))))

(declare-fun lt!427658 () Unit!31964)

(declare-fun lt!427659 () Unit!31964)

(assert (=> d!115019 (= lt!427658 lt!427659)))

(assert (=> d!115019 (= (getValueByKey!497 lt!427656 (_1!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))))))

(assert (=> d!115019 (= lt!427659 (lemmaContainsTupThenGetReturnValue!266 lt!427656 (_1!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))))))

(assert (=> d!115019 (= lt!427656 (insertStrictlySorted!322 (toList!6187 lt!427553) (_1!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))) (_2!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))))))

(assert (=> d!115019 (= (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))) lt!427657)))

(declare-fun b!949517 () Bool)

(declare-fun res!636848 () Bool)

(assert (=> b!949517 (=> (not res!636848) (not e!534600))))

(assert (=> b!949517 (= res!636848 (= (getValueByKey!497 (toList!6187 lt!427657) (_1!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))) (Some!502 (_2!6826 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))))))))

(declare-fun b!949518 () Bool)

(assert (=> b!949518 (= e!534600 (contains!5229 (toList!6187 lt!427657) (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))))))

(assert (= (and d!115019 res!636849) b!949517))

(assert (= (and b!949517 res!636848) b!949518))

(declare-fun m!882261 () Bool)

(assert (=> d!115019 m!882261))

(declare-fun m!882263 () Bool)

(assert (=> d!115019 m!882263))

(declare-fun m!882265 () Bool)

(assert (=> d!115019 m!882265))

(declare-fun m!882267 () Bool)

(assert (=> d!115019 m!882267))

(declare-fun m!882269 () Bool)

(assert (=> b!949517 m!882269))

(declare-fun m!882271 () Bool)

(assert (=> b!949518 m!882271))

(assert (=> b!949337 d!115019))

(declare-fun d!115021 () Bool)

(declare-fun e!534601 () Bool)

(assert (=> d!115021 e!534601))

(declare-fun res!636850 () Bool)

(assert (=> d!115021 (=> res!636850 e!534601)))

(declare-fun lt!427661 () Bool)

(assert (=> d!115021 (= res!636850 (not lt!427661))))

(declare-fun lt!427663 () Bool)

(assert (=> d!115021 (= lt!427661 lt!427663)))

(declare-fun lt!427660 () Unit!31964)

(declare-fun e!534602 () Unit!31964)

(assert (=> d!115021 (= lt!427660 e!534602)))

(declare-fun c!99048 () Bool)

(assert (=> d!115021 (= c!99048 lt!427663)))

(assert (=> d!115021 (= lt!427663 (containsKey!462 (toList!6187 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))) lt!427535))))

(assert (=> d!115021 (= (contains!5226 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141))) lt!427535) lt!427661)))

(declare-fun b!949519 () Bool)

(declare-fun lt!427662 () Unit!31964)

(assert (=> b!949519 (= e!534602 lt!427662)))

(assert (=> b!949519 (= lt!427662 (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!6187 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))) lt!427535))))

(assert (=> b!949519 (isDefined!367 (getValueByKey!497 (toList!6187 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))) lt!427535))))

(declare-fun b!949520 () Bool)

(declare-fun Unit!31971 () Unit!31964)

(assert (=> b!949520 (= e!534602 Unit!31971)))

(declare-fun b!949521 () Bool)

(assert (=> b!949521 (= e!534601 (isDefined!367 (getValueByKey!497 (toList!6187 (+!2824 lt!427553 (tuple2!13633 lt!427551 (zeroValue!5600 thiss!1141)))) lt!427535)))))

(assert (= (and d!115021 c!99048) b!949519))

(assert (= (and d!115021 (not c!99048)) b!949520))

(assert (= (and d!115021 (not res!636850)) b!949521))

(declare-fun m!882273 () Bool)

(assert (=> d!115021 m!882273))

(declare-fun m!882275 () Bool)

(assert (=> b!949519 m!882275))

(declare-fun m!882277 () Bool)

(assert (=> b!949519 m!882277))

(assert (=> b!949519 m!882277))

(declare-fun m!882279 () Bool)

(assert (=> b!949519 m!882279))

(assert (=> b!949521 m!882277))

(assert (=> b!949521 m!882277))

(assert (=> b!949521 m!882279))

(assert (=> b!949337 d!115021))

(declare-fun d!115023 () Bool)

(assert (=> d!115023 (= (apply!910 (+!2824 lt!427533 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141))) lt!427536) (get!14543 (getValueByKey!497 (toList!6187 (+!2824 lt!427533 (tuple2!13633 lt!427546 (minValue!5600 thiss!1141)))) lt!427536)))))

(declare-fun bs!26686 () Bool)

(assert (= bs!26686 d!115023))

(declare-fun m!882281 () Bool)

(assert (=> bs!26686 m!882281))

(assert (=> bs!26686 m!882281))

(declare-fun m!882283 () Bool)

(assert (=> bs!26686 m!882283))

(assert (=> b!949337 d!115023))

(declare-fun d!115025 () Bool)

(assert (=> d!115025 (= (apply!910 (+!2824 lt!427548 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))) lt!427552) (get!14543 (getValueByKey!497 (toList!6187 (+!2824 lt!427548 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141)))) lt!427552)))))

(declare-fun bs!26687 () Bool)

(assert (= bs!26687 d!115025))

(declare-fun m!882285 () Bool)

(assert (=> bs!26687 m!882285))

(assert (=> bs!26687 m!882285))

(declare-fun m!882287 () Bool)

(assert (=> bs!26687 m!882287))

(assert (=> b!949337 d!115025))

(declare-fun d!115027 () Bool)

(assert (=> d!115027 (= (apply!910 lt!427541 lt!427554) (get!14543 (getValueByKey!497 (toList!6187 lt!427541) lt!427554)))))

(declare-fun bs!26688 () Bool)

(assert (= bs!26688 d!115027))

(declare-fun m!882289 () Bool)

(assert (=> bs!26688 m!882289))

(assert (=> bs!26688 m!882289))

(declare-fun m!882291 () Bool)

(assert (=> bs!26688 m!882291))

(assert (=> b!949337 d!115027))

(declare-fun d!115029 () Bool)

(assert (=> d!115029 (= (apply!910 (+!2824 lt!427548 (tuple2!13633 lt!427539 (zeroValue!5600 thiss!1141))) lt!427552) (apply!910 lt!427548 lt!427552))))

(declare-fun lt!427664 () Unit!31964)

(assert (=> d!115029 (= lt!427664 (choose!1589 lt!427548 lt!427539 (zeroValue!5600 thiss!1141) lt!427552))))

(declare-fun e!534603 () Bool)

(assert (=> d!115029 e!534603))

(declare-fun res!636851 () Bool)

(assert (=> d!115029 (=> (not res!636851) (not e!534603))))

(assert (=> d!115029 (= res!636851 (contains!5226 lt!427548 lt!427552))))

(assert (=> d!115029 (= (addApplyDifferent!454 lt!427548 lt!427539 (zeroValue!5600 thiss!1141) lt!427552) lt!427664)))

(declare-fun b!949522 () Bool)

(assert (=> b!949522 (= e!534603 (not (= lt!427552 lt!427539)))))

(assert (= (and d!115029 res!636851) b!949522))

(declare-fun m!882293 () Bool)

(assert (=> d!115029 m!882293))

(assert (=> d!115029 m!882057))

(assert (=> d!115029 m!882059))

(assert (=> d!115029 m!882077))

(declare-fun m!882295 () Bool)

(assert (=> d!115029 m!882295))

(assert (=> d!115029 m!882057))

(assert (=> b!949337 d!115029))

(assert (=> b!949337 d!114999))

(declare-fun d!115031 () Bool)

(assert (=> d!115031 (= (apply!910 lt!427533 lt!427536) (get!14543 (getValueByKey!497 (toList!6187 lt!427533) lt!427536)))))

(declare-fun bs!26689 () Bool)

(assert (= bs!26689 d!115031))

(declare-fun m!882297 () Bool)

(assert (=> bs!26689 m!882297))

(assert (=> bs!26689 m!882297))

(declare-fun m!882299 () Bool)

(assert (=> bs!26689 m!882299))

(assert (=> b!949337 d!115031))

(assert (=> d!114961 d!114971))

(declare-fun b!949535 () Bool)

(declare-fun e!534611 () SeekEntryResult!9123)

(assert (=> b!949535 (= e!534611 (seekKeyOrZeroReturnVacant!0 (bvadd (x!81664 lt!427564) #b00000000000000000000000000000001) (nextIndex!0 (index!38864 lt!427564) (x!81664 lt!427564) (mask!27537 thiss!1141)) (index!38864 lt!427564) key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)))))

(declare-fun b!949536 () Bool)

(declare-fun c!99057 () Bool)

(declare-fun lt!427670 () (_ BitVec 64))

(assert (=> b!949536 (= c!99057 (= lt!427670 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!534610 () SeekEntryResult!9123)

(assert (=> b!949536 (= e!534610 e!534611)))

(declare-fun b!949537 () Bool)

(declare-fun e!534612 () SeekEntryResult!9123)

(assert (=> b!949537 (= e!534612 Undefined!9123)))

(declare-fun b!949538 () Bool)

(assert (=> b!949538 (= e!534612 e!534610)))

(declare-fun c!99056 () Bool)

(assert (=> b!949538 (= c!99056 (= lt!427670 key!756))))

(declare-fun d!115033 () Bool)

(declare-fun lt!427669 () SeekEntryResult!9123)

(assert (=> d!115033 (and (or ((_ is Undefined!9123) lt!427669) (not ((_ is Found!9123) lt!427669)) (and (bvsge (index!38863 lt!427669) #b00000000000000000000000000000000) (bvslt (index!38863 lt!427669) (size!28121 (_keys!10688 thiss!1141))))) (or ((_ is Undefined!9123) lt!427669) ((_ is Found!9123) lt!427669) (not ((_ is MissingVacant!9123) lt!427669)) (not (= (index!38865 lt!427669) (index!38864 lt!427564))) (and (bvsge (index!38865 lt!427669) #b00000000000000000000000000000000) (bvslt (index!38865 lt!427669) (size!28121 (_keys!10688 thiss!1141))))) (or ((_ is Undefined!9123) lt!427669) (ite ((_ is Found!9123) lt!427669) (= (select (arr!27644 (_keys!10688 thiss!1141)) (index!38863 lt!427669)) key!756) (and ((_ is MissingVacant!9123) lt!427669) (= (index!38865 lt!427669) (index!38864 lt!427564)) (= (select (arr!27644 (_keys!10688 thiss!1141)) (index!38865 lt!427669)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!115033 (= lt!427669 e!534612)))

(declare-fun c!99055 () Bool)

(assert (=> d!115033 (= c!99055 (bvsge (x!81664 lt!427564) #b01111111111111111111111111111110))))

(assert (=> d!115033 (= lt!427670 (select (arr!27644 (_keys!10688 thiss!1141)) (index!38864 lt!427564)))))

(assert (=> d!115033 (validMask!0 (mask!27537 thiss!1141))))

(assert (=> d!115033 (= (seekKeyOrZeroReturnVacant!0 (x!81664 lt!427564) (index!38864 lt!427564) (index!38864 lt!427564) key!756 (_keys!10688 thiss!1141) (mask!27537 thiss!1141)) lt!427669)))

(declare-fun b!949539 () Bool)

(assert (=> b!949539 (= e!534610 (Found!9123 (index!38864 lt!427564)))))

(declare-fun b!949540 () Bool)

(assert (=> b!949540 (= e!534611 (MissingVacant!9123 (index!38864 lt!427564)))))

(assert (= (and d!115033 c!99055) b!949537))

(assert (= (and d!115033 (not c!99055)) b!949538))

(assert (= (and b!949538 c!99056) b!949539))

(assert (= (and b!949538 (not c!99056)) b!949536))

(assert (= (and b!949536 c!99057) b!949540))

(assert (= (and b!949536 (not c!99057)) b!949535))

(declare-fun m!882301 () Bool)

(assert (=> b!949535 m!882301))

(assert (=> b!949535 m!882301))

(declare-fun m!882303 () Bool)

(assert (=> b!949535 m!882303))

(declare-fun m!882305 () Bool)

(assert (=> d!115033 m!882305))

(declare-fun m!882307 () Bool)

(assert (=> d!115033 m!882307))

(assert (=> d!115033 m!882103))

(assert (=> d!115033 m!881995))

(assert (=> b!949369 d!115033))

(declare-fun d!115035 () Bool)

(declare-fun lt!427673 () (_ BitVec 32))

(assert (=> d!115035 (and (bvsge lt!427673 #b00000000000000000000000000000000) (bvsle lt!427673 (bvsub (size!28121 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!534617 () (_ BitVec 32))

(assert (=> d!115035 (= lt!427673 e!534617)))

(declare-fun c!99062 () Bool)

(assert (=> d!115035 (= c!99062 (bvsge #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> d!115035 (and (bvsle #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!28121 (_keys!10688 thiss!1141)) (size!28121 (_keys!10688 thiss!1141))))))

(assert (=> d!115035 (= (arrayCountValidKeys!0 (_keys!10688 thiss!1141) #b00000000000000000000000000000000 (size!28121 (_keys!10688 thiss!1141))) lt!427673)))

(declare-fun b!949549 () Bool)

(declare-fun e!534618 () (_ BitVec 32))

(assert (=> b!949549 (= e!534617 e!534618)))

(declare-fun c!99063 () Bool)

(assert (=> b!949549 (= c!99063 (validKeyInArray!0 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun bm!41316 () Bool)

(declare-fun call!41319 () (_ BitVec 32))

(assert (=> bm!41316 (= call!41319 (arrayCountValidKeys!0 (_keys!10688 thiss!1141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28121 (_keys!10688 thiss!1141))))))

(declare-fun b!949550 () Bool)

(assert (=> b!949550 (= e!534617 #b00000000000000000000000000000000)))

(declare-fun b!949551 () Bool)

(assert (=> b!949551 (= e!534618 (bvadd #b00000000000000000000000000000001 call!41319))))

(declare-fun b!949552 () Bool)

(assert (=> b!949552 (= e!534618 call!41319)))

(assert (= (and d!115035 c!99062) b!949550))

(assert (= (and d!115035 (not c!99062)) b!949549))

(assert (= (and b!949549 c!99063) b!949551))

(assert (= (and b!949549 (not c!99063)) b!949552))

(assert (= (or b!949551 b!949552) bm!41316))

(assert (=> b!949549 m!882041))

(assert (=> b!949549 m!882041))

(assert (=> b!949549 m!882053))

(declare-fun m!882309 () Bool)

(assert (=> bm!41316 m!882309))

(assert (=> b!949351 d!115035))

(declare-fun d!115037 () Bool)

(declare-fun res!636863 () Bool)

(declare-fun e!534621 () Bool)

(assert (=> d!115037 (=> (not res!636863) (not e!534621))))

(assert (=> d!115037 (= res!636863 (validMask!0 (mask!27537 thiss!1141)))))

(assert (=> d!115037 (= (simpleValid!370 thiss!1141) e!534621)))

(declare-fun b!949563 () Bool)

(declare-fun res!636862 () Bool)

(assert (=> b!949563 (=> (not res!636862) (not e!534621))))

(declare-fun size!28124 (LongMapFixedSize!4914) (_ BitVec 32))

(assert (=> b!949563 (= res!636862 (= (size!28124 thiss!1141) (bvadd (_size!2512 thiss!1141) (bvsdiv (bvadd (extraKeys!5496 thiss!1141) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!949562 () Bool)

(declare-fun res!636861 () Bool)

(assert (=> b!949562 (=> (not res!636861) (not e!534621))))

(assert (=> b!949562 (= res!636861 (bvsge (size!28124 thiss!1141) (_size!2512 thiss!1141)))))

(declare-fun b!949564 () Bool)

(assert (=> b!949564 (= e!534621 (and (bvsge (extraKeys!5496 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5496 thiss!1141) #b00000000000000000000000000000011) (bvsge (_vacant!2512 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!949561 () Bool)

(declare-fun res!636860 () Bool)

(assert (=> b!949561 (=> (not res!636860) (not e!534621))))

(assert (=> b!949561 (= res!636860 (and (= (size!28120 (_values!5787 thiss!1141)) (bvadd (mask!27537 thiss!1141) #b00000000000000000000000000000001)) (= (size!28121 (_keys!10688 thiss!1141)) (size!28120 (_values!5787 thiss!1141))) (bvsge (_size!2512 thiss!1141) #b00000000000000000000000000000000) (bvsle (_size!2512 thiss!1141) (bvadd (mask!27537 thiss!1141) #b00000000000000000000000000000001))))))

(assert (= (and d!115037 res!636863) b!949561))

(assert (= (and b!949561 res!636860) b!949562))

(assert (= (and b!949562 res!636861) b!949563))

(assert (= (and b!949563 res!636862) b!949564))

(assert (=> d!115037 m!881995))

(declare-fun m!882311 () Bool)

(assert (=> b!949563 m!882311))

(assert (=> b!949562 m!882311))

(assert (=> d!114967 d!115037))

(declare-fun d!115039 () Bool)

(assert (=> d!115039 (isDefined!367 (getValueByKey!497 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))

(declare-fun lt!427676 () Unit!31964)

(declare-fun choose!1591 (List!19457 (_ BitVec 64)) Unit!31964)

(assert (=> d!115039 (= lt!427676 (choose!1591 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))

(declare-fun e!534624 () Bool)

(assert (=> d!115039 e!534624))

(declare-fun res!636866 () Bool)

(assert (=> d!115039 (=> (not res!636866) (not e!534624))))

(declare-fun isStrictlySorted!507 (List!19457) Bool)

(assert (=> d!115039 (= res!636866 (isStrictlySorted!507 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141)))))))

(assert (=> d!115039 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!357 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756) lt!427676)))

(declare-fun b!949567 () Bool)

(assert (=> b!949567 (= e!534624 (containsKey!462 (toList!6187 (getCurrentListMap!3372 (_keys!10688 thiss!1141) (_values!5787 thiss!1141) (mask!27537 thiss!1141) (extraKeys!5496 thiss!1141) (zeroValue!5600 thiss!1141) (minValue!5600 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5764 thiss!1141))) key!756))))

(assert (= (and d!115039 res!636866) b!949567))

(assert (=> d!115039 m!882027))

(assert (=> d!115039 m!882027))

(assert (=> d!115039 m!882029))

(declare-fun m!882313 () Bool)

(assert (=> d!115039 m!882313))

(declare-fun m!882315 () Bool)

(assert (=> d!115039 m!882315))

(assert (=> b!949567 m!882023))

(assert (=> b!949277 d!115039))

(assert (=> b!949277 d!114985))

(assert (=> b!949277 d!114987))

(declare-fun d!115041 () Bool)

(assert (=> d!115041 (= (apply!910 lt!427544 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14543 (getValueByKey!497 (toList!6187 lt!427544) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26690 () Bool)

(assert (= bs!26690 d!115041))

(assert (=> bs!26690 m!882165))

(assert (=> bs!26690 m!882165))

(declare-fun m!882317 () Bool)

(assert (=> bs!26690 m!882317))

(assert (=> b!949342 d!115041))

(declare-fun d!115043 () Bool)

(assert (=> d!115043 (= (apply!910 lt!427544 (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000)) (get!14543 (getValueByKey!497 (toList!6187 lt!427544) (select (arr!27644 (_keys!10688 thiss!1141)) #b00000000000000000000000000000000))))))

(declare-fun bs!26691 () Bool)

(assert (= bs!26691 d!115043))

(assert (=> bs!26691 m!882041))

(assert (=> bs!26691 m!882157))

(assert (=> bs!26691 m!882157))

(declare-fun m!882319 () Bool)

(assert (=> bs!26691 m!882319))

(assert (=> b!949335 d!115043))

(declare-fun d!115045 () Bool)

(declare-fun c!99066 () Bool)

(assert (=> d!115045 (= c!99066 ((_ is ValueCellFull!9882) (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000)))))

(declare-fun e!534627 () V!32601)

(assert (=> d!115045 (= (get!14542 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)) e!534627)))

(declare-fun b!949572 () Bool)

(declare-fun get!14544 (ValueCell!9882 V!32601) V!32601)

(assert (=> b!949572 (= e!534627 (get!14544 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!949573 () Bool)

(declare-fun get!14545 (ValueCell!9882 V!32601) V!32601)

(assert (=> b!949573 (= e!534627 (get!14545 (select (arr!27643 (_values!5787 thiss!1141)) #b00000000000000000000000000000000) (dynLambda!1663 (defaultEntry!5764 thiss!1141) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!115045 c!99066) b!949572))

(assert (= (and d!115045 (not c!99066)) b!949573))

(assert (=> b!949572 m!882037))

(assert (=> b!949572 m!882035))

(declare-fun m!882321 () Bool)

(assert (=> b!949572 m!882321))

(assert (=> b!949573 m!882037))

(assert (=> b!949573 m!882035))

(declare-fun m!882323 () Bool)

(assert (=> b!949573 m!882323))

(assert (=> b!949335 d!115045))

(declare-fun mapIsEmpty!32999 () Bool)

(declare-fun mapRes!32999 () Bool)

(assert (=> mapIsEmpty!32999 mapRes!32999))

(declare-fun b!949575 () Bool)

(declare-fun e!534629 () Bool)

(assert (=> b!949575 (= e!534629 tp_is_empty!20727)))

(declare-fun condMapEmpty!32999 () Bool)

(declare-fun mapDefault!32999 () ValueCell!9882)

(assert (=> mapNonEmpty!32998 (= condMapEmpty!32999 (= mapRest!32998 ((as const (Array (_ BitVec 32) ValueCell!9882)) mapDefault!32999)))))

(assert (=> mapNonEmpty!32998 (= tp!63253 (and e!534629 mapRes!32999))))

(declare-fun b!949574 () Bool)

(declare-fun e!534628 () Bool)

(assert (=> b!949574 (= e!534628 tp_is_empty!20727)))

(declare-fun mapNonEmpty!32999 () Bool)

(declare-fun tp!63254 () Bool)

(assert (=> mapNonEmpty!32999 (= mapRes!32999 (and tp!63254 e!534628))))

(declare-fun mapRest!32999 () (Array (_ BitVec 32) ValueCell!9882))

(declare-fun mapValue!32999 () ValueCell!9882)

(declare-fun mapKey!32999 () (_ BitVec 32))

(assert (=> mapNonEmpty!32999 (= mapRest!32998 (store mapRest!32999 mapKey!32999 mapValue!32999))))

(assert (= (and mapNonEmpty!32998 condMapEmpty!32999) mapIsEmpty!32999))

(assert (= (and mapNonEmpty!32998 (not condMapEmpty!32999)) mapNonEmpty!32999))

(assert (= (and mapNonEmpty!32999 ((_ is ValueCellFull!9882) mapValue!32999)) b!949574))

(assert (= (and mapNonEmpty!32998 ((_ is ValueCellFull!9882) mapDefault!32999)) b!949575))

(declare-fun m!882325 () Bool)

(assert (=> mapNonEmpty!32999 m!882325))

(declare-fun b_lambda!14385 () Bool)

(assert (= b_lambda!14381 (or (and b!949239 b_free!18219) b_lambda!14385)))

(declare-fun b_lambda!14387 () Bool)

(assert (= b_lambda!14383 (or (and b!949239 b_free!18219) b_lambda!14387)))

(check-sat (not d!115013) (not b!949455) (not d!115011) (not b!949462) (not d!114981) (not b!949521) (not d!114997) (not b!949517) tp_is_empty!20727 (not b!949516) (not d!114985) (not b!949512) (not d!115021) (not b!949573) (not bm!41313) (not b!949505) (not b!949511) (not d!115027) (not d!114993) (not b!949458) (not b!949393) (not b!949496) (not d!115033) (not b_next!18219) (not b!949562) (not b!949535) (not bm!41316) (not b!949497) (not b!949506) (not d!114991) (not d!115031) (not b!949494) (not mapNonEmpty!32999) (not d!115041) b_and!29691 (not bm!41307) (not d!115019) (not d!114999) (not d!114977) (not b!949457) (not b!949572) (not d!115003) (not b!949490) (not b!949436) (not b_lambda!14379) (not bm!41310) (not b!949567) (not b!949563) (not d!115043) (not b!949460) (not b!949518) (not b!949391) (not d!115009) (not d!115005) (not d!115007) (not d!115017) (not b!949421) (not b!949433) (not d!114989) (not b!949390) (not b_lambda!14387) (not d!115029) (not d!115037) (not d!115025) (not b!949454) (not b!949549) (not b!949491) (not b!949488) (not b!949453) (not d!115023) (not b!949447) (not b!949461) (not b!949515) (not b!949422) (not b!949493) (not b!949519) (not d!115015) (not b!949487) (not b!949504) (not b_lambda!14385) (not d!115039) (not d!114995) (not b!949424))
(check-sat b_and!29691 (not b_next!18219))
