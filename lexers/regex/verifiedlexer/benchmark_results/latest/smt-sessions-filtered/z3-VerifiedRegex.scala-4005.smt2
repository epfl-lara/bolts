; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217364 () Bool)

(assert start!217364)

(declare-fun b!2228158 () Bool)

(declare-fun b_free!64617 () Bool)

(declare-fun b_next!65321 () Bool)

(assert (=> b!2228158 (= b_free!64617 (not b_next!65321))))

(declare-fun tp!697088 () Bool)

(declare-fun b_and!174605 () Bool)

(assert (=> b!2228158 (= tp!697088 b_and!174605)))

(declare-fun b!2228136 () Bool)

(declare-fun b_free!64619 () Bool)

(declare-fun b_next!65323 () Bool)

(assert (=> b!2228136 (= b_free!64619 (not b_next!65323))))

(declare-fun tp!697083 () Bool)

(declare-fun b_and!174607 () Bool)

(assert (=> b!2228136 (= tp!697083 b_and!174607)))

(declare-datatypes ((C!12948 0))(
  ( (C!12949 (val!7522 Int)) )
))
(declare-datatypes ((Regex!6401 0))(
  ( (ElementMatch!6401 (c!355523 C!12948)) (Concat!10739 (regOne!13314 Regex!6401) (regTwo!13314 Regex!6401)) (EmptyExpr!6401) (Star!6401 (reg!6730 Regex!6401)) (EmptyLang!6401) (Union!6401 (regOne!13315 Regex!6401) (regTwo!13315 Regex!6401)) )
))
(declare-datatypes ((List!26274 0))(
  ( (Nil!26180) (Cons!26180 (h!31581 Regex!6401) (t!199687 List!26274)) )
))
(declare-datatypes ((Context!3898 0))(
  ( (Context!3899 (exprs!2449 List!26274)) )
))
(declare-fun context!86 () Context!3898)

