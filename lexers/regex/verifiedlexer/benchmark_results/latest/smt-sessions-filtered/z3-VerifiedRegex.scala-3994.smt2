; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217200 () Bool)

(assert start!217200)

(declare-fun b!2225641 () Bool)

(declare-fun b_free!64529 () Bool)

(declare-fun b_next!65233 () Bool)

(assert (=> b!2225641 (= b_free!64529 (not b_next!65233))))

(declare-fun tp!695258 () Bool)

(declare-fun b_and!174517 () Bool)

(assert (=> b!2225641 (= tp!695258 b_and!174517)))

(declare-fun b!2225642 () Bool)

(declare-fun b_free!64531 () Bool)

(declare-fun b_next!65235 () Bool)

(assert (=> b!2225642 (= b_free!64531 (not b_next!65235))))

(declare-fun tp!695260 () Bool)

(declare-fun b_and!174519 () Bool)

(assert (=> b!2225642 (= tp!695260 b_and!174519)))

(declare-fun b!2225635 () Bool)

(declare-fun e!1422287 () Bool)

(declare-fun e!1422286 () Bool)

(assert (=> b!2225635 (= e!1422287 e!1422286)))

(declare-fun b!2225636 () Bool)

(declare-fun e!1422289 () Bool)

(declare-fun tp!695256 () Bool)

(declare-fun tp!695255 () Bool)

(assert (=> b!2225636 (= e!1422289 (and tp!695256 tp!695255))))

(declare-fun b!2225637 () Bool)

(declare-fun e!1422295 () Bool)

