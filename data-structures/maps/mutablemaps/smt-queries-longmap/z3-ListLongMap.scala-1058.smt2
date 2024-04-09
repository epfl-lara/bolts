; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22044 () Bool)

(assert start!22044)

(declare-fun b!227304 () Bool)

(declare-fun b_free!6099 () Bool)

(declare-fun b_next!6099 () Bool)

(assert (=> b!227304 (= b_free!6099 (not b_next!6099))))

(declare-fun tp!21439 () Bool)

(declare-fun b_and!13015 () Bool)

(assert (=> b!227304 (= tp!21439 b_and!13015)))

(declare-fun b!227287 () Bool)

(declare-datatypes ((Unit!6887 0))(
  ( (Unit!6888) )
))
(declare-fun e!147461 () Unit!6887)

(declare-fun Unit!6889 () Unit!6887)

(assert (=> b!227287 (= e!147461 Unit!6889)))

(declare-fun lt!114427 () Unit!6887)

(declare-datatypes ((V!7595 0))(
  ( (V!7596 (val!3025 Int)) )
))
(declare-datatypes ((ValueCell!2637 0))(
  ( (ValueCellFull!2637 (v!5041 V!7595)) (EmptyCell!2637) )
))
(declare-datatypes ((array!11164 0))(
  ( (array!11165 (arr!5301 (Array (_ BitVec 32) ValueCell!2637)) (size!5634 (_ BitVec 32))) )
))
(declare-datatypes ((array!11166 0))(
  ( (array!11167 (arr!5302 (Array (_ BitVec 32) (_ BitVec 64))) (size!5635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3174 0))(
  ( (LongMapFixedSize!3175 (defaultEntry!4246 Int) (mask!10106 (_ BitVec 32)) (extraKeys!3983 (_ BitVec 32)) (zeroValue!4087 V!7595) (minValue!4087 V!7595) (_size!1636 (_ BitVec 32)) (_keys!6300 array!11166) (_values!4229 array!11164) (_vacant!1636 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3174)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!102 (array!11166 array!11164 (_ BitVec 32) (_ BitVec 32) V!7595 V!7595 (_ BitVec 64) (_ BitVec 32) Int) Unit!6887)

(assert (=> b!227287 (= lt!114427 (lemmaArrayContainsKeyThenInListMap!102 (_keys!6300 thiss!1504) (_values!4229 thiss!1504) (mask!10106 thiss!1504) (extraKeys!3983 thiss!1504) (zeroValue!4087 thiss!1504) (minValue!4087 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4246 thiss!1504)))))

(assert (=> b!227287 false))

(declare-fun b!227288 () Bool)

(declare-fun res!111912 () Bool)

(declare-fun e!147473 () Bool)

(assert (=> b!227288 (=> (not res!111912) (not e!147473))))

(declare-fun call!21129 () Bool)

(assert (=> b!227288 (= res!111912 call!21129)))

(declare-fun e!147463 () Bool)

(assert (=> b!227288 (= e!147463 e!147473)))

(declare-fun b!227289 () Bool)

(declare-fun Unit!6890 () Unit!6887)

(assert (=> b!227289 (= e!147461 Unit!6890)))

(declare-fun b!227290 () Bool)

(declare-fun e!147475 () Bool)

(declare-fun e!147472 () Bool)

(assert (=> b!227290 (= e!147475 (not e!147472))))

(declare-fun res!111906 () Bool)

(assert (=> b!227290 (=> res!111906 e!147472)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227290 (= res!111906 (not (validMask!0 (mask!10106 thiss!1504))))))

(declare-fun lt!114424 () array!11166)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11166 (_ BitVec 32)) Bool)

(assert (=> b!227290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114424 (mask!10106 thiss!1504))))

(declare-fun lt!114421 () Unit!6887)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11166 (_ BitVec 32) (_ BitVec 32)) Unit!6887)

