; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24618 () Bool)

(assert start!24618)

(declare-fun b!257478 () Bool)

(declare-fun b_free!6733 () Bool)

(declare-fun b_next!6733 () Bool)

(assert (=> b!257478 (= b_free!6733 (not b_next!6733))))

(declare-fun tp!23508 () Bool)

(declare-fun b_and!13821 () Bool)

(assert (=> b!257478 (= tp!23508 b_and!13821)))

(declare-fun b!257475 () Bool)

(declare-fun e!166914 () Bool)

(declare-datatypes ((V!8441 0))(
  ( (V!8442 (val!3342 Int)) )
))
(declare-datatypes ((ValueCell!2954 0))(
  ( (ValueCellFull!2954 (v!5433 V!8441)) (EmptyCell!2954) )
))
(declare-datatypes ((array!12534 0))(
  ( (array!12535 (arr!5935 (Array (_ BitVec 32) ValueCell!2954)) (size!6282 (_ BitVec 32))) )
))
(declare-datatypes ((array!12536 0))(
  ( (array!12537 (arr!5936 (Array (_ BitVec 32) (_ BitVec 64))) (size!6283 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3808 0))(
  ( (LongMapFixedSize!3809 (defaultEntry!4752 Int) (mask!11042 (_ BitVec 32)) (extraKeys!4489 (_ BitVec 32)) (zeroValue!4593 V!8441) (minValue!4593 V!8441) (_size!1953 (_ BitVec 32)) (_keys!6920 array!12536) (_values!4735 array!12534) (_vacant!1953 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3808)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!257475 (= e!166914 (not (validMask!0 (mask!11042 thiss!1504))))))

(declare-fun lt!129505 () array!12536)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12536 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257475 (= (arrayCountValidKeys!0 lt!129505 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!7995 0))(
  ( (Unit!7996) )
))
(declare-fun lt!129516 () Unit!7995)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12536 (_ BitVec 32)) Unit!7995)

(assert (=> b!257475 (= lt!129516 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129505 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!257475 (arrayContainsKey!0 lt!129505 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129508 () Unit!7995)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12536 (_ BitVec 64) (_ BitVec 32)) Unit!7995)

(assert (=> b!257475 (= lt!129508 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129505 key!932 index!297))))

(declare-datatypes ((tuple2!4920 0))(
  ( (tuple2!4921 (_1!2470 (_ BitVec 64)) (_2!2470 V!8441)) )
))
(declare-datatypes ((List!3823 0))(
  ( (Nil!3820) (Cons!3819 (h!4481 tuple2!4920) (t!8892 List!3823)) )
))
(declare-datatypes ((ListLongMap!3847 0))(
  ( (ListLongMap!3848 (toList!1939 List!3823)) )
))
(declare-fun lt!129504 () ListLongMap!3847)

(declare-fun v!346 () V!8441)

(declare-fun +!683 (ListLongMap!3847 tuple2!4920) ListLongMap!3847)

(declare-fun getCurrentListMap!1462 (array!12536 array!12534 (_ BitVec 32) (_ BitVec 32) V!8441 V!8441 (_ BitVec 32) Int) ListLongMap!3847)

(assert (=> b!257475 (= (+!683 lt!129504 (tuple2!4921 key!932 v!346)) (getCurrentListMap!1462 lt!129505 (array!12535 (store (arr!5935 (_values!4735 thiss!1504)) index!297 (ValueCellFull!2954 v!346)) (size!6282 (_values!4735 thiss!1504))) (mask!11042 thiss!1504) (extraKeys!4489 thiss!1504) (zeroValue!4593 thiss!1504) (minValue!4593 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4752 thiss!1504)))))

(declare-fun lt!129515 () Unit!7995)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!98 (array!12536 array!12534 (_ BitVec 32) (_ BitVec 32) V!8441 V!8441 (_ BitVec 32) (_ BitVec 64) V!8441 Int) Unit!7995)

