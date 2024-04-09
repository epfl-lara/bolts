; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18266 () Bool)

(assert start!18266)

(declare-fun b!181368 () Bool)

(declare-fun b_free!4479 () Bool)

(declare-fun b_next!4479 () Bool)

(assert (=> b!181368 (= b_free!4479 (not b_next!4479))))

(declare-fun tp!16184 () Bool)

(declare-fun b_and!11045 () Bool)

(assert (=> b!181368 (= tp!16184 b_and!11045)))

(declare-fun b!181361 () Bool)

(declare-fun e!119463 () Bool)

(declare-datatypes ((V!5315 0))(
  ( (V!5316 (val!2170 Int)) )
))
(declare-datatypes ((ValueCell!1782 0))(
  ( (ValueCellFull!1782 (v!4062 V!5315)) (EmptyCell!1782) )
))
(declare-datatypes ((array!7680 0))(
  ( (array!7681 (arr!3634 (Array (_ BitVec 32) (_ BitVec 64))) (size!3944 (_ BitVec 32))) )
))
(declare-datatypes ((array!7682 0))(
  ( (array!7683 (arr!3635 (Array (_ BitVec 32) ValueCell!1782)) (size!3945 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2472 0))(
  ( (LongMapFixedSize!2473 (defaultEntry!3717 Int) (mask!8738 (_ BitVec 32)) (extraKeys!3454 (_ BitVec 32)) (zeroValue!3558 V!5315) (minValue!3558 V!5315) (_size!1285 (_ BitVec 32)) (_keys!5619 array!7680) (_values!3700 array!7682) (_vacant!1285 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2472)

(assert (=> b!181361 (= e!119463 (and (= (size!3945 (_values!3700 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8738 thiss!1248))) (= (size!3944 (_keys!5619 thiss!1248)) (size!3945 (_values!3700 thiss!1248))) (bvslt (mask!8738 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!7287 () Bool)

(declare-fun mapRes!7287 () Bool)

(declare-fun tp!16185 () Bool)

(declare-fun e!119466 () Bool)

(assert (=> mapNonEmpty!7287 (= mapRes!7287 (and tp!16185 e!119466))))

(declare-fun mapValue!7287 () ValueCell!1782)

(declare-fun mapKey!7287 () (_ BitVec 32))

(declare-fun mapRest!7287 () (Array (_ BitVec 32) ValueCell!1782))

(assert (=> mapNonEmpty!7287 (= (arr!3635 (_values!3700 thiss!1248)) (store mapRest!7287 mapKey!7287 mapValue!7287))))

(declare-fun b!181362 () Bool)

(declare-fun e!119461 () Bool)

(declare-fun tp_is_empty!4251 () Bool)

(assert (=> b!181362 (= e!119461 tp_is_empty!4251)))

(declare-fun b!181363 () Bool)

(declare-fun res!85879 () Bool)

(assert (=> b!181363 (=> (not res!85879) (not e!119463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!181363 (= res!85879 (validMask!0 (mask!8738 thiss!1248)))))

(declare-fun res!85883 () Bool)

(declare-fun e!119460 () Bool)

(assert (=> start!18266 (=> (not res!85883) (not e!119460))))

(declare-fun valid!1018 (LongMapFixedSize!2472) Bool)

(assert (=> start!18266 (= res!85883 (valid!1018 thiss!1248))))

(assert (=> start!18266 e!119460))

(declare-fun e!119462 () Bool)

(assert (=> start!18266 e!119462))

(assert (=> start!18266 true))

(declare-fun mapIsEmpty!7287 () Bool)

(assert (=> mapIsEmpty!7287 mapRes!7287))

(declare-fun b!181364 () Bool)

(declare-fun res!85882 () Bool)

(assert (=> b!181364 (=> (not res!85882) (not e!119460))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!181364 (= res!85882 (not (= key!828 (bvneg key!828))))))

(declare-fun b!181365 () Bool)

(declare-fun e!119464 () Bool)

(assert (=> b!181365 (= e!119464 (and e!119461 mapRes!7287))))

(declare-fun condMapEmpty!7287 () Bool)

(declare-fun mapDefault!7287 () ValueCell!1782)

(assert (=> b!181365 (= condMapEmpty!7287 (= (arr!3635 (_values!3700 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1782)) mapDefault!7287)))))

(declare-fun b!181366 () Bool)

(assert (=> b!181366 (= e!119466 tp_is_empty!4251)))

(declare-fun b!181367 () Bool)

(declare-fun res!85881 () Bool)

(assert (=> b!181367 (=> (not res!85881) (not e!119463))))

(declare-datatypes ((tuple2!3380 0))(
  ( (tuple2!3381 (_1!1700 (_ BitVec 64)) (_2!1700 V!5315)) )
))
(declare-datatypes ((List!2326 0))(
  ( (Nil!2323) (Cons!2322 (h!2949 tuple2!3380) (t!7188 List!2326)) )
))
(declare-datatypes ((ListLongMap!2311 0))(
  ( (ListLongMap!2312 (toList!1171 List!2326)) )
))
(declare-fun contains!1245 (ListLongMap!2311 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!814 (array!7680 array!7682 (_ BitVec 32) (_ BitVec 32) V!5315 V!5315 (_ BitVec 32) Int) ListLongMap!2311)

(assert (=> b!181367 (= res!85881 (contains!1245 (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)) key!828))))

(declare-fun array_inv!2331 (array!7680) Bool)

(declare-fun array_inv!2332 (array!7682) Bool)

(assert (=> b!181368 (= e!119462 (and tp!16184 tp_is_empty!4251 (array_inv!2331 (_keys!5619 thiss!1248)) (array_inv!2332 (_values!3700 thiss!1248)) e!119464))))

(declare-fun b!181369 () Bool)

(assert (=> b!181369 (= e!119460 e!119463)))

(declare-fun res!85880 () Bool)

(assert (=> b!181369 (=> (not res!85880) (not e!119463))))

(declare-datatypes ((SeekEntryResult!610 0))(
  ( (MissingZero!610 (index!4610 (_ BitVec 32))) (Found!610 (index!4611 (_ BitVec 32))) (Intermediate!610 (undefined!1422 Bool) (index!4612 (_ BitVec 32)) (x!19814 (_ BitVec 32))) (Undefined!610) (MissingVacant!610 (index!4613 (_ BitVec 32))) )
))
(declare-fun lt!89707 () SeekEntryResult!610)

(get-info :version)

(assert (=> b!181369 (= res!85880 (and (not ((_ is Undefined!610) lt!89707)) (not ((_ is MissingVacant!610) lt!89707)) (not ((_ is MissingZero!610) lt!89707)) ((_ is Found!610) lt!89707)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7680 (_ BitVec 32)) SeekEntryResult!610)

(assert (=> b!181369 (= lt!89707 (seekEntryOrOpen!0 key!828 (_keys!5619 thiss!1248) (mask!8738 thiss!1248)))))

(assert (= (and start!18266 res!85883) b!181364))

(assert (= (and b!181364 res!85882) b!181369))

(assert (= (and b!181369 res!85880) b!181367))

(assert (= (and b!181367 res!85881) b!181363))

(assert (= (and b!181363 res!85879) b!181361))

(assert (= (and b!181365 condMapEmpty!7287) mapIsEmpty!7287))

(assert (= (and b!181365 (not condMapEmpty!7287)) mapNonEmpty!7287))

(assert (= (and mapNonEmpty!7287 ((_ is ValueCellFull!1782) mapValue!7287)) b!181366))

(assert (= (and b!181365 ((_ is ValueCellFull!1782) mapDefault!7287)) b!181362))

(assert (= b!181368 b!181365))

(assert (= start!18266 b!181368))

(declare-fun m!209305 () Bool)

(assert (=> mapNonEmpty!7287 m!209305))

(declare-fun m!209307 () Bool)

(assert (=> b!181367 m!209307))

(assert (=> b!181367 m!209307))

(declare-fun m!209309 () Bool)

(assert (=> b!181367 m!209309))

(declare-fun m!209311 () Bool)

(assert (=> b!181368 m!209311))

(declare-fun m!209313 () Bool)

(assert (=> b!181368 m!209313))

(declare-fun m!209315 () Bool)

(assert (=> b!181369 m!209315))

(declare-fun m!209317 () Bool)

(assert (=> start!18266 m!209317))

(declare-fun m!209319 () Bool)

(assert (=> b!181363 m!209319))

(check-sat (not mapNonEmpty!7287) tp_is_empty!4251 (not b!181363) (not b_next!4479) (not b!181369) b_and!11045 (not b!181367) (not start!18266) (not b!181368))
(check-sat b_and!11045 (not b_next!4479))
(get-model)

(declare-fun d!54345 () Bool)

(assert (=> d!54345 (= (array_inv!2331 (_keys!5619 thiss!1248)) (bvsge (size!3944 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181368 d!54345))

(declare-fun d!54347 () Bool)

(assert (=> d!54347 (= (array_inv!2332 (_values!3700 thiss!1248)) (bvsge (size!3945 (_values!3700 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181368 d!54347))

(declare-fun d!54349 () Bool)

(assert (=> d!54349 (= (validMask!0 (mask!8738 thiss!1248)) (and (or (= (mask!8738 thiss!1248) #b00000000000000000000000000000111) (= (mask!8738 thiss!1248) #b00000000000000000000000000001111) (= (mask!8738 thiss!1248) #b00000000000000000000000000011111) (= (mask!8738 thiss!1248) #b00000000000000000000000000111111) (= (mask!8738 thiss!1248) #b00000000000000000000000001111111) (= (mask!8738 thiss!1248) #b00000000000000000000000011111111) (= (mask!8738 thiss!1248) #b00000000000000000000000111111111) (= (mask!8738 thiss!1248) #b00000000000000000000001111111111) (= (mask!8738 thiss!1248) #b00000000000000000000011111111111) (= (mask!8738 thiss!1248) #b00000000000000000000111111111111) (= (mask!8738 thiss!1248) #b00000000000000000001111111111111) (= (mask!8738 thiss!1248) #b00000000000000000011111111111111) (= (mask!8738 thiss!1248) #b00000000000000000111111111111111) (= (mask!8738 thiss!1248) #b00000000000000001111111111111111) (= (mask!8738 thiss!1248) #b00000000000000011111111111111111) (= (mask!8738 thiss!1248) #b00000000000000111111111111111111) (= (mask!8738 thiss!1248) #b00000000000001111111111111111111) (= (mask!8738 thiss!1248) #b00000000000011111111111111111111) (= (mask!8738 thiss!1248) #b00000000000111111111111111111111) (= (mask!8738 thiss!1248) #b00000000001111111111111111111111) (= (mask!8738 thiss!1248) #b00000000011111111111111111111111) (= (mask!8738 thiss!1248) #b00000000111111111111111111111111) (= (mask!8738 thiss!1248) #b00000001111111111111111111111111) (= (mask!8738 thiss!1248) #b00000011111111111111111111111111) (= (mask!8738 thiss!1248) #b00000111111111111111111111111111) (= (mask!8738 thiss!1248) #b00001111111111111111111111111111) (= (mask!8738 thiss!1248) #b00011111111111111111111111111111) (= (mask!8738 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8738 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!181363 d!54349))

(declare-fun d!54351 () Bool)

(declare-fun e!119492 () Bool)

(assert (=> d!54351 e!119492))

(declare-fun res!85901 () Bool)

(assert (=> d!54351 (=> res!85901 e!119492)))

(declare-fun lt!89721 () Bool)

(assert (=> d!54351 (= res!85901 (not lt!89721))))

(declare-fun lt!89722 () Bool)

(assert (=> d!54351 (= lt!89721 lt!89722)))

(declare-datatypes ((Unit!5509 0))(
  ( (Unit!5510) )
))
(declare-fun lt!89719 () Unit!5509)

(declare-fun e!119493 () Unit!5509)

(assert (=> d!54351 (= lt!89719 e!119493)))

(declare-fun c!32496 () Bool)

(assert (=> d!54351 (= c!32496 lt!89722)))

(declare-fun containsKey!212 (List!2326 (_ BitVec 64)) Bool)

(assert (=> d!54351 (= lt!89722 (containsKey!212 (toList!1171 (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248))) key!828))))

(assert (=> d!54351 (= (contains!1245 (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)) key!828) lt!89721)))

(declare-fun b!181403 () Bool)

(declare-fun lt!89720 () Unit!5509)

(assert (=> b!181403 (= e!119493 lt!89720)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!161 (List!2326 (_ BitVec 64)) Unit!5509)

(assert (=> b!181403 (= lt!89720 (lemmaContainsKeyImpliesGetValueByKeyDefined!161 (toList!1171 (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248))) key!828))))

(declare-datatypes ((Option!214 0))(
  ( (Some!213 (v!4064 V!5315)) (None!212) )
))
(declare-fun isDefined!162 (Option!214) Bool)

(declare-fun getValueByKey!208 (List!2326 (_ BitVec 64)) Option!214)

(assert (=> b!181403 (isDefined!162 (getValueByKey!208 (toList!1171 (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248))) key!828))))

(declare-fun b!181404 () Bool)

(declare-fun Unit!5511 () Unit!5509)

(assert (=> b!181404 (= e!119493 Unit!5511)))

(declare-fun b!181405 () Bool)

(assert (=> b!181405 (= e!119492 (isDefined!162 (getValueByKey!208 (toList!1171 (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248))) key!828)))))

(assert (= (and d!54351 c!32496) b!181403))

(assert (= (and d!54351 (not c!32496)) b!181404))

(assert (= (and d!54351 (not res!85901)) b!181405))

(declare-fun m!209337 () Bool)

(assert (=> d!54351 m!209337))

(declare-fun m!209339 () Bool)

(assert (=> b!181403 m!209339))

(declare-fun m!209341 () Bool)

(assert (=> b!181403 m!209341))

(assert (=> b!181403 m!209341))

(declare-fun m!209343 () Bool)

(assert (=> b!181403 m!209343))

(assert (=> b!181405 m!209341))

(assert (=> b!181405 m!209341))

(assert (=> b!181405 m!209343))

(assert (=> b!181367 d!54351))

(declare-fun bm!18332 () Bool)

(declare-fun call!18336 () ListLongMap!2311)

(declare-fun getCurrentListMapNoExtraKeys!182 (array!7680 array!7682 (_ BitVec 32) (_ BitVec 32) V!5315 V!5315 (_ BitVec 32) Int) ListLongMap!2311)

(assert (=> bm!18332 (= call!18336 (getCurrentListMapNoExtraKeys!182 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)))))

(declare-fun b!181448 () Bool)

(declare-fun e!119529 () Bool)

(declare-fun e!119526 () Bool)

(assert (=> b!181448 (= e!119529 e!119526)))

(declare-fun c!32514 () Bool)

(assert (=> b!181448 (= c!32514 (not (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18333 () Bool)

(declare-fun call!18341 () Bool)

(declare-fun lt!89776 () ListLongMap!2311)

(assert (=> bm!18333 (= call!18341 (contains!1245 lt!89776 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181449 () Bool)

(declare-fun e!119530 () Bool)

(declare-fun apply!152 (ListLongMap!2311 (_ BitVec 64)) V!5315)

(assert (=> b!181449 (= e!119530 (= (apply!152 lt!89776 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3558 thiss!1248)))))

(declare-fun b!181450 () Bool)

(declare-fun e!119525 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!181450 (= e!119525 (validKeyInArray!0 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!181451 () Bool)

(declare-fun e!119531 () ListLongMap!2311)

(declare-fun call!18335 () ListLongMap!2311)

(assert (=> b!181451 (= e!119531 call!18335)))

(declare-fun b!181452 () Bool)

(declare-fun e!119532 () Unit!5509)

(declare-fun Unit!5512 () Unit!5509)

(assert (=> b!181452 (= e!119532 Unit!5512)))

(declare-fun call!18337 () ListLongMap!2311)

(declare-fun c!32513 () Bool)

(declare-fun call!18338 () ListLongMap!2311)

(declare-fun call!18340 () ListLongMap!2311)

(declare-fun bm!18334 () Bool)

(declare-fun c!32511 () Bool)

(declare-fun +!267 (ListLongMap!2311 tuple2!3380) ListLongMap!2311)

(assert (=> bm!18334 (= call!18340 (+!267 (ite c!32511 call!18336 (ite c!32513 call!18337 call!18338)) (ite (or c!32511 c!32513) (tuple2!3381 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3558 thiss!1248)) (tuple2!3381 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3558 thiss!1248)))))))

(declare-fun b!181453 () Bool)

(declare-fun res!85927 () Bool)

(assert (=> b!181453 (=> (not res!85927) (not e!119529))))

(declare-fun e!119523 () Bool)

(assert (=> b!181453 (= res!85927 e!119523)))

(declare-fun c!32512 () Bool)

(assert (=> b!181453 (= c!32512 (not (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!181454 () Bool)

(declare-fun res!85923 () Bool)

(assert (=> b!181454 (=> (not res!85923) (not e!119529))))

(declare-fun e!119521 () Bool)

(assert (=> b!181454 (= res!85923 e!119521)))

(declare-fun res!85922 () Bool)

(assert (=> b!181454 (=> res!85922 e!119521)))

(assert (=> b!181454 (= res!85922 (not e!119525))))

(declare-fun res!85925 () Bool)

(assert (=> b!181454 (=> (not res!85925) (not e!119525))))

(assert (=> b!181454 (= res!85925 (bvslt #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))))))

(declare-fun b!181455 () Bool)

(declare-fun e!119528 () ListLongMap!2311)

(assert (=> b!181455 (= e!119528 e!119531)))

(assert (=> b!181455 (= c!32513 (and (not (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18335 () Bool)

(declare-fun call!18339 () Bool)

(assert (=> bm!18335 (= call!18339 (contains!1245 lt!89776 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!181456 () Bool)

(declare-fun e!119520 () Bool)

(declare-fun get!2080 (ValueCell!1782 V!5315) V!5315)

(declare-fun dynLambda!490 (Int (_ BitVec 64)) V!5315)

(assert (=> b!181456 (= e!119520 (= (apply!152 lt!89776 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000)) (get!2080 (select (arr!3635 (_values!3700 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!490 (defaultEntry!3717 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!181456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3945 (_values!3700 thiss!1248))))))

(assert (=> b!181456 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))))))

(declare-fun b!181457 () Bool)

(assert (=> b!181457 (= e!119526 e!119530)))

(declare-fun res!85926 () Bool)

(assert (=> b!181457 (= res!85926 call!18339)))

(assert (=> b!181457 (=> (not res!85926) (not e!119530))))

(declare-fun b!181458 () Bool)

(declare-fun e!119527 () ListLongMap!2311)

(assert (=> b!181458 (= e!119527 call!18338)))

(declare-fun d!54353 () Bool)

(assert (=> d!54353 e!119529))

(declare-fun res!85928 () Bool)

(assert (=> d!54353 (=> (not res!85928) (not e!119529))))

(assert (=> d!54353 (= res!85928 (or (bvsge #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))))))))

(declare-fun lt!89785 () ListLongMap!2311)

(assert (=> d!54353 (= lt!89776 lt!89785)))

(declare-fun lt!89768 () Unit!5509)

(assert (=> d!54353 (= lt!89768 e!119532)))

(declare-fun c!32509 () Bool)

(declare-fun e!119522 () Bool)

(assert (=> d!54353 (= c!32509 e!119522)))

(declare-fun res!85924 () Bool)

(assert (=> d!54353 (=> (not res!85924) (not e!119522))))

(assert (=> d!54353 (= res!85924 (bvslt #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))))))

(assert (=> d!54353 (= lt!89785 e!119528)))

(assert (=> d!54353 (= c!32511 (and (not (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54353 (validMask!0 (mask!8738 thiss!1248))))

(assert (=> d!54353 (= (getCurrentListMap!814 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)) lt!89776)))

(declare-fun bm!18336 () Bool)

(assert (=> bm!18336 (= call!18337 call!18336)))

(declare-fun b!181459 () Bool)

(assert (=> b!181459 (= e!119528 (+!267 call!18340 (tuple2!3381 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3558 thiss!1248))))))

(declare-fun bm!18337 () Bool)

(assert (=> bm!18337 (= call!18335 call!18340)))

(declare-fun b!181460 () Bool)

(declare-fun e!119524 () Bool)

(assert (=> b!181460 (= e!119523 e!119524)))

(declare-fun res!85920 () Bool)

(assert (=> b!181460 (= res!85920 call!18341)))

(assert (=> b!181460 (=> (not res!85920) (not e!119524))))

(declare-fun b!181461 () Bool)

(assert (=> b!181461 (= e!119521 e!119520)))

(declare-fun res!85921 () Bool)

(assert (=> b!181461 (=> (not res!85921) (not e!119520))))

(assert (=> b!181461 (= res!85921 (contains!1245 lt!89776 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!181461 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))))))

(declare-fun b!181462 () Bool)

(assert (=> b!181462 (= e!119523 (not call!18341))))

(declare-fun b!181463 () Bool)

(declare-fun lt!89779 () Unit!5509)

(assert (=> b!181463 (= e!119532 lt!89779)))

(declare-fun lt!89781 () ListLongMap!2311)

(assert (=> b!181463 (= lt!89781 (getCurrentListMapNoExtraKeys!182 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)))))

(declare-fun lt!89770 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89770 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89774 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89774 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89775 () Unit!5509)

(declare-fun addStillContains!128 (ListLongMap!2311 (_ BitVec 64) V!5315 (_ BitVec 64)) Unit!5509)

(assert (=> b!181463 (= lt!89775 (addStillContains!128 lt!89781 lt!89770 (zeroValue!3558 thiss!1248) lt!89774))))

(assert (=> b!181463 (contains!1245 (+!267 lt!89781 (tuple2!3381 lt!89770 (zeroValue!3558 thiss!1248))) lt!89774)))

(declare-fun lt!89783 () Unit!5509)

(assert (=> b!181463 (= lt!89783 lt!89775)))

(declare-fun lt!89771 () ListLongMap!2311)

(assert (=> b!181463 (= lt!89771 (getCurrentListMapNoExtraKeys!182 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)))))

(declare-fun lt!89773 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89773 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89777 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89777 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89778 () Unit!5509)

(declare-fun addApplyDifferent!128 (ListLongMap!2311 (_ BitVec 64) V!5315 (_ BitVec 64)) Unit!5509)

(assert (=> b!181463 (= lt!89778 (addApplyDifferent!128 lt!89771 lt!89773 (minValue!3558 thiss!1248) lt!89777))))

(assert (=> b!181463 (= (apply!152 (+!267 lt!89771 (tuple2!3381 lt!89773 (minValue!3558 thiss!1248))) lt!89777) (apply!152 lt!89771 lt!89777))))

(declare-fun lt!89767 () Unit!5509)

(assert (=> b!181463 (= lt!89767 lt!89778)))

(declare-fun lt!89786 () ListLongMap!2311)

(assert (=> b!181463 (= lt!89786 (getCurrentListMapNoExtraKeys!182 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)))))

(declare-fun lt!89787 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89787 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89769 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89769 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!89780 () Unit!5509)

(assert (=> b!181463 (= lt!89780 (addApplyDifferent!128 lt!89786 lt!89787 (zeroValue!3558 thiss!1248) lt!89769))))

(assert (=> b!181463 (= (apply!152 (+!267 lt!89786 (tuple2!3381 lt!89787 (zeroValue!3558 thiss!1248))) lt!89769) (apply!152 lt!89786 lt!89769))))

(declare-fun lt!89784 () Unit!5509)

(assert (=> b!181463 (= lt!89784 lt!89780)))

(declare-fun lt!89788 () ListLongMap!2311)

(assert (=> b!181463 (= lt!89788 (getCurrentListMapNoExtraKeys!182 (_keys!5619 thiss!1248) (_values!3700 thiss!1248) (mask!8738 thiss!1248) (extraKeys!3454 thiss!1248) (zeroValue!3558 thiss!1248) (minValue!3558 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3717 thiss!1248)))))

(declare-fun lt!89772 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89772 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!89782 () (_ BitVec 64))

(assert (=> b!181463 (= lt!89782 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!181463 (= lt!89779 (addApplyDifferent!128 lt!89788 lt!89772 (minValue!3558 thiss!1248) lt!89782))))

(assert (=> b!181463 (= (apply!152 (+!267 lt!89788 (tuple2!3381 lt!89772 (minValue!3558 thiss!1248))) lt!89782) (apply!152 lt!89788 lt!89782))))

(declare-fun b!181464 () Bool)

(assert (=> b!181464 (= e!119524 (= (apply!152 lt!89776 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3558 thiss!1248)))))

(declare-fun b!181465 () Bool)

(declare-fun c!32510 () Bool)

(assert (=> b!181465 (= c!32510 (and (not (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3454 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!181465 (= e!119531 e!119527)))

(declare-fun b!181466 () Bool)

(assert (=> b!181466 (= e!119526 (not call!18339))))

(declare-fun b!181467 () Bool)

(assert (=> b!181467 (= e!119522 (validKeyInArray!0 (select (arr!3634 (_keys!5619 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18338 () Bool)

(assert (=> bm!18338 (= call!18338 call!18337)))

(declare-fun b!181468 () Bool)

(assert (=> b!181468 (= e!119527 call!18335)))

(assert (= (and d!54353 c!32511) b!181459))

(assert (= (and d!54353 (not c!32511)) b!181455))

(assert (= (and b!181455 c!32513) b!181451))

(assert (= (and b!181455 (not c!32513)) b!181465))

(assert (= (and b!181465 c!32510) b!181468))

(assert (= (and b!181465 (not c!32510)) b!181458))

(assert (= (or b!181468 b!181458) bm!18338))

(assert (= (or b!181451 bm!18338) bm!18336))

(assert (= (or b!181451 b!181468) bm!18337))

(assert (= (or b!181459 bm!18336) bm!18332))

(assert (= (or b!181459 bm!18337) bm!18334))

(assert (= (and d!54353 res!85924) b!181467))

(assert (= (and d!54353 c!32509) b!181463))

(assert (= (and d!54353 (not c!32509)) b!181452))

(assert (= (and d!54353 res!85928) b!181454))

(assert (= (and b!181454 res!85925) b!181450))

(assert (= (and b!181454 (not res!85922)) b!181461))

(assert (= (and b!181461 res!85921) b!181456))

(assert (= (and b!181454 res!85923) b!181453))

(assert (= (and b!181453 c!32512) b!181460))

(assert (= (and b!181453 (not c!32512)) b!181462))

(assert (= (and b!181460 res!85920) b!181464))

(assert (= (or b!181460 b!181462) bm!18333))

(assert (= (and b!181453 res!85927) b!181448))

(assert (= (and b!181448 c!32514) b!181457))

(assert (= (and b!181448 (not c!32514)) b!181466))

(assert (= (and b!181457 res!85926) b!181449))

(assert (= (or b!181457 b!181466) bm!18335))

(declare-fun b_lambda!7177 () Bool)

(assert (=> (not b_lambda!7177) (not b!181456)))

(declare-fun t!7191 () Bool)

(declare-fun tb!2823 () Bool)

(assert (=> (and b!181368 (= (defaultEntry!3717 thiss!1248) (defaultEntry!3717 thiss!1248)) t!7191) tb!2823))

(declare-fun result!4731 () Bool)

(assert (=> tb!2823 (= result!4731 tp_is_empty!4251)))

(assert (=> b!181456 t!7191))

(declare-fun b_and!11049 () Bool)

(assert (= b_and!11045 (and (=> t!7191 result!4731) b_and!11049)))

(declare-fun m!209345 () Bool)

(assert (=> bm!18334 m!209345))

(declare-fun m!209347 () Bool)

(assert (=> b!181449 m!209347))

(declare-fun m!209349 () Bool)

(assert (=> bm!18333 m!209349))

(declare-fun m!209351 () Bool)

(assert (=> b!181450 m!209351))

(assert (=> b!181450 m!209351))

(declare-fun m!209353 () Bool)

(assert (=> b!181450 m!209353))

(declare-fun m!209355 () Bool)

(assert (=> b!181464 m!209355))

(declare-fun m!209357 () Bool)

(assert (=> bm!18332 m!209357))

(declare-fun m!209359 () Bool)

(assert (=> b!181456 m!209359))

(assert (=> b!181456 m!209351))

(declare-fun m!209361 () Bool)

(assert (=> b!181456 m!209361))

(declare-fun m!209363 () Bool)

(assert (=> b!181456 m!209363))

(assert (=> b!181456 m!209363))

(assert (=> b!181456 m!209359))

(declare-fun m!209365 () Bool)

(assert (=> b!181456 m!209365))

(assert (=> b!181456 m!209351))

(declare-fun m!209367 () Bool)

(assert (=> b!181459 m!209367))

(assert (=> b!181467 m!209351))

(assert (=> b!181467 m!209351))

(assert (=> b!181467 m!209353))

(assert (=> d!54353 m!209319))

(declare-fun m!209369 () Bool)

(assert (=> bm!18335 m!209369))

(assert (=> b!181461 m!209351))

(assert (=> b!181461 m!209351))

(declare-fun m!209371 () Bool)

(assert (=> b!181461 m!209371))

(declare-fun m!209373 () Bool)

(assert (=> b!181463 m!209373))

(declare-fun m!209375 () Bool)

(assert (=> b!181463 m!209375))

(assert (=> b!181463 m!209357))

(declare-fun m!209377 () Bool)

(assert (=> b!181463 m!209377))

(declare-fun m!209379 () Bool)

(assert (=> b!181463 m!209379))

(declare-fun m!209381 () Bool)

(assert (=> b!181463 m!209381))

(declare-fun m!209383 () Bool)

(assert (=> b!181463 m!209383))

(declare-fun m!209385 () Bool)

(assert (=> b!181463 m!209385))

(assert (=> b!181463 m!209379))

(declare-fun m!209387 () Bool)

(assert (=> b!181463 m!209387))

(assert (=> b!181463 m!209383))

(declare-fun m!209389 () Bool)

(assert (=> b!181463 m!209389))

(declare-fun m!209391 () Bool)

(assert (=> b!181463 m!209391))

(declare-fun m!209393 () Bool)

(assert (=> b!181463 m!209393))

(declare-fun m!209395 () Bool)

(assert (=> b!181463 m!209395))

(assert (=> b!181463 m!209351))

(declare-fun m!209397 () Bool)

(assert (=> b!181463 m!209397))

(declare-fun m!209399 () Bool)

(assert (=> b!181463 m!209399))

(assert (=> b!181463 m!209391))

(assert (=> b!181463 m!209397))

(declare-fun m!209401 () Bool)

(assert (=> b!181463 m!209401))

(assert (=> b!181367 d!54353))

(declare-fun d!54355 () Bool)

(declare-fun res!85935 () Bool)

(declare-fun e!119535 () Bool)

(assert (=> d!54355 (=> (not res!85935) (not e!119535))))

(declare-fun simpleValid!167 (LongMapFixedSize!2472) Bool)

(assert (=> d!54355 (= res!85935 (simpleValid!167 thiss!1248))))

(assert (=> d!54355 (= (valid!1018 thiss!1248) e!119535)))

(declare-fun b!181477 () Bool)

(declare-fun res!85936 () Bool)

(assert (=> b!181477 (=> (not res!85936) (not e!119535))))

(declare-fun arrayCountValidKeys!0 (array!7680 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!181477 (= res!85936 (= (arrayCountValidKeys!0 (_keys!5619 thiss!1248) #b00000000000000000000000000000000 (size!3944 (_keys!5619 thiss!1248))) (_size!1285 thiss!1248)))))

(declare-fun b!181478 () Bool)

(declare-fun res!85937 () Bool)

(assert (=> b!181478 (=> (not res!85937) (not e!119535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7680 (_ BitVec 32)) Bool)

(assert (=> b!181478 (= res!85937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5619 thiss!1248) (mask!8738 thiss!1248)))))

(declare-fun b!181479 () Bool)

(declare-datatypes ((List!2328 0))(
  ( (Nil!2325) (Cons!2324 (h!2951 (_ BitVec 64)) (t!7192 List!2328)) )
))
(declare-fun arrayNoDuplicates!0 (array!7680 (_ BitVec 32) List!2328) Bool)

(assert (=> b!181479 (= e!119535 (arrayNoDuplicates!0 (_keys!5619 thiss!1248) #b00000000000000000000000000000000 Nil!2325))))

(assert (= (and d!54355 res!85935) b!181477))

(assert (= (and b!181477 res!85936) b!181478))

(assert (= (and b!181478 res!85937) b!181479))

(declare-fun m!209403 () Bool)

(assert (=> d!54355 m!209403))

(declare-fun m!209405 () Bool)

(assert (=> b!181477 m!209405))

(declare-fun m!209407 () Bool)

(assert (=> b!181478 m!209407))

(declare-fun m!209409 () Bool)

(assert (=> b!181479 m!209409))

(assert (=> start!18266 d!54355))

(declare-fun b!181492 () Bool)

(declare-fun e!119543 () SeekEntryResult!610)

(declare-fun e!119542 () SeekEntryResult!610)

(assert (=> b!181492 (= e!119543 e!119542)))

(declare-fun lt!89795 () (_ BitVec 64))

(declare-fun lt!89797 () SeekEntryResult!610)

(assert (=> b!181492 (= lt!89795 (select (arr!3634 (_keys!5619 thiss!1248)) (index!4612 lt!89797)))))

(declare-fun c!32521 () Bool)

(assert (=> b!181492 (= c!32521 (= lt!89795 key!828))))

(declare-fun b!181494 () Bool)

(declare-fun c!32523 () Bool)

(assert (=> b!181494 (= c!32523 (= lt!89795 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!119544 () SeekEntryResult!610)

(assert (=> b!181494 (= e!119542 e!119544)))

(declare-fun b!181495 () Bool)

(assert (=> b!181495 (= e!119544 (MissingZero!610 (index!4612 lt!89797)))))

(declare-fun b!181493 () Bool)

(assert (=> b!181493 (= e!119542 (Found!610 (index!4612 lt!89797)))))

(declare-fun d!54357 () Bool)

(declare-fun lt!89796 () SeekEntryResult!610)

(assert (=> d!54357 (and (or ((_ is Undefined!610) lt!89796) (not ((_ is Found!610) lt!89796)) (and (bvsge (index!4611 lt!89796) #b00000000000000000000000000000000) (bvslt (index!4611 lt!89796) (size!3944 (_keys!5619 thiss!1248))))) (or ((_ is Undefined!610) lt!89796) ((_ is Found!610) lt!89796) (not ((_ is MissingZero!610) lt!89796)) (and (bvsge (index!4610 lt!89796) #b00000000000000000000000000000000) (bvslt (index!4610 lt!89796) (size!3944 (_keys!5619 thiss!1248))))) (or ((_ is Undefined!610) lt!89796) ((_ is Found!610) lt!89796) ((_ is MissingZero!610) lt!89796) (not ((_ is MissingVacant!610) lt!89796)) (and (bvsge (index!4613 lt!89796) #b00000000000000000000000000000000) (bvslt (index!4613 lt!89796) (size!3944 (_keys!5619 thiss!1248))))) (or ((_ is Undefined!610) lt!89796) (ite ((_ is Found!610) lt!89796) (= (select (arr!3634 (_keys!5619 thiss!1248)) (index!4611 lt!89796)) key!828) (ite ((_ is MissingZero!610) lt!89796) (= (select (arr!3634 (_keys!5619 thiss!1248)) (index!4610 lt!89796)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!610) lt!89796) (= (select (arr!3634 (_keys!5619 thiss!1248)) (index!4613 lt!89796)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54357 (= lt!89796 e!119543)))

(declare-fun c!32522 () Bool)

(assert (=> d!54357 (= c!32522 (and ((_ is Intermediate!610) lt!89797) (undefined!1422 lt!89797)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7680 (_ BitVec 32)) SeekEntryResult!610)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54357 (= lt!89797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8738 thiss!1248)) key!828 (_keys!5619 thiss!1248) (mask!8738 thiss!1248)))))

(assert (=> d!54357 (validMask!0 (mask!8738 thiss!1248))))

(assert (=> d!54357 (= (seekEntryOrOpen!0 key!828 (_keys!5619 thiss!1248) (mask!8738 thiss!1248)) lt!89796)))

(declare-fun b!181496 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7680 (_ BitVec 32)) SeekEntryResult!610)

(assert (=> b!181496 (= e!119544 (seekKeyOrZeroReturnVacant!0 (x!19814 lt!89797) (index!4612 lt!89797) (index!4612 lt!89797) key!828 (_keys!5619 thiss!1248) (mask!8738 thiss!1248)))))

(declare-fun b!181497 () Bool)

(assert (=> b!181497 (= e!119543 Undefined!610)))

(assert (= (and d!54357 c!32522) b!181497))

(assert (= (and d!54357 (not c!32522)) b!181492))

(assert (= (and b!181492 c!32521) b!181493))

(assert (= (and b!181492 (not c!32521)) b!181494))

(assert (= (and b!181494 c!32523) b!181495))

(assert (= (and b!181494 (not c!32523)) b!181496))

(declare-fun m!209411 () Bool)

(assert (=> b!181492 m!209411))

(declare-fun m!209413 () Bool)

(assert (=> d!54357 m!209413))

(declare-fun m!209415 () Bool)

(assert (=> d!54357 m!209415))

(assert (=> d!54357 m!209319))

(assert (=> d!54357 m!209413))

(declare-fun m!209417 () Bool)

(assert (=> d!54357 m!209417))

(declare-fun m!209419 () Bool)

(assert (=> d!54357 m!209419))

(declare-fun m!209421 () Bool)

(assert (=> d!54357 m!209421))

(declare-fun m!209423 () Bool)

(assert (=> b!181496 m!209423))

(assert (=> b!181369 d!54357))

(declare-fun condMapEmpty!7293 () Bool)

(declare-fun mapDefault!7293 () ValueCell!1782)

(assert (=> mapNonEmpty!7287 (= condMapEmpty!7293 (= mapRest!7287 ((as const (Array (_ BitVec 32) ValueCell!1782)) mapDefault!7293)))))

(declare-fun e!119550 () Bool)

(declare-fun mapRes!7293 () Bool)

(assert (=> mapNonEmpty!7287 (= tp!16185 (and e!119550 mapRes!7293))))

(declare-fun mapIsEmpty!7293 () Bool)

(assert (=> mapIsEmpty!7293 mapRes!7293))

(declare-fun b!181504 () Bool)

(declare-fun e!119549 () Bool)

(assert (=> b!181504 (= e!119549 tp_is_empty!4251)))

(declare-fun mapNonEmpty!7293 () Bool)

(declare-fun tp!16194 () Bool)

(assert (=> mapNonEmpty!7293 (= mapRes!7293 (and tp!16194 e!119549))))

(declare-fun mapKey!7293 () (_ BitVec 32))

(declare-fun mapRest!7293 () (Array (_ BitVec 32) ValueCell!1782))

(declare-fun mapValue!7293 () ValueCell!1782)

(assert (=> mapNonEmpty!7293 (= mapRest!7287 (store mapRest!7293 mapKey!7293 mapValue!7293))))

(declare-fun b!181505 () Bool)

(assert (=> b!181505 (= e!119550 tp_is_empty!4251)))

(assert (= (and mapNonEmpty!7287 condMapEmpty!7293) mapIsEmpty!7293))

(assert (= (and mapNonEmpty!7287 (not condMapEmpty!7293)) mapNonEmpty!7293))

(assert (= (and mapNonEmpty!7293 ((_ is ValueCellFull!1782) mapValue!7293)) b!181504))

(assert (= (and mapNonEmpty!7287 ((_ is ValueCellFull!1782) mapDefault!7293)) b!181505))

(declare-fun m!209425 () Bool)

(assert (=> mapNonEmpty!7293 m!209425))

(declare-fun b_lambda!7179 () Bool)

(assert (= b_lambda!7177 (or (and b!181368 b_free!4479) b_lambda!7179)))

(check-sat (not bm!18335) (not b!181456) (not d!54357) (not bm!18333) (not b!181478) (not b!181459) (not bm!18332) (not b!181467) (not b!181461) b_and!11049 (not b!181477) (not d!54351) (not mapNonEmpty!7293) (not b!181405) (not b!181450) (not b!181463) (not b!181479) (not b_lambda!7179) (not bm!18334) (not b!181403) tp_is_empty!4251 (not d!54355) (not b!181464) (not b!181496) (not d!54353) (not b!181449) (not b_next!4479))
(check-sat b_and!11049 (not b_next!4479))
