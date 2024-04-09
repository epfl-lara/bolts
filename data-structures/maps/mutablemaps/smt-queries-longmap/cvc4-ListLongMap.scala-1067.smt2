; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22100 () Bool)

(assert start!22100)

(declare-fun b!229231 () Bool)

(declare-fun b_free!6155 () Bool)

(declare-fun b_next!6155 () Bool)

(assert (=> b!229231 (= b_free!6155 (not b_next!6155))))

(declare-fun tp!21606 () Bool)

(declare-fun b_and!13071 () Bool)

(assert (=> b!229231 (= tp!21606 b_and!13071)))

(declare-fun b!229219 () Bool)

(declare-datatypes ((Unit!6987 0))(
  ( (Unit!6988) )
))
(declare-fun e!148734 () Unit!6987)

(declare-fun Unit!6989 () Unit!6987)

(assert (=> b!229219 (= e!148734 Unit!6989)))

(declare-fun b!229220 () Bool)

(declare-fun e!148731 () Bool)

(declare-datatypes ((SeekEntryResult!929 0))(
  ( (MissingZero!929 (index!5886 (_ BitVec 32))) (Found!929 (index!5887 (_ BitVec 32))) (Intermediate!929 (undefined!1741 Bool) (index!5888 (_ BitVec 32)) (x!23381 (_ BitVec 32))) (Undefined!929) (MissingVacant!929 (index!5889 (_ BitVec 32))) )
))
(declare-fun lt!115351 () SeekEntryResult!929)

(assert (=> b!229220 (= e!148731 (is-Undefined!929 lt!115351))))

(declare-fun bm!21294 () Bool)

(declare-fun call!21298 () Bool)