(declare-datatypes ((array!10490 0))(
  ( (array!10491 (arr!4665 (Array (_ BitVec 32) (_ BitVec 64))) (size!20446 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3874 0))(
  ( (tuple3!3875 (_1!15162 Regex!6401) (_2!15162 Context!3898) (_3!2407 C!12948)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25510 0))(
  ( (tuple2!25511 (_1!15163 tuple3!3874) (_2!15163 (InoxSet Context!3898))) )
))
(declare-datatypes ((List!26275 0))(
  ( (Nil!26181) (Cons!26181 (h!31582 tuple2!25510) (t!199688 List!26275)) )
))
(declare-datatypes ((array!10492 0))(
  ( (array!10493 (arr!4666 (Array (_ BitVec 32) List!26275)) (size!20447 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6078 0))(
  ( (LongMapFixedSize!6079 (defaultEntry!3404 Int) (mask!7593 (_ BitVec 32)) (extraKeys!3287 (_ BitVec 32)) (zeroValue!3297 List!26275) (minValue!3297 List!26275) (_size!6125 (_ BitVec 32)) (_keys!3336 array!10490) (_values!3319 array!10492) (_vacant!3100 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11973 0))(
  ( (Cell!11974 (v!29757 LongMapFixedSize!6078)) )
))
(declare-datatypes ((MutLongMap!3039 0))(
  ( (LongMap!3039 (underlying!6279 Cell!11973)) (MutLongMapExt!3038 (__x!17343 Int)) )
))
(declare-datatypes ((Cell!11975 0))(
  ( (Cell!11976 (v!29758 MutLongMap!3039)) )
))
(declare-datatypes ((Hashable!2949 0))(
  ( (HashableExt!2948 (__x!17344 Int)) )
))
(declare-datatypes ((MutableMap!2949 0))(
  ( (MutableMapExt!2948 (__x!17345 Int)) (HashMap!2949 (underlying!6280 Cell!11975) (hashF!4872 Hashable!2949) (_size!6126 (_ BitVec 32)) (defaultValue!3111 Int)) )
))
(declare-datatypes ((CacheDown!1944 0))(
  ( (CacheDown!1945 (cache!3330 MutableMap!2949)) )
))
(declare-datatypes ((tuple2!25512 0))(
  ( (tuple2!25513 (_1!15164 (InoxSet Context!3898)) (_2!15164 CacheDown!1944)) )
))
(declare-fun lt!830338 () tuple2!25512)

(declare-fun bm!133559 () Bool)

(declare-fun cacheDown!839 () CacheDown!1944)

(declare-fun expr!64 () Regex!6401)

(declare-fun c!355521 () Bool)

(declare-fun call!133569 () List!26274)

(declare-fun a!1167 () C!12948)

(declare-fun call!133567 () tuple2!25512)

(declare-fun derivationStepZipperDownMem!17 (Regex!6401 Context!3898 C!12948 CacheDown!1944) tuple2!25512)

(assert (=> bm!133559 (= call!133567 (derivationStepZipperDownMem!17 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)) (ite c!355521 context!86 (Context!3899 call!133569)) a!1167 (ite c!355521 (_2!15164 lt!830338) cacheDown!839)))))

(declare-fun e!1423967 () Bool)

(declare-fun e!1423962 () Bool)

(assert (=> b!2228136 (= e!1423967 (and e!1423962 tp!697083))))

(declare-fun b!2228137 () Bool)

(declare-fun e!1423971 () Bool)

(declare-fun tp_is_empty!10027 () Bool)

(assert (=> b!2228137 (= e!1423971 tp_is_empty!10027)))

(declare-fun b!2228138 () Bool)

(declare-fun lt!830336 () tuple2!25512)

(assert (=> b!2228138 (= lt!830336 call!133567)))

(declare-fun call!133564 () tuple2!25512)

(assert (=> b!2228138 (= lt!830338 call!133564)))

(declare-fun e!1423961 () tuple2!25512)

(assert (=> b!2228138 (= e!1423961 (tuple2!25513 ((_ map or) (_1!15164 lt!830338) (_1!15164 lt!830336)) (_2!15164 lt!830336)))))

(declare-fun b!2228139 () Bool)

(declare-fun e!1423964 () Bool)

(declare-fun e!1423963 () Bool)

(assert (=> b!2228139 (= e!1423964 e!1423963)))

(declare-fun b!2228140 () Bool)

(declare-fun tp!697085 () Bool)

(declare-fun tp!697080 () Bool)

(assert (=> b!2228140 (= e!1423971 (and tp!697085 tp!697080))))

(declare-fun b!2228141 () Bool)

(declare-fun tp!697087 () Bool)

(assert (=> b!2228141 (= e!1423971 tp!697087)))

(declare-fun mapIsEmpty!14314 () Bool)

(declare-fun mapRes!14314 () Bool)

(assert (=> mapIsEmpty!14314 mapRes!14314))

(declare-fun b!2228142 () Bool)

(declare-fun e!1423958 () tuple2!25512)

(assert (=> b!2228142 (= e!1423958 (tuple2!25513 ((as const (Array Context!3898 Bool)) false) cacheDown!839))))

(declare-fun b!2228143 () Bool)

(declare-fun e!1423970 () Bool)

(declare-fun tp!697078 () Bool)

(assert (=> b!2228143 (= e!1423970 tp!697078)))

(declare-fun b!2228144 () Bool)

(declare-fun e!1423960 () tuple2!25512)

(declare-fun lt!830337 () tuple2!25512)

(declare-fun lt!830340 () tuple2!25512)

(assert (=> b!2228144 (= e!1423960 (tuple2!25513 ((_ map or) (_1!15164 lt!830337) (_1!15164 lt!830340)) (_2!15164 lt!830340)))))

(assert (=> b!2228144 (= lt!830337 call!133567)))

(declare-fun call!133566 () tuple2!25512)

(assert (=> b!2228144 (= lt!830340 call!133566)))

(declare-fun bm!133560 () Bool)

(declare-fun call!133565 () tuple2!25512)

(assert (=> bm!133560 (= call!133565 call!133566)))

(declare-fun b!2228146 () Bool)

(declare-fun c!355520 () Bool)

(declare-fun e!1423959 () Bool)

(assert (=> b!2228146 (= c!355520 e!1423959)))

(declare-fun res!954967 () Bool)

(assert (=> b!2228146 (=> (not res!954967) (not e!1423959))))

(get-info :version)

(assert (=> b!2228146 (= res!954967 ((_ is Concat!10739) expr!64))))

(assert (=> b!2228146 (= e!1423961 e!1423960)))

(declare-fun b!2228147 () Bool)

(declare-fun c!355522 () Bool)

(assert (=> b!2228147 (= c!355522 ((_ is Star!6401) expr!64))))

(declare-fun e!1423974 () tuple2!25512)

(assert (=> b!2228147 (= e!1423974 e!1423958)))

(declare-fun b!2228148 () Bool)

(declare-fun res!954968 () Bool)

(declare-fun e!1423972 () Bool)

(assert (=> b!2228148 (=> (not res!954968) (not e!1423972))))

(declare-datatypes ((Option!5090 0))(
  ( (None!5089) (Some!5089 (v!29759 (InoxSet Context!3898))) )
))
(declare-fun get!7884 (CacheDown!1944 Regex!6401 Context!3898 C!12948) Option!5090)

(assert (=> b!2228148 (= res!954968 (not ((_ is Some!5089) (get!7884 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2228149 () Bool)

(declare-fun e!1423965 () Bool)

(assert (=> b!2228149 (= e!1423965 e!1423964)))

(declare-fun b!2228150 () Bool)

(assert (=> b!2228150 (= e!1423958 call!133565)))

(declare-fun call!133568 () List!26274)

(declare-fun bm!133561 () Bool)

(declare-fun c!355519 () Bool)

(assert (=> bm!133561 (= call!133564 (derivationStepZipperDownMem!17 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) a!1167 (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839))))))

(declare-fun b!2228151 () Bool)

(declare-fun e!1423966 () tuple2!25512)

(assert (=> b!2228151 (= e!1423966 e!1423961)))

(assert (=> b!2228151 (= c!355521 ((_ is Union!6401) expr!64))))

(declare-fun b!2228152 () Bool)

(assert (=> b!2228152 (= e!1423960 e!1423974)))

(assert (=> b!2228152 (= c!355519 ((_ is Concat!10739) expr!64))))

(declare-fun b!2228153 () Bool)

(declare-fun e!1423969 () Bool)

(assert (=> b!2228153 (= e!1423969 e!1423967)))

(declare-fun b!2228154 () Bool)

(assert (=> b!2228154 (= e!1423966 (tuple2!25513 (store ((as const (Array Context!3898 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun bm!133562 () Bool)

(declare-fun $colon$colon!510 (List!26274 Regex!6401) List!26274)

(assert (=> bm!133562 (= call!133569 ($colon$colon!510 (exprs!2449 context!86) (ite (or c!355520 c!355519) (regTwo!13314 expr!64) expr!64)))))

(declare-fun b!2228155 () Bool)

(declare-fun e!1423968 () Bool)

(assert (=> b!2228155 (= e!1423972 e!1423968)))

(declare-fun res!954970 () Bool)

(assert (=> b!2228155 (=> (not res!954970) (not e!1423968))))

(declare-fun lt!830339 () tuple2!25512)

(declare-fun validCacheMapDown!275 (MutableMap!2949) Bool)

(assert (=> b!2228155 (= res!954970 (validCacheMapDown!275 (cache!3330 (_2!15164 lt!830339))))))

(assert (=> b!2228155 (= lt!830339 e!1423966)))

(declare-fun c!355518 () Bool)

(assert (=> b!2228155 (= c!355518 (and ((_ is ElementMatch!6401) expr!64) (= (c!355523 expr!64) a!1167)))))

(declare-fun b!2228156 () Bool)

(assert (=> b!2228156 (= e!1423974 call!133565)))

(declare-fun b!2228157 () Bool)

(declare-fun e!1423973 () Bool)

(declare-fun tp!697084 () Bool)

(assert (=> b!2228157 (= e!1423973 (and tp!697084 mapRes!14314))))

(declare-fun condMapEmpty!14314 () Bool)

(declare-fun mapDefault!14314 () List!26275)

(assert (=> b!2228157 (= condMapEmpty!14314 (= (arr!4666 (_values!3319 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26275)) mapDefault!14314)))))

(declare-fun tp!697082 () Bool)

(declare-fun tp!697076 () Bool)

(declare-fun array_inv!3347 (array!10490) Bool)

(declare-fun array_inv!3348 (array!10492) Bool)

(assert (=> b!2228158 (= e!1423963 (and tp!697088 tp!697082 tp!697076 (array_inv!3347 (_keys!3336 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) (array_inv!3348 (_values!3319 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) e!1423973))))

(declare-fun bm!133563 () Bool)

(assert (=> bm!133563 (= call!133566 call!133564)))

(declare-fun b!2228159 () Bool)

(declare-fun lt!830335 () MutLongMap!3039)

(assert (=> b!2228159 (= e!1423962 (and e!1423965 ((_ is LongMap!3039) lt!830335)))))

(assert (=> b!2228159 (= lt!830335 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))

(declare-fun mapNonEmpty!14314 () Bool)

(declare-fun tp!697081 () Bool)

(declare-fun tp!697086 () Bool)

(assert (=> mapNonEmpty!14314 (= mapRes!14314 (and tp!697081 tp!697086))))

(declare-fun mapRest!14314 () (Array (_ BitVec 32) List!26275))

(declare-fun mapKey!14314 () (_ BitVec 32))

(declare-fun mapValue!14314 () List!26275)

(assert (=> mapNonEmpty!14314 (= (arr!4666 (_values!3319 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) (store mapRest!14314 mapKey!14314 mapValue!14314))))

(declare-fun b!2228160 () Bool)

(declare-fun nullable!1753 (Regex!6401) Bool)

(assert (=> b!2228160 (= e!1423959 (nullable!1753 (regOne!13314 expr!64)))))

(declare-fun res!954969 () Bool)

(assert (=> start!217364 (=> (not res!954969) (not e!1423972))))

(declare-fun validRegex!2378 (Regex!6401) Bool)

(assert (=> start!217364 (= res!954969 (validRegex!2378 expr!64))))

(assert (=> start!217364 e!1423972))

(assert (=> start!217364 e!1423971))

(declare-fun inv!35547 (CacheDown!1944) Bool)

(assert (=> start!217364 (and (inv!35547 cacheDown!839) e!1423969)))

(declare-fun inv!35548 (Context!3898) Bool)

(assert (=> start!217364 (and (inv!35548 context!86) e!1423970)))

(assert (=> start!217364 tp_is_empty!10027))

(declare-fun b!2228145 () Bool)

(declare-fun derivationStepZipperDown!38 (Regex!6401 Context!3898 C!12948) (InoxSet Context!3898))

(assert (=> b!2228145 (= e!1423968 (not (= (_1!15164 lt!830339) (derivationStepZipperDown!38 expr!64 context!86 a!1167))))))

(declare-fun b!2228161 () Bool)

(declare-fun tp!697077 () Bool)

(declare-fun tp!697079 () Bool)

(assert (=> b!2228161 (= e!1423971 (and tp!697077 tp!697079))))

(declare-fun bm!133564 () Bool)

(assert (=> bm!133564 (= call!133568 call!133569)))

(assert (= (and start!217364 res!954969) b!2228148))

(assert (= (and b!2228148 res!954968) b!2228155))

(assert (= (and b!2228155 c!355518) b!2228154))

(assert (= (and b!2228155 (not c!355518)) b!2228151))

(assert (= (and b!2228151 c!355521) b!2228138))

(assert (= (and b!2228151 (not c!355521)) b!2228146))

(assert (= (and b!2228146 res!954967) b!2228160))

(assert (= (and b!2228146 c!355520) b!2228144))

(assert (= (and b!2228146 (not c!355520)) b!2228152))

(assert (= (and b!2228152 c!355519) b!2228156))

(assert (= (and b!2228152 (not c!355519)) b!2228147))

(assert (= (and b!2228147 c!355522) b!2228150))

(assert (= (and b!2228147 (not c!355522)) b!2228142))

(assert (= (or b!2228156 b!2228150) bm!133564))

(assert (= (or b!2228156 b!2228150) bm!133560))

(assert (= (or b!2228144 bm!133564) bm!133562))

(assert (= (or b!2228144 bm!133560) bm!133563))

(assert (= (or b!2228138 b!2228144) bm!133559))

(assert (= (or b!2228138 bm!133563) bm!133561))

(assert (= (and b!2228155 res!954970) b!2228145))

(assert (= (and start!217364 ((_ is ElementMatch!6401) expr!64)) b!2228137))

(assert (= (and start!217364 ((_ is Concat!10739) expr!64)) b!2228140))

(assert (= (and start!217364 ((_ is Star!6401) expr!64)) b!2228141))

(assert (= (and start!217364 ((_ is Union!6401) expr!64)) b!2228161))

(assert (= (and b!2228157 condMapEmpty!14314) mapIsEmpty!14314))

(assert (= (and b!2228157 (not condMapEmpty!14314)) mapNonEmpty!14314))

(assert (= b!2228158 b!2228157))

(assert (= b!2228139 b!2228158))

(assert (= b!2228149 b!2228139))

(assert (= (and b!2228159 ((_ is LongMap!3039) (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))) b!2228149))

(assert (= b!2228136 b!2228159))

(assert (= (and b!2228153 ((_ is HashMap!2949) (cache!3330 cacheDown!839))) b!2228136))

(assert (= start!217364 b!2228153))

(assert (= start!217364 b!2228143))

(declare-fun m!2666413 () Bool)

(assert (=> b!2228158 m!2666413))

(declare-fun m!2666415 () Bool)

(assert (=> b!2228158 m!2666415))

(declare-fun m!2666417 () Bool)

(assert (=> bm!133561 m!2666417))

(declare-fun m!2666419 () Bool)

(assert (=> b!2228155 m!2666419))

(declare-fun m!2666421 () Bool)

(assert (=> b!2228160 m!2666421))

(declare-fun m!2666423 () Bool)

(assert (=> b!2228148 m!2666423))

(declare-fun m!2666425 () Bool)

(assert (=> b!2228154 m!2666425))

(declare-fun m!2666427 () Bool)

(assert (=> bm!133559 m!2666427))

(declare-fun m!2666429 () Bool)

(assert (=> bm!133562 m!2666429))

(declare-fun m!2666431 () Bool)

(assert (=> start!217364 m!2666431))

(declare-fun m!2666433 () Bool)

(assert (=> start!217364 m!2666433))

(declare-fun m!2666435 () Bool)

(assert (=> start!217364 m!2666435))

(declare-fun m!2666437 () Bool)

(assert (=> mapNonEmpty!14314 m!2666437))

(declare-fun m!2666439 () Bool)

(assert (=> b!2228145 m!2666439))

(check-sat (not b!2228143) (not b!2228161) (not b!2228158) (not mapNonEmpty!14314) tp_is_empty!10027 (not b_next!65323) (not bm!133559) (not start!217364) (not bm!133561) (not b!2228141) (not bm!133562) (not b!2228148) (not b!2228160) (not b!2228145) (not b!2228140) b_and!174605 (not b!2228155) (not b!2228157) (not b_next!65321) b_and!174607)
(check-sat b_and!174607 b_and!174605 (not b_next!65321) (not b_next!65323))
(get-model)

(declare-fun d!664756 () Bool)

(declare-fun e!1423978 () Bool)

(assert (=> d!664756 e!1423978))

(declare-fun res!954973 () Bool)

(assert (=> d!664756 (=> res!954973 e!1423978)))

(declare-fun lt!830343 () Option!5090)

(declare-fun isEmpty!14888 (Option!5090) Bool)

(assert (=> d!664756 (= res!954973 (isEmpty!14888 lt!830343))))

(declare-fun choose!13119 (CacheDown!1944 Regex!6401 Context!3898 C!12948) Option!5090)

(assert (=> d!664756 (= lt!830343 (choose!13119 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!664756 (validCacheMapDown!275 (cache!3330 cacheDown!839))))

(assert (=> d!664756 (= (get!7884 cacheDown!839 expr!64 context!86 a!1167) lt!830343)))

(declare-fun b!2228164 () Bool)

(declare-fun get!7885 (Option!5090) (InoxSet Context!3898))

(assert (=> b!2228164 (= e!1423978 (= (get!7885 lt!830343) (derivationStepZipperDown!38 expr!64 context!86 a!1167)))))

(assert (= (and d!664756 (not res!954973)) b!2228164))

(declare-fun m!2666441 () Bool)

(assert (=> d!664756 m!2666441))

(declare-fun m!2666443 () Bool)

(assert (=> d!664756 m!2666443))

(declare-fun m!2666445 () Bool)

(assert (=> d!664756 m!2666445))

(declare-fun m!2666447 () Bool)

(assert (=> b!2228164 m!2666447))

(assert (=> b!2228164 m!2666439))

(assert (=> b!2228148 d!664756))

(declare-fun d!664758 () Bool)

(declare-fun nullableFct!410 (Regex!6401) Bool)

(assert (=> d!664758 (= (nullable!1753 (regOne!13314 expr!64)) (nullableFct!410 (regOne!13314 expr!64)))))

(declare-fun bs!453660 () Bool)

(assert (= bs!453660 d!664758))

(declare-fun m!2666449 () Bool)

(assert (=> bs!453660 m!2666449))

(assert (=> b!2228160 d!664758))

(declare-fun b!2228191 () Bool)

(declare-fun c!355537 () Bool)

(assert (=> b!2228191 (= c!355537 ((_ is Union!6401) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))))))

(declare-fun e!1423999 () tuple2!25512)

(declare-fun e!1423995 () tuple2!25512)

(assert (=> b!2228191 (= e!1423999 e!1423995)))

(declare-fun b!2228192 () Bool)

(declare-fun e!1423996 () tuple2!25512)

(declare-fun lt!830364 () tuple2!25512)

(assert (=> b!2228192 (= e!1423996 (tuple2!25513 (_1!15164 lt!830364) (_2!15164 lt!830364)))))

(declare-fun call!133585 () tuple2!25512)

(assert (=> b!2228192 (= lt!830364 call!133585)))

(declare-fun e!1423997 () tuple2!25512)

(declare-fun b!2228193 () Bool)

(assert (=> b!2228193 (= e!1423997 (tuple2!25513 ((as const (Array Context!3898 Bool)) false) (ite c!355521 (_2!15164 lt!830338) cacheDown!839)))))

(declare-fun b!2228194 () Bool)

(declare-fun c!355540 () Bool)

(assert (=> b!2228194 (= c!355540 ((_ is Concat!10739) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))))))

(declare-fun e!1423993 () tuple2!25512)

(assert (=> b!2228194 (= e!1423993 e!1423996)))

(declare-fun b!2228195 () Bool)

(assert (=> b!2228195 (= e!1423996 e!1423997)))

(declare-fun c!355538 () Bool)

(assert (=> b!2228195 (= c!355538 ((_ is Star!6401) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))))))

(declare-fun call!133583 () tuple2!25512)

(declare-fun bm!133577 () Bool)

(declare-fun call!133582 () List!26274)

(declare-fun lt!830362 () tuple2!25512)

(assert (=> bm!133577 (= call!133583 (derivationStepZipperDownMem!17 (ite c!355537 (regTwo!13315 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) (regOne!13314 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)))) (ite c!355537 (ite c!355521 context!86 (Context!3899 call!133569)) (Context!3899 call!133582)) a!1167 (ite c!355537 (_2!15164 lt!830362) (ite c!355521 (_2!15164 lt!830338) cacheDown!839))))))

(declare-fun lt!830369 () tuple2!25512)

(declare-fun e!1423998 () tuple2!25512)

(declare-fun b!2228196 () Bool)

(declare-datatypes ((Unit!39146 0))(
  ( (Unit!39147) )
))
(declare-datatypes ((tuple2!25514 0))(
  ( (tuple2!25515 (_1!15165 Unit!39146) (_2!15165 CacheDown!1944)) )
))
(declare-fun update!133 (CacheDown!1944 Regex!6401 Context!3898 C!12948 (InoxSet Context!3898)) tuple2!25514)

(assert (=> b!2228196 (= e!1423998 (tuple2!25513 (_1!15164 lt!830369) (_2!15165 (update!133 (_2!15164 lt!830369) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)) (ite c!355521 context!86 (Context!3899 call!133569)) a!1167 (_1!15164 lt!830369)))))))

(declare-fun c!355536 () Bool)

(assert (=> b!2228196 (= c!355536 (and ((_ is ElementMatch!6401) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) (= (c!355523 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) a!1167)))))

(assert (=> b!2228196 (= lt!830369 e!1423999)))

(declare-fun b!2228197 () Bool)

(declare-fun lt!830363 () tuple2!25512)

(assert (=> b!2228197 (= e!1423995 (tuple2!25513 ((_ map or) (_1!15164 lt!830362) (_1!15164 lt!830363)) (_2!15164 lt!830363)))))

(declare-fun call!133586 () tuple2!25512)

(assert (=> b!2228197 (= lt!830362 call!133586)))

(assert (=> b!2228197 (= lt!830363 call!133583)))

(declare-fun c!355539 () Bool)

(declare-fun lt!830366 () tuple2!25512)

(declare-fun call!133584 () List!26274)

(declare-fun bm!133578 () Bool)

(assert (=> bm!133578 (= call!133586 (derivationStepZipperDownMem!17 (ite c!355537 (regOne!13315 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) (ite c!355539 (regTwo!13314 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) (ite c!355540 (regOne!13314 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) (reg!6730 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)))))) (ite (or c!355537 c!355539) (ite c!355521 context!86 (Context!3899 call!133569)) (Context!3899 call!133584)) a!1167 (ite c!355537 (ite c!355521 (_2!15164 lt!830338) cacheDown!839) (ite c!355539 (_2!15164 lt!830366) (ite c!355521 (_2!15164 lt!830338) cacheDown!839)))))))

(declare-fun b!2228198 () Bool)

(declare-fun e!1423994 () Bool)

(assert (=> b!2228198 (= e!1423994 (nullable!1753 (regOne!13314 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)))))))

(declare-fun bm!133579 () Bool)

(assert (=> bm!133579 (= call!133582 ($colon$colon!510 (exprs!2449 (ite c!355521 context!86 (Context!3899 call!133569))) (ite (or c!355539 c!355540) (regTwo!13314 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)))))))

(declare-fun b!2228199 () Bool)

(declare-fun lt!830368 () tuple2!25512)

(declare-fun call!133587 () tuple2!25512)

(assert (=> b!2228199 (= lt!830368 call!133587)))

(assert (=> b!2228199 (= lt!830366 call!133583)))

(assert (=> b!2228199 (= e!1423993 (tuple2!25513 ((_ map or) (_1!15164 lt!830366) (_1!15164 lt!830368)) (_2!15164 lt!830368)))))

(declare-fun lt!830370 () Option!5090)

(declare-fun b!2228200 () Bool)

(assert (=> b!2228200 (= e!1423998 (tuple2!25513 (v!29759 lt!830370) (ite c!355521 (_2!15164 lt!830338) cacheDown!839)))))

(declare-fun bm!133580 () Bool)

(assert (=> bm!133580 (= call!133585 call!133587)))

(declare-fun b!2228201 () Bool)

(assert (=> b!2228201 (= e!1423995 e!1423993)))

(declare-fun res!954976 () Bool)

(assert (=> b!2228201 (= res!954976 ((_ is Concat!10739) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64))))))

(assert (=> b!2228201 (=> (not res!954976) (not e!1423994))))

(assert (=> b!2228201 (= c!355539 e!1423994)))

(declare-fun bm!133581 () Bool)

(assert (=> bm!133581 (= call!133584 call!133582)))

(declare-fun bm!133582 () Bool)

(assert (=> bm!133582 (= call!133587 call!133586)))

(declare-fun b!2228202 () Bool)

(declare-fun lt!830365 () tuple2!25512)

(assert (=> b!2228202 (= lt!830365 call!133585)))

(assert (=> b!2228202 (= e!1423997 (tuple2!25513 (_1!15164 lt!830365) (_2!15164 lt!830365)))))

(declare-fun lt!830367 () tuple2!25512)

(declare-fun d!664760 () Bool)

(assert (=> d!664760 (= (_1!15164 lt!830367) (derivationStepZipperDown!38 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)) (ite c!355521 context!86 (Context!3899 call!133569)) a!1167))))

(assert (=> d!664760 (= lt!830367 e!1423998)))

(declare-fun c!355541 () Bool)

(assert (=> d!664760 (= c!355541 ((_ is Some!5089) lt!830370))))

(assert (=> d!664760 (= lt!830370 (get!7884 (ite c!355521 (_2!15164 lt!830338) cacheDown!839) (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)) (ite c!355521 context!86 (Context!3899 call!133569)) a!1167))))

