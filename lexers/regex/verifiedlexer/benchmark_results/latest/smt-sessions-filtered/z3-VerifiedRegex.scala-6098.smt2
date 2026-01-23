; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296756 () Bool)

(assert start!296756)

(declare-fun b!3167295 () Bool)

(declare-fun b_free!83153 () Bool)

(declare-fun b_next!83857 () Bool)

(assert (=> b!3167295 (= b_free!83153 (not b_next!83857))))

(declare-fun tp!998477 () Bool)

(declare-fun b_and!209423 () Bool)

(assert (=> b!3167295 (= tp!998477 b_and!209423)))

(declare-fun b!3167289 () Bool)

(declare-fun b_free!83155 () Bool)

(declare-fun b_next!83859 () Bool)

(assert (=> b!3167289 (= b_free!83155 (not b_next!83859))))

(declare-fun tp!998466 () Bool)

(declare-fun b_and!209425 () Bool)

(assert (=> b!3167289 (= tp!998466 b_and!209425)))

(declare-fun b!3167280 () Bool)

(declare-fun e!1972856 () Bool)

(declare-fun e!1972853 () Bool)

(declare-datatypes ((C!19680 0))(
  ( (C!19681 (val!11876 Int)) )
))
(declare-datatypes ((Regex!9747 0))(
  ( (ElementMatch!9747 (c!532667 C!19680)) (Concat!15068 (regOne!20006 Regex!9747) (regTwo!20006 Regex!9747)) (EmptyExpr!9747) (Star!9747 (reg!10076 Regex!9747)) (EmptyLang!9747) (Union!9747 (regOne!20007 Regex!9747) (regTwo!20007 Regex!9747)) )
))
(declare-datatypes ((tuple2!34580 0))(
  ( (tuple2!34581 (_1!20422 Regex!9747) (_2!20422 C!19680)) )
))
(declare-datatypes ((tuple2!34582 0))(
  ( (tuple2!34583 (_1!20423 tuple2!34580) (_2!20423 Regex!9747)) )
))
(declare-datatypes ((array!14884 0))(
  ( (array!14885 (arr!6626 (Array (_ BitVec 32) (_ BitVec 64))) (size!26712 (_ BitVec 32))) )
))
(declare-datatypes ((List!35582 0))(
  ( (Nil!35458) (Cons!35458 (h!40878 tuple2!34582) (t!234661 List!35582)) )
))
(declare-datatypes ((array!14886 0))(
  ( (array!14887 (arr!6627 (Array (_ BitVec 32) List!35582)) (size!26713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8336 0))(
  ( (LongMapFixedSize!8337 (defaultEntry!4553 Int) (mask!10835 (_ BitVec 32)) (extraKeys!4417 (_ BitVec 32)) (zeroValue!4427 List!35582) (minValue!4427 List!35582) (_size!8379 (_ BitVec 32)) (_keys!4468 array!14884) (_values!4449 array!14886) (_vacant!4229 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16481 0))(
  ( (Cell!16482 (v!35159 LongMapFixedSize!8336)) )
))
(declare-datatypes ((MutLongMap!4168 0))(
  ( (LongMap!4168 (underlying!8565 Cell!16481)) (MutLongMapExt!4167 (__x!22610 Int)) )
))
(declare-fun lt!1064847 () MutLongMap!4168)

(get-info :version)

(assert (=> b!3167280 (= e!1972856 (and e!1972853 ((_ is LongMap!4168) lt!1064847)))))

(declare-datatypes ((Hashable!4084 0))(
  ( (HashableExt!4083 (__x!22611 Int)) )
))
(declare-datatypes ((Cell!16483 0))(
  ( (Cell!16484 (v!35160 MutLongMap!4168)) )
))
(declare-datatypes ((MutableMap!4074 0))(
  ( (MutableMapExt!4073 (__x!22612 Int)) (HashMap!4074 (underlying!8566 Cell!16483) (hashF!6116 Hashable!4084) (_size!8380 (_ BitVec 32)) (defaultValue!4245 Int)) )
))
(declare-datatypes ((Cache!418 0))(
  ( (Cache!419 (cache!4218 MutableMap!4074)) )
))
(declare-fun cache!347 () Cache!418)

(assert (=> b!3167280 (= lt!1064847 (v!35160 (underlying!8566 (cache!4218 cache!347))))))

(declare-fun b!3167281 () Bool)

(declare-fun e!1972852 () Bool)

(declare-fun r!13156 () Regex!9747)

(declare-fun RegexPrimitiveSize!133 (Regex!9747) Int)

(assert (=> b!3167281 (= e!1972852 (>= (RegexPrimitiveSize!133 (regTwo!20006 r!13156)) (RegexPrimitiveSize!133 r!13156)))))

(declare-datatypes ((tuple2!34584 0))(
  ( (tuple2!34585 (_1!20424 Regex!9747) (_2!20424 Cache!418)) )
))
(declare-fun lt!1064848 () tuple2!34584)

(declare-fun a!2409 () C!19680)

(declare-fun derivativeStepMem!31 (Regex!9747 C!19680 Cache!418) tuple2!34584)

(assert (=> b!3167281 (= lt!1064848 (derivativeStepMem!31 (regOne!20006 r!13156) a!2409 cache!347))))

(declare-fun b!3167282 () Bool)

(declare-fun res!1288220 () Bool)

(assert (=> b!3167282 (=> (not res!1288220) (not e!1972852))))

(declare-fun nullable!3348 (Regex!9747) Bool)

(assert (=> b!3167282 (= res!1288220 (nullable!3348 (regOne!20006 r!13156)))))

(declare-fun b!3167283 () Bool)

(declare-fun e!1972854 () Bool)

(declare-fun e!1972859 () Bool)

(assert (=> b!3167283 (= e!1972854 e!1972859)))

(declare-fun b!3167284 () Bool)

(declare-fun e!1972858 () Bool)

(declare-fun tp!998467 () Bool)

(assert (=> b!3167284 (= e!1972858 tp!998467)))

(declare-fun mapIsEmpty!18903 () Bool)

(declare-fun mapRes!18903 () Bool)

(assert (=> mapIsEmpty!18903 mapRes!18903))

(declare-fun b!3167285 () Bool)

(declare-fun tp!998468 () Bool)

(declare-fun tp!998472 () Bool)

(assert (=> b!3167285 (= e!1972858 (and tp!998468 tp!998472))))

(declare-fun b!3167286 () Bool)

(assert (=> b!3167286 (= e!1972853 e!1972854)))

(declare-fun b!3167287 () Bool)

(declare-fun res!1288222 () Bool)

(assert (=> b!3167287 (=> (not res!1288222) (not e!1972852))))

(declare-datatypes ((Option!6912 0))(
  ( (None!6911) (Some!6911 (v!35161 Regex!9747)) )
))
(declare-fun get!11260 (Cache!418 Regex!9747 C!19680) Option!6912)

(assert (=> b!3167287 (= res!1288222 (not ((_ is Some!6911) (get!11260 cache!347 r!13156 a!2409))))))

(declare-fun b!3167288 () Bool)

(declare-fun tp_is_empty!17057 () Bool)

(assert (=> b!3167288 (= e!1972858 tp_is_empty!17057)))

(declare-fun res!1288219 () Bool)

(assert (=> start!296756 (=> (not res!1288219) (not e!1972852))))

(declare-fun validRegex!4466 (Regex!9747) Bool)

(assert (=> start!296756 (= res!1288219 (validRegex!4466 r!13156))))

(assert (=> start!296756 e!1972852))

(assert (=> start!296756 e!1972858))

(declare-fun e!1972861 () Bool)

(declare-fun inv!48134 (Cache!418) Bool)

(assert (=> start!296756 (and (inv!48134 cache!347) e!1972861)))

(assert (=> start!296756 tp_is_empty!17057))

(declare-fun e!1972857 () Bool)

(assert (=> b!3167289 (= e!1972857 (and e!1972856 tp!998466))))

(declare-fun b!3167290 () Bool)

(assert (=> b!3167290 (= e!1972861 e!1972857)))

(declare-fun b!3167291 () Bool)

(declare-fun e!1972855 () Bool)

(declare-fun tp!998474 () Bool)

(assert (=> b!3167291 (= e!1972855 (and tp!998474 mapRes!18903))))

(declare-fun condMapEmpty!18903 () Bool)

(declare-fun mapDefault!18903 () List!35582)

(assert (=> b!3167291 (= condMapEmpty!18903 (= (arr!6627 (_values!4449 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) ((as const (Array (_ BitVec 32) List!35582)) mapDefault!18903)))))

(declare-fun b!3167292 () Bool)

(declare-fun res!1288221 () Bool)

(assert (=> b!3167292 (=> (not res!1288221) (not e!1972852))))

(declare-fun valid!3253 (Cache!418) Bool)

(assert (=> b!3167292 (= res!1288221 (valid!3253 cache!347))))

(declare-fun mapNonEmpty!18903 () Bool)

(declare-fun tp!998475 () Bool)

(declare-fun tp!998470 () Bool)

(assert (=> mapNonEmpty!18903 (= mapRes!18903 (and tp!998475 tp!998470))))

(declare-fun mapRest!18903 () (Array (_ BitVec 32) List!35582))

(declare-fun mapKey!18903 () (_ BitVec 32))

(declare-fun mapValue!18903 () List!35582)

(assert (=> mapNonEmpty!18903 (= (arr!6627 (_values!4449 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) (store mapRest!18903 mapKey!18903 mapValue!18903))))

(declare-fun b!3167293 () Bool)

(declare-fun tp!998473 () Bool)

(declare-fun tp!998471 () Bool)

(assert (=> b!3167293 (= e!1972858 (and tp!998473 tp!998471))))

(declare-fun b!3167294 () Bool)

(declare-fun res!1288223 () Bool)

(assert (=> b!3167294 (=> (not res!1288223) (not e!1972852))))

(assert (=> b!3167294 (= res!1288223 (and (not ((_ is EmptyExpr!9747) r!13156)) (not ((_ is EmptyLang!9747) r!13156)) (not ((_ is ElementMatch!9747) r!13156)) (not ((_ is Union!9747) r!13156)) (not ((_ is Star!9747) r!13156))))))

(declare-fun tp!998476 () Bool)

(declare-fun tp!998469 () Bool)

(declare-fun array_inv!4748 (array!14884) Bool)

(declare-fun array_inv!4749 (array!14886) Bool)

(assert (=> b!3167295 (= e!1972859 (and tp!998477 tp!998476 tp!998469 (array_inv!4748 (_keys!4468 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) (array_inv!4749 (_values!4449 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) e!1972855))))

(assert (= (and start!296756 res!1288219) b!3167292))

(assert (= (and b!3167292 res!1288221) b!3167287))

(assert (= (and b!3167287 res!1288222) b!3167294))

(assert (= (and b!3167294 res!1288223) b!3167282))

(assert (= (and b!3167282 res!1288220) b!3167281))

(assert (= (and start!296756 ((_ is ElementMatch!9747) r!13156)) b!3167288))

(assert (= (and start!296756 ((_ is Concat!15068) r!13156)) b!3167293))

(assert (= (and start!296756 ((_ is Star!9747) r!13156)) b!3167284))

(assert (= (and start!296756 ((_ is Union!9747) r!13156)) b!3167285))

(assert (= (and b!3167291 condMapEmpty!18903) mapIsEmpty!18903))

(assert (= (and b!3167291 (not condMapEmpty!18903)) mapNonEmpty!18903))

(assert (= b!3167295 b!3167291))

(assert (= b!3167283 b!3167295))

(assert (= b!3167286 b!3167283))

(assert (= (and b!3167280 ((_ is LongMap!4168) (v!35160 (underlying!8566 (cache!4218 cache!347))))) b!3167286))

(assert (= b!3167289 b!3167280))

(assert (= (and b!3167290 ((_ is HashMap!4074) (cache!4218 cache!347))) b!3167289))

(assert (= start!296756 b!3167290))

(declare-fun m!3428485 () Bool)

(assert (=> b!3167295 m!3428485))

(declare-fun m!3428487 () Bool)

(assert (=> b!3167295 m!3428487))

(declare-fun m!3428489 () Bool)

(assert (=> start!296756 m!3428489))

(declare-fun m!3428491 () Bool)

(assert (=> start!296756 m!3428491))

(declare-fun m!3428493 () Bool)

(assert (=> b!3167292 m!3428493))

(declare-fun m!3428495 () Bool)

(assert (=> b!3167281 m!3428495))

(declare-fun m!3428497 () Bool)

(assert (=> b!3167281 m!3428497))

(declare-fun m!3428499 () Bool)

(assert (=> b!3167281 m!3428499))

(declare-fun m!3428501 () Bool)

(assert (=> b!3167287 m!3428501))

(declare-fun m!3428503 () Bool)

(assert (=> mapNonEmpty!18903 m!3428503))

(declare-fun m!3428505 () Bool)

(assert (=> b!3167282 m!3428505))

(check-sat (not b!3167292) (not b!3167293) (not b_next!83859) (not b!3167282) (not b!3167281) (not b!3167291) (not start!296756) (not b!3167284) b_and!209425 (not b!3167287) (not b!3167285) tp_is_empty!17057 (not b_next!83857) b_and!209423 (not b!3167295) (not mapNonEmpty!18903))
(check-sat b_and!209425 b_and!209423 (not b_next!83857) (not b_next!83859))
(get-model)

(declare-fun d!868955 () Bool)

(declare-fun validCacheMap!61 (MutableMap!4074) Bool)

(assert (=> d!868955 (= (valid!3253 cache!347) (validCacheMap!61 (cache!4218 cache!347)))))

(declare-fun bs!539538 () Bool)

(assert (= bs!539538 d!868955))

(declare-fun m!3428507 () Bool)

(assert (=> bs!539538 m!3428507))

(assert (=> b!3167292 d!868955))

(declare-fun d!868957 () Bool)

(declare-fun nullableFct!954 (Regex!9747) Bool)

(assert (=> d!868957 (= (nullable!3348 (regOne!20006 r!13156)) (nullableFct!954 (regOne!20006 r!13156)))))

(declare-fun bs!539539 () Bool)

(assert (= bs!539539 d!868957))

(declare-fun m!3428509 () Bool)

(assert (=> bs!539539 m!3428509))

(assert (=> b!3167282 d!868957))

(declare-fun d!868959 () Bool)

(declare-fun e!1972867 () Bool)

(assert (=> d!868959 e!1972867))

(declare-fun res!1288226 () Bool)

(assert (=> d!868959 (=> res!1288226 e!1972867)))

(declare-fun lt!1064854 () Option!6912)

(declare-fun isEmpty!19760 (Option!6912) Bool)

(assert (=> d!868959 (= res!1288226 (isEmpty!19760 lt!1064854))))

(declare-fun e!1972866 () Option!6912)

(assert (=> d!868959 (= lt!1064854 e!1972866)))

(declare-fun c!532671 () Bool)

(declare-fun contains!6183 (MutableMap!4074 tuple2!34580) Bool)

(assert (=> d!868959 (= c!532671 (contains!6183 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409)))))

(assert (=> d!868959 (validRegex!4466 r!13156)))

(assert (=> d!868959 (= (get!11260 cache!347 r!13156 a!2409) lt!1064854)))

(declare-fun b!3167302 () Bool)

(declare-fun apply!7956 (MutableMap!4074 tuple2!34580) Regex!9747)

(assert (=> b!3167302 (= e!1972866 (Some!6911 (apply!7956 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409))))))

(declare-datatypes ((Unit!49845 0))(
  ( (Unit!49846) )
))
(declare-fun lt!1064853 () Unit!49845)

(declare-fun lemmaIfInCacheThenValid!58 (Cache!418 Regex!9747 C!19680) Unit!49845)

(assert (=> b!3167302 (= lt!1064853 (lemmaIfInCacheThenValid!58 cache!347 r!13156 a!2409))))

(declare-fun b!3167303 () Bool)

(assert (=> b!3167303 (= e!1972866 None!6911)))

(declare-fun b!3167304 () Bool)

(declare-fun get!11261 (Option!6912) Regex!9747)

(declare-fun derivativeStep!2894 (Regex!9747 C!19680) Regex!9747)

(assert (=> b!3167304 (= e!1972867 (= (get!11261 lt!1064854) (derivativeStep!2894 r!13156 a!2409)))))

(assert (= (and d!868959 c!532671) b!3167302))

(assert (= (and d!868959 (not c!532671)) b!3167303))

(assert (= (and d!868959 (not res!1288226)) b!3167304))

(declare-fun m!3428511 () Bool)

(assert (=> d!868959 m!3428511))

(declare-fun m!3428513 () Bool)

(assert (=> d!868959 m!3428513))

(assert (=> d!868959 m!3428489))

(declare-fun m!3428515 () Bool)

(assert (=> b!3167302 m!3428515))

(declare-fun m!3428517 () Bool)

(assert (=> b!3167302 m!3428517))

(declare-fun m!3428519 () Bool)

(assert (=> b!3167304 m!3428519))

(declare-fun m!3428521 () Bool)

(assert (=> b!3167304 m!3428521))

(assert (=> b!3167287 d!868959))

(declare-fun c!532686 () Bool)

(declare-fun c!532683 () Bool)

(declare-fun call!229720 () Int)

(declare-fun bm!229715 () Bool)

(assert (=> bm!229715 (= call!229720 (RegexPrimitiveSize!133 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))

(declare-fun b!3167325 () Bool)

(declare-fun e!1972880 () Int)

(declare-fun e!1972882 () Int)

(assert (=> b!3167325 (= e!1972880 e!1972882)))

(assert (=> b!3167325 (= c!532683 ((_ is Concat!15068) (regTwo!20006 r!13156)))))

(declare-fun b!3167326 () Bool)

(declare-fun e!1972879 () Int)

(declare-fun call!229722 () Int)

(assert (=> b!3167326 (= e!1972879 (+ 1 call!229722))))

(declare-fun b!3167327 () Bool)

(declare-fun call!229721 () Int)

(assert (=> b!3167327 (= e!1972882 (+ 1 call!229721 call!229720))))

(declare-fun b!3167328 () Bool)

(assert (=> b!3167328 (= e!1972880 1)))

(declare-fun b!3167329 () Bool)

(declare-fun e!1972878 () Int)

(assert (=> b!3167329 (= e!1972878 e!1972879)))

(assert (=> b!3167329 (= c!532686 ((_ is Star!9747) (regTwo!20006 r!13156)))))

(declare-fun b!3167330 () Bool)

(declare-fun e!1972881 () Int)

(assert (=> b!3167330 (= e!1972881 (+ 1 call!229721 call!229722))))

(declare-fun bm!229717 () Bool)

(assert (=> bm!229717 (= call!229722 call!229720)))

(declare-fun b!3167331 () Bool)

(assert (=> b!3167331 (= e!1972881 0)))

(declare-fun b!3167332 () Bool)

(declare-fun c!532684 () Bool)

(assert (=> b!3167332 (= c!532684 ((_ is EmptyExpr!9747) (regTwo!20006 r!13156)))))

(assert (=> b!3167332 (= e!1972882 e!1972878)))

(declare-fun b!3167333 () Bool)

(declare-fun c!532682 () Bool)

(assert (=> b!3167333 (= c!532682 ((_ is EmptyLang!9747) (regTwo!20006 r!13156)))))

(assert (=> b!3167333 (= e!1972879 e!1972881)))

(declare-fun b!3167334 () Bool)

(assert (=> b!3167334 (= e!1972878 0)))

(declare-fun d!868961 () Bool)

(declare-fun lt!1064857 () Int)

(assert (=> d!868961 (>= lt!1064857 0)))

(assert (=> d!868961 (= lt!1064857 e!1972880)))

(declare-fun c!532685 () Bool)

(assert (=> d!868961 (= c!532685 ((_ is ElementMatch!9747) (regTwo!20006 r!13156)))))

(assert (=> d!868961 (= (RegexPrimitiveSize!133 (regTwo!20006 r!13156)) lt!1064857)))

(declare-fun bm!229716 () Bool)

(assert (=> bm!229716 (= call!229721 (RegexPrimitiveSize!133 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))

(assert (= (and d!868961 c!532685) b!3167328))

(assert (= (and d!868961 (not c!532685)) b!3167325))

(assert (= (and b!3167325 c!532683) b!3167327))

(assert (= (and b!3167325 (not c!532683)) b!3167332))

(assert (= (and b!3167332 c!532684) b!3167334))

(assert (= (and b!3167332 (not c!532684)) b!3167329))

(assert (= (and b!3167329 c!532686) b!3167326))

(assert (= (and b!3167329 (not c!532686)) b!3167333))

(assert (= (and b!3167333 c!532682) b!3167331))

(assert (= (and b!3167333 (not c!532682)) b!3167330))

(assert (= (or b!3167326 b!3167330) bm!229717))

(assert (= (or b!3167327 bm!229717) bm!229715))

(assert (= (or b!3167327 b!3167330) bm!229716))

(declare-fun m!3428523 () Bool)

(assert (=> bm!229715 m!3428523))

(declare-fun m!3428525 () Bool)

(assert (=> bm!229716 m!3428525))

(assert (=> b!3167281 d!868961))

(declare-fun c!532691 () Bool)

(declare-fun c!532688 () Bool)

(declare-fun bm!229718 () Bool)

(declare-fun call!229723 () Int)

(assert (=> bm!229718 (= call!229723 (RegexPrimitiveSize!133 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))

(declare-fun b!3167335 () Bool)

(declare-fun e!1972885 () Int)

(declare-fun e!1972887 () Int)

(assert (=> b!3167335 (= e!1972885 e!1972887)))

(assert (=> b!3167335 (= c!532688 ((_ is Concat!15068) r!13156))))

(declare-fun b!3167336 () Bool)

(declare-fun e!1972884 () Int)

(declare-fun call!229725 () Int)

(assert (=> b!3167336 (= e!1972884 (+ 1 call!229725))))

(declare-fun b!3167337 () Bool)

(declare-fun call!229724 () Int)

(assert (=> b!3167337 (= e!1972887 (+ 1 call!229724 call!229723))))

(declare-fun b!3167338 () Bool)

(assert (=> b!3167338 (= e!1972885 1)))

(declare-fun b!3167339 () Bool)

(declare-fun e!1972883 () Int)

(assert (=> b!3167339 (= e!1972883 e!1972884)))

(assert (=> b!3167339 (= c!532691 ((_ is Star!9747) r!13156))))

(declare-fun b!3167340 () Bool)

(declare-fun e!1972886 () Int)

(assert (=> b!3167340 (= e!1972886 (+ 1 call!229724 call!229725))))

(declare-fun bm!229720 () Bool)

(assert (=> bm!229720 (= call!229725 call!229723)))

(declare-fun b!3167341 () Bool)

(assert (=> b!3167341 (= e!1972886 0)))

(declare-fun b!3167342 () Bool)

(declare-fun c!532689 () Bool)

(assert (=> b!3167342 (= c!532689 ((_ is EmptyExpr!9747) r!13156))))

(assert (=> b!3167342 (= e!1972887 e!1972883)))

(declare-fun b!3167343 () Bool)

(declare-fun c!532687 () Bool)

(assert (=> b!3167343 (= c!532687 ((_ is EmptyLang!9747) r!13156))))

(assert (=> b!3167343 (= e!1972884 e!1972886)))

(declare-fun b!3167344 () Bool)

(assert (=> b!3167344 (= e!1972883 0)))

(declare-fun d!868963 () Bool)

(declare-fun lt!1064858 () Int)

(assert (=> d!868963 (>= lt!1064858 0)))

(assert (=> d!868963 (= lt!1064858 e!1972885)))

(declare-fun c!532690 () Bool)

(assert (=> d!868963 (= c!532690 ((_ is ElementMatch!9747) r!13156))))

(assert (=> d!868963 (= (RegexPrimitiveSize!133 r!13156) lt!1064858)))

(declare-fun bm!229719 () Bool)

(assert (=> bm!229719 (= call!229724 (RegexPrimitiveSize!133 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))

(assert (= (and d!868963 c!532690) b!3167338))

(assert (= (and d!868963 (not c!532690)) b!3167335))

(assert (= (and b!3167335 c!532688) b!3167337))

(assert (= (and b!3167335 (not c!532688)) b!3167342))

(assert (= (and b!3167342 c!532689) b!3167344))

(assert (= (and b!3167342 (not c!532689)) b!3167339))

(assert (= (and b!3167339 c!532691) b!3167336))

(assert (= (and b!3167339 (not c!532691)) b!3167343))

(assert (= (and b!3167343 c!532687) b!3167341))

(assert (= (and b!3167343 (not c!532687)) b!3167340))

(assert (= (or b!3167336 b!3167340) bm!229720))

(assert (= (or b!3167337 bm!229720) bm!229718))

(assert (= (or b!3167337 b!3167340) bm!229719))

(declare-fun m!3428527 () Bool)

(assert (=> bm!229718 m!3428527))

(declare-fun m!3428529 () Bool)

(assert (=> bm!229719 m!3428529))

(assert (=> b!3167281 d!868963))

(declare-fun b!3167369 () Bool)

(declare-fun e!1972903 () tuple2!34584)

(assert (=> b!3167369 (= e!1972903 (tuple2!34585 (ite (= a!2409 (c!532667 (regOne!20006 r!13156))) EmptyExpr!9747 EmptyLang!9747) cache!347))))

(declare-fun b!3167370 () Bool)

(declare-fun e!1972905 () tuple2!34584)

(declare-fun lt!1064880 () tuple2!34584)

(assert (=> b!3167370 (= e!1972905 (tuple2!34585 (Concat!15068 (_1!20424 lt!1064880) (Star!9747 (reg!10076 (regOne!20006 r!13156)))) (_2!20424 lt!1064880)))))

(declare-fun call!229737 () tuple2!34584)

(assert (=> b!3167370 (= lt!1064880 call!229737)))

(declare-fun c!532708 () Bool)

(declare-fun bm!229729 () Bool)

(declare-fun call!229734 () tuple2!34584)

(declare-fun c!532706 () Bool)

(assert (=> bm!229729 (= call!229734 (derivativeStepMem!31 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))) a!2409 cache!347))))

(declare-fun b!3167371 () Bool)

(declare-fun e!1972904 () tuple2!34584)

(assert (=> b!3167371 (= e!1972905 e!1972904)))

(declare-fun c!532704 () Bool)

(assert (=> b!3167371 (= c!532704 (nullable!3348 (regOne!20006 (regOne!20006 r!13156))))))

(declare-fun d!868965 () Bool)

(declare-fun lt!1064884 () tuple2!34584)

(assert (=> d!868965 (= (_1!20424 lt!1064884) (derivativeStep!2894 (regOne!20006 r!13156) a!2409))))

(declare-fun e!1972900 () tuple2!34584)

(assert (=> d!868965 (= lt!1064884 e!1972900)))

(declare-fun c!532707 () Bool)

(declare-fun lt!1064879 () Option!6912)

(assert (=> d!868965 (= c!532707 ((_ is Some!6911) lt!1064879))))

(assert (=> d!868965 (= lt!1064879 (get!11260 cache!347 (regOne!20006 r!13156) a!2409))))

(assert (=> d!868965 (validRegex!4466 (regOne!20006 r!13156))))

(assert (=> d!868965 (= (derivativeStepMem!31 (regOne!20006 r!13156) a!2409 cache!347) lt!1064884)))

(declare-fun b!3167372 () Bool)

(assert (=> b!3167372 (= e!1972900 (tuple2!34585 (v!35161 lt!1064879) cache!347))))

(declare-fun b!3167373 () Bool)

(declare-fun c!532709 () Bool)

(assert (=> b!3167373 (= c!532709 ((_ is ElementMatch!9747) (regOne!20006 r!13156)))))

(declare-fun e!1972902 () tuple2!34584)

(assert (=> b!3167373 (= e!1972902 e!1972903)))

(declare-fun bm!229730 () Bool)

(assert (=> bm!229730 (= call!229737 call!229734)))

(declare-fun b!3167374 () Bool)

(declare-fun e!1972901 () tuple2!34584)

(assert (=> b!3167374 (= e!1972903 e!1972901)))

(assert (=> b!3167374 (= c!532708 ((_ is Union!9747) (regOne!20006 r!13156)))))

(declare-fun bm!229731 () Bool)

(declare-fun call!229736 () tuple2!34584)

(assert (=> bm!229731 (= call!229736 call!229737)))

(declare-fun b!3167375 () Bool)

(declare-fun lt!1064878 () tuple2!34584)

(assert (=> b!3167375 (= lt!1064878 call!229736)))

(assert (=> b!3167375 (= e!1972904 (tuple2!34585 (Union!9747 (Concat!15068 (_1!20424 lt!1064878) (regTwo!20006 (regOne!20006 r!13156))) EmptyLang!9747) (_2!20424 lt!1064878)))))

(declare-fun b!3167376 () Bool)

(declare-fun lt!1064885 () tuple2!34584)

(declare-fun call!229735 () tuple2!34584)

(assert (=> b!3167376 (= lt!1064885 call!229735)))

(declare-fun lt!1064877 () tuple2!34584)

(assert (=> b!3167376 (= lt!1064877 call!229734)))

(assert (=> b!3167376 (= e!1972901 (tuple2!34585 (Union!9747 (_1!20424 lt!1064877) (_1!20424 lt!1064885)) (_2!20424 lt!1064885)))))

(declare-fun lt!1064882 () tuple2!34584)

(declare-fun b!3167377 () Bool)

(declare-datatypes ((tuple2!34586 0))(
  ( (tuple2!34587 (_1!20425 Unit!49845) (_2!20425 Cache!418)) )
))
(declare-fun update!269 (Cache!418 Regex!9747 C!19680 Regex!9747) tuple2!34586)

(assert (=> b!3167377 (= e!1972900 (tuple2!34585 (_1!20424 lt!1064882) (_2!20425 (update!269 (_2!20424 lt!1064882) (regOne!20006 r!13156) a!2409 (_1!20424 lt!1064882)))))))

(declare-fun c!532705 () Bool)

(assert (=> b!3167377 (= c!532705 (or ((_ is EmptyExpr!9747) (regOne!20006 r!13156)) ((_ is EmptyLang!9747) (regOne!20006 r!13156))))))

(assert (=> b!3167377 (= lt!1064882 e!1972902)))

(declare-fun bm!229732 () Bool)

(declare-fun lt!1064883 () tuple2!34584)

(assert (=> bm!229732 (= call!229735 (derivativeStepMem!31 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))) a!2409 (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883))))))

(declare-fun b!3167378 () Bool)

(assert (=> b!3167378 (= e!1972902 (tuple2!34585 EmptyLang!9747 cache!347))))

(declare-fun b!3167379 () Bool)

(assert (=> b!3167379 (= c!532706 ((_ is Star!9747) (regOne!20006 r!13156)))))

(assert (=> b!3167379 (= e!1972901 e!1972905)))

(declare-fun b!3167380 () Bool)

(declare-fun lt!1064881 () tuple2!34584)

(assert (=> b!3167380 (= lt!1064881 call!229735)))

(assert (=> b!3167380 (= lt!1064883 call!229736)))

(assert (=> b!3167380 (= e!1972904 (tuple2!34585 (Union!9747 (Concat!15068 (_1!20424 lt!1064883) (regTwo!20006 (regOne!20006 r!13156))) (_1!20424 lt!1064881)) (_2!20424 lt!1064881)))))

(assert (= (and d!868965 c!532707) b!3167372))

(assert (= (and d!868965 (not c!532707)) b!3167377))

(assert (= (and b!3167377 c!532705) b!3167378))

(assert (= (and b!3167377 (not c!532705)) b!3167373))

(assert (= (and b!3167373 c!532709) b!3167369))

(assert (= (and b!3167373 (not c!532709)) b!3167374))

(assert (= (and b!3167374 c!532708) b!3167376))

(assert (= (and b!3167374 (not c!532708)) b!3167379))

(assert (= (and b!3167379 c!532706) b!3167370))

(assert (= (and b!3167379 (not c!532706)) b!3167371))

(assert (= (and b!3167371 c!532704) b!3167380))

(assert (= (and b!3167371 (not c!532704)) b!3167375))

(assert (= (or b!3167380 b!3167375) bm!229731))

(assert (= (or b!3167370 bm!229731) bm!229730))

(assert (= (or b!3167376 bm!229730) bm!229729))

(assert (= (or b!3167376 b!3167380) bm!229732))

(declare-fun m!3428531 () Bool)

(assert (=> b!3167371 m!3428531))

(declare-fun m!3428533 () Bool)

(assert (=> d!868965 m!3428533))

(declare-fun m!3428535 () Bool)

(assert (=> d!868965 m!3428535))

(declare-fun m!3428537 () Bool)

(assert (=> d!868965 m!3428537))

(declare-fun m!3428539 () Bool)

(assert (=> bm!229729 m!3428539))

(declare-fun m!3428541 () Bool)

(assert (=> bm!229732 m!3428541))

(declare-fun m!3428543 () Bool)

(assert (=> b!3167377 m!3428543))

(assert (=> b!3167281 d!868965))

(declare-fun d!868967 () Bool)

(assert (=> d!868967 (= (array_inv!4748 (_keys!4468 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) (bvsge (size!26712 (_keys!4468 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3167295 d!868967))

(declare-fun d!868969 () Bool)

(assert (=> d!868969 (= (array_inv!4749 (_values!4449 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) (bvsge (size!26713 (_values!4449 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3167295 d!868969))

(declare-fun b!3167399 () Bool)

(declare-fun e!1972922 () Bool)

(declare-fun e!1972926 () Bool)

(assert (=> b!3167399 (= e!1972922 e!1972926)))

(declare-fun res!1288240 () Bool)

(assert (=> b!3167399 (= res!1288240 (not (nullable!3348 (reg!10076 r!13156))))))

(assert (=> b!3167399 (=> (not res!1288240) (not e!1972926))))

(declare-fun b!3167400 () Bool)

(declare-fun call!229746 () Bool)

(assert (=> b!3167400 (= e!1972926 call!229746)))

(declare-fun b!3167401 () Bool)

(declare-fun e!1972925 () Bool)

(assert (=> b!3167401 (= e!1972925 e!1972922)))

(declare-fun c!532715 () Bool)

(assert (=> b!3167401 (= c!532715 ((_ is Star!9747) r!13156))))

(declare-fun bm!229739 () Bool)

(declare-fun call!229744 () Bool)

(declare-fun c!532714 () Bool)

(assert (=> bm!229739 (= call!229744 (validRegex!4466 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))))))

(declare-fun bm!229740 () Bool)

(declare-fun call!229745 () Bool)

(assert (=> bm!229740 (= call!229745 call!229746)))

(declare-fun b!3167402 () Bool)

(declare-fun e!1972920 () Bool)

(assert (=> b!3167402 (= e!1972922 e!1972920)))

(assert (=> b!3167402 (= c!532714 ((_ is Union!9747) r!13156))))

(declare-fun bm!229741 () Bool)

(assert (=> bm!229741 (= call!229746 (validRegex!4466 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))))))

(declare-fun b!3167404 () Bool)

(declare-fun e!1972924 () Bool)

(declare-fun e!1972923 () Bool)

(assert (=> b!3167404 (= e!1972924 e!1972923)))

(declare-fun res!1288238 () Bool)

(assert (=> b!3167404 (=> (not res!1288238) (not e!1972923))))

(assert (=> b!3167404 (= res!1288238 call!229744)))

(declare-fun b!3167405 () Bool)

(declare-fun e!1972921 () Bool)

(assert (=> b!3167405 (= e!1972921 call!229745)))

(declare-fun b!3167406 () Bool)

(declare-fun res!1288239 () Bool)

(assert (=> b!3167406 (=> (not res!1288239) (not e!1972921))))

(assert (=> b!3167406 (= res!1288239 call!229744)))

(assert (=> b!3167406 (= e!1972920 e!1972921)))

(declare-fun b!3167407 () Bool)

(declare-fun res!1288241 () Bool)

(assert (=> b!3167407 (=> res!1288241 e!1972924)))

(assert (=> b!3167407 (= res!1288241 (not ((_ is Concat!15068) r!13156)))))

(assert (=> b!3167407 (= e!1972920 e!1972924)))

(declare-fun b!3167403 () Bool)

(assert (=> b!3167403 (= e!1972923 call!229745)))

(declare-fun d!868971 () Bool)

(declare-fun res!1288237 () Bool)

(assert (=> d!868971 (=> res!1288237 e!1972925)))

(assert (=> d!868971 (= res!1288237 ((_ is ElementMatch!9747) r!13156))))

(assert (=> d!868971 (= (validRegex!4466 r!13156) e!1972925)))

(assert (= (and d!868971 (not res!1288237)) b!3167401))

(assert (= (and b!3167401 c!532715) b!3167399))

(assert (= (and b!3167401 (not c!532715)) b!3167402))

(assert (= (and b!3167399 res!1288240) b!3167400))

(assert (= (and b!3167402 c!532714) b!3167406))

(assert (= (and b!3167402 (not c!532714)) b!3167407))

(assert (= (and b!3167406 res!1288239) b!3167405))

(assert (= (and b!3167407 (not res!1288241)) b!3167404))

(assert (= (and b!3167404 res!1288238) b!3167403))

(assert (= (or b!3167406 b!3167404) bm!229739))

(assert (= (or b!3167405 b!3167403) bm!229740))

(assert (= (or b!3167400 bm!229740) bm!229741))

(declare-fun m!3428545 () Bool)

(assert (=> b!3167399 m!3428545))

(declare-fun m!3428547 () Bool)

(assert (=> bm!229739 m!3428547))

(declare-fun m!3428549 () Bool)

(assert (=> bm!229741 m!3428549))

(assert (=> start!296756 d!868971))

(declare-fun d!868973 () Bool)

(declare-fun res!1288244 () Bool)

(declare-fun e!1972929 () Bool)

(assert (=> d!868973 (=> (not res!1288244) (not e!1972929))))

(assert (=> d!868973 (= res!1288244 ((_ is HashMap!4074) (cache!4218 cache!347)))))

(assert (=> d!868973 (= (inv!48134 cache!347) e!1972929)))

(declare-fun b!3167410 () Bool)

(assert (=> b!3167410 (= e!1972929 (validCacheMap!61 (cache!4218 cache!347)))))

(assert (= (and d!868973 res!1288244) b!3167410))

(assert (=> b!3167410 m!3428507))

(assert (=> start!296756 d!868973))

(declare-fun b!3167415 () Bool)

(declare-fun e!1972932 () Bool)

(declare-fun tp!998486 () Bool)

(declare-fun tp!998484 () Bool)

(declare-fun tp!998485 () Bool)

(assert (=> b!3167415 (= e!1972932 (and tp!998484 tp_is_empty!17057 tp!998485 tp!998486))))

(assert (=> b!3167295 (= tp!998476 e!1972932)))

(assert (= (and b!3167295 ((_ is Cons!35458) (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))) b!3167415))

(declare-fun e!1972933 () Bool)

(declare-fun tp!998488 () Bool)

(declare-fun tp!998489 () Bool)

(declare-fun b!3167416 () Bool)

(declare-fun tp!998487 () Bool)

(assert (=> b!3167416 (= e!1972933 (and tp!998487 tp_is_empty!17057 tp!998488 tp!998489))))

(assert (=> b!3167295 (= tp!998469 e!1972933)))

(assert (= (and b!3167295 ((_ is Cons!35458) (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))) b!3167416))

(declare-fun b!3167430 () Bool)

(declare-fun e!1972936 () Bool)

(declare-fun tp!998504 () Bool)

(declare-fun tp!998502 () Bool)

(assert (=> b!3167430 (= e!1972936 (and tp!998504 tp!998502))))

(declare-fun b!3167428 () Bool)

(declare-fun tp!998503 () Bool)

(declare-fun tp!998501 () Bool)

(assert (=> b!3167428 (= e!1972936 (and tp!998503 tp!998501))))

(assert (=> b!3167285 (= tp!998468 e!1972936)))

(declare-fun b!3167429 () Bool)

(declare-fun tp!998500 () Bool)

(assert (=> b!3167429 (= e!1972936 tp!998500)))

(declare-fun b!3167427 () Bool)

(assert (=> b!3167427 (= e!1972936 tp_is_empty!17057)))

(assert (= (and b!3167285 ((_ is ElementMatch!9747) (regOne!20007 r!13156))) b!3167427))

(assert (= (and b!3167285 ((_ is Concat!15068) (regOne!20007 r!13156))) b!3167428))

(assert (= (and b!3167285 ((_ is Star!9747) (regOne!20007 r!13156))) b!3167429))

(assert (= (and b!3167285 ((_ is Union!9747) (regOne!20007 r!13156))) b!3167430))

(declare-fun b!3167434 () Bool)

(declare-fun e!1972937 () Bool)

(declare-fun tp!998509 () Bool)

(declare-fun tp!998507 () Bool)

(assert (=> b!3167434 (= e!1972937 (and tp!998509 tp!998507))))

(declare-fun b!3167432 () Bool)

(declare-fun tp!998508 () Bool)

(declare-fun tp!998506 () Bool)

(assert (=> b!3167432 (= e!1972937 (and tp!998508 tp!998506))))

(assert (=> b!3167285 (= tp!998472 e!1972937)))

(declare-fun b!3167433 () Bool)

(declare-fun tp!998505 () Bool)

(assert (=> b!3167433 (= e!1972937 tp!998505)))

(declare-fun b!3167431 () Bool)

(assert (=> b!3167431 (= e!1972937 tp_is_empty!17057)))

(assert (= (and b!3167285 ((_ is ElementMatch!9747) (regTwo!20007 r!13156))) b!3167431))

(assert (= (and b!3167285 ((_ is Concat!15068) (regTwo!20007 r!13156))) b!3167432))

(assert (= (and b!3167285 ((_ is Star!9747) (regTwo!20007 r!13156))) b!3167433))

(assert (= (and b!3167285 ((_ is Union!9747) (regTwo!20007 r!13156))) b!3167434))

(declare-fun e!1972938 () Bool)

(declare-fun tp!998510 () Bool)

(declare-fun tp!998511 () Bool)

(declare-fun b!3167435 () Bool)

(declare-fun tp!998512 () Bool)

(assert (=> b!3167435 (= e!1972938 (and tp!998510 tp_is_empty!17057 tp!998511 tp!998512))))

(assert (=> b!3167291 (= tp!998474 e!1972938)))

(assert (= (and b!3167291 ((_ is Cons!35458) mapDefault!18903)) b!3167435))

(declare-fun tp!998528 () Bool)

(declare-fun tp!998530 () Bool)

(declare-fun b!3167442 () Bool)

(declare-fun tp!998533 () Bool)

(declare-fun e!1972944 () Bool)

(assert (=> b!3167442 (= e!1972944 (and tp!998528 tp_is_empty!17057 tp!998530 tp!998533))))

(declare-fun mapNonEmpty!18906 () Bool)

(declare-fun mapRes!18906 () Bool)

(declare-fun tp!998527 () Bool)

(assert (=> mapNonEmpty!18906 (= mapRes!18906 (and tp!998527 e!1972944))))

(declare-fun mapValue!18906 () List!35582)

(declare-fun mapRest!18906 () (Array (_ BitVec 32) List!35582))

(declare-fun mapKey!18906 () (_ BitVec 32))

(assert (=> mapNonEmpty!18906 (= mapRest!18903 (store mapRest!18906 mapKey!18906 mapValue!18906))))

(declare-fun tp!998531 () Bool)

(declare-fun tp!998532 () Bool)

(declare-fun b!3167443 () Bool)

(declare-fun tp!998529 () Bool)

(declare-fun e!1972943 () Bool)

(assert (=> b!3167443 (= e!1972943 (and tp!998532 tp_is_empty!17057 tp!998531 tp!998529))))

(declare-fun condMapEmpty!18906 () Bool)

(declare-fun mapDefault!18906 () List!35582)

(assert (=> mapNonEmpty!18903 (= condMapEmpty!18906 (= mapRest!18903 ((as const (Array (_ BitVec 32) List!35582)) mapDefault!18906)))))

(assert (=> mapNonEmpty!18903 (= tp!998475 (and e!1972943 mapRes!18906))))

(declare-fun mapIsEmpty!18906 () Bool)

(assert (=> mapIsEmpty!18906 mapRes!18906))

(assert (= (and mapNonEmpty!18903 condMapEmpty!18906) mapIsEmpty!18906))

(assert (= (and mapNonEmpty!18903 (not condMapEmpty!18906)) mapNonEmpty!18906))

(assert (= (and mapNonEmpty!18906 ((_ is Cons!35458) mapValue!18906)) b!3167442))

(assert (= (and mapNonEmpty!18903 ((_ is Cons!35458) mapDefault!18906)) b!3167443))

(declare-fun m!3428551 () Bool)

(assert (=> mapNonEmpty!18906 m!3428551))

(declare-fun tp!998536 () Bool)

(declare-fun tp!998534 () Bool)

(declare-fun e!1972945 () Bool)

(declare-fun b!3167444 () Bool)

(declare-fun tp!998535 () Bool)

(assert (=> b!3167444 (= e!1972945 (and tp!998534 tp_is_empty!17057 tp!998535 tp!998536))))

(assert (=> mapNonEmpty!18903 (= tp!998470 e!1972945)))

(assert (= (and mapNonEmpty!18903 ((_ is Cons!35458) mapValue!18903)) b!3167444))

(declare-fun b!3167448 () Bool)

(declare-fun e!1972946 () Bool)

(declare-fun tp!998541 () Bool)

(declare-fun tp!998539 () Bool)

(assert (=> b!3167448 (= e!1972946 (and tp!998541 tp!998539))))

(declare-fun b!3167446 () Bool)

(declare-fun tp!998540 () Bool)

(declare-fun tp!998538 () Bool)

(assert (=> b!3167446 (= e!1972946 (and tp!998540 tp!998538))))

(assert (=> b!3167293 (= tp!998473 e!1972946)))

(declare-fun b!3167447 () Bool)

(declare-fun tp!998537 () Bool)

(assert (=> b!3167447 (= e!1972946 tp!998537)))

(declare-fun b!3167445 () Bool)

(assert (=> b!3167445 (= e!1972946 tp_is_empty!17057)))

(assert (= (and b!3167293 ((_ is ElementMatch!9747) (regOne!20006 r!13156))) b!3167445))

(assert (= (and b!3167293 ((_ is Concat!15068) (regOne!20006 r!13156))) b!3167446))

(assert (= (and b!3167293 ((_ is Star!9747) (regOne!20006 r!13156))) b!3167447))

(assert (= (and b!3167293 ((_ is Union!9747) (regOne!20006 r!13156))) b!3167448))

(declare-fun b!3167452 () Bool)

(declare-fun e!1972947 () Bool)

(declare-fun tp!998546 () Bool)

(declare-fun tp!998544 () Bool)

(assert (=> b!3167452 (= e!1972947 (and tp!998546 tp!998544))))

(declare-fun b!3167450 () Bool)

(declare-fun tp!998545 () Bool)

(declare-fun tp!998543 () Bool)

(assert (=> b!3167450 (= e!1972947 (and tp!998545 tp!998543))))

(assert (=> b!3167293 (= tp!998471 e!1972947)))

(declare-fun b!3167451 () Bool)

(declare-fun tp!998542 () Bool)

(assert (=> b!3167451 (= e!1972947 tp!998542)))

(declare-fun b!3167449 () Bool)

(assert (=> b!3167449 (= e!1972947 tp_is_empty!17057)))

(assert (= (and b!3167293 ((_ is ElementMatch!9747) (regTwo!20006 r!13156))) b!3167449))

(assert (= (and b!3167293 ((_ is Concat!15068) (regTwo!20006 r!13156))) b!3167450))

(assert (= (and b!3167293 ((_ is Star!9747) (regTwo!20006 r!13156))) b!3167451))

(assert (= (and b!3167293 ((_ is Union!9747) (regTwo!20006 r!13156))) b!3167452))

(declare-fun b!3167456 () Bool)

(declare-fun e!1972948 () Bool)

(declare-fun tp!998551 () Bool)

(declare-fun tp!998549 () Bool)

(assert (=> b!3167456 (= e!1972948 (and tp!998551 tp!998549))))

(declare-fun b!3167454 () Bool)

(declare-fun tp!998550 () Bool)

(declare-fun tp!998548 () Bool)

(assert (=> b!3167454 (= e!1972948 (and tp!998550 tp!998548))))

(assert (=> b!3167284 (= tp!998467 e!1972948)))

(declare-fun b!3167455 () Bool)

(declare-fun tp!998547 () Bool)

(assert (=> b!3167455 (= e!1972948 tp!998547)))

(declare-fun b!3167453 () Bool)

(assert (=> b!3167453 (= e!1972948 tp_is_empty!17057)))

(assert (= (and b!3167284 ((_ is ElementMatch!9747) (reg!10076 r!13156))) b!3167453))

(assert (= (and b!3167284 ((_ is Concat!15068) (reg!10076 r!13156))) b!3167454))

(assert (= (and b!3167284 ((_ is Star!9747) (reg!10076 r!13156))) b!3167455))

(assert (= (and b!3167284 ((_ is Union!9747) (reg!10076 r!13156))) b!3167456))

(check-sat (not b!3167432) (not b!3167443) (not b!3167452) (not b!3167444) (not d!868955) (not b!3167304) (not bm!229729) b_and!209425 (not b!3167454) tp_is_empty!17057 (not b_next!83857) b_and!209423 (not b!3167451) (not b!3167434) (not b!3167456) (not b!3167371) (not bm!229732) (not b!3167446) (not b!3167415) (not b!3167442) (not b!3167399) (not b!3167448) (not b_next!83859) (not b!3167377) (not b!3167410) (not d!868957) (not d!868959) (not bm!229719) (not bm!229741) (not b!3167450) (not b!3167416) (not b!3167455) (not bm!229718) (not bm!229715) (not b!3167447) (not b!3167435) (not mapNonEmpty!18906) (not b!3167302) (not b!3167428) (not b!3167429) (not bm!229716) (not bm!229739) (not b!3167433) (not d!868965) (not b!3167430))
(check-sat b_and!209425 b_and!209423 (not b_next!83857) (not b_next!83859))
(get-model)

(declare-fun d!868975 () Bool)

(assert (=> d!868975 (= (nullable!3348 (regOne!20006 (regOne!20006 r!13156))) (nullableFct!954 (regOne!20006 (regOne!20006 r!13156))))))

(declare-fun bs!539540 () Bool)

(assert (= bs!539540 d!868975))

(declare-fun m!3428553 () Bool)

(assert (=> bs!539540 m!3428553))

(assert (=> b!3167371 d!868975))

(declare-fun bm!229742 () Bool)

(declare-fun call!229747 () Int)

(declare-fun c!532720 () Bool)

(declare-fun c!532717 () Bool)

(assert (=> bm!229742 (= call!229747 (RegexPrimitiveSize!133 (ite c!532717 (regTwo!20006 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))) (ite c!532720 (reg!10076 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))) (regTwo!20007 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156))))))))))

(declare-fun b!3167457 () Bool)

(declare-fun e!1972951 () Int)

(declare-fun e!1972953 () Int)

(assert (=> b!3167457 (= e!1972951 e!1972953)))

(assert (=> b!3167457 (= c!532717 ((_ is Concat!15068) (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))

(declare-fun b!3167458 () Bool)

(declare-fun e!1972950 () Int)

(declare-fun call!229749 () Int)

(assert (=> b!3167458 (= e!1972950 (+ 1 call!229749))))

(declare-fun b!3167459 () Bool)

(declare-fun call!229748 () Int)

(assert (=> b!3167459 (= e!1972953 (+ 1 call!229748 call!229747))))

(declare-fun b!3167460 () Bool)

(assert (=> b!3167460 (= e!1972951 1)))

(declare-fun b!3167461 () Bool)

(declare-fun e!1972949 () Int)

(assert (=> b!3167461 (= e!1972949 e!1972950)))

(assert (=> b!3167461 (= c!532720 ((_ is Star!9747) (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))

(declare-fun b!3167462 () Bool)

(declare-fun e!1972952 () Int)

(assert (=> b!3167462 (= e!1972952 (+ 1 call!229748 call!229749))))

(declare-fun bm!229744 () Bool)

(assert (=> bm!229744 (= call!229749 call!229747)))

(declare-fun b!3167463 () Bool)

(assert (=> b!3167463 (= e!1972952 0)))

(declare-fun b!3167464 () Bool)

(declare-fun c!532718 () Bool)

(assert (=> b!3167464 (= c!532718 ((_ is EmptyExpr!9747) (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))

(assert (=> b!3167464 (= e!1972953 e!1972949)))

(declare-fun b!3167465 () Bool)

(declare-fun c!532716 () Bool)

(assert (=> b!3167465 (= c!532716 ((_ is EmptyLang!9747) (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))

(assert (=> b!3167465 (= e!1972950 e!1972952)))

(declare-fun b!3167466 () Bool)

(assert (=> b!3167466 (= e!1972949 0)))

(declare-fun d!868977 () Bool)

(declare-fun lt!1064886 () Int)

(assert (=> d!868977 (>= lt!1064886 0)))

(assert (=> d!868977 (= lt!1064886 e!1972951)))

(declare-fun c!532719 () Bool)

(assert (=> d!868977 (= c!532719 ((_ is ElementMatch!9747) (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))

(assert (=> d!868977 (= (RegexPrimitiveSize!133 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))) lt!1064886)))

(declare-fun bm!229743 () Bool)

(assert (=> bm!229743 (= call!229748 (RegexPrimitiveSize!133 (ite c!532717 (regOne!20006 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))) (regOne!20007 (ite c!532683 (regOne!20006 (regTwo!20006 r!13156)) (regOne!20007 (regTwo!20006 r!13156)))))))))

(assert (= (and d!868977 c!532719) b!3167460))

(assert (= (and d!868977 (not c!532719)) b!3167457))

(assert (= (and b!3167457 c!532717) b!3167459))

(assert (= (and b!3167457 (not c!532717)) b!3167464))

(assert (= (and b!3167464 c!532718) b!3167466))

(assert (= (and b!3167464 (not c!532718)) b!3167461))

(assert (= (and b!3167461 c!532720) b!3167458))

(assert (= (and b!3167461 (not c!532720)) b!3167465))

(assert (= (and b!3167465 c!532716) b!3167463))

(assert (= (and b!3167465 (not c!532716)) b!3167462))

(assert (= (or b!3167458 b!3167462) bm!229744))

(assert (= (or b!3167459 bm!229744) bm!229742))

(assert (= (or b!3167459 b!3167462) bm!229743))

(declare-fun m!3428555 () Bool)

(assert (=> bm!229742 m!3428555))

(declare-fun m!3428557 () Bool)

(assert (=> bm!229743 m!3428557))

(assert (=> bm!229716 d!868977))

(declare-fun c!532725 () Bool)

(declare-fun bm!229745 () Bool)

(declare-fun call!229750 () Int)

(declare-fun c!532722 () Bool)

(assert (=> bm!229745 (= call!229750 (RegexPrimitiveSize!133 (ite c!532722 (regTwo!20006 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))) (ite c!532725 (reg!10076 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))) (regTwo!20007 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156))))))))))

(declare-fun b!3167467 () Bool)

(declare-fun e!1972956 () Int)

(declare-fun e!1972958 () Int)

(assert (=> b!3167467 (= e!1972956 e!1972958)))

(assert (=> b!3167467 (= c!532722 ((_ is Concat!15068) (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))

(declare-fun b!3167468 () Bool)

(declare-fun e!1972955 () Int)

(declare-fun call!229752 () Int)

(assert (=> b!3167468 (= e!1972955 (+ 1 call!229752))))

(declare-fun b!3167469 () Bool)

(declare-fun call!229751 () Int)

(assert (=> b!3167469 (= e!1972958 (+ 1 call!229751 call!229750))))

(declare-fun b!3167470 () Bool)

(assert (=> b!3167470 (= e!1972956 1)))

(declare-fun b!3167471 () Bool)

(declare-fun e!1972954 () Int)

(assert (=> b!3167471 (= e!1972954 e!1972955)))

(assert (=> b!3167471 (= c!532725 ((_ is Star!9747) (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))

(declare-fun b!3167472 () Bool)

(declare-fun e!1972957 () Int)

(assert (=> b!3167472 (= e!1972957 (+ 1 call!229751 call!229752))))

(declare-fun bm!229747 () Bool)

(assert (=> bm!229747 (= call!229752 call!229750)))

(declare-fun b!3167473 () Bool)

(assert (=> b!3167473 (= e!1972957 0)))

(declare-fun c!532723 () Bool)

(declare-fun b!3167474 () Bool)

(assert (=> b!3167474 (= c!532723 ((_ is EmptyExpr!9747) (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))

(assert (=> b!3167474 (= e!1972958 e!1972954)))

(declare-fun b!3167475 () Bool)

(declare-fun c!532721 () Bool)

(assert (=> b!3167475 (= c!532721 ((_ is EmptyLang!9747) (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))

(assert (=> b!3167475 (= e!1972955 e!1972957)))

(declare-fun b!3167476 () Bool)

(assert (=> b!3167476 (= e!1972954 0)))

(declare-fun d!868979 () Bool)

(declare-fun lt!1064887 () Int)

(assert (=> d!868979 (>= lt!1064887 0)))

(assert (=> d!868979 (= lt!1064887 e!1972956)))

(declare-fun c!532724 () Bool)

(assert (=> d!868979 (= c!532724 ((_ is ElementMatch!9747) (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))

(assert (=> d!868979 (= (RegexPrimitiveSize!133 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))) lt!1064887)))

(declare-fun bm!229746 () Bool)

(assert (=> bm!229746 (= call!229751 (RegexPrimitiveSize!133 (ite c!532722 (regOne!20006 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))) (regOne!20007 (ite c!532688 (regTwo!20006 r!13156) (ite c!532691 (reg!10076 r!13156) (regTwo!20007 r!13156)))))))))

(assert (= (and d!868979 c!532724) b!3167470))

(assert (= (and d!868979 (not c!532724)) b!3167467))

(assert (= (and b!3167467 c!532722) b!3167469))

(assert (= (and b!3167467 (not c!532722)) b!3167474))

(assert (= (and b!3167474 c!532723) b!3167476))

(assert (= (and b!3167474 (not c!532723)) b!3167471))

(assert (= (and b!3167471 c!532725) b!3167468))

(assert (= (and b!3167471 (not c!532725)) b!3167475))

(assert (= (and b!3167475 c!532721) b!3167473))

(assert (= (and b!3167475 (not c!532721)) b!3167472))

(assert (= (or b!3167468 b!3167472) bm!229747))

(assert (= (or b!3167469 bm!229747) bm!229745))

(assert (= (or b!3167469 b!3167472) bm!229746))

(declare-fun m!3428559 () Bool)

(assert (=> bm!229745 m!3428559))

(declare-fun m!3428561 () Bool)

(assert (=> bm!229746 m!3428561))

(assert (=> bm!229718 d!868979))

(declare-fun d!868981 () Bool)

(declare-fun res!1288251 () Bool)

(declare-fun e!1972963 () Bool)

(assert (=> d!868981 (=> (not res!1288251) (not e!1972963))))

(declare-fun valid!3254 (MutableMap!4074) Bool)

(assert (=> d!868981 (= res!1288251 (valid!3254 (cache!4218 cache!347)))))

(assert (=> d!868981 (= (validCacheMap!61 (cache!4218 cache!347)) e!1972963)))

(declare-fun b!3167483 () Bool)

(declare-fun res!1288252 () Bool)

(assert (=> b!3167483 (=> (not res!1288252) (not e!1972963))))

(declare-fun invariantList!483 (List!35582) Bool)

(declare-datatypes ((ListMap!1307 0))(
  ( (ListMap!1308 (toList!2060 List!35582)) )
))
(declare-fun map!7909 (MutableMap!4074) ListMap!1307)

(assert (=> b!3167483 (= res!1288252 (invariantList!483 (toList!2060 (map!7909 (cache!4218 cache!347)))))))

(declare-fun b!3167484 () Bool)

(declare-fun lambda!115884 () Int)

(declare-fun forall!7149 (List!35582 Int) Bool)

(assert (=> b!3167484 (= e!1972963 (forall!7149 (toList!2060 (map!7909 (cache!4218 cache!347))) lambda!115884))))

(assert (= (and d!868981 res!1288251) b!3167483))

(assert (= (and b!3167483 res!1288252) b!3167484))

(declare-fun m!3428564 () Bool)

(assert (=> d!868981 m!3428564))

(declare-fun m!3428566 () Bool)

(assert (=> b!3167483 m!3428566))

(declare-fun m!3428568 () Bool)

(assert (=> b!3167483 m!3428568))

(assert (=> b!3167484 m!3428566))

(declare-fun m!3428570 () Bool)

(assert (=> b!3167484 m!3428570))

(assert (=> b!3167410 d!868981))

(declare-fun b!3167485 () Bool)

(declare-fun e!1972967 () tuple2!34584)

(assert (=> b!3167485 (= e!1972967 (tuple2!34585 (ite (= a!2409 (c!532667 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))) EmptyExpr!9747 EmptyLang!9747) cache!347))))

(declare-fun e!1972969 () tuple2!34584)

(declare-fun b!3167486 () Bool)

(declare-fun lt!1064891 () tuple2!34584)

(assert (=> b!3167486 (= e!1972969 (tuple2!34585 (Concat!15068 (_1!20424 lt!1064891) (Star!9747 (reg!10076 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))))) (_2!20424 lt!1064891)))))

(declare-fun call!229756 () tuple2!34584)

(assert (=> b!3167486 (= lt!1064891 call!229756)))

(declare-fun call!229753 () tuple2!34584)

(declare-fun c!532730 () Bool)

(declare-fun c!532728 () Bool)

(declare-fun bm!229748 () Bool)

(assert (=> bm!229748 (= call!229753 (derivativeStepMem!31 (ite c!532730 (regOne!20007 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))) (ite c!532728 (reg!10076 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))) (regOne!20006 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))))) a!2409 cache!347))))

(declare-fun b!3167487 () Bool)

(declare-fun e!1972968 () tuple2!34584)

(assert (=> b!3167487 (= e!1972969 e!1972968)))

(declare-fun c!532726 () Bool)

(assert (=> b!3167487 (= c!532726 (nullable!3348 (regOne!20006 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))))))

(declare-fun lt!1064895 () tuple2!34584)

(declare-fun d!868983 () Bool)

(assert (=> d!868983 (= (_1!20424 lt!1064895) (derivativeStep!2894 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))) a!2409))))

(declare-fun e!1972964 () tuple2!34584)

(assert (=> d!868983 (= lt!1064895 e!1972964)))

(declare-fun c!532729 () Bool)

(declare-fun lt!1064890 () Option!6912)

(assert (=> d!868983 (= c!532729 ((_ is Some!6911) lt!1064890))))

(assert (=> d!868983 (= lt!1064890 (get!11260 cache!347 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))) a!2409))))

(assert (=> d!868983 (validRegex!4466 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))))

(assert (=> d!868983 (= (derivativeStepMem!31 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))) a!2409 cache!347) lt!1064895)))

(declare-fun b!3167488 () Bool)

(assert (=> b!3167488 (= e!1972964 (tuple2!34585 (v!35161 lt!1064890) cache!347))))

(declare-fun b!3167489 () Bool)

(declare-fun c!532731 () Bool)

(assert (=> b!3167489 (= c!532731 ((_ is ElementMatch!9747) (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))))))

