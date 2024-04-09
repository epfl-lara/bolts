; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25200 () Bool)

(assert start!25200)

(declare-fun b!262497 () Bool)

(declare-fun b_free!6791 () Bool)

(declare-fun b_next!6791 () Bool)

(assert (=> b!262497 (= b_free!6791 (not b_next!6791))))

(declare-fun tp!23706 () Bool)

(declare-fun b_and!13947 () Bool)

(assert (=> b!262497 (= tp!23706 b_and!13947)))

(declare-fun b!262493 () Bool)

(declare-fun res!128229 () Bool)

(declare-fun e!170124 () Bool)

(assert (=> b!262493 (=> (not res!128229) (not e!170124))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!262493 (= res!128229 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!262494 () Bool)

(declare-fun e!170125 () Bool)

(declare-fun e!170123 () Bool)

(assert (=> b!262494 (= e!170125 e!170123)))

(declare-fun res!128231 () Bool)

(assert (=> b!262494 (=> (not res!128231) (not e!170123))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8517 0))(
  ( (V!8518 (val!3371 Int)) )
))
(declare-datatypes ((ValueCell!2983 0))(
  ( (ValueCellFull!2983 (v!5495 V!8517)) (EmptyCell!2983) )
))
(declare-datatypes ((array!12664 0))(
  ( (array!12665 (arr!5993 (Array (_ BitVec 32) ValueCell!2983)) (size!6344 (_ BitVec 32))) )
))
(declare-datatypes ((array!12666 0))(
  ( (array!12667 (arr!5994 (Array (_ BitVec 32) (_ BitVec 64))) (size!6345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3866 0))(
  ( (LongMapFixedSize!3867 (defaultEntry!4836 Int) (mask!11195 (_ BitVec 32)) (extraKeys!4573 (_ BitVec 32)) (zeroValue!4677 V!8517) (minValue!4677 V!8517) (_size!1982 (_ BitVec 32)) (_keys!7026 array!12666) (_values!4819 array!12664) (_vacant!1982 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3866)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!262494 (= res!128231 (inRange!0 index!297 (mask!11195 thiss!1504)))))

(declare-datatypes ((Unit!8177 0))(
  ( (Unit!8178) )
))
(declare-fun lt!132747 () Unit!8177)

(declare-fun e!170122 () Unit!8177)

(assert (=> b!262494 (= lt!132747 e!170122)))

(declare-fun c!44723 () Bool)

(declare-datatypes ((tuple2!4970 0))(
  ( (tuple2!4971 (_1!2495 (_ BitVec 64)) (_2!2495 V!8517)) )
))
(declare-datatypes ((List!3869 0))(
  ( (Nil!3866) (Cons!3865 (h!4531 tuple2!4970) (t!8952 List!3869)) )
))
(declare-datatypes ((ListLongMap!3897 0))(
  ( (ListLongMap!3898 (toList!1964 List!3869)) )
))
(declare-fun lt!132754 () ListLongMap!3897)

(declare-fun contains!1907 (ListLongMap!3897 (_ BitVec 64)) Bool)

(assert (=> b!262494 (= c!44723 (contains!1907 lt!132754 key!932))))

(declare-fun getCurrentListMap!1487 (array!12666 array!12664 (_ BitVec 32) (_ BitVec 32) V!8517 V!8517 (_ BitVec 32) Int) ListLongMap!3897)

(assert (=> b!262494 (= lt!132754 (getCurrentListMap!1487 (_keys!7026 thiss!1504) (_values!4819 thiss!1504) (mask!11195 thiss!1504) (extraKeys!4573 thiss!1504) (zeroValue!4677 thiss!1504) (minValue!4677 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4836 thiss!1504)))))

(declare-fun b!262495 () Bool)

(declare-fun res!128223 () Bool)

(declare-fun e!170133 () Bool)

(assert (=> b!262495 (=> res!128223 e!170133)))

(assert (=> b!262495 (= res!128223 (or (not (= (size!6344 (_values!4819 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11195 thiss!1504)))) (not (= (size!6345 (_keys!7026 thiss!1504)) (size!6344 (_values!4819 thiss!1504)))) (bvslt (mask!11195 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4573 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4573 thiss!1504) #b00000000000000000000000000000011) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6345 (_keys!7026 thiss!1504)))))))

(declare-fun b!262496 () Bool)

(declare-fun c!44722 () Bool)

(declare-datatypes ((SeekEntryResult!1208 0))(
  ( (MissingZero!1208 (index!7002 (_ BitVec 32))) (Found!1208 (index!7003 (_ BitVec 32))) (Intermediate!1208 (undefined!2020 Bool) (index!7004 (_ BitVec 32)) (x!25232 (_ BitVec 32))) (Undefined!1208) (MissingVacant!1208 (index!7005 (_ BitVec 32))) )
))
(declare-fun lt!132745 () SeekEntryResult!1208)

(assert (=> b!262496 (= c!44722 (is-MissingVacant!1208 lt!132745))))

(declare-fun e!170121 () Bool)

(declare-fun e!170119 () Bool)

(assert (=> b!262496 (= e!170121 e!170119)))

(declare-fun mapNonEmpty!11341 () Bool)

(declare-fun mapRes!11341 () Bool)

(declare-fun tp!23707 () Bool)

(declare-fun e!170131 () Bool)

(assert (=> mapNonEmpty!11341 (= mapRes!11341 (and tp!23707 e!170131))))

(declare-fun mapValue!11341 () ValueCell!2983)

(declare-fun mapKey!11341 () (_ BitVec 32))

(declare-fun mapRest!11341 () (Array (_ BitVec 32) ValueCell!2983))

(assert (=> mapNonEmpty!11341 (= (arr!5993 (_values!4819 thiss!1504)) (store mapRest!11341 mapKey!11341 mapValue!11341))))

(declare-fun b!262498 () Bool)

(declare-fun e!170127 () Bool)

(declare-fun call!25088 () Bool)

(assert (=> b!262498 (= e!170127 (not call!25088))))

(declare-fun b!262499 () Bool)

(declare-fun res!128230 () Bool)

(assert (=> b!262499 (= res!128230 (= (select (arr!5994 (_keys!7026 thiss!1504)) (index!7005 lt!132745)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262499 (=> (not res!128230) (not e!170127))))

(declare-fun b!262500 () Bool)

(declare-fun e!170126 () Bool)

(declare-fun tp_is_empty!6653 () Bool)

(assert (=> b!262500 (= e!170126 tp_is_empty!6653)))

(declare-fun b!262501 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!262501 (= e!170133 (validKeyInArray!0 key!932))))

(declare-fun b!262502 () Bool)

(assert (=> b!262502 (= e!170131 tp_is_empty!6653)))

(declare-fun b!262503 () Bool)

(assert (=> b!262503 (= e!170119 e!170127)))

(declare-fun res!128226 () Bool)

(declare-fun call!25089 () Bool)

(assert (=> b!262503 (= res!128226 call!25089)))

(assert (=> b!262503 (=> (not res!128226) (not e!170127))))

(declare-fun b!262504 () Bool)

(declare-fun Unit!8179 () Unit!8177)

(assert (=> b!262504 (= e!170122 Unit!8179)))

(declare-fun lt!132752 () Unit!8177)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!455 (array!12666 array!12664 (_ BitVec 32) (_ BitVec 32) V!8517 V!8517 (_ BitVec 64) Int) Unit!8177)

(assert (=> b!262504 (= lt!132752 (lemmaInListMapThenSeekEntryOrOpenFindsIt!455 (_keys!7026 thiss!1504) (_values!4819 thiss!1504) (mask!11195 thiss!1504) (extraKeys!4573 thiss!1504) (zeroValue!4677 thiss!1504) (minValue!4677 thiss!1504) key!932 (defaultEntry!4836 thiss!1504)))))

(assert (=> b!262504 false))

(declare-fun b!262505 () Bool)

(assert (=> b!262505 (= e!170119 (is-Undefined!1208 lt!132745))))

(declare-fun b!262506 () Bool)

(declare-fun res!128225 () Bool)

(declare-fun e!170132 () Bool)

(assert (=> b!262506 (=> (not res!128225) (not e!170132))))

(assert (=> b!262506 (= res!128225 (= (select (arr!5994 (_keys!7026 thiss!1504)) (index!7002 lt!132745)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262507 () Bool)

(assert (=> b!262507 (= e!170123 (not e!170133))))

(declare-fun res!128232 () Bool)

(assert (=> b!262507 (=> res!128232 e!170133)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!262507 (= res!128232 (not (validMask!0 (mask!11195 thiss!1504))))))

(declare-fun lt!132753 () array!12666)

(declare-fun arrayCountValidKeys!0 (array!12666 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!262507 (= (arrayCountValidKeys!0 lt!132753 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132750 () Unit!8177)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12666 (_ BitVec 32)) Unit!8177)

(assert (=> b!262507 (= lt!132750 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132753 index!297))))

(declare-fun arrayContainsKey!0 (array!12666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!262507 (arrayContainsKey!0 lt!132753 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132746 () Unit!8177)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12666 (_ BitVec 64) (_ BitVec 32)) Unit!8177)

(assert (=> b!262507 (= lt!132746 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132753 key!932 index!297))))

(declare-fun v!346 () V!8517)

(declare-fun +!704 (ListLongMap!3897 tuple2!4970) ListLongMap!3897)

(assert (=> b!262507 (= (+!704 lt!132754 (tuple2!4971 key!932 v!346)) (getCurrentListMap!1487 lt!132753 (array!12665 (store (arr!5993 (_values!4819 thiss!1504)) index!297 (ValueCellFull!2983 v!346)) (size!6344 (_values!4819 thiss!1504))) (mask!11195 thiss!1504) (extraKeys!4573 thiss!1504) (zeroValue!4677 thiss!1504) (minValue!4677 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4836 thiss!1504)))))

(declare-fun lt!132744 () Unit!8177)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!119 (array!12666 array!12664 (_ BitVec 32) (_ BitVec 32) V!8517 V!8517 (_ BitVec 32) (_ BitVec 64) V!8517 Int) Unit!8177)

(assert (=> b!262507 (= lt!132744 (lemmaAddValidKeyToArrayThenAddPairToListMap!119 (_keys!7026 thiss!1504) (_values!4819 thiss!1504) (mask!11195 thiss!1504) (extraKeys!4573 thiss!1504) (zeroValue!4677 thiss!1504) (minValue!4677 thiss!1504) index!297 key!932 v!346 (defaultEntry!4836 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12666 (_ BitVec 32)) Bool)

(assert (=> b!262507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132753 (mask!11195 thiss!1504))))

(declare-fun lt!132742 () Unit!8177)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12666 (_ BitVec 32) (_ BitVec 32)) Unit!8177)

(assert (=> b!262507 (= lt!132742 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7026 thiss!1504) index!297 (mask!11195 thiss!1504)))))

(assert (=> b!262507 (= (arrayCountValidKeys!0 lt!132753 #b00000000000000000000000000000000 (size!6345 (_keys!7026 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7026 thiss!1504) #b00000000000000000000000000000000 (size!6345 (_keys!7026 thiss!1504)))))))

(declare-fun lt!132751 () Unit!8177)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12666 (_ BitVec 32) (_ BitVec 64)) Unit!8177)

(assert (=> b!262507 (= lt!132751 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7026 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3870 0))(
  ( (Nil!3867) (Cons!3866 (h!4532 (_ BitVec 64)) (t!8953 List!3870)) )
))
(declare-fun arrayNoDuplicates!0 (array!12666 (_ BitVec 32) List!3870) Bool)

(assert (=> b!262507 (arrayNoDuplicates!0 lt!132753 #b00000000000000000000000000000000 Nil!3867)))

(assert (=> b!262507 (= lt!132753 (array!12667 (store (arr!5994 (_keys!7026 thiss!1504)) index!297 key!932) (size!6345 (_keys!7026 thiss!1504))))))

(declare-fun lt!132749 () Unit!8177)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3870) Unit!8177)

(assert (=> b!262507 (= lt!132749 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7026 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3867))))

(declare-fun lt!132743 () Unit!8177)

(declare-fun e!170120 () Unit!8177)

(assert (=> b!262507 (= lt!132743 e!170120)))

(declare-fun c!44720 () Bool)

(assert (=> b!262507 (= c!44720 (arrayContainsKey!0 (_keys!7026 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262508 () Bool)

(declare-fun Unit!8180 () Unit!8177)

(assert (=> b!262508 (= e!170120 Unit!8180)))

(declare-fun lt!132748 () Unit!8177)

(declare-fun lemmaArrayContainsKeyThenInListMap!261 (array!12666 array!12664 (_ BitVec 32) (_ BitVec 32) V!8517 V!8517 (_ BitVec 64) (_ BitVec 32) Int) Unit!8177)

(assert (=> b!262508 (= lt!132748 (lemmaArrayContainsKeyThenInListMap!261 (_keys!7026 thiss!1504) (_values!4819 thiss!1504) (mask!11195 thiss!1504) (extraKeys!4573 thiss!1504) (zeroValue!4677 thiss!1504) (minValue!4677 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4836 thiss!1504)))))

(assert (=> b!262508 false))

(declare-fun b!262509 () Bool)

(declare-fun res!128228 () Bool)

(assert (=> b!262509 (=> (not res!128228) (not e!170132))))

(assert (=> b!262509 (= res!128228 call!25089)))

(assert (=> b!262509 (= e!170121 e!170132)))

(declare-fun b!262510 () Bool)

(assert (=> b!262510 (= e!170132 (not call!25088))))

(declare-fun b!262511 () Bool)

(declare-fun Unit!8181 () Unit!8177)

(assert (=> b!262511 (= e!170120 Unit!8181)))

(declare-fun bm!25085 () Bool)

(assert (=> bm!25085 (= call!25088 (arrayContainsKey!0 (_keys!7026 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262512 () Bool)

(declare-fun e!170129 () Bool)

(assert (=> b!262512 (= e!170129 (and e!170126 mapRes!11341))))

(declare-fun condMapEmpty!11341 () Bool)

(declare-fun mapDefault!11341 () ValueCell!2983)