(assert (=> b!227290 (= lt!114421 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6300 thiss!1504) index!297 (mask!10106 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11166 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227290 (= (arrayCountValidKeys!0 lt!114424 #b00000000000000000000000000000000 (size!5635 (_keys!6300 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6300 thiss!1504) #b00000000000000000000000000000000 (size!5635 (_keys!6300 thiss!1504)))))))

(declare-fun lt!114425 () Unit!6887)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11166 (_ BitVec 32) (_ BitVec 64)) Unit!6887)

(assert (=> b!227290 (= lt!114425 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6300 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3409 0))(
  ( (Nil!3406) (Cons!3405 (h!4053 (_ BitVec 64)) (t!8376 List!3409)) )
))
(declare-fun arrayNoDuplicates!0 (array!11166 (_ BitVec 32) List!3409) Bool)

(assert (=> b!227290 (arrayNoDuplicates!0 lt!114424 #b00000000000000000000000000000000 Nil!3406)))

(assert (=> b!227290 (= lt!114424 (array!11167 (store (arr!5302 (_keys!6300 thiss!1504)) index!297 key!932) (size!5635 (_keys!6300 thiss!1504))))))

(declare-fun lt!114422 () Unit!6887)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11166 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3409) Unit!6887)

(assert (=> b!227290 (= lt!114422 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6300 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3406))))

(declare-fun lt!114419 () Unit!6887)

(assert (=> b!227290 (= lt!114419 e!147461)))

(declare-fun c!37673 () Bool)

(declare-fun arrayContainsKey!0 (array!11166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!227290 (= c!37673 (arrayContainsKey!0 (_keys!6300 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227291 () Bool)

(declare-fun e!147462 () Bool)

(declare-fun e!147467 () Bool)

(assert (=> b!227291 (= e!147462 e!147467)))

(declare-fun res!111913 () Bool)

(assert (=> b!227291 (=> (not res!111913) (not e!147467))))

(declare-datatypes ((SeekEntryResult!903 0))(
  ( (MissingZero!903 (index!5782 (_ BitVec 32))) (Found!903 (index!5783 (_ BitVec 32))) (Intermediate!903 (undefined!1715 Bool) (index!5784 (_ BitVec 32)) (x!23283 (_ BitVec 32))) (Undefined!903) (MissingVacant!903 (index!5785 (_ BitVec 32))) )
))
(declare-fun lt!114420 () SeekEntryResult!903)

(assert (=> b!227291 (= res!111913 (or (= lt!114420 (MissingZero!903 index!297)) (= lt!114420 (MissingVacant!903 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11166 (_ BitVec 32)) SeekEntryResult!903)

(assert (=> b!227291 (= lt!114420 (seekEntryOrOpen!0 key!932 (_keys!6300 thiss!1504) (mask!10106 thiss!1504)))))

(declare-fun bm!21126 () Bool)

(declare-fun call!21130 () Bool)

(assert (=> bm!21126 (= call!21130 (arrayContainsKey!0 (_keys!6300 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227292 () Bool)

(assert (=> b!227292 (= e!147472 true)))

(declare-fun lt!114423 () Bool)

(assert (=> b!227292 (= lt!114423 (arrayNoDuplicates!0 (_keys!6300 thiss!1504) #b00000000000000000000000000000000 Nil!3406))))

(declare-fun b!227293 () Bool)

(declare-fun e!147464 () Bool)

(declare-fun tp_is_empty!5961 () Bool)

(assert (=> b!227293 (= e!147464 tp_is_empty!5961)))

(declare-fun b!227294 () Bool)

(declare-fun e!147465 () Bool)

(assert (=> b!227294 (= e!147465 (not call!21130))))

(declare-fun b!227295 () Bool)

(declare-fun c!37670 () Bool)

(get-info :version)

(assert (=> b!227295 (= c!37670 ((_ is MissingVacant!903) lt!114420))))

(declare-fun e!147474 () Bool)

(assert (=> b!227295 (= e!147463 e!147474)))

(declare-fun b!227296 () Bool)

(declare-fun e!147468 () Unit!6887)

(declare-fun lt!114428 () Unit!6887)

(assert (=> b!227296 (= e!147468 lt!114428)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!275 (array!11166 array!11164 (_ BitVec 32) (_ BitVec 32) V!7595 V!7595 (_ BitVec 64) Int) Unit!6887)

(assert (=> b!227296 (= lt!114428 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!275 (_keys!6300 thiss!1504) (_values!4229 thiss!1504) (mask!10106 thiss!1504) (extraKeys!3983 thiss!1504) (zeroValue!4087 thiss!1504) (minValue!4087 thiss!1504) key!932 (defaultEntry!4246 thiss!1504)))))

(declare-fun c!37671 () Bool)

(assert (=> b!227296 (= c!37671 ((_ is MissingZero!903) lt!114420))))

(assert (=> b!227296 e!147463))

(declare-fun b!227297 () Bool)

(assert (=> b!227297 (= e!147467 e!147475)))

(declare-fun res!111908 () Bool)

(assert (=> b!227297 (=> (not res!111908) (not e!147475))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!227297 (= res!111908 (inRange!0 index!297 (mask!10106 thiss!1504)))))

(declare-fun lt!114426 () Unit!6887)

(assert (=> b!227297 (= lt!114426 e!147468)))

(declare-fun c!37672 () Bool)

(declare-datatypes ((tuple2!4466 0))(
  ( (tuple2!4467 (_1!2243 (_ BitVec 64)) (_2!2243 V!7595)) )
))
(declare-datatypes ((List!3410 0))(
  ( (Nil!3407) (Cons!3406 (h!4054 tuple2!4466) (t!8377 List!3410)) )
))
(declare-datatypes ((ListLongMap!3393 0))(
  ( (ListLongMap!3394 (toList!1712 List!3410)) )
))
(declare-fun contains!1580 (ListLongMap!3393 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1235 (array!11166 array!11164 (_ BitVec 32) (_ BitVec 32) V!7595 V!7595 (_ BitVec 32) Int) ListLongMap!3393)

(assert (=> b!227297 (= c!37672 (contains!1580 (getCurrentListMap!1235 (_keys!6300 thiss!1504) (_values!4229 thiss!1504) (mask!10106 thiss!1504) (extraKeys!3983 thiss!1504) (zeroValue!4087 thiss!1504) (minValue!4087 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4246 thiss!1504)) key!932))))

(declare-fun b!227298 () Bool)

(declare-fun e!147469 () Bool)

(assert (=> b!227298 (= e!147469 tp_is_empty!5961)))

(declare-fun bm!21127 () Bool)

(assert (=> bm!21127 (= call!21129 (inRange!0 (ite c!37671 (index!5782 lt!114420) (index!5785 lt!114420)) (mask!10106 thiss!1504)))))

(declare-fun b!227299 () Bool)

(assert (=> b!227299 (= e!147473 (not call!21130))))

(declare-fun mapIsEmpty!10111 () Bool)

(declare-fun mapRes!10111 () Bool)

(assert (=> mapIsEmpty!10111 mapRes!10111))

(declare-fun b!227300 () Bool)

(assert (=> b!227300 (= e!147474 ((_ is Undefined!903) lt!114420))))

(declare-fun b!227301 () Bool)

(declare-fun res!111910 () Bool)

(assert (=> b!227301 (=> res!111910 e!147472)))

(assert (=> b!227301 (= res!111910 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6300 thiss!1504) (mask!10106 thiss!1504))))))

(declare-fun b!227302 () Bool)

(declare-fun e!147471 () Bool)

(assert (=> b!227302 (= e!147471 (and e!147464 mapRes!10111))))

(declare-fun condMapEmpty!10111 () Bool)

(declare-fun mapDefault!10111 () ValueCell!2637)

(assert (=> b!227302 (= condMapEmpty!10111 (= (arr!5301 (_values!4229 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2637)) mapDefault!10111)))))

(declare-fun b!227303 () Bool)

(assert (=> b!227303 (= e!147474 e!147465)))

(declare-fun res!111911 () Bool)

(assert (=> b!227303 (= res!111911 call!21129)))

(assert (=> b!227303 (=> (not res!111911) (not e!147465))))

(declare-fun res!111904 () Bool)

(assert (=> start!22044 (=> (not res!111904) (not e!147462))))

(declare-fun valid!1266 (LongMapFixedSize!3174) Bool)

(assert (=> start!22044 (= res!111904 (valid!1266 thiss!1504))))

(assert (=> start!22044 e!147462))

(declare-fun e!147466 () Bool)

(assert (=> start!22044 e!147466))

(assert (=> start!22044 true))

(declare-fun mapNonEmpty!10111 () Bool)

(declare-fun tp!21438 () Bool)

(assert (=> mapNonEmpty!10111 (= mapRes!10111 (and tp!21438 e!147469))))

(declare-fun mapKey!10111 () (_ BitVec 32))

(declare-fun mapValue!10111 () ValueCell!2637)

(declare-fun mapRest!10111 () (Array (_ BitVec 32) ValueCell!2637))

(assert (=> mapNonEmpty!10111 (= (arr!5301 (_values!4229 thiss!1504)) (store mapRest!10111 mapKey!10111 mapValue!10111))))

(declare-fun array_inv!3495 (array!11166) Bool)

(declare-fun array_inv!3496 (array!11164) Bool)

(assert (=> b!227304 (= e!147466 (and tp!21439 tp_is_empty!5961 (array_inv!3495 (_keys!6300 thiss!1504)) (array_inv!3496 (_values!4229 thiss!1504)) e!147471))))

(declare-fun b!227305 () Bool)

(declare-fun res!111907 () Bool)

(assert (=> b!227305 (= res!111907 (= (select (arr!5302 (_keys!6300 thiss!1504)) (index!5785 lt!114420)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227305 (=> (not res!111907) (not e!147465))))

(declare-fun b!227306 () Bool)

(declare-fun res!111909 () Bool)

(assert (=> b!227306 (=> res!111909 e!147472)))

(assert (=> b!227306 (= res!111909 (or (not (= (size!5634 (_values!4229 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10106 thiss!1504)))) (not (= (size!5635 (_keys!6300 thiss!1504)) (size!5634 (_values!4229 thiss!1504)))) (bvslt (mask!10106 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3983 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3983 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227307 () Bool)

(declare-fun Unit!6891 () Unit!6887)

(assert (=> b!227307 (= e!147468 Unit!6891)))

(declare-fun lt!114429 () Unit!6887)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!264 (array!11166 array!11164 (_ BitVec 32) (_ BitVec 32) V!7595 V!7595 (_ BitVec 64) Int) Unit!6887)

(assert (=> b!227307 (= lt!114429 (lemmaInListMapThenSeekEntryOrOpenFindsIt!264 (_keys!6300 thiss!1504) (_values!4229 thiss!1504) (mask!10106 thiss!1504) (extraKeys!3983 thiss!1504) (zeroValue!4087 thiss!1504) (minValue!4087 thiss!1504) key!932 (defaultEntry!4246 thiss!1504)))))

(assert (=> b!227307 false))

(declare-fun b!227308 () Bool)

(declare-fun res!111905 () Bool)

(assert (=> b!227308 (=> (not res!111905) (not e!147462))))

(assert (=> b!227308 (= res!111905 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227309 () Bool)

(declare-fun res!111903 () Bool)

(assert (=> b!227309 (=> (not res!111903) (not e!147473))))

(assert (=> b!227309 (= res!111903 (= (select (arr!5302 (_keys!6300 thiss!1504)) (index!5782 lt!114420)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!22044 res!111904) b!227308))

(assert (= (and b!227308 res!111905) b!227291))

(assert (= (and b!227291 res!111913) b!227297))

(assert (= (and b!227297 c!37672) b!227307))

(assert (= (and b!227297 (not c!37672)) b!227296))

(assert (= (and b!227296 c!37671) b!227288))

(assert (= (and b!227296 (not c!37671)) b!227295))

(assert (= (and b!227288 res!111912) b!227309))

(assert (= (and b!227309 res!111903) b!227299))

(assert (= (and b!227295 c!37670) b!227303))

(assert (= (and b!227295 (not c!37670)) b!227300))

(assert (= (and b!227303 res!111911) b!227305))

(assert (= (and b!227305 res!111907) b!227294))

(assert (= (or b!227288 b!227303) bm!21127))

(assert (= (or b!227299 b!227294) bm!21126))

(assert (= (and b!227297 res!111908) b!227290))

(assert (= (and b!227290 c!37673) b!227287))

(assert (= (and b!227290 (not c!37673)) b!227289))

(assert (= (and b!227290 (not res!111906)) b!227306))

(assert (= (and b!227306 (not res!111909)) b!227301))

(assert (= (and b!227301 (not res!111910)) b!227292))

(assert (= (and b!227302 condMapEmpty!10111) mapIsEmpty!10111))

(assert (= (and b!227302 (not condMapEmpty!10111)) mapNonEmpty!10111))

(assert (= (and mapNonEmpty!10111 ((_ is ValueCellFull!2637) mapValue!10111)) b!227298))

(assert (= (and b!227302 ((_ is ValueCellFull!2637) mapDefault!10111)) b!227293))

(assert (= b!227304 b!227302))

(assert (= start!22044 b!227304))

(declare-fun m!249341 () Bool)

(assert (=> start!22044 m!249341))

(declare-fun m!249343 () Bool)

(assert (=> b!227301 m!249343))

(declare-fun m!249345 () Bool)

(assert (=> bm!21127 m!249345))

(declare-fun m!249347 () Bool)

(assert (=> b!227290 m!249347))

(declare-fun m!249349 () Bool)

(assert (=> b!227290 m!249349))

(declare-fun m!249351 () Bool)

(assert (=> b!227290 m!249351))

(declare-fun m!249353 () Bool)

(assert (=> b!227290 m!249353))

(declare-fun m!249355 () Bool)

(assert (=> b!227290 m!249355))

(declare-fun m!249357 () Bool)

(assert (=> b!227290 m!249357))

(declare-fun m!249359 () Bool)

(assert (=> b!227290 m!249359))

(declare-fun m!249361 () Bool)

(assert (=> b!227290 m!249361))

(declare-fun m!249363 () Bool)

(assert (=> b!227290 m!249363))

(declare-fun m!249365 () Bool)

(assert (=> b!227290 m!249365))

(declare-fun m!249367 () Bool)

(assert (=> b!227305 m!249367))

(declare-fun m!249369 () Bool)

(assert (=> b!227287 m!249369))

(declare-fun m!249371 () Bool)

(assert (=> b!227309 m!249371))

(declare-fun m!249373 () Bool)

(assert (=> b!227307 m!249373))

(assert (=> bm!21126 m!249349))

(declare-fun m!249375 () Bool)

(assert (=> b!227291 m!249375))

(declare-fun m!249377 () Bool)

(assert (=> mapNonEmpty!10111 m!249377))

(declare-fun m!249379 () Bool)

(assert (=> b!227304 m!249379))

(declare-fun m!249381 () Bool)

(assert (=> b!227304 m!249381))

(declare-fun m!249383 () Bool)

(assert (=> b!227296 m!249383))

(declare-fun m!249385 () Bool)

(assert (=> b!227297 m!249385))

(declare-fun m!249387 () Bool)

(assert (=> b!227297 m!249387))

(assert (=> b!227297 m!249387))

(declare-fun m!249389 () Bool)

(assert (=> b!227297 m!249389))

(declare-fun m!249391 () Bool)

(assert (=> b!227292 m!249391))

(check-sat (not start!22044) (not b!227291) (not b!227296) tp_is_empty!5961 (not b!227304) (not b!227301) (not b!227297) (not b!227292) (not bm!21127) (not b!227290) (not b!227307) (not bm!21126) (not b!227287) (not mapNonEmpty!10111) b_and!13015 (not b_next!6099))
(check-sat b_and!13015 (not b_next!6099))
