; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23714 () Bool)

(assert start!23714)

(declare-fun b!249014 () Bool)

(declare-fun b_free!6613 () Bool)

(declare-fun b_next!6613 () Bool)

(assert (=> b!249014 (= b_free!6613 (not b_next!6613))))

(declare-fun tp!23096 () Bool)

(declare-fun b_and!13639 () Bool)

(assert (=> b!249014 (= tp!23096 b_and!13639)))

(declare-fun bm!23367 () Bool)

(declare-fun call!23371 () Bool)

(declare-datatypes ((V!8281 0))(
  ( (V!8282 (val!3282 Int)) )
))
(declare-datatypes ((ValueCell!2894 0))(
  ( (ValueCellFull!2894 (v!5339 V!8281)) (EmptyCell!2894) )
))
(declare-datatypes ((array!12262 0))(
  ( (array!12263 (arr!5815 (Array (_ BitVec 32) ValueCell!2894)) (size!6158 (_ BitVec 32))) )
))
(declare-datatypes ((array!12264 0))(
  ( (array!12265 (arr!5816 (Array (_ BitVec 32) (_ BitVec 64))) (size!6159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3688 0))(
  ( (LongMapFixedSize!3689 (defaultEntry!4605 Int) (mask!10766 (_ BitVec 32)) (extraKeys!4342 (_ BitVec 32)) (zeroValue!4446 V!8281) (minValue!4446 V!8281) (_size!1893 (_ BitVec 32)) (_keys!6733 array!12264) (_values!4588 array!12262) (_vacant!1893 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3688)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23367 (= call!23371 (arrayContainsKey!0 (_keys!6733 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10997 () Bool)

(declare-fun mapRes!10997 () Bool)

(assert (=> mapIsEmpty!10997 mapRes!10997))

(declare-fun b!248996 () Bool)

(declare-fun e!161520 () Bool)

(declare-datatypes ((SeekEntryResult!1125 0))(
  ( (MissingZero!1125 (index!6670 (_ BitVec 32))) (Found!1125 (index!6671 (_ BitVec 32))) (Intermediate!1125 (undefined!1937 Bool) (index!6672 (_ BitVec 32)) (x!24623 (_ BitVec 32))) (Undefined!1125) (MissingVacant!1125 (index!6673 (_ BitVec 32))) )
))
(declare-fun lt!124759 () SeekEntryResult!1125)

(assert (=> b!248996 (= e!161520 (is-Undefined!1125 lt!124759))))

(declare-fun b!248997 () Bool)

(declare-fun res!122020 () Bool)

(assert (=> b!248997 (= res!122020 (= (select (arr!5816 (_keys!6733 thiss!1504)) (index!6673 lt!124759)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161517 () Bool)

(assert (=> b!248997 (=> (not res!122020) (not e!161517))))

(declare-fun res!122026 () Bool)

(declare-fun e!161514 () Bool)

(assert (=> start!23714 (=> (not res!122026) (not e!161514))))

(declare-fun valid!1435 (LongMapFixedSize!3688) Bool)

(assert (=> start!23714 (= res!122026 (valid!1435 thiss!1504))))

(assert (=> start!23714 e!161514))

(declare-fun e!161523 () Bool)

(assert (=> start!23714 e!161523))

(assert (=> start!23714 true))

(declare-fun b!248998 () Bool)

(declare-fun e!161522 () Bool)

(declare-fun e!161516 () Bool)

(assert (=> b!248998 (= e!161522 (not e!161516))))

(declare-fun res!122025 () Bool)

(assert (=> b!248998 (=> res!122025 e!161516)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!248998 (= res!122025 (not (validMask!0 (mask!10766 thiss!1504))))))

(declare-fun lt!124755 () array!12264)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12264 (_ BitVec 32)) Bool)

(assert (=> b!248998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124755 (mask!10766 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7707 0))(
  ( (Unit!7708) )
))
(declare-fun lt!124758 () Unit!7707)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12264 (_ BitVec 32) (_ BitVec 32)) Unit!7707)

(assert (=> b!248998 (= lt!124758 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6733 thiss!1504) index!297 (mask!10766 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12264 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!248998 (= (arrayCountValidKeys!0 lt!124755 #b00000000000000000000000000000000 (size!6159 (_keys!6733 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6733 thiss!1504) #b00000000000000000000000000000000 (size!6159 (_keys!6733 thiss!1504)))))))

(declare-fun lt!124756 () Unit!7707)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12264 (_ BitVec 32) (_ BitVec 64)) Unit!7707)

(assert (=> b!248998 (= lt!124756 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6733 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3731 0))(
  ( (Nil!3728) (Cons!3727 (h!4385 (_ BitVec 64)) (t!8768 List!3731)) )
))
(declare-fun arrayNoDuplicates!0 (array!12264 (_ BitVec 32) List!3731) Bool)

(assert (=> b!248998 (arrayNoDuplicates!0 lt!124755 #b00000000000000000000000000000000 Nil!3728)))

(assert (=> b!248998 (= lt!124755 (array!12265 (store (arr!5816 (_keys!6733 thiss!1504)) index!297 key!932) (size!6159 (_keys!6733 thiss!1504))))))

(declare-fun lt!124757 () Unit!7707)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12264 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3731) Unit!7707)

(assert (=> b!248998 (= lt!124757 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6733 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3728))))

(declare-fun lt!124751 () Unit!7707)

(declare-fun e!161515 () Unit!7707)

(assert (=> b!248998 (= lt!124751 e!161515)))

(declare-fun c!41736 () Bool)

(assert (=> b!248998 (= c!41736 (arrayContainsKey!0 (_keys!6733 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248999 () Bool)

(declare-fun res!122022 () Bool)

(declare-fun e!161510 () Bool)

(assert (=> b!248999 (=> (not res!122022) (not e!161510))))

(assert (=> b!248999 (= res!122022 (= (select (arr!5816 (_keys!6733 thiss!1504)) (index!6670 lt!124759)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!249000 () Bool)

(declare-fun res!122018 () Bool)

(assert (=> b!249000 (=> (not res!122018) (not e!161514))))

(assert (=> b!249000 (= res!122018 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!249001 () Bool)

(declare-fun c!41737 () Bool)

(assert (=> b!249001 (= c!41737 (is-MissingVacant!1125 lt!124759))))

(declare-fun e!161512 () Bool)

(assert (=> b!249001 (= e!161512 e!161520)))

(declare-fun b!249002 () Bool)

(declare-fun e!161521 () Unit!7707)

(declare-fun lt!124754 () Unit!7707)

(assert (=> b!249002 (= e!161521 lt!124754)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!393 (array!12264 array!12262 (_ BitVec 32) (_ BitVec 32) V!8281 V!8281 (_ BitVec 64) Int) Unit!7707)

(assert (=> b!249002 (= lt!124754 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!393 (_keys!6733 thiss!1504) (_values!4588 thiss!1504) (mask!10766 thiss!1504) (extraKeys!4342 thiss!1504) (zeroValue!4446 thiss!1504) (minValue!4446 thiss!1504) key!932 (defaultEntry!4605 thiss!1504)))))

(declare-fun c!41735 () Bool)

(assert (=> b!249002 (= c!41735 (is-MissingZero!1125 lt!124759))))

(assert (=> b!249002 e!161512))

(declare-fun b!249003 () Bool)

(declare-fun e!161511 () Bool)

(assert (=> b!249003 (= e!161511 e!161522)))

(declare-fun res!122021 () Bool)

(assert (=> b!249003 (=> (not res!122021) (not e!161522))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!249003 (= res!122021 (inRange!0 index!297 (mask!10766 thiss!1504)))))

(declare-fun lt!124750 () Unit!7707)

(assert (=> b!249003 (= lt!124750 e!161521)))

(declare-fun c!41738 () Bool)

(declare-datatypes ((tuple2!4826 0))(
  ( (tuple2!4827 (_1!2423 (_ BitVec 64)) (_2!2423 V!8281)) )
))
(declare-datatypes ((List!3732 0))(
  ( (Nil!3729) (Cons!3728 (h!4386 tuple2!4826) (t!8769 List!3732)) )
))
(declare-datatypes ((ListLongMap!3753 0))(
  ( (ListLongMap!3754 (toList!1892 List!3732)) )
))
(declare-fun contains!1803 (ListLongMap!3753 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1415 (array!12264 array!12262 (_ BitVec 32) (_ BitVec 32) V!8281 V!8281 (_ BitVec 32) Int) ListLongMap!3753)

(assert (=> b!249003 (= c!41738 (contains!1803 (getCurrentListMap!1415 (_keys!6733 thiss!1504) (_values!4588 thiss!1504) (mask!10766 thiss!1504) (extraKeys!4342 thiss!1504) (zeroValue!4446 thiss!1504) (minValue!4446 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4605 thiss!1504)) key!932))))

(declare-fun b!249004 () Bool)

(declare-fun e!161509 () Bool)

(declare-fun tp_is_empty!6475 () Bool)

(assert (=> b!249004 (= e!161509 tp_is_empty!6475)))

(declare-fun mapNonEmpty!10997 () Bool)

(declare-fun tp!23095 () Bool)

(declare-fun e!161519 () Bool)

(assert (=> mapNonEmpty!10997 (= mapRes!10997 (and tp!23095 e!161519))))

(declare-fun mapRest!10997 () (Array (_ BitVec 32) ValueCell!2894))

(declare-fun mapValue!10997 () ValueCell!2894)

(declare-fun mapKey!10997 () (_ BitVec 32))

(assert (=> mapNonEmpty!10997 (= (arr!5815 (_values!4588 thiss!1504)) (store mapRest!10997 mapKey!10997 mapValue!10997))))

(declare-fun bm!23368 () Bool)

(declare-fun call!23370 () Bool)

(assert (=> bm!23368 (= call!23370 (inRange!0 (ite c!41735 (index!6670 lt!124759) (index!6673 lt!124759)) (mask!10766 thiss!1504)))))

(declare-fun b!249005 () Bool)

(declare-fun Unit!7709 () Unit!7707)

(assert (=> b!249005 (= e!161521 Unit!7709)))

(declare-fun lt!124752 () Unit!7707)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!393 (array!12264 array!12262 (_ BitVec 32) (_ BitVec 32) V!8281 V!8281 (_ BitVec 64) Int) Unit!7707)

(assert (=> b!249005 (= lt!124752 (lemmaInListMapThenSeekEntryOrOpenFindsIt!393 (_keys!6733 thiss!1504) (_values!4588 thiss!1504) (mask!10766 thiss!1504) (extraKeys!4342 thiss!1504) (zeroValue!4446 thiss!1504) (minValue!4446 thiss!1504) key!932 (defaultEntry!4605 thiss!1504)))))

(assert (=> b!249005 false))

(declare-fun b!249006 () Bool)

(assert (=> b!249006 (= e!161519 tp_is_empty!6475)))

(declare-fun b!249007 () Bool)

(declare-fun Unit!7710 () Unit!7707)

(assert (=> b!249007 (= e!161515 Unit!7710)))

(declare-fun lt!124753 () Unit!7707)

(declare-fun lemmaArrayContainsKeyThenInListMap!196 (array!12264 array!12262 (_ BitVec 32) (_ BitVec 32) V!8281 V!8281 (_ BitVec 64) (_ BitVec 32) Int) Unit!7707)

(assert (=> b!249007 (= lt!124753 (lemmaArrayContainsKeyThenInListMap!196 (_keys!6733 thiss!1504) (_values!4588 thiss!1504) (mask!10766 thiss!1504) (extraKeys!4342 thiss!1504) (zeroValue!4446 thiss!1504) (minValue!4446 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4605 thiss!1504)))))

(assert (=> b!249007 false))

(declare-fun b!249008 () Bool)

(declare-fun res!122024 () Bool)

(assert (=> b!249008 (=> (not res!122024) (not e!161510))))

(assert (=> b!249008 (= res!122024 call!23370)))

(assert (=> b!249008 (= e!161512 e!161510)))

(declare-fun b!249009 () Bool)

(assert (=> b!249009 (= e!161510 (not call!23371))))

(declare-fun b!249010 () Bool)

(declare-fun e!161513 () Bool)

(assert (=> b!249010 (= e!161513 (and e!161509 mapRes!10997))))

(declare-fun condMapEmpty!10997 () Bool)

(declare-fun mapDefault!10997 () ValueCell!2894)

