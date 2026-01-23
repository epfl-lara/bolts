; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216824 () Bool)

(assert start!216824)

(declare-fun b!2222011 () Bool)

(declare-fun b_free!64369 () Bool)

(declare-fun b_next!65073 () Bool)

(assert (=> b!2222011 (= b_free!64369 (not b_next!65073))))

(declare-fun tp!692732 () Bool)

(declare-fun b_and!174341 () Bool)

(assert (=> b!2222011 (= tp!692732 b_and!174341)))

(declare-fun b!2222017 () Bool)

(declare-fun b_free!64371 () Bool)

(declare-fun b_next!65075 () Bool)

(assert (=> b!2222017 (= b_free!64371 (not b_next!65075))))

(declare-fun tp!692733 () Bool)

(declare-fun b_and!174343 () Bool)

(assert (=> b!2222017 (= tp!692733 b_and!174343)))

(declare-fun b!2222010 () Bool)

(declare-fun e!1419346 () Bool)

(declare-fun tp!692738 () Bool)

(assert (=> b!2222010 (= e!1419346 tp!692738)))

(declare-fun e!1419349 () Bool)

(declare-fun e!1419344 () Bool)

(assert (=> b!2222011 (= e!1419349 (and e!1419344 tp!692732))))

(declare-fun b!2222012 () Bool)

(declare-fun e!1419345 () Bool)

(declare-fun e!1419342 () Bool)

(assert (=> b!2222012 (= e!1419345 e!1419342)))

(declare-fun mapNonEmpty!14053 () Bool)

(declare-fun mapRes!14053 () Bool)

(declare-fun tp!692736 () Bool)

(declare-fun tp!692734 () Bool)

(assert (=> mapNonEmpty!14053 (= mapRes!14053 (and tp!692736 tp!692734))))

(declare-fun mapKey!14053 () (_ BitVec 32))

(declare-datatypes ((C!12836 0))(
  ( (C!12837 (val!7466 Int)) )
))
(declare-datatypes ((Regex!6345 0))(
  ( (ElementMatch!6345 (c!354811 C!12836)) (Concat!10683 (regOne!13202 Regex!6345) (regTwo!13202 Regex!6345)) (EmptyExpr!6345) (Star!6345 (reg!6674 Regex!6345)) (EmptyLang!6345) (Union!6345 (regOne!13203 Regex!6345) (regTwo!13203 Regex!6345)) )
))
(declare-datatypes ((List!26146 0))(
  ( (Nil!26052) (Cons!26052 (h!31453 Regex!6345) (t!199549 List!26146)) )
))
(declare-datatypes ((Context!3786 0))(
  ( (Context!3787 (exprs!2393 List!26146)) )
))
(declare-datatypes ((array!10213 0))(
  ( (array!10214 (arr!4548 (Array (_ BitVec 32) (_ BitVec 64))) (size!20327 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25230 0))(
  ( (tuple2!25231 (_1!14993 Context!3786) (_2!14993 C!12836)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25232 0))(
  ( (tuple2!25233 (_1!14994 tuple2!25230) (_2!14994 (InoxSet Context!3786))) )
))
(declare-datatypes ((List!26147 0))(
  ( (Nil!26053) (Cons!26053 (h!31454 tuple2!25232) (t!199550 List!26147)) )
))
(declare-datatypes ((array!10215 0))(
  ( (array!10216 (arr!4549 (Array (_ BitVec 32) List!26147)) (size!20328 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5956 0))(
  ( (LongMapFixedSize!5957 (defaultEntry!3343 Int) (mask!7504 (_ BitVec 32)) (extraKeys!3226 (_ BitVec 32)) (zeroValue!3236 List!26147) (minValue!3236 List!26147) (_size!6003 (_ BitVec 32)) (_keys!3275 array!10213) (_values!3258 array!10215) (_vacant!3039 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11729 0))(
  ( (Cell!11730 (v!29595 LongMapFixedSize!5956)) )
))
(declare-datatypes ((MutLongMap!2978 0))(
  ( (LongMap!2978 (underlying!6157 Cell!11729)) (MutLongMapExt!2977 (__x!17160 Int)) )
))
(declare-datatypes ((Cell!11731 0))(
  ( (Cell!11732 (v!29596 MutLongMap!2978)) )
))
(declare-datatypes ((Hashable!2888 0))(
  ( (HashableExt!2887 (__x!17161 Int)) )
))
(declare-datatypes ((MutableMap!2888 0))(
  ( (MutableMapExt!2887 (__x!17162 Int)) (HashMap!2888 (underlying!6158 Cell!11731) (hashF!4811 Hashable!2888) (_size!6004 (_ BitVec 32)) (defaultValue!3050 Int)) )
))
(declare-datatypes ((CacheUp!1908 0))(
  ( (CacheUp!1909 (cache!3269 MutableMap!2888)) )
))
(declare-fun cacheUp!790 () CacheUp!1908)

(declare-fun mapRest!14053 () (Array (_ BitVec 32) List!26147))

(declare-fun mapValue!14053 () List!26147)

(assert (=> mapNonEmpty!14053 (= (arr!4549 (_values!3258 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) (store mapRest!14053 mapKey!14053 mapValue!14053))))

(declare-fun b!2222013 () Bool)

(declare-fun e!1419348 () Bool)

(assert (=> b!2222013 (= e!1419348 e!1419345)))

(declare-fun res!953716 () Bool)

(declare-fun e!1419343 () Bool)

(assert (=> start!216824 (=> (not res!953716) (not e!1419343))))

(declare-datatypes ((Option!5058 0))(
  ( (None!5057) (Some!5057 (v!29597 (InoxSet Context!3786))) )
))
(declare-fun lt!828181 () Option!5058)

(get-info :version)

(assert (=> start!216824 (= res!953716 ((_ is Some!5057) lt!828181))))

(declare-fun context!72 () Context!3786)

(declare-fun a!1149 () C!12836)

(declare-fun get!7813 (CacheUp!1908 Context!3786 C!12836) Option!5058)

(assert (=> start!216824 (= lt!828181 (get!7813 cacheUp!790 context!72 a!1149))))

(assert (=> start!216824 e!1419343))

(declare-fun e!1419347 () Bool)

(declare-fun inv!35376 (CacheUp!1908) Bool)

(assert (=> start!216824 (and (inv!35376 cacheUp!790) e!1419347)))

(declare-fun inv!35377 (Context!3786) Bool)

(assert (=> start!216824 (and (inv!35377 context!72) e!1419346)))

(declare-fun tp_is_empty!9915 () Bool)

(assert (=> start!216824 tp_is_empty!9915))

(declare-fun b!2222014 () Bool)

(declare-fun lt!828180 () MutLongMap!2978)

(assert (=> b!2222014 (= e!1419344 (and e!1419348 ((_ is LongMap!2978) lt!828180)))))

(assert (=> b!2222014 (= lt!828180 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))

(declare-fun b!2222015 () Bool)

(declare-fun e!1419350 () Bool)

(declare-fun tp!692737 () Bool)

(assert (=> b!2222015 (= e!1419350 (and tp!692737 mapRes!14053))))

(declare-fun condMapEmpty!14053 () Bool)

(declare-fun mapDefault!14053 () List!26147)

(assert (=> b!2222015 (= condMapEmpty!14053 (= (arr!4549 (_values!3258 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26147)) mapDefault!14053)))))

(declare-fun b!2222016 () Bool)

(declare-fun derivationStepZipperUp!19 (Context!3786 C!12836) (InoxSet Context!3786))

(assert (=> b!2222016 (= e!1419343 (not (= (v!29597 lt!828181) (derivationStepZipperUp!19 context!72 a!1149))))))

(declare-fun mapIsEmpty!14053 () Bool)

(assert (=> mapIsEmpty!14053 mapRes!14053))

(declare-fun tp!692731 () Bool)

(declare-fun tp!692735 () Bool)

(declare-fun array_inv!3269 (array!10213) Bool)

(declare-fun array_inv!3270 (array!10215) Bool)

(assert (=> b!2222017 (= e!1419342 (and tp!692733 tp!692731 tp!692735 (array_inv!3269 (_keys!3275 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) (array_inv!3270 (_values!3258 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) e!1419350))))

(declare-fun b!2222018 () Bool)

(assert (=> b!2222018 (= e!1419347 e!1419349)))

(assert (= (and start!216824 res!953716) b!2222016))

(assert (= (and b!2222015 condMapEmpty!14053) mapIsEmpty!14053))

(assert (= (and b!2222015 (not condMapEmpty!14053)) mapNonEmpty!14053))

(assert (= b!2222017 b!2222015))

(assert (= b!2222012 b!2222017))

(assert (= b!2222013 b!2222012))

(assert (= (and b!2222014 ((_ is LongMap!2978) (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))) b!2222013))

(assert (= b!2222011 b!2222014))

(assert (= (and b!2222018 ((_ is HashMap!2888) (cache!3269 cacheUp!790))) b!2222011))

(assert (= start!216824 b!2222018))

(assert (= start!216824 b!2222010))

(declare-fun m!2662379 () Bool)

(assert (=> mapNonEmpty!14053 m!2662379))

(declare-fun m!2662381 () Bool)

(assert (=> start!216824 m!2662381))

(declare-fun m!2662383 () Bool)

(assert (=> start!216824 m!2662383))

(declare-fun m!2662385 () Bool)

(assert (=> start!216824 m!2662385))

(declare-fun m!2662387 () Bool)

(assert (=> b!2222016 m!2662387))

(declare-fun m!2662389 () Bool)

(assert (=> b!2222017 m!2662389))

(declare-fun m!2662391 () Bool)

(assert (=> b!2222017 m!2662391))

(check-sat (not start!216824) b_and!174341 (not b!2222016) (not mapNonEmpty!14053) (not b!2222017) (not b!2222015) b_and!174343 (not b_next!65073) (not b!2222010) (not b_next!65075) tp_is_empty!9915)
(check-sat b_and!174341 b_and!174343 (not b_next!65073) (not b_next!65075))
(get-model)

(declare-fun b!2222029 () Bool)

(declare-fun e!1419358 () (InoxSet Context!3786))

(assert (=> b!2222029 (= e!1419358 ((as const (Array Context!3786 Bool)) false))))

(declare-fun bm!132642 () Bool)

(declare-fun call!132647 () (InoxSet Context!3786))

(declare-fun derivationStepZipperDown!19 (Regex!6345 Context!3786 C!12836) (InoxSet Context!3786))

(assert (=> bm!132642 (= call!132647 (derivationStepZipperDown!19 (h!31453 (exprs!2393 context!72)) (Context!3787 (t!199549 (exprs!2393 context!72))) a!1149))))

(declare-fun e!1419360 () (InoxSet Context!3786))

(declare-fun b!2222030 () Bool)

(assert (=> b!2222030 (= e!1419360 ((_ map or) call!132647 (derivationStepZipperUp!19 (Context!3787 (t!199549 (exprs!2393 context!72))) a!1149)))))

(declare-fun b!2222031 () Bool)

(assert (=> b!2222031 (= e!1419360 e!1419358)))

(declare-fun c!354816 () Bool)

(assert (=> b!2222031 (= c!354816 ((_ is Cons!26052) (exprs!2393 context!72)))))

(declare-fun d!664030 () Bool)

(declare-fun c!354817 () Bool)

(declare-fun e!1419359 () Bool)

(assert (=> d!664030 (= c!354817 e!1419359)))

(declare-fun res!953719 () Bool)

(assert (=> d!664030 (=> (not res!953719) (not e!1419359))))

(assert (=> d!664030 (= res!953719 ((_ is Cons!26052) (exprs!2393 context!72)))))

(assert (=> d!664030 (= (derivationStepZipperUp!19 context!72 a!1149) e!1419360)))

(declare-fun b!2222032 () Bool)

(declare-fun nullable!1725 (Regex!6345) Bool)

(assert (=> b!2222032 (= e!1419359 (nullable!1725 (h!31453 (exprs!2393 context!72))))))

(declare-fun b!2222033 () Bool)

(assert (=> b!2222033 (= e!1419358 call!132647)))

(assert (= (and d!664030 res!953719) b!2222032))

(assert (= (and d!664030 c!354817) b!2222030))

(assert (= (and d!664030 (not c!354817)) b!2222031))

(assert (= (and b!2222031 c!354816) b!2222033))

(assert (= (and b!2222031 (not c!354816)) b!2222029))

(assert (= (or b!2222030 b!2222033) bm!132642))

(declare-fun m!2662393 () Bool)

(assert (=> bm!132642 m!2662393))

(declare-fun m!2662395 () Bool)

(assert (=> b!2222030 m!2662395))

(declare-fun m!2662397 () Bool)

(assert (=> b!2222032 m!2662397))

(assert (=> b!2222016 d!664030))

(declare-fun d!664032 () Bool)

(assert (=> d!664032 (= (array_inv!3269 (_keys!3275 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) (bvsge (size!20327 (_keys!3275 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222017 d!664032))

(declare-fun d!664034 () Bool)

(assert (=> d!664034 (= (array_inv!3270 (_values!3258 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) (bvsge (size!20328 (_values!3258 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2222017 d!664034))

(declare-fun d!664036 () Bool)

(declare-fun e!1419365 () Bool)

(assert (=> d!664036 e!1419365))

(declare-fun res!953722 () Bool)

(assert (=> d!664036 (=> res!953722 e!1419365)))

(declare-fun lt!828187 () Option!5058)

(declare-fun isEmpty!14872 (Option!5058) Bool)

(assert (=> d!664036 (= res!953722 (isEmpty!14872 lt!828187))))

(declare-fun e!1419366 () Option!5058)

(assert (=> d!664036 (= lt!828187 e!1419366)))

(declare-fun c!354820 () Bool)

(declare-fun contains!4334 (MutableMap!2888 tuple2!25230) Bool)

(assert (=> d!664036 (= c!354820 (contains!4334 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149)))))

(declare-fun validCacheMapUp!269 (MutableMap!2888) Bool)

(assert (=> d!664036 (validCacheMapUp!269 (cache!3269 cacheUp!790))))

(assert (=> d!664036 (= (get!7813 cacheUp!790 context!72 a!1149) lt!828187)))

(declare-fun b!2222040 () Bool)

(declare-fun apply!6446 (MutableMap!2888 tuple2!25230) (InoxSet Context!3786))

(assert (=> b!2222040 (= e!1419366 (Some!5057 (apply!6446 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149))))))

(declare-datatypes ((Unit!39003 0))(
  ( (Unit!39004) )
))
(declare-fun lt!828186 () Unit!39003)

(declare-fun lemmaIfInCacheThenValid!21 (CacheUp!1908 Context!3786 C!12836) Unit!39003)

(assert (=> b!2222040 (= lt!828186 (lemmaIfInCacheThenValid!21 cacheUp!790 context!72 a!1149))))

(declare-fun b!2222041 () Bool)

(assert (=> b!2222041 (= e!1419366 None!5057)))

(declare-fun b!2222042 () Bool)

(declare-fun get!7814 (Option!5058) (InoxSet Context!3786))

(assert (=> b!2222042 (= e!1419365 (= (get!7814 lt!828187) (derivationStepZipperUp!19 context!72 a!1149)))))

(assert (= (and d!664036 c!354820) b!2222040))

(assert (= (and d!664036 (not c!354820)) b!2222041))

(assert (= (and d!664036 (not res!953722)) b!2222042))

(declare-fun m!2662399 () Bool)

(assert (=> d!664036 m!2662399))

(declare-fun m!2662401 () Bool)

(assert (=> d!664036 m!2662401))

(declare-fun m!2662403 () Bool)

(assert (=> d!664036 m!2662403))

(declare-fun m!2662405 () Bool)

(assert (=> b!2222040 m!2662405))

(declare-fun m!2662407 () Bool)

(assert (=> b!2222040 m!2662407))

(declare-fun m!2662409 () Bool)

(assert (=> b!2222042 m!2662409))

(assert (=> b!2222042 m!2662387))

(assert (=> start!216824 d!664036))

(declare-fun d!664038 () Bool)

(declare-fun res!953725 () Bool)

(declare-fun e!1419369 () Bool)

(assert (=> d!664038 (=> (not res!953725) (not e!1419369))))

(assert (=> d!664038 (= res!953725 ((_ is HashMap!2888) (cache!3269 cacheUp!790)))))

(assert (=> d!664038 (= (inv!35376 cacheUp!790) e!1419369)))

(declare-fun b!2222045 () Bool)

(assert (=> b!2222045 (= e!1419369 (validCacheMapUp!269 (cache!3269 cacheUp!790)))))

(assert (= (and d!664038 res!953725) b!2222045))

(assert (=> b!2222045 m!2662403))

(assert (=> start!216824 d!664038))

(declare-fun d!664040 () Bool)

(declare-fun lambda!83901 () Int)

(declare-fun forall!5305 (List!26146 Int) Bool)

(assert (=> d!664040 (= (inv!35377 context!72) (forall!5305 (exprs!2393 context!72) lambda!83901))))

(declare-fun bs!452772 () Bool)

(assert (= bs!452772 d!664040))

(declare-fun m!2662411 () Bool)

(assert (=> bs!452772 m!2662411))

(assert (=> start!216824 d!664040))

(declare-fun b!2222060 () Bool)

(declare-fun e!1419386 () Bool)

(declare-fun tp!692759 () Bool)

(assert (=> b!2222060 (= e!1419386 tp!692759)))

(declare-fun b!2222061 () Bool)

(declare-fun e!1419385 () Bool)

(declare-fun tp!692764 () Bool)

(assert (=> b!2222061 (= e!1419385 tp!692764)))

(declare-fun e!1419383 () Bool)

(declare-fun tp!692765 () Bool)

(declare-fun mapDefault!14056 () List!26147)

(declare-fun setRes!19508 () Bool)

(declare-fun b!2222062 () Bool)

(declare-fun e!1419384 () Bool)

(assert (=> b!2222062 (= e!1419383 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 mapDefault!14056)))) e!1419384 tp_is_empty!9915 setRes!19508 tp!692765))))

(declare-fun condSetEmpty!19507 () Bool)

(assert (=> b!2222062 (= condSetEmpty!19507 (= (_2!14994 (h!31454 mapDefault!14056)) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setIsEmpty!19507 () Bool)

(declare-fun setRes!19507 () Bool)

(assert (=> setIsEmpty!19507 setRes!19507))

(declare-fun b!2222063 () Bool)

(declare-fun tp!692758 () Bool)

(assert (=> b!2222063 (= e!1419384 tp!692758)))

(declare-fun setIsEmpty!19508 () Bool)

(assert (=> setIsEmpty!19508 setRes!19508))

(declare-fun b!2222064 () Bool)

(declare-fun e!1419382 () Bool)

(declare-fun tp!692757 () Bool)

(assert (=> b!2222064 (= e!1419382 tp!692757)))

(declare-fun mapIsEmpty!14056 () Bool)

(declare-fun mapRes!14056 () Bool)

(assert (=> mapIsEmpty!14056 mapRes!14056))

(declare-fun tp!692760 () Bool)

(declare-fun setNonEmpty!19507 () Bool)

(declare-fun setElem!19508 () Context!3786)

(assert (=> setNonEmpty!19507 (= setRes!19508 (and tp!692760 (inv!35377 setElem!19508) e!1419386))))

(declare-fun setRest!19507 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19507 (= (_2!14994 (h!31454 mapDefault!14056)) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19508 true) setRest!19507))))

(declare-fun e!1419387 () Bool)

(declare-fun mapValue!14056 () List!26147)

(declare-fun tp!692762 () Bool)

(declare-fun b!2222065 () Bool)

(assert (=> b!2222065 (= e!1419387 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 mapValue!14056)))) e!1419382 tp_is_empty!9915 setRes!19507 tp!692762))))

(declare-fun condSetEmpty!19508 () Bool)

(assert (=> b!2222065 (= condSetEmpty!19508 (= (_2!14994 (h!31454 mapValue!14056)) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun mapNonEmpty!14056 () Bool)

(declare-fun tp!692763 () Bool)

(assert (=> mapNonEmpty!14056 (= mapRes!14056 (and tp!692763 e!1419387))))

(declare-fun mapRest!14056 () (Array (_ BitVec 32) List!26147))

(declare-fun mapKey!14056 () (_ BitVec 32))

(assert (=> mapNonEmpty!14056 (= mapRest!14053 (store mapRest!14056 mapKey!14056 mapValue!14056))))

(declare-fun setNonEmpty!19508 () Bool)

(declare-fun setElem!19507 () Context!3786)

(declare-fun tp!692761 () Bool)

(assert (=> setNonEmpty!19508 (= setRes!19507 (and tp!692761 (inv!35377 setElem!19507) e!1419385))))

(declare-fun setRest!19508 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19508 (= (_2!14994 (h!31454 mapValue!14056)) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19507 true) setRest!19508))))

(declare-fun condMapEmpty!14056 () Bool)

(assert (=> mapNonEmpty!14053 (= condMapEmpty!14056 (= mapRest!14053 ((as const (Array (_ BitVec 32) List!26147)) mapDefault!14056)))))

(assert (=> mapNonEmpty!14053 (= tp!692736 (and e!1419383 mapRes!14056))))

(assert (= (and mapNonEmpty!14053 condMapEmpty!14056) mapIsEmpty!14056))

(assert (= (and mapNonEmpty!14053 (not condMapEmpty!14056)) mapNonEmpty!14056))

(assert (= b!2222065 b!2222064))

(assert (= (and b!2222065 condSetEmpty!19508) setIsEmpty!19507))

(assert (= (and b!2222065 (not condSetEmpty!19508)) setNonEmpty!19508))

(assert (= setNonEmpty!19508 b!2222061))

(assert (= (and mapNonEmpty!14056 ((_ is Cons!26053) mapValue!14056)) b!2222065))

(assert (= b!2222062 b!2222063))

(assert (= (and b!2222062 condSetEmpty!19507) setIsEmpty!19508))

(assert (= (and b!2222062 (not condSetEmpty!19507)) setNonEmpty!19507))

(assert (= setNonEmpty!19507 b!2222060))

(assert (= (and mapNonEmpty!14053 ((_ is Cons!26053) mapDefault!14056)) b!2222062))

(declare-fun m!2662413 () Bool)

(assert (=> setNonEmpty!19507 m!2662413))

(declare-fun m!2662415 () Bool)

(assert (=> setNonEmpty!19508 m!2662415))

(declare-fun m!2662417 () Bool)

(assert (=> b!2222062 m!2662417))

(declare-fun m!2662419 () Bool)

(assert (=> mapNonEmpty!14056 m!2662419))

(declare-fun m!2662421 () Bool)

(assert (=> b!2222065 m!2662421))

(declare-fun b!2222074 () Bool)

(declare-fun e!1419396 () Bool)

(declare-fun tp!692777 () Bool)

(assert (=> b!2222074 (= e!1419396 tp!692777)))

(declare-fun e!1419395 () Bool)

(assert (=> mapNonEmpty!14053 (= tp!692734 e!1419395)))

(declare-fun setIsEmpty!19511 () Bool)

(declare-fun setRes!19511 () Bool)

(assert (=> setIsEmpty!19511 setRes!19511))

(declare-fun e!1419394 () Bool)

(declare-fun tp!692776 () Bool)

(declare-fun setElem!19511 () Context!3786)

(declare-fun setNonEmpty!19511 () Bool)

(assert (=> setNonEmpty!19511 (= setRes!19511 (and tp!692776 (inv!35377 setElem!19511) e!1419394))))

(declare-fun setRest!19511 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19511 (= (_2!14994 (h!31454 mapValue!14053)) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19511 true) setRest!19511))))

(declare-fun tp!692774 () Bool)

(declare-fun b!2222075 () Bool)

(assert (=> b!2222075 (= e!1419395 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 mapValue!14053)))) e!1419396 tp_is_empty!9915 setRes!19511 tp!692774))))

