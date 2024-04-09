; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24236 () Bool)

(assert start!24236)

(declare-fun b!253288 () Bool)

(declare-fun b_free!6663 () Bool)

(declare-fun b_next!6663 () Bool)

(assert (=> b!253288 (= b_free!6663 (not b_next!6663))))

(declare-fun tp!23273 () Bool)

(declare-fun b_and!13721 () Bool)

(assert (=> b!253288 (= tp!23273 b_and!13721)))

(declare-fun b!253283 () Bool)

(declare-fun res!123997 () Bool)

(declare-fun e!164229 () Bool)

(assert (=> b!253283 (=> res!123997 e!164229)))

(declare-datatypes ((V!8347 0))(
  ( (V!8348 (val!3307 Int)) )
))
(declare-datatypes ((ValueCell!2919 0))(
  ( (ValueCellFull!2919 (v!5376 V!8347)) (EmptyCell!2919) )
))
(declare-datatypes ((array!12378 0))(
  ( (array!12379 (arr!5865 (Array (_ BitVec 32) ValueCell!2919)) (size!6212 (_ BitVec 32))) )
))
(declare-datatypes ((array!12380 0))(
  ( (array!12381 (arr!5866 (Array (_ BitVec 32) (_ BitVec 64))) (size!6213 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3738 0))(
  ( (LongMapFixedSize!3739 (defaultEntry!4678 Int) (mask!10911 (_ BitVec 32)) (extraKeys!4415 (_ BitVec 32)) (zeroValue!4519 V!8347) (minValue!4519 V!8347) (_size!1918 (_ BitVec 32)) (_keys!6830 array!12380) (_values!4661 array!12378) (_vacant!1918 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3738)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12380 (_ BitVec 32)) Bool)

(assert (=> b!253283 (= res!123997 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6830 thiss!1504) (mask!10911 thiss!1504))))))

(declare-fun b!253284 () Bool)

(declare-datatypes ((Unit!7838 0))(
  ( (Unit!7839) )
))
(declare-fun e!164231 () Unit!7838)

(declare-fun lt!127004 () Unit!7838)

(assert (=> b!253284 (= e!164231 lt!127004)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!412 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 64) Int) Unit!7838)

(assert (=> b!253284 (= lt!127004 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!412 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 (defaultEntry!4678 thiss!1504)))))

(declare-fun c!42697 () Bool)

(declare-datatypes ((SeekEntryResult!1149 0))(
  ( (MissingZero!1149 (index!6766 (_ BitVec 32))) (Found!1149 (index!6767 (_ BitVec 32))) (Intermediate!1149 (undefined!1961 Bool) (index!6768 (_ BitVec 32)) (x!24823 (_ BitVec 32))) (Undefined!1149) (MissingVacant!1149 (index!6769 (_ BitVec 32))) )
))
(declare-fun lt!127008 () SeekEntryResult!1149)

(get-info :version)

(assert (=> b!253284 (= c!42697 ((_ is MissingZero!1149) lt!127008))))

(declare-fun e!164239 () Bool)

(assert (=> b!253284 e!164239))

(declare-fun b!253285 () Bool)

(declare-fun e!164238 () Bool)

(declare-fun call!23893 () Bool)

(assert (=> b!253285 (= e!164238 (not call!23893))))

(declare-fun b!253286 () Bool)

(declare-fun res!123992 () Bool)

(assert (=> b!253286 (=> (not res!123992) (not e!164238))))

