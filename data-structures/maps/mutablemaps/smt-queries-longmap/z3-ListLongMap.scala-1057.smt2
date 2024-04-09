; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22038 () Bool)

(assert start!22038)

(declare-fun b!227092 () Bool)

(declare-fun b_free!6093 () Bool)

(declare-fun b_next!6093 () Bool)

(assert (=> b!227092 (= b_free!6093 (not b_next!6093))))

(declare-fun tp!21421 () Bool)

(declare-fun b_and!13009 () Bool)

(assert (=> b!227092 (= tp!21421 b_and!13009)))

(declare-fun b!227080 () Bool)

(declare-fun e!147326 () Bool)

(declare-fun call!21112 () Bool)

(assert (=> b!227080 (= e!147326 (not call!21112))))

(declare-fun b!227081 () Bool)

(declare-fun e!147327 () Bool)

(assert (=> b!227081 (= e!147327 (not call!21112))))

(declare-fun b!227082 () Bool)

(declare-fun res!111811 () Bool)

(assert (=> b!227082 (=> (not res!111811) (not e!147327))))

(declare-fun call!21111 () Bool)

(assert (=> b!227082 (= res!111811 call!21111)))

(declare-fun e!147330 () Bool)

(assert (=> b!227082 (= e!147330 e!147327)))

(declare-fun b!227083 () Bool)

(declare-fun e!147340 () Bool)

(assert (=> b!227083 (= e!147340 true)))

(declare-fun lt!114327 () Bool)

