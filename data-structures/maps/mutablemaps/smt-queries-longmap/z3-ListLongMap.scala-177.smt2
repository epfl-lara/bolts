; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3446 () Bool)

(assert start!3446)

(declare-fun b!22344 () Bool)

(declare-fun b_free!741 () Bool)

(declare-fun b_next!741 () Bool)

(assert (=> b!22344 (= b_free!741 (not b_next!741))))

(declare-fun tp!3464 () Bool)

(declare-fun b_and!1455 () Bool)

(assert (=> b!22344 (= tp!3464 b_and!1455)))

(declare-fun b!22339 () Bool)

(declare-fun e!14513 () Bool)

(declare-datatypes ((V!1165 0))(
  ( (V!1166 (val!529 Int)) )
))
(declare-datatypes ((ValueCell!303 0))(
  ( (ValueCellFull!303 (v!1583 V!1165)) (EmptyCell!303) )
))
(declare-datatypes ((array!1235 0))(
  ( (array!1236 (arr!585 (Array (_ BitVec 32) ValueCell!303)) (size!681 (_ BitVec 32))) )
))
(declare-datatypes ((array!1237 0))(
  ( (array!1238 (arr!586 (Array (_ BitVec 32) (_ BitVec 64))) (size!682 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!192 0))(
  ( (LongMapFixedSize!193 (defaultEntry!1732 Int) (mask!4712 (_ BitVec 32)) (extraKeys!1632 (_ BitVec 32)) (zeroValue!1657 V!1165) (minValue!1657 V!1165) (_size!139 (_ BitVec 32)) (_keys!3155 array!1237) (_values!1720 array!1235) (_vacant!139 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!192 0))(
  ( (Cell!193 (v!1584 LongMapFixedSize!192)) )
))
(declare-datatypes ((LongMap!192 0))(
  ( (LongMap!193 (underlying!107 Cell!192)) )
))
(declare-datatypes ((tuple3!6 0))(
  ( (tuple3!7 (_1!453 Bool) (_2!453 Cell!192) (_3!3 LongMap!192)) )
))
(declare-fun lt!7492 () tuple3!6)

(declare-fun valid!102 (LongMap!192) Bool)

(assert (=> b!22339 (= e!14513 (not (valid!102 (_3!3 lt!7492))))))

(declare-fun b!22340 () Bool)

(declare-fun e!14505 () Bool)

(declare-fun e!14515 () Bool)

(declare-fun mapRes!992 () Bool)

(assert (=> b!22340 (= e!14505 (and e!14515 mapRes!992))))

(declare-fun condMapEmpty!992 () Bool)

(declare-fun thiss!938 () LongMap!192)

(declare-fun mapDefault!992 () ValueCell!303)

(assert (=> b!22340 (= condMapEmpty!992 (= (arr!585 (_values!1720 (v!1584 (underlying!107 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!303)) mapDefault!992)))))

(declare-fun b!22341 () Bool)

(declare-fun tp_is_empty!1005 () Bool)

(assert (=> b!22341 (= e!14515 tp_is_empty!1005)))

(declare-fun b!22342 () Bool)

(declare-datatypes ((tuple2!900 0))(
  ( (tuple2!901 (_1!454 Bool) (_2!454 Cell!192)) )
))
(declare-fun e!14503 () tuple2!900)

(declare-fun e!14514 () tuple2!900)

(assert (=> b!22342 (= e!14503 e!14514)))

(declare-fun c!2719 () Bool)

(declare-fun lt!7484 () Bool)

(assert (=> b!22342 (= c!2719 (and (not lt!7484) (= (bvand (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!992 () Bool)

(assert (=> mapIsEmpty!992 mapRes!992))

(declare-fun lt!7487 () Cell!192)

(declare-datatypes ((tuple2!902 0))(
  ( (tuple2!903 (_1!455 Bool) (_2!455 LongMapFixedSize!192)) )
))
(declare-fun lt!7493 () tuple2!902)

(declare-fun b!22343 () Bool)

(declare-fun e!14511 () tuple3!6)

(assert (=> b!22343 (= e!14511 (ite (_1!455 lt!7493) (tuple3!7 true (underlying!107 thiss!938) (LongMap!193 lt!7487)) (tuple3!7 false lt!7487 thiss!938)))))

(declare-fun lt!7489 () tuple2!900)

(declare-fun repackFrom!4 (LongMap!192 LongMapFixedSize!192 (_ BitVec 32)) tuple2!902)

(assert (=> b!22343 (= lt!7493 (repackFrom!4 thiss!938 (v!1584 (_2!454 lt!7489)) (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!22343 (= lt!7487 (Cell!193 (_2!455 lt!7493)))))

(declare-fun bm!1567 () Bool)

(declare-fun lt!7488 () LongMapFixedSize!192)

(declare-fun call!1571 () tuple2!902)

(declare-fun c!2718 () Bool)

(declare-fun update!27 (LongMapFixedSize!192 (_ BitVec 64) V!1165) tuple2!902)

(assert (=> bm!1567 (= call!1571 (update!27 lt!7488 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))))))

(declare-fun e!14504 () Bool)

(declare-fun array_inv!415 (array!1237) Bool)

(declare-fun array_inv!416 (array!1235) Bool)

(assert (=> b!22344 (= e!14504 (and tp!3464 tp_is_empty!1005 (array_inv!415 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) (array_inv!416 (_values!1720 (v!1584 (underlying!107 thiss!938)))) e!14505))))

(declare-fun b!22345 () Bool)

(declare-fun e!14507 () tuple2!900)

(assert (=> b!22345 (= e!14507 (tuple2!901 true (Cell!193 lt!7488)))))

(declare-fun mapNonEmpty!992 () Bool)

(declare-fun tp!3463 () Bool)

(declare-fun e!14508 () Bool)

(assert (=> mapNonEmpty!992 (= mapRes!992 (and tp!3463 e!14508))))

(declare-fun mapKey!992 () (_ BitVec 32))

(declare-fun mapValue!992 () ValueCell!303)

(declare-fun mapRest!992 () (Array (_ BitVec 32) ValueCell!303))

(assert (=> mapNonEmpty!992 (= (arr!585 (_values!1720 (v!1584 (underlying!107 thiss!938)))) (store mapRest!992 mapKey!992 mapValue!992))))

(declare-fun b!22346 () Bool)

(declare-fun c!2721 () Bool)

(assert (=> b!22346 (= c!2721 (and (not (= (bvand (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!7484))))

(assert (=> b!22346 (= e!14514 e!14507)))

(declare-fun b!22347 () Bool)

(declare-fun lt!7491 () tuple2!902)

(assert (=> b!22347 (= e!14507 (tuple2!901 (_1!455 lt!7491) (Cell!193 (_2!455 lt!7491))))))

(declare-fun call!1570 () tuple2!902)

(assert (=> b!22347 (= lt!7491 call!1570)))

(declare-fun b!22348 () Bool)

(assert (=> b!22348 (= e!14511 (tuple3!7 false (_2!454 lt!7489) thiss!938))))

(declare-fun b!22350 () Bool)

(declare-fun e!14512 () Bool)

(declare-fun e!14509 () Bool)

(assert (=> b!22350 (= e!14512 e!14509)))

(declare-fun b!22351 () Bool)

(declare-fun e!14506 () Bool)

(assert (=> b!22351 (= e!14506 e!14513)))

(declare-fun res!14145 () Bool)

(assert (=> b!22351 (=> (not res!14145) (not e!14513))))

(assert (=> b!22351 (= res!14145 (_1!453 lt!7492))))

(assert (=> b!22351 (= lt!7492 e!14511)))

(declare-fun c!2720 () Bool)

(assert (=> b!22351 (= c!2720 (not (_1!454 lt!7489)))))

(assert (=> b!22351 (= lt!7489 e!14503)))

(assert (=> b!22351 (= c!2718 (and (not lt!7484) (not (= (bvand (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!22351 (= lt!7484 (= (bvand (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!27 ((_ BitVec 32) Int) LongMapFixedSize!192)

(declare-fun computeNewMask!24 (LongMap!192 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!22351 (= lt!7488 (getNewLongMapFixedSize!27 (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) (defaultEntry!1732 (v!1584 (underlying!107 thiss!938)))))))

(declare-fun b!22349 () Bool)

(declare-fun lt!7486 () tuple2!902)

(assert (=> b!22349 (= lt!7486 call!1570)))

(assert (=> b!22349 (= e!14514 (tuple2!901 (_1!455 lt!7486) (Cell!193 (_2!455 lt!7486))))))

(declare-fun res!14144 () Bool)

(assert (=> start!3446 (=> (not res!14144) (not e!14506))))

(assert (=> start!3446 (= res!14144 (valid!102 thiss!938))))

(assert (=> start!3446 e!14506))

(assert (=> start!3446 e!14512))

(declare-fun b!22352 () Bool)

(assert (=> b!22352 (= e!14509 e!14504)))

(declare-fun b!22353 () Bool)

(assert (=> b!22353 (= e!14508 tp_is_empty!1005)))

(declare-fun bm!1568 () Bool)

(assert (=> bm!1568 (= call!1570 call!1571)))

(declare-fun b!22354 () Bool)

(declare-fun lt!7490 () tuple2!902)

(declare-fun lt!7485 () tuple2!902)

(assert (=> b!22354 (= e!14503 (tuple2!901 (and (_1!455 lt!7490) (_1!455 lt!7485)) (Cell!193 (_2!455 lt!7485))))))

(assert (=> b!22354 (= lt!7490 call!1571)))

(assert (=> b!22354 (= lt!7485 (update!27 (_2!455 lt!7490) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938)))))))

(assert (= (and start!3446 res!14144) b!22351))

(assert (= (and b!22351 c!2718) b!22354))

(assert (= (and b!22351 (not c!2718)) b!22342))

(assert (= (and b!22342 c!2719) b!22349))

(assert (= (and b!22342 (not c!2719)) b!22346))

(assert (= (and b!22346 c!2721) b!22347))

(assert (= (and b!22346 (not c!2721)) b!22345))

(assert (= (or b!22349 b!22347) bm!1568))

(assert (= (or b!22354 bm!1568) bm!1567))

(assert (= (and b!22351 c!2720) b!22348))

(assert (= (and b!22351 (not c!2720)) b!22343))

(assert (= (and b!22351 res!14145) b!22339))

(assert (= (and b!22340 condMapEmpty!992) mapIsEmpty!992))

(assert (= (and b!22340 (not condMapEmpty!992)) mapNonEmpty!992))

(get-info :version)

(assert (= (and mapNonEmpty!992 ((_ is ValueCellFull!303) mapValue!992)) b!22353))

(assert (= (and b!22340 ((_ is ValueCellFull!303) mapDefault!992)) b!22341))

(assert (= b!22344 b!22340))

(assert (= b!22352 b!22344))

(assert (= b!22350 b!22352))

(assert (= start!3446 b!22350))

(declare-fun m!16212 () Bool)

(assert (=> mapNonEmpty!992 m!16212))

(declare-fun m!16214 () Bool)

(assert (=> b!22354 m!16214))

(declare-fun m!16216 () Bool)

(assert (=> bm!1567 m!16216))

(declare-fun m!16218 () Bool)

(assert (=> b!22344 m!16218))

(declare-fun m!16220 () Bool)

(assert (=> b!22344 m!16220))

(declare-fun m!16222 () Bool)

(assert (=> b!22351 m!16222))

(assert (=> b!22351 m!16222))

(declare-fun m!16224 () Bool)

(assert (=> b!22351 m!16224))

(declare-fun m!16226 () Bool)

(assert (=> b!22339 m!16226))

(declare-fun m!16228 () Bool)

(assert (=> b!22343 m!16228))

(declare-fun m!16230 () Bool)

(assert (=> start!3446 m!16230))

(check-sat tp_is_empty!1005 (not b!22339) (not b_next!741) (not mapNonEmpty!992) (not b!22351) (not b!22354) (not bm!1567) (not b!22343) b_and!1455 (not b!22344) (not start!3446))
(check-sat b_and!1455 (not b_next!741))
(get-model)

(declare-fun b!22415 () Bool)

(declare-fun e!14563 () Bool)

(declare-fun lt!7574 () LongMapFixedSize!192)

(declare-datatypes ((tuple2!906 0))(
  ( (tuple2!907 (_1!457 (_ BitVec 64)) (_2!457 V!1165)) )
))
(declare-datatypes ((List!561 0))(
  ( (Nil!558) (Cons!557 (h!1123 tuple2!906) (t!3230 List!561)) )
))
(declare-datatypes ((ListLongMap!549 0))(
  ( (ListLongMap!550 (toList!290 List!561)) )
))
(declare-fun map!402 (LongMapFixedSize!192) ListLongMap!549)

(assert (=> b!22415 (= e!14563 (= (map!402 lt!7574) (ListLongMap!550 Nil!558)))))

(declare-fun b!22416 () Bool)

(declare-fun e!14562 () Bool)

(declare-fun lt!7584 () array!1237)

(declare-fun lt!7580 () tuple2!906)

(declare-fun arrayContainsKey!0 (array!1237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!22416 (= e!14562 (arrayContainsKey!0 lt!7584 (_1!457 lt!7580) #b00000000000000000000000000000000))))

(declare-fun b!22417 () Bool)

(declare-fun res!14156 () Bool)

(assert (=> b!22417 (=> (not res!14156) (not e!14563))))

(assert (=> b!22417 (= res!14156 (= (mask!4712 lt!7574) (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938))))))))

(declare-fun b!22418 () Bool)

(declare-fun lt!7578 () (_ BitVec 32))

(assert (=> b!22418 (= e!14562 (ite (= (_1!457 lt!7580) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!7578 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!7578 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!22419 () Bool)

(declare-datatypes ((Unit!490 0))(
  ( (Unit!491) )
))
(declare-fun e!14561 () Unit!490)

(declare-fun Unit!492 () Unit!490)

(assert (=> b!22419 (= e!14561 Unit!492)))

(declare-fun d!3947 () Bool)

(assert (=> d!3947 e!14563))

(declare-fun res!14157 () Bool)

(assert (=> d!3947 (=> (not res!14157) (not e!14563))))

(declare-fun valid!103 (LongMapFixedSize!192) Bool)

(assert (=> d!3947 (= res!14157 (valid!103 lt!7574))))

(declare-fun lt!7579 () LongMapFixedSize!192)

(assert (=> d!3947 (= lt!7574 lt!7579)))

(declare-fun lt!7581 () Unit!490)

(assert (=> d!3947 (= lt!7581 e!14561)))

(declare-fun c!2738 () Bool)

(assert (=> d!3947 (= c!2738 (not (= (map!402 lt!7579) (ListLongMap!550 Nil!558))))))

(declare-fun lt!7590 () Unit!490)

(declare-fun lt!7587 () Unit!490)

(assert (=> d!3947 (= lt!7590 lt!7587)))

(declare-fun lt!7591 () array!1237)

(declare-fun lt!7586 () (_ BitVec 32))

(declare-datatypes ((List!562 0))(
  ( (Nil!559) (Cons!558 (h!1124 (_ BitVec 64)) (t!3231 List!562)) )
))
(declare-fun lt!7588 () List!562)

(declare-fun arrayNoDuplicates!0 (array!1237 (_ BitVec 32) List!562) Bool)

(assert (=> d!3947 (arrayNoDuplicates!0 lt!7591 lt!7586 lt!7588)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1237 (_ BitVec 32) (_ BitVec 32) List!562) Unit!490)

(assert (=> d!3947 (= lt!7587 (lemmaArrayNoDuplicatesInAll0Array!0 lt!7591 lt!7586 (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) lt!7588))))

(assert (=> d!3947 (= lt!7588 Nil!559)))

(assert (=> d!3947 (= lt!7586 #b00000000000000000000000000000000)))

(assert (=> d!3947 (= lt!7591 (array!1238 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!7592 () Unit!490)

(declare-fun lt!7585 () Unit!490)

(assert (=> d!3947 (= lt!7592 lt!7585)))

(declare-fun lt!7577 () (_ BitVec 32))

(declare-fun lt!7576 () array!1237)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1237 (_ BitVec 32)) Bool)

(assert (=> d!3947 (arrayForallSeekEntryOrOpenFound!0 lt!7577 lt!7576 (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1237 (_ BitVec 32) (_ BitVec 32)) Unit!490)

(assert (=> d!3947 (= lt!7585 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!7576 (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) lt!7577))))

(assert (=> d!3947 (= lt!7577 #b00000000000000000000000000000000)))

(assert (=> d!3947 (= lt!7576 (array!1238 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!7571 () Unit!490)

(declare-fun lt!7572 () Unit!490)

(assert (=> d!3947 (= lt!7571 lt!7572)))

(declare-fun lt!7583 () array!1237)

(declare-fun lt!7575 () (_ BitVec 32))

(declare-fun lt!7573 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1237 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3947 (= (arrayCountValidKeys!0 lt!7583 lt!7575 lt!7573) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1237 (_ BitVec 32) (_ BitVec 32)) Unit!490)

(assert (=> d!3947 (= lt!7572 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!7583 lt!7575 lt!7573))))

(assert (=> d!3947 (= lt!7573 (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3947 (= lt!7575 #b00000000000000000000000000000000)))

(assert (=> d!3947 (= lt!7583 (array!1238 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun dynLambda!142 (Int (_ BitVec 64)) V!1165)

(assert (=> d!3947 (= lt!7579 (LongMapFixedSize!193 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!142 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!142 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1238 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)) (array!1236 ((as const (Array (_ BitVec 32) ValueCell!303)) EmptyCell!303) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3947 (validMask!0 (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))))))

(assert (=> d!3947 (= (getNewLongMapFixedSize!27 (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) (defaultEntry!1732 (v!1584 (underlying!107 thiss!938)))) lt!7574)))

(declare-fun b!22420 () Bool)

(declare-fun Unit!493 () Unit!490)

(assert (=> b!22420 (= e!14561 Unit!493)))

(declare-fun head!828 (List!561) tuple2!906)

(assert (=> b!22420 (= lt!7580 (head!828 (toList!290 (map!402 lt!7579))))))

(assert (=> b!22420 (= lt!7584 (array!1238 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!22420 (= lt!7578 #b00000000000000000000000000000000)))

(declare-fun lt!7582 () Unit!490)

(declare-fun lemmaKeyInListMapIsInArray!91 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 64) Int) Unit!490)

(assert (=> b!22420 (= lt!7582 (lemmaKeyInListMapIsInArray!91 lt!7584 (array!1236 ((as const (Array (_ BitVec 32) ValueCell!303)) EmptyCell!303) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) lt!7578 (dynLambda!142 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!142 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!457 lt!7580) (defaultEntry!1732 (v!1584 (underlying!107 thiss!938)))))))

(declare-fun c!2739 () Bool)

(assert (=> b!22420 (= c!2739 (and (not (= (_1!457 lt!7580) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!457 lt!7580) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!22420 e!14562))

(declare-fun lt!7589 () Unit!490)

(assert (=> b!22420 (= lt!7589 lt!7582)))

(declare-fun lt!7570 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1237 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!22420 (= lt!7570 (arrayScanForKey!0 (array!1238 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)) (_1!457 lt!7580) #b00000000000000000000000000000000))))

(assert (=> b!22420 false))

(assert (= (and d!3947 c!2738) b!22420))

(assert (= (and d!3947 (not c!2738)) b!22419))

(assert (= (and b!22420 c!2739) b!22416))

(assert (= (and b!22420 (not c!2739)) b!22418))

(assert (= (and d!3947 res!14157) b!22417))

(assert (= (and b!22417 res!14156) b!22415))

(declare-fun b_lambda!1559 () Bool)

(assert (=> (not b_lambda!1559) (not d!3947)))

(declare-fun t!3229 () Bool)

(declare-fun tb!655 () Bool)

(assert (=> (and b!22344 (= (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) (defaultEntry!1732 (v!1584 (underlying!107 thiss!938)))) t!3229) tb!655))

(declare-fun result!1083 () Bool)

(assert (=> tb!655 (= result!1083 tp_is_empty!1005)))

(assert (=> d!3947 t!3229))

(declare-fun b_and!1459 () Bool)

(assert (= b_and!1455 (and (=> t!3229 result!1083) b_and!1459)))

(declare-fun b_lambda!1561 () Bool)

(assert (=> (not b_lambda!1561) (not b!22420)))

(assert (=> b!22420 t!3229))

(declare-fun b_and!1461 () Bool)

(assert (= b_and!1459 (and (=> t!3229 result!1083) b_and!1461)))

(declare-fun m!16252 () Bool)

(assert (=> b!22415 m!16252))

(declare-fun m!16254 () Bool)

(assert (=> b!22416 m!16254))

(declare-fun m!16256 () Bool)

(assert (=> d!3947 m!16256))

(declare-fun m!16258 () Bool)

(assert (=> d!3947 m!16258))

(assert (=> d!3947 m!16222))

(declare-fun m!16260 () Bool)

(assert (=> d!3947 m!16260))

(assert (=> d!3947 m!16222))

(declare-fun m!16262 () Bool)

(assert (=> d!3947 m!16262))

(assert (=> d!3947 m!16222))

(declare-fun m!16264 () Bool)

(assert (=> d!3947 m!16264))

(declare-fun m!16266 () Bool)

(assert (=> d!3947 m!16266))

(declare-fun m!16268 () Bool)

(assert (=> d!3947 m!16268))

(declare-fun m!16270 () Bool)

(assert (=> d!3947 m!16270))

(declare-fun m!16272 () Bool)

(assert (=> d!3947 m!16272))

(declare-fun m!16274 () Bool)

(assert (=> d!3947 m!16274))

(assert (=> b!22420 m!16266))

(declare-fun m!16276 () Bool)

(assert (=> b!22420 m!16276))

(declare-fun m!16278 () Bool)

(assert (=> b!22420 m!16278))

(assert (=> b!22420 m!16222))

(assert (=> b!22420 m!16266))

(assert (=> b!22420 m!16266))

(declare-fun m!16280 () Bool)

(assert (=> b!22420 m!16280))

(assert (=> b!22420 m!16274))

(assert (=> b!22351 d!3947))

(declare-fun d!3949 () Bool)

(declare-fun e!14568 () Bool)

(assert (=> d!3949 e!14568))

(declare-fun res!14160 () Bool)

(assert (=> d!3949 (=> (not res!14160) (not e!14568))))

(declare-fun lt!7598 () (_ BitVec 32))

(assert (=> d!3949 (= res!14160 (validMask!0 lt!7598))))

(declare-datatypes ((tuple2!908 0))(
  ( (tuple2!909 (_1!458 Unit!490) (_2!458 (_ BitVec 32))) )
))
(declare-fun e!14569 () tuple2!908)

(assert (=> d!3949 (= lt!7598 (_2!458 e!14569))))

(declare-fun c!2742 () Bool)

(declare-fun lt!7597 () tuple2!908)

(assert (=> d!3949 (= c!2742 (and (bvsgt (_2!458 lt!7597) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!139 (v!1584 (underlying!107 thiss!938)))) (_2!458 lt!7597)) (bvsge (bvadd (bvand (bvashr (_2!458 lt!7597) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!139 (v!1584 (underlying!107 thiss!938))))))))

(declare-fun Unit!494 () Unit!490)

(declare-fun Unit!495 () Unit!490)

(assert (=> d!3949 (= lt!7597 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!139 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))))) (mask!4712 (v!1584 (underlying!107 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!139 (v!1584 (underlying!107 thiss!938)))) (mask!4712 (v!1584 (underlying!107 thiss!938))))) (tuple2!909 Unit!494 (bvand (bvadd (bvshl (mask!4712 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!909 Unit!495 (mask!4712 (v!1584 (underlying!107 thiss!938))))))))

(assert (=> d!3949 (validMask!0 (mask!4712 (v!1584 (underlying!107 thiss!938))))))

(assert (=> d!3949 (= (computeNewMask!24 thiss!938 (mask!4712 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (_size!139 (v!1584 (underlying!107 thiss!938)))) lt!7598)))

(declare-fun b!22429 () Bool)

(declare-fun computeNewMaskWhile!12 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!908)

(assert (=> b!22429 (= e!14569 (computeNewMaskWhile!12 (_size!139 (v!1584 (underlying!107 thiss!938))) (_vacant!139 (v!1584 (underlying!107 thiss!938))) (mask!4712 (v!1584 (underlying!107 thiss!938))) (_2!458 lt!7597)))))

(declare-fun b!22430 () Bool)

(declare-fun Unit!496 () Unit!490)

(assert (=> b!22430 (= e!14569 (tuple2!909 Unit!496 (_2!458 lt!7597)))))

(declare-fun b!22431 () Bool)

(assert (=> b!22431 (= e!14568 (bvsle (_size!139 (v!1584 (underlying!107 thiss!938))) (bvadd lt!7598 #b00000000000000000000000000000001)))))

(assert (= (and d!3949 c!2742) b!22429))

(assert (= (and d!3949 (not c!2742)) b!22430))

(assert (= (and d!3949 res!14160) b!22431))

(declare-fun m!16282 () Bool)

(assert (=> d!3949 m!16282))

(declare-fun m!16284 () Bool)

(assert (=> d!3949 m!16284))

(declare-fun m!16286 () Bool)

(assert (=> b!22429 m!16286))

(assert (=> b!22351 d!3949))

(declare-fun d!3951 () Bool)

(assert (=> d!3951 (= (valid!102 thiss!938) (valid!103 (v!1584 (underlying!107 thiss!938))))))

(declare-fun bs!936 () Bool)

(assert (= bs!936 d!3951))

(declare-fun m!16288 () Bool)

(assert (=> bs!936 m!16288))

(assert (=> start!3446 d!3951))

(declare-fun b!22508 () Bool)

(declare-fun e!14620 () Unit!490)

(declare-fun Unit!497 () Unit!490)

(assert (=> b!22508 (= e!14620 Unit!497)))

(declare-fun lt!7661 () Unit!490)

(declare-fun call!1641 () Unit!490)

(assert (=> b!22508 (= lt!7661 call!1641)))

(declare-datatypes ((SeekEntryResult!57 0))(
  ( (MissingZero!57 (index!2349 (_ BitVec 32))) (Found!57 (index!2350 (_ BitVec 32))) (Intermediate!57 (undefined!869 Bool) (index!2351 (_ BitVec 32)) (x!5427 (_ BitVec 32))) (Undefined!57) (MissingVacant!57 (index!2352 (_ BitVec 32))) )
))
(declare-fun lt!7678 () SeekEntryResult!57)

(declare-fun call!1644 () SeekEntryResult!57)

(assert (=> b!22508 (= lt!7678 call!1644)))

(declare-fun c!2772 () Bool)

(assert (=> b!22508 (= c!2772 ((_ is MissingZero!57) lt!7678))))

(declare-fun e!14626 () Bool)

(assert (=> b!22508 e!14626))

(declare-fun lt!7679 () Unit!490)

(assert (=> b!22508 (= lt!7679 lt!7661)))

(assert (=> b!22508 false))

(declare-fun b!22509 () Bool)

(declare-fun res!14190 () Bool)

(declare-fun e!14613 () Bool)

(assert (=> b!22509 (=> (not res!14190) (not e!14613))))

(declare-fun call!1636 () Bool)

(assert (=> b!22509 (= res!14190 call!1636)))

(assert (=> b!22509 (= e!14626 e!14613)))

(declare-fun bm!1623 () Bool)

(declare-fun call!1639 () Unit!490)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!8 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 64) Int) Unit!490)

(assert (=> bm!1623 (= call!1639 (lemmaInListMapThenSeekEntryOrOpenFindsIt!8 (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1732 (_2!455 lt!7490))))))

(declare-fun b!22510 () Bool)

(declare-fun call!1633 () Bool)

(assert (=> b!22510 (= e!14613 (not call!1633))))

(declare-fun b!22511 () Bool)

(declare-fun e!14623 () Bool)

(declare-fun lt!7673 () SeekEntryResult!57)

(assert (=> b!22511 (= e!14623 ((_ is Undefined!57) lt!7673))))

(declare-fun b!22512 () Bool)

(declare-fun lt!7663 () Unit!490)

(declare-fun lt!7664 () Unit!490)

(assert (=> b!22512 (= lt!7663 lt!7664)))

(declare-fun call!1643 () Bool)

(assert (=> b!22512 call!1643))

(declare-fun lt!7657 () array!1235)

(declare-fun lt!7655 () SeekEntryResult!57)

(declare-fun lemmaValidKeyInArrayIsInListMap!8 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 32) Int) Unit!490)

(assert (=> b!22512 (= lt!7664 (lemmaValidKeyInArrayIsInListMap!8 (_keys!3155 (_2!455 lt!7490)) lt!7657 (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) (index!2350 lt!7655) (defaultEntry!1732 (_2!455 lt!7490))))))

(assert (=> b!22512 (= lt!7657 (array!1236 (store (arr!585 (_values!1720 (_2!455 lt!7490))) (index!2350 lt!7655) (ValueCellFull!303 (minValue!1657 (v!1584 (underlying!107 thiss!938))))) (size!681 (_values!1720 (_2!455 lt!7490)))))))

(declare-fun lt!7660 () Unit!490)

(declare-fun lt!7675 () Unit!490)

(assert (=> b!22512 (= lt!7660 lt!7675)))

(declare-fun call!1628 () ListLongMap!549)

(declare-fun call!1634 () ListLongMap!549)

(assert (=> b!22512 (= call!1628 call!1634)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!8 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 32) (_ BitVec 64) V!1165 Int) Unit!490)

(assert (=> b!22512 (= lt!7675 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!8 (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) (index!2350 lt!7655) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938))) (defaultEntry!1732 (_2!455 lt!7490))))))

(declare-fun lt!7662 () Unit!490)

(assert (=> b!22512 (= lt!7662 e!14620)))

(declare-fun c!2770 () Bool)

(declare-fun call!1632 () ListLongMap!549)

(declare-fun contains!218 (ListLongMap!549 (_ BitVec 64)) Bool)

(assert (=> b!22512 (= c!2770 (contains!218 call!1632 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14616 () tuple2!902)

(assert (=> b!22512 (= e!14616 (tuple2!903 true (LongMapFixedSize!193 (defaultEntry!1732 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) (_size!139 (_2!455 lt!7490)) (_keys!3155 (_2!455 lt!7490)) (array!1236 (store (arr!585 (_values!1720 (_2!455 lt!7490))) (index!2350 lt!7655) (ValueCellFull!303 (minValue!1657 (v!1584 (underlying!107 thiss!938))))) (size!681 (_values!1720 (_2!455 lt!7490)))) (_vacant!139 (_2!455 lt!7490)))))))

(declare-fun b!22513 () Bool)

(declare-fun res!14197 () Bool)

(declare-fun call!1637 () Bool)

(assert (=> b!22513 (= res!14197 call!1637)))

(declare-fun e!14617 () Bool)

(assert (=> b!22513 (=> (not res!14197) (not e!14617))))

(declare-fun bm!1624 () Bool)

(declare-fun call!1640 () SeekEntryResult!57)

(declare-fun call!1630 () SeekEntryResult!57)

(assert (=> bm!1624 (= call!1640 call!1630)))

(declare-fun bm!1625 () Bool)

(declare-fun call!1649 () Bool)

(assert (=> bm!1625 (= call!1649 call!1637)))

(declare-fun c!2768 () Bool)

(declare-fun bm!1626 () Bool)

(declare-fun c!2776 () Bool)

(declare-fun call!1638 () ListLongMap!549)

(declare-fun +!43 (ListLongMap!549 tuple2!906) ListLongMap!549)

(assert (=> bm!1626 (= call!1628 (+!43 (ite c!2768 call!1638 call!1632) (ite c!2768 (ite c!2776 (tuple2!907 #b0000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (tuple2!907 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938))))) (tuple2!907 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun bm!1627 () Bool)

(assert (=> bm!1627 (= call!1644 call!1630)))

(declare-fun b!22514 () Bool)

(declare-fun e!14611 () Bool)

(declare-fun e!14628 () Bool)

(assert (=> b!22514 (= e!14611 e!14628)))

(declare-fun c!2777 () Bool)

(declare-fun lt!7676 () tuple2!902)

(assert (=> b!22514 (= c!2777 (_1!455 lt!7676))))

(declare-fun b!22515 () Bool)

(declare-fun e!14612 () Unit!490)

(declare-fun lt!7670 () Unit!490)

(assert (=> b!22515 (= e!14612 lt!7670)))

(assert (=> b!22515 (= lt!7670 call!1641)))

(assert (=> b!22515 (= lt!7673 call!1640)))

(declare-fun c!2774 () Bool)

(assert (=> b!22515 (= c!2774 ((_ is MissingZero!57) lt!7673))))

(declare-fun e!14614 () Bool)

(assert (=> b!22515 e!14614))

(declare-fun b!22516 () Bool)

(declare-fun e!14610 () Bool)

(declare-fun e!14629 () Bool)

(assert (=> b!22516 (= e!14610 e!14629)))

(declare-fun res!14193 () Bool)

(assert (=> b!22516 (= res!14193 call!1636)))

(assert (=> b!22516 (=> (not res!14193) (not e!14629))))

(declare-fun bm!1628 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1237 (_ BitVec 32)) SeekEntryResult!57)

(assert (=> bm!1628 (= call!1630 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3155 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490))))))

(declare-fun call!1627 () ListLongMap!549)

(declare-fun c!2778 () Bool)

(declare-fun bm!1629 () Bool)

(declare-fun getCurrentListMap!119 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 32) Int) ListLongMap!549)

(assert (=> bm!1629 (= call!1627 (getCurrentListMap!119 (_keys!3155 (_2!455 lt!7490)) (ite c!2778 (_values!1720 (_2!455 lt!7490)) lt!7657) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) #b00000000000000000000000000000000 (defaultEntry!1732 (_2!455 lt!7490))))))

(declare-fun bm!1630 () Bool)

(declare-fun lt!7666 () (_ BitVec 32))

(declare-fun lt!7669 () (_ BitVec 32))

(assert (=> bm!1630 (= call!1632 (getCurrentListMap!119 (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (ite c!2768 (ite c!2776 lt!7669 lt!7666) (extraKeys!1632 (_2!455 lt!7490))) (ite (and c!2768 c!2776) (minValue!1657 (v!1584 (underlying!107 thiss!938))) (zeroValue!1657 (_2!455 lt!7490))) (ite c!2768 (ite c!2776 (minValue!1657 (_2!455 lt!7490)) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (minValue!1657 (_2!455 lt!7490))) #b00000000000000000000000000000000 (defaultEntry!1732 (_2!455 lt!7490))))))

(declare-fun bm!1631 () Bool)

(declare-fun call!1635 () Bool)

(declare-fun call!1648 () Bool)

(assert (=> bm!1631 (= call!1635 call!1648)))

(declare-fun d!3953 () Bool)

(assert (=> d!3953 e!14611))

(declare-fun res!14198 () Bool)

(assert (=> d!3953 (=> (not res!14198) (not e!14611))))

(assert (=> d!3953 (= res!14198 (valid!103 (_2!455 lt!7676)))))

(declare-fun e!14615 () tuple2!902)

(assert (=> d!3953 (= lt!7676 e!14615)))

(assert (=> d!3953 (= c!2768 (= #b1000000000000000000000000000000000000000000000000000000000000000 (bvneg #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3953 (valid!103 (_2!455 lt!7490))))

(assert (=> d!3953 (= (update!27 (_2!455 lt!7490) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938)))) lt!7676)))

(declare-fun b!22517 () Bool)

(declare-fun res!14202 () Bool)

(declare-fun e!14621 () Bool)

(assert (=> b!22517 (=> (not res!14202) (not e!14621))))

(assert (=> b!22517 (= res!14202 call!1649)))

(assert (=> b!22517 (= e!14614 e!14621)))

(declare-fun lt!7653 () SeekEntryResult!57)

(declare-fun lt!7677 () SeekEntryResult!57)

(declare-fun bm!1632 () Bool)

(declare-fun c!2769 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!1632 (= call!1648 (inRange!0 (ite c!2778 (ite c!2769 (index!2350 lt!7677) (ite c!2774 (index!2349 lt!7673) (index!2352 lt!7673))) (ite c!2770 (index!2350 lt!7653) (ite c!2772 (index!2349 lt!7678) (index!2352 lt!7678)))) (mask!4712 (_2!455 lt!7490))))))

(declare-fun bm!1633 () Bool)

(declare-fun call!1647 () ListLongMap!549)

(assert (=> bm!1633 (= call!1647 (map!402 (_2!455 lt!7490)))))

(declare-fun b!22518 () Bool)

(declare-fun res!14194 () Bool)

(assert (=> b!22518 (=> (not res!14194) (not e!14613))))

(assert (=> b!22518 (= res!14194 (= (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2349 lt!7678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1634 () Bool)

(declare-fun call!1646 () Bool)

(assert (=> bm!1634 (= call!1646 (arrayContainsKey!0 (_keys!3155 (_2!455 lt!7490)) #b1000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!22519 () Bool)

(declare-fun e!14625 () Bool)

(assert (=> b!22519 (= e!14625 (= (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2350 lt!7653)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22520 () Bool)

(declare-fun call!1645 () Bool)

(assert (=> b!22520 (= e!14621 (not call!1645))))

(declare-fun b!22521 () Bool)

(declare-fun e!14619 () Bool)

(assert (=> b!22521 (= e!14628 e!14619)))

(declare-fun res!14199 () Bool)

(declare-fun call!1642 () ListLongMap!549)

(assert (=> b!22521 (= res!14199 (contains!218 call!1642 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22521 (=> (not res!14199) (not e!14619))))

(declare-fun bm!1635 () Bool)

(assert (=> bm!1635 (= call!1645 call!1646)))

(declare-fun bm!1636 () Bool)

(declare-fun c!2767 () Bool)

(declare-fun call!1626 () tuple2!902)

(declare-fun updateHelperNewKey!8 (LongMapFixedSize!192 (_ BitVec 64) V!1165 (_ BitVec 32)) tuple2!902)

(assert (=> bm!1636 (= call!1626 (updateHelperNewKey!8 (_2!455 lt!7490) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938))) (ite c!2767 (index!2352 lt!7655) (index!2349 lt!7655))))))

(declare-fun b!22522 () Bool)

(assert (=> b!22522 (= e!14610 ((_ is Undefined!57) lt!7678))))

(declare-fun bm!1637 () Bool)

(assert (=> bm!1637 (= call!1638 call!1634)))

(declare-fun bm!1638 () Bool)

(assert (=> bm!1638 (= call!1636 call!1635)))

(declare-fun bm!1639 () Bool)

(assert (=> bm!1639 (= call!1642 (map!402 (_2!455 lt!7676)))))

(declare-fun bm!1640 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!8 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 64) Int) Unit!490)

(assert (=> bm!1640 (= call!1641 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!8 (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1732 (_2!455 lt!7490))))))

(declare-fun b!22523 () Bool)

(declare-fun lt!7658 () Unit!490)

(assert (=> b!22523 (= e!14620 lt!7658)))

(assert (=> b!22523 (= lt!7658 call!1639)))

(assert (=> b!22523 (= lt!7653 call!1644)))

(declare-fun res!14191 () Bool)

(assert (=> b!22523 (= res!14191 ((_ is Found!57) lt!7653))))

(assert (=> b!22523 (=> (not res!14191) (not e!14625))))

(assert (=> b!22523 e!14625))

(declare-fun bm!1641 () Bool)

(assert (=> bm!1641 (= call!1633 call!1646)))

(declare-fun b!22524 () Bool)

(declare-fun e!14622 () tuple2!902)

(assert (=> b!22524 (= e!14615 e!14622)))

(assert (=> b!22524 (= c!2776 (= #b1000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22525 () Bool)

(assert (=> b!22525 (= e!14629 (not call!1633))))

(declare-fun b!22526 () Bool)

(declare-fun c!2773 () Bool)

(assert (=> b!22526 (= c!2773 ((_ is MissingVacant!57) lt!7678))))

(assert (=> b!22526 (= e!14626 e!14610)))

(declare-fun b!22527 () Bool)

(declare-fun e!14624 () tuple2!902)

(declare-fun lt!7659 () tuple2!902)

(assert (=> b!22527 (= e!14624 (tuple2!903 (_1!455 lt!7659) (_2!455 lt!7659)))))

(assert (=> b!22527 (= lt!7659 call!1626)))

(declare-fun b!22528 () Bool)

(assert (=> b!22528 (= c!2767 ((_ is MissingVacant!57) lt!7655))))

(declare-fun e!14618 () tuple2!902)

(assert (=> b!22528 (= e!14618 e!14624)))

(declare-fun bm!1642 () Bool)

(assert (=> bm!1642 (= call!1634 (getCurrentListMap!119 (_keys!3155 (_2!455 lt!7490)) (ite c!2768 (_values!1720 (_2!455 lt!7490)) (array!1236 (store (arr!585 (_values!1720 (_2!455 lt!7490))) (index!2350 lt!7655) (ValueCellFull!303 (minValue!1657 (v!1584 (underlying!107 thiss!938))))) (size!681 (_values!1720 (_2!455 lt!7490))))) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) #b00000000000000000000000000000000 (defaultEntry!1732 (_2!455 lt!7490))))))

(declare-fun b!22529 () Bool)

(declare-fun c!2771 () Bool)

(assert (=> b!22529 (= c!2771 ((_ is MissingVacant!57) lt!7673))))

(assert (=> b!22529 (= e!14614 e!14623)))

(declare-fun b!22530 () Bool)

(declare-fun lt!7665 () tuple2!902)

(assert (=> b!22530 (= lt!7665 call!1626)))

(assert (=> b!22530 (= e!14616 (tuple2!903 (_1!455 lt!7665) (_2!455 lt!7665)))))

(declare-fun b!22531 () Bool)

(declare-fun lt!7654 () Unit!490)

(assert (=> b!22531 (= lt!7654 e!14612)))

(assert (=> b!22531 (= c!2769 call!1643)))

(assert (=> b!22531 (= e!14618 (tuple2!903 false (_2!455 lt!7490)))))

(declare-fun bm!1643 () Bool)

(declare-fun call!1629 () ListLongMap!549)

(assert (=> bm!1643 (= call!1629 call!1628)))

(declare-fun b!22532 () Bool)

(declare-fun e!14627 () Bool)

(assert (=> b!22532 (= e!14623 e!14627)))

(declare-fun res!14196 () Bool)

(assert (=> b!22532 (= res!14196 call!1649)))

(assert (=> b!22532 (=> (not res!14196) (not e!14627))))

(declare-fun b!22533 () Bool)

(declare-fun res!14192 () Bool)

(assert (=> b!22533 (= res!14192 call!1635)))

(assert (=> b!22533 (=> (not res!14192) (not e!14625))))

(declare-fun bm!1644 () Bool)

(assert (=> bm!1644 (= call!1643 (contains!218 call!1627 (ite c!2778 #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2350 lt!7655)))))))

(declare-fun b!22534 () Bool)

(declare-fun res!14195 () Bool)

(assert (=> b!22534 (= res!14195 (= (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2352 lt!7678)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22534 (=> (not res!14195) (not e!14629))))

(declare-fun b!22535 () Bool)

(assert (=> b!22535 (= e!14617 (= (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2350 lt!7677)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22536 () Bool)

(assert (=> b!22536 (= e!14615 e!14618)))

(assert (=> b!22536 (= lt!7655 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3155 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490))))))

(assert (=> b!22536 (= c!2778 ((_ is Undefined!57) lt!7655))))

(declare-fun b!22537 () Bool)

(declare-fun lt!7674 () Unit!490)

(declare-fun lt!7671 () Unit!490)

(assert (=> b!22537 (= lt!7674 lt!7671)))

(declare-fun call!1631 () ListLongMap!549)

(assert (=> b!22537 (= call!1629 call!1631)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!8 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 V!1165 Int) Unit!490)

(assert (=> b!22537 (= lt!7671 (lemmaChangeZeroKeyThenAddPairToListMap!8 (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) lt!7669 (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (_2!455 lt!7490)) (defaultEntry!1732 (_2!455 lt!7490))))))

(assert (=> b!22537 (= lt!7669 (bvor (extraKeys!1632 (_2!455 lt!7490)) #b00000000000000000000000000000001))))

(assert (=> b!22537 (= e!14622 (tuple2!903 true (LongMapFixedSize!193 (defaultEntry!1732 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (bvor (extraKeys!1632 (_2!455 lt!7490)) #b00000000000000000000000000000001) (minValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (_2!455 lt!7490)) (_size!139 (_2!455 lt!7490)) (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (_vacant!139 (_2!455 lt!7490)))))))

(declare-fun b!22538 () Bool)

(declare-fun Unit!498 () Unit!490)

(assert (=> b!22538 (= e!14612 Unit!498)))

(declare-fun lt!7672 () Unit!490)

(assert (=> b!22538 (= lt!7672 call!1639)))

(assert (=> b!22538 (= lt!7677 call!1640)))

(declare-fun res!14200 () Bool)

(assert (=> b!22538 (= res!14200 ((_ is Found!57) lt!7677))))

(assert (=> b!22538 (=> (not res!14200) (not e!14617))))

(assert (=> b!22538 e!14617))

(declare-fun lt!7656 () Unit!490)

(assert (=> b!22538 (= lt!7656 lt!7672)))

(assert (=> b!22538 false))

(declare-fun b!22539 () Bool)

(declare-fun res!14201 () Bool)

(assert (=> b!22539 (=> (not res!14201) (not e!14621))))

(assert (=> b!22539 (= res!14201 (= (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2349 lt!7673)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1645 () Bool)

(assert (=> bm!1645 (= call!1631 call!1632)))

(declare-fun b!22540 () Bool)

(assert (=> b!22540 (= e!14619 (= call!1642 (+!43 call!1647 (tuple2!907 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun b!22541 () Bool)

(declare-fun res!14189 () Bool)

(assert (=> b!22541 (= res!14189 (= (select (arr!586 (_keys!3155 (_2!455 lt!7490))) (index!2352 lt!7673)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22541 (=> (not res!14189) (not e!14627))))

(declare-fun b!22542 () Bool)

(assert (=> b!22542 (= e!14624 e!14616)))

(declare-fun c!2775 () Bool)

(assert (=> b!22542 (= c!2775 ((_ is MissingZero!57) lt!7655))))

(declare-fun b!22543 () Bool)

(assert (=> b!22543 (= e!14628 (= call!1642 call!1647))))

(declare-fun bm!1646 () Bool)

(assert (=> bm!1646 (= call!1637 call!1648)))

(declare-fun b!22544 () Bool)

(assert (=> b!22544 (= e!14627 (not call!1645))))

(declare-fun b!22545 () Bool)

(declare-fun lt!7667 () Unit!490)

(declare-fun lt!7668 () Unit!490)

(assert (=> b!22545 (= lt!7667 lt!7668)))

(assert (=> b!22545 (= call!1629 call!1631)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!8 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 V!1165 Int) Unit!490)

(assert (=> b!22545 (= lt!7668 (lemmaChangeLongMinValueKeyThenAddPairToListMap!8 (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (extraKeys!1632 (_2!455 lt!7490)) lt!7666 (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (_2!455 lt!7490)) (minValue!1657 (v!1584 (underlying!107 thiss!938))) (defaultEntry!1732 (_2!455 lt!7490))))))

(assert (=> b!22545 (= lt!7666 (bvor (extraKeys!1632 (_2!455 lt!7490)) #b00000000000000000000000000000010))))

(assert (=> b!22545 (= e!14622 (tuple2!903 true (LongMapFixedSize!193 (defaultEntry!1732 (_2!455 lt!7490)) (mask!4712 (_2!455 lt!7490)) (bvor (extraKeys!1632 (_2!455 lt!7490)) #b00000000000000000000000000000010) (zeroValue!1657 (_2!455 lt!7490)) (minValue!1657 (v!1584 (underlying!107 thiss!938))) (_size!139 (_2!455 lt!7490)) (_keys!3155 (_2!455 lt!7490)) (_values!1720 (_2!455 lt!7490)) (_vacant!139 (_2!455 lt!7490)))))))

(assert (= (and d!3953 c!2768) b!22524))

(assert (= (and d!3953 (not c!2768)) b!22536))

(assert (= (and b!22524 c!2776) b!22537))

(assert (= (and b!22524 (not c!2776)) b!22545))

(assert (= (or b!22537 b!22545) bm!1645))

(assert (= (or b!22537 b!22545) bm!1637))

(assert (= (or b!22537 b!22545) bm!1643))

(assert (= (and b!22536 c!2778) b!22531))

(assert (= (and b!22536 (not c!2778)) b!22528))

(assert (= (and b!22531 c!2769) b!22538))

(assert (= (and b!22531 (not c!2769)) b!22515))

(assert (= (and b!22538 res!14200) b!22513))

(assert (= (and b!22513 res!14197) b!22535))

(assert (= (and b!22515 c!2774) b!22517))

(assert (= (and b!22515 (not c!2774)) b!22529))

(assert (= (and b!22517 res!14202) b!22539))

(assert (= (and b!22539 res!14201) b!22520))

(assert (= (and b!22529 c!2771) b!22532))

(assert (= (and b!22529 (not c!2771)) b!22511))

(assert (= (and b!22532 res!14196) b!22541))

(assert (= (and b!22541 res!14189) b!22544))

(assert (= (or b!22517 b!22532) bm!1625))

(assert (= (or b!22520 b!22544) bm!1635))

(assert (= (or b!22513 bm!1625) bm!1646))

(assert (= (or b!22538 b!22515) bm!1624))

(assert (= (and b!22528 c!2767) b!22527))

(assert (= (and b!22528 (not c!2767)) b!22542))

(assert (= (and b!22542 c!2775) b!22530))

(assert (= (and b!22542 (not c!2775)) b!22512))

(assert (= (and b!22512 c!2770) b!22523))

(assert (= (and b!22512 (not c!2770)) b!22508))

(assert (= (and b!22523 res!14191) b!22533))

(assert (= (and b!22533 res!14192) b!22519))

(assert (= (and b!22508 c!2772) b!22509))

(assert (= (and b!22508 (not c!2772)) b!22526))

(assert (= (and b!22509 res!14190) b!22518))

(assert (= (and b!22518 res!14194) b!22510))

(assert (= (and b!22526 c!2773) b!22516))

(assert (= (and b!22526 (not c!2773)) b!22522))

(assert (= (and b!22516 res!14193) b!22534))

(assert (= (and b!22534 res!14195) b!22525))

(assert (= (or b!22509 b!22516) bm!1638))

(assert (= (or b!22510 b!22525) bm!1641))

(assert (= (or b!22533 bm!1638) bm!1631))

(assert (= (or b!22523 b!22508) bm!1627))

(assert (= (or b!22527 b!22530) bm!1636))

(assert (= (or bm!1646 bm!1631) bm!1632))

(assert (= (or b!22531 b!22512) bm!1629))

(assert (= (or b!22538 b!22523) bm!1623))

(assert (= (or bm!1635 bm!1641) bm!1634))

(assert (= (or bm!1624 bm!1627) bm!1628))

(assert (= (or b!22515 b!22508) bm!1640))

(assert (= (or b!22531 b!22512) bm!1644))

(assert (= (or bm!1645 b!22512) bm!1630))

(assert (= (or bm!1637 b!22512) bm!1642))

(assert (= (or bm!1643 b!22512) bm!1626))

(assert (= (and d!3953 res!14198) b!22514))

(assert (= (and b!22514 c!2777) b!22521))

(assert (= (and b!22514 (not c!2777)) b!22543))

(assert (= (and b!22521 res!14199) b!22540))

(assert (= (or b!22540 b!22543) bm!1633))

(assert (= (or b!22521 b!22540 b!22543) bm!1639))

(declare-fun m!16290 () Bool)

(assert (=> b!22540 m!16290))

(declare-fun m!16292 () Bool)

(assert (=> b!22512 m!16292))

(declare-fun m!16294 () Bool)

(assert (=> b!22512 m!16294))

(declare-fun m!16296 () Bool)

(assert (=> b!22512 m!16296))

(declare-fun m!16298 () Bool)

(assert (=> b!22512 m!16298))

(declare-fun m!16300 () Bool)

(assert (=> b!22519 m!16300))

(declare-fun m!16302 () Bool)

(assert (=> b!22518 m!16302))

(declare-fun m!16304 () Bool)

(assert (=> bm!1629 m!16304))

(declare-fun m!16306 () Bool)

(assert (=> bm!1633 m!16306))

(assert (=> bm!1642 m!16294))

(declare-fun m!16308 () Bool)

(assert (=> bm!1642 m!16308))

(declare-fun m!16310 () Bool)

(assert (=> bm!1623 m!16310))

(declare-fun m!16312 () Bool)

(assert (=> bm!1626 m!16312))

(declare-fun m!16314 () Bool)

(assert (=> b!22545 m!16314))

(declare-fun m!16316 () Bool)

(assert (=> bm!1636 m!16316))

(declare-fun m!16318 () Bool)

(assert (=> bm!1634 m!16318))

(declare-fun m!16320 () Bool)

(assert (=> b!22537 m!16320))

(declare-fun m!16322 () Bool)

(assert (=> bm!1632 m!16322))

(declare-fun m!16324 () Bool)

(assert (=> b!22535 m!16324))

(declare-fun m!16326 () Bool)

(assert (=> d!3953 m!16326))

(declare-fun m!16328 () Bool)

(assert (=> d!3953 m!16328))

(declare-fun m!16330 () Bool)

(assert (=> bm!1640 m!16330))

(declare-fun m!16332 () Bool)

(assert (=> bm!1644 m!16332))

(declare-fun m!16334 () Bool)

(assert (=> bm!1644 m!16334))

(declare-fun m!16336 () Bool)

(assert (=> b!22521 m!16336))

(declare-fun m!16338 () Bool)

(assert (=> b!22541 m!16338))

(declare-fun m!16340 () Bool)

(assert (=> bm!1628 m!16340))

(assert (=> b!22536 m!16340))

(declare-fun m!16342 () Bool)

(assert (=> b!22539 m!16342))

(declare-fun m!16344 () Bool)

(assert (=> bm!1630 m!16344))

(declare-fun m!16346 () Bool)

(assert (=> bm!1639 m!16346))

(declare-fun m!16348 () Bool)

(assert (=> b!22534 m!16348))

(assert (=> b!22354 d!3953))

(declare-fun d!3955 () Bool)

(assert (=> d!3955 (= (array_inv!415 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) (bvsge (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!22344 d!3955))

(declare-fun d!3957 () Bool)

(assert (=> d!3957 (= (array_inv!416 (_values!1720 (v!1584 (underlying!107 thiss!938)))) (bvsge (size!681 (_values!1720 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!22344 d!3957))

(declare-fun b!22546 () Bool)

(declare-fun e!14640 () Unit!490)

(declare-fun Unit!499 () Unit!490)

(assert (=> b!22546 (= e!14640 Unit!499)))

(declare-fun lt!7688 () Unit!490)

(declare-fun call!1665 () Unit!490)

(assert (=> b!22546 (= lt!7688 call!1665)))

(declare-fun lt!7705 () SeekEntryResult!57)

(declare-fun call!1668 () SeekEntryResult!57)

(assert (=> b!22546 (= lt!7705 call!1668)))

(declare-fun c!2784 () Bool)

(assert (=> b!22546 (= c!2784 ((_ is MissingZero!57) lt!7705))))

(declare-fun e!14646 () Bool)

(assert (=> b!22546 e!14646))

(declare-fun lt!7706 () Unit!490)

(assert (=> b!22546 (= lt!7706 lt!7688)))

(assert (=> b!22546 false))

(declare-fun b!22547 () Bool)

(declare-fun res!14204 () Bool)

(declare-fun e!14633 () Bool)

(assert (=> b!22547 (=> (not res!14204) (not e!14633))))

(declare-fun call!1660 () Bool)

(assert (=> b!22547 (= res!14204 call!1660)))

(assert (=> b!22547 (= e!14646 e!14633)))

(declare-fun bm!1647 () Bool)

(declare-fun call!1663 () Unit!490)

(assert (=> bm!1647 (= call!1663 (lemmaInListMapThenSeekEntryOrOpenFindsIt!8 (_keys!3155 lt!7488) (_values!1720 lt!7488) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1732 lt!7488)))))

(declare-fun b!22548 () Bool)

(declare-fun call!1657 () Bool)

(assert (=> b!22548 (= e!14633 (not call!1657))))

(declare-fun b!22549 () Bool)

(declare-fun e!14643 () Bool)

(declare-fun lt!7700 () SeekEntryResult!57)

(assert (=> b!22549 (= e!14643 ((_ is Undefined!57) lt!7700))))

(declare-fun b!22550 () Bool)

(declare-fun lt!7690 () Unit!490)

(declare-fun lt!7691 () Unit!490)

(assert (=> b!22550 (= lt!7690 lt!7691)))

(declare-fun call!1667 () Bool)

(assert (=> b!22550 call!1667))

(declare-fun lt!7684 () array!1235)

(declare-fun lt!7682 () SeekEntryResult!57)

(assert (=> b!22550 (= lt!7691 (lemmaValidKeyInArrayIsInListMap!8 (_keys!3155 lt!7488) lt!7684 (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) (index!2350 lt!7682) (defaultEntry!1732 lt!7488)))))

(assert (=> b!22550 (= lt!7684 (array!1236 (store (arr!585 (_values!1720 lt!7488)) (index!2350 lt!7682) (ValueCellFull!303 (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))))) (size!681 (_values!1720 lt!7488))))))

(declare-fun lt!7687 () Unit!490)

(declare-fun lt!7702 () Unit!490)

(assert (=> b!22550 (= lt!7687 lt!7702)))

(declare-fun call!1652 () ListLongMap!549)

(declare-fun call!1658 () ListLongMap!549)

(assert (=> b!22550 (= call!1652 call!1658)))

(assert (=> b!22550 (= lt!7702 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!8 (_keys!3155 lt!7488) (_values!1720 lt!7488) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) (index!2350 lt!7682) (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (defaultEntry!1732 lt!7488)))))

(declare-fun lt!7689 () Unit!490)

(assert (=> b!22550 (= lt!7689 e!14640)))

(declare-fun call!1656 () ListLongMap!549)

(declare-fun c!2782 () Bool)

(assert (=> b!22550 (= c!2782 (contains!218 call!1656 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!14636 () tuple2!902)

(assert (=> b!22550 (= e!14636 (tuple2!903 true (LongMapFixedSize!193 (defaultEntry!1732 lt!7488) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) (_size!139 lt!7488) (_keys!3155 lt!7488) (array!1236 (store (arr!585 (_values!1720 lt!7488)) (index!2350 lt!7682) (ValueCellFull!303 (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))))) (size!681 (_values!1720 lt!7488))) (_vacant!139 lt!7488))))))

(declare-fun b!22551 () Bool)

(declare-fun res!14211 () Bool)

(declare-fun call!1661 () Bool)

(assert (=> b!22551 (= res!14211 call!1661)))

(declare-fun e!14637 () Bool)

(assert (=> b!22551 (=> (not res!14211) (not e!14637))))

(declare-fun bm!1648 () Bool)

(declare-fun call!1664 () SeekEntryResult!57)

(declare-fun call!1654 () SeekEntryResult!57)

(assert (=> bm!1648 (= call!1664 call!1654)))

(declare-fun bm!1649 () Bool)

(declare-fun call!1673 () Bool)

(assert (=> bm!1649 (= call!1673 call!1661)))

(declare-fun bm!1650 () Bool)

(declare-fun c!2788 () Bool)

(declare-fun call!1662 () ListLongMap!549)

(declare-fun c!2780 () Bool)

(assert (=> bm!1650 (= call!1652 (+!43 (ite c!2780 call!1662 call!1656) (ite c!2780 (ite c!2788 (tuple2!907 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))) (tuple2!907 #b1000000000000000000000000000000000000000000000000000000000000000 (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))))) (tuple2!907 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))))))))

(declare-fun bm!1651 () Bool)

(assert (=> bm!1651 (= call!1668 call!1654)))

(declare-fun b!22552 () Bool)

(declare-fun e!14631 () Bool)

(declare-fun e!14648 () Bool)

(assert (=> b!22552 (= e!14631 e!14648)))

(declare-fun c!2789 () Bool)

(declare-fun lt!7703 () tuple2!902)

(assert (=> b!22552 (= c!2789 (_1!455 lt!7703))))

(declare-fun b!22553 () Bool)

(declare-fun e!14632 () Unit!490)

(declare-fun lt!7697 () Unit!490)

(assert (=> b!22553 (= e!14632 lt!7697)))

(assert (=> b!22553 (= lt!7697 call!1665)))

(assert (=> b!22553 (= lt!7700 call!1664)))

(declare-fun c!2786 () Bool)

(assert (=> b!22553 (= c!2786 ((_ is MissingZero!57) lt!7700))))

(declare-fun e!14634 () Bool)

(assert (=> b!22553 e!14634))

(declare-fun b!22554 () Bool)

(declare-fun e!14630 () Bool)

(declare-fun e!14649 () Bool)

(assert (=> b!22554 (= e!14630 e!14649)))

(declare-fun res!14207 () Bool)

(assert (=> b!22554 (= res!14207 call!1660)))

(assert (=> b!22554 (=> (not res!14207) (not e!14649))))

(declare-fun bm!1652 () Bool)

(assert (=> bm!1652 (= call!1654 (seekEntryOrOpen!0 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3155 lt!7488) (mask!4712 lt!7488)))))

(declare-fun call!1651 () ListLongMap!549)

(declare-fun bm!1653 () Bool)

(declare-fun c!2790 () Bool)

(assert (=> bm!1653 (= call!1651 (getCurrentListMap!119 (_keys!3155 lt!7488) (ite c!2790 (_values!1720 lt!7488) lt!7684) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) #b00000000000000000000000000000000 (defaultEntry!1732 lt!7488)))))

(declare-fun lt!7693 () (_ BitVec 32))

(declare-fun bm!1654 () Bool)

(declare-fun lt!7696 () (_ BitVec 32))

(assert (=> bm!1654 (= call!1656 (getCurrentListMap!119 (_keys!3155 lt!7488) (_values!1720 lt!7488) (mask!4712 lt!7488) (ite c!2780 (ite c!2788 lt!7696 lt!7693) (extraKeys!1632 lt!7488)) (ite (and c!2780 c!2788) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (zeroValue!1657 lt!7488)) (ite c!2780 (ite c!2788 (minValue!1657 lt!7488) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))) (minValue!1657 lt!7488)) #b00000000000000000000000000000000 (defaultEntry!1732 lt!7488)))))

(declare-fun bm!1655 () Bool)

(declare-fun call!1659 () Bool)

(declare-fun call!1672 () Bool)

(assert (=> bm!1655 (= call!1659 call!1672)))

(declare-fun d!3959 () Bool)

(assert (=> d!3959 e!14631))

(declare-fun res!14212 () Bool)

(assert (=> d!3959 (=> (not res!14212) (not e!14631))))

(assert (=> d!3959 (= res!14212 (valid!103 (_2!455 lt!7703)))))

(declare-fun e!14635 () tuple2!902)

(assert (=> d!3959 (= lt!7703 e!14635)))

(assert (=> d!3959 (= c!2780 (= (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (bvneg (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3959 (valid!103 lt!7488)))

(assert (=> d!3959 (= (update!27 lt!7488 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))) lt!7703)))

(declare-fun b!22555 () Bool)

(declare-fun res!14216 () Bool)

(declare-fun e!14641 () Bool)

(assert (=> b!22555 (=> (not res!14216) (not e!14641))))

(assert (=> b!22555 (= res!14216 call!1673)))

(assert (=> b!22555 (= e!14634 e!14641)))

(declare-fun c!2781 () Bool)

(declare-fun lt!7704 () SeekEntryResult!57)

(declare-fun lt!7680 () SeekEntryResult!57)

(declare-fun bm!1656 () Bool)

(assert (=> bm!1656 (= call!1672 (inRange!0 (ite c!2790 (ite c!2781 (index!2350 lt!7704) (ite c!2786 (index!2349 lt!7700) (index!2352 lt!7700))) (ite c!2782 (index!2350 lt!7680) (ite c!2784 (index!2349 lt!7705) (index!2352 lt!7705)))) (mask!4712 lt!7488)))))

(declare-fun bm!1657 () Bool)

(declare-fun call!1671 () ListLongMap!549)

(assert (=> bm!1657 (= call!1671 (map!402 lt!7488))))

(declare-fun b!22556 () Bool)

(declare-fun res!14208 () Bool)

(assert (=> b!22556 (=> (not res!14208) (not e!14633))))

(assert (=> b!22556 (= res!14208 (= (select (arr!586 (_keys!3155 lt!7488)) (index!2349 lt!7705)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!1670 () Bool)

(declare-fun bm!1658 () Bool)

(assert (=> bm!1658 (= call!1670 (arrayContainsKey!0 (_keys!3155 lt!7488) (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!22557 () Bool)

(declare-fun e!14645 () Bool)

(assert (=> b!22557 (= e!14645 (= (select (arr!586 (_keys!3155 lt!7488)) (index!2350 lt!7680)) (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!22558 () Bool)

(declare-fun call!1669 () Bool)

(assert (=> b!22558 (= e!14641 (not call!1669))))

(declare-fun b!22559 () Bool)

(declare-fun e!14639 () Bool)

(assert (=> b!22559 (= e!14648 e!14639)))

(declare-fun call!1666 () ListLongMap!549)

(declare-fun res!14213 () Bool)

(assert (=> b!22559 (= res!14213 (contains!218 call!1666 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!22559 (=> (not res!14213) (not e!14639))))

(declare-fun bm!1659 () Bool)

(assert (=> bm!1659 (= call!1669 call!1670)))

(declare-fun c!2779 () Bool)

(declare-fun bm!1660 () Bool)

(declare-fun call!1650 () tuple2!902)

(assert (=> bm!1660 (= call!1650 (updateHelperNewKey!8 lt!7488 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (ite c!2779 (index!2352 lt!7682) (index!2349 lt!7682))))))

(declare-fun b!22560 () Bool)

(assert (=> b!22560 (= e!14630 ((_ is Undefined!57) lt!7705))))

(declare-fun bm!1661 () Bool)

(assert (=> bm!1661 (= call!1662 call!1658)))

(declare-fun bm!1662 () Bool)

(assert (=> bm!1662 (= call!1660 call!1659)))

(declare-fun bm!1663 () Bool)

(assert (=> bm!1663 (= call!1666 (map!402 (_2!455 lt!7703)))))

(declare-fun bm!1664 () Bool)

(assert (=> bm!1664 (= call!1665 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!8 (_keys!3155 lt!7488) (_values!1720 lt!7488) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1732 lt!7488)))))

(declare-fun b!22561 () Bool)

(declare-fun lt!7685 () Unit!490)

(assert (=> b!22561 (= e!14640 lt!7685)))

(assert (=> b!22561 (= lt!7685 call!1663)))

(assert (=> b!22561 (= lt!7680 call!1668)))

(declare-fun res!14205 () Bool)

(assert (=> b!22561 (= res!14205 ((_ is Found!57) lt!7680))))

(assert (=> b!22561 (=> (not res!14205) (not e!14645))))

(assert (=> b!22561 e!14645))

(declare-fun bm!1665 () Bool)

(assert (=> bm!1665 (= call!1657 call!1670)))

(declare-fun b!22562 () Bool)

(declare-fun e!14642 () tuple2!902)

(assert (=> b!22562 (= e!14635 e!14642)))

(assert (=> b!22562 (= c!2788 (= (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!22563 () Bool)

(assert (=> b!22563 (= e!14649 (not call!1657))))

(declare-fun b!22564 () Bool)

(declare-fun c!2785 () Bool)

(assert (=> b!22564 (= c!2785 ((_ is MissingVacant!57) lt!7705))))

(assert (=> b!22564 (= e!14646 e!14630)))

(declare-fun b!22565 () Bool)

(declare-fun e!14644 () tuple2!902)

(declare-fun lt!7686 () tuple2!902)

(assert (=> b!22565 (= e!14644 (tuple2!903 (_1!455 lt!7686) (_2!455 lt!7686)))))

(assert (=> b!22565 (= lt!7686 call!1650)))

(declare-fun b!22566 () Bool)

(assert (=> b!22566 (= c!2779 ((_ is MissingVacant!57) lt!7682))))

(declare-fun e!14638 () tuple2!902)

(assert (=> b!22566 (= e!14638 e!14644)))

(declare-fun bm!1666 () Bool)

(assert (=> bm!1666 (= call!1658 (getCurrentListMap!119 (_keys!3155 lt!7488) (ite c!2780 (_values!1720 lt!7488) (array!1236 (store (arr!585 (_values!1720 lt!7488)) (index!2350 lt!7682) (ValueCellFull!303 (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))))) (size!681 (_values!1720 lt!7488)))) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) #b00000000000000000000000000000000 (defaultEntry!1732 lt!7488)))))

(declare-fun b!22567 () Bool)

(declare-fun c!2783 () Bool)

(assert (=> b!22567 (= c!2783 ((_ is MissingVacant!57) lt!7700))))

(assert (=> b!22567 (= e!14634 e!14643)))

(declare-fun b!22568 () Bool)

(declare-fun lt!7692 () tuple2!902)

(assert (=> b!22568 (= lt!7692 call!1650)))

(assert (=> b!22568 (= e!14636 (tuple2!903 (_1!455 lt!7692) (_2!455 lt!7692)))))

(declare-fun b!22569 () Bool)

(declare-fun lt!7681 () Unit!490)

(assert (=> b!22569 (= lt!7681 e!14632)))

(assert (=> b!22569 (= c!2781 call!1667)))

(assert (=> b!22569 (= e!14638 (tuple2!903 false lt!7488))))

(declare-fun bm!1667 () Bool)

(declare-fun call!1653 () ListLongMap!549)

(assert (=> bm!1667 (= call!1653 call!1652)))

(declare-fun b!22570 () Bool)

(declare-fun e!14647 () Bool)

(assert (=> b!22570 (= e!14643 e!14647)))

(declare-fun res!14210 () Bool)

(assert (=> b!22570 (= res!14210 call!1673)))

(assert (=> b!22570 (=> (not res!14210) (not e!14647))))

(declare-fun b!22571 () Bool)

(declare-fun res!14206 () Bool)

(assert (=> b!22571 (= res!14206 call!1659)))

(assert (=> b!22571 (=> (not res!14206) (not e!14645))))

(declare-fun bm!1668 () Bool)

(assert (=> bm!1668 (= call!1667 (contains!218 call!1651 (ite c!2790 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (select (arr!586 (_keys!3155 lt!7488)) (index!2350 lt!7682)))))))

(declare-fun b!22572 () Bool)

(declare-fun res!14209 () Bool)

(assert (=> b!22572 (= res!14209 (= (select (arr!586 (_keys!3155 lt!7488)) (index!2352 lt!7705)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22572 (=> (not res!14209) (not e!14649))))

(declare-fun b!22573 () Bool)

(assert (=> b!22573 (= e!14637 (= (select (arr!586 (_keys!3155 lt!7488)) (index!2350 lt!7704)) (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!22574 () Bool)

(assert (=> b!22574 (= e!14635 e!14638)))

(assert (=> b!22574 (= lt!7682 (seekEntryOrOpen!0 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3155 lt!7488) (mask!4712 lt!7488)))))

(assert (=> b!22574 (= c!2790 ((_ is Undefined!57) lt!7682))))

(declare-fun b!22575 () Bool)

(declare-fun lt!7701 () Unit!490)

(declare-fun lt!7698 () Unit!490)

(assert (=> b!22575 (= lt!7701 lt!7698)))

(declare-fun call!1655 () ListLongMap!549)

(assert (=> b!22575 (= call!1653 call!1655)))

(assert (=> b!22575 (= lt!7698 (lemmaChangeZeroKeyThenAddPairToListMap!8 (_keys!3155 lt!7488) (_values!1720 lt!7488) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) lt!7696 (zeroValue!1657 lt!7488) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (minValue!1657 lt!7488) (defaultEntry!1732 lt!7488)))))

(assert (=> b!22575 (= lt!7696 (bvor (extraKeys!1632 lt!7488) #b00000000000000000000000000000001))))

(assert (=> b!22575 (= e!14642 (tuple2!903 true (LongMapFixedSize!193 (defaultEntry!1732 lt!7488) (mask!4712 lt!7488) (bvor (extraKeys!1632 lt!7488) #b00000000000000000000000000000001) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (minValue!1657 lt!7488) (_size!139 lt!7488) (_keys!3155 lt!7488) (_values!1720 lt!7488) (_vacant!139 lt!7488))))))

(declare-fun b!22576 () Bool)

(declare-fun Unit!500 () Unit!490)

(assert (=> b!22576 (= e!14632 Unit!500)))

(declare-fun lt!7699 () Unit!490)

(assert (=> b!22576 (= lt!7699 call!1663)))

(assert (=> b!22576 (= lt!7704 call!1664)))

(declare-fun res!14214 () Bool)

(assert (=> b!22576 (= res!14214 ((_ is Found!57) lt!7704))))

(assert (=> b!22576 (=> (not res!14214) (not e!14637))))

(assert (=> b!22576 e!14637))

(declare-fun lt!7683 () Unit!490)

(assert (=> b!22576 (= lt!7683 lt!7699)))

(assert (=> b!22576 false))

(declare-fun b!22577 () Bool)

(declare-fun res!14215 () Bool)

(assert (=> b!22577 (=> (not res!14215) (not e!14641))))

(assert (=> b!22577 (= res!14215 (= (select (arr!586 (_keys!3155 lt!7488)) (index!2349 lt!7700)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1669 () Bool)

(assert (=> bm!1669 (= call!1655 call!1656)))

(declare-fun b!22578 () Bool)

(assert (=> b!22578 (= e!14639 (= call!1666 (+!43 call!1671 (tuple2!907 (ite (or c!2718 c!2719) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))))))))

(declare-fun b!22579 () Bool)

(declare-fun res!14203 () Bool)

(assert (=> b!22579 (= res!14203 (= (select (arr!586 (_keys!3155 lt!7488)) (index!2352 lt!7700)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!22579 (=> (not res!14203) (not e!14647))))

(declare-fun b!22580 () Bool)

(assert (=> b!22580 (= e!14644 e!14636)))

(declare-fun c!2787 () Bool)

(assert (=> b!22580 (= c!2787 ((_ is MissingZero!57) lt!7682))))

(declare-fun b!22581 () Bool)

(assert (=> b!22581 (= e!14648 (= call!1666 call!1671))))

(declare-fun bm!1670 () Bool)

(assert (=> bm!1670 (= call!1661 call!1672)))

(declare-fun b!22582 () Bool)

(assert (=> b!22582 (= e!14647 (not call!1669))))

(declare-fun b!22583 () Bool)

(declare-fun lt!7694 () Unit!490)

(declare-fun lt!7695 () Unit!490)

(assert (=> b!22583 (= lt!7694 lt!7695)))

(assert (=> b!22583 (= call!1653 call!1655)))

(assert (=> b!22583 (= lt!7695 (lemmaChangeLongMinValueKeyThenAddPairToListMap!8 (_keys!3155 lt!7488) (_values!1720 lt!7488) (mask!4712 lt!7488) (extraKeys!1632 lt!7488) lt!7693 (zeroValue!1657 lt!7488) (minValue!1657 lt!7488) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (defaultEntry!1732 lt!7488)))))

(assert (=> b!22583 (= lt!7693 (bvor (extraKeys!1632 lt!7488) #b00000000000000000000000000000010))))

(assert (=> b!22583 (= e!14642 (tuple2!903 true (LongMapFixedSize!193 (defaultEntry!1732 lt!7488) (mask!4712 lt!7488) (bvor (extraKeys!1632 lt!7488) #b00000000000000000000000000000010) (zeroValue!1657 lt!7488) (ite (or c!2718 c!2719) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (_size!139 lt!7488) (_keys!3155 lt!7488) (_values!1720 lt!7488) (_vacant!139 lt!7488))))))

(assert (= (and d!3959 c!2780) b!22562))

(assert (= (and d!3959 (not c!2780)) b!22574))

(assert (= (and b!22562 c!2788) b!22575))

(assert (= (and b!22562 (not c!2788)) b!22583))

(assert (= (or b!22575 b!22583) bm!1669))

(assert (= (or b!22575 b!22583) bm!1661))

(assert (= (or b!22575 b!22583) bm!1667))

(assert (= (and b!22574 c!2790) b!22569))

(assert (= (and b!22574 (not c!2790)) b!22566))

(assert (= (and b!22569 c!2781) b!22576))

(assert (= (and b!22569 (not c!2781)) b!22553))

(assert (= (and b!22576 res!14214) b!22551))

(assert (= (and b!22551 res!14211) b!22573))

(assert (= (and b!22553 c!2786) b!22555))

(assert (= (and b!22553 (not c!2786)) b!22567))

(assert (= (and b!22555 res!14216) b!22577))

(assert (= (and b!22577 res!14215) b!22558))

(assert (= (and b!22567 c!2783) b!22570))

(assert (= (and b!22567 (not c!2783)) b!22549))

(assert (= (and b!22570 res!14210) b!22579))

(assert (= (and b!22579 res!14203) b!22582))

(assert (= (or b!22555 b!22570) bm!1649))

(assert (= (or b!22558 b!22582) bm!1659))

(assert (= (or b!22551 bm!1649) bm!1670))

(assert (= (or b!22576 b!22553) bm!1648))

(assert (= (and b!22566 c!2779) b!22565))

(assert (= (and b!22566 (not c!2779)) b!22580))

(assert (= (and b!22580 c!2787) b!22568))

(assert (= (and b!22580 (not c!2787)) b!22550))

(assert (= (and b!22550 c!2782) b!22561))

(assert (= (and b!22550 (not c!2782)) b!22546))

(assert (= (and b!22561 res!14205) b!22571))

(assert (= (and b!22571 res!14206) b!22557))

(assert (= (and b!22546 c!2784) b!22547))

(assert (= (and b!22546 (not c!2784)) b!22564))

(assert (= (and b!22547 res!14204) b!22556))

(assert (= (and b!22556 res!14208) b!22548))

(assert (= (and b!22564 c!2785) b!22554))

(assert (= (and b!22564 (not c!2785)) b!22560))

(assert (= (and b!22554 res!14207) b!22572))

(assert (= (and b!22572 res!14209) b!22563))

(assert (= (or b!22547 b!22554) bm!1662))

(assert (= (or b!22548 b!22563) bm!1665))

(assert (= (or b!22571 bm!1662) bm!1655))

(assert (= (or b!22561 b!22546) bm!1651))

(assert (= (or b!22565 b!22568) bm!1660))

(assert (= (or bm!1670 bm!1655) bm!1656))

(assert (= (or b!22569 b!22550) bm!1653))

(assert (= (or b!22576 b!22561) bm!1647))

(assert (= (or bm!1659 bm!1665) bm!1658))

(assert (= (or bm!1648 bm!1651) bm!1652))

(assert (= (or b!22553 b!22546) bm!1664))

(assert (= (or b!22569 b!22550) bm!1668))

(assert (= (or bm!1669 b!22550) bm!1654))

(assert (= (or bm!1661 b!22550) bm!1666))

(assert (= (or bm!1667 b!22550) bm!1650))

(assert (= (and d!3959 res!14212) b!22552))

(assert (= (and b!22552 c!2789) b!22559))

(assert (= (and b!22552 (not c!2789)) b!22581))

(assert (= (and b!22559 res!14213) b!22578))

(assert (= (or b!22578 b!22581) bm!1657))

(assert (= (or b!22559 b!22578 b!22581) bm!1663))

(declare-fun m!16350 () Bool)

(assert (=> b!22578 m!16350))

(declare-fun m!16352 () Bool)

(assert (=> b!22550 m!16352))

(declare-fun m!16354 () Bool)

(assert (=> b!22550 m!16354))

(declare-fun m!16356 () Bool)

(assert (=> b!22550 m!16356))

(declare-fun m!16358 () Bool)

(assert (=> b!22550 m!16358))

(declare-fun m!16360 () Bool)

(assert (=> b!22557 m!16360))

(declare-fun m!16362 () Bool)

(assert (=> b!22556 m!16362))

(declare-fun m!16364 () Bool)

(assert (=> bm!1653 m!16364))

(declare-fun m!16366 () Bool)

(assert (=> bm!1657 m!16366))

(assert (=> bm!1666 m!16354))

(declare-fun m!16368 () Bool)

(assert (=> bm!1666 m!16368))

(declare-fun m!16370 () Bool)

(assert (=> bm!1647 m!16370))

(declare-fun m!16372 () Bool)

(assert (=> bm!1650 m!16372))

(declare-fun m!16374 () Bool)

(assert (=> b!22583 m!16374))

(declare-fun m!16376 () Bool)

(assert (=> bm!1660 m!16376))

(declare-fun m!16378 () Bool)

(assert (=> bm!1658 m!16378))

(declare-fun m!16380 () Bool)

(assert (=> b!22575 m!16380))

(declare-fun m!16382 () Bool)

(assert (=> bm!1656 m!16382))

(declare-fun m!16384 () Bool)

(assert (=> b!22573 m!16384))

(declare-fun m!16386 () Bool)

(assert (=> d!3959 m!16386))

(declare-fun m!16388 () Bool)

(assert (=> d!3959 m!16388))

(declare-fun m!16390 () Bool)

(assert (=> bm!1664 m!16390))

(declare-fun m!16392 () Bool)

(assert (=> bm!1668 m!16392))

(declare-fun m!16394 () Bool)

(assert (=> bm!1668 m!16394))

(declare-fun m!16396 () Bool)

(assert (=> b!22559 m!16396))

(declare-fun m!16398 () Bool)

(assert (=> b!22579 m!16398))

(declare-fun m!16400 () Bool)

(assert (=> bm!1652 m!16400))

(assert (=> b!22574 m!16400))

(declare-fun m!16402 () Bool)

(assert (=> b!22577 m!16402))

(declare-fun m!16404 () Bool)

(assert (=> bm!1654 m!16404))

(declare-fun m!16406 () Bool)

(assert (=> bm!1663 m!16406))

(declare-fun m!16408 () Bool)

(assert (=> b!22572 m!16408))

(assert (=> bm!1567 d!3959))

(declare-fun d!3961 () Bool)

(assert (=> d!3961 (= (valid!102 (_3!3 lt!7492)) (valid!103 (v!1584 (underlying!107 (_3!3 lt!7492)))))))

(declare-fun bs!937 () Bool)

(assert (= bs!937 d!3961))

(declare-fun m!16410 () Bool)

(assert (=> bs!937 m!16410))

(assert (=> b!22339 d!3961))

(declare-fun b!22612 () Bool)

(declare-fun e!14673 () Bool)

(declare-fun e!14672 () Bool)

(assert (=> b!22612 (= e!14673 e!14672)))

(declare-fun res!14222 () Bool)

(assert (=> b!22612 (=> (not res!14222) (not e!14672))))

(declare-fun lt!7786 () tuple2!902)

(assert (=> b!22612 (= res!14222 (valid!103 (_2!455 lt!7786)))))

(declare-fun lt!7798 () ListLongMap!549)

(declare-fun lt!7802 () ListLongMap!549)

(declare-fun bm!1697 () Bool)

(declare-fun lt!7788 () (_ BitVec 64))

(declare-fun c!2804 () Bool)

(declare-fun lt!7776 () V!1165)

(declare-fun call!1703 () ListLongMap!549)

(declare-fun lt!7777 () (_ BitVec 64))

(assert (=> bm!1697 (= call!1703 (+!43 (ite c!2804 lt!7802 lt!7798) (ite c!2804 (tuple2!907 lt!7777 lt!7776) (tuple2!907 lt!7788 (zeroValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun call!1706 () ListLongMap!549)

(declare-fun bm!1698 () Bool)

(declare-fun lt!7783 () ListLongMap!549)

(assert (=> bm!1698 (= call!1706 (+!43 (ite c!2804 lt!7783 lt!7798) (tuple2!907 lt!7777 lt!7776)))))

(declare-fun b!22613 () Bool)

(declare-fun e!14671 () tuple2!902)

(declare-fun e!14670 () tuple2!902)

(assert (=> b!22613 (= e!14671 e!14670)))

(declare-fun c!2806 () Bool)

(assert (=> b!22613 (= c!2806 (bvsgt (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!22614 () Bool)

(declare-fun e!14666 () Bool)

(assert (=> b!22614 (= e!14666 (ite (= lt!7777 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!22615 () Bool)

(declare-fun lt!7793 () tuple2!902)

(declare-fun call!1702 () tuple2!902)

(assert (=> b!22615 (= lt!7793 call!1702)))

(assert (=> b!22615 (= e!14670 (tuple2!903 (_1!455 lt!7793) (_2!455 lt!7793)))))

(declare-fun b!22616 () Bool)

(declare-fun e!14668 () tuple2!902)

(declare-fun lt!7796 () tuple2!902)

(assert (=> b!22616 (= e!14668 (tuple2!903 (_1!455 lt!7796) (_2!455 lt!7796)))))

(declare-fun call!1708 () ListLongMap!549)

(assert (=> b!22616 (= lt!7802 call!1708)))

(declare-fun lt!7792 () (_ BitVec 64))

(assert (=> b!22616 (= lt!7792 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7784 () Unit!490)

(declare-fun call!1711 () Unit!490)

(assert (=> b!22616 (= lt!7784 call!1711)))

(declare-fun call!1707 () ListLongMap!549)

(declare-fun call!1701 () ListLongMap!549)

(assert (=> b!22616 (= call!1707 call!1701)))

(declare-fun lt!7795 () Unit!490)

(assert (=> b!22616 (= lt!7795 lt!7784)))

(declare-fun call!1704 () ListLongMap!549)

(assert (=> b!22616 (= lt!7783 call!1704)))

(declare-fun lt!7782 () (_ BitVec 64))

(assert (=> b!22616 (= lt!7782 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7791 () Unit!490)

(declare-fun call!1700 () Unit!490)

(assert (=> b!22616 (= lt!7791 call!1700)))

(declare-fun call!1710 () ListLongMap!549)

(declare-fun call!1705 () ListLongMap!549)

(assert (=> b!22616 (= call!1710 call!1705)))

(declare-fun lt!7787 () Unit!490)

(assert (=> b!22616 (= lt!7787 lt!7791)))

(assert (=> b!22616 (= lt!7796 call!1702)))

(declare-fun bm!1699 () Bool)

(declare-fun lt!7800 () ListLongMap!549)

(declare-fun call!1709 () ListLongMap!549)

(assert (=> bm!1699 (= call!1709 (+!43 (ite c!2804 lt!7783 lt!7800) (ite c!2804 (tuple2!907 lt!7782 (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (tuple2!907 lt!7777 lt!7776))))))

(declare-fun b!22617 () Bool)

(declare-fun e!14667 () tuple2!902)

(assert (=> b!22617 (= e!14671 e!14667)))

(declare-fun lt!7799 () tuple2!902)

(assert (=> b!22617 (= lt!7799 (update!27 (v!1584 (_2!454 lt!7489)) lt!7777 lt!7776))))

(declare-fun c!2803 () Bool)

(declare-fun lt!7775 () ListLongMap!549)

(assert (=> b!22617 (= c!2803 (contains!218 lt!7775 lt!7777))))

(declare-fun lt!7794 () Unit!490)

(declare-fun e!14669 () Unit!490)

(assert (=> b!22617 (= lt!7794 e!14669)))

(declare-fun c!2808 () Bool)

(assert (=> b!22617 (= c!2808 (_1!455 lt!7799))))

(declare-fun bm!1700 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!14 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 32) Int) ListLongMap!549)

(assert (=> bm!1700 (= call!1708 (getCurrentListMapNoExtraKeys!14 (_keys!3155 (v!1584 (underlying!107 thiss!938))) (_values!1720 (v!1584 (underlying!107 thiss!938))) (mask!4712 (v!1584 (underlying!107 thiss!938))) (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))) (bvadd (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!1732 (v!1584 (underlying!107 thiss!938)))))))

(declare-fun b!22618 () Bool)

(declare-fun Unit!501 () Unit!490)

(assert (=> b!22618 (= e!14669 Unit!501)))

(declare-fun lt!7771 () (_ BitVec 64))

(declare-fun bm!1701 () Bool)

(declare-fun call!1712 () ListLongMap!549)

(assert (=> bm!1701 (= call!1712 (+!43 (ite c!2804 lt!7802 lt!7800) (ite c!2804 (tuple2!907 lt!7792 (zeroValue!1657 (v!1584 (underlying!107 thiss!938)))) (tuple2!907 lt!7771 (minValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun b!22619 () Bool)

(assert (=> b!22619 (= c!2804 (bvsgt (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!22619 (= e!14667 e!14668)))

(declare-fun lt!7789 () (_ BitVec 32))

(declare-fun b!22620 () Bool)

(assert (=> b!22620 (= e!14666 (arrayContainsKey!0 (_keys!3155 (v!1584 (underlying!107 thiss!938))) lt!7777 lt!7789))))

(declare-fun b!22621 () Bool)

(assert (=> b!22621 (= e!14668 (tuple2!903 true (_2!455 lt!7799)))))

(assert (=> b!22621 (= lt!7798 call!1708)))

(assert (=> b!22621 (= lt!7788 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7801 () Unit!490)

(assert (=> b!22621 (= lt!7801 call!1700)))

(assert (=> b!22621 (= call!1701 call!1710)))

(declare-fun lt!7773 () Unit!490)

(assert (=> b!22621 (= lt!7773 lt!7801)))

(assert (=> b!22621 (= lt!7800 call!1707)))

(assert (=> b!22621 (= lt!7771 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!7781 () Unit!490)

(assert (=> b!22621 (= lt!7781 call!1711)))

(assert (=> b!22621 (= call!1705 call!1704)))

(declare-fun lt!7774 () Unit!490)

(assert (=> b!22621 (= lt!7774 lt!7781)))

(declare-fun bm!1702 () Bool)

(declare-fun c!2805 () Bool)

(assert (=> bm!1702 (= call!1702 (repackFrom!4 thiss!938 (ite c!2805 (_2!455 lt!7799) (v!1584 (_2!454 lt!7489))) (bvsub (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun bm!1703 () Bool)

(assert (=> bm!1703 (= call!1701 (+!43 (ite c!2804 call!1712 call!1706) (ite c!2804 (tuple2!907 lt!7777 lt!7776) (tuple2!907 lt!7788 (zeroValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun d!3963 () Bool)

(assert (=> d!3963 e!14673))

(declare-fun res!14221 () Bool)

(assert (=> d!3963 (=> res!14221 e!14673)))

(assert (=> d!3963 (= res!14221 (not (_1!455 lt!7786)))))

(assert (=> d!3963 (= lt!7786 e!14671)))

(assert (=> d!3963 (= c!2805 (and (not (= lt!7777 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!7777 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3963 (= lt!7775 (map!402 (v!1584 (_2!454 lt!7489))))))

(declare-fun get!383 (ValueCell!303 V!1165) V!1165)

(assert (=> d!3963 (= lt!7776 (get!383 (select (arr!585 (_values!1720 (v!1584 (underlying!107 thiss!938)))) (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)) (dynLambda!142 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3963 (= lt!7777 (select (arr!586 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!3963 (valid!102 thiss!938)))

(assert (=> d!3963 (= (repackFrom!4 thiss!938 (v!1584 (_2!454 lt!7489)) (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)) lt!7786)))

(declare-fun b!22622 () Bool)

(assert (=> b!22622 (= e!14672 (= (map!402 (_2!455 lt!7786)) (map!402 (v!1584 (underlying!107 thiss!938)))))))

(declare-fun bm!1704 () Bool)

(declare-fun addCommutativeForDiffKeys!3 (ListLongMap!549 (_ BitVec 64) V!1165 (_ BitVec 64) V!1165) Unit!490)

(assert (=> bm!1704 (= call!1700 (addCommutativeForDiffKeys!3 (ite c!2804 lt!7783 lt!7798) lt!7777 lt!7776 (ite c!2804 lt!7782 lt!7788) (ite c!2804 (minValue!1657 (v!1584 (underlying!107 thiss!938))) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))))))))

(declare-fun bm!1705 () Bool)

(assert (=> bm!1705 (= call!1705 (+!43 call!1709 (ite c!2804 (tuple2!907 lt!7777 lt!7776) (tuple2!907 lt!7771 (minValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun bm!1706 () Bool)

(assert (=> bm!1706 (= call!1711 (addCommutativeForDiffKeys!3 (ite c!2804 lt!7802 lt!7800) lt!7777 lt!7776 (ite c!2804 lt!7792 lt!7771) (ite c!2804 (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))))))))

(declare-fun b!22623 () Bool)

(assert (=> b!22623 false))

(declare-fun lt!7778 () Unit!490)

(declare-fun lt!7790 () Unit!490)

(assert (=> b!22623 (= lt!7778 lt!7790)))

(declare-fun lt!7780 () (_ BitVec 32))

(assert (=> b!22623 (not (arrayContainsKey!0 (_keys!3155 (v!1584 (underlying!107 thiss!938))) lt!7777 lt!7780))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!1237 (_ BitVec 32) (_ BitVec 64) List!562) Unit!490)

(assert (=> b!22623 (= lt!7790 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3155 (v!1584 (underlying!107 thiss!938))) lt!7780 lt!7777 (Cons!558 lt!7777 Nil!559)))))

(assert (=> b!22623 (= lt!7780 (bvadd (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!7797 () Unit!490)

(declare-fun lt!7785 () Unit!490)

(assert (=> b!22623 (= lt!7797 lt!7785)))

(assert (=> b!22623 (arrayNoDuplicates!0 (_keys!3155 (v!1584 (underlying!107 thiss!938))) (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) Nil!559)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!1237 (_ BitVec 32) (_ BitVec 32)) Unit!490)

(assert (=> b!22623 (= lt!7785 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3155 (v!1584 (underlying!107 thiss!938))) #b00000000000000000000000000000000 (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!7772 () Unit!490)

(declare-fun lt!7779 () Unit!490)

(assert (=> b!22623 (= lt!7772 lt!7779)))

(assert (=> b!22623 e!14666))

(declare-fun c!2807 () Bool)

(assert (=> b!22623 (= c!2807 (and (not (= lt!7777 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!7777 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!3 (array!1237 array!1235 (_ BitVec 32) (_ BitVec 32) V!1165 V!1165 (_ BitVec 64) (_ BitVec 32) Int) Unit!490)

(assert (=> b!22623 (= lt!7779 (lemmaListMapContainsThenArrayContainsFrom!3 (_keys!3155 (v!1584 (underlying!107 thiss!938))) (_values!1720 (v!1584 (underlying!107 thiss!938))) (mask!4712 (v!1584 (underlying!107 thiss!938))) (extraKeys!1632 (v!1584 (underlying!107 thiss!938))) (zeroValue!1657 (v!1584 (underlying!107 thiss!938))) (minValue!1657 (v!1584 (underlying!107 thiss!938))) lt!7777 lt!7789 (defaultEntry!1732 (v!1584 (underlying!107 thiss!938)))))))

(assert (=> b!22623 (= lt!7789 (bvadd (bvsub (size!682 (_keys!3155 (v!1584 (underlying!107 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!502 () Unit!490)

(assert (=> b!22623 (= e!14669 Unit!502)))

(declare-fun bm!1707 () Bool)

(assert (=> bm!1707 (= call!1707 (+!43 (ite c!2804 call!1703 call!1708) (ite c!2804 (tuple2!907 lt!7792 (zeroValue!1657 (v!1584 (underlying!107 thiss!938)))) (tuple2!907 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1657 (v!1584 (underlying!107 thiss!938)))))))))

(declare-fun bm!1708 () Bool)

(assert (=> bm!1708 (= call!1704 (+!43 (ite c!2804 call!1708 call!1712) (ite c!2804 (tuple2!907 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1657 (v!1584 (underlying!107 thiss!938)))) (tuple2!907 lt!7777 lt!7776))))))

(declare-fun b!22624 () Bool)

(assert (=> b!22624 (= e!14670 (tuple2!903 true (v!1584 (_2!454 lt!7489))))))

(declare-fun b!22625 () Bool)

(assert (=> b!22625 (= e!14667 (tuple2!903 false (_2!455 lt!7799)))))

(declare-fun bm!1709 () Bool)

(assert (=> bm!1709 (= call!1710 (+!43 (ite c!2804 call!1706 call!1703) (ite c!2804 (tuple2!907 lt!7782 (minValue!1657 (v!1584 (underlying!107 thiss!938)))) (tuple2!907 lt!7777 lt!7776))))))

(assert (= (and d!3963 c!2805) b!22617))

(assert (= (and d!3963 (not c!2805)) b!22613))

(assert (= (and b!22617 c!2803) b!22623))

(assert (= (and b!22617 (not c!2803)) b!22618))

(assert (= (and b!22623 c!2807) b!22620))

(assert (= (and b!22623 (not c!2807)) b!22614))

(assert (= (and b!22617 c!2808) b!22619))

(assert (= (and b!22617 (not c!2808)) b!22625))

(assert (= (and b!22619 c!2804) b!22616))

(assert (= (and b!22619 (not c!2804)) b!22621))

(assert (= (or b!22616 b!22621) bm!1706))

(assert (= (or b!22616 b!22621) bm!1700))

(assert (= (or b!22616 b!22621) bm!1697))

(assert (= (or b!22616 b!22621) bm!1699))

(assert (= (or b!22616 b!22621) bm!1704))

(assert (= (or b!22616 b!22621) bm!1698))

(assert (= (or b!22616 b!22621) bm!1701))

(assert (= (or b!22616 b!22621) bm!1707))

(assert (= (or b!22616 b!22621) bm!1703))

(assert (= (or b!22616 b!22621) bm!1709))

(assert (= (or b!22616 b!22621) bm!1705))

(assert (= (or b!22616 b!22621) bm!1708))

(assert (= (and b!22613 c!2806) b!22615))

(assert (= (and b!22613 (not c!2806)) b!22624))

(assert (= (or b!22616 b!22615) bm!1702))

(assert (= (and d!3963 (not res!14221)) b!22612))

(assert (= (and b!22612 res!14222) b!22622))

(declare-fun b_lambda!1563 () Bool)

(assert (=> (not b_lambda!1563) (not d!3963)))

(assert (=> d!3963 t!3229))

(declare-fun b_and!1463 () Bool)

(assert (= b_and!1461 (and (=> t!3229 result!1083) b_and!1463)))

(declare-fun m!16412 () Bool)

(assert (=> bm!1697 m!16412))

(declare-fun m!16414 () Bool)

(assert (=> bm!1708 m!16414))

(declare-fun m!16416 () Bool)

(assert (=> b!22622 m!16416))

(declare-fun m!16418 () Bool)

(assert (=> b!22622 m!16418))

(declare-fun m!16420 () Bool)

(assert (=> bm!1706 m!16420))

(assert (=> d!3963 m!16230))

(declare-fun m!16422 () Bool)

(assert (=> d!3963 m!16422))

(assert (=> d!3963 m!16266))

(declare-fun m!16424 () Bool)

(assert (=> d!3963 m!16424))

(declare-fun m!16426 () Bool)

(assert (=> d!3963 m!16426))

(declare-fun m!16428 () Bool)

(assert (=> d!3963 m!16428))

(assert (=> d!3963 m!16422))

(assert (=> d!3963 m!16266))

(declare-fun m!16430 () Bool)

(assert (=> b!22620 m!16430))

(declare-fun m!16432 () Bool)

(assert (=> bm!1700 m!16432))

(declare-fun m!16434 () Bool)

(assert (=> bm!1703 m!16434))

(declare-fun m!16436 () Bool)

(assert (=> bm!1704 m!16436))

(declare-fun m!16438 () Bool)

(assert (=> b!22612 m!16438))

(declare-fun m!16440 () Bool)

(assert (=> b!22623 m!16440))

(declare-fun m!16442 () Bool)

(assert (=> b!22623 m!16442))

(declare-fun m!16444 () Bool)

(assert (=> b!22623 m!16444))

(declare-fun m!16446 () Bool)

(assert (=> b!22623 m!16446))

(declare-fun m!16448 () Bool)

(assert (=> b!22623 m!16448))

(declare-fun m!16450 () Bool)

(assert (=> bm!1699 m!16450))

(declare-fun m!16452 () Bool)

(assert (=> bm!1698 m!16452))

(declare-fun m!16454 () Bool)

(assert (=> bm!1701 m!16454))

(declare-fun m!16456 () Bool)

(assert (=> bm!1709 m!16456))

(declare-fun m!16458 () Bool)

(assert (=> bm!1705 m!16458))

(declare-fun m!16460 () Bool)

(assert (=> bm!1702 m!16460))

(declare-fun m!16462 () Bool)

(assert (=> bm!1707 m!16462))

(declare-fun m!16464 () Bool)

(assert (=> b!22617 m!16464))

(declare-fun m!16466 () Bool)

(assert (=> b!22617 m!16466))

(assert (=> b!22343 d!3963))

(declare-fun mapNonEmpty!998 () Bool)

(declare-fun mapRes!998 () Bool)

(declare-fun tp!3473 () Bool)

(declare-fun e!14679 () Bool)

(assert (=> mapNonEmpty!998 (= mapRes!998 (and tp!3473 e!14679))))

(declare-fun mapKey!998 () (_ BitVec 32))

(declare-fun mapValue!998 () ValueCell!303)

(declare-fun mapRest!998 () (Array (_ BitVec 32) ValueCell!303))

(assert (=> mapNonEmpty!998 (= mapRest!992 (store mapRest!998 mapKey!998 mapValue!998))))

(declare-fun b!22632 () Bool)

(assert (=> b!22632 (= e!14679 tp_is_empty!1005)))

(declare-fun condMapEmpty!998 () Bool)

(declare-fun mapDefault!998 () ValueCell!303)

(assert (=> mapNonEmpty!992 (= condMapEmpty!998 (= mapRest!992 ((as const (Array (_ BitVec 32) ValueCell!303)) mapDefault!998)))))

(declare-fun e!14678 () Bool)

(assert (=> mapNonEmpty!992 (= tp!3463 (and e!14678 mapRes!998))))

(declare-fun mapIsEmpty!998 () Bool)

(assert (=> mapIsEmpty!998 mapRes!998))

(declare-fun b!22633 () Bool)

(assert (=> b!22633 (= e!14678 tp_is_empty!1005)))

(assert (= (and mapNonEmpty!992 condMapEmpty!998) mapIsEmpty!998))

(assert (= (and mapNonEmpty!992 (not condMapEmpty!998)) mapNonEmpty!998))

(assert (= (and mapNonEmpty!998 ((_ is ValueCellFull!303) mapValue!998)) b!22632))

(assert (= (and mapNonEmpty!992 ((_ is ValueCellFull!303) mapDefault!998)) b!22633))

(declare-fun m!16468 () Bool)

(assert (=> mapNonEmpty!998 m!16468))

(declare-fun b_lambda!1565 () Bool)

(assert (= b_lambda!1563 (or (and b!22344 b_free!741) b_lambda!1565)))

(declare-fun b_lambda!1567 () Bool)

(assert (= b_lambda!1559 (or (and b!22344 b_free!741) b_lambda!1567)))

(declare-fun b_lambda!1569 () Bool)

(assert (= b_lambda!1561 (or (and b!22344 b_free!741) b_lambda!1569)))

(check-sat (not bm!1630) (not d!3959) (not bm!1697) (not bm!1706) (not b!22540) (not bm!1660) (not d!3951) (not bm!1629) (not b_lambda!1569) (not bm!1705) tp_is_empty!1005 (not bm!1653) (not bm!1623) (not bm!1704) (not mapNonEmpty!998) (not bm!1628) (not b!22545) (not bm!1702) (not d!3949) (not bm!1703) (not b_lambda!1565) (not b!22574) (not bm!1700) (not b!22536) (not b!22521) (not bm!1698) (not b!22420) (not b!22578) (not b_lambda!1567) (not b_next!741) (not b!22416) (not bm!1633) (not bm!1636) (not bm!1647) (not bm!1709) (not bm!1668) (not bm!1701) (not bm!1634) (not bm!1663) (not bm!1626) (not bm!1657) (not b!22620) (not b!22429) (not b!22612) (not b!22512) (not d!3947) (not b!22537) (not b!22617) (not b!22550) (not bm!1666) (not d!3961) (not bm!1658) (not bm!1707) (not bm!1639) (not bm!1642) (not bm!1699) (not bm!1652) (not b!22575) (not b!22583) (not bm!1664) (not b!22559) (not bm!1708) (not b!22623) (not d!3953) (not bm!1632) (not bm!1644) b_and!1463 (not bm!1654) (not b!22622) (not bm!1650) (not d!3963) (not bm!1656) (not b!22415) (not bm!1640))
(check-sat b_and!1463 (not b_next!741))
