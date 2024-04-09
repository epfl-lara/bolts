; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24574 () Bool)

(assert start!24574)

(declare-fun b!257169 () Bool)

(declare-fun b_free!6731 () Bool)

(declare-fun b_next!6731 () Bool)

(assert (=> b!257169 (= b_free!6731 (not b_next!6731))))

(declare-fun tp!23499 () Bool)

(declare-fun b_and!13815 () Bool)

(assert (=> b!257169 (= tp!23499 b_and!13815)))

(declare-fun call!24401 () Bool)

(declare-fun c!43492 () Bool)

(declare-datatypes ((V!8437 0))(
  ( (V!8438 (val!3341 Int)) )
))
(declare-datatypes ((ValueCell!2953 0))(
  ( (ValueCellFull!2953 (v!5429 V!8437)) (EmptyCell!2953) )
))
(declare-datatypes ((array!12528 0))(
  ( (array!12529 (arr!5933 (Array (_ BitVec 32) ValueCell!2953)) (size!6280 (_ BitVec 32))) )
))
(declare-datatypes ((array!12530 0))(
  ( (array!12531 (arr!5934 (Array (_ BitVec 32) (_ BitVec 64))) (size!6281 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3806 0))(
  ( (LongMapFixedSize!3807 (defaultEntry!4746 Int) (mask!11030 (_ BitVec 32)) (extraKeys!4483 (_ BitVec 32)) (zeroValue!4587 V!8437) (minValue!4587 V!8437) (_size!1952 (_ BitVec 32)) (_keys!6912 array!12530) (_values!4729 array!12528) (_vacant!1952 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3806)

(declare-fun bm!24397 () Bool)

(declare-datatypes ((SeekEntryResult!1179 0))(
  ( (MissingZero!1179 (index!6886 (_ BitVec 32))) (Found!1179 (index!6887 (_ BitVec 32))) (Intermediate!1179 (undefined!1991 Bool) (index!6888 (_ BitVec 32)) (x!25011 (_ BitVec 32))) (Undefined!1179) (MissingVacant!1179 (index!6889 (_ BitVec 32))) )
))
(declare-fun lt!129302 () SeekEntryResult!1179)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24397 (= call!24401 (inRange!0 (ite c!43492 (index!6886 lt!129302) (index!6889 lt!129302)) (mask!11030 thiss!1504)))))

(declare-fun b!257167 () Bool)

(declare-fun res!125805 () Bool)

(declare-fun e!166713 () Bool)

(assert (=> b!257167 (=> (not res!125805) (not e!166713))))

(assert (=> b!257167 (= res!125805 call!24401)))

(declare-fun e!166717 () Bool)

(assert (=> b!257167 (= e!166717 e!166713)))

(declare-fun b!257168 () Bool)

(declare-fun e!166722 () Bool)

(declare-fun e!166720 () Bool)

(assert (=> b!257168 (= e!166722 e!166720)))

(declare-fun res!125809 () Bool)

(assert (=> b!257168 (=> (not res!125809) (not e!166720))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!257168 (= res!125809 (inRange!0 index!297 (mask!11030 thiss!1504)))))

(declare-datatypes ((Unit!7987 0))(
  ( (Unit!7988) )
))
(declare-fun lt!129296 () Unit!7987)

(declare-fun e!166723 () Unit!7987)

(assert (=> b!257168 (= lt!129296 e!166723)))

(declare-fun c!43494 () Bool)

(declare-datatypes ((tuple2!4918 0))(
  ( (tuple2!4919 (_1!2469 (_ BitVec 64)) (_2!2469 V!8437)) )
))
(declare-datatypes ((List!3821 0))(
  ( (Nil!3818) (Cons!3817 (h!4479 tuple2!4918) (t!8888 List!3821)) )
))
(declare-datatypes ((ListLongMap!3845 0))(
  ( (ListLongMap!3846 (toList!1938 List!3821)) )
))
(declare-fun lt!129294 () ListLongMap!3845)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1871 (ListLongMap!3845 (_ BitVec 64)) Bool)

(assert (=> b!257168 (= c!43494 (contains!1871 lt!129294 key!932))))

(declare-fun getCurrentListMap!1461 (array!12530 array!12528 (_ BitVec 32) (_ BitVec 32) V!8437 V!8437 (_ BitVec 32) Int) ListLongMap!3845)

(assert (=> b!257168 (= lt!129294 (getCurrentListMap!1461 (_keys!6912 thiss!1504) (_values!4729 thiss!1504) (mask!11030 thiss!1504) (extraKeys!4483 thiss!1504) (zeroValue!4587 thiss!1504) (minValue!4587 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4746 thiss!1504)))))

(declare-fun e!166721 () Bool)

(declare-fun tp_is_empty!6593 () Bool)

(declare-fun e!166726 () Bool)

(declare-fun array_inv!3911 (array!12530) Bool)

(declare-fun array_inv!3912 (array!12528) Bool)

(assert (=> b!257169 (= e!166721 (and tp!23499 tp_is_empty!6593 (array_inv!3911 (_keys!6912 thiss!1504)) (array_inv!3912 (_values!4729 thiss!1504)) e!166726))))

(declare-fun b!257170 () Bool)

(declare-fun e!166719 () Bool)

(assert (=> b!257170 (= e!166719 e!166722)))

(declare-fun res!125810 () Bool)

(assert (=> b!257170 (=> (not res!125810) (not e!166722))))

(assert (=> b!257170 (= res!125810 (or (= lt!129302 (MissingZero!1179 index!297)) (= lt!129302 (MissingVacant!1179 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12530 (_ BitVec 32)) SeekEntryResult!1179)

(assert (=> b!257170 (= lt!129302 (seekEntryOrOpen!0 key!932 (_keys!6912 thiss!1504) (mask!11030 thiss!1504)))))

(declare-fun b!257171 () Bool)

(declare-fun res!125807 () Bool)

(assert (=> b!257171 (= res!125807 (= (select (arr!5934 (_keys!6912 thiss!1504)) (index!6889 lt!129302)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166714 () Bool)

(assert (=> b!257171 (=> (not res!125807) (not e!166714))))

(declare-fun mapIsEmpty!11223 () Bool)

(declare-fun mapRes!11223 () Bool)

(assert (=> mapIsEmpty!11223 mapRes!11223))

(declare-fun b!257172 () Bool)

(declare-fun e!166724 () Unit!7987)

(declare-fun Unit!7989 () Unit!7987)

(assert (=> b!257172 (= e!166724 Unit!7989)))

(declare-fun lt!129297 () Unit!7987)

(declare-fun lemmaArrayContainsKeyThenInListMap!239 (array!12530 array!12528 (_ BitVec 32) (_ BitVec 32) V!8437 V!8437 (_ BitVec 64) (_ BitVec 32) Int) Unit!7987)

(assert (=> b!257172 (= lt!129297 (lemmaArrayContainsKeyThenInListMap!239 (_keys!6912 thiss!1504) (_values!4729 thiss!1504) (mask!11030 thiss!1504) (extraKeys!4483 thiss!1504) (zeroValue!4587 thiss!1504) (minValue!4587 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4746 thiss!1504)))))

(assert (=> b!257172 false))

(declare-fun b!257173 () Bool)

(declare-fun res!125808 () Bool)

(assert (=> b!257173 (=> (not res!125808) (not e!166713))))

(assert (=> b!257173 (= res!125808 (= (select (arr!5934 (_keys!6912 thiss!1504)) (index!6886 lt!129302)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257174 () Bool)

(declare-fun Unit!7990 () Unit!7987)

(assert (=> b!257174 (= e!166724 Unit!7990)))

(declare-fun res!125806 () Bool)

(assert (=> start!24574 (=> (not res!125806) (not e!166719))))

(declare-fun valid!1480 (LongMapFixedSize!3806) Bool)

(assert (=> start!24574 (= res!125806 (valid!1480 thiss!1504))))

(assert (=> start!24574 e!166719))

(assert (=> start!24574 e!166721))

(assert (=> start!24574 true))

(assert (=> start!24574 tp_is_empty!6593))

(declare-fun b!257175 () Bool)

(declare-fun call!24400 () Bool)

(assert (=> b!257175 (= e!166714 (not call!24400))))

(declare-fun bm!24398 () Bool)

(declare-fun arrayContainsKey!0 (array!12530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24398 (= call!24400 (arrayContainsKey!0 (_keys!6912 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257176 () Bool)

(declare-fun Unit!7991 () Unit!7987)

(assert (=> b!257176 (= e!166723 Unit!7991)))

(declare-fun lt!129298 () Unit!7987)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!433 (array!12530 array!12528 (_ BitVec 32) (_ BitVec 32) V!8437 V!8437 (_ BitVec 64) Int) Unit!7987)

(assert (=> b!257176 (= lt!129298 (lemmaInListMapThenSeekEntryOrOpenFindsIt!433 (_keys!6912 thiss!1504) (_values!4729 thiss!1504) (mask!11030 thiss!1504) (extraKeys!4483 thiss!1504) (zeroValue!4587 thiss!1504) (minValue!4587 thiss!1504) key!932 (defaultEntry!4746 thiss!1504)))))

(assert (=> b!257176 false))

(declare-fun b!257177 () Bool)

(declare-fun e!166716 () Bool)

(assert (=> b!257177 (= e!166716 tp_is_empty!6593)))

(declare-fun b!257178 () Bool)

(declare-fun res!125812 () Bool)

(assert (=> b!257178 (=> (not res!125812) (not e!166719))))

(assert (=> b!257178 (= res!125812 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!257179 () Bool)

(declare-fun c!43495 () Bool)

(assert (=> b!257179 (= c!43495 (is-MissingVacant!1179 lt!129302))))

(declare-fun e!166718 () Bool)

(assert (=> b!257179 (= e!166717 e!166718)))

(declare-fun b!257180 () Bool)

(assert (=> b!257180 (= e!166718 e!166714)))

(declare-fun res!125811 () Bool)

(assert (=> b!257180 (= res!125811 call!24401)))

(assert (=> b!257180 (=> (not res!125811) (not e!166714))))

(declare-fun b!257181 () Bool)

(assert (=> b!257181 (= e!166720 (not (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6280 (_values!4729 thiss!1504))))))))

(declare-fun lt!129293 () array!12530)

(declare-fun arrayCountValidKeys!0 (array!12530 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257181 (= (arrayCountValidKeys!0 lt!129293 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!129304 () Unit!7987)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12530 (_ BitVec 32)) Unit!7987)

(assert (=> b!257181 (= lt!129304 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129293 index!297))))

(assert (=> b!257181 (arrayContainsKey!0 lt!129293 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129299 () Unit!7987)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12530 (_ BitVec 64) (_ BitVec 32)) Unit!7987)

(assert (=> b!257181 (= lt!129299 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129293 key!932 index!297))))

(declare-fun v!346 () V!8437)

(declare-fun +!682 (ListLongMap!3845 tuple2!4918) ListLongMap!3845)

(assert (=> b!257181 (= (+!682 lt!129294 (tuple2!4919 key!932 v!346)) (getCurrentListMap!1461 lt!129293 (array!12529 (store (arr!5933 (_values!4729 thiss!1504)) index!297 (ValueCellFull!2953 v!346)) (size!6280 (_values!4729 thiss!1504))) (mask!11030 thiss!1504) (extraKeys!4483 thiss!1504) (zeroValue!4587 thiss!1504) (minValue!4587 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4746 thiss!1504)))))

(declare-fun lt!129301 () Unit!7987)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!97 (array!12530 array!12528 (_ BitVec 32) (_ BitVec 32) V!8437 V!8437 (_ BitVec 32) (_ BitVec 64) V!8437 Int) Unit!7987)

(assert (=> b!257181 (= lt!129301 (lemmaAddValidKeyToArrayThenAddPairToListMap!97 (_keys!6912 thiss!1504) (_values!4729 thiss!1504) (mask!11030 thiss!1504) (extraKeys!4483 thiss!1504) (zeroValue!4587 thiss!1504) (minValue!4587 thiss!1504) index!297 key!932 v!346 (defaultEntry!4746 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12530 (_ BitVec 32)) Bool)

(assert (=> b!257181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129293 (mask!11030 thiss!1504))))

(declare-fun lt!129300 () Unit!7987)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12530 (_ BitVec 32) (_ BitVec 32)) Unit!7987)

(assert (=> b!257181 (= lt!129300 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6912 thiss!1504) index!297 (mask!11030 thiss!1504)))))

(assert (=> b!257181 (= (arrayCountValidKeys!0 lt!129293 #b00000000000000000000000000000000 (size!6281 (_keys!6912 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6912 thiss!1504) #b00000000000000000000000000000000 (size!6281 (_keys!6912 thiss!1504)))))))

(declare-fun lt!129306 () Unit!7987)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12530 (_ BitVec 32) (_ BitVec 64)) Unit!7987)

(assert (=> b!257181 (= lt!129306 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6912 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3822 0))(
  ( (Nil!3819) (Cons!3818 (h!4480 (_ BitVec 64)) (t!8889 List!3822)) )
))
(declare-fun arrayNoDuplicates!0 (array!12530 (_ BitVec 32) List!3822) Bool)

(assert (=> b!257181 (arrayNoDuplicates!0 lt!129293 #b00000000000000000000000000000000 Nil!3819)))

(assert (=> b!257181 (= lt!129293 (array!12531 (store (arr!5934 (_keys!6912 thiss!1504)) index!297 key!932) (size!6281 (_keys!6912 thiss!1504))))))

(declare-fun lt!129295 () Unit!7987)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12530 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3822) Unit!7987)

(assert (=> b!257181 (= lt!129295 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6912 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3819))))

(declare-fun lt!129305 () Unit!7987)

(assert (=> b!257181 (= lt!129305 e!166724)))

(declare-fun c!43493 () Bool)

(assert (=> b!257181 (= c!43493 (arrayContainsKey!0 (_keys!6912 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257182 () Bool)

(declare-fun lt!129303 () Unit!7987)

(assert (=> b!257182 (= e!166723 lt!129303)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!433 (array!12530 array!12528 (_ BitVec 32) (_ BitVec 32) V!8437 V!8437 (_ BitVec 64) Int) Unit!7987)

(assert (=> b!257182 (= lt!129303 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!433 (_keys!6912 thiss!1504) (_values!4729 thiss!1504) (mask!11030 thiss!1504) (extraKeys!4483 thiss!1504) (zeroValue!4587 thiss!1504) (minValue!4587 thiss!1504) key!932 (defaultEntry!4746 thiss!1504)))))

(assert (=> b!257182 (= c!43492 (is-MissingZero!1179 lt!129302))))

(assert (=> b!257182 e!166717))

(declare-fun b!257183 () Bool)

(assert (=> b!257183 (= e!166713 (not call!24400))))

(declare-fun b!257184 () Bool)

(declare-fun e!166725 () Bool)

(assert (=> b!257184 (= e!166726 (and e!166725 mapRes!11223))))

(declare-fun condMapEmpty!11223 () Bool)

(declare-fun mapDefault!11223 () ValueCell!2953)

