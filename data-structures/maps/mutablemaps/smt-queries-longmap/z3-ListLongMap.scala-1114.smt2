; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22944 () Bool)

(assert start!22944)

(declare-fun b!239379 () Bool)

(declare-fun b_free!6435 () Bool)

(declare-fun b_next!6435 () Bool)

(assert (=> b!239379 (= b_free!6435 (not b_next!6435))))

(declare-fun tp!22509 () Bool)

(declare-fun b_and!13419 () Bool)

(assert (=> b!239379 (= tp!22509 b_and!13419)))

(declare-fun b!239376 () Bool)

(declare-fun e!155430 () Bool)

(declare-fun tp_is_empty!6297 () Bool)

(assert (=> b!239376 (= e!155430 tp_is_empty!6297)))

(declare-fun mapNonEmpty!10677 () Bool)

(declare-fun mapRes!10677 () Bool)

(declare-fun tp!22508 () Bool)

(declare-fun e!155435 () Bool)

(assert (=> mapNonEmpty!10677 (= mapRes!10677 (and tp!22508 e!155435))))

(declare-datatypes ((V!8043 0))(
  ( (V!8044 (val!3193 Int)) )
))
(declare-datatypes ((ValueCell!2805 0))(
  ( (ValueCellFull!2805 (v!5227 V!8043)) (EmptyCell!2805) )
))
(declare-fun mapValue!10677 () ValueCell!2805)

(declare-fun mapRest!10677 () (Array (_ BitVec 32) ValueCell!2805))

