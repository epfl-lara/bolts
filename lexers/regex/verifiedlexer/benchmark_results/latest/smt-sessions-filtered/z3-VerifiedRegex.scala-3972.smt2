; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216648 () Bool)

(assert start!216648)

(declare-fun b!2220310 () Bool)

(declare-fun b_free!64321 () Bool)

(declare-fun b_next!65025 () Bool)

(assert (=> b!2220310 (= b_free!64321 (not b_next!65025))))

(declare-fun tp!691708 () Bool)

(declare-fun b_and!174281 () Bool)

(assert (=> b!2220310 (= tp!691708 b_and!174281)))

(declare-fun b!2220308 () Bool)

(declare-fun b_free!64323 () Bool)

(declare-fun b_next!65027 () Bool)

(assert (=> b!2220308 (= b_free!64323 (not b_next!65027))))

(declare-fun tp!691710 () Bool)

(declare-fun b_and!174283 () Bool)

(assert (=> b!2220308 (= tp!691710 b_and!174283)))

(declare-fun e!1417994 () Bool)

(declare-fun tp!691713 () Bool)

(declare-fun tp!691706 () Bool)

(declare-fun e!1417999 () Bool)

(declare-datatypes ((C!12816 0))(
  ( (C!12817 (val!7456 Int)) )
))
(declare-datatypes ((Regex!6335 0))(
  ( (ElementMatch!6335 (c!354535 C!12816)) (Concat!10673 (regOne!13182 Regex!6335) (regTwo!13182 Regex!6335)) (EmptyExpr!6335) (Star!6335 (reg!6664 Regex!6335)) (EmptyLang!6335) (Union!6335 (regOne!13183 Regex!6335) (regTwo!13183 Regex!6335)) )
))
(declare-datatypes ((List!26121 0))(
  ( (Nil!26027) (Cons!26027 (h!31428 Regex!6335) (t!199517 List!26121)) )
))
(declare-datatypes ((Context!3766 0))(
  ( (Context!3767 (exprs!2383 List!26121)) )
))
(declare-datatypes ((array!10163 0))(
  ( (array!10164 (arr!4528 (Array (_ BitVec 32) (_ BitVec 64))) (size!20305 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25166 0))(
  ( (tuple2!25167 (_1!14953 Context!3766) (_2!14953 C!12816)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25168 0))(
  ( (tuple2!25169 (_1!14954 tuple2!25166) (_2!14954 (InoxSet Context!3766))) )
))
(declare-datatypes ((List!26122 0))(
  ( (Nil!26028) (Cons!26028 (h!31429 tuple2!25168) (t!199518 List!26122)) )
))
(declare-datatypes ((array!10165 0))(
  ( (array!10166 (arr!4529 (Array (_ BitVec 32) List!26122)) (size!20306 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5932 0))(
  ( (LongMapFixedSize!5933 (defaultEntry!3331 Int) (mask!7487 (_ BitVec 32)) (extraKeys!3214 (_ BitVec 32)) (zeroValue!3224 List!26122) (minValue!3224 List!26122) (_size!5979 (_ BitVec 32)) (_keys!3263 array!10163) (_values!3246 array!10165) (_vacant!3027 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11681 0))(
  ( (Cell!11682 (v!29558 LongMapFixedSize!5932)) )
))
(declare-datatypes ((MutLongMap!2966 0))(
  ( (LongMap!2966 (underlying!6133 Cell!11681)) (MutLongMapExt!2965 (__x!17124 Int)) )
))
(declare-datatypes ((Cell!11683 0))(
  ( (Cell!11684 (v!29559 MutLongMap!2966)) )
))
(declare-datatypes ((Hashable!2876 0))(
  ( (HashableExt!2875 (__x!17125 Int)) )
))
(declare-datatypes ((MutableMap!2876 0))(
  ( (MutableMapExt!2875 (__x!17126 Int)) (HashMap!2876 (underlying!6134 Cell!11683) (hashF!4799 Hashable!2876) (_size!5980 (_ BitVec 32)) (defaultValue!3038 Int)) )
))
(declare-datatypes ((CacheUp!1892 0))(
  ( (CacheUp!1893 (cache!3257 MutableMap!2876)) )
))
(declare-fun cacheUp!790 () CacheUp!1892)

(declare-fun array_inv!3252 (array!10163) Bool)

(declare-fun array_inv!3253 (array!10165) Bool)

(assert (=> b!2220308 (= e!1417999 (and tp!691710 tp!691713 tp!691706 (array_inv!3252 (_keys!3263 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) (array_inv!3253 (_values!3246 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) e!1417994))))

(declare-fun b!2220309 () Bool)

(declare-fun e!1417992 () Bool)

(declare-fun tp!691712 () Bool)

(assert (=> b!2220309 (= e!1417992 tp!691712)))

(declare-fun mapIsEmpty!13995 () Bool)

(declare-fun mapRes!13995 () Bool)

(assert (=> mapIsEmpty!13995 mapRes!13995))

(declare-fun e!1417996 () Bool)

(declare-fun e!1417997 () Bool)

(assert (=> b!2220310 (= e!1417996 (and e!1417997 tp!691708))))

(declare-fun b!2220311 () Bool)

(declare-fun e!1417993 () Bool)

(assert (=> b!2220311 (= e!1417993 e!1417999)))

(declare-fun b!2220312 () Bool)

(declare-fun e!1417995 () Bool)

(assert (=> b!2220312 (= e!1417995 e!1417996)))

(declare-fun b!2220313 () Bool)

(declare-fun e!1417991 () Bool)

(assert (=> b!2220313 (= e!1417991 e!1417993)))

(declare-fun res!953377 () Bool)

(declare-fun e!1418000 () Bool)

(assert (=> start!216648 (=> (not res!953377) (not e!1418000))))

(declare-fun context!72 () Context!3766)

(declare-fun a!1149 () C!12816)

(get-info :version)

(declare-datatypes ((Option!5045 0))(
  ( (None!5044) (Some!5044 (v!29560 (InoxSet Context!3766))) )
))
(declare-fun get!7792 (CacheUp!1892 Context!3766 C!12816) Option!5045)

(assert (=> start!216648 (= res!953377 (not ((_ is Some!5044) (get!7792 cacheUp!790 context!72 a!1149))))))

(assert (=> start!216648 e!1418000))

(declare-fun inv!35342 (CacheUp!1892) Bool)

(assert (=> start!216648 (and (inv!35342 cacheUp!790) e!1417995)))

(declare-fun inv!35343 (Context!3766) Bool)

(assert (=> start!216648 (and (inv!35343 context!72) e!1417992)))

(declare-fun tp_is_empty!9899 () Bool)

(assert (=> start!216648 tp_is_empty!9899))

(declare-fun b!2220314 () Bool)

(declare-fun res!953378 () Bool)

(assert (=> b!2220314 (=> (not res!953378) (not e!1418000))))

(declare-fun nullable!1718 (Regex!6335) Bool)

(assert (=> b!2220314 (= res!953378 (nullable!1718 (h!31428 (exprs!2383 context!72))))))

(declare-fun mapNonEmpty!13995 () Bool)

(declare-fun tp!691707 () Bool)

(declare-fun tp!691709 () Bool)

(assert (=> mapNonEmpty!13995 (= mapRes!13995 (and tp!691707 tp!691709))))

(declare-fun mapRest!13995 () (Array (_ BitVec 32) List!26122))

(declare-fun mapValue!13995 () List!26122)

(declare-fun mapKey!13995 () (_ BitVec 32))

(assert (=> mapNonEmpty!13995 (= (arr!4529 (_values!3246 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) (store mapRest!13995 mapKey!13995 mapValue!13995))))

(declare-fun b!2220315 () Bool)

(declare-fun tp!691711 () Bool)

(assert (=> b!2220315 (= e!1417994 (and tp!691711 mapRes!13995))))

(declare-fun condMapEmpty!13995 () Bool)

(declare-fun mapDefault!13995 () List!26122)

(assert (=> b!2220315 (= condMapEmpty!13995 (= (arr!4529 (_values!3246 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26122)) mapDefault!13995)))))

(declare-fun b!2220316 () Bool)

(declare-fun lt!827387 () MutLongMap!2966)

(assert (=> b!2220316 (= e!1417997 (and e!1417991 ((_ is LongMap!2966) lt!827387)))))

(assert (=> b!2220316 (= lt!827387 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))

(declare-fun b!2220317 () Bool)

(declare-fun validRegex!2350 (Regex!6335) Bool)

(assert (=> b!2220317 (= e!1418000 (not (validRegex!2350 (h!31428 (exprs!2383 context!72)))))))

(declare-fun b!2220318 () Bool)

(declare-fun res!953376 () Bool)

(assert (=> b!2220318 (=> (not res!953376) (not e!1418000))))

(assert (=> b!2220318 (= res!953376 ((_ is Cons!26027) (exprs!2383 context!72)))))

(assert (= (and start!216648 res!953377) b!2220318))

(assert (= (and b!2220318 res!953376) b!2220314))

(assert (= (and b!2220314 res!953378) b!2220317))

(assert (= (and b!2220315 condMapEmpty!13995) mapIsEmpty!13995))

(assert (= (and b!2220315 (not condMapEmpty!13995)) mapNonEmpty!13995))

(assert (= b!2220308 b!2220315))

(assert (= b!2220311 b!2220308))

(assert (= b!2220313 b!2220311))

(assert (= (and b!2220316 ((_ is LongMap!2966) (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))) b!2220313))

(assert (= b!2220310 b!2220316))

(assert (= (and b!2220312 ((_ is HashMap!2876) (cache!3257 cacheUp!790))) b!2220310))

(assert (= start!216648 b!2220312))

(assert (= start!216648 b!2220309))

(declare-fun m!2660996 () Bool)

(assert (=> b!2220314 m!2660996))

(declare-fun m!2660998 () Bool)

(assert (=> mapNonEmpty!13995 m!2660998))

(declare-fun m!2661000 () Bool)

(assert (=> b!2220317 m!2661000))

(declare-fun m!2661002 () Bool)

(assert (=> start!216648 m!2661002))

(declare-fun m!2661004 () Bool)

(assert (=> start!216648 m!2661004))

(declare-fun m!2661006 () Bool)

(assert (=> start!216648 m!2661006))

(declare-fun m!2661008 () Bool)

(assert (=> b!2220308 m!2661008))

(declare-fun m!2661010 () Bool)

(assert (=> b!2220308 m!2661010))

(check-sat (not b!2220315) (not b_next!65025) b_and!174281 b_and!174283 (not b!2220308) (not b_next!65027) (not b!2220309) (not b!2220317) (not mapNonEmpty!13995) (not start!216648) (not b!2220314) tp_is_empty!9899)
(check-sat b_and!174281 b_and!174283 (not b_next!65025) (not b_next!65027))
(get-model)

(declare-fun b!2220337 () Bool)

(declare-fun e!1418019 () Bool)

(declare-fun e!1418017 () Bool)

(assert (=> b!2220337 (= e!1418019 e!1418017)))

(declare-fun res!953389 () Bool)

(assert (=> b!2220337 (= res!953389 (not (nullable!1718 (reg!6664 (h!31428 (exprs!2383 context!72))))))))

(assert (=> b!2220337 (=> (not res!953389) (not e!1418017))))

(declare-fun bm!132431 () Bool)

(declare-fun c!354541 () Bool)

(declare-fun c!354540 () Bool)

(declare-fun call!132437 () Bool)

(assert (=> bm!132431 (= call!132437 (validRegex!2350 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))))))

(declare-fun b!2220338 () Bool)

(declare-fun e!1418021 () Bool)

(declare-fun call!132436 () Bool)

(assert (=> b!2220338 (= e!1418021 call!132436)))

(declare-fun b!2220339 () Bool)

(declare-fun e!1418016 () Bool)

(assert (=> b!2220339 (= e!1418019 e!1418016)))

(assert (=> b!2220339 (= c!354541 ((_ is Union!6335) (h!31428 (exprs!2383 context!72))))))

(declare-fun b!2220340 () Bool)

(declare-fun e!1418018 () Bool)

(assert (=> b!2220340 (= e!1418018 e!1418019)))

(assert (=> b!2220340 (= c!354540 ((_ is Star!6335) (h!31428 (exprs!2383 context!72))))))

(declare-fun b!2220341 () Bool)

(declare-fun e!1418020 () Bool)

(declare-fun call!132438 () Bool)

(assert (=> b!2220341 (= e!1418020 call!132438)))

(declare-fun bm!132432 () Bool)

(assert (=> bm!132432 (= call!132438 (validRegex!2350 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))

(declare-fun b!2220342 () Bool)

(assert (=> b!2220342 (= e!1418017 call!132437)))

(declare-fun d!663731 () Bool)

(declare-fun res!953390 () Bool)

(assert (=> d!663731 (=> res!953390 e!1418018)))

(assert (=> d!663731 (= res!953390 ((_ is ElementMatch!6335) (h!31428 (exprs!2383 context!72))))))

(assert (=> d!663731 (= (validRegex!2350 (h!31428 (exprs!2383 context!72))) e!1418018)))

(declare-fun b!2220343 () Bool)

(declare-fun res!953392 () Bool)

(assert (=> b!2220343 (=> (not res!953392) (not e!1418020))))

(assert (=> b!2220343 (= res!953392 call!132436)))

(assert (=> b!2220343 (= e!1418016 e!1418020)))

(declare-fun bm!132433 () Bool)

(assert (=> bm!132433 (= call!132436 call!132437)))

(declare-fun b!2220344 () Bool)

(declare-fun res!953391 () Bool)

(declare-fun e!1418015 () Bool)

(assert (=> b!2220344 (=> res!953391 e!1418015)))

(assert (=> b!2220344 (= res!953391 (not ((_ is Concat!10673) (h!31428 (exprs!2383 context!72)))))))

(assert (=> b!2220344 (= e!1418016 e!1418015)))

(declare-fun b!2220345 () Bool)

(assert (=> b!2220345 (= e!1418015 e!1418021)))

(declare-fun res!953393 () Bool)

(assert (=> b!2220345 (=> (not res!953393) (not e!1418021))))

(assert (=> b!2220345 (= res!953393 call!132438)))

(assert (= (and d!663731 (not res!953390)) b!2220340))

(assert (= (and b!2220340 c!354540) b!2220337))

(assert (= (and b!2220340 (not c!354540)) b!2220339))

(assert (= (and b!2220337 res!953389) b!2220342))

(assert (= (and b!2220339 c!354541) b!2220343))

(assert (= (and b!2220339 (not c!354541)) b!2220344))

(assert (= (and b!2220343 res!953392) b!2220341))

(assert (= (and b!2220344 (not res!953391)) b!2220345))

(assert (= (and b!2220345 res!953393) b!2220338))

(assert (= (or b!2220341 b!2220345) bm!132432))

(assert (= (or b!2220343 b!2220338) bm!132433))

(assert (= (or b!2220342 bm!132433) bm!132431))

(declare-fun m!2661012 () Bool)

(assert (=> b!2220337 m!2661012))

(declare-fun m!2661014 () Bool)

(assert (=> bm!132431 m!2661014))

(declare-fun m!2661016 () Bool)

(assert (=> bm!132432 m!2661016))

(assert (=> b!2220317 d!663731))

(declare-fun d!663733 () Bool)

(declare-fun e!1418026 () Bool)

(assert (=> d!663733 e!1418026))

(declare-fun res!953396 () Bool)

(assert (=> d!663733 (=> res!953396 e!1418026)))

(declare-fun lt!827392 () Option!5045)

(declare-fun isEmpty!14868 (Option!5045) Bool)

(assert (=> d!663733 (= res!953396 (isEmpty!14868 lt!827392))))

(declare-fun e!1418027 () Option!5045)

(assert (=> d!663733 (= lt!827392 e!1418027)))

(declare-fun c!354544 () Bool)

(declare-fun contains!4318 (MutableMap!2876 tuple2!25166) Bool)

(assert (=> d!663733 (= c!354544 (contains!4318 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149)))))

(declare-fun validCacheMapUp!263 (MutableMap!2876) Bool)

(assert (=> d!663733 (validCacheMapUp!263 (cache!3257 cacheUp!790))))

(assert (=> d!663733 (= (get!7792 cacheUp!790 context!72 a!1149) lt!827392)))

(declare-fun b!2220352 () Bool)

(declare-fun apply!6436 (MutableMap!2876 tuple2!25166) (InoxSet Context!3766))

(assert (=> b!2220352 (= e!1418027 (Some!5044 (apply!6436 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149))))))

(declare-datatypes ((Unit!38970 0))(
  ( (Unit!38971) )
))
(declare-fun lt!827393 () Unit!38970)

(declare-fun lemmaIfInCacheThenValid!17 (CacheUp!1892 Context!3766 C!12816) Unit!38970)

(assert (=> b!2220352 (= lt!827393 (lemmaIfInCacheThenValid!17 cacheUp!790 context!72 a!1149))))

(declare-fun b!2220353 () Bool)

(assert (=> b!2220353 (= e!1418027 None!5044)))

(declare-fun b!2220354 () Bool)

(declare-fun get!7793 (Option!5045) (InoxSet Context!3766))

(declare-fun derivationStepZipperUp!14 (Context!3766 C!12816) (InoxSet Context!3766))

(assert (=> b!2220354 (= e!1418026 (= (get!7793 lt!827392) (derivationStepZipperUp!14 context!72 a!1149)))))

(assert (= (and d!663733 c!354544) b!2220352))

(assert (= (and d!663733 (not c!354544)) b!2220353))

(assert (= (and d!663733 (not res!953396)) b!2220354))

(declare-fun m!2661018 () Bool)

(assert (=> d!663733 m!2661018))

(declare-fun m!2661020 () Bool)

(assert (=> d!663733 m!2661020))

(declare-fun m!2661022 () Bool)

(assert (=> d!663733 m!2661022))

(declare-fun m!2661024 () Bool)

(assert (=> b!2220352 m!2661024))

(declare-fun m!2661026 () Bool)

(assert (=> b!2220352 m!2661026))

(declare-fun m!2661028 () Bool)

(assert (=> b!2220354 m!2661028))

(declare-fun m!2661030 () Bool)

(assert (=> b!2220354 m!2661030))

(assert (=> start!216648 d!663733))

(declare-fun d!663735 () Bool)

(declare-fun res!953399 () Bool)

(declare-fun e!1418030 () Bool)

(assert (=> d!663735 (=> (not res!953399) (not e!1418030))))

(assert (=> d!663735 (= res!953399 ((_ is HashMap!2876) (cache!3257 cacheUp!790)))))

(assert (=> d!663735 (= (inv!35342 cacheUp!790) e!1418030)))

(declare-fun b!2220357 () Bool)

(assert (=> b!2220357 (= e!1418030 (validCacheMapUp!263 (cache!3257 cacheUp!790)))))

(assert (= (and d!663735 res!953399) b!2220357))

(assert (=> b!2220357 m!2661022))

(assert (=> start!216648 d!663735))

(declare-fun d!663737 () Bool)

(declare-fun lambda!83774 () Int)

(declare-fun forall!5294 (List!26121 Int) Bool)

(assert (=> d!663737 (= (inv!35343 context!72) (forall!5294 (exprs!2383 context!72) lambda!83774))))

(declare-fun bs!452223 () Bool)

(assert (= bs!452223 d!663737))

(declare-fun m!2661032 () Bool)

(assert (=> bs!452223 m!2661032))

(assert (=> start!216648 d!663737))

(declare-fun d!663739 () Bool)

(assert (=> d!663739 (= (array_inv!3252 (_keys!3263 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) (bvsge (size!20305 (_keys!3263 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2220308 d!663739))

(declare-fun d!663741 () Bool)

(assert (=> d!663741 (= (array_inv!3253 (_values!3246 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) (bvsge (size!20306 (_values!3246 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2220308 d!663741))

(declare-fun d!663743 () Bool)

(declare-fun nullableFct!396 (Regex!6335) Bool)

(assert (=> d!663743 (= (nullable!1718 (h!31428 (exprs!2383 context!72))) (nullableFct!396 (h!31428 (exprs!2383 context!72))))))

(declare-fun bs!452224 () Bool)

(assert (= bs!452224 d!663743))

(declare-fun m!2661034 () Bool)

(assert (=> bs!452224 m!2661034))

(assert (=> b!2220314 d!663743))

(declare-fun b!2220362 () Bool)

(declare-fun e!1418033 () Bool)

(declare-fun tp!691718 () Bool)

(declare-fun tp!691719 () Bool)

(assert (=> b!2220362 (= e!1418033 (and tp!691718 tp!691719))))

(assert (=> b!2220309 (= tp!691712 e!1418033)))

(assert (= (and b!2220309 ((_ is Cons!26027) (exprs!2383 context!72))) b!2220362))

(declare-fun e!1418042 () Bool)

(declare-fun b!2220371 () Bool)

(declare-fun tp!691729 () Bool)

(declare-fun setRes!19371 () Bool)

(declare-fun e!1418040 () Bool)

(assert (=> b!2220371 (= e!1418040 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))) e!1418042 tp_is_empty!9899 setRes!19371 tp!691729))))

(declare-fun condSetEmpty!19371 () Bool)

(assert (=> b!2220371 (= condSetEmpty!19371 (= (_2!14954 (h!31429 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220372 () Bool)

(declare-fun tp!691728 () Bool)

(assert (=> b!2220372 (= e!1418042 tp!691728)))

(assert (=> b!2220308 (= tp!691713 e!1418040)))

(declare-fun b!2220373 () Bool)

(declare-fun e!1418041 () Bool)

(declare-fun tp!691730 () Bool)

(assert (=> b!2220373 (= e!1418041 tp!691730)))

(declare-fun setElem!19371 () Context!3766)

(declare-fun setNonEmpty!19371 () Bool)

(declare-fun tp!691731 () Bool)

(assert (=> setNonEmpty!19371 (= setRes!19371 (and tp!691731 (inv!35343 setElem!19371) e!1418041))))

(declare-fun setRest!19371 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19371 (= (_2!14954 (h!31429 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19371 true) setRest!19371))))

(declare-fun setIsEmpty!19371 () Bool)

(assert (=> setIsEmpty!19371 setRes!19371))

(assert (= b!2220371 b!2220372))

(assert (= (and b!2220371 condSetEmpty!19371) setIsEmpty!19371))

(assert (= (and b!2220371 (not condSetEmpty!19371)) setNonEmpty!19371))

(assert (= setNonEmpty!19371 b!2220373))

(assert (= (and b!2220308 ((_ is Cons!26028) (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))) b!2220371))

(declare-fun m!2661036 () Bool)

(assert (=> b!2220371 m!2661036))

(declare-fun m!2661038 () Bool)

(assert (=> setNonEmpty!19371 m!2661038))

(declare-fun e!1418043 () Bool)

(declare-fun setRes!19372 () Bool)

(declare-fun tp!691733 () Bool)

(declare-fun b!2220374 () Bool)

(declare-fun e!1418045 () Bool)

(assert (=> b!2220374 (= e!1418043 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))) e!1418045 tp_is_empty!9899 setRes!19372 tp!691733))))

(declare-fun condSetEmpty!19372 () Bool)

(assert (=> b!2220374 (= condSetEmpty!19372 (= (_2!14954 (h!31429 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220375 () Bool)

(declare-fun tp!691732 () Bool)

(assert (=> b!2220375 (= e!1418045 tp!691732)))

(assert (=> b!2220308 (= tp!691706 e!1418043)))

(declare-fun b!2220376 () Bool)

(declare-fun e!1418044 () Bool)

(declare-fun tp!691734 () Bool)

(assert (=> b!2220376 (= e!1418044 tp!691734)))

(declare-fun tp!691735 () Bool)

(declare-fun setNonEmpty!19372 () Bool)

(declare-fun setElem!19372 () Context!3766)

(assert (=> setNonEmpty!19372 (= setRes!19372 (and tp!691735 (inv!35343 setElem!19372) e!1418044))))

(declare-fun setRest!19372 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19372 (= (_2!14954 (h!31429 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19372 true) setRest!19372))))

(declare-fun setIsEmpty!19372 () Bool)

(assert (=> setIsEmpty!19372 setRes!19372))

(assert (= b!2220374 b!2220375))

(assert (= (and b!2220374 condSetEmpty!19372) setIsEmpty!19372))

(assert (= (and b!2220374 (not condSetEmpty!19372)) setNonEmpty!19372))

(assert (= setNonEmpty!19372 b!2220376))

(assert (= (and b!2220308 ((_ is Cons!26028) (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))) b!2220374))

(declare-fun m!2661040 () Bool)

(assert (=> b!2220374 m!2661040))

(declare-fun m!2661042 () Bool)

(assert (=> setNonEmpty!19372 m!2661042))

(declare-fun setRes!19373 () Bool)

(declare-fun e!1418046 () Bool)

(declare-fun tp!691737 () Bool)

(declare-fun e!1418048 () Bool)

(declare-fun b!2220377 () Bool)

(assert (=> b!2220377 (= e!1418046 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 mapDefault!13995)))) e!1418048 tp_is_empty!9899 setRes!19373 tp!691737))))

(declare-fun condSetEmpty!19373 () Bool)

(assert (=> b!2220377 (= condSetEmpty!19373 (= (_2!14954 (h!31429 mapDefault!13995)) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220378 () Bool)

(declare-fun tp!691736 () Bool)

(assert (=> b!2220378 (= e!1418048 tp!691736)))

(assert (=> b!2220315 (= tp!691711 e!1418046)))

(declare-fun b!2220379 () Bool)

(declare-fun e!1418047 () Bool)

(declare-fun tp!691738 () Bool)

(assert (=> b!2220379 (= e!1418047 tp!691738)))

(declare-fun setNonEmpty!19373 () Bool)

(declare-fun tp!691739 () Bool)

(declare-fun setElem!19373 () Context!3766)

(assert (=> setNonEmpty!19373 (= setRes!19373 (and tp!691739 (inv!35343 setElem!19373) e!1418047))))

(declare-fun setRest!19373 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19373 (= (_2!14954 (h!31429 mapDefault!13995)) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19373 true) setRest!19373))))

(declare-fun setIsEmpty!19373 () Bool)

(assert (=> setIsEmpty!19373 setRes!19373))

(assert (= b!2220377 b!2220378))

(assert (= (and b!2220377 condSetEmpty!19373) setIsEmpty!19373))

(assert (= (and b!2220377 (not condSetEmpty!19373)) setNonEmpty!19373))

(assert (= setNonEmpty!19373 b!2220379))

(assert (= (and b!2220315 ((_ is Cons!26028) mapDefault!13995)) b!2220377))

(declare-fun m!2661044 () Bool)

(assert (=> b!2220377 m!2661044))

(declare-fun m!2661046 () Bool)

(assert (=> setNonEmpty!19373 m!2661046))

(declare-fun mapDefault!13998 () List!26122)

(declare-fun e!1418066 () Bool)

(declare-fun b!2220394 () Bool)

(declare-fun e!1418064 () Bool)

(declare-fun tp!691760 () Bool)

(declare-fun setRes!19378 () Bool)

(assert (=> b!2220394 (= e!1418064 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 mapDefault!13998)))) e!1418066 tp_is_empty!9899 setRes!19378 tp!691760))))

(declare-fun condSetEmpty!19379 () Bool)

(assert (=> b!2220394 (= condSetEmpty!19379 (= (_2!14954 (h!31429 mapDefault!13998)) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220395 () Bool)

(declare-fun tp!691763 () Bool)

(assert (=> b!2220395 (= e!1418066 tp!691763)))

(declare-fun setIsEmpty!19378 () Bool)

(assert (=> setIsEmpty!19378 setRes!19378))

(declare-fun e!1418061 () Bool)

(declare-fun setNonEmpty!19378 () Bool)

(declare-fun setElem!19378 () Context!3766)

(declare-fun tp!691762 () Bool)

(assert (=> setNonEmpty!19378 (= setRes!19378 (and tp!691762 (inv!35343 setElem!19378) e!1418061))))

(declare-fun setRest!19379 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19378 (= (_2!14954 (h!31429 mapDefault!13998)) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19378 true) setRest!19379))))

(declare-fun mapIsEmpty!13998 () Bool)

(declare-fun mapRes!13998 () Bool)

(assert (=> mapIsEmpty!13998 mapRes!13998))

(declare-fun setElem!19379 () Context!3766)

(declare-fun tp!691761 () Bool)

(declare-fun setRes!19379 () Bool)

(declare-fun e!1418065 () Bool)

(declare-fun setNonEmpty!19379 () Bool)

(assert (=> setNonEmpty!19379 (= setRes!19379 (and tp!691761 (inv!35343 setElem!19379) e!1418065))))

(declare-fun mapValue!13998 () List!26122)

(declare-fun setRest!19378 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19379 (= (_2!14954 (h!31429 mapValue!13998)) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19379 true) setRest!19378))))

(declare-fun tp!691764 () Bool)

(declare-fun e!1418063 () Bool)

(declare-fun e!1418062 () Bool)

(declare-fun b!2220396 () Bool)

(assert (=> b!2220396 (= e!1418063 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 mapValue!13998)))) e!1418062 tp_is_empty!9899 setRes!19379 tp!691764))))