(declare-fun e!1972966 () tuple2!34584)

(assert (=> b!3167489 (= e!1972966 e!1972967)))

(declare-fun bm!229749 () Bool)

(assert (=> bm!229749 (= call!229756 call!229753)))

(declare-fun b!3167490 () Bool)

(declare-fun e!1972965 () tuple2!34584)

(assert (=> b!3167490 (= e!1972967 e!1972965)))

(assert (=> b!3167490 (= c!532730 ((_ is Union!9747) (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))))))

(declare-fun bm!229750 () Bool)

(declare-fun call!229755 () tuple2!34584)

(assert (=> bm!229750 (= call!229755 call!229756)))

(declare-fun b!3167491 () Bool)

(declare-fun lt!1064889 () tuple2!34584)

(assert (=> b!3167491 (= lt!1064889 call!229755)))

(assert (=> b!3167491 (= e!1972968 (tuple2!34585 (Union!9747 (Concat!15068 (_1!20424 lt!1064889) (regTwo!20006 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))) EmptyLang!9747) (_2!20424 lt!1064889)))))

(declare-fun b!3167492 () Bool)

(declare-fun lt!1064896 () tuple2!34584)

(declare-fun call!229754 () tuple2!34584)

(assert (=> b!3167492 (= lt!1064896 call!229754)))

