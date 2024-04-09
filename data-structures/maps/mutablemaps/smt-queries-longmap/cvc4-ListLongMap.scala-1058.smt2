; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22046 () Bool)

(assert start!22046)

(declare-fun b!227377 () Bool)

(declare-fun b_free!6101 () Bool)

(declare-fun b_next!6101 () Bool)

(assert (=> b!227377 (= b_free!6101 (not b_next!6101))))

(declare-fun tp!21444 () Bool)

(declare-fun b_and!13017 () Bool)

(assert (=> b!227377 (= tp!21444 b_and!13017)))

(declare-fun b!227356 () Bool)

(declare-fun res!111940 () Bool)

(declare-fun e!147520 () Bool)

(assert (=> b!227356 (=> res!111940 e!147520)))

(declare-datatypes ((V!7597 0))(
  ( (V!7598 (val!3026 Int)) )
))
(declare-datatypes ((ValueCell!2638 0))(
  ( (ValueCellFull!2638 (v!5042 V!7597)) (EmptyCell!2638) )
))
(declare-datatypes ((array!11168 0))(
  ( (array!11169 (arr!5303 (Array (_ BitVec 32) ValueCell!2638)) (size!5636 (_ BitVec 32))) )
))
(declare-datatypes ((array!11170 0))(
  ( (array!11171 (arr!5304 (Array (_ BitVec 32) (_ BitVec 64))) (size!5637 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3176 0))(
  ( (LongMapFixedSize!3177 (defaultEntry!4247 Int) (mask!10107 (_ BitVec 32)) (extraKeys!3984 (_ BitVec 32)) (zeroValue!4088 V!7597) (minValue!4088 V!7597) (_size!1637 (_ BitVec 32)) (_keys!6301 array!11170) (_values!4230 array!11168) (_vacant!1637 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3176)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11170 (_ BitVec 32)) Bool)

(assert (=> b!227356 (= res!111940 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6301 thiss!1504) (mask!10107 thiss!1504))))))

(declare-fun b!227357 () Bool)

(declare-fun res!111936 () Bool)

(declare-fun e!147508 () Bool)

(assert (=> b!227357 (=> (not res!111936) (not e!147508))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!227357 (= res!111936 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227358 () Bool)

(declare-fun res!111945 () Bool)

(declare-datatypes ((SeekEntryResult!904 0))(
  ( (MissingZero!904 (index!5786 (_ BitVec 32))) (Found!904 (index!5787 (_ BitVec 32))) (Intermediate!904 (undefined!1716 Bool) (index!5788 (_ BitVec 32)) (x!23284 (_ BitVec 32))) (Undefined!904) (MissingVacant!904 (index!5789 (_ BitVec 32))) )
))
(declare-fun lt!114460 () SeekEntryResult!904)

(assert (=> b!227358 (= res!111945 (= (select (arr!5304 (_keys!6301 thiss!1504)) (index!5789 lt!114460)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!147506 () Bool)

(assert (=> b!227358 (=> (not res!111945) (not e!147506))))

(declare-fun b!227359 () Bool)

(assert (=> b!227359 (= e!147520 true)))

(declare-fun lt!114461 () Bool)

(declare-datatypes ((List!3411 0))(
  ( (Nil!3408) (Cons!3407 (h!4055 (_ BitVec 64)) (t!8378 List!3411)) )
))
(declare-fun arrayNoDuplicates!0 (array!11170 (_ BitVec 32) List!3411) Bool)

(assert (=> b!227359 (= lt!114461 (arrayNoDuplicates!0 (_keys!6301 thiss!1504) #b00000000000000000000000000000000 Nil!3408))))

(declare-fun b!227360 () Bool)

(declare-fun call!21135 () Bool)

(assert (=> b!227360 (= e!147506 (not call!21135))))

(declare-fun b!227361 () Bool)

(declare-fun e!147517 () Bool)

(assert (=> b!227361 (= e!147508 e!147517)))

(declare-fun res!111943 () Bool)

(assert (=> b!227361 (=> (not res!111943) (not e!147517))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!227361 (= res!111943 (or (= lt!114460 (MissingZero!904 index!297)) (= lt!114460 (MissingVacant!904 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11170 (_ BitVec 32)) SeekEntryResult!904)

(assert (=> b!227361 (= lt!114460 (seekEntryOrOpen!0 key!932 (_keys!6301 thiss!1504) (mask!10107 thiss!1504)))))

(declare-fun b!227362 () Bool)

(declare-fun c!37684 () Bool)

(assert (=> b!227362 (= c!37684 (is-MissingVacant!904 lt!114460))))

(declare-fun e!147511 () Bool)

(declare-fun e!147512 () Bool)

(assert (=> b!227362 (= e!147511 e!147512)))

(declare-fun mapNonEmpty!10114 () Bool)

(declare-fun mapRes!10114 () Bool)

(declare-fun tp!21445 () Bool)

(declare-fun e!147515 () Bool)

(assert (=> mapNonEmpty!10114 (= mapRes!10114 (and tp!21445 e!147515))))

(declare-fun mapValue!10114 () ValueCell!2638)

(declare-fun mapRest!10114 () (Array (_ BitVec 32) ValueCell!2638))

(declare-fun mapKey!10114 () (_ BitVec 32))

(assert (=> mapNonEmpty!10114 (= (arr!5303 (_values!4230 thiss!1504)) (store mapRest!10114 mapKey!10114 mapValue!10114))))

(declare-fun b!227363 () Bool)

(declare-fun e!147507 () Bool)

(assert (=> b!227363 (= e!147507 (not call!21135))))

(declare-fun b!227364 () Bool)

(assert (=> b!227364 (= e!147512 (is-Undefined!904 lt!114460))))

(declare-fun b!227365 () Bool)

(declare-fun e!147516 () Bool)

(declare-fun tp_is_empty!5963 () Bool)

(assert (=> b!227365 (= e!147516 tp_is_empty!5963)))

(declare-fun b!227366 () Bool)

(declare-datatypes ((Unit!6892 0))(
  ( (Unit!6893) )
))
(declare-fun e!147514 () Unit!6892)

(declare-fun lt!114462 () Unit!6892)

(assert (=> b!227366 (= e!147514 lt!114462)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!276 (array!11170 array!11168 (_ BitVec 32) (_ BitVec 32) V!7597 V!7597 (_ BitVec 64) Int) Unit!6892)

(assert (=> b!227366 (= lt!114462 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!276 (_keys!6301 thiss!1504) (_values!4230 thiss!1504) (mask!10107 thiss!1504) (extraKeys!3984 thiss!1504) (zeroValue!4088 thiss!1504) (minValue!4088 thiss!1504) key!932 (defaultEntry!4247 thiss!1504)))))

(declare-fun c!37682 () Bool)

(assert (=> b!227366 (= c!37682 (is-MissingZero!904 lt!114460))))

(assert (=> b!227366 e!147511))

(declare-fun b!227367 () Bool)

(declare-fun res!111938 () Bool)

(assert (=> b!227367 (=> (not res!111938) (not e!147507))))

(declare-fun call!21136 () Bool)

(assert (=> b!227367 (= res!111938 call!21136)))

(assert (=> b!227367 (= e!147511 e!147507)))

(declare-fun b!227368 () Bool)

(assert (=> b!227368 (= e!147512 e!147506)))

(declare-fun res!111946 () Bool)

(assert (=> b!227368 (= res!111946 call!21136)))

(assert (=> b!227368 (=> (not res!111946) (not e!147506))))

(declare-fun b!227369 () Bool)

(declare-fun e!147513 () Bool)

(assert (=> b!227369 (= e!147513 (not e!147520))))

(declare-fun res!111939 () Bool)

(assert (=> b!227369 (=> res!111939 e!147520)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227369 (= res!111939 (not (validMask!0 (mask!10107 thiss!1504))))))

(declare-fun lt!114459 () array!11170)

(assert (=> b!227369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114459 (mask!10107 thiss!1504))))

(declare-fun lt!114452 () Unit!6892)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11170 (_ BitVec 32) (_ BitVec 32)) Unit!6892)

(assert (=> b!227369 (= lt!114452 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6301 thiss!1504) index!297 (mask!10107 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11170 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227369 (= (arrayCountValidKeys!0 lt!114459 #b00000000000000000000000000000000 (size!5637 (_keys!6301 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6301 thiss!1504) #b00000000000000000000000000000000 (size!5637 (_keys!6301 thiss!1504)))))))

(declare-fun lt!114453 () Unit!6892)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11170 (_ BitVec 32) (_ BitVec 64)) Unit!6892)

(assert (=> b!227369 (= lt!114453 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6301 thiss!1504) index!297 key!932))))

(assert (=> b!227369 (arrayNoDuplicates!0 lt!114459 #b00000000000000000000000000000000 Nil!3408)))

(assert (=> b!227369 (= lt!114459 (array!11171 (store (arr!5304 (_keys!6301 thiss!1504)) index!297 key!932) (size!5637 (_keys!6301 thiss!1504))))))

(declare-fun lt!114455 () Unit!6892)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11170 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3411) Unit!6892)

(assert (=> b!227369 (= lt!114455 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6301 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3408))))

(declare-fun lt!114454 () Unit!6892)

(declare-fun e!147519 () Unit!6892)

(assert (=> b!227369 (= lt!114454 e!147519)))

(declare-fun c!37683 () Bool)

(declare-fun arrayContainsKey!0 (array!11170 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!227369 (= c!37683 (arrayContainsKey!0 (_keys!6301 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!21132 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21132 (= call!21136 (inRange!0 (ite c!37682 (index!5786 lt!114460) (index!5789 lt!114460)) (mask!10107 thiss!1504)))))

(declare-fun b!227370 () Bool)

(declare-fun res!111937 () Bool)

(assert (=> b!227370 (=> res!111937 e!147520)))

(assert (=> b!227370 (= res!111937 (or (not (= (size!5636 (_values!4230 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10107 thiss!1504)))) (not (= (size!5637 (_keys!6301 thiss!1504)) (size!5636 (_values!4230 thiss!1504)))) (bvslt (mask!10107 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3984 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3984 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227371 () Bool)

(declare-fun Unit!6894 () Unit!6892)

(assert (=> b!227371 (= e!147514 Unit!6894)))

(declare-fun lt!114456 () Unit!6892)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!265 (array!11170 array!11168 (_ BitVec 32) (_ BitVec 32) V!7597 V!7597 (_ BitVec 64) Int) Unit!6892)

(assert (=> b!227371 (= lt!114456 (lemmaInListMapThenSeekEntryOrOpenFindsIt!265 (_keys!6301 thiss!1504) (_values!4230 thiss!1504) (mask!10107 thiss!1504) (extraKeys!3984 thiss!1504) (zeroValue!4088 thiss!1504) (minValue!4088 thiss!1504) key!932 (defaultEntry!4247 thiss!1504)))))

(assert (=> b!227371 false))

(declare-fun b!227372 () Bool)

(declare-fun res!111942 () Bool)

(assert (=> b!227372 (=> (not res!111942) (not e!147507))))

(assert (=> b!227372 (= res!111942 (= (select (arr!5304 (_keys!6301 thiss!1504)) (index!5786 lt!114460)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!111944 () Bool)

(assert (=> start!22046 (=> (not res!111944) (not e!147508))))

(declare-fun valid!1267 (LongMapFixedSize!3176) Bool)

(assert (=> start!22046 (= res!111944 (valid!1267 thiss!1504))))

(assert (=> start!22046 e!147508))

(declare-fun e!147509 () Bool)

(assert (=> start!22046 e!147509))

(assert (=> start!22046 true))

(declare-fun bm!21133 () Bool)

(assert (=> bm!21133 (= call!21135 (arrayContainsKey!0 (_keys!6301 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227373 () Bool)

(declare-fun Unit!6895 () Unit!6892)

(assert (=> b!227373 (= e!147519 Unit!6895)))

(declare-fun b!227374 () Bool)

(declare-fun e!147518 () Bool)

(assert (=> b!227374 (= e!147518 (and e!147516 mapRes!10114))))

(declare-fun condMapEmpty!10114 () Bool)

(declare-fun mapDefault!10114 () ValueCell!2638)

