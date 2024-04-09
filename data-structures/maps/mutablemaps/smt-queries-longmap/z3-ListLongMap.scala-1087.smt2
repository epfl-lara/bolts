; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22218 () Bool)

(assert start!22218)

(declare-fun b!232849 () Bool)

(declare-fun b_free!6273 () Bool)

(declare-fun b_next!6273 () Bool)

(assert (=> b!232849 (= b_free!6273 (not b_next!6273))))

(declare-fun tp!21960 () Bool)

(declare-fun b_and!13189 () Bool)

(assert (=> b!232849 (= tp!21960 b_and!13189)))

(declare-fun call!21652 () Bool)

(declare-datatypes ((SeekEntryResult!981 0))(
  ( (MissingZero!981 (index!6094 (_ BitVec 32))) (Found!981 (index!6095 (_ BitVec 32))) (Intermediate!981 (undefined!1793 Bool) (index!6096 (_ BitVec 32)) (x!23593 (_ BitVec 32))) (Undefined!981) (MissingVacant!981 (index!6097 (_ BitVec 32))) )
))
(declare-fun lt!117821 () SeekEntryResult!981)

(declare-fun c!38715 () Bool)

(declare-datatypes ((V!7827 0))(
  ( (V!7828 (val!3112 Int)) )
))
(declare-datatypes ((ValueCell!2724 0))(
  ( (ValueCellFull!2724 (v!5128 V!7827)) (EmptyCell!2724) )
))
(declare-datatypes ((array!11512 0))(
  ( (array!11513 (arr!5475 (Array (_ BitVec 32) ValueCell!2724)) (size!5808 (_ BitVec 32))) )
))
(declare-datatypes ((array!11514 0))(
  ( (array!11515 (arr!5476 (Array (_ BitVec 32) (_ BitVec 64))) (size!5809 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3348 0))(
  ( (LongMapFixedSize!3349 (defaultEntry!4333 Int) (mask!10251 (_ BitVec 32)) (extraKeys!4070 (_ BitVec 32)) (zeroValue!4174 V!7827) (minValue!4174 V!7827) (_size!1723 (_ BitVec 32)) (_keys!6387 array!11514) (_values!4316 array!11512) (_vacant!1723 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3348)

(declare-fun bm!21648 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21648 (= call!21652 (inRange!0 (ite c!38715 (index!6094 lt!117821) (index!6097 lt!117821)) (mask!10251 thiss!1504)))))

(declare-fun b!232831 () Bool)

(declare-fun e!151233 () Bool)

(declare-fun e!151242 () Bool)

(assert (=> b!232831 (= e!151233 e!151242)))

(declare-fun res!114315 () Bool)

(assert (=> b!232831 (=> (not res!114315) (not e!151242))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!232831 (= res!114315 (or (= lt!117821 (MissingZero!981 index!297)) (= lt!117821 (MissingVacant!981 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11514 (_ BitVec 32)) SeekEntryResult!981)

(assert (=> b!232831 (= lt!117821 (seekEntryOrOpen!0 key!932 (_keys!6387 thiss!1504) (mask!10251 thiss!1504)))))

(declare-fun b!232832 () Bool)

(declare-fun e!151240 () Bool)

(declare-fun call!21651 () Bool)

(assert (=> b!232832 (= e!151240 (not call!21651))))

(declare-fun b!232833 () Bool)

(declare-fun e!151238 () Bool)

(declare-fun e!151246 () Bool)

(assert (=> b!232833 (= e!151238 e!151246)))

(declare-fun res!114319 () Bool)

(assert (=> b!232833 (= res!114319 call!21652)))

(assert (=> b!232833 (=> (not res!114319) (not e!151246))))

(declare-fun b!232834 () Bool)

(get-info :version)

(assert (=> b!232834 (= e!151238 ((_ is Undefined!981) lt!117821))))

(declare-fun b!232835 () Bool)

(declare-fun res!114314 () Bool)

(assert (=> b!232835 (=> (not res!114314) (not e!151233))))

(assert (=> b!232835 (= res!114314 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232836 () Bool)

(declare-fun e!151235 () Bool)

(assert (=> b!232836 (= e!151235 true)))

(declare-fun lt!117829 () Bool)

(declare-fun lt!117828 () LongMapFixedSize!3348)

(declare-datatypes ((tuple2!4590 0))(
  ( (tuple2!4591 (_1!2305 (_ BitVec 64)) (_2!2305 V!7827)) )
))
(declare-datatypes ((List!3529 0))(
  ( (Nil!3526) (Cons!3525 (h!4173 tuple2!4590) (t!8496 List!3529)) )
))
(declare-datatypes ((ListLongMap!3517 0))(
  ( (ListLongMap!3518 (toList!1774 List!3529)) )
))
(declare-fun contains!1636 (ListLongMap!3517 (_ BitVec 64)) Bool)

(declare-fun map!2581 (LongMapFixedSize!3348) ListLongMap!3517)

(assert (=> b!232836 (= lt!117829 (contains!1636 (map!2581 lt!117828) key!932))))

(declare-fun b!232837 () Bool)

(declare-fun c!38714 () Bool)

(assert (=> b!232837 (= c!38714 ((_ is MissingVacant!981) lt!117821))))

(declare-fun e!151232 () Bool)

(assert (=> b!232837 (= e!151232 e!151238)))

(declare-fun b!232838 () Bool)

(declare-datatypes ((Unit!7197 0))(
  ( (Unit!7198) )
))
(declare-fun e!151243 () Unit!7197)

(declare-fun lt!117826 () Unit!7197)

(assert (=> b!232838 (= e!151243 lt!117826)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!328 (array!11514 array!11512 (_ BitVec 32) (_ BitVec 32) V!7827 V!7827 (_ BitVec 64) Int) Unit!7197)

(assert (=> b!232838 (= lt!117826 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!328 (_keys!6387 thiss!1504) (_values!4316 thiss!1504) (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) key!932 (defaultEntry!4333 thiss!1504)))))

(assert (=> b!232838 (= c!38715 ((_ is MissingZero!981) lt!117821))))

(assert (=> b!232838 e!151232))

(declare-fun bm!21649 () Bool)

(declare-fun arrayContainsKey!0 (array!11514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21649 (= call!21651 (arrayContainsKey!0 (_keys!6387 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232839 () Bool)

(declare-fun e!151234 () Bool)

(assert (=> b!232839 (= e!151234 (not e!151235))))

(declare-fun res!114321 () Bool)

(assert (=> b!232839 (=> res!114321 e!151235)))

(declare-fun valid!1316 (LongMapFixedSize!3348) Bool)

(assert (=> b!232839 (= res!114321 (not (valid!1316 lt!117828)))))

(declare-fun lt!117831 () ListLongMap!3517)

(assert (=> b!232839 (contains!1636 lt!117831 key!932)))

(declare-fun lt!117815 () array!11514)

(declare-fun lt!117822 () Unit!7197)

(declare-fun lt!117824 () array!11512)

(declare-fun lemmaValidKeyInArrayIsInListMap!148 (array!11514 array!11512 (_ BitVec 32) (_ BitVec 32) V!7827 V!7827 (_ BitVec 32) Int) Unit!7197)

(assert (=> b!232839 (= lt!117822 (lemmaValidKeyInArrayIsInListMap!148 lt!117815 lt!117824 (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) index!297 (defaultEntry!4333 thiss!1504)))))

(assert (=> b!232839 (= lt!117828 (LongMapFixedSize!3349 (defaultEntry!4333 thiss!1504) (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) (bvadd #b00000000000000000000000000000001 (_size!1723 thiss!1504)) lt!117815 lt!117824 (_vacant!1723 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11514 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232839 (= (arrayCountValidKeys!0 lt!117815 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117819 () Unit!7197)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11514 (_ BitVec 32)) Unit!7197)

(assert (=> b!232839 (= lt!117819 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117815 index!297))))

(assert (=> b!232839 (arrayContainsKey!0 lt!117815 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117827 () Unit!7197)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11514 (_ BitVec 64) (_ BitVec 32)) Unit!7197)

(assert (=> b!232839 (= lt!117827 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117815 key!932 index!297))))

(declare-fun lt!117816 () ListLongMap!3517)

(assert (=> b!232839 (= lt!117816 lt!117831)))

(declare-fun getCurrentListMap!1297 (array!11514 array!11512 (_ BitVec 32) (_ BitVec 32) V!7827 V!7827 (_ BitVec 32) Int) ListLongMap!3517)

(assert (=> b!232839 (= lt!117831 (getCurrentListMap!1297 lt!117815 lt!117824 (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4333 thiss!1504)))))

(declare-fun v!346 () V!7827)

(declare-fun lt!117825 () ListLongMap!3517)

(declare-fun +!624 (ListLongMap!3517 tuple2!4590) ListLongMap!3517)

(assert (=> b!232839 (= lt!117816 (+!624 lt!117825 (tuple2!4591 key!932 v!346)))))

(assert (=> b!232839 (= lt!117824 (array!11513 (store (arr!5475 (_values!4316 thiss!1504)) index!297 (ValueCellFull!2724 v!346)) (size!5808 (_values!4316 thiss!1504))))))

(declare-fun lt!117823 () Unit!7197)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!83 (array!11514 array!11512 (_ BitVec 32) (_ BitVec 32) V!7827 V!7827 (_ BitVec 32) (_ BitVec 64) V!7827 Int) Unit!7197)

(assert (=> b!232839 (= lt!117823 (lemmaAddValidKeyToArrayThenAddPairToListMap!83 (_keys!6387 thiss!1504) (_values!4316 thiss!1504) (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) index!297 key!932 v!346 (defaultEntry!4333 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11514 (_ BitVec 32)) Bool)

(assert (=> b!232839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117815 (mask!10251 thiss!1504))))

(declare-fun lt!117814 () Unit!7197)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11514 (_ BitVec 32) (_ BitVec 32)) Unit!7197)

(assert (=> b!232839 (= lt!117814 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6387 thiss!1504) index!297 (mask!10251 thiss!1504)))))

(assert (=> b!232839 (= (arrayCountValidKeys!0 lt!117815 #b00000000000000000000000000000000 (size!5809 (_keys!6387 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6387 thiss!1504) #b00000000000000000000000000000000 (size!5809 (_keys!6387 thiss!1504)))))))

(declare-fun lt!117812 () Unit!7197)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11514 (_ BitVec 32) (_ BitVec 64)) Unit!7197)

(assert (=> b!232839 (= lt!117812 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6387 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3530 0))(
  ( (Nil!3527) (Cons!3526 (h!4174 (_ BitVec 64)) (t!8497 List!3530)) )
))
(declare-fun arrayNoDuplicates!0 (array!11514 (_ BitVec 32) List!3530) Bool)

(assert (=> b!232839 (arrayNoDuplicates!0 lt!117815 #b00000000000000000000000000000000 Nil!3527)))

(assert (=> b!232839 (= lt!117815 (array!11515 (store (arr!5476 (_keys!6387 thiss!1504)) index!297 key!932) (size!5809 (_keys!6387 thiss!1504))))))

(declare-fun lt!117830 () Unit!7197)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11514 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3530) Unit!7197)

(assert (=> b!232839 (= lt!117830 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6387 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3527))))

(declare-fun lt!117817 () Unit!7197)

(declare-fun e!151241 () Unit!7197)

(assert (=> b!232839 (= lt!117817 e!151241)))

(declare-fun c!38716 () Bool)

(assert (=> b!232839 (= c!38716 (arrayContainsKey!0 (_keys!6387 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!10372 () Bool)

(declare-fun mapRes!10372 () Bool)

(assert (=> mapIsEmpty!10372 mapRes!10372))

(declare-fun b!232840 () Bool)

(declare-fun e!151245 () Bool)

(declare-fun e!151244 () Bool)

(assert (=> b!232840 (= e!151245 (and e!151244 mapRes!10372))))

(declare-fun condMapEmpty!10372 () Bool)

(declare-fun mapDefault!10372 () ValueCell!2724)

(assert (=> b!232840 (= condMapEmpty!10372 (= (arr!5475 (_values!4316 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2724)) mapDefault!10372)))))

(declare-fun b!232841 () Bool)

(declare-fun tp_is_empty!6135 () Bool)

(assert (=> b!232841 (= e!151244 tp_is_empty!6135)))

(declare-fun res!114322 () Bool)

(assert (=> start!22218 (=> (not res!114322) (not e!151233))))

(assert (=> start!22218 (= res!114322 (valid!1316 thiss!1504))))

(assert (=> start!22218 e!151233))

(declare-fun e!151236 () Bool)

(assert (=> start!22218 e!151236))

(assert (=> start!22218 true))

(assert (=> start!22218 tp_is_empty!6135))

(declare-fun b!232830 () Bool)

(declare-fun Unit!7199 () Unit!7197)

(assert (=> b!232830 (= e!151241 Unit!7199)))

(declare-fun b!232842 () Bool)

(assert (=> b!232842 (= e!151246 (not call!21651))))

(declare-fun b!232843 () Bool)

(declare-fun e!151237 () Bool)

(assert (=> b!232843 (= e!151237 tp_is_empty!6135)))

(declare-fun b!232844 () Bool)

(declare-fun Unit!7200 () Unit!7197)

(assert (=> b!232844 (= e!151241 Unit!7200)))

(declare-fun lt!117813 () Unit!7197)

(declare-fun lemmaArrayContainsKeyThenInListMap!148 (array!11514 array!11512 (_ BitVec 32) (_ BitVec 32) V!7827 V!7827 (_ BitVec 64) (_ BitVec 32) Int) Unit!7197)

(assert (=> b!232844 (= lt!117813 (lemmaArrayContainsKeyThenInListMap!148 (_keys!6387 thiss!1504) (_values!4316 thiss!1504) (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4333 thiss!1504)))))

(assert (=> b!232844 false))

(declare-fun b!232845 () Bool)

(declare-fun res!114316 () Bool)

(assert (=> b!232845 (= res!114316 (= (select (arr!5476 (_keys!6387 thiss!1504)) (index!6097 lt!117821)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!232845 (=> (not res!114316) (not e!151246))))

(declare-fun b!232846 () Bool)

(assert (=> b!232846 (= e!151242 e!151234)))

(declare-fun res!114317 () Bool)

(assert (=> b!232846 (=> (not res!114317) (not e!151234))))

(assert (=> b!232846 (= res!114317 (inRange!0 index!297 (mask!10251 thiss!1504)))))

(declare-fun lt!117818 () Unit!7197)

(assert (=> b!232846 (= lt!117818 e!151243)))

(declare-fun c!38717 () Bool)

(assert (=> b!232846 (= c!38717 (contains!1636 lt!117825 key!932))))

(assert (=> b!232846 (= lt!117825 (getCurrentListMap!1297 (_keys!6387 thiss!1504) (_values!4316 thiss!1504) (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4333 thiss!1504)))))

(declare-fun b!232847 () Bool)

(declare-fun Unit!7201 () Unit!7197)

(assert (=> b!232847 (= e!151243 Unit!7201)))

(declare-fun lt!117820 () Unit!7197)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!314 (array!11514 array!11512 (_ BitVec 32) (_ BitVec 32) V!7827 V!7827 (_ BitVec 64) Int) Unit!7197)

(assert (=> b!232847 (= lt!117820 (lemmaInListMapThenSeekEntryOrOpenFindsIt!314 (_keys!6387 thiss!1504) (_values!4316 thiss!1504) (mask!10251 thiss!1504) (extraKeys!4070 thiss!1504) (zeroValue!4174 thiss!1504) (minValue!4174 thiss!1504) key!932 (defaultEntry!4333 thiss!1504)))))

(assert (=> b!232847 false))

(declare-fun b!232848 () Bool)

(declare-fun res!114320 () Bool)

(assert (=> b!232848 (=> (not res!114320) (not e!151240))))

(assert (=> b!232848 (= res!114320 call!21652)))

(assert (=> b!232848 (= e!151232 e!151240)))

(declare-fun array_inv!3601 (array!11514) Bool)

(declare-fun array_inv!3602 (array!11512) Bool)

(assert (=> b!232849 (= e!151236 (and tp!21960 tp_is_empty!6135 (array_inv!3601 (_keys!6387 thiss!1504)) (array_inv!3602 (_values!4316 thiss!1504)) e!151245))))

(declare-fun b!232850 () Bool)

(declare-fun res!114318 () Bool)

(assert (=> b!232850 (=> (not res!114318) (not e!151240))))

(assert (=> b!232850 (= res!114318 (= (select (arr!5476 (_keys!6387 thiss!1504)) (index!6094 lt!117821)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!10372 () Bool)

(declare-fun tp!21961 () Bool)

(assert (=> mapNonEmpty!10372 (= mapRes!10372 (and tp!21961 e!151237))))

(declare-fun mapValue!10372 () ValueCell!2724)

(declare-fun mapKey!10372 () (_ BitVec 32))

(declare-fun mapRest!10372 () (Array (_ BitVec 32) ValueCell!2724))

(assert (=> mapNonEmpty!10372 (= (arr!5475 (_values!4316 thiss!1504)) (store mapRest!10372 mapKey!10372 mapValue!10372))))

(assert (= (and start!22218 res!114322) b!232835))

(assert (= (and b!232835 res!114314) b!232831))

(assert (= (and b!232831 res!114315) b!232846))

(assert (= (and b!232846 c!38717) b!232847))

(assert (= (and b!232846 (not c!38717)) b!232838))

(assert (= (and b!232838 c!38715) b!232848))

(assert (= (and b!232838 (not c!38715)) b!232837))

(assert (= (and b!232848 res!114320) b!232850))

(assert (= (and b!232850 res!114318) b!232832))

(assert (= (and b!232837 c!38714) b!232833))

(assert (= (and b!232837 (not c!38714)) b!232834))

(assert (= (and b!232833 res!114319) b!232845))

(assert (= (and b!232845 res!114316) b!232842))

(assert (= (or b!232848 b!232833) bm!21648))

(assert (= (or b!232832 b!232842) bm!21649))

(assert (= (and b!232846 res!114317) b!232839))

(assert (= (and b!232839 c!38716) b!232844))

(assert (= (and b!232839 (not c!38716)) b!232830))

(assert (= (and b!232839 (not res!114321)) b!232836))

(assert (= (and b!232840 condMapEmpty!10372) mapIsEmpty!10372))

(assert (= (and b!232840 (not condMapEmpty!10372)) mapNonEmpty!10372))

(assert (= (and mapNonEmpty!10372 ((_ is ValueCellFull!2724) mapValue!10372)) b!232843))

(assert (= (and b!232840 ((_ is ValueCellFull!2724) mapDefault!10372)) b!232841))

(assert (= b!232849 b!232840))

(assert (= start!22218 b!232849))

(declare-fun m!254335 () Bool)

(assert (=> b!232844 m!254335))

(declare-fun m!254337 () Bool)

(assert (=> b!232838 m!254337))

(declare-fun m!254339 () Bool)

(assert (=> mapNonEmpty!10372 m!254339))

(declare-fun m!254341 () Bool)

(assert (=> b!232849 m!254341))

(declare-fun m!254343 () Bool)

(assert (=> b!232849 m!254343))

(declare-fun m!254345 () Bool)

(assert (=> b!232847 m!254345))

(declare-fun m!254347 () Bool)

(assert (=> b!232850 m!254347))

(declare-fun m!254349 () Bool)

(assert (=> b!232831 m!254349))

(declare-fun m!254351 () Bool)

(assert (=> b!232839 m!254351))

(declare-fun m!254353 () Bool)

(assert (=> b!232839 m!254353))

(declare-fun m!254355 () Bool)

(assert (=> b!232839 m!254355))

(declare-fun m!254357 () Bool)

(assert (=> b!232839 m!254357))

(declare-fun m!254359 () Bool)

(assert (=> b!232839 m!254359))

(declare-fun m!254361 () Bool)

(assert (=> b!232839 m!254361))

(declare-fun m!254363 () Bool)

(assert (=> b!232839 m!254363))

(declare-fun m!254365 () Bool)

(assert (=> b!232839 m!254365))

(declare-fun m!254367 () Bool)

(assert (=> b!232839 m!254367))

(declare-fun m!254369 () Bool)

(assert (=> b!232839 m!254369))

(declare-fun m!254371 () Bool)

(assert (=> b!232839 m!254371))

(declare-fun m!254373 () Bool)

(assert (=> b!232839 m!254373))

(declare-fun m!254375 () Bool)

(assert (=> b!232839 m!254375))

(declare-fun m!254377 () Bool)

(assert (=> b!232839 m!254377))

(declare-fun m!254379 () Bool)

(assert (=> b!232839 m!254379))

(declare-fun m!254381 () Bool)

(assert (=> b!232839 m!254381))

(declare-fun m!254383 () Bool)

(assert (=> b!232839 m!254383))

(declare-fun m!254385 () Bool)

(assert (=> b!232839 m!254385))

(declare-fun m!254387 () Bool)

(assert (=> b!232839 m!254387))

(declare-fun m!254389 () Bool)

(assert (=> b!232839 m!254389))

(assert (=> bm!21649 m!254373))

(declare-fun m!254391 () Bool)

(assert (=> b!232836 m!254391))

(assert (=> b!232836 m!254391))

(declare-fun m!254393 () Bool)

(assert (=> b!232836 m!254393))

(declare-fun m!254395 () Bool)

(assert (=> b!232845 m!254395))

(declare-fun m!254397 () Bool)

(assert (=> b!232846 m!254397))

(declare-fun m!254399 () Bool)

(assert (=> b!232846 m!254399))

(declare-fun m!254401 () Bool)

(assert (=> b!232846 m!254401))

(declare-fun m!254403 () Bool)

(assert (=> start!22218 m!254403))

(declare-fun m!254405 () Bool)

(assert (=> bm!21648 m!254405))

(check-sat (not b!232836) (not b!232839) (not b!232849) (not b!232838) (not bm!21648) (not start!22218) (not b!232844) b_and!13189 (not bm!21649) (not b!232847) (not mapNonEmpty!10372) (not b!232846) (not b!232831) tp_is_empty!6135 (not b_next!6273))
(check-sat b_and!13189 (not b_next!6273))