(declare-fun condSetEmpty!19378 () Bool)

(assert (=> b!2220396 (= condSetEmpty!19378 (= (_2!14954 (h!31429 mapValue!13998)) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun condMapEmpty!13998 () Bool)

(assert (=> mapNonEmpty!13995 (= condMapEmpty!13998 (= mapRest!13995 ((as const (Array (_ BitVec 32) List!26122)) mapDefault!13998)))))

(assert (=> mapNonEmpty!13995 (= tp!691707 (and e!1418064 mapRes!13998))))

(declare-fun b!2220397 () Bool)

(declare-fun tp!691766 () Bool)

(assert (=> b!2220397 (= e!1418062 tp!691766)))

(declare-fun mapNonEmpty!13998 () Bool)

(declare-fun tp!691758 () Bool)

(assert (=> mapNonEmpty!13998 (= mapRes!13998 (and tp!691758 e!1418063))))

(declare-fun mapKey!13998 () (_ BitVec 32))

(declare-fun mapRest!13998 () (Array (_ BitVec 32) List!26122))

(assert (=> mapNonEmpty!13998 (= mapRest!13995 (store mapRest!13998 mapKey!13998 mapValue!13998))))

(declare-fun setIsEmpty!19379 () Bool)

(assert (=> setIsEmpty!19379 setRes!19379))

(declare-fun b!2220398 () Bool)

(declare-fun tp!691765 () Bool)

(assert (=> b!2220398 (= e!1418065 tp!691765)))

(declare-fun b!2220399 () Bool)

(declare-fun tp!691759 () Bool)

(assert (=> b!2220399 (= e!1418061 tp!691759)))

(assert (= (and mapNonEmpty!13995 condMapEmpty!13998) mapIsEmpty!13998))

(assert (= (and mapNonEmpty!13995 (not condMapEmpty!13998)) mapNonEmpty!13998))

(assert (= b!2220396 b!2220397))

(assert (= (and b!2220396 condSetEmpty!19378) setIsEmpty!19379))

(assert (= (and b!2220396 (not condSetEmpty!19378)) setNonEmpty!19379))

(assert (= setNonEmpty!19379 b!2220398))

(assert (= (and mapNonEmpty!13998 ((_ is Cons!26028) mapValue!13998)) b!2220396))

(assert (= b!2220394 b!2220395))

(assert (= (and b!2220394 condSetEmpty!19379) setIsEmpty!19378))

(assert (= (and b!2220394 (not condSetEmpty!19379)) setNonEmpty!19378))

(assert (= setNonEmpty!19378 b!2220399))

(assert (= (and mapNonEmpty!13995 ((_ is Cons!26028) mapDefault!13998)) b!2220394))

(declare-fun m!2661048 () Bool)

(assert (=> b!2220396 m!2661048))

(declare-fun m!2661050 () Bool)

(assert (=> b!2220394 m!2661050))

(declare-fun m!2661052 () Bool)

(assert (=> mapNonEmpty!13998 m!2661052))

(declare-fun m!2661054 () Bool)

(assert (=> setNonEmpty!19379 m!2661054))

(declare-fun m!2661056 () Bool)

(assert (=> setNonEmpty!19378 m!2661056))

(declare-fun b!2220400 () Bool)

(declare-fun tp!691768 () Bool)

(declare-fun e!1418067 () Bool)

(declare-fun setRes!19380 () Bool)

(declare-fun e!1418069 () Bool)

(assert (=> b!2220400 (= e!1418067 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 mapValue!13995)))) e!1418069 tp_is_empty!9899 setRes!19380 tp!691768))))

(declare-fun condSetEmpty!19380 () Bool)

(assert (=> b!2220400 (= condSetEmpty!19380 (= (_2!14954 (h!31429 mapValue!13995)) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220401 () Bool)

(declare-fun tp!691767 () Bool)

(assert (=> b!2220401 (= e!1418069 tp!691767)))

(assert (=> mapNonEmpty!13995 (= tp!691709 e!1418067)))

(declare-fun b!2220402 () Bool)

(declare-fun e!1418068 () Bool)

(declare-fun tp!691769 () Bool)

(assert (=> b!2220402 (= e!1418068 tp!691769)))

(declare-fun setElem!19380 () Context!3766)

(declare-fun tp!691770 () Bool)

(declare-fun setNonEmpty!19380 () Bool)

(assert (=> setNonEmpty!19380 (= setRes!19380 (and tp!691770 (inv!35343 setElem!19380) e!1418068))))

(declare-fun setRest!19380 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19380 (= (_2!14954 (h!31429 mapValue!13995)) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19380 true) setRest!19380))))

(declare-fun setIsEmpty!19380 () Bool)

(assert (=> setIsEmpty!19380 setRes!19380))

(assert (= b!2220400 b!2220401))

(assert (= (and b!2220400 condSetEmpty!19380) setIsEmpty!19380))

(assert (= (and b!2220400 (not condSetEmpty!19380)) setNonEmpty!19380))

(assert (= setNonEmpty!19380 b!2220402))

(assert (= (and mapNonEmpty!13995 ((_ is Cons!26028) mapValue!13995)) b!2220400))

(declare-fun m!2661058 () Bool)

(assert (=> b!2220400 m!2661058))

(declare-fun m!2661060 () Bool)

(assert (=> setNonEmpty!19380 m!2661060))

(check-sat (not b!2220372) (not b!2220373) (not b_next!65025) b_and!174281 b_and!174283 (not b!2220374) (not b!2220378) (not setNonEmpty!19373) (not setNonEmpty!19379) (not b!2220362) (not b!2220396) (not b!2220401) (not b!2220376) (not b!2220337) (not b!2220402) (not b!2220371) (not b_next!65027) (not d!663737) (not setNonEmpty!19380) (not setNonEmpty!19378) (not b!2220375) (not b!2220357) (not bm!132431) (not mapNonEmpty!13998) (not b!2220354) (not b!2220398) (not bm!132432) (not b!2220394) (not b!2220395) (not b!2220400) (not b!2220399) (not d!663733) tp_is_empty!9899 (not b!2220379) (not b!2220352) (not b!2220397) (not setNonEmpty!19372) (not d!663743) (not b!2220377) (not setNonEmpty!19371))
(check-sat b_and!174281 b_and!174283 (not b_next!65025) (not b_next!65027))
(get-model)

(declare-fun b!2220403 () Bool)

(declare-fun e!1418074 () Bool)

(declare-fun e!1418072 () Bool)

(assert (=> b!2220403 (= e!1418074 e!1418072)))

(declare-fun res!953400 () Bool)

(assert (=> b!2220403 (= res!953400 (not (nullable!1718 (reg!6664 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))))

(assert (=> b!2220403 (=> (not res!953400) (not e!1418072))))

(declare-fun call!132440 () Bool)

(declare-fun bm!132434 () Bool)

(declare-fun c!354546 () Bool)

(declare-fun c!354545 () Bool)

(assert (=> bm!132434 (= call!132440 (validRegex!2350 (ite c!354545 (reg!6664 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))) (ite c!354546 (regOne!13183 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))) (regTwo!13182 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72)))))))))))

(declare-fun b!2220404 () Bool)

(declare-fun e!1418076 () Bool)