(declare-fun condSetEmpty!19511 () Bool)

(assert (=> b!2222075 (= condSetEmpty!19511 (= (_2!14994 (h!31454 mapValue!14053)) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222076 () Bool)

(declare-fun tp!692775 () Bool)

(assert (=> b!2222076 (= e!1419394 tp!692775)))

(assert (= b!2222075 b!2222074))

(assert (= (and b!2222075 condSetEmpty!19511) setIsEmpty!19511))

(assert (= (and b!2222075 (not condSetEmpty!19511)) setNonEmpty!19511))

(assert (= setNonEmpty!19511 b!2222076))

(assert (= (and mapNonEmpty!14053 ((_ is Cons!26053) mapValue!14053)) b!2222075))

(declare-fun m!2662423 () Bool)

(assert (=> setNonEmpty!19511 m!2662423))

(declare-fun m!2662425 () Bool)

(assert (=> b!2222075 m!2662425))

(declare-fun b!2222077 () Bool)

(declare-fun e!1419399 () Bool)

(declare-fun tp!692781 () Bool)

(assert (=> b!2222077 (= e!1419399 tp!692781)))

(declare-fun e!1419398 () Bool)

(assert (=> b!2222017 (= tp!692731 e!1419398)))

(declare-fun setIsEmpty!19512 () Bool)

(declare-fun setRes!19512 () Bool)

(assert (=> setIsEmpty!19512 setRes!19512))

(declare-fun e!1419397 () Bool)

(declare-fun setElem!19512 () Context!3786)

(declare-fun tp!692780 () Bool)

(declare-fun setNonEmpty!19512 () Bool)

(assert (=> setNonEmpty!19512 (= setRes!19512 (and tp!692780 (inv!35377 setElem!19512) e!1419397))))

(declare-fun setRest!19512 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19512 (= (_2!14994 (h!31454 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19512 true) setRest!19512))))

(declare-fun tp!692778 () Bool)

(declare-fun b!2222078 () Bool)

(assert (=> b!2222078 (= e!1419398 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))) e!1419399 tp_is_empty!9915 setRes!19512 tp!692778))))

(declare-fun condSetEmpty!19512 () Bool)

(assert (=> b!2222078 (= condSetEmpty!19512 (= (_2!14994 (h!31454 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222079 () Bool)

(declare-fun tp!692779 () Bool)

(assert (=> b!2222079 (= e!1419397 tp!692779)))

(assert (= b!2222078 b!2222077))

(assert (= (and b!2222078 condSetEmpty!19512) setIsEmpty!19512))

(assert (= (and b!2222078 (not condSetEmpty!19512)) setNonEmpty!19512))

(assert (= setNonEmpty!19512 b!2222079))

(assert (= (and b!2222017 ((_ is Cons!26053) (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))) b!2222078))

(declare-fun m!2662427 () Bool)

(assert (=> setNonEmpty!19512 m!2662427))

(declare-fun m!2662429 () Bool)

(assert (=> b!2222078 m!2662429))

(declare-fun b!2222080 () Bool)

(declare-fun e!1419402 () Bool)

(declare-fun tp!692785 () Bool)

(assert (=> b!2222080 (= e!1419402 tp!692785)))

(declare-fun e!1419401 () Bool)

(assert (=> b!2222017 (= tp!692735 e!1419401)))

(declare-fun setIsEmpty!19513 () Bool)

(declare-fun setRes!19513 () Bool)

(assert (=> setIsEmpty!19513 setRes!19513))

(declare-fun setElem!19513 () Context!3786)

(declare-fun e!1419400 () Bool)

(declare-fun setNonEmpty!19513 () Bool)

(declare-fun tp!692784 () Bool)

(assert (=> setNonEmpty!19513 (= setRes!19513 (and tp!692784 (inv!35377 setElem!19513) e!1419400))))

(declare-fun setRest!19513 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19513 (= (_2!14994 (h!31454 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19513 true) setRest!19513))))

(declare-fun tp!692782 () Bool)

(declare-fun b!2222081 () Bool)

(assert (=> b!2222081 (= e!1419401 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))) e!1419402 tp_is_empty!9915 setRes!19513 tp!692782))))

(declare-fun condSetEmpty!19513 () Bool)

(assert (=> b!2222081 (= condSetEmpty!19513 (= (_2!14994 (h!31454 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222082 () Bool)

(declare-fun tp!692783 () Bool)

(assert (=> b!2222082 (= e!1419400 tp!692783)))

(assert (= b!2222081 b!2222080))

(assert (= (and b!2222081 condSetEmpty!19513) setIsEmpty!19513))

(assert (= (and b!2222081 (not condSetEmpty!19513)) setNonEmpty!19513))

(assert (= setNonEmpty!19513 b!2222082))

(assert (= (and b!2222017 ((_ is Cons!26053) (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))) b!2222081))

(declare-fun m!2662431 () Bool)

(assert (=> setNonEmpty!19513 m!2662431))

(declare-fun m!2662433 () Bool)

(assert (=> b!2222081 m!2662433))

(declare-fun b!2222087 () Bool)

(declare-fun e!1419405 () Bool)

(declare-fun tp!692790 () Bool)

(declare-fun tp!692791 () Bool)

(assert (=> b!2222087 (= e!1419405 (and tp!692790 tp!692791))))

(assert (=> b!2222010 (= tp!692738 e!1419405)))

(assert (= (and b!2222010 ((_ is Cons!26052) (exprs!2393 context!72))) b!2222087))

(declare-fun b!2222088 () Bool)

(declare-fun e!1419408 () Bool)

(declare-fun tp!692795 () Bool)

(assert (=> b!2222088 (= e!1419408 tp!692795)))

(declare-fun e!1419407 () Bool)

(assert (=> b!2222015 (= tp!692737 e!1419407)))

(declare-fun setIsEmpty!19514 () Bool)

(declare-fun setRes!19514 () Bool)

(assert (=> setIsEmpty!19514 setRes!19514))

(declare-fun setElem!19514 () Context!3786)

(declare-fun setNonEmpty!19514 () Bool)

(declare-fun tp!692794 () Bool)

(declare-fun e!1419406 () Bool)

(assert (=> setNonEmpty!19514 (= setRes!19514 (and tp!692794 (inv!35377 setElem!19514) e!1419406))))

(declare-fun setRest!19514 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19514 (= (_2!14994 (h!31454 mapDefault!14053)) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19514 true) setRest!19514))))

(declare-fun b!2222089 () Bool)

(declare-fun tp!692792 () Bool)

(assert (=> b!2222089 (= e!1419407 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 mapDefault!14053)))) e!1419408 tp_is_empty!9915 setRes!19514 tp!692792))))

(declare-fun condSetEmpty!19514 () Bool)

(assert (=> b!2222089 (= condSetEmpty!19514 (= (_2!14994 (h!31454 mapDefault!14053)) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222090 () Bool)

(declare-fun tp!692793 () Bool)

(assert (=> b!2222090 (= e!1419406 tp!692793)))

(assert (= b!2222089 b!2222088))

(assert (= (and b!2222089 condSetEmpty!19514) setIsEmpty!19514))

(assert (= (and b!2222089 (not condSetEmpty!19514)) setNonEmpty!19514))

(assert (= setNonEmpty!19514 b!2222090))

(assert (= (and b!2222015 ((_ is Cons!26053) mapDefault!14053)) b!2222089))

(declare-fun m!2662435 () Bool)

(assert (=> setNonEmpty!19514 m!2662435))

(declare-fun m!2662437 () Bool)

(assert (=> b!2222089 m!2662437))

(check-sat b_and!174341 (not b!2222064) (not b!2222065) (not b!2222030) (not setNonEmpty!19514) (not bm!132642) (not b!2222075) (not mapNonEmpty!14056) (not d!664036) (not b!2222061) (not b_next!65075) (not b!2222062) (not setNonEmpty!19512) (not b!2222076) (not b!2222077) (not b!2222087) (not b!2222079) (not b!2222074) (not setNonEmpty!19511) b_and!174343 (not setNonEmpty!19513) (not b!2222078) (not b!2222089) (not b_next!65073) (not b!2222088) (not b!2222045) (not b!2222082) (not b!2222040) (not d!664040) (not b!2222032) (not b!2222081) (not setNonEmpty!19507) (not b!2222060) (not b!2222042) (not b!2222090) (not b!2222080) (not setNonEmpty!19508) (not b!2222063) tp_is_empty!9915)
(check-sat b_and!174341 b_and!174343 (not b_next!65073) (not b_next!65075))
(get-model)

(declare-fun bs!452773 () Bool)

(declare-fun d!664042 () Bool)

(assert (= bs!452773 (and d!664042 d!664040)))

(declare-fun lambda!83902 () Int)

(assert (=> bs!452773 (= lambda!83902 lambda!83901)))

(assert (=> d!664042 (= (inv!35377 setElem!19512) (forall!5305 (exprs!2393 setElem!19512) lambda!83902))))

(declare-fun bs!452774 () Bool)

(assert (= bs!452774 d!664042))

(declare-fun m!2662439 () Bool)

(assert (=> bs!452774 m!2662439))

(assert (=> setNonEmpty!19512 d!664042))

(declare-fun e!1419415 () (InoxSet Context!3786))

(declare-fun b!2222103 () Bool)

(declare-fun lt!828267 () (_ BitVec 64))

(declare-datatypes ((Option!5059 0))(
  ( (None!5058) (Some!5058 (v!29598 tuple2!25232)) )
))
(declare-fun get!7815 (Option!5059) tuple2!25232)

(declare-fun getPair!23 (List!26147 tuple2!25230) Option!5059)

(declare-fun apply!6447 (MutLongMap!2978 (_ BitVec 64)) List!26147)

(assert (=> b!2222103 (= e!1419415 (_2!14994 (get!7815 (getPair!23 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828267) (tuple2!25231 context!72 a!1149)))))))

(declare-fun hash!562 (Hashable!2888 tuple2!25230) (_ BitVec 64))

(assert (=> b!2222103 (= lt!828267 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(declare-fun c!354827 () Bool)

(declare-datatypes ((tuple2!25234 0))(
  ( (tuple2!25235 (_1!14995 (_ BitVec 64)) (_2!14995 List!26147)) )
))
(declare-datatypes ((List!26148 0))(
  ( (Nil!26054) (Cons!26054 (h!31455 tuple2!25234) (t!199553 List!26148)) )
))
(declare-fun contains!4335 (List!26148 tuple2!25234) Bool)

(declare-datatypes ((ListLongMap!289 0))(
  ( (ListLongMap!290 (toList!1294 List!26148)) )
))
(declare-fun map!5288 (MutLongMap!2978) ListLongMap!289)

(assert (=> b!2222103 (= c!354827 (not (contains!4335 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))) (tuple2!25235 lt!828267 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828267)))))))

(declare-fun lt!828270 () Unit!39003)

(declare-fun e!1419417 () Unit!39003)

(assert (=> b!2222103 (= lt!828270 e!1419417)))

(declare-fun lambda!83909 () Int)

(declare-fun lt!828256 () Unit!39003)

(declare-fun forallContained!770 (List!26148 Int tuple2!25234) Unit!39003)

(assert (=> b!2222103 (= lt!828256 (forallContained!770 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))) lambda!83909 (tuple2!25235 lt!828267 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828267))))))