(declare-fun lt!1064888 () tuple2!34584)

(assert (=> b!3167492 (= lt!1064888 call!229753)))

(assert (=> b!3167492 (= e!1972965 (tuple2!34585 (Union!9747 (_1!20424 lt!1064888) (_1!20424 lt!1064896)) (_2!20424 lt!1064896)))))

(declare-fun b!3167493 () Bool)

(declare-fun lt!1064893 () tuple2!34584)

(assert (=> b!3167493 (= e!1972964 (tuple2!34585 (_1!20424 lt!1064893) (_2!20425 (update!269 (_2!20424 lt!1064893) (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))) a!2409 (_1!20424 lt!1064893)))))))

(declare-fun c!532727 () Bool)

(assert (=> b!3167493 (= c!532727 (or ((_ is EmptyExpr!9747) (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))) ((_ is EmptyLang!9747) (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))))))

(assert (=> b!3167493 (= lt!1064893 e!1972966)))

(declare-fun bm!229751 () Bool)

(declare-fun lt!1064894 () tuple2!34584)

(assert (=> bm!229751 (= call!229754 (derivativeStepMem!31 (ite c!532730 (regTwo!20007 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))) (regTwo!20006 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))) a!2409 (ite c!532730 (_2!20424 lt!1064888) (_2!20424 lt!1064894))))))

(declare-fun b!3167494 () Bool)

(assert (=> b!3167494 (= e!1972966 (tuple2!34585 EmptyLang!9747 cache!347))))

(declare-fun b!3167495 () Bool)

(assert (=> b!3167495 (= c!532728 ((_ is Star!9747) (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156))))))))

(assert (=> b!3167495 (= e!1972965 e!1972969)))

(declare-fun b!3167496 () Bool)

(declare-fun lt!1064892 () tuple2!34584)

(assert (=> b!3167496 (= lt!1064892 call!229754)))

(assert (=> b!3167496 (= lt!1064894 call!229755)))

(assert (=> b!3167496 (= e!1972968 (tuple2!34585 (Union!9747 (Concat!15068 (_1!20424 lt!1064894) (regTwo!20006 (ite c!532708 (regOne!20007 (regOne!20006 r!13156)) (ite c!532706 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))) (_1!20424 lt!1064892)) (_2!20424 lt!1064892)))))

(assert (= (and d!868983 c!532729) b!3167488))

(assert (= (and d!868983 (not c!532729)) b!3167493))

(assert (= (and b!3167493 c!532727) b!3167494))

(assert (= (and b!3167493 (not c!532727)) b!3167489))

(assert (= (and b!3167489 c!532731) b!3167485))

(assert (= (and b!3167489 (not c!532731)) b!3167490))

(assert (= (and b!3167490 c!532730) b!3167492))

(assert (= (and b!3167490 (not c!532730)) b!3167495))

(assert (= (and b!3167495 c!532728) b!3167486))

(assert (= (and b!3167495 (not c!532728)) b!3167487))

(assert (= (and b!3167487 c!532726) b!3167496))

(assert (= (and b!3167487 (not c!532726)) b!3167491))

(assert (= (or b!3167496 b!3167491) bm!229750))

(assert (= (or b!3167486 bm!229750) bm!229749))

(assert (= (or b!3167492 bm!229749) bm!229748))

(assert (= (or b!3167492 b!3167496) bm!229751))

(declare-fun m!3428572 () Bool)

(assert (=> b!3167487 m!3428572))

(declare-fun m!3428574 () Bool)

(assert (=> d!868983 m!3428574))

(declare-fun m!3428576 () Bool)

(assert (=> d!868983 m!3428576))

(declare-fun m!3428578 () Bool)

(assert (=> d!868983 m!3428578))

(declare-fun m!3428580 () Bool)

(assert (=> bm!229748 m!3428580))

(declare-fun m!3428582 () Bool)

(assert (=> bm!229751 m!3428582))

(declare-fun m!3428584 () Bool)

(assert (=> b!3167493 m!3428584))

(assert (=> bm!229729 d!868983))

(declare-fun bm!229756 () Bool)

(declare-fun call!229762 () Bool)

(declare-fun c!532734 () Bool)

(assert (=> bm!229756 (= call!229762 (nullable!3348 (ite c!532734 (regTwo!20007 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))))

(declare-fun b!3167511 () Bool)

(declare-fun e!1972983 () Bool)

(declare-fun e!1972985 () Bool)

(assert (=> b!3167511 (= e!1972983 e!1972985)))

(assert (=> b!3167511 (= c!532734 ((_ is Union!9747) (regOne!20006 r!13156)))))

(declare-fun b!3167512 () Bool)

(declare-fun e!1972984 () Bool)

(assert (=> b!3167512 (= e!1972985 e!1972984)))

(declare-fun res!1288264 () Bool)

(declare-fun call!229761 () Bool)

(assert (=> b!3167512 (= res!1288264 call!229761)))

(assert (=> b!3167512 (=> res!1288264 e!1972984)))

(declare-fun b!3167513 () Bool)

(assert (=> b!3167513 (= e!1972984 call!229762)))

(declare-fun b!3167514 () Bool)

(declare-fun e!1972986 () Bool)

(assert (=> b!3167514 (= e!1972986 e!1972983)))

(declare-fun res!1288263 () Bool)

(assert (=> b!3167514 (=> res!1288263 e!1972983)))

(assert (=> b!3167514 (= res!1288263 ((_ is Star!9747) (regOne!20006 r!13156)))))

(declare-fun b!3167515 () Bool)

(declare-fun e!1972987 () Bool)

(assert (=> b!3167515 (= e!1972987 call!229761)))

(declare-fun bm!229757 () Bool)

(assert (=> bm!229757 (= call!229761 (nullable!3348 (ite c!532734 (regOne!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))))))

(declare-fun d!868985 () Bool)

(declare-fun res!1288265 () Bool)

(declare-fun e!1972982 () Bool)

(assert (=> d!868985 (=> res!1288265 e!1972982)))

(assert (=> d!868985 (= res!1288265 ((_ is EmptyExpr!9747) (regOne!20006 r!13156)))))

(assert (=> d!868985 (= (nullableFct!954 (regOne!20006 r!13156)) e!1972982)))

(declare-fun b!3167516 () Bool)

(assert (=> b!3167516 (= e!1972985 e!1972987)))

(declare-fun res!1288266 () Bool)

(assert (=> b!3167516 (= res!1288266 call!229762)))

(assert (=> b!3167516 (=> (not res!1288266) (not e!1972987))))

(declare-fun b!3167517 () Bool)

(assert (=> b!3167517 (= e!1972982 e!1972986)))

(declare-fun res!1288267 () Bool)

(assert (=> b!3167517 (=> (not res!1288267) (not e!1972986))))

(assert (=> b!3167517 (= res!1288267 (and (not ((_ is EmptyLang!9747) (regOne!20006 r!13156))) (not ((_ is ElementMatch!9747) (regOne!20006 r!13156)))))))

(assert (= (and d!868985 (not res!1288265)) b!3167517))

(assert (= (and b!3167517 res!1288267) b!3167514))

(assert (= (and b!3167514 (not res!1288263)) b!3167511))

(assert (= (and b!3167511 c!532734) b!3167512))

(assert (= (and b!3167511 (not c!532734)) b!3167516))

(assert (= (and b!3167512 (not res!1288264)) b!3167513))

(assert (= (and b!3167516 res!1288266) b!3167515))

(assert (= (or b!3167513 b!3167516) bm!229756))

(assert (= (or b!3167512 b!3167515) bm!229757))

(declare-fun m!3428586 () Bool)

(assert (=> bm!229756 m!3428586))

(declare-fun m!3428588 () Bool)

(assert (=> bm!229757 m!3428588))

(assert (=> d!868957 d!868985))

(declare-fun d!868987 () Bool)

(assert (=> d!868987 (= (nullable!3348 (reg!10076 r!13156)) (nullableFct!954 (reg!10076 r!13156)))))

(declare-fun bs!539541 () Bool)

(assert (= bs!539541 d!868987))

(declare-fun m!3428590 () Bool)

(assert (=> bs!539541 m!3428590))

(assert (=> b!3167399 d!868987))

(declare-fun bs!539542 () Bool)

(declare-fun d!868989 () Bool)

(assert (= bs!539542 (and d!868989 b!3167484)))

(declare-fun lambda!115887 () Int)

(assert (=> bs!539542 (= lambda!115887 lambda!115884)))

(declare-fun lt!1064905 () tuple2!34586)

(assert (=> d!868989 (validCacheMap!61 (cache!4218 (_2!20425 lt!1064905)))))

(declare-fun Unit!49847 () Unit!49845)

(declare-datatypes ((tuple2!34588 0))(
  ( (tuple2!34589 (_1!20426 Bool) (_2!20426 MutableMap!4074)) )
))
(declare-fun update!270 (MutableMap!4074 tuple2!34580 Regex!9747) tuple2!34588)

(assert (=> d!868989 (= lt!1064905 (tuple2!34587 Unit!49847 (Cache!419 (_2!20426 (update!270 (cache!4218 (_2!20424 lt!1064882)) (tuple2!34581 (regOne!20006 r!13156) a!2409) (_1!20424 lt!1064882))))))))

(declare-fun lt!1064906 () Unit!49845)

(declare-fun lt!1064908 () Unit!49845)

(assert (=> d!868989 (= lt!1064906 lt!1064908)))

(declare-fun lt!1064907 () tuple2!34580)

(assert (=> d!868989 (forall!7149 (toList!2060 (map!7909 (_2!20426 (update!270 (cache!4218 (_2!20424 lt!1064882)) lt!1064907 (_1!20424 lt!1064882))))) lambda!115887)))

(declare-fun lemmaUpdatePreservesForallPairs!30 (MutableMap!4074 tuple2!34580 Regex!9747 Int) Unit!49845)

(assert (=> d!868989 (= lt!1064908 (lemmaUpdatePreservesForallPairs!30 (cache!4218 (_2!20424 lt!1064882)) lt!1064907 (_1!20424 lt!1064882) lambda!115887))))

(assert (=> d!868989 (= lt!1064907 (tuple2!34581 (regOne!20006 r!13156) a!2409))))

(assert (=> d!868989 (validCacheMap!61 (cache!4218 (_2!20424 lt!1064882)))))

(assert (=> d!868989 (= (update!269 (_2!20424 lt!1064882) (regOne!20006 r!13156) a!2409 (_1!20424 lt!1064882)) lt!1064905)))

(declare-fun bs!539543 () Bool)

(assert (= bs!539543 d!868989))

(declare-fun m!3428592 () Bool)

(assert (=> bs!539543 m!3428592))

(declare-fun m!3428594 () Bool)

(assert (=> bs!539543 m!3428594))

(declare-fun m!3428596 () Bool)

(assert (=> bs!539543 m!3428596))

(declare-fun m!3428598 () Bool)

(assert (=> bs!539543 m!3428598))

(declare-fun m!3428600 () Bool)

(assert (=> bs!539543 m!3428600))

(declare-fun m!3428602 () Bool)

(assert (=> bs!539543 m!3428602))

(declare-fun m!3428604 () Bool)

(assert (=> bs!539543 m!3428604))

(assert (=> b!3167377 d!868989))

(declare-fun call!229763 () Int)

(declare-fun c!532740 () Bool)

(declare-fun c!532737 () Bool)

(declare-fun bm!229758 () Bool)

(assert (=> bm!229758 (= call!229763 (RegexPrimitiveSize!133 (ite c!532737 (regTwo!20006 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))) (ite c!532740 (reg!10076 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))) (regTwo!20007 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156)))))))))))

(declare-fun b!3167520 () Bool)

(declare-fun e!1972992 () Int)

(declare-fun e!1972994 () Int)

(assert (=> b!3167520 (= e!1972992 e!1972994)))

(assert (=> b!3167520 (= c!532737 ((_ is Concat!15068) (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))

(declare-fun b!3167521 () Bool)

(declare-fun e!1972991 () Int)

(declare-fun call!229765 () Int)

(assert (=> b!3167521 (= e!1972991 (+ 1 call!229765))))

(declare-fun b!3167522 () Bool)

(declare-fun call!229764 () Int)

(assert (=> b!3167522 (= e!1972994 (+ 1 call!229764 call!229763))))

(declare-fun b!3167523 () Bool)

(assert (=> b!3167523 (= e!1972992 1)))

(declare-fun b!3167524 () Bool)

(declare-fun e!1972990 () Int)

(assert (=> b!3167524 (= e!1972990 e!1972991)))

(assert (=> b!3167524 (= c!532740 ((_ is Star!9747) (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))

(declare-fun b!3167525 () Bool)

(declare-fun e!1972993 () Int)

(assert (=> b!3167525 (= e!1972993 (+ 1 call!229764 call!229765))))

(declare-fun bm!229760 () Bool)

(assert (=> bm!229760 (= call!229765 call!229763)))

(declare-fun b!3167526 () Bool)

(assert (=> b!3167526 (= e!1972993 0)))

(declare-fun c!532738 () Bool)

(declare-fun b!3167527 () Bool)

(assert (=> b!3167527 (= c!532738 ((_ is EmptyExpr!9747) (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))

(assert (=> b!3167527 (= e!1972994 e!1972990)))

(declare-fun b!3167528 () Bool)

(declare-fun c!532736 () Bool)

(assert (=> b!3167528 (= c!532736 ((_ is EmptyLang!9747) (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))

(assert (=> b!3167528 (= e!1972991 e!1972993)))

(declare-fun b!3167529 () Bool)

(assert (=> b!3167529 (= e!1972990 0)))

(declare-fun d!868991 () Bool)

(declare-fun lt!1064909 () Int)

(assert (=> d!868991 (>= lt!1064909 0)))

(assert (=> d!868991 (= lt!1064909 e!1972992)))

(declare-fun c!532739 () Bool)

(assert (=> d!868991 (= c!532739 ((_ is ElementMatch!9747) (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))

(assert (=> d!868991 (= (RegexPrimitiveSize!133 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))) lt!1064909)))

(declare-fun bm!229759 () Bool)

(assert (=> bm!229759 (= call!229764 (RegexPrimitiveSize!133 (ite c!532737 (regOne!20006 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))) (regOne!20007 (ite c!532683 (regTwo!20006 (regTwo!20006 r!13156)) (ite c!532686 (reg!10076 (regTwo!20006 r!13156)) (regTwo!20007 (regTwo!20006 r!13156))))))))))

(assert (= (and d!868991 c!532739) b!3167523))

(assert (= (and d!868991 (not c!532739)) b!3167520))

(assert (= (and b!3167520 c!532737) b!3167522))

(assert (= (and b!3167520 (not c!532737)) b!3167527))

(assert (= (and b!3167527 c!532738) b!3167529))

(assert (= (and b!3167527 (not c!532738)) b!3167524))

(assert (= (and b!3167524 c!532740) b!3167521))

(assert (= (and b!3167524 (not c!532740)) b!3167528))

(assert (= (and b!3167528 c!532736) b!3167526))

(assert (= (and b!3167528 (not c!532736)) b!3167525))

(assert (= (or b!3167521 b!3167525) bm!229760))

(assert (= (or b!3167522 bm!229760) bm!229758))

(assert (= (or b!3167522 b!3167525) bm!229759))

(declare-fun m!3428606 () Bool)

(assert (=> bm!229758 m!3428606))

(declare-fun m!3428608 () Bool)

(assert (=> bm!229759 m!3428608))

(assert (=> bm!229715 d!868991))

(declare-fun e!1972998 () tuple2!34584)

(declare-fun b!3167530 () Bool)

(assert (=> b!3167530 (= e!1972998 (tuple2!34585 (ite (= a!2409 (c!532667 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))) EmptyExpr!9747 EmptyLang!9747) (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883))))))

(declare-fun lt!1064913 () tuple2!34584)

(declare-fun b!3167531 () Bool)

(declare-fun e!1973000 () tuple2!34584)

(assert (=> b!3167531 (= e!1973000 (tuple2!34585 (Concat!15068 (_1!20424 lt!1064913) (Star!9747 (reg!10076 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))))) (_2!20424 lt!1064913)))))

(declare-fun call!229769 () tuple2!34584)

(assert (=> b!3167531 (= lt!1064913 call!229769)))

(declare-fun c!532743 () Bool)

(declare-fun c!532745 () Bool)

(declare-fun bm!229761 () Bool)

(declare-fun call!229766 () tuple2!34584)

(assert (=> bm!229761 (= call!229766 (derivativeStepMem!31 (ite c!532745 (regOne!20007 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))) (ite c!532743 (reg!10076 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))) (regOne!20006 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))))) a!2409 (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883))))))

