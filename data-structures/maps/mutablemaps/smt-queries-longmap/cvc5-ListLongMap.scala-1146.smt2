; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23890 () Bool)

(assert start!23890)

(declare-fun b!250288 () Bool)

(declare-fun b_free!6625 () Bool)

(declare-fun b_next!6625 () Bool)

(assert (=> b!250288 (= b_free!6625 (not b_next!6625))))

(declare-fun tp!23139 () Bool)

(declare-fun b_and!13663 () Bool)

(assert (=> b!250288 (= tp!23139 b_and!13663)))

(declare-fun b!250270 () Bool)

(declare-fun e!162320 () Bool)

(declare-fun e!162328 () Bool)

(assert (=> b!250270 (= e!162320 (not e!162328))))

(declare-fun res!122599 () Bool)

(assert (=> b!250270 (=> res!122599 e!162328)))

(declare-datatypes ((V!8297 0))(
  ( (V!8298 (val!3288 Int)) )
))
(declare-datatypes ((ValueCell!2900 0))(
  ( (ValueCellFull!2900 (v!5349 V!8297)) (EmptyCell!2900) )
))
(declare-datatypes ((array!12290 0))(
  ( (array!12291 (arr!5827 (Array (_ BitVec 32) ValueCell!2900)) (size!6172 (_ BitVec 32))) )
))
(declare-datatypes ((array!12292 0))(
  ( (array!12293 (arr!5828 (Array (_ BitVec 32) (_ BitVec 64))) (size!6173 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3700 0))(
  ( (LongMapFixedSize!3701 (defaultEntry!4627 Int) (mask!10810 (_ BitVec 32)) (extraKeys!4364 (_ BitVec 32)) (zeroValue!4468 V!8297) (minValue!4468 V!8297) (_size!1899 (_ BitVec 32)) (_keys!6763 array!12292) (_values!4610 array!12290) (_vacant!1899 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3700)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!250270 (= res!122599 (not (validMask!0 (mask!10810 thiss!1504))))))

(declare-fun lt!125431 () array!12292)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12292 (_ BitVec 32)) Bool)

(assert (=> b!250270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125431 (mask!10810 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((Unit!7742 0))(
  ( (Unit!7743) )
))
(declare-fun lt!125430 () Unit!7742)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12292 (_ BitVec 32) (_ BitVec 32)) Unit!7742)

(assert (=> b!250270 (= lt!125430 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6763 thiss!1504) index!297 (mask!10810 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12292 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!250270 (= (arrayCountValidKeys!0 lt!125431 #b00000000000000000000000000000000 (size!6173 (_keys!6763 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6763 thiss!1504) #b00000000000000000000000000000000 (size!6173 (_keys!6763 thiss!1504)))))))

(declare-fun lt!125433 () Unit!7742)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12292 (_ BitVec 32) (_ BitVec 64)) Unit!7742)

(assert (=> b!250270 (= lt!125433 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6763 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3741 0))(
  ( (Nil!3738) (Cons!3737 (h!4397 (_ BitVec 64)) (t!8782 List!3741)) )
))
(declare-fun arrayNoDuplicates!0 (array!12292 (_ BitVec 32) List!3741) Bool)

(assert (=> b!250270 (arrayNoDuplicates!0 lt!125431 #b00000000000000000000000000000000 Nil!3738)))

(assert (=> b!250270 (= lt!125431 (array!12293 (store (arr!5828 (_keys!6763 thiss!1504)) index!297 key!932) (size!6173 (_keys!6763 thiss!1504))))))

(declare-fun lt!125429 () Unit!7742)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12292 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3741) Unit!7742)

(assert (=> b!250270 (= lt!125429 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6763 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3738))))

(declare-fun lt!125428 () Unit!7742)

(declare-fun e!162330 () Unit!7742)

(assert (=> b!250270 (= lt!125428 e!162330)))

(declare-fun c!42035 () Bool)

(declare-fun arrayContainsKey!0 (array!12292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!250270 (= c!42035 (arrayContainsKey!0 (_keys!6763 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250271 () Bool)

(declare-fun res!122596 () Bool)

(declare-datatypes ((SeekEntryResult!1130 0))(
  ( (MissingZero!1130 (index!6690 (_ BitVec 32))) (Found!1130 (index!6691 (_ BitVec 32))) (Intermediate!1130 (undefined!1942 Bool) (index!6692 (_ BitVec 32)) (x!24680 (_ BitVec 32))) (Undefined!1130) (MissingVacant!1130 (index!6693 (_ BitVec 32))) )
))
(declare-fun lt!125432 () SeekEntryResult!1130)

(assert (=> b!250271 (= res!122596 (= (select (arr!5828 (_keys!6763 thiss!1504)) (index!6693 lt!125432)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162319 () Bool)

(assert (=> b!250271 (=> (not res!122596) (not e!162319))))

(declare-fun b!250272 () Bool)

(declare-fun e!162321 () Bool)

(assert (=> b!250272 (= e!162321 e!162319)))

(declare-fun res!122598 () Bool)

(declare-fun call!23516 () Bool)

(assert (=> b!250272 (= res!122598 call!23516)))

(assert (=> b!250272 (=> (not res!122598) (not e!162319))))

(declare-fun b!250273 () Bool)

(declare-fun e!162325 () Unit!7742)

(declare-fun Unit!7744 () Unit!7742)

(assert (=> b!250273 (= e!162325 Unit!7744)))

(declare-fun lt!125435 () Unit!7742)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!398 (array!12292 array!12290 (_ BitVec 32) (_ BitVec 32) V!8297 V!8297 (_ BitVec 64) Int) Unit!7742)

(assert (=> b!250273 (= lt!125435 (lemmaInListMapThenSeekEntryOrOpenFindsIt!398 (_keys!6763 thiss!1504) (_values!4610 thiss!1504) (mask!10810 thiss!1504) (extraKeys!4364 thiss!1504) (zeroValue!4468 thiss!1504) (minValue!4468 thiss!1504) key!932 (defaultEntry!4627 thiss!1504)))))

(assert (=> b!250273 false))

(declare-fun b!250274 () Bool)

(declare-fun res!122595 () Bool)

(declare-fun e!162329 () Bool)

(assert (=> b!250274 (=> (not res!122595) (not e!162329))))

(assert (=> b!250274 (= res!122595 call!23516)))

(declare-fun e!162324 () Bool)

(assert (=> b!250274 (= e!162324 e!162329)))

(declare-fun mapIsEmpty!11023 () Bool)

(declare-fun mapRes!11023 () Bool)

(assert (=> mapIsEmpty!11023 mapRes!11023))

(declare-fun b!250275 () Bool)

(declare-fun call!23517 () Bool)

(assert (=> b!250275 (= e!162319 (not call!23517))))

(declare-fun b!250276 () Bool)

(declare-fun e!162317 () Bool)

(declare-fun e!162331 () Bool)

(assert (=> b!250276 (= e!162317 (and e!162331 mapRes!11023))))

(declare-fun condMapEmpty!11023 () Bool)

(declare-fun mapDefault!11023 () ValueCell!2900)

