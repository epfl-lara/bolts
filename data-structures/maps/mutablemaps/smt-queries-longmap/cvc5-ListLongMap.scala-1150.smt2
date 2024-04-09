; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24150 () Bool)

(assert start!24150)

(declare-fun b!252372 () Bool)

(declare-fun b_free!6649 () Bool)

(declare-fun b_next!6649 () Bool)

(assert (=> b!252372 (= b_free!6649 (not b_next!6649))))

(declare-fun tp!23226 () Bool)

(declare-fun b_and!13703 () Bool)

(assert (=> b!252372 (= tp!23226 b_and!13703)))

(declare-fun b!252351 () Bool)

(declare-fun res!123541 () Bool)

(declare-fun e!163657 () Bool)

(assert (=> b!252351 (=> (not res!123541) (not e!163657))))

(declare-fun call!23774 () Bool)

(assert (=> b!252351 (= res!123541 call!23774)))

(declare-fun e!163661 () Bool)

(assert (=> b!252351 (= e!163661 e!163657)))

(declare-fun bm!23770 () Bool)

(declare-fun call!23773 () Bool)

(declare-datatypes ((V!8329 0))(
  ( (V!8330 (val!3300 Int)) )
))
(declare-datatypes ((ValueCell!2912 0))(
  ( (ValueCellFull!2912 (v!5367 V!8329)) (EmptyCell!2912) )
))
(declare-datatypes ((array!12346 0))(
  ( (array!12347 (arr!5851 (Array (_ BitVec 32) ValueCell!2912)) (size!6198 (_ BitVec 32))) )
))
(declare-datatypes ((array!12348 0))(
  ( (array!12349 (arr!5852 (Array (_ BitVec 32) (_ BitVec 64))) (size!6199 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3724 0))(
  ( (LongMapFixedSize!3725 (defaultEntry!4663 Int) (mask!10882 (_ BitVec 32)) (extraKeys!4400 (_ BitVec 32)) (zeroValue!4504 V!8329) (minValue!4504 V!8329) (_size!1911 (_ BitVec 32)) (_keys!6811 array!12348) (_values!4646 array!12346) (_vacant!1911 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3724)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23770 (= call!23773 (arrayContainsKey!0 (_keys!6811 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252352 () Bool)

(declare-fun e!163651 () Bool)

(declare-datatypes ((SeekEntryResult!1142 0))(
  ( (MissingZero!1142 (index!6738 (_ BitVec 32))) (Found!1142 (index!6739 (_ BitVec 32))) (Intermediate!1142 (undefined!1954 Bool) (index!6740 (_ BitVec 32)) (x!24780 (_ BitVec 32))) (Undefined!1142) (MissingVacant!1142 (index!6741 (_ BitVec 32))) )
))
(declare-fun lt!126545 () SeekEntryResult!1142)

(assert (=> b!252352 (= e!163651 (is-Undefined!1142 lt!126545))))

(declare-fun b!252353 () Bool)

(declare-fun res!123547 () Bool)

(declare-fun e!163659 () Bool)

(assert (=> b!252353 (=> res!123547 e!163659)))

(assert (=> b!252353 (= res!123547 (or (not (= (size!6198 (_values!4646 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10882 thiss!1504)))) (not (= (size!6199 (_keys!6811 thiss!1504)) (size!6198 (_values!4646 thiss!1504)))) (bvslt (mask!10882 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4400 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4400 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!252354 () Bool)

(declare-fun e!163656 () Bool)

(declare-fun e!163654 () Bool)

(assert (=> b!252354 (= e!163656 e!163654)))

(declare-fun res!123542 () Bool)

(assert (=> b!252354 (=> (not res!123542) (not e!163654))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!252354 (= res!123542 (or (= lt!126545 (MissingZero!1142 index!297)) (= lt!126545 (MissingVacant!1142 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12348 (_ BitVec 32)) SeekEntryResult!1142)

(assert (=> b!252354 (= lt!126545 (seekEntryOrOpen!0 key!932 (_keys!6811 thiss!1504) (mask!10882 thiss!1504)))))

(declare-fun b!252355 () Bool)

(declare-fun e!163655 () Bool)

(declare-fun tp_is_empty!6511 () Bool)

(assert (=> b!252355 (= e!163655 tp_is_empty!6511)))

(declare-fun b!252356 () Bool)

(declare-fun e!163662 () Bool)

(assert (=> b!252356 (= e!163654 e!163662)))

(declare-fun res!123545 () Bool)

(assert (=> b!252356 (=> (not res!123545) (not e!163662))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!252356 (= res!123545 (inRange!0 index!297 (mask!10882 thiss!1504)))))

(declare-datatypes ((Unit!7807 0))(
  ( (Unit!7808) )
))
(declare-fun lt!126544 () Unit!7807)

(declare-fun e!163649 () Unit!7807)

(assert (=> b!252356 (= lt!126544 e!163649)))

(declare-fun c!42508 () Bool)

(declare-datatypes ((tuple2!4856 0))(
  ( (tuple2!4857 (_1!2438 (_ BitVec 64)) (_2!2438 V!8329)) )
))
(declare-datatypes ((List!3760 0))(
  ( (Nil!3757) (Cons!3756 (h!4418 tuple2!4856) (t!8809 List!3760)) )
))
(declare-datatypes ((ListLongMap!3783 0))(
  ( (ListLongMap!3784 (toList!1907 List!3760)) )
))
(declare-fun contains!1828 (ListLongMap!3783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1430 (array!12348 array!12346 (_ BitVec 32) (_ BitVec 32) V!8329 V!8329 (_ BitVec 32) Int) ListLongMap!3783)

(assert (=> b!252356 (= c!42508 (contains!1828 (getCurrentListMap!1430 (_keys!6811 thiss!1504) (_values!4646 thiss!1504) (mask!10882 thiss!1504) (extraKeys!4400 thiss!1504) (zeroValue!4504 thiss!1504) (minValue!4504 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4663 thiss!1504)) key!932))))

(declare-fun b!252357 () Bool)

(declare-fun e!163652 () Unit!7807)

(declare-fun Unit!7809 () Unit!7807)

(assert (=> b!252357 (= e!163652 Unit!7809)))

(declare-fun lt!126539 () Unit!7807)

(declare-fun lemmaArrayContainsKeyThenInListMap!210 (array!12348 array!12346 (_ BitVec 32) (_ BitVec 32) V!8329 V!8329 (_ BitVec 64) (_ BitVec 32) Int) Unit!7807)

(assert (=> b!252357 (= lt!126539 (lemmaArrayContainsKeyThenInListMap!210 (_keys!6811 thiss!1504) (_values!4646 thiss!1504) (mask!10882 thiss!1504) (extraKeys!4400 thiss!1504) (zeroValue!4504 thiss!1504) (minValue!4504 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4663 thiss!1504)))))

(assert (=> b!252357 false))

(declare-fun b!252358 () Bool)

(declare-fun res!123540 () Bool)

(assert (=> b!252358 (=> res!123540 e!163659)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12348 (_ BitVec 32)) Bool)

(assert (=> b!252358 (= res!123540 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6811 thiss!1504) (mask!10882 thiss!1504))))))

(declare-fun b!252359 () Bool)

(declare-fun lt!126540 () Unit!7807)

(assert (=> b!252359 (= e!163649 lt!126540)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!407 (array!12348 array!12346 (_ BitVec 32) (_ BitVec 32) V!8329 V!8329 (_ BitVec 64) Int) Unit!7807)

(assert (=> b!252359 (= lt!126540 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!407 (_keys!6811 thiss!1504) (_values!4646 thiss!1504) (mask!10882 thiss!1504) (extraKeys!4400 thiss!1504) (zeroValue!4504 thiss!1504) (minValue!4504 thiss!1504) key!932 (defaultEntry!4663 thiss!1504)))))

(declare-fun c!42510 () Bool)

(assert (=> b!252359 (= c!42510 (is-MissingZero!1142 lt!126545))))

(assert (=> b!252359 e!163661))

(declare-fun b!252360 () Bool)

(declare-fun res!123548 () Bool)

(assert (=> b!252360 (= res!123548 (= (select (arr!5852 (_keys!6811 thiss!1504)) (index!6741 lt!126545)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!163660 () Bool)

(assert (=> b!252360 (=> (not res!123548) (not e!163660))))

(declare-fun b!252361 () Bool)

(assert (=> b!252361 (= e!163651 e!163660)))

(declare-fun res!123543 () Bool)

(assert (=> b!252361 (= res!123543 call!23774)))

(assert (=> b!252361 (=> (not res!123543) (not e!163660))))

(declare-fun res!123549 () Bool)

(assert (=> start!24150 (=> (not res!123549) (not e!163656))))

(declare-fun valid!1449 (LongMapFixedSize!3724) Bool)

(assert (=> start!24150 (= res!123549 (valid!1449 thiss!1504))))

(assert (=> start!24150 e!163656))

(declare-fun e!163658 () Bool)

(assert (=> start!24150 e!163658))

(assert (=> start!24150 true))

(declare-fun b!252362 () Bool)

(declare-fun c!42511 () Bool)

(assert (=> b!252362 (= c!42511 (is-MissingVacant!1142 lt!126545))))

(assert (=> b!252362 (= e!163661 e!163651)))

(declare-fun mapNonEmpty!11073 () Bool)

(declare-fun mapRes!11073 () Bool)

(declare-fun tp!23225 () Bool)

(assert (=> mapNonEmpty!11073 (= mapRes!11073 (and tp!23225 e!163655))))

(declare-fun mapRest!11073 () (Array (_ BitVec 32) ValueCell!2912))

(declare-fun mapKey!11073 () (_ BitVec 32))

(declare-fun mapValue!11073 () ValueCell!2912)

(assert (=> mapNonEmpty!11073 (= (arr!5851 (_values!4646 thiss!1504)) (store mapRest!11073 mapKey!11073 mapValue!11073))))

(declare-fun b!252363 () Bool)

(declare-fun Unit!7810 () Unit!7807)

(assert (=> b!252363 (= e!163649 Unit!7810)))

(declare-fun lt!126537 () Unit!7807)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!405 (array!12348 array!12346 (_ BitVec 32) (_ BitVec 32) V!8329 V!8329 (_ BitVec 64) Int) Unit!7807)

(assert (=> b!252363 (= lt!126537 (lemmaInListMapThenSeekEntryOrOpenFindsIt!405 (_keys!6811 thiss!1504) (_values!4646 thiss!1504) (mask!10882 thiss!1504) (extraKeys!4400 thiss!1504) (zeroValue!4504 thiss!1504) (minValue!4504 thiss!1504) key!932 (defaultEntry!4663 thiss!1504)))))

(assert (=> b!252363 false))

(declare-fun b!252364 () Bool)

(declare-fun res!123539 () Bool)

(assert (=> b!252364 (=> (not res!123539) (not e!163656))))

(assert (=> b!252364 (= res!123539 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!252365 () Bool)

(declare-fun Unit!7811 () Unit!7807)

(assert (=> b!252365 (= e!163652 Unit!7811)))

(declare-fun b!252366 () Bool)

(declare-fun res!123546 () Bool)

(assert (=> b!252366 (=> (not res!123546) (not e!163657))))

(assert (=> b!252366 (= res!123546 (= (select (arr!5852 (_keys!6811 thiss!1504)) (index!6738 lt!126545)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!11073 () Bool)

(assert (=> mapIsEmpty!11073 mapRes!11073))

(declare-fun b!252367 () Bool)

(declare-fun e!163650 () Bool)

(assert (=> b!252367 (= e!163650 tp_is_empty!6511)))

(declare-fun b!252368 () Bool)

(declare-datatypes ((List!3761 0))(
  ( (Nil!3758) (Cons!3757 (h!4419 (_ BitVec 64)) (t!8810 List!3761)) )
))
(declare-fun arrayNoDuplicates!0 (array!12348 (_ BitVec 32) List!3761) Bool)

(assert (=> b!252368 (= e!163659 (arrayNoDuplicates!0 (_keys!6811 thiss!1504) #b00000000000000000000000000000000 Nil!3758))))

(declare-fun b!252369 () Bool)

(assert (=> b!252369 (= e!163657 (not call!23773))))

(declare-fun b!252370 () Bool)

(assert (=> b!252370 (= e!163662 (not e!163659))))

(declare-fun res!123544 () Bool)

(assert (=> b!252370 (=> res!123544 e!163659)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252370 (= res!123544 (not (validMask!0 (mask!10882 thiss!1504))))))

(declare-fun lt!126543 () array!12348)

(assert (=> b!252370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126543 (mask!10882 thiss!1504))))

(declare-fun lt!126541 () Unit!7807)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12348 (_ BitVec 32) (_ BitVec 32)) Unit!7807)

(assert (=> b!252370 (= lt!126541 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6811 thiss!1504) index!297 (mask!10882 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12348 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252370 (= (arrayCountValidKeys!0 lt!126543 #b00000000000000000000000000000000 (size!6199 (_keys!6811 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6811 thiss!1504) #b00000000000000000000000000000000 (size!6199 (_keys!6811 thiss!1504)))))))

(declare-fun lt!126538 () Unit!7807)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12348 (_ BitVec 32) (_ BitVec 64)) Unit!7807)

(assert (=> b!252370 (= lt!126538 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6811 thiss!1504) index!297 key!932))))

(assert (=> b!252370 (arrayNoDuplicates!0 lt!126543 #b00000000000000000000000000000000 Nil!3758)))

(assert (=> b!252370 (= lt!126543 (array!12349 (store (arr!5852 (_keys!6811 thiss!1504)) index!297 key!932) (size!6199 (_keys!6811 thiss!1504))))))

(declare-fun lt!126546 () Unit!7807)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12348 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3761) Unit!7807)

(assert (=> b!252370 (= lt!126546 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6811 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3758))))

(declare-fun lt!126542 () Unit!7807)

(assert (=> b!252370 (= lt!126542 e!163652)))

(declare-fun c!42509 () Bool)

(assert (=> b!252370 (= c!42509 (arrayContainsKey!0 (_keys!6811 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252371 () Bool)

(declare-fun e!163648 () Bool)

(assert (=> b!252371 (= e!163648 (and e!163650 mapRes!11073))))

(declare-fun condMapEmpty!11073 () Bool)

(declare-fun mapDefault!11073 () ValueCell!2912)

