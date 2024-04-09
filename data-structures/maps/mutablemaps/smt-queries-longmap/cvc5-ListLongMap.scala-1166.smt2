; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24772 () Bool)

(assert start!24772)

(declare-fun b!258724 () Bool)

(declare-fun b_free!6745 () Bool)

(declare-fun b_next!6745 () Bool)

(assert (=> b!258724 (= b_free!6745 (not b_next!6745))))

(declare-fun tp!23551 () Bool)

(declare-fun b_and!13851 () Bool)

(assert (=> b!258724 (= tp!23551 b_and!13851)))

(declare-fun mapIsEmpty!11254 () Bool)

(declare-fun mapRes!11254 () Bool)

(assert (=> mapIsEmpty!11254 mapRes!11254))

(declare-fun b!258710 () Bool)

(declare-datatypes ((Unit!8037 0))(
  ( (Unit!8038) )
))
(declare-fun e!167695 () Unit!8037)

(declare-fun Unit!8039 () Unit!8037)

(assert (=> b!258710 (= e!167695 Unit!8039)))

(declare-fun lt!130305 () Unit!8037)

(declare-datatypes ((V!8457 0))(
  ( (V!8458 (val!3348 Int)) )
))
(declare-datatypes ((ValueCell!2960 0))(
  ( (ValueCellFull!2960 (v!5448 V!8457)) (EmptyCell!2960) )
))
(declare-datatypes ((array!12562 0))(
  ( (array!12563 (arr!5947 (Array (_ BitVec 32) ValueCell!2960)) (size!6295 (_ BitVec 32))) )
))
(declare-datatypes ((array!12564 0))(
  ( (array!12565 (arr!5948 (Array (_ BitVec 32) (_ BitVec 64))) (size!6296 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3820 0))(
  ( (LongMapFixedSize!3821 (defaultEntry!4773 Int) (mask!11081 (_ BitVec 32)) (extraKeys!4510 (_ BitVec 32)) (zeroValue!4614 V!8457) (minValue!4614 V!8457) (_size!1959 (_ BitVec 32)) (_keys!6947 array!12564) (_values!4756 array!12562) (_vacant!1959 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3820)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!438 (array!12564 array!12562 (_ BitVec 32) (_ BitVec 32) V!8457 V!8457 (_ BitVec 64) Int) Unit!8037)

(assert (=> b!258710 (= lt!130305 (lemmaInListMapThenSeekEntryOrOpenFindsIt!438 (_keys!6947 thiss!1504) (_values!4756 thiss!1504) (mask!11081 thiss!1504) (extraKeys!4510 thiss!1504) (zeroValue!4614 thiss!1504) (minValue!4614 thiss!1504) key!932 (defaultEntry!4773 thiss!1504)))))

(assert (=> b!258710 false))

(declare-fun b!258711 () Bool)

(declare-fun e!167702 () Bool)

(declare-fun e!167703 () Bool)

(assert (=> b!258711 (= e!167702 (not e!167703))))

(declare-fun res!126515 () Bool)

(assert (=> b!258711 (=> res!126515 e!167703)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!258711 (= res!126515 (not (validMask!0 (mask!11081 thiss!1504))))))

(declare-fun lt!130303 () array!12564)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12564 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!258711 (= (arrayCountValidKeys!0 lt!130303 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!130312 () Unit!8037)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12564 (_ BitVec 32)) Unit!8037)

(assert (=> b!258711 (= lt!130312 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130303 index!297))))

(declare-fun arrayContainsKey!0 (array!12564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!258711 (arrayContainsKey!0 lt!130303 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130302 () Unit!8037)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12564 (_ BitVec 64) (_ BitVec 32)) Unit!8037)

(assert (=> b!258711 (= lt!130302 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130303 key!932 index!297))))

(declare-datatypes ((tuple2!4932 0))(
  ( (tuple2!4933 (_1!2476 (_ BitVec 64)) (_2!2476 V!8457)) )
))
(declare-datatypes ((List!3835 0))(
  ( (Nil!3832) (Cons!3831 (h!4494 tuple2!4932) (t!8908 List!3835)) )
))
(declare-datatypes ((ListLongMap!3859 0))(
  ( (ListLongMap!3860 (toList!1945 List!3835)) )
))
(declare-fun lt!130314 () ListLongMap!3859)

(declare-fun v!346 () V!8457)

(declare-fun +!689 (ListLongMap!3859 tuple2!4932) ListLongMap!3859)

(declare-fun getCurrentListMap!1468 (array!12564 array!12562 (_ BitVec 32) (_ BitVec 32) V!8457 V!8457 (_ BitVec 32) Int) ListLongMap!3859)

(assert (=> b!258711 (= (+!689 lt!130314 (tuple2!4933 key!932 v!346)) (getCurrentListMap!1468 lt!130303 (array!12563 (store (arr!5947 (_values!4756 thiss!1504)) index!297 (ValueCellFull!2960 v!346)) (size!6295 (_values!4756 thiss!1504))) (mask!11081 thiss!1504) (extraKeys!4510 thiss!1504) (zeroValue!4614 thiss!1504) (minValue!4614 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4773 thiss!1504)))))

(declare-fun lt!130315 () Unit!8037)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!104 (array!12564 array!12562 (_ BitVec 32) (_ BitVec 32) V!8457 V!8457 (_ BitVec 32) (_ BitVec 64) V!8457 Int) Unit!8037)

(assert (=> b!258711 (= lt!130315 (lemmaAddValidKeyToArrayThenAddPairToListMap!104 (_keys!6947 thiss!1504) (_values!4756 thiss!1504) (mask!11081 thiss!1504) (extraKeys!4510 thiss!1504) (zeroValue!4614 thiss!1504) (minValue!4614 thiss!1504) index!297 key!932 v!346 (defaultEntry!4773 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12564 (_ BitVec 32)) Bool)

(assert (=> b!258711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130303 (mask!11081 thiss!1504))))

(declare-fun lt!130306 () Unit!8037)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12564 (_ BitVec 32) (_ BitVec 32)) Unit!8037)

(assert (=> b!258711 (= lt!130306 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6947 thiss!1504) index!297 (mask!11081 thiss!1504)))))