(declare-datatypes ((V!7587 0))(
  ( (V!7588 (val!3022 Int)) )
))
(declare-datatypes ((ValueCell!2634 0))(
  ( (ValueCellFull!2634 (v!5038 V!7587)) (EmptyCell!2634) )
))
(declare-datatypes ((array!11152 0))(
  ( (array!11153 (arr!5295 (Array (_ BitVec 32) ValueCell!2634)) (size!5628 (_ BitVec 32))) )
))
(declare-datatypes ((array!11154 0))(
  ( (array!11155 (arr!5296 (Array (_ BitVec 32) (_ BitVec 64))) (size!5629 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3168 0))(
  ( (LongMapFixedSize!3169 (defaultEntry!4243 Int) (mask!10101 (_ BitVec 32)) (extraKeys!3980 (_ BitVec 32)) (zeroValue!4084 V!7587) (minValue!4084 V!7587) (_size!1633 (_ BitVec 32)) (_keys!6297 array!11154) (_values!4226 array!11152) (_vacant!1633 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3168)

(declare-datatypes ((List!3405 0))(
  ( (Nil!3402) (Cons!3401 (h!4049 (_ BitVec 64)) (t!8372 List!3405)) )
))
(declare-fun arrayNoDuplicates!0 (array!11154 (_ BitVec 32) List!3405) Bool)

(assert (=> b!227083 (= lt!114327 (arrayNoDuplicates!0 (_keys!6297 thiss!1504) #b00000000000000000000000000000000 Nil!3402))))

(declare-fun res!111805 () Bool)

(declare-fun e!147331 () Bool)

(assert (=> start!22038 (=> (not res!111805) (not e!147331))))

(declare-fun valid!1264 (LongMapFixedSize!3168) Bool)

(assert (=> start!22038 (= res!111805 (valid!1264 thiss!1504))))

(assert (=> start!22038 e!147331))

(declare-fun e!147333 () Bool)

(assert (=> start!22038 e!147333))

(assert (=> start!22038 true))

(declare-fun b!227084 () Bool)

(declare-fun res!111812 () Bool)

(declare-datatypes ((SeekEntryResult!901 0))(
  ( (MissingZero!901 (index!5774 (_ BitVec 32))) (Found!901 (index!5775 (_ BitVec 32))) (Intermediate!901 (undefined!1713 Bool) (index!5776 (_ BitVec 32)) (x!23273 (_ BitVec 32))) (Undefined!901) (MissingVacant!901 (index!5777 (_ BitVec 32))) )
))
(declare-fun lt!114320 () SeekEntryResult!901)

(assert (=> b!227084 (= res!111812 (= (select (arr!5296 (_keys!6297 thiss!1504)) (index!5777 lt!114320)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227084 (=> (not res!111812) (not e!147326))))

(declare-fun bm!21108 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21108 (= call!21112 (arrayContainsKey!0 (_keys!6297 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!21109 () Bool)

(declare-fun c!37637 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21109 (= call!21111 (inRange!0 (ite c!37637 (index!5774 lt!114320) (index!5777 lt!114320)) (mask!10101 thiss!1504)))))

(declare-fun mapIsEmpty!10102 () Bool)

(declare-fun mapRes!10102 () Bool)

(assert (=> mapIsEmpty!10102 mapRes!10102))

(declare-fun b!227085 () Bool)

(declare-fun res!111807 () Bool)

(assert (=> b!227085 (=> (not res!111807) (not e!147327))))

(assert (=> b!227085 (= res!111807 (= (select (arr!5296 (_keys!6297 thiss!1504)) (index!5774 lt!114320)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!227086 () Bool)

(declare-fun e!147328 () Bool)

(assert (=> b!227086 (= e!147328 (not e!147340))))

(declare-fun res!111808 () Bool)

(assert (=> b!227086 (=> res!111808 e!147340)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227086 (= res!111808 (not (validMask!0 (mask!10101 thiss!1504))))))

(declare-fun lt!114323 () array!11154)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11154 (_ BitVec 32)) Bool)

(assert (=> b!227086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114323 (mask!10101 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!6877 0))(
  ( (Unit!6878) )
))
(declare-fun lt!114322 () Unit!6877)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11154 (_ BitVec 32) (_ BitVec 32)) Unit!6877)

(assert (=> b!227086 (= lt!114322 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6297 thiss!1504) index!297 (mask!10101 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11154 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227086 (= (arrayCountValidKeys!0 lt!114323 #b00000000000000000000000000000000 (size!5629 (_keys!6297 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6297 thiss!1504) #b00000000000000000000000000000000 (size!5629 (_keys!6297 thiss!1504)))))))

(declare-fun lt!114321 () Unit!6877)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11154 (_ BitVec 32) (_ BitVec 64)) Unit!6877)

(assert (=> b!227086 (= lt!114321 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6297 thiss!1504) index!297 key!932))))

(assert (=> b!227086 (arrayNoDuplicates!0 lt!114323 #b00000000000000000000000000000000 Nil!3402)))

(assert (=> b!227086 (= lt!114323 (array!11155 (store (arr!5296 (_keys!6297 thiss!1504)) index!297 key!932) (size!5629 (_keys!6297 thiss!1504))))))

(declare-fun lt!114324 () Unit!6877)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11154 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3405) Unit!6877)

(assert (=> b!227086 (= lt!114324 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6297 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3402))))

(declare-fun lt!114326 () Unit!6877)

(declare-fun e!147336 () Unit!6877)

(assert (=> b!227086 (= lt!114326 e!147336)))

(declare-fun c!37634 () Bool)

(assert (=> b!227086 (= c!37634 (arrayContainsKey!0 (_keys!6297 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227087 () Bool)

(declare-fun Unit!6879 () Unit!6877)

(assert (=> b!227087 (= e!147336 Unit!6879)))

(declare-fun lt!114329 () Unit!6877)

(declare-fun lemmaArrayContainsKeyThenInListMap!100 (array!11154 array!11152 (_ BitVec 32) (_ BitVec 32) V!7587 V!7587 (_ BitVec 64) (_ BitVec 32) Int) Unit!6877)

(assert (=> b!227087 (= lt!114329 (lemmaArrayContainsKeyThenInListMap!100 (_keys!6297 thiss!1504) (_values!4226 thiss!1504) (mask!10101 thiss!1504) (extraKeys!3980 thiss!1504) (zeroValue!4084 thiss!1504) (minValue!4084 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4243 thiss!1504)))))

(assert (=> b!227087 false))

(declare-fun b!227088 () Bool)

(declare-fun res!111813 () Bool)

(assert (=> b!227088 (=> res!111813 e!147340)))

(assert (=> b!227088 (= res!111813 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6297 thiss!1504) (mask!10101 thiss!1504))))))

(declare-fun b!227089 () Bool)

(declare-fun e!147337 () Bool)

(declare-fun tp_is_empty!5955 () Bool)

(assert (=> b!227089 (= e!147337 tp_is_empty!5955)))

(declare-fun b!227090 () Bool)

(declare-fun Unit!6880 () Unit!6877)

(assert (=> b!227090 (= e!147336 Unit!6880)))

(declare-fun b!227091 () Bool)

(declare-fun e!147329 () Bool)

(get-info :version)

(assert (=> b!227091 (= e!147329 ((_ is Undefined!901) lt!114320))))

(declare-fun e!147339 () Bool)

(declare-fun array_inv!3491 (array!11154) Bool)

(declare-fun array_inv!3492 (array!11152) Bool)

(assert (=> b!227092 (= e!147333 (and tp!21421 tp_is_empty!5955 (array_inv!3491 (_keys!6297 thiss!1504)) (array_inv!3492 (_values!4226 thiss!1504)) e!147339))))

(declare-fun b!227093 () Bool)

(assert (=> b!227093 (= e!147329 e!147326)))

(declare-fun res!111806 () Bool)

(assert (=> b!227093 (= res!111806 call!21111)))

(assert (=> b!227093 (=> (not res!111806) (not e!147326))))

(declare-fun b!227094 () Bool)

(declare-fun e!147338 () Bool)

(assert (=> b!227094 (= e!147338 tp_is_empty!5955)))

(declare-fun b!227095 () Bool)

(assert (=> b!227095 (= e!147339 (and e!147337 mapRes!10102))))

(declare-fun condMapEmpty!10102 () Bool)

(declare-fun mapDefault!10102 () ValueCell!2634)

(assert (=> b!227095 (= condMapEmpty!10102 (= (arr!5295 (_values!4226 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2634)) mapDefault!10102)))))

(declare-fun b!227096 () Bool)

(declare-fun e!147332 () Unit!6877)

(declare-fun lt!114328 () Unit!6877)

(assert (=> b!227096 (= e!147332 lt!114328)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!273 (array!11154 array!11152 (_ BitVec 32) (_ BitVec 32) V!7587 V!7587 (_ BitVec 64) Int) Unit!6877)

(assert (=> b!227096 (= lt!114328 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!273 (_keys!6297 thiss!1504) (_values!4226 thiss!1504) (mask!10101 thiss!1504) (extraKeys!3980 thiss!1504) (zeroValue!4084 thiss!1504) (minValue!4084 thiss!1504) key!932 (defaultEntry!4243 thiss!1504)))))

(assert (=> b!227096 (= c!37637 ((_ is MissingZero!901) lt!114320))))

(assert (=> b!227096 e!147330))

(declare-fun b!227097 () Bool)

(declare-fun res!111804 () Bool)

(assert (=> b!227097 (=> (not res!111804) (not e!147331))))

(assert (=> b!227097 (= res!111804 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227098 () Bool)

(declare-fun e!147335 () Bool)

(assert (=> b!227098 (= e!147335 e!147328)))

(declare-fun res!111809 () Bool)

(assert (=> b!227098 (=> (not res!111809) (not e!147328))))

(assert (=> b!227098 (= res!111809 (inRange!0 index!297 (mask!10101 thiss!1504)))))

(declare-fun lt!114330 () Unit!6877)

(assert (=> b!227098 (= lt!114330 e!147332)))

(declare-fun c!37636 () Bool)

(declare-datatypes ((tuple2!4462 0))(
  ( (tuple2!4463 (_1!2241 (_ BitVec 64)) (_2!2241 V!7587)) )
))
(declare-datatypes ((List!3406 0))(
  ( (Nil!3403) (Cons!3402 (h!4050 tuple2!4462) (t!8373 List!3406)) )
))
(declare-datatypes ((ListLongMap!3389 0))(
  ( (ListLongMap!3390 (toList!1710 List!3406)) )
))
(declare-fun contains!1578 (ListLongMap!3389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1233 (array!11154 array!11152 (_ BitVec 32) (_ BitVec 32) V!7587 V!7587 (_ BitVec 32) Int) ListLongMap!3389)

(assert (=> b!227098 (= c!37636 (contains!1578 (getCurrentListMap!1233 (_keys!6297 thiss!1504) (_values!4226 thiss!1504) (mask!10101 thiss!1504) (extraKeys!3980 thiss!1504) (zeroValue!4084 thiss!1504) (minValue!4084 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4243 thiss!1504)) key!932))))

(declare-fun b!227099 () Bool)

(declare-fun res!111814 () Bool)

(assert (=> b!227099 (=> res!111814 e!147340)))

(assert (=> b!227099 (= res!111814 (or (not (= (size!5628 (_values!4226 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10101 thiss!1504)))) (not (= (size!5629 (_keys!6297 thiss!1504)) (size!5628 (_values!4226 thiss!1504)))) (bvslt (mask!10101 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3980 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3980 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227100 () Bool)

(assert (=> b!227100 (= e!147331 e!147335)))

(declare-fun res!111810 () Bool)

(assert (=> b!227100 (=> (not res!111810) (not e!147335))))

(assert (=> b!227100 (= res!111810 (or (= lt!114320 (MissingZero!901 index!297)) (= lt!114320 (MissingVacant!901 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11154 (_ BitVec 32)) SeekEntryResult!901)

(assert (=> b!227100 (= lt!114320 (seekEntryOrOpen!0 key!932 (_keys!6297 thiss!1504) (mask!10101 thiss!1504)))))

(declare-fun b!227101 () Bool)

(declare-fun c!37635 () Bool)

(assert (=> b!227101 (= c!37635 ((_ is MissingVacant!901) lt!114320))))

(assert (=> b!227101 (= e!147330 e!147329)))

(declare-fun b!227102 () Bool)

(declare-fun Unit!6881 () Unit!6877)

(assert (=> b!227102 (= e!147332 Unit!6881)))

(declare-fun lt!114325 () Unit!6877)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!262 (array!11154 array!11152 (_ BitVec 32) (_ BitVec 32) V!7587 V!7587 (_ BitVec 64) Int) Unit!6877)

(assert (=> b!227102 (= lt!114325 (lemmaInListMapThenSeekEntryOrOpenFindsIt!262 (_keys!6297 thiss!1504) (_values!4226 thiss!1504) (mask!10101 thiss!1504) (extraKeys!3980 thiss!1504) (zeroValue!4084 thiss!1504) (minValue!4084 thiss!1504) key!932 (defaultEntry!4243 thiss!1504)))))

(assert (=> b!227102 false))

(declare-fun mapNonEmpty!10102 () Bool)

(declare-fun tp!21420 () Bool)

(assert (=> mapNonEmpty!10102 (= mapRes!10102 (and tp!21420 e!147338))))

(declare-fun mapRest!10102 () (Array (_ BitVec 32) ValueCell!2634))

(declare-fun mapKey!10102 () (_ BitVec 32))

(declare-fun mapValue!10102 () ValueCell!2634)

(assert (=> mapNonEmpty!10102 (= (arr!5295 (_values!4226 thiss!1504)) (store mapRest!10102 mapKey!10102 mapValue!10102))))

(assert (= (and start!22038 res!111805) b!227097))

(assert (= (and b!227097 res!111804) b!227100))

(assert (= (and b!227100 res!111810) b!227098))

(assert (= (and b!227098 c!37636) b!227102))

(assert (= (and b!227098 (not c!37636)) b!227096))

(assert (= (and b!227096 c!37637) b!227082))

(assert (= (and b!227096 (not c!37637)) b!227101))

(assert (= (and b!227082 res!111811) b!227085))

(assert (= (and b!227085 res!111807) b!227081))

(assert (= (and b!227101 c!37635) b!227093))

(assert (= (and b!227101 (not c!37635)) b!227091))

(assert (= (and b!227093 res!111806) b!227084))

(assert (= (and b!227084 res!111812) b!227080))

(assert (= (or b!227082 b!227093) bm!21109))

(assert (= (or b!227081 b!227080) bm!21108))

(assert (= (and b!227098 res!111809) b!227086))

(assert (= (and b!227086 c!37634) b!227087))

(assert (= (and b!227086 (not c!37634)) b!227090))

(assert (= (and b!227086 (not res!111808)) b!227099))

(assert (= (and b!227099 (not res!111814)) b!227088))

(assert (= (and b!227088 (not res!111813)) b!227083))

(assert (= (and b!227095 condMapEmpty!10102) mapIsEmpty!10102))

(assert (= (and b!227095 (not condMapEmpty!10102)) mapNonEmpty!10102))

(assert (= (and mapNonEmpty!10102 ((_ is ValueCellFull!2634) mapValue!10102)) b!227094))

(assert (= (and b!227095 ((_ is ValueCellFull!2634) mapDefault!10102)) b!227089))

(assert (= b!227092 b!227095))

(assert (= start!22038 b!227092))

(declare-fun m!249185 () Bool)

(assert (=> b!227098 m!249185))

(declare-fun m!249187 () Bool)

(assert (=> b!227098 m!249187))

(assert (=> b!227098 m!249187))

(declare-fun m!249189 () Bool)

(assert (=> b!227098 m!249189))

(declare-fun m!249191 () Bool)

(assert (=> bm!21109 m!249191))

(declare-fun m!249193 () Bool)

(assert (=> b!227088 m!249193))

(declare-fun m!249195 () Bool)

(assert (=> b!227086 m!249195))

(declare-fun m!249197 () Bool)

(assert (=> b!227086 m!249197))

(declare-fun m!249199 () Bool)

(assert (=> b!227086 m!249199))

(declare-fun m!249201 () Bool)

(assert (=> b!227086 m!249201))

(declare-fun m!249203 () Bool)

(assert (=> b!227086 m!249203))

(declare-fun m!249205 () Bool)

(assert (=> b!227086 m!249205))

(declare-fun m!249207 () Bool)

(assert (=> b!227086 m!249207))

(declare-fun m!249209 () Bool)

(assert (=> b!227086 m!249209))

(declare-fun m!249211 () Bool)

(assert (=> b!227086 m!249211))

(declare-fun m!249213 () Bool)

(assert (=> b!227086 m!249213))

(declare-fun m!249215 () Bool)

(assert (=> start!22038 m!249215))

(declare-fun m!249217 () Bool)

(assert (=> b!227092 m!249217))

(declare-fun m!249219 () Bool)

(assert (=> b!227092 m!249219))

(declare-fun m!249221 () Bool)

(assert (=> b!227096 m!249221))

(declare-fun m!249223 () Bool)

(assert (=> b!227087 m!249223))

(declare-fun m!249225 () Bool)

(assert (=> b!227083 m!249225))

(declare-fun m!249227 () Bool)

(assert (=> b!227102 m!249227))

(declare-fun m!249229 () Bool)

(assert (=> b!227100 m!249229))

(declare-fun m!249231 () Bool)

(assert (=> b!227084 m!249231))

(declare-fun m!249233 () Bool)

(assert (=> b!227085 m!249233))

(declare-fun m!249235 () Bool)

(assert (=> mapNonEmpty!10102 m!249235))

(assert (=> bm!21108 m!249197))

(check-sat (not b!227102) (not b!227088) (not b_next!6093) (not b!227086) (not b!227092) (not bm!21108) (not b!227087) (not bm!21109) (not b!227083) (not mapNonEmpty!10102) (not b!227096) (not b!227100) (not start!22038) b_and!13009 tp_is_empty!5955 (not b!227098))
(check-sat b_and!13009 (not b_next!6093))
