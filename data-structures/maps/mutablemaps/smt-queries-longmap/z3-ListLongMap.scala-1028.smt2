; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21864 () Bool)

(assert start!21864)

(declare-fun b!220290 () Bool)

(declare-fun b_free!5919 () Bool)

(declare-fun b_next!5919 () Bool)

(assert (=> b!220290 (= b_free!5919 (not b_next!5919))))

(declare-fun tp!20899 () Bool)

(declare-fun b_and!12835 () Bool)

(assert (=> b!220290 (= tp!20899 b_and!12835)))

(declare-fun b!220280 () Bool)

(declare-fun e!143247 () Bool)

(declare-fun tp_is_empty!5781 () Bool)

(assert (=> b!220280 (= e!143247 tp_is_empty!5781)))

(declare-fun b!220281 () Bool)

(declare-fun res!108029 () Bool)

(declare-fun e!143243 () Bool)

(assert (=> b!220281 (=> (not res!108029) (not e!143243))))

(declare-datatypes ((V!7355 0))(
  ( (V!7356 (val!2935 Int)) )
))
(declare-datatypes ((ValueCell!2547 0))(
  ( (ValueCellFull!2547 (v!4951 V!7355)) (EmptyCell!2547) )
))
(declare-datatypes ((array!10804 0))(
  ( (array!10805 (arr!5121 (Array (_ BitVec 32) ValueCell!2547)) (size!5454 (_ BitVec 32))) )
))
(declare-datatypes ((array!10806 0))(
  ( (array!10807 (arr!5122 (Array (_ BitVec 32) (_ BitVec 64))) (size!5455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2994 0))(
  ( (LongMapFixedSize!2995 (defaultEntry!4156 Int) (mask!9956 (_ BitVec 32)) (extraKeys!3893 (_ BitVec 32)) (zeroValue!3997 V!7355) (minValue!3997 V!7355) (_size!1546 (_ BitVec 32)) (_keys!6210 array!10806) (_values!4139 array!10804) (_vacant!1546 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2994)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10806 (_ BitVec 32)) Bool)

(assert (=> b!220281 (= res!108029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6210 thiss!1504) (mask!9956 thiss!1504)))))

(declare-fun b!220282 () Bool)

(declare-fun res!108026 () Bool)

(assert (=> b!220282 (=> (not res!108026) (not e!143243))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220282 (= res!108026 (arrayContainsKey!0 (_keys!6210 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!220283 () Bool)

(declare-fun e!143242 () Bool)

(declare-fun e!143241 () Bool)

(assert (=> b!220283 (= e!143242 e!143241)))

(declare-fun res!108022 () Bool)

(declare-fun call!20590 () Bool)

(assert (=> b!220283 (= res!108022 call!20590)))

(assert (=> b!220283 (=> (not res!108022) (not e!143241))))

(declare-fun b!220284 () Bool)

(declare-fun e!143251 () Bool)

(declare-fun e!143246 () Bool)

(declare-fun mapRes!9841 () Bool)

(assert (=> b!220284 (= e!143251 (and e!143246 mapRes!9841))))

(declare-fun condMapEmpty!9841 () Bool)

(declare-fun mapDefault!9841 () ValueCell!2547)

(assert (=> b!220284 (= condMapEmpty!9841 (= (arr!5121 (_values!4139 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2547)) mapDefault!9841)))))

(declare-fun b!220285 () Bool)

(declare-fun res!108024 () Bool)

(assert (=> b!220285 (=> (not res!108024) (not e!143243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220285 (= res!108024 (validMask!0 (mask!9956 thiss!1504)))))

(declare-fun b!220286 () Bool)

(declare-fun e!143244 () Bool)

(assert (=> b!220286 (= e!143244 e!143243)))

(declare-fun res!108020 () Bool)

(assert (=> b!220286 (=> (not res!108020) (not e!143243))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!220286 (= res!108020 (inRange!0 index!297 (mask!9956 thiss!1504)))))

(declare-datatypes ((Unit!6568 0))(
  ( (Unit!6569) )
))
(declare-fun lt!112178 () Unit!6568)

(declare-fun e!143250 () Unit!6568)

(assert (=> b!220286 (= lt!112178 e!143250)))

(declare-fun c!36649 () Bool)

(declare-datatypes ((tuple2!4352 0))(
  ( (tuple2!4353 (_1!2186 (_ BitVec 64)) (_2!2186 V!7355)) )
))
(declare-datatypes ((List!3279 0))(
  ( (Nil!3276) (Cons!3275 (h!3923 tuple2!4352) (t!8246 List!3279)) )
))
(declare-datatypes ((ListLongMap!3279 0))(
  ( (ListLongMap!3280 (toList!1655 List!3279)) )
))
(declare-fun contains!1492 (ListLongMap!3279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1178 (array!10806 array!10804 (_ BitVec 32) (_ BitVec 32) V!7355 V!7355 (_ BitVec 32) Int) ListLongMap!3279)

(assert (=> b!220286 (= c!36649 (contains!1492 (getCurrentListMap!1178 (_keys!6210 thiss!1504) (_values!4139 thiss!1504) (mask!9956 thiss!1504) (extraKeys!3893 thiss!1504) (zeroValue!3997 thiss!1504) (minValue!3997 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4156 thiss!1504)) key!932))))

(declare-fun b!220287 () Bool)

(declare-fun res!108028 () Bool)

(declare-fun e!143249 () Bool)

(assert (=> b!220287 (=> (not res!108028) (not e!143249))))

(assert (=> b!220287 (= res!108028 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220288 () Bool)

(declare-fun res!108023 () Bool)

(declare-datatypes ((SeekEntryResult!820 0))(
  ( (MissingZero!820 (index!5450 (_ BitVec 32))) (Found!820 (index!5451 (_ BitVec 32))) (Intermediate!820 (undefined!1632 Bool) (index!5452 (_ BitVec 32)) (x!22960 (_ BitVec 32))) (Undefined!820) (MissingVacant!820 (index!5453 (_ BitVec 32))) )
))
(declare-fun lt!112177 () SeekEntryResult!820)

(assert (=> b!220288 (= res!108023 (= (select (arr!5122 (_keys!6210 thiss!1504)) (index!5453 lt!112177)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!220288 (=> (not res!108023) (not e!143241))))

(declare-fun b!220289 () Bool)

(declare-fun res!108027 () Bool)

(assert (=> b!220289 (=> (not res!108027) (not e!143243))))

(assert (=> b!220289 (= res!108027 (and (= (size!5454 (_values!4139 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9956 thiss!1504))) (= (size!5455 (_keys!6210 thiss!1504)) (size!5454 (_values!4139 thiss!1504))) (bvsge (mask!9956 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3893 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3893 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun c!36648 () Bool)

(declare-fun bm!20586 () Bool)

(assert (=> bm!20586 (= call!20590 (inRange!0 (ite c!36648 (index!5450 lt!112177) (index!5453 lt!112177)) (mask!9956 thiss!1504)))))

(declare-fun e!143240 () Bool)

(declare-fun array_inv!3381 (array!10806) Bool)

(declare-fun array_inv!3382 (array!10804) Bool)

(assert (=> b!220290 (= e!143240 (and tp!20899 tp_is_empty!5781 (array_inv!3381 (_keys!6210 thiss!1504)) (array_inv!3382 (_values!4139 thiss!1504)) e!143251))))

(declare-fun b!220291 () Bool)

(declare-fun e!143248 () Bool)

(declare-fun call!20589 () Bool)

(assert (=> b!220291 (= e!143248 (not call!20589))))

(declare-fun b!220292 () Bool)

(declare-fun res!108030 () Bool)

(assert (=> b!220292 (=> (not res!108030) (not e!143248))))

(assert (=> b!220292 (= res!108030 (= (select (arr!5122 (_keys!6210 thiss!1504)) (index!5450 lt!112177)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220293 () Bool)

(assert (=> b!220293 (= e!143243 false)))

(declare-fun lt!112175 () Bool)

(declare-datatypes ((List!3280 0))(
  ( (Nil!3277) (Cons!3276 (h!3924 (_ BitVec 64)) (t!8247 List!3280)) )
))
(declare-fun arrayNoDuplicates!0 (array!10806 (_ BitVec 32) List!3280) Bool)

(assert (=> b!220293 (= lt!112175 (arrayNoDuplicates!0 (_keys!6210 thiss!1504) #b00000000000000000000000000000000 Nil!3277))))

(declare-fun b!220294 () Bool)

(assert (=> b!220294 (= e!143241 (not call!20589))))

(declare-fun b!220295 () Bool)

(get-info :version)

(assert (=> b!220295 (= e!143242 ((_ is Undefined!820) lt!112177))))

(declare-fun b!220296 () Bool)

(declare-fun Unit!6570 () Unit!6568)

(assert (=> b!220296 (= e!143250 Unit!6570)))

(declare-fun lt!112176 () Unit!6568)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!203 (array!10806 array!10804 (_ BitVec 32) (_ BitVec 32) V!7355 V!7355 (_ BitVec 64) Int) Unit!6568)

(assert (=> b!220296 (= lt!112176 (lemmaInListMapThenSeekEntryOrOpenFindsIt!203 (_keys!6210 thiss!1504) (_values!4139 thiss!1504) (mask!9956 thiss!1504) (extraKeys!3893 thiss!1504) (zeroValue!3997 thiss!1504) (minValue!3997 thiss!1504) key!932 (defaultEntry!4156 thiss!1504)))))

(assert (=> b!220296 false))

(declare-fun b!220297 () Bool)

(declare-fun c!36650 () Bool)

(assert (=> b!220297 (= c!36650 ((_ is MissingVacant!820) lt!112177))))

(declare-fun e!143239 () Bool)

(assert (=> b!220297 (= e!143239 e!143242)))

(declare-fun b!220298 () Bool)

(assert (=> b!220298 (= e!143249 e!143244)))

(declare-fun res!108031 () Bool)

(assert (=> b!220298 (=> (not res!108031) (not e!143244))))

(assert (=> b!220298 (= res!108031 (or (= lt!112177 (MissingZero!820 index!297)) (= lt!112177 (MissingVacant!820 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10806 (_ BitVec 32)) SeekEntryResult!820)

(assert (=> b!220298 (= lt!112177 (seekEntryOrOpen!0 key!932 (_keys!6210 thiss!1504) (mask!9956 thiss!1504)))))

(declare-fun b!220299 () Bool)

(assert (=> b!220299 (= e!143246 tp_is_empty!5781)))

(declare-fun mapIsEmpty!9841 () Bool)

(assert (=> mapIsEmpty!9841 mapRes!9841))

(declare-fun b!220300 () Bool)

(declare-fun res!108025 () Bool)

(assert (=> b!220300 (=> (not res!108025) (not e!143248))))

(assert (=> b!220300 (= res!108025 call!20590)))

(assert (=> b!220300 (= e!143239 e!143248)))

(declare-fun res!108021 () Bool)

(assert (=> start!21864 (=> (not res!108021) (not e!143249))))

(declare-fun valid!1201 (LongMapFixedSize!2994) Bool)

(assert (=> start!21864 (= res!108021 (valid!1201 thiss!1504))))

(assert (=> start!21864 e!143249))

(assert (=> start!21864 e!143240))

(assert (=> start!21864 true))

(declare-fun mapNonEmpty!9841 () Bool)

(declare-fun tp!20898 () Bool)

(assert (=> mapNonEmpty!9841 (= mapRes!9841 (and tp!20898 e!143247))))

(declare-fun mapRest!9841 () (Array (_ BitVec 32) ValueCell!2547))

(declare-fun mapValue!9841 () ValueCell!2547)

(declare-fun mapKey!9841 () (_ BitVec 32))

(assert (=> mapNonEmpty!9841 (= (arr!5121 (_values!4139 thiss!1504)) (store mapRest!9841 mapKey!9841 mapValue!9841))))

(declare-fun b!220301 () Bool)

(declare-fun lt!112179 () Unit!6568)

(assert (=> b!220301 (= e!143250 lt!112179)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!213 (array!10806 array!10804 (_ BitVec 32) (_ BitVec 32) V!7355 V!7355 (_ BitVec 64) Int) Unit!6568)

(assert (=> b!220301 (= lt!112179 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!213 (_keys!6210 thiss!1504) (_values!4139 thiss!1504) (mask!9956 thiss!1504) (extraKeys!3893 thiss!1504) (zeroValue!3997 thiss!1504) (minValue!3997 thiss!1504) key!932 (defaultEntry!4156 thiss!1504)))))

(assert (=> b!220301 (= c!36648 ((_ is MissingZero!820) lt!112177))))

(assert (=> b!220301 e!143239))

(declare-fun bm!20587 () Bool)

(assert (=> bm!20587 (= call!20589 (arrayContainsKey!0 (_keys!6210 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!21864 res!108021) b!220287))

(assert (= (and b!220287 res!108028) b!220298))

(assert (= (and b!220298 res!108031) b!220286))

(assert (= (and b!220286 c!36649) b!220296))

(assert (= (and b!220286 (not c!36649)) b!220301))

(assert (= (and b!220301 c!36648) b!220300))

(assert (= (and b!220301 (not c!36648)) b!220297))

(assert (= (and b!220300 res!108025) b!220292))

(assert (= (and b!220292 res!108030) b!220291))

(assert (= (and b!220297 c!36650) b!220283))

(assert (= (and b!220297 (not c!36650)) b!220295))

(assert (= (and b!220283 res!108022) b!220288))

(assert (= (and b!220288 res!108023) b!220294))

(assert (= (or b!220300 b!220283) bm!20586))

(assert (= (or b!220291 b!220294) bm!20587))

(assert (= (and b!220286 res!108020) b!220282))

(assert (= (and b!220282 res!108026) b!220285))

(assert (= (and b!220285 res!108024) b!220289))

(assert (= (and b!220289 res!108027) b!220281))

(assert (= (and b!220281 res!108029) b!220293))

(assert (= (and b!220284 condMapEmpty!9841) mapIsEmpty!9841))

(assert (= (and b!220284 (not condMapEmpty!9841)) mapNonEmpty!9841))

(assert (= (and mapNonEmpty!9841 ((_ is ValueCellFull!2547) mapValue!9841)) b!220280))

(assert (= (and b!220284 ((_ is ValueCellFull!2547) mapDefault!9841)) b!220299))

(assert (= b!220290 b!220284))

(assert (= start!21864 b!220290))

(declare-fun m!245483 () Bool)

(assert (=> bm!20586 m!245483))

(declare-fun m!245485 () Bool)

(assert (=> b!220296 m!245485))

(declare-fun m!245487 () Bool)

(assert (=> mapNonEmpty!9841 m!245487))

(declare-fun m!245489 () Bool)

(assert (=> b!220290 m!245489))

(declare-fun m!245491 () Bool)

(assert (=> b!220290 m!245491))

(declare-fun m!245493 () Bool)

(assert (=> b!220292 m!245493))

(declare-fun m!245495 () Bool)

(assert (=> b!220298 m!245495))

(declare-fun m!245497 () Bool)

(assert (=> b!220282 m!245497))

(declare-fun m!245499 () Bool)

(assert (=> start!21864 m!245499))

(declare-fun m!245501 () Bool)

(assert (=> b!220288 m!245501))

(declare-fun m!245503 () Bool)

(assert (=> b!220286 m!245503))

(declare-fun m!245505 () Bool)

(assert (=> b!220286 m!245505))

(assert (=> b!220286 m!245505))

(declare-fun m!245507 () Bool)

(assert (=> b!220286 m!245507))

(declare-fun m!245509 () Bool)

(assert (=> b!220301 m!245509))

(declare-fun m!245511 () Bool)

(assert (=> b!220285 m!245511))

(declare-fun m!245513 () Bool)

(assert (=> b!220281 m!245513))

(assert (=> bm!20587 m!245497))

(declare-fun m!245515 () Bool)

(assert (=> b!220293 m!245515))

(check-sat (not start!21864) (not bm!20586) b_and!12835 (not b!220293) (not b!220296) (not b!220281) (not b!220282) (not b!220301) (not b!220298) (not bm!20587) (not mapNonEmpty!9841) (not b!220290) (not b_next!5919) (not b!220286) tp_is_empty!5781 (not b!220285))
(check-sat b_and!12835 (not b_next!5919))
