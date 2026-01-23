; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416740 () Bool)

(assert start!416740)

(declare-fun b!4327246 () Bool)

(declare-fun b_free!129129 () Bool)

(declare-fun b_next!129833 () Bool)

(assert (=> b!4327246 (= b_free!129129 (not b_next!129833))))

(declare-fun tp!1327897 () Bool)

(declare-fun b_and!340719 () Bool)

(assert (=> b!4327246 (= tp!1327897 b_and!340719)))

(declare-fun b!4327243 () Bool)

(declare-fun e!2692610 () Bool)

(declare-fun tp_is_empty!24267 () Bool)

(declare-fun mapRes!21364 () Bool)

(assert (=> b!4327243 (= e!2692610 (and tp_is_empty!24267 mapRes!21364))))

(declare-fun condMapEmpty!21364 () Bool)

(declare-datatypes ((V!9946 0))(
  ( (V!9947 (val!16040 Int)) )
))
(declare-datatypes ((array!17440 0))(
  ( (array!17441 (arr!7783 (Array (_ BitVec 32) V!9946)) (size!35823 (_ BitVec 32))) )
))
(declare-datatypes ((array!17442 0))(
  ( (array!17443 (arr!7784 (Array (_ BitVec 32) (_ BitVec 64))) (size!35824 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9598 0))(
  ( (LongMapFixedSize!9599 (defaultEntry!5205 Int) (mask!13463 (_ BitVec 32)) (extraKeys!5064 (_ BitVec 32)) (zeroValue!5076 V!9946) (minValue!5076 V!9946) (_size!9631 (_ BitVec 32)) (_keys!5126 array!17442) (_values!5100 array!17440) (_vacant!4863 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18979 0))(
  ( (Cell!18980 (v!42970 LongMapFixedSize!9598)) )
))
(declare-datatypes ((MutLongMap!4799 0))(
  ( (LongMap!4799 (underlying!9814 Cell!18979)) (MutLongMapExt!4798 (__x!30396 Int)) )
))
(declare-fun thiss!47260 () MutLongMap!4799)

(declare-fun mapDefault!21364 () V!9946)

(assert (=> b!4327243 (= condMapEmpty!21364 (= (arr!7783 (_values!5100 (v!42970 (underlying!9814 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9946)) mapDefault!21364)))))

(declare-fun b!4327244 () Bool)

(declare-fun e!2692609 () Bool)

(declare-fun e!2692605 () Bool)

(assert (=> b!4327244 (= e!2692609 e!2692605)))

(declare-fun mapIsEmpty!21364 () Bool)

(assert (=> mapIsEmpty!21364 mapRes!21364))

(declare-fun res!1773266 () Bool)

(declare-fun e!2692606 () Bool)

(assert (=> start!416740 (=> (not res!1773266) (not e!2692606))))

(get-info :version)

(assert (=> start!416740 (= res!1773266 ((_ is LongMap!4799) thiss!47260))))

(assert (=> start!416740 e!2692606))

(declare-fun e!2692608 () Bool)

(assert (=> start!416740 e!2692608))

(declare-fun b!4327245 () Bool)

(declare-fun res!1773268 () Bool)

(assert (=> b!4327245 (=> (not res!1773268) (not e!2692606))))

(declare-fun imbalanced!103 (MutLongMap!4799) Bool)

(assert (=> b!4327245 (= res!1773268 (imbalanced!103 thiss!47260))))

(declare-fun array_inv!5607 (array!17442) Bool)

(declare-fun array_inv!5608 (array!17440) Bool)

(assert (=> b!4327246 (= e!2692605 (and tp!1327897 tp_is_empty!24267 (array_inv!5607 (_keys!5126 (v!42970 (underlying!9814 thiss!47260)))) (array_inv!5608 (_values!5100 (v!42970 (underlying!9814 thiss!47260)))) e!2692610))))

(declare-fun b!4327247 () Bool)

(declare-fun res!1773267 () Bool)

(assert (=> b!4327247 (=> (not res!1773267) (not e!2692606))))

(declare-fun valid!3817 (MutLongMap!4799) Bool)

(assert (=> b!4327247 (= res!1773267 (valid!3817 thiss!47260))))

(declare-fun mapNonEmpty!21364 () Bool)

(declare-fun tp!1327898 () Bool)

(assert (=> mapNonEmpty!21364 (= mapRes!21364 (and tp!1327898 tp_is_empty!24267))))

(declare-fun mapValue!21364 () V!9946)

(declare-fun mapKey!21364 () (_ BitVec 32))

(declare-fun mapRest!21364 () (Array (_ BitVec 32) V!9946))

(assert (=> mapNonEmpty!21364 (= (arr!7783 (_values!5100 (v!42970 (underlying!9814 thiss!47260)))) (store mapRest!21364 mapKey!21364 mapValue!21364))))

(declare-fun b!4327248 () Bool)

(declare-datatypes ((tuple2!47458 0))(
  ( (tuple2!47459 (_1!27018 Bool) (_2!27018 MutLongMap!4799)) )
))
(declare-fun repack!105 (MutLongMap!4799) tuple2!47458)

(assert (=> b!4327248 (= e!2692606 (not ((_ is LongMap!4799) (_2!27018 (repack!105 thiss!47260)))))))

(declare-fun b!4327249 () Bool)

(assert (=> b!4327249 (= e!2692608 e!2692609)))

(assert (= (and start!416740 res!1773266) b!4327247))

(assert (= (and b!4327247 res!1773267) b!4327245))

(assert (= (and b!4327245 res!1773268) b!4327248))

(assert (= (and b!4327243 condMapEmpty!21364) mapIsEmpty!21364))

(assert (= (and b!4327243 (not condMapEmpty!21364)) mapNonEmpty!21364))

(assert (= b!4327246 b!4327243))

(assert (= b!4327244 b!4327246))

(assert (= b!4327249 b!4327244))

(assert (= (and start!416740 ((_ is LongMap!4799) thiss!47260)) b!4327249))

(declare-fun m!4922169 () Bool)

(assert (=> b!4327247 m!4922169))

(declare-fun m!4922171 () Bool)

(assert (=> mapNonEmpty!21364 m!4922171))

(declare-fun m!4922173 () Bool)

(assert (=> b!4327248 m!4922173))

(declare-fun m!4922175 () Bool)

(assert (=> b!4327245 m!4922175))

(declare-fun m!4922177 () Bool)

(assert (=> b!4327246 m!4922177))

(declare-fun m!4922179 () Bool)

(assert (=> b!4327246 m!4922179))

(check-sat (not b!4327245) tp_is_empty!24267 (not b!4327246) (not b_next!129833) (not b!4327247) b_and!340719 (not b!4327248) (not mapNonEmpty!21364))
(check-sat b_and!340719 (not b_next!129833))
(get-model)

(declare-fun b!4327270 () Bool)

(declare-datatypes ((tuple2!47460 0))(
  ( (tuple2!47461 (_1!27019 Bool) (_2!27019 LongMapFixedSize!9598)) )
))
(declare-fun lt!1544369 () tuple2!47460)

(declare-fun call!300731 () tuple2!47460)

(assert (=> b!4327270 (= lt!1544369 call!300731)))

(declare-datatypes ((tuple2!47462 0))(
  ( (tuple2!47463 (_1!27020 Bool) (_2!27020 Cell!18979)) )
))
(declare-fun e!2692624 () tuple2!47462)

(assert (=> b!4327270 (= e!2692624 (tuple2!47463 (_1!27019 lt!1544369) (Cell!18980 (_2!27019 lt!1544369))))))

(declare-fun b!4327271 () Bool)

(declare-fun e!2692623 () tuple2!47462)

(declare-fun lt!1544374 () tuple2!47460)

(assert (=> b!4327271 (= e!2692623 (tuple2!47463 (_1!27019 lt!1544374) (Cell!18980 (_2!27019 lt!1544374))))))

(assert (=> b!4327271 (= lt!1544374 call!300731)))

(declare-fun b!4327272 () Bool)

(declare-fun e!2692626 () Bool)

(declare-fun lt!1544372 () tuple2!47458)

(declare-datatypes ((tuple2!47464 0))(
  ( (tuple2!47465 (_1!27021 (_ BitVec 64)) (_2!27021 V!9946)) )
))
(declare-datatypes ((List!48577 0))(
  ( (Nil!48453) (Cons!48453 (h!53922 tuple2!47464) (t!355487 List!48577)) )
))
(declare-datatypes ((ListLongMap!1239 0))(
  ( (ListLongMap!1240 (toList!2620 List!48577)) )
))
(declare-fun map!10503 (MutLongMap!4799) ListLongMap!1239)

(assert (=> b!4327272 (= e!2692626 (= (map!10503 (_2!27018 lt!1544372)) (map!10503 thiss!47260)))))

(declare-fun b!4327273 () Bool)

(declare-fun c!736265 () Bool)

(assert (=> b!4327273 (= c!736265 (and (not (= (bvand (extraKeys!5064 (v!42970 (underlying!9814 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5064 (v!42970 (underlying!9814 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4327273 (= e!2692624 e!2692623)))

(declare-fun b!4327274 () Bool)

(declare-fun e!2692628 () tuple2!47462)

(declare-fun lt!1544366 () tuple2!47460)

(declare-fun lt!1544373 () tuple2!47460)

(assert (=> b!4327274 (= e!2692628 (tuple2!47463 (and (_1!27019 lt!1544366) (_1!27019 lt!1544373)) (Cell!18980 (_2!27019 lt!1544373))))))

(declare-fun call!300733 () LongMapFixedSize!9598)

(declare-fun update!572 (LongMapFixedSize!9598 (_ BitVec 64) V!9946) tuple2!47460)

(assert (=> b!4327274 (= lt!1544366 (update!572 call!300733 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5076 (v!42970 (underlying!9814 thiss!47260)))))))

(declare-fun call!300734 () tuple2!47460)

(assert (=> b!4327274 (= lt!1544373 call!300734)))

(declare-fun bm!300726 () Bool)

(declare-fun call!300732 () LongMapFixedSize!9598)

(assert (=> bm!300726 (= call!300732 call!300733)))

(declare-fun bm!300727 () Bool)

(assert (=> bm!300727 (= call!300731 call!300734)))

(declare-fun b!4327275 () Bool)

(declare-fun e!2692625 () Bool)

(assert (=> b!4327275 (= e!2692625 e!2692626)))

(declare-fun res!1773273 () Bool)

(assert (=> b!4327275 (=> res!1773273 e!2692626)))

(assert (=> b!4327275 (= res!1773273 (= (_1!27018 lt!1544372) false))))

(declare-fun b!4327276 () Bool)

(assert (=> b!4327276 (= e!2692628 e!2692624)))

(declare-fun c!736264 () Bool)

(assert (=> b!4327276 (= c!736264 (and (not (= (bvand (extraKeys!5064 (v!42970 (underlying!9814 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5064 (v!42970 (underlying!9814 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4327277 () Bool)

(declare-fun lt!1544367 () Cell!18979)

(assert (=> b!4327277 (= e!2692623 (tuple2!47463 true lt!1544367))))

(declare-fun b!4327278 () Bool)

(declare-datatypes ((tuple3!5512 0))(
  ( (tuple3!5513 (_1!27022 Bool) (_2!27022 Cell!18979) (_3!3289 MutLongMap!4799)) )
))
(declare-fun e!2692627 () tuple3!5512)

(declare-fun lt!1544368 () tuple2!47462)

(assert (=> b!4327278 (= e!2692627 (tuple3!5513 false (_2!27020 lt!1544368) thiss!47260))))

(declare-fun bm!300728 () Bool)

(declare-fun lt!1544371 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!30 ((_ BitVec 32) Int) LongMapFixedSize!9598)

(assert (=> bm!300728 (= call!300733 (getNewLongMapFixedSize!30 lt!1544371 (defaultEntry!5205 (v!42970 (underlying!9814 thiss!47260)))))))

(declare-fun b!4327279 () Bool)

(declare-fun lt!1544375 () tuple2!47460)

(assert (=> b!4327279 (= e!2692627 (ite (_1!27019 lt!1544375) (tuple3!5513 true (underlying!9814 thiss!47260) (LongMap!4799 (Cell!18980 (_2!27019 lt!1544375)))) (tuple3!5513 false (Cell!18980 (_2!27019 lt!1544375)) thiss!47260)))))

(declare-fun repackFrom!16 (MutLongMap!4799 LongMapFixedSize!9598 (_ BitVec 32)) tuple2!47460)

(assert (=> b!4327279 (= lt!1544375 (repackFrom!16 thiss!47260 (v!42970 (_2!27020 lt!1544368)) (bvsub (size!35824 (_keys!5126 (v!42970 (underlying!9814 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun d!1271998 () Bool)

(assert (=> d!1271998 e!2692625))

(declare-fun res!1773274 () Bool)

(assert (=> d!1271998 (=> (not res!1773274) (not e!2692625))))

(assert (=> d!1271998 (= res!1773274 ((_ is LongMap!4799) (_2!27018 lt!1544372)))))

(declare-fun lt!1544370 () tuple3!5512)

(assert (=> d!1271998 (= lt!1544372 (tuple2!47459 (_1!27022 lt!1544370) (_3!3289 lt!1544370)))))

(assert (=> d!1271998 (= lt!1544370 e!2692627)))

(declare-fun c!736263 () Bool)

(assert (=> d!1271998 (= c!736263 (not (_1!27020 lt!1544368)))))

(assert (=> d!1271998 (= lt!1544368 e!2692628)))

(declare-fun c!736262 () Bool)

(assert (=> d!1271998 (= c!736262 (and (not (= (bvand (extraKeys!5064 (v!42970 (underlying!9814 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5064 (v!42970 (underlying!9814 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1271998 (= lt!1544367 (Cell!18980 (getNewLongMapFixedSize!30 lt!1544371 (defaultEntry!5205 (v!42970 (underlying!9814 thiss!47260))))))))

(declare-fun computeNewMask!16 (MutLongMap!4799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1271998 (= lt!1544371 (computeNewMask!16 thiss!47260 (mask!13463 (v!42970 (underlying!9814 thiss!47260))) (_vacant!4863 (v!42970 (underlying!9814 thiss!47260))) (_size!9631 (v!42970 (underlying!9814 thiss!47260)))))))

(assert (=> d!1271998 (valid!3817 thiss!47260)))

(assert (=> d!1271998 (= (repack!105 thiss!47260) lt!1544372)))

(declare-fun bm!300729 () Bool)

(assert (=> bm!300729 (= call!300734 (update!572 (ite c!736262 (_2!27019 lt!1544366) call!300732) (ite c!736262 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736264 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736262 (minValue!5076 (v!42970 (underlying!9814 thiss!47260))) (ite c!736264 (zeroValue!5076 (v!42970 (underlying!9814 thiss!47260))) (minValue!5076 (v!42970 (underlying!9814 thiss!47260)))))))))

(assert (= (and d!1271998 c!736262) b!4327274))

(assert (= (and d!1271998 (not c!736262)) b!4327276))

(assert (= (and b!4327276 c!736264) b!4327270))

(assert (= (and b!4327276 (not c!736264)) b!4327273))

(assert (= (and b!4327273 c!736265) b!4327271))

(assert (= (and b!4327273 (not c!736265)) b!4327277))

(assert (= (or b!4327270 b!4327271) bm!300726))

(assert (= (or b!4327270 b!4327271) bm!300727))

(assert (= (or b!4327274 bm!300726) bm!300728))

(assert (= (or b!4327274 bm!300727) bm!300729))

(assert (= (and d!1271998 c!736263) b!4327278))

(assert (= (and d!1271998 (not c!736263)) b!4327279))

(assert (= (and d!1271998 res!1773274) b!4327275))

(assert (= (and b!4327275 (not res!1773273)) b!4327272))

(declare-fun m!4922181 () Bool)

(assert (=> bm!300728 m!4922181))

(declare-fun m!4922183 () Bool)

(assert (=> b!4327279 m!4922183))

(assert (=> d!1271998 m!4922181))

(declare-fun m!4922185 () Bool)

(assert (=> d!1271998 m!4922185))

(assert (=> d!1271998 m!4922169))

(declare-fun m!4922187 () Bool)

(assert (=> b!4327274 m!4922187))

(declare-fun m!4922189 () Bool)

(assert (=> bm!300729 m!4922189))

(declare-fun m!4922191 () Bool)

(assert (=> b!4327272 m!4922191))

(declare-fun m!4922193 () Bool)

(assert (=> b!4327272 m!4922193))

(assert (=> b!4327248 d!1271998))

(declare-fun d!1272000 () Bool)

(assert (=> d!1272000 (= (imbalanced!103 thiss!47260) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9631 (v!42970 (underlying!9814 thiss!47260))) (_vacant!4863 (v!42970 (underlying!9814 thiss!47260))))) (mask!13463 (v!42970 (underlying!9814 thiss!47260)))) (bvsgt (_vacant!4863 (v!42970 (underlying!9814 thiss!47260))) (_size!9631 (v!42970 (underlying!9814 thiss!47260))))))))

(assert (=> b!4327245 d!1272000))

(declare-fun d!1272002 () Bool)

(assert (=> d!1272002 (= (array_inv!5607 (_keys!5126 (v!42970 (underlying!9814 thiss!47260)))) (bvsge (size!35824 (_keys!5126 (v!42970 (underlying!9814 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327246 d!1272002))

(declare-fun d!1272004 () Bool)

(assert (=> d!1272004 (= (array_inv!5608 (_values!5100 (v!42970 (underlying!9814 thiss!47260)))) (bvsge (size!35823 (_values!5100 (v!42970 (underlying!9814 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327246 d!1272004))

(declare-fun d!1272006 () Bool)

(declare-fun valid!3818 (LongMapFixedSize!9598) Bool)

(assert (=> d!1272006 (= (valid!3817 thiss!47260) (valid!3818 (v!42970 (underlying!9814 thiss!47260))))))

(declare-fun bs!607539 () Bool)

(assert (= bs!607539 d!1272006))

(declare-fun m!4922195 () Bool)

(assert (=> bs!607539 m!4922195))

(assert (=> b!4327247 d!1272006))

(declare-fun condMapEmpty!21367 () Bool)

(declare-fun mapDefault!21367 () V!9946)

(assert (=> mapNonEmpty!21364 (= condMapEmpty!21367 (= mapRest!21364 ((as const (Array (_ BitVec 32) V!9946)) mapDefault!21367)))))

(declare-fun mapRes!21367 () Bool)

(assert (=> mapNonEmpty!21364 (= tp!1327898 (and tp_is_empty!24267 mapRes!21367))))

(declare-fun mapIsEmpty!21367 () Bool)

(assert (=> mapIsEmpty!21367 mapRes!21367))

(declare-fun mapNonEmpty!21367 () Bool)

(declare-fun tp!1327901 () Bool)

(assert (=> mapNonEmpty!21367 (= mapRes!21367 (and tp!1327901 tp_is_empty!24267))))

(declare-fun mapRest!21367 () (Array (_ BitVec 32) V!9946))

(declare-fun mapKey!21367 () (_ BitVec 32))

(declare-fun mapValue!21367 () V!9946)

(assert (=> mapNonEmpty!21367 (= mapRest!21364 (store mapRest!21367 mapKey!21367 mapValue!21367))))

(assert (= (and mapNonEmpty!21364 condMapEmpty!21367) mapIsEmpty!21367))

(assert (= (and mapNonEmpty!21364 (not condMapEmpty!21367)) mapNonEmpty!21367))

(declare-fun m!4922197 () Bool)

(assert (=> mapNonEmpty!21367 m!4922197))

(check-sat (not bm!300729) tp_is_empty!24267 (not b_next!129833) (not b!4327279) (not bm!300728) (not d!1271998) (not mapNonEmpty!21367) (not b!4327272) b_and!340719 (not b!4327274) (not d!1272006))
(check-sat b_and!340719 (not b_next!129833))
