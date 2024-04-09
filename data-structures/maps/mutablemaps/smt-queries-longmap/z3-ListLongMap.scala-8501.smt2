; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103646 () Bool)

(assert start!103646)

(declare-fun b!1241078 () Bool)

(declare-fun e!703480 () Bool)

(declare-fun tp_is_empty!31233 () Bool)

(declare-fun tp!92613 () Bool)

(assert (=> b!1241078 (= e!703480 (and tp_is_empty!31233 tp!92613))))

(declare-fun e!703481 () Bool)

(declare-datatypes ((B!1834 0))(
  ( (B!1835 (val!15679 Int)) )
))
(declare-datatypes ((tuple2!20386 0))(
  ( (tuple2!20387 (_1!10203 (_ BitVec 64)) (_2!10203 B!1834)) )
))
(declare-datatypes ((List!27508 0))(
  ( (Nil!27505) (Cons!27504 (h!28713 tuple2!20386) (t!40978 List!27508)) )
))
(declare-fun l!644 () List!27508)

(declare-fun v1!20 () B!1834)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun b!1241079 () Bool)

(declare-fun isStrictlySorted!742 (List!27508) Bool)

(declare-fun insertStrictlySorted!432 (List!27508 (_ BitVec 64) B!1834) List!27508)

(assert (=> b!1241079 (= e!703481 (not (isStrictlySorted!742 (insertStrictlySorted!432 l!644 key1!25 v1!20))))))

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun removeStrictlySorted!126 (List!27508 (_ BitVec 64)) List!27508)