(assert (=> d!664760 (validRegex!2378 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)))))

(assert (=> d!664760 (= (derivationStepZipperDownMem!17 (ite c!355521 (regTwo!13315 expr!64) (regOne!13314 expr!64)) (ite c!355521 context!86 (Context!3899 call!133569)) a!1167 (ite c!355521 (_2!15164 lt!830338) cacheDown!839)) lt!830367)))

(declare-fun b!2228203 () Bool)

(assert (=> b!2228203 (= e!1423999 (tuple2!25513 (store ((as const (Array Context!3898 Bool)) false) (ite c!355521 context!86 (Context!3899 call!133569)) true) (ite c!355521 (_2!15164 lt!830338) cacheDown!839)))))

(assert (= (and d!664760 c!355541) b!2228200))

(assert (= (and d!664760 (not c!355541)) b!2228196))

(assert (= (and b!2228196 c!355536) b!2228203))

(assert (= (and b!2228196 (not c!355536)) b!2228191))

(assert (= (and b!2228191 c!355537) b!2228197))

(assert (= (and b!2228191 (not c!355537)) b!2228201))

(assert (= (and b!2228201 res!954976) b!2228198))

(assert (= (and b!2228201 c!355539) b!2228199))

(assert (= (and b!2228201 (not c!355539)) b!2228194))