(declare-fun call!132439 () Bool)

(assert (=> b!2220404 (= e!1418076 call!132439)))

(declare-fun b!2220405 () Bool)

(declare-fun e!1418071 () Bool)

(assert (=> b!2220405 (= e!1418074 e!1418071)))

(assert (=> b!2220405 (= c!354546 ((_ is Union!6335) (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))

(declare-fun b!2220406 () Bool)

(declare-fun e!1418073 () Bool)

(assert (=> b!2220406 (= e!1418073 e!1418074)))

(assert (=> b!2220406 (= c!354545 ((_ is Star!6335) (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))

(declare-fun b!2220407 () Bool)

(declare-fun e!1418075 () Bool)

(declare-fun call!132441 () Bool)

(assert (=> b!2220407 (= e!1418075 call!132441)))

(declare-fun bm!132435 () Bool)

(assert (=> bm!132435 (= call!132441 (validRegex!2350 (ite c!354546 (regTwo!13183 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))) (regOne!13182 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))))

(declare-fun b!2220408 () Bool)

(assert (=> b!2220408 (= e!1418072 call!132440)))

(declare-fun d!663745 () Bool)

(declare-fun res!953401 () Bool)

(assert (=> d!663745 (=> res!953401 e!1418073)))

(assert (=> d!663745 (= res!953401 ((_ is ElementMatch!6335) (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))

(assert (=> d!663745 (= (validRegex!2350 (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))) e!1418073)))

(declare-fun b!2220409 () Bool)

(declare-fun res!953403 () Bool)

(assert (=> b!2220409 (=> (not res!953403) (not e!1418075))))

(assert (=> b!2220409 (= res!953403 call!132439)))

(assert (=> b!2220409 (= e!1418071 e!1418075)))

(declare-fun bm!132436 () Bool)

(assert (=> bm!132436 (= call!132439 call!132440)))

(declare-fun b!2220410 () Bool)

(declare-fun res!953402 () Bool)

(declare-fun e!1418070 () Bool)

(assert (=> b!2220410 (=> res!953402 e!1418070)))

(assert (=> b!2220410 (= res!953402 (not ((_ is Concat!10673) (ite c!354541 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72)))))))))

(assert (=> b!2220410 (= e!1418071 e!1418070)))

(declare-fun b!2220411 () Bool)

(assert (=> b!2220411 (= e!1418070 e!1418076)))

(declare-fun res!953404 () Bool)

(assert (=> b!2220411 (=> (not res!953404) (not e!1418076))))

(assert (=> b!2220411 (= res!953404 call!132441)))

(assert (= (and d!663745 (not res!953401)) b!2220406))

(assert (= (and b!2220406 c!354545) b!2220403))

(assert (= (and b!2220406 (not c!354545)) b!2220405))

(assert (= (and b!2220403 res!953400) b!2220408))

(assert (= (and b!2220405 c!354546) b!2220409))

(assert (= (and b!2220405 (not c!354546)) b!2220410))

(assert (= (and b!2220409 res!953403) b!2220407))

(assert (= (and b!2220410 (not res!953402)) b!2220411))

(assert (= (and b!2220411 res!953404) b!2220404))

(assert (= (or b!2220407 b!2220411) bm!132435))

(assert (= (or b!2220409 b!2220404) bm!132436))

(assert (= (or b!2220408 bm!132436) bm!132434))

(declare-fun m!2661062 () Bool)

(assert (=> b!2220403 m!2661062))

(declare-fun m!2661064 () Bool)

(assert (=> bm!132434 m!2661064))

(declare-fun m!2661066 () Bool)

(assert (=> bm!132435 m!2661066))

(assert (=> bm!132432 d!663745))

(declare-fun d!663747 () Bool)

(declare-fun res!953409 () Bool)

(declare-fun e!1418081 () Bool)

(assert (=> d!663747 (=> res!953409 e!1418081)))

(assert (=> d!663747 (= res!953409 ((_ is Nil!26027) (exprs!2383 context!72)))))

(assert (=> d!663747 (= (forall!5294 (exprs!2383 context!72) lambda!83774) e!1418081)))

(declare-fun b!2220416 () Bool)

(declare-fun e!1418082 () Bool)

(assert (=> b!2220416 (= e!1418081 e!1418082)))

(declare-fun res!953410 () Bool)

(assert (=> b!2220416 (=> (not res!953410) (not e!1418082))))

(declare-fun dynLambda!11499 (Int Regex!6335) Bool)

(assert (=> b!2220416 (= res!953410 (dynLambda!11499 lambda!83774 (h!31428 (exprs!2383 context!72))))))

(declare-fun b!2220417 () Bool)

(assert (=> b!2220417 (= e!1418082 (forall!5294 (t!199517 (exprs!2383 context!72)) lambda!83774))))

(assert (= (and d!663747 (not res!953409)) b!2220416))

(assert (= (and b!2220416 res!953410) b!2220417))

(declare-fun b_lambda!71513 () Bool)

(assert (=> (not b_lambda!71513) (not b!2220416)))

(declare-fun m!2661068 () Bool)

(assert (=> b!2220416 m!2661068))

(declare-fun m!2661070 () Bool)

(assert (=> b!2220417 m!2661070))

(assert (=> d!663737 d!663747))

(declare-fun d!663749 () Bool)

(declare-fun e!1418090 () Bool)

(assert (=> d!663749 e!1418090))

(declare-fun c!354553 () Bool)

(assert (=> d!663749 (= c!354553 (contains!4318 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149)))))

(declare-fun lt!827463 () (InoxSet Context!3766))

(declare-fun e!1418089 () (InoxSet Context!3766))

(assert (=> d!663749 (= lt!827463 e!1418089)))

(declare-fun c!354555 () Bool)

(assert (=> d!663749 (= c!354555 (not (contains!4318 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149))))))

(declare-fun valid!2291 (MutableMap!2876) Bool)

(assert (=> d!663749 (valid!2291 (cache!3257 cacheUp!790))))

(assert (=> d!663749 (= (apply!6436 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149)) lt!827463)))

(declare-fun b!2220430 () Bool)

(declare-fun getValueByKey!57 (List!26122 tuple2!25166) Option!5045)

(declare-datatypes ((ListMap!743 0))(
  ( (ListMap!744 (toList!1286 List!26122)) )
))
(declare-fun map!5275 (MutableMap!2876) ListMap!743)

(assert (=> b!2220430 (= e!1418090 (= lt!827463 (get!7793 (getValueByKey!57 (toList!1286 (map!5275 (cache!3257 cacheUp!790))) (tuple2!25167 context!72 a!1149)))))))

(declare-fun b!2220431 () Bool)

(declare-fun e!1418091 () Unit!38970)

(declare-fun Unit!38972 () Unit!38970)

(assert (=> b!2220431 (= e!1418091 Unit!38972)))

(declare-fun b!2220432 () Bool)

(assert (=> b!2220432 false))

(declare-fun lt!827469 () Unit!38970)

(declare-fun lt!827462 () Unit!38970)

(assert (=> b!2220432 (= lt!827469 lt!827462)))

(declare-datatypes ((tuple2!25170 0))(
  ( (tuple2!25171 (_1!14955 (_ BitVec 64)) (_2!14955 List!26122)) )
))
(declare-datatypes ((List!26123 0))(
  ( (Nil!26029) (Cons!26029 (h!31430 tuple2!25170) (t!199521 List!26123)) )
))
(declare-fun lt!827471 () List!26123)

(declare-fun lt!827455 () (_ BitVec 64))

(declare-fun lt!827479 () List!26122)

(declare-fun contains!4319 (List!26123 tuple2!25170) Bool)

(assert (=> b!2220432 (contains!4319 lt!827471 (tuple2!25171 lt!827455 lt!827479))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!21 (List!26123 (_ BitVec 64) List!26122) Unit!38970)

(assert (=> b!2220432 (= lt!827462 (lemmaGetValueByKeyImpliesContainsTuple!21 lt!827471 lt!827455 lt!827479))))

(declare-fun apply!6437 (MutLongMap!2966 (_ BitVec 64)) List!26122)

(assert (=> b!2220432 (= lt!827479 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827455))))

(declare-datatypes ((ListLongMap!283 0))(
  ( (ListLongMap!284 (toList!1287 List!26123)) )
))
(declare-fun map!5276 (MutLongMap!2966) ListLongMap!283)

(assert (=> b!2220432 (= lt!827471 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))

(declare-fun lt!827478 () Unit!38970)

(declare-fun lt!827465 () Unit!38970)

(assert (=> b!2220432 (= lt!827478 lt!827465)))

(declare-fun lt!827467 () List!26123)

(declare-datatypes ((Option!5046 0))(
  ( (None!5045) (Some!5045 (v!29561 List!26122)) )
))
(declare-fun isDefined!4116 (Option!5046) Bool)

(declare-fun getValueByKey!58 (List!26123 (_ BitVec 64)) Option!5046)

(assert (=> b!2220432 (isDefined!4116 (getValueByKey!58 lt!827467 lt!827455))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!38 (List!26123 (_ BitVec 64)) Unit!38970)

(assert (=> b!2220432 (= lt!827465 (lemmaContainsKeyImpliesGetValueByKeyDefined!38 lt!827467 lt!827455))))

(assert (=> b!2220432 (= lt!827467 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))

(declare-fun Unit!38973 () Unit!38970)

(assert (=> b!2220432 (= e!1418091 Unit!38973)))

(declare-fun b!2220433 () Bool)

(declare-fun dynLambda!11500 (Int tuple2!25166) (InoxSet Context!3766))

(assert (=> b!2220433 (= e!1418089 (dynLambda!11500 (defaultValue!3038 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(declare-fun b!2220434 () Bool)

(assert (=> b!2220434 (= e!1418090 (= lt!827463 (dynLambda!11500 (defaultValue!3038 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))))))

(declare-fun b!2220435 () Bool)

(declare-datatypes ((Option!5047 0))(
  ( (None!5046) (Some!5046 (v!29562 tuple2!25168)) )
))
(declare-fun get!7794 (Option!5047) tuple2!25168)

(declare-fun getPair!20 (List!26122 tuple2!25166) Option!5047)

(assert (=> b!2220435 (= e!1418089 (_2!14954 (get!7794 (getPair!20 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827455) (tuple2!25167 context!72 a!1149)))))))

(declare-fun hash!559 (Hashable!2876 tuple2!25166) (_ BitVec 64))

(assert (=> b!2220435 (= lt!827455 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(declare-fun c!354554 () Bool)

(assert (=> b!2220435 (= c!354554 (not (contains!4319 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))) (tuple2!25171 lt!827455 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827455)))))))

(declare-fun lt!827461 () Unit!38970)

(assert (=> b!2220435 (= lt!827461 e!1418091)))

(declare-fun lt!827456 () Unit!38970)

(declare-fun lambda!83781 () Int)

(declare-fun forallContained!767 (List!26123 Int tuple2!25170) Unit!38970)

(assert (=> b!2220435 (= lt!827456 (forallContained!767 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))) lambda!83781 (tuple2!25171 lt!827455 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827455))))))

(declare-fun lt!827470 () ListLongMap!283)

(assert (=> b!2220435 (= lt!827470 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))

(declare-fun lt!827464 () Unit!38970)

(declare-fun lemmaGetPairGetSameValueAsMap!10 (ListLongMap!283 tuple2!25166 (InoxSet Context!3766) Hashable!2876) Unit!38970)

(assert (=> b!2220435 (= lt!827464 (lemmaGetPairGetSameValueAsMap!10 lt!827470 (tuple2!25167 context!72 a!1149) (_2!14954 (get!7794 (getPair!20 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827455) (tuple2!25167 context!72 a!1149)))) (hashF!4799 (cache!3257 cacheUp!790))))))

(declare-fun lt!827482 () Unit!38970)

(declare-fun lemmaInGenMapThenLongMapContainsHash!10 (ListLongMap!283 tuple2!25166 Hashable!2876) Unit!38970)

(assert (=> b!2220435 (= lt!827482 (lemmaInGenMapThenLongMapContainsHash!10 lt!827470 (tuple2!25167 context!72 a!1149) (hashF!4799 (cache!3257 cacheUp!790))))))

(declare-fun contains!4320 (ListLongMap!283 (_ BitVec 64)) Bool)

(assert (=> b!2220435 (contains!4320 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(declare-fun lt!827475 () Unit!38970)

(assert (=> b!2220435 (= lt!827475 lt!827482)))

(declare-fun lt!827480 () (_ BitVec 64))

(assert (=> b!2220435 (= lt!827480 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(declare-fun lt!827459 () List!26122)

(declare-fun apply!6438 (ListLongMap!283 (_ BitVec 64)) List!26122)

(assert (=> b!2220435 (= lt!827459 (apply!6438 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))))))

(declare-fun lt!827454 () Unit!38970)

(declare-fun lemmaGetValueImpliesTupleContained!11 (ListLongMap!283 (_ BitVec 64) List!26122) Unit!38970)

(assert (=> b!2220435 (= lt!827454 (lemmaGetValueImpliesTupleContained!11 lt!827470 lt!827480 lt!827459))))

(assert (=> b!2220435 (contains!4319 (toList!1287 lt!827470) (tuple2!25171 lt!827480 lt!827459))))

(declare-fun lt!827468 () Unit!38970)

(assert (=> b!2220435 (= lt!827468 lt!827454)))

(declare-fun lt!827457 () Unit!38970)

(assert (=> b!2220435 (= lt!827457 (forallContained!767 (toList!1287 lt!827470) lambda!83781 (tuple2!25171 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)) (apply!6438 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))))))))

(declare-fun lt!827481 () Unit!38970)

(declare-fun lemmaInGenMapThenGetPairDefined!10 (ListLongMap!283 tuple2!25166 Hashable!2876) Unit!38970)

(assert (=> b!2220435 (= lt!827481 (lemmaInGenMapThenGetPairDefined!10 lt!827470 (tuple2!25167 context!72 a!1149) (hashF!4799 (cache!3257 cacheUp!790))))))

(declare-fun lt!827472 () Unit!38970)

(assert (=> b!2220435 (= lt!827472 (lemmaInGenMapThenLongMapContainsHash!10 lt!827470 (tuple2!25167 context!72 a!1149) (hashF!4799 (cache!3257 cacheUp!790))))))

(declare-fun lt!827473 () Unit!38970)

(assert (=> b!2220435 (= lt!827473 lt!827472)))

(declare-fun lt!827458 () (_ BitVec 64))

(assert (=> b!2220435 (= lt!827458 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(declare-fun lt!827466 () List!26122)

(assert (=> b!2220435 (= lt!827466 (apply!6438 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))))))

(declare-fun lt!827476 () Unit!38970)

(assert (=> b!2220435 (= lt!827476 (lemmaGetValueImpliesTupleContained!11 lt!827470 lt!827458 lt!827466))))

(assert (=> b!2220435 (contains!4319 (toList!1287 lt!827470) (tuple2!25171 lt!827458 lt!827466))))

(declare-fun lt!827460 () Unit!38970)

(assert (=> b!2220435 (= lt!827460 lt!827476)))

(declare-fun lt!827477 () Unit!38970)

(assert (=> b!2220435 (= lt!827477 (forallContained!767 (toList!1287 lt!827470) lambda!83781 (tuple2!25171 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)) (apply!6438 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))))))))

(declare-fun isDefined!4117 (Option!5047) Bool)

(assert (=> b!2220435 (isDefined!4117 (getPair!20 (apply!6438 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))) (tuple2!25167 context!72 a!1149)))))

(declare-fun lt!827483 () Unit!38970)

(assert (=> b!2220435 (= lt!827483 lt!827481)))

(declare-fun extractMap!89 (List!26123) ListMap!743)

(assert (=> b!2220435 (= (_2!14954 (get!7794 (getPair!20 (apply!6438 lt!827470 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149))) (tuple2!25167 context!72 a!1149)))) (get!7793 (getValueByKey!57 (toList!1286 (extractMap!89 (toList!1287 lt!827470))) (tuple2!25167 context!72 a!1149))))))

(declare-fun lt!827474 () Unit!38970)

(assert (=> b!2220435 (= lt!827474 lt!827464)))

(assert (= (and d!663749 c!354555) b!2220433))

(assert (= (and d!663749 (not c!354555)) b!2220435))

(assert (= (and b!2220435 c!354554) b!2220432))

(assert (= (and b!2220435 (not c!354554)) b!2220431))

(assert (= (and d!663749 c!354553) b!2220430))

(assert (= (and d!663749 (not c!354553)) b!2220434))

(declare-fun b_lambda!71515 () Bool)

(assert (=> (not b_lambda!71515) (not b!2220433)))

(declare-fun t!199520 () Bool)

(declare-fun tb!132837 () Bool)

(assert (=> (and b!2220310 (= (defaultValue!3038 (cache!3257 cacheUp!790)) (defaultValue!3038 (cache!3257 cacheUp!790))) t!199520) tb!132837))

(assert (=> b!2220433 t!199520))

(declare-fun result!161274 () Bool)

(declare-fun b_and!174285 () Bool)

(assert (= b_and!174281 (and (=> t!199520 result!161274) b_and!174285)))

(declare-fun b_lambda!71517 () Bool)

(assert (=> (not b_lambda!71517) (not b!2220434)))

(assert (=> b!2220434 t!199520))

(declare-fun b_and!174287 () Bool)

(assert (= b_and!174285 (and (=> t!199520 result!161274) b_and!174287)))

(declare-fun m!2661072 () Bool)

(assert (=> b!2220435 m!2661072))

(declare-fun m!2661074 () Bool)

(assert (=> b!2220435 m!2661074))

(declare-fun m!2661076 () Bool)

(assert (=> b!2220435 m!2661076))

(declare-fun m!2661078 () Bool)

(assert (=> b!2220435 m!2661078))

(declare-fun m!2661080 () Bool)

(assert (=> b!2220435 m!2661080))

(declare-fun m!2661082 () Bool)

(assert (=> b!2220435 m!2661082))

(declare-fun m!2661084 () Bool)

(assert (=> b!2220435 m!2661084))

(declare-fun m!2661086 () Bool)

(assert (=> b!2220435 m!2661086))

(declare-fun m!2661088 () Bool)

(assert (=> b!2220435 m!2661088))

