; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17658 () Bool)

(assert start!17658)

(declare-fun b!176366 () Bool)

(declare-fun b_free!4353 () Bool)

(declare-fun b_next!4353 () Bool)

(assert (=> b!176366 (= b_free!4353 (not b_next!4353))))

(declare-fun tp!15749 () Bool)

(declare-fun b_and!10865 () Bool)

(assert (=> b!176366 (= tp!15749 b_and!10865)))

(declare-fun mapNonEmpty!7041 () Bool)

(declare-fun mapRes!7041 () Bool)

(declare-fun tp!15750 () Bool)

(declare-fun e!116368 () Bool)

(assert (=> mapNonEmpty!7041 (= mapRes!7041 (and tp!15750 e!116368))))

(declare-datatypes ((V!5147 0))(
  ( (V!5148 (val!2107 Int)) )
))
(declare-datatypes ((ValueCell!1719 0))(
  ( (ValueCellFull!1719 (v!3980 V!5147)) (EmptyCell!1719) )
))
(declare-fun mapValue!7041 () ValueCell!1719)

(declare-fun mapRest!7041 () (Array (_ BitVec 32) ValueCell!1719))

(declare-fun mapKey!7041 () (_ BitVec 32))

(declare-datatypes ((array!7394 0))(
  ( (array!7395 (arr!3508 (Array (_ BitVec 32) (_ BitVec 64))) (size!3812 (_ BitVec 32))) )
))
(declare-datatypes ((array!7396 0))(
  ( (array!7397 (arr!3509 (Array (_ BitVec 32) ValueCell!1719)) (size!3813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2346 0))(
  ( (LongMapFixedSize!2347 (defaultEntry!3633 Int) (mask!8550 (_ BitVec 32)) (extraKeys!3370 (_ BitVec 32)) (zeroValue!3474 V!5147) (minValue!3474 V!5147) (_size!1222 (_ BitVec 32)) (_keys!5494 array!7394) (_values!3616 array!7396) (_vacant!1222 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2346)

(assert (=> mapNonEmpty!7041 (= (arr!3509 (_values!3616 thiss!1248)) (store mapRest!7041 mapKey!7041 mapValue!7041))))

(declare-fun res!83592 () Bool)

(declare-fun e!116367 () Bool)

(assert (=> start!17658 (=> (not res!83592) (not e!116367))))

(declare-fun valid!979 (LongMapFixedSize!2346) Bool)

(assert (=> start!17658 (= res!83592 (valid!979 thiss!1248))))

(assert (=> start!17658 e!116367))

(declare-fun e!116366 () Bool)

(assert (=> start!17658 e!116366))

(assert (=> start!17658 true))

(declare-fun b!176361 () Bool)

(declare-fun res!83591 () Bool)

(assert (=> b!176361 (=> (not res!83591) (not e!116367))))

(assert (=> b!176361 (= res!83591 (and (= (size!3813 (_values!3616 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8550 thiss!1248))) (= (size!3812 (_keys!5494 thiss!1248)) (size!3813 (_values!3616 thiss!1248))) (bvsge (mask!8550 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3370 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3370 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!176362 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7394 (_ BitVec 32)) Bool)

(assert (=> b!176362 (= e!116367 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5494 thiss!1248) (mask!8550 thiss!1248))))))

(declare-fun mapIsEmpty!7041 () Bool)

(assert (=> mapIsEmpty!7041 mapRes!7041))

(declare-fun b!176363 () Bool)

(declare-fun res!83593 () Bool)

(assert (=> b!176363 (=> (not res!83593) (not e!116367))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!176363 (= res!83593 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176364 () Bool)

(declare-fun tp_is_empty!4125 () Bool)

(assert (=> b!176364 (= e!116368 tp_is_empty!4125)))

(declare-fun b!176365 () Bool)

(declare-fun e!116370 () Bool)

(declare-fun e!116371 () Bool)

(assert (=> b!176365 (= e!116370 (and e!116371 mapRes!7041))))

(declare-fun condMapEmpty!7041 () Bool)

(declare-fun mapDefault!7041 () ValueCell!1719)

(assert (=> b!176365 (= condMapEmpty!7041 (= (arr!3509 (_values!3616 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1719)) mapDefault!7041)))))

(declare-fun array_inv!2237 (array!7394) Bool)

(declare-fun array_inv!2238 (array!7396) Bool)

(assert (=> b!176366 (= e!116366 (and tp!15749 tp_is_empty!4125 (array_inv!2237 (_keys!5494 thiss!1248)) (array_inv!2238 (_values!3616 thiss!1248)) e!116370))))

(declare-fun b!176367 () Bool)

(declare-fun res!83589 () Bool)

(assert (=> b!176367 (=> (not res!83589) (not e!116367))))

(declare-datatypes ((tuple2!3274 0))(
  ( (tuple2!3275 (_1!1647 (_ BitVec 64)) (_2!1647 V!5147)) )
))
(declare-datatypes ((List!2252 0))(
  ( (Nil!2249) (Cons!2248 (h!2869 tuple2!3274) (t!7084 List!2252)) )
))
(declare-datatypes ((ListLongMap!2215 0))(
  ( (ListLongMap!2216 (toList!1123 List!2252)) )
))
(declare-fun contains!1181 (ListLongMap!2215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!770 (array!7394 array!7396 (_ BitVec 32) (_ BitVec 32) V!5147 V!5147 (_ BitVec 32) Int) ListLongMap!2215)

(assert (=> b!176367 (= res!83589 (contains!1181 (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)) key!828))))

(declare-fun b!176368 () Bool)

(declare-fun res!83590 () Bool)

(assert (=> b!176368 (=> (not res!83590) (not e!116367))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!564 0))(
  ( (MissingZero!564 (index!4424 (_ BitVec 32))) (Found!564 (index!4425 (_ BitVec 32))) (Intermediate!564 (undefined!1376 Bool) (index!4426 (_ BitVec 32)) (x!19374 (_ BitVec 32))) (Undefined!564) (MissingVacant!564 (index!4427 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7394 (_ BitVec 32)) SeekEntryResult!564)

(assert (=> b!176368 (= res!83590 ((_ is Undefined!564) (seekEntryOrOpen!0 key!828 (_keys!5494 thiss!1248) (mask!8550 thiss!1248))))))

(declare-fun b!176369 () Bool)

(assert (=> b!176369 (= e!116371 tp_is_empty!4125)))

(declare-fun b!176370 () Bool)

(declare-fun res!83594 () Bool)

(assert (=> b!176370 (=> (not res!83594) (not e!116367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176370 (= res!83594 (validMask!0 (mask!8550 thiss!1248)))))

(assert (= (and start!17658 res!83592) b!176363))

(assert (= (and b!176363 res!83593) b!176368))

(assert (= (and b!176368 res!83590) b!176367))

(assert (= (and b!176367 res!83589) b!176370))

(assert (= (and b!176370 res!83594) b!176361))

(assert (= (and b!176361 res!83591) b!176362))

(assert (= (and b!176365 condMapEmpty!7041) mapIsEmpty!7041))

(assert (= (and b!176365 (not condMapEmpty!7041)) mapNonEmpty!7041))

(assert (= (and mapNonEmpty!7041 ((_ is ValueCellFull!1719) mapValue!7041)) b!176364))

(assert (= (and b!176365 ((_ is ValueCellFull!1719) mapDefault!7041)) b!176369))

(assert (= b!176366 b!176365))

(assert (= start!17658 b!176366))

(declare-fun m!205209 () Bool)

(assert (=> b!176366 m!205209))

(declare-fun m!205211 () Bool)

(assert (=> b!176366 m!205211))

(declare-fun m!205213 () Bool)

(assert (=> mapNonEmpty!7041 m!205213))

(declare-fun m!205215 () Bool)

(assert (=> b!176362 m!205215))

(declare-fun m!205217 () Bool)

(assert (=> b!176368 m!205217))

(declare-fun m!205219 () Bool)

(assert (=> b!176370 m!205219))

(declare-fun m!205221 () Bool)

(assert (=> b!176367 m!205221))

(assert (=> b!176367 m!205221))

(declare-fun m!205223 () Bool)

(assert (=> b!176367 m!205223))

(declare-fun m!205225 () Bool)

(assert (=> start!17658 m!205225))

(check-sat (not b!176368) (not b_next!4353) (not b!176367) (not b!176366) tp_is_empty!4125 (not start!17658) b_and!10865 (not b!176362) (not mapNonEmpty!7041) (not b!176370))
(check-sat b_and!10865 (not b_next!4353))
(get-model)

(declare-fun d!53585 () Bool)

(assert (=> d!53585 (= (validMask!0 (mask!8550 thiss!1248)) (and (or (= (mask!8550 thiss!1248) #b00000000000000000000000000000111) (= (mask!8550 thiss!1248) #b00000000000000000000000000001111) (= (mask!8550 thiss!1248) #b00000000000000000000000000011111) (= (mask!8550 thiss!1248) #b00000000000000000000000000111111) (= (mask!8550 thiss!1248) #b00000000000000000000000001111111) (= (mask!8550 thiss!1248) #b00000000000000000000000011111111) (= (mask!8550 thiss!1248) #b00000000000000000000000111111111) (= (mask!8550 thiss!1248) #b00000000000000000000001111111111) (= (mask!8550 thiss!1248) #b00000000000000000000011111111111) (= (mask!8550 thiss!1248) #b00000000000000000000111111111111) (= (mask!8550 thiss!1248) #b00000000000000000001111111111111) (= (mask!8550 thiss!1248) #b00000000000000000011111111111111) (= (mask!8550 thiss!1248) #b00000000000000000111111111111111) (= (mask!8550 thiss!1248) #b00000000000000001111111111111111) (= (mask!8550 thiss!1248) #b00000000000000011111111111111111) (= (mask!8550 thiss!1248) #b00000000000000111111111111111111) (= (mask!8550 thiss!1248) #b00000000000001111111111111111111) (= (mask!8550 thiss!1248) #b00000000000011111111111111111111) (= (mask!8550 thiss!1248) #b00000000000111111111111111111111) (= (mask!8550 thiss!1248) #b00000000001111111111111111111111) (= (mask!8550 thiss!1248) #b00000000011111111111111111111111) (= (mask!8550 thiss!1248) #b00000000111111111111111111111111) (= (mask!8550 thiss!1248) #b00000001111111111111111111111111) (= (mask!8550 thiss!1248) #b00000011111111111111111111111111) (= (mask!8550 thiss!1248) #b00000111111111111111111111111111) (= (mask!8550 thiss!1248) #b00001111111111111111111111111111) (= (mask!8550 thiss!1248) #b00011111111111111111111111111111) (= (mask!8550 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8550 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!176370 d!53585))

(declare-fun d!53587 () Bool)

(assert (=> d!53587 (= (array_inv!2237 (_keys!5494 thiss!1248)) (bvsge (size!3812 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176366 d!53587))

(declare-fun d!53589 () Bool)

(assert (=> d!53589 (= (array_inv!2238 (_values!3616 thiss!1248)) (bvsge (size!3813 (_values!3616 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176366 d!53589))

(declare-fun b!176409 () Bool)

(declare-fun e!116397 () Bool)

(declare-fun call!17846 () Bool)

(assert (=> b!176409 (= e!116397 call!17846)))

(declare-fun d!53591 () Bool)

(declare-fun res!83617 () Bool)

(declare-fun e!116396 () Bool)

(assert (=> d!53591 (=> res!83617 e!116396)))

(assert (=> d!53591 (= res!83617 (bvsge #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))))))

(assert (=> d!53591 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5494 thiss!1248) (mask!8550 thiss!1248)) e!116396)))

(declare-fun b!176410 () Bool)

(declare-fun e!116398 () Bool)

(assert (=> b!176410 (= e!116398 call!17846)))

(declare-fun b!176411 () Bool)

(assert (=> b!176411 (= e!116396 e!116397)))

(declare-fun c!31611 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!176411 (= c!31611 (validKeyInArray!0 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176412 () Bool)

(assert (=> b!176412 (= e!116397 e!116398)))

(declare-fun lt!87308 () (_ BitVec 64))

(assert (=> b!176412 (= lt!87308 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5401 0))(
  ( (Unit!5402) )
))
(declare-fun lt!87310 () Unit!5401)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7394 (_ BitVec 64) (_ BitVec 32)) Unit!5401)

(assert (=> b!176412 (= lt!87310 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5494 thiss!1248) lt!87308 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!176412 (arrayContainsKey!0 (_keys!5494 thiss!1248) lt!87308 #b00000000000000000000000000000000)))

(declare-fun lt!87309 () Unit!5401)

(assert (=> b!176412 (= lt!87309 lt!87310)))

(declare-fun res!83618 () Bool)

(assert (=> b!176412 (= res!83618 (= (seekEntryOrOpen!0 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000) (_keys!5494 thiss!1248) (mask!8550 thiss!1248)) (Found!564 #b00000000000000000000000000000000)))))

(assert (=> b!176412 (=> (not res!83618) (not e!116398))))

(declare-fun bm!17843 () Bool)

(assert (=> bm!17843 (= call!17846 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5494 thiss!1248) (mask!8550 thiss!1248)))))

(assert (= (and d!53591 (not res!83617)) b!176411))

(assert (= (and b!176411 c!31611) b!176412))

(assert (= (and b!176411 (not c!31611)) b!176409))

(assert (= (and b!176412 res!83618) b!176410))

(assert (= (or b!176410 b!176409) bm!17843))

(declare-fun m!205245 () Bool)

(assert (=> b!176411 m!205245))

(assert (=> b!176411 m!205245))

(declare-fun m!205247 () Bool)

(assert (=> b!176411 m!205247))

(assert (=> b!176412 m!205245))

(declare-fun m!205249 () Bool)

(assert (=> b!176412 m!205249))

(declare-fun m!205251 () Bool)

(assert (=> b!176412 m!205251))

(assert (=> b!176412 m!205245))

(declare-fun m!205253 () Bool)

(assert (=> b!176412 m!205253))

(declare-fun m!205255 () Bool)

(assert (=> bm!17843 m!205255))

(assert (=> b!176362 d!53591))

(declare-fun d!53593 () Bool)

(declare-fun e!116404 () Bool)

(assert (=> d!53593 e!116404))

(declare-fun res!83621 () Bool)

(assert (=> d!53593 (=> res!83621 e!116404)))

(declare-fun lt!87321 () Bool)

(assert (=> d!53593 (= res!83621 (not lt!87321))))

(declare-fun lt!87319 () Bool)

(assert (=> d!53593 (= lt!87321 lt!87319)))

(declare-fun lt!87322 () Unit!5401)

(declare-fun e!116403 () Unit!5401)

(assert (=> d!53593 (= lt!87322 e!116403)))

(declare-fun c!31614 () Bool)

(assert (=> d!53593 (= c!31614 lt!87319)))

(declare-fun containsKey!195 (List!2252 (_ BitVec 64)) Bool)

(assert (=> d!53593 (= lt!87319 (containsKey!195 (toList!1123 (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248))) key!828))))

(assert (=> d!53593 (= (contains!1181 (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)) key!828) lt!87321)))

(declare-fun b!176419 () Bool)

(declare-fun lt!87320 () Unit!5401)

(assert (=> b!176419 (= e!116403 lt!87320)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!144 (List!2252 (_ BitVec 64)) Unit!5401)

(assert (=> b!176419 (= lt!87320 (lemmaContainsKeyImpliesGetValueByKeyDefined!144 (toList!1123 (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248))) key!828))))

(declare-datatypes ((Option!197 0))(
  ( (Some!196 (v!3982 V!5147)) (None!195) )
))
(declare-fun isDefined!145 (Option!197) Bool)

(declare-fun getValueByKey!191 (List!2252 (_ BitVec 64)) Option!197)

(assert (=> b!176419 (isDefined!145 (getValueByKey!191 (toList!1123 (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248))) key!828))))

(declare-fun b!176420 () Bool)

(declare-fun Unit!5403 () Unit!5401)

(assert (=> b!176420 (= e!116403 Unit!5403)))

(declare-fun b!176421 () Bool)

(assert (=> b!176421 (= e!116404 (isDefined!145 (getValueByKey!191 (toList!1123 (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248))) key!828)))))

(assert (= (and d!53593 c!31614) b!176419))

(assert (= (and d!53593 (not c!31614)) b!176420))

(assert (= (and d!53593 (not res!83621)) b!176421))

(declare-fun m!205257 () Bool)

(assert (=> d!53593 m!205257))

(declare-fun m!205259 () Bool)

(assert (=> b!176419 m!205259))

(declare-fun m!205261 () Bool)

(assert (=> b!176419 m!205261))

(assert (=> b!176419 m!205261))

(declare-fun m!205263 () Bool)

(assert (=> b!176419 m!205263))

(assert (=> b!176421 m!205261))

(assert (=> b!176421 m!205261))

(assert (=> b!176421 m!205263))

(assert (=> b!176367 d!53593))

(declare-fun b!176464 () Bool)

(declare-fun e!116443 () Unit!5401)

(declare-fun Unit!5404 () Unit!5401)

(assert (=> b!176464 (= e!116443 Unit!5404)))

(declare-fun bm!17858 () Bool)

(declare-fun call!17863 () Bool)

(declare-fun lt!87379 () ListLongMap!2215)

(assert (=> bm!17858 (= call!17863 (contains!1181 lt!87379 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!53595 () Bool)

(declare-fun e!116439 () Bool)

(assert (=> d!53595 e!116439))

(declare-fun res!83642 () Bool)

(assert (=> d!53595 (=> (not res!83642) (not e!116439))))

(assert (=> d!53595 (= res!83642 (or (bvsge #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))))))))

(declare-fun lt!87376 () ListLongMap!2215)

(assert (=> d!53595 (= lt!87379 lt!87376)))

(declare-fun lt!87382 () Unit!5401)

(assert (=> d!53595 (= lt!87382 e!116443)))

(declare-fun c!31627 () Bool)

(declare-fun e!116436 () Bool)

(assert (=> d!53595 (= c!31627 e!116436)))

(declare-fun res!83646 () Bool)

(assert (=> d!53595 (=> (not res!83646) (not e!116436))))

(assert (=> d!53595 (= res!83646 (bvslt #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))))))

(declare-fun e!116440 () ListLongMap!2215)

(assert (=> d!53595 (= lt!87376 e!116440)))

(declare-fun c!31632 () Bool)

(assert (=> d!53595 (= c!31632 (and (not (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53595 (validMask!0 (mask!8550 thiss!1248))))

(assert (=> d!53595 (= (getCurrentListMap!770 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)) lt!87379)))

(declare-fun b!176465 () Bool)

(declare-fun e!116432 () ListLongMap!2215)

(declare-fun call!17865 () ListLongMap!2215)

(assert (=> b!176465 (= e!116432 call!17865)))

(declare-fun b!176466 () Bool)

(declare-fun e!116433 () Bool)

(declare-fun e!116438 () Bool)

(assert (=> b!176466 (= e!116433 e!116438)))

(declare-fun res!83647 () Bool)

(assert (=> b!176466 (=> (not res!83647) (not e!116438))))

(assert (=> b!176466 (= res!83647 (contains!1181 lt!87379 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!176466 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))))))

(declare-fun b!176467 () Bool)

(declare-fun apply!137 (ListLongMap!2215 (_ BitVec 64)) V!5147)

(declare-fun get!2005 (ValueCell!1719 V!5147) V!5147)

(declare-fun dynLambda!475 (Int (_ BitVec 64)) V!5147)

(assert (=> b!176467 (= e!116438 (= (apply!137 lt!87379 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000)) (get!2005 (select (arr!3509 (_values!3616 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!475 (defaultEntry!3633 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!176467 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3813 (_values!3616 thiss!1248))))))

(assert (=> b!176467 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))))))

(declare-fun b!176468 () Bool)

(declare-fun res!83640 () Bool)

(assert (=> b!176468 (=> (not res!83640) (not e!116439))))

(assert (=> b!176468 (= res!83640 e!116433)))

(declare-fun res!83645 () Bool)

(assert (=> b!176468 (=> res!83645 e!116433)))

(declare-fun e!116431 () Bool)

(assert (=> b!176468 (= res!83645 (not e!116431))))

(declare-fun res!83648 () Bool)

(assert (=> b!176468 (=> (not res!83648) (not e!116431))))

(assert (=> b!176468 (= res!83648 (bvslt #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))))))

(declare-fun b!176469 () Bool)

(declare-fun e!116437 () Bool)

(declare-fun call!17866 () Bool)

(assert (=> b!176469 (= e!116437 (not call!17866))))

(declare-fun bm!17859 () Bool)

(declare-fun call!17867 () ListLongMap!2215)

(declare-fun call!17861 () ListLongMap!2215)

(assert (=> bm!17859 (= call!17867 call!17861)))

(declare-fun b!176470 () Bool)

(declare-fun res!83644 () Bool)

(assert (=> b!176470 (=> (not res!83644) (not e!116439))))

(assert (=> b!176470 (= res!83644 e!116437)))

(declare-fun c!31631 () Bool)

(assert (=> b!176470 (= c!31631 (not (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!176471 () Bool)

(declare-fun lt!87373 () Unit!5401)

(assert (=> b!176471 (= e!116443 lt!87373)))

(declare-fun lt!87380 () ListLongMap!2215)

(declare-fun getCurrentListMapNoExtraKeys!167 (array!7394 array!7396 (_ BitVec 32) (_ BitVec 32) V!5147 V!5147 (_ BitVec 32) Int) ListLongMap!2215)

(assert (=> b!176471 (= lt!87380 (getCurrentListMapNoExtraKeys!167 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)))))

(declare-fun lt!87388 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87388 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87374 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87374 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87375 () Unit!5401)

(declare-fun addStillContains!113 (ListLongMap!2215 (_ BitVec 64) V!5147 (_ BitVec 64)) Unit!5401)

(assert (=> b!176471 (= lt!87375 (addStillContains!113 lt!87380 lt!87388 (zeroValue!3474 thiss!1248) lt!87374))))

(declare-fun +!249 (ListLongMap!2215 tuple2!3274) ListLongMap!2215)

(assert (=> b!176471 (contains!1181 (+!249 lt!87380 (tuple2!3275 lt!87388 (zeroValue!3474 thiss!1248))) lt!87374)))

(declare-fun lt!87387 () Unit!5401)

(assert (=> b!176471 (= lt!87387 lt!87375)))

(declare-fun lt!87377 () ListLongMap!2215)

(assert (=> b!176471 (= lt!87377 (getCurrentListMapNoExtraKeys!167 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)))))

(declare-fun lt!87372 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87372 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87381 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87381 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87386 () Unit!5401)

(declare-fun addApplyDifferent!113 (ListLongMap!2215 (_ BitVec 64) V!5147 (_ BitVec 64)) Unit!5401)

(assert (=> b!176471 (= lt!87386 (addApplyDifferent!113 lt!87377 lt!87372 (minValue!3474 thiss!1248) lt!87381))))

(assert (=> b!176471 (= (apply!137 (+!249 lt!87377 (tuple2!3275 lt!87372 (minValue!3474 thiss!1248))) lt!87381) (apply!137 lt!87377 lt!87381))))

(declare-fun lt!87369 () Unit!5401)

(assert (=> b!176471 (= lt!87369 lt!87386)))

(declare-fun lt!87383 () ListLongMap!2215)

(assert (=> b!176471 (= lt!87383 (getCurrentListMapNoExtraKeys!167 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)))))

(declare-fun lt!87368 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87368 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87378 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87378 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87367 () Unit!5401)

(assert (=> b!176471 (= lt!87367 (addApplyDifferent!113 lt!87383 lt!87368 (zeroValue!3474 thiss!1248) lt!87378))))

(assert (=> b!176471 (= (apply!137 (+!249 lt!87383 (tuple2!3275 lt!87368 (zeroValue!3474 thiss!1248))) lt!87378) (apply!137 lt!87383 lt!87378))))

(declare-fun lt!87370 () Unit!5401)

(assert (=> b!176471 (= lt!87370 lt!87367)))

(declare-fun lt!87385 () ListLongMap!2215)

(assert (=> b!176471 (= lt!87385 (getCurrentListMapNoExtraKeys!167 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)))))

(declare-fun lt!87371 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87371 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87384 () (_ BitVec 64))

(assert (=> b!176471 (= lt!87384 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176471 (= lt!87373 (addApplyDifferent!113 lt!87385 lt!87371 (minValue!3474 thiss!1248) lt!87384))))

(assert (=> b!176471 (= (apply!137 (+!249 lt!87385 (tuple2!3275 lt!87371 (minValue!3474 thiss!1248))) lt!87384) (apply!137 lt!87385 lt!87384))))

(declare-fun b!176472 () Bool)

(declare-fun c!31628 () Bool)

(assert (=> b!176472 (= c!31628 (and (not (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!116434 () ListLongMap!2215)

(assert (=> b!176472 (= e!116434 e!116432)))

(declare-fun bm!17860 () Bool)

(declare-fun call!17862 () ListLongMap!2215)

(assert (=> bm!17860 (= call!17865 call!17862)))

(declare-fun bm!17861 () Bool)

(declare-fun call!17864 () ListLongMap!2215)

(assert (=> bm!17861 (= call!17862 call!17864)))

(declare-fun b!176473 () Bool)

(declare-fun e!116441 () Bool)

(assert (=> b!176473 (= e!116441 (not call!17863))))

(declare-fun bm!17862 () Bool)

(assert (=> bm!17862 (= call!17864 (getCurrentListMapNoExtraKeys!167 (_keys!5494 thiss!1248) (_values!3616 thiss!1248) (mask!8550 thiss!1248) (extraKeys!3370 thiss!1248) (zeroValue!3474 thiss!1248) (minValue!3474 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3633 thiss!1248)))))

(declare-fun b!176474 () Bool)

(declare-fun e!116442 () Bool)

(assert (=> b!176474 (= e!116441 e!116442)))

(declare-fun res!83643 () Bool)

(assert (=> b!176474 (= res!83643 call!17863)))

(assert (=> b!176474 (=> (not res!83643) (not e!116442))))

(declare-fun b!176475 () Bool)

(assert (=> b!176475 (= e!116440 (+!249 call!17861 (tuple2!3275 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3474 thiss!1248))))))

(declare-fun b!176476 () Bool)

(assert (=> b!176476 (= e!116431 (validKeyInArray!0 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176477 () Bool)

(assert (=> b!176477 (= e!116442 (= (apply!137 lt!87379 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3474 thiss!1248)))))

(declare-fun b!176478 () Bool)

(declare-fun e!116435 () Bool)

(assert (=> b!176478 (= e!116435 (= (apply!137 lt!87379 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3474 thiss!1248)))))

(declare-fun b!176479 () Bool)

(assert (=> b!176479 (= e!116432 call!17867)))

(declare-fun b!176480 () Bool)

(assert (=> b!176480 (= e!116437 e!116435)))

(declare-fun res!83641 () Bool)

(assert (=> b!176480 (= res!83641 call!17866)))

(assert (=> b!176480 (=> (not res!83641) (not e!116435))))

(declare-fun b!176481 () Bool)

(assert (=> b!176481 (= e!116434 call!17867)))

(declare-fun b!176482 () Bool)

(assert (=> b!176482 (= e!116436 (validKeyInArray!0 (select (arr!3508 (_keys!5494 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17863 () Bool)

(assert (=> bm!17863 (= call!17866 (contains!1181 lt!87379 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176483 () Bool)

(assert (=> b!176483 (= e!116440 e!116434)))

(declare-fun c!31629 () Bool)

(assert (=> b!176483 (= c!31629 (and (not (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!176484 () Bool)

(assert (=> b!176484 (= e!116439 e!116441)))

(declare-fun c!31630 () Bool)

(assert (=> b!176484 (= c!31630 (not (= (bvand (extraKeys!3370 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17864 () Bool)

(assert (=> bm!17864 (= call!17861 (+!249 (ite c!31632 call!17864 (ite c!31629 call!17862 call!17865)) (ite (or c!31632 c!31629) (tuple2!3275 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3474 thiss!1248)) (tuple2!3275 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3474 thiss!1248)))))))

(assert (= (and d!53595 c!31632) b!176475))

(assert (= (and d!53595 (not c!31632)) b!176483))

(assert (= (and b!176483 c!31629) b!176481))

(assert (= (and b!176483 (not c!31629)) b!176472))

(assert (= (and b!176472 c!31628) b!176479))

(assert (= (and b!176472 (not c!31628)) b!176465))

(assert (= (or b!176479 b!176465) bm!17860))

(assert (= (or b!176481 bm!17860) bm!17861))

(assert (= (or b!176481 b!176479) bm!17859))

(assert (= (or b!176475 bm!17861) bm!17862))

(assert (= (or b!176475 bm!17859) bm!17864))

(assert (= (and d!53595 res!83646) b!176482))

(assert (= (and d!53595 c!31627) b!176471))

(assert (= (and d!53595 (not c!31627)) b!176464))

(assert (= (and d!53595 res!83642) b!176468))

(assert (= (and b!176468 res!83648) b!176476))

(assert (= (and b!176468 (not res!83645)) b!176466))

(assert (= (and b!176466 res!83647) b!176467))

(assert (= (and b!176468 res!83640) b!176470))

(assert (= (and b!176470 c!31631) b!176480))

(assert (= (and b!176470 (not c!31631)) b!176469))

(assert (= (and b!176480 res!83641) b!176478))

(assert (= (or b!176480 b!176469) bm!17863))

(assert (= (and b!176470 res!83644) b!176484))

(assert (= (and b!176484 c!31630) b!176474))

(assert (= (and b!176484 (not c!31630)) b!176473))

(assert (= (and b!176474 res!83643) b!176477))

(assert (= (or b!176474 b!176473) bm!17858))

(declare-fun b_lambda!7069 () Bool)

(assert (=> (not b_lambda!7069) (not b!176467)))

(declare-fun t!7087 () Bool)

(declare-fun tb!2793 () Bool)

(assert (=> (and b!176366 (= (defaultEntry!3633 thiss!1248) (defaultEntry!3633 thiss!1248)) t!7087) tb!2793))

(declare-fun result!4637 () Bool)

(assert (=> tb!2793 (= result!4637 tp_is_empty!4125)))

(assert (=> b!176467 t!7087))

(declare-fun b_and!10869 () Bool)

(assert (= b_and!10865 (and (=> t!7087 result!4637) b_and!10869)))

(declare-fun m!205265 () Bool)

(assert (=> b!176477 m!205265))

(declare-fun m!205267 () Bool)

(assert (=> b!176478 m!205267))

(assert (=> b!176466 m!205245))

(assert (=> b!176466 m!205245))

(declare-fun m!205269 () Bool)

(assert (=> b!176466 m!205269))

(declare-fun m!205271 () Bool)

(assert (=> bm!17863 m!205271))

(declare-fun m!205273 () Bool)

(assert (=> bm!17858 m!205273))

(declare-fun m!205275 () Bool)

(assert (=> b!176475 m!205275))

(assert (=> b!176476 m!205245))

(assert (=> b!176476 m!205245))

(assert (=> b!176476 m!205247))

(assert (=> d!53595 m!205219))

(declare-fun m!205277 () Bool)

(assert (=> b!176467 m!205277))

(assert (=> b!176467 m!205245))

(declare-fun m!205279 () Bool)

(assert (=> b!176467 m!205279))

(assert (=> b!176467 m!205245))

(declare-fun m!205281 () Bool)

(assert (=> b!176467 m!205281))

(assert (=> b!176467 m!205279))

(assert (=> b!176467 m!205277))

(declare-fun m!205283 () Bool)

(assert (=> b!176467 m!205283))

(assert (=> b!176482 m!205245))

(assert (=> b!176482 m!205245))

(assert (=> b!176482 m!205247))

(declare-fun m!205285 () Bool)

(assert (=> b!176471 m!205285))

(declare-fun m!205287 () Bool)

(assert (=> b!176471 m!205287))

(declare-fun m!205289 () Bool)

(assert (=> b!176471 m!205289))

(assert (=> b!176471 m!205245))

(declare-fun m!205291 () Bool)

(assert (=> b!176471 m!205291))

(declare-fun m!205293 () Bool)

(assert (=> b!176471 m!205293))

(declare-fun m!205295 () Bool)

(assert (=> b!176471 m!205295))

(declare-fun m!205297 () Bool)

(assert (=> b!176471 m!205297))

(declare-fun m!205299 () Bool)

(assert (=> b!176471 m!205299))

(declare-fun m!205301 () Bool)

(assert (=> b!176471 m!205301))

(assert (=> b!176471 m!205285))

(assert (=> b!176471 m!205295))

(assert (=> b!176471 m!205291))

(assert (=> b!176471 m!205301))

(declare-fun m!205303 () Bool)

(assert (=> b!176471 m!205303))

(declare-fun m!205305 () Bool)

(assert (=> b!176471 m!205305))

(declare-fun m!205307 () Bool)

(assert (=> b!176471 m!205307))

(declare-fun m!205309 () Bool)

(assert (=> b!176471 m!205309))

(declare-fun m!205311 () Bool)

(assert (=> b!176471 m!205311))

(declare-fun m!205313 () Bool)

(assert (=> b!176471 m!205313))

(declare-fun m!205315 () Bool)

(assert (=> b!176471 m!205315))

(assert (=> bm!17862 m!205299))

(declare-fun m!205317 () Bool)

(assert (=> bm!17864 m!205317))

(assert (=> b!176367 d!53595))

(declare-fun b!176499 () Bool)

(declare-fun e!116450 () SeekEntryResult!564)

(declare-fun lt!87397 () SeekEntryResult!564)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7394 (_ BitVec 32)) SeekEntryResult!564)

(assert (=> b!176499 (= e!116450 (seekKeyOrZeroReturnVacant!0 (x!19374 lt!87397) (index!4426 lt!87397) (index!4426 lt!87397) key!828 (_keys!5494 thiss!1248) (mask!8550 thiss!1248)))))

(declare-fun b!176500 () Bool)

(declare-fun e!116452 () SeekEntryResult!564)

(assert (=> b!176500 (= e!116452 (Found!564 (index!4426 lt!87397)))))

(declare-fun b!176501 () Bool)

(assert (=> b!176501 (= e!116450 (MissingZero!564 (index!4426 lt!87397)))))

(declare-fun d!53597 () Bool)

(declare-fun lt!87395 () SeekEntryResult!564)

(assert (=> d!53597 (and (or ((_ is Undefined!564) lt!87395) (not ((_ is Found!564) lt!87395)) (and (bvsge (index!4425 lt!87395) #b00000000000000000000000000000000) (bvslt (index!4425 lt!87395) (size!3812 (_keys!5494 thiss!1248))))) (or ((_ is Undefined!564) lt!87395) ((_ is Found!564) lt!87395) (not ((_ is MissingZero!564) lt!87395)) (and (bvsge (index!4424 lt!87395) #b00000000000000000000000000000000) (bvslt (index!4424 lt!87395) (size!3812 (_keys!5494 thiss!1248))))) (or ((_ is Undefined!564) lt!87395) ((_ is Found!564) lt!87395) ((_ is MissingZero!564) lt!87395) (not ((_ is MissingVacant!564) lt!87395)) (and (bvsge (index!4427 lt!87395) #b00000000000000000000000000000000) (bvslt (index!4427 lt!87395) (size!3812 (_keys!5494 thiss!1248))))) (or ((_ is Undefined!564) lt!87395) (ite ((_ is Found!564) lt!87395) (= (select (arr!3508 (_keys!5494 thiss!1248)) (index!4425 lt!87395)) key!828) (ite ((_ is MissingZero!564) lt!87395) (= (select (arr!3508 (_keys!5494 thiss!1248)) (index!4424 lt!87395)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!564) lt!87395) (= (select (arr!3508 (_keys!5494 thiss!1248)) (index!4427 lt!87395)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!116451 () SeekEntryResult!564)

(assert (=> d!53597 (= lt!87395 e!116451)))

(declare-fun c!31640 () Bool)

(assert (=> d!53597 (= c!31640 (and ((_ is Intermediate!564) lt!87397) (undefined!1376 lt!87397)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7394 (_ BitVec 32)) SeekEntryResult!564)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53597 (= lt!87397 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8550 thiss!1248)) key!828 (_keys!5494 thiss!1248) (mask!8550 thiss!1248)))))

(assert (=> d!53597 (validMask!0 (mask!8550 thiss!1248))))

(assert (=> d!53597 (= (seekEntryOrOpen!0 key!828 (_keys!5494 thiss!1248) (mask!8550 thiss!1248)) lt!87395)))

(declare-fun b!176502 () Bool)

(assert (=> b!176502 (= e!116451 e!116452)))

(declare-fun lt!87396 () (_ BitVec 64))

(assert (=> b!176502 (= lt!87396 (select (arr!3508 (_keys!5494 thiss!1248)) (index!4426 lt!87397)))))

(declare-fun c!31641 () Bool)

(assert (=> b!176502 (= c!31641 (= lt!87396 key!828))))

(declare-fun b!176503 () Bool)

(assert (=> b!176503 (= e!116451 Undefined!564)))

(declare-fun b!176504 () Bool)

(declare-fun c!31639 () Bool)

(assert (=> b!176504 (= c!31639 (= lt!87396 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!176504 (= e!116452 e!116450)))

(assert (= (and d!53597 c!31640) b!176503))

(assert (= (and d!53597 (not c!31640)) b!176502))

(assert (= (and b!176502 c!31641) b!176500))

(assert (= (and b!176502 (not c!31641)) b!176504))

(assert (= (and b!176504 c!31639) b!176501))

(assert (= (and b!176504 (not c!31639)) b!176499))

(declare-fun m!205319 () Bool)

(assert (=> b!176499 m!205319))

(declare-fun m!205321 () Bool)

(assert (=> d!53597 m!205321))

(declare-fun m!205323 () Bool)

(assert (=> d!53597 m!205323))

(declare-fun m!205325 () Bool)

(assert (=> d!53597 m!205325))

(declare-fun m!205327 () Bool)

(assert (=> d!53597 m!205327))

(assert (=> d!53597 m!205325))

(declare-fun m!205329 () Bool)

(assert (=> d!53597 m!205329))

(assert (=> d!53597 m!205219))

(declare-fun m!205331 () Bool)

(assert (=> b!176502 m!205331))

(assert (=> b!176368 d!53597))

(declare-fun d!53599 () Bool)

(declare-fun res!83655 () Bool)

(declare-fun e!116455 () Bool)

(assert (=> d!53599 (=> (not res!83655) (not e!116455))))

(declare-fun simpleValid!150 (LongMapFixedSize!2346) Bool)

(assert (=> d!53599 (= res!83655 (simpleValid!150 thiss!1248))))

(assert (=> d!53599 (= (valid!979 thiss!1248) e!116455)))

(declare-fun b!176511 () Bool)

(declare-fun res!83656 () Bool)

(assert (=> b!176511 (=> (not res!83656) (not e!116455))))

(declare-fun arrayCountValidKeys!0 (array!7394 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!176511 (= res!83656 (= (arrayCountValidKeys!0 (_keys!5494 thiss!1248) #b00000000000000000000000000000000 (size!3812 (_keys!5494 thiss!1248))) (_size!1222 thiss!1248)))))

(declare-fun b!176512 () Bool)

(declare-fun res!83657 () Bool)

(assert (=> b!176512 (=> (not res!83657) (not e!116455))))

(assert (=> b!176512 (= res!83657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5494 thiss!1248) (mask!8550 thiss!1248)))))

(declare-fun b!176513 () Bool)

(declare-datatypes ((List!2254 0))(
  ( (Nil!2251) (Cons!2250 (h!2871 (_ BitVec 64)) (t!7088 List!2254)) )
))
(declare-fun arrayNoDuplicates!0 (array!7394 (_ BitVec 32) List!2254) Bool)

(assert (=> b!176513 (= e!116455 (arrayNoDuplicates!0 (_keys!5494 thiss!1248) #b00000000000000000000000000000000 Nil!2251))))

(assert (= (and d!53599 res!83655) b!176511))

(assert (= (and b!176511 res!83656) b!176512))

(assert (= (and b!176512 res!83657) b!176513))

(declare-fun m!205333 () Bool)

(assert (=> d!53599 m!205333))

(declare-fun m!205335 () Bool)

(assert (=> b!176511 m!205335))

(assert (=> b!176512 m!205215))

(declare-fun m!205337 () Bool)

(assert (=> b!176513 m!205337))

(assert (=> start!17658 d!53599))

(declare-fun condMapEmpty!7047 () Bool)

(declare-fun mapDefault!7047 () ValueCell!1719)

(assert (=> mapNonEmpty!7041 (= condMapEmpty!7047 (= mapRest!7041 ((as const (Array (_ BitVec 32) ValueCell!1719)) mapDefault!7047)))))

(declare-fun e!116461 () Bool)

(declare-fun mapRes!7047 () Bool)

(assert (=> mapNonEmpty!7041 (= tp!15750 (and e!116461 mapRes!7047))))

(declare-fun b!176521 () Bool)

(assert (=> b!176521 (= e!116461 tp_is_empty!4125)))

(declare-fun mapIsEmpty!7047 () Bool)

(assert (=> mapIsEmpty!7047 mapRes!7047))

(declare-fun b!176520 () Bool)

(declare-fun e!116460 () Bool)

(assert (=> b!176520 (= e!116460 tp_is_empty!4125)))

(declare-fun mapNonEmpty!7047 () Bool)

(declare-fun tp!15759 () Bool)

(assert (=> mapNonEmpty!7047 (= mapRes!7047 (and tp!15759 e!116460))))

(declare-fun mapKey!7047 () (_ BitVec 32))

(declare-fun mapValue!7047 () ValueCell!1719)

(declare-fun mapRest!7047 () (Array (_ BitVec 32) ValueCell!1719))

(assert (=> mapNonEmpty!7047 (= mapRest!7041 (store mapRest!7047 mapKey!7047 mapValue!7047))))

(assert (= (and mapNonEmpty!7041 condMapEmpty!7047) mapIsEmpty!7047))

(assert (= (and mapNonEmpty!7041 (not condMapEmpty!7047)) mapNonEmpty!7047))

(assert (= (and mapNonEmpty!7047 ((_ is ValueCellFull!1719) mapValue!7047)) b!176520))

(assert (= (and mapNonEmpty!7041 ((_ is ValueCellFull!1719) mapDefault!7047)) b!176521))

(declare-fun m!205339 () Bool)

(assert (=> mapNonEmpty!7047 m!205339))

(declare-fun b_lambda!7071 () Bool)

(assert (= b_lambda!7069 (or (and b!176366 b_free!4353) b_lambda!7071)))

(check-sat (not b!176482) (not b!176411) (not d!53595) (not b!176476) (not d!53597) (not b!176477) (not bm!17843) (not bm!17862) (not b!176478) (not b!176511) (not b!176412) (not b!176512) (not d!53593) (not mapNonEmpty!7047) (not bm!17863) (not b_next!4353) (not b!176513) (not bm!17858) b_and!10869 (not d!53599) tp_is_empty!4125 (not b!176467) (not b!176419) (not b_lambda!7071) (not b!176421) (not b!176471) (not b!176475) (not bm!17864) (not b!176466) (not b!176499))
(check-sat b_and!10869 (not b_next!4353))