(assert (= (and b!2228194 c!355540) b!2228192))

(assert (= (and b!2228194 (not c!355540)) b!2228195))

(assert (= (and b!2228195 c!355538) b!2228202))

(assert (= (and b!2228195 (not c!355538)) b!2228193))

(assert (= (or b!2228192 b!2228202) bm!133581))

(assert (= (or b!2228192 b!2228202) bm!133580))

(assert (= (or b!2228199 bm!133581) bm!133579))

(assert (= (or b!2228199 bm!133580) bm!133582))

(assert (= (or b!2228197 bm!133582) bm!133578))

(assert (= (or b!2228197 b!2228199) bm!133577))

(declare-fun m!2666451 () Bool)

(assert (=> bm!133577 m!2666451))

(declare-fun m!2666453 () Bool)

(assert (=> b!2228196 m!2666453))

(declare-fun m!2666455 () Bool)

(assert (=> bm!133578 m!2666455))

(declare-fun m!2666457 () Bool)

(assert (=> b!2228198 m!2666457))

(declare-fun m!2666459 () Bool)

(assert (=> bm!133579 m!2666459))

(declare-fun m!2666461 () Bool)

(assert (=> b!2228203 m!2666461))

(declare-fun m!2666463 () Bool)

(assert (=> d!664760 m!2666463))

(declare-fun m!2666465 () Bool)

(assert (=> d!664760 m!2666465))

(declare-fun m!2666467 () Bool)

(assert (=> d!664760 m!2666467))

(assert (=> bm!133559 d!664760))

(declare-fun c!355546 () Bool)

(declare-fun call!133594 () Bool)

(declare-fun c!355547 () Bool)

(declare-fun bm!133589 () Bool)

(assert (=> bm!133589 (= call!133594 (validRegex!2378 (ite c!355546 (reg!6730 expr!64) (ite c!355547 (regOne!13315 expr!64) (regOne!13314 expr!64)))))))

(declare-fun b!2228222 () Bool)

(declare-fun res!954987 () Bool)

(declare-fun e!1424017 () Bool)

(assert (=> b!2228222 (=> (not res!954987) (not e!1424017))))

(declare-fun call!133595 () Bool)

(assert (=> b!2228222 (= res!954987 call!133595)))

(declare-fun e!1424020 () Bool)

(assert (=> b!2228222 (= e!1424020 e!1424017)))

(declare-fun b!2228223 () Bool)

(declare-fun e!1424016 () Bool)

(declare-fun call!133596 () Bool)

(assert (=> b!2228223 (= e!1424016 call!133596)))

(declare-fun b!2228224 () Bool)

(declare-fun e!1424018 () Bool)

(assert (=> b!2228224 (= e!1424018 call!133594)))

(declare-fun b!2228225 () Bool)

(declare-fun e!1424014 () Bool)

(assert (=> b!2228225 (= e!1424014 e!1424020)))

(assert (=> b!2228225 (= c!355547 ((_ is Union!6401) expr!64))))

(declare-fun bm!133590 () Bool)

(assert (=> bm!133590 (= call!133596 (validRegex!2378 (ite c!355547 (regTwo!13315 expr!64) (regTwo!13314 expr!64))))))

(declare-fun bm!133591 () Bool)

(assert (=> bm!133591 (= call!133595 call!133594)))

(declare-fun d!664762 () Bool)

(declare-fun res!954989 () Bool)

(declare-fun e!1424015 () Bool)

(assert (=> d!664762 (=> res!954989 e!1424015)))

(assert (=> d!664762 (= res!954989 ((_ is ElementMatch!6401) expr!64))))

(assert (=> d!664762 (= (validRegex!2378 expr!64) e!1424015)))

(declare-fun b!2228226 () Bool)

(declare-fun res!954990 () Bool)

(declare-fun e!1424019 () Bool)

(assert (=> b!2228226 (=> res!954990 e!1424019)))

(assert (=> b!2228226 (= res!954990 (not ((_ is Concat!10739) expr!64)))))

(assert (=> b!2228226 (= e!1424020 e!1424019)))

(declare-fun b!2228227 () Bool)

(assert (=> b!2228227 (= e!1424015 e!1424014)))

(assert (=> b!2228227 (= c!355546 ((_ is Star!6401) expr!64))))

(declare-fun b!2228228 () Bool)

(assert (=> b!2228228 (= e!1424014 e!1424018)))

(declare-fun res!954988 () Bool)

(assert (=> b!2228228 (= res!954988 (not (nullable!1753 (reg!6730 expr!64))))))

(assert (=> b!2228228 (=> (not res!954988) (not e!1424018))))

(declare-fun b!2228229 () Bool)

(assert (=> b!2228229 (= e!1424017 call!133596)))

(declare-fun b!2228230 () Bool)

(assert (=> b!2228230 (= e!1424019 e!1424016)))

(declare-fun res!954991 () Bool)

(assert (=> b!2228230 (=> (not res!954991) (not e!1424016))))

(assert (=> b!2228230 (= res!954991 call!133595)))

(assert (= (and d!664762 (not res!954989)) b!2228227))

(assert (= (and b!2228227 c!355546) b!2228228))

(assert (= (and b!2228227 (not c!355546)) b!2228225))

(assert (= (and b!2228228 res!954988) b!2228224))

(assert (= (and b!2228225 c!355547) b!2228222))

(assert (= (and b!2228225 (not c!355547)) b!2228226))

(assert (= (and b!2228222 res!954987) b!2228229))

(assert (= (and b!2228226 (not res!954990)) b!2228230))

(assert (= (and b!2228230 res!954991) b!2228223))

(assert (= (or b!2228229 b!2228223) bm!133590))

(assert (= (or b!2228222 b!2228230) bm!133591))

(assert (= (or b!2228224 bm!133591) bm!133589))

(declare-fun m!2666469 () Bool)

(assert (=> bm!133589 m!2666469))

(declare-fun m!2666471 () Bool)

(assert (=> bm!133590 m!2666471))

(declare-fun m!2666473 () Bool)

(assert (=> b!2228228 m!2666473))

(assert (=> start!217364 d!664762))

(declare-fun d!664764 () Bool)

(declare-fun res!954994 () Bool)

(declare-fun e!1424023 () Bool)

(assert (=> d!664764 (=> (not res!954994) (not e!1424023))))

(assert (=> d!664764 (= res!954994 ((_ is HashMap!2949) (cache!3330 cacheDown!839)))))

(assert (=> d!664764 (= (inv!35547 cacheDown!839) e!1424023)))

(declare-fun b!2228233 () Bool)

(assert (=> b!2228233 (= e!1424023 (validCacheMapDown!275 (cache!3330 cacheDown!839)))))

(assert (= (and d!664764 res!954994) b!2228233))

(assert (=> b!2228233 m!2666445))

(assert (=> start!217364 d!664764))

(declare-fun d!664766 () Bool)

(declare-fun lambda!84233 () Int)

(declare-fun forall!5352 (List!26274 Int) Bool)

(assert (=> d!664766 (= (inv!35548 context!86) (forall!5352 (exprs!2449 context!86) lambda!84233))))

(declare-fun bs!453661 () Bool)

(assert (= bs!453661 d!664766))

(declare-fun m!2666475 () Bool)

(assert (=> bs!453661 m!2666475))

(assert (=> start!217364 d!664766))

(declare-fun bm!133604 () Bool)

(declare-fun call!133611 () List!26274)

(declare-fun call!133613 () List!26274)

(assert (=> bm!133604 (= call!133611 call!133613)))

(declare-fun b!2228256 () Bool)

(declare-fun e!1424038 () Bool)

(assert (=> b!2228256 (= e!1424038 (nullable!1753 (regOne!13314 expr!64)))))

(declare-fun b!2228257 () Bool)

(declare-fun c!355559 () Bool)

(assert (=> b!2228257 (= c!355559 e!1424038)))

(declare-fun res!954997 () Bool)

(assert (=> b!2228257 (=> (not res!954997) (not e!1424038))))

(assert (=> b!2228257 (= res!954997 ((_ is Concat!10739) expr!64))))

(declare-fun e!1424041 () (InoxSet Context!3898))

(declare-fun e!1424037 () (InoxSet Context!3898))

(assert (=> b!2228257 (= e!1424041 e!1424037)))

(declare-fun b!2228258 () Bool)

(declare-fun e!1424036 () (InoxSet Context!3898))

(assert (=> b!2228258 (= e!1424036 ((as const (Array Context!3898 Bool)) false))))

(declare-fun b!2228259 () Bool)

(declare-fun call!133609 () (InoxSet Context!3898))

(declare-fun call!133610 () (InoxSet Context!3898))

(assert (=> b!2228259 (= e!1424041 ((_ map or) call!133609 call!133610))))

(declare-fun b!2228260 () Bool)

(declare-fun e!1424039 () (InoxSet Context!3898))

(assert (=> b!2228260 (= e!1424039 e!1424041)))

(declare-fun c!355558 () Bool)

(assert (=> b!2228260 (= c!355558 ((_ is Union!6401) expr!64))))

(declare-fun b!2228261 () Bool)

(declare-fun c!355561 () Bool)

(assert (=> b!2228261 (= c!355561 ((_ is Star!6401) expr!64))))

(declare-fun e!1424040 () (InoxSet Context!3898))

(assert (=> b!2228261 (= e!1424040 e!1424036)))

(declare-fun c!355560 () Bool)

(declare-fun bm!133606 () Bool)

(assert (=> bm!133606 (= call!133613 ($colon$colon!510 (exprs!2449 context!86) (ite (or c!355559 c!355560) (regTwo!13314 expr!64) expr!64)))))

(declare-fun b!2228262 () Bool)

(declare-fun call!133614 () (InoxSet Context!3898))

(assert (=> b!2228262 (= e!1424037 ((_ map or) call!133609 call!133614))))

