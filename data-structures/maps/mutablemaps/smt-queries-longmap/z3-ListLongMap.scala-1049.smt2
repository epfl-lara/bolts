; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21990 () Bool)

(assert start!21990)

(declare-fun b!225328 () Bool)

(declare-fun b_free!6045 () Bool)

(declare-fun b_next!6045 () Bool)

(assert (=> b!225328 (= b_free!6045 (not b_next!6045))))

(declare-fun tp!21276 () Bool)

(declare-fun b_and!12961 () Bool)

(assert (=> b!225328 (= tp!21276 b_and!12961)))

(declare-fun b!225308 () Bool)

(declare-fun e!146259 () Bool)

(declare-fun e!146260 () Bool)

(assert (=> b!225308 (= e!146259 e!146260)))

(declare-fun res!110905 () Bool)

(assert (=> b!225308 (=> (not res!110905) (not e!146260))))

(declare-datatypes ((SeekEntryResult!878 0))(
  ( (MissingZero!878 (index!5682 (_ BitVec 32))) (Found!878 (index!5683 (_ BitVec 32))) (Intermediate!878 (undefined!1690 Bool) (index!5684 (_ BitVec 32)) (x!23186 (_ BitVec 32))) (Undefined!878) (MissingVacant!878 (index!5685 (_ BitVec 32))) )
))
(declare-fun lt!113529 () SeekEntryResult!878)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225308 (= res!110905 (or (= lt!113529 (MissingZero!878 index!297)) (= lt!113529 (MissingVacant!878 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7523 0))(
  ( (V!7524 (val!2998 Int)) )
))
(declare-datatypes ((ValueCell!2610 0))(
  ( (ValueCellFull!2610 (v!5014 V!7523)) (EmptyCell!2610) )
))
(declare-datatypes ((array!11056 0))(
  ( (array!11057 (arr!5247 (Array (_ BitVec 32) ValueCell!2610)) (size!5580 (_ BitVec 32))) )
))
(declare-datatypes ((array!11058 0))(
  ( (array!11059 (arr!5248 (Array (_ BitVec 32) (_ BitVec 64))) (size!5581 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3120 0))(
  ( (LongMapFixedSize!3121 (defaultEntry!4219 Int) (mask!10061 (_ BitVec 32)) (extraKeys!3956 (_ BitVec 32)) (zeroValue!4060 V!7523) (minValue!4060 V!7523) (_size!1609 (_ BitVec 32)) (_keys!6273 array!11058) (_values!4202 array!11056) (_vacant!1609 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3120)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11058 (_ BitVec 32)) SeekEntryResult!878)

(assert (=> b!225308 (= lt!113529 (seekEntryOrOpen!0 key!932 (_keys!6273 thiss!1504) (mask!10061 thiss!1504)))))

(declare-fun mapIsEmpty!10030 () Bool)

(declare-fun mapRes!10030 () Bool)

(assert (=> mapIsEmpty!10030 mapRes!10030))

(declare-fun bm!20964 () Bool)

(declare-fun call!20967 () Bool)

(declare-fun arrayContainsKey!0 (array!11058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20964 (= call!20967 (arrayContainsKey!0 (_keys!6273 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225310 () Bool)

(declare-fun res!110902 () Bool)

(declare-fun e!146258 () Bool)

(assert (=> b!225310 (=> res!110902 e!146258)))

(assert (=> b!225310 (= res!110902 (or (not (= (size!5581 (_keys!6273 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10061 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5581 (_keys!6273 thiss!1504)))))))

(declare-fun b!225311 () Bool)

(declare-fun res!110904 () Bool)

(assert (=> b!225311 (=> res!110904 e!146258)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225311 (= res!110904 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225312 () Bool)

(declare-fun e!146251 () Bool)

(declare-fun e!146250 () Bool)

(assert (=> b!225312 (= e!146251 (and e!146250 mapRes!10030))))

(declare-fun condMapEmpty!10030 () Bool)

(declare-fun mapDefault!10030 () ValueCell!2610)

(assert (=> b!225312 (= condMapEmpty!10030 (= (arr!5247 (_values!4202 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2610)) mapDefault!10030)))))

(declare-fun b!225313 () Bool)

(declare-fun e!146247 () Bool)

(assert (=> b!225313 (= e!146260 e!146247)))

(declare-fun res!110901 () Bool)

(assert (=> b!225313 (=> (not res!110901) (not e!146247))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!225313 (= res!110901 (inRange!0 index!297 (mask!10061 thiss!1504)))))

(declare-datatypes ((Unit!6789 0))(
  ( (Unit!6790) )
))
(declare-fun lt!113533 () Unit!6789)

(declare-fun e!146253 () Unit!6789)

(assert (=> b!225313 (= lt!113533 e!146253)))

(declare-fun c!37347 () Bool)

(declare-datatypes ((tuple2!4436 0))(
  ( (tuple2!4437 (_1!2228 (_ BitVec 64)) (_2!2228 V!7523)) )
))
(declare-datatypes ((List!3373 0))(
  ( (Nil!3370) (Cons!3369 (h!4017 tuple2!4436) (t!8340 List!3373)) )
))
(declare-datatypes ((ListLongMap!3363 0))(
  ( (ListLongMap!3364 (toList!1697 List!3373)) )
))
(declare-fun contains!1565 (ListLongMap!3363 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1220 (array!11058 array!11056 (_ BitVec 32) (_ BitVec 32) V!7523 V!7523 (_ BitVec 32) Int) ListLongMap!3363)

(assert (=> b!225313 (= c!37347 (contains!1565 (getCurrentListMap!1220 (_keys!6273 thiss!1504) (_values!4202 thiss!1504) (mask!10061 thiss!1504) (extraKeys!3956 thiss!1504) (zeroValue!4060 thiss!1504) (minValue!4060 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4219 thiss!1504)) key!932))))

(declare-fun b!225314 () Bool)

(assert (=> b!225314 (= e!146247 (not e!146258))))

(declare-fun res!110897 () Bool)

(assert (=> b!225314 (=> res!110897 e!146258)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225314 (= res!110897 (not (validMask!0 (mask!10061 thiss!1504))))))

(declare-fun lt!113535 () array!11058)

(declare-fun arrayCountValidKeys!0 (array!11058 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225314 (= (arrayCountValidKeys!0 lt!113535 #b00000000000000000000000000000000 (size!5581 (_keys!6273 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6273 thiss!1504) #b00000000000000000000000000000000 (size!5581 (_keys!6273 thiss!1504)))))))

(declare-fun lt!113534 () Unit!6789)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11058 (_ BitVec 32) (_ BitVec 64)) Unit!6789)

(assert (=> b!225314 (= lt!113534 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6273 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3374 0))(
  ( (Nil!3371) (Cons!3370 (h!4018 (_ BitVec 64)) (t!8341 List!3374)) )
))
(declare-fun arrayNoDuplicates!0 (array!11058 (_ BitVec 32) List!3374) Bool)

(assert (=> b!225314 (arrayNoDuplicates!0 lt!113535 #b00000000000000000000000000000000 Nil!3371)))

(assert (=> b!225314 (= lt!113535 (array!11059 (store (arr!5248 (_keys!6273 thiss!1504)) index!297 key!932) (size!5581 (_keys!6273 thiss!1504))))))

(declare-fun lt!113530 () Unit!6789)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11058 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3374) Unit!6789)

(assert (=> b!225314 (= lt!113530 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6273 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3371))))

(declare-fun lt!113537 () Unit!6789)

(declare-fun e!146255 () Unit!6789)

(assert (=> b!225314 (= lt!113537 e!146255)))

(declare-fun c!37346 () Bool)

(declare-fun lt!113528 () Bool)

(assert (=> b!225314 (= c!37346 lt!113528)))

(assert (=> b!225314 (= lt!113528 (arrayContainsKey!0 (_keys!6273 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225315 () Bool)

(declare-fun e!146249 () Bool)

(get-info :version)

(assert (=> b!225315 (= e!146249 ((_ is Undefined!878) lt!113529))))

(declare-fun b!225316 () Bool)

(declare-fun res!110899 () Bool)

(declare-fun e!146257 () Bool)

(assert (=> b!225316 (=> (not res!110899) (not e!146257))))

(declare-fun call!20968 () Bool)

(assert (=> b!225316 (= res!110899 call!20968)))

(declare-fun e!146254 () Bool)

(assert (=> b!225316 (= e!146254 e!146257)))

(declare-fun c!37349 () Bool)

(declare-fun bm!20965 () Bool)

(assert (=> bm!20965 (= call!20968 (inRange!0 (ite c!37349 (index!5682 lt!113529) (index!5685 lt!113529)) (mask!10061 thiss!1504)))))

(declare-fun b!225317 () Bool)

(declare-fun res!110896 () Bool)

(assert (=> b!225317 (=> (not res!110896) (not e!146257))))

(assert (=> b!225317 (= res!110896 (= (select (arr!5248 (_keys!6273 thiss!1504)) (index!5682 lt!113529)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225318 () Bool)

(declare-fun res!110898 () Bool)

(assert (=> b!225318 (=> res!110898 e!146258)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11058 (_ BitVec 32)) Bool)

(assert (=> b!225318 (= res!110898 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6273 thiss!1504) (mask!10061 thiss!1504))))))

(declare-fun b!225319 () Bool)

(declare-fun tp_is_empty!5907 () Bool)

(assert (=> b!225319 (= e!146250 tp_is_empty!5907)))

(declare-fun b!225320 () Bool)

(declare-fun Unit!6791 () Unit!6789)

(assert (=> b!225320 (= e!146253 Unit!6791)))

(declare-fun lt!113536 () Unit!6789)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!248 (array!11058 array!11056 (_ BitVec 32) (_ BitVec 32) V!7523 V!7523 (_ BitVec 64) Int) Unit!6789)

(assert (=> b!225320 (= lt!113536 (lemmaInListMapThenSeekEntryOrOpenFindsIt!248 (_keys!6273 thiss!1504) (_values!4202 thiss!1504) (mask!10061 thiss!1504) (extraKeys!3956 thiss!1504) (zeroValue!4060 thiss!1504) (minValue!4060 thiss!1504) key!932 (defaultEntry!4219 thiss!1504)))))

(assert (=> b!225320 false))

(declare-fun b!225321 () Bool)

(declare-fun lt!113531 () Unit!6789)

(assert (=> b!225321 (= e!146253 lt!113531)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!256 (array!11058 array!11056 (_ BitVec 32) (_ BitVec 32) V!7523 V!7523 (_ BitVec 64) Int) Unit!6789)

(assert (=> b!225321 (= lt!113531 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!256 (_keys!6273 thiss!1504) (_values!4202 thiss!1504) (mask!10061 thiss!1504) (extraKeys!3956 thiss!1504) (zeroValue!4060 thiss!1504) (minValue!4060 thiss!1504) key!932 (defaultEntry!4219 thiss!1504)))))

(assert (=> b!225321 (= c!37349 ((_ is MissingZero!878) lt!113529))))

(assert (=> b!225321 e!146254))

(declare-fun b!225322 () Bool)

(declare-fun res!110903 () Bool)

(assert (=> b!225322 (=> res!110903 e!146258)))

(assert (=> b!225322 (= res!110903 lt!113528)))

(declare-fun res!110907 () Bool)

(assert (=> start!21990 (=> (not res!110907) (not e!146259))))

(declare-fun valid!1249 (LongMapFixedSize!3120) Bool)

(assert (=> start!21990 (= res!110907 (valid!1249 thiss!1504))))

(assert (=> start!21990 e!146259))

(declare-fun e!146246 () Bool)

(assert (=> start!21990 e!146246))

(assert (=> start!21990 true))

(declare-fun b!225309 () Bool)

(declare-fun e!146256 () Bool)

(assert (=> b!225309 (= e!146256 (not call!20967))))

(declare-fun b!225323 () Bool)

(declare-fun c!37348 () Bool)

(assert (=> b!225323 (= c!37348 ((_ is MissingVacant!878) lt!113529))))

(assert (=> b!225323 (= e!146254 e!146249)))

(declare-fun b!225324 () Bool)

(assert (=> b!225324 (= e!146257 (not call!20967))))

(declare-fun b!225325 () Bool)

(assert (=> b!225325 (= e!146249 e!146256)))

(declare-fun res!110908 () Bool)

(assert (=> b!225325 (= res!110908 call!20968)))

(assert (=> b!225325 (=> (not res!110908) (not e!146256))))

(declare-fun b!225326 () Bool)

(declare-fun res!110906 () Bool)

(assert (=> b!225326 (= res!110906 (= (select (arr!5248 (_keys!6273 thiss!1504)) (index!5685 lt!113529)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!225326 (=> (not res!110906) (not e!146256))))

(declare-fun b!225327 () Bool)

(declare-fun Unit!6792 () Unit!6789)

(assert (=> b!225327 (= e!146255 Unit!6792)))

(declare-fun lt!113538 () Unit!6789)

(declare-fun lemmaArrayContainsKeyThenInListMap!86 (array!11058 array!11056 (_ BitVec 32) (_ BitVec 32) V!7523 V!7523 (_ BitVec 64) (_ BitVec 32) Int) Unit!6789)

(assert (=> b!225327 (= lt!113538 (lemmaArrayContainsKeyThenInListMap!86 (_keys!6273 thiss!1504) (_values!4202 thiss!1504) (mask!10061 thiss!1504) (extraKeys!3956 thiss!1504) (zeroValue!4060 thiss!1504) (minValue!4060 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4219 thiss!1504)))))

(assert (=> b!225327 false))

(declare-fun array_inv!3463 (array!11058) Bool)

(declare-fun array_inv!3464 (array!11056) Bool)

(assert (=> b!225328 (= e!146246 (and tp!21276 tp_is_empty!5907 (array_inv!3463 (_keys!6273 thiss!1504)) (array_inv!3464 (_values!4202 thiss!1504)) e!146251))))

(declare-fun b!225329 () Bool)

(declare-fun e!146252 () Bool)

(assert (=> b!225329 (= e!146252 tp_is_empty!5907)))

(declare-fun b!225330 () Bool)

(assert (=> b!225330 (= e!146258 true)))

(declare-fun lt!113532 () Bool)

(assert (=> b!225330 (= lt!113532 (arrayNoDuplicates!0 (_keys!6273 thiss!1504) #b00000000000000000000000000000000 Nil!3371))))

(declare-fun mapNonEmpty!10030 () Bool)

(declare-fun tp!21277 () Bool)

(assert (=> mapNonEmpty!10030 (= mapRes!10030 (and tp!21277 e!146252))))

(declare-fun mapKey!10030 () (_ BitVec 32))

(declare-fun mapRest!10030 () (Array (_ BitVec 32) ValueCell!2610))

(declare-fun mapValue!10030 () ValueCell!2610)

(assert (=> mapNonEmpty!10030 (= (arr!5247 (_values!4202 thiss!1504)) (store mapRest!10030 mapKey!10030 mapValue!10030))))

(declare-fun b!225331 () Bool)

(declare-fun Unit!6793 () Unit!6789)

(assert (=> b!225331 (= e!146255 Unit!6793)))

(declare-fun b!225332 () Bool)

(declare-fun res!110900 () Bool)

(assert (=> b!225332 (=> (not res!110900) (not e!146259))))

(assert (=> b!225332 (= res!110900 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!21990 res!110907) b!225332))

(assert (= (and b!225332 res!110900) b!225308))

(assert (= (and b!225308 res!110905) b!225313))

(assert (= (and b!225313 c!37347) b!225320))

(assert (= (and b!225313 (not c!37347)) b!225321))

(assert (= (and b!225321 c!37349) b!225316))

(assert (= (and b!225321 (not c!37349)) b!225323))

(assert (= (and b!225316 res!110899) b!225317))

(assert (= (and b!225317 res!110896) b!225324))

(assert (= (and b!225323 c!37348) b!225325))

(assert (= (and b!225323 (not c!37348)) b!225315))

(assert (= (and b!225325 res!110908) b!225326))

(assert (= (and b!225326 res!110906) b!225309))

(assert (= (or b!225316 b!225325) bm!20965))

(assert (= (or b!225324 b!225309) bm!20964))

(assert (= (and b!225313 res!110901) b!225314))

(assert (= (and b!225314 c!37346) b!225327))

(assert (= (and b!225314 (not c!37346)) b!225331))

(assert (= (and b!225314 (not res!110897)) b!225310))

(assert (= (and b!225310 (not res!110902)) b!225311))

(assert (= (and b!225311 (not res!110904)) b!225322))

(assert (= (and b!225322 (not res!110903)) b!225318))

(assert (= (and b!225318 (not res!110898)) b!225330))

(assert (= (and b!225312 condMapEmpty!10030) mapIsEmpty!10030))

(assert (= (and b!225312 (not condMapEmpty!10030)) mapNonEmpty!10030))

(assert (= (and mapNonEmpty!10030 ((_ is ValueCellFull!2610) mapValue!10030)) b!225329))

(assert (= (and b!225312 ((_ is ValueCellFull!2610) mapDefault!10030)) b!225319))

(assert (= b!225328 b!225312))

(assert (= start!21990 b!225328))

(declare-fun m!247977 () Bool)

(assert (=> bm!20964 m!247977))

(declare-fun m!247979 () Bool)

(assert (=> mapNonEmpty!10030 m!247979))

(declare-fun m!247981 () Bool)

(assert (=> b!225330 m!247981))

(declare-fun m!247983 () Bool)

(assert (=> b!225320 m!247983))

(declare-fun m!247985 () Bool)

(assert (=> b!225321 m!247985))

(declare-fun m!247987 () Bool)

(assert (=> b!225326 m!247987))

(declare-fun m!247989 () Bool)

(assert (=> start!21990 m!247989))

(declare-fun m!247991 () Bool)

(assert (=> b!225311 m!247991))

(declare-fun m!247993 () Bool)

(assert (=> b!225308 m!247993))

(declare-fun m!247995 () Bool)

(assert (=> bm!20965 m!247995))

(declare-fun m!247997 () Bool)

(assert (=> b!225318 m!247997))

(declare-fun m!247999 () Bool)

(assert (=> b!225313 m!247999))

(declare-fun m!248001 () Bool)

(assert (=> b!225313 m!248001))

(assert (=> b!225313 m!248001))

(declare-fun m!248003 () Bool)

(assert (=> b!225313 m!248003))

(declare-fun m!248005 () Bool)

(assert (=> b!225328 m!248005))

(declare-fun m!248007 () Bool)

(assert (=> b!225328 m!248007))

(declare-fun m!248009 () Bool)

(assert (=> b!225317 m!248009))

(assert (=> b!225314 m!247977))

(declare-fun m!248011 () Bool)

(assert (=> b!225314 m!248011))

(declare-fun m!248013 () Bool)

(assert (=> b!225314 m!248013))

(declare-fun m!248015 () Bool)

(assert (=> b!225314 m!248015))

(declare-fun m!248017 () Bool)

(assert (=> b!225314 m!248017))

(declare-fun m!248019 () Bool)

(assert (=> b!225314 m!248019))

(declare-fun m!248021 () Bool)

(assert (=> b!225314 m!248021))

(declare-fun m!248023 () Bool)

(assert (=> b!225314 m!248023))

(declare-fun m!248025 () Bool)

(assert (=> b!225327 m!248025))

(check-sat (not b!225318) (not bm!20964) (not b!225328) (not b!225314) b_and!12961 (not mapNonEmpty!10030) (not b!225313) (not b!225311) (not b!225320) (not b!225308) tp_is_empty!5907 (not bm!20965) (not start!21990) (not b_next!6045) (not b!225327) (not b!225330) (not b!225321))
(check-sat b_and!12961 (not b_next!6045))