(declare-datatypes ((C!12904 0))(
  ( (C!12905 (val!7500 Int)) )
))
(declare-datatypes ((Regex!6379 0))(
  ( (ElementMatch!6379 (c!355253 C!12904)) (Concat!10717 (regOne!13270 Regex!6379) (regTwo!13270 Regex!6379)) (EmptyExpr!6379) (Star!6379 (reg!6708 Regex!6379)) (EmptyLang!6379) (Union!6379 (regOne!13271 Regex!6379) (regTwo!13271 Regex!6379)) )
))
(declare-datatypes ((List!26229 0))(
  ( (Nil!26135) (Cons!26135 (h!31536 Regex!6379) (t!199641 List!26229)) )
))
(declare-datatypes ((Context!3854 0))(
  ( (Context!3855 (exprs!2427 List!26229)) )
))
(declare-datatypes ((array!10388 0))(
  ( (array!10389 (arr!4621 (Array (_ BitVec 32) (_ BitVec 64))) (size!20402 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3830 0))(
  ( (tuple3!3831 (_1!15107 Regex!6379) (_2!15107 Context!3854) (_3!2385 C!12904)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25444 0))(
  ( (tuple2!25445 (_1!15108 tuple3!3830) (_2!15108 (InoxSet Context!3854))) )
))
(declare-datatypes ((List!26230 0))(
  ( (Nil!26136) (Cons!26136 (h!31537 tuple2!25444) (t!199642 List!26230)) )
))
(declare-datatypes ((array!10390 0))(
  ( (array!10391 (arr!4622 (Array (_ BitVec 32) List!26230)) (size!20403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6034 0))(
  ( (LongMapFixedSize!6035 (defaultEntry!3382 Int) (mask!7560 (_ BitVec 32)) (extraKeys!3265 (_ BitVec 32)) (zeroValue!3275 List!26230) (minValue!3275 List!26230) (_size!6081 (_ BitVec 32)) (_keys!3314 array!10388) (_values!3297 array!10390) (_vacant!3078 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11885 0))(
  ( (Cell!11886 (v!29700 LongMapFixedSize!6034)) )
))
(declare-datatypes ((MutLongMap!3017 0))(
  ( (LongMap!3017 (underlying!6235 Cell!11885)) (MutLongMapExt!3016 (__x!17277 Int)) )
))
(declare-datatypes ((Cell!11887 0))(
  ( (Cell!11888 (v!29701 MutLongMap!3017)) )
))
(declare-datatypes ((Hashable!2927 0))(
  ( (HashableExt!2926 (__x!17278 Int)) )
))
(declare-datatypes ((MutableMap!2927 0))(
  ( (MutableMapExt!2926 (__x!17279 Int)) (HashMap!2927 (underlying!6236 Cell!11887) (hashF!4850 Hashable!2927) (_size!6082 (_ BitVec 32)) (defaultValue!3089 Int)) )
))
(declare-datatypes ((CacheDown!1900 0))(
  ( (CacheDown!1901 (cache!3308 MutableMap!2927)) )
))
(declare-fun cacheDown!839 () CacheDown!1900)

(declare-fun validCacheMapDown!264 (MutableMap!2927) Bool)

(assert (=> b!2225637 (= e!1422295 (not (validCacheMapDown!264 (cache!3308 cacheDown!839))))))

(declare-fun b!2225638 () Bool)

(declare-fun e!1422292 () Bool)

(declare-fun lt!830036 () MutLongMap!3017)

(get-info :version)

(assert (=> b!2225638 (= e!1422292 (and e!1422287 ((_ is LongMap!3017) lt!830036)))))

(assert (=> b!2225638 (= lt!830036 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))

(declare-fun mapIsEmpty!14226 () Bool)

(declare-fun mapRes!14226 () Bool)

(assert (=> mapIsEmpty!14226 mapRes!14226))

(declare-fun b!2225639 () Bool)

(declare-fun e!1422288 () Bool)

(assert (=> b!2225639 (= e!1422286 e!1422288)))

(declare-fun mapNonEmpty!14226 () Bool)

(declare-fun tp!695259 () Bool)

(declare-fun tp!695254 () Bool)

(assert (=> mapNonEmpty!14226 (= mapRes!14226 (and tp!695259 tp!695254))))

(declare-fun mapKey!14226 () (_ BitVec 32))

(declare-fun mapValue!14226 () List!26230)

(declare-fun mapRest!14226 () (Array (_ BitVec 32) List!26230))

(assert (=> mapNonEmpty!14226 (= (arr!4622 (_values!3297 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) (store mapRest!14226 mapKey!14226 mapValue!14226))))

(declare-fun b!2225640 () Bool)

(declare-fun tp_is_empty!9983 () Bool)

(assert (=> b!2225640 (= e!1422289 tp_is_empty!9983)))

(declare-fun tp!695257 () Bool)

(declare-fun tp!695262 () Bool)

(declare-fun e!1422291 () Bool)

(declare-fun array_inv!3321 (array!10388) Bool)

(declare-fun array_inv!3322 (array!10390) Bool)

(assert (=> b!2225641 (= e!1422288 (and tp!695258 tp!695262 tp!695257 (array_inv!3321 (_keys!3314 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) (array_inv!3322 (_values!3297 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) e!1422291))))

(declare-fun e!1422293 () Bool)

(assert (=> b!2225642 (= e!1422293 (and e!1422292 tp!695260))))

(declare-fun b!2225643 () Bool)

(declare-fun tp!695264 () Bool)

(assert (=> b!2225643 (= e!1422291 (and tp!695264 mapRes!14226))))

(declare-fun condMapEmpty!14226 () Bool)

(declare-fun mapDefault!14226 () List!26230)

(assert (=> b!2225643 (= condMapEmpty!14226 (= (arr!4622 (_values!3297 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26230)) mapDefault!14226)))))

(declare-fun b!2225644 () Bool)

(declare-fun e!1422294 () Bool)

(assert (=> b!2225644 (= e!1422294 e!1422293)))

(declare-fun res!954448 () Bool)

(assert (=> start!217200 (=> (not res!954448) (not e!1422295))))

(declare-fun expr!64 () Regex!6379)

(declare-fun validRegex!2361 (Regex!6379) Bool)

(assert (=> start!217200 (= res!954448 (validRegex!2361 expr!64))))

(assert (=> start!217200 e!1422295))

(assert (=> start!217200 e!1422289))

(declare-fun inv!35483 (CacheDown!1900) Bool)

(assert (=> start!217200 (and (inv!35483 cacheDown!839) e!1422294)))

(declare-fun b!2225645 () Bool)

(declare-fun tp!695261 () Bool)

(declare-fun tp!695265 () Bool)

(assert (=> b!2225645 (= e!1422289 (and tp!695261 tp!695265))))

(declare-fun b!2225646 () Bool)

(declare-fun tp!695263 () Bool)

(assert (=> b!2225646 (= e!1422289 tp!695263)))

(assert (= (and start!217200 res!954448) b!2225637))

(assert (= (and start!217200 ((_ is ElementMatch!6379) expr!64)) b!2225640))

(assert (= (and start!217200 ((_ is Concat!10717) expr!64)) b!2225645))

(assert (= (and start!217200 ((_ is Star!6379) expr!64)) b!2225646))

(assert (= (and start!217200 ((_ is Union!6379) expr!64)) b!2225636))

(assert (= (and b!2225643 condMapEmpty!14226) mapIsEmpty!14226))

(assert (= (and b!2225643 (not condMapEmpty!14226)) mapNonEmpty!14226))

(assert (= b!2225641 b!2225643))

(assert (= b!2225639 b!2225641))

(assert (= b!2225635 b!2225639))

(assert (= (and b!2225638 ((_ is LongMap!3017) (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))) b!2225635))

(assert (= b!2225642 b!2225638))

(assert (= (and b!2225644 ((_ is HashMap!2927) (cache!3308 cacheDown!839))) b!2225642))

(assert (= start!217200 b!2225644))

(declare-fun m!2665309 () Bool)

(assert (=> b!2225637 m!2665309))

(declare-fun m!2665311 () Bool)

(assert (=> mapNonEmpty!14226 m!2665311))

(declare-fun m!2665313 () Bool)

(assert (=> b!2225641 m!2665313))

(declare-fun m!2665315 () Bool)

(assert (=> b!2225641 m!2665315))

(declare-fun m!2665317 () Bool)

(assert (=> start!217200 m!2665317))

(declare-fun m!2665319 () Bool)

(assert (=> start!217200 m!2665319))

(check-sat (not b!2225643) (not b_next!65233) (not b!2225636) (not b!2225641) (not b_next!65235) tp_is_empty!9983 (not start!217200) (not b!2225637) b_and!174517 b_and!174519 (not b!2225645) (not b!2225646) (not mapNonEmpty!14226))
(check-sat b_and!174519 b_and!174517 (not b_next!65233) (not b_next!65235))
(get-model)

(declare-fun d!664543 () Bool)

(assert (=> d!664543 (= (array_inv!3321 (_keys!3314 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) (bvsge (size!20402 (_keys!3314 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225641 d!664543))

(declare-fun d!664545 () Bool)

(assert (=> d!664545 (= (array_inv!3322 (_values!3297 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) (bvsge (size!20403 (_values!3297 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225641 d!664545))

(declare-fun b!2225665 () Bool)

(declare-fun e!1422313 () Bool)

(declare-fun e!1422310 () Bool)

(assert (=> b!2225665 (= e!1422313 e!1422310)))

(declare-fun c!355258 () Bool)

(assert (=> b!2225665 (= c!355258 ((_ is Star!6379) expr!64))))

(declare-fun bm!133265 () Bool)

(declare-fun c!355259 () Bool)

(declare-fun call!133271 () Bool)

(assert (=> bm!133265 (= call!133271 (validRegex!2361 (ite c!355258 (reg!6708 expr!64) (ite c!355259 (regOne!13271 expr!64) (regOne!13270 expr!64)))))))

(declare-fun b!2225666 () Bool)

(declare-fun res!954461 () Bool)

(declare-fun e!1422315 () Bool)

(assert (=> b!2225666 (=> (not res!954461) (not e!1422315))))

(declare-fun call!133272 () Bool)

(assert (=> b!2225666 (= res!954461 call!133272)))

(declare-fun e!1422312 () Bool)

(assert (=> b!2225666 (= e!1422312 e!1422315)))

(declare-fun b!2225667 () Bool)

(declare-fun e!1422311 () Bool)

(assert (=> b!2225667 (= e!1422310 e!1422311)))

(declare-fun res!954462 () Bool)

(declare-fun nullable!1741 (Regex!6379) Bool)

(assert (=> b!2225667 (= res!954462 (not (nullable!1741 (reg!6708 expr!64))))))

(assert (=> b!2225667 (=> (not res!954462) (not e!1422311))))

(declare-fun b!2225668 () Bool)

(assert (=> b!2225668 (= e!1422311 call!133271)))

(declare-fun d!664547 () Bool)

(declare-fun res!954463 () Bool)

(assert (=> d!664547 (=> res!954463 e!1422313)))

(assert (=> d!664547 (= res!954463 ((_ is ElementMatch!6379) expr!64))))

(assert (=> d!664547 (= (validRegex!2361 expr!64) e!1422313)))

(declare-fun b!2225669 () Bool)

(assert (=> b!2225669 (= e!1422310 e!1422312)))

(assert (=> b!2225669 (= c!355259 ((_ is Union!6379) expr!64))))

(declare-fun b!2225670 () Bool)

(declare-fun call!133270 () Bool)

(assert (=> b!2225670 (= e!1422315 call!133270)))

(declare-fun bm!133266 () Bool)

(assert (=> bm!133266 (= call!133272 call!133271)))

(declare-fun b!2225671 () Bool)

(declare-fun e!1422314 () Bool)

(assert (=> b!2225671 (= e!1422314 call!133270)))

(declare-fun bm!133267 () Bool)

(assert (=> bm!133267 (= call!133270 (validRegex!2361 (ite c!355259 (regTwo!13271 expr!64) (regTwo!13270 expr!64))))))

(declare-fun b!2225672 () Bool)

(declare-fun res!954459 () Bool)

(declare-fun e!1422316 () Bool)

(assert (=> b!2225672 (=> res!954459 e!1422316)))

(assert (=> b!2225672 (= res!954459 (not ((_ is Concat!10717) expr!64)))))

(assert (=> b!2225672 (= e!1422312 e!1422316)))

(declare-fun b!2225673 () Bool)

(assert (=> b!2225673 (= e!1422316 e!1422314)))

(declare-fun res!954460 () Bool)

(assert (=> b!2225673 (=> (not res!954460) (not e!1422314))))

(assert (=> b!2225673 (= res!954460 call!133272)))

(assert (= (and d!664547 (not res!954463)) b!2225665))

(assert (= (and b!2225665 c!355258) b!2225667))

(assert (= (and b!2225665 (not c!355258)) b!2225669))

(assert (= (and b!2225667 res!954462) b!2225668))

(assert (= (and b!2225669 c!355259) b!2225666))

(assert (= (and b!2225669 (not c!355259)) b!2225672))

(assert (= (and b!2225666 res!954461) b!2225670))

(assert (= (and b!2225672 (not res!954459)) b!2225673))

(assert (= (and b!2225673 res!954460) b!2225671))

(assert (= (or b!2225670 b!2225671) bm!133267))

(assert (= (or b!2225666 b!2225673) bm!133266))

(assert (= (or b!2225668 bm!133266) bm!133265))

(declare-fun m!2665321 () Bool)

(assert (=> bm!133265 m!2665321))

(declare-fun m!2665323 () Bool)

(assert (=> b!2225667 m!2665323))

(declare-fun m!2665325 () Bool)

(assert (=> bm!133267 m!2665325))

(assert (=> start!217200 d!664547))

(declare-fun d!664549 () Bool)

(declare-fun res!954466 () Bool)

(declare-fun e!1422319 () Bool)

(assert (=> d!664549 (=> (not res!954466) (not e!1422319))))

(assert (=> d!664549 (= res!954466 ((_ is HashMap!2927) (cache!3308 cacheDown!839)))))

(assert (=> d!664549 (= (inv!35483 cacheDown!839) e!1422319)))

(declare-fun b!2225676 () Bool)

(assert (=> b!2225676 (= e!1422319 (validCacheMapDown!264 (cache!3308 cacheDown!839)))))

(assert (= (and d!664549 res!954466) b!2225676))

(assert (=> b!2225676 m!2665309))

(assert (=> start!217200 d!664549))

(declare-fun d!664551 () Bool)

(declare-fun res!954473 () Bool)

(declare-fun e!1422324 () Bool)

(assert (=> d!664551 (=> (not res!954473) (not e!1422324))))

(declare-fun valid!2317 (MutableMap!2927) Bool)

(assert (=> d!664551 (= res!954473 (valid!2317 (cache!3308 cacheDown!839)))))

(assert (=> d!664551 (= (validCacheMapDown!264 (cache!3308 cacheDown!839)) e!1422324)))

(declare-fun b!2225683 () Bool)

(declare-fun res!954474 () Bool)

(assert (=> b!2225683 (=> (not res!954474) (not e!1422324))))

(declare-fun invariantList!357 (List!26230) Bool)

(declare-datatypes ((ListMap!791 0))(
  ( (ListMap!792 (toList!1323 List!26230)) )
))
(declare-fun map!5334 (MutableMap!2927) ListMap!791)

(assert (=> b!2225683 (= res!954474 (invariantList!357 (toList!1323 (map!5334 (cache!3308 cacheDown!839)))))))

(declare-fun b!2225684 () Bool)

(declare-fun lambda!84193 () Int)

(declare-fun forall!5343 (List!26230 Int) Bool)

(assert (=> b!2225684 (= e!1422324 (forall!5343 (toList!1323 (map!5334 (cache!3308 cacheDown!839))) lambda!84193))))

(assert (= (and d!664551 res!954473) b!2225683))

(assert (= (and b!2225683 res!954474) b!2225684))

(declare-fun m!2665328 () Bool)

(assert (=> d!664551 m!2665328))

(declare-fun m!2665330 () Bool)

(assert (=> b!2225683 m!2665330))

(declare-fun m!2665332 () Bool)

(assert (=> b!2225683 m!2665332))

(assert (=> b!2225684 m!2665330))

(declare-fun m!2665334 () Bool)

(assert (=> b!2225684 m!2665334))

(assert (=> b!2225637 d!664551))

(declare-fun b!2225699 () Bool)

(declare-fun e!1422342 () Bool)

(declare-fun tp!695291 () Bool)

(assert (=> b!2225699 (= e!1422342 tp!695291)))

(declare-fun setNonEmpty!19852 () Bool)

(declare-fun tp!695289 () Bool)

(declare-fun setElem!19853 () Context!3854)

(declare-fun setRes!19852 () Bool)

(declare-fun inv!35484 (Context!3854) Bool)

(assert (=> setNonEmpty!19852 (= setRes!19852 (and tp!695289 (inv!35484 setElem!19853) e!1422342))))

(declare-fun mapDefault!14229 () List!26230)

(declare-fun setRest!19852 () (InoxSet Context!3854))

(assert (=> setNonEmpty!19852 (= (_2!15108 (h!31537 mapDefault!14229)) ((_ map or) (store ((as const (Array Context!3854 Bool)) false) setElem!19853 true) setRest!19852))))

(declare-fun mapNonEmpty!14229 () Bool)

(declare-fun mapRes!14229 () Bool)

(declare-fun tp!695295 () Bool)

(declare-fun e!1422338 () Bool)

(assert (=> mapNonEmpty!14229 (= mapRes!14229 (and tp!695295 e!1422338))))

(declare-fun mapValue!14229 () List!26230)

(declare-fun mapRest!14229 () (Array (_ BitVec 32) List!26230))

(declare-fun mapKey!14229 () (_ BitVec 32))

(assert (=> mapNonEmpty!14229 (= mapRest!14226 (store mapRest!14229 mapKey!14229 mapValue!14229))))

(declare-fun b!2225700 () Bool)

(declare-fun e!1422340 () Bool)

(declare-fun tp!695298 () Bool)

(assert (=> b!2225700 (= e!1422340 tp!695298)))

(declare-fun setIsEmpty!19852 () Bool)

(assert (=> setIsEmpty!19852 setRes!19852))

(declare-fun e!1422341 () Bool)

(declare-fun b!2225701 () Bool)

(declare-fun tp!695296 () Bool)

(declare-fun tp!695288 () Bool)

(declare-fun e!1422339 () Bool)

(assert (=> b!2225701 (= e!1422341 (and tp!695296 (inv!35484 (_2!15107 (_1!15108 (h!31537 mapDefault!14229)))) e!1422339 tp_is_empty!9983 setRes!19852 tp!695288))))

(declare-fun condSetEmpty!19852 () Bool)

(assert (=> b!2225701 (= condSetEmpty!19852 (= (_2!15108 (h!31537 mapDefault!14229)) ((as const (Array Context!3854 Bool)) false)))))

(declare-fun setIsEmpty!19853 () Bool)

(declare-fun setRes!19853 () Bool)

(assert (=> setIsEmpty!19853 setRes!19853))

(declare-fun b!2225702 () Bool)

(declare-fun tp!695292 () Bool)

(assert (=> b!2225702 (= e!1422339 tp!695292)))

(declare-fun tp!695294 () Bool)

(declare-fun b!2225703 () Bool)

(declare-fun tp!695293 () Bool)

(assert (=> b!2225703 (= e!1422338 (and tp!695293 (inv!35484 (_2!15107 (_1!15108 (h!31537 mapValue!14229)))) e!1422340 tp_is_empty!9983 setRes!19853 tp!695294))))

(declare-fun condSetEmpty!19853 () Bool)

(assert (=> b!2225703 (= condSetEmpty!19853 (= (_2!15108 (h!31537 mapValue!14229)) ((as const (Array Context!3854 Bool)) false)))))

(declare-fun condMapEmpty!14229 () Bool)

(assert (=> mapNonEmpty!14226 (= condMapEmpty!14229 (= mapRest!14226 ((as const (Array (_ BitVec 32) List!26230)) mapDefault!14229)))))

(assert (=> mapNonEmpty!14226 (= tp!695259 (and e!1422341 mapRes!14229))))

(declare-fun b!2225704 () Bool)

(declare-fun e!1422337 () Bool)

(declare-fun tp!695290 () Bool)

(assert (=> b!2225704 (= e!1422337 tp!695290)))

(declare-fun setNonEmpty!19853 () Bool)

(declare-fun tp!695297 () Bool)

(declare-fun setElem!19852 () Context!3854)

(assert (=> setNonEmpty!19853 (= setRes!19853 (and tp!695297 (inv!35484 setElem!19852) e!1422337))))

(declare-fun setRest!19853 () (InoxSet Context!3854))

(assert (=> setNonEmpty!19853 (= (_2!15108 (h!31537 mapValue!14229)) ((_ map or) (store ((as const (Array Context!3854 Bool)) false) setElem!19852 true) setRest!19853))))

(declare-fun mapIsEmpty!14229 () Bool)

(assert (=> mapIsEmpty!14229 mapRes!14229))

(assert (= (and mapNonEmpty!14226 condMapEmpty!14229) mapIsEmpty!14229))

(assert (= (and mapNonEmpty!14226 (not condMapEmpty!14229)) mapNonEmpty!14229))

(assert (= b!2225703 b!2225700))

(assert (= (and b!2225703 condSetEmpty!19853) setIsEmpty!19853))

(assert (= (and b!2225703 (not condSetEmpty!19853)) setNonEmpty!19853))

(assert (= setNonEmpty!19853 b!2225704))

(assert (= (and mapNonEmpty!14229 ((_ is Cons!26136) mapValue!14229)) b!2225703))

(assert (= b!2225701 b!2225702))

(assert (= (and b!2225701 condSetEmpty!19852) setIsEmpty!19852))

(assert (= (and b!2225701 (not condSetEmpty!19852)) setNonEmpty!19852))

(assert (= setNonEmpty!19852 b!2225699))

(assert (= (and mapNonEmpty!14226 ((_ is Cons!26136) mapDefault!14229)) b!2225701))

(declare-fun m!2665336 () Bool)

(assert (=> setNonEmpty!19853 m!2665336))

(declare-fun m!2665338 () Bool)

(assert (=> b!2225703 m!2665338))

(declare-fun m!2665340 () Bool)

(assert (=> b!2225701 m!2665340))

(declare-fun m!2665342 () Bool)

(assert (=> setNonEmpty!19852 m!2665342))

(declare-fun m!2665344 () Bool)

(assert (=> mapNonEmpty!14229 m!2665344))

(declare-fun tp!695313 () Bool)

(declare-fun e!1422351 () Bool)

(declare-fun b!2225713 () Bool)

(declare-fun e!1422350 () Bool)

(declare-fun setRes!19856 () Bool)

(declare-fun tp!695312 () Bool)

(assert (=> b!2225713 (= e!1422351 (and tp!695313 (inv!35484 (_2!15107 (_1!15108 (h!31537 mapValue!14226)))) e!1422350 tp_is_empty!9983 setRes!19856 tp!695312))))

(declare-fun condSetEmpty!19856 () Bool)

(assert (=> b!2225713 (= condSetEmpty!19856 (= (_2!15108 (h!31537 mapValue!14226)) ((as const (Array Context!3854 Bool)) false)))))

(declare-fun b!2225714 () Bool)

(declare-fun tp!695309 () Bool)

(assert (=> b!2225714 (= e!1422350 tp!695309)))

(declare-fun b!2225715 () Bool)

(declare-fun e!1422349 () Bool)

(declare-fun tp!695311 () Bool)

(assert (=> b!2225715 (= e!1422349 tp!695311)))

(assert (=> mapNonEmpty!14226 (= tp!695254 e!1422351)))

(declare-fun setIsEmpty!19856 () Bool)

(assert (=> setIsEmpty!19856 setRes!19856))

(declare-fun tp!695310 () Bool)

(declare-fun setNonEmpty!19856 () Bool)

(declare-fun setElem!19856 () Context!3854)

(assert (=> setNonEmpty!19856 (= setRes!19856 (and tp!695310 (inv!35484 setElem!19856) e!1422349))))

(declare-fun setRest!19856 () (InoxSet Context!3854))

(assert (=> setNonEmpty!19856 (= (_2!15108 (h!31537 mapValue!14226)) ((_ map or) (store ((as const (Array Context!3854 Bool)) false) setElem!19856 true) setRest!19856))))

(assert (= b!2225713 b!2225714))

(assert (= (and b!2225713 condSetEmpty!19856) setIsEmpty!19856))

(assert (= (and b!2225713 (not condSetEmpty!19856)) setNonEmpty!19856))

(assert (= setNonEmpty!19856 b!2225715))

(assert (= (and mapNonEmpty!14226 ((_ is Cons!26136) mapValue!14226)) b!2225713))

(declare-fun m!2665346 () Bool)

(assert (=> b!2225713 m!2665346))

(declare-fun m!2665348 () Bool)

(assert (=> setNonEmpty!19856 m!2665348))

(declare-fun e!1422353 () Bool)

(declare-fun tp!695317 () Bool)

(declare-fun tp!695318 () Bool)

(declare-fun e!1422354 () Bool)

(declare-fun setRes!19857 () Bool)

(declare-fun b!2225716 () Bool)

(assert (=> b!2225716 (= e!1422354 (and tp!695318 (inv!35484 (_2!15107 (_1!15108 (h!31537 mapDefault!14226)))) e!1422353 tp_is_empty!9983 setRes!19857 tp!695317))))

(declare-fun condSetEmpty!19857 () Bool)

(assert (=> b!2225716 (= condSetEmpty!19857 (= (_2!15108 (h!31537 mapDefault!14226)) ((as const (Array Context!3854 Bool)) false)))))

(declare-fun b!2225717 () Bool)

(declare-fun tp!695314 () Bool)

(assert (=> b!2225717 (= e!1422353 tp!695314)))

(declare-fun b!2225718 () Bool)

(declare-fun e!1422352 () Bool)

(declare-fun tp!695316 () Bool)

(assert (=> b!2225718 (= e!1422352 tp!695316)))

(assert (=> b!2225643 (= tp!695264 e!1422354)))

(declare-fun setIsEmpty!19857 () Bool)

(assert (=> setIsEmpty!19857 setRes!19857))

(declare-fun setNonEmpty!19857 () Bool)

(declare-fun setElem!19857 () Context!3854)

(declare-fun tp!695315 () Bool)

(assert (=> setNonEmpty!19857 (= setRes!19857 (and tp!695315 (inv!35484 setElem!19857) e!1422352))))

(declare-fun setRest!19857 () (InoxSet Context!3854))

(assert (=> setNonEmpty!19857 (= (_2!15108 (h!31537 mapDefault!14226)) ((_ map or) (store ((as const (Array Context!3854 Bool)) false) setElem!19857 true) setRest!19857))))

(assert (= b!2225716 b!2225717))

(assert (= (and b!2225716 condSetEmpty!19857) setIsEmpty!19857))

(assert (= (and b!2225716 (not condSetEmpty!19857)) setNonEmpty!19857))

(assert (= setNonEmpty!19857 b!2225718))

(assert (= (and b!2225643 ((_ is Cons!26136) mapDefault!14226)) b!2225716))

(declare-fun m!2665350 () Bool)

(assert (=> b!2225716 m!2665350))

(declare-fun m!2665352 () Bool)

(assert (=> setNonEmpty!19857 m!2665352))

(declare-fun b!2225732 () Bool)

(declare-fun e!1422357 () Bool)

(declare-fun tp!695333 () Bool)

(declare-fun tp!695331 () Bool)

(assert (=> b!2225732 (= e!1422357 (and tp!695333 tp!695331))))

(declare-fun b!2225729 () Bool)

(assert (=> b!2225729 (= e!1422357 tp_is_empty!9983)))

(declare-fun b!2225731 () Bool)

(declare-fun tp!695329 () Bool)

(assert (=> b!2225731 (= e!1422357 tp!695329)))

(assert (=> b!2225646 (= tp!695263 e!1422357)))

(declare-fun b!2225730 () Bool)

(declare-fun tp!695330 () Bool)

(declare-fun tp!695332 () Bool)

(assert (=> b!2225730 (= e!1422357 (and tp!695330 tp!695332))))

(assert (= (and b!2225646 ((_ is ElementMatch!6379) (reg!6708 expr!64))) b!2225729))

(assert (= (and b!2225646 ((_ is Concat!10717) (reg!6708 expr!64))) b!2225730))

(assert (= (and b!2225646 ((_ is Star!6379) (reg!6708 expr!64))) b!2225731))

(assert (= (and b!2225646 ((_ is Union!6379) (reg!6708 expr!64))) b!2225732))

(declare-fun b!2225733 () Bool)

(declare-fun e!1422359 () Bool)

(declare-fun e!1422360 () Bool)

(declare-fun tp!695338 () Bool)

(declare-fun tp!695337 () Bool)

(declare-fun setRes!19858 () Bool)

(assert (=> b!2225733 (= e!1422360 (and tp!695338 (inv!35484 (_2!15107 (_1!15108 (h!31537 (zeroValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))))) e!1422359 tp_is_empty!9983 setRes!19858 tp!695337))))

(declare-fun condSetEmpty!19858 () Bool)

(assert (=> b!2225733 (= condSetEmpty!19858 (= (_2!15108 (h!31537 (zeroValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))) ((as const (Array Context!3854 Bool)) false)))))

(declare-fun b!2225734 () Bool)

(declare-fun tp!695334 () Bool)

(assert (=> b!2225734 (= e!1422359 tp!695334)))

(declare-fun b!2225735 () Bool)

(declare-fun e!1422358 () Bool)

(declare-fun tp!695336 () Bool)

(assert (=> b!2225735 (= e!1422358 tp!695336)))

(assert (=> b!2225641 (= tp!695262 e!1422360)))

(declare-fun setIsEmpty!19858 () Bool)

(assert (=> setIsEmpty!19858 setRes!19858))

(declare-fun setElem!19858 () Context!3854)

(declare-fun setNonEmpty!19858 () Bool)

(declare-fun tp!695335 () Bool)

(assert (=> setNonEmpty!19858 (= setRes!19858 (and tp!695335 (inv!35484 setElem!19858) e!1422358))))

(declare-fun setRest!19858 () (InoxSet Context!3854))

(assert (=> setNonEmpty!19858 (= (_2!15108 (h!31537 (zeroValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3854 Bool)) false) setElem!19858 true) setRest!19858))))

(assert (= b!2225733 b!2225734))

(assert (= (and b!2225733 condSetEmpty!19858) setIsEmpty!19858))

(assert (= (and b!2225733 (not condSetEmpty!19858)) setNonEmpty!19858))

(assert (= setNonEmpty!19858 b!2225735))

(assert (= (and b!2225641 ((_ is Cons!26136) (zeroValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))) b!2225733))

(declare-fun m!2665354 () Bool)

(assert (=> b!2225733 m!2665354))

(declare-fun m!2665356 () Bool)

(assert (=> setNonEmpty!19858 m!2665356))

(declare-fun setRes!19859 () Bool)

(declare-fun tp!695343 () Bool)

(declare-fun e!1422363 () Bool)

(declare-fun e!1422362 () Bool)

(declare-fun b!2225736 () Bool)

(declare-fun tp!695342 () Bool)

(assert (=> b!2225736 (= e!1422363 (and tp!695343 (inv!35484 (_2!15107 (_1!15108 (h!31537 (minValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))))) e!1422362 tp_is_empty!9983 setRes!19859 tp!695342))))

(declare-fun condSetEmpty!19859 () Bool)

(assert (=> b!2225736 (= condSetEmpty!19859 (= (_2!15108 (h!31537 (minValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))) ((as const (Array Context!3854 Bool)) false)))))

(declare-fun b!2225737 () Bool)

(declare-fun tp!695339 () Bool)

(assert (=> b!2225737 (= e!1422362 tp!695339)))

(declare-fun b!2225738 () Bool)

(declare-fun e!1422361 () Bool)

(declare-fun tp!695341 () Bool)

(assert (=> b!2225738 (= e!1422361 tp!695341)))

(assert (=> b!2225641 (= tp!695257 e!1422363)))

(declare-fun setIsEmpty!19859 () Bool)

(assert (=> setIsEmpty!19859 setRes!19859))

(declare-fun tp!695340 () Bool)

(declare-fun setNonEmpty!19859 () Bool)

(declare-fun setElem!19859 () Context!3854)

(assert (=> setNonEmpty!19859 (= setRes!19859 (and tp!695340 (inv!35484 setElem!19859) e!1422361))))

(declare-fun setRest!19859 () (InoxSet Context!3854))

(assert (=> setNonEmpty!19859 (= (_2!15108 (h!31537 (minValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3854 Bool)) false) setElem!19859 true) setRest!19859))))

(assert (= b!2225736 b!2225737))

(assert (= (and b!2225736 condSetEmpty!19859) setIsEmpty!19859))

(assert (= (and b!2225736 (not condSetEmpty!19859)) setNonEmpty!19859))

(assert (= setNonEmpty!19859 b!2225738))

(assert (= (and b!2225641 ((_ is Cons!26136) (minValue!3275 (v!29700 (underlying!6235 (v!29701 (underlying!6236 (cache!3308 cacheDown!839)))))))) b!2225736))

(declare-fun m!2665358 () Bool)

(assert (=> b!2225736 m!2665358))

(declare-fun m!2665360 () Bool)

(assert (=> setNonEmpty!19859 m!2665360))

(declare-fun b!2225742 () Bool)

(declare-fun e!1422364 () Bool)

(declare-fun tp!695348 () Bool)

(declare-fun tp!695346 () Bool)

(assert (=> b!2225742 (= e!1422364 (and tp!695348 tp!695346))))

(declare-fun b!2225739 () Bool)

(assert (=> b!2225739 (= e!1422364 tp_is_empty!9983)))

(declare-fun b!2225741 () Bool)

(declare-fun tp!695344 () Bool)

(assert (=> b!2225741 (= e!1422364 tp!695344)))

(assert (=> b!2225636 (= tp!695256 e!1422364)))

(declare-fun b!2225740 () Bool)

(declare-fun tp!695345 () Bool)

(declare-fun tp!695347 () Bool)

(assert (=> b!2225740 (= e!1422364 (and tp!695345 tp!695347))))

(assert (= (and b!2225636 ((_ is ElementMatch!6379) (regOne!13271 expr!64))) b!2225739))

(assert (= (and b!2225636 ((_ is Concat!10717) (regOne!13271 expr!64))) b!2225740))

(assert (= (and b!2225636 ((_ is Star!6379) (regOne!13271 expr!64))) b!2225741))

(assert (= (and b!2225636 ((_ is Union!6379) (regOne!13271 expr!64))) b!2225742))

(declare-fun b!2225746 () Bool)

(declare-fun e!1422365 () Bool)

(declare-fun tp!695353 () Bool)

(declare-fun tp!695351 () Bool)

(assert (=> b!2225746 (= e!1422365 (and tp!695353 tp!695351))))

(declare-fun b!2225743 () Bool)

(assert (=> b!2225743 (= e!1422365 tp_is_empty!9983)))

(declare-fun b!2225745 () Bool)

(declare-fun tp!695349 () Bool)

(assert (=> b!2225745 (= e!1422365 tp!695349)))

(assert (=> b!2225636 (= tp!695255 e!1422365)))

(declare-fun b!2225744 () Bool)

(declare-fun tp!695350 () Bool)

(declare-fun tp!695352 () Bool)

(assert (=> b!2225744 (= e!1422365 (and tp!695350 tp!695352))))

(assert (= (and b!2225636 ((_ is ElementMatch!6379) (regTwo!13271 expr!64))) b!2225743))

(assert (= (and b!2225636 ((_ is Concat!10717) (regTwo!13271 expr!64))) b!2225744))

(assert (= (and b!2225636 ((_ is Star!6379) (regTwo!13271 expr!64))) b!2225745))

(assert (= (and b!2225636 ((_ is Union!6379) (regTwo!13271 expr!64))) b!2225746))

(declare-fun b!2225750 () Bool)

(declare-fun e!1422366 () Bool)

(declare-fun tp!695358 () Bool)

(declare-fun tp!695356 () Bool)

(assert (=> b!2225750 (= e!1422366 (and tp!695358 tp!695356))))

(declare-fun b!2225747 () Bool)

(assert (=> b!2225747 (= e!1422366 tp_is_empty!9983)))

(declare-fun b!2225749 () Bool)

(declare-fun tp!695354 () Bool)

(assert (=> b!2225749 (= e!1422366 tp!695354)))

(assert (=> b!2225645 (= tp!695261 e!1422366)))

(declare-fun b!2225748 () Bool)

(declare-fun tp!695355 () Bool)

(declare-fun tp!695357 () Bool)

(assert (=> b!2225748 (= e!1422366 (and tp!695355 tp!695357))))

(assert (= (and b!2225645 ((_ is ElementMatch!6379) (regOne!13270 expr!64))) b!2225747))

(assert (= (and b!2225645 ((_ is Concat!10717) (regOne!13270 expr!64))) b!2225748))

(assert (= (and b!2225645 ((_ is Star!6379) (regOne!13270 expr!64))) b!2225749))

(assert (= (and b!2225645 ((_ is Union!6379) (regOne!13270 expr!64))) b!2225750))

(declare-fun b!2225754 () Bool)

(declare-fun e!1422367 () Bool)

(declare-fun tp!695363 () Bool)

(declare-fun tp!695361 () Bool)

(assert (=> b!2225754 (= e!1422367 (and tp!695363 tp!695361))))

(declare-fun b!2225751 () Bool)

(assert (=> b!2225751 (= e!1422367 tp_is_empty!9983)))

(declare-fun b!2225753 () Bool)

(declare-fun tp!695359 () Bool)

(assert (=> b!2225753 (= e!1422367 tp!695359)))

(assert (=> b!2225645 (= tp!695265 e!1422367)))

(declare-fun b!2225752 () Bool)

(declare-fun tp!695360 () Bool)

(declare-fun tp!695362 () Bool)

(assert (=> b!2225752 (= e!1422367 (and tp!695360 tp!695362))))

(assert (= (and b!2225645 ((_ is ElementMatch!6379) (regTwo!13270 expr!64))) b!2225751))

(assert (= (and b!2225645 ((_ is Concat!10717) (regTwo!13270 expr!64))) b!2225752))

(assert (= (and b!2225645 ((_ is Star!6379) (regTwo!13270 expr!64))) b!2225753))

(assert (= (and b!2225645 ((_ is Union!6379) (regTwo!13270 expr!64))) b!2225754))

(check-sat (not b!2225700) (not setNonEmpty!19853) (not b!2225733) (not b!2225683) (not b!2225701) (not b!2225741) (not b!2225749) (not b!2225744) (not b!2225676) (not b!2225734) (not mapNonEmpty!14229) (not setNonEmpty!19852) (not b_next!65233) (not b!2225702) (not b!2225667) (not b!2225748) (not bm!133267) (not b!2225699) (not b!2225745) (not b!2225753) b_and!174517 b_and!174519 (not setNonEmpty!19857) (not b!2225704) (not b!2225746) (not b!2225750) (not b!2225731) (not bm!133265) (not b!2225715) (not b!2225736) (not b_next!65235) (not b!2225732) (not setNonEmpty!19856) (not b!2225716) (not setNonEmpty!19858) (not b!2225703) (not b!2225714) (not b!2225754) (not b!2225684) (not b!2225737) (not b!2225730) (not setNonEmpty!19859) (not b!2225717) tp_is_empty!9983 (not d!664551) (not b!2225718) (not b!2225713) (not b!2225742) (not b!2225740) (not b!2225752) (not b!2225735) (not b!2225738))
(check-sat b_and!174519 b_and!174517 (not b_next!65233) (not b_next!65235))