(declare-datatypes ((V!7669 0))(
  ( (V!7670 (val!3053 Int)) )
))
(declare-datatypes ((ValueCell!2665 0))(
  ( (ValueCellFull!2665 (v!5069 V!7669)) (EmptyCell!2665) )
))
(declare-datatypes ((array!11276 0))(
  ( (array!11277 (arr!5357 (Array (_ BitVec 32) ValueCell!2665)) (size!5690 (_ BitVec 32))) )
))
(declare-datatypes ((array!11278 0))(
  ( (array!11279 (arr!5358 (Array (_ BitVec 32) (_ BitVec 64))) (size!5691 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3230 0))(
  ( (LongMapFixedSize!3231 (defaultEntry!4274 Int) (mask!10152 (_ BitVec 32)) (extraKeys!4011 (_ BitVec 32)) (zeroValue!4115 V!7669) (minValue!4115 V!7669) (_size!1664 (_ BitVec 32)) (_keys!6328 array!11278) (_values!4257 array!11276) (_vacant!1664 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3230)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21294 (= call!21298 (arrayContainsKey!0 (_keys!6328 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun c!38007 () Bool)

(declare-fun call!21297 () Bool)

(declare-fun bm!21295 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21295 (= call!21297 (inRange!0 (ite c!38007 (index!5886 lt!115351) (index!5889 lt!115351)) (mask!10152 thiss!1504)))))

(declare-fun b!229221 () Bool)

(declare-fun e!148727 () Bool)

(declare-fun e!148730 () Bool)

(assert (=> b!229221 (= e!148727 (not e!148730))))

(declare-fun res!112829 () Bool)

(assert (=> b!229221 (=> res!112829 e!148730)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!229221 (= res!112829 (not (validMask!0 (mask!10152 thiss!1504))))))

(declare-fun lt!115343 () array!11278)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11278 (_ BitVec 32)) Bool)

(assert (=> b!229221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115343 (mask!10152 thiss!1504))))

(declare-fun lt!115350 () Unit!6987)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11278 (_ BitVec 32) (_ BitVec 32)) Unit!6987)

(assert (=> b!229221 (= lt!115350 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6328 thiss!1504) index!297 (mask!10152 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11278 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229221 (= (arrayCountValidKeys!0 lt!115343 #b00000000000000000000000000000000 (size!5691 (_keys!6328 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6328 thiss!1504) #b00000000000000000000000000000000 (size!5691 (_keys!6328 thiss!1504)))))))

(declare-fun lt!115353 () Unit!6987)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11278 (_ BitVec 32) (_ BitVec 64)) Unit!6987)

(assert (=> b!229221 (= lt!115353 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6328 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3449 0))(
  ( (Nil!3446) (Cons!3445 (h!4093 (_ BitVec 64)) (t!8416 List!3449)) )
))
(declare-fun arrayNoDuplicates!0 (array!11278 (_ BitVec 32) List!3449) Bool)

(assert (=> b!229221 (arrayNoDuplicates!0 lt!115343 #b00000000000000000000000000000000 Nil!3446)))

(assert (=> b!229221 (= lt!115343 (array!11279 (store (arr!5358 (_keys!6328 thiss!1504)) index!297 key!932) (size!5691 (_keys!6328 thiss!1504))))))

(declare-fun lt!115352 () Unit!6987)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11278 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3449) Unit!6987)

(assert (=> b!229221 (= lt!115352 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6328 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3446))))

(declare-fun lt!115345 () Unit!6987)

(assert (=> b!229221 (= lt!115345 e!148734)))

(declare-fun c!38008 () Bool)

(assert (=> b!229221 (= c!38008 (arrayContainsKey!0 (_keys!6328 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229222 () Bool)

(declare-fun e!148728 () Bool)

(declare-fun e!148733 () Bool)

(assert (=> b!229222 (= e!148728 e!148733)))

(declare-fun res!112835 () Bool)

(assert (=> b!229222 (=> (not res!112835) (not e!148733))))

(assert (=> b!229222 (= res!112835 (or (= lt!115351 (MissingZero!929 index!297)) (= lt!115351 (MissingVacant!929 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11278 (_ BitVec 32)) SeekEntryResult!929)

(assert (=> b!229222 (= lt!115351 (seekEntryOrOpen!0 key!932 (_keys!6328 thiss!1504) (mask!10152 thiss!1504)))))

(declare-fun b!229223 () Bool)

(declare-fun e!148721 () Unit!6987)

(declare-fun lt!115349 () Unit!6987)

(assert (=> b!229223 (= e!148721 lt!115349)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!295 (array!11278 array!11276 (_ BitVec 32) (_ BitVec 32) V!7669 V!7669 (_ BitVec 64) Int) Unit!6987)

(assert (=> b!229223 (= lt!115349 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!295 (_keys!6328 thiss!1504) (_values!4257 thiss!1504) (mask!10152 thiss!1504) (extraKeys!4011 thiss!1504) (zeroValue!4115 thiss!1504) (minValue!4115 thiss!1504) key!932 (defaultEntry!4274 thiss!1504)))))

(assert (=> b!229223 (= c!38007 (is-MissingZero!929 lt!115351))))

(declare-fun e!148726 () Bool)

(assert (=> b!229223 e!148726))

(declare-fun b!229224 () Bool)

(declare-fun e!148725 () Bool)

(assert (=> b!229224 (= e!148725 (not call!21298))))

(declare-fun b!229225 () Bool)

(declare-fun Unit!6990 () Unit!6987)

(assert (=> b!229225 (= e!148734 Unit!6990)))

(declare-fun lt!115347 () Unit!6987)

(declare-fun lemmaArrayContainsKeyThenInListMap!114 (array!11278 array!11276 (_ BitVec 32) (_ BitVec 32) V!7669 V!7669 (_ BitVec 64) (_ BitVec 32) Int) Unit!6987)

(assert (=> b!229225 (= lt!115347 (lemmaArrayContainsKeyThenInListMap!114 (_keys!6328 thiss!1504) (_values!4257 thiss!1504) (mask!10152 thiss!1504) (extraKeys!4011 thiss!1504) (zeroValue!4115 thiss!1504) (minValue!4115 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4274 thiss!1504)))))

(assert (=> b!229225 false))

(declare-fun b!229226 () Bool)

(declare-fun res!112830 () Bool)

(assert (=> b!229226 (= res!112830 (= (select (arr!5358 (_keys!6328 thiss!1504)) (index!5889 lt!115351)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148729 () Bool)

(assert (=> b!229226 (=> (not res!112830) (not e!148729))))

(declare-fun mapIsEmpty!10195 () Bool)

(declare-fun mapRes!10195 () Bool)

(assert (=> mapIsEmpty!10195 mapRes!10195))

(declare-fun b!229227 () Bool)

(declare-fun res!112831 () Bool)

(assert (=> b!229227 (=> (not res!112831) (not e!148725))))

(assert (=> b!229227 (= res!112831 call!21297)))

(assert (=> b!229227 (= e!148726 e!148725)))

(declare-fun b!229228 () Bool)

(assert (=> b!229228 (= e!148731 e!148729)))

(declare-fun res!112836 () Bool)

(assert (=> b!229228 (= res!112836 call!21297)))

(assert (=> b!229228 (=> (not res!112836) (not e!148729))))

(declare-fun mapNonEmpty!10195 () Bool)

(declare-fun tp!21607 () Bool)

(declare-fun e!148735 () Bool)

(assert (=> mapNonEmpty!10195 (= mapRes!10195 (and tp!21607 e!148735))))

(declare-fun mapValue!10195 () ValueCell!2665)

(declare-fun mapRest!10195 () (Array (_ BitVec 32) ValueCell!2665))

(declare-fun mapKey!10195 () (_ BitVec 32))

(assert (=> mapNonEmpty!10195 (= (arr!5357 (_values!4257 thiss!1504)) (store mapRest!10195 mapKey!10195 mapValue!10195))))

(declare-fun res!112828 () Bool)

(assert (=> start!22100 (=> (not res!112828) (not e!148728))))

(declare-fun valid!1281 (LongMapFixedSize!3230) Bool)

(assert (=> start!22100 (= res!112828 (valid!1281 thiss!1504))))

(assert (=> start!22100 e!148728))

(declare-fun e!148724 () Bool)

(assert (=> start!22100 e!148724))

(assert (=> start!22100 true))

(declare-fun b!229229 () Bool)

(assert (=> b!229229 (= e!148733 e!148727)))

(declare-fun res!112832 () Bool)

(assert (=> b!229229 (=> (not res!112832) (not e!148727))))

(assert (=> b!229229 (= res!112832 (inRange!0 index!297 (mask!10152 thiss!1504)))))

(declare-fun lt!115344 () Unit!6987)

(assert (=> b!229229 (= lt!115344 e!148721)))

(declare-fun c!38009 () Bool)

(declare-datatypes ((tuple2!4502 0))(
  ( (tuple2!4503 (_1!2261 (_ BitVec 64)) (_2!2261 V!7669)) )
))
(declare-datatypes ((List!3450 0))(
  ( (Nil!3447) (Cons!3446 (h!4094 tuple2!4502) (t!8417 List!3450)) )
))
(declare-datatypes ((ListLongMap!3429 0))(
  ( (ListLongMap!3430 (toList!1730 List!3450)) )
))
(declare-fun contains!1598 (ListLongMap!3429 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1253 (array!11278 array!11276 (_ BitVec 32) (_ BitVec 32) V!7669 V!7669 (_ BitVec 32) Int) ListLongMap!3429)

(assert (=> b!229229 (= c!38009 (contains!1598 (getCurrentListMap!1253 (_keys!6328 thiss!1504) (_values!4257 thiss!1504) (mask!10152 thiss!1504) (extraKeys!4011 thiss!1504) (zeroValue!4115 thiss!1504) (minValue!4115 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4274 thiss!1504)) key!932))))

(declare-fun b!229230 () Bool)

(declare-fun e!148732 () Bool)

(declare-fun e!148722 () Bool)

(assert (=> b!229230 (= e!148732 (and e!148722 mapRes!10195))))

(declare-fun condMapEmpty!10195 () Bool)

(declare-fun mapDefault!10195 () ValueCell!2665)

