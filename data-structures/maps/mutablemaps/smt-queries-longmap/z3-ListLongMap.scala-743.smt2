; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17264 () Bool)

(assert start!17264)

(declare-fun b!173020 () Bool)

(declare-fun b_free!4299 () Bool)

(declare-fun b_next!4299 () Bool)

(assert (=> b!173020 (= b_free!4299 (not b_next!4299))))

(declare-fun tp!15555 () Bool)

(declare-fun b_and!10757 () Bool)

(assert (=> b!173020 (= tp!15555 b_and!10757)))

(declare-fun mapIsEmpty!6927 () Bool)

(declare-fun mapRes!6927 () Bool)

(assert (=> mapIsEmpty!6927 mapRes!6927))

(declare-fun tp_is_empty!4071 () Bool)

(declare-fun e!114293 () Bool)

(declare-fun e!114291 () Bool)

(declare-datatypes ((V!5075 0))(
  ( (V!5076 (val!2080 Int)) )
))
(declare-datatypes ((ValueCell!1692 0))(
  ( (ValueCellFull!1692 (v!3944 V!5075)) (EmptyCell!1692) )
))
(declare-datatypes ((array!7268 0))(
  ( (array!7269 (arr!3454 (Array (_ BitVec 32) (_ BitVec 64))) (size!3753 (_ BitVec 32))) )
))
(declare-datatypes ((array!7270 0))(
  ( (array!7271 (arr!3455 (Array (_ BitVec 32) ValueCell!1692)) (size!3754 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2292 0))(
  ( (LongMapFixedSize!2293 (defaultEntry!3592 Int) (mask!8456 (_ BitVec 32)) (extraKeys!3331 (_ BitVec 32)) (zeroValue!3433 V!5075) (minValue!3435 V!5075) (_size!1195 (_ BitVec 32)) (_keys!5431 array!7268) (_values!3575 array!7270) (_vacant!1195 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2292)

(declare-fun array_inv!2201 (array!7268) Bool)

(declare-fun array_inv!2202 (array!7270) Bool)

(assert (=> b!173020 (= e!114291 (and tp!15555 tp_is_empty!4071 (array_inv!2201 (_keys!5431 thiss!1248)) (array_inv!2202 (_values!3575 thiss!1248)) e!114293))))

(declare-fun b!173021 () Bool)

(declare-fun e!114290 () Bool)

(assert (=> b!173021 (= e!114293 (and e!114290 mapRes!6927))))

(declare-fun condMapEmpty!6927 () Bool)

(declare-fun mapDefault!6927 () ValueCell!1692)

(assert (=> b!173021 (= condMapEmpty!6927 (= (arr!3455 (_values!3575 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1692)) mapDefault!6927)))))

(declare-fun b!173022 () Bool)

(declare-fun res!82159 () Bool)

(declare-fun e!114294 () Bool)

(assert (=> b!173022 (=> (not res!82159) (not e!114294))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!173022 (= res!82159 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!173023 () Bool)

(assert (=> b!173023 (= e!114290 tp_is_empty!4071)))

(declare-fun b!173024 () Bool)

(declare-fun res!82161 () Bool)

(assert (=> b!173024 (=> (not res!82161) (not e!114294))))

(assert (=> b!173024 (= res!82161 (and (= (size!3754 (_values!3575 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8456 thiss!1248))) (= (size!3753 (_keys!5431 thiss!1248)) (size!3754 (_values!3575 thiss!1248))) (bvsge (mask!8456 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3331 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3331 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3331 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3331 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!3331 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3331 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!3331 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!173025 () Bool)

(declare-fun res!82158 () Bool)

(assert (=> b!173025 (=> (not res!82158) (not e!114294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!173025 (= res!82158 (validMask!0 (mask!8456 thiss!1248)))))

(declare-fun b!173019 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7268 (_ BitVec 32)) Bool)

(assert (=> b!173019 (= e!114294 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5431 thiss!1248) (mask!8456 thiss!1248))))))

(declare-fun res!82160 () Bool)

(assert (=> start!17264 (=> (not res!82160) (not e!114294))))

(declare-fun valid!962 (LongMapFixedSize!2292) Bool)

(assert (=> start!17264 (= res!82160 (valid!962 thiss!1248))))

(assert (=> start!17264 e!114294))

(assert (=> start!17264 e!114291))

(assert (=> start!17264 true))

(declare-fun mapNonEmpty!6927 () Bool)

(declare-fun tp!15554 () Bool)

(declare-fun e!114295 () Bool)

(assert (=> mapNonEmpty!6927 (= mapRes!6927 (and tp!15554 e!114295))))

(declare-fun mapKey!6927 () (_ BitVec 32))

(declare-fun mapValue!6927 () ValueCell!1692)

(declare-fun mapRest!6927 () (Array (_ BitVec 32) ValueCell!1692))

(assert (=> mapNonEmpty!6927 (= (arr!3455 (_values!3575 thiss!1248)) (store mapRest!6927 mapKey!6927 mapValue!6927))))

(declare-fun b!173026 () Bool)

(assert (=> b!173026 (= e!114295 tp_is_empty!4071)))

(assert (= (and start!17264 res!82160) b!173022))

(assert (= (and b!173022 res!82159) b!173025))

(assert (= (and b!173025 res!82158) b!173024))

(assert (= (and b!173024 res!82161) b!173019))

(assert (= (and b!173021 condMapEmpty!6927) mapIsEmpty!6927))

(assert (= (and b!173021 (not condMapEmpty!6927)) mapNonEmpty!6927))

(get-info :version)

(assert (= (and mapNonEmpty!6927 ((_ is ValueCellFull!1692) mapValue!6927)) b!173026))

(assert (= (and b!173021 ((_ is ValueCellFull!1692) mapDefault!6927)) b!173023))

(assert (= b!173020 b!173021))

(assert (= start!17264 b!173020))

(declare-fun m!201503 () Bool)

(assert (=> b!173019 m!201503))

(declare-fun m!201505 () Bool)

(assert (=> b!173020 m!201505))

(declare-fun m!201507 () Bool)

(assert (=> b!173020 m!201507))

(declare-fun m!201509 () Bool)

(assert (=> b!173025 m!201509))

(declare-fun m!201511 () Bool)

(assert (=> mapNonEmpty!6927 m!201511))

(declare-fun m!201513 () Bool)

(assert (=> start!17264 m!201513))

(check-sat tp_is_empty!4071 (not b!173025) (not b!173019) (not mapNonEmpty!6927) (not start!17264) b_and!10757 (not b!173020) (not b_next!4299))
(check-sat b_and!10757 (not b_next!4299))
(get-model)

(declare-fun b!173059 () Bool)

(declare-fun e!114322 () Bool)

(declare-fun e!114320 () Bool)

(assert (=> b!173059 (= e!114322 e!114320)))

(declare-fun lt!85723 () (_ BitVec 64))

(assert (=> b!173059 (= lt!85723 (select (arr!3454 (_keys!5431 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5307 0))(
  ( (Unit!5308) )
))
(declare-fun lt!85722 () Unit!5307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7268 (_ BitVec 64) (_ BitVec 32)) Unit!5307)

(assert (=> b!173059 (= lt!85722 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5431 thiss!1248) lt!85723 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!173059 (arrayContainsKey!0 (_keys!5431 thiss!1248) lt!85723 #b00000000000000000000000000000000)))

(declare-fun lt!85724 () Unit!5307)

(assert (=> b!173059 (= lt!85724 lt!85722)))

(declare-fun res!82178 () Bool)

(declare-datatypes ((SeekEntryResult!550 0))(
  ( (MissingZero!550 (index!4368 (_ BitVec 32))) (Found!550 (index!4369 (_ BitVec 32))) (Intermediate!550 (undefined!1362 Bool) (index!4370 (_ BitVec 32)) (x!19157 (_ BitVec 32))) (Undefined!550) (MissingVacant!550 (index!4371 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7268 (_ BitVec 32)) SeekEntryResult!550)

(assert (=> b!173059 (= res!82178 (= (seekEntryOrOpen!0 (select (arr!3454 (_keys!5431 thiss!1248)) #b00000000000000000000000000000000) (_keys!5431 thiss!1248) (mask!8456 thiss!1248)) (Found!550 #b00000000000000000000000000000000)))))

(assert (=> b!173059 (=> (not res!82178) (not e!114320))))

(declare-fun d!52479 () Bool)

(declare-fun res!82179 () Bool)

(declare-fun e!114321 () Bool)

(assert (=> d!52479 (=> res!82179 e!114321)))

(assert (=> d!52479 (= res!82179 (bvsge #b00000000000000000000000000000000 (size!3753 (_keys!5431 thiss!1248))))))

(assert (=> d!52479 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5431 thiss!1248) (mask!8456 thiss!1248)) e!114321)))

(declare-fun bm!17546 () Bool)

(declare-fun call!17549 () Bool)

(assert (=> bm!17546 (= call!17549 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5431 thiss!1248) (mask!8456 thiss!1248)))))

(declare-fun b!173060 () Bool)

(assert (=> b!173060 (= e!114322 call!17549)))

(declare-fun b!173061 () Bool)

(assert (=> b!173061 (= e!114321 e!114322)))

(declare-fun c!30871 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!173061 (= c!30871 (validKeyInArray!0 (select (arr!3454 (_keys!5431 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!173062 () Bool)

(assert (=> b!173062 (= e!114320 call!17549)))

(assert (= (and d!52479 (not res!82179)) b!173061))

(assert (= (and b!173061 c!30871) b!173059))

(assert (= (and b!173061 (not c!30871)) b!173060))

(assert (= (and b!173059 res!82178) b!173062))

(assert (= (or b!173062 b!173060) bm!17546))

(declare-fun m!201527 () Bool)

(assert (=> b!173059 m!201527))

(declare-fun m!201529 () Bool)

(assert (=> b!173059 m!201529))

(declare-fun m!201531 () Bool)

(assert (=> b!173059 m!201531))

(assert (=> b!173059 m!201527))

(declare-fun m!201533 () Bool)

(assert (=> b!173059 m!201533))

(declare-fun m!201535 () Bool)

(assert (=> bm!17546 m!201535))

(assert (=> b!173061 m!201527))

(assert (=> b!173061 m!201527))

(declare-fun m!201537 () Bool)

(assert (=> b!173061 m!201537))

(assert (=> b!173019 d!52479))

(declare-fun d!52481 () Bool)

(assert (=> d!52481 (= (validMask!0 (mask!8456 thiss!1248)) (and (or (= (mask!8456 thiss!1248) #b00000000000000000000000000000111) (= (mask!8456 thiss!1248) #b00000000000000000000000000001111) (= (mask!8456 thiss!1248) #b00000000000000000000000000011111) (= (mask!8456 thiss!1248) #b00000000000000000000000000111111) (= (mask!8456 thiss!1248) #b00000000000000000000000001111111) (= (mask!8456 thiss!1248) #b00000000000000000000000011111111) (= (mask!8456 thiss!1248) #b00000000000000000000000111111111) (= (mask!8456 thiss!1248) #b00000000000000000000001111111111) (= (mask!8456 thiss!1248) #b00000000000000000000011111111111) (= (mask!8456 thiss!1248) #b00000000000000000000111111111111) (= (mask!8456 thiss!1248) #b00000000000000000001111111111111) (= (mask!8456 thiss!1248) #b00000000000000000011111111111111) (= (mask!8456 thiss!1248) #b00000000000000000111111111111111) (= (mask!8456 thiss!1248) #b00000000000000001111111111111111) (= (mask!8456 thiss!1248) #b00000000000000011111111111111111) (= (mask!8456 thiss!1248) #b00000000000000111111111111111111) (= (mask!8456 thiss!1248) #b00000000000001111111111111111111) (= (mask!8456 thiss!1248) #b00000000000011111111111111111111) (= (mask!8456 thiss!1248) #b00000000000111111111111111111111) (= (mask!8456 thiss!1248) #b00000000001111111111111111111111) (= (mask!8456 thiss!1248) #b00000000011111111111111111111111) (= (mask!8456 thiss!1248) #b00000000111111111111111111111111) (= (mask!8456 thiss!1248) #b00000001111111111111111111111111) (= (mask!8456 thiss!1248) #b00000011111111111111111111111111) (= (mask!8456 thiss!1248) #b00000111111111111111111111111111) (= (mask!8456 thiss!1248) #b00001111111111111111111111111111) (= (mask!8456 thiss!1248) #b00011111111111111111111111111111) (= (mask!8456 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8456 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!173025 d!52481))

(declare-fun d!52483 () Bool)

(assert (=> d!52483 (= (array_inv!2201 (_keys!5431 thiss!1248)) (bvsge (size!3753 (_keys!5431 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173020 d!52483))

(declare-fun d!52485 () Bool)

(assert (=> d!52485 (= (array_inv!2202 (_values!3575 thiss!1248)) (bvsge (size!3754 (_values!3575 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173020 d!52485))

(declare-fun d!52487 () Bool)

(declare-fun res!82186 () Bool)

(declare-fun e!114325 () Bool)

(assert (=> d!52487 (=> (not res!82186) (not e!114325))))

(declare-fun simpleValid!141 (LongMapFixedSize!2292) Bool)

(assert (=> d!52487 (= res!82186 (simpleValid!141 thiss!1248))))

(assert (=> d!52487 (= (valid!962 thiss!1248) e!114325)))

(declare-fun b!173069 () Bool)

(declare-fun res!82187 () Bool)

(assert (=> b!173069 (=> (not res!82187) (not e!114325))))

(declare-fun arrayCountValidKeys!0 (array!7268 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!173069 (= res!82187 (= (arrayCountValidKeys!0 (_keys!5431 thiss!1248) #b00000000000000000000000000000000 (size!3753 (_keys!5431 thiss!1248))) (_size!1195 thiss!1248)))))

(declare-fun b!173070 () Bool)

(declare-fun res!82188 () Bool)

(assert (=> b!173070 (=> (not res!82188) (not e!114325))))

(assert (=> b!173070 (= res!82188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5431 thiss!1248) (mask!8456 thiss!1248)))))

(declare-fun b!173071 () Bool)

(declare-datatypes ((List!2222 0))(
  ( (Nil!2219) (Cons!2218 (h!2835 (_ BitVec 64)) (t!7037 List!2222)) )
))
(declare-fun arrayNoDuplicates!0 (array!7268 (_ BitVec 32) List!2222) Bool)

(assert (=> b!173071 (= e!114325 (arrayNoDuplicates!0 (_keys!5431 thiss!1248) #b00000000000000000000000000000000 Nil!2219))))

(assert (= (and d!52487 res!82186) b!173069))

(assert (= (and b!173069 res!82187) b!173070))

(assert (= (and b!173070 res!82188) b!173071))

(declare-fun m!201539 () Bool)

(assert (=> d!52487 m!201539))

(declare-fun m!201541 () Bool)

(assert (=> b!173069 m!201541))

(assert (=> b!173070 m!201503))

(declare-fun m!201543 () Bool)

(assert (=> b!173071 m!201543))

(assert (=> start!17264 d!52487))

(declare-fun mapNonEmpty!6933 () Bool)

(declare-fun mapRes!6933 () Bool)

(declare-fun tp!15564 () Bool)

(declare-fun e!114331 () Bool)

(assert (=> mapNonEmpty!6933 (= mapRes!6933 (and tp!15564 e!114331))))

(declare-fun mapRest!6933 () (Array (_ BitVec 32) ValueCell!1692))

(declare-fun mapKey!6933 () (_ BitVec 32))

(declare-fun mapValue!6933 () ValueCell!1692)

(assert (=> mapNonEmpty!6933 (= mapRest!6927 (store mapRest!6933 mapKey!6933 mapValue!6933))))

(declare-fun condMapEmpty!6933 () Bool)

(declare-fun mapDefault!6933 () ValueCell!1692)

(assert (=> mapNonEmpty!6927 (= condMapEmpty!6933 (= mapRest!6927 ((as const (Array (_ BitVec 32) ValueCell!1692)) mapDefault!6933)))))

(declare-fun e!114330 () Bool)

(assert (=> mapNonEmpty!6927 (= tp!15554 (and e!114330 mapRes!6933))))

(declare-fun b!173079 () Bool)

(assert (=> b!173079 (= e!114330 tp_is_empty!4071)))

(declare-fun mapIsEmpty!6933 () Bool)

(assert (=> mapIsEmpty!6933 mapRes!6933))

(declare-fun b!173078 () Bool)

(assert (=> b!173078 (= e!114331 tp_is_empty!4071)))

(assert (= (and mapNonEmpty!6927 condMapEmpty!6933) mapIsEmpty!6933))

(assert (= (and mapNonEmpty!6927 (not condMapEmpty!6933)) mapNonEmpty!6933))

(assert (= (and mapNonEmpty!6933 ((_ is ValueCellFull!1692) mapValue!6933)) b!173078))

(assert (= (and mapNonEmpty!6927 ((_ is ValueCellFull!1692) mapDefault!6933)) b!173079))

(declare-fun m!201545 () Bool)

(assert (=> mapNonEmpty!6933 m!201545))

(check-sat (not mapNonEmpty!6933) tp_is_empty!4071 (not b!173061) (not d!52487) (not bm!17546) b_and!10757 (not b_next!4299) (not b!173059) (not b!173069) (not b!173070) (not b!173071))
(check-sat b_and!10757 (not b_next!4299))
