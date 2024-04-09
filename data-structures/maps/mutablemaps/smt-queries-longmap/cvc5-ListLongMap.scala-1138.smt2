; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23536 () Bool)

(assert start!23536)

(declare-fun b!247002 () Bool)

(declare-fun b_free!6577 () Bool)

(declare-fun b_next!6577 () Bool)

(assert (=> b!247002 (= b_free!6577 (not b_next!6577))))

(declare-fun tp!22976 () Bool)

(declare-fun b_and!13595 () Bool)

(assert (=> b!247002 (= tp!22976 b_and!13595)))

(declare-fun b!246984 () Bool)

(declare-fun e!160245 () Bool)

(declare-datatypes ((SeekEntryResult!1107 0))(
  ( (MissingZero!1107 (index!6598 (_ BitVec 32))) (Found!1107 (index!6599 (_ BitVec 32))) (Intermediate!1107 (undefined!1919 Bool) (index!6600 (_ BitVec 32)) (x!24517 (_ BitVec 32))) (Undefined!1107) (MissingVacant!1107 (index!6601 (_ BitVec 32))) )
))
(declare-fun lt!123756 () SeekEntryResult!1107)

(assert (=> b!246984 (= e!160245 (is-Undefined!1107 lt!123756))))

(declare-fun b!246985 () Bool)

(declare-fun e!160238 () Bool)

(declare-fun e!160233 () Bool)

(assert (=> b!246985 (= e!160238 (not e!160233))))

(declare-fun res!121094 () Bool)

(assert (=> b!246985 (=> res!121094 e!160233)))

