; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25146 () Bool)

(assert start!25146)

(declare-fun b!261926 () Bool)

(declare-fun b_free!6781 () Bool)

(declare-fun b_next!6781 () Bool)

(assert (=> b!261926 (= b_free!6781 (not b_next!6781))))

(declare-fun tp!23673 () Bool)

(declare-fun b_and!13933 () Bool)

(assert (=> b!261926 (= tp!23673 b_and!13933)))

(declare-fun b!261922 () Bool)

(declare-datatypes ((Unit!8152 0))(
  ( (Unit!8153) )
))
(declare-fun e!169745 () Unit!8152)

(declare-fun Unit!8154 () Unit!8152)

(assert (=> b!261922 (= e!169745 Unit!8154)))

(declare-fun b!261923 () Bool)

(declare-fun e!169748 () Bool)

(declare-fun e!169747 () Bool)

(assert (=> b!261923 (= e!169748 e!169747)))

(declare-fun res!127962 () Bool)

(assert (=> b!261923 (=> (not res!127962) (not e!169747))))

(declare-datatypes ((SeekEntryResult!1203 0))(
  ( (MissingZero!1203 (index!6982 (_ BitVec 32))) (Found!1203 (index!6983 (_ BitVec 32))) (Intermediate!1203 (undefined!2015 Bool) (index!6984 (_ BitVec 32)) (x!25209 (_ BitVec 32))) (Undefined!1203) (MissingVacant!1203 (index!6985 (_ BitVec 32))) )
))
(declare-fun lt!132363 () SeekEntryResult!1203)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!261923 (= res!127962 (or (= lt!132363 (MissingZero!1203 index!297)) (= lt!132363 (MissingVacant!1203 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8505 0))(
  ( (V!8506 (val!3366 Int)) )
))
(declare-datatypes ((ValueCell!2978 0))(
  ( (ValueCellFull!2978 (v!5487 V!8505)) (EmptyCell!2978) )
))
(declare-datatypes ((array!12642 0))(
  ( (array!12643 (arr!5983 (Array (_ BitVec 32) ValueCell!2978)) (size!6334 (_ BitVec 32))) )
))
(declare-datatypes ((array!12644 0))(
  ( (array!12645 (arr!5984 (Array (_ BitVec 32) (_ BitVec 64))) (size!6335 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3856 0))(
  ( (LongMapFixedSize!3857 (defaultEntry!4826 Int) (mask!11178 (_ BitVec 32)) (extraKeys!4563 (_ BitVec 32)) (zeroValue!4667 V!8505) (minValue!4667 V!8505) (_size!1977 (_ BitVec 32)) (_keys!7014 array!12644) (_values!4809 array!12642) (_vacant!1977 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3856)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12644 (_ BitVec 32)) SeekEntryResult!1203)

(assert (=> b!261923 (= lt!132363 (seekEntryOrOpen!0 key!932 (_keys!7014 thiss!1504) (mask!11178 thiss!1504)))))

(declare-fun b!261924 () Bool)

(declare-fun res!127958 () Bool)

(assert (=> b!261924 (= res!127958 (= (select (arr!5984 (_keys!7014 thiss!1504)) (index!6985 lt!132363)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169743 () Bool)

(assert (=> b!261924 (=> (not res!127958) (not e!169743))))

(declare-fun res!127963 () Bool)

(assert (=> start!25146 (=> (not res!127963) (not e!169748))))

(declare-fun valid!1495 (LongMapFixedSize!3856) Bool)

(assert (=> start!25146 (= res!127963 (valid!1495 thiss!1504))))

(assert (=> start!25146 e!169748))

(declare-fun e!169749 () Bool)

(assert (=> start!25146 e!169749))

(assert (=> start!25146 true))

(declare-fun tp_is_empty!6643 () Bool)

(assert (=> start!25146 tp_is_empty!6643))

(declare-fun bm!25010 () Bool)

(declare-fun c!44602 () Bool)

(declare-fun call!25014 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!25010 (= call!25014 (inRange!0 (ite c!44602 (index!6982 lt!132363) (index!6985 lt!132363)) (mask!11178 thiss!1504)))))

(declare-fun b!261925 () Bool)

(declare-fun res!127964 () Bool)

(declare-fun e!169755 () Bool)

(assert (=> b!261925 (=> (not res!127964) (not e!169755))))

(assert (=> b!261925 (= res!127964 call!25014)))

(declare-fun e!169744 () Bool)

(assert (=> b!261925 (= e!169744 e!169755)))

(declare-fun e!169757 () Bool)

(declare-fun array_inv!3945 (array!12644) Bool)

(declare-fun array_inv!3946 (array!12642) Bool)

(assert (=> b!261926 (= e!169749 (and tp!23673 tp_is_empty!6643 (array_inv!3945 (_keys!7014 thiss!1504)) (array_inv!3946 (_values!4809 thiss!1504)) e!169757))))

(declare-fun b!261927 () Bool)

(declare-fun e!169750 () Bool)

(assert (=> b!261927 (= e!169747 e!169750)))

(declare-fun res!127966 () Bool)

(assert (=> b!261927 (=> (not res!127966) (not e!169750))))

(assert (=> b!261927 (= res!127966 (inRange!0 index!297 (mask!11178 thiss!1504)))))

(declare-fun lt!132367 () Unit!8152)

(declare-fun e!169752 () Unit!8152)

(assert (=> b!261927 (= lt!132367 e!169752)))

(declare-fun c!44604 () Bool)

(declare-datatypes ((tuple2!4960 0))(
  ( (tuple2!4961 (_1!2490 (_ BitVec 64)) (_2!2490 V!8505)) )
))
(declare-datatypes ((List!3860 0))(
  ( (Nil!3857) (Cons!3856 (h!4522 tuple2!4960) (t!8941 List!3860)) )
))
(declare-datatypes ((ListLongMap!3887 0))(
  ( (ListLongMap!3888 (toList!1959 List!3860)) )
))
(declare-fun lt!132374 () ListLongMap!3887)

(declare-fun contains!1900 (ListLongMap!3887 (_ BitVec 64)) Bool)

(assert (=> b!261927 (= c!44604 (contains!1900 lt!132374 key!932))))

(declare-fun getCurrentListMap!1482 (array!12644 array!12642 (_ BitVec 32) (_ BitVec 32) V!8505 V!8505 (_ BitVec 32) Int) ListLongMap!3887)

(assert (=> b!261927 (= lt!132374 (getCurrentListMap!1482 (_keys!7014 thiss!1504) (_values!4809 thiss!1504) (mask!11178 thiss!1504) (extraKeys!4563 thiss!1504) (zeroValue!4667 thiss!1504) (minValue!4667 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4826 thiss!1504)))))

(declare-fun b!261928 () Bool)

(declare-fun c!44603 () Bool)

(assert (=> b!261928 (= c!44603 (is-MissingVacant!1203 lt!132363))))

(declare-fun e!169754 () Bool)

(assert (=> b!261928 (= e!169744 e!169754)))

(declare-fun b!261929 () Bool)

(declare-fun Unit!8155 () Unit!8152)

(assert (=> b!261929 (= e!169752 Unit!8155)))

(declare-fun lt!132365 () Unit!8152)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!451 (array!12644 array!12642 (_ BitVec 32) (_ BitVec 32) V!8505 V!8505 (_ BitVec 64) Int) Unit!8152)

(assert (=> b!261929 (= lt!132365 (lemmaInListMapThenSeekEntryOrOpenFindsIt!451 (_keys!7014 thiss!1504) (_values!4809 thiss!1504) (mask!11178 thiss!1504) (extraKeys!4563 thiss!1504) (zeroValue!4667 thiss!1504) (minValue!4667 thiss!1504) key!932 (defaultEntry!4826 thiss!1504)))))

(assert (=> b!261929 false))

(declare-fun b!261930 () Bool)

(declare-fun Unit!8156 () Unit!8152)

(assert (=> b!261930 (= e!169745 Unit!8156)))

(declare-fun lt!132372 () Unit!8152)

(declare-fun lemmaArrayContainsKeyThenInListMap!257 (array!12644 array!12642 (_ BitVec 32) (_ BitVec 32) V!8505 V!8505 (_ BitVec 64) (_ BitVec 32) Int) Unit!8152)

(assert (=> b!261930 (= lt!132372 (lemmaArrayContainsKeyThenInListMap!257 (_keys!7014 thiss!1504) (_values!4809 thiss!1504) (mask!11178 thiss!1504) (extraKeys!4563 thiss!1504) (zeroValue!4667 thiss!1504) (minValue!4667 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4826 thiss!1504)))))

(assert (=> b!261930 false))

(declare-fun b!261931 () Bool)

(declare-fun e!169746 () Bool)

(assert (=> b!261931 (= e!169750 (not e!169746))))

(declare-fun res!127965 () Bool)

(assert (=> b!261931 (=> res!127965 e!169746)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!261931 (= res!127965 (not (validMask!0 (mask!11178 thiss!1504))))))

(declare-fun lt!132366 () array!12644)

(declare-fun arrayCountValidKeys!0 (array!12644 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!261931 (= (arrayCountValidKeys!0 lt!132366 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132370 () Unit!8152)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12644 (_ BitVec 32)) Unit!8152)

(assert (=> b!261931 (= lt!132370 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132366 index!297))))

(declare-fun arrayContainsKey!0 (array!12644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!261931 (arrayContainsKey!0 lt!132366 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132373 () Unit!8152)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12644 (_ BitVec 64) (_ BitVec 32)) Unit!8152)

(assert (=> b!261931 (= lt!132373 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132366 key!932 index!297))))

(declare-fun v!346 () V!8505)

(declare-fun +!700 (ListLongMap!3887 tuple2!4960) ListLongMap!3887)

(assert (=> b!261931 (= (+!700 lt!132374 (tuple2!4961 key!932 v!346)) (getCurrentListMap!1482 lt!132366 (array!12643 (store (arr!5983 (_values!4809 thiss!1504)) index!297 (ValueCellFull!2978 v!346)) (size!6334 (_values!4809 thiss!1504))) (mask!11178 thiss!1504) (extraKeys!4563 thiss!1504) (zeroValue!4667 thiss!1504) (minValue!4667 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4826 thiss!1504)))))

(declare-fun lt!132364 () Unit!8152)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!115 (array!12644 array!12642 (_ BitVec 32) (_ BitVec 32) V!8505 V!8505 (_ BitVec 32) (_ BitVec 64) V!8505 Int) Unit!8152)

(assert (=> b!261931 (= lt!132364 (lemmaAddValidKeyToArrayThenAddPairToListMap!115 (_keys!7014 thiss!1504) (_values!4809 thiss!1504) (mask!11178 thiss!1504) (extraKeys!4563 thiss!1504) (zeroValue!4667 thiss!1504) (minValue!4667 thiss!1504) index!297 key!932 v!346 (defaultEntry!4826 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12644 (_ BitVec 32)) Bool)

(assert (=> b!261931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132366 (mask!11178 thiss!1504))))

(declare-fun lt!132376 () Unit!8152)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12644 (_ BitVec 32) (_ BitVec 32)) Unit!8152)

(assert (=> b!261931 (= lt!132376 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7014 thiss!1504) index!297 (mask!11178 thiss!1504)))))

(assert (=> b!261931 (= (arrayCountValidKeys!0 lt!132366 #b00000000000000000000000000000000 (size!6335 (_keys!7014 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7014 thiss!1504) #b00000000000000000000000000000000 (size!6335 (_keys!7014 thiss!1504)))))))

(declare-fun lt!132368 () Unit!8152)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12644 (_ BitVec 32) (_ BitVec 64)) Unit!8152)

(assert (=> b!261931 (= lt!132368 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7014 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3861 0))(
  ( (Nil!3858) (Cons!3857 (h!4523 (_ BitVec 64)) (t!8942 List!3861)) )
))
(declare-fun arrayNoDuplicates!0 (array!12644 (_ BitVec 32) List!3861) Bool)

(assert (=> b!261931 (arrayNoDuplicates!0 lt!132366 #b00000000000000000000000000000000 Nil!3858)))

(assert (=> b!261931 (= lt!132366 (array!12645 (store (arr!5984 (_keys!7014 thiss!1504)) index!297 key!932) (size!6335 (_keys!7014 thiss!1504))))))

(declare-fun lt!132371 () Unit!8152)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12644 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3861) Unit!8152)

(assert (=> b!261931 (= lt!132371 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7014 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3858))))

(declare-fun lt!132369 () Unit!8152)

(assert (=> b!261931 (= lt!132369 e!169745)))

(declare-fun c!44605 () Bool)

(assert (=> b!261931 (= c!44605 (arrayContainsKey!0 (_keys!7014 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261932 () Bool)

(declare-fun e!169753 () Bool)

(declare-fun mapRes!11323 () Bool)

(assert (=> b!261932 (= e!169757 (and e!169753 mapRes!11323))))

(declare-fun condMapEmpty!11323 () Bool)

(declare-fun mapDefault!11323 () ValueCell!2978)

