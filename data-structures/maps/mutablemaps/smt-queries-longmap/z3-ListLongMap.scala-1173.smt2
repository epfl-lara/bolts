; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25198 () Bool)

(assert start!25198)

(declare-fun b!262441 () Bool)

(declare-fun b_free!6789 () Bool)

(declare-fun b_next!6789 () Bool)

(assert (=> b!262441 (= b_free!6789 (not b_next!6789))))

(declare-fun tp!23700 () Bool)

(declare-fun b_and!13945 () Bool)

(assert (=> b!262441 (= tp!23700 b_and!13945)))

(declare-fun b!262427 () Bool)

(declare-datatypes ((Unit!8172 0))(
  ( (Unit!8173) )
))
(declare-fun e!170075 () Unit!8172)

(declare-fun Unit!8174 () Unit!8172)

(assert (=> b!262427 (= e!170075 Unit!8174)))

(declare-fun lt!132711 () Unit!8172)

(declare-datatypes ((V!8515 0))(
  ( (V!8516 (val!3370 Int)) )
))
(declare-datatypes ((ValueCell!2982 0))(
  ( (ValueCellFull!2982 (v!5494 V!8515)) (EmptyCell!2982) )
))
(declare-datatypes ((array!12660 0))(
  ( (array!12661 (arr!5991 (Array (_ BitVec 32) ValueCell!2982)) (size!6342 (_ BitVec 32))) )
))
(declare-datatypes ((array!12662 0))(
  ( (array!12663 (arr!5992 (Array (_ BitVec 32) (_ BitVec 64))) (size!6343 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3864 0))(
  ( (LongMapFixedSize!3865 (defaultEntry!4835 Int) (mask!11194 (_ BitVec 32)) (extraKeys!4572 (_ BitVec 32)) (zeroValue!4676 V!8515) (minValue!4676 V!8515) (_size!1981 (_ BitVec 32)) (_keys!7025 array!12662) (_values!4818 array!12660) (_vacant!1981 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3864)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!454 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 64) Int) Unit!8172)

(assert (=> b!262427 (= lt!132711 (lemmaInListMapThenSeekEntryOrOpenFindsIt!454 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 (defaultEntry!4835 thiss!1504)))))

(assert (=> b!262427 false))

(declare-fun b!262428 () Bool)

(declare-fun res!128193 () Bool)

(declare-fun e!170080 () Bool)

(assert (=> b!262428 (=> (not res!128193) (not e!170080))))

(declare-datatypes ((SeekEntryResult!1207 0))(
  ( (MissingZero!1207 (index!6998 (_ BitVec 32))) (Found!1207 (index!6999 (_ BitVec 32))) (Intermediate!1207 (undefined!2019 Bool) (index!7000 (_ BitVec 32)) (x!25231 (_ BitVec 32))) (Undefined!1207) (MissingVacant!1207 (index!7001 (_ BitVec 32))) )
))
(declare-fun lt!132704 () SeekEntryResult!1207)

(assert (=> b!262428 (= res!128193 (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!6998 lt!132704)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262429 () Bool)

(declare-fun e!170083 () Bool)

(get-info :version)

(assert (=> b!262429 (= e!170083 ((_ is Undefined!1207) lt!132704))))

(declare-fun b!262430 () Bool)

(declare-fun e!170086 () Bool)

(assert (=> b!262430 (= e!170083 e!170086)))

(declare-fun res!128198 () Bool)

(declare-fun call!25082 () Bool)

(assert (=> b!262430 (= res!128198 call!25082)))

(assert (=> b!262430 (=> (not res!128198) (not e!170086))))

(declare-fun b!262431 () Bool)

(declare-fun res!128202 () Bool)

(declare-fun e!170078 () Bool)

(assert (=> b!262431 (=> res!128202 e!170078)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!262431 (= res!128202 (or (not (= (size!6342 (_values!4818 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11194 thiss!1504)))) (not (= (size!6343 (_keys!7025 thiss!1504)) (size!6342 (_values!4818 thiss!1504)))) (bvslt (mask!11194 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4572 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4572 thiss!1504) #b00000000000000000000000000000011) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6343 (_keys!7025 thiss!1504)))))))

(declare-fun b!262432 () Bool)

(declare-fun res!128199 () Bool)

(assert (=> b!262432 (=> (not res!128199) (not e!170080))))

(assert (=> b!262432 (= res!128199 call!25082)))

(declare-fun e!170088 () Bool)

(assert (=> b!262432 (= e!170088 e!170080)))

(declare-fun b!262433 () Bool)

(declare-fun e!170077 () Unit!8172)

(declare-fun Unit!8175 () Unit!8172)

(assert (=> b!262433 (= e!170077 Unit!8175)))

(declare-fun b!262434 () Bool)

(declare-fun call!25083 () Bool)

(assert (=> b!262434 (= e!170086 (not call!25083))))

(declare-fun b!262435 () Bool)

(declare-fun e!170079 () Bool)

(assert (=> b!262435 (= e!170079 (not e!170078))))

(declare-fun res!128200 () Bool)

(assert (=> b!262435 (=> res!128200 e!170078)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!262435 (= res!128200 (not (validMask!0 (mask!11194 thiss!1504))))))

(declare-fun lt!132701 () array!12662)

(declare-fun arrayCountValidKeys!0 (array!12662 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!262435 (= (arrayCountValidKeys!0 lt!132701 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132706 () Unit!8172)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12662 (_ BitVec 32)) Unit!8172)

(assert (=> b!262435 (= lt!132706 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132701 index!297))))

(declare-fun arrayContainsKey!0 (array!12662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!262435 (arrayContainsKey!0 lt!132701 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132705 () Unit!8172)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12662 (_ BitVec 64) (_ BitVec 32)) Unit!8172)

(assert (=> b!262435 (= lt!132705 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132701 key!932 index!297))))

(declare-fun v!346 () V!8515)

(declare-datatypes ((tuple2!4968 0))(
  ( (tuple2!4969 (_1!2494 (_ BitVec 64)) (_2!2494 V!8515)) )
))
(declare-datatypes ((List!3867 0))(
  ( (Nil!3864) (Cons!3863 (h!4529 tuple2!4968) (t!8950 List!3867)) )
))
(declare-datatypes ((ListLongMap!3895 0))(
  ( (ListLongMap!3896 (toList!1963 List!3867)) )
))
(declare-fun lt!132708 () ListLongMap!3895)

(declare-fun +!703 (ListLongMap!3895 tuple2!4968) ListLongMap!3895)

(declare-fun getCurrentListMap!1486 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 32) Int) ListLongMap!3895)

(assert (=> b!262435 (= (+!703 lt!132708 (tuple2!4969 key!932 v!346)) (getCurrentListMap!1486 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132710 () Unit!8172)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!118 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 32) (_ BitVec 64) V!8515 Int) Unit!8172)

(assert (=> b!262435 (= lt!132710 (lemmaAddValidKeyToArrayThenAddPairToListMap!118 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) index!297 key!932 v!346 (defaultEntry!4835 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12662 (_ BitVec 32)) Bool)

(assert (=> b!262435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132701 (mask!11194 thiss!1504))))

(declare-fun lt!132700 () Unit!8172)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12662 (_ BitVec 32) (_ BitVec 32)) Unit!8172)

(assert (=> b!262435 (= lt!132700 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7025 thiss!1504) index!297 (mask!11194 thiss!1504)))))

(assert (=> b!262435 (= (arrayCountValidKeys!0 lt!132701 #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7025 thiss!1504) #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504)))))))

(declare-fun lt!132707 () Unit!8172)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12662 (_ BitVec 32) (_ BitVec 64)) Unit!8172)

(assert (=> b!262435 (= lt!132707 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7025 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3868 0))(
  ( (Nil!3865) (Cons!3864 (h!4530 (_ BitVec 64)) (t!8951 List!3868)) )
))
(declare-fun arrayNoDuplicates!0 (array!12662 (_ BitVec 32) List!3868) Bool)

(assert (=> b!262435 (arrayNoDuplicates!0 lt!132701 #b00000000000000000000000000000000 Nil!3865)))

(assert (=> b!262435 (= lt!132701 (array!12663 (store (arr!5992 (_keys!7025 thiss!1504)) index!297 key!932) (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun lt!132699 () Unit!8172)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3868) Unit!8172)

(assert (=> b!262435 (= lt!132699 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7025 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3865))))

(declare-fun lt!132703 () Unit!8172)

(assert (=> b!262435 (= lt!132703 e!170077)))

(declare-fun c!44711 () Bool)

(assert (=> b!262435 (= c!44711 (arrayContainsKey!0 (_keys!7025 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!25079 () Bool)

(declare-fun c!44710 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!25079 (= call!25082 (inRange!0 (ite c!44710 (index!6998 lt!132704) (index!7001 lt!132704)) (mask!11194 thiss!1504)))))

(declare-fun bm!25080 () Bool)

(assert (=> bm!25080 (= call!25083 (arrayContainsKey!0 (_keys!7025 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262436 () Bool)

(assert (=> b!262436 (= e!170080 (not call!25083))))

(declare-fun b!262437 () Bool)

(declare-fun e!170085 () Bool)

(declare-fun e!170087 () Bool)

(declare-fun mapRes!11338 () Bool)

(assert (=> b!262437 (= e!170085 (and e!170087 mapRes!11338))))

(declare-fun condMapEmpty!11338 () Bool)

(declare-fun mapDefault!11338 () ValueCell!2982)

(assert (=> b!262437 (= condMapEmpty!11338 (= (arr!5991 (_values!4818 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2982)) mapDefault!11338)))))

(declare-fun b!262438 () Bool)

(declare-fun Unit!8176 () Unit!8172)

(assert (=> b!262438 (= e!170077 Unit!8176)))

(declare-fun lt!132712 () Unit!8172)

(declare-fun lemmaArrayContainsKeyThenInListMap!260 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 64) (_ BitVec 32) Int) Unit!8172)

(assert (=> b!262438 (= lt!132712 (lemmaArrayContainsKeyThenInListMap!260 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(assert (=> b!262438 false))

(declare-fun b!262439 () Bool)

(declare-fun res!128196 () Bool)

(declare-fun e!170082 () Bool)

(assert (=> b!262439 (=> (not res!128196) (not e!170082))))

(assert (=> b!262439 (= res!128196 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!262440 () Bool)

(declare-fun e!170074 () Bool)

(assert (=> b!262440 (= e!170074 e!170079)))

(declare-fun res!128201 () Bool)

(assert (=> b!262440 (=> (not res!128201) (not e!170079))))

(assert (=> b!262440 (= res!128201 (inRange!0 index!297 (mask!11194 thiss!1504)))))

(declare-fun lt!132702 () Unit!8172)

(assert (=> b!262440 (= lt!132702 e!170075)))

(declare-fun c!44708 () Bool)

(declare-fun contains!1906 (ListLongMap!3895 (_ BitVec 64)) Bool)

(assert (=> b!262440 (= c!44708 (contains!1906 lt!132708 key!932))))

(assert (=> b!262440 (= lt!132708 (getCurrentListMap!1486 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun e!170076 () Bool)

(declare-fun tp_is_empty!6651 () Bool)

(declare-fun array_inv!3949 (array!12662) Bool)

(declare-fun array_inv!3950 (array!12660) Bool)

(assert (=> b!262441 (= e!170076 (and tp!23700 tp_is_empty!6651 (array_inv!3949 (_keys!7025 thiss!1504)) (array_inv!3950 (_values!4818 thiss!1504)) e!170085))))

(declare-fun b!262442 () Bool)

(assert (=> b!262442 (= e!170082 e!170074)))

(declare-fun res!128197 () Bool)

(assert (=> b!262442 (=> (not res!128197) (not e!170074))))

(assert (=> b!262442 (= res!128197 (or (= lt!132704 (MissingZero!1207 index!297)) (= lt!132704 (MissingVacant!1207 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12662 (_ BitVec 32)) SeekEntryResult!1207)

(assert (=> b!262442 (= lt!132704 (seekEntryOrOpen!0 key!932 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)))))

(declare-fun b!262443 () Bool)

(declare-fun e!170084 () Bool)

(assert (=> b!262443 (= e!170084 tp_is_empty!6651)))

(declare-fun b!262444 () Bool)

(assert (=> b!262444 (= e!170087 tp_is_empty!6651)))

(declare-fun b!262445 () Bool)

(declare-fun lt!132709 () Unit!8172)

(assert (=> b!262445 (= e!170075 lt!132709)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!451 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 64) Int) Unit!8172)

(assert (=> b!262445 (= lt!132709 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!451 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 (defaultEntry!4835 thiss!1504)))))

(assert (=> b!262445 (= c!44710 ((_ is MissingZero!1207) lt!132704))))

(assert (=> b!262445 e!170088))

(declare-fun res!128194 () Bool)

(assert (=> start!25198 (=> (not res!128194) (not e!170082))))

(declare-fun valid!1498 (LongMapFixedSize!3864) Bool)

(assert (=> start!25198 (= res!128194 (valid!1498 thiss!1504))))

(assert (=> start!25198 e!170082))

(assert (=> start!25198 e!170076))

(assert (=> start!25198 true))

(assert (=> start!25198 tp_is_empty!6651))

(declare-fun mapIsEmpty!11338 () Bool)

(assert (=> mapIsEmpty!11338 mapRes!11338))

(declare-fun mapNonEmpty!11338 () Bool)

(declare-fun tp!23701 () Bool)

(assert (=> mapNonEmpty!11338 (= mapRes!11338 (and tp!23701 e!170084))))

(declare-fun mapValue!11338 () ValueCell!2982)

(declare-fun mapRest!11338 () (Array (_ BitVec 32) ValueCell!2982))

(declare-fun mapKey!11338 () (_ BitVec 32))

(assert (=> mapNonEmpty!11338 (= (arr!5991 (_values!4818 thiss!1504)) (store mapRest!11338 mapKey!11338 mapValue!11338))))

(declare-fun b!262446 () Bool)

(declare-fun c!44709 () Bool)

(assert (=> b!262446 (= c!44709 ((_ is MissingVacant!1207) lt!132704))))

(assert (=> b!262446 (= e!170088 e!170083)))

(declare-fun b!262447 () Bool)

(declare-fun res!128195 () Bool)

(assert (=> b!262447 (= res!128195 (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!7001 lt!132704)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262447 (=> (not res!128195) (not e!170086))))

(declare-fun b!262448 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!262448 (= e!170078 (validKeyInArray!0 key!932))))

(assert (= (and start!25198 res!128194) b!262439))

(assert (= (and b!262439 res!128196) b!262442))

(assert (= (and b!262442 res!128197) b!262440))

(assert (= (and b!262440 c!44708) b!262427))

(assert (= (and b!262440 (not c!44708)) b!262445))

(assert (= (and b!262445 c!44710) b!262432))

(assert (= (and b!262445 (not c!44710)) b!262446))

(assert (= (and b!262432 res!128199) b!262428))

(assert (= (and b!262428 res!128193) b!262436))

(assert (= (and b!262446 c!44709) b!262430))

(assert (= (and b!262446 (not c!44709)) b!262429))

(assert (= (and b!262430 res!128198) b!262447))

(assert (= (and b!262447 res!128195) b!262434))

(assert (= (or b!262432 b!262430) bm!25079))

(assert (= (or b!262436 b!262434) bm!25080))

(assert (= (and b!262440 res!128201) b!262435))

(assert (= (and b!262435 c!44711) b!262438))

(assert (= (and b!262435 (not c!44711)) b!262433))

(assert (= (and b!262435 (not res!128200)) b!262431))

(assert (= (and b!262431 (not res!128202)) b!262448))

(assert (= (and b!262437 condMapEmpty!11338) mapIsEmpty!11338))

(assert (= (and b!262437 (not condMapEmpty!11338)) mapNonEmpty!11338))

(assert (= (and mapNonEmpty!11338 ((_ is ValueCellFull!2982) mapValue!11338)) b!262443))

(assert (= (and b!262437 ((_ is ValueCellFull!2982) mapDefault!11338)) b!262444))

(assert (= b!262441 b!262437))

(assert (= start!25198 b!262441))

(declare-fun m!278523 () Bool)

(assert (=> b!262441 m!278523))

(declare-fun m!278525 () Bool)

(assert (=> b!262441 m!278525))

(declare-fun m!278527 () Bool)

(assert (=> bm!25080 m!278527))

(declare-fun m!278529 () Bool)

(assert (=> b!262440 m!278529))

(declare-fun m!278531 () Bool)

(assert (=> b!262440 m!278531))

(declare-fun m!278533 () Bool)

(assert (=> b!262440 m!278533))

(assert (=> b!262435 m!278527))

(declare-fun m!278535 () Bool)

(assert (=> b!262435 m!278535))

(declare-fun m!278537 () Bool)

(assert (=> b!262435 m!278537))

(declare-fun m!278539 () Bool)

(assert (=> b!262435 m!278539))

(declare-fun m!278541 () Bool)

(assert (=> b!262435 m!278541))

(declare-fun m!278543 () Bool)

(assert (=> b!262435 m!278543))

(declare-fun m!278545 () Bool)

(assert (=> b!262435 m!278545))

(declare-fun m!278547 () Bool)

(assert (=> b!262435 m!278547))

(declare-fun m!278549 () Bool)

(assert (=> b!262435 m!278549))

(declare-fun m!278551 () Bool)

(assert (=> b!262435 m!278551))

(declare-fun m!278553 () Bool)

(assert (=> b!262435 m!278553))

(declare-fun m!278555 () Bool)

(assert (=> b!262435 m!278555))

(declare-fun m!278557 () Bool)

(assert (=> b!262435 m!278557))

(declare-fun m!278559 () Bool)

(assert (=> b!262435 m!278559))

(declare-fun m!278561 () Bool)

(assert (=> b!262435 m!278561))

(declare-fun m!278563 () Bool)

(assert (=> b!262435 m!278563))

(declare-fun m!278565 () Bool)

(assert (=> b!262435 m!278565))

(declare-fun m!278567 () Bool)

(assert (=> b!262435 m!278567))

(declare-fun m!278569 () Bool)

(assert (=> b!262442 m!278569))

(declare-fun m!278571 () Bool)

(assert (=> bm!25079 m!278571))

(declare-fun m!278573 () Bool)

(assert (=> b!262428 m!278573))

(declare-fun m!278575 () Bool)

(assert (=> b!262438 m!278575))

(declare-fun m!278577 () Bool)

(assert (=> b!262427 m!278577))

(declare-fun m!278579 () Bool)

(assert (=> b!262448 m!278579))

(declare-fun m!278581 () Bool)

(assert (=> b!262447 m!278581))

(declare-fun m!278583 () Bool)

(assert (=> start!25198 m!278583))

(declare-fun m!278585 () Bool)

(assert (=> b!262445 m!278585))

(declare-fun m!278587 () Bool)

(assert (=> mapNonEmpty!11338 m!278587))

(check-sat (not bm!25080) (not bm!25079) (not b!262448) (not b!262441) (not b!262427) (not start!25198) (not b!262435) tp_is_empty!6651 (not b!262438) (not mapNonEmpty!11338) (not b!262442) b_and!13945 (not b!262440) (not b_next!6789) (not b!262445))
(check-sat b_and!13945 (not b_next!6789))
(get-model)

(declare-fun d!62935 () Bool)

(declare-fun e!170139 () Bool)

(assert (=> d!62935 e!170139))

(declare-fun res!128243 () Bool)

(assert (=> d!62935 (=> (not res!128243) (not e!170139))))

(assert (=> d!62935 (= res!128243 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6343 (_keys!7025 thiss!1504)))))))

(declare-fun lt!132757 () Unit!8172)

(declare-fun choose!1 (array!12662 (_ BitVec 32) (_ BitVec 64)) Unit!8172)

(assert (=> d!62935 (= lt!132757 (choose!1 (_keys!7025 thiss!1504) index!297 key!932))))

(declare-fun e!170138 () Bool)

(assert (=> d!62935 e!170138))

(declare-fun res!128241 () Bool)

(assert (=> d!62935 (=> (not res!128241) (not e!170138))))

(assert (=> d!62935 (= res!128241 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6343 (_keys!7025 thiss!1504)))))))

(assert (=> d!62935 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7025 thiss!1504) index!297 key!932) lt!132757)))

(declare-fun b!262523 () Bool)

(declare-fun res!128244 () Bool)

(assert (=> b!262523 (=> (not res!128244) (not e!170138))))

(assert (=> b!262523 (= res!128244 (not (validKeyInArray!0 (select (arr!5992 (_keys!7025 thiss!1504)) index!297))))))

(declare-fun b!262526 () Bool)

(assert (=> b!262526 (= e!170139 (= (arrayCountValidKeys!0 (array!12663 (store (arr!5992 (_keys!7025 thiss!1504)) index!297 key!932) (size!6343 (_keys!7025 thiss!1504))) #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!7025 thiss!1504) #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!262524 () Bool)

(declare-fun res!128242 () Bool)

(assert (=> b!262524 (=> (not res!128242) (not e!170138))))

(assert (=> b!262524 (= res!128242 (validKeyInArray!0 key!932))))

(declare-fun b!262525 () Bool)

(assert (=> b!262525 (= e!170138 (bvslt (size!6343 (_keys!7025 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!62935 res!128241) b!262523))

(assert (= (and b!262523 res!128244) b!262524))

(assert (= (and b!262524 res!128242) b!262525))

(assert (= (and d!62935 res!128243) b!262526))

(declare-fun m!278655 () Bool)

(assert (=> d!62935 m!278655))

(declare-fun m!278657 () Bool)

(assert (=> b!262523 m!278657))

(assert (=> b!262523 m!278657))

(declare-fun m!278659 () Bool)

(assert (=> b!262523 m!278659))

(assert (=> b!262526 m!278551))

(declare-fun m!278661 () Bool)

(assert (=> b!262526 m!278661))

(assert (=> b!262526 m!278553))

(assert (=> b!262524 m!278579))

(assert (=> b!262435 d!62935))

(declare-fun d!62937 () Bool)

(assert (=> d!62937 (arrayContainsKey!0 lt!132701 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132760 () Unit!8172)

(declare-fun choose!13 (array!12662 (_ BitVec 64) (_ BitVec 32)) Unit!8172)

(assert (=> d!62937 (= lt!132760 (choose!13 lt!132701 key!932 index!297))))

(assert (=> d!62937 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!62937 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132701 key!932 index!297) lt!132760)))

(declare-fun bs!9243 () Bool)

(assert (= bs!9243 d!62937))

(assert (=> bs!9243 m!278561))

(declare-fun m!278663 () Bool)

(assert (=> bs!9243 m!278663))

(assert (=> b!262435 d!62937))

(declare-fun b!262535 () Bool)

(declare-fun e!170144 () (_ BitVec 32))

(declare-fun call!25092 () (_ BitVec 32))

(assert (=> b!262535 (= e!170144 call!25092)))

(declare-fun bm!25089 () Bool)

(assert (=> bm!25089 (= call!25092 (arrayCountValidKeys!0 (_keys!7025 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun d!62939 () Bool)

(declare-fun lt!132763 () (_ BitVec 32))

(assert (=> d!62939 (and (bvsge lt!132763 #b00000000000000000000000000000000) (bvsle lt!132763 (bvsub (size!6343 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!170145 () (_ BitVec 32))

(assert (=> d!62939 (= lt!132763 e!170145)))

(declare-fun c!44728 () Bool)

(assert (=> d!62939 (= c!44728 (bvsge #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))

(assert (=> d!62939 (and (bvsle #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6343 (_keys!7025 thiss!1504)) (size!6343 (_keys!7025 thiss!1504))))))

(assert (=> d!62939 (= (arrayCountValidKeys!0 (_keys!7025 thiss!1504) #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) lt!132763)))

(declare-fun b!262536 () Bool)

(assert (=> b!262536 (= e!170145 e!170144)))

(declare-fun c!44729 () Bool)

(assert (=> b!262536 (= c!44729 (validKeyInArray!0 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!262537 () Bool)

(assert (=> b!262537 (= e!170145 #b00000000000000000000000000000000)))

(declare-fun b!262538 () Bool)

(assert (=> b!262538 (= e!170144 (bvadd #b00000000000000000000000000000001 call!25092))))

(assert (= (and d!62939 c!44728) b!262537))

(assert (= (and d!62939 (not c!44728)) b!262536))

(assert (= (and b!262536 c!44729) b!262538))

(assert (= (and b!262536 (not c!44729)) b!262535))

(assert (= (or b!262538 b!262535) bm!25089))

(declare-fun m!278665 () Bool)

(assert (=> bm!25089 m!278665))

(declare-fun m!278667 () Bool)

(assert (=> b!262536 m!278667))

(assert (=> b!262536 m!278667))

(declare-fun m!278669 () Bool)

(assert (=> b!262536 m!278669))

(assert (=> b!262435 d!62939))

(declare-fun d!62941 () Bool)

(declare-fun e!170148 () Bool)

(assert (=> d!62941 e!170148))

(declare-fun res!128247 () Bool)

(assert (=> d!62941 (=> (not res!128247) (not e!170148))))

(assert (=> d!62941 (= res!128247 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6343 (_keys!7025 thiss!1504))) (bvslt index!297 (size!6342 (_values!4818 thiss!1504)))))))

(declare-fun lt!132766 () Unit!8172)

(declare-fun choose!1292 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 32) (_ BitVec 64) V!8515 Int) Unit!8172)

(assert (=> d!62941 (= lt!132766 (choose!1292 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) index!297 key!932 v!346 (defaultEntry!4835 thiss!1504)))))

(assert (=> d!62941 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62941 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!118 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) index!297 key!932 v!346 (defaultEntry!4835 thiss!1504)) lt!132766)))

(declare-fun b!262541 () Bool)

(assert (=> b!262541 (= e!170148 (= (+!703 (getCurrentListMap!1486 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)) (tuple2!4969 key!932 v!346)) (getCurrentListMap!1486 (array!12663 (store (arr!5992 (_keys!7025 thiss!1504)) index!297 key!932) (size!6343 (_keys!7025 thiss!1504))) (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504))))))

(assert (= (and d!62941 res!128247) b!262541))

(declare-fun m!278671 () Bool)

(assert (=> d!62941 m!278671))

(assert (=> d!62941 m!278563))

(declare-fun m!278673 () Bool)

(assert (=> b!262541 m!278673))

(assert (=> b!262541 m!278537))

(assert (=> b!262541 m!278533))

(declare-fun m!278675 () Bool)

(assert (=> b!262541 m!278675))

(assert (=> b!262541 m!278551))

(assert (=> b!262541 m!278533))

(assert (=> b!262435 d!62941))

(declare-fun b!262542 () Bool)

(declare-fun e!170149 () (_ BitVec 32))

(declare-fun call!25093 () (_ BitVec 32))

(assert (=> b!262542 (= e!170149 call!25093)))

(declare-fun bm!25090 () Bool)

(assert (=> bm!25090 (= call!25093 (arrayCountValidKeys!0 lt!132701 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun d!62943 () Bool)

(declare-fun lt!132767 () (_ BitVec 32))

(assert (=> d!62943 (and (bvsge lt!132767 #b00000000000000000000000000000000) (bvsle lt!132767 (bvsub (size!6343 lt!132701) index!297)))))

(declare-fun e!170150 () (_ BitVec 32))

(assert (=> d!62943 (= lt!132767 e!170150)))

(declare-fun c!44730 () Bool)

(assert (=> d!62943 (= c!44730 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62943 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6343 lt!132701)))))

(assert (=> d!62943 (= (arrayCountValidKeys!0 lt!132701 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!132767)))

(declare-fun b!262543 () Bool)

(assert (=> b!262543 (= e!170150 e!170149)))

(declare-fun c!44731 () Bool)

(assert (=> b!262543 (= c!44731 (validKeyInArray!0 (select (arr!5992 lt!132701) index!297)))))

(declare-fun b!262544 () Bool)

(assert (=> b!262544 (= e!170150 #b00000000000000000000000000000000)))

(declare-fun b!262545 () Bool)

(assert (=> b!262545 (= e!170149 (bvadd #b00000000000000000000000000000001 call!25093))))

(assert (= (and d!62943 c!44730) b!262544))

(assert (= (and d!62943 (not c!44730)) b!262543))

(assert (= (and b!262543 c!44731) b!262545))

(assert (= (and b!262543 (not c!44731)) b!262542))

(assert (= (or b!262545 b!262542) bm!25090))

(declare-fun m!278677 () Bool)

(assert (=> bm!25090 m!278677))

(declare-fun m!278679 () Bool)

(assert (=> b!262543 m!278679))

(assert (=> b!262543 m!278679))

(declare-fun m!278681 () Bool)

(assert (=> b!262543 m!278681))

(assert (=> b!262435 d!62943))

(declare-fun d!62945 () Bool)

(assert (=> d!62945 (= (arrayCountValidKeys!0 lt!132701 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!132770 () Unit!8172)

(declare-fun choose!2 (array!12662 (_ BitVec 32)) Unit!8172)

(assert (=> d!62945 (= lt!132770 (choose!2 lt!132701 index!297))))

(declare-fun e!170153 () Bool)

(assert (=> d!62945 e!170153))

(declare-fun res!128252 () Bool)

(assert (=> d!62945 (=> (not res!128252) (not e!170153))))

(assert (=> d!62945 (= res!128252 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6343 lt!132701))))))

(assert (=> d!62945 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132701 index!297) lt!132770)))

(declare-fun b!262550 () Bool)

(declare-fun res!128253 () Bool)

(assert (=> b!262550 (=> (not res!128253) (not e!170153))))

(assert (=> b!262550 (= res!128253 (validKeyInArray!0 (select (arr!5992 lt!132701) index!297)))))

(declare-fun b!262551 () Bool)

(assert (=> b!262551 (= e!170153 (bvslt (size!6343 lt!132701) #b01111111111111111111111111111111))))

(assert (= (and d!62945 res!128252) b!262550))

(assert (= (and b!262550 res!128253) b!262551))

(declare-fun m!278683 () Bool)

(assert (=> d!62945 m!278683))

(declare-fun m!278685 () Bool)

(assert (=> d!62945 m!278685))

(assert (=> b!262550 m!278679))

(assert (=> b!262550 m!278679))

(assert (=> b!262550 m!278681))

(assert (=> b!262435 d!62945))

(declare-fun d!62947 () Bool)

(declare-fun e!170156 () Bool)

(assert (=> d!62947 e!170156))

(declare-fun res!128258 () Bool)

(assert (=> d!62947 (=> (not res!128258) (not e!170156))))

(declare-fun lt!132781 () ListLongMap!3895)

(assert (=> d!62947 (= res!128258 (contains!1906 lt!132781 (_1!2494 (tuple2!4969 key!932 v!346))))))

(declare-fun lt!132779 () List!3867)

(assert (=> d!62947 (= lt!132781 (ListLongMap!3896 lt!132779))))

(declare-fun lt!132782 () Unit!8172)

(declare-fun lt!132780 () Unit!8172)

(assert (=> d!62947 (= lt!132782 lt!132780)))

(declare-datatypes ((Option!324 0))(
  ( (Some!323 (v!5498 V!8515)) (None!322) )
))
(declare-fun getValueByKey!318 (List!3867 (_ BitVec 64)) Option!324)

(assert (=> d!62947 (= (getValueByKey!318 lt!132779 (_1!2494 (tuple2!4969 key!932 v!346))) (Some!323 (_2!2494 (tuple2!4969 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!176 (List!3867 (_ BitVec 64) V!8515) Unit!8172)

(assert (=> d!62947 (= lt!132780 (lemmaContainsTupThenGetReturnValue!176 lt!132779 (_1!2494 (tuple2!4969 key!932 v!346)) (_2!2494 (tuple2!4969 key!932 v!346))))))

(declare-fun insertStrictlySorted!178 (List!3867 (_ BitVec 64) V!8515) List!3867)

(assert (=> d!62947 (= lt!132779 (insertStrictlySorted!178 (toList!1963 lt!132708) (_1!2494 (tuple2!4969 key!932 v!346)) (_2!2494 (tuple2!4969 key!932 v!346))))))

(assert (=> d!62947 (= (+!703 lt!132708 (tuple2!4969 key!932 v!346)) lt!132781)))

(declare-fun b!262556 () Bool)

(declare-fun res!128259 () Bool)

(assert (=> b!262556 (=> (not res!128259) (not e!170156))))

(assert (=> b!262556 (= res!128259 (= (getValueByKey!318 (toList!1963 lt!132781) (_1!2494 (tuple2!4969 key!932 v!346))) (Some!323 (_2!2494 (tuple2!4969 key!932 v!346)))))))

(declare-fun b!262557 () Bool)

(declare-fun contains!1908 (List!3867 tuple2!4968) Bool)

(assert (=> b!262557 (= e!170156 (contains!1908 (toList!1963 lt!132781) (tuple2!4969 key!932 v!346)))))

(assert (= (and d!62947 res!128258) b!262556))

(assert (= (and b!262556 res!128259) b!262557))

(declare-fun m!278687 () Bool)

(assert (=> d!62947 m!278687))

(declare-fun m!278689 () Bool)

(assert (=> d!62947 m!278689))

(declare-fun m!278691 () Bool)

(assert (=> d!62947 m!278691))

(declare-fun m!278693 () Bool)

(assert (=> d!62947 m!278693))

(declare-fun m!278695 () Bool)

(assert (=> b!262556 m!278695))

(declare-fun m!278697 () Bool)

(assert (=> b!262557 m!278697))

(assert (=> b!262435 d!62947))

(declare-fun bm!25093 () Bool)

(declare-fun call!25096 () Bool)

(assert (=> bm!25093 (= call!25096 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!132701 (mask!11194 thiss!1504)))))

(declare-fun b!262566 () Bool)

(declare-fun e!170165 () Bool)

(assert (=> b!262566 (= e!170165 call!25096)))

(declare-fun d!62949 () Bool)

(declare-fun res!128264 () Bool)

(declare-fun e!170163 () Bool)

(assert (=> d!62949 (=> res!128264 e!170163)))

(assert (=> d!62949 (= res!128264 (bvsge #b00000000000000000000000000000000 (size!6343 lt!132701)))))

(assert (=> d!62949 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132701 (mask!11194 thiss!1504)) e!170163)))

(declare-fun b!262567 () Bool)

(declare-fun e!170164 () Bool)

(assert (=> b!262567 (= e!170163 e!170164)))

(declare-fun c!44734 () Bool)

(assert (=> b!262567 (= c!44734 (validKeyInArray!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun b!262568 () Bool)

(assert (=> b!262568 (= e!170164 call!25096)))

(declare-fun b!262569 () Bool)

(assert (=> b!262569 (= e!170164 e!170165)))

(declare-fun lt!132790 () (_ BitVec 64))

(assert (=> b!262569 (= lt!132790 (select (arr!5992 lt!132701) #b00000000000000000000000000000000))))

(declare-fun lt!132791 () Unit!8172)

(assert (=> b!262569 (= lt!132791 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132701 lt!132790 #b00000000000000000000000000000000))))

(assert (=> b!262569 (arrayContainsKey!0 lt!132701 lt!132790 #b00000000000000000000000000000000)))

(declare-fun lt!132789 () Unit!8172)

(assert (=> b!262569 (= lt!132789 lt!132791)))

(declare-fun res!128265 () Bool)

(assert (=> b!262569 (= res!128265 (= (seekEntryOrOpen!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000) lt!132701 (mask!11194 thiss!1504)) (Found!1207 #b00000000000000000000000000000000)))))

(assert (=> b!262569 (=> (not res!128265) (not e!170165))))

(assert (= (and d!62949 (not res!128264)) b!262567))

(assert (= (and b!262567 c!44734) b!262569))

(assert (= (and b!262567 (not c!44734)) b!262568))

(assert (= (and b!262569 res!128265) b!262566))

(assert (= (or b!262566 b!262568) bm!25093))

(declare-fun m!278699 () Bool)

(assert (=> bm!25093 m!278699))

(declare-fun m!278701 () Bool)

(assert (=> b!262567 m!278701))

(assert (=> b!262567 m!278701))

(declare-fun m!278703 () Bool)

(assert (=> b!262567 m!278703))

(assert (=> b!262569 m!278701))

(declare-fun m!278705 () Bool)

(assert (=> b!262569 m!278705))

(declare-fun m!278707 () Bool)

(assert (=> b!262569 m!278707))

(assert (=> b!262569 m!278701))

(declare-fun m!278709 () Bool)

(assert (=> b!262569 m!278709))

(assert (=> b!262435 d!62949))

(declare-fun d!62951 () Bool)

(declare-fun res!128272 () Bool)

(declare-fun e!170174 () Bool)

(assert (=> d!62951 (=> res!128272 e!170174)))

(assert (=> d!62951 (= res!128272 (bvsge #b00000000000000000000000000000000 (size!6343 lt!132701)))))

(assert (=> d!62951 (= (arrayNoDuplicates!0 lt!132701 #b00000000000000000000000000000000 Nil!3865) e!170174)))

(declare-fun b!262580 () Bool)

(declare-fun e!170175 () Bool)

(declare-fun e!170176 () Bool)

(assert (=> b!262580 (= e!170175 e!170176)))

(declare-fun c!44737 () Bool)

(assert (=> b!262580 (= c!44737 (validKeyInArray!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun b!262581 () Bool)

(declare-fun e!170177 () Bool)

(declare-fun contains!1909 (List!3868 (_ BitVec 64)) Bool)

(assert (=> b!262581 (= e!170177 (contains!1909 Nil!3865 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun b!262582 () Bool)

(declare-fun call!25099 () Bool)

(assert (=> b!262582 (= e!170176 call!25099)))

(declare-fun b!262583 () Bool)

(assert (=> b!262583 (= e!170174 e!170175)))

(declare-fun res!128274 () Bool)

(assert (=> b!262583 (=> (not res!128274) (not e!170175))))

(assert (=> b!262583 (= res!128274 (not e!170177))))

(declare-fun res!128273 () Bool)

(assert (=> b!262583 (=> (not res!128273) (not e!170177))))

(assert (=> b!262583 (= res!128273 (validKeyInArray!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun b!262584 () Bool)

(assert (=> b!262584 (= e!170176 call!25099)))

(declare-fun bm!25096 () Bool)

(assert (=> bm!25096 (= call!25099 (arrayNoDuplicates!0 lt!132701 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44737 (Cons!3864 (select (arr!5992 lt!132701) #b00000000000000000000000000000000) Nil!3865) Nil!3865)))))

(assert (= (and d!62951 (not res!128272)) b!262583))

(assert (= (and b!262583 res!128273) b!262581))

(assert (= (and b!262583 res!128274) b!262580))

(assert (= (and b!262580 c!44737) b!262582))

(assert (= (and b!262580 (not c!44737)) b!262584))

(assert (= (or b!262582 b!262584) bm!25096))

(assert (=> b!262580 m!278701))

(assert (=> b!262580 m!278701))

(assert (=> b!262580 m!278703))

(assert (=> b!262581 m!278701))

(assert (=> b!262581 m!278701))

(declare-fun m!278711 () Bool)

(assert (=> b!262581 m!278711))

(assert (=> b!262583 m!278701))

(assert (=> b!262583 m!278701))

(assert (=> b!262583 m!278703))

(assert (=> bm!25096 m!278701))

(declare-fun m!278713 () Bool)

(assert (=> bm!25096 m!278713))

(assert (=> b!262435 d!62951))

(declare-fun d!62953 () Bool)

(declare-fun e!170180 () Bool)

(assert (=> d!62953 e!170180))

(declare-fun res!128277 () Bool)

(assert (=> d!62953 (=> (not res!128277) (not e!170180))))

(assert (=> d!62953 (= res!128277 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6343 (_keys!7025 thiss!1504)))))))

(declare-fun lt!132794 () Unit!8172)

(declare-fun choose!41 (array!12662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3868) Unit!8172)

(assert (=> d!62953 (= lt!132794 (choose!41 (_keys!7025 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3865))))

(assert (=> d!62953 (bvslt (size!6343 (_keys!7025 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!62953 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7025 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3865) lt!132794)))

(declare-fun b!262587 () Bool)

(assert (=> b!262587 (= e!170180 (arrayNoDuplicates!0 (array!12663 (store (arr!5992 (_keys!7025 thiss!1504)) index!297 key!932) (size!6343 (_keys!7025 thiss!1504))) #b00000000000000000000000000000000 Nil!3865))))

(assert (= (and d!62953 res!128277) b!262587))

(declare-fun m!278715 () Bool)

(assert (=> d!62953 m!278715))

(assert (=> b!262587 m!278551))

(declare-fun m!278717 () Bool)

(assert (=> b!262587 m!278717))

(assert (=> b!262435 d!62953))

(declare-fun d!62955 () Bool)

(declare-fun res!128282 () Bool)

(declare-fun e!170185 () Bool)

(assert (=> d!62955 (=> res!128282 e!170185)))

(assert (=> d!62955 (= res!128282 (= (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62955 (= (arrayContainsKey!0 (_keys!7025 thiss!1504) key!932 #b00000000000000000000000000000000) e!170185)))

(declare-fun b!262592 () Bool)

(declare-fun e!170186 () Bool)

(assert (=> b!262592 (= e!170185 e!170186)))

(declare-fun res!128283 () Bool)

(assert (=> b!262592 (=> (not res!128283) (not e!170186))))

(assert (=> b!262592 (= res!128283 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun b!262593 () Bool)

(assert (=> b!262593 (= e!170186 (arrayContainsKey!0 (_keys!7025 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62955 (not res!128282)) b!262592))

(assert (= (and b!262592 res!128283) b!262593))

(assert (=> d!62955 m!278667))

(declare-fun m!278719 () Bool)

(assert (=> b!262593 m!278719))

(assert (=> b!262435 d!62955))

(declare-fun d!62957 () Bool)

(declare-fun e!170189 () Bool)

(assert (=> d!62957 e!170189))

(declare-fun res!128286 () Bool)

(assert (=> d!62957 (=> (not res!128286) (not e!170189))))

(assert (=> d!62957 (= res!128286 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6343 (_keys!7025 thiss!1504)))))))

(declare-fun lt!132797 () Unit!8172)

(declare-fun choose!102 ((_ BitVec 64) array!12662 (_ BitVec 32) (_ BitVec 32)) Unit!8172)

(assert (=> d!62957 (= lt!132797 (choose!102 key!932 (_keys!7025 thiss!1504) index!297 (mask!11194 thiss!1504)))))

(assert (=> d!62957 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62957 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7025 thiss!1504) index!297 (mask!11194 thiss!1504)) lt!132797)))

(declare-fun b!262596 () Bool)

(assert (=> b!262596 (= e!170189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12663 (store (arr!5992 (_keys!7025 thiss!1504)) index!297 key!932) (size!6343 (_keys!7025 thiss!1504))) (mask!11194 thiss!1504)))))

(assert (= (and d!62957 res!128286) b!262596))

(declare-fun m!278721 () Bool)

(assert (=> d!62957 m!278721))

(assert (=> d!62957 m!278563))

(assert (=> b!262596 m!278551))

(declare-fun m!278723 () Bool)

(assert (=> b!262596 m!278723))

(assert (=> b!262435 d!62957))

(declare-fun d!62959 () Bool)

(assert (=> d!62959 (= (validMask!0 (mask!11194 thiss!1504)) (and (or (= (mask!11194 thiss!1504) #b00000000000000000000000000000111) (= (mask!11194 thiss!1504) #b00000000000000000000000000001111) (= (mask!11194 thiss!1504) #b00000000000000000000000000011111) (= (mask!11194 thiss!1504) #b00000000000000000000000000111111) (= (mask!11194 thiss!1504) #b00000000000000000000000001111111) (= (mask!11194 thiss!1504) #b00000000000000000000000011111111) (= (mask!11194 thiss!1504) #b00000000000000000000000111111111) (= (mask!11194 thiss!1504) #b00000000000000000000001111111111) (= (mask!11194 thiss!1504) #b00000000000000000000011111111111) (= (mask!11194 thiss!1504) #b00000000000000000000111111111111) (= (mask!11194 thiss!1504) #b00000000000000000001111111111111) (= (mask!11194 thiss!1504) #b00000000000000000011111111111111) (= (mask!11194 thiss!1504) #b00000000000000000111111111111111) (= (mask!11194 thiss!1504) #b00000000000000001111111111111111) (= (mask!11194 thiss!1504) #b00000000000000011111111111111111) (= (mask!11194 thiss!1504) #b00000000000000111111111111111111) (= (mask!11194 thiss!1504) #b00000000000001111111111111111111) (= (mask!11194 thiss!1504) #b00000000000011111111111111111111) (= (mask!11194 thiss!1504) #b00000000000111111111111111111111) (= (mask!11194 thiss!1504) #b00000000001111111111111111111111) (= (mask!11194 thiss!1504) #b00000000011111111111111111111111) (= (mask!11194 thiss!1504) #b00000000111111111111111111111111) (= (mask!11194 thiss!1504) #b00000001111111111111111111111111) (= (mask!11194 thiss!1504) #b00000011111111111111111111111111) (= (mask!11194 thiss!1504) #b00000111111111111111111111111111) (= (mask!11194 thiss!1504) #b00001111111111111111111111111111) (= (mask!11194 thiss!1504) #b00011111111111111111111111111111) (= (mask!11194 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11194 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!262435 d!62959))

(declare-fun d!62961 () Bool)

(declare-fun res!128287 () Bool)

(declare-fun e!170190 () Bool)

(assert (=> d!62961 (=> res!128287 e!170190)))

(assert (=> d!62961 (= res!128287 (= (select (arr!5992 lt!132701) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62961 (= (arrayContainsKey!0 lt!132701 key!932 #b00000000000000000000000000000000) e!170190)))

(declare-fun b!262597 () Bool)

(declare-fun e!170191 () Bool)

(assert (=> b!262597 (= e!170190 e!170191)))

(declare-fun res!128288 () Bool)

(assert (=> b!262597 (=> (not res!128288) (not e!170191))))

(assert (=> b!262597 (= res!128288 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6343 lt!132701)))))

(declare-fun b!262598 () Bool)

(assert (=> b!262598 (= e!170191 (arrayContainsKey!0 lt!132701 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62961 (not res!128287)) b!262597))

(assert (= (and b!262597 res!128288) b!262598))

(assert (=> d!62961 m!278701))

(declare-fun m!278725 () Bool)

(assert (=> b!262598 m!278725))

(assert (=> b!262435 d!62961))

(declare-fun b!262599 () Bool)

(declare-fun e!170192 () (_ BitVec 32))

(declare-fun call!25100 () (_ BitVec 32))

(assert (=> b!262599 (= e!170192 call!25100)))

(declare-fun bm!25097 () Bool)

(assert (=> bm!25097 (= call!25100 (arrayCountValidKeys!0 lt!132701 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun d!62963 () Bool)

(declare-fun lt!132798 () (_ BitVec 32))

(assert (=> d!62963 (and (bvsge lt!132798 #b00000000000000000000000000000000) (bvsle lt!132798 (bvsub (size!6343 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun e!170193 () (_ BitVec 32))

(assert (=> d!62963 (= lt!132798 e!170193)))

(declare-fun c!44738 () Bool)

(assert (=> d!62963 (= c!44738 (bvsge #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))

(assert (=> d!62963 (and (bvsle #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6343 (_keys!7025 thiss!1504)) (size!6343 lt!132701)))))

(assert (=> d!62963 (= (arrayCountValidKeys!0 lt!132701 #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) lt!132798)))

(declare-fun b!262600 () Bool)

(assert (=> b!262600 (= e!170193 e!170192)))

(declare-fun c!44739 () Bool)

(assert (=> b!262600 (= c!44739 (validKeyInArray!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun b!262601 () Bool)

(assert (=> b!262601 (= e!170193 #b00000000000000000000000000000000)))

(declare-fun b!262602 () Bool)

(assert (=> b!262602 (= e!170192 (bvadd #b00000000000000000000000000000001 call!25100))))

(assert (= (and d!62963 c!44738) b!262601))

(assert (= (and d!62963 (not c!44738)) b!262600))

(assert (= (and b!262600 c!44739) b!262602))

(assert (= (and b!262600 (not c!44739)) b!262599))

(assert (= (or b!262602 b!262599) bm!25097))

(declare-fun m!278727 () Bool)

(assert (=> bm!25097 m!278727))

(assert (=> b!262600 m!278701))

(assert (=> b!262600 m!278701))

(assert (=> b!262600 m!278703))

(assert (=> b!262435 d!62963))

(declare-fun e!170221 () Bool)

(declare-fun b!262645 () Bool)

(declare-fun lt!132847 () ListLongMap!3895)

(declare-fun apply!261 (ListLongMap!3895 (_ BitVec 64)) V!8515)

(declare-fun get!3091 (ValueCell!2982 V!8515) V!8515)

(declare-fun dynLambda!599 (Int (_ BitVec 64)) V!8515)

(assert (=> b!262645 (= e!170221 (= (apply!261 lt!132847 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)) (get!3091 (select (arr!5991 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!599 (defaultEntry!4835 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!262645 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6342 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))))))))

(assert (=> b!262645 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6343 lt!132701)))))

(declare-fun b!262646 () Bool)

(declare-fun e!170225 () ListLongMap!3895)

(declare-fun call!25117 () ListLongMap!3895)

(assert (=> b!262646 (= e!170225 (+!703 call!25117 (tuple2!4969 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4676 thiss!1504))))))

(declare-fun b!262648 () Bool)

(declare-fun res!128312 () Bool)

(declare-fun e!170222 () Bool)

(assert (=> b!262648 (=> (not res!128312) (not e!170222))))

(declare-fun e!170223 () Bool)

(assert (=> b!262648 (= res!128312 e!170223)))

(declare-fun c!44757 () Bool)

(assert (=> b!262648 (= c!44757 (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!262649 () Bool)

(declare-fun e!170220 () Bool)

(assert (=> b!262649 (= e!170220 (= (apply!261 lt!132847 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4676 thiss!1504)))))

(declare-fun b!262650 () Bool)

(declare-fun e!170229 () Bool)

(assert (=> b!262650 (= e!170229 (= (apply!261 lt!132847 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4676 thiss!1504)))))

(declare-fun bm!25112 () Bool)

(declare-fun call!25121 () ListLongMap!3895)

(declare-fun call!25119 () ListLongMap!3895)

(assert (=> bm!25112 (= call!25121 call!25119)))

(declare-fun b!262651 () Bool)

(declare-fun e!170224 () Bool)

(declare-fun call!25120 () Bool)

(assert (=> b!262651 (= e!170224 (not call!25120))))

(declare-fun b!262652 () Bool)

(assert (=> b!262652 (= e!170224 e!170229)))

(declare-fun res!128315 () Bool)

(assert (=> b!262652 (= res!128315 call!25120)))

(assert (=> b!262652 (=> (not res!128315) (not e!170229))))

(declare-fun b!262653 () Bool)

(declare-fun e!170227 () ListLongMap!3895)

(assert (=> b!262653 (= e!170225 e!170227)))

(declare-fun c!44752 () Bool)

(assert (=> b!262653 (= c!44752 (and (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!25116 () ListLongMap!3895)

(declare-fun bm!25113 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!580 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 32) Int) ListLongMap!3895)

(assert (=> bm!25113 (= call!25116 (getCurrentListMapNoExtraKeys!580 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun b!262647 () Bool)

(assert (=> b!262647 (= e!170222 e!170224)))

(declare-fun c!44756 () Bool)

(assert (=> b!262647 (= c!44756 (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!62965 () Bool)

(assert (=> d!62965 e!170222))

(declare-fun res!128314 () Bool)

(assert (=> d!62965 (=> (not res!128314) (not e!170222))))

(assert (=> d!62965 (= res!128314 (or (bvsge #b00000000000000000000000000000000 (size!6343 lt!132701)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6343 lt!132701)))))))

(declare-fun lt!132850 () ListLongMap!3895)

(assert (=> d!62965 (= lt!132847 lt!132850)))

(declare-fun lt!132859 () Unit!8172)

(declare-fun e!170228 () Unit!8172)

(assert (=> d!62965 (= lt!132859 e!170228)))

(declare-fun c!44754 () Bool)

(declare-fun e!170231 () Bool)

(assert (=> d!62965 (= c!44754 e!170231)))

(declare-fun res!128309 () Bool)

(assert (=> d!62965 (=> (not res!128309) (not e!170231))))

(assert (=> d!62965 (= res!128309 (bvslt #b00000000000000000000000000000000 (size!6343 lt!132701)))))

(assert (=> d!62965 (= lt!132850 e!170225)))

(declare-fun c!44753 () Bool)

(assert (=> d!62965 (= c!44753 (and (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62965 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62965 (= (getCurrentListMap!1486 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)) lt!132847)))

(declare-fun b!262654 () Bool)

(declare-fun c!44755 () Bool)

(assert (=> b!262654 (= c!44755 (and (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!170230 () ListLongMap!3895)

(assert (=> b!262654 (= e!170227 e!170230)))

(declare-fun b!262655 () Bool)

(declare-fun lt!132857 () Unit!8172)

(assert (=> b!262655 (= e!170228 lt!132857)))

(declare-fun lt!132844 () ListLongMap!3895)

(assert (=> b!262655 (= lt!132844 (getCurrentListMapNoExtraKeys!580 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132852 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132852 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132864 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132864 (select (arr!5992 lt!132701) #b00000000000000000000000000000000))))

(declare-fun lt!132863 () Unit!8172)

(declare-fun addStillContains!237 (ListLongMap!3895 (_ BitVec 64) V!8515 (_ BitVec 64)) Unit!8172)

(assert (=> b!262655 (= lt!132863 (addStillContains!237 lt!132844 lt!132852 (zeroValue!4676 thiss!1504) lt!132864))))

(assert (=> b!262655 (contains!1906 (+!703 lt!132844 (tuple2!4969 lt!132852 (zeroValue!4676 thiss!1504))) lt!132864)))

(declare-fun lt!132848 () Unit!8172)

(assert (=> b!262655 (= lt!132848 lt!132863)))

(declare-fun lt!132856 () ListLongMap!3895)

(assert (=> b!262655 (= lt!132856 (getCurrentListMapNoExtraKeys!580 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132846 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132846 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132858 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132858 (select (arr!5992 lt!132701) #b00000000000000000000000000000000))))

(declare-fun lt!132861 () Unit!8172)

(declare-fun addApplyDifferent!237 (ListLongMap!3895 (_ BitVec 64) V!8515 (_ BitVec 64)) Unit!8172)

(assert (=> b!262655 (= lt!132861 (addApplyDifferent!237 lt!132856 lt!132846 (minValue!4676 thiss!1504) lt!132858))))

(assert (=> b!262655 (= (apply!261 (+!703 lt!132856 (tuple2!4969 lt!132846 (minValue!4676 thiss!1504))) lt!132858) (apply!261 lt!132856 lt!132858))))

(declare-fun lt!132862 () Unit!8172)

(assert (=> b!262655 (= lt!132862 lt!132861)))

(declare-fun lt!132851 () ListLongMap!3895)

(assert (=> b!262655 (= lt!132851 (getCurrentListMapNoExtraKeys!580 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132854 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132854 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132849 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132849 (select (arr!5992 lt!132701) #b00000000000000000000000000000000))))

(declare-fun lt!132855 () Unit!8172)

(assert (=> b!262655 (= lt!132855 (addApplyDifferent!237 lt!132851 lt!132854 (zeroValue!4676 thiss!1504) lt!132849))))

(assert (=> b!262655 (= (apply!261 (+!703 lt!132851 (tuple2!4969 lt!132854 (zeroValue!4676 thiss!1504))) lt!132849) (apply!261 lt!132851 lt!132849))))

(declare-fun lt!132860 () Unit!8172)

(assert (=> b!262655 (= lt!132860 lt!132855)))

(declare-fun lt!132843 () ListLongMap!3895)

(assert (=> b!262655 (= lt!132843 (getCurrentListMapNoExtraKeys!580 lt!132701 (array!12661 (store (arr!5991 (_values!4818 thiss!1504)) index!297 (ValueCellFull!2982 v!346)) (size!6342 (_values!4818 thiss!1504))) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132853 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132853 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132845 () (_ BitVec 64))

(assert (=> b!262655 (= lt!132845 (select (arr!5992 lt!132701) #b00000000000000000000000000000000))))

(assert (=> b!262655 (= lt!132857 (addApplyDifferent!237 lt!132843 lt!132853 (minValue!4676 thiss!1504) lt!132845))))

(assert (=> b!262655 (= (apply!261 (+!703 lt!132843 (tuple2!4969 lt!132853 (minValue!4676 thiss!1504))) lt!132845) (apply!261 lt!132843 lt!132845))))

(declare-fun b!262656 () Bool)

(assert (=> b!262656 (= e!170230 call!25121)))

(declare-fun b!262657 () Bool)

(assert (=> b!262657 (= e!170223 e!170220)))

(declare-fun res!128307 () Bool)

(declare-fun call!25118 () Bool)

(assert (=> b!262657 (= res!128307 call!25118)))

(assert (=> b!262657 (=> (not res!128307) (not e!170220))))

(declare-fun b!262658 () Bool)

(assert (=> b!262658 (= e!170231 (validKeyInArray!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun b!262659 () Bool)

(declare-fun Unit!8182 () Unit!8172)

(assert (=> b!262659 (= e!170228 Unit!8182)))

(declare-fun b!262660 () Bool)

(declare-fun e!170232 () Bool)

(assert (=> b!262660 (= e!170232 e!170221)))

(declare-fun res!128308 () Bool)

(assert (=> b!262660 (=> (not res!128308) (not e!170221))))

(assert (=> b!262660 (= res!128308 (contains!1906 lt!132847 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(assert (=> b!262660 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6343 lt!132701)))))

(declare-fun b!262661 () Bool)

(assert (=> b!262661 (= e!170223 (not call!25118))))

(declare-fun b!262662 () Bool)

(declare-fun e!170226 () Bool)

(assert (=> b!262662 (= e!170226 (validKeyInArray!0 (select (arr!5992 lt!132701) #b00000000000000000000000000000000)))))

(declare-fun bm!25114 () Bool)

(assert (=> bm!25114 (= call!25120 (contains!1906 lt!132847 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262663 () Bool)

(declare-fun call!25115 () ListLongMap!3895)

(assert (=> b!262663 (= e!170227 call!25115)))

(declare-fun bm!25115 () Bool)

(assert (=> bm!25115 (= call!25115 call!25117)))

(declare-fun bm!25116 () Bool)

(assert (=> bm!25116 (= call!25117 (+!703 (ite c!44753 call!25116 (ite c!44752 call!25119 call!25121)) (ite (or c!44753 c!44752) (tuple2!4969 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4676 thiss!1504)) (tuple2!4969 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4676 thiss!1504)))))))

(declare-fun b!262664 () Bool)

(declare-fun res!128310 () Bool)

(assert (=> b!262664 (=> (not res!128310) (not e!170222))))

(assert (=> b!262664 (= res!128310 e!170232)))

(declare-fun res!128313 () Bool)

(assert (=> b!262664 (=> res!128313 e!170232)))

(assert (=> b!262664 (= res!128313 (not e!170226))))

(declare-fun res!128311 () Bool)

(assert (=> b!262664 (=> (not res!128311) (not e!170226))))

(assert (=> b!262664 (= res!128311 (bvslt #b00000000000000000000000000000000 (size!6343 lt!132701)))))

(declare-fun bm!25117 () Bool)

(assert (=> bm!25117 (= call!25118 (contains!1906 lt!132847 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!25118 () Bool)

(assert (=> bm!25118 (= call!25119 call!25116)))

(declare-fun b!262665 () Bool)

(assert (=> b!262665 (= e!170230 call!25115)))

(assert (= (and d!62965 c!44753) b!262646))

(assert (= (and d!62965 (not c!44753)) b!262653))

(assert (= (and b!262653 c!44752) b!262663))

(assert (= (and b!262653 (not c!44752)) b!262654))

(assert (= (and b!262654 c!44755) b!262665))

(assert (= (and b!262654 (not c!44755)) b!262656))

(assert (= (or b!262665 b!262656) bm!25112))

(assert (= (or b!262663 bm!25112) bm!25118))

(assert (= (or b!262663 b!262665) bm!25115))

(assert (= (or b!262646 bm!25118) bm!25113))

(assert (= (or b!262646 bm!25115) bm!25116))

(assert (= (and d!62965 res!128309) b!262658))

(assert (= (and d!62965 c!44754) b!262655))

(assert (= (and d!62965 (not c!44754)) b!262659))

(assert (= (and d!62965 res!128314) b!262664))

(assert (= (and b!262664 res!128311) b!262662))

(assert (= (and b!262664 (not res!128313)) b!262660))

(assert (= (and b!262660 res!128308) b!262645))

(assert (= (and b!262664 res!128310) b!262648))

(assert (= (and b!262648 c!44757) b!262657))

(assert (= (and b!262648 (not c!44757)) b!262661))

(assert (= (and b!262657 res!128307) b!262649))

(assert (= (or b!262657 b!262661) bm!25117))

(assert (= (and b!262648 res!128312) b!262647))

(assert (= (and b!262647 c!44756) b!262652))

(assert (= (and b!262647 (not c!44756)) b!262651))

(assert (= (and b!262652 res!128315) b!262650))

(assert (= (or b!262652 b!262651) bm!25114))

(declare-fun b_lambda!8353 () Bool)

(assert (=> (not b_lambda!8353) (not b!262645)))

(declare-fun t!8955 () Bool)

(declare-fun tb!3043 () Bool)

(assert (=> (and b!262441 (= (defaultEntry!4835 thiss!1504) (defaultEntry!4835 thiss!1504)) t!8955) tb!3043))

(declare-fun result!5435 () Bool)

(assert (=> tb!3043 (= result!5435 tp_is_empty!6651)))

(assert (=> b!262645 t!8955))

(declare-fun b_and!13949 () Bool)

(assert (= b_and!13945 (and (=> t!8955 result!5435) b_and!13949)))

(declare-fun m!278729 () Bool)

(assert (=> bm!25114 m!278729))

(declare-fun m!278731 () Bool)

(assert (=> bm!25113 m!278731))

(declare-fun m!278733 () Bool)

(assert (=> b!262649 m!278733))

(declare-fun m!278735 () Bool)

(assert (=> b!262650 m!278735))

(declare-fun m!278737 () Bool)

(assert (=> bm!25117 m!278737))

(assert (=> b!262662 m!278701))

(assert (=> b!262662 m!278701))

(assert (=> b!262662 m!278703))

(declare-fun m!278739 () Bool)

(assert (=> b!262646 m!278739))

(declare-fun m!278741 () Bool)

(assert (=> b!262655 m!278741))

(declare-fun m!278743 () Bool)

(assert (=> b!262655 m!278743))

(declare-fun m!278745 () Bool)

(assert (=> b!262655 m!278745))

(declare-fun m!278747 () Bool)

(assert (=> b!262655 m!278747))

(declare-fun m!278749 () Bool)

(assert (=> b!262655 m!278749))

(assert (=> b!262655 m!278745))

(assert (=> b!262655 m!278731))

(declare-fun m!278751 () Bool)

(assert (=> b!262655 m!278751))

(assert (=> b!262655 m!278701))

(assert (=> b!262655 m!278749))

(declare-fun m!278753 () Bool)

(assert (=> b!262655 m!278753))

(declare-fun m!278755 () Bool)

(assert (=> b!262655 m!278755))

(declare-fun m!278757 () Bool)

(assert (=> b!262655 m!278757))

(declare-fun m!278759 () Bool)

(assert (=> b!262655 m!278759))

(assert (=> b!262655 m!278757))

(declare-fun m!278761 () Bool)

(assert (=> b!262655 m!278761))

(declare-fun m!278763 () Bool)

(assert (=> b!262655 m!278763))

(declare-fun m!278765 () Bool)

(assert (=> b!262655 m!278765))

(declare-fun m!278767 () Bool)

(assert (=> b!262655 m!278767))

(assert (=> b!262655 m!278765))

(declare-fun m!278769 () Bool)

(assert (=> b!262655 m!278769))

(assert (=> b!262645 m!278701))

(assert (=> b!262645 m!278701))

(declare-fun m!278771 () Bool)

(assert (=> b!262645 m!278771))

(declare-fun m!278773 () Bool)

(assert (=> b!262645 m!278773))

(declare-fun m!278775 () Bool)

(assert (=> b!262645 m!278775))

(assert (=> b!262645 m!278773))

(declare-fun m!278777 () Bool)

(assert (=> b!262645 m!278777))

(assert (=> b!262645 m!278775))

(declare-fun m!278779 () Bool)

(assert (=> bm!25116 m!278779))

(assert (=> b!262660 m!278701))

(assert (=> b!262660 m!278701))

(declare-fun m!278781 () Bool)

(assert (=> b!262660 m!278781))

(assert (=> b!262658 m!278701))

(assert (=> b!262658 m!278701))

(assert (=> b!262658 m!278703))

(assert (=> d!62965 m!278563))

(assert (=> b!262435 d!62965))

(declare-fun d!62967 () Bool)

(assert (=> d!62967 (= (inRange!0 (ite c!44710 (index!6998 lt!132704) (index!7001 lt!132704)) (mask!11194 thiss!1504)) (and (bvsge (ite c!44710 (index!6998 lt!132704) (index!7001 lt!132704)) #b00000000000000000000000000000000) (bvslt (ite c!44710 (index!6998 lt!132704) (index!7001 lt!132704)) (bvadd (mask!11194 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!25079 d!62967))

(declare-fun d!62969 () Bool)

(assert (=> d!62969 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!262448 d!62969))

(declare-fun d!62971 () Bool)

(assert (=> d!62971 (contains!1906 (getCurrentListMap!1486 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)) key!932)))

(declare-fun lt!132867 () Unit!8172)

(declare-fun choose!1293 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 64) (_ BitVec 32) Int) Unit!8172)

(assert (=> d!62971 (= lt!132867 (choose!1293 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(assert (=> d!62971 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62971 (= (lemmaArrayContainsKeyThenInListMap!260 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)) lt!132867)))

(declare-fun bs!9244 () Bool)

(assert (= bs!9244 d!62971))

(assert (=> bs!9244 m!278533))

(assert (=> bs!9244 m!278533))

(declare-fun m!278783 () Bool)

(assert (=> bs!9244 m!278783))

(declare-fun m!278785 () Bool)

(assert (=> bs!9244 m!278785))

(assert (=> bs!9244 m!278563))

(assert (=> b!262438 d!62971))

(declare-fun d!62973 () Bool)

(declare-fun e!170235 () Bool)

(assert (=> d!62973 e!170235))

(declare-fun res!128320 () Bool)

(assert (=> d!62973 (=> (not res!128320) (not e!170235))))

(declare-fun lt!132873 () SeekEntryResult!1207)

(assert (=> d!62973 (= res!128320 ((_ is Found!1207) lt!132873))))

(assert (=> d!62973 (= lt!132873 (seekEntryOrOpen!0 key!932 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)))))

(declare-fun lt!132872 () Unit!8172)

(declare-fun choose!1294 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 64) Int) Unit!8172)

(assert (=> d!62973 (= lt!132872 (choose!1294 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 (defaultEntry!4835 thiss!1504)))))

(assert (=> d!62973 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62973 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!454 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 (defaultEntry!4835 thiss!1504)) lt!132872)))

(declare-fun b!262672 () Bool)

(declare-fun res!128321 () Bool)

(assert (=> b!262672 (=> (not res!128321) (not e!170235))))

(assert (=> b!262672 (= res!128321 (inRange!0 (index!6999 lt!132873) (mask!11194 thiss!1504)))))

(declare-fun b!262673 () Bool)

(assert (=> b!262673 (= e!170235 (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!6999 lt!132873)) key!932))))

(assert (=> b!262673 (and (bvsge (index!6999 lt!132873) #b00000000000000000000000000000000) (bvslt (index!6999 lt!132873) (size!6343 (_keys!7025 thiss!1504))))))

(assert (= (and d!62973 res!128320) b!262672))

(assert (= (and b!262672 res!128321) b!262673))

(assert (=> d!62973 m!278569))

(declare-fun m!278787 () Bool)

(assert (=> d!62973 m!278787))

(assert (=> d!62973 m!278563))

(declare-fun m!278789 () Bool)

(assert (=> b!262672 m!278789))

(declare-fun m!278791 () Bool)

(assert (=> b!262673 m!278791))

(assert (=> b!262427 d!62973))

(declare-fun d!62975 () Bool)

(assert (=> d!62975 (= (array_inv!3949 (_keys!7025 thiss!1504)) (bvsge (size!6343 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!262441 d!62975))

(declare-fun d!62977 () Bool)

(assert (=> d!62977 (= (array_inv!3950 (_values!4818 thiss!1504)) (bvsge (size!6342 (_values!4818 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!262441 d!62977))

(declare-fun b!262686 () Bool)

(declare-fun e!170242 () SeekEntryResult!1207)

(declare-fun e!170244 () SeekEntryResult!1207)

(assert (=> b!262686 (= e!170242 e!170244)))

(declare-fun lt!132882 () (_ BitVec 64))

(declare-fun lt!132880 () SeekEntryResult!1207)

(assert (=> b!262686 (= lt!132882 (select (arr!5992 (_keys!7025 thiss!1504)) (index!7000 lt!132880)))))

(declare-fun c!44764 () Bool)

(assert (=> b!262686 (= c!44764 (= lt!132882 key!932))))

(declare-fun b!262687 () Bool)

(assert (=> b!262687 (= e!170244 (Found!1207 (index!7000 lt!132880)))))

(declare-fun b!262689 () Bool)

(declare-fun c!44765 () Bool)

(assert (=> b!262689 (= c!44765 (= lt!132882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!170243 () SeekEntryResult!1207)

(assert (=> b!262689 (= e!170244 e!170243)))

(declare-fun b!262690 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12662 (_ BitVec 32)) SeekEntryResult!1207)

(assert (=> b!262690 (= e!170243 (seekKeyOrZeroReturnVacant!0 (x!25231 lt!132880) (index!7000 lt!132880) (index!7000 lt!132880) key!932 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)))))

(declare-fun b!262691 () Bool)

(assert (=> b!262691 (= e!170242 Undefined!1207)))

(declare-fun b!262688 () Bool)

(assert (=> b!262688 (= e!170243 (MissingZero!1207 (index!7000 lt!132880)))))

(declare-fun d!62979 () Bool)

(declare-fun lt!132881 () SeekEntryResult!1207)

(assert (=> d!62979 (and (or ((_ is Undefined!1207) lt!132881) (not ((_ is Found!1207) lt!132881)) (and (bvsge (index!6999 lt!132881) #b00000000000000000000000000000000) (bvslt (index!6999 lt!132881) (size!6343 (_keys!7025 thiss!1504))))) (or ((_ is Undefined!1207) lt!132881) ((_ is Found!1207) lt!132881) (not ((_ is MissingZero!1207) lt!132881)) (and (bvsge (index!6998 lt!132881) #b00000000000000000000000000000000) (bvslt (index!6998 lt!132881) (size!6343 (_keys!7025 thiss!1504))))) (or ((_ is Undefined!1207) lt!132881) ((_ is Found!1207) lt!132881) ((_ is MissingZero!1207) lt!132881) (not ((_ is MissingVacant!1207) lt!132881)) (and (bvsge (index!7001 lt!132881) #b00000000000000000000000000000000) (bvslt (index!7001 lt!132881) (size!6343 (_keys!7025 thiss!1504))))) (or ((_ is Undefined!1207) lt!132881) (ite ((_ is Found!1207) lt!132881) (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!6999 lt!132881)) key!932) (ite ((_ is MissingZero!1207) lt!132881) (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!6998 lt!132881)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1207) lt!132881) (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!7001 lt!132881)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62979 (= lt!132881 e!170242)))

(declare-fun c!44766 () Bool)

(assert (=> d!62979 (= c!44766 (and ((_ is Intermediate!1207) lt!132880) (undefined!2019 lt!132880)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12662 (_ BitVec 32)) SeekEntryResult!1207)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62979 (= lt!132880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11194 thiss!1504)) key!932 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)))))

(assert (=> d!62979 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62979 (= (seekEntryOrOpen!0 key!932 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)) lt!132881)))

(assert (= (and d!62979 c!44766) b!262691))

(assert (= (and d!62979 (not c!44766)) b!262686))

(assert (= (and b!262686 c!44764) b!262687))

(assert (= (and b!262686 (not c!44764)) b!262689))

(assert (= (and b!262689 c!44765) b!262688))

(assert (= (and b!262689 (not c!44765)) b!262690))

(declare-fun m!278793 () Bool)

(assert (=> b!262686 m!278793))

(declare-fun m!278795 () Bool)

(assert (=> b!262690 m!278795))

(declare-fun m!278797 () Bool)

(assert (=> d!62979 m!278797))

(declare-fun m!278799 () Bool)

(assert (=> d!62979 m!278799))

(assert (=> d!62979 m!278799))

(declare-fun m!278801 () Bool)

(assert (=> d!62979 m!278801))

(declare-fun m!278803 () Bool)

(assert (=> d!62979 m!278803))

(assert (=> d!62979 m!278563))

(declare-fun m!278805 () Bool)

(assert (=> d!62979 m!278805))

(assert (=> b!262442 d!62979))

(declare-fun b!262708 () Bool)

(declare-fun e!170255 () Bool)

(declare-fun e!170253 () Bool)

(assert (=> b!262708 (= e!170255 e!170253)))

(declare-fun c!44772 () Bool)

(declare-fun lt!132888 () SeekEntryResult!1207)

(assert (=> b!262708 (= c!44772 ((_ is MissingVacant!1207) lt!132888))))

(declare-fun b!262709 () Bool)

(declare-fun e!170254 () Bool)

(declare-fun call!25127 () Bool)

(assert (=> b!262709 (= e!170254 (not call!25127))))

(declare-fun b!262710 () Bool)

(assert (=> b!262710 (= e!170253 ((_ is Undefined!1207) lt!132888))))

(declare-fun bm!25123 () Bool)

(declare-fun call!25126 () Bool)

(declare-fun c!44771 () Bool)

(assert (=> bm!25123 (= call!25126 (inRange!0 (ite c!44771 (index!6998 lt!132888) (index!7001 lt!132888)) (mask!11194 thiss!1504)))))

(declare-fun b!262711 () Bool)

(declare-fun e!170256 () Bool)

(assert (=> b!262711 (= e!170256 (not call!25127))))

(declare-fun b!262712 () Bool)

(assert (=> b!262712 (= e!170255 e!170254)))

(declare-fun res!128331 () Bool)

(assert (=> b!262712 (= res!128331 call!25126)))

(assert (=> b!262712 (=> (not res!128331) (not e!170254))))

(declare-fun b!262713 () Bool)

(assert (=> b!262713 (and (bvsge (index!6998 lt!132888) #b00000000000000000000000000000000) (bvslt (index!6998 lt!132888) (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun res!128333 () Bool)

(assert (=> b!262713 (= res!128333 (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!6998 lt!132888)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262713 (=> (not res!128333) (not e!170254))))

(declare-fun b!262714 () Bool)

(declare-fun res!128330 () Bool)

(assert (=> b!262714 (=> (not res!128330) (not e!170256))))

(assert (=> b!262714 (= res!128330 (= (select (arr!5992 (_keys!7025 thiss!1504)) (index!7001 lt!132888)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262714 (and (bvsge (index!7001 lt!132888) #b00000000000000000000000000000000) (bvslt (index!7001 lt!132888) (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun d!62981 () Bool)

(assert (=> d!62981 e!170255))

(assert (=> d!62981 (= c!44771 ((_ is MissingZero!1207) lt!132888))))

(assert (=> d!62981 (= lt!132888 (seekEntryOrOpen!0 key!932 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)))))

(declare-fun lt!132887 () Unit!8172)

(declare-fun choose!1295 (array!12662 array!12660 (_ BitVec 32) (_ BitVec 32) V!8515 V!8515 (_ BitVec 64) Int) Unit!8172)

(assert (=> d!62981 (= lt!132887 (choose!1295 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 (defaultEntry!4835 thiss!1504)))))

(assert (=> d!62981 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62981 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!451 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) key!932 (defaultEntry!4835 thiss!1504)) lt!132887)))

(declare-fun bm!25124 () Bool)

(assert (=> bm!25124 (= call!25127 (arrayContainsKey!0 (_keys!7025 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262715 () Bool)

(declare-fun res!128332 () Bool)

(assert (=> b!262715 (=> (not res!128332) (not e!170256))))

(assert (=> b!262715 (= res!128332 call!25126)))

(assert (=> b!262715 (= e!170253 e!170256)))

(assert (= (and d!62981 c!44771) b!262712))

(assert (= (and d!62981 (not c!44771)) b!262708))

(assert (= (and b!262712 res!128331) b!262713))

(assert (= (and b!262713 res!128333) b!262709))

(assert (= (and b!262708 c!44772) b!262715))

(assert (= (and b!262708 (not c!44772)) b!262710))

(assert (= (and b!262715 res!128332) b!262714))

(assert (= (and b!262714 res!128330) b!262711))

(assert (= (or b!262712 b!262715) bm!25123))

(assert (= (or b!262709 b!262711) bm!25124))

(assert (=> d!62981 m!278569))

(declare-fun m!278807 () Bool)

(assert (=> d!62981 m!278807))

(assert (=> d!62981 m!278563))

(declare-fun m!278809 () Bool)

(assert (=> bm!25123 m!278809))

(declare-fun m!278811 () Bool)

(assert (=> b!262714 m!278811))

(declare-fun m!278813 () Bool)

(assert (=> b!262713 m!278813))

(assert (=> bm!25124 m!278527))

(assert (=> b!262445 d!62981))

(declare-fun d!62983 () Bool)

(assert (=> d!62983 (= (inRange!0 index!297 (mask!11194 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11194 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!262440 d!62983))

(declare-fun d!62985 () Bool)

(declare-fun e!170262 () Bool)

(assert (=> d!62985 e!170262))

(declare-fun res!128336 () Bool)

(assert (=> d!62985 (=> res!128336 e!170262)))

(declare-fun lt!132899 () Bool)

(assert (=> d!62985 (= res!128336 (not lt!132899))))

(declare-fun lt!132900 () Bool)

(assert (=> d!62985 (= lt!132899 lt!132900)))

(declare-fun lt!132897 () Unit!8172)

(declare-fun e!170261 () Unit!8172)

(assert (=> d!62985 (= lt!132897 e!170261)))

(declare-fun c!44775 () Bool)

(assert (=> d!62985 (= c!44775 lt!132900)))

(declare-fun containsKey!310 (List!3867 (_ BitVec 64)) Bool)

(assert (=> d!62985 (= lt!132900 (containsKey!310 (toList!1963 lt!132708) key!932))))

(assert (=> d!62985 (= (contains!1906 lt!132708 key!932) lt!132899)))

(declare-fun b!262722 () Bool)

(declare-fun lt!132898 () Unit!8172)

(assert (=> b!262722 (= e!170261 lt!132898)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!259 (List!3867 (_ BitVec 64)) Unit!8172)

(assert (=> b!262722 (= lt!132898 (lemmaContainsKeyImpliesGetValueByKeyDefined!259 (toList!1963 lt!132708) key!932))))

(declare-fun isDefined!260 (Option!324) Bool)

(assert (=> b!262722 (isDefined!260 (getValueByKey!318 (toList!1963 lt!132708) key!932))))

(declare-fun b!262723 () Bool)

(declare-fun Unit!8183 () Unit!8172)

(assert (=> b!262723 (= e!170261 Unit!8183)))

(declare-fun b!262724 () Bool)

(assert (=> b!262724 (= e!170262 (isDefined!260 (getValueByKey!318 (toList!1963 lt!132708) key!932)))))

(assert (= (and d!62985 c!44775) b!262722))

(assert (= (and d!62985 (not c!44775)) b!262723))

(assert (= (and d!62985 (not res!128336)) b!262724))

(declare-fun m!278815 () Bool)

(assert (=> d!62985 m!278815))

(declare-fun m!278817 () Bool)

(assert (=> b!262722 m!278817))

(declare-fun m!278819 () Bool)

(assert (=> b!262722 m!278819))

(assert (=> b!262722 m!278819))

(declare-fun m!278821 () Bool)

(assert (=> b!262722 m!278821))

(assert (=> b!262724 m!278819))

(assert (=> b!262724 m!278819))

(assert (=> b!262724 m!278821))

(assert (=> b!262440 d!62985))

(declare-fun b!262725 () Bool)

(declare-fun e!170264 () Bool)

(declare-fun lt!132905 () ListLongMap!3895)

(assert (=> b!262725 (= e!170264 (= (apply!261 lt!132905 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000)) (get!3091 (select (arr!5991 (_values!4818 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!599 (defaultEntry!4835 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!262725 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6342 (_values!4818 thiss!1504))))))

(assert (=> b!262725 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun b!262726 () Bool)

(declare-fun e!170268 () ListLongMap!3895)

(declare-fun call!25130 () ListLongMap!3895)

(assert (=> b!262726 (= e!170268 (+!703 call!25130 (tuple2!4969 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4676 thiss!1504))))))

(declare-fun b!262728 () Bool)

(declare-fun res!128342 () Bool)

(declare-fun e!170265 () Bool)

(assert (=> b!262728 (=> (not res!128342) (not e!170265))))

(declare-fun e!170266 () Bool)

(assert (=> b!262728 (= res!128342 e!170266)))

(declare-fun c!44781 () Bool)

(assert (=> b!262728 (= c!44781 (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!262729 () Bool)

(declare-fun e!170263 () Bool)

(assert (=> b!262729 (= e!170263 (= (apply!261 lt!132905 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4676 thiss!1504)))))

(declare-fun b!262730 () Bool)

(declare-fun e!170272 () Bool)

(assert (=> b!262730 (= e!170272 (= (apply!261 lt!132905 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4676 thiss!1504)))))

(declare-fun bm!25125 () Bool)

(declare-fun call!25134 () ListLongMap!3895)

(declare-fun call!25132 () ListLongMap!3895)

(assert (=> bm!25125 (= call!25134 call!25132)))

(declare-fun b!262731 () Bool)

(declare-fun e!170267 () Bool)

(declare-fun call!25133 () Bool)

(assert (=> b!262731 (= e!170267 (not call!25133))))

(declare-fun b!262732 () Bool)

(assert (=> b!262732 (= e!170267 e!170272)))

(declare-fun res!128345 () Bool)

(assert (=> b!262732 (= res!128345 call!25133)))

(assert (=> b!262732 (=> (not res!128345) (not e!170272))))

(declare-fun b!262733 () Bool)

(declare-fun e!170270 () ListLongMap!3895)

(assert (=> b!262733 (= e!170268 e!170270)))

(declare-fun c!44776 () Bool)

(assert (=> b!262733 (= c!44776 (and (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!25126 () Bool)

(declare-fun call!25129 () ListLongMap!3895)

(assert (=> bm!25126 (= call!25129 (getCurrentListMapNoExtraKeys!580 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun b!262727 () Bool)

(assert (=> b!262727 (= e!170265 e!170267)))

(declare-fun c!44780 () Bool)

(assert (=> b!262727 (= c!44780 (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!62987 () Bool)

(assert (=> d!62987 e!170265))

(declare-fun res!128344 () Bool)

(assert (=> d!62987 (=> (not res!128344) (not e!170265))))

(assert (=> d!62987 (= res!128344 (or (bvsge #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))))

(declare-fun lt!132908 () ListLongMap!3895)

(assert (=> d!62987 (= lt!132905 lt!132908)))

(declare-fun lt!132917 () Unit!8172)

(declare-fun e!170271 () Unit!8172)

(assert (=> d!62987 (= lt!132917 e!170271)))

(declare-fun c!44778 () Bool)

(declare-fun e!170274 () Bool)

(assert (=> d!62987 (= c!44778 e!170274)))

(declare-fun res!128339 () Bool)

(assert (=> d!62987 (=> (not res!128339) (not e!170274))))

(assert (=> d!62987 (= res!128339 (bvslt #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))

(assert (=> d!62987 (= lt!132908 e!170268)))

(declare-fun c!44777 () Bool)

(assert (=> d!62987 (= c!44777 (and (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62987 (validMask!0 (mask!11194 thiss!1504))))

(assert (=> d!62987 (= (getCurrentListMap!1486 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)) lt!132905)))

(declare-fun b!262734 () Bool)

(declare-fun c!44779 () Bool)

(assert (=> b!262734 (= c!44779 (and (not (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4572 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!170273 () ListLongMap!3895)

(assert (=> b!262734 (= e!170270 e!170273)))

(declare-fun b!262735 () Bool)

(declare-fun lt!132915 () Unit!8172)

(assert (=> b!262735 (= e!170271 lt!132915)))

(declare-fun lt!132902 () ListLongMap!3895)

(assert (=> b!262735 (= lt!132902 (getCurrentListMapNoExtraKeys!580 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132910 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132910 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132922 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132922 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132921 () Unit!8172)

(assert (=> b!262735 (= lt!132921 (addStillContains!237 lt!132902 lt!132910 (zeroValue!4676 thiss!1504) lt!132922))))

(assert (=> b!262735 (contains!1906 (+!703 lt!132902 (tuple2!4969 lt!132910 (zeroValue!4676 thiss!1504))) lt!132922)))

(declare-fun lt!132906 () Unit!8172)

(assert (=> b!262735 (= lt!132906 lt!132921)))

(declare-fun lt!132914 () ListLongMap!3895)

(assert (=> b!262735 (= lt!132914 (getCurrentListMapNoExtraKeys!580 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132904 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132904 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132916 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132916 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132919 () Unit!8172)

(assert (=> b!262735 (= lt!132919 (addApplyDifferent!237 lt!132914 lt!132904 (minValue!4676 thiss!1504) lt!132916))))

(assert (=> b!262735 (= (apply!261 (+!703 lt!132914 (tuple2!4969 lt!132904 (minValue!4676 thiss!1504))) lt!132916) (apply!261 lt!132914 lt!132916))))

(declare-fun lt!132920 () Unit!8172)

(assert (=> b!262735 (= lt!132920 lt!132919)))

(declare-fun lt!132909 () ListLongMap!3895)

(assert (=> b!262735 (= lt!132909 (getCurrentListMapNoExtraKeys!580 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132912 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132912 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132907 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132907 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132913 () Unit!8172)

(assert (=> b!262735 (= lt!132913 (addApplyDifferent!237 lt!132909 lt!132912 (zeroValue!4676 thiss!1504) lt!132907))))

(assert (=> b!262735 (= (apply!261 (+!703 lt!132909 (tuple2!4969 lt!132912 (zeroValue!4676 thiss!1504))) lt!132907) (apply!261 lt!132909 lt!132907))))

(declare-fun lt!132918 () Unit!8172)

(assert (=> b!262735 (= lt!132918 lt!132913)))

(declare-fun lt!132901 () ListLongMap!3895)

(assert (=> b!262735 (= lt!132901 (getCurrentListMapNoExtraKeys!580 (_keys!7025 thiss!1504) (_values!4818 thiss!1504) (mask!11194 thiss!1504) (extraKeys!4572 thiss!1504) (zeroValue!4676 thiss!1504) (minValue!4676 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4835 thiss!1504)))))

(declare-fun lt!132911 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132911 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132903 () (_ BitVec 64))

(assert (=> b!262735 (= lt!132903 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!262735 (= lt!132915 (addApplyDifferent!237 lt!132901 lt!132911 (minValue!4676 thiss!1504) lt!132903))))

(assert (=> b!262735 (= (apply!261 (+!703 lt!132901 (tuple2!4969 lt!132911 (minValue!4676 thiss!1504))) lt!132903) (apply!261 lt!132901 lt!132903))))

(declare-fun b!262736 () Bool)

(assert (=> b!262736 (= e!170273 call!25134)))

(declare-fun b!262737 () Bool)

(assert (=> b!262737 (= e!170266 e!170263)))

(declare-fun res!128337 () Bool)

(declare-fun call!25131 () Bool)

(assert (=> b!262737 (= res!128337 call!25131)))

(assert (=> b!262737 (=> (not res!128337) (not e!170263))))

(declare-fun b!262738 () Bool)

(assert (=> b!262738 (= e!170274 (validKeyInArray!0 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!262739 () Bool)

(declare-fun Unit!8184 () Unit!8172)

(assert (=> b!262739 (= e!170271 Unit!8184)))

(declare-fun b!262740 () Bool)

(declare-fun e!170275 () Bool)

(assert (=> b!262740 (= e!170275 e!170264)))

(declare-fun res!128338 () Bool)

(assert (=> b!262740 (=> (not res!128338) (not e!170264))))

(assert (=> b!262740 (= res!128338 (contains!1906 lt!132905 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!262740 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun b!262741 () Bool)

(assert (=> b!262741 (= e!170266 (not call!25131))))

(declare-fun b!262742 () Bool)

(declare-fun e!170269 () Bool)

(assert (=> b!262742 (= e!170269 (validKeyInArray!0 (select (arr!5992 (_keys!7025 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!25127 () Bool)

(assert (=> bm!25127 (= call!25133 (contains!1906 lt!132905 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262743 () Bool)

(declare-fun call!25128 () ListLongMap!3895)

(assert (=> b!262743 (= e!170270 call!25128)))

(declare-fun bm!25128 () Bool)

(assert (=> bm!25128 (= call!25128 call!25130)))

(declare-fun bm!25129 () Bool)

(assert (=> bm!25129 (= call!25130 (+!703 (ite c!44777 call!25129 (ite c!44776 call!25132 call!25134)) (ite (or c!44777 c!44776) (tuple2!4969 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4676 thiss!1504)) (tuple2!4969 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4676 thiss!1504)))))))

(declare-fun b!262744 () Bool)

(declare-fun res!128340 () Bool)

(assert (=> b!262744 (=> (not res!128340) (not e!170265))))

(assert (=> b!262744 (= res!128340 e!170275)))

(declare-fun res!128343 () Bool)

(assert (=> b!262744 (=> res!128343 e!170275)))

(assert (=> b!262744 (= res!128343 (not e!170269))))

(declare-fun res!128341 () Bool)

(assert (=> b!262744 (=> (not res!128341) (not e!170269))))

(assert (=> b!262744 (= res!128341 (bvslt #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))))))

(declare-fun bm!25130 () Bool)

(assert (=> bm!25130 (= call!25131 (contains!1906 lt!132905 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!25131 () Bool)

(assert (=> bm!25131 (= call!25132 call!25129)))

(declare-fun b!262745 () Bool)

(assert (=> b!262745 (= e!170273 call!25128)))

(assert (= (and d!62987 c!44777) b!262726))

(assert (= (and d!62987 (not c!44777)) b!262733))

(assert (= (and b!262733 c!44776) b!262743))

(assert (= (and b!262733 (not c!44776)) b!262734))

(assert (= (and b!262734 c!44779) b!262745))

(assert (= (and b!262734 (not c!44779)) b!262736))

(assert (= (or b!262745 b!262736) bm!25125))

(assert (= (or b!262743 bm!25125) bm!25131))

(assert (= (or b!262743 b!262745) bm!25128))

(assert (= (or b!262726 bm!25131) bm!25126))

(assert (= (or b!262726 bm!25128) bm!25129))

(assert (= (and d!62987 res!128339) b!262738))

(assert (= (and d!62987 c!44778) b!262735))

(assert (= (and d!62987 (not c!44778)) b!262739))

(assert (= (and d!62987 res!128344) b!262744))

(assert (= (and b!262744 res!128341) b!262742))

(assert (= (and b!262744 (not res!128343)) b!262740))

(assert (= (and b!262740 res!128338) b!262725))

(assert (= (and b!262744 res!128340) b!262728))

(assert (= (and b!262728 c!44781) b!262737))

(assert (= (and b!262728 (not c!44781)) b!262741))

(assert (= (and b!262737 res!128337) b!262729))

(assert (= (or b!262737 b!262741) bm!25130))

(assert (= (and b!262728 res!128342) b!262727))

(assert (= (and b!262727 c!44780) b!262732))

(assert (= (and b!262727 (not c!44780)) b!262731))

(assert (= (and b!262732 res!128345) b!262730))

(assert (= (or b!262732 b!262731) bm!25127))

(declare-fun b_lambda!8355 () Bool)

(assert (=> (not b_lambda!8355) (not b!262725)))

(assert (=> b!262725 t!8955))

(declare-fun b_and!13951 () Bool)

(assert (= b_and!13949 (and (=> t!8955 result!5435) b_and!13951)))

(declare-fun m!278823 () Bool)

(assert (=> bm!25127 m!278823))

(declare-fun m!278825 () Bool)

(assert (=> bm!25126 m!278825))

(declare-fun m!278827 () Bool)

(assert (=> b!262729 m!278827))

(declare-fun m!278829 () Bool)

(assert (=> b!262730 m!278829))

(declare-fun m!278831 () Bool)

(assert (=> bm!25130 m!278831))

(assert (=> b!262742 m!278667))

(assert (=> b!262742 m!278667))

(assert (=> b!262742 m!278669))

(declare-fun m!278833 () Bool)

(assert (=> b!262726 m!278833))

(declare-fun m!278835 () Bool)

(assert (=> b!262735 m!278835))

(declare-fun m!278837 () Bool)

(assert (=> b!262735 m!278837))

(declare-fun m!278839 () Bool)

(assert (=> b!262735 m!278839))

(declare-fun m!278841 () Bool)

(assert (=> b!262735 m!278841))

(declare-fun m!278843 () Bool)

(assert (=> b!262735 m!278843))

(assert (=> b!262735 m!278839))

(assert (=> b!262735 m!278825))

(declare-fun m!278845 () Bool)

(assert (=> b!262735 m!278845))

(assert (=> b!262735 m!278667))

(assert (=> b!262735 m!278843))

(declare-fun m!278847 () Bool)

(assert (=> b!262735 m!278847))

(declare-fun m!278849 () Bool)

(assert (=> b!262735 m!278849))

(declare-fun m!278851 () Bool)

(assert (=> b!262735 m!278851))

(declare-fun m!278853 () Bool)

(assert (=> b!262735 m!278853))

(assert (=> b!262735 m!278851))

(declare-fun m!278855 () Bool)

(assert (=> b!262735 m!278855))

(declare-fun m!278857 () Bool)

(assert (=> b!262735 m!278857))

(declare-fun m!278859 () Bool)

(assert (=> b!262735 m!278859))

(declare-fun m!278861 () Bool)

(assert (=> b!262735 m!278861))

(assert (=> b!262735 m!278859))

(declare-fun m!278863 () Bool)

(assert (=> b!262735 m!278863))

(assert (=> b!262725 m!278667))

(assert (=> b!262725 m!278667))

(declare-fun m!278865 () Bool)

(assert (=> b!262725 m!278865))

(assert (=> b!262725 m!278773))

(declare-fun m!278867 () Bool)

(assert (=> b!262725 m!278867))

(assert (=> b!262725 m!278773))

(declare-fun m!278869 () Bool)

(assert (=> b!262725 m!278869))

(assert (=> b!262725 m!278867))

(declare-fun m!278871 () Bool)

(assert (=> bm!25129 m!278871))

(assert (=> b!262740 m!278667))

(assert (=> b!262740 m!278667))

(declare-fun m!278873 () Bool)

(assert (=> b!262740 m!278873))

(assert (=> b!262738 m!278667))

(assert (=> b!262738 m!278667))

(assert (=> b!262738 m!278669))

(assert (=> d!62987 m!278563))

(assert (=> b!262440 d!62987))

(assert (=> bm!25080 d!62955))

(declare-fun d!62989 () Bool)

(declare-fun res!128352 () Bool)

(declare-fun e!170278 () Bool)

(assert (=> d!62989 (=> (not res!128352) (not e!170278))))

(declare-fun simpleValid!283 (LongMapFixedSize!3864) Bool)

(assert (=> d!62989 (= res!128352 (simpleValid!283 thiss!1504))))

(assert (=> d!62989 (= (valid!1498 thiss!1504) e!170278)))

(declare-fun b!262752 () Bool)

(declare-fun res!128353 () Bool)

(assert (=> b!262752 (=> (not res!128353) (not e!170278))))

(assert (=> b!262752 (= res!128353 (= (arrayCountValidKeys!0 (_keys!7025 thiss!1504) #b00000000000000000000000000000000 (size!6343 (_keys!7025 thiss!1504))) (_size!1981 thiss!1504)))))

(declare-fun b!262753 () Bool)

(declare-fun res!128354 () Bool)

(assert (=> b!262753 (=> (not res!128354) (not e!170278))))

(assert (=> b!262753 (= res!128354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!7025 thiss!1504) (mask!11194 thiss!1504)))))

(declare-fun b!262754 () Bool)

(assert (=> b!262754 (= e!170278 (arrayNoDuplicates!0 (_keys!7025 thiss!1504) #b00000000000000000000000000000000 Nil!3865))))

(assert (= (and d!62989 res!128352) b!262752))

(assert (= (and b!262752 res!128353) b!262753))

(assert (= (and b!262753 res!128354) b!262754))

(declare-fun m!278875 () Bool)

(assert (=> d!62989 m!278875))

(assert (=> b!262752 m!278553))

(declare-fun m!278877 () Bool)

(assert (=> b!262753 m!278877))

(declare-fun m!278879 () Bool)

(assert (=> b!262754 m!278879))

(assert (=> start!25198 d!62989))

(declare-fun b!262762 () Bool)

(declare-fun e!170284 () Bool)

(assert (=> b!262762 (= e!170284 tp_is_empty!6651)))

(declare-fun condMapEmpty!11344 () Bool)

(declare-fun mapDefault!11344 () ValueCell!2982)

(assert (=> mapNonEmpty!11338 (= condMapEmpty!11344 (= mapRest!11338 ((as const (Array (_ BitVec 32) ValueCell!2982)) mapDefault!11344)))))

(declare-fun mapRes!11344 () Bool)

(assert (=> mapNonEmpty!11338 (= tp!23701 (and e!170284 mapRes!11344))))

(declare-fun mapIsEmpty!11344 () Bool)

(assert (=> mapIsEmpty!11344 mapRes!11344))

(declare-fun b!262761 () Bool)

(declare-fun e!170283 () Bool)

(assert (=> b!262761 (= e!170283 tp_is_empty!6651)))

(declare-fun mapNonEmpty!11344 () Bool)

(declare-fun tp!23710 () Bool)

(assert (=> mapNonEmpty!11344 (= mapRes!11344 (and tp!23710 e!170283))))

(declare-fun mapKey!11344 () (_ BitVec 32))

(declare-fun mapValue!11344 () ValueCell!2982)

(declare-fun mapRest!11344 () (Array (_ BitVec 32) ValueCell!2982))

(assert (=> mapNonEmpty!11344 (= mapRest!11338 (store mapRest!11344 mapKey!11344 mapValue!11344))))

(assert (= (and mapNonEmpty!11338 condMapEmpty!11344) mapIsEmpty!11344))

(assert (= (and mapNonEmpty!11338 (not condMapEmpty!11344)) mapNonEmpty!11344))

(assert (= (and mapNonEmpty!11344 ((_ is ValueCellFull!2982) mapValue!11344)) b!262761))

(assert (= (and mapNonEmpty!11338 ((_ is ValueCellFull!2982) mapDefault!11344)) b!262762))

(declare-fun m!278881 () Bool)

(assert (=> mapNonEmpty!11344 m!278881))

(declare-fun b_lambda!8357 () Bool)

(assert (= b_lambda!8353 (or (and b!262441 b_free!6789) b_lambda!8357)))

(declare-fun b_lambda!8359 () Bool)

(assert (= b_lambda!8355 (or (and b!262441 b_free!6789) b_lambda!8359)))

(check-sat b_and!13951 (not b!262725) (not b!262543) (not b!262649) (not b_next!6789) (not d!62971) (not b_lambda!8357) (not d!62985) (not bm!25114) (not b!262581) (not d!62965) (not bm!25124) (not b!262598) (not b!262596) (not b!262752) (not b!262550) (not bm!25130) (not mapNonEmpty!11344) (not d!62945) (not bm!25097) (not bm!25129) (not b!262655) (not bm!25093) (not b!262556) (not b!262569) (not bm!25113) (not b!262658) (not b!262536) (not b_lambda!8359) (not b!262541) (not b!262580) (not bm!25116) (not b!262754) (not d!62957) (not b!262524) (not b!262583) tp_is_empty!6651 (not b!262593) (not b!262662) (not b!262690) (not b!262753) (not d!62947) (not bm!25126) (not d!62973) (not d!62979) (not d!62941) (not bm!25089) (not b!262726) (not b!262722) (not d!62981) (not bm!25123) (not b!262645) (not b!262600) (not d!62937) (not b!262567) (not b!262646) (not b!262730) (not bm!25127) (not b!262735) (not b!262729) (not b!262672) (not b!262740) (not b!262650) (not bm!25090) (not b!262587) (not d!62989) (not b!262742) (not b!262526) (not b!262724) (not d!62953) (not d!62987) (not d!62935) (not bm!25117) (not b!262557) (not b!262738) (not b!262523) (not b!262660) (not bm!25096))
(check-sat b_and!13951 (not b_next!6789))
