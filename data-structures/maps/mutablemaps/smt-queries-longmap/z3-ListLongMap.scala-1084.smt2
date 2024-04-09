; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22200 () Bool)

(assert start!22200)

(declare-fun b!232288 () Bool)

(declare-fun b_free!6255 () Bool)

(declare-fun b_next!6255 () Bool)

(assert (=> b!232288 (= b_free!6255 (not b_next!6255))))

(declare-fun tp!21907 () Bool)

(declare-fun b_and!13171 () Bool)

(assert (=> b!232288 (= tp!21907 b_and!13171)))

(declare-fun b!232276 () Bool)

(declare-fun c!38608 () Bool)

(declare-datatypes ((SeekEntryResult!973 0))(
  ( (MissingZero!973 (index!6062 (_ BitVec 32))) (Found!973 (index!6063 (_ BitVec 32))) (Intermediate!973 (undefined!1785 Bool) (index!6064 (_ BitVec 32)) (x!23561 (_ BitVec 32))) (Undefined!973) (MissingVacant!973 (index!6065 (_ BitVec 32))) )
))
(declare-fun lt!117308 () SeekEntryResult!973)

(get-info :version)

(assert (=> b!232276 (= c!38608 ((_ is MissingVacant!973) lt!117308))))

(declare-fun e!150843 () Bool)

(declare-fun e!150841 () Bool)

(assert (=> b!232276 (= e!150843 e!150841)))

(declare-fun b!232277 () Bool)

(declare-fun e!150852 () Bool)

(assert (=> b!232277 (= e!150841 e!150852)))

(declare-fun res!114089 () Bool)

(declare-fun call!21597 () Bool)

(assert (=> b!232277 (= res!114089 call!21597)))

(assert (=> b!232277 (=> (not res!114089) (not e!150852))))

(declare-fun b!232278 () Bool)

(declare-fun e!150849 () Bool)

(declare-fun tp_is_empty!6117 () Bool)

(assert (=> b!232278 (= e!150849 tp_is_empty!6117)))

(declare-fun b!232279 () Bool)

(declare-fun call!21598 () Bool)

(assert (=> b!232279 (= e!150852 (not call!21598))))

(declare-fun b!232280 () Bool)

(declare-datatypes ((Unit!7170 0))(
  ( (Unit!7171) )
))
(declare-fun e!150847 () Unit!7170)

(declare-fun Unit!7172 () Unit!7170)

(assert (=> b!232280 (= e!150847 Unit!7172)))

(declare-fun lt!117306 () Unit!7170)