(declare-fun b!3167532 () Bool)

(declare-fun e!1972999 () tuple2!34584)

(assert (=> b!3167532 (= e!1973000 e!1972999)))

(declare-fun c!532741 () Bool)

(assert (=> b!3167532 (= c!532741 (nullable!3348 (regOne!20006 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))))))

(declare-fun d!868993 () Bool)

(declare-fun lt!1064917 () tuple2!34584)

(assert (=> d!868993 (= (_1!20424 lt!1064917) (derivativeStep!2894 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))) a!2409))))

(declare-fun e!1972995 () tuple2!34584)

(assert (=> d!868993 (= lt!1064917 e!1972995)))

(declare-fun c!532744 () Bool)

(declare-fun lt!1064912 () Option!6912)

(assert (=> d!868993 (= c!532744 ((_ is Some!6911) lt!1064912))))

(assert (=> d!868993 (= lt!1064912 (get!11260 (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883)) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))) a!2409))))

(assert (=> d!868993 (validRegex!4466 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))))

(assert (=> d!868993 (= (derivativeStepMem!31 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))) a!2409 (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883))) lt!1064917)))

(declare-fun b!3167533 () Bool)

(assert (=> b!3167533 (= e!1972995 (tuple2!34585 (v!35161 lt!1064912) (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883))))))

(declare-fun b!3167534 () Bool)

(declare-fun c!532746 () Bool)

(assert (=> b!3167534 (= c!532746 ((_ is ElementMatch!9747) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))))))

(declare-fun e!1972997 () tuple2!34584)

(assert (=> b!3167534 (= e!1972997 e!1972998)))

(declare-fun bm!229762 () Bool)

(assert (=> bm!229762 (= call!229769 call!229766)))

(declare-fun b!3167535 () Bool)

(declare-fun e!1972996 () tuple2!34584)

(assert (=> b!3167535 (= e!1972998 e!1972996)))

(assert (=> b!3167535 (= c!532745 ((_ is Union!9747) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))))))

(declare-fun bm!229763 () Bool)

(declare-fun call!229768 () tuple2!34584)

(assert (=> bm!229763 (= call!229768 call!229769)))

(declare-fun b!3167536 () Bool)

(declare-fun lt!1064911 () tuple2!34584)

(assert (=> b!3167536 (= lt!1064911 call!229768)))

(assert (=> b!3167536 (= e!1972999 (tuple2!34585 (Union!9747 (Concat!15068 (_1!20424 lt!1064911) (regTwo!20006 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))) EmptyLang!9747) (_2!20424 lt!1064911)))))

(declare-fun b!3167537 () Bool)

(declare-fun lt!1064918 () tuple2!34584)

(declare-fun call!229767 () tuple2!34584)

(assert (=> b!3167537 (= lt!1064918 call!229767)))

(declare-fun lt!1064910 () tuple2!34584)

(assert (=> b!3167537 (= lt!1064910 call!229766)))

(assert (=> b!3167537 (= e!1972996 (tuple2!34585 (Union!9747 (_1!20424 lt!1064910) (_1!20424 lt!1064918)) (_2!20424 lt!1064918)))))

(declare-fun lt!1064915 () tuple2!34584)

(declare-fun b!3167538 () Bool)

(assert (=> b!3167538 (= e!1972995 (tuple2!34585 (_1!20424 lt!1064915) (_2!20425 (update!269 (_2!20424 lt!1064915) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))) a!2409 (_1!20424 lt!1064915)))))))

(declare-fun c!532742 () Bool)

(assert (=> b!3167538 (= c!532742 (or ((_ is EmptyExpr!9747) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))) ((_ is EmptyLang!9747) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))))))

(assert (=> b!3167538 (= lt!1064915 e!1972997)))

(declare-fun bm!229764 () Bool)

(declare-fun lt!1064916 () tuple2!34584)

(assert (=> bm!229764 (= call!229767 (derivativeStepMem!31 (ite c!532745 (regTwo!20007 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))) (regTwo!20006 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))) a!2409 (ite c!532745 (_2!20424 lt!1064910) (_2!20424 lt!1064916))))))

(declare-fun b!3167539 () Bool)

(assert (=> b!3167539 (= e!1972997 (tuple2!34585 EmptyLang!9747 (ite c!532708 (_2!20424 lt!1064877) (_2!20424 lt!1064883))))))

(declare-fun b!3167540 () Bool)

(assert (=> b!3167540 (= c!532743 ((_ is Star!9747) (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156)))))))

(assert (=> b!3167540 (= e!1972996 e!1973000)))

(declare-fun b!3167541 () Bool)

(declare-fun lt!1064914 () tuple2!34584)

(assert (=> b!3167541 (= lt!1064914 call!229767)))

(assert (=> b!3167541 (= lt!1064916 call!229768)))

(assert (=> b!3167541 (= e!1972999 (tuple2!34585 (Union!9747 (Concat!15068 (_1!20424 lt!1064916) (regTwo!20006 (ite c!532708 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))) (_1!20424 lt!1064914)) (_2!20424 lt!1064914)))))

(assert (= (and d!868993 c!532744) b!3167533))

(assert (= (and d!868993 (not c!532744)) b!3167538))

(assert (= (and b!3167538 c!532742) b!3167539))

(assert (= (and b!3167538 (not c!532742)) b!3167534))

(assert (= (and b!3167534 c!532746) b!3167530))

(assert (= (and b!3167534 (not c!532746)) b!3167535))

(assert (= (and b!3167535 c!532745) b!3167537))

(assert (= (and b!3167535 (not c!532745)) b!3167540))

(assert (= (and b!3167540 c!532743) b!3167531))

(assert (= (and b!3167540 (not c!532743)) b!3167532))

(assert (= (and b!3167532 c!532741) b!3167541))

(assert (= (and b!3167532 (not c!532741)) b!3167536))

(assert (= (or b!3167541 b!3167536) bm!229763))

(assert (= (or b!3167531 bm!229763) bm!229762))

(assert (= (or b!3167537 bm!229762) bm!229761))

(assert (= (or b!3167537 b!3167541) bm!229764))

(declare-fun m!3428610 () Bool)

(assert (=> b!3167532 m!3428610))

(declare-fun m!3428612 () Bool)

(assert (=> d!868993 m!3428612))

(declare-fun m!3428614 () Bool)

(assert (=> d!868993 m!3428614))

(declare-fun m!3428616 () Bool)

(assert (=> d!868993 m!3428616))

(declare-fun m!3428618 () Bool)

(assert (=> bm!229761 m!3428618))

(declare-fun m!3428620 () Bool)

(assert (=> bm!229764 m!3428620))

(declare-fun m!3428622 () Bool)

(assert (=> b!3167538 m!3428622))

(assert (=> bm!229732 d!868993))

(declare-fun b!3167542 () Bool)

(declare-fun e!1973003 () Bool)

(declare-fun e!1973007 () Bool)

(assert (=> b!3167542 (= e!1973003 e!1973007)))

(declare-fun res!1288274 () Bool)

(assert (=> b!3167542 (= res!1288274 (not (nullable!3348 (reg!10076 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))))))))

(assert (=> b!3167542 (=> (not res!1288274) (not e!1973007))))

(declare-fun b!3167543 () Bool)

(declare-fun call!229772 () Bool)

(assert (=> b!3167543 (= e!1973007 call!229772)))

(declare-fun b!3167544 () Bool)

(declare-fun e!1973006 () Bool)

(assert (=> b!3167544 (= e!1973006 e!1973003)))

(declare-fun c!532748 () Bool)

(assert (=> b!3167544 (= c!532748 ((_ is Star!9747) (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))))))

(declare-fun c!532747 () Bool)

(declare-fun call!229770 () Bool)

(declare-fun bm!229765 () Bool)

(assert (=> bm!229765 (= call!229770 (validRegex!4466 (ite c!532747 (regOne!20007 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))) (regOne!20006 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))))))))

(declare-fun bm!229766 () Bool)

(declare-fun call!229771 () Bool)

(assert (=> bm!229766 (= call!229771 call!229772)))

(declare-fun b!3167545 () Bool)

(declare-fun e!1973001 () Bool)

(assert (=> b!3167545 (= e!1973003 e!1973001)))

(assert (=> b!3167545 (= c!532747 ((_ is Union!9747) (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))))))

(declare-fun bm!229767 () Bool)

(assert (=> bm!229767 (= call!229772 (validRegex!4466 (ite c!532748 (reg!10076 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))) (ite c!532747 (regTwo!20007 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))) (regTwo!20006 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156))))))))))

(declare-fun b!3167547 () Bool)

(declare-fun e!1973005 () Bool)

(declare-fun e!1973004 () Bool)

(assert (=> b!3167547 (= e!1973005 e!1973004)))

(declare-fun res!1288272 () Bool)

(assert (=> b!3167547 (=> (not res!1288272) (not e!1973004))))

(assert (=> b!3167547 (= res!1288272 call!229770)))

(declare-fun b!3167548 () Bool)

(declare-fun e!1973002 () Bool)

(assert (=> b!3167548 (= e!1973002 call!229771)))

(declare-fun b!3167549 () Bool)

(declare-fun res!1288273 () Bool)

(assert (=> b!3167549 (=> (not res!1288273) (not e!1973002))))

(assert (=> b!3167549 (= res!1288273 call!229770)))

(assert (=> b!3167549 (= e!1973001 e!1973002)))

(declare-fun b!3167550 () Bool)

(declare-fun res!1288275 () Bool)

(assert (=> b!3167550 (=> res!1288275 e!1973005)))

(assert (=> b!3167550 (= res!1288275 (not ((_ is Concat!15068) (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156))))))))

(assert (=> b!3167550 (= e!1973001 e!1973005)))

(declare-fun b!3167546 () Bool)

(assert (=> b!3167546 (= e!1973004 call!229771)))

(declare-fun d!868995 () Bool)

(declare-fun res!1288271 () Bool)

(assert (=> d!868995 (=> res!1288271 e!1973006)))

(assert (=> d!868995 (= res!1288271 ((_ is ElementMatch!9747) (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))))))

(assert (=> d!868995 (= (validRegex!4466 (ite c!532715 (reg!10076 r!13156) (ite c!532714 (regTwo!20007 r!13156) (regTwo!20006 r!13156)))) e!1973006)))

(assert (= (and d!868995 (not res!1288271)) b!3167544))

(assert (= (and b!3167544 c!532748) b!3167542))

(assert (= (and b!3167544 (not c!532748)) b!3167545))

(assert (= (and b!3167542 res!1288274) b!3167543))

(assert (= (and b!3167545 c!532747) b!3167549))

(assert (= (and b!3167545 (not c!532747)) b!3167550))

(assert (= (and b!3167549 res!1288273) b!3167548))

(assert (= (and b!3167550 (not res!1288275)) b!3167547))

(assert (= (and b!3167547 res!1288272) b!3167546))

(assert (= (or b!3167549 b!3167547) bm!229765))

(assert (= (or b!3167548 b!3167546) bm!229766))

(assert (= (or b!3167543 bm!229766) bm!229767))

(declare-fun m!3428624 () Bool)

(assert (=> b!3167542 m!3428624))

(declare-fun m!3428626 () Bool)

(assert (=> bm!229765 m!3428626))

(declare-fun m!3428628 () Bool)

(assert (=> bm!229767 m!3428628))

(assert (=> bm!229741 d!868995))

(declare-fun d!868997 () Bool)

(assert (=> d!868997 (= (isEmpty!19760 lt!1064854) (not ((_ is Some!6911) lt!1064854)))))

(assert (=> d!868959 d!868997))

(declare-fun bm!229780 () Bool)

(declare-fun call!229789 () (_ BitVec 64))

(declare-fun hash!806 (Hashable!4084 tuple2!34580) (_ BitVec 64))

(assert (=> bm!229780 (= call!229789 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1064964 () (_ BitVec 64))

(declare-fun e!1973022 () Unit!49845)

(declare-fun lambda!115890 () Int)

(declare-fun b!3167573 () Bool)

(declare-datatypes ((tuple2!34590 0))(
  ( (tuple2!34591 (_1!20427 (_ BitVec 64)) (_2!20427 List!35582)) )
))
(declare-datatypes ((List!35583 0))(
  ( (Nil!35459) (Cons!35459 (h!40879 tuple2!34590) (t!234664 List!35583)) )
))
(declare-fun forallContained!1075 (List!35583 Int tuple2!34590) Unit!49845)

(declare-datatypes ((ListLongMap!725 0))(
  ( (ListLongMap!726 (toList!2061 List!35583)) )
))
(declare-fun map!7910 (MutLongMap!4168) ListLongMap!725)

(declare-fun apply!7957 (MutLongMap!4168 (_ BitVec 64)) List!35582)

(assert (=> b!3167573 (= e!1973022 (forallContained!1075 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))) lambda!115890 (tuple2!34591 lt!1064964 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1064964))))))

(declare-fun c!532759 () Bool)

(declare-fun contains!6184 (List!35583 tuple2!34590) Bool)

(assert (=> b!3167573 (= c!532759 (not (contains!6184 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))) (tuple2!34591 lt!1064964 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1064964)))))))

(declare-fun lt!1064962 () Unit!49845)

(declare-fun e!1973028 () Unit!49845)

(assert (=> b!3167573 (= lt!1064962 e!1973028)))

(declare-fun bm!229781 () Bool)

(declare-fun call!229785 () Bool)

(declare-datatypes ((Option!6913 0))(
  ( (None!6912) (Some!6912 (v!35162 tuple2!34582)) )
))
(declare-fun call!229787 () Option!6913)

(declare-fun isDefined!5428 (Option!6913) Bool)

(assert (=> bm!229781 (= call!229785 (isDefined!5428 call!229787))))

(declare-fun b!3167574 () Bool)

(assert (=> b!3167574 false))

(declare-fun lt!1064965 () Unit!49845)

(declare-fun lt!1064977 () Unit!49845)

(assert (=> b!3167574 (= lt!1064965 lt!1064977)))

(declare-fun lt!1064960 () ListLongMap!725)

(declare-fun contains!6185 (ListMap!1307 tuple2!34580) Bool)

(declare-fun extractMap!235 (List!35583) ListMap!1307)

