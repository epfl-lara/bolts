; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416768 () Bool)

(assert start!416768)

(declare-fun b!4327403 () Bool)

(declare-fun b_free!129137 () Bool)

(declare-fun b_next!129841 () Bool)

(assert (=> b!4327403 (= b_free!129137 (not b_next!129841))))

(declare-fun tp!1327927 () Bool)

(declare-fun b_and!340727 () Bool)

(assert (=> b!4327403 (= tp!1327927 b_and!340727)))

(declare-fun b!4327402 () Bool)

(declare-fun e!2692730 () Bool)

(declare-fun e!2692728 () Bool)

(assert (=> b!4327402 (= e!2692730 e!2692728)))

(declare-fun e!2692726 () Bool)

(declare-fun tp_is_empty!24275 () Bool)

(declare-fun e!2692727 () Bool)

(declare-datatypes ((V!9956 0))(
  ( (V!9957 (val!16044 Int)) )
))
(declare-datatypes ((array!17460 0))(
  ( (array!17461 (arr!7791 (Array (_ BitVec 32) V!9956)) (size!35831 (_ BitVec 32))) )
))
(declare-datatypes ((array!17462 0))(
  ( (array!17463 (arr!7792 (Array (_ BitVec 32) (_ BitVec 64))) (size!35832 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9606 0))(
  ( (LongMapFixedSize!9607 (defaultEntry!5209 Int) (mask!13469 (_ BitVec 32)) (extraKeys!5068 (_ BitVec 32)) (zeroValue!5080 V!9956) (minValue!5080 V!9956) (_size!9635 (_ BitVec 32)) (_keys!5130 array!17462) (_values!5104 array!17460) (_vacant!4867 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18987 0))(
  ( (Cell!18988 (v!42992 LongMapFixedSize!9606)) )
))
(declare-datatypes ((MutLongMap!4803 0))(
  ( (LongMap!4803 (underlying!9818 Cell!18987)) (MutLongMapExt!4802 (__x!30400 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4803)

(declare-fun array_inv!5611 (array!17462) Bool)

(declare-fun array_inv!5612 (array!17460) Bool)

(assert (=> b!4327403 (= e!2692726 (and tp!1327927 tp_is_empty!24275 (array_inv!5611 (_keys!5130 (v!42992 (underlying!9818 thiss!47260)))) (array_inv!5612 (_values!5104 (v!42992 (underlying!9818 thiss!47260)))) e!2692727))))

(declare-fun b!4327404 () Bool)

(declare-fun e!2692724 () Bool)

(declare-datatypes ((tuple2!47478 0))(
  ( (tuple2!47479 (_1!27030 Bool) (_2!27030 MutLongMap!4803)) )
))
(declare-fun lt!1544411 () tuple2!47478)

(get-info :version)

(assert (=> b!4327404 (= e!2692724 (and (_1!27030 lt!1544411) (not ((_ is LongMap!4803) (_2!27030 lt!1544411)))))))

(declare-fun e!2692725 () tuple2!47478)

(assert (=> b!4327404 (= lt!1544411 e!2692725)))

(declare-fun c!736289 () Bool)

(declare-fun imbalanced!105 (MutLongMap!4803) Bool)

(assert (=> b!4327404 (= c!736289 (imbalanced!105 thiss!47260))))

(declare-fun b!4327405 () Bool)

(declare-fun res!1773304 () Bool)

(assert (=> b!4327405 (=> (not res!1773304) (not e!2692724))))

(declare-fun valid!3822 (MutLongMap!4803) Bool)

(assert (=> b!4327405 (= res!1773304 (valid!3822 thiss!47260))))

(declare-fun b!4327406 () Bool)

(declare-fun mapRes!21382 () Bool)

(assert (=> b!4327406 (= e!2692727 (and tp_is_empty!24275 mapRes!21382))))

(declare-fun condMapEmpty!21382 () Bool)

(declare-fun mapDefault!21382 () V!9956)

(assert (=> b!4327406 (= condMapEmpty!21382 (= (arr!7791 (_values!5104 (v!42992 (underlying!9818 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9956)) mapDefault!21382)))))

(declare-fun mapNonEmpty!21382 () Bool)

(declare-fun tp!1327928 () Bool)

(assert (=> mapNonEmpty!21382 (= mapRes!21382 (and tp!1327928 tp_is_empty!24275))))

(declare-fun mapRest!21382 () (Array (_ BitVec 32) V!9956))

(declare-fun mapValue!21382 () V!9956)

(declare-fun mapKey!21382 () (_ BitVec 32))

(assert (=> mapNonEmpty!21382 (= (arr!7791 (_values!5104 (v!42992 (underlying!9818 thiss!47260)))) (store mapRest!21382 mapKey!21382 mapValue!21382))))

(declare-fun mapIsEmpty!21382 () Bool)

(assert (=> mapIsEmpty!21382 mapRes!21382))

(declare-fun b!4327407 () Bool)

(declare-fun repack!108 (MutLongMap!4803) tuple2!47478)

(assert (=> b!4327407 (= e!2692725 (repack!108 thiss!47260))))

(declare-fun b!4327408 () Bool)

(assert (=> b!4327408 (= e!2692725 (tuple2!47479 true thiss!47260))))

(declare-fun res!1773303 () Bool)

(assert (=> start!416768 (=> (not res!1773303) (not e!2692724))))

(assert (=> start!416768 (= res!1773303 ((_ is LongMap!4803) thiss!47260))))

(assert (=> start!416768 e!2692724))

(assert (=> start!416768 e!2692730))

(declare-fun b!4327409 () Bool)

(assert (=> b!4327409 (= e!2692728 e!2692726)))

(assert (= (and start!416768 res!1773303) b!4327405))

(assert (= (and b!4327405 res!1773304) b!4327404))

(assert (= (and b!4327404 c!736289) b!4327407))

(assert (= (and b!4327404 (not c!736289)) b!4327408))

(assert (= (and b!4327406 condMapEmpty!21382) mapIsEmpty!21382))

(assert (= (and b!4327406 (not condMapEmpty!21382)) mapNonEmpty!21382))

(assert (= b!4327403 b!4327406))

(assert (= b!4327409 b!4327403))

(assert (= b!4327402 b!4327409))

(assert (= (and start!416768 ((_ is LongMap!4803) thiss!47260)) b!4327402))

(declare-fun m!4922253 () Bool)

(assert (=> b!4327403 m!4922253))

(declare-fun m!4922255 () Bool)

(assert (=> b!4327403 m!4922255))

(declare-fun m!4922257 () Bool)

(assert (=> mapNonEmpty!21382 m!4922257))

(declare-fun m!4922259 () Bool)

(assert (=> b!4327404 m!4922259))

(declare-fun m!4922261 () Bool)

(assert (=> b!4327405 m!4922261))

(declare-fun m!4922263 () Bool)

(assert (=> b!4327407 m!4922263))

(check-sat tp_is_empty!24275 (not b_next!129841) (not b!4327407) (not mapNonEmpty!21382) (not b!4327403) (not b!4327404) b_and!340727 (not b!4327405))
(check-sat b_and!340727 (not b_next!129841))
(get-model)

(declare-fun d!1272020 () Bool)

(declare-fun valid!3823 (LongMapFixedSize!9606) Bool)

(assert (=> d!1272020 (= (valid!3822 thiss!47260) (valid!3823 (v!42992 (underlying!9818 thiss!47260))))))

(declare-fun bs!607545 () Bool)

(assert (= bs!607545 d!1272020))

(declare-fun m!4922265 () Bool)

(assert (=> bs!607545 m!4922265))

(assert (=> b!4327405 d!1272020))

(declare-fun d!1272022 () Bool)

(assert (=> d!1272022 (= (imbalanced!105 thiss!47260) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9635 (v!42992 (underlying!9818 thiss!47260))) (_vacant!4867 (v!42992 (underlying!9818 thiss!47260))))) (mask!13469 (v!42992 (underlying!9818 thiss!47260)))) (bvsgt (_vacant!4867 (v!42992 (underlying!9818 thiss!47260))) (_size!9635 (v!42992 (underlying!9818 thiss!47260))))))))

(assert (=> b!4327404 d!1272022))

(declare-fun b!4327430 () Bool)

(declare-datatypes ((tuple2!47480 0))(
  ( (tuple2!47481 (_1!27031 Bool) (_2!27031 Cell!18987)) )
))
(declare-fun e!2692746 () tuple2!47480)

(declare-datatypes ((tuple2!47482 0))(
  ( (tuple2!47483 (_1!27032 Bool) (_2!27032 LongMapFixedSize!9606)) )
))
(declare-fun lt!1544439 () tuple2!47482)

(declare-fun lt!1544440 () tuple2!47482)

(assert (=> b!4327430 (= e!2692746 (tuple2!47481 (and (_1!27032 lt!1544439) (_1!27032 lt!1544440)) (Cell!18988 (_2!27032 lt!1544440))))))

(declare-fun call!300757 () LongMapFixedSize!9606)

(declare-fun update!574 (LongMapFixedSize!9606 (_ BitVec 64) V!9956) tuple2!47482)

(assert (=> b!4327430 (= lt!1544439 (update!574 call!300757 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5080 (v!42992 (underlying!9818 thiss!47260)))))))

(declare-fun call!300756 () tuple2!47482)

(assert (=> b!4327430 (= lt!1544440 call!300756)))

(declare-fun bm!300750 () Bool)

(declare-fun call!300758 () tuple2!47482)

(assert (=> bm!300750 (= call!300758 call!300756)))

(declare-fun b!4327431 () Bool)

(declare-datatypes ((tuple3!5516 0))(
  ( (tuple3!5517 (_1!27033 Bool) (_2!27033 Cell!18987) (_3!3291 MutLongMap!4803)) )
))
(declare-fun e!2692748 () tuple3!5516)

(declare-fun lt!1544432 () tuple2!47482)

(assert (=> b!4327431 (= e!2692748 (ite (_1!27032 lt!1544432) (tuple3!5517 true (underlying!9818 thiss!47260) (LongMap!4803 (Cell!18988 (_2!27032 lt!1544432)))) (tuple3!5517 false (Cell!18988 (_2!27032 lt!1544432)) thiss!47260)))))

(declare-fun lt!1544433 () tuple2!47480)

(declare-fun repackFrom!18 (MutLongMap!4803 LongMapFixedSize!9606 (_ BitVec 32)) tuple2!47482)

(assert (=> b!4327431 (= lt!1544432 (repackFrom!18 thiss!47260 (v!42992 (_2!27031 lt!1544433)) (bvsub (size!35832 (_keys!5130 (v!42992 (underlying!9818 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun b!4327432 () Bool)

(declare-fun e!2692744 () tuple2!47480)

(declare-fun lt!1544434 () tuple2!47482)

(assert (=> b!4327432 (= e!2692744 (tuple2!47481 (_1!27032 lt!1544434) (Cell!18988 (_2!27032 lt!1544434))))))

(assert (=> b!4327432 (= lt!1544434 call!300758)))

(declare-fun b!4327433 () Bool)

(assert (=> b!4327433 (= e!2692748 (tuple3!5517 false (_2!27031 lt!1544433) thiss!47260))))

(declare-fun bm!300752 () Bool)

(declare-fun call!300755 () LongMapFixedSize!9606)

(declare-fun c!736299 () Bool)

(declare-fun c!736300 () Bool)

(assert (=> bm!300752 (= call!300756 (update!574 (ite c!736300 (_2!27032 lt!1544439) call!300755) (ite c!736300 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736299 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736300 (minValue!5080 (v!42992 (underlying!9818 thiss!47260))) (ite c!736299 (zeroValue!5080 (v!42992 (underlying!9818 thiss!47260))) (minValue!5080 (v!42992 (underlying!9818 thiss!47260)))))))))

(declare-fun b!4327434 () Bool)

(declare-fun lt!1544438 () tuple2!47482)

(assert (=> b!4327434 (= lt!1544438 call!300758)))

(declare-fun e!2692747 () tuple2!47480)

(assert (=> b!4327434 (= e!2692747 (tuple2!47481 (_1!27032 lt!1544438) (Cell!18988 (_2!27032 lt!1544438))))))

(declare-fun bm!300753 () Bool)

(assert (=> bm!300753 (= call!300755 call!300757)))

(declare-fun b!4327435 () Bool)

(declare-fun lt!1544441 () Cell!18987)

(assert (=> b!4327435 (= e!2692744 (tuple2!47481 true lt!1544441))))

(declare-fun b!4327436 () Bool)

(declare-fun e!2692743 () Bool)

(declare-fun lt!1544437 () tuple2!47478)

(declare-datatypes ((tuple2!47484 0))(
  ( (tuple2!47485 (_1!27034 (_ BitVec 64)) (_2!27034 V!9956)) )
))
(declare-datatypes ((List!48579 0))(
  ( (Nil!48455) (Cons!48455 (h!53924 tuple2!47484) (t!355489 List!48579)) )
))
(declare-datatypes ((ListLongMap!1243 0))(
  ( (ListLongMap!1244 (toList!2622 List!48579)) )
))
(declare-fun map!10507 (MutLongMap!4803) ListLongMap!1243)

(assert (=> b!4327436 (= e!2692743 (= (map!10507 (_2!27030 lt!1544437)) (map!10507 thiss!47260)))))

(declare-fun b!4327437 () Bool)

(assert (=> b!4327437 (= e!2692746 e!2692747)))

(assert (=> b!4327437 (= c!736299 (and (not (= (bvand (extraKeys!5068 (v!42992 (underlying!9818 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5068 (v!42992 (underlying!9818 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!300751 () Bool)

(declare-fun lt!1544436 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!32 ((_ BitVec 32) Int) LongMapFixedSize!9606)

(assert (=> bm!300751 (= call!300757 (getNewLongMapFixedSize!32 lt!1544436 (defaultEntry!5209 (v!42992 (underlying!9818 thiss!47260)))))))

(declare-fun d!1272024 () Bool)

(declare-fun e!2692745 () Bool)

(assert (=> d!1272024 e!2692745))

(declare-fun res!1773309 () Bool)

(assert (=> d!1272024 (=> (not res!1773309) (not e!2692745))))

(assert (=> d!1272024 (= res!1773309 ((_ is LongMap!4803) (_2!27030 lt!1544437)))))

(declare-fun lt!1544435 () tuple3!5516)

(assert (=> d!1272024 (= lt!1544437 (tuple2!47479 (_1!27033 lt!1544435) (_3!3291 lt!1544435)))))

(assert (=> d!1272024 (= lt!1544435 e!2692748)))

(declare-fun c!736298 () Bool)

(assert (=> d!1272024 (= c!736298 (not (_1!27031 lt!1544433)))))

(assert (=> d!1272024 (= lt!1544433 e!2692746)))

(assert (=> d!1272024 (= c!736300 (and (not (= (bvand (extraKeys!5068 (v!42992 (underlying!9818 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5068 (v!42992 (underlying!9818 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1272024 (= lt!1544441 (Cell!18988 (getNewLongMapFixedSize!32 lt!1544436 (defaultEntry!5209 (v!42992 (underlying!9818 thiss!47260))))))))

(declare-fun computeNewMask!18 (MutLongMap!4803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1272024 (= lt!1544436 (computeNewMask!18 thiss!47260 (mask!13469 (v!42992 (underlying!9818 thiss!47260))) (_vacant!4867 (v!42992 (underlying!9818 thiss!47260))) (_size!9635 (v!42992 (underlying!9818 thiss!47260)))))))

(assert (=> d!1272024 (valid!3822 thiss!47260)))

(assert (=> d!1272024 (= (repack!108 thiss!47260) lt!1544437)))

(declare-fun b!4327438 () Bool)

(assert (=> b!4327438 (= e!2692745 e!2692743)))

(declare-fun res!1773310 () Bool)

(assert (=> b!4327438 (=> res!1773310 e!2692743)))

(assert (=> b!4327438 (= res!1773310 (= (_1!27030 lt!1544437) false))))

(declare-fun b!4327439 () Bool)

(declare-fun c!736301 () Bool)

(assert (=> b!4327439 (= c!736301 (and (not (= (bvand (extraKeys!5068 (v!42992 (underlying!9818 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5068 (v!42992 (underlying!9818 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4327439 (= e!2692747 e!2692744)))

(assert (= (and d!1272024 c!736300) b!4327430))

(assert (= (and d!1272024 (not c!736300)) b!4327437))

(assert (= (and b!4327437 c!736299) b!4327434))

(assert (= (and b!4327437 (not c!736299)) b!4327439))

(assert (= (and b!4327439 c!736301) b!4327432))

(assert (= (and b!4327439 (not c!736301)) b!4327435))

(assert (= (or b!4327434 b!4327432) bm!300753))

(assert (= (or b!4327434 b!4327432) bm!300750))

(assert (= (or b!4327430 bm!300753) bm!300751))

(assert (= (or b!4327430 bm!300750) bm!300752))

(assert (= (and d!1272024 c!736298) b!4327433))

(assert (= (and d!1272024 (not c!736298)) b!4327431))

(assert (= (and d!1272024 res!1773309) b!4327438))

(assert (= (and b!4327438 (not res!1773310)) b!4327436))

(declare-fun m!4922267 () Bool)

(assert (=> bm!300752 m!4922267))

(declare-fun m!4922269 () Bool)

(assert (=> b!4327436 m!4922269))

(declare-fun m!4922271 () Bool)

(assert (=> b!4327436 m!4922271))

(declare-fun m!4922273 () Bool)

(assert (=> d!1272024 m!4922273))

(declare-fun m!4922275 () Bool)

(assert (=> d!1272024 m!4922275))

(assert (=> d!1272024 m!4922261))

(declare-fun m!4922277 () Bool)

(assert (=> b!4327431 m!4922277))

(declare-fun m!4922279 () Bool)

(assert (=> b!4327430 m!4922279))

(assert (=> bm!300751 m!4922273))

(assert (=> b!4327407 d!1272024))

(declare-fun d!1272026 () Bool)

(assert (=> d!1272026 (= (array_inv!5611 (_keys!5130 (v!42992 (underlying!9818 thiss!47260)))) (bvsge (size!35832 (_keys!5130 (v!42992 (underlying!9818 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327403 d!1272026))

(declare-fun d!1272028 () Bool)

(assert (=> d!1272028 (= (array_inv!5612 (_values!5104 (v!42992 (underlying!9818 thiss!47260)))) (bvsge (size!35831 (_values!5104 (v!42992 (underlying!9818 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327403 d!1272028))

(declare-fun condMapEmpty!21385 () Bool)

(declare-fun mapDefault!21385 () V!9956)

(assert (=> mapNonEmpty!21382 (= condMapEmpty!21385 (= mapRest!21382 ((as const (Array (_ BitVec 32) V!9956)) mapDefault!21385)))))

(declare-fun mapRes!21385 () Bool)

(assert (=> mapNonEmpty!21382 (= tp!1327928 (and tp_is_empty!24275 mapRes!21385))))

(declare-fun mapIsEmpty!21385 () Bool)

(assert (=> mapIsEmpty!21385 mapRes!21385))

(declare-fun mapNonEmpty!21385 () Bool)

(declare-fun tp!1327931 () Bool)

(assert (=> mapNonEmpty!21385 (= mapRes!21385 (and tp!1327931 tp_is_empty!24275))))

(declare-fun mapKey!21385 () (_ BitVec 32))

(declare-fun mapRest!21385 () (Array (_ BitVec 32) V!9956))

(declare-fun mapValue!21385 () V!9956)

(assert (=> mapNonEmpty!21385 (= mapRest!21382 (store mapRest!21385 mapKey!21385 mapValue!21385))))

(assert (= (and mapNonEmpty!21382 condMapEmpty!21385) mapIsEmpty!21385))

(assert (= (and mapNonEmpty!21382 (not condMapEmpty!21385)) mapNonEmpty!21385))

(declare-fun m!4922281 () Bool)

(assert (=> mapNonEmpty!21385 m!4922281))

(check-sat (not d!1272024) (not b!4327431) b_and!340727 (not b!4327436) tp_is_empty!24275 (not b_next!129841) (not d!1272020) (not b!4327430) (not bm!300752) (not mapNonEmpty!21385) (not bm!300751))
(check-sat b_and!340727 (not b_next!129841))
