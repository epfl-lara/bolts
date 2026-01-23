; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3250 () Bool)

(assert start!3250)

(declare-fun b!47350 () Bool)

(declare-fun b_free!1293 () Bool)

(declare-fun b_next!1293 () Bool)

(assert (=> b!47350 (= b_free!1293 (not b_next!1293))))

(declare-fun tp!32146 () Bool)

(declare-fun b_and!1327 () Bool)

(assert (=> b!47350 (= tp!32146 b_and!1327)))

(declare-fun b!47353 () Bool)

(declare-fun b_free!1295 () Bool)

(declare-fun b_next!1295 () Bool)

(assert (=> b!47353 (= b_free!1295 (not b_next!1295))))

(declare-fun tp!32145 () Bool)

(declare-fun b_and!1329 () Bool)

(assert (=> b!47353 (= tp!32145 b_and!1329)))

(declare-fun b!47346 () Bool)

(declare-fun e!27342 () Bool)

(declare-fun e!27343 () Bool)

(assert (=> b!47346 (= e!27342 e!27343)))

(declare-fun b!47347 () Bool)

(declare-fun e!27341 () Bool)

(declare-datatypes ((K!553 0))(
  ( (K!554 (val!240 Int)) )
))
(declare-datatypes ((V!607 0))(
  ( (V!608 (val!241 Int)) )
))
(declare-datatypes ((tuple2!992 0))(
  ( (tuple2!993 (_1!700 K!553) (_2!700 V!607)) )
))
(declare-datatypes ((List!805 0))(
  ( (Nil!803) (Cons!803 (h!6199 tuple2!992) (t!17004 List!805)) )
))
(declare-datatypes ((array!942 0))(
  ( (array!943 (arr!444 (Array (_ BitVec 32) List!805)) (size!785 (_ BitVec 32))) )
))
(declare-datatypes ((array!944 0))(
  ( (array!945 (arr!445 (Array (_ BitVec 32) (_ BitVec 64))) (size!786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!558 0))(
  ( (LongMapFixedSize!559 (defaultEntry!617 Int) (mask!1007 (_ BitVec 32)) (extraKeys!525 (_ BitVec 32)) (zeroValue!535 List!805) (minValue!535 List!805) (_size!690 (_ BitVec 32)) (_keys!570 array!944) (_values!557 array!942) (_vacant!339 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1105 0))(
  ( (Cell!1106 (v!12551 LongMapFixedSize!558)) )
))
(declare-datatypes ((MutLongMap!279 0))(
  ( (LongMap!279 (underlying!753 Cell!1105)) (MutLongMapExt!278 (__x!1350 Int)) )
))
(declare-datatypes ((tuple2!994 0))(
  ( (tuple2!995 (_1!701 Bool) (_2!701 MutLongMap!279)) )
))
(declare-fun lt!6412 () tuple2!994)

(declare-datatypes ((Cell!1107 0))(
  ( (Cell!1108 (v!12552 MutLongMap!279)) )
))
(declare-datatypes ((Hashable!275 0))(
  ( (HashableExt!274 (__x!1351 Int)) )
))
(declare-datatypes ((MutableMap!275 0))(
  ( (MutableMapExt!274 (__x!1352 Int)) (HashMap!275 (underlying!754 Cell!1107) (hashF!2143 Hashable!275) (_size!691 (_ BitVec 32)) (defaultValue!424 Int)) )
))
(declare-fun thiss!42687 () MutableMap!275)

(declare-fun valid!252 (MutableMap!275) Bool)

(assert (=> b!47347 (= e!27341 (not (valid!252 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))))

(declare-fun mapNonEmpty!1101 () Bool)

(declare-fun mapRes!1101 () Bool)

(declare-fun tp!32150 () Bool)

(declare-fun tp!32147 () Bool)

(assert (=> mapNonEmpty!1101 (= mapRes!1101 (and tp!32150 tp!32147))))

(declare-fun mapRest!1101 () (Array (_ BitVec 32) List!805))

(declare-fun mapKey!1101 () (_ BitVec 32))

(declare-fun mapValue!1101 () List!805)

(assert (=> mapNonEmpty!1101 (= (arr!444 (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (store mapRest!1101 mapKey!1101 mapValue!1101))))

(declare-fun mapIsEmpty!1101 () Bool)

(assert (=> mapIsEmpty!1101 mapRes!1101))

(declare-fun b!47349 () Bool)

(declare-fun e!27338 () Bool)

(declare-fun e!27339 () Bool)

(declare-fun lt!6411 () MutLongMap!279)

(get-info :version)

(assert (=> b!47349 (= e!27338 (and e!27339 ((_ is LongMap!279) lt!6411)))))

(assert (=> b!47349 (= lt!6411 (v!12552 (underlying!754 thiss!42687)))))

(declare-fun res!31816 () Bool)

(declare-fun e!27340 () Bool)

(assert (=> start!3250 (=> (not res!31816) (not e!27340))))

(assert (=> start!3250 (= res!31816 ((_ is HashMap!275) thiss!42687))))

(assert (=> start!3250 e!27340))

(declare-fun e!27335 () Bool)

(assert (=> start!3250 e!27335))

(declare-fun b!47348 () Bool)

(declare-fun e!27336 () Bool)

(declare-fun tp!32151 () Bool)

(assert (=> b!47348 (= e!27336 (and tp!32151 mapRes!1101))))

(declare-fun condMapEmpty!1101 () Bool)

(declare-fun mapDefault!1101 () List!805)

(assert (=> b!47348 (= condMapEmpty!1101 (= (arr!444 (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) ((as const (Array (_ BitVec 32) List!805)) mapDefault!1101)))))

(declare-fun tp!32148 () Bool)

(declare-fun tp!32149 () Bool)

(declare-fun array_inv!299 (array!944) Bool)

(declare-fun array_inv!300 (array!942) Bool)

(assert (=> b!47350 (= e!27343 (and tp!32146 tp!32148 tp!32149 (array_inv!299 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (array_inv!300 (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) e!27336))))

(declare-fun b!47351 () Bool)

(declare-fun res!31814 () Bool)

(assert (=> b!47351 (=> (not res!31814) (not e!27340))))

(assert (=> b!47351 (= res!31814 (valid!252 thiss!42687))))

(declare-fun b!47352 () Bool)

(assert (=> b!47352 (= e!27340 e!27341)))

(declare-fun res!31815 () Bool)

(assert (=> b!47352 (=> (not res!31815) (not e!27341))))

(assert (=> b!47352 (= res!31815 (_1!701 lt!6412))))

(declare-fun repack!3 (MutLongMap!279) tuple2!994)

(assert (=> b!47352 (= lt!6412 (repack!3 (v!12552 (underlying!754 thiss!42687))))))

(assert (=> b!47353 (= e!27335 (and e!27338 tp!32145))))

(declare-fun b!47354 () Bool)

(assert (=> b!47354 (= e!27339 e!27342)))

(assert (= (and start!3250 res!31816) b!47351))

(assert (= (and b!47351 res!31814) b!47352))

(assert (= (and b!47352 res!31815) b!47347))

(assert (= (and b!47348 condMapEmpty!1101) mapIsEmpty!1101))

(assert (= (and b!47348 (not condMapEmpty!1101)) mapNonEmpty!1101))

(assert (= b!47350 b!47348))

(assert (= b!47346 b!47350))

(assert (= b!47354 b!47346))

(assert (= (and b!47349 ((_ is LongMap!279) (v!12552 (underlying!754 thiss!42687)))) b!47354))

(assert (= b!47353 b!47349))

(assert (= (and start!3250 ((_ is HashMap!275) thiss!42687)) b!47353))

(declare-fun m!21474 () Bool)

(assert (=> b!47352 m!21474))

(declare-fun m!21476 () Bool)

(assert (=> b!47350 m!21476))

(declare-fun m!21478 () Bool)

(assert (=> b!47350 m!21478))

(declare-fun m!21480 () Bool)

(assert (=> b!47351 m!21480))

(declare-fun m!21482 () Bool)

(assert (=> b!47347 m!21482))

(declare-fun m!21484 () Bool)

(assert (=> mapNonEmpty!1101 m!21484))

(check-sat (not b!47350) b_and!1327 (not b_next!1295) (not b!47347) b_and!1329 (not b!47352) (not mapNonEmpty!1101) (not b!47351) (not b_next!1293) (not b!47348))
(check-sat b_and!1329 b_and!1327 (not b_next!1293) (not b_next!1295))
(get-model)

(declare-fun d!5671 () Bool)

(declare-fun e!27361 () Bool)

(assert (=> d!5671 e!27361))

(declare-fun res!31822 () Bool)

(assert (=> d!5671 (=> (not res!31822) (not e!27361))))

(declare-fun lt!6435 () tuple2!994)

(assert (=> d!5671 (= res!31822 ((_ is LongMap!279) (_2!701 lt!6435)))))

(declare-datatypes ((tuple3!318 0))(
  ( (tuple3!319 (_1!702 Bool) (_2!702 Cell!1105) (_3!204 MutLongMap!279)) )
))
(declare-fun lt!6439 () tuple3!318)

(assert (=> d!5671 (= lt!6435 (tuple2!995 (_1!702 lt!6439) (_3!204 lt!6439)))))

(declare-fun e!27360 () tuple3!318)

(assert (=> d!5671 (= lt!6439 e!27360)))

(declare-fun c!16189 () Bool)

(declare-datatypes ((tuple2!996 0))(
  ( (tuple2!997 (_1!703 Bool) (_2!703 Cell!1105)) )
))
(declare-fun lt!6436 () tuple2!996)

(assert (=> d!5671 (= c!16189 (not (_1!703 lt!6436)))))

(declare-fun e!27357 () tuple2!996)

(assert (=> d!5671 (= lt!6436 e!27357)))

(declare-fun c!16188 () Bool)

(assert (=> d!5671 (= c!16188 (and (not (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!6434 () Cell!1105)

(declare-fun lt!6441 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!3 ((_ BitVec 32) Int) LongMapFixedSize!558)

(assert (=> d!5671 (= lt!6434 (Cell!1106 (getNewLongMapFixedSize!3 lt!6441 (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))))))

(declare-fun computeNewMask!1 (MutLongMap!279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5671 (= lt!6441 (computeNewMask!1 (v!12552 (underlying!754 thiss!42687)) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_vacant!339 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_size!690 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun valid!253 (MutLongMap!279) Bool)

(assert (=> d!5671 (valid!253 (v!12552 (underlying!754 thiss!42687)))))

(assert (=> d!5671 (= (repack!3 (v!12552 (underlying!754 thiss!42687))) lt!6435)))

(declare-fun bm!2881 () Bool)

(declare-fun call!2886 () LongMapFixedSize!558)

(declare-fun call!2889 () LongMapFixedSize!558)

(assert (=> bm!2881 (= call!2886 call!2889)))

(declare-fun b!47375 () Bool)

(declare-fun e!27358 () tuple2!996)

(assert (=> b!47375 (= e!27358 (tuple2!997 true lt!6434))))

(declare-fun bm!2882 () Bool)

(assert (=> bm!2882 (= call!2889 (getNewLongMapFixedSize!3 lt!6441 (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun b!47376 () Bool)

(assert (=> b!47376 (= e!27360 (tuple3!319 false (_2!703 lt!6436) (v!12552 (underlying!754 thiss!42687))))))

(declare-fun b!47377 () Bool)

(declare-datatypes ((tuple2!998 0))(
  ( (tuple2!999 (_1!704 Bool) (_2!704 LongMapFixedSize!558)) )
))
(declare-fun lt!6437 () tuple2!998)

(assert (=> b!47377 (= e!27360 (ite (_1!704 lt!6437) (tuple3!319 true (underlying!753 (v!12552 (underlying!754 thiss!42687))) (LongMap!279 (Cell!1106 (_2!704 lt!6437)))) (tuple3!319 false (Cell!1106 (_2!704 lt!6437)) (v!12552 (underlying!754 thiss!42687)))))))

(declare-fun repackFrom!1 (MutLongMap!279 LongMapFixedSize!558 (_ BitVec 32)) tuple2!998)

(assert (=> b!47377 (= lt!6437 (repackFrom!1 (v!12552 (underlying!754 thiss!42687)) (v!12551 (_2!703 lt!6436)) (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001)))))

(declare-fun lt!6440 () tuple2!998)

(declare-fun bm!2883 () Bool)

(declare-fun call!2887 () tuple2!998)

(declare-fun c!16187 () Bool)

(declare-fun update!19 (LongMapFixedSize!558 (_ BitVec 64) List!805) tuple2!998)

(assert (=> bm!2883 (= call!2887 (update!19 (ite c!16188 (_2!704 lt!6440) call!2886) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun b!47378 () Bool)

(declare-fun lt!6438 () tuple2!998)

(assert (=> b!47378 (= e!27358 (tuple2!997 (_1!704 lt!6438) (Cell!1106 (_2!704 lt!6438))))))

(declare-fun call!2888 () tuple2!998)

(assert (=> b!47378 (= lt!6438 call!2888)))

(declare-fun b!47379 () Bool)

(declare-fun e!27359 () tuple2!996)

(assert (=> b!47379 (= e!27357 e!27359)))

(assert (=> b!47379 (= c!16187 (and (not (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!47380 () Bool)

(declare-fun lt!6442 () tuple2!998)

(assert (=> b!47380 (= e!27357 (tuple2!997 (and (_1!704 lt!6440) (_1!704 lt!6442)) (Cell!1106 (_2!704 lt!6442))))))

(assert (=> b!47380 (= lt!6440 (update!19 call!2889 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(assert (=> b!47380 (= lt!6442 call!2887)))

(declare-fun b!47381 () Bool)

(declare-fun e!27356 () Bool)

(declare-datatypes ((tuple2!1000 0))(
  ( (tuple2!1001 (_1!705 (_ BitVec 64)) (_2!705 List!805)) )
))
(declare-datatypes ((List!806 0))(
  ( (Nil!804) (Cons!804 (h!6200 tuple2!1000) (t!17005 List!806)) )
))
(declare-datatypes ((ListLongMap!19 0))(
  ( (ListLongMap!20 (toList!179 List!806)) )
))
(declare-fun map!263 (MutLongMap!279) ListLongMap!19)

(assert (=> b!47381 (= e!27356 (= (map!263 (_2!701 lt!6435)) (map!263 (v!12552 (underlying!754 thiss!42687)))))))

(declare-fun b!47382 () Bool)

(declare-fun lt!6433 () tuple2!998)

(assert (=> b!47382 (= lt!6433 call!2888)))

(assert (=> b!47382 (= e!27359 (tuple2!997 (_1!704 lt!6433) (Cell!1106 (_2!704 lt!6433))))))

(declare-fun b!47383 () Bool)

(declare-fun c!16186 () Bool)

(assert (=> b!47383 (= c!16186 (and (not (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!47383 (= e!27359 e!27358)))

(declare-fun bm!2884 () Bool)

(assert (=> bm!2884 (= call!2888 call!2887)))

(declare-fun b!47384 () Bool)

(assert (=> b!47384 (= e!27361 e!27356)))

(declare-fun res!31821 () Bool)

(assert (=> b!47384 (=> res!31821 e!27356)))

(assert (=> b!47384 (= res!31821 (= (_1!701 lt!6435) false))))

(assert (= (and d!5671 c!16188) b!47380))

(assert (= (and d!5671 (not c!16188)) b!47379))

(assert (= (and b!47379 c!16187) b!47382))

(assert (= (and b!47379 (not c!16187)) b!47383))

(assert (= (and b!47383 c!16186) b!47378))

(assert (= (and b!47383 (not c!16186)) b!47375))

(assert (= (or b!47382 b!47378) bm!2881))

(assert (= (or b!47382 b!47378) bm!2884))

(assert (= (or b!47380 bm!2881) bm!2882))

(assert (= (or b!47380 bm!2884) bm!2883))

(assert (= (and d!5671 c!16189) b!47376))

(assert (= (and d!5671 (not c!16189)) b!47377))

(assert (= (and d!5671 res!31822) b!47384))

(assert (= (and b!47384 (not res!31821)) b!47381))

(declare-fun m!21486 () Bool)

(assert (=> b!47377 m!21486))

(declare-fun m!21488 () Bool)

(assert (=> bm!2883 m!21488))

(declare-fun m!21490 () Bool)

(assert (=> b!47381 m!21490))

(declare-fun m!21492 () Bool)

(assert (=> b!47381 m!21492))

(declare-fun m!21494 () Bool)

(assert (=> d!5671 m!21494))

(declare-fun m!21496 () Bool)

(assert (=> d!5671 m!21496))

(declare-fun m!21498 () Bool)

(assert (=> d!5671 m!21498))

(assert (=> bm!2882 m!21494))

(declare-fun m!21500 () Bool)

(assert (=> b!47380 m!21500))

(assert (=> b!47352 d!5671))

(declare-fun d!5673 () Bool)

(declare-fun res!31827 () Bool)

(declare-fun e!27364 () Bool)

(assert (=> d!5673 (=> (not res!31827) (not e!27364))))

(assert (=> d!5673 (= res!31827 (valid!253 (v!12552 (underlying!754 thiss!42687))))))

(assert (=> d!5673 (= (valid!252 thiss!42687) e!27364)))

(declare-fun b!47389 () Bool)

(declare-fun res!31828 () Bool)

(assert (=> b!47389 (=> (not res!31828) (not e!27364))))

(declare-fun lambda!892 () Int)

(declare-fun forall!102 (List!806 Int) Bool)

(assert (=> b!47389 (= res!31828 (forall!102 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687)))) lambda!892))))

(declare-fun b!47390 () Bool)

(declare-fun allKeysSameHashInMap!8 (ListLongMap!19 Hashable!275) Bool)

(assert (=> b!47390 (= e!27364 (allKeysSameHashInMap!8 (map!263 (v!12552 (underlying!754 thiss!42687))) (hashF!2143 thiss!42687)))))

(assert (= (and d!5673 res!31827) b!47389))

(assert (= (and b!47389 res!31828) b!47390))

(assert (=> d!5673 m!21498))

(assert (=> b!47389 m!21492))

(declare-fun m!21502 () Bool)

(assert (=> b!47389 m!21502))

(assert (=> b!47390 m!21492))

(assert (=> b!47390 m!21492))

(declare-fun m!21504 () Bool)

(assert (=> b!47390 m!21504))

(assert (=> b!47351 d!5673))

(declare-fun bs!6384 () Bool)

(declare-fun b!47391 () Bool)

(assert (= bs!6384 (and b!47391 b!47389)))

(declare-fun lambda!893 () Int)

(assert (=> bs!6384 (= lambda!893 lambda!892)))

(declare-fun d!5675 () Bool)

(declare-fun res!31829 () Bool)

(declare-fun e!27365 () Bool)

(assert (=> d!5675 (=> (not res!31829) (not e!27365))))

(assert (=> d!5675 (= res!31829 (valid!253 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))))))

(assert (=> d!5675 (= (valid!252 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))) e!27365)))

(declare-fun res!31830 () Bool)

(assert (=> b!47391 (=> (not res!31830) (not e!27365))))

(assert (=> b!47391 (= res!31830 (forall!102 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))) lambda!893))))

(declare-fun b!47392 () Bool)

(assert (=> b!47392 (= e!27365 (allKeysSameHashInMap!8 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))) (hashF!2143 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))))

(assert (= (and d!5675 res!31829) b!47391))

(assert (= (and b!47391 res!31830) b!47392))

(declare-fun m!21506 () Bool)

(assert (=> d!5675 m!21506))

(declare-fun m!21508 () Bool)

(assert (=> b!47391 m!21508))

(declare-fun m!21510 () Bool)

(assert (=> b!47391 m!21510))

(assert (=> b!47392 m!21508))

(assert (=> b!47392 m!21508))

(declare-fun m!21512 () Bool)

(assert (=> b!47392 m!21512))

(assert (=> b!47347 d!5675))

(declare-fun d!5677 () Bool)

(assert (=> d!5677 (= (array_inv!299 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (bvsge (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47350 d!5677))

(declare-fun d!5679 () Bool)

(assert (=> d!5679 (= (array_inv!300 (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (bvsge (size!785 (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000000))))

(assert (=> b!47350 d!5679))

(declare-fun e!27368 () Bool)

(declare-fun b!47397 () Bool)

(declare-fun tp_is_empty!409 () Bool)

(declare-fun tp!32154 () Bool)

(declare-fun tp_is_empty!407 () Bool)

(assert (=> b!47397 (= e!27368 (and tp_is_empty!407 tp_is_empty!409 tp!32154))))

(assert (=> b!47348 (= tp!32151 e!27368)))

(assert (= (and b!47348 ((_ is Cons!803) mapDefault!1101)) b!47397))

(declare-fun tp!32163 () Bool)

(declare-fun e!27373 () Bool)

(declare-fun b!47404 () Bool)

(assert (=> b!47404 (= e!27373 (and tp_is_empty!407 tp_is_empty!409 tp!32163))))

(declare-fun condMapEmpty!1104 () Bool)

(declare-fun mapDefault!1104 () List!805)

(assert (=> mapNonEmpty!1101 (= condMapEmpty!1104 (= mapRest!1101 ((as const (Array (_ BitVec 32) List!805)) mapDefault!1104)))))

(declare-fun e!27374 () Bool)

(declare-fun mapRes!1104 () Bool)

(assert (=> mapNonEmpty!1101 (= tp!32150 (and e!27374 mapRes!1104))))

(declare-fun mapIsEmpty!1104 () Bool)

(assert (=> mapIsEmpty!1104 mapRes!1104))

(declare-fun tp!32161 () Bool)

(declare-fun b!47405 () Bool)

(assert (=> b!47405 (= e!27374 (and tp_is_empty!407 tp_is_empty!409 tp!32161))))

(declare-fun mapNonEmpty!1104 () Bool)

(declare-fun tp!32162 () Bool)

(assert (=> mapNonEmpty!1104 (= mapRes!1104 (and tp!32162 e!27373))))

(declare-fun mapRest!1104 () (Array (_ BitVec 32) List!805))

(declare-fun mapKey!1104 () (_ BitVec 32))

(declare-fun mapValue!1104 () List!805)

(assert (=> mapNonEmpty!1104 (= mapRest!1101 (store mapRest!1104 mapKey!1104 mapValue!1104))))

(assert (= (and mapNonEmpty!1101 condMapEmpty!1104) mapIsEmpty!1104))

(assert (= (and mapNonEmpty!1101 (not condMapEmpty!1104)) mapNonEmpty!1104))

(assert (= (and mapNonEmpty!1104 ((_ is Cons!803) mapValue!1104)) b!47404))

(assert (= (and mapNonEmpty!1101 ((_ is Cons!803) mapDefault!1104)) b!47405))

(declare-fun m!21514 () Bool)

(assert (=> mapNonEmpty!1104 m!21514))

(declare-fun e!27375 () Bool)

(declare-fun tp!32164 () Bool)

(declare-fun b!47406 () Bool)

(assert (=> b!47406 (= e!27375 (and tp_is_empty!407 tp_is_empty!409 tp!32164))))

(assert (=> mapNonEmpty!1101 (= tp!32147 e!27375)))

(assert (= (and mapNonEmpty!1101 ((_ is Cons!803) mapValue!1101)) b!47406))

(declare-fun tp!32165 () Bool)

(declare-fun b!47407 () Bool)

(declare-fun e!27376 () Bool)

(assert (=> b!47407 (= e!27376 (and tp_is_empty!407 tp_is_empty!409 tp!32165))))

(assert (=> b!47350 (= tp!32148 e!27376)))

(assert (= (and b!47350 ((_ is Cons!803) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) b!47407))

(declare-fun tp!32166 () Bool)

(declare-fun e!27377 () Bool)

(declare-fun b!47408 () Bool)

(assert (=> b!47408 (= e!27377 (and tp_is_empty!407 tp_is_empty!409 tp!32166))))

(assert (=> b!47350 (= tp!32149 e!27377)))

(assert (= (and b!47350 ((_ is Cons!803) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) b!47408))

(check-sat (not b!47408) (not d!5675) (not b_next!1295) (not b!47407) b_and!1329 (not b!47405) (not d!5671) (not b!47390) (not b!47392) (not b!47389) (not b!47377) (not b!47406) tp_is_empty!409 (not d!5673) (not b!47391) b_and!1327 (not b!47381) (not bm!2882) (not b!47397) (not b!47380) tp_is_empty!407 (not mapNonEmpty!1104) (not bm!2883) (not b_next!1293) (not b!47404))
(check-sat b_and!1329 b_and!1327 (not b_next!1293) (not b_next!1295))
(get-model)

(declare-fun b!47421 () Bool)

(declare-datatypes ((Unit!364 0))(
  ( (Unit!365) )
))
(declare-fun e!27386 () Unit!364)

(declare-fun Unit!366 () Unit!364)

(assert (=> b!47421 (= e!27386 Unit!366)))

(declare-fun lt!6510 () tuple2!1000)

(declare-fun lt!6500 () LongMapFixedSize!558)

(declare-fun head!340 (List!806) tuple2!1000)

(declare-fun map!264 (LongMapFixedSize!558) ListLongMap!19)

(assert (=> b!47421 (= lt!6510 (head!340 (toList!179 (map!264 lt!6500))))))

(declare-fun lt!6509 () array!944)

(assert (=> b!47421 (= lt!6509 (array!945 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!6441 #b00000000000000000000000000000001)))))

(declare-fun lt!6504 () (_ BitVec 32))

(assert (=> b!47421 (= lt!6504 #b00000000000000000000000000000000)))

(declare-fun lt!6493 () Unit!364)

(declare-fun lt!6503 () List!805)

(declare-fun lemmaKeyInListMapIsInArray!2 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 64) Int) Unit!364)

(assert (=> b!47421 (= lt!6493 (lemmaKeyInListMapIsInArray!2 lt!6509 (array!943 ((as const (Array (_ BitVec 32) List!805)) lt!6503) (bvadd lt!6441 #b00000000000000000000000000000001)) lt!6441 lt!6504 lt!6503 lt!6503 (_1!705 lt!6510) (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun c!16194 () Bool)

(assert (=> b!47421 (= c!16194 (and (not (= (_1!705 lt!6510) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!705 lt!6510) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!27385 () Bool)

(assert (=> b!47421 e!27385))

(declare-fun lt!6501 () Unit!364)

(assert (=> b!47421 (= lt!6501 lt!6493)))

(declare-fun lt!6497 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!944 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!47421 (= lt!6497 (arrayScanForKey!0 (array!945 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!6441 #b00000000000000000000000000000001)) (_1!705 lt!6510) #b00000000000000000000000000000000))))

(assert (=> b!47421 false))

(declare-fun b!47422 () Bool)

(declare-fun Unit!367 () Unit!364)

(assert (=> b!47422 (= e!27386 Unit!367)))

(declare-fun b!47423 () Bool)

(declare-fun arrayContainsKey!0 (array!944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!47423 (= e!27385 (arrayContainsKey!0 lt!6509 (_1!705 lt!6510) #b00000000000000000000000000000000))))

(declare-fun d!5681 () Bool)

(declare-fun e!27384 () Bool)

(assert (=> d!5681 e!27384))

(declare-fun res!31835 () Bool)

(assert (=> d!5681 (=> (not res!31835) (not e!27384))))

(declare-fun lt!6505 () LongMapFixedSize!558)

(declare-fun valid!254 (LongMapFixedSize!558) Bool)

(assert (=> d!5681 (= res!31835 (valid!254 lt!6505))))

(assert (=> d!5681 (= lt!6505 lt!6500)))

(declare-fun lt!6511 () Unit!364)

(assert (=> d!5681 (= lt!6511 e!27386)))

(declare-fun c!16195 () Bool)

(assert (=> d!5681 (= c!16195 (not (= (map!264 lt!6500) (ListLongMap!20 Nil!804))))))

(declare-fun lt!6499 () Unit!364)

(declare-fun lt!6498 () Unit!364)

(assert (=> d!5681 (= lt!6499 lt!6498)))

(declare-fun lt!6507 () array!944)

(declare-fun lt!6495 () (_ BitVec 32))

(declare-datatypes ((List!807 0))(
  ( (Nil!805) (Cons!805 (h!6201 (_ BitVec 64)) (t!17008 List!807)) )
))
(declare-fun lt!6492 () List!807)

(declare-fun arrayNoDuplicates!0 (array!944 (_ BitVec 32) List!807) Bool)

(assert (=> d!5681 (arrayNoDuplicates!0 lt!6507 lt!6495 lt!6492)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!944 (_ BitVec 32) (_ BitVec 32) List!807) Unit!364)

(assert (=> d!5681 (= lt!6498 (lemmaArrayNoDuplicatesInAll0Array!0 lt!6507 lt!6495 (bvadd lt!6441 #b00000000000000000000000000000001) lt!6492))))

(assert (=> d!5681 (= lt!6492 Nil!805)))

(assert (=> d!5681 (= lt!6495 #b00000000000000000000000000000000)))

(assert (=> d!5681 (= lt!6507 (array!945 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!6441 #b00000000000000000000000000000001)))))

(declare-fun lt!6514 () Unit!364)

(declare-fun lt!6512 () Unit!364)

(assert (=> d!5681 (= lt!6514 lt!6512)))

(declare-fun lt!6513 () (_ BitVec 32))

(declare-fun lt!6491 () array!944)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!944 (_ BitVec 32)) Bool)

(assert (=> d!5681 (arrayForallSeekEntryOrOpenFound!0 lt!6513 lt!6491 lt!6441)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!944 (_ BitVec 32) (_ BitVec 32)) Unit!364)

(assert (=> d!5681 (= lt!6512 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!6491 lt!6441 lt!6513))))

(assert (=> d!5681 (= lt!6513 #b00000000000000000000000000000000)))

(assert (=> d!5681 (= lt!6491 (array!945 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!6441 #b00000000000000000000000000000001)))))

(declare-fun lt!6496 () Unit!364)

(declare-fun lt!6502 () Unit!364)

(assert (=> d!5681 (= lt!6496 lt!6502)))

(declare-fun lt!6494 () array!944)

(declare-fun lt!6508 () (_ BitVec 32))

(declare-fun lt!6506 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!944 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5681 (= (arrayCountValidKeys!0 lt!6494 lt!6508 lt!6506) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!944 (_ BitVec 32) (_ BitVec 32)) Unit!364)

(assert (=> d!5681 (= lt!6502 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!6494 lt!6508 lt!6506))))

(assert (=> d!5681 (= lt!6506 (bvadd lt!6441 #b00000000000000000000000000000001))))

(assert (=> d!5681 (= lt!6508 #b00000000000000000000000000000000)))

(assert (=> d!5681 (= lt!6494 (array!945 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!6441 #b00000000000000000000000000000001)))))

(assert (=> d!5681 (= lt!6500 (LongMapFixedSize!559 (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) lt!6441 #b00000000000000000000000000000000 lt!6503 lt!6503 #b00000000000000000000000000000000 (array!945 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!6441 #b00000000000000000000000000000001)) (array!943 ((as const (Array (_ BitVec 32) List!805)) lt!6503) (bvadd lt!6441 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!135 (Int (_ BitVec 64)) List!805)

(assert (=> d!5681 (= lt!6503 (dynLambda!135 (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!5681 (validMask!0 lt!6441)))

(assert (=> d!5681 (= (getNewLongMapFixedSize!3 lt!6441 (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) lt!6505)))

(declare-fun b!47424 () Bool)

(assert (=> b!47424 (= e!27384 (= (map!264 lt!6505) (ListLongMap!20 Nil!804)))))

(declare-fun b!47425 () Bool)

(assert (=> b!47425 (= e!27385 (ite (= (_1!705 lt!6510) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!6504 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!6504 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!47426 () Bool)

(declare-fun res!31836 () Bool)

(assert (=> b!47426 (=> (not res!31836) (not e!27384))))

(assert (=> b!47426 (= res!31836 (= (mask!1007 lt!6505) lt!6441))))

(assert (= (and d!5681 c!16195) b!47421))

(assert (= (and d!5681 (not c!16195)) b!47422))

(assert (= (and b!47421 c!16194) b!47423))

(assert (= (and b!47421 (not c!16194)) b!47425))

(assert (= (and d!5681 res!31835) b!47426))

(assert (= (and b!47426 res!31836) b!47424))

(declare-fun b_lambda!277 () Bool)

(assert (=> (not b_lambda!277) (not d!5681)))

(declare-fun t!17007 () Bool)

(declare-fun tb!35 () Bool)

(assert (=> (and b!47350 (= (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) t!17007) tb!35))

(assert (=> d!5681 t!17007))

(declare-fun result!722 () Bool)

(declare-fun b_and!1331 () Bool)

(assert (= b_and!1327 (and (=> t!17007 result!722) b_and!1331)))

(declare-fun m!21516 () Bool)

(assert (=> b!47421 m!21516))

(declare-fun m!21518 () Bool)

(assert (=> b!47421 m!21518))

(declare-fun m!21520 () Bool)

(assert (=> b!47421 m!21520))

(declare-fun m!21522 () Bool)

(assert (=> b!47421 m!21522))

(declare-fun m!21524 () Bool)

(assert (=> b!47423 m!21524))

(declare-fun m!21526 () Bool)

(assert (=> d!5681 m!21526))

(declare-fun m!21528 () Bool)

(assert (=> d!5681 m!21528))

(assert (=> d!5681 m!21516))

(declare-fun m!21530 () Bool)

(assert (=> d!5681 m!21530))

(declare-fun m!21532 () Bool)

(assert (=> d!5681 m!21532))

(declare-fun m!21534 () Bool)

(assert (=> d!5681 m!21534))

(declare-fun m!21536 () Bool)

(assert (=> d!5681 m!21536))

(declare-fun m!21538 () Bool)

(assert (=> d!5681 m!21538))

(declare-fun m!21540 () Bool)

(assert (=> d!5681 m!21540))

(declare-fun m!21542 () Bool)

(assert (=> d!5681 m!21542))

(declare-fun m!21544 () Bool)

(assert (=> b!47424 m!21544))

(assert (=> bm!2882 d!5681))

(declare-fun d!5683 () Bool)

(assert (=> d!5683 (= (valid!253 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))) (valid!254 (v!12551 (underlying!753 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))))))))

(declare-fun bs!6385 () Bool)

(assert (= bs!6385 d!5683))

(declare-fun m!21546 () Bool)

(assert (=> bs!6385 m!21546))

(assert (=> d!5675 d!5683))

(declare-fun d!5685 () Bool)

(assert (=> d!5685 (= (valid!253 (v!12552 (underlying!754 thiss!42687))) (valid!254 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))))

(declare-fun bs!6386 () Bool)

(assert (= bs!6386 d!5685))

(declare-fun m!21548 () Bool)

(assert (=> bs!6386 m!21548))

(assert (=> d!5673 d!5685))

(declare-fun d!5687 () Bool)

(assert (=> d!5687 (= (map!263 (_2!701 lt!6435)) (map!264 (v!12551 (underlying!753 (_2!701 lt!6435)))))))

(declare-fun bs!6387 () Bool)

(assert (= bs!6387 d!5687))

(declare-fun m!21550 () Bool)

(assert (=> bs!6387 m!21550))

(assert (=> b!47381 d!5687))

(declare-fun d!5689 () Bool)

(assert (=> d!5689 (= (map!263 (v!12552 (underlying!754 thiss!42687))) (map!264 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))))

(declare-fun bs!6388 () Bool)

(assert (= bs!6388 d!5689))

(declare-fun m!21552 () Bool)

(assert (=> bs!6388 m!21552))

(assert (=> b!47381 d!5689))

(declare-fun lt!6570 () (_ BitVec 32))

(declare-fun bm!2933 () Bool)

(declare-fun lt!6592 () array!942)

(declare-fun call!2939 () ListLongMap!19)

(declare-fun c!16232 () Bool)

(declare-fun c!16224 () Bool)

(declare-fun lt!6590 () (_ BitVec 32))

(declare-fun getCurrentListMap!2 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 32) Int) ListLongMap!19)

(assert (=> bm!2933 (= call!2939 (getCurrentListMap!2 (_keys!570 call!2889) (ite c!16224 (_values!557 call!2889) lt!6592) (mask!1007 call!2889) (ite c!16224 (ite c!16232 lt!6570 lt!6590) (extraKeys!525 call!2889)) (ite (and c!16224 c!16232) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (zeroValue!535 call!2889)) (ite c!16224 (ite c!16232 (minValue!535 call!2889) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (minValue!535 call!2889)) #b00000000000000000000000000000000 (defaultEntry!617 call!2889)))))

(declare-fun b!47507 () Bool)

(declare-fun c!16234 () Bool)

(declare-datatypes ((SeekEntryResult!3 0))(
  ( (Found!3 (index!658 (_ BitVec 32))) (Undefined!3) (MissingZero!3 (index!659 (_ BitVec 32))) (MissingVacant!3 (index!660 (_ BitVec 32))) (Intermediate!3 (undefined!84 Bool) (index!661 (_ BitVec 32)) (x!14500 (_ BitVec 32))) )
))
(declare-fun lt!6593 () SeekEntryResult!3)

(assert (=> b!47507 (= c!16234 ((_ is MissingVacant!3) lt!6593))))

(declare-fun e!27440 () tuple2!998)

(declare-fun e!27432 () tuple2!998)

(assert (=> b!47507 (= e!27440 e!27432)))

(declare-fun c!16226 () Bool)

(declare-fun c!16229 () Bool)

(declare-fun lt!6586 () SeekEntryResult!3)

(declare-fun c!16227 () Bool)

(declare-fun lt!6591 () SeekEntryResult!3)

(declare-fun lt!6571 () SeekEntryResult!3)

(declare-fun lt!6585 () SeekEntryResult!3)

(declare-fun call!2960 () Bool)

(declare-fun c!16225 () Bool)

(declare-fun c!16228 () Bool)

(declare-fun bm!2934 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!2934 (= call!2960 (inRange!0 (ite c!16226 (ite c!16229 (index!658 lt!6591) (ite c!16228 (index!659 lt!6585) (index!660 lt!6585))) (ite c!16225 (index!658 lt!6571) (ite c!16227 (index!659 lt!6586) (index!660 lt!6586)))) (mask!1007 call!2889)))))

(declare-fun b!47508 () Bool)

(declare-fun res!31869 () Bool)

(declare-fun call!2947 () Bool)

(assert (=> b!47508 (= res!31869 call!2947)))

(declare-fun e!27444 () Bool)

(assert (=> b!47508 (=> (not res!31869) (not e!27444))))

(declare-fun b!47509 () Bool)

(declare-fun e!27448 () Bool)

(declare-fun call!2943 () Bool)

(assert (=> b!47509 (= e!27448 (not call!2943))))

(declare-fun b!47510 () Bool)

(declare-fun e!27433 () Unit!364)

(declare-fun lt!6583 () Unit!364)

(assert (=> b!47510 (= e!27433 lt!6583)))

(declare-fun call!2961 () Unit!364)

(assert (=> b!47510 (= lt!6583 call!2961)))

(declare-fun call!2955 () SeekEntryResult!3)

(assert (=> b!47510 (= lt!6585 call!2955)))

(assert (=> b!47510 (= c!16228 ((_ is MissingZero!3) lt!6585))))

(declare-fun e!27439 () Bool)

(assert (=> b!47510 e!27439))

(declare-fun b!47511 () Bool)

(declare-fun e!27434 () ListLongMap!19)

(declare-fun call!2959 () ListLongMap!19)

(assert (=> b!47511 (= e!27434 call!2959)))

(declare-fun b!47512 () Bool)

(declare-fun res!31866 () Bool)

(declare-fun e!27436 () Bool)

(assert (=> b!47512 (=> (not res!31866) (not e!27436))))

(declare-fun call!2941 () Bool)

(assert (=> b!47512 (= res!31866 call!2941)))

(assert (=> b!47512 (= e!27439 e!27436)))

(declare-fun bm!2935 () Bool)

(declare-fun call!2957 () Bool)

(assert (=> bm!2935 (= call!2957 call!2960)))

(declare-fun b!47513 () Bool)

(declare-fun e!27438 () Bool)

(assert (=> b!47513 (= e!27438 (= (select (arr!445 (_keys!570 call!2889)) (index!658 lt!6591)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47514 () Bool)

(declare-fun res!31876 () Bool)

(assert (=> b!47514 (= res!31876 (= (select (arr!445 (_keys!570 call!2889)) (index!660 lt!6586)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47514 (=> (not res!31876) (not e!27448))))

(declare-fun bm!2936 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 64) Int) Unit!364)

(assert (=> bm!2936 (= call!2961 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!1 (_keys!570 call!2889) (_values!557 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!617 call!2889)))))

(declare-fun bm!2937 () Bool)

(declare-fun c!16230 () Bool)

(declare-fun lt!6577 () tuple2!998)

(declare-fun call!2954 () ListLongMap!19)

(assert (=> bm!2937 (= call!2954 (map!264 (ite c!16230 call!2889 (_2!704 lt!6577))))))

(declare-fun bm!2938 () Bool)

(assert (=> bm!2938 (= call!2941 call!2957)))

(declare-fun bm!2939 () Bool)

(declare-fun call!2942 () tuple2!998)

(declare-fun updateHelperNewKey!1 (LongMapFixedSize!558 (_ BitVec 64) List!805 (_ BitVec 32)) tuple2!998)

(assert (=> bm!2939 (= call!2942 (updateHelperNewKey!1 call!2889 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16234 (index!660 lt!6593) (index!659 lt!6593))))))

(declare-fun b!47515 () Bool)

(declare-fun res!31877 () Bool)

(declare-fun e!27443 () Bool)

(assert (=> b!47515 (=> (not res!31877) (not e!27443))))

(assert (=> b!47515 (= res!31877 (= (select (arr!445 (_keys!570 call!2889)) (index!659 lt!6586)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47516 () Bool)

(declare-fun lt!6576 () Unit!364)

(assert (=> b!47516 (= lt!6576 e!27433)))

(declare-fun call!2953 () Bool)

(assert (=> b!47516 (= c!16229 call!2953)))

(assert (=> b!47516 (= e!27440 (tuple2!999 false call!2889))))

(declare-fun bm!2940 () Bool)

(declare-fun call!2945 () Bool)

(assert (=> bm!2940 (= call!2945 call!2947)))

(declare-fun b!47517 () Bool)

(declare-fun lt!6575 () tuple2!998)

(assert (=> b!47517 (= e!27432 (tuple2!999 (_1!704 lt!6575) (_2!704 lt!6575)))))

(assert (=> b!47517 (= lt!6575 call!2942)))

(declare-fun b!47518 () Bool)

(declare-fun c!16233 () Bool)

(assert (=> b!47518 (= c!16233 ((_ is MissingVacant!3) lt!6585))))

(declare-fun e!27447 () Bool)

(assert (=> b!47518 (= e!27439 e!27447)))

(declare-fun d!5691 () Bool)

(declare-fun e!27435 () Bool)

(assert (=> d!5691 e!27435))

(declare-fun res!31871 () Bool)

(assert (=> d!5691 (=> (not res!31871) (not e!27435))))

(assert (=> d!5691 (= res!31871 (valid!254 (_2!704 lt!6577)))))

(declare-fun e!27437 () tuple2!998)

(assert (=> d!5691 (= lt!6577 e!27437)))

(assert (=> d!5691 (= c!16224 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!5691 (valid!254 call!2889)))

(assert (=> d!5691 (= (update!19 call!2889 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) lt!6577)))

(declare-fun bm!2941 () Bool)

(declare-fun call!2949 () Unit!364)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 64) Int) Unit!364)

(assert (=> bm!2941 (= call!2949 (lemmaInListMapThenSeekEntryOrOpenFindsIt!1 (_keys!570 call!2889) (_values!557 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!617 call!2889)))))

(declare-fun b!47519 () Bool)

(assert (=> b!47519 (= e!27447 ((_ is Undefined!3) lt!6585))))

(declare-fun bm!2942 () Bool)

(declare-fun c!16223 () Bool)

(assert (=> bm!2942 (= c!16223 c!16226)))

(declare-fun contains!32 (ListLongMap!19 (_ BitVec 64)) Bool)

(assert (=> bm!2942 (= call!2953 (contains!32 e!27434 (ite c!16226 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!445 (_keys!570 call!2889)) (index!658 lt!6593)))))))

(declare-fun bm!2943 () Bool)

(declare-fun call!2944 () Bool)

(assert (=> bm!2943 (= call!2943 call!2944)))

(declare-fun b!47520 () Bool)

(declare-fun e!27430 () Bool)

(assert (=> b!47520 (= e!27430 ((_ is Undefined!3) lt!6586))))

(declare-fun b!47521 () Bool)

(declare-fun e!27441 () Bool)

(declare-fun call!2948 () ListLongMap!19)

(assert (=> b!47521 (= e!27441 (= call!2954 call!2948))))

(declare-fun bm!2944 () Bool)

(declare-fun call!2946 () SeekEntryResult!3)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!944 (_ BitVec 32)) SeekEntryResult!3)

(assert (=> bm!2944 (= call!2946 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!570 call!2889) (mask!1007 call!2889)))))

(declare-fun bm!2945 () Bool)

(declare-fun call!2952 () ListLongMap!19)

(declare-fun call!2938 () ListLongMap!19)

(assert (=> bm!2945 (= call!2952 call!2938)))

(declare-fun bm!2946 () Bool)

(declare-fun call!2940 () Bool)

(assert (=> bm!2946 (= call!2940 call!2944)))

(declare-fun bm!2947 () Bool)

(assert (=> bm!2947 (= call!2955 call!2946)))

(declare-fun bm!2948 () Bool)

(assert (=> bm!2948 (= call!2948 (map!264 (ite c!16230 (_2!704 lt!6577) call!2889)))))

(declare-fun b!47522 () Bool)

(declare-fun e!27449 () Bool)

(assert (=> b!47522 (= e!27441 e!27449)))

(declare-fun res!31870 () Bool)

(assert (=> b!47522 (= res!31870 (contains!32 call!2948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47522 (=> (not res!31870) (not e!27449))))

(declare-fun b!47523 () Bool)

(declare-fun e!27431 () tuple2!998)

(assert (=> b!47523 (= e!27437 e!27431)))

(assert (=> b!47523 (= c!16232 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47524 () Bool)

(declare-fun res!31875 () Bool)

(assert (=> b!47524 (= res!31875 call!2957)))

(assert (=> b!47524 (=> (not res!31875) (not e!27438))))

(declare-fun b!47525 () Bool)

(assert (=> b!47525 (= e!27437 e!27440)))

(assert (=> b!47525 (= lt!6593 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!570 call!2889) (mask!1007 call!2889)))))

(assert (=> b!47525 (= c!16226 ((_ is Undefined!3) lt!6593))))

(declare-fun b!47526 () Bool)

(declare-fun +!3 (ListLongMap!19 tuple2!1000) ListLongMap!19)

(assert (=> b!47526 (= e!27449 (= call!2948 (+!3 call!2954 (tuple2!1001 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun b!47527 () Bool)

(assert (=> b!47527 (= e!27436 (not call!2940))))

(declare-fun bm!2949 () Bool)

(assert (=> bm!2949 (= call!2938 (getCurrentListMap!2 (_keys!570 call!2889) (_values!557 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) #b00000000000000000000000000000000 (defaultEntry!617 call!2889)))))

(declare-fun bm!2950 () Bool)

(assert (=> bm!2950 (= call!2959 call!2938)))

(declare-fun b!47528 () Bool)

(declare-fun Unit!368 () Unit!364)

(assert (=> b!47528 (= e!27433 Unit!368)))

(declare-fun lt!6582 () Unit!364)

(assert (=> b!47528 (= lt!6582 call!2949)))

(assert (=> b!47528 (= lt!6591 call!2955)))

(declare-fun res!31872 () Bool)

(assert (=> b!47528 (= res!31872 ((_ is Found!3) lt!6591))))

(assert (=> b!47528 (=> (not res!31872) (not e!27438))))

(assert (=> b!47528 e!27438))

(declare-fun lt!6581 () Unit!364)

(assert (=> b!47528 (= lt!6581 lt!6582)))

(assert (=> b!47528 false))

(declare-fun bm!2951 () Bool)

(declare-fun call!2956 () ListLongMap!19)

(assert (=> bm!2951 (= call!2956 call!2939)))

(declare-fun bm!2952 () Bool)

(declare-fun call!2958 () SeekEntryResult!3)

(assert (=> bm!2952 (= call!2958 call!2946)))

(declare-fun b!47529 () Bool)

(declare-fun e!27446 () Bool)

(assert (=> b!47529 (= e!27447 e!27446)))

(declare-fun res!31874 () Bool)

(assert (=> b!47529 (= res!31874 call!2941)))

(assert (=> b!47529 (=> (not res!31874) (not e!27446))))

(declare-fun b!47530 () Bool)

(declare-fun res!31873 () Bool)

(assert (=> b!47530 (=> (not res!31873) (not e!27436))))

(assert (=> b!47530 (= res!31873 (= (select (arr!445 (_keys!570 call!2889)) (index!659 lt!6585)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47531 () Bool)

(declare-fun lt!6580 () Unit!364)

(declare-fun lt!6572 () Unit!364)

(assert (=> b!47531 (= lt!6580 lt!6572)))

(declare-fun call!2950 () ListLongMap!19)

(assert (=> b!47531 (= call!2950 call!2956)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!805 List!805 List!805 Int) Unit!364)

(assert (=> b!47531 (= lt!6572 (lemmaChangeLongMinValueKeyThenAddPairToListMap!1 (_keys!570 call!2889) (_values!557 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) lt!6590 (zeroValue!535 call!2889) (minValue!535 call!2889) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (defaultEntry!617 call!2889)))))

(assert (=> b!47531 (= lt!6590 (bvor (extraKeys!525 call!2889) #b00000000000000000000000000000010))))

(assert (=> b!47531 (= e!27431 (tuple2!999 true (LongMapFixedSize!559 (defaultEntry!617 call!2889) (mask!1007 call!2889) (bvor (extraKeys!525 call!2889) #b00000000000000000000000000000010) (zeroValue!535 call!2889) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_size!690 call!2889) (_keys!570 call!2889) (_values!557 call!2889) (_vacant!339 call!2889))))))

(declare-fun b!47532 () Bool)

(assert (=> b!47532 (= e!27434 call!2939)))

(declare-fun bm!2953 () Bool)

(declare-fun call!2951 () ListLongMap!19)

(assert (=> bm!2953 (= call!2950 call!2951)))

(declare-fun bm!2954 () Bool)

(assert (=> bm!2954 (= call!2947 call!2960)))

(declare-fun b!47533 () Bool)

(declare-fun e!27445 () tuple2!998)

(assert (=> b!47533 (= e!27432 e!27445)))

(declare-fun c!16222 () Bool)

(assert (=> b!47533 (= c!16222 ((_ is MissingZero!3) lt!6593))))

(declare-fun b!47534 () Bool)

(assert (=> b!47534 (= e!27435 e!27441)))

(assert (=> b!47534 (= c!16230 (_1!704 lt!6577))))

(declare-fun b!47535 () Bool)

(declare-fun lt!6588 () Unit!364)

(declare-fun lt!6595 () Unit!364)

(assert (=> b!47535 (= lt!6588 lt!6595)))

(assert (=> b!47535 (= call!2950 call!2956)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!805 List!805 List!805 Int) Unit!364)

(assert (=> b!47535 (= lt!6595 (lemmaChangeZeroKeyThenAddPairToListMap!1 (_keys!570 call!2889) (_values!557 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) lt!6570 (zeroValue!535 call!2889) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 call!2889) (defaultEntry!617 call!2889)))))

(assert (=> b!47535 (= lt!6570 (bvor (extraKeys!525 call!2889) #b00000000000000000000000000000001))))

(assert (=> b!47535 (= e!27431 (tuple2!999 true (LongMapFixedSize!559 (defaultEntry!617 call!2889) (mask!1007 call!2889) (bvor (extraKeys!525 call!2889) #b00000000000000000000000000000001) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 call!2889) (_size!690 call!2889) (_keys!570 call!2889) (_values!557 call!2889) (_vacant!339 call!2889))))))

(declare-fun b!47536 () Bool)

(assert (=> b!47536 (= e!27430 e!27448)))

(declare-fun res!31865 () Bool)

(assert (=> b!47536 (= res!31865 call!2945)))

(assert (=> b!47536 (=> (not res!31865) (not e!27448))))

(declare-fun b!47537 () Bool)

(declare-fun c!16231 () Bool)

(assert (=> b!47537 (= c!16231 ((_ is MissingVacant!3) lt!6586))))

(declare-fun e!27429 () Bool)

(assert (=> b!47537 (= e!27429 e!27430)))

(declare-fun b!47538 () Bool)

(assert (=> b!47538 (= e!27444 (= (select (arr!445 (_keys!570 call!2889)) (index!658 lt!6571)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47539 () Bool)

(assert (=> b!47539 (= e!27443 (not call!2943))))

(declare-fun bm!2955 () Bool)

(assert (=> bm!2955 (= call!2951 (+!3 (ite c!16224 call!2952 call!2959) (ite c!16224 (ite c!16232 (tuple2!1001 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (tuple2!1001 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (tuple2!1001 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun b!47540 () Bool)

(declare-fun res!31868 () Bool)

(assert (=> b!47540 (=> (not res!31868) (not e!27443))))

(assert (=> b!47540 (= res!31868 call!2945)))

(assert (=> b!47540 (= e!27429 e!27443)))

(declare-fun b!47541 () Bool)

(declare-fun res!31867 () Bool)

(assert (=> b!47541 (= res!31867 (= (select (arr!445 (_keys!570 call!2889)) (index!660 lt!6585)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47541 (=> (not res!31867) (not e!27446))))

(declare-fun b!47542 () Bool)

(declare-fun e!27442 () Unit!364)

(declare-fun lt!6594 () Unit!364)

(assert (=> b!47542 (= e!27442 lt!6594)))

(assert (=> b!47542 (= lt!6594 call!2949)))

(assert (=> b!47542 (= lt!6571 call!2958)))

(declare-fun res!31878 () Bool)

(assert (=> b!47542 (= res!31878 ((_ is Found!3) lt!6571))))

(assert (=> b!47542 (=> (not res!31878) (not e!27444))))

(assert (=> b!47542 e!27444))

(declare-fun b!47543 () Bool)

(declare-fun lt!6589 () Unit!364)

(declare-fun lt!6579 () Unit!364)

(assert (=> b!47543 (= lt!6589 lt!6579)))

(assert (=> b!47543 call!2953))

(declare-fun lemmaValidKeyInArrayIsInListMap!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 32) Int) Unit!364)

(assert (=> b!47543 (= lt!6579 (lemmaValidKeyInArrayIsInListMap!1 (_keys!570 call!2889) lt!6592 (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) (index!658 lt!6593) (defaultEntry!617 call!2889)))))

(assert (=> b!47543 (= lt!6592 (array!943 (store (arr!444 (_values!557 call!2889)) (index!658 lt!6593) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (size!785 (_values!557 call!2889))))))

(declare-fun lt!6574 () Unit!364)

(declare-fun lt!6569 () Unit!364)

(assert (=> b!47543 (= lt!6574 lt!6569)))

(assert (=> b!47543 (= call!2951 (getCurrentListMap!2 (_keys!570 call!2889) (array!943 (store (arr!444 (_values!557 call!2889)) (index!658 lt!6593) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (size!785 (_values!557 call!2889))) (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) #b00000000000000000000000000000000 (defaultEntry!617 call!2889)))))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 32) (_ BitVec 64) List!805 Int) Unit!364)

(assert (=> b!47543 (= lt!6569 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!1 (_keys!570 call!2889) (_values!557 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) (index!658 lt!6593) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (defaultEntry!617 call!2889)))))

(declare-fun lt!6584 () Unit!364)

(assert (=> b!47543 (= lt!6584 e!27442)))

(assert (=> b!47543 (= c!16225 (contains!32 call!2959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47543 (= e!27445 (tuple2!999 true (LongMapFixedSize!559 (defaultEntry!617 call!2889) (mask!1007 call!2889) (extraKeys!525 call!2889) (zeroValue!535 call!2889) (minValue!535 call!2889) (_size!690 call!2889) (_keys!570 call!2889) (array!943 (store (arr!444 (_values!557 call!2889)) (index!658 lt!6593) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (size!785 (_values!557 call!2889))) (_vacant!339 call!2889))))))

(declare-fun b!47544 () Bool)

(declare-fun lt!6578 () tuple2!998)

(assert (=> b!47544 (= lt!6578 call!2942)))

(assert (=> b!47544 (= e!27445 (tuple2!999 (_1!704 lt!6578) (_2!704 lt!6578)))))

(declare-fun bm!2956 () Bool)

(assert (=> bm!2956 (= call!2944 (arrayContainsKey!0 (_keys!570 call!2889) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!47545 () Bool)

(declare-fun Unit!369 () Unit!364)

(assert (=> b!47545 (= e!27442 Unit!369)))

(declare-fun lt!6573 () Unit!364)

(assert (=> b!47545 (= lt!6573 call!2961)))

(assert (=> b!47545 (= lt!6586 call!2958)))

(assert (=> b!47545 (= c!16227 ((_ is MissingZero!3) lt!6586))))

(assert (=> b!47545 e!27429))

(declare-fun lt!6587 () Unit!364)

(assert (=> b!47545 (= lt!6587 lt!6573)))

(assert (=> b!47545 false))

(declare-fun b!47546 () Bool)

(assert (=> b!47546 (= e!27446 (not call!2940))))

(assert (= (and d!5691 c!16224) b!47523))

(assert (= (and d!5691 (not c!16224)) b!47525))

(assert (= (and b!47523 c!16232) b!47535))

(assert (= (and b!47523 (not c!16232)) b!47531))

(assert (= (or b!47535 b!47531) bm!2945))

(assert (= (or b!47535 b!47531) bm!2951))

(assert (= (or b!47535 b!47531) bm!2953))

(assert (= (and b!47525 c!16226) b!47516))

(assert (= (and b!47525 (not c!16226)) b!47507))

(assert (= (and b!47516 c!16229) b!47528))

(assert (= (and b!47516 (not c!16229)) b!47510))

(assert (= (and b!47528 res!31872) b!47524))

(assert (= (and b!47524 res!31875) b!47513))

(assert (= (and b!47510 c!16228) b!47512))

(assert (= (and b!47510 (not c!16228)) b!47518))

(assert (= (and b!47512 res!31866) b!47530))

(assert (= (and b!47530 res!31873) b!47527))

(assert (= (and b!47518 c!16233) b!47529))

(assert (= (and b!47518 (not c!16233)) b!47519))

(assert (= (and b!47529 res!31874) b!47541))

(assert (= (and b!47541 res!31867) b!47546))

(assert (= (or b!47527 b!47546) bm!2946))

(assert (= (or b!47512 b!47529) bm!2938))

(assert (= (or b!47524 bm!2938) bm!2935))

(assert (= (or b!47528 b!47510) bm!2947))

(assert (= (and b!47507 c!16234) b!47517))

(assert (= (and b!47507 (not c!16234)) b!47533))

(assert (= (and b!47533 c!16222) b!47544))

(assert (= (and b!47533 (not c!16222)) b!47543))

(assert (= (and b!47543 c!16225) b!47542))

(assert (= (and b!47543 (not c!16225)) b!47545))

(assert (= (and b!47542 res!31878) b!47508))

(assert (= (and b!47508 res!31869) b!47538))

(assert (= (and b!47545 c!16227) b!47540))

(assert (= (and b!47545 (not c!16227)) b!47537))

(assert (= (and b!47540 res!31868) b!47515))

(assert (= (and b!47515 res!31877) b!47539))

(assert (= (and b!47537 c!16231) b!47536))

(assert (= (and b!47537 (not c!16231)) b!47520))

(assert (= (and b!47536 res!31865) b!47514))

(assert (= (and b!47514 res!31876) b!47509))

(assert (= (or b!47539 b!47509) bm!2943))

(assert (= (or b!47540 b!47536) bm!2940))

(assert (= (or b!47508 bm!2940) bm!2954))

(assert (= (or b!47542 b!47545) bm!2952))

(assert (= (or b!47517 b!47544) bm!2939))

(assert (= (or b!47528 b!47542) bm!2941))

(assert (= (or bm!2947 bm!2952) bm!2944))

(assert (= (or bm!2935 bm!2954) bm!2934))

(assert (= (or bm!2946 bm!2943) bm!2956))

(assert (= (or b!47516 b!47543) bm!2950))

(assert (= (or b!47510 b!47545) bm!2936))

(assert (= (or b!47516 b!47543) bm!2942))

(assert (= (and bm!2942 c!16223) b!47511))

(assert (= (and bm!2942 (not c!16223)) b!47532))

(assert (= (or bm!2953 b!47543) bm!2955))

(assert (= (or bm!2945 bm!2950) bm!2949))

(assert (= (or bm!2951 b!47532) bm!2933))

(assert (= (and d!5691 res!31871) b!47534))

(assert (= (and b!47534 c!16230) b!47522))

(assert (= (and b!47534 (not c!16230)) b!47521))

(assert (= (and b!47522 res!31870) b!47526))

(assert (= (or b!47522 b!47526 b!47521) bm!2948))

(assert (= (or b!47526 b!47521) bm!2937))

(declare-fun m!21554 () Bool)

(assert (=> b!47531 m!21554))

(declare-fun m!21556 () Bool)

(assert (=> bm!2942 m!21556))

(declare-fun m!21558 () Bool)

(assert (=> bm!2942 m!21558))

(declare-fun m!21560 () Bool)

(assert (=> bm!2949 m!21560))

(declare-fun m!21562 () Bool)

(assert (=> bm!2933 m!21562))

(declare-fun m!21564 () Bool)

(assert (=> bm!2934 m!21564))

(declare-fun m!21566 () Bool)

(assert (=> bm!2948 m!21566))

(declare-fun m!21568 () Bool)

(assert (=> bm!2939 m!21568))

(declare-fun m!21570 () Bool)

(assert (=> d!5691 m!21570))

(declare-fun m!21572 () Bool)

(assert (=> d!5691 m!21572))

(declare-fun m!21574 () Bool)

(assert (=> b!47538 m!21574))

(declare-fun m!21576 () Bool)

(assert (=> bm!2941 m!21576))

(declare-fun m!21578 () Bool)

(assert (=> b!47530 m!21578))

(declare-fun m!21580 () Bool)

(assert (=> b!47513 m!21580))

(declare-fun m!21582 () Bool)

(assert (=> b!47543 m!21582))

(declare-fun m!21584 () Bool)

(assert (=> b!47543 m!21584))

(declare-fun m!21586 () Bool)

(assert (=> b!47543 m!21586))

(declare-fun m!21588 () Bool)

(assert (=> b!47543 m!21588))

(declare-fun m!21590 () Bool)

(assert (=> b!47543 m!21590))

(declare-fun m!21592 () Bool)

(assert (=> bm!2955 m!21592))

(declare-fun m!21594 () Bool)

(assert (=> b!47514 m!21594))

(declare-fun m!21596 () Bool)

(assert (=> b!47522 m!21596))

(declare-fun m!21598 () Bool)

(assert (=> bm!2937 m!21598))

(declare-fun m!21600 () Bool)

(assert (=> b!47525 m!21600))

(assert (=> bm!2944 m!21600))

(declare-fun m!21602 () Bool)

(assert (=> bm!2956 m!21602))

(declare-fun m!21604 () Bool)

(assert (=> bm!2936 m!21604))

(declare-fun m!21606 () Bool)

(assert (=> b!47526 m!21606))

(declare-fun m!21608 () Bool)

(assert (=> b!47541 m!21608))

(declare-fun m!21610 () Bool)

(assert (=> b!47515 m!21610))

(declare-fun m!21612 () Bool)

(assert (=> b!47535 m!21612))

(assert (=> b!47380 d!5691))

(declare-fun call!2963 () ListLongMap!19)

(declare-fun bm!2957 () Bool)

(declare-fun lt!6617 () (_ BitVec 32))

(declare-fun c!16245 () Bool)

(declare-fun lt!6619 () array!942)

(declare-fun lt!6597 () (_ BitVec 32))

(declare-fun c!16237 () Bool)

(assert (=> bm!2957 (= call!2963 (getCurrentListMap!2 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16237 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) lt!6619) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16237 (ite c!16245 lt!6597 lt!6617) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886))) (ite (and c!16237 c!16245) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886))) (ite c!16237 (ite c!16245 (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886))) #b00000000000000000000000000000000 (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun b!47547 () Bool)

(declare-fun c!16247 () Bool)

(declare-fun lt!6620 () SeekEntryResult!3)

(assert (=> b!47547 (= c!16247 ((_ is MissingVacant!3) lt!6620))))

(declare-fun e!27461 () tuple2!998)

(declare-fun e!27453 () tuple2!998)

(assert (=> b!47547 (= e!27461 e!27453)))

(declare-fun lt!6613 () SeekEntryResult!3)

(declare-fun c!16240 () Bool)

(declare-fun call!2984 () Bool)

(declare-fun lt!6598 () SeekEntryResult!3)

(declare-fun bm!2958 () Bool)

(declare-fun lt!6618 () SeekEntryResult!3)

(declare-fun c!16239 () Bool)

(declare-fun lt!6612 () SeekEntryResult!3)

(declare-fun c!16242 () Bool)

(declare-fun c!16241 () Bool)

(declare-fun c!16238 () Bool)

(assert (=> bm!2958 (= call!2984 (inRange!0 (ite c!16239 (ite c!16242 (index!658 lt!6618) (ite c!16241 (index!659 lt!6612) (index!660 lt!6612))) (ite c!16238 (index!658 lt!6598) (ite c!16240 (index!659 lt!6613) (index!660 lt!6613)))) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun b!47548 () Bool)

(declare-fun res!31883 () Bool)

(declare-fun call!2971 () Bool)

(assert (=> b!47548 (= res!31883 call!2971)))

(declare-fun e!27465 () Bool)

(assert (=> b!47548 (=> (not res!31883) (not e!27465))))

(declare-fun b!47549 () Bool)

(declare-fun e!27469 () Bool)

(declare-fun call!2967 () Bool)

(assert (=> b!47549 (= e!27469 (not call!2967))))

(declare-fun b!47550 () Bool)

(declare-fun e!27454 () Unit!364)

(declare-fun lt!6610 () Unit!364)

(assert (=> b!47550 (= e!27454 lt!6610)))

(declare-fun call!2985 () Unit!364)

(assert (=> b!47550 (= lt!6610 call!2985)))

(declare-fun call!2979 () SeekEntryResult!3)

(assert (=> b!47550 (= lt!6612 call!2979)))

(assert (=> b!47550 (= c!16241 ((_ is MissingZero!3) lt!6612))))

(declare-fun e!27460 () Bool)

(assert (=> b!47550 e!27460))

(declare-fun b!47551 () Bool)

(declare-fun e!27455 () ListLongMap!19)

(declare-fun call!2983 () ListLongMap!19)

(assert (=> b!47551 (= e!27455 call!2983)))

(declare-fun b!47552 () Bool)

(declare-fun res!31880 () Bool)

(declare-fun e!27457 () Bool)

(assert (=> b!47552 (=> (not res!31880) (not e!27457))))

(declare-fun call!2965 () Bool)

(assert (=> b!47552 (= res!31880 call!2965)))

(assert (=> b!47552 (= e!27460 e!27457)))

(declare-fun bm!2959 () Bool)

(declare-fun call!2981 () Bool)

(assert (=> bm!2959 (= call!2981 call!2984)))

(declare-fun e!27459 () Bool)

(declare-fun b!47553 () Bool)

(assert (=> b!47553 (= e!27459 (= (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!658 lt!6618)) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!31890 () Bool)

(declare-fun b!47554 () Bool)

(assert (=> b!47554 (= res!31890 (= (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!660 lt!6613)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47554 (=> (not res!31890) (not e!27469))))

(declare-fun bm!2960 () Bool)

(assert (=> bm!2960 (= call!2985 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!1 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun c!16243 () Bool)

(declare-fun call!2978 () ListLongMap!19)

(declare-fun lt!6604 () tuple2!998)

(declare-fun bm!2961 () Bool)

(assert (=> bm!2961 (= call!2978 (map!264 (ite c!16243 (ite c!16188 (_2!704 lt!6440) call!2886) (_2!704 lt!6604))))))

(declare-fun bm!2962 () Bool)

(assert (=> bm!2962 (= call!2965 call!2981)))

(declare-fun bm!2963 () Bool)

(declare-fun call!2966 () tuple2!998)

(assert (=> bm!2963 (= call!2966 (updateHelperNewKey!1 (ite c!16188 (_2!704 lt!6440) call!2886) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (ite c!16247 (index!660 lt!6620) (index!659 lt!6620))))))

(declare-fun b!47555 () Bool)

(declare-fun res!31891 () Bool)

(declare-fun e!27464 () Bool)

(assert (=> b!47555 (=> (not res!31891) (not e!27464))))

(assert (=> b!47555 (= res!31891 (= (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!659 lt!6613)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47556 () Bool)

(declare-fun lt!6603 () Unit!364)

(assert (=> b!47556 (= lt!6603 e!27454)))

(declare-fun call!2977 () Bool)

(assert (=> b!47556 (= c!16242 call!2977)))

(assert (=> b!47556 (= e!27461 (tuple2!999 false (ite c!16188 (_2!704 lt!6440) call!2886)))))

(declare-fun bm!2964 () Bool)

(declare-fun call!2969 () Bool)

(assert (=> bm!2964 (= call!2969 call!2971)))

(declare-fun b!47557 () Bool)

(declare-fun lt!6602 () tuple2!998)

(assert (=> b!47557 (= e!27453 (tuple2!999 (_1!704 lt!6602) (_2!704 lt!6602)))))

(assert (=> b!47557 (= lt!6602 call!2966)))

(declare-fun b!47558 () Bool)

(declare-fun c!16246 () Bool)

(assert (=> b!47558 (= c!16246 ((_ is MissingVacant!3) lt!6612))))

(declare-fun e!27468 () Bool)

(assert (=> b!47558 (= e!27460 e!27468)))

(declare-fun d!5693 () Bool)

(declare-fun e!27456 () Bool)

(assert (=> d!5693 e!27456))

(declare-fun res!31885 () Bool)

(assert (=> d!5693 (=> (not res!31885) (not e!27456))))

(assert (=> d!5693 (= res!31885 (valid!254 (_2!704 lt!6604)))))

(declare-fun e!27458 () tuple2!998)

(assert (=> d!5693 (= lt!6604 e!27458)))

(assert (=> d!5693 (= c!16237 (= (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!5693 (valid!254 (ite c!16188 (_2!704 lt!6440) call!2886))))

(assert (=> d!5693 (= (update!19 (ite c!16188 (_2!704 lt!6440) call!2886) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) lt!6604)))

(declare-fun bm!2965 () Bool)

(declare-fun call!2973 () Unit!364)

(assert (=> bm!2965 (= call!2973 (lemmaInListMapThenSeekEntryOrOpenFindsIt!1 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun b!47559 () Bool)

(assert (=> b!47559 (= e!27468 ((_ is Undefined!3) lt!6612))))

(declare-fun bm!2966 () Bool)

(declare-fun c!16236 () Bool)

(assert (=> bm!2966 (= c!16236 c!16239)))

(assert (=> bm!2966 (= call!2977 (contains!32 e!27455 (ite c!16239 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!658 lt!6620)))))))

(declare-fun bm!2967 () Bool)

(declare-fun call!2968 () Bool)

(assert (=> bm!2967 (= call!2967 call!2968)))

(declare-fun b!47560 () Bool)

(declare-fun e!27451 () Bool)

(assert (=> b!47560 (= e!27451 ((_ is Undefined!3) lt!6613))))

(declare-fun b!47561 () Bool)

(declare-fun e!27462 () Bool)

(declare-fun call!2972 () ListLongMap!19)

(assert (=> b!47561 (= e!27462 (= call!2978 call!2972))))

(declare-fun bm!2968 () Bool)

(declare-fun call!2970 () SeekEntryResult!3)

(assert (=> bm!2968 (= call!2970 (seekEntryOrOpen!0 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun bm!2969 () Bool)

(declare-fun call!2976 () ListLongMap!19)

(declare-fun call!2962 () ListLongMap!19)

(assert (=> bm!2969 (= call!2976 call!2962)))

(declare-fun bm!2970 () Bool)

(declare-fun call!2964 () Bool)

(assert (=> bm!2970 (= call!2964 call!2968)))

(declare-fun bm!2971 () Bool)

(assert (=> bm!2971 (= call!2979 call!2970)))

(declare-fun bm!2972 () Bool)

(assert (=> bm!2972 (= call!2972 (map!264 (ite c!16243 (_2!704 lt!6604) (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun b!47562 () Bool)

(declare-fun e!27470 () Bool)

(assert (=> b!47562 (= e!27462 e!27470)))

(declare-fun res!31884 () Bool)

(assert (=> b!47562 (= res!31884 (contains!32 call!2972 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!47562 (=> (not res!31884) (not e!27470))))

(declare-fun b!47563 () Bool)

(declare-fun e!27452 () tuple2!998)

(assert (=> b!47563 (= e!27458 e!27452)))

(assert (=> b!47563 (= c!16245 (= (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47564 () Bool)

(declare-fun res!31889 () Bool)

(assert (=> b!47564 (= res!31889 call!2981)))

(assert (=> b!47564 (=> (not res!31889) (not e!27459))))

(declare-fun b!47565 () Bool)

(assert (=> b!47565 (= e!27458 e!27461)))

(assert (=> b!47565 (= lt!6620 (seekEntryOrOpen!0 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(assert (=> b!47565 (= c!16239 ((_ is Undefined!3) lt!6620))))

(declare-fun b!47566 () Bool)

(assert (=> b!47566 (= e!27470 (= call!2972 (+!3 call!2978 (tuple2!1001 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))))

(declare-fun b!47567 () Bool)

(assert (=> b!47567 (= e!27457 (not call!2964))))

(declare-fun bm!2973 () Bool)

(assert (=> bm!2973 (= call!2962 (getCurrentListMap!2 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) #b00000000000000000000000000000000 (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun bm!2974 () Bool)

(assert (=> bm!2974 (= call!2983 call!2962)))

(declare-fun b!47568 () Bool)

(declare-fun Unit!370 () Unit!364)

(assert (=> b!47568 (= e!27454 Unit!370)))

(declare-fun lt!6609 () Unit!364)

(assert (=> b!47568 (= lt!6609 call!2973)))

(assert (=> b!47568 (= lt!6618 call!2979)))

(declare-fun res!31886 () Bool)

(assert (=> b!47568 (= res!31886 ((_ is Found!3) lt!6618))))

(assert (=> b!47568 (=> (not res!31886) (not e!27459))))

(assert (=> b!47568 e!27459))

(declare-fun lt!6608 () Unit!364)

(assert (=> b!47568 (= lt!6608 lt!6609)))

(assert (=> b!47568 false))

(declare-fun bm!2975 () Bool)

(declare-fun call!2980 () ListLongMap!19)

(assert (=> bm!2975 (= call!2980 call!2963)))

(declare-fun bm!2976 () Bool)

(declare-fun call!2982 () SeekEntryResult!3)

(assert (=> bm!2976 (= call!2982 call!2970)))

(declare-fun b!47569 () Bool)

(declare-fun e!27467 () Bool)

(assert (=> b!47569 (= e!27468 e!27467)))

(declare-fun res!31888 () Bool)

(assert (=> b!47569 (= res!31888 call!2965)))

(assert (=> b!47569 (=> (not res!31888) (not e!27467))))

(declare-fun b!47570 () Bool)

(declare-fun res!31887 () Bool)

(assert (=> b!47570 (=> (not res!31887) (not e!27457))))

(assert (=> b!47570 (= res!31887 (= (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!659 lt!6612)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!47571 () Bool)

(declare-fun lt!6607 () Unit!364)

(declare-fun lt!6599 () Unit!364)

(assert (=> b!47571 (= lt!6607 lt!6599)))

(declare-fun call!2974 () ListLongMap!19)

(assert (=> b!47571 (= call!2974 call!2980)))

(assert (=> b!47571 (= lt!6599 (lemmaChangeLongMinValueKeyThenAddPairToListMap!1 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) lt!6617 (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(assert (=> b!47571 (= lt!6617 (bvor (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) #b00000000000000000000000000000010))))

(assert (=> b!47571 (= e!27452 (tuple2!999 true (LongMapFixedSize!559 (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (bvor (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) #b00000000000000000000000000000010) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (_size!690 (ite c!16188 (_2!704 lt!6440) call!2886)) (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (_vacant!339 (ite c!16188 (_2!704 lt!6440) call!2886)))))))

(declare-fun b!47572 () Bool)

(assert (=> b!47572 (= e!27455 call!2963)))

(declare-fun bm!2977 () Bool)

(declare-fun call!2975 () ListLongMap!19)

(assert (=> bm!2977 (= call!2974 call!2975)))

(declare-fun bm!2978 () Bool)

(assert (=> bm!2978 (= call!2971 call!2984)))

(declare-fun b!47573 () Bool)

(declare-fun e!27466 () tuple2!998)

(assert (=> b!47573 (= e!27453 e!27466)))

(declare-fun c!16235 () Bool)

(assert (=> b!47573 (= c!16235 ((_ is MissingZero!3) lt!6620))))

(declare-fun b!47574 () Bool)

(assert (=> b!47574 (= e!27456 e!27462)))

(assert (=> b!47574 (= c!16243 (_1!704 lt!6604))))

(declare-fun b!47575 () Bool)

(declare-fun lt!6615 () Unit!364)

(declare-fun lt!6622 () Unit!364)

(assert (=> b!47575 (= lt!6615 lt!6622)))

(assert (=> b!47575 (= call!2974 call!2980)))

(assert (=> b!47575 (= lt!6622 (lemmaChangeZeroKeyThenAddPairToListMap!1 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) lt!6597 (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(assert (=> b!47575 (= lt!6597 (bvor (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) #b00000000000000000000000000000001))))

(assert (=> b!47575 (= e!27452 (tuple2!999 true (LongMapFixedSize!559 (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (bvor (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) #b00000000000000000000000000000001) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (_size!690 (ite c!16188 (_2!704 lt!6440) call!2886)) (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (_vacant!339 (ite c!16188 (_2!704 lt!6440) call!2886)))))))

(declare-fun b!47576 () Bool)

(assert (=> b!47576 (= e!27451 e!27469)))

(declare-fun res!31879 () Bool)

(assert (=> b!47576 (= res!31879 call!2969)))

(assert (=> b!47576 (=> (not res!31879) (not e!27469))))

(declare-fun b!47577 () Bool)

(declare-fun c!16244 () Bool)

(assert (=> b!47577 (= c!16244 ((_ is MissingVacant!3) lt!6613))))

(declare-fun e!27450 () Bool)

(assert (=> b!47577 (= e!27450 e!27451)))

(declare-fun b!47578 () Bool)

(assert (=> b!47578 (= e!27465 (= (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!658 lt!6598)) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!47579 () Bool)

(assert (=> b!47579 (= e!27464 (not call!2967))))

(declare-fun bm!2979 () Bool)

(assert (=> bm!2979 (= call!2975 (+!3 (ite c!16237 call!2976 call!2983) (ite c!16237 (ite c!16245 (tuple2!1001 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) (tuple2!1001 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))))) (tuple2!1001 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))))

(declare-fun b!47580 () Bool)

(declare-fun res!31882 () Bool)

(assert (=> b!47580 (=> (not res!31882) (not e!27464))))

(assert (=> b!47580 (= res!31882 call!2969)))

(assert (=> b!47580 (= e!27450 e!27464)))

(declare-fun res!31881 () Bool)

(declare-fun b!47581 () Bool)

(assert (=> b!47581 (= res!31881 (= (select (arr!445 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!660 lt!6612)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!47581 (=> (not res!31881) (not e!27467))))

(declare-fun b!47582 () Bool)

(declare-fun e!27463 () Unit!364)

(declare-fun lt!6621 () Unit!364)

(assert (=> b!47582 (= e!27463 lt!6621)))

(assert (=> b!47582 (= lt!6621 call!2973)))

(assert (=> b!47582 (= lt!6598 call!2982)))

(declare-fun res!31892 () Bool)

(assert (=> b!47582 (= res!31892 ((_ is Found!3) lt!6598))))

(assert (=> b!47582 (=> (not res!31892) (not e!27465))))

(assert (=> b!47582 e!27465))

(declare-fun b!47583 () Bool)

(declare-fun lt!6616 () Unit!364)

(declare-fun lt!6606 () Unit!364)

(assert (=> b!47583 (= lt!6616 lt!6606)))

(assert (=> b!47583 call!2977))

(assert (=> b!47583 (= lt!6606 (lemmaValidKeyInArrayIsInListMap!1 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) lt!6619 (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (index!658 lt!6620) (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(assert (=> b!47583 (= lt!6619 (array!943 (store (arr!444 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!658 lt!6620) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) (size!785 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)))))))

(declare-fun lt!6601 () Unit!364)

(declare-fun lt!6596 () Unit!364)

(assert (=> b!47583 (= lt!6601 lt!6596)))

(assert (=> b!47583 (= call!2975 (getCurrentListMap!2 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (array!943 (store (arr!444 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!658 lt!6620) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) (size!785 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)))) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) #b00000000000000000000000000000000 (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(assert (=> b!47583 (= lt!6596 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!1 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (index!658 lt!6620) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886))))))

(declare-fun lt!6611 () Unit!364)

(assert (=> b!47583 (= lt!6611 e!27463)))

(assert (=> b!47583 (= c!16238 (contains!32 call!2983 (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!47583 (= e!27466 (tuple2!999 true (LongMapFixedSize!559 (defaultEntry!617 (ite c!16188 (_2!704 lt!6440) call!2886)) (mask!1007 (ite c!16188 (_2!704 lt!6440) call!2886)) (extraKeys!525 (ite c!16188 (_2!704 lt!6440) call!2886)) (zeroValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (minValue!535 (ite c!16188 (_2!704 lt!6440) call!2886)) (_size!690 (ite c!16188 (_2!704 lt!6440) call!2886)) (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (array!943 (store (arr!444 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886))) (index!658 lt!6620) (ite c!16188 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (ite c!16187 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) (size!785 (_values!557 (ite c!16188 (_2!704 lt!6440) call!2886)))) (_vacant!339 (ite c!16188 (_2!704 lt!6440) call!2886)))))))

(declare-fun b!47584 () Bool)

(declare-fun lt!6605 () tuple2!998)

(assert (=> b!47584 (= lt!6605 call!2966)))

(assert (=> b!47584 (= e!27466 (tuple2!999 (_1!704 lt!6605) (_2!704 lt!6605)))))

(declare-fun bm!2980 () Bool)

(assert (=> bm!2980 (= call!2968 (arrayContainsKey!0 (_keys!570 (ite c!16188 (_2!704 lt!6440) call!2886)) (ite c!16188 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!16187 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun b!47585 () Bool)

(declare-fun Unit!371 () Unit!364)

(assert (=> b!47585 (= e!27463 Unit!371)))

(declare-fun lt!6600 () Unit!364)

(assert (=> b!47585 (= lt!6600 call!2985)))

(assert (=> b!47585 (= lt!6613 call!2982)))

(assert (=> b!47585 (= c!16240 ((_ is MissingZero!3) lt!6613))))

(assert (=> b!47585 e!27450))

(declare-fun lt!6614 () Unit!364)

(assert (=> b!47585 (= lt!6614 lt!6600)))

(assert (=> b!47585 false))

(declare-fun b!47586 () Bool)

(assert (=> b!47586 (= e!27467 (not call!2964))))

(assert (= (and d!5693 c!16237) b!47563))

(assert (= (and d!5693 (not c!16237)) b!47565))

(assert (= (and b!47563 c!16245) b!47575))

(assert (= (and b!47563 (not c!16245)) b!47571))

(assert (= (or b!47575 b!47571) bm!2969))

(assert (= (or b!47575 b!47571) bm!2975))

(assert (= (or b!47575 b!47571) bm!2977))

(assert (= (and b!47565 c!16239) b!47556))

(assert (= (and b!47565 (not c!16239)) b!47547))

(assert (= (and b!47556 c!16242) b!47568))

(assert (= (and b!47556 (not c!16242)) b!47550))

(assert (= (and b!47568 res!31886) b!47564))

(assert (= (and b!47564 res!31889) b!47553))

(assert (= (and b!47550 c!16241) b!47552))

(assert (= (and b!47550 (not c!16241)) b!47558))

(assert (= (and b!47552 res!31880) b!47570))

(assert (= (and b!47570 res!31887) b!47567))

(assert (= (and b!47558 c!16246) b!47569))

(assert (= (and b!47558 (not c!16246)) b!47559))

(assert (= (and b!47569 res!31888) b!47581))

(assert (= (and b!47581 res!31881) b!47586))

(assert (= (or b!47567 b!47586) bm!2970))

(assert (= (or b!47552 b!47569) bm!2962))

(assert (= (or b!47564 bm!2962) bm!2959))

(assert (= (or b!47568 b!47550) bm!2971))

(assert (= (and b!47547 c!16247) b!47557))

(assert (= (and b!47547 (not c!16247)) b!47573))

(assert (= (and b!47573 c!16235) b!47584))

(assert (= (and b!47573 (not c!16235)) b!47583))

(assert (= (and b!47583 c!16238) b!47582))

(assert (= (and b!47583 (not c!16238)) b!47585))

(assert (= (and b!47582 res!31892) b!47548))

(assert (= (and b!47548 res!31883) b!47578))

(assert (= (and b!47585 c!16240) b!47580))

(assert (= (and b!47585 (not c!16240)) b!47577))

(assert (= (and b!47580 res!31882) b!47555))

(assert (= (and b!47555 res!31891) b!47579))

(assert (= (and b!47577 c!16244) b!47576))

(assert (= (and b!47577 (not c!16244)) b!47560))

(assert (= (and b!47576 res!31879) b!47554))

(assert (= (and b!47554 res!31890) b!47549))

(assert (= (or b!47579 b!47549) bm!2967))

(assert (= (or b!47580 b!47576) bm!2964))

(assert (= (or b!47548 bm!2964) bm!2978))

(assert (= (or b!47582 b!47585) bm!2976))

(assert (= (or b!47557 b!47584) bm!2963))

(assert (= (or b!47568 b!47582) bm!2965))

(assert (= (or bm!2971 bm!2976) bm!2968))

(assert (= (or bm!2959 bm!2978) bm!2958))

(assert (= (or bm!2970 bm!2967) bm!2980))

(assert (= (or b!47556 b!47583) bm!2974))

(assert (= (or b!47550 b!47585) bm!2960))

(assert (= (or b!47556 b!47583) bm!2966))

(assert (= (and bm!2966 c!16236) b!47551))

(assert (= (and bm!2966 (not c!16236)) b!47572))

(assert (= (or bm!2977 b!47583) bm!2979))

(assert (= (or bm!2969 bm!2974) bm!2973))

(assert (= (or bm!2975 b!47572) bm!2957))

(assert (= (and d!5693 res!31885) b!47574))

(assert (= (and b!47574 c!16243) b!47562))

(assert (= (and b!47574 (not c!16243)) b!47561))

(assert (= (and b!47562 res!31884) b!47566))

(assert (= (or b!47562 b!47566 b!47561) bm!2972))

(assert (= (or b!47566 b!47561) bm!2961))

(declare-fun m!21614 () Bool)

(assert (=> b!47571 m!21614))

(declare-fun m!21616 () Bool)

(assert (=> bm!2966 m!21616))

(declare-fun m!21618 () Bool)

(assert (=> bm!2966 m!21618))

(declare-fun m!21620 () Bool)

(assert (=> bm!2973 m!21620))

(declare-fun m!21622 () Bool)

(assert (=> bm!2957 m!21622))

(declare-fun m!21624 () Bool)

(assert (=> bm!2958 m!21624))

(declare-fun m!21626 () Bool)

(assert (=> bm!2972 m!21626))

(declare-fun m!21628 () Bool)

(assert (=> bm!2963 m!21628))

(declare-fun m!21630 () Bool)

(assert (=> d!5693 m!21630))

(declare-fun m!21632 () Bool)

(assert (=> d!5693 m!21632))

(declare-fun m!21634 () Bool)

(assert (=> b!47578 m!21634))

(declare-fun m!21636 () Bool)

(assert (=> bm!2965 m!21636))

(declare-fun m!21638 () Bool)

(assert (=> b!47570 m!21638))

(declare-fun m!21640 () Bool)

(assert (=> b!47553 m!21640))

(declare-fun m!21642 () Bool)

(assert (=> b!47583 m!21642))

(declare-fun m!21644 () Bool)

(assert (=> b!47583 m!21644))

(declare-fun m!21646 () Bool)

(assert (=> b!47583 m!21646))

(declare-fun m!21648 () Bool)

(assert (=> b!47583 m!21648))

(declare-fun m!21650 () Bool)

(assert (=> b!47583 m!21650))

(declare-fun m!21652 () Bool)

(assert (=> bm!2979 m!21652))

(declare-fun m!21654 () Bool)

(assert (=> b!47554 m!21654))

(declare-fun m!21656 () Bool)

(assert (=> b!47562 m!21656))

(declare-fun m!21658 () Bool)

(assert (=> bm!2961 m!21658))

(declare-fun m!21660 () Bool)

(assert (=> b!47565 m!21660))

(assert (=> bm!2968 m!21660))

(declare-fun m!21662 () Bool)

(assert (=> bm!2980 m!21662))

(declare-fun m!21664 () Bool)

(assert (=> bm!2960 m!21664))

(declare-fun m!21666 () Bool)

(assert (=> b!47566 m!21666))

(declare-fun m!21668 () Bool)

(assert (=> b!47581 m!21668))

(declare-fun m!21670 () Bool)

(assert (=> b!47555 m!21670))

(declare-fun m!21672 () Bool)

(assert (=> b!47575 m!21672))

(assert (=> bm!2883 d!5693))

(declare-fun bs!6389 () Bool)

(declare-fun d!5695 () Bool)

(assert (= bs!6389 (and d!5695 b!47389)))

(declare-fun lambda!896 () Int)

(assert (=> bs!6389 (not (= lambda!896 lambda!892))))

(declare-fun bs!6390 () Bool)

(assert (= bs!6390 (and d!5695 b!47391)))

(assert (=> bs!6390 (not (= lambda!896 lambda!893))))

(assert (=> d!5695 true))

(assert (=> d!5695 (= (allKeysSameHashInMap!8 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))) (hashF!2143 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))) (forall!102 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))) lambda!896))))

(declare-fun bs!6391 () Bool)

(assert (= bs!6391 d!5695))

(declare-fun m!21674 () Bool)

(assert (=> bs!6391 m!21674))

(assert (=> b!47392 d!5695))

(declare-fun d!5697 () Bool)

(assert (=> d!5697 (= (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))) (map!264 (v!12551 (underlying!753 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))))))))

(declare-fun bs!6392 () Bool)

(assert (= bs!6392 d!5697))

(declare-fun m!21676 () Bool)

(assert (=> bs!6392 m!21676))

(assert (=> b!47392 d!5697))

(assert (=> d!5671 d!5681))

(declare-fun d!5699 () Bool)

(declare-fun e!27476 () Bool)

(assert (=> d!5699 e!27476))

(declare-fun res!31895 () Bool)

(assert (=> d!5699 (=> (not res!31895) (not e!27476))))

(declare-fun lt!6627 () (_ BitVec 32))

(assert (=> d!5699 (= res!31895 (validMask!0 lt!6627))))

(declare-datatypes ((tuple2!1002 0))(
  ( (tuple2!1003 (_1!706 Unit!364) (_2!706 (_ BitVec 32))) )
))
(declare-fun e!27475 () tuple2!1002)

(assert (=> d!5699 (= lt!6627 (_2!706 e!27475))))

(declare-fun c!16250 () Bool)

(declare-fun lt!6628 () tuple2!1002)

(assert (=> d!5699 (= c!16250 (and (bvsgt (_2!706 lt!6628) #b00000000000000000000000000001000) (bvslt (_size!690 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (bvlshr (_2!706 lt!6628) #b00000000000000000000000000000011))))))

(declare-fun Unit!372 () Unit!364)

(declare-fun Unit!373 () Unit!364)

(assert (=> d!5699 (= lt!6628 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!690 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_vacant!339 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!339 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))) (tuple2!1003 Unit!372 (bvand (bvadd (bvshl (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!1003 Unit!373 (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))))))

(assert (=> d!5699 (validMask!0 (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))))))

(assert (=> d!5699 (= (computeNewMask!1 (v!12552 (underlying!754 thiss!42687)) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_vacant!339 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_size!690 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) lt!6627)))

(declare-fun b!47595 () Bool)

(declare-fun computeNewMaskWhile!1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!1002)

(assert (=> b!47595 (= e!27475 (computeNewMaskWhile!1 (_size!690 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_vacant!339 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_2!706 lt!6628)))))

(declare-fun b!47596 () Bool)

(declare-fun Unit!374 () Unit!364)

(assert (=> b!47596 (= e!27475 (tuple2!1003 Unit!374 (_2!706 lt!6628)))))

(declare-fun b!47597 () Bool)

(assert (=> b!47597 (= e!27476 (bvsle (_size!690 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (bvadd lt!6627 #b00000000000000000000000000000001)))))

(assert (= (and d!5699 c!16250) b!47595))

(assert (= (and d!5699 (not c!16250)) b!47596))

(assert (= (and d!5699 res!31895) b!47597))

(declare-fun m!21678 () Bool)

(assert (=> d!5699 m!21678))

(declare-fun m!21680 () Bool)

(assert (=> d!5699 m!21680))

(declare-fun m!21682 () Bool)

(assert (=> b!47595 m!21682))

(assert (=> d!5671 d!5699))

(assert (=> d!5671 d!5685))

(declare-fun b!47626 () Bool)

(declare-fun e!27496 () tuple2!998)

(assert (=> b!47626 (= e!27496 (tuple2!999 true (v!12551 (_2!703 lt!6436))))))

(declare-fun call!3016 () ListLongMap!19)

(declare-fun c!16263 () Bool)

(declare-fun bm!3007 () Bool)

(declare-fun lt!6695 () (_ BitVec 64))

(declare-fun lt!6724 () List!805)

(declare-fun call!3012 () ListLongMap!19)

(declare-fun call!3013 () ListLongMap!19)

(assert (=> bm!3007 (= call!3012 (+!3 (ite c!16263 call!3013 call!3016) (ite c!16263 (tuple2!1001 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (tuple2!1001 lt!6695 lt!6724))))))

(declare-fun b!47627 () Bool)

(assert (=> b!47627 (= c!16263 (bvsgt (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun e!27497 () tuple2!998)

(declare-fun e!27500 () tuple2!998)

(assert (=> b!47627 (= e!27497 e!27500)))

(declare-fun call!3024 () ListLongMap!19)

(declare-fun bm!3008 () Bool)

(declare-fun call!3023 () ListLongMap!19)

(assert (=> bm!3008 (= call!3023 (+!3 (ite c!16263 call!3024 call!3013) (ite c!16263 (tuple2!1001 lt!6695 lt!6724) (tuple2!1001 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun bm!3009 () Bool)

(declare-fun call!3019 () ListLongMap!19)

(declare-fun call!3018 () ListLongMap!19)

(declare-fun lt!6720 () (_ BitVec 64))

(assert (=> bm!3009 (= call!3018 (+!3 (ite c!16263 call!3019 call!3024) (ite c!16263 (tuple2!1001 lt!6695 lt!6724) (tuple2!1001 lt!6720 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun lt!6706 () ListLongMap!19)

(declare-fun bm!3010 () Bool)

(declare-fun lt!6703 () ListLongMap!19)

(declare-fun lt!6708 () (_ BitVec 64))

(declare-fun call!3021 () ListLongMap!19)

(assert (=> bm!3010 (= call!3021 (+!3 (ite c!16263 lt!6706 lt!6703) (ite c!16263 (tuple2!1001 lt!6695 lt!6724) (tuple2!1001 lt!6708 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun call!3017 () Unit!364)

(declare-fun lt!6705 () ListLongMap!19)

(declare-fun lt!6713 () (_ BitVec 64))

(declare-fun bm!3011 () Bool)

(declare-fun lt!6719 () ListLongMap!19)

(declare-fun addCommutativeForDiffKeys!2 (ListLongMap!19 (_ BitVec 64) List!805 (_ BitVec 64) List!805) Unit!364)

(assert (=> bm!3011 (= call!3017 (addCommutativeForDiffKeys!2 (ite c!16263 lt!6705 lt!6719) lt!6695 lt!6724 (ite c!16263 lt!6713 lt!6720) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun d!5701 () Bool)

(declare-fun e!27493 () Bool)

(assert (=> d!5701 e!27493))

(declare-fun res!31901 () Bool)

(assert (=> d!5701 (=> res!31901 e!27493)))

(declare-fun lt!6701 () tuple2!998)

(assert (=> d!5701 (= res!31901 (not (_1!704 lt!6701)))))

(declare-fun e!27499 () tuple2!998)

(assert (=> d!5701 (= lt!6701 e!27499)))

(declare-fun c!16268 () Bool)

(assert (=> d!5701 (= c!16268 (and (not (= lt!6695 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!6695 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!6711 () ListLongMap!19)

(assert (=> d!5701 (= lt!6711 (map!264 (v!12551 (_2!703 lt!6436))))))

(assert (=> d!5701 (= lt!6724 (select (arr!444 (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001)))))

(assert (=> d!5701 (= lt!6695 (select (arr!445 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001)))))

(assert (=> d!5701 (valid!253 (v!12552 (underlying!754 thiss!42687)))))

(assert (=> d!5701 (= (repackFrom!1 (v!12552 (underlying!754 thiss!42687)) (v!12551 (_2!703 lt!6436)) (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001)) lt!6701)))

(declare-fun bm!3012 () Bool)

(declare-fun call!3020 () Unit!364)

(declare-fun lt!6714 () (_ BitVec 64))

(assert (=> bm!3012 (= call!3020 (addCommutativeForDiffKeys!2 (ite c!16263 lt!6706 lt!6703) lt!6695 lt!6724 (ite c!16263 lt!6714 lt!6708) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun bm!3013 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 32) Int) ListLongMap!19)

(assert (=> bm!3013 (= call!3013 (getCurrentListMapNoExtraKeys!1 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (bvadd (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun bm!3014 () Bool)

(assert (=> bm!3014 (= call!3019 (+!3 (ite c!16263 lt!6706 lt!6703) (ite c!16263 (tuple2!1001 lt!6714 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (tuple2!1001 lt!6695 lt!6724))))))

(declare-fun call!3015 () ListLongMap!19)

(declare-fun bm!3015 () Bool)

(assert (=> bm!3015 (= call!3015 (+!3 (ite c!16263 call!3016 call!3021) (ite c!16263 (tuple2!1001 lt!6713 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (tuple2!1001 lt!6695 lt!6724))))))

(declare-fun b!47628 () Bool)

(declare-fun e!27498 () Unit!364)

(declare-fun Unit!375 () Unit!364)

(assert (=> b!47628 (= e!27498 Unit!375)))

(declare-fun b!47629 () Bool)

(declare-fun lt!6693 () tuple2!998)

(declare-fun call!3022 () tuple2!998)

(assert (=> b!47629 (= lt!6693 call!3022)))

(assert (=> b!47629 (= e!27496 (tuple2!999 (_1!704 lt!6693) (_2!704 lt!6693)))))

(declare-fun lt!6710 () tuple2!998)

(declare-fun bm!3016 () Bool)

(assert (=> bm!3016 (= call!3022 (repackFrom!1 (v!12552 (underlying!754 thiss!42687)) (ite c!16268 (_2!704 lt!6710) (v!12551 (_2!703 lt!6436))) (bvsub (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun e!27494 () Bool)

(declare-fun lt!6699 () (_ BitVec 32))

(declare-fun b!47630 () Bool)

(assert (=> b!47630 (= e!27494 (arrayContainsKey!0 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) lt!6695 lt!6699))))

(declare-fun b!47631 () Bool)

(assert (=> b!47631 (= e!27499 e!27497)))

(assert (=> b!47631 (= lt!6710 (update!19 (v!12551 (_2!703 lt!6436)) lt!6695 lt!6724))))

(declare-fun c!16264 () Bool)

(assert (=> b!47631 (= c!16264 (contains!32 lt!6711 lt!6695))))

(declare-fun lt!6712 () Unit!364)

(assert (=> b!47631 (= lt!6712 e!27498)))

(declare-fun c!16265 () Bool)

(assert (=> b!47631 (= c!16265 (_1!704 lt!6710))))

(declare-fun b!47632 () Bool)

(assert (=> b!47632 (= e!27494 (ite (= lt!6695 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!3014 () ListLongMap!19)

(declare-fun bm!3017 () Bool)

(assert (=> bm!3017 (= call!3014 (+!3 (ite c!16263 call!3021 call!3019) (ite c!16263 (tuple2!1001 lt!6714 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (tuple2!1001 lt!6708 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun b!47633 () Bool)

(assert (=> b!47633 (= e!27500 (tuple2!999 true (_2!704 lt!6710)))))

(assert (=> b!47633 (= lt!6719 call!3013)))

(assert (=> b!47633 (= lt!6720 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6715 () Unit!364)

(assert (=> b!47633 (= lt!6715 call!3017)))

(assert (=> b!47633 (= call!3018 call!3012)))

(declare-fun lt!6721 () Unit!364)

(assert (=> b!47633 (= lt!6721 lt!6715)))

(assert (=> b!47633 (= lt!6703 call!3023)))

(assert (=> b!47633 (= lt!6708 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6709 () Unit!364)

(assert (=> b!47633 (= lt!6709 call!3020)))

(assert (=> b!47633 (= call!3014 call!3015)))

(declare-fun lt!6702 () Unit!364)

(assert (=> b!47633 (= lt!6702 lt!6709)))

(declare-fun b!47634 () Bool)

(declare-fun e!27495 () Bool)

(assert (=> b!47634 (= e!27493 e!27495)))

(declare-fun res!31900 () Bool)

(assert (=> b!47634 (=> (not res!31900) (not e!27495))))

(assert (=> b!47634 (= res!31900 (valid!254 (_2!704 lt!6701)))))

(declare-fun b!47635 () Bool)

(assert (=> b!47635 (= e!27499 e!27496)))

(declare-fun c!16267 () Bool)

(assert (=> b!47635 (= c!16267 (bvsgt (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!47636 () Bool)

(assert (=> b!47636 (= e!27495 (= (map!264 (_2!704 lt!6701)) (map!264 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(assert (=> b!47636 ((_ is LongMap!279) (v!12552 (underlying!754 thiss!42687)))))

(declare-fun b!47637 () Bool)

(declare-fun lt!6723 () tuple2!998)

(assert (=> b!47637 (= e!27500 (tuple2!999 (_1!704 lt!6723) (_2!704 lt!6723)))))

(assert (=> b!47637 (= lt!6705 call!3013)))

(assert (=> b!47637 (= lt!6713 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6722 () Unit!364)

(assert (=> b!47637 (= lt!6722 call!3017)))

(assert (=> b!47637 (= call!3015 call!3023)))

(declare-fun lt!6717 () Unit!364)

(assert (=> b!47637 (= lt!6717 lt!6722)))

(assert (=> b!47637 (= lt!6706 call!3012)))

(assert (=> b!47637 (= lt!6714 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!6697 () Unit!364)

(assert (=> b!47637 (= lt!6697 call!3020)))

(assert (=> b!47637 (= call!3014 call!3018)))

(declare-fun lt!6707 () Unit!364)

(assert (=> b!47637 (= lt!6707 lt!6697)))

(assert (=> b!47637 (= lt!6723 call!3022)))

(declare-fun b!47638 () Bool)

(assert (=> b!47638 (= e!27497 (tuple2!999 false (_2!704 lt!6710)))))

(declare-fun bm!3018 () Bool)

(assert (=> bm!3018 (= call!3016 (+!3 (ite c!16263 lt!6705 lt!6719) (ite c!16263 (tuple2!1001 lt!6695 lt!6724) (tuple2!1001 lt!6720 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))))

(declare-fun b!47639 () Bool)

(assert (=> b!47639 false))

(declare-fun lt!6698 () Unit!364)

(declare-fun lt!6704 () Unit!364)

(assert (=> b!47639 (= lt!6698 lt!6704)))

(declare-fun lt!6700 () (_ BitVec 32))

(assert (=> b!47639 (not (arrayContainsKey!0 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) lt!6695 lt!6700))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!944 (_ BitVec 32) (_ BitVec 64) List!807) Unit!364)

(assert (=> b!47639 (= lt!6704 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) lt!6700 lt!6695 (Cons!805 lt!6695 Nil!805)))))

(assert (=> b!47639 (= lt!6700 (bvadd (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!6696 () Unit!364)

(declare-fun lt!6694 () Unit!364)

(assert (=> b!47639 (= lt!6696 lt!6694)))

(assert (=> b!47639 (arrayNoDuplicates!0 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) Nil!805)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!944 (_ BitVec 32) (_ BitVec 32)) Unit!364)

(assert (=> b!47639 (= lt!6694 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) #b00000000000000000000000000000000 (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001)))))

(declare-fun lt!6716 () Unit!364)

(declare-fun lt!6718 () Unit!364)

(assert (=> b!47639 (= lt!6716 lt!6718)))

(assert (=> b!47639 e!27494))

(declare-fun c!16266 () Bool)

(assert (=> b!47639 (= c!16266 (and (not (= lt!6695 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!6695 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!1 (array!944 array!942 (_ BitVec 32) (_ BitVec 32) List!805 List!805 (_ BitVec 64) (_ BitVec 32) Int) Unit!364)

(assert (=> b!47639 (= lt!6718 (lemmaListMapContainsThenArrayContainsFrom!1 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (_values!557 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (mask!1007 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (extraKeys!525 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687))))) lt!6695 lt!6699 (defaultEntry!617 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))))

(assert (=> b!47639 (= lt!6699 (bvadd (bvsub (size!786 (_keys!570 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun Unit!376 () Unit!364)

(assert (=> b!47639 (= e!27498 Unit!376)))

(declare-fun bm!3019 () Bool)

(assert (=> bm!3019 (= call!3024 (+!3 (ite c!16263 lt!6705 lt!6719) (ite c!16263 (tuple2!1001 lt!6713 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))) (tuple2!1001 lt!6695 lt!6724))))))

(assert (= (and d!5701 c!16268) b!47631))

(assert (= (and d!5701 (not c!16268)) b!47635))

(assert (= (and b!47631 c!16264) b!47639))

(assert (= (and b!47631 (not c!16264)) b!47628))

(assert (= (and b!47639 c!16266) b!47630))

(assert (= (and b!47639 (not c!16266)) b!47632))

(assert (= (and b!47631 c!16265) b!47627))

(assert (= (and b!47631 (not c!16265)) b!47638))

(assert (= (and b!47627 c!16263) b!47637))

(assert (= (and b!47627 (not c!16263)) b!47633))

(assert (= (or b!47637 b!47633) bm!3018))

(assert (= (or b!47637 b!47633) bm!3014))

(assert (= (or b!47637 b!47633) bm!3013))

(assert (= (or b!47637 b!47633) bm!3010))

(assert (= (or b!47637 b!47633) bm!3012))

(assert (= (or b!47637 b!47633) bm!3011))

(assert (= (or b!47637 b!47633) bm!3019))

(assert (= (or b!47637 b!47633) bm!3009))

(assert (= (or b!47637 b!47633) bm!3007))

(assert (= (or b!47637 b!47633) bm!3015))

(assert (= (or b!47637 b!47633) bm!3008))

(assert (= (or b!47637 b!47633) bm!3017))

(assert (= (and b!47635 c!16267) b!47629))

(assert (= (and b!47635 (not c!16267)) b!47626))

(assert (= (or b!47637 b!47629) bm!3016))

(assert (= (and d!5701 (not res!31901)) b!47634))

(assert (= (and b!47634 res!31900) b!47636))

(declare-fun m!21684 () Bool)

(assert (=> bm!3019 m!21684))

(declare-fun m!21686 () Bool)

(assert (=> b!47639 m!21686))

(declare-fun m!21688 () Bool)

(assert (=> b!47639 m!21688))

(declare-fun m!21690 () Bool)

(assert (=> b!47639 m!21690))

(declare-fun m!21692 () Bool)

(assert (=> b!47639 m!21692))

(declare-fun m!21694 () Bool)

(assert (=> b!47639 m!21694))

(declare-fun m!21696 () Bool)

(assert (=> b!47631 m!21696))

(declare-fun m!21698 () Bool)

(assert (=> b!47631 m!21698))

(declare-fun m!21700 () Bool)

(assert (=> bm!3016 m!21700))

(declare-fun m!21702 () Bool)

(assert (=> bm!3011 m!21702))

(declare-fun m!21704 () Bool)

(assert (=> d!5701 m!21704))

(declare-fun m!21706 () Bool)

(assert (=> d!5701 m!21706))

(declare-fun m!21708 () Bool)

(assert (=> d!5701 m!21708))

(assert (=> d!5701 m!21498))

(declare-fun m!21710 () Bool)

(assert (=> bm!3017 m!21710))

(declare-fun m!21712 () Bool)

(assert (=> bm!3015 m!21712))

(declare-fun m!21714 () Bool)

(assert (=> bm!3010 m!21714))

(declare-fun m!21716 () Bool)

(assert (=> bm!3009 m!21716))

(declare-fun m!21718 () Bool)

(assert (=> bm!3007 m!21718))

(declare-fun m!21720 () Bool)

(assert (=> b!47636 m!21720))

(assert (=> b!47636 m!21552))

(declare-fun m!21722 () Bool)

(assert (=> bm!3014 m!21722))

(declare-fun m!21724 () Bool)

(assert (=> bm!3012 m!21724))

(declare-fun m!21726 () Bool)

(assert (=> bm!3013 m!21726))

(declare-fun m!21728 () Bool)

(assert (=> bm!3008 m!21728))

(declare-fun m!21730 () Bool)

(assert (=> b!47630 m!21730))

(declare-fun m!21732 () Bool)

(assert (=> b!47634 m!21732))

(declare-fun m!21734 () Bool)

(assert (=> bm!3018 m!21734))

(assert (=> b!47377 d!5701))

(declare-fun d!5703 () Bool)

(declare-fun res!31906 () Bool)

(declare-fun e!27505 () Bool)

(assert (=> d!5703 (=> res!31906 e!27505)))

(assert (=> d!5703 (= res!31906 ((_ is Nil!804) (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))))))))

(assert (=> d!5703 (= (forall!102 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))) lambda!893) e!27505)))

(declare-fun b!47644 () Bool)

(declare-fun e!27506 () Bool)

(assert (=> b!47644 (= e!27505 e!27506)))

(declare-fun res!31907 () Bool)

(assert (=> b!47644 (=> (not res!31907) (not e!27506))))

(declare-fun dynLambda!136 (Int tuple2!1000) Bool)

(assert (=> b!47644 (= res!31907 (dynLambda!136 lambda!893 (h!6200 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))))))))

(declare-fun b!47645 () Bool)

(assert (=> b!47645 (= e!27506 (forall!102 (t!17005 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))))) lambda!893))))

(assert (= (and d!5703 (not res!31906)) b!47644))

(assert (= (and b!47644 res!31907) b!47645))

(declare-fun b_lambda!279 () Bool)

(assert (=> (not b_lambda!279) (not b!47644)))

(declare-fun m!21736 () Bool)

(assert (=> b!47644 m!21736))

(declare-fun m!21738 () Bool)

(assert (=> b!47645 m!21738))

(assert (=> b!47391 d!5703))

(assert (=> b!47391 d!5697))

(declare-fun bs!6393 () Bool)

(declare-fun d!5705 () Bool)

(assert (= bs!6393 (and d!5705 b!47389)))

(declare-fun lambda!897 () Int)

(assert (=> bs!6393 (not (= lambda!897 lambda!892))))

(declare-fun bs!6394 () Bool)

(assert (= bs!6394 (and d!5705 b!47391)))

(assert (=> bs!6394 (not (= lambda!897 lambda!893))))

(declare-fun bs!6395 () Bool)

(assert (= bs!6395 (and d!5705 d!5695)))

(assert (=> bs!6395 (= (= (hashF!2143 thiss!42687) (hashF!2143 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))) (= lambda!897 lambda!896))))

(assert (=> d!5705 true))

(assert (=> d!5705 (= (allKeysSameHashInMap!8 (map!263 (v!12552 (underlying!754 thiss!42687))) (hashF!2143 thiss!42687)) (forall!102 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687)))) lambda!897))))

(declare-fun bs!6396 () Bool)

(assert (= bs!6396 d!5705))

(declare-fun m!21740 () Bool)

(assert (=> bs!6396 m!21740))

(assert (=> b!47390 d!5705))

(assert (=> b!47390 d!5689))

(declare-fun d!5707 () Bool)

(declare-fun res!31908 () Bool)

(declare-fun e!27507 () Bool)

(assert (=> d!5707 (=> res!31908 e!27507)))

(assert (=> d!5707 (= res!31908 ((_ is Nil!804) (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687))))))))

(assert (=> d!5707 (= (forall!102 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687)))) lambda!892) e!27507)))

(declare-fun b!47646 () Bool)

(declare-fun e!27508 () Bool)

(assert (=> b!47646 (= e!27507 e!27508)))

(declare-fun res!31909 () Bool)

(assert (=> b!47646 (=> (not res!31909) (not e!27508))))

(assert (=> b!47646 (= res!31909 (dynLambda!136 lambda!892 (h!6200 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687)))))))))

(declare-fun b!47647 () Bool)

(assert (=> b!47647 (= e!27508 (forall!102 (t!17005 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687))))) lambda!892))))

(assert (= (and d!5707 (not res!31908)) b!47646))

(assert (= (and b!47646 res!31909) b!47647))

(declare-fun b_lambda!281 () Bool)

(assert (=> (not b_lambda!281) (not b!47646)))

(declare-fun m!21742 () Bool)

(assert (=> b!47646 m!21742))

(declare-fun m!21744 () Bool)

(assert (=> b!47647 m!21744))

(assert (=> b!47389 d!5707))

(assert (=> b!47389 d!5689))

(declare-fun tp!32167 () Bool)

(declare-fun b!47648 () Bool)

(declare-fun e!27509 () Bool)

(assert (=> b!47648 (= e!27509 (and tp_is_empty!407 tp_is_empty!409 tp!32167))))

(assert (=> b!47407 (= tp!32165 e!27509)))

(assert (= (and b!47407 ((_ is Cons!803) (t!17004 (zeroValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) b!47648))

(declare-fun b!47649 () Bool)

(declare-fun tp!32168 () Bool)

(declare-fun e!27510 () Bool)

(assert (=> b!47649 (= e!27510 (and tp_is_empty!407 tp_is_empty!409 tp!32168))))

(assert (=> b!47397 (= tp!32154 e!27510)))

(assert (= (and b!47397 ((_ is Cons!803) (t!17004 mapDefault!1101))) b!47649))

(declare-fun e!27511 () Bool)

(declare-fun tp!32169 () Bool)

(declare-fun b!47650 () Bool)

(assert (=> b!47650 (= e!27511 (and tp_is_empty!407 tp_is_empty!409 tp!32169))))

(assert (=> b!47405 (= tp!32161 e!27511)))

(assert (= (and b!47405 ((_ is Cons!803) (t!17004 mapDefault!1104))) b!47650))

(declare-fun b!47651 () Bool)

(declare-fun e!27512 () Bool)

(declare-fun tp!32170 () Bool)

(assert (=> b!47651 (= e!27512 (and tp_is_empty!407 tp_is_empty!409 tp!32170))))

(assert (=> b!47408 (= tp!32166 e!27512)))

(assert (= (and b!47408 ((_ is Cons!803) (t!17004 (minValue!535 (v!12551 (underlying!753 (v!12552 (underlying!754 thiss!42687)))))))) b!47651))

(declare-fun e!27513 () Bool)

(declare-fun tp!32171 () Bool)

(declare-fun b!47652 () Bool)

(assert (=> b!47652 (= e!27513 (and tp_is_empty!407 tp_is_empty!409 tp!32171))))

(assert (=> b!47406 (= tp!32164 e!27513)))

(assert (= (and b!47406 ((_ is Cons!803) (t!17004 mapValue!1101))) b!47652))

(declare-fun tp!32172 () Bool)

(declare-fun b!47653 () Bool)

(declare-fun e!27514 () Bool)

(assert (=> b!47653 (= e!27514 (and tp_is_empty!407 tp_is_empty!409 tp!32172))))

(assert (=> b!47404 (= tp!32163 e!27514)))

(assert (= (and b!47404 ((_ is Cons!803) (t!17004 mapValue!1104))) b!47653))

(declare-fun b!47654 () Bool)

(declare-fun e!27515 () Bool)

(declare-fun tp!32175 () Bool)

(assert (=> b!47654 (= e!27515 (and tp_is_empty!407 tp_is_empty!409 tp!32175))))

(declare-fun condMapEmpty!1105 () Bool)

(declare-fun mapDefault!1105 () List!805)

(assert (=> mapNonEmpty!1104 (= condMapEmpty!1105 (= mapRest!1104 ((as const (Array (_ BitVec 32) List!805)) mapDefault!1105)))))

(declare-fun e!27516 () Bool)

(declare-fun mapRes!1105 () Bool)

(assert (=> mapNonEmpty!1104 (= tp!32162 (and e!27516 mapRes!1105))))

(declare-fun mapIsEmpty!1105 () Bool)

(assert (=> mapIsEmpty!1105 mapRes!1105))

(declare-fun tp!32173 () Bool)

(declare-fun b!47655 () Bool)

(assert (=> b!47655 (= e!27516 (and tp_is_empty!407 tp_is_empty!409 tp!32173))))

(declare-fun mapNonEmpty!1105 () Bool)

(declare-fun tp!32174 () Bool)

(assert (=> mapNonEmpty!1105 (= mapRes!1105 (and tp!32174 e!27515))))

(declare-fun mapRest!1105 () (Array (_ BitVec 32) List!805))

(declare-fun mapValue!1105 () List!805)

(declare-fun mapKey!1105 () (_ BitVec 32))

(assert (=> mapNonEmpty!1105 (= mapRest!1104 (store mapRest!1105 mapKey!1105 mapValue!1105))))

(assert (= (and mapNonEmpty!1104 condMapEmpty!1105) mapIsEmpty!1105))

(assert (= (and mapNonEmpty!1104 (not condMapEmpty!1105)) mapNonEmpty!1105))

(assert (= (and mapNonEmpty!1105 ((_ is Cons!803) mapValue!1105)) b!47654))

(assert (= (and mapNonEmpty!1104 ((_ is Cons!803) mapDefault!1105)) b!47655))

(declare-fun m!21746 () Bool)

(assert (=> mapNonEmpty!1105 m!21746))

(declare-fun b_lambda!283 () Bool)

(assert (= b_lambda!279 (or b!47391 b_lambda!283)))

(declare-fun bs!6397 () Bool)

(declare-fun d!5709 () Bool)

(assert (= bs!6397 (and d!5709 b!47391)))

(declare-fun noDuplicateKeys!2 (List!805) Bool)

(assert (=> bs!6397 (= (dynLambda!136 lambda!893 (h!6200 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687)))))))) (noDuplicateKeys!2 (_2!705 (h!6200 (toList!179 (map!263 (v!12552 (underlying!754 (HashMap!275 (Cell!1108 (_2!701 lt!6412)) (hashF!2143 thiss!42687) (_size!691 thiss!42687) (defaultValue!424 thiss!42687))))))))))))

(declare-fun m!21748 () Bool)

(assert (=> bs!6397 m!21748))

(assert (=> b!47644 d!5709))

(declare-fun b_lambda!285 () Bool)

(assert (= b_lambda!281 (or b!47389 b_lambda!285)))

(declare-fun bs!6398 () Bool)

(declare-fun d!5711 () Bool)

(assert (= bs!6398 (and d!5711 b!47389)))

(assert (=> bs!6398 (= (dynLambda!136 lambda!892 (h!6200 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687)))))) (noDuplicateKeys!2 (_2!705 (h!6200 (toList!179 (map!263 (v!12552 (underlying!754 thiss!42687))))))))))

(declare-fun m!21750 () Bool)

(assert (=> bs!6398 m!21750))

(assert (=> b!47646 d!5711))

(declare-fun b_lambda!287 () Bool)

(assert (= b_lambda!277 (or (and b!47350 b_free!1293) b_lambda!287)))

(check-sat (not b!47525) (not b_next!1295) (not b!47575) (not bm!2966) (not bm!2942) (not bm!3008) (not b!47531) (not b!47423) (not b!47526) (not b!47535) (not d!5699) b_and!1331 (not mapNonEmpty!1105) (not b!47571) (not bm!3017) (not b!47583) (not bm!2933) (not bm!2961) (not b!47636) (not b!47654) (not b!47566) (not bm!2968) (not b!47522) (not b!47655) (not b!47649) (not b!47595) (not bm!2960) tp_is_empty!407 (not b_lambda!285) (not bm!3007) (not tb!35) (not bm!2965) (not b!47421) (not bs!6398) (not d!5701) b_and!1329 (not bm!2949) (not bm!3010) (not bm!2956) (not d!5681) (not b!47639) (not bm!2972) (not bm!2955) (not bm!2939) (not b!47630) (not bm!2941) (not d!5695) (not b!47424) (not b!47543) (not b!47650) (not bm!2948) (not b_lambda!287) (not bm!3019) (not b!47631) (not bm!2980) (not b!47645) (not b!47634) (not b!47647) (not bm!2944) (not b_next!1293) (not b!47653) (not d!5691) (not bm!3014) (not bm!2937) (not b!47562) (not bm!3009) (not bm!2973) (not bm!3011) (not d!5705) (not bm!2963) (not bm!3012) (not bm!2958) (not d!5689) tp_is_empty!409 (not b!47651) (not d!5683) (not b!47565) (not bm!2934) (not d!5693) (not bm!2936) (not bm!2957) (not d!5685) (not bm!3018) (not bm!2979) (not d!5697) (not b!47652) (not bm!3013) (not bm!3015) (not bs!6397) (not b!47648) (not b_lambda!283) (not bm!3016) (not d!5687))
(check-sat b_and!1329 b_and!1331 (not b_next!1293) (not b_next!1295))
