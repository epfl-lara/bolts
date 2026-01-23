; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216944 () Bool)

(assert start!216944)

(declare-fun b!2223242 () Bool)

(declare-fun b_free!64405 () Bool)

(declare-fun b_next!65109 () Bool)

(assert (=> b!2223242 (= b_free!64405 (not b_next!65109))))

(declare-fun tp!693570 () Bool)

(declare-fun b_and!174389 () Bool)

(assert (=> b!2223242 (= tp!693570 b_and!174389)))

(declare-fun b!2223254 () Bool)

(declare-fun b_free!64407 () Bool)

(declare-fun b_next!65111 () Bool)

(assert (=> b!2223254 (= b_free!64407 (not b_next!65111))))

(declare-fun tp!693573 () Bool)

(declare-fun b_and!174391 () Bool)

(assert (=> b!2223254 (= tp!693573 b_and!174391)))

(declare-fun b!2223240 () Bool)

(declare-fun b_free!64409 () Bool)

(declare-fun b_next!65113 () Bool)

(assert (=> b!2223240 (= b_free!64409 (not b_next!65113))))

(declare-fun tp!693577 () Bool)

(declare-fun b_and!174393 () Bool)

(assert (=> b!2223240 (= tp!693577 b_and!174393)))

(declare-fun b!2223251 () Bool)

(declare-fun b_free!64411 () Bool)

(declare-fun b_next!65115 () Bool)

(assert (=> b!2223251 (= b_free!64411 (not b_next!65115))))

(declare-fun tp!693574 () Bool)

(declare-fun b_and!174395 () Bool)

(assert (=> b!2223251 (= tp!693574 b_and!174395)))

(declare-fun b!2223238 () Bool)

(declare-fun e!1420324 () Bool)

(declare-fun e!1420313 () Bool)

(assert (=> b!2223238 (= e!1420324 e!1420313)))

(declare-fun mapIsEmpty!14098 () Bool)

(declare-fun mapRes!14098 () Bool)

(assert (=> mapIsEmpty!14098 mapRes!14098))

(declare-fun b!2223239 () Bool)

(declare-fun res!953944 () Bool)

(declare-fun e!1420315 () Bool)

(assert (=> b!2223239 (=> (not res!953944) (not e!1420315))))

(declare-datatypes ((C!12848 0))(
  ( (C!12849 (val!7472 Int)) )
))
(declare-datatypes ((Regex!6351 0))(
  ( (ElementMatch!6351 (c!354990 C!12848)) (Concat!10689 (regOne!13214 Regex!6351) (regTwo!13214 Regex!6351)) (EmptyExpr!6351) (Star!6351 (reg!6680 Regex!6351)) (EmptyLang!6351) (Union!6351 (regOne!13215 Regex!6351) (regTwo!13215 Regex!6351)) )
))
(declare-datatypes ((List!26164 0))(
  ( (Nil!26070) (Cons!26070 (h!31471 Regex!6351) (t!199574 List!26164)) )
))
(declare-datatypes ((Context!3798 0))(
  ( (Context!3799 (exprs!2399 List!26164)) )
))
(declare-fun context!72 () Context!3798)

(get-info :version)

(assert (=> b!2223239 (= res!953944 ((_ is Cons!26070) (exprs!2399 context!72)))))

(declare-fun b!2223241 () Bool)

(declare-fun e!1420318 () Bool)

(declare-fun e!1420321 () Bool)

(assert (=> b!2223241 (= e!1420318 e!1420321)))

(declare-fun tp!693565 () Bool)

