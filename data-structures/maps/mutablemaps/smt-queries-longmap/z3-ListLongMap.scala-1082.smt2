; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22188 () Bool)

(assert start!22188)

(declare-fun b!231924 () Bool)

(declare-fun b_free!6243 () Bool)

(declare-fun b_next!6243 () Bool)

(assert (=> b!231924 (= b_free!6243 (not b_next!6243))))

(declare-fun tp!21870 () Bool)

(declare-fun b_and!13159 () Bool)

(assert (=> b!231924 (= tp!21870 b_and!13159)))

(declare-fun b!231916 () Bool)

(declare-fun res!113944 () Bool)

(declare-fun e!150596 () Bool)

(assert (=> b!231916 (=> (not res!113944) (not e!150596))))

(declare-datatypes ((V!7787 0))(
  ( (V!7788 (val!3097 Int)) )
))
(declare-datatypes ((ValueCell!2709 0))(
  ( (ValueCellFull!2709 (v!5113 V!7787)) (EmptyCell!2709) )
))
(declare-datatypes ((array!11452 0))(
  ( (array!11453 (arr!5445 (Array (_ BitVec 32) ValueCell!2709)) (size!5778 (_ BitVec 32))) )
))
(declare-datatypes ((array!11454 0))(
  ( (array!11455 (arr!5446 (Array (_ BitVec 32) (_ BitVec 64))) (size!5779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3318 0))(
  ( (LongMapFixedSize!3319 (defaultEntry!4318 Int) (mask!10226 (_ BitVec 32)) (extraKeys!4055 (_ BitVec 32)) (zeroValue!4159 V!7787) (minValue!4159 V!7787) (_size!1708 (_ BitVec 32)) (_keys!6372 array!11454) (_values!4301 array!11452) (_vacant!1708 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3318)

(declare-datatypes ((SeekEntryResult!968 0))(
  ( (MissingZero!968 (index!6042 (_ BitVec 32))) (Found!968 (index!6043 (_ BitVec 32))) (Intermediate!968 (undefined!1780 Bool) (index!6044 (_ BitVec 32)) (x!23540 (_ BitVec 32))) (Undefined!968) (MissingVacant!968 (index!6045 (_ BitVec 32))) )
))
(declare-fun lt!117065 () SeekEntryResult!968)

(assert (=> b!231916 (= res!113944 (= (select (arr!5446 (_keys!6372 thiss!1504)) (index!6042 lt!117065)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!231917 () Bool)

(declare-fun e!150591 () Bool)

(get-info :version)

(assert (=> b!231917 (= e!150591 ((_ is Undefined!968) lt!117065))))

(declare-fun b!231918 () Bool)

(declare-fun res!113943 () Bool)

(assert (=> b!231918 (=> (not res!113943) (not e!150596))))

(declare-fun call!21561 () Bool)

(assert (=> b!231918 (= res!113943 call!21561)))

(declare-fun e!150593 () Bool)

(assert (=> b!231918 (= e!150593 e!150596)))

(declare-fun b!231919 () Bool)

(declare-fun e!150592 () Bool)

(declare-fun tp_is_empty!6105 () Bool)

(assert (=> b!231919 (= e!150592 tp_is_empty!6105)))

(declare-fun b!231920 () Bool)

(declare-fun e!150595 () Bool)

(assert (=> b!231920 (= e!150595 (not true))))

(declare-fun lt!117066 () array!11454)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11454 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231920 (= (arrayCountValidKeys!0 lt!117066 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7147 0))(
  ( (Unit!7148) )
))
(declare-fun lt!117064 () Unit!7147)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11454 (_ BitVec 32)) Unit!7147)

(assert (=> b!231920 (= lt!117064 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117066 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231920 (arrayContainsKey!0 lt!117066 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117053 () Unit!7147)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11454 (_ BitVec 64) (_ BitVec 32)) Unit!7147)

(assert (=> b!231920 (= lt!117053 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117066 key!932 index!297))))

(declare-fun v!346 () V!7787)

(declare-datatypes ((tuple2!4566 0))(
  ( (tuple2!4567 (_1!2293 (_ BitVec 64)) (_2!2293 V!7787)) )
))
(declare-datatypes ((List!3508 0))(
  ( (Nil!3505) (Cons!3504 (h!4152 tuple2!4566) (t!8475 List!3508)) )
))
(declare-datatypes ((ListLongMap!3493 0))(
  ( (ListLongMap!3494 (toList!1762 List!3508)) )
))
(declare-fun lt!117056 () ListLongMap!3493)

(declare-fun +!615 (ListLongMap!3493 tuple2!4566) ListLongMap!3493)

(declare-fun getCurrentListMap!1285 (array!11454 array!11452 (_ BitVec 32) (_ BitVec 32) V!7787 V!7787 (_ BitVec 32) Int) ListLongMap!3493)

(assert (=> b!231920 (= (+!615 lt!117056 (tuple2!4567 key!932 v!346)) (getCurrentListMap!1285 lt!117066 (array!11453 (store (arr!5445 (_values!4301 thiss!1504)) index!297 (ValueCellFull!2709 v!346)) (size!5778 (_values!4301 thiss!1504))) (mask!10226 thiss!1504) (extraKeys!4055 thiss!1504) (zeroValue!4159 thiss!1504) (minValue!4159 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4318 thiss!1504)))))

(declare-fun lt!117058 () Unit!7147)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!74 (array!11454 array!11452 (_ BitVec 32) (_ BitVec 32) V!7787 V!7787 (_ BitVec 32) (_ BitVec 64) V!7787 Int) Unit!7147)

(assert (=> b!231920 (= lt!117058 (lemmaAddValidKeyToArrayThenAddPairToListMap!74 (_keys!6372 thiss!1504) (_values!4301 thiss!1504) (mask!10226 thiss!1504) (extraKeys!4055 thiss!1504) (zeroValue!4159 thiss!1504) (minValue!4159 thiss!1504) index!297 key!932 v!346 (defaultEntry!4318 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11454 (_ BitVec 32)) Bool)

(assert (=> b!231920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117066 (mask!10226 thiss!1504))))

(declare-fun lt!117061 () Unit!7147)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11454 (_ BitVec 32) (_ BitVec 32)) Unit!7147)

(assert (=> b!231920 (= lt!117061 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6372 thiss!1504) index!297 (mask!10226 thiss!1504)))))

(assert (=> b!231920 (= (arrayCountValidKeys!0 lt!117066 #b00000000000000000000000000000000 (size!5779 (_keys!6372 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6372 thiss!1504) #b00000000000000000000000000000000 (size!5779 (_keys!6372 thiss!1504)))))))

(declare-fun lt!117063 () Unit!7147)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11454 (_ BitVec 32) (_ BitVec 64)) Unit!7147)

(assert (=> b!231920 (= lt!117063 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6372 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3509 0))(
  ( (Nil!3506) (Cons!3505 (h!4153 (_ BitVec 64)) (t!8476 List!3509)) )
))
(declare-fun arrayNoDuplicates!0 (array!11454 (_ BitVec 32) List!3509) Bool)

(assert (=> b!231920 (arrayNoDuplicates!0 lt!117066 #b00000000000000000000000000000000 Nil!3506)))

(assert (=> b!231920 (= lt!117066 (array!11455 (store (arr!5446 (_keys!6372 thiss!1504)) index!297 key!932) (size!5779 (_keys!6372 thiss!1504))))))

(declare-fun lt!117059 () Unit!7147)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11454 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3509) Unit!7147)

(assert (=> b!231920 (= lt!117059 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6372 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3506))))

(declare-fun lt!117060 () Unit!7147)

(declare-fun e!150597 () Unit!7147)

(assert (=> b!231920 (= lt!117060 e!150597)))

(declare-fun c!38535 () Bool)

(assert (=> b!231920 (= c!38535 (arrayContainsKey!0 (_keys!6372 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231921 () Bool)

(declare-fun res!113947 () Bool)

(assert (=> b!231921 (= res!113947 (= (select (arr!5446 (_keys!6372 thiss!1504)) (index!6045 lt!117065)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!150594 () Bool)

(assert (=> b!231921 (=> (not res!113947) (not e!150594))))

(declare-fun b!231922 () Bool)

(declare-fun e!150598 () Unit!7147)

(declare-fun Unit!7149 () Unit!7147)

(assert (=> b!231922 (= e!150598 Unit!7149)))

(declare-fun lt!117054 () Unit!7147)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!307 (array!11454 array!11452 (_ BitVec 32) (_ BitVec 32) V!7787 V!7787 (_ BitVec 64) Int) Unit!7147)

(assert (=> b!231922 (= lt!117054 (lemmaInListMapThenSeekEntryOrOpenFindsIt!307 (_keys!6372 thiss!1504) (_values!4301 thiss!1504) (mask!10226 thiss!1504) (extraKeys!4055 thiss!1504) (zeroValue!4159 thiss!1504) (minValue!4159 thiss!1504) key!932 (defaultEntry!4318 thiss!1504)))))

(assert (=> b!231922 false))

(declare-fun mapNonEmpty!10327 () Bool)

(declare-fun mapRes!10327 () Bool)

(declare-fun tp!21871 () Bool)

(declare-fun e!150588 () Bool)

(assert (=> mapNonEmpty!10327 (= mapRes!10327 (and tp!21871 e!150588))))

(declare-fun mapKey!10327 () (_ BitVec 32))

(declare-fun mapRest!10327 () (Array (_ BitVec 32) ValueCell!2709))

(declare-fun mapValue!10327 () ValueCell!2709)

(assert (=> mapNonEmpty!10327 (= (arr!5445 (_values!4301 thiss!1504)) (store mapRest!10327 mapKey!10327 mapValue!10327))))

(declare-fun e!150599 () Bool)

(declare-fun e!150600 () Bool)

(declare-fun array_inv!3579 (array!11454) Bool)

(declare-fun array_inv!3580 (array!11452) Bool)

(assert (=> b!231924 (= e!150599 (and tp!21870 tp_is_empty!6105 (array_inv!3579 (_keys!6372 thiss!1504)) (array_inv!3580 (_values!4301 thiss!1504)) e!150600))))

(declare-fun b!231925 () Bool)

(declare-fun e!150601 () Bool)

(declare-fun e!150589 () Bool)

(assert (=> b!231925 (= e!150601 e!150589)))

(declare-fun res!113942 () Bool)

(assert (=> b!231925 (=> (not res!113942) (not e!150589))))

(assert (=> b!231925 (= res!113942 (or (= lt!117065 (MissingZero!968 index!297)) (= lt!117065 (MissingVacant!968 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11454 (_ BitVec 32)) SeekEntryResult!968)

(assert (=> b!231925 (= lt!117065 (seekEntryOrOpen!0 key!932 (_keys!6372 thiss!1504) (mask!10226 thiss!1504)))))

(declare-fun b!231926 () Bool)

(assert (=> b!231926 (= e!150591 e!150594)))

(declare-fun res!113940 () Bool)

(assert (=> b!231926 (= res!113940 call!21561)))

(assert (=> b!231926 (=> (not res!113940) (not e!150594))))

(declare-fun b!231927 () Bool)

(assert (=> b!231927 (= e!150600 (and e!150592 mapRes!10327))))

(declare-fun condMapEmpty!10327 () Bool)

(declare-fun mapDefault!10327 () ValueCell!2709)

(assert (=> b!231927 (= condMapEmpty!10327 (= (arr!5445 (_values!4301 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2709)) mapDefault!10327)))))

(declare-fun b!231928 () Bool)

(declare-fun lt!117057 () Unit!7147)

(assert (=> b!231928 (= e!150598 lt!117057)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!320 (array!11454 array!11452 (_ BitVec 32) (_ BitVec 32) V!7787 V!7787 (_ BitVec 64) Int) Unit!7147)

(assert (=> b!231928 (= lt!117057 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!320 (_keys!6372 thiss!1504) (_values!4301 thiss!1504) (mask!10226 thiss!1504) (extraKeys!4055 thiss!1504) (zeroValue!4159 thiss!1504) (minValue!4159 thiss!1504) key!932 (defaultEntry!4318 thiss!1504)))))

(declare-fun c!38536 () Bool)

(assert (=> b!231928 (= c!38536 ((_ is MissingZero!968) lt!117065))))

(assert (=> b!231928 e!150593))

(declare-fun b!231929 () Bool)

(declare-fun call!21562 () Bool)

(assert (=> b!231929 (= e!150596 (not call!21562))))

(declare-fun b!231930 () Bool)

(declare-fun Unit!7150 () Unit!7147)

(assert (=> b!231930 (= e!150597 Unit!7150)))

(declare-fun lt!117062 () Unit!7147)

(declare-fun lemmaArrayContainsKeyThenInListMap!141 (array!11454 array!11452 (_ BitVec 32) (_ BitVec 32) V!7787 V!7787 (_ BitVec 64) (_ BitVec 32) Int) Unit!7147)

(assert (=> b!231930 (= lt!117062 (lemmaArrayContainsKeyThenInListMap!141 (_keys!6372 thiss!1504) (_values!4301 thiss!1504) (mask!10226 thiss!1504) (extraKeys!4055 thiss!1504) (zeroValue!4159 thiss!1504) (minValue!4159 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4318 thiss!1504)))))

(assert (=> b!231930 false))

(declare-fun mapIsEmpty!10327 () Bool)

(assert (=> mapIsEmpty!10327 mapRes!10327))

(declare-fun b!231931 () Bool)

(assert (=> b!231931 (= e!150589 e!150595)))

(declare-fun res!113945 () Bool)

(assert (=> b!231931 (=> (not res!113945) (not e!150595))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!231931 (= res!113945 (inRange!0 index!297 (mask!10226 thiss!1504)))))

(declare-fun lt!117055 () Unit!7147)

(assert (=> b!231931 (= lt!117055 e!150598)))

(declare-fun c!38534 () Bool)

(declare-fun contains!1625 (ListLongMap!3493 (_ BitVec 64)) Bool)

(assert (=> b!231931 (= c!38534 (contains!1625 lt!117056 key!932))))

(assert (=> b!231931 (= lt!117056 (getCurrentListMap!1285 (_keys!6372 thiss!1504) (_values!4301 thiss!1504) (mask!10226 thiss!1504) (extraKeys!4055 thiss!1504) (zeroValue!4159 thiss!1504) (minValue!4159 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4318 thiss!1504)))))

(declare-fun res!113946 () Bool)

(assert (=> start!22188 (=> (not res!113946) (not e!150601))))

(declare-fun valid!1307 (LongMapFixedSize!3318) Bool)

(assert (=> start!22188 (= res!113946 (valid!1307 thiss!1504))))

(assert (=> start!22188 e!150601))

(assert (=> start!22188 e!150599))

(assert (=> start!22188 true))

(assert (=> start!22188 tp_is_empty!6105))

(declare-fun b!231923 () Bool)

(assert (=> b!231923 (= e!150588 tp_is_empty!6105)))

(declare-fun b!231932 () Bool)

(declare-fun c!38537 () Bool)

(assert (=> b!231932 (= c!38537 ((_ is MissingVacant!968) lt!117065))))

(assert (=> b!231932 (= e!150593 e!150591)))

(declare-fun b!231933 () Bool)

(assert (=> b!231933 (= e!150594 (not call!21562))))

(declare-fun b!231934 () Bool)

(declare-fun res!113941 () Bool)

(assert (=> b!231934 (=> (not res!113941) (not e!150601))))

(assert (=> b!231934 (= res!113941 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231935 () Bool)

(declare-fun Unit!7151 () Unit!7147)

(assert (=> b!231935 (= e!150597 Unit!7151)))

(declare-fun bm!21558 () Bool)

(assert (=> bm!21558 (= call!21561 (inRange!0 (ite c!38536 (index!6042 lt!117065) (index!6045 lt!117065)) (mask!10226 thiss!1504)))))

(declare-fun bm!21559 () Bool)

(assert (=> bm!21559 (= call!21562 (arrayContainsKey!0 (_keys!6372 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!22188 res!113946) b!231934))

(assert (= (and b!231934 res!113941) b!231925))

(assert (= (and b!231925 res!113942) b!231931))

(assert (= (and b!231931 c!38534) b!231922))

(assert (= (and b!231931 (not c!38534)) b!231928))

(assert (= (and b!231928 c!38536) b!231918))

(assert (= (and b!231928 (not c!38536)) b!231932))

(assert (= (and b!231918 res!113943) b!231916))

(assert (= (and b!231916 res!113944) b!231929))

(assert (= (and b!231932 c!38537) b!231926))

(assert (= (and b!231932 (not c!38537)) b!231917))

(assert (= (and b!231926 res!113940) b!231921))

(assert (= (and b!231921 res!113947) b!231933))

(assert (= (or b!231918 b!231926) bm!21558))

(assert (= (or b!231929 b!231933) bm!21559))

(assert (= (and b!231931 res!113945) b!231920))

(assert (= (and b!231920 c!38535) b!231930))

(assert (= (and b!231920 (not c!38535)) b!231935))

(assert (= (and b!231927 condMapEmpty!10327) mapIsEmpty!10327))

(assert (= (and b!231927 (not condMapEmpty!10327)) mapNonEmpty!10327))

(assert (= (and mapNonEmpty!10327 ((_ is ValueCellFull!2709) mapValue!10327)) b!231923))

(assert (= (and b!231927 ((_ is ValueCellFull!2709) mapDefault!10327)) b!231919))

(assert (= b!231924 b!231927))

(assert (= start!22188 b!231924))

(declare-fun m!253347 () Bool)

(assert (=> b!231920 m!253347))

(declare-fun m!253349 () Bool)

(assert (=> b!231920 m!253349))

(declare-fun m!253351 () Bool)

(assert (=> b!231920 m!253351))

(declare-fun m!253353 () Bool)

(assert (=> b!231920 m!253353))

(declare-fun m!253355 () Bool)

(assert (=> b!231920 m!253355))

(declare-fun m!253357 () Bool)

(assert (=> b!231920 m!253357))

(declare-fun m!253359 () Bool)

(assert (=> b!231920 m!253359))

(declare-fun m!253361 () Bool)

(assert (=> b!231920 m!253361))

(declare-fun m!253363 () Bool)

(assert (=> b!231920 m!253363))

(declare-fun m!253365 () Bool)

(assert (=> b!231920 m!253365))

(declare-fun m!253367 () Bool)

(assert (=> b!231920 m!253367))

(declare-fun m!253369 () Bool)

(assert (=> b!231920 m!253369))

(declare-fun m!253371 () Bool)

(assert (=> b!231920 m!253371))

(declare-fun m!253373 () Bool)

(assert (=> b!231920 m!253373))

(declare-fun m!253375 () Bool)

(assert (=> b!231920 m!253375))

(declare-fun m!253377 () Bool)

(assert (=> b!231920 m!253377))

(declare-fun m!253379 () Bool)

(assert (=> b!231920 m!253379))

(declare-fun m!253381 () Bool)

(assert (=> b!231922 m!253381))

(declare-fun m!253383 () Bool)

(assert (=> b!231924 m!253383))

(declare-fun m!253385 () Bool)

(assert (=> b!231924 m!253385))

(declare-fun m!253387 () Bool)

(assert (=> b!231916 m!253387))

(declare-fun m!253389 () Bool)

(assert (=> start!22188 m!253389))

(declare-fun m!253391 () Bool)

(assert (=> bm!21558 m!253391))

(declare-fun m!253393 () Bool)

(assert (=> b!231930 m!253393))

(declare-fun m!253395 () Bool)

(assert (=> b!231925 m!253395))

(declare-fun m!253397 () Bool)

(assert (=> b!231931 m!253397))

(declare-fun m!253399 () Bool)

(assert (=> b!231931 m!253399))

(declare-fun m!253401 () Bool)

(assert (=> b!231931 m!253401))

(declare-fun m!253403 () Bool)

(assert (=> mapNonEmpty!10327 m!253403))

(declare-fun m!253405 () Bool)

(assert (=> b!231928 m!253405))

(assert (=> bm!21559 m!253349))

(declare-fun m!253407 () Bool)

(assert (=> b!231921 m!253407))

(check-sat (not b!231924) tp_is_empty!6105 (not b!231925) (not b!231928) (not b!231931) (not b!231920) (not bm!21559) (not mapNonEmpty!10327) (not b!231930) (not b_next!6243) (not bm!21558) (not start!22188) (not b!231922) b_and!13159)
(check-sat b_and!13159 (not b_next!6243))