(declare-fun b!2228263 () Bool)

(assert (=> b!2228263 (= e!1424037 e!1424040)))

(assert (=> b!2228263 (= c!355560 ((_ is Concat!10739) expr!64))))

(declare-fun bm!133605 () Bool)

(assert (=> bm!133605 (= call!133609 (derivationStepZipperDown!38 (ite c!355558 (regOne!13315 expr!64) (regOne!13314 expr!64)) (ite c!355558 context!86 (Context!3899 call!133613)) a!1167))))

(declare-fun d!664768 () Bool)

(declare-fun c!355562 () Bool)

(assert (=> d!664768 (= c!355562 (and ((_ is ElementMatch!6401) expr!64) (= (c!355523 expr!64) a!1167)))))

(assert (=> d!664768 (= (derivationStepZipperDown!38 expr!64 context!86 a!1167) e!1424039)))

(declare-fun b!2228264 () Bool)

(assert (=> b!2228264 (= e!1424039 (store ((as const (Array Context!3898 Bool)) false) context!86 true))))

(declare-fun bm!133607 () Bool)

(assert (=> bm!133607 (= call!133610 (derivationStepZipperDown!38 (ite c!355558 (regTwo!13315 expr!64) (ite c!355559 (regTwo!13314 expr!64) (ite c!355560 (regOne!13314 expr!64) (reg!6730 expr!64)))) (ite (or c!355558 c!355559) context!86 (Context!3899 call!133611)) a!1167))))

(declare-fun bm!133608 () Bool)

(declare-fun call!133612 () (InoxSet Context!3898))

(assert (=> bm!133608 (= call!133612 call!133614)))

(declare-fun bm!133609 () Bool)

(assert (=> bm!133609 (= call!133614 call!133610)))

(declare-fun b!2228265 () Bool)

(assert (=> b!2228265 (= e!1424040 call!133612)))

(declare-fun b!2228266 () Bool)

(assert (=> b!2228266 (= e!1424036 call!133612)))

(assert (= (and d!664768 c!355562) b!2228264))

(assert (= (and d!664768 (not c!355562)) b!2228260))

(assert (= (and b!2228260 c!355558) b!2228259))

(assert (= (and b!2228260 (not c!355558)) b!2228257))

(assert (= (and b!2228257 res!954997) b!2228256))

(assert (= (and b!2228257 c!355559) b!2228262))

(assert (= (and b!2228257 (not c!355559)) b!2228263))

(assert (= (and b!2228263 c!355560) b!2228265))

(assert (= (and b!2228263 (not c!355560)) b!2228261))

(assert (= (and b!2228261 c!355561) b!2228266))

(assert (= (and b!2228261 (not c!355561)) b!2228258))

(assert (= (or b!2228265 b!2228266) bm!133604))

(assert (= (or b!2228265 b!2228266) bm!133608))

(assert (= (or b!2228262 bm!133604) bm!133606))

(assert (= (or b!2228262 bm!133608) bm!133609))

(assert (= (or b!2228259 bm!133609) bm!133607))

(assert (= (or b!2228259 b!2228262) bm!133605))

(assert (=> b!2228264 m!2666425))

(declare-fun m!2666477 () Bool)

(assert (=> bm!133605 m!2666477))

(assert (=> b!2228256 m!2666421))

(declare-fun m!2666479 () Bool)

(assert (=> bm!133606 m!2666479))

(declare-fun m!2666481 () Bool)

(assert (=> bm!133607 m!2666481))

(assert (=> b!2228145 d!664768))

(declare-fun d!664770 () Bool)

(assert (=> d!664770 (= (array_inv!3347 (_keys!3336 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) (bvsge (size!20446 (_keys!3336 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2228158 d!664770))

(declare-fun d!664772 () Bool)

(assert (=> d!664772 (= (array_inv!3348 (_values!3319 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) (bvsge (size!20447 (_values!3319 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2228158 d!664772))

(declare-fun c!355564 () Bool)

(declare-fun b!2228267 () Bool)

(assert (=> b!2228267 (= c!355564 ((_ is Union!6401) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))))))

(declare-fun e!1424048 () tuple2!25512)

(declare-fun e!1424044 () tuple2!25512)

(assert (=> b!2228267 (= e!1424048 e!1424044)))

(declare-fun b!2228268 () Bool)

(declare-fun e!1424045 () tuple2!25512)

(declare-fun lt!830373 () tuple2!25512)

(assert (=> b!2228268 (= e!1424045 (tuple2!25513 (_1!15164 lt!830373) (_2!15164 lt!830373)))))

(declare-fun call!133618 () tuple2!25512)

(assert (=> b!2228268 (= lt!830373 call!133618)))

(declare-fun e!1424046 () tuple2!25512)

(declare-fun b!2228269 () Bool)

(assert (=> b!2228269 (= e!1424046 (tuple2!25513 ((as const (Array Context!3898 Bool)) false) (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839))))))

(declare-fun c!355567 () Bool)

(declare-fun b!2228270 () Bool)

(assert (=> b!2228270 (= c!355567 ((_ is Concat!10739) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))))))

(declare-fun e!1424042 () tuple2!25512)

(assert (=> b!2228270 (= e!1424042 e!1424045)))

(declare-fun b!2228271 () Bool)

(assert (=> b!2228271 (= e!1424045 e!1424046)))

(declare-fun c!355565 () Bool)

(assert (=> b!2228271 (= c!355565 ((_ is Star!6401) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))))))

(declare-fun call!133616 () tuple2!25512)

(declare-fun bm!133610 () Bool)

(declare-fun call!133615 () List!26274)

(declare-fun lt!830371 () tuple2!25512)

(assert (=> bm!133610 (= call!133616 (derivationStepZipperDownMem!17 (ite c!355564 (regTwo!13315 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) (regOne!13314 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))))) (ite c!355564 (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) (Context!3899 call!133615)) a!1167 (ite c!355564 (_2!15164 lt!830371) (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839)))))))

(declare-fun lt!830378 () tuple2!25512)

(declare-fun e!1424047 () tuple2!25512)

(declare-fun b!2228272 () Bool)

(assert (=> b!2228272 (= e!1424047 (tuple2!25513 (_1!15164 lt!830378) (_2!15165 (update!133 (_2!15164 lt!830378) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) a!1167 (_1!15164 lt!830378)))))))

(declare-fun c!355563 () Bool)

(assert (=> b!2228272 (= c!355563 (and ((_ is ElementMatch!6401) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) (= (c!355523 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) a!1167)))))

(assert (=> b!2228272 (= lt!830378 e!1424048)))

(declare-fun b!2228273 () Bool)

(declare-fun lt!830372 () tuple2!25512)

(assert (=> b!2228273 (= e!1424044 (tuple2!25513 ((_ map or) (_1!15164 lt!830371) (_1!15164 lt!830372)) (_2!15164 lt!830372)))))

(declare-fun call!133619 () tuple2!25512)

(assert (=> b!2228273 (= lt!830371 call!133619)))

(assert (=> b!2228273 (= lt!830372 call!133616)))

(declare-fun lt!830375 () tuple2!25512)

(declare-fun call!133617 () List!26274)

(declare-fun c!355566 () Bool)

(declare-fun bm!133611 () Bool)

(assert (=> bm!133611 (= call!133619 (derivationStepZipperDownMem!17 (ite c!355564 (regOne!13315 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) (ite c!355566 (regTwo!13314 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) (ite c!355567 (regOne!13314 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) (reg!6730 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))))))) (ite (or c!355564 c!355566) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) (Context!3899 call!133617)) a!1167 (ite c!355564 (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839)) (ite c!355566 (_2!15164 lt!830375) (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839))))))))

(declare-fun b!2228274 () Bool)

(declare-fun e!1424043 () Bool)

(assert (=> b!2228274 (= e!1424043 (nullable!1753 (regOne!13314 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))))))))

(declare-fun bm!133612 () Bool)

(assert (=> bm!133612 (= call!133615 ($colon$colon!510 (exprs!2449 (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568))) (ite (or c!355566 c!355567) (regTwo!13314 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))))))))

(declare-fun b!2228275 () Bool)

(declare-fun lt!830377 () tuple2!25512)

(declare-fun call!133620 () tuple2!25512)

(assert (=> b!2228275 (= lt!830377 call!133620)))

(assert (=> b!2228275 (= lt!830375 call!133616)))

(assert (=> b!2228275 (= e!1424042 (tuple2!25513 ((_ map or) (_1!15164 lt!830375) (_1!15164 lt!830377)) (_2!15164 lt!830377)))))

(declare-fun b!2228276 () Bool)

(declare-fun lt!830379 () Option!5090)

(assert (=> b!2228276 (= e!1424047 (tuple2!25513 (v!29759 lt!830379) (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839))))))

(declare-fun bm!133613 () Bool)

(assert (=> bm!133613 (= call!133618 call!133620)))

(declare-fun b!2228277 () Bool)

(assert (=> b!2228277 (= e!1424044 e!1424042)))

(declare-fun res!954998 () Bool)

(assert (=> b!2228277 (= res!954998 ((_ is Concat!10739) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64))))))))

(assert (=> b!2228277 (=> (not res!954998) (not e!1424043))))

(assert (=> b!2228277 (= c!355566 e!1424043)))

(declare-fun bm!133614 () Bool)

(assert (=> bm!133614 (= call!133617 call!133615)))

(declare-fun bm!133615 () Bool)

(assert (=> bm!133615 (= call!133620 call!133619)))

(declare-fun b!2228278 () Bool)

(declare-fun lt!830374 () tuple2!25512)

(assert (=> b!2228278 (= lt!830374 call!133618)))

(assert (=> b!2228278 (= e!1424046 (tuple2!25513 (_1!15164 lt!830374) (_2!15164 lt!830374)))))

(declare-fun lt!830376 () tuple2!25512)

(declare-fun d!664774 () Bool)

(assert (=> d!664774 (= (_1!15164 lt!830376) (derivationStepZipperDown!38 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) a!1167))))

(assert (=> d!664774 (= lt!830376 e!1424047)))