(assert (=> b!3167574 (contains!6185 (extractMap!235 (toList!2061 lt!1064960)) (tuple2!34581 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!97 (ListLongMap!725 tuple2!34580 Hashable!4084) Unit!49845)

(assert (=> b!3167574 (= lt!1064977 (lemmaInLongMapThenInGenericMap!97 lt!1064960 (tuple2!34581 r!13156 a!2409) (hashF!6116 (cache!4218 cache!347))))))

(declare-fun call!229790 () ListLongMap!725)

(assert (=> b!3167574 (= lt!1064960 call!229790)))

(declare-fun e!1973027 () Unit!49845)

(declare-fun Unit!49848 () Unit!49845)

(assert (=> b!3167574 (= e!1973027 Unit!49848)))

(declare-fun lt!1064969 () ListLongMap!725)

(declare-fun c!532758 () Bool)

(declare-fun bm!229782 () Bool)

(declare-fun call!229786 () Bool)

(declare-fun contains!6186 (ListLongMap!725 (_ BitVec 64)) Bool)

(assert (=> bm!229782 (= call!229786 (contains!6186 (ite c!532758 lt!1064969 call!229790) call!229789))))

(declare-fun b!3167575 () Bool)

(assert (=> b!3167575 false))

(declare-fun lt!1064972 () Unit!49845)

(declare-fun lt!1064966 () Unit!49845)

(assert (=> b!3167575 (= lt!1064972 lt!1064966)))

(declare-fun lt!1064978 () List!35583)

(declare-fun lt!1064967 () List!35582)

(assert (=> b!3167575 (contains!6184 lt!1064978 (tuple2!34591 lt!1064964 lt!1064967))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!103 (List!35583 (_ BitVec 64) List!35582) Unit!49845)

(assert (=> b!3167575 (= lt!1064966 (lemmaGetValueByKeyImpliesContainsTuple!103 lt!1064978 lt!1064964 lt!1064967))))

(assert (=> b!3167575 (= lt!1064967 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1064964))))

(assert (=> b!3167575 (= lt!1064978 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))

(declare-fun lt!1064963 () Unit!49845)

(declare-fun lt!1064961 () Unit!49845)

(assert (=> b!3167575 (= lt!1064963 lt!1064961)))

(declare-fun lt!1064970 () List!35583)

(declare-datatypes ((Option!6914 0))(
  ( (None!6913) (Some!6913 (v!35163 List!35582)) )
))
(declare-fun isDefined!5429 (Option!6914) Bool)

(declare-fun getValueByKey!181 (List!35583 (_ BitVec 64)) Option!6914)

(assert (=> b!3167575 (isDefined!5429 (getValueByKey!181 lt!1064970 lt!1064964))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!131 (List!35583 (_ BitVec 64)) Unit!49845)

(assert (=> b!3167575 (= lt!1064961 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 lt!1064970 lt!1064964))))

(assert (=> b!3167575 (= lt!1064970 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))

(declare-fun lt!1064968 () Unit!49845)

(declare-fun lt!1064976 () Unit!49845)

(assert (=> b!3167575 (= lt!1064968 lt!1064976)))

(declare-fun lt!1064975 () List!35583)

(declare-fun containsKey!195 (List!35583 (_ BitVec 64)) Bool)

(assert (=> b!3167575 (containsKey!195 lt!1064975 lt!1064964)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!98 (List!35583 (_ BitVec 64)) Unit!49845)

(assert (=> b!3167575 (= lt!1064976 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!98 lt!1064975 lt!1064964))))

(assert (=> b!3167575 (= lt!1064975 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))

(declare-fun Unit!49849 () Unit!49845)

(assert (=> b!3167575 (= e!1973028 Unit!49849)))

(declare-fun call!229788 () List!35582)

(declare-fun bm!229783 () Bool)

(declare-fun apply!7958 (ListLongMap!725 (_ BitVec 64)) List!35582)

(assert (=> bm!229783 (= call!229788 (apply!7958 (ite c!532758 lt!1064969 call!229790) call!229789))))

(declare-fun b!3167577 () Bool)

(declare-fun e!1973026 () Unit!49845)

(assert (=> b!3167577 (= e!1973026 e!1973027)))

(declare-fun res!1288283 () Bool)

(assert (=> b!3167577 (= res!1288283 call!229786)))

(declare-fun e!1973025 () Bool)

(assert (=> b!3167577 (=> (not res!1288283) (not e!1973025))))

(declare-fun c!532760 () Bool)

(assert (=> b!3167577 (= c!532760 e!1973025)))

(declare-fun bm!229784 () Bool)

(declare-fun getPair!97 (List!35582 tuple2!34580) Option!6913)

(assert (=> bm!229784 (= call!229787 (getPair!97 call!229788 (tuple2!34581 r!13156 a!2409)))))

(declare-fun b!3167578 () Bool)

(declare-fun e!1973023 () Bool)

(assert (=> b!3167578 (= e!1973023 call!229785)))

(declare-fun b!3167579 () Bool)

(declare-fun Unit!49850 () Unit!49845)

(assert (=> b!3167579 (= e!1973028 Unit!49850)))

(declare-fun b!3167580 () Bool)

(declare-fun Unit!49851 () Unit!49845)

(assert (=> b!3167580 (= e!1973027 Unit!49851)))

(declare-fun b!3167581 () Bool)

(declare-fun Unit!49852 () Unit!49845)

(assert (=> b!3167581 (= e!1973022 Unit!49852)))

(declare-fun b!3167582 () Bool)

(declare-fun e!1973024 () Bool)

(assert (=> b!3167582 (= e!1973024 (isDefined!5428 (getPair!97 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1064964) (tuple2!34581 r!13156 a!2409))))))

(declare-fun bm!229785 () Bool)

(assert (=> bm!229785 (= call!229790 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))

(declare-fun b!3167583 () Bool)

(declare-fun lt!1064959 () Unit!49845)

(assert (=> b!3167583 (= e!1973026 lt!1064959)))

(assert (=> b!3167583 (= lt!1064969 call!229790)))

(declare-fun lemmaInGenericMapThenInLongMap!97 (ListLongMap!725 tuple2!34580 Hashable!4084) Unit!49845)

(assert (=> b!3167583 (= lt!1064959 (lemmaInGenericMapThenInLongMap!97 lt!1064969 (tuple2!34581 r!13156 a!2409) (hashF!6116 (cache!4218 cache!347))))))

(declare-fun res!1288284 () Bool)

(assert (=> b!3167583 (= res!1288284 call!229786)))

(assert (=> b!3167583 (=> (not res!1288284) (not e!1973023))))

(assert (=> b!3167583 e!1973023))

(declare-fun b!3167576 () Bool)

(assert (=> b!3167576 (= e!1973025 call!229785)))

(declare-fun lt!1064973 () Bool)

(declare-fun d!868999 () Bool)

(assert (=> d!868999 (= lt!1064973 (contains!6185 (map!7909 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(assert (=> d!868999 (= lt!1064973 e!1973024)))

(declare-fun res!1288282 () Bool)

(assert (=> d!868999 (=> (not res!1288282) (not e!1973024))))

(declare-fun contains!6187 (MutLongMap!4168 (_ BitVec 64)) Bool)

(assert (=> d!868999 (= res!1288282 (contains!6187 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1064964))))

(declare-fun lt!1064971 () Unit!49845)

(assert (=> d!868999 (= lt!1064971 e!1973026)))

(assert (=> d!868999 (= c!532758 (contains!6185 (extractMap!235 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347)))))) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1064974 () Unit!49845)

(assert (=> d!868999 (= lt!1064974 e!1973022)))

(declare-fun c!532757 () Bool)

(assert (=> d!868999 (= c!532757 (contains!6187 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1064964))))

(assert (=> d!868999 (= lt!1064964 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(assert (=> d!868999 (valid!3254 (cache!4218 cache!347))))

(assert (=> d!868999 (= (contains!6183 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409)) lt!1064973)))

(assert (= (and d!868999 c!532757) b!3167573))

(assert (= (and d!868999 (not c!532757)) b!3167581))

(assert (= (and b!3167573 c!532759) b!3167575))

(assert (= (and b!3167573 (not c!532759)) b!3167579))

(assert (= (and d!868999 c!532758) b!3167583))

(assert (= (and d!868999 (not c!532758)) b!3167577))

(assert (= (and b!3167583 res!1288284) b!3167578))

(assert (= (and b!3167577 res!1288283) b!3167576))

(assert (= (and b!3167577 c!532760) b!3167574))

(assert (= (and b!3167577 (not c!532760)) b!3167580))

(assert (= (or b!3167583 b!3167577 b!3167576 b!3167574) bm!229785))

(assert (= (or b!3167583 b!3167578 b!3167577 b!3167576) bm!229780))

(assert (= (or b!3167583 b!3167577) bm!229782))

(assert (= (or b!3167578 b!3167576) bm!229783))

(assert (= (or b!3167578 b!3167576) bm!229784))

(assert (= (or b!3167578 b!3167576) bm!229781))

(assert (= (and d!868999 res!1288282) b!3167582))

(declare-fun m!3428630 () Bool)

(assert (=> bm!229785 m!3428630))

(declare-fun m!3428632 () Bool)

(assert (=> bm!229782 m!3428632))

(declare-fun m!3428634 () Bool)

(assert (=> b!3167574 m!3428634))

(assert (=> b!3167574 m!3428634))

(declare-fun m!3428636 () Bool)

(assert (=> b!3167574 m!3428636))

(declare-fun m!3428638 () Bool)

(assert (=> b!3167574 m!3428638))

(declare-fun m!3428640 () Bool)

(assert (=> bm!229783 m!3428640))

(declare-fun m!3428642 () Bool)

(assert (=> bm!229781 m!3428642))

(declare-fun m!3428644 () Bool)

(assert (=> b!3167582 m!3428644))

(assert (=> b!3167582 m!3428644))

(declare-fun m!3428646 () Bool)

(assert (=> b!3167582 m!3428646))

(assert (=> b!3167582 m!3428646))

(declare-fun m!3428648 () Bool)

(assert (=> b!3167582 m!3428648))

(declare-fun m!3428650 () Bool)

(assert (=> bm!229780 m!3428650))

(declare-fun m!3428652 () Bool)

(assert (=> b!3167583 m!3428652))

(declare-fun m!3428654 () Bool)

(assert (=> d!868999 m!3428654))

(declare-fun m!3428656 () Bool)

(assert (=> d!868999 m!3428656))

(assert (=> d!868999 m!3428654))

(declare-fun m!3428658 () Bool)

(assert (=> d!868999 m!3428658))

(assert (=> d!868999 m!3428630))

(assert (=> d!868999 m!3428650))

(assert (=> d!868999 m!3428566))

(assert (=> d!868999 m!3428566))

(declare-fun m!3428660 () Bool)

(assert (=> d!868999 m!3428660))

(assert (=> d!868999 m!3428564))

(assert (=> b!3167573 m!3428630))

(assert (=> b!3167573 m!3428644))

(declare-fun m!3428662 () Bool)

(assert (=> b!3167573 m!3428662))

(declare-fun m!3428664 () Bool)

(assert (=> b!3167573 m!3428664))

(declare-fun m!3428666 () Bool)

(assert (=> b!3167575 m!3428666))

(assert (=> b!3167575 m!3428630))

(assert (=> b!3167575 m!3428644))

(declare-fun m!3428668 () Bool)

(assert (=> b!3167575 m!3428668))

(declare-fun m!3428670 () Bool)

(assert (=> b!3167575 m!3428670))

(declare-fun m!3428672 () Bool)

(assert (=> b!3167575 m!3428672))

(assert (=> b!3167575 m!3428668))

(declare-fun m!3428674 () Bool)

(assert (=> b!3167575 m!3428674))

(declare-fun m!3428676 () Bool)

(assert (=> b!3167575 m!3428676))

(declare-fun m!3428678 () Bool)

(assert (=> b!3167575 m!3428678))

(declare-fun m!3428680 () Bool)

(assert (=> bm!229784 m!3428680))

(assert (=> d!868959 d!868999))

(assert (=> d!868959 d!868971))

(declare-fun d!869001 () Bool)

(assert (=> d!869001 (= (get!11261 lt!1064854) (v!35161 lt!1064854))))

(assert (=> b!3167304 d!869001))

(declare-fun b!3167604 () Bool)

(declare-fun c!532772 () Bool)

(assert (=> b!3167604 (= c!532772 (nullable!3348 (regOne!20006 r!13156)))))

(declare-fun e!1973043 () Regex!9747)

(declare-fun e!1973042 () Regex!9747)

(assert (=> b!3167604 (= e!1973043 e!1973042)))

(declare-fun b!3167605 () Bool)

(declare-fun e!1973040 () Regex!9747)

(declare-fun e!1973041 () Regex!9747)

(assert (=> b!3167605 (= e!1973040 e!1973041)))

(declare-fun c!532773 () Bool)

(assert (=> b!3167605 (= c!532773 ((_ is ElementMatch!9747) r!13156))))

(declare-fun b!3167606 () Bool)

(declare-fun e!1973039 () Regex!9747)

(declare-fun call!229799 () Regex!9747)

(declare-fun call!229801 () Regex!9747)

(assert (=> b!3167606 (= e!1973039 (Union!9747 call!229799 call!229801))))

(declare-fun bm!229794 () Bool)

(declare-fun call!229802 () Regex!9747)

(assert (=> bm!229794 (= call!229802 call!229799)))

(declare-fun d!869003 () Bool)

(declare-fun lt!1064981 () Regex!9747)

(assert (=> d!869003 (validRegex!4466 lt!1064981)))

(assert (=> d!869003 (= lt!1064981 e!1973040)))

(declare-fun c!532774 () Bool)

(assert (=> d!869003 (= c!532774 (or ((_ is EmptyExpr!9747) r!13156) ((_ is EmptyLang!9747) r!13156)))))

(assert (=> d!869003 (validRegex!4466 r!13156)))

(assert (=> d!869003 (= (derivativeStep!2894 r!13156 a!2409) lt!1064981)))

(declare-fun call!229800 () Regex!9747)

(declare-fun b!3167607 () Bool)

(assert (=> b!3167607 (= e!1973042 (Union!9747 (Concat!15068 call!229800 (regTwo!20006 r!13156)) call!229801))))

(declare-fun b!3167608 () Bool)

(assert (=> b!3167608 (= e!1973043 (Concat!15068 call!229802 r!13156))))

(declare-fun b!3167609 () Bool)

(declare-fun c!532771 () Bool)

(assert (=> b!3167609 (= c!532771 ((_ is Union!9747) r!13156))))

(assert (=> b!3167609 (= e!1973041 e!1973039)))

(declare-fun bm!229795 () Bool)

(assert (=> bm!229795 (= call!229801 (derivativeStep!2894 (ite c!532771 (regTwo!20007 r!13156) (regTwo!20006 r!13156)) a!2409))))

(declare-fun b!3167610 () Bool)

(assert (=> b!3167610 (= e!1973042 (Union!9747 (Concat!15068 call!229800 (regTwo!20006 r!13156)) EmptyLang!9747))))

(declare-fun bm!229796 () Bool)

(declare-fun c!532775 () Bool)

(assert (=> bm!229796 (= call!229799 (derivativeStep!2894 (ite c!532771 (regOne!20007 r!13156) (ite c!532775 (reg!10076 r!13156) (regOne!20006 r!13156))) a!2409))))

(declare-fun bm!229797 () Bool)

(assert (=> bm!229797 (= call!229800 call!229802)))

(declare-fun b!3167611 () Bool)

(assert (=> b!3167611 (= e!1973039 e!1973043)))

(assert (=> b!3167611 (= c!532775 ((_ is Star!9747) r!13156))))

(declare-fun b!3167612 () Bool)

(assert (=> b!3167612 (= e!1973040 EmptyLang!9747)))

(declare-fun b!3167613 () Bool)

(assert (=> b!3167613 (= e!1973041 (ite (= a!2409 (c!532667 r!13156)) EmptyExpr!9747 EmptyLang!9747))))

(assert (= (and d!869003 c!532774) b!3167612))

(assert (= (and d!869003 (not c!532774)) b!3167605))

(assert (= (and b!3167605 c!532773) b!3167613))

(assert (= (and b!3167605 (not c!532773)) b!3167609))

(assert (= (and b!3167609 c!532771) b!3167606))

(assert (= (and b!3167609 (not c!532771)) b!3167611))

(assert (= (and b!3167611 c!532775) b!3167608))

(assert (= (and b!3167611 (not c!532775)) b!3167604))

(assert (= (and b!3167604 c!532772) b!3167607))

(assert (= (and b!3167604 (not c!532772)) b!3167610))

(assert (= (or b!3167607 b!3167610) bm!229797))

(assert (= (or b!3167608 bm!229797) bm!229794))

(assert (= (or b!3167606 b!3167607) bm!229795))

(assert (= (or b!3167606 bm!229794) bm!229796))

(assert (=> b!3167604 m!3428505))

(declare-fun m!3428682 () Bool)

(assert (=> d!869003 m!3428682))

(assert (=> d!869003 m!3428489))

(declare-fun m!3428684 () Bool)

(assert (=> bm!229795 m!3428684))

(declare-fun m!3428686 () Bool)

(assert (=> bm!229796 m!3428686))

(assert (=> b!3167304 d!869003))

(declare-fun bs!539544 () Bool)

(declare-fun b!3167627 () Bool)

(assert (= bs!539544 (and b!3167627 b!3167573)))

(declare-fun lambda!115897 () Int)

(assert (=> bs!539544 (= lambda!115897 lambda!115890)))

(declare-fun b!3167626 () Bool)

(assert (=> b!3167626 false))

(declare-fun lt!1065049 () Unit!49845)

(declare-fun lt!1065061 () Unit!49845)

(assert (=> b!3167626 (= lt!1065049 lt!1065061)))

(declare-fun lt!1065051 () List!35583)

(declare-fun lt!1065053 () (_ BitVec 64))

(declare-fun lt!1065062 () List!35582)

(assert (=> b!3167626 (contains!6184 lt!1065051 (tuple2!34591 lt!1065053 lt!1065062))))

(assert (=> b!3167626 (= lt!1065061 (lemmaGetValueByKeyImpliesContainsTuple!103 lt!1065051 lt!1065053 lt!1065062))))

(assert (=> b!3167626 (= lt!1065062 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1065053))))

(assert (=> b!3167626 (= lt!1065051 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))

(declare-fun lt!1065054 () Unit!49845)

(declare-fun lt!1065057 () Unit!49845)

(assert (=> b!3167626 (= lt!1065054 lt!1065057)))

(declare-fun lt!1065066 () List!35583)

(assert (=> b!3167626 (isDefined!5429 (getValueByKey!181 lt!1065066 lt!1065053))))

(assert (=> b!3167626 (= lt!1065057 (lemmaContainsKeyImpliesGetValueByKeyDefined!131 lt!1065066 lt!1065053))))

(assert (=> b!3167626 (= lt!1065066 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))

(declare-fun e!1973052 () Unit!49845)

(declare-fun Unit!49853 () Unit!49845)

(assert (=> b!3167626 (= e!1973052 Unit!49853)))

(declare-fun e!1973050 () Regex!9747)

(declare-fun get!11262 (Option!6913) tuple2!34582)

(assert (=> b!3167627 (= e!1973050 (_2!20423 (get!11262 (getPair!97 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1065053) (tuple2!34581 r!13156 a!2409)))))))

(assert (=> b!3167627 (= lt!1065053 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(declare-fun c!532783 () Bool)

(assert (=> b!3167627 (= c!532783 (not (contains!6184 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))) (tuple2!34591 lt!1065053 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1065053)))))))

(declare-fun lt!1065068 () Unit!49845)

(assert (=> b!3167627 (= lt!1065068 e!1973052)))

(declare-fun lt!1065056 () Unit!49845)

(assert (=> b!3167627 (= lt!1065056 (forallContained!1075 (toList!2061 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347))))) lambda!115897 (tuple2!34591 lt!1065053 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1065053))))))

(declare-fun lt!1065045 () ListLongMap!725)

(assert (=> b!3167627 (= lt!1065045 (map!7910 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))

(declare-fun lt!1065064 () Unit!49845)

(declare-fun lemmaGetPairGetSameValueAsMap!35 (ListLongMap!725 tuple2!34580 Regex!9747 Hashable!4084) Unit!49845)

(assert (=> b!3167627 (= lt!1065064 (lemmaGetPairGetSameValueAsMap!35 lt!1065045 (tuple2!34581 r!13156 a!2409) (_2!20423 (get!11262 (getPair!97 (apply!7957 (v!35160 (underlying!8566 (cache!4218 cache!347))) lt!1065053) (tuple2!34581 r!13156 a!2409)))) (hashF!6116 (cache!4218 cache!347))))))

(declare-fun lt!1065050 () Unit!49845)

(declare-fun lemmaInGenMapThenLongMapContainsHash!41 (ListLongMap!725 tuple2!34580 Hashable!4084) Unit!49845)

(assert (=> b!3167627 (= lt!1065050 (lemmaInGenMapThenLongMapContainsHash!41 lt!1065045 (tuple2!34581 r!13156 a!2409) (hashF!6116 (cache!4218 cache!347))))))

(assert (=> b!3167627 (contains!6186 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1065046 () Unit!49845)

(assert (=> b!3167627 (= lt!1065046 lt!1065050)))

(declare-fun lt!1065052 () (_ BitVec 64))

(assert (=> b!3167627 (= lt!1065052 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1065043 () List!35582)

(assert (=> b!3167627 (= lt!1065043 (apply!7958 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))))))

(declare-fun lt!1065059 () Unit!49845)

(declare-fun lemmaGetValueImpliesTupleContained!36 (ListLongMap!725 (_ BitVec 64) List!35582) Unit!49845)

(assert (=> b!3167627 (= lt!1065059 (lemmaGetValueImpliesTupleContained!36 lt!1065045 lt!1065052 lt!1065043))))

(assert (=> b!3167627 (contains!6184 (toList!2061 lt!1065045) (tuple2!34591 lt!1065052 lt!1065043))))

(declare-fun lt!1065060 () Unit!49845)

(assert (=> b!3167627 (= lt!1065060 lt!1065059)))

(declare-fun lt!1065048 () Unit!49845)

(assert (=> b!3167627 (= lt!1065048 (forallContained!1075 (toList!2061 lt!1065045) lambda!115897 (tuple2!34591 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)) (apply!7958 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))))))))

(declare-fun lt!1065065 () Unit!49845)

(declare-fun lemmaInGenMapThenGetPairDefined!35 (ListLongMap!725 tuple2!34580 Hashable!4084) Unit!49845)

(assert (=> b!3167627 (= lt!1065065 (lemmaInGenMapThenGetPairDefined!35 lt!1065045 (tuple2!34581 r!13156 a!2409) (hashF!6116 (cache!4218 cache!347))))))

(declare-fun lt!1065070 () Unit!49845)

(assert (=> b!3167627 (= lt!1065070 (lemmaInGenMapThenLongMapContainsHash!41 lt!1065045 (tuple2!34581 r!13156 a!2409) (hashF!6116 (cache!4218 cache!347))))))

(declare-fun lt!1065058 () Unit!49845)

(assert (=> b!3167627 (= lt!1065058 lt!1065070)))

(declare-fun lt!1065044 () (_ BitVec 64))

(assert (=> b!3167627 (= lt!1065044 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1065055 () List!35582)

(assert (=> b!3167627 (= lt!1065055 (apply!7958 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))))))

(declare-fun lt!1065071 () Unit!49845)

(assert (=> b!3167627 (= lt!1065071 (lemmaGetValueImpliesTupleContained!36 lt!1065045 lt!1065044 lt!1065055))))

(assert (=> b!3167627 (contains!6184 (toList!2061 lt!1065045) (tuple2!34591 lt!1065044 lt!1065055))))

(declare-fun lt!1065047 () Unit!49845)

(assert (=> b!3167627 (= lt!1065047 lt!1065071)))

(declare-fun lt!1065042 () Unit!49845)

(assert (=> b!3167627 (= lt!1065042 (forallContained!1075 (toList!2061 lt!1065045) lambda!115897 (tuple2!34591 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)) (apply!7958 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))))))))

(assert (=> b!3167627 (isDefined!5428 (getPair!97 (apply!7958 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1065067 () Unit!49845)

(assert (=> b!3167627 (= lt!1065067 lt!1065065)))

(declare-fun getValueByKey!182 (List!35582 tuple2!34580) Option!6912)

(assert (=> b!3167627 (= (_2!20423 (get!11262 (getPair!97 (apply!7958 lt!1065045 (hash!806 (hashF!6116 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))) (tuple2!34581 r!13156 a!2409)))) (get!11261 (getValueByKey!182 (toList!2060 (extractMap!235 (toList!2061 lt!1065045))) (tuple2!34581 r!13156 a!2409))))))

(declare-fun lt!1065063 () Unit!49845)

(assert (=> b!3167627 (= lt!1065063 lt!1065064)))

(declare-fun b!3167628 () Bool)

(declare-fun dynLambda!14362 (Int tuple2!34580) Regex!9747)

(assert (=> b!3167628 (= e!1973050 (dynLambda!14362 (defaultValue!4245 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409)))))

(declare-fun lt!1065069 () Regex!9747)

(declare-fun b!3167629 () Bool)

(declare-fun e!1973051 () Bool)

(assert (=> b!3167629 (= e!1973051 (= lt!1065069 (dynLambda!14362 (defaultValue!4245 (cache!4218 cache!347)) (tuple2!34581 r!13156 a!2409))))))

(declare-fun b!3167630 () Bool)

(declare-fun Unit!49854 () Unit!49845)

(assert (=> b!3167630 (= e!1973052 Unit!49854)))

(declare-fun b!3167631 () Bool)

(assert (=> b!3167631 (= e!1973051 (= lt!1065069 (get!11261 (getValueByKey!182 (toList!2060 (map!7909 (cache!4218 cache!347))) (tuple2!34581 r!13156 a!2409)))))))

(declare-fun d!869005 () Bool)

(assert (=> d!869005 e!1973051))

(declare-fun c!532784 () Bool)

(assert (=> d!869005 (= c!532784 (contains!6183 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409)))))

(assert (=> d!869005 (= lt!1065069 e!1973050)))

(declare-fun c!532782 () Bool)

(assert (=> d!869005 (= c!532782 (not (contains!6183 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409))))))

(assert (=> d!869005 (valid!3254 (cache!4218 cache!347))))

(assert (=> d!869005 (= (apply!7956 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409)) lt!1065069)))

(assert (= (and d!869005 c!532782) b!3167628))

(assert (= (and d!869005 (not c!532782)) b!3167627))

(assert (= (and b!3167627 c!532783) b!3167626))

(assert (= (and b!3167627 (not c!532783)) b!3167630))

(assert (= (and d!869005 c!532784) b!3167631))

(assert (= (and d!869005 (not c!532784)) b!3167629))

(declare-fun b_lambda!86435 () Bool)

(assert (=> (not b_lambda!86435) (not b!3167628)))

(declare-fun t!234663 () Bool)

(declare-fun tb!155103 () Bool)

(assert (=> (and b!3167289 (= (defaultValue!4245 (cache!4218 cache!347)) (defaultValue!4245 (cache!4218 cache!347))) t!234663) tb!155103))

(assert (=> b!3167628 t!234663))

(declare-fun result!196884 () Bool)

(declare-fun b_and!209427 () Bool)

(assert (= b_and!209425 (and (=> t!234663 result!196884) b_and!209427)))

(declare-fun b_lambda!86437 () Bool)

(assert (=> (not b_lambda!86437) (not b!3167629)))

(assert (=> b!3167629 t!234663))

(declare-fun b_and!209429 () Bool)

(assert (= b_and!209427 (and (=> t!234663 result!196884) b_and!209429)))

(assert (=> d!869005 m!3428513))

(assert (=> d!869005 m!3428564))

(declare-fun m!3428688 () Bool)

(assert (=> b!3167629 m!3428688))

(declare-fun m!3428690 () Bool)

(assert (=> b!3167627 m!3428690))

(declare-fun m!3428692 () Bool)

(assert (=> b!3167627 m!3428692))

(declare-fun m!3428694 () Bool)

(assert (=> b!3167627 m!3428694))

(declare-fun m!3428696 () Bool)

(assert (=> b!3167627 m!3428696))

(declare-fun m!3428698 () Bool)

(assert (=> b!3167627 m!3428698))

(declare-fun m!3428700 () Bool)

(assert (=> b!3167627 m!3428700))

(assert (=> b!3167627 m!3428694))

(declare-fun m!3428702 () Bool)

(assert (=> b!3167627 m!3428702))

(declare-fun m!3428704 () Bool)

(assert (=> b!3167627 m!3428704))

(declare-fun m!3428706 () Bool)

(assert (=> b!3167627 m!3428706))

(declare-fun m!3428708 () Bool)

(assert (=> b!3167627 m!3428708))

(declare-fun m!3428710 () Bool)

(assert (=> b!3167627 m!3428710))

(assert (=> b!3167627 m!3428650))

(declare-fun m!3428712 () Bool)

(assert (=> b!3167627 m!3428712))

(assert (=> b!3167627 m!3428704))

(declare-fun m!3428714 () Bool)

(assert (=> b!3167627 m!3428714))

(assert (=> b!3167627 m!3428696))

(declare-fun m!3428716 () Bool)

(assert (=> b!3167627 m!3428716))

(assert (=> b!3167627 m!3428708))

(assert (=> b!3167627 m!3428708))

(declare-fun m!3428718 () Bool)

(assert (=> b!3167627 m!3428718))

(declare-fun m!3428720 () Bool)

(assert (=> b!3167627 m!3428720))

(assert (=> b!3167627 m!3428650))

(assert (=> b!3167627 m!3428716))

(declare-fun m!3428722 () Bool)

(assert (=> b!3167627 m!3428722))

(assert (=> b!3167627 m!3428630))

(declare-fun m!3428724 () Bool)

(assert (=> b!3167627 m!3428724))

(declare-fun m!3428726 () Bool)

(assert (=> b!3167627 m!3428726))

(assert (=> b!3167627 m!3428714))

(declare-fun m!3428728 () Bool)

(assert (=> b!3167627 m!3428728))

(assert (=> b!3167627 m!3428650))

(declare-fun m!3428730 () Bool)

(assert (=> b!3167627 m!3428730))

(declare-fun m!3428732 () Bool)

(assert (=> b!3167626 m!3428732))

(declare-fun m!3428734 () Bool)

(assert (=> b!3167626 m!3428734))

(declare-fun m!3428736 () Bool)

(assert (=> b!3167626 m!3428736))

(declare-fun m!3428738 () Bool)

(assert (=> b!3167626 m!3428738))

(assert (=> b!3167626 m!3428630))

(assert (=> b!3167626 m!3428714))

(assert (=> b!3167626 m!3428734))

(declare-fun m!3428740 () Bool)

(assert (=> b!3167626 m!3428740))

(assert (=> b!3167628 m!3428688))

(assert (=> b!3167631 m!3428566))

(declare-fun m!3428742 () Bool)

(assert (=> b!3167631 m!3428742))

(assert (=> b!3167631 m!3428742))

(declare-fun m!3428744 () Bool)

(assert (=> b!3167631 m!3428744))

(assert (=> b!3167302 d!869005))

(declare-fun bs!539545 () Bool)

(declare-fun b!3167642 () Bool)

(assert (= bs!539545 (and b!3167642 b!3167484)))

(declare-fun lambda!115900 () Int)

(assert (=> bs!539545 (= lambda!115900 lambda!115884)))

(declare-fun bs!539546 () Bool)

(assert (= bs!539546 (and b!3167642 d!868989)))

(assert (=> bs!539546 (= lambda!115900 lambda!115887)))

(declare-fun e!1973067 () Unit!49845)

(declare-fun lt!1065092 () Unit!49845)

(assert (=> b!3167642 (= e!1973067 lt!1065092)))

(declare-fun lt!1065090 () tuple2!34580)

(assert (=> b!3167642 (= lt!1065090 (tuple2!34581 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!49 (MutableMap!4074 tuple2!34580 Int) Unit!49845)

(assert (=> b!3167642 (= lt!1065092 (lemmaForallPairsThenForLookup!49 (cache!4218 cache!347) lt!1065090 lambda!115900))))

(declare-fun lt!1065089 () tuple2!34582)

(assert (=> b!3167642 (= lt!1065089 (tuple2!34583 lt!1065090 (apply!7956 (cache!4218 cache!347) lt!1065090)))))

(declare-fun lt!1065094 () Regex!9747)

(assert (=> b!3167642 (= lt!1065094 (apply!7956 (cache!4218 cache!347) lt!1065090))))

(declare-fun res!1288291 () Bool)

(assert (=> b!3167642 (= res!1288291 (validRegex!4466 (_1!20422 lt!1065090)))))

(declare-fun e!1973066 () Bool)

(assert (=> b!3167642 (=> (not res!1288291) (not e!1973066))))

(assert (=> b!3167642 e!1973066))

(declare-fun d!869007 () Bool)

(declare-fun e!1973065 () Bool)

(assert (=> d!869007 e!1973065))

(declare-fun res!1288292 () Bool)

(assert (=> d!869007 (=> res!1288292 e!1973065)))

(assert (=> d!869007 (= res!1288292 (not (contains!6183 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409))))))

(declare-fun lt!1065095 () Unit!49845)

(assert (=> d!869007 (= lt!1065095 e!1973067)))

(declare-fun c!532788 () Bool)

(assert (=> d!869007 (= c!532788 (contains!6183 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409)))))

(assert (=> d!869007 (validCacheMap!61 (cache!4218 cache!347))))

(assert (=> d!869007 (= (lemmaIfInCacheThenValid!58 cache!347 r!13156 a!2409) lt!1065095)))

(declare-fun b!3167643 () Bool)

(declare-fun Unit!49855 () Unit!49845)

(assert (=> b!3167643 (= e!1973067 Unit!49855)))

(declare-fun b!3167644 () Bool)

(declare-fun lt!1065091 () tuple2!34580)

(assert (=> b!3167644 (= lt!1065091 lt!1065090)))

(declare-fun lt!1065093 () Regex!9747)

(assert (=> b!3167644 (= lt!1065093 (apply!7956 (cache!4218 cache!347) lt!1065090))))

(declare-fun lt!1065088 () Regex!9747)

(assert (=> b!3167644 (= lt!1065088 (apply!7956 (cache!4218 cache!347) lt!1065090))))

(assert (=> b!3167644 (= e!1973066 (= (apply!7956 (cache!4218 cache!347) lt!1065090) (derivativeStep!2894 (_1!20422 lt!1065090) (_2!20422 lt!1065090))))))

(declare-fun b!3167645 () Bool)

(assert (=> b!3167645 (= e!1973065 (= (derivativeStep!2894 r!13156 a!2409) (apply!7956 (cache!4218 cache!347) (tuple2!34581 r!13156 a!2409))))))

(assert (= (and d!869007 c!532788) b!3167642))

(assert (= (and d!869007 (not c!532788)) b!3167643))

(assert (= (and b!3167642 res!1288291) b!3167644))

(assert (= (and d!869007 (not res!1288292)) b!3167645))

(declare-fun m!3428746 () Bool)

(assert (=> b!3167642 m!3428746))

(declare-fun m!3428748 () Bool)

(assert (=> b!3167642 m!3428748))

(declare-fun m!3428750 () Bool)

(assert (=> b!3167642 m!3428750))

(assert (=> d!869007 m!3428513))

(assert (=> d!869007 m!3428507))

(assert (=> b!3167644 m!3428748))

(declare-fun m!3428752 () Bool)

(assert (=> b!3167644 m!3428752))

(assert (=> b!3167645 m!3428521))

(assert (=> b!3167645 m!3428515))

(assert (=> b!3167302 d!869007))

(declare-fun b!3167646 () Bool)

(declare-fun c!532790 () Bool)

(assert (=> b!3167646 (= c!532790 (nullable!3348 (regOne!20006 (regOne!20006 r!13156))))))

(declare-fun e!1973072 () Regex!9747)

(declare-fun e!1973071 () Regex!9747)

(assert (=> b!3167646 (= e!1973072 e!1973071)))

(declare-fun b!3167647 () Bool)

(declare-fun e!1973069 () Regex!9747)

(declare-fun e!1973070 () Regex!9747)

(assert (=> b!3167647 (= e!1973069 e!1973070)))

(declare-fun c!532791 () Bool)

(assert (=> b!3167647 (= c!532791 ((_ is ElementMatch!9747) (regOne!20006 r!13156)))))

(declare-fun b!3167648 () Bool)

(declare-fun e!1973068 () Regex!9747)

(declare-fun call!229803 () Regex!9747)

(declare-fun call!229805 () Regex!9747)

(assert (=> b!3167648 (= e!1973068 (Union!9747 call!229803 call!229805))))

(declare-fun bm!229798 () Bool)

(declare-fun call!229806 () Regex!9747)

(assert (=> bm!229798 (= call!229806 call!229803)))

(declare-fun d!869009 () Bool)

(declare-fun lt!1065096 () Regex!9747)

(assert (=> d!869009 (validRegex!4466 lt!1065096)))

(assert (=> d!869009 (= lt!1065096 e!1973069)))

(declare-fun c!532792 () Bool)

(assert (=> d!869009 (= c!532792 (or ((_ is EmptyExpr!9747) (regOne!20006 r!13156)) ((_ is EmptyLang!9747) (regOne!20006 r!13156))))))

(assert (=> d!869009 (validRegex!4466 (regOne!20006 r!13156))))

(assert (=> d!869009 (= (derivativeStep!2894 (regOne!20006 r!13156) a!2409) lt!1065096)))

(declare-fun b!3167649 () Bool)

(declare-fun call!229804 () Regex!9747)

(assert (=> b!3167649 (= e!1973071 (Union!9747 (Concat!15068 call!229804 (regTwo!20006 (regOne!20006 r!13156))) call!229805))))

(declare-fun b!3167650 () Bool)

(assert (=> b!3167650 (= e!1973072 (Concat!15068 call!229806 (regOne!20006 r!13156)))))

(declare-fun b!3167651 () Bool)

(declare-fun c!532789 () Bool)

(assert (=> b!3167651 (= c!532789 ((_ is Union!9747) (regOne!20006 r!13156)))))

(assert (=> b!3167651 (= e!1973070 e!1973068)))

(declare-fun bm!229799 () Bool)

(assert (=> bm!229799 (= call!229805 (derivativeStep!2894 (ite c!532789 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))) a!2409))))

(declare-fun b!3167652 () Bool)

(assert (=> b!3167652 (= e!1973071 (Union!9747 (Concat!15068 call!229804 (regTwo!20006 (regOne!20006 r!13156))) EmptyLang!9747))))

(declare-fun bm!229800 () Bool)

(declare-fun c!532793 () Bool)

(assert (=> bm!229800 (= call!229803 (derivativeStep!2894 (ite c!532789 (regOne!20007 (regOne!20006 r!13156)) (ite c!532793 (reg!10076 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))) a!2409))))

(declare-fun bm!229801 () Bool)

(assert (=> bm!229801 (= call!229804 call!229806)))

(declare-fun b!3167653 () Bool)

(assert (=> b!3167653 (= e!1973068 e!1973072)))

(assert (=> b!3167653 (= c!532793 ((_ is Star!9747) (regOne!20006 r!13156)))))

(declare-fun b!3167654 () Bool)

(assert (=> b!3167654 (= e!1973069 EmptyLang!9747)))

(declare-fun b!3167655 () Bool)

(assert (=> b!3167655 (= e!1973070 (ite (= a!2409 (c!532667 (regOne!20006 r!13156))) EmptyExpr!9747 EmptyLang!9747))))

(assert (= (and d!869009 c!532792) b!3167654))

(assert (= (and d!869009 (not c!532792)) b!3167647))

(assert (= (and b!3167647 c!532791) b!3167655))

(assert (= (and b!3167647 (not c!532791)) b!3167651))

(assert (= (and b!3167651 c!532789) b!3167648))

(assert (= (and b!3167651 (not c!532789)) b!3167653))

(assert (= (and b!3167653 c!532793) b!3167650))

(assert (= (and b!3167653 (not c!532793)) b!3167646))

(assert (= (and b!3167646 c!532790) b!3167649))

(assert (= (and b!3167646 (not c!532790)) b!3167652))

(assert (= (or b!3167649 b!3167652) bm!229801))

(assert (= (or b!3167650 bm!229801) bm!229798))

(assert (= (or b!3167648 b!3167649) bm!229799))

(assert (= (or b!3167648 bm!229798) bm!229800))

(assert (=> b!3167646 m!3428531))

(declare-fun m!3428754 () Bool)

(assert (=> d!869009 m!3428754))

(assert (=> d!869009 m!3428537))

(declare-fun m!3428756 () Bool)

(assert (=> bm!229799 m!3428756))

(declare-fun m!3428758 () Bool)

(assert (=> bm!229800 m!3428758))

(assert (=> d!868965 d!869009))

(declare-fun d!869011 () Bool)

(declare-fun e!1973074 () Bool)

(assert (=> d!869011 e!1973074))

(declare-fun res!1288293 () Bool)

(assert (=> d!869011 (=> res!1288293 e!1973074)))

(declare-fun lt!1065098 () Option!6912)

(assert (=> d!869011 (= res!1288293 (isEmpty!19760 lt!1065098))))

(declare-fun e!1973073 () Option!6912)

(assert (=> d!869011 (= lt!1065098 e!1973073)))

(declare-fun c!532794 () Bool)

(assert (=> d!869011 (= c!532794 (contains!6183 (cache!4218 cache!347) (tuple2!34581 (regOne!20006 r!13156) a!2409)))))

(assert (=> d!869011 (validRegex!4466 (regOne!20006 r!13156))))

(assert (=> d!869011 (= (get!11260 cache!347 (regOne!20006 r!13156) a!2409) lt!1065098)))

(declare-fun b!3167656 () Bool)

(assert (=> b!3167656 (= e!1973073 (Some!6911 (apply!7956 (cache!4218 cache!347) (tuple2!34581 (regOne!20006 r!13156) a!2409))))))

(declare-fun lt!1065097 () Unit!49845)

(assert (=> b!3167656 (= lt!1065097 (lemmaIfInCacheThenValid!58 cache!347 (regOne!20006 r!13156) a!2409))))

(declare-fun b!3167657 () Bool)

(assert (=> b!3167657 (= e!1973073 None!6911)))

(declare-fun b!3167658 () Bool)

(assert (=> b!3167658 (= e!1973074 (= (get!11261 lt!1065098) (derivativeStep!2894 (regOne!20006 r!13156) a!2409)))))

(assert (= (and d!869011 c!532794) b!3167656))

(assert (= (and d!869011 (not c!532794)) b!3167657))

(assert (= (and d!869011 (not res!1288293)) b!3167658))

(declare-fun m!3428760 () Bool)

(assert (=> d!869011 m!3428760))

(declare-fun m!3428762 () Bool)

(assert (=> d!869011 m!3428762))

(assert (=> d!869011 m!3428537))

(declare-fun m!3428764 () Bool)

(assert (=> b!3167656 m!3428764))

(declare-fun m!3428766 () Bool)

(assert (=> b!3167656 m!3428766))

(declare-fun m!3428768 () Bool)

(assert (=> b!3167658 m!3428768))

(assert (=> b!3167658 m!3428533))

(assert (=> d!868965 d!869011))

(declare-fun b!3167659 () Bool)

(declare-fun e!1973077 () Bool)

(declare-fun e!1973081 () Bool)

(assert (=> b!3167659 (= e!1973077 e!1973081)))

(declare-fun res!1288297 () Bool)

(assert (=> b!3167659 (= res!1288297 (not (nullable!3348 (reg!10076 (regOne!20006 r!13156)))))))

(assert (=> b!3167659 (=> (not res!1288297) (not e!1973081))))

(declare-fun b!3167660 () Bool)

(declare-fun call!229809 () Bool)

(assert (=> b!3167660 (= e!1973081 call!229809)))

(declare-fun b!3167661 () Bool)

(declare-fun e!1973080 () Bool)

(assert (=> b!3167661 (= e!1973080 e!1973077)))

(declare-fun c!532796 () Bool)

(assert (=> b!3167661 (= c!532796 ((_ is Star!9747) (regOne!20006 r!13156)))))

(declare-fun bm!229802 () Bool)

(declare-fun call!229807 () Bool)

(declare-fun c!532795 () Bool)

(assert (=> bm!229802 (= call!229807 (validRegex!4466 (ite c!532795 (regOne!20007 (regOne!20006 r!13156)) (regOne!20006 (regOne!20006 r!13156)))))))

(declare-fun bm!229803 () Bool)

(declare-fun call!229808 () Bool)

(assert (=> bm!229803 (= call!229808 call!229809)))

(declare-fun b!3167662 () Bool)

(declare-fun e!1973075 () Bool)

(assert (=> b!3167662 (= e!1973077 e!1973075)))

(assert (=> b!3167662 (= c!532795 ((_ is Union!9747) (regOne!20006 r!13156)))))

(declare-fun bm!229804 () Bool)

(assert (=> bm!229804 (= call!229809 (validRegex!4466 (ite c!532796 (reg!10076 (regOne!20006 r!13156)) (ite c!532795 (regTwo!20007 (regOne!20006 r!13156)) (regTwo!20006 (regOne!20006 r!13156))))))))

(declare-fun b!3167664 () Bool)

(declare-fun e!1973079 () Bool)

(declare-fun e!1973078 () Bool)

(assert (=> b!3167664 (= e!1973079 e!1973078)))

(declare-fun res!1288295 () Bool)

(assert (=> b!3167664 (=> (not res!1288295) (not e!1973078))))

(assert (=> b!3167664 (= res!1288295 call!229807)))

(declare-fun b!3167665 () Bool)

(declare-fun e!1973076 () Bool)

(assert (=> b!3167665 (= e!1973076 call!229808)))

(declare-fun b!3167666 () Bool)

(declare-fun res!1288296 () Bool)

(assert (=> b!3167666 (=> (not res!1288296) (not e!1973076))))

(assert (=> b!3167666 (= res!1288296 call!229807)))

(assert (=> b!3167666 (= e!1973075 e!1973076)))

(declare-fun b!3167667 () Bool)

(declare-fun res!1288298 () Bool)

(assert (=> b!3167667 (=> res!1288298 e!1973079)))

(assert (=> b!3167667 (= res!1288298 (not ((_ is Concat!15068) (regOne!20006 r!13156))))))

(assert (=> b!3167667 (= e!1973075 e!1973079)))

(declare-fun b!3167663 () Bool)

(assert (=> b!3167663 (= e!1973078 call!229808)))

(declare-fun d!869013 () Bool)

(declare-fun res!1288294 () Bool)

(assert (=> d!869013 (=> res!1288294 e!1973080)))

(assert (=> d!869013 (= res!1288294 ((_ is ElementMatch!9747) (regOne!20006 r!13156)))))

(assert (=> d!869013 (= (validRegex!4466 (regOne!20006 r!13156)) e!1973080)))

(assert (= (and d!869013 (not res!1288294)) b!3167661))

(assert (= (and b!3167661 c!532796) b!3167659))

(assert (= (and b!3167661 (not c!532796)) b!3167662))

(assert (= (and b!3167659 res!1288297) b!3167660))

(assert (= (and b!3167662 c!532795) b!3167666))

(assert (= (and b!3167662 (not c!532795)) b!3167667))

(assert (= (and b!3167666 res!1288296) b!3167665))

(assert (= (and b!3167667 (not res!1288298)) b!3167664))

(assert (= (and b!3167664 res!1288295) b!3167663))

(assert (= (or b!3167666 b!3167664) bm!229802))

(assert (= (or b!3167665 b!3167663) bm!229803))

(assert (= (or b!3167660 bm!229803) bm!229804))

(declare-fun m!3428770 () Bool)

(assert (=> b!3167659 m!3428770))

(declare-fun m!3428772 () Bool)

(assert (=> bm!229802 m!3428772))

(declare-fun m!3428774 () Bool)

(assert (=> bm!229804 m!3428774))

(assert (=> d!868965 d!869013))

(declare-fun b!3167668 () Bool)

(declare-fun e!1973084 () Bool)

(declare-fun e!1973088 () Bool)

(assert (=> b!3167668 (= e!1973084 e!1973088)))

(declare-fun res!1288302 () Bool)

(assert (=> b!3167668 (= res!1288302 (not (nullable!3348 (reg!10076 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))))))))