(declare-datatypes ((V!8233 0))(
  ( (V!8234 (val!3264 Int)) )
))
(declare-datatypes ((ValueCell!2876 0))(
  ( (ValueCellFull!2876 (v!5317 V!8233)) (EmptyCell!2876) )
))
(declare-datatypes ((array!12182 0))(
  ( (array!12183 (arr!5779 (Array (_ BitVec 32) ValueCell!2876)) (size!6122 (_ BitVec 32))) )
))
(declare-datatypes ((array!12184 0))(
  ( (array!12185 (arr!5780 (Array (_ BitVec 32) (_ BitVec 64))) (size!6123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3652 0))(
  ( (LongMapFixedSize!3653 (defaultEntry!4571 Int) (mask!10704 (_ BitVec 32)) (extraKeys!4308 (_ BitVec 32)) (zeroValue!4412 V!8233) (minValue!4412 V!8233) (_size!1875 (_ BitVec 32)) (_keys!6692 array!12184) (_values!4554 array!12182) (_vacant!1875 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3652)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!246985 (= res!121094 (not (validMask!0 (mask!10704 thiss!1504))))))

(declare-fun lt!123755 () array!12184)

(declare-fun arrayCountValidKeys!0 (array!12184 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!246985 (= (arrayCountValidKeys!0 lt!123755 #b00000000000000000000000000000000 (size!6123 (_keys!6692 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6692 thiss!1504) #b00000000000000000000000000000000 (size!6123 (_keys!6692 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7623 0))(
  ( (Unit!7624) )
))
(declare-fun lt!123749 () Unit!7623)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12184 (_ BitVec 32) (_ BitVec 64)) Unit!7623)

(assert (=> b!246985 (= lt!123749 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6692 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3703 0))(
  ( (Nil!3700) (Cons!3699 (h!4357 (_ BitVec 64)) (t!8732 List!3703)) )
))
(declare-fun arrayNoDuplicates!0 (array!12184 (_ BitVec 32) List!3703) Bool)

(assert (=> b!246985 (arrayNoDuplicates!0 lt!123755 #b00000000000000000000000000000000 Nil!3700)))

(assert (=> b!246985 (= lt!123755 (array!12185 (store (arr!5780 (_keys!6692 thiss!1504)) index!297 key!932) (size!6123 (_keys!6692 thiss!1504))))))

(declare-fun lt!123754 () Unit!7623)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12184 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3703) Unit!7623)

(assert (=> b!246985 (= lt!123754 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6692 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3700))))

(declare-fun lt!123748 () Unit!7623)

(declare-fun e!160231 () Unit!7623)

(assert (=> b!246985 (= lt!123748 e!160231)))

(declare-fun c!41321 () Bool)

(declare-fun arrayContainsKey!0 (array!12184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!246985 (= c!41321 (arrayContainsKey!0 (_keys!6692 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!246986 () Bool)

(declare-fun Unit!7625 () Unit!7623)

(assert (=> b!246986 (= e!160231 Unit!7625)))

(declare-fun b!246987 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!246987 (= e!160233 (validKeyInArray!0 key!932))))

(declare-fun b!246988 () Bool)

(declare-fun e!160234 () Bool)

(declare-fun e!160240 () Bool)

(assert (=> b!246988 (= e!160234 e!160240)))

(declare-fun res!121095 () Bool)

(assert (=> b!246988 (=> (not res!121095) (not e!160240))))

(assert (=> b!246988 (= res!121095 (or (= lt!123756 (MissingZero!1107 index!297)) (= lt!123756 (MissingVacant!1107 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12184 (_ BitVec 32)) SeekEntryResult!1107)

(assert (=> b!246988 (= lt!123756 (seekEntryOrOpen!0 key!932 (_keys!6692 thiss!1504) (mask!10704 thiss!1504)))))

(declare-fun b!246989 () Bool)

(declare-fun e!160239 () Bool)

(declare-fun call!23117 () Bool)

(assert (=> b!246989 (= e!160239 (not call!23117))))

(declare-fun b!246990 () Bool)

(declare-fun Unit!7626 () Unit!7623)

(assert (=> b!246990 (= e!160231 Unit!7626)))

(declare-fun lt!123753 () Unit!7623)

(declare-fun lemmaArrayContainsKeyThenInListMap!182 (array!12184 array!12182 (_ BitVec 32) (_ BitVec 32) V!8233 V!8233 (_ BitVec 64) (_ BitVec 32) Int) Unit!7623)

(assert (=> b!246990 (= lt!123753 (lemmaArrayContainsKeyThenInListMap!182 (_keys!6692 thiss!1504) (_values!4554 thiss!1504) (mask!10704 thiss!1504) (extraKeys!4308 thiss!1504) (zeroValue!4412 thiss!1504) (minValue!4412 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4571 thiss!1504)))))

(assert (=> b!246990 false))

(declare-fun b!246991 () Bool)

(declare-fun e!160236 () Bool)

(declare-fun tp_is_empty!6439 () Bool)

(assert (=> b!246991 (= e!160236 tp_is_empty!6439)))

(declare-fun b!246992 () Bool)

(declare-fun res!121091 () Bool)

(assert (=> b!246992 (=> (not res!121091) (not e!160234))))

(assert (=> b!246992 (= res!121091 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun c!41323 () Bool)

(declare-fun bm!23113 () Bool)

(declare-fun call!23116 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23113 (= call!23116 (inRange!0 (ite c!41323 (index!6598 lt!123756) (index!6601 lt!123756)) (mask!10704 thiss!1504)))))

(declare-fun mapIsEmpty!10931 () Bool)

(declare-fun mapRes!10931 () Bool)

(assert (=> mapIsEmpty!10931 mapRes!10931))

(declare-fun bm!23114 () Bool)

(assert (=> bm!23114 (= call!23117 (arrayContainsKey!0 (_keys!6692 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10931 () Bool)

(declare-fun tp!22975 () Bool)

(assert (=> mapNonEmpty!10931 (= mapRes!10931 (and tp!22975 e!160236))))

(declare-fun mapKey!10931 () (_ BitVec 32))

(declare-fun mapRest!10931 () (Array (_ BitVec 32) ValueCell!2876))

(declare-fun mapValue!10931 () ValueCell!2876)

(assert (=> mapNonEmpty!10931 (= (arr!5779 (_values!4554 thiss!1504)) (store mapRest!10931 mapKey!10931 mapValue!10931))))

(declare-fun b!246993 () Bool)

(assert (=> b!246993 (= e!160240 e!160238)))

(declare-fun res!121096 () Bool)

(assert (=> b!246993 (=> (not res!121096) (not e!160238))))

(assert (=> b!246993 (= res!121096 (inRange!0 index!297 (mask!10704 thiss!1504)))))

(declare-fun lt!123752 () Unit!7623)

(declare-fun e!160242 () Unit!7623)

(assert (=> b!246993 (= lt!123752 e!160242)))

(declare-fun c!41322 () Bool)

(declare-datatypes ((tuple2!4798 0))(
  ( (tuple2!4799 (_1!2409 (_ BitVec 64)) (_2!2409 V!8233)) )
))
(declare-datatypes ((List!3704 0))(
  ( (Nil!3701) (Cons!3700 (h!4358 tuple2!4798) (t!8733 List!3704)) )
))
(declare-datatypes ((ListLongMap!3725 0))(
  ( (ListLongMap!3726 (toList!1878 List!3704)) )
))
(declare-fun contains!1785 (ListLongMap!3725 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1401 (array!12184 array!12182 (_ BitVec 32) (_ BitVec 32) V!8233 V!8233 (_ BitVec 32) Int) ListLongMap!3725)

(assert (=> b!246993 (= c!41322 (contains!1785 (getCurrentListMap!1401 (_keys!6692 thiss!1504) (_values!4554 thiss!1504) (mask!10704 thiss!1504) (extraKeys!4308 thiss!1504) (zeroValue!4412 thiss!1504) (minValue!4412 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4571 thiss!1504)) key!932))))

(declare-fun b!246994 () Bool)

(assert (=> b!246994 (= e!160245 e!160239)))

(declare-fun res!121099 () Bool)

(assert (=> b!246994 (= res!121099 call!23116)))

(assert (=> b!246994 (=> (not res!121099) (not e!160239))))

(declare-fun b!246995 () Bool)

(declare-fun Unit!7627 () Unit!7623)

(assert (=> b!246995 (= e!160242 Unit!7627)))

(declare-fun lt!123750 () Unit!7623)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!379 (array!12184 array!12182 (_ BitVec 32) (_ BitVec 32) V!8233 V!8233 (_ BitVec 64) Int) Unit!7623)

(assert (=> b!246995 (= lt!123750 (lemmaInListMapThenSeekEntryOrOpenFindsIt!379 (_keys!6692 thiss!1504) (_values!4554 thiss!1504) (mask!10704 thiss!1504) (extraKeys!4308 thiss!1504) (zeroValue!4412 thiss!1504) (minValue!4412 thiss!1504) key!932 (defaultEntry!4571 thiss!1504)))))

(assert (=> b!246995 false))

(declare-fun b!246996 () Bool)

(declare-fun e!160232 () Bool)

(assert (=> b!246996 (= e!160232 (not call!23117))))

(declare-fun b!246997 () Bool)

(declare-fun res!121097 () Bool)

(assert (=> b!246997 (=> (not res!121097) (not e!160232))))

(assert (=> b!246997 (= res!121097 call!23116)))

(declare-fun e!160244 () Bool)

(assert (=> b!246997 (= e!160244 e!160232)))

(declare-fun b!246998 () Bool)

(declare-fun lt!123751 () Unit!7623)

(assert (=> b!246998 (= e!160242 lt!123751)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!381 (array!12184 array!12182 (_ BitVec 32) (_ BitVec 32) V!8233 V!8233 (_ BitVec 64) Int) Unit!7623)

(assert (=> b!246998 (= lt!123751 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!381 (_keys!6692 thiss!1504) (_values!4554 thiss!1504) (mask!10704 thiss!1504) (extraKeys!4308 thiss!1504) (zeroValue!4412 thiss!1504) (minValue!4412 thiss!1504) key!932 (defaultEntry!4571 thiss!1504)))))

(assert (=> b!246998 (= c!41323 (is-MissingZero!1107 lt!123756))))

(assert (=> b!246998 e!160244))

(declare-fun res!121098 () Bool)

(assert (=> start!23536 (=> (not res!121098) (not e!160234))))

(declare-fun valid!1420 (LongMapFixedSize!3652) Bool)

(assert (=> start!23536 (= res!121098 (valid!1420 thiss!1504))))

(assert (=> start!23536 e!160234))

(declare-fun e!160237 () Bool)

(assert (=> start!23536 e!160237))

(assert (=> start!23536 true))

(declare-fun b!246999 () Bool)

(declare-fun res!121090 () Bool)

(assert (=> b!246999 (=> res!121090 e!160233)))

(assert (=> b!246999 (= res!121090 (or (not (= (size!6123 (_keys!6692 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10704 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6123 (_keys!6692 thiss!1504)))))))

(declare-fun b!247000 () Bool)

(declare-fun res!121093 () Bool)

(assert (=> b!247000 (= res!121093 (= (select (arr!5780 (_keys!6692 thiss!1504)) (index!6601 lt!123756)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!247000 (=> (not res!121093) (not e!160239))))

(declare-fun b!247001 () Bool)

(declare-fun res!121092 () Bool)

(assert (=> b!247001 (=> (not res!121092) (not e!160232))))

(assert (=> b!247001 (= res!121092 (= (select (arr!5780 (_keys!6692 thiss!1504)) (index!6598 lt!123756)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160241 () Bool)

(declare-fun array_inv!3807 (array!12184) Bool)

(declare-fun array_inv!3808 (array!12182) Bool)

(assert (=> b!247002 (= e!160237 (and tp!22976 tp_is_empty!6439 (array_inv!3807 (_keys!6692 thiss!1504)) (array_inv!3808 (_values!4554 thiss!1504)) e!160241))))

(declare-fun b!247003 () Bool)

(declare-fun c!41324 () Bool)

(assert (=> b!247003 (= c!41324 (is-MissingVacant!1107 lt!123756))))

(assert (=> b!247003 (= e!160244 e!160245)))

(declare-fun b!247004 () Bool)

(declare-fun e!160243 () Bool)

(assert (=> b!247004 (= e!160243 tp_is_empty!6439)))

(declare-fun b!247005 () Bool)

(assert (=> b!247005 (= e!160241 (and e!160243 mapRes!10931))))

(declare-fun condMapEmpty!10931 () Bool)

(declare-fun mapDefault!10931 () ValueCell!2876)