(assert (=> b!257475 (= lt!129515 (lemmaAddValidKeyToArrayThenAddPairToListMap!98 (_keys!6920 thiss!1504) (_values!4735 thiss!1504) (mask!11042 thiss!1504) (extraKeys!4489 thiss!1504) (zeroValue!4593 thiss!1504) (minValue!4593 thiss!1504) index!297 key!932 v!346 (defaultEntry!4752 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12536 (_ BitVec 32)) Bool)

(assert (=> b!257475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129505 (mask!11042 thiss!1504))))

(declare-fun lt!129514 () Unit!7995)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12536 (_ BitVec 32) (_ BitVec 32)) Unit!7995)

(assert (=> b!257475 (= lt!129514 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6920 thiss!1504) index!297 (mask!11042 thiss!1504)))))

(assert (=> b!257475 (= (arrayCountValidKeys!0 lt!129505 #b00000000000000000000000000000000 (size!6283 (_keys!6920 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6920 thiss!1504) #b00000000000000000000000000000000 (size!6283 (_keys!6920 thiss!1504)))))))

(declare-fun lt!129513 () Unit!7995)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12536 (_ BitVec 32) (_ BitVec 64)) Unit!7995)

(assert (=> b!257475 (= lt!129513 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6920 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3824 0))(
  ( (Nil!3821) (Cons!3820 (h!4482 (_ BitVec 64)) (t!8893 List!3824)) )
))
(declare-fun arrayNoDuplicates!0 (array!12536 (_ BitVec 32) List!3824) Bool)

(assert (=> b!257475 (arrayNoDuplicates!0 lt!129505 #b00000000000000000000000000000000 Nil!3821)))

(assert (=> b!257475 (= lt!129505 (array!12537 (store (arr!5936 (_keys!6920 thiss!1504)) index!297 key!932) (size!6283 (_keys!6920 thiss!1504))))))

(declare-fun lt!129507 () Unit!7995)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12536 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3824) Unit!7995)

(assert (=> b!257475 (= lt!129507 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6920 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3821))))

(declare-fun lt!129506 () Unit!7995)

(declare-fun e!166919 () Unit!7995)

(assert (=> b!257475 (= lt!129506 e!166919)))

(declare-fun c!43563 () Bool)

(assert (=> b!257475 (= c!43563 (arrayContainsKey!0 (_keys!6920 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11229 () Bool)

(declare-fun mapRes!11229 () Bool)

(declare-fun tp!23507 () Bool)

(declare-fun e!166909 () Bool)

(assert (=> mapNonEmpty!11229 (= mapRes!11229 (and tp!23507 e!166909))))

(declare-fun mapRest!11229 () (Array (_ BitVec 32) ValueCell!2954))

(declare-fun mapValue!11229 () ValueCell!2954)

(declare-fun mapKey!11229 () (_ BitVec 32))

(assert (=> mapNonEmpty!11229 (= (arr!5935 (_values!4735 thiss!1504)) (store mapRest!11229 mapKey!11229 mapValue!11229))))

(declare-fun b!257476 () Bool)

(declare-fun e!166913 () Unit!7995)

(declare-fun Unit!7997 () Unit!7995)

(assert (=> b!257476 (= e!166913 Unit!7997)))

(declare-fun lt!129510 () Unit!7995)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!434 (array!12536 array!12534 (_ BitVec 32) (_ BitVec 32) V!8441 V!8441 (_ BitVec 64) Int) Unit!7995)

(assert (=> b!257476 (= lt!129510 (lemmaInListMapThenSeekEntryOrOpenFindsIt!434 (_keys!6920 thiss!1504) (_values!4735 thiss!1504) (mask!11042 thiss!1504) (extraKeys!4489 thiss!1504) (zeroValue!4593 thiss!1504) (minValue!4593 thiss!1504) key!932 (defaultEntry!4752 thiss!1504)))))

(assert (=> b!257476 false))

(declare-fun b!257477 () Bool)

(declare-fun e!166911 () Bool)

(declare-fun tp_is_empty!6595 () Bool)

(assert (=> b!257477 (= e!166911 tp_is_empty!6595)))

(declare-fun e!166906 () Bool)

(declare-fun e!166916 () Bool)

(declare-fun array_inv!3913 (array!12536) Bool)

(declare-fun array_inv!3914 (array!12534) Bool)

(assert (=> b!257478 (= e!166916 (and tp!23508 tp_is_empty!6595 (array_inv!3913 (_keys!6920 thiss!1504)) (array_inv!3914 (_values!4735 thiss!1504)) e!166906))))

(declare-fun b!257479 () Bool)

(declare-fun c!43562 () Bool)

(declare-datatypes ((SeekEntryResult!1180 0))(
  ( (MissingZero!1180 (index!6890 (_ BitVec 32))) (Found!1180 (index!6891 (_ BitVec 32))) (Intermediate!1180 (undefined!1992 Bool) (index!6892 (_ BitVec 32)) (x!25030 (_ BitVec 32))) (Undefined!1180) (MissingVacant!1180 (index!6893 (_ BitVec 32))) )
))
(declare-fun lt!129509 () SeekEntryResult!1180)

(assert (=> b!257479 (= c!43562 (is-MissingVacant!1180 lt!129509))))

(declare-fun e!166908 () Bool)

(declare-fun e!166907 () Bool)

(assert (=> b!257479 (= e!166908 e!166907)))

(declare-fun b!257480 () Bool)

(declare-fun Unit!7998 () Unit!7995)

(assert (=> b!257480 (= e!166919 Unit!7998)))

(declare-fun lt!129511 () Unit!7995)

(declare-fun lemmaArrayContainsKeyThenInListMap!240 (array!12536 array!12534 (_ BitVec 32) (_ BitVec 32) V!8441 V!8441 (_ BitVec 64) (_ BitVec 32) Int) Unit!7995)

(assert (=> b!257480 (= lt!129511 (lemmaArrayContainsKeyThenInListMap!240 (_keys!6920 thiss!1504) (_values!4735 thiss!1504) (mask!11042 thiss!1504) (extraKeys!4489 thiss!1504) (zeroValue!4593 thiss!1504) (minValue!4593 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4752 thiss!1504)))))

(assert (=> b!257480 false))

(declare-fun b!257482 () Bool)

(declare-fun lt!129512 () Unit!7995)

(assert (=> b!257482 (= e!166913 lt!129512)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!434 (array!12536 array!12534 (_ BitVec 32) (_ BitVec 32) V!8441 V!8441 (_ BitVec 64) Int) Unit!7995)

(assert (=> b!257482 (= lt!129512 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!434 (_keys!6920 thiss!1504) (_values!4735 thiss!1504) (mask!11042 thiss!1504) (extraKeys!4489 thiss!1504) (zeroValue!4593 thiss!1504) (minValue!4593 thiss!1504) key!932 (defaultEntry!4752 thiss!1504)))))

(declare-fun c!43564 () Bool)

(assert (=> b!257482 (= c!43564 (is-MissingZero!1180 lt!129509))))

(assert (=> b!257482 e!166908))

(declare-fun b!257483 () Bool)

(declare-fun e!166910 () Bool)

(declare-fun e!166918 () Bool)

(assert (=> b!257483 (= e!166910 e!166918)))

(declare-fun res!125958 () Bool)

(assert (=> b!257483 (=> (not res!125958) (not e!166918))))

(assert (=> b!257483 (= res!125958 (or (= lt!129509 (MissingZero!1180 index!297)) (= lt!129509 (MissingVacant!1180 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12536 (_ BitVec 32)) SeekEntryResult!1180)

(assert (=> b!257483 (= lt!129509 (seekEntryOrOpen!0 key!932 (_keys!6920 thiss!1504) (mask!11042 thiss!1504)))))

(declare-fun b!257484 () Bool)

(assert (=> b!257484 (= e!166906 (and e!166911 mapRes!11229))))

(declare-fun condMapEmpty!11229 () Bool)

(declare-fun mapDefault!11229 () ValueCell!2954)