(declare-fun lt!828259 () ListLongMap!289)

(assert (=> b!2222103 (= lt!828259 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))

(declare-fun lt!828276 () Unit!39003)

(declare-fun lemmaGetPairGetSameValueAsMap!13 (ListLongMap!289 tuple2!25230 (InoxSet Context!3786) Hashable!2888) Unit!39003)

(assert (=> b!2222103 (= lt!828276 (lemmaGetPairGetSameValueAsMap!13 lt!828259 (tuple2!25231 context!72 a!1149) (_2!14994 (get!7815 (getPair!23 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828267) (tuple2!25231 context!72 a!1149)))) (hashF!4811 (cache!3269 cacheUp!790))))))

(declare-fun lt!828254 () Unit!39003)

(declare-fun lemmaInGenMapThenLongMapContainsHash!13 (ListLongMap!289 tuple2!25230 Hashable!2888) Unit!39003)

(assert (=> b!2222103 (= lt!828254 (lemmaInGenMapThenLongMapContainsHash!13 lt!828259 (tuple2!25231 context!72 a!1149) (hashF!4811 (cache!3269 cacheUp!790))))))

(declare-fun contains!4336 (ListLongMap!289 (_ BitVec 64)) Bool)

(assert (=> b!2222103 (contains!4336 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(declare-fun lt!828273 () Unit!39003)

(assert (=> b!2222103 (= lt!828273 lt!828254)))

(declare-fun lt!828248 () (_ BitVec 64))

(assert (=> b!2222103 (= lt!828248 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(declare-fun lt!828258 () List!26147)

(declare-fun apply!6448 (ListLongMap!289 (_ BitVec 64)) List!26147)

(assert (=> b!2222103 (= lt!828258 (apply!6448 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))))))

(declare-fun lt!828250 () Unit!39003)

(declare-fun lemmaGetValueImpliesTupleContained!14 (ListLongMap!289 (_ BitVec 64) List!26147) Unit!39003)

(assert (=> b!2222103 (= lt!828250 (lemmaGetValueImpliesTupleContained!14 lt!828259 lt!828248 lt!828258))))

(assert (=> b!2222103 (contains!4335 (toList!1294 lt!828259) (tuple2!25235 lt!828248 lt!828258))))

(declare-fun lt!828263 () Unit!39003)

(assert (=> b!2222103 (= lt!828263 lt!828250)))

(declare-fun lt!828271 () Unit!39003)

(assert (=> b!2222103 (= lt!828271 (forallContained!770 (toList!1294 lt!828259) lambda!83909 (tuple2!25235 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)) (apply!6448 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))))))))

(declare-fun lt!828275 () Unit!39003)

(declare-fun lemmaInGenMapThenGetPairDefined!13 (ListLongMap!289 tuple2!25230 Hashable!2888) Unit!39003)

(assert (=> b!2222103 (= lt!828275 (lemmaInGenMapThenGetPairDefined!13 lt!828259 (tuple2!25231 context!72 a!1149) (hashF!4811 (cache!3269 cacheUp!790))))))

(declare-fun lt!828252 () Unit!39003)

(assert (=> b!2222103 (= lt!828252 (lemmaInGenMapThenLongMapContainsHash!13 lt!828259 (tuple2!25231 context!72 a!1149) (hashF!4811 (cache!3269 cacheUp!790))))))

(declare-fun lt!828264 () Unit!39003)

(assert (=> b!2222103 (= lt!828264 lt!828252)))

(declare-fun lt!828251 () (_ BitVec 64))

(assert (=> b!2222103 (= lt!828251 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(declare-fun lt!828255 () List!26147)

(assert (=> b!2222103 (= lt!828255 (apply!6448 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))))))

(declare-fun lt!828253 () Unit!39003)

(assert (=> b!2222103 (= lt!828253 (lemmaGetValueImpliesTupleContained!14 lt!828259 lt!828251 lt!828255))))

(assert (=> b!2222103 (contains!4335 (toList!1294 lt!828259) (tuple2!25235 lt!828251 lt!828255))))

(declare-fun lt!828257 () Unit!39003)

(assert (=> b!2222103 (= lt!828257 lt!828253)))

(declare-fun lt!828260 () Unit!39003)

(assert (=> b!2222103 (= lt!828260 (forallContained!770 (toList!1294 lt!828259) lambda!83909 (tuple2!25235 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)) (apply!6448 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))))))))

(declare-fun isDefined!4122 (Option!5059) Bool)

(assert (=> b!2222103 (isDefined!4122 (getPair!23 (apply!6448 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))) (tuple2!25231 context!72 a!1149)))))

(declare-fun lt!828269 () Unit!39003)

(assert (=> b!2222103 (= lt!828269 lt!828275)))

(declare-fun getValueByKey!63 (List!26147 tuple2!25230) Option!5058)

(declare-datatypes ((ListMap!753 0))(
  ( (ListMap!754 (toList!1295 List!26147)) )
))
(declare-fun extractMap!92 (List!26148) ListMap!753)

(assert (=> b!2222103 (= (_2!14994 (get!7815 (getPair!23 (apply!6448 lt!828259 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))) (tuple2!25231 context!72 a!1149)))) (get!7814 (getValueByKey!63 (toList!1295 (extractMap!92 (toList!1294 lt!828259))) (tuple2!25231 context!72 a!1149))))))

(declare-fun lt!828266 () Unit!39003)

(assert (=> b!2222103 (= lt!828266 lt!828276)))

(declare-fun b!2222104 () Bool)

(declare-fun Unit!39005 () Unit!39003)

(assert (=> b!2222104 (= e!1419417 Unit!39005)))

(declare-fun lt!828261 () (InoxSet Context!3786))

(declare-fun e!1419416 () Bool)

(declare-fun b!2222105 () Bool)

(declare-fun map!5289 (MutableMap!2888) ListMap!753)

(assert (=> b!2222105 (= e!1419416 (= lt!828261 (get!7814 (getValueByKey!63 (toList!1295 (map!5289 (cache!3269 cacheUp!790))) (tuple2!25231 context!72 a!1149)))))))

(declare-fun b!2222106 () Bool)

(declare-fun dynLambda!11506 (Int tuple2!25230) (InoxSet Context!3786))

(assert (=> b!2222106 (= e!1419416 (= lt!828261 (dynLambda!11506 (defaultValue!3050 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149))))))

(declare-fun d!664044 () Bool)

(assert (=> d!664044 e!1419416))

(declare-fun c!354828 () Bool)

(assert (=> d!664044 (= c!354828 (contains!4334 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149)))))

(assert (=> d!664044 (= lt!828261 e!1419415)))

(declare-fun c!354829 () Bool)

(assert (=> d!664044 (= c!354829 (not (contains!4334 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149))))))

(declare-fun valid!2297 (MutableMap!2888) Bool)

(assert (=> d!664044 (valid!2297 (cache!3269 cacheUp!790))))

(assert (=> d!664044 (= (apply!6446 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149)) lt!828261)))

(declare-fun b!2222107 () Bool)

(assert (=> b!2222107 false))

(declare-fun lt!828272 () Unit!39003)

(declare-fun lt!828249 () Unit!39003)

(assert (=> b!2222107 (= lt!828272 lt!828249)))

(declare-fun lt!828277 () List!26148)

(declare-fun lt!828262 () List!26147)

(assert (=> b!2222107 (contains!4335 lt!828277 (tuple2!25235 lt!828267 lt!828262))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!24 (List!26148 (_ BitVec 64) List!26147) Unit!39003)

(assert (=> b!2222107 (= lt!828249 (lemmaGetValueByKeyImpliesContainsTuple!24 lt!828277 lt!828267 lt!828262))))

(assert (=> b!2222107 (= lt!828262 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828267))))