(declare-fun m!2661090 () Bool)

(assert (=> b!2220435 m!2661090))

(assert (=> b!2220435 m!2661078))

(declare-fun m!2661092 () Bool)

(assert (=> b!2220435 m!2661092))

(declare-fun m!2661094 () Bool)

(assert (=> b!2220435 m!2661094))

(declare-fun m!2661096 () Bool)

(assert (=> b!2220435 m!2661096))

(assert (=> b!2220435 m!2661074))

(assert (=> b!2220435 m!2661076))

(declare-fun m!2661098 () Bool)

(assert (=> b!2220435 m!2661098))

(declare-fun m!2661100 () Bool)

(assert (=> b!2220435 m!2661100))

(declare-fun m!2661102 () Bool)

(assert (=> b!2220435 m!2661102))

(declare-fun m!2661104 () Bool)

(assert (=> b!2220435 m!2661104))

(assert (=> b!2220435 m!2661078))

(assert (=> b!2220435 m!2661088))

(declare-fun m!2661106 () Bool)

(assert (=> b!2220435 m!2661106))

(assert (=> b!2220435 m!2661106))

(declare-fun m!2661108 () Bool)

(assert (=> b!2220435 m!2661108))

(declare-fun m!2661110 () Bool)

(assert (=> b!2220435 m!2661110))

(declare-fun m!2661112 () Bool)

(assert (=> b!2220435 m!2661112))

(declare-fun m!2661114 () Bool)

(assert (=> b!2220435 m!2661114))

(assert (=> b!2220435 m!2661082))

(assert (=> b!2220435 m!2661082))

(assert (=> b!2220435 m!2661104))

(declare-fun m!2661116 () Bool)

(assert (=> b!2220435 m!2661116))

(declare-fun m!2661118 () Bool)

(assert (=> b!2220433 m!2661118))

(assert (=> b!2220432 m!2661074))

(declare-fun m!2661120 () Bool)

(assert (=> b!2220432 m!2661120))

(declare-fun m!2661122 () Bool)

(assert (=> b!2220432 m!2661122))

(declare-fun m!2661124 () Bool)

(assert (=> b!2220432 m!2661124))

(declare-fun m!2661126 () Bool)

(assert (=> b!2220432 m!2661126))

(declare-fun m!2661128 () Bool)

(assert (=> b!2220432 m!2661128))

(assert (=> b!2220432 m!2661108))

(assert (=> b!2220432 m!2661122))

(assert (=> b!2220434 m!2661118))

(assert (=> d!663749 m!2661020))

(declare-fun m!2661130 () Bool)

(assert (=> d!663749 m!2661130))

(declare-fun m!2661132 () Bool)

(assert (=> b!2220430 m!2661132))

(declare-fun m!2661134 () Bool)

(assert (=> b!2220430 m!2661134))

(assert (=> b!2220430 m!2661134))

(declare-fun m!2661136 () Bool)

(assert (=> b!2220430 m!2661136))

(assert (=> b!2220352 d!663749))

(declare-fun d!663751 () Bool)

(declare-fun e!1418100 () Bool)

(assert (=> d!663751 e!1418100))

(declare-fun res!953413 () Bool)

(assert (=> d!663751 (=> res!953413 e!1418100)))

(assert (=> d!663751 (= res!953413 (not (contains!4318 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149))))))

(declare-fun lt!827503 () Unit!38970)

(declare-fun e!1418099 () Unit!38970)

(assert (=> d!663751 (= lt!827503 e!1418099)))

(declare-fun c!354558 () Bool)

(assert (=> d!663751 (= c!354558 (contains!4318 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149)))))

(assert (=> d!663751 (validCacheMapUp!263 (cache!3257 cacheUp!790))))

(assert (=> d!663751 (= (lemmaIfInCacheThenValid!17 cacheUp!790 context!72 a!1149) lt!827503)))

(declare-fun b!2220442 () Bool)

(declare-fun lt!827504 () Unit!38970)

(assert (=> b!2220442 (= e!1418099 lt!827504)))

(declare-fun lt!827500 () tuple2!25166)

(assert (=> b!2220442 (= lt!827500 (tuple2!25167 context!72 a!1149))))

(declare-fun lambda!83784 () Int)

(declare-fun lemmaForallPairsThenForLookup!12 (MutableMap!2876 tuple2!25166 Int) Unit!38970)

(assert (=> b!2220442 (= lt!827504 (lemmaForallPairsThenForLookup!12 (cache!3257 cacheUp!790) lt!827500 lambda!83784))))

(declare-fun lt!827499 () tuple2!25168)

(assert (=> b!2220442 (= lt!827499 (tuple2!25169 lt!827500 (apply!6436 (cache!3257 cacheUp!790) lt!827500)))))

(declare-fun lt!827498 () tuple2!25166)

(assert (=> b!2220442 (= lt!827498 lt!827500)))

(declare-fun lt!827501 () (InoxSet Context!3766))

(assert (=> b!2220442 (= lt!827501 (apply!6436 (cache!3257 cacheUp!790) lt!827500))))

(declare-fun lt!827502 () (InoxSet Context!3766))

(assert (=> b!2220442 (= lt!827502 (apply!6436 (cache!3257 cacheUp!790) lt!827500))))

(assert (=> b!2220442 (= (apply!6436 (cache!3257 cacheUp!790) lt!827500) (derivationStepZipperUp!14 (_1!14953 lt!827500) (_2!14953 lt!827500)))))

(declare-fun b!2220443 () Bool)

(declare-fun Unit!38974 () Unit!38970)

(assert (=> b!2220443 (= e!1418099 Unit!38974)))

(declare-fun b!2220444 () Bool)

(assert (=> b!2220444 (= e!1418100 (= (derivationStepZipperUp!14 context!72 a!1149) (apply!6436 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149))))))

(assert (= (and d!663751 c!354558) b!2220442))

(assert (= (and d!663751 (not c!354558)) b!2220443))

(assert (= (and d!663751 (not res!953413)) b!2220444))

(assert (=> d!663751 m!2661020))

(assert (=> d!663751 m!2661022))

(declare-fun m!2661138 () Bool)

(assert (=> b!2220442 m!2661138))

(declare-fun m!2661140 () Bool)

(assert (=> b!2220442 m!2661140))

(declare-fun m!2661142 () Bool)

(assert (=> b!2220442 m!2661142))

(assert (=> b!2220444 m!2661030))

(assert (=> b!2220444 m!2661024))

(assert (=> b!2220352 d!663751))

(declare-fun bs!452225 () Bool)

(declare-fun d!663753 () Bool)

(assert (= bs!452225 (and d!663753 d!663737)))

(declare-fun lambda!83785 () Int)

(assert (=> bs!452225 (= lambda!83785 lambda!83774)))

(assert (=> d!663753 (= (inv!35343 (_1!14953 (_1!14954 (h!31429 mapDefault!13998)))) (forall!5294 (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapDefault!13998)))) lambda!83785))))

(declare-fun bs!452226 () Bool)

(assert (= bs!452226 d!663753))

(declare-fun m!2661144 () Bool)

(assert (=> bs!452226 m!2661144))

(assert (=> b!2220394 d!663753))

(declare-fun bs!452227 () Bool)

(declare-fun d!663755 () Bool)

(assert (= bs!452227 (and d!663755 d!663737)))

(declare-fun lambda!83786 () Int)

(assert (=> bs!452227 (= lambda!83786 lambda!83774)))

(declare-fun bs!452228 () Bool)

(assert (= bs!452228 (and d!663755 d!663753)))

(assert (=> bs!452228 (= lambda!83786 lambda!83785)))

(assert (=> d!663755 (= (inv!35343 setElem!19371) (forall!5294 (exprs!2383 setElem!19371) lambda!83786))))

(declare-fun bs!452229 () Bool)

(assert (= bs!452229 d!663755))

(declare-fun m!2661146 () Bool)

(assert (=> bs!452229 m!2661146))

(assert (=> setNonEmpty!19371 d!663755))

(declare-fun bs!452230 () Bool)

(declare-fun b!2220450 () Bool)

(assert (= bs!452230 (and b!2220450 b!2220442)))

(declare-fun lambda!83789 () Int)

(assert (=> bs!452230 (= lambda!83789 lambda!83784)))

(declare-fun d!663757 () Bool)

(declare-fun res!953418 () Bool)

(declare-fun e!1418103 () Bool)

(assert (=> d!663757 (=> (not res!953418) (not e!1418103))))

(assert (=> d!663757 (= res!953418 (valid!2291 (cache!3257 cacheUp!790)))))

(assert (=> d!663757 (= (validCacheMapUp!263 (cache!3257 cacheUp!790)) e!1418103)))

(declare-fun b!2220449 () Bool)

(declare-fun res!953419 () Bool)

(assert (=> b!2220449 (=> (not res!953419) (not e!1418103))))

(declare-fun invariantList!340 (List!26122) Bool)

(assert (=> b!2220449 (= res!953419 (invariantList!340 (toList!1286 (map!5275 (cache!3257 cacheUp!790)))))))

(declare-fun forall!5295 (List!26122 Int) Bool)

(assert (=> b!2220450 (= e!1418103 (forall!5295 (toList!1286 (map!5275 (cache!3257 cacheUp!790))) lambda!83789))))

(assert (= (and d!663757 res!953418) b!2220449))

(assert (= (and b!2220449 res!953419) b!2220450))

(assert (=> d!663757 m!2661130))

(assert (=> b!2220449 m!2661132))

(declare-fun m!2661149 () Bool)

(assert (=> b!2220449 m!2661149))

(assert (=> b!2220450 m!2661132))

(declare-fun m!2661151 () Bool)

(assert (=> b!2220450 m!2661151))

(assert (=> b!2220357 d!663757))

(declare-fun bs!452231 () Bool)

(declare-fun d!663759 () Bool)

(assert (= bs!452231 (and d!663759 d!663737)))

(declare-fun lambda!83790 () Int)

(assert (=> bs!452231 (= lambda!83790 lambda!83774)))

(declare-fun bs!452232 () Bool)

(assert (= bs!452232 (and d!663759 d!663753)))

(assert (=> bs!452232 (= lambda!83790 lambda!83785)))

(declare-fun bs!452233 () Bool)

(assert (= bs!452233 (and d!663759 d!663755)))

(assert (=> bs!452233 (= lambda!83790 lambda!83786)))

(assert (=> d!663759 (= (inv!35343 (_1!14953 (_1!14954 (h!31429 mapValue!13998)))) (forall!5294 (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapValue!13998)))) lambda!83790))))

(declare-fun bs!452234 () Bool)

(assert (= bs!452234 d!663759))

(declare-fun m!2661153 () Bool)

(assert (=> bs!452234 m!2661153))

(assert (=> b!2220396 d!663759))

(declare-fun bs!452235 () Bool)

(declare-fun d!663761 () Bool)

(assert (= bs!452235 (and d!663761 d!663737)))

(declare-fun lambda!83791 () Int)

(assert (=> bs!452235 (= lambda!83791 lambda!83774)))

(declare-fun bs!452236 () Bool)

(assert (= bs!452236 (and d!663761 d!663753)))

(assert (=> bs!452236 (= lambda!83791 lambda!83785)))

(declare-fun bs!452237 () Bool)

(assert (= bs!452237 (and d!663761 d!663755)))

(assert (=> bs!452237 (= lambda!83791 lambda!83786)))

(declare-fun bs!452238 () Bool)

(assert (= bs!452238 (and d!663761 d!663759)))

(assert (=> bs!452238 (= lambda!83791 lambda!83790)))

(assert (=> d!663761 (= (inv!35343 setElem!19372) (forall!5294 (exprs!2383 setElem!19372) lambda!83791))))

(declare-fun bs!452239 () Bool)

(assert (= bs!452239 d!663761))

(declare-fun m!2661155 () Bool)

(assert (=> bs!452239 m!2661155))

(assert (=> setNonEmpty!19372 d!663761))

(declare-fun bs!452240 () Bool)

(declare-fun d!663763 () Bool)

(assert (= bs!452240 (and d!663763 d!663753)))

(declare-fun lambda!83792 () Int)

(assert (=> bs!452240 (= lambda!83792 lambda!83785)))

(declare-fun bs!452241 () Bool)

(assert (= bs!452241 (and d!663763 d!663737)))

(assert (=> bs!452241 (= lambda!83792 lambda!83774)))

(declare-fun bs!452242 () Bool)

(assert (= bs!452242 (and d!663763 d!663755)))

(assert (=> bs!452242 (= lambda!83792 lambda!83786)))

(declare-fun bs!452243 () Bool)

(assert (= bs!452243 (and d!663763 d!663759)))

(assert (=> bs!452243 (= lambda!83792 lambda!83790)))

(declare-fun bs!452244 () Bool)

(assert (= bs!452244 (and d!663763 d!663761)))

(assert (=> bs!452244 (= lambda!83792 lambda!83791)))

(assert (=> d!663763 (= (inv!35343 (_1!14953 (_1!14954 (h!31429 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))) (forall!5294 (exprs!2383 (_1!14953 (_1!14954 (h!31429 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))) lambda!83792))))

(declare-fun bs!452245 () Bool)

(assert (= bs!452245 d!663763))

(declare-fun m!2661157 () Bool)

(assert (=> bs!452245 m!2661157))

(assert (=> b!2220371 d!663763))

(declare-fun b!2220451 () Bool)

(declare-fun e!1418108 () Bool)

(declare-fun e!1418106 () Bool)

(assert (=> b!2220451 (= e!1418108 e!1418106)))

(declare-fun res!953420 () Bool)

(assert (=> b!2220451 (= res!953420 (not (nullable!1718 (reg!6664 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))))))))

(assert (=> b!2220451 (=> (not res!953420) (not e!1418106))))

(declare-fun c!354559 () Bool)

(declare-fun bm!132437 () Bool)

(declare-fun c!354560 () Bool)

(declare-fun call!132443 () Bool)

(assert (=> bm!132437 (= call!132443 (validRegex!2350 (ite c!354559 (reg!6664 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))) (ite c!354560 (regOne!13183 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))) (regTwo!13182 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72))))))))))))

(declare-fun b!2220452 () Bool)

(declare-fun e!1418110 () Bool)

(declare-fun call!132442 () Bool)

(assert (=> b!2220452 (= e!1418110 call!132442)))

(declare-fun b!2220453 () Bool)

(declare-fun e!1418105 () Bool)

(assert (=> b!2220453 (= e!1418108 e!1418105)))

(assert (=> b!2220453 (= c!354560 ((_ is Union!6335) (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))))))

(declare-fun b!2220454 () Bool)

(declare-fun e!1418107 () Bool)

(assert (=> b!2220454 (= e!1418107 e!1418108)))

(assert (=> b!2220454 (= c!354559 ((_ is Star!6335) (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))))))

(declare-fun b!2220455 () Bool)

(declare-fun e!1418109 () Bool)

(declare-fun call!132444 () Bool)

(assert (=> b!2220455 (= e!1418109 call!132444)))

(declare-fun bm!132438 () Bool)

(assert (=> bm!132438 (= call!132444 (validRegex!2350 (ite c!354560 (regTwo!13183 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))) (regOne!13182 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))))))))

(declare-fun b!2220456 () Bool)

(assert (=> b!2220456 (= e!1418106 call!132443)))

(declare-fun d!663765 () Bool)

(declare-fun res!953421 () Bool)

(assert (=> d!663765 (=> res!953421 e!1418107)))

(assert (=> d!663765 (= res!953421 ((_ is ElementMatch!6335) (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))))))

(assert (=> d!663765 (= (validRegex!2350 (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72)))))) e!1418107)))

(declare-fun b!2220457 () Bool)

(declare-fun res!953423 () Bool)

(assert (=> b!2220457 (=> (not res!953423) (not e!1418109))))

(assert (=> b!2220457 (= res!953423 call!132442)))

(assert (=> b!2220457 (= e!1418105 e!1418109)))

(declare-fun bm!132439 () Bool)

(assert (=> bm!132439 (= call!132442 call!132443)))

(declare-fun b!2220458 () Bool)

(declare-fun res!953422 () Bool)

(declare-fun e!1418104 () Bool)

(assert (=> b!2220458 (=> res!953422 e!1418104)))

(assert (=> b!2220458 (= res!953422 (not ((_ is Concat!10673) (ite c!354540 (reg!6664 (h!31428 (exprs!2383 context!72))) (ite c!354541 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72))))))))))

(assert (=> b!2220458 (= e!1418105 e!1418104)))

(declare-fun b!2220459 () Bool)

(assert (=> b!2220459 (= e!1418104 e!1418110)))

(declare-fun res!953424 () Bool)

(assert (=> b!2220459 (=> (not res!953424) (not e!1418110))))

(assert (=> b!2220459 (= res!953424 call!132444)))

(assert (= (and d!663765 (not res!953421)) b!2220454))

(assert (= (and b!2220454 c!354559) b!2220451))

(assert (= (and b!2220454 (not c!354559)) b!2220453))

(assert (= (and b!2220451 res!953420) b!2220456))

(assert (= (and b!2220453 c!354560) b!2220457))

(assert (= (and b!2220453 (not c!354560)) b!2220458))

(assert (= (and b!2220457 res!953423) b!2220455))

(assert (= (and b!2220458 (not res!953422)) b!2220459))

(assert (= (and b!2220459 res!953424) b!2220452))

(assert (= (or b!2220455 b!2220459) bm!132438))

(assert (= (or b!2220457 b!2220452) bm!132439))

(assert (= (or b!2220456 bm!132439) bm!132437))

(declare-fun m!2661159 () Bool)

(assert (=> b!2220451 m!2661159))

(declare-fun m!2661161 () Bool)

(assert (=> bm!132437 m!2661161))

(declare-fun m!2661163 () Bool)

(assert (=> bm!132438 m!2661163))

(assert (=> bm!132431 d!663765))

(declare-fun bs!452246 () Bool)

(declare-fun d!663767 () Bool)

(assert (= bs!452246 (and d!663767 d!663753)))

(declare-fun lambda!83793 () Int)

(assert (=> bs!452246 (= lambda!83793 lambda!83785)))

(declare-fun bs!452247 () Bool)

(assert (= bs!452247 (and d!663767 d!663763)))

