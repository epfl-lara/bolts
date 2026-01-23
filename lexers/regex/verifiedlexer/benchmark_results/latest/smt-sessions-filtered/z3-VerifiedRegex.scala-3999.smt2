; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217256 () Bool)

(assert start!217256)

(declare-fun b!2226459 () Bool)

(declare-fun b_free!64569 () Bool)

(declare-fun b_next!65273 () Bool)

(assert (=> b!2226459 (= b_free!64569 (not b_next!65273))))

(declare-fun tp!695946 () Bool)

(declare-fun b_and!174557 () Bool)

(assert (=> b!2226459 (= tp!695946 b_and!174557)))

(declare-fun b!2226452 () Bool)

(declare-fun b_free!64571 () Bool)

(declare-fun b_next!65275 () Bool)

(assert (=> b!2226452 (= b_free!64571 (not b_next!65275))))

(declare-fun tp!695943 () Bool)

(declare-fun b_and!174559 () Bool)

(assert (=> b!2226452 (= tp!695943 b_and!174559)))

(declare-fun b!2226443 () Bool)

(declare-fun res!954603 () Bool)

(declare-fun e!1422869 () Bool)

(assert (=> b!2226443 (=> (not res!954603) (not e!1422869))))

(declare-datatypes ((C!12924 0))(
  ( (C!12925 (val!7510 Int)) )
))
(declare-datatypes ((Regex!6389 0))(
  ( (ElementMatch!6389 (c!355303 C!12924)) (Concat!10727 (regOne!13290 Regex!6389) (regTwo!13290 Regex!6389)) (EmptyExpr!6389) (Star!6389 (reg!6718 Regex!6389)) (EmptyLang!6389) (Union!6389 (regOne!13291 Regex!6389) (regTwo!13291 Regex!6389)) )
))
(declare-fun expr!64 () Regex!6389)

(declare-fun validRegex!2369 (Regex!6389) Bool)

(assert (=> b!2226443 (= res!954603 (validRegex!2369 (regTwo!13290 expr!64)))))

(declare-fun mapNonEmpty!14265 () Bool)

(declare-fun mapRes!14265 () Bool)

(declare-fun tp!695953 () Bool)

(declare-fun tp!695954 () Bool)

(assert (=> mapNonEmpty!14265 (= mapRes!14265 (and tp!695953 tp!695954))))