(assert (=> b!258711 (= (arrayCountValidKeys!0 lt!130303 #b00000000000000000000000000000000 (size!6296 (_keys!6947 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6947 thiss!1504) #b00000000000000000000000000000000 (size!6296 (_keys!6947 thiss!1504)))))))

(declare-fun lt!130310 () Unit!8037)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12564 (_ BitVec 32) (_ BitVec 64)) Unit!8037)

(assert (=> b!258711 (= lt!130310 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6947 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3836 0))(
  ( (Nil!3833) (Cons!3832 (h!4495 (_ BitVec 64)) (t!8909 List!3836)) )
))
(declare-fun arrayNoDuplicates!0 (array!12564 (_ BitVec 32) List!3836) Bool)

(assert (=> b!258711 (arrayNoDuplicates!0 lt!130303 #b00000000000000000000000000000000 Nil!3833)))

(assert (=> b!258711 (= lt!130303 (array!12565 (store (arr!5948 (_keys!6947 thiss!1504)) index!297 key!932) (size!6296 (_keys!6947 thiss!1504))))))

(declare-fun lt!130304 () Unit!8037)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3836) Unit!8037)

(assert (=> b!258711 (= lt!130304 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6947 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3833))))

(declare-fun lt!130307 () Unit!8037)

(declare-fun e!167694 () Unit!8037)

(assert (=> b!258711 (= lt!130307 e!167694)))

(declare-fun c!43853 () Bool)

(assert (=> b!258711 (= c!43853 (arrayContainsKey!0 (_keys!6947 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258712 () Bool)

(declare-fun e!167692 () Bool)

(declare-fun tp_is_empty!6607 () Bool)

(assert (=> b!258712 (= e!167692 tp_is_empty!6607)))

(declare-fun res!126516 () Bool)

(declare-fun e!167693 () Bool)

(assert (=> start!24772 (=> (not res!126516) (not e!167693))))

(declare-fun valid!1483 (LongMapFixedSize!3820) Bool)

(assert (=> start!24772 (= res!126516 (valid!1483 thiss!1504))))

(assert (=> start!24772 e!167693))

(declare-fun e!167690 () Bool)

(assert (=> start!24772 e!167690))

(assert (=> start!24772 true))

(assert (=> start!24772 tp_is_empty!6607))

(declare-fun b!258713 () Bool)

(assert (=> b!258713 (= e!167703 (or (not (= (size!6295 (_values!4756 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11081 thiss!1504)))) (= (size!6296 (_keys!6947 thiss!1504)) (size!6295 (_values!4756 thiss!1504)))))))

(declare-fun b!258714 () Bool)

(declare-fun Unit!8040 () Unit!8037)

(assert (=> b!258714 (= e!167694 Unit!8040)))

(declare-fun b!258715 () Bool)

(declare-fun Unit!8041 () Unit!8037)

(assert (=> b!258715 (= e!167694 Unit!8041)))

(declare-fun lt!130313 () Unit!8037)

(declare-fun lemmaArrayContainsKeyThenInListMap!245 (array!12564 array!12562 (_ BitVec 32) (_ BitVec 32) V!8457 V!8457 (_ BitVec 64) (_ BitVec 32) Int) Unit!8037)

(assert (=> b!258715 (= lt!130313 (lemmaArrayContainsKeyThenInListMap!245 (_keys!6947 thiss!1504) (_values!4756 thiss!1504) (mask!11081 thiss!1504) (extraKeys!4510 thiss!1504) (zeroValue!4614 thiss!1504) (minValue!4614 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4773 thiss!1504)))))

(assert (=> b!258715 false))

(declare-fun b!258716 () Bool)

(declare-fun e!167696 () Bool)

(assert (=> b!258716 (= e!167693 e!167696)))

(declare-fun res!126513 () Bool)

(assert (=> b!258716 (=> (not res!126513) (not e!167696))))

(declare-datatypes ((SeekEntryResult!1186 0))(
  ( (MissingZero!1186 (index!6914 (_ BitVec 32))) (Found!1186 (index!6915 (_ BitVec 32))) (Intermediate!1186 (undefined!1998 Bool) (index!6916 (_ BitVec 32)) (x!25080 (_ BitVec 32))) (Undefined!1186) (MissingVacant!1186 (index!6917 (_ BitVec 32))) )
))
(declare-fun lt!130308 () SeekEntryResult!1186)

(assert (=> b!258716 (= res!126513 (or (= lt!130308 (MissingZero!1186 index!297)) (= lt!130308 (MissingVacant!1186 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12564 (_ BitVec 32)) SeekEntryResult!1186)

(assert (=> b!258716 (= lt!130308 (seekEntryOrOpen!0 key!932 (_keys!6947 thiss!1504) (mask!11081 thiss!1504)))))

(declare-fun b!258717 () Bool)

(declare-fun res!126514 () Bool)

(assert (=> b!258717 (= res!126514 (= (select (arr!5948 (_keys!6947 thiss!1504)) (index!6917 lt!130308)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!167700 () Bool)

(assert (=> b!258717 (=> (not res!126514) (not e!167700))))

(declare-fun b!258718 () Bool)

(declare-fun e!167704 () Bool)

(declare-fun e!167698 () Bool)

(assert (=> b!258718 (= e!167704 (and e!167698 mapRes!11254))))

(declare-fun condMapEmpty!11254 () Bool)

(declare-fun mapDefault!11254 () ValueCell!2960)