(declare-datatypes ((V!7803 0))(
  ( (V!7804 (val!3103 Int)) )
))
(declare-datatypes ((ValueCell!2715 0))(
  ( (ValueCellFull!2715 (v!5119 V!7803)) (EmptyCell!2715) )
))
(declare-datatypes ((array!11476 0))(
  ( (array!11477 (arr!5457 (Array (_ BitVec 32) ValueCell!2715)) (size!5790 (_ BitVec 32))) )
))
(declare-datatypes ((array!11478 0))(
  ( (array!11479 (arr!5458 (Array (_ BitVec 32) (_ BitVec 64))) (size!5791 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3330 0))(
  ( (LongMapFixedSize!3331 (defaultEntry!4324 Int) (mask!10236 (_ BitVec 32)) (extraKeys!4061 (_ BitVec 32)) (zeroValue!4165 V!7803) (minValue!4165 V!7803) (_size!1714 (_ BitVec 32)) (_keys!6378 array!11478) (_values!4307 array!11476) (_vacant!1714 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3330)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!144 (array!11478 array!11476 (_ BitVec 32) (_ BitVec 32) V!7803 V!7803 (_ BitVec 64) (_ BitVec 32) Int) Unit!7170)

(assert (=> b!232280 (= lt!117306 (lemmaArrayContainsKeyThenInListMap!144 (_keys!6378 thiss!1504) (_values!4307 thiss!1504) (mask!10236 thiss!1504) (extraKeys!4061 thiss!1504) (zeroValue!4165 thiss!1504) (minValue!4165 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4324 thiss!1504)))))

(assert (=> b!232280 false))

(declare-fun b!232281 () Bool)

(declare-fun e!150850 () Unit!7170)

(declare-fun Unit!7173 () Unit!7170)

(assert (=> b!232281 (= e!150850 Unit!7173)))

(declare-fun lt!117312 () Unit!7170)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!310 (array!11478 array!11476 (_ BitVec 32) (_ BitVec 32) V!7803 V!7803 (_ BitVec 64) Int) Unit!7170)

(assert (=> b!232281 (= lt!117312 (lemmaInListMapThenSeekEntryOrOpenFindsIt!310 (_keys!6378 thiss!1504) (_values!4307 thiss!1504) (mask!10236 thiss!1504) (extraKeys!4061 thiss!1504) (zeroValue!4165 thiss!1504) (minValue!4165 thiss!1504) key!932 (defaultEntry!4324 thiss!1504)))))

(assert (=> b!232281 false))

(declare-fun b!232282 () Bool)

(declare-fun e!150845 () Bool)

(declare-fun e!150846 () Bool)

(assert (=> b!232282 (= e!150845 e!150846)))

(declare-fun res!114085 () Bool)

(assert (=> b!232282 (=> (not res!114085) (not e!150846))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!232282 (= res!114085 (inRange!0 index!297 (mask!10236 thiss!1504)))))

(declare-fun lt!117310 () Unit!7170)

(assert (=> b!232282 (= lt!117310 e!150850)))

(declare-fun c!38609 () Bool)

(declare-datatypes ((tuple2!4576 0))(
  ( (tuple2!4577 (_1!2298 (_ BitVec 64)) (_2!2298 V!7803)) )
))
(declare-datatypes ((List!3517 0))(
  ( (Nil!3514) (Cons!3513 (h!4161 tuple2!4576) (t!8484 List!3517)) )
))
(declare-datatypes ((ListLongMap!3503 0))(
  ( (ListLongMap!3504 (toList!1767 List!3517)) )
))
(declare-fun lt!117307 () ListLongMap!3503)

(declare-fun contains!1629 (ListLongMap!3503 (_ BitVec 64)) Bool)

(assert (=> b!232282 (= c!38609 (contains!1629 lt!117307 key!932))))

(declare-fun getCurrentListMap!1290 (array!11478 array!11476 (_ BitVec 32) (_ BitVec 32) V!7803 V!7803 (_ BitVec 32) Int) ListLongMap!3503)

(assert (=> b!232282 (= lt!117307 (getCurrentListMap!1290 (_keys!6378 thiss!1504) (_values!4307 thiss!1504) (mask!10236 thiss!1504) (extraKeys!4061 thiss!1504) (zeroValue!4165 thiss!1504) (minValue!4165 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4324 thiss!1504)))))

(declare-fun b!232283 () Bool)

(declare-fun e!150842 () Bool)

(declare-fun mapRes!10345 () Bool)

(assert (=> b!232283 (= e!150842 (and e!150849 mapRes!10345))))

(declare-fun condMapEmpty!10345 () Bool)

(declare-fun mapDefault!10345 () ValueCell!2715)

(assert (=> b!232283 (= condMapEmpty!10345 (= (arr!5457 (_values!4307 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2715)) mapDefault!10345)))))

(declare-fun b!232284 () Bool)

(declare-fun Unit!7174 () Unit!7170)

(assert (=> b!232284 (= e!150847 Unit!7174)))

(declare-fun b!232285 () Bool)

(declare-fun res!114091 () Bool)

(declare-fun e!150840 () Bool)

(assert (=> b!232285 (=> (not res!114091) (not e!150840))))

(assert (=> b!232285 (= res!114091 (= (select (arr!5458 (_keys!6378 thiss!1504)) (index!6062 lt!117308)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21594 () Bool)

(declare-fun arrayContainsKey!0 (array!11478 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21594 (= call!21598 (arrayContainsKey!0 (_keys!6378 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!114087 () Bool)

(declare-fun e!150848 () Bool)

(assert (=> start!22200 (=> (not res!114087) (not e!150848))))

(declare-fun valid!1311 (LongMapFixedSize!3330) Bool)

(assert (=> start!22200 (= res!114087 (valid!1311 thiss!1504))))

(assert (=> start!22200 e!150848))

(declare-fun e!150853 () Bool)

(assert (=> start!22200 e!150853))

(assert (=> start!22200 true))

(assert (=> start!22200 tp_is_empty!6117))

(declare-fun b!232286 () Bool)

(assert (=> b!232286 (= e!150848 e!150845)))

(declare-fun res!114090 () Bool)

(assert (=> b!232286 (=> (not res!114090) (not e!150845))))

(assert (=> b!232286 (= res!114090 (or (= lt!117308 (MissingZero!973 index!297)) (= lt!117308 (MissingVacant!973 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11478 (_ BitVec 32)) SeekEntryResult!973)

(assert (=> b!232286 (= lt!117308 (seekEntryOrOpen!0 key!932 (_keys!6378 thiss!1504) (mask!10236 thiss!1504)))))

(declare-fun mapIsEmpty!10345 () Bool)

(assert (=> mapIsEmpty!10345 mapRes!10345))

(declare-fun b!232287 () Bool)

(assert (=> b!232287 (= e!150846 (not true))))

(declare-fun lt!117305 () array!11478)

(declare-fun arrayCountValidKeys!0 (array!11478 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232287 (= (arrayCountValidKeys!0 lt!117305 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117311 () Unit!7170)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11478 (_ BitVec 32)) Unit!7170)

(assert (=> b!232287 (= lt!117311 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117305 index!297))))

(assert (=> b!232287 (arrayContainsKey!0 lt!117305 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117318 () Unit!7170)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11478 (_ BitVec 64) (_ BitVec 32)) Unit!7170)

(assert (=> b!232287 (= lt!117318 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117305 key!932 index!297))))

(declare-fun v!346 () V!7803)

(declare-fun +!619 (ListLongMap!3503 tuple2!4576) ListLongMap!3503)

(assert (=> b!232287 (= (+!619 lt!117307 (tuple2!4577 key!932 v!346)) (getCurrentListMap!1290 lt!117305 (array!11477 (store (arr!5457 (_values!4307 thiss!1504)) index!297 (ValueCellFull!2715 v!346)) (size!5790 (_values!4307 thiss!1504))) (mask!10236 thiss!1504) (extraKeys!4061 thiss!1504) (zeroValue!4165 thiss!1504) (minValue!4165 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4324 thiss!1504)))))

(declare-fun lt!117317 () Unit!7170)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!78 (array!11478 array!11476 (_ BitVec 32) (_ BitVec 32) V!7803 V!7803 (_ BitVec 32) (_ BitVec 64) V!7803 Int) Unit!7170)

(assert (=> b!232287 (= lt!117317 (lemmaAddValidKeyToArrayThenAddPairToListMap!78 (_keys!6378 thiss!1504) (_values!4307 thiss!1504) (mask!10236 thiss!1504) (extraKeys!4061 thiss!1504) (zeroValue!4165 thiss!1504) (minValue!4165 thiss!1504) index!297 key!932 v!346 (defaultEntry!4324 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11478 (_ BitVec 32)) Bool)

(assert (=> b!232287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117305 (mask!10236 thiss!1504))))

(declare-fun lt!117316 () Unit!7170)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11478 (_ BitVec 32) (_ BitVec 32)) Unit!7170)

(assert (=> b!232287 (= lt!117316 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6378 thiss!1504) index!297 (mask!10236 thiss!1504)))))

(assert (=> b!232287 (= (arrayCountValidKeys!0 lt!117305 #b00000000000000000000000000000000 (size!5791 (_keys!6378 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6378 thiss!1504) #b00000000000000000000000000000000 (size!5791 (_keys!6378 thiss!1504)))))))

(declare-fun lt!117313 () Unit!7170)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11478 (_ BitVec 32) (_ BitVec 64)) Unit!7170)

(assert (=> b!232287 (= lt!117313 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6378 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3518 0))(
  ( (Nil!3515) (Cons!3514 (h!4162 (_ BitVec 64)) (t!8485 List!3518)) )
))
(declare-fun arrayNoDuplicates!0 (array!11478 (_ BitVec 32) List!3518) Bool)

(assert (=> b!232287 (arrayNoDuplicates!0 lt!117305 #b00000000000000000000000000000000 Nil!3515)))

(assert (=> b!232287 (= lt!117305 (array!11479 (store (arr!5458 (_keys!6378 thiss!1504)) index!297 key!932) (size!5791 (_keys!6378 thiss!1504))))))

(declare-fun lt!117309 () Unit!7170)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11478 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3518) Unit!7170)

(assert (=> b!232287 (= lt!117309 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6378 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3515))))

(declare-fun lt!117315 () Unit!7170)

(assert (=> b!232287 (= lt!117315 e!150847)))

(declare-fun c!38607 () Bool)

(assert (=> b!232287 (= c!38607 (arrayContainsKey!0 (_keys!6378 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3587 (array!11478) Bool)

(declare-fun array_inv!3588 (array!11476) Bool)

(assert (=> b!232288 (= e!150853 (and tp!21907 tp_is_empty!6117 (array_inv!3587 (_keys!6378 thiss!1504)) (array_inv!3588 (_values!4307 thiss!1504)) e!150842))))

(declare-fun b!232289 () Bool)

(declare-fun res!114088 () Bool)

(assert (=> b!232289 (= res!114088 (= (select (arr!5458 (_keys!6378 thiss!1504)) (index!6065 lt!117308)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!232289 (=> (not res!114088) (not e!150852))))

(declare-fun b!232290 () Bool)

(declare-fun res!114084 () Bool)

(assert (=> b!232290 (=> (not res!114084) (not e!150848))))

(assert (=> b!232290 (= res!114084 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10345 () Bool)

(declare-fun tp!21906 () Bool)

(declare-fun e!150844 () Bool)

(assert (=> mapNonEmpty!10345 (= mapRes!10345 (and tp!21906 e!150844))))

(declare-fun mapKey!10345 () (_ BitVec 32))

(declare-fun mapRest!10345 () (Array (_ BitVec 32) ValueCell!2715))

(declare-fun mapValue!10345 () ValueCell!2715)

(assert (=> mapNonEmpty!10345 (= (arr!5457 (_values!4307 thiss!1504)) (store mapRest!10345 mapKey!10345 mapValue!10345))))

(declare-fun b!232291 () Bool)

(assert (=> b!232291 (= e!150841 ((_ is Undefined!973) lt!117308))))

(declare-fun b!232292 () Bool)

(assert (=> b!232292 (= e!150840 (not call!21598))))

(declare-fun b!232293 () Bool)

(declare-fun lt!117314 () Unit!7170)

(assert (=> b!232293 (= e!150850 lt!117314)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!324 (array!11478 array!11476 (_ BitVec 32) (_ BitVec 32) V!7803 V!7803 (_ BitVec 64) Int) Unit!7170)

(assert (=> b!232293 (= lt!117314 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!324 (_keys!6378 thiss!1504) (_values!4307 thiss!1504) (mask!10236 thiss!1504) (extraKeys!4061 thiss!1504) (zeroValue!4165 thiss!1504) (minValue!4165 thiss!1504) key!932 (defaultEntry!4324 thiss!1504)))))

(declare-fun c!38606 () Bool)

(assert (=> b!232293 (= c!38606 ((_ is MissingZero!973) lt!117308))))

(assert (=> b!232293 e!150843))

(declare-fun bm!21595 () Bool)

(assert (=> bm!21595 (= call!21597 (inRange!0 (ite c!38606 (index!6062 lt!117308) (index!6065 lt!117308)) (mask!10236 thiss!1504)))))

(declare-fun b!232294 () Bool)

(declare-fun res!114086 () Bool)

(assert (=> b!232294 (=> (not res!114086) (not e!150840))))

(assert (=> b!232294 (= res!114086 call!21597)))

(assert (=> b!232294 (= e!150843 e!150840)))

(declare-fun b!232295 () Bool)

(assert (=> b!232295 (= e!150844 tp_is_empty!6117)))

(assert (= (and start!22200 res!114087) b!232290))

(assert (= (and b!232290 res!114084) b!232286))

(assert (= (and b!232286 res!114090) b!232282))

(assert (= (and b!232282 c!38609) b!232281))

(assert (= (and b!232282 (not c!38609)) b!232293))

(assert (= (and b!232293 c!38606) b!232294))

(assert (= (and b!232293 (not c!38606)) b!232276))

(assert (= (and b!232294 res!114086) b!232285))

(assert (= (and b!232285 res!114091) b!232292))

(assert (= (and b!232276 c!38608) b!232277))

(assert (= (and b!232276 (not c!38608)) b!232291))

(assert (= (and b!232277 res!114089) b!232289))

(assert (= (and b!232289 res!114088) b!232279))

(assert (= (or b!232294 b!232277) bm!21595))

(assert (= (or b!232292 b!232279) bm!21594))

(assert (= (and b!232282 res!114085) b!232287))

(assert (= (and b!232287 c!38607) b!232280))

(assert (= (and b!232287 (not c!38607)) b!232284))

(assert (= (and b!232283 condMapEmpty!10345) mapIsEmpty!10345))

(assert (= (and b!232283 (not condMapEmpty!10345)) mapNonEmpty!10345))

(assert (= (and mapNonEmpty!10345 ((_ is ValueCellFull!2715) mapValue!10345)) b!232295))

(assert (= (and b!232283 ((_ is ValueCellFull!2715) mapDefault!10345)) b!232278))

(assert (= b!232288 b!232283))

(assert (= start!22200 b!232288))

(declare-fun m!253719 () Bool)

(assert (=> b!232288 m!253719))

(declare-fun m!253721 () Bool)

(assert (=> b!232288 m!253721))

(declare-fun m!253723 () Bool)

(assert (=> b!232285 m!253723))

(declare-fun m!253725 () Bool)

(assert (=> bm!21595 m!253725))

(declare-fun m!253727 () Bool)

(assert (=> b!232286 m!253727))

(declare-fun m!253729 () Bool)

(assert (=> b!232281 m!253729))

(declare-fun m!253731 () Bool)

(assert (=> b!232280 m!253731))

(declare-fun m!253733 () Bool)

(assert (=> b!232287 m!253733))

(declare-fun m!253735 () Bool)

(assert (=> b!232287 m!253735))

(declare-fun m!253737 () Bool)

(assert (=> b!232287 m!253737))

(declare-fun m!253739 () Bool)

(assert (=> b!232287 m!253739))

(declare-fun m!253741 () Bool)

(assert (=> b!232287 m!253741))

(declare-fun m!253743 () Bool)

(assert (=> b!232287 m!253743))

(declare-fun m!253745 () Bool)

(assert (=> b!232287 m!253745))

(declare-fun m!253747 () Bool)

(assert (=> b!232287 m!253747))

(declare-fun m!253749 () Bool)

(assert (=> b!232287 m!253749))

(declare-fun m!253751 () Bool)

(assert (=> b!232287 m!253751))

(declare-fun m!253753 () Bool)

(assert (=> b!232287 m!253753))

(declare-fun m!253755 () Bool)

(assert (=> b!232287 m!253755))

(declare-fun m!253757 () Bool)

(assert (=> b!232287 m!253757))

(declare-fun m!253759 () Bool)

(assert (=> b!232287 m!253759))

(declare-fun m!253761 () Bool)

(assert (=> b!232287 m!253761))

(declare-fun m!253763 () Bool)

(assert (=> b!232287 m!253763))

(declare-fun m!253765 () Bool)

(assert (=> b!232287 m!253765))

(assert (=> bm!21594 m!253733))

(declare-fun m!253767 () Bool)

(assert (=> mapNonEmpty!10345 m!253767))

(declare-fun m!253769 () Bool)

(assert (=> b!232293 m!253769))

(declare-fun m!253771 () Bool)

(assert (=> start!22200 m!253771))

(declare-fun m!253773 () Bool)

(assert (=> b!232289 m!253773))

(declare-fun m!253775 () Bool)

(assert (=> b!232282 m!253775))

(declare-fun m!253777 () Bool)

(assert (=> b!232282 m!253777))

(declare-fun m!253779 () Bool)

(assert (=> b!232282 m!253779))

(check-sat (not mapNonEmpty!10345) (not b!232280) (not bm!21594) b_and!13171 (not b!232287) (not start!22200) (not b_next!6255) (not b!232286) tp_is_empty!6117 (not b!232281) (not b!232288) (not b!232282) (not bm!21595) (not b!232293))
(check-sat b_and!13171 (not b_next!6255))