(assert (=> b!2222107 (= lt!828277 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))

(declare-fun lt!828268 () Unit!39003)

(declare-fun lt!828274 () Unit!39003)

(assert (=> b!2222107 (= lt!828268 lt!828274)))

(declare-fun lt!828265 () List!26148)

(declare-datatypes ((Option!5060 0))(
  ( (None!5059) (Some!5059 (v!29599 List!26147)) )
))
(declare-fun isDefined!4123 (Option!5060) Bool)

(declare-fun getValueByKey!64 (List!26148 (_ BitVec 64)) Option!5060)

(assert (=> b!2222107 (isDefined!4123 (getValueByKey!64 lt!828265 lt!828267))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!41 (List!26148 (_ BitVec 64)) Unit!39003)

(assert (=> b!2222107 (= lt!828274 (lemmaContainsKeyImpliesGetValueByKeyDefined!41 lt!828265 lt!828267))))

(assert (=> b!2222107 (= lt!828265 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))

(declare-fun Unit!39006 () Unit!39003)

(assert (=> b!2222107 (= e!1419417 Unit!39006)))

(declare-fun b!2222108 () Bool)

(assert (=> b!2222108 (= e!1419415 (dynLambda!11506 (defaultValue!3050 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(assert (= (and d!664044 c!354829) b!2222108))

(assert (= (and d!664044 (not c!354829)) b!2222103))

(assert (= (and b!2222103 c!354827) b!2222107))

(assert (= (and b!2222103 (not c!354827)) b!2222104))

(assert (= (and d!664044 c!354828) b!2222105))

(assert (= (and d!664044 (not c!354828)) b!2222106))

(declare-fun b_lambda!71553 () Bool)

(assert (=> (not b_lambda!71553) (not b!2222106)))

(declare-fun t!199552 () Bool)

(declare-fun tb!132843 () Bool)

(assert (=> (and b!2222011 (= (defaultValue!3050 (cache!3269 cacheUp!790)) (defaultValue!3050 (cache!3269 cacheUp!790))) t!199552) tb!132843))

(assert (=> b!2222106 t!199552))

(declare-fun result!161332 () Bool)

(declare-fun b_and!174345 () Bool)

(assert (= b_and!174341 (and (=> t!199552 result!161332) b_and!174345)))

(declare-fun b_lambda!71555 () Bool)

(assert (=> (not b_lambda!71555) (not b!2222108)))

(assert (=> b!2222108 t!199552))

(declare-fun b_and!174347 () Bool)

(assert (= b_and!174345 (and (=> t!199552 result!161332) b_and!174347)))

(assert (=> d!664044 m!2662401))

(declare-fun m!2662441 () Bool)

(assert (=> d!664044 m!2662441))

(declare-fun m!2662443 () Bool)

(assert (=> b!2222105 m!2662443))

(declare-fun m!2662445 () Bool)

(assert (=> b!2222105 m!2662445))

(assert (=> b!2222105 m!2662445))

(declare-fun m!2662447 () Bool)

(assert (=> b!2222105 m!2662447))

(declare-fun m!2662449 () Bool)

(assert (=> b!2222108 m!2662449))

(declare-fun m!2662451 () Bool)

(assert (=> b!2222103 m!2662451))

(declare-fun m!2662453 () Bool)

(assert (=> b!2222103 m!2662453))

(assert (=> b!2222103 m!2662453))

(declare-fun m!2662455 () Bool)

(assert (=> b!2222103 m!2662455))

(declare-fun m!2662457 () Bool)

(assert (=> b!2222103 m!2662457))

(declare-fun m!2662459 () Bool)

(assert (=> b!2222103 m!2662459))

(assert (=> b!2222103 m!2662453))

(declare-fun m!2662461 () Bool)

(assert (=> b!2222103 m!2662461))

(declare-fun m!2662463 () Bool)

(assert (=> b!2222103 m!2662463))

(declare-fun m!2662465 () Bool)

(assert (=> b!2222103 m!2662465))

(declare-fun m!2662467 () Bool)

(assert (=> b!2222103 m!2662467))

(declare-fun m!2662469 () Bool)

(assert (=> b!2222103 m!2662469))

(declare-fun m!2662471 () Bool)

(assert (=> b!2222103 m!2662471))

(declare-fun m!2662473 () Bool)

(assert (=> b!2222103 m!2662473))

(assert (=> b!2222103 m!2662459))

(assert (=> b!2222103 m!2662469))

(declare-fun m!2662475 () Bool)

(assert (=> b!2222103 m!2662475))

(declare-fun m!2662477 () Bool)

(assert (=> b!2222103 m!2662477))

(declare-fun m!2662479 () Bool)

(assert (=> b!2222103 m!2662479))

(declare-fun m!2662481 () Bool)

(assert (=> b!2222103 m!2662481))

(declare-fun m!2662483 () Bool)

(assert (=> b!2222103 m!2662483))

(declare-fun m!2662485 () Bool)

(assert (=> b!2222103 m!2662485))

(declare-fun m!2662487 () Bool)

(assert (=> b!2222103 m!2662487))

(declare-fun m!2662489 () Bool)

(assert (=> b!2222103 m!2662489))

(assert (=> b!2222103 m!2662477))

(assert (=> b!2222103 m!2662483))

(declare-fun m!2662491 () Bool)

(assert (=> b!2222103 m!2662491))

(declare-fun m!2662493 () Bool)

(assert (=> b!2222103 m!2662493))

(assert (=> b!2222103 m!2662479))

(declare-fun m!2662495 () Bool)

(assert (=> b!2222103 m!2662495))

(assert (=> b!2222103 m!2662461))

(assert (=> b!2222103 m!2662483))

(assert (=> b!2222106 m!2662449))

(declare-fun m!2662497 () Bool)

(assert (=> b!2222107 m!2662497))

(assert (=> b!2222107 m!2662473))

(declare-fun m!2662499 () Bool)

(assert (=> b!2222107 m!2662499))

(assert (=> b!2222107 m!2662459))

(assert (=> b!2222107 m!2662499))

(declare-fun m!2662501 () Bool)

(assert (=> b!2222107 m!2662501))

(declare-fun m!2662503 () Bool)

(assert (=> b!2222107 m!2662503))

(declare-fun m!2662505 () Bool)

(assert (=> b!2222107 m!2662505))

(assert (=> b!2222040 d!664044))

(declare-fun d!664046 () Bool)

(declare-fun e!1419425 () Bool)

(assert (=> d!664046 e!1419425))

(declare-fun res!953728 () Bool)

(assert (=> d!664046 (=> res!953728 e!1419425)))

(assert (=> d!664046 (= res!953728 (not (contains!4334 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149))))))

(declare-fun lt!828293 () Unit!39003)

(declare-fun e!1419426 () Unit!39003)

(assert (=> d!664046 (= lt!828293 e!1419426)))

(declare-fun c!354832 () Bool)

(assert (=> d!664046 (= c!354832 (contains!4334 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149)))))

(assert (=> d!664046 (validCacheMapUp!269 (cache!3269 cacheUp!790))))

(assert (=> d!664046 (= (lemmaIfInCacheThenValid!21 cacheUp!790 context!72 a!1149) lt!828293)))

(declare-fun b!2222115 () Bool)

(declare-fun lt!828297 () Unit!39003)

(assert (=> b!2222115 (= e!1419426 lt!828297)))

(declare-fun lt!828298 () tuple2!25230)

(assert (=> b!2222115 (= lt!828298 (tuple2!25231 context!72 a!1149))))

(declare-fun lambda!83912 () Int)

(declare-fun lemmaForallPairsThenForLookup!15 (MutableMap!2888 tuple2!25230 Int) Unit!39003)

(assert (=> b!2222115 (= lt!828297 (lemmaForallPairsThenForLookup!15 (cache!3269 cacheUp!790) lt!828298 lambda!83912))))

(declare-fun lt!828292 () tuple2!25232)

(assert (=> b!2222115 (= lt!828292 (tuple2!25233 lt!828298 (apply!6446 (cache!3269 cacheUp!790) lt!828298)))))

(declare-fun lt!828295 () tuple2!25230)

(assert (=> b!2222115 (= lt!828295 lt!828298)))

(declare-fun lt!828296 () (InoxSet Context!3786))

(assert (=> b!2222115 (= lt!828296 (apply!6446 (cache!3269 cacheUp!790) lt!828298))))

(declare-fun lt!828294 () (InoxSet Context!3786))

(assert (=> b!2222115 (= lt!828294 (apply!6446 (cache!3269 cacheUp!790) lt!828298))))

(assert (=> b!2222115 (= (apply!6446 (cache!3269 cacheUp!790) lt!828298) (derivationStepZipperUp!19 (_1!14993 lt!828298) (_2!14993 lt!828298)))))

(declare-fun b!2222116 () Bool)

(declare-fun Unit!39007 () Unit!39003)

(assert (=> b!2222116 (= e!1419426 Unit!39007)))

(declare-fun b!2222117 () Bool)

(assert (=> b!2222117 (= e!1419425 (= (derivationStepZipperUp!19 context!72 a!1149) (apply!6446 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149))))))

(assert (= (and d!664046 c!354832) b!2222115))

(assert (= (and d!664046 (not c!354832)) b!2222116))

(assert (= (and d!664046 (not res!953728)) b!2222117))

(assert (=> d!664046 m!2662401))

(assert (=> d!664046 m!2662403))

(declare-fun m!2662507 () Bool)

(assert (=> b!2222115 m!2662507))

(declare-fun m!2662509 () Bool)

(assert (=> b!2222115 m!2662509))

(declare-fun m!2662511 () Bool)

(assert (=> b!2222115 m!2662511))

(assert (=> b!2222117 m!2662387))

(assert (=> b!2222117 m!2662405))

(assert (=> b!2222040 d!664046))

(declare-fun bs!452775 () Bool)

(declare-fun d!664048 () Bool)

(assert (= bs!452775 (and d!664048 d!664040)))

(declare-fun lambda!83913 () Int)

(assert (=> bs!452775 (= lambda!83913 lambda!83901)))

(declare-fun bs!452776 () Bool)

(assert (= bs!452776 (and d!664048 d!664042)))

(assert (=> bs!452776 (= lambda!83913 lambda!83902)))

(assert (=> d!664048 (= (inv!35377 setElem!19508) (forall!5305 (exprs!2393 setElem!19508) lambda!83913))))

(declare-fun bs!452777 () Bool)

(assert (= bs!452777 d!664048))

(declare-fun m!2662513 () Bool)

(assert (=> bs!452777 m!2662513))

(assert (=> setNonEmpty!19507 d!664048))

(declare-fun bs!452778 () Bool)

(declare-fun d!664050 () Bool)

(assert (= bs!452778 (and d!664050 d!664040)))

(declare-fun lambda!83914 () Int)

(assert (=> bs!452778 (= lambda!83914 lambda!83901)))

(declare-fun bs!452779 () Bool)

(assert (= bs!452779 (and d!664050 d!664042)))

(assert (=> bs!452779 (= lambda!83914 lambda!83902)))

(declare-fun bs!452780 () Bool)

(assert (= bs!452780 (and d!664050 d!664048)))

(assert (=> bs!452780 (= lambda!83914 lambda!83913)))

(assert (=> d!664050 (= (inv!35377 (_1!14993 (_1!14994 (h!31454 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))) (forall!5305 (exprs!2393 (_1!14993 (_1!14994 (h!31454 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))) lambda!83914))))

(declare-fun bs!452781 () Bool)

(assert (= bs!452781 d!664050))

(declare-fun m!2662515 () Bool)

(assert (=> bs!452781 m!2662515))

(assert (=> b!2222078 d!664050))

(declare-fun bs!452782 () Bool)

(declare-fun d!664052 () Bool)

(assert (= bs!452782 (and d!664052 d!664040)))

(declare-fun lambda!83915 () Int)

(assert (=> bs!452782 (= lambda!83915 lambda!83901)))

(declare-fun bs!452783 () Bool)

(assert (= bs!452783 (and d!664052 d!664042)))

(assert (=> bs!452783 (= lambda!83915 lambda!83902)))

(declare-fun bs!452784 () Bool)

(assert (= bs!452784 (and d!664052 d!664048)))

(assert (=> bs!452784 (= lambda!83915 lambda!83913)))

(declare-fun bs!452785 () Bool)

(assert (= bs!452785 (and d!664052 d!664050)))

(assert (=> bs!452785 (= lambda!83915 lambda!83914)))

(assert (=> d!664052 (= (inv!35377 (_1!14993 (_1!14994 (h!31454 mapValue!14056)))) (forall!5305 (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapValue!14056)))) lambda!83915))))

(declare-fun bs!452786 () Bool)

(assert (= bs!452786 d!664052))

(declare-fun m!2662517 () Bool)

(assert (=> bs!452786 m!2662517))

(assert (=> b!2222065 d!664052))

(declare-fun bs!452787 () Bool)

(declare-fun d!664054 () Bool)

(assert (= bs!452787 (and d!664054 d!664052)))

(declare-fun lambda!83916 () Int)

(assert (=> bs!452787 (= lambda!83916 lambda!83915)))

(declare-fun bs!452788 () Bool)

(assert (= bs!452788 (and d!664054 d!664040)))

(assert (=> bs!452788 (= lambda!83916 lambda!83901)))

(declare-fun bs!452789 () Bool)

(assert (= bs!452789 (and d!664054 d!664050)))

(assert (=> bs!452789 (= lambda!83916 lambda!83914)))

(declare-fun bs!452790 () Bool)

(assert (= bs!452790 (and d!664054 d!664048)))

(assert (=> bs!452790 (= lambda!83916 lambda!83913)))

(declare-fun bs!452791 () Bool)

(assert (= bs!452791 (and d!664054 d!664042)))

(assert (=> bs!452791 (= lambda!83916 lambda!83902)))

(assert (=> d!664054 (= (inv!35377 setElem!19511) (forall!5305 (exprs!2393 setElem!19511) lambda!83916))))

(declare-fun bs!452792 () Bool)

(assert (= bs!452792 d!664054))

(declare-fun m!2662519 () Bool)

(assert (=> bs!452792 m!2662519))

(assert (=> setNonEmpty!19511 d!664054))

(declare-fun bm!132655 () Bool)

(declare-fun call!132664 () (InoxSet Context!3786))

(declare-fun call!132662 () (InoxSet Context!3786))

(assert (=> bm!132655 (= call!132664 call!132662)))

(declare-fun b!2222140 () Bool)

(declare-fun e!1419440 () (InoxSet Context!3786))

(assert (=> b!2222140 (= e!1419440 call!132664)))

(declare-fun b!2222141 () Bool)

(declare-fun e!1419442 () (InoxSet Context!3786))

(declare-fun call!132663 () (InoxSet Context!3786))

(declare-fun call!132665 () (InoxSet Context!3786))

(assert (=> b!2222141 (= e!1419442 ((_ map or) call!132663 call!132665))))

(declare-fun c!354845 () Bool)

(declare-fun call!132661 () List!26146)

(declare-fun c!354843 () Bool)

(declare-fun bm!132656 () Bool)

(declare-fun $colon$colon!501 (List!26146 Regex!6345) List!26146)

(assert (=> bm!132656 (= call!132661 ($colon$colon!501 (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72)))) (ite (or c!354843 c!354845) (regTwo!13202 (h!31453 (exprs!2393 context!72))) (h!31453 (exprs!2393 context!72)))))))

(declare-fun b!2222142 () Bool)

(assert (=> b!2222142 (= e!1419440 ((as const (Array Context!3786 Bool)) false))))

(declare-fun bm!132657 () Bool)

(declare-fun call!132660 () List!26146)

(assert (=> bm!132657 (= call!132660 call!132661)))

(declare-fun b!2222143 () Bool)

(declare-fun e!1419439 () (InoxSet Context!3786))

(assert (=> b!2222143 (= e!1419439 ((_ map or) call!132665 call!132662))))

(declare-fun b!2222144 () Bool)

(declare-fun e!1419443 () Bool)

(assert (=> b!2222144 (= c!354843 e!1419443)))

(declare-fun res!953731 () Bool)

(assert (=> b!2222144 (=> (not res!953731) (not e!1419443))))

(assert (=> b!2222144 (= res!953731 ((_ is Concat!10683) (h!31453 (exprs!2393 context!72))))))

(assert (=> b!2222144 (= e!1419442 e!1419439)))

(declare-fun b!2222145 () Bool)

(declare-fun e!1419444 () (InoxSet Context!3786))

(assert (=> b!2222145 (= e!1419444 e!1419442)))

(declare-fun c!354847 () Bool)

(assert (=> b!2222145 (= c!354847 ((_ is Union!6345) (h!31453 (exprs!2393 context!72))))))

(declare-fun b!2222146 () Bool)

(declare-fun c!354844 () Bool)

(assert (=> b!2222146 (= c!354844 ((_ is Star!6345) (h!31453 (exprs!2393 context!72))))))

(declare-fun e!1419441 () (InoxSet Context!3786))

(assert (=> b!2222146 (= e!1419441 e!1419440)))

(declare-fun bm!132658 () Bool)

(assert (=> bm!132658 (= call!132663 (derivationStepZipperDown!19 (ite c!354847 (regOne!13203 (h!31453 (exprs!2393 context!72))) (ite c!354843 (regTwo!13202 (h!31453 (exprs!2393 context!72))) (ite c!354845 (regOne!13202 (h!31453 (exprs!2393 context!72))) (reg!6674 (h!31453 (exprs!2393 context!72)))))) (ite (or c!354847 c!354843) (Context!3787 (t!199549 (exprs!2393 context!72))) (Context!3787 call!132660)) a!1149))))

(declare-fun b!2222147 () Bool)

(assert (=> b!2222147 (= e!1419443 (nullable!1725 (regOne!13202 (h!31453 (exprs!2393 context!72)))))))

(declare-fun bm!132659 () Bool)

(assert (=> bm!132659 (= call!132662 call!132663)))

(declare-fun d!664056 () Bool)

(declare-fun c!354846 () Bool)

(assert (=> d!664056 (= c!354846 (and ((_ is ElementMatch!6345) (h!31453 (exprs!2393 context!72))) (= (c!354811 (h!31453 (exprs!2393 context!72))) a!1149)))))

(assert (=> d!664056 (= (derivationStepZipperDown!19 (h!31453 (exprs!2393 context!72)) (Context!3787 (t!199549 (exprs!2393 context!72))) a!1149) e!1419444)))

(declare-fun bm!132660 () Bool)

(assert (=> bm!132660 (= call!132665 (derivationStepZipperDown!19 (ite c!354847 (regTwo!13203 (h!31453 (exprs!2393 context!72))) (regOne!13202 (h!31453 (exprs!2393 context!72)))) (ite c!354847 (Context!3787 (t!199549 (exprs!2393 context!72))) (Context!3787 call!132661)) a!1149))))

(declare-fun b!2222148 () Bool)

(assert (=> b!2222148 (= e!1419441 call!132664)))

(declare-fun b!2222149 () Bool)

(assert (=> b!2222149 (= e!1419439 e!1419441)))

(assert (=> b!2222149 (= c!354845 ((_ is Concat!10683) (h!31453 (exprs!2393 context!72))))))

(declare-fun b!2222150 () Bool)

(assert (=> b!2222150 (= e!1419444 (store ((as const (Array Context!3786 Bool)) false) (Context!3787 (t!199549 (exprs!2393 context!72))) true))))

(assert (= (and d!664056 c!354846) b!2222150))

(assert (= (and d!664056 (not c!354846)) b!2222145))

(assert (= (and b!2222145 c!354847) b!2222141))

(assert (= (and b!2222145 (not c!354847)) b!2222144))

(assert (= (and b!2222144 res!953731) b!2222147))

(assert (= (and b!2222144 c!354843) b!2222143))

(assert (= (and b!2222144 (not c!354843)) b!2222149))

(assert (= (and b!2222149 c!354845) b!2222148))

(assert (= (and b!2222149 (not c!354845)) b!2222146))

(assert (= (and b!2222146 c!354844) b!2222140))

(assert (= (and b!2222146 (not c!354844)) b!2222142))

(assert (= (or b!2222148 b!2222140) bm!132657))

(assert (= (or b!2222148 b!2222140) bm!132655))

(assert (= (or b!2222143 bm!132657) bm!132656))

(assert (= (or b!2222143 bm!132655) bm!132659))

(assert (= (or b!2222141 b!2222143) bm!132660))

(assert (= (or b!2222141 bm!132659) bm!132658))

(declare-fun m!2662521 () Bool)

(assert (=> b!2222147 m!2662521))

(declare-fun m!2662523 () Bool)

(assert (=> bm!132656 m!2662523))

(declare-fun m!2662525 () Bool)

(assert (=> bm!132658 m!2662525))

(declare-fun m!2662527 () Bool)

(assert (=> b!2222150 m!2662527))

(declare-fun m!2662529 () Bool)

(assert (=> bm!132660 m!2662529))

(assert (=> bm!132642 d!664056))

(declare-fun b!2222151 () Bool)

(declare-fun e!1419445 () (InoxSet Context!3786))

(assert (=> b!2222151 (= e!1419445 ((as const (Array Context!3786 Bool)) false))))

(declare-fun bm!132661 () Bool)

(declare-fun call!132666 () (InoxSet Context!3786))

(assert (=> bm!132661 (= call!132666 (derivationStepZipperDown!19 (h!31453 (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72))))) (Context!3787 (t!199549 (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72)))))) a!1149))))

(declare-fun b!2222152 () Bool)

(declare-fun e!1419447 () (InoxSet Context!3786))

(assert (=> b!2222152 (= e!1419447 ((_ map or) call!132666 (derivationStepZipperUp!19 (Context!3787 (t!199549 (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72)))))) a!1149)))))

(declare-fun b!2222153 () Bool)

(assert (=> b!2222153 (= e!1419447 e!1419445)))

(declare-fun c!354848 () Bool)

(assert (=> b!2222153 (= c!354848 ((_ is Cons!26052) (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72))))))))

(declare-fun d!664058 () Bool)

(declare-fun c!354849 () Bool)

(declare-fun e!1419446 () Bool)

(assert (=> d!664058 (= c!354849 e!1419446)))

(declare-fun res!953732 () Bool)

(assert (=> d!664058 (=> (not res!953732) (not e!1419446))))

(assert (=> d!664058 (= res!953732 ((_ is Cons!26052) (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72))))))))

(assert (=> d!664058 (= (derivationStepZipperUp!19 (Context!3787 (t!199549 (exprs!2393 context!72))) a!1149) e!1419447)))

(declare-fun b!2222154 () Bool)

(assert (=> b!2222154 (= e!1419446 (nullable!1725 (h!31453 (exprs!2393 (Context!3787 (t!199549 (exprs!2393 context!72)))))))))

(declare-fun b!2222155 () Bool)

(assert (=> b!2222155 (= e!1419445 call!132666)))

(assert (= (and d!664058 res!953732) b!2222154))

(assert (= (and d!664058 c!354849) b!2222152))

(assert (= (and d!664058 (not c!354849)) b!2222153))

(assert (= (and b!2222153 c!354848) b!2222155))

(assert (= (and b!2222153 (not c!354848)) b!2222151))

(assert (= (or b!2222152 b!2222155) bm!132661))

(declare-fun m!2662531 () Bool)

(assert (=> bm!132661 m!2662531))

(declare-fun m!2662533 () Bool)

(assert (=> b!2222152 m!2662533))

(declare-fun m!2662535 () Bool)

(assert (=> b!2222154 m!2662535))

(assert (=> b!2222030 d!664058))

(declare-fun d!664060 () Bool)

(assert (=> d!664060 (= (isEmpty!14872 lt!828187) (not ((_ is Some!5057) lt!828187)))))

(assert (=> d!664036 d!664060))

(declare-fun bs!452793 () Bool)

(declare-fun b!2222183 () Bool)

(assert (= bs!452793 (and b!2222183 b!2222103)))

(declare-fun lambda!83919 () Int)

(assert (=> bs!452793 (= lambda!83919 lambda!83909)))

(declare-fun lt!828343 () Bool)

(declare-fun d!664062 () Bool)

(declare-fun contains!4337 (ListMap!753 tuple2!25230) Bool)