(assert (=> b!1241079 (= (insertStrictlySorted!432 (removeStrictlySorted!126 (t!40978 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!126 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41199 0))(
  ( (Unit!41200) )
))
(declare-fun lt!562039 () Unit!41199)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!14 (List!27508 (_ BitVec 64) B!1834 (_ BitVec 64)) Unit!41199)

(assert (=> b!1241079 (= lt!562039 (lemmaInsertAndRemoveStrictlySortedCommutative!14 (t!40978 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1241080 () Bool)

(declare-fun res!828061 () Bool)

(assert (=> b!1241080 (=> (not res!828061) (not e!703481))))

(get-info :version)

(assert (=> b!1241080 (= res!828061 ((_ is Cons!27504) l!644))))

(declare-fun b!1241081 () Bool)

(declare-fun res!828060 () Bool)

(assert (=> b!1241081 (=> (not res!828060) (not e!703481))))

(assert (=> b!1241081 (= res!828060 (isStrictlySorted!742 l!644))))

(declare-fun b!1241082 () Bool)

(declare-fun res!828059 () Bool)

(assert (=> b!1241082 (=> (not res!828059) (not e!703481))))

(assert (=> b!1241082 (= res!828059 (isStrictlySorted!742 (t!40978 l!644)))))

(declare-fun res!828058 () Bool)

(assert (=> start!103646 (=> (not res!828058) (not e!703481))))

(assert (=> start!103646 (= res!828058 (not (= key1!25 key2!15)))))

(assert (=> start!103646 e!703481))

(assert (=> start!103646 true))

(assert (=> start!103646 e!703480))

(assert (=> start!103646 tp_is_empty!31233))

(assert (= (and start!103646 res!828058) b!1241081))

(assert (= (and b!1241081 res!828060) b!1241080))

(assert (= (and b!1241080 res!828061) b!1241082))

(assert (= (and b!1241082 res!828059) b!1241079))

(assert (= (and start!103646 ((_ is Cons!27504) l!644)) b!1241078))

(declare-fun m!1144289 () Bool)

(assert (=> b!1241079 m!1144289))

(declare-fun m!1144291 () Bool)

(assert (=> b!1241079 m!1144291))

(assert (=> b!1241079 m!1144289))

(declare-fun m!1144293 () Bool)

(assert (=> b!1241079 m!1144293))

(declare-fun m!1144295 () Bool)

(assert (=> b!1241079 m!1144295))

(assert (=> b!1241079 m!1144293))

(declare-fun m!1144297 () Bool)

(assert (=> b!1241079 m!1144297))

(declare-fun m!1144299 () Bool)

(assert (=> b!1241079 m!1144299))

(assert (=> b!1241079 m!1144297))

(declare-fun m!1144301 () Bool)

(assert (=> b!1241079 m!1144301))

(declare-fun m!1144303 () Bool)

(assert (=> b!1241081 m!1144303))

(declare-fun m!1144305 () Bool)

(assert (=> b!1241082 m!1144305))

(check-sat (not b!1241078) (not b!1241081) tp_is_empty!31233 (not b!1241082) (not b!1241079))
(check-sat)
(get-model)

(declare-fun d!136343 () Bool)

(declare-fun res!828085 () Bool)

(declare-fun e!703499 () Bool)

(assert (=> d!136343 (=> res!828085 e!703499)))

(assert (=> d!136343 (= res!828085 (or ((_ is Nil!27505) (t!40978 l!644)) ((_ is Nil!27505) (t!40978 (t!40978 l!644)))))))

(assert (=> d!136343 (= (isStrictlySorted!742 (t!40978 l!644)) e!703499)))

(declare-fun b!1241110 () Bool)

(declare-fun e!703501 () Bool)

(assert (=> b!1241110 (= e!703499 e!703501)))

(declare-fun res!828087 () Bool)

(assert (=> b!1241110 (=> (not res!828087) (not e!703501))))

(assert (=> b!1241110 (= res!828087 (bvslt (_1!10203 (h!28713 (t!40978 l!644))) (_1!10203 (h!28713 (t!40978 (t!40978 l!644))))))))

(declare-fun b!1241111 () Bool)

(assert (=> b!1241111 (= e!703501 (isStrictlySorted!742 (t!40978 (t!40978 l!644))))))

(assert (= (and d!136343 (not res!828085)) b!1241110))

(assert (= (and b!1241110 res!828087) b!1241111))

(declare-fun m!1144327 () Bool)

(assert (=> b!1241111 m!1144327))

(assert (=> b!1241082 d!136343))

(declare-fun d!136349 () Bool)

(declare-fun res!828088 () Bool)

(declare-fun e!703504 () Bool)

(assert (=> d!136349 (=> res!828088 e!703504)))

(assert (=> d!136349 (= res!828088 (or ((_ is Nil!27505) l!644) ((_ is Nil!27505) (t!40978 l!644))))))

(assert (=> d!136349 (= (isStrictlySorted!742 l!644) e!703504)))

(declare-fun b!1241116 () Bool)

(declare-fun e!703505 () Bool)

(assert (=> b!1241116 (= e!703504 e!703505)))

(declare-fun res!828089 () Bool)

(assert (=> b!1241116 (=> (not res!828089) (not e!703505))))

(assert (=> b!1241116 (= res!828089 (bvslt (_1!10203 (h!28713 l!644)) (_1!10203 (h!28713 (t!40978 l!644)))))))

(declare-fun b!1241117 () Bool)

(assert (=> b!1241117 (= e!703505 (isStrictlySorted!742 (t!40978 l!644)))))

(assert (= (and d!136349 (not res!828088)) b!1241116))

(assert (= (and b!1241116 res!828089) b!1241117))

(assert (=> b!1241117 m!1144305))

(assert (=> b!1241081 d!136349))

(declare-fun b!1241154 () Bool)

(declare-fun e!703528 () List!27508)

(assert (=> b!1241154 (= e!703528 Nil!27505)))

(declare-fun b!1241155 () Bool)

(declare-fun e!703530 () List!27508)

(assert (=> b!1241155 (= e!703530 e!703528)))

(declare-fun c!121324 () Bool)

(assert (=> b!1241155 (= c!121324 (and ((_ is Cons!27504) (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20)) (not (= (_1!10203 (h!28713 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1241156 () Bool)

(declare-fun $colon$colon!621 (List!27508 tuple2!20386) List!27508)

(assert (=> b!1241156 (= e!703528 ($colon$colon!621 (removeStrictlySorted!126 (t!40978 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20)) key2!15) (h!28713 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20))))))

(declare-fun d!136351 () Bool)

(declare-fun e!703529 () Bool)

(assert (=> d!136351 e!703529))

(declare-fun res!828098 () Bool)

(assert (=> d!136351 (=> (not res!828098) (not e!703529))))

(declare-fun lt!562051 () List!27508)

(assert (=> d!136351 (= res!828098 (isStrictlySorted!742 lt!562051))))

(assert (=> d!136351 (= lt!562051 e!703530)))

(declare-fun c!121323 () Bool)

(assert (=> d!136351 (= c!121323 (and ((_ is Cons!27504) (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20)) (= (_1!10203 (h!28713 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136351 (isStrictlySorted!742 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20))))

(assert (=> d!136351 (= (removeStrictlySorted!126 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20) key2!15) lt!562051)))

(declare-fun b!1241157 () Bool)

(declare-fun containsKey!606 (List!27508 (_ BitVec 64)) Bool)

(assert (=> b!1241157 (= e!703529 (not (containsKey!606 lt!562051 key2!15)))))

(declare-fun b!1241158 () Bool)

(assert (=> b!1241158 (= e!703530 (t!40978 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20)))))

(assert (= (and d!136351 c!121323) b!1241158))

(assert (= (and d!136351 (not c!121323)) b!1241155))

(assert (= (and b!1241155 c!121324) b!1241156))

(assert (= (and b!1241155 (not c!121324)) b!1241154))

(assert (= (and d!136351 res!828098) b!1241157))

(declare-fun m!1144349 () Bool)

(assert (=> b!1241156 m!1144349))

(assert (=> b!1241156 m!1144349))

(declare-fun m!1144351 () Bool)

(assert (=> b!1241156 m!1144351))

(declare-fun m!1144353 () Bool)

(assert (=> d!136351 m!1144353))

(assert (=> d!136351 m!1144293))

(declare-fun m!1144355 () Bool)

(assert (=> d!136351 m!1144355))

(declare-fun m!1144357 () Bool)

(assert (=> b!1241157 m!1144357))

(assert (=> b!1241079 d!136351))

(declare-fun b!1241255 () Bool)

(declare-fun e!703582 () List!27508)

(declare-fun call!61225 () List!27508)

(assert (=> b!1241255 (= e!703582 call!61225)))

(declare-fun b!1241256 () Bool)

(declare-fun e!703584 () List!27508)

(assert (=> b!1241256 (= e!703584 (insertStrictlySorted!432 (t!40978 (removeStrictlySorted!126 (t!40978 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1241257 () Bool)

(declare-fun e!703586 () List!27508)

(declare-fun call!61226 () List!27508)

(assert (=> b!1241257 (= e!703586 call!61226)))

(declare-fun bm!61222 () Bool)

(declare-fun call!61227 () List!27508)

(assert (=> bm!61222 (= call!61225 call!61227)))

(declare-fun b!1241259 () Bool)

(declare-fun res!828123 () Bool)

(declare-fun e!703585 () Bool)

(assert (=> b!1241259 (=> (not res!828123) (not e!703585))))

(declare-fun lt!562061 () List!27508)

(assert (=> b!1241259 (= res!828123 (containsKey!606 lt!562061 key1!25))))

(declare-fun c!121361 () Bool)

(declare-fun bm!61223 () Bool)

(assert (=> bm!61223 (= call!61226 ($colon$colon!621 e!703584 (ite c!121361 (h!28713 (removeStrictlySorted!126 (t!40978 l!644) key2!15)) (tuple2!20387 key1!25 v1!20))))))

(declare-fun c!121363 () Bool)

(assert (=> bm!61223 (= c!121363 c!121361)))

(declare-fun bm!61224 () Bool)

(assert (=> bm!61224 (= call!61227 call!61226)))

(declare-fun c!121364 () Bool)

(declare-fun b!1241260 () Bool)

(declare-fun c!121362 () Bool)

(assert (=> b!1241260 (= e!703584 (ite c!121364 (t!40978 (removeStrictlySorted!126 (t!40978 l!644) key2!15)) (ite c!121362 (Cons!27504 (h!28713 (removeStrictlySorted!126 (t!40978 l!644) key2!15)) (t!40978 (removeStrictlySorted!126 (t!40978 l!644) key2!15))) Nil!27505)))))

(declare-fun b!1241261 () Bool)

(assert (=> b!1241261 (= c!121362 (and ((_ is Cons!27504) (removeStrictlySorted!126 (t!40978 l!644) key2!15)) (bvsgt (_1!10203 (h!28713 (removeStrictlySorted!126 (t!40978 l!644) key2!15))) key1!25)))))

(declare-fun e!703583 () List!27508)

(assert (=> b!1241261 (= e!703583 e!703582)))

(declare-fun b!1241262 () Bool)

(assert (=> b!1241262 (= e!703582 call!61225)))

(declare-fun b!1241258 () Bool)

(assert (=> b!1241258 (= e!703583 call!61227)))

(declare-fun d!136357 () Bool)

(assert (=> d!136357 e!703585))

(declare-fun res!828124 () Bool)

(assert (=> d!136357 (=> (not res!828124) (not e!703585))))

(assert (=> d!136357 (= res!828124 (isStrictlySorted!742 lt!562061))))

(assert (=> d!136357 (= lt!562061 e!703586)))

(assert (=> d!136357 (= c!121361 (and ((_ is Cons!27504) (removeStrictlySorted!126 (t!40978 l!644) key2!15)) (bvslt (_1!10203 (h!28713 (removeStrictlySorted!126 (t!40978 l!644) key2!15))) key1!25)))))

(assert (=> d!136357 (isStrictlySorted!742 (removeStrictlySorted!126 (t!40978 l!644) key2!15))))

(assert (=> d!136357 (= (insertStrictlySorted!432 (removeStrictlySorted!126 (t!40978 l!644) key2!15) key1!25 v1!20) lt!562061)))

(declare-fun b!1241263 () Bool)

(assert (=> b!1241263 (= e!703586 e!703583)))

(assert (=> b!1241263 (= c!121364 (and ((_ is Cons!27504) (removeStrictlySorted!126 (t!40978 l!644) key2!15)) (= (_1!10203 (h!28713 (removeStrictlySorted!126 (t!40978 l!644) key2!15))) key1!25)))))

(declare-fun b!1241264 () Bool)

(declare-fun contains!7406 (List!27508 tuple2!20386) Bool)

(assert (=> b!1241264 (= e!703585 (contains!7406 lt!562061 (tuple2!20387 key1!25 v1!20)))))

(assert (= (and d!136357 c!121361) b!1241257))

(assert (= (and d!136357 (not c!121361)) b!1241263))

(assert (= (and b!1241263 c!121364) b!1241258))

(assert (= (and b!1241263 (not c!121364)) b!1241261))

(assert (= (and b!1241261 c!121362) b!1241262))

(assert (= (and b!1241261 (not c!121362)) b!1241255))

(assert (= (or b!1241262 b!1241255) bm!61222))

(assert (= (or b!1241258 bm!61222) bm!61224))

(assert (= (or b!1241257 bm!61224) bm!61223))

(assert (= (and bm!61223 c!121363) b!1241256))

(assert (= (and bm!61223 (not c!121363)) b!1241260))

(assert (= (and d!136357 res!828124) b!1241259))

(assert (= (and b!1241259 res!828123) b!1241264))

(declare-fun m!1144393 () Bool)

(assert (=> b!1241264 m!1144393))

(declare-fun m!1144395 () Bool)

(assert (=> b!1241259 m!1144395))

(declare-fun m!1144397 () Bool)

(assert (=> bm!61223 m!1144397))

(declare-fun m!1144399 () Bool)

(assert (=> b!1241256 m!1144399))

(declare-fun m!1144401 () Bool)

(assert (=> d!136357 m!1144401))

(assert (=> d!136357 m!1144297))

(declare-fun m!1144403 () Bool)

(assert (=> d!136357 m!1144403))

(assert (=> b!1241079 d!136357))

(declare-fun d!136367 () Bool)

(declare-fun res!828129 () Bool)

(declare-fun e!703594 () Bool)

(assert (=> d!136367 (=> res!828129 e!703594)))

(assert (=> d!136367 (= res!828129 (or ((_ is Nil!27505) (insertStrictlySorted!432 l!644 key1!25 v1!20)) ((_ is Nil!27505) (t!40978 (insertStrictlySorted!432 l!644 key1!25 v1!20)))))))

(assert (=> d!136367 (= (isStrictlySorted!742 (insertStrictlySorted!432 l!644 key1!25 v1!20)) e!703594)))

(declare-fun b!1241271 () Bool)

(declare-fun e!703595 () Bool)

(assert (=> b!1241271 (= e!703594 e!703595)))

(declare-fun res!828130 () Bool)

(assert (=> b!1241271 (=> (not res!828130) (not e!703595))))

(assert (=> b!1241271 (= res!828130 (bvslt (_1!10203 (h!28713 (insertStrictlySorted!432 l!644 key1!25 v1!20))) (_1!10203 (h!28713 (t!40978 (insertStrictlySorted!432 l!644 key1!25 v1!20))))))))

(declare-fun b!1241273 () Bool)

(assert (=> b!1241273 (= e!703595 (isStrictlySorted!742 (t!40978 (insertStrictlySorted!432 l!644 key1!25 v1!20))))))

(assert (= (and d!136367 (not res!828129)) b!1241271))

(assert (= (and b!1241271 res!828130) b!1241273))

(declare-fun m!1144407 () Bool)

(assert (=> b!1241273 m!1144407))

(assert (=> b!1241079 d!136367))

(declare-fun b!1241279 () Bool)

(declare-fun e!703596 () List!27508)

(declare-fun call!61231 () List!27508)

(assert (=> b!1241279 (= e!703596 call!61231)))

(declare-fun b!1241280 () Bool)

(declare-fun e!703598 () List!27508)

(assert (=> b!1241280 (= e!703598 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20))))

(declare-fun b!1241281 () Bool)

(declare-fun e!703600 () List!27508)

(declare-fun call!61232 () List!27508)

(assert (=> b!1241281 (= e!703600 call!61232)))

(declare-fun bm!61228 () Bool)

(declare-fun call!61233 () List!27508)

(assert (=> bm!61228 (= call!61231 call!61233)))

(declare-fun b!1241283 () Bool)

(declare-fun res!828131 () Bool)

(declare-fun e!703599 () Bool)

(assert (=> b!1241283 (=> (not res!828131) (not e!703599))))

(declare-fun lt!562063 () List!27508)

(assert (=> b!1241283 (= res!828131 (containsKey!606 lt!562063 key1!25))))

(declare-fun c!121369 () Bool)

(declare-fun bm!61229 () Bool)

(assert (=> bm!61229 (= call!61232 ($colon$colon!621 e!703598 (ite c!121369 (h!28713 l!644) (tuple2!20387 key1!25 v1!20))))))

(declare-fun c!121371 () Bool)

(assert (=> bm!61229 (= c!121371 c!121369)))

(declare-fun bm!61230 () Bool)

(assert (=> bm!61230 (= call!61233 call!61232)))

(declare-fun c!121372 () Bool)

(declare-fun c!121370 () Bool)

(declare-fun b!1241284 () Bool)

(assert (=> b!1241284 (= e!703598 (ite c!121372 (t!40978 l!644) (ite c!121370 (Cons!27504 (h!28713 l!644) (t!40978 l!644)) Nil!27505)))))

(declare-fun b!1241285 () Bool)

(assert (=> b!1241285 (= c!121370 (and ((_ is Cons!27504) l!644) (bvsgt (_1!10203 (h!28713 l!644)) key1!25)))))

(declare-fun e!703597 () List!27508)

(assert (=> b!1241285 (= e!703597 e!703596)))

(declare-fun b!1241286 () Bool)

(assert (=> b!1241286 (= e!703596 call!61231)))

(declare-fun b!1241282 () Bool)

(assert (=> b!1241282 (= e!703597 call!61233)))

(declare-fun d!136371 () Bool)

(assert (=> d!136371 e!703599))

(declare-fun res!828132 () Bool)

(assert (=> d!136371 (=> (not res!828132) (not e!703599))))

(assert (=> d!136371 (= res!828132 (isStrictlySorted!742 lt!562063))))

(assert (=> d!136371 (= lt!562063 e!703600)))

(assert (=> d!136371 (= c!121369 (and ((_ is Cons!27504) l!644) (bvslt (_1!10203 (h!28713 l!644)) key1!25)))))

(assert (=> d!136371 (isStrictlySorted!742 l!644)))

(assert (=> d!136371 (= (insertStrictlySorted!432 l!644 key1!25 v1!20) lt!562063)))

(declare-fun b!1241287 () Bool)

(assert (=> b!1241287 (= e!703600 e!703597)))

(assert (=> b!1241287 (= c!121372 (and ((_ is Cons!27504) l!644) (= (_1!10203 (h!28713 l!644)) key1!25)))))

(declare-fun b!1241288 () Bool)

(assert (=> b!1241288 (= e!703599 (contains!7406 lt!562063 (tuple2!20387 key1!25 v1!20)))))

(assert (= (and d!136371 c!121369) b!1241281))

(assert (= (and d!136371 (not c!121369)) b!1241287))

(assert (= (and b!1241287 c!121372) b!1241282))

(assert (= (and b!1241287 (not c!121372)) b!1241285))

(assert (= (and b!1241285 c!121370) b!1241286))

(assert (= (and b!1241285 (not c!121370)) b!1241279))

(assert (= (or b!1241286 b!1241279) bm!61228))

(assert (= (or b!1241282 bm!61228) bm!61230))

(assert (= (or b!1241281 bm!61230) bm!61229))

(assert (= (and bm!61229 c!121371) b!1241280))

(assert (= (and bm!61229 (not c!121371)) b!1241284))

(assert (= (and d!136371 res!828132) b!1241283))

(assert (= (and b!1241283 res!828131) b!1241288))

(declare-fun m!1144417 () Bool)

(assert (=> b!1241288 m!1144417))

(declare-fun m!1144419 () Bool)

(assert (=> b!1241283 m!1144419))

(declare-fun m!1144421 () Bool)

(assert (=> bm!61229 m!1144421))

(assert (=> b!1241280 m!1144293))

(declare-fun m!1144423 () Bool)

(assert (=> d!136371 m!1144423))

(assert (=> d!136371 m!1144303))

(assert (=> b!1241079 d!136371))

(declare-fun d!136375 () Bool)

(assert (=> d!136375 (= (insertStrictlySorted!432 (removeStrictlySorted!126 (t!40978 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!126 (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562074 () Unit!41199)

(declare-fun choose!1846 (List!27508 (_ BitVec 64) B!1834 (_ BitVec 64)) Unit!41199)

(assert (=> d!136375 (= lt!562074 (choose!1846 (t!40978 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136375 (not (= key1!25 key2!15))))

(assert (=> d!136375 (= (lemmaInsertAndRemoveStrictlySortedCommutative!14 (t!40978 l!644) key1!25 v1!20 key2!15) lt!562074)))

(declare-fun bs!34941 () Bool)

(assert (= bs!34941 d!136375))

(assert (=> bs!34941 m!1144293))

(assert (=> bs!34941 m!1144295))

(assert (=> bs!34941 m!1144297))

(assert (=> bs!34941 m!1144299))

(assert (=> bs!34941 m!1144293))

(assert (=> bs!34941 m!1144297))

(declare-fun m!1144447 () Bool)

(assert (=> bs!34941 m!1144447))

(assert (=> b!1241079 d!136375))

(declare-fun b!1241316 () Bool)

(declare-fun e!703616 () List!27508)

(declare-fun call!61240 () List!27508)

(assert (=> b!1241316 (= e!703616 call!61240)))

(declare-fun b!1241317 () Bool)

(declare-fun e!703618 () List!27508)

(assert (=> b!1241317 (= e!703618 (insertStrictlySorted!432 (t!40978 (t!40978 l!644)) key1!25 v1!20))))

(declare-fun b!1241318 () Bool)

(declare-fun e!703620 () List!27508)

(declare-fun call!61241 () List!27508)

(assert (=> b!1241318 (= e!703620 call!61241)))

(declare-fun bm!61237 () Bool)

(declare-fun call!61242 () List!27508)

(assert (=> bm!61237 (= call!61240 call!61242)))

(declare-fun b!1241320 () Bool)

(declare-fun res!828140 () Bool)

(declare-fun e!703619 () Bool)

(assert (=> b!1241320 (=> (not res!828140) (not e!703619))))

(declare-fun lt!562076 () List!27508)

(assert (=> b!1241320 (= res!828140 (containsKey!606 lt!562076 key1!25))))

(declare-fun c!121383 () Bool)

(declare-fun bm!61238 () Bool)

(assert (=> bm!61238 (= call!61241 ($colon$colon!621 e!703618 (ite c!121383 (h!28713 (t!40978 l!644)) (tuple2!20387 key1!25 v1!20))))))

(declare-fun c!121385 () Bool)

(assert (=> bm!61238 (= c!121385 c!121383)))

(declare-fun bm!61239 () Bool)

(assert (=> bm!61239 (= call!61242 call!61241)))

(declare-fun c!121386 () Bool)

(declare-fun b!1241321 () Bool)

(declare-fun c!121384 () Bool)

(assert (=> b!1241321 (= e!703618 (ite c!121386 (t!40978 (t!40978 l!644)) (ite c!121384 (Cons!27504 (h!28713 (t!40978 l!644)) (t!40978 (t!40978 l!644))) Nil!27505)))))

(declare-fun b!1241322 () Bool)

(assert (=> b!1241322 (= c!121384 (and ((_ is Cons!27504) (t!40978 l!644)) (bvsgt (_1!10203 (h!28713 (t!40978 l!644))) key1!25)))))

(declare-fun e!703617 () List!27508)

(assert (=> b!1241322 (= e!703617 e!703616)))

(declare-fun b!1241323 () Bool)

(assert (=> b!1241323 (= e!703616 call!61240)))

(declare-fun b!1241319 () Bool)

(assert (=> b!1241319 (= e!703617 call!61242)))

(declare-fun d!136385 () Bool)

(assert (=> d!136385 e!703619))

(declare-fun res!828141 () Bool)

(assert (=> d!136385 (=> (not res!828141) (not e!703619))))

(assert (=> d!136385 (= res!828141 (isStrictlySorted!742 lt!562076))))

(assert (=> d!136385 (= lt!562076 e!703620)))

(assert (=> d!136385 (= c!121383 (and ((_ is Cons!27504) (t!40978 l!644)) (bvslt (_1!10203 (h!28713 (t!40978 l!644))) key1!25)))))

(assert (=> d!136385 (isStrictlySorted!742 (t!40978 l!644))))

(assert (=> d!136385 (= (insertStrictlySorted!432 (t!40978 l!644) key1!25 v1!20) lt!562076)))

(declare-fun b!1241324 () Bool)

(assert (=> b!1241324 (= e!703620 e!703617)))

(assert (=> b!1241324 (= c!121386 (and ((_ is Cons!27504) (t!40978 l!644)) (= (_1!10203 (h!28713 (t!40978 l!644))) key1!25)))))

(declare-fun b!1241325 () Bool)

(assert (=> b!1241325 (= e!703619 (contains!7406 lt!562076 (tuple2!20387 key1!25 v1!20)))))

(assert (= (and d!136385 c!121383) b!1241318))

(assert (= (and d!136385 (not c!121383)) b!1241324))

(assert (= (and b!1241324 c!121386) b!1241319))

(assert (= (and b!1241324 (not c!121386)) b!1241322))

(assert (= (and b!1241322 c!121384) b!1241323))

(assert (= (and b!1241322 (not c!121384)) b!1241316))

(assert (= (or b!1241323 b!1241316) bm!61237))

(assert (= (or b!1241319 bm!61237) bm!61239))

(assert (= (or b!1241318 bm!61239) bm!61238))

(assert (= (and bm!61238 c!121385) b!1241317))

(assert (= (and bm!61238 (not c!121385)) b!1241321))

(assert (= (and d!136385 res!828141) b!1241320))

(assert (= (and b!1241320 res!828140) b!1241325))

(declare-fun m!1144461 () Bool)

(assert (=> b!1241325 m!1144461))

(declare-fun m!1144463 () Bool)

(assert (=> b!1241320 m!1144463))

(declare-fun m!1144465 () Bool)

(assert (=> bm!61238 m!1144465))

(declare-fun m!1144467 () Bool)

(assert (=> b!1241317 m!1144467))

(declare-fun m!1144469 () Bool)

(assert (=> d!136385 m!1144469))

(assert (=> d!136385 m!1144305))

(assert (=> b!1241079 d!136385))

(declare-fun b!1241338 () Bool)

(declare-fun e!703629 () List!27508)

(assert (=> b!1241338 (= e!703629 Nil!27505)))

(declare-fun b!1241339 () Bool)

(declare-fun e!703631 () List!27508)

(assert (=> b!1241339 (= e!703631 e!703629)))

(declare-fun c!121390 () Bool)

(assert (=> b!1241339 (= c!121390 (and ((_ is Cons!27504) (t!40978 l!644)) (not (= (_1!10203 (h!28713 (t!40978 l!644))) key2!15))))))

(declare-fun b!1241340 () Bool)

(assert (=> b!1241340 (= e!703629 ($colon$colon!621 (removeStrictlySorted!126 (t!40978 (t!40978 l!644)) key2!15) (h!28713 (t!40978 l!644))))))

(declare-fun d!136391 () Bool)

(declare-fun e!703630 () Bool)

(assert (=> d!136391 e!703630))

(declare-fun res!828145 () Bool)

(assert (=> d!136391 (=> (not res!828145) (not e!703630))))

(declare-fun lt!562078 () List!27508)

(assert (=> d!136391 (= res!828145 (isStrictlySorted!742 lt!562078))))

(assert (=> d!136391 (= lt!562078 e!703631)))

(declare-fun c!121389 () Bool)

(assert (=> d!136391 (= c!121389 (and ((_ is Cons!27504) (t!40978 l!644)) (= (_1!10203 (h!28713 (t!40978 l!644))) key2!15)))))

(assert (=> d!136391 (isStrictlySorted!742 (t!40978 l!644))))

(assert (=> d!136391 (= (removeStrictlySorted!126 (t!40978 l!644) key2!15) lt!562078)))

(declare-fun b!1241341 () Bool)

(assert (=> b!1241341 (= e!703630 (not (containsKey!606 lt!562078 key2!15)))))

(declare-fun b!1241342 () Bool)

(assert (=> b!1241342 (= e!703631 (t!40978 (t!40978 l!644)))))

(assert (= (and d!136391 c!121389) b!1241342))

(assert (= (and d!136391 (not c!121389)) b!1241339))

(assert (= (and b!1241339 c!121390) b!1241340))

(assert (= (and b!1241339 (not c!121390)) b!1241338))

(assert (= (and d!136391 res!828145) b!1241341))

(declare-fun m!1144479 () Bool)

(assert (=> b!1241340 m!1144479))

(assert (=> b!1241340 m!1144479))

(declare-fun m!1144481 () Bool)

(assert (=> b!1241340 m!1144481))

(declare-fun m!1144483 () Bool)

(assert (=> d!136391 m!1144483))

(assert (=> d!136391 m!1144305))

(declare-fun m!1144485 () Bool)

(assert (=> b!1241341 m!1144485))

(assert (=> b!1241079 d!136391))

(declare-fun b!1241352 () Bool)

(declare-fun e!703637 () Bool)

(declare-fun tp!92625 () Bool)

(assert (=> b!1241352 (= e!703637 (and tp_is_empty!31233 tp!92625))))

(assert (=> b!1241078 (= tp!92613 e!703637)))

(assert (= (and b!1241078 ((_ is Cons!27504) (t!40978 l!644))) b!1241352))

(check-sat (not d!136357) (not b!1241340) (not bm!61223) (not b!1241273) (not b!1241157) (not b!1241117) (not bm!61238) (not d!136391) (not d!136351) (not d!136371) (not b!1241259) (not b!1241111) (not bm!61229) (not b!1241341) (not b!1241320) (not b!1241264) (not d!136375) (not b!1241352) (not b!1241156) tp_is_empty!31233 (not b!1241256) (not b!1241283) (not b!1241317) (not d!136385) (not b!1241325) (not b!1241288) (not b!1241280))
(check-sat)
