; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24622 () Bool)

(assert start!24622)

(declare-fun b!257612 () Bool)

(declare-fun b_free!6737 () Bool)

(declare-fun b_next!6737 () Bool)

(assert (=> b!257612 (= b_free!6737 (not b_next!6737))))

(declare-fun tp!23520 () Bool)

(declare-fun b_and!13825 () Bool)

(assert (=> b!257612 (= tp!23520 b_and!13825)))

(declare-fun bm!24460 () Bool)

(declare-fun call!24464 () Bool)

(declare-datatypes ((V!8445 0))(
  ( (V!8446 (val!3344 Int)) )
))
(declare-datatypes ((ValueCell!2956 0))(
  ( (ValueCellFull!2956 (v!5435 V!8445)) (EmptyCell!2956) )
))
(declare-datatypes ((array!12542 0))(
  ( (array!12543 (arr!5939 (Array (_ BitVec 32) ValueCell!2956)) (size!6286 (_ BitVec 32))) )
))
(declare-datatypes ((array!12544 0))(
  ( (array!12545 (arr!5940 (Array (_ BitVec 32) (_ BitVec 64))) (size!6287 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3812 0))(
  ( (LongMapFixedSize!3813 (defaultEntry!4754 Int) (mask!11044 (_ BitVec 32)) (extraKeys!4491 (_ BitVec 32)) (zeroValue!4595 V!8445) (minValue!4595 V!8445) (_size!1955 (_ BitVec 32)) (_keys!6922 array!12544) (_values!4737 array!12542) (_vacant!1955 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3812)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24460 (= call!24464 (arrayContainsKey!0 (_keys!6922 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257595 () Bool)

(declare-fun res!125999 () Bool)

(declare-datatypes ((SeekEntryResult!1182 0))(
  ( (MissingZero!1182 (index!6898 (_ BitVec 32))) (Found!1182 (index!6899 (_ BitVec 32))) (Intermediate!1182 (undefined!1994 Bool) (index!6900 (_ BitVec 32)) (x!25032 (_ BitVec 32))) (Undefined!1182) (MissingVacant!1182 (index!6901 (_ BitVec 32))) )
))
(declare-fun lt!129592 () SeekEntryResult!1182)

(assert (=> b!257595 (= res!125999 (= (select (arr!5940 (_keys!6922 thiss!1504)) (index!6901 lt!129592)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166993 () Bool)

(assert (=> b!257595 (=> (not res!125999) (not e!166993))))

(declare-fun b!257596 () Bool)

(declare-datatypes ((Unit!8004 0))(
  ( (Unit!8005) )
))
(declare-fun e!166995 () Unit!8004)

(declare-fun Unit!8006 () Unit!8004)

(assert (=> b!257596 (= e!166995 Unit!8006)))

(declare-fun lt!129597 () Unit!8004)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!436 (array!12544 array!12542 (_ BitVec 32) (_ BitVec 32) V!8445 V!8445 (_ BitVec 64) Int) Unit!8004)

(assert (=> b!257596 (= lt!129597 (lemmaInListMapThenSeekEntryOrOpenFindsIt!436 (_keys!6922 thiss!1504) (_values!4737 thiss!1504) (mask!11044 thiss!1504) (extraKeys!4491 thiss!1504) (zeroValue!4595 thiss!1504) (minValue!4595 thiss!1504) key!932 (defaultEntry!4754 thiss!1504)))))

(assert (=> b!257596 false))

(declare-fun b!257597 () Bool)

(declare-fun e!166992 () Unit!8004)

(declare-fun Unit!8007 () Unit!8004)

(assert (=> b!257597 (= e!166992 Unit!8007)))

(declare-fun lt!129595 () Unit!8004)

(declare-fun lemmaArrayContainsKeyThenInListMap!242 (array!12544 array!12542 (_ BitVec 32) (_ BitVec 32) V!8445 V!8445 (_ BitVec 64) (_ BitVec 32) Int) Unit!8004)

(assert (=> b!257597 (= lt!129595 (lemmaArrayContainsKeyThenInListMap!242 (_keys!6922 thiss!1504) (_values!4737 thiss!1504) (mask!11044 thiss!1504) (extraKeys!4491 thiss!1504) (zeroValue!4595 thiss!1504) (minValue!4595 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4754 thiss!1504)))))

(assert (=> b!257597 false))

(declare-fun b!257598 () Bool)

(declare-fun e!166997 () Bool)

(assert (=> b!257598 (= e!166997 (not call!24464))))

(declare-fun b!257599 () Bool)

(declare-fun lt!129594 () Unit!8004)

(assert (=> b!257599 (= e!166995 lt!129594)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!436 (array!12544 array!12542 (_ BitVec 32) (_ BitVec 32) V!8445 V!8445 (_ BitVec 64) Int) Unit!8004)

(assert (=> b!257599 (= lt!129594 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!436 (_keys!6922 thiss!1504) (_values!4737 thiss!1504) (mask!11044 thiss!1504) (extraKeys!4491 thiss!1504) (zeroValue!4595 thiss!1504) (minValue!4595 thiss!1504) key!932 (defaultEntry!4754 thiss!1504)))))

(declare-fun c!43589 () Bool)

(assert (=> b!257599 (= c!43589 (is-MissingZero!1182 lt!129592))))

(declare-fun e!166999 () Bool)

(assert (=> b!257599 e!166999))

(declare-fun b!257600 () Bool)

(declare-fun e!167001 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!257600 (= e!167001 (not (validMask!0 (mask!11044 thiss!1504))))))

(declare-fun lt!129588 () array!12544)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12544 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257600 (= (arrayCountValidKeys!0 lt!129588 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!129593 () Unit!8004)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12544 (_ BitVec 32)) Unit!8004)

(assert (=> b!257600 (= lt!129593 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129588 index!297))))

(assert (=> b!257600 (arrayContainsKey!0 lt!129588 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129599 () Unit!8004)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12544 (_ BitVec 64) (_ BitVec 32)) Unit!8004)

(assert (=> b!257600 (= lt!129599 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129588 key!932 index!297))))

(declare-fun v!346 () V!8445)

(declare-datatypes ((tuple2!4924 0))(
  ( (tuple2!4925 (_1!2472 (_ BitVec 64)) (_2!2472 V!8445)) )
))
(declare-datatypes ((List!3827 0))(
  ( (Nil!3824) (Cons!3823 (h!4485 tuple2!4924) (t!8896 List!3827)) )
))
(declare-datatypes ((ListLongMap!3851 0))(
  ( (ListLongMap!3852 (toList!1941 List!3827)) )
))
(declare-fun lt!129589 () ListLongMap!3851)

(declare-fun +!685 (ListLongMap!3851 tuple2!4924) ListLongMap!3851)

(declare-fun getCurrentListMap!1464 (array!12544 array!12542 (_ BitVec 32) (_ BitVec 32) V!8445 V!8445 (_ BitVec 32) Int) ListLongMap!3851)

(assert (=> b!257600 (= (+!685 lt!129589 (tuple2!4925 key!932 v!346)) (getCurrentListMap!1464 lt!129588 (array!12543 (store (arr!5939 (_values!4737 thiss!1504)) index!297 (ValueCellFull!2956 v!346)) (size!6286 (_values!4737 thiss!1504))) (mask!11044 thiss!1504) (extraKeys!4491 thiss!1504) (zeroValue!4595 thiss!1504) (minValue!4595 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4754 thiss!1504)))))

(declare-fun lt!129598 () Unit!8004)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!100 (array!12544 array!12542 (_ BitVec 32) (_ BitVec 32) V!8445 V!8445 (_ BitVec 32) (_ BitVec 64) V!8445 Int) Unit!8004)

(assert (=> b!257600 (= lt!129598 (lemmaAddValidKeyToArrayThenAddPairToListMap!100 (_keys!6922 thiss!1504) (_values!4737 thiss!1504) (mask!11044 thiss!1504) (extraKeys!4491 thiss!1504) (zeroValue!4595 thiss!1504) (minValue!4595 thiss!1504) index!297 key!932 v!346 (defaultEntry!4754 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12544 (_ BitVec 32)) Bool)

(assert (=> b!257600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129588 (mask!11044 thiss!1504))))

(declare-fun lt!129600 () Unit!8004)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12544 (_ BitVec 32) (_ BitVec 32)) Unit!8004)

(assert (=> b!257600 (= lt!129600 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6922 thiss!1504) index!297 (mask!11044 thiss!1504)))))

(assert (=> b!257600 (= (arrayCountValidKeys!0 lt!129588 #b00000000000000000000000000000000 (size!6287 (_keys!6922 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6922 thiss!1504) #b00000000000000000000000000000000 (size!6287 (_keys!6922 thiss!1504)))))))

(declare-fun lt!129596 () Unit!8004)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12544 (_ BitVec 32) (_ BitVec 64)) Unit!8004)

(assert (=> b!257600 (= lt!129596 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6922 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3828 0))(
  ( (Nil!3825) (Cons!3824 (h!4486 (_ BitVec 64)) (t!8897 List!3828)) )
))
(declare-fun arrayNoDuplicates!0 (array!12544 (_ BitVec 32) List!3828) Bool)

(assert (=> b!257600 (arrayNoDuplicates!0 lt!129588 #b00000000000000000000000000000000 Nil!3825)))

(assert (=> b!257600 (= lt!129588 (array!12545 (store (arr!5940 (_keys!6922 thiss!1504)) index!297 key!932) (size!6287 (_keys!6922 thiss!1504))))))

(declare-fun lt!129587 () Unit!8004)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12544 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3828) Unit!8004)

(assert (=> b!257600 (= lt!129587 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6922 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3825))))

(declare-fun lt!129591 () Unit!8004)

(assert (=> b!257600 (= lt!129591 e!166992)))

(declare-fun c!43587 () Bool)

(assert (=> b!257600 (= c!43587 (arrayContainsKey!0 (_keys!6922 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257601 () Bool)

(declare-fun e!166991 () Bool)

(declare-fun e!166990 () Bool)

(declare-fun mapRes!11235 () Bool)

(assert (=> b!257601 (= e!166991 (and e!166990 mapRes!11235))))

(declare-fun condMapEmpty!11235 () Bool)

(declare-fun mapDefault!11235 () ValueCell!2956)

