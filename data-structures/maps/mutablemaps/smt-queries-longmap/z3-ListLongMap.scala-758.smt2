; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17762 () Bool)

(assert start!17762)

(declare-fun b!177399 () Bool)

(declare-fun b_free!4389 () Bool)

(declare-fun b_next!4389 () Bool)

(assert (=> b!177399 (= b_free!4389 (not b_next!4389))))

(declare-fun tp!15869 () Bool)

(declare-fun b_and!10909 () Bool)

(assert (=> b!177399 (= tp!15869 b_and!10909)))

(declare-fun mapNonEmpty!7107 () Bool)

(declare-fun mapRes!7107 () Bool)

(declare-fun tp!15870 () Bool)

(declare-fun e!116997 () Bool)

(assert (=> mapNonEmpty!7107 (= mapRes!7107 (and tp!15870 e!116997))))

(declare-fun mapKey!7107 () (_ BitVec 32))

(declare-datatypes ((V!5195 0))(
  ( (V!5196 (val!2125 Int)) )
))
(declare-datatypes ((ValueCell!1737 0))(
  ( (ValueCellFull!1737 (v!4002 V!5195)) (EmptyCell!1737) )
))
(declare-fun mapRest!7107 () (Array (_ BitVec 32) ValueCell!1737))

(declare-fun mapValue!7107 () ValueCell!1737)

