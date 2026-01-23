; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217314 () Bool)

(assert start!217314)

(declare-fun b!2227300 () Bool)

(declare-fun b_free!64601 () Bool)

(declare-fun b_next!65305 () Bool)

(assert (=> b!2227300 (= b_free!64601 (not b_next!65305))))

(declare-fun tp!696573 () Bool)

(declare-fun b_and!174589 () Bool)

(assert (=> b!2227300 (= tp!696573 b_and!174589)))

(declare-fun b!2227283 () Bool)

(declare-fun b_free!64603 () Bool)

(declare-fun b_next!65307 () Bool)

(assert (=> b!2227283 (= b_free!64603 (not b_next!65307))))

(declare-fun tp!696579 () Bool)

(declare-fun b_and!174591 () Bool)

(assert (=> b!2227283 (= tp!696579 b_and!174591)))

(declare-fun b!2227278 () Bool)

(declare-fun c!355364 () Bool)

(declare-fun e!1423429 () Bool)

(assert (=> b!2227278 (= c!355364 e!1423429)))

(declare-fun res!954819 () Bool)

(assert (=> b!2227278 (=> (not res!954819) (not e!1423429))))

(declare-datatypes ((C!12940 0))(
  ( (C!12941 (val!7518 Int)) )
))
(declare-datatypes ((Regex!6397 0))(
  ( (ElementMatch!6397 (c!355369 C!12940)) (Concat!10735 (regOne!13306 Regex!6397) (regTwo!13306 Regex!6397)) (EmptyExpr!6397) (Star!6397 (reg!6726 Regex!6397)) (EmptyLang!6397) (Union!6397 (regOne!13307 Regex!6397) (regTwo!13307 Regex!6397)) )
))
(declare-fun expr!64 () Regex!6397)

(get-info :version)

(assert (=> b!2227278 (= res!954819 ((_ is Concat!10735) expr!64))))