(assert (=> b!253286 (= res!123992 (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6766 lt!127008)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23890 () Bool)

(declare-fun call!23894 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23890 (= call!23894 (inRange!0 (ite c!42697 (index!6766 lt!127008) (index!6769 lt!127008)) (mask!10911 thiss!1504)))))

(declare-fun b!253287 () Bool)

(declare-fun e!164234 () Bool)

(declare-fun e!164237 () Bool)

(assert (=> b!253287 (= e!164234 e!164237)))

(declare-fun res!123991 () Bool)

(assert (=> b!253287 (= res!123991 call!23894)))

(assert (=> b!253287 (=> (not res!123991) (not e!164237))))

(declare-fun bm!23891 () Bool)

(declare-fun arrayContainsKey!0 (array!12380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23891 (= call!23893 (arrayContainsKey!0 (_keys!6830 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253289 () Bool)

(declare-fun res!123994 () Bool)

(assert (=> b!253289 (=> res!123994 e!164229)))

(assert (=> b!253289 (= res!123994 (or (not (= (size!6212 (_values!4661 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10911 thiss!1504)))) (not (= (size!6213 (_keys!6830 thiss!1504)) (size!6212 (_values!4661 thiss!1504)))) (bvslt (mask!10911 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4415 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4415 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!253290 () Bool)

(declare-fun e!164241 () Unit!7838)

(declare-fun Unit!7840 () Unit!7838)

(assert (=> b!253290 (= e!164241 Unit!7840)))

(declare-fun b!253291 () Bool)

(assert (=> b!253291 (= e!164237 (not call!23893))))

(declare-fun b!253292 () Bool)

(declare-fun Unit!7841 () Unit!7838)

(assert (=> b!253292 (= e!164241 Unit!7841)))

(declare-fun lt!127002 () Unit!7838)

(declare-fun lemmaArrayContainsKeyThenInListMap!215 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 64) (_ BitVec 32) Int) Unit!7838)

(assert (=> b!253292 (= lt!127002 (lemmaArrayContainsKeyThenInListMap!215 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(assert (=> b!253292 false))

(declare-fun b!253293 () Bool)

(assert (=> b!253293 (= e!164234 ((_ is Undefined!1149) lt!127008))))

(declare-fun mapIsEmpty!11100 () Bool)

(declare-fun mapRes!11100 () Bool)

(assert (=> mapIsEmpty!11100 mapRes!11100))

(declare-fun b!253294 () Bool)

(declare-fun res!123993 () Bool)

(assert (=> b!253294 (=> (not res!123993) (not e!164238))))

(assert (=> b!253294 (= res!123993 call!23894)))

(assert (=> b!253294 (= e!164239 e!164238)))

(declare-fun mapNonEmpty!11100 () Bool)

(declare-fun tp!23274 () Bool)

(declare-fun e!164236 () Bool)

(assert (=> mapNonEmpty!11100 (= mapRes!11100 (and tp!23274 e!164236))))

(declare-fun mapRest!11100 () (Array (_ BitVec 32) ValueCell!2919))

(declare-fun mapKey!11100 () (_ BitVec 32))

(declare-fun mapValue!11100 () ValueCell!2919)

(assert (=> mapNonEmpty!11100 (= (arr!5865 (_values!4661 thiss!1504)) (store mapRest!11100 mapKey!11100 mapValue!11100))))

(declare-fun b!253295 () Bool)

(declare-fun e!164235 () Bool)

(declare-fun e!164233 () Bool)

(assert (=> b!253295 (= e!164235 e!164233)))

(declare-fun res!123999 () Bool)

(assert (=> b!253295 (=> (not res!123999) (not e!164233))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!253295 (= res!123999 (inRange!0 index!297 (mask!10911 thiss!1504)))))

(declare-fun lt!127006 () Unit!7838)

(assert (=> b!253295 (= lt!127006 e!164231)))

(declare-fun c!42696 () Bool)

(declare-datatypes ((tuple2!4866 0))(
  ( (tuple2!4867 (_1!2443 (_ BitVec 64)) (_2!2443 V!8347)) )
))
(declare-datatypes ((List!3771 0))(
  ( (Nil!3768) (Cons!3767 (h!4429 tuple2!4866) (t!8824 List!3771)) )
))
(declare-datatypes ((ListLongMap!3793 0))(
  ( (ListLongMap!3794 (toList!1912 List!3771)) )
))
(declare-fun contains!1835 (ListLongMap!3793 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1435 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 32) Int) ListLongMap!3793)

(assert (=> b!253295 (= c!42696 (contains!1835 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)) key!932))))

(declare-fun b!253296 () Bool)

(assert (=> b!253296 (= e!164233 (not e!164229))))

(declare-fun res!124000 () Bool)

(assert (=> b!253296 (=> res!124000 e!164229)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!253296 (= res!124000 (not (validMask!0 (mask!10911 thiss!1504))))))

(declare-fun lt!127001 () array!12380)

(assert (=> b!253296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127001 (mask!10911 thiss!1504))))

(declare-fun lt!127007 () Unit!7838)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12380 (_ BitVec 32) (_ BitVec 32)) Unit!7838)

(assert (=> b!253296 (= lt!127007 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6830 thiss!1504) index!297 (mask!10911 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12380 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!253296 (= (arrayCountValidKeys!0 lt!127001 #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504)))))))

(declare-fun lt!127003 () Unit!7838)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12380 (_ BitVec 32) (_ BitVec 64)) Unit!7838)

(assert (=> b!253296 (= lt!127003 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6830 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3772 0))(
  ( (Nil!3769) (Cons!3768 (h!4430 (_ BitVec 64)) (t!8825 List!3772)) )
))
(declare-fun arrayNoDuplicates!0 (array!12380 (_ BitVec 32) List!3772) Bool)

(assert (=> b!253296 (arrayNoDuplicates!0 lt!127001 #b00000000000000000000000000000000 Nil!3769)))

(assert (=> b!253296 (= lt!127001 (array!12381 (store (arr!5866 (_keys!6830 thiss!1504)) index!297 key!932) (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun lt!127010 () Unit!7838)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3772) Unit!7838)

(assert (=> b!253296 (= lt!127010 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6830 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3769))))

(declare-fun lt!127005 () Unit!7838)

(assert (=> b!253296 (= lt!127005 e!164241)))

(declare-fun c!42699 () Bool)

(assert (=> b!253296 (= c!42699 (arrayContainsKey!0 (_keys!6830 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253297 () Bool)

(declare-fun res!123998 () Bool)

(assert (=> b!253297 (=> res!123998 e!164229)))

(assert (=> b!253297 (= res!123998 (not (arrayNoDuplicates!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 Nil!3769)))))

(declare-fun b!253298 () Bool)

(declare-fun res!124002 () Bool)

(declare-fun e!164228 () Bool)

(assert (=> b!253298 (=> (not res!124002) (not e!164228))))

(assert (=> b!253298 (= res!124002 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!253299 () Bool)

(declare-fun Unit!7842 () Unit!7838)

(assert (=> b!253299 (= e!164231 Unit!7842)))

(declare-fun lt!127009 () Unit!7838)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!410 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 64) Int) Unit!7838)

(assert (=> b!253299 (= lt!127009 (lemmaInListMapThenSeekEntryOrOpenFindsIt!410 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 (defaultEntry!4678 thiss!1504)))))

(assert (=> b!253299 false))

(declare-fun b!253300 () Bool)

(declare-fun e!164232 () Bool)

(declare-fun e!164240 () Bool)

(assert (=> b!253300 (= e!164232 (and e!164240 mapRes!11100))))

(declare-fun condMapEmpty!11100 () Bool)

(declare-fun mapDefault!11100 () ValueCell!2919)

(assert (=> b!253300 (= condMapEmpty!11100 (= (arr!5865 (_values!4661 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2919)) mapDefault!11100)))))

(declare-fun b!253301 () Bool)

(declare-fun tp_is_empty!6525 () Bool)

(assert (=> b!253301 (= e!164240 tp_is_empty!6525)))

(declare-fun b!253302 () Bool)

(declare-fun c!42698 () Bool)

(assert (=> b!253302 (= c!42698 ((_ is MissingVacant!1149) lt!127008))))

(assert (=> b!253302 (= e!164239 e!164234)))

(declare-fun b!253303 () Bool)

(assert (=> b!253303 (= e!164236 tp_is_empty!6525)))

(declare-fun b!253304 () Bool)

(assert (=> b!253304 (= e!164228 e!164235)))

(declare-fun res!123995 () Bool)

(assert (=> b!253304 (=> (not res!123995) (not e!164235))))

(assert (=> b!253304 (= res!123995 (or (= lt!127008 (MissingZero!1149 index!297)) (= lt!127008 (MissingVacant!1149 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12380 (_ BitVec 32)) SeekEntryResult!1149)

(assert (=> b!253304 (= lt!127008 (seekEntryOrOpen!0 key!932 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(declare-fun b!253305 () Bool)

(declare-fun res!124001 () Bool)

(assert (=> b!253305 (=> res!124001 e!164229)))

(assert (=> b!253305 (= res!124001 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6213 (_keys!6830 thiss!1504)))))))

(declare-fun b!253306 () Bool)

(declare-fun res!123996 () Bool)

(assert (=> b!253306 (= res!123996 (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6769 lt!127008)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253306 (=> (not res!123996) (not e!164237))))

(declare-fun b!253307 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!253307 (= e!164229 (validKeyInArray!0 key!932))))

(declare-fun e!164230 () Bool)

(declare-fun array_inv!3871 (array!12380) Bool)

(declare-fun array_inv!3872 (array!12378) Bool)

(assert (=> b!253288 (= e!164230 (and tp!23273 tp_is_empty!6525 (array_inv!3871 (_keys!6830 thiss!1504)) (array_inv!3872 (_values!4661 thiss!1504)) e!164232))))

(declare-fun res!124003 () Bool)

(assert (=> start!24236 (=> (not res!124003) (not e!164228))))

(declare-fun valid!1455 (LongMapFixedSize!3738) Bool)

(assert (=> start!24236 (= res!124003 (valid!1455 thiss!1504))))

(assert (=> start!24236 e!164228))

(assert (=> start!24236 e!164230))

(assert (=> start!24236 true))

(assert (= (and start!24236 res!124003) b!253298))

(assert (= (and b!253298 res!124002) b!253304))

(assert (= (and b!253304 res!123995) b!253295))

(assert (= (and b!253295 c!42696) b!253299))

(assert (= (and b!253295 (not c!42696)) b!253284))

(assert (= (and b!253284 c!42697) b!253294))

(assert (= (and b!253284 (not c!42697)) b!253302))

(assert (= (and b!253294 res!123993) b!253286))

(assert (= (and b!253286 res!123992) b!253285))

(assert (= (and b!253302 c!42698) b!253287))

(assert (= (and b!253302 (not c!42698)) b!253293))

(assert (= (and b!253287 res!123991) b!253306))

(assert (= (and b!253306 res!123996) b!253291))

(assert (= (or b!253294 b!253287) bm!23890))

(assert (= (or b!253285 b!253291) bm!23891))

(assert (= (and b!253295 res!123999) b!253296))

(assert (= (and b!253296 c!42699) b!253292))

(assert (= (and b!253296 (not c!42699)) b!253290))

(assert (= (and b!253296 (not res!124000)) b!253289))

(assert (= (and b!253289 (not res!123994)) b!253283))

(assert (= (and b!253283 (not res!123997)) b!253297))

(assert (= (and b!253297 (not res!123998)) b!253305))

(assert (= (and b!253305 (not res!124001)) b!253307))

(assert (= (and b!253300 condMapEmpty!11100) mapIsEmpty!11100))

(assert (= (and b!253300 (not condMapEmpty!11100)) mapNonEmpty!11100))

(assert (= (and mapNonEmpty!11100 ((_ is ValueCellFull!2919) mapValue!11100)) b!253303))

(assert (= (and b!253300 ((_ is ValueCellFull!2919) mapDefault!11100)) b!253301))

(assert (= b!253288 b!253300))

(assert (= start!24236 b!253288))

(declare-fun m!269177 () Bool)

(assert (=> b!253306 m!269177))

(declare-fun m!269179 () Bool)

(assert (=> b!253284 m!269179))

(declare-fun m!269181 () Bool)

(assert (=> bm!23890 m!269181))

(declare-fun m!269183 () Bool)

(assert (=> b!253297 m!269183))

(declare-fun m!269185 () Bool)

(assert (=> b!253295 m!269185))

(declare-fun m!269187 () Bool)

(assert (=> b!253295 m!269187))

(assert (=> b!253295 m!269187))

(declare-fun m!269189 () Bool)

(assert (=> b!253295 m!269189))

(declare-fun m!269191 () Bool)

(assert (=> b!253283 m!269191))

(declare-fun m!269193 () Bool)

(assert (=> b!253286 m!269193))

(declare-fun m!269195 () Bool)

(assert (=> b!253299 m!269195))

(declare-fun m!269197 () Bool)

(assert (=> b!253288 m!269197))

(declare-fun m!269199 () Bool)

(assert (=> b!253288 m!269199))

(declare-fun m!269201 () Bool)

(assert (=> start!24236 m!269201))

(declare-fun m!269203 () Bool)

(assert (=> mapNonEmpty!11100 m!269203))

(declare-fun m!269205 () Bool)

(assert (=> b!253296 m!269205))

(declare-fun m!269207 () Bool)

(assert (=> b!253296 m!269207))

(declare-fun m!269209 () Bool)

(assert (=> b!253296 m!269209))

(declare-fun m!269211 () Bool)

(assert (=> b!253296 m!269211))

(declare-fun m!269213 () Bool)

(assert (=> b!253296 m!269213))

(declare-fun m!269215 () Bool)

(assert (=> b!253296 m!269215))

(declare-fun m!269217 () Bool)

(assert (=> b!253296 m!269217))

(declare-fun m!269219 () Bool)

(assert (=> b!253296 m!269219))

(declare-fun m!269221 () Bool)

(assert (=> b!253296 m!269221))

(declare-fun m!269223 () Bool)

(assert (=> b!253296 m!269223))

(declare-fun m!269225 () Bool)

(assert (=> b!253292 m!269225))

(declare-fun m!269227 () Bool)

(assert (=> b!253307 m!269227))

(declare-fun m!269229 () Bool)

(assert (=> b!253304 m!269229))

(assert (=> bm!23891 m!269207))

(check-sat (not b!253283) (not b!253292) (not b!253304) (not b!253284) (not b!253288) b_and!13721 (not bm!23891) (not bm!23890) (not mapNonEmpty!11100) (not b_next!6663) tp_is_empty!6525 (not b!253299) (not b!253295) (not start!24236) (not b!253297) (not b!253307) (not b!253296))
(check-sat b_and!13721 (not b_next!6663))
(get-model)

(declare-fun d!61345 () Bool)

(declare-fun e!164289 () Bool)

(assert (=> d!61345 e!164289))

(declare-fun res!124048 () Bool)

(assert (=> d!61345 (=> (not res!124048) (not e!164289))))

(declare-fun lt!127046 () SeekEntryResult!1149)

(assert (=> d!61345 (= res!124048 ((_ is Found!1149) lt!127046))))

(assert (=> d!61345 (= lt!127046 (seekEntryOrOpen!0 key!932 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(declare-fun lt!127045 () Unit!7838)

(declare-fun choose!1217 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 64) Int) Unit!7838)

(assert (=> d!61345 (= lt!127045 (choose!1217 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 (defaultEntry!4678 thiss!1504)))))

(assert (=> d!61345 (validMask!0 (mask!10911 thiss!1504))))

(assert (=> d!61345 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!410 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 (defaultEntry!4678 thiss!1504)) lt!127045)))

(declare-fun b!253387 () Bool)

(declare-fun res!124047 () Bool)

(assert (=> b!253387 (=> (not res!124047) (not e!164289))))

(assert (=> b!253387 (= res!124047 (inRange!0 (index!6767 lt!127046) (mask!10911 thiss!1504)))))

(declare-fun b!253388 () Bool)

(assert (=> b!253388 (= e!164289 (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6767 lt!127046)) key!932))))

(assert (=> b!253388 (and (bvsge (index!6767 lt!127046) #b00000000000000000000000000000000) (bvslt (index!6767 lt!127046) (size!6213 (_keys!6830 thiss!1504))))))

(assert (= (and d!61345 res!124048) b!253387))

(assert (= (and b!253387 res!124047) b!253388))

(assert (=> d!61345 m!269229))

(declare-fun m!269285 () Bool)

(assert (=> d!61345 m!269285))

(assert (=> d!61345 m!269205))

(declare-fun m!269287 () Bool)

(assert (=> b!253387 m!269287))

(declare-fun m!269289 () Bool)

(assert (=> b!253388 m!269289))

(assert (=> b!253299 d!61345))

(declare-fun b!253405 () Bool)

(declare-fun lt!127052 () SeekEntryResult!1149)

(assert (=> b!253405 (and (bvsge (index!6766 lt!127052) #b00000000000000000000000000000000) (bvslt (index!6766 lt!127052) (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun res!124060 () Bool)

(assert (=> b!253405 (= res!124060 (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6766 lt!127052)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!164300 () Bool)

(assert (=> b!253405 (=> (not res!124060) (not e!164300))))

(declare-fun b!253406 () Bool)

(declare-fun res!124057 () Bool)

(declare-fun e!164298 () Bool)

(assert (=> b!253406 (=> (not res!124057) (not e!164298))))

(assert (=> b!253406 (= res!124057 (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6769 lt!127052)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253406 (and (bvsge (index!6769 lt!127052) #b00000000000000000000000000000000) (bvslt (index!6769 lt!127052) (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun bm!23902 () Bool)

(declare-fun c!42716 () Bool)

(declare-fun call!23906 () Bool)

(assert (=> bm!23902 (= call!23906 (inRange!0 (ite c!42716 (index!6766 lt!127052) (index!6769 lt!127052)) (mask!10911 thiss!1504)))))

(declare-fun bm!23903 () Bool)

(declare-fun call!23905 () Bool)

(assert (=> bm!23903 (= call!23905 (arrayContainsKey!0 (_keys!6830 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!253407 () Bool)

(assert (=> b!253407 (= e!164298 (not call!23905))))

(declare-fun b!253408 () Bool)

(declare-fun res!124059 () Bool)

(assert (=> b!253408 (=> (not res!124059) (not e!164298))))

(assert (=> b!253408 (= res!124059 call!23906)))

(declare-fun e!164301 () Bool)

(assert (=> b!253408 (= e!164301 e!164298)))

(declare-fun b!253409 () Bool)

(declare-fun e!164299 () Bool)

(assert (=> b!253409 (= e!164299 e!164301)))

(declare-fun c!42717 () Bool)

(assert (=> b!253409 (= c!42717 ((_ is MissingVacant!1149) lt!127052))))

(declare-fun b!253410 () Bool)

(assert (=> b!253410 (= e!164301 ((_ is Undefined!1149) lt!127052))))

(declare-fun b!253411 () Bool)

(assert (=> b!253411 (= e!164300 (not call!23905))))

(declare-fun d!61347 () Bool)

(assert (=> d!61347 e!164299))

(assert (=> d!61347 (= c!42716 ((_ is MissingZero!1149) lt!127052))))

(assert (=> d!61347 (= lt!127052 (seekEntryOrOpen!0 key!932 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(declare-fun lt!127051 () Unit!7838)

(declare-fun choose!1218 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 64) Int) Unit!7838)

(assert (=> d!61347 (= lt!127051 (choose!1218 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 (defaultEntry!4678 thiss!1504)))))

(assert (=> d!61347 (validMask!0 (mask!10911 thiss!1504))))

(assert (=> d!61347 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!412 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 (defaultEntry!4678 thiss!1504)) lt!127051)))

(declare-fun b!253412 () Bool)

(assert (=> b!253412 (= e!164299 e!164300)))

(declare-fun res!124058 () Bool)

(assert (=> b!253412 (= res!124058 call!23906)))

(assert (=> b!253412 (=> (not res!124058) (not e!164300))))

(assert (= (and d!61347 c!42716) b!253412))

(assert (= (and d!61347 (not c!42716)) b!253409))

(assert (= (and b!253412 res!124058) b!253405))

(assert (= (and b!253405 res!124060) b!253411))

(assert (= (and b!253409 c!42717) b!253408))

(assert (= (and b!253409 (not c!42717)) b!253410))

(assert (= (and b!253408 res!124059) b!253406))

(assert (= (and b!253406 res!124057) b!253407))

(assert (= (or b!253412 b!253408) bm!23902))

(assert (= (or b!253411 b!253407) bm!23903))

(assert (=> d!61347 m!269229))

(declare-fun m!269291 () Bool)

(assert (=> d!61347 m!269291))

(assert (=> d!61347 m!269205))

(declare-fun m!269293 () Bool)

(assert (=> b!253406 m!269293))

(declare-fun m!269295 () Bool)

(assert (=> b!253405 m!269295))

(assert (=> bm!23903 m!269207))

(declare-fun m!269297 () Bool)

(assert (=> bm!23902 m!269297))

(assert (=> b!253284 d!61347))

(declare-fun d!61349 () Bool)

(assert (=> d!61349 (contains!1835 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)) key!932)))

(declare-fun lt!127055 () Unit!7838)

(declare-fun choose!1219 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 64) (_ BitVec 32) Int) Unit!7838)

(assert (=> d!61349 (= lt!127055 (choose!1219 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(assert (=> d!61349 (validMask!0 (mask!10911 thiss!1504))))

(assert (=> d!61349 (= (lemmaArrayContainsKeyThenInListMap!215 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)) lt!127055)))

(declare-fun bs!9040 () Bool)

(assert (= bs!9040 d!61349))

(assert (=> bs!9040 m!269187))

(assert (=> bs!9040 m!269187))

(assert (=> bs!9040 m!269189))

(declare-fun m!269299 () Bool)

(assert (=> bs!9040 m!269299))

(assert (=> bs!9040 m!269205))

(assert (=> b!253292 d!61349))

(declare-fun b!253421 () Bool)

(declare-fun e!164309 () Bool)

(declare-fun e!164308 () Bool)

(assert (=> b!253421 (= e!164309 e!164308)))

(declare-fun c!42720 () Bool)

(assert (=> b!253421 (= c!42720 (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23906 () Bool)

(declare-fun call!23909 () Bool)

(assert (=> bm!23906 (= call!23909 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(declare-fun b!253422 () Bool)

(declare-fun e!164310 () Bool)

(assert (=> b!253422 (= e!164310 call!23909)))

(declare-fun b!253423 () Bool)

(assert (=> b!253423 (= e!164308 e!164310)))

(declare-fun lt!127062 () (_ BitVec 64))

(assert (=> b!253423 (= lt!127062 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127063 () Unit!7838)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12380 (_ BitVec 64) (_ BitVec 32)) Unit!7838)

(assert (=> b!253423 (= lt!127063 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6830 thiss!1504) lt!127062 #b00000000000000000000000000000000))))

(assert (=> b!253423 (arrayContainsKey!0 (_keys!6830 thiss!1504) lt!127062 #b00000000000000000000000000000000)))

(declare-fun lt!127064 () Unit!7838)

(assert (=> b!253423 (= lt!127064 lt!127063)))

(declare-fun res!124066 () Bool)

(assert (=> b!253423 (= res!124066 (= (seekEntryOrOpen!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000) (_keys!6830 thiss!1504) (mask!10911 thiss!1504)) (Found!1149 #b00000000000000000000000000000000)))))

(assert (=> b!253423 (=> (not res!124066) (not e!164310))))

(declare-fun d!61351 () Bool)

(declare-fun res!124065 () Bool)

(assert (=> d!61351 (=> res!124065 e!164309)))

(assert (=> d!61351 (= res!124065 (bvsge #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(assert (=> d!61351 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)) e!164309)))

(declare-fun b!253424 () Bool)

(assert (=> b!253424 (= e!164308 call!23909)))

(assert (= (and d!61351 (not res!124065)) b!253421))

(assert (= (and b!253421 c!42720) b!253423))

(assert (= (and b!253421 (not c!42720)) b!253424))

(assert (= (and b!253423 res!124066) b!253422))

(assert (= (or b!253422 b!253424) bm!23906))

(declare-fun m!269301 () Bool)

(assert (=> b!253421 m!269301))

(assert (=> b!253421 m!269301))

(declare-fun m!269303 () Bool)

(assert (=> b!253421 m!269303))

(declare-fun m!269305 () Bool)

(assert (=> bm!23906 m!269305))

(assert (=> b!253423 m!269301))

(declare-fun m!269307 () Bool)

(assert (=> b!253423 m!269307))

(declare-fun m!269309 () Bool)

(assert (=> b!253423 m!269309))

(assert (=> b!253423 m!269301))

(declare-fun m!269311 () Bool)

(assert (=> b!253423 m!269311))

(assert (=> b!253283 d!61351))

(declare-fun d!61353 () Bool)

(assert (=> d!61353 (= (inRange!0 (ite c!42697 (index!6766 lt!127008) (index!6769 lt!127008)) (mask!10911 thiss!1504)) (and (bvsge (ite c!42697 (index!6766 lt!127008) (index!6769 lt!127008)) #b00000000000000000000000000000000) (bvslt (ite c!42697 (index!6766 lt!127008) (index!6769 lt!127008)) (bvadd (mask!10911 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23890 d!61353))

(declare-fun b!253437 () Bool)

(declare-fun e!164319 () SeekEntryResult!1149)

(declare-fun lt!127072 () SeekEntryResult!1149)

(assert (=> b!253437 (= e!164319 (Found!1149 (index!6768 lt!127072)))))

(declare-fun e!164317 () SeekEntryResult!1149)

(declare-fun b!253438 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12380 (_ BitVec 32)) SeekEntryResult!1149)

(assert (=> b!253438 (= e!164317 (seekKeyOrZeroReturnVacant!0 (x!24823 lt!127072) (index!6768 lt!127072) (index!6768 lt!127072) key!932 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(declare-fun b!253439 () Bool)

(declare-fun e!164318 () SeekEntryResult!1149)

(assert (=> b!253439 (= e!164318 e!164319)))

(declare-fun lt!127071 () (_ BitVec 64))

(assert (=> b!253439 (= lt!127071 (select (arr!5866 (_keys!6830 thiss!1504)) (index!6768 lt!127072)))))

(declare-fun c!42729 () Bool)

(assert (=> b!253439 (= c!42729 (= lt!127071 key!932))))

(declare-fun b!253440 () Bool)

(assert (=> b!253440 (= e!164317 (MissingZero!1149 (index!6768 lt!127072)))))

(declare-fun d!61355 () Bool)

(declare-fun lt!127073 () SeekEntryResult!1149)

(assert (=> d!61355 (and (or ((_ is Undefined!1149) lt!127073) (not ((_ is Found!1149) lt!127073)) (and (bvsge (index!6767 lt!127073) #b00000000000000000000000000000000) (bvslt (index!6767 lt!127073) (size!6213 (_keys!6830 thiss!1504))))) (or ((_ is Undefined!1149) lt!127073) ((_ is Found!1149) lt!127073) (not ((_ is MissingZero!1149) lt!127073)) (and (bvsge (index!6766 lt!127073) #b00000000000000000000000000000000) (bvslt (index!6766 lt!127073) (size!6213 (_keys!6830 thiss!1504))))) (or ((_ is Undefined!1149) lt!127073) ((_ is Found!1149) lt!127073) ((_ is MissingZero!1149) lt!127073) (not ((_ is MissingVacant!1149) lt!127073)) (and (bvsge (index!6769 lt!127073) #b00000000000000000000000000000000) (bvslt (index!6769 lt!127073) (size!6213 (_keys!6830 thiss!1504))))) (or ((_ is Undefined!1149) lt!127073) (ite ((_ is Found!1149) lt!127073) (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6767 lt!127073)) key!932) (ite ((_ is MissingZero!1149) lt!127073) (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6766 lt!127073)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1149) lt!127073) (= (select (arr!5866 (_keys!6830 thiss!1504)) (index!6769 lt!127073)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61355 (= lt!127073 e!164318)))

(declare-fun c!42728 () Bool)

(assert (=> d!61355 (= c!42728 (and ((_ is Intermediate!1149) lt!127072) (undefined!1961 lt!127072)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12380 (_ BitVec 32)) SeekEntryResult!1149)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61355 (= lt!127072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10911 thiss!1504)) key!932 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(assert (=> d!61355 (validMask!0 (mask!10911 thiss!1504))))

(assert (=> d!61355 (= (seekEntryOrOpen!0 key!932 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)) lt!127073)))

(declare-fun b!253441 () Bool)

(assert (=> b!253441 (= e!164318 Undefined!1149)))

(declare-fun b!253442 () Bool)

(declare-fun c!42727 () Bool)

(assert (=> b!253442 (= c!42727 (= lt!127071 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!253442 (= e!164319 e!164317)))

(assert (= (and d!61355 c!42728) b!253441))

(assert (= (and d!61355 (not c!42728)) b!253439))

(assert (= (and b!253439 c!42729) b!253437))

(assert (= (and b!253439 (not c!42729)) b!253442))

(assert (= (and b!253442 c!42727) b!253440))

(assert (= (and b!253442 (not c!42727)) b!253438))

(declare-fun m!269313 () Bool)

(assert (=> b!253438 m!269313))

(declare-fun m!269315 () Bool)

(assert (=> b!253439 m!269315))

(declare-fun m!269317 () Bool)

(assert (=> d!61355 m!269317))

(declare-fun m!269319 () Bool)

(assert (=> d!61355 m!269319))

(declare-fun m!269321 () Bool)

(assert (=> d!61355 m!269321))

(assert (=> d!61355 m!269205))

(assert (=> d!61355 m!269319))

(declare-fun m!269323 () Bool)

(assert (=> d!61355 m!269323))

(declare-fun m!269325 () Bool)

(assert (=> d!61355 m!269325))

(assert (=> b!253304 d!61355))

(declare-fun bm!23909 () Bool)

(declare-fun call!23912 () Bool)

(declare-fun c!42732 () Bool)

(assert (=> bm!23909 (= call!23912 (arrayNoDuplicates!0 (_keys!6830 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42732 (Cons!3768 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000) Nil!3769) Nil!3769)))))

(declare-fun b!253453 () Bool)

(declare-fun e!164330 () Bool)

(assert (=> b!253453 (= e!164330 call!23912)))

(declare-fun b!253454 () Bool)

(assert (=> b!253454 (= e!164330 call!23912)))

(declare-fun b!253455 () Bool)

(declare-fun e!164331 () Bool)

(declare-fun e!164329 () Bool)

(assert (=> b!253455 (= e!164331 e!164329)))

(declare-fun res!124075 () Bool)

(assert (=> b!253455 (=> (not res!124075) (not e!164329))))

(declare-fun e!164328 () Bool)

(assert (=> b!253455 (= res!124075 (not e!164328))))

(declare-fun res!124074 () Bool)

(assert (=> b!253455 (=> (not res!124074) (not e!164328))))

(assert (=> b!253455 (= res!124074 (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61357 () Bool)

(declare-fun res!124073 () Bool)

(assert (=> d!61357 (=> res!124073 e!164331)))

(assert (=> d!61357 (= res!124073 (bvsge #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(assert (=> d!61357 (= (arrayNoDuplicates!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 Nil!3769) e!164331)))

(declare-fun b!253456 () Bool)

(assert (=> b!253456 (= e!164329 e!164330)))

(assert (=> b!253456 (= c!42732 (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!253457 () Bool)

(declare-fun contains!1836 (List!3772 (_ BitVec 64)) Bool)

(assert (=> b!253457 (= e!164328 (contains!1836 Nil!3769 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61357 (not res!124073)) b!253455))

(assert (= (and b!253455 res!124074) b!253457))

(assert (= (and b!253455 res!124075) b!253456))

(assert (= (and b!253456 c!42732) b!253454))

(assert (= (and b!253456 (not c!42732)) b!253453))

(assert (= (or b!253454 b!253453) bm!23909))

(assert (=> bm!23909 m!269301))

(declare-fun m!269327 () Bool)

(assert (=> bm!23909 m!269327))

(assert (=> b!253455 m!269301))

(assert (=> b!253455 m!269301))

(assert (=> b!253455 m!269303))

(assert (=> b!253456 m!269301))

(assert (=> b!253456 m!269301))

(assert (=> b!253456 m!269303))

(assert (=> b!253457 m!269301))

(assert (=> b!253457 m!269301))

(declare-fun m!269329 () Bool)

(assert (=> b!253457 m!269329))

(assert (=> b!253297 d!61357))

(declare-fun d!61359 () Bool)

(assert (=> d!61359 (= (array_inv!3871 (_keys!6830 thiss!1504)) (bvsge (size!6213 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!253288 d!61359))

(declare-fun d!61361 () Bool)

(assert (=> d!61361 (= (array_inv!3872 (_values!4661 thiss!1504)) (bvsge (size!6212 (_values!4661 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!253288 d!61361))

(declare-fun d!61363 () Bool)

(declare-fun res!124082 () Bool)

(declare-fun e!164334 () Bool)

(assert (=> d!61363 (=> (not res!124082) (not e!164334))))

(declare-fun simpleValid!268 (LongMapFixedSize!3738) Bool)

(assert (=> d!61363 (= res!124082 (simpleValid!268 thiss!1504))))

(assert (=> d!61363 (= (valid!1455 thiss!1504) e!164334)))

(declare-fun b!253464 () Bool)

(declare-fun res!124083 () Bool)

(assert (=> b!253464 (=> (not res!124083) (not e!164334))))

(assert (=> b!253464 (= res!124083 (= (arrayCountValidKeys!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) (_size!1918 thiss!1504)))))

(declare-fun b!253465 () Bool)

(declare-fun res!124084 () Bool)

(assert (=> b!253465 (=> (not res!124084) (not e!164334))))

(assert (=> b!253465 (= res!124084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6830 thiss!1504) (mask!10911 thiss!1504)))))

(declare-fun b!253466 () Bool)

(assert (=> b!253466 (= e!164334 (arrayNoDuplicates!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 Nil!3769))))

(assert (= (and d!61363 res!124082) b!253464))

(assert (= (and b!253464 res!124083) b!253465))

(assert (= (and b!253465 res!124084) b!253466))

(declare-fun m!269331 () Bool)

(assert (=> d!61363 m!269331))

(assert (=> b!253464 m!269215))

(assert (=> b!253465 m!269191))

(assert (=> b!253466 m!269183))

(assert (=> start!24236 d!61363))

(declare-fun d!61365 () Bool)

(assert (=> d!61365 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!253307 d!61365))

(declare-fun b!253476 () Bool)

(declare-fun res!124095 () Bool)

(declare-fun e!164340 () Bool)

(assert (=> b!253476 (=> (not res!124095) (not e!164340))))

(assert (=> b!253476 (= res!124095 (validKeyInArray!0 key!932))))

(declare-fun b!253477 () Bool)

(assert (=> b!253477 (= e!164340 (bvslt (size!6213 (_keys!6830 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!61367 () Bool)

(declare-fun e!164339 () Bool)

(assert (=> d!61367 e!164339))

(declare-fun res!124094 () Bool)

(assert (=> d!61367 (=> (not res!124094) (not e!164339))))

(assert (=> d!61367 (= res!124094 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6213 (_keys!6830 thiss!1504)))))))

(declare-fun lt!127076 () Unit!7838)

(declare-fun choose!1 (array!12380 (_ BitVec 32) (_ BitVec 64)) Unit!7838)

(assert (=> d!61367 (= lt!127076 (choose!1 (_keys!6830 thiss!1504) index!297 key!932))))

(assert (=> d!61367 e!164340))

(declare-fun res!124096 () Bool)

(assert (=> d!61367 (=> (not res!124096) (not e!164340))))

(assert (=> d!61367 (= res!124096 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6213 (_keys!6830 thiss!1504)))))))

(assert (=> d!61367 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6830 thiss!1504) index!297 key!932) lt!127076)))

(declare-fun b!253478 () Bool)

(assert (=> b!253478 (= e!164339 (= (arrayCountValidKeys!0 (array!12381 (store (arr!5866 (_keys!6830 thiss!1504)) index!297 key!932) (size!6213 (_keys!6830 thiss!1504))) #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!253475 () Bool)

(declare-fun res!124093 () Bool)

(assert (=> b!253475 (=> (not res!124093) (not e!164340))))

(assert (=> b!253475 (= res!124093 (not (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) index!297))))))

(assert (= (and d!61367 res!124096) b!253475))

(assert (= (and b!253475 res!124093) b!253476))

(assert (= (and b!253476 res!124095) b!253477))

(assert (= (and d!61367 res!124094) b!253478))

(assert (=> b!253476 m!269227))

(declare-fun m!269333 () Bool)

(assert (=> d!61367 m!269333))

(assert (=> b!253478 m!269213))

(declare-fun m!269335 () Bool)

(assert (=> b!253478 m!269335))

(assert (=> b!253478 m!269215))

(declare-fun m!269337 () Bool)

(assert (=> b!253475 m!269337))

(assert (=> b!253475 m!269337))

(declare-fun m!269339 () Bool)

(assert (=> b!253475 m!269339))

(assert (=> b!253296 d!61367))

(declare-fun d!61369 () Bool)

(declare-fun lt!127079 () (_ BitVec 32))

(assert (=> d!61369 (and (bvsge lt!127079 #b00000000000000000000000000000000) (bvsle lt!127079 (bvsub (size!6213 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!164346 () (_ BitVec 32))

(assert (=> d!61369 (= lt!127079 e!164346)))

(declare-fun c!42738 () Bool)

(assert (=> d!61369 (= c!42738 (bvsge #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(assert (=> d!61369 (and (bvsle #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6213 (_keys!6830 thiss!1504)) (size!6213 (_keys!6830 thiss!1504))))))

(assert (=> d!61369 (= (arrayCountValidKeys!0 (_keys!6830 thiss!1504) #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) lt!127079)))

(declare-fun b!253487 () Bool)

(assert (=> b!253487 (= e!164346 #b00000000000000000000000000000000)))

(declare-fun b!253488 () Bool)

(declare-fun e!164345 () (_ BitVec 32))

(declare-fun call!23915 () (_ BitVec 32))

(assert (=> b!253488 (= e!164345 call!23915)))

(declare-fun b!253489 () Bool)

(assert (=> b!253489 (= e!164345 (bvadd #b00000000000000000000000000000001 call!23915))))

(declare-fun bm!23912 () Bool)

(assert (=> bm!23912 (= call!23915 (arrayCountValidKeys!0 (_keys!6830 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun b!253490 () Bool)

(assert (=> b!253490 (= e!164346 e!164345)))

(declare-fun c!42737 () Bool)

(assert (=> b!253490 (= c!42737 (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61369 c!42738) b!253487))

(assert (= (and d!61369 (not c!42738)) b!253490))

(assert (= (and b!253490 c!42737) b!253489))

(assert (= (and b!253490 (not c!42737)) b!253488))

(assert (= (or b!253489 b!253488) bm!23912))

(declare-fun m!269341 () Bool)

(assert (=> bm!23912 m!269341))

(assert (=> b!253490 m!269301))

(assert (=> b!253490 m!269301))

(assert (=> b!253490 m!269303))

(assert (=> b!253296 d!61369))

(declare-fun b!253491 () Bool)

(declare-fun e!164348 () Bool)

(declare-fun e!164347 () Bool)

(assert (=> b!253491 (= e!164348 e!164347)))

(declare-fun c!42739 () Bool)

(assert (=> b!253491 (= c!42739 (validKeyInArray!0 (select (arr!5866 lt!127001) #b00000000000000000000000000000000)))))

(declare-fun bm!23913 () Bool)

(declare-fun call!23916 () Bool)

(assert (=> bm!23913 (= call!23916 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!127001 (mask!10911 thiss!1504)))))

(declare-fun b!253492 () Bool)

(declare-fun e!164349 () Bool)

(assert (=> b!253492 (= e!164349 call!23916)))

(declare-fun b!253493 () Bool)

(assert (=> b!253493 (= e!164347 e!164349)))

(declare-fun lt!127080 () (_ BitVec 64))

(assert (=> b!253493 (= lt!127080 (select (arr!5866 lt!127001) #b00000000000000000000000000000000))))

(declare-fun lt!127081 () Unit!7838)

(assert (=> b!253493 (= lt!127081 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!127001 lt!127080 #b00000000000000000000000000000000))))

(assert (=> b!253493 (arrayContainsKey!0 lt!127001 lt!127080 #b00000000000000000000000000000000)))

(declare-fun lt!127082 () Unit!7838)

(assert (=> b!253493 (= lt!127082 lt!127081)))

(declare-fun res!124098 () Bool)

(assert (=> b!253493 (= res!124098 (= (seekEntryOrOpen!0 (select (arr!5866 lt!127001) #b00000000000000000000000000000000) lt!127001 (mask!10911 thiss!1504)) (Found!1149 #b00000000000000000000000000000000)))))

(assert (=> b!253493 (=> (not res!124098) (not e!164349))))

(declare-fun d!61371 () Bool)

(declare-fun res!124097 () Bool)

(assert (=> d!61371 (=> res!124097 e!164348)))

(assert (=> d!61371 (= res!124097 (bvsge #b00000000000000000000000000000000 (size!6213 lt!127001)))))

(assert (=> d!61371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127001 (mask!10911 thiss!1504)) e!164348)))

(declare-fun b!253494 () Bool)

(assert (=> b!253494 (= e!164347 call!23916)))

(assert (= (and d!61371 (not res!124097)) b!253491))

(assert (= (and b!253491 c!42739) b!253493))

(assert (= (and b!253491 (not c!42739)) b!253494))

(assert (= (and b!253493 res!124098) b!253492))

(assert (= (or b!253492 b!253494) bm!23913))

(declare-fun m!269343 () Bool)

(assert (=> b!253491 m!269343))

(assert (=> b!253491 m!269343))

(declare-fun m!269345 () Bool)

(assert (=> b!253491 m!269345))

(declare-fun m!269347 () Bool)

(assert (=> bm!23913 m!269347))

(assert (=> b!253493 m!269343))

(declare-fun m!269349 () Bool)

(assert (=> b!253493 m!269349))

(declare-fun m!269351 () Bool)

(assert (=> b!253493 m!269351))

(assert (=> b!253493 m!269343))

(declare-fun m!269353 () Bool)

(assert (=> b!253493 m!269353))

(assert (=> b!253296 d!61371))

(declare-fun d!61373 () Bool)

(assert (=> d!61373 (= (validMask!0 (mask!10911 thiss!1504)) (and (or (= (mask!10911 thiss!1504) #b00000000000000000000000000000111) (= (mask!10911 thiss!1504) #b00000000000000000000000000001111) (= (mask!10911 thiss!1504) #b00000000000000000000000000011111) (= (mask!10911 thiss!1504) #b00000000000000000000000000111111) (= (mask!10911 thiss!1504) #b00000000000000000000000001111111) (= (mask!10911 thiss!1504) #b00000000000000000000000011111111) (= (mask!10911 thiss!1504) #b00000000000000000000000111111111) (= (mask!10911 thiss!1504) #b00000000000000000000001111111111) (= (mask!10911 thiss!1504) #b00000000000000000000011111111111) (= (mask!10911 thiss!1504) #b00000000000000000000111111111111) (= (mask!10911 thiss!1504) #b00000000000000000001111111111111) (= (mask!10911 thiss!1504) #b00000000000000000011111111111111) (= (mask!10911 thiss!1504) #b00000000000000000111111111111111) (= (mask!10911 thiss!1504) #b00000000000000001111111111111111) (= (mask!10911 thiss!1504) #b00000000000000011111111111111111) (= (mask!10911 thiss!1504) #b00000000000000111111111111111111) (= (mask!10911 thiss!1504) #b00000000000001111111111111111111) (= (mask!10911 thiss!1504) #b00000000000011111111111111111111) (= (mask!10911 thiss!1504) #b00000000000111111111111111111111) (= (mask!10911 thiss!1504) #b00000000001111111111111111111111) (= (mask!10911 thiss!1504) #b00000000011111111111111111111111) (= (mask!10911 thiss!1504) #b00000000111111111111111111111111) (= (mask!10911 thiss!1504) #b00000001111111111111111111111111) (= (mask!10911 thiss!1504) #b00000011111111111111111111111111) (= (mask!10911 thiss!1504) #b00000111111111111111111111111111) (= (mask!10911 thiss!1504) #b00001111111111111111111111111111) (= (mask!10911 thiss!1504) #b00011111111111111111111111111111) (= (mask!10911 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10911 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!253296 d!61373))

(declare-fun bm!23914 () Bool)

(declare-fun call!23917 () Bool)

(declare-fun c!42740 () Bool)

(assert (=> bm!23914 (= call!23917 (arrayNoDuplicates!0 lt!127001 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42740 (Cons!3768 (select (arr!5866 lt!127001) #b00000000000000000000000000000000) Nil!3769) Nil!3769)))))

(declare-fun b!253495 () Bool)

(declare-fun e!164352 () Bool)

(assert (=> b!253495 (= e!164352 call!23917)))

(declare-fun b!253496 () Bool)

(assert (=> b!253496 (= e!164352 call!23917)))

(declare-fun b!253497 () Bool)

(declare-fun e!164353 () Bool)

(declare-fun e!164351 () Bool)

(assert (=> b!253497 (= e!164353 e!164351)))

(declare-fun res!124101 () Bool)

(assert (=> b!253497 (=> (not res!124101) (not e!164351))))

(declare-fun e!164350 () Bool)

(assert (=> b!253497 (= res!124101 (not e!164350))))

(declare-fun res!124100 () Bool)

(assert (=> b!253497 (=> (not res!124100) (not e!164350))))

(assert (=> b!253497 (= res!124100 (validKeyInArray!0 (select (arr!5866 lt!127001) #b00000000000000000000000000000000)))))

(declare-fun d!61375 () Bool)

(declare-fun res!124099 () Bool)

(assert (=> d!61375 (=> res!124099 e!164353)))

(assert (=> d!61375 (= res!124099 (bvsge #b00000000000000000000000000000000 (size!6213 lt!127001)))))

(assert (=> d!61375 (= (arrayNoDuplicates!0 lt!127001 #b00000000000000000000000000000000 Nil!3769) e!164353)))

(declare-fun b!253498 () Bool)

(assert (=> b!253498 (= e!164351 e!164352)))

(assert (=> b!253498 (= c!42740 (validKeyInArray!0 (select (arr!5866 lt!127001) #b00000000000000000000000000000000)))))

(declare-fun b!253499 () Bool)

(assert (=> b!253499 (= e!164350 (contains!1836 Nil!3769 (select (arr!5866 lt!127001) #b00000000000000000000000000000000)))))

(assert (= (and d!61375 (not res!124099)) b!253497))

(assert (= (and b!253497 res!124100) b!253499))

(assert (= (and b!253497 res!124101) b!253498))

(assert (= (and b!253498 c!42740) b!253496))

(assert (= (and b!253498 (not c!42740)) b!253495))

(assert (= (or b!253496 b!253495) bm!23914))

(assert (=> bm!23914 m!269343))

(declare-fun m!269355 () Bool)

(assert (=> bm!23914 m!269355))

(assert (=> b!253497 m!269343))

(assert (=> b!253497 m!269343))

(assert (=> b!253497 m!269345))

(assert (=> b!253498 m!269343))

(assert (=> b!253498 m!269343))

(assert (=> b!253498 m!269345))

(assert (=> b!253499 m!269343))

(assert (=> b!253499 m!269343))

(declare-fun m!269357 () Bool)

(assert (=> b!253499 m!269357))

(assert (=> b!253296 d!61375))

(declare-fun d!61377 () Bool)

(declare-fun lt!127083 () (_ BitVec 32))

(assert (=> d!61377 (and (bvsge lt!127083 #b00000000000000000000000000000000) (bvsle lt!127083 (bvsub (size!6213 lt!127001) #b00000000000000000000000000000000)))))

(declare-fun e!164355 () (_ BitVec 32))

(assert (=> d!61377 (= lt!127083 e!164355)))

(declare-fun c!42742 () Bool)

(assert (=> d!61377 (= c!42742 (bvsge #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(assert (=> d!61377 (and (bvsle #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6213 (_keys!6830 thiss!1504)) (size!6213 lt!127001)))))

(assert (=> d!61377 (= (arrayCountValidKeys!0 lt!127001 #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) lt!127083)))

(declare-fun b!253500 () Bool)

(assert (=> b!253500 (= e!164355 #b00000000000000000000000000000000)))

(declare-fun b!253501 () Bool)

(declare-fun e!164354 () (_ BitVec 32))

(declare-fun call!23918 () (_ BitVec 32))

(assert (=> b!253501 (= e!164354 call!23918)))

(declare-fun b!253502 () Bool)

(assert (=> b!253502 (= e!164354 (bvadd #b00000000000000000000000000000001 call!23918))))

(declare-fun bm!23915 () Bool)

(assert (=> bm!23915 (= call!23918 (arrayCountValidKeys!0 lt!127001 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun b!253503 () Bool)

(assert (=> b!253503 (= e!164355 e!164354)))

(declare-fun c!42741 () Bool)

(assert (=> b!253503 (= c!42741 (validKeyInArray!0 (select (arr!5866 lt!127001) #b00000000000000000000000000000000)))))

(assert (= (and d!61377 c!42742) b!253500))

(assert (= (and d!61377 (not c!42742)) b!253503))

(assert (= (and b!253503 c!42741) b!253502))

(assert (= (and b!253503 (not c!42741)) b!253501))

(assert (= (or b!253502 b!253501) bm!23915))

(declare-fun m!269359 () Bool)

(assert (=> bm!23915 m!269359))

(assert (=> b!253503 m!269343))

(assert (=> b!253503 m!269343))

(assert (=> b!253503 m!269345))

(assert (=> b!253296 d!61377))

(declare-fun d!61379 () Bool)

(declare-fun e!164358 () Bool)

(assert (=> d!61379 e!164358))

(declare-fun res!124104 () Bool)

(assert (=> d!61379 (=> (not res!124104) (not e!164358))))

(assert (=> d!61379 (= res!124104 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6213 (_keys!6830 thiss!1504)))))))

(declare-fun lt!127086 () Unit!7838)

(declare-fun choose!41 (array!12380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3772) Unit!7838)

(assert (=> d!61379 (= lt!127086 (choose!41 (_keys!6830 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3769))))

(assert (=> d!61379 (bvslt (size!6213 (_keys!6830 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61379 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6830 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3769) lt!127086)))

(declare-fun b!253506 () Bool)

(assert (=> b!253506 (= e!164358 (arrayNoDuplicates!0 (array!12381 (store (arr!5866 (_keys!6830 thiss!1504)) index!297 key!932) (size!6213 (_keys!6830 thiss!1504))) #b00000000000000000000000000000000 Nil!3769))))

(assert (= (and d!61379 res!124104) b!253506))

(declare-fun m!269361 () Bool)

(assert (=> d!61379 m!269361))

(assert (=> b!253506 m!269213))

(declare-fun m!269363 () Bool)

(assert (=> b!253506 m!269363))

(assert (=> b!253296 d!61379))

(declare-fun d!61381 () Bool)

(declare-fun res!124109 () Bool)

(declare-fun e!164363 () Bool)

(assert (=> d!61381 (=> res!124109 e!164363)))

(assert (=> d!61381 (= res!124109 (= (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61381 (= (arrayContainsKey!0 (_keys!6830 thiss!1504) key!932 #b00000000000000000000000000000000) e!164363)))

(declare-fun b!253511 () Bool)

(declare-fun e!164364 () Bool)

(assert (=> b!253511 (= e!164363 e!164364)))

(declare-fun res!124110 () Bool)

(assert (=> b!253511 (=> (not res!124110) (not e!164364))))

(assert (=> b!253511 (= res!124110 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun b!253512 () Bool)

(assert (=> b!253512 (= e!164364 (arrayContainsKey!0 (_keys!6830 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61381 (not res!124109)) b!253511))

(assert (= (and b!253511 res!124110) b!253512))

(assert (=> d!61381 m!269301))

(declare-fun m!269365 () Bool)

(assert (=> b!253512 m!269365))

(assert (=> b!253296 d!61381))

(declare-fun d!61383 () Bool)

(declare-fun e!164367 () Bool)

(assert (=> d!61383 e!164367))

(declare-fun res!124113 () Bool)

(assert (=> d!61383 (=> (not res!124113) (not e!164367))))

(assert (=> d!61383 (= res!124113 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6213 (_keys!6830 thiss!1504)))))))

(declare-fun lt!127089 () Unit!7838)

(declare-fun choose!102 ((_ BitVec 64) array!12380 (_ BitVec 32) (_ BitVec 32)) Unit!7838)

(assert (=> d!61383 (= lt!127089 (choose!102 key!932 (_keys!6830 thiss!1504) index!297 (mask!10911 thiss!1504)))))

(assert (=> d!61383 (validMask!0 (mask!10911 thiss!1504))))

(assert (=> d!61383 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6830 thiss!1504) index!297 (mask!10911 thiss!1504)) lt!127089)))

(declare-fun b!253515 () Bool)

(assert (=> b!253515 (= e!164367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12381 (store (arr!5866 (_keys!6830 thiss!1504)) index!297 key!932) (size!6213 (_keys!6830 thiss!1504))) (mask!10911 thiss!1504)))))

(assert (= (and d!61383 res!124113) b!253515))

(declare-fun m!269367 () Bool)

(assert (=> d!61383 m!269367))

(assert (=> d!61383 m!269205))

(assert (=> b!253515 m!269213))

(declare-fun m!269369 () Bool)

(assert (=> b!253515 m!269369))

(assert (=> b!253296 d!61383))

(assert (=> bm!23891 d!61381))

(declare-fun d!61385 () Bool)

(assert (=> d!61385 (= (inRange!0 index!297 (mask!10911 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10911 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!253295 d!61385))

(declare-fun d!61387 () Bool)

(declare-fun e!164373 () Bool)

(assert (=> d!61387 e!164373))

(declare-fun res!124116 () Bool)

(assert (=> d!61387 (=> res!124116 e!164373)))

(declare-fun lt!127098 () Bool)

(assert (=> d!61387 (= res!124116 (not lt!127098))))

(declare-fun lt!127099 () Bool)

(assert (=> d!61387 (= lt!127098 lt!127099)))

(declare-fun lt!127101 () Unit!7838)

(declare-fun e!164372 () Unit!7838)

(assert (=> d!61387 (= lt!127101 e!164372)))

(declare-fun c!42745 () Bool)

(assert (=> d!61387 (= c!42745 lt!127099)))

(declare-fun containsKey!295 (List!3771 (_ BitVec 64)) Bool)

(assert (=> d!61387 (= lt!127099 (containsKey!295 (toList!1912 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504))) key!932))))

(assert (=> d!61387 (= (contains!1835 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)) key!932) lt!127098)))

(declare-fun b!253522 () Bool)

(declare-fun lt!127100 () Unit!7838)

(assert (=> b!253522 (= e!164372 lt!127100)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!244 (List!3771 (_ BitVec 64)) Unit!7838)

(assert (=> b!253522 (= lt!127100 (lemmaContainsKeyImpliesGetValueByKeyDefined!244 (toList!1912 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504))) key!932))))

(declare-datatypes ((Option!309 0))(
  ( (Some!308 (v!5378 V!8347)) (None!307) )
))
(declare-fun isDefined!245 (Option!309) Bool)

(declare-fun getValueByKey!303 (List!3771 (_ BitVec 64)) Option!309)

(assert (=> b!253522 (isDefined!245 (getValueByKey!303 (toList!1912 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504))) key!932))))

(declare-fun b!253523 () Bool)

(declare-fun Unit!7843 () Unit!7838)

(assert (=> b!253523 (= e!164372 Unit!7843)))

(declare-fun b!253524 () Bool)

(assert (=> b!253524 (= e!164373 (isDefined!245 (getValueByKey!303 (toList!1912 (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504))) key!932)))))

(assert (= (and d!61387 c!42745) b!253522))

(assert (= (and d!61387 (not c!42745)) b!253523))

(assert (= (and d!61387 (not res!124116)) b!253524))

(declare-fun m!269371 () Bool)

(assert (=> d!61387 m!269371))

(declare-fun m!269373 () Bool)

(assert (=> b!253522 m!269373))

(declare-fun m!269375 () Bool)

(assert (=> b!253522 m!269375))

(assert (=> b!253522 m!269375))

(declare-fun m!269377 () Bool)

(assert (=> b!253522 m!269377))

(assert (=> b!253524 m!269375))

(assert (=> b!253524 m!269375))

(assert (=> b!253524 m!269377))

(assert (=> b!253295 d!61387))

(declare-fun b!253567 () Bool)

(declare-fun e!164405 () Bool)

(declare-fun call!23933 () Bool)

(assert (=> b!253567 (= e!164405 (not call!23933))))

(declare-fun b!253568 () Bool)

(declare-fun e!164407 () Bool)

(declare-fun e!164400 () Bool)

(assert (=> b!253568 (= e!164407 e!164400)))

(declare-fun res!124139 () Bool)

(assert (=> b!253568 (=> (not res!124139) (not e!164400))))

(declare-fun lt!127146 () ListLongMap!3793)

(assert (=> b!253568 (= res!124139 (contains!1835 lt!127146 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!253568 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun b!253569 () Bool)

(declare-fun e!164411 () ListLongMap!3793)

(declare-fun call!23936 () ListLongMap!3793)

(assert (=> b!253569 (= e!164411 call!23936)))

(declare-fun b!253570 () Bool)

(declare-fun e!164403 () Bool)

(assert (=> b!253570 (= e!164403 (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!253571 () Bool)

(declare-fun e!164409 () ListLongMap!3793)

(assert (=> b!253571 (= e!164409 call!23936)))

(declare-fun b!253572 () Bool)

(declare-fun e!164404 () Bool)

(declare-fun apply!246 (ListLongMap!3793 (_ BitVec 64)) V!8347)

(assert (=> b!253572 (= e!164404 (= (apply!246 lt!127146 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4519 thiss!1504)))))

(declare-fun b!253573 () Bool)

(declare-fun c!42763 () Bool)

(assert (=> b!253573 (= c!42763 (and (not (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!253573 (= e!164411 e!164409)))

(declare-fun b!253574 () Bool)

(declare-fun e!164412 () Bool)

(assert (=> b!253574 (= e!164412 (validKeyInArray!0 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61389 () Bool)

(declare-fun e!164408 () Bool)

(assert (=> d!61389 e!164408))

(declare-fun res!124142 () Bool)

(assert (=> d!61389 (=> (not res!124142) (not e!164408))))

(assert (=> d!61389 (= res!124142 (or (bvsge #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))))

(declare-fun lt!127164 () ListLongMap!3793)

(assert (=> d!61389 (= lt!127146 lt!127164)))

(declare-fun lt!127160 () Unit!7838)

(declare-fun e!164410 () Unit!7838)

(assert (=> d!61389 (= lt!127160 e!164410)))

(declare-fun c!42759 () Bool)

(assert (=> d!61389 (= c!42759 e!164412)))

(declare-fun res!124141 () Bool)

(assert (=> d!61389 (=> (not res!124141) (not e!164412))))

(assert (=> d!61389 (= res!124141 (bvslt #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun e!164401 () ListLongMap!3793)

(assert (=> d!61389 (= lt!127164 e!164401)))

(declare-fun c!42762 () Bool)

(assert (=> d!61389 (= c!42762 (and (not (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61389 (validMask!0 (mask!10911 thiss!1504))))

(assert (=> d!61389 (= (getCurrentListMap!1435 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)) lt!127146)))

(declare-fun bm!23930 () Bool)

(declare-fun call!23937 () ListLongMap!3793)

(assert (=> bm!23930 (= call!23936 call!23937)))

(declare-fun b!253575 () Bool)

(declare-fun e!164402 () Bool)

(assert (=> b!253575 (= e!164408 e!164402)))

(declare-fun c!42761 () Bool)

(assert (=> b!253575 (= c!42761 (not (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!253576 () Bool)

(assert (=> b!253576 (= e!164405 e!164404)))

(declare-fun res!124137 () Bool)

(assert (=> b!253576 (= res!124137 call!23933)))

(assert (=> b!253576 (=> (not res!124137) (not e!164404))))

(declare-fun bm!23931 () Bool)

(declare-fun call!23938 () ListLongMap!3793)

(declare-fun getCurrentListMapNoExtraKeys!565 (array!12380 array!12378 (_ BitVec 32) (_ BitVec 32) V!8347 V!8347 (_ BitVec 32) Int) ListLongMap!3793)

(assert (=> bm!23931 (= call!23938 (getCurrentListMapNoExtraKeys!565 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(declare-fun bm!23932 () Bool)

(declare-fun call!23935 () ListLongMap!3793)

(declare-fun call!23934 () ListLongMap!3793)

(assert (=> bm!23932 (= call!23935 call!23934)))

(declare-fun b!253577 () Bool)

(declare-fun Unit!7844 () Unit!7838)

(assert (=> b!253577 (= e!164410 Unit!7844)))

(declare-fun b!253578 () Bool)

(declare-fun res!124136 () Bool)

(assert (=> b!253578 (=> (not res!124136) (not e!164408))))

(assert (=> b!253578 (= res!124136 e!164405)))

(declare-fun c!42760 () Bool)

(assert (=> b!253578 (= c!42760 (not (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!253579 () Bool)

(declare-fun res!124135 () Bool)

(assert (=> b!253579 (=> (not res!124135) (not e!164408))))

(assert (=> b!253579 (= res!124135 e!164407)))

(declare-fun res!124138 () Bool)

(assert (=> b!253579 (=> res!124138 e!164407)))

(assert (=> b!253579 (= res!124138 (not e!164403))))

(declare-fun res!124143 () Bool)

(assert (=> b!253579 (=> (not res!124143) (not e!164403))))

(assert (=> b!253579 (= res!124143 (bvslt #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(declare-fun bm!23933 () Bool)

(assert (=> bm!23933 (= call!23933 (contains!1835 lt!127146 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!253580 () Bool)

(declare-fun +!668 (ListLongMap!3793 tuple2!4866) ListLongMap!3793)

(assert (=> b!253580 (= e!164401 (+!668 call!23937 (tuple2!4867 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4519 thiss!1504))))))

(declare-fun bm!23934 () Bool)

(declare-fun call!23939 () Bool)

(assert (=> bm!23934 (= call!23939 (contains!1835 lt!127146 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!253581 () Bool)

(assert (=> b!253581 (= e!164402 (not call!23939))))

(declare-fun b!253582 () Bool)

(declare-fun lt!127157 () Unit!7838)

(assert (=> b!253582 (= e!164410 lt!127157)))

(declare-fun lt!127154 () ListLongMap!3793)

(assert (=> b!253582 (= lt!127154 (getCurrentListMapNoExtraKeys!565 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(declare-fun lt!127153 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127153 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127151 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127151 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127167 () Unit!7838)

(declare-fun addStillContains!222 (ListLongMap!3793 (_ BitVec 64) V!8347 (_ BitVec 64)) Unit!7838)

(assert (=> b!253582 (= lt!127167 (addStillContains!222 lt!127154 lt!127153 (zeroValue!4519 thiss!1504) lt!127151))))

(assert (=> b!253582 (contains!1835 (+!668 lt!127154 (tuple2!4867 lt!127153 (zeroValue!4519 thiss!1504))) lt!127151)))

(declare-fun lt!127149 () Unit!7838)

(assert (=> b!253582 (= lt!127149 lt!127167)))

(declare-fun lt!127165 () ListLongMap!3793)

(assert (=> b!253582 (= lt!127165 (getCurrentListMapNoExtraKeys!565 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(declare-fun lt!127166 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127166 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127158 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127158 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127156 () Unit!7838)

(declare-fun addApplyDifferent!222 (ListLongMap!3793 (_ BitVec 64) V!8347 (_ BitVec 64)) Unit!7838)

(assert (=> b!253582 (= lt!127156 (addApplyDifferent!222 lt!127165 lt!127166 (minValue!4519 thiss!1504) lt!127158))))

(assert (=> b!253582 (= (apply!246 (+!668 lt!127165 (tuple2!4867 lt!127166 (minValue!4519 thiss!1504))) lt!127158) (apply!246 lt!127165 lt!127158))))

(declare-fun lt!127155 () Unit!7838)

(assert (=> b!253582 (= lt!127155 lt!127156)))

(declare-fun lt!127163 () ListLongMap!3793)

(assert (=> b!253582 (= lt!127163 (getCurrentListMapNoExtraKeys!565 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(declare-fun lt!127152 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127152 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127161 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127161 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127162 () Unit!7838)

(assert (=> b!253582 (= lt!127162 (addApplyDifferent!222 lt!127163 lt!127152 (zeroValue!4519 thiss!1504) lt!127161))))

(assert (=> b!253582 (= (apply!246 (+!668 lt!127163 (tuple2!4867 lt!127152 (zeroValue!4519 thiss!1504))) lt!127161) (apply!246 lt!127163 lt!127161))))

(declare-fun lt!127159 () Unit!7838)

(assert (=> b!253582 (= lt!127159 lt!127162)))

(declare-fun lt!127147 () ListLongMap!3793)

(assert (=> b!253582 (= lt!127147 (getCurrentListMapNoExtraKeys!565 (_keys!6830 thiss!1504) (_values!4661 thiss!1504) (mask!10911 thiss!1504) (extraKeys!4415 thiss!1504) (zeroValue!4519 thiss!1504) (minValue!4519 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4678 thiss!1504)))))

(declare-fun lt!127148 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127148 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127150 () (_ BitVec 64))

(assert (=> b!253582 (= lt!127150 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!253582 (= lt!127157 (addApplyDifferent!222 lt!127147 lt!127148 (minValue!4519 thiss!1504) lt!127150))))

(assert (=> b!253582 (= (apply!246 (+!668 lt!127147 (tuple2!4867 lt!127148 (minValue!4519 thiss!1504))) lt!127150) (apply!246 lt!127147 lt!127150))))

(declare-fun b!253583 () Bool)

(declare-fun e!164406 () Bool)

(assert (=> b!253583 (= e!164406 (= (apply!246 lt!127146 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4519 thiss!1504)))))

(declare-fun b!253584 () Bool)

(assert (=> b!253584 (= e!164402 e!164406)))

(declare-fun res!124140 () Bool)

(assert (=> b!253584 (= res!124140 call!23939)))

(assert (=> b!253584 (=> (not res!124140) (not e!164406))))

(declare-fun b!253585 () Bool)

(assert (=> b!253585 (= e!164401 e!164411)))

(declare-fun c!42758 () Bool)

(assert (=> b!253585 (= c!42758 (and (not (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4415 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!23935 () Bool)

(assert (=> bm!23935 (= call!23934 call!23938)))

(declare-fun b!253586 () Bool)

(assert (=> b!253586 (= e!164409 call!23935)))

(declare-fun bm!23936 () Bool)

(assert (=> bm!23936 (= call!23937 (+!668 (ite c!42762 call!23938 (ite c!42758 call!23934 call!23935)) (ite (or c!42762 c!42758) (tuple2!4867 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4519 thiss!1504)) (tuple2!4867 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4519 thiss!1504)))))))

(declare-fun b!253587 () Bool)

(declare-fun get!3022 (ValueCell!2919 V!8347) V!8347)

(declare-fun dynLambda!584 (Int (_ BitVec 64)) V!8347)

(assert (=> b!253587 (= e!164400 (= (apply!246 lt!127146 (select (arr!5866 (_keys!6830 thiss!1504)) #b00000000000000000000000000000000)) (get!3022 (select (arr!5865 (_values!4661 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!584 (defaultEntry!4678 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!253587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6212 (_values!4661 thiss!1504))))))

(assert (=> b!253587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6213 (_keys!6830 thiss!1504))))))

(assert (= (and d!61389 c!42762) b!253580))

(assert (= (and d!61389 (not c!42762)) b!253585))

(assert (= (and b!253585 c!42758) b!253569))

(assert (= (and b!253585 (not c!42758)) b!253573))

(assert (= (and b!253573 c!42763) b!253571))

(assert (= (and b!253573 (not c!42763)) b!253586))

(assert (= (or b!253571 b!253586) bm!23932))

(assert (= (or b!253569 bm!23932) bm!23935))

(assert (= (or b!253569 b!253571) bm!23930))

(assert (= (or b!253580 bm!23935) bm!23931))

(assert (= (or b!253580 bm!23930) bm!23936))

(assert (= (and d!61389 res!124141) b!253574))

(assert (= (and d!61389 c!42759) b!253582))

(assert (= (and d!61389 (not c!42759)) b!253577))

(assert (= (and d!61389 res!124142) b!253579))

(assert (= (and b!253579 res!124143) b!253570))

(assert (= (and b!253579 (not res!124138)) b!253568))

(assert (= (and b!253568 res!124139) b!253587))

(assert (= (and b!253579 res!124135) b!253578))

(assert (= (and b!253578 c!42760) b!253576))

(assert (= (and b!253578 (not c!42760)) b!253567))

(assert (= (and b!253576 res!124137) b!253572))

(assert (= (or b!253576 b!253567) bm!23933))

(assert (= (and b!253578 res!124136) b!253575))

(assert (= (and b!253575 c!42761) b!253584))

(assert (= (and b!253575 (not c!42761)) b!253581))

(assert (= (and b!253584 res!124140) b!253583))

(assert (= (or b!253584 b!253581) bm!23934))

(declare-fun b_lambda!8157 () Bool)

(assert (=> (not b_lambda!8157) (not b!253587)))

(declare-fun t!8827 () Bool)

(declare-fun tb!3013 () Bool)

(assert (=> (and b!253288 (= (defaultEntry!4678 thiss!1504) (defaultEntry!4678 thiss!1504)) t!8827) tb!3013))

(declare-fun result!5345 () Bool)

(assert (=> tb!3013 (= result!5345 tp_is_empty!6525)))

(assert (=> b!253587 t!8827))

(declare-fun b_and!13725 () Bool)

(assert (= b_and!13721 (and (=> t!8827 result!5345) b_and!13725)))

(declare-fun m!269379 () Bool)

(assert (=> b!253580 m!269379))

(declare-fun m!269381 () Bool)

(assert (=> bm!23931 m!269381))

(declare-fun m!269383 () Bool)

(assert (=> b!253572 m!269383))

(declare-fun m!269385 () Bool)

(assert (=> b!253583 m!269385))

(assert (=> b!253587 m!269301))

(declare-fun m!269387 () Bool)

(assert (=> b!253587 m!269387))

(declare-fun m!269389 () Bool)

(assert (=> b!253587 m!269389))

(assert (=> b!253587 m!269389))

(declare-fun m!269391 () Bool)

(assert (=> b!253587 m!269391))

(declare-fun m!269393 () Bool)

(assert (=> b!253587 m!269393))

(assert (=> b!253587 m!269301))

(assert (=> b!253587 m!269391))

(declare-fun m!269395 () Bool)

(assert (=> b!253582 m!269395))

(declare-fun m!269397 () Bool)

(assert (=> b!253582 m!269397))

(declare-fun m!269399 () Bool)

(assert (=> b!253582 m!269399))

(declare-fun m!269401 () Bool)

(assert (=> b!253582 m!269401))

(declare-fun m!269403 () Bool)

(assert (=> b!253582 m!269403))

(declare-fun m!269405 () Bool)

(assert (=> b!253582 m!269405))

(declare-fun m!269407 () Bool)

(assert (=> b!253582 m!269407))

(declare-fun m!269409 () Bool)

(assert (=> b!253582 m!269409))

(declare-fun m!269411 () Bool)

(assert (=> b!253582 m!269411))

(declare-fun m!269413 () Bool)

(assert (=> b!253582 m!269413))

(assert (=> b!253582 m!269301))

(declare-fun m!269415 () Bool)

(assert (=> b!253582 m!269415))

(assert (=> b!253582 m!269395))

(declare-fun m!269417 () Bool)

(assert (=> b!253582 m!269417))

(assert (=> b!253582 m!269381))

(assert (=> b!253582 m!269405))

(declare-fun m!269419 () Bool)

(assert (=> b!253582 m!269419))

(assert (=> b!253582 m!269401))

(declare-fun m!269421 () Bool)

(assert (=> b!253582 m!269421))

(assert (=> b!253582 m!269407))

(declare-fun m!269423 () Bool)

(assert (=> b!253582 m!269423))

(assert (=> b!253568 m!269301))

(assert (=> b!253568 m!269301))

(declare-fun m!269425 () Bool)

(assert (=> b!253568 m!269425))

(declare-fun m!269427 () Bool)

(assert (=> bm!23933 m!269427))

(assert (=> d!61389 m!269205))

(assert (=> b!253574 m!269301))

(assert (=> b!253574 m!269301))

(assert (=> b!253574 m!269303))

(assert (=> b!253570 m!269301))

(assert (=> b!253570 m!269301))

(assert (=> b!253570 m!269303))

(declare-fun m!269429 () Bool)

(assert (=> bm!23936 m!269429))

(declare-fun m!269431 () Bool)

(assert (=> bm!23934 m!269431))

(assert (=> b!253295 d!61389))

(declare-fun mapIsEmpty!11106 () Bool)

(declare-fun mapRes!11106 () Bool)

(assert (=> mapIsEmpty!11106 mapRes!11106))

(declare-fun b!253596 () Bool)

(declare-fun e!164418 () Bool)

(assert (=> b!253596 (= e!164418 tp_is_empty!6525)))

(declare-fun mapNonEmpty!11106 () Bool)

(declare-fun tp!23283 () Bool)

(assert (=> mapNonEmpty!11106 (= mapRes!11106 (and tp!23283 e!164418))))

(declare-fun mapKey!11106 () (_ BitVec 32))

(declare-fun mapRest!11106 () (Array (_ BitVec 32) ValueCell!2919))

(declare-fun mapValue!11106 () ValueCell!2919)

(assert (=> mapNonEmpty!11106 (= mapRest!11100 (store mapRest!11106 mapKey!11106 mapValue!11106))))

(declare-fun b!253597 () Bool)

(declare-fun e!164417 () Bool)

(assert (=> b!253597 (= e!164417 tp_is_empty!6525)))

(declare-fun condMapEmpty!11106 () Bool)

(declare-fun mapDefault!11106 () ValueCell!2919)

(assert (=> mapNonEmpty!11100 (= condMapEmpty!11106 (= mapRest!11100 ((as const (Array (_ BitVec 32) ValueCell!2919)) mapDefault!11106)))))

(assert (=> mapNonEmpty!11100 (= tp!23274 (and e!164417 mapRes!11106))))

(assert (= (and mapNonEmpty!11100 condMapEmpty!11106) mapIsEmpty!11106))

(assert (= (and mapNonEmpty!11100 (not condMapEmpty!11106)) mapNonEmpty!11106))

(assert (= (and mapNonEmpty!11106 ((_ is ValueCellFull!2919) mapValue!11106)) b!253596))

(assert (= (and mapNonEmpty!11100 ((_ is ValueCellFull!2919) mapDefault!11106)) b!253597))

(declare-fun m!269433 () Bool)

(assert (=> mapNonEmpty!11106 m!269433))

(declare-fun b_lambda!8159 () Bool)

(assert (= b_lambda!8157 (or (and b!253288 b_free!6663) b_lambda!8159)))

(check-sat (not b!253522) (not b!253582) (not b!253476) b_and!13725 (not b!253570) (not bm!23934) (not b_next!6663) tp_is_empty!6525 (not b!253524) (not b!253497) (not b!253491) (not bm!23915) (not bm!23931) (not d!61363) (not b_lambda!8159) (not b!253574) (not b!253475) (not b!253493) (not mapNonEmpty!11106) (not b!253421) (not bm!23914) (not b!253387) (not b!253423) (not b!253438) (not b!253503) (not b!253506) (not b!253580) (not d!61355) (not b!253512) (not bm!23912) (not b!253456) (not b!253587) (not b!253515) (not d!61387) (not b!253499) (not d!61379) (not bm!23913) (not b!253490) (not b!253583) (not b!253568) (not d!61367) (not b!253464) (not b!253572) (not bm!23902) (not bm!23909) (not d!61389) (not b!253455) (not b!253465) (not d!61347) (not b!253466) (not d!61345) (not bm!23906) (not bm!23936) (not b!253457) (not b!253498) (not d!61383) (not b!253478) (not bm!23903) (not d!61349) (not bm!23933))
(check-sat b_and!13725 (not b_next!6663))
