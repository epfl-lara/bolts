; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22018 () Bool)

(assert start!22018)

(declare-fun b!226381 () Bool)

(declare-fun b_free!6073 () Bool)

(declare-fun b_next!6073 () Bool)

(assert (=> b!226381 (= b_free!6073 (not b_next!6073))))

(declare-fun tp!21361 () Bool)

(declare-fun b_and!12989 () Bool)

(assert (=> b!226381 (= tp!21361 b_and!12989)))

(declare-fun b!226358 () Bool)

(declare-fun e!146882 () Bool)

(assert (=> b!226358 (= e!146882 true)))

(declare-fun lt!113998 () Bool)

(declare-datatypes ((V!7561 0))(
  ( (V!7562 (val!3012 Int)) )
))
(declare-datatypes ((ValueCell!2624 0))(
  ( (ValueCellFull!2624 (v!5028 V!7561)) (EmptyCell!2624) )
))
(declare-datatypes ((array!11112 0))(
  ( (array!11113 (arr!5275 (Array (_ BitVec 32) ValueCell!2624)) (size!5608 (_ BitVec 32))) )
))
(declare-datatypes ((array!11114 0))(
  ( (array!11115 (arr!5276 (Array (_ BitVec 32) (_ BitVec 64))) (size!5609 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3148 0))(
  ( (LongMapFixedSize!3149 (defaultEntry!4233 Int) (mask!10085 (_ BitVec 32)) (extraKeys!3970 (_ BitVec 32)) (zeroValue!4074 V!7561) (minValue!4074 V!7561) (_size!1623 (_ BitVec 32)) (_keys!6287 array!11114) (_values!4216 array!11112) (_vacant!1623 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3148)

(declare-datatypes ((List!3393 0))(
  ( (Nil!3390) (Cons!3389 (h!4037 (_ BitVec 64)) (t!8360 List!3393)) )
))
(declare-fun arrayNoDuplicates!0 (array!11114 (_ BitVec 32) List!3393) Bool)

(assert (=> b!226358 (= lt!113998 (arrayNoDuplicates!0 (_keys!6287 thiss!1504) #b00000000000000000000000000000000 Nil!3390))))

(declare-fun b!226359 () Bool)

(declare-fun e!146878 () Bool)

(declare-fun call!21052 () Bool)

(assert (=> b!226359 (= e!146878 (not call!21052))))

(declare-fun b!226360 () Bool)

(declare-fun e!146887 () Bool)

(declare-fun tp_is_empty!5935 () Bool)

(assert (=> b!226360 (= e!146887 tp_is_empty!5935)))

(declare-fun b!226361 () Bool)

(declare-datatypes ((Unit!6843 0))(
  ( (Unit!6844) )
))
(declare-fun e!146877 () Unit!6843)

(declare-fun lt!113992 () Unit!6843)

(assert (=> b!226361 (= e!146877 lt!113992)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!266 (array!11114 array!11112 (_ BitVec 32) (_ BitVec 32) V!7561 V!7561 (_ BitVec 64) Int) Unit!6843)

(assert (=> b!226361 (= lt!113992 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!266 (_keys!6287 thiss!1504) (_values!4216 thiss!1504) (mask!10085 thiss!1504) (extraKeys!3970 thiss!1504) (zeroValue!4074 thiss!1504) (minValue!4074 thiss!1504) key!932 (defaultEntry!4233 thiss!1504)))))

(declare-fun c!37515 () Bool)

(declare-datatypes ((SeekEntryResult!892 0))(
  ( (MissingZero!892 (index!5738 (_ BitVec 32))) (Found!892 (index!5739 (_ BitVec 32))) (Intermediate!892 (undefined!1704 Bool) (index!5740 (_ BitVec 32)) (x!23240 (_ BitVec 32))) (Undefined!892) (MissingVacant!892 (index!5741 (_ BitVec 32))) )
))
(declare-fun lt!113997 () SeekEntryResult!892)

(assert (=> b!226361 (= c!37515 (is-MissingZero!892 lt!113997))))

(declare-fun e!146876 () Bool)

(assert (=> b!226361 e!146876))

(declare-fun b!226362 () Bool)

(declare-fun e!146890 () Bool)

(assert (=> b!226362 (= e!146890 (is-Undefined!892 lt!113997))))

(declare-fun b!226364 () Bool)

(declare-fun c!37514 () Bool)

(assert (=> b!226364 (= c!37514 (is-MissingVacant!892 lt!113997))))

(assert (=> b!226364 (= e!146876 e!146890)))

(declare-fun bm!21048 () Bool)

(declare-fun call!21051 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21048 (= call!21051 (inRange!0 (ite c!37515 (index!5738 lt!113997) (index!5741 lt!113997)) (mask!10085 thiss!1504)))))

(declare-fun b!226365 () Bool)

(declare-fun e!146885 () Bool)

(assert (=> b!226365 (= e!146885 (not e!146882))))

(declare-fun res!111452 () Bool)

(assert (=> b!226365 (=> res!111452 e!146882)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226365 (= res!111452 (not (validMask!0 (mask!10085 thiss!1504))))))

(declare-fun lt!114000 () array!11114)

(declare-fun arrayCountValidKeys!0 (array!11114 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226365 (= (arrayCountValidKeys!0 lt!114000 #b00000000000000000000000000000000 (size!5609 (_keys!6287 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6287 thiss!1504) #b00000000000000000000000000000000 (size!5609 (_keys!6287 thiss!1504)))))))

(declare-fun lt!113996 () Unit!6843)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11114 (_ BitVec 32) (_ BitVec 64)) Unit!6843)

(assert (=> b!226365 (= lt!113996 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6287 thiss!1504) index!297 key!932))))

(assert (=> b!226365 (arrayNoDuplicates!0 lt!114000 #b00000000000000000000000000000000 Nil!3390)))

(assert (=> b!226365 (= lt!114000 (array!11115 (store (arr!5276 (_keys!6287 thiss!1504)) index!297 key!932) (size!5609 (_keys!6287 thiss!1504))))))

(declare-fun lt!113993 () Unit!6843)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11114 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3393) Unit!6843)

(assert (=> b!226365 (= lt!113993 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6287 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3390))))

(declare-fun lt!113995 () Unit!6843)

(declare-fun e!146889 () Unit!6843)

(assert (=> b!226365 (= lt!113995 e!146889)))

(declare-fun c!37517 () Bool)

(declare-fun lt!113990 () Bool)

(assert (=> b!226365 (= c!37517 lt!113990)))

(declare-fun arrayContainsKey!0 (array!11114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!226365 (= lt!113990 (arrayContainsKey!0 (_keys!6287 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226366 () Bool)

(declare-fun res!111442 () Bool)

(declare-fun e!146888 () Bool)

(assert (=> b!226366 (=> (not res!111442) (not e!146888))))

(assert (=> b!226366 (= res!111442 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226367 () Bool)

(declare-fun Unit!6845 () Unit!6843)

(assert (=> b!226367 (= e!146877 Unit!6845)))

(declare-fun lt!113999 () Unit!6843)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!257 (array!11114 array!11112 (_ BitVec 32) (_ BitVec 32) V!7561 V!7561 (_ BitVec 64) Int) Unit!6843)

(assert (=> b!226367 (= lt!113999 (lemmaInListMapThenSeekEntryOrOpenFindsIt!257 (_keys!6287 thiss!1504) (_values!4216 thiss!1504) (mask!10085 thiss!1504) (extraKeys!3970 thiss!1504) (zeroValue!4074 thiss!1504) (minValue!4074 thiss!1504) key!932 (defaultEntry!4233 thiss!1504)))))

(assert (=> b!226367 false))

(declare-fun b!226368 () Bool)

(declare-fun Unit!6846 () Unit!6843)

(assert (=> b!226368 (= e!146889 Unit!6846)))

(declare-fun lt!113991 () Unit!6843)

(declare-fun lemmaArrayContainsKeyThenInListMap!94 (array!11114 array!11112 (_ BitVec 32) (_ BitVec 32) V!7561 V!7561 (_ BitVec 64) (_ BitVec 32) Int) Unit!6843)

(assert (=> b!226368 (= lt!113991 (lemmaArrayContainsKeyThenInListMap!94 (_keys!6287 thiss!1504) (_values!4216 thiss!1504) (mask!10085 thiss!1504) (extraKeys!3970 thiss!1504) (zeroValue!4074 thiss!1504) (minValue!4074 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4233 thiss!1504)))))

(assert (=> b!226368 false))

(declare-fun b!226369 () Bool)

(declare-fun res!111443 () Bool)

(declare-fun e!146879 () Bool)

(assert (=> b!226369 (=> (not res!111443) (not e!146879))))

(assert (=> b!226369 (= res!111443 (= (select (arr!5276 (_keys!6287 thiss!1504)) (index!5738 lt!113997)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226370 () Bool)

(assert (=> b!226370 (= e!146890 e!146878)))

(declare-fun res!111449 () Bool)

(assert (=> b!226370 (= res!111449 call!21051)))

(assert (=> b!226370 (=> (not res!111449) (not e!146878))))

(declare-fun b!226371 () Bool)

(declare-fun res!111445 () Bool)

(assert (=> b!226371 (=> res!111445 e!146882)))

(assert (=> b!226371 (= res!111445 lt!113990)))

(declare-fun mapNonEmpty!10072 () Bool)

(declare-fun mapRes!10072 () Bool)

(declare-fun tp!21360 () Bool)

(declare-fun e!146884 () Bool)

(assert (=> mapNonEmpty!10072 (= mapRes!10072 (and tp!21360 e!146884))))

(declare-fun mapKey!10072 () (_ BitVec 32))

(declare-fun mapRest!10072 () (Array (_ BitVec 32) ValueCell!2624))

(declare-fun mapValue!10072 () ValueCell!2624)

(assert (=> mapNonEmpty!10072 (= (arr!5275 (_values!4216 thiss!1504)) (store mapRest!10072 mapKey!10072 mapValue!10072))))

(declare-fun b!226372 () Bool)

(declare-fun e!146881 () Bool)

(assert (=> b!226372 (= e!146888 e!146881)))

(declare-fun res!111447 () Bool)

(assert (=> b!226372 (=> (not res!111447) (not e!146881))))

(assert (=> b!226372 (= res!111447 (or (= lt!113997 (MissingZero!892 index!297)) (= lt!113997 (MissingVacant!892 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11114 (_ BitVec 32)) SeekEntryResult!892)

(assert (=> b!226372 (= lt!113997 (seekEntryOrOpen!0 key!932 (_keys!6287 thiss!1504) (mask!10085 thiss!1504)))))

(declare-fun b!226373 () Bool)

(declare-fun res!111453 () Bool)

(assert (=> b!226373 (= res!111453 (= (select (arr!5276 (_keys!6287 thiss!1504)) (index!5741 lt!113997)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226373 (=> (not res!111453) (not e!146878))))

(declare-fun mapIsEmpty!10072 () Bool)

(assert (=> mapIsEmpty!10072 mapRes!10072))

(declare-fun b!226374 () Bool)

(assert (=> b!226374 (= e!146879 (not call!21052))))

(declare-fun b!226375 () Bool)

(assert (=> b!226375 (= e!146884 tp_is_empty!5935)))

(declare-fun b!226376 () Bool)

(declare-fun res!111446 () Bool)

(assert (=> b!226376 (=> res!111446 e!146882)))

(assert (=> b!226376 (= res!111446 (or (not (= (size!5609 (_keys!6287 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10085 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5609 (_keys!6287 thiss!1504)))))))

(declare-fun b!226377 () Bool)

(assert (=> b!226377 (= e!146881 e!146885)))

(declare-fun res!111454 () Bool)

(assert (=> b!226377 (=> (not res!111454) (not e!146885))))

(assert (=> b!226377 (= res!111454 (inRange!0 index!297 (mask!10085 thiss!1504)))))

(declare-fun lt!113994 () Unit!6843)

(assert (=> b!226377 (= lt!113994 e!146877)))

(declare-fun c!37516 () Bool)

(declare-datatypes ((tuple2!4452 0))(
  ( (tuple2!4453 (_1!2236 (_ BitVec 64)) (_2!2236 V!7561)) )
))
(declare-datatypes ((List!3394 0))(
  ( (Nil!3391) (Cons!3390 (h!4038 tuple2!4452) (t!8361 List!3394)) )
))
(declare-datatypes ((ListLongMap!3379 0))(
  ( (ListLongMap!3380 (toList!1705 List!3394)) )
))
(declare-fun contains!1573 (ListLongMap!3379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1228 (array!11114 array!11112 (_ BitVec 32) (_ BitVec 32) V!7561 V!7561 (_ BitVec 32) Int) ListLongMap!3379)

(assert (=> b!226377 (= c!37516 (contains!1573 (getCurrentListMap!1228 (_keys!6287 thiss!1504) (_values!4216 thiss!1504) (mask!10085 thiss!1504) (extraKeys!3970 thiss!1504) (zeroValue!4074 thiss!1504) (minValue!4074 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4233 thiss!1504)) key!932))))

(declare-fun bm!21049 () Bool)

(assert (=> bm!21049 (= call!21052 (arrayContainsKey!0 (_keys!6287 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!111448 () Bool)

(assert (=> start!22018 (=> (not res!111448) (not e!146888))))

(declare-fun valid!1259 (LongMapFixedSize!3148) Bool)

(assert (=> start!22018 (= res!111448 (valid!1259 thiss!1504))))

(assert (=> start!22018 e!146888))

(declare-fun e!146883 () Bool)

(assert (=> start!22018 e!146883))

(assert (=> start!22018 true))

(declare-fun b!226363 () Bool)

(declare-fun res!111444 () Bool)

(assert (=> b!226363 (=> res!111444 e!146882)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11114 (_ BitVec 32)) Bool)

(assert (=> b!226363 (= res!111444 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6287 thiss!1504) (mask!10085 thiss!1504))))))

(declare-fun b!226378 () Bool)

(declare-fun res!111451 () Bool)

(assert (=> b!226378 (=> (not res!111451) (not e!146879))))

(assert (=> b!226378 (= res!111451 call!21051)))

(assert (=> b!226378 (= e!146876 e!146879)))

(declare-fun b!226379 () Bool)

(declare-fun res!111450 () Bool)

(assert (=> b!226379 (=> res!111450 e!146882)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226379 (= res!111450 (not (validKeyInArray!0 key!932)))))

(declare-fun b!226380 () Bool)

(declare-fun e!146886 () Bool)

(assert (=> b!226380 (= e!146886 (and e!146887 mapRes!10072))))

(declare-fun condMapEmpty!10072 () Bool)

(declare-fun mapDefault!10072 () ValueCell!2624)

