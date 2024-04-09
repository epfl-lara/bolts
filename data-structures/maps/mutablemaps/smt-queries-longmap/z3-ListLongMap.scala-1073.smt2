; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22134 () Bool)

(assert start!22134)

(declare-fun b!230309 () Bool)

(declare-fun b_free!6189 () Bool)

(declare-fun b_next!6189 () Bool)

(assert (=> b!230309 (= b_free!6189 (not b_next!6189))))

(declare-fun tp!21708 () Bool)

(declare-fun b_and!13105 () Bool)

(assert (=> b!230309 (= tp!21708 b_and!13105)))

(declare-fun b!230296 () Bool)

(declare-fun e!149467 () Bool)

(declare-fun call!21399 () Bool)

(assert (=> b!230296 (= e!149467 (not call!21399))))

(declare-fun b!230297 () Bool)

(declare-datatypes ((Unit!7047 0))(
  ( (Unit!7048) )
))
(declare-fun e!149466 () Unit!7047)

(declare-fun Unit!7049 () Unit!7047)

(assert (=> b!230297 (= e!149466 Unit!7049)))

(declare-fun b!230298 () Bool)

(declare-fun e!149457 () Unit!7047)

(declare-fun lt!115938 () Unit!7047)

(assert (=> b!230298 (= e!149457 lt!115938)))

