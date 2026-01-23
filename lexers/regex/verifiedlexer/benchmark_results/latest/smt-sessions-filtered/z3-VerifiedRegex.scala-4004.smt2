; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217360 () Bool)

(assert start!217360)

(declare-fun b!2227999 () Bool)

(declare-fun b_free!64609 () Bool)

(declare-fun b_next!65313 () Bool)

(assert (=> b!2227999 (= b_free!64609 (not b_next!65313))))

(declare-fun tp!697010 () Bool)

(declare-fun b_and!174597 () Bool)

(assert (=> b!2227999 (= tp!697010 b_and!174597)))

(declare-fun b!2227986 () Bool)

(declare-fun b_free!64611 () Bool)

(declare-fun b_next!65315 () Bool)

(assert (=> b!2227986 (= b_free!64611 (not b_next!65315))))

(declare-fun tp!696998 () Bool)

(declare-fun b_and!174599 () Bool)

(assert (=> b!2227986 (= tp!696998 b_and!174599)))

(declare-fun bm!133523 () Bool)

(declare-datatypes ((C!12944 0))(
  ( (C!12945 (val!7520 Int)) )
))
(declare-datatypes ((Regex!6399 0))(
  ( (ElementMatch!6399 (c!355491 C!12944)) (Concat!10737 (regOne!13310 Regex!6399) (regTwo!13310 Regex!6399)) (EmptyExpr!6399) (Star!6399 (reg!6728 Regex!6399)) (EmptyLang!6399) (Union!6399 (regOne!13311 Regex!6399) (regTwo!13311 Regex!6399)) )
))
(declare-datatypes ((List!26270 0))(
  ( (Nil!26176) (Cons!26176 (h!31577 Regex!6399) (t!199683 List!26270)) )
))
(declare-datatypes ((Context!3894 0))(
  ( (Context!3895 (exprs!2447 List!26270)) )
))
(declare-datatypes ((array!10482 0))(
  ( (array!10483 (arr!4661 (Array (_ BitVec 32) (_ BitVec 64))) (size!20442 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3870 0))(
  ( (tuple3!3871 (_1!15156 Regex!6399) (_2!15156 Context!3894) (_3!2405 C!12944)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25502 0))(
  ( (tuple2!25503 (_1!15157 tuple3!3870) (_2!15157 (InoxSet Context!3894))) )
))
(declare-datatypes ((List!26271 0))(
  ( (Nil!26177) (Cons!26177 (h!31578 tuple2!25502) (t!199684 List!26271)) )
))
(declare-datatypes ((array!10484 0))(
  ( (array!10485 (arr!4662 (Array (_ BitVec 32) List!26271)) (size!20443 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6074 0))(
  ( (LongMapFixedSize!6075 (defaultEntry!3402 Int) (mask!7590 (_ BitVec 32)) (extraKeys!3285 (_ BitVec 32)) (zeroValue!3295 List!26271) (minValue!3295 List!26271) (_size!6121 (_ BitVec 32)) (_keys!3334 array!10482) (_values!3317 array!10484) (_vacant!3098 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11965 0))(
  ( (Cell!11966 (v!29751 LongMapFixedSize!6074)) )
))
(declare-datatypes ((MutLongMap!3037 0))(
  ( (LongMap!3037 (underlying!6275 Cell!11965)) (MutLongMapExt!3036 (__x!17337 Int)) )
))
(declare-datatypes ((Cell!11967 0))(
  ( (Cell!11968 (v!29752 MutLongMap!3037)) )
))
(declare-datatypes ((Hashable!2947 0))(
  ( (HashableExt!2946 (__x!17338 Int)) )
))
(declare-datatypes ((MutableMap!2947 0))(
  ( (MutableMapExt!2946 (__x!17339 Int)) (HashMap!2947 (underlying!6276 Cell!11967) (hashF!4870 Hashable!2947) (_size!6122 (_ BitVec 32)) (defaultValue!3109 Int)) )
))
(declare-datatypes ((CacheDown!1940 0))(
  ( (CacheDown!1941 (cache!3328 MutableMap!2947)) )
))
(declare-datatypes ((tuple2!25504 0))(
  ( (tuple2!25505 (_1!15158 (InoxSet Context!3894)) (_2!15158 CacheDown!1940)) )
))
(declare-fun call!133533 () tuple2!25504)

(declare-fun call!133532 () tuple2!25504)

(assert (=> bm!133523 (= call!133533 call!133532)))

(declare-fun b!2227981 () Bool)

(declare-fun e!1423853 () Bool)

(declare-fun tp!697001 () Bool)

(declare-fun mapRes!14308 () Bool)

(assert (=> b!2227981 (= e!1423853 (and tp!697001 mapRes!14308))))

(declare-fun condMapEmpty!14308 () Bool)

(declare-fun cacheDown!839 () CacheDown!1940)

(declare-fun mapDefault!14308 () List!26271)

(assert (=> b!2227981 (= condMapEmpty!14308 (= (arr!4662 (_values!3317 (v!29751 (underlying!6275 (v!29752 (underlying!6276 (cache!3328 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26271)) mapDefault!14308)))))

(declare-fun mapIsEmpty!14308 () Bool)

(assert (=> mapIsEmpty!14308 mapRes!14308))

(declare-fun b!2227982 () Bool)

(declare-fun e!1423856 () Bool)

(assert (=> b!2227982 (= e!1423856 false)))

(declare-fun lt!830302 () Bool)

(declare-fun e!1423867 () tuple2!25504)

(declare-fun validCacheMapDown!274 (MutableMap!2947) Bool)

(assert (=> b!2227982 (= lt!830302 (validCacheMapDown!274 (cache!3328 (_2!15158 e!1423867))))))

(declare-fun c!355489 () Bool)

(declare-fun expr!64 () Regex!6399)

(declare-fun a!1167 () C!12944)

(get-info :version)

(assert (=> b!2227982 (= c!355489 (and ((_ is ElementMatch!6399) expr!64) (= (c!355491 expr!64) a!1167)))))

(declare-fun b!2227983 () Bool)

(declare-fun e!1423855 () tuple2!25504)

(declare-fun lt!830300 () tuple2!25504)

(declare-fun lt!830301 () tuple2!25504)

(assert (=> b!2227983 (= e!1423855 (tuple2!25505 ((_ map or) (_1!15158 lt!830300) (_1!15158 lt!830301)) (_2!15158 lt!830301)))))

(declare-fun call!133530 () tuple2!25504)

(assert (=> b!2227983 (= lt!830300 call!133530)))

(assert (=> b!2227983 (= lt!830301 call!133533)))

(declare-fun b!2227984 () Bool)

(declare-fun e!1423865 () Bool)

(declare-fun e!1423854 () Bool)

(assert (=> b!2227984 (= e!1423865 e!1423854)))

(declare-fun b!2227985 () Bool)

(declare-fun e!1423858 () Bool)

(declare-fun tp!697007 () Bool)

(declare-fun tp!697003 () Bool)

(assert (=> b!2227985 (= e!1423858 (and tp!697007 tp!697003))))

(declare-fun tp!697009 () Bool)

(declare-fun tp!697006 () Bool)

(declare-fun array_inv!3345 (array!10482) Bool)

(declare-fun array_inv!3346 (array!10484) Bool)

(assert (=> b!2227986 (= e!1423854 (and tp!696998 tp!697009 tp!697006 (array_inv!3345 (_keys!3334 (v!29751 (underlying!6275 (v!29752 (underlying!6276 (cache!3328 cacheDown!839))))))) (array_inv!3346 (_values!3317 (v!29751 (underlying!6275 (v!29752 (underlying!6276 (cache!3328 cacheDown!839))))))) e!1423853))))

(declare-fun mapNonEmpty!14308 () Bool)

(declare-fun tp!697005 () Bool)

(declare-fun tp!697002 () Bool)

(assert (=> mapNonEmpty!14308 (= mapRes!14308 (and tp!697005 tp!697002))))

(declare-fun mapValue!14308 () List!26271)

(declare-fun mapKey!14308 () (_ BitVec 32))

(declare-fun mapRest!14308 () (Array (_ BitVec 32) List!26271))

(assert (=> mapNonEmpty!14308 (= (arr!4662 (_values!3317 (v!29751 (underlying!6275 (v!29752 (underlying!6276 (cache!3328 cacheDown!839))))))) (store mapRest!14308 mapKey!14308 mapValue!14308))))

(declare-fun b!2227987 () Bool)

(declare-fun e!1423866 () tuple2!25504)

(assert (=> b!2227987 (= e!1423867 e!1423866)))

(declare-fun c!355490 () Bool)

(assert (=> b!2227987 (= c!355490 ((_ is Union!6399) expr!64))))

(declare-fun b!2227988 () Bool)

(declare-fun tp_is_empty!10023 () Bool)

(assert (=> b!2227988 (= e!1423858 tp_is_empty!10023)))

(declare-fun b!2227990 () Bool)

(declare-fun e!1423862 () tuple2!25504)

(assert (=> b!2227990 (= e!1423862 (tuple2!25505 ((as const (Array Context!3894 Bool)) false) cacheDown!839))))

(declare-fun bm!133524 () Bool)

(declare-fun call!133531 () List!26270)

(declare-fun call!133529 () List!26270)

(assert (=> bm!133524 (= call!133531 call!133529)))

(declare-fun b!2227991 () Bool)

(declare-fun e!1423852 () Bool)

(declare-fun e!1423864 () Bool)

(assert (=> b!2227991 (= e!1423852 e!1423864)))

(declare-fun b!2227992 () Bool)

(declare-fun e!1423851 () Bool)

(assert (=> b!2227992 (= e!1423851 e!1423865)))

(declare-fun b!2227993 () Bool)

(declare-fun e!1423857 () Bool)

(declare-fun tp!697004 () Bool)

(assert (=> b!2227993 (= e!1423857 tp!697004)))

(declare-fun b!2227994 () Bool)

(declare-fun e!1423863 () Bool)

(declare-fun lt!830303 () MutLongMap!3037)

(assert (=> b!2227994 (= e!1423863 (and e!1423851 ((_ is LongMap!3037) lt!830303)))))

(assert (=> b!2227994 (= lt!830303 (v!29752 (underlying!6276 (cache!3328 cacheDown!839))))))

(declare-fun b!2227995 () Bool)

(declare-fun res!954944 () Bool)

(assert (=> b!2227995 (=> (not res!954944) (not e!1423856))))

(declare-fun context!86 () Context!3894)

(declare-datatypes ((Option!5088 0))(
  ( (None!5087) (Some!5087 (v!29753 (InoxSet Context!3894))) )
))
(declare-fun get!7881 (CacheDown!1940 Regex!6399 Context!3894 C!12944) Option!5088)

(assert (=> b!2227995 (= res!954944 (not ((_ is Some!5087) (get!7881 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2227996 () Bool)

(declare-fun lt!830304 () tuple2!25504)

(assert (=> b!2227996 (= lt!830304 call!133530)))

(declare-fun lt!830299 () tuple2!25504)

(assert (=> b!2227996 (= lt!830299 call!133532)))

(assert (=> b!2227996 (= e!1423866 (tuple2!25505 ((_ map or) (_1!15158 lt!830299) (_1!15158 lt!830304)) (_2!15158 lt!830304)))))

(declare-fun b!2227997 () Bool)

(declare-fun e!1423860 () tuple2!25504)

(declare-fun call!133528 () tuple2!25504)

(assert (=> b!2227997 (= e!1423860 call!133528)))

(declare-fun bm!133525 () Bool)

(assert (=> bm!133525 (= call!133528 call!133533)))

(declare-fun bm!133526 () Bool)

(declare-fun c!355486 () Bool)

(declare-fun c!355488 () Bool)

(declare-fun $colon$colon!509 (List!26270 Regex!6399) List!26270)

(assert (=> bm!133526 (= call!133529 ($colon$colon!509 (exprs!2447 context!86) (ite (or c!355486 c!355488) (regTwo!13310 expr!64) expr!64)))))

(declare-fun b!2227998 () Bool)

(declare-fun tp!697000 () Bool)

(declare-fun tp!697008 () Bool)

(assert (=> b!2227998 (= e!1423858 (and tp!697000 tp!697008))))

(declare-fun bm!133527 () Bool)

(declare-fun derivationStepZipperDownMem!15 (Regex!6399 Context!3894 C!12944 CacheDown!1940) tuple2!25504)

(assert (=> bm!133527 (= call!133532 (derivationStepZipperDownMem!15 (ite c!355490 (regOne!13311 expr!64) (ite c!355486 (regTwo!13310 expr!64) (ite c!355488 (regOne!13310 expr!64) (reg!6728 expr!64)))) (ite (or c!355490 c!355486) context!86 (Context!3895 call!133531)) a!1167 (ite c!355490 cacheDown!839 (ite c!355486 (_2!15158 lt!830300) cacheDown!839))))))

(assert (=> b!2227999 (= e!1423864 (and e!1423863 tp!697010))))

(declare-fun b!2228000 () Bool)

(declare-fun e!1423859 () Bool)

(assert (=> b!2228000 (= c!355486 e!1423859)))

(declare-fun res!954946 () Bool)

(assert (=> b!2228000 (=> (not res!954946) (not e!1423859))))

(assert (=> b!2228000 (= res!954946 ((_ is Concat!10737) expr!64))))

(assert (=> b!2228000 (= e!1423866 e!1423855)))

(declare-fun b!2228001 () Bool)

(declare-fun nullable!1751 (Regex!6399) Bool)

(assert (=> b!2228001 (= e!1423859 (nullable!1751 (regOne!13310 expr!64)))))

(declare-fun b!2228002 () Bool)

(assert (=> b!2228002 (= e!1423862 call!133528)))

(declare-fun res!954945 () Bool)

(assert (=> start!217360 (=> (not res!954945) (not e!1423856))))

(declare-fun validRegex!2376 (Regex!6399) Bool)

(assert (=> start!217360 (= res!954945 (validRegex!2376 expr!64))))

(assert (=> start!217360 e!1423856))

(assert (=> start!217360 e!1423858))

(declare-fun inv!35540 (CacheDown!1940) Bool)

(assert (=> start!217360 (and (inv!35540 cacheDown!839) e!1423852)))

(declare-fun inv!35541 (Context!3894) Bool)

(assert (=> start!217360 (and (inv!35541 context!86) e!1423857)))

(assert (=> start!217360 tp_is_empty!10023))

(declare-fun b!2227989 () Bool)

(declare-fun c!355487 () Bool)

(assert (=> b!2227989 (= c!355487 ((_ is Star!6399) expr!64))))

(assert (=> b!2227989 (= e!1423860 e!1423862)))

(declare-fun b!2228003 () Bool)

(assert (=> b!2228003 (= e!1423855 e!1423860)))

(assert (=> b!2228003 (= c!355488 ((_ is Concat!10737) expr!64))))

(declare-fun b!2228004 () Bool)

(declare-fun tp!696999 () Bool)

(assert (=> b!2228004 (= e!1423858 tp!696999)))

(declare-fun b!2228005 () Bool)

(assert (=> b!2228005 (= e!1423867 (tuple2!25505 (store ((as const (Array Context!3894 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun bm!133528 () Bool)

(assert (=> bm!133528 (= call!133530 (derivationStepZipperDownMem!15 (ite c!355490 (regTwo!13311 expr!64) (regOne!13310 expr!64)) (ite c!355490 context!86 (Context!3895 call!133529)) a!1167 (ite c!355490 (_2!15158 lt!830299) cacheDown!839)))))

(assert (= (and start!217360 res!954945) b!2227995))

(assert (= (and b!2227995 res!954944) b!2227982))

(assert (= (and b!2227982 c!355489) b!2228005))

(assert (= (and b!2227982 (not c!355489)) b!2227987))

(assert (= (and b!2227987 c!355490) b!2227996))

(assert (= (and b!2227987 (not c!355490)) b!2228000))

(assert (= (and b!2228000 res!954946) b!2228001))

(assert (= (and b!2228000 c!355486) b!2227983))

(assert (= (and b!2228000 (not c!355486)) b!2228003))

(assert (= (and b!2228003 c!355488) b!2227997))

(assert (= (and b!2228003 (not c!355488)) b!2227989))

(assert (= (and b!2227989 c!355487) b!2228002))

(assert (= (and b!2227989 (not c!355487)) b!2227990))

(assert (= (or b!2227997 b!2228002) bm!133524))

(assert (= (or b!2227997 b!2228002) bm!133525))

(assert (= (or b!2227983 bm!133524) bm!133526))

(assert (= (or b!2227983 bm!133525) bm!133523))

(assert (= (or b!2227996 b!2227983) bm!133528))

(assert (= (or b!2227996 bm!133523) bm!133527))

(assert (= (and start!217360 ((_ is ElementMatch!6399) expr!64)) b!2227988))

(assert (= (and start!217360 ((_ is Concat!10737) expr!64)) b!2227998))

(assert (= (and start!217360 ((_ is Star!6399) expr!64)) b!2228004))

(assert (= (and start!217360 ((_ is Union!6399) expr!64)) b!2227985))

(assert (= (and b!2227981 condMapEmpty!14308) mapIsEmpty!14308))

(assert (= (and b!2227981 (not condMapEmpty!14308)) mapNonEmpty!14308))

(assert (= b!2227986 b!2227981))

(assert (= b!2227984 b!2227986))

(assert (= b!2227992 b!2227984))

(assert (= (and b!2227994 ((_ is LongMap!3037) (v!29752 (underlying!6276 (cache!3328 cacheDown!839))))) b!2227992))

(assert (= b!2227999 b!2227994))

(assert (= (and b!2227991 ((_ is HashMap!2947) (cache!3328 cacheDown!839))) b!2227999))

(assert (= start!217360 b!2227991))

(assert (= start!217360 b!2227993))

(declare-fun m!2666359 () Bool)

(assert (=> b!2227982 m!2666359))

(declare-fun m!2666361 () Bool)

(assert (=> bm!133527 m!2666361))

(declare-fun m!2666363 () Bool)

(assert (=> b!2227986 m!2666363))

(declare-fun m!2666365 () Bool)

(assert (=> b!2227986 m!2666365))

(declare-fun m!2666367 () Bool)

(assert (=> b!2227995 m!2666367))

(declare-fun m!2666369 () Bool)

(assert (=> b!2228005 m!2666369))

(declare-fun m!2666371 () Bool)

(assert (=> bm!133526 m!2666371))

(declare-fun m!2666373 () Bool)

(assert (=> bm!133528 m!2666373))

(declare-fun m!2666375 () Bool)

(assert (=> mapNonEmpty!14308 m!2666375))

(declare-fun m!2666377 () Bool)

(assert (=> b!2228001 m!2666377))

(declare-fun m!2666379 () Bool)

(assert (=> start!217360 m!2666379))

(declare-fun m!2666381 () Bool)

(assert (=> start!217360 m!2666381))

(declare-fun m!2666383 () Bool)

(assert (=> start!217360 m!2666383))

(check-sat (not b!2227985) (not bm!133526) b_and!174599 (not b!2227998) b_and!174597 (not b!2227993) (not b!2227995) (not start!217360) (not bm!133528) tp_is_empty!10023 (not b!2227986) (not b_next!65313) (not b!2227981) (not mapNonEmpty!14308) (not b_next!65315) (not b!2227982) (not bm!133527) (not b!2228001) (not b!2228004))
(check-sat b_and!174597 b_and!174599 (not b_next!65315) (not b_next!65313))