(declare-fun c!355568 () Bool)

(assert (=> d!664774 (= c!355568 ((_ is Some!5089) lt!830379))))

(assert (=> d!664774 (= lt!830379 (get!7884 (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839)) (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) a!1167))))

(assert (=> d!664774 (validRegex!2378 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))))))

(assert (=> d!664774 (= (derivationStepZipperDownMem!17 (ite c!355521 (regOne!13315 expr!64) (ite c!355520 (regTwo!13314 expr!64) (ite c!355519 (regOne!13314 expr!64) (reg!6730 expr!64)))) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) a!1167 (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839))) lt!830376)))

(declare-fun b!2228279 () Bool)

(assert (=> b!2228279 (= e!1424048 (tuple2!25513 (store ((as const (Array Context!3898 Bool)) false) (ite (or c!355521 c!355520) context!86 (Context!3899 call!133568)) true) (ite c!355521 cacheDown!839 (ite c!355520 (_2!15164 lt!830337) cacheDown!839))))))

(assert (= (and d!664774 c!355568) b!2228276))

(assert (= (and d!664774 (not c!355568)) b!2228272))

(assert (= (and b!2228272 c!355563) b!2228279))

(assert (= (and b!2228272 (not c!355563)) b!2228267))

(assert (= (and b!2228267 c!355564) b!2228273))

(assert (= (and b!2228267 (not c!355564)) b!2228277))

(assert (= (and b!2228277 res!954998) b!2228274))

(assert (= (and b!2228277 c!355566) b!2228275))

(assert (= (and b!2228277 (not c!355566)) b!2228270))

(assert (= (and b!2228270 c!355567) b!2228268))

(assert (= (and b!2228270 (not c!355567)) b!2228271))

(assert (= (and b!2228271 c!355565) b!2228278))

(assert (= (and b!2228271 (not c!355565)) b!2228269))

(assert (= (or b!2228268 b!2228278) bm!133614))

(assert (= (or b!2228268 b!2228278) bm!133613))

(assert (= (or b!2228275 bm!133614) bm!133612))

(assert (= (or b!2228275 bm!133613) bm!133615))

(assert (= (or b!2228273 bm!133615) bm!133611))

(assert (= (or b!2228273 b!2228275) bm!133610))

(declare-fun m!2666483 () Bool)

(assert (=> bm!133610 m!2666483))

(declare-fun m!2666485 () Bool)

(assert (=> b!2228272 m!2666485))

(declare-fun m!2666487 () Bool)

(assert (=> bm!133611 m!2666487))

(declare-fun m!2666489 () Bool)

(assert (=> b!2228274 m!2666489))

(declare-fun m!2666491 () Bool)

(assert (=> bm!133612 m!2666491))

(declare-fun m!2666493 () Bool)

(assert (=> b!2228279 m!2666493))

(declare-fun m!2666495 () Bool)

(assert (=> d!664774 m!2666495))

(declare-fun m!2666497 () Bool)

(assert (=> d!664774 m!2666497))

(declare-fun m!2666499 () Bool)

(assert (=> d!664774 m!2666499))

(assert (=> bm!133561 d!664774))

(declare-fun d!664776 () Bool)

(assert (=> d!664776 (= ($colon$colon!510 (exprs!2449 context!86) (ite (or c!355520 c!355519) (regTwo!13314 expr!64) expr!64)) (Cons!26180 (ite (or c!355520 c!355519) (regTwo!13314 expr!64) expr!64) (exprs!2449 context!86)))))

(assert (=> bm!133562 d!664776))

(declare-fun d!664778 () Bool)

(declare-fun res!955005 () Bool)

(declare-fun e!1424053 () Bool)

(assert (=> d!664778 (=> (not res!955005) (not e!1424053))))

(declare-fun valid!2320 (MutableMap!2949) Bool)

(assert (=> d!664778 (= res!955005 (valid!2320 (cache!3330 (_2!15164 lt!830339))))))

(assert (=> d!664778 (= (validCacheMapDown!275 (cache!3330 (_2!15164 lt!830339))) e!1424053)))

(declare-fun b!2228286 () Bool)

(declare-fun res!955006 () Bool)

(assert (=> b!2228286 (=> (not res!955006) (not e!1424053))))

(declare-fun invariantList!359 (List!26275) Bool)

(declare-datatypes ((ListMap!795 0))(
  ( (ListMap!796 (toList!1326 List!26275)) )
))
(declare-fun map!5348 (MutableMap!2949) ListMap!795)

(assert (=> b!2228286 (= res!955006 (invariantList!359 (toList!1326 (map!5348 (cache!3330 (_2!15164 lt!830339))))))))

(declare-fun b!2228287 () Bool)

(declare-fun lambda!84236 () Int)

(declare-fun forall!5353 (List!26275 Int) Bool)

(assert (=> b!2228287 (= e!1424053 (forall!5353 (toList!1326 (map!5348 (cache!3330 (_2!15164 lt!830339)))) lambda!84236))))

(assert (= (and d!664778 res!955005) b!2228286))

(assert (= (and b!2228286 res!955006) b!2228287))

(declare-fun m!2666502 () Bool)

(assert (=> d!664778 m!2666502))

(declare-fun m!2666504 () Bool)

(assert (=> b!2228286 m!2666504))

(declare-fun m!2666506 () Bool)

(assert (=> b!2228286 m!2666506))

(assert (=> b!2228287 m!2666504))

(declare-fun m!2666508 () Bool)

(assert (=> b!2228287 m!2666508))

(assert (=> b!2228155 d!664778))

(declare-fun mapNonEmpty!14317 () Bool)

(declare-fun mapRes!14317 () Bool)

(declare-fun tp!697114 () Bool)

(declare-fun e!1424067 () Bool)

(assert (=> mapNonEmpty!14317 (= mapRes!14317 (and tp!697114 e!1424067))))

(declare-fun mapKey!14317 () (_ BitVec 32))

(declare-fun mapValue!14317 () List!26275)

(declare-fun mapRest!14317 () (Array (_ BitVec 32) List!26275))

(assert (=> mapNonEmpty!14317 (= mapRest!14314 (store mapRest!14317 mapKey!14317 mapValue!14317))))

(declare-fun mapIsEmpty!14317 () Bool)

(assert (=> mapIsEmpty!14317 mapRes!14317))

(declare-fun b!2228302 () Bool)

(declare-fun e!1424066 () Bool)

(declare-fun tp!697115 () Bool)

(assert (=> b!2228302 (= e!1424066 tp!697115)))

(declare-fun setRes!19955 () Bool)

(declare-fun setElem!19955 () Context!3898)

(declare-fun tp!697112 () Bool)

(declare-fun setNonEmpty!19955 () Bool)

(declare-fun e!1424069 () Bool)

(assert (=> setNonEmpty!19955 (= setRes!19955 (and tp!697112 (inv!35548 setElem!19955) e!1424069))))

(declare-fun setRest!19955 () (InoxSet Context!3898))

(assert (=> setNonEmpty!19955 (= (_2!15163 (h!31582 mapValue!14317)) ((_ map or) (store ((as const (Array Context!3898 Bool)) false) setElem!19955 true) setRest!19955))))

(declare-fun setElem!19956 () Context!3898)

(declare-fun setNonEmpty!19956 () Bool)

(declare-fun setRes!19956 () Bool)

(declare-fun tp!697118 () Bool)

(assert (=> setNonEmpty!19956 (= setRes!19956 (and tp!697118 (inv!35548 setElem!19956) e!1424066))))

(declare-fun mapDefault!14317 () List!26275)

(declare-fun setRest!19956 () (InoxSet Context!3898))

(assert (=> setNonEmpty!19956 (= (_2!15163 (h!31582 mapDefault!14317)) ((_ map or) (store ((as const (Array Context!3898 Bool)) false) setElem!19956 true) setRest!19956))))

(declare-fun b!2228303 () Bool)

(declare-fun tp!697121 () Bool)

(assert (=> b!2228303 (= e!1424069 tp!697121)))

(declare-fun b!2228304 () Bool)

(declare-fun e!1424071 () Bool)

(declare-fun tp!697116 () Bool)

(assert (=> b!2228304 (= e!1424071 tp!697116)))

(declare-fun e!1424068 () Bool)

(declare-fun tp!697113 () Bool)

(declare-fun b!2228305 () Bool)

(declare-fun tp!697117 () Bool)

(assert (=> b!2228305 (= e!1424068 (and tp!697113 (inv!35548 (_2!15162 (_1!15163 (h!31582 mapDefault!14317)))) e!1424071 tp_is_empty!10027 setRes!19956 tp!697117))))

(declare-fun condSetEmpty!19955 () Bool)

(assert (=> b!2228305 (= condSetEmpty!19955 (= (_2!15163 (h!31582 mapDefault!14317)) ((as const (Array Context!3898 Bool)) false)))))

(declare-fun condMapEmpty!14317 () Bool)

(assert (=> mapNonEmpty!14314 (= condMapEmpty!14317 (= mapRest!14314 ((as const (Array (_ BitVec 32) List!26275)) mapDefault!14317)))))

(assert (=> mapNonEmpty!14314 (= tp!697081 (and e!1424068 mapRes!14317))))

(declare-fun b!2228306 () Bool)

(declare-fun e!1424070 () Bool)

(declare-fun tp!697120 () Bool)

(assert (=> b!2228306 (= e!1424070 tp!697120)))

(declare-fun setIsEmpty!19955 () Bool)

(assert (=> setIsEmpty!19955 setRes!19956))

(declare-fun tp!697119 () Bool)

(declare-fun tp!697111 () Bool)

(declare-fun b!2228307 () Bool)

(assert (=> b!2228307 (= e!1424067 (and tp!697119 (inv!35548 (_2!15162 (_1!15163 (h!31582 mapValue!14317)))) e!1424070 tp_is_empty!10027 setRes!19955 tp!697111))))

(declare-fun condSetEmpty!19956 () Bool)

(assert (=> b!2228307 (= condSetEmpty!19956 (= (_2!15163 (h!31582 mapValue!14317)) ((as const (Array Context!3898 Bool)) false)))))