(assert (=> bs!452247 (= lambda!83793 lambda!83792)))

(declare-fun bs!452248 () Bool)

(assert (= bs!452248 (and d!663767 d!663737)))

(assert (=> bs!452248 (= lambda!83793 lambda!83774)))

(declare-fun bs!452249 () Bool)

(assert (= bs!452249 (and d!663767 d!663755)))

(assert (=> bs!452249 (= lambda!83793 lambda!83786)))

(declare-fun bs!452250 () Bool)

(assert (= bs!452250 (and d!663767 d!663759)))

(assert (=> bs!452250 (= lambda!83793 lambda!83790)))

(declare-fun bs!452251 () Bool)

(assert (= bs!452251 (and d!663767 d!663761)))

(assert (=> bs!452251 (= lambda!83793 lambda!83791)))

(assert (=> d!663767 (= (inv!35343 setElem!19379) (forall!5294 (exprs!2383 setElem!19379) lambda!83793))))

(declare-fun bs!452252 () Bool)

(assert (= bs!452252 d!663767))

(declare-fun m!2661165 () Bool)

(assert (=> bs!452252 m!2661165))

(assert (=> setNonEmpty!19379 d!663767))

(declare-fun bs!452253 () Bool)

(declare-fun d!663769 () Bool)

(assert (= bs!452253 (and d!663769 d!663753)))

(declare-fun lambda!83794 () Int)

(assert (=> bs!452253 (= lambda!83794 lambda!83785)))

(declare-fun bs!452254 () Bool)

(assert (= bs!452254 (and d!663769 d!663763)))

(assert (=> bs!452254 (= lambda!83794 lambda!83792)))

(declare-fun bs!452255 () Bool)

(assert (= bs!452255 (and d!663769 d!663767)))

(assert (=> bs!452255 (= lambda!83794 lambda!83793)))

(declare-fun bs!452256 () Bool)

(assert (= bs!452256 (and d!663769 d!663737)))

(assert (=> bs!452256 (= lambda!83794 lambda!83774)))

(declare-fun bs!452257 () Bool)

(assert (= bs!452257 (and d!663769 d!663755)))

(assert (=> bs!452257 (= lambda!83794 lambda!83786)))

(declare-fun bs!452258 () Bool)

(assert (= bs!452258 (and d!663769 d!663759)))

(assert (=> bs!452258 (= lambda!83794 lambda!83790)))

(declare-fun bs!452259 () Bool)

(assert (= bs!452259 (and d!663769 d!663761)))

(assert (=> bs!452259 (= lambda!83794 lambda!83791)))

(assert (=> d!663769 (= (inv!35343 setElem!19373) (forall!5294 (exprs!2383 setElem!19373) lambda!83794))))

(declare-fun bs!452260 () Bool)

(assert (= bs!452260 d!663769))

(declare-fun m!2661167 () Bool)

(assert (=> bs!452260 m!2661167))

(assert (=> setNonEmpty!19373 d!663769))

(declare-fun b!2220474 () Bool)

(declare-fun e!1418127 () Bool)

(declare-fun e!1418126 () Bool)

(assert (=> b!2220474 (= e!1418127 e!1418126)))

(declare-fun res!953438 () Bool)

(declare-fun call!132449 () Bool)

(assert (=> b!2220474 (= res!953438 call!132449)))

(assert (=> b!2220474 (=> res!953438 e!1418126)))

(declare-fun bm!132444 () Bool)

(declare-fun call!132450 () Bool)

(declare-fun c!354563 () Bool)

(assert (=> bm!132444 (= call!132450 (nullable!1718 (ite c!354563 (regTwo!13183 (h!31428 (exprs!2383 context!72))) (regTwo!13182 (h!31428 (exprs!2383 context!72))))))))

(declare-fun b!2220475 () Bool)

(declare-fun e!1418128 () Bool)

(declare-fun e!1418123 () Bool)

(assert (=> b!2220475 (= e!1418128 e!1418123)))

(declare-fun res!953437 () Bool)

(assert (=> b!2220475 (=> res!953437 e!1418123)))

(assert (=> b!2220475 (= res!953437 ((_ is Star!6335) (h!31428 (exprs!2383 context!72))))))

(declare-fun b!2220477 () Bool)

(declare-fun e!1418124 () Bool)

(assert (=> b!2220477 (= e!1418127 e!1418124)))

(declare-fun res!953439 () Bool)

(assert (=> b!2220477 (= res!953439 call!132449)))

(assert (=> b!2220477 (=> (not res!953439) (not e!1418124))))

(declare-fun b!2220478 () Bool)

(assert (=> b!2220478 (= e!1418124 call!132450)))

(declare-fun bm!132445 () Bool)

(assert (=> bm!132445 (= call!132449 (nullable!1718 (ite c!354563 (regOne!13183 (h!31428 (exprs!2383 context!72))) (regOne!13182 (h!31428 (exprs!2383 context!72))))))))

(declare-fun b!2220479 () Bool)

(declare-fun e!1418125 () Bool)

(assert (=> b!2220479 (= e!1418125 e!1418128)))

(declare-fun res!953435 () Bool)

(assert (=> b!2220479 (=> (not res!953435) (not e!1418128))))

(assert (=> b!2220479 (= res!953435 (and (not ((_ is EmptyLang!6335) (h!31428 (exprs!2383 context!72)))) (not ((_ is ElementMatch!6335) (h!31428 (exprs!2383 context!72))))))))

(declare-fun b!2220480 () Bool)

(assert (=> b!2220480 (= e!1418126 call!132450)))

(declare-fun b!2220476 () Bool)

(assert (=> b!2220476 (= e!1418123 e!1418127)))

(assert (=> b!2220476 (= c!354563 ((_ is Union!6335) (h!31428 (exprs!2383 context!72))))))

(declare-fun d!663771 () Bool)

(declare-fun res!953436 () Bool)

(assert (=> d!663771 (=> res!953436 e!1418125)))

(assert (=> d!663771 (= res!953436 ((_ is EmptyExpr!6335) (h!31428 (exprs!2383 context!72))))))

(assert (=> d!663771 (= (nullableFct!396 (h!31428 (exprs!2383 context!72))) e!1418125)))

(assert (= (and d!663771 (not res!953436)) b!2220479))

(assert (= (and b!2220479 res!953435) b!2220475))

(assert (= (and b!2220475 (not res!953437)) b!2220476))

(assert (= (and b!2220476 c!354563) b!2220474))

(assert (= (and b!2220476 (not c!354563)) b!2220477))

(assert (= (and b!2220474 (not res!953438)) b!2220480))

(assert (= (and b!2220477 res!953439) b!2220478))

(assert (= (or b!2220474 b!2220477) bm!132445))

(assert (= (or b!2220480 b!2220478) bm!132444))

(declare-fun m!2661169 () Bool)

(assert (=> bm!132444 m!2661169))

(declare-fun m!2661171 () Bool)

(assert (=> bm!132445 m!2661171))

(assert (=> d!663743 d!663771))

(declare-fun bs!452261 () Bool)

(declare-fun d!663773 () Bool)

(assert (= bs!452261 (and d!663773 d!663753)))

(declare-fun lambda!83795 () Int)

(assert (=> bs!452261 (= lambda!83795 lambda!83785)))

(declare-fun bs!452262 () Bool)

(assert (= bs!452262 (and d!663773 d!663763)))

(assert (=> bs!452262 (= lambda!83795 lambda!83792)))

(declare-fun bs!452263 () Bool)

(assert (= bs!452263 (and d!663773 d!663767)))

(assert (=> bs!452263 (= lambda!83795 lambda!83793)))

(declare-fun bs!452264 () Bool)

(assert (= bs!452264 (and d!663773 d!663737)))

(assert (=> bs!452264 (= lambda!83795 lambda!83774)))

(declare-fun bs!452265 () Bool)

(assert (= bs!452265 (and d!663773 d!663769)))

(assert (=> bs!452265 (= lambda!83795 lambda!83794)))

(declare-fun bs!452266 () Bool)

(assert (= bs!452266 (and d!663773 d!663755)))

(assert (=> bs!452266 (= lambda!83795 lambda!83786)))

(declare-fun bs!452267 () Bool)

(assert (= bs!452267 (and d!663773 d!663759)))

(assert (=> bs!452267 (= lambda!83795 lambda!83790)))

(declare-fun bs!452268 () Bool)

(assert (= bs!452268 (and d!663773 d!663761)))

(assert (=> bs!452268 (= lambda!83795 lambda!83791)))

(assert (=> d!663773 (= (inv!35343 (_1!14953 (_1!14954 (h!31429 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))) (forall!5294 (exprs!2383 (_1!14953 (_1!14954 (h!31429 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))) lambda!83795))))

(declare-fun bs!452269 () Bool)

(assert (= bs!452269 d!663773))

(declare-fun m!2661173 () Bool)

(assert (=> bs!452269 m!2661173))

(assert (=> b!2220374 d!663773))

(declare-fun d!663775 () Bool)

(assert (=> d!663775 (= (nullable!1718 (reg!6664 (h!31428 (exprs!2383 context!72)))) (nullableFct!396 (reg!6664 (h!31428 (exprs!2383 context!72)))))))

(declare-fun bs!452270 () Bool)

(assert (= bs!452270 d!663775))

(declare-fun m!2661175 () Bool)

(assert (=> bs!452270 m!2661175))

(assert (=> b!2220337 d!663775))

(declare-fun bs!452271 () Bool)

(declare-fun d!663777 () Bool)

(assert (= bs!452271 (and d!663777 d!663753)))

(declare-fun lambda!83796 () Int)

(assert (=> bs!452271 (= lambda!83796 lambda!83785)))

(declare-fun bs!452272 () Bool)

(assert (= bs!452272 (and d!663777 d!663763)))

(assert (=> bs!452272 (= lambda!83796 lambda!83792)))

(declare-fun bs!452273 () Bool)

(assert (= bs!452273 (and d!663777 d!663767)))

(assert (=> bs!452273 (= lambda!83796 lambda!83793)))

(declare-fun bs!452274 () Bool)

(assert (= bs!452274 (and d!663777 d!663737)))

(assert (=> bs!452274 (= lambda!83796 lambda!83774)))

(declare-fun bs!452275 () Bool)

(assert (= bs!452275 (and d!663777 d!663769)))

(assert (=> bs!452275 (= lambda!83796 lambda!83794)))

(declare-fun bs!452276 () Bool)

(assert (= bs!452276 (and d!663777 d!663755)))

(assert (=> bs!452276 (= lambda!83796 lambda!83786)))

(declare-fun bs!452277 () Bool)

(assert (= bs!452277 (and d!663777 d!663759)))

(assert (=> bs!452277 (= lambda!83796 lambda!83790)))

(declare-fun bs!452278 () Bool)

(assert (= bs!452278 (and d!663777 d!663773)))

(assert (=> bs!452278 (= lambda!83796 lambda!83795)))

(declare-fun bs!452279 () Bool)

(assert (= bs!452279 (and d!663777 d!663761)))

(assert (=> bs!452279 (= lambda!83796 lambda!83791)))

(assert (=> d!663777 (= (inv!35343 setElem!19380) (forall!5294 (exprs!2383 setElem!19380) lambda!83796))))

(declare-fun bs!452280 () Bool)

(assert (= bs!452280 d!663777))

(declare-fun m!2661177 () Bool)

(assert (=> bs!452280 m!2661177))

(assert (=> setNonEmpty!19380 d!663777))

(declare-fun bs!452281 () Bool)

(declare-fun d!663779 () Bool)

(assert (= bs!452281 (and d!663779 d!663753)))

(declare-fun lambda!83797 () Int)

(assert (=> bs!452281 (= lambda!83797 lambda!83785)))

(declare-fun bs!452282 () Bool)

(assert (= bs!452282 (and d!663779 d!663763)))

(assert (=> bs!452282 (= lambda!83797 lambda!83792)))

(declare-fun bs!452283 () Bool)

(assert (= bs!452283 (and d!663779 d!663767)))

(assert (=> bs!452283 (= lambda!83797 lambda!83793)))

(declare-fun bs!452284 () Bool)

(assert (= bs!452284 (and d!663779 d!663737)))

(assert (=> bs!452284 (= lambda!83797 lambda!83774)))

(declare-fun bs!452285 () Bool)

(assert (= bs!452285 (and d!663779 d!663777)))

(assert (=> bs!452285 (= lambda!83797 lambda!83796)))

(declare-fun bs!452286 () Bool)

(assert (= bs!452286 (and d!663779 d!663769)))

(assert (=> bs!452286 (= lambda!83797 lambda!83794)))

(declare-fun bs!452287 () Bool)

(assert (= bs!452287 (and d!663779 d!663755)))

(assert (=> bs!452287 (= lambda!83797 lambda!83786)))

(declare-fun bs!452288 () Bool)

(assert (= bs!452288 (and d!663779 d!663759)))

(assert (=> bs!452288 (= lambda!83797 lambda!83790)))

(declare-fun bs!452289 () Bool)

(assert (= bs!452289 (and d!663779 d!663773)))

(assert (=> bs!452289 (= lambda!83797 lambda!83795)))

(declare-fun bs!452290 () Bool)

(assert (= bs!452290 (and d!663779 d!663761)))

(assert (=> bs!452290 (= lambda!83797 lambda!83791)))

(assert (=> d!663779 (= (inv!35343 (_1!14953 (_1!14954 (h!31429 mapDefault!13995)))) (forall!5294 (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapDefault!13995)))) lambda!83797))))

(declare-fun bs!452291 () Bool)

(assert (= bs!452291 d!663779))

(declare-fun m!2661179 () Bool)

(assert (=> bs!452291 m!2661179))

(assert (=> b!2220377 d!663779))

(declare-fun bs!452292 () Bool)

(declare-fun d!663781 () Bool)

(assert (= bs!452292 (and d!663781 d!663753)))

(declare-fun lambda!83798 () Int)

(assert (=> bs!452292 (= lambda!83798 lambda!83785)))

(declare-fun bs!452293 () Bool)

(assert (= bs!452293 (and d!663781 d!663763)))

(assert (=> bs!452293 (= lambda!83798 lambda!83792)))

(declare-fun bs!452294 () Bool)

(assert (= bs!452294 (and d!663781 d!663767)))

(assert (=> bs!452294 (= lambda!83798 lambda!83793)))

(declare-fun bs!452295 () Bool)

(assert (= bs!452295 (and d!663781 d!663737)))

(assert (=> bs!452295 (= lambda!83798 lambda!83774)))

(declare-fun bs!452296 () Bool)

(assert (= bs!452296 (and d!663781 d!663777)))

(assert (=> bs!452296 (= lambda!83798 lambda!83796)))

(declare-fun bs!452297 () Bool)

(assert (= bs!452297 (and d!663781 d!663769)))

(assert (=> bs!452297 (= lambda!83798 lambda!83794)))

(declare-fun bs!452298 () Bool)

(assert (= bs!452298 (and d!663781 d!663755)))

(assert (=> bs!452298 (= lambda!83798 lambda!83786)))

(declare-fun bs!452299 () Bool)

(assert (= bs!452299 (and d!663781 d!663759)))

(assert (=> bs!452299 (= lambda!83798 lambda!83790)))

(declare-fun bs!452300 () Bool)

(assert (= bs!452300 (and d!663781 d!663773)))

(assert (=> bs!452300 (= lambda!83798 lambda!83795)))

(declare-fun bs!452301 () Bool)

(assert (= bs!452301 (and d!663781 d!663779)))

(assert (=> bs!452301 (= lambda!83798 lambda!83797)))

(declare-fun bs!452302 () Bool)

(assert (= bs!452302 (and d!663781 d!663761)))

(assert (=> bs!452302 (= lambda!83798 lambda!83791)))

(assert (=> d!663781 (= (inv!35343 setElem!19378) (forall!5294 (exprs!2383 setElem!19378) lambda!83798))))

(declare-fun bs!452303 () Bool)

(assert (= bs!452303 d!663781))

(declare-fun m!2661181 () Bool)

(assert (=> bs!452303 m!2661181))

(assert (=> setNonEmpty!19378 d!663781))

(declare-fun bs!452304 () Bool)

(declare-fun d!663783 () Bool)

(assert (= bs!452304 (and d!663783 d!663753)))

(declare-fun lambda!83799 () Int)

(assert (=> bs!452304 (= lambda!83799 lambda!83785)))

(declare-fun bs!452305 () Bool)

(assert (= bs!452305 (and d!663783 d!663763)))

(assert (=> bs!452305 (= lambda!83799 lambda!83792)))

(declare-fun bs!452306 () Bool)

(assert (= bs!452306 (and d!663783 d!663767)))

(assert (=> bs!452306 (= lambda!83799 lambda!83793)))

(declare-fun bs!452307 () Bool)

(assert (= bs!452307 (and d!663783 d!663737)))

(assert (=> bs!452307 (= lambda!83799 lambda!83774)))

(declare-fun bs!452308 () Bool)

(assert (= bs!452308 (and d!663783 d!663777)))

(assert (=> bs!452308 (= lambda!83799 lambda!83796)))

(declare-fun bs!452309 () Bool)

(assert (= bs!452309 (and d!663783 d!663769)))

(assert (=> bs!452309 (= lambda!83799 lambda!83794)))

(declare-fun bs!452310 () Bool)

(assert (= bs!452310 (and d!663783 d!663755)))

(assert (=> bs!452310 (= lambda!83799 lambda!83786)))

(declare-fun bs!452311 () Bool)

(assert (= bs!452311 (and d!663783 d!663759)))

(assert (=> bs!452311 (= lambda!83799 lambda!83790)))

(declare-fun bs!452312 () Bool)

(assert (= bs!452312 (and d!663783 d!663781)))

(assert (=> bs!452312 (= lambda!83799 lambda!83798)))

(declare-fun bs!452313 () Bool)

(assert (= bs!452313 (and d!663783 d!663773)))

(assert (=> bs!452313 (= lambda!83799 lambda!83795)))

(declare-fun bs!452314 () Bool)

(assert (= bs!452314 (and d!663783 d!663779)))

(assert (=> bs!452314 (= lambda!83799 lambda!83797)))

(declare-fun bs!452315 () Bool)