(assert (=> d!664062 (= lt!828343 (contains!4337 (map!5289 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(declare-fun e!1419465 () Bool)

(assert (=> d!664062 (= lt!828343 e!1419465)))

(declare-fun res!953739 () Bool)

(assert (=> d!664062 (=> (not res!953739) (not e!1419465))))

(declare-fun lt!828344 () (_ BitVec 64))

(declare-fun contains!4338 (MutLongMap!2978 (_ BitVec 64)) Bool)

(assert (=> d!664062 (= res!953739 (contains!4338 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828344))))

(declare-fun lt!828341 () Unit!39003)

(declare-fun e!1419468 () Unit!39003)

(assert (=> d!664062 (= lt!828341 e!1419468)))

(declare-fun c!354860 () Bool)

(assert (=> d!664062 (= c!354860 (contains!4337 (extractMap!92 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))) (tuple2!25231 context!72 a!1149)))))

(declare-fun lt!828353 () Unit!39003)

(declare-fun e!1419467 () Unit!39003)

(assert (=> d!664062 (= lt!828353 e!1419467)))

(declare-fun c!354858 () Bool)

(assert (=> d!664062 (= c!354858 (contains!4338 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828344))))

(assert (=> d!664062 (= lt!828344 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(assert (=> d!664062 (valid!2297 (cache!3269 cacheUp!790))))

(assert (=> d!664062 (= (contains!4334 (cache!3269 cacheUp!790) (tuple2!25231 context!72 a!1149)) lt!828343)))

(declare-fun b!2222178 () Bool)

(assert (=> b!2222178 false))

(declare-fun lt!828358 () Unit!39003)

(declare-fun lt!828351 () Unit!39003)

(assert (=> b!2222178 (= lt!828358 lt!828351)))

(declare-fun lt!828355 () ListLongMap!289)

(assert (=> b!2222178 (contains!4337 (extractMap!92 (toList!1294 lt!828355)) (tuple2!25231 context!72 a!1149))))

(declare-fun lemmaInLongMapThenInGenericMap!23 (ListLongMap!289 tuple2!25230 Hashable!2888) Unit!39003)

(assert (=> b!2222178 (= lt!828351 (lemmaInLongMapThenInGenericMap!23 lt!828355 (tuple2!25231 context!72 a!1149) (hashF!4811 (cache!3269 cacheUp!790))))))

(declare-fun call!132683 () ListLongMap!289)

(assert (=> b!2222178 (= lt!828355 call!132683)))

(declare-fun e!1419466 () Unit!39003)

(declare-fun Unit!39008 () Unit!39003)

(assert (=> b!2222178 (= e!1419466 Unit!39008)))

(declare-fun b!2222179 () Bool)

(declare-fun Unit!39009 () Unit!39003)

(assert (=> b!2222179 (= e!1419467 Unit!39009)))

(declare-fun bm!132674 () Bool)

(declare-fun call!132684 () Bool)

(declare-fun call!132680 () Option!5059)

(assert (=> bm!132674 (= call!132684 (isDefined!4122 call!132680))))

(declare-fun bm!132675 () Bool)

(declare-fun call!132679 () List!26147)

(assert (=> bm!132675 (= call!132680 (getPair!23 call!132679 (tuple2!25231 context!72 a!1149)))))

(declare-fun b!2222180 () Bool)

(assert (=> b!2222180 false))

(declare-fun lt!828357 () Unit!39003)

(declare-fun lt!828339 () Unit!39003)

(assert (=> b!2222180 (= lt!828357 lt!828339)))

(declare-fun lt!828340 () List!26148)

(declare-fun lt!828352 () List!26147)

(assert (=> b!2222180 (contains!4335 lt!828340 (tuple2!25235 lt!828344 lt!828352))))

(assert (=> b!2222180 (= lt!828339 (lemmaGetValueByKeyImpliesContainsTuple!24 lt!828340 lt!828344 lt!828352))))

(assert (=> b!2222180 (= lt!828352 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828344))))

(assert (=> b!2222180 (= lt!828340 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))

(declare-fun lt!828347 () Unit!39003)

(declare-fun lt!828348 () Unit!39003)

(assert (=> b!2222180 (= lt!828347 lt!828348)))

(declare-fun lt!828356 () List!26148)

(assert (=> b!2222180 (isDefined!4123 (getValueByKey!64 lt!828356 lt!828344))))

(assert (=> b!2222180 (= lt!828348 (lemmaContainsKeyImpliesGetValueByKeyDefined!41 lt!828356 lt!828344))))

(assert (=> b!2222180 (= lt!828356 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))

(declare-fun lt!828346 () Unit!39003)

(declare-fun lt!828354 () Unit!39003)

(assert (=> b!2222180 (= lt!828346 lt!828354)))

(declare-fun lt!828342 () List!26148)

(declare-fun containsKey!64 (List!26148 (_ BitVec 64)) Bool)

(assert (=> b!2222180 (containsKey!64 lt!828342 lt!828344)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!24 (List!26148 (_ BitVec 64)) Unit!39003)

(assert (=> b!2222180 (= lt!828354 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!24 lt!828342 lt!828344))))

(assert (=> b!2222180 (= lt!828342 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))

(declare-fun e!1419462 () Unit!39003)

(declare-fun Unit!39010 () Unit!39003)

(assert (=> b!2222180 (= e!1419462 Unit!39010)))

(declare-fun b!2222181 () Bool)

(assert (=> b!2222181 (= e!1419468 e!1419466)))

(declare-fun res!953740 () Bool)

(declare-fun call!132681 () Bool)

(assert (=> b!2222181 (= res!953740 call!132681)))

(declare-fun e!1419464 () Bool)

(assert (=> b!2222181 (=> (not res!953740) (not e!1419464))))

(declare-fun c!354859 () Bool)

(assert (=> b!2222181 (= c!354859 e!1419464)))

(declare-fun b!2222182 () Bool)

(assert (=> b!2222182 (= e!1419464 call!132684)))

(assert (=> b!2222183 (= e!1419467 (forallContained!770 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))) lambda!83919 (tuple2!25235 lt!828344 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828344))))))

(declare-fun c!354861 () Bool)

(assert (=> b!2222183 (= c!354861 (not (contains!4335 (toList!1294 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))) (tuple2!25235 lt!828344 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828344)))))))

(declare-fun lt!828350 () Unit!39003)

(assert (=> b!2222183 (= lt!828350 e!1419462)))

(declare-fun b!2222184 () Bool)

(declare-fun Unit!39011 () Unit!39003)

(assert (=> b!2222184 (= e!1419462 Unit!39011)))

(declare-fun b!2222185 () Bool)

(declare-fun lt!828349 () Unit!39003)

(assert (=> b!2222185 (= e!1419468 lt!828349)))

(declare-fun lt!828345 () ListLongMap!289)

(assert (=> b!2222185 (= lt!828345 call!132683)))

(declare-fun lemmaInGenericMapThenInLongMap!23 (ListLongMap!289 tuple2!25230 Hashable!2888) Unit!39003)

(assert (=> b!2222185 (= lt!828349 (lemmaInGenericMapThenInLongMap!23 lt!828345 (tuple2!25231 context!72 a!1149) (hashF!4811 (cache!3269 cacheUp!790))))))

(declare-fun res!953741 () Bool)

(assert (=> b!2222185 (= res!953741 call!132681)))

(declare-fun e!1419463 () Bool)

(assert (=> b!2222185 (=> (not res!953741) (not e!1419463))))

(assert (=> b!2222185 e!1419463))

(declare-fun bm!132676 () Bool)

(assert (=> bm!132676 (= call!132683 (map!5288 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))

(declare-fun call!132682 () (_ BitVec 64))

(declare-fun bm!132677 () Bool)

(assert (=> bm!132677 (= call!132679 (apply!6448 (ite c!354860 lt!828345 call!132683) call!132682))))

(declare-fun b!2222186 () Bool)

(assert (=> b!2222186 (= e!1419463 call!132684)))

(declare-fun b!2222187 () Bool)

(assert (=> b!2222187 (= e!1419465 (isDefined!4122 (getPair!23 (apply!6447 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))) lt!828344) (tuple2!25231 context!72 a!1149))))))

(declare-fun bm!132678 () Bool)

(assert (=> bm!132678 (= call!132681 (contains!4336 (ite c!354860 lt!828345 call!132683) call!132682))))

(declare-fun bm!132679 () Bool)

(assert (=> bm!132679 (= call!132682 (hash!562 (hashF!4811 (cache!3269 cacheUp!790)) (tuple2!25231 context!72 a!1149)))))

(declare-fun b!2222188 () Bool)

(declare-fun Unit!39012 () Unit!39003)

(assert (=> b!2222188 (= e!1419466 Unit!39012)))

(assert (= (and d!664062 c!354858) b!2222183))

(assert (= (and d!664062 (not c!354858)) b!2222179))

(assert (= (and b!2222183 c!354861) b!2222180))

(assert (= (and b!2222183 (not c!354861)) b!2222184))

(assert (= (and d!664062 c!354860) b!2222185))

(assert (= (and d!664062 (not c!354860)) b!2222181))

(assert (= (and b!2222185 res!953741) b!2222186))

(assert (= (and b!2222181 res!953740) b!2222182))

(assert (= (and b!2222181 c!354859) b!2222178))

(assert (= (and b!2222181 (not c!354859)) b!2222188))

(assert (= (or b!2222185 b!2222181 b!2222182 b!2222178) bm!132676))

(assert (= (or b!2222185 b!2222186 b!2222181 b!2222182) bm!132679))

(assert (= (or b!2222186 b!2222182) bm!132677))

(assert (= (or b!2222185 b!2222181) bm!132678))

(assert (= (or b!2222186 b!2222182) bm!132675))

(assert (= (or b!2222186 b!2222182) bm!132674))

(assert (= (and d!664062 res!953739) b!2222187))

(declare-fun m!2662537 () Bool)

(assert (=> d!664062 m!2662537))

(assert (=> d!664062 m!2662443))

(assert (=> d!664062 m!2662443))

(declare-fun m!2662539 () Bool)

(assert (=> d!664062 m!2662539))

(assert (=> d!664062 m!2662453))

(assert (=> d!664062 m!2662473))

(declare-fun m!2662541 () Bool)

(assert (=> d!664062 m!2662541))

(assert (=> d!664062 m!2662541))

(declare-fun m!2662543 () Bool)

(assert (=> d!664062 m!2662543))

(assert (=> d!664062 m!2662441))

(declare-fun m!2662545 () Bool)

(assert (=> bm!132674 m!2662545))

(declare-fun m!2662547 () Bool)

(assert (=> bm!132678 m!2662547))

(assert (=> b!2222183 m!2662473))

(declare-fun m!2662549 () Bool)

(assert (=> b!2222183 m!2662549))

(declare-fun m!2662551 () Bool)

(assert (=> b!2222183 m!2662551))

(declare-fun m!2662553 () Bool)

(assert (=> b!2222183 m!2662553))

(assert (=> bm!132676 m!2662473))

(declare-fun m!2662555 () Bool)

(assert (=> b!2222178 m!2662555))

(assert (=> b!2222178 m!2662555))

(declare-fun m!2662557 () Bool)

(assert (=> b!2222178 m!2662557))

(declare-fun m!2662559 () Bool)

(assert (=> b!2222178 m!2662559))

(assert (=> bm!132679 m!2662453))

(declare-fun m!2662561 () Bool)

(assert (=> bm!132677 m!2662561))

(declare-fun m!2662563 () Bool)

(assert (=> b!2222185 m!2662563))

(declare-fun m!2662565 () Bool)

(assert (=> bm!132675 m!2662565))

(assert (=> b!2222187 m!2662549))

(assert (=> b!2222187 m!2662549))

(declare-fun m!2662567 () Bool)

(assert (=> b!2222187 m!2662567))

(assert (=> b!2222187 m!2662567))

(declare-fun m!2662569 () Bool)

(assert (=> b!2222187 m!2662569))

(declare-fun m!2662571 () Bool)

(assert (=> b!2222180 m!2662571))

(declare-fun m!2662573 () Bool)

(assert (=> b!2222180 m!2662573))

(declare-fun m!2662575 () Bool)

(assert (=> b!2222180 m!2662575))

(declare-fun m!2662577 () Bool)

(assert (=> b!2222180 m!2662577))

(assert (=> b!2222180 m!2662577))

(declare-fun m!2662579 () Bool)

(assert (=> b!2222180 m!2662579))

(assert (=> b!2222180 m!2662549))

(assert (=> b!2222180 m!2662473))

(declare-fun m!2662581 () Bool)

(assert (=> b!2222180 m!2662581))

(declare-fun m!2662583 () Bool)

(assert (=> b!2222180 m!2662583))

(assert (=> d!664036 d!664062))

(declare-fun bs!452794 () Bool)

(declare-fun b!2222194 () Bool)

(assert (= bs!452794 (and b!2222194 b!2222115)))

(declare-fun lambda!83922 () Int)

(assert (=> bs!452794 (= lambda!83922 lambda!83912)))

(declare-fun d!664064 () Bool)

(declare-fun res!953746 () Bool)

(declare-fun e!1419471 () Bool)

(assert (=> d!664064 (=> (not res!953746) (not e!1419471))))

(assert (=> d!664064 (= res!953746 (valid!2297 (cache!3269 cacheUp!790)))))

(assert (=> d!664064 (= (validCacheMapUp!269 (cache!3269 cacheUp!790)) e!1419471)))

(declare-fun b!2222193 () Bool)

(declare-fun res!953747 () Bool)

(assert (=> b!2222193 (=> (not res!953747) (not e!1419471))))

(declare-fun invariantList!345 (List!26147) Bool)

(assert (=> b!2222193 (= res!953747 (invariantList!345 (toList!1295 (map!5289 (cache!3269 cacheUp!790)))))))

(declare-fun forall!5306 (List!26147 Int) Bool)

(assert (=> b!2222194 (= e!1419471 (forall!5306 (toList!1295 (map!5289 (cache!3269 cacheUp!790))) lambda!83922))))

(assert (= (and d!664064 res!953746) b!2222193))

(assert (= (and b!2222193 res!953747) b!2222194))

(assert (=> d!664064 m!2662441))

(assert (=> b!2222193 m!2662443))

(declare-fun m!2662586 () Bool)

(assert (=> b!2222193 m!2662586))

(assert (=> b!2222194 m!2662443))

(declare-fun m!2662588 () Bool)

(assert (=> b!2222194 m!2662588))

(assert (=> d!664036 d!664064))

(declare-fun d!664066 () Bool)

(assert (=> d!664066 (= (get!7814 lt!828187) (v!29597 lt!828187))))

(assert (=> b!2222042 d!664066))

(assert (=> b!2222042 d!664030))

(declare-fun bs!452795 () Bool)

(declare-fun d!664068 () Bool)

(assert (= bs!452795 (and d!664068 d!664052)))

(declare-fun lambda!83923 () Int)

(assert (=> bs!452795 (= lambda!83923 lambda!83915)))

(declare-fun bs!452796 () Bool)

(assert (= bs!452796 (and d!664068 d!664054)))

(assert (=> bs!452796 (= lambda!83923 lambda!83916)))

(declare-fun bs!452797 () Bool)

(assert (= bs!452797 (and d!664068 d!664040)))

(assert (=> bs!452797 (= lambda!83923 lambda!83901)))

(declare-fun bs!452798 () Bool)

(assert (= bs!452798 (and d!664068 d!664050)))

(assert (=> bs!452798 (= lambda!83923 lambda!83914)))

(declare-fun bs!452799 () Bool)

(assert (= bs!452799 (and d!664068 d!664048)))

(assert (=> bs!452799 (= lambda!83923 lambda!83913)))

(declare-fun bs!452800 () Bool)

(assert (= bs!452800 (and d!664068 d!664042)))

(assert (=> bs!452800 (= lambda!83923 lambda!83902)))

(assert (=> d!664068 (= (inv!35377 setElem!19507) (forall!5305 (exprs!2393 setElem!19507) lambda!83923))))

(declare-fun bs!452801 () Bool)

(assert (= bs!452801 d!664068))

(declare-fun m!2662590 () Bool)

(assert (=> bs!452801 m!2662590))

(assert (=> setNonEmpty!19508 d!664068))

(declare-fun bs!452802 () Bool)

(declare-fun d!664070 () Bool)

(assert (= bs!452802 (and d!664070 d!664052)))

(declare-fun lambda!83924 () Int)

(assert (=> bs!452802 (= lambda!83924 lambda!83915)))

(declare-fun bs!452803 () Bool)

(assert (= bs!452803 (and d!664070 d!664068)))

(assert (=> bs!452803 (= lambda!83924 lambda!83923)))

(declare-fun bs!452804 () Bool)

(assert (= bs!452804 (and d!664070 d!664054)))

(assert (=> bs!452804 (= lambda!83924 lambda!83916)))

(declare-fun bs!452805 () Bool)

(assert (= bs!452805 (and d!664070 d!664040)))

(assert (=> bs!452805 (= lambda!83924 lambda!83901)))

(declare-fun bs!452806 () Bool)

(assert (= bs!452806 (and d!664070 d!664050)))

(assert (=> bs!452806 (= lambda!83924 lambda!83914)))

(declare-fun bs!452807 () Bool)

(assert (= bs!452807 (and d!664070 d!664048)))

(assert (=> bs!452807 (= lambda!83924 lambda!83913)))

(declare-fun bs!452808 () Bool)

(assert (= bs!452808 (and d!664070 d!664042)))

(assert (=> bs!452808 (= lambda!83924 lambda!83902)))

(assert (=> d!664070 (= (inv!35377 (_1!14993 (_1!14994 (h!31454 mapValue!14053)))) (forall!5305 (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapValue!14053)))) lambda!83924))))

(declare-fun bs!452809 () Bool)

(assert (= bs!452809 d!664070))

(declare-fun m!2662592 () Bool)

(assert (=> bs!452809 m!2662592))

(assert (=> b!2222075 d!664070))

(declare-fun d!664072 () Bool)