(declare-datatypes ((array!10250 0))(
  ( (array!10251 (arr!4563 (Array (_ BitVec 32) (_ BitVec 64))) (size!20343 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25274 0))(
  ( (tuple2!25275 (_1!15018 Context!3798) (_2!15018 C!12848)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25276 0))(
  ( (tuple2!25277 (_1!15019 tuple2!25274) (_2!15019 (InoxSet Context!3798))) )
))
(declare-datatypes ((List!26165 0))(
  ( (Nil!26071) (Cons!26071 (h!31472 tuple2!25276) (t!199575 List!26165)) )
))
(declare-datatypes ((array!10252 0))(
  ( (array!10253 (arr!4564 (Array (_ BitVec 32) List!26165)) (size!20344 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5974 0))(
  ( (LongMapFixedSize!5975 (defaultEntry!3352 Int) (mask!7516 (_ BitVec 32)) (extraKeys!3235 (_ BitVec 32)) (zeroValue!3245 List!26165) (minValue!3245 List!26165) (_size!6021 (_ BitVec 32)) (_keys!3284 array!10250) (_values!3267 array!10252) (_vacant!3048 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11765 0))(
  ( (Cell!11766 (v!29624 LongMapFixedSize!5974)) )
))
(declare-datatypes ((MutLongMap!2987 0))(
  ( (LongMap!2987 (underlying!6175 Cell!11765)) (MutLongMapExt!2986 (__x!17187 Int)) )
))
(declare-datatypes ((Cell!11767 0))(
  ( (Cell!11768 (v!29625 MutLongMap!2987)) )
))
(declare-datatypes ((Hashable!2897 0))(
  ( (HashableExt!2896 (__x!17188 Int)) )
))
(declare-datatypes ((MutableMap!2897 0))(
  ( (MutableMapExt!2896 (__x!17189 Int)) (HashMap!2897 (underlying!6176 Cell!11767) (hashF!4820 Hashable!2897) (_size!6022 (_ BitVec 32)) (defaultValue!3059 Int)) )
))
(declare-datatypes ((CacheUp!1920 0))(
  ( (CacheUp!1921 (cache!3278 MutableMap!2897)) )
))
(declare-fun cacheUp!790 () CacheUp!1920)

(declare-fun e!1420320 () Bool)

(declare-fun tp!693576 () Bool)

(declare-fun e!1420311 () Bool)

(declare-fun array_inv!3281 (array!10250) Bool)

(declare-fun array_inv!3282 (array!10252) Bool)

(assert (=> b!2223242 (= e!1420311 (and tp!693570 tp!693565 tp!693576 (array_inv!3281 (_keys!3284 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) (array_inv!3282 (_values!3267 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) e!1420320))))

(declare-fun b!2223243 () Bool)

(declare-fun e!1420308 () Bool)

(declare-fun e!1420312 () Bool)

(assert (=> b!2223243 (= e!1420308 e!1420312)))

(declare-fun b!2223244 () Bool)

(declare-fun res!953943 () Bool)

(assert (=> b!2223244 (=> (not res!953943) (not e!1420315))))

(declare-fun nullable!1730 (Regex!6351) Bool)

(assert (=> b!2223244 (= res!953943 (nullable!1730 (h!31471 (exprs!2399 context!72))))))

(declare-fun mapIsEmpty!14099 () Bool)

(declare-fun mapRes!14099 () Bool)

(assert (=> mapIsEmpty!14099 mapRes!14099))

(declare-fun b!2223245 () Bool)

(declare-fun e!1420316 () Bool)

(declare-fun tp!693571 () Bool)

(assert (=> b!2223245 (= e!1420316 (and tp!693571 mapRes!14099))))

(declare-fun condMapEmpty!14099 () Bool)

(declare-datatypes ((tuple3!3822 0))(
  ( (tuple3!3823 (_1!15020 Regex!6351) (_2!15020 Context!3798) (_3!2381 C!12848)) )
))
(declare-datatypes ((tuple2!25278 0))(
  ( (tuple2!25279 (_1!15021 tuple3!3822) (_2!15021 (InoxSet Context!3798))) )
))
(declare-datatypes ((List!26166 0))(
  ( (Nil!26072) (Cons!26072 (h!31473 tuple2!25278) (t!199576 List!26166)) )
))
(declare-datatypes ((array!10254 0))(
  ( (array!10255 (arr!4565 (Array (_ BitVec 32) List!26166)) (size!20345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5976 0))(
  ( (LongMapFixedSize!5977 (defaultEntry!3353 Int) (mask!7517 (_ BitVec 32)) (extraKeys!3236 (_ BitVec 32)) (zeroValue!3246 List!26166) (minValue!3246 List!26166) (_size!6023 (_ BitVec 32)) (_keys!3285 array!10250) (_values!3268 array!10254) (_vacant!3049 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11769 0))(
  ( (Cell!11770 (v!29626 LongMapFixedSize!5976)) )
))
(declare-datatypes ((MutLongMap!2988 0))(
  ( (LongMap!2988 (underlying!6177 Cell!11769)) (MutLongMapExt!2987 (__x!17190 Int)) )
))
(declare-datatypes ((Cell!11771 0))(
  ( (Cell!11772 (v!29627 MutLongMap!2988)) )
))
(declare-datatypes ((Hashable!2898 0))(
  ( (HashableExt!2897 (__x!17191 Int)) )
))
(declare-datatypes ((MutableMap!2898 0))(
  ( (MutableMapExt!2897 (__x!17192 Int)) (HashMap!2898 (underlying!6178 Cell!11771) (hashF!4821 Hashable!2898) (_size!6024 (_ BitVec 32)) (defaultValue!3060 Int)) )
))
(declare-datatypes ((CacheDown!1894 0))(
  ( (CacheDown!1895 (cache!3279 MutableMap!2898)) )
))
(declare-fun cacheDown!803 () CacheDown!1894)

(declare-fun mapDefault!14099 () List!26166)

(assert (=> b!2223245 (= condMapEmpty!14099 (= (arr!4565 (_values!3268 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) ((as const (Array (_ BitVec 32) List!26166)) mapDefault!14099)))))

(declare-fun b!2223246 () Bool)

(declare-fun e!1420319 () Bool)

(declare-fun lt!828812 () MutLongMap!2988)

(assert (=> b!2223246 (= e!1420319 (and e!1420318 ((_ is LongMap!2988) lt!828812)))))

(assert (=> b!2223246 (= lt!828812 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))

(declare-fun b!2223247 () Bool)

(declare-fun tp!693563 () Bool)

(assert (=> b!2223247 (= e!1420320 (and tp!693563 mapRes!14098))))

(declare-fun condMapEmpty!14098 () Bool)

(declare-fun mapDefault!14098 () List!26165)

(assert (=> b!2223247 (= condMapEmpty!14098 (= (arr!4564 (_values!3267 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26165)) mapDefault!14098)))))

(declare-fun mapNonEmpty!14098 () Bool)

(declare-fun tp!693566 () Bool)

(declare-fun tp!693568 () Bool)

(assert (=> mapNonEmpty!14098 (= mapRes!14099 (and tp!693566 tp!693568))))

(declare-fun mapRest!14098 () (Array (_ BitVec 32) List!26166))

(declare-fun mapKey!14099 () (_ BitVec 32))

(declare-fun mapValue!14098 () List!26166)

(assert (=> mapNonEmpty!14098 (= (arr!4565 (_values!3268 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) (store mapRest!14098 mapKey!14099 mapValue!14098))))

(declare-fun b!2223248 () Bool)

(assert (=> b!2223248 (= e!1420313 e!1420311)))

(declare-fun e!1420309 () Bool)

(assert (=> b!2223240 (= e!1420309 (and e!1420319 tp!693577))))

(declare-fun res!953945 () Bool)

(assert (=> start!216944 (=> (not res!953945) (not e!1420315))))

(declare-fun a!1149 () C!12848)

(declare-datatypes ((Option!5069 0))(
  ( (None!5068) (Some!5068 (v!29628 (InoxSet Context!3798))) )
))
(declare-fun get!7828 (CacheUp!1920 Context!3798 C!12848) Option!5069)

(assert (=> start!216944 (= res!953945 (not ((_ is Some!5068) (get!7828 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216944 e!1420315))

(declare-fun inv!35397 (CacheUp!1920) Bool)

(assert (=> start!216944 (and (inv!35397 cacheUp!790) e!1420308)))

(declare-fun e!1420325 () Bool)

(declare-fun inv!35398 (Context!3798) Bool)

(assert (=> start!216944 (and (inv!35398 context!72) e!1420325)))

(declare-fun tp_is_empty!9927 () Bool)

(assert (=> start!216944 tp_is_empty!9927))

(declare-fun e!1420317 () Bool)

(declare-fun inv!35399 (CacheDown!1894) Bool)

(assert (=> start!216944 (and (inv!35399 cacheDown!803) e!1420317)))

(declare-fun b!2223249 () Bool)

(assert (=> b!2223249 (= e!1420317 e!1420309)))

(declare-fun mapNonEmpty!14099 () Bool)

(declare-fun tp!693569 () Bool)

(declare-fun tp!693575 () Bool)

(assert (=> mapNonEmpty!14099 (= mapRes!14098 (and tp!693569 tp!693575))))

(declare-fun mapValue!14099 () List!26165)

(declare-fun mapRest!14099 () (Array (_ BitVec 32) List!26165))

(declare-fun mapKey!14098 () (_ BitVec 32))

(assert (=> mapNonEmpty!14099 (= (arr!4564 (_values!3267 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) (store mapRest!14099 mapKey!14098 mapValue!14099))))

(declare-fun b!2223250 () Bool)

(declare-fun tp!693572 () Bool)

(assert (=> b!2223250 (= e!1420325 tp!693572)))

(declare-fun tp!693567 () Bool)

(declare-fun e!1420314 () Bool)

(declare-fun tp!693564 () Bool)

(declare-fun array_inv!3283 (array!10254) Bool)

(assert (=> b!2223251 (= e!1420314 (and tp!693574 tp!693567 tp!693564 (array_inv!3281 (_keys!3285 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) (array_inv!3283 (_values!3268 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) e!1420316))))

(declare-fun b!2223252 () Bool)

(declare-fun e!1420322 () Bool)

(declare-fun lt!828813 () MutLongMap!2987)

(assert (=> b!2223252 (= e!1420322 (and e!1420324 ((_ is LongMap!2987) lt!828813)))))

(assert (=> b!2223252 (= lt!828813 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))

(declare-fun b!2223253 () Bool)

(declare-fun size!20346 (List!26164) Int)

(assert (=> b!2223253 (= e!1420315 (>= (size!20346 (t!199574 (exprs!2399 context!72))) (size!20346 (exprs!2399 context!72))))))

(declare-datatypes ((tuple2!25280 0))(
  ( (tuple2!25281 (_1!15022 (InoxSet Context!3798)) (_2!15022 CacheDown!1894)) )
))
(declare-fun lt!828814 () tuple2!25280)

(declare-fun derivationStepZipperDownMem!8 (Regex!6351 Context!3798 C!12848 CacheDown!1894) tuple2!25280)

(assert (=> b!2223253 (= lt!828814 (derivationStepZipperDownMem!8 (h!31471 (exprs!2399 context!72)) (Context!3799 (t!199574 (exprs!2399 context!72))) a!1149 cacheDown!803))))

(assert (=> b!2223254 (= e!1420312 (and e!1420322 tp!693573))))

(declare-fun b!2223255 () Bool)

(assert (=> b!2223255 (= e!1420321 e!1420314)))

(assert (= (and start!216944 res!953945) b!2223239))

(assert (= (and b!2223239 res!953944) b!2223244))

(assert (= (and b!2223244 res!953943) b!2223253))

(assert (= (and b!2223247 condMapEmpty!14098) mapIsEmpty!14098))

(assert (= (and b!2223247 (not condMapEmpty!14098)) mapNonEmpty!14099))

(assert (= b!2223242 b!2223247))

(assert (= b!2223248 b!2223242))

(assert (= b!2223238 b!2223248))

(assert (= (and b!2223252 ((_ is LongMap!2987) (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))) b!2223238))

(assert (= b!2223254 b!2223252))

(assert (= (and b!2223243 ((_ is HashMap!2897) (cache!3278 cacheUp!790))) b!2223254))

(assert (= start!216944 b!2223243))

(assert (= start!216944 b!2223250))

(assert (= (and b!2223245 condMapEmpty!14099) mapIsEmpty!14099))

(assert (= (and b!2223245 (not condMapEmpty!14099)) mapNonEmpty!14098))

(assert (= b!2223251 b!2223245))

(assert (= b!2223255 b!2223251))

(assert (= b!2223241 b!2223255))

(assert (= (and b!2223246 ((_ is LongMap!2988) (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))) b!2223241))

(assert (= b!2223240 b!2223246))

(assert (= (and b!2223249 ((_ is HashMap!2898) (cache!3279 cacheDown!803))) b!2223240))

(assert (= start!216944 b!2223249))

(declare-fun m!2663477 () Bool)

(assert (=> mapNonEmpty!14098 m!2663477))

(declare-fun m!2663479 () Bool)

(assert (=> start!216944 m!2663479))

(declare-fun m!2663481 () Bool)

(assert (=> start!216944 m!2663481))

(declare-fun m!2663483 () Bool)

(assert (=> start!216944 m!2663483))

(declare-fun m!2663485 () Bool)

(assert (=> start!216944 m!2663485))

(declare-fun m!2663487 () Bool)

(assert (=> mapNonEmpty!14099 m!2663487))

(declare-fun m!2663489 () Bool)

(assert (=> b!2223244 m!2663489))

(declare-fun m!2663491 () Bool)

(assert (=> b!2223253 m!2663491))

(declare-fun m!2663493 () Bool)

(assert (=> b!2223253 m!2663493))

(declare-fun m!2663495 () Bool)

(assert (=> b!2223253 m!2663495))

(declare-fun m!2663497 () Bool)

(assert (=> b!2223242 m!2663497))

(declare-fun m!2663499 () Bool)

(assert (=> b!2223242 m!2663499))

(declare-fun m!2663501 () Bool)

(assert (=> b!2223251 m!2663501))

(declare-fun m!2663503 () Bool)

(assert (=> b!2223251 m!2663503))

(check-sat (not b!2223242) (not b_next!65111) (not b!2223251) (not b_next!65109) (not start!216944) b_and!174395 b_and!174393 (not b!2223250) tp_is_empty!9927 (not b!2223253) (not b!2223244) (not mapNonEmpty!14099) (not b!2223245) (not mapNonEmpty!14098) (not b!2223247) (not b_next!65115) b_and!174391 (not b_next!65113) b_and!174389)
(check-sat (not b_next!65111) (not b_next!65109) b_and!174395 b_and!174393 (not b_next!65115) b_and!174391 (not b_next!65113) b_and!174389)
(get-model)

(declare-fun d!664265 () Bool)

(assert (=> d!664265 (= (array_inv!3281 (_keys!3284 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) (bvsge (size!20343 (_keys!3284 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223242 d!664265))

(declare-fun d!664267 () Bool)

(assert (=> d!664267 (= (array_inv!3282 (_values!3267 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) (bvsge (size!20344 (_values!3267 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223242 d!664267))

(declare-fun d!664269 () Bool)

(assert (=> d!664269 (= (array_inv!3281 (_keys!3285 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) (bvsge (size!20343 (_keys!3285 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223251 d!664269))

(declare-fun d!664271 () Bool)

(assert (=> d!664271 (= (array_inv!3283 (_values!3268 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) (bvsge (size!20345 (_values!3268 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803))))))) #b00000000000000000000000000000000))))

(assert (=> b!2223251 d!664271))

(declare-fun d!664273 () Bool)

(declare-fun nullableFct!403 (Regex!6351) Bool)

(assert (=> d!664273 (= (nullable!1730 (h!31471 (exprs!2399 context!72))) (nullableFct!403 (h!31471 (exprs!2399 context!72))))))

(declare-fun bs!453341 () Bool)

(assert (= bs!453341 d!664273))

(declare-fun m!2663505 () Bool)

(assert (=> bs!453341 m!2663505))

(assert (=> b!2223244 d!664273))

(declare-fun d!664275 () Bool)

(declare-fun e!1420330 () Bool)

(assert (=> d!664275 e!1420330))

(declare-fun res!953948 () Bool)

(assert (=> d!664275 (=> res!953948 e!1420330)))

(declare-fun lt!828820 () Option!5069)

(declare-fun isEmpty!14875 (Option!5069) Bool)

(assert (=> d!664275 (= res!953948 (isEmpty!14875 lt!828820))))

(declare-fun e!1420331 () Option!5069)

(assert (=> d!664275 (= lt!828820 e!1420331)))

(declare-fun c!354993 () Bool)

(declare-fun contains!4349 (MutableMap!2897 tuple2!25274) Bool)

(assert (=> d!664275 (= c!354993 (contains!4349 (cache!3278 cacheUp!790) (tuple2!25275 context!72 a!1149)))))

(declare-fun validCacheMapUp!272 (MutableMap!2897) Bool)

(assert (=> d!664275 (validCacheMapUp!272 (cache!3278 cacheUp!790))))

(assert (=> d!664275 (= (get!7828 cacheUp!790 context!72 a!1149) lt!828820)))

(declare-fun b!2223262 () Bool)

(declare-fun apply!6455 (MutableMap!2897 tuple2!25274) (InoxSet Context!3798))

(assert (=> b!2223262 (= e!1420331 (Some!5068 (apply!6455 (cache!3278 cacheUp!790) (tuple2!25275 context!72 a!1149))))))

(declare-datatypes ((Unit!39033 0))(
  ( (Unit!39034) )
))
(declare-fun lt!828819 () Unit!39033)

(declare-fun lemmaIfInCacheThenValid!24 (CacheUp!1920 Context!3798 C!12848) Unit!39033)

(assert (=> b!2223262 (= lt!828819 (lemmaIfInCacheThenValid!24 cacheUp!790 context!72 a!1149))))

(declare-fun b!2223263 () Bool)

(assert (=> b!2223263 (= e!1420331 None!5068)))

(declare-fun b!2223264 () Bool)

(declare-fun get!7829 (Option!5069) (InoxSet Context!3798))

(declare-fun derivationStepZipperUp!22 (Context!3798 C!12848) (InoxSet Context!3798))

(assert (=> b!2223264 (= e!1420330 (= (get!7829 lt!828820) (derivationStepZipperUp!22 context!72 a!1149)))))

(assert (= (and d!664275 c!354993) b!2223262))

(assert (= (and d!664275 (not c!354993)) b!2223263))

(assert (= (and d!664275 (not res!953948)) b!2223264))

(declare-fun m!2663507 () Bool)

(assert (=> d!664275 m!2663507))

(declare-fun m!2663509 () Bool)

(assert (=> d!664275 m!2663509))

(declare-fun m!2663511 () Bool)

(assert (=> d!664275 m!2663511))

(declare-fun m!2663513 () Bool)

(assert (=> b!2223262 m!2663513))

(declare-fun m!2663515 () Bool)

(assert (=> b!2223262 m!2663515))

(declare-fun m!2663517 () Bool)

(assert (=> b!2223264 m!2663517))

(declare-fun m!2663519 () Bool)

(assert (=> b!2223264 m!2663519))

(assert (=> start!216944 d!664275))

(declare-fun d!664277 () Bool)

(declare-fun res!953951 () Bool)

(declare-fun e!1420334 () Bool)

(assert (=> d!664277 (=> (not res!953951) (not e!1420334))))

(assert (=> d!664277 (= res!953951 ((_ is HashMap!2897) (cache!3278 cacheUp!790)))))

(assert (=> d!664277 (= (inv!35397 cacheUp!790) e!1420334)))

(declare-fun b!2223267 () Bool)

(assert (=> b!2223267 (= e!1420334 (validCacheMapUp!272 (cache!3278 cacheUp!790)))))

(assert (= (and d!664277 res!953951) b!2223267))

(assert (=> b!2223267 m!2663511))

(assert (=> start!216944 d!664277))

(declare-fun d!664279 () Bool)

(declare-fun lambda!84011 () Int)

(declare-fun forall!5312 (List!26164 Int) Bool)

(assert (=> d!664279 (= (inv!35398 context!72) (forall!5312 (exprs!2399 context!72) lambda!84011))))

(declare-fun bs!453342 () Bool)

(assert (= bs!453342 d!664279))

(declare-fun m!2663521 () Bool)

(assert (=> bs!453342 m!2663521))

(assert (=> start!216944 d!664279))

(declare-fun d!664281 () Bool)

(declare-fun res!953954 () Bool)

(declare-fun e!1420337 () Bool)

(assert (=> d!664281 (=> (not res!953954) (not e!1420337))))

(assert (=> d!664281 (= res!953954 ((_ is HashMap!2898) (cache!3279 cacheDown!803)))))

(assert (=> d!664281 (= (inv!35399 cacheDown!803) e!1420337)))

(declare-fun b!2223270 () Bool)

(declare-fun validCacheMapDown!262 (MutableMap!2898) Bool)

(assert (=> b!2223270 (= e!1420337 (validCacheMapDown!262 (cache!3279 cacheDown!803)))))

(assert (= (and d!664281 res!953954) b!2223270))

(declare-fun m!2663523 () Bool)

(assert (=> b!2223270 m!2663523))

(assert (=> start!216944 d!664281))

(declare-fun d!664283 () Bool)

(declare-fun lt!828823 () Int)

(assert (=> d!664283 (>= lt!828823 0)))

(declare-fun e!1420340 () Int)

(assert (=> d!664283 (= lt!828823 e!1420340)))

(declare-fun c!354996 () Bool)

(assert (=> d!664283 (= c!354996 ((_ is Nil!26070) (t!199574 (exprs!2399 context!72))))))

(assert (=> d!664283 (= (size!20346 (t!199574 (exprs!2399 context!72))) lt!828823)))

(declare-fun b!2223275 () Bool)

(assert (=> b!2223275 (= e!1420340 0)))

(declare-fun b!2223276 () Bool)

(assert (=> b!2223276 (= e!1420340 (+ 1 (size!20346 (t!199574 (t!199574 (exprs!2399 context!72))))))))

(assert (= (and d!664283 c!354996) b!2223275))

(assert (= (and d!664283 (not c!354996)) b!2223276))

(declare-fun m!2663525 () Bool)

(assert (=> b!2223276 m!2663525))

(assert (=> b!2223253 d!664283))

(declare-fun d!664285 () Bool)

(declare-fun lt!828824 () Int)

(assert (=> d!664285 (>= lt!828824 0)))

(declare-fun e!1420341 () Int)

(assert (=> d!664285 (= lt!828824 e!1420341)))

(declare-fun c!354997 () Bool)

(assert (=> d!664285 (= c!354997 ((_ is Nil!26070) (exprs!2399 context!72)))))

(assert (=> d!664285 (= (size!20346 (exprs!2399 context!72)) lt!828824)))

(declare-fun b!2223277 () Bool)

(assert (=> b!2223277 (= e!1420341 0)))

(declare-fun b!2223278 () Bool)

(assert (=> b!2223278 (= e!1420341 (+ 1 (size!20346 (t!199574 (exprs!2399 context!72)))))))

(assert (= (and d!664285 c!354997) b!2223277))

(assert (= (and d!664285 (not c!354997)) b!2223278))

(assert (=> b!2223278 m!2663491))

(assert (=> b!2223253 d!664285))

(declare-fun b!2223305 () Bool)

(declare-fun e!1420362 () tuple2!25280)

(declare-fun lt!828846 () tuple2!25280)

(assert (=> b!2223305 (= e!1420362 (tuple2!25281 (_1!15022 lt!828846) (_2!15022 lt!828846)))))

(declare-fun call!132809 () tuple2!25280)

(assert (=> b!2223305 (= lt!828846 call!132809)))

(declare-fun b!2223306 () Bool)

(declare-fun e!1420359 () tuple2!25280)

(assert (=> b!2223306 (= e!1420359 (tuple2!25281 (store ((as const (Array Context!3798 Bool)) false) (Context!3799 (t!199574 (exprs!2399 context!72))) true) cacheDown!803))))

(declare-fun b!2223307 () Bool)

(declare-fun lt!828851 () tuple2!25280)

(assert (=> b!2223307 (= lt!828851 call!132809)))

(declare-fun e!1420356 () tuple2!25280)

(assert (=> b!2223307 (= e!1420356 (tuple2!25281 (_1!15022 lt!828851) (_2!15022 lt!828851)))))

(declare-fun bm!132803 () Bool)

(declare-fun lt!828843 () tuple2!25280)

(declare-fun call!132813 () tuple2!25280)

(declare-fun c!355012 () Bool)

(declare-fun call!132811 () List!26164)

(assert (=> bm!132803 (= call!132813 (derivationStepZipperDownMem!8 (ite c!355012 (regTwo!13215 (h!31471 (exprs!2399 context!72))) (regOne!13214 (h!31471 (exprs!2399 context!72)))) (ite c!355012 (Context!3799 (t!199574 (exprs!2399 context!72))) (Context!3799 call!132811)) a!1149 (ite c!355012 (_2!15022 lt!828843) cacheDown!803)))))

(declare-fun b!2223308 () Bool)

(declare-fun lt!828848 () tuple2!25280)

(declare-fun call!132812 () tuple2!25280)

(assert (=> b!2223308 (= lt!828848 call!132812)))

(declare-fun lt!828849 () tuple2!25280)

(assert (=> b!2223308 (= lt!828849 call!132813)))

(declare-fun e!1420360 () tuple2!25280)

(assert (=> b!2223308 (= e!1420360 (tuple2!25281 ((_ map or) (_1!15022 lt!828849) (_1!15022 lt!828848)) (_2!15022 lt!828848)))))

(declare-fun b!2223309 () Bool)

(declare-fun e!1420357 () tuple2!25280)

(assert (=> b!2223309 (= e!1420357 e!1420360)))

(declare-fun res!953957 () Bool)

(assert (=> b!2223309 (= res!953957 ((_ is Concat!10689) (h!31471 (exprs!2399 context!72))))))

(declare-fun e!1420358 () Bool)

(assert (=> b!2223309 (=> (not res!953957) (not e!1420358))))

(declare-fun c!355013 () Bool)

(assert (=> b!2223309 (= c!355013 e!1420358)))

(declare-fun b!2223310 () Bool)

(assert (=> b!2223310 (= e!1420356 (tuple2!25281 ((as const (Array Context!3798 Bool)) false) cacheDown!803))))

(declare-fun bm!132804 () Bool)

(declare-fun call!132808 () tuple2!25280)

(declare-fun c!355010 () Bool)

(declare-fun call!132810 () List!26164)

(assert (=> bm!132804 (= call!132808 (derivationStepZipperDownMem!8 (ite c!355012 (regOne!13215 (h!31471 (exprs!2399 context!72))) (ite c!355013 (regTwo!13214 (h!31471 (exprs!2399 context!72))) (ite c!355010 (regOne!13214 (h!31471 (exprs!2399 context!72))) (reg!6680 (h!31471 (exprs!2399 context!72)))))) (ite (or c!355012 c!355013) (Context!3799 (t!199574 (exprs!2399 context!72))) (Context!3799 call!132810)) a!1149 (ite c!355012 cacheDown!803 (ite c!355013 (_2!15022 lt!828849) cacheDown!803))))))

(declare-fun d!664287 () Bool)

(declare-fun lt!828850 () tuple2!25280)

(declare-fun derivationStepZipperDown!22 (Regex!6351 Context!3798 C!12848) (InoxSet Context!3798))

(assert (=> d!664287 (= (_1!15022 lt!828850) (derivationStepZipperDown!22 (h!31471 (exprs!2399 context!72)) (Context!3799 (t!199574 (exprs!2399 context!72))) a!1149))))

(declare-fun e!1420361 () tuple2!25280)

(assert (=> d!664287 (= lt!828850 e!1420361)))

(declare-fun c!355014 () Bool)

(declare-fun lt!828844 () Option!5069)

(assert (=> d!664287 (= c!355014 ((_ is Some!5068) lt!828844))))

(declare-fun get!7830 (CacheDown!1894 Regex!6351 Context!3798 C!12848) Option!5069)

(assert (=> d!664287 (= lt!828844 (get!7830 cacheDown!803 (h!31471 (exprs!2399 context!72)) (Context!3799 (t!199574 (exprs!2399 context!72))) a!1149))))

(declare-fun validRegex!2357 (Regex!6351) Bool)

(assert (=> d!664287 (validRegex!2357 (h!31471 (exprs!2399 context!72)))))

(assert (=> d!664287 (= (derivationStepZipperDownMem!8 (h!31471 (exprs!2399 context!72)) (Context!3799 (t!199574 (exprs!2399 context!72))) a!1149 cacheDown!803) lt!828850)))

(declare-fun bm!132805 () Bool)

(assert (=> bm!132805 (= call!132810 call!132811)))

(declare-fun b!2223311 () Bool)

(assert (=> b!2223311 (= c!355012 ((_ is Union!6351) (h!31471 (exprs!2399 context!72))))))

(assert (=> b!2223311 (= e!1420359 e!1420357)))

(declare-fun bm!132806 () Bool)

(assert (=> bm!132806 (= call!132809 call!132812)))

(declare-fun b!2223312 () Bool)

(declare-fun lt!828847 () tuple2!25280)

(assert (=> b!2223312 (= e!1420357 (tuple2!25281 ((_ map or) (_1!15022 lt!828843) (_1!15022 lt!828847)) (_2!15022 lt!828847)))))

(assert (=> b!2223312 (= lt!828843 call!132808)))

(assert (=> b!2223312 (= lt!828847 call!132813)))

(declare-fun b!2223313 () Bool)

(declare-fun lt!828845 () tuple2!25280)

(declare-datatypes ((tuple2!25282 0))(
  ( (tuple2!25283 (_1!15023 Unit!39033) (_2!15023 CacheDown!1894)) )
))
(declare-fun update!116 (CacheDown!1894 Regex!6351 Context!3798 C!12848 (InoxSet Context!3798)) tuple2!25282)

(assert (=> b!2223313 (= e!1420361 (tuple2!25281 (_1!15022 lt!828845) (_2!15023 (update!116 (_2!15022 lt!828845) (h!31471 (exprs!2399 context!72)) (Context!3799 (t!199574 (exprs!2399 context!72))) a!1149 (_1!15022 lt!828845)))))))

(declare-fun c!355011 () Bool)

(assert (=> b!2223313 (= c!355011 (and ((_ is ElementMatch!6351) (h!31471 (exprs!2399 context!72))) (= (c!354990 (h!31471 (exprs!2399 context!72))) a!1149)))))

(assert (=> b!2223313 (= lt!828845 e!1420359)))

(declare-fun bm!132807 () Bool)

(declare-fun $colon$colon!503 (List!26164 Regex!6351) List!26164)

(assert (=> bm!132807 (= call!132811 ($colon$colon!503 (exprs!2399 (Context!3799 (t!199574 (exprs!2399 context!72)))) (ite (or c!355013 c!355010) (regTwo!13214 (h!31471 (exprs!2399 context!72))) (h!31471 (exprs!2399 context!72)))))))

(declare-fun b!2223314 () Bool)

(assert (=> b!2223314 (= e!1420361 (tuple2!25281 (v!29628 lt!828844) cacheDown!803))))

(declare-fun b!2223315 () Bool)

(assert (=> b!2223315 (= e!1420362 e!1420356)))

(declare-fun c!355015 () Bool)

(assert (=> b!2223315 (= c!355015 ((_ is Star!6351) (h!31471 (exprs!2399 context!72))))))

(declare-fun b!2223316 () Bool)

(assert (=> b!2223316 (= c!355010 ((_ is Concat!10689) (h!31471 (exprs!2399 context!72))))))

(assert (=> b!2223316 (= e!1420360 e!1420362)))

(declare-fun bm!132808 () Bool)

(assert (=> bm!132808 (= call!132812 call!132808)))

(declare-fun b!2223317 () Bool)

(assert (=> b!2223317 (= e!1420358 (nullable!1730 (regOne!13214 (h!31471 (exprs!2399 context!72)))))))

(assert (= (and d!664287 c!355014) b!2223314))

(assert (= (and d!664287 (not c!355014)) b!2223313))

(assert (= (and b!2223313 c!355011) b!2223306))

(assert (= (and b!2223313 (not c!355011)) b!2223311))

(assert (= (and b!2223311 c!355012) b!2223312))

(assert (= (and b!2223311 (not c!355012)) b!2223309))

(assert (= (and b!2223309 res!953957) b!2223317))

(assert (= (and b!2223309 c!355013) b!2223308))

(assert (= (and b!2223309 (not c!355013)) b!2223316))

(assert (= (and b!2223316 c!355010) b!2223305))

(assert (= (and b!2223316 (not c!355010)) b!2223315))

(assert (= (and b!2223315 c!355015) b!2223307))

(assert (= (and b!2223315 (not c!355015)) b!2223310))

(assert (= (or b!2223305 b!2223307) bm!132805))

(assert (= (or b!2223305 b!2223307) bm!132806))

(assert (= (or b!2223308 bm!132805) bm!132807))

(assert (= (or b!2223308 bm!132806) bm!132808))

(assert (= (or b!2223312 b!2223308) bm!132803))

(assert (= (or b!2223312 bm!132808) bm!132804))

(declare-fun m!2663527 () Bool)

(assert (=> b!2223313 m!2663527))

(declare-fun m!2663529 () Bool)

(assert (=> b!2223306 m!2663529))

(declare-fun m!2663531 () Bool)

(assert (=> bm!132803 m!2663531))

(declare-fun m!2663533 () Bool)

(assert (=> bm!132807 m!2663533))

(declare-fun m!2663535 () Bool)

(assert (=> d!664287 m!2663535))

(declare-fun m!2663537 () Bool)

(assert (=> d!664287 m!2663537))

(declare-fun m!2663539 () Bool)

(assert (=> d!664287 m!2663539))

(declare-fun m!2663541 () Bool)

(assert (=> b!2223317 m!2663541))

(declare-fun m!2663543 () Bool)

(assert (=> bm!132804 m!2663543))

(assert (=> b!2223253 d!664287))

(declare-fun setElem!19615 () Context!3798)

(declare-fun setNonEmpty!19615 () Bool)

(declare-fun tp!693588 () Bool)

(declare-fun setRes!19615 () Bool)

(declare-fun e!1420371 () Bool)

(assert (=> setNonEmpty!19615 (= setRes!19615 (and tp!693588 (inv!35398 setElem!19615) e!1420371))))

(declare-fun setRest!19615 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19615 (= (_2!15019 (h!31472 (zeroValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19615 true) setRest!19615))))

(declare-fun b!2223326 () Bool)

(declare-fun e!1420369 () Bool)

(declare-fun tp!693589 () Bool)

(assert (=> b!2223326 (= e!1420369 tp!693589)))

(declare-fun e!1420370 () Bool)

(assert (=> b!2223242 (= tp!693565 e!1420370)))

(declare-fun setIsEmpty!19615 () Bool)

(assert (=> setIsEmpty!19615 setRes!19615))

(declare-fun b!2223327 () Bool)

(declare-fun tp!693587 () Bool)

(assert (=> b!2223327 (= e!1420371 tp!693587)))

(declare-fun b!2223328 () Bool)

(declare-fun tp!693586 () Bool)

(assert (=> b!2223328 (= e!1420370 (and (inv!35398 (_1!15018 (_1!15019 (h!31472 (zeroValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))))) e!1420369 tp_is_empty!9927 setRes!19615 tp!693586))))

(declare-fun condSetEmpty!19615 () Bool)

(assert (=> b!2223328 (= condSetEmpty!19615 (= (_2!15019 (h!31472 (zeroValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))) ((as const (Array Context!3798 Bool)) false)))))

(assert (= b!2223328 b!2223326))

(assert (= (and b!2223328 condSetEmpty!19615) setIsEmpty!19615))

(assert (= (and b!2223328 (not condSetEmpty!19615)) setNonEmpty!19615))

(assert (= setNonEmpty!19615 b!2223327))

(assert (= (and b!2223242 ((_ is Cons!26071) (zeroValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))) b!2223328))

(declare-fun m!2663545 () Bool)

(assert (=> setNonEmpty!19615 m!2663545))

(declare-fun m!2663547 () Bool)

(assert (=> b!2223328 m!2663547))

(declare-fun e!1420374 () Bool)

(declare-fun setRes!19616 () Bool)

(declare-fun setNonEmpty!19616 () Bool)

(declare-fun tp!693592 () Bool)

(declare-fun setElem!19616 () Context!3798)

(assert (=> setNonEmpty!19616 (= setRes!19616 (and tp!693592 (inv!35398 setElem!19616) e!1420374))))

(declare-fun setRest!19616 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19616 (= (_2!15019 (h!31472 (minValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19616 true) setRest!19616))))

(declare-fun b!2223329 () Bool)

(declare-fun e!1420372 () Bool)

(declare-fun tp!693593 () Bool)

(assert (=> b!2223329 (= e!1420372 tp!693593)))

(declare-fun e!1420373 () Bool)

(assert (=> b!2223242 (= tp!693576 e!1420373)))

(declare-fun setIsEmpty!19616 () Bool)

(assert (=> setIsEmpty!19616 setRes!19616))

(declare-fun b!2223330 () Bool)

(declare-fun tp!693591 () Bool)

(assert (=> b!2223330 (= e!1420374 tp!693591)))

(declare-fun b!2223331 () Bool)

(declare-fun tp!693590 () Bool)

(assert (=> b!2223331 (= e!1420373 (and (inv!35398 (_1!15018 (_1!15019 (h!31472 (minValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))))) e!1420372 tp_is_empty!9927 setRes!19616 tp!693590))))

(declare-fun condSetEmpty!19616 () Bool)

(assert (=> b!2223331 (= condSetEmpty!19616 (= (_2!15019 (h!31472 (minValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))) ((as const (Array Context!3798 Bool)) false)))))

(assert (= b!2223331 b!2223329))

(assert (= (and b!2223331 condSetEmpty!19616) setIsEmpty!19616))

(assert (= (and b!2223331 (not condSetEmpty!19616)) setNonEmpty!19616))

(assert (= setNonEmpty!19616 b!2223330))

(assert (= (and b!2223242 ((_ is Cons!26071) (minValue!3245 (v!29624 (underlying!6175 (v!29625 (underlying!6176 (cache!3278 cacheUp!790)))))))) b!2223331))

(declare-fun m!2663549 () Bool)

(assert (=> setNonEmpty!19616 m!2663549))

(declare-fun m!2663551 () Bool)

(assert (=> b!2223331 m!2663551))

(declare-fun b!2223336 () Bool)

(declare-fun e!1420377 () Bool)

(declare-fun tp!693598 () Bool)

(declare-fun tp!693599 () Bool)

(assert (=> b!2223336 (= e!1420377 (and tp!693598 tp!693599))))

(assert (=> b!2223250 (= tp!693572 e!1420377)))

(assert (= (and b!2223250 ((_ is Cons!26070) (exprs!2399 context!72))) b!2223336))

(declare-fun setRes!19617 () Bool)

(declare-fun tp!693602 () Bool)

(declare-fun e!1420380 () Bool)

(declare-fun setElem!19617 () Context!3798)

(declare-fun setNonEmpty!19617 () Bool)

(assert (=> setNonEmpty!19617 (= setRes!19617 (and tp!693602 (inv!35398 setElem!19617) e!1420380))))

(declare-fun setRest!19617 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19617 (= (_2!15019 (h!31472 mapDefault!14098)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19617 true) setRest!19617))))

(declare-fun b!2223337 () Bool)

(declare-fun e!1420378 () Bool)

(declare-fun tp!693603 () Bool)

(assert (=> b!2223337 (= e!1420378 tp!693603)))

(declare-fun e!1420379 () Bool)

(assert (=> b!2223247 (= tp!693563 e!1420379)))

(declare-fun setIsEmpty!19617 () Bool)

(assert (=> setIsEmpty!19617 setRes!19617))

(declare-fun b!2223338 () Bool)

(declare-fun tp!693601 () Bool)

(assert (=> b!2223338 (= e!1420380 tp!693601)))

(declare-fun tp!693600 () Bool)

(declare-fun b!2223339 () Bool)

(assert (=> b!2223339 (= e!1420379 (and (inv!35398 (_1!15018 (_1!15019 (h!31472 mapDefault!14098)))) e!1420378 tp_is_empty!9927 setRes!19617 tp!693600))))

(declare-fun condSetEmpty!19617 () Bool)

(assert (=> b!2223339 (= condSetEmpty!19617 (= (_2!15019 (h!31472 mapDefault!14098)) ((as const (Array Context!3798 Bool)) false)))))

(assert (= b!2223339 b!2223337))

(assert (= (and b!2223339 condSetEmpty!19617) setIsEmpty!19617))

(assert (= (and b!2223339 (not condSetEmpty!19617)) setNonEmpty!19617))

(assert (= setNonEmpty!19617 b!2223338))

(assert (= (and b!2223247 ((_ is Cons!26071) mapDefault!14098)) b!2223339))

(declare-fun m!2663553 () Bool)

(assert (=> setNonEmpty!19617 m!2663553))

(declare-fun m!2663555 () Bool)

(assert (=> b!2223339 m!2663555))

(declare-fun b!2223348 () Bool)

(declare-fun e!1420387 () Bool)

(declare-fun tp!693615 () Bool)

(assert (=> b!2223348 (= e!1420387 tp!693615)))

(declare-fun b!2223349 () Bool)

(declare-fun e!1420389 () Bool)

(declare-fun tp!693617 () Bool)

(assert (=> b!2223349 (= e!1420389 tp!693617)))

(declare-fun setNonEmpty!19620 () Bool)

(declare-fun setElem!19620 () Context!3798)

(declare-fun setRes!19620 () Bool)

(declare-fun tp!693614 () Bool)

(assert (=> setNonEmpty!19620 (= setRes!19620 (and tp!693614 (inv!35398 setElem!19620) e!1420387))))

(declare-fun setRest!19620 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19620 (= (_2!15021 (h!31473 (zeroValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19620 true) setRest!19620))))

(declare-fun b!2223350 () Bool)

(declare-fun tp!693618 () Bool)

(declare-fun tp!693616 () Bool)

(declare-fun e!1420388 () Bool)

(assert (=> b!2223350 (= e!1420388 (and tp!693618 (inv!35398 (_2!15020 (_1!15021 (h!31473 (zeroValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))))) e!1420389 tp_is_empty!9927 setRes!19620 tp!693616))))

(declare-fun condSetEmpty!19620 () Bool)

(assert (=> b!2223350 (= condSetEmpty!19620 (= (_2!15021 (h!31473 (zeroValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))) ((as const (Array Context!3798 Bool)) false)))))

(assert (=> b!2223251 (= tp!693567 e!1420388)))

(declare-fun setIsEmpty!19620 () Bool)

(assert (=> setIsEmpty!19620 setRes!19620))

(assert (= b!2223350 b!2223349))

(assert (= (and b!2223350 condSetEmpty!19620) setIsEmpty!19620))

(assert (= (and b!2223350 (not condSetEmpty!19620)) setNonEmpty!19620))

(assert (= setNonEmpty!19620 b!2223348))

(assert (= (and b!2223251 ((_ is Cons!26072) (zeroValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))) b!2223350))

(declare-fun m!2663557 () Bool)

(assert (=> setNonEmpty!19620 m!2663557))

(declare-fun m!2663559 () Bool)

(assert (=> b!2223350 m!2663559))

(declare-fun b!2223351 () Bool)

(declare-fun e!1420390 () Bool)

(declare-fun tp!693620 () Bool)

(assert (=> b!2223351 (= e!1420390 tp!693620)))

(declare-fun b!2223352 () Bool)

(declare-fun e!1420392 () Bool)

(declare-fun tp!693622 () Bool)

(assert (=> b!2223352 (= e!1420392 tp!693622)))

(declare-fun tp!693619 () Bool)

(declare-fun setRes!19621 () Bool)

(declare-fun setNonEmpty!19621 () Bool)

(declare-fun setElem!19621 () Context!3798)

(assert (=> setNonEmpty!19621 (= setRes!19621 (and tp!693619 (inv!35398 setElem!19621) e!1420390))))

(declare-fun setRest!19621 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19621 (= (_2!15021 (h!31473 (minValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19621 true) setRest!19621))))

(declare-fun b!2223353 () Bool)

(declare-fun e!1420391 () Bool)

(declare-fun tp!693623 () Bool)

(declare-fun tp!693621 () Bool)

(assert (=> b!2223353 (= e!1420391 (and tp!693623 (inv!35398 (_2!15020 (_1!15021 (h!31473 (minValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))))) e!1420392 tp_is_empty!9927 setRes!19621 tp!693621))))

(declare-fun condSetEmpty!19621 () Bool)

(assert (=> b!2223353 (= condSetEmpty!19621 (= (_2!15021 (h!31473 (minValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))) ((as const (Array Context!3798 Bool)) false)))))

(assert (=> b!2223251 (= tp!693564 e!1420391)))

(declare-fun setIsEmpty!19621 () Bool)

(assert (=> setIsEmpty!19621 setRes!19621))

(assert (= b!2223353 b!2223352))

(assert (= (and b!2223353 condSetEmpty!19621) setIsEmpty!19621))

(assert (= (and b!2223353 (not condSetEmpty!19621)) setNonEmpty!19621))

(assert (= setNonEmpty!19621 b!2223351))

(assert (= (and b!2223251 ((_ is Cons!26072) (minValue!3246 (v!29626 (underlying!6177 (v!29627 (underlying!6178 (cache!3279 cacheDown!803)))))))) b!2223353))

(declare-fun m!2663561 () Bool)

(assert (=> setNonEmpty!19621 m!2663561))

(declare-fun m!2663563 () Bool)

(assert (=> b!2223353 m!2663563))

(declare-fun setIsEmpty!19626 () Bool)

(declare-fun setRes!19626 () Bool)

(assert (=> setIsEmpty!19626 setRes!19626))

(declare-fun tp!693650 () Bool)

(declare-fun setNonEmpty!19626 () Bool)

(declare-fun setElem!19627 () Context!3798)

(declare-fun e!1420405 () Bool)

(assert (=> setNonEmpty!19626 (= setRes!19626 (and tp!693650 (inv!35398 setElem!19627) e!1420405))))

(declare-fun mapValue!14102 () List!26166)

(declare-fun setRest!19626 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19626 (= (_2!15021 (h!31473 mapValue!14102)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19627 true) setRest!19626))))

(declare-fun mapDefault!14102 () List!26166)

(declare-fun setRes!19627 () Bool)

(declare-fun b!2223368 () Bool)

(declare-fun e!1420407 () Bool)

(declare-fun tp!693651 () Bool)

(declare-fun e!1420406 () Bool)

(declare-fun tp!693649 () Bool)

(assert (=> b!2223368 (= e!1420406 (and tp!693649 (inv!35398 (_2!15020 (_1!15021 (h!31473 mapDefault!14102)))) e!1420407 tp_is_empty!9927 setRes!19627 tp!693651))))

(declare-fun condSetEmpty!19626 () Bool)

(assert (=> b!2223368 (= condSetEmpty!19626 (= (_2!15021 (h!31473 mapDefault!14102)) ((as const (Array Context!3798 Bool)) false)))))

(declare-fun mapIsEmpty!14102 () Bool)

(declare-fun mapRes!14102 () Bool)

(assert (=> mapIsEmpty!14102 mapRes!14102))

(declare-fun b!2223369 () Bool)

(declare-fun e!1420410 () Bool)

(declare-fun tp!693648 () Bool)

(assert (=> b!2223369 (= e!1420410 tp!693648)))

(declare-fun tp!693652 () Bool)

(declare-fun e!1420408 () Bool)

(declare-fun b!2223370 () Bool)

(declare-fun tp!693653 () Bool)

(assert (=> b!2223370 (= e!1420408 (and tp!693653 (inv!35398 (_2!15020 (_1!15021 (h!31473 mapValue!14102)))) e!1420410 tp_is_empty!9927 setRes!19626 tp!693652))))

(declare-fun condSetEmpty!19627 () Bool)

(assert (=> b!2223370 (= condSetEmpty!19627 (= (_2!15021 (h!31473 mapValue!14102)) ((as const (Array Context!3798 Bool)) false)))))

(declare-fun e!1420409 () Bool)

(declare-fun tp!693647 () Bool)

(declare-fun setNonEmpty!19627 () Bool)

(declare-fun setElem!19626 () Context!3798)

(assert (=> setNonEmpty!19627 (= setRes!19627 (and tp!693647 (inv!35398 setElem!19626) e!1420409))))

(declare-fun setRest!19627 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19627 (= (_2!15021 (h!31473 mapDefault!14102)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19626 true) setRest!19627))))

(declare-fun condMapEmpty!14102 () Bool)

(assert (=> mapNonEmpty!14098 (= condMapEmpty!14102 (= mapRest!14098 ((as const (Array (_ BitVec 32) List!26166)) mapDefault!14102)))))

(assert (=> mapNonEmpty!14098 (= tp!693566 (and e!1420406 mapRes!14102))))

(declare-fun mapNonEmpty!14102 () Bool)

(declare-fun tp!693646 () Bool)

(assert (=> mapNonEmpty!14102 (= mapRes!14102 (and tp!693646 e!1420408))))

(declare-fun mapKey!14102 () (_ BitVec 32))

(declare-fun mapRest!14102 () (Array (_ BitVec 32) List!26166))

(assert (=> mapNonEmpty!14102 (= mapRest!14098 (store mapRest!14102 mapKey!14102 mapValue!14102))))

(declare-fun b!2223371 () Bool)

(declare-fun tp!693654 () Bool)

(assert (=> b!2223371 (= e!1420407 tp!693654)))

(declare-fun setIsEmpty!19627 () Bool)

(assert (=> setIsEmpty!19627 setRes!19627))

(declare-fun b!2223372 () Bool)

(declare-fun tp!693655 () Bool)

(assert (=> b!2223372 (= e!1420409 tp!693655)))

(declare-fun b!2223373 () Bool)

(declare-fun tp!693656 () Bool)

(assert (=> b!2223373 (= e!1420405 tp!693656)))

(assert (= (and mapNonEmpty!14098 condMapEmpty!14102) mapIsEmpty!14102))

(assert (= (and mapNonEmpty!14098 (not condMapEmpty!14102)) mapNonEmpty!14102))

(assert (= b!2223370 b!2223369))

(assert (= (and b!2223370 condSetEmpty!19627) setIsEmpty!19626))

(assert (= (and b!2223370 (not condSetEmpty!19627)) setNonEmpty!19626))

(assert (= setNonEmpty!19626 b!2223373))

(assert (= (and mapNonEmpty!14102 ((_ is Cons!26072) mapValue!14102)) b!2223370))

(assert (= b!2223368 b!2223371))

(assert (= (and b!2223368 condSetEmpty!19626) setIsEmpty!19627))

(assert (= (and b!2223368 (not condSetEmpty!19626)) setNonEmpty!19627))

(assert (= setNonEmpty!19627 b!2223372))

(assert (= (and mapNonEmpty!14098 ((_ is Cons!26072) mapDefault!14102)) b!2223368))

(declare-fun m!2663565 () Bool)

(assert (=> mapNonEmpty!14102 m!2663565))

(declare-fun m!2663567 () Bool)

(assert (=> b!2223370 m!2663567))

(declare-fun m!2663569 () Bool)

(assert (=> setNonEmpty!19626 m!2663569))

(declare-fun m!2663571 () Bool)

(assert (=> b!2223368 m!2663571))

(declare-fun m!2663573 () Bool)

(assert (=> setNonEmpty!19627 m!2663573))

(declare-fun b!2223374 () Bool)

(declare-fun e!1420411 () Bool)

(declare-fun tp!693658 () Bool)

(assert (=> b!2223374 (= e!1420411 tp!693658)))

(declare-fun b!2223375 () Bool)

(declare-fun e!1420413 () Bool)

(declare-fun tp!693660 () Bool)

(assert (=> b!2223375 (= e!1420413 tp!693660)))

(declare-fun tp!693657 () Bool)

(declare-fun setRes!19628 () Bool)

(declare-fun setNonEmpty!19628 () Bool)

(declare-fun setElem!19628 () Context!3798)

(assert (=> setNonEmpty!19628 (= setRes!19628 (and tp!693657 (inv!35398 setElem!19628) e!1420411))))

(declare-fun setRest!19628 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19628 (= (_2!15021 (h!31473 mapValue!14098)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19628 true) setRest!19628))))

(declare-fun tp!693661 () Bool)

(declare-fun tp!693659 () Bool)

(declare-fun e!1420412 () Bool)

(declare-fun b!2223376 () Bool)

(assert (=> b!2223376 (= e!1420412 (and tp!693661 (inv!35398 (_2!15020 (_1!15021 (h!31473 mapValue!14098)))) e!1420413 tp_is_empty!9927 setRes!19628 tp!693659))))

(declare-fun condSetEmpty!19628 () Bool)

(assert (=> b!2223376 (= condSetEmpty!19628 (= (_2!15021 (h!31473 mapValue!14098)) ((as const (Array Context!3798 Bool)) false)))))

(assert (=> mapNonEmpty!14098 (= tp!693568 e!1420412)))

(declare-fun setIsEmpty!19628 () Bool)

(assert (=> setIsEmpty!19628 setRes!19628))

(assert (= b!2223376 b!2223375))

(assert (= (and b!2223376 condSetEmpty!19628) setIsEmpty!19628))

(assert (= (and b!2223376 (not condSetEmpty!19628)) setNonEmpty!19628))

(assert (= setNonEmpty!19628 b!2223374))

(assert (= (and mapNonEmpty!14098 ((_ is Cons!26072) mapValue!14098)) b!2223376))

(declare-fun m!2663575 () Bool)

(assert (=> setNonEmpty!19628 m!2663575))

(declare-fun m!2663577 () Bool)

(assert (=> b!2223376 m!2663577))

(declare-fun b!2223377 () Bool)

(declare-fun e!1420414 () Bool)

(declare-fun tp!693663 () Bool)

(assert (=> b!2223377 (= e!1420414 tp!693663)))

(declare-fun b!2223378 () Bool)

(declare-fun e!1420416 () Bool)

(declare-fun tp!693665 () Bool)

(assert (=> b!2223378 (= e!1420416 tp!693665)))

(declare-fun setElem!19629 () Context!3798)

(declare-fun tp!693662 () Bool)

(declare-fun setNonEmpty!19629 () Bool)

(declare-fun setRes!19629 () Bool)

(assert (=> setNonEmpty!19629 (= setRes!19629 (and tp!693662 (inv!35398 setElem!19629) e!1420414))))

(declare-fun setRest!19629 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19629 (= (_2!15021 (h!31473 mapDefault!14099)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19629 true) setRest!19629))))

(declare-fun b!2223379 () Bool)

(declare-fun e!1420415 () Bool)

(declare-fun tp!693666 () Bool)

(declare-fun tp!693664 () Bool)

(assert (=> b!2223379 (= e!1420415 (and tp!693666 (inv!35398 (_2!15020 (_1!15021 (h!31473 mapDefault!14099)))) e!1420416 tp_is_empty!9927 setRes!19629 tp!693664))))

(declare-fun condSetEmpty!19629 () Bool)

(assert (=> b!2223379 (= condSetEmpty!19629 (= (_2!15021 (h!31473 mapDefault!14099)) ((as const (Array Context!3798 Bool)) false)))))

(assert (=> b!2223245 (= tp!693571 e!1420415)))

(declare-fun setIsEmpty!19629 () Bool)

(assert (=> setIsEmpty!19629 setRes!19629))

(assert (= b!2223379 b!2223378))

(assert (= (and b!2223379 condSetEmpty!19629) setIsEmpty!19629))

(assert (= (and b!2223379 (not condSetEmpty!19629)) setNonEmpty!19629))

(assert (= setNonEmpty!19629 b!2223377))

(assert (= (and b!2223245 ((_ is Cons!26072) mapDefault!14099)) b!2223379))

(declare-fun m!2663579 () Bool)

(assert (=> setNonEmpty!19629 m!2663579))

(declare-fun m!2663581 () Bool)

(assert (=> b!2223379 m!2663581))

(declare-fun setIsEmpty!19634 () Bool)

(declare-fun setRes!19634 () Bool)

(assert (=> setIsEmpty!19634 setRes!19634))

(declare-fun b!2223394 () Bool)

(declare-fun e!1420429 () Bool)

(declare-fun tp!693693 () Bool)

(assert (=> b!2223394 (= e!1420429 tp!693693)))

(declare-fun tp!693689 () Bool)

(declare-fun setNonEmpty!19635 () Bool)

(declare-fun setElem!19634 () Context!3798)

(assert (=> setNonEmpty!19635 (= setRes!19634 (and tp!693689 (inv!35398 setElem!19634) e!1420429))))

(declare-fun mapValue!14105 () List!26165)

(declare-fun setRest!19635 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19635 (= (_2!15019 (h!31472 mapValue!14105)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19634 true) setRest!19635))))

(declare-fun setRes!19635 () Bool)

(declare-fun mapDefault!14105 () List!26165)

(declare-fun e!1420431 () Bool)

(declare-fun e!1420433 () Bool)

(declare-fun b!2223395 () Bool)

(declare-fun tp!693687 () Bool)

(assert (=> b!2223395 (= e!1420433 (and (inv!35398 (_1!15018 (_1!15019 (h!31472 mapDefault!14105)))) e!1420431 tp_is_empty!9927 setRes!19635 tp!693687))))

(declare-fun condSetEmpty!19635 () Bool)

(assert (=> b!2223395 (= condSetEmpty!19635 (= (_2!15019 (h!31472 mapDefault!14105)) ((as const (Array Context!3798 Bool)) false)))))

(declare-fun e!1420430 () Bool)

(declare-fun e!1420432 () Bool)

(declare-fun b!2223396 () Bool)

(declare-fun tp!693688 () Bool)

(assert (=> b!2223396 (= e!1420430 (and (inv!35398 (_1!15018 (_1!15019 (h!31472 mapValue!14105)))) e!1420432 tp_is_empty!9927 setRes!19634 tp!693688))))

(declare-fun condSetEmpty!19634 () Bool)

(assert (=> b!2223396 (= condSetEmpty!19634 (= (_2!15019 (h!31472 mapValue!14105)) ((as const (Array Context!3798 Bool)) false)))))

(declare-fun mapNonEmpty!14105 () Bool)

(declare-fun mapRes!14105 () Bool)

(declare-fun tp!693690 () Bool)

(assert (=> mapNonEmpty!14105 (= mapRes!14105 (and tp!693690 e!1420430))))

(declare-fun mapKey!14105 () (_ BitVec 32))

(declare-fun mapRest!14105 () (Array (_ BitVec 32) List!26165))

(assert (=> mapNonEmpty!14105 (= mapRest!14099 (store mapRest!14105 mapKey!14105 mapValue!14105))))

(declare-fun mapIsEmpty!14105 () Bool)

(assert (=> mapIsEmpty!14105 mapRes!14105))

(declare-fun b!2223397 () Bool)

(declare-fun tp!693686 () Bool)

(assert (=> b!2223397 (= e!1420431 tp!693686)))

(declare-fun b!2223398 () Bool)

(declare-fun e!1420434 () Bool)

(declare-fun tp!693692 () Bool)

(assert (=> b!2223398 (= e!1420434 tp!693692)))

(declare-fun b!2223399 () Bool)

(declare-fun tp!693685 () Bool)

(assert (=> b!2223399 (= e!1420432 tp!693685)))

(declare-fun setIsEmpty!19635 () Bool)

(assert (=> setIsEmpty!19635 setRes!19635))

(declare-fun condMapEmpty!14105 () Bool)

(assert (=> mapNonEmpty!14099 (= condMapEmpty!14105 (= mapRest!14099 ((as const (Array (_ BitVec 32) List!26165)) mapDefault!14105)))))

(assert (=> mapNonEmpty!14099 (= tp!693569 (and e!1420433 mapRes!14105))))

(declare-fun tp!693691 () Bool)

(declare-fun setNonEmpty!19634 () Bool)

(declare-fun setElem!19635 () Context!3798)

(assert (=> setNonEmpty!19634 (= setRes!19635 (and tp!693691 (inv!35398 setElem!19635) e!1420434))))

(declare-fun setRest!19634 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19634 (= (_2!15019 (h!31472 mapDefault!14105)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19635 true) setRest!19634))))

(assert (= (and mapNonEmpty!14099 condMapEmpty!14105) mapIsEmpty!14105))

(assert (= (and mapNonEmpty!14099 (not condMapEmpty!14105)) mapNonEmpty!14105))

(assert (= b!2223396 b!2223399))

(assert (= (and b!2223396 condSetEmpty!19634) setIsEmpty!19634))

(assert (= (and b!2223396 (not condSetEmpty!19634)) setNonEmpty!19635))

(assert (= setNonEmpty!19635 b!2223394))

(assert (= (and mapNonEmpty!14105 ((_ is Cons!26071) mapValue!14105)) b!2223396))

(assert (= b!2223395 b!2223397))

(assert (= (and b!2223395 condSetEmpty!19635) setIsEmpty!19635))

(assert (= (and b!2223395 (not condSetEmpty!19635)) setNonEmpty!19634))

(assert (= setNonEmpty!19634 b!2223398))

(assert (= (and mapNonEmpty!14099 ((_ is Cons!26071) mapDefault!14105)) b!2223395))

(declare-fun m!2663583 () Bool)

(assert (=> mapNonEmpty!14105 m!2663583))

(declare-fun m!2663585 () Bool)

(assert (=> setNonEmpty!19634 m!2663585))

(declare-fun m!2663587 () Bool)

(assert (=> b!2223395 m!2663587))

(declare-fun m!2663589 () Bool)

(assert (=> setNonEmpty!19635 m!2663589))

(declare-fun m!2663591 () Bool)

(assert (=> b!2223396 m!2663591))

(declare-fun e!1420437 () Bool)

(declare-fun setRes!19636 () Bool)

(declare-fun setNonEmpty!19636 () Bool)

(declare-fun setElem!19636 () Context!3798)

(declare-fun tp!693696 () Bool)

(assert (=> setNonEmpty!19636 (= setRes!19636 (and tp!693696 (inv!35398 setElem!19636) e!1420437))))

(declare-fun setRest!19636 () (InoxSet Context!3798))

(assert (=> setNonEmpty!19636 (= (_2!15019 (h!31472 mapValue!14099)) ((_ map or) (store ((as const (Array Context!3798 Bool)) false) setElem!19636 true) setRest!19636))))

(declare-fun b!2223400 () Bool)

(declare-fun e!1420435 () Bool)

(declare-fun tp!693697 () Bool)

(assert (=> b!2223400 (= e!1420435 tp!693697)))

(declare-fun e!1420436 () Bool)

(assert (=> mapNonEmpty!14099 (= tp!693575 e!1420436)))

(declare-fun setIsEmpty!19636 () Bool)

(assert (=> setIsEmpty!19636 setRes!19636))

(declare-fun b!2223401 () Bool)

(declare-fun tp!693695 () Bool)

(assert (=> b!2223401 (= e!1420437 tp!693695)))

(declare-fun tp!693694 () Bool)

(declare-fun b!2223402 () Bool)

(assert (=> b!2223402 (= e!1420436 (and (inv!35398 (_1!15018 (_1!15019 (h!31472 mapValue!14099)))) e!1420435 tp_is_empty!9927 setRes!19636 tp!693694))))

(declare-fun condSetEmpty!19636 () Bool)

(assert (=> b!2223402 (= condSetEmpty!19636 (= (_2!15019 (h!31472 mapValue!14099)) ((as const (Array Context!3798 Bool)) false)))))

(assert (= b!2223402 b!2223400))

(assert (= (and b!2223402 condSetEmpty!19636) setIsEmpty!19636))

(assert (= (and b!2223402 (not condSetEmpty!19636)) setNonEmpty!19636))

(assert (= setNonEmpty!19636 b!2223401))

(assert (= (and mapNonEmpty!14099 ((_ is Cons!26071) mapValue!14099)) b!2223402))

(declare-fun m!2663593 () Bool)

(assert (=> setNonEmpty!19636 m!2663593))

(declare-fun m!2663595 () Bool)

(assert (=> b!2223402 m!2663595))

(check-sat (not b!2223264) (not b!2223267) (not b!2223375) (not mapNonEmpty!14105) (not b!2223326) (not setNonEmpty!19627) (not d!664287) (not b!2223353) (not b!2223278) (not b!2223376) (not b!2223372) (not d!664275) (not b!2223395) (not b!2223398) (not b!2223349) (not b!2223396) (not b!2223379) (not b!2223400) (not b!2223401) (not setNonEmpty!19628) (not b!2223262) (not b!2223339) (not setNonEmpty!19635) (not b!2223330) (not mapNonEmpty!14102) (not setNonEmpty!19629) (not b!2223399) (not b_next!65111) (not b!2223276) (not setNonEmpty!19636) (not d!664273) (not b!2223328) (not b!2223350) (not b_next!65109) (not d!664279) (not b!2223368) (not b!2223270) (not b!2223373) (not setNonEmpty!19615) (not b!2223394) (not b!2223329) (not b!2223369) b_and!174395 (not setNonEmpty!19616) (not setNonEmpty!19634) (not setNonEmpty!19621) (not b!2223313) (not b!2223402) (not b_next!65115) (not b!2223327) b_and!174391 b_and!174393 (not setNonEmpty!19620) (not b!2223348) (not setNonEmpty!19626) (not b!2223370) b_and!174389 (not setNonEmpty!19617) (not b_next!65113) (not b!2223331) (not b!2223338) (not b!2223374) (not bm!132804) (not b!2223336) (not b!2223378) (not b!2223352) (not b!2223351) (not b!2223337) (not b!2223317) (not b!2223377) tp_is_empty!9927 (not bm!132807) (not bm!132803) (not b!2223397) (not b!2223371))
(check-sat (not b_next!65111) (not b_next!65109) b_and!174395 b_and!174393 (not b_next!65115) b_and!174391 (not b_next!65113) b_and!174389)