(assert (= bs!452315 (and d!663783 d!663761)))

(assert (=> bs!452315 (= lambda!83799 lambda!83791)))

(assert (=> d!663783 (= (inv!35343 (_1!14953 (_1!14954 (h!31429 mapValue!13995)))) (forall!5294 (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapValue!13995)))) lambda!83799))))

(declare-fun bs!452316 () Bool)

(assert (= bs!452316 d!663783))

(declare-fun m!2661183 () Bool)

(assert (=> bs!452316 m!2661183))

(assert (=> b!2220400 d!663783))

(declare-fun d!663785 () Bool)

(assert (=> d!663785 (= (isEmpty!14868 lt!827392) (not ((_ is Some!5044) lt!827392)))))

(assert (=> d!663733 d!663785))

(declare-fun bs!452317 () Bool)

(declare-fun b!2220510 () Bool)

(assert (= bs!452317 (and b!2220510 b!2220435)))

(declare-fun lambda!83802 () Int)

(assert (=> bs!452317 (= lambda!83802 lambda!83781)))

(declare-fun b!2220503 () Bool)

(declare-fun e!1418147 () Bool)

(declare-fun lt!827560 () (_ BitVec 64))

(assert (=> b!2220503 (= e!1418147 (isDefined!4117 (getPair!20 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827560) (tuple2!25167 context!72 a!1149))))))

(declare-fun b!2220504 () Bool)

(declare-fun e!1418143 () Unit!38970)

(declare-fun Unit!38975 () Unit!38970)

(assert (=> b!2220504 (= e!1418143 Unit!38975)))

(declare-fun b!2220505 () Bool)

(assert (=> b!2220505 false))

(declare-fun lt!827558 () Unit!38970)

(declare-fun lt!827559 () Unit!38970)

(assert (=> b!2220505 (= lt!827558 lt!827559)))

(declare-fun lt!827548 () List!26123)

(declare-fun lt!827545 () List!26122)

(assert (=> b!2220505 (contains!4319 lt!827548 (tuple2!25171 lt!827560 lt!827545))))

(assert (=> b!2220505 (= lt!827559 (lemmaGetValueByKeyImpliesContainsTuple!21 lt!827548 lt!827560 lt!827545))))

(assert (=> b!2220505 (= lt!827545 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827560))))

(assert (=> b!2220505 (= lt!827548 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))

(declare-fun lt!827561 () Unit!38970)

(declare-fun lt!827564 () Unit!38970)

(assert (=> b!2220505 (= lt!827561 lt!827564)))

(declare-fun lt!827562 () List!26123)

(assert (=> b!2220505 (isDefined!4116 (getValueByKey!58 lt!827562 lt!827560))))

(assert (=> b!2220505 (= lt!827564 (lemmaContainsKeyImpliesGetValueByKeyDefined!38 lt!827562 lt!827560))))

(assert (=> b!2220505 (= lt!827562 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))

(declare-fun lt!827553 () Unit!38970)

(declare-fun lt!827555 () Unit!38970)

(assert (=> b!2220505 (= lt!827553 lt!827555)))

(declare-fun lt!827554 () List!26123)

(declare-fun containsKey!61 (List!26123 (_ BitVec 64)) Bool)

(assert (=> b!2220505 (containsKey!61 lt!827554 lt!827560)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!21 (List!26123 (_ BitVec 64)) Unit!38970)

(assert (=> b!2220505 (= lt!827555 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!21 lt!827554 lt!827560))))

(assert (=> b!2220505 (= lt!827554 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))

(declare-fun Unit!38976 () Unit!38970)

(assert (=> b!2220505 (= e!1418143 Unit!38976)))

(declare-fun b!2220506 () Bool)

(declare-fun e!1418144 () Unit!38970)

(declare-fun Unit!38977 () Unit!38970)

(assert (=> b!2220506 (= e!1418144 Unit!38977)))

(declare-fun bm!132458 () Bool)

(declare-fun call!132468 () Bool)

(declare-fun call!132467 () Option!5047)

(assert (=> bm!132458 (= call!132468 (isDefined!4117 call!132467))))

(declare-fun b!2220507 () Bool)

(declare-fun e!1418145 () Unit!38970)

(assert (=> b!2220507 (= e!1418145 e!1418144)))

(declare-fun res!953446 () Bool)

(declare-fun call!132465 () Bool)

(assert (=> b!2220507 (= res!953446 call!132465)))

(declare-fun e!1418146 () Bool)

(assert (=> b!2220507 (=> (not res!953446) (not e!1418146))))

(declare-fun c!354573 () Bool)

(assert (=> b!2220507 (= c!354573 e!1418146)))

(declare-fun b!2220508 () Bool)

(assert (=> b!2220508 (= e!1418146 call!132468)))

(declare-fun b!2220509 () Bool)

(declare-fun e!1418149 () Unit!38970)

(declare-fun Unit!38978 () Unit!38970)

(assert (=> b!2220509 (= e!1418149 Unit!38978)))

(assert (=> b!2220510 (= e!1418149 (forallContained!767 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))) lambda!83802 (tuple2!25171 lt!827560 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827560))))))

(declare-fun c!354572 () Bool)

(assert (=> b!2220510 (= c!354572 (not (contains!4319 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))) (tuple2!25171 lt!827560 (apply!6437 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827560)))))))

(declare-fun lt!827556 () Unit!38970)

(assert (=> b!2220510 (= lt!827556 e!1418143)))

(declare-fun c!354575 () Bool)

(declare-fun call!132464 () List!26122)

(declare-fun lt!827552 () ListLongMap!283)

(declare-fun bm!132459 () Bool)

(declare-fun call!132463 () (_ BitVec 64))

(declare-fun call!132466 () ListLongMap!283)

(assert (=> bm!132459 (= call!132464 (apply!6438 (ite c!354575 lt!827552 call!132466) call!132463))))

(declare-fun bm!132460 () Bool)

(assert (=> bm!132460 (= call!132466 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))

(declare-fun b!2220512 () Bool)

(declare-fun lt!827557 () Unit!38970)

(assert (=> b!2220512 (= e!1418145 lt!827557)))

(assert (=> b!2220512 (= lt!827552 call!132466)))

(declare-fun lemmaInGenericMapThenInLongMap!20 (ListLongMap!283 tuple2!25166 Hashable!2876) Unit!38970)

(assert (=> b!2220512 (= lt!827557 (lemmaInGenericMapThenInLongMap!20 lt!827552 (tuple2!25167 context!72 a!1149) (hashF!4799 (cache!3257 cacheUp!790))))))

(declare-fun res!953448 () Bool)

(assert (=> b!2220512 (= res!953448 call!132465)))

(declare-fun e!1418148 () Bool)

(assert (=> b!2220512 (=> (not res!953448) (not e!1418148))))

(assert (=> b!2220512 e!1418148))

(declare-fun b!2220511 () Bool)

(assert (=> b!2220511 false))

(declare-fun lt!827549 () Unit!38970)

(declare-fun lt!827546 () Unit!38970)

(assert (=> b!2220511 (= lt!827549 lt!827546)))

(declare-fun lt!827547 () ListLongMap!283)

(declare-fun contains!4321 (ListMap!743 tuple2!25166) Bool)

(assert (=> b!2220511 (contains!4321 (extractMap!89 (toList!1287 lt!827547)) (tuple2!25167 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!20 (ListLongMap!283 tuple2!25166 Hashable!2876) Unit!38970)

(assert (=> b!2220511 (= lt!827546 (lemmaInLongMapThenInGenericMap!20 lt!827547 (tuple2!25167 context!72 a!1149) (hashF!4799 (cache!3257 cacheUp!790))))))

(assert (=> b!2220511 (= lt!827547 call!132466)))

(declare-fun Unit!38979 () Unit!38970)

(assert (=> b!2220511 (= e!1418144 Unit!38979)))

(declare-fun d!663787 () Bool)

(declare-fun lt!827563 () Bool)

(assert (=> d!663787 (= lt!827563 (contains!4321 (map!5275 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(assert (=> d!663787 (= lt!827563 e!1418147)))

(declare-fun res!953447 () Bool)

(assert (=> d!663787 (=> (not res!953447) (not e!1418147))))

(declare-fun contains!4322 (MutLongMap!2966 (_ BitVec 64)) Bool)

(assert (=> d!663787 (= res!953447 (contains!4322 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827560))))

(declare-fun lt!827551 () Unit!38970)

(assert (=> d!663787 (= lt!827551 e!1418145)))

(assert (=> d!663787 (= c!354575 (contains!4321 (extractMap!89 (toList!1287 (map!5276 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))) (tuple2!25167 context!72 a!1149)))))

(declare-fun lt!827550 () Unit!38970)

(assert (=> d!663787 (= lt!827550 e!1418149)))

(declare-fun c!354574 () Bool)

(assert (=> d!663787 (= c!354574 (contains!4322 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))) lt!827560))))

(assert (=> d!663787 (= lt!827560 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(assert (=> d!663787 (valid!2291 (cache!3257 cacheUp!790))))

(assert (=> d!663787 (= (contains!4318 (cache!3257 cacheUp!790) (tuple2!25167 context!72 a!1149)) lt!827563)))

(declare-fun bm!132461 () Bool)

(assert (=> bm!132461 (= call!132465 (contains!4320 (ite c!354575 lt!827552 call!132466) call!132463))))

(declare-fun bm!132462 () Bool)

(assert (=> bm!132462 (= call!132463 (hash!559 (hashF!4799 (cache!3257 cacheUp!790)) (tuple2!25167 context!72 a!1149)))))

(declare-fun bm!132463 () Bool)

(assert (=> bm!132463 (= call!132467 (getPair!20 call!132464 (tuple2!25167 context!72 a!1149)))))

(declare-fun b!2220513 () Bool)

(assert (=> b!2220513 (= e!1418148 call!132468)))

(assert (= (and d!663787 c!354574) b!2220510))

(assert (= (and d!663787 (not c!354574)) b!2220509))

(assert (= (and b!2220510 c!354572) b!2220505))

(assert (= (and b!2220510 (not c!354572)) b!2220504))

(assert (= (and d!663787 c!354575) b!2220512))

(assert (= (and d!663787 (not c!354575)) b!2220507))

(assert (= (and b!2220512 res!953448) b!2220513))

(assert (= (and b!2220507 res!953446) b!2220508))

(assert (= (and b!2220507 c!354573) b!2220511))

(assert (= (and b!2220507 (not c!354573)) b!2220506))

(assert (= (or b!2220512 b!2220513 b!2220507 b!2220508) bm!132462))

(assert (= (or b!2220512 b!2220507 b!2220508 b!2220511) bm!132460))

(assert (= (or b!2220513 b!2220508) bm!132459))

(assert (= (or b!2220512 b!2220507) bm!132461))

(assert (= (or b!2220513 b!2220508) bm!132463))

(assert (= (or b!2220513 b!2220508) bm!132458))

(assert (= (and d!663787 res!953447) b!2220503))

(declare-fun m!2661185 () Bool)

(assert (=> b!2220511 m!2661185))

(assert (=> b!2220511 m!2661185))

(declare-fun m!2661187 () Bool)

(assert (=> b!2220511 m!2661187))

(declare-fun m!2661189 () Bool)

(assert (=> b!2220511 m!2661189))

(assert (=> bm!132460 m!2661108))

(declare-fun m!2661191 () Bool)

(assert (=> b!2220505 m!2661191))

(assert (=> b!2220505 m!2661108))

(declare-fun m!2661193 () Bool)

(assert (=> b!2220505 m!2661193))

(declare-fun m!2661195 () Bool)

(assert (=> b!2220505 m!2661195))

(declare-fun m!2661197 () Bool)

(assert (=> b!2220505 m!2661197))

(declare-fun m!2661199 () Bool)

(assert (=> b!2220505 m!2661199))

(declare-fun m!2661201 () Bool)

(assert (=> b!2220505 m!2661201))

(assert (=> b!2220505 m!2661199))

(declare-fun m!2661203 () Bool)

(assert (=> b!2220505 m!2661203))

(declare-fun m!2661205 () Bool)

(assert (=> b!2220505 m!2661205))

(declare-fun m!2661207 () Bool)

(assert (=> b!2220512 m!2661207))

(assert (=> bm!132462 m!2661082))

(declare-fun m!2661209 () Bool)

(assert (=> bm!132459 m!2661209))

(declare-fun m!2661211 () Bool)

(assert (=> bm!132461 m!2661211))

(declare-fun m!2661213 () Bool)

(assert (=> bm!132458 m!2661213))

(declare-fun m!2661215 () Bool)

(assert (=> bm!132463 m!2661215))

(assert (=> b!2220503 m!2661205))

(assert (=> b!2220503 m!2661205))

(declare-fun m!2661217 () Bool)

(assert (=> b!2220503 m!2661217))

(assert (=> b!2220503 m!2661217))

(declare-fun m!2661219 () Bool)

(assert (=> b!2220503 m!2661219))

(assert (=> b!2220510 m!2661108))

(assert (=> b!2220510 m!2661205))

(declare-fun m!2661221 () Bool)

(assert (=> b!2220510 m!2661221))

(declare-fun m!2661223 () Bool)

(assert (=> b!2220510 m!2661223))

(declare-fun m!2661225 () Bool)

(assert (=> d!663787 m!2661225))

(assert (=> d!663787 m!2661130))

(assert (=> d!663787 m!2661082))

(assert (=> d!663787 m!2661108))

(assert (=> d!663787 m!2661132))

(declare-fun m!2661227 () Bool)

(assert (=> d!663787 m!2661227))

(declare-fun m!2661229 () Bool)

(assert (=> d!663787 m!2661229))

(assert (=> d!663787 m!2661225))

(declare-fun m!2661231 () Bool)

(assert (=> d!663787 m!2661231))

(assert (=> d!663787 m!2661132))

(assert (=> d!663733 d!663787))

(assert (=> d!663733 d!663757))

(declare-fun d!663789 () Bool)

(assert (=> d!663789 (= (get!7793 lt!827392) (v!29560 lt!827392))))

(assert (=> b!2220354 d!663789))

(declare-fun b!2220524 () Bool)

(declare-fun e!1418158 () (InoxSet Context!3766))

(declare-fun call!132471 () (InoxSet Context!3766))

(assert (=> b!2220524 (= e!1418158 call!132471)))

(declare-fun b!2220525 () Bool)

(assert (=> b!2220525 (= e!1418158 ((as const (Array Context!3766 Bool)) false))))

(declare-fun bm!132466 () Bool)

(declare-fun derivationStepZipperDown!15 (Regex!6335 Context!3766 C!12816) (InoxSet Context!3766))

(assert (=> bm!132466 (= call!132471 (derivationStepZipperDown!15 (h!31428 (exprs!2383 context!72)) (Context!3767 (t!199517 (exprs!2383 context!72))) a!1149))))

(declare-fun e!1418157 () (InoxSet Context!3766))

(declare-fun b!2220526 () Bool)

(assert (=> b!2220526 (= e!1418157 ((_ map or) call!132471 (derivationStepZipperUp!14 (Context!3767 (t!199517 (exprs!2383 context!72))) a!1149)))))

(declare-fun b!2220527 () Bool)

(assert (=> b!2220527 (= e!1418157 e!1418158)))

(declare-fun c!354581 () Bool)

(assert (=> b!2220527 (= c!354581 ((_ is Cons!26027) (exprs!2383 context!72)))))

(declare-fun b!2220528 () Bool)

(declare-fun e!1418156 () Bool)

(assert (=> b!2220528 (= e!1418156 (nullable!1718 (h!31428 (exprs!2383 context!72))))))

(declare-fun d!663791 () Bool)

(declare-fun c!354580 () Bool)

(assert (=> d!663791 (= c!354580 e!1418156)))

(declare-fun res!953451 () Bool)

(assert (=> d!663791 (=> (not res!953451) (not e!1418156))))

(assert (=> d!663791 (= res!953451 ((_ is Cons!26027) (exprs!2383 context!72)))))

(assert (=> d!663791 (= (derivationStepZipperUp!14 context!72 a!1149) e!1418157)))

(assert (= (and d!663791 res!953451) b!2220528))

(assert (= (and d!663791 c!354580) b!2220526))

(assert (= (and d!663791 (not c!354580)) b!2220527))

(assert (= (and b!2220527 c!354581) b!2220524))

(assert (= (and b!2220527 (not c!354581)) b!2220525))

(assert (= (or b!2220526 b!2220524) bm!132466))

(declare-fun m!2661233 () Bool)

(assert (=> bm!132466 m!2661233))

(declare-fun m!2661235 () Bool)

(assert (=> b!2220526 m!2661235))

(assert (=> b!2220528 m!2660996))

(assert (=> b!2220354 d!663791))

(declare-fun b!2220529 () Bool)

(declare-fun tp!691772 () Bool)

(declare-fun e!1418159 () Bool)

(declare-fun e!1418161 () Bool)

(declare-fun setRes!19381 () Bool)

(assert (=> b!2220529 (= e!1418159 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (t!199518 mapDefault!13998))))) e!1418161 tp_is_empty!9899 setRes!19381 tp!691772))))

(declare-fun condSetEmpty!19381 () Bool)

(assert (=> b!2220529 (= condSetEmpty!19381 (= (_2!14954 (h!31429 (t!199518 mapDefault!13998))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220530 () Bool)

(declare-fun tp!691771 () Bool)

(assert (=> b!2220530 (= e!1418161 tp!691771)))

(assert (=> b!2220394 (= tp!691760 e!1418159)))

(declare-fun b!2220531 () Bool)

(declare-fun e!1418160 () Bool)

(declare-fun tp!691773 () Bool)

(assert (=> b!2220531 (= e!1418160 tp!691773)))

(declare-fun tp!691774 () Bool)

(declare-fun setNonEmpty!19381 () Bool)

(declare-fun setElem!19381 () Context!3766)

(assert (=> setNonEmpty!19381 (= setRes!19381 (and tp!691774 (inv!35343 setElem!19381) e!1418160))))

(declare-fun setRest!19381 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19381 (= (_2!14954 (h!31429 (t!199518 mapDefault!13998))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19381 true) setRest!19381))))

(declare-fun setIsEmpty!19381 () Bool)

(assert (=> setIsEmpty!19381 setRes!19381))

(assert (= b!2220529 b!2220530))

(assert (= (and b!2220529 condSetEmpty!19381) setIsEmpty!19381))

(assert (= (and b!2220529 (not condSetEmpty!19381)) setNonEmpty!19381))

(assert (= setNonEmpty!19381 b!2220531))

(assert (= (and b!2220394 ((_ is Cons!26028) (t!199518 mapDefault!13998))) b!2220529))

(declare-fun m!2661237 () Bool)

(assert (=> b!2220529 m!2661237))

(declare-fun m!2661239 () Bool)

(assert (=> setNonEmpty!19381 m!2661239))

(declare-fun b!2220543 () Bool)

(declare-fun e!1418164 () Bool)

(declare-fun tp!691787 () Bool)

(declare-fun tp!691788 () Bool)

(assert (=> b!2220543 (= e!1418164 (and tp!691787 tp!691788))))

(assert (=> b!2220362 (= tp!691718 e!1418164)))

(declare-fun b!2220545 () Bool)

(declare-fun tp!691786 () Bool)

(declare-fun tp!691789 () Bool)

(assert (=> b!2220545 (= e!1418164 (and tp!691786 tp!691789))))

(declare-fun b!2220542 () Bool)

(assert (=> b!2220542 (= e!1418164 tp_is_empty!9899)))

(declare-fun b!2220544 () Bool)

(declare-fun tp!691785 () Bool)

(assert (=> b!2220544 (= e!1418164 tp!691785)))

(assert (= (and b!2220362 ((_ is ElementMatch!6335) (h!31428 (exprs!2383 context!72)))) b!2220542))

(assert (= (and b!2220362 ((_ is Concat!10673) (h!31428 (exprs!2383 context!72)))) b!2220543))

(assert (= (and b!2220362 ((_ is Star!6335) (h!31428 (exprs!2383 context!72)))) b!2220544))

(assert (= (and b!2220362 ((_ is Union!6335) (h!31428 (exprs!2383 context!72)))) b!2220545))

(declare-fun b!2220546 () Bool)

(declare-fun e!1418165 () Bool)

(declare-fun tp!691790 () Bool)

(declare-fun tp!691791 () Bool)

(assert (=> b!2220546 (= e!1418165 (and tp!691790 tp!691791))))

(assert (=> b!2220362 (= tp!691719 e!1418165)))

(assert (= (and b!2220362 ((_ is Cons!26027) (t!199517 (exprs!2383 context!72)))) b!2220546))

(declare-fun b!2220547 () Bool)

(declare-fun setRes!19382 () Bool)

(declare-fun tp!691793 () Bool)

(declare-fun e!1418168 () Bool)

(declare-fun e!1418166 () Bool)

(assert (=> b!2220547 (= e!1418166 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (t!199518 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))))) e!1418168 tp_is_empty!9899 setRes!19382 tp!691793))))

(declare-fun condSetEmpty!19382 () Bool)

(assert (=> b!2220547 (= condSetEmpty!19382 (= (_2!14954 (h!31429 (t!199518 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220548 () Bool)

(declare-fun tp!691792 () Bool)

(assert (=> b!2220548 (= e!1418168 tp!691792)))

(assert (=> b!2220371 (= tp!691729 e!1418166)))

(declare-fun b!2220549 () Bool)

(declare-fun e!1418167 () Bool)

(declare-fun tp!691794 () Bool)

(assert (=> b!2220549 (= e!1418167 tp!691794)))

(declare-fun tp!691795 () Bool)

(declare-fun setNonEmpty!19382 () Bool)

(declare-fun setElem!19382 () Context!3766)

(assert (=> setNonEmpty!19382 (= setRes!19382 (and tp!691795 (inv!35343 setElem!19382) e!1418167))))

(declare-fun setRest!19382 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19382 (= (_2!14954 (h!31429 (t!199518 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19382 true) setRest!19382))))

(declare-fun setIsEmpty!19382 () Bool)

(assert (=> setIsEmpty!19382 setRes!19382))

(assert (= b!2220547 b!2220548))

(assert (= (and b!2220547 condSetEmpty!19382) setIsEmpty!19382))

(assert (= (and b!2220547 (not condSetEmpty!19382)) setNonEmpty!19382))

(assert (= setNonEmpty!19382 b!2220549))

(assert (= (and b!2220371 ((_ is Cons!26028) (t!199518 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))) b!2220547))

(declare-fun m!2661241 () Bool)

(assert (=> b!2220547 m!2661241))

(declare-fun m!2661243 () Bool)

(assert (=> setNonEmpty!19382 m!2661243))

(declare-fun condSetEmpty!19385 () Bool)

(assert (=> setNonEmpty!19379 (= condSetEmpty!19385 (= setRest!19378 ((as const (Array Context!3766 Bool)) false)))))

(declare-fun setRes!19385 () Bool)

(assert (=> setNonEmpty!19379 (= tp!691761 setRes!19385)))

(declare-fun setIsEmpty!19385 () Bool)

(assert (=> setIsEmpty!19385 setRes!19385))

(declare-fun setElem!19385 () Context!3766)

(declare-fun setNonEmpty!19385 () Bool)

(declare-fun tp!691800 () Bool)

(declare-fun e!1418171 () Bool)

(assert (=> setNonEmpty!19385 (= setRes!19385 (and tp!691800 (inv!35343 setElem!19385) e!1418171))))

(declare-fun setRest!19385 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19385 (= setRest!19378 ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19385 true) setRest!19385))))

(declare-fun b!2220554 () Bool)

(declare-fun tp!691801 () Bool)

(assert (=> b!2220554 (= e!1418171 tp!691801)))

(assert (= (and setNonEmpty!19379 condSetEmpty!19385) setIsEmpty!19385))

(assert (= (and setNonEmpty!19379 (not condSetEmpty!19385)) setNonEmpty!19385))

(assert (= setNonEmpty!19385 b!2220554))

(declare-fun m!2661245 () Bool)

(assert (=> setNonEmpty!19385 m!2661245))

(declare-fun condSetEmpty!19386 () Bool)

(assert (=> setNonEmpty!19373 (= condSetEmpty!19386 (= setRest!19373 ((as const (Array Context!3766 Bool)) false)))))

(declare-fun setRes!19386 () Bool)

(assert (=> setNonEmpty!19373 (= tp!691739 setRes!19386)))

(declare-fun setIsEmpty!19386 () Bool)

(assert (=> setIsEmpty!19386 setRes!19386))

(declare-fun setElem!19386 () Context!3766)

(declare-fun tp!691802 () Bool)

(declare-fun setNonEmpty!19386 () Bool)

(declare-fun e!1418172 () Bool)

(assert (=> setNonEmpty!19386 (= setRes!19386 (and tp!691802 (inv!35343 setElem!19386) e!1418172))))

(declare-fun setRest!19386 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19386 (= setRest!19373 ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19386 true) setRest!19386))))

(declare-fun b!2220555 () Bool)

(declare-fun tp!691803 () Bool)

(assert (=> b!2220555 (= e!1418172 tp!691803)))

(assert (= (and setNonEmpty!19373 condSetEmpty!19386) setIsEmpty!19386))

(assert (= (and setNonEmpty!19373 (not condSetEmpty!19386)) setNonEmpty!19386))

(assert (= setNonEmpty!19386 b!2220555))

(declare-fun m!2661247 () Bool)

(assert (=> setNonEmpty!19386 m!2661247))

(declare-fun b!2220556 () Bool)

(declare-fun e!1418173 () Bool)

(declare-fun tp!691804 () Bool)

(declare-fun tp!691805 () Bool)

(assert (=> b!2220556 (= e!1418173 (and tp!691804 tp!691805))))

(assert (=> b!2220376 (= tp!691734 e!1418173)))

(assert (= (and b!2220376 ((_ is Cons!26027) (exprs!2383 setElem!19372))) b!2220556))

(declare-fun b!2220557 () Bool)

(declare-fun e!1418174 () Bool)

(declare-fun tp!691806 () Bool)

(declare-fun tp!691807 () Bool)

(assert (=> b!2220557 (= e!1418174 (and tp!691806 tp!691807))))

(assert (=> b!2220372 (= tp!691728 e!1418174)))

(assert (= (and b!2220372 ((_ is Cons!26027) (exprs!2383 (_1!14953 (_1!14954 (h!31429 (zeroValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))))) b!2220557))

(declare-fun b!2220558 () Bool)

(declare-fun e!1418175 () Bool)

(declare-fun setRes!19387 () Bool)

(declare-fun e!1418177 () Bool)

(declare-fun tp!691809 () Bool)

(assert (=> b!2220558 (= e!1418175 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (t!199518 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))))) e!1418177 tp_is_empty!9899 setRes!19387 tp!691809))))