(declare-fun nullableFct!400 (Regex!6345) Bool)

(assert (=> d!664072 (= (nullable!1725 (h!31453 (exprs!2393 context!72))) (nullableFct!400 (h!31453 (exprs!2393 context!72))))))

(declare-fun bs!452810 () Bool)

(assert (= bs!452810 d!664072))

(declare-fun m!2662594 () Bool)

(assert (=> bs!452810 m!2662594))

(assert (=> b!2222032 d!664072))

(declare-fun bs!452811 () Bool)

(declare-fun d!664074 () Bool)

(assert (= bs!452811 (and d!664074 d!664052)))

(declare-fun lambda!83925 () Int)

(assert (=> bs!452811 (= lambda!83925 lambda!83915)))

(declare-fun bs!452812 () Bool)

(assert (= bs!452812 (and d!664074 d!664068)))

(assert (=> bs!452812 (= lambda!83925 lambda!83923)))

(declare-fun bs!452813 () Bool)

(assert (= bs!452813 (and d!664074 d!664070)))

(assert (=> bs!452813 (= lambda!83925 lambda!83924)))

(declare-fun bs!452814 () Bool)

(assert (= bs!452814 (and d!664074 d!664054)))

(assert (=> bs!452814 (= lambda!83925 lambda!83916)))

(declare-fun bs!452815 () Bool)

(assert (= bs!452815 (and d!664074 d!664040)))

(assert (=> bs!452815 (= lambda!83925 lambda!83901)))

(declare-fun bs!452816 () Bool)

(assert (= bs!452816 (and d!664074 d!664050)))

(assert (=> bs!452816 (= lambda!83925 lambda!83914)))

(declare-fun bs!452817 () Bool)

(assert (= bs!452817 (and d!664074 d!664048)))

(assert (=> bs!452817 (= lambda!83925 lambda!83913)))

(declare-fun bs!452818 () Bool)

(assert (= bs!452818 (and d!664074 d!664042)))

(assert (=> bs!452818 (= lambda!83925 lambda!83902)))

(assert (=> d!664074 (= (inv!35377 setElem!19514) (forall!5305 (exprs!2393 setElem!19514) lambda!83925))))

(declare-fun bs!452819 () Bool)

(assert (= bs!452819 d!664074))

(declare-fun m!2662596 () Bool)

(assert (=> bs!452819 m!2662596))

(assert (=> setNonEmpty!19514 d!664074))

(declare-fun bs!452820 () Bool)

(declare-fun d!664076 () Bool)

(assert (= bs!452820 (and d!664076 d!664052)))

(declare-fun lambda!83926 () Int)

(assert (=> bs!452820 (= lambda!83926 lambda!83915)))

(declare-fun bs!452821 () Bool)

(assert (= bs!452821 (and d!664076 d!664068)))

(assert (=> bs!452821 (= lambda!83926 lambda!83923)))

(declare-fun bs!452822 () Bool)

(assert (= bs!452822 (and d!664076 d!664074)))

(assert (=> bs!452822 (= lambda!83926 lambda!83925)))

(declare-fun bs!452823 () Bool)

(assert (= bs!452823 (and d!664076 d!664070)))

(assert (=> bs!452823 (= lambda!83926 lambda!83924)))

(declare-fun bs!452824 () Bool)

(assert (= bs!452824 (and d!664076 d!664054)))

(assert (=> bs!452824 (= lambda!83926 lambda!83916)))

(declare-fun bs!452825 () Bool)

(assert (= bs!452825 (and d!664076 d!664040)))

(assert (=> bs!452825 (= lambda!83926 lambda!83901)))

(declare-fun bs!452826 () Bool)

(assert (= bs!452826 (and d!664076 d!664050)))

(assert (=> bs!452826 (= lambda!83926 lambda!83914)))

(declare-fun bs!452827 () Bool)

(assert (= bs!452827 (and d!664076 d!664048)))

(assert (=> bs!452827 (= lambda!83926 lambda!83913)))

(declare-fun bs!452828 () Bool)

(assert (= bs!452828 (and d!664076 d!664042)))

(assert (=> bs!452828 (= lambda!83926 lambda!83902)))

(assert (=> d!664076 (= (inv!35377 (_1!14993 (_1!14994 (h!31454 mapDefault!14056)))) (forall!5305 (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapDefault!14056)))) lambda!83926))))

(declare-fun bs!452829 () Bool)

(assert (= bs!452829 d!664076))

(declare-fun m!2662598 () Bool)

(assert (=> bs!452829 m!2662598))

(assert (=> b!2222062 d!664076))

(declare-fun bs!452830 () Bool)

(declare-fun d!664078 () Bool)

(assert (= bs!452830 (and d!664078 d!664052)))

(declare-fun lambda!83927 () Int)

(assert (=> bs!452830 (= lambda!83927 lambda!83915)))

(declare-fun bs!452831 () Bool)

(assert (= bs!452831 (and d!664078 d!664068)))

(assert (=> bs!452831 (= lambda!83927 lambda!83923)))

(declare-fun bs!452832 () Bool)

(assert (= bs!452832 (and d!664078 d!664076)))

(assert (=> bs!452832 (= lambda!83927 lambda!83926)))

(declare-fun bs!452833 () Bool)

(assert (= bs!452833 (and d!664078 d!664074)))

(assert (=> bs!452833 (= lambda!83927 lambda!83925)))

(declare-fun bs!452834 () Bool)

(assert (= bs!452834 (and d!664078 d!664070)))

(assert (=> bs!452834 (= lambda!83927 lambda!83924)))

(declare-fun bs!452835 () Bool)

(assert (= bs!452835 (and d!664078 d!664054)))

(assert (=> bs!452835 (= lambda!83927 lambda!83916)))

(declare-fun bs!452836 () Bool)

(assert (= bs!452836 (and d!664078 d!664040)))

(assert (=> bs!452836 (= lambda!83927 lambda!83901)))

(declare-fun bs!452837 () Bool)

(assert (= bs!452837 (and d!664078 d!664050)))

(assert (=> bs!452837 (= lambda!83927 lambda!83914)))

(declare-fun bs!452838 () Bool)

(assert (= bs!452838 (and d!664078 d!664048)))

(assert (=> bs!452838 (= lambda!83927 lambda!83913)))

(declare-fun bs!452839 () Bool)

(assert (= bs!452839 (and d!664078 d!664042)))

(assert (=> bs!452839 (= lambda!83927 lambda!83902)))

(assert (=> d!664078 (= (inv!35377 (_1!14993 (_1!14994 (h!31454 mapDefault!14053)))) (forall!5305 (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapDefault!14053)))) lambda!83927))))

(declare-fun bs!452840 () Bool)

(assert (= bs!452840 d!664078))

(declare-fun m!2662600 () Bool)

(assert (=> bs!452840 m!2662600))

(assert (=> b!2222089 d!664078))

(assert (=> b!2222045 d!664064))

(declare-fun d!664080 () Bool)

(declare-fun res!953752 () Bool)

(declare-fun e!1419476 () Bool)

(assert (=> d!664080 (=> res!953752 e!1419476)))

(assert (=> d!664080 (= res!953752 ((_ is Nil!26052) (exprs!2393 context!72)))))

(assert (=> d!664080 (= (forall!5305 (exprs!2393 context!72) lambda!83901) e!1419476)))

(declare-fun b!2222199 () Bool)

(declare-fun e!1419477 () Bool)

(assert (=> b!2222199 (= e!1419476 e!1419477)))

(declare-fun res!953753 () Bool)

(assert (=> b!2222199 (=> (not res!953753) (not e!1419477))))

(declare-fun dynLambda!11507 (Int Regex!6345) Bool)

(assert (=> b!2222199 (= res!953753 (dynLambda!11507 lambda!83901 (h!31453 (exprs!2393 context!72))))))

(declare-fun b!2222200 () Bool)

(assert (=> b!2222200 (= e!1419477 (forall!5305 (t!199549 (exprs!2393 context!72)) lambda!83901))))

(assert (= (and d!664080 (not res!953752)) b!2222199))

(assert (= (and b!2222199 res!953753) b!2222200))

(declare-fun b_lambda!71557 () Bool)

(assert (=> (not b_lambda!71557) (not b!2222199)))

(declare-fun m!2662602 () Bool)

(assert (=> b!2222199 m!2662602))

(declare-fun m!2662604 () Bool)

(assert (=> b!2222200 m!2662604))

(assert (=> d!664040 d!664080))

(declare-fun bs!452841 () Bool)

(declare-fun d!664082 () Bool)

(assert (= bs!452841 (and d!664082 d!664052)))

(declare-fun lambda!83928 () Int)

(assert (=> bs!452841 (= lambda!83928 lambda!83915)))

(declare-fun bs!452842 () Bool)

(assert (= bs!452842 (and d!664082 d!664068)))

(assert (=> bs!452842 (= lambda!83928 lambda!83923)))

(declare-fun bs!452843 () Bool)

(assert (= bs!452843 (and d!664082 d!664076)))

(assert (=> bs!452843 (= lambda!83928 lambda!83926)))

(declare-fun bs!452844 () Bool)

(assert (= bs!452844 (and d!664082 d!664074)))

(assert (=> bs!452844 (= lambda!83928 lambda!83925)))

(declare-fun bs!452845 () Bool)

(assert (= bs!452845 (and d!664082 d!664070)))

(assert (=> bs!452845 (= lambda!83928 lambda!83924)))

(declare-fun bs!452846 () Bool)

(assert (= bs!452846 (and d!664082 d!664054)))

(assert (=> bs!452846 (= lambda!83928 lambda!83916)))

(declare-fun bs!452847 () Bool)

(assert (= bs!452847 (and d!664082 d!664040)))

(assert (=> bs!452847 (= lambda!83928 lambda!83901)))

(declare-fun bs!452848 () Bool)

(assert (= bs!452848 (and d!664082 d!664050)))

(assert (=> bs!452848 (= lambda!83928 lambda!83914)))

(declare-fun bs!452849 () Bool)

(assert (= bs!452849 (and d!664082 d!664078)))

(assert (=> bs!452849 (= lambda!83928 lambda!83927)))

(declare-fun bs!452850 () Bool)

(assert (= bs!452850 (and d!664082 d!664048)))

(assert (=> bs!452850 (= lambda!83928 lambda!83913)))

(declare-fun bs!452851 () Bool)

(assert (= bs!452851 (and d!664082 d!664042)))

(assert (=> bs!452851 (= lambda!83928 lambda!83902)))

(assert (=> d!664082 (= (inv!35377 setElem!19513) (forall!5305 (exprs!2393 setElem!19513) lambda!83928))))

(declare-fun bs!452852 () Bool)

(assert (= bs!452852 d!664082))

(declare-fun m!2662606 () Bool)

(assert (=> bs!452852 m!2662606))

(assert (=> setNonEmpty!19513 d!664082))

(declare-fun bs!452853 () Bool)

(declare-fun d!664084 () Bool)

(assert (= bs!452853 (and d!664084 d!664052)))

(declare-fun lambda!83929 () Int)

(assert (=> bs!452853 (= lambda!83929 lambda!83915)))

(declare-fun bs!452854 () Bool)

(assert (= bs!452854 (and d!664084 d!664068)))

(assert (=> bs!452854 (= lambda!83929 lambda!83923)))

(declare-fun bs!452855 () Bool)

(assert (= bs!452855 (and d!664084 d!664076)))

(assert (=> bs!452855 (= lambda!83929 lambda!83926)))

(declare-fun bs!452856 () Bool)

(assert (= bs!452856 (and d!664084 d!664074)))

(assert (=> bs!452856 (= lambda!83929 lambda!83925)))

(declare-fun bs!452857 () Bool)

(assert (= bs!452857 (and d!664084 d!664070)))

(assert (=> bs!452857 (= lambda!83929 lambda!83924)))

(declare-fun bs!452858 () Bool)

(assert (= bs!452858 (and d!664084 d!664054)))

(assert (=> bs!452858 (= lambda!83929 lambda!83916)))

(declare-fun bs!452859 () Bool)

(assert (= bs!452859 (and d!664084 d!664082)))

(assert (=> bs!452859 (= lambda!83929 lambda!83928)))

(declare-fun bs!452860 () Bool)

(assert (= bs!452860 (and d!664084 d!664040)))

(assert (=> bs!452860 (= lambda!83929 lambda!83901)))

(declare-fun bs!452861 () Bool)

(assert (= bs!452861 (and d!664084 d!664050)))

(assert (=> bs!452861 (= lambda!83929 lambda!83914)))

(declare-fun bs!452862 () Bool)

(assert (= bs!452862 (and d!664084 d!664078)))

(assert (=> bs!452862 (= lambda!83929 lambda!83927)))

(declare-fun bs!452863 () Bool)

(assert (= bs!452863 (and d!664084 d!664048)))

(assert (=> bs!452863 (= lambda!83929 lambda!83913)))

(declare-fun bs!452864 () Bool)

(assert (= bs!452864 (and d!664084 d!664042)))

(assert (=> bs!452864 (= lambda!83929 lambda!83902)))

(assert (=> d!664084 (= (inv!35377 (_1!14993 (_1!14994 (h!31454 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))) (forall!5305 (exprs!2393 (_1!14993 (_1!14994 (h!31454 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))) lambda!83929))))

(declare-fun bs!452865 () Bool)

(assert (= bs!452865 d!664084))

(declare-fun m!2662608 () Bool)

(assert (=> bs!452865 m!2662608))

(assert (=> b!2222081 d!664084))

(declare-fun b!2222201 () Bool)

(declare-fun e!1419478 () Bool)

(declare-fun tp!692796 () Bool)

(declare-fun tp!692797 () Bool)

(assert (=> b!2222201 (= e!1419478 (and tp!692796 tp!692797))))

(assert (=> b!2222088 (= tp!692795 e!1419478)))

(assert (= (and b!2222088 ((_ is Cons!26052) (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapDefault!14053)))))) b!2222201))

(declare-fun b!2222202 () Bool)

(declare-fun e!1419479 () Bool)

(declare-fun tp!692798 () Bool)

(declare-fun tp!692799 () Bool)

(assert (=> b!2222202 (= e!1419479 (and tp!692798 tp!692799))))

(assert (=> b!2222060 (= tp!692759 e!1419479)))

(assert (= (and b!2222060 ((_ is Cons!26052) (exprs!2393 setElem!19508))) b!2222202))

(declare-fun b!2222203 () Bool)

(declare-fun e!1419480 () Bool)

(declare-fun tp!692800 () Bool)

(declare-fun tp!692801 () Bool)

(assert (=> b!2222203 (= e!1419480 (and tp!692800 tp!692801))))

(assert (=> b!2222061 (= tp!692764 e!1419480)))

(assert (= (and b!2222061 ((_ is Cons!26052) (exprs!2393 setElem!19507))) b!2222203))

(declare-fun condSetEmpty!19517 () Bool)

(assert (=> setNonEmpty!19514 (= condSetEmpty!19517 (= setRest!19514 ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setRes!19517 () Bool)

(assert (=> setNonEmpty!19514 (= tp!692794 setRes!19517)))

(declare-fun setIsEmpty!19517 () Bool)

(assert (=> setIsEmpty!19517 setRes!19517))

(declare-fun tp!692806 () Bool)

(declare-fun setElem!19517 () Context!3786)

(declare-fun e!1419483 () Bool)

(declare-fun setNonEmpty!19517 () Bool)

(assert (=> setNonEmpty!19517 (= setRes!19517 (and tp!692806 (inv!35377 setElem!19517) e!1419483))))

(declare-fun setRest!19517 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19517 (= setRest!19514 ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19517 true) setRest!19517))))

(declare-fun b!2222208 () Bool)

(declare-fun tp!692807 () Bool)

(assert (=> b!2222208 (= e!1419483 tp!692807)))

(assert (= (and setNonEmpty!19514 condSetEmpty!19517) setIsEmpty!19517))

(assert (= (and setNonEmpty!19514 (not condSetEmpty!19517)) setNonEmpty!19517))

(assert (= setNonEmpty!19517 b!2222208))

(declare-fun m!2662610 () Bool)

(assert (=> setNonEmpty!19517 m!2662610))

(declare-fun b!2222209 () Bool)

(declare-fun e!1419486 () Bool)

(declare-fun tp!692811 () Bool)

(assert (=> b!2222209 (= e!1419486 tp!692811)))

(declare-fun e!1419485 () Bool)

(assert (=> b!2222062 (= tp!692765 e!1419485)))

(declare-fun setIsEmpty!19518 () Bool)

(declare-fun setRes!19518 () Bool)

(assert (=> setIsEmpty!19518 setRes!19518))

(declare-fun setElem!19518 () Context!3786)

(declare-fun e!1419484 () Bool)

(declare-fun setNonEmpty!19518 () Bool)

(declare-fun tp!692810 () Bool)

(assert (=> setNonEmpty!19518 (= setRes!19518 (and tp!692810 (inv!35377 setElem!19518) e!1419484))))

