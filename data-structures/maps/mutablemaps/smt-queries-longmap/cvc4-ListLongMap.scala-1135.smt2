; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23382 () Bool)

(assert start!23382)

(declare-fun b!245743 () Bool)

(declare-fun b_free!6563 () Bool)

(declare-fun b_next!6563 () Bool)

(assert (=> b!245743 (= b_free!6563 (not b_next!6563))))

(declare-fun tp!22923 () Bool)

(declare-fun b_and!13571 () Bool)

(assert (=> b!245743 (= tp!22923 b_and!13571)))

(declare-fun b!245734 () Bool)

(declare-fun e!159448 () Bool)

(declare-fun e!159439 () Bool)

(assert (=> b!245734 (= e!159448 e!159439)))

(declare-fun res!120529 () Bool)

(declare-fun call!22955 () Bool)

(assert (=> b!245734 (= res!120529 call!22955)))

(assert (=> b!245734 (=> (not res!120529) (not e!159439))))

(declare-fun b!245735 () Bool)

(declare-fun res!120533 () Bool)

(declare-datatypes ((V!8213 0))(
  ( (V!8214 (val!3257 Int)) )
))
(declare-datatypes ((ValueCell!2869 0))(
  ( (ValueCellFull!2869 (v!5306 V!8213)) (EmptyCell!2869) )
))
(declare-datatypes ((array!12148 0))(
  ( (array!12149 (arr!5765 (Array (_ BitVec 32) ValueCell!2869)) (size!6107 (_ BitVec 32))) )
))
(declare-datatypes ((array!12150 0))(
  ( (array!12151 (arr!5766 (Array (_ BitVec 32) (_ BitVec 64))) (size!6108 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3638 0))(
  ( (LongMapFixedSize!3639 (defaultEntry!4548 Int) (mask!10662 (_ BitVec 32)) (extraKeys!4285 (_ BitVec 32)) (zeroValue!4389 V!8213) (minValue!4389 V!8213) (_size!1868 (_ BitVec 32)) (_keys!6663 array!12150) (_values!4531 array!12148) (_vacant!1868 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3638)

(declare-datatypes ((SeekEntryResult!1102 0))(
  ( (MissingZero!1102 (index!6578 (_ BitVec 32))) (Found!1102 (index!6579 (_ BitVec 32))) (Intermediate!1102 (undefined!1914 Bool) (index!6580 (_ BitVec 32)) (x!24450 (_ BitVec 32))) (Undefined!1102) (MissingVacant!1102 (index!6581 (_ BitVec 32))) )
))
(declare-fun lt!123108 () SeekEntryResult!1102)

(assert (=> b!245735 (= res!120533 (= (select (arr!5766 (_keys!6663 thiss!1504)) (index!6581 lt!123108)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245735 (=> (not res!120533) (not e!159439))))

(declare-fun b!245736 () Bool)

(declare-fun res!120532 () Bool)

(declare-fun e!159452 () Bool)

(assert (=> b!245736 (=> (not res!120532) (not e!159452))))

(assert (=> b!245736 (= res!120532 (= (select (arr!5766 (_keys!6663 thiss!1504)) (index!6578 lt!123108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245737 () Bool)

(declare-datatypes ((Unit!7587 0))(
  ( (Unit!7588) )
))
(declare-fun e!159442 () Unit!7587)

(declare-fun lt!123111 () Unit!7587)

(assert (=> b!245737 (= e!159442 lt!123111)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!377 (array!12150 array!12148 (_ BitVec 32) (_ BitVec 32) V!8213 V!8213 (_ BitVec 64) Int) Unit!7587)

(assert (=> b!245737 (= lt!123111 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!377 (_keys!6663 thiss!1504) (_values!4531 thiss!1504) (mask!10662 thiss!1504) (extraKeys!4285 thiss!1504) (zeroValue!4389 thiss!1504) (minValue!4389 thiss!1504) key!932 (defaultEntry!4548 thiss!1504)))))

(declare-fun c!41037 () Bool)

(assert (=> b!245737 (= c!41037 (is-MissingZero!1102 lt!123108))))

(declare-fun e!159441 () Bool)

(assert (=> b!245737 e!159441))

(declare-fun b!245738 () Bool)

(declare-fun e!159440 () Unit!7587)

(declare-fun Unit!7589 () Unit!7587)

(assert (=> b!245738 (= e!159440 Unit!7589)))

(declare-fun lt!123105 () Unit!7587)

(declare-fun lemmaArrayContainsKeyThenInListMap!176 (array!12150 array!12148 (_ BitVec 32) (_ BitVec 32) V!8213 V!8213 (_ BitVec 64) (_ BitVec 32) Int) Unit!7587)

(assert (=> b!245738 (= lt!123105 (lemmaArrayContainsKeyThenInListMap!176 (_keys!6663 thiss!1504) (_values!4531 thiss!1504) (mask!10662 thiss!1504) (extraKeys!4285 thiss!1504) (zeroValue!4389 thiss!1504) (minValue!4389 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4548 thiss!1504)))))

(assert (=> b!245738 false))

(declare-fun b!245739 () Bool)

(declare-fun c!41038 () Bool)

(assert (=> b!245739 (= c!41038 (is-MissingVacant!1102 lt!123108))))

(assert (=> b!245739 (= e!159441 e!159448)))

(declare-fun b!245740 () Bool)

(declare-fun Unit!7590 () Unit!7587)

(assert (=> b!245740 (= e!159442 Unit!7590)))

(declare-fun lt!123107 () Unit!7587)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!375 (array!12150 array!12148 (_ BitVec 32) (_ BitVec 32) V!8213 V!8213 (_ BitVec 64) Int) Unit!7587)

(assert (=> b!245740 (= lt!123107 (lemmaInListMapThenSeekEntryOrOpenFindsIt!375 (_keys!6663 thiss!1504) (_values!4531 thiss!1504) (mask!10662 thiss!1504) (extraKeys!4285 thiss!1504) (zeroValue!4389 thiss!1504) (minValue!4389 thiss!1504) key!932 (defaultEntry!4548 thiss!1504)))))

(assert (=> b!245740 false))

(declare-fun b!245741 () Bool)

(declare-fun e!159449 () Bool)

(declare-fun tp_is_empty!6425 () Bool)

(assert (=> b!245741 (= e!159449 tp_is_empty!6425)))

(declare-fun b!245742 () Bool)

(assert (=> b!245742 (= e!159448 (is-Undefined!1102 lt!123108))))

(declare-fun e!159438 () Bool)

(declare-fun e!159444 () Bool)

(declare-fun array_inv!3799 (array!12150) Bool)

(declare-fun array_inv!3800 (array!12148) Bool)

(assert (=> b!245743 (= e!159444 (and tp!22923 tp_is_empty!6425 (array_inv!3799 (_keys!6663 thiss!1504)) (array_inv!3800 (_values!4531 thiss!1504)) e!159438))))

(declare-fun b!245744 () Bool)

(declare-fun e!159446 () Bool)

(assert (=> b!245744 (= e!159446 (= (size!6108 (_keys!6663 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10662 thiss!1504))))))

(declare-fun b!245745 () Bool)

(declare-fun Unit!7591 () Unit!7587)

(assert (=> b!245745 (= e!159440 Unit!7591)))

(declare-fun b!245746 () Bool)

(declare-fun e!159443 () Bool)

(assert (=> b!245746 (= e!159443 (not e!159446))))

(declare-fun res!120531 () Bool)

(assert (=> b!245746 (=> res!120531 e!159446)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!245746 (= res!120531 (not (validMask!0 (mask!10662 thiss!1504))))))

(declare-fun lt!123110 () array!12150)

(declare-fun arrayCountValidKeys!0 (array!12150 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!245746 (= (arrayCountValidKeys!0 lt!123110 #b00000000000000000000000000000000 (size!6108 (_keys!6663 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6663 thiss!1504) #b00000000000000000000000000000000 (size!6108 (_keys!6663 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!123109 () Unit!7587)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12150 (_ BitVec 32) (_ BitVec 64)) Unit!7587)

(assert (=> b!245746 (= lt!123109 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6663 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3694 0))(
  ( (Nil!3691) (Cons!3690 (h!4347 (_ BitVec 64)) (t!8717 List!3694)) )
))
(declare-fun arrayNoDuplicates!0 (array!12150 (_ BitVec 32) List!3694) Bool)

(assert (=> b!245746 (arrayNoDuplicates!0 lt!123110 #b00000000000000000000000000000000 Nil!3691)))

(assert (=> b!245746 (= lt!123110 (array!12151 (store (arr!5766 (_keys!6663 thiss!1504)) index!297 key!932) (size!6108 (_keys!6663 thiss!1504))))))

(declare-fun lt!123106 () Unit!7587)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12150 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3694) Unit!7587)

(assert (=> b!245746 (= lt!123106 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6663 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3691))))

(declare-fun lt!123104 () Unit!7587)

(assert (=> b!245746 (= lt!123104 e!159440)))

(declare-fun c!41036 () Bool)

(declare-fun arrayContainsKey!0 (array!12150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!245746 (= c!41036 (arrayContainsKey!0 (_keys!6663 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245747 () Bool)

(declare-fun call!22954 () Bool)

(assert (=> b!245747 (= e!159452 (not call!22954))))

(declare-fun b!245748 () Bool)

(declare-fun e!159445 () Bool)

(assert (=> b!245748 (= e!159445 e!159443)))

(declare-fun res!120534 () Bool)

(assert (=> b!245748 (=> (not res!120534) (not e!159443))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!245748 (= res!120534 (inRange!0 index!297 (mask!10662 thiss!1504)))))

(declare-fun lt!123112 () Unit!7587)

(assert (=> b!245748 (= lt!123112 e!159442)))

(declare-fun c!41035 () Bool)

(declare-datatypes ((tuple2!4788 0))(
  ( (tuple2!4789 (_1!2404 (_ BitVec 64)) (_2!2404 V!8213)) )
))
(declare-datatypes ((List!3695 0))(
  ( (Nil!3692) (Cons!3691 (h!4348 tuple2!4788) (t!8718 List!3695)) )
))
(declare-datatypes ((ListLongMap!3715 0))(
  ( (ListLongMap!3716 (toList!1873 List!3695)) )
))
(declare-fun contains!1776 (ListLongMap!3715 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1396 (array!12150 array!12148 (_ BitVec 32) (_ BitVec 32) V!8213 V!8213 (_ BitVec 32) Int) ListLongMap!3715)

(assert (=> b!245748 (= c!41035 (contains!1776 (getCurrentListMap!1396 (_keys!6663 thiss!1504) (_values!4531 thiss!1504) (mask!10662 thiss!1504) (extraKeys!4285 thiss!1504) (zeroValue!4389 thiss!1504) (minValue!4389 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4548 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!10900 () Bool)

(declare-fun mapRes!10900 () Bool)

(declare-fun tp!22924 () Bool)

(declare-fun e!159447 () Bool)

(assert (=> mapNonEmpty!10900 (= mapRes!10900 (and tp!22924 e!159447))))

(declare-fun mapRest!10900 () (Array (_ BitVec 32) ValueCell!2869))

(declare-fun mapKey!10900 () (_ BitVec 32))

(declare-fun mapValue!10900 () ValueCell!2869)

(assert (=> mapNonEmpty!10900 (= (arr!5765 (_values!4531 thiss!1504)) (store mapRest!10900 mapKey!10900 mapValue!10900))))

(declare-fun res!120536 () Bool)

(declare-fun e!159450 () Bool)

(assert (=> start!23382 (=> (not res!120536) (not e!159450))))

(declare-fun valid!1416 (LongMapFixedSize!3638) Bool)

(assert (=> start!23382 (= res!120536 (valid!1416 thiss!1504))))

(assert (=> start!23382 e!159450))

(assert (=> start!23382 e!159444))

(assert (=> start!23382 true))

(declare-fun b!245749 () Bool)

(assert (=> b!245749 (= e!159439 (not call!22954))))

(declare-fun b!245750 () Bool)

(declare-fun res!120530 () Bool)

(assert (=> b!245750 (=> (not res!120530) (not e!159452))))

(assert (=> b!245750 (= res!120530 call!22955)))

(assert (=> b!245750 (= e!159441 e!159452)))

(declare-fun b!245751 () Bool)

(assert (=> b!245751 (= e!159447 tp_is_empty!6425)))

(declare-fun b!245752 () Bool)

(assert (=> b!245752 (= e!159438 (and e!159449 mapRes!10900))))

(declare-fun condMapEmpty!10900 () Bool)

(declare-fun mapDefault!10900 () ValueCell!2869)