(declare-fun condSetEmpty!19387 () Bool)

(assert (=> b!2220558 (= condSetEmpty!19387 (= (_2!14954 (h!31429 (t!199518 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220559 () Bool)

(declare-fun tp!691808 () Bool)

(assert (=> b!2220559 (= e!1418177 tp!691808)))

(assert (=> b!2220374 (= tp!691733 e!1418175)))

(declare-fun b!2220560 () Bool)

(declare-fun e!1418176 () Bool)

(declare-fun tp!691810 () Bool)

(assert (=> b!2220560 (= e!1418176 tp!691810)))

(declare-fun setElem!19387 () Context!3766)

(declare-fun setNonEmpty!19387 () Bool)

(declare-fun tp!691811 () Bool)

(assert (=> setNonEmpty!19387 (= setRes!19387 (and tp!691811 (inv!35343 setElem!19387) e!1418176))))

(declare-fun setRest!19387 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19387 (= (_2!14954 (h!31429 (t!199518 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19387 true) setRest!19387))))

(declare-fun setIsEmpty!19387 () Bool)

(assert (=> setIsEmpty!19387 setRes!19387))

(assert (= b!2220558 b!2220559))

(assert (= (and b!2220558 condSetEmpty!19387) setIsEmpty!19387))

(assert (= (and b!2220558 (not condSetEmpty!19387)) setNonEmpty!19387))

(assert (= setNonEmpty!19387 b!2220560))

(assert (= (and b!2220374 ((_ is Cons!26028) (t!199518 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790))))))))) b!2220558))

(declare-fun m!2661249 () Bool)

(assert (=> b!2220558 m!2661249))

(declare-fun m!2661251 () Bool)

(assert (=> setNonEmpty!19387 m!2661251))

(declare-fun b!2220561 () Bool)

(declare-fun e!1418178 () Bool)

(declare-fun tp!691812 () Bool)

(declare-fun tp!691813 () Bool)

(assert (=> b!2220561 (= e!1418178 (and tp!691812 tp!691813))))

(assert (=> b!2220379 (= tp!691738 e!1418178)))

(assert (= (and b!2220379 ((_ is Cons!26027) (exprs!2383 setElem!19373))) b!2220561))

(declare-fun b!2220562 () Bool)

(declare-fun e!1418179 () Bool)

(declare-fun tp!691814 () Bool)

(declare-fun tp!691815 () Bool)

(assert (=> b!2220562 (= e!1418179 (and tp!691814 tp!691815))))

(assert (=> b!2220375 (= tp!691732 e!1418179)))

(assert (= (and b!2220375 ((_ is Cons!26027) (exprs!2383 (_1!14953 (_1!14954 (h!31429 (minValue!3224 (v!29558 (underlying!6133 (v!29559 (underlying!6134 (cache!3257 cacheUp!790)))))))))))) b!2220562))

(declare-fun e!1418180 () Bool)

(declare-fun setRes!19388 () Bool)

(declare-fun b!2220563 () Bool)

(declare-fun tp!691817 () Bool)

(declare-fun e!1418182 () Bool)

(assert (=> b!2220563 (= e!1418180 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (t!199518 mapDefault!13995))))) e!1418182 tp_is_empty!9899 setRes!19388 tp!691817))))

(declare-fun condSetEmpty!19388 () Bool)

(assert (=> b!2220563 (= condSetEmpty!19388 (= (_2!14954 (h!31429 (t!199518 mapDefault!13995))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220564 () Bool)

(declare-fun tp!691816 () Bool)

(assert (=> b!2220564 (= e!1418182 tp!691816)))

(assert (=> b!2220377 (= tp!691737 e!1418180)))

(declare-fun b!2220565 () Bool)

(declare-fun e!1418181 () Bool)

(declare-fun tp!691818 () Bool)

(assert (=> b!2220565 (= e!1418181 tp!691818)))

(declare-fun setNonEmpty!19388 () Bool)

(declare-fun setElem!19388 () Context!3766)

(declare-fun tp!691819 () Bool)

(assert (=> setNonEmpty!19388 (= setRes!19388 (and tp!691819 (inv!35343 setElem!19388) e!1418181))))

(declare-fun setRest!19388 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19388 (= (_2!14954 (h!31429 (t!199518 mapDefault!13995))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19388 true) setRest!19388))))

(declare-fun setIsEmpty!19388 () Bool)

(assert (=> setIsEmpty!19388 setRes!19388))

(assert (= b!2220563 b!2220564))

(assert (= (and b!2220563 condSetEmpty!19388) setIsEmpty!19388))

(assert (= (and b!2220563 (not condSetEmpty!19388)) setNonEmpty!19388))

(assert (= setNonEmpty!19388 b!2220565))

(assert (= (and b!2220377 ((_ is Cons!26028) (t!199518 mapDefault!13995))) b!2220563))

(declare-fun m!2661253 () Bool)

(assert (=> b!2220563 m!2661253))

(declare-fun m!2661255 () Bool)

(assert (=> setNonEmpty!19388 m!2661255))

(declare-fun condSetEmpty!19389 () Bool)

(assert (=> setNonEmpty!19378 (= condSetEmpty!19389 (= setRest!19379 ((as const (Array Context!3766 Bool)) false)))))

(declare-fun setRes!19389 () Bool)

(assert (=> setNonEmpty!19378 (= tp!691762 setRes!19389)))

(declare-fun setIsEmpty!19389 () Bool)

(assert (=> setIsEmpty!19389 setRes!19389))

(declare-fun setNonEmpty!19389 () Bool)

(declare-fun setElem!19389 () Context!3766)

(declare-fun e!1418183 () Bool)

(declare-fun tp!691820 () Bool)

(assert (=> setNonEmpty!19389 (= setRes!19389 (and tp!691820 (inv!35343 setElem!19389) e!1418183))))

(declare-fun setRest!19389 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19389 (= setRest!19379 ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19389 true) setRest!19389))))

(declare-fun b!2220566 () Bool)

(declare-fun tp!691821 () Bool)

(assert (=> b!2220566 (= e!1418183 tp!691821)))

(assert (= (and setNonEmpty!19378 condSetEmpty!19389) setIsEmpty!19389))

(assert (= (and setNonEmpty!19378 (not condSetEmpty!19389)) setNonEmpty!19389))

(assert (= setNonEmpty!19389 b!2220566))

(declare-fun m!2661257 () Bool)

(assert (=> setNonEmpty!19389 m!2661257))

(declare-fun b!2220567 () Bool)

(declare-fun e!1418184 () Bool)

(declare-fun tp!691822 () Bool)

(declare-fun tp!691823 () Bool)

(assert (=> b!2220567 (= e!1418184 (and tp!691822 tp!691823))))

(assert (=> b!2220378 (= tp!691736 e!1418184)))

(assert (= (and b!2220378 ((_ is Cons!26027) (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapDefault!13995)))))) b!2220567))

(declare-fun b!2220568 () Bool)

(declare-fun e!1418185 () Bool)

(declare-fun tp!691824 () Bool)

(declare-fun tp!691825 () Bool)

(assert (=> b!2220568 (= e!1418185 (and tp!691824 tp!691825))))

(assert (=> b!2220395 (= tp!691763 e!1418185)))

(assert (= (and b!2220395 ((_ is Cons!26027) (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapDefault!13998)))))) b!2220568))

(declare-fun b!2220569 () Bool)

(declare-fun e!1418186 () Bool)

(declare-fun tp!691826 () Bool)

(declare-fun tp!691827 () Bool)

(assert (=> b!2220569 (= e!1418186 (and tp!691826 tp!691827))))

(assert (=> b!2220398 (= tp!691765 e!1418186)))

(assert (= (and b!2220398 ((_ is Cons!26027) (exprs!2383 setElem!19379))) b!2220569))

(declare-fun b!2220570 () Bool)

(declare-fun e!1418187 () Bool)

(declare-fun tp!691828 () Bool)

(declare-fun tp!691829 () Bool)

(assert (=> b!2220570 (= e!1418187 (and tp!691828 tp!691829))))

(assert (=> b!2220399 (= tp!691759 e!1418187)))

(assert (= (and b!2220399 ((_ is Cons!26027) (exprs!2383 setElem!19378))) b!2220570))

(declare-fun condSetEmpty!19390 () Bool)

(assert (=> setNonEmpty!19371 (= condSetEmpty!19390 (= setRest!19371 ((as const (Array Context!3766 Bool)) false)))))

(declare-fun setRes!19390 () Bool)

(assert (=> setNonEmpty!19371 (= tp!691731 setRes!19390)))

(declare-fun setIsEmpty!19390 () Bool)

(assert (=> setIsEmpty!19390 setRes!19390))

(declare-fun tp!691830 () Bool)

(declare-fun setElem!19390 () Context!3766)

(declare-fun e!1418188 () Bool)

(declare-fun setNonEmpty!19390 () Bool)

(assert (=> setNonEmpty!19390 (= setRes!19390 (and tp!691830 (inv!35343 setElem!19390) e!1418188))))

(declare-fun setRest!19390 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19390 (= setRest!19371 ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19390 true) setRest!19390))))

(declare-fun b!2220571 () Bool)

(declare-fun tp!691831 () Bool)

(assert (=> b!2220571 (= e!1418188 tp!691831)))

(assert (= (and setNonEmpty!19371 condSetEmpty!19390) setIsEmpty!19390))

(assert (= (and setNonEmpty!19371 (not condSetEmpty!19390)) setNonEmpty!19390))

(assert (= setNonEmpty!19390 b!2220571))

(declare-fun m!2661259 () Bool)

(assert (=> setNonEmpty!19390 m!2661259))