(declare-fun setRest!19518 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19518 (= (_2!14994 (h!31454 (t!199550 mapDefault!14056))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19518 true) setRest!19518))))

(declare-fun tp!692808 () Bool)

(declare-fun b!2222210 () Bool)

(assert (=> b!2222210 (= e!1419485 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (t!199550 mapDefault!14056))))) e!1419486 tp_is_empty!9915 setRes!19518 tp!692808))))

(declare-fun condSetEmpty!19518 () Bool)

(assert (=> b!2222210 (= condSetEmpty!19518 (= (_2!14994 (h!31454 (t!199550 mapDefault!14056))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222211 () Bool)

(declare-fun tp!692809 () Bool)

(assert (=> b!2222211 (= e!1419484 tp!692809)))

(assert (= b!2222210 b!2222209))

(assert (= (and b!2222210 condSetEmpty!19518) setIsEmpty!19518))

(assert (= (and b!2222210 (not condSetEmpty!19518)) setNonEmpty!19518))

(assert (= setNonEmpty!19518 b!2222211))

(assert (= (and b!2222062 ((_ is Cons!26053) (t!199550 mapDefault!14056))) b!2222210))

(declare-fun m!2662612 () Bool)

(assert (=> setNonEmpty!19518 m!2662612))

(declare-fun m!2662614 () Bool)

(assert (=> b!2222210 m!2662614))

(declare-fun b!2222212 () Bool)

(declare-fun e!1419489 () Bool)

(declare-fun tp!692815 () Bool)

(assert (=> b!2222212 (= e!1419489 tp!692815)))

(declare-fun e!1419488 () Bool)

(assert (=> b!2222089 (= tp!692792 e!1419488)))

(declare-fun setIsEmpty!19519 () Bool)

(declare-fun setRes!19519 () Bool)

(assert (=> setIsEmpty!19519 setRes!19519))

(declare-fun tp!692814 () Bool)

(declare-fun setElem!19519 () Context!3786)

(declare-fun e!1419487 () Bool)

(declare-fun setNonEmpty!19519 () Bool)

(assert (=> setNonEmpty!19519 (= setRes!19519 (and tp!692814 (inv!35377 setElem!19519) e!1419487))))

(declare-fun setRest!19519 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19519 (= (_2!14994 (h!31454 (t!199550 mapDefault!14053))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19519 true) setRest!19519))))

(declare-fun b!2222213 () Bool)

(declare-fun tp!692812 () Bool)

(assert (=> b!2222213 (= e!1419488 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (t!199550 mapDefault!14053))))) e!1419489 tp_is_empty!9915 setRes!19519 tp!692812))))

(declare-fun condSetEmpty!19519 () Bool)

(assert (=> b!2222213 (= condSetEmpty!19519 (= (_2!14994 (h!31454 (t!199550 mapDefault!14053))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222214 () Bool)

(declare-fun tp!692813 () Bool)

(assert (=> b!2222214 (= e!1419487 tp!692813)))

(assert (= b!2222213 b!2222212))

(assert (= (and b!2222213 condSetEmpty!19519) setIsEmpty!19519))

(assert (= (and b!2222213 (not condSetEmpty!19519)) setNonEmpty!19519))

(assert (= setNonEmpty!19519 b!2222214))

(assert (= (and b!2222089 ((_ is Cons!26053) (t!199550 mapDefault!14053))) b!2222213))

(declare-fun m!2662616 () Bool)

(assert (=> setNonEmpty!19519 m!2662616))

(declare-fun m!2662618 () Bool)

(assert (=> b!2222213 m!2662618))

(declare-fun b!2222215 () Bool)

(declare-fun e!1419490 () Bool)

(declare-fun tp!692816 () Bool)

(declare-fun tp!692817 () Bool)

(assert (=> b!2222215 (= e!1419490 (and tp!692816 tp!692817))))

(assert (=> b!2222090 (= tp!692793 e!1419490)))

(assert (= (and b!2222090 ((_ is Cons!26052) (exprs!2393 setElem!19514))) b!2222215))

(declare-fun b!2222216 () Bool)

(declare-fun e!1419491 () Bool)

(declare-fun tp!692818 () Bool)

(declare-fun tp!692819 () Bool)

(assert (=> b!2222216 (= e!1419491 (and tp!692818 tp!692819))))

(assert (=> b!2222063 (= tp!692758 e!1419491)))

(assert (= (and b!2222063 ((_ is Cons!26052) (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapDefault!14056)))))) b!2222216))

(declare-fun b!2222217 () Bool)

(declare-fun e!1419492 () Bool)

(declare-fun tp!692820 () Bool)

(declare-fun tp!692821 () Bool)

(assert (=> b!2222217 (= e!1419492 (and tp!692820 tp!692821))))

(assert (=> b!2222080 (= tp!692785 e!1419492)))

(assert (= (and b!2222080 ((_ is Cons!26052) (exprs!2393 (_1!14993 (_1!14994 (h!31454 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))))) b!2222217))

(declare-fun b!2222218 () Bool)

(declare-fun e!1419493 () Bool)

(declare-fun tp!692822 () Bool)

(declare-fun tp!692823 () Bool)

(assert (=> b!2222218 (= e!1419493 (and tp!692822 tp!692823))))

(assert (=> b!2222077 (= tp!692781 e!1419493)))

(assert (= (and b!2222077 ((_ is Cons!26052) (exprs!2393 (_1!14993 (_1!14994 (h!31454 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790)))))))))))) b!2222218))

(declare-fun b!2222219 () Bool)

(declare-fun e!1419494 () Bool)

(declare-fun tp!692824 () Bool)

(declare-fun tp!692825 () Bool)

(assert (=> b!2222219 (= e!1419494 (and tp!692824 tp!692825))))

(assert (=> b!2222064 (= tp!692757 e!1419494)))

(assert (= (and b!2222064 ((_ is Cons!26052) (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapValue!14056)))))) b!2222219))

(declare-fun condSetEmpty!19520 () Bool)

(assert (=> setNonEmpty!19513 (= condSetEmpty!19520 (= setRest!19513 ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setRes!19520 () Bool)

(assert (=> setNonEmpty!19513 (= tp!692784 setRes!19520)))

(declare-fun setIsEmpty!19520 () Bool)

(assert (=> setIsEmpty!19520 setRes!19520))

(declare-fun tp!692826 () Bool)

(declare-fun setElem!19520 () Context!3786)

(declare-fun setNonEmpty!19520 () Bool)

(declare-fun e!1419495 () Bool)

(assert (=> setNonEmpty!19520 (= setRes!19520 (and tp!692826 (inv!35377 setElem!19520) e!1419495))))

(declare-fun setRest!19520 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19520 (= setRest!19513 ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19520 true) setRest!19520))))

(declare-fun b!2222220 () Bool)

(declare-fun tp!692827 () Bool)

(assert (=> b!2222220 (= e!1419495 tp!692827)))

(assert (= (and setNonEmpty!19513 condSetEmpty!19520) setIsEmpty!19520))

(assert (= (and setNonEmpty!19513 (not condSetEmpty!19520)) setNonEmpty!19520))

(assert (= setNonEmpty!19520 b!2222220))

(declare-fun m!2662620 () Bool)

(assert (=> setNonEmpty!19520 m!2662620))

(declare-fun b!2222221 () Bool)

(declare-fun e!1419496 () Bool)

(declare-fun tp!692828 () Bool)

(declare-fun tp!692829 () Bool)

(assert (=> b!2222221 (= e!1419496 (and tp!692828 tp!692829))))

(assert (=> b!2222074 (= tp!692777 e!1419496)))

(assert (= (and b!2222074 ((_ is Cons!26052) (exprs!2393 (_1!14993 (_1!14994 (h!31454 mapValue!14053)))))) b!2222221))

(declare-fun b!2222222 () Bool)

(declare-fun e!1419499 () Bool)

(declare-fun tp!692833 () Bool)

(assert (=> b!2222222 (= e!1419499 tp!692833)))

(declare-fun e!1419498 () Bool)

(assert (=> b!2222081 (= tp!692782 e!1419498)))

(declare-fun setIsEmpty!19521 () Bool)

(declare-fun setRes!19521 () Bool)

(assert (=> setIsEmpty!19521 setRes!19521))

(declare-fun setElem!19521 () Context!3786)

(declare-fun setNonEmpty!19521 () Bool)

(declare-fun tp!692832 () Bool)

(declare-fun e!1419497 () Bool)

(assert (=> setNonEmpty!19521 (= setRes!19521 (and tp!692832 (inv!35377 setElem!19521) e!1419497))))

(declare-fun setRest!19521 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19521 (= (_2!14994 (h!31454 (t!199550 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19521 true) setRest!19521))))

(declare-fun tp!692830 () Bool)

(declare-fun b!2222223 () Bool)

(assert (=> b!2222223 (= e!1419498 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (t!199550 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))))) e!1419499 tp_is_empty!9915 setRes!19521 tp!692830))))

(declare-fun condSetEmpty!19521 () Bool)

(assert (=> b!2222223 (= condSetEmpty!19521 (= (_2!14994 (h!31454 (t!199550 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222224 () Bool)

(declare-fun tp!692831 () Bool)

(assert (=> b!2222224 (= e!1419497 tp!692831)))

(assert (= b!2222223 b!2222222))

(assert (= (and b!2222223 condSetEmpty!19521) setIsEmpty!19521))

(assert (= (and b!2222223 (not condSetEmpty!19521)) setNonEmpty!19521))

(assert (= setNonEmpty!19521 b!2222224))

(assert (= (and b!2222081 ((_ is Cons!26053) (t!199550 (minValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))) b!2222223))

(declare-fun m!2662622 () Bool)

(assert (=> setNonEmpty!19521 m!2662622))

(declare-fun m!2662624 () Bool)

(assert (=> b!2222223 m!2662624))

(declare-fun condSetEmpty!19522 () Bool)

(assert (=> setNonEmpty!19512 (= condSetEmpty!19522 (= setRest!19512 ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setRes!19522 () Bool)

(assert (=> setNonEmpty!19512 (= tp!692780 setRes!19522)))

(declare-fun setIsEmpty!19522 () Bool)

(assert (=> setIsEmpty!19522 setRes!19522))

(declare-fun e!1419500 () Bool)

(declare-fun setElem!19522 () Context!3786)

(declare-fun setNonEmpty!19522 () Bool)

(declare-fun tp!692834 () Bool)

(assert (=> setNonEmpty!19522 (= setRes!19522 (and tp!692834 (inv!35377 setElem!19522) e!1419500))))

(declare-fun setRest!19522 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19522 (= setRest!19512 ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19522 true) setRest!19522))))

(declare-fun b!2222225 () Bool)

(declare-fun tp!692835 () Bool)

(assert (=> b!2222225 (= e!1419500 tp!692835)))

(assert (= (and setNonEmpty!19512 condSetEmpty!19522) setIsEmpty!19522))

(assert (= (and setNonEmpty!19512 (not condSetEmpty!19522)) setNonEmpty!19522))

(assert (= setNonEmpty!19522 b!2222225))

(declare-fun m!2662626 () Bool)

(assert (=> setNonEmpty!19522 m!2662626))

(declare-fun condSetEmpty!19523 () Bool)

(assert (=> setNonEmpty!19507 (= condSetEmpty!19523 (= setRest!19507 ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setRes!19523 () Bool)

(assert (=> setNonEmpty!19507 (= tp!692760 setRes!19523)))

(declare-fun setIsEmpty!19523 () Bool)

(assert (=> setIsEmpty!19523 setRes!19523))

(declare-fun tp!692836 () Bool)

(declare-fun setNonEmpty!19523 () Bool)

(declare-fun setElem!19523 () Context!3786)

(declare-fun e!1419501 () Bool)

(assert (=> setNonEmpty!19523 (= setRes!19523 (and tp!692836 (inv!35377 setElem!19523) e!1419501))))

(declare-fun setRest!19523 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19523 (= setRest!19507 ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19523 true) setRest!19523))))

(declare-fun b!2222226 () Bool)

(declare-fun tp!692837 () Bool)

(assert (=> b!2222226 (= e!1419501 tp!692837)))

(assert (= (and setNonEmpty!19507 condSetEmpty!19523) setIsEmpty!19523))

(assert (= (and setNonEmpty!19507 (not condSetEmpty!19523)) setNonEmpty!19523))

(assert (= setNonEmpty!19523 b!2222226))

(declare-fun m!2662628 () Bool)

(assert (=> setNonEmpty!19523 m!2662628))

(declare-fun b!2222227 () Bool)

(declare-fun e!1419502 () Bool)

(declare-fun tp!692838 () Bool)

(declare-fun tp!692839 () Bool)

(assert (=> b!2222227 (= e!1419502 (and tp!692838 tp!692839))))

(assert (=> b!2222082 (= tp!692783 e!1419502)))

(assert (= (and b!2222082 ((_ is Cons!26052) (exprs!2393 setElem!19513))) b!2222227))

(declare-fun b!2222228 () Bool)

(declare-fun e!1419505 () Bool)

(declare-fun tp!692843 () Bool)

(assert (=> b!2222228 (= e!1419505 tp!692843)))

(declare-fun e!1419504 () Bool)

(assert (=> b!2222078 (= tp!692778 e!1419504)))

(declare-fun setIsEmpty!19524 () Bool)

(declare-fun setRes!19524 () Bool)

(assert (=> setIsEmpty!19524 setRes!19524))

(declare-fun setElem!19524 () Context!3786)

(declare-fun tp!692842 () Bool)

(declare-fun setNonEmpty!19524 () Bool)

(declare-fun e!1419503 () Bool)

(assert (=> setNonEmpty!19524 (= setRes!19524 (and tp!692842 (inv!35377 setElem!19524) e!1419503))))

(declare-fun setRest!19524 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19524 (= (_2!14994 (h!31454 (t!199550 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19524 true) setRest!19524))))

(declare-fun tp!692840 () Bool)

(declare-fun b!2222229 () Bool)

(assert (=> b!2222229 (= e!1419504 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (t!199550 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))))) e!1419505 tp_is_empty!9915 setRes!19524 tp!692840))))

(declare-fun condSetEmpty!19524 () Bool)

(assert (=> b!2222229 (= condSetEmpty!19524 (= (_2!14994 (h!31454 (t!199550 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222230 () Bool)

(declare-fun tp!692841 () Bool)

(assert (=> b!2222230 (= e!1419503 tp!692841)))

(assert (= b!2222229 b!2222228))

(assert (= (and b!2222229 condSetEmpty!19524) setIsEmpty!19524))

(assert (= (and b!2222229 (not condSetEmpty!19524)) setNonEmpty!19524))

(assert (= setNonEmpty!19524 b!2222230))

(assert (= (and b!2222078 ((_ is Cons!26053) (t!199550 (zeroValue!3236 (v!29595 (underlying!6157 (v!29596 (underlying!6158 (cache!3269 cacheUp!790))))))))) b!2222229))

(declare-fun m!2662630 () Bool)

(assert (=> setNonEmpty!19524 m!2662630))

(declare-fun m!2662632 () Bool)

(assert (=> b!2222229 m!2662632))

(declare-fun b!2222231 () Bool)

(declare-fun e!1419508 () Bool)

(declare-fun tp!692847 () Bool)

(assert (=> b!2222231 (= e!1419508 tp!692847)))

(declare-fun e!1419507 () Bool)

(assert (=> b!2222065 (= tp!692762 e!1419507)))

(declare-fun setIsEmpty!19525 () Bool)

(declare-fun setRes!19525 () Bool)

(assert (=> setIsEmpty!19525 setRes!19525))

(declare-fun tp!692846 () Bool)

(declare-fun setElem!19525 () Context!3786)

(declare-fun e!1419506 () Bool)

(declare-fun setNonEmpty!19525 () Bool)

(assert (=> setNonEmpty!19525 (= setRes!19525 (and tp!692846 (inv!35377 setElem!19525) e!1419506))))

(declare-fun setRest!19525 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19525 (= (_2!14994 (h!31454 (t!199550 mapValue!14056))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19525 true) setRest!19525))))

(declare-fun tp!692844 () Bool)

(declare-fun b!2222232 () Bool)

(assert (=> b!2222232 (= e!1419507 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (t!199550 mapValue!14056))))) e!1419508 tp_is_empty!9915 setRes!19525 tp!692844))))

(declare-fun condSetEmpty!19525 () Bool)

(assert (=> b!2222232 (= condSetEmpty!19525 (= (_2!14994 (h!31454 (t!199550 mapValue!14056))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222233 () Bool)

(declare-fun tp!692845 () Bool)

(assert (=> b!2222233 (= e!1419506 tp!692845)))

(assert (= b!2222232 b!2222231))

(assert (= (and b!2222232 condSetEmpty!19525) setIsEmpty!19525))

(assert (= (and b!2222232 (not condSetEmpty!19525)) setNonEmpty!19525))

(assert (= setNonEmpty!19525 b!2222233))

(assert (= (and b!2222065 ((_ is Cons!26053) (t!199550 mapValue!14056))) b!2222232))

(declare-fun m!2662634 () Bool)

(assert (=> setNonEmpty!19525 m!2662634))

(declare-fun m!2662636 () Bool)

(assert (=> b!2222232 m!2662636))

(declare-fun condSetEmpty!19526 () Bool)

(assert (=> setNonEmpty!19511 (= condSetEmpty!19526 (= setRest!19511 ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setRes!19526 () Bool)

(assert (=> setNonEmpty!19511 (= tp!692776 setRes!19526)))

(declare-fun setIsEmpty!19526 () Bool)

(assert (=> setIsEmpty!19526 setRes!19526))

(declare-fun tp!692848 () Bool)

(declare-fun setNonEmpty!19526 () Bool)

(declare-fun e!1419509 () Bool)

(declare-fun setElem!19526 () Context!3786)

(assert (=> setNonEmpty!19526 (= setRes!19526 (and tp!692848 (inv!35377 setElem!19526) e!1419509))))

(declare-fun setRest!19526 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19526 (= setRest!19511 ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19526 true) setRest!19526))))

(declare-fun b!2222234 () Bool)

(declare-fun tp!692849 () Bool)

(assert (=> b!2222234 (= e!1419509 tp!692849)))

(assert (= (and setNonEmpty!19511 condSetEmpty!19526) setIsEmpty!19526))

(assert (= (and setNonEmpty!19511 (not condSetEmpty!19526)) setNonEmpty!19526))

(assert (= setNonEmpty!19526 b!2222234))

(declare-fun m!2662638 () Bool)

(assert (=> setNonEmpty!19526 m!2662638))

(declare-fun b!2222246 () Bool)

(declare-fun e!1419512 () Bool)

(declare-fun tp!692863 () Bool)

(declare-fun tp!692860 () Bool)

(assert (=> b!2222246 (= e!1419512 (and tp!692863 tp!692860))))

(declare-fun b!2222248 () Bool)

(declare-fun tp!692862 () Bool)

(declare-fun tp!692861 () Bool)

(assert (=> b!2222248 (= e!1419512 (and tp!692862 tp!692861))))

(declare-fun b!2222245 () Bool)

(assert (=> b!2222245 (= e!1419512 tp_is_empty!9915)))

(declare-fun b!2222247 () Bool)

(declare-fun tp!692864 () Bool)

(assert (=> b!2222247 (= e!1419512 tp!692864)))

(assert (=> b!2222087 (= tp!692790 e!1419512)))

(assert (= (and b!2222087 ((_ is ElementMatch!6345) (h!31453 (exprs!2393 context!72)))) b!2222245))

(assert (= (and b!2222087 ((_ is Concat!10683) (h!31453 (exprs!2393 context!72)))) b!2222246))

(assert (= (and b!2222087 ((_ is Star!6345) (h!31453 (exprs!2393 context!72)))) b!2222247))

(assert (= (and b!2222087 ((_ is Union!6345) (h!31453 (exprs!2393 context!72)))) b!2222248))

(declare-fun b!2222249 () Bool)

(declare-fun e!1419513 () Bool)

(declare-fun tp!692865 () Bool)

(declare-fun tp!692866 () Bool)

(assert (=> b!2222249 (= e!1419513 (and tp!692865 tp!692866))))

(assert (=> b!2222087 (= tp!692791 e!1419513)))

(assert (= (and b!2222087 ((_ is Cons!26052) (t!199549 (exprs!2393 context!72)))) b!2222249))

(declare-fun b!2222250 () Bool)

(declare-fun e!1419514 () Bool)

(declare-fun tp!692867 () Bool)

(declare-fun tp!692868 () Bool)

(assert (=> b!2222250 (= e!1419514 (and tp!692867 tp!692868))))

(assert (=> b!2222079 (= tp!692779 e!1419514)))

(assert (= (and b!2222079 ((_ is Cons!26052) (exprs!2393 setElem!19512))) b!2222250))

(declare-fun condSetEmpty!19527 () Bool)

(assert (=> setNonEmpty!19508 (= condSetEmpty!19527 (= setRest!19508 ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setRes!19527 () Bool)

(assert (=> setNonEmpty!19508 (= tp!692761 setRes!19527)))

(declare-fun setIsEmpty!19527 () Bool)

(assert (=> setIsEmpty!19527 setRes!19527))

(declare-fun setElem!19527 () Context!3786)

(declare-fun setNonEmpty!19527 () Bool)

(declare-fun tp!692869 () Bool)

(declare-fun e!1419515 () Bool)

(assert (=> setNonEmpty!19527 (= setRes!19527 (and tp!692869 (inv!35377 setElem!19527) e!1419515))))

(declare-fun setRest!19527 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19527 (= setRest!19508 ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19527 true) setRest!19527))))

(declare-fun b!2222251 () Bool)

(declare-fun tp!692870 () Bool)

(assert (=> b!2222251 (= e!1419515 tp!692870)))

(assert (= (and setNonEmpty!19508 condSetEmpty!19527) setIsEmpty!19527))

(assert (= (and setNonEmpty!19508 (not condSetEmpty!19527)) setNonEmpty!19527))

(assert (= setNonEmpty!19527 b!2222251))

(declare-fun m!2662640 () Bool)

(assert (=> setNonEmpty!19527 m!2662640))

(declare-fun b!2222252 () Bool)

(declare-fun e!1419518 () Bool)

(declare-fun tp!692874 () Bool)

(assert (=> b!2222252 (= e!1419518 tp!692874)))

(declare-fun e!1419517 () Bool)

(assert (=> b!2222075 (= tp!692774 e!1419517)))

(declare-fun setIsEmpty!19528 () Bool)

(declare-fun setRes!19528 () Bool)

(assert (=> setIsEmpty!19528 setRes!19528))

(declare-fun setNonEmpty!19528 () Bool)

(declare-fun setElem!19528 () Context!3786)

(declare-fun e!1419516 () Bool)

(declare-fun tp!692873 () Bool)

(assert (=> setNonEmpty!19528 (= setRes!19528 (and tp!692873 (inv!35377 setElem!19528) e!1419516))))

(declare-fun setRest!19528 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19528 (= (_2!14994 (h!31454 (t!199550 mapValue!14053))) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19528 true) setRest!19528))))

(declare-fun tp!692871 () Bool)

(declare-fun b!2222253 () Bool)

(assert (=> b!2222253 (= e!1419517 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 (t!199550 mapValue!14053))))) e!1419518 tp_is_empty!9915 setRes!19528 tp!692871))))

