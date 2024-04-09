; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17526 () Bool)

(assert start!17526)

(declare-fun b!175398 () Bool)

(declare-fun b_free!4335 () Bool)

(declare-fun b_next!4335 () Bool)

(assert (=> b!175398 (= b_free!4335 (not b_next!4335))))

(declare-fun tp!15684 () Bool)

(declare-fun b_and!10833 () Bool)

(assert (=> b!175398 (= tp!15684 b_and!10833)))

(declare-fun res!83167 () Bool)

(declare-fun e!115785 () Bool)

(assert (=> start!17526 (=> (not res!83167) (not e!115785))))

(declare-datatypes ((V!5123 0))(
  ( (V!5124 (val!2098 Int)) )
))
(declare-datatypes ((ValueCell!1710 0))(
  ( (ValueCellFull!1710 (v!3968 V!5123)) (EmptyCell!1710) )
))
(declare-datatypes ((array!7352 0))(
  ( (array!7353 (arr!3490 (Array (_ BitVec 32) (_ BitVec 64))) (size!3792 (_ BitVec 32))) )
))
(declare-datatypes ((array!7354 0))(
  ( (array!7355 (arr!3491 (Array (_ BitVec 32) ValueCell!1710)) (size!3793 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2328 0))(
  ( (LongMapFixedSize!2329 (defaultEntry!3619 Int) (mask!8516 (_ BitVec 32)) (extraKeys!3356 (_ BitVec 32)) (zeroValue!3460 V!5123) (minValue!3460 V!5123) (_size!1213 (_ BitVec 32)) (_keys!5471 array!7352) (_values!3602 array!7354) (_vacant!1213 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2328)

(declare-fun valid!974 (LongMapFixedSize!2328) Bool)

(assert (=> start!17526 (= res!83167 (valid!974 thiss!1248))))

(assert (=> start!17526 e!115785))

(declare-fun e!115783 () Bool)

(assert (=> start!17526 e!115783))

(assert (=> start!17526 true))

(declare-fun b!175394 () Bool)

(declare-fun res!83169 () Bool)

(assert (=> b!175394 (=> (not res!83169) (not e!115785))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3258 0))(
  ( (tuple2!3259 (_1!1639 (_ BitVec 64)) (_2!1639 V!5123)) )
))
(declare-datatypes ((List!2241 0))(
  ( (Nil!2238) (Cons!2237 (h!2856 tuple2!3258) (t!7067 List!2241)) )
))
(declare-datatypes ((ListLongMap!2199 0))(
  ( (ListLongMap!2200 (toList!1115 List!2241)) )
))
(declare-fun contains!1169 (ListLongMap!2199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!762 (array!7352 array!7354 (_ BitVec 32) (_ BitVec 32) V!5123 V!5123 (_ BitVec 32) Int) ListLongMap!2199)

(assert (=> b!175394 (= res!83169 (contains!1169 (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)) key!828))))

(declare-fun b!175395 () Bool)

(declare-fun e!115787 () Bool)

(declare-fun e!115786 () Bool)

(declare-fun mapRes!7003 () Bool)

(assert (=> b!175395 (= e!115787 (and e!115786 mapRes!7003))))

(declare-fun condMapEmpty!7003 () Bool)

(declare-fun mapDefault!7003 () ValueCell!1710)

(assert (=> b!175395 (= condMapEmpty!7003 (= (arr!3491 (_values!3602 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1710)) mapDefault!7003)))))

(declare-fun b!175396 () Bool)

(declare-fun e!115784 () Bool)

(declare-fun tp_is_empty!4107 () Bool)

(assert (=> b!175396 (= e!115784 tp_is_empty!4107)))

(declare-fun mapNonEmpty!7003 () Bool)

(declare-fun tp!15685 () Bool)

(assert (=> mapNonEmpty!7003 (= mapRes!7003 (and tp!15685 e!115784))))

(declare-fun mapKey!7003 () (_ BitVec 32))

(declare-fun mapRest!7003 () (Array (_ BitVec 32) ValueCell!1710))

(declare-fun mapValue!7003 () ValueCell!1710)

(assert (=> mapNonEmpty!7003 (= (arr!3491 (_values!3602 thiss!1248)) (store mapRest!7003 mapKey!7003 mapValue!7003))))

(declare-fun b!175397 () Bool)

(declare-fun res!83166 () Bool)

(assert (=> b!175397 (=> (not res!83166) (not e!115785))))

(assert (=> b!175397 (= res!83166 (not (= key!828 (bvneg key!828))))))

(declare-fun array_inv!2225 (array!7352) Bool)

(declare-fun array_inv!2226 (array!7354) Bool)

(assert (=> b!175398 (= e!115783 (and tp!15684 tp_is_empty!4107 (array_inv!2225 (_keys!5471 thiss!1248)) (array_inv!2226 (_values!3602 thiss!1248)) e!115787))))

(declare-fun mapIsEmpty!7003 () Bool)

(assert (=> mapIsEmpty!7003 mapRes!7003))

(declare-fun b!175399 () Bool)

(assert (=> b!175399 (= e!115785 (and (= (size!3793 (_values!3602 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8516 thiss!1248))) (= (size!3792 (_keys!5471 thiss!1248)) (size!3793 (_values!3602 thiss!1248))) (bvslt (mask!8516 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!175400 () Bool)

(assert (=> b!175400 (= e!115786 tp_is_empty!4107)))

(declare-fun b!175401 () Bool)

(declare-fun res!83168 () Bool)

(assert (=> b!175401 (=> (not res!83168) (not e!115785))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!560 0))(
  ( (MissingZero!560 (index!4408 (_ BitVec 32))) (Found!560 (index!4409 (_ BitVec 32))) (Intermediate!560 (undefined!1372 Bool) (index!4410 (_ BitVec 32)) (x!19300 (_ BitVec 32))) (Undefined!560) (MissingVacant!560 (index!4411 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7352 (_ BitVec 32)) SeekEntryResult!560)

(assert (=> b!175401 (= res!83168 ((_ is Undefined!560) (seekEntryOrOpen!0 key!828 (_keys!5471 thiss!1248) (mask!8516 thiss!1248))))))

(declare-fun b!175402 () Bool)

(declare-fun res!83170 () Bool)

(assert (=> b!175402 (=> (not res!83170) (not e!115785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!175402 (= res!83170 (validMask!0 (mask!8516 thiss!1248)))))

(assert (= (and start!17526 res!83167) b!175397))

(assert (= (and b!175397 res!83166) b!175401))

(assert (= (and b!175401 res!83168) b!175394))

(assert (= (and b!175394 res!83169) b!175402))

(assert (= (and b!175402 res!83170) b!175399))

(assert (= (and b!175395 condMapEmpty!7003) mapIsEmpty!7003))

(assert (= (and b!175395 (not condMapEmpty!7003)) mapNonEmpty!7003))

(assert (= (and mapNonEmpty!7003 ((_ is ValueCellFull!1710) mapValue!7003)) b!175396))

(assert (= (and b!175395 ((_ is ValueCellFull!1710) mapDefault!7003)) b!175400))

(assert (= b!175398 b!175395))

(assert (= start!17526 b!175398))

(declare-fun m!204357 () Bool)

(assert (=> start!17526 m!204357))

(declare-fun m!204359 () Bool)

(assert (=> b!175401 m!204359))

(declare-fun m!204361 () Bool)

(assert (=> b!175398 m!204361))

(declare-fun m!204363 () Bool)

(assert (=> b!175398 m!204363))

(declare-fun m!204365 () Bool)

(assert (=> b!175402 m!204365))

(declare-fun m!204367 () Bool)

(assert (=> mapNonEmpty!7003 m!204367))

(declare-fun m!204369 () Bool)

(assert (=> b!175394 m!204369))

(assert (=> b!175394 m!204369))

(declare-fun m!204371 () Bool)

(assert (=> b!175394 m!204371))

(check-sat (not b!175394) tp_is_empty!4107 (not b!175398) (not start!17526) b_and!10833 (not b_next!4335) (not b!175402) (not b!175401) (not mapNonEmpty!7003))
(check-sat b_and!10833 (not b_next!4335))
(get-model)

(declare-fun d!53389 () Bool)

(assert (=> d!53389 (= (array_inv!2225 (_keys!5471 thiss!1248)) (bvsge (size!3792 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175398 d!53389))

(declare-fun d!53391 () Bool)

(assert (=> d!53391 (= (array_inv!2226 (_values!3602 thiss!1248)) (bvsge (size!3793 (_values!3602 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175398 d!53391))

(declare-fun d!53393 () Bool)

(assert (=> d!53393 (= (validMask!0 (mask!8516 thiss!1248)) (and (or (= (mask!8516 thiss!1248) #b00000000000000000000000000000111) (= (mask!8516 thiss!1248) #b00000000000000000000000000001111) (= (mask!8516 thiss!1248) #b00000000000000000000000000011111) (= (mask!8516 thiss!1248) #b00000000000000000000000000111111) (= (mask!8516 thiss!1248) #b00000000000000000000000001111111) (= (mask!8516 thiss!1248) #b00000000000000000000000011111111) (= (mask!8516 thiss!1248) #b00000000000000000000000111111111) (= (mask!8516 thiss!1248) #b00000000000000000000001111111111) (= (mask!8516 thiss!1248) #b00000000000000000000011111111111) (= (mask!8516 thiss!1248) #b00000000000000000000111111111111) (= (mask!8516 thiss!1248) #b00000000000000000001111111111111) (= (mask!8516 thiss!1248) #b00000000000000000011111111111111) (= (mask!8516 thiss!1248) #b00000000000000000111111111111111) (= (mask!8516 thiss!1248) #b00000000000000001111111111111111) (= (mask!8516 thiss!1248) #b00000000000000011111111111111111) (= (mask!8516 thiss!1248) #b00000000000000111111111111111111) (= (mask!8516 thiss!1248) #b00000000000001111111111111111111) (= (mask!8516 thiss!1248) #b00000000000011111111111111111111) (= (mask!8516 thiss!1248) #b00000000000111111111111111111111) (= (mask!8516 thiss!1248) #b00000000001111111111111111111111) (= (mask!8516 thiss!1248) #b00000000011111111111111111111111) (= (mask!8516 thiss!1248) #b00000000111111111111111111111111) (= (mask!8516 thiss!1248) #b00000001111111111111111111111111) (= (mask!8516 thiss!1248) #b00000011111111111111111111111111) (= (mask!8516 thiss!1248) #b00000111111111111111111111111111) (= (mask!8516 thiss!1248) #b00001111111111111111111111111111) (= (mask!8516 thiss!1248) #b00011111111111111111111111111111) (= (mask!8516 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8516 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!175402 d!53393))

(declare-fun d!53395 () Bool)

(declare-fun e!115811 () Bool)

(assert (=> d!53395 e!115811))

(declare-fun res!83188 () Bool)

(assert (=> d!53395 (=> res!83188 e!115811)))

(declare-fun lt!86832 () Bool)

(assert (=> d!53395 (= res!83188 (not lt!86832))))

(declare-fun lt!86829 () Bool)

(assert (=> d!53395 (= lt!86832 lt!86829)))

(declare-datatypes ((Unit!5381 0))(
  ( (Unit!5382) )
))
(declare-fun lt!86831 () Unit!5381)

(declare-fun e!115812 () Unit!5381)

(assert (=> d!53395 (= lt!86831 e!115812)))

(declare-fun c!31411 () Bool)

(assert (=> d!53395 (= c!31411 lt!86829)))

(declare-fun containsKey!192 (List!2241 (_ BitVec 64)) Bool)

(assert (=> d!53395 (= lt!86829 (containsKey!192 (toList!1115 (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248))) key!828))))

(assert (=> d!53395 (= (contains!1169 (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)) key!828) lt!86832)))

(declare-fun b!175436 () Bool)

(declare-fun lt!86830 () Unit!5381)

(assert (=> b!175436 (= e!115812 lt!86830)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!141 (List!2241 (_ BitVec 64)) Unit!5381)

(assert (=> b!175436 (= lt!86830 (lemmaContainsKeyImpliesGetValueByKeyDefined!141 (toList!1115 (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248))) key!828))))

(declare-datatypes ((Option!194 0))(
  ( (Some!193 (v!3970 V!5123)) (None!192) )
))
(declare-fun isDefined!142 (Option!194) Bool)

(declare-fun getValueByKey!188 (List!2241 (_ BitVec 64)) Option!194)

(assert (=> b!175436 (isDefined!142 (getValueByKey!188 (toList!1115 (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248))) key!828))))

(declare-fun b!175437 () Bool)

(declare-fun Unit!5383 () Unit!5381)

(assert (=> b!175437 (= e!115812 Unit!5383)))

(declare-fun b!175438 () Bool)

(assert (=> b!175438 (= e!115811 (isDefined!142 (getValueByKey!188 (toList!1115 (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248))) key!828)))))

(assert (= (and d!53395 c!31411) b!175436))

(assert (= (and d!53395 (not c!31411)) b!175437))

(assert (= (and d!53395 (not res!83188)) b!175438))

(declare-fun m!204389 () Bool)

(assert (=> d!53395 m!204389))

(declare-fun m!204391 () Bool)

(assert (=> b!175436 m!204391))

(declare-fun m!204393 () Bool)

(assert (=> b!175436 m!204393))

(assert (=> b!175436 m!204393))

(declare-fun m!204395 () Bool)

(assert (=> b!175436 m!204395))

(assert (=> b!175438 m!204393))

(assert (=> b!175438 m!204393))

(assert (=> b!175438 m!204395))

(assert (=> b!175394 d!53395))

(declare-fun b!175481 () Bool)

(declare-fun e!115845 () Bool)

(declare-fun e!115848 () Bool)

(assert (=> b!175481 (= e!115845 e!115848)))

(declare-fun res!83215 () Bool)

(declare-fun call!17772 () Bool)

(assert (=> b!175481 (= res!83215 call!17772)))

(assert (=> b!175481 (=> (not res!83215) (not e!115848))))

(declare-fun b!175482 () Bool)

(declare-fun e!115839 () ListLongMap!2199)

(declare-fun call!17771 () ListLongMap!2199)

(assert (=> b!175482 (= e!115839 call!17771)))

(declare-fun bm!17768 () Bool)

(declare-fun call!17775 () ListLongMap!2199)

(declare-fun call!17777 () ListLongMap!2199)

(assert (=> bm!17768 (= call!17775 call!17777)))

(declare-fun bm!17769 () Bool)

(declare-fun call!17773 () ListLongMap!2199)

(declare-fun call!17774 () ListLongMap!2199)

(assert (=> bm!17769 (= call!17773 call!17774)))

(declare-fun bm!17770 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!164 (array!7352 array!7354 (_ BitVec 32) (_ BitVec 32) V!5123 V!5123 (_ BitVec 32) Int) ListLongMap!2199)

(assert (=> bm!17770 (= call!17777 (getCurrentListMapNoExtraKeys!164 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)))))

(declare-fun b!175483 () Bool)

(declare-fun e!115843 () Bool)

(declare-fun call!17776 () Bool)

(assert (=> b!175483 (= e!115843 (not call!17776))))

(declare-fun b!175484 () Bool)

(declare-fun e!115847 () ListLongMap!2199)

(declare-fun e!115850 () ListLongMap!2199)

(assert (=> b!175484 (= e!115847 e!115850)))

(declare-fun c!31425 () Bool)

(assert (=> b!175484 (= c!31425 (and (not (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17771 () Bool)

(declare-fun lt!86896 () ListLongMap!2199)

(assert (=> bm!17771 (= call!17776 (contains!1169 lt!86896 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175485 () Bool)

(declare-fun e!115849 () Bool)

(declare-fun apply!134 (ListLongMap!2199 (_ BitVec 64)) V!5123)

(assert (=> b!175485 (= e!115849 (= (apply!134 lt!86896 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3460 thiss!1248)))))

(declare-fun b!175486 () Bool)

(declare-fun e!115841 () Bool)

(declare-fun get!1990 (ValueCell!1710 V!5123) V!5123)

(declare-fun dynLambda!472 (Int (_ BitVec 64)) V!5123)

(assert (=> b!175486 (= e!115841 (= (apply!134 lt!86896 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000)) (get!1990 (select (arr!3491 (_values!3602 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!472 (defaultEntry!3619 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!175486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3793 (_values!3602 thiss!1248))))))

(assert (=> b!175486 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))))))

(declare-fun b!175487 () Bool)

(assert (=> b!175487 (= e!115845 (not call!17772))))

(declare-fun b!175488 () Bool)

(declare-fun c!31428 () Bool)

(assert (=> b!175488 (= c!31428 (and (not (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!175488 (= e!115850 e!115839)))

(declare-fun bm!17772 () Bool)

(assert (=> bm!17772 (= call!17772 (contains!1169 lt!86896 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!175489 () Bool)

(declare-fun res!83211 () Bool)

(declare-fun e!115840 () Bool)

(assert (=> b!175489 (=> (not res!83211) (not e!115840))))

(assert (=> b!175489 (= res!83211 e!115843)))

(declare-fun c!31424 () Bool)

(assert (=> b!175489 (= c!31424 (not (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!53397 () Bool)

(assert (=> d!53397 e!115840))

(declare-fun res!83209 () Bool)

(assert (=> d!53397 (=> (not res!83209) (not e!115840))))

(assert (=> d!53397 (= res!83209 (or (bvsge #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))))))))

(declare-fun lt!86877 () ListLongMap!2199)

(assert (=> d!53397 (= lt!86896 lt!86877)))

(declare-fun lt!86883 () Unit!5381)

(declare-fun e!115842 () Unit!5381)

(assert (=> d!53397 (= lt!86883 e!115842)))

(declare-fun c!31429 () Bool)

(declare-fun e!115846 () Bool)

(assert (=> d!53397 (= c!31429 e!115846)))

(declare-fun res!83210 () Bool)

(assert (=> d!53397 (=> (not res!83210) (not e!115846))))

(assert (=> d!53397 (= res!83210 (bvslt #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))))))

(assert (=> d!53397 (= lt!86877 e!115847)))

(declare-fun c!31426 () Bool)

(assert (=> d!53397 (= c!31426 (and (not (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53397 (validMask!0 (mask!8516 thiss!1248))))

(assert (=> d!53397 (= (getCurrentListMap!762 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)) lt!86896)))

(declare-fun bm!17773 () Bool)

(declare-fun +!246 (ListLongMap!2199 tuple2!3258) ListLongMap!2199)

(assert (=> bm!17773 (= call!17774 (+!246 (ite c!31426 call!17777 (ite c!31425 call!17775 call!17771)) (ite (or c!31426 c!31425) (tuple2!3259 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3460 thiss!1248)) (tuple2!3259 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3460 thiss!1248)))))))

(declare-fun b!175490 () Bool)

(declare-fun Unit!5384 () Unit!5381)

(assert (=> b!175490 (= e!115842 Unit!5384)))

(declare-fun b!175491 () Bool)

(declare-fun lt!86897 () Unit!5381)

(assert (=> b!175491 (= e!115842 lt!86897)))

(declare-fun lt!86894 () ListLongMap!2199)

(assert (=> b!175491 (= lt!86894 (getCurrentListMapNoExtraKeys!164 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)))))

(declare-fun lt!86886 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86886 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86884 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86884 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86898 () Unit!5381)

(declare-fun addStillContains!110 (ListLongMap!2199 (_ BitVec 64) V!5123 (_ BitVec 64)) Unit!5381)

(assert (=> b!175491 (= lt!86898 (addStillContains!110 lt!86894 lt!86886 (zeroValue!3460 thiss!1248) lt!86884))))

(assert (=> b!175491 (contains!1169 (+!246 lt!86894 (tuple2!3259 lt!86886 (zeroValue!3460 thiss!1248))) lt!86884)))

(declare-fun lt!86889 () Unit!5381)

(assert (=> b!175491 (= lt!86889 lt!86898)))

(declare-fun lt!86888 () ListLongMap!2199)

(assert (=> b!175491 (= lt!86888 (getCurrentListMapNoExtraKeys!164 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)))))

(declare-fun lt!86885 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86885 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86895 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86895 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86891 () Unit!5381)

(declare-fun addApplyDifferent!110 (ListLongMap!2199 (_ BitVec 64) V!5123 (_ BitVec 64)) Unit!5381)

(assert (=> b!175491 (= lt!86891 (addApplyDifferent!110 lt!86888 lt!86885 (minValue!3460 thiss!1248) lt!86895))))

(assert (=> b!175491 (= (apply!134 (+!246 lt!86888 (tuple2!3259 lt!86885 (minValue!3460 thiss!1248))) lt!86895) (apply!134 lt!86888 lt!86895))))

(declare-fun lt!86880 () Unit!5381)

(assert (=> b!175491 (= lt!86880 lt!86891)))

(declare-fun lt!86879 () ListLongMap!2199)

(assert (=> b!175491 (= lt!86879 (getCurrentListMapNoExtraKeys!164 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)))))

(declare-fun lt!86882 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86882 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86887 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86887 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!86878 () Unit!5381)

(assert (=> b!175491 (= lt!86878 (addApplyDifferent!110 lt!86879 lt!86882 (zeroValue!3460 thiss!1248) lt!86887))))

(assert (=> b!175491 (= (apply!134 (+!246 lt!86879 (tuple2!3259 lt!86882 (zeroValue!3460 thiss!1248))) lt!86887) (apply!134 lt!86879 lt!86887))))

(declare-fun lt!86881 () Unit!5381)

(assert (=> b!175491 (= lt!86881 lt!86878)))

(declare-fun lt!86890 () ListLongMap!2199)

(assert (=> b!175491 (= lt!86890 (getCurrentListMapNoExtraKeys!164 (_keys!5471 thiss!1248) (_values!3602 thiss!1248) (mask!8516 thiss!1248) (extraKeys!3356 thiss!1248) (zeroValue!3460 thiss!1248) (minValue!3460 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3619 thiss!1248)))))

(declare-fun lt!86893 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86893 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!86892 () (_ BitVec 64))

(assert (=> b!175491 (= lt!86892 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!175491 (= lt!86897 (addApplyDifferent!110 lt!86890 lt!86893 (minValue!3460 thiss!1248) lt!86892))))

(assert (=> b!175491 (= (apply!134 (+!246 lt!86890 (tuple2!3259 lt!86893 (minValue!3460 thiss!1248))) lt!86892) (apply!134 lt!86890 lt!86892))))

(declare-fun b!175492 () Bool)

(declare-fun e!115844 () Bool)

(assert (=> b!175492 (= e!115844 e!115841)))

(declare-fun res!83213 () Bool)

(assert (=> b!175492 (=> (not res!83213) (not e!115841))))

(assert (=> b!175492 (= res!83213 (contains!1169 lt!86896 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!175492 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))))))

(declare-fun bm!17774 () Bool)

(assert (=> bm!17774 (= call!17771 call!17775)))

(declare-fun b!175493 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!175493 (= e!115846 (validKeyInArray!0 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175494 () Bool)

(declare-fun e!115851 () Bool)

(assert (=> b!175494 (= e!115851 (validKeyInArray!0 (select (arr!3490 (_keys!5471 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!175495 () Bool)

(assert (=> b!175495 (= e!115843 e!115849)))

(declare-fun res!83207 () Bool)

(assert (=> b!175495 (= res!83207 call!17776)))

(assert (=> b!175495 (=> (not res!83207) (not e!115849))))

(declare-fun b!175496 () Bool)

(assert (=> b!175496 (= e!115847 (+!246 call!17774 (tuple2!3259 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3460 thiss!1248))))))

(declare-fun b!175497 () Bool)

(assert (=> b!175497 (= e!115840 e!115845)))

(declare-fun c!31427 () Bool)

(assert (=> b!175497 (= c!31427 (not (= (bvand (extraKeys!3356 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!175498 () Bool)

(assert (=> b!175498 (= e!115850 call!17773)))

(declare-fun b!175499 () Bool)

(assert (=> b!175499 (= e!115848 (= (apply!134 lt!86896 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3460 thiss!1248)))))

(declare-fun b!175500 () Bool)

(assert (=> b!175500 (= e!115839 call!17773)))

(declare-fun b!175501 () Bool)

(declare-fun res!83212 () Bool)

(assert (=> b!175501 (=> (not res!83212) (not e!115840))))

(assert (=> b!175501 (= res!83212 e!115844)))

(declare-fun res!83208 () Bool)

(assert (=> b!175501 (=> res!83208 e!115844)))

(assert (=> b!175501 (= res!83208 (not e!115851))))

(declare-fun res!83214 () Bool)

(assert (=> b!175501 (=> (not res!83214) (not e!115851))))

(assert (=> b!175501 (= res!83214 (bvslt #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))))))

(assert (= (and d!53397 c!31426) b!175496))

(assert (= (and d!53397 (not c!31426)) b!175484))

(assert (= (and b!175484 c!31425) b!175498))

(assert (= (and b!175484 (not c!31425)) b!175488))

(assert (= (and b!175488 c!31428) b!175500))

(assert (= (and b!175488 (not c!31428)) b!175482))

(assert (= (or b!175500 b!175482) bm!17774))

(assert (= (or b!175498 bm!17774) bm!17768))

(assert (= (or b!175498 b!175500) bm!17769))

(assert (= (or b!175496 bm!17768) bm!17770))

(assert (= (or b!175496 bm!17769) bm!17773))

(assert (= (and d!53397 res!83210) b!175493))

(assert (= (and d!53397 c!31429) b!175491))

(assert (= (and d!53397 (not c!31429)) b!175490))

(assert (= (and d!53397 res!83209) b!175501))

(assert (= (and b!175501 res!83214) b!175494))

(assert (= (and b!175501 (not res!83208)) b!175492))

(assert (= (and b!175492 res!83213) b!175486))

(assert (= (and b!175501 res!83212) b!175489))

(assert (= (and b!175489 c!31424) b!175495))

(assert (= (and b!175489 (not c!31424)) b!175483))

(assert (= (and b!175495 res!83207) b!175485))

(assert (= (or b!175495 b!175483) bm!17771))

(assert (= (and b!175489 res!83211) b!175497))

(assert (= (and b!175497 c!31427) b!175481))

(assert (= (and b!175497 (not c!31427)) b!175487))

(assert (= (and b!175481 res!83215) b!175499))

(assert (= (or b!175481 b!175487) bm!17772))

(declare-fun b_lambda!7041 () Bool)

(assert (=> (not b_lambda!7041) (not b!175486)))

(declare-fun t!7070 () Bool)

(declare-fun tb!2787 () Bool)

(assert (=> (and b!175398 (= (defaultEntry!3619 thiss!1248) (defaultEntry!3619 thiss!1248)) t!7070) tb!2787))

(declare-fun result!4619 () Bool)

(assert (=> tb!2787 (= result!4619 tp_is_empty!4107)))

(assert (=> b!175486 t!7070))

(declare-fun b_and!10837 () Bool)

(assert (= b_and!10833 (and (=> t!7070 result!4619) b_and!10837)))

(declare-fun m!204397 () Bool)

(assert (=> b!175493 m!204397))

(assert (=> b!175493 m!204397))

(declare-fun m!204399 () Bool)

(assert (=> b!175493 m!204399))

(declare-fun m!204401 () Bool)

(assert (=> bm!17773 m!204401))

(declare-fun m!204403 () Bool)

(assert (=> bm!17772 m!204403))

(assert (=> b!175494 m!204397))

(assert (=> b!175494 m!204397))

(assert (=> b!175494 m!204399))

(declare-fun m!204405 () Bool)

(assert (=> bm!17771 m!204405))

(assert (=> b!175492 m!204397))

(assert (=> b!175492 m!204397))

(declare-fun m!204407 () Bool)

(assert (=> b!175492 m!204407))

(declare-fun m!204409 () Bool)

(assert (=> b!175499 m!204409))

(assert (=> d!53397 m!204365))

(assert (=> b!175486 m!204397))

(declare-fun m!204411 () Bool)

(assert (=> b!175486 m!204411))

(assert (=> b!175486 m!204397))

(declare-fun m!204413 () Bool)

(assert (=> b!175486 m!204413))

(assert (=> b!175486 m!204413))

(declare-fun m!204415 () Bool)

(assert (=> b!175486 m!204415))

(declare-fun m!204417 () Bool)

(assert (=> b!175486 m!204417))

(assert (=> b!175486 m!204415))

(declare-fun m!204419 () Bool)

(assert (=> b!175491 m!204419))

(assert (=> b!175491 m!204419))

(declare-fun m!204421 () Bool)

(assert (=> b!175491 m!204421))

(assert (=> b!175491 m!204397))

(declare-fun m!204423 () Bool)

(assert (=> b!175491 m!204423))

(declare-fun m!204425 () Bool)

(assert (=> b!175491 m!204425))

(declare-fun m!204427 () Bool)

(assert (=> b!175491 m!204427))

(declare-fun m!204429 () Bool)

(assert (=> b!175491 m!204429))

(declare-fun m!204431 () Bool)

(assert (=> b!175491 m!204431))

(declare-fun m!204433 () Bool)

(assert (=> b!175491 m!204433))

(declare-fun m!204435 () Bool)

(assert (=> b!175491 m!204435))

(declare-fun m!204437 () Bool)

(assert (=> b!175491 m!204437))

(declare-fun m!204439 () Bool)

(assert (=> b!175491 m!204439))

(assert (=> b!175491 m!204431))

(declare-fun m!204441 () Bool)

(assert (=> b!175491 m!204441))

(declare-fun m!204443 () Bool)

(assert (=> b!175491 m!204443))

(assert (=> b!175491 m!204425))

(declare-fun m!204445 () Bool)

(assert (=> b!175491 m!204445))

(declare-fun m!204447 () Bool)

(assert (=> b!175491 m!204447))

(assert (=> b!175491 m!204423))

(declare-fun m!204449 () Bool)

(assert (=> b!175491 m!204449))

(assert (=> bm!17770 m!204441))

(declare-fun m!204451 () Bool)

(assert (=> b!175496 m!204451))

(declare-fun m!204453 () Bool)

(assert (=> b!175485 m!204453))

(assert (=> b!175394 d!53397))

(declare-fun b!175516 () Bool)

(declare-fun e!115859 () SeekEntryResult!560)

(declare-fun lt!86907 () SeekEntryResult!560)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7352 (_ BitVec 32)) SeekEntryResult!560)

(assert (=> b!175516 (= e!115859 (seekKeyOrZeroReturnVacant!0 (x!19300 lt!86907) (index!4410 lt!86907) (index!4410 lt!86907) key!828 (_keys!5471 thiss!1248) (mask!8516 thiss!1248)))))

(declare-fun b!175517 () Bool)

(declare-fun e!115858 () SeekEntryResult!560)

(assert (=> b!175517 (= e!115858 (Found!560 (index!4410 lt!86907)))))

(declare-fun b!175519 () Bool)

(declare-fun c!31437 () Bool)

(declare-fun lt!86905 () (_ BitVec 64))

(assert (=> b!175519 (= c!31437 (= lt!86905 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!175519 (= e!115858 e!115859)))

(declare-fun d!53399 () Bool)

(declare-fun lt!86906 () SeekEntryResult!560)

(assert (=> d!53399 (and (or ((_ is Undefined!560) lt!86906) (not ((_ is Found!560) lt!86906)) (and (bvsge (index!4409 lt!86906) #b00000000000000000000000000000000) (bvslt (index!4409 lt!86906) (size!3792 (_keys!5471 thiss!1248))))) (or ((_ is Undefined!560) lt!86906) ((_ is Found!560) lt!86906) (not ((_ is MissingZero!560) lt!86906)) (and (bvsge (index!4408 lt!86906) #b00000000000000000000000000000000) (bvslt (index!4408 lt!86906) (size!3792 (_keys!5471 thiss!1248))))) (or ((_ is Undefined!560) lt!86906) ((_ is Found!560) lt!86906) ((_ is MissingZero!560) lt!86906) (not ((_ is MissingVacant!560) lt!86906)) (and (bvsge (index!4411 lt!86906) #b00000000000000000000000000000000) (bvslt (index!4411 lt!86906) (size!3792 (_keys!5471 thiss!1248))))) (or ((_ is Undefined!560) lt!86906) (ite ((_ is Found!560) lt!86906) (= (select (arr!3490 (_keys!5471 thiss!1248)) (index!4409 lt!86906)) key!828) (ite ((_ is MissingZero!560) lt!86906) (= (select (arr!3490 (_keys!5471 thiss!1248)) (index!4408 lt!86906)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!560) lt!86906) (= (select (arr!3490 (_keys!5471 thiss!1248)) (index!4411 lt!86906)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!115860 () SeekEntryResult!560)

(assert (=> d!53399 (= lt!86906 e!115860)))

(declare-fun c!31438 () Bool)

(assert (=> d!53399 (= c!31438 (and ((_ is Intermediate!560) lt!86907) (undefined!1372 lt!86907)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7352 (_ BitVec 32)) SeekEntryResult!560)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53399 (= lt!86907 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8516 thiss!1248)) key!828 (_keys!5471 thiss!1248) (mask!8516 thiss!1248)))))

(assert (=> d!53399 (validMask!0 (mask!8516 thiss!1248))))

(assert (=> d!53399 (= (seekEntryOrOpen!0 key!828 (_keys!5471 thiss!1248) (mask!8516 thiss!1248)) lt!86906)))

(declare-fun b!175518 () Bool)

(assert (=> b!175518 (= e!115860 Undefined!560)))

(declare-fun b!175520 () Bool)

(assert (=> b!175520 (= e!115860 e!115858)))

(assert (=> b!175520 (= lt!86905 (select (arr!3490 (_keys!5471 thiss!1248)) (index!4410 lt!86907)))))

(declare-fun c!31436 () Bool)

(assert (=> b!175520 (= c!31436 (= lt!86905 key!828))))

(declare-fun b!175521 () Bool)

(assert (=> b!175521 (= e!115859 (MissingZero!560 (index!4410 lt!86907)))))

(assert (= (and d!53399 c!31438) b!175518))

(assert (= (and d!53399 (not c!31438)) b!175520))

(assert (= (and b!175520 c!31436) b!175517))

(assert (= (and b!175520 (not c!31436)) b!175519))

(assert (= (and b!175519 c!31437) b!175521))

(assert (= (and b!175519 (not c!31437)) b!175516))

(declare-fun m!204455 () Bool)

(assert (=> b!175516 m!204455))

(declare-fun m!204457 () Bool)

(assert (=> d!53399 m!204457))

(declare-fun m!204459 () Bool)

(assert (=> d!53399 m!204459))

(declare-fun m!204461 () Bool)

(assert (=> d!53399 m!204461))

(assert (=> d!53399 m!204457))

(declare-fun m!204463 () Bool)

(assert (=> d!53399 m!204463))

(declare-fun m!204465 () Bool)

(assert (=> d!53399 m!204465))

(assert (=> d!53399 m!204365))

(declare-fun m!204467 () Bool)

(assert (=> b!175520 m!204467))

(assert (=> b!175401 d!53399))

(declare-fun d!53401 () Bool)

(declare-fun res!83222 () Bool)

(declare-fun e!115863 () Bool)

(assert (=> d!53401 (=> (not res!83222) (not e!115863))))

(declare-fun simpleValid!147 (LongMapFixedSize!2328) Bool)

(assert (=> d!53401 (= res!83222 (simpleValid!147 thiss!1248))))

(assert (=> d!53401 (= (valid!974 thiss!1248) e!115863)))

(declare-fun b!175528 () Bool)

(declare-fun res!83223 () Bool)

(assert (=> b!175528 (=> (not res!83223) (not e!115863))))

(declare-fun arrayCountValidKeys!0 (array!7352 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!175528 (= res!83223 (= (arrayCountValidKeys!0 (_keys!5471 thiss!1248) #b00000000000000000000000000000000 (size!3792 (_keys!5471 thiss!1248))) (_size!1213 thiss!1248)))))

(declare-fun b!175529 () Bool)

(declare-fun res!83224 () Bool)

(assert (=> b!175529 (=> (not res!83224) (not e!115863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7352 (_ BitVec 32)) Bool)

(assert (=> b!175529 (= res!83224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5471 thiss!1248) (mask!8516 thiss!1248)))))

(declare-fun b!175530 () Bool)

(declare-datatypes ((List!2243 0))(
  ( (Nil!2240) (Cons!2239 (h!2858 (_ BitVec 64)) (t!7071 List!2243)) )
))
(declare-fun arrayNoDuplicates!0 (array!7352 (_ BitVec 32) List!2243) Bool)

(assert (=> b!175530 (= e!115863 (arrayNoDuplicates!0 (_keys!5471 thiss!1248) #b00000000000000000000000000000000 Nil!2240))))

(assert (= (and d!53401 res!83222) b!175528))

(assert (= (and b!175528 res!83223) b!175529))

(assert (= (and b!175529 res!83224) b!175530))

(declare-fun m!204469 () Bool)

(assert (=> d!53401 m!204469))

(declare-fun m!204471 () Bool)

(assert (=> b!175528 m!204471))

(declare-fun m!204473 () Bool)

(assert (=> b!175529 m!204473))

(declare-fun m!204475 () Bool)

(assert (=> b!175530 m!204475))

(assert (=> start!17526 d!53401))

(declare-fun mapNonEmpty!7009 () Bool)

(declare-fun mapRes!7009 () Bool)

(declare-fun tp!15694 () Bool)

(declare-fun e!115869 () Bool)

(assert (=> mapNonEmpty!7009 (= mapRes!7009 (and tp!15694 e!115869))))

(declare-fun mapValue!7009 () ValueCell!1710)

(declare-fun mapRest!7009 () (Array (_ BitVec 32) ValueCell!1710))

(declare-fun mapKey!7009 () (_ BitVec 32))

(assert (=> mapNonEmpty!7009 (= mapRest!7003 (store mapRest!7009 mapKey!7009 mapValue!7009))))

(declare-fun mapIsEmpty!7009 () Bool)

(assert (=> mapIsEmpty!7009 mapRes!7009))

(declare-fun b!175538 () Bool)

(declare-fun e!115868 () Bool)

(assert (=> b!175538 (= e!115868 tp_is_empty!4107)))

(declare-fun condMapEmpty!7009 () Bool)

(declare-fun mapDefault!7009 () ValueCell!1710)

(assert (=> mapNonEmpty!7003 (= condMapEmpty!7009 (= mapRest!7003 ((as const (Array (_ BitVec 32) ValueCell!1710)) mapDefault!7009)))))

(assert (=> mapNonEmpty!7003 (= tp!15685 (and e!115868 mapRes!7009))))

(declare-fun b!175537 () Bool)

(assert (=> b!175537 (= e!115869 tp_is_empty!4107)))

(assert (= (and mapNonEmpty!7003 condMapEmpty!7009) mapIsEmpty!7009))

(assert (= (and mapNonEmpty!7003 (not condMapEmpty!7009)) mapNonEmpty!7009))

(assert (= (and mapNonEmpty!7009 ((_ is ValueCellFull!1710) mapValue!7009)) b!175537))

(assert (= (and mapNonEmpty!7003 ((_ is ValueCellFull!1710) mapDefault!7009)) b!175538))

(declare-fun m!204477 () Bool)

(assert (=> mapNonEmpty!7009 m!204477))

(declare-fun b_lambda!7043 () Bool)

(assert (= b_lambda!7041 (or (and b!175398 b_free!4335) b_lambda!7043)))

(check-sat (not b!175485) (not b!175528) (not bm!17770) (not b!175436) (not b!175499) (not b!175438) (not d!53401) (not bm!17773) (not b!175529) (not b!175494) tp_is_empty!4107 (not b!175493) (not b!175496) (not b_lambda!7043) b_and!10837 (not b!175516) (not b!175491) (not bm!17772) (not d!53397) (not b!175492) (not d!53399) (not b_next!4335) (not d!53395) (not mapNonEmpty!7009) (not b!175530) (not b!175486) (not bm!17771))
(check-sat b_and!10837 (not b_next!4335))