(declare-fun mapDefault!13999 () List!26122)

(declare-fun tp!691834 () Bool)

(declare-fun e!1418192 () Bool)

(declare-fun e!1418194 () Bool)

(declare-fun setRes!19391 () Bool)

(declare-fun b!2220572 () Bool)

(assert (=> b!2220572 (= e!1418192 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 mapDefault!13999)))) e!1418194 tp_is_empty!9899 setRes!19391 tp!691834))))

(declare-fun condSetEmpty!19392 () Bool)

(assert (=> b!2220572 (= condSetEmpty!19392 (= (_2!14954 (h!31429 mapDefault!13999)) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220573 () Bool)

(declare-fun tp!691837 () Bool)

(assert (=> b!2220573 (= e!1418194 tp!691837)))

(declare-fun setIsEmpty!19391 () Bool)

(assert (=> setIsEmpty!19391 setRes!19391))

(declare-fun setElem!19391 () Context!3766)

(declare-fun setNonEmpty!19391 () Bool)

(declare-fun e!1418189 () Bool)

(declare-fun tp!691836 () Bool)

(assert (=> setNonEmpty!19391 (= setRes!19391 (and tp!691836 (inv!35343 setElem!19391) e!1418189))))

(declare-fun setRest!19392 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19391 (= (_2!14954 (h!31429 mapDefault!13999)) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19391 true) setRest!19392))))

(declare-fun mapIsEmpty!13999 () Bool)

(declare-fun mapRes!13999 () Bool)

(assert (=> mapIsEmpty!13999 mapRes!13999))

(declare-fun e!1418193 () Bool)

(declare-fun tp!691835 () Bool)

(declare-fun setRes!19392 () Bool)

(declare-fun setNonEmpty!19392 () Bool)

(declare-fun setElem!19392 () Context!3766)

(assert (=> setNonEmpty!19392 (= setRes!19392 (and tp!691835 (inv!35343 setElem!19392) e!1418193))))

(declare-fun mapValue!13999 () List!26122)

(declare-fun setRest!19391 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19392 (= (_2!14954 (h!31429 mapValue!13999)) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19392 true) setRest!19391))))

(declare-fun e!1418191 () Bool)

(declare-fun tp!691838 () Bool)

(declare-fun b!2220574 () Bool)

(declare-fun e!1418190 () Bool)

(assert (=> b!2220574 (= e!1418191 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 mapValue!13999)))) e!1418190 tp_is_empty!9899 setRes!19392 tp!691838))))

(declare-fun condSetEmpty!19391 () Bool)

(assert (=> b!2220574 (= condSetEmpty!19391 (= (_2!14954 (h!31429 mapValue!13999)) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun condMapEmpty!13999 () Bool)

(assert (=> mapNonEmpty!13998 (= condMapEmpty!13999 (= mapRest!13998 ((as const (Array (_ BitVec 32) List!26122)) mapDefault!13999)))))

(assert (=> mapNonEmpty!13998 (= tp!691758 (and e!1418192 mapRes!13999))))

(declare-fun b!2220575 () Bool)

(declare-fun tp!691840 () Bool)

(assert (=> b!2220575 (= e!1418190 tp!691840)))

(declare-fun mapNonEmpty!13999 () Bool)

(declare-fun tp!691832 () Bool)

(assert (=> mapNonEmpty!13999 (= mapRes!13999 (and tp!691832 e!1418191))))

(declare-fun mapRest!13999 () (Array (_ BitVec 32) List!26122))

(declare-fun mapKey!13999 () (_ BitVec 32))

(assert (=> mapNonEmpty!13999 (= mapRest!13998 (store mapRest!13999 mapKey!13999 mapValue!13999))))

(declare-fun setIsEmpty!19392 () Bool)

(assert (=> setIsEmpty!19392 setRes!19392))

(declare-fun b!2220576 () Bool)

(declare-fun tp!691839 () Bool)

(assert (=> b!2220576 (= e!1418193 tp!691839)))

(declare-fun b!2220577 () Bool)

(declare-fun tp!691833 () Bool)

(assert (=> b!2220577 (= e!1418189 tp!691833)))

(assert (= (and mapNonEmpty!13998 condMapEmpty!13999) mapIsEmpty!13999))

(assert (= (and mapNonEmpty!13998 (not condMapEmpty!13999)) mapNonEmpty!13999))

(assert (= b!2220574 b!2220575))

(assert (= (and b!2220574 condSetEmpty!19391) setIsEmpty!19392))

(assert (= (and b!2220574 (not condSetEmpty!19391)) setNonEmpty!19392))

(assert (= setNonEmpty!19392 b!2220576))

(assert (= (and mapNonEmpty!13999 ((_ is Cons!26028) mapValue!13999)) b!2220574))

(assert (= b!2220572 b!2220573))

(assert (= (and b!2220572 condSetEmpty!19392) setIsEmpty!19391))

(assert (= (and b!2220572 (not condSetEmpty!19392)) setNonEmpty!19391))

(assert (= setNonEmpty!19391 b!2220577))

(assert (= (and mapNonEmpty!13998 ((_ is Cons!26028) mapDefault!13999)) b!2220572))

(declare-fun m!2661261 () Bool)

(assert (=> b!2220574 m!2661261))

(declare-fun m!2661263 () Bool)

(assert (=> b!2220572 m!2661263))

(declare-fun m!2661265 () Bool)

(assert (=> mapNonEmpty!13999 m!2661265))

(declare-fun m!2661267 () Bool)

(assert (=> setNonEmpty!19392 m!2661267))

(declare-fun m!2661269 () Bool)

(assert (=> setNonEmpty!19391 m!2661269))

(declare-fun setRes!19393 () Bool)

(declare-fun e!1418195 () Bool)

(declare-fun tp!691842 () Bool)

(declare-fun b!2220578 () Bool)

(declare-fun e!1418197 () Bool)

(assert (=> b!2220578 (= e!1418195 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (t!199518 mapValue!13998))))) e!1418197 tp_is_empty!9899 setRes!19393 tp!691842))))

(declare-fun condSetEmpty!19393 () Bool)

(assert (=> b!2220578 (= condSetEmpty!19393 (= (_2!14954 (h!31429 (t!199518 mapValue!13998))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220579 () Bool)

(declare-fun tp!691841 () Bool)

(assert (=> b!2220579 (= e!1418197 tp!691841)))

(assert (=> b!2220396 (= tp!691764 e!1418195)))

(declare-fun b!2220580 () Bool)

(declare-fun e!1418196 () Bool)

(declare-fun tp!691843 () Bool)

(assert (=> b!2220580 (= e!1418196 tp!691843)))

(declare-fun setNonEmpty!19393 () Bool)

(declare-fun setElem!19393 () Context!3766)

(declare-fun tp!691844 () Bool)

(assert (=> setNonEmpty!19393 (= setRes!19393 (and tp!691844 (inv!35343 setElem!19393) e!1418196))))

(declare-fun setRest!19393 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19393 (= (_2!14954 (h!31429 (t!199518 mapValue!13998))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19393 true) setRest!19393))))

(declare-fun setIsEmpty!19393 () Bool)

(assert (=> setIsEmpty!19393 setRes!19393))

(assert (= b!2220578 b!2220579))

(assert (= (and b!2220578 condSetEmpty!19393) setIsEmpty!19393))

(assert (= (and b!2220578 (not condSetEmpty!19393)) setNonEmpty!19393))

(assert (= setNonEmpty!19393 b!2220580))

(assert (= (and b!2220396 ((_ is Cons!26028) (t!199518 mapValue!13998))) b!2220578))

(declare-fun m!2661271 () Bool)

(assert (=> b!2220578 m!2661271))

(declare-fun m!2661273 () Bool)

(assert (=> setNonEmpty!19393 m!2661273))

(declare-fun condSetEmpty!19394 () Bool)

(assert (=> setNonEmpty!19372 (= condSetEmpty!19394 (= setRest!19372 ((as const (Array Context!3766 Bool)) false)))))

(declare-fun setRes!19394 () Bool)

(assert (=> setNonEmpty!19372 (= tp!691735 setRes!19394)))

(declare-fun setIsEmpty!19394 () Bool)

(assert (=> setIsEmpty!19394 setRes!19394))

(declare-fun setNonEmpty!19394 () Bool)

(declare-fun e!1418198 () Bool)

(declare-fun tp!691845 () Bool)

(declare-fun setElem!19394 () Context!3766)

(assert (=> setNonEmpty!19394 (= setRes!19394 (and tp!691845 (inv!35343 setElem!19394) e!1418198))))

(declare-fun setRest!19394 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19394 (= setRest!19372 ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19394 true) setRest!19394))))

(declare-fun b!2220581 () Bool)

(declare-fun tp!691846 () Bool)

(assert (=> b!2220581 (= e!1418198 tp!691846)))

(assert (= (and setNonEmpty!19372 condSetEmpty!19394) setIsEmpty!19394))

(assert (= (and setNonEmpty!19372 (not condSetEmpty!19394)) setNonEmpty!19394))

(assert (= setNonEmpty!19394 b!2220581))

(declare-fun m!2661275 () Bool)

(assert (=> setNonEmpty!19394 m!2661275))

(declare-fun b!2220582 () Bool)

(declare-fun e!1418199 () Bool)

(declare-fun tp!691847 () Bool)

(declare-fun tp!691848 () Bool)

(assert (=> b!2220582 (= e!1418199 (and tp!691847 tp!691848))))

(assert (=> b!2220373 (= tp!691730 e!1418199)))

(assert (= (and b!2220373 ((_ is Cons!26027) (exprs!2383 setElem!19371))) b!2220582))

(declare-fun b!2220583 () Bool)

(declare-fun e!1418200 () Bool)

(declare-fun tp!691849 () Bool)

(declare-fun tp!691850 () Bool)

(assert (=> b!2220583 (= e!1418200 (and tp!691849 tp!691850))))

(assert (=> b!2220397 (= tp!691766 e!1418200)))

(assert (= (and b!2220397 ((_ is Cons!26027) (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapValue!13998)))))) b!2220583))

(declare-fun condSetEmpty!19395 () Bool)

(assert (=> setNonEmpty!19380 (= condSetEmpty!19395 (= setRest!19380 ((as const (Array Context!3766 Bool)) false)))))

(declare-fun setRes!19395 () Bool)

(assert (=> setNonEmpty!19380 (= tp!691770 setRes!19395)))

(declare-fun setIsEmpty!19395 () Bool)

(assert (=> setIsEmpty!19395 setRes!19395))

(declare-fun setElem!19395 () Context!3766)

(declare-fun setNonEmpty!19395 () Bool)

(declare-fun e!1418201 () Bool)

(declare-fun tp!691851 () Bool)

(assert (=> setNonEmpty!19395 (= setRes!19395 (and tp!691851 (inv!35343 setElem!19395) e!1418201))))

(declare-fun setRest!19395 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19395 (= setRest!19380 ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19395 true) setRest!19395))))

(declare-fun b!2220584 () Bool)

(declare-fun tp!691852 () Bool)

(assert (=> b!2220584 (= e!1418201 tp!691852)))

(assert (= (and setNonEmpty!19380 condSetEmpty!19395) setIsEmpty!19395))

(assert (= (and setNonEmpty!19380 (not condSetEmpty!19395)) setNonEmpty!19395))

(assert (= setNonEmpty!19395 b!2220584))

(declare-fun m!2661277 () Bool)

(assert (=> setNonEmpty!19395 m!2661277))

(declare-fun b!2220585 () Bool)

(declare-fun e!1418202 () Bool)

(declare-fun tp!691853 () Bool)

(declare-fun tp!691854 () Bool)

(assert (=> b!2220585 (= e!1418202 (and tp!691853 tp!691854))))

(assert (=> b!2220401 (= tp!691767 e!1418202)))

(assert (= (and b!2220401 ((_ is Cons!26027) (exprs!2383 (_1!14953 (_1!14954 (h!31429 mapValue!13995)))))) b!2220585))

(declare-fun b!2220586 () Bool)

(declare-fun e!1418203 () Bool)

(declare-fun tp!691855 () Bool)

(declare-fun tp!691856 () Bool)

(assert (=> b!2220586 (= e!1418203 (and tp!691855 tp!691856))))

(assert (=> b!2220402 (= tp!691769 e!1418203)))

(assert (= (and b!2220402 ((_ is Cons!26027) (exprs!2383 setElem!19380))) b!2220586))

(declare-fun tp!691858 () Bool)

(declare-fun e!1418204 () Bool)

(declare-fun e!1418206 () Bool)

(declare-fun setRes!19396 () Bool)

(declare-fun b!2220587 () Bool)

(assert (=> b!2220587 (= e!1418204 (and (inv!35343 (_1!14953 (_1!14954 (h!31429 (t!199518 mapValue!13995))))) e!1418206 tp_is_empty!9899 setRes!19396 tp!691858))))

(declare-fun condSetEmpty!19396 () Bool)

(assert (=> b!2220587 (= condSetEmpty!19396 (= (_2!14954 (h!31429 (t!199518 mapValue!13995))) ((as const (Array Context!3766 Bool)) false)))))

(declare-fun b!2220588 () Bool)

(declare-fun tp!691857 () Bool)

(assert (=> b!2220588 (= e!1418206 tp!691857)))

(assert (=> b!2220400 (= tp!691768 e!1418204)))

(declare-fun b!2220589 () Bool)

(declare-fun e!1418205 () Bool)

(declare-fun tp!691859 () Bool)

(assert (=> b!2220589 (= e!1418205 tp!691859)))

(declare-fun setElem!19396 () Context!3766)

(declare-fun setNonEmpty!19396 () Bool)

(declare-fun tp!691860 () Bool)

(assert (=> setNonEmpty!19396 (= setRes!19396 (and tp!691860 (inv!35343 setElem!19396) e!1418205))))

(declare-fun setRest!19396 () (InoxSet Context!3766))

(assert (=> setNonEmpty!19396 (= (_2!14954 (h!31429 (t!199518 mapValue!13995))) ((_ map or) (store ((as const (Array Context!3766 Bool)) false) setElem!19396 true) setRest!19396))))

(declare-fun setIsEmpty!19396 () Bool)

(assert (=> setIsEmpty!19396 setRes!19396))

(assert (= b!2220587 b!2220588))

(assert (= (and b!2220587 condSetEmpty!19396) setIsEmpty!19396))

(assert (= (and b!2220587 (not condSetEmpty!19396)) setNonEmpty!19396))

(assert (= setNonEmpty!19396 b!2220589))

(assert (= (and b!2220400 ((_ is Cons!26028) (t!199518 mapValue!13995))) b!2220587))

(declare-fun m!2661279 () Bool)

(assert (=> b!2220587 m!2661279))

(declare-fun m!2661281 () Bool)

(assert (=> setNonEmpty!19396 m!2661281))

(declare-fun b_lambda!71519 () Bool)

(assert (= b_lambda!71513 (or d!663737 b_lambda!71519)))

(declare-fun bs!452318 () Bool)

(declare-fun d!663793 () Bool)

(assert (= bs!452318 (and d!663793 d!663737)))

(assert (=> bs!452318 (= (dynLambda!11499 lambda!83774 (h!31428 (exprs!2383 context!72))) (validRegex!2350 (h!31428 (exprs!2383 context!72))))))

(assert (=> bs!452318 m!2661000))

(assert (=> b!2220416 d!663793))

(declare-fun b_lambda!71521 () Bool)

(assert (= b_lambda!71515 (or (and b!2220310 b_free!64321) b_lambda!71521)))

(declare-fun b_lambda!71523 () Bool)

(assert (= b_lambda!71517 (or (and b!2220310 b_free!64321) b_lambda!71523)))

(check-sat (not d!663761) (not setNonEmpty!19392) (not d!663775) (not bm!132461) (not b!2220570) (not b!2220503) (not b!2220432) (not b!2220430) (not b!2220548) (not b!2220583) (not b!2220435) (not b!2220579) (not b!2220568) (not setNonEmpty!19390) (not b!2220417) (not b!2220578) (not b!2220572) (not b!2220585) (not d!663781) (not b!2220526) (not b!2220511) (not setNonEmpty!19388) (not b!2220449) (not b!2220588) (not b!2220575) (not b!2220529) (not b!2220444) (not d!663757) (not b_next!65025) (not setNonEmpty!19386) (not setNonEmpty!19393) (not b_lambda!71519) (not bm!132444) (not d!663753) b_and!174283 (not b_next!65027) (not bm!132437) (not bm!132434) (not b!2220558) (not d!663755) (not b!2220569) (not b!2220557) (not setNonEmpty!19385) (not d!663783) (not setNonEmpty!19391) (not b!2220581) (not b!2220403) (not b!2220580) (not b!2220451) (not d!663787) (not b!2220587) (not bm!132459) (not b!2220442) (not setNonEmpty!19389) (not d!663779) (not d!663769) (not b!2220544) (not b!2220530) (not bm!132458) (not b!2220573) (not d!663759) (not d!663763) (not b!2220545) (not b!2220582) (not bm!132435) (not b!2220556) (not b!2220543) (not b!2220512) (not b!2220563) (not b!2220577) (not b!2220561) (not b!2220554) (not b!2220549) (not d!663767) (not tb!132837) (not b!2220562) (not b!2220450) (not b!2220555) (not setNonEmpty!19396) (not bm!132445) b_and!174287 (not b_lambda!71521) (not setNonEmpty!19394) (not setNonEmpty!19381) (not b!2220505) (not b!2220528) (not d!663777) (not bm!132438) (not b!2220567) (not b!2220564) (not b!2220559) (not b!2220574) (not bm!132463) (not bm!132466) (not d!663749) (not b!2220546) (not b!2220510) (not b!2220547) (not b!2220589) (not mapNonEmpty!13999) (not b!2220531) (not setNonEmpty!19395) tp_is_empty!9899 (not b_lambda!71523) (not setNonEmpty!19387) (not b!2220584) (not setNonEmpty!19382) (not d!663751) (not bs!452318) (not bm!132462) (not b!2220560) (not b!2220566) (not b!2220565) (not b!2220576) (not d!663773) (not bm!132460) (not b!2220571) (not b!2220586))
(check-sat b_and!174287 b_and!174283 (not b_next!65025) (not b_next!65027))