(declare-datatypes ((array!7474 0))(
  ( (array!7475 (arr!3544 (Array (_ BitVec 32) (_ BitVec 64))) (size!3848 (_ BitVec 32))) )
))
(declare-datatypes ((array!7476 0))(
  ( (array!7477 (arr!3545 (Array (_ BitVec 32) ValueCell!1737)) (size!3849 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2382 0))(
  ( (LongMapFixedSize!2383 (defaultEntry!3655 Int) (mask!8595 (_ BitVec 32)) (extraKeys!3392 (_ BitVec 32)) (zeroValue!3496 V!5195) (minValue!3496 V!5195) (_size!1240 (_ BitVec 32)) (_keys!5523 array!7474) (_values!3638 array!7476) (_vacant!1240 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2382)

(assert (=> mapNonEmpty!7107 (= (arr!3545 (_values!3638 thiss!1248)) (store mapRest!7107 mapKey!7107 mapValue!7107))))

(declare-fun b!177398 () Bool)

(declare-fun res!84101 () Bool)

(declare-fun e!116996 () Bool)

(assert (=> b!177398 (=> (not res!84101) (not e!116996))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3304 0))(
  ( (tuple2!3305 (_1!1662 (_ BitVec 64)) (_2!1662 V!5195)) )
))
(declare-datatypes ((List!2276 0))(
  ( (Nil!2273) (Cons!2272 (h!2893 tuple2!3304) (t!7116 List!2276)) )
))
(declare-datatypes ((ListLongMap!2245 0))(
  ( (ListLongMap!2246 (toList!1138 List!2276)) )
))
(declare-fun contains!1198 (ListLongMap!2245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!785 (array!7474 array!7476 (_ BitVec 32) (_ BitVec 32) V!5195 V!5195 (_ BitVec 32) Int) ListLongMap!2245)

(assert (=> b!177398 (= res!84101 (not (contains!1198 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)) key!828)))))

(declare-fun e!116994 () Bool)

(declare-fun e!116998 () Bool)

(declare-fun tp_is_empty!4161 () Bool)

(declare-fun array_inv!2265 (array!7474) Bool)

(declare-fun array_inv!2266 (array!7476) Bool)

(assert (=> b!177399 (= e!116998 (and tp!15869 tp_is_empty!4161 (array_inv!2265 (_keys!5523 thiss!1248)) (array_inv!2266 (_values!3638 thiss!1248)) e!116994))))

(declare-fun b!177400 () Bool)

(assert (=> b!177400 (= e!116996 (not (= (size!3849 (_values!3638 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8595 thiss!1248)))))))

(declare-fun b!177401 () Bool)

(declare-fun res!84100 () Bool)

(assert (=> b!177401 (=> (not res!84100) (not e!116996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!177401 (= res!84100 (validMask!0 (mask!8595 thiss!1248)))))

(declare-fun b!177402 () Bool)

(declare-fun res!84102 () Bool)

(assert (=> b!177402 (=> (not res!84102) (not e!116996))))

(assert (=> b!177402 (= res!84102 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177403 () Bool)

(declare-fun res!84103 () Bool)

(assert (=> b!177403 (=> (not res!84103) (not e!116996))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!578 0))(
  ( (MissingZero!578 (index!4480 (_ BitVec 32))) (Found!578 (index!4481 (_ BitVec 32))) (Intermediate!578 (undefined!1390 Bool) (index!4482 (_ BitVec 32)) (x!19476 (_ BitVec 32))) (Undefined!578) (MissingVacant!578 (index!4483 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7474 (_ BitVec 32)) SeekEntryResult!578)

(assert (=> b!177403 (= res!84103 ((_ is Undefined!578) (seekEntryOrOpen!0 key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248))))))

(declare-fun mapIsEmpty!7107 () Bool)

(assert (=> mapIsEmpty!7107 mapRes!7107))

(declare-fun b!177404 () Bool)

(assert (=> b!177404 (= e!116997 tp_is_empty!4161)))

(declare-fun b!177405 () Bool)

(declare-fun e!116995 () Bool)

(assert (=> b!177405 (= e!116994 (and e!116995 mapRes!7107))))

(declare-fun condMapEmpty!7107 () Bool)

(declare-fun mapDefault!7107 () ValueCell!1737)

(assert (=> b!177405 (= condMapEmpty!7107 (= (arr!3545 (_values!3638 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1737)) mapDefault!7107)))))

(declare-fun res!84104 () Bool)

(assert (=> start!17762 (=> (not res!84104) (not e!116996))))

(declare-fun valid!990 (LongMapFixedSize!2382) Bool)

(assert (=> start!17762 (= res!84104 (valid!990 thiss!1248))))

(assert (=> start!17762 e!116996))

(assert (=> start!17762 e!116998))

(assert (=> start!17762 true))

(declare-fun b!177406 () Bool)

(assert (=> b!177406 (= e!116995 tp_is_empty!4161)))

(assert (= (and start!17762 res!84104) b!177402))

(assert (= (and b!177402 res!84102) b!177403))

(assert (= (and b!177403 res!84103) b!177398))

(assert (= (and b!177398 res!84101) b!177401))

(assert (= (and b!177401 res!84100) b!177400))

(assert (= (and b!177405 condMapEmpty!7107) mapIsEmpty!7107))

(assert (= (and b!177405 (not condMapEmpty!7107)) mapNonEmpty!7107))

(assert (= (and mapNonEmpty!7107 ((_ is ValueCellFull!1737) mapValue!7107)) b!177404))

(assert (= (and b!177405 ((_ is ValueCellFull!1737) mapDefault!7107)) b!177406))

(assert (= b!177399 b!177405))

(assert (= start!17762 b!177399))

(declare-fun m!205925 () Bool)

(assert (=> b!177403 m!205925))

(declare-fun m!205927 () Bool)

(assert (=> b!177398 m!205927))

(assert (=> b!177398 m!205927))

(declare-fun m!205929 () Bool)

(assert (=> b!177398 m!205929))

(declare-fun m!205931 () Bool)

(assert (=> start!17762 m!205931))

(declare-fun m!205933 () Bool)

(assert (=> b!177401 m!205933))

(declare-fun m!205935 () Bool)

(assert (=> b!177399 m!205935))

(declare-fun m!205937 () Bool)

(assert (=> b!177399 m!205937))

(declare-fun m!205939 () Bool)

(assert (=> mapNonEmpty!7107 m!205939))

(check-sat (not b!177401) (not start!17762) (not b!177398) b_and!10909 tp_is_empty!4161 (not mapNonEmpty!7107) (not b!177403) (not b_next!4389) (not b!177399))
(check-sat b_and!10909 (not b_next!4389))
(get-model)

(declare-fun d!53665 () Bool)

(declare-fun e!117022 () Bool)

(assert (=> d!53665 e!117022))

(declare-fun res!84122 () Bool)

(assert (=> d!53665 (=> res!84122 e!117022)))

(declare-fun lt!87703 () Bool)

(assert (=> d!53665 (= res!84122 (not lt!87703))))

(declare-fun lt!87704 () Bool)

(assert (=> d!53665 (= lt!87703 lt!87704)))

(declare-datatypes ((Unit!5421 0))(
  ( (Unit!5422) )
))
(declare-fun lt!87705 () Unit!5421)

(declare-fun e!117021 () Unit!5421)

(assert (=> d!53665 (= lt!87705 e!117021)))

(declare-fun c!31746 () Bool)

(assert (=> d!53665 (= c!31746 lt!87704)))

(declare-fun containsKey!199 (List!2276 (_ BitVec 64)) Bool)

(assert (=> d!53665 (= lt!87704 (containsKey!199 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))

(assert (=> d!53665 (= (contains!1198 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)) key!828) lt!87703)))

(declare-fun b!177440 () Bool)

(declare-fun lt!87706 () Unit!5421)

(assert (=> b!177440 (= e!117021 lt!87706)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!148 (List!2276 (_ BitVec 64)) Unit!5421)

(assert (=> b!177440 (= lt!87706 (lemmaContainsKeyImpliesGetValueByKeyDefined!148 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))

(declare-datatypes ((Option!201 0))(
  ( (Some!200 (v!4004 V!5195)) (None!199) )
))
(declare-fun isDefined!149 (Option!201) Bool)

(declare-fun getValueByKey!195 (List!2276 (_ BitVec 64)) Option!201)

(assert (=> b!177440 (isDefined!149 (getValueByKey!195 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))

(declare-fun b!177441 () Bool)

(declare-fun Unit!5423 () Unit!5421)

(assert (=> b!177441 (= e!117021 Unit!5423)))

(declare-fun b!177442 () Bool)

(assert (=> b!177442 (= e!117022 (isDefined!149 (getValueByKey!195 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828)))))

(assert (= (and d!53665 c!31746) b!177440))

(assert (= (and d!53665 (not c!31746)) b!177441))

(assert (= (and d!53665 (not res!84122)) b!177442))

(declare-fun m!205957 () Bool)

(assert (=> d!53665 m!205957))

(declare-fun m!205959 () Bool)

(assert (=> b!177440 m!205959))

(declare-fun m!205961 () Bool)

(assert (=> b!177440 m!205961))

(assert (=> b!177440 m!205961))

(declare-fun m!205963 () Bool)

(assert (=> b!177440 m!205963))

(assert (=> b!177442 m!205961))

(assert (=> b!177442 m!205961))

(assert (=> b!177442 m!205963))

(assert (=> b!177398 d!53665))

(declare-fun call!17957 () ListLongMap!2245)

(declare-fun call!17958 () ListLongMap!2245)

(declare-fun c!31762 () Bool)

(declare-fun call!17962 () ListLongMap!2245)

(declare-fun c!31759 () Bool)

(declare-fun bm!17954 () Bool)

(declare-fun call!17960 () ListLongMap!2245)

(declare-fun +!253 (ListLongMap!2245 tuple2!3304) ListLongMap!2245)

(assert (=> bm!17954 (= call!17957 (+!253 (ite c!31762 call!17960 (ite c!31759 call!17958 call!17962)) (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))

(declare-fun b!177485 () Bool)

(declare-fun e!117057 () Bool)

(declare-fun lt!87752 () ListLongMap!2245)

(declare-fun apply!141 (ListLongMap!2245 (_ BitVec 64)) V!5195)

(declare-fun get!2021 (ValueCell!1737 V!5195) V!5195)

(declare-fun dynLambda!479 (Int (_ BitVec 64)) V!5195)

(assert (=> b!177485 (= e!117057 (= (apply!141 lt!87752 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)) (get!2021 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!177485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3849 (_values!3638 thiss!1248))))))

(assert (=> b!177485 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun bm!17955 () Bool)

(declare-fun call!17963 () Bool)

(assert (=> bm!17955 (= call!17963 (contains!1198 lt!87752 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!177486 () Bool)

(declare-fun e!117055 () Bool)

(declare-fun e!117050 () Bool)

(assert (=> b!177486 (= e!117055 e!117050)))

(declare-fun c!31761 () Bool)

(assert (=> b!177486 (= c!31761 (not (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177487 () Bool)

(declare-fun e!117049 () Bool)

(declare-fun e!117054 () Bool)

(assert (=> b!177487 (= e!117049 e!117054)))

(declare-fun res!84149 () Bool)

(declare-fun call!17959 () Bool)

(assert (=> b!177487 (= res!84149 call!17959)))

(assert (=> b!177487 (=> (not res!84149) (not e!117054))))

(declare-fun b!177488 () Bool)

(declare-fun res!84147 () Bool)

(assert (=> b!177488 (=> (not res!84147) (not e!117055))))

(assert (=> b!177488 (= res!84147 e!117049)))

(declare-fun c!31763 () Bool)

(assert (=> b!177488 (= c!31763 (not (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!177489 () Bool)

(declare-fun e!117058 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!177489 (= e!117058 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17956 () Bool)

(declare-fun call!17961 () ListLongMap!2245)

(assert (=> bm!17956 (= call!17961 call!17957)))

(declare-fun b!177490 () Bool)

(declare-fun res!84145 () Bool)

(assert (=> b!177490 (=> (not res!84145) (not e!117055))))

(declare-fun e!117051 () Bool)

(assert (=> b!177490 (= res!84145 e!117051)))

(declare-fun res!84144 () Bool)

(assert (=> b!177490 (=> res!84144 e!117051)))

(assert (=> b!177490 (= res!84144 (not e!117058))))

(declare-fun res!84143 () Bool)

(assert (=> b!177490 (=> (not res!84143) (not e!117058))))

(assert (=> b!177490 (= res!84143 (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun b!177491 () Bool)

(declare-fun e!117056 () Bool)

(assert (=> b!177491 (= e!117050 e!117056)))

(declare-fun res!84141 () Bool)

(assert (=> b!177491 (= res!84141 call!17963)))

(assert (=> b!177491 (=> (not res!84141) (not e!117056))))

(declare-fun b!177492 () Bool)

(assert (=> b!177492 (= e!117049 (not call!17959))))

(declare-fun b!177493 () Bool)

(declare-fun e!117060 () Unit!5421)

(declare-fun Unit!5424 () Unit!5421)

(assert (=> b!177493 (= e!117060 Unit!5424)))

(declare-fun b!177494 () Bool)

(declare-fun c!31764 () Bool)

(assert (=> b!177494 (= c!31764 (and (not (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!117061 () ListLongMap!2245)

(declare-fun e!117052 () ListLongMap!2245)

(assert (=> b!177494 (= e!117061 e!117052)))

(declare-fun b!177495 () Bool)

(assert (=> b!177495 (= e!117050 (not call!17963))))

(declare-fun b!177497 () Bool)

(declare-fun e!117059 () Bool)

(assert (=> b!177497 (= e!117059 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177498 () Bool)

(assert (=> b!177498 (= e!117061 call!17961)))

(declare-fun b!177499 () Bool)

(declare-fun e!117053 () ListLongMap!2245)

(assert (=> b!177499 (= e!117053 (+!253 call!17957 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))

(declare-fun b!177500 () Bool)

(assert (=> b!177500 (= e!117056 (= (apply!141 lt!87752 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3496 thiss!1248)))))

(declare-fun b!177501 () Bool)

(assert (=> b!177501 (= e!117052 call!17961)))

(declare-fun bm!17957 () Bool)

(assert (=> bm!17957 (= call!17959 (contains!1198 lt!87752 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!177502 () Bool)

(declare-fun lt!87766 () Unit!5421)

(assert (=> b!177502 (= e!117060 lt!87766)))

(declare-fun lt!87758 () ListLongMap!2245)

(declare-fun getCurrentListMapNoExtraKeys!171 (array!7474 array!7476 (_ BitVec 32) (_ BitVec 32) V!5195 V!5195 (_ BitVec 32) Int) ListLongMap!2245)

(assert (=> b!177502 (= lt!87758 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))

(declare-fun lt!87756 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87756 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87754 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87754 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87769 () Unit!5421)

(declare-fun addStillContains!117 (ListLongMap!2245 (_ BitVec 64) V!5195 (_ BitVec 64)) Unit!5421)

(assert (=> b!177502 (= lt!87769 (addStillContains!117 lt!87758 lt!87756 (zeroValue!3496 thiss!1248) lt!87754))))

(assert (=> b!177502 (contains!1198 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))) lt!87754)))

(declare-fun lt!87753 () Unit!5421)

(assert (=> b!177502 (= lt!87753 lt!87769)))

(declare-fun lt!87755 () ListLongMap!2245)

(assert (=> b!177502 (= lt!87755 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))

(declare-fun lt!87759 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87759 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87761 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87761 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87767 () Unit!5421)

(declare-fun addApplyDifferent!117 (ListLongMap!2245 (_ BitVec 64) V!5195 (_ BitVec 64)) Unit!5421)

(assert (=> b!177502 (= lt!87767 (addApplyDifferent!117 lt!87755 lt!87759 (minValue!3496 thiss!1248) lt!87761))))

(assert (=> b!177502 (= (apply!141 (+!253 lt!87755 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))) lt!87761) (apply!141 lt!87755 lt!87761))))

(declare-fun lt!87768 () Unit!5421)

(assert (=> b!177502 (= lt!87768 lt!87767)))

(declare-fun lt!87751 () ListLongMap!2245)

(assert (=> b!177502 (= lt!87751 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))

(declare-fun lt!87760 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87760 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87771 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87771 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87765 () Unit!5421)

(assert (=> b!177502 (= lt!87765 (addApplyDifferent!117 lt!87751 lt!87760 (zeroValue!3496 thiss!1248) lt!87771))))

(assert (=> b!177502 (= (apply!141 (+!253 lt!87751 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))) lt!87771) (apply!141 lt!87751 lt!87771))))

(declare-fun lt!87762 () Unit!5421)

(assert (=> b!177502 (= lt!87762 lt!87765)))

(declare-fun lt!87770 () ListLongMap!2245)

(assert (=> b!177502 (= lt!87770 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))

(declare-fun lt!87763 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87763 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87764 () (_ BitVec 64))

(assert (=> b!177502 (= lt!87764 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177502 (= lt!87766 (addApplyDifferent!117 lt!87770 lt!87763 (minValue!3496 thiss!1248) lt!87764))))

(assert (=> b!177502 (= (apply!141 (+!253 lt!87770 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))) lt!87764) (apply!141 lt!87770 lt!87764))))

(declare-fun bm!17958 () Bool)

(assert (=> bm!17958 (= call!17958 call!17960)))

(declare-fun b!177503 () Bool)

(assert (=> b!177503 (= e!117053 e!117061)))

(assert (=> b!177503 (= c!31759 (and (not (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177504 () Bool)

(assert (=> b!177504 (= e!117051 e!117057)))

(declare-fun res!84148 () Bool)

(assert (=> b!177504 (=> (not res!84148) (not e!117057))))

(assert (=> b!177504 (= res!84148 (contains!1198 lt!87752 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177504 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun bm!17959 () Bool)

(assert (=> bm!17959 (= call!17960 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))

(declare-fun b!177496 () Bool)

(assert (=> b!177496 (= e!117052 call!17962)))

(declare-fun d!53667 () Bool)

(assert (=> d!53667 e!117055))

(declare-fun res!84146 () Bool)

(assert (=> d!53667 (=> (not res!84146) (not e!117055))))

(assert (=> d!53667 (= res!84146 (or (bvsge #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))))

(declare-fun lt!87772 () ListLongMap!2245)

(assert (=> d!53667 (= lt!87752 lt!87772)))

(declare-fun lt!87757 () Unit!5421)

(assert (=> d!53667 (= lt!87757 e!117060)))

(declare-fun c!31760 () Bool)

(assert (=> d!53667 (= c!31760 e!117059)))

(declare-fun res!84142 () Bool)

(assert (=> d!53667 (=> (not res!84142) (not e!117059))))

(assert (=> d!53667 (= res!84142 (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> d!53667 (= lt!87772 e!117053)))

(assert (=> d!53667 (= c!31762 (and (not (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3392 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53667 (validMask!0 (mask!8595 thiss!1248))))

(assert (=> d!53667 (= (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)) lt!87752)))

(declare-fun bm!17960 () Bool)

(assert (=> bm!17960 (= call!17962 call!17958)))

(declare-fun b!177505 () Bool)

(assert (=> b!177505 (= e!117054 (= (apply!141 lt!87752 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3496 thiss!1248)))))

(assert (= (and d!53667 c!31762) b!177499))

(assert (= (and d!53667 (not c!31762)) b!177503))

(assert (= (and b!177503 c!31759) b!177498))

(assert (= (and b!177503 (not c!31759)) b!177494))

(assert (= (and b!177494 c!31764) b!177501))

(assert (= (and b!177494 (not c!31764)) b!177496))

(assert (= (or b!177501 b!177496) bm!17960))

(assert (= (or b!177498 bm!17960) bm!17958))

(assert (= (or b!177498 b!177501) bm!17956))

(assert (= (or b!177499 bm!17958) bm!17959))

(assert (= (or b!177499 bm!17956) bm!17954))

(assert (= (and d!53667 res!84142) b!177497))

(assert (= (and d!53667 c!31760) b!177502))

(assert (= (and d!53667 (not c!31760)) b!177493))

(assert (= (and d!53667 res!84146) b!177490))

(assert (= (and b!177490 res!84143) b!177489))

(assert (= (and b!177490 (not res!84144)) b!177504))

(assert (= (and b!177504 res!84148) b!177485))

(assert (= (and b!177490 res!84145) b!177488))

(assert (= (and b!177488 c!31763) b!177487))

(assert (= (and b!177488 (not c!31763)) b!177492))

(assert (= (and b!177487 res!84149) b!177505))

(assert (= (or b!177487 b!177492) bm!17957))

(assert (= (and b!177488 res!84147) b!177486))

(assert (= (and b!177486 c!31761) b!177491))

(assert (= (and b!177486 (not c!31761)) b!177495))

(assert (= (and b!177491 res!84141) b!177500))

(assert (= (or b!177491 b!177495) bm!17955))

(declare-fun b_lambda!7085 () Bool)

(assert (=> (not b_lambda!7085) (not b!177485)))

(declare-fun t!7118 () Bool)

(declare-fun tb!2801 () Bool)

(assert (=> (and b!177399 (= (defaultEntry!3655 thiss!1248) (defaultEntry!3655 thiss!1248)) t!7118) tb!2801))

(declare-fun result!4661 () Bool)

(assert (=> tb!2801 (= result!4661 tp_is_empty!4161)))

(assert (=> b!177485 t!7118))

(declare-fun b_and!10913 () Bool)

(assert (= b_and!10909 (and (=> t!7118 result!4661) b_and!10913)))

(declare-fun m!205965 () Bool)

(assert (=> bm!17955 m!205965))

(assert (=> d!53667 m!205933))

(declare-fun m!205967 () Bool)

(assert (=> b!177500 m!205967))

(declare-fun m!205969 () Bool)

(assert (=> b!177502 m!205969))

(declare-fun m!205971 () Bool)

(assert (=> b!177502 m!205971))

(declare-fun m!205973 () Bool)

(assert (=> b!177502 m!205973))

(declare-fun m!205975 () Bool)

(assert (=> b!177502 m!205975))

(declare-fun m!205977 () Bool)

(assert (=> b!177502 m!205977))

(declare-fun m!205979 () Bool)

(assert (=> b!177502 m!205979))

(declare-fun m!205981 () Bool)

(assert (=> b!177502 m!205981))

(declare-fun m!205983 () Bool)

(assert (=> b!177502 m!205983))

(assert (=> b!177502 m!205979))

(assert (=> b!177502 m!205973))

(declare-fun m!205985 () Bool)

(assert (=> b!177502 m!205985))

(declare-fun m!205987 () Bool)

(assert (=> b!177502 m!205987))

(declare-fun m!205989 () Bool)

(assert (=> b!177502 m!205989))

(assert (=> b!177502 m!205989))

(declare-fun m!205991 () Bool)

(assert (=> b!177502 m!205991))

(declare-fun m!205993 () Bool)

(assert (=> b!177502 m!205993))

(assert (=> b!177502 m!205971))

(declare-fun m!205995 () Bool)

(assert (=> b!177502 m!205995))

(declare-fun m!205997 () Bool)

(assert (=> b!177502 m!205997))

(declare-fun m!205999 () Bool)

(assert (=> b!177502 m!205999))

(declare-fun m!206001 () Bool)

(assert (=> b!177502 m!206001))

(declare-fun m!206003 () Bool)

(assert (=> b!177505 m!206003))

(assert (=> b!177485 m!205975))

(declare-fun m!206005 () Bool)

(assert (=> b!177485 m!206005))

(assert (=> b!177485 m!205975))

(declare-fun m!206007 () Bool)

(assert (=> b!177485 m!206007))

(declare-fun m!206009 () Bool)

(assert (=> b!177485 m!206009))

(assert (=> b!177485 m!206007))

(assert (=> b!177485 m!206009))

(declare-fun m!206011 () Bool)

(assert (=> b!177485 m!206011))

(declare-fun m!206013 () Bool)

(assert (=> bm!17957 m!206013))

(assert (=> bm!17959 m!205993))

(declare-fun m!206015 () Bool)

(assert (=> b!177499 m!206015))

(assert (=> b!177504 m!205975))

(assert (=> b!177504 m!205975))

(declare-fun m!206017 () Bool)

(assert (=> b!177504 m!206017))

(assert (=> b!177497 m!205975))

(assert (=> b!177497 m!205975))

(declare-fun m!206019 () Bool)

(assert (=> b!177497 m!206019))

(assert (=> b!177489 m!205975))

(assert (=> b!177489 m!205975))

(assert (=> b!177489 m!206019))

(declare-fun m!206021 () Bool)

(assert (=> bm!17954 m!206021))

(assert (=> b!177398 d!53667))

(declare-fun lt!87780 () SeekEntryResult!578)

(declare-fun b!177520 () Bool)

(declare-fun e!117070 () SeekEntryResult!578)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7474 (_ BitVec 32)) SeekEntryResult!578)

(assert (=> b!177520 (= e!117070 (seekKeyOrZeroReturnVacant!0 (x!19476 lt!87780) (index!4482 lt!87780) (index!4482 lt!87780) key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)))))

(declare-fun b!177521 () Bool)

(declare-fun c!31773 () Bool)

(declare-fun lt!87779 () (_ BitVec 64))

(assert (=> b!177521 (= c!31773 (= lt!87779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!117068 () SeekEntryResult!578)

(assert (=> b!177521 (= e!117068 e!117070)))

(declare-fun b!177522 () Bool)

(declare-fun e!117069 () SeekEntryResult!578)

(assert (=> b!177522 (= e!117069 Undefined!578)))

(declare-fun b!177523 () Bool)

(assert (=> b!177523 (= e!117069 e!117068)))

(assert (=> b!177523 (= lt!87779 (select (arr!3544 (_keys!5523 thiss!1248)) (index!4482 lt!87780)))))

(declare-fun c!31772 () Bool)

(assert (=> b!177523 (= c!31772 (= lt!87779 key!828))))

(declare-fun b!177524 () Bool)

(assert (=> b!177524 (= e!117068 (Found!578 (index!4482 lt!87780)))))

(declare-fun d!53669 () Bool)

(declare-fun lt!87781 () SeekEntryResult!578)

(assert (=> d!53669 (and (or ((_ is Undefined!578) lt!87781) (not ((_ is Found!578) lt!87781)) (and (bvsge (index!4481 lt!87781) #b00000000000000000000000000000000) (bvslt (index!4481 lt!87781) (size!3848 (_keys!5523 thiss!1248))))) (or ((_ is Undefined!578) lt!87781) ((_ is Found!578) lt!87781) (not ((_ is MissingZero!578) lt!87781)) (and (bvsge (index!4480 lt!87781) #b00000000000000000000000000000000) (bvslt (index!4480 lt!87781) (size!3848 (_keys!5523 thiss!1248))))) (or ((_ is Undefined!578) lt!87781) ((_ is Found!578) lt!87781) ((_ is MissingZero!578) lt!87781) (not ((_ is MissingVacant!578) lt!87781)) (and (bvsge (index!4483 lt!87781) #b00000000000000000000000000000000) (bvslt (index!4483 lt!87781) (size!3848 (_keys!5523 thiss!1248))))) (or ((_ is Undefined!578) lt!87781) (ite ((_ is Found!578) lt!87781) (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4481 lt!87781)) key!828) (ite ((_ is MissingZero!578) lt!87781) (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4480 lt!87781)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!578) lt!87781) (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4483 lt!87781)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53669 (= lt!87781 e!117069)))

(declare-fun c!31771 () Bool)

(assert (=> d!53669 (= c!31771 (and ((_ is Intermediate!578) lt!87780) (undefined!1390 lt!87780)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7474 (_ BitVec 32)) SeekEntryResult!578)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53669 (= lt!87780 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8595 thiss!1248)) key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)))))

(assert (=> d!53669 (validMask!0 (mask!8595 thiss!1248))))

(assert (=> d!53669 (= (seekEntryOrOpen!0 key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)) lt!87781)))

(declare-fun b!177525 () Bool)

(assert (=> b!177525 (= e!117070 (MissingZero!578 (index!4482 lt!87780)))))

(assert (= (and d!53669 c!31771) b!177522))

(assert (= (and d!53669 (not c!31771)) b!177523))

(assert (= (and b!177523 c!31772) b!177524))

(assert (= (and b!177523 (not c!31772)) b!177521))

(assert (= (and b!177521 c!31773) b!177525))

(assert (= (and b!177521 (not c!31773)) b!177520))

(declare-fun m!206023 () Bool)

(assert (=> b!177520 m!206023))

(declare-fun m!206025 () Bool)

(assert (=> b!177523 m!206025))

(declare-fun m!206027 () Bool)

(assert (=> d!53669 m!206027))

(declare-fun m!206029 () Bool)

(assert (=> d!53669 m!206029))

(declare-fun m!206031 () Bool)

(assert (=> d!53669 m!206031))

(assert (=> d!53669 m!206029))

(declare-fun m!206033 () Bool)

(assert (=> d!53669 m!206033))

(declare-fun m!206035 () Bool)

(assert (=> d!53669 m!206035))

(assert (=> d!53669 m!205933))

(assert (=> b!177403 d!53669))

(declare-fun d!53671 () Bool)

(assert (=> d!53671 (= (array_inv!2265 (_keys!5523 thiss!1248)) (bvsge (size!3848 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177399 d!53671))

(declare-fun d!53673 () Bool)

(assert (=> d!53673 (= (array_inv!2266 (_values!3638 thiss!1248)) (bvsge (size!3849 (_values!3638 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177399 d!53673))

(declare-fun d!53675 () Bool)

(declare-fun res!84156 () Bool)

(declare-fun e!117073 () Bool)

(assert (=> d!53675 (=> (not res!84156) (not e!117073))))

(declare-fun simpleValid!154 (LongMapFixedSize!2382) Bool)

(assert (=> d!53675 (= res!84156 (simpleValid!154 thiss!1248))))

(assert (=> d!53675 (= (valid!990 thiss!1248) e!117073)))

(declare-fun b!177532 () Bool)

(declare-fun res!84157 () Bool)

(assert (=> b!177532 (=> (not res!84157) (not e!117073))))

(declare-fun arrayCountValidKeys!0 (array!7474 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!177532 (= res!84157 (= (arrayCountValidKeys!0 (_keys!5523 thiss!1248) #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))) (_size!1240 thiss!1248)))))

(declare-fun b!177533 () Bool)

(declare-fun res!84158 () Bool)

(assert (=> b!177533 (=> (not res!84158) (not e!117073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7474 (_ BitVec 32)) Bool)

(assert (=> b!177533 (= res!84158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)))))

(declare-fun b!177534 () Bool)

(declare-datatypes ((List!2277 0))(
  ( (Nil!2274) (Cons!2273 (h!2894 (_ BitVec 64)) (t!7119 List!2277)) )
))
(declare-fun arrayNoDuplicates!0 (array!7474 (_ BitVec 32) List!2277) Bool)

(assert (=> b!177534 (= e!117073 (arrayNoDuplicates!0 (_keys!5523 thiss!1248) #b00000000000000000000000000000000 Nil!2274))))

(assert (= (and d!53675 res!84156) b!177532))

(assert (= (and b!177532 res!84157) b!177533))

(assert (= (and b!177533 res!84158) b!177534))

(declare-fun m!206037 () Bool)

(assert (=> d!53675 m!206037))

(declare-fun m!206039 () Bool)

(assert (=> b!177532 m!206039))

(declare-fun m!206041 () Bool)

(assert (=> b!177533 m!206041))

(declare-fun m!206043 () Bool)

(assert (=> b!177534 m!206043))

(assert (=> start!17762 d!53675))

(declare-fun d!53677 () Bool)

(assert (=> d!53677 (= (validMask!0 (mask!8595 thiss!1248)) (and (or (= (mask!8595 thiss!1248) #b00000000000000000000000000000111) (= (mask!8595 thiss!1248) #b00000000000000000000000000001111) (= (mask!8595 thiss!1248) #b00000000000000000000000000011111) (= (mask!8595 thiss!1248) #b00000000000000000000000000111111) (= (mask!8595 thiss!1248) #b00000000000000000000000001111111) (= (mask!8595 thiss!1248) #b00000000000000000000000011111111) (= (mask!8595 thiss!1248) #b00000000000000000000000111111111) (= (mask!8595 thiss!1248) #b00000000000000000000001111111111) (= (mask!8595 thiss!1248) #b00000000000000000000011111111111) (= (mask!8595 thiss!1248) #b00000000000000000000111111111111) (= (mask!8595 thiss!1248) #b00000000000000000001111111111111) (= (mask!8595 thiss!1248) #b00000000000000000011111111111111) (= (mask!8595 thiss!1248) #b00000000000000000111111111111111) (= (mask!8595 thiss!1248) #b00000000000000001111111111111111) (= (mask!8595 thiss!1248) #b00000000000000011111111111111111) (= (mask!8595 thiss!1248) #b00000000000000111111111111111111) (= (mask!8595 thiss!1248) #b00000000000001111111111111111111) (= (mask!8595 thiss!1248) #b00000000000011111111111111111111) (= (mask!8595 thiss!1248) #b00000000000111111111111111111111) (= (mask!8595 thiss!1248) #b00000000001111111111111111111111) (= (mask!8595 thiss!1248) #b00000000011111111111111111111111) (= (mask!8595 thiss!1248) #b00000000111111111111111111111111) (= (mask!8595 thiss!1248) #b00000001111111111111111111111111) (= (mask!8595 thiss!1248) #b00000011111111111111111111111111) (= (mask!8595 thiss!1248) #b00000111111111111111111111111111) (= (mask!8595 thiss!1248) #b00001111111111111111111111111111) (= (mask!8595 thiss!1248) #b00011111111111111111111111111111) (= (mask!8595 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8595 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!177401 d!53677))

(declare-fun b!177541 () Bool)

(declare-fun e!117078 () Bool)

(assert (=> b!177541 (= e!117078 tp_is_empty!4161)))

(declare-fun b!177542 () Bool)

(declare-fun e!117079 () Bool)

(assert (=> b!177542 (= e!117079 tp_is_empty!4161)))

(declare-fun mapNonEmpty!7113 () Bool)

(declare-fun mapRes!7113 () Bool)

(declare-fun tp!15879 () Bool)

(assert (=> mapNonEmpty!7113 (= mapRes!7113 (and tp!15879 e!117078))))

(declare-fun mapRest!7113 () (Array (_ BitVec 32) ValueCell!1737))

(declare-fun mapValue!7113 () ValueCell!1737)

(declare-fun mapKey!7113 () (_ BitVec 32))

(assert (=> mapNonEmpty!7113 (= mapRest!7107 (store mapRest!7113 mapKey!7113 mapValue!7113))))

(declare-fun mapIsEmpty!7113 () Bool)

(assert (=> mapIsEmpty!7113 mapRes!7113))

(declare-fun condMapEmpty!7113 () Bool)

(declare-fun mapDefault!7113 () ValueCell!1737)

(assert (=> mapNonEmpty!7107 (= condMapEmpty!7113 (= mapRest!7107 ((as const (Array (_ BitVec 32) ValueCell!1737)) mapDefault!7113)))))

(assert (=> mapNonEmpty!7107 (= tp!15870 (and e!117079 mapRes!7113))))

(assert (= (and mapNonEmpty!7107 condMapEmpty!7113) mapIsEmpty!7113))

(assert (= (and mapNonEmpty!7107 (not condMapEmpty!7113)) mapNonEmpty!7113))

(assert (= (and mapNonEmpty!7113 ((_ is ValueCellFull!1737) mapValue!7113)) b!177541))

(assert (= (and mapNonEmpty!7107 ((_ is ValueCellFull!1737) mapDefault!7113)) b!177542))

(declare-fun m!206045 () Bool)

(assert (=> mapNonEmpty!7113 m!206045))

(declare-fun b_lambda!7087 () Bool)

(assert (= b_lambda!7085 (or (and b!177399 b_free!4389) b_lambda!7087)))

(check-sat (not b!177520) (not b!177489) (not b!177505) (not b!177533) (not b_lambda!7087) (not b!177532) (not b_next!4389) (not mapNonEmpty!7113) tp_is_empty!4161 (not b!177442) (not b!177440) (not b!177504) (not bm!17957) (not d!53675) (not bm!17955) (not b!177499) (not b!177534) b_and!10913 (not d!53665) (not b!177485) (not b!177497) (not d!53669) (not d!53667) (not bm!17959) (not b!177502) (not bm!17954) (not b!177500))
(check-sat b_and!10913 (not b_next!4389))
(get-model)

(declare-fun d!53679 () Bool)

(declare-fun e!117082 () Bool)

(assert (=> d!53679 e!117082))

(declare-fun res!84164 () Bool)

(assert (=> d!53679 (=> (not res!84164) (not e!117082))))

(declare-fun lt!87793 () ListLongMap!2245)

(assert (=> d!53679 (= res!84164 (contains!1198 lt!87793 (_1!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))))

(declare-fun lt!87791 () List!2276)

(assert (=> d!53679 (= lt!87793 (ListLongMap!2246 lt!87791))))

(declare-fun lt!87790 () Unit!5421)

(declare-fun lt!87792 () Unit!5421)

(assert (=> d!53679 (= lt!87790 lt!87792)))

(assert (=> d!53679 (= (getValueByKey!195 lt!87791 (_1!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))) (Some!200 (_2!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!104 (List!2276 (_ BitVec 64) V!5195) Unit!5421)

(assert (=> d!53679 (= lt!87792 (lemmaContainsTupThenGetReturnValue!104 lt!87791 (_1!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))) (_2!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))))

(declare-fun insertStrictlySorted!106 (List!2276 (_ BitVec 64) V!5195) List!2276)

(assert (=> d!53679 (= lt!87791 (insertStrictlySorted!106 (toList!1138 (ite c!31762 call!17960 (ite c!31759 call!17958 call!17962))) (_1!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))) (_2!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))))

(assert (=> d!53679 (= (+!253 (ite c!31762 call!17960 (ite c!31759 call!17958 call!17962)) (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))) lt!87793)))

(declare-fun b!177547 () Bool)

(declare-fun res!84163 () Bool)

(assert (=> b!177547 (=> (not res!84163) (not e!117082))))

(assert (=> b!177547 (= res!84163 (= (getValueByKey!195 (toList!1138 lt!87793) (_1!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))) (Some!200 (_2!1662 (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))))

(declare-fun b!177548 () Bool)

(declare-fun contains!1199 (List!2276 tuple2!3304) Bool)

(assert (=> b!177548 (= e!117082 (contains!1199 (toList!1138 lt!87793) (ite (or c!31762 c!31759) (tuple2!3305 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3496 thiss!1248)) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))

(assert (= (and d!53679 res!84164) b!177547))

(assert (= (and b!177547 res!84163) b!177548))

(declare-fun m!206047 () Bool)

(assert (=> d!53679 m!206047))

(declare-fun m!206049 () Bool)

(assert (=> d!53679 m!206049))

(declare-fun m!206051 () Bool)

(assert (=> d!53679 m!206051))

(declare-fun m!206053 () Bool)

(assert (=> d!53679 m!206053))

(declare-fun m!206055 () Bool)

(assert (=> b!177547 m!206055))

(declare-fun m!206057 () Bool)

(assert (=> b!177548 m!206057))

(assert (=> bm!17954 d!53679))

(declare-fun b!177574 () Bool)

(assert (=> b!177574 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> b!177574 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3849 (_values!3638 thiss!1248))))))

(declare-fun e!117097 () Bool)

(declare-fun lt!87811 () ListLongMap!2245)

(assert (=> b!177574 (= e!117097 (= (apply!141 lt!87811 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)) (get!2021 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!177575 () Bool)

(declare-fun e!117098 () ListLongMap!2245)

(declare-fun e!117100 () ListLongMap!2245)

(assert (=> b!177575 (= e!117098 e!117100)))

(declare-fun c!31785 () Bool)

(assert (=> b!177575 (= c!31785 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177576 () Bool)

(declare-fun e!117099 () Bool)

(assert (=> b!177576 (= e!117099 e!117097)))

(assert (=> b!177576 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun res!84174 () Bool)

(assert (=> b!177576 (= res!84174 (contains!1198 lt!87811 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177576 (=> (not res!84174) (not e!117097))))

(declare-fun b!177577 () Bool)

(declare-fun res!84173 () Bool)

(declare-fun e!117101 () Bool)

(assert (=> b!177577 (=> (not res!84173) (not e!117101))))

(assert (=> b!177577 (= res!84173 (not (contains!1198 lt!87811 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!177578 () Bool)

(declare-fun e!117102 () Bool)

(declare-fun isEmpty!452 (ListLongMap!2245) Bool)

(assert (=> b!177578 (= e!117102 (isEmpty!452 lt!87811))))

(declare-fun b!177579 () Bool)

(assert (=> b!177579 (= e!117102 (= lt!87811 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3655 thiss!1248))))))

(declare-fun b!177580 () Bool)

(declare-fun e!117103 () Bool)

(assert (=> b!177580 (= e!117103 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177580 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!177581 () Bool)

(declare-fun call!17966 () ListLongMap!2245)

(assert (=> b!177581 (= e!117100 call!17966)))

(declare-fun b!177582 () Bool)

(assert (=> b!177582 (= e!117099 e!117102)))

(declare-fun c!31782 () Bool)

(assert (=> b!177582 (= c!31782 (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun bm!17963 () Bool)

(assert (=> bm!17963 (= call!17966 (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3655 thiss!1248)))))

(declare-fun b!177583 () Bool)

(declare-fun lt!87812 () Unit!5421)

(declare-fun lt!87809 () Unit!5421)

(assert (=> b!177583 (= lt!87812 lt!87809)))

(declare-fun lt!87810 () (_ BitVec 64))

(declare-fun lt!87813 () ListLongMap!2245)

(declare-fun lt!87814 () V!5195)

(declare-fun lt!87808 () (_ BitVec 64))

(assert (=> b!177583 (not (contains!1198 (+!253 lt!87813 (tuple2!3305 lt!87808 lt!87814)) lt!87810))))

(declare-fun addStillNotContains!79 (ListLongMap!2245 (_ BitVec 64) V!5195 (_ BitVec 64)) Unit!5421)

(assert (=> b!177583 (= lt!87809 (addStillNotContains!79 lt!87813 lt!87808 lt!87814 lt!87810))))

(assert (=> b!177583 (= lt!87810 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!177583 (= lt!87814 (get!2021 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!177583 (= lt!87808 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177583 (= lt!87813 call!17966)))

(assert (=> b!177583 (= e!117100 (+!253 call!17966 (tuple2!3305 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000) (get!2021 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!177584 () Bool)

(assert (=> b!177584 (= e!117101 e!117099)))

(declare-fun c!31784 () Bool)

(assert (=> b!177584 (= c!31784 e!117103)))

(declare-fun res!84176 () Bool)

(assert (=> b!177584 (=> (not res!84176) (not e!117103))))

(assert (=> b!177584 (= res!84176 (bvslt #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun b!177573 () Bool)

(assert (=> b!177573 (= e!117098 (ListLongMap!2246 Nil!2273))))

(declare-fun d!53681 () Bool)

(assert (=> d!53681 e!117101))

(declare-fun res!84175 () Bool)

(assert (=> d!53681 (=> (not res!84175) (not e!117101))))

(assert (=> d!53681 (= res!84175 (not (contains!1198 lt!87811 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!53681 (= lt!87811 e!117098)))

(declare-fun c!31783 () Bool)

(assert (=> d!53681 (= c!31783 (bvsge #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> d!53681 (validMask!0 (mask!8595 thiss!1248))))

(assert (=> d!53681 (= (getCurrentListMapNoExtraKeys!171 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)) lt!87811)))

(assert (= (and d!53681 c!31783) b!177573))

(assert (= (and d!53681 (not c!31783)) b!177575))

(assert (= (and b!177575 c!31785) b!177583))

(assert (= (and b!177575 (not c!31785)) b!177581))

(assert (= (or b!177583 b!177581) bm!17963))

(assert (= (and d!53681 res!84175) b!177577))

(assert (= (and b!177577 res!84173) b!177584))

(assert (= (and b!177584 res!84176) b!177580))

(assert (= (and b!177584 c!31784) b!177576))

(assert (= (and b!177584 (not c!31784)) b!177582))

(assert (= (and b!177576 res!84174) b!177574))

(assert (= (and b!177582 c!31782) b!177579))

(assert (= (and b!177582 (not c!31782)) b!177578))

(declare-fun b_lambda!7089 () Bool)

(assert (=> (not b_lambda!7089) (not b!177574)))

(assert (=> b!177574 t!7118))

(declare-fun b_and!10915 () Bool)

(assert (= b_and!10913 (and (=> t!7118 result!4661) b_and!10915)))

(declare-fun b_lambda!7091 () Bool)

(assert (=> (not b_lambda!7091) (not b!177583)))

(assert (=> b!177583 t!7118))

(declare-fun b_and!10917 () Bool)

(assert (= b_and!10915 (and (=> t!7118 result!4661) b_and!10917)))

(declare-fun m!206059 () Bool)

(assert (=> bm!17963 m!206059))

(assert (=> b!177580 m!205975))

(assert (=> b!177580 m!205975))

(assert (=> b!177580 m!206019))

(declare-fun m!206061 () Bool)

(assert (=> b!177577 m!206061))

(assert (=> b!177575 m!205975))

(assert (=> b!177575 m!205975))

(assert (=> b!177575 m!206019))

(declare-fun m!206063 () Bool)

(assert (=> d!53681 m!206063))

(assert (=> d!53681 m!205933))

(assert (=> b!177576 m!205975))

(assert (=> b!177576 m!205975))

(declare-fun m!206065 () Bool)

(assert (=> b!177576 m!206065))

(declare-fun m!206067 () Bool)

(assert (=> b!177578 m!206067))

(assert (=> b!177579 m!206059))

(assert (=> b!177574 m!205975))

(assert (=> b!177574 m!205975))

(declare-fun m!206069 () Bool)

(assert (=> b!177574 m!206069))

(assert (=> b!177574 m!206007))

(assert (=> b!177574 m!206007))

(assert (=> b!177574 m!206009))

(assert (=> b!177574 m!206011))

(assert (=> b!177574 m!206009))

(declare-fun m!206071 () Bool)

(assert (=> b!177583 m!206071))

(assert (=> b!177583 m!205975))

(declare-fun m!206073 () Bool)

(assert (=> b!177583 m!206073))

(declare-fun m!206075 () Bool)

(assert (=> b!177583 m!206075))

(assert (=> b!177583 m!206007))

(assert (=> b!177583 m!206007))

(assert (=> b!177583 m!206009))

(assert (=> b!177583 m!206011))

(assert (=> b!177583 m!206073))

(assert (=> b!177583 m!206009))

(declare-fun m!206077 () Bool)

(assert (=> b!177583 m!206077))

(assert (=> b!177502 d!53681))

(declare-fun d!53683 () Bool)

(declare-fun get!2022 (Option!201) V!5195)

(assert (=> d!53683 (= (apply!141 lt!87755 lt!87761) (get!2022 (getValueByKey!195 (toList!1138 lt!87755) lt!87761)))))

(declare-fun bs!7294 () Bool)

(assert (= bs!7294 d!53683))

(declare-fun m!206079 () Bool)

(assert (=> bs!7294 m!206079))

(assert (=> bs!7294 m!206079))

(declare-fun m!206081 () Bool)

(assert (=> bs!7294 m!206081))

(assert (=> b!177502 d!53683))

(declare-fun d!53685 () Bool)

(assert (=> d!53685 (= (apply!141 (+!253 lt!87755 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))) lt!87761) (apply!141 lt!87755 lt!87761))))

(declare-fun lt!87817 () Unit!5421)

(declare-fun choose!954 (ListLongMap!2245 (_ BitVec 64) V!5195 (_ BitVec 64)) Unit!5421)

(assert (=> d!53685 (= lt!87817 (choose!954 lt!87755 lt!87759 (minValue!3496 thiss!1248) lt!87761))))

(declare-fun e!117106 () Bool)

(assert (=> d!53685 e!117106))

(declare-fun res!84179 () Bool)

(assert (=> d!53685 (=> (not res!84179) (not e!117106))))

(assert (=> d!53685 (= res!84179 (contains!1198 lt!87755 lt!87761))))

(assert (=> d!53685 (= (addApplyDifferent!117 lt!87755 lt!87759 (minValue!3496 thiss!1248) lt!87761) lt!87817)))

(declare-fun b!177588 () Bool)

(assert (=> b!177588 (= e!117106 (not (= lt!87761 lt!87759)))))

(assert (= (and d!53685 res!84179) b!177588))

(assert (=> d!53685 m!205977))

(declare-fun m!206083 () Bool)

(assert (=> d!53685 m!206083))

(assert (=> d!53685 m!205979))

(assert (=> d!53685 m!205981))

(declare-fun m!206085 () Bool)

(assert (=> d!53685 m!206085))

(assert (=> d!53685 m!205979))

(assert (=> b!177502 d!53685))

(declare-fun d!53687 () Bool)

(assert (=> d!53687 (= (apply!141 (+!253 lt!87751 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))) lt!87771) (get!2022 (getValueByKey!195 (toList!1138 (+!253 lt!87751 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))) lt!87771)))))

(declare-fun bs!7295 () Bool)

(assert (= bs!7295 d!53687))

(declare-fun m!206087 () Bool)

(assert (=> bs!7295 m!206087))

(assert (=> bs!7295 m!206087))

(declare-fun m!206089 () Bool)

(assert (=> bs!7295 m!206089))

(assert (=> b!177502 d!53687))

(declare-fun d!53689 () Bool)

(declare-fun e!117107 () Bool)

(assert (=> d!53689 e!117107))

(declare-fun res!84181 () Bool)

(assert (=> d!53689 (=> (not res!84181) (not e!117107))))

(declare-fun lt!87821 () ListLongMap!2245)

(assert (=> d!53689 (= res!84181 (contains!1198 lt!87821 (_1!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))))))

(declare-fun lt!87819 () List!2276)

(assert (=> d!53689 (= lt!87821 (ListLongMap!2246 lt!87819))))

(declare-fun lt!87818 () Unit!5421)

(declare-fun lt!87820 () Unit!5421)

(assert (=> d!53689 (= lt!87818 lt!87820)))

(assert (=> d!53689 (= (getValueByKey!195 lt!87819 (_1!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))))))

(assert (=> d!53689 (= lt!87820 (lemmaContainsTupThenGetReturnValue!104 lt!87819 (_1!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))))))

(assert (=> d!53689 (= lt!87819 (insertStrictlySorted!106 (toList!1138 lt!87755) (_1!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))))))

(assert (=> d!53689 (= (+!253 lt!87755 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))) lt!87821)))

(declare-fun b!177589 () Bool)

(declare-fun res!84180 () Bool)

(assert (=> b!177589 (=> (not res!84180) (not e!117107))))

(assert (=> b!177589 (= res!84180 (= (getValueByKey!195 (toList!1138 lt!87821) (_1!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))))))))

(declare-fun b!177590 () Bool)

(assert (=> b!177590 (= e!117107 (contains!1199 (toList!1138 lt!87821) (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))))))

(assert (= (and d!53689 res!84181) b!177589))

(assert (= (and b!177589 res!84180) b!177590))

(declare-fun m!206091 () Bool)

(assert (=> d!53689 m!206091))

(declare-fun m!206093 () Bool)

(assert (=> d!53689 m!206093))

(declare-fun m!206095 () Bool)

(assert (=> d!53689 m!206095))

(declare-fun m!206097 () Bool)

(assert (=> d!53689 m!206097))

(declare-fun m!206099 () Bool)

(assert (=> b!177589 m!206099))

(declare-fun m!206101 () Bool)

(assert (=> b!177590 m!206101))

(assert (=> b!177502 d!53689))

(declare-fun d!53691 () Bool)

(assert (=> d!53691 (= (apply!141 (+!253 lt!87751 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))) lt!87771) (apply!141 lt!87751 lt!87771))))

(declare-fun lt!87822 () Unit!5421)

(assert (=> d!53691 (= lt!87822 (choose!954 lt!87751 lt!87760 (zeroValue!3496 thiss!1248) lt!87771))))

(declare-fun e!117108 () Bool)

(assert (=> d!53691 e!117108))

(declare-fun res!84182 () Bool)

(assert (=> d!53691 (=> (not res!84182) (not e!117108))))

(assert (=> d!53691 (= res!84182 (contains!1198 lt!87751 lt!87771))))

(assert (=> d!53691 (= (addApplyDifferent!117 lt!87751 lt!87760 (zeroValue!3496 thiss!1248) lt!87771) lt!87822)))

(declare-fun b!177591 () Bool)

(assert (=> b!177591 (= e!117108 (not (= lt!87771 lt!87760)))))

(assert (= (and d!53691 res!84182) b!177591))

(assert (=> d!53691 m!206001))

(declare-fun m!206103 () Bool)

(assert (=> d!53691 m!206103))

(assert (=> d!53691 m!205971))

(assert (=> d!53691 m!205995))

(declare-fun m!206105 () Bool)

(assert (=> d!53691 m!206105))

(assert (=> d!53691 m!205971))

(assert (=> b!177502 d!53691))

(declare-fun d!53693 () Bool)

(assert (=> d!53693 (contains!1198 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))) lt!87754)))

(declare-fun lt!87825 () Unit!5421)

(declare-fun choose!955 (ListLongMap!2245 (_ BitVec 64) V!5195 (_ BitVec 64)) Unit!5421)

(assert (=> d!53693 (= lt!87825 (choose!955 lt!87758 lt!87756 (zeroValue!3496 thiss!1248) lt!87754))))

(assert (=> d!53693 (contains!1198 lt!87758 lt!87754)))

(assert (=> d!53693 (= (addStillContains!117 lt!87758 lt!87756 (zeroValue!3496 thiss!1248) lt!87754) lt!87825)))

(declare-fun bs!7296 () Bool)

(assert (= bs!7296 d!53693))

(assert (=> bs!7296 m!205973))

(assert (=> bs!7296 m!205973))

(assert (=> bs!7296 m!205985))

(declare-fun m!206107 () Bool)

(assert (=> bs!7296 m!206107))

(declare-fun m!206109 () Bool)

(assert (=> bs!7296 m!206109))

(assert (=> b!177502 d!53693))

(declare-fun d!53695 () Bool)

(assert (=> d!53695 (= (apply!141 (+!253 lt!87770 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))) lt!87764) (apply!141 lt!87770 lt!87764))))

(declare-fun lt!87826 () Unit!5421)

(assert (=> d!53695 (= lt!87826 (choose!954 lt!87770 lt!87763 (minValue!3496 thiss!1248) lt!87764))))

(declare-fun e!117109 () Bool)

(assert (=> d!53695 e!117109))

(declare-fun res!84183 () Bool)

(assert (=> d!53695 (=> (not res!84183) (not e!117109))))

(assert (=> d!53695 (= res!84183 (contains!1198 lt!87770 lt!87764))))

(assert (=> d!53695 (= (addApplyDifferent!117 lt!87770 lt!87763 (minValue!3496 thiss!1248) lt!87764) lt!87826)))

(declare-fun b!177593 () Bool)

(assert (=> b!177593 (= e!117109 (not (= lt!87764 lt!87763)))))

(assert (= (and d!53695 res!84183) b!177593))

(assert (=> d!53695 m!205997))

(declare-fun m!206111 () Bool)

(assert (=> d!53695 m!206111))

(assert (=> d!53695 m!205989))

(assert (=> d!53695 m!205991))

(declare-fun m!206113 () Bool)

(assert (=> d!53695 m!206113))

(assert (=> d!53695 m!205989))

(assert (=> b!177502 d!53695))

(declare-fun d!53697 () Bool)

(declare-fun e!117110 () Bool)

(assert (=> d!53697 e!117110))

(declare-fun res!84185 () Bool)

(assert (=> d!53697 (=> (not res!84185) (not e!117110))))

(declare-fun lt!87830 () ListLongMap!2245)

(assert (=> d!53697 (= res!84185 (contains!1198 lt!87830 (_1!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))))))

(declare-fun lt!87828 () List!2276)

(assert (=> d!53697 (= lt!87830 (ListLongMap!2246 lt!87828))))

(declare-fun lt!87827 () Unit!5421)

(declare-fun lt!87829 () Unit!5421)

(assert (=> d!53697 (= lt!87827 lt!87829)))

(assert (=> d!53697 (= (getValueByKey!195 lt!87828 (_1!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))))))

(assert (=> d!53697 (= lt!87829 (lemmaContainsTupThenGetReturnValue!104 lt!87828 (_1!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))))))

(assert (=> d!53697 (= lt!87828 (insertStrictlySorted!106 (toList!1138 lt!87770) (_1!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))))))

(assert (=> d!53697 (= (+!253 lt!87770 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))) lt!87830)))

(declare-fun b!177594 () Bool)

(declare-fun res!84184 () Bool)

(assert (=> b!177594 (=> (not res!84184) (not e!117110))))

(assert (=> b!177594 (= res!84184 (= (getValueByKey!195 (toList!1138 lt!87830) (_1!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))))))))

(declare-fun b!177595 () Bool)

(assert (=> b!177595 (= e!117110 (contains!1199 (toList!1138 lt!87830) (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))))))

(assert (= (and d!53697 res!84185) b!177594))

(assert (= (and b!177594 res!84184) b!177595))

(declare-fun m!206115 () Bool)

(assert (=> d!53697 m!206115))

(declare-fun m!206117 () Bool)

(assert (=> d!53697 m!206117))

(declare-fun m!206119 () Bool)

(assert (=> d!53697 m!206119))

(declare-fun m!206121 () Bool)

(assert (=> d!53697 m!206121))

(declare-fun m!206123 () Bool)

(assert (=> b!177594 m!206123))

(declare-fun m!206125 () Bool)

(assert (=> b!177595 m!206125))

(assert (=> b!177502 d!53697))

(declare-fun d!53699 () Bool)

(declare-fun e!117111 () Bool)

(assert (=> d!53699 e!117111))

(declare-fun res!84187 () Bool)

(assert (=> d!53699 (=> (not res!84187) (not e!117111))))

(declare-fun lt!87834 () ListLongMap!2245)

(assert (=> d!53699 (= res!84187 (contains!1198 lt!87834 (_1!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))))))

(declare-fun lt!87832 () List!2276)

(assert (=> d!53699 (= lt!87834 (ListLongMap!2246 lt!87832))))

(declare-fun lt!87831 () Unit!5421)

(declare-fun lt!87833 () Unit!5421)

(assert (=> d!53699 (= lt!87831 lt!87833)))

(assert (=> d!53699 (= (getValueByKey!195 lt!87832 (_1!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))))))

(assert (=> d!53699 (= lt!87833 (lemmaContainsTupThenGetReturnValue!104 lt!87832 (_1!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))))))

(assert (=> d!53699 (= lt!87832 (insertStrictlySorted!106 (toList!1138 lt!87751) (_1!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))))))

(assert (=> d!53699 (= (+!253 lt!87751 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))) lt!87834)))

(declare-fun b!177596 () Bool)

(declare-fun res!84186 () Bool)

(assert (=> b!177596 (=> (not res!84186) (not e!117111))))

(assert (=> b!177596 (= res!84186 (= (getValueByKey!195 (toList!1138 lt!87834) (_1!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))))))))

(declare-fun b!177597 () Bool)

(assert (=> b!177597 (= e!117111 (contains!1199 (toList!1138 lt!87834) (tuple2!3305 lt!87760 (zeroValue!3496 thiss!1248))))))

(assert (= (and d!53699 res!84187) b!177596))

(assert (= (and b!177596 res!84186) b!177597))

(declare-fun m!206127 () Bool)

(assert (=> d!53699 m!206127))

(declare-fun m!206129 () Bool)

(assert (=> d!53699 m!206129))

(declare-fun m!206131 () Bool)

(assert (=> d!53699 m!206131))

(declare-fun m!206133 () Bool)

(assert (=> d!53699 m!206133))

(declare-fun m!206135 () Bool)

(assert (=> b!177596 m!206135))

(declare-fun m!206137 () Bool)

(assert (=> b!177597 m!206137))

(assert (=> b!177502 d!53699))

(declare-fun d!53701 () Bool)

(assert (=> d!53701 (= (apply!141 lt!87751 lt!87771) (get!2022 (getValueByKey!195 (toList!1138 lt!87751) lt!87771)))))

(declare-fun bs!7297 () Bool)

(assert (= bs!7297 d!53701))

(declare-fun m!206139 () Bool)

(assert (=> bs!7297 m!206139))

(assert (=> bs!7297 m!206139))

(declare-fun m!206141 () Bool)

(assert (=> bs!7297 m!206141))

(assert (=> b!177502 d!53701))

(declare-fun d!53703 () Bool)

(assert (=> d!53703 (= (apply!141 (+!253 lt!87770 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248))) lt!87764) (get!2022 (getValueByKey!195 (toList!1138 (+!253 lt!87770 (tuple2!3305 lt!87763 (minValue!3496 thiss!1248)))) lt!87764)))))

(declare-fun bs!7298 () Bool)

(assert (= bs!7298 d!53703))

(declare-fun m!206143 () Bool)

(assert (=> bs!7298 m!206143))

(assert (=> bs!7298 m!206143))

(declare-fun m!206145 () Bool)

(assert (=> bs!7298 m!206145))

(assert (=> b!177502 d!53703))

(declare-fun d!53705 () Bool)

(assert (=> d!53705 (= (apply!141 (+!253 lt!87755 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248))) lt!87761) (get!2022 (getValueByKey!195 (toList!1138 (+!253 lt!87755 (tuple2!3305 lt!87759 (minValue!3496 thiss!1248)))) lt!87761)))))

(declare-fun bs!7299 () Bool)

(assert (= bs!7299 d!53705))

(declare-fun m!206147 () Bool)

(assert (=> bs!7299 m!206147))

(assert (=> bs!7299 m!206147))

(declare-fun m!206149 () Bool)

(assert (=> bs!7299 m!206149))

(assert (=> b!177502 d!53705))

(declare-fun d!53707 () Bool)

(assert (=> d!53707 (= (apply!141 lt!87770 lt!87764) (get!2022 (getValueByKey!195 (toList!1138 lt!87770) lt!87764)))))

(declare-fun bs!7300 () Bool)

(assert (= bs!7300 d!53707))

(declare-fun m!206151 () Bool)

(assert (=> bs!7300 m!206151))

(assert (=> bs!7300 m!206151))

(declare-fun m!206153 () Bool)

(assert (=> bs!7300 m!206153))

(assert (=> b!177502 d!53707))

(declare-fun d!53709 () Bool)

(declare-fun e!117112 () Bool)

(assert (=> d!53709 e!117112))

(declare-fun res!84189 () Bool)

(assert (=> d!53709 (=> (not res!84189) (not e!117112))))

(declare-fun lt!87838 () ListLongMap!2245)

(assert (=> d!53709 (= res!84189 (contains!1198 lt!87838 (_1!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))))))

(declare-fun lt!87836 () List!2276)

(assert (=> d!53709 (= lt!87838 (ListLongMap!2246 lt!87836))))

(declare-fun lt!87835 () Unit!5421)

(declare-fun lt!87837 () Unit!5421)

(assert (=> d!53709 (= lt!87835 lt!87837)))

(assert (=> d!53709 (= (getValueByKey!195 lt!87836 (_1!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))))))

(assert (=> d!53709 (= lt!87837 (lemmaContainsTupThenGetReturnValue!104 lt!87836 (_1!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))))))

(assert (=> d!53709 (= lt!87836 (insertStrictlySorted!106 (toList!1138 lt!87758) (_1!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))))))

(assert (=> d!53709 (= (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))) lt!87838)))

(declare-fun b!177598 () Bool)

(declare-fun res!84188 () Bool)

(assert (=> b!177598 (=> (not res!84188) (not e!117112))))

(assert (=> b!177598 (= res!84188 (= (getValueByKey!195 (toList!1138 lt!87838) (_1!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))))))))

(declare-fun b!177599 () Bool)

(assert (=> b!177599 (= e!117112 (contains!1199 (toList!1138 lt!87838) (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))))))

(assert (= (and d!53709 res!84189) b!177598))

(assert (= (and b!177598 res!84188) b!177599))

(declare-fun m!206155 () Bool)

(assert (=> d!53709 m!206155))

(declare-fun m!206157 () Bool)

(assert (=> d!53709 m!206157))

(declare-fun m!206159 () Bool)

(assert (=> d!53709 m!206159))

(declare-fun m!206161 () Bool)

(assert (=> d!53709 m!206161))

(declare-fun m!206163 () Bool)

(assert (=> b!177598 m!206163))

(declare-fun m!206165 () Bool)

(assert (=> b!177599 m!206165))

(assert (=> b!177502 d!53709))

(declare-fun d!53711 () Bool)

(declare-fun e!117114 () Bool)

(assert (=> d!53711 e!117114))

(declare-fun res!84190 () Bool)

(assert (=> d!53711 (=> res!84190 e!117114)))

(declare-fun lt!87839 () Bool)

(assert (=> d!53711 (= res!84190 (not lt!87839))))

(declare-fun lt!87840 () Bool)

(assert (=> d!53711 (= lt!87839 lt!87840)))

(declare-fun lt!87841 () Unit!5421)

(declare-fun e!117113 () Unit!5421)

(assert (=> d!53711 (= lt!87841 e!117113)))

(declare-fun c!31786 () Bool)

(assert (=> d!53711 (= c!31786 lt!87840)))

(assert (=> d!53711 (= lt!87840 (containsKey!199 (toList!1138 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))) lt!87754))))

(assert (=> d!53711 (= (contains!1198 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248))) lt!87754) lt!87839)))

(declare-fun b!177600 () Bool)

(declare-fun lt!87842 () Unit!5421)

(assert (=> b!177600 (= e!117113 lt!87842)))

(assert (=> b!177600 (= lt!87842 (lemmaContainsKeyImpliesGetValueByKeyDefined!148 (toList!1138 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))) lt!87754))))

(assert (=> b!177600 (isDefined!149 (getValueByKey!195 (toList!1138 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))) lt!87754))))

(declare-fun b!177601 () Bool)

(declare-fun Unit!5425 () Unit!5421)

(assert (=> b!177601 (= e!117113 Unit!5425)))

(declare-fun b!177602 () Bool)

(assert (=> b!177602 (= e!117114 (isDefined!149 (getValueByKey!195 (toList!1138 (+!253 lt!87758 (tuple2!3305 lt!87756 (zeroValue!3496 thiss!1248)))) lt!87754)))))

(assert (= (and d!53711 c!31786) b!177600))

(assert (= (and d!53711 (not c!31786)) b!177601))

(assert (= (and d!53711 (not res!84190)) b!177602))

(declare-fun m!206167 () Bool)

(assert (=> d!53711 m!206167))

(declare-fun m!206169 () Bool)

(assert (=> b!177600 m!206169))

(declare-fun m!206171 () Bool)

(assert (=> b!177600 m!206171))

(assert (=> b!177600 m!206171))

(declare-fun m!206173 () Bool)

(assert (=> b!177600 m!206173))

(assert (=> b!177602 m!206171))

(assert (=> b!177602 m!206171))

(assert (=> b!177602 m!206173))

(assert (=> b!177502 d!53711))

(declare-fun b!177614 () Bool)

(declare-fun e!117117 () Bool)

(assert (=> b!177614 (= e!117117 (and (bvsge (extraKeys!3392 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3392 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1240 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!177611 () Bool)

(declare-fun res!84199 () Bool)

(assert (=> b!177611 (=> (not res!84199) (not e!117117))))

(assert (=> b!177611 (= res!84199 (and (= (size!3849 (_values!3638 thiss!1248)) (bvadd (mask!8595 thiss!1248) #b00000000000000000000000000000001)) (= (size!3848 (_keys!5523 thiss!1248)) (size!3849 (_values!3638 thiss!1248))) (bvsge (_size!1240 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1240 thiss!1248) (bvadd (mask!8595 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!177613 () Bool)

(declare-fun res!84200 () Bool)

(assert (=> b!177613 (=> (not res!84200) (not e!117117))))

(declare-fun size!3852 (LongMapFixedSize!2382) (_ BitVec 32))

(assert (=> b!177613 (= res!84200 (= (size!3852 thiss!1248) (bvadd (_size!1240 thiss!1248) (bvsdiv (bvadd (extraKeys!3392 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!53713 () Bool)

(declare-fun res!84201 () Bool)

(assert (=> d!53713 (=> (not res!84201) (not e!117117))))

(assert (=> d!53713 (= res!84201 (validMask!0 (mask!8595 thiss!1248)))))

(assert (=> d!53713 (= (simpleValid!154 thiss!1248) e!117117)))

(declare-fun b!177612 () Bool)

(declare-fun res!84202 () Bool)

(assert (=> b!177612 (=> (not res!84202) (not e!117117))))

(assert (=> b!177612 (= res!84202 (bvsge (size!3852 thiss!1248) (_size!1240 thiss!1248)))))

(assert (= (and d!53713 res!84201) b!177611))

(assert (= (and b!177611 res!84199) b!177612))

(assert (= (and b!177612 res!84202) b!177613))

(assert (= (and b!177613 res!84200) b!177614))

(declare-fun m!206175 () Bool)

(assert (=> b!177613 m!206175))

(assert (=> d!53713 m!205933))

(assert (=> b!177612 m!206175))

(assert (=> d!53675 d!53713))

(declare-fun b!177623 () Bool)

(declare-fun e!117123 () (_ BitVec 32))

(declare-fun e!117122 () (_ BitVec 32))

(assert (=> b!177623 (= e!117123 e!117122)))

(declare-fun c!31791 () Bool)

(assert (=> b!177623 (= c!31791 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17966 () Bool)

(declare-fun call!17969 () (_ BitVec 32))

(assert (=> bm!17966 (= call!17969 (arrayCountValidKeys!0 (_keys!5523 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun b!177624 () Bool)

(assert (=> b!177624 (= e!117122 (bvadd #b00000000000000000000000000000001 call!17969))))

(declare-fun b!177625 () Bool)

(assert (=> b!177625 (= e!117123 #b00000000000000000000000000000000)))

(declare-fun d!53715 () Bool)

(declare-fun lt!87845 () (_ BitVec 32))

(assert (=> d!53715 (and (bvsge lt!87845 #b00000000000000000000000000000000) (bvsle lt!87845 (bvsub (size!3848 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53715 (= lt!87845 e!117123)))

(declare-fun c!31792 () Bool)

(assert (=> d!53715 (= c!31792 (bvsge #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> d!53715 (and (bvsle #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3848 (_keys!5523 thiss!1248)) (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> d!53715 (= (arrayCountValidKeys!0 (_keys!5523 thiss!1248) #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))) lt!87845)))

(declare-fun b!177626 () Bool)

(assert (=> b!177626 (= e!117122 call!17969)))

(assert (= (and d!53715 c!31792) b!177625))

(assert (= (and d!53715 (not c!31792)) b!177623))

(assert (= (and b!177623 c!31791) b!177624))

(assert (= (and b!177623 (not c!31791)) b!177626))

(assert (= (or b!177624 b!177626) bm!17966))

(assert (=> b!177623 m!205975))

(assert (=> b!177623 m!205975))

(assert (=> b!177623 m!206019))

(declare-fun m!206177 () Bool)

(assert (=> bm!17966 m!206177))

(assert (=> b!177532 d!53715))

(declare-fun d!53717 () Bool)

(assert (=> d!53717 (= (apply!141 lt!87752 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)) (get!2022 (getValueByKey!195 (toList!1138 lt!87752) (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7301 () Bool)

(assert (= bs!7301 d!53717))

(assert (=> bs!7301 m!205975))

(declare-fun m!206179 () Bool)

(assert (=> bs!7301 m!206179))

(assert (=> bs!7301 m!206179))

(declare-fun m!206181 () Bool)

(assert (=> bs!7301 m!206181))

(assert (=> b!177485 d!53717))

(declare-fun d!53719 () Bool)

(declare-fun c!31795 () Bool)

(assert (=> d!53719 (= c!31795 ((_ is ValueCellFull!1737) (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!117126 () V!5195)

(assert (=> d!53719 (= (get!2021 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!117126)))

(declare-fun b!177631 () Bool)

(declare-fun get!2023 (ValueCell!1737 V!5195) V!5195)

(assert (=> b!177631 (= e!117126 (get!2023 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!177632 () Bool)

(declare-fun get!2024 (ValueCell!1737 V!5195) V!5195)

(assert (=> b!177632 (= e!117126 (get!2024 (select (arr!3545 (_values!3638 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!479 (defaultEntry!3655 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53719 c!31795) b!177631))

(assert (= (and d!53719 (not c!31795)) b!177632))

(assert (=> b!177631 m!206007))

(assert (=> b!177631 m!206009))

(declare-fun m!206183 () Bool)

(assert (=> b!177631 m!206183))

(assert (=> b!177632 m!206007))

(assert (=> b!177632 m!206009))

(declare-fun m!206185 () Bool)

(assert (=> b!177632 m!206185))

(assert (=> b!177485 d!53719))

(declare-fun d!53721 () Bool)

(declare-fun e!117128 () Bool)

(assert (=> d!53721 e!117128))

(declare-fun res!84203 () Bool)

(assert (=> d!53721 (=> res!84203 e!117128)))

(declare-fun lt!87846 () Bool)

(assert (=> d!53721 (= res!84203 (not lt!87846))))

(declare-fun lt!87847 () Bool)

(assert (=> d!53721 (= lt!87846 lt!87847)))

(declare-fun lt!87848 () Unit!5421)

(declare-fun e!117127 () Unit!5421)

(assert (=> d!53721 (= lt!87848 e!117127)))

(declare-fun c!31796 () Bool)

(assert (=> d!53721 (= c!31796 lt!87847)))

(assert (=> d!53721 (= lt!87847 (containsKey!199 (toList!1138 lt!87752) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53721 (= (contains!1198 lt!87752 #b1000000000000000000000000000000000000000000000000000000000000000) lt!87846)))

(declare-fun b!177633 () Bool)

(declare-fun lt!87849 () Unit!5421)

(assert (=> b!177633 (= e!117127 lt!87849)))

(assert (=> b!177633 (= lt!87849 (lemmaContainsKeyImpliesGetValueByKeyDefined!148 (toList!1138 lt!87752) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!177633 (isDefined!149 (getValueByKey!195 (toList!1138 lt!87752) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!177634 () Bool)

(declare-fun Unit!5426 () Unit!5421)

(assert (=> b!177634 (= e!117127 Unit!5426)))

(declare-fun b!177635 () Bool)

(assert (=> b!177635 (= e!117128 (isDefined!149 (getValueByKey!195 (toList!1138 lt!87752) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53721 c!31796) b!177633))

(assert (= (and d!53721 (not c!31796)) b!177634))

(assert (= (and d!53721 (not res!84203)) b!177635))

(declare-fun m!206187 () Bool)

(assert (=> d!53721 m!206187))

(declare-fun m!206189 () Bool)

(assert (=> b!177633 m!206189))

(declare-fun m!206191 () Bool)

(assert (=> b!177633 m!206191))

(assert (=> b!177633 m!206191))

(declare-fun m!206193 () Bool)

(assert (=> b!177633 m!206193))

(assert (=> b!177635 m!206191))

(assert (=> b!177635 m!206191))

(assert (=> b!177635 m!206193))

(assert (=> bm!17955 d!53721))

(declare-fun b!177648 () Bool)

(declare-fun e!117135 () SeekEntryResult!578)

(assert (=> b!177648 (= e!117135 (Found!578 (index!4482 lt!87780)))))

(declare-fun b!177649 () Bool)

(declare-fun e!117136 () SeekEntryResult!578)

(assert (=> b!177649 (= e!117136 e!117135)))

(declare-fun c!31804 () Bool)

(declare-fun lt!87854 () (_ BitVec 64))

(assert (=> b!177649 (= c!31804 (= lt!87854 key!828))))

(declare-fun e!117137 () SeekEntryResult!578)

(declare-fun b!177650 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!177650 (= e!117137 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19476 lt!87780) #b00000000000000000000000000000001) (nextIndex!0 (index!4482 lt!87780) (x!19476 lt!87780) (mask!8595 thiss!1248)) (index!4482 lt!87780) key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)))))

(declare-fun d!53723 () Bool)

(declare-fun lt!87855 () SeekEntryResult!578)

(assert (=> d!53723 (and (or ((_ is Undefined!578) lt!87855) (not ((_ is Found!578) lt!87855)) (and (bvsge (index!4481 lt!87855) #b00000000000000000000000000000000) (bvslt (index!4481 lt!87855) (size!3848 (_keys!5523 thiss!1248))))) (or ((_ is Undefined!578) lt!87855) ((_ is Found!578) lt!87855) (not ((_ is MissingVacant!578) lt!87855)) (not (= (index!4483 lt!87855) (index!4482 lt!87780))) (and (bvsge (index!4483 lt!87855) #b00000000000000000000000000000000) (bvslt (index!4483 lt!87855) (size!3848 (_keys!5523 thiss!1248))))) (or ((_ is Undefined!578) lt!87855) (ite ((_ is Found!578) lt!87855) (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4481 lt!87855)) key!828) (and ((_ is MissingVacant!578) lt!87855) (= (index!4483 lt!87855) (index!4482 lt!87780)) (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4483 lt!87855)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53723 (= lt!87855 e!117136)))

(declare-fun c!31805 () Bool)

(assert (=> d!53723 (= c!31805 (bvsge (x!19476 lt!87780) #b01111111111111111111111111111110))))

(assert (=> d!53723 (= lt!87854 (select (arr!3544 (_keys!5523 thiss!1248)) (index!4482 lt!87780)))))

(assert (=> d!53723 (validMask!0 (mask!8595 thiss!1248))))

(assert (=> d!53723 (= (seekKeyOrZeroReturnVacant!0 (x!19476 lt!87780) (index!4482 lt!87780) (index!4482 lt!87780) key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)) lt!87855)))

(declare-fun b!177651 () Bool)

(assert (=> b!177651 (= e!117137 (MissingVacant!578 (index!4482 lt!87780)))))

(declare-fun b!177652 () Bool)

(declare-fun c!31803 () Bool)

(assert (=> b!177652 (= c!31803 (= lt!87854 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!177652 (= e!117135 e!117137)))

(declare-fun b!177653 () Bool)

(assert (=> b!177653 (= e!117136 Undefined!578)))

(assert (= (and d!53723 c!31805) b!177653))

(assert (= (and d!53723 (not c!31805)) b!177649))

(assert (= (and b!177649 c!31804) b!177648))

(assert (= (and b!177649 (not c!31804)) b!177652))

(assert (= (and b!177652 c!31803) b!177651))

(assert (= (and b!177652 (not c!31803)) b!177650))

(declare-fun m!206195 () Bool)

(assert (=> b!177650 m!206195))

(assert (=> b!177650 m!206195))

(declare-fun m!206197 () Bool)

(assert (=> b!177650 m!206197))

(declare-fun m!206199 () Bool)

(assert (=> d!53723 m!206199))

(declare-fun m!206201 () Bool)

(assert (=> d!53723 m!206201))

(assert (=> d!53723 m!206025))

(assert (=> d!53723 m!205933))

(assert (=> b!177520 d!53723))

(declare-fun d!53725 () Bool)

(declare-fun e!117139 () Bool)

(assert (=> d!53725 e!117139))

(declare-fun res!84204 () Bool)

(assert (=> d!53725 (=> res!84204 e!117139)))

(declare-fun lt!87856 () Bool)

(assert (=> d!53725 (= res!84204 (not lt!87856))))

(declare-fun lt!87857 () Bool)

(assert (=> d!53725 (= lt!87856 lt!87857)))

(declare-fun lt!87858 () Unit!5421)

(declare-fun e!117138 () Unit!5421)

(assert (=> d!53725 (= lt!87858 e!117138)))

(declare-fun c!31806 () Bool)

(assert (=> d!53725 (= c!31806 lt!87857)))

(assert (=> d!53725 (= lt!87857 (containsKey!199 (toList!1138 lt!87752) (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53725 (= (contains!1198 lt!87752 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)) lt!87856)))

(declare-fun b!177654 () Bool)

(declare-fun lt!87859 () Unit!5421)

(assert (=> b!177654 (= e!117138 lt!87859)))

(assert (=> b!177654 (= lt!87859 (lemmaContainsKeyImpliesGetValueByKeyDefined!148 (toList!1138 lt!87752) (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177654 (isDefined!149 (getValueByKey!195 (toList!1138 lt!87752) (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177655 () Bool)

(declare-fun Unit!5427 () Unit!5421)

(assert (=> b!177655 (= e!117138 Unit!5427)))

(declare-fun b!177656 () Bool)

(assert (=> b!177656 (= e!117139 (isDefined!149 (getValueByKey!195 (toList!1138 lt!87752) (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53725 c!31806) b!177654))

(assert (= (and d!53725 (not c!31806)) b!177655))

(assert (= (and d!53725 (not res!84204)) b!177656))

(assert (=> d!53725 m!205975))

(declare-fun m!206203 () Bool)

(assert (=> d!53725 m!206203))

(assert (=> b!177654 m!205975))

(declare-fun m!206205 () Bool)

(assert (=> b!177654 m!206205))

(assert (=> b!177654 m!205975))

(assert (=> b!177654 m!206179))

(assert (=> b!177654 m!206179))

(declare-fun m!206207 () Bool)

(assert (=> b!177654 m!206207))

(assert (=> b!177656 m!205975))

(assert (=> b!177656 m!206179))

(assert (=> b!177656 m!206179))

(assert (=> b!177656 m!206207))

(assert (=> b!177504 d!53725))

(declare-fun b!177665 () Bool)

(declare-fun e!117147 () Bool)

(declare-fun e!117148 () Bool)

(assert (=> b!177665 (= e!117147 e!117148)))

(declare-fun c!31809 () Bool)

(assert (=> b!177665 (= c!31809 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17969 () Bool)

(declare-fun call!17972 () Bool)

(assert (=> bm!17969 (= call!17972 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5523 thiss!1248) (mask!8595 thiss!1248)))))

(declare-fun b!177666 () Bool)

(declare-fun e!117146 () Bool)

(assert (=> b!177666 (= e!117148 e!117146)))

(declare-fun lt!87868 () (_ BitVec 64))

(assert (=> b!177666 (= lt!87868 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87867 () Unit!5421)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7474 (_ BitVec 64) (_ BitVec 32)) Unit!5421)

(assert (=> b!177666 (= lt!87867 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5523 thiss!1248) lt!87868 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!177666 (arrayContainsKey!0 (_keys!5523 thiss!1248) lt!87868 #b00000000000000000000000000000000)))

(declare-fun lt!87866 () Unit!5421)

(assert (=> b!177666 (= lt!87866 lt!87867)))

(declare-fun res!84210 () Bool)

(assert (=> b!177666 (= res!84210 (= (seekEntryOrOpen!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000) (_keys!5523 thiss!1248) (mask!8595 thiss!1248)) (Found!578 #b00000000000000000000000000000000)))))

(assert (=> b!177666 (=> (not res!84210) (not e!117146))))

(declare-fun b!177667 () Bool)

(assert (=> b!177667 (= e!117146 call!17972)))

(declare-fun d!53727 () Bool)

(declare-fun res!84209 () Bool)

(assert (=> d!53727 (=> res!84209 e!117147)))

(assert (=> d!53727 (= res!84209 (bvsge #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> d!53727 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)) e!117147)))

(declare-fun b!177668 () Bool)

(assert (=> b!177668 (= e!117148 call!17972)))

(assert (= (and d!53727 (not res!84209)) b!177665))

(assert (= (and b!177665 c!31809) b!177666))

(assert (= (and b!177665 (not c!31809)) b!177668))

(assert (= (and b!177666 res!84210) b!177667))

(assert (= (or b!177667 b!177668) bm!17969))

(assert (=> b!177665 m!205975))

(assert (=> b!177665 m!205975))

(assert (=> b!177665 m!206019))

(declare-fun m!206209 () Bool)

(assert (=> bm!17969 m!206209))

(assert (=> b!177666 m!205975))

(declare-fun m!206211 () Bool)

(assert (=> b!177666 m!206211))

(declare-fun m!206213 () Bool)

(assert (=> b!177666 m!206213))

(assert (=> b!177666 m!205975))

(declare-fun m!206215 () Bool)

(assert (=> b!177666 m!206215))

(assert (=> b!177533 d!53727))

(declare-fun b!177679 () Bool)

(declare-fun e!117157 () Bool)

(declare-fun e!117160 () Bool)

(assert (=> b!177679 (= e!117157 e!117160)))

(declare-fun res!84217 () Bool)

(assert (=> b!177679 (=> (not res!84217) (not e!117160))))

(declare-fun e!117158 () Bool)

(assert (=> b!177679 (= res!84217 (not e!117158))))

(declare-fun res!84218 () Bool)

(assert (=> b!177679 (=> (not res!84218) (not e!117158))))

(assert (=> b!177679 (= res!84218 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53729 () Bool)

(declare-fun res!84219 () Bool)

(assert (=> d!53729 (=> res!84219 e!117157)))

(assert (=> d!53729 (= res!84219 (bvsge #b00000000000000000000000000000000 (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> d!53729 (= (arrayNoDuplicates!0 (_keys!5523 thiss!1248) #b00000000000000000000000000000000 Nil!2274) e!117157)))

(declare-fun b!177680 () Bool)

(declare-fun e!117159 () Bool)

(assert (=> b!177680 (= e!117160 e!117159)))

(declare-fun c!31812 () Bool)

(assert (=> b!177680 (= c!31812 (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17972 () Bool)

(declare-fun call!17975 () Bool)

(assert (=> bm!17972 (= call!17975 (arrayNoDuplicates!0 (_keys!5523 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31812 (Cons!2273 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000) Nil!2274) Nil!2274)))))

(declare-fun b!177681 () Bool)

(assert (=> b!177681 (= e!117159 call!17975)))

(declare-fun b!177682 () Bool)

(assert (=> b!177682 (= e!117159 call!17975)))

(declare-fun b!177683 () Bool)

(declare-fun contains!1200 (List!2277 (_ BitVec 64)) Bool)

(assert (=> b!177683 (= e!117158 (contains!1200 Nil!2274 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53729 (not res!84219)) b!177679))

(assert (= (and b!177679 res!84218) b!177683))

(assert (= (and b!177679 res!84217) b!177680))

(assert (= (and b!177680 c!31812) b!177681))

(assert (= (and b!177680 (not c!31812)) b!177682))

(assert (= (or b!177681 b!177682) bm!17972))

(assert (=> b!177679 m!205975))

(assert (=> b!177679 m!205975))

(assert (=> b!177679 m!206019))

(assert (=> b!177680 m!205975))

(assert (=> b!177680 m!205975))

(assert (=> b!177680 m!206019))

(assert (=> bm!17972 m!205975))

(declare-fun m!206217 () Bool)

(assert (=> bm!17972 m!206217))

(assert (=> b!177683 m!205975))

(assert (=> b!177683 m!205975))

(declare-fun m!206219 () Bool)

(assert (=> b!177683 m!206219))

(assert (=> b!177534 d!53729))

(declare-fun d!53731 () Bool)

(declare-fun res!84224 () Bool)

(declare-fun e!117165 () Bool)

(assert (=> d!53731 (=> res!84224 e!117165)))

(assert (=> d!53731 (= res!84224 (and ((_ is Cons!2272) (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))) (= (_1!1662 (h!2893 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))))) key!828)))))

(assert (=> d!53731 (= (containsKey!199 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828) e!117165)))

(declare-fun b!177688 () Bool)

(declare-fun e!117166 () Bool)

(assert (=> b!177688 (= e!117165 e!117166)))

(declare-fun res!84225 () Bool)

(assert (=> b!177688 (=> (not res!84225) (not e!117166))))

(assert (=> b!177688 (= res!84225 (and (or (not ((_ is Cons!2272) (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))))) (bvsle (_1!1662 (h!2893 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))))) key!828)) ((_ is Cons!2272) (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))) (bvslt (_1!1662 (h!2893 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))))) key!828)))))

(declare-fun b!177689 () Bool)

(assert (=> b!177689 (= e!117166 (containsKey!199 (t!7116 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))) key!828))))

(assert (= (and d!53731 (not res!84224)) b!177688))

(assert (= (and b!177688 res!84225) b!177689))

(declare-fun m!206221 () Bool)

(assert (=> b!177689 m!206221))

(assert (=> d!53665 d!53731))

(assert (=> bm!17959 d!53681))

(declare-fun d!53733 () Bool)

(assert (=> d!53733 (= (validKeyInArray!0 (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3544 (_keys!5523 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!177497 d!53733))

(assert (=> b!177489 d!53733))

(declare-fun d!53735 () Bool)

(assert (=> d!53735 (isDefined!149 (getValueByKey!195 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))

(declare-fun lt!87871 () Unit!5421)

(declare-fun choose!956 (List!2276 (_ BitVec 64)) Unit!5421)

(assert (=> d!53735 (= lt!87871 (choose!956 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))

(declare-fun e!117169 () Bool)

(assert (=> d!53735 e!117169))

(declare-fun res!84228 () Bool)

(assert (=> d!53735 (=> (not res!84228) (not e!117169))))

(declare-fun isStrictlySorted!332 (List!2276) Bool)

(assert (=> d!53735 (= res!84228 (isStrictlySorted!332 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))))

(assert (=> d!53735 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!148 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828) lt!87871)))

(declare-fun b!177692 () Bool)

(assert (=> b!177692 (= e!117169 (containsKey!199 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))

(assert (= (and d!53735 res!84228) b!177692))

(assert (=> d!53735 m!205961))

(assert (=> d!53735 m!205961))

(assert (=> d!53735 m!205963))

(declare-fun m!206223 () Bool)

(assert (=> d!53735 m!206223))

(declare-fun m!206225 () Bool)

(assert (=> d!53735 m!206225))

(assert (=> b!177692 m!205957))

(assert (=> b!177440 d!53735))

(declare-fun d!53737 () Bool)

(declare-fun isEmpty!453 (Option!201) Bool)

(assert (=> d!53737 (= (isDefined!149 (getValueByKey!195 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828)) (not (isEmpty!453 (getValueByKey!195 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828))))))

(declare-fun bs!7302 () Bool)

(assert (= bs!7302 d!53737))

(assert (=> bs!7302 m!205961))

(declare-fun m!206227 () Bool)

(assert (=> bs!7302 m!206227))

(assert (=> b!177440 d!53737))

(declare-fun b!177703 () Bool)

(declare-fun e!117175 () Option!201)

(assert (=> b!177703 (= e!117175 (getValueByKey!195 (t!7116 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))) key!828))))

(declare-fun b!177701 () Bool)

(declare-fun e!117174 () Option!201)

(assert (=> b!177701 (= e!117174 (Some!200 (_2!1662 (h!2893 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))))))))

(declare-fun b!177702 () Bool)

(assert (=> b!177702 (= e!117174 e!117175)))

(declare-fun c!31818 () Bool)

(assert (=> b!177702 (= c!31818 (and ((_ is Cons!2272) (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))) (not (= (_1!1662 (h!2893 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))))) key!828))))))

(declare-fun d!53739 () Bool)

(declare-fun c!31817 () Bool)

(assert (=> d!53739 (= c!31817 (and ((_ is Cons!2272) (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248)))) (= (_1!1662 (h!2893 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))))) key!828)))))

(assert (=> d!53739 (= (getValueByKey!195 (toList!1138 (getCurrentListMap!785 (_keys!5523 thiss!1248) (_values!3638 thiss!1248) (mask!8595 thiss!1248) (extraKeys!3392 thiss!1248) (zeroValue!3496 thiss!1248) (minValue!3496 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3655 thiss!1248))) key!828) e!117174)))

(declare-fun b!177704 () Bool)

(assert (=> b!177704 (= e!117175 None!199)))

(assert (= (and d!53739 c!31817) b!177701))

(assert (= (and d!53739 (not c!31817)) b!177702))

(assert (= (and b!177702 c!31818) b!177703))

(assert (= (and b!177702 (not c!31818)) b!177704))

(declare-fun m!206229 () Bool)

(assert (=> b!177703 m!206229))

(assert (=> b!177440 d!53739))

(declare-fun d!53741 () Bool)

(assert (=> d!53741 (= (apply!141 lt!87752 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2022 (getValueByKey!195 (toList!1138 lt!87752) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7303 () Bool)

(assert (= bs!7303 d!53741))

(declare-fun m!206231 () Bool)

(assert (=> bs!7303 m!206231))

(assert (=> bs!7303 m!206231))

(declare-fun m!206233 () Bool)

(assert (=> bs!7303 m!206233))

(assert (=> b!177505 d!53741))

(declare-fun d!53743 () Bool)

(declare-fun e!117176 () Bool)

(assert (=> d!53743 e!117176))

(declare-fun res!84230 () Bool)

(assert (=> d!53743 (=> (not res!84230) (not e!117176))))

(declare-fun lt!87875 () ListLongMap!2245)

(assert (=> d!53743 (= res!84230 (contains!1198 lt!87875 (_1!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))

(declare-fun lt!87873 () List!2276)

(assert (=> d!53743 (= lt!87875 (ListLongMap!2246 lt!87873))))

(declare-fun lt!87872 () Unit!5421)

(declare-fun lt!87874 () Unit!5421)

(assert (=> d!53743 (= lt!87872 lt!87874)))

(assert (=> d!53743 (= (getValueByKey!195 lt!87873 (_1!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))

(assert (=> d!53743 (= lt!87874 (lemmaContainsTupThenGetReturnValue!104 lt!87873 (_1!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))

(assert (=> d!53743 (= lt!87873 (insertStrictlySorted!106 (toList!1138 call!17957) (_1!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))) (_2!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))))))

(assert (=> d!53743 (= (+!253 call!17957 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))) lt!87875)))

(declare-fun b!177705 () Bool)

(declare-fun res!84229 () Bool)

(assert (=> b!177705 (=> (not res!84229) (not e!117176))))

(assert (=> b!177705 (= res!84229 (= (getValueByKey!195 (toList!1138 lt!87875) (_1!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248)))) (Some!200 (_2!1662 (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))))

(declare-fun b!177706 () Bool)

(assert (=> b!177706 (= e!117176 (contains!1199 (toList!1138 lt!87875) (tuple2!3305 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3496 thiss!1248))))))

(assert (= (and d!53743 res!84230) b!177705))

(assert (= (and b!177705 res!84229) b!177706))

(declare-fun m!206235 () Bool)

(assert (=> d!53743 m!206235))

(declare-fun m!206237 () Bool)

(assert (=> d!53743 m!206237))

(declare-fun m!206239 () Bool)

(assert (=> d!53743 m!206239))

(declare-fun m!206241 () Bool)

(assert (=> d!53743 m!206241))

(declare-fun m!206243 () Bool)

(assert (=> b!177705 m!206243))

(declare-fun m!206245 () Bool)

(assert (=> b!177706 m!206245))

(assert (=> b!177499 d!53743))

(declare-fun d!53745 () Bool)

(assert (=> d!53745 (= (apply!141 lt!87752 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2022 (getValueByKey!195 (toList!1138 lt!87752) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7304 () Bool)

(assert (= bs!7304 d!53745))

(assert (=> bs!7304 m!206191))

(assert (=> bs!7304 m!206191))

(declare-fun m!206247 () Bool)

(assert (=> bs!7304 m!206247))

(assert (=> b!177500 d!53745))

(assert (=> d!53667 d!53677))

(declare-fun d!53747 () Bool)

(declare-fun e!117187 () Bool)

(assert (=> d!53747 e!117187))

(declare-fun c!31826 () Bool)

(declare-fun lt!87881 () SeekEntryResult!578)

(assert (=> d!53747 (= c!31826 (and ((_ is Intermediate!578) lt!87881) (undefined!1390 lt!87881)))))

(declare-fun e!117191 () SeekEntryResult!578)

(assert (=> d!53747 (= lt!87881 e!117191)))

(declare-fun c!31825 () Bool)

(assert (=> d!53747 (= c!31825 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!87880 () (_ BitVec 64))

(assert (=> d!53747 (= lt!87880 (select (arr!3544 (_keys!5523 thiss!1248)) (toIndex!0 key!828 (mask!8595 thiss!1248))))))

(assert (=> d!53747 (validMask!0 (mask!8595 thiss!1248))))

(assert (=> d!53747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8595 thiss!1248)) key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)) lt!87881)))

(declare-fun b!177725 () Bool)

(assert (=> b!177725 (and (bvsge (index!4482 lt!87881) #b00000000000000000000000000000000) (bvslt (index!4482 lt!87881) (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun res!84239 () Bool)

(assert (=> b!177725 (= res!84239 (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4482 lt!87881)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!117188 () Bool)

(assert (=> b!177725 (=> res!84239 e!117188)))

(declare-fun b!177726 () Bool)

(assert (=> b!177726 (= e!117187 (bvsge (x!19476 lt!87881) #b01111111111111111111111111111110))))

(declare-fun b!177727 () Bool)

(declare-fun e!117190 () SeekEntryResult!578)

(assert (=> b!177727 (= e!117191 e!117190)))

(declare-fun c!31827 () Bool)

(assert (=> b!177727 (= c!31827 (or (= lt!87880 key!828) (= (bvadd lt!87880 lt!87880) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!177728 () Bool)

(assert (=> b!177728 (and (bvsge (index!4482 lt!87881) #b00000000000000000000000000000000) (bvslt (index!4482 lt!87881) (size!3848 (_keys!5523 thiss!1248))))))

(assert (=> b!177728 (= e!117188 (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4482 lt!87881)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!177729 () Bool)

(declare-fun e!117189 () Bool)

(assert (=> b!177729 (= e!117187 e!117189)))

(declare-fun res!84238 () Bool)

(assert (=> b!177729 (= res!84238 (and ((_ is Intermediate!578) lt!87881) (not (undefined!1390 lt!87881)) (bvslt (x!19476 lt!87881) #b01111111111111111111111111111110) (bvsge (x!19476 lt!87881) #b00000000000000000000000000000000) (bvsge (x!19476 lt!87881) #b00000000000000000000000000000000)))))

(assert (=> b!177729 (=> (not res!84238) (not e!117189))))

(declare-fun b!177730 () Bool)

(assert (=> b!177730 (and (bvsge (index!4482 lt!87881) #b00000000000000000000000000000000) (bvslt (index!4482 lt!87881) (size!3848 (_keys!5523 thiss!1248))))))

(declare-fun res!84237 () Bool)

(assert (=> b!177730 (= res!84237 (= (select (arr!3544 (_keys!5523 thiss!1248)) (index!4482 lt!87881)) key!828))))

(assert (=> b!177730 (=> res!84237 e!117188)))

(assert (=> b!177730 (= e!117189 e!117188)))

(declare-fun b!177731 () Bool)

(assert (=> b!177731 (= e!117190 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8595 thiss!1248)) #b00000000000000000000000000000000 (mask!8595 thiss!1248)) key!828 (_keys!5523 thiss!1248) (mask!8595 thiss!1248)))))

(declare-fun b!177732 () Bool)

(assert (=> b!177732 (= e!117190 (Intermediate!578 false (toIndex!0 key!828 (mask!8595 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!177733 () Bool)

(assert (=> b!177733 (= e!117191 (Intermediate!578 true (toIndex!0 key!828 (mask!8595 thiss!1248)) #b00000000000000000000000000000000))))

(assert (= (and d!53747 c!31825) b!177733))

(assert (= (and d!53747 (not c!31825)) b!177727))

(assert (= (and b!177727 c!31827) b!177732))

(assert (= (and b!177727 (not c!31827)) b!177731))

(assert (= (and d!53747 c!31826) b!177726))

(assert (= (and d!53747 (not c!31826)) b!177729))

(assert (= (and b!177729 res!84238) b!177730))

(assert (= (and b!177730 (not res!84237)) b!177725))

(assert (= (and b!177725 (not res!84239)) b!177728))

(assert (=> b!177731 m!206029))

(declare-fun m!206249 () Bool)

(assert (=> b!177731 m!206249))

(assert (=> b!177731 m!206249))

(declare-fun m!206251 () Bool)

(assert (=> b!177731 m!206251))

(declare-fun m!206253 () Bool)

(assert (=> b!177725 m!206253))

(assert (=> b!177730 m!206253))

(assert (=> b!177728 m!206253))

(assert (=> d!53747 m!206029))

(declare-fun m!206255 () Bool)

(assert (=> d!53747 m!206255))

(assert (=> d!53747 m!205933))

(assert (=> d!53669 d!53747))

(declare-fun d!53749 () Bool)

(declare-fun lt!87887 () (_ BitVec 32))

(declare-fun lt!87886 () (_ BitVec 32))

(assert (=> d!53749 (= lt!87887 (bvmul (bvxor lt!87886 (bvlshr lt!87886 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53749 (= lt!87886 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53749 (and (bvsge (mask!8595 thiss!1248) #b00000000000000000000000000000000) (let ((res!84240 (let ((h!2895 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19495 (bvmul (bvxor h!2895 (bvlshr h!2895 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19495 (bvlshr x!19495 #b00000000000000000000000000001101)) (mask!8595 thiss!1248)))))) (and (bvslt res!84240 (bvadd (mask!8595 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!84240 #b00000000000000000000000000000000))))))

(assert (=> d!53749 (= (toIndex!0 key!828 (mask!8595 thiss!1248)) (bvand (bvxor lt!87887 (bvlshr lt!87887 #b00000000000000000000000000001101)) (mask!8595 thiss!1248)))))

(assert (=> d!53669 d!53749))

(assert (=> d!53669 d!53677))

(assert (=> b!177442 d!53737))

(assert (=> b!177442 d!53739))

(declare-fun d!53751 () Bool)

(declare-fun e!117193 () Bool)

(assert (=> d!53751 e!117193))

(declare-fun res!84241 () Bool)

(assert (=> d!53751 (=> res!84241 e!117193)))

(declare-fun lt!87888 () Bool)

(assert (=> d!53751 (= res!84241 (not lt!87888))))

(declare-fun lt!87889 () Bool)

(assert (=> d!53751 (= lt!87888 lt!87889)))

(declare-fun lt!87890 () Unit!5421)

(declare-fun e!117192 () Unit!5421)

(assert (=> d!53751 (= lt!87890 e!117192)))

(declare-fun c!31828 () Bool)

(assert (=> d!53751 (= c!31828 lt!87889)))

(assert (=> d!53751 (= lt!87889 (containsKey!199 (toList!1138 lt!87752) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53751 (= (contains!1198 lt!87752 #b0000000000000000000000000000000000000000000000000000000000000000) lt!87888)))

(declare-fun b!177734 () Bool)

(declare-fun lt!87891 () Unit!5421)

(assert (=> b!177734 (= e!117192 lt!87891)))

(assert (=> b!177734 (= lt!87891 (lemmaContainsKeyImpliesGetValueByKeyDefined!148 (toList!1138 lt!87752) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!177734 (isDefined!149 (getValueByKey!195 (toList!1138 lt!87752) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!177735 () Bool)

(declare-fun Unit!5428 () Unit!5421)

(assert (=> b!177735 (= e!117192 Unit!5428)))

(declare-fun b!177736 () Bool)

(assert (=> b!177736 (= e!117193 (isDefined!149 (getValueByKey!195 (toList!1138 lt!87752) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53751 c!31828) b!177734))

(assert (= (and d!53751 (not c!31828)) b!177735))

(assert (= (and d!53751 (not res!84241)) b!177736))

(declare-fun m!206257 () Bool)

(assert (=> d!53751 m!206257))

(declare-fun m!206259 () Bool)

(assert (=> b!177734 m!206259))

(assert (=> b!177734 m!206231))

(assert (=> b!177734 m!206231))

(declare-fun m!206261 () Bool)

(assert (=> b!177734 m!206261))

(assert (=> b!177736 m!206231))

(assert (=> b!177736 m!206231))

(assert (=> b!177736 m!206261))

(assert (=> bm!17957 d!53751))

(declare-fun b!177737 () Bool)

(declare-fun e!117194 () Bool)

(assert (=> b!177737 (= e!117194 tp_is_empty!4161)))

(declare-fun b!177738 () Bool)

(declare-fun e!117195 () Bool)

(assert (=> b!177738 (= e!117195 tp_is_empty!4161)))

(declare-fun mapNonEmpty!7114 () Bool)

(declare-fun mapRes!7114 () Bool)

(declare-fun tp!15880 () Bool)

(assert (=> mapNonEmpty!7114 (= mapRes!7114 (and tp!15880 e!117194))))

(declare-fun mapValue!7114 () ValueCell!1737)

(declare-fun mapKey!7114 () (_ BitVec 32))

(declare-fun mapRest!7114 () (Array (_ BitVec 32) ValueCell!1737))

(assert (=> mapNonEmpty!7114 (= mapRest!7113 (store mapRest!7114 mapKey!7114 mapValue!7114))))

(declare-fun mapIsEmpty!7114 () Bool)

(assert (=> mapIsEmpty!7114 mapRes!7114))

(declare-fun condMapEmpty!7114 () Bool)

(declare-fun mapDefault!7114 () ValueCell!1737)

(assert (=> mapNonEmpty!7113 (= condMapEmpty!7114 (= mapRest!7113 ((as const (Array (_ BitVec 32) ValueCell!1737)) mapDefault!7114)))))

(assert (=> mapNonEmpty!7113 (= tp!15879 (and e!117195 mapRes!7114))))

(assert (= (and mapNonEmpty!7113 condMapEmpty!7114) mapIsEmpty!7114))

(assert (= (and mapNonEmpty!7113 (not condMapEmpty!7114)) mapNonEmpty!7114))

(assert (= (and mapNonEmpty!7114 ((_ is ValueCellFull!1737) mapValue!7114)) b!177737))

(assert (= (and mapNonEmpty!7113 ((_ is ValueCellFull!1737) mapDefault!7114)) b!177738))

(declare-fun m!206263 () Bool)

(assert (=> mapNonEmpty!7114 m!206263))

(declare-fun b_lambda!7093 () Bool)

(assert (= b_lambda!7089 (or (and b!177399 b_free!4389) b_lambda!7093)))

(declare-fun b_lambda!7095 () Bool)

(assert (= b_lambda!7091 (or (and b!177399 b_free!4389) b_lambda!7095)))

(check-sat (not b!177706) (not b!177594) (not b!177680) (not d!53713) (not b!177580) (not d!53723) (not b!177574) (not mapNonEmpty!7114) (not b!177731) (not b!177656) (not b!177692) (not d!53695) (not b!177635) (not b!177679) (not b!177589) (not d!53717) (not d!53709) (not b!177705) (not b!177612) (not d!53745) (not d!53703) (not bm!17963) (not d!53751) (not b!177548) (not b!177654) (not d!53741) (not b!177683) (not b_lambda!7087) (not b!177596) (not d!53693) (not bm!17969) (not b!177576) (not d!53679) (not d!53721) (not b!177631) (not b_next!4389) (not b!177590) (not b!177578) (not b_lambda!7095) (not d!53699) (not d!53689) (not d!53691) (not b!177689) (not bm!17972) (not b!177599) (not d!53747) (not b!177575) (not d!53685) b_and!10917 (not b!177595) (not b!177703) (not b!177650) (not b!177632) (not b!177579) tp_is_empty!4161 (not d!53681) (not d!53697) (not b!177666) (not b!177597) (not b!177613) (not b!177736) (not d!53743) (not bm!17966) (not d!53711) (not b!177583) (not d!53683) (not b!177633) (not d!53725) (not b!177734) (not b!177547) (not d!53701) (not d!53705) (not b!177577) (not b!177623) (not d!53707) (not b_lambda!7093) (not b!177598) (not b!177665) (not b!177602) (not b!177600) (not d!53737) (not d!53735) (not d!53687))
(check-sat b_and!10917 (not b_next!4389))