(declare-datatypes ((List!26249 0))(
  ( (Nil!26155) (Cons!26155 (h!31556 Regex!6389) (t!199661 List!26249)) )
))
(declare-datatypes ((Context!3874 0))(
  ( (Context!3875 (exprs!2437 List!26249)) )
))
(declare-datatypes ((tuple3!3850 0))(
  ( (tuple3!3851 (_1!15130 Regex!6389) (_2!15130 Context!3874) (_3!2395 C!12924)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25470 0))(
  ( (tuple2!25471 (_1!15131 tuple3!3850) (_2!15131 (InoxSet Context!3874))) )
))
(declare-datatypes ((List!26250 0))(
  ( (Nil!26156) (Cons!26156 (h!31557 tuple2!25470) (t!199662 List!26250)) )
))
(declare-fun mapRest!14265 () (Array (_ BitVec 32) List!26250))

(declare-fun mapKey!14265 () (_ BitVec 32))

(declare-datatypes ((array!10434 0))(
  ( (array!10435 (arr!4641 (Array (_ BitVec 32) (_ BitVec 64))) (size!20422 (_ BitVec 32))) )
))
(declare-datatypes ((array!10436 0))(
  ( (array!10437 (arr!4642 (Array (_ BitVec 32) List!26250)) (size!20423 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6054 0))(
  ( (LongMapFixedSize!6055 (defaultEntry!3392 Int) (mask!7575 (_ BitVec 32)) (extraKeys!3275 (_ BitVec 32)) (zeroValue!3285 List!26250) (minValue!3285 List!26250) (_size!6101 (_ BitVec 32)) (_keys!3324 array!10434) (_values!3307 array!10436) (_vacant!3088 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11925 0))(
  ( (Cell!11926 (v!29725 LongMapFixedSize!6054)) )
))
(declare-datatypes ((MutLongMap!3027 0))(
  ( (LongMap!3027 (underlying!6255 Cell!11925)) (MutLongMapExt!3026 (__x!17307 Int)) )
))
(declare-datatypes ((Cell!11927 0))(
  ( (Cell!11928 (v!29726 MutLongMap!3027)) )
))
(declare-datatypes ((Hashable!2937 0))(
  ( (HashableExt!2936 (__x!17308 Int)) )
))
(declare-datatypes ((MutableMap!2937 0))(
  ( (MutableMapExt!2936 (__x!17309 Int)) (HashMap!2937 (underlying!6256 Cell!11927) (hashF!4860 Hashable!2937) (_size!6102 (_ BitVec 32)) (defaultValue!3099 Int)) )
))
(declare-datatypes ((CacheDown!1920 0))(
  ( (CacheDown!1921 (cache!3318 MutableMap!2937)) )
))
(declare-fun cacheDown!839 () CacheDown!1920)

(declare-fun mapValue!14265 () List!26250)

(assert (=> mapNonEmpty!14265 (= (arr!4642 (_values!3307 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) (store mapRest!14265 mapKey!14265 mapValue!14265))))

(declare-fun b!2226444 () Bool)

(declare-fun e!1422871 () Bool)

(declare-fun e!1422865 () Bool)

(assert (=> b!2226444 (= e!1422871 e!1422865)))

(declare-fun b!2226445 () Bool)

(declare-fun e!1422867 () Bool)

(assert (=> b!2226445 (= e!1422867 e!1422871)))

(declare-fun b!2226446 () Bool)

(declare-fun e!1422870 () Bool)

(declare-fun tp!695948 () Bool)

(declare-fun tp!695947 () Bool)

(assert (=> b!2226446 (= e!1422870 (and tp!695948 tp!695947))))

(declare-fun res!954605 () Bool)

(assert (=> start!217256 (=> (not res!954605) (not e!1422869))))

(assert (=> start!217256 (= res!954605 (validRegex!2369 expr!64))))

(assert (=> start!217256 e!1422869))

(assert (=> start!217256 e!1422870))

(declare-fun e!1422866 () Bool)

(declare-fun inv!35511 (CacheDown!1920) Bool)

(assert (=> start!217256 (and (inv!35511 cacheDown!839) e!1422866)))

(declare-fun context!86 () Context!3874)

(declare-fun e!1422868 () Bool)

(declare-fun inv!35512 (Context!3874) Bool)

(assert (=> start!217256 (and (inv!35512 context!86) e!1422868)))

(declare-fun tp_is_empty!10003 () Bool)

(assert (=> start!217256 tp_is_empty!10003))

(declare-fun b!2226447 () Bool)

(declare-fun e!1422864 () Bool)

(declare-fun lt!830117 () MutLongMap!3027)

(get-info :version)

(assert (=> b!2226447 (= e!1422864 (and e!1422867 ((_ is LongMap!3027) lt!830117)))))

(assert (=> b!2226447 (= lt!830117 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))

(declare-fun b!2226448 () Bool)

(declare-fun tp!695944 () Bool)

(declare-fun tp!695950 () Bool)

(assert (=> b!2226448 (= e!1422870 (and tp!695944 tp!695950))))

(declare-fun b!2226449 () Bool)

(declare-fun res!954606 () Bool)

(assert (=> b!2226449 (=> (not res!954606) (not e!1422869))))

(declare-fun a!1167 () C!12924)

(assert (=> b!2226449 (= res!954606 (and (or (not ((_ is ElementMatch!6389) expr!64)) (not (= (c!355303 expr!64) a!1167))) (not ((_ is Union!6389) expr!64)) ((_ is Concat!10727) expr!64)))))

(declare-fun b!2226450 () Bool)

(declare-fun tp!695952 () Bool)

(assert (=> b!2226450 (= e!1422868 tp!695952)))

(declare-fun b!2226451 () Bool)

(declare-fun e!1422872 () Bool)

(declare-fun tp!695949 () Bool)

(assert (=> b!2226451 (= e!1422872 (and tp!695949 mapRes!14265))))

(declare-fun condMapEmpty!14265 () Bool)

(declare-fun mapDefault!14265 () List!26250)

(assert (=> b!2226451 (= condMapEmpty!14265 (= (arr!4642 (_values!3307 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26250)) mapDefault!14265)))))

(declare-fun tp!695945 () Bool)

(declare-fun tp!695955 () Bool)

(declare-fun array_inv!3331 (array!10434) Bool)

(declare-fun array_inv!3332 (array!10436) Bool)

(assert (=> b!2226452 (= e!1422865 (and tp!695943 tp!695945 tp!695955 (array_inv!3331 (_keys!3324 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) (array_inv!3332 (_values!3307 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) e!1422872))))

(declare-fun b!2226453 () Bool)

(declare-fun res!954607 () Bool)

(assert (=> b!2226453 (=> (not res!954607) (not e!1422869))))

(declare-datatypes ((Option!5082 0))(
  ( (None!5081) (Some!5081 (v!29727 (InoxSet Context!3874))) )
))
(declare-fun get!7866 (CacheDown!1920 Regex!6389 Context!3874 C!12924) Option!5082)

(assert (=> b!2226453 (= res!954607 (not ((_ is Some!5081) (get!7866 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2226454 () Bool)

(declare-fun e!1422863 () Bool)

(assert (=> b!2226454 (= e!1422866 e!1422863)))

(declare-fun b!2226455 () Bool)

(assert (=> b!2226455 (= e!1422870 tp_is_empty!10003)))

(declare-fun b!2226456 () Bool)

(assert (=> b!2226456 (= e!1422869 (not (validRegex!2369 (regOne!13290 expr!64))))))

(declare-fun b!2226457 () Bool)

(declare-fun tp!695951 () Bool)

(assert (=> b!2226457 (= e!1422870 tp!695951)))

(declare-fun b!2226458 () Bool)

(declare-fun res!954604 () Bool)

(assert (=> b!2226458 (=> (not res!954604) (not e!1422869))))

(declare-fun nullable!1744 (Regex!6389) Bool)

(assert (=> b!2226458 (= res!954604 (nullable!1744 (regOne!13290 expr!64)))))

(assert (=> b!2226459 (= e!1422863 (and e!1422864 tp!695946))))

(declare-fun mapIsEmpty!14265 () Bool)

(assert (=> mapIsEmpty!14265 mapRes!14265))

(assert (= (and start!217256 res!954605) b!2226453))

(assert (= (and b!2226453 res!954607) b!2226449))

(assert (= (and b!2226449 res!954606) b!2226458))

(assert (= (and b!2226458 res!954604) b!2226443))

(assert (= (and b!2226443 res!954603) b!2226456))

(assert (= (and start!217256 ((_ is ElementMatch!6389) expr!64)) b!2226455))

(assert (= (and start!217256 ((_ is Concat!10727) expr!64)) b!2226448))

(assert (= (and start!217256 ((_ is Star!6389) expr!64)) b!2226457))

(assert (= (and start!217256 ((_ is Union!6389) expr!64)) b!2226446))

(assert (= (and b!2226451 condMapEmpty!14265) mapIsEmpty!14265))

(assert (= (and b!2226451 (not condMapEmpty!14265)) mapNonEmpty!14265))

(assert (= b!2226452 b!2226451))

(assert (= b!2226444 b!2226452))

(assert (= b!2226445 b!2226444))

(assert (= (and b!2226447 ((_ is LongMap!3027) (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))) b!2226445))

(assert (= b!2226459 b!2226447))

(assert (= (and b!2226454 ((_ is HashMap!2937) (cache!3318 cacheDown!839))) b!2226459))

(assert (= start!217256 b!2226454))

(assert (= start!217256 b!2226450))

(declare-fun m!2665620 () Bool)

(assert (=> mapNonEmpty!14265 m!2665620))

(declare-fun m!2665622 () Bool)

(assert (=> b!2226458 m!2665622))

(declare-fun m!2665624 () Bool)

(assert (=> b!2226456 m!2665624))

(declare-fun m!2665626 () Bool)

(assert (=> b!2226453 m!2665626))

(declare-fun m!2665628 () Bool)

(assert (=> b!2226452 m!2665628))

(declare-fun m!2665630 () Bool)

(assert (=> b!2226452 m!2665630))

(declare-fun m!2665632 () Bool)

(assert (=> b!2226443 m!2665632))

(declare-fun m!2665634 () Bool)

(assert (=> start!217256 m!2665634))

(declare-fun m!2665636 () Bool)

(assert (=> start!217256 m!2665636))

(declare-fun m!2665638 () Bool)

(assert (=> start!217256 m!2665638))

(check-sat (not b_next!65275) (not mapNonEmpty!14265) (not b!2226446) (not b!2226452) (not b!2226457) (not b!2226443) (not start!217256) tp_is_empty!10003 (not b!2226448) (not b!2226453) b_and!174559 (not b!2226456) (not b!2226458) (not b!2226450) (not b_next!65273) b_and!174557 (not b!2226451))
(check-sat b_and!174557 b_and!174559 (not b_next!65275) (not b_next!65273))
(get-model)

(declare-fun d!664588 () Bool)

(declare-fun e!1422875 () Bool)

(assert (=> d!664588 e!1422875))

(declare-fun res!954610 () Bool)

(assert (=> d!664588 (=> res!954610 e!1422875)))

(declare-fun lt!830120 () Option!5082)

(declare-fun isEmpty!14884 (Option!5082) Bool)

(assert (=> d!664588 (= res!954610 (isEmpty!14884 lt!830120))))

(declare-fun choose!13114 (CacheDown!1920 Regex!6389 Context!3874 C!12924) Option!5082)

(assert (=> d!664588 (= lt!830120 (choose!13114 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!268 (MutableMap!2937) Bool)

(assert (=> d!664588 (validCacheMapDown!268 (cache!3318 cacheDown!839))))

(assert (=> d!664588 (= (get!7866 cacheDown!839 expr!64 context!86 a!1167) lt!830120)))

(declare-fun b!2226462 () Bool)

(declare-fun get!7867 (Option!5082) (InoxSet Context!3874))

(declare-fun derivationStepZipperDown!34 (Regex!6389 Context!3874 C!12924) (InoxSet Context!3874))

(assert (=> b!2226462 (= e!1422875 (= (get!7867 lt!830120) (derivationStepZipperDown!34 expr!64 context!86 a!1167)))))

(assert (= (and d!664588 (not res!954610)) b!2226462))

(declare-fun m!2665640 () Bool)

(assert (=> d!664588 m!2665640))

(declare-fun m!2665642 () Bool)

(assert (=> d!664588 m!2665642))

(declare-fun m!2665644 () Bool)

(assert (=> d!664588 m!2665644))

(declare-fun m!2665646 () Bool)

(assert (=> b!2226462 m!2665646))

(declare-fun m!2665648 () Bool)

(assert (=> b!2226462 m!2665648))

(assert (=> b!2226453 d!664588))

(declare-fun bm!133317 () Bool)

(declare-fun call!133323 () Bool)

(declare-fun call!133321 () Bool)

(assert (=> bm!133317 (= call!133323 call!133321)))

(declare-fun c!355308 () Bool)

(declare-fun c!355309 () Bool)

(declare-fun bm!133318 () Bool)

(assert (=> bm!133318 (= call!133321 (validRegex!2369 (ite c!355308 (reg!6718 expr!64) (ite c!355309 (regOne!13291 expr!64) (regOne!13290 expr!64)))))))

(declare-fun b!2226481 () Bool)

(declare-fun e!1422894 () Bool)

(declare-fun e!1422895 () Bool)

(assert (=> b!2226481 (= e!1422894 e!1422895)))

(declare-fun res!954624 () Bool)

(assert (=> b!2226481 (= res!954624 (not (nullable!1744 (reg!6718 expr!64))))))

(assert (=> b!2226481 (=> (not res!954624) (not e!1422895))))

(declare-fun b!2226482 () Bool)

(declare-fun e!1422896 () Bool)

(declare-fun call!133322 () Bool)

(assert (=> b!2226482 (= e!1422896 call!133322)))

(declare-fun b!2226483 () Bool)

(declare-fun e!1422892 () Bool)

(assert (=> b!2226483 (= e!1422892 call!133322)))

(declare-fun b!2226484 () Bool)

(declare-fun res!954625 () Bool)

(declare-fun e!1422890 () Bool)

(assert (=> b!2226484 (=> res!954625 e!1422890)))

(assert (=> b!2226484 (= res!954625 (not ((_ is Concat!10727) expr!64)))))

(declare-fun e!1422891 () Bool)

(assert (=> b!2226484 (= e!1422891 e!1422890)))

(declare-fun b!2226485 () Bool)

(assert (=> b!2226485 (= e!1422895 call!133321)))

(declare-fun b!2226486 () Bool)

(assert (=> b!2226486 (= e!1422890 e!1422892)))

(declare-fun res!954621 () Bool)

(assert (=> b!2226486 (=> (not res!954621) (not e!1422892))))

(assert (=> b!2226486 (= res!954621 call!133323)))

(declare-fun b!2226487 () Bool)

(assert (=> b!2226487 (= e!1422894 e!1422891)))

(assert (=> b!2226487 (= c!355309 ((_ is Union!6389) expr!64))))

(declare-fun d!664590 () Bool)

(declare-fun res!954622 () Bool)

(declare-fun e!1422893 () Bool)

(assert (=> d!664590 (=> res!954622 e!1422893)))

(assert (=> d!664590 (= res!954622 ((_ is ElementMatch!6389) expr!64))))

(assert (=> d!664590 (= (validRegex!2369 expr!64) e!1422893)))

(declare-fun bm!133316 () Bool)

(assert (=> bm!133316 (= call!133322 (validRegex!2369 (ite c!355309 (regTwo!13291 expr!64) (regTwo!13290 expr!64))))))

(declare-fun b!2226488 () Bool)

(declare-fun res!954623 () Bool)

(assert (=> b!2226488 (=> (not res!954623) (not e!1422896))))

(assert (=> b!2226488 (= res!954623 call!133323)))

(assert (=> b!2226488 (= e!1422891 e!1422896)))

(declare-fun b!2226489 () Bool)

(assert (=> b!2226489 (= e!1422893 e!1422894)))

(assert (=> b!2226489 (= c!355308 ((_ is Star!6389) expr!64))))

(assert (= (and d!664590 (not res!954622)) b!2226489))

(assert (= (and b!2226489 c!355308) b!2226481))

(assert (= (and b!2226489 (not c!355308)) b!2226487))

(assert (= (and b!2226481 res!954624) b!2226485))

(assert (= (and b!2226487 c!355309) b!2226488))

(assert (= (and b!2226487 (not c!355309)) b!2226484))

(assert (= (and b!2226488 res!954623) b!2226482))

(assert (= (and b!2226484 (not res!954625)) b!2226486))

(assert (= (and b!2226486 res!954621) b!2226483))

(assert (= (or b!2226482 b!2226483) bm!133316))

(assert (= (or b!2226488 b!2226486) bm!133317))

(assert (= (or b!2226485 bm!133317) bm!133318))

(declare-fun m!2665650 () Bool)

(assert (=> bm!133318 m!2665650))

(declare-fun m!2665652 () Bool)

(assert (=> b!2226481 m!2665652))

(declare-fun m!2665654 () Bool)

(assert (=> bm!133316 m!2665654))

(assert (=> start!217256 d!664590))

(declare-fun d!664592 () Bool)

(declare-fun res!954628 () Bool)

(declare-fun e!1422899 () Bool)

(assert (=> d!664592 (=> (not res!954628) (not e!1422899))))

(assert (=> d!664592 (= res!954628 ((_ is HashMap!2937) (cache!3318 cacheDown!839)))))

(assert (=> d!664592 (= (inv!35511 cacheDown!839) e!1422899)))

(declare-fun b!2226492 () Bool)

(assert (=> b!2226492 (= e!1422899 (validCacheMapDown!268 (cache!3318 cacheDown!839)))))

(assert (= (and d!664592 res!954628) b!2226492))

(assert (=> b!2226492 m!2665644))

(assert (=> start!217256 d!664592))

(declare-fun d!664594 () Bool)

(declare-fun lambda!84202 () Int)

(declare-fun forall!5346 (List!26249 Int) Bool)

(assert (=> d!664594 (= (inv!35512 context!86) (forall!5346 (exprs!2437 context!86) lambda!84202))))

(declare-fun bs!453540 () Bool)

(assert (= bs!453540 d!664594))

(declare-fun m!2665656 () Bool)

(assert (=> bs!453540 m!2665656))

(assert (=> start!217256 d!664594))

(declare-fun bm!133320 () Bool)

(declare-fun call!133326 () Bool)

(declare-fun call!133324 () Bool)

(assert (=> bm!133320 (= call!133326 call!133324)))

(declare-fun c!355310 () Bool)

(declare-fun c!355311 () Bool)

(declare-fun bm!133321 () Bool)

(assert (=> bm!133321 (= call!133324 (validRegex!2369 (ite c!355310 (reg!6718 (regOne!13290 expr!64)) (ite c!355311 (regOne!13291 (regOne!13290 expr!64)) (regOne!13290 (regOne!13290 expr!64))))))))

(declare-fun b!2226493 () Bool)

(declare-fun e!1422904 () Bool)

(declare-fun e!1422905 () Bool)

(assert (=> b!2226493 (= e!1422904 e!1422905)))

(declare-fun res!954632 () Bool)

(assert (=> b!2226493 (= res!954632 (not (nullable!1744 (reg!6718 (regOne!13290 expr!64)))))))

(assert (=> b!2226493 (=> (not res!954632) (not e!1422905))))

(declare-fun b!2226494 () Bool)

(declare-fun e!1422906 () Bool)

(declare-fun call!133325 () Bool)

(assert (=> b!2226494 (= e!1422906 call!133325)))

(declare-fun b!2226495 () Bool)

(declare-fun e!1422902 () Bool)

(assert (=> b!2226495 (= e!1422902 call!133325)))

(declare-fun b!2226496 () Bool)

(declare-fun res!954633 () Bool)

(declare-fun e!1422900 () Bool)

(assert (=> b!2226496 (=> res!954633 e!1422900)))

(assert (=> b!2226496 (= res!954633 (not ((_ is Concat!10727) (regOne!13290 expr!64))))))

(declare-fun e!1422901 () Bool)

(assert (=> b!2226496 (= e!1422901 e!1422900)))

(declare-fun b!2226497 () Bool)

(assert (=> b!2226497 (= e!1422905 call!133324)))

(declare-fun b!2226498 () Bool)

(assert (=> b!2226498 (= e!1422900 e!1422902)))

(declare-fun res!954629 () Bool)

(assert (=> b!2226498 (=> (not res!954629) (not e!1422902))))

(assert (=> b!2226498 (= res!954629 call!133326)))

(declare-fun b!2226499 () Bool)

(assert (=> b!2226499 (= e!1422904 e!1422901)))

(assert (=> b!2226499 (= c!355311 ((_ is Union!6389) (regOne!13290 expr!64)))))

(declare-fun d!664596 () Bool)

(declare-fun res!954630 () Bool)

(declare-fun e!1422903 () Bool)

(assert (=> d!664596 (=> res!954630 e!1422903)))

(assert (=> d!664596 (= res!954630 ((_ is ElementMatch!6389) (regOne!13290 expr!64)))))

(assert (=> d!664596 (= (validRegex!2369 (regOne!13290 expr!64)) e!1422903)))

(declare-fun bm!133319 () Bool)

(assert (=> bm!133319 (= call!133325 (validRegex!2369 (ite c!355311 (regTwo!13291 (regOne!13290 expr!64)) (regTwo!13290 (regOne!13290 expr!64)))))))

(declare-fun b!2226500 () Bool)

(declare-fun res!954631 () Bool)

(assert (=> b!2226500 (=> (not res!954631) (not e!1422906))))

(assert (=> b!2226500 (= res!954631 call!133326)))

(assert (=> b!2226500 (= e!1422901 e!1422906)))

(declare-fun b!2226501 () Bool)

(assert (=> b!2226501 (= e!1422903 e!1422904)))

(assert (=> b!2226501 (= c!355310 ((_ is Star!6389) (regOne!13290 expr!64)))))

(assert (= (and d!664596 (not res!954630)) b!2226501))

(assert (= (and b!2226501 c!355310) b!2226493))

(assert (= (and b!2226501 (not c!355310)) b!2226499))

(assert (= (and b!2226493 res!954632) b!2226497))

(assert (= (and b!2226499 c!355311) b!2226500))

(assert (= (and b!2226499 (not c!355311)) b!2226496))

(assert (= (and b!2226500 res!954631) b!2226494))

(assert (= (and b!2226496 (not res!954633)) b!2226498))

(assert (= (and b!2226498 res!954629) b!2226495))

(assert (= (or b!2226494 b!2226495) bm!133319))

(assert (= (or b!2226500 b!2226498) bm!133320))

(assert (= (or b!2226497 bm!133320) bm!133321))

(declare-fun m!2665658 () Bool)

(assert (=> bm!133321 m!2665658))

(declare-fun m!2665660 () Bool)

(assert (=> b!2226493 m!2665660))

(declare-fun m!2665662 () Bool)

(assert (=> bm!133319 m!2665662))

(assert (=> b!2226456 d!664596))

(declare-fun d!664598 () Bool)

(assert (=> d!664598 (= (array_inv!3331 (_keys!3324 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) (bvsge (size!20422 (_keys!3324 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2226452 d!664598))

(declare-fun d!664600 () Bool)

(assert (=> d!664600 (= (array_inv!3332 (_values!3307 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) (bvsge (size!20423 (_values!3307 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2226452 d!664600))

(declare-fun bm!133323 () Bool)

(declare-fun call!133329 () Bool)

(declare-fun call!133327 () Bool)

(assert (=> bm!133323 (= call!133329 call!133327)))

(declare-fun c!355313 () Bool)

(declare-fun c!355312 () Bool)

(declare-fun bm!133324 () Bool)

(assert (=> bm!133324 (= call!133327 (validRegex!2369 (ite c!355312 (reg!6718 (regTwo!13290 expr!64)) (ite c!355313 (regOne!13291 (regTwo!13290 expr!64)) (regOne!13290 (regTwo!13290 expr!64))))))))

(declare-fun b!2226502 () Bool)

(declare-fun e!1422911 () Bool)

(declare-fun e!1422912 () Bool)

(assert (=> b!2226502 (= e!1422911 e!1422912)))

(declare-fun res!954637 () Bool)

(assert (=> b!2226502 (= res!954637 (not (nullable!1744 (reg!6718 (regTwo!13290 expr!64)))))))

(assert (=> b!2226502 (=> (not res!954637) (not e!1422912))))

(declare-fun b!2226503 () Bool)

(declare-fun e!1422913 () Bool)

(declare-fun call!133328 () Bool)

(assert (=> b!2226503 (= e!1422913 call!133328)))

(declare-fun b!2226504 () Bool)

(declare-fun e!1422909 () Bool)

(assert (=> b!2226504 (= e!1422909 call!133328)))

(declare-fun b!2226505 () Bool)

(declare-fun res!954638 () Bool)

(declare-fun e!1422907 () Bool)

(assert (=> b!2226505 (=> res!954638 e!1422907)))

(assert (=> b!2226505 (= res!954638 (not ((_ is Concat!10727) (regTwo!13290 expr!64))))))

(declare-fun e!1422908 () Bool)

(assert (=> b!2226505 (= e!1422908 e!1422907)))

(declare-fun b!2226506 () Bool)

(assert (=> b!2226506 (= e!1422912 call!133327)))

(declare-fun b!2226507 () Bool)

(assert (=> b!2226507 (= e!1422907 e!1422909)))

(declare-fun res!954634 () Bool)

(assert (=> b!2226507 (=> (not res!954634) (not e!1422909))))

(assert (=> b!2226507 (= res!954634 call!133329)))

(declare-fun b!2226508 () Bool)

(assert (=> b!2226508 (= e!1422911 e!1422908)))

(assert (=> b!2226508 (= c!355313 ((_ is Union!6389) (regTwo!13290 expr!64)))))

(declare-fun d!664602 () Bool)

(declare-fun res!954635 () Bool)

(declare-fun e!1422910 () Bool)

(assert (=> d!664602 (=> res!954635 e!1422910)))

(assert (=> d!664602 (= res!954635 ((_ is ElementMatch!6389) (regTwo!13290 expr!64)))))

(assert (=> d!664602 (= (validRegex!2369 (regTwo!13290 expr!64)) e!1422910)))

(declare-fun bm!133322 () Bool)

(assert (=> bm!133322 (= call!133328 (validRegex!2369 (ite c!355313 (regTwo!13291 (regTwo!13290 expr!64)) (regTwo!13290 (regTwo!13290 expr!64)))))))

(declare-fun b!2226509 () Bool)

(declare-fun res!954636 () Bool)

(assert (=> b!2226509 (=> (not res!954636) (not e!1422913))))

(assert (=> b!2226509 (= res!954636 call!133329)))

(assert (=> b!2226509 (= e!1422908 e!1422913)))

(declare-fun b!2226510 () Bool)

(assert (=> b!2226510 (= e!1422910 e!1422911)))

(assert (=> b!2226510 (= c!355312 ((_ is Star!6389) (regTwo!13290 expr!64)))))

(assert (= (and d!664602 (not res!954635)) b!2226510))

(assert (= (and b!2226510 c!355312) b!2226502))

(assert (= (and b!2226510 (not c!355312)) b!2226508))

(assert (= (and b!2226502 res!954637) b!2226506))

(assert (= (and b!2226508 c!355313) b!2226509))

(assert (= (and b!2226508 (not c!355313)) b!2226505))

(assert (= (and b!2226509 res!954636) b!2226503))

(assert (= (and b!2226505 (not res!954638)) b!2226507))

(assert (= (and b!2226507 res!954634) b!2226504))

(assert (= (or b!2226503 b!2226504) bm!133322))

(assert (= (or b!2226509 b!2226507) bm!133323))

(assert (= (or b!2226506 bm!133323) bm!133324))

(declare-fun m!2665664 () Bool)

(assert (=> bm!133324 m!2665664))

(declare-fun m!2665666 () Bool)

(assert (=> b!2226502 m!2665666))

(declare-fun m!2665668 () Bool)

(assert (=> bm!133322 m!2665668))

(assert (=> b!2226443 d!664602))

(declare-fun d!664604 () Bool)

(declare-fun nullableFct!406 (Regex!6389) Bool)

(assert (=> d!664604 (= (nullable!1744 (regOne!13290 expr!64)) (nullableFct!406 (regOne!13290 expr!64)))))

(declare-fun bs!453541 () Bool)

(assert (= bs!453541 d!664604))

(declare-fun m!2665670 () Bool)

(assert (=> bs!453541 m!2665670))

(assert (=> b!2226458 d!664604))

(declare-fun b!2226524 () Bool)

(declare-fun e!1422916 () Bool)

(declare-fun tp!695967 () Bool)

(declare-fun tp!695966 () Bool)

(assert (=> b!2226524 (= e!1422916 (and tp!695967 tp!695966))))

(assert (=> b!2226448 (= tp!695944 e!1422916)))

(declare-fun b!2226521 () Bool)

(assert (=> b!2226521 (= e!1422916 tp_is_empty!10003)))

(declare-fun b!2226522 () Bool)

(declare-fun tp!695968 () Bool)

(declare-fun tp!695970 () Bool)

(assert (=> b!2226522 (= e!1422916 (and tp!695968 tp!695970))))

(declare-fun b!2226523 () Bool)

(declare-fun tp!695969 () Bool)

(assert (=> b!2226523 (= e!1422916 tp!695969)))

(assert (= (and b!2226448 ((_ is ElementMatch!6389) (regOne!13290 expr!64))) b!2226521))

(assert (= (and b!2226448 ((_ is Concat!10727) (regOne!13290 expr!64))) b!2226522))

(assert (= (and b!2226448 ((_ is Star!6389) (regOne!13290 expr!64))) b!2226523))

(assert (= (and b!2226448 ((_ is Union!6389) (regOne!13290 expr!64))) b!2226524))

(declare-fun b!2226528 () Bool)

(declare-fun e!1422917 () Bool)

(declare-fun tp!695972 () Bool)

(declare-fun tp!695971 () Bool)

(assert (=> b!2226528 (= e!1422917 (and tp!695972 tp!695971))))

(assert (=> b!2226448 (= tp!695950 e!1422917)))

(declare-fun b!2226525 () Bool)

(assert (=> b!2226525 (= e!1422917 tp_is_empty!10003)))

(declare-fun b!2226526 () Bool)

(declare-fun tp!695973 () Bool)

(declare-fun tp!695975 () Bool)

(assert (=> b!2226526 (= e!1422917 (and tp!695973 tp!695975))))

(declare-fun b!2226527 () Bool)

(declare-fun tp!695974 () Bool)

(assert (=> b!2226527 (= e!1422917 tp!695974)))

(assert (= (and b!2226448 ((_ is ElementMatch!6389) (regTwo!13290 expr!64))) b!2226525))

(assert (= (and b!2226448 ((_ is Concat!10727) (regTwo!13290 expr!64))) b!2226526))

(assert (= (and b!2226448 ((_ is Star!6389) (regTwo!13290 expr!64))) b!2226527))

(assert (= (and b!2226448 ((_ is Union!6389) (regTwo!13290 expr!64))) b!2226528))

(declare-fun b!2226543 () Bool)

(declare-fun e!1422934 () Bool)

(declare-fun tp!696005 () Bool)

(assert (=> b!2226543 (= e!1422934 tp!696005)))

(declare-fun setElem!19888 () Context!3874)

(declare-fun tp!696007 () Bool)

(declare-fun e!1422932 () Bool)

(declare-fun setNonEmpty!19888 () Bool)

(declare-fun setRes!19889 () Bool)

(assert (=> setNonEmpty!19888 (= setRes!19889 (and tp!696007 (inv!35512 setElem!19888) e!1422932))))

(declare-fun mapValue!14268 () List!26250)

(declare-fun setRest!19889 () (InoxSet Context!3874))

(assert (=> setNonEmpty!19888 (= (_2!15131 (h!31557 mapValue!14268)) ((_ map or) (store ((as const (Array Context!3874 Bool)) false) setElem!19888 true) setRest!19889))))

(declare-fun mapNonEmpty!14268 () Bool)

(declare-fun mapRes!14268 () Bool)

(declare-fun tp!696004 () Bool)

(declare-fun e!1422933 () Bool)

(assert (=> mapNonEmpty!14268 (= mapRes!14268 (and tp!696004 e!1422933))))

(declare-fun mapRest!14268 () (Array (_ BitVec 32) List!26250))

(declare-fun mapKey!14268 () (_ BitVec 32))

(assert (=> mapNonEmpty!14268 (= mapRest!14265 (store mapRest!14268 mapKey!14268 mapValue!14268))))

(declare-fun b!2226544 () Bool)

(declare-fun tp!696006 () Bool)

(assert (=> b!2226544 (= e!1422932 tp!696006)))

(declare-fun e!1422931 () Bool)

(declare-fun b!2226545 () Bool)

(declare-fun tp!696001 () Bool)

(declare-fun tp!695998 () Bool)

(assert (=> b!2226545 (= e!1422933 (and tp!696001 (inv!35512 (_2!15130 (_1!15131 (h!31557 mapValue!14268)))) e!1422931 tp_is_empty!10003 setRes!19889 tp!695998))))

(declare-fun condSetEmpty!19888 () Bool)

(assert (=> b!2226545 (= condSetEmpty!19888 (= (_2!15131 (h!31557 mapValue!14268)) ((as const (Array Context!3874 Bool)) false)))))

(declare-fun b!2226546 () Bool)

(declare-fun e!1422935 () Bool)

(declare-fun tp!696002 () Bool)

(assert (=> b!2226546 (= e!1422935 tp!696002)))

(declare-fun setNonEmpty!19889 () Bool)

(declare-fun setRes!19888 () Bool)

(declare-fun setElem!19889 () Context!3874)

(declare-fun tp!696000 () Bool)

(assert (=> setNonEmpty!19889 (= setRes!19888 (and tp!696000 (inv!35512 setElem!19889) e!1422934))))

(declare-fun mapDefault!14268 () List!26250)

(declare-fun setRest!19888 () (InoxSet Context!3874))

(assert (=> setNonEmpty!19889 (= (_2!15131 (h!31557 mapDefault!14268)) ((_ map or) (store ((as const (Array Context!3874 Bool)) false) setElem!19889 true) setRest!19888))))

(declare-fun setIsEmpty!19888 () Bool)

(assert (=> setIsEmpty!19888 setRes!19888))

(declare-fun condMapEmpty!14268 () Bool)

(assert (=> mapNonEmpty!14265 (= condMapEmpty!14268 (= mapRest!14265 ((as const (Array (_ BitVec 32) List!26250)) mapDefault!14268)))))

(declare-fun e!1422930 () Bool)

(assert (=> mapNonEmpty!14265 (= tp!695953 (and e!1422930 mapRes!14268))))

(declare-fun setIsEmpty!19889 () Bool)

(assert (=> setIsEmpty!19889 setRes!19889))

(declare-fun tp!696003 () Bool)

(declare-fun b!2226547 () Bool)

(declare-fun tp!696008 () Bool)

(assert (=> b!2226547 (= e!1422930 (and tp!696008 (inv!35512 (_2!15130 (_1!15131 (h!31557 mapDefault!14268)))) e!1422935 tp_is_empty!10003 setRes!19888 tp!696003))))

(declare-fun condSetEmpty!19889 () Bool)

(assert (=> b!2226547 (= condSetEmpty!19889 (= (_2!15131 (h!31557 mapDefault!14268)) ((as const (Array Context!3874 Bool)) false)))))

(declare-fun mapIsEmpty!14268 () Bool)

(assert (=> mapIsEmpty!14268 mapRes!14268))

(declare-fun b!2226548 () Bool)

(declare-fun tp!695999 () Bool)

(assert (=> b!2226548 (= e!1422931 tp!695999)))

(assert (= (and mapNonEmpty!14265 condMapEmpty!14268) mapIsEmpty!14268))

(assert (= (and mapNonEmpty!14265 (not condMapEmpty!14268)) mapNonEmpty!14268))

(assert (= b!2226545 b!2226548))

(assert (= (and b!2226545 condSetEmpty!19888) setIsEmpty!19889))

(assert (= (and b!2226545 (not condSetEmpty!19888)) setNonEmpty!19888))

(assert (= setNonEmpty!19888 b!2226544))

(assert (= (and mapNonEmpty!14268 ((_ is Cons!26156) mapValue!14268)) b!2226545))

(assert (= b!2226547 b!2226546))

(assert (= (and b!2226547 condSetEmpty!19889) setIsEmpty!19888))

(assert (= (and b!2226547 (not condSetEmpty!19889)) setNonEmpty!19889))

(assert (= setNonEmpty!19889 b!2226543))

(assert (= (and mapNonEmpty!14265 ((_ is Cons!26156) mapDefault!14268)) b!2226547))

(declare-fun m!2665672 () Bool)

(assert (=> setNonEmpty!19889 m!2665672))

(declare-fun m!2665674 () Bool)

(assert (=> b!2226545 m!2665674))

(declare-fun m!2665676 () Bool)

(assert (=> mapNonEmpty!14268 m!2665676))

(declare-fun m!2665678 () Bool)

(assert (=> setNonEmpty!19888 m!2665678))

(declare-fun m!2665680 () Bool)

(assert (=> b!2226547 m!2665680))

(declare-fun setNonEmpty!19892 () Bool)

(declare-fun setRes!19892 () Bool)

(declare-fun tp!696022 () Bool)

(declare-fun setElem!19892 () Context!3874)

(declare-fun e!1422944 () Bool)

(assert (=> setNonEmpty!19892 (= setRes!19892 (and tp!696022 (inv!35512 setElem!19892) e!1422944))))

(declare-fun setRest!19892 () (InoxSet Context!3874))

(assert (=> setNonEmpty!19892 (= (_2!15131 (h!31557 mapValue!14265)) ((_ map or) (store ((as const (Array Context!3874 Bool)) false) setElem!19892 true) setRest!19892))))

(declare-fun setIsEmpty!19892 () Bool)

(assert (=> setIsEmpty!19892 setRes!19892))

(declare-fun b!2226557 () Bool)

(declare-fun e!1422942 () Bool)

(declare-fun tp!696023 () Bool)

(assert (=> b!2226557 (= e!1422942 tp!696023)))

(declare-fun b!2226558 () Bool)

(declare-fun tp!696021 () Bool)

(assert (=> b!2226558 (= e!1422944 tp!696021)))

(declare-fun e!1422943 () Bool)

(assert (=> mapNonEmpty!14265 (= tp!695954 e!1422943)))

(declare-fun tp!696020 () Bool)

(declare-fun tp!696019 () Bool)

(declare-fun b!2226559 () Bool)

(assert (=> b!2226559 (= e!1422943 (and tp!696019 (inv!35512 (_2!15130 (_1!15131 (h!31557 mapValue!14265)))) e!1422942 tp_is_empty!10003 setRes!19892 tp!696020))))

(declare-fun condSetEmpty!19892 () Bool)

(assert (=> b!2226559 (= condSetEmpty!19892 (= (_2!15131 (h!31557 mapValue!14265)) ((as const (Array Context!3874 Bool)) false)))))

(assert (= b!2226559 b!2226557))

(assert (= (and b!2226559 condSetEmpty!19892) setIsEmpty!19892))

(assert (= (and b!2226559 (not condSetEmpty!19892)) setNonEmpty!19892))

(assert (= setNonEmpty!19892 b!2226558))

(assert (= (and mapNonEmpty!14265 ((_ is Cons!26156) mapValue!14265)) b!2226559))

(declare-fun m!2665682 () Bool)

(assert (=> setNonEmpty!19892 m!2665682))

(declare-fun m!2665684 () Bool)

(assert (=> b!2226559 m!2665684))

(declare-fun b!2226564 () Bool)

(declare-fun e!1422947 () Bool)

(declare-fun tp!696028 () Bool)

(declare-fun tp!696029 () Bool)

(assert (=> b!2226564 (= e!1422947 (and tp!696028 tp!696029))))

(assert (=> b!2226450 (= tp!695952 e!1422947)))

(assert (= (and b!2226450 ((_ is Cons!26155) (exprs!2437 context!86))) b!2226564))

(declare-fun b!2226568 () Bool)

(declare-fun e!1422948 () Bool)

(declare-fun tp!696031 () Bool)

(declare-fun tp!696030 () Bool)

(assert (=> b!2226568 (= e!1422948 (and tp!696031 tp!696030))))

(assert (=> b!2226446 (= tp!695948 e!1422948)))

(declare-fun b!2226565 () Bool)

(assert (=> b!2226565 (= e!1422948 tp_is_empty!10003)))

(declare-fun b!2226566 () Bool)

(declare-fun tp!696032 () Bool)

(declare-fun tp!696034 () Bool)

(assert (=> b!2226566 (= e!1422948 (and tp!696032 tp!696034))))

(declare-fun b!2226567 () Bool)

(declare-fun tp!696033 () Bool)

(assert (=> b!2226567 (= e!1422948 tp!696033)))

(assert (= (and b!2226446 ((_ is ElementMatch!6389) (regOne!13291 expr!64))) b!2226565))

(assert (= (and b!2226446 ((_ is Concat!10727) (regOne!13291 expr!64))) b!2226566))

(assert (= (and b!2226446 ((_ is Star!6389) (regOne!13291 expr!64))) b!2226567))

(assert (= (and b!2226446 ((_ is Union!6389) (regOne!13291 expr!64))) b!2226568))

(declare-fun b!2226572 () Bool)

(declare-fun e!1422949 () Bool)

(declare-fun tp!696036 () Bool)

(declare-fun tp!696035 () Bool)

(assert (=> b!2226572 (= e!1422949 (and tp!696036 tp!696035))))

(assert (=> b!2226446 (= tp!695947 e!1422949)))

(declare-fun b!2226569 () Bool)

(assert (=> b!2226569 (= e!1422949 tp_is_empty!10003)))

(declare-fun b!2226570 () Bool)

(declare-fun tp!696037 () Bool)

(declare-fun tp!696039 () Bool)

(assert (=> b!2226570 (= e!1422949 (and tp!696037 tp!696039))))

(declare-fun b!2226571 () Bool)

(declare-fun tp!696038 () Bool)

(assert (=> b!2226571 (= e!1422949 tp!696038)))

(assert (= (and b!2226446 ((_ is ElementMatch!6389) (regTwo!13291 expr!64))) b!2226569))

(assert (= (and b!2226446 ((_ is Concat!10727) (regTwo!13291 expr!64))) b!2226570))

(assert (= (and b!2226446 ((_ is Star!6389) (regTwo!13291 expr!64))) b!2226571))

(assert (= (and b!2226446 ((_ is Union!6389) (regTwo!13291 expr!64))) b!2226572))

(declare-fun setElem!19893 () Context!3874)

(declare-fun setNonEmpty!19893 () Bool)

(declare-fun setRes!19893 () Bool)

(declare-fun tp!696043 () Bool)

(declare-fun e!1422952 () Bool)

(assert (=> setNonEmpty!19893 (= setRes!19893 (and tp!696043 (inv!35512 setElem!19893) e!1422952))))

(declare-fun setRest!19893 () (InoxSet Context!3874))

(assert (=> setNonEmpty!19893 (= (_2!15131 (h!31557 mapDefault!14265)) ((_ map or) (store ((as const (Array Context!3874 Bool)) false) setElem!19893 true) setRest!19893))))

(declare-fun setIsEmpty!19893 () Bool)

(assert (=> setIsEmpty!19893 setRes!19893))

(declare-fun b!2226573 () Bool)

(declare-fun e!1422950 () Bool)

(declare-fun tp!696044 () Bool)

(assert (=> b!2226573 (= e!1422950 tp!696044)))

(declare-fun b!2226574 () Bool)

(declare-fun tp!696042 () Bool)

(assert (=> b!2226574 (= e!1422952 tp!696042)))

(declare-fun e!1422951 () Bool)

(assert (=> b!2226451 (= tp!695949 e!1422951)))

(declare-fun b!2226575 () Bool)

(declare-fun tp!696041 () Bool)

(declare-fun tp!696040 () Bool)

(assert (=> b!2226575 (= e!1422951 (and tp!696040 (inv!35512 (_2!15130 (_1!15131 (h!31557 mapDefault!14265)))) e!1422950 tp_is_empty!10003 setRes!19893 tp!696041))))

(declare-fun condSetEmpty!19893 () Bool)

(assert (=> b!2226575 (= condSetEmpty!19893 (= (_2!15131 (h!31557 mapDefault!14265)) ((as const (Array Context!3874 Bool)) false)))))

(assert (= b!2226575 b!2226573))

(assert (= (and b!2226575 condSetEmpty!19893) setIsEmpty!19893))

(assert (= (and b!2226575 (not condSetEmpty!19893)) setNonEmpty!19893))

(assert (= setNonEmpty!19893 b!2226574))

(assert (= (and b!2226451 ((_ is Cons!26156) mapDefault!14265)) b!2226575))

(declare-fun m!2665686 () Bool)

(assert (=> setNonEmpty!19893 m!2665686))

(declare-fun m!2665688 () Bool)

(assert (=> b!2226575 m!2665688))

(declare-fun tp!696048 () Bool)

(declare-fun setElem!19894 () Context!3874)

(declare-fun setNonEmpty!19894 () Bool)

(declare-fun setRes!19894 () Bool)

(declare-fun e!1422955 () Bool)

(assert (=> setNonEmpty!19894 (= setRes!19894 (and tp!696048 (inv!35512 setElem!19894) e!1422955))))

(declare-fun setRest!19894 () (InoxSet Context!3874))

(assert (=> setNonEmpty!19894 (= (_2!15131 (h!31557 (zeroValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3874 Bool)) false) setElem!19894 true) setRest!19894))))

(declare-fun setIsEmpty!19894 () Bool)

(assert (=> setIsEmpty!19894 setRes!19894))

(declare-fun b!2226576 () Bool)

(declare-fun e!1422953 () Bool)

(declare-fun tp!696049 () Bool)

(assert (=> b!2226576 (= e!1422953 tp!696049)))

(declare-fun b!2226577 () Bool)

(declare-fun tp!696047 () Bool)

(assert (=> b!2226577 (= e!1422955 tp!696047)))

(declare-fun e!1422954 () Bool)

(assert (=> b!2226452 (= tp!695945 e!1422954)))

(declare-fun tp!696045 () Bool)

(declare-fun b!2226578 () Bool)

(declare-fun tp!696046 () Bool)

(assert (=> b!2226578 (= e!1422954 (and tp!696045 (inv!35512 (_2!15130 (_1!15131 (h!31557 (zeroValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))))) e!1422953 tp_is_empty!10003 setRes!19894 tp!696046))))

(declare-fun condSetEmpty!19894 () Bool)

(assert (=> b!2226578 (= condSetEmpty!19894 (= (_2!15131 (h!31557 (zeroValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))) ((as const (Array Context!3874 Bool)) false)))))

(assert (= b!2226578 b!2226576))

(assert (= (and b!2226578 condSetEmpty!19894) setIsEmpty!19894))

(assert (= (and b!2226578 (not condSetEmpty!19894)) setNonEmpty!19894))

(assert (= setNonEmpty!19894 b!2226577))

(assert (= (and b!2226452 ((_ is Cons!26156) (zeroValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))) b!2226578))

(declare-fun m!2665690 () Bool)

(assert (=> setNonEmpty!19894 m!2665690))

(declare-fun m!2665692 () Bool)

(assert (=> b!2226578 m!2665692))

(declare-fun tp!696053 () Bool)

(declare-fun setRes!19895 () Bool)

(declare-fun setNonEmpty!19895 () Bool)

(declare-fun e!1422958 () Bool)

(declare-fun setElem!19895 () Context!3874)

(assert (=> setNonEmpty!19895 (= setRes!19895 (and tp!696053 (inv!35512 setElem!19895) e!1422958))))

(declare-fun setRest!19895 () (InoxSet Context!3874))

(assert (=> setNonEmpty!19895 (= (_2!15131 (h!31557 (minValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3874 Bool)) false) setElem!19895 true) setRest!19895))))

(declare-fun setIsEmpty!19895 () Bool)

(assert (=> setIsEmpty!19895 setRes!19895))

(declare-fun b!2226579 () Bool)

(declare-fun e!1422956 () Bool)

(declare-fun tp!696054 () Bool)

(assert (=> b!2226579 (= e!1422956 tp!696054)))

(declare-fun b!2226580 () Bool)

(declare-fun tp!696052 () Bool)

(assert (=> b!2226580 (= e!1422958 tp!696052)))

(declare-fun e!1422957 () Bool)

(assert (=> b!2226452 (= tp!695955 e!1422957)))

(declare-fun tp!696051 () Bool)

(declare-fun b!2226581 () Bool)

(declare-fun tp!696050 () Bool)

(assert (=> b!2226581 (= e!1422957 (and tp!696050 (inv!35512 (_2!15130 (_1!15131 (h!31557 (minValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))))) e!1422956 tp_is_empty!10003 setRes!19895 tp!696051))))

(declare-fun condSetEmpty!19895 () Bool)

(assert (=> b!2226581 (= condSetEmpty!19895 (= (_2!15131 (h!31557 (minValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))) ((as const (Array Context!3874 Bool)) false)))))

(assert (= b!2226581 b!2226579))

(assert (= (and b!2226581 condSetEmpty!19895) setIsEmpty!19895))

(assert (= (and b!2226581 (not condSetEmpty!19895)) setNonEmpty!19895))

(assert (= setNonEmpty!19895 b!2226580))

(assert (= (and b!2226452 ((_ is Cons!26156) (minValue!3285 (v!29725 (underlying!6255 (v!29726 (underlying!6256 (cache!3318 cacheDown!839)))))))) b!2226581))

(declare-fun m!2665694 () Bool)

(assert (=> setNonEmpty!19895 m!2665694))

(declare-fun m!2665696 () Bool)

(assert (=> b!2226581 m!2665696))

(declare-fun b!2226585 () Bool)

(declare-fun e!1422959 () Bool)

(declare-fun tp!696056 () Bool)

(declare-fun tp!696055 () Bool)

(assert (=> b!2226585 (= e!1422959 (and tp!696056 tp!696055))))

(assert (=> b!2226457 (= tp!695951 e!1422959)))

(declare-fun b!2226582 () Bool)

(assert (=> b!2226582 (= e!1422959 tp_is_empty!10003)))

(declare-fun b!2226583 () Bool)

(declare-fun tp!696057 () Bool)

(declare-fun tp!696059 () Bool)

(assert (=> b!2226583 (= e!1422959 (and tp!696057 tp!696059))))

(declare-fun b!2226584 () Bool)

(declare-fun tp!696058 () Bool)

(assert (=> b!2226584 (= e!1422959 tp!696058)))

(assert (= (and b!2226457 ((_ is ElementMatch!6389) (reg!6718 expr!64))) b!2226582))

(assert (= (and b!2226457 ((_ is Concat!10727) (reg!6718 expr!64))) b!2226583))

(assert (= (and b!2226457 ((_ is Star!6389) (reg!6718 expr!64))) b!2226584))

(assert (= (and b!2226457 ((_ is Union!6389) (reg!6718 expr!64))) b!2226585))

(check-sat (not b!2226585) (not bm!133319) (not b!2226583) (not b!2226574) (not setNonEmpty!19892) (not bm!133324) (not b!2226567) (not b!2226576) (not b!2226462) (not bm!133316) (not bm!133321) (not b_next!65275) (not setNonEmpty!19888) (not b!2226580) (not b!2226571) (not b!2226568) (not b!2226524) (not d!664604) (not b!2226564) (not b!2226575) (not setNonEmpty!19893) (not b!2226492) (not b!2226481) (not b!2226546) (not b!2226523) tp_is_empty!10003 (not b!2226543) (not b!2226559) (not b!2226548) (not b!2226584) (not b!2226526) (not b!2226522) (not b!2226528) (not b!2226557) (not b!2226544) (not b!2226581) (not b!2226558) (not b!2226572) (not bm!133322) (not bm!133318) (not setNonEmpty!19894) (not setNonEmpty!19889) (not d!664594) (not b!2226573) (not b!2226527) (not d!664588) (not setNonEmpty!19895) (not b!2226493) (not b!2226502) (not b!2226545) (not b!2226547) (not b!2226570) (not b!2226579) (not b_next!65273) b_and!174557 (not b!2226578) (not b!2226566) (not mapNonEmpty!14268) (not b!2226577) b_and!174559)
(check-sat b_and!174557 b_and!174559 (not b_next!65275) (not b_next!65273))
