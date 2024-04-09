; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6474 () Bool)

(assert start!6474)

(declare-fun b_free!1503 () Bool)

(declare-fun b_next!1503 () Bool)

(assert (=> start!6474 (= b_free!1503 (not b_next!1503))))

(declare-fun tp!5942 () Bool)

(declare-fun b_and!2665 () Bool)

(assert (=> start!6474 (= tp!5942 b_and!2665)))

(declare-fun b!43046 () Bool)

(declare-fun e!27285 () Bool)

(declare-fun e!27284 () Bool)

(assert (=> b!43046 (= e!27285 (not e!27284))))

(declare-fun res!25571 () Bool)

(assert (=> b!43046 (=> res!25571 e!27284)))

(declare-datatypes ((V!2311 0))(
  ( (V!2312 (val!985 Int)) )
))
(declare-datatypes ((tuple2!1628 0))(
  ( (tuple2!1629 (_1!824 (_ BitVec 64)) (_2!824 V!2311)) )
))
(declare-datatypes ((List!1214 0))(
  ( (Nil!1211) (Cons!1210 (h!1787 tuple2!1628) (t!4221 List!1214)) )
))
(declare-datatypes ((ListLongMap!1209 0))(
  ( (ListLongMap!1210 (toList!620 List!1214)) )
))
(declare-fun lt!18385 () ListLongMap!1209)

(assert (=> b!43046 (= res!25571 (= lt!18385 (ListLongMap!1210 Nil!1211)))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2927 0))(
  ( (array!2928 (arr!1407 (Array (_ BitVec 32) (_ BitVec 64))) (size!1592 (_ BitVec 32))) )
))
(declare-fun lt!18388 () array!2927)

(declare-fun lt!18390 () V!2311)

(declare-datatypes ((ValueCell!699 0))(
  ( (ValueCellFull!699 (v!2074 V!2311)) (EmptyCell!699) )
))
(declare-datatypes ((array!2929 0))(
  ( (array!2930 (arr!1408 (Array (_ BitVec 32) ValueCell!699)) (size!1593 (_ BitVec 32))) )
))
(declare-fun lt!18387 () array!2929)

(declare-datatypes ((LongMapFixedSize!378 0))(
  ( (LongMapFixedSize!379 (defaultEntry!1882 Int) (mask!5431 (_ BitVec 32)) (extraKeys!1773 (_ BitVec 32)) (zeroValue!1800 V!2311) (minValue!1800 V!2311) (_size!238 (_ BitVec 32)) (_keys!3431 array!2927) (_values!1865 array!2929) (_vacant!238 (_ BitVec 32))) )
))
(declare-fun map!836 (LongMapFixedSize!378) ListLongMap!1209)

(assert (=> b!43046 (= lt!18385 (map!836 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1215 0))(
  ( (Nil!1212) (Cons!1211 (h!1788 (_ BitVec 64)) (t!4222 List!1215)) )
))
(declare-fun arrayNoDuplicates!0 (array!2927 (_ BitVec 32) List!1215) Bool)

(assert (=> b!43046 (arrayNoDuplicates!0 lt!18388 #b00000000000000000000000000000000 Nil!1212)))

(declare-datatypes ((Unit!1201 0))(
  ( (Unit!1202) )
))
(declare-fun lt!18386 () Unit!1201)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2927 (_ BitVec 32) (_ BitVec 32) List!1215) Unit!1201)

(assert (=> b!43046 (= lt!18386 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2927 (_ BitVec 32)) Bool)

(assert (=> b!43046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18388 mask!853)))

(declare-fun lt!18391 () Unit!1201)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2927 (_ BitVec 32) (_ BitVec 32)) Unit!1201)