(declare-fun condSetEmpty!19528 () Bool)

(assert (=> b!2222253 (= condSetEmpty!19528 (= (_2!14994 (h!31454 (t!199550 mapValue!14053))) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun b!2222254 () Bool)

(declare-fun tp!692872 () Bool)

(assert (=> b!2222254 (= e!1419516 tp!692872)))

(assert (= b!2222253 b!2222252))

(assert (= (and b!2222253 condSetEmpty!19528) setIsEmpty!19528))

(assert (= (and b!2222253 (not condSetEmpty!19528)) setNonEmpty!19528))

(assert (= setNonEmpty!19528 b!2222254))

(assert (= (and b!2222075 ((_ is Cons!26053) (t!199550 mapValue!14053))) b!2222253))

(declare-fun m!2662642 () Bool)

(assert (=> setNonEmpty!19528 m!2662642))

(declare-fun m!2662644 () Bool)

(assert (=> b!2222253 m!2662644))

(declare-fun b!2222255 () Bool)

(declare-fun e!1419523 () Bool)

(declare-fun tp!692877 () Bool)

(assert (=> b!2222255 (= e!1419523 tp!692877)))

(declare-fun b!2222256 () Bool)

(declare-fun e!1419522 () Bool)

(declare-fun tp!692882 () Bool)

(assert (=> b!2222256 (= e!1419522 tp!692882)))

(declare-fun e!1419521 () Bool)

(declare-fun b!2222257 () Bool)

(declare-fun mapDefault!14057 () List!26147)

(declare-fun setRes!19530 () Bool)

(declare-fun tp!692883 () Bool)

(declare-fun e!1419520 () Bool)

(assert (=> b!2222257 (= e!1419520 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 mapDefault!14057)))) e!1419521 tp_is_empty!9915 setRes!19530 tp!692883))))

(declare-fun condSetEmpty!19529 () Bool)

(assert (=> b!2222257 (= condSetEmpty!19529 (= (_2!14994 (h!31454 mapDefault!14057)) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun setIsEmpty!19529 () Bool)

(declare-fun setRes!19529 () Bool)

(assert (=> setIsEmpty!19529 setRes!19529))

(declare-fun b!2222258 () Bool)

(declare-fun tp!692876 () Bool)

(assert (=> b!2222258 (= e!1419521 tp!692876)))

(declare-fun setIsEmpty!19530 () Bool)

(assert (=> setIsEmpty!19530 setRes!19530))

(declare-fun b!2222259 () Bool)

(declare-fun e!1419519 () Bool)

(declare-fun tp!692875 () Bool)

(assert (=> b!2222259 (= e!1419519 tp!692875)))

(declare-fun mapIsEmpty!14057 () Bool)

(declare-fun mapRes!14057 () Bool)

(assert (=> mapIsEmpty!14057 mapRes!14057))

(declare-fun tp!692878 () Bool)

(declare-fun setElem!19530 () Context!3786)

(declare-fun setNonEmpty!19529 () Bool)

(assert (=> setNonEmpty!19529 (= setRes!19530 (and tp!692878 (inv!35377 setElem!19530) e!1419523))))

(declare-fun setRest!19529 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19529 (= (_2!14994 (h!31454 mapDefault!14057)) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19530 true) setRest!19529))))

(declare-fun e!1419524 () Bool)

(declare-fun tp!692880 () Bool)

(declare-fun b!2222260 () Bool)

(declare-fun mapValue!14057 () List!26147)

(assert (=> b!2222260 (= e!1419524 (and (inv!35377 (_1!14993 (_1!14994 (h!31454 mapValue!14057)))) e!1419519 tp_is_empty!9915 setRes!19529 tp!692880))))

(declare-fun condSetEmpty!19530 () Bool)

(assert (=> b!2222260 (= condSetEmpty!19530 (= (_2!14994 (h!31454 mapValue!14057)) ((as const (Array Context!3786 Bool)) false)))))

(declare-fun mapNonEmpty!14057 () Bool)

(declare-fun tp!692881 () Bool)

(assert (=> mapNonEmpty!14057 (= mapRes!14057 (and tp!692881 e!1419524))))

(declare-fun mapKey!14057 () (_ BitVec 32))

(declare-fun mapRest!14057 () (Array (_ BitVec 32) List!26147))

(assert (=> mapNonEmpty!14057 (= mapRest!14056 (store mapRest!14057 mapKey!14057 mapValue!14057))))

(declare-fun tp!692879 () Bool)

(declare-fun setElem!19529 () Context!3786)

(declare-fun setNonEmpty!19530 () Bool)

(assert (=> setNonEmpty!19530 (= setRes!19529 (and tp!692879 (inv!35377 setElem!19529) e!1419522))))

(declare-fun setRest!19530 () (InoxSet Context!3786))

(assert (=> setNonEmpty!19530 (= (_2!14994 (h!31454 mapValue!14057)) ((_ map or) (store ((as const (Array Context!3786 Bool)) false) setElem!19529 true) setRest!19530))))

(declare-fun condMapEmpty!14057 () Bool)

(assert (=> mapNonEmpty!14056 (= condMapEmpty!14057 (= mapRest!14056 ((as const (Array (_ BitVec 32) List!26147)) mapDefault!14057)))))

(assert (=> mapNonEmpty!14056 (= tp!692763 (and e!1419520 mapRes!14057))))

(assert (= (and mapNonEmpty!14056 condMapEmpty!14057) mapIsEmpty!14057))

(assert (= (and mapNonEmpty!14056 (not condMapEmpty!14057)) mapNonEmpty!14057))

(assert (= b!2222260 b!2222259))

(assert (= (and b!2222260 condSetEmpty!19530) setIsEmpty!19529))

(assert (= (and b!2222260 (not condSetEmpty!19530)) setNonEmpty!19530))

(assert (= setNonEmpty!19530 b!2222256))

(assert (= (and mapNonEmpty!14057 ((_ is Cons!26053) mapValue!14057)) b!2222260))

(assert (= b!2222257 b!2222258))

(assert (= (and b!2222257 condSetEmpty!19529) setIsEmpty!19530))

(assert (= (and b!2222257 (not condSetEmpty!19529)) setNonEmpty!19529))

(assert (= setNonEmpty!19529 b!2222255))

(assert (= (and mapNonEmpty!14056 ((_ is Cons!26053) mapDefault!14057)) b!2222257))

(declare-fun m!2662646 () Bool)

(assert (=> setNonEmpty!19529 m!2662646))

(declare-fun m!2662648 () Bool)

(assert (=> setNonEmpty!19530 m!2662648))

(declare-fun m!2662650 () Bool)

(assert (=> b!2222257 m!2662650))

(declare-fun m!2662652 () Bool)

(assert (=> mapNonEmpty!14057 m!2662652))

(declare-fun m!2662654 () Bool)

(assert (=> b!2222260 m!2662654))

(declare-fun b!2222261 () Bool)

(declare-fun e!1419525 () Bool)

(declare-fun tp!692884 () Bool)

(declare-fun tp!692885 () Bool)

(assert (=> b!2222261 (= e!1419525 (and tp!692884 tp!692885))))

(assert (=> b!2222076 (= tp!692775 e!1419525)))

(assert (= (and b!2222076 ((_ is Cons!26052) (exprs!2393 setElem!19511))) b!2222261))

(declare-fun b_lambda!71559 () Bool)

(assert (= b_lambda!71557 (or d!664040 b_lambda!71559)))

(declare-fun bs!452866 () Bool)

(declare-fun d!664086 () Bool)

(assert (= bs!452866 (and d!664086 d!664040)))

(declare-fun validRegex!2354 (Regex!6345) Bool)

(assert (=> bs!452866 (= (dynLambda!11507 lambda!83901 (h!31453 (exprs!2393 context!72))) (validRegex!2354 (h!31453 (exprs!2393 context!72))))))

(declare-fun m!2662656 () Bool)

(assert (=> bs!452866 m!2662656))

(assert (=> b!2222199 d!664086))

(declare-fun b_lambda!71561 () Bool)

(assert (= b_lambda!71553 (or (and b!2222011 b_free!64369) b_lambda!71561)))

(declare-fun b_lambda!71563 () Bool)

(assert (= b_lambda!71555 (or (and b!2222011 b_free!64369) b_lambda!71563)))

(check-sat (not b!2222233) (not b!2222259) (not b!2222258) (not bm!132675) (not b!2222234) (not b!2222232) (not b!2222210) (not d!664076) (not b!2222230) (not d!664074) (not b_lambda!71559) (not b!2222213) (not b!2222209) (not b!2222220) (not b!2222246) (not bm!132677) (not setNonEmpty!19528) (not b!2222193) (not b!2222223) (not bm!132676) (not b!2222257) (not setNonEmpty!19523) (not setNonEmpty!19520) (not b!2222103) (not b!2222201) (not b!2222256) (not setNonEmpty!19518) (not b!2222180) (not b!2222215) (not b!2222194) (not d!664048) (not setNonEmpty!19517) (not b!2222187) (not d!664054) (not bm!132661) (not b!2222208) (not b!2222117) (not setNonEmpty!19527) (not b_lambda!71563) (not d!664078) (not b_lambda!71561) (not bm!132674) b_and!174343 (not b!2222212) (not b!2222217) (not setNonEmpty!19530) (not b!2222222) (not mapNonEmpty!14057) (not b!2222216) (not bs!452866) (not b!2222254) (not b!2222147) (not b!2222249) (not b_next!65073) (not b!2222115) (not bm!132679) b_and!174347 (not b!2222226) (not b!2222227) (not d!664052) (not b!2222219) (not setNonEmpty!19529) (not b!2222261) (not setNonEmpty!19524) (not setNonEmpty!19526) (not b!2222105) (not b!2222218) (not b!2222255) (not b!2222152) (not d!664064) (not d!664042) (not d!664062) (not b!2222107) (not d!664072) (not b!2222202) (not b!2222229) (not setNonEmpty!19525) (not b!2222200) (not b!2222247) (not d!664050) (not setNonEmpty!19519) (not tb!132843) (not b!2222211) (not d!664046) (not bm!132658) (not b!2222228) (not d!664068) (not d!664070) (not b!2222253) (not d!664082) (not d!664084) (not b!2222203) (not b!2222252) (not b!2222248) (not bm!132678) (not b!2222183) (not bm!132660) (not setNonEmpty!19522) (not b!2222185) (not bm!132656) (not b!2222225) (not b!2222250) (not b!2222231) (not b_next!65075) (not b!2222221) (not b!2222178) (not setNonEmpty!19521) (not b!2222154) (not b!2222260) (not d!664044) (not b!2222214) (not b!2222224) (not b!2222251) tp_is_empty!9915)
(check-sat b_and!174347 b_and!174343 (not b_next!65073) (not b_next!65075))
