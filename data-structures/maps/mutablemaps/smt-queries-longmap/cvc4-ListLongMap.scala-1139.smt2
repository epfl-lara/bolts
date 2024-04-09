; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23580 () Bool)

(assert start!23580)

(declare-fun b!247532 () Bool)

(declare-fun b_free!6587 () Bool)

(declare-fun b_next!6587 () Bool)

(assert (=> b!247532 (= b_free!6587 (not b_next!6587))))

(declare-fun tp!23008 () Bool)

(declare-fun b_and!13607 () Bool)

(assert (=> b!247532 (= tp!23008 b_and!13607)))

(declare-fun b!247513 () Bool)

(declare-datatypes ((Unit!7649 0))(
  ( (Unit!7650) )
))
(declare-fun e!160573 () Unit!7649)

(declare-fun lt!124009 () Unit!7649)

(assert (=> b!247513 (= e!160573 lt!124009)))

(declare-datatypes ((V!8245 0))(
  ( (V!8246 (val!3269 Int)) )
))
(declare-datatypes ((ValueCell!2881 0))(
  ( (ValueCellFull!2881 (v!5323 V!8245)) (EmptyCell!2881) )
))
(declare-datatypes ((array!12204 0))(
  ( (array!12205 (arr!5789 (Array (_ BitVec 32) ValueCell!2881)) (size!6132 (_ BitVec 32))) )
))
(declare-datatypes ((array!12206 0))(
  ( (array!12207 (arr!5790 (Array (_ BitVec 32) (_ BitVec 64))) (size!6133 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3662 0))(
  ( (LongMapFixedSize!3663 (defaultEntry!4580 Int) (mask!10718 (_ BitVec 32)) (extraKeys!4317 (_ BitVec 32)) (zeroValue!4421 V!8245) (minValue!4421 V!8245) (_size!1880 (_ BitVec 32)) (_keys!6702 array!12206) (_values!4563 array!12204) (_vacant!1880 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3662)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!385 (array!12206 array!12204 (_ BitVec 32) (_ BitVec 32) V!8245 V!8245 (_ BitVec 64) Int) Unit!7649)

(assert (=> b!247513 (= lt!124009 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!385 (_keys!6702 thiss!1504) (_values!4563 thiss!1504) (mask!10718 thiss!1504) (extraKeys!4317 thiss!1504) (zeroValue!4421 thiss!1504) (minValue!4421 thiss!1504) key!932 (defaultEntry!4580 thiss!1504)))))

(declare-fun c!41428 () Bool)

(declare-datatypes ((SeekEntryResult!1112 0))(
  ( (MissingZero!1112 (index!6618 (_ BitVec 32))) (Found!1112 (index!6619 (_ BitVec 32))) (Intermediate!1112 (undefined!1924 Bool) (index!6620 (_ BitVec 32)) (x!24540 (_ BitVec 32))) (Undefined!1112) (MissingVacant!1112 (index!6621 (_ BitVec 32))) )
))
(declare-fun lt!124004 () SeekEntryResult!1112)

(assert (=> b!247513 (= c!41428 (is-MissingZero!1112 lt!124004))))

(declare-fun e!160581 () Bool)

(assert (=> b!247513 e!160581))

(declare-fun b!247514 () Bool)

(declare-fun e!160574 () Bool)

(declare-fun e!160575 () Bool)

(assert (=> b!247514 (= e!160574 e!160575)))

(declare-fun res!121341 () Bool)

(declare-fun call!23181 () Bool)

(assert (=> b!247514 (= res!121341 call!23181)))

(assert (=> b!247514 (=> (not res!121341) (not e!160575))))

(declare-fun b!247515 () Bool)

(declare-fun e!160569 () Unit!7649)

(declare-fun Unit!7651 () Unit!7649)

(assert (=> b!247515 (= e!160569 Unit!7651)))

(declare-fun b!247516 () Bool)

(declare-fun res!121344 () Bool)

(declare-fun e!160571 () Bool)

(assert (=> b!247516 (=> (not res!121344) (not e!160571))))

(assert (=> b!247516 (= res!121344 (= (select (arr!5790 (_keys!6702 thiss!1504)) (index!6618 lt!124004)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247517 () Bool)

(declare-fun res!121338 () Bool)

(declare-fun e!160580 () Bool)

(assert (=> b!247517 (=> res!121338 e!160580)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247517 (= res!121338 (or (not (= (size!6133 (_keys!6702 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10718 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6133 (_keys!6702 thiss!1504)))))))

(declare-fun b!247518 () Bool)

(declare-fun e!160570 () Bool)

(declare-fun tp_is_empty!6449 () Bool)

(assert (=> b!247518 (= e!160570 tp_is_empty!6449)))

(declare-fun res!121335 () Bool)

(declare-fun e!160579 () Bool)

(assert (=> start!23580 (=> (not res!121335) (not e!160579))))

(declare-fun valid!1424 (LongMapFixedSize!3662) Bool)

(assert (=> start!23580 (= res!121335 (valid!1424 thiss!1504))))

(assert (=> start!23580 e!160579))

(declare-fun e!160582 () Bool)

(assert (=> start!23580 e!160582))

(assert (=> start!23580 true))

(declare-fun b!247519 () Bool)

(declare-fun lt!124005 () Bool)

(assert (=> b!247519 (= e!160580 (not lt!124005))))

(declare-fun b!247520 () Bool)

(declare-fun c!41430 () Bool)

(assert (=> b!247520 (= c!41430 (is-MissingVacant!1112 lt!124004))))

(assert (=> b!247520 (= e!160581 e!160574)))

(declare-fun b!247521 () Bool)

(declare-fun call!23180 () Bool)

(assert (=> b!247521 (= e!160571 (not call!23180))))

(declare-fun b!247522 () Bool)

(declare-fun e!160577 () Bool)

(assert (=> b!247522 (= e!160577 (not e!160580))))

(declare-fun res!121339 () Bool)

(assert (=> b!247522 (=> res!121339 e!160580)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247522 (= res!121339 (not (validMask!0 (mask!10718 thiss!1504))))))

(declare-fun lt!124008 () array!12206)

(declare-fun arrayCountValidKeys!0 (array!12206 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247522 (= (arrayCountValidKeys!0 lt!124008 #b00000000000000000000000000000000 (size!6133 (_keys!6702 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6702 thiss!1504) #b00000000000000000000000000000000 (size!6133 (_keys!6702 thiss!1504)))))))

(declare-fun lt!124006 () Unit!7649)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12206 (_ BitVec 32) (_ BitVec 64)) Unit!7649)

(assert (=> b!247522 (= lt!124006 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6702 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3713 0))(
  ( (Nil!3710) (Cons!3709 (h!4367 (_ BitVec 64)) (t!8744 List!3713)) )
))
(declare-fun arrayNoDuplicates!0 (array!12206 (_ BitVec 32) List!3713) Bool)

(assert (=> b!247522 (arrayNoDuplicates!0 lt!124008 #b00000000000000000000000000000000 Nil!3710)))

(assert (=> b!247522 (= lt!124008 (array!12207 (store (arr!5790 (_keys!6702 thiss!1504)) index!297 key!932) (size!6133 (_keys!6702 thiss!1504))))))

(declare-fun lt!124011 () Unit!7649)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12206 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3713) Unit!7649)

(assert (=> b!247522 (= lt!124011 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6702 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3710))))

(declare-fun lt!124012 () Unit!7649)

(assert (=> b!247522 (= lt!124012 e!160569)))

(declare-fun c!41431 () Bool)

(assert (=> b!247522 (= c!41431 lt!124005)))

(declare-fun arrayContainsKey!0 (array!12206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!247522 (= lt!124005 (arrayContainsKey!0 (_keys!6702 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247523 () Bool)

(declare-fun e!160583 () Bool)

(assert (=> b!247523 (= e!160583 e!160577)))

(declare-fun res!121337 () Bool)

(assert (=> b!247523 (=> (not res!121337) (not e!160577))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!247523 (= res!121337 (inRange!0 index!297 (mask!10718 thiss!1504)))))

(declare-fun lt!124010 () Unit!7649)

(assert (=> b!247523 (= lt!124010 e!160573)))

(declare-fun c!41429 () Bool)

(declare-datatypes ((tuple2!4808 0))(
  ( (tuple2!4809 (_1!2414 (_ BitVec 64)) (_2!2414 V!8245)) )
))
(declare-datatypes ((List!3714 0))(
  ( (Nil!3711) (Cons!3710 (h!4368 tuple2!4808) (t!8745 List!3714)) )
))
(declare-datatypes ((ListLongMap!3735 0))(
  ( (ListLongMap!3736 (toList!1883 List!3714)) )
))
(declare-fun contains!1791 (ListLongMap!3735 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1406 (array!12206 array!12204 (_ BitVec 32) (_ BitVec 32) V!8245 V!8245 (_ BitVec 32) Int) ListLongMap!3735)

(assert (=> b!247523 (= c!41429 (contains!1791 (getCurrentListMap!1406 (_keys!6702 thiss!1504) (_values!4563 thiss!1504) (mask!10718 thiss!1504) (extraKeys!4317 thiss!1504) (zeroValue!4421 thiss!1504) (minValue!4421 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4580 thiss!1504)) key!932))))

(declare-fun b!247524 () Bool)

(declare-fun res!121343 () Bool)

(assert (=> b!247524 (= res!121343 (= (select (arr!5790 (_keys!6702 thiss!1504)) (index!6621 lt!124004)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247524 (=> (not res!121343) (not e!160575))))

(declare-fun mapIsEmpty!10949 () Bool)

(declare-fun mapRes!10949 () Bool)

(assert (=> mapIsEmpty!10949 mapRes!10949))

(declare-fun b!247525 () Bool)

(declare-fun Unit!7652 () Unit!7649)

(assert (=> b!247525 (= e!160573 Unit!7652)))

(declare-fun lt!124003 () Unit!7649)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!384 (array!12206 array!12204 (_ BitVec 32) (_ BitVec 32) V!8245 V!8245 (_ BitVec 64) Int) Unit!7649)

(assert (=> b!247525 (= lt!124003 (lemmaInListMapThenSeekEntryOrOpenFindsIt!384 (_keys!6702 thiss!1504) (_values!4563 thiss!1504) (mask!10718 thiss!1504) (extraKeys!4317 thiss!1504) (zeroValue!4421 thiss!1504) (minValue!4421 thiss!1504) key!932 (defaultEntry!4580 thiss!1504)))))

(assert (=> b!247525 false))

(declare-fun b!247526 () Bool)

(declare-fun e!160572 () Bool)

(assert (=> b!247526 (= e!160572 (and e!160570 mapRes!10949))))

(declare-fun condMapEmpty!10949 () Bool)

(declare-fun mapDefault!10949 () ValueCell!2881)

