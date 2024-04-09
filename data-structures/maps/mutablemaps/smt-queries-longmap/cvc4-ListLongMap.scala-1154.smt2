; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24288 () Bool)

(assert start!24288)

(declare-fun b!254065 () Bool)

(declare-fun b_free!6677 () Bool)

(declare-fun b_next!6677 () Bool)

(assert (=> b!254065 (= b_free!6677 (not b_next!6677))))

(declare-fun tp!23319 () Bool)

(declare-fun b_and!13737 () Bool)

(assert (=> b!254065 (= tp!23319 b_and!13737)))

(declare-fun b!254040 () Bool)

(declare-fun res!124391 () Bool)

(declare-fun e!164687 () Bool)

(assert (=> b!254040 (=> res!124391 e!164687)))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8365 0))(
  ( (V!8366 (val!3314 Int)) )
))
(declare-datatypes ((ValueCell!2926 0))(
  ( (ValueCellFull!2926 (v!5384 V!8365)) (EmptyCell!2926) )
))
(declare-datatypes ((array!12408 0))(
  ( (array!12409 (arr!5879 (Array (_ BitVec 32) ValueCell!2926)) (size!6226 (_ BitVec 32))) )
))
(declare-datatypes ((array!12410 0))(
  ( (array!12411 (arr!5880 (Array (_ BitVec 32) (_ BitVec 64))) (size!6227 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3752 0))(
  ( (LongMapFixedSize!3753 (defaultEntry!4689 Int) (mask!10931 (_ BitVec 32)) (extraKeys!4426 (_ BitVec 32)) (zeroValue!4530 V!8365) (minValue!4530 V!8365) (_size!1925 (_ BitVec 32)) (_keys!6843 array!12410) (_values!4672 array!12408) (_vacant!1925 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3752)

(assert (=> b!254040 (= res!124391 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6227 (_keys!6843 thiss!1504)))))))

(declare-fun b!254041 () Bool)

(declare-fun res!124382 () Bool)

(declare-fun e!164678 () Bool)

(assert (=> b!254041 (=> (not res!124382) (not e!164678))))

(declare-datatypes ((SeekEntryResult!1155 0))(
  ( (MissingZero!1155 (index!6790 (_ BitVec 32))) (Found!1155 (index!6791 (_ BitVec 32))) (Intermediate!1155 (undefined!1967 Bool) (index!6792 (_ BitVec 32)) (x!24855 (_ BitVec 32))) (Undefined!1155) (MissingVacant!1155 (index!6793 (_ BitVec 32))) )
))
(declare-fun lt!127354 () SeekEntryResult!1155)

(assert (=> b!254041 (= res!124382 (= (select (arr!5880 (_keys!6843 thiss!1504)) (index!6790 lt!127354)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254042 () Bool)

(declare-datatypes ((Unit!7861 0))(
  ( (Unit!7862) )
))
(declare-fun e!164680 () Unit!7861)

(declare-fun Unit!7863 () Unit!7861)

(assert (=> b!254042 (= e!164680 Unit!7863)))

(declare-fun b!254043 () Bool)

(declare-fun res!124390 () Bool)

(assert (=> b!254043 (=> res!124390 e!164687)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!254043 (= res!124390 (not (validKeyInArray!0 key!932)))))

(declare-fun mapIsEmpty!11124 () Bool)

(declare-fun mapRes!11124 () Bool)

(assert (=> mapIsEmpty!11124 mapRes!11124))

(declare-fun res!124393 () Bool)

(declare-fun e!164684 () Bool)

(assert (=> start!24288 (=> (not res!124393) (not e!164684))))

(declare-fun valid!1459 (LongMapFixedSize!3752) Bool)

(assert (=> start!24288 (= res!124393 (valid!1459 thiss!1504))))

(assert (=> start!24288 e!164684))

(declare-fun e!164677 () Bool)

(assert (=> start!24288 e!164677))

(assert (=> start!24288 true))

(declare-fun b!254044 () Bool)

(declare-fun res!124384 () Bool)

(assert (=> b!254044 (=> res!124384 e!164687)))

(assert (=> b!254044 (= res!124384 (or (not (= (size!6226 (_values!4672 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10931 thiss!1504)))) (not (= (size!6227 (_keys!6843 thiss!1504)) (size!6226 (_values!4672 thiss!1504)))) (bvslt (mask!10931 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4426 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4426 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!254045 () Bool)

(declare-fun e!164676 () Bool)

(declare-fun e!164682 () Bool)

(assert (=> b!254045 (= e!164676 e!164682)))

(declare-fun res!124389 () Bool)

(assert (=> b!254045 (=> (not res!124389) (not e!164682))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!254045 (= res!124389 (inRange!0 index!297 (mask!10931 thiss!1504)))))

(declare-fun lt!127348 () Unit!7861)

(declare-fun e!164675 () Unit!7861)

(assert (=> b!254045 (= lt!127348 e!164675)))

(declare-fun c!42832 () Bool)

(declare-datatypes ((tuple2!4874 0))(
  ( (tuple2!4875 (_1!2447 (_ BitVec 64)) (_2!2447 V!8365)) )
))
(declare-datatypes ((List!3779 0))(
  ( (Nil!3776) (Cons!3775 (h!4437 tuple2!4874) (t!8834 List!3779)) )
))
(declare-datatypes ((ListLongMap!3801 0))(
  ( (ListLongMap!3802 (toList!1916 List!3779)) )
))
(declare-fun contains!1840 (ListLongMap!3801 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1439 (array!12410 array!12408 (_ BitVec 32) (_ BitVec 32) V!8365 V!8365 (_ BitVec 32) Int) ListLongMap!3801)

(assert (=> b!254045 (= c!42832 (contains!1840 (getCurrentListMap!1439 (_keys!6843 thiss!1504) (_values!4672 thiss!1504) (mask!10931 thiss!1504) (extraKeys!4426 thiss!1504) (zeroValue!4530 thiss!1504) (minValue!4530 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4689 thiss!1504)) key!932))))

(declare-fun b!254046 () Bool)

(declare-fun e!164686 () Bool)

(declare-fun call!23974 () Bool)

(assert (=> b!254046 (= e!164686 (not call!23974))))

(declare-fun bm!23971 () Bool)

(declare-fun arrayContainsKey!0 (array!12410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23971 (= call!23974 (arrayContainsKey!0 (_keys!6843 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254047 () Bool)

(declare-fun e!164681 () Bool)

(assert (=> b!254047 (= e!164681 (is-Undefined!1155 lt!127354))))

(declare-fun b!254048 () Bool)

(declare-fun e!164683 () Bool)

(declare-fun tp_is_empty!6539 () Bool)

(assert (=> b!254048 (= e!164683 tp_is_empty!6539)))

(declare-fun lt!127355 () Bool)

(declare-fun b!254049 () Bool)

(assert (=> b!254049 (= e!164687 (or (and (not (= (select (arr!5880 (_keys!6843 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5880 (_keys!6843 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000))) (not lt!127355)))))

(declare-fun b!254050 () Bool)

(declare-fun res!124388 () Bool)

(assert (=> b!254050 (=> (not res!124388) (not e!164684))))

(assert (=> b!254050 (= res!124388 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254051 () Bool)

(assert (=> b!254051 (= e!164684 e!164676)))

(declare-fun res!124387 () Bool)

(assert (=> b!254051 (=> (not res!124387) (not e!164676))))

(assert (=> b!254051 (= res!124387 (or (= lt!127354 (MissingZero!1155 index!297)) (= lt!127354 (MissingVacant!1155 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12410 (_ BitVec 32)) SeekEntryResult!1155)

(assert (=> b!254051 (= lt!127354 (seekEntryOrOpen!0 key!932 (_keys!6843 thiss!1504) (mask!10931 thiss!1504)))))

(declare-fun b!254052 () Bool)

(declare-fun lt!127352 () Unit!7861)

(assert (=> b!254052 (= e!164675 lt!127352)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!415 (array!12410 array!12408 (_ BitVec 32) (_ BitVec 32) V!8365 V!8365 (_ BitVec 64) Int) Unit!7861)

(assert (=> b!254052 (= lt!127352 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!415 (_keys!6843 thiss!1504) (_values!4672 thiss!1504) (mask!10931 thiss!1504) (extraKeys!4426 thiss!1504) (zeroValue!4530 thiss!1504) (minValue!4530 thiss!1504) key!932 (defaultEntry!4689 thiss!1504)))))

(declare-fun c!42833 () Bool)

(assert (=> b!254052 (= c!42833 (is-MissingZero!1155 lt!127354))))

(declare-fun e!164688 () Bool)

(assert (=> b!254052 e!164688))

(declare-fun bm!23972 () Bool)

(declare-fun call!23975 () Bool)

(assert (=> bm!23972 (= call!23975 (inRange!0 (ite c!42833 (index!6790 lt!127354) (index!6793 lt!127354)) (mask!10931 thiss!1504)))))

(declare-fun b!254053 () Bool)

(declare-fun res!124392 () Bool)

(assert (=> b!254053 (=> res!124392 e!164687)))

(declare-datatypes ((List!3780 0))(
  ( (Nil!3777) (Cons!3776 (h!4438 (_ BitVec 64)) (t!8835 List!3780)) )
))
(declare-fun arrayNoDuplicates!0 (array!12410 (_ BitVec 32) List!3780) Bool)

(assert (=> b!254053 (= res!124392 (not (arrayNoDuplicates!0 (_keys!6843 thiss!1504) #b00000000000000000000000000000000 Nil!3777)))))

(declare-fun mapNonEmpty!11124 () Bool)

(declare-fun tp!23318 () Bool)

(declare-fun e!164679 () Bool)

(assert (=> mapNonEmpty!11124 (= mapRes!11124 (and tp!23318 e!164679))))

(declare-fun mapRest!11124 () (Array (_ BitVec 32) ValueCell!2926))

(declare-fun mapValue!11124 () ValueCell!2926)

(declare-fun mapKey!11124 () (_ BitVec 32))

(assert (=> mapNonEmpty!11124 (= (arr!5879 (_values!4672 thiss!1504)) (store mapRest!11124 mapKey!11124 mapValue!11124))))

(declare-fun b!254054 () Bool)

(declare-fun res!124386 () Bool)

(assert (=> b!254054 (= res!124386 (= (select (arr!5880 (_keys!6843 thiss!1504)) (index!6793 lt!127354)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254054 (=> (not res!124386) (not e!164686))))

(declare-fun b!254055 () Bool)

(declare-fun res!124383 () Bool)

(assert (=> b!254055 (=> res!124383 e!164687)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12410 (_ BitVec 32)) Bool)

(assert (=> b!254055 (= res!124383 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6843 thiss!1504) (mask!10931 thiss!1504))))))

(declare-fun b!254056 () Bool)

(declare-fun Unit!7864 () Unit!7861)

(assert (=> b!254056 (= e!164675 Unit!7864)))

(declare-fun lt!127356 () Unit!7861)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!414 (array!12410 array!12408 (_ BitVec 32) (_ BitVec 32) V!8365 V!8365 (_ BitVec 64) Int) Unit!7861)

(assert (=> b!254056 (= lt!127356 (lemmaInListMapThenSeekEntryOrOpenFindsIt!414 (_keys!6843 thiss!1504) (_values!4672 thiss!1504) (mask!10931 thiss!1504) (extraKeys!4426 thiss!1504) (zeroValue!4530 thiss!1504) (minValue!4530 thiss!1504) key!932 (defaultEntry!4689 thiss!1504)))))

(assert (=> b!254056 false))

(declare-fun b!254057 () Bool)

(declare-fun Unit!7865 () Unit!7861)

(assert (=> b!254057 (= e!164680 Unit!7865)))

(declare-fun lt!127346 () Unit!7861)

(declare-fun lemmaArrayContainsKeyThenInListMap!219 (array!12410 array!12408 (_ BitVec 32) (_ BitVec 32) V!8365 V!8365 (_ BitVec 64) (_ BitVec 32) Int) Unit!7861)

(assert (=> b!254057 (= lt!127346 (lemmaArrayContainsKeyThenInListMap!219 (_keys!6843 thiss!1504) (_values!4672 thiss!1504) (mask!10931 thiss!1504) (extraKeys!4426 thiss!1504) (zeroValue!4530 thiss!1504) (minValue!4530 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4689 thiss!1504)))))

(assert (=> b!254057 false))

(declare-fun b!254058 () Bool)

(assert (=> b!254058 (= e!164678 (not call!23974))))

(declare-fun b!254059 () Bool)

(declare-fun c!42834 () Bool)

(assert (=> b!254059 (= c!42834 (is-MissingVacant!1155 lt!127354))))

(assert (=> b!254059 (= e!164688 e!164681)))

(declare-fun b!254060 () Bool)

(assert (=> b!254060 (= e!164682 (not e!164687))))

(declare-fun res!124394 () Bool)

(assert (=> b!254060 (=> res!124394 e!164687)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!254060 (= res!124394 (not (validMask!0 (mask!10931 thiss!1504))))))

(declare-fun lt!127351 () array!12410)

(assert (=> b!254060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127351 (mask!10931 thiss!1504))))

(declare-fun lt!127347 () Unit!7861)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12410 (_ BitVec 32) (_ BitVec 32)) Unit!7861)

(assert (=> b!254060 (= lt!127347 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6843 thiss!1504) index!297 (mask!10931 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12410 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254060 (= (arrayCountValidKeys!0 lt!127351 #b00000000000000000000000000000000 (size!6227 (_keys!6843 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6843 thiss!1504) #b00000000000000000000000000000000 (size!6227 (_keys!6843 thiss!1504)))))))

(declare-fun lt!127353 () Unit!7861)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12410 (_ BitVec 32) (_ BitVec 64)) Unit!7861)

(assert (=> b!254060 (= lt!127353 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6843 thiss!1504) index!297 key!932))))

(assert (=> b!254060 (arrayNoDuplicates!0 lt!127351 #b00000000000000000000000000000000 Nil!3777)))

(assert (=> b!254060 (= lt!127351 (array!12411 (store (arr!5880 (_keys!6843 thiss!1504)) index!297 key!932) (size!6227 (_keys!6843 thiss!1504))))))

(declare-fun lt!127350 () Unit!7861)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12410 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3780) Unit!7861)

(assert (=> b!254060 (= lt!127350 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6843 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3777))))

(declare-fun lt!127349 () Unit!7861)

(assert (=> b!254060 (= lt!127349 e!164680)))

(declare-fun c!42835 () Bool)

(assert (=> b!254060 (= c!42835 lt!127355)))

(assert (=> b!254060 (= lt!127355 (arrayContainsKey!0 (_keys!6843 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254061 () Bool)

(declare-fun res!124385 () Bool)

(assert (=> b!254061 (=> (not res!124385) (not e!164678))))

(assert (=> b!254061 (= res!124385 call!23975)))

(assert (=> b!254061 (= e!164688 e!164678)))

(declare-fun b!254062 () Bool)

(assert (=> b!254062 (= e!164679 tp_is_empty!6539)))

(declare-fun b!254063 () Bool)

(assert (=> b!254063 (= e!164681 e!164686)))

(declare-fun res!124395 () Bool)

(assert (=> b!254063 (= res!124395 call!23975)))

(assert (=> b!254063 (=> (not res!124395) (not e!164686))))

(declare-fun b!254064 () Bool)

(declare-fun e!164685 () Bool)

(assert (=> b!254064 (= e!164685 (and e!164683 mapRes!11124))))

(declare-fun condMapEmpty!11124 () Bool)

(declare-fun mapDefault!11124 () ValueCell!2926)

