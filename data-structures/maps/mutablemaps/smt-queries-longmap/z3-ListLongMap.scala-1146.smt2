; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23892 () Bool)

(assert start!23892)

(declare-fun b!250353 () Bool)

(declare-fun b_free!6627 () Bool)

(declare-fun b_next!6627 () Bool)

(assert (=> b!250353 (= b_free!6627 (not b_next!6627))))

(declare-fun tp!23146 () Bool)

(declare-fun b_and!13665 () Bool)

(assert (=> b!250353 (= tp!23146 b_and!13665)))

(declare-fun b!250333 () Bool)

(declare-datatypes ((Unit!7745 0))(
  ( (Unit!7746) )
))
(declare-fun e!162370 () Unit!7745)

(declare-fun Unit!7747 () Unit!7745)

(assert (=> b!250333 (= e!162370 Unit!7747)))

(declare-fun mapNonEmpty!11026 () Bool)

(declare-fun mapRes!11026 () Bool)

(declare-fun tp!23145 () Bool)

(declare-fun e!162363 () Bool)

(assert (=> mapNonEmpty!11026 (= mapRes!11026 (and tp!23145 e!162363))))

(declare-datatypes ((V!8299 0))(
  ( (V!8300 (val!3289 Int)) )
))
(declare-datatypes ((ValueCell!2901 0))(
  ( (ValueCellFull!2901 (v!5350 V!8299)) (EmptyCell!2901) )
))
(declare-datatypes ((array!12294 0))(
  ( (array!12295 (arr!5829 (Array (_ BitVec 32) ValueCell!2901)) (size!6174 (_ BitVec 32))) )
))
(declare-datatypes ((array!12296 0))(
  ( (array!12297 (arr!5830 (Array (_ BitVec 32) (_ BitVec 64))) (size!6175 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3702 0))(
  ( (LongMapFixedSize!3703 (defaultEntry!4628 Int) (mask!10811 (_ BitVec 32)) (extraKeys!4365 (_ BitVec 32)) (zeroValue!4469 V!8299) (minValue!4469 V!8299) (_size!1900 (_ BitVec 32)) (_keys!6764 array!12296) (_values!4611 array!12294) (_vacant!1900 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3702)

(declare-fun mapRest!11026 () (Array (_ BitVec 32) ValueCell!2901))

(declare-fun mapValue!11026 () ValueCell!2901)

(declare-fun mapKey!11026 () (_ BitVec 32))

(assert (=> mapNonEmpty!11026 (= (arr!5829 (_values!4611 thiss!1504)) (store mapRest!11026 mapKey!11026 mapValue!11026))))

(declare-fun res!122626 () Bool)

(declare-fun e!162372 () Bool)

(assert (=> start!23892 (=> (not res!122626) (not e!162372))))

(declare-fun valid!1439 (LongMapFixedSize!3702) Bool)

(assert (=> start!23892 (= res!122626 (valid!1439 thiss!1504))))

(assert (=> start!23892 e!162372))

(declare-fun e!162371 () Bool)

(assert (=> start!23892 e!162371))

(assert (=> start!23892 true))

(declare-fun b!250334 () Bool)

(declare-fun e!162374 () Unit!7745)

(declare-fun Unit!7748 () Unit!7745)

(assert (=> b!250334 (= e!162374 Unit!7748)))

(declare-fun lt!125461 () Unit!7745)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!399 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 64) Int) Unit!7745)

(assert (=> b!250334 (= lt!125461 (lemmaInListMapThenSeekEntryOrOpenFindsIt!399 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 (defaultEntry!4628 thiss!1504)))))

(assert (=> b!250334 false))

(declare-fun mapIsEmpty!11026 () Bool)

(assert (=> mapIsEmpty!11026 mapRes!11026))

(declare-fun b!250335 () Bool)

(declare-fun e!162375 () Bool)

(declare-datatypes ((SeekEntryResult!1131 0))(
  ( (MissingZero!1131 (index!6694 (_ BitVec 32))) (Found!1131 (index!6695 (_ BitVec 32))) (Intermediate!1131 (undefined!1943 Bool) (index!6696 (_ BitVec 32)) (x!24681 (_ BitVec 32))) (Undefined!1131) (MissingVacant!1131 (index!6697 (_ BitVec 32))) )
))
(declare-fun lt!125462 () SeekEntryResult!1131)

(get-info :version)

(assert (=> b!250335 (= e!162375 ((_ is Undefined!1131) lt!125462))))

(declare-fun b!250336 () Bool)

(declare-fun res!122629 () Bool)

(assert (=> b!250336 (=> (not res!122629) (not e!162372))))

(assert (=> b!250336 (= res!122629 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!23519 () Bool)

(declare-fun call!23523 () Bool)

(declare-fun arrayContainsKey!0 (array!12296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23519 (= call!23523 (arrayContainsKey!0 (_keys!6764 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250337 () Bool)

(declare-fun e!162367 () Bool)

(declare-fun e!162369 () Bool)

(assert (=> b!250337 (= e!162367 (and e!162369 mapRes!11026))))

(declare-fun condMapEmpty!11026 () Bool)

(declare-fun mapDefault!11026 () ValueCell!2901)

(assert (=> b!250337 (= condMapEmpty!11026 (= (arr!5829 (_values!4611 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2901)) mapDefault!11026)))))

(declare-fun b!250338 () Bool)

(declare-fun e!162368 () Bool)

(declare-fun e!162366 () Bool)

(assert (=> b!250338 (= e!162368 (not e!162366))))

(declare-fun res!122628 () Bool)

(assert (=> b!250338 (=> res!122628 e!162366)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!250338 (= res!122628 (not (validMask!0 (mask!10811 thiss!1504))))))

(declare-fun lt!125464 () array!12296)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12296 (_ BitVec 32)) Bool)

(assert (=> b!250338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125464 (mask!10811 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!125459 () Unit!7745)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12296 (_ BitVec 32) (_ BitVec 32)) Unit!7745)

(assert (=> b!250338 (= lt!125459 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6764 thiss!1504) index!297 (mask!10811 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12296 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!250338 (= (arrayCountValidKeys!0 lt!125464 #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6764 thiss!1504) #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504)))))))

(declare-fun lt!125465 () Unit!7745)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12296 (_ BitVec 32) (_ BitVec 64)) Unit!7745)

(assert (=> b!250338 (= lt!125465 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6764 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3742 0))(
  ( (Nil!3739) (Cons!3738 (h!4398 (_ BitVec 64)) (t!8783 List!3742)) )
))
(declare-fun arrayNoDuplicates!0 (array!12296 (_ BitVec 32) List!3742) Bool)

(assert (=> b!250338 (arrayNoDuplicates!0 lt!125464 #b00000000000000000000000000000000 Nil!3739)))

(assert (=> b!250338 (= lt!125464 (array!12297 (store (arr!5830 (_keys!6764 thiss!1504)) index!297 key!932) (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun lt!125467 () Unit!7745)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12296 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3742) Unit!7745)

(assert (=> b!250338 (= lt!125467 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6764 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3739))))

(declare-fun lt!125460 () Unit!7745)

(assert (=> b!250338 (= lt!125460 e!162370)))

(declare-fun c!42048 () Bool)

(assert (=> b!250338 (= c!42048 (arrayContainsKey!0 (_keys!6764 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250339 () Bool)

(declare-fun e!162364 () Bool)

(assert (=> b!250339 (= e!162375 e!162364)))

(declare-fun res!122623 () Bool)

(declare-fun call!23522 () Bool)

(assert (=> b!250339 (= res!122623 call!23522)))

(assert (=> b!250339 (=> (not res!122623) (not e!162364))))

(declare-fun b!250340 () Bool)

(declare-fun e!162373 () Bool)

(assert (=> b!250340 (= e!162373 (not call!23523))))

(declare-fun b!250341 () Bool)

(declare-fun e!162365 () Bool)

(assert (=> b!250341 (= e!162372 e!162365)))

(declare-fun res!122621 () Bool)

(assert (=> b!250341 (=> (not res!122621) (not e!162365))))

(assert (=> b!250341 (= res!122621 (or (= lt!125462 (MissingZero!1131 index!297)) (= lt!125462 (MissingVacant!1131 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12296 (_ BitVec 32)) SeekEntryResult!1131)

(assert (=> b!250341 (= lt!125462 (seekEntryOrOpen!0 key!932 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)))))

(declare-fun b!250342 () Bool)

(assert (=> b!250342 (= e!162366 (or (not (= (size!6174 (_values!4611 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10811 thiss!1504)))) (not (= (size!6175 (_keys!6764 thiss!1504)) (size!6174 (_values!4611 thiss!1504)))) (bvsge (mask!10811 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!250343 () Bool)

(declare-fun lt!125458 () Unit!7745)

(assert (=> b!250343 (= e!162374 lt!125458)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!397 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 64) Int) Unit!7745)

(assert (=> b!250343 (= lt!125458 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!397 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 (defaultEntry!4628 thiss!1504)))))

(declare-fun c!42047 () Bool)

(assert (=> b!250343 (= c!42047 ((_ is MissingZero!1131) lt!125462))))

(declare-fun e!162362 () Bool)

(assert (=> b!250343 e!162362))

(declare-fun b!250344 () Bool)

(declare-fun tp_is_empty!6489 () Bool)

(assert (=> b!250344 (= e!162369 tp_is_empty!6489)))

(declare-fun b!250345 () Bool)

(assert (=> b!250345 (= e!162364 (not call!23523))))

(declare-fun b!250346 () Bool)

(assert (=> b!250346 (= e!162365 e!162368)))

(declare-fun res!122627 () Bool)

(assert (=> b!250346 (=> (not res!122627) (not e!162368))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!250346 (= res!122627 (inRange!0 index!297 (mask!10811 thiss!1504)))))

(declare-fun lt!125463 () Unit!7745)

(assert (=> b!250346 (= lt!125463 e!162374)))

(declare-fun c!42049 () Bool)

(declare-datatypes ((tuple2!4836 0))(
  ( (tuple2!4837 (_1!2428 (_ BitVec 64)) (_2!2428 V!8299)) )
))
(declare-datatypes ((List!3743 0))(
  ( (Nil!3740) (Cons!3739 (h!4399 tuple2!4836) (t!8784 List!3743)) )
))
(declare-datatypes ((ListLongMap!3763 0))(
  ( (ListLongMap!3764 (toList!1897 List!3743)) )
))
(declare-fun contains!1812 (ListLongMap!3763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1420 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 32) Int) ListLongMap!3763)

(assert (=> b!250346 (= c!42049 (contains!1812 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)) key!932))))

(declare-fun b!250347 () Bool)

(declare-fun Unit!7749 () Unit!7745)

(assert (=> b!250347 (= e!162370 Unit!7749)))

(declare-fun lt!125466 () Unit!7745)

(declare-fun lemmaArrayContainsKeyThenInListMap!200 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 64) (_ BitVec 32) Int) Unit!7745)

(assert (=> b!250347 (= lt!125466 (lemmaArrayContainsKeyThenInListMap!200 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(assert (=> b!250347 false))

(declare-fun b!250348 () Bool)

(declare-fun res!122625 () Bool)

(assert (=> b!250348 (=> (not res!122625) (not e!162373))))

(assert (=> b!250348 (= res!122625 call!23522)))

(assert (=> b!250348 (= e!162362 e!162373)))

(declare-fun b!250349 () Bool)

(assert (=> b!250349 (= e!162363 tp_is_empty!6489)))

(declare-fun b!250350 () Bool)

(declare-fun res!122622 () Bool)

(assert (=> b!250350 (= res!122622 (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6697 lt!125462)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250350 (=> (not res!122622) (not e!162364))))

(declare-fun b!250351 () Bool)

(declare-fun c!42050 () Bool)

(assert (=> b!250351 (= c!42050 ((_ is MissingVacant!1131) lt!125462))))

(assert (=> b!250351 (= e!162362 e!162375)))

(declare-fun b!250352 () Bool)

(declare-fun res!122624 () Bool)

(assert (=> b!250352 (=> (not res!122624) (not e!162373))))

(assert (=> b!250352 (= res!122624 (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6694 lt!125462)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun array_inv!3837 (array!12296) Bool)

(declare-fun array_inv!3838 (array!12294) Bool)

(assert (=> b!250353 (= e!162371 (and tp!23146 tp_is_empty!6489 (array_inv!3837 (_keys!6764 thiss!1504)) (array_inv!3838 (_values!4611 thiss!1504)) e!162367))))

(declare-fun bm!23520 () Bool)

(assert (=> bm!23520 (= call!23522 (inRange!0 (ite c!42047 (index!6694 lt!125462) (index!6697 lt!125462)) (mask!10811 thiss!1504)))))

(assert (= (and start!23892 res!122626) b!250336))

(assert (= (and b!250336 res!122629) b!250341))

(assert (= (and b!250341 res!122621) b!250346))

(assert (= (and b!250346 c!42049) b!250334))

(assert (= (and b!250346 (not c!42049)) b!250343))

(assert (= (and b!250343 c!42047) b!250348))

(assert (= (and b!250343 (not c!42047)) b!250351))

(assert (= (and b!250348 res!122625) b!250352))

(assert (= (and b!250352 res!122624) b!250340))

(assert (= (and b!250351 c!42050) b!250339))

(assert (= (and b!250351 (not c!42050)) b!250335))

(assert (= (and b!250339 res!122623) b!250350))

(assert (= (and b!250350 res!122622) b!250345))

(assert (= (or b!250348 b!250339) bm!23520))

(assert (= (or b!250340 b!250345) bm!23519))

(assert (= (and b!250346 res!122627) b!250338))

(assert (= (and b!250338 c!42048) b!250347))

(assert (= (and b!250338 (not c!42048)) b!250333))

(assert (= (and b!250338 (not res!122628)) b!250342))

(assert (= (and b!250337 condMapEmpty!11026) mapIsEmpty!11026))

(assert (= (and b!250337 (not condMapEmpty!11026)) mapNonEmpty!11026))

(assert (= (and mapNonEmpty!11026 ((_ is ValueCellFull!2901) mapValue!11026)) b!250349))

(assert (= (and b!250337 ((_ is ValueCellFull!2901) mapDefault!11026)) b!250344))

(assert (= b!250353 b!250337))

(assert (= start!23892 b!250353))

(declare-fun m!266803 () Bool)

(assert (=> b!250347 m!266803))

(declare-fun m!266805 () Bool)

(assert (=> bm!23519 m!266805))

(declare-fun m!266807 () Bool)

(assert (=> b!250353 m!266807))

(declare-fun m!266809 () Bool)

(assert (=> b!250353 m!266809))

(declare-fun m!266811 () Bool)

(assert (=> start!23892 m!266811))

(declare-fun m!266813 () Bool)

(assert (=> b!250350 m!266813))

(declare-fun m!266815 () Bool)

(assert (=> b!250334 m!266815))

(declare-fun m!266817 () Bool)

(assert (=> b!250346 m!266817))

(declare-fun m!266819 () Bool)

(assert (=> b!250346 m!266819))

(assert (=> b!250346 m!266819))

(declare-fun m!266821 () Bool)

(assert (=> b!250346 m!266821))

(declare-fun m!266823 () Bool)

(assert (=> b!250338 m!266823))

(assert (=> b!250338 m!266805))

(declare-fun m!266825 () Bool)

(assert (=> b!250338 m!266825))

(declare-fun m!266827 () Bool)

(assert (=> b!250338 m!266827))

(declare-fun m!266829 () Bool)

(assert (=> b!250338 m!266829))

(declare-fun m!266831 () Bool)

(assert (=> b!250338 m!266831))

(declare-fun m!266833 () Bool)

(assert (=> b!250338 m!266833))

(declare-fun m!266835 () Bool)

(assert (=> b!250338 m!266835))

(declare-fun m!266837 () Bool)

(assert (=> b!250338 m!266837))

(declare-fun m!266839 () Bool)

(assert (=> b!250338 m!266839))

(declare-fun m!266841 () Bool)

(assert (=> b!250341 m!266841))

(declare-fun m!266843 () Bool)

(assert (=> b!250343 m!266843))

(declare-fun m!266845 () Bool)

(assert (=> mapNonEmpty!11026 m!266845))

(declare-fun m!266847 () Bool)

(assert (=> b!250352 m!266847))

(declare-fun m!266849 () Bool)

(assert (=> bm!23520 m!266849))

(check-sat tp_is_empty!6489 (not bm!23520) (not b!250341) (not b!250346) (not b_next!6627) (not mapNonEmpty!11026) (not b!250338) (not b!250343) (not start!23892) (not b!250353) b_and!13665 (not b!250347) (not bm!23519) (not b!250334))
(check-sat b_and!13665 (not b_next!6627))
(get-model)

(declare-fun d!60847 () Bool)

(assert (=> d!60847 (= (inRange!0 (ite c!42047 (index!6694 lt!125462) (index!6697 lt!125462)) (mask!10811 thiss!1504)) (and (bvsge (ite c!42047 (index!6694 lt!125462) (index!6697 lt!125462)) #b00000000000000000000000000000000) (bvslt (ite c!42047 (index!6694 lt!125462) (index!6697 lt!125462)) (bvadd (mask!10811 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23520 d!60847))

(declare-fun b!250425 () Bool)

(declare-fun e!162426 () (_ BitVec 32))

(declare-fun call!23532 () (_ BitVec 32))

(assert (=> b!250425 (= e!162426 (bvadd #b00000000000000000000000000000001 call!23532))))

(declare-fun d!60849 () Bool)

(declare-fun lt!125500 () (_ BitVec 32))

(assert (=> d!60849 (and (bvsge lt!125500 #b00000000000000000000000000000000) (bvsle lt!125500 (bvsub (size!6175 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!162427 () (_ BitVec 32))

(assert (=> d!60849 (= lt!125500 e!162427)))

(declare-fun c!42068 () Bool)

(assert (=> d!60849 (= c!42068 (bvsge #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))

(assert (=> d!60849 (and (bvsle #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6175 (_keys!6764 thiss!1504)) (size!6175 (_keys!6764 thiss!1504))))))

(assert (=> d!60849 (= (arrayCountValidKeys!0 (_keys!6764 thiss!1504) #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) lt!125500)))

(declare-fun b!250426 () Bool)

(assert (=> b!250426 (= e!162426 call!23532)))

(declare-fun b!250427 () Bool)

(assert (=> b!250427 (= e!162427 e!162426)))

(declare-fun c!42067 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!250427 (= c!42067 (validKeyInArray!0 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23529 () Bool)

(assert (=> bm!23529 (= call!23532 (arrayCountValidKeys!0 (_keys!6764 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun b!250428 () Bool)

(assert (=> b!250428 (= e!162427 #b00000000000000000000000000000000)))

(assert (= (and d!60849 c!42068) b!250428))

(assert (= (and d!60849 (not c!42068)) b!250427))

(assert (= (and b!250427 c!42067) b!250425))

(assert (= (and b!250427 (not c!42067)) b!250426))

(assert (= (or b!250425 b!250426) bm!23529))

(declare-fun m!266899 () Bool)

(assert (=> b!250427 m!266899))

(assert (=> b!250427 m!266899))

(declare-fun m!266901 () Bool)

(assert (=> b!250427 m!266901))

(declare-fun m!266903 () Bool)

(assert (=> bm!23529 m!266903))

(assert (=> b!250338 d!60849))

(declare-fun b!250439 () Bool)

(declare-fun e!162437 () Bool)

(declare-fun e!162439 () Bool)

(assert (=> b!250439 (= e!162437 e!162439)))

(declare-fun c!42071 () Bool)

(assert (=> b!250439 (= c!42071 (validKeyInArray!0 (select (arr!5830 lt!125464) #b00000000000000000000000000000000)))))

(declare-fun d!60851 () Bool)

(declare-fun res!122663 () Bool)

(declare-fun e!162438 () Bool)

(assert (=> d!60851 (=> res!122663 e!162438)))

(assert (=> d!60851 (= res!122663 (bvsge #b00000000000000000000000000000000 (size!6175 lt!125464)))))

(assert (=> d!60851 (= (arrayNoDuplicates!0 lt!125464 #b00000000000000000000000000000000 Nil!3739) e!162438)))

(declare-fun b!250440 () Bool)

(declare-fun call!23535 () Bool)

(assert (=> b!250440 (= e!162439 call!23535)))

(declare-fun b!250441 () Bool)

(declare-fun e!162436 () Bool)

(declare-fun contains!1814 (List!3742 (_ BitVec 64)) Bool)

(assert (=> b!250441 (= e!162436 (contains!1814 Nil!3739 (select (arr!5830 lt!125464) #b00000000000000000000000000000000)))))

(declare-fun bm!23532 () Bool)

(assert (=> bm!23532 (= call!23535 (arrayNoDuplicates!0 lt!125464 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42071 (Cons!3738 (select (arr!5830 lt!125464) #b00000000000000000000000000000000) Nil!3739) Nil!3739)))))

(declare-fun b!250442 () Bool)

(assert (=> b!250442 (= e!162439 call!23535)))

(declare-fun b!250443 () Bool)

(assert (=> b!250443 (= e!162438 e!162437)))

(declare-fun res!122665 () Bool)

(assert (=> b!250443 (=> (not res!122665) (not e!162437))))

(assert (=> b!250443 (= res!122665 (not e!162436))))

(declare-fun res!122664 () Bool)

(assert (=> b!250443 (=> (not res!122664) (not e!162436))))

(assert (=> b!250443 (= res!122664 (validKeyInArray!0 (select (arr!5830 lt!125464) #b00000000000000000000000000000000)))))

(assert (= (and d!60851 (not res!122663)) b!250443))

(assert (= (and b!250443 res!122664) b!250441))

(assert (= (and b!250443 res!122665) b!250439))

(assert (= (and b!250439 c!42071) b!250440))

(assert (= (and b!250439 (not c!42071)) b!250442))

(assert (= (or b!250440 b!250442) bm!23532))

(declare-fun m!266905 () Bool)

(assert (=> b!250439 m!266905))

(assert (=> b!250439 m!266905))

(declare-fun m!266907 () Bool)

(assert (=> b!250439 m!266907))

(assert (=> b!250441 m!266905))

(assert (=> b!250441 m!266905))

(declare-fun m!266909 () Bool)

(assert (=> b!250441 m!266909))

(assert (=> bm!23532 m!266905))

(declare-fun m!266911 () Bool)

(assert (=> bm!23532 m!266911))

(assert (=> b!250443 m!266905))

(assert (=> b!250443 m!266905))

(assert (=> b!250443 m!266907))

(assert (=> b!250338 d!60851))

(declare-fun d!60853 () Bool)

(declare-fun e!162442 () Bool)

(assert (=> d!60853 e!162442))

(declare-fun res!122668 () Bool)

(assert (=> d!60853 (=> (not res!122668) (not e!162442))))

(assert (=> d!60853 (= res!122668 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6175 (_keys!6764 thiss!1504)))))))

(declare-fun lt!125503 () Unit!7745)

(declare-fun choose!41 (array!12296 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3742) Unit!7745)

(assert (=> d!60853 (= lt!125503 (choose!41 (_keys!6764 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3739))))

(assert (=> d!60853 (bvslt (size!6175 (_keys!6764 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60853 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6764 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3739) lt!125503)))

(declare-fun b!250446 () Bool)

(assert (=> b!250446 (= e!162442 (arrayNoDuplicates!0 (array!12297 (store (arr!5830 (_keys!6764 thiss!1504)) index!297 key!932) (size!6175 (_keys!6764 thiss!1504))) #b00000000000000000000000000000000 Nil!3739))))

(assert (= (and d!60853 res!122668) b!250446))

(declare-fun m!266913 () Bool)

(assert (=> d!60853 m!266913))

(assert (=> b!250446 m!266835))

(declare-fun m!266915 () Bool)

(assert (=> b!250446 m!266915))

(assert (=> b!250338 d!60853))

(declare-fun b!250455 () Bool)

(declare-fun res!122677 () Bool)

(declare-fun e!162448 () Bool)

(assert (=> b!250455 (=> (not res!122677) (not e!162448))))

(assert (=> b!250455 (= res!122677 (not (validKeyInArray!0 (select (arr!5830 (_keys!6764 thiss!1504)) index!297))))))

(declare-fun b!250458 () Bool)

(declare-fun e!162447 () Bool)

(assert (=> b!250458 (= e!162447 (= (arrayCountValidKeys!0 (array!12297 (store (arr!5830 (_keys!6764 thiss!1504)) index!297 key!932) (size!6175 (_keys!6764 thiss!1504))) #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6764 thiss!1504) #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!250456 () Bool)

(declare-fun res!122680 () Bool)

(assert (=> b!250456 (=> (not res!122680) (not e!162448))))

(assert (=> b!250456 (= res!122680 (validKeyInArray!0 key!932))))

(declare-fun d!60855 () Bool)

(assert (=> d!60855 e!162447))

(declare-fun res!122679 () Bool)

(assert (=> d!60855 (=> (not res!122679) (not e!162447))))

(assert (=> d!60855 (= res!122679 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6175 (_keys!6764 thiss!1504)))))))

(declare-fun lt!125506 () Unit!7745)

(declare-fun choose!1 (array!12296 (_ BitVec 32) (_ BitVec 64)) Unit!7745)

(assert (=> d!60855 (= lt!125506 (choose!1 (_keys!6764 thiss!1504) index!297 key!932))))

(assert (=> d!60855 e!162448))

(declare-fun res!122678 () Bool)

(assert (=> d!60855 (=> (not res!122678) (not e!162448))))

(assert (=> d!60855 (= res!122678 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6175 (_keys!6764 thiss!1504)))))))

(assert (=> d!60855 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6764 thiss!1504) index!297 key!932) lt!125506)))

(declare-fun b!250457 () Bool)

(assert (=> b!250457 (= e!162448 (bvslt (size!6175 (_keys!6764 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!60855 res!122678) b!250455))

(assert (= (and b!250455 res!122677) b!250456))

(assert (= (and b!250456 res!122680) b!250457))

(assert (= (and d!60855 res!122679) b!250458))

(declare-fun m!266917 () Bool)

(assert (=> b!250455 m!266917))

(assert (=> b!250455 m!266917))

(declare-fun m!266919 () Bool)

(assert (=> b!250455 m!266919))

(assert (=> b!250458 m!266835))

(declare-fun m!266921 () Bool)

(assert (=> b!250458 m!266921))

(assert (=> b!250458 m!266837))

(declare-fun m!266923 () Bool)

(assert (=> b!250456 m!266923))

(declare-fun m!266925 () Bool)

(assert (=> d!60855 m!266925))

(assert (=> b!250338 d!60855))

(declare-fun b!250459 () Bool)

(declare-fun e!162449 () (_ BitVec 32))

(declare-fun call!23536 () (_ BitVec 32))

(assert (=> b!250459 (= e!162449 (bvadd #b00000000000000000000000000000001 call!23536))))

(declare-fun d!60857 () Bool)

(declare-fun lt!125507 () (_ BitVec 32))

(assert (=> d!60857 (and (bvsge lt!125507 #b00000000000000000000000000000000) (bvsle lt!125507 (bvsub (size!6175 lt!125464) #b00000000000000000000000000000000)))))

(declare-fun e!162450 () (_ BitVec 32))

(assert (=> d!60857 (= lt!125507 e!162450)))

(declare-fun c!42073 () Bool)

(assert (=> d!60857 (= c!42073 (bvsge #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))

(assert (=> d!60857 (and (bvsle #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6175 (_keys!6764 thiss!1504)) (size!6175 lt!125464)))))

(assert (=> d!60857 (= (arrayCountValidKeys!0 lt!125464 #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) lt!125507)))

(declare-fun b!250460 () Bool)

(assert (=> b!250460 (= e!162449 call!23536)))

(declare-fun b!250461 () Bool)

(assert (=> b!250461 (= e!162450 e!162449)))

(declare-fun c!42072 () Bool)

(assert (=> b!250461 (= c!42072 (validKeyInArray!0 (select (arr!5830 lt!125464) #b00000000000000000000000000000000)))))

(declare-fun bm!23533 () Bool)

(assert (=> bm!23533 (= call!23536 (arrayCountValidKeys!0 lt!125464 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun b!250462 () Bool)

(assert (=> b!250462 (= e!162450 #b00000000000000000000000000000000)))

(assert (= (and d!60857 c!42073) b!250462))

(assert (= (and d!60857 (not c!42073)) b!250461))

(assert (= (and b!250461 c!42072) b!250459))

(assert (= (and b!250461 (not c!42072)) b!250460))

(assert (= (or b!250459 b!250460) bm!23533))

(assert (=> b!250461 m!266905))

(assert (=> b!250461 m!266905))

(assert (=> b!250461 m!266907))

(declare-fun m!266927 () Bool)

(assert (=> bm!23533 m!266927))

(assert (=> b!250338 d!60857))

(declare-fun d!60859 () Bool)

(declare-fun res!122685 () Bool)

(declare-fun e!162455 () Bool)

(assert (=> d!60859 (=> res!122685 e!162455)))

(assert (=> d!60859 (= res!122685 (= (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60859 (= (arrayContainsKey!0 (_keys!6764 thiss!1504) key!932 #b00000000000000000000000000000000) e!162455)))

(declare-fun b!250467 () Bool)

(declare-fun e!162456 () Bool)

(assert (=> b!250467 (= e!162455 e!162456)))

(declare-fun res!122686 () Bool)

(assert (=> b!250467 (=> (not res!122686) (not e!162456))))

(assert (=> b!250467 (= res!122686 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun b!250468 () Bool)

(assert (=> b!250468 (= e!162456 (arrayContainsKey!0 (_keys!6764 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60859 (not res!122685)) b!250467))

(assert (= (and b!250467 res!122686) b!250468))

(assert (=> d!60859 m!266899))

(declare-fun m!266929 () Bool)

(assert (=> b!250468 m!266929))

(assert (=> b!250338 d!60859))

(declare-fun d!60861 () Bool)

(declare-fun e!162459 () Bool)

(assert (=> d!60861 e!162459))

(declare-fun res!122689 () Bool)

(assert (=> d!60861 (=> (not res!122689) (not e!162459))))

(assert (=> d!60861 (= res!122689 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6175 (_keys!6764 thiss!1504)))))))

(declare-fun lt!125510 () Unit!7745)

(declare-fun choose!102 ((_ BitVec 64) array!12296 (_ BitVec 32) (_ BitVec 32)) Unit!7745)

(assert (=> d!60861 (= lt!125510 (choose!102 key!932 (_keys!6764 thiss!1504) index!297 (mask!10811 thiss!1504)))))

(assert (=> d!60861 (validMask!0 (mask!10811 thiss!1504))))

(assert (=> d!60861 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6764 thiss!1504) index!297 (mask!10811 thiss!1504)) lt!125510)))

(declare-fun b!250471 () Bool)

(assert (=> b!250471 (= e!162459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12297 (store (arr!5830 (_keys!6764 thiss!1504)) index!297 key!932) (size!6175 (_keys!6764 thiss!1504))) (mask!10811 thiss!1504)))))

(assert (= (and d!60861 res!122689) b!250471))

(declare-fun m!266931 () Bool)

(assert (=> d!60861 m!266931))

(assert (=> d!60861 m!266823))

(assert (=> b!250471 m!266835))

(declare-fun m!266933 () Bool)

(assert (=> b!250471 m!266933))

(assert (=> b!250338 d!60861))

(declare-fun d!60863 () Bool)

(assert (=> d!60863 (= (validMask!0 (mask!10811 thiss!1504)) (and (or (= (mask!10811 thiss!1504) #b00000000000000000000000000000111) (= (mask!10811 thiss!1504) #b00000000000000000000000000001111) (= (mask!10811 thiss!1504) #b00000000000000000000000000011111) (= (mask!10811 thiss!1504) #b00000000000000000000000000111111) (= (mask!10811 thiss!1504) #b00000000000000000000000001111111) (= (mask!10811 thiss!1504) #b00000000000000000000000011111111) (= (mask!10811 thiss!1504) #b00000000000000000000000111111111) (= (mask!10811 thiss!1504) #b00000000000000000000001111111111) (= (mask!10811 thiss!1504) #b00000000000000000000011111111111) (= (mask!10811 thiss!1504) #b00000000000000000000111111111111) (= (mask!10811 thiss!1504) #b00000000000000000001111111111111) (= (mask!10811 thiss!1504) #b00000000000000000011111111111111) (= (mask!10811 thiss!1504) #b00000000000000000111111111111111) (= (mask!10811 thiss!1504) #b00000000000000001111111111111111) (= (mask!10811 thiss!1504) #b00000000000000011111111111111111) (= (mask!10811 thiss!1504) #b00000000000000111111111111111111) (= (mask!10811 thiss!1504) #b00000000000001111111111111111111) (= (mask!10811 thiss!1504) #b00000000000011111111111111111111) (= (mask!10811 thiss!1504) #b00000000000111111111111111111111) (= (mask!10811 thiss!1504) #b00000000001111111111111111111111) (= (mask!10811 thiss!1504) #b00000000011111111111111111111111) (= (mask!10811 thiss!1504) #b00000000111111111111111111111111) (= (mask!10811 thiss!1504) #b00000001111111111111111111111111) (= (mask!10811 thiss!1504) #b00000011111111111111111111111111) (= (mask!10811 thiss!1504) #b00000111111111111111111111111111) (= (mask!10811 thiss!1504) #b00001111111111111111111111111111) (= (mask!10811 thiss!1504) #b00011111111111111111111111111111) (= (mask!10811 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10811 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!250338 d!60863))

(declare-fun b!250480 () Bool)

(declare-fun e!162468 () Bool)

(declare-fun call!23539 () Bool)

(assert (=> b!250480 (= e!162468 call!23539)))

(declare-fun b!250481 () Bool)

(declare-fun e!162467 () Bool)

(assert (=> b!250481 (= e!162467 e!162468)))

(declare-fun c!42076 () Bool)

(assert (=> b!250481 (= c!42076 (validKeyInArray!0 (select (arr!5830 lt!125464) #b00000000000000000000000000000000)))))

(declare-fun bm!23536 () Bool)

(assert (=> bm!23536 (= call!23539 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!125464 (mask!10811 thiss!1504)))))

(declare-fun b!250482 () Bool)

(declare-fun e!162466 () Bool)

(assert (=> b!250482 (= e!162468 e!162466)))

(declare-fun lt!125518 () (_ BitVec 64))

(assert (=> b!250482 (= lt!125518 (select (arr!5830 lt!125464) #b00000000000000000000000000000000))))

(declare-fun lt!125517 () Unit!7745)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12296 (_ BitVec 64) (_ BitVec 32)) Unit!7745)

(assert (=> b!250482 (= lt!125517 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!125464 lt!125518 #b00000000000000000000000000000000))))

(assert (=> b!250482 (arrayContainsKey!0 lt!125464 lt!125518 #b00000000000000000000000000000000)))

(declare-fun lt!125519 () Unit!7745)

(assert (=> b!250482 (= lt!125519 lt!125517)))

(declare-fun res!122695 () Bool)

(assert (=> b!250482 (= res!122695 (= (seekEntryOrOpen!0 (select (arr!5830 lt!125464) #b00000000000000000000000000000000) lt!125464 (mask!10811 thiss!1504)) (Found!1131 #b00000000000000000000000000000000)))))

(assert (=> b!250482 (=> (not res!122695) (not e!162466))))

(declare-fun b!250483 () Bool)

(assert (=> b!250483 (= e!162466 call!23539)))

(declare-fun d!60865 () Bool)

(declare-fun res!122694 () Bool)

(assert (=> d!60865 (=> res!122694 e!162467)))

(assert (=> d!60865 (= res!122694 (bvsge #b00000000000000000000000000000000 (size!6175 lt!125464)))))

(assert (=> d!60865 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125464 (mask!10811 thiss!1504)) e!162467)))

(assert (= (and d!60865 (not res!122694)) b!250481))

(assert (= (and b!250481 c!42076) b!250482))

(assert (= (and b!250481 (not c!42076)) b!250480))

(assert (= (and b!250482 res!122695) b!250483))

(assert (= (or b!250483 b!250480) bm!23536))

(assert (=> b!250481 m!266905))

(assert (=> b!250481 m!266905))

(assert (=> b!250481 m!266907))

(declare-fun m!266935 () Bool)

(assert (=> bm!23536 m!266935))

(assert (=> b!250482 m!266905))

(declare-fun m!266937 () Bool)

(assert (=> b!250482 m!266937))

(declare-fun m!266939 () Bool)

(assert (=> b!250482 m!266939))

(assert (=> b!250482 m!266905))

(declare-fun m!266941 () Bool)

(assert (=> b!250482 m!266941))

(assert (=> b!250338 d!60865))

(declare-fun d!60867 () Bool)

(declare-fun e!162471 () Bool)

(assert (=> d!60867 e!162471))

(declare-fun res!122701 () Bool)

(assert (=> d!60867 (=> (not res!122701) (not e!162471))))

(declare-fun lt!125524 () SeekEntryResult!1131)

(assert (=> d!60867 (= res!122701 ((_ is Found!1131) lt!125524))))

(assert (=> d!60867 (= lt!125524 (seekEntryOrOpen!0 key!932 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)))))

(declare-fun lt!125525 () Unit!7745)

(declare-fun choose!1193 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 64) Int) Unit!7745)

(assert (=> d!60867 (= lt!125525 (choose!1193 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 (defaultEntry!4628 thiss!1504)))))

(assert (=> d!60867 (validMask!0 (mask!10811 thiss!1504))))

(assert (=> d!60867 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!399 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 (defaultEntry!4628 thiss!1504)) lt!125525)))

(declare-fun b!250488 () Bool)

(declare-fun res!122700 () Bool)

(assert (=> b!250488 (=> (not res!122700) (not e!162471))))

(assert (=> b!250488 (= res!122700 (inRange!0 (index!6695 lt!125524) (mask!10811 thiss!1504)))))

(declare-fun b!250489 () Bool)

(assert (=> b!250489 (= e!162471 (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6695 lt!125524)) key!932))))

(assert (=> b!250489 (and (bvsge (index!6695 lt!125524) #b00000000000000000000000000000000) (bvslt (index!6695 lt!125524) (size!6175 (_keys!6764 thiss!1504))))))

(assert (= (and d!60867 res!122701) b!250488))

(assert (= (and b!250488 res!122700) b!250489))

(assert (=> d!60867 m!266841))

(declare-fun m!266943 () Bool)

(assert (=> d!60867 m!266943))

(assert (=> d!60867 m!266823))

(declare-fun m!266945 () Bool)

(assert (=> b!250488 m!266945))

(declare-fun m!266947 () Bool)

(assert (=> b!250489 m!266947))

(assert (=> b!250334 d!60867))

(declare-fun b!250506 () Bool)

(declare-fun e!162481 () Bool)

(declare-fun call!23545 () Bool)

(assert (=> b!250506 (= e!162481 (not call!23545))))

(declare-fun b!250507 () Bool)

(declare-fun e!162483 () Bool)

(declare-fun lt!125531 () SeekEntryResult!1131)

(assert (=> b!250507 (= e!162483 ((_ is Undefined!1131) lt!125531))))

(declare-fun b!250508 () Bool)

(declare-fun res!122710 () Bool)

(assert (=> b!250508 (=> (not res!122710) (not e!162481))))

(declare-fun call!23544 () Bool)

(assert (=> b!250508 (= res!122710 call!23544)))

(assert (=> b!250508 (= e!162483 e!162481)))

(declare-fun b!250509 () Bool)

(declare-fun e!162482 () Bool)

(declare-fun e!162480 () Bool)

(assert (=> b!250509 (= e!162482 e!162480)))

(declare-fun res!122712 () Bool)

(assert (=> b!250509 (= res!122712 call!23544)))

(assert (=> b!250509 (=> (not res!122712) (not e!162480))))

(declare-fun bm!23541 () Bool)

(assert (=> bm!23541 (= call!23545 (arrayContainsKey!0 (_keys!6764 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250510 () Bool)

(assert (=> b!250510 (= e!162482 e!162483)))

(declare-fun c!42081 () Bool)

(assert (=> b!250510 (= c!42081 ((_ is MissingVacant!1131) lt!125531))))

(declare-fun d!60869 () Bool)

(assert (=> d!60869 e!162482))

(declare-fun c!42082 () Bool)

(assert (=> d!60869 (= c!42082 ((_ is MissingZero!1131) lt!125531))))

(assert (=> d!60869 (= lt!125531 (seekEntryOrOpen!0 key!932 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)))))

(declare-fun lt!125530 () Unit!7745)

(declare-fun choose!1194 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 64) Int) Unit!7745)

(assert (=> d!60869 (= lt!125530 (choose!1194 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 (defaultEntry!4628 thiss!1504)))))

(assert (=> d!60869 (validMask!0 (mask!10811 thiss!1504))))

(assert (=> d!60869 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!397 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 (defaultEntry!4628 thiss!1504)) lt!125530)))

(declare-fun b!250511 () Bool)

(assert (=> b!250511 (and (bvsge (index!6694 lt!125531) #b00000000000000000000000000000000) (bvslt (index!6694 lt!125531) (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun res!122713 () Bool)

(assert (=> b!250511 (= res!122713 (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6694 lt!125531)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250511 (=> (not res!122713) (not e!162480))))

(declare-fun bm!23542 () Bool)

(assert (=> bm!23542 (= call!23544 (inRange!0 (ite c!42082 (index!6694 lt!125531) (index!6697 lt!125531)) (mask!10811 thiss!1504)))))

(declare-fun b!250512 () Bool)

(assert (=> b!250512 (= e!162480 (not call!23545))))

(declare-fun b!250513 () Bool)

(declare-fun res!122711 () Bool)

(assert (=> b!250513 (=> (not res!122711) (not e!162481))))

(assert (=> b!250513 (= res!122711 (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6697 lt!125531)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!250513 (and (bvsge (index!6697 lt!125531) #b00000000000000000000000000000000) (bvslt (index!6697 lt!125531) (size!6175 (_keys!6764 thiss!1504))))))

(assert (= (and d!60869 c!42082) b!250509))

(assert (= (and d!60869 (not c!42082)) b!250510))

(assert (= (and b!250509 res!122712) b!250511))

(assert (= (and b!250511 res!122713) b!250512))

(assert (= (and b!250510 c!42081) b!250508))

(assert (= (and b!250510 (not c!42081)) b!250507))

(assert (= (and b!250508 res!122710) b!250513))

(assert (= (and b!250513 res!122711) b!250506))

(assert (= (or b!250509 b!250508) bm!23542))

(assert (= (or b!250512 b!250506) bm!23541))

(declare-fun m!266949 () Bool)

(assert (=> bm!23542 m!266949))

(declare-fun m!266951 () Bool)

(assert (=> b!250511 m!266951))

(declare-fun m!266953 () Bool)

(assert (=> b!250513 m!266953))

(assert (=> d!60869 m!266841))

(declare-fun m!266955 () Bool)

(assert (=> d!60869 m!266955))

(assert (=> d!60869 m!266823))

(assert (=> bm!23541 m!266805))

(assert (=> b!250343 d!60869))

(declare-fun d!60871 () Bool)

(assert (=> d!60871 (= (array_inv!3837 (_keys!6764 thiss!1504)) (bvsge (size!6175 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250353 d!60871))

(declare-fun d!60873 () Bool)

(assert (=> d!60873 (= (array_inv!3838 (_values!4611 thiss!1504)) (bvsge (size!6174 (_values!4611 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250353 d!60873))

(assert (=> bm!23519 d!60859))

(declare-fun d!60875 () Bool)

(assert (=> d!60875 (contains!1812 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)) key!932)))

(declare-fun lt!125534 () Unit!7745)

(declare-fun choose!1195 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 64) (_ BitVec 32) Int) Unit!7745)

(assert (=> d!60875 (= lt!125534 (choose!1195 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(assert (=> d!60875 (validMask!0 (mask!10811 thiss!1504))))

(assert (=> d!60875 (= (lemmaArrayContainsKeyThenInListMap!200 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)) lt!125534)))

(declare-fun bs!8984 () Bool)

(assert (= bs!8984 d!60875))

(assert (=> bs!8984 m!266819))

(assert (=> bs!8984 m!266819))

(assert (=> bs!8984 m!266821))

(declare-fun m!266957 () Bool)

(assert (=> bs!8984 m!266957))

(assert (=> bs!8984 m!266823))

(assert (=> b!250347 d!60875))

(declare-fun d!60877 () Bool)

(assert (=> d!60877 (= (inRange!0 index!297 (mask!10811 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10811 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!250346 d!60877))

(declare-fun d!60879 () Bool)

(declare-fun e!162489 () Bool)

(assert (=> d!60879 e!162489))

(declare-fun res!122716 () Bool)

(assert (=> d!60879 (=> res!122716 e!162489)))

(declare-fun lt!125544 () Bool)

(assert (=> d!60879 (= res!122716 (not lt!125544))))

(declare-fun lt!125543 () Bool)

(assert (=> d!60879 (= lt!125544 lt!125543)))

(declare-fun lt!125546 () Unit!7745)

(declare-fun e!162488 () Unit!7745)

(assert (=> d!60879 (= lt!125546 e!162488)))

(declare-fun c!42085 () Bool)

(assert (=> d!60879 (= c!42085 lt!125543)))

(declare-fun containsKey!289 (List!3743 (_ BitVec 64)) Bool)

(assert (=> d!60879 (= lt!125543 (containsKey!289 (toList!1897 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504))) key!932))))

(assert (=> d!60879 (= (contains!1812 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)) key!932) lt!125544)))

(declare-fun b!250520 () Bool)

(declare-fun lt!125545 () Unit!7745)

(assert (=> b!250520 (= e!162488 lt!125545)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!238 (List!3743 (_ BitVec 64)) Unit!7745)

(assert (=> b!250520 (= lt!125545 (lemmaContainsKeyImpliesGetValueByKeyDefined!238 (toList!1897 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504))) key!932))))

(declare-datatypes ((Option!303 0))(
  ( (Some!302 (v!5352 V!8299)) (None!301) )
))
(declare-fun isDefined!239 (Option!303) Bool)

(declare-fun getValueByKey!297 (List!3743 (_ BitVec 64)) Option!303)

(assert (=> b!250520 (isDefined!239 (getValueByKey!297 (toList!1897 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504))) key!932))))

(declare-fun b!250521 () Bool)

(declare-fun Unit!7752 () Unit!7745)

(assert (=> b!250521 (= e!162488 Unit!7752)))

(declare-fun b!250522 () Bool)

(assert (=> b!250522 (= e!162489 (isDefined!239 (getValueByKey!297 (toList!1897 (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504))) key!932)))))

(assert (= (and d!60879 c!42085) b!250520))

(assert (= (and d!60879 (not c!42085)) b!250521))

(assert (= (and d!60879 (not res!122716)) b!250522))

(declare-fun m!266959 () Bool)

(assert (=> d!60879 m!266959))

(declare-fun m!266961 () Bool)

(assert (=> b!250520 m!266961))

(declare-fun m!266963 () Bool)

(assert (=> b!250520 m!266963))

(assert (=> b!250520 m!266963))

(declare-fun m!266965 () Bool)

(assert (=> b!250520 m!266965))

(assert (=> b!250522 m!266963))

(assert (=> b!250522 m!266963))

(assert (=> b!250522 m!266965))

(assert (=> b!250346 d!60879))

(declare-fun b!250565 () Bool)

(declare-fun e!162523 () Bool)

(assert (=> b!250565 (= e!162523 (validKeyInArray!0 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250566 () Bool)

(declare-fun e!162520 () Bool)

(declare-fun lt!125594 () ListLongMap!3763)

(declare-fun apply!240 (ListLongMap!3763 (_ BitVec 64)) V!8299)

(assert (=> b!250566 (= e!162520 (= (apply!240 lt!125594 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4469 thiss!1504)))))

(declare-fun b!250567 () Bool)

(declare-fun res!122738 () Bool)

(declare-fun e!162521 () Bool)

(assert (=> b!250567 (=> (not res!122738) (not e!162521))))

(declare-fun e!162519 () Bool)

(assert (=> b!250567 (= res!122738 e!162519)))

(declare-fun c!42101 () Bool)

(assert (=> b!250567 (= c!42101 (not (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!23557 () Bool)

(declare-fun call!23561 () ListLongMap!3763)

(declare-fun call!23565 () ListLongMap!3763)

(assert (=> bm!23557 (= call!23561 call!23565)))

(declare-fun b!250568 () Bool)

(declare-fun e!162517 () ListLongMap!3763)

(declare-fun call!23563 () ListLongMap!3763)

(assert (=> b!250568 (= e!162517 call!23563)))

(declare-fun bm!23558 () Bool)

(declare-fun call!23562 () Bool)

(assert (=> bm!23558 (= call!23562 (contains!1812 lt!125594 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!250569 () Bool)

(declare-fun e!162516 () Unit!7745)

(declare-fun lt!125605 () Unit!7745)

(assert (=> b!250569 (= e!162516 lt!125605)))

(declare-fun lt!125597 () ListLongMap!3763)

(declare-fun getCurrentListMapNoExtraKeys!559 (array!12296 array!12294 (_ BitVec 32) (_ BitVec 32) V!8299 V!8299 (_ BitVec 32) Int) ListLongMap!3763)

(assert (=> b!250569 (= lt!125597 (getCurrentListMapNoExtraKeys!559 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(declare-fun lt!125598 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125598 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125602 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125602 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125599 () Unit!7745)

(declare-fun addStillContains!216 (ListLongMap!3763 (_ BitVec 64) V!8299 (_ BitVec 64)) Unit!7745)

(assert (=> b!250569 (= lt!125599 (addStillContains!216 lt!125597 lt!125598 (zeroValue!4469 thiss!1504) lt!125602))))

(declare-fun +!662 (ListLongMap!3763 tuple2!4836) ListLongMap!3763)

(assert (=> b!250569 (contains!1812 (+!662 lt!125597 (tuple2!4837 lt!125598 (zeroValue!4469 thiss!1504))) lt!125602)))

(declare-fun lt!125591 () Unit!7745)

(assert (=> b!250569 (= lt!125591 lt!125599)))

(declare-fun lt!125606 () ListLongMap!3763)

(assert (=> b!250569 (= lt!125606 (getCurrentListMapNoExtraKeys!559 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(declare-fun lt!125592 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125604 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125604 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125609 () Unit!7745)

(declare-fun addApplyDifferent!216 (ListLongMap!3763 (_ BitVec 64) V!8299 (_ BitVec 64)) Unit!7745)

(assert (=> b!250569 (= lt!125609 (addApplyDifferent!216 lt!125606 lt!125592 (minValue!4469 thiss!1504) lt!125604))))

(assert (=> b!250569 (= (apply!240 (+!662 lt!125606 (tuple2!4837 lt!125592 (minValue!4469 thiss!1504))) lt!125604) (apply!240 lt!125606 lt!125604))))

(declare-fun lt!125610 () Unit!7745)

(assert (=> b!250569 (= lt!125610 lt!125609)))

(declare-fun lt!125612 () ListLongMap!3763)

(assert (=> b!250569 (= lt!125612 (getCurrentListMapNoExtraKeys!559 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(declare-fun lt!125596 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125596 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125600 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125600 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!125601 () Unit!7745)

(assert (=> b!250569 (= lt!125601 (addApplyDifferent!216 lt!125612 lt!125596 (zeroValue!4469 thiss!1504) lt!125600))))

(assert (=> b!250569 (= (apply!240 (+!662 lt!125612 (tuple2!4837 lt!125596 (zeroValue!4469 thiss!1504))) lt!125600) (apply!240 lt!125612 lt!125600))))

(declare-fun lt!125593 () Unit!7745)

(assert (=> b!250569 (= lt!125593 lt!125601)))

(declare-fun lt!125611 () ListLongMap!3763)

(assert (=> b!250569 (= lt!125611 (getCurrentListMapNoExtraKeys!559 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(declare-fun lt!125595 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125595 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!125603 () (_ BitVec 64))

(assert (=> b!250569 (= lt!125603 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!250569 (= lt!125605 (addApplyDifferent!216 lt!125611 lt!125595 (minValue!4469 thiss!1504) lt!125603))))

(assert (=> b!250569 (= (apply!240 (+!662 lt!125611 (tuple2!4837 lt!125595 (minValue!4469 thiss!1504))) lt!125603) (apply!240 lt!125611 lt!125603))))

(declare-fun b!250570 () Bool)

(declare-fun call!23566 () Bool)

(assert (=> b!250570 (= e!162519 (not call!23566))))

(declare-fun b!250571 () Bool)

(declare-fun e!162525 () Bool)

(assert (=> b!250571 (= e!162525 (not call!23562))))

(declare-fun bm!23559 () Bool)

(declare-fun call!23564 () ListLongMap!3763)

(assert (=> bm!23559 (= call!23564 call!23561)))

(declare-fun c!42099 () Bool)

(declare-fun bm!23560 () Bool)

(declare-fun call!23560 () ListLongMap!3763)

(declare-fun c!42103 () Bool)

(assert (=> bm!23560 (= call!23560 (+!662 (ite c!42103 call!23565 (ite c!42099 call!23561 call!23564)) (ite (or c!42103 c!42099) (tuple2!4837 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4469 thiss!1504)) (tuple2!4837 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4469 thiss!1504)))))))

(declare-fun b!250572 () Bool)

(declare-fun e!162522 () Bool)

(assert (=> b!250572 (= e!162522 (validKeyInArray!0 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!250573 () Bool)

(declare-fun e!162524 () ListLongMap!3763)

(assert (=> b!250573 (= e!162524 call!23564)))

(declare-fun b!250574 () Bool)

(declare-fun e!162526 () Bool)

(declare-fun e!162518 () Bool)

(assert (=> b!250574 (= e!162526 e!162518)))

(declare-fun res!122741 () Bool)

(assert (=> b!250574 (=> (not res!122741) (not e!162518))))

(assert (=> b!250574 (= res!122741 (contains!1812 lt!125594 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!250574 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun b!250575 () Bool)

(declare-fun e!162527 () ListLongMap!3763)

(assert (=> b!250575 (= e!162527 (+!662 call!23560 (tuple2!4837 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4469 thiss!1504))))))

(declare-fun b!250576 () Bool)

(assert (=> b!250576 (= e!162519 e!162520)))

(declare-fun res!122743 () Bool)

(assert (=> b!250576 (= res!122743 call!23566)))

(assert (=> b!250576 (=> (not res!122743) (not e!162520))))

(declare-fun b!250577 () Bool)

(declare-fun get!2998 (ValueCell!2901 V!8299) V!8299)

(declare-fun dynLambda!578 (Int (_ BitVec 64)) V!8299)

(assert (=> b!250577 (= e!162518 (= (apply!240 lt!125594 (select (arr!5830 (_keys!6764 thiss!1504)) #b00000000000000000000000000000000)) (get!2998 (select (arr!5829 (_values!4611 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!578 (defaultEntry!4628 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!250577 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6174 (_values!4611 thiss!1504))))))

(assert (=> b!250577 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun d!60881 () Bool)

(assert (=> d!60881 e!162521))

(declare-fun res!122736 () Bool)

(assert (=> d!60881 (=> (not res!122736) (not e!162521))))

(assert (=> d!60881 (= res!122736 (or (bvsge #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))))

(declare-fun lt!125607 () ListLongMap!3763)

(assert (=> d!60881 (= lt!125594 lt!125607)))

(declare-fun lt!125608 () Unit!7745)

(assert (=> d!60881 (= lt!125608 e!162516)))

(declare-fun c!42100 () Bool)

(assert (=> d!60881 (= c!42100 e!162523)))

(declare-fun res!122739 () Bool)

(assert (=> d!60881 (=> (not res!122739) (not e!162523))))

(assert (=> d!60881 (= res!122739 (bvslt #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))

(assert (=> d!60881 (= lt!125607 e!162527)))

(assert (=> d!60881 (= c!42103 (and (not (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60881 (validMask!0 (mask!10811 thiss!1504))))

(assert (=> d!60881 (= (getCurrentListMap!1420 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)) lt!125594)))

(declare-fun b!250578 () Bool)

(declare-fun Unit!7753 () Unit!7745)

(assert (=> b!250578 (= e!162516 Unit!7753)))

(declare-fun bm!23561 () Bool)

(assert (=> bm!23561 (= call!23565 (getCurrentListMapNoExtraKeys!559 (_keys!6764 thiss!1504) (_values!4611 thiss!1504) (mask!10811 thiss!1504) (extraKeys!4365 thiss!1504) (zeroValue!4469 thiss!1504) (minValue!4469 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4628 thiss!1504)))))

(declare-fun b!250579 () Bool)

(declare-fun c!42102 () Bool)

(assert (=> b!250579 (= c!42102 (and (not (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!250579 (= e!162517 e!162524)))

(declare-fun b!250580 () Bool)

(declare-fun res!122737 () Bool)

(assert (=> b!250580 (=> (not res!122737) (not e!162521))))

(assert (=> b!250580 (= res!122737 e!162526)))

(declare-fun res!122740 () Bool)

(assert (=> b!250580 (=> res!122740 e!162526)))

(assert (=> b!250580 (= res!122740 (not e!162522))))

(declare-fun res!122742 () Bool)

(assert (=> b!250580 (=> (not res!122742) (not e!162522))))

(assert (=> b!250580 (= res!122742 (bvslt #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))))))

(declare-fun b!250581 () Bool)

(declare-fun e!162528 () Bool)

(assert (=> b!250581 (= e!162525 e!162528)))

(declare-fun res!122735 () Bool)

(assert (=> b!250581 (= res!122735 call!23562)))

(assert (=> b!250581 (=> (not res!122735) (not e!162528))))

(declare-fun bm!23562 () Bool)

(assert (=> bm!23562 (= call!23566 (contains!1812 lt!125594 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23563 () Bool)

(assert (=> bm!23563 (= call!23563 call!23560)))

(declare-fun b!250582 () Bool)

(assert (=> b!250582 (= e!162524 call!23563)))

(declare-fun b!250583 () Bool)

(assert (=> b!250583 (= e!162527 e!162517)))

(assert (=> b!250583 (= c!42099 (and (not (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!250584 () Bool)

(assert (=> b!250584 (= e!162521 e!162525)))

(declare-fun c!42098 () Bool)

(assert (=> b!250584 (= c!42098 (not (= (bvand (extraKeys!4365 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!250585 () Bool)

(assert (=> b!250585 (= e!162528 (= (apply!240 lt!125594 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4469 thiss!1504)))))

(assert (= (and d!60881 c!42103) b!250575))

(assert (= (and d!60881 (not c!42103)) b!250583))

(assert (= (and b!250583 c!42099) b!250568))

(assert (= (and b!250583 (not c!42099)) b!250579))

(assert (= (and b!250579 c!42102) b!250582))

(assert (= (and b!250579 (not c!42102)) b!250573))

(assert (= (or b!250582 b!250573) bm!23559))

(assert (= (or b!250568 bm!23559) bm!23557))

(assert (= (or b!250568 b!250582) bm!23563))

(assert (= (or b!250575 bm!23557) bm!23561))

(assert (= (or b!250575 bm!23563) bm!23560))

(assert (= (and d!60881 res!122739) b!250565))

(assert (= (and d!60881 c!42100) b!250569))

(assert (= (and d!60881 (not c!42100)) b!250578))

(assert (= (and d!60881 res!122736) b!250580))

(assert (= (and b!250580 res!122742) b!250572))

(assert (= (and b!250580 (not res!122740)) b!250574))

(assert (= (and b!250574 res!122741) b!250577))

(assert (= (and b!250580 res!122737) b!250567))

(assert (= (and b!250567 c!42101) b!250576))

(assert (= (and b!250567 (not c!42101)) b!250570))

(assert (= (and b!250576 res!122743) b!250566))

(assert (= (or b!250576 b!250570) bm!23562))

(assert (= (and b!250567 res!122738) b!250584))

(assert (= (and b!250584 c!42098) b!250581))

(assert (= (and b!250584 (not c!42098)) b!250571))

(assert (= (and b!250581 res!122735) b!250585))

(assert (= (or b!250581 b!250571) bm!23558))

(declare-fun b_lambda!8117 () Bool)

(assert (=> (not b_lambda!8117) (not b!250577)))

(declare-fun t!8787 () Bool)

(declare-fun tb!3001 () Bool)

(assert (=> (and b!250353 (= (defaultEntry!4628 thiss!1504) (defaultEntry!4628 thiss!1504)) t!8787) tb!3001))

(declare-fun result!5309 () Bool)

(assert (=> tb!3001 (= result!5309 tp_is_empty!6489)))

(assert (=> b!250577 t!8787))

(declare-fun b_and!13669 () Bool)

(assert (= b_and!13665 (and (=> t!8787 result!5309) b_and!13669)))

(assert (=> b!250565 m!266899))

(assert (=> b!250565 m!266899))

(assert (=> b!250565 m!266901))

(declare-fun m!266967 () Bool)

(assert (=> bm!23561 m!266967))

(declare-fun m!266969 () Bool)

(assert (=> b!250566 m!266969))

(declare-fun m!266971 () Bool)

(assert (=> b!250575 m!266971))

(declare-fun m!266973 () Bool)

(assert (=> bm!23562 m!266973))

(assert (=> d!60881 m!266823))

(declare-fun m!266975 () Bool)

(assert (=> b!250585 m!266975))

(assert (=> b!250574 m!266899))

(assert (=> b!250574 m!266899))

(declare-fun m!266977 () Bool)

(assert (=> b!250574 m!266977))

(declare-fun m!266979 () Bool)

(assert (=> b!250569 m!266979))

(declare-fun m!266981 () Bool)

(assert (=> b!250569 m!266981))

(declare-fun m!266983 () Bool)

(assert (=> b!250569 m!266983))

(declare-fun m!266985 () Bool)

(assert (=> b!250569 m!266985))

(assert (=> b!250569 m!266899))

(declare-fun m!266987 () Bool)

(assert (=> b!250569 m!266987))

(declare-fun m!266989 () Bool)

(assert (=> b!250569 m!266989))

(declare-fun m!266991 () Bool)

(assert (=> b!250569 m!266991))

(assert (=> b!250569 m!266987))

(assert (=> b!250569 m!266979))

(declare-fun m!266993 () Bool)

(assert (=> b!250569 m!266993))

(declare-fun m!266995 () Bool)

(assert (=> b!250569 m!266995))

(assert (=> b!250569 m!266985))

(declare-fun m!266997 () Bool)

(assert (=> b!250569 m!266997))

(declare-fun m!266999 () Bool)

(assert (=> b!250569 m!266999))

(assert (=> b!250569 m!266995))

(declare-fun m!267001 () Bool)

(assert (=> b!250569 m!267001))

(assert (=> b!250569 m!266967))

(declare-fun m!267003 () Bool)

(assert (=> b!250569 m!267003))

(declare-fun m!267005 () Bool)

(assert (=> b!250569 m!267005))

(declare-fun m!267007 () Bool)

(assert (=> b!250569 m!267007))

(assert (=> b!250577 m!266899))

(declare-fun m!267009 () Bool)

(assert (=> b!250577 m!267009))

(declare-fun m!267011 () Bool)

(assert (=> b!250577 m!267011))

(declare-fun m!267013 () Bool)

(assert (=> b!250577 m!267013))

(assert (=> b!250577 m!267009))

(assert (=> b!250577 m!267011))

(assert (=> b!250577 m!266899))

(declare-fun m!267015 () Bool)

(assert (=> b!250577 m!267015))

(declare-fun m!267017 () Bool)

(assert (=> bm!23560 m!267017))

(declare-fun m!267019 () Bool)

(assert (=> bm!23558 m!267019))

(assert (=> b!250572 m!266899))

(assert (=> b!250572 m!266899))

(assert (=> b!250572 m!266901))

(assert (=> b!250346 d!60881))

(declare-fun lt!125620 () SeekEntryResult!1131)

(declare-fun e!162537 () SeekEntryResult!1131)

(declare-fun b!250600 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12296 (_ BitVec 32)) SeekEntryResult!1131)

(assert (=> b!250600 (= e!162537 (seekKeyOrZeroReturnVacant!0 (x!24681 lt!125620) (index!6696 lt!125620) (index!6696 lt!125620) key!932 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)))))

(declare-fun b!250601 () Bool)

(declare-fun c!42110 () Bool)

(declare-fun lt!125619 () (_ BitVec 64))

(assert (=> b!250601 (= c!42110 (= lt!125619 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162536 () SeekEntryResult!1131)

(assert (=> b!250601 (= e!162536 e!162537)))

(declare-fun b!250602 () Bool)

(assert (=> b!250602 (= e!162536 (Found!1131 (index!6696 lt!125620)))))

(declare-fun b!250603 () Bool)

(declare-fun e!162535 () SeekEntryResult!1131)

(assert (=> b!250603 (= e!162535 Undefined!1131)))

(declare-fun b!250604 () Bool)

(assert (=> b!250604 (= e!162535 e!162536)))

(assert (=> b!250604 (= lt!125619 (select (arr!5830 (_keys!6764 thiss!1504)) (index!6696 lt!125620)))))

(declare-fun c!42111 () Bool)

(assert (=> b!250604 (= c!42111 (= lt!125619 key!932))))

(declare-fun d!60883 () Bool)

(declare-fun lt!125621 () SeekEntryResult!1131)

(assert (=> d!60883 (and (or ((_ is Undefined!1131) lt!125621) (not ((_ is Found!1131) lt!125621)) (and (bvsge (index!6695 lt!125621) #b00000000000000000000000000000000) (bvslt (index!6695 lt!125621) (size!6175 (_keys!6764 thiss!1504))))) (or ((_ is Undefined!1131) lt!125621) ((_ is Found!1131) lt!125621) (not ((_ is MissingZero!1131) lt!125621)) (and (bvsge (index!6694 lt!125621) #b00000000000000000000000000000000) (bvslt (index!6694 lt!125621) (size!6175 (_keys!6764 thiss!1504))))) (or ((_ is Undefined!1131) lt!125621) ((_ is Found!1131) lt!125621) ((_ is MissingZero!1131) lt!125621) (not ((_ is MissingVacant!1131) lt!125621)) (and (bvsge (index!6697 lt!125621) #b00000000000000000000000000000000) (bvslt (index!6697 lt!125621) (size!6175 (_keys!6764 thiss!1504))))) (or ((_ is Undefined!1131) lt!125621) (ite ((_ is Found!1131) lt!125621) (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6695 lt!125621)) key!932) (ite ((_ is MissingZero!1131) lt!125621) (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6694 lt!125621)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1131) lt!125621) (= (select (arr!5830 (_keys!6764 thiss!1504)) (index!6697 lt!125621)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!60883 (= lt!125621 e!162535)))

(declare-fun c!42112 () Bool)

(assert (=> d!60883 (= c!42112 (and ((_ is Intermediate!1131) lt!125620) (undefined!1943 lt!125620)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12296 (_ BitVec 32)) SeekEntryResult!1131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60883 (= lt!125620 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10811 thiss!1504)) key!932 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)))))

(assert (=> d!60883 (validMask!0 (mask!10811 thiss!1504))))

(assert (=> d!60883 (= (seekEntryOrOpen!0 key!932 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)) lt!125621)))

(declare-fun b!250605 () Bool)

(assert (=> b!250605 (= e!162537 (MissingZero!1131 (index!6696 lt!125620)))))

(assert (= (and d!60883 c!42112) b!250603))

(assert (= (and d!60883 (not c!42112)) b!250604))

(assert (= (and b!250604 c!42111) b!250602))

(assert (= (and b!250604 (not c!42111)) b!250601))

(assert (= (and b!250601 c!42110) b!250605))

(assert (= (and b!250601 (not c!42110)) b!250600))

(declare-fun m!267021 () Bool)

(assert (=> b!250600 m!267021))

(declare-fun m!267023 () Bool)

(assert (=> b!250604 m!267023))

(declare-fun m!267025 () Bool)

(assert (=> d!60883 m!267025))

(declare-fun m!267027 () Bool)

(assert (=> d!60883 m!267027))

(declare-fun m!267029 () Bool)

(assert (=> d!60883 m!267029))

(assert (=> d!60883 m!266823))

(assert (=> d!60883 m!267029))

(declare-fun m!267031 () Bool)

(assert (=> d!60883 m!267031))

(declare-fun m!267033 () Bool)

(assert (=> d!60883 m!267033))

(assert (=> b!250341 d!60883))

(declare-fun d!60885 () Bool)

(declare-fun res!122750 () Bool)

(declare-fun e!162540 () Bool)

(assert (=> d!60885 (=> (not res!122750) (not e!162540))))

(declare-fun simpleValid!262 (LongMapFixedSize!3702) Bool)

(assert (=> d!60885 (= res!122750 (simpleValid!262 thiss!1504))))

(assert (=> d!60885 (= (valid!1439 thiss!1504) e!162540)))

(declare-fun b!250612 () Bool)

(declare-fun res!122751 () Bool)

(assert (=> b!250612 (=> (not res!122751) (not e!162540))))

(assert (=> b!250612 (= res!122751 (= (arrayCountValidKeys!0 (_keys!6764 thiss!1504) #b00000000000000000000000000000000 (size!6175 (_keys!6764 thiss!1504))) (_size!1900 thiss!1504)))))

(declare-fun b!250613 () Bool)

(declare-fun res!122752 () Bool)

(assert (=> b!250613 (=> (not res!122752) (not e!162540))))

(assert (=> b!250613 (= res!122752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6764 thiss!1504) (mask!10811 thiss!1504)))))

(declare-fun b!250614 () Bool)

(assert (=> b!250614 (= e!162540 (arrayNoDuplicates!0 (_keys!6764 thiss!1504) #b00000000000000000000000000000000 Nil!3739))))

(assert (= (and d!60885 res!122750) b!250612))

(assert (= (and b!250612 res!122751) b!250613))

(assert (= (and b!250613 res!122752) b!250614))

(declare-fun m!267035 () Bool)

(assert (=> d!60885 m!267035))

(assert (=> b!250612 m!266837))

(declare-fun m!267037 () Bool)

(assert (=> b!250613 m!267037))

(declare-fun m!267039 () Bool)

(assert (=> b!250614 m!267039))

(assert (=> start!23892 d!60885))

(declare-fun b!250622 () Bool)

(declare-fun e!162545 () Bool)

(assert (=> b!250622 (= e!162545 tp_is_empty!6489)))

(declare-fun mapIsEmpty!11032 () Bool)

(declare-fun mapRes!11032 () Bool)

(assert (=> mapIsEmpty!11032 mapRes!11032))

(declare-fun condMapEmpty!11032 () Bool)

(declare-fun mapDefault!11032 () ValueCell!2901)

(assert (=> mapNonEmpty!11026 (= condMapEmpty!11032 (= mapRest!11026 ((as const (Array (_ BitVec 32) ValueCell!2901)) mapDefault!11032)))))

(assert (=> mapNonEmpty!11026 (= tp!23145 (and e!162545 mapRes!11032))))

(declare-fun mapNonEmpty!11032 () Bool)

(declare-fun tp!23155 () Bool)

(declare-fun e!162546 () Bool)

(assert (=> mapNonEmpty!11032 (= mapRes!11032 (and tp!23155 e!162546))))

(declare-fun mapKey!11032 () (_ BitVec 32))

(declare-fun mapValue!11032 () ValueCell!2901)

(declare-fun mapRest!11032 () (Array (_ BitVec 32) ValueCell!2901))

(assert (=> mapNonEmpty!11032 (= mapRest!11026 (store mapRest!11032 mapKey!11032 mapValue!11032))))

(declare-fun b!250621 () Bool)

(assert (=> b!250621 (= e!162546 tp_is_empty!6489)))

(assert (= (and mapNonEmpty!11026 condMapEmpty!11032) mapIsEmpty!11032))

(assert (= (and mapNonEmpty!11026 (not condMapEmpty!11032)) mapNonEmpty!11032))

(assert (= (and mapNonEmpty!11032 ((_ is ValueCellFull!2901) mapValue!11032)) b!250621))

(assert (= (and mapNonEmpty!11026 ((_ is ValueCellFull!2901) mapDefault!11032)) b!250622))

(declare-fun m!267041 () Bool)

(assert (=> mapNonEmpty!11032 m!267041))

(declare-fun b_lambda!8119 () Bool)

(assert (= b_lambda!8117 (or (and b!250353 b_free!6627) b_lambda!8119)))

(check-sat (not b!250471) (not b!250455) (not b!250565) (not bm!23541) (not b_lambda!8119) (not d!60879) (not b!250482) (not bm!23533) (not b!250446) (not bm!23542) (not d!60881) (not b!250468) (not b!250566) b_and!13669 (not d!60869) (not b!250461) tp_is_empty!6489 (not mapNonEmpty!11032) (not bm!23536) (not bm!23529) (not d!60861) (not b!250569) (not bm!23558) (not d!60883) (not b!250481) (not b!250427) (not b!250600) (not b!250575) (not d!60853) (not b!250439) (not b!250585) (not b!250577) (not b!250520) (not b_next!6627) (not d!60875) (not b!250458) (not bm!23562) (not b!250612) (not b!250574) (not bm!23561) (not b!250613) (not b!250441) (not bm!23560) (not b!250443) (not b!250522) (not b!250488) (not d!60855) (not b!250572) (not b!250456) (not b!250614) (not d!60867) (not bm!23532) (not d!60885))
(check-sat b_and!13669 (not b_next!6627))