(declare-datatypes ((array!11872 0))(
  ( (array!11873 (arr!5637 (Array (_ BitVec 32) ValueCell!2805)) (size!5978 (_ BitVec 32))) )
))
(declare-datatypes ((array!11874 0))(
  ( (array!11875 (arr!5638 (Array (_ BitVec 32) (_ BitVec 64))) (size!5979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3510 0))(
  ( (LongMapFixedSize!3511 (defaultEntry!4440 Int) (mask!10486 (_ BitVec 32)) (extraKeys!4177 (_ BitVec 32)) (zeroValue!4281 V!8043) (minValue!4281 V!8043) (_size!1804 (_ BitVec 32)) (_keys!6542 array!11874) (_values!4423 array!11872) (_vacant!1804 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3510)

(declare-fun mapKey!10677 () (_ BitVec 32))

(assert (=> mapNonEmpty!10677 (= (arr!5637 (_values!4423 thiss!1504)) (store mapRest!10677 mapKey!10677 mapValue!10677))))

(declare-fun mapIsEmpty!10677 () Bool)

(assert (=> mapIsEmpty!10677 mapRes!10677))

(declare-fun b!239377 () Bool)

(declare-fun c!39891 () Bool)

(declare-datatypes ((SeekEntryResult!1042 0))(
  ( (MissingZero!1042 (index!6338 (_ BitVec 32))) (Found!1042 (index!6339 (_ BitVec 32))) (Intermediate!1042 (undefined!1854 Bool) (index!6340 (_ BitVec 32)) (x!24114 (_ BitVec 32))) (Undefined!1042) (MissingVacant!1042 (index!6341 (_ BitVec 32))) )
))
(declare-fun lt!120809 () SeekEntryResult!1042)

(get-info :version)

(assert (=> b!239377 (= c!39891 ((_ is MissingVacant!1042) lt!120809))))

(declare-fun e!155429 () Bool)

(declare-fun e!155439 () Bool)

(assert (=> b!239377 (= e!155429 e!155439)))

(declare-fun bm!22260 () Bool)

(declare-fun call!22263 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11874 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22260 (= call!22263 (arrayContainsKey!0 (_keys!6542 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun call!22264 () Bool)

(declare-fun bm!22261 () Bool)

(declare-fun c!39892 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22261 (= call!22264 (inRange!0 (ite c!39892 (index!6338 lt!120809) (index!6341 lt!120809)) (mask!10486 thiss!1504)))))

(declare-fun b!239378 () Bool)

(assert (=> b!239378 (= e!155439 ((_ is Undefined!1042) lt!120809))))

(declare-fun e!155434 () Bool)

(declare-fun e!155432 () Bool)

(declare-fun array_inv!3719 (array!11874) Bool)

(declare-fun array_inv!3720 (array!11872) Bool)

(assert (=> b!239379 (= e!155432 (and tp!22509 tp_is_empty!6297 (array_inv!3719 (_keys!6542 thiss!1504)) (array_inv!3720 (_values!4423 thiss!1504)) e!155434))))

(declare-fun b!239380 () Bool)

(declare-fun e!155438 () Bool)

(assert (=> b!239380 (= e!155438 (and (= (size!5978 (_values!4423 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10486 thiss!1504))) (= (size!5979 (_keys!6542 thiss!1504)) (size!5978 (_values!4423 thiss!1504))) (bvsge (mask!10486 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4177 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!239381 () Bool)

(declare-fun e!155441 () Bool)

(assert (=> b!239381 (= e!155441 (not call!22263))))

(declare-fun res!117334 () Bool)

(declare-fun e!155436 () Bool)

(assert (=> start!22944 (=> (not res!117334) (not e!155436))))

(declare-fun valid!1376 (LongMapFixedSize!3510) Bool)

(assert (=> start!22944 (= res!117334 (valid!1376 thiss!1504))))

(assert (=> start!22944 e!155436))

(assert (=> start!22944 e!155432))

(assert (=> start!22944 true))

(declare-fun b!239382 () Bool)

(declare-fun e!155437 () Bool)

(assert (=> b!239382 (= e!155437 e!155438)))

(declare-fun res!117335 () Bool)

(assert (=> b!239382 (=> (not res!117335) (not e!155438))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239382 (= res!117335 (inRange!0 index!297 (mask!10486 thiss!1504)))))

(declare-datatypes ((Unit!7350 0))(
  ( (Unit!7351) )
))
(declare-fun lt!120808 () Unit!7350)

(declare-fun e!155440 () Unit!7350)

(assert (=> b!239382 (= lt!120808 e!155440)))

(declare-fun c!39890 () Bool)

(declare-datatypes ((tuple2!4700 0))(
  ( (tuple2!4701 (_1!2360 (_ BitVec 64)) (_2!2360 V!8043)) )
))
(declare-datatypes ((List!3614 0))(
  ( (Nil!3611) (Cons!3610 (h!4266 tuple2!4700) (t!8617 List!3614)) )
))
(declare-datatypes ((ListLongMap!3627 0))(
  ( (ListLongMap!3628 (toList!1829 List!3614)) )
))
(declare-fun contains!1711 (ListLongMap!3627 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1352 (array!11874 array!11872 (_ BitVec 32) (_ BitVec 32) V!8043 V!8043 (_ BitVec 32) Int) ListLongMap!3627)

(assert (=> b!239382 (= c!39890 (contains!1711 (getCurrentListMap!1352 (_keys!6542 thiss!1504) (_values!4423 thiss!1504) (mask!10486 thiss!1504) (extraKeys!4177 thiss!1504) (zeroValue!4281 thiss!1504) (minValue!4281 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4440 thiss!1504)) key!932))))

(declare-fun b!239383 () Bool)

(declare-fun res!117333 () Bool)

(assert (=> b!239383 (=> (not res!117333) (not e!155438))))

(assert (=> b!239383 (= res!117333 (arrayContainsKey!0 (_keys!6542 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239384 () Bool)

(assert (=> b!239384 (= e!155434 (and e!155430 mapRes!10677))))

(declare-fun condMapEmpty!10677 () Bool)

(declare-fun mapDefault!10677 () ValueCell!2805)

(assert (=> b!239384 (= condMapEmpty!10677 (= (arr!5637 (_values!4423 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2805)) mapDefault!10677)))))

(declare-fun b!239385 () Bool)

(declare-fun res!117332 () Bool)

(assert (=> b!239385 (=> (not res!117332) (not e!155441))))

(assert (=> b!239385 (= res!117332 call!22264)))

(assert (=> b!239385 (= e!155429 e!155441)))

(declare-fun b!239386 () Bool)

(declare-fun res!117337 () Bool)

(assert (=> b!239386 (= res!117337 (= (select (arr!5638 (_keys!6542 thiss!1504)) (index!6341 lt!120809)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155433 () Bool)

(assert (=> b!239386 (=> (not res!117337) (not e!155433))))

(declare-fun b!239387 () Bool)

(declare-fun res!117339 () Bool)

(assert (=> b!239387 (=> (not res!117339) (not e!155441))))

(assert (=> b!239387 (= res!117339 (= (select (arr!5638 (_keys!6542 thiss!1504)) (index!6338 lt!120809)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239388 () Bool)

(assert (=> b!239388 (= e!155436 e!155437)))

(declare-fun res!117338 () Bool)

(assert (=> b!239388 (=> (not res!117338) (not e!155437))))

(assert (=> b!239388 (= res!117338 (or (= lt!120809 (MissingZero!1042 index!297)) (= lt!120809 (MissingVacant!1042 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11874 (_ BitVec 32)) SeekEntryResult!1042)

(assert (=> b!239388 (= lt!120809 (seekEntryOrOpen!0 key!932 (_keys!6542 thiss!1504) (mask!10486 thiss!1504)))))

(declare-fun b!239389 () Bool)

(declare-fun res!117340 () Bool)

(assert (=> b!239389 (=> (not res!117340) (not e!155438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239389 (= res!117340 (validMask!0 (mask!10486 thiss!1504)))))

(declare-fun b!239390 () Bool)

(assert (=> b!239390 (= e!155439 e!155433)))

(declare-fun res!117341 () Bool)

(assert (=> b!239390 (= res!117341 call!22264)))

(assert (=> b!239390 (=> (not res!117341) (not e!155433))))

(declare-fun b!239391 () Bool)

(declare-fun res!117336 () Bool)

(assert (=> b!239391 (=> (not res!117336) (not e!155436))))

(assert (=> b!239391 (= res!117336 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239392 () Bool)

(assert (=> b!239392 (= e!155433 (not call!22263))))

(declare-fun b!239393 () Bool)

(declare-fun Unit!7352 () Unit!7350)

(assert (=> b!239393 (= e!155440 Unit!7352)))

(declare-fun lt!120811 () Unit!7350)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!328 (array!11874 array!11872 (_ BitVec 32) (_ BitVec 32) V!8043 V!8043 (_ BitVec 64) Int) Unit!7350)

(assert (=> b!239393 (= lt!120811 (lemmaInListMapThenSeekEntryOrOpenFindsIt!328 (_keys!6542 thiss!1504) (_values!4423 thiss!1504) (mask!10486 thiss!1504) (extraKeys!4177 thiss!1504) (zeroValue!4281 thiss!1504) (minValue!4281 thiss!1504) key!932 (defaultEntry!4440 thiss!1504)))))

(assert (=> b!239393 false))

(declare-fun b!239394 () Bool)

(declare-fun lt!120810 () Unit!7350)

(assert (=> b!239394 (= e!155440 lt!120810)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!341 (array!11874 array!11872 (_ BitVec 32) (_ BitVec 32) V!8043 V!8043 (_ BitVec 64) Int) Unit!7350)

(assert (=> b!239394 (= lt!120810 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!341 (_keys!6542 thiss!1504) (_values!4423 thiss!1504) (mask!10486 thiss!1504) (extraKeys!4177 thiss!1504) (zeroValue!4281 thiss!1504) (minValue!4281 thiss!1504) key!932 (defaultEntry!4440 thiss!1504)))))

(assert (=> b!239394 (= c!39892 ((_ is MissingZero!1042) lt!120809))))

(assert (=> b!239394 e!155429))

(declare-fun b!239395 () Bool)

(assert (=> b!239395 (= e!155435 tp_is_empty!6297)))

(assert (= (and start!22944 res!117334) b!239391))

(assert (= (and b!239391 res!117336) b!239388))

(assert (= (and b!239388 res!117338) b!239382))

(assert (= (and b!239382 c!39890) b!239393))

(assert (= (and b!239382 (not c!39890)) b!239394))

(assert (= (and b!239394 c!39892) b!239385))

(assert (= (and b!239394 (not c!39892)) b!239377))

(assert (= (and b!239385 res!117332) b!239387))

(assert (= (and b!239387 res!117339) b!239381))

(assert (= (and b!239377 c!39891) b!239390))

(assert (= (and b!239377 (not c!39891)) b!239378))

(assert (= (and b!239390 res!117341) b!239386))

(assert (= (and b!239386 res!117337) b!239392))

(assert (= (or b!239385 b!239390) bm!22261))

(assert (= (or b!239381 b!239392) bm!22260))

(assert (= (and b!239382 res!117335) b!239383))

(assert (= (and b!239383 res!117333) b!239389))

(assert (= (and b!239389 res!117340) b!239380))

(assert (= (and b!239384 condMapEmpty!10677) mapIsEmpty!10677))

(assert (= (and b!239384 (not condMapEmpty!10677)) mapNonEmpty!10677))

(assert (= (and mapNonEmpty!10677 ((_ is ValueCellFull!2805) mapValue!10677)) b!239395))

(assert (= (and b!239384 ((_ is ValueCellFull!2805) mapDefault!10677)) b!239376))

(assert (= b!239379 b!239384))

(assert (= start!22944 b!239379))

(declare-fun m!259477 () Bool)

(assert (=> b!239387 m!259477))

(declare-fun m!259479 () Bool)

(assert (=> bm!22260 m!259479))

(declare-fun m!259481 () Bool)

(assert (=> b!239394 m!259481))

(declare-fun m!259483 () Bool)

(assert (=> b!239389 m!259483))

(declare-fun m!259485 () Bool)

(assert (=> b!239393 m!259485))

(declare-fun m!259487 () Bool)

(assert (=> b!239386 m!259487))

(declare-fun m!259489 () Bool)

(assert (=> start!22944 m!259489))

(declare-fun m!259491 () Bool)

(assert (=> b!239382 m!259491))

(declare-fun m!259493 () Bool)

(assert (=> b!239382 m!259493))

(assert (=> b!239382 m!259493))

(declare-fun m!259495 () Bool)

(assert (=> b!239382 m!259495))

(assert (=> b!239383 m!259479))

(declare-fun m!259497 () Bool)

(assert (=> mapNonEmpty!10677 m!259497))

(declare-fun m!259499 () Bool)

(assert (=> b!239388 m!259499))

(declare-fun m!259501 () Bool)

(assert (=> bm!22261 m!259501))

(declare-fun m!259503 () Bool)

(assert (=> b!239379 m!259503))

(declare-fun m!259505 () Bool)

(assert (=> b!239379 m!259505))

(check-sat (not b!239388) (not b!239379) (not b!239389) (not start!22944) (not bm!22261) (not b!239382) tp_is_empty!6297 b_and!13419 (not b_next!6435) (not b!239394) (not b!239393) (not b!239383) (not mapNonEmpty!10677) (not bm!22260))
(check-sat b_and!13419 (not b_next!6435))