(assert (=> b!3167668 (=> (not res!1288302) (not e!1973088))))

(declare-fun b!3167669 () Bool)

(declare-fun call!229812 () Bool)

(assert (=> b!3167669 (= e!1973088 call!229812)))

(declare-fun b!3167670 () Bool)

(declare-fun e!1973087 () Bool)

(assert (=> b!3167670 (= e!1973087 e!1973084)))

(declare-fun c!532798 () Bool)

(assert (=> b!3167670 (= c!532798 ((_ is Star!9747) (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))))))

(declare-fun call!229810 () Bool)

(declare-fun bm!229805 () Bool)

(declare-fun c!532797 () Bool)

(assert (=> bm!229805 (= call!229810 (validRegex!4466 (ite c!532797 (regOne!20007 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))) (regOne!20006 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))))))))

(declare-fun bm!229806 () Bool)

(declare-fun call!229811 () Bool)

(assert (=> bm!229806 (= call!229811 call!229812)))

(declare-fun b!3167671 () Bool)

(declare-fun e!1973082 () Bool)

(assert (=> b!3167671 (= e!1973084 e!1973082)))

(assert (=> b!3167671 (= c!532797 ((_ is Union!9747) (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))))))

(declare-fun bm!229807 () Bool)

(assert (=> bm!229807 (= call!229812 (validRegex!4466 (ite c!532798 (reg!10076 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))) (ite c!532797 (regTwo!20007 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))) (regTwo!20006 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156)))))))))

(declare-fun b!3167673 () Bool)

(declare-fun e!1973086 () Bool)

(declare-fun e!1973085 () Bool)

(assert (=> b!3167673 (= e!1973086 e!1973085)))

(declare-fun res!1288300 () Bool)

(assert (=> b!3167673 (=> (not res!1288300) (not e!1973085))))

(assert (=> b!3167673 (= res!1288300 call!229810)))

(declare-fun b!3167674 () Bool)

(declare-fun e!1973083 () Bool)

(assert (=> b!3167674 (= e!1973083 call!229811)))

(declare-fun b!3167675 () Bool)

(declare-fun res!1288301 () Bool)

(assert (=> b!3167675 (=> (not res!1288301) (not e!1973083))))

(assert (=> b!3167675 (= res!1288301 call!229810)))

(assert (=> b!3167675 (= e!1973082 e!1973083)))

(declare-fun b!3167676 () Bool)

(declare-fun res!1288303 () Bool)

(assert (=> b!3167676 (=> res!1288303 e!1973086)))

(assert (=> b!3167676 (= res!1288303 (not ((_ is Concat!15068) (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156)))))))

(assert (=> b!3167676 (= e!1973082 e!1973086)))

(declare-fun b!3167672 () Bool)

(assert (=> b!3167672 (= e!1973085 call!229811)))

(declare-fun d!869015 () Bool)

(declare-fun res!1288299 () Bool)

(assert (=> d!869015 (=> res!1288299 e!1973087)))

(assert (=> d!869015 (= res!1288299 ((_ is ElementMatch!9747) (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))))))

(assert (=> d!869015 (= (validRegex!4466 (ite c!532714 (regOne!20007 r!13156) (regOne!20006 r!13156))) e!1973087)))

(assert (= (and d!869015 (not res!1288299)) b!3167670))

(assert (= (and b!3167670 c!532798) b!3167668))

(assert (= (and b!3167670 (not c!532798)) b!3167671))

(assert (= (and b!3167668 res!1288302) b!3167669))

(assert (= (and b!3167671 c!532797) b!3167675))

(assert (= (and b!3167671 (not c!532797)) b!3167676))

(assert (= (and b!3167675 res!1288301) b!3167674))

(assert (= (and b!3167676 (not res!1288303)) b!3167673))

(assert (= (and b!3167673 res!1288300) b!3167672))

(assert (= (or b!3167675 b!3167673) bm!229805))

(assert (= (or b!3167674 b!3167672) bm!229806))

(assert (= (or b!3167669 bm!229806) bm!229807))

(declare-fun m!3428776 () Bool)

(assert (=> b!3167668 m!3428776))

(declare-fun m!3428778 () Bool)

(assert (=> bm!229805 m!3428778))

(declare-fun m!3428780 () Bool)

(assert (=> bm!229807 m!3428780))

(assert (=> bm!229739 d!869015))

(declare-fun call!229813 () Int)

(declare-fun bm!229808 () Bool)

(declare-fun c!532803 () Bool)

(declare-fun c!532800 () Bool)

(assert (=> bm!229808 (= call!229813 (RegexPrimitiveSize!133 (ite c!532800 (regTwo!20006 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))) (ite c!532803 (reg!10076 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))) (regTwo!20007 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156)))))))))

(declare-fun b!3167677 () Bool)

(declare-fun e!1973091 () Int)

(declare-fun e!1973093 () Int)

(assert (=> b!3167677 (= e!1973091 e!1973093)))

