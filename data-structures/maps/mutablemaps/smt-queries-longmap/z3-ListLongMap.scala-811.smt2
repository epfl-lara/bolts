; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19740 () Bool)

(assert start!19740)

(declare-fun b!193304 () Bool)

(declare-fun b_free!4707 () Bool)

(declare-fun b_next!4707 () Bool)

(assert (=> b!193304 (= b_free!4707 (not b_next!4707))))

(declare-fun tp!16985 () Bool)

(declare-fun b_and!11431 () Bool)

(assert (=> b!193304 (= tp!16985 b_and!11431)))

(declare-fun b!193295 () Bool)

(declare-fun res!91358 () Bool)

(declare-fun e!127200 () Bool)

(assert (=> b!193295 (=> res!91358 e!127200)))

(declare-datatypes ((V!5619 0))(
  ( (V!5620 (val!2284 Int)) )
))
(declare-datatypes ((ValueCell!1896 0))(
  ( (ValueCellFull!1896 (v!4236 V!5619)) (EmptyCell!1896) )
))
(declare-datatypes ((array!8204 0))(
  ( (array!8205 (arr!3862 (Array (_ BitVec 32) (_ BitVec 64))) (size!4186 (_ BitVec 32))) )
))
(declare-datatypes ((array!8206 0))(
  ( (array!8207 (arr!3863 (Array (_ BitVec 32) ValueCell!1896)) (size!4187 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2700 0))(
  ( (LongMapFixedSize!2701 (defaultEntry!3946 Int) (mask!9197 (_ BitVec 32)) (extraKeys!3683 (_ BitVec 32)) (zeroValue!3787 V!5619) (minValue!3787 V!5619) (_size!1399 (_ BitVec 32)) (_keys!5936 array!8204) (_values!3929 array!8206) (_vacant!1399 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2700)

(declare-datatypes ((List!2459 0))(
  ( (Nil!2456) (Cons!2455 (h!3096 (_ BitVec 64)) (t!7389 List!2459)) )
))
(declare-fun arrayNoDuplicates!0 (array!8204 (_ BitVec 32) List!2459) Bool)

(assert (=> b!193295 (= res!91358 (not (arrayNoDuplicates!0 (_keys!5936 thiss!1248) #b00000000000000000000000000000000 Nil!2456)))))

(declare-fun b!193296 () Bool)

(declare-fun e!127197 () Bool)

(declare-fun tp_is_empty!4479 () Bool)

(assert (=> b!193296 (= e!127197 tp_is_empty!4479)))

(declare-fun b!193297 () Bool)

(declare-datatypes ((SeekEntryResult!698 0))(
  ( (MissingZero!698 (index!4962 (_ BitVec 32))) (Found!698 (index!4963 (_ BitVec 32))) (Intermediate!698 (undefined!1510 Bool) (index!4964 (_ BitVec 32)) (x!20658 (_ BitVec 32))) (Undefined!698) (MissingVacant!698 (index!4965 (_ BitVec 32))) )
))
(declare-fun lt!96261 () SeekEntryResult!698)

(assert (=> b!193297 (= e!127200 (and (bvsge (index!4963 lt!96261) #b00000000000000000000000000000000) (bvslt (index!4963 lt!96261) (size!4186 (_keys!5936 thiss!1248)))))))

(declare-fun b!193298 () Bool)

(declare-datatypes ((Unit!5853 0))(
  ( (Unit!5854) )
))
(declare-fun e!127192 () Unit!5853)

(declare-fun lt!96260 () Unit!5853)

(assert (=> b!193298 (= e!127192 lt!96260)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!183 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 64) Int) Unit!5853)

(assert (=> b!193298 (= lt!96260 (lemmaInListMapThenSeekEntryOrOpenFindsIt!183 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) key!828 (defaultEntry!3946 thiss!1248)))))

(declare-fun res!91356 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193298 (= res!91356 (inRange!0 (index!4963 lt!96261) (mask!9197 thiss!1248)))))

(declare-fun e!127193 () Bool)

(assert (=> b!193298 (=> (not res!91356) (not e!127193))))

(assert (=> b!193298 e!127193))

(declare-fun b!193299 () Bool)

(declare-fun e!127195 () Bool)

(declare-fun mapRes!7745 () Bool)

(assert (=> b!193299 (= e!127195 (and e!127197 mapRes!7745))))

(declare-fun condMapEmpty!7745 () Bool)

(declare-fun mapDefault!7745 () ValueCell!1896)

(assert (=> b!193299 (= condMapEmpty!7745 (= (arr!3863 (_values!3929 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1896)) mapDefault!7745)))))

(declare-fun mapNonEmpty!7745 () Bool)

(declare-fun tp!16984 () Bool)

(declare-fun e!127198 () Bool)

(assert (=> mapNonEmpty!7745 (= mapRes!7745 (and tp!16984 e!127198))))

(declare-fun mapValue!7745 () ValueCell!1896)

(declare-fun mapKey!7745 () (_ BitVec 32))

(declare-fun mapRest!7745 () (Array (_ BitVec 32) ValueCell!1896))

(assert (=> mapNonEmpty!7745 (= (arr!3863 (_values!3929 thiss!1248)) (store mapRest!7745 mapKey!7745 mapValue!7745))))

(declare-fun b!193300 () Bool)

(assert (=> b!193300 (= e!127193 (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4963 lt!96261)) key!828))))

(declare-fun b!193301 () Bool)

(declare-fun Unit!5855 () Unit!5853)

(assert (=> b!193301 (= e!127192 Unit!5855)))

(declare-fun lt!96259 () Unit!5853)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!190 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 64) Int) Unit!5853)

(assert (=> b!193301 (= lt!96259 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!190 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) key!828 (defaultEntry!3946 thiss!1248)))))

(assert (=> b!193301 false))

(declare-fun b!193302 () Bool)

(declare-fun e!127201 () Bool)

(declare-fun e!127194 () Bool)

(assert (=> b!193302 (= e!127201 e!127194)))

(declare-fun res!91354 () Bool)

(assert (=> b!193302 (=> (not res!91354) (not e!127194))))

(get-info :version)

(assert (=> b!193302 (= res!91354 (and (not ((_ is Undefined!698) lt!96261)) (not ((_ is MissingVacant!698) lt!96261)) (not ((_ is MissingZero!698) lt!96261)) ((_ is Found!698) lt!96261)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8204 (_ BitVec 32)) SeekEntryResult!698)

(assert (=> b!193302 (= lt!96261 (seekEntryOrOpen!0 key!828 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(declare-fun b!193303 () Bool)

(assert (=> b!193303 (= e!127194 (not e!127200))))

(declare-fun res!91355 () Bool)

(assert (=> b!193303 (=> res!91355 e!127200)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193303 (= res!91355 (not (validMask!0 (mask!9197 thiss!1248))))))

(declare-datatypes ((tuple2!3544 0))(
  ( (tuple2!3545 (_1!1782 (_ BitVec 64)) (_2!1782 V!5619)) )
))
(declare-datatypes ((List!2460 0))(
  ( (Nil!2457) (Cons!2456 (h!3097 tuple2!3544) (t!7390 List!2460)) )
))
(declare-datatypes ((ListLongMap!2475 0))(
  ( (ListLongMap!2476 (toList!1253 List!2460)) )
))
(declare-fun lt!96263 () ListLongMap!2475)

(declare-fun v!309 () V!5619)

(declare-fun +!311 (ListLongMap!2475 tuple2!3544) ListLongMap!2475)

(declare-fun getCurrentListMap!896 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 32) Int) ListLongMap!2475)

(assert (=> b!193303 (= (+!311 lt!96263 (tuple2!3545 key!828 v!309)) (getCurrentListMap!896 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96258 () Unit!5853)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!117 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 32) (_ BitVec 64) V!5619 Int) Unit!5853)

(assert (=> b!193303 (= lt!96258 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!117 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) (index!4963 lt!96261) key!828 v!309 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96262 () Unit!5853)

(assert (=> b!193303 (= lt!96262 e!127192)))

(declare-fun c!34849 () Bool)

(declare-fun contains!1368 (ListLongMap!2475 (_ BitVec 64)) Bool)

(assert (=> b!193303 (= c!34849 (contains!1368 lt!96263 key!828))))

(assert (=> b!193303 (= lt!96263 (getCurrentListMap!896 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun res!91357 () Bool)

(assert (=> start!19740 (=> (not res!91357) (not e!127201))))

(declare-fun valid!1100 (LongMapFixedSize!2700) Bool)

(assert (=> start!19740 (= res!91357 (valid!1100 thiss!1248))))

(assert (=> start!19740 e!127201))

(declare-fun e!127196 () Bool)

(assert (=> start!19740 e!127196))

(assert (=> start!19740 true))

(assert (=> start!19740 tp_is_empty!4479))

(declare-fun array_inv!2497 (array!8204) Bool)

(declare-fun array_inv!2498 (array!8206) Bool)

(assert (=> b!193304 (= e!127196 (and tp!16985 tp_is_empty!4479 (array_inv!2497 (_keys!5936 thiss!1248)) (array_inv!2498 (_values!3929 thiss!1248)) e!127195))))

(declare-fun b!193305 () Bool)

(declare-fun res!91360 () Bool)

(assert (=> b!193305 (=> (not res!91360) (not e!127201))))

(assert (=> b!193305 (= res!91360 (not (= key!828 (bvneg key!828))))))

(declare-fun b!193306 () Bool)

(assert (=> b!193306 (= e!127198 tp_is_empty!4479)))

(declare-fun b!193307 () Bool)

(declare-fun res!91359 () Bool)

(assert (=> b!193307 (=> res!91359 e!127200)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8204 (_ BitVec 32)) Bool)

(assert (=> b!193307 (= res!91359 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5936 thiss!1248) (mask!9197 thiss!1248))))))

(declare-fun mapIsEmpty!7745 () Bool)

(assert (=> mapIsEmpty!7745 mapRes!7745))

(declare-fun b!193308 () Bool)

(declare-fun res!91353 () Bool)

(assert (=> b!193308 (=> res!91353 e!127200)))

(assert (=> b!193308 (= res!91353 (or (not (= (size!4187 (_values!3929 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9197 thiss!1248)))) (not (= (size!4186 (_keys!5936 thiss!1248)) (size!4187 (_values!3929 thiss!1248)))) (bvslt (mask!9197 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3683 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3683 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!19740 res!91357) b!193305))

(assert (= (and b!193305 res!91360) b!193302))

(assert (= (and b!193302 res!91354) b!193303))

(assert (= (and b!193303 c!34849) b!193298))

(assert (= (and b!193303 (not c!34849)) b!193301))

(assert (= (and b!193298 res!91356) b!193300))

(assert (= (and b!193303 (not res!91355)) b!193308))

(assert (= (and b!193308 (not res!91353)) b!193307))

(assert (= (and b!193307 (not res!91359)) b!193295))

(assert (= (and b!193295 (not res!91358)) b!193297))

(assert (= (and b!193299 condMapEmpty!7745) mapIsEmpty!7745))

(assert (= (and b!193299 (not condMapEmpty!7745)) mapNonEmpty!7745))

(assert (= (and mapNonEmpty!7745 ((_ is ValueCellFull!1896) mapValue!7745)) b!193306))

(assert (= (and b!193299 ((_ is ValueCellFull!1896) mapDefault!7745)) b!193296))

(assert (= b!193304 b!193299))

(assert (= start!19740 b!193304))

(declare-fun m!220113 () Bool)

(assert (=> b!193295 m!220113))

(declare-fun m!220115 () Bool)

(assert (=> b!193304 m!220115))

(declare-fun m!220117 () Bool)

(assert (=> b!193304 m!220117))

(declare-fun m!220119 () Bool)

(assert (=> b!193300 m!220119))

(declare-fun m!220121 () Bool)

(assert (=> b!193303 m!220121))

(declare-fun m!220123 () Bool)

(assert (=> b!193303 m!220123))

(declare-fun m!220125 () Bool)

(assert (=> b!193303 m!220125))

(declare-fun m!220127 () Bool)

(assert (=> b!193303 m!220127))

(declare-fun m!220129 () Bool)

(assert (=> b!193303 m!220129))

(declare-fun m!220131 () Bool)

(assert (=> b!193303 m!220131))

(declare-fun m!220133 () Bool)

(assert (=> b!193303 m!220133))

(declare-fun m!220135 () Bool)

(assert (=> b!193298 m!220135))

(declare-fun m!220137 () Bool)

(assert (=> b!193298 m!220137))

(declare-fun m!220139 () Bool)

(assert (=> b!193301 m!220139))

(declare-fun m!220141 () Bool)

(assert (=> start!19740 m!220141))

(declare-fun m!220143 () Bool)

(assert (=> b!193302 m!220143))

(declare-fun m!220145 () Bool)

(assert (=> mapNonEmpty!7745 m!220145))

(declare-fun m!220147 () Bool)

(assert (=> b!193307 m!220147))

(check-sat (not b_next!4707) (not b!193307) (not b!193301) b_and!11431 (not b!193295) tp_is_empty!4479 (not start!19740) (not b!193303) (not mapNonEmpty!7745) (not b!193298) (not b!193302) (not b!193304))
(check-sat b_and!11431 (not b_next!4707))
(get-model)

(declare-fun d!56489 () Bool)

(declare-fun res!91391 () Bool)

(declare-fun e!127234 () Bool)

(assert (=> d!56489 (=> (not res!91391) (not e!127234))))

(declare-fun simpleValid!201 (LongMapFixedSize!2700) Bool)

(assert (=> d!56489 (= res!91391 (simpleValid!201 thiss!1248))))

(assert (=> d!56489 (= (valid!1100 thiss!1248) e!127234)))

(declare-fun b!193357 () Bool)

(declare-fun res!91392 () Bool)

(assert (=> b!193357 (=> (not res!91392) (not e!127234))))

(declare-fun arrayCountValidKeys!0 (array!8204 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!193357 (= res!91392 (= (arrayCountValidKeys!0 (_keys!5936 thiss!1248) #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))) (_size!1399 thiss!1248)))))

(declare-fun b!193358 () Bool)

(declare-fun res!91393 () Bool)

(assert (=> b!193358 (=> (not res!91393) (not e!127234))))

(assert (=> b!193358 (= res!91393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(declare-fun b!193359 () Bool)

(assert (=> b!193359 (= e!127234 (arrayNoDuplicates!0 (_keys!5936 thiss!1248) #b00000000000000000000000000000000 Nil!2456))))

(assert (= (and d!56489 res!91391) b!193357))

(assert (= (and b!193357 res!91392) b!193358))

(assert (= (and b!193358 res!91393) b!193359))

(declare-fun m!220185 () Bool)

(assert (=> d!56489 m!220185))

(declare-fun m!220187 () Bool)

(assert (=> b!193357 m!220187))

(assert (=> b!193358 m!220147))

(assert (=> b!193359 m!220113))

(assert (=> start!19740 d!56489))

(declare-fun b!193402 () Bool)

(declare-fun e!127265 () Bool)

(declare-fun e!127262 () Bool)

(assert (=> b!193402 (= e!127265 e!127262)))

(declare-fun res!91415 () Bool)

(declare-fun call!19547 () Bool)

(assert (=> b!193402 (= res!91415 call!19547)))

(assert (=> b!193402 (=> (not res!91415) (not e!127262))))

(declare-fun bm!19539 () Bool)

(declare-fun lt!96345 () ListLongMap!2475)

(assert (=> bm!19539 (= call!19547 (contains!1368 lt!96345 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193403 () Bool)

(declare-fun res!91414 () Bool)

(declare-fun e!127273 () Bool)

(assert (=> b!193403 (=> (not res!91414) (not e!127273))))

(declare-fun e!127263 () Bool)

(assert (=> b!193403 (= res!91414 e!127263)))

(declare-fun res!91417 () Bool)

(assert (=> b!193403 (=> res!91417 e!127263)))

(declare-fun e!127261 () Bool)

(assert (=> b!193403 (= res!91417 (not e!127261))))

(declare-fun res!91419 () Bool)

(assert (=> b!193403 (=> (not res!91419) (not e!127261))))

(assert (=> b!193403 (= res!91419 (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193404 () Bool)

(declare-fun e!127272 () Bool)

(declare-fun e!127271 () Bool)

(assert (=> b!193404 (= e!127272 e!127271)))

(declare-fun res!91418 () Bool)

(declare-fun call!19544 () Bool)

(assert (=> b!193404 (= res!91418 call!19544)))

(assert (=> b!193404 (=> (not res!91418) (not e!127271))))

(declare-fun b!193405 () Bool)

(declare-fun apply!186 (ListLongMap!2475 (_ BitVec 64)) V!5619)

(assert (=> b!193405 (= e!127262 (= (apply!186 lt!96345 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3787 thiss!1248)))))

(declare-fun b!193406 () Bool)

(declare-fun res!91412 () Bool)

(assert (=> b!193406 (=> (not res!91412) (not e!127273))))

(assert (=> b!193406 (= res!91412 e!127272)))

(declare-fun c!34865 () Bool)

(assert (=> b!193406 (= c!34865 (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!56491 () Bool)

(assert (=> d!56491 e!127273))

(declare-fun res!91416 () Bool)

(assert (=> d!56491 (=> (not res!91416) (not e!127273))))

(assert (=> d!56491 (= res!91416 (or (bvsge #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))))

(declare-fun lt!96342 () ListLongMap!2475)

(assert (=> d!56491 (= lt!96345 lt!96342)))

(declare-fun lt!96330 () Unit!5853)

(declare-fun e!127269 () Unit!5853)

(assert (=> d!56491 (= lt!96330 e!127269)))

(declare-fun c!34868 () Bool)

(declare-fun e!127264 () Bool)

(assert (=> d!56491 (= c!34868 e!127264)))

(declare-fun res!91420 () Bool)

(assert (=> d!56491 (=> (not res!91420) (not e!127264))))

(assert (=> d!56491 (= res!91420 (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun e!127270 () ListLongMap!2475)

(assert (=> d!56491 (= lt!96342 e!127270)))

(declare-fun c!34869 () Bool)

(assert (=> d!56491 (= c!34869 (and (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56491 (validMask!0 (mask!9197 thiss!1248))))

(assert (=> d!56491 (= (getCurrentListMap!896 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)) lt!96345)))

(declare-fun b!193407 () Bool)

(declare-fun e!127267 () ListLongMap!2475)

(declare-fun call!19543 () ListLongMap!2475)

(assert (=> b!193407 (= e!127267 call!19543)))

(declare-fun bm!19540 () Bool)

(declare-fun call!19546 () ListLongMap!2475)

(declare-fun getCurrentListMapNoExtraKeys!216 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 32) Int) ListLongMap!2475)

(assert (=> bm!19540 (= call!19546 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun b!193408 () Bool)

(declare-fun e!127268 () Bool)

(assert (=> b!193408 (= e!127263 e!127268)))

(declare-fun res!91413 () Bool)

(assert (=> b!193408 (=> (not res!91413) (not e!127268))))

(assert (=> b!193408 (= res!91413 (contains!1368 lt!96345 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!193408 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193409 () Bool)

(declare-fun get!2232 (ValueCell!1896 V!5619) V!5619)

(declare-fun dynLambda!524 (Int (_ BitVec 64)) V!5619)

(assert (=> b!193409 (= e!127268 (= (apply!186 lt!96345 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)) (get!2232 (select (arr!3863 (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!524 (defaultEntry!3946 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4187 (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))))))))

(assert (=> b!193409 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193410 () Bool)

(declare-fun c!34870 () Bool)

(assert (=> b!193410 (= c!34870 (and (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127266 () ListLongMap!2475)

(assert (=> b!193410 (= e!127266 e!127267)))

(declare-fun b!193411 () Bool)

(assert (=> b!193411 (= e!127265 (not call!19547))))

(declare-fun b!193412 () Bool)

(assert (=> b!193412 (= e!127270 e!127266)))

(declare-fun c!34867 () Bool)

(assert (=> b!193412 (= c!34867 (and (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!193413 () Bool)

(declare-fun call!19548 () ListLongMap!2475)

(assert (=> b!193413 (= e!127267 call!19548)))

(declare-fun b!193414 () Bool)

(declare-fun lt!96326 () Unit!5853)

(assert (=> b!193414 (= e!127269 lt!96326)))

(declare-fun lt!96332 () ListLongMap!2475)

(assert (=> b!193414 (= lt!96332 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96336 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96336 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96331 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96331 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96335 () Unit!5853)

(declare-fun addStillContains!162 (ListLongMap!2475 (_ BitVec 64) V!5619 (_ BitVec 64)) Unit!5853)

(assert (=> b!193414 (= lt!96335 (addStillContains!162 lt!96332 lt!96336 (zeroValue!3787 thiss!1248) lt!96331))))

(assert (=> b!193414 (contains!1368 (+!311 lt!96332 (tuple2!3545 lt!96336 (zeroValue!3787 thiss!1248))) lt!96331)))

(declare-fun lt!96338 () Unit!5853)

(assert (=> b!193414 (= lt!96338 lt!96335)))

(declare-fun lt!96340 () ListLongMap!2475)

(assert (=> b!193414 (= lt!96340 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96347 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96347 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96341 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96341 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96337 () Unit!5853)

(declare-fun addApplyDifferent!162 (ListLongMap!2475 (_ BitVec 64) V!5619 (_ BitVec 64)) Unit!5853)

(assert (=> b!193414 (= lt!96337 (addApplyDifferent!162 lt!96340 lt!96347 (minValue!3787 thiss!1248) lt!96341))))

(assert (=> b!193414 (= (apply!186 (+!311 lt!96340 (tuple2!3545 lt!96347 (minValue!3787 thiss!1248))) lt!96341) (apply!186 lt!96340 lt!96341))))

(declare-fun lt!96344 () Unit!5853)

(assert (=> b!193414 (= lt!96344 lt!96337)))

(declare-fun lt!96343 () ListLongMap!2475)

(assert (=> b!193414 (= lt!96343 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96346 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96346 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96328 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96328 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96334 () Unit!5853)

(assert (=> b!193414 (= lt!96334 (addApplyDifferent!162 lt!96343 lt!96346 (zeroValue!3787 thiss!1248) lt!96328))))

(assert (=> b!193414 (= (apply!186 (+!311 lt!96343 (tuple2!3545 lt!96346 (zeroValue!3787 thiss!1248))) lt!96328) (apply!186 lt!96343 lt!96328))))

(declare-fun lt!96333 () Unit!5853)

(assert (=> b!193414 (= lt!96333 lt!96334)))

(declare-fun lt!96329 () ListLongMap!2475)

(assert (=> b!193414 (= lt!96329 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96327 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96327 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96339 () (_ BitVec 64))

(assert (=> b!193414 (= lt!96339 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193414 (= lt!96326 (addApplyDifferent!162 lt!96329 lt!96327 (minValue!3787 thiss!1248) lt!96339))))

(assert (=> b!193414 (= (apply!186 (+!311 lt!96329 (tuple2!3545 lt!96327 (minValue!3787 thiss!1248))) lt!96339) (apply!186 lt!96329 lt!96339))))

(declare-fun b!193415 () Bool)

(assert (=> b!193415 (= e!127273 e!127265)))

(declare-fun c!34866 () Bool)

(assert (=> b!193415 (= c!34866 (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!193416 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!193416 (= e!127264 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19541 () Bool)

(declare-fun call!19542 () ListLongMap!2475)

(assert (=> bm!19541 (= call!19548 call!19542)))

(declare-fun call!19545 () ListLongMap!2475)

(declare-fun bm!19542 () Bool)

(assert (=> bm!19542 (= call!19545 (+!311 (ite c!34869 call!19546 (ite c!34867 call!19542 call!19548)) (ite (or c!34869 c!34867) (tuple2!3545 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3787 thiss!1248)) (tuple2!3545 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3787 thiss!1248)))))))

(declare-fun b!193417 () Bool)

(declare-fun Unit!5858 () Unit!5853)

(assert (=> b!193417 (= e!127269 Unit!5858)))

(declare-fun bm!19543 () Bool)

(assert (=> bm!19543 (= call!19543 call!19545)))

(declare-fun bm!19544 () Bool)

(assert (=> bm!19544 (= call!19544 (contains!1368 lt!96345 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193418 () Bool)

(assert (=> b!193418 (= e!127266 call!19543)))

(declare-fun b!193419 () Bool)

(assert (=> b!193419 (= e!127261 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193420 () Bool)

(assert (=> b!193420 (= e!127271 (= (apply!186 lt!96345 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3787 thiss!1248)))))

(declare-fun bm!19545 () Bool)

(assert (=> bm!19545 (= call!19542 call!19546)))

(declare-fun b!193421 () Bool)

(assert (=> b!193421 (= e!127270 (+!311 call!19545 (tuple2!3545 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3787 thiss!1248))))))

(declare-fun b!193422 () Bool)

(assert (=> b!193422 (= e!127272 (not call!19544))))

(assert (= (and d!56491 c!34869) b!193421))

(assert (= (and d!56491 (not c!34869)) b!193412))

(assert (= (and b!193412 c!34867) b!193418))

(assert (= (and b!193412 (not c!34867)) b!193410))

(assert (= (and b!193410 c!34870) b!193407))

(assert (= (and b!193410 (not c!34870)) b!193413))

(assert (= (or b!193407 b!193413) bm!19541))

(assert (= (or b!193418 bm!19541) bm!19545))

(assert (= (or b!193418 b!193407) bm!19543))

(assert (= (or b!193421 bm!19545) bm!19540))

(assert (= (or b!193421 bm!19543) bm!19542))

(assert (= (and d!56491 res!91420) b!193416))

(assert (= (and d!56491 c!34868) b!193414))

(assert (= (and d!56491 (not c!34868)) b!193417))

(assert (= (and d!56491 res!91416) b!193403))

(assert (= (and b!193403 res!91419) b!193419))

(assert (= (and b!193403 (not res!91417)) b!193408))

(assert (= (and b!193408 res!91413) b!193409))

(assert (= (and b!193403 res!91414) b!193406))

(assert (= (and b!193406 c!34865) b!193404))

(assert (= (and b!193406 (not c!34865)) b!193422))

(assert (= (and b!193404 res!91418) b!193420))

(assert (= (or b!193404 b!193422) bm!19544))

(assert (= (and b!193406 res!91412) b!193415))

(assert (= (and b!193415 c!34866) b!193402))

(assert (= (and b!193415 (not c!34866)) b!193411))

(assert (= (and b!193402 res!91415) b!193405))

(assert (= (or b!193402 b!193411) bm!19539))

(declare-fun b_lambda!7493 () Bool)

(assert (=> (not b_lambda!7493) (not b!193409)))

(declare-fun t!7394 () Bool)

(declare-fun tb!2891 () Bool)

(assert (=> (and b!193304 (= (defaultEntry!3946 thiss!1248) (defaultEntry!3946 thiss!1248)) t!7394) tb!2891))

(declare-fun result!4935 () Bool)

(assert (=> tb!2891 (= result!4935 tp_is_empty!4479)))

(assert (=> b!193409 t!7394))

(declare-fun b_and!11435 () Bool)

(assert (= b_and!11431 (and (=> t!7394 result!4935) b_and!11435)))

(assert (=> d!56491 m!220133))

(declare-fun m!220189 () Bool)

(assert (=> b!193405 m!220189))

(declare-fun m!220191 () Bool)

(assert (=> bm!19544 m!220191))

(declare-fun m!220193 () Bool)

(assert (=> bm!19540 m!220193))

(declare-fun m!220195 () Bool)

(assert (=> bm!19539 m!220195))

(declare-fun m!220197 () Bool)

(assert (=> b!193408 m!220197))

(assert (=> b!193408 m!220197))

(declare-fun m!220199 () Bool)

(assert (=> b!193408 m!220199))

(assert (=> b!193419 m!220197))

(assert (=> b!193419 m!220197))

(declare-fun m!220201 () Bool)

(assert (=> b!193419 m!220201))

(declare-fun m!220203 () Bool)

(assert (=> b!193421 m!220203))

(assert (=> b!193416 m!220197))

(assert (=> b!193416 m!220197))

(assert (=> b!193416 m!220201))

(declare-fun m!220205 () Bool)

(assert (=> bm!19542 m!220205))

(declare-fun m!220207 () Bool)

(assert (=> b!193420 m!220207))

(declare-fun m!220209 () Bool)

(assert (=> b!193409 m!220209))

(declare-fun m!220211 () Bool)

(assert (=> b!193409 m!220211))

(declare-fun m!220213 () Bool)

(assert (=> b!193409 m!220213))

(assert (=> b!193409 m!220209))

(assert (=> b!193409 m!220197))

(declare-fun m!220215 () Bool)

(assert (=> b!193409 m!220215))

(assert (=> b!193409 m!220211))

(assert (=> b!193409 m!220197))

(declare-fun m!220217 () Bool)

(assert (=> b!193414 m!220217))

(declare-fun m!220219 () Bool)

(assert (=> b!193414 m!220219))

(assert (=> b!193414 m!220219))

(declare-fun m!220221 () Bool)

(assert (=> b!193414 m!220221))

(declare-fun m!220223 () Bool)

(assert (=> b!193414 m!220223))

(declare-fun m!220225 () Bool)

(assert (=> b!193414 m!220225))

(declare-fun m!220227 () Bool)

(assert (=> b!193414 m!220227))

(declare-fun m!220229 () Bool)

(assert (=> b!193414 m!220229))

(declare-fun m!220231 () Bool)

(assert (=> b!193414 m!220231))

(declare-fun m!220233 () Bool)

(assert (=> b!193414 m!220233))

(assert (=> b!193414 m!220231))

(declare-fun m!220235 () Bool)

(assert (=> b!193414 m!220235))

(assert (=> b!193414 m!220227))

(declare-fun m!220237 () Bool)

(assert (=> b!193414 m!220237))

(declare-fun m!220239 () Bool)

(assert (=> b!193414 m!220239))

(declare-fun m!220241 () Bool)

(assert (=> b!193414 m!220241))

(assert (=> b!193414 m!220225))

(declare-fun m!220243 () Bool)

(assert (=> b!193414 m!220243))

(declare-fun m!220245 () Bool)

(assert (=> b!193414 m!220245))

(assert (=> b!193414 m!220197))

(assert (=> b!193414 m!220193))

(assert (=> b!193303 d!56491))

(declare-fun d!56493 () Bool)

(assert (=> d!56493 (= (validMask!0 (mask!9197 thiss!1248)) (and (or (= (mask!9197 thiss!1248) #b00000000000000000000000000000111) (= (mask!9197 thiss!1248) #b00000000000000000000000000001111) (= (mask!9197 thiss!1248) #b00000000000000000000000000011111) (= (mask!9197 thiss!1248) #b00000000000000000000000000111111) (= (mask!9197 thiss!1248) #b00000000000000000000000001111111) (= (mask!9197 thiss!1248) #b00000000000000000000000011111111) (= (mask!9197 thiss!1248) #b00000000000000000000000111111111) (= (mask!9197 thiss!1248) #b00000000000000000000001111111111) (= (mask!9197 thiss!1248) #b00000000000000000000011111111111) (= (mask!9197 thiss!1248) #b00000000000000000000111111111111) (= (mask!9197 thiss!1248) #b00000000000000000001111111111111) (= (mask!9197 thiss!1248) #b00000000000000000011111111111111) (= (mask!9197 thiss!1248) #b00000000000000000111111111111111) (= (mask!9197 thiss!1248) #b00000000000000001111111111111111) (= (mask!9197 thiss!1248) #b00000000000000011111111111111111) (= (mask!9197 thiss!1248) #b00000000000000111111111111111111) (= (mask!9197 thiss!1248) #b00000000000001111111111111111111) (= (mask!9197 thiss!1248) #b00000000000011111111111111111111) (= (mask!9197 thiss!1248) #b00000000000111111111111111111111) (= (mask!9197 thiss!1248) #b00000000001111111111111111111111) (= (mask!9197 thiss!1248) #b00000000011111111111111111111111) (= (mask!9197 thiss!1248) #b00000000111111111111111111111111) (= (mask!9197 thiss!1248) #b00000001111111111111111111111111) (= (mask!9197 thiss!1248) #b00000011111111111111111111111111) (= (mask!9197 thiss!1248) #b00000111111111111111111111111111) (= (mask!9197 thiss!1248) #b00001111111111111111111111111111) (= (mask!9197 thiss!1248) #b00011111111111111111111111111111) (= (mask!9197 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9197 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!193303 d!56493))

(declare-fun d!56495 () Bool)

(declare-fun e!127278 () Bool)

(assert (=> d!56495 e!127278))

(declare-fun res!91423 () Bool)

(assert (=> d!56495 (=> res!91423 e!127278)))

(declare-fun lt!96358 () Bool)

(assert (=> d!56495 (= res!91423 (not lt!96358))))

(declare-fun lt!96356 () Bool)

(assert (=> d!56495 (= lt!96358 lt!96356)))

(declare-fun lt!96357 () Unit!5853)

(declare-fun e!127279 () Unit!5853)

(assert (=> d!56495 (= lt!96357 e!127279)))

(declare-fun c!34873 () Bool)

(assert (=> d!56495 (= c!34873 lt!96356)))

(declare-fun containsKey!246 (List!2460 (_ BitVec 64)) Bool)

(assert (=> d!56495 (= lt!96356 (containsKey!246 (toList!1253 lt!96263) key!828))))

(assert (=> d!56495 (= (contains!1368 lt!96263 key!828) lt!96358)))

(declare-fun b!193431 () Bool)

(declare-fun lt!96359 () Unit!5853)

(assert (=> b!193431 (= e!127279 lt!96359)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!195 (List!2460 (_ BitVec 64)) Unit!5853)

(assert (=> b!193431 (= lt!96359 (lemmaContainsKeyImpliesGetValueByKeyDefined!195 (toList!1253 lt!96263) key!828))))

(declare-datatypes ((Option!248 0))(
  ( (Some!247 (v!4240 V!5619)) (None!246) )
))
(declare-fun isDefined!196 (Option!248) Bool)

(declare-fun getValueByKey!242 (List!2460 (_ BitVec 64)) Option!248)

(assert (=> b!193431 (isDefined!196 (getValueByKey!242 (toList!1253 lt!96263) key!828))))

(declare-fun b!193432 () Bool)

(declare-fun Unit!5859 () Unit!5853)

(assert (=> b!193432 (= e!127279 Unit!5859)))

(declare-fun b!193433 () Bool)

(assert (=> b!193433 (= e!127278 (isDefined!196 (getValueByKey!242 (toList!1253 lt!96263) key!828)))))

(assert (= (and d!56495 c!34873) b!193431))

(assert (= (and d!56495 (not c!34873)) b!193432))

(assert (= (and d!56495 (not res!91423)) b!193433))

(declare-fun m!220247 () Bool)

(assert (=> d!56495 m!220247))

(declare-fun m!220249 () Bool)

(assert (=> b!193431 m!220249))

(declare-fun m!220251 () Bool)

(assert (=> b!193431 m!220251))

(assert (=> b!193431 m!220251))

(declare-fun m!220253 () Bool)

(assert (=> b!193431 m!220253))

(assert (=> b!193433 m!220251))

(assert (=> b!193433 m!220251))

(assert (=> b!193433 m!220253))

(assert (=> b!193303 d!56495))

(declare-fun d!56497 () Bool)

(declare-fun e!127282 () Bool)

(assert (=> d!56497 e!127282))

(declare-fun res!91429 () Bool)

(assert (=> d!56497 (=> (not res!91429) (not e!127282))))

(declare-fun lt!96368 () ListLongMap!2475)

(assert (=> d!56497 (= res!91429 (contains!1368 lt!96368 (_1!1782 (tuple2!3545 key!828 v!309))))))

(declare-fun lt!96369 () List!2460)

(assert (=> d!56497 (= lt!96368 (ListLongMap!2476 lt!96369))))

(declare-fun lt!96371 () Unit!5853)

(declare-fun lt!96370 () Unit!5853)

(assert (=> d!56497 (= lt!96371 lt!96370)))

(assert (=> d!56497 (= (getValueByKey!242 lt!96369 (_1!1782 (tuple2!3545 key!828 v!309))) (Some!247 (_2!1782 (tuple2!3545 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!131 (List!2460 (_ BitVec 64) V!5619) Unit!5853)

(assert (=> d!56497 (= lt!96370 (lemmaContainsTupThenGetReturnValue!131 lt!96369 (_1!1782 (tuple2!3545 key!828 v!309)) (_2!1782 (tuple2!3545 key!828 v!309))))))

(declare-fun insertStrictlySorted!133 (List!2460 (_ BitVec 64) V!5619) List!2460)

(assert (=> d!56497 (= lt!96369 (insertStrictlySorted!133 (toList!1253 lt!96263) (_1!1782 (tuple2!3545 key!828 v!309)) (_2!1782 (tuple2!3545 key!828 v!309))))))

(assert (=> d!56497 (= (+!311 lt!96263 (tuple2!3545 key!828 v!309)) lt!96368)))

(declare-fun b!193438 () Bool)

(declare-fun res!91428 () Bool)

(assert (=> b!193438 (=> (not res!91428) (not e!127282))))

(assert (=> b!193438 (= res!91428 (= (getValueByKey!242 (toList!1253 lt!96368) (_1!1782 (tuple2!3545 key!828 v!309))) (Some!247 (_2!1782 (tuple2!3545 key!828 v!309)))))))

(declare-fun b!193439 () Bool)

(declare-fun contains!1370 (List!2460 tuple2!3544) Bool)

(assert (=> b!193439 (= e!127282 (contains!1370 (toList!1253 lt!96368) (tuple2!3545 key!828 v!309)))))

(assert (= (and d!56497 res!91429) b!193438))

(assert (= (and b!193438 res!91428) b!193439))

(declare-fun m!220255 () Bool)

(assert (=> d!56497 m!220255))

(declare-fun m!220257 () Bool)

(assert (=> d!56497 m!220257))

(declare-fun m!220259 () Bool)

(assert (=> d!56497 m!220259))

(declare-fun m!220261 () Bool)

(assert (=> d!56497 m!220261))

(declare-fun m!220263 () Bool)

(assert (=> b!193438 m!220263))

(declare-fun m!220265 () Bool)

(assert (=> b!193439 m!220265))

(assert (=> b!193303 d!56497))

(declare-fun b!193440 () Bool)

(declare-fun e!127287 () Bool)

(declare-fun e!127284 () Bool)

(assert (=> b!193440 (= e!127287 e!127284)))

(declare-fun res!91433 () Bool)

(declare-fun call!19554 () Bool)

(assert (=> b!193440 (= res!91433 call!19554)))

(assert (=> b!193440 (=> (not res!91433) (not e!127284))))

(declare-fun bm!19546 () Bool)

(declare-fun lt!96391 () ListLongMap!2475)

(assert (=> bm!19546 (= call!19554 (contains!1368 lt!96391 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193441 () Bool)

(declare-fun res!91432 () Bool)

(declare-fun e!127295 () Bool)

(assert (=> b!193441 (=> (not res!91432) (not e!127295))))

(declare-fun e!127285 () Bool)

(assert (=> b!193441 (= res!91432 e!127285)))

(declare-fun res!91435 () Bool)

(assert (=> b!193441 (=> res!91435 e!127285)))

(declare-fun e!127283 () Bool)

(assert (=> b!193441 (= res!91435 (not e!127283))))

(declare-fun res!91437 () Bool)

(assert (=> b!193441 (=> (not res!91437) (not e!127283))))

(assert (=> b!193441 (= res!91437 (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193442 () Bool)

(declare-fun e!127294 () Bool)

(declare-fun e!127293 () Bool)

(assert (=> b!193442 (= e!127294 e!127293)))

(declare-fun res!91436 () Bool)

(declare-fun call!19551 () Bool)

(assert (=> b!193442 (= res!91436 call!19551)))

(assert (=> b!193442 (=> (not res!91436) (not e!127293))))

(declare-fun b!193443 () Bool)

(assert (=> b!193443 (= e!127284 (= (apply!186 lt!96391 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3787 thiss!1248)))))

(declare-fun b!193444 () Bool)

(declare-fun res!91430 () Bool)

(assert (=> b!193444 (=> (not res!91430) (not e!127295))))

(assert (=> b!193444 (= res!91430 e!127294)))

(declare-fun c!34874 () Bool)

(assert (=> b!193444 (= c!34874 (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!56499 () Bool)

(assert (=> d!56499 e!127295))

(declare-fun res!91434 () Bool)

(assert (=> d!56499 (=> (not res!91434) (not e!127295))))

(assert (=> d!56499 (= res!91434 (or (bvsge #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))))

(declare-fun lt!96388 () ListLongMap!2475)

(assert (=> d!56499 (= lt!96391 lt!96388)))

(declare-fun lt!96376 () Unit!5853)

(declare-fun e!127291 () Unit!5853)

(assert (=> d!56499 (= lt!96376 e!127291)))

(declare-fun c!34877 () Bool)

(declare-fun e!127286 () Bool)

(assert (=> d!56499 (= c!34877 e!127286)))

(declare-fun res!91438 () Bool)

(assert (=> d!56499 (=> (not res!91438) (not e!127286))))

(assert (=> d!56499 (= res!91438 (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun e!127292 () ListLongMap!2475)

(assert (=> d!56499 (= lt!96388 e!127292)))

(declare-fun c!34878 () Bool)

(assert (=> d!56499 (= c!34878 (and (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!56499 (validMask!0 (mask!9197 thiss!1248))))

(assert (=> d!56499 (= (getCurrentListMap!896 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)) lt!96391)))

(declare-fun b!193445 () Bool)

(declare-fun e!127289 () ListLongMap!2475)

(declare-fun call!19550 () ListLongMap!2475)

(assert (=> b!193445 (= e!127289 call!19550)))

(declare-fun bm!19547 () Bool)

(declare-fun call!19553 () ListLongMap!2475)

(assert (=> bm!19547 (= call!19553 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun b!193446 () Bool)

(declare-fun e!127290 () Bool)

(assert (=> b!193446 (= e!127285 e!127290)))

(declare-fun res!91431 () Bool)

(assert (=> b!193446 (=> (not res!91431) (not e!127290))))

(assert (=> b!193446 (= res!91431 (contains!1368 lt!96391 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!193446 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193447 () Bool)

(assert (=> b!193447 (= e!127290 (= (apply!186 lt!96391 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)) (get!2232 (select (arr!3863 (_values!3929 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!524 (defaultEntry!3946 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!193447 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4187 (_values!3929 thiss!1248))))))

(assert (=> b!193447 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193448 () Bool)

(declare-fun c!34879 () Bool)

(assert (=> b!193448 (= c!34879 (and (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!127288 () ListLongMap!2475)

(assert (=> b!193448 (= e!127288 e!127289)))

(declare-fun b!193449 () Bool)

(assert (=> b!193449 (= e!127287 (not call!19554))))

(declare-fun b!193450 () Bool)

(assert (=> b!193450 (= e!127292 e!127288)))

(declare-fun c!34876 () Bool)

(assert (=> b!193450 (= c!34876 (and (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!193451 () Bool)

(declare-fun call!19555 () ListLongMap!2475)

(assert (=> b!193451 (= e!127289 call!19555)))

(declare-fun b!193452 () Bool)

(declare-fun lt!96372 () Unit!5853)

(assert (=> b!193452 (= e!127291 lt!96372)))

(declare-fun lt!96378 () ListLongMap!2475)

(assert (=> b!193452 (= lt!96378 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96382 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96382 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96377 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96377 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96381 () Unit!5853)

(assert (=> b!193452 (= lt!96381 (addStillContains!162 lt!96378 lt!96382 (zeroValue!3787 thiss!1248) lt!96377))))

(assert (=> b!193452 (contains!1368 (+!311 lt!96378 (tuple2!3545 lt!96382 (zeroValue!3787 thiss!1248))) lt!96377)))

(declare-fun lt!96384 () Unit!5853)

(assert (=> b!193452 (= lt!96384 lt!96381)))

(declare-fun lt!96386 () ListLongMap!2475)

(assert (=> b!193452 (= lt!96386 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96393 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96393 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96387 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96387 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96383 () Unit!5853)

(assert (=> b!193452 (= lt!96383 (addApplyDifferent!162 lt!96386 lt!96393 (minValue!3787 thiss!1248) lt!96387))))

(assert (=> b!193452 (= (apply!186 (+!311 lt!96386 (tuple2!3545 lt!96393 (minValue!3787 thiss!1248))) lt!96387) (apply!186 lt!96386 lt!96387))))

(declare-fun lt!96390 () Unit!5853)

(assert (=> b!193452 (= lt!96390 lt!96383)))

(declare-fun lt!96389 () ListLongMap!2475)

(assert (=> b!193452 (= lt!96389 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96392 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96392 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96374 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96374 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96380 () Unit!5853)

(assert (=> b!193452 (= lt!96380 (addApplyDifferent!162 lt!96389 lt!96392 (zeroValue!3787 thiss!1248) lt!96374))))

(assert (=> b!193452 (= (apply!186 (+!311 lt!96389 (tuple2!3545 lt!96392 (zeroValue!3787 thiss!1248))) lt!96374) (apply!186 lt!96389 lt!96374))))

(declare-fun lt!96379 () Unit!5853)

(assert (=> b!193452 (= lt!96379 lt!96380)))

(declare-fun lt!96375 () ListLongMap!2475)

(assert (=> b!193452 (= lt!96375 (getCurrentListMapNoExtraKeys!216 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)))))

(declare-fun lt!96373 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96373 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!96385 () (_ BitVec 64))

(assert (=> b!193452 (= lt!96385 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193452 (= lt!96372 (addApplyDifferent!162 lt!96375 lt!96373 (minValue!3787 thiss!1248) lt!96385))))

(assert (=> b!193452 (= (apply!186 (+!311 lt!96375 (tuple2!3545 lt!96373 (minValue!3787 thiss!1248))) lt!96385) (apply!186 lt!96375 lt!96385))))

(declare-fun b!193453 () Bool)

(assert (=> b!193453 (= e!127295 e!127287)))

(declare-fun c!34875 () Bool)

(assert (=> b!193453 (= c!34875 (not (= (bvand (extraKeys!3683 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!193454 () Bool)

(assert (=> b!193454 (= e!127286 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19548 () Bool)

(declare-fun call!19549 () ListLongMap!2475)

(assert (=> bm!19548 (= call!19555 call!19549)))

(declare-fun bm!19549 () Bool)

(declare-fun call!19552 () ListLongMap!2475)

(assert (=> bm!19549 (= call!19552 (+!311 (ite c!34878 call!19553 (ite c!34876 call!19549 call!19555)) (ite (or c!34878 c!34876) (tuple2!3545 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3787 thiss!1248)) (tuple2!3545 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3787 thiss!1248)))))))

(declare-fun b!193455 () Bool)

(declare-fun Unit!5860 () Unit!5853)

(assert (=> b!193455 (= e!127291 Unit!5860)))

(declare-fun bm!19550 () Bool)

(assert (=> bm!19550 (= call!19550 call!19552)))

(declare-fun bm!19551 () Bool)

(assert (=> bm!19551 (= call!19551 (contains!1368 lt!96391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!193456 () Bool)

(assert (=> b!193456 (= e!127288 call!19550)))

(declare-fun b!193457 () Bool)

(assert (=> b!193457 (= e!127283 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193458 () Bool)

(assert (=> b!193458 (= e!127293 (= (apply!186 lt!96391 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3787 thiss!1248)))))

(declare-fun bm!19552 () Bool)

(assert (=> bm!19552 (= call!19549 call!19553)))

(declare-fun b!193459 () Bool)

(assert (=> b!193459 (= e!127292 (+!311 call!19552 (tuple2!3545 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3787 thiss!1248))))))

(declare-fun b!193460 () Bool)

(assert (=> b!193460 (= e!127294 (not call!19551))))

(assert (= (and d!56499 c!34878) b!193459))

(assert (= (and d!56499 (not c!34878)) b!193450))

(assert (= (and b!193450 c!34876) b!193456))

(assert (= (and b!193450 (not c!34876)) b!193448))

(assert (= (and b!193448 c!34879) b!193445))

(assert (= (and b!193448 (not c!34879)) b!193451))

(assert (= (or b!193445 b!193451) bm!19548))

(assert (= (or b!193456 bm!19548) bm!19552))

(assert (= (or b!193456 b!193445) bm!19550))

(assert (= (or b!193459 bm!19552) bm!19547))

(assert (= (or b!193459 bm!19550) bm!19549))

(assert (= (and d!56499 res!91438) b!193454))

(assert (= (and d!56499 c!34877) b!193452))

(assert (= (and d!56499 (not c!34877)) b!193455))

(assert (= (and d!56499 res!91434) b!193441))

(assert (= (and b!193441 res!91437) b!193457))

(assert (= (and b!193441 (not res!91435)) b!193446))

(assert (= (and b!193446 res!91431) b!193447))

(assert (= (and b!193441 res!91432) b!193444))

(assert (= (and b!193444 c!34874) b!193442))

(assert (= (and b!193444 (not c!34874)) b!193460))

(assert (= (and b!193442 res!91436) b!193458))

(assert (= (or b!193442 b!193460) bm!19551))

(assert (= (and b!193444 res!91430) b!193453))

(assert (= (and b!193453 c!34875) b!193440))

(assert (= (and b!193453 (not c!34875)) b!193449))

(assert (= (and b!193440 res!91433) b!193443))

(assert (= (or b!193440 b!193449) bm!19546))

(declare-fun b_lambda!7495 () Bool)

(assert (=> (not b_lambda!7495) (not b!193447)))

(assert (=> b!193447 t!7394))

(declare-fun b_and!11437 () Bool)

(assert (= b_and!11435 (and (=> t!7394 result!4935) b_and!11437)))

(assert (=> d!56499 m!220133))

(declare-fun m!220267 () Bool)

(assert (=> b!193443 m!220267))

(declare-fun m!220269 () Bool)

(assert (=> bm!19551 m!220269))

(declare-fun m!220271 () Bool)

(assert (=> bm!19547 m!220271))

(declare-fun m!220273 () Bool)

(assert (=> bm!19546 m!220273))

(assert (=> b!193446 m!220197))

(assert (=> b!193446 m!220197))

(declare-fun m!220275 () Bool)

(assert (=> b!193446 m!220275))

(assert (=> b!193457 m!220197))

(assert (=> b!193457 m!220197))

(assert (=> b!193457 m!220201))

(declare-fun m!220277 () Bool)

(assert (=> b!193459 m!220277))

(assert (=> b!193454 m!220197))

(assert (=> b!193454 m!220197))

(assert (=> b!193454 m!220201))

(declare-fun m!220279 () Bool)

(assert (=> bm!19549 m!220279))

(declare-fun m!220281 () Bool)

(assert (=> b!193458 m!220281))

(declare-fun m!220283 () Bool)

(assert (=> b!193447 m!220283))

(assert (=> b!193447 m!220211))

(declare-fun m!220285 () Bool)

(assert (=> b!193447 m!220285))

(assert (=> b!193447 m!220283))

(assert (=> b!193447 m!220197))

(declare-fun m!220287 () Bool)

(assert (=> b!193447 m!220287))

(assert (=> b!193447 m!220211))

(assert (=> b!193447 m!220197))

(declare-fun m!220289 () Bool)

(assert (=> b!193452 m!220289))

(declare-fun m!220291 () Bool)

(assert (=> b!193452 m!220291))

(assert (=> b!193452 m!220291))

(declare-fun m!220293 () Bool)

(assert (=> b!193452 m!220293))

(declare-fun m!220295 () Bool)

(assert (=> b!193452 m!220295))

(declare-fun m!220297 () Bool)

(assert (=> b!193452 m!220297))

(declare-fun m!220299 () Bool)

(assert (=> b!193452 m!220299))

(declare-fun m!220301 () Bool)

(assert (=> b!193452 m!220301))

(declare-fun m!220303 () Bool)

(assert (=> b!193452 m!220303))

(declare-fun m!220305 () Bool)

(assert (=> b!193452 m!220305))

(assert (=> b!193452 m!220303))

(declare-fun m!220307 () Bool)

(assert (=> b!193452 m!220307))

(assert (=> b!193452 m!220299))

(declare-fun m!220309 () Bool)

(assert (=> b!193452 m!220309))

(declare-fun m!220311 () Bool)

(assert (=> b!193452 m!220311))

(declare-fun m!220313 () Bool)

(assert (=> b!193452 m!220313))

(assert (=> b!193452 m!220297))

(declare-fun m!220315 () Bool)

(assert (=> b!193452 m!220315))

(declare-fun m!220317 () Bool)

(assert (=> b!193452 m!220317))

(assert (=> b!193452 m!220197))

(assert (=> b!193452 m!220271))

(assert (=> b!193303 d!56499))

(declare-fun d!56501 () Bool)

(declare-fun e!127298 () Bool)

(assert (=> d!56501 e!127298))

(declare-fun res!91441 () Bool)

(assert (=> d!56501 (=> (not res!91441) (not e!127298))))

(assert (=> d!56501 (= res!91441 (and (bvsge (index!4963 lt!96261) #b00000000000000000000000000000000) (bvslt (index!4963 lt!96261) (size!4187 (_values!3929 thiss!1248)))))))

(declare-fun lt!96396 () Unit!5853)

(declare-fun choose!1065 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 32) (_ BitVec 64) V!5619 Int) Unit!5853)

(assert (=> d!56501 (= lt!96396 (choose!1065 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) (index!4963 lt!96261) key!828 v!309 (defaultEntry!3946 thiss!1248)))))

(assert (=> d!56501 (validMask!0 (mask!9197 thiss!1248))))

(assert (=> d!56501 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!117 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) (index!4963 lt!96261) key!828 v!309 (defaultEntry!3946 thiss!1248)) lt!96396)))

(declare-fun b!193463 () Bool)

(assert (=> b!193463 (= e!127298 (= (+!311 (getCurrentListMap!896 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248)) (tuple2!3545 key!828 v!309)) (getCurrentListMap!896 (_keys!5936 thiss!1248) (array!8207 (store (arr!3863 (_values!3929 thiss!1248)) (index!4963 lt!96261) (ValueCellFull!1896 v!309)) (size!4187 (_values!3929 thiss!1248))) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3946 thiss!1248))))))

(assert (= (and d!56501 res!91441) b!193463))

(declare-fun m!220319 () Bool)

(assert (=> d!56501 m!220319))

(assert (=> d!56501 m!220133))

(assert (=> b!193463 m!220123))

(assert (=> b!193463 m!220123))

(declare-fun m!220321 () Bool)

(assert (=> b!193463 m!220321))

(assert (=> b!193463 m!220127))

(assert (=> b!193463 m!220125))

(assert (=> b!193303 d!56501))

(declare-fun d!56503 () Bool)

(declare-fun e!127301 () Bool)

(assert (=> d!56503 e!127301))

(declare-fun res!91447 () Bool)

(assert (=> d!56503 (=> (not res!91447) (not e!127301))))

(declare-fun lt!96402 () SeekEntryResult!698)

(assert (=> d!56503 (= res!91447 ((_ is Found!698) lt!96402))))

(assert (=> d!56503 (= lt!96402 (seekEntryOrOpen!0 key!828 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(declare-fun lt!96401 () Unit!5853)

(declare-fun choose!1066 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 64) Int) Unit!5853)

(assert (=> d!56503 (= lt!96401 (choose!1066 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) key!828 (defaultEntry!3946 thiss!1248)))))

(assert (=> d!56503 (validMask!0 (mask!9197 thiss!1248))))

(assert (=> d!56503 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!183 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) key!828 (defaultEntry!3946 thiss!1248)) lt!96401)))

(declare-fun b!193468 () Bool)

(declare-fun res!91446 () Bool)

(assert (=> b!193468 (=> (not res!91446) (not e!127301))))

(assert (=> b!193468 (= res!91446 (inRange!0 (index!4963 lt!96402) (mask!9197 thiss!1248)))))

(declare-fun b!193469 () Bool)

(assert (=> b!193469 (= e!127301 (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4963 lt!96402)) key!828))))

(assert (=> b!193469 (and (bvsge (index!4963 lt!96402) #b00000000000000000000000000000000) (bvslt (index!4963 lt!96402) (size!4186 (_keys!5936 thiss!1248))))))

(assert (= (and d!56503 res!91447) b!193468))

(assert (= (and b!193468 res!91446) b!193469))

(assert (=> d!56503 m!220143))

(declare-fun m!220323 () Bool)

(assert (=> d!56503 m!220323))

(assert (=> d!56503 m!220133))

(declare-fun m!220325 () Bool)

(assert (=> b!193468 m!220325))

(declare-fun m!220327 () Bool)

(assert (=> b!193469 m!220327))

(assert (=> b!193298 d!56503))

(declare-fun d!56505 () Bool)

(assert (=> d!56505 (= (inRange!0 (index!4963 lt!96261) (mask!9197 thiss!1248)) (and (bvsge (index!4963 lt!96261) #b00000000000000000000000000000000) (bvslt (index!4963 lt!96261) (bvadd (mask!9197 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!193298 d!56505))

(declare-fun d!56507 () Bool)

(declare-fun lt!96410 () SeekEntryResult!698)

(assert (=> d!56507 (and (or ((_ is Undefined!698) lt!96410) (not ((_ is Found!698) lt!96410)) (and (bvsge (index!4963 lt!96410) #b00000000000000000000000000000000) (bvslt (index!4963 lt!96410) (size!4186 (_keys!5936 thiss!1248))))) (or ((_ is Undefined!698) lt!96410) ((_ is Found!698) lt!96410) (not ((_ is MissingZero!698) lt!96410)) (and (bvsge (index!4962 lt!96410) #b00000000000000000000000000000000) (bvslt (index!4962 lt!96410) (size!4186 (_keys!5936 thiss!1248))))) (or ((_ is Undefined!698) lt!96410) ((_ is Found!698) lt!96410) ((_ is MissingZero!698) lt!96410) (not ((_ is MissingVacant!698) lt!96410)) (and (bvsge (index!4965 lt!96410) #b00000000000000000000000000000000) (bvslt (index!4965 lt!96410) (size!4186 (_keys!5936 thiss!1248))))) (or ((_ is Undefined!698) lt!96410) (ite ((_ is Found!698) lt!96410) (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4963 lt!96410)) key!828) (ite ((_ is MissingZero!698) lt!96410) (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4962 lt!96410)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!698) lt!96410) (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4965 lt!96410)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!127309 () SeekEntryResult!698)

(assert (=> d!56507 (= lt!96410 e!127309)))

(declare-fun c!34886 () Bool)

(declare-fun lt!96409 () SeekEntryResult!698)

(assert (=> d!56507 (= c!34886 (and ((_ is Intermediate!698) lt!96409) (undefined!1510 lt!96409)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8204 (_ BitVec 32)) SeekEntryResult!698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!56507 (= lt!96409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9197 thiss!1248)) key!828 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(assert (=> d!56507 (validMask!0 (mask!9197 thiss!1248))))

(assert (=> d!56507 (= (seekEntryOrOpen!0 key!828 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)) lt!96410)))

(declare-fun b!193482 () Bool)

(declare-fun c!34887 () Bool)

(declare-fun lt!96411 () (_ BitVec 64))

(assert (=> b!193482 (= c!34887 (= lt!96411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127308 () SeekEntryResult!698)

(declare-fun e!127310 () SeekEntryResult!698)

(assert (=> b!193482 (= e!127308 e!127310)))

(declare-fun b!193483 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8204 (_ BitVec 32)) SeekEntryResult!698)

(assert (=> b!193483 (= e!127310 (seekKeyOrZeroReturnVacant!0 (x!20658 lt!96409) (index!4964 lt!96409) (index!4964 lt!96409) key!828 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(declare-fun b!193484 () Bool)

(assert (=> b!193484 (= e!127310 (MissingZero!698 (index!4964 lt!96409)))))

(declare-fun b!193485 () Bool)

(assert (=> b!193485 (= e!127309 e!127308)))

(assert (=> b!193485 (= lt!96411 (select (arr!3862 (_keys!5936 thiss!1248)) (index!4964 lt!96409)))))

(declare-fun c!34888 () Bool)

(assert (=> b!193485 (= c!34888 (= lt!96411 key!828))))

(declare-fun b!193486 () Bool)

(assert (=> b!193486 (= e!127308 (Found!698 (index!4964 lt!96409)))))

(declare-fun b!193487 () Bool)

(assert (=> b!193487 (= e!127309 Undefined!698)))

(assert (= (and d!56507 c!34886) b!193487))

(assert (= (and d!56507 (not c!34886)) b!193485))

(assert (= (and b!193485 c!34888) b!193486))

(assert (= (and b!193485 (not c!34888)) b!193482))

(assert (= (and b!193482 c!34887) b!193484))

(assert (= (and b!193482 (not c!34887)) b!193483))

(declare-fun m!220329 () Bool)

(assert (=> d!56507 m!220329))

(declare-fun m!220331 () Bool)

(assert (=> d!56507 m!220331))

(assert (=> d!56507 m!220133))

(declare-fun m!220333 () Bool)

(assert (=> d!56507 m!220333))

(declare-fun m!220335 () Bool)

(assert (=> d!56507 m!220335))

(assert (=> d!56507 m!220333))

(declare-fun m!220337 () Bool)

(assert (=> d!56507 m!220337))

(declare-fun m!220339 () Bool)

(assert (=> b!193483 m!220339))

(declare-fun m!220341 () Bool)

(assert (=> b!193485 m!220341))

(assert (=> b!193302 d!56507))

(declare-fun b!193496 () Bool)

(declare-fun e!127318 () Bool)

(declare-fun e!127317 () Bool)

(assert (=> b!193496 (= e!127318 e!127317)))

(declare-fun c!34891 () Bool)

(assert (=> b!193496 (= c!34891 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19555 () Bool)

(declare-fun call!19558 () Bool)

(assert (=> bm!19555 (= call!19558 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(declare-fun d!56509 () Bool)

(declare-fun res!91452 () Bool)

(assert (=> d!56509 (=> res!91452 e!127318)))

(assert (=> d!56509 (= res!91452 (bvsge #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(assert (=> d!56509 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)) e!127318)))

(declare-fun b!193497 () Bool)

(declare-fun e!127319 () Bool)

(assert (=> b!193497 (= e!127317 e!127319)))

(declare-fun lt!96418 () (_ BitVec 64))

(assert (=> b!193497 (= lt!96418 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!96419 () Unit!5853)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8204 (_ BitVec 64) (_ BitVec 32)) Unit!5853)

(assert (=> b!193497 (= lt!96419 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5936 thiss!1248) lt!96418 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!193497 (arrayContainsKey!0 (_keys!5936 thiss!1248) lt!96418 #b00000000000000000000000000000000)))

(declare-fun lt!96420 () Unit!5853)

(assert (=> b!193497 (= lt!96420 lt!96419)))

(declare-fun res!91453 () Bool)

(assert (=> b!193497 (= res!91453 (= (seekEntryOrOpen!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000) (_keys!5936 thiss!1248) (mask!9197 thiss!1248)) (Found!698 #b00000000000000000000000000000000)))))

(assert (=> b!193497 (=> (not res!91453) (not e!127319))))

(declare-fun b!193498 () Bool)

(assert (=> b!193498 (= e!127317 call!19558)))

(declare-fun b!193499 () Bool)

(assert (=> b!193499 (= e!127319 call!19558)))

(assert (= (and d!56509 (not res!91452)) b!193496))

(assert (= (and b!193496 c!34891) b!193497))

(assert (= (and b!193496 (not c!34891)) b!193498))

(assert (= (and b!193497 res!91453) b!193499))

(assert (= (or b!193499 b!193498) bm!19555))

(assert (=> b!193496 m!220197))

(assert (=> b!193496 m!220197))

(assert (=> b!193496 m!220201))

(declare-fun m!220343 () Bool)

(assert (=> bm!19555 m!220343))

(assert (=> b!193497 m!220197))

(declare-fun m!220345 () Bool)

(assert (=> b!193497 m!220345))

(declare-fun m!220347 () Bool)

(assert (=> b!193497 m!220347))

(assert (=> b!193497 m!220197))

(declare-fun m!220349 () Bool)

(assert (=> b!193497 m!220349))

(assert (=> b!193307 d!56509))

(declare-fun b!193516 () Bool)

(declare-fun lt!96426 () SeekEntryResult!698)

(assert (=> b!193516 (and (bvsge (index!4962 lt!96426) #b00000000000000000000000000000000) (bvslt (index!4962 lt!96426) (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun res!91465 () Bool)

(assert (=> b!193516 (= res!91465 (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4962 lt!96426)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!127331 () Bool)

(assert (=> b!193516 (=> (not res!91465) (not e!127331))))

(declare-fun b!193517 () Bool)

(declare-fun call!19564 () Bool)

(assert (=> b!193517 (= e!127331 (not call!19564))))

(declare-fun d!56511 () Bool)

(declare-fun e!127330 () Bool)

(assert (=> d!56511 e!127330))

(declare-fun c!34896 () Bool)

(assert (=> d!56511 (= c!34896 ((_ is MissingZero!698) lt!96426))))

(assert (=> d!56511 (= lt!96426 (seekEntryOrOpen!0 key!828 (_keys!5936 thiss!1248) (mask!9197 thiss!1248)))))

(declare-fun lt!96425 () Unit!5853)

(declare-fun choose!1067 (array!8204 array!8206 (_ BitVec 32) (_ BitVec 32) V!5619 V!5619 (_ BitVec 64) Int) Unit!5853)

(assert (=> d!56511 (= lt!96425 (choose!1067 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) key!828 (defaultEntry!3946 thiss!1248)))))

(assert (=> d!56511 (validMask!0 (mask!9197 thiss!1248))))

(assert (=> d!56511 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!190 (_keys!5936 thiss!1248) (_values!3929 thiss!1248) (mask!9197 thiss!1248) (extraKeys!3683 thiss!1248) (zeroValue!3787 thiss!1248) (minValue!3787 thiss!1248) key!828 (defaultEntry!3946 thiss!1248)) lt!96425)))

(declare-fun b!193518 () Bool)

(declare-fun e!127329 () Bool)

(assert (=> b!193518 (= e!127330 e!127329)))

(declare-fun c!34897 () Bool)

(assert (=> b!193518 (= c!34897 ((_ is MissingVacant!698) lt!96426))))

(declare-fun bm!19560 () Bool)

(assert (=> bm!19560 (= call!19564 (arrayContainsKey!0 (_keys!5936 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!193519 () Bool)

(assert (=> b!193519 (= e!127330 e!127331)))

(declare-fun res!91464 () Bool)

(declare-fun call!19563 () Bool)

(assert (=> b!193519 (= res!91464 call!19563)))

(assert (=> b!193519 (=> (not res!91464) (not e!127331))))

(declare-fun b!193520 () Bool)

(declare-fun res!91462 () Bool)

(declare-fun e!127328 () Bool)

(assert (=> b!193520 (=> (not res!91462) (not e!127328))))

(assert (=> b!193520 (= res!91462 (= (select (arr!3862 (_keys!5936 thiss!1248)) (index!4965 lt!96426)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!193520 (and (bvsge (index!4965 lt!96426) #b00000000000000000000000000000000) (bvslt (index!4965 lt!96426) (size!4186 (_keys!5936 thiss!1248))))))

(declare-fun b!193521 () Bool)

(assert (=> b!193521 (= e!127328 (not call!19564))))

(declare-fun b!193522 () Bool)

(declare-fun res!91463 () Bool)

(assert (=> b!193522 (=> (not res!91463) (not e!127328))))

(assert (=> b!193522 (= res!91463 call!19563)))

(assert (=> b!193522 (= e!127329 e!127328)))

(declare-fun bm!19561 () Bool)

(assert (=> bm!19561 (= call!19563 (inRange!0 (ite c!34896 (index!4962 lt!96426) (index!4965 lt!96426)) (mask!9197 thiss!1248)))))

(declare-fun b!193523 () Bool)

(assert (=> b!193523 (= e!127329 ((_ is Undefined!698) lt!96426))))

(assert (= (and d!56511 c!34896) b!193519))

(assert (= (and d!56511 (not c!34896)) b!193518))

(assert (= (and b!193519 res!91464) b!193516))

(assert (= (and b!193516 res!91465) b!193517))

(assert (= (and b!193518 c!34897) b!193522))

(assert (= (and b!193518 (not c!34897)) b!193523))

(assert (= (and b!193522 res!91463) b!193520))

(assert (= (and b!193520 res!91462) b!193521))

(assert (= (or b!193519 b!193522) bm!19561))

(assert (= (or b!193517 b!193521) bm!19560))

(declare-fun m!220351 () Bool)

(assert (=> b!193516 m!220351))

(declare-fun m!220353 () Bool)

(assert (=> b!193520 m!220353))

(declare-fun m!220355 () Bool)

(assert (=> bm!19560 m!220355))

(assert (=> d!56511 m!220143))

(declare-fun m!220357 () Bool)

(assert (=> d!56511 m!220357))

(assert (=> d!56511 m!220133))

(declare-fun m!220359 () Bool)

(assert (=> bm!19561 m!220359))

(assert (=> b!193301 d!56511))

(declare-fun d!56513 () Bool)

(declare-fun res!91472 () Bool)

(declare-fun e!127340 () Bool)

(assert (=> d!56513 (=> res!91472 e!127340)))

(assert (=> d!56513 (= res!91472 (bvsge #b00000000000000000000000000000000 (size!4186 (_keys!5936 thiss!1248))))))

(assert (=> d!56513 (= (arrayNoDuplicates!0 (_keys!5936 thiss!1248) #b00000000000000000000000000000000 Nil!2456) e!127340)))

(declare-fun b!193534 () Bool)

(declare-fun e!127343 () Bool)

(declare-fun e!127342 () Bool)

(assert (=> b!193534 (= e!127343 e!127342)))

(declare-fun c!34900 () Bool)

(assert (=> b!193534 (= c!34900 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193535 () Bool)

(declare-fun call!19567 () Bool)

(assert (=> b!193535 (= e!127342 call!19567)))

(declare-fun b!193536 () Bool)

(assert (=> b!193536 (= e!127340 e!127343)))

(declare-fun res!91474 () Bool)

(assert (=> b!193536 (=> (not res!91474) (not e!127343))))

(declare-fun e!127341 () Bool)

(assert (=> b!193536 (= res!91474 (not e!127341))))

(declare-fun res!91473 () Bool)

(assert (=> b!193536 (=> (not res!91473) (not e!127341))))

(assert (=> b!193536 (= res!91473 (validKeyInArray!0 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193537 () Bool)

(declare-fun contains!1371 (List!2459 (_ BitVec 64)) Bool)

(assert (=> b!193537 (= e!127341 (contains!1371 Nil!2456 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!193538 () Bool)

(assert (=> b!193538 (= e!127342 call!19567)))

(declare-fun bm!19564 () Bool)

(assert (=> bm!19564 (= call!19567 (arrayNoDuplicates!0 (_keys!5936 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!34900 (Cons!2455 (select (arr!3862 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000) Nil!2456) Nil!2456)))))

(assert (= (and d!56513 (not res!91472)) b!193536))

(assert (= (and b!193536 res!91473) b!193537))

(assert (= (and b!193536 res!91474) b!193534))

(assert (= (and b!193534 c!34900) b!193535))

(assert (= (and b!193534 (not c!34900)) b!193538))

(assert (= (or b!193535 b!193538) bm!19564))

(assert (=> b!193534 m!220197))

(assert (=> b!193534 m!220197))

(assert (=> b!193534 m!220201))

(assert (=> b!193536 m!220197))

(assert (=> b!193536 m!220197))

(assert (=> b!193536 m!220201))

(assert (=> b!193537 m!220197))

(assert (=> b!193537 m!220197))

(declare-fun m!220361 () Bool)

(assert (=> b!193537 m!220361))

(assert (=> bm!19564 m!220197))

(declare-fun m!220363 () Bool)

(assert (=> bm!19564 m!220363))

(assert (=> b!193295 d!56513))

(declare-fun d!56515 () Bool)

(assert (=> d!56515 (= (array_inv!2497 (_keys!5936 thiss!1248)) (bvsge (size!4186 (_keys!5936 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193304 d!56515))

(declare-fun d!56517 () Bool)

(assert (=> d!56517 (= (array_inv!2498 (_values!3929 thiss!1248)) (bvsge (size!4187 (_values!3929 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!193304 d!56517))

(declare-fun mapNonEmpty!7751 () Bool)

(declare-fun mapRes!7751 () Bool)

(declare-fun tp!16994 () Bool)

(declare-fun e!127348 () Bool)

(assert (=> mapNonEmpty!7751 (= mapRes!7751 (and tp!16994 e!127348))))

(declare-fun mapValue!7751 () ValueCell!1896)

(declare-fun mapKey!7751 () (_ BitVec 32))

(declare-fun mapRest!7751 () (Array (_ BitVec 32) ValueCell!1896))

(assert (=> mapNonEmpty!7751 (= mapRest!7745 (store mapRest!7751 mapKey!7751 mapValue!7751))))

(declare-fun b!193546 () Bool)

(declare-fun e!127349 () Bool)

(assert (=> b!193546 (= e!127349 tp_is_empty!4479)))

(declare-fun condMapEmpty!7751 () Bool)

(declare-fun mapDefault!7751 () ValueCell!1896)

(assert (=> mapNonEmpty!7745 (= condMapEmpty!7751 (= mapRest!7745 ((as const (Array (_ BitVec 32) ValueCell!1896)) mapDefault!7751)))))

(assert (=> mapNonEmpty!7745 (= tp!16984 (and e!127349 mapRes!7751))))

(declare-fun mapIsEmpty!7751 () Bool)

(assert (=> mapIsEmpty!7751 mapRes!7751))

(declare-fun b!193545 () Bool)

(assert (=> b!193545 (= e!127348 tp_is_empty!4479)))

(assert (= (and mapNonEmpty!7745 condMapEmpty!7751) mapIsEmpty!7751))

(assert (= (and mapNonEmpty!7745 (not condMapEmpty!7751)) mapNonEmpty!7751))

(assert (= (and mapNonEmpty!7751 ((_ is ValueCellFull!1896) mapValue!7751)) b!193545))

(assert (= (and mapNonEmpty!7745 ((_ is ValueCellFull!1896) mapDefault!7751)) b!193546))

(declare-fun m!220365 () Bool)

(assert (=> mapNonEmpty!7751 m!220365))

(declare-fun b_lambda!7497 () Bool)

(assert (= b_lambda!7493 (or (and b!193304 b_free!4707) b_lambda!7497)))

(declare-fun b_lambda!7499 () Bool)

(assert (= b_lambda!7495 (or (and b!193304 b_free!4707) b_lambda!7499)))

(check-sat (not b_lambda!7499) (not b!193414) (not d!56507) (not b!193534) (not bm!19540) (not d!56499) (not b!193408) (not bm!19549) (not b!193438) (not b!193359) (not b!193497) (not d!56491) (not b!193536) (not b_next!4707) (not bm!19547) (not b!193419) (not bm!19542) (not b_lambda!7497) (not bm!19561) (not b!193483) (not bm!19539) (not bm!19544) (not b!193357) (not d!56489) (not b!193358) (not b!193459) (not b!193446) (not bm!19546) (not bm!19564) (not bm!19560) (not b!193458) (not b!193431) (not b!193454) (not d!56501) (not b!193443) (not b!193405) (not mapNonEmpty!7751) (not b!193420) (not b!193468) (not b!193457) (not b!193439) (not d!56495) (not b!193433) (not b!193463) (not bm!19551) (not bm!19555) (not b!193409) (not d!56503) (not b!193421) (not b!193416) (not b!193452) (not d!56497) tp_is_empty!4479 (not d!56511) (not b!193496) (not b!193447) b_and!11437 (not b!193537))
(check-sat b_and!11437 (not b_next!4707))