(declare-fun setIsEmpty!19956 () Bool)

(assert (=> setIsEmpty!19956 setRes!19955))

(assert (= (and mapNonEmpty!14314 condMapEmpty!14317) mapIsEmpty!14317))

(assert (= (and mapNonEmpty!14314 (not condMapEmpty!14317)) mapNonEmpty!14317))

(assert (= b!2228307 b!2228306))

(assert (= (and b!2228307 condSetEmpty!19956) setIsEmpty!19956))

(assert (= (and b!2228307 (not condSetEmpty!19956)) setNonEmpty!19955))

(assert (= setNonEmpty!19955 b!2228303))

(assert (= (and mapNonEmpty!14317 ((_ is Cons!26181) mapValue!14317)) b!2228307))

(assert (= b!2228305 b!2228304))

(assert (= (and b!2228305 condSetEmpty!19955) setIsEmpty!19955))

(assert (= (and b!2228305 (not condSetEmpty!19955)) setNonEmpty!19956))

(assert (= setNonEmpty!19956 b!2228302))

(assert (= (and mapNonEmpty!14314 ((_ is Cons!26181) mapDefault!14317)) b!2228305))

(declare-fun m!2666510 () Bool)

(assert (=> mapNonEmpty!14317 m!2666510))

(declare-fun m!2666512 () Bool)

(assert (=> b!2228307 m!2666512))

(declare-fun m!2666514 () Bool)

(assert (=> b!2228305 m!2666514))

(declare-fun m!2666516 () Bool)

(assert (=> setNonEmpty!19955 m!2666516))

(declare-fun m!2666518 () Bool)

(assert (=> setNonEmpty!19956 m!2666518))

(declare-fun e!1424080 () Bool)

(assert (=> mapNonEmpty!14314 (= tp!697086 e!1424080)))

(declare-fun b!2228316 () Bool)

(declare-fun e!1424078 () Bool)

(declare-fun tp!697134 () Bool)

(assert (=> b!2228316 (= e!1424078 tp!697134)))

(declare-fun b!2228317 () Bool)

(declare-fun e!1424079 () Bool)

(declare-fun tp!697135 () Bool)

(assert (=> b!2228317 (= e!1424079 tp!697135)))

(declare-fun setElem!19959 () Context!3898)

(declare-fun setRes!19959 () Bool)

(declare-fun setNonEmpty!19959 () Bool)

(declare-fun tp!697132 () Bool)

(assert (=> setNonEmpty!19959 (= setRes!19959 (and tp!697132 (inv!35548 setElem!19959) e!1424079))))

(declare-fun setRest!19959 () (InoxSet Context!3898))

(assert (=> setNonEmpty!19959 (= (_2!15163 (h!31582 mapValue!14314)) ((_ map or) (store ((as const (Array Context!3898 Bool)) false) setElem!19959 true) setRest!19959))))

(declare-fun setIsEmpty!19959 () Bool)

(assert (=> setIsEmpty!19959 setRes!19959))

(declare-fun b!2228318 () Bool)

(declare-fun tp!697133 () Bool)

(declare-fun tp!697136 () Bool)

(assert (=> b!2228318 (= e!1424080 (and tp!697133 (inv!35548 (_2!15162 (_1!15163 (h!31582 mapValue!14314)))) e!1424078 tp_is_empty!10027 setRes!19959 tp!697136))))

(declare-fun condSetEmpty!19959 () Bool)

(assert (=> b!2228318 (= condSetEmpty!19959 (= (_2!15163 (h!31582 mapValue!14314)) ((as const (Array Context!3898 Bool)) false)))))

(assert (= b!2228318 b!2228316))

(assert (= (and b!2228318 condSetEmpty!19959) setIsEmpty!19959))

(assert (= (and b!2228318 (not condSetEmpty!19959)) setNonEmpty!19959))

(assert (= setNonEmpty!19959 b!2228317))

(assert (= (and mapNonEmpty!14314 ((_ is Cons!26181) mapValue!14314)) b!2228318))

(declare-fun m!2666520 () Bool)

(assert (=> setNonEmpty!19959 m!2666520))

(declare-fun m!2666522 () Bool)

(assert (=> b!2228318 m!2666522))

(declare-fun b!2228323 () Bool)

(declare-fun e!1424083 () Bool)

(declare-fun tp!697141 () Bool)

(declare-fun tp!697142 () Bool)

(assert (=> b!2228323 (= e!1424083 (and tp!697141 tp!697142))))

(assert (=> b!2228143 (= tp!697078 e!1424083)))

(assert (= (and b!2228143 ((_ is Cons!26180) (exprs!2449 context!86))) b!2228323))

(declare-fun e!1424086 () Bool)

(assert (=> b!2228157 (= tp!697084 e!1424086)))

(declare-fun b!2228324 () Bool)

(declare-fun e!1424084 () Bool)

(declare-fun tp!697145 () Bool)

(assert (=> b!2228324 (= e!1424084 tp!697145)))

(declare-fun b!2228325 () Bool)

(declare-fun e!1424085 () Bool)

(declare-fun tp!697146 () Bool)

(assert (=> b!2228325 (= e!1424085 tp!697146)))

(declare-fun tp!697143 () Bool)

(declare-fun setElem!19960 () Context!3898)

(declare-fun setRes!19960 () Bool)

(declare-fun setNonEmpty!19960 () Bool)

(assert (=> setNonEmpty!19960 (= setRes!19960 (and tp!697143 (inv!35548 setElem!19960) e!1424085))))

(declare-fun setRest!19960 () (InoxSet Context!3898))

(assert (=> setNonEmpty!19960 (= (_2!15163 (h!31582 mapDefault!14314)) ((_ map or) (store ((as const (Array Context!3898 Bool)) false) setElem!19960 true) setRest!19960))))

(declare-fun setIsEmpty!19960 () Bool)

(assert (=> setIsEmpty!19960 setRes!19960))

(declare-fun tp!697144 () Bool)

(declare-fun b!2228326 () Bool)

(declare-fun tp!697147 () Bool)

(assert (=> b!2228326 (= e!1424086 (and tp!697144 (inv!35548 (_2!15162 (_1!15163 (h!31582 mapDefault!14314)))) e!1424084 tp_is_empty!10027 setRes!19960 tp!697147))))

(declare-fun condSetEmpty!19960 () Bool)

(assert (=> b!2228326 (= condSetEmpty!19960 (= (_2!15163 (h!31582 mapDefault!14314)) ((as const (Array Context!3898 Bool)) false)))))

(assert (= b!2228326 b!2228324))

(assert (= (and b!2228326 condSetEmpty!19960) setIsEmpty!19960))

(assert (= (and b!2228326 (not condSetEmpty!19960)) setNonEmpty!19960))

(assert (= setNonEmpty!19960 b!2228325))

(assert (= (and b!2228157 ((_ is Cons!26181) mapDefault!14314)) b!2228326))

(declare-fun m!2666524 () Bool)

(assert (=> setNonEmpty!19960 m!2666524))

(declare-fun m!2666526 () Bool)

(assert (=> b!2228326 m!2666526))

(declare-fun b!2228337 () Bool)

(declare-fun e!1424089 () Bool)

(assert (=> b!2228337 (= e!1424089 tp_is_empty!10027)))

(declare-fun b!2228339 () Bool)

(declare-fun tp!697159 () Bool)

(assert (=> b!2228339 (= e!1424089 tp!697159)))

(declare-fun b!2228338 () Bool)

(declare-fun tp!697161 () Bool)

(declare-fun tp!697158 () Bool)

(assert (=> b!2228338 (= e!1424089 (and tp!697161 tp!697158))))

(declare-fun b!2228340 () Bool)

(declare-fun tp!697160 () Bool)

(declare-fun tp!697162 () Bool)

(assert (=> b!2228340 (= e!1424089 (and tp!697160 tp!697162))))

(assert (=> b!2228161 (= tp!697077 e!1424089)))

(assert (= (and b!2228161 ((_ is ElementMatch!6401) (regOne!13315 expr!64))) b!2228337))

(assert (= (and b!2228161 ((_ is Concat!10739) (regOne!13315 expr!64))) b!2228338))

(assert (= (and b!2228161 ((_ is Star!6401) (regOne!13315 expr!64))) b!2228339))

(assert (= (and b!2228161 ((_ is Union!6401) (regOne!13315 expr!64))) b!2228340))

(declare-fun b!2228341 () Bool)

(declare-fun e!1424090 () Bool)

(assert (=> b!2228341 (= e!1424090 tp_is_empty!10027)))

(declare-fun b!2228343 () Bool)

(declare-fun tp!697164 () Bool)

(assert (=> b!2228343 (= e!1424090 tp!697164)))

(declare-fun b!2228342 () Bool)

(declare-fun tp!697166 () Bool)

(declare-fun tp!697163 () Bool)

(assert (=> b!2228342 (= e!1424090 (and tp!697166 tp!697163))))

(declare-fun b!2228344 () Bool)

(declare-fun tp!697165 () Bool)

(declare-fun tp!697167 () Bool)

(assert (=> b!2228344 (= e!1424090 (and tp!697165 tp!697167))))

(assert (=> b!2228161 (= tp!697079 e!1424090)))

(assert (= (and b!2228161 ((_ is ElementMatch!6401) (regTwo!13315 expr!64))) b!2228341))

(assert (= (and b!2228161 ((_ is Concat!10739) (regTwo!13315 expr!64))) b!2228342))

(assert (= (and b!2228161 ((_ is Star!6401) (regTwo!13315 expr!64))) b!2228343))

(assert (= (and b!2228161 ((_ is Union!6401) (regTwo!13315 expr!64))) b!2228344))

(declare-fun b!2228345 () Bool)

(declare-fun e!1424091 () Bool)

(assert (=> b!2228345 (= e!1424091 tp_is_empty!10027)))

(declare-fun b!2228347 () Bool)

(declare-fun tp!697169 () Bool)

(assert (=> b!2228347 (= e!1424091 tp!697169)))

(declare-fun b!2228346 () Bool)