(assert (=> b!3167677 (= c!532800 ((_ is Concat!15068) (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))

(declare-fun b!3167678 () Bool)

(declare-fun e!1973090 () Int)

(declare-fun call!229815 () Int)

(assert (=> b!3167678 (= e!1973090 (+ 1 call!229815))))

(declare-fun b!3167679 () Bool)

(declare-fun call!229814 () Int)

(assert (=> b!3167679 (= e!1973093 (+ 1 call!229814 call!229813))))

(declare-fun b!3167680 () Bool)

(assert (=> b!3167680 (= e!1973091 1)))

(declare-fun b!3167681 () Bool)

(declare-fun e!1973089 () Int)

(assert (=> b!3167681 (= e!1973089 e!1973090)))

(assert (=> b!3167681 (= c!532803 ((_ is Star!9747) (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))

(declare-fun b!3167682 () Bool)

(declare-fun e!1973092 () Int)

(assert (=> b!3167682 (= e!1973092 (+ 1 call!229814 call!229815))))

(declare-fun bm!229810 () Bool)

(assert (=> bm!229810 (= call!229815 call!229813)))

(declare-fun b!3167683 () Bool)

(assert (=> b!3167683 (= e!1973092 0)))

(declare-fun b!3167684 () Bool)

(declare-fun c!532801 () Bool)

(assert (=> b!3167684 (= c!532801 ((_ is EmptyExpr!9747) (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))

(assert (=> b!3167684 (= e!1973093 e!1973089)))

(declare-fun b!3167685 () Bool)

(declare-fun c!532799 () Bool)

(assert (=> b!3167685 (= c!532799 ((_ is EmptyLang!9747) (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))

(assert (=> b!3167685 (= e!1973090 e!1973092)))

(declare-fun b!3167686 () Bool)

(assert (=> b!3167686 (= e!1973089 0)))

(declare-fun d!869017 () Bool)

(declare-fun lt!1065099 () Int)

(assert (=> d!869017 (>= lt!1065099 0)))

(assert (=> d!869017 (= lt!1065099 e!1973091)))

(declare-fun c!532802 () Bool)

(assert (=> d!869017 (= c!532802 ((_ is ElementMatch!9747) (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))

(assert (=> d!869017 (= (RegexPrimitiveSize!133 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))) lt!1065099)))

(declare-fun bm!229809 () Bool)

(assert (=> bm!229809 (= call!229814 (RegexPrimitiveSize!133 (ite c!532800 (regOne!20006 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))) (regOne!20007 (ite c!532688 (regOne!20006 r!13156) (regOne!20007 r!13156))))))))

(assert (= (and d!869017 c!532802) b!3167680))

(assert (= (and d!869017 (not c!532802)) b!3167677))

(assert (= (and b!3167677 c!532800) b!3167679))

(assert (= (and b!3167677 (not c!532800)) b!3167684))

(assert (= (and b!3167684 c!532801) b!3167686))

(assert (= (and b!3167684 (not c!532801)) b!3167681))

(assert (= (and b!3167681 c!532803) b!3167678))

(assert (= (and b!3167681 (not c!532803)) b!3167685))

(assert (= (and b!3167685 c!532799) b!3167683))

(assert (= (and b!3167685 (not c!532799)) b!3167682))

(assert (= (or b!3167678 b!3167682) bm!229810))

(assert (= (or b!3167679 bm!229810) bm!229808))

(assert (= (or b!3167679 b!3167682) bm!229809))

(declare-fun m!3428782 () Bool)

(assert (=> bm!229808 m!3428782))

(declare-fun m!3428784 () Bool)

(assert (=> bm!229809 m!3428784))

(assert (=> bm!229719 d!869017))

(assert (=> d!868955 d!868981))

(declare-fun b!3167690 () Bool)

(declare-fun e!1973094 () Bool)

(declare-fun tp!998556 () Bool)

(declare-fun tp!998554 () Bool)

(assert (=> b!3167690 (= e!1973094 (and tp!998556 tp!998554))))

(declare-fun b!3167688 () Bool)

(declare-fun tp!998555 () Bool)

(declare-fun tp!998553 () Bool)

(assert (=> b!3167688 (= e!1973094 (and tp!998555 tp!998553))))

(assert (=> b!3167443 (= tp!998532 e!1973094)))

(declare-fun b!3167689 () Bool)

(declare-fun tp!998552 () Bool)

(assert (=> b!3167689 (= e!1973094 tp!998552)))

(declare-fun b!3167687 () Bool)

(assert (=> b!3167687 (= e!1973094 tp_is_empty!17057)))

(assert (= (and b!3167443 ((_ is ElementMatch!9747) (_1!20422 (_1!20423 (h!40878 mapDefault!18906))))) b!3167687))

(assert (= (and b!3167443 ((_ is Concat!15068) (_1!20422 (_1!20423 (h!40878 mapDefault!18906))))) b!3167688))

(assert (= (and b!3167443 ((_ is Star!9747) (_1!20422 (_1!20423 (h!40878 mapDefault!18906))))) b!3167689))

(assert (= (and b!3167443 ((_ is Union!9747) (_1!20422 (_1!20423 (h!40878 mapDefault!18906))))) b!3167690))

(declare-fun b!3167694 () Bool)

(declare-fun e!1973095 () Bool)

(declare-fun tp!998561 () Bool)

(declare-fun tp!998559 () Bool)

(assert (=> b!3167694 (= e!1973095 (and tp!998561 tp!998559))))

(declare-fun b!3167692 () Bool)

(declare-fun tp!998560 () Bool)

(declare-fun tp!998558 () Bool)

(assert (=> b!3167692 (= e!1973095 (and tp!998560 tp!998558))))

(assert (=> b!3167443 (= tp!998531 e!1973095)))

(declare-fun b!3167693 () Bool)

(declare-fun tp!998557 () Bool)

(assert (=> b!3167693 (= e!1973095 tp!998557)))

(declare-fun b!3167691 () Bool)

(assert (=> b!3167691 (= e!1973095 tp_is_empty!17057)))

(assert (= (and b!3167443 ((_ is ElementMatch!9747) (_2!20423 (h!40878 mapDefault!18906)))) b!3167691))

(assert (= (and b!3167443 ((_ is Concat!15068) (_2!20423 (h!40878 mapDefault!18906)))) b!3167692))

(assert (= (and b!3167443 ((_ is Star!9747) (_2!20423 (h!40878 mapDefault!18906)))) b!3167693))

(assert (= (and b!3167443 ((_ is Union!9747) (_2!20423 (h!40878 mapDefault!18906)))) b!3167694))

(declare-fun tp!998564 () Bool)

(declare-fun tp!998563 () Bool)

(declare-fun tp!998562 () Bool)

(declare-fun b!3167695 () Bool)

(declare-fun e!1973096 () Bool)

(assert (=> b!3167695 (= e!1973096 (and tp!998562 tp_is_empty!17057 tp!998563 tp!998564))))

(assert (=> b!3167443 (= tp!998529 e!1973096)))

(assert (= (and b!3167443 ((_ is Cons!35458) (t!234661 mapDefault!18906))) b!3167695))

(declare-fun b!3167699 () Bool)

(declare-fun e!1973097 () Bool)

(declare-fun tp!998569 () Bool)

(declare-fun tp!998567 () Bool)

(assert (=> b!3167699 (= e!1973097 (and tp!998569 tp!998567))))

(declare-fun b!3167697 () Bool)

(declare-fun tp!998568 () Bool)

(declare-fun tp!998566 () Bool)

(assert (=> b!3167697 (= e!1973097 (and tp!998568 tp!998566))))

(assert (=> b!3167435 (= tp!998510 e!1973097)))

(declare-fun b!3167698 () Bool)

(declare-fun tp!998565 () Bool)

(assert (=> b!3167698 (= e!1973097 tp!998565)))

(declare-fun b!3167696 () Bool)

(assert (=> b!3167696 (= e!1973097 tp_is_empty!17057)))

(assert (= (and b!3167435 ((_ is ElementMatch!9747) (_1!20422 (_1!20423 (h!40878 mapDefault!18903))))) b!3167696))

(assert (= (and b!3167435 ((_ is Concat!15068) (_1!20422 (_1!20423 (h!40878 mapDefault!18903))))) b!3167697))

(assert (= (and b!3167435 ((_ is Star!9747) (_1!20422 (_1!20423 (h!40878 mapDefault!18903))))) b!3167698))

(assert (= (and b!3167435 ((_ is Union!9747) (_1!20422 (_1!20423 (h!40878 mapDefault!18903))))) b!3167699))

(declare-fun b!3167703 () Bool)

(declare-fun e!1973098 () Bool)

(declare-fun tp!998574 () Bool)

(declare-fun tp!998572 () Bool)

(assert (=> b!3167703 (= e!1973098 (and tp!998574 tp!998572))))

(declare-fun b!3167701 () Bool)

(declare-fun tp!998573 () Bool)

(declare-fun tp!998571 () Bool)

(assert (=> b!3167701 (= e!1973098 (and tp!998573 tp!998571))))

(assert (=> b!3167435 (= tp!998511 e!1973098)))

(declare-fun b!3167702 () Bool)

(declare-fun tp!998570 () Bool)

(assert (=> b!3167702 (= e!1973098 tp!998570)))

(declare-fun b!3167700 () Bool)

(assert (=> b!3167700 (= e!1973098 tp_is_empty!17057)))

(assert (= (and b!3167435 ((_ is ElementMatch!9747) (_2!20423 (h!40878 mapDefault!18903)))) b!3167700))

(assert (= (and b!3167435 ((_ is Concat!15068) (_2!20423 (h!40878 mapDefault!18903)))) b!3167701))

(assert (= (and b!3167435 ((_ is Star!9747) (_2!20423 (h!40878 mapDefault!18903)))) b!3167702))

(assert (= (and b!3167435 ((_ is Union!9747) (_2!20423 (h!40878 mapDefault!18903)))) b!3167703))

(declare-fun tp!998575 () Bool)

(declare-fun e!1973099 () Bool)

(declare-fun b!3167704 () Bool)

(declare-fun tp!998577 () Bool)

(declare-fun tp!998576 () Bool)

(assert (=> b!3167704 (= e!1973099 (and tp!998575 tp_is_empty!17057 tp!998576 tp!998577))))

(assert (=> b!3167435 (= tp!998512 e!1973099)))

(assert (= (and b!3167435 ((_ is Cons!35458) (t!234661 mapDefault!18903))) b!3167704))

(declare-fun b!3167708 () Bool)

(declare-fun e!1973100 () Bool)

(declare-fun tp!998582 () Bool)

(declare-fun tp!998580 () Bool)

(assert (=> b!3167708 (= e!1973100 (and tp!998582 tp!998580))))

(declare-fun b!3167706 () Bool)

(declare-fun tp!998581 () Bool)

(declare-fun tp!998579 () Bool)

(assert (=> b!3167706 (= e!1973100 (and tp!998581 tp!998579))))

(assert (=> b!3167442 (= tp!998528 e!1973100)))

(declare-fun b!3167707 () Bool)

(declare-fun tp!998578 () Bool)

(assert (=> b!3167707 (= e!1973100 tp!998578)))

(declare-fun b!3167705 () Bool)

(assert (=> b!3167705 (= e!1973100 tp_is_empty!17057)))

(assert (= (and b!3167442 ((_ is ElementMatch!9747) (_1!20422 (_1!20423 (h!40878 mapValue!18906))))) b!3167705))

(assert (= (and b!3167442 ((_ is Concat!15068) (_1!20422 (_1!20423 (h!40878 mapValue!18906))))) b!3167706))

(assert (= (and b!3167442 ((_ is Star!9747) (_1!20422 (_1!20423 (h!40878 mapValue!18906))))) b!3167707))

(assert (= (and b!3167442 ((_ is Union!9747) (_1!20422 (_1!20423 (h!40878 mapValue!18906))))) b!3167708))

(declare-fun b!3167712 () Bool)

(declare-fun e!1973101 () Bool)

(declare-fun tp!998587 () Bool)

(declare-fun tp!998585 () Bool)

(assert (=> b!3167712 (= e!1973101 (and tp!998587 tp!998585))))

(declare-fun b!3167710 () Bool)

(declare-fun tp!998586 () Bool)

(declare-fun tp!998584 () Bool)

(assert (=> b!3167710 (= e!1973101 (and tp!998586 tp!998584))))

(assert (=> b!3167442 (= tp!998530 e!1973101)))

(declare-fun b!3167711 () Bool)

(declare-fun tp!998583 () Bool)

(assert (=> b!3167711 (= e!1973101 tp!998583)))

(declare-fun b!3167709 () Bool)

(assert (=> b!3167709 (= e!1973101 tp_is_empty!17057)))

(assert (= (and b!3167442 ((_ is ElementMatch!9747) (_2!20423 (h!40878 mapValue!18906)))) b!3167709))

(assert (= (and b!3167442 ((_ is Concat!15068) (_2!20423 (h!40878 mapValue!18906)))) b!3167710))

(assert (= (and b!3167442 ((_ is Star!9747) (_2!20423 (h!40878 mapValue!18906)))) b!3167711))

(assert (= (and b!3167442 ((_ is Union!9747) (_2!20423 (h!40878 mapValue!18906)))) b!3167712))

(declare-fun b!3167713 () Bool)

(declare-fun e!1973102 () Bool)

(declare-fun tp!998588 () Bool)

(declare-fun tp!998590 () Bool)

(declare-fun tp!998589 () Bool)

(assert (=> b!3167713 (= e!1973102 (and tp!998588 tp_is_empty!17057 tp!998589 tp!998590))))

(assert (=> b!3167442 (= tp!998533 e!1973102)))

(assert (= (and b!3167442 ((_ is Cons!35458) (t!234661 mapValue!18906))) b!3167713))

(declare-fun tp!998597 () Bool)

(declare-fun tp!998592 () Bool)

(declare-fun tp!998594 () Bool)

(declare-fun e!1973104 () Bool)

(declare-fun b!3167714 () Bool)

(assert (=> b!3167714 (= e!1973104 (and tp!998592 tp_is_empty!17057 tp!998594 tp!998597))))

(declare-fun mapNonEmpty!18907 () Bool)

(declare-fun mapRes!18907 () Bool)

(declare-fun tp!998591 () Bool)

(assert (=> mapNonEmpty!18907 (= mapRes!18907 (and tp!998591 e!1973104))))

(declare-fun mapRest!18907 () (Array (_ BitVec 32) List!35582))

(declare-fun mapValue!18907 () List!35582)

(declare-fun mapKey!18907 () (_ BitVec 32))

(assert (=> mapNonEmpty!18907 (= mapRest!18906 (store mapRest!18907 mapKey!18907 mapValue!18907))))

(declare-fun b!3167715 () Bool)

(declare-fun e!1973103 () Bool)

(declare-fun tp!998593 () Bool)

(declare-fun tp!998596 () Bool)

(declare-fun tp!998595 () Bool)

(assert (=> b!3167715 (= e!1973103 (and tp!998596 tp_is_empty!17057 tp!998595 tp!998593))))

(declare-fun condMapEmpty!18907 () Bool)

(declare-fun mapDefault!18907 () List!35582)

(assert (=> mapNonEmpty!18906 (= condMapEmpty!18907 (= mapRest!18906 ((as const (Array (_ BitVec 32) List!35582)) mapDefault!18907)))))

(assert (=> mapNonEmpty!18906 (= tp!998527 (and e!1973103 mapRes!18907))))

(declare-fun mapIsEmpty!18907 () Bool)

(assert (=> mapIsEmpty!18907 mapRes!18907))

(assert (= (and mapNonEmpty!18906 condMapEmpty!18907) mapIsEmpty!18907))

(assert (= (and mapNonEmpty!18906 (not condMapEmpty!18907)) mapNonEmpty!18907))

(assert (= (and mapNonEmpty!18907 ((_ is Cons!35458) mapValue!18907)) b!3167714))

(assert (= (and mapNonEmpty!18906 ((_ is Cons!35458) mapDefault!18907)) b!3167715))

(declare-fun m!3428786 () Bool)

(assert (=> mapNonEmpty!18907 m!3428786))

(declare-fun b!3167719 () Bool)

(declare-fun e!1973105 () Bool)

(declare-fun tp!998602 () Bool)

(declare-fun tp!998600 () Bool)

(assert (=> b!3167719 (= e!1973105 (and tp!998602 tp!998600))))

(declare-fun b!3167717 () Bool)

(declare-fun tp!998601 () Bool)

(declare-fun tp!998599 () Bool)

(assert (=> b!3167717 (= e!1973105 (and tp!998601 tp!998599))))

(assert (=> b!3167434 (= tp!998509 e!1973105)))

(declare-fun b!3167718 () Bool)

(declare-fun tp!998598 () Bool)

(assert (=> b!3167718 (= e!1973105 tp!998598)))

(declare-fun b!3167716 () Bool)

(assert (=> b!3167716 (= e!1973105 tp_is_empty!17057)))

(assert (= (and b!3167434 ((_ is ElementMatch!9747) (regOne!20007 (regTwo!20007 r!13156)))) b!3167716))

(assert (= (and b!3167434 ((_ is Concat!15068) (regOne!20007 (regTwo!20007 r!13156)))) b!3167717))

(assert (= (and b!3167434 ((_ is Star!9747) (regOne!20007 (regTwo!20007 r!13156)))) b!3167718))

(assert (= (and b!3167434 ((_ is Union!9747) (regOne!20007 (regTwo!20007 r!13156)))) b!3167719))

(declare-fun b!3167723 () Bool)

(declare-fun e!1973106 () Bool)

(declare-fun tp!998607 () Bool)

(declare-fun tp!998605 () Bool)

(assert (=> b!3167723 (= e!1973106 (and tp!998607 tp!998605))))

(declare-fun b!3167721 () Bool)

(declare-fun tp!998606 () Bool)

(declare-fun tp!998604 () Bool)

(assert (=> b!3167721 (= e!1973106 (and tp!998606 tp!998604))))

(assert (=> b!3167434 (= tp!998507 e!1973106)))

(declare-fun b!3167722 () Bool)

(declare-fun tp!998603 () Bool)

(assert (=> b!3167722 (= e!1973106 tp!998603)))

(declare-fun b!3167720 () Bool)

(assert (=> b!3167720 (= e!1973106 tp_is_empty!17057)))

(assert (= (and b!3167434 ((_ is ElementMatch!9747) (regTwo!20007 (regTwo!20007 r!13156)))) b!3167720))

(assert (= (and b!3167434 ((_ is Concat!15068) (regTwo!20007 (regTwo!20007 r!13156)))) b!3167721))

(assert (= (and b!3167434 ((_ is Star!9747) (regTwo!20007 (regTwo!20007 r!13156)))) b!3167722))

(assert (= (and b!3167434 ((_ is Union!9747) (regTwo!20007 (regTwo!20007 r!13156)))) b!3167723))

(declare-fun b!3167727 () Bool)

(declare-fun e!1973107 () Bool)

(declare-fun tp!998612 () Bool)

(declare-fun tp!998610 () Bool)

(assert (=> b!3167727 (= e!1973107 (and tp!998612 tp!998610))))

(declare-fun b!3167725 () Bool)

(declare-fun tp!998611 () Bool)

(declare-fun tp!998609 () Bool)

(assert (=> b!3167725 (= e!1973107 (and tp!998611 tp!998609))))

(assert (=> b!3167447 (= tp!998537 e!1973107)))

(declare-fun b!3167726 () Bool)

(declare-fun tp!998608 () Bool)

(assert (=> b!3167726 (= e!1973107 tp!998608)))

(declare-fun b!3167724 () Bool)

(assert (=> b!3167724 (= e!1973107 tp_is_empty!17057)))

(assert (= (and b!3167447 ((_ is ElementMatch!9747) (reg!10076 (regOne!20006 r!13156)))) b!3167724))

(assert (= (and b!3167447 ((_ is Concat!15068) (reg!10076 (regOne!20006 r!13156)))) b!3167725))

(assert (= (and b!3167447 ((_ is Star!9747) (reg!10076 (regOne!20006 r!13156)))) b!3167726))

(assert (= (and b!3167447 ((_ is Union!9747) (reg!10076 (regOne!20006 r!13156)))) b!3167727))

(declare-fun b!3167731 () Bool)

(declare-fun e!1973108 () Bool)

(declare-fun tp!998617 () Bool)

(declare-fun tp!998615 () Bool)

(assert (=> b!3167731 (= e!1973108 (and tp!998617 tp!998615))))

(declare-fun b!3167729 () Bool)

(declare-fun tp!998616 () Bool)

(declare-fun tp!998614 () Bool)

(assert (=> b!3167729 (= e!1973108 (and tp!998616 tp!998614))))

(assert (=> b!3167433 (= tp!998505 e!1973108)))

(declare-fun b!3167730 () Bool)

(declare-fun tp!998613 () Bool)

(assert (=> b!3167730 (= e!1973108 tp!998613)))

(declare-fun b!3167728 () Bool)

(assert (=> b!3167728 (= e!1973108 tp_is_empty!17057)))

(assert (= (and b!3167433 ((_ is ElementMatch!9747) (reg!10076 (regTwo!20007 r!13156)))) b!3167728))

(assert (= (and b!3167433 ((_ is Concat!15068) (reg!10076 (regTwo!20007 r!13156)))) b!3167729))

(assert (= (and b!3167433 ((_ is Star!9747) (reg!10076 (regTwo!20007 r!13156)))) b!3167730))

(assert (= (and b!3167433 ((_ is Union!9747) (reg!10076 (regTwo!20007 r!13156)))) b!3167731))

(declare-fun b!3167742 () Bool)

(declare-fun e!1973117 () Bool)

(declare-fun lt!1065102 () MutLongMap!4168)

(assert (=> b!3167742 (= e!1973117 ((_ is LongMap!4168) lt!1065102))))

(assert (=> b!3167742 (= lt!1065102 (v!35160 (underlying!8566 (cache!4218 (_2!20424 (derivativeStepMem!31 (regOne!20006 r!13156) a!2409 cache!347))))))))

(declare-fun b!3167741 () Bool)

(declare-fun e!1973116 () Bool)

(assert (=> b!3167741 (= e!1973116 e!1973117)))

(declare-fun b!3167740 () Bool)

(declare-fun e!1973115 () Bool)

(assert (=> b!3167740 (= e!1973115 e!1973116)))

(assert (=> d!868965 (= true e!1973115)))

(assert (= b!3167741 b!3167742))

(assert (= (and b!3167740 ((_ is HashMap!4074) (cache!4218 (_2!20424 (derivativeStepMem!31 (regOne!20006 r!13156) a!2409 cache!347))))) b!3167741))

(assert (= d!868965 b!3167740))

(declare-fun b!3167746 () Bool)

(declare-fun e!1973118 () Bool)

(declare-fun tp!998622 () Bool)

(declare-fun tp!998620 () Bool)

(assert (=> b!3167746 (= e!1973118 (and tp!998622 tp!998620))))

(declare-fun b!3167744 () Bool)

(declare-fun tp!998621 () Bool)

(declare-fun tp!998619 () Bool)

(assert (=> b!3167744 (= e!1973118 (and tp!998621 tp!998619))))

(assert (=> b!3167448 (= tp!998541 e!1973118)))

(declare-fun b!3167745 () Bool)

(declare-fun tp!998618 () Bool)

(assert (=> b!3167745 (= e!1973118 tp!998618)))

(declare-fun b!3167743 () Bool)

(assert (=> b!3167743 (= e!1973118 tp_is_empty!17057)))

(assert (= (and b!3167448 ((_ is ElementMatch!9747) (regOne!20007 (regOne!20006 r!13156)))) b!3167743))

(assert (= (and b!3167448 ((_ is Concat!15068) (regOne!20007 (regOne!20006 r!13156)))) b!3167744))

(assert (= (and b!3167448 ((_ is Star!9747) (regOne!20007 (regOne!20006 r!13156)))) b!3167745))

(assert (= (and b!3167448 ((_ is Union!9747) (regOne!20007 (regOne!20006 r!13156)))) b!3167746))

(declare-fun b!3167750 () Bool)

(declare-fun e!1973119 () Bool)

(declare-fun tp!998627 () Bool)

(declare-fun tp!998625 () Bool)

(assert (=> b!3167750 (= e!1973119 (and tp!998627 tp!998625))))

(declare-fun b!3167748 () Bool)

(declare-fun tp!998626 () Bool)

(declare-fun tp!998624 () Bool)

(assert (=> b!3167748 (= e!1973119 (and tp!998626 tp!998624))))

(assert (=> b!3167448 (= tp!998539 e!1973119)))

(declare-fun b!3167749 () Bool)

(declare-fun tp!998623 () Bool)

(assert (=> b!3167749 (= e!1973119 tp!998623)))

(declare-fun b!3167747 () Bool)

(assert (=> b!3167747 (= e!1973119 tp_is_empty!17057)))

(assert (= (and b!3167448 ((_ is ElementMatch!9747) (regTwo!20007 (regOne!20006 r!13156)))) b!3167747))

(assert (= (and b!3167448 ((_ is Concat!15068) (regTwo!20007 (regOne!20006 r!13156)))) b!3167748))

(assert (= (and b!3167448 ((_ is Star!9747) (regTwo!20007 (regOne!20006 r!13156)))) b!3167749))

(assert (= (and b!3167448 ((_ is Union!9747) (regTwo!20007 (regOne!20006 r!13156)))) b!3167750))

(declare-fun b!3167754 () Bool)

(declare-fun e!1973120 () Bool)

(declare-fun tp!998632 () Bool)

(declare-fun tp!998630 () Bool)

(assert (=> b!3167754 (= e!1973120 (and tp!998632 tp!998630))))

(declare-fun b!3167752 () Bool)

(declare-fun tp!998631 () Bool)

(declare-fun tp!998629 () Bool)

(assert (=> b!3167752 (= e!1973120 (and tp!998631 tp!998629))))

(assert (=> b!3167455 (= tp!998547 e!1973120)))

(declare-fun b!3167753 () Bool)

(declare-fun tp!998628 () Bool)

(assert (=> b!3167753 (= e!1973120 tp!998628)))

(declare-fun b!3167751 () Bool)

(assert (=> b!3167751 (= e!1973120 tp_is_empty!17057)))

(assert (= (and b!3167455 ((_ is ElementMatch!9747) (reg!10076 (reg!10076 r!13156)))) b!3167751))

(assert (= (and b!3167455 ((_ is Concat!15068) (reg!10076 (reg!10076 r!13156)))) b!3167752))

(assert (= (and b!3167455 ((_ is Star!9747) (reg!10076 (reg!10076 r!13156)))) b!3167753))

(assert (= (and b!3167455 ((_ is Union!9747) (reg!10076 (reg!10076 r!13156)))) b!3167754))

(declare-fun b!3167758 () Bool)

(declare-fun e!1973121 () Bool)

(declare-fun tp!998637 () Bool)

(declare-fun tp!998635 () Bool)

(assert (=> b!3167758 (= e!1973121 (and tp!998637 tp!998635))))

(declare-fun b!3167756 () Bool)

(declare-fun tp!998636 () Bool)

(declare-fun tp!998634 () Bool)

(assert (=> b!3167756 (= e!1973121 (and tp!998636 tp!998634))))

(assert (=> b!3167446 (= tp!998540 e!1973121)))

(declare-fun b!3167757 () Bool)

(declare-fun tp!998633 () Bool)

(assert (=> b!3167757 (= e!1973121 tp!998633)))

(declare-fun b!3167755 () Bool)

(assert (=> b!3167755 (= e!1973121 tp_is_empty!17057)))

(assert (= (and b!3167446 ((_ is ElementMatch!9747) (regOne!20006 (regOne!20006 r!13156)))) b!3167755))

(assert (= (and b!3167446 ((_ is Concat!15068) (regOne!20006 (regOne!20006 r!13156)))) b!3167756))

(assert (= (and b!3167446 ((_ is Star!9747) (regOne!20006 (regOne!20006 r!13156)))) b!3167757))

(assert (= (and b!3167446 ((_ is Union!9747) (regOne!20006 (regOne!20006 r!13156)))) b!3167758))

(declare-fun b!3167762 () Bool)

(declare-fun e!1973122 () Bool)

(declare-fun tp!998642 () Bool)

(declare-fun tp!998640 () Bool)

(assert (=> b!3167762 (= e!1973122 (and tp!998642 tp!998640))))

(declare-fun b!3167760 () Bool)

(declare-fun tp!998641 () Bool)

(declare-fun tp!998639 () Bool)

(assert (=> b!3167760 (= e!1973122 (and tp!998641 tp!998639))))

(assert (=> b!3167446 (= tp!998538 e!1973122)))

(declare-fun b!3167761 () Bool)

(declare-fun tp!998638 () Bool)

(assert (=> b!3167761 (= e!1973122 tp!998638)))

(declare-fun b!3167759 () Bool)

(assert (=> b!3167759 (= e!1973122 tp_is_empty!17057)))

(assert (= (and b!3167446 ((_ is ElementMatch!9747) (regTwo!20006 (regOne!20006 r!13156)))) b!3167759))

(assert (= (and b!3167446 ((_ is Concat!15068) (regTwo!20006 (regOne!20006 r!13156)))) b!3167760))

(assert (= (and b!3167446 ((_ is Star!9747) (regTwo!20006 (regOne!20006 r!13156)))) b!3167761))

(assert (= (and b!3167446 ((_ is Union!9747) (regTwo!20006 (regOne!20006 r!13156)))) b!3167762))

(declare-fun b!3167766 () Bool)

(declare-fun e!1973123 () Bool)

(declare-fun tp!998647 () Bool)

(declare-fun tp!998645 () Bool)

(assert (=> b!3167766 (= e!1973123 (and tp!998647 tp!998645))))

(declare-fun b!3167764 () Bool)

(declare-fun tp!998646 () Bool)

(declare-fun tp!998644 () Bool)

(assert (=> b!3167764 (= e!1973123 (and tp!998646 tp!998644))))

(assert (=> b!3167432 (= tp!998508 e!1973123)))

(declare-fun b!3167765 () Bool)

(declare-fun tp!998643 () Bool)

(assert (=> b!3167765 (= e!1973123 tp!998643)))

(declare-fun b!3167763 () Bool)

(assert (=> b!3167763 (= e!1973123 tp_is_empty!17057)))

(assert (= (and b!3167432 ((_ is ElementMatch!9747) (regOne!20006 (regTwo!20007 r!13156)))) b!3167763))

(assert (= (and b!3167432 ((_ is Concat!15068) (regOne!20006 (regTwo!20007 r!13156)))) b!3167764))

(assert (= (and b!3167432 ((_ is Star!9747) (regOne!20006 (regTwo!20007 r!13156)))) b!3167765))

(assert (= (and b!3167432 ((_ is Union!9747) (regOne!20006 (regTwo!20007 r!13156)))) b!3167766))

(declare-fun b!3167770 () Bool)

(declare-fun e!1973124 () Bool)

(declare-fun tp!998652 () Bool)

(declare-fun tp!998650 () Bool)

(assert (=> b!3167770 (= e!1973124 (and tp!998652 tp!998650))))

(declare-fun b!3167768 () Bool)

(declare-fun tp!998651 () Bool)

(declare-fun tp!998649 () Bool)

(assert (=> b!3167768 (= e!1973124 (and tp!998651 tp!998649))))

(assert (=> b!3167432 (= tp!998506 e!1973124)))

(declare-fun b!3167769 () Bool)

(declare-fun tp!998648 () Bool)

(assert (=> b!3167769 (= e!1973124 tp!998648)))

(declare-fun b!3167767 () Bool)

(assert (=> b!3167767 (= e!1973124 tp_is_empty!17057)))

(assert (= (and b!3167432 ((_ is ElementMatch!9747) (regTwo!20006 (regTwo!20007 r!13156)))) b!3167767))

(assert (= (and b!3167432 ((_ is Concat!15068) (regTwo!20006 (regTwo!20007 r!13156)))) b!3167768))

(assert (= (and b!3167432 ((_ is Star!9747) (regTwo!20006 (regTwo!20007 r!13156)))) b!3167769))

(assert (= (and b!3167432 ((_ is Union!9747) (regTwo!20006 (regTwo!20007 r!13156)))) b!3167770))

(declare-fun b!3167774 () Bool)

(declare-fun e!1973125 () Bool)

(declare-fun tp!998657 () Bool)

(declare-fun tp!998655 () Bool)

(assert (=> b!3167774 (= e!1973125 (and tp!998657 tp!998655))))

(declare-fun b!3167772 () Bool)

(declare-fun tp!998656 () Bool)

(declare-fun tp!998654 () Bool)

(assert (=> b!3167772 (= e!1973125 (and tp!998656 tp!998654))))

(assert (=> b!3167456 (= tp!998551 e!1973125)))

(declare-fun b!3167773 () Bool)

(declare-fun tp!998653 () Bool)

(assert (=> b!3167773 (= e!1973125 tp!998653)))

(declare-fun b!3167771 () Bool)

(assert (=> b!3167771 (= e!1973125 tp_is_empty!17057)))

(assert (= (and b!3167456 ((_ is ElementMatch!9747) (regOne!20007 (reg!10076 r!13156)))) b!3167771))

(assert (= (and b!3167456 ((_ is Concat!15068) (regOne!20007 (reg!10076 r!13156)))) b!3167772))

(assert (= (and b!3167456 ((_ is Star!9747) (regOne!20007 (reg!10076 r!13156)))) b!3167773))

(assert (= (and b!3167456 ((_ is Union!9747) (regOne!20007 (reg!10076 r!13156)))) b!3167774))

(declare-fun b!3167778 () Bool)

(declare-fun e!1973126 () Bool)

(declare-fun tp!998662 () Bool)

(declare-fun tp!998660 () Bool)

(assert (=> b!3167778 (= e!1973126 (and tp!998662 tp!998660))))

(declare-fun b!3167776 () Bool)

(declare-fun tp!998661 () Bool)

(declare-fun tp!998659 () Bool)

(assert (=> b!3167776 (= e!1973126 (and tp!998661 tp!998659))))

(assert (=> b!3167456 (= tp!998549 e!1973126)))

(declare-fun b!3167777 () Bool)

(declare-fun tp!998658 () Bool)

(assert (=> b!3167777 (= e!1973126 tp!998658)))

(declare-fun b!3167775 () Bool)

(assert (=> b!3167775 (= e!1973126 tp_is_empty!17057)))

(assert (= (and b!3167456 ((_ is ElementMatch!9747) (regTwo!20007 (reg!10076 r!13156)))) b!3167775))

(assert (= (and b!3167456 ((_ is Concat!15068) (regTwo!20007 (reg!10076 r!13156)))) b!3167776))

(assert (= (and b!3167456 ((_ is Star!9747) (regTwo!20007 (reg!10076 r!13156)))) b!3167777))

(assert (= (and b!3167456 ((_ is Union!9747) (regTwo!20007 (reg!10076 r!13156)))) b!3167778))

(declare-fun b!3167782 () Bool)

(declare-fun e!1973127 () Bool)

(declare-fun tp!998667 () Bool)

(declare-fun tp!998665 () Bool)

(assert (=> b!3167782 (= e!1973127 (and tp!998667 tp!998665))))

(declare-fun b!3167780 () Bool)

(declare-fun tp!998666 () Bool)

(declare-fun tp!998664 () Bool)

(assert (=> b!3167780 (= e!1973127 (and tp!998666 tp!998664))))

(assert (=> b!3167454 (= tp!998550 e!1973127)))

(declare-fun b!3167781 () Bool)

(declare-fun tp!998663 () Bool)

(assert (=> b!3167781 (= e!1973127 tp!998663)))

(declare-fun b!3167779 () Bool)

(assert (=> b!3167779 (= e!1973127 tp_is_empty!17057)))

(assert (= (and b!3167454 ((_ is ElementMatch!9747) (regOne!20006 (reg!10076 r!13156)))) b!3167779))

(assert (= (and b!3167454 ((_ is Concat!15068) (regOne!20006 (reg!10076 r!13156)))) b!3167780))

(assert (= (and b!3167454 ((_ is Star!9747) (regOne!20006 (reg!10076 r!13156)))) b!3167781))

(assert (= (and b!3167454 ((_ is Union!9747) (regOne!20006 (reg!10076 r!13156)))) b!3167782))

(declare-fun b!3167786 () Bool)

(declare-fun e!1973128 () Bool)

(declare-fun tp!998672 () Bool)

(declare-fun tp!998670 () Bool)

(assert (=> b!3167786 (= e!1973128 (and tp!998672 tp!998670))))

(declare-fun b!3167784 () Bool)

(declare-fun tp!998671 () Bool)

(declare-fun tp!998669 () Bool)

(assert (=> b!3167784 (= e!1973128 (and tp!998671 tp!998669))))

(assert (=> b!3167454 (= tp!998548 e!1973128)))

(declare-fun b!3167785 () Bool)

(declare-fun tp!998668 () Bool)

(assert (=> b!3167785 (= e!1973128 tp!998668)))

(declare-fun b!3167783 () Bool)

(assert (=> b!3167783 (= e!1973128 tp_is_empty!17057)))

(assert (= (and b!3167454 ((_ is ElementMatch!9747) (regTwo!20006 (reg!10076 r!13156)))) b!3167783))

(assert (= (and b!3167454 ((_ is Concat!15068) (regTwo!20006 (reg!10076 r!13156)))) b!3167784))

(assert (= (and b!3167454 ((_ is Star!9747) (regTwo!20006 (reg!10076 r!13156)))) b!3167785))

(assert (= (and b!3167454 ((_ is Union!9747) (regTwo!20006 (reg!10076 r!13156)))) b!3167786))

(declare-fun b!3167790 () Bool)

(declare-fun e!1973129 () Bool)

(declare-fun tp!998677 () Bool)

(declare-fun tp!998675 () Bool)

(assert (=> b!3167790 (= e!1973129 (and tp!998677 tp!998675))))

(declare-fun b!3167788 () Bool)

(declare-fun tp!998676 () Bool)

(declare-fun tp!998674 () Bool)

(assert (=> b!3167788 (= e!1973129 (and tp!998676 tp!998674))))

(assert (=> b!3167416 (= tp!998487 e!1973129)))

(declare-fun b!3167789 () Bool)

(declare-fun tp!998673 () Bool)

(assert (=> b!3167789 (= e!1973129 tp!998673)))

(declare-fun b!3167787 () Bool)

(assert (=> b!3167787 (= e!1973129 tp_is_empty!17057)))

(assert (= (and b!3167416 ((_ is ElementMatch!9747) (_1!20422 (_1!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167787))

(assert (= (and b!3167416 ((_ is Concat!15068) (_1!20422 (_1!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167788))

(assert (= (and b!3167416 ((_ is Star!9747) (_1!20422 (_1!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167789))

(assert (= (and b!3167416 ((_ is Union!9747) (_1!20422 (_1!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167790))

(declare-fun b!3167794 () Bool)

(declare-fun e!1973130 () Bool)

(declare-fun tp!998682 () Bool)

(declare-fun tp!998680 () Bool)

(assert (=> b!3167794 (= e!1973130 (and tp!998682 tp!998680))))

(declare-fun b!3167792 () Bool)

(declare-fun tp!998681 () Bool)

(declare-fun tp!998679 () Bool)

(assert (=> b!3167792 (= e!1973130 (and tp!998681 tp!998679))))

(assert (=> b!3167416 (= tp!998488 e!1973130)))

(declare-fun b!3167793 () Bool)

(declare-fun tp!998678 () Bool)

(assert (=> b!3167793 (= e!1973130 tp!998678)))

(declare-fun b!3167791 () Bool)

(assert (=> b!3167791 (= e!1973130 tp_is_empty!17057)))

(assert (= (and b!3167416 ((_ is ElementMatch!9747) (_2!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167791))

(assert (= (and b!3167416 ((_ is Concat!15068) (_2!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167792))

(assert (= (and b!3167416 ((_ is Star!9747) (_2!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167793))

(assert (= (and b!3167416 ((_ is Union!9747) (_2!20423 (h!40878 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167794))

(declare-fun tp!998684 () Bool)

(declare-fun e!1973131 () Bool)

(declare-fun tp!998685 () Bool)

(declare-fun b!3167795 () Bool)

(declare-fun tp!998683 () Bool)

(assert (=> b!3167795 (= e!1973131 (and tp!998683 tp_is_empty!17057 tp!998684 tp!998685))))

(assert (=> b!3167416 (= tp!998489 e!1973131)))

(assert (= (and b!3167416 ((_ is Cons!35458) (t!234661 (minValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))) b!3167795))

(declare-fun b!3167799 () Bool)

(declare-fun e!1973132 () Bool)

(declare-fun tp!998690 () Bool)

(declare-fun tp!998688 () Bool)

(assert (=> b!3167799 (= e!1973132 (and tp!998690 tp!998688))))

(declare-fun b!3167797 () Bool)

(declare-fun tp!998689 () Bool)

(declare-fun tp!998687 () Bool)

(assert (=> b!3167797 (= e!1973132 (and tp!998689 tp!998687))))

(assert (=> b!3167415 (= tp!998484 e!1973132)))

(declare-fun b!3167798 () Bool)

(declare-fun tp!998686 () Bool)

(assert (=> b!3167798 (= e!1973132 tp!998686)))

(declare-fun b!3167796 () Bool)

(assert (=> b!3167796 (= e!1973132 tp_is_empty!17057)))

(assert (= (and b!3167415 ((_ is ElementMatch!9747) (_1!20422 (_1!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167796))

(assert (= (and b!3167415 ((_ is Concat!15068) (_1!20422 (_1!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167797))

(assert (= (and b!3167415 ((_ is Star!9747) (_1!20422 (_1!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167798))

(assert (= (and b!3167415 ((_ is Union!9747) (_1!20422 (_1!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))))) b!3167799))

(declare-fun b!3167803 () Bool)

(declare-fun e!1973133 () Bool)

(declare-fun tp!998695 () Bool)

(declare-fun tp!998693 () Bool)

(assert (=> b!3167803 (= e!1973133 (and tp!998695 tp!998693))))

(declare-fun b!3167801 () Bool)

(declare-fun tp!998694 () Bool)

(declare-fun tp!998692 () Bool)

(assert (=> b!3167801 (= e!1973133 (and tp!998694 tp!998692))))

(assert (=> b!3167415 (= tp!998485 e!1973133)))

(declare-fun b!3167802 () Bool)

(declare-fun tp!998691 () Bool)

(assert (=> b!3167802 (= e!1973133 tp!998691)))

(declare-fun b!3167800 () Bool)

(assert (=> b!3167800 (= e!1973133 tp_is_empty!17057)))

(assert (= (and b!3167415 ((_ is ElementMatch!9747) (_2!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167800))

(assert (= (and b!3167415 ((_ is Concat!15068) (_2!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167801))

(assert (= (and b!3167415 ((_ is Star!9747) (_2!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167802))

(assert (= (and b!3167415 ((_ is Union!9747) (_2!20423 (h!40878 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347)))))))))) b!3167803))

(declare-fun tp!998697 () Bool)

(declare-fun tp!998698 () Bool)

(declare-fun b!3167804 () Bool)

(declare-fun tp!998696 () Bool)

(declare-fun e!1973134 () Bool)

(assert (=> b!3167804 (= e!1973134 (and tp!998696 tp_is_empty!17057 tp!998697 tp!998698))))

(assert (=> b!3167415 (= tp!998486 e!1973134)))

(assert (= (and b!3167415 ((_ is Cons!35458) (t!234661 (zeroValue!4427 (v!35159 (underlying!8565 (v!35160 (underlying!8566 (cache!4218 cache!347))))))))) b!3167804))

(declare-fun b!3167808 () Bool)

(declare-fun e!1973135 () Bool)

(declare-fun tp!998703 () Bool)

(declare-fun tp!998701 () Bool)

(assert (=> b!3167808 (= e!1973135 (and tp!998703 tp!998701))))

(declare-fun b!3167806 () Bool)

(declare-fun tp!998702 () Bool)

(declare-fun tp!998700 () Bool)

(assert (=> b!3167806 (= e!1973135 (and tp!998702 tp!998700))))

(assert (=> b!3167444 (= tp!998534 e!1973135)))

(declare-fun b!3167807 () Bool)

(declare-fun tp!998699 () Bool)

(assert (=> b!3167807 (= e!1973135 tp!998699)))

(declare-fun b!3167805 () Bool)

(assert (=> b!3167805 (= e!1973135 tp_is_empty!17057)))

(assert (= (and b!3167444 ((_ is ElementMatch!9747) (_1!20422 (_1!20423 (h!40878 mapValue!18903))))) b!3167805))

(assert (= (and b!3167444 ((_ is Concat!15068) (_1!20422 (_1!20423 (h!40878 mapValue!18903))))) b!3167806))

(assert (= (and b!3167444 ((_ is Star!9747) (_1!20422 (_1!20423 (h!40878 mapValue!18903))))) b!3167807))

(assert (= (and b!3167444 ((_ is Union!9747) (_1!20422 (_1!20423 (h!40878 mapValue!18903))))) b!3167808))

(declare-fun b!3167812 () Bool)

(declare-fun e!1973136 () Bool)

(declare-fun tp!998708 () Bool)

(declare-fun tp!998706 () Bool)

(assert (=> b!3167812 (= e!1973136 (and tp!998708 tp!998706))))

(declare-fun b!3167810 () Bool)

(declare-fun tp!998707 () Bool)

(declare-fun tp!998705 () Bool)

(assert (=> b!3167810 (= e!1973136 (and tp!998707 tp!998705))))

(assert (=> b!3167444 (= tp!998535 e!1973136)))

(declare-fun b!3167811 () Bool)

(declare-fun tp!998704 () Bool)

(assert (=> b!3167811 (= e!1973136 tp!998704)))

(declare-fun b!3167809 () Bool)

(assert (=> b!3167809 (= e!1973136 tp_is_empty!17057)))

(assert (= (and b!3167444 ((_ is ElementMatch!9747) (_2!20423 (h!40878 mapValue!18903)))) b!3167809))

(assert (= (and b!3167444 ((_ is Concat!15068) (_2!20423 (h!40878 mapValue!18903)))) b!3167810))

(assert (= (and b!3167444 ((_ is Star!9747) (_2!20423 (h!40878 mapValue!18903)))) b!3167811))

(assert (= (and b!3167444 ((_ is Union!9747) (_2!20423 (h!40878 mapValue!18903)))) b!3167812))

(declare-fun tp!998711 () Bool)

(declare-fun b!3167813 () Bool)

(declare-fun tp!998709 () Bool)

(declare-fun e!1973137 () Bool)

(declare-fun tp!998710 () Bool)

(assert (=> b!3167813 (= e!1973137 (and tp!998709 tp_is_empty!17057 tp!998710 tp!998711))))

(assert (=> b!3167444 (= tp!998536 e!1973137)))

(assert (= (and b!3167444 ((_ is Cons!35458) (t!234661 mapValue!18903))) b!3167813))

(declare-fun b!3167817 () Bool)

(declare-fun e!1973138 () Bool)

(declare-fun tp!998716 () Bool)

(declare-fun tp!998714 () Bool)

(assert (=> b!3167817 (= e!1973138 (and tp!998716 tp!998714))))

(declare-fun b!3167815 () Bool)

(declare-fun tp!998715 () Bool)

(declare-fun tp!998713 () Bool)

(assert (=> b!3167815 (= e!1973138 (and tp!998715 tp!998713))))

(assert (=> b!3167430 (= tp!998504 e!1973138)))

(declare-fun b!3167816 () Bool)

(declare-fun tp!998712 () Bool)

(assert (=> b!3167816 (= e!1973138 tp!998712)))

(declare-fun b!3167814 () Bool)

(assert (=> b!3167814 (= e!1973138 tp_is_empty!17057)))

(assert (= (and b!3167430 ((_ is ElementMatch!9747) (regOne!20007 (regOne!20007 r!13156)))) b!3167814))

(assert (= (and b!3167430 ((_ is Concat!15068) (regOne!20007 (regOne!20007 r!13156)))) b!3167815))

(assert (= (and b!3167430 ((_ is Star!9747) (regOne!20007 (regOne!20007 r!13156)))) b!3167816))

(assert (= (and b!3167430 ((_ is Union!9747) (regOne!20007 (regOne!20007 r!13156)))) b!3167817))

(declare-fun b!3167821 () Bool)

(declare-fun e!1973139 () Bool)

(declare-fun tp!998721 () Bool)

(declare-fun tp!998719 () Bool)

(assert (=> b!3167821 (= e!1973139 (and tp!998721 tp!998719))))

(declare-fun b!3167819 () Bool)

(declare-fun tp!998720 () Bool)

(declare-fun tp!998718 () Bool)

(assert (=> b!3167819 (= e!1973139 (and tp!998720 tp!998718))))

(assert (=> b!3167430 (= tp!998502 e!1973139)))

(declare-fun b!3167820 () Bool)

(declare-fun tp!998717 () Bool)

(assert (=> b!3167820 (= e!1973139 tp!998717)))

(declare-fun b!3167818 () Bool)

(assert (=> b!3167818 (= e!1973139 tp_is_empty!17057)))

(assert (= (and b!3167430 ((_ is ElementMatch!9747) (regTwo!20007 (regOne!20007 r!13156)))) b!3167818))

(assert (= (and b!3167430 ((_ is Concat!15068) (regTwo!20007 (regOne!20007 r!13156)))) b!3167819))

(assert (= (and b!3167430 ((_ is Star!9747) (regTwo!20007 (regOne!20007 r!13156)))) b!3167820))

(assert (= (and b!3167430 ((_ is Union!9747) (regTwo!20007 (regOne!20007 r!13156)))) b!3167821))

(declare-fun b!3167825 () Bool)

(declare-fun e!1973140 () Bool)

(declare-fun tp!998726 () Bool)

(declare-fun tp!998724 () Bool)

(assert (=> b!3167825 (= e!1973140 (and tp!998726 tp!998724))))

(declare-fun b!3167823 () Bool)

(declare-fun tp!998725 () Bool)

(declare-fun tp!998723 () Bool)

(assert (=> b!3167823 (= e!1973140 (and tp!998725 tp!998723))))

(assert (=> b!3167428 (= tp!998503 e!1973140)))

(declare-fun b!3167824 () Bool)

(declare-fun tp!998722 () Bool)

(assert (=> b!3167824 (= e!1973140 tp!998722)))

(declare-fun b!3167822 () Bool)

(assert (=> b!3167822 (= e!1973140 tp_is_empty!17057)))

(assert (= (and b!3167428 ((_ is ElementMatch!9747) (regOne!20006 (regOne!20007 r!13156)))) b!3167822))

(assert (= (and b!3167428 ((_ is Concat!15068) (regOne!20006 (regOne!20007 r!13156)))) b!3167823))

(assert (= (and b!3167428 ((_ is Star!9747) (regOne!20006 (regOne!20007 r!13156)))) b!3167824))

(assert (= (and b!3167428 ((_ is Union!9747) (regOne!20006 (regOne!20007 r!13156)))) b!3167825))

(declare-fun b!3167829 () Bool)

(declare-fun e!1973141 () Bool)

(declare-fun tp!998731 () Bool)

(declare-fun tp!998729 () Bool)

(assert (=> b!3167829 (= e!1973141 (and tp!998731 tp!998729))))

(declare-fun b!3167827 () Bool)

(declare-fun tp!998730 () Bool)

(declare-fun tp!998728 () Bool)

(assert (=> b!3167827 (= e!1973141 (and tp!998730 tp!998728))))

(assert (=> b!3167428 (= tp!998501 e!1973141)))

(declare-fun b!3167828 () Bool)

(declare-fun tp!998727 () Bool)

(assert (=> b!3167828 (= e!1973141 tp!998727)))

(declare-fun b!3167826 () Bool)

(assert (=> b!3167826 (= e!1973141 tp_is_empty!17057)))

(assert (= (and b!3167428 ((_ is ElementMatch!9747) (regTwo!20006 (regOne!20007 r!13156)))) b!3167826))

(assert (= (and b!3167428 ((_ is Concat!15068) (regTwo!20006 (regOne!20007 r!13156)))) b!3167827))

(assert (= (and b!3167428 ((_ is Star!9747) (regTwo!20006 (regOne!20007 r!13156)))) b!3167828))

(assert (= (and b!3167428 ((_ is Union!9747) (regTwo!20006 (regOne!20007 r!13156)))) b!3167829))

(declare-fun b!3167833 () Bool)

(declare-fun e!1973142 () Bool)

(declare-fun tp!998736 () Bool)

(declare-fun tp!998734 () Bool)

(assert (=> b!3167833 (= e!1973142 (and tp!998736 tp!998734))))

(declare-fun b!3167831 () Bool)

(declare-fun tp!998735 () Bool)

(declare-fun tp!998733 () Bool)

(assert (=> b!3167831 (= e!1973142 (and tp!998735 tp!998733))))

(assert (=> b!3167452 (= tp!998546 e!1973142)))

(declare-fun b!3167832 () Bool)

(declare-fun tp!998732 () Bool)

(assert (=> b!3167832 (= e!1973142 tp!998732)))

(declare-fun b!3167830 () Bool)

(assert (=> b!3167830 (= e!1973142 tp_is_empty!17057)))

(assert (= (and b!3167452 ((_ is ElementMatch!9747) (regOne!20007 (regTwo!20006 r!13156)))) b!3167830))

(assert (= (and b!3167452 ((_ is Concat!15068) (regOne!20007 (regTwo!20006 r!13156)))) b!3167831))

(assert (= (and b!3167452 ((_ is Star!9747) (regOne!20007 (regTwo!20006 r!13156)))) b!3167832))

(assert (= (and b!3167452 ((_ is Union!9747) (regOne!20007 (regTwo!20006 r!13156)))) b!3167833))

(declare-fun b!3167837 () Bool)

(declare-fun e!1973143 () Bool)

(declare-fun tp!998741 () Bool)

(declare-fun tp!998739 () Bool)

(assert (=> b!3167837 (= e!1973143 (and tp!998741 tp!998739))))

(declare-fun b!3167835 () Bool)

(declare-fun tp!998740 () Bool)

(declare-fun tp!998738 () Bool)

(assert (=> b!3167835 (= e!1973143 (and tp!998740 tp!998738))))

(assert (=> b!3167452 (= tp!998544 e!1973143)))

(declare-fun b!3167836 () Bool)

(declare-fun tp!998737 () Bool)

(assert (=> b!3167836 (= e!1973143 tp!998737)))

(declare-fun b!3167834 () Bool)

(assert (=> b!3167834 (= e!1973143 tp_is_empty!17057)))

(assert (= (and b!3167452 ((_ is ElementMatch!9747) (regTwo!20007 (regTwo!20006 r!13156)))) b!3167834))

(assert (= (and b!3167452 ((_ is Concat!15068) (regTwo!20007 (regTwo!20006 r!13156)))) b!3167835))

(assert (= (and b!3167452 ((_ is Star!9747) (regTwo!20007 (regTwo!20006 r!13156)))) b!3167836))

(assert (= (and b!3167452 ((_ is Union!9747) (regTwo!20007 (regTwo!20006 r!13156)))) b!3167837))

(declare-fun b!3167841 () Bool)

(declare-fun e!1973144 () Bool)

(declare-fun tp!998746 () Bool)

(declare-fun tp!998744 () Bool)

(assert (=> b!3167841 (= e!1973144 (and tp!998746 tp!998744))))

(declare-fun b!3167839 () Bool)

(declare-fun tp!998745 () Bool)

(declare-fun tp!998743 () Bool)

(assert (=> b!3167839 (= e!1973144 (and tp!998745 tp!998743))))

(assert (=> b!3167429 (= tp!998500 e!1973144)))

(declare-fun b!3167840 () Bool)

(declare-fun tp!998742 () Bool)

(assert (=> b!3167840 (= e!1973144 tp!998742)))

(declare-fun b!3167838 () Bool)

(assert (=> b!3167838 (= e!1973144 tp_is_empty!17057)))

(assert (= (and b!3167429 ((_ is ElementMatch!9747) (reg!10076 (regOne!20007 r!13156)))) b!3167838))

(assert (= (and b!3167429 ((_ is Concat!15068) (reg!10076 (regOne!20007 r!13156)))) b!3167839))

(assert (= (and b!3167429 ((_ is Star!9747) (reg!10076 (regOne!20007 r!13156)))) b!3167840))

(assert (= (and b!3167429 ((_ is Union!9747) (reg!10076 (regOne!20007 r!13156)))) b!3167841))

(declare-fun b!3167845 () Bool)

(declare-fun e!1973145 () Bool)

(declare-fun tp!998751 () Bool)

(declare-fun tp!998749 () Bool)

(assert (=> b!3167845 (= e!1973145 (and tp!998751 tp!998749))))

(declare-fun b!3167843 () Bool)

(declare-fun tp!998750 () Bool)

(declare-fun tp!998748 () Bool)

(assert (=> b!3167843 (= e!1973145 (and tp!998750 tp!998748))))

(assert (=> b!3167451 (= tp!998542 e!1973145)))

(declare-fun b!3167844 () Bool)

(declare-fun tp!998747 () Bool)

(assert (=> b!3167844 (= e!1973145 tp!998747)))

(declare-fun b!3167842 () Bool)

(assert (=> b!3167842 (= e!1973145 tp_is_empty!17057)))

(assert (= (and b!3167451 ((_ is ElementMatch!9747) (reg!10076 (regTwo!20006 r!13156)))) b!3167842))

(assert (= (and b!3167451 ((_ is Concat!15068) (reg!10076 (regTwo!20006 r!13156)))) b!3167843))

(assert (= (and b!3167451 ((_ is Star!9747) (reg!10076 (regTwo!20006 r!13156)))) b!3167844))

(assert (= (and b!3167451 ((_ is Union!9747) (reg!10076 (regTwo!20006 r!13156)))) b!3167845))

(declare-fun b!3167849 () Bool)

(declare-fun e!1973146 () Bool)

(declare-fun tp!998756 () Bool)

(declare-fun tp!998754 () Bool)

(assert (=> b!3167849 (= e!1973146 (and tp!998756 tp!998754))))

(declare-fun b!3167847 () Bool)

(declare-fun tp!998755 () Bool)

(declare-fun tp!998753 () Bool)

(assert (=> b!3167847 (= e!1973146 (and tp!998755 tp!998753))))

(assert (=> b!3167450 (= tp!998545 e!1973146)))

(declare-fun b!3167848 () Bool)

(declare-fun tp!998752 () Bool)

(assert (=> b!3167848 (= e!1973146 tp!998752)))

(declare-fun b!3167846 () Bool)

(assert (=> b!3167846 (= e!1973146 tp_is_empty!17057)))

(assert (= (and b!3167450 ((_ is ElementMatch!9747) (regOne!20006 (regTwo!20006 r!13156)))) b!3167846))

(assert (= (and b!3167450 ((_ is Concat!15068) (regOne!20006 (regTwo!20006 r!13156)))) b!3167847))

(assert (= (and b!3167450 ((_ is Star!9747) (regOne!20006 (regTwo!20006 r!13156)))) b!3167848))

(assert (= (and b!3167450 ((_ is Union!9747) (regOne!20006 (regTwo!20006 r!13156)))) b!3167849))

(declare-fun b!3167853 () Bool)

(declare-fun e!1973147 () Bool)

(declare-fun tp!998761 () Bool)

(declare-fun tp!998759 () Bool)

(assert (=> b!3167853 (= e!1973147 (and tp!998761 tp!998759))))

(declare-fun b!3167851 () Bool)

(declare-fun tp!998760 () Bool)

(declare-fun tp!998758 () Bool)

(assert (=> b!3167851 (= e!1973147 (and tp!998760 tp!998758))))

(assert (=> b!3167450 (= tp!998543 e!1973147)))

(declare-fun b!3167852 () Bool)

(declare-fun tp!998757 () Bool)

(assert (=> b!3167852 (= e!1973147 tp!998757)))

(declare-fun b!3167850 () Bool)

(assert (=> b!3167850 (= e!1973147 tp_is_empty!17057)))

(assert (= (and b!3167450 ((_ is ElementMatch!9747) (regTwo!20006 (regTwo!20006 r!13156)))) b!3167850))

(assert (= (and b!3167450 ((_ is Concat!15068) (regTwo!20006 (regTwo!20006 r!13156)))) b!3167851))

(assert (= (and b!3167450 ((_ is Star!9747) (regTwo!20006 (regTwo!20006 r!13156)))) b!3167852))

(assert (= (and b!3167450 ((_ is Union!9747) (regTwo!20006 (regTwo!20006 r!13156)))) b!3167853))

(declare-fun b_lambda!86439 () Bool)

(assert (= b_lambda!86435 (or (and b!3167289 b_free!83155) b_lambda!86439)))

(declare-fun b_lambda!86441 () Bool)

(assert (= b_lambda!86437 (or (and b!3167289 b_free!83155) b_lambda!86441)))

(check-sat (not d!868999) (not b!3167760) (not b!3167776) (not b!3167730) (not b!3167668) (not b!3167836) (not b!3167785) (not b!3167714) (not bm!229759) (not b!3167848) (not bm!229809) (not b!3167820) (not b!3167701) (not bm!229765) (not b!3167645) (not b!3167803) (not bm!229780) (not bm!229746) (not b!3167703) (not b!3167768) (not b!3167811) (not bm!229805) (not b!3167799) (not bm!229761) (not b!3167786) (not b!3167804) tp_is_empty!17057 (not b!3167710) (not bm!229783) (not bm!229802) (not b!3167784) (not b!3167835) (not b!3167815) (not b_next!83857) (not bm!229758) (not b!3167704) (not b!3167824) b_and!209423 (not b!3167719) (not b!3167532) (not b!3167659) (not b!3167853) (not b!3167574) (not b!3167841) (not b!3167726) (not b!3167812) (not b!3167816) (not b!3167845) (not b!3167718) (not b!3167484) (not b!3167731) (not bm!229745) (not bm!229767) (not b!3167646) (not b!3167583) (not b!3167538) (not b!3167688) (not b!3167715) (not b!3167748) (not d!868987) (not bm!229742) (not b!3167707) (not b!3167798) (not b!3167823) (not bm!229796) (not b!3167807) (not b!3167813) (not b!3167752) (not b!3167772) (not b!3167723) (not bm!229784) (not b!3167819) (not bm!229785) (not b!3167627) (not b!3167604) (not b!3167781) (not d!869009) (not b!3167694) (not b!3167656) (not b!3167802) (not b!3167833) (not tb!155103) (not b!3167832) (not b!3167847) (not b!3167770) (not b!3167849) (not b!3167762) (not d!869005) (not b!3167631) (not b!3167697) (not b!3167711) (not b!3167722) (not bm!229781) (not b_next!83859) (not d!869011) (not b!3167844) (not bm!229751) (not b!3167827) (not b!3167744) (not b!3167708) (not b!3167573) (not bm!229757) (not b!3167765) (not bm!229799) (not b!3167745) (not bm!229804) (not b!3167753) (not bm!229748) (not d!868989) (not b!3167837) b_and!209429 (not b!3167790) (not bm!229808) (not b_lambda!86439) (not b!3167713) (not b!3167487) (not b!3167793) (not b!3167764) (not b!3167493) (not b!3167644) (not b!3167795) (not b!3167695) (not b!3167729) (not b!3167852) (not b!3167702) (not b!3167717) (not b!3167780) (not b!3167821) (not b!3167782) (not d!868983) (not b!3167749) (not bm!229807) (not b!3167483) (not b!3167789) (not b!3167773) (not bm!229795) (not b!3167831) (not bm!229756) (not b!3167761) (not b!3167658) (not b!3167758) (not b!3167801) (not b!3167582) (not b!3167699) (not d!869007) (not b!3167794) (not bm!229782) (not b!3167750) (not b!3167777) (not b!3167692) (not b!3167698) (not b!3167725) (not d!869003) (not b!3167642) (not b!3167829) (not d!868975) (not d!868981) (not bm!229764) (not b!3167788) (not b!3167825) (not b!3167575) (not bm!229800) (not b!3167806) (not b!3167797) (not bm!229743) (not b!3167778) (not b!3167817) (not b!3167721) (not b!3167746) (not b!3167626) (not b!3167727) (not b!3167756) (not b!3167840) (not b!3167769) (not b!3167774) (not b!3167754) (not b!3167810) (not b!3167851) (not b!3167766) (not mapNonEmpty!18907) (not b!3167757) (not b_lambda!86441) (not b!3167808) (not b!3167689) (not b!3167843) (not b!3167706) (not b!3167690) (not b!3167839) (not b!3167542) (not b!3167792) (not b!3167828) (not b!3167712) (not d!868993) (not b!3167693))
(check-sat b_and!209429 b_and!209423 (not b_next!83857) (not b_next!83859))