(declare-datatypes ((V!7715 0))(
  ( (V!7716 (val!3070 Int)) )
))
(declare-datatypes ((ValueCell!2682 0))(
  ( (ValueCellFull!2682 (v!5086 V!7715)) (EmptyCell!2682) )
))
(declare-datatypes ((array!11344 0))(
  ( (array!11345 (arr!5391 (Array (_ BitVec 32) ValueCell!2682)) (size!5724 (_ BitVec 32))) )
))
(declare-datatypes ((array!11346 0))(
  ( (array!11347 (arr!5392 (Array (_ BitVec 32) (_ BitVec 64))) (size!5725 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3264 0))(
  ( (LongMapFixedSize!3265 (defaultEntry!4291 Int) (mask!10181 (_ BitVec 32)) (extraKeys!4028 (_ BitVec 32)) (zeroValue!4132 V!7715) (minValue!4132 V!7715) (_size!1681 (_ BitVec 32)) (_keys!6345 array!11346) (_values!4274 array!11344) (_vacant!1681 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3264)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!304 (array!11346 array!11344 (_ BitVec 32) (_ BitVec 32) V!7715 V!7715 (_ BitVec 64) Int) Unit!7047)

(assert (=> b!230298 (= lt!115938 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!304 (_keys!6345 thiss!1504) (_values!4274 thiss!1504) (mask!10181 thiss!1504) (extraKeys!4028 thiss!1504) (zeroValue!4132 thiss!1504) (minValue!4132 thiss!1504) key!932 (defaultEntry!4291 thiss!1504)))))

(declare-fun c!38213 () Bool)

(declare-datatypes ((SeekEntryResult!946 0))(
  ( (MissingZero!946 (index!5954 (_ BitVec 32))) (Found!946 (index!5955 (_ BitVec 32))) (Intermediate!946 (undefined!1758 Bool) (index!5956 (_ BitVec 32)) (x!23446 (_ BitVec 32))) (Undefined!946) (MissingVacant!946 (index!5957 (_ BitVec 32))) )
))
(declare-fun lt!115941 () SeekEntryResult!946)

(get-info :version)

(assert (=> b!230298 (= c!38213 ((_ is MissingZero!946) lt!115941))))

(declare-fun e!149462 () Bool)

(assert (=> b!230298 e!149462))

(declare-fun b!230299 () Bool)

(declare-fun e!149455 () Bool)

(declare-fun e!149463 () Bool)

(assert (=> b!230299 (= e!149455 e!149463)))

(declare-fun res!113297 () Bool)

(assert (=> b!230299 (=> (not res!113297) (not e!149463))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230299 (= res!113297 (or (= lt!115941 (MissingZero!946 index!297)) (= lt!115941 (MissingVacant!946 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11346 (_ BitVec 32)) SeekEntryResult!946)

(assert (=> b!230299 (= lt!115941 (seekEntryOrOpen!0 key!932 (_keys!6345 thiss!1504) (mask!10181 thiss!1504)))))

(declare-fun b!230300 () Bool)

(declare-fun e!149464 () Bool)

(declare-fun tp_is_empty!6051 () Bool)

(assert (=> b!230300 (= e!149464 tp_is_empty!6051)))

(declare-fun call!21400 () Bool)

(declare-fun bm!21396 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21396 (= call!21400 (inRange!0 (ite c!38213 (index!5954 lt!115941) (index!5957 lt!115941)) (mask!10181 thiss!1504)))))

(declare-fun b!230302 () Bool)

(declare-fun e!149456 () Bool)

(assert (=> b!230302 (= e!149456 ((_ is Undefined!946) lt!115941))))

(declare-fun mapNonEmpty!10246 () Bool)

(declare-fun mapRes!10246 () Bool)

(declare-fun tp!21709 () Bool)

(declare-fun e!149461 () Bool)

(assert (=> mapNonEmpty!10246 (= mapRes!10246 (and tp!21709 e!149461))))

(declare-fun mapValue!10246 () ValueCell!2682)

(declare-fun mapRest!10246 () (Array (_ BitVec 32) ValueCell!2682))

(declare-fun mapKey!10246 () (_ BitVec 32))

(assert (=> mapNonEmpty!10246 (= (arr!5391 (_values!4274 thiss!1504)) (store mapRest!10246 mapKey!10246 mapValue!10246))))

(declare-fun mapIsEmpty!10246 () Bool)

(assert (=> mapIsEmpty!10246 mapRes!10246))

(declare-fun b!230303 () Bool)

(declare-fun res!113298 () Bool)

(declare-fun e!149458 () Bool)

(assert (=> b!230303 (=> (not res!113298) (not e!149458))))

(assert (=> b!230303 (= res!113298 (= (select (arr!5392 (_keys!6345 thiss!1504)) (index!5954 lt!115941)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230304 () Bool)

(declare-fun res!113296 () Bool)

(assert (=> b!230304 (=> (not res!113296) (not e!149455))))

(assert (=> b!230304 (= res!113296 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230305 () Bool)

(assert (=> b!230305 (= e!149461 tp_is_empty!6051)))

(declare-fun b!230301 () Bool)

(declare-fun e!149454 () Bool)

(assert (=> b!230301 (= e!149454 (not true))))

(declare-fun lt!115945 () array!11346)

(declare-fun v!346 () V!7715)

(declare-datatypes ((tuple2!4526 0))(
  ( (tuple2!4527 (_1!2273 (_ BitVec 64)) (_2!2273 V!7715)) )
))
(declare-datatypes ((List!3473 0))(
  ( (Nil!3470) (Cons!3469 (h!4117 tuple2!4526) (t!8440 List!3473)) )
))
(declare-datatypes ((ListLongMap!3453 0))(
  ( (ListLongMap!3454 (toList!1742 List!3473)) )
))
(declare-fun lt!115944 () ListLongMap!3453)

(declare-fun +!600 (ListLongMap!3453 tuple2!4526) ListLongMap!3453)

(declare-fun getCurrentListMap!1265 (array!11346 array!11344 (_ BitVec 32) (_ BitVec 32) V!7715 V!7715 (_ BitVec 32) Int) ListLongMap!3453)

(assert (=> b!230301 (= (+!600 lt!115944 (tuple2!4527 key!932 v!346)) (getCurrentListMap!1265 lt!115945 (array!11345 (store (arr!5391 (_values!4274 thiss!1504)) index!297 (ValueCellFull!2682 v!346)) (size!5724 (_values!4274 thiss!1504))) (mask!10181 thiss!1504) (extraKeys!4028 thiss!1504) (zeroValue!4132 thiss!1504) (minValue!4132 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4291 thiss!1504)))))

(declare-fun lt!115940 () Unit!7047)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!59 (array!11346 array!11344 (_ BitVec 32) (_ BitVec 32) V!7715 V!7715 (_ BitVec 32) (_ BitVec 64) V!7715 Int) Unit!7047)

(assert (=> b!230301 (= lt!115940 (lemmaAddValidKeyToArrayThenAddPairToListMap!59 (_keys!6345 thiss!1504) (_values!4274 thiss!1504) (mask!10181 thiss!1504) (extraKeys!4028 thiss!1504) (zeroValue!4132 thiss!1504) (minValue!4132 thiss!1504) index!297 key!932 v!346 (defaultEntry!4291 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11346 (_ BitVec 32)) Bool)

(assert (=> b!230301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115945 (mask!10181 thiss!1504))))

(declare-fun lt!115936 () Unit!7047)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11346 (_ BitVec 32) (_ BitVec 32)) Unit!7047)

(assert (=> b!230301 (= lt!115936 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6345 thiss!1504) index!297 (mask!10181 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11346 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230301 (= (arrayCountValidKeys!0 lt!115945 #b00000000000000000000000000000000 (size!5725 (_keys!6345 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6345 thiss!1504) #b00000000000000000000000000000000 (size!5725 (_keys!6345 thiss!1504)))))))

(declare-fun lt!115939 () Unit!7047)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11346 (_ BitVec 32) (_ BitVec 64)) Unit!7047)

(assert (=> b!230301 (= lt!115939 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6345 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3474 0))(
  ( (Nil!3471) (Cons!3470 (h!4118 (_ BitVec 64)) (t!8441 List!3474)) )
))
(declare-fun arrayNoDuplicates!0 (array!11346 (_ BitVec 32) List!3474) Bool)

(assert (=> b!230301 (arrayNoDuplicates!0 lt!115945 #b00000000000000000000000000000000 Nil!3471)))

(assert (=> b!230301 (= lt!115945 (array!11347 (store (arr!5392 (_keys!6345 thiss!1504)) index!297 key!932) (size!5725 (_keys!6345 thiss!1504))))))

(declare-fun lt!115937 () Unit!7047)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11346 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3474) Unit!7047)

(assert (=> b!230301 (= lt!115937 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6345 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3471))))

(declare-fun lt!115943 () Unit!7047)

(assert (=> b!230301 (= lt!115943 e!149466)))

(declare-fun c!38210 () Bool)

(declare-fun arrayContainsKey!0 (array!11346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!230301 (= c!38210 (arrayContainsKey!0 (_keys!6345 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!113292 () Bool)

(assert (=> start!22134 (=> (not res!113292) (not e!149455))))

(declare-fun valid!1292 (LongMapFixedSize!3264) Bool)

(assert (=> start!22134 (= res!113292 (valid!1292 thiss!1504))))

(assert (=> start!22134 e!149455))

(declare-fun e!149460 () Bool)

(assert (=> start!22134 e!149460))

(assert (=> start!22134 true))

(assert (=> start!22134 tp_is_empty!6051))

(declare-fun b!230306 () Bool)

(assert (=> b!230306 (= e!149458 (not call!21399))))

(declare-fun b!230307 () Bool)

(assert (=> b!230307 (= e!149463 e!149454)))

(declare-fun res!113295 () Bool)

(assert (=> b!230307 (=> (not res!113295) (not e!149454))))

(assert (=> b!230307 (= res!113295 (inRange!0 index!297 (mask!10181 thiss!1504)))))

(declare-fun lt!115942 () Unit!7047)

(assert (=> b!230307 (= lt!115942 e!149457)))

(declare-fun c!38211 () Bool)

(declare-fun contains!1609 (ListLongMap!3453 (_ BitVec 64)) Bool)

(assert (=> b!230307 (= c!38211 (contains!1609 lt!115944 key!932))))

(assert (=> b!230307 (= lt!115944 (getCurrentListMap!1265 (_keys!6345 thiss!1504) (_values!4274 thiss!1504) (mask!10181 thiss!1504) (extraKeys!4028 thiss!1504) (zeroValue!4132 thiss!1504) (minValue!4132 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4291 thiss!1504)))))

(declare-fun b!230308 () Bool)

(declare-fun res!113293 () Bool)

(assert (=> b!230308 (= res!113293 (= (select (arr!5392 (_keys!6345 thiss!1504)) (index!5957 lt!115941)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!230308 (=> (not res!113293) (not e!149467))))

(declare-fun e!149465 () Bool)

(declare-fun array_inv!3547 (array!11346) Bool)

(declare-fun array_inv!3548 (array!11344) Bool)

(assert (=> b!230309 (= e!149460 (and tp!21708 tp_is_empty!6051 (array_inv!3547 (_keys!6345 thiss!1504)) (array_inv!3548 (_values!4274 thiss!1504)) e!149465))))

(declare-fun bm!21397 () Bool)

(assert (=> bm!21397 (= call!21399 (arrayContainsKey!0 (_keys!6345 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230310 () Bool)

(declare-fun Unit!7050 () Unit!7047)

(assert (=> b!230310 (= e!149457 Unit!7050)))

(declare-fun lt!115947 () Unit!7047)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!291 (array!11346 array!11344 (_ BitVec 32) (_ BitVec 32) V!7715 V!7715 (_ BitVec 64) Int) Unit!7047)

(assert (=> b!230310 (= lt!115947 (lemmaInListMapThenSeekEntryOrOpenFindsIt!291 (_keys!6345 thiss!1504) (_values!4274 thiss!1504) (mask!10181 thiss!1504) (extraKeys!4028 thiss!1504) (zeroValue!4132 thiss!1504) (minValue!4132 thiss!1504) key!932 (defaultEntry!4291 thiss!1504)))))

(assert (=> b!230310 false))

(declare-fun b!230311 () Bool)

(assert (=> b!230311 (= e!149456 e!149467)))

(declare-fun res!113299 () Bool)

(assert (=> b!230311 (= res!113299 call!21400)))

(assert (=> b!230311 (=> (not res!113299) (not e!149467))))

(declare-fun b!230312 () Bool)

(declare-fun res!113294 () Bool)

(assert (=> b!230312 (=> (not res!113294) (not e!149458))))

(assert (=> b!230312 (= res!113294 call!21400)))

(assert (=> b!230312 (= e!149462 e!149458)))

(declare-fun b!230313 () Bool)

(declare-fun c!38212 () Bool)

(assert (=> b!230313 (= c!38212 ((_ is MissingVacant!946) lt!115941))))

(assert (=> b!230313 (= e!149462 e!149456)))

(declare-fun b!230314 () Bool)

(assert (=> b!230314 (= e!149465 (and e!149464 mapRes!10246))))

(declare-fun condMapEmpty!10246 () Bool)

(declare-fun mapDefault!10246 () ValueCell!2682)

(assert (=> b!230314 (= condMapEmpty!10246 (= (arr!5391 (_values!4274 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2682)) mapDefault!10246)))))

(declare-fun b!230315 () Bool)

(declare-fun Unit!7051 () Unit!7047)

(assert (=> b!230315 (= e!149466 Unit!7051)))

(declare-fun lt!115946 () Unit!7047)

(declare-fun lemmaArrayContainsKeyThenInListMap!123 (array!11346 array!11344 (_ BitVec 32) (_ BitVec 32) V!7715 V!7715 (_ BitVec 64) (_ BitVec 32) Int) Unit!7047)

(assert (=> b!230315 (= lt!115946 (lemmaArrayContainsKeyThenInListMap!123 (_keys!6345 thiss!1504) (_values!4274 thiss!1504) (mask!10181 thiss!1504) (extraKeys!4028 thiss!1504) (zeroValue!4132 thiss!1504) (minValue!4132 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4291 thiss!1504)))))

(assert (=> b!230315 false))

(assert (= (and start!22134 res!113292) b!230304))

(assert (= (and b!230304 res!113296) b!230299))

(assert (= (and b!230299 res!113297) b!230307))

(assert (= (and b!230307 c!38211) b!230310))

(assert (= (and b!230307 (not c!38211)) b!230298))

(assert (= (and b!230298 c!38213) b!230312))

(assert (= (and b!230298 (not c!38213)) b!230313))

(assert (= (and b!230312 res!113294) b!230303))

(assert (= (and b!230303 res!113298) b!230306))

(assert (= (and b!230313 c!38212) b!230311))

(assert (= (and b!230313 (not c!38212)) b!230302))

(assert (= (and b!230311 res!113299) b!230308))

(assert (= (and b!230308 res!113293) b!230296))

(assert (= (or b!230312 b!230311) bm!21396))

(assert (= (or b!230306 b!230296) bm!21397))

(assert (= (and b!230307 res!113295) b!230301))

(assert (= (and b!230301 c!38210) b!230315))

(assert (= (and b!230301 (not c!38210)) b!230297))

(assert (= (and b!230314 condMapEmpty!10246) mapIsEmpty!10246))

(assert (= (and b!230314 (not condMapEmpty!10246)) mapNonEmpty!10246))

(assert (= (and mapNonEmpty!10246 ((_ is ValueCellFull!2682) mapValue!10246)) b!230305))

(assert (= (and b!230314 ((_ is ValueCellFull!2682) mapDefault!10246)) b!230300))

(assert (= b!230309 b!230314))

(assert (= start!22134 b!230309))

(declare-fun m!251701 () Bool)

(assert (=> b!230310 m!251701))

(declare-fun m!251703 () Bool)

(assert (=> b!230307 m!251703))

(declare-fun m!251705 () Bool)

(assert (=> b!230307 m!251705))

(declare-fun m!251707 () Bool)

(assert (=> b!230307 m!251707))

(declare-fun m!251709 () Bool)

(assert (=> start!22134 m!251709))

(declare-fun m!251711 () Bool)

(assert (=> b!230303 m!251711))

(declare-fun m!251713 () Bool)

(assert (=> b!230301 m!251713))

(declare-fun m!251715 () Bool)

(assert (=> b!230301 m!251715))

(declare-fun m!251717 () Bool)

(assert (=> b!230301 m!251717))

(declare-fun m!251719 () Bool)

(assert (=> b!230301 m!251719))

(declare-fun m!251721 () Bool)

(assert (=> b!230301 m!251721))

(declare-fun m!251723 () Bool)

(assert (=> b!230301 m!251723))

(declare-fun m!251725 () Bool)

(assert (=> b!230301 m!251725))

(declare-fun m!251727 () Bool)

(assert (=> b!230301 m!251727))

(declare-fun m!251729 () Bool)

(assert (=> b!230301 m!251729))

(declare-fun m!251731 () Bool)

(assert (=> b!230301 m!251731))

(declare-fun m!251733 () Bool)

(assert (=> b!230301 m!251733))

(declare-fun m!251735 () Bool)

(assert (=> b!230301 m!251735))

(declare-fun m!251737 () Bool)

(assert (=> b!230301 m!251737))

(declare-fun m!251739 () Bool)

(assert (=> b!230299 m!251739))

(declare-fun m!251741 () Bool)

(assert (=> b!230298 m!251741))

(declare-fun m!251743 () Bool)

(assert (=> b!230309 m!251743))

(declare-fun m!251745 () Bool)

(assert (=> b!230309 m!251745))

(declare-fun m!251747 () Bool)

(assert (=> b!230315 m!251747))

(declare-fun m!251749 () Bool)

(assert (=> mapNonEmpty!10246 m!251749))

(declare-fun m!251751 () Bool)

(assert (=> b!230308 m!251751))

(assert (=> bm!21397 m!251713))

(declare-fun m!251753 () Bool)

(assert (=> bm!21396 m!251753))

(check-sat (not start!22134) (not b!230299) (not b_next!6189) (not bm!21397) (not bm!21396) (not b!230298) (not b!230315) b_and!13105 (not b!230310) tp_is_empty!6051 (not mapNonEmpty!10246) (not b!230307) (not b!230309) (not b!230301))
(check-sat b_and!13105 (not b_next!6189))