(assert (=> b!43046 (= lt!18391 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18388 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2927 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43046 (= (arrayCountValidKeys!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18389 () Unit!1201)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2927 (_ BitVec 32) (_ BitVec 32)) Unit!1201)

(assert (=> b!43046 (= lt!18389 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43046 (= lt!18387 (array!2930 ((as const (Array (_ BitVec 32) ValueCell!699)) EmptyCell!699) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43046 (= lt!18388 (array!2928 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!260 (Int (_ BitVec 64)) V!2311)

(assert (=> b!43046 (= lt!18390 (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!25570 () Bool)

(assert (=> start!6474 (=> (not res!25570) (not e!27285))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6474 (= res!25570 (validMask!0 mask!853))))

(assert (=> start!6474 e!27285))

(assert (=> start!6474 true))

(assert (=> start!6474 tp!5942))

(declare-fun b!43049 () Bool)

(declare-fun contains!565 (ListLongMap!1209 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!351 (array!2927 array!2929 (_ BitVec 32) (_ BitVec 32) V!2311 V!2311 (_ BitVec 32) Int) ListLongMap!1209)

(declare-fun head!888 (List!1214) tuple2!1628)

(assert (=> b!43049 (= e!27284 (contains!565 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470) (_1!824 (head!888 (toList!620 lt!18385)))))))

(declare-fun b!43048 () Bool)

(declare-fun res!25573 () Bool)

(assert (=> b!43048 (=> res!25573 e!27284)))

(assert (=> b!43048 (= res!25573 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!43047 () Bool)

(declare-fun res!25572 () Bool)

(assert (=> b!43047 (=> res!25572 e!27284)))

(declare-fun isEmpty!281 (List!1214) Bool)

(assert (=> b!43047 (= res!25572 (isEmpty!281 (toList!620 lt!18385)))))

(assert (= (and start!6474 res!25570) b!43046))

(assert (= (and b!43046 (not res!25571)) b!43047))

(assert (= (and b!43047 (not res!25572)) b!43048))

(assert (= (and b!43048 (not res!25573)) b!43049))

(declare-fun b_lambda!2265 () Bool)

(assert (=> (not b_lambda!2265) (not b!43046)))

(declare-fun t!4220 () Bool)

(declare-fun tb!993 () Bool)

(assert (=> (and start!6474 (= defaultEntry!470 defaultEntry!470) t!4220) tb!993))

(declare-fun result!1729 () Bool)

(declare-fun tp_is_empty!1893 () Bool)

(assert (=> tb!993 (= result!1729 tp_is_empty!1893)))

(assert (=> b!43046 t!4220))

(declare-fun b_and!2667 () Bool)

(assert (= b_and!2665 (and (=> t!4220 result!1729) b_and!2667)))

(declare-fun m!36973 () Bool)

(assert (=> b!43046 m!36973))

(declare-fun m!36975 () Bool)

(assert (=> b!43046 m!36975))

(declare-fun m!36977 () Bool)

(assert (=> b!43046 m!36977))

(declare-fun m!36979 () Bool)

(assert (=> b!43046 m!36979))

(declare-fun m!36981 () Bool)

(assert (=> b!43046 m!36981))

(declare-fun m!36983 () Bool)

(assert (=> b!43046 m!36983))

(declare-fun m!36985 () Bool)

(assert (=> b!43046 m!36985))

(declare-fun m!36987 () Bool)

(assert (=> b!43046 m!36987))

(declare-fun m!36989 () Bool)

(assert (=> start!6474 m!36989))

(declare-fun m!36991 () Bool)

(assert (=> b!43049 m!36991))

(declare-fun m!36993 () Bool)

(assert (=> b!43049 m!36993))

(assert (=> b!43049 m!36991))

(declare-fun m!36995 () Bool)

(assert (=> b!43049 m!36995))

(declare-fun m!36997 () Bool)

(assert (=> b!43047 m!36997))

(check-sat (not b!43049) tp_is_empty!1893 (not b_next!1503) (not b!43047) (not start!6474) (not b!43046) b_and!2667 (not b_lambda!2265))
(check-sat b_and!2667 (not b_next!1503))
(get-model)

(declare-fun b_lambda!2273 () Bool)

(assert (= b_lambda!2265 (or (and start!6474 b_free!1503) b_lambda!2273)))

(check-sat (not b!43049) tp_is_empty!1893 (not b_next!1503) (not b_lambda!2273) (not b!43047) (not start!6474) (not b!43046) b_and!2667)
(check-sat b_and!2667 (not b_next!1503))
(get-model)

(declare-fun d!7907 () Bool)

(declare-fun e!27329 () Bool)

(assert (=> d!7907 e!27329))

(declare-fun res!25603 () Bool)

(assert (=> d!7907 (=> res!25603 e!27329)))

(declare-fun lt!18432 () Bool)

(assert (=> d!7907 (= res!25603 (not lt!18432))))

(declare-fun lt!18431 () Bool)

(assert (=> d!7907 (= lt!18432 lt!18431)))

(declare-fun lt!18430 () Unit!1201)

(declare-fun e!27328 () Unit!1201)

(assert (=> d!7907 (= lt!18430 e!27328)))

(declare-fun c!5481 () Bool)

(assert (=> d!7907 (= c!5481 lt!18431)))

(declare-fun containsKey!71 (List!1214 (_ BitVec 64)) Bool)

(assert (=> d!7907 (= lt!18431 (containsKey!71 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))

(assert (=> d!7907 (= (contains!565 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470) (_1!824 (head!888 (toList!620 lt!18385)))) lt!18432)))

(declare-fun b!43121 () Bool)

(declare-fun lt!18433 () Unit!1201)

(assert (=> b!43121 (= e!27328 lt!18433)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!59 (List!1214 (_ BitVec 64)) Unit!1201)

(assert (=> b!43121 (= lt!18433 (lemmaContainsKeyImpliesGetValueByKeyDefined!59 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))

(declare-datatypes ((Option!109 0))(
  ( (Some!108 (v!2076 V!2311)) (None!107) )
))
(declare-fun isDefined!60 (Option!109) Bool)

(declare-fun getValueByKey!103 (List!1214 (_ BitVec 64)) Option!109)

(assert (=> b!43121 (isDefined!60 (getValueByKey!103 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))

(declare-fun b!43122 () Bool)

(declare-fun Unit!1205 () Unit!1201)

(assert (=> b!43122 (= e!27328 Unit!1205)))

(declare-fun b!43123 () Bool)

(assert (=> b!43123 (= e!27329 (isDefined!60 (getValueByKey!103 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385))))))))

(assert (= (and d!7907 c!5481) b!43121))

(assert (= (and d!7907 (not c!5481)) b!43122))

(assert (= (and d!7907 (not res!25603)) b!43123))

(declare-fun m!37039 () Bool)

(assert (=> d!7907 m!37039))

(declare-fun m!37041 () Bool)

(assert (=> b!43121 m!37041))

(declare-fun m!37045 () Bool)

(assert (=> b!43121 m!37045))

(assert (=> b!43121 m!37045))

(declare-fun m!37047 () Bool)

(assert (=> b!43121 m!37047))

(assert (=> b!43123 m!37045))

(assert (=> b!43123 m!37045))

(assert (=> b!43123 m!37047))

(assert (=> b!43049 d!7907))

(declare-fun b!43213 () Bool)

(declare-fun e!27394 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!43213 (= e!27394 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun bm!3425 () Bool)

(declare-fun call!3434 () ListLongMap!1209)

(declare-fun call!3428 () ListLongMap!1209)

(assert (=> bm!3425 (= call!3434 call!3428)))

(declare-fun b!43214 () Bool)

(declare-fun e!27396 () Bool)

(declare-fun e!27402 () Bool)

(assert (=> b!43214 (= e!27396 e!27402)))

(declare-fun c!5512 () Bool)

(assert (=> b!43214 (= c!5512 (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3426 () Bool)

(declare-fun call!3431 () ListLongMap!1209)

(assert (=> bm!3426 (= call!3428 call!3431)))

(declare-fun b!43215 () Bool)

(declare-fun c!5511 () Bool)

(assert (=> b!43215 (= c!5511 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!27399 () ListLongMap!1209)

(declare-fun e!27393 () ListLongMap!1209)

(assert (=> b!43215 (= e!27399 e!27393)))

(declare-fun b!43216 () Bool)

(declare-fun e!27397 () Bool)

(assert (=> b!43216 (= e!27397 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43217 () Bool)

(declare-fun e!27390 () Bool)

(assert (=> b!43217 (= e!27402 e!27390)))

(declare-fun res!25650 () Bool)

(declare-fun call!3429 () Bool)

(assert (=> b!43217 (= res!25650 call!3429)))

(assert (=> b!43217 (=> (not res!25650) (not e!27390))))

(declare-fun bm!3427 () Bool)

(declare-fun call!3433 () ListLongMap!1209)

(declare-fun call!3430 () ListLongMap!1209)

(assert (=> bm!3427 (= call!3433 call!3430)))

(declare-fun b!43218 () Bool)

(assert (=> b!43218 (= e!27393 call!3433)))

(declare-fun b!43220 () Bool)

(declare-fun e!27398 () Bool)

(declare-fun e!27400 () Bool)

(assert (=> b!43220 (= e!27398 e!27400)))

(declare-fun res!25643 () Bool)

(declare-fun call!3432 () Bool)

(assert (=> b!43220 (= res!25643 call!3432)))

(assert (=> b!43220 (=> (not res!25643) (not e!27400))))

(declare-fun b!43221 () Bool)

(assert (=> b!43221 (= e!27398 (not call!3432))))

(declare-fun bm!3428 () Bool)

(declare-fun lt!18546 () ListLongMap!1209)

(assert (=> bm!3428 (= call!3432 (contains!565 lt!18546 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!5507 () Bool)

(declare-fun bm!3429 () Bool)

(declare-fun c!5508 () Bool)

(declare-fun +!67 (ListLongMap!1209 tuple2!1628) ListLongMap!1209)

(assert (=> bm!3429 (= call!3430 (+!67 (ite c!5507 call!3431 (ite c!5508 call!3428 call!3434)) (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))

(declare-fun b!43222 () Bool)

(declare-fun e!27395 () Unit!1201)

(declare-fun lt!18551 () Unit!1201)

(assert (=> b!43222 (= e!27395 lt!18551)))

(declare-fun lt!18541 () ListLongMap!1209)

(declare-fun getCurrentListMapNoExtraKeys!36 (array!2927 array!2929 (_ BitVec 32) (_ BitVec 32) V!2311 V!2311 (_ BitVec 32) Int) ListLongMap!1209)

(assert (=> b!43222 (= lt!18541 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18544 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18544 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18547 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18547 (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))

(declare-fun lt!18539 () Unit!1201)

(declare-fun addStillContains!34 (ListLongMap!1209 (_ BitVec 64) V!2311 (_ BitVec 64)) Unit!1201)

(assert (=> b!43222 (= lt!18539 (addStillContains!34 lt!18541 lt!18544 lt!18390 lt!18547))))

(assert (=> b!43222 (contains!565 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390)) lt!18547)))

(declare-fun lt!18549 () Unit!1201)

(assert (=> b!43222 (= lt!18549 lt!18539)))

(declare-fun lt!18537 () ListLongMap!1209)

(assert (=> b!43222 (= lt!18537 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18548 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18548 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18535 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18535 (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))

(declare-fun lt!18538 () Unit!1201)

(declare-fun addApplyDifferent!34 (ListLongMap!1209 (_ BitVec 64) V!2311 (_ BitVec 64)) Unit!1201)

(assert (=> b!43222 (= lt!18538 (addApplyDifferent!34 lt!18537 lt!18548 lt!18390 lt!18535))))

(declare-fun apply!58 (ListLongMap!1209 (_ BitVec 64)) V!2311)

(assert (=> b!43222 (= (apply!58 (+!67 lt!18537 (tuple2!1629 lt!18548 lt!18390)) lt!18535) (apply!58 lt!18537 lt!18535))))

(declare-fun lt!18554 () Unit!1201)

(assert (=> b!43222 (= lt!18554 lt!18538)))

(declare-fun lt!18545 () ListLongMap!1209)

(assert (=> b!43222 (= lt!18545 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18540 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18540 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18536 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18536 (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))

(declare-fun lt!18543 () Unit!1201)

(assert (=> b!43222 (= lt!18543 (addApplyDifferent!34 lt!18545 lt!18540 lt!18390 lt!18536))))

(assert (=> b!43222 (= (apply!58 (+!67 lt!18545 (tuple2!1629 lt!18540 lt!18390)) lt!18536) (apply!58 lt!18545 lt!18536))))

(declare-fun lt!18555 () Unit!1201)

(assert (=> b!43222 (= lt!18555 lt!18543)))

(declare-fun lt!18542 () ListLongMap!1209)

(assert (=> b!43222 (= lt!18542 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun lt!18553 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18553 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18552 () (_ BitVec 64))

(assert (=> b!43222 (= lt!18552 (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))

(assert (=> b!43222 (= lt!18551 (addApplyDifferent!34 lt!18542 lt!18553 lt!18390 lt!18552))))

(assert (=> b!43222 (= (apply!58 (+!67 lt!18542 (tuple2!1629 lt!18553 lt!18390)) lt!18552) (apply!58 lt!18542 lt!18552))))

(declare-fun bm!3430 () Bool)

(assert (=> bm!3430 (= call!3431 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))

(declare-fun b!43223 () Bool)

(assert (=> b!43223 (= e!27393 call!3434)))

(declare-fun b!43224 () Bool)

(declare-fun e!27392 () ListLongMap!1209)

(assert (=> b!43224 (= e!27392 (+!67 call!3430 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))

(declare-fun b!43225 () Bool)

(declare-fun e!27401 () Bool)

(declare-fun get!789 (ValueCell!699 V!2311) V!2311)

(assert (=> b!43225 (= e!27401 (= (apply!58 lt!18546 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) (get!789 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43225 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1593 lt!18387)))))

(assert (=> b!43225 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(declare-fun b!43226 () Bool)

(assert (=> b!43226 (= e!27399 call!3433)))

(declare-fun b!43227 () Bool)

(declare-fun e!27391 () Bool)

(assert (=> b!43227 (= e!27391 e!27401)))

(declare-fun res!25648 () Bool)

(assert (=> b!43227 (=> (not res!25648) (not e!27401))))

(assert (=> b!43227 (= res!25648 (contains!565 lt!18546 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(assert (=> b!43227 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(declare-fun b!43228 () Bool)

(assert (=> b!43228 (= e!27392 e!27399)))

(assert (=> b!43228 (= c!5508 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3431 () Bool)

(assert (=> bm!3431 (= call!3429 (contains!565 lt!18546 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!7917 () Bool)

(assert (=> d!7917 e!27396))

(declare-fun res!25647 () Bool)

(assert (=> d!7917 (=> (not res!25647) (not e!27396))))

(assert (=> d!7917 (= res!25647 (or (bvsge #b00000000000000000000000000000000 (size!1592 lt!18388)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))))

(declare-fun lt!18556 () ListLongMap!1209)

(assert (=> d!7917 (= lt!18546 lt!18556)))

(declare-fun lt!18550 () Unit!1201)

(assert (=> d!7917 (= lt!18550 e!27395)))

(declare-fun c!5509 () Bool)

(assert (=> d!7917 (= c!5509 e!27394)))

(declare-fun res!25651 () Bool)

(assert (=> d!7917 (=> (not res!25651) (not e!27394))))

(assert (=> d!7917 (= res!25651 (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(assert (=> d!7917 (= lt!18556 e!27392)))

(assert (=> d!7917 (= c!5507 (and (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!7917 (validMask!0 mask!853)))

(assert (=> d!7917 (= (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470) lt!18546)))

(declare-fun b!43219 () Bool)

(declare-fun res!25645 () Bool)

(assert (=> b!43219 (=> (not res!25645) (not e!27396))))

(assert (=> b!43219 (= res!25645 e!27391)))

(declare-fun res!25646 () Bool)

(assert (=> b!43219 (=> res!25646 e!27391)))

(assert (=> b!43219 (= res!25646 (not e!27397))))

(declare-fun res!25644 () Bool)

(assert (=> b!43219 (=> (not res!25644) (not e!27397))))

(assert (=> b!43219 (= res!25644 (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(declare-fun b!43229 () Bool)

(assert (=> b!43229 (= e!27402 (not call!3429))))

(declare-fun b!43230 () Bool)

(assert (=> b!43230 (= e!27390 (= (apply!58 lt!18546 #b1000000000000000000000000000000000000000000000000000000000000000) lt!18390))))

(declare-fun b!43231 () Bool)

(declare-fun Unit!1206 () Unit!1201)

(assert (=> b!43231 (= e!27395 Unit!1206)))

(declare-fun b!43232 () Bool)

(assert (=> b!43232 (= e!27400 (= (apply!58 lt!18546 #b0000000000000000000000000000000000000000000000000000000000000000) lt!18390))))

(declare-fun b!43233 () Bool)

(declare-fun res!25649 () Bool)

(assert (=> b!43233 (=> (not res!25649) (not e!27396))))

(assert (=> b!43233 (= res!25649 e!27398)))

(declare-fun c!5510 () Bool)

(assert (=> b!43233 (= c!5510 (not (= (bvand #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!7917 c!5507) b!43224))

(assert (= (and d!7917 (not c!5507)) b!43228))

(assert (= (and b!43228 c!5508) b!43226))

(assert (= (and b!43228 (not c!5508)) b!43215))

(assert (= (and b!43215 c!5511) b!43218))

(assert (= (and b!43215 (not c!5511)) b!43223))

(assert (= (or b!43218 b!43223) bm!3425))

(assert (= (or b!43226 bm!3425) bm!3426))

(assert (= (or b!43226 b!43218) bm!3427))

(assert (= (or b!43224 bm!3426) bm!3430))

(assert (= (or b!43224 bm!3427) bm!3429))

(assert (= (and d!7917 res!25651) b!43213))

(assert (= (and d!7917 c!5509) b!43222))

(assert (= (and d!7917 (not c!5509)) b!43231))

(assert (= (and d!7917 res!25647) b!43219))

(assert (= (and b!43219 res!25644) b!43216))

(assert (= (and b!43219 (not res!25646)) b!43227))

(assert (= (and b!43227 res!25648) b!43225))

(assert (= (and b!43219 res!25645) b!43233))

(assert (= (and b!43233 c!5510) b!43220))

(assert (= (and b!43233 (not c!5510)) b!43221))

(assert (= (and b!43220 res!25643) b!43232))

(assert (= (or b!43220 b!43221) bm!3428))

(assert (= (and b!43233 res!25649) b!43214))

(assert (= (and b!43214 c!5512) b!43217))

(assert (= (and b!43214 (not c!5512)) b!43229))

(assert (= (and b!43217 res!25650) b!43230))

(assert (= (or b!43217 b!43229) bm!3431))

(declare-fun b_lambda!2275 () Bool)

(assert (=> (not b_lambda!2275) (not b!43225)))

(assert (=> b!43225 t!4220))

(declare-fun b_and!2673 () Bool)

(assert (= b_and!2667 (and (=> t!4220 result!1729) b_and!2673)))

(declare-fun m!37101 () Bool)

(assert (=> b!43224 m!37101))

(declare-fun m!37103 () Bool)

(assert (=> b!43216 m!37103))

(assert (=> b!43216 m!37103))

(declare-fun m!37105 () Bool)

(assert (=> b!43216 m!37105))

(assert (=> d!7917 m!36989))

(declare-fun m!37107 () Bool)

(assert (=> bm!3429 m!37107))

(assert (=> b!43213 m!37103))

(assert (=> b!43213 m!37103))

(assert (=> b!43213 m!37105))

(declare-fun m!37109 () Bool)

(assert (=> bm!3428 m!37109))

(declare-fun m!37111 () Bool)

(assert (=> bm!3430 m!37111))

(declare-fun m!37113 () Bool)

(assert (=> b!43232 m!37113))

(declare-fun m!37115 () Bool)

(assert (=> b!43222 m!37115))

(declare-fun m!37117 () Bool)

(assert (=> b!43222 m!37117))

(declare-fun m!37119 () Bool)

(assert (=> b!43222 m!37119))

(declare-fun m!37121 () Bool)

(assert (=> b!43222 m!37121))

(declare-fun m!37123 () Bool)

(assert (=> b!43222 m!37123))

(declare-fun m!37125 () Bool)

(assert (=> b!43222 m!37125))

(declare-fun m!37127 () Bool)

(assert (=> b!43222 m!37127))

(assert (=> b!43222 m!37127))

(declare-fun m!37129 () Bool)

(assert (=> b!43222 m!37129))

(declare-fun m!37131 () Bool)

(assert (=> b!43222 m!37131))

(declare-fun m!37133 () Bool)

(assert (=> b!43222 m!37133))

(declare-fun m!37135 () Bool)

(assert (=> b!43222 m!37135))

(assert (=> b!43222 m!37115))

(declare-fun m!37137 () Bool)

(assert (=> b!43222 m!37137))

(assert (=> b!43222 m!37111))

(assert (=> b!43222 m!37119))

(declare-fun m!37139 () Bool)

(assert (=> b!43222 m!37139))

(assert (=> b!43222 m!37123))

(declare-fun m!37141 () Bool)

(assert (=> b!43222 m!37141))

(declare-fun m!37143 () Bool)

(assert (=> b!43222 m!37143))

(assert (=> b!43222 m!37103))

(assert (=> b!43225 m!37103))

(declare-fun m!37145 () Bool)

(assert (=> b!43225 m!37145))

(declare-fun m!37147 () Bool)

(assert (=> b!43225 m!37147))

(assert (=> b!43225 m!36979))

(assert (=> b!43225 m!37147))

(assert (=> b!43225 m!36979))

(declare-fun m!37149 () Bool)

(assert (=> b!43225 m!37149))

(assert (=> b!43225 m!37103))

(declare-fun m!37151 () Bool)

(assert (=> b!43230 m!37151))

(assert (=> b!43227 m!37103))

(assert (=> b!43227 m!37103))

(declare-fun m!37153 () Bool)

(assert (=> b!43227 m!37153))

(declare-fun m!37155 () Bool)

(assert (=> bm!3431 m!37155))

(assert (=> b!43049 d!7917))

(declare-fun d!7951 () Bool)

(assert (=> d!7951 (= (head!888 (toList!620 lt!18385)) (h!1787 (toList!620 lt!18385)))))

(assert (=> b!43049 d!7951))

(declare-fun d!7953 () Bool)

(assert (=> d!7953 (arrayNoDuplicates!0 lt!18388 #b00000000000000000000000000000000 Nil!1212)))

(declare-fun lt!18559 () Unit!1201)

(declare-fun choose!111 (array!2927 (_ BitVec 32) (_ BitVec 32) List!1215) Unit!1201)

(assert (=> d!7953 (= lt!18559 (choose!111 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1212))))

(assert (=> d!7953 (= (size!1592 lt!18388) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7953 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1212) lt!18559)))

(declare-fun bs!1938 () Bool)

(assert (= bs!1938 d!7953))

(assert (=> bs!1938 m!36981))

(declare-fun m!37157 () Bool)

(assert (=> bs!1938 m!37157))

(assert (=> b!43046 d!7953))

(declare-fun b!43242 () Bool)

(declare-fun e!27408 () (_ BitVec 32))

(declare-fun call!3437 () (_ BitVec 32))

(assert (=> b!43242 (= e!27408 call!3437)))

(declare-fun b!43243 () Bool)

(declare-fun e!27407 () (_ BitVec 32))

(assert (=> b!43243 (= e!27407 #b00000000000000000000000000000000)))

(declare-fun b!43244 () Bool)

(assert (=> b!43244 (= e!27408 (bvadd #b00000000000000000000000000000001 call!3437))))

(declare-fun b!43245 () Bool)

(assert (=> b!43245 (= e!27407 e!27408)))

(declare-fun c!5517 () Bool)

(assert (=> b!43245 (= c!5517 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun d!7955 () Bool)

(declare-fun lt!18562 () (_ BitVec 32))

(assert (=> d!7955 (and (bvsge lt!18562 #b00000000000000000000000000000000) (bvsle lt!18562 (bvsub (size!1592 lt!18388) #b00000000000000000000000000000000)))))

(assert (=> d!7955 (= lt!18562 e!27407)))

(declare-fun c!5518 () Bool)

(assert (=> d!7955 (= c!5518 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7955 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1592 lt!18388)))))

(assert (=> d!7955 (= (arrayCountValidKeys!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18562)))

(declare-fun bm!3434 () Bool)

(assert (=> bm!3434 (= call!3437 (arrayCountValidKeys!0 lt!18388 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7955 c!5518) b!43243))

(assert (= (and d!7955 (not c!5518)) b!43245))

(assert (= (and b!43245 c!5517) b!43244))

(assert (= (and b!43245 (not c!5517)) b!43242))

(assert (= (or b!43244 b!43242) bm!3434))

(assert (=> b!43245 m!37103))

(assert (=> b!43245 m!37103))

(assert (=> b!43245 m!37105))

(declare-fun m!37159 () Bool)

(assert (=> bm!3434 m!37159))

(assert (=> b!43046 d!7955))

(declare-fun bm!3437 () Bool)

(declare-fun call!3440 () Bool)

(assert (=> bm!3437 (= call!3440 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18388 mask!853))))

(declare-fun b!43255 () Bool)

(declare-fun e!27415 () Bool)

(assert (=> b!43255 (= e!27415 call!3440)))

(declare-fun b!43256 () Bool)

(declare-fun e!27416 () Bool)

(assert (=> b!43256 (= e!27416 e!27415)))

(declare-fun lt!18569 () (_ BitVec 64))

(assert (=> b!43256 (= lt!18569 (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))

(declare-fun lt!18571 () Unit!1201)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2927 (_ BitVec 64) (_ BitVec 32)) Unit!1201)

(assert (=> b!43256 (= lt!18571 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18388 lt!18569 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!43256 (arrayContainsKey!0 lt!18388 lt!18569 #b00000000000000000000000000000000)))

(declare-fun lt!18570 () Unit!1201)

(assert (=> b!43256 (= lt!18570 lt!18571)))

(declare-fun res!25656 () Bool)

(declare-datatypes ((SeekEntryResult!209 0))(
  ( (MissingZero!209 (index!2958 (_ BitVec 32))) (Found!209 (index!2959 (_ BitVec 32))) (Intermediate!209 (undefined!1021 Bool) (index!2960 (_ BitVec 32)) (x!8298 (_ BitVec 32))) (Undefined!209) (MissingVacant!209 (index!2961 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2927 (_ BitVec 32)) SeekEntryResult!209)

(assert (=> b!43256 (= res!25656 (= (seekEntryOrOpen!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) lt!18388 mask!853) (Found!209 #b00000000000000000000000000000000)))))

(assert (=> b!43256 (=> (not res!25656) (not e!27415))))

(declare-fun b!43257 () Bool)

(declare-fun e!27417 () Bool)

(assert (=> b!43257 (= e!27417 e!27416)))

(declare-fun c!5521 () Bool)

(assert (=> b!43257 (= c!5521 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43254 () Bool)

(assert (=> b!43254 (= e!27416 call!3440)))

(declare-fun d!7957 () Bool)

(declare-fun res!25657 () Bool)

(assert (=> d!7957 (=> res!25657 e!27417)))

(assert (=> d!7957 (= res!25657 (bvsge #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(assert (=> d!7957 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18388 mask!853) e!27417)))

(assert (= (and d!7957 (not res!25657)) b!43257))

(assert (= (and b!43257 c!5521) b!43256))

(assert (= (and b!43257 (not c!5521)) b!43254))

(assert (= (and b!43256 res!25656) b!43255))

(assert (= (or b!43255 b!43254) bm!3437))

(declare-fun m!37161 () Bool)

(assert (=> bm!3437 m!37161))

(assert (=> b!43256 m!37103))

(declare-fun m!37163 () Bool)

(assert (=> b!43256 m!37163))

(declare-fun m!37165 () Bool)

(assert (=> b!43256 m!37165))

(assert (=> b!43256 m!37103))

(declare-fun m!37167 () Bool)

(assert (=> b!43256 m!37167))

(assert (=> b!43257 m!37103))

(assert (=> b!43257 m!37103))

(assert (=> b!43257 m!37105))

(assert (=> b!43046 d!7957))

(declare-fun d!7959 () Bool)

(assert (=> d!7959 (= (map!836 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (getCurrentListMap!351 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun bs!1939 () Bool)

(assert (= bs!1939 d!7959))

(declare-fun m!37169 () Bool)

(assert (=> bs!1939 m!37169))

(assert (=> b!43046 d!7959))

(declare-fun b!43352 () Bool)

(declare-fun e!27479 () Bool)

(declare-fun call!3471 () Bool)

(assert (=> b!43352 (= e!27479 call!3471)))

(declare-fun b!43353 () Bool)

(declare-fun e!27478 () Bool)

(declare-fun contains!569 (List!1215 (_ BitVec 64)) Bool)

(assert (=> b!43353 (= e!27478 (contains!569 Nil!1212 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43354 () Bool)

(declare-fun e!27481 () Bool)

(assert (=> b!43354 (= e!27481 e!27479)))

(declare-fun c!5548 () Bool)

(assert (=> b!43354 (= c!5548 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43355 () Bool)

(declare-fun e!27480 () Bool)

(assert (=> b!43355 (= e!27480 e!27481)))

(declare-fun res!25700 () Bool)

(assert (=> b!43355 (=> (not res!25700) (not e!27481))))

(assert (=> b!43355 (= res!25700 (not e!27478))))

(declare-fun res!25701 () Bool)

(assert (=> b!43355 (=> (not res!25701) (not e!27478))))

(assert (=> b!43355 (= res!25701 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43356 () Bool)

(assert (=> b!43356 (= e!27479 call!3471)))

(declare-fun d!7961 () Bool)

(declare-fun res!25702 () Bool)

(assert (=> d!7961 (=> res!25702 e!27480)))

(assert (=> d!7961 (= res!25702 (bvsge #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(assert (=> d!7961 (= (arrayNoDuplicates!0 lt!18388 #b00000000000000000000000000000000 Nil!1212) e!27480)))

(declare-fun bm!3468 () Bool)

(assert (=> bm!3468 (= call!3471 (arrayNoDuplicates!0 lt!18388 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5548 (Cons!1211 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) Nil!1212) Nil!1212)))))

(assert (= (and d!7961 (not res!25702)) b!43355))

(assert (= (and b!43355 res!25701) b!43353))

(assert (= (and b!43355 res!25700) b!43354))

(assert (= (and b!43354 c!5548) b!43356))

(assert (= (and b!43354 (not c!5548)) b!43352))

(assert (= (or b!43356 b!43352) bm!3468))

(assert (=> b!43353 m!37103))

(assert (=> b!43353 m!37103))

(declare-fun m!37171 () Bool)

(assert (=> b!43353 m!37171))

(assert (=> b!43354 m!37103))

(assert (=> b!43354 m!37103))

(assert (=> b!43354 m!37105))

(assert (=> b!43355 m!37103))

(assert (=> b!43355 m!37103))

(assert (=> b!43355 m!37105))

(assert (=> bm!3468 m!37103))

(declare-fun m!37173 () Bool)

(assert (=> bm!3468 m!37173))

(assert (=> b!43046 d!7961))

(declare-fun d!7963 () Bool)

(assert (=> d!7963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18388 mask!853)))

(declare-fun lt!18662 () Unit!1201)

(declare-fun choose!34 (array!2927 (_ BitVec 32) (_ BitVec 32)) Unit!1201)

(assert (=> d!7963 (= lt!18662 (choose!34 lt!18388 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7963 (validMask!0 mask!853)))

(assert (=> d!7963 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18388 mask!853 #b00000000000000000000000000000000) lt!18662)))

(declare-fun bs!1940 () Bool)

(assert (= bs!1940 d!7963))

(assert (=> bs!1940 m!36985))

(declare-fun m!37175 () Bool)

(assert (=> bs!1940 m!37175))

(assert (=> bs!1940 m!36989))

(assert (=> b!43046 d!7963))

(declare-fun d!7965 () Bool)

(assert (=> d!7965 (= (arrayCountValidKeys!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18709 () Unit!1201)

(declare-fun choose!59 (array!2927 (_ BitVec 32) (_ BitVec 32)) Unit!1201)

(assert (=> d!7965 (= lt!18709 (choose!59 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7965 (bvslt (size!1592 lt!18388) #b01111111111111111111111111111111)))

(assert (=> d!7965 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!18709)))

(declare-fun bs!1941 () Bool)

(assert (= bs!1941 d!7965))

(assert (=> bs!1941 m!36973))

(declare-fun m!37177 () Bool)

(assert (=> bs!1941 m!37177))

(assert (=> b!43046 d!7965))

(declare-fun d!7967 () Bool)

(get-info :version)

(assert (=> d!7967 (= (isEmpty!281 (toList!620 lt!18385)) ((_ is Nil!1211) (toList!620 lt!18385)))))

(assert (=> b!43047 d!7967))

(declare-fun d!7969 () Bool)

(assert (=> d!7969 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6474 d!7969))

(declare-fun b_lambda!2285 () Bool)

(assert (= b_lambda!2275 (or (and start!6474 b_free!1503) b_lambda!2285)))

(check-sat (not b!43354) (not b!43224) (not b_next!1503) b_and!2673 (not b_lambda!2273) (not b!43355) (not b!43222) (not b!43213) (not d!7965) (not b!43121) (not bm!3437) (not b!43232) tp_is_empty!1893 (not b!43230) (not bm!3429) (not b!43227) (not b_lambda!2285) (not bm!3468) (not b!43257) (not d!7907) (not bm!3431) (not b!43245) (not b!43123) (not d!7963) (not b!43225) (not bm!3428) (not b!43353) (not d!7953) (not b!43216) (not bm!3434) (not b!43256) (not d!7959) (not d!7917) (not bm!3430))
(check-sat b_and!2673 (not b_next!1503))
(get-model)

(assert (=> d!7917 d!7969))

(declare-fun d!7975 () Bool)

(assert (=> d!7975 (= (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) (and (not (= (select (arr!1407 lt!18388) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1407 lt!18388) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43257 d!7975))

(declare-fun d!7977 () Bool)

(declare-fun e!27509 () Bool)

(assert (=> d!7977 e!27509))

(declare-fun res!25721 () Bool)

(assert (=> d!7977 (=> res!25721 e!27509)))

(declare-fun lt!18712 () Bool)

(assert (=> d!7977 (= res!25721 (not lt!18712))))

(declare-fun lt!18711 () Bool)

(assert (=> d!7977 (= lt!18712 lt!18711)))

(declare-fun lt!18710 () Unit!1201)

(declare-fun e!27508 () Unit!1201)

(assert (=> d!7977 (= lt!18710 e!27508)))

(declare-fun c!5561 () Bool)

(assert (=> d!7977 (= c!5561 lt!18711)))

(assert (=> d!7977 (= lt!18711 (containsKey!71 (toList!620 lt!18546) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!7977 (= (contains!565 lt!18546 #b1000000000000000000000000000000000000000000000000000000000000000) lt!18712)))

(declare-fun b!43399 () Bool)

(declare-fun lt!18713 () Unit!1201)

(assert (=> b!43399 (= e!27508 lt!18713)))

(assert (=> b!43399 (= lt!18713 (lemmaContainsKeyImpliesGetValueByKeyDefined!59 (toList!620 lt!18546) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!43399 (isDefined!60 (getValueByKey!103 (toList!620 lt!18546) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43400 () Bool)

(declare-fun Unit!1211 () Unit!1201)

(assert (=> b!43400 (= e!27508 Unit!1211)))

(declare-fun b!43401 () Bool)

(assert (=> b!43401 (= e!27509 (isDefined!60 (getValueByKey!103 (toList!620 lt!18546) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7977 c!5561) b!43399))

(assert (= (and d!7977 (not c!5561)) b!43400))

(assert (= (and d!7977 (not res!25721)) b!43401))

(declare-fun m!37283 () Bool)

(assert (=> d!7977 m!37283))

(declare-fun m!37285 () Bool)

(assert (=> b!43399 m!37285))

(declare-fun m!37287 () Bool)

(assert (=> b!43399 m!37287))

(assert (=> b!43399 m!37287))

(declare-fun m!37289 () Bool)

(assert (=> b!43399 m!37289))

(assert (=> b!43401 m!37287))

(assert (=> b!43401 m!37287))

(assert (=> b!43401 m!37289))

(assert (=> bm!3431 d!7977))

(assert (=> b!43213 d!7975))

(declare-fun d!7979 () Bool)

(assert (=> d!7979 (arrayContainsKey!0 lt!18388 lt!18569 #b00000000000000000000000000000000)))

(declare-fun lt!18716 () Unit!1201)

(declare-fun choose!13 (array!2927 (_ BitVec 64) (_ BitVec 32)) Unit!1201)

(assert (=> d!7979 (= lt!18716 (choose!13 lt!18388 lt!18569 #b00000000000000000000000000000000))))

(assert (=> d!7979 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!7979 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18388 lt!18569 #b00000000000000000000000000000000) lt!18716)))

(declare-fun bs!1942 () Bool)

(assert (= bs!1942 d!7979))

(assert (=> bs!1942 m!37165))

(declare-fun m!37291 () Bool)

(assert (=> bs!1942 m!37291))

(assert (=> b!43256 d!7979))

(declare-fun d!7981 () Bool)

(declare-fun res!25726 () Bool)

(declare-fun e!27514 () Bool)

(assert (=> d!7981 (=> res!25726 e!27514)))

(assert (=> d!7981 (= res!25726 (= (select (arr!1407 lt!18388) #b00000000000000000000000000000000) lt!18569))))

(assert (=> d!7981 (= (arrayContainsKey!0 lt!18388 lt!18569 #b00000000000000000000000000000000) e!27514)))

(declare-fun b!43406 () Bool)

(declare-fun e!27515 () Bool)

(assert (=> b!43406 (= e!27514 e!27515)))

(declare-fun res!25727 () Bool)

(assert (=> b!43406 (=> (not res!25727) (not e!27515))))

(assert (=> b!43406 (= res!25727 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1592 lt!18388)))))

(declare-fun b!43407 () Bool)

(assert (=> b!43407 (= e!27515 (arrayContainsKey!0 lt!18388 lt!18569 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!7981 (not res!25726)) b!43406))

(assert (= (and b!43406 res!25727) b!43407))

(assert (=> d!7981 m!37103))

(declare-fun m!37293 () Bool)

(assert (=> b!43407 m!37293))

(assert (=> b!43256 d!7981))

(declare-fun b!43420 () Bool)

(declare-fun e!27522 () SeekEntryResult!209)

(declare-fun lt!18724 () SeekEntryResult!209)

(assert (=> b!43420 (= e!27522 (Found!209 (index!2960 lt!18724)))))

(declare-fun b!43421 () Bool)

(declare-fun c!5570 () Bool)

(declare-fun lt!18725 () (_ BitVec 64))

(assert (=> b!43421 (= c!5570 (= lt!18725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!27524 () SeekEntryResult!209)

(assert (=> b!43421 (= e!27522 e!27524)))

(declare-fun b!43422 () Bool)

(assert (=> b!43422 (= e!27524 (MissingZero!209 (index!2960 lt!18724)))))

(declare-fun b!43423 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2927 (_ BitVec 32)) SeekEntryResult!209)

(assert (=> b!43423 (= e!27524 (seekKeyOrZeroReturnVacant!0 (x!8298 lt!18724) (index!2960 lt!18724) (index!2960 lt!18724) (select (arr!1407 lt!18388) #b00000000000000000000000000000000) lt!18388 mask!853))))

(declare-fun b!43424 () Bool)

(declare-fun e!27523 () SeekEntryResult!209)

(assert (=> b!43424 (= e!27523 e!27522)))

(assert (=> b!43424 (= lt!18725 (select (arr!1407 lt!18388) (index!2960 lt!18724)))))

(declare-fun c!5568 () Bool)

(assert (=> b!43424 (= c!5568 (= lt!18725 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun d!7983 () Bool)

(declare-fun lt!18723 () SeekEntryResult!209)

(assert (=> d!7983 (and (or ((_ is Undefined!209) lt!18723) (not ((_ is Found!209) lt!18723)) (and (bvsge (index!2959 lt!18723) #b00000000000000000000000000000000) (bvslt (index!2959 lt!18723) (size!1592 lt!18388)))) (or ((_ is Undefined!209) lt!18723) ((_ is Found!209) lt!18723) (not ((_ is MissingZero!209) lt!18723)) (and (bvsge (index!2958 lt!18723) #b00000000000000000000000000000000) (bvslt (index!2958 lt!18723) (size!1592 lt!18388)))) (or ((_ is Undefined!209) lt!18723) ((_ is Found!209) lt!18723) ((_ is MissingZero!209) lt!18723) (not ((_ is MissingVacant!209) lt!18723)) (and (bvsge (index!2961 lt!18723) #b00000000000000000000000000000000) (bvslt (index!2961 lt!18723) (size!1592 lt!18388)))) (or ((_ is Undefined!209) lt!18723) (ite ((_ is Found!209) lt!18723) (= (select (arr!1407 lt!18388) (index!2959 lt!18723)) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!209) lt!18723) (= (select (arr!1407 lt!18388) (index!2958 lt!18723)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!209) lt!18723) (= (select (arr!1407 lt!18388) (index!2961 lt!18723)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!7983 (= lt!18723 e!27523)))

(declare-fun c!5569 () Bool)

(assert (=> d!7983 (= c!5569 (and ((_ is Intermediate!209) lt!18724) (undefined!1021 lt!18724)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2927 (_ BitVec 32)) SeekEntryResult!209)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!7983 (= lt!18724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) mask!853) (select (arr!1407 lt!18388) #b00000000000000000000000000000000) lt!18388 mask!853))))

(assert (=> d!7983 (validMask!0 mask!853)))

(assert (=> d!7983 (= (seekEntryOrOpen!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) lt!18388 mask!853) lt!18723)))

(declare-fun b!43425 () Bool)

(assert (=> b!43425 (= e!27523 Undefined!209)))

(assert (= (and d!7983 c!5569) b!43425))

(assert (= (and d!7983 (not c!5569)) b!43424))

(assert (= (and b!43424 c!5568) b!43420))

(assert (= (and b!43424 (not c!5568)) b!43421))

(assert (= (and b!43421 c!5570) b!43422))

(assert (= (and b!43421 (not c!5570)) b!43423))

(assert (=> b!43423 m!37103))

(declare-fun m!37295 () Bool)

(assert (=> b!43423 m!37295))

(declare-fun m!37297 () Bool)

(assert (=> b!43424 m!37297))

(declare-fun m!37299 () Bool)

(assert (=> d!7983 m!37299))

(assert (=> d!7983 m!37103))

(declare-fun m!37301 () Bool)

(assert (=> d!7983 m!37301))

(declare-fun m!37303 () Bool)

(assert (=> d!7983 m!37303))

(declare-fun m!37305 () Bool)

(assert (=> d!7983 m!37305))

(declare-fun m!37307 () Bool)

(assert (=> d!7983 m!37307))

(assert (=> d!7983 m!37103))

(assert (=> d!7983 m!37299))

(assert (=> d!7983 m!36989))

(assert (=> b!43256 d!7983))

(declare-fun d!7985 () Bool)

(declare-fun res!25732 () Bool)

(declare-fun e!27529 () Bool)

(assert (=> d!7985 (=> res!25732 e!27529)))

(assert (=> d!7985 (= res!25732 (and ((_ is Cons!1210) (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))) (= (_1!824 (h!1787 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!824 (head!888 (toList!620 lt!18385))))))))

(assert (=> d!7985 (= (containsKey!71 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))) e!27529)))

(declare-fun b!43430 () Bool)

(declare-fun e!27530 () Bool)

(assert (=> b!43430 (= e!27529 e!27530)))

(declare-fun res!25733 () Bool)

(assert (=> b!43430 (=> (not res!25733) (not e!27530))))

(assert (=> b!43430 (= res!25733 (and (or (not ((_ is Cons!1210) (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)))) (bvsle (_1!824 (h!1787 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!824 (head!888 (toList!620 lt!18385))))) ((_ is Cons!1210) (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))) (bvslt (_1!824 (h!1787 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!824 (head!888 (toList!620 lt!18385))))))))

(declare-fun b!43431 () Bool)

(assert (=> b!43431 (= e!27530 (containsKey!71 (t!4221 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))) (_1!824 (head!888 (toList!620 lt!18385)))))))

(assert (= (and d!7985 (not res!25732)) b!43430))

(assert (= (and b!43430 res!25733) b!43431))

(declare-fun m!37309 () Bool)

(assert (=> b!43431 m!37309))

(assert (=> d!7907 d!7985))

(declare-fun d!7987 () Bool)

(declare-fun e!27532 () Bool)

(assert (=> d!7987 e!27532))

(declare-fun res!25734 () Bool)

(assert (=> d!7987 (=> res!25734 e!27532)))

(declare-fun lt!18728 () Bool)

(assert (=> d!7987 (= res!25734 (not lt!18728))))

(declare-fun lt!18727 () Bool)

(assert (=> d!7987 (= lt!18728 lt!18727)))

(declare-fun lt!18726 () Unit!1201)

(declare-fun e!27531 () Unit!1201)

(assert (=> d!7987 (= lt!18726 e!27531)))

(declare-fun c!5571 () Bool)

(assert (=> d!7987 (= c!5571 lt!18727)))

(assert (=> d!7987 (= lt!18727 (containsKey!71 (toList!620 lt!18546) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(assert (=> d!7987 (= (contains!565 lt!18546 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) lt!18728)))

(declare-fun b!43432 () Bool)

(declare-fun lt!18729 () Unit!1201)

(assert (=> b!43432 (= e!27531 lt!18729)))

(assert (=> b!43432 (= lt!18729 (lemmaContainsKeyImpliesGetValueByKeyDefined!59 (toList!620 lt!18546) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(assert (=> b!43432 (isDefined!60 (getValueByKey!103 (toList!620 lt!18546) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43433 () Bool)

(declare-fun Unit!1212 () Unit!1201)

(assert (=> b!43433 (= e!27531 Unit!1212)))

(declare-fun b!43434 () Bool)

(assert (=> b!43434 (= e!27532 (isDefined!60 (getValueByKey!103 (toList!620 lt!18546) (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))))

(assert (= (and d!7987 c!5571) b!43432))

(assert (= (and d!7987 (not c!5571)) b!43433))

(assert (= (and d!7987 (not res!25734)) b!43434))

(assert (=> d!7987 m!37103))

(declare-fun m!37311 () Bool)

(assert (=> d!7987 m!37311))

(assert (=> b!43432 m!37103))

(declare-fun m!37313 () Bool)

(assert (=> b!43432 m!37313))

(assert (=> b!43432 m!37103))

(declare-fun m!37315 () Bool)

(assert (=> b!43432 m!37315))

(assert (=> b!43432 m!37315))

(declare-fun m!37317 () Bool)

(assert (=> b!43432 m!37317))

(assert (=> b!43434 m!37103))

(assert (=> b!43434 m!37315))

(assert (=> b!43434 m!37315))

(assert (=> b!43434 m!37317))

(assert (=> b!43227 d!7987))

(declare-fun b!43435 () Bool)

(declare-fun e!27534 () (_ BitVec 32))

(declare-fun call!3486 () (_ BitVec 32))

(assert (=> b!43435 (= e!27534 call!3486)))

(declare-fun b!43436 () Bool)

(declare-fun e!27533 () (_ BitVec 32))

(assert (=> b!43436 (= e!27533 #b00000000000000000000000000000000)))

(declare-fun b!43437 () Bool)

(assert (=> b!43437 (= e!27534 (bvadd #b00000000000000000000000000000001 call!3486))))

(declare-fun b!43438 () Bool)

(assert (=> b!43438 (= e!27533 e!27534)))

(declare-fun c!5572 () Bool)

(assert (=> b!43438 (= c!5572 (validKeyInArray!0 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!7989 () Bool)

(declare-fun lt!18730 () (_ BitVec 32))

(assert (=> d!7989 (and (bvsge lt!18730 #b00000000000000000000000000000000) (bvsle lt!18730 (bvsub (size!1592 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!7989 (= lt!18730 e!27533)))

(declare-fun c!5573 () Bool)

(assert (=> d!7989 (= c!5573 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7989 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1592 lt!18388)))))

(assert (=> d!7989 (= (arrayCountValidKeys!0 lt!18388 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!18730)))

(declare-fun bm!3483 () Bool)

(assert (=> bm!3483 (= call!3486 (arrayCountValidKeys!0 lt!18388 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and d!7989 c!5573) b!43436))

(assert (= (and d!7989 (not c!5573)) b!43438))

(assert (= (and b!43438 c!5572) b!43437))

(assert (= (and b!43438 (not c!5572)) b!43435))

(assert (= (or b!43437 b!43435) bm!3483))

(declare-fun m!37319 () Bool)

(assert (=> b!43438 m!37319))

(assert (=> b!43438 m!37319))

(declare-fun m!37321 () Bool)

(assert (=> b!43438 m!37321))

(declare-fun m!37323 () Bool)

(assert (=> bm!3483 m!37323))

(assert (=> bm!3434 d!7989))

(declare-fun d!7991 () Bool)

(declare-fun get!792 (Option!109) V!2311)

(assert (=> d!7991 (= (apply!58 lt!18546 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) (get!792 (getValueByKey!103 (toList!620 lt!18546) (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))))

(declare-fun bs!1943 () Bool)

(assert (= bs!1943 d!7991))

(assert (=> bs!1943 m!37103))

(assert (=> bs!1943 m!37315))

(assert (=> bs!1943 m!37315))

(declare-fun m!37325 () Bool)

(assert (=> bs!1943 m!37325))

(assert (=> b!43225 d!7991))

(declare-fun d!7993 () Bool)

(declare-fun c!5576 () Bool)

(assert (=> d!7993 (= c!5576 ((_ is ValueCellFull!699) (select (arr!1408 lt!18387) #b00000000000000000000000000000000)))))

(declare-fun e!27537 () V!2311)

(assert (=> d!7993 (= (get!789 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)) e!27537)))

(declare-fun b!43443 () Bool)

(declare-fun get!793 (ValueCell!699 V!2311) V!2311)

(assert (=> b!43443 (= e!27537 (get!793 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!43444 () Bool)

(declare-fun get!794 (ValueCell!699 V!2311) V!2311)

(assert (=> b!43444 (= e!27537 (get!794 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!7993 c!5576) b!43443))

(assert (= (and d!7993 (not c!5576)) b!43444))

(assert (=> b!43443 m!37147))

(assert (=> b!43443 m!36979))

(declare-fun m!37327 () Bool)

(assert (=> b!43443 m!37327))

(assert (=> b!43444 m!37147))

(assert (=> b!43444 m!36979))

(declare-fun m!37329 () Bool)

(assert (=> b!43444 m!37329))

(assert (=> b!43225 d!7993))

(assert (=> b!43245 d!7975))

(declare-fun d!7995 () Bool)

(declare-fun e!27540 () Bool)

(assert (=> d!7995 e!27540))

(declare-fun res!25739 () Bool)

(assert (=> d!7995 (=> (not res!25739) (not e!27540))))

(declare-fun lt!18740 () ListLongMap!1209)

(assert (=> d!7995 (= res!25739 (contains!565 lt!18740 (_1!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))

(declare-fun lt!18741 () List!1214)

(assert (=> d!7995 (= lt!18740 (ListLongMap!1210 lt!18741))))

(declare-fun lt!18739 () Unit!1201)

(declare-fun lt!18742 () Unit!1201)

(assert (=> d!7995 (= lt!18739 lt!18742)))

(assert (=> d!7995 (= (getValueByKey!103 lt!18741 (_1!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))) (Some!108 (_2!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))

(declare-fun lemmaContainsTupThenGetReturnValue!29 (List!1214 (_ BitVec 64) V!2311) Unit!1201)

(assert (=> d!7995 (= lt!18742 (lemmaContainsTupThenGetReturnValue!29 lt!18741 (_1!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)) (_2!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))

(declare-fun insertStrictlySorted!26 (List!1214 (_ BitVec 64) V!2311) List!1214)

(assert (=> d!7995 (= lt!18741 (insertStrictlySorted!26 (toList!620 call!3430) (_1!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)) (_2!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))

(assert (=> d!7995 (= (+!67 call!3430 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)) lt!18740)))

(declare-fun b!43449 () Bool)

(declare-fun res!25740 () Bool)

(assert (=> b!43449 (=> (not res!25740) (not e!27540))))

(assert (=> b!43449 (= res!25740 (= (getValueByKey!103 (toList!620 lt!18740) (_1!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))) (Some!108 (_2!824 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))))

(declare-fun b!43450 () Bool)

(declare-fun contains!570 (List!1214 tuple2!1628) Bool)

(assert (=> b!43450 (= e!27540 (contains!570 (toList!620 lt!18740) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))

(assert (= (and d!7995 res!25739) b!43449))

(assert (= (and b!43449 res!25740) b!43450))

(declare-fun m!37331 () Bool)

(assert (=> d!7995 m!37331))

(declare-fun m!37333 () Bool)

(assert (=> d!7995 m!37333))

(declare-fun m!37335 () Bool)

(assert (=> d!7995 m!37335))

(declare-fun m!37337 () Bool)

(assert (=> d!7995 m!37337))

(declare-fun m!37339 () Bool)

(assert (=> b!43449 m!37339))

(declare-fun m!37341 () Bool)

(assert (=> b!43450 m!37341))

(assert (=> b!43224 d!7995))

(assert (=> d!7963 d!7957))

(declare-fun d!7999 () Bool)

(assert (=> d!7999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18388 mask!853)))

(assert (=> d!7999 true))

(declare-fun _$30!60 () Unit!1201)

(assert (=> d!7999 (= (choose!34 lt!18388 mask!853 #b00000000000000000000000000000000) _$30!60)))

(declare-fun bs!1944 () Bool)

(assert (= bs!1944 d!7999))

(assert (=> bs!1944 m!36985))

(assert (=> d!7963 d!7999))

(assert (=> d!7963 d!7969))

(declare-fun b!43542 () Bool)

(declare-fun res!25773 () Bool)

(declare-fun e!27595 () Bool)

(assert (=> b!43542 (=> (not res!25773) (not e!27595))))

(declare-fun lt!18789 () ListLongMap!1209)

(assert (=> b!43542 (= res!25773 (not (contains!565 lt!18789 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!43543 () Bool)

(declare-fun e!27599 () Bool)

(declare-fun isEmpty!284 (ListLongMap!1209) Bool)

(assert (=> b!43543 (= e!27599 (isEmpty!284 lt!18789))))

(declare-fun b!43544 () Bool)

(assert (=> b!43544 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(assert (=> b!43544 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1593 lt!18387)))))

(declare-fun e!27600 () Bool)

(assert (=> b!43544 (= e!27600 (= (apply!58 lt!18789 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) (get!789 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun call!3493 () ListLongMap!1209)

(declare-fun bm!3490 () Bool)

(assert (=> bm!3490 (= call!3493 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!470))))

(declare-fun b!43546 () Bool)

(declare-fun e!27598 () ListLongMap!1209)

(assert (=> b!43546 (= e!27598 (ListLongMap!1210 Nil!1211))))

(declare-fun b!43547 () Bool)

(declare-fun e!27597 () Bool)

(assert (=> b!43547 (= e!27597 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(assert (=> b!43547 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!43548 () Bool)

(declare-fun e!27601 () Bool)

(assert (=> b!43548 (= e!27601 e!27599)))

(declare-fun c!5609 () Bool)

(assert (=> b!43548 (= c!5609 (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(declare-fun b!43549 () Bool)

(assert (=> b!43549 (= e!27599 (= lt!18789 (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!470)))))

(declare-fun b!43550 () Bool)

(declare-fun e!27596 () ListLongMap!1209)

(assert (=> b!43550 (= e!27598 e!27596)))

(declare-fun c!5610 () Bool)

(assert (=> b!43550 (= c!5610 (validKeyInArray!0 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43551 () Bool)

(assert (=> b!43551 (= e!27595 e!27601)))

(declare-fun c!5612 () Bool)

(assert (=> b!43551 (= c!5612 e!27597)))

(declare-fun res!25771 () Bool)

(assert (=> b!43551 (=> (not res!25771) (not e!27597))))

(assert (=> b!43551 (= res!25771 (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(declare-fun b!43545 () Bool)

(declare-fun lt!18786 () Unit!1201)

(declare-fun lt!18788 () Unit!1201)

(assert (=> b!43545 (= lt!18786 lt!18788)))

(declare-fun lt!18791 () V!2311)

(declare-fun lt!18787 () ListLongMap!1209)

(declare-fun lt!18790 () (_ BitVec 64))

(declare-fun lt!18792 () (_ BitVec 64))

(assert (=> b!43545 (not (contains!565 (+!67 lt!18787 (tuple2!1629 lt!18790 lt!18791)) lt!18792))))

(declare-fun addStillNotContains!10 (ListLongMap!1209 (_ BitVec 64) V!2311 (_ BitVec 64)) Unit!1201)

(assert (=> b!43545 (= lt!18788 (addStillNotContains!10 lt!18787 lt!18790 lt!18791 lt!18792))))

(assert (=> b!43545 (= lt!18792 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!43545 (= lt!18791 (get!789 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!43545 (= lt!18790 (select (arr!1407 lt!18388) #b00000000000000000000000000000000))))

(assert (=> b!43545 (= lt!18787 call!3493)))

(assert (=> b!43545 (= e!27596 (+!67 call!3493 (tuple2!1629 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) (get!789 (select (arr!1408 lt!18387) #b00000000000000000000000000000000) (dynLambda!260 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!8001 () Bool)

(assert (=> d!8001 e!27595))

(declare-fun res!25774 () Bool)

(assert (=> d!8001 (=> (not res!25774) (not e!27595))))

(assert (=> d!8001 (= res!25774 (not (contains!565 lt!18789 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!8001 (= lt!18789 e!27598)))

(declare-fun c!5611 () Bool)

(assert (=> d!8001 (= c!5611 (bvsge #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(assert (=> d!8001 (validMask!0 mask!853)))

(assert (=> d!8001 (= (getCurrentListMapNoExtraKeys!36 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470) lt!18789)))

(declare-fun b!43552 () Bool)

(assert (=> b!43552 (= e!27596 call!3493)))

(declare-fun b!43553 () Bool)

(assert (=> b!43553 (= e!27601 e!27600)))

(assert (=> b!43553 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 lt!18388)))))

(declare-fun res!25772 () Bool)

(assert (=> b!43553 (= res!25772 (contains!565 lt!18789 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(assert (=> b!43553 (=> (not res!25772) (not e!27600))))

(assert (= (and d!8001 c!5611) b!43546))

(assert (= (and d!8001 (not c!5611)) b!43550))

(assert (= (and b!43550 c!5610) b!43545))

(assert (= (and b!43550 (not c!5610)) b!43552))

(assert (= (or b!43545 b!43552) bm!3490))

(assert (= (and d!8001 res!25774) b!43542))

(assert (= (and b!43542 res!25773) b!43551))

(assert (= (and b!43551 res!25771) b!43547))

(assert (= (and b!43551 c!5612) b!43553))

(assert (= (and b!43551 (not c!5612)) b!43548))

(assert (= (and b!43553 res!25772) b!43544))

(assert (= (and b!43548 c!5609) b!43549))

(assert (= (and b!43548 (not c!5609)) b!43543))

(declare-fun b_lambda!2291 () Bool)

(assert (=> (not b_lambda!2291) (not b!43544)))

(assert (=> b!43544 t!4220))

(declare-fun b_and!2683 () Bool)

(assert (= b_and!2673 (and (=> t!4220 result!1729) b_and!2683)))

(declare-fun b_lambda!2293 () Bool)

(assert (=> (not b_lambda!2293) (not b!43545)))

(assert (=> b!43545 t!4220))

(declare-fun b_and!2685 () Bool)

(assert (= b_and!2683 (and (=> t!4220 result!1729) b_and!2685)))

(assert (=> b!43544 m!37147))

(assert (=> b!43544 m!37103))

(declare-fun m!37393 () Bool)

(assert (=> b!43544 m!37393))

(assert (=> b!43544 m!36979))

(assert (=> b!43544 m!37147))

(assert (=> b!43544 m!36979))

(assert (=> b!43544 m!37149))

(assert (=> b!43544 m!37103))

(declare-fun m!37395 () Bool)

(assert (=> b!43549 m!37395))

(declare-fun m!37397 () Bool)

(assert (=> b!43545 m!37397))

(assert (=> b!43545 m!37147))

(assert (=> b!43545 m!36979))

(assert (=> b!43545 m!37147))

(assert (=> b!43545 m!36979))

(assert (=> b!43545 m!37149))

(declare-fun m!37399 () Bool)

(assert (=> b!43545 m!37399))

(declare-fun m!37401 () Bool)

(assert (=> b!43545 m!37401))

(assert (=> b!43545 m!37103))

(declare-fun m!37403 () Bool)

(assert (=> b!43545 m!37403))

(assert (=> b!43545 m!37399))

(assert (=> b!43550 m!37103))

(assert (=> b!43550 m!37103))

(assert (=> b!43550 m!37105))

(declare-fun m!37405 () Bool)

(assert (=> b!43543 m!37405))

(declare-fun m!37407 () Bool)

(assert (=> b!43542 m!37407))

(assert (=> b!43547 m!37103))

(assert (=> b!43547 m!37103))

(assert (=> b!43547 m!37105))

(assert (=> bm!3490 m!37395))

(declare-fun m!37409 () Bool)

(assert (=> d!8001 m!37409))

(assert (=> d!8001 m!36989))

(assert (=> b!43553 m!37103))

(assert (=> b!43553 m!37103))

(declare-fun m!37411 () Bool)

(assert (=> b!43553 m!37411))

(assert (=> bm!3430 d!8001))

(declare-fun bm!3491 () Bool)

(declare-fun call!3494 () Bool)

(assert (=> bm!3491 (= call!3494 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!18388 mask!853))))

(declare-fun b!43573 () Bool)

(declare-fun e!27611 () Bool)

(assert (=> b!43573 (= e!27611 call!3494)))

(declare-fun b!43574 () Bool)

(declare-fun e!27612 () Bool)

(assert (=> b!43574 (= e!27612 e!27611)))

(declare-fun lt!18811 () (_ BitVec 64))

(assert (=> b!43574 (= lt!18811 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!18813 () Unit!1201)

(assert (=> b!43574 (= lt!18813 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!18388 lt!18811 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!43574 (arrayContainsKey!0 lt!18388 lt!18811 #b00000000000000000000000000000000)))

(declare-fun lt!18812 () Unit!1201)

(assert (=> b!43574 (= lt!18812 lt!18813)))

(declare-fun res!25781 () Bool)

(assert (=> b!43574 (= res!25781 (= (seekEntryOrOpen!0 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!18388 mask!853) (Found!209 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!43574 (=> (not res!25781) (not e!27611))))

(declare-fun b!43575 () Bool)

(declare-fun e!27613 () Bool)

(assert (=> b!43575 (= e!27613 e!27612)))

(declare-fun c!5619 () Bool)

(assert (=> b!43575 (= c!5619 (validKeyInArray!0 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43572 () Bool)

(assert (=> b!43572 (= e!27612 call!3494)))

(declare-fun d!8029 () Bool)

(declare-fun res!25782 () Bool)

(assert (=> d!8029 (=> res!25782 e!27613)))

(assert (=> d!8029 (= res!25782 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1592 lt!18388)))))

(assert (=> d!8029 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!18388 mask!853) e!27613)))

(assert (= (and d!8029 (not res!25782)) b!43575))

(assert (= (and b!43575 c!5619) b!43574))

(assert (= (and b!43575 (not c!5619)) b!43572))

(assert (= (and b!43574 res!25781) b!43573))

(assert (= (or b!43573 b!43572) bm!3491))

(declare-fun m!37425 () Bool)

(assert (=> bm!3491 m!37425))

(assert (=> b!43574 m!37319))

(declare-fun m!37427 () Bool)

(assert (=> b!43574 m!37427))

(declare-fun m!37429 () Bool)

(assert (=> b!43574 m!37429))

(assert (=> b!43574 m!37319))

(declare-fun m!37431 () Bool)

(assert (=> b!43574 m!37431))

(assert (=> b!43575 m!37319))

(assert (=> b!43575 m!37319))

(assert (=> b!43575 m!37321))

(assert (=> bm!3437 d!8029))

(declare-fun d!8033 () Bool)

(declare-fun e!27614 () Bool)

(assert (=> d!8033 e!27614))

(declare-fun res!25783 () Bool)

(assert (=> d!8033 (=> (not res!25783) (not e!27614))))

(declare-fun lt!18815 () ListLongMap!1209)

(assert (=> d!8033 (= res!25783 (contains!565 lt!18815 (_1!824 (tuple2!1629 lt!18548 lt!18390))))))

(declare-fun lt!18816 () List!1214)

(assert (=> d!8033 (= lt!18815 (ListLongMap!1210 lt!18816))))

(declare-fun lt!18814 () Unit!1201)

(declare-fun lt!18817 () Unit!1201)

(assert (=> d!8033 (= lt!18814 lt!18817)))

(assert (=> d!8033 (= (getValueByKey!103 lt!18816 (_1!824 (tuple2!1629 lt!18548 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18548 lt!18390))))))

(assert (=> d!8033 (= lt!18817 (lemmaContainsTupThenGetReturnValue!29 lt!18816 (_1!824 (tuple2!1629 lt!18548 lt!18390)) (_2!824 (tuple2!1629 lt!18548 lt!18390))))))

(assert (=> d!8033 (= lt!18816 (insertStrictlySorted!26 (toList!620 lt!18537) (_1!824 (tuple2!1629 lt!18548 lt!18390)) (_2!824 (tuple2!1629 lt!18548 lt!18390))))))

(assert (=> d!8033 (= (+!67 lt!18537 (tuple2!1629 lt!18548 lt!18390)) lt!18815)))

(declare-fun b!43576 () Bool)

(declare-fun res!25784 () Bool)

(assert (=> b!43576 (=> (not res!25784) (not e!27614))))

(assert (=> b!43576 (= res!25784 (= (getValueByKey!103 (toList!620 lt!18815) (_1!824 (tuple2!1629 lt!18548 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18548 lt!18390)))))))

(declare-fun b!43577 () Bool)

(assert (=> b!43577 (= e!27614 (contains!570 (toList!620 lt!18815) (tuple2!1629 lt!18548 lt!18390)))))

(assert (= (and d!8033 res!25783) b!43576))

(assert (= (and b!43576 res!25784) b!43577))

(declare-fun m!37433 () Bool)

(assert (=> d!8033 m!37433))

(declare-fun m!37435 () Bool)

(assert (=> d!8033 m!37435))

(declare-fun m!37437 () Bool)

(assert (=> d!8033 m!37437))

(declare-fun m!37439 () Bool)

(assert (=> d!8033 m!37439))

(declare-fun m!37441 () Bool)

(assert (=> b!43576 m!37441))

(declare-fun m!37443 () Bool)

(assert (=> b!43577 m!37443))

(assert (=> b!43222 d!8033))

(declare-fun d!8035 () Bool)

(assert (=> d!8035 (contains!565 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390)) lt!18547)))

(declare-fun lt!18830 () Unit!1201)

(declare-fun choose!259 (ListLongMap!1209 (_ BitVec 64) V!2311 (_ BitVec 64)) Unit!1201)

(assert (=> d!8035 (= lt!18830 (choose!259 lt!18541 lt!18544 lt!18390 lt!18547))))

(assert (=> d!8035 (contains!565 lt!18541 lt!18547)))

(assert (=> d!8035 (= (addStillContains!34 lt!18541 lt!18544 lt!18390 lt!18547) lt!18830)))

(declare-fun bs!1954 () Bool)

(assert (= bs!1954 d!8035))

(assert (=> bs!1954 m!37119))

(assert (=> bs!1954 m!37119))

(assert (=> bs!1954 m!37139))

(declare-fun m!37483 () Bool)

(assert (=> bs!1954 m!37483))

(declare-fun m!37487 () Bool)

(assert (=> bs!1954 m!37487))

(assert (=> b!43222 d!8035))

(assert (=> b!43222 d!8001))

(declare-fun d!8051 () Bool)

(assert (=> d!8051 (= (apply!58 lt!18542 lt!18552) (get!792 (getValueByKey!103 (toList!620 lt!18542) lt!18552)))))

(declare-fun bs!1955 () Bool)

(assert (= bs!1955 d!8051))

(declare-fun m!37495 () Bool)

(assert (=> bs!1955 m!37495))

(assert (=> bs!1955 m!37495))

(declare-fun m!37497 () Bool)

(assert (=> bs!1955 m!37497))

(assert (=> b!43222 d!8051))

(declare-fun d!8055 () Bool)

(assert (=> d!8055 (= (apply!58 (+!67 lt!18542 (tuple2!1629 lt!18553 lt!18390)) lt!18552) (get!792 (getValueByKey!103 (toList!620 (+!67 lt!18542 (tuple2!1629 lt!18553 lt!18390))) lt!18552)))))

(declare-fun bs!1956 () Bool)

(assert (= bs!1956 d!8055))

(declare-fun m!37499 () Bool)

(assert (=> bs!1956 m!37499))

(assert (=> bs!1956 m!37499))

(declare-fun m!37501 () Bool)

(assert (=> bs!1956 m!37501))

(assert (=> b!43222 d!8055))

(declare-fun d!8057 () Bool)

(assert (=> d!8057 (= (apply!58 (+!67 lt!18537 (tuple2!1629 lt!18548 lt!18390)) lt!18535) (get!792 (getValueByKey!103 (toList!620 (+!67 lt!18537 (tuple2!1629 lt!18548 lt!18390))) lt!18535)))))

(declare-fun bs!1957 () Bool)

(assert (= bs!1957 d!8057))

(declare-fun m!37503 () Bool)

(assert (=> bs!1957 m!37503))

(assert (=> bs!1957 m!37503))

(declare-fun m!37505 () Bool)

(assert (=> bs!1957 m!37505))

(assert (=> b!43222 d!8057))

(declare-fun d!8059 () Bool)

(declare-fun e!27622 () Bool)

(assert (=> d!8059 e!27622))

(declare-fun res!25789 () Bool)

(assert (=> d!8059 (=> (not res!25789) (not e!27622))))

(declare-fun lt!18832 () ListLongMap!1209)

(assert (=> d!8059 (= res!25789 (contains!565 lt!18832 (_1!824 (tuple2!1629 lt!18553 lt!18390))))))

(declare-fun lt!18833 () List!1214)

(assert (=> d!8059 (= lt!18832 (ListLongMap!1210 lt!18833))))

(declare-fun lt!18831 () Unit!1201)

(declare-fun lt!18834 () Unit!1201)

(assert (=> d!8059 (= lt!18831 lt!18834)))

(assert (=> d!8059 (= (getValueByKey!103 lt!18833 (_1!824 (tuple2!1629 lt!18553 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18553 lt!18390))))))

(assert (=> d!8059 (= lt!18834 (lemmaContainsTupThenGetReturnValue!29 lt!18833 (_1!824 (tuple2!1629 lt!18553 lt!18390)) (_2!824 (tuple2!1629 lt!18553 lt!18390))))))

(assert (=> d!8059 (= lt!18833 (insertStrictlySorted!26 (toList!620 lt!18542) (_1!824 (tuple2!1629 lt!18553 lt!18390)) (_2!824 (tuple2!1629 lt!18553 lt!18390))))))

(assert (=> d!8059 (= (+!67 lt!18542 (tuple2!1629 lt!18553 lt!18390)) lt!18832)))

(declare-fun b!43591 () Bool)

(declare-fun res!25790 () Bool)

(assert (=> b!43591 (=> (not res!25790) (not e!27622))))

(assert (=> b!43591 (= res!25790 (= (getValueByKey!103 (toList!620 lt!18832) (_1!824 (tuple2!1629 lt!18553 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18553 lt!18390)))))))

(declare-fun b!43592 () Bool)

(assert (=> b!43592 (= e!27622 (contains!570 (toList!620 lt!18832) (tuple2!1629 lt!18553 lt!18390)))))

(assert (= (and d!8059 res!25789) b!43591))

(assert (= (and b!43591 res!25790) b!43592))

(declare-fun m!37507 () Bool)

(assert (=> d!8059 m!37507))

(declare-fun m!37509 () Bool)

(assert (=> d!8059 m!37509))

(declare-fun m!37511 () Bool)

(assert (=> d!8059 m!37511))

(declare-fun m!37513 () Bool)

(assert (=> d!8059 m!37513))

(declare-fun m!37515 () Bool)

(assert (=> b!43591 m!37515))

(declare-fun m!37517 () Bool)

(assert (=> b!43592 m!37517))

(assert (=> b!43222 d!8059))

(declare-fun d!8061 () Bool)

(assert (=> d!8061 (= (apply!58 lt!18545 lt!18536) (get!792 (getValueByKey!103 (toList!620 lt!18545) lt!18536)))))

(declare-fun bs!1958 () Bool)

(assert (= bs!1958 d!8061))

(declare-fun m!37519 () Bool)

(assert (=> bs!1958 m!37519))

(assert (=> bs!1958 m!37519))

(declare-fun m!37521 () Bool)

(assert (=> bs!1958 m!37521))

(assert (=> b!43222 d!8061))

(declare-fun d!8063 () Bool)

(declare-fun e!27625 () Bool)

(assert (=> d!8063 e!27625))

(declare-fun res!25793 () Bool)

(assert (=> d!8063 (=> (not res!25793) (not e!27625))))

(declare-fun lt!18838 () ListLongMap!1209)

(assert (=> d!8063 (= res!25793 (contains!565 lt!18838 (_1!824 (tuple2!1629 lt!18540 lt!18390))))))

(declare-fun lt!18839 () List!1214)

(assert (=> d!8063 (= lt!18838 (ListLongMap!1210 lt!18839))))

(declare-fun lt!18837 () Unit!1201)

(declare-fun lt!18840 () Unit!1201)

(assert (=> d!8063 (= lt!18837 lt!18840)))

(assert (=> d!8063 (= (getValueByKey!103 lt!18839 (_1!824 (tuple2!1629 lt!18540 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18540 lt!18390))))))

(assert (=> d!8063 (= lt!18840 (lemmaContainsTupThenGetReturnValue!29 lt!18839 (_1!824 (tuple2!1629 lt!18540 lt!18390)) (_2!824 (tuple2!1629 lt!18540 lt!18390))))))

(assert (=> d!8063 (= lt!18839 (insertStrictlySorted!26 (toList!620 lt!18545) (_1!824 (tuple2!1629 lt!18540 lt!18390)) (_2!824 (tuple2!1629 lt!18540 lt!18390))))))

(assert (=> d!8063 (= (+!67 lt!18545 (tuple2!1629 lt!18540 lt!18390)) lt!18838)))

(declare-fun b!43596 () Bool)

(declare-fun res!25794 () Bool)

(assert (=> b!43596 (=> (not res!25794) (not e!27625))))

(assert (=> b!43596 (= res!25794 (= (getValueByKey!103 (toList!620 lt!18838) (_1!824 (tuple2!1629 lt!18540 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18540 lt!18390)))))))

(declare-fun b!43597 () Bool)

(assert (=> b!43597 (= e!27625 (contains!570 (toList!620 lt!18838) (tuple2!1629 lt!18540 lt!18390)))))

(assert (= (and d!8063 res!25793) b!43596))

(assert (= (and b!43596 res!25794) b!43597))

(declare-fun m!37523 () Bool)

(assert (=> d!8063 m!37523))

(declare-fun m!37527 () Bool)

(assert (=> d!8063 m!37527))

(declare-fun m!37531 () Bool)

(assert (=> d!8063 m!37531))

(declare-fun m!37533 () Bool)

(assert (=> d!8063 m!37533))

(declare-fun m!37535 () Bool)

(assert (=> b!43596 m!37535))

(declare-fun m!37537 () Bool)

(assert (=> b!43597 m!37537))

(assert (=> b!43222 d!8063))

(declare-fun d!8067 () Bool)

(assert (=> d!8067 (= (apply!58 lt!18537 lt!18535) (get!792 (getValueByKey!103 (toList!620 lt!18537) lt!18535)))))

(declare-fun bs!1960 () Bool)

(assert (= bs!1960 d!8067))

(declare-fun m!37539 () Bool)

(assert (=> bs!1960 m!37539))

(assert (=> bs!1960 m!37539))

(declare-fun m!37541 () Bool)

(assert (=> bs!1960 m!37541))

(assert (=> b!43222 d!8067))

(declare-fun d!8069 () Bool)

(assert (=> d!8069 (= (apply!58 (+!67 lt!18542 (tuple2!1629 lt!18553 lt!18390)) lt!18552) (apply!58 lt!18542 lt!18552))))

(declare-fun lt!18863 () Unit!1201)

(declare-fun choose!261 (ListLongMap!1209 (_ BitVec 64) V!2311 (_ BitVec 64)) Unit!1201)

(assert (=> d!8069 (= lt!18863 (choose!261 lt!18542 lt!18553 lt!18390 lt!18552))))

(declare-fun e!27634 () Bool)

(assert (=> d!8069 e!27634))

(declare-fun res!25805 () Bool)

(assert (=> d!8069 (=> (not res!25805) (not e!27634))))

(assert (=> d!8069 (= res!25805 (contains!565 lt!18542 lt!18552))))

(assert (=> d!8069 (= (addApplyDifferent!34 lt!18542 lt!18553 lt!18390 lt!18552) lt!18863)))

(declare-fun b!43611 () Bool)

(assert (=> b!43611 (= e!27634 (not (= lt!18552 lt!18553)))))

(assert (= (and d!8069 res!25805) b!43611))

(assert (=> d!8069 m!37123))

(assert (=> d!8069 m!37125))

(assert (=> d!8069 m!37123))

(declare-fun m!37591 () Bool)

(assert (=> d!8069 m!37591))

(declare-fun m!37593 () Bool)

(assert (=> d!8069 m!37593))

(assert (=> d!8069 m!37121))

(assert (=> b!43222 d!8069))

(declare-fun d!8081 () Bool)

(assert (=> d!8081 (= (apply!58 (+!67 lt!18545 (tuple2!1629 lt!18540 lt!18390)) lt!18536) (get!792 (getValueByKey!103 (toList!620 (+!67 lt!18545 (tuple2!1629 lt!18540 lt!18390))) lt!18536)))))

(declare-fun bs!1961 () Bool)

(assert (= bs!1961 d!8081))

(declare-fun m!37595 () Bool)

(assert (=> bs!1961 m!37595))

(assert (=> bs!1961 m!37595))

(declare-fun m!37597 () Bool)

(assert (=> bs!1961 m!37597))

(assert (=> b!43222 d!8081))

(declare-fun d!8083 () Bool)

(assert (=> d!8083 (= (apply!58 (+!67 lt!18537 (tuple2!1629 lt!18548 lt!18390)) lt!18535) (apply!58 lt!18537 lt!18535))))

(declare-fun lt!18864 () Unit!1201)

(assert (=> d!8083 (= lt!18864 (choose!261 lt!18537 lt!18548 lt!18390 lt!18535))))

(declare-fun e!27635 () Bool)

(assert (=> d!8083 e!27635))

(declare-fun res!25806 () Bool)

(assert (=> d!8083 (=> (not res!25806) (not e!27635))))

(assert (=> d!8083 (= res!25806 (contains!565 lt!18537 lt!18535))))

(assert (=> d!8083 (= (addApplyDifferent!34 lt!18537 lt!18548 lt!18390 lt!18535) lt!18864)))

(declare-fun b!43612 () Bool)

(assert (=> b!43612 (= e!27635 (not (= lt!18535 lt!18548)))))

(assert (= (and d!8083 res!25806) b!43612))

(assert (=> d!8083 m!37115))

(assert (=> d!8083 m!37117))

(assert (=> d!8083 m!37115))

(declare-fun m!37599 () Bool)

(assert (=> d!8083 m!37599))

(declare-fun m!37601 () Bool)

(assert (=> d!8083 m!37601))

(assert (=> d!8083 m!37133))

(assert (=> b!43222 d!8083))

(declare-fun d!8085 () Bool)

(declare-fun e!27641 () Bool)

(assert (=> d!8085 e!27641))

(declare-fun res!25813 () Bool)

(assert (=> d!8085 (=> res!25813 e!27641)))

(declare-fun lt!18877 () Bool)

(assert (=> d!8085 (= res!25813 (not lt!18877))))

(declare-fun lt!18876 () Bool)

(assert (=> d!8085 (= lt!18877 lt!18876)))

(declare-fun lt!18875 () Unit!1201)

(declare-fun e!27640 () Unit!1201)

(assert (=> d!8085 (= lt!18875 e!27640)))

(declare-fun c!5625 () Bool)

(assert (=> d!8085 (= c!5625 lt!18876)))

(assert (=> d!8085 (= lt!18876 (containsKey!71 (toList!620 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390))) lt!18547))))

(assert (=> d!8085 (= (contains!565 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390)) lt!18547) lt!18877)))

(declare-fun b!43620 () Bool)

(declare-fun lt!18878 () Unit!1201)

(assert (=> b!43620 (= e!27640 lt!18878)))

(assert (=> b!43620 (= lt!18878 (lemmaContainsKeyImpliesGetValueByKeyDefined!59 (toList!620 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390))) lt!18547))))

(assert (=> b!43620 (isDefined!60 (getValueByKey!103 (toList!620 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390))) lt!18547))))

(declare-fun b!43621 () Bool)

(declare-fun Unit!1214 () Unit!1201)

(assert (=> b!43621 (= e!27640 Unit!1214)))

(declare-fun b!43622 () Bool)

(assert (=> b!43622 (= e!27641 (isDefined!60 (getValueByKey!103 (toList!620 (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390))) lt!18547)))))

(assert (= (and d!8085 c!5625) b!43620))

(assert (= (and d!8085 (not c!5625)) b!43621))

(assert (= (and d!8085 (not res!25813)) b!43622))

(declare-fun m!37603 () Bool)

(assert (=> d!8085 m!37603))

(declare-fun m!37605 () Bool)

(assert (=> b!43620 m!37605))

(declare-fun m!37607 () Bool)

(assert (=> b!43620 m!37607))

(assert (=> b!43620 m!37607))

(declare-fun m!37609 () Bool)

(assert (=> b!43620 m!37609))

(assert (=> b!43622 m!37607))

(assert (=> b!43622 m!37607))

(assert (=> b!43622 m!37609))

(assert (=> b!43222 d!8085))

(declare-fun d!8087 () Bool)

(assert (=> d!8087 (= (apply!58 (+!67 lt!18545 (tuple2!1629 lt!18540 lt!18390)) lt!18536) (apply!58 lt!18545 lt!18536))))

(declare-fun lt!18879 () Unit!1201)

(assert (=> d!8087 (= lt!18879 (choose!261 lt!18545 lt!18540 lt!18390 lt!18536))))

(declare-fun e!27642 () Bool)

(assert (=> d!8087 e!27642))

(declare-fun res!25814 () Bool)

(assert (=> d!8087 (=> (not res!25814) (not e!27642))))

(assert (=> d!8087 (= res!25814 (contains!565 lt!18545 lt!18536))))

(assert (=> d!8087 (= (addApplyDifferent!34 lt!18545 lt!18540 lt!18390 lt!18536) lt!18879)))

(declare-fun b!43623 () Bool)

(assert (=> b!43623 (= e!27642 (not (= lt!18536 lt!18540)))))

(assert (= (and d!8087 res!25814) b!43623))

(assert (=> d!8087 m!37127))

(assert (=> d!8087 m!37129))

(assert (=> d!8087 m!37127))

(declare-fun m!37611 () Bool)

(assert (=> d!8087 m!37611))

(declare-fun m!37613 () Bool)

(assert (=> d!8087 m!37613))

(assert (=> d!8087 m!37135))

(assert (=> b!43222 d!8087))

(declare-fun d!8089 () Bool)

(declare-fun e!27644 () Bool)

(assert (=> d!8089 e!27644))

(declare-fun res!25816 () Bool)

(assert (=> d!8089 (=> (not res!25816) (not e!27644))))

(declare-fun lt!18882 () ListLongMap!1209)

(assert (=> d!8089 (= res!25816 (contains!565 lt!18882 (_1!824 (tuple2!1629 lt!18544 lt!18390))))))

(declare-fun lt!18883 () List!1214)

(assert (=> d!8089 (= lt!18882 (ListLongMap!1210 lt!18883))))

(declare-fun lt!18881 () Unit!1201)

(declare-fun lt!18884 () Unit!1201)

(assert (=> d!8089 (= lt!18881 lt!18884)))

(assert (=> d!8089 (= (getValueByKey!103 lt!18883 (_1!824 (tuple2!1629 lt!18544 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18544 lt!18390))))))

(assert (=> d!8089 (= lt!18884 (lemmaContainsTupThenGetReturnValue!29 lt!18883 (_1!824 (tuple2!1629 lt!18544 lt!18390)) (_2!824 (tuple2!1629 lt!18544 lt!18390))))))

(assert (=> d!8089 (= lt!18883 (insertStrictlySorted!26 (toList!620 lt!18541) (_1!824 (tuple2!1629 lt!18544 lt!18390)) (_2!824 (tuple2!1629 lt!18544 lt!18390))))))

(assert (=> d!8089 (= (+!67 lt!18541 (tuple2!1629 lt!18544 lt!18390)) lt!18882)))

(declare-fun b!43625 () Bool)

(declare-fun res!25817 () Bool)

(assert (=> b!43625 (=> (not res!25817) (not e!27644))))

(assert (=> b!43625 (= res!25817 (= (getValueByKey!103 (toList!620 lt!18882) (_1!824 (tuple2!1629 lt!18544 lt!18390))) (Some!108 (_2!824 (tuple2!1629 lt!18544 lt!18390)))))))

(declare-fun b!43626 () Bool)

(assert (=> b!43626 (= e!27644 (contains!570 (toList!620 lt!18882) (tuple2!1629 lt!18544 lt!18390)))))

(assert (= (and d!8089 res!25816) b!43625))

(assert (= (and b!43625 res!25817) b!43626))

(declare-fun m!37619 () Bool)

(assert (=> d!8089 m!37619))

(declare-fun m!37621 () Bool)

(assert (=> d!8089 m!37621))

(declare-fun m!37625 () Bool)

(assert (=> d!8089 m!37625))

(declare-fun m!37627 () Bool)

(assert (=> d!8089 m!37627))

(declare-fun m!37631 () Bool)

(assert (=> b!43625 m!37631))

(declare-fun m!37633 () Bool)

(assert (=> b!43626 m!37633))

(assert (=> b!43222 d!8089))

(declare-fun d!8093 () Bool)

(declare-fun e!27647 () Bool)

(assert (=> d!8093 e!27647))

(declare-fun res!25821 () Bool)

(assert (=> d!8093 (=> (not res!25821) (not e!27647))))

(declare-fun lt!18891 () ListLongMap!1209)

(assert (=> d!8093 (= res!25821 (contains!565 lt!18891 (_1!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))))

(declare-fun lt!18892 () List!1214)

(assert (=> d!8093 (= lt!18891 (ListLongMap!1210 lt!18892))))

(declare-fun lt!18890 () Unit!1201)

(declare-fun lt!18893 () Unit!1201)

(assert (=> d!8093 (= lt!18890 lt!18893)))

(assert (=> d!8093 (= (getValueByKey!103 lt!18892 (_1!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))) (Some!108 (_2!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))))

(assert (=> d!8093 (= lt!18893 (lemmaContainsTupThenGetReturnValue!29 lt!18892 (_1!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))) (_2!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))))

(assert (=> d!8093 (= lt!18892 (insertStrictlySorted!26 (toList!620 (ite c!5507 call!3431 (ite c!5508 call!3428 call!3434))) (_1!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))) (_2!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))))))

(assert (=> d!8093 (= (+!67 (ite c!5507 call!3431 (ite c!5508 call!3428 call!3434)) (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))) lt!18891)))

(declare-fun b!43630 () Bool)

(declare-fun res!25822 () Bool)

(assert (=> b!43630 (=> (not res!25822) (not e!27647))))

(assert (=> b!43630 (= res!25822 (= (getValueByKey!103 (toList!620 lt!18891) (_1!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390)))) (Some!108 (_2!824 (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))))

(declare-fun b!43631 () Bool)

(assert (=> b!43631 (= e!27647 (contains!570 (toList!620 lt!18891) (ite (or c!5507 c!5508) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 lt!18390) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 lt!18390))))))

(assert (= (and d!8093 res!25821) b!43630))

(assert (= (and b!43630 res!25822) b!43631))

(declare-fun m!37651 () Bool)

(assert (=> d!8093 m!37651))

(declare-fun m!37655 () Bool)

(assert (=> d!8093 m!37655))

(declare-fun m!37659 () Bool)

(assert (=> d!8093 m!37659))

(declare-fun m!37661 () Bool)

(assert (=> d!8093 m!37661))

(declare-fun m!37663 () Bool)

(assert (=> b!43630 m!37663))

(declare-fun m!37665 () Bool)

(assert (=> b!43631 m!37665))

(assert (=> bm!3429 d!8093))

(declare-fun d!8103 () Bool)

(declare-fun e!27652 () Bool)

(assert (=> d!8103 e!27652))

(declare-fun res!25825 () Bool)

(assert (=> d!8103 (=> res!25825 e!27652)))

(declare-fun lt!18901 () Bool)

(assert (=> d!8103 (= res!25825 (not lt!18901))))

(declare-fun lt!18900 () Bool)

(assert (=> d!8103 (= lt!18901 lt!18900)))

(declare-fun lt!18899 () Unit!1201)

(declare-fun e!27651 () Unit!1201)

(assert (=> d!8103 (= lt!18899 e!27651)))

(declare-fun c!5627 () Bool)

(assert (=> d!8103 (= c!5627 lt!18900)))

(assert (=> d!8103 (= lt!18900 (containsKey!71 (toList!620 lt!18546) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!8103 (= (contains!565 lt!18546 #b0000000000000000000000000000000000000000000000000000000000000000) lt!18901)))

(declare-fun b!43636 () Bool)

(declare-fun lt!18902 () Unit!1201)

(assert (=> b!43636 (= e!27651 lt!18902)))

(assert (=> b!43636 (= lt!18902 (lemmaContainsKeyImpliesGetValueByKeyDefined!59 (toList!620 lt!18546) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!43636 (isDefined!60 (getValueByKey!103 (toList!620 lt!18546) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!43637 () Bool)

(declare-fun Unit!1216 () Unit!1201)

(assert (=> b!43637 (= e!27651 Unit!1216)))

(declare-fun b!43638 () Bool)

(assert (=> b!43638 (= e!27652 (isDefined!60 (getValueByKey!103 (toList!620 lt!18546) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!8103 c!5627) b!43636))

(assert (= (and d!8103 (not c!5627)) b!43637))

(assert (= (and d!8103 (not res!25825)) b!43638))

(declare-fun m!37681 () Bool)

(assert (=> d!8103 m!37681))

(declare-fun m!37685 () Bool)

(assert (=> b!43636 m!37685))

(declare-fun m!37689 () Bool)

(assert (=> b!43636 m!37689))

(assert (=> b!43636 m!37689))

(declare-fun m!37693 () Bool)

(assert (=> b!43636 m!37693))

(assert (=> b!43638 m!37689))

(assert (=> b!43638 m!37689))

(assert (=> b!43638 m!37693))

(assert (=> bm!3428 d!8103))

(declare-fun e!27657 () Bool)

(declare-fun b!43644 () Bool)

(assert (=> b!43644 (= e!27657 (validKeyInArray!0 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun bm!3494 () Bool)

(declare-fun call!3503 () ListLongMap!1209)

(declare-fun call!3496 () ListLongMap!1209)

(assert (=> bm!3494 (= call!3503 call!3496)))

(declare-fun b!43645 () Bool)

(declare-fun e!27659 () Bool)

(declare-fun e!27668 () Bool)

(assert (=> b!43645 (= e!27659 e!27668)))

(declare-fun c!5634 () Bool)

(assert (=> b!43645 (= c!5634 (not (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3495 () Bool)

(declare-fun call!3500 () ListLongMap!1209)

(assert (=> bm!3495 (= call!3496 call!3500)))

(declare-fun c!5633 () Bool)

(declare-fun b!43646 () Bool)

(assert (=> b!43646 (= c!5633 (and (not (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!27662 () ListLongMap!1209)

(declare-fun e!27656 () ListLongMap!1209)

(assert (=> b!43646 (= e!27662 e!27656)))

(declare-fun b!43647 () Bool)

(declare-fun e!27660 () Bool)

(assert (=> b!43647 (= e!27660 (validKeyInArray!0 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!43648 () Bool)

(declare-fun e!27653 () Bool)

(assert (=> b!43648 (= e!27668 e!27653)))

(declare-fun res!25836 () Bool)

(declare-fun call!3497 () Bool)

(assert (=> b!43648 (= res!25836 call!3497)))

(assert (=> b!43648 (=> (not res!25836) (not e!27653))))

(declare-fun bm!3496 () Bool)

(declare-fun call!3502 () ListLongMap!1209)

(declare-fun call!3498 () ListLongMap!1209)

(assert (=> bm!3496 (= call!3502 call!3498)))

(declare-fun b!43649 () Bool)

(assert (=> b!43649 (= e!27656 call!3502)))

(declare-fun b!43651 () Bool)

(declare-fun e!27661 () Bool)

(declare-fun e!27665 () Bool)

(assert (=> b!43651 (= e!27661 e!27665)))

(declare-fun res!25826 () Bool)

(declare-fun call!3501 () Bool)

(assert (=> b!43651 (= res!25826 call!3501)))

(assert (=> b!43651 (=> (not res!25826) (not e!27665))))

(declare-fun b!43652 () Bool)

(assert (=> b!43652 (= e!27661 (not call!3501))))

(declare-fun bm!3497 () Bool)

(declare-fun lt!18914 () ListLongMap!1209)

(assert (=> bm!3497 (= call!3501 (contains!565 lt!18914 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!5629 () Bool)

(declare-fun bm!3498 () Bool)

(declare-fun c!5628 () Bool)

(assert (=> bm!3498 (= call!3498 (+!67 (ite c!5628 call!3500 (ite c!5629 call!3496 call!3503)) (ite (or c!5628 c!5629) (tuple2!1629 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))))

(declare-fun b!43653 () Bool)

(declare-fun e!27658 () Unit!1201)

(declare-fun lt!18919 () Unit!1201)

(assert (=> b!43653 (= e!27658 lt!18919)))

(declare-fun lt!18909 () ListLongMap!1209)

(assert (=> b!43653 (= lt!18909 (getCurrentListMapNoExtraKeys!36 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun lt!18912 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18912 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18915 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18915 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!18907 () Unit!1201)

(assert (=> b!43653 (= lt!18907 (addStillContains!34 lt!18909 lt!18912 (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) lt!18915))))

(assert (=> b!43653 (contains!565 (+!67 lt!18909 (tuple2!1629 lt!18912 (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))) lt!18915)))

(declare-fun lt!18917 () Unit!1201)

(assert (=> b!43653 (= lt!18917 lt!18907)))

(declare-fun lt!18905 () ListLongMap!1209)

(assert (=> b!43653 (= lt!18905 (getCurrentListMapNoExtraKeys!36 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun lt!18916 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18916 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18903 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18903 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!18906 () Unit!1201)

(assert (=> b!43653 (= lt!18906 (addApplyDifferent!34 lt!18905 lt!18916 (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) lt!18903))))

(assert (=> b!43653 (= (apply!58 (+!67 lt!18905 (tuple2!1629 lt!18916 (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))) lt!18903) (apply!58 lt!18905 lt!18903))))

(declare-fun lt!18922 () Unit!1201)

(assert (=> b!43653 (= lt!18922 lt!18906)))

(declare-fun lt!18913 () ListLongMap!1209)

(assert (=> b!43653 (= lt!18913 (getCurrentListMapNoExtraKeys!36 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun lt!18908 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18908 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18904 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18904 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!18911 () Unit!1201)

(assert (=> b!43653 (= lt!18911 (addApplyDifferent!34 lt!18913 lt!18908 (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) lt!18904))))

(assert (=> b!43653 (= (apply!58 (+!67 lt!18913 (tuple2!1629 lt!18908 (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))) lt!18904) (apply!58 lt!18913 lt!18904))))

(declare-fun lt!18923 () Unit!1201)

(assert (=> b!43653 (= lt!18923 lt!18911)))

(declare-fun lt!18910 () ListLongMap!1209)

(assert (=> b!43653 (= lt!18910 (getCurrentListMapNoExtraKeys!36 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun lt!18921 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18921 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!18920 () (_ BitVec 64))

(assert (=> b!43653 (= lt!18920 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(assert (=> b!43653 (= lt!18919 (addApplyDifferent!34 lt!18910 lt!18921 (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) lt!18920))))

(assert (=> b!43653 (= (apply!58 (+!67 lt!18910 (tuple2!1629 lt!18921 (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))) lt!18920) (apply!58 lt!18910 lt!18920))))

(declare-fun bm!3499 () Bool)

(assert (=> bm!3499 (= call!3500 (getCurrentListMapNoExtraKeys!36 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun b!43654 () Bool)

(assert (=> b!43654 (= e!27656 call!3503)))

(declare-fun e!27655 () ListLongMap!1209)

(declare-fun b!43655 () Bool)

(assert (=> b!43655 (= e!27655 (+!67 call!3498 (tuple2!1629 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))

(declare-fun e!27666 () Bool)

(declare-fun b!43656 () Bool)

(assert (=> b!43656 (= e!27666 (= (apply!58 lt!18914 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (get!789 (select (arr!1408 (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (dynLambda!260 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!43656 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1593 (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))

(assert (=> b!43656 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))

(declare-fun b!43657 () Bool)

(assert (=> b!43657 (= e!27662 call!3502)))

(declare-fun b!43658 () Bool)

(declare-fun e!27654 () Bool)

(assert (=> b!43658 (= e!27654 e!27666)))

(declare-fun res!25831 () Bool)

(assert (=> b!43658 (=> (not res!25831) (not e!27666))))

(assert (=> b!43658 (= res!25831 (contains!565 lt!18914 (select (arr!1407 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (=> b!43658 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))

(declare-fun b!43659 () Bool)

(assert (=> b!43659 (= e!27655 e!27662)))

(assert (=> b!43659 (= c!5629 (and (not (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!3500 () Bool)

(assert (=> bm!3500 (= call!3497 (contains!565 lt!18914 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!8113 () Bool)

(assert (=> d!8113 e!27659))

(declare-fun res!25830 () Bool)

(assert (=> d!8113 (=> (not res!25830) (not e!27659))))

(assert (=> d!8113 (= res!25830 (or (bvsge #b00000000000000000000000000000000 (size!1592 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1592 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))))

(declare-fun lt!18924 () ListLongMap!1209)

(assert (=> d!8113 (= lt!18914 lt!18924)))

(declare-fun lt!18918 () Unit!1201)

(assert (=> d!8113 (= lt!18918 e!27658)))

(declare-fun c!5630 () Bool)

(assert (=> d!8113 (= c!5630 e!27657)))

(declare-fun res!25837 () Bool)

(assert (=> d!8113 (=> (not res!25837) (not e!27657))))

(assert (=> d!8113 (= res!25837 (bvslt #b00000000000000000000000000000000 (size!1592 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))

(assert (=> d!8113 (= lt!18924 e!27655)))

(assert (=> d!8113 (= c!5628 (and (not (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!8113 (validMask!0 (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))

(assert (=> d!8113 (= (getCurrentListMap!351 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (_values!1865 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (mask!5431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) lt!18914)))

(declare-fun b!43650 () Bool)

(declare-fun res!25828 () Bool)

(assert (=> b!43650 (=> (not res!25828) (not e!27659))))

(assert (=> b!43650 (= res!25828 e!27654)))

(declare-fun res!25829 () Bool)

(assert (=> b!43650 (=> res!25829 e!27654)))

(assert (=> b!43650 (= res!25829 (not e!27660))))

(declare-fun res!25827 () Bool)

(assert (=> b!43650 (=> (not res!25827) (not e!27660))))

(assert (=> b!43650 (= res!25827 (bvslt #b00000000000000000000000000000000 (size!1592 (_keys!3431 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)))))))

(declare-fun b!43660 () Bool)

(assert (=> b!43660 (= e!27668 (not call!3497))))

(declare-fun b!43661 () Bool)

(assert (=> b!43661 (= e!27653 (= (apply!58 lt!18914 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun b!43662 () Bool)

(declare-fun Unit!1221 () Unit!1201)

(assert (=> b!43662 (= e!27658 Unit!1221)))

(declare-fun b!43663 () Bool)

(assert (=> b!43663 (= e!27665 (= (apply!58 lt!18914 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!1800 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))))))

(declare-fun b!43664 () Bool)

(declare-fun res!25832 () Bool)

(assert (=> b!43664 (=> (not res!25832) (not e!27659))))

(assert (=> b!43664 (= res!25832 e!27661)))

(declare-fun c!5631 () Bool)

(assert (=> b!43664 (= c!5631 (not (= (bvand (extraKeys!1773 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!8113 c!5628) b!43655))

(assert (= (and d!8113 (not c!5628)) b!43659))

(assert (= (and b!43659 c!5629) b!43657))

(assert (= (and b!43659 (not c!5629)) b!43646))

(assert (= (and b!43646 c!5633) b!43649))

(assert (= (and b!43646 (not c!5633)) b!43654))

(assert (= (or b!43649 b!43654) bm!3494))

(assert (= (or b!43657 bm!3494) bm!3495))

(assert (= (or b!43657 b!43649) bm!3496))

(assert (= (or b!43655 bm!3495) bm!3499))

(assert (= (or b!43655 bm!3496) bm!3498))

(assert (= (and d!8113 res!25837) b!43644))

(assert (= (and d!8113 c!5630) b!43653))

(assert (= (and d!8113 (not c!5630)) b!43662))

(assert (= (and d!8113 res!25830) b!43650))

(assert (= (and b!43650 res!25827) b!43647))

(assert (= (and b!43650 (not res!25829)) b!43658))

(assert (= (and b!43658 res!25831) b!43656))

(assert (= (and b!43650 res!25828) b!43664))

(assert (= (and b!43664 c!5631) b!43651))

(assert (= (and b!43664 (not c!5631)) b!43652))

(assert (= (and b!43651 res!25826) b!43663))

(assert (= (or b!43651 b!43652) bm!3497))

(assert (= (and b!43664 res!25832) b!43645))

(assert (= (and b!43645 c!5634) b!43648))

(assert (= (and b!43645 (not c!5634)) b!43660))

(assert (= (and b!43648 res!25836) b!43661))

(assert (= (or b!43648 b!43660) bm!3500))

(declare-fun b_lambda!2295 () Bool)

(assert (=> (not b_lambda!2295) (not b!43656)))

(declare-fun t!4228 () Bool)

(declare-fun tb!997 () Bool)

(assert (=> (and start!6474 (= defaultEntry!470 (defaultEntry!1882 (LongMapFixedSize!379 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 lt!18388 lt!18387 #b00000000000000000000000000000000))) t!4228) tb!997))

(declare-fun result!1737 () Bool)

(assert (=> tb!997 (= result!1737 tp_is_empty!1893)))

(assert (=> b!43656 t!4228))

(declare-fun b_and!2687 () Bool)

(assert (= b_and!2685 (and (=> t!4228 result!1737) b_and!2687)))

(declare-fun m!37711 () Bool)

(assert (=> b!43655 m!37711))

(declare-fun m!37713 () Bool)

(assert (=> b!43647 m!37713))

(assert (=> b!43647 m!37713))

(declare-fun m!37715 () Bool)

(assert (=> b!43647 m!37715))

(declare-fun m!37717 () Bool)

(assert (=> d!8113 m!37717))

(declare-fun m!37719 () Bool)

(assert (=> bm!3498 m!37719))

(assert (=> b!43644 m!37713))

(assert (=> b!43644 m!37713))

(assert (=> b!43644 m!37715))

(declare-fun m!37721 () Bool)

(assert (=> bm!3497 m!37721))

(declare-fun m!37723 () Bool)

(assert (=> bm!3499 m!37723))

(declare-fun m!37725 () Bool)

(assert (=> b!43663 m!37725))

(declare-fun m!37727 () Bool)

(assert (=> b!43653 m!37727))

(declare-fun m!37729 () Bool)

(assert (=> b!43653 m!37729))

(declare-fun m!37731 () Bool)

(assert (=> b!43653 m!37731))

(declare-fun m!37733 () Bool)

(assert (=> b!43653 m!37733))

(declare-fun m!37735 () Bool)

(assert (=> b!43653 m!37735))

(declare-fun m!37737 () Bool)

(assert (=> b!43653 m!37737))

(declare-fun m!37739 () Bool)

(assert (=> b!43653 m!37739))

(assert (=> b!43653 m!37739))

(declare-fun m!37741 () Bool)

(assert (=> b!43653 m!37741))

(declare-fun m!37743 () Bool)

(assert (=> b!43653 m!37743))

(declare-fun m!37745 () Bool)

(assert (=> b!43653 m!37745))

(declare-fun m!37747 () Bool)

(assert (=> b!43653 m!37747))

(assert (=> b!43653 m!37727))

(declare-fun m!37749 () Bool)

(assert (=> b!43653 m!37749))

(assert (=> b!43653 m!37723))

(assert (=> b!43653 m!37731))

(declare-fun m!37757 () Bool)

(assert (=> b!43653 m!37757))

(assert (=> b!43653 m!37735))

(declare-fun m!37759 () Bool)

(assert (=> b!43653 m!37759))

(declare-fun m!37761 () Bool)

(assert (=> b!43653 m!37761))

(assert (=> b!43653 m!37713))

(assert (=> b!43656 m!37713))

(declare-fun m!37767 () Bool)

(assert (=> b!43656 m!37767))

(declare-fun m!37769 () Bool)

(assert (=> b!43656 m!37769))

(declare-fun m!37771 () Bool)

(assert (=> b!43656 m!37771))

(assert (=> b!43656 m!37769))

(assert (=> b!43656 m!37771))

(declare-fun m!37773 () Bool)

(assert (=> b!43656 m!37773))

(assert (=> b!43656 m!37713))

(declare-fun m!37779 () Bool)

(assert (=> b!43661 m!37779))

(assert (=> b!43658 m!37713))

(assert (=> b!43658 m!37713))

(declare-fun m!37783 () Bool)

(assert (=> b!43658 m!37783))

(declare-fun m!37785 () Bool)

(assert (=> bm!3500 m!37785))

(assert (=> d!7959 d!8113))

(assert (=> d!7953 d!7961))

(declare-fun d!8127 () Bool)

(assert (=> d!8127 (arrayNoDuplicates!0 lt!18388 #b00000000000000000000000000000000 Nil!1212)))

(assert (=> d!8127 true))

(declare-fun res!25853 () Unit!1201)

(assert (=> d!8127 (= (choose!111 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1212) res!25853)))

(declare-fun bs!1970 () Bool)

(assert (= bs!1970 d!8127))

(assert (=> bs!1970 m!36981))

(assert (=> d!7953 d!8127))

(assert (=> b!43355 d!7975))

(assert (=> b!43354 d!7975))

(assert (=> d!7965 d!7955))

(declare-fun d!8137 () Bool)

(assert (=> d!8137 (= (arrayCountValidKeys!0 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!8137 true))

(declare-fun _$88!52 () Unit!1201)

(assert (=> d!8137 (= (choose!59 lt!18388 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!52)))

(declare-fun bs!1971 () Bool)

(assert (= bs!1971 d!8137))

(assert (=> bs!1971 m!36973))

(assert (=> d!7965 d!8137))

(declare-fun d!8139 () Bool)

(declare-fun lt!18957 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!40 (List!1215) (InoxSet (_ BitVec 64)))

(assert (=> d!8139 (= lt!18957 (select (content!40 Nil!1212) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun e!27692 () Bool)

(assert (=> d!8139 (= lt!18957 e!27692)))

(declare-fun res!25863 () Bool)

(assert (=> d!8139 (=> (not res!25863) (not e!27692))))

(assert (=> d!8139 (= res!25863 ((_ is Cons!1211) Nil!1212))))

(assert (=> d!8139 (= (contains!569 Nil!1212 (select (arr!1407 lt!18388) #b00000000000000000000000000000000)) lt!18957)))

(declare-fun b!43694 () Bool)

(declare-fun e!27693 () Bool)

(assert (=> b!43694 (= e!27692 e!27693)))

(declare-fun res!25862 () Bool)

(assert (=> b!43694 (=> res!25862 e!27693)))

(assert (=> b!43694 (= res!25862 (= (h!1788 Nil!1212) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(declare-fun b!43695 () Bool)

(assert (=> b!43695 (= e!27693 (contains!569 (t!4222 Nil!1212) (select (arr!1407 lt!18388) #b00000000000000000000000000000000)))))

(assert (= (and d!8139 res!25863) b!43694))

(assert (= (and b!43694 (not res!25862)) b!43695))

(declare-fun m!37843 () Bool)

(assert (=> d!8139 m!37843))

(assert (=> d!8139 m!37103))

(declare-fun m!37845 () Bool)

(assert (=> d!8139 m!37845))

(assert (=> b!43695 m!37103))

(declare-fun m!37847 () Bool)

(assert (=> b!43695 m!37847))

(assert (=> b!43353 d!8139))

(declare-fun b!43697 () Bool)

(declare-fun e!27696 () Bool)

(declare-fun call!3504 () Bool)

(assert (=> b!43697 (= e!27696 call!3504)))

(declare-fun b!43698 () Bool)

(declare-fun e!27695 () Bool)

(assert (=> b!43698 (= e!27695 (contains!569 (ite c!5548 (Cons!1211 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) Nil!1212) Nil!1212) (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43699 () Bool)

(declare-fun e!27698 () Bool)

(assert (=> b!43699 (= e!27698 e!27696)))

(declare-fun c!5638 () Bool)

(assert (=> b!43699 (= c!5638 (validKeyInArray!0 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43700 () Bool)

(declare-fun e!27697 () Bool)

(assert (=> b!43700 (= e!27697 e!27698)))

(declare-fun res!25865 () Bool)

(assert (=> b!43700 (=> (not res!25865) (not e!27698))))

(assert (=> b!43700 (= res!25865 (not e!27695))))

(declare-fun res!25866 () Bool)

(assert (=> b!43700 (=> (not res!25866) (not e!27695))))

(assert (=> b!43700 (= res!25866 (validKeyInArray!0 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!43701 () Bool)

(assert (=> b!43701 (= e!27696 call!3504)))

(declare-fun d!8153 () Bool)

(declare-fun res!25867 () Bool)

(assert (=> d!8153 (=> res!25867 e!27697)))

(assert (=> d!8153 (= res!25867 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1592 lt!18388)))))

(assert (=> d!8153 (= (arrayNoDuplicates!0 lt!18388 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5548 (Cons!1211 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) Nil!1212) Nil!1212)) e!27697)))

(declare-fun bm!3501 () Bool)

(assert (=> bm!3501 (= call!3504 (arrayNoDuplicates!0 lt!18388 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!5638 (Cons!1211 (select (arr!1407 lt!18388) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!5548 (Cons!1211 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) Nil!1212) Nil!1212)) (ite c!5548 (Cons!1211 (select (arr!1407 lt!18388) #b00000000000000000000000000000000) Nil!1212) Nil!1212))))))

(assert (= (and d!8153 (not res!25867)) b!43700))

(assert (= (and b!43700 res!25866) b!43698))

(assert (= (and b!43700 res!25865) b!43699))

(assert (= (and b!43699 c!5638) b!43701))

(assert (= (and b!43699 (not c!5638)) b!43697))

(assert (= (or b!43701 b!43697) bm!3501))

(assert (=> b!43698 m!37319))

(assert (=> b!43698 m!37319))

(declare-fun m!37857 () Bool)

(assert (=> b!43698 m!37857))

(assert (=> b!43699 m!37319))

(assert (=> b!43699 m!37319))

(assert (=> b!43699 m!37321))

(assert (=> b!43700 m!37319))

(assert (=> b!43700 m!37319))

(assert (=> b!43700 m!37321))

(assert (=> bm!3501 m!37319))

(declare-fun m!37859 () Bool)

(assert (=> bm!3501 m!37859))

(assert (=> bm!3468 d!8153))

(assert (=> b!43216 d!7975))

(declare-fun d!8159 () Bool)

(assert (=> d!8159 (= (apply!58 lt!18546 #b0000000000000000000000000000000000000000000000000000000000000000) (get!792 (getValueByKey!103 (toList!620 lt!18546) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1976 () Bool)

(assert (= bs!1976 d!8159))

(assert (=> bs!1976 m!37689))

(assert (=> bs!1976 m!37689))

(declare-fun m!37861 () Bool)

(assert (=> bs!1976 m!37861))

(assert (=> b!43232 d!8159))

(declare-fun d!8161 () Bool)

(declare-fun isEmpty!288 (Option!109) Bool)

(assert (=> d!8161 (= (isDefined!60 (getValueByKey!103 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385))))) (not (isEmpty!288 (getValueByKey!103 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))))

(declare-fun bs!1977 () Bool)

(assert (= bs!1977 d!8161))

(assert (=> bs!1977 m!37045))

(declare-fun m!37863 () Bool)

(assert (=> bs!1977 m!37863))

(assert (=> b!43123 d!8161))

(declare-fun b!43746 () Bool)

(declare-fun e!27723 () Option!109)

(assert (=> b!43746 (= e!27723 None!107)))

(declare-fun b!43744 () Bool)

(declare-fun e!27722 () Option!109)

(assert (=> b!43744 (= e!27722 e!27723)))

(declare-fun c!5656 () Bool)

(assert (=> b!43744 (= c!5656 (and ((_ is Cons!1210) (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))) (not (= (_1!824 (h!1787 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!824 (head!888 (toList!620 lt!18385)))))))))

(declare-fun b!43743 () Bool)

(assert (=> b!43743 (= e!27722 (Some!108 (_2!824 (h!1787 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))))))

(declare-fun b!43745 () Bool)

(assert (=> b!43745 (= e!27723 (getValueByKey!103 (t!4221 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))) (_1!824 (head!888 (toList!620 lt!18385)))))))

(declare-fun c!5655 () Bool)

(declare-fun d!8163 () Bool)

(assert (=> d!8163 (= c!5655 (and ((_ is Cons!1210) (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))) (= (_1!824 (h!1787 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)))) (_1!824 (head!888 (toList!620 lt!18385))))))))

(assert (=> d!8163 (= (getValueByKey!103 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))) e!27722)))

(assert (= (and d!8163 c!5655) b!43743))

(assert (= (and d!8163 (not c!5655)) b!43744))

(assert (= (and b!43744 c!5656) b!43745))

(assert (= (and b!43744 (not c!5656)) b!43746))

(declare-fun m!37867 () Bool)

(assert (=> b!43745 m!37867))

(assert (=> b!43123 d!8163))

(declare-fun d!8167 () Bool)

(assert (=> d!8167 (= (apply!58 lt!18546 #b1000000000000000000000000000000000000000000000000000000000000000) (get!792 (getValueByKey!103 (toList!620 lt!18546) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1978 () Bool)

(assert (= bs!1978 d!8167))

(assert (=> bs!1978 m!37287))

(assert (=> bs!1978 m!37287))

(declare-fun m!37877 () Bool)

(assert (=> bs!1978 m!37877))

(assert (=> b!43230 d!8167))

(declare-fun d!8169 () Bool)

(assert (=> d!8169 (isDefined!60 (getValueByKey!103 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))

(declare-fun lt!18983 () Unit!1201)

(declare-fun choose!266 (List!1214 (_ BitVec 64)) Unit!1201)

(assert (=> d!8169 (= lt!18983 (choose!266 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))

(declare-fun e!27726 () Bool)

(assert (=> d!8169 e!27726))

(declare-fun res!25879 () Bool)

(assert (=> d!8169 (=> (not res!25879) (not e!27726))))

(declare-fun isStrictlySorted!209 (List!1214) Bool)

(assert (=> d!8169 (= res!25879 (isStrictlySorted!209 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470))))))

(assert (=> d!8169 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!59 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))) lt!18983)))

(declare-fun b!43749 () Bool)

(assert (=> b!43749 (= e!27726 (containsKey!71 (toList!620 (getCurrentListMap!351 lt!18388 lt!18387 mask!853 #b00000000000000000000000000000000 lt!18390 lt!18390 #b00000000000000000000000000000000 defaultEntry!470)) (_1!824 (head!888 (toList!620 lt!18385)))))))

(assert (= (and d!8169 res!25879) b!43749))

(assert (=> d!8169 m!37045))

(assert (=> d!8169 m!37045))

(assert (=> d!8169 m!37047))

(declare-fun m!37931 () Bool)

(assert (=> d!8169 m!37931))

(declare-fun m!37933 () Bool)

(assert (=> d!8169 m!37933))

(assert (=> b!43749 m!37039))

(assert (=> b!43121 d!8169))

(assert (=> b!43121 d!8161))

(assert (=> b!43121 d!8163))

(declare-fun b_lambda!2299 () Bool)

(assert (= b_lambda!2293 (or (and start!6474 b_free!1503) b_lambda!2299)))

(declare-fun b_lambda!2301 () Bool)

(assert (= b_lambda!2291 (or (and start!6474 b_free!1503) b_lambda!2301)))

(check-sat (not b!43663) (not b!43407) (not b!43620) (not d!8161) (not b!43699) (not b!43432) (not b!43575) (not d!8055) (not b!43644) (not bm!3483) (not d!8139) (not d!8035) (not d!8169) (not d!7979) (not d!8051) (not b!43576) (not b!43574) tp_is_empty!1893 (not d!8083) (not bm!3501) (not b!43638) (not b!43647) (not d!7977) (not d!8059) (not b!43592) (not b!43543) (not b!43443) (not d!7983) (not d!8067) (not b!43547) (not d!8085) (not b_next!1503) (not b!43591) (not bm!3497) (not b!43544) (not d!8087) (not b!43399) (not b!43631) (not d!8063) (not b!43550) (not b_lambda!2285) (not d!8033) (not d!8113) (not d!8001) (not d!8057) (not b_lambda!2295) (not b_lambda!2299) (not d!8103) (not d!8159) (not b!43577) (not b!43656) (not b!43434) (not b!43401) (not b!43698) (not b_lambda!2273) (not b!43449) (not b!43423) (not b!43745) (not bm!3491) (not b!43622) (not d!8081) (not b!43597) (not bm!3500) (not b!43553) (not d!8127) (not d!7991) (not d!8061) (not b!43545) (not d!8089) (not bm!3490) (not d!7987) (not b!43431) (not d!8069) (not b!43655) (not bm!3498) (not b!43626) (not d!8137) (not d!7995) (not d!7999) (not b!43661) (not b!43549) (not b!43438) (not b!43625) (not b!43444) (not b!43630) (not bm!3499) (not b!43749) (not b_lambda!2301) (not b!43700) (not d!8093) (not b!43596) (not b!43450) (not b!43636) b_and!2687 (not b!43542) (not d!8167) (not b!43658) (not b!43653) (not b!43695))
(check-sat b_and!2687 (not b_next!1503))