(declare-datatypes ((List!26265 0))(
  ( (Nil!26171) (Cons!26171 (h!31572 Regex!6397) (t!199677 List!26265)) )
))
(declare-datatypes ((Context!3890 0))(
  ( (Context!3891 (exprs!2445 List!26265)) )
))
(declare-datatypes ((array!10472 0))(
  ( (array!10473 (arr!4657 (Array (_ BitVec 32) (_ BitVec 64))) (size!20438 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3866 0))(
  ( (tuple3!3867 (_1!15148 Regex!6397) (_2!15148 Context!3890) (_3!2403 C!12940)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25490 0))(
  ( (tuple2!25491 (_1!15149 tuple3!3866) (_2!15149 (InoxSet Context!3890))) )
))
(declare-datatypes ((List!26266 0))(
  ( (Nil!26172) (Cons!26172 (h!31573 tuple2!25490) (t!199678 List!26266)) )
))
(declare-datatypes ((array!10474 0))(
  ( (array!10475 (arr!4658 (Array (_ BitVec 32) List!26266)) (size!20439 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6070 0))(
  ( (LongMapFixedSize!6071 (defaultEntry!3400 Int) (mask!7587 (_ BitVec 32)) (extraKeys!3283 (_ BitVec 32)) (zeroValue!3293 List!26266) (minValue!3293 List!26266) (_size!6117 (_ BitVec 32)) (_keys!3332 array!10472) (_values!3315 array!10474) (_vacant!3096 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11957 0))(
  ( (Cell!11958 (v!29746 LongMapFixedSize!6070)) )
))
(declare-datatypes ((MutLongMap!3035 0))(
  ( (LongMap!3035 (underlying!6271 Cell!11957)) (MutLongMapExt!3034 (__x!17331 Int)) )
))
(declare-datatypes ((Cell!11959 0))(
  ( (Cell!11960 (v!29747 MutLongMap!3035)) )
))
(declare-datatypes ((Hashable!2945 0))(
  ( (HashableExt!2944 (__x!17332 Int)) )
))
(declare-datatypes ((MutableMap!2945 0))(
  ( (MutableMapExt!2944 (__x!17333 Int)) (HashMap!2945 (underlying!6272 Cell!11959) (hashF!4868 Hashable!2945) (_size!6118 (_ BitVec 32)) (defaultValue!3107 Int)) )
))
(declare-datatypes ((CacheDown!1936 0))(
  ( (CacheDown!1937 (cache!3326 MutableMap!2945)) )
))
(declare-datatypes ((tuple2!25492 0))(
  ( (tuple2!25493 (_1!15150 (InoxSet Context!3890)) (_2!15150 CacheDown!1936)) )
))
(declare-fun e!1423423 () tuple2!25492)

(declare-fun e!1423424 () tuple2!25492)

(assert (=> b!2227278 (= e!1423423 e!1423424)))

(declare-fun b!2227279 () Bool)

(declare-fun e!1423430 () Bool)

(declare-fun e!1423438 () Bool)

(assert (=> b!2227279 (= e!1423430 e!1423438)))

(declare-fun b!2227280 () Bool)

(declare-fun e!1423432 () tuple2!25492)

(assert (=> b!2227280 (= e!1423432 e!1423423)))

(declare-fun c!355367 () Bool)

(assert (=> b!2227280 (= c!355367 ((_ is Union!6397) expr!64))))

(declare-fun b!2227282 () Bool)

(declare-fun e!1423437 () tuple2!25492)

(declare-fun cacheDown!839 () CacheDown!1936)

(assert (=> b!2227282 (= e!1423437 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) cacheDown!839))))

(declare-fun bm!133382 () Bool)

(declare-fun call!133388 () tuple2!25492)

(declare-fun call!133392 () tuple2!25492)

(assert (=> bm!133382 (= call!133388 call!133392)))

(declare-fun e!1423434 () Bool)

(declare-fun e!1423431 () Bool)

(declare-fun tp!696574 () Bool)

(declare-fun tp!696572 () Bool)

(declare-fun array_inv!3343 (array!10472) Bool)

(declare-fun array_inv!3344 (array!10474) Bool)

(assert (=> b!2227283 (= e!1423431 (and tp!696579 tp!696574 tp!696572 (array_inv!3343 (_keys!3332 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) (array_inv!3344 (_values!3315 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) e!1423434))))

(declare-fun b!2227284 () Bool)

(declare-fun context!86 () Context!3890)

(assert (=> b!2227284 (= e!1423432 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun b!2227285 () Bool)

(declare-fun nullable!1750 (Regex!6397) Bool)

(assert (=> b!2227285 (= e!1423429 (nullable!1750 (regOne!13306 expr!64)))))

(declare-fun b!2227286 () Bool)

(declare-fun e!1423425 () Bool)

(declare-fun tp!696567 () Bool)

(declare-fun tp!696568 () Bool)

(assert (=> b!2227286 (= e!1423425 (and tp!696567 tp!696568))))

(declare-fun b!2227287 () Bool)

(declare-fun tp!696569 () Bool)

(declare-fun mapRes!14298 () Bool)

(assert (=> b!2227287 (= e!1423434 (and tp!696569 mapRes!14298))))

(declare-fun condMapEmpty!14298 () Bool)

(declare-fun mapDefault!14298 () List!26266)

(assert (=> b!2227287 (= condMapEmpty!14298 (= (arr!4658 (_values!3315 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26266)) mapDefault!14298)))))

(declare-fun b!2227288 () Bool)

(declare-fun e!1423433 () tuple2!25492)

(assert (=> b!2227288 (= e!1423424 e!1423433)))

(declare-fun c!355368 () Bool)

(assert (=> b!2227288 (= c!355368 ((_ is Concat!10735) expr!64))))

(declare-fun b!2227289 () Bool)

(declare-fun e!1423435 () Bool)

(declare-fun e!1423427 () Bool)

(assert (=> b!2227289 (= e!1423435 e!1423427)))

(declare-fun b!2227290 () Bool)

(declare-fun tp!696577 () Bool)

(declare-fun tp!696571 () Bool)

(assert (=> b!2227290 (= e!1423425 (and tp!696577 tp!696571))))

(declare-fun res!954821 () Bool)

(declare-fun e!1423422 () Bool)

(assert (=> start!217314 (=> (not res!954821) (not e!1423422))))

(declare-fun validRegex!2374 (Regex!6397) Bool)

(assert (=> start!217314 (= res!954821 (validRegex!2374 expr!64))))

(assert (=> start!217314 e!1423422))

(assert (=> start!217314 e!1423425))

(declare-fun inv!35533 (CacheDown!1936) Bool)

(assert (=> start!217314 (and (inv!35533 cacheDown!839) e!1423435)))

(declare-fun e!1423426 () Bool)

(declare-fun inv!35534 (Context!3890) Bool)

(assert (=> start!217314 (and (inv!35534 context!86) e!1423426)))

(declare-fun tp_is_empty!10019 () Bool)

(assert (=> start!217314 tp_is_empty!10019))

(declare-fun b!2227281 () Bool)

(assert (=> b!2227281 (= e!1423437 call!133388)))

(declare-fun b!2227291 () Bool)

(declare-fun lt!830176 () tuple2!25492)

(declare-fun lt!830177 () tuple2!25492)

(assert (=> b!2227291 (= e!1423424 (tuple2!25493 ((_ map or) (_1!15150 lt!830176) (_1!15150 lt!830177)) (_2!15150 lt!830177)))))

(declare-fun call!133391 () tuple2!25492)

(assert (=> b!2227291 (= lt!830176 call!133391)))

(assert (=> b!2227291 (= lt!830177 call!133392)))

(declare-fun b!2227292 () Bool)

(assert (=> b!2227292 (= e!1423425 tp_is_empty!10019)))

(declare-fun b!2227293 () Bool)

(declare-fun c!355365 () Bool)

(assert (=> b!2227293 (= c!355365 ((_ is Star!6397) expr!64))))

(assert (=> b!2227293 (= e!1423433 e!1423437)))

(declare-fun b!2227294 () Bool)

(assert (=> b!2227294 (= e!1423438 e!1423431)))

(declare-fun lt!830179 () tuple2!25492)

(declare-fun bm!133383 () Bool)

(declare-fun call!133390 () List!26265)

(declare-fun a!1167 () C!12940)

(declare-fun call!133387 () tuple2!25492)

(declare-fun derivationStepZipperDownMem!14 (Regex!6397 Context!3890 C!12940 CacheDown!1936) tuple2!25492)

(assert (=> bm!133383 (= call!133387 (derivationStepZipperDownMem!14 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun b!2227295 () Bool)

(declare-fun tp!696576 () Bool)

(assert (=> b!2227295 (= e!1423426 tp!696576)))

(declare-fun b!2227296 () Bool)

(declare-fun res!954820 () Bool)

(assert (=> b!2227296 (=> (not res!954820) (not e!1423422))))

(declare-datatypes ((Option!5087 0))(
  ( (None!5086) (Some!5086 (v!29748 (InoxSet Context!3890))) )
))
(declare-fun get!7878 (CacheDown!1936 Regex!6397 Context!3890 C!12940) Option!5087)

(assert (=> b!2227296 (= res!954820 (not ((_ is Some!5086) (get!7878 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun call!133389 () List!26265)

(declare-fun bm!133384 () Bool)

(declare-fun $colon$colon!508 (List!26265 Regex!6397) List!26265)

(assert (=> bm!133384 (= call!133389 ($colon$colon!508 (exprs!2445 context!86) (ite (or c!355364 c!355368) (regTwo!13306 expr!64) expr!64)))))

(declare-fun b!2227297 () Bool)

(declare-fun validCacheMapDown!272 (MutableMap!2945) Bool)

(assert (=> b!2227297 (= e!1423422 (not (validCacheMapDown!272 (cache!3326 (_2!15150 e!1423432)))))))

(declare-fun c!355366 () Bool)

(assert (=> b!2227297 (= c!355366 (and ((_ is ElementMatch!6397) expr!64) (= (c!355369 expr!64) a!1167)))))

(declare-fun b!2227298 () Bool)

(declare-fun tp!696570 () Bool)

(assert (=> b!2227298 (= e!1423425 tp!696570)))

(declare-fun bm!133385 () Bool)

(assert (=> bm!133385 (= call!133392 call!133387)))

(declare-fun b!2227299 () Bool)

(declare-fun e!1423428 () Bool)

(declare-fun lt!830180 () MutLongMap!3035)

(assert (=> b!2227299 (= e!1423428 (and e!1423430 ((_ is LongMap!3035) lt!830180)))))

(assert (=> b!2227299 (= lt!830180 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))

(declare-fun mapIsEmpty!14298 () Bool)

(assert (=> mapIsEmpty!14298 mapRes!14298))

(assert (=> b!2227300 (= e!1423427 (and e!1423428 tp!696573))))

(declare-fun bm!133386 () Bool)

(assert (=> bm!133386 (= call!133391 (derivationStepZipperDownMem!14 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 cacheDown!839))))

(declare-fun b!2227301 () Bool)

(declare-fun lt!830178 () tuple2!25492)

(assert (=> b!2227301 (= lt!830178 call!133387)))

(assert (=> b!2227301 (= lt!830179 call!133391)))

(assert (=> b!2227301 (= e!1423423 (tuple2!25493 ((_ map or) (_1!15150 lt!830179) (_1!15150 lt!830178)) (_2!15150 lt!830178)))))

(declare-fun bm!133387 () Bool)

(assert (=> bm!133387 (= call!133390 call!133389)))

(declare-fun b!2227302 () Bool)

(assert (=> b!2227302 (= e!1423433 call!133388)))

(declare-fun mapNonEmpty!14298 () Bool)

(declare-fun tp!696575 () Bool)

(declare-fun tp!696578 () Bool)

(assert (=> mapNonEmpty!14298 (= mapRes!14298 (and tp!696575 tp!696578))))

(declare-fun mapRest!14298 () (Array (_ BitVec 32) List!26266))

(declare-fun mapValue!14298 () List!26266)

(declare-fun mapKey!14298 () (_ BitVec 32))

(assert (=> mapNonEmpty!14298 (= (arr!4658 (_values!3315 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) (store mapRest!14298 mapKey!14298 mapValue!14298))))

(assert (= (and start!217314 res!954821) b!2227296))

(assert (= (and b!2227296 res!954820) b!2227297))

(assert (= (and b!2227297 c!355366) b!2227284))

(assert (= (and b!2227297 (not c!355366)) b!2227280))

(assert (= (and b!2227280 c!355367) b!2227301))

(assert (= (and b!2227280 (not c!355367)) b!2227278))

(assert (= (and b!2227278 res!954819) b!2227285))

(assert (= (and b!2227278 c!355364) b!2227291))

(assert (= (and b!2227278 (not c!355364)) b!2227288))

(assert (= (and b!2227288 c!355368) b!2227302))

(assert (= (and b!2227288 (not c!355368)) b!2227293))

(assert (= (and b!2227293 c!355365) b!2227281))

(assert (= (and b!2227293 (not c!355365)) b!2227282))

(assert (= (or b!2227302 b!2227281) bm!133387))

(assert (= (or b!2227302 b!2227281) bm!133382))

(assert (= (or b!2227291 bm!133387) bm!133384))

(assert (= (or b!2227291 bm!133382) bm!133385))

(assert (= (or b!2227301 b!2227291) bm!133386))

(assert (= (or b!2227301 bm!133385) bm!133383))

(assert (= (and start!217314 ((_ is ElementMatch!6397) expr!64)) b!2227292))

(assert (= (and start!217314 ((_ is Concat!10735) expr!64)) b!2227290))

(assert (= (and start!217314 ((_ is Star!6397) expr!64)) b!2227298))

(assert (= (and start!217314 ((_ is Union!6397) expr!64)) b!2227286))

(assert (= (and b!2227287 condMapEmpty!14298) mapIsEmpty!14298))

(assert (= (and b!2227287 (not condMapEmpty!14298)) mapNonEmpty!14298))

(assert (= b!2227283 b!2227287))

(assert (= b!2227294 b!2227283))

(assert (= b!2227279 b!2227294))

(assert (= (and b!2227299 ((_ is LongMap!3035) (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))) b!2227279))

(assert (= b!2227300 b!2227299))

(assert (= (and b!2227289 ((_ is HashMap!2945) (cache!3326 cacheDown!839))) b!2227300))

(assert (= start!217314 b!2227289))

(assert (= start!217314 b!2227295))

(declare-fun m!2665954 () Bool)

(assert (=> b!2227283 m!2665954))

(declare-fun m!2665956 () Bool)

(assert (=> b!2227283 m!2665956))

(declare-fun m!2665958 () Bool)

(assert (=> bm!133384 m!2665958))

(declare-fun m!2665960 () Bool)

(assert (=> bm!133383 m!2665960))

(declare-fun m!2665962 () Bool)

(assert (=> b!2227284 m!2665962))

(declare-fun m!2665964 () Bool)

(assert (=> b!2227296 m!2665964))

(declare-fun m!2665966 () Bool)

(assert (=> start!217314 m!2665966))

(declare-fun m!2665968 () Bool)

(assert (=> start!217314 m!2665968))

(declare-fun m!2665970 () Bool)

(assert (=> start!217314 m!2665970))

(declare-fun m!2665972 () Bool)

(assert (=> mapNonEmpty!14298 m!2665972))

(declare-fun m!2665974 () Bool)

(assert (=> b!2227285 m!2665974))

(declare-fun m!2665976 () Bool)

(assert (=> b!2227297 m!2665976))

(declare-fun m!2665978 () Bool)

(assert (=> bm!133386 m!2665978))

(check-sat (not b!2227297) (not b!2227298) (not start!217314) (not b!2227290) (not bm!133384) b_and!174591 (not b!2227296) (not b!2227295) (not b!2227287) (not mapNonEmpty!14298) (not b!2227285) (not bm!133383) (not b_next!65305) b_and!174589 (not b_next!65307) (not b!2227286) (not bm!133386) tp_is_empty!10019 (not b!2227283))
(check-sat b_and!174589 b_and!174591 (not b_next!65307) (not b_next!65305))
(get-model)

(declare-fun d!664644 () Bool)

(declare-fun e!1423441 () Bool)

(assert (=> d!664644 e!1423441))

(declare-fun res!954824 () Bool)

(assert (=> d!664644 (=> res!954824 e!1423441)))

(declare-fun lt!830183 () Option!5087)

(declare-fun isEmpty!14887 (Option!5087) Bool)

(assert (=> d!664644 (= res!954824 (isEmpty!14887 lt!830183))))

(declare-fun choose!13117 (CacheDown!1936 Regex!6397 Context!3890 C!12940) Option!5087)

(assert (=> d!664644 (= lt!830183 (choose!13117 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!664644 (validCacheMapDown!272 (cache!3326 cacheDown!839))))

(assert (=> d!664644 (= (get!7878 cacheDown!839 expr!64 context!86 a!1167) lt!830183)))

(declare-fun b!2227305 () Bool)

(declare-fun get!7879 (Option!5087) (InoxSet Context!3890))

(declare-fun derivationStepZipperDown!37 (Regex!6397 Context!3890 C!12940) (InoxSet Context!3890))

(assert (=> b!2227305 (= e!1423441 (= (get!7879 lt!830183) (derivationStepZipperDown!37 expr!64 context!86 a!1167)))))

(assert (= (and d!664644 (not res!954824)) b!2227305))

(declare-fun m!2665980 () Bool)

(assert (=> d!664644 m!2665980))

(declare-fun m!2665982 () Bool)

(assert (=> d!664644 m!2665982))

(declare-fun m!2665984 () Bool)

(assert (=> d!664644 m!2665984))

(declare-fun m!2665986 () Bool)

(assert (=> b!2227305 m!2665986))

(declare-fun m!2665988 () Bool)

(assert (=> b!2227305 m!2665988))

(assert (=> b!2227296 d!664644))

(declare-fun e!1423457 () tuple2!25492)

(declare-fun b!2227332 () Bool)

(assert (=> b!2227332 (= e!1423457 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) true) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun b!2227333 () Bool)

(declare-fun e!1423456 () Bool)

(assert (=> b!2227333 (= e!1423456 (nullable!1750 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(declare-fun b!2227334 () Bool)

(declare-fun c!355386 () Bool)

(assert (=> b!2227334 (= c!355386 ((_ is Concat!10735) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun e!1423461 () tuple2!25492)

(declare-fun e!1423460 () tuple2!25492)

(assert (=> b!2227334 (= e!1423461 e!1423460)))

(declare-fun b!2227335 () Bool)

(declare-fun e!1423462 () tuple2!25492)

(declare-fun lt!830209 () tuple2!25492)

(declare-fun lt!830208 () tuple2!25492)

(assert (=> b!2227335 (= e!1423462 (tuple2!25493 ((_ map or) (_1!15150 lt!830209) (_1!15150 lt!830208)) (_2!15150 lt!830208)))))

(declare-fun call!133407 () tuple2!25492)

(assert (=> b!2227335 (= lt!830209 call!133407)))

(declare-fun call!133405 () tuple2!25492)

(assert (=> b!2227335 (= lt!830208 call!133405)))

(declare-fun b!2227336 () Bool)

(declare-fun lt!830210 () tuple2!25492)

(declare-fun call!133408 () tuple2!25492)

(assert (=> b!2227336 (= lt!830210 call!133408)))

(declare-fun e!1423459 () tuple2!25492)

(assert (=> b!2227336 (= e!1423459 (tuple2!25493 (_1!15150 lt!830210) (_2!15150 lt!830210)))))

(declare-fun b!2227337 () Bool)

(declare-fun lt!830207 () tuple2!25492)

(declare-fun call!133410 () tuple2!25492)

(assert (=> b!2227337 (= lt!830207 call!133410)))

(declare-fun lt!830205 () tuple2!25492)

(assert (=> b!2227337 (= lt!830205 call!133407)))

(assert (=> b!2227337 (= e!1423461 (tuple2!25493 ((_ map or) (_1!15150 lt!830205) (_1!15150 lt!830207)) (_2!15150 lt!830207)))))

(declare-fun b!2227338 () Bool)

(declare-fun c!355384 () Bool)

(assert (=> b!2227338 (= c!355384 ((_ is Union!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(assert (=> b!2227338 (= e!1423457 e!1423462)))

(declare-fun bm!133400 () Bool)

(declare-fun call!133409 () List!26265)

(assert (=> bm!133400 (= call!133407 (derivationStepZipperDownMem!14 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun bm!133401 () Bool)

(declare-fun call!133406 () List!26265)

(assert (=> bm!133401 (= call!133406 call!133409)))

(declare-fun c!355387 () Bool)

(declare-fun bm!133402 () Bool)

(assert (=> bm!133402 (= call!133409 ($colon$colon!508 (exprs!2445 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390))) (ite (or c!355387 c!355386) (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(declare-fun bm!133403 () Bool)

(assert (=> bm!133403 (= call!133408 call!133410)))

(declare-fun lt!830203 () tuple2!25492)

(declare-fun e!1423458 () tuple2!25492)

(declare-fun b!2227339 () Bool)

(declare-datatypes ((Unit!39144 0))(
  ( (Unit!39145) )
))
(declare-datatypes ((tuple2!25494 0))(
  ( (tuple2!25495 (_1!15151 Unit!39144) (_2!15151 CacheDown!1936)) )
))
(declare-fun update!132 (CacheDown!1936 Regex!6397 Context!3890 C!12940 (InoxSet Context!3890)) tuple2!25494)

(assert (=> b!2227339 (= e!1423458 (tuple2!25493 (_1!15150 lt!830203) (_2!15151 (update!132 (_2!15150 lt!830203) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (_1!15150 lt!830203)))))))

(declare-fun c!355383 () Bool)

(assert (=> b!2227339 (= c!355383 (and ((_ is ElementMatch!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (= (c!355369 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) a!1167)))))

(assert (=> b!2227339 (= lt!830203 e!1423457)))

(declare-fun b!2227340 () Bool)

(assert (=> b!2227340 (= e!1423460 e!1423459)))

(declare-fun c!355385 () Bool)

(assert (=> b!2227340 (= c!355385 ((_ is Star!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun b!2227341 () Bool)

(assert (=> b!2227341 (= e!1423462 e!1423461)))

(declare-fun res!954827 () Bool)

(assert (=> b!2227341 (= res!954827 ((_ is Concat!10735) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(assert (=> b!2227341 (=> (not res!954827) (not e!1423456))))

(assert (=> b!2227341 (= c!355387 e!1423456)))

(declare-fun bm!133404 () Bool)

(assert (=> bm!133404 (= call!133410 call!133405)))

(declare-fun b!2227342 () Bool)

(assert (=> b!2227342 (= e!1423459 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun bm!133405 () Bool)

(assert (=> bm!133405 (= call!133405 (derivationStepZipperDownMem!14 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) a!1167 (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))

(declare-fun lt!830204 () tuple2!25492)

(declare-fun d!664646 () Bool)

(assert (=> d!664646 (= (_1!15150 lt!830204) (derivationStepZipperDown!37 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167))))

(assert (=> d!664646 (= lt!830204 e!1423458)))

(declare-fun c!355382 () Bool)

(declare-fun lt!830206 () Option!5087)

(assert (=> d!664646 (= c!355382 ((_ is Some!5086) lt!830206))))

(assert (=> d!664646 (= lt!830206 (get!7878 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839)) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167))))

(assert (=> d!664646 (validRegex!2374 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))

(assert (=> d!664646 (= (derivationStepZipperDownMem!14 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))) lt!830204)))

(declare-fun b!2227343 () Bool)

(assert (=> b!2227343 (= e!1423458 (tuple2!25493 (v!29748 lt!830206) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun b!2227344 () Bool)

(declare-fun lt!830202 () tuple2!25492)

(assert (=> b!2227344 (= e!1423460 (tuple2!25493 (_1!15150 lt!830202) (_2!15150 lt!830202)))))

(assert (=> b!2227344 (= lt!830202 call!133408)))

(assert (= (and d!664646 c!355382) b!2227343))

(assert (= (and d!664646 (not c!355382)) b!2227339))

(assert (= (and b!2227339 c!355383) b!2227332))

(assert (= (and b!2227339 (not c!355383)) b!2227338))

(assert (= (and b!2227338 c!355384) b!2227335))

(assert (= (and b!2227338 (not c!355384)) b!2227341))

(assert (= (and b!2227341 res!954827) b!2227333))

(assert (= (and b!2227341 c!355387) b!2227337))

(assert (= (and b!2227341 (not c!355387)) b!2227334))

(assert (= (and b!2227334 c!355386) b!2227344))

(assert (= (and b!2227334 (not c!355386)) b!2227340))

(assert (= (and b!2227340 c!355385) b!2227336))

(assert (= (and b!2227340 (not c!355385)) b!2227342))

(assert (= (or b!2227344 b!2227336) bm!133401))

(assert (= (or b!2227344 b!2227336) bm!133403))

(assert (= (or b!2227337 bm!133401) bm!133402))

(assert (= (or b!2227337 bm!133403) bm!133404))

(assert (= (or b!2227335 b!2227337) bm!133400))

(assert (= (or b!2227335 bm!133404) bm!133405))

(declare-fun m!2665990 () Bool)

(assert (=> b!2227333 m!2665990))

(declare-fun m!2665992 () Bool)

(assert (=> bm!133405 m!2665992))

(declare-fun m!2665994 () Bool)

(assert (=> bm!133400 m!2665994))

(declare-fun m!2665996 () Bool)

(assert (=> b!2227332 m!2665996))

(declare-fun m!2665998 () Bool)

(assert (=> d!664646 m!2665998))

(declare-fun m!2666000 () Bool)

(assert (=> d!664646 m!2666000))

(declare-fun m!2666002 () Bool)

(assert (=> d!664646 m!2666002))

(declare-fun m!2666004 () Bool)

(assert (=> bm!133402 m!2666004))

(declare-fun m!2666006 () Bool)

(assert (=> b!2227339 m!2666006))

(assert (=> bm!133383 d!664646))

(declare-fun d!664648 () Bool)

(declare-fun nullableFct!409 (Regex!6397) Bool)

(assert (=> d!664648 (= (nullable!1750 (regOne!13306 expr!64)) (nullableFct!409 (regOne!13306 expr!64)))))

(declare-fun bs!453554 () Bool)

(assert (= bs!453554 d!664648))

(declare-fun m!2666008 () Bool)

(assert (=> bs!453554 m!2666008))

(assert (=> b!2227285 d!664648))

(declare-fun b!2227363 () Bool)

(declare-fun res!954839 () Bool)

(declare-fun e!1423479 () Bool)

(assert (=> b!2227363 (=> (not res!954839) (not e!1423479))))

(declare-fun call!133418 () Bool)

(assert (=> b!2227363 (= res!954839 call!133418)))

(declare-fun e!1423482 () Bool)

(assert (=> b!2227363 (= e!1423482 e!1423479)))

(declare-fun b!2227364 () Bool)

(declare-fun e!1423483 () Bool)

(declare-fun e!1423477 () Bool)

(assert (=> b!2227364 (= e!1423483 e!1423477)))

(declare-fun res!954841 () Bool)

(assert (=> b!2227364 (=> (not res!954841) (not e!1423477))))

(assert (=> b!2227364 (= res!954841 call!133418)))

(declare-fun d!664650 () Bool)

(declare-fun res!954840 () Bool)

(declare-fun e!1423481 () Bool)

(assert (=> d!664650 (=> res!954840 e!1423481)))

(assert (=> d!664650 (= res!954840 ((_ is ElementMatch!6397) expr!64))))

(assert (=> d!664650 (= (validRegex!2374 expr!64) e!1423481)))

(declare-fun b!2227365 () Bool)

(declare-fun e!1423478 () Bool)

(assert (=> b!2227365 (= e!1423481 e!1423478)))

(declare-fun c!355393 () Bool)

(assert (=> b!2227365 (= c!355393 ((_ is Star!6397) expr!64))))

(declare-fun bm!133412 () Bool)

(declare-fun c!355392 () Bool)

(assert (=> bm!133412 (= call!133418 (validRegex!2374 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun b!2227366 () Bool)

(declare-fun call!133417 () Bool)

(assert (=> b!2227366 (= e!1423479 call!133417)))

(declare-fun b!2227367 () Bool)

(assert (=> b!2227367 (= e!1423477 call!133417)))

(declare-fun b!2227368 () Bool)

(declare-fun e!1423480 () Bool)

(assert (=> b!2227368 (= e!1423478 e!1423480)))

(declare-fun res!954842 () Bool)

(assert (=> b!2227368 (= res!954842 (not (nullable!1750 (reg!6726 expr!64))))))

(assert (=> b!2227368 (=> (not res!954842) (not e!1423480))))

(declare-fun b!2227369 () Bool)

(declare-fun res!954838 () Bool)

(assert (=> b!2227369 (=> res!954838 e!1423483)))

(assert (=> b!2227369 (= res!954838 (not ((_ is Concat!10735) expr!64)))))

(assert (=> b!2227369 (= e!1423482 e!1423483)))

(declare-fun bm!133413 () Bool)

(declare-fun call!133419 () Bool)

(assert (=> bm!133413 (= call!133417 call!133419)))

(declare-fun b!2227370 () Bool)

(assert (=> b!2227370 (= e!1423478 e!1423482)))

(assert (=> b!2227370 (= c!355392 ((_ is Union!6397) expr!64))))

(declare-fun bm!133414 () Bool)

(assert (=> bm!133414 (= call!133419 (validRegex!2374 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))))))

(declare-fun b!2227371 () Bool)

(assert (=> b!2227371 (= e!1423480 call!133419)))

(assert (= (and d!664650 (not res!954840)) b!2227365))

(assert (= (and b!2227365 c!355393) b!2227368))

(assert (= (and b!2227365 (not c!355393)) b!2227370))

(assert (= (and b!2227368 res!954842) b!2227371))

(assert (= (and b!2227370 c!355392) b!2227363))

(assert (= (and b!2227370 (not c!355392)) b!2227369))

(assert (= (and b!2227363 res!954839) b!2227366))

(assert (= (and b!2227369 (not res!954838)) b!2227364))

(assert (= (and b!2227364 res!954841) b!2227367))

(assert (= (or b!2227366 b!2227367) bm!133413))

(assert (= (or b!2227363 b!2227364) bm!133412))

(assert (= (or b!2227371 bm!133413) bm!133414))

(declare-fun m!2666010 () Bool)

(assert (=> bm!133412 m!2666010))

(declare-fun m!2666012 () Bool)

(assert (=> b!2227368 m!2666012))

(declare-fun m!2666014 () Bool)

(assert (=> bm!133414 m!2666014))

(assert (=> start!217314 d!664650))

(declare-fun d!664652 () Bool)

(declare-fun res!954845 () Bool)

(declare-fun e!1423486 () Bool)

(assert (=> d!664652 (=> (not res!954845) (not e!1423486))))

(assert (=> d!664652 (= res!954845 ((_ is HashMap!2945) (cache!3326 cacheDown!839)))))

(assert (=> d!664652 (= (inv!35533 cacheDown!839) e!1423486)))

(declare-fun b!2227374 () Bool)

(assert (=> b!2227374 (= e!1423486 (validCacheMapDown!272 (cache!3326 cacheDown!839)))))

(assert (= (and d!664652 res!954845) b!2227374))

(assert (=> b!2227374 m!2665984))

(assert (=> start!217314 d!664652))

(declare-fun d!664654 () Bool)

(declare-fun lambda!84211 () Int)

(declare-fun forall!5349 (List!26265 Int) Bool)

(assert (=> d!664654 (= (inv!35534 context!86) (forall!5349 (exprs!2445 context!86) lambda!84211))))

(declare-fun bs!453555 () Bool)

(assert (= bs!453555 d!664654))

(declare-fun m!2666016 () Bool)

(assert (=> bs!453555 m!2666016))

(assert (=> start!217314 d!664654))

(declare-fun d!664656 () Bool)

(assert (=> d!664656 (= (array_inv!3343 (_keys!3332 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) (bvsge (size!20438 (_keys!3332 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2227283 d!664656))

(declare-fun d!664658 () Bool)

(assert (=> d!664658 (= (array_inv!3344 (_values!3315 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) (bvsge (size!20439 (_values!3315 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2227283 d!664658))

(declare-fun d!664660 () Bool)

(declare-fun res!954852 () Bool)

(declare-fun e!1423491 () Bool)

(assert (=> d!664660 (=> (not res!954852) (not e!1423491))))

(declare-fun valid!2318 (MutableMap!2945) Bool)

(assert (=> d!664660 (= res!954852 (valid!2318 (cache!3326 (_2!15150 e!1423432))))))

(assert (=> d!664660 (= (validCacheMapDown!272 (cache!3326 (_2!15150 e!1423432))) e!1423491)))

(declare-fun b!2227381 () Bool)

(declare-fun res!954853 () Bool)

(assert (=> b!2227381 (=> (not res!954853) (not e!1423491))))

(declare-fun invariantList!358 (List!26266) Bool)

(declare-datatypes ((ListMap!793 0))(
  ( (ListMap!794 (toList!1324 List!26266)) )
))
(declare-fun map!5344 (MutableMap!2945) ListMap!793)

(assert (=> b!2227381 (= res!954853 (invariantList!358 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))))))

(declare-fun b!2227382 () Bool)

(declare-fun lambda!84214 () Int)

(declare-fun forall!5350 (List!26266 Int) Bool)

(assert (=> b!2227382 (= e!1423491 (forall!5350 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432)))) lambda!84214))))

(assert (= (and d!664660 res!954852) b!2227381))

(assert (= (and b!2227381 res!954853) b!2227382))

(declare-fun m!2666019 () Bool)

(assert (=> d!664660 m!2666019))

(declare-fun m!2666021 () Bool)

(assert (=> b!2227381 m!2666021))

(declare-fun m!2666023 () Bool)

(assert (=> b!2227381 m!2666023))

(assert (=> b!2227382 m!2666021))

(declare-fun m!2666025 () Bool)

(assert (=> b!2227382 m!2666025))

(assert (=> b!2227297 d!664660))

(declare-fun b!2227383 () Bool)

(declare-fun e!1423493 () tuple2!25492)

(assert (=> b!2227383 (= e!1423493 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) (ite c!355367 context!86 (Context!3891 call!133389)) true) cacheDown!839))))

(declare-fun b!2227384 () Bool)

(declare-fun e!1423492 () Bool)

(assert (=> b!2227384 (= e!1423492 (nullable!1750 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(declare-fun b!2227385 () Bool)

(declare-fun c!355398 () Bool)

(assert (=> b!2227385 (= c!355398 ((_ is Concat!10735) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun e!1423497 () tuple2!25492)

(declare-fun e!1423496 () tuple2!25492)

(assert (=> b!2227385 (= e!1423497 e!1423496)))

(declare-fun b!2227386 () Bool)

(declare-fun e!1423498 () tuple2!25492)

(declare-fun lt!830218 () tuple2!25492)

(declare-fun lt!830217 () tuple2!25492)

(assert (=> b!2227386 (= e!1423498 (tuple2!25493 ((_ map or) (_1!15150 lt!830218) (_1!15150 lt!830217)) (_2!15150 lt!830217)))))

(declare-fun call!133422 () tuple2!25492)

(assert (=> b!2227386 (= lt!830218 call!133422)))

(declare-fun call!133420 () tuple2!25492)

(assert (=> b!2227386 (= lt!830217 call!133420)))

(declare-fun b!2227387 () Bool)

(declare-fun lt!830219 () tuple2!25492)

(declare-fun call!133423 () tuple2!25492)

(assert (=> b!2227387 (= lt!830219 call!133423)))

(declare-fun e!1423495 () tuple2!25492)

(assert (=> b!2227387 (= e!1423495 (tuple2!25493 (_1!15150 lt!830219) (_2!15150 lt!830219)))))

(declare-fun b!2227388 () Bool)

(declare-fun lt!830216 () tuple2!25492)

(declare-fun call!133425 () tuple2!25492)

(assert (=> b!2227388 (= lt!830216 call!133425)))

(declare-fun lt!830214 () tuple2!25492)

(assert (=> b!2227388 (= lt!830214 call!133422)))

(assert (=> b!2227388 (= e!1423497 (tuple2!25493 ((_ map or) (_1!15150 lt!830214) (_1!15150 lt!830216)) (_2!15150 lt!830216)))))

(declare-fun b!2227389 () Bool)

(declare-fun c!355396 () Bool)

(assert (=> b!2227389 (= c!355396 ((_ is Union!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(assert (=> b!2227389 (= e!1423493 e!1423498)))

(declare-fun bm!133415 () Bool)

(declare-fun call!133424 () List!26265)

(assert (=> bm!133415 (= call!133422 (derivationStepZipperDownMem!14 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) a!1167 cacheDown!839))))

(declare-fun bm!133416 () Bool)

(declare-fun call!133421 () List!26265)

(assert (=> bm!133416 (= call!133421 call!133424)))

(declare-fun bm!133417 () Bool)

(declare-fun c!355399 () Bool)

(assert (=> bm!133417 (= call!133424 ($colon$colon!508 (exprs!2445 (ite c!355367 context!86 (Context!3891 call!133389))) (ite (or c!355399 c!355398) (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(declare-fun bm!133418 () Bool)

(assert (=> bm!133418 (= call!133423 call!133425)))

(declare-fun e!1423494 () tuple2!25492)

(declare-fun b!2227390 () Bool)

(declare-fun lt!830212 () tuple2!25492)

(assert (=> b!2227390 (= e!1423494 (tuple2!25493 (_1!15150 lt!830212) (_2!15151 (update!132 (_2!15150 lt!830212) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 (_1!15150 lt!830212)))))))

(declare-fun c!355395 () Bool)

(assert (=> b!2227390 (= c!355395 (and ((_ is ElementMatch!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (= (c!355369 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) a!1167)))))

(assert (=> b!2227390 (= lt!830212 e!1423493)))

(declare-fun b!2227391 () Bool)

(assert (=> b!2227391 (= e!1423496 e!1423495)))

(declare-fun c!355397 () Bool)

(assert (=> b!2227391 (= c!355397 ((_ is Star!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun b!2227392 () Bool)

(assert (=> b!2227392 (= e!1423498 e!1423497)))

(declare-fun res!954854 () Bool)

(assert (=> b!2227392 (= res!954854 ((_ is Concat!10735) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(assert (=> b!2227392 (=> (not res!954854) (not e!1423492))))

(assert (=> b!2227392 (= c!355399 e!1423492)))

(declare-fun bm!133419 () Bool)

(assert (=> bm!133419 (= call!133425 call!133420)))

(declare-fun b!2227393 () Bool)

(assert (=> b!2227393 (= e!1423495 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) cacheDown!839))))

(declare-fun bm!133420 () Bool)

(assert (=> bm!133420 (= call!133420 (derivationStepZipperDownMem!14 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) a!1167 (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))))))

(declare-fun d!664662 () Bool)

(declare-fun lt!830213 () tuple2!25492)

(assert (=> d!664662 (= (_1!15150 lt!830213) (derivationStepZipperDown!37 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167))))

(assert (=> d!664662 (= lt!830213 e!1423494)))

(declare-fun c!355394 () Bool)

(declare-fun lt!830215 () Option!5087)

(assert (=> d!664662 (= c!355394 ((_ is Some!5086) lt!830215))))

(assert (=> d!664662 (= lt!830215 (get!7878 cacheDown!839 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167))))

(assert (=> d!664662 (validRegex!2374 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))

(assert (=> d!664662 (= (derivationStepZipperDownMem!14 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 cacheDown!839) lt!830213)))

(declare-fun b!2227394 () Bool)

(assert (=> b!2227394 (= e!1423494 (tuple2!25493 (v!29748 lt!830215) cacheDown!839))))

(declare-fun b!2227395 () Bool)

(declare-fun lt!830211 () tuple2!25492)

(assert (=> b!2227395 (= e!1423496 (tuple2!25493 (_1!15150 lt!830211) (_2!15150 lt!830211)))))

(assert (=> b!2227395 (= lt!830211 call!133423)))

(assert (= (and d!664662 c!355394) b!2227394))

(assert (= (and d!664662 (not c!355394)) b!2227390))

(assert (= (and b!2227390 c!355395) b!2227383))

(assert (= (and b!2227390 (not c!355395)) b!2227389))

(assert (= (and b!2227389 c!355396) b!2227386))

(assert (= (and b!2227389 (not c!355396)) b!2227392))

(assert (= (and b!2227392 res!954854) b!2227384))

(assert (= (and b!2227392 c!355399) b!2227388))

(assert (= (and b!2227392 (not c!355399)) b!2227385))

(assert (= (and b!2227385 c!355398) b!2227395))

(assert (= (and b!2227385 (not c!355398)) b!2227391))

(assert (= (and b!2227391 c!355397) b!2227387))

(assert (= (and b!2227391 (not c!355397)) b!2227393))

(assert (= (or b!2227395 b!2227387) bm!133416))

(assert (= (or b!2227395 b!2227387) bm!133418))

(assert (= (or b!2227388 bm!133416) bm!133417))

(assert (= (or b!2227388 bm!133418) bm!133419))

(assert (= (or b!2227386 b!2227388) bm!133415))

(assert (= (or b!2227386 bm!133419) bm!133420))

(declare-fun m!2666027 () Bool)

(assert (=> b!2227384 m!2666027))

(declare-fun m!2666029 () Bool)

(assert (=> bm!133420 m!2666029))

(declare-fun m!2666031 () Bool)

(assert (=> bm!133415 m!2666031))

(declare-fun m!2666033 () Bool)

(assert (=> b!2227383 m!2666033))

(declare-fun m!2666035 () Bool)

(assert (=> d!664662 m!2666035))

(declare-fun m!2666037 () Bool)

(assert (=> d!664662 m!2666037))

(declare-fun m!2666039 () Bool)

(assert (=> d!664662 m!2666039))

(declare-fun m!2666041 () Bool)

(assert (=> bm!133417 m!2666041))

(declare-fun m!2666043 () Bool)

(assert (=> b!2227390 m!2666043))

(assert (=> bm!133386 d!664662))

(declare-fun d!664664 () Bool)

(assert (=> d!664664 (= ($colon$colon!508 (exprs!2445 context!86) (ite (or c!355364 c!355368) (regTwo!13306 expr!64) expr!64)) (Cons!26171 (ite (or c!355364 c!355368) (regTwo!13306 expr!64) expr!64) (exprs!2445 context!86)))))

(assert (=> bm!133384 d!664664))

(declare-fun b!2227400 () Bool)

(declare-fun e!1423501 () Bool)

(declare-fun tp!696584 () Bool)

(declare-fun tp!696585 () Bool)

(assert (=> b!2227400 (= e!1423501 (and tp!696584 tp!696585))))

(assert (=> b!2227295 (= tp!696576 e!1423501)))

(assert (= (and b!2227295 ((_ is Cons!26171) (exprs!2445 context!86))) b!2227400))

(declare-fun b!2227413 () Bool)

(declare-fun e!1423504 () Bool)

(declare-fun tp!696597 () Bool)

(assert (=> b!2227413 (= e!1423504 tp!696597)))

(declare-fun b!2227411 () Bool)

(assert (=> b!2227411 (= e!1423504 tp_is_empty!10019)))

(assert (=> b!2227286 (= tp!696567 e!1423504)))

(declare-fun b!2227412 () Bool)

(declare-fun tp!696598 () Bool)

(declare-fun tp!696596 () Bool)

(assert (=> b!2227412 (= e!1423504 (and tp!696598 tp!696596))))

(declare-fun b!2227414 () Bool)

(declare-fun tp!696600 () Bool)

(declare-fun tp!696599 () Bool)

(assert (=> b!2227414 (= e!1423504 (and tp!696600 tp!696599))))

(assert (= (and b!2227286 ((_ is ElementMatch!6397) (regOne!13307 expr!64))) b!2227411))

(assert (= (and b!2227286 ((_ is Concat!10735) (regOne!13307 expr!64))) b!2227412))

(assert (= (and b!2227286 ((_ is Star!6397) (regOne!13307 expr!64))) b!2227413))

(assert (= (and b!2227286 ((_ is Union!6397) (regOne!13307 expr!64))) b!2227414))

(declare-fun b!2227417 () Bool)

(declare-fun e!1423505 () Bool)

(declare-fun tp!696602 () Bool)

(assert (=> b!2227417 (= e!1423505 tp!696602)))

(declare-fun b!2227415 () Bool)

(assert (=> b!2227415 (= e!1423505 tp_is_empty!10019)))

(assert (=> b!2227286 (= tp!696568 e!1423505)))

(declare-fun b!2227416 () Bool)

(declare-fun tp!696603 () Bool)

(declare-fun tp!696601 () Bool)

(assert (=> b!2227416 (= e!1423505 (and tp!696603 tp!696601))))

(declare-fun b!2227418 () Bool)

(declare-fun tp!696605 () Bool)

(declare-fun tp!696604 () Bool)

(assert (=> b!2227418 (= e!1423505 (and tp!696605 tp!696604))))

(assert (= (and b!2227286 ((_ is ElementMatch!6397) (regTwo!13307 expr!64))) b!2227415))

(assert (= (and b!2227286 ((_ is Concat!10735) (regTwo!13307 expr!64))) b!2227416))

(assert (= (and b!2227286 ((_ is Star!6397) (regTwo!13307 expr!64))) b!2227417))

(assert (= (and b!2227286 ((_ is Union!6397) (regTwo!13307 expr!64))) b!2227418))

(declare-fun b!2227421 () Bool)

(declare-fun e!1423506 () Bool)

(declare-fun tp!696607 () Bool)

(assert (=> b!2227421 (= e!1423506 tp!696607)))

(declare-fun b!2227419 () Bool)

(assert (=> b!2227419 (= e!1423506 tp_is_empty!10019)))

(assert (=> b!2227298 (= tp!696570 e!1423506)))

(declare-fun b!2227420 () Bool)

(declare-fun tp!696608 () Bool)

(declare-fun tp!696606 () Bool)

(assert (=> b!2227420 (= e!1423506 (and tp!696608 tp!696606))))

(declare-fun b!2227422 () Bool)

(declare-fun tp!696610 () Bool)

(declare-fun tp!696609 () Bool)

(assert (=> b!2227422 (= e!1423506 (and tp!696610 tp!696609))))

(assert (= (and b!2227298 ((_ is ElementMatch!6397) (reg!6726 expr!64))) b!2227419))

(assert (= (and b!2227298 ((_ is Concat!10735) (reg!6726 expr!64))) b!2227420))

(assert (= (and b!2227298 ((_ is Star!6397) (reg!6726 expr!64))) b!2227421))

(assert (= (and b!2227298 ((_ is Union!6397) (reg!6726 expr!64))) b!2227422))

(declare-fun b!2227425 () Bool)

(declare-fun e!1423507 () Bool)

(declare-fun tp!696612 () Bool)

(assert (=> b!2227425 (= e!1423507 tp!696612)))

(declare-fun b!2227423 () Bool)

(assert (=> b!2227423 (= e!1423507 tp_is_empty!10019)))

(assert (=> b!2227290 (= tp!696577 e!1423507)))

(declare-fun b!2227424 () Bool)

(declare-fun tp!696613 () Bool)

(declare-fun tp!696611 () Bool)

(assert (=> b!2227424 (= e!1423507 (and tp!696613 tp!696611))))

(declare-fun b!2227426 () Bool)

(declare-fun tp!696615 () Bool)

(declare-fun tp!696614 () Bool)

(assert (=> b!2227426 (= e!1423507 (and tp!696615 tp!696614))))

(assert (= (and b!2227290 ((_ is ElementMatch!6397) (regOne!13306 expr!64))) b!2227423))

(assert (= (and b!2227290 ((_ is Concat!10735) (regOne!13306 expr!64))) b!2227424))

(assert (= (and b!2227290 ((_ is Star!6397) (regOne!13306 expr!64))) b!2227425))

(assert (= (and b!2227290 ((_ is Union!6397) (regOne!13306 expr!64))) b!2227426))

(declare-fun b!2227429 () Bool)

(declare-fun e!1423508 () Bool)

(declare-fun tp!696617 () Bool)

(assert (=> b!2227429 (= e!1423508 tp!696617)))

(declare-fun b!2227427 () Bool)

(assert (=> b!2227427 (= e!1423508 tp_is_empty!10019)))

(assert (=> b!2227290 (= tp!696571 e!1423508)))

(declare-fun b!2227428 () Bool)

(declare-fun tp!696618 () Bool)

(declare-fun tp!696616 () Bool)

(assert (=> b!2227428 (= e!1423508 (and tp!696618 tp!696616))))

(declare-fun b!2227430 () Bool)

(declare-fun tp!696620 () Bool)

(declare-fun tp!696619 () Bool)

(assert (=> b!2227430 (= e!1423508 (and tp!696620 tp!696619))))

(assert (= (and b!2227290 ((_ is ElementMatch!6397) (regTwo!13306 expr!64))) b!2227427))

(assert (= (and b!2227290 ((_ is Concat!10735) (regTwo!13306 expr!64))) b!2227428))

(assert (= (and b!2227290 ((_ is Star!6397) (regTwo!13306 expr!64))) b!2227429))

(assert (= (and b!2227290 ((_ is Union!6397) (regTwo!13306 expr!64))) b!2227430))

(declare-fun setIsEmpty!19922 () Bool)

(declare-fun setRes!19922 () Bool)

(assert (=> setIsEmpty!19922 setRes!19922))

(declare-fun e!1423516 () Bool)

(assert (=> b!2227283 (= tp!696574 e!1423516)))

(declare-fun b!2227439 () Bool)

(declare-fun e!1423517 () Bool)

(declare-fun tp!696631 () Bool)

(assert (=> b!2227439 (= e!1423517 tp!696631)))

(declare-fun b!2227440 () Bool)

(declare-fun e!1423515 () Bool)

(declare-fun tp!696632 () Bool)

(assert (=> b!2227440 (= e!1423515 tp!696632)))

(declare-fun tp!696635 () Bool)

(declare-fun b!2227441 () Bool)

(declare-fun tp!696634 () Bool)

(assert (=> b!2227441 (= e!1423516 (and tp!696634 (inv!35534 (_2!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))) e!1423515 tp_is_empty!10019 setRes!19922 tp!696635))))

(declare-fun condSetEmpty!19922 () Bool)

(assert (=> b!2227441 (= condSetEmpty!19922 (= (_2!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun tp!696633 () Bool)

(declare-fun setNonEmpty!19922 () Bool)

(declare-fun setElem!19922 () Context!3890)

(assert (=> setNonEmpty!19922 (= setRes!19922 (and tp!696633 (inv!35534 setElem!19922) e!1423517))))

(declare-fun setRest!19922 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19922 (= (_2!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19922 true) setRest!19922))))

(assert (= b!2227441 b!2227440))

(assert (= (and b!2227441 condSetEmpty!19922) setIsEmpty!19922))

(assert (= (and b!2227441 (not condSetEmpty!19922)) setNonEmpty!19922))

(assert (= setNonEmpty!19922 b!2227439))

(assert (= (and b!2227283 ((_ is Cons!26172) (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))) b!2227441))

(declare-fun m!2666045 () Bool)

(assert (=> b!2227441 m!2666045))

(declare-fun m!2666047 () Bool)

(assert (=> setNonEmpty!19922 m!2666047))

(declare-fun setIsEmpty!19923 () Bool)

(declare-fun setRes!19923 () Bool)

(assert (=> setIsEmpty!19923 setRes!19923))

(declare-fun e!1423519 () Bool)

(assert (=> b!2227283 (= tp!696572 e!1423519)))

(declare-fun b!2227442 () Bool)

(declare-fun e!1423520 () Bool)

(declare-fun tp!696636 () Bool)

(assert (=> b!2227442 (= e!1423520 tp!696636)))

(declare-fun b!2227443 () Bool)

(declare-fun e!1423518 () Bool)

(declare-fun tp!696637 () Bool)

(assert (=> b!2227443 (= e!1423518 tp!696637)))

(declare-fun b!2227444 () Bool)

(declare-fun tp!696640 () Bool)

(declare-fun tp!696639 () Bool)

(assert (=> b!2227444 (= e!1423519 (and tp!696639 (inv!35534 (_2!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))) e!1423518 tp_is_empty!10019 setRes!19923 tp!696640))))

(declare-fun condSetEmpty!19923 () Bool)

(assert (=> b!2227444 (= condSetEmpty!19923 (= (_2!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setElem!19923 () Context!3890)

(declare-fun tp!696638 () Bool)

(declare-fun setNonEmpty!19923 () Bool)

(assert (=> setNonEmpty!19923 (= setRes!19923 (and tp!696638 (inv!35534 setElem!19923) e!1423520))))

(declare-fun setRest!19923 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19923 (= (_2!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19923 true) setRest!19923))))

(assert (= b!2227444 b!2227443))

(assert (= (and b!2227444 condSetEmpty!19923) setIsEmpty!19923))

(assert (= (and b!2227444 (not condSetEmpty!19923)) setNonEmpty!19923))

(assert (= setNonEmpty!19923 b!2227442))

(assert (= (and b!2227283 ((_ is Cons!26172) (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))) b!2227444))

(declare-fun m!2666049 () Bool)

(assert (=> b!2227444 m!2666049))

(declare-fun m!2666051 () Bool)

(assert (=> setNonEmpty!19923 m!2666051))

(declare-fun setIsEmpty!19924 () Bool)

(declare-fun setRes!19924 () Bool)

(assert (=> setIsEmpty!19924 setRes!19924))

(declare-fun e!1423522 () Bool)

(assert (=> b!2227287 (= tp!696569 e!1423522)))

(declare-fun b!2227445 () Bool)

(declare-fun e!1423523 () Bool)

(declare-fun tp!696641 () Bool)

(assert (=> b!2227445 (= e!1423523 tp!696641)))

(declare-fun b!2227446 () Bool)

(declare-fun e!1423521 () Bool)

(declare-fun tp!696642 () Bool)

(assert (=> b!2227446 (= e!1423521 tp!696642)))

(declare-fun b!2227447 () Bool)

(declare-fun tp!696644 () Bool)

(declare-fun tp!696645 () Bool)

(assert (=> b!2227447 (= e!1423522 (and tp!696644 (inv!35534 (_2!15148 (_1!15149 (h!31573 mapDefault!14298)))) e!1423521 tp_is_empty!10019 setRes!19924 tp!696645))))

(declare-fun condSetEmpty!19924 () Bool)

(assert (=> b!2227447 (= condSetEmpty!19924 (= (_2!15149 (h!31573 mapDefault!14298)) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setNonEmpty!19924 () Bool)

(declare-fun setElem!19924 () Context!3890)

(declare-fun tp!696643 () Bool)

(assert (=> setNonEmpty!19924 (= setRes!19924 (and tp!696643 (inv!35534 setElem!19924) e!1423523))))

(declare-fun setRest!19924 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19924 (= (_2!15149 (h!31573 mapDefault!14298)) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19924 true) setRest!19924))))

(assert (= b!2227447 b!2227446))

(assert (= (and b!2227447 condSetEmpty!19924) setIsEmpty!19924))

(assert (= (and b!2227447 (not condSetEmpty!19924)) setNonEmpty!19924))

(assert (= setNonEmpty!19924 b!2227445))

(assert (= (and b!2227287 ((_ is Cons!26172) mapDefault!14298)) b!2227447))

(declare-fun m!2666053 () Bool)

(assert (=> b!2227447 m!2666053))

(declare-fun m!2666055 () Bool)

(assert (=> setNonEmpty!19924 m!2666055))

(declare-fun condMapEmpty!14301 () Bool)

(declare-fun mapDefault!14301 () List!26266)

(assert (=> mapNonEmpty!14298 (= condMapEmpty!14301 (= mapRest!14298 ((as const (Array (_ BitVec 32) List!26266)) mapDefault!14301)))))

(declare-fun e!1423538 () Bool)

(declare-fun mapRes!14301 () Bool)

(assert (=> mapNonEmpty!14298 (= tp!696575 (and e!1423538 mapRes!14301))))

(declare-fun mapNonEmpty!14301 () Bool)

(declare-fun tp!696669 () Bool)

(declare-fun e!1423541 () Bool)

(assert (=> mapNonEmpty!14301 (= mapRes!14301 (and tp!696669 e!1423541))))

(declare-fun mapKey!14301 () (_ BitVec 32))

(declare-fun mapValue!14301 () List!26266)

(declare-fun mapRest!14301 () (Array (_ BitVec 32) List!26266))

(assert (=> mapNonEmpty!14301 (= mapRest!14298 (store mapRest!14301 mapKey!14301 mapValue!14301))))

(declare-fun e!1423540 () Bool)

(declare-fun b!2227462 () Bool)

(declare-fun tp!696670 () Bool)

(declare-fun tp!696673 () Bool)

(declare-fun setRes!19930 () Bool)

(assert (=> b!2227462 (= e!1423538 (and tp!696673 (inv!35534 (_2!15148 (_1!15149 (h!31573 mapDefault!14301)))) e!1423540 tp_is_empty!10019 setRes!19930 tp!696670))))

(declare-fun condSetEmpty!19930 () Bool)

(assert (=> b!2227462 (= condSetEmpty!19930 (= (_2!15149 (h!31573 mapDefault!14301)) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun b!2227463 () Bool)

(declare-fun e!1423536 () Bool)

(declare-fun tp!696677 () Bool)

(assert (=> b!2227463 (= e!1423536 tp!696677)))

(declare-fun mapIsEmpty!14301 () Bool)

(assert (=> mapIsEmpty!14301 mapRes!14301))

(declare-fun b!2227464 () Bool)

(declare-fun e!1423537 () Bool)

(declare-fun tp!696668 () Bool)

(assert (=> b!2227464 (= e!1423537 tp!696668)))

(declare-fun setIsEmpty!19929 () Bool)

(assert (=> setIsEmpty!19929 setRes!19930))

(declare-fun b!2227465 () Bool)

(declare-fun tp!696674 () Bool)

(assert (=> b!2227465 (= e!1423540 tp!696674)))

(declare-fun setNonEmpty!19929 () Bool)

(declare-fun tp!696672 () Bool)

(declare-fun setElem!19929 () Context!3890)

(assert (=> setNonEmpty!19929 (= setRes!19930 (and tp!696672 (inv!35534 setElem!19929) e!1423536))))

(declare-fun setRest!19930 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19929 (= (_2!15149 (h!31573 mapDefault!14301)) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19929 true) setRest!19930))))

(declare-fun setRes!19929 () Bool)

(declare-fun e!1423539 () Bool)

(declare-fun setElem!19930 () Context!3890)

(declare-fun setNonEmpty!19930 () Bool)

(declare-fun tp!696675 () Bool)

(assert (=> setNonEmpty!19930 (= setRes!19929 (and tp!696675 (inv!35534 setElem!19930) e!1423539))))

(declare-fun setRest!19929 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19930 (= (_2!15149 (h!31573 mapValue!14301)) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19930 true) setRest!19929))))

(declare-fun setIsEmpty!19930 () Bool)

(assert (=> setIsEmpty!19930 setRes!19929))

(declare-fun tp!696678 () Bool)

(declare-fun b!2227466 () Bool)

(declare-fun tp!696671 () Bool)

(assert (=> b!2227466 (= e!1423541 (and tp!696671 (inv!35534 (_2!15148 (_1!15149 (h!31573 mapValue!14301)))) e!1423537 tp_is_empty!10019 setRes!19929 tp!696678))))

(declare-fun condSetEmpty!19929 () Bool)

(assert (=> b!2227466 (= condSetEmpty!19929 (= (_2!15149 (h!31573 mapValue!14301)) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun b!2227467 () Bool)

(declare-fun tp!696676 () Bool)

(assert (=> b!2227467 (= e!1423539 tp!696676)))

(assert (= (and mapNonEmpty!14298 condMapEmpty!14301) mapIsEmpty!14301))

(assert (= (and mapNonEmpty!14298 (not condMapEmpty!14301)) mapNonEmpty!14301))

(assert (= b!2227466 b!2227464))

(assert (= (and b!2227466 condSetEmpty!19929) setIsEmpty!19930))

(assert (= (and b!2227466 (not condSetEmpty!19929)) setNonEmpty!19930))

(assert (= setNonEmpty!19930 b!2227467))

(assert (= (and mapNonEmpty!14301 ((_ is Cons!26172) mapValue!14301)) b!2227466))

(assert (= b!2227462 b!2227465))

(assert (= (and b!2227462 condSetEmpty!19930) setIsEmpty!19929))

(assert (= (and b!2227462 (not condSetEmpty!19930)) setNonEmpty!19929))

(assert (= setNonEmpty!19929 b!2227463))

(assert (= (and mapNonEmpty!14298 ((_ is Cons!26172) mapDefault!14301)) b!2227462))

(declare-fun m!2666057 () Bool)

(assert (=> mapNonEmpty!14301 m!2666057))

(declare-fun m!2666059 () Bool)

(assert (=> b!2227466 m!2666059))

(declare-fun m!2666061 () Bool)

(assert (=> b!2227462 m!2666061))

(declare-fun m!2666063 () Bool)

(assert (=> setNonEmpty!19930 m!2666063))

(declare-fun m!2666065 () Bool)

(assert (=> setNonEmpty!19929 m!2666065))

(declare-fun setIsEmpty!19931 () Bool)

(declare-fun setRes!19931 () Bool)

(assert (=> setIsEmpty!19931 setRes!19931))

(declare-fun e!1423543 () Bool)

(assert (=> mapNonEmpty!14298 (= tp!696578 e!1423543)))

(declare-fun b!2227468 () Bool)

(declare-fun e!1423544 () Bool)

(declare-fun tp!696679 () Bool)

(assert (=> b!2227468 (= e!1423544 tp!696679)))

(declare-fun b!2227469 () Bool)

(declare-fun e!1423542 () Bool)

(declare-fun tp!696680 () Bool)

(assert (=> b!2227469 (= e!1423542 tp!696680)))

(declare-fun tp!696683 () Bool)

(declare-fun b!2227470 () Bool)

(declare-fun tp!696682 () Bool)

(assert (=> b!2227470 (= e!1423543 (and tp!696682 (inv!35534 (_2!15148 (_1!15149 (h!31573 mapValue!14298)))) e!1423542 tp_is_empty!10019 setRes!19931 tp!696683))))

(declare-fun condSetEmpty!19931 () Bool)

(assert (=> b!2227470 (= condSetEmpty!19931 (= (_2!15149 (h!31573 mapValue!14298)) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun tp!696681 () Bool)

(declare-fun setElem!19931 () Context!3890)

(declare-fun setNonEmpty!19931 () Bool)

(assert (=> setNonEmpty!19931 (= setRes!19931 (and tp!696681 (inv!35534 setElem!19931) e!1423544))))

(declare-fun setRest!19931 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19931 (= (_2!15149 (h!31573 mapValue!14298)) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19931 true) setRest!19931))))

(assert (= b!2227470 b!2227469))

(assert (= (and b!2227470 condSetEmpty!19931) setIsEmpty!19931))

(assert (= (and b!2227470 (not condSetEmpty!19931)) setNonEmpty!19931))

(assert (= setNonEmpty!19931 b!2227468))

(assert (= (and mapNonEmpty!14298 ((_ is Cons!26172) mapValue!14298)) b!2227470))

(declare-fun m!2666067 () Bool)

(assert (=> b!2227470 m!2666067))

(declare-fun m!2666069 () Bool)

(assert (=> setNonEmpty!19931 m!2666069))

(check-sat (not b!2227443) (not b!2227416) (not b!2227374) (not bm!133414) (not b!2227439) (not b!2227467) (not b!2227469) (not b!2227446) (not d!664662) (not d!664644) (not b!2227447) (not bm!133412) (not b!2227466) (not b!2227412) (not setNonEmpty!19931) (not b!2227442) (not b!2227463) (not b!2227444) (not b!2227333) (not setNonEmpty!19922) b_and!174591 (not b!2227420) b_and!174589 (not b_next!65307) (not setNonEmpty!19929) (not bm!133402) (not b!2227418) (not b!2227381) (not b!2227368) (not bm!133405) (not b!2227462) (not b!2227425) (not b!2227384) (not b!2227468) (not b!2227421) (not setNonEmpty!19923) (not b!2227465) (not b!2227417) (not bm!133415) (not d!664648) (not b!2227440) (not b!2227305) (not bm!133420) (not bm!133400) (not b!2227430) (not b!2227414) (not setNonEmpty!19930) (not b!2227422) (not d!664654) (not b!2227400) (not setNonEmpty!19924) (not b!2227424) (not b!2227470) (not b!2227441) (not b!2227445) (not mapNonEmpty!14301) (not b!2227429) (not b!2227390) (not b!2227428) (not b!2227426) (not b!2227464) (not b_next!65305) (not d!664660) (not b!2227339) (not bm!133417) (not d!664646) (not b!2227413) tp_is_empty!10019 (not b!2227382))
(check-sat b_and!174589 b_and!174591 (not b_next!65307) (not b_next!65305))
(get-model)

(declare-fun d!664666 () Bool)

(assert (=> d!664666 (= (get!7879 lt!830183) (v!29748 lt!830183))))

(assert (=> b!2227305 d!664666))

(declare-fun b!2227493 () Bool)

(declare-fun e!1423558 () (InoxSet Context!3890))

(declare-fun call!133440 () (InoxSet Context!3890))

(declare-fun call!133442 () (InoxSet Context!3890))

(assert (=> b!2227493 (= e!1423558 ((_ map or) call!133440 call!133442))))

(declare-fun d!664668 () Bool)

(declare-fun c!355411 () Bool)

(assert (=> d!664668 (= c!355411 (and ((_ is ElementMatch!6397) expr!64) (= (c!355369 expr!64) a!1167)))))

(declare-fun e!1423562 () (InoxSet Context!3890))

(assert (=> d!664668 (= (derivationStepZipperDown!37 expr!64 context!86 a!1167) e!1423562)))

(declare-fun b!2227494 () Bool)

(declare-fun e!1423557 () Bool)

(assert (=> b!2227494 (= e!1423557 (nullable!1750 (regOne!13306 expr!64)))))

(declare-fun b!2227495 () Bool)

(declare-fun c!355413 () Bool)

(assert (=> b!2227495 (= c!355413 ((_ is Star!6397) expr!64))))

(declare-fun e!1423559 () (InoxSet Context!3890))

(declare-fun e!1423560 () (InoxSet Context!3890))

(assert (=> b!2227495 (= e!1423559 e!1423560)))

(declare-fun bm!133433 () Bool)

(declare-fun call!133443 () (InoxSet Context!3890))

(assert (=> bm!133433 (= call!133443 call!133442)))

(declare-fun b!2227496 () Bool)

(assert (=> b!2227496 (= e!1423560 ((as const (Array Context!3890 Bool)) false))))

(declare-fun b!2227497 () Bool)

(declare-fun call!133439 () (InoxSet Context!3890))

(assert (=> b!2227497 (= e!1423560 call!133439)))

(declare-fun b!2227498 () Bool)

(declare-fun e!1423561 () (InoxSet Context!3890))

(assert (=> b!2227498 (= e!1423561 ((_ map or) call!133440 call!133443))))

(declare-fun b!2227499 () Bool)

(assert (=> b!2227499 (= e!1423562 (store ((as const (Array Context!3890 Bool)) false) context!86 true))))

(declare-fun b!2227500 () Bool)

(declare-fun c!355410 () Bool)

(assert (=> b!2227500 (= c!355410 e!1423557)))

(declare-fun res!954857 () Bool)

(assert (=> b!2227500 (=> (not res!954857) (not e!1423557))))

(assert (=> b!2227500 (= res!954857 ((_ is Concat!10735) expr!64))))

(assert (=> b!2227500 (= e!1423558 e!1423561)))

(declare-fun bm!133434 () Bool)

(declare-fun call!133441 () List!26265)

(declare-fun call!133438 () List!26265)

(assert (=> bm!133434 (= call!133441 call!133438)))

(declare-fun b!2227501 () Bool)

(assert (=> b!2227501 (= e!1423562 e!1423558)))

(declare-fun c!355412 () Bool)

(assert (=> b!2227501 (= c!355412 ((_ is Union!6397) expr!64))))

(declare-fun bm!133435 () Bool)

(assert (=> bm!133435 (= call!133440 (derivationStepZipperDown!37 (ite c!355412 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355412 context!86 (Context!3891 call!133438)) a!1167))))

(declare-fun c!355414 () Bool)

(declare-fun bm!133436 () Bool)

(assert (=> bm!133436 (= call!133438 ($colon$colon!508 (exprs!2445 context!86) (ite (or c!355410 c!355414) (regTwo!13306 expr!64) expr!64)))))

(declare-fun b!2227502 () Bool)

(assert (=> b!2227502 (= e!1423561 e!1423559)))

(assert (=> b!2227502 (= c!355414 ((_ is Concat!10735) expr!64))))

(declare-fun bm!133437 () Bool)

(assert (=> bm!133437 (= call!133439 call!133443)))

(declare-fun b!2227503 () Bool)

(assert (=> b!2227503 (= e!1423559 call!133439)))

(declare-fun bm!133438 () Bool)

(assert (=> bm!133438 (= call!133442 (derivationStepZipperDown!37 (ite c!355412 (regTwo!13307 expr!64) (ite c!355410 (regTwo!13306 expr!64) (ite c!355414 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355412 c!355410) context!86 (Context!3891 call!133441)) a!1167))))

(assert (= (and d!664668 c!355411) b!2227499))

(assert (= (and d!664668 (not c!355411)) b!2227501))

(assert (= (and b!2227501 c!355412) b!2227493))

(assert (= (and b!2227501 (not c!355412)) b!2227500))

(assert (= (and b!2227500 res!954857) b!2227494))

(assert (= (and b!2227500 c!355410) b!2227498))

(assert (= (and b!2227500 (not c!355410)) b!2227502))

(assert (= (and b!2227502 c!355414) b!2227503))

(assert (= (and b!2227502 (not c!355414)) b!2227495))

(assert (= (and b!2227495 c!355413) b!2227497))

(assert (= (and b!2227495 (not c!355413)) b!2227496))

(assert (= (or b!2227503 b!2227497) bm!133434))

(assert (= (or b!2227503 b!2227497) bm!133437))

(assert (= (or b!2227498 bm!133434) bm!133436))

(assert (= (or b!2227498 bm!133437) bm!133433))

(assert (= (or b!2227493 bm!133433) bm!133438))

(assert (= (or b!2227493 b!2227498) bm!133435))

(declare-fun m!2666071 () Bool)

(assert (=> bm!133436 m!2666071))

(declare-fun m!2666073 () Bool)

(assert (=> bm!133438 m!2666073))

(assert (=> b!2227494 m!2665974))

(assert (=> b!2227499 m!2665962))

(declare-fun m!2666075 () Bool)

(assert (=> bm!133435 m!2666075))

(assert (=> b!2227305 d!664668))

(declare-fun bs!453556 () Bool)

(declare-fun d!664670 () Bool)

(assert (= bs!453556 (and d!664670 d!664654)))

(declare-fun lambda!84215 () Int)

(assert (=> bs!453556 (= lambda!84215 lambda!84211)))

(assert (=> d!664670 (= (inv!35534 setElem!19931) (forall!5349 (exprs!2445 setElem!19931) lambda!84215))))

(declare-fun bs!453557 () Bool)

(assert (= bs!453557 d!664670))

(declare-fun m!2666077 () Bool)

(assert (=> bs!453557 m!2666077))

(assert (=> setNonEmpty!19931 d!664670))

(declare-fun b!2227504 () Bool)

(declare-fun e!1423564 () tuple2!25492)

(assert (=> b!2227504 (= e!1423564 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) true) (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))))))

(declare-fun e!1423563 () Bool)

(declare-fun b!2227505 () Bool)

(assert (=> b!2227505 (= e!1423563 (nullable!1750 (regOne!13306 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))))

(declare-fun b!2227506 () Bool)

(declare-fun c!355419 () Bool)

(assert (=> b!2227506 (= c!355419 ((_ is Concat!10735) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))))

(declare-fun e!1423568 () tuple2!25492)

(declare-fun e!1423567 () tuple2!25492)

(assert (=> b!2227506 (= e!1423568 e!1423567)))

(declare-fun b!2227507 () Bool)

(declare-fun e!1423569 () tuple2!25492)

(declare-fun lt!830227 () tuple2!25492)

(declare-fun lt!830226 () tuple2!25492)

(assert (=> b!2227507 (= e!1423569 (tuple2!25493 ((_ map or) (_1!15150 lt!830227) (_1!15150 lt!830226)) (_2!15150 lt!830226)))))

(declare-fun call!133446 () tuple2!25492)

(assert (=> b!2227507 (= lt!830227 call!133446)))

(declare-fun call!133444 () tuple2!25492)

(assert (=> b!2227507 (= lt!830226 call!133444)))

(declare-fun b!2227508 () Bool)

(declare-fun lt!830228 () tuple2!25492)

(declare-fun call!133447 () tuple2!25492)

(assert (=> b!2227508 (= lt!830228 call!133447)))

(declare-fun e!1423566 () tuple2!25492)

(assert (=> b!2227508 (= e!1423566 (tuple2!25493 (_1!15150 lt!830228) (_2!15150 lt!830228)))))

(declare-fun b!2227509 () Bool)

(declare-fun lt!830225 () tuple2!25492)

(declare-fun call!133449 () tuple2!25492)

(assert (=> b!2227509 (= lt!830225 call!133449)))

(declare-fun lt!830223 () tuple2!25492)

(assert (=> b!2227509 (= lt!830223 call!133446)))

(assert (=> b!2227509 (= e!1423568 (tuple2!25493 ((_ map or) (_1!15150 lt!830223) (_1!15150 lt!830225)) (_2!15150 lt!830225)))))

(declare-fun c!355417 () Bool)

(declare-fun b!2227510 () Bool)

(assert (=> b!2227510 (= c!355417 ((_ is Union!6397) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))))

(assert (=> b!2227510 (= e!1423564 e!1423569)))

(declare-fun call!133448 () List!26265)

(declare-fun bm!133439 () Bool)

(assert (=> bm!133439 (= call!133446 (derivationStepZipperDownMem!14 (ite c!355417 (regOne!13307 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) (regOne!13306 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))) (ite c!355417 (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) (Context!3891 call!133448)) a!1167 (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))))))

(declare-fun bm!133440 () Bool)

(declare-fun call!133445 () List!26265)

(assert (=> bm!133440 (= call!133445 call!133448)))

(declare-fun bm!133441 () Bool)

(declare-fun c!355420 () Bool)

(assert (=> bm!133441 (= call!133448 ($colon$colon!508 (exprs!2445 (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421))) (ite (or c!355420 c!355419) (regTwo!13306 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))))

(declare-fun bm!133442 () Bool)

(assert (=> bm!133442 (= call!133447 call!133449)))

(declare-fun e!1423565 () tuple2!25492)

(declare-fun lt!830221 () tuple2!25492)

(declare-fun b!2227511 () Bool)

(assert (=> b!2227511 (= e!1423565 (tuple2!25493 (_1!15150 lt!830221) (_2!15151 (update!132 (_2!15150 lt!830221) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) a!1167 (_1!15150 lt!830221)))))))

(declare-fun c!355416 () Bool)

(assert (=> b!2227511 (= c!355416 (and ((_ is ElementMatch!6397) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) (= (c!355369 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) a!1167)))))

(assert (=> b!2227511 (= lt!830221 e!1423564)))

(declare-fun b!2227512 () Bool)

(assert (=> b!2227512 (= e!1423567 e!1423566)))

(declare-fun c!355418 () Bool)

(assert (=> b!2227512 (= c!355418 ((_ is Star!6397) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))))

(declare-fun b!2227513 () Bool)

(assert (=> b!2227513 (= e!1423569 e!1423568)))

(declare-fun res!954858 () Bool)

(assert (=> b!2227513 (= res!954858 ((_ is Concat!10735) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))))

(assert (=> b!2227513 (=> (not res!954858) (not e!1423563))))

(assert (=> b!2227513 (= c!355420 e!1423563)))

(declare-fun bm!133443 () Bool)

(assert (=> bm!133443 (= call!133449 call!133444)))

(declare-fun b!2227514 () Bool)

(assert (=> b!2227514 (= e!1423566 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))))))

(declare-fun bm!133444 () Bool)

(assert (=> bm!133444 (= call!133444 (derivationStepZipperDownMem!14 (ite c!355417 (regTwo!13307 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) (ite c!355420 (regTwo!13306 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) (ite c!355419 (regOne!13306 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))) (reg!6726 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))) (ite (or c!355417 c!355420) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) (Context!3891 call!133445)) a!1167 (ite c!355417 (_2!15150 lt!830227) (ite c!355420 (_2!15150 lt!830223) (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))))))))

(declare-fun lt!830222 () tuple2!25492)

(declare-fun d!664672 () Bool)

(assert (=> d!664672 (= (_1!15150 lt!830222) (derivationStepZipperDown!37 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) a!1167))))

(assert (=> d!664672 (= lt!830222 e!1423565)))

(declare-fun c!355415 () Bool)

(declare-fun lt!830224 () Option!5087)

(assert (=> d!664672 (= c!355415 ((_ is Some!5086) lt!830224))))

(assert (=> d!664672 (= lt!830224 (get!7878 (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839)) (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) a!1167))))

(assert (=> d!664672 (validRegex!2374 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))

(assert (=> d!664672 (= (derivationStepZipperDownMem!14 (ite c!355396 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355399 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355398 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite (or c!355396 c!355399) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133421)) a!1167 (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))) lt!830222)))

(declare-fun b!2227515 () Bool)

(assert (=> b!2227515 (= e!1423565 (tuple2!25493 (v!29748 lt!830224) (ite c!355396 (_2!15150 lt!830218) (ite c!355399 (_2!15150 lt!830214) cacheDown!839))))))

(declare-fun b!2227516 () Bool)

(declare-fun lt!830220 () tuple2!25492)

(assert (=> b!2227516 (= e!1423567 (tuple2!25493 (_1!15150 lt!830220) (_2!15150 lt!830220)))))

(assert (=> b!2227516 (= lt!830220 call!133447)))

(assert (= (and d!664672 c!355415) b!2227515))

(assert (= (and d!664672 (not c!355415)) b!2227511))

(assert (= (and b!2227511 c!355416) b!2227504))

(assert (= (and b!2227511 (not c!355416)) b!2227510))

(assert (= (and b!2227510 c!355417) b!2227507))

(assert (= (and b!2227510 (not c!355417)) b!2227513))

(assert (= (and b!2227513 res!954858) b!2227505))

(assert (= (and b!2227513 c!355420) b!2227509))

(assert (= (and b!2227513 (not c!355420)) b!2227506))

(assert (= (and b!2227506 c!355419) b!2227516))

(assert (= (and b!2227506 (not c!355419)) b!2227512))

(assert (= (and b!2227512 c!355418) b!2227508))

(assert (= (and b!2227512 (not c!355418)) b!2227514))

(assert (= (or b!2227516 b!2227508) bm!133440))

(assert (= (or b!2227516 b!2227508) bm!133442))

(assert (= (or b!2227509 bm!133440) bm!133441))

(assert (= (or b!2227509 bm!133442) bm!133443))

(assert (= (or b!2227507 b!2227509) bm!133439))

(assert (= (or b!2227507 bm!133443) bm!133444))

(declare-fun m!2666079 () Bool)

(assert (=> b!2227505 m!2666079))

(declare-fun m!2666081 () Bool)

(assert (=> bm!133444 m!2666081))

(declare-fun m!2666083 () Bool)

(assert (=> bm!133439 m!2666083))

(declare-fun m!2666085 () Bool)

(assert (=> b!2227504 m!2666085))

(declare-fun m!2666087 () Bool)

(assert (=> d!664672 m!2666087))

(declare-fun m!2666089 () Bool)

(assert (=> d!664672 m!2666089))

(declare-fun m!2666091 () Bool)

(assert (=> d!664672 m!2666091))

(declare-fun m!2666093 () Bool)

(assert (=> bm!133441 m!2666093))

(declare-fun m!2666095 () Bool)

(assert (=> b!2227511 m!2666095))

(assert (=> bm!133420 d!664672))

(declare-fun bs!453558 () Bool)

(declare-fun d!664674 () Bool)

(assert (= bs!453558 (and d!664674 d!664654)))

(declare-fun lambda!84216 () Int)

(assert (=> bs!453558 (= lambda!84216 lambda!84211)))

(declare-fun bs!453559 () Bool)

(assert (= bs!453559 (and d!664674 d!664670)))

(assert (=> bs!453559 (= lambda!84216 lambda!84215)))

(assert (=> d!664674 (= (inv!35534 (_2!15148 (_1!15149 (h!31573 mapValue!14298)))) (forall!5349 (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapValue!14298)))) lambda!84216))))

(declare-fun bs!453560 () Bool)

(assert (= bs!453560 d!664674))

(declare-fun m!2666097 () Bool)

(assert (=> bs!453560 m!2666097))

(assert (=> b!2227470 d!664674))

(declare-fun b!2227517 () Bool)

(declare-fun e!1423571 () tuple2!25492)

(assert (=> b!2227517 (= e!1423571 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) true) (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))

(declare-fun b!2227518 () Bool)

(declare-fun e!1423570 () Bool)

(assert (=> b!2227518 (= e!1423570 (nullable!1750 (regOne!13306 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))))

(declare-fun b!2227519 () Bool)

(declare-fun c!355425 () Bool)

(assert (=> b!2227519 (= c!355425 ((_ is Concat!10735) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))))

(declare-fun e!1423575 () tuple2!25492)

(declare-fun e!1423574 () tuple2!25492)

(assert (=> b!2227519 (= e!1423575 e!1423574)))

(declare-fun b!2227520 () Bool)

(declare-fun e!1423576 () tuple2!25492)

(declare-fun lt!830236 () tuple2!25492)

(declare-fun lt!830235 () tuple2!25492)

(assert (=> b!2227520 (= e!1423576 (tuple2!25493 ((_ map or) (_1!15150 lt!830236) (_1!15150 lt!830235)) (_2!15150 lt!830235)))))

(declare-fun call!133452 () tuple2!25492)

(assert (=> b!2227520 (= lt!830236 call!133452)))

(declare-fun call!133450 () tuple2!25492)

(assert (=> b!2227520 (= lt!830235 call!133450)))

(declare-fun b!2227521 () Bool)

(declare-fun lt!830237 () tuple2!25492)

(declare-fun call!133453 () tuple2!25492)

(assert (=> b!2227521 (= lt!830237 call!133453)))

(declare-fun e!1423573 () tuple2!25492)

(assert (=> b!2227521 (= e!1423573 (tuple2!25493 (_1!15150 lt!830237) (_2!15150 lt!830237)))))

(declare-fun b!2227522 () Bool)

(declare-fun lt!830234 () tuple2!25492)

(declare-fun call!133455 () tuple2!25492)

(assert (=> b!2227522 (= lt!830234 call!133455)))

(declare-fun lt!830232 () tuple2!25492)

(assert (=> b!2227522 (= lt!830232 call!133452)))

(assert (=> b!2227522 (= e!1423575 (tuple2!25493 ((_ map or) (_1!15150 lt!830232) (_1!15150 lt!830234)) (_2!15150 lt!830234)))))

(declare-fun b!2227523 () Bool)

(declare-fun c!355423 () Bool)

(assert (=> b!2227523 (= c!355423 ((_ is Union!6397) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))))

(assert (=> b!2227523 (= e!1423571 e!1423576)))

(declare-fun call!133454 () List!26265)

(declare-fun bm!133445 () Bool)

(assert (=> bm!133445 (= call!133452 (derivationStepZipperDownMem!14 (ite c!355423 (regOne!13307 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) (regOne!13306 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))) (ite c!355423 (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) (Context!3891 call!133454)) a!1167 (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))

(declare-fun bm!133446 () Bool)

(declare-fun call!133451 () List!26265)

(assert (=> bm!133446 (= call!133451 call!133454)))

(declare-fun c!355426 () Bool)

(declare-fun bm!133447 () Bool)

(assert (=> bm!133447 (= call!133454 ($colon$colon!508 (exprs!2445 (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406))) (ite (or c!355426 c!355425) (regTwo!13306 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))))

(declare-fun bm!133448 () Bool)

(assert (=> bm!133448 (= call!133453 call!133455)))

(declare-fun lt!830230 () tuple2!25492)

(declare-fun b!2227524 () Bool)

(declare-fun e!1423572 () tuple2!25492)

(assert (=> b!2227524 (= e!1423572 (tuple2!25493 (_1!15150 lt!830230) (_2!15151 (update!132 (_2!15150 lt!830230) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) a!1167 (_1!15150 lt!830230)))))))

(declare-fun c!355422 () Bool)

(assert (=> b!2227524 (= c!355422 (and ((_ is ElementMatch!6397) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) (= (c!355369 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) a!1167)))))

(assert (=> b!2227524 (= lt!830230 e!1423571)))

(declare-fun b!2227525 () Bool)

(assert (=> b!2227525 (= e!1423574 e!1423573)))

(declare-fun c!355424 () Bool)

(assert (=> b!2227525 (= c!355424 ((_ is Star!6397) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))))

(declare-fun b!2227526 () Bool)

(assert (=> b!2227526 (= e!1423576 e!1423575)))

(declare-fun res!954859 () Bool)

(assert (=> b!2227526 (= res!954859 ((_ is Concat!10735) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))))

(assert (=> b!2227526 (=> (not res!954859) (not e!1423570))))

(assert (=> b!2227526 (= c!355426 e!1423570)))

(declare-fun bm!133449 () Bool)

(assert (=> bm!133449 (= call!133455 call!133450)))

(declare-fun b!2227527 () Bool)

(assert (=> b!2227527 (= e!1423573 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))

(declare-fun bm!133450 () Bool)

(assert (=> bm!133450 (= call!133450 (derivationStepZipperDownMem!14 (ite c!355423 (regTwo!13307 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) (ite c!355426 (regTwo!13306 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) (ite c!355425 (regOne!13306 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))) (reg!6726 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))) (ite (or c!355423 c!355426) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) (Context!3891 call!133451)) a!1167 (ite c!355423 (_2!15150 lt!830236) (ite c!355426 (_2!15150 lt!830232) (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))))

(declare-fun d!664676 () Bool)

(declare-fun lt!830231 () tuple2!25492)

(assert (=> d!664676 (= (_1!15150 lt!830231) (derivationStepZipperDown!37 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) a!1167))))

(assert (=> d!664676 (= lt!830231 e!1423572)))

(declare-fun c!355421 () Bool)

(declare-fun lt!830233 () Option!5087)

(assert (=> d!664676 (= c!355421 ((_ is Some!5086) lt!830233))))

(assert (=> d!664676 (= lt!830233 (get!7878 (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839)))) (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) a!1167))))

(assert (=> d!664676 (validRegex!2374 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))

(assert (=> d!664676 (= (derivationStepZipperDownMem!14 (ite c!355384 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355387 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355386 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite (or c!355384 c!355387) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133406)) a!1167 (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))) lt!830231)))

(declare-fun b!2227528 () Bool)

(assert (=> b!2227528 (= e!1423572 (tuple2!25493 (v!29748 lt!830233) (ite c!355384 (_2!15150 lt!830209) (ite c!355387 (_2!15150 lt!830205) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))

(declare-fun b!2227529 () Bool)

(declare-fun lt!830229 () tuple2!25492)

(assert (=> b!2227529 (= e!1423574 (tuple2!25493 (_1!15150 lt!830229) (_2!15150 lt!830229)))))

(assert (=> b!2227529 (= lt!830229 call!133453)))

(assert (= (and d!664676 c!355421) b!2227528))

(assert (= (and d!664676 (not c!355421)) b!2227524))

(assert (= (and b!2227524 c!355422) b!2227517))

(assert (= (and b!2227524 (not c!355422)) b!2227523))

(assert (= (and b!2227523 c!355423) b!2227520))

(assert (= (and b!2227523 (not c!355423)) b!2227526))

(assert (= (and b!2227526 res!954859) b!2227518))

(assert (= (and b!2227526 c!355426) b!2227522))

(assert (= (and b!2227526 (not c!355426)) b!2227519))

(assert (= (and b!2227519 c!355425) b!2227529))

(assert (= (and b!2227519 (not c!355425)) b!2227525))

(assert (= (and b!2227525 c!355424) b!2227521))

(assert (= (and b!2227525 (not c!355424)) b!2227527))

(assert (= (or b!2227529 b!2227521) bm!133446))

(assert (= (or b!2227529 b!2227521) bm!133448))

(assert (= (or b!2227522 bm!133446) bm!133447))

(assert (= (or b!2227522 bm!133448) bm!133449))

(assert (= (or b!2227520 b!2227522) bm!133445))

(assert (= (or b!2227520 bm!133449) bm!133450))

(declare-fun m!2666099 () Bool)

(assert (=> b!2227518 m!2666099))

(declare-fun m!2666101 () Bool)

(assert (=> bm!133450 m!2666101))

(declare-fun m!2666103 () Bool)

(assert (=> bm!133445 m!2666103))

(declare-fun m!2666105 () Bool)

(assert (=> b!2227517 m!2666105))

(declare-fun m!2666107 () Bool)

(assert (=> d!664676 m!2666107))

(declare-fun m!2666109 () Bool)

(assert (=> d!664676 m!2666109))

(declare-fun m!2666111 () Bool)

(assert (=> d!664676 m!2666111))

(declare-fun m!2666113 () Bool)

(assert (=> bm!133447 m!2666113))

(declare-fun m!2666115 () Bool)

(assert (=> b!2227524 m!2666115))

(assert (=> bm!133405 d!664676))

(declare-fun b!2227544 () Bool)

(declare-fun e!1423591 () Bool)

(declare-fun e!1423592 () Bool)

(assert (=> b!2227544 (= e!1423591 e!1423592)))

(declare-fun res!954872 () Bool)

(declare-fun call!133461 () Bool)

(assert (=> b!2227544 (= res!954872 call!133461)))

(assert (=> b!2227544 (=> (not res!954872) (not e!1423592))))

(declare-fun b!2227545 () Bool)

(declare-fun call!133460 () Bool)

(assert (=> b!2227545 (= e!1423592 call!133460)))

(declare-fun d!664678 () Bool)

(declare-fun res!954870 () Bool)

(declare-fun e!1423593 () Bool)

(assert (=> d!664678 (=> res!954870 e!1423593)))

(assert (=> d!664678 (= res!954870 ((_ is EmptyExpr!6397) (regOne!13306 expr!64)))))

(assert (=> d!664678 (= (nullableFct!409 (regOne!13306 expr!64)) e!1423593)))

(declare-fun bm!133455 () Bool)

(declare-fun c!355429 () Bool)

(assert (=> bm!133455 (= call!133461 (nullable!1750 (ite c!355429 (regOne!13307 (regOne!13306 expr!64)) (regOne!13306 (regOne!13306 expr!64)))))))

(declare-fun b!2227546 () Bool)

(declare-fun e!1423594 () Bool)

(assert (=> b!2227546 (= e!1423591 e!1423594)))

(declare-fun res!954871 () Bool)

(assert (=> b!2227546 (= res!954871 call!133461)))

(assert (=> b!2227546 (=> res!954871 e!1423594)))

(declare-fun b!2227547 () Bool)

(declare-fun e!1423589 () Bool)

(assert (=> b!2227547 (= e!1423593 e!1423589)))

(declare-fun res!954874 () Bool)

(assert (=> b!2227547 (=> (not res!954874) (not e!1423589))))

(assert (=> b!2227547 (= res!954874 (and (not ((_ is EmptyLang!6397) (regOne!13306 expr!64))) (not ((_ is ElementMatch!6397) (regOne!13306 expr!64)))))))

(declare-fun bm!133456 () Bool)

(assert (=> bm!133456 (= call!133460 (nullable!1750 (ite c!355429 (regTwo!13307 (regOne!13306 expr!64)) (regTwo!13306 (regOne!13306 expr!64)))))))

(declare-fun b!2227548 () Bool)

(declare-fun e!1423590 () Bool)

(assert (=> b!2227548 (= e!1423589 e!1423590)))

(declare-fun res!954873 () Bool)

(assert (=> b!2227548 (=> res!954873 e!1423590)))

(assert (=> b!2227548 (= res!954873 ((_ is Star!6397) (regOne!13306 expr!64)))))

(declare-fun b!2227549 () Bool)

(assert (=> b!2227549 (= e!1423590 e!1423591)))

(assert (=> b!2227549 (= c!355429 ((_ is Union!6397) (regOne!13306 expr!64)))))

(declare-fun b!2227550 () Bool)

(assert (=> b!2227550 (= e!1423594 call!133460)))

(assert (= (and d!664678 (not res!954870)) b!2227547))

(assert (= (and b!2227547 res!954874) b!2227548))

(assert (= (and b!2227548 (not res!954873)) b!2227549))

(assert (= (and b!2227549 c!355429) b!2227546))

(assert (= (and b!2227549 (not c!355429)) b!2227544))

(assert (= (and b!2227546 (not res!954871)) b!2227550))

(assert (= (and b!2227544 res!954872) b!2227545))

(assert (= (or b!2227550 b!2227545) bm!133456))

(assert (= (or b!2227546 b!2227544) bm!133455))

(declare-fun m!2666117 () Bool)

(assert (=> bm!133455 m!2666117))

(declare-fun m!2666119 () Bool)

(assert (=> bm!133456 m!2666119))

(assert (=> d!664648 d!664678))

(declare-fun d!664680 () Bool)

(declare-fun res!954879 () Bool)

(declare-fun e!1423597 () Bool)

(assert (=> d!664680 (=> (not res!954879) (not e!1423597))))

(declare-fun valid!2319 (MutLongMap!3035) Bool)

(assert (=> d!664680 (= res!954879 (valid!2319 (v!29747 (underlying!6272 (cache!3326 (_2!15150 e!1423432))))))))

(assert (=> d!664680 (= (valid!2318 (cache!3326 (_2!15150 e!1423432))) e!1423597)))

(declare-fun b!2227555 () Bool)

(declare-fun res!954880 () Bool)

(assert (=> b!2227555 (=> (not res!954880) (not e!1423597))))

(declare-fun lambda!84219 () Int)

(declare-datatypes ((tuple2!25496 0))(
  ( (tuple2!25497 (_1!15152 (_ BitVec 64)) (_2!15152 List!26266)) )
))
(declare-datatypes ((List!26267 0))(
  ( (Nil!26173) (Cons!26173 (h!31574 tuple2!25496) (t!199680 List!26267)) )
))
(declare-fun forall!5351 (List!26267 Int) Bool)

(declare-datatypes ((ListLongMap!309 0))(
  ( (ListLongMap!310 (toList!1325 List!26267)) )
))
(declare-fun map!5345 (MutLongMap!3035) ListLongMap!309)

(assert (=> b!2227555 (= res!954880 (forall!5351 (toList!1325 (map!5345 (v!29747 (underlying!6272 (cache!3326 (_2!15150 e!1423432)))))) lambda!84219))))

(declare-fun b!2227556 () Bool)

(declare-fun allKeysSameHashInMap!101 (ListLongMap!309 Hashable!2945) Bool)

(assert (=> b!2227556 (= e!1423597 (allKeysSameHashInMap!101 (map!5345 (v!29747 (underlying!6272 (cache!3326 (_2!15150 e!1423432))))) (hashF!4868 (cache!3326 (_2!15150 e!1423432)))))))

(assert (= (and d!664680 res!954879) b!2227555))

(assert (= (and b!2227555 res!954880) b!2227556))

(declare-fun m!2666121 () Bool)

(assert (=> d!664680 m!2666121))

(declare-fun m!2666123 () Bool)

(assert (=> b!2227555 m!2666123))

(declare-fun m!2666125 () Bool)

(assert (=> b!2227555 m!2666125))

(assert (=> b!2227556 m!2666123))

(assert (=> b!2227556 m!2666123))

(declare-fun m!2666127 () Bool)

(assert (=> b!2227556 m!2666127))

(assert (=> d!664660 d!664680))

(declare-fun b!2227557 () Bool)

(declare-fun e!1423599 () (InoxSet Context!3890))

(declare-fun call!133464 () (InoxSet Context!3890))

(declare-fun call!133466 () (InoxSet Context!3890))

(assert (=> b!2227557 (= e!1423599 ((_ map or) call!133464 call!133466))))

(declare-fun d!664682 () Bool)

(declare-fun c!355431 () Bool)

(assert (=> d!664682 (= c!355431 (and ((_ is ElementMatch!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (= (c!355369 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) a!1167)))))

(declare-fun e!1423603 () (InoxSet Context!3890))

(assert (=> d!664682 (= (derivationStepZipperDown!37 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167) e!1423603)))

(declare-fun b!2227558 () Bool)

(declare-fun e!1423598 () Bool)

(assert (=> b!2227558 (= e!1423598 (nullable!1750 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(declare-fun b!2227559 () Bool)

(declare-fun c!355433 () Bool)

(assert (=> b!2227559 (= c!355433 ((_ is Star!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun e!1423600 () (InoxSet Context!3890))

(declare-fun e!1423601 () (InoxSet Context!3890))

(assert (=> b!2227559 (= e!1423600 e!1423601)))

(declare-fun bm!133457 () Bool)

(declare-fun call!133467 () (InoxSet Context!3890))

(assert (=> bm!133457 (= call!133467 call!133466)))

(declare-fun b!2227560 () Bool)

(assert (=> b!2227560 (= e!1423601 ((as const (Array Context!3890 Bool)) false))))

(declare-fun b!2227561 () Bool)

(declare-fun call!133463 () (InoxSet Context!3890))

(assert (=> b!2227561 (= e!1423601 call!133463)))

(declare-fun b!2227562 () Bool)

(declare-fun e!1423602 () (InoxSet Context!3890))

(assert (=> b!2227562 (= e!1423602 ((_ map or) call!133464 call!133467))))

(declare-fun b!2227563 () Bool)

(assert (=> b!2227563 (= e!1423603 (store ((as const (Array Context!3890 Bool)) false) (ite c!355367 context!86 (Context!3891 call!133389)) true))))

(declare-fun b!2227564 () Bool)

(declare-fun c!355430 () Bool)

(assert (=> b!2227564 (= c!355430 e!1423598)))

(declare-fun res!954881 () Bool)

(assert (=> b!2227564 (=> (not res!954881) (not e!1423598))))

(assert (=> b!2227564 (= res!954881 ((_ is Concat!10735) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(assert (=> b!2227564 (= e!1423599 e!1423602)))

(declare-fun bm!133458 () Bool)

(declare-fun call!133465 () List!26265)

(declare-fun call!133462 () List!26265)

(assert (=> bm!133458 (= call!133465 call!133462)))

(declare-fun b!2227565 () Bool)

(assert (=> b!2227565 (= e!1423603 e!1423599)))

(declare-fun c!355432 () Bool)

(assert (=> b!2227565 (= c!355432 ((_ is Union!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun bm!133459 () Bool)

(assert (=> bm!133459 (= call!133464 (derivationStepZipperDown!37 (ite c!355432 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (ite c!355432 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133462)) a!1167))))

(declare-fun bm!133460 () Bool)

(declare-fun c!355434 () Bool)

(assert (=> bm!133460 (= call!133462 ($colon$colon!508 (exprs!2445 (ite c!355367 context!86 (Context!3891 call!133389))) (ite (or c!355430 c!355434) (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(declare-fun b!2227566 () Bool)

(assert (=> b!2227566 (= e!1423602 e!1423600)))

(assert (=> b!2227566 (= c!355434 ((_ is Concat!10735) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun bm!133461 () Bool)

(assert (=> bm!133461 (= call!133463 call!133467)))

(declare-fun b!2227567 () Bool)

(assert (=> b!2227567 (= e!1423600 call!133463)))

(declare-fun bm!133462 () Bool)

(assert (=> bm!133462 (= call!133466 (derivationStepZipperDown!37 (ite c!355432 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355430 (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355434 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite (or c!355432 c!355430) (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133465)) a!1167))))

(assert (= (and d!664682 c!355431) b!2227563))

(assert (= (and d!664682 (not c!355431)) b!2227565))

(assert (= (and b!2227565 c!355432) b!2227557))

(assert (= (and b!2227565 (not c!355432)) b!2227564))

(assert (= (and b!2227564 res!954881) b!2227558))

(assert (= (and b!2227564 c!355430) b!2227562))

(assert (= (and b!2227564 (not c!355430)) b!2227566))

(assert (= (and b!2227566 c!355434) b!2227567))

(assert (= (and b!2227566 (not c!355434)) b!2227559))

(assert (= (and b!2227559 c!355433) b!2227561))

(assert (= (and b!2227559 (not c!355433)) b!2227560))

(assert (= (or b!2227567 b!2227561) bm!133458))

(assert (= (or b!2227567 b!2227561) bm!133461))

(assert (= (or b!2227562 bm!133458) bm!133460))

(assert (= (or b!2227562 bm!133461) bm!133457))

(assert (= (or b!2227557 bm!133457) bm!133462))

(assert (= (or b!2227557 b!2227562) bm!133459))

(declare-fun m!2666129 () Bool)

(assert (=> bm!133460 m!2666129))

(declare-fun m!2666131 () Bool)

(assert (=> bm!133462 m!2666131))

(assert (=> b!2227558 m!2666027))

(assert (=> b!2227563 m!2666033))

(declare-fun m!2666133 () Bool)

(assert (=> bm!133459 m!2666133))

(assert (=> d!664662 d!664682))

(declare-fun d!664684 () Bool)

(declare-fun e!1423604 () Bool)

(assert (=> d!664684 e!1423604))

(declare-fun res!954882 () Bool)

(assert (=> d!664684 (=> res!954882 e!1423604)))

(declare-fun lt!830238 () Option!5087)

(assert (=> d!664684 (= res!954882 (isEmpty!14887 lt!830238))))

(assert (=> d!664684 (= lt!830238 (choose!13117 cacheDown!839 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167))))

(assert (=> d!664684 (validCacheMapDown!272 (cache!3326 cacheDown!839))))

(assert (=> d!664684 (= (get!7878 cacheDown!839 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167) lt!830238)))

(declare-fun b!2227568 () Bool)

(assert (=> b!2227568 (= e!1423604 (= (get!7879 lt!830238) (derivationStepZipperDown!37 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167)))))

(assert (= (and d!664684 (not res!954882)) b!2227568))

(declare-fun m!2666135 () Bool)

(assert (=> d!664684 m!2666135))

(declare-fun m!2666137 () Bool)

(assert (=> d!664684 m!2666137))

(assert (=> d!664684 m!2665984))

(declare-fun m!2666139 () Bool)

(assert (=> b!2227568 m!2666139))

(assert (=> b!2227568 m!2666035))

(assert (=> d!664662 d!664684))

(declare-fun b!2227569 () Bool)

(declare-fun res!954884 () Bool)

(declare-fun e!1423607 () Bool)

(assert (=> b!2227569 (=> (not res!954884) (not e!1423607))))

(declare-fun call!133469 () Bool)

(assert (=> b!2227569 (= res!954884 call!133469)))

(declare-fun e!1423610 () Bool)

(assert (=> b!2227569 (= e!1423610 e!1423607)))

(declare-fun b!2227570 () Bool)

(declare-fun e!1423611 () Bool)

(declare-fun e!1423605 () Bool)

(assert (=> b!2227570 (= e!1423611 e!1423605)))

(declare-fun res!954886 () Bool)

(assert (=> b!2227570 (=> (not res!954886) (not e!1423605))))

(assert (=> b!2227570 (= res!954886 call!133469)))

(declare-fun d!664686 () Bool)

(declare-fun res!954885 () Bool)

(declare-fun e!1423609 () Bool)

(assert (=> d!664686 (=> res!954885 e!1423609)))

(assert (=> d!664686 (= res!954885 ((_ is ElementMatch!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(assert (=> d!664686 (= (validRegex!2374 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) e!1423609)))

(declare-fun b!2227571 () Bool)

(declare-fun e!1423606 () Bool)

(assert (=> b!2227571 (= e!1423609 e!1423606)))

(declare-fun c!355436 () Bool)

(assert (=> b!2227571 (= c!355436 ((_ is Star!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun c!355435 () Bool)

(declare-fun bm!133463 () Bool)

(assert (=> bm!133463 (= call!133469 (validRegex!2374 (ite c!355435 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(declare-fun b!2227572 () Bool)

(declare-fun call!133468 () Bool)

(assert (=> b!2227572 (= e!1423607 call!133468)))

(declare-fun b!2227573 () Bool)

(assert (=> b!2227573 (= e!1423605 call!133468)))

(declare-fun b!2227574 () Bool)

(declare-fun e!1423608 () Bool)

(assert (=> b!2227574 (= e!1423606 e!1423608)))

(declare-fun res!954887 () Bool)

(assert (=> b!2227574 (= res!954887 (not (nullable!1750 (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(assert (=> b!2227574 (=> (not res!954887) (not e!1423608))))

(declare-fun b!2227575 () Bool)

(declare-fun res!954883 () Bool)

(assert (=> b!2227575 (=> res!954883 e!1423611)))

(assert (=> b!2227575 (= res!954883 (not ((_ is Concat!10735) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(assert (=> b!2227575 (= e!1423610 e!1423611)))

(declare-fun bm!133464 () Bool)

(declare-fun call!133470 () Bool)

(assert (=> bm!133464 (= call!133468 call!133470)))

(declare-fun b!2227576 () Bool)

(assert (=> b!2227576 (= e!1423606 e!1423610)))

(assert (=> b!2227576 (= c!355435 ((_ is Union!6397) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun bm!133465 () Bool)

(assert (=> bm!133465 (= call!133470 (validRegex!2374 (ite c!355436 (reg!6726 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355435 (regTwo!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))

(declare-fun b!2227577 () Bool)

(assert (=> b!2227577 (= e!1423608 call!133470)))

(assert (= (and d!664686 (not res!954885)) b!2227571))

(assert (= (and b!2227571 c!355436) b!2227574))

(assert (= (and b!2227571 (not c!355436)) b!2227576))

(assert (= (and b!2227574 res!954887) b!2227577))

(assert (= (and b!2227576 c!355435) b!2227569))

(assert (= (and b!2227576 (not c!355435)) b!2227575))

(assert (= (and b!2227569 res!954884) b!2227572))

(assert (= (and b!2227575 (not res!954883)) b!2227570))

(assert (= (and b!2227570 res!954886) b!2227573))

(assert (= (or b!2227572 b!2227573) bm!133464))

(assert (= (or b!2227569 b!2227570) bm!133463))

(assert (= (or b!2227577 bm!133464) bm!133465))

(declare-fun m!2666141 () Bool)

(assert (=> bm!133463 m!2666141))

(declare-fun m!2666143 () Bool)

(assert (=> b!2227574 m!2666143))

(declare-fun m!2666145 () Bool)

(assert (=> bm!133465 m!2666145))

(assert (=> d!664662 d!664686))

(declare-fun d!664688 () Bool)

(declare-fun lt!830241 () tuple2!25494)

(assert (=> d!664688 (validCacheMapDown!272 (cache!3326 (_2!15151 lt!830241)))))

(declare-fun choose!13118 (CacheDown!1936 Regex!6397 Context!3890 C!12940 (InoxSet Context!3890)) tuple2!25494)

(assert (=> d!664688 (= lt!830241 (choose!13118 (_2!15150 lt!830212) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 (_1!15150 lt!830212)))))

(assert (=> d!664688 (validCacheMapDown!272 (cache!3326 (_2!15150 lt!830212)))))

(assert (=> d!664688 (= (update!132 (_2!15150 lt!830212) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 (_1!15150 lt!830212)) lt!830241)))

(declare-fun bs!453561 () Bool)

(assert (= bs!453561 d!664688))

(declare-fun m!2666147 () Bool)

(assert (=> bs!453561 m!2666147))

(declare-fun m!2666149 () Bool)

(assert (=> bs!453561 m!2666149))

(declare-fun m!2666151 () Bool)

(assert (=> bs!453561 m!2666151))

(assert (=> b!2227390 d!664688))

(declare-fun bs!453562 () Bool)

(declare-fun d!664690 () Bool)

(assert (= bs!453562 (and d!664690 d!664654)))

(declare-fun lambda!84220 () Int)

(assert (=> bs!453562 (= lambda!84220 lambda!84211)))

(declare-fun bs!453563 () Bool)

(assert (= bs!453563 (and d!664690 d!664670)))

(assert (=> bs!453563 (= lambda!84220 lambda!84215)))

(declare-fun bs!453564 () Bool)

(assert (= bs!453564 (and d!664690 d!664674)))

(assert (=> bs!453564 (= lambda!84220 lambda!84216)))

(assert (=> d!664690 (= (inv!35534 (_2!15148 (_1!15149 (h!31573 mapValue!14301)))) (forall!5349 (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapValue!14301)))) lambda!84220))))

(declare-fun bs!453565 () Bool)

(assert (= bs!453565 d!664690))

(declare-fun m!2666153 () Bool)

(assert (=> bs!453565 m!2666153))

(assert (=> b!2227466 d!664690))

(declare-fun bs!453566 () Bool)

(declare-fun d!664692 () Bool)

(assert (= bs!453566 (and d!664692 d!664654)))

(declare-fun lambda!84221 () Int)

(assert (=> bs!453566 (= lambda!84221 lambda!84211)))

(declare-fun bs!453567 () Bool)

(assert (= bs!453567 (and d!664692 d!664670)))

(assert (=> bs!453567 (= lambda!84221 lambda!84215)))

(declare-fun bs!453568 () Bool)

(assert (= bs!453568 (and d!664692 d!664674)))

(assert (=> bs!453568 (= lambda!84221 lambda!84216)))

(declare-fun bs!453569 () Bool)

(assert (= bs!453569 (and d!664692 d!664690)))

(assert (=> bs!453569 (= lambda!84221 lambda!84220)))

(assert (=> d!664692 (= (inv!35534 setElem!19930) (forall!5349 (exprs!2445 setElem!19930) lambda!84221))))

(declare-fun bs!453570 () Bool)

(assert (= bs!453570 d!664692))

(declare-fun m!2666155 () Bool)

(assert (=> bs!453570 m!2666155))

(assert (=> setNonEmpty!19930 d!664692))

(declare-fun d!664694 () Bool)

(assert (=> d!664694 (= ($colon$colon!508 (exprs!2445 (ite c!355367 context!86 (Context!3891 call!133389))) (ite (or c!355399 c!355398) (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (Cons!26171 (ite (or c!355399 c!355398) (regTwo!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (exprs!2445 (ite c!355367 context!86 (Context!3891 call!133389)))))))

(assert (=> bm!133417 d!664694))

(declare-fun d!664696 () Bool)

(declare-fun lt!830242 () tuple2!25494)

(assert (=> d!664696 (validCacheMapDown!272 (cache!3326 (_2!15151 lt!830242)))))

(assert (=> d!664696 (= lt!830242 (choose!13118 (_2!15150 lt!830203) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (_1!15150 lt!830203)))))

(assert (=> d!664696 (validCacheMapDown!272 (cache!3326 (_2!15150 lt!830203)))))

(assert (=> d!664696 (= (update!132 (_2!15150 lt!830203) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (_1!15150 lt!830203)) lt!830242)))

(declare-fun bs!453571 () Bool)

(assert (= bs!453571 d!664696))

(declare-fun m!2666157 () Bool)

(assert (=> bs!453571 m!2666157))

(declare-fun m!2666159 () Bool)

(assert (=> bs!453571 m!2666159))

(declare-fun m!2666161 () Bool)

(assert (=> bs!453571 m!2666161))

(assert (=> b!2227339 d!664696))

(declare-fun b!2227578 () Bool)

(declare-fun e!1423613 () (InoxSet Context!3890))

(declare-fun call!133473 () (InoxSet Context!3890))

(declare-fun call!133475 () (InoxSet Context!3890))

(assert (=> b!2227578 (= e!1423613 ((_ map or) call!133473 call!133475))))

(declare-fun c!355438 () Bool)

(declare-fun d!664698 () Bool)

(assert (=> d!664698 (= c!355438 (and ((_ is ElementMatch!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (= (c!355369 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) a!1167)))))

(declare-fun e!1423617 () (InoxSet Context!3890))

(assert (=> d!664698 (= (derivationStepZipperDown!37 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167) e!1423617)))

(declare-fun e!1423612 () Bool)

(declare-fun b!2227579 () Bool)

(assert (=> b!2227579 (= e!1423612 (nullable!1750 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(declare-fun b!2227580 () Bool)

(declare-fun c!355440 () Bool)

(assert (=> b!2227580 (= c!355440 ((_ is Star!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun e!1423614 () (InoxSet Context!3890))

(declare-fun e!1423615 () (InoxSet Context!3890))

(assert (=> b!2227580 (= e!1423614 e!1423615)))

(declare-fun bm!133466 () Bool)

(declare-fun call!133476 () (InoxSet Context!3890))

(assert (=> bm!133466 (= call!133476 call!133475)))

(declare-fun b!2227581 () Bool)

(assert (=> b!2227581 (= e!1423615 ((as const (Array Context!3890 Bool)) false))))

(declare-fun b!2227582 () Bool)

(declare-fun call!133472 () (InoxSet Context!3890))

(assert (=> b!2227582 (= e!1423615 call!133472)))

(declare-fun b!2227583 () Bool)

(declare-fun e!1423616 () (InoxSet Context!3890))

(assert (=> b!2227583 (= e!1423616 ((_ map or) call!133473 call!133476))))

(declare-fun b!2227584 () Bool)

(assert (=> b!2227584 (= e!1423617 (store ((as const (Array Context!3890 Bool)) false) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) true))))

(declare-fun b!2227585 () Bool)

(declare-fun c!355437 () Bool)

(assert (=> b!2227585 (= c!355437 e!1423612)))

(declare-fun res!954889 () Bool)

(assert (=> b!2227585 (=> (not res!954889) (not e!1423612))))

(assert (=> b!2227585 (= res!954889 ((_ is Concat!10735) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(assert (=> b!2227585 (= e!1423613 e!1423616)))

(declare-fun bm!133467 () Bool)

(declare-fun call!133474 () List!26265)

(declare-fun call!133471 () List!26265)

(assert (=> bm!133467 (= call!133474 call!133471)))

(declare-fun b!2227586 () Bool)

(assert (=> b!2227586 (= e!1423617 e!1423613)))

(declare-fun c!355439 () Bool)

(assert (=> b!2227586 (= c!355439 ((_ is Union!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun bm!133468 () Bool)

(assert (=> bm!133468 (= call!133473 (derivationStepZipperDown!37 (ite c!355439 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (ite c!355439 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133471)) a!1167))))

(declare-fun c!355441 () Bool)

(declare-fun bm!133469 () Bool)

(assert (=> bm!133469 (= call!133471 ($colon$colon!508 (exprs!2445 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390))) (ite (or c!355437 c!355441) (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(declare-fun b!2227587 () Bool)

(assert (=> b!2227587 (= e!1423616 e!1423614)))

(assert (=> b!2227587 (= c!355441 ((_ is Concat!10735) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun bm!133470 () Bool)

(assert (=> bm!133470 (= call!133472 call!133476)))

(declare-fun b!2227588 () Bool)

(assert (=> b!2227588 (= e!1423614 call!133472)))

(declare-fun bm!133471 () Bool)

(assert (=> bm!133471 (= call!133475 (derivationStepZipperDown!37 (ite c!355439 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355437 (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355441 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite (or c!355439 c!355437) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133474)) a!1167))))

(assert (= (and d!664698 c!355438) b!2227584))

(assert (= (and d!664698 (not c!355438)) b!2227586))

(assert (= (and b!2227586 c!355439) b!2227578))

(assert (= (and b!2227586 (not c!355439)) b!2227585))

(assert (= (and b!2227585 res!954889) b!2227579))

(assert (= (and b!2227585 c!355437) b!2227583))

(assert (= (and b!2227585 (not c!355437)) b!2227587))

(assert (= (and b!2227587 c!355441) b!2227588))

(assert (= (and b!2227587 (not c!355441)) b!2227580))

(assert (= (and b!2227580 c!355440) b!2227582))

(assert (= (and b!2227580 (not c!355440)) b!2227581))

(assert (= (or b!2227588 b!2227582) bm!133467))

(assert (= (or b!2227588 b!2227582) bm!133470))

(assert (= (or b!2227583 bm!133467) bm!133469))

(assert (= (or b!2227583 bm!133470) bm!133466))

(assert (= (or b!2227578 bm!133466) bm!133471))

(assert (= (or b!2227578 b!2227583) bm!133468))

(declare-fun m!2666163 () Bool)

(assert (=> bm!133469 m!2666163))

(declare-fun m!2666165 () Bool)

(assert (=> bm!133471 m!2666165))

(assert (=> b!2227579 m!2665990))

(assert (=> b!2227584 m!2665996))

(declare-fun m!2666167 () Bool)

(assert (=> bm!133468 m!2666167))

(assert (=> d!664646 d!664698))

(declare-fun d!664700 () Bool)

(declare-fun e!1423618 () Bool)

(assert (=> d!664700 e!1423618))

(declare-fun res!954890 () Bool)

(assert (=> d!664700 (=> res!954890 e!1423618)))

(declare-fun lt!830243 () Option!5087)

(assert (=> d!664700 (= res!954890 (isEmpty!14887 lt!830243))))

(assert (=> d!664700 (= lt!830243 (choose!13117 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839)) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167))))

(assert (=> d!664700 (validCacheMapDown!272 (cache!3326 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(assert (=> d!664700 (= (get!7878 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839)) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167) lt!830243)))

(declare-fun b!2227589 () Bool)

(assert (=> b!2227589 (= e!1423618 (= (get!7879 lt!830243) (derivationStepZipperDown!37 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167)))))

(assert (= (and d!664700 (not res!954890)) b!2227589))

(declare-fun m!2666169 () Bool)

(assert (=> d!664700 m!2666169))

(declare-fun m!2666171 () Bool)

(assert (=> d!664700 m!2666171))

(declare-fun m!2666173 () Bool)

(assert (=> d!664700 m!2666173))

(declare-fun m!2666175 () Bool)

(assert (=> b!2227589 m!2666175))

(assert (=> b!2227589 m!2665998))

(assert (=> d!664646 d!664700))

(declare-fun b!2227590 () Bool)

(declare-fun res!954892 () Bool)

(declare-fun e!1423621 () Bool)

(assert (=> b!2227590 (=> (not res!954892) (not e!1423621))))

(declare-fun call!133478 () Bool)

(assert (=> b!2227590 (= res!954892 call!133478)))

(declare-fun e!1423624 () Bool)

(assert (=> b!2227590 (= e!1423624 e!1423621)))

(declare-fun b!2227591 () Bool)

(declare-fun e!1423625 () Bool)

(declare-fun e!1423619 () Bool)

(assert (=> b!2227591 (= e!1423625 e!1423619)))

(declare-fun res!954894 () Bool)

(assert (=> b!2227591 (=> (not res!954894) (not e!1423619))))

(assert (=> b!2227591 (= res!954894 call!133478)))

(declare-fun d!664702 () Bool)

(declare-fun res!954893 () Bool)

(declare-fun e!1423623 () Bool)

(assert (=> d!664702 (=> res!954893 e!1423623)))

(assert (=> d!664702 (= res!954893 ((_ is ElementMatch!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(assert (=> d!664702 (= (validRegex!2374 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) e!1423623)))

(declare-fun b!2227592 () Bool)

(declare-fun e!1423620 () Bool)

(assert (=> b!2227592 (= e!1423623 e!1423620)))

(declare-fun c!355443 () Bool)

(assert (=> b!2227592 (= c!355443 ((_ is Star!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun bm!133472 () Bool)

(declare-fun c!355442 () Bool)

(assert (=> bm!133472 (= call!133478 (validRegex!2374 (ite c!355442 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))

(declare-fun b!2227593 () Bool)

(declare-fun call!133477 () Bool)

(assert (=> b!2227593 (= e!1423621 call!133477)))

(declare-fun b!2227594 () Bool)

(assert (=> b!2227594 (= e!1423619 call!133477)))

(declare-fun b!2227595 () Bool)

(declare-fun e!1423622 () Bool)

(assert (=> b!2227595 (= e!1423620 e!1423622)))

(declare-fun res!954895 () Bool)

(assert (=> b!2227595 (= res!954895 (not (nullable!1750 (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))

(assert (=> b!2227595 (=> (not res!954895) (not e!1423622))))

(declare-fun b!2227596 () Bool)

(declare-fun res!954891 () Bool)

(assert (=> b!2227596 (=> res!954891 e!1423625)))

(assert (=> b!2227596 (= res!954891 (not ((_ is Concat!10735) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(assert (=> b!2227596 (= e!1423624 e!1423625)))

(declare-fun bm!133473 () Bool)

(declare-fun call!133479 () Bool)

(assert (=> bm!133473 (= call!133477 call!133479)))

(declare-fun b!2227597 () Bool)

(assert (=> b!2227597 (= e!1423620 e!1423624)))

(assert (=> b!2227597 (= c!355442 ((_ is Union!6397) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))

(declare-fun bm!133474 () Bool)

(assert (=> bm!133474 (= call!133479 (validRegex!2374 (ite c!355443 (reg!6726 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355442 (regTwo!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))

(declare-fun b!2227598 () Bool)

(assert (=> b!2227598 (= e!1423622 call!133479)))

(assert (= (and d!664702 (not res!954893)) b!2227592))

(assert (= (and b!2227592 c!355443) b!2227595))

(assert (= (and b!2227592 (not c!355443)) b!2227597))

(assert (= (and b!2227595 res!954895) b!2227598))

(assert (= (and b!2227597 c!355442) b!2227590))

(assert (= (and b!2227597 (not c!355442)) b!2227596))

(assert (= (and b!2227590 res!954892) b!2227593))

(assert (= (and b!2227596 (not res!954891)) b!2227591))

(assert (= (and b!2227591 res!954894) b!2227594))

(assert (= (or b!2227593 b!2227594) bm!133473))

(assert (= (or b!2227590 b!2227591) bm!133472))

(assert (= (or b!2227598 bm!133473) bm!133474))

(declare-fun m!2666177 () Bool)

(assert (=> bm!133472 m!2666177))

(declare-fun m!2666179 () Bool)

(assert (=> b!2227595 m!2666179))

(declare-fun m!2666181 () Bool)

(assert (=> bm!133474 m!2666181))

(assert (=> d!664646 d!664702))

(declare-fun b!2227599 () Bool)

(declare-fun e!1423627 () tuple2!25492)

(assert (=> b!2227599 (= e!1423627 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) true) cacheDown!839))))

(declare-fun e!1423626 () Bool)

(declare-fun b!2227600 () Bool)

(assert (=> b!2227600 (= e!1423626 (nullable!1750 (regOne!13306 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))

(declare-fun b!2227601 () Bool)

(declare-fun c!355448 () Bool)

(assert (=> b!2227601 (= c!355448 ((_ is Concat!10735) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(declare-fun e!1423631 () tuple2!25492)

(declare-fun e!1423630 () tuple2!25492)

(assert (=> b!2227601 (= e!1423631 e!1423630)))

(declare-fun b!2227602 () Bool)

(declare-fun e!1423632 () tuple2!25492)

(declare-fun lt!830251 () tuple2!25492)

(declare-fun lt!830250 () tuple2!25492)

(assert (=> b!2227602 (= e!1423632 (tuple2!25493 ((_ map or) (_1!15150 lt!830251) (_1!15150 lt!830250)) (_2!15150 lt!830250)))))

(declare-fun call!133482 () tuple2!25492)

(assert (=> b!2227602 (= lt!830251 call!133482)))

(declare-fun call!133480 () tuple2!25492)

(assert (=> b!2227602 (= lt!830250 call!133480)))

(declare-fun b!2227603 () Bool)

(declare-fun lt!830252 () tuple2!25492)

(declare-fun call!133483 () tuple2!25492)

(assert (=> b!2227603 (= lt!830252 call!133483)))

(declare-fun e!1423629 () tuple2!25492)

(assert (=> b!2227603 (= e!1423629 (tuple2!25493 (_1!15150 lt!830252) (_2!15150 lt!830252)))))

(declare-fun b!2227604 () Bool)

(declare-fun lt!830249 () tuple2!25492)

(declare-fun call!133485 () tuple2!25492)

(assert (=> b!2227604 (= lt!830249 call!133485)))

(declare-fun lt!830247 () tuple2!25492)

(assert (=> b!2227604 (= lt!830247 call!133482)))

(assert (=> b!2227604 (= e!1423631 (tuple2!25493 ((_ map or) (_1!15150 lt!830247) (_1!15150 lt!830249)) (_2!15150 lt!830249)))))

(declare-fun c!355446 () Bool)

(declare-fun b!2227605 () Bool)

(assert (=> b!2227605 (= c!355446 ((_ is Union!6397) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(assert (=> b!2227605 (= e!1423627 e!1423632)))

(declare-fun call!133484 () List!26265)

(declare-fun bm!133475 () Bool)

(assert (=> bm!133475 (= call!133482 (derivationStepZipperDownMem!14 (ite c!355446 (regOne!13307 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) (regOne!13306 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))) (ite c!355446 (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) (Context!3891 call!133484)) a!1167 cacheDown!839))))

(declare-fun bm!133476 () Bool)

(declare-fun call!133481 () List!26265)

(assert (=> bm!133476 (= call!133481 call!133484)))

(declare-fun bm!133477 () Bool)

(declare-fun c!355449 () Bool)

(assert (=> bm!133477 (= call!133484 ($colon$colon!508 (exprs!2445 (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424))) (ite (or c!355449 c!355448) (regTwo!13306 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))

(declare-fun bm!133478 () Bool)

(assert (=> bm!133478 (= call!133483 call!133485)))

(declare-fun e!1423628 () tuple2!25492)

(declare-fun b!2227606 () Bool)

(declare-fun lt!830245 () tuple2!25492)

(assert (=> b!2227606 (= e!1423628 (tuple2!25493 (_1!15150 lt!830245) (_2!15151 (update!132 (_2!15150 lt!830245) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) a!1167 (_1!15150 lt!830245)))))))

(declare-fun c!355445 () Bool)

(assert (=> b!2227606 (= c!355445 (and ((_ is ElementMatch!6397) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) (= (c!355369 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) a!1167)))))

(assert (=> b!2227606 (= lt!830245 e!1423627)))

(declare-fun b!2227607 () Bool)

(assert (=> b!2227607 (= e!1423630 e!1423629)))

(declare-fun c!355447 () Bool)

(assert (=> b!2227607 (= c!355447 ((_ is Star!6397) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(declare-fun b!2227608 () Bool)

(assert (=> b!2227608 (= e!1423632 e!1423631)))

(declare-fun res!954896 () Bool)

(assert (=> b!2227608 (= res!954896 ((_ is Concat!10735) (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(assert (=> b!2227608 (=> (not res!954896) (not e!1423626))))

(assert (=> b!2227608 (= c!355449 e!1423626)))

(declare-fun bm!133479 () Bool)

(assert (=> bm!133479 (= call!133485 call!133480)))

(declare-fun b!2227609 () Bool)

(assert (=> b!2227609 (= e!1423629 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) cacheDown!839))))

(declare-fun bm!133480 () Bool)

(assert (=> bm!133480 (= call!133480 (derivationStepZipperDownMem!14 (ite c!355446 (regTwo!13307 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) (ite c!355449 (regTwo!13306 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) (ite c!355448 (regOne!13306 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))))) (reg!6726 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))) (ite (or c!355446 c!355449) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) (Context!3891 call!133481)) a!1167 (ite c!355446 (_2!15150 lt!830251) (ite c!355449 (_2!15150 lt!830247) cacheDown!839))))))

(declare-fun d!664704 () Bool)

(declare-fun lt!830246 () tuple2!25492)

(assert (=> d!664704 (= (_1!15150 lt!830246) (derivationStepZipperDown!37 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) a!1167))))

(assert (=> d!664704 (= lt!830246 e!1423628)))

(declare-fun c!355444 () Bool)

(declare-fun lt!830248 () Option!5087)

(assert (=> d!664704 (= c!355444 ((_ is Some!5086) lt!830248))))

(assert (=> d!664704 (= lt!830248 (get!7878 cacheDown!839 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) a!1167))))

(assert (=> d!664704 (validRegex!2374 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(assert (=> d!664704 (= (derivationStepZipperDownMem!14 (ite c!355396 (regOne!13307 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (ite c!355396 (ite c!355367 context!86 (Context!3891 call!133389)) (Context!3891 call!133424)) a!1167 cacheDown!839) lt!830246)))

(declare-fun b!2227610 () Bool)

(assert (=> b!2227610 (= e!1423628 (tuple2!25493 (v!29748 lt!830248) cacheDown!839))))

(declare-fun b!2227611 () Bool)

(declare-fun lt!830244 () tuple2!25492)

(assert (=> b!2227611 (= e!1423630 (tuple2!25493 (_1!15150 lt!830244) (_2!15150 lt!830244)))))

(assert (=> b!2227611 (= lt!830244 call!133483)))

(assert (= (and d!664704 c!355444) b!2227610))

(assert (= (and d!664704 (not c!355444)) b!2227606))

(assert (= (and b!2227606 c!355445) b!2227599))

(assert (= (and b!2227606 (not c!355445)) b!2227605))

(assert (= (and b!2227605 c!355446) b!2227602))

(assert (= (and b!2227605 (not c!355446)) b!2227608))

(assert (= (and b!2227608 res!954896) b!2227600))

(assert (= (and b!2227608 c!355449) b!2227604))

(assert (= (and b!2227608 (not c!355449)) b!2227601))

(assert (= (and b!2227601 c!355448) b!2227611))

(assert (= (and b!2227601 (not c!355448)) b!2227607))

(assert (= (and b!2227607 c!355447) b!2227603))

(assert (= (and b!2227607 (not c!355447)) b!2227609))

(assert (= (or b!2227611 b!2227603) bm!133476))

(assert (= (or b!2227611 b!2227603) bm!133478))

(assert (= (or b!2227604 bm!133476) bm!133477))

(assert (= (or b!2227604 bm!133478) bm!133479))

(assert (= (or b!2227602 b!2227604) bm!133475))

(assert (= (or b!2227602 bm!133479) bm!133480))

(declare-fun m!2666183 () Bool)

(assert (=> b!2227600 m!2666183))

(declare-fun m!2666185 () Bool)

(assert (=> bm!133480 m!2666185))

(declare-fun m!2666187 () Bool)

(assert (=> bm!133475 m!2666187))

(declare-fun m!2666189 () Bool)

(assert (=> b!2227599 m!2666189))

(declare-fun m!2666191 () Bool)

(assert (=> d!664704 m!2666191))

(declare-fun m!2666193 () Bool)

(assert (=> d!664704 m!2666193))

(declare-fun m!2666195 () Bool)

(assert (=> d!664704 m!2666195))

(declare-fun m!2666197 () Bool)

(assert (=> bm!133477 m!2666197))

(declare-fun m!2666199 () Bool)

(assert (=> b!2227606 m!2666199))

(assert (=> bm!133415 d!664704))

(declare-fun d!664706 () Bool)

(assert (=> d!664706 (= ($colon$colon!508 (exprs!2445 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390))) (ite (or c!355387 c!355386) (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (Cons!26171 (ite (or c!355387 c!355386) (regTwo!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (exprs!2445 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)))))))

(assert (=> bm!133402 d!664706))

(declare-fun bs!453572 () Bool)

(declare-fun d!664708 () Bool)

(assert (= bs!453572 (and d!664708 d!664670)))

(declare-fun lambda!84222 () Int)

(assert (=> bs!453572 (= lambda!84222 lambda!84215)))

(declare-fun bs!453573 () Bool)

(assert (= bs!453573 (and d!664708 d!664674)))

(assert (=> bs!453573 (= lambda!84222 lambda!84216)))

(declare-fun bs!453574 () Bool)

(assert (= bs!453574 (and d!664708 d!664654)))

(assert (=> bs!453574 (= lambda!84222 lambda!84211)))

(declare-fun bs!453575 () Bool)

(assert (= bs!453575 (and d!664708 d!664690)))

(assert (=> bs!453575 (= lambda!84222 lambda!84220)))

(declare-fun bs!453576 () Bool)

(assert (= bs!453576 (and d!664708 d!664692)))

(assert (=> bs!453576 (= lambda!84222 lambda!84221)))

(assert (=> d!664708 (= (inv!35534 setElem!19929) (forall!5349 (exprs!2445 setElem!19929) lambda!84222))))

(declare-fun bs!453577 () Bool)

(assert (= bs!453577 d!664708))

(declare-fun m!2666201 () Bool)

(assert (=> bs!453577 m!2666201))

(assert (=> setNonEmpty!19929 d!664708))

(declare-fun d!664710 () Bool)

(declare-fun res!954901 () Bool)

(declare-fun e!1423637 () Bool)

(assert (=> d!664710 (=> res!954901 e!1423637)))

(assert (=> d!664710 (= res!954901 ((_ is Nil!26171) (exprs!2445 context!86)))))

(assert (=> d!664710 (= (forall!5349 (exprs!2445 context!86) lambda!84211) e!1423637)))

(declare-fun b!2227616 () Bool)

(declare-fun e!1423638 () Bool)

(assert (=> b!2227616 (= e!1423637 e!1423638)))

(declare-fun res!954902 () Bool)

(assert (=> b!2227616 (=> (not res!954902) (not e!1423638))))

(declare-fun dynLambda!11519 (Int Regex!6397) Bool)

(assert (=> b!2227616 (= res!954902 (dynLambda!11519 lambda!84211 (h!31572 (exprs!2445 context!86))))))

(declare-fun b!2227617 () Bool)

(assert (=> b!2227617 (= e!1423638 (forall!5349 (t!199677 (exprs!2445 context!86)) lambda!84211))))

(assert (= (and d!664710 (not res!954901)) b!2227616))

(assert (= (and b!2227616 res!954902) b!2227617))

(declare-fun b_lambda!71633 () Bool)

(assert (=> (not b_lambda!71633) (not b!2227616)))

(declare-fun m!2666203 () Bool)

(assert (=> b!2227616 m!2666203))

(declare-fun m!2666205 () Bool)

(assert (=> b!2227617 m!2666205))

(assert (=> d!664654 d!664710))

(declare-fun bs!453578 () Bool)

(declare-fun b!2227619 () Bool)

(assert (= bs!453578 (and b!2227619 b!2227382)))

(declare-fun lambda!84223 () Int)

(assert (=> bs!453578 (= lambda!84223 lambda!84214)))

(declare-fun d!664712 () Bool)

(declare-fun res!954903 () Bool)

(declare-fun e!1423639 () Bool)

(assert (=> d!664712 (=> (not res!954903) (not e!1423639))))

(assert (=> d!664712 (= res!954903 (valid!2318 (cache!3326 cacheDown!839)))))

(assert (=> d!664712 (= (validCacheMapDown!272 (cache!3326 cacheDown!839)) e!1423639)))

(declare-fun b!2227618 () Bool)

(declare-fun res!954904 () Bool)

(assert (=> b!2227618 (=> (not res!954904) (not e!1423639))))

(assert (=> b!2227618 (= res!954904 (invariantList!358 (toList!1324 (map!5344 (cache!3326 cacheDown!839)))))))

(assert (=> b!2227619 (= e!1423639 (forall!5350 (toList!1324 (map!5344 (cache!3326 cacheDown!839))) lambda!84223))))

(assert (= (and d!664712 res!954903) b!2227618))

(assert (= (and b!2227618 res!954904) b!2227619))

(declare-fun m!2666207 () Bool)

(assert (=> d!664712 m!2666207))

(declare-fun m!2666209 () Bool)

(assert (=> b!2227618 m!2666209))

(declare-fun m!2666211 () Bool)

(assert (=> b!2227618 m!2666211))

(assert (=> b!2227619 m!2666209))

(declare-fun m!2666213 () Bool)

(assert (=> b!2227619 m!2666213))

(assert (=> b!2227374 d!664712))

(declare-fun b!2227620 () Bool)

(declare-fun res!954906 () Bool)

(declare-fun e!1423642 () Bool)

(assert (=> b!2227620 (=> (not res!954906) (not e!1423642))))

(declare-fun call!133487 () Bool)

(assert (=> b!2227620 (= res!954906 call!133487)))

(declare-fun e!1423645 () Bool)

(assert (=> b!2227620 (= e!1423645 e!1423642)))

(declare-fun b!2227621 () Bool)

(declare-fun e!1423646 () Bool)

(declare-fun e!1423640 () Bool)

(assert (=> b!2227621 (= e!1423646 e!1423640)))

(declare-fun res!954908 () Bool)

(assert (=> b!2227621 (=> (not res!954908) (not e!1423640))))

(assert (=> b!2227621 (= res!954908 call!133487)))

(declare-fun d!664714 () Bool)

(declare-fun res!954907 () Bool)

(declare-fun e!1423644 () Bool)

(assert (=> d!664714 (=> res!954907 e!1423644)))

(assert (=> d!664714 (= res!954907 ((_ is ElementMatch!6397) (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))))))

(assert (=> d!664714 (= (validRegex!2374 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))) e!1423644)))

(declare-fun b!2227622 () Bool)

(declare-fun e!1423641 () Bool)

(assert (=> b!2227622 (= e!1423644 e!1423641)))

(declare-fun c!355451 () Bool)

(assert (=> b!2227622 (= c!355451 ((_ is Star!6397) (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))))))

(declare-fun bm!133481 () Bool)

(declare-fun c!355450 () Bool)

(assert (=> bm!133481 (= call!133487 (validRegex!2374 (ite c!355450 (regOne!13307 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))) (regOne!13306 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))))))))

(declare-fun b!2227623 () Bool)

(declare-fun call!133486 () Bool)

(assert (=> b!2227623 (= e!1423642 call!133486)))

(declare-fun b!2227624 () Bool)

(assert (=> b!2227624 (= e!1423640 call!133486)))

(declare-fun b!2227625 () Bool)

(declare-fun e!1423643 () Bool)

(assert (=> b!2227625 (= e!1423641 e!1423643)))

(declare-fun res!954909 () Bool)

(assert (=> b!2227625 (= res!954909 (not (nullable!1750 (reg!6726 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))))))))

(assert (=> b!2227625 (=> (not res!954909) (not e!1423643))))

(declare-fun b!2227626 () Bool)

(declare-fun res!954905 () Bool)

(assert (=> b!2227626 (=> res!954905 e!1423646)))

(assert (=> b!2227626 (= res!954905 (not ((_ is Concat!10735) (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64))))))))

(assert (=> b!2227626 (= e!1423645 e!1423646)))

(declare-fun bm!133482 () Bool)

(declare-fun call!133488 () Bool)

(assert (=> bm!133482 (= call!133486 call!133488)))

(declare-fun b!2227627 () Bool)

(assert (=> b!2227627 (= e!1423641 e!1423645)))

(assert (=> b!2227627 (= c!355450 ((_ is Union!6397) (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))))))

(declare-fun bm!133483 () Bool)

(assert (=> bm!133483 (= call!133488 (validRegex!2374 (ite c!355451 (reg!6726 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))) (ite c!355450 (regTwo!13307 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64)))) (regTwo!13306 (ite c!355393 (reg!6726 expr!64) (ite c!355392 (regTwo!13307 expr!64) (regTwo!13306 expr!64))))))))))

(declare-fun b!2227628 () Bool)

(assert (=> b!2227628 (= e!1423643 call!133488)))

(assert (= (and d!664714 (not res!954907)) b!2227622))

(assert (= (and b!2227622 c!355451) b!2227625))

(assert (= (and b!2227622 (not c!355451)) b!2227627))

(assert (= (and b!2227625 res!954909) b!2227628))

(assert (= (and b!2227627 c!355450) b!2227620))

(assert (= (and b!2227627 (not c!355450)) b!2227626))

(assert (= (and b!2227620 res!954906) b!2227623))

(assert (= (and b!2227626 (not res!954905)) b!2227621))

(assert (= (and b!2227621 res!954908) b!2227624))

(assert (= (or b!2227623 b!2227624) bm!133482))

(assert (= (or b!2227620 b!2227621) bm!133481))

(assert (= (or b!2227628 bm!133482) bm!133483))

(declare-fun m!2666215 () Bool)

(assert (=> bm!133481 m!2666215))

(declare-fun m!2666217 () Bool)

(assert (=> b!2227625 m!2666217))

(declare-fun m!2666219 () Bool)

(assert (=> bm!133483 m!2666219))

(assert (=> bm!133414 d!664714))

(declare-fun e!1423648 () tuple2!25492)

(declare-fun b!2227629 () Bool)

(assert (=> b!2227629 (= e!1423648 (tuple2!25493 (store ((as const (Array Context!3890 Bool)) false) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) true) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun b!2227630 () Bool)

(declare-fun e!1423647 () Bool)

(assert (=> b!2227630 (= e!1423647 (nullable!1750 (regOne!13306 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))

(declare-fun b!2227631 () Bool)

(declare-fun c!355456 () Bool)

(assert (=> b!2227631 (= c!355456 ((_ is Concat!10735) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))

(declare-fun e!1423652 () tuple2!25492)

(declare-fun e!1423651 () tuple2!25492)

(assert (=> b!2227631 (= e!1423652 e!1423651)))

(declare-fun b!2227632 () Bool)

(declare-fun e!1423653 () tuple2!25492)

(declare-fun lt!830260 () tuple2!25492)

(declare-fun lt!830259 () tuple2!25492)

(assert (=> b!2227632 (= e!1423653 (tuple2!25493 ((_ map or) (_1!15150 lt!830260) (_1!15150 lt!830259)) (_2!15150 lt!830259)))))

(declare-fun call!133491 () tuple2!25492)

(assert (=> b!2227632 (= lt!830260 call!133491)))

(declare-fun call!133489 () tuple2!25492)

(assert (=> b!2227632 (= lt!830259 call!133489)))

(declare-fun b!2227633 () Bool)

(declare-fun lt!830261 () tuple2!25492)

(declare-fun call!133492 () tuple2!25492)

(assert (=> b!2227633 (= lt!830261 call!133492)))

(declare-fun e!1423650 () tuple2!25492)

(assert (=> b!2227633 (= e!1423650 (tuple2!25493 (_1!15150 lt!830261) (_2!15150 lt!830261)))))

(declare-fun b!2227634 () Bool)

(declare-fun lt!830258 () tuple2!25492)

(declare-fun call!133494 () tuple2!25492)

(assert (=> b!2227634 (= lt!830258 call!133494)))

(declare-fun lt!830256 () tuple2!25492)

(assert (=> b!2227634 (= lt!830256 call!133491)))

(assert (=> b!2227634 (= e!1423652 (tuple2!25493 ((_ map or) (_1!15150 lt!830256) (_1!15150 lt!830258)) (_2!15150 lt!830258)))))

(declare-fun c!355454 () Bool)

(declare-fun b!2227635 () Bool)

(assert (=> b!2227635 (= c!355454 ((_ is Union!6397) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))

(assert (=> b!2227635 (= e!1423648 e!1423653)))

(declare-fun bm!133484 () Bool)

(declare-fun call!133493 () List!26265)

(assert (=> bm!133484 (= call!133491 (derivationStepZipperDownMem!14 (ite c!355454 (regOne!13307 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) (regOne!13306 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))) (ite c!355454 (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) (Context!3891 call!133493)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun bm!133485 () Bool)

(declare-fun call!133490 () List!26265)

(assert (=> bm!133485 (= call!133490 call!133493)))

(declare-fun c!355457 () Bool)

(declare-fun bm!133486 () Bool)

(assert (=> bm!133486 (= call!133493 ($colon$colon!508 (exprs!2445 (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409))) (ite (or c!355457 c!355456) (regTwo!13306 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))))

(declare-fun bm!133487 () Bool)

(assert (=> bm!133487 (= call!133492 call!133494)))

(declare-fun e!1423649 () tuple2!25492)

(declare-fun b!2227636 () Bool)

(declare-fun lt!830254 () tuple2!25492)

(assert (=> b!2227636 (= e!1423649 (tuple2!25493 (_1!15150 lt!830254) (_2!15151 (update!132 (_2!15150 lt!830254) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) a!1167 (_1!15150 lt!830254)))))))

(declare-fun c!355453 () Bool)

(assert (=> b!2227636 (= c!355453 (and ((_ is ElementMatch!6397) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) (= (c!355369 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) a!1167)))))

(assert (=> b!2227636 (= lt!830254 e!1423648)))

(declare-fun b!2227637 () Bool)

(assert (=> b!2227637 (= e!1423651 e!1423650)))

(declare-fun c!355455 () Bool)

(assert (=> b!2227637 (= c!355455 ((_ is Star!6397) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))

(declare-fun b!2227638 () Bool)

(assert (=> b!2227638 (= e!1423653 e!1423652)))

(declare-fun res!954910 () Bool)

(assert (=> b!2227638 (= res!954910 ((_ is Concat!10735) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))))))

(assert (=> b!2227638 (=> (not res!954910) (not e!1423647))))

(assert (=> b!2227638 (= c!355457 e!1423647)))

(declare-fun bm!133488 () Bool)

(assert (=> bm!133488 (= call!133494 call!133489)))

(declare-fun b!2227639 () Bool)

(assert (=> b!2227639 (= e!1423650 (tuple2!25493 ((as const (Array Context!3890 Bool)) false) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun bm!133489 () Bool)

(assert (=> bm!133489 (= call!133489 (derivationStepZipperDownMem!14 (ite c!355454 (regTwo!13307 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) (ite c!355457 (regTwo!13306 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) (ite c!355456 (regOne!13306 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))))) (reg!6726 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))) (ite (or c!355454 c!355457) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) (Context!3891 call!133490)) a!1167 (ite c!355454 (_2!15150 lt!830260) (ite c!355457 (_2!15150 lt!830256) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))

(declare-fun lt!830255 () tuple2!25492)

(declare-fun d!664716 () Bool)

(assert (=> d!664716 (= (_1!15150 lt!830255) (derivationStepZipperDown!37 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) a!1167))))

(assert (=> d!664716 (= lt!830255 e!1423649)))

(declare-fun c!355452 () Bool)

(declare-fun lt!830257 () Option!5087)

(assert (=> d!664716 (= c!355452 ((_ is Some!5086) lt!830257))))

(assert (=> d!664716 (= lt!830257 (get!7878 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839)) (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) a!1167))))

(assert (=> d!664716 (validRegex!2374 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(assert (=> d!664716 (= (derivationStepZipperDownMem!14 (ite c!355384 (regOne!13307 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64))))) (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (ite c!355384 (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) (Context!3891 call!133409)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))) lt!830255)))

(declare-fun b!2227640 () Bool)

(assert (=> b!2227640 (= e!1423649 (tuple2!25493 (v!29748 lt!830257) (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))

(declare-fun b!2227641 () Bool)

(declare-fun lt!830253 () tuple2!25492)

(assert (=> b!2227641 (= e!1423651 (tuple2!25493 (_1!15150 lt!830253) (_2!15150 lt!830253)))))

(assert (=> b!2227641 (= lt!830253 call!133492)))

(assert (= (and d!664716 c!355452) b!2227640))

(assert (= (and d!664716 (not c!355452)) b!2227636))

(assert (= (and b!2227636 c!355453) b!2227629))

(assert (= (and b!2227636 (not c!355453)) b!2227635))

(assert (= (and b!2227635 c!355454) b!2227632))

(assert (= (and b!2227635 (not c!355454)) b!2227638))

(assert (= (and b!2227638 res!954910) b!2227630))

(assert (= (and b!2227638 c!355457) b!2227634))

(assert (= (and b!2227638 (not c!355457)) b!2227631))

(assert (= (and b!2227631 c!355456) b!2227641))

(assert (= (and b!2227631 (not c!355456)) b!2227637))

(assert (= (and b!2227637 c!355455) b!2227633))

(assert (= (and b!2227637 (not c!355455)) b!2227639))

(assert (= (or b!2227641 b!2227633) bm!133485))

(assert (= (or b!2227641 b!2227633) bm!133487))

(assert (= (or b!2227634 bm!133485) bm!133486))

(assert (= (or b!2227634 bm!133487) bm!133488))

(assert (= (or b!2227632 b!2227634) bm!133484))

(assert (= (or b!2227632 bm!133488) bm!133489))

(declare-fun m!2666221 () Bool)

(assert (=> b!2227630 m!2666221))

(declare-fun m!2666223 () Bool)

(assert (=> bm!133489 m!2666223))

(declare-fun m!2666225 () Bool)

(assert (=> bm!133484 m!2666225))

(declare-fun m!2666227 () Bool)

(assert (=> b!2227629 m!2666227))

(declare-fun m!2666229 () Bool)

(assert (=> d!664716 m!2666229))

(declare-fun m!2666231 () Bool)

(assert (=> d!664716 m!2666231))

(declare-fun m!2666233 () Bool)

(assert (=> d!664716 m!2666233))

(declare-fun m!2666235 () Bool)

(assert (=> bm!133486 m!2666235))

(declare-fun m!2666237 () Bool)

(assert (=> b!2227636 m!2666237))

(assert (=> bm!133400 d!664716))

(declare-fun d!664718 () Bool)

(declare-fun res!954915 () Bool)

(declare-fun e!1423658 () Bool)

(assert (=> d!664718 (=> res!954915 e!1423658)))

(assert (=> d!664718 (= res!954915 ((_ is Nil!26172) (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))))))

(assert (=> d!664718 (= (forall!5350 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432)))) lambda!84214) e!1423658)))

(declare-fun b!2227646 () Bool)

(declare-fun e!1423659 () Bool)

(assert (=> b!2227646 (= e!1423658 e!1423659)))

(declare-fun res!954916 () Bool)

(assert (=> b!2227646 (=> (not res!954916) (not e!1423659))))

(declare-fun dynLambda!11520 (Int tuple2!25490) Bool)

(assert (=> b!2227646 (= res!954916 (dynLambda!11520 lambda!84214 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432)))))))))

(declare-fun b!2227647 () Bool)

(assert (=> b!2227647 (= e!1423659 (forall!5350 (t!199678 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))) lambda!84214))))

(assert (= (and d!664718 (not res!954915)) b!2227646))

(assert (= (and b!2227646 res!954916) b!2227647))

(declare-fun b_lambda!71635 () Bool)

(assert (=> (not b_lambda!71635) (not b!2227646)))

(declare-fun m!2666239 () Bool)

(assert (=> b!2227646 m!2666239))

(declare-fun m!2666241 () Bool)

(assert (=> b!2227647 m!2666241))

(assert (=> b!2227382 d!664718))

(declare-fun d!664720 () Bool)

(declare-fun lt!830264 () ListMap!793)

(assert (=> d!664720 (invariantList!358 (toList!1324 lt!830264))))

(declare-fun extractMap!101 (List!26267) ListMap!793)

(assert (=> d!664720 (= lt!830264 (extractMap!101 (toList!1325 (map!5345 (v!29747 (underlying!6272 (cache!3326 (_2!15150 e!1423432))))))))))

(assert (=> d!664720 (valid!2318 (cache!3326 (_2!15150 e!1423432)))))

(assert (=> d!664720 (= (map!5344 (cache!3326 (_2!15150 e!1423432))) lt!830264)))

(declare-fun bs!453579 () Bool)

(assert (= bs!453579 d!664720))

(declare-fun m!2666243 () Bool)

(assert (=> bs!453579 m!2666243))

(assert (=> bs!453579 m!2666123))

(declare-fun m!2666245 () Bool)

(assert (=> bs!453579 m!2666245))

(assert (=> bs!453579 m!2666019))

(assert (=> b!2227382 d!664720))

(declare-fun bs!453580 () Bool)

(declare-fun d!664722 () Bool)

(assert (= bs!453580 (and d!664722 d!664670)))

(declare-fun lambda!84224 () Int)

(assert (=> bs!453580 (= lambda!84224 lambda!84215)))

(declare-fun bs!453581 () Bool)

(assert (= bs!453581 (and d!664722 d!664708)))

(assert (=> bs!453581 (= lambda!84224 lambda!84222)))

(declare-fun bs!453582 () Bool)

(assert (= bs!453582 (and d!664722 d!664674)))

(assert (=> bs!453582 (= lambda!84224 lambda!84216)))

(declare-fun bs!453583 () Bool)

(assert (= bs!453583 (and d!664722 d!664654)))

(assert (=> bs!453583 (= lambda!84224 lambda!84211)))

(declare-fun bs!453584 () Bool)

(assert (= bs!453584 (and d!664722 d!664690)))

(assert (=> bs!453584 (= lambda!84224 lambda!84220)))

(declare-fun bs!453585 () Bool)

(assert (= bs!453585 (and d!664722 d!664692)))

(assert (=> bs!453585 (= lambda!84224 lambda!84221)))

(assert (=> d!664722 (= (inv!35534 setElem!19924) (forall!5349 (exprs!2445 setElem!19924) lambda!84224))))

(declare-fun bs!453586 () Bool)

(assert (= bs!453586 d!664722))

(declare-fun m!2666247 () Bool)

(assert (=> bs!453586 m!2666247))

(assert (=> setNonEmpty!19924 d!664722))

(declare-fun d!664724 () Bool)

(declare-fun noDuplicatedKeys!68 (List!26266) Bool)

(assert (=> d!664724 (= (invariantList!358 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))) (noDuplicatedKeys!68 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))))))

(declare-fun bs!453587 () Bool)

(assert (= bs!453587 d!664724))

(declare-fun m!2666249 () Bool)

(assert (=> bs!453587 m!2666249))

(assert (=> b!2227381 d!664724))

(assert (=> b!2227381 d!664720))

(declare-fun bs!453588 () Bool)

(declare-fun d!664726 () Bool)

(assert (= bs!453588 (and d!664726 d!664722)))

(declare-fun lambda!84225 () Int)

(assert (=> bs!453588 (= lambda!84225 lambda!84224)))

(declare-fun bs!453589 () Bool)

(assert (= bs!453589 (and d!664726 d!664670)))

(assert (=> bs!453589 (= lambda!84225 lambda!84215)))

(declare-fun bs!453590 () Bool)

(assert (= bs!453590 (and d!664726 d!664708)))

(assert (=> bs!453590 (= lambda!84225 lambda!84222)))

(declare-fun bs!453591 () Bool)

(assert (= bs!453591 (and d!664726 d!664674)))

(assert (=> bs!453591 (= lambda!84225 lambda!84216)))

(declare-fun bs!453592 () Bool)

(assert (= bs!453592 (and d!664726 d!664654)))

(assert (=> bs!453592 (= lambda!84225 lambda!84211)))

(declare-fun bs!453593 () Bool)

(assert (= bs!453593 (and d!664726 d!664690)))

(assert (=> bs!453593 (= lambda!84225 lambda!84220)))

(declare-fun bs!453594 () Bool)

(assert (= bs!453594 (and d!664726 d!664692)))

(assert (=> bs!453594 (= lambda!84225 lambda!84221)))

(assert (=> d!664726 (= (inv!35534 setElem!19923) (forall!5349 (exprs!2445 setElem!19923) lambda!84225))))

(declare-fun bs!453595 () Bool)

(assert (= bs!453595 d!664726))

(declare-fun m!2666251 () Bool)

(assert (=> bs!453595 m!2666251))

(assert (=> setNonEmpty!19923 d!664726))

(declare-fun d!664728 () Bool)

(assert (=> d!664728 (= (nullable!1750 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))) (nullableFct!409 (regOne!13306 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(declare-fun bs!453596 () Bool)

(assert (= bs!453596 d!664728))

(declare-fun m!2666253 () Bool)

(assert (=> bs!453596 m!2666253))

(assert (=> b!2227384 d!664728))

(declare-fun bs!453597 () Bool)

(declare-fun d!664730 () Bool)

(assert (= bs!453597 (and d!664730 d!664722)))

(declare-fun lambda!84226 () Int)

(assert (=> bs!453597 (= lambda!84226 lambda!84224)))

(declare-fun bs!453598 () Bool)

(assert (= bs!453598 (and d!664730 d!664670)))

(assert (=> bs!453598 (= lambda!84226 lambda!84215)))

(declare-fun bs!453599 () Bool)

(assert (= bs!453599 (and d!664730 d!664708)))

(assert (=> bs!453599 (= lambda!84226 lambda!84222)))

(declare-fun bs!453600 () Bool)

(assert (= bs!453600 (and d!664730 d!664674)))

(assert (=> bs!453600 (= lambda!84226 lambda!84216)))

(declare-fun bs!453601 () Bool)

(assert (= bs!453601 (and d!664730 d!664690)))

(assert (=> bs!453601 (= lambda!84226 lambda!84220)))

(declare-fun bs!453602 () Bool)

(assert (= bs!453602 (and d!664730 d!664692)))

(assert (=> bs!453602 (= lambda!84226 lambda!84221)))

(declare-fun bs!453603 () Bool)

(assert (= bs!453603 (and d!664730 d!664654)))

(assert (=> bs!453603 (= lambda!84226 lambda!84211)))

(declare-fun bs!453604 () Bool)

(assert (= bs!453604 (and d!664730 d!664726)))

(assert (=> bs!453604 (= lambda!84226 lambda!84225)))

(assert (=> d!664730 (= (inv!35534 setElem!19922) (forall!5349 (exprs!2445 setElem!19922) lambda!84226))))

(declare-fun bs!453605 () Bool)

(assert (= bs!453605 d!664730))

(declare-fun m!2666255 () Bool)

(assert (=> bs!453605 m!2666255))

(assert (=> setNonEmpty!19922 d!664730))

(declare-fun d!664732 () Bool)

(assert (=> d!664732 (= (nullable!1750 (reg!6726 expr!64)) (nullableFct!409 (reg!6726 expr!64)))))

(declare-fun bs!453606 () Bool)

(assert (= bs!453606 d!664732))

(declare-fun m!2666257 () Bool)

(assert (=> bs!453606 m!2666257))

(assert (=> b!2227368 d!664732))

(declare-fun bs!453607 () Bool)

(declare-fun d!664734 () Bool)

(assert (= bs!453607 (and d!664734 d!664722)))

(declare-fun lambda!84227 () Int)

(assert (=> bs!453607 (= lambda!84227 lambda!84224)))

(declare-fun bs!453608 () Bool)

(assert (= bs!453608 (and d!664734 d!664670)))

(assert (=> bs!453608 (= lambda!84227 lambda!84215)))

(declare-fun bs!453609 () Bool)

(assert (= bs!453609 (and d!664734 d!664708)))

(assert (=> bs!453609 (= lambda!84227 lambda!84222)))

(declare-fun bs!453610 () Bool)

(assert (= bs!453610 (and d!664734 d!664730)))

(assert (=> bs!453610 (= lambda!84227 lambda!84226)))

(declare-fun bs!453611 () Bool)

(assert (= bs!453611 (and d!664734 d!664674)))

(assert (=> bs!453611 (= lambda!84227 lambda!84216)))

(declare-fun bs!453612 () Bool)

(assert (= bs!453612 (and d!664734 d!664690)))

(assert (=> bs!453612 (= lambda!84227 lambda!84220)))

(declare-fun bs!453613 () Bool)

(assert (= bs!453613 (and d!664734 d!664692)))

(assert (=> bs!453613 (= lambda!84227 lambda!84221)))

(declare-fun bs!453614 () Bool)

(assert (= bs!453614 (and d!664734 d!664654)))

(assert (=> bs!453614 (= lambda!84227 lambda!84211)))

(declare-fun bs!453615 () Bool)

(assert (= bs!453615 (and d!664734 d!664726)))

(assert (=> bs!453615 (= lambda!84227 lambda!84225)))

(assert (=> d!664734 (= (inv!35534 (_2!15148 (_1!15149 (h!31573 mapDefault!14301)))) (forall!5349 (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapDefault!14301)))) lambda!84227))))

(declare-fun bs!453616 () Bool)

(assert (= bs!453616 d!664734))

(declare-fun m!2666259 () Bool)

(assert (=> bs!453616 m!2666259))

(assert (=> b!2227462 d!664734))

(declare-fun d!664736 () Bool)

(assert (=> d!664736 (= (nullable!1750 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))) (nullableFct!409 (regOne!13306 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))))))))

(declare-fun bs!453617 () Bool)

(assert (= bs!453617 d!664736))

(declare-fun m!2666261 () Bool)

(assert (=> bs!453617 m!2666261))

(assert (=> b!2227333 d!664736))

(declare-fun bs!453618 () Bool)

(declare-fun d!664738 () Bool)

(assert (= bs!453618 (and d!664738 d!664722)))

(declare-fun lambda!84228 () Int)

(assert (=> bs!453618 (= lambda!84228 lambda!84224)))

(declare-fun bs!453619 () Bool)

(assert (= bs!453619 (and d!664738 d!664670)))

(assert (=> bs!453619 (= lambda!84228 lambda!84215)))

(declare-fun bs!453620 () Bool)

(assert (= bs!453620 (and d!664738 d!664734)))

(assert (=> bs!453620 (= lambda!84228 lambda!84227)))

(declare-fun bs!453621 () Bool)

(assert (= bs!453621 (and d!664738 d!664708)))

(assert (=> bs!453621 (= lambda!84228 lambda!84222)))

(declare-fun bs!453622 () Bool)

(assert (= bs!453622 (and d!664738 d!664730)))

(assert (=> bs!453622 (= lambda!84228 lambda!84226)))

(declare-fun bs!453623 () Bool)

(assert (= bs!453623 (and d!664738 d!664674)))

(assert (=> bs!453623 (= lambda!84228 lambda!84216)))

(declare-fun bs!453624 () Bool)

(assert (= bs!453624 (and d!664738 d!664690)))

(assert (=> bs!453624 (= lambda!84228 lambda!84220)))

(declare-fun bs!453625 () Bool)

(assert (= bs!453625 (and d!664738 d!664692)))

(assert (=> bs!453625 (= lambda!84228 lambda!84221)))

(declare-fun bs!453626 () Bool)

(assert (= bs!453626 (and d!664738 d!664654)))

(assert (=> bs!453626 (= lambda!84228 lambda!84211)))

(declare-fun bs!453627 () Bool)

(assert (= bs!453627 (and d!664738 d!664726)))

(assert (=> bs!453627 (= lambda!84228 lambda!84225)))

(assert (=> d!664738 (= (inv!35534 (_2!15148 (_1!15149 (h!31573 mapDefault!14298)))) (forall!5349 (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapDefault!14298)))) lambda!84228))))

(declare-fun bs!453628 () Bool)

(assert (= bs!453628 d!664738))

(declare-fun m!2666263 () Bool)

(assert (=> bs!453628 m!2666263))

(assert (=> b!2227447 d!664738))

(declare-fun bs!453629 () Bool)

(declare-fun d!664740 () Bool)

(assert (= bs!453629 (and d!664740 d!664722)))

(declare-fun lambda!84229 () Int)

(assert (=> bs!453629 (= lambda!84229 lambda!84224)))

(declare-fun bs!453630 () Bool)

(assert (= bs!453630 (and d!664740 d!664670)))

(assert (=> bs!453630 (= lambda!84229 lambda!84215)))

(declare-fun bs!453631 () Bool)

(assert (= bs!453631 (and d!664740 d!664734)))

(assert (=> bs!453631 (= lambda!84229 lambda!84227)))

(declare-fun bs!453632 () Bool)

(assert (= bs!453632 (and d!664740 d!664738)))

(assert (=> bs!453632 (= lambda!84229 lambda!84228)))

(declare-fun bs!453633 () Bool)

(assert (= bs!453633 (and d!664740 d!664708)))

(assert (=> bs!453633 (= lambda!84229 lambda!84222)))

(declare-fun bs!453634 () Bool)

(assert (= bs!453634 (and d!664740 d!664730)))

(assert (=> bs!453634 (= lambda!84229 lambda!84226)))

(declare-fun bs!453635 () Bool)

(assert (= bs!453635 (and d!664740 d!664674)))

(assert (=> bs!453635 (= lambda!84229 lambda!84216)))

(declare-fun bs!453636 () Bool)

(assert (= bs!453636 (and d!664740 d!664690)))

(assert (=> bs!453636 (= lambda!84229 lambda!84220)))

(declare-fun bs!453637 () Bool)

(assert (= bs!453637 (and d!664740 d!664692)))

(assert (=> bs!453637 (= lambda!84229 lambda!84221)))

(declare-fun bs!453638 () Bool)

(assert (= bs!453638 (and d!664740 d!664654)))

(assert (=> bs!453638 (= lambda!84229 lambda!84211)))

(declare-fun bs!453639 () Bool)

(assert (= bs!453639 (and d!664740 d!664726)))

(assert (=> bs!453639 (= lambda!84229 lambda!84225)))

(assert (=> d!664740 (= (inv!35534 (_2!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))) (forall!5349 (exprs!2445 (_2!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))) lambda!84229))))

(declare-fun bs!453640 () Bool)

(assert (= bs!453640 d!664740))

(declare-fun m!2666265 () Bool)

(assert (=> bs!453640 m!2666265))

(assert (=> b!2227444 d!664740))

(declare-fun bs!453641 () Bool)

(declare-fun d!664742 () Bool)

(assert (= bs!453641 (and d!664742 d!664722)))

(declare-fun lambda!84230 () Int)

(assert (=> bs!453641 (= lambda!84230 lambda!84224)))

(declare-fun bs!453642 () Bool)

(assert (= bs!453642 (and d!664742 d!664670)))

(assert (=> bs!453642 (= lambda!84230 lambda!84215)))

(declare-fun bs!453643 () Bool)

(assert (= bs!453643 (and d!664742 d!664734)))

(assert (=> bs!453643 (= lambda!84230 lambda!84227)))

(declare-fun bs!453644 () Bool)

(assert (= bs!453644 (and d!664742 d!664738)))

(assert (=> bs!453644 (= lambda!84230 lambda!84228)))

(declare-fun bs!453645 () Bool)

(assert (= bs!453645 (and d!664742 d!664708)))

(assert (=> bs!453645 (= lambda!84230 lambda!84222)))

(declare-fun bs!453646 () Bool)

(assert (= bs!453646 (and d!664742 d!664730)))

(assert (=> bs!453646 (= lambda!84230 lambda!84226)))

(declare-fun bs!453647 () Bool)

(assert (= bs!453647 (and d!664742 d!664740)))

(assert (=> bs!453647 (= lambda!84230 lambda!84229)))

(declare-fun bs!453648 () Bool)

(assert (= bs!453648 (and d!664742 d!664674)))

(assert (=> bs!453648 (= lambda!84230 lambda!84216)))

(declare-fun bs!453649 () Bool)

(assert (= bs!453649 (and d!664742 d!664690)))

(assert (=> bs!453649 (= lambda!84230 lambda!84220)))

(declare-fun bs!453650 () Bool)

(assert (= bs!453650 (and d!664742 d!664692)))

(assert (=> bs!453650 (= lambda!84230 lambda!84221)))

(declare-fun bs!453651 () Bool)

(assert (= bs!453651 (and d!664742 d!664654)))

(assert (=> bs!453651 (= lambda!84230 lambda!84211)))

(declare-fun bs!453652 () Bool)

(assert (= bs!453652 (and d!664742 d!664726)))

(assert (=> bs!453652 (= lambda!84230 lambda!84225)))

(assert (=> d!664742 (= (inv!35534 (_2!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))) (forall!5349 (exprs!2445 (_2!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))) lambda!84230))))

(declare-fun bs!453653 () Bool)

(assert (= bs!453653 d!664742))

(declare-fun m!2666267 () Bool)

(assert (=> bs!453653 m!2666267))

(assert (=> b!2227441 d!664742))

(declare-fun b!2227648 () Bool)

(declare-fun res!954918 () Bool)

(declare-fun e!1423662 () Bool)

(assert (=> b!2227648 (=> (not res!954918) (not e!1423662))))

(declare-fun call!133496 () Bool)

(assert (=> b!2227648 (= res!954918 call!133496)))

(declare-fun e!1423665 () Bool)

(assert (=> b!2227648 (= e!1423665 e!1423662)))

(declare-fun b!2227649 () Bool)

(declare-fun e!1423666 () Bool)

(declare-fun e!1423660 () Bool)

(assert (=> b!2227649 (= e!1423666 e!1423660)))

(declare-fun res!954920 () Bool)

(assert (=> b!2227649 (=> (not res!954920) (not e!1423660))))

(assert (=> b!2227649 (= res!954920 call!133496)))

(declare-fun d!664744 () Bool)

(declare-fun res!954919 () Bool)

(declare-fun e!1423664 () Bool)

(assert (=> d!664744 (=> res!954919 e!1423664)))

(assert (=> d!664744 (= res!954919 ((_ is ElementMatch!6397) (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(assert (=> d!664744 (= (validRegex!2374 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))) e!1423664)))

(declare-fun b!2227650 () Bool)

(declare-fun e!1423661 () Bool)

(assert (=> b!2227650 (= e!1423664 e!1423661)))

(declare-fun c!355459 () Bool)

(assert (=> b!2227650 (= c!355459 ((_ is Star!6397) (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun bm!133490 () Bool)

(declare-fun c!355458 () Bool)

(assert (=> bm!133490 (= call!133496 (validRegex!2374 (ite c!355458 (regOne!13307 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regOne!13306 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(declare-fun b!2227651 () Bool)

(declare-fun call!133495 () Bool)

(assert (=> b!2227651 (= e!1423662 call!133495)))

(declare-fun b!2227652 () Bool)

(assert (=> b!2227652 (= e!1423660 call!133495)))

(declare-fun b!2227653 () Bool)

(declare-fun e!1423663 () Bool)

(assert (=> b!2227653 (= e!1423661 e!1423663)))

(declare-fun res!954921 () Bool)

(assert (=> b!2227653 (= res!954921 (not (nullable!1750 (reg!6726 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))))))))

(assert (=> b!2227653 (=> (not res!954921) (not e!1423663))))

(declare-fun b!2227654 () Bool)

(declare-fun res!954917 () Bool)

(assert (=> b!2227654 (=> res!954917 e!1423666)))

(assert (=> b!2227654 (= res!954917 (not ((_ is Concat!10735) (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))

(assert (=> b!2227654 (= e!1423665 e!1423666)))

(declare-fun bm!133491 () Bool)

(declare-fun call!133497 () Bool)

(assert (=> bm!133491 (= call!133495 call!133497)))

(declare-fun b!2227655 () Bool)

(assert (=> b!2227655 (= e!1423661 e!1423665)))

(assert (=> b!2227655 (= c!355458 ((_ is Union!6397) (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))))))

(declare-fun bm!133492 () Bool)

(assert (=> bm!133492 (= call!133497 (validRegex!2374 (ite c!355459 (reg!6726 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))) (ite c!355458 (regTwo!13307 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64))) (regTwo!13306 (ite c!355392 (regOne!13307 expr!64) (regOne!13306 expr!64)))))))))

(declare-fun b!2227656 () Bool)

(assert (=> b!2227656 (= e!1423663 call!133497)))

(assert (= (and d!664744 (not res!954919)) b!2227650))

(assert (= (and b!2227650 c!355459) b!2227653))

(assert (= (and b!2227650 (not c!355459)) b!2227655))

(assert (= (and b!2227653 res!954921) b!2227656))

(assert (= (and b!2227655 c!355458) b!2227648))

(assert (= (and b!2227655 (not c!355458)) b!2227654))

(assert (= (and b!2227648 res!954918) b!2227651))

(assert (= (and b!2227654 (not res!954917)) b!2227649))

(assert (= (and b!2227649 res!954920) b!2227652))

(assert (= (or b!2227651 b!2227652) bm!133491))

(assert (= (or b!2227648 b!2227649) bm!133490))

(assert (= (or b!2227656 bm!133491) bm!133492))

(declare-fun m!2666269 () Bool)

(assert (=> bm!133490 m!2666269))

(declare-fun m!2666271 () Bool)

(assert (=> b!2227653 m!2666271))

(declare-fun m!2666273 () Bool)

(assert (=> bm!133492 m!2666273))

(assert (=> bm!133412 d!664744))

(declare-fun d!664746 () Bool)

(assert (=> d!664746 (= (isEmpty!14887 lt!830183) (not ((_ is Some!5086) lt!830183)))))

(assert (=> d!664644 d!664746))

(declare-fun tp!696689 () Bool)

(declare-fun setRes!19934 () Bool)

(declare-fun e!1423674 () Bool)

(declare-fun setNonEmpty!19934 () Bool)

(declare-fun setElem!19934 () Context!3890)

(assert (=> setNonEmpty!19934 (= setRes!19934 (and tp!696689 (inv!35534 setElem!19934) e!1423674))))

(declare-fun res!954926 () Option!5087)

(declare-fun setRest!19934 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19934 (= (v!29748 res!954926) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19934 true) setRest!19934))))

(declare-fun e!1423675 () Bool)

(declare-fun b!2227663 () Bool)

(assert (=> b!2227663 (= e!1423675 (= (get!7879 res!954926) (derivationStepZipperDown!37 expr!64 context!86 a!1167)))))

(declare-fun b!2227664 () Bool)

(declare-fun e!1423673 () Bool)

(assert (=> b!2227664 (= e!1423673 setRes!19934)))

(declare-fun condSetEmpty!19934 () Bool)

(assert (=> b!2227664 (= condSetEmpty!19934 (= (v!29748 res!954926) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setIsEmpty!19934 () Bool)

(assert (=> setIsEmpty!19934 setRes!19934))

(declare-fun d!664748 () Bool)

(assert (=> d!664748 e!1423675))

(declare-fun res!954927 () Bool)

(assert (=> d!664748 (=> res!954927 e!1423675)))

(assert (=> d!664748 (= res!954927 (isEmpty!14887 res!954926))))

(assert (=> d!664748 e!1423673))

(assert (=> d!664748 (= (choose!13117 cacheDown!839 expr!64 context!86 a!1167) res!954926)))

(declare-fun b!2227665 () Bool)

(declare-fun tp!696688 () Bool)

(assert (=> b!2227665 (= e!1423674 tp!696688)))

(assert (= (and b!2227664 condSetEmpty!19934) setIsEmpty!19934))

(assert (= (and b!2227664 (not condSetEmpty!19934)) setNonEmpty!19934))

(assert (= setNonEmpty!19934 b!2227665))

(assert (= (and d!664748 ((_ is Some!5086) res!954926)) b!2227664))

(assert (= (and d!664748 (not res!954927)) b!2227663))

(declare-fun m!2666275 () Bool)

(assert (=> setNonEmpty!19934 m!2666275))

(declare-fun m!2666277 () Bool)

(assert (=> b!2227663 m!2666277))

(assert (=> b!2227663 m!2665988))

(declare-fun m!2666279 () Bool)

(assert (=> d!664748 m!2666279))

(assert (=> d!664644 d!664748))

(assert (=> d!664644 d!664712))

(declare-fun b!2227668 () Bool)

(declare-fun e!1423676 () Bool)

(declare-fun tp!696691 () Bool)

(assert (=> b!2227668 (= e!1423676 tp!696691)))

(declare-fun b!2227666 () Bool)

(assert (=> b!2227666 (= e!1423676 tp_is_empty!10019)))

(assert (=> b!2227400 (= tp!696584 e!1423676)))

(declare-fun b!2227667 () Bool)

(declare-fun tp!696692 () Bool)

(declare-fun tp!696690 () Bool)

(assert (=> b!2227667 (= e!1423676 (and tp!696692 tp!696690))))

(declare-fun b!2227669 () Bool)

(declare-fun tp!696694 () Bool)

(declare-fun tp!696693 () Bool)

(assert (=> b!2227669 (= e!1423676 (and tp!696694 tp!696693))))

(assert (= (and b!2227400 ((_ is ElementMatch!6397) (h!31572 (exprs!2445 context!86)))) b!2227666))

(assert (= (and b!2227400 ((_ is Concat!10735) (h!31572 (exprs!2445 context!86)))) b!2227667))

(assert (= (and b!2227400 ((_ is Star!6397) (h!31572 (exprs!2445 context!86)))) b!2227668))

(assert (= (and b!2227400 ((_ is Union!6397) (h!31572 (exprs!2445 context!86)))) b!2227669))

(declare-fun b!2227670 () Bool)

(declare-fun e!1423677 () Bool)

(declare-fun tp!696695 () Bool)

(declare-fun tp!696696 () Bool)

(assert (=> b!2227670 (= e!1423677 (and tp!696695 tp!696696))))

(assert (=> b!2227400 (= tp!696585 e!1423677)))

(assert (= (and b!2227400 ((_ is Cons!26171) (t!199677 (exprs!2445 context!86)))) b!2227670))

(declare-fun b!2227673 () Bool)

(declare-fun e!1423678 () Bool)

(declare-fun tp!696698 () Bool)

(assert (=> b!2227673 (= e!1423678 tp!696698)))

(declare-fun b!2227671 () Bool)

(assert (=> b!2227671 (= e!1423678 tp_is_empty!10019)))

(assert (=> b!2227470 (= tp!696682 e!1423678)))

(declare-fun b!2227672 () Bool)

(declare-fun tp!696699 () Bool)

(declare-fun tp!696697 () Bool)

(assert (=> b!2227672 (= e!1423678 (and tp!696699 tp!696697))))

(declare-fun b!2227674 () Bool)

(declare-fun tp!696701 () Bool)

(declare-fun tp!696700 () Bool)

(assert (=> b!2227674 (= e!1423678 (and tp!696701 tp!696700))))

(assert (= (and b!2227470 ((_ is ElementMatch!6397) (_1!15148 (_1!15149 (h!31573 mapValue!14298))))) b!2227671))

(assert (= (and b!2227470 ((_ is Concat!10735) (_1!15148 (_1!15149 (h!31573 mapValue!14298))))) b!2227672))

(assert (= (and b!2227470 ((_ is Star!6397) (_1!15148 (_1!15149 (h!31573 mapValue!14298))))) b!2227673))

(assert (= (and b!2227470 ((_ is Union!6397) (_1!15148 (_1!15149 (h!31573 mapValue!14298))))) b!2227674))

(declare-fun setIsEmpty!19935 () Bool)

(declare-fun setRes!19935 () Bool)

(assert (=> setIsEmpty!19935 setRes!19935))

(declare-fun e!1423680 () Bool)

(assert (=> b!2227470 (= tp!696683 e!1423680)))

(declare-fun b!2227675 () Bool)

(declare-fun e!1423681 () Bool)

(declare-fun tp!696702 () Bool)

(assert (=> b!2227675 (= e!1423681 tp!696702)))

(declare-fun b!2227676 () Bool)

(declare-fun e!1423679 () Bool)

(declare-fun tp!696703 () Bool)

(assert (=> b!2227676 (= e!1423679 tp!696703)))

(declare-fun tp!696705 () Bool)

(declare-fun tp!696706 () Bool)

(declare-fun b!2227677 () Bool)

(assert (=> b!2227677 (= e!1423680 (and tp!696705 (inv!35534 (_2!15148 (_1!15149 (h!31573 (t!199678 mapValue!14298))))) e!1423679 tp_is_empty!10019 setRes!19935 tp!696706))))

(declare-fun condSetEmpty!19935 () Bool)

(assert (=> b!2227677 (= condSetEmpty!19935 (= (_2!15149 (h!31573 (t!199678 mapValue!14298))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setElem!19935 () Context!3890)

(declare-fun setNonEmpty!19935 () Bool)

(declare-fun tp!696704 () Bool)

(assert (=> setNonEmpty!19935 (= setRes!19935 (and tp!696704 (inv!35534 setElem!19935) e!1423681))))

(declare-fun setRest!19935 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19935 (= (_2!15149 (h!31573 (t!199678 mapValue!14298))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19935 true) setRest!19935))))

(assert (= b!2227677 b!2227676))

(assert (= (and b!2227677 condSetEmpty!19935) setIsEmpty!19935))

(assert (= (and b!2227677 (not condSetEmpty!19935)) setNonEmpty!19935))

(assert (= setNonEmpty!19935 b!2227675))

(assert (= (and b!2227470 ((_ is Cons!26172) (t!199678 mapValue!14298))) b!2227677))

(declare-fun m!2666281 () Bool)

(assert (=> b!2227677 m!2666281))

(declare-fun m!2666283 () Bool)

(assert (=> setNonEmpty!19935 m!2666283))

(declare-fun b!2227678 () Bool)

(declare-fun e!1423682 () Bool)

(declare-fun tp!696707 () Bool)

(declare-fun tp!696708 () Bool)

(assert (=> b!2227678 (= e!1423682 (and tp!696707 tp!696708))))

(assert (=> b!2227468 (= tp!696679 e!1423682)))

(assert (= (and b!2227468 ((_ is Cons!26171) (exprs!2445 setElem!19931))) b!2227678))

(declare-fun b!2227689 () Bool)

(declare-fun e!1423691 () Bool)

(declare-fun lt!830267 () MutLongMap!3035)

(assert (=> b!2227689 (= e!1423691 ((_ is LongMap!3035) lt!830267))))

(assert (=> b!2227689 (= lt!830267 (v!29747 (underlying!6272 (cache!3326 (_2!15150 (derivationStepZipperDownMem!14 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 cacheDown!839))))))))

(declare-fun b!2227688 () Bool)

(declare-fun e!1423690 () Bool)

(assert (=> b!2227688 (= e!1423690 e!1423691)))

(declare-fun b!2227687 () Bool)

(declare-fun e!1423689 () Bool)

(assert (=> b!2227687 (= e!1423689 e!1423690)))

(assert (=> d!664662 (= true e!1423689)))

(assert (= b!2227688 b!2227689))

(assert (= (and b!2227687 ((_ is HashMap!2945) (cache!3326 (_2!15150 (derivationStepZipperDownMem!14 (ite c!355367 (regOne!13307 expr!64) (regOne!13306 expr!64)) (ite c!355367 context!86 (Context!3891 call!133389)) a!1167 cacheDown!839))))) b!2227688))

(assert (= d!664662 b!2227687))

(declare-fun b!2227692 () Bool)

(declare-fun e!1423692 () Bool)

(declare-fun tp!696710 () Bool)

(assert (=> b!2227692 (= e!1423692 tp!696710)))

(declare-fun b!2227690 () Bool)

(assert (=> b!2227690 (= e!1423692 tp_is_empty!10019)))

(assert (=> b!2227466 (= tp!696671 e!1423692)))

(declare-fun b!2227691 () Bool)

(declare-fun tp!696711 () Bool)

(declare-fun tp!696709 () Bool)

(assert (=> b!2227691 (= e!1423692 (and tp!696711 tp!696709))))

(declare-fun b!2227693 () Bool)

(declare-fun tp!696713 () Bool)

(declare-fun tp!696712 () Bool)

(assert (=> b!2227693 (= e!1423692 (and tp!696713 tp!696712))))

(assert (= (and b!2227466 ((_ is ElementMatch!6397) (_1!15148 (_1!15149 (h!31573 mapValue!14301))))) b!2227690))

(assert (= (and b!2227466 ((_ is Concat!10735) (_1!15148 (_1!15149 (h!31573 mapValue!14301))))) b!2227691))

(assert (= (and b!2227466 ((_ is Star!6397) (_1!15148 (_1!15149 (h!31573 mapValue!14301))))) b!2227692))

(assert (= (and b!2227466 ((_ is Union!6397) (_1!15148 (_1!15149 (h!31573 mapValue!14301))))) b!2227693))

(declare-fun setIsEmpty!19936 () Bool)

(declare-fun setRes!19936 () Bool)

(assert (=> setIsEmpty!19936 setRes!19936))

(declare-fun e!1423694 () Bool)

(assert (=> b!2227466 (= tp!696678 e!1423694)))

(declare-fun b!2227694 () Bool)

(declare-fun e!1423695 () Bool)

(declare-fun tp!696714 () Bool)

(assert (=> b!2227694 (= e!1423695 tp!696714)))

(declare-fun b!2227695 () Bool)

(declare-fun e!1423693 () Bool)

(declare-fun tp!696715 () Bool)

(assert (=> b!2227695 (= e!1423693 tp!696715)))

(declare-fun tp!696718 () Bool)

(declare-fun b!2227696 () Bool)

(declare-fun tp!696717 () Bool)

(assert (=> b!2227696 (= e!1423694 (and tp!696717 (inv!35534 (_2!15148 (_1!15149 (h!31573 (t!199678 mapValue!14301))))) e!1423693 tp_is_empty!10019 setRes!19936 tp!696718))))

(declare-fun condSetEmpty!19936 () Bool)

(assert (=> b!2227696 (= condSetEmpty!19936 (= (_2!15149 (h!31573 (t!199678 mapValue!14301))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setElem!19936 () Context!3890)

(declare-fun tp!696716 () Bool)

(declare-fun setNonEmpty!19936 () Bool)

(assert (=> setNonEmpty!19936 (= setRes!19936 (and tp!696716 (inv!35534 setElem!19936) e!1423695))))

(declare-fun setRest!19936 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19936 (= (_2!15149 (h!31573 (t!199678 mapValue!14301))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19936 true) setRest!19936))))

(assert (= b!2227696 b!2227695))

(assert (= (and b!2227696 condSetEmpty!19936) setIsEmpty!19936))

(assert (= (and b!2227696 (not condSetEmpty!19936)) setNonEmpty!19936))

(assert (= setNonEmpty!19936 b!2227694))

(assert (= (and b!2227466 ((_ is Cons!26172) (t!199678 mapValue!14301))) b!2227696))

(declare-fun m!2666285 () Bool)

(assert (=> b!2227696 m!2666285))

(declare-fun m!2666287 () Bool)

(assert (=> setNonEmpty!19936 m!2666287))

(declare-fun b!2227699 () Bool)

(declare-fun e!1423696 () Bool)

(declare-fun tp!696720 () Bool)

(assert (=> b!2227699 (= e!1423696 tp!696720)))

(declare-fun b!2227697 () Bool)

(assert (=> b!2227697 (= e!1423696 tp_is_empty!10019)))

(assert (=> b!2227414 (= tp!696600 e!1423696)))

(declare-fun b!2227698 () Bool)

(declare-fun tp!696721 () Bool)

(declare-fun tp!696719 () Bool)

(assert (=> b!2227698 (= e!1423696 (and tp!696721 tp!696719))))

(declare-fun b!2227700 () Bool)

(declare-fun tp!696723 () Bool)

(declare-fun tp!696722 () Bool)

(assert (=> b!2227700 (= e!1423696 (and tp!696723 tp!696722))))

(assert (= (and b!2227414 ((_ is ElementMatch!6397) (regOne!13307 (regOne!13307 expr!64)))) b!2227697))

(assert (= (and b!2227414 ((_ is Concat!10735) (regOne!13307 (regOne!13307 expr!64)))) b!2227698))

(assert (= (and b!2227414 ((_ is Star!6397) (regOne!13307 (regOne!13307 expr!64)))) b!2227699))

(assert (= (and b!2227414 ((_ is Union!6397) (regOne!13307 (regOne!13307 expr!64)))) b!2227700))

(declare-fun b!2227703 () Bool)

(declare-fun e!1423697 () Bool)

(declare-fun tp!696725 () Bool)

(assert (=> b!2227703 (= e!1423697 tp!696725)))

(declare-fun b!2227701 () Bool)

(assert (=> b!2227701 (= e!1423697 tp_is_empty!10019)))

(assert (=> b!2227414 (= tp!696599 e!1423697)))

(declare-fun b!2227702 () Bool)

(declare-fun tp!696726 () Bool)

(declare-fun tp!696724 () Bool)

(assert (=> b!2227702 (= e!1423697 (and tp!696726 tp!696724))))

(declare-fun b!2227704 () Bool)

(declare-fun tp!696728 () Bool)

(declare-fun tp!696727 () Bool)

(assert (=> b!2227704 (= e!1423697 (and tp!696728 tp!696727))))

(assert (= (and b!2227414 ((_ is ElementMatch!6397) (regTwo!13307 (regOne!13307 expr!64)))) b!2227701))

(assert (= (and b!2227414 ((_ is Concat!10735) (regTwo!13307 (regOne!13307 expr!64)))) b!2227702))

(assert (= (and b!2227414 ((_ is Star!6397) (regTwo!13307 (regOne!13307 expr!64)))) b!2227703))

(assert (= (and b!2227414 ((_ is Union!6397) (regTwo!13307 (regOne!13307 expr!64)))) b!2227704))

(declare-fun b!2227707 () Bool)

(declare-fun e!1423698 () Bool)

(declare-fun tp!696730 () Bool)

(assert (=> b!2227707 (= e!1423698 tp!696730)))

(declare-fun b!2227705 () Bool)

(assert (=> b!2227705 (= e!1423698 tp_is_empty!10019)))

(assert (=> b!2227421 (= tp!696607 e!1423698)))

(declare-fun b!2227706 () Bool)

(declare-fun tp!696731 () Bool)

(declare-fun tp!696729 () Bool)

(assert (=> b!2227706 (= e!1423698 (and tp!696731 tp!696729))))

(declare-fun b!2227708 () Bool)

(declare-fun tp!696733 () Bool)

(declare-fun tp!696732 () Bool)

(assert (=> b!2227708 (= e!1423698 (and tp!696733 tp!696732))))

(assert (= (and b!2227421 ((_ is ElementMatch!6397) (reg!6726 (reg!6726 expr!64)))) b!2227705))

(assert (= (and b!2227421 ((_ is Concat!10735) (reg!6726 (reg!6726 expr!64)))) b!2227706))

(assert (= (and b!2227421 ((_ is Star!6397) (reg!6726 (reg!6726 expr!64)))) b!2227707))

(assert (= (and b!2227421 ((_ is Union!6397) (reg!6726 (reg!6726 expr!64)))) b!2227708))

(declare-fun condSetEmpty!19939 () Bool)

(assert (=> setNonEmpty!19930 (= condSetEmpty!19939 (= setRest!19929 ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setRes!19939 () Bool)

(assert (=> setNonEmpty!19930 (= tp!696675 setRes!19939)))

(declare-fun setIsEmpty!19939 () Bool)

(assert (=> setIsEmpty!19939 setRes!19939))

(declare-fun e!1423701 () Bool)

(declare-fun tp!696738 () Bool)

(declare-fun setElem!19939 () Context!3890)

(declare-fun setNonEmpty!19939 () Bool)

(assert (=> setNonEmpty!19939 (= setRes!19939 (and tp!696738 (inv!35534 setElem!19939) e!1423701))))

(declare-fun setRest!19939 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19939 (= setRest!19929 ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19939 true) setRest!19939))))

(declare-fun b!2227713 () Bool)

(declare-fun tp!696739 () Bool)

(assert (=> b!2227713 (= e!1423701 tp!696739)))

(assert (= (and setNonEmpty!19930 condSetEmpty!19939) setIsEmpty!19939))

(assert (= (and setNonEmpty!19930 (not condSetEmpty!19939)) setNonEmpty!19939))

(assert (= setNonEmpty!19939 b!2227713))

(declare-fun m!2666289 () Bool)

(assert (=> setNonEmpty!19939 m!2666289))

(declare-fun b!2227716 () Bool)

(declare-fun e!1423702 () Bool)

(declare-fun tp!696741 () Bool)

(assert (=> b!2227716 (= e!1423702 tp!696741)))

(declare-fun b!2227714 () Bool)

(assert (=> b!2227714 (= e!1423702 tp_is_empty!10019)))

(assert (=> b!2227412 (= tp!696598 e!1423702)))

(declare-fun b!2227715 () Bool)

(declare-fun tp!696742 () Bool)

(declare-fun tp!696740 () Bool)

(assert (=> b!2227715 (= e!1423702 (and tp!696742 tp!696740))))

(declare-fun b!2227717 () Bool)

(declare-fun tp!696744 () Bool)

(declare-fun tp!696743 () Bool)

(assert (=> b!2227717 (= e!1423702 (and tp!696744 tp!696743))))

(assert (= (and b!2227412 ((_ is ElementMatch!6397) (regOne!13306 (regOne!13307 expr!64)))) b!2227714))

(assert (= (and b!2227412 ((_ is Concat!10735) (regOne!13306 (regOne!13307 expr!64)))) b!2227715))

(assert (= (and b!2227412 ((_ is Star!6397) (regOne!13306 (regOne!13307 expr!64)))) b!2227716))

(assert (= (and b!2227412 ((_ is Union!6397) (regOne!13306 (regOne!13307 expr!64)))) b!2227717))

(declare-fun b!2227720 () Bool)

(declare-fun e!1423703 () Bool)

(declare-fun tp!696746 () Bool)

(assert (=> b!2227720 (= e!1423703 tp!696746)))

(declare-fun b!2227718 () Bool)

(assert (=> b!2227718 (= e!1423703 tp_is_empty!10019)))

(assert (=> b!2227412 (= tp!696596 e!1423703)))

(declare-fun b!2227719 () Bool)

(declare-fun tp!696747 () Bool)

(declare-fun tp!696745 () Bool)

(assert (=> b!2227719 (= e!1423703 (and tp!696747 tp!696745))))

(declare-fun b!2227721 () Bool)

(declare-fun tp!696749 () Bool)

(declare-fun tp!696748 () Bool)

(assert (=> b!2227721 (= e!1423703 (and tp!696749 tp!696748))))

(assert (= (and b!2227412 ((_ is ElementMatch!6397) (regTwo!13306 (regOne!13307 expr!64)))) b!2227718))

(assert (= (and b!2227412 ((_ is Concat!10735) (regTwo!13306 (regOne!13307 expr!64)))) b!2227719))

(assert (= (and b!2227412 ((_ is Star!6397) (regTwo!13306 (regOne!13307 expr!64)))) b!2227720))

(assert (= (and b!2227412 ((_ is Union!6397) (regTwo!13306 (regOne!13307 expr!64)))) b!2227721))

(declare-fun b!2227724 () Bool)

(declare-fun e!1423704 () Bool)

(declare-fun tp!696751 () Bool)

(assert (=> b!2227724 (= e!1423704 tp!696751)))

(declare-fun b!2227722 () Bool)

(assert (=> b!2227722 (= e!1423704 tp_is_empty!10019)))

(assert (=> b!2227430 (= tp!696620 e!1423704)))

(declare-fun b!2227723 () Bool)

(declare-fun tp!696752 () Bool)

(declare-fun tp!696750 () Bool)

(assert (=> b!2227723 (= e!1423704 (and tp!696752 tp!696750))))

(declare-fun b!2227725 () Bool)

(declare-fun tp!696754 () Bool)

(declare-fun tp!696753 () Bool)

(assert (=> b!2227725 (= e!1423704 (and tp!696754 tp!696753))))

(assert (= (and b!2227430 ((_ is ElementMatch!6397) (regOne!13307 (regTwo!13306 expr!64)))) b!2227722))

(assert (= (and b!2227430 ((_ is Concat!10735) (regOne!13307 (regTwo!13306 expr!64)))) b!2227723))

(assert (= (and b!2227430 ((_ is Star!6397) (regOne!13307 (regTwo!13306 expr!64)))) b!2227724))

(assert (= (and b!2227430 ((_ is Union!6397) (regOne!13307 (regTwo!13306 expr!64)))) b!2227725))

(declare-fun b!2227728 () Bool)

(declare-fun e!1423705 () Bool)

(declare-fun tp!696756 () Bool)

(assert (=> b!2227728 (= e!1423705 tp!696756)))

(declare-fun b!2227726 () Bool)

(assert (=> b!2227726 (= e!1423705 tp_is_empty!10019)))

(assert (=> b!2227430 (= tp!696619 e!1423705)))

(declare-fun b!2227727 () Bool)

(declare-fun tp!696757 () Bool)

(declare-fun tp!696755 () Bool)

(assert (=> b!2227727 (= e!1423705 (and tp!696757 tp!696755))))

(declare-fun b!2227729 () Bool)

(declare-fun tp!696759 () Bool)

(declare-fun tp!696758 () Bool)

(assert (=> b!2227729 (= e!1423705 (and tp!696759 tp!696758))))

(assert (= (and b!2227430 ((_ is ElementMatch!6397) (regTwo!13307 (regTwo!13306 expr!64)))) b!2227726))

(assert (= (and b!2227430 ((_ is Concat!10735) (regTwo!13307 (regTwo!13306 expr!64)))) b!2227727))

(assert (= (and b!2227430 ((_ is Star!6397) (regTwo!13307 (regTwo!13306 expr!64)))) b!2227728))

(assert (= (and b!2227430 ((_ is Union!6397) (regTwo!13307 (regTwo!13306 expr!64)))) b!2227729))

(declare-fun b!2227732 () Bool)

(declare-fun e!1423706 () Bool)

(declare-fun tp!696761 () Bool)

(assert (=> b!2227732 (= e!1423706 tp!696761)))

(declare-fun b!2227730 () Bool)

(assert (=> b!2227730 (= e!1423706 tp_is_empty!10019)))

(assert (=> b!2227462 (= tp!696673 e!1423706)))

(declare-fun b!2227731 () Bool)

(declare-fun tp!696762 () Bool)

(declare-fun tp!696760 () Bool)

(assert (=> b!2227731 (= e!1423706 (and tp!696762 tp!696760))))

(declare-fun b!2227733 () Bool)

(declare-fun tp!696764 () Bool)

(declare-fun tp!696763 () Bool)

(assert (=> b!2227733 (= e!1423706 (and tp!696764 tp!696763))))

(assert (= (and b!2227462 ((_ is ElementMatch!6397) (_1!15148 (_1!15149 (h!31573 mapDefault!14301))))) b!2227730))

(assert (= (and b!2227462 ((_ is Concat!10735) (_1!15148 (_1!15149 (h!31573 mapDefault!14301))))) b!2227731))

(assert (= (and b!2227462 ((_ is Star!6397) (_1!15148 (_1!15149 (h!31573 mapDefault!14301))))) b!2227732))

(assert (= (and b!2227462 ((_ is Union!6397) (_1!15148 (_1!15149 (h!31573 mapDefault!14301))))) b!2227733))

(declare-fun setIsEmpty!19940 () Bool)

(declare-fun setRes!19940 () Bool)

(assert (=> setIsEmpty!19940 setRes!19940))

(declare-fun e!1423708 () Bool)

(assert (=> b!2227462 (= tp!696670 e!1423708)))

(declare-fun b!2227734 () Bool)

(declare-fun e!1423709 () Bool)

(declare-fun tp!696765 () Bool)

(assert (=> b!2227734 (= e!1423709 tp!696765)))

(declare-fun b!2227735 () Bool)

(declare-fun e!1423707 () Bool)

(declare-fun tp!696766 () Bool)

(assert (=> b!2227735 (= e!1423707 tp!696766)))

(declare-fun b!2227736 () Bool)

(declare-fun tp!696769 () Bool)

(declare-fun tp!696768 () Bool)

(assert (=> b!2227736 (= e!1423708 (and tp!696768 (inv!35534 (_2!15148 (_1!15149 (h!31573 (t!199678 mapDefault!14301))))) e!1423707 tp_is_empty!10019 setRes!19940 tp!696769))))

(declare-fun condSetEmpty!19940 () Bool)

(assert (=> b!2227736 (= condSetEmpty!19940 (= (_2!15149 (h!31573 (t!199678 mapDefault!14301))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setNonEmpty!19940 () Bool)

(declare-fun tp!696767 () Bool)

(declare-fun setElem!19940 () Context!3890)

(assert (=> setNonEmpty!19940 (= setRes!19940 (and tp!696767 (inv!35534 setElem!19940) e!1423709))))

(declare-fun setRest!19940 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19940 (= (_2!15149 (h!31573 (t!199678 mapDefault!14301))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19940 true) setRest!19940))))

(assert (= b!2227736 b!2227735))

(assert (= (and b!2227736 condSetEmpty!19940) setIsEmpty!19940))

(assert (= (and b!2227736 (not condSetEmpty!19940)) setNonEmpty!19940))

(assert (= setNonEmpty!19940 b!2227734))

(assert (= (and b!2227462 ((_ is Cons!26172) (t!199678 mapDefault!14301))) b!2227736))

(declare-fun m!2666291 () Bool)

(assert (=> b!2227736 m!2666291))

(declare-fun m!2666293 () Bool)

(assert (=> setNonEmpty!19940 m!2666293))

(declare-fun b!2227739 () Bool)

(declare-fun e!1423710 () Bool)

(declare-fun tp!696771 () Bool)

(assert (=> b!2227739 (= e!1423710 tp!696771)))

(declare-fun b!2227737 () Bool)

(assert (=> b!2227737 (= e!1423710 tp_is_empty!10019)))

(assert (=> b!2227418 (= tp!696605 e!1423710)))

(declare-fun b!2227738 () Bool)

(declare-fun tp!696772 () Bool)

(declare-fun tp!696770 () Bool)

(assert (=> b!2227738 (= e!1423710 (and tp!696772 tp!696770))))

(declare-fun b!2227740 () Bool)

(declare-fun tp!696774 () Bool)

(declare-fun tp!696773 () Bool)

(assert (=> b!2227740 (= e!1423710 (and tp!696774 tp!696773))))

(assert (= (and b!2227418 ((_ is ElementMatch!6397) (regOne!13307 (regTwo!13307 expr!64)))) b!2227737))

(assert (= (and b!2227418 ((_ is Concat!10735) (regOne!13307 (regTwo!13307 expr!64)))) b!2227738))

(assert (= (and b!2227418 ((_ is Star!6397) (regOne!13307 (regTwo!13307 expr!64)))) b!2227739))

(assert (= (and b!2227418 ((_ is Union!6397) (regOne!13307 (regTwo!13307 expr!64)))) b!2227740))

(declare-fun b!2227743 () Bool)

(declare-fun e!1423711 () Bool)

(declare-fun tp!696776 () Bool)

(assert (=> b!2227743 (= e!1423711 tp!696776)))

(declare-fun b!2227741 () Bool)

(assert (=> b!2227741 (= e!1423711 tp_is_empty!10019)))

(assert (=> b!2227418 (= tp!696604 e!1423711)))

(declare-fun b!2227742 () Bool)

(declare-fun tp!696777 () Bool)

(declare-fun tp!696775 () Bool)

(assert (=> b!2227742 (= e!1423711 (and tp!696777 tp!696775))))

(declare-fun b!2227744 () Bool)

(declare-fun tp!696779 () Bool)

(declare-fun tp!696778 () Bool)

(assert (=> b!2227744 (= e!1423711 (and tp!696779 tp!696778))))

(assert (= (and b!2227418 ((_ is ElementMatch!6397) (regTwo!13307 (regTwo!13307 expr!64)))) b!2227741))

(assert (= (and b!2227418 ((_ is Concat!10735) (regTwo!13307 (regTwo!13307 expr!64)))) b!2227742))

(assert (= (and b!2227418 ((_ is Star!6397) (regTwo!13307 (regTwo!13307 expr!64)))) b!2227743))

(assert (= (and b!2227418 ((_ is Union!6397) (regTwo!13307 (regTwo!13307 expr!64)))) b!2227744))

(declare-fun b!2227747 () Bool)

(declare-fun e!1423712 () Bool)

(declare-fun tp!696781 () Bool)

(assert (=> b!2227747 (= e!1423712 tp!696781)))

(declare-fun b!2227745 () Bool)

(assert (=> b!2227745 (= e!1423712 tp_is_empty!10019)))

(assert (=> b!2227447 (= tp!696644 e!1423712)))

(declare-fun b!2227746 () Bool)

(declare-fun tp!696782 () Bool)

(declare-fun tp!696780 () Bool)

(assert (=> b!2227746 (= e!1423712 (and tp!696782 tp!696780))))

(declare-fun b!2227748 () Bool)

(declare-fun tp!696784 () Bool)

(declare-fun tp!696783 () Bool)

(assert (=> b!2227748 (= e!1423712 (and tp!696784 tp!696783))))

(assert (= (and b!2227447 ((_ is ElementMatch!6397) (_1!15148 (_1!15149 (h!31573 mapDefault!14298))))) b!2227745))

(assert (= (and b!2227447 ((_ is Concat!10735) (_1!15148 (_1!15149 (h!31573 mapDefault!14298))))) b!2227746))

(assert (= (and b!2227447 ((_ is Star!6397) (_1!15148 (_1!15149 (h!31573 mapDefault!14298))))) b!2227747))

(assert (= (and b!2227447 ((_ is Union!6397) (_1!15148 (_1!15149 (h!31573 mapDefault!14298))))) b!2227748))

(declare-fun setIsEmpty!19941 () Bool)

(declare-fun setRes!19941 () Bool)

(assert (=> setIsEmpty!19941 setRes!19941))

(declare-fun e!1423714 () Bool)

(assert (=> b!2227447 (= tp!696645 e!1423714)))

(declare-fun b!2227749 () Bool)

(declare-fun e!1423715 () Bool)

(declare-fun tp!696785 () Bool)

(assert (=> b!2227749 (= e!1423715 tp!696785)))

(declare-fun b!2227750 () Bool)

(declare-fun e!1423713 () Bool)

(declare-fun tp!696786 () Bool)

(assert (=> b!2227750 (= e!1423713 tp!696786)))

(declare-fun tp!696788 () Bool)

(declare-fun tp!696789 () Bool)

(declare-fun b!2227751 () Bool)

(assert (=> b!2227751 (= e!1423714 (and tp!696788 (inv!35534 (_2!15148 (_1!15149 (h!31573 (t!199678 mapDefault!14298))))) e!1423713 tp_is_empty!10019 setRes!19941 tp!696789))))

(declare-fun condSetEmpty!19941 () Bool)

(assert (=> b!2227751 (= condSetEmpty!19941 (= (_2!15149 (h!31573 (t!199678 mapDefault!14298))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setNonEmpty!19941 () Bool)

(declare-fun setElem!19941 () Context!3890)

(declare-fun tp!696787 () Bool)

(assert (=> setNonEmpty!19941 (= setRes!19941 (and tp!696787 (inv!35534 setElem!19941) e!1423715))))

(declare-fun setRest!19941 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19941 (= (_2!15149 (h!31573 (t!199678 mapDefault!14298))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19941 true) setRest!19941))))

(assert (= b!2227751 b!2227750))

(assert (= (and b!2227751 condSetEmpty!19941) setIsEmpty!19941))

(assert (= (and b!2227751 (not condSetEmpty!19941)) setNonEmpty!19941))

(assert (= setNonEmpty!19941 b!2227749))

(assert (= (and b!2227447 ((_ is Cons!26172) (t!199678 mapDefault!14298))) b!2227751))

(declare-fun m!2666295 () Bool)

(assert (=> b!2227751 m!2666295))

(declare-fun m!2666297 () Bool)

(assert (=> setNonEmpty!19941 m!2666297))

(declare-fun b!2227754 () Bool)

(declare-fun e!1423716 () Bool)

(declare-fun tp!696791 () Bool)

(assert (=> b!2227754 (= e!1423716 tp!696791)))

(declare-fun b!2227752 () Bool)

(assert (=> b!2227752 (= e!1423716 tp_is_empty!10019)))

(assert (=> b!2227444 (= tp!696639 e!1423716)))

(declare-fun b!2227753 () Bool)

(declare-fun tp!696792 () Bool)

(declare-fun tp!696790 () Bool)

(assert (=> b!2227753 (= e!1423716 (and tp!696792 tp!696790))))

(declare-fun b!2227755 () Bool)

(declare-fun tp!696794 () Bool)

(declare-fun tp!696793 () Bool)

(assert (=> b!2227755 (= e!1423716 (and tp!696794 tp!696793))))

(assert (= (and b!2227444 ((_ is ElementMatch!6397) (_1!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227752))

(assert (= (and b!2227444 ((_ is Concat!10735) (_1!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227753))

(assert (= (and b!2227444 ((_ is Star!6397) (_1!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227754))

(assert (= (and b!2227444 ((_ is Union!6397) (_1!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227755))

(declare-fun setIsEmpty!19942 () Bool)

(declare-fun setRes!19942 () Bool)

(assert (=> setIsEmpty!19942 setRes!19942))

(declare-fun e!1423718 () Bool)

(assert (=> b!2227444 (= tp!696640 e!1423718)))

(declare-fun b!2227756 () Bool)

(declare-fun e!1423719 () Bool)

(declare-fun tp!696795 () Bool)

(assert (=> b!2227756 (= e!1423719 tp!696795)))

(declare-fun b!2227757 () Bool)

(declare-fun e!1423717 () Bool)

(declare-fun tp!696796 () Bool)

(assert (=> b!2227757 (= e!1423717 tp!696796)))

(declare-fun tp!696798 () Bool)

(declare-fun tp!696799 () Bool)

(declare-fun b!2227758 () Bool)

(assert (=> b!2227758 (= e!1423718 (and tp!696798 (inv!35534 (_2!15148 (_1!15149 (h!31573 (t!199678 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) e!1423717 tp_is_empty!10019 setRes!19942 tp!696799))))

(declare-fun condSetEmpty!19942 () Bool)

(assert (=> b!2227758 (= condSetEmpty!19942 (= (_2!15149 (h!31573 (t!199678 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun tp!696797 () Bool)

(declare-fun setElem!19942 () Context!3890)

(declare-fun setNonEmpty!19942 () Bool)

(assert (=> setNonEmpty!19942 (= setRes!19942 (and tp!696797 (inv!35534 setElem!19942) e!1423719))))

(declare-fun setRest!19942 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19942 (= (_2!15149 (h!31573 (t!199678 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19942 true) setRest!19942))))

(assert (= b!2227758 b!2227757))

(assert (= (and b!2227758 condSetEmpty!19942) setIsEmpty!19942))

(assert (= (and b!2227758 (not condSetEmpty!19942)) setNonEmpty!19942))

(assert (= setNonEmpty!19942 b!2227756))

(assert (= (and b!2227444 ((_ is Cons!26172) (t!199678 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))) b!2227758))

(declare-fun m!2666299 () Bool)

(assert (=> b!2227758 m!2666299))

(declare-fun m!2666301 () Bool)

(assert (=> setNonEmpty!19942 m!2666301))

(declare-fun b!2227761 () Bool)

(declare-fun e!1423720 () Bool)

(declare-fun tp!696801 () Bool)

(assert (=> b!2227761 (= e!1423720 tp!696801)))

(declare-fun b!2227759 () Bool)

(assert (=> b!2227759 (= e!1423720 tp_is_empty!10019)))

(assert (=> b!2227441 (= tp!696634 e!1423720)))

(declare-fun b!2227760 () Bool)

(declare-fun tp!696802 () Bool)

(declare-fun tp!696800 () Bool)

(assert (=> b!2227760 (= e!1423720 (and tp!696802 tp!696800))))

(declare-fun b!2227762 () Bool)

(declare-fun tp!696804 () Bool)

(declare-fun tp!696803 () Bool)

(assert (=> b!2227762 (= e!1423720 (and tp!696804 tp!696803))))

(assert (= (and b!2227441 ((_ is ElementMatch!6397) (_1!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227759))

(assert (= (and b!2227441 ((_ is Concat!10735) (_1!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227760))

(assert (= (and b!2227441 ((_ is Star!6397) (_1!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227761))

(assert (= (and b!2227441 ((_ is Union!6397) (_1!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) b!2227762))

(declare-fun setIsEmpty!19943 () Bool)

(declare-fun setRes!19943 () Bool)

(assert (=> setIsEmpty!19943 setRes!19943))

(declare-fun e!1423722 () Bool)

(assert (=> b!2227441 (= tp!696635 e!1423722)))

(declare-fun b!2227763 () Bool)

(declare-fun e!1423723 () Bool)

(declare-fun tp!696805 () Bool)

(assert (=> b!2227763 (= e!1423723 tp!696805)))

(declare-fun b!2227764 () Bool)

(declare-fun e!1423721 () Bool)

(declare-fun tp!696806 () Bool)

(assert (=> b!2227764 (= e!1423721 tp!696806)))

(declare-fun tp!696809 () Bool)

(declare-fun b!2227765 () Bool)

(declare-fun tp!696808 () Bool)

(assert (=> b!2227765 (= e!1423722 (and tp!696808 (inv!35534 (_2!15148 (_1!15149 (h!31573 (t!199678 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))))) e!1423721 tp_is_empty!10019 setRes!19943 tp!696809))))

(declare-fun condSetEmpty!19943 () Bool)

(assert (=> b!2227765 (= condSetEmpty!19943 (= (_2!15149 (h!31573 (t!199678 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun tp!696807 () Bool)

(declare-fun setNonEmpty!19943 () Bool)

(declare-fun setElem!19943 () Context!3890)

(assert (=> setNonEmpty!19943 (= setRes!19943 (and tp!696807 (inv!35534 setElem!19943) e!1423723))))

(declare-fun setRest!19943 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19943 (= (_2!15149 (h!31573 (t!199678 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19943 true) setRest!19943))))

(assert (= b!2227765 b!2227764))

(assert (= (and b!2227765 condSetEmpty!19943) setIsEmpty!19943))

(assert (= (and b!2227765 (not condSetEmpty!19943)) setNonEmpty!19943))

(assert (= setNonEmpty!19943 b!2227763))

(assert (= (and b!2227441 ((_ is Cons!26172) (t!199678 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839))))))))) b!2227765))

(declare-fun m!2666303 () Bool)

(assert (=> b!2227765 m!2666303))

(declare-fun m!2666305 () Bool)

(assert (=> setNonEmpty!19943 m!2666305))

(declare-fun b!2227766 () Bool)

(declare-fun e!1423724 () Bool)

(declare-fun tp!696810 () Bool)

(declare-fun tp!696811 () Bool)

(assert (=> b!2227766 (= e!1423724 (and tp!696810 tp!696811))))

(assert (=> b!2227442 (= tp!696636 e!1423724)))

(assert (= (and b!2227442 ((_ is Cons!26171) (exprs!2445 setElem!19923))) b!2227766))

(declare-fun b!2227767 () Bool)

(declare-fun e!1423725 () Bool)

(declare-fun tp!696812 () Bool)

(declare-fun tp!696813 () Bool)

(assert (=> b!2227767 (= e!1423725 (and tp!696812 tp!696813))))

(assert (=> b!2227439 (= tp!696631 e!1423725)))

(assert (= (and b!2227439 ((_ is Cons!26171) (exprs!2445 setElem!19922))) b!2227767))

(declare-fun b!2227770 () Bool)

(declare-fun e!1423726 () Bool)

(declare-fun tp!696815 () Bool)

(assert (=> b!2227770 (= e!1423726 tp!696815)))

(declare-fun b!2227768 () Bool)

(assert (=> b!2227768 (= e!1423726 tp_is_empty!10019)))

(assert (=> b!2227425 (= tp!696612 e!1423726)))

(declare-fun b!2227769 () Bool)

(declare-fun tp!696816 () Bool)

(declare-fun tp!696814 () Bool)

(assert (=> b!2227769 (= e!1423726 (and tp!696816 tp!696814))))

(declare-fun b!2227771 () Bool)

(declare-fun tp!696818 () Bool)

(declare-fun tp!696817 () Bool)

(assert (=> b!2227771 (= e!1423726 (and tp!696818 tp!696817))))

(assert (= (and b!2227425 ((_ is ElementMatch!6397) (reg!6726 (regOne!13306 expr!64)))) b!2227768))

(assert (= (and b!2227425 ((_ is Concat!10735) (reg!6726 (regOne!13306 expr!64)))) b!2227769))

(assert (= (and b!2227425 ((_ is Star!6397) (reg!6726 (regOne!13306 expr!64)))) b!2227770))

(assert (= (and b!2227425 ((_ is Union!6397) (reg!6726 (regOne!13306 expr!64)))) b!2227771))

(declare-fun b!2227774 () Bool)

(declare-fun e!1423727 () Bool)

(declare-fun tp!696820 () Bool)

(assert (=> b!2227774 (= e!1423727 tp!696820)))

(declare-fun b!2227772 () Bool)

(assert (=> b!2227772 (= e!1423727 tp_is_empty!10019)))

(assert (=> b!2227416 (= tp!696603 e!1423727)))

(declare-fun b!2227773 () Bool)

(declare-fun tp!696821 () Bool)

(declare-fun tp!696819 () Bool)

(assert (=> b!2227773 (= e!1423727 (and tp!696821 tp!696819))))

(declare-fun b!2227775 () Bool)

(declare-fun tp!696823 () Bool)

(declare-fun tp!696822 () Bool)

(assert (=> b!2227775 (= e!1423727 (and tp!696823 tp!696822))))

(assert (= (and b!2227416 ((_ is ElementMatch!6397) (regOne!13306 (regTwo!13307 expr!64)))) b!2227772))

(assert (= (and b!2227416 ((_ is Concat!10735) (regOne!13306 (regTwo!13307 expr!64)))) b!2227773))

(assert (= (and b!2227416 ((_ is Star!6397) (regOne!13306 (regTwo!13307 expr!64)))) b!2227774))

(assert (= (and b!2227416 ((_ is Union!6397) (regOne!13306 (regTwo!13307 expr!64)))) b!2227775))

(declare-fun b!2227778 () Bool)

(declare-fun e!1423728 () Bool)

(declare-fun tp!696825 () Bool)

(assert (=> b!2227778 (= e!1423728 tp!696825)))

(declare-fun b!2227776 () Bool)

(assert (=> b!2227776 (= e!1423728 tp_is_empty!10019)))

(assert (=> b!2227416 (= tp!696601 e!1423728)))

(declare-fun b!2227777 () Bool)

(declare-fun tp!696826 () Bool)

(declare-fun tp!696824 () Bool)

(assert (=> b!2227777 (= e!1423728 (and tp!696826 tp!696824))))

(declare-fun b!2227779 () Bool)

(declare-fun tp!696828 () Bool)

(declare-fun tp!696827 () Bool)

(assert (=> b!2227779 (= e!1423728 (and tp!696828 tp!696827))))

(assert (= (and b!2227416 ((_ is ElementMatch!6397) (regTwo!13306 (regTwo!13307 expr!64)))) b!2227776))

(assert (= (and b!2227416 ((_ is Concat!10735) (regTwo!13306 (regTwo!13307 expr!64)))) b!2227777))

(assert (= (and b!2227416 ((_ is Star!6397) (regTwo!13306 (regTwo!13307 expr!64)))) b!2227778))

(assert (= (and b!2227416 ((_ is Union!6397) (regTwo!13306 (regTwo!13307 expr!64)))) b!2227779))

(declare-fun b!2227780 () Bool)

(declare-fun e!1423729 () Bool)

(declare-fun tp!696829 () Bool)

(declare-fun tp!696830 () Bool)

(assert (=> b!2227780 (= e!1423729 (and tp!696829 tp!696830))))

(assert (=> b!2227445 (= tp!696641 e!1423729)))

(assert (= (and b!2227445 ((_ is Cons!26171) (exprs!2445 setElem!19924))) b!2227780))

(declare-fun condSetEmpty!19944 () Bool)

(assert (=> setNonEmpty!19931 (= condSetEmpty!19944 (= setRest!19931 ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setRes!19944 () Bool)

(assert (=> setNonEmpty!19931 (= tp!696681 setRes!19944)))

(declare-fun setIsEmpty!19944 () Bool)

(assert (=> setIsEmpty!19944 setRes!19944))

(declare-fun setElem!19944 () Context!3890)

(declare-fun e!1423730 () Bool)

(declare-fun setNonEmpty!19944 () Bool)

(declare-fun tp!696831 () Bool)

(assert (=> setNonEmpty!19944 (= setRes!19944 (and tp!696831 (inv!35534 setElem!19944) e!1423730))))

(declare-fun setRest!19944 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19944 (= setRest!19931 ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19944 true) setRest!19944))))

(declare-fun b!2227781 () Bool)

(declare-fun tp!696832 () Bool)

(assert (=> b!2227781 (= e!1423730 tp!696832)))

(assert (= (and setNonEmpty!19931 condSetEmpty!19944) setIsEmpty!19944))

(assert (= (and setNonEmpty!19931 (not condSetEmpty!19944)) setNonEmpty!19944))

(assert (= setNonEmpty!19944 b!2227781))

(declare-fun m!2666307 () Bool)

(assert (=> setNonEmpty!19944 m!2666307))

(declare-fun b!2227784 () Bool)

(declare-fun e!1423731 () Bool)

(declare-fun tp!696834 () Bool)

(assert (=> b!2227784 (= e!1423731 tp!696834)))

(declare-fun b!2227782 () Bool)

(assert (=> b!2227782 (= e!1423731 tp_is_empty!10019)))

(assert (=> b!2227424 (= tp!696613 e!1423731)))

(declare-fun b!2227783 () Bool)

(declare-fun tp!696835 () Bool)

(declare-fun tp!696833 () Bool)

(assert (=> b!2227783 (= e!1423731 (and tp!696835 tp!696833))))

(declare-fun b!2227785 () Bool)

(declare-fun tp!696837 () Bool)

(declare-fun tp!696836 () Bool)

(assert (=> b!2227785 (= e!1423731 (and tp!696837 tp!696836))))

(assert (= (and b!2227424 ((_ is ElementMatch!6397) (regOne!13306 (regOne!13306 expr!64)))) b!2227782))

(assert (= (and b!2227424 ((_ is Concat!10735) (regOne!13306 (regOne!13306 expr!64)))) b!2227783))

(assert (= (and b!2227424 ((_ is Star!6397) (regOne!13306 (regOne!13306 expr!64)))) b!2227784))

(assert (= (and b!2227424 ((_ is Union!6397) (regOne!13306 (regOne!13306 expr!64)))) b!2227785))

(declare-fun b!2227788 () Bool)

(declare-fun e!1423732 () Bool)

(declare-fun tp!696839 () Bool)

(assert (=> b!2227788 (= e!1423732 tp!696839)))

(declare-fun b!2227786 () Bool)

(assert (=> b!2227786 (= e!1423732 tp_is_empty!10019)))

(assert (=> b!2227424 (= tp!696611 e!1423732)))

(declare-fun b!2227787 () Bool)

(declare-fun tp!696840 () Bool)

(declare-fun tp!696838 () Bool)

(assert (=> b!2227787 (= e!1423732 (and tp!696840 tp!696838))))

(declare-fun b!2227789 () Bool)

(declare-fun tp!696842 () Bool)

(declare-fun tp!696841 () Bool)

(assert (=> b!2227789 (= e!1423732 (and tp!696842 tp!696841))))

(assert (= (and b!2227424 ((_ is ElementMatch!6397) (regTwo!13306 (regOne!13306 expr!64)))) b!2227786))

(assert (= (and b!2227424 ((_ is Concat!10735) (regTwo!13306 (regOne!13306 expr!64)))) b!2227787))

(assert (= (and b!2227424 ((_ is Star!6397) (regTwo!13306 (regOne!13306 expr!64)))) b!2227788))

(assert (= (and b!2227424 ((_ is Union!6397) (regTwo!13306 (regOne!13306 expr!64)))) b!2227789))

(declare-fun b!2227790 () Bool)

(declare-fun e!1423733 () Bool)

(declare-fun tp!696843 () Bool)

(declare-fun tp!696844 () Bool)

(assert (=> b!2227790 (= e!1423733 (and tp!696843 tp!696844))))

(assert (=> b!2227469 (= tp!696680 e!1423733)))

(assert (= (and b!2227469 ((_ is Cons!26171) (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapValue!14298)))))) b!2227790))

(declare-fun b!2227791 () Bool)

(declare-fun e!1423734 () Bool)

(declare-fun tp!696845 () Bool)

(declare-fun tp!696846 () Bool)

(assert (=> b!2227791 (= e!1423734 (and tp!696845 tp!696846))))

(assert (=> b!2227467 (= tp!696676 e!1423734)))

(assert (= (and b!2227467 ((_ is Cons!26171) (exprs!2445 setElem!19930))) b!2227791))

(declare-fun b!2227794 () Bool)

(declare-fun e!1423735 () Bool)

(declare-fun tp!696848 () Bool)

(assert (=> b!2227794 (= e!1423735 tp!696848)))

(declare-fun b!2227792 () Bool)

(assert (=> b!2227792 (= e!1423735 tp_is_empty!10019)))

(assert (=> b!2227413 (= tp!696597 e!1423735)))

(declare-fun b!2227793 () Bool)

(declare-fun tp!696849 () Bool)

(declare-fun tp!696847 () Bool)

(assert (=> b!2227793 (= e!1423735 (and tp!696849 tp!696847))))

(declare-fun b!2227795 () Bool)

(declare-fun tp!696851 () Bool)

(declare-fun tp!696850 () Bool)

(assert (=> b!2227795 (= e!1423735 (and tp!696851 tp!696850))))

(assert (= (and b!2227413 ((_ is ElementMatch!6397) (reg!6726 (regOne!13307 expr!64)))) b!2227792))

(assert (= (and b!2227413 ((_ is Concat!10735) (reg!6726 (regOne!13307 expr!64)))) b!2227793))

(assert (= (and b!2227413 ((_ is Star!6397) (reg!6726 (regOne!13307 expr!64)))) b!2227794))

(assert (= (and b!2227413 ((_ is Union!6397) (reg!6726 (regOne!13307 expr!64)))) b!2227795))

(declare-fun b!2227798 () Bool)

(declare-fun e!1423736 () Bool)

(declare-fun tp!696853 () Bool)

(assert (=> b!2227798 (= e!1423736 tp!696853)))

(declare-fun b!2227796 () Bool)

(assert (=> b!2227796 (= e!1423736 tp_is_empty!10019)))

(assert (=> b!2227422 (= tp!696610 e!1423736)))

(declare-fun b!2227797 () Bool)

(declare-fun tp!696854 () Bool)

(declare-fun tp!696852 () Bool)

(assert (=> b!2227797 (= e!1423736 (and tp!696854 tp!696852))))

(declare-fun b!2227799 () Bool)

(declare-fun tp!696856 () Bool)

(declare-fun tp!696855 () Bool)

(assert (=> b!2227799 (= e!1423736 (and tp!696856 tp!696855))))

(assert (= (and b!2227422 ((_ is ElementMatch!6397) (regOne!13307 (reg!6726 expr!64)))) b!2227796))

(assert (= (and b!2227422 ((_ is Concat!10735) (regOne!13307 (reg!6726 expr!64)))) b!2227797))

(assert (= (and b!2227422 ((_ is Star!6397) (regOne!13307 (reg!6726 expr!64)))) b!2227798))

(assert (= (and b!2227422 ((_ is Union!6397) (regOne!13307 (reg!6726 expr!64)))) b!2227799))

(declare-fun b!2227802 () Bool)

(declare-fun e!1423737 () Bool)

(declare-fun tp!696858 () Bool)

(assert (=> b!2227802 (= e!1423737 tp!696858)))

(declare-fun b!2227800 () Bool)

(assert (=> b!2227800 (= e!1423737 tp_is_empty!10019)))

(assert (=> b!2227422 (= tp!696609 e!1423737)))

(declare-fun b!2227801 () Bool)

(declare-fun tp!696859 () Bool)

(declare-fun tp!696857 () Bool)

(assert (=> b!2227801 (= e!1423737 (and tp!696859 tp!696857))))

(declare-fun b!2227803 () Bool)

(declare-fun tp!696861 () Bool)

(declare-fun tp!696860 () Bool)

(assert (=> b!2227803 (= e!1423737 (and tp!696861 tp!696860))))

(assert (= (and b!2227422 ((_ is ElementMatch!6397) (regTwo!13307 (reg!6726 expr!64)))) b!2227800))

(assert (= (and b!2227422 ((_ is Concat!10735) (regTwo!13307 (reg!6726 expr!64)))) b!2227801))

(assert (= (and b!2227422 ((_ is Star!6397) (regTwo!13307 (reg!6726 expr!64)))) b!2227802))

(assert (= (and b!2227422 ((_ is Union!6397) (regTwo!13307 (reg!6726 expr!64)))) b!2227803))

(declare-fun b!2227806 () Bool)

(declare-fun e!1423740 () Bool)

(declare-fun lt!830268 () MutLongMap!3035)

(assert (=> b!2227806 (= e!1423740 ((_ is LongMap!3035) lt!830268))))

(assert (=> b!2227806 (= lt!830268 (v!29747 (underlying!6272 (cache!3326 (_2!15150 (derivationStepZipperDownMem!14 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))))))

(declare-fun b!2227805 () Bool)

(declare-fun e!1423739 () Bool)

(assert (=> b!2227805 (= e!1423739 e!1423740)))

(declare-fun b!2227804 () Bool)

(declare-fun e!1423738 () Bool)

(assert (=> b!2227804 (= e!1423738 e!1423739)))

(assert (=> d!664646 (= true e!1423738)))

(assert (= b!2227805 b!2227806))

(assert (= (and b!2227804 ((_ is HashMap!2945) (cache!3326 (_2!15150 (derivationStepZipperDownMem!14 (ite c!355367 (regTwo!13307 expr!64) (ite c!355364 (regTwo!13306 expr!64) (ite c!355368 (regOne!13306 expr!64) (reg!6726 expr!64)))) (ite (or c!355367 c!355364) context!86 (Context!3891 call!133390)) a!1167 (ite c!355367 (_2!15150 lt!830179) (ite c!355364 (_2!15150 lt!830176) cacheDown!839))))))) b!2227805))

(assert (= d!664646 b!2227804))

(declare-fun b!2227809 () Bool)

(declare-fun e!1423741 () Bool)

(declare-fun tp!696863 () Bool)

(assert (=> b!2227809 (= e!1423741 tp!696863)))

(declare-fun b!2227807 () Bool)

(assert (=> b!2227807 (= e!1423741 tp_is_empty!10019)))

(assert (=> b!2227429 (= tp!696617 e!1423741)))

(declare-fun b!2227808 () Bool)

(declare-fun tp!696864 () Bool)

(declare-fun tp!696862 () Bool)

(assert (=> b!2227808 (= e!1423741 (and tp!696864 tp!696862))))

(declare-fun b!2227810 () Bool)

(declare-fun tp!696866 () Bool)

(declare-fun tp!696865 () Bool)

(assert (=> b!2227810 (= e!1423741 (and tp!696866 tp!696865))))

(assert (= (and b!2227429 ((_ is ElementMatch!6397) (reg!6726 (regTwo!13306 expr!64)))) b!2227807))

(assert (= (and b!2227429 ((_ is Concat!10735) (reg!6726 (regTwo!13306 expr!64)))) b!2227808))

(assert (= (and b!2227429 ((_ is Star!6397) (reg!6726 (regTwo!13306 expr!64)))) b!2227809))

(assert (= (and b!2227429 ((_ is Union!6397) (reg!6726 (regTwo!13306 expr!64)))) b!2227810))

(declare-fun b!2227813 () Bool)

(declare-fun e!1423742 () Bool)

(declare-fun tp!696868 () Bool)

(assert (=> b!2227813 (= e!1423742 tp!696868)))

(declare-fun b!2227811 () Bool)

(assert (=> b!2227811 (= e!1423742 tp_is_empty!10019)))

(assert (=> b!2227420 (= tp!696608 e!1423742)))

(declare-fun b!2227812 () Bool)

(declare-fun tp!696869 () Bool)

(declare-fun tp!696867 () Bool)

(assert (=> b!2227812 (= e!1423742 (and tp!696869 tp!696867))))

(declare-fun b!2227814 () Bool)

(declare-fun tp!696871 () Bool)

(declare-fun tp!696870 () Bool)

(assert (=> b!2227814 (= e!1423742 (and tp!696871 tp!696870))))

(assert (= (and b!2227420 ((_ is ElementMatch!6397) (regOne!13306 (reg!6726 expr!64)))) b!2227811))

(assert (= (and b!2227420 ((_ is Concat!10735) (regOne!13306 (reg!6726 expr!64)))) b!2227812))

(assert (= (and b!2227420 ((_ is Star!6397) (regOne!13306 (reg!6726 expr!64)))) b!2227813))

(assert (= (and b!2227420 ((_ is Union!6397) (regOne!13306 (reg!6726 expr!64)))) b!2227814))

(declare-fun b!2227817 () Bool)

(declare-fun e!1423743 () Bool)

(declare-fun tp!696873 () Bool)

(assert (=> b!2227817 (= e!1423743 tp!696873)))

(declare-fun b!2227815 () Bool)

(assert (=> b!2227815 (= e!1423743 tp_is_empty!10019)))

(assert (=> b!2227420 (= tp!696606 e!1423743)))

(declare-fun b!2227816 () Bool)

(declare-fun tp!696874 () Bool)

(declare-fun tp!696872 () Bool)

(assert (=> b!2227816 (= e!1423743 (and tp!696874 tp!696872))))

(declare-fun b!2227818 () Bool)

(declare-fun tp!696876 () Bool)

(declare-fun tp!696875 () Bool)

(assert (=> b!2227818 (= e!1423743 (and tp!696876 tp!696875))))

(assert (= (and b!2227420 ((_ is ElementMatch!6397) (regTwo!13306 (reg!6726 expr!64)))) b!2227815))

(assert (= (and b!2227420 ((_ is Concat!10735) (regTwo!13306 (reg!6726 expr!64)))) b!2227816))

(assert (= (and b!2227420 ((_ is Star!6397) (regTwo!13306 (reg!6726 expr!64)))) b!2227817))

(assert (= (and b!2227420 ((_ is Union!6397) (regTwo!13306 (reg!6726 expr!64)))) b!2227818))

(declare-fun condSetEmpty!19945 () Bool)

(assert (=> setNonEmpty!19929 (= condSetEmpty!19945 (= setRest!19930 ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setRes!19945 () Bool)

(assert (=> setNonEmpty!19929 (= tp!696672 setRes!19945)))

(declare-fun setIsEmpty!19945 () Bool)

(assert (=> setIsEmpty!19945 setRes!19945))

(declare-fun e!1423744 () Bool)

(declare-fun setNonEmpty!19945 () Bool)

(declare-fun setElem!19945 () Context!3890)

(declare-fun tp!696877 () Bool)

(assert (=> setNonEmpty!19945 (= setRes!19945 (and tp!696877 (inv!35534 setElem!19945) e!1423744))))

(declare-fun setRest!19945 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19945 (= setRest!19930 ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19945 true) setRest!19945))))

(declare-fun b!2227819 () Bool)

(declare-fun tp!696878 () Bool)

(assert (=> b!2227819 (= e!1423744 tp!696878)))

(assert (= (and setNonEmpty!19929 condSetEmpty!19945) setIsEmpty!19945))

(assert (= (and setNonEmpty!19929 (not condSetEmpty!19945)) setNonEmpty!19945))

(assert (= setNonEmpty!19945 b!2227819))

(declare-fun m!2666309 () Bool)

(assert (=> setNonEmpty!19945 m!2666309))

(declare-fun b!2227822 () Bool)

(declare-fun e!1423745 () Bool)

(declare-fun tp!696880 () Bool)

(assert (=> b!2227822 (= e!1423745 tp!696880)))

(declare-fun b!2227820 () Bool)

(assert (=> b!2227820 (= e!1423745 tp_is_empty!10019)))

(assert (=> b!2227428 (= tp!696618 e!1423745)))

(declare-fun b!2227821 () Bool)

(declare-fun tp!696881 () Bool)

(declare-fun tp!696879 () Bool)

(assert (=> b!2227821 (= e!1423745 (and tp!696881 tp!696879))))

(declare-fun b!2227823 () Bool)

(declare-fun tp!696883 () Bool)

(declare-fun tp!696882 () Bool)

(assert (=> b!2227823 (= e!1423745 (and tp!696883 tp!696882))))

(assert (= (and b!2227428 ((_ is ElementMatch!6397) (regOne!13306 (regTwo!13306 expr!64)))) b!2227820))

(assert (= (and b!2227428 ((_ is Concat!10735) (regOne!13306 (regTwo!13306 expr!64)))) b!2227821))

(assert (= (and b!2227428 ((_ is Star!6397) (regOne!13306 (regTwo!13306 expr!64)))) b!2227822))

(assert (= (and b!2227428 ((_ is Union!6397) (regOne!13306 (regTwo!13306 expr!64)))) b!2227823))

(declare-fun b!2227826 () Bool)

(declare-fun e!1423746 () Bool)

(declare-fun tp!696885 () Bool)

(assert (=> b!2227826 (= e!1423746 tp!696885)))

(declare-fun b!2227824 () Bool)

(assert (=> b!2227824 (= e!1423746 tp_is_empty!10019)))

(assert (=> b!2227428 (= tp!696616 e!1423746)))

(declare-fun b!2227825 () Bool)

(declare-fun tp!696886 () Bool)

(declare-fun tp!696884 () Bool)

(assert (=> b!2227825 (= e!1423746 (and tp!696886 tp!696884))))

(declare-fun b!2227827 () Bool)

(declare-fun tp!696888 () Bool)

(declare-fun tp!696887 () Bool)

(assert (=> b!2227827 (= e!1423746 (and tp!696888 tp!696887))))

(assert (= (and b!2227428 ((_ is ElementMatch!6397) (regTwo!13306 (regTwo!13306 expr!64)))) b!2227824))

(assert (= (and b!2227428 ((_ is Concat!10735) (regTwo!13306 (regTwo!13306 expr!64)))) b!2227825))

(assert (= (and b!2227428 ((_ is Star!6397) (regTwo!13306 (regTwo!13306 expr!64)))) b!2227826))

(assert (= (and b!2227428 ((_ is Union!6397) (regTwo!13306 (regTwo!13306 expr!64)))) b!2227827))

(declare-fun b!2227828 () Bool)

(declare-fun e!1423747 () Bool)

(declare-fun tp!696889 () Bool)

(declare-fun tp!696890 () Bool)

(assert (=> b!2227828 (= e!1423747 (and tp!696889 tp!696890))))

(assert (=> b!2227465 (= tp!696674 e!1423747)))

(assert (= (and b!2227465 ((_ is Cons!26171) (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapDefault!14301)))))) b!2227828))

(declare-fun b!2227829 () Bool)

(declare-fun e!1423748 () Bool)

(declare-fun tp!696891 () Bool)

(declare-fun tp!696892 () Bool)

(assert (=> b!2227829 (= e!1423748 (and tp!696891 tp!696892))))

(assert (=> b!2227464 (= tp!696668 e!1423748)))

(assert (= (and b!2227464 ((_ is Cons!26171) (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapValue!14301)))))) b!2227829))

(declare-fun b!2227830 () Bool)

(declare-fun e!1423749 () Bool)

(declare-fun tp!696893 () Bool)

(declare-fun tp!696894 () Bool)

(assert (=> b!2227830 (= e!1423749 (and tp!696893 tp!696894))))

(assert (=> b!2227463 (= tp!696677 e!1423749)))

(assert (= (and b!2227463 ((_ is Cons!26171) (exprs!2445 setElem!19929))) b!2227830))

(declare-fun condMapEmpty!14302 () Bool)

(declare-fun mapDefault!14302 () List!26266)

(assert (=> mapNonEmpty!14301 (= condMapEmpty!14302 (= mapRest!14301 ((as const (Array (_ BitVec 32) List!26266)) mapDefault!14302)))))

(declare-fun e!1423752 () Bool)

(declare-fun mapRes!14302 () Bool)

(assert (=> mapNonEmpty!14301 (= tp!696669 (and e!1423752 mapRes!14302))))

(declare-fun mapNonEmpty!14302 () Bool)

(declare-fun tp!696896 () Bool)

(declare-fun e!1423755 () Bool)

(assert (=> mapNonEmpty!14302 (= mapRes!14302 (and tp!696896 e!1423755))))

(declare-fun mapKey!14302 () (_ BitVec 32))

(declare-fun mapRest!14302 () (Array (_ BitVec 32) List!26266))

(declare-fun mapValue!14302 () List!26266)

(assert (=> mapNonEmpty!14302 (= mapRest!14301 (store mapRest!14302 mapKey!14302 mapValue!14302))))

(declare-fun setRes!19947 () Bool)

(declare-fun b!2227831 () Bool)

(declare-fun e!1423754 () Bool)

(declare-fun tp!696897 () Bool)

(declare-fun tp!696900 () Bool)

(assert (=> b!2227831 (= e!1423752 (and tp!696900 (inv!35534 (_2!15148 (_1!15149 (h!31573 mapDefault!14302)))) e!1423754 tp_is_empty!10019 setRes!19947 tp!696897))))

(declare-fun condSetEmpty!19947 () Bool)

(assert (=> b!2227831 (= condSetEmpty!19947 (= (_2!15149 (h!31573 mapDefault!14302)) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun b!2227832 () Bool)

(declare-fun e!1423750 () Bool)

(declare-fun tp!696904 () Bool)

(assert (=> b!2227832 (= e!1423750 tp!696904)))

(declare-fun mapIsEmpty!14302 () Bool)

(assert (=> mapIsEmpty!14302 mapRes!14302))

(declare-fun b!2227833 () Bool)

(declare-fun e!1423751 () Bool)

(declare-fun tp!696895 () Bool)

(assert (=> b!2227833 (= e!1423751 tp!696895)))

(declare-fun setIsEmpty!19946 () Bool)

(assert (=> setIsEmpty!19946 setRes!19947))

(declare-fun b!2227834 () Bool)

(declare-fun tp!696901 () Bool)

(assert (=> b!2227834 (= e!1423754 tp!696901)))

(declare-fun setNonEmpty!19946 () Bool)

(declare-fun setElem!19946 () Context!3890)

(declare-fun tp!696899 () Bool)

(assert (=> setNonEmpty!19946 (= setRes!19947 (and tp!696899 (inv!35534 setElem!19946) e!1423750))))

(declare-fun setRest!19947 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19946 (= (_2!15149 (h!31573 mapDefault!14302)) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19946 true) setRest!19947))))

(declare-fun setRes!19946 () Bool)

(declare-fun setNonEmpty!19947 () Bool)

(declare-fun setElem!19947 () Context!3890)

(declare-fun e!1423753 () Bool)

(declare-fun tp!696902 () Bool)

(assert (=> setNonEmpty!19947 (= setRes!19946 (and tp!696902 (inv!35534 setElem!19947) e!1423753))))

(declare-fun setRest!19946 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19947 (= (_2!15149 (h!31573 mapValue!14302)) ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19947 true) setRest!19946))))

(declare-fun setIsEmpty!19947 () Bool)

(assert (=> setIsEmpty!19947 setRes!19946))

(declare-fun tp!696898 () Bool)

(declare-fun tp!696905 () Bool)

(declare-fun b!2227835 () Bool)

(assert (=> b!2227835 (= e!1423755 (and tp!696898 (inv!35534 (_2!15148 (_1!15149 (h!31573 mapValue!14302)))) e!1423751 tp_is_empty!10019 setRes!19946 tp!696905))))

(declare-fun condSetEmpty!19946 () Bool)

(assert (=> b!2227835 (= condSetEmpty!19946 (= (_2!15149 (h!31573 mapValue!14302)) ((as const (Array Context!3890 Bool)) false)))))

(declare-fun b!2227836 () Bool)

(declare-fun tp!696903 () Bool)

(assert (=> b!2227836 (= e!1423753 tp!696903)))

(assert (= (and mapNonEmpty!14301 condMapEmpty!14302) mapIsEmpty!14302))

(assert (= (and mapNonEmpty!14301 (not condMapEmpty!14302)) mapNonEmpty!14302))

(assert (= b!2227835 b!2227833))

(assert (= (and b!2227835 condSetEmpty!19946) setIsEmpty!19947))

(assert (= (and b!2227835 (not condSetEmpty!19946)) setNonEmpty!19947))

(assert (= setNonEmpty!19947 b!2227836))

(assert (= (and mapNonEmpty!14302 ((_ is Cons!26172) mapValue!14302)) b!2227835))

(assert (= b!2227831 b!2227834))

(assert (= (and b!2227831 condSetEmpty!19947) setIsEmpty!19946))

(assert (= (and b!2227831 (not condSetEmpty!19947)) setNonEmpty!19946))

(assert (= setNonEmpty!19946 b!2227832))

(assert (= (and mapNonEmpty!14301 ((_ is Cons!26172) mapDefault!14302)) b!2227831))

(declare-fun m!2666311 () Bool)

(assert (=> mapNonEmpty!14302 m!2666311))

(declare-fun m!2666313 () Bool)

(assert (=> b!2227835 m!2666313))

(declare-fun m!2666315 () Bool)

(assert (=> b!2227831 m!2666315))

(declare-fun m!2666317 () Bool)

(assert (=> setNonEmpty!19947 m!2666317))

(declare-fun m!2666319 () Bool)

(assert (=> setNonEmpty!19946 m!2666319))

(declare-fun condSetEmpty!19948 () Bool)

(assert (=> setNonEmpty!19924 (= condSetEmpty!19948 (= setRest!19924 ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setRes!19948 () Bool)

(assert (=> setNonEmpty!19924 (= tp!696643 setRes!19948)))

(declare-fun setIsEmpty!19948 () Bool)

(assert (=> setIsEmpty!19948 setRes!19948))

(declare-fun tp!696906 () Bool)

(declare-fun setElem!19948 () Context!3890)

(declare-fun e!1423756 () Bool)

(declare-fun setNonEmpty!19948 () Bool)

(assert (=> setNonEmpty!19948 (= setRes!19948 (and tp!696906 (inv!35534 setElem!19948) e!1423756))))

(declare-fun setRest!19948 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19948 (= setRest!19924 ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19948 true) setRest!19948))))

(declare-fun b!2227837 () Bool)

(declare-fun tp!696907 () Bool)

(assert (=> b!2227837 (= e!1423756 tp!696907)))

(assert (= (and setNonEmpty!19924 condSetEmpty!19948) setIsEmpty!19948))

(assert (= (and setNonEmpty!19924 (not condSetEmpty!19948)) setNonEmpty!19948))

(assert (= setNonEmpty!19948 b!2227837))

(declare-fun m!2666321 () Bool)

(assert (=> setNonEmpty!19948 m!2666321))

(declare-fun condSetEmpty!19949 () Bool)

(assert (=> setNonEmpty!19923 (= condSetEmpty!19949 (= setRest!19923 ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setRes!19949 () Bool)

(assert (=> setNonEmpty!19923 (= tp!696638 setRes!19949)))

(declare-fun setIsEmpty!19949 () Bool)

(assert (=> setIsEmpty!19949 setRes!19949))

(declare-fun setElem!19949 () Context!3890)

(declare-fun tp!696908 () Bool)

(declare-fun e!1423757 () Bool)

(declare-fun setNonEmpty!19949 () Bool)

(assert (=> setNonEmpty!19949 (= setRes!19949 (and tp!696908 (inv!35534 setElem!19949) e!1423757))))

(declare-fun setRest!19949 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19949 (= setRest!19923 ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19949 true) setRest!19949))))

(declare-fun b!2227838 () Bool)

(declare-fun tp!696909 () Bool)

(assert (=> b!2227838 (= e!1423757 tp!696909)))

(assert (= (and setNonEmpty!19923 condSetEmpty!19949) setIsEmpty!19949))

(assert (= (and setNonEmpty!19923 (not condSetEmpty!19949)) setNonEmpty!19949))

(assert (= setNonEmpty!19949 b!2227838))

(declare-fun m!2666323 () Bool)

(assert (=> setNonEmpty!19949 m!2666323))

(declare-fun condSetEmpty!19950 () Bool)

(assert (=> setNonEmpty!19922 (= condSetEmpty!19950 (= setRest!19922 ((as const (Array Context!3890 Bool)) false)))))

(declare-fun setRes!19950 () Bool)

(assert (=> setNonEmpty!19922 (= tp!696633 setRes!19950)))

(declare-fun setIsEmpty!19950 () Bool)

(assert (=> setIsEmpty!19950 setRes!19950))

(declare-fun setElem!19950 () Context!3890)

(declare-fun e!1423758 () Bool)

(declare-fun setNonEmpty!19950 () Bool)

(declare-fun tp!696910 () Bool)

(assert (=> setNonEmpty!19950 (= setRes!19950 (and tp!696910 (inv!35534 setElem!19950) e!1423758))))

(declare-fun setRest!19950 () (InoxSet Context!3890))

(assert (=> setNonEmpty!19950 (= setRest!19922 ((_ map or) (store ((as const (Array Context!3890 Bool)) false) setElem!19950 true) setRest!19950))))

(declare-fun b!2227839 () Bool)

(declare-fun tp!696911 () Bool)

(assert (=> b!2227839 (= e!1423758 tp!696911)))

(assert (= (and setNonEmpty!19922 condSetEmpty!19950) setIsEmpty!19950))

(assert (= (and setNonEmpty!19922 (not condSetEmpty!19950)) setNonEmpty!19950))

(assert (= setNonEmpty!19950 b!2227839))

(declare-fun m!2666325 () Bool)

(assert (=> setNonEmpty!19950 m!2666325))

(declare-fun b!2227840 () Bool)

(declare-fun e!1423759 () Bool)

(declare-fun tp!696912 () Bool)

(declare-fun tp!696913 () Bool)

(assert (=> b!2227840 (= e!1423759 (and tp!696912 tp!696913))))

(assert (=> b!2227440 (= tp!696632 e!1423759)))

(assert (= (and b!2227440 ((_ is Cons!26171) (exprs!2445 (_2!15148 (_1!15149 (h!31573 (zeroValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))))) b!2227840))

(declare-fun b!2227843 () Bool)

(declare-fun e!1423760 () Bool)

(declare-fun tp!696915 () Bool)

(assert (=> b!2227843 (= e!1423760 tp!696915)))

(declare-fun b!2227841 () Bool)

(assert (=> b!2227841 (= e!1423760 tp_is_empty!10019)))

(assert (=> b!2227426 (= tp!696615 e!1423760)))

(declare-fun b!2227842 () Bool)

(declare-fun tp!696916 () Bool)

(declare-fun tp!696914 () Bool)

(assert (=> b!2227842 (= e!1423760 (and tp!696916 tp!696914))))

(declare-fun b!2227844 () Bool)

(declare-fun tp!696918 () Bool)

(declare-fun tp!696917 () Bool)

(assert (=> b!2227844 (= e!1423760 (and tp!696918 tp!696917))))

(assert (= (and b!2227426 ((_ is ElementMatch!6397) (regOne!13307 (regOne!13306 expr!64)))) b!2227841))

(assert (= (and b!2227426 ((_ is Concat!10735) (regOne!13307 (regOne!13306 expr!64)))) b!2227842))

(assert (= (and b!2227426 ((_ is Star!6397) (regOne!13307 (regOne!13306 expr!64)))) b!2227843))

(assert (= (and b!2227426 ((_ is Union!6397) (regOne!13307 (regOne!13306 expr!64)))) b!2227844))

(declare-fun b!2227847 () Bool)

(declare-fun e!1423761 () Bool)

(declare-fun tp!696920 () Bool)

(assert (=> b!2227847 (= e!1423761 tp!696920)))

(declare-fun b!2227845 () Bool)

(assert (=> b!2227845 (= e!1423761 tp_is_empty!10019)))

(assert (=> b!2227426 (= tp!696614 e!1423761)))

(declare-fun b!2227846 () Bool)

(declare-fun tp!696921 () Bool)

(declare-fun tp!696919 () Bool)

(assert (=> b!2227846 (= e!1423761 (and tp!696921 tp!696919))))

(declare-fun b!2227848 () Bool)

(declare-fun tp!696923 () Bool)

(declare-fun tp!696922 () Bool)

(assert (=> b!2227848 (= e!1423761 (and tp!696923 tp!696922))))

(assert (= (and b!2227426 ((_ is ElementMatch!6397) (regTwo!13307 (regOne!13306 expr!64)))) b!2227845))

(assert (= (and b!2227426 ((_ is Concat!10735) (regTwo!13307 (regOne!13306 expr!64)))) b!2227846))

(assert (= (and b!2227426 ((_ is Star!6397) (regTwo!13307 (regOne!13306 expr!64)))) b!2227847))

(assert (= (and b!2227426 ((_ is Union!6397) (regTwo!13307 (regOne!13306 expr!64)))) b!2227848))

(declare-fun b!2227851 () Bool)

(declare-fun e!1423762 () Bool)

(declare-fun tp!696925 () Bool)

(assert (=> b!2227851 (= e!1423762 tp!696925)))

(declare-fun b!2227849 () Bool)

(assert (=> b!2227849 (= e!1423762 tp_is_empty!10019)))

(assert (=> b!2227417 (= tp!696602 e!1423762)))

(declare-fun b!2227850 () Bool)

(declare-fun tp!696926 () Bool)

(declare-fun tp!696924 () Bool)

(assert (=> b!2227850 (= e!1423762 (and tp!696926 tp!696924))))

(declare-fun b!2227852 () Bool)

(declare-fun tp!696928 () Bool)

(declare-fun tp!696927 () Bool)

(assert (=> b!2227852 (= e!1423762 (and tp!696928 tp!696927))))

(assert (= (and b!2227417 ((_ is ElementMatch!6397) (reg!6726 (regTwo!13307 expr!64)))) b!2227849))

(assert (= (and b!2227417 ((_ is Concat!10735) (reg!6726 (regTwo!13307 expr!64)))) b!2227850))

(assert (= (and b!2227417 ((_ is Star!6397) (reg!6726 (regTwo!13307 expr!64)))) b!2227851))

(assert (= (and b!2227417 ((_ is Union!6397) (reg!6726 (regTwo!13307 expr!64)))) b!2227852))

(declare-fun b!2227853 () Bool)

(declare-fun e!1423763 () Bool)

(declare-fun tp!696929 () Bool)

(declare-fun tp!696930 () Bool)

(assert (=> b!2227853 (= e!1423763 (and tp!696929 tp!696930))))

(assert (=> b!2227446 (= tp!696642 e!1423763)))

(assert (= (and b!2227446 ((_ is Cons!26171) (exprs!2445 (_2!15148 (_1!15149 (h!31573 mapDefault!14298)))))) b!2227853))

(declare-fun b!2227854 () Bool)

(declare-fun e!1423764 () Bool)

(declare-fun tp!696931 () Bool)

(declare-fun tp!696932 () Bool)

(assert (=> b!2227854 (= e!1423764 (and tp!696931 tp!696932))))

(assert (=> b!2227443 (= tp!696637 e!1423764)))

(assert (= (and b!2227443 ((_ is Cons!26171) (exprs!2445 (_2!15148 (_1!15149 (h!31573 (minValue!3293 (v!29746 (underlying!6271 (v!29747 (underlying!6272 (cache!3326 cacheDown!839)))))))))))) b!2227854))

(declare-fun b_lambda!71637 () Bool)

(assert (= b_lambda!71635 (or b!2227382 b_lambda!71637)))

(declare-fun bs!453654 () Bool)

(declare-fun d!664750 () Bool)

(assert (= bs!453654 (and d!664750 b!2227382)))

(declare-fun res!954928 () Bool)

(declare-fun e!1423765 () Bool)

(assert (=> bs!453654 (=> (not res!954928) (not e!1423765))))

(assert (=> bs!453654 (= res!954928 (validRegex!2374 (_1!15148 (_1!15149 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432)))))))))))

(assert (=> bs!453654 (= (dynLambda!11520 lambda!84214 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432)))))) e!1423765)))

(declare-fun b!2227855 () Bool)

(assert (=> b!2227855 (= e!1423765 (= (_2!15149 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432)))))) (derivationStepZipperDown!37 (_1!15148 (_1!15149 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))))) (_2!15148 (_1!15149 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))))) (_3!2403 (_1!15149 (h!31573 (toList!1324 (map!5344 (cache!3326 (_2!15150 e!1423432))))))))))))

(assert (= (and bs!453654 res!954928) b!2227855))

(declare-fun m!2666327 () Bool)

(assert (=> bs!453654 m!2666327))

(declare-fun m!2666329 () Bool)

(assert (=> b!2227855 m!2666329))

(assert (=> b!2227646 d!664750))

(declare-fun b_lambda!71639 () Bool)

(assert (= b_lambda!71633 (or d!664654 b_lambda!71639)))

(declare-fun bs!453655 () Bool)

(declare-fun d!664752 () Bool)

(assert (= bs!453655 (and d!664752 d!664654)))

(assert (=> bs!453655 (= (dynLambda!11519 lambda!84211 (h!31572 (exprs!2445 context!86))) (validRegex!2374 (h!31572 (exprs!2445 context!86))))))

(declare-fun m!2666331 () Bool)

(assert (=> bs!453655 m!2666331))

(assert (=> b!2227616 d!664752))

(check-sat (not b!2227555) (not b!2227744) (not bm!133481) (not b!2227767) (not b!2227775) (not b!2227617) (not b!2227625) (not b_lambda!71637) (not setNonEmpty!19947) (not d!664726) (not setNonEmpty!19946) (not b!2227803) (not b!2227854) (not b!2227761) (not bm!133436) (not b!2227740) (not b!2227702) (not b!2227771) (not b!2227751) (not b!2227813) (not b!2227836) (not b!2227742) (not b!2227785) (not b!2227757) (not b!2227727) (not b!2227840) (not b!2227755) (not b!2227799) (not b!2227843) (not b!2227747) (not b!2227779) (not b!2227791) (not b!2227758) (not bs!453654) (not b!2227848) (not d!664728) (not b!2227844) (not b!2227595) (not d!664748) (not bm!133435) (not b!2227518) (not b!2227833) (not d!664670) (not b!2227853) (not b!2227810) (not d!664732) (not d!664712) (not setNonEmpty!19935) (not b!2227669) (not b!2227801) (not b!2227819) (not b!2227743) (not b!2227788) (not b!2227789) (not bm!133472) (not setNonEmpty!19941) (not b!2227694) (not bm!133489) (not b!2227783) (not b!2227511) (not b!2227707) (not bm!133465) (not b!2227756) (not b!2227630) (not setNonEmpty!19945) (not b!2227809) (not b!2227842) (not bm!133462) (not b!2227720) (not bm!133463) (not b!2227818) (not d!664674) (not bm!133441) (not b!2227784) (not b!2227797) (not bm!133480) (not b!2227850) b_and!174591 (not d!664738) (not setNonEmpty!19936) (not b!2227825) (not b!2227816) b_and!174589 (not b!2227524) (not d!664722) (not b_next!65307) (not b!2227636) (not d!664736) (not b!2227678) (not b!2227773) (not b!2227798) (not d!664676) (not d!664684) (not bm!133492) (not b!2227721) (not d!664688) (not d!664690) (not b!2227780) (not d!664734) (not bm!133456) (not b!2227736) (not d!664740) (not b!2227826) (not b!2227667) (not b!2227724) (not b!2227753) (not b!2227673) (not b!2227765) (not bm!133459) (not b!2227665) (not b!2227822) (not d!664730) (not b!2227754) (not b!2227558) (not b!2227852) (not b!2227723) (not d!664692) (not b!2227696) (not b!2227827) (not setNonEmpty!19944) (not b!2227556) (not bm!133486) (not b!2227675) (not b!2227725) (not b!2227668) (not b!2227830) (not b!2227703) (not bm!133438) (not b!2227831) (not setNonEmpty!19939) (not b!2227647) (not b!2227750) (not b!2227774) (not mapNonEmpty!14302) (not bs!453655) (not b!2227790) (not d!664696) (not b!2227699) (not b!2227728) (not b!2227834) (not b!2227777) (not b!2227855) (not bm!133484) (not d!664672) (not b!2227821) (not d!664680) (not bm!133439) (not b!2227823) (not b!2227738) (not b!2227676) (not b_lambda!71639) (not b!2227691) (not b!2227838) (not bm!133474) (not d!664742) (not b!2227568) (not b!2227839) (not b!2227734) (not bm!133471) (not b!2227817) (not b!2227739) (not d!664724) (not b!2227769) (not b!2227829) (not b!2227851) (not bm!133477) (not b!2227731) (not b!2227802) (not b!2227574) (not b!2227494) (not b!2227835) (not bm!133444) (not b!2227732) (not b!2227760) (not b!2227716) (not b!2227832) (not b!2227698) (not b!2227672) (not b!2227653) (not b!2227618) (not b!2227735) (not bm!133447) (not b!2227733) (not b!2227600) (not setNonEmpty!19943) (not d!664704) (not b!2227619) (not b!2227763) (not b!2227847) (not b!2227663) (not b!2227787) (not bm!133468) (not b!2227762) (not bm!133460) (not b!2227729) (not b!2227795) (not b!2227700) (not b!2227579) (not b!2227606) (not b!2227746) (not bm!133455) (not b!2227764) (not b!2227713) (not b!2227793) (not setNonEmpty!19940) (not b!2227837) (not b!2227781) (not b!2227704) (not bm!133483) (not b!2227770) (not b!2227828) (not b!2227505) (not b!2227717) (not b!2227749) (not b!2227812) (not bm!133450) (not b!2227766) (not b_next!65305) (not b!2227846) (not b!2227814) (not b!2227692) (not b!2227674) (not setNonEmpty!19934) (not b!2227748) (not b!2227706) (not setNonEmpty!19942) (not bm!133445) (not bm!133490) (not d!664716) (not bm!133475) (not b!2227808) (not b!2227719) (not setNonEmpty!19948) (not b!2227715) (not setNonEmpty!19949) (not b!2227677) (not d!664720) tp_is_empty!10019 (not bm!133469) (not b!2227693) (not b!2227589) (not b!2227708) (not b!2227794) (not b!2227778) (not d!664708) (not setNonEmpty!19950) (not b!2227670) (not d!664700) (not b!2227695))
(check-sat b_and!174589 b_and!174591 (not b_next!65307) (not b_next!65305))