(declare-fun tp!697171 () Bool)

(declare-fun tp!697168 () Bool)

(assert (=> b!2228346 (= e!1424091 (and tp!697171 tp!697168))))

(declare-fun b!2228348 () Bool)

(declare-fun tp!697170 () Bool)

(declare-fun tp!697172 () Bool)

(assert (=> b!2228348 (= e!1424091 (and tp!697170 tp!697172))))

(assert (=> b!2228140 (= tp!697085 e!1424091)))

(assert (= (and b!2228140 ((_ is ElementMatch!6401) (regOne!13314 expr!64))) b!2228345))

(assert (= (and b!2228140 ((_ is Concat!10739) (regOne!13314 expr!64))) b!2228346))

(assert (= (and b!2228140 ((_ is Star!6401) (regOne!13314 expr!64))) b!2228347))

(assert (= (and b!2228140 ((_ is Union!6401) (regOne!13314 expr!64))) b!2228348))

(declare-fun b!2228349 () Bool)

(declare-fun e!1424092 () Bool)

(assert (=> b!2228349 (= e!1424092 tp_is_empty!10027)))

(declare-fun b!2228351 () Bool)

(declare-fun tp!697174 () Bool)

(assert (=> b!2228351 (= e!1424092 tp!697174)))

(declare-fun b!2228350 () Bool)

(declare-fun tp!697176 () Bool)

(declare-fun tp!697173 () Bool)

(assert (=> b!2228350 (= e!1424092 (and tp!697176 tp!697173))))

(declare-fun b!2228352 () Bool)

(declare-fun tp!697175 () Bool)

(declare-fun tp!697177 () Bool)

(assert (=> b!2228352 (= e!1424092 (and tp!697175 tp!697177))))

(assert (=> b!2228140 (= tp!697080 e!1424092)))

(assert (= (and b!2228140 ((_ is ElementMatch!6401) (regTwo!13314 expr!64))) b!2228349))

(assert (= (and b!2228140 ((_ is Concat!10739) (regTwo!13314 expr!64))) b!2228350))

(assert (= (and b!2228140 ((_ is Star!6401) (regTwo!13314 expr!64))) b!2228351))

(assert (= (and b!2228140 ((_ is Union!6401) (regTwo!13314 expr!64))) b!2228352))

(declare-fun b!2228353 () Bool)

(declare-fun e!1424093 () Bool)

(assert (=> b!2228353 (= e!1424093 tp_is_empty!10027)))

(declare-fun b!2228355 () Bool)

(declare-fun tp!697179 () Bool)

(assert (=> b!2228355 (= e!1424093 tp!697179)))

(declare-fun b!2228354 () Bool)

(declare-fun tp!697181 () Bool)

(declare-fun tp!697178 () Bool)

(assert (=> b!2228354 (= e!1424093 (and tp!697181 tp!697178))))

(declare-fun b!2228356 () Bool)

(declare-fun tp!697180 () Bool)

(declare-fun tp!697182 () Bool)

(assert (=> b!2228356 (= e!1424093 (and tp!697180 tp!697182))))

(assert (=> b!2228141 (= tp!697087 e!1424093)))

(assert (= (and b!2228141 ((_ is ElementMatch!6401) (reg!6730 expr!64))) b!2228353))

(assert (= (and b!2228141 ((_ is Concat!10739) (reg!6730 expr!64))) b!2228354))

(assert (= (and b!2228141 ((_ is Star!6401) (reg!6730 expr!64))) b!2228355))

(assert (= (and b!2228141 ((_ is Union!6401) (reg!6730 expr!64))) b!2228356))

(declare-fun e!1424096 () Bool)

(assert (=> b!2228158 (= tp!697082 e!1424096)))

(declare-fun b!2228357 () Bool)

(declare-fun e!1424094 () Bool)

(declare-fun tp!697185 () Bool)

(assert (=> b!2228357 (= e!1424094 tp!697185)))

(declare-fun b!2228358 () Bool)

(declare-fun e!1424095 () Bool)

(declare-fun tp!697186 () Bool)

(assert (=> b!2228358 (= e!1424095 tp!697186)))

(declare-fun setRes!19961 () Bool)

(declare-fun tp!697183 () Bool)

(declare-fun setNonEmpty!19961 () Bool)

(declare-fun setElem!19961 () Context!3898)

(assert (=> setNonEmpty!19961 (= setRes!19961 (and tp!697183 (inv!35548 setElem!19961) e!1424095))))

(declare-fun setRest!19961 () (InoxSet Context!3898))

(assert (=> setNonEmpty!19961 (= (_2!15163 (h!31582 (zeroValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3898 Bool)) false) setElem!19961 true) setRest!19961))))

(declare-fun setIsEmpty!19961 () Bool)

(assert (=> setIsEmpty!19961 setRes!19961))

(declare-fun tp!697184 () Bool)

(declare-fun tp!697187 () Bool)

(declare-fun b!2228359 () Bool)

(assert (=> b!2228359 (= e!1424096 (and tp!697184 (inv!35548 (_2!15162 (_1!15163 (h!31582 (zeroValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))))) e!1424094 tp_is_empty!10027 setRes!19961 tp!697187))))

(declare-fun condSetEmpty!19961 () Bool)

(assert (=> b!2228359 (= condSetEmpty!19961 (= (_2!15163 (h!31582 (zeroValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))) ((as const (Array Context!3898 Bool)) false)))))

(assert (= b!2228359 b!2228357))

(assert (= (and b!2228359 condSetEmpty!19961) setIsEmpty!19961))

(assert (= (and b!2228359 (not condSetEmpty!19961)) setNonEmpty!19961))

(assert (= setNonEmpty!19961 b!2228358))

(assert (= (and b!2228158 ((_ is Cons!26181) (zeroValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))) b!2228359))

(declare-fun m!2666528 () Bool)

(assert (=> setNonEmpty!19961 m!2666528))

(declare-fun m!2666530 () Bool)

(assert (=> b!2228359 m!2666530))

(declare-fun e!1424099 () Bool)

(assert (=> b!2228158 (= tp!697076 e!1424099)))

(declare-fun b!2228360 () Bool)

(declare-fun e!1424097 () Bool)

(declare-fun tp!697190 () Bool)

(assert (=> b!2228360 (= e!1424097 tp!697190)))

(declare-fun b!2228361 () Bool)

(declare-fun e!1424098 () Bool)

(declare-fun tp!697191 () Bool)

(assert (=> b!2228361 (= e!1424098 tp!697191)))

(declare-fun setRes!19962 () Bool)

(declare-fun setNonEmpty!19962 () Bool)

(declare-fun setElem!19962 () Context!3898)

(declare-fun tp!697188 () Bool)

(assert (=> setNonEmpty!19962 (= setRes!19962 (and tp!697188 (inv!35548 setElem!19962) e!1424098))))

(declare-fun setRest!19962 () (InoxSet Context!3898))

(assert (=> setNonEmpty!19962 (= (_2!15163 (h!31582 (minValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3898 Bool)) false) setElem!19962 true) setRest!19962))))

(declare-fun setIsEmpty!19962 () Bool)

(assert (=> setIsEmpty!19962 setRes!19962))

(declare-fun tp!697189 () Bool)

(declare-fun tp!697192 () Bool)

(declare-fun b!2228362 () Bool)

(assert (=> b!2228362 (= e!1424099 (and tp!697189 (inv!35548 (_2!15162 (_1!15163 (h!31582 (minValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))))) e!1424097 tp_is_empty!10027 setRes!19962 tp!697192))))

(declare-fun condSetEmpty!19962 () Bool)

(assert (=> b!2228362 (= condSetEmpty!19962 (= (_2!15163 (h!31582 (minValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))) ((as const (Array Context!3898 Bool)) false)))))

(assert (= b!2228362 b!2228360))

(assert (= (and b!2228362 condSetEmpty!19962) setIsEmpty!19962))

(assert (= (and b!2228362 (not condSetEmpty!19962)) setNonEmpty!19962))

(assert (= setNonEmpty!19962 b!2228361))

(assert (= (and b!2228158 ((_ is Cons!26181) (minValue!3297 (v!29757 (underlying!6279 (v!29758 (underlying!6280 (cache!3330 cacheDown!839)))))))) b!2228362))

(declare-fun m!2666532 () Bool)

(assert (=> setNonEmpty!19962 m!2666532))

(declare-fun m!2666534 () Bool)

(assert (=> b!2228362 m!2666534))

(check-sat (not b!2228317) (not b!2228233) (not b!2228352) (not b!2228302) (not b!2228342) (not b!2228164) (not b!2228196) (not b!2228358) (not b!2228316) (not setNonEmpty!19955) (not setNonEmpty!19959) (not b!2228359) (not setNonEmpty!19962) (not d!664760) (not b!2228306) (not bm!133607) (not b!2228228) (not bm!133611) (not mapNonEmpty!14317) (not b!2228343) (not b!2228348) (not b!2228350) (not b!2228256) (not d!664774) (not b!2228324) (not b!2228287) (not b!2228304) (not bm!133610) (not b!2228355) (not bm!133612) (not b!2228351) (not b!2228318) (not bm!133589) (not bm!133590) (not b!2228198) (not b!2228346) (not b!2228307) (not b!2228356) (not d!664778) tp_is_empty!10027 (not b_next!65323) (not bm!133578) (not b!2228354) (not b!2228325) (not b!2228326) (not b!2228362) (not b!2228305) (not setNonEmpty!19956) (not d!664756) b_and!174605 (not b!2228274) (not setNonEmpty!19961) (not b!2228339) (not bm!133606) (not bm!133605) (not bm!133577) (not b!2228344) (not b!2228272) (not b!2228357) (not b!2228340) (not b!2228303) (not b!2228347) (not b!2228323) (not setNonEmpty!19960) (not d!664758) (not b!2228361) (not d!664766) (not b!2228286) (not b_next!65321) b_and!174607 (not b!2228360) (not bm!133579) (not b!2228338))
(check-sat b_and!174607 b_and!174605 (not b_next!65321) (not b_next!65323))
