; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296504 () Bool)

(assert start!296504)

(declare-fun b!3163421 () Bool)

(declare-fun b_free!83073 () Bool)

(declare-fun b_next!83777 () Bool)

(assert (=> b!3163421 (= b_free!83073 (not b_next!83777))))

(declare-fun tp!996108 () Bool)

(declare-fun b_and!209323 () Bool)

(assert (=> b!3163421 (= tp!996108 b_and!209323)))

(declare-fun b!3163425 () Bool)

(declare-fun b_free!83075 () Bool)

(declare-fun b_next!83779 () Bool)

(assert (=> b!3163425 (= b_free!83075 (not b_next!83779))))

(declare-fun tp!996111 () Bool)

(declare-fun b_and!209325 () Bool)

(assert (=> b!3163425 (= tp!996111 b_and!209325)))

(declare-fun e!1970743 () Bool)

(declare-fun e!1970738 () Bool)

(assert (=> b!3163421 (= e!1970743 (and e!1970738 tp!996108))))

(declare-fun b!3163422 () Bool)

(declare-fun e!1970737 () Bool)

(declare-datatypes ((C!19640 0))(
  ( (C!19641 (val!11856 Int)) )
))
(declare-datatypes ((Regex!9727 0))(
  ( (ElementMatch!9727 (c!531945 C!19640)) (Concat!15048 (regOne!19966 Regex!9727) (regTwo!19966 Regex!9727)) (EmptyExpr!9727) (Star!9727 (reg!10056 Regex!9727)) (EmptyLang!9727) (Union!9727 (regOne!19967 Regex!9727) (regTwo!19967 Regex!9727)) )
))
(declare-datatypes ((tuple2!34458 0))(
  ( (tuple2!34459 (_1!20361 Regex!9727) (_2!20361 C!19640)) )
))
(declare-datatypes ((tuple2!34460 0))(
  ( (tuple2!34461 (_1!20362 tuple2!34458) (_2!20362 Regex!9727)) )
))
(declare-datatypes ((array!14788 0))(
  ( (array!14789 (arr!6586 (Array (_ BitVec 32) (_ BitVec 64))) (size!26672 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4064 0))(
  ( (HashableExt!4063 (__x!22550 Int)) )
))
(declare-datatypes ((List!35557 0))(
  ( (Nil!35433) (Cons!35433 (h!40853 tuple2!34460) (t!234626 List!35557)) )
))
(declare-datatypes ((array!14790 0))(
  ( (array!14791 (arr!6587 (Array (_ BitVec 32) List!35557)) (size!26673 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8296 0))(
  ( (LongMapFixedSize!8297 (defaultEntry!4533 Int) (mask!10805 (_ BitVec 32)) (extraKeys!4397 (_ BitVec 32)) (zeroValue!4407 List!35557) (minValue!4407 List!35557) (_size!8339 (_ BitVec 32)) (_keys!4448 array!14788) (_values!4429 array!14790) (_vacant!4209 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16401 0))(
  ( (Cell!16402 (v!35094 LongMapFixedSize!8296)) )
))
(declare-datatypes ((MutLongMap!4148 0))(
  ( (LongMap!4148 (underlying!8525 Cell!16401)) (MutLongMapExt!4147 (__x!22551 Int)) )
))
(declare-datatypes ((Cell!16403 0))(
  ( (Cell!16404 (v!35095 MutLongMap!4148)) )
))
(declare-datatypes ((MutableMap!4054 0))(
  ( (MutableMapExt!4053 (__x!22552 Int)) (HashMap!4054 (underlying!8526 Cell!16403) (hashF!6096 Hashable!4064) (_size!8340 (_ BitVec 32)) (defaultValue!4225 Int)) )
))
(declare-datatypes ((Cache!378 0))(
  ( (Cache!379 (cache!4195 MutableMap!4054)) )
))
(declare-datatypes ((tuple2!34462 0))(
  ( (tuple2!34463 (_1!20363 Regex!9727) (_2!20363 Cache!378)) )
))
(declare-fun e!1970740 () tuple2!34462)

(declare-fun validCacheMap!51 (MutableMap!4054) Bool)

(assert (=> b!3163422 (= e!1970737 (not (validCacheMap!51 (cache!4195 (_2!20363 e!1970740)))))))

(declare-fun c!531944 () Bool)

(declare-fun r!13156 () Regex!9727)

(get-info :version)

(assert (=> b!3163422 (= c!531944 (or ((_ is EmptyExpr!9727) r!13156) ((_ is EmptyLang!9727) r!13156)))))

(declare-fun b!3163423 () Bool)

(declare-fun res!1287577 () Bool)

(assert (=> b!3163423 (=> (not res!1287577) (not e!1970737))))

(declare-fun cache!347 () Cache!378)

(declare-fun a!2409 () C!19640)

(declare-datatypes ((Option!6887 0))(
  ( (None!6886) (Some!6886 (v!35096 Regex!9727)) )
))
(declare-fun get!11223 (Cache!378 Regex!9727 C!19640) Option!6887)

(assert (=> b!3163423 (= res!1287577 (not ((_ is Some!6886) (get!11223 cache!347 r!13156 a!2409))))))

(declare-fun b!3163424 () Bool)

(declare-fun res!1287579 () Bool)

(assert (=> b!3163424 (=> (not res!1287579) (not e!1970737))))

(declare-fun valid!3230 (Cache!378) Bool)

(assert (=> b!3163424 (= res!1287579 (valid!3230 cache!347))))

(declare-fun e!1970735 () tuple2!34462)

(declare-fun lt!1063475 () tuple2!34462)

(declare-fun b!3163426 () Bool)

(declare-fun lt!1063469 () tuple2!34462)

(assert (=> b!3163426 (= e!1970735 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063475) (regTwo!19966 r!13156)) (_1!20363 lt!1063469)) (_2!20363 lt!1063469)))))

(declare-fun call!229169 () tuple2!34462)

(assert (=> b!3163426 (= lt!1063475 call!229169)))

(declare-fun call!229171 () tuple2!34462)

(assert (=> b!3163426 (= lt!1063469 call!229171)))

(declare-fun b!3163427 () Bool)

(declare-fun lt!1063471 () tuple2!34462)

(assert (=> b!3163427 (= e!1970735 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063471) (regTwo!19966 r!13156)) EmptyLang!9727) (_2!20363 lt!1063471)))))

(assert (=> b!3163427 (= lt!1063471 call!229171)))

(declare-fun bm!229164 () Bool)

(declare-fun call!229172 () tuple2!34462)

(assert (=> bm!229164 (= call!229169 call!229172)))

(declare-fun b!3163428 () Bool)

(declare-fun lt!1063472 () tuple2!34462)

(assert (=> b!3163428 (= lt!1063472 call!229169)))

(declare-fun e!1970739 () tuple2!34462)

(assert (=> b!3163428 (= e!1970739 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063472) (Star!9727 (reg!10056 r!13156))) (_2!20363 lt!1063472)))))

(declare-fun c!531943 () Bool)

(declare-fun bm!229165 () Bool)

(declare-fun c!531942 () Bool)

(declare-fun derivativeStepMem!23 (Regex!9727 C!19640 Cache!378) tuple2!34462)

(assert (=> bm!229165 (= call!229172 (derivativeStepMem!23 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409 cache!347))))

(declare-fun bm!229166 () Bool)

(declare-fun call!229170 () tuple2!34462)

(assert (=> bm!229166 (= call!229171 call!229170)))

(declare-fun b!3163429 () Bool)

(assert (=> b!3163429 (= e!1970740 (tuple2!34463 EmptyLang!9727 cache!347))))

(declare-fun b!3163430 () Bool)

(declare-fun c!531941 () Bool)

(declare-fun nullable!3337 (Regex!9727) Bool)

(assert (=> b!3163430 (= c!531941 (nullable!3337 (regOne!19966 r!13156)))))

(assert (=> b!3163430 (= e!1970739 e!1970735)))

(declare-fun bm!229167 () Bool)

(declare-fun lt!1063474 () tuple2!34462)

(assert (=> bm!229167 (= call!229170 (derivativeStepMem!23 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))

(declare-fun b!3163431 () Bool)

(declare-fun e!1970731 () Bool)

(assert (=> b!3163431 (= e!1970731 e!1970743)))

(declare-fun b!3163432 () Bool)

(declare-fun e!1970736 () tuple2!34462)

(declare-fun lt!1063470 () tuple2!34462)

(assert (=> b!3163432 (= e!1970736 (tuple2!34463 (Union!9727 (_1!20363 lt!1063474) (_1!20363 lt!1063470)) (_2!20363 lt!1063470)))))

(assert (=> b!3163432 (= lt!1063474 call!229172)))

(assert (=> b!3163432 (= lt!1063470 call!229170)))

(declare-fun b!3163433 () Bool)

(declare-fun e!1970734 () Bool)

(declare-fun tp_is_empty!17017 () Bool)

(assert (=> b!3163433 (= e!1970734 tp_is_empty!17017)))

(declare-fun b!3163434 () Bool)

(declare-fun e!1970732 () Bool)

(declare-fun tp!996110 () Bool)

(declare-fun mapRes!18814 () Bool)

(assert (=> b!3163434 (= e!1970732 (and tp!996110 mapRes!18814))))

(declare-fun condMapEmpty!18814 () Bool)

(declare-fun mapDefault!18814 () List!35557)

(assert (=> b!3163434 (= condMapEmpty!18814 (= (arr!6587 (_values!4429 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) ((as const (Array (_ BitVec 32) List!35557)) mapDefault!18814)))))

(declare-fun b!3163435 () Bool)

(declare-fun tp!996105 () Bool)

(declare-fun tp!996114 () Bool)

(assert (=> b!3163435 (= e!1970734 (and tp!996105 tp!996114))))

(declare-fun b!3163436 () Bool)

(declare-fun e!1970733 () Bool)

(declare-fun e!1970741 () Bool)

(assert (=> b!3163436 (= e!1970733 e!1970741)))

(declare-fun mapNonEmpty!18814 () Bool)

(declare-fun tp!996112 () Bool)

(declare-fun tp!996109 () Bool)

(assert (=> mapNonEmpty!18814 (= mapRes!18814 (and tp!996112 tp!996109))))

(declare-fun mapRest!18814 () (Array (_ BitVec 32) List!35557))

(declare-fun mapValue!18814 () List!35557)

(declare-fun mapKey!18814 () (_ BitVec 32))

(assert (=> mapNonEmpty!18814 (= (arr!6587 (_values!4429 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) (store mapRest!18814 mapKey!18814 mapValue!18814))))

(declare-fun b!3163437 () Bool)

(declare-fun e!1970744 () tuple2!34462)

(assert (=> b!3163437 (= e!1970740 e!1970744)))

(declare-fun c!531940 () Bool)

(assert (=> b!3163437 (= c!531940 ((_ is ElementMatch!9727) r!13156))))

(declare-fun b!3163438 () Bool)

(declare-fun tp!996104 () Bool)

(declare-fun tp!996115 () Bool)

(assert (=> b!3163438 (= e!1970734 (and tp!996104 tp!996115))))

(declare-fun b!3163439 () Bool)

(assert (=> b!3163439 (= c!531943 ((_ is Union!9727) r!13156))))

(assert (=> b!3163439 (= e!1970744 e!1970736)))

(declare-fun b!3163440 () Bool)

(declare-fun lt!1063473 () MutLongMap!4148)

(assert (=> b!3163440 (= e!1970738 (and e!1970733 ((_ is LongMap!4148) lt!1063473)))))

(assert (=> b!3163440 (= lt!1063473 (v!35095 (underlying!8526 (cache!4195 cache!347))))))

(declare-fun res!1287578 () Bool)

(assert (=> start!296504 (=> (not res!1287578) (not e!1970737))))

(declare-fun validRegex!4452 (Regex!9727) Bool)

(assert (=> start!296504 (= res!1287578 (validRegex!4452 r!13156))))

(assert (=> start!296504 e!1970737))

(assert (=> start!296504 e!1970734))

(declare-fun inv!48090 (Cache!378) Bool)

(assert (=> start!296504 (and (inv!48090 cache!347) e!1970731)))

(assert (=> start!296504 tp_is_empty!17017))

(declare-fun e!1970742 () Bool)

(declare-fun tp!996107 () Bool)

(declare-fun tp!996106 () Bool)

(declare-fun array_inv!4718 (array!14788) Bool)

(declare-fun array_inv!4719 (array!14790) Bool)

(assert (=> b!3163425 (= e!1970742 (and tp!996111 tp!996107 tp!996106 (array_inv!4718 (_keys!4448 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) (array_inv!4719 (_values!4429 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) e!1970732))))

(declare-fun b!3163441 () Bool)

(assert (=> b!3163441 (= e!1970741 e!1970742)))

(declare-fun mapIsEmpty!18814 () Bool)

(assert (=> mapIsEmpty!18814 mapRes!18814))

(declare-fun b!3163442 () Bool)

(assert (=> b!3163442 (= e!1970736 e!1970739)))

(assert (=> b!3163442 (= c!531942 ((_ is Star!9727) r!13156))))

(declare-fun b!3163443 () Bool)

(declare-fun tp!996113 () Bool)

(assert (=> b!3163443 (= e!1970734 tp!996113)))

(declare-fun b!3163444 () Bool)

(assert (=> b!3163444 (= e!1970744 (tuple2!34463 (ite (= a!2409 (c!531945 r!13156)) EmptyExpr!9727 EmptyLang!9727) cache!347))))

(assert (= (and start!296504 res!1287578) b!3163424))

(assert (= (and b!3163424 res!1287579) b!3163423))

(assert (= (and b!3163423 res!1287577) b!3163422))

(assert (= (and b!3163422 c!531944) b!3163429))

(assert (= (and b!3163422 (not c!531944)) b!3163437))

(assert (= (and b!3163437 c!531940) b!3163444))

(assert (= (and b!3163437 (not c!531940)) b!3163439))

(assert (= (and b!3163439 c!531943) b!3163432))

(assert (= (and b!3163439 (not c!531943)) b!3163442))

(assert (= (and b!3163442 c!531942) b!3163428))

(assert (= (and b!3163442 (not c!531942)) b!3163430))

(assert (= (and b!3163430 c!531941) b!3163426))

(assert (= (and b!3163430 (not c!531941)) b!3163427))

(assert (= (or b!3163426 b!3163427) bm!229166))

(assert (= (or b!3163428 b!3163426) bm!229164))

(assert (= (or b!3163432 bm!229166) bm!229167))

(assert (= (or b!3163432 bm!229164) bm!229165))

(assert (= (and start!296504 ((_ is ElementMatch!9727) r!13156)) b!3163433))

(assert (= (and start!296504 ((_ is Concat!15048) r!13156)) b!3163438))

(assert (= (and start!296504 ((_ is Star!9727) r!13156)) b!3163443))

(assert (= (and start!296504 ((_ is Union!9727) r!13156)) b!3163435))

(assert (= (and b!3163434 condMapEmpty!18814) mapIsEmpty!18814))

(assert (= (and b!3163434 (not condMapEmpty!18814)) mapNonEmpty!18814))

(assert (= b!3163425 b!3163434))

(assert (= b!3163441 b!3163425))

(assert (= b!3163436 b!3163441))

(assert (= (and b!3163440 ((_ is LongMap!4148) (v!35095 (underlying!8526 (cache!4195 cache!347))))) b!3163436))

(assert (= b!3163421 b!3163440))

(assert (= (and b!3163431 ((_ is HashMap!4054) (cache!4195 cache!347))) b!3163421))

(assert (= start!296504 b!3163431))

(declare-fun m!3426743 () Bool)

(assert (=> mapNonEmpty!18814 m!3426743))

(declare-fun m!3426745 () Bool)

(assert (=> b!3163430 m!3426745))

(declare-fun m!3426747 () Bool)

(assert (=> b!3163423 m!3426747))

(declare-fun m!3426749 () Bool)

(assert (=> start!296504 m!3426749))

(declare-fun m!3426751 () Bool)

(assert (=> start!296504 m!3426751))

(declare-fun m!3426753 () Bool)

(assert (=> b!3163425 m!3426753))

(declare-fun m!3426755 () Bool)

(assert (=> b!3163425 m!3426755))

(declare-fun m!3426757 () Bool)

(assert (=> b!3163424 m!3426757))

(declare-fun m!3426759 () Bool)

(assert (=> bm!229165 m!3426759))

(declare-fun m!3426761 () Bool)

(assert (=> bm!229167 m!3426761))

(declare-fun m!3426763 () Bool)

(assert (=> b!3163422 m!3426763))

(check-sat (not b!3163430) tp_is_empty!17017 b_and!209323 (not b!3163443) (not bm!229167) (not b!3163423) (not b!3163435) (not mapNonEmpty!18814) (not bm!229165) (not b!3163422) (not b!3163425) b_and!209325 (not b_next!83777) (not start!296504) (not b!3163424) (not b!3163434) (not b!3163438) (not b_next!83779))
(check-sat b_and!209323 b_and!209325 (not b_next!83779) (not b_next!83777))
(get-model)

(declare-fun d!868623 () Bool)

(declare-fun res!1287586 () Bool)

(declare-fun e!1970750 () Bool)

(assert (=> d!868623 (=> (not res!1287586) (not e!1970750))))

(declare-fun valid!3231 (MutableMap!4054) Bool)

(assert (=> d!868623 (= res!1287586 (valid!3231 (cache!4195 (_2!20363 e!1970740))))))

(assert (=> d!868623 (= (validCacheMap!51 (cache!4195 (_2!20363 e!1970740))) e!1970750)))

(declare-fun b!3163451 () Bool)

(declare-fun res!1287587 () Bool)

(assert (=> b!3163451 (=> (not res!1287587) (not e!1970750))))

(declare-fun invariantList!477 (List!35557) Bool)

(declare-datatypes ((ListMap!1295 0))(
  ( (ListMap!1296 (toList!2049 List!35557)) )
))
(declare-fun map!7888 (MutableMap!4054) ListMap!1295)

(assert (=> b!3163451 (= res!1287587 (invariantList!477 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))))))

(declare-fun b!3163452 () Bool)

(declare-fun lambda!115790 () Int)

(declare-fun forall!7142 (List!35557 Int) Bool)

(assert (=> b!3163452 (= e!1970750 (forall!7142 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740)))) lambda!115790))))

(assert (= (and d!868623 res!1287586) b!3163451))

(assert (= (and b!3163451 res!1287587) b!3163452))

(declare-fun m!3426766 () Bool)

(assert (=> d!868623 m!3426766))

(declare-fun m!3426768 () Bool)

(assert (=> b!3163451 m!3426768))

(declare-fun m!3426770 () Bool)

(assert (=> b!3163451 m!3426770))

(assert (=> b!3163452 m!3426768))

(declare-fun m!3426772 () Bool)

(assert (=> b!3163452 m!3426772))

(assert (=> b!3163422 d!868623))

(declare-fun b!3163472 () Bool)

(declare-fun res!1287598 () Bool)

(declare-fun e!1970767 () Bool)

(assert (=> b!3163472 (=> (not res!1287598) (not e!1970767))))

(declare-fun call!229179 () Bool)

(assert (=> b!3163472 (= res!1287598 call!229179)))

(declare-fun e!1970771 () Bool)

(assert (=> b!3163472 (= e!1970771 e!1970767)))

(declare-fun b!3163473 () Bool)

(declare-fun e!1970769 () Bool)

(declare-fun e!1970765 () Bool)

(assert (=> b!3163473 (= e!1970769 e!1970765)))

(declare-fun res!1287602 () Bool)

(assert (=> b!3163473 (= res!1287602 (not (nullable!3337 (reg!10056 r!13156))))))

(assert (=> b!3163473 (=> (not res!1287602) (not e!1970765))))

(declare-fun b!3163474 () Bool)

(declare-fun call!229181 () Bool)

(assert (=> b!3163474 (= e!1970765 call!229181)))

(declare-fun b!3163475 () Bool)

(declare-fun e!1970768 () Bool)

(declare-fun call!229180 () Bool)

(assert (=> b!3163475 (= e!1970768 call!229180)))

(declare-fun c!531951 () Bool)

(declare-fun bm!229174 () Bool)

(declare-fun c!531950 () Bool)

(assert (=> bm!229174 (= call!229181 (validRegex!4452 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))))))

(declare-fun bm!229175 () Bool)

(assert (=> bm!229175 (= call!229180 (validRegex!4452 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))))))

(declare-fun b!3163476 () Bool)

(declare-fun e!1970770 () Bool)

(assert (=> b!3163476 (= e!1970770 e!1970769)))

(assert (=> b!3163476 (= c!531950 ((_ is Star!9727) r!13156))))

(declare-fun b!3163477 () Bool)

(declare-fun e!1970766 () Bool)

(assert (=> b!3163477 (= e!1970766 e!1970768)))

(declare-fun res!1287601 () Bool)

(assert (=> b!3163477 (=> (not res!1287601) (not e!1970768))))

(assert (=> b!3163477 (= res!1287601 call!229179)))

(declare-fun bm!229176 () Bool)

(assert (=> bm!229176 (= call!229179 call!229181)))

(declare-fun d!868625 () Bool)

(declare-fun res!1287600 () Bool)

(assert (=> d!868625 (=> res!1287600 e!1970770)))

(assert (=> d!868625 (= res!1287600 ((_ is ElementMatch!9727) r!13156))))

(assert (=> d!868625 (= (validRegex!4452 r!13156) e!1970770)))

(declare-fun b!3163471 () Bool)

(declare-fun res!1287599 () Bool)

(assert (=> b!3163471 (=> res!1287599 e!1970766)))

(assert (=> b!3163471 (= res!1287599 (not ((_ is Concat!15048) r!13156)))))

(assert (=> b!3163471 (= e!1970771 e!1970766)))

(declare-fun b!3163478 () Bool)

(assert (=> b!3163478 (= e!1970767 call!229180)))

(declare-fun b!3163479 () Bool)

(assert (=> b!3163479 (= e!1970769 e!1970771)))

(assert (=> b!3163479 (= c!531951 ((_ is Union!9727) r!13156))))

(assert (= (and d!868625 (not res!1287600)) b!3163476))

(assert (= (and b!3163476 c!531950) b!3163473))

(assert (= (and b!3163476 (not c!531950)) b!3163479))

(assert (= (and b!3163473 res!1287602) b!3163474))

(assert (= (and b!3163479 c!531951) b!3163472))

(assert (= (and b!3163479 (not c!531951)) b!3163471))

(assert (= (and b!3163472 res!1287598) b!3163478))

(assert (= (and b!3163471 (not res!1287599)) b!3163477))

(assert (= (and b!3163477 res!1287601) b!3163475))

(assert (= (or b!3163472 b!3163477) bm!229176))

(assert (= (or b!3163478 b!3163475) bm!229175))

(assert (= (or b!3163474 bm!229176) bm!229174))

(declare-fun m!3426774 () Bool)

(assert (=> b!3163473 m!3426774))

(declare-fun m!3426776 () Bool)

(assert (=> bm!229174 m!3426776))

(declare-fun m!3426778 () Bool)

(assert (=> bm!229175 m!3426778))

(assert (=> start!296504 d!868625))

(declare-fun d!868627 () Bool)

(declare-fun res!1287605 () Bool)

(declare-fun e!1970774 () Bool)

(assert (=> d!868627 (=> (not res!1287605) (not e!1970774))))

(assert (=> d!868627 (= res!1287605 ((_ is HashMap!4054) (cache!4195 cache!347)))))

(assert (=> d!868627 (= (inv!48090 cache!347) e!1970774)))

(declare-fun b!3163482 () Bool)

(assert (=> b!3163482 (= e!1970774 (validCacheMap!51 (cache!4195 cache!347)))))

(assert (= (and d!868627 res!1287605) b!3163482))

(declare-fun m!3426780 () Bool)

(assert (=> b!3163482 m!3426780))

(assert (=> start!296504 d!868627))

(declare-fun d!868629 () Bool)

(assert (=> d!868629 (= (array_inv!4718 (_keys!4448 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) (bvsge (size!26672 (_keys!4448 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3163425 d!868629))

(declare-fun d!868631 () Bool)

(assert (=> d!868631 (= (array_inv!4719 (_values!4429 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) (bvsge (size!26673 (_values!4429 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3163425 d!868631))

(declare-fun b!3163507 () Bool)

(declare-fun lt!1063500 () tuple2!34462)

(declare-fun e!1970789 () tuple2!34462)

(assert (=> b!3163507 (= e!1970789 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063500) (Star!9727 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) (_2!20363 lt!1063500)))))

(declare-fun call!229190 () tuple2!34462)

(assert (=> b!3163507 (= lt!1063500 call!229190)))

(declare-fun bm!229185 () Bool)

(declare-fun call!229191 () tuple2!34462)

(assert (=> bm!229185 (= call!229190 call!229191)))

(declare-fun lt!1063502 () tuple2!34462)

(declare-fun d!868633 () Bool)

(declare-fun derivativeStep!2886 (Regex!9727 C!19640) Regex!9727)

(assert (=> d!868633 (= (_1!20363 lt!1063502) (derivativeStep!2886 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409))))

(declare-fun e!1970791 () tuple2!34462)

(assert (=> d!868633 (= lt!1063502 e!1970791)))

(declare-fun c!531967 () Bool)

(declare-fun lt!1063497 () Option!6887)

(assert (=> d!868633 (= c!531967 ((_ is Some!6886) lt!1063497))))

(assert (=> d!868633 (= lt!1063497 (get!11223 cache!347 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409))))

(assert (=> d!868633 (validRegex!4452 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))

(assert (=> d!868633 (= (derivativeStepMem!23 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409 cache!347) lt!1063502)))

(declare-fun b!3163508 () Bool)

(assert (=> b!3163508 (= e!1970791 (tuple2!34463 (v!35096 lt!1063497) cache!347))))

(declare-fun b!3163509 () Bool)

(declare-fun lt!1063498 () tuple2!34462)

(assert (=> b!3163509 (= lt!1063498 call!229191)))

(declare-fun lt!1063501 () tuple2!34462)

(declare-fun call!229193 () tuple2!34462)

(assert (=> b!3163509 (= lt!1063501 call!229193)))

(declare-fun e!1970790 () tuple2!34462)

(assert (=> b!3163509 (= e!1970790 (tuple2!34463 (Union!9727 (_1!20363 lt!1063501) (_1!20363 lt!1063498)) (_2!20363 lt!1063498)))))

(declare-fun b!3163510 () Bool)

(declare-fun e!1970792 () tuple2!34462)

(assert (=> b!3163510 (= e!1970792 e!1970790)))

(declare-fun c!531966 () Bool)

(assert (=> b!3163510 (= c!531966 ((_ is Union!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(declare-fun b!3163511 () Bool)

(declare-fun e!1970787 () tuple2!34462)

(assert (=> b!3163511 (= e!1970787 (tuple2!34463 EmptyLang!9727 cache!347))))

(declare-fun b!3163512 () Bool)

(declare-fun lt!1063496 () tuple2!34462)

(declare-fun call!229192 () tuple2!34462)

(assert (=> b!3163512 (= lt!1063496 call!229192)))

(declare-fun lt!1063495 () tuple2!34462)

(assert (=> b!3163512 (= lt!1063495 call!229190)))

(declare-fun e!1970788 () tuple2!34462)

(assert (=> b!3163512 (= e!1970788 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063495) (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) (_1!20363 lt!1063496)) (_2!20363 lt!1063496)))))

(declare-fun lt!1063494 () tuple2!34462)

(declare-fun b!3163513 () Bool)

(declare-datatypes ((Unit!49786 0))(
  ( (Unit!49787) )
))
(declare-datatypes ((tuple2!34464 0))(
  ( (tuple2!34465 (_1!20364 Unit!49786) (_2!20364 Cache!378)) )
))
(declare-fun update!263 (Cache!378 Regex!9727 C!19640 Regex!9727) tuple2!34464)

(assert (=> b!3163513 (= e!1970791 (tuple2!34463 (_1!20363 lt!1063494) (_2!20364 (update!263 (_2!20363 lt!1063494) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409 (_1!20363 lt!1063494)))))))

(declare-fun c!531968 () Bool)

(assert (=> b!3163513 (= c!531968 (or ((_ is EmptyExpr!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) ((_ is EmptyLang!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))

(assert (=> b!3163513 (= lt!1063494 e!1970787)))

(declare-fun b!3163514 () Bool)

(assert (=> b!3163514 (= e!1970789 e!1970788)))

(declare-fun c!531969 () Bool)

(assert (=> b!3163514 (= c!531969 (nullable!3337 (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))

(declare-fun c!531965 () Bool)

(declare-fun b!3163515 () Bool)

(assert (=> b!3163515 (= c!531965 ((_ is Star!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(assert (=> b!3163515 (= e!1970790 e!1970789)))

(declare-fun c!531964 () Bool)

(declare-fun b!3163516 () Bool)

(assert (=> b!3163516 (= c!531964 ((_ is ElementMatch!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(assert (=> b!3163516 (= e!1970787 e!1970792)))

(declare-fun b!3163517 () Bool)

(assert (=> b!3163517 (= e!1970792 (tuple2!34463 (ite (= a!2409 (c!531945 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) EmptyExpr!9727 EmptyLang!9727) cache!347))))

(declare-fun b!3163518 () Bool)

(declare-fun lt!1063499 () tuple2!34462)

(assert (=> b!3163518 (= lt!1063499 call!229192)))

(assert (=> b!3163518 (= e!1970788 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063499) (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) EmptyLang!9727) (_2!20363 lt!1063499)))))

(declare-fun bm!229186 () Bool)

(assert (=> bm!229186 (= call!229191 (derivativeStepMem!23 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531966 (_2!20363 lt!1063501) cache!347)))))

(declare-fun bm!229187 () Bool)

(assert (=> bm!229187 (= call!229193 (derivativeStepMem!23 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347))))))

(declare-fun bm!229188 () Bool)

(assert (=> bm!229188 (= call!229192 call!229193)))

(assert (= (and d!868633 c!531967) b!3163508))

(assert (= (and d!868633 (not c!531967)) b!3163513))

(assert (= (and b!3163513 c!531968) b!3163511))

(assert (= (and b!3163513 (not c!531968)) b!3163516))

(assert (= (and b!3163516 c!531964) b!3163517))

(assert (= (and b!3163516 (not c!531964)) b!3163510))

(assert (= (and b!3163510 c!531966) b!3163509))

(assert (= (and b!3163510 (not c!531966)) b!3163515))

(assert (= (and b!3163515 c!531965) b!3163507))

(assert (= (and b!3163515 (not c!531965)) b!3163514))

(assert (= (and b!3163514 c!531969) b!3163512))

(assert (= (and b!3163514 (not c!531969)) b!3163518))

(assert (= (or b!3163512 b!3163518) bm!229188))

(assert (= (or b!3163507 b!3163512) bm!229185))

(assert (= (or b!3163509 bm!229188) bm!229187))

(assert (= (or b!3163509 bm!229185) bm!229186))

(declare-fun m!3426782 () Bool)

(assert (=> bm!229187 m!3426782))

(declare-fun m!3426784 () Bool)

(assert (=> bm!229186 m!3426784))

(declare-fun m!3426786 () Bool)

(assert (=> b!3163514 m!3426786))

(declare-fun m!3426788 () Bool)

(assert (=> b!3163513 m!3426788))

(declare-fun m!3426790 () Bool)

(assert (=> d!868633 m!3426790))

(declare-fun m!3426792 () Bool)

(assert (=> d!868633 m!3426792))

(declare-fun m!3426794 () Bool)

(assert (=> d!868633 m!3426794))

(assert (=> bm!229165 d!868633))

(declare-fun d!868635 () Bool)

(assert (=> d!868635 (= (valid!3230 cache!347) (validCacheMap!51 (cache!4195 cache!347)))))

(declare-fun bs!539469 () Bool)

(assert (= bs!539469 d!868635))

(assert (=> bs!539469 m!3426780))

(assert (=> b!3163424 d!868635))

(declare-fun d!868637 () Bool)

(declare-fun e!1970797 () Bool)

(assert (=> d!868637 e!1970797))

(declare-fun res!1287608 () Bool)

(assert (=> d!868637 (=> res!1287608 e!1970797)))

(declare-fun lt!1063508 () Option!6887)

(declare-fun isEmpty!19753 (Option!6887) Bool)

(assert (=> d!868637 (= res!1287608 (isEmpty!19753 lt!1063508))))

(declare-fun e!1970798 () Option!6887)

(assert (=> d!868637 (= lt!1063508 e!1970798)))

(declare-fun c!531973 () Bool)

(declare-fun contains!6156 (MutableMap!4054 tuple2!34458) Bool)

(assert (=> d!868637 (= c!531973 (contains!6156 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409)))))

(assert (=> d!868637 (validRegex!4452 r!13156)))

(assert (=> d!868637 (= (get!11223 cache!347 r!13156 a!2409) lt!1063508)))

(declare-fun b!3163525 () Bool)

(declare-fun apply!7939 (MutableMap!4054 tuple2!34458) Regex!9727)

(assert (=> b!3163525 (= e!1970798 (Some!6886 (apply!7939 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409))))))

(declare-fun lt!1063507 () Unit!49786)

(declare-fun lemmaIfInCacheThenValid!51 (Cache!378 Regex!9727 C!19640) Unit!49786)

(assert (=> b!3163525 (= lt!1063507 (lemmaIfInCacheThenValid!51 cache!347 r!13156 a!2409))))

(declare-fun b!3163526 () Bool)

(assert (=> b!3163526 (= e!1970798 None!6886)))

(declare-fun b!3163527 () Bool)

(declare-fun get!11224 (Option!6887) Regex!9727)

(assert (=> b!3163527 (= e!1970797 (= (get!11224 lt!1063508) (derivativeStep!2886 r!13156 a!2409)))))

(assert (= (and d!868637 c!531973) b!3163525))

(assert (= (and d!868637 (not c!531973)) b!3163526))

(assert (= (and d!868637 (not res!1287608)) b!3163527))

(declare-fun m!3426796 () Bool)

(assert (=> d!868637 m!3426796))

(declare-fun m!3426798 () Bool)

(assert (=> d!868637 m!3426798))

(assert (=> d!868637 m!3426749))

(declare-fun m!3426800 () Bool)

(assert (=> b!3163525 m!3426800))

(declare-fun m!3426802 () Bool)

(assert (=> b!3163525 m!3426802))

(declare-fun m!3426804 () Bool)

(assert (=> b!3163527 m!3426804))

(declare-fun m!3426806 () Bool)

(assert (=> b!3163527 m!3426806))

(assert (=> b!3163423 d!868637))

(declare-fun b!3163528 () Bool)

(declare-fun lt!1063515 () tuple2!34462)

(declare-fun e!1970801 () tuple2!34462)

(assert (=> b!3163528 (= e!1970801 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063515) (Star!9727 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) (_2!20363 lt!1063515)))))

(declare-fun call!229194 () tuple2!34462)

(assert (=> b!3163528 (= lt!1063515 call!229194)))

(declare-fun bm!229189 () Bool)

(declare-fun call!229195 () tuple2!34462)

(assert (=> bm!229189 (= call!229194 call!229195)))

(declare-fun d!868639 () Bool)

(declare-fun lt!1063517 () tuple2!34462)

(assert (=> d!868639 (= (_1!20363 lt!1063517) (derivativeStep!2886 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409))))

(declare-fun e!1970803 () tuple2!34462)

(assert (=> d!868639 (= lt!1063517 e!1970803)))

(declare-fun c!531977 () Bool)

(declare-fun lt!1063512 () Option!6887)

(assert (=> d!868639 (= c!531977 ((_ is Some!6886) lt!1063512))))

(assert (=> d!868639 (= lt!1063512 (get!11223 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409))))

(assert (=> d!868639 (validRegex!4452 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))

(assert (=> d!868639 (= (derivativeStepMem!23 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))) lt!1063517)))

(declare-fun b!3163529 () Bool)

(assert (=> b!3163529 (= e!1970803 (tuple2!34463 (v!35096 lt!1063512) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))

(declare-fun b!3163530 () Bool)

(declare-fun lt!1063513 () tuple2!34462)

(assert (=> b!3163530 (= lt!1063513 call!229195)))

(declare-fun lt!1063516 () tuple2!34462)

(declare-fun call!229197 () tuple2!34462)

(assert (=> b!3163530 (= lt!1063516 call!229197)))

(declare-fun e!1970802 () tuple2!34462)

(assert (=> b!3163530 (= e!1970802 (tuple2!34463 (Union!9727 (_1!20363 lt!1063516) (_1!20363 lt!1063513)) (_2!20363 lt!1063513)))))

(declare-fun b!3163531 () Bool)

(declare-fun e!1970804 () tuple2!34462)

(assert (=> b!3163531 (= e!1970804 e!1970802)))

(declare-fun c!531976 () Bool)

(assert (=> b!3163531 (= c!531976 ((_ is Union!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(declare-fun e!1970799 () tuple2!34462)

(declare-fun b!3163532 () Bool)

(assert (=> b!3163532 (= e!1970799 (tuple2!34463 EmptyLang!9727 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))

(declare-fun b!3163533 () Bool)

(declare-fun lt!1063511 () tuple2!34462)

(declare-fun call!229196 () tuple2!34462)

(assert (=> b!3163533 (= lt!1063511 call!229196)))

(declare-fun lt!1063510 () tuple2!34462)

(assert (=> b!3163533 (= lt!1063510 call!229194)))

(declare-fun e!1970800 () tuple2!34462)

(assert (=> b!3163533 (= e!1970800 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063510) (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) (_1!20363 lt!1063511)) (_2!20363 lt!1063511)))))

(declare-fun lt!1063509 () tuple2!34462)

(declare-fun b!3163534 () Bool)

(assert (=> b!3163534 (= e!1970803 (tuple2!34463 (_1!20363 lt!1063509) (_2!20364 (update!263 (_2!20363 lt!1063509) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409 (_1!20363 lt!1063509)))))))

(declare-fun c!531978 () Bool)

(assert (=> b!3163534 (= c!531978 (or ((_ is EmptyExpr!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) ((_ is EmptyLang!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))

(assert (=> b!3163534 (= lt!1063509 e!1970799)))

(declare-fun b!3163535 () Bool)

(assert (=> b!3163535 (= e!1970801 e!1970800)))

(declare-fun c!531979 () Bool)

(assert (=> b!3163535 (= c!531979 (nullable!3337 (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))

(declare-fun c!531975 () Bool)

(declare-fun b!3163536 () Bool)

(assert (=> b!3163536 (= c!531975 ((_ is Star!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(assert (=> b!3163536 (= e!1970802 e!1970801)))

(declare-fun b!3163537 () Bool)

(declare-fun c!531974 () Bool)

(assert (=> b!3163537 (= c!531974 ((_ is ElementMatch!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(assert (=> b!3163537 (= e!1970799 e!1970804)))

(declare-fun b!3163538 () Bool)

(assert (=> b!3163538 (= e!1970804 (tuple2!34463 (ite (= a!2409 (c!531945 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) EmptyExpr!9727 EmptyLang!9727) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))

(declare-fun b!3163539 () Bool)

(declare-fun lt!1063514 () tuple2!34462)

(assert (=> b!3163539 (= lt!1063514 call!229196)))

(assert (=> b!3163539 (= e!1970800 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063514) (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) EmptyLang!9727) (_2!20363 lt!1063514)))))

(declare-fun bm!229190 () Bool)

(assert (=> bm!229190 (= call!229195 (derivativeStepMem!23 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))))))

(declare-fun bm!229191 () Bool)

(assert (=> bm!229191 (= call!229197 (derivativeStepMem!23 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))

(declare-fun bm!229192 () Bool)

(assert (=> bm!229192 (= call!229196 call!229197)))

(assert (= (and d!868639 c!531977) b!3163529))

(assert (= (and d!868639 (not c!531977)) b!3163534))

(assert (= (and b!3163534 c!531978) b!3163532))

(assert (= (and b!3163534 (not c!531978)) b!3163537))

(assert (= (and b!3163537 c!531974) b!3163538))

(assert (= (and b!3163537 (not c!531974)) b!3163531))

(assert (= (and b!3163531 c!531976) b!3163530))

(assert (= (and b!3163531 (not c!531976)) b!3163536))

(assert (= (and b!3163536 c!531975) b!3163528))

(assert (= (and b!3163536 (not c!531975)) b!3163535))

(assert (= (and b!3163535 c!531979) b!3163533))

(assert (= (and b!3163535 (not c!531979)) b!3163539))

(assert (= (or b!3163533 b!3163539) bm!229192))

(assert (= (or b!3163528 b!3163533) bm!229189))

(assert (= (or b!3163530 bm!229192) bm!229191))

(assert (= (or b!3163530 bm!229189) bm!229190))

(declare-fun m!3426808 () Bool)

(assert (=> bm!229191 m!3426808))

(declare-fun m!3426810 () Bool)

(assert (=> bm!229190 m!3426810))

(declare-fun m!3426812 () Bool)

(assert (=> b!3163535 m!3426812))

(declare-fun m!3426814 () Bool)

(assert (=> b!3163534 m!3426814))

(declare-fun m!3426816 () Bool)

(assert (=> d!868639 m!3426816))

(declare-fun m!3426818 () Bool)

(assert (=> d!868639 m!3426818))

(declare-fun m!3426820 () Bool)

(assert (=> d!868639 m!3426820))

(assert (=> bm!229167 d!868639))

(declare-fun d!868641 () Bool)

(declare-fun nullableFct!948 (Regex!9727) Bool)

(assert (=> d!868641 (= (nullable!3337 (regOne!19966 r!13156)) (nullableFct!948 (regOne!19966 r!13156)))))

(declare-fun bs!539470 () Bool)

(assert (= bs!539470 d!868641))

(declare-fun m!3426822 () Bool)

(assert (=> bs!539470 m!3426822))

(assert (=> b!3163430 d!868641))

(declare-fun b!3163552 () Bool)

(declare-fun e!1970807 () Bool)

(declare-fun tp!996126 () Bool)

(assert (=> b!3163552 (= e!1970807 tp!996126)))

(declare-fun b!3163551 () Bool)

(declare-fun tp!996127 () Bool)

(declare-fun tp!996128 () Bool)

(assert (=> b!3163551 (= e!1970807 (and tp!996127 tp!996128))))

(declare-fun b!3163553 () Bool)

(declare-fun tp!996130 () Bool)

(declare-fun tp!996129 () Bool)

(assert (=> b!3163553 (= e!1970807 (and tp!996130 tp!996129))))

(assert (=> b!3163438 (= tp!996104 e!1970807)))

(declare-fun b!3163550 () Bool)

(assert (=> b!3163550 (= e!1970807 tp_is_empty!17017)))

(assert (= (and b!3163438 ((_ is ElementMatch!9727) (regOne!19966 r!13156))) b!3163550))

(assert (= (and b!3163438 ((_ is Concat!15048) (regOne!19966 r!13156))) b!3163551))

(assert (= (and b!3163438 ((_ is Star!9727) (regOne!19966 r!13156))) b!3163552))

(assert (= (and b!3163438 ((_ is Union!9727) (regOne!19966 r!13156))) b!3163553))

(declare-fun b!3163556 () Bool)

(declare-fun e!1970808 () Bool)

(declare-fun tp!996131 () Bool)

(assert (=> b!3163556 (= e!1970808 tp!996131)))

(declare-fun b!3163555 () Bool)

(declare-fun tp!996132 () Bool)

(declare-fun tp!996133 () Bool)

(assert (=> b!3163555 (= e!1970808 (and tp!996132 tp!996133))))

(declare-fun b!3163557 () Bool)

(declare-fun tp!996135 () Bool)

(declare-fun tp!996134 () Bool)

(assert (=> b!3163557 (= e!1970808 (and tp!996135 tp!996134))))

(assert (=> b!3163438 (= tp!996115 e!1970808)))

(declare-fun b!3163554 () Bool)

(assert (=> b!3163554 (= e!1970808 tp_is_empty!17017)))

(assert (= (and b!3163438 ((_ is ElementMatch!9727) (regTwo!19966 r!13156))) b!3163554))

(assert (= (and b!3163438 ((_ is Concat!15048) (regTwo!19966 r!13156))) b!3163555))

(assert (= (and b!3163438 ((_ is Star!9727) (regTwo!19966 r!13156))) b!3163556))

(assert (= (and b!3163438 ((_ is Union!9727) (regTwo!19966 r!13156))) b!3163557))

(declare-fun tp!996142 () Bool)

(declare-fun tp!996144 () Bool)

(declare-fun b!3163562 () Bool)

(declare-fun e!1970811 () Bool)

(declare-fun tp!996143 () Bool)

(assert (=> b!3163562 (= e!1970811 (and tp!996142 tp_is_empty!17017 tp!996143 tp!996144))))

(assert (=> b!3163434 (= tp!996110 e!1970811)))

(assert (= (and b!3163434 ((_ is Cons!35433) mapDefault!18814)) b!3163562))

(declare-fun tp!996146 () Bool)

(declare-fun e!1970812 () Bool)

(declare-fun tp!996147 () Bool)

(declare-fun b!3163563 () Bool)

(declare-fun tp!996145 () Bool)

(assert (=> b!3163563 (= e!1970812 (and tp!996145 tp_is_empty!17017 tp!996146 tp!996147))))

(assert (=> b!3163425 (= tp!996107 e!1970812)))

(assert (= (and b!3163425 ((_ is Cons!35433) (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))) b!3163563))

(declare-fun e!1970813 () Bool)

(declare-fun tp!996148 () Bool)

(declare-fun tp!996149 () Bool)

(declare-fun tp!996150 () Bool)

(declare-fun b!3163564 () Bool)

(assert (=> b!3163564 (= e!1970813 (and tp!996148 tp_is_empty!17017 tp!996149 tp!996150))))

(assert (=> b!3163425 (= tp!996106 e!1970813)))

(assert (= (and b!3163425 ((_ is Cons!35433) (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))) b!3163564))

(declare-fun mapNonEmpty!18817 () Bool)

(declare-fun mapRes!18817 () Bool)

(declare-fun tp!996168 () Bool)

(declare-fun e!1970819 () Bool)

(assert (=> mapNonEmpty!18817 (= mapRes!18817 (and tp!996168 e!1970819))))

(declare-fun mapValue!18817 () List!35557)

(declare-fun mapKey!18817 () (_ BitVec 32))

(declare-fun mapRest!18817 () (Array (_ BitVec 32) List!35557))

(assert (=> mapNonEmpty!18817 (= mapRest!18814 (store mapRest!18817 mapKey!18817 mapValue!18817))))

(declare-fun tp!996166 () Bool)

(declare-fun b!3163572 () Bool)

(declare-fun tp!996169 () Bool)

(declare-fun tp!996171 () Bool)

(declare-fun e!1970818 () Bool)

(assert (=> b!3163572 (= e!1970818 (and tp!996166 tp_is_empty!17017 tp!996169 tp!996171))))

(declare-fun mapIsEmpty!18817 () Bool)

(assert (=> mapIsEmpty!18817 mapRes!18817))

(declare-fun b!3163571 () Bool)

(declare-fun tp!996165 () Bool)

(declare-fun tp!996167 () Bool)

(declare-fun tp!996170 () Bool)

(assert (=> b!3163571 (= e!1970819 (and tp!996165 tp_is_empty!17017 tp!996170 tp!996167))))

(declare-fun condMapEmpty!18817 () Bool)

(declare-fun mapDefault!18817 () List!35557)

(assert (=> mapNonEmpty!18814 (= condMapEmpty!18817 (= mapRest!18814 ((as const (Array (_ BitVec 32) List!35557)) mapDefault!18817)))))

(assert (=> mapNonEmpty!18814 (= tp!996112 (and e!1970818 mapRes!18817))))

(assert (= (and mapNonEmpty!18814 condMapEmpty!18817) mapIsEmpty!18817))

(assert (= (and mapNonEmpty!18814 (not condMapEmpty!18817)) mapNonEmpty!18817))

(assert (= (and mapNonEmpty!18817 ((_ is Cons!35433) mapValue!18817)) b!3163571))

(assert (= (and mapNonEmpty!18814 ((_ is Cons!35433) mapDefault!18817)) b!3163572))

(declare-fun m!3426824 () Bool)

(assert (=> mapNonEmpty!18817 m!3426824))

(declare-fun b!3163573 () Bool)

(declare-fun e!1970820 () Bool)

(declare-fun tp!996174 () Bool)

(declare-fun tp!996172 () Bool)

(declare-fun tp!996173 () Bool)

(assert (=> b!3163573 (= e!1970820 (and tp!996172 tp_is_empty!17017 tp!996173 tp!996174))))

(assert (=> mapNonEmpty!18814 (= tp!996109 e!1970820)))

(assert (= (and mapNonEmpty!18814 ((_ is Cons!35433) mapValue!18814)) b!3163573))

(declare-fun b!3163576 () Bool)

(declare-fun e!1970821 () Bool)

(declare-fun tp!996175 () Bool)

(assert (=> b!3163576 (= e!1970821 tp!996175)))

(declare-fun b!3163575 () Bool)

(declare-fun tp!996176 () Bool)

(declare-fun tp!996177 () Bool)

(assert (=> b!3163575 (= e!1970821 (and tp!996176 tp!996177))))

(declare-fun b!3163577 () Bool)

(declare-fun tp!996179 () Bool)

(declare-fun tp!996178 () Bool)

(assert (=> b!3163577 (= e!1970821 (and tp!996179 tp!996178))))

(assert (=> b!3163435 (= tp!996105 e!1970821)))

(declare-fun b!3163574 () Bool)

(assert (=> b!3163574 (= e!1970821 tp_is_empty!17017)))

(assert (= (and b!3163435 ((_ is ElementMatch!9727) (regOne!19967 r!13156))) b!3163574))

(assert (= (and b!3163435 ((_ is Concat!15048) (regOne!19967 r!13156))) b!3163575))

(assert (= (and b!3163435 ((_ is Star!9727) (regOne!19967 r!13156))) b!3163576))

(assert (= (and b!3163435 ((_ is Union!9727) (regOne!19967 r!13156))) b!3163577))

(declare-fun b!3163580 () Bool)

(declare-fun e!1970822 () Bool)

(declare-fun tp!996180 () Bool)

(assert (=> b!3163580 (= e!1970822 tp!996180)))

(declare-fun b!3163579 () Bool)

(declare-fun tp!996181 () Bool)

(declare-fun tp!996182 () Bool)

(assert (=> b!3163579 (= e!1970822 (and tp!996181 tp!996182))))

(declare-fun b!3163581 () Bool)

(declare-fun tp!996184 () Bool)

(declare-fun tp!996183 () Bool)

(assert (=> b!3163581 (= e!1970822 (and tp!996184 tp!996183))))

(assert (=> b!3163435 (= tp!996114 e!1970822)))

(declare-fun b!3163578 () Bool)

(assert (=> b!3163578 (= e!1970822 tp_is_empty!17017)))

(assert (= (and b!3163435 ((_ is ElementMatch!9727) (regTwo!19967 r!13156))) b!3163578))

(assert (= (and b!3163435 ((_ is Concat!15048) (regTwo!19967 r!13156))) b!3163579))

(assert (= (and b!3163435 ((_ is Star!9727) (regTwo!19967 r!13156))) b!3163580))

(assert (= (and b!3163435 ((_ is Union!9727) (regTwo!19967 r!13156))) b!3163581))

(declare-fun b!3163584 () Bool)

(declare-fun e!1970823 () Bool)

(declare-fun tp!996185 () Bool)

(assert (=> b!3163584 (= e!1970823 tp!996185)))

(declare-fun b!3163583 () Bool)

(declare-fun tp!996186 () Bool)

(declare-fun tp!996187 () Bool)

(assert (=> b!3163583 (= e!1970823 (and tp!996186 tp!996187))))

(declare-fun b!3163585 () Bool)

(declare-fun tp!996189 () Bool)

(declare-fun tp!996188 () Bool)

(assert (=> b!3163585 (= e!1970823 (and tp!996189 tp!996188))))

(assert (=> b!3163443 (= tp!996113 e!1970823)))

(declare-fun b!3163582 () Bool)

(assert (=> b!3163582 (= e!1970823 tp_is_empty!17017)))

(assert (= (and b!3163443 ((_ is ElementMatch!9727) (reg!10056 r!13156))) b!3163582))

(assert (= (and b!3163443 ((_ is Concat!15048) (reg!10056 r!13156))) b!3163583))

(assert (= (and b!3163443 ((_ is Star!9727) (reg!10056 r!13156))) b!3163584))

(assert (= (and b!3163443 ((_ is Union!9727) (reg!10056 r!13156))) b!3163585))

(check-sat (not bm!229174) (not b!3163585) (not b_next!83779) (not b!3163452) (not d!868639) (not b!3163577) (not b!3163580) (not b!3163581) (not b!3163556) (not b!3163575) (not b!3163527) (not b!3163473) (not b!3163513) (not b_next!83777) (not bm!229190) (not bm!229175) b_and!209325 (not b!3163583) (not b!3163584) (not b!3163552) (not b!3163525) tp_is_empty!17017 (not bm!229187) (not d!868633) (not bm!229186) b_and!209323 (not b!3163562) (not bm!229191) (not b!3163576) (not d!868641) (not b!3163579) (not b!3163564) (not b!3163553) (not d!868637) (not b!3163555) (not b!3163514) (not d!868623) (not b!3163573) (not b!3163572) (not mapNonEmpty!18817) (not b!3163451) (not b!3163571) (not b!3163563) (not b!3163551) (not b!3163534) (not b!3163535) (not d!868635) (not b!3163482) (not b!3163557))
(check-sat b_and!209323 b_and!209325 (not b_next!83779) (not b_next!83777))
(get-model)

(declare-fun b!3163586 () Bool)

(declare-fun e!1970826 () tuple2!34462)

(declare-fun lt!1063524 () tuple2!34462)

(assert (=> b!3163586 (= e!1970826 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063524) (Star!9727 (reg!10056 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))) (_2!20363 lt!1063524)))))

(declare-fun call!229198 () tuple2!34462)

(assert (=> b!3163586 (= lt!1063524 call!229198)))

(declare-fun bm!229193 () Bool)

(declare-fun call!229199 () tuple2!34462)

(assert (=> bm!229193 (= call!229198 call!229199)))

(declare-fun lt!1063526 () tuple2!34462)

(declare-fun d!868643 () Bool)

(assert (=> d!868643 (= (_1!20363 lt!1063526) (derivativeStep!2886 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(declare-fun e!1970828 () tuple2!34462)

(assert (=> d!868643 (= lt!1063526 e!1970828)))

(declare-fun c!531983 () Bool)

(declare-fun lt!1063521 () Option!6887)

(assert (=> d!868643 (= c!531983 ((_ is Some!6886) lt!1063521))))

(assert (=> d!868643 (= lt!1063521 (get!11223 (ite c!531966 (_2!20363 lt!1063501) cache!347) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(assert (=> d!868643 (validRegex!4452 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> d!868643 (= (derivativeStepMem!23 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531966 (_2!20363 lt!1063501) cache!347)) lt!1063526)))

(declare-fun b!3163587 () Bool)

(assert (=> b!3163587 (= e!1970828 (tuple2!34463 (v!35096 lt!1063521) (ite c!531966 (_2!20363 lt!1063501) cache!347)))))

(declare-fun b!3163588 () Bool)

(declare-fun lt!1063522 () tuple2!34462)

(assert (=> b!3163588 (= lt!1063522 call!229199)))

(declare-fun lt!1063525 () tuple2!34462)

(declare-fun call!229201 () tuple2!34462)

(assert (=> b!3163588 (= lt!1063525 call!229201)))

(declare-fun e!1970827 () tuple2!34462)

(assert (=> b!3163588 (= e!1970827 (tuple2!34463 (Union!9727 (_1!20363 lt!1063525) (_1!20363 lt!1063522)) (_2!20363 lt!1063522)))))

(declare-fun b!3163589 () Bool)

(declare-fun e!1970829 () tuple2!34462)

(assert (=> b!3163589 (= e!1970829 e!1970827)))

(declare-fun c!531982 () Bool)

(assert (=> b!3163589 (= c!531982 ((_ is Union!9727) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun e!1970824 () tuple2!34462)

(declare-fun b!3163590 () Bool)

(assert (=> b!3163590 (= e!1970824 (tuple2!34463 EmptyLang!9727 (ite c!531966 (_2!20363 lt!1063501) cache!347)))))

(declare-fun b!3163591 () Bool)

(declare-fun lt!1063520 () tuple2!34462)

(declare-fun call!229200 () tuple2!34462)

(assert (=> b!3163591 (= lt!1063520 call!229200)))

(declare-fun lt!1063519 () tuple2!34462)

(assert (=> b!3163591 (= lt!1063519 call!229198)))

(declare-fun e!1970825 () tuple2!34462)

(assert (=> b!3163591 (= e!1970825 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063519) (regTwo!19966 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))) (_1!20363 lt!1063520)) (_2!20363 lt!1063520)))))

(declare-fun lt!1063518 () tuple2!34462)

(declare-fun b!3163592 () Bool)

(assert (=> b!3163592 (= e!1970828 (tuple2!34463 (_1!20363 lt!1063518) (_2!20364 (update!263 (_2!20363 lt!1063518) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409 (_1!20363 lt!1063518)))))))

(declare-fun c!531984 () Bool)

(assert (=> b!3163592 (= c!531984 (or ((_ is EmptyExpr!9727) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) ((_ is EmptyLang!9727) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))))

(assert (=> b!3163592 (= lt!1063518 e!1970824)))

(declare-fun b!3163593 () Bool)

(assert (=> b!3163593 (= e!1970826 e!1970825)))

(declare-fun c!531985 () Bool)

(assert (=> b!3163593 (= c!531985 (nullable!3337 (regOne!19966 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))))

(declare-fun b!3163594 () Bool)

(declare-fun c!531981 () Bool)

(assert (=> b!3163594 (= c!531981 ((_ is Star!9727) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163594 (= e!1970827 e!1970826)))

(declare-fun c!531980 () Bool)

(declare-fun b!3163595 () Bool)

(assert (=> b!3163595 (= c!531980 ((_ is ElementMatch!9727) (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163595 (= e!1970824 e!1970829)))

(declare-fun b!3163596 () Bool)

(assert (=> b!3163596 (= e!1970829 (tuple2!34463 (ite (= a!2409 (c!531945 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))) EmptyExpr!9727 EmptyLang!9727) (ite c!531966 (_2!20363 lt!1063501) cache!347)))))

(declare-fun b!3163597 () Bool)

(declare-fun lt!1063523 () tuple2!34462)

(assert (=> b!3163597 (= lt!1063523 call!229200)))

(assert (=> b!3163597 (= e!1970825 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063523) (regTwo!19966 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))) EmptyLang!9727) (_2!20363 lt!1063523)))))

(declare-fun bm!229194 () Bool)

(assert (=> bm!229194 (= call!229199 (derivativeStepMem!23 (ite c!531982 (regTwo!19967 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (ite c!531981 (reg!10056 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!531982 (_2!20363 lt!1063525) (ite c!531966 (_2!20363 lt!1063501) cache!347))))))

(declare-fun bm!229195 () Bool)

(assert (=> bm!229195 (= call!229201 (derivativeStepMem!23 (ite c!531982 (regOne!19967 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (ite c!531985 (regTwo!19966 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531966 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531965 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!531982 (ite c!531966 (_2!20363 lt!1063501) cache!347) (ite c!531985 (_2!20363 lt!1063519) (ite c!531966 (_2!20363 lt!1063501) cache!347)))))))

(declare-fun bm!229196 () Bool)

(assert (=> bm!229196 (= call!229200 call!229201)))

(assert (= (and d!868643 c!531983) b!3163587))

(assert (= (and d!868643 (not c!531983)) b!3163592))

(assert (= (and b!3163592 c!531984) b!3163590))

(assert (= (and b!3163592 (not c!531984)) b!3163595))

(assert (= (and b!3163595 c!531980) b!3163596))

(assert (= (and b!3163595 (not c!531980)) b!3163589))

(assert (= (and b!3163589 c!531982) b!3163588))

(assert (= (and b!3163589 (not c!531982)) b!3163594))

(assert (= (and b!3163594 c!531981) b!3163586))

(assert (= (and b!3163594 (not c!531981)) b!3163593))

(assert (= (and b!3163593 c!531985) b!3163591))

(assert (= (and b!3163593 (not c!531985)) b!3163597))

(assert (= (or b!3163591 b!3163597) bm!229196))

(assert (= (or b!3163586 b!3163591) bm!229193))

(assert (= (or b!3163588 bm!229196) bm!229195))

(assert (= (or b!3163588 bm!229193) bm!229194))

(declare-fun m!3426826 () Bool)

(assert (=> bm!229195 m!3426826))

(declare-fun m!3426828 () Bool)

(assert (=> bm!229194 m!3426828))

(declare-fun m!3426830 () Bool)

(assert (=> b!3163593 m!3426830))

(declare-fun m!3426832 () Bool)

(assert (=> b!3163592 m!3426832))

(declare-fun m!3426834 () Bool)

(assert (=> d!868643 m!3426834))

(declare-fun m!3426836 () Bool)

(assert (=> d!868643 m!3426836))

(declare-fun m!3426838 () Bool)

(assert (=> d!868643 m!3426838))

(assert (=> bm!229186 d!868643))

(declare-fun d!868645 () Bool)

(declare-fun res!1287613 () Bool)

(declare-fun e!1970834 () Bool)

(assert (=> d!868645 (=> res!1287613 e!1970834)))

(assert (=> d!868645 (= res!1287613 ((_ is Nil!35433) (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))))))

(assert (=> d!868645 (= (forall!7142 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740)))) lambda!115790) e!1970834)))

(declare-fun b!3163602 () Bool)

(declare-fun e!1970835 () Bool)

(assert (=> b!3163602 (= e!1970834 e!1970835)))

(declare-fun res!1287614 () Bool)

(assert (=> b!3163602 (=> (not res!1287614) (not e!1970835))))

(declare-fun dynLambda!14356 (Int tuple2!34460) Bool)

(assert (=> b!3163602 (= res!1287614 (dynLambda!14356 lambda!115790 (h!40853 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740)))))))))

(declare-fun b!3163603 () Bool)

(assert (=> b!3163603 (= e!1970835 (forall!7142 (t!234626 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))) lambda!115790))))

(assert (= (and d!868645 (not res!1287613)) b!3163602))

(assert (= (and b!3163602 res!1287614) b!3163603))

(declare-fun b_lambda!86391 () Bool)

(assert (=> (not b_lambda!86391) (not b!3163602)))

(declare-fun m!3426840 () Bool)

(assert (=> b!3163602 m!3426840))

(declare-fun m!3426842 () Bool)

(assert (=> b!3163603 m!3426842))

(assert (=> b!3163452 d!868645))

(declare-fun d!868647 () Bool)

(declare-fun lt!1063529 () ListMap!1295)

(assert (=> d!868647 (invariantList!477 (toList!2049 lt!1063529))))

(declare-datatypes ((tuple2!34466 0))(
  ( (tuple2!34467 (_1!20365 (_ BitVec 64)) (_2!20365 List!35557)) )
))
(declare-datatypes ((List!35558 0))(
  ( (Nil!35434) (Cons!35434 (h!40854 tuple2!34466) (t!234629 List!35558)) )
))
(declare-fun extractMap!230 (List!35558) ListMap!1295)

(declare-datatypes ((ListLongMap!715 0))(
  ( (ListLongMap!716 (toList!2050 List!35558)) )
))
(declare-fun map!7889 (MutLongMap!4148) ListLongMap!715)

(assert (=> d!868647 (= lt!1063529 (extractMap!230 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 (_2!20363 e!1970740))))))))))

(assert (=> d!868647 (valid!3231 (cache!4195 (_2!20363 e!1970740)))))

(assert (=> d!868647 (= (map!7888 (cache!4195 (_2!20363 e!1970740))) lt!1063529)))

(declare-fun bs!539471 () Bool)

(assert (= bs!539471 d!868647))

(declare-fun m!3426844 () Bool)

(assert (=> bs!539471 m!3426844))

(declare-fun m!3426846 () Bool)

(assert (=> bs!539471 m!3426846))

(declare-fun m!3426848 () Bool)

(assert (=> bs!539471 m!3426848))

(assert (=> bs!539471 m!3426766))

(assert (=> b!3163452 d!868647))

(declare-fun d!868649 () Bool)

(declare-fun res!1287619 () Bool)

(declare-fun e!1970838 () Bool)

(assert (=> d!868649 (=> (not res!1287619) (not e!1970838))))

(declare-fun valid!3232 (MutLongMap!4148) Bool)

(assert (=> d!868649 (= res!1287619 (valid!3232 (v!35095 (underlying!8526 (cache!4195 (_2!20363 e!1970740))))))))

(assert (=> d!868649 (= (valid!3231 (cache!4195 (_2!20363 e!1970740))) e!1970838)))

(declare-fun b!3163608 () Bool)

(declare-fun res!1287620 () Bool)

(assert (=> b!3163608 (=> (not res!1287620) (not e!1970838))))

(declare-fun lambda!115793 () Int)

(declare-fun forall!7143 (List!35558 Int) Bool)

(assert (=> b!3163608 (= res!1287620 (forall!7143 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 (_2!20363 e!1970740)))))) lambda!115793))))

(declare-fun b!3163609 () Bool)

(declare-fun allKeysSameHashInMap!238 (ListLongMap!715 Hashable!4064) Bool)

(assert (=> b!3163609 (= e!1970838 (allKeysSameHashInMap!238 (map!7889 (v!35095 (underlying!8526 (cache!4195 (_2!20363 e!1970740))))) (hashF!6096 (cache!4195 (_2!20363 e!1970740)))))))

(assert (= (and d!868649 res!1287619) b!3163608))

(assert (= (and b!3163608 res!1287620) b!3163609))

(declare-fun m!3426850 () Bool)

(assert (=> d!868649 m!3426850))

(assert (=> b!3163608 m!3426846))

(declare-fun m!3426852 () Bool)

(assert (=> b!3163608 m!3426852))

(assert (=> b!3163609 m!3426846))

(assert (=> b!3163609 m!3426846))

(declare-fun m!3426854 () Bool)

(assert (=> b!3163609 m!3426854))

(assert (=> d!868623 d!868649))

(declare-fun b!3163611 () Bool)

(declare-fun res!1287621 () Bool)

(declare-fun e!1970841 () Bool)

(assert (=> b!3163611 (=> (not res!1287621) (not e!1970841))))

(declare-fun call!229202 () Bool)

(assert (=> b!3163611 (= res!1287621 call!229202)))

(declare-fun e!1970845 () Bool)

(assert (=> b!3163611 (= e!1970845 e!1970841)))

(declare-fun b!3163612 () Bool)

(declare-fun e!1970843 () Bool)

(declare-fun e!1970839 () Bool)

(assert (=> b!3163612 (= e!1970843 e!1970839)))

(declare-fun res!1287625 () Bool)

(assert (=> b!3163612 (= res!1287625 (not (nullable!3337 (reg!10056 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))))))))

(assert (=> b!3163612 (=> (not res!1287625) (not e!1970839))))

(declare-fun b!3163613 () Bool)

(declare-fun call!229204 () Bool)

(assert (=> b!3163613 (= e!1970839 call!229204)))

(declare-fun b!3163614 () Bool)

(declare-fun e!1970842 () Bool)

(declare-fun call!229203 () Bool)

(assert (=> b!3163614 (= e!1970842 call!229203)))

(declare-fun bm!229197 () Bool)

(declare-fun c!531986 () Bool)

(declare-fun c!531987 () Bool)

(assert (=> bm!229197 (= call!229204 (validRegex!4452 (ite c!531986 (reg!10056 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))) (ite c!531987 (regOne!19967 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))) (regOne!19966 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156)))))))))

(declare-fun bm!229198 () Bool)

(assert (=> bm!229198 (= call!229203 (validRegex!4452 (ite c!531987 (regTwo!19967 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))) (regTwo!19966 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))))))))

(declare-fun b!3163615 () Bool)

(declare-fun e!1970844 () Bool)

(assert (=> b!3163615 (= e!1970844 e!1970843)))

(assert (=> b!3163615 (= c!531986 ((_ is Star!9727) (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))))))

(declare-fun b!3163616 () Bool)

(declare-fun e!1970840 () Bool)

(assert (=> b!3163616 (= e!1970840 e!1970842)))

(declare-fun res!1287624 () Bool)

(assert (=> b!3163616 (=> (not res!1287624) (not e!1970842))))

(assert (=> b!3163616 (= res!1287624 call!229202)))

(declare-fun bm!229199 () Bool)

(assert (=> bm!229199 (= call!229202 call!229204)))

(declare-fun d!868651 () Bool)

(declare-fun res!1287623 () Bool)

(assert (=> d!868651 (=> res!1287623 e!1970844)))

(assert (=> d!868651 (= res!1287623 ((_ is ElementMatch!9727) (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))))))

(assert (=> d!868651 (= (validRegex!4452 (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))) e!1970844)))

(declare-fun b!3163610 () Bool)

(declare-fun res!1287622 () Bool)

(assert (=> b!3163610 (=> res!1287622 e!1970840)))

(assert (=> b!3163610 (= res!1287622 (not ((_ is Concat!15048) (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156)))))))

(assert (=> b!3163610 (= e!1970845 e!1970840)))

(declare-fun b!3163617 () Bool)

(assert (=> b!3163617 (= e!1970841 call!229203)))

(declare-fun b!3163618 () Bool)

(assert (=> b!3163618 (= e!1970843 e!1970845)))

(assert (=> b!3163618 (= c!531987 ((_ is Union!9727) (ite c!531951 (regTwo!19967 r!13156) (regTwo!19966 r!13156))))))

(assert (= (and d!868651 (not res!1287623)) b!3163615))

(assert (= (and b!3163615 c!531986) b!3163612))

(assert (= (and b!3163615 (not c!531986)) b!3163618))

(assert (= (and b!3163612 res!1287625) b!3163613))

(assert (= (and b!3163618 c!531987) b!3163611))

(assert (= (and b!3163618 (not c!531987)) b!3163610))

(assert (= (and b!3163611 res!1287621) b!3163617))

(assert (= (and b!3163610 (not res!1287622)) b!3163616))

(assert (= (and b!3163616 res!1287624) b!3163614))

(assert (= (or b!3163611 b!3163616) bm!229199))

(assert (= (or b!3163617 b!3163614) bm!229198))

(assert (= (or b!3163613 bm!229199) bm!229197))

(declare-fun m!3426856 () Bool)

(assert (=> b!3163612 m!3426856))

(declare-fun m!3426858 () Bool)

(assert (=> bm!229197 m!3426858))

(declare-fun m!3426860 () Bool)

(assert (=> bm!229198 m!3426860))

(assert (=> bm!229175 d!868651))

(declare-fun d!868653 () Bool)

(declare-fun noDuplicatedKeys!90 (List!35557) Bool)

(assert (=> d!868653 (= (invariantList!477 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))) (noDuplicatedKeys!90 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))))))

(declare-fun bs!539472 () Bool)

(assert (= bs!539472 d!868653))

(declare-fun m!3426862 () Bool)

(assert (=> bs!539472 m!3426862))

(assert (=> b!3163451 d!868653))

(assert (=> b!3163451 d!868647))

(declare-fun b!3163620 () Bool)

(declare-fun res!1287626 () Bool)

(declare-fun e!1970848 () Bool)

(assert (=> b!3163620 (=> (not res!1287626) (not e!1970848))))

(declare-fun call!229205 () Bool)

(assert (=> b!3163620 (= res!1287626 call!229205)))

(declare-fun e!1970852 () Bool)

(assert (=> b!3163620 (= e!1970852 e!1970848)))

(declare-fun b!3163621 () Bool)

(declare-fun e!1970850 () Bool)

(declare-fun e!1970846 () Bool)

(assert (=> b!3163621 (= e!1970850 e!1970846)))

(declare-fun res!1287630 () Bool)

(assert (=> b!3163621 (= res!1287630 (not (nullable!3337 (reg!10056 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> b!3163621 (=> (not res!1287630) (not e!1970846))))

(declare-fun b!3163622 () Bool)

(declare-fun call!229207 () Bool)

(assert (=> b!3163622 (= e!1970846 call!229207)))

(declare-fun b!3163623 () Bool)

(declare-fun e!1970849 () Bool)

(declare-fun call!229206 () Bool)

(assert (=> b!3163623 (= e!1970849 call!229206)))

(declare-fun c!531989 () Bool)

(declare-fun bm!229200 () Bool)

(declare-fun c!531988 () Bool)

(assert (=> bm!229200 (= call!229207 (validRegex!4452 (ite c!531988 (reg!10056 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))) (ite c!531989 (regOne!19967 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun bm!229201 () Bool)

(assert (=> bm!229201 (= call!229206 (validRegex!4452 (ite c!531989 (regTwo!19967 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))) (regTwo!19966 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))))))))

(declare-fun b!3163624 () Bool)

(declare-fun e!1970851 () Bool)

(assert (=> b!3163624 (= e!1970851 e!1970850)))

(assert (=> b!3163624 (= c!531988 ((_ is Star!9727) (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))))))

(declare-fun b!3163625 () Bool)

(declare-fun e!1970847 () Bool)

(assert (=> b!3163625 (= e!1970847 e!1970849)))

(declare-fun res!1287629 () Bool)

(assert (=> b!3163625 (=> (not res!1287629) (not e!1970849))))

(assert (=> b!3163625 (= res!1287629 call!229205)))

(declare-fun bm!229202 () Bool)

(assert (=> bm!229202 (= call!229205 call!229207)))

(declare-fun d!868655 () Bool)

(declare-fun res!1287628 () Bool)

(assert (=> d!868655 (=> res!1287628 e!1970851)))

(assert (=> d!868655 (= res!1287628 ((_ is ElementMatch!9727) (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))))))

(assert (=> d!868655 (= (validRegex!4452 (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))) e!1970851)))

(declare-fun b!3163619 () Bool)

(declare-fun res!1287627 () Bool)

(assert (=> b!3163619 (=> res!1287627 e!1970847)))

(assert (=> b!3163619 (= res!1287627 (not ((_ is Concat!15048) (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156))))))))

(assert (=> b!3163619 (= e!1970852 e!1970847)))

(declare-fun b!3163626 () Bool)

(assert (=> b!3163626 (= e!1970848 call!229206)))

(declare-fun b!3163627 () Bool)

(assert (=> b!3163627 (= e!1970850 e!1970852)))

(assert (=> b!3163627 (= c!531989 ((_ is Union!9727) (ite c!531950 (reg!10056 r!13156) (ite c!531951 (regOne!19967 r!13156) (regOne!19966 r!13156)))))))

(assert (= (and d!868655 (not res!1287628)) b!3163624))

(assert (= (and b!3163624 c!531988) b!3163621))

(assert (= (and b!3163624 (not c!531988)) b!3163627))

(assert (= (and b!3163621 res!1287630) b!3163622))

(assert (= (and b!3163627 c!531989) b!3163620))

(assert (= (and b!3163627 (not c!531989)) b!3163619))

(assert (= (and b!3163620 res!1287626) b!3163626))

(assert (= (and b!3163619 (not res!1287627)) b!3163625))

(assert (= (and b!3163625 res!1287629) b!3163623))

(assert (= (or b!3163620 b!3163625) bm!229202))

(assert (= (or b!3163626 b!3163623) bm!229201))

(assert (= (or b!3163622 bm!229202) bm!229200))

(declare-fun m!3426864 () Bool)

(assert (=> b!3163621 m!3426864))

(declare-fun m!3426866 () Bool)

(assert (=> bm!229200 m!3426866))

(declare-fun m!3426868 () Bool)

(assert (=> bm!229201 m!3426868))

(assert (=> bm!229174 d!868655))

(declare-fun bm!229207 () Bool)

(declare-fun call!229212 () Bool)

(declare-fun c!531992 () Bool)

(assert (=> bm!229207 (= call!229212 (nullable!3337 (ite c!531992 (regOne!19967 (regOne!19966 r!13156)) (regTwo!19966 (regOne!19966 r!13156)))))))

(declare-fun b!3163642 () Bool)

(declare-fun e!1970867 () Bool)

(declare-fun e!1970866 () Bool)

(assert (=> b!3163642 (= e!1970867 e!1970866)))

(assert (=> b!3163642 (= c!531992 ((_ is Union!9727) (regOne!19966 r!13156)))))

(declare-fun b!3163643 () Bool)

(declare-fun e!1970865 () Bool)

(assert (=> b!3163643 (= e!1970866 e!1970865)))

(declare-fun res!1287645 () Bool)

(declare-fun call!229213 () Bool)

(assert (=> b!3163643 (= res!1287645 call!229213)))

(assert (=> b!3163643 (=> (not res!1287645) (not e!1970865))))

(declare-fun b!3163644 () Bool)

(declare-fun e!1970869 () Bool)

(assert (=> b!3163644 (= e!1970869 e!1970867)))

(declare-fun res!1287641 () Bool)

(assert (=> b!3163644 (=> res!1287641 e!1970867)))

(assert (=> b!3163644 (= res!1287641 ((_ is Star!9727) (regOne!19966 r!13156)))))

(declare-fun b!3163645 () Bool)

(assert (=> b!3163645 (= e!1970865 call!229212)))

(declare-fun b!3163646 () Bool)

(declare-fun e!1970870 () Bool)

(assert (=> b!3163646 (= e!1970870 call!229213)))

(declare-fun d!868657 () Bool)

(declare-fun res!1287642 () Bool)

(declare-fun e!1970868 () Bool)

(assert (=> d!868657 (=> res!1287642 e!1970868)))

(assert (=> d!868657 (= res!1287642 ((_ is EmptyExpr!9727) (regOne!19966 r!13156)))))

(assert (=> d!868657 (= (nullableFct!948 (regOne!19966 r!13156)) e!1970868)))

(declare-fun b!3163647 () Bool)

(assert (=> b!3163647 (= e!1970868 e!1970869)))

(declare-fun res!1287643 () Bool)

(assert (=> b!3163647 (=> (not res!1287643) (not e!1970869))))

(assert (=> b!3163647 (= res!1287643 (and (not ((_ is EmptyLang!9727) (regOne!19966 r!13156))) (not ((_ is ElementMatch!9727) (regOne!19966 r!13156)))))))

(declare-fun bm!229208 () Bool)

(assert (=> bm!229208 (= call!229213 (nullable!3337 (ite c!531992 (regTwo!19967 (regOne!19966 r!13156)) (regOne!19966 (regOne!19966 r!13156)))))))

(declare-fun b!3163648 () Bool)

(assert (=> b!3163648 (= e!1970866 e!1970870)))

(declare-fun res!1287644 () Bool)

(assert (=> b!3163648 (= res!1287644 call!229212)))

(assert (=> b!3163648 (=> res!1287644 e!1970870)))

(assert (= (and d!868657 (not res!1287642)) b!3163647))

(assert (= (and b!3163647 res!1287643) b!3163644))

(assert (= (and b!3163644 (not res!1287641)) b!3163642))

(assert (= (and b!3163642 c!531992) b!3163648))

(assert (= (and b!3163642 (not c!531992)) b!3163643))

(assert (= (and b!3163648 (not res!1287644)) b!3163646))

(assert (= (and b!3163643 res!1287645) b!3163645))

(assert (= (or b!3163646 b!3163643) bm!229208))

(assert (= (or b!3163648 b!3163645) bm!229207))

(declare-fun m!3426870 () Bool)

(assert (=> bm!229207 m!3426870))

(declare-fun m!3426872 () Bool)

(assert (=> bm!229208 m!3426872))

(assert (=> d!868641 d!868657))

(declare-fun d!868659 () Bool)

(assert (=> d!868659 (= (nullable!3337 (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) (nullableFct!948 (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))

(declare-fun bs!539473 () Bool)

(assert (= bs!539473 d!868659))

(declare-fun m!3426874 () Bool)

(assert (=> bs!539473 m!3426874))

(assert (=> b!3163535 d!868659))

(declare-fun bs!539474 () Bool)

(declare-fun b!3163650 () Bool)

(assert (= bs!539474 (and b!3163650 b!3163452)))

(declare-fun lambda!115794 () Int)

(assert (=> bs!539474 (= lambda!115794 lambda!115790)))

(declare-fun d!868661 () Bool)

(declare-fun res!1287646 () Bool)

(declare-fun e!1970871 () Bool)

(assert (=> d!868661 (=> (not res!1287646) (not e!1970871))))

(assert (=> d!868661 (= res!1287646 (valid!3231 (cache!4195 cache!347)))))

(assert (=> d!868661 (= (validCacheMap!51 (cache!4195 cache!347)) e!1970871)))

(declare-fun b!3163649 () Bool)

(declare-fun res!1287647 () Bool)

(assert (=> b!3163649 (=> (not res!1287647) (not e!1970871))))

(assert (=> b!3163649 (= res!1287647 (invariantList!477 (toList!2049 (map!7888 (cache!4195 cache!347)))))))

(assert (=> b!3163650 (= e!1970871 (forall!7142 (toList!2049 (map!7888 (cache!4195 cache!347))) lambda!115794))))

(assert (= (and d!868661 res!1287646) b!3163649))

(assert (= (and b!3163649 res!1287647) b!3163650))

(declare-fun m!3426876 () Bool)

(assert (=> d!868661 m!3426876))

(declare-fun m!3426878 () Bool)

(assert (=> b!3163649 m!3426878))

(declare-fun m!3426880 () Bool)

(assert (=> b!3163649 m!3426880))

(assert (=> b!3163650 m!3426878))

(declare-fun m!3426882 () Bool)

(assert (=> b!3163650 m!3426882))

(assert (=> d!868635 d!868661))

(declare-fun b!3163671 () Bool)

(declare-fun e!1970883 () Regex!9727)

(declare-fun e!1970886 () Regex!9727)

(assert (=> b!3163671 (= e!1970883 e!1970886)))

(declare-fun c!532005 () Bool)

(assert (=> b!3163671 (= c!532005 ((_ is ElementMatch!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(declare-fun d!868663 () Bool)

(declare-fun lt!1063532 () Regex!9727)

(assert (=> d!868663 (validRegex!4452 lt!1063532)))

(assert (=> d!868663 (= lt!1063532 e!1970883)))

(declare-fun c!532007 () Bool)

(assert (=> d!868663 (= c!532007 (or ((_ is EmptyExpr!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) ((_ is EmptyLang!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))

(assert (=> d!868663 (validRegex!4452 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))

(assert (=> d!868663 (= (derivativeStep!2886 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409) lt!1063532)))

(declare-fun b!3163672 () Bool)

(declare-fun c!532004 () Bool)

(assert (=> b!3163672 (= c!532004 (nullable!3337 (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))

(declare-fun e!1970885 () Regex!9727)

(declare-fun e!1970884 () Regex!9727)

(assert (=> b!3163672 (= e!1970885 e!1970884)))

(declare-fun call!229224 () Regex!9727)

(declare-fun b!3163673 () Bool)

(assert (=> b!3163673 (= e!1970885 (Concat!15048 call!229224 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(declare-fun call!229225 () Regex!9727)

(declare-fun bm!229217 () Bool)

(declare-fun c!532006 () Bool)

(assert (=> bm!229217 (= call!229225 (derivativeStep!2886 (ite c!532006 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) a!2409))))

(declare-fun b!3163674 () Bool)

(declare-fun e!1970882 () Regex!9727)

(declare-fun call!229222 () Regex!9727)

(assert (=> b!3163674 (= e!1970882 (Union!9727 call!229225 call!229222))))

(declare-fun b!3163675 () Bool)

(assert (=> b!3163675 (= e!1970882 e!1970885)))

(declare-fun c!532003 () Bool)

(assert (=> b!3163675 (= c!532003 ((_ is Star!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(declare-fun b!3163676 () Bool)

(assert (=> b!3163676 (= e!1970886 (ite (= a!2409 (c!531945 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) EmptyExpr!9727 EmptyLang!9727))))

(declare-fun bm!229218 () Bool)

(assert (=> bm!229218 (= call!229222 (derivativeStep!2886 (ite c!532006 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!532003 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(declare-fun b!3163677 () Bool)

(assert (=> b!3163677 (= c!532006 ((_ is Union!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(assert (=> b!3163677 (= e!1970886 e!1970882)))

(declare-fun bm!229219 () Bool)

(declare-fun call!229223 () Regex!9727)

(assert (=> bm!229219 (= call!229223 call!229224)))

(declare-fun b!3163678 () Bool)

(assert (=> b!3163678 (= e!1970884 (Union!9727 (Concat!15048 call!229223 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) call!229225))))

(declare-fun b!3163679 () Bool)

(assert (=> b!3163679 (= e!1970883 EmptyLang!9727)))

(declare-fun bm!229220 () Bool)

(assert (=> bm!229220 (= call!229224 call!229222)))

(declare-fun b!3163680 () Bool)

(assert (=> b!3163680 (= e!1970884 (Union!9727 (Concat!15048 call!229223 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) EmptyLang!9727))))

(assert (= (and d!868663 c!532007) b!3163679))

(assert (= (and d!868663 (not c!532007)) b!3163671))

(assert (= (and b!3163671 c!532005) b!3163676))

(assert (= (and b!3163671 (not c!532005)) b!3163677))

(assert (= (and b!3163677 c!532006) b!3163674))

(assert (= (and b!3163677 (not c!532006)) b!3163675))

(assert (= (and b!3163675 c!532003) b!3163673))

(assert (= (and b!3163675 (not c!532003)) b!3163672))

(assert (= (and b!3163672 c!532004) b!3163678))

(assert (= (and b!3163672 (not c!532004)) b!3163680))

(assert (= (or b!3163678 b!3163680) bm!229219))

(assert (= (or b!3163673 bm!229219) bm!229220))

(assert (= (or b!3163674 bm!229220) bm!229218))

(assert (= (or b!3163674 b!3163678) bm!229217))

(declare-fun m!3426884 () Bool)

(assert (=> d!868663 m!3426884))

(assert (=> d!868663 m!3426794))

(assert (=> b!3163672 m!3426786))

(declare-fun m!3426886 () Bool)

(assert (=> bm!229217 m!3426886))

(declare-fun m!3426888 () Bool)

(assert (=> bm!229218 m!3426888))

(assert (=> d!868633 d!868663))

(declare-fun d!868665 () Bool)

(declare-fun e!1970887 () Bool)

(assert (=> d!868665 e!1970887))

(declare-fun res!1287648 () Bool)

(assert (=> d!868665 (=> res!1287648 e!1970887)))

(declare-fun lt!1063534 () Option!6887)

(assert (=> d!868665 (= res!1287648 (isEmpty!19753 lt!1063534))))

(declare-fun e!1970888 () Option!6887)

(assert (=> d!868665 (= lt!1063534 e!1970888)))

(declare-fun c!532008 () Bool)

(assert (=> d!868665 (= c!532008 (contains!6156 (cache!4195 cache!347) (tuple2!34459 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409)))))

(assert (=> d!868665 (validRegex!4452 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))

(assert (=> d!868665 (= (get!11223 cache!347 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409) lt!1063534)))

(declare-fun b!3163681 () Bool)

(assert (=> b!3163681 (= e!1970888 (Some!6886 (apply!7939 (cache!4195 cache!347) (tuple2!34459 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409))))))

(declare-fun lt!1063533 () Unit!49786)

(assert (=> b!3163681 (= lt!1063533 (lemmaIfInCacheThenValid!51 cache!347 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409))))

(declare-fun b!3163682 () Bool)

(assert (=> b!3163682 (= e!1970888 None!6886)))

(declare-fun b!3163683 () Bool)

(assert (=> b!3163683 (= e!1970887 (= (get!11224 lt!1063534) (derivativeStep!2886 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409)))))

(assert (= (and d!868665 c!532008) b!3163681))

(assert (= (and d!868665 (not c!532008)) b!3163682))

(assert (= (and d!868665 (not res!1287648)) b!3163683))

(declare-fun m!3426890 () Bool)

(assert (=> d!868665 m!3426890))

(declare-fun m!3426892 () Bool)

(assert (=> d!868665 m!3426892))

(assert (=> d!868665 m!3426794))

(declare-fun m!3426894 () Bool)

(assert (=> b!3163681 m!3426894))

(declare-fun m!3426896 () Bool)

(assert (=> b!3163681 m!3426896))

(declare-fun m!3426898 () Bool)

(assert (=> b!3163683 m!3426898))

(assert (=> b!3163683 m!3426790))

(assert (=> d!868633 d!868665))

(declare-fun b!3163685 () Bool)

(declare-fun res!1287649 () Bool)

(declare-fun e!1970891 () Bool)

(assert (=> b!3163685 (=> (not res!1287649) (not e!1970891))))

(declare-fun call!229226 () Bool)

(assert (=> b!3163685 (= res!1287649 call!229226)))

(declare-fun e!1970895 () Bool)

(assert (=> b!3163685 (= e!1970895 e!1970891)))

(declare-fun b!3163686 () Bool)

(declare-fun e!1970893 () Bool)

(declare-fun e!1970889 () Bool)

(assert (=> b!3163686 (= e!1970893 e!1970889)))

(declare-fun res!1287653 () Bool)

(assert (=> b!3163686 (= res!1287653 (not (nullable!3337 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> b!3163686 (=> (not res!1287653) (not e!1970889))))

(declare-fun b!3163687 () Bool)

(declare-fun call!229228 () Bool)

(assert (=> b!3163687 (= e!1970889 call!229228)))

(declare-fun b!3163688 () Bool)

(declare-fun e!1970892 () Bool)

(declare-fun call!229227 () Bool)

(assert (=> b!3163688 (= e!1970892 call!229227)))

(declare-fun c!532010 () Bool)

(declare-fun bm!229221 () Bool)

(declare-fun c!532009 () Bool)

(assert (=> bm!229221 (= call!229228 (validRegex!4452 (ite c!532009 (reg!10056 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!532010 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun bm!229222 () Bool)

(assert (=> bm!229222 (= call!229227 (validRegex!4452 (ite c!532010 (regTwo!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))

(declare-fun b!3163689 () Bool)

(declare-fun e!1970894 () Bool)

(assert (=> b!3163689 (= e!1970894 e!1970893)))

(assert (=> b!3163689 (= c!532009 ((_ is Star!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(declare-fun b!3163690 () Bool)

(declare-fun e!1970890 () Bool)

(assert (=> b!3163690 (= e!1970890 e!1970892)))

(declare-fun res!1287652 () Bool)

(assert (=> b!3163690 (=> (not res!1287652) (not e!1970892))))

(assert (=> b!3163690 (= res!1287652 call!229226)))

(declare-fun bm!229223 () Bool)

(assert (=> bm!229223 (= call!229226 call!229228)))

(declare-fun d!868667 () Bool)

(declare-fun res!1287651 () Bool)

(assert (=> d!868667 (=> res!1287651 e!1970894)))

(assert (=> d!868667 (= res!1287651 ((_ is ElementMatch!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(assert (=> d!868667 (= (validRegex!4452 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) e!1970894)))

(declare-fun b!3163684 () Bool)

(declare-fun res!1287650 () Bool)

(assert (=> b!3163684 (=> res!1287650 e!1970890)))

(assert (=> b!3163684 (= res!1287650 (not ((_ is Concat!15048) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))

(assert (=> b!3163684 (= e!1970895 e!1970890)))

(declare-fun b!3163691 () Bool)

(assert (=> b!3163691 (= e!1970891 call!229227)))

(declare-fun b!3163692 () Bool)

(assert (=> b!3163692 (= e!1970893 e!1970895)))

(assert (=> b!3163692 (= c!532010 ((_ is Union!9727) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))

(assert (= (and d!868667 (not res!1287651)) b!3163689))

(assert (= (and b!3163689 c!532009) b!3163686))

(assert (= (and b!3163689 (not c!532009)) b!3163692))

(assert (= (and b!3163686 res!1287653) b!3163687))

(assert (= (and b!3163692 c!532010) b!3163685))

(assert (= (and b!3163692 (not c!532010)) b!3163684))

(assert (= (and b!3163685 res!1287649) b!3163691))

(assert (= (and b!3163684 (not res!1287650)) b!3163690))

(assert (= (and b!3163690 res!1287652) b!3163688))

(assert (= (or b!3163685 b!3163690) bm!229223))

(assert (= (or b!3163691 b!3163688) bm!229222))

(assert (= (or b!3163687 bm!229223) bm!229221))

(declare-fun m!3426900 () Bool)

(assert (=> b!3163686 m!3426900))

(declare-fun m!3426902 () Bool)

(assert (=> bm!229221 m!3426902))

(declare-fun m!3426904 () Bool)

(assert (=> bm!229222 m!3426904))

(assert (=> d!868633 d!868667))

(declare-fun bs!539475 () Bool)

(declare-fun d!868669 () Bool)

(assert (= bs!539475 (and d!868669 b!3163452)))

(declare-fun lambda!115797 () Int)

(assert (=> bs!539475 (= lambda!115797 lambda!115790)))

(declare-fun bs!539476 () Bool)

(assert (= bs!539476 (and d!868669 b!3163650)))

(assert (=> bs!539476 (= lambda!115797 lambda!115794)))

(declare-fun lt!1063543 () tuple2!34464)

(assert (=> d!868669 (validCacheMap!51 (cache!4195 (_2!20364 lt!1063543)))))

(declare-fun Unit!49788 () Unit!49786)

(declare-datatypes ((tuple2!34468 0))(
  ( (tuple2!34469 (_1!20366 Bool) (_2!20366 MutableMap!4054)) )
))
(declare-fun update!264 (MutableMap!4054 tuple2!34458 Regex!9727) tuple2!34468)

(assert (=> d!868669 (= lt!1063543 (tuple2!34465 Unit!49788 (Cache!379 (_2!20366 (update!264 (cache!4195 (_2!20363 lt!1063509)) (tuple2!34459 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409) (_1!20363 lt!1063509))))))))

(declare-fun lt!1063544 () Unit!49786)

(declare-fun lt!1063546 () Unit!49786)

(assert (=> d!868669 (= lt!1063544 lt!1063546)))

(declare-fun lt!1063545 () tuple2!34458)

(assert (=> d!868669 (forall!7142 (toList!2049 (map!7888 (_2!20366 (update!264 (cache!4195 (_2!20363 lt!1063509)) lt!1063545 (_1!20363 lt!1063509))))) lambda!115797)))

(declare-fun lemmaUpdatePreservesForallPairs!28 (MutableMap!4054 tuple2!34458 Regex!9727 Int) Unit!49786)

(assert (=> d!868669 (= lt!1063546 (lemmaUpdatePreservesForallPairs!28 (cache!4195 (_2!20363 lt!1063509)) lt!1063545 (_1!20363 lt!1063509) lambda!115797))))

(assert (=> d!868669 (= lt!1063545 (tuple2!34459 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409))))

(assert (=> d!868669 (validCacheMap!51 (cache!4195 (_2!20363 lt!1063509)))))

(assert (=> d!868669 (= (update!263 (_2!20363 lt!1063509) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409 (_1!20363 lt!1063509)) lt!1063543)))

(declare-fun bs!539477 () Bool)

(assert (= bs!539477 d!868669))

(declare-fun m!3426906 () Bool)

(assert (=> bs!539477 m!3426906))

(declare-fun m!3426908 () Bool)

(assert (=> bs!539477 m!3426908))

(declare-fun m!3426910 () Bool)

(assert (=> bs!539477 m!3426910))

(declare-fun m!3426912 () Bool)

(assert (=> bs!539477 m!3426912))

(declare-fun m!3426914 () Bool)

(assert (=> bs!539477 m!3426914))

(declare-fun m!3426916 () Bool)

(assert (=> bs!539477 m!3426916))

(declare-fun m!3426918 () Bool)

(assert (=> bs!539477 m!3426918))

(assert (=> b!3163534 d!868669))

(declare-fun b!3163695 () Bool)

(declare-fun e!1970899 () Regex!9727)

(declare-fun e!1970902 () Regex!9727)

(assert (=> b!3163695 (= e!1970899 e!1970902)))

(declare-fun c!532014 () Bool)

(assert (=> b!3163695 (= c!532014 ((_ is ElementMatch!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(declare-fun d!868671 () Bool)

(declare-fun lt!1063547 () Regex!9727)

(assert (=> d!868671 (validRegex!4452 lt!1063547)))

(assert (=> d!868671 (= lt!1063547 e!1970899)))

(declare-fun c!532016 () Bool)

(assert (=> d!868671 (= c!532016 (or ((_ is EmptyExpr!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) ((_ is EmptyLang!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))

(assert (=> d!868671 (validRegex!4452 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))

(assert (=> d!868671 (= (derivativeStep!2886 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409) lt!1063547)))

(declare-fun c!532013 () Bool)

(declare-fun b!3163696 () Bool)

(assert (=> b!3163696 (= c!532013 (nullable!3337 (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))

(declare-fun e!1970901 () Regex!9727)

(declare-fun e!1970900 () Regex!9727)

(assert (=> b!3163696 (= e!1970901 e!1970900)))

(declare-fun b!3163697 () Bool)

(declare-fun call!229231 () Regex!9727)

(assert (=> b!3163697 (= e!1970901 (Concat!15048 call!229231 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(declare-fun bm!229224 () Bool)

(declare-fun call!229232 () Regex!9727)

(declare-fun c!532015 () Bool)

(assert (=> bm!229224 (= call!229232 (derivativeStep!2886 (ite c!532015 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) a!2409))))

(declare-fun b!3163698 () Bool)

(declare-fun e!1970898 () Regex!9727)

(declare-fun call!229229 () Regex!9727)

(assert (=> b!3163698 (= e!1970898 (Union!9727 call!229232 call!229229))))

(declare-fun b!3163699 () Bool)

(assert (=> b!3163699 (= e!1970898 e!1970901)))

(declare-fun c!532012 () Bool)

(assert (=> b!3163699 (= c!532012 ((_ is Star!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(declare-fun b!3163700 () Bool)

(assert (=> b!3163700 (= e!1970902 (ite (= a!2409 (c!531945 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) EmptyExpr!9727 EmptyLang!9727))))

(declare-fun bm!229225 () Bool)

(assert (=> bm!229225 (= call!229229 (derivativeStep!2886 (ite c!532015 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!532012 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(declare-fun b!3163701 () Bool)

(assert (=> b!3163701 (= c!532015 ((_ is Union!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(assert (=> b!3163701 (= e!1970902 e!1970898)))

(declare-fun bm!229226 () Bool)

(declare-fun call!229230 () Regex!9727)

(assert (=> bm!229226 (= call!229230 call!229231)))

(declare-fun b!3163702 () Bool)

(assert (=> b!3163702 (= e!1970900 (Union!9727 (Concat!15048 call!229230 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) call!229232))))

(declare-fun b!3163703 () Bool)

(assert (=> b!3163703 (= e!1970899 EmptyLang!9727)))

(declare-fun bm!229227 () Bool)

(assert (=> bm!229227 (= call!229231 call!229229)))

(declare-fun b!3163704 () Bool)

(assert (=> b!3163704 (= e!1970900 (Union!9727 (Concat!15048 call!229230 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))) EmptyLang!9727))))

(assert (= (and d!868671 c!532016) b!3163703))

(assert (= (and d!868671 (not c!532016)) b!3163695))

(assert (= (and b!3163695 c!532014) b!3163700))

(assert (= (and b!3163695 (not c!532014)) b!3163701))

(assert (= (and b!3163701 c!532015) b!3163698))

(assert (= (and b!3163701 (not c!532015)) b!3163699))

(assert (= (and b!3163699 c!532012) b!3163697))

(assert (= (and b!3163699 (not c!532012)) b!3163696))

(assert (= (and b!3163696 c!532013) b!3163702))

(assert (= (and b!3163696 (not c!532013)) b!3163704))

(assert (= (or b!3163702 b!3163704) bm!229226))

(assert (= (or b!3163697 bm!229226) bm!229227))

(assert (= (or b!3163698 bm!229227) bm!229225))

(assert (= (or b!3163698 b!3163702) bm!229224))

(declare-fun m!3426920 () Bool)

(assert (=> d!868671 m!3426920))

(assert (=> d!868671 m!3426820))

(assert (=> b!3163696 m!3426812))

(declare-fun m!3426922 () Bool)

(assert (=> bm!229224 m!3426922))

(declare-fun m!3426924 () Bool)

(assert (=> bm!229225 m!3426924))

(assert (=> d!868639 d!868671))

(declare-fun d!868673 () Bool)

(declare-fun e!1970903 () Bool)

(assert (=> d!868673 e!1970903))

(declare-fun res!1287657 () Bool)

(assert (=> d!868673 (=> res!1287657 e!1970903)))

(declare-fun lt!1063549 () Option!6887)

(assert (=> d!868673 (= res!1287657 (isEmpty!19753 lt!1063549))))

(declare-fun e!1970904 () Option!6887)

(assert (=> d!868673 (= lt!1063549 e!1970904)))

(declare-fun c!532017 () Bool)

(assert (=> d!868673 (= c!532017 (contains!6156 (cache!4195 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))) (tuple2!34459 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409)))))

(assert (=> d!868673 (validRegex!4452 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))

(assert (=> d!868673 (= (get!11223 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409) lt!1063549)))

(declare-fun b!3163705 () Bool)

(assert (=> b!3163705 (= e!1970904 (Some!6886 (apply!7939 (cache!4195 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))) (tuple2!34459 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409))))))

(declare-fun lt!1063548 () Unit!49786)

(assert (=> b!3163705 (= lt!1063548 (lemmaIfInCacheThenValid!51 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409))))

(declare-fun b!3163706 () Bool)

(assert (=> b!3163706 (= e!1970904 None!6886)))

(declare-fun b!3163707 () Bool)

(assert (=> b!3163707 (= e!1970903 (= (get!11224 lt!1063549) (derivativeStep!2886 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409)))))

(assert (= (and d!868673 c!532017) b!3163705))

(assert (= (and d!868673 (not c!532017)) b!3163706))

(assert (= (and d!868673 (not res!1287657)) b!3163707))

(declare-fun m!3426926 () Bool)

(assert (=> d!868673 m!3426926))

(declare-fun m!3426928 () Bool)

(assert (=> d!868673 m!3426928))

(assert (=> d!868673 m!3426820))

(declare-fun m!3426930 () Bool)

(assert (=> b!3163705 m!3426930))

(declare-fun m!3426932 () Bool)

(assert (=> b!3163705 m!3426932))

(declare-fun m!3426934 () Bool)

(assert (=> b!3163707 m!3426934))

(assert (=> b!3163707 m!3426816))

(assert (=> d!868639 d!868673))

(declare-fun b!3163709 () Bool)

(declare-fun res!1287658 () Bool)

(declare-fun e!1970907 () Bool)

(assert (=> b!3163709 (=> (not res!1287658) (not e!1970907))))

(declare-fun call!229233 () Bool)

(assert (=> b!3163709 (= res!1287658 call!229233)))

(declare-fun e!1970911 () Bool)

(assert (=> b!3163709 (= e!1970911 e!1970907)))

(declare-fun b!3163710 () Bool)

(declare-fun e!1970909 () Bool)

(declare-fun e!1970905 () Bool)

(assert (=> b!3163710 (= e!1970909 e!1970905)))

(declare-fun res!1287662 () Bool)

(assert (=> b!3163710 (= res!1287662 (not (nullable!3337 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> b!3163710 (=> (not res!1287662) (not e!1970905))))

(declare-fun b!3163711 () Bool)

(declare-fun call!229235 () Bool)

(assert (=> b!3163711 (= e!1970905 call!229235)))

(declare-fun b!3163712 () Bool)

(declare-fun e!1970908 () Bool)

(declare-fun call!229234 () Bool)

(assert (=> b!3163712 (= e!1970908 call!229234)))

(declare-fun c!532019 () Bool)

(declare-fun c!532018 () Bool)

(declare-fun bm!229228 () Bool)

(assert (=> bm!229228 (= call!229235 (validRegex!4452 (ite c!532018 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!532019 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun bm!229229 () Bool)

(assert (=> bm!229229 (= call!229234 (validRegex!4452 (ite c!532019 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))

(declare-fun b!3163713 () Bool)

(declare-fun e!1970910 () Bool)

(assert (=> b!3163713 (= e!1970910 e!1970909)))

(assert (=> b!3163713 (= c!532018 ((_ is Star!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(declare-fun b!3163714 () Bool)

(declare-fun e!1970906 () Bool)

(assert (=> b!3163714 (= e!1970906 e!1970908)))

(declare-fun res!1287661 () Bool)

(assert (=> b!3163714 (=> (not res!1287661) (not e!1970908))))

(assert (=> b!3163714 (= res!1287661 call!229233)))

(declare-fun bm!229230 () Bool)

(assert (=> bm!229230 (= call!229233 call!229235)))

(declare-fun d!868675 () Bool)

(declare-fun res!1287660 () Bool)

(assert (=> d!868675 (=> res!1287660 e!1970910)))

(assert (=> d!868675 (= res!1287660 ((_ is ElementMatch!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(assert (=> d!868675 (= (validRegex!4452 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) e!1970910)))

(declare-fun b!3163708 () Bool)

(declare-fun res!1287659 () Bool)

(assert (=> b!3163708 (=> res!1287659 e!1970906)))

(assert (=> b!3163708 (= res!1287659 (not ((_ is Concat!15048) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))

(assert (=> b!3163708 (= e!1970911 e!1970906)))

(declare-fun b!3163715 () Bool)

(assert (=> b!3163715 (= e!1970907 call!229234)))

(declare-fun b!3163716 () Bool)

(assert (=> b!3163716 (= e!1970909 e!1970911)))

(assert (=> b!3163716 (= c!532019 ((_ is Union!9727) (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))

(assert (= (and d!868675 (not res!1287660)) b!3163713))

(assert (= (and b!3163713 c!532018) b!3163710))

(assert (= (and b!3163713 (not c!532018)) b!3163716))

(assert (= (and b!3163710 res!1287662) b!3163711))

(assert (= (and b!3163716 c!532019) b!3163709))

(assert (= (and b!3163716 (not c!532019)) b!3163708))

(assert (= (and b!3163709 res!1287658) b!3163715))

(assert (= (and b!3163708 (not res!1287659)) b!3163714))

(assert (= (and b!3163714 res!1287661) b!3163712))

(assert (= (or b!3163709 b!3163714) bm!229230))

(assert (= (or b!3163715 b!3163712) bm!229229))

(assert (= (or b!3163711 bm!229230) bm!229228))

(declare-fun m!3426936 () Bool)

(assert (=> b!3163710 m!3426936))

(declare-fun m!3426938 () Bool)

(assert (=> bm!229228 m!3426938))

(declare-fun m!3426940 () Bool)

(assert (=> bm!229229 m!3426940))

(assert (=> d!868639 d!868675))

(declare-fun d!868677 () Bool)

(assert (=> d!868677 (= (nullable!3337 (reg!10056 r!13156)) (nullableFct!948 (reg!10056 r!13156)))))

(declare-fun bs!539478 () Bool)

(assert (= bs!539478 d!868677))

(declare-fun m!3426942 () Bool)

(assert (=> bs!539478 m!3426942))

(assert (=> b!3163473 d!868677))

(declare-fun d!868679 () Bool)

(assert (=> d!868679 (= (nullable!3337 (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))) (nullableFct!948 (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))

(declare-fun bs!539479 () Bool)

(assert (= bs!539479 d!868679))

(declare-fun m!3426944 () Bool)

(assert (=> bs!539479 m!3426944))

(assert (=> b!3163514 d!868679))

(declare-fun bs!539480 () Bool)

(declare-fun d!868681 () Bool)

(assert (= bs!539480 (and d!868681 b!3163452)))

(declare-fun lambda!115798 () Int)

(assert (=> bs!539480 (= lambda!115798 lambda!115790)))

(declare-fun bs!539481 () Bool)

(assert (= bs!539481 (and d!868681 b!3163650)))

(assert (=> bs!539481 (= lambda!115798 lambda!115794)))

(declare-fun bs!539482 () Bool)

(assert (= bs!539482 (and d!868681 d!868669)))

(assert (=> bs!539482 (= lambda!115798 lambda!115797)))

(declare-fun lt!1063550 () tuple2!34464)

(assert (=> d!868681 (validCacheMap!51 (cache!4195 (_2!20364 lt!1063550)))))

(declare-fun Unit!49789 () Unit!49786)

(assert (=> d!868681 (= lt!1063550 (tuple2!34465 Unit!49789 (Cache!379 (_2!20366 (update!264 (cache!4195 (_2!20363 lt!1063494)) (tuple2!34459 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409) (_1!20363 lt!1063494))))))))

(declare-fun lt!1063551 () Unit!49786)

(declare-fun lt!1063553 () Unit!49786)

(assert (=> d!868681 (= lt!1063551 lt!1063553)))

(declare-fun lt!1063552 () tuple2!34458)

(assert (=> d!868681 (forall!7142 (toList!2049 (map!7888 (_2!20366 (update!264 (cache!4195 (_2!20363 lt!1063494)) lt!1063552 (_1!20363 lt!1063494))))) lambda!115798)))

(assert (=> d!868681 (= lt!1063553 (lemmaUpdatePreservesForallPairs!28 (cache!4195 (_2!20363 lt!1063494)) lt!1063552 (_1!20363 lt!1063494) lambda!115798))))

(assert (=> d!868681 (= lt!1063552 (tuple2!34459 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409))))

(assert (=> d!868681 (validCacheMap!51 (cache!4195 (_2!20363 lt!1063494)))))

(assert (=> d!868681 (= (update!263 (_2!20363 lt!1063494) (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409 (_1!20363 lt!1063494)) lt!1063550)))

(declare-fun bs!539483 () Bool)

(assert (= bs!539483 d!868681))

(declare-fun m!3426946 () Bool)

(assert (=> bs!539483 m!3426946))

(declare-fun m!3426948 () Bool)

(assert (=> bs!539483 m!3426948))

(declare-fun m!3426950 () Bool)

(assert (=> bs!539483 m!3426950))

(declare-fun m!3426952 () Bool)

(assert (=> bs!539483 m!3426952))

(declare-fun m!3426954 () Bool)

(assert (=> bs!539483 m!3426954))

(declare-fun m!3426956 () Bool)

(assert (=> bs!539483 m!3426956))

(declare-fun m!3426958 () Bool)

(assert (=> bs!539483 m!3426958))

(assert (=> b!3163513 d!868681))

(assert (=> b!3163482 d!868661))

(declare-fun lt!1063560 () tuple2!34462)

(declare-fun b!3163717 () Bool)

(declare-fun e!1970914 () tuple2!34462)

(assert (=> b!3163717 (= e!1970914 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063560) (Star!9727 (reg!10056 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))) (_2!20363 lt!1063560)))))

(declare-fun call!229236 () tuple2!34462)

(assert (=> b!3163717 (= lt!1063560 call!229236)))

(declare-fun bm!229231 () Bool)

(declare-fun call!229237 () tuple2!34462)

(assert (=> bm!229231 (= call!229236 call!229237)))

(declare-fun d!868683 () Bool)

(declare-fun lt!1063562 () tuple2!34462)

(assert (=> d!868683 (= (_1!20363 lt!1063562) (derivativeStep!2886 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(declare-fun e!1970916 () tuple2!34462)

(assert (=> d!868683 (= lt!1063562 e!1970916)))

(declare-fun c!532023 () Bool)

(declare-fun lt!1063557 () Option!6887)

(assert (=> d!868683 (= c!532023 ((_ is Some!6886) lt!1063557))))

(assert (=> d!868683 (= lt!1063557 (get!11223 (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(assert (=> d!868683 (validRegex!4452 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> d!868683 (= (derivativeStepMem!23 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))) lt!1063562)))

(declare-fun b!3163718 () Bool)

(assert (=> b!3163718 (= e!1970916 (tuple2!34463 (v!35096 lt!1063557) (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))

(declare-fun b!3163719 () Bool)

(declare-fun lt!1063558 () tuple2!34462)

(assert (=> b!3163719 (= lt!1063558 call!229237)))

(declare-fun lt!1063561 () tuple2!34462)

(declare-fun call!229239 () tuple2!34462)

(assert (=> b!3163719 (= lt!1063561 call!229239)))

(declare-fun e!1970915 () tuple2!34462)

(assert (=> b!3163719 (= e!1970915 (tuple2!34463 (Union!9727 (_1!20363 lt!1063561) (_1!20363 lt!1063558)) (_2!20363 lt!1063558)))))

(declare-fun b!3163720 () Bool)

(declare-fun e!1970917 () tuple2!34462)

(assert (=> b!3163720 (= e!1970917 e!1970915)))

(declare-fun c!532022 () Bool)

(assert (=> b!3163720 (= c!532022 ((_ is Union!9727) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun e!1970912 () tuple2!34462)

(declare-fun b!3163721 () Bool)

(assert (=> b!3163721 (= e!1970912 (tuple2!34463 EmptyLang!9727 (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))

(declare-fun b!3163722 () Bool)

(declare-fun lt!1063556 () tuple2!34462)

(declare-fun call!229238 () tuple2!34462)

(assert (=> b!3163722 (= lt!1063556 call!229238)))

(declare-fun lt!1063555 () tuple2!34462)

(assert (=> b!3163722 (= lt!1063555 call!229236)))

(declare-fun e!1970913 () tuple2!34462)

(assert (=> b!3163722 (= e!1970913 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063555) (regTwo!19966 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))) (_1!20363 lt!1063556)) (_2!20363 lt!1063556)))))

(declare-fun b!3163723 () Bool)

(declare-fun lt!1063554 () tuple2!34462)

(assert (=> b!3163723 (= e!1970916 (tuple2!34463 (_1!20363 lt!1063554) (_2!20364 (update!263 (_2!20363 lt!1063554) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409 (_1!20363 lt!1063554)))))))

(declare-fun c!532024 () Bool)

(assert (=> b!3163723 (= c!532024 (or ((_ is EmptyExpr!9727) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) ((_ is EmptyLang!9727) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))))

(assert (=> b!3163723 (= lt!1063554 e!1970912)))

(declare-fun b!3163724 () Bool)

(assert (=> b!3163724 (= e!1970914 e!1970913)))

(declare-fun c!532025 () Bool)

(assert (=> b!3163724 (= c!532025 (nullable!3337 (regOne!19966 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))))

(declare-fun b!3163725 () Bool)

(declare-fun c!532021 () Bool)

(assert (=> b!3163725 (= c!532021 ((_ is Star!9727) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163725 (= e!1970915 e!1970914)))

(declare-fun b!3163726 () Bool)

(declare-fun c!532020 () Bool)

(assert (=> b!3163726 (= c!532020 ((_ is ElementMatch!9727) (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163726 (= e!1970912 e!1970917)))

(declare-fun b!3163727 () Bool)

(assert (=> b!3163727 (= e!1970917 (tuple2!34463 (ite (= a!2409 (c!531945 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))) EmptyExpr!9727 EmptyLang!9727) (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))

(declare-fun b!3163728 () Bool)

(declare-fun lt!1063559 () tuple2!34462)

(assert (=> b!3163728 (= lt!1063559 call!229238)))

(assert (=> b!3163728 (= e!1970913 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063559) (regTwo!19966 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))) EmptyLang!9727) (_2!20363 lt!1063559)))))

(declare-fun bm!229232 () Bool)

(assert (=> bm!229232 (= call!229237 (derivativeStepMem!23 (ite c!532022 (regTwo!19967 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (ite c!532021 (reg!10056 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!532022 (_2!20363 lt!1063561) (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))))))))

(declare-fun bm!229233 () Bool)

(assert (=> bm!229233 (= call!229239 (derivativeStepMem!23 (ite c!532022 (regOne!19967 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (ite c!532025 (regTwo!19966 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531976 (regOne!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531979 (regTwo!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!532022 (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))) (ite c!532025 (_2!20363 lt!1063555) (ite c!531976 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)) (ite c!531979 (_2!20363 lt!1063510) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))))

(declare-fun bm!229234 () Bool)

(assert (=> bm!229234 (= call!229238 call!229239)))

(assert (= (and d!868683 c!532023) b!3163718))

(assert (= (and d!868683 (not c!532023)) b!3163723))

(assert (= (and b!3163723 c!532024) b!3163721))

(assert (= (and b!3163723 (not c!532024)) b!3163726))

(assert (= (and b!3163726 c!532020) b!3163727))

(assert (= (and b!3163726 (not c!532020)) b!3163720))

(assert (= (and b!3163720 c!532022) b!3163719))

(assert (= (and b!3163720 (not c!532022)) b!3163725))

(assert (= (and b!3163725 c!532021) b!3163717))

(assert (= (and b!3163725 (not c!532021)) b!3163724))

(assert (= (and b!3163724 c!532025) b!3163722))

(assert (= (and b!3163724 (not c!532025)) b!3163728))

(assert (= (or b!3163722 b!3163728) bm!229234))

(assert (= (or b!3163717 b!3163722) bm!229231))

(assert (= (or b!3163719 bm!229234) bm!229233))

(assert (= (or b!3163719 bm!229231) bm!229232))

(declare-fun m!3426960 () Bool)

(assert (=> bm!229233 m!3426960))

(declare-fun m!3426962 () Bool)

(assert (=> bm!229232 m!3426962))

(declare-fun m!3426964 () Bool)

(assert (=> b!3163724 m!3426964))

(declare-fun m!3426966 () Bool)

(assert (=> b!3163723 m!3426966))

(declare-fun m!3426968 () Bool)

(assert (=> d!868683 m!3426968))

(declare-fun m!3426970 () Bool)

(assert (=> d!868683 m!3426970))

(declare-fun m!3426972 () Bool)

(assert (=> d!868683 m!3426972))

(assert (=> bm!229191 d!868683))

(declare-fun d!868685 () Bool)

(assert (=> d!868685 (= (isEmpty!19753 lt!1063508) (not ((_ is Some!6886) lt!1063508)))))

(assert (=> d!868637 d!868685))

(declare-fun bs!539484 () Bool)

(declare-fun b!3163758 () Bool)

(assert (= bs!539484 (and b!3163758 b!3163608)))

(declare-fun lambda!115801 () Int)

(assert (=> bs!539484 (= lambda!115801 lambda!115793)))

(declare-fun e!1970936 () Bool)

(declare-fun lt!1063610 () (_ BitVec 64))

(declare-fun b!3163751 () Bool)

(declare-datatypes ((Option!6888 0))(
  ( (None!6887) (Some!6887 (v!35097 tuple2!34460)) )
))
(declare-fun isDefined!5418 (Option!6888) Bool)

(declare-fun getPair!92 (List!35557 tuple2!34458) Option!6888)

(declare-fun apply!7940 (MutLongMap!4148 (_ BitVec 64)) List!35557)

(assert (=> b!3163751 (= e!1970936 (isDefined!5418 (getPair!92 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063610) (tuple2!34459 r!13156 a!2409))))))

(declare-fun bm!229247 () Bool)

(declare-fun call!229255 () (_ BitVec 64))

(declare-fun hash!801 (Hashable!4064 tuple2!34458) (_ BitVec 64))

(assert (=> bm!229247 (= call!229255 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(declare-fun b!3163752 () Bool)

(assert (=> b!3163752 false))

(declare-fun lt!1063603 () Unit!49786)

(declare-fun lt!1063617 () Unit!49786)

(assert (=> b!3163752 (= lt!1063603 lt!1063617)))

(declare-fun lt!1063606 () List!35558)

(declare-fun lt!1063607 () List!35557)

(declare-fun contains!6157 (List!35558 tuple2!34466) Bool)

(assert (=> b!3163752 (contains!6157 lt!1063606 (tuple2!34467 lt!1063610 lt!1063607))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!98 (List!35558 (_ BitVec 64) List!35557) Unit!49786)

(assert (=> b!3163752 (= lt!1063617 (lemmaGetValueByKeyImpliesContainsTuple!98 lt!1063606 lt!1063610 lt!1063607))))

(assert (=> b!3163752 (= lt!1063607 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063610))))

(assert (=> b!3163752 (= lt!1063606 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))

(declare-fun lt!1063621 () Unit!49786)

(declare-fun lt!1063619 () Unit!49786)

(assert (=> b!3163752 (= lt!1063621 lt!1063619)))

(declare-fun lt!1063615 () List!35558)

(declare-datatypes ((Option!6889 0))(
  ( (None!6888) (Some!6888 (v!35098 List!35557)) )
))
(declare-fun isDefined!5419 (Option!6889) Bool)

(declare-fun getValueByKey!171 (List!35558 (_ BitVec 64)) Option!6889)

(assert (=> b!3163752 (isDefined!5419 (getValueByKey!171 lt!1063615 lt!1063610))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!126 (List!35558 (_ BitVec 64)) Unit!49786)

(assert (=> b!3163752 (= lt!1063619 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 lt!1063615 lt!1063610))))

(assert (=> b!3163752 (= lt!1063615 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))

(declare-fun lt!1063612 () Unit!49786)

(declare-fun lt!1063608 () Unit!49786)

(assert (=> b!3163752 (= lt!1063612 lt!1063608)))

(declare-fun lt!1063622 () List!35558)

(declare-fun containsKey!190 (List!35558 (_ BitVec 64)) Bool)

(assert (=> b!3163752 (containsKey!190 lt!1063622 lt!1063610)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!93 (List!35558 (_ BitVec 64)) Unit!49786)

(assert (=> b!3163752 (= lt!1063608 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!93 lt!1063622 lt!1063610))))

(assert (=> b!3163752 (= lt!1063622 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))

(declare-fun e!1970937 () Unit!49786)

(declare-fun Unit!49790 () Unit!49786)

(assert (=> b!3163752 (= e!1970937 Unit!49790)))

(declare-fun b!3163753 () Bool)

(declare-fun e!1970933 () Unit!49786)

(declare-fun e!1970935 () Unit!49786)

(assert (=> b!3163753 (= e!1970933 e!1970935)))

(declare-fun res!1287670 () Bool)

(declare-fun call!229253 () Bool)

(assert (=> b!3163753 (= res!1287670 call!229253)))

(declare-fun e!1970932 () Bool)

(assert (=> b!3163753 (=> (not res!1287670) (not e!1970932))))

(declare-fun c!532035 () Bool)

(assert (=> b!3163753 (= c!532035 e!1970932)))

(declare-fun b!3163754 () Bool)

(declare-fun call!229252 () Bool)

(assert (=> b!3163754 (= e!1970932 call!229252)))

(declare-fun b!3163755 () Bool)

(declare-fun e!1970934 () Bool)

(assert (=> b!3163755 (= e!1970934 call!229252)))

(declare-fun b!3163756 () Bool)

(assert (=> b!3163756 false))

(declare-fun lt!1063605 () Unit!49786)

(declare-fun lt!1063618 () Unit!49786)

(assert (=> b!3163756 (= lt!1063605 lt!1063618)))

(declare-fun lt!1063604 () ListLongMap!715)

(declare-fun contains!6158 (ListMap!1295 tuple2!34458) Bool)

(assert (=> b!3163756 (contains!6158 (extractMap!230 (toList!2050 lt!1063604)) (tuple2!34459 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!92 (ListLongMap!715 tuple2!34458 Hashable!4064) Unit!49786)

(assert (=> b!3163756 (= lt!1063618 (lemmaInLongMapThenInGenericMap!92 lt!1063604 (tuple2!34459 r!13156 a!2409) (hashF!6096 (cache!4195 cache!347))))))

(declare-fun call!229256 () ListLongMap!715)

(assert (=> b!3163756 (= lt!1063604 call!229256)))

(declare-fun Unit!49791 () Unit!49786)

(assert (=> b!3163756 (= e!1970935 Unit!49791)))

(declare-fun b!3163757 () Bool)

(declare-fun Unit!49792 () Unit!49786)

(assert (=> b!3163757 (= e!1970935 Unit!49792)))

(declare-fun c!532034 () Bool)

(declare-fun lt!1063609 () ListLongMap!715)

(declare-fun bm!229249 () Bool)

(declare-fun contains!6159 (ListLongMap!715 (_ BitVec 64)) Bool)

(assert (=> bm!229249 (= call!229253 (contains!6159 (ite c!532034 lt!1063609 call!229256) call!229255))))

(declare-fun e!1970938 () Unit!49786)

(declare-fun forallContained!1070 (List!35558 Int tuple2!34466) Unit!49786)

(assert (=> b!3163758 (= e!1970938 (forallContained!1070 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))) lambda!115801 (tuple2!34467 lt!1063610 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063610))))))

(declare-fun c!532036 () Bool)

(assert (=> b!3163758 (= c!532036 (not (contains!6157 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))) (tuple2!34467 lt!1063610 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063610)))))))

(declare-fun lt!1063613 () Unit!49786)

(assert (=> b!3163758 (= lt!1063613 e!1970937)))

(declare-fun bm!229250 () Bool)

(declare-fun call!229254 () Option!6888)

(assert (=> bm!229250 (= call!229252 (isDefined!5418 call!229254))))

(declare-fun bm!229251 () Bool)

(assert (=> bm!229251 (= call!229256 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))

(declare-fun bm!229248 () Bool)

(declare-fun call!229257 () List!35557)

(assert (=> bm!229248 (= call!229254 (getPair!92 call!229257 (tuple2!34459 r!13156 a!2409)))))

(declare-fun d!868687 () Bool)

(declare-fun lt!1063620 () Bool)

(assert (=> d!868687 (= lt!1063620 (contains!6158 (map!7888 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(assert (=> d!868687 (= lt!1063620 e!1970936)))

(declare-fun res!1287671 () Bool)

(assert (=> d!868687 (=> (not res!1287671) (not e!1970936))))

(declare-fun contains!6160 (MutLongMap!4148 (_ BitVec 64)) Bool)

(assert (=> d!868687 (= res!1287671 (contains!6160 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063610))))

(declare-fun lt!1063614 () Unit!49786)

(assert (=> d!868687 (= lt!1063614 e!1970933)))

(assert (=> d!868687 (= c!532034 (contains!6158 (extractMap!230 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347)))))) (tuple2!34459 r!13156 a!2409)))))

(declare-fun lt!1063611 () Unit!49786)

(assert (=> d!868687 (= lt!1063611 e!1970938)))

(declare-fun c!532037 () Bool)

(assert (=> d!868687 (= c!532037 (contains!6160 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063610))))

(assert (=> d!868687 (= lt!1063610 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(assert (=> d!868687 (valid!3231 (cache!4195 cache!347))))

(assert (=> d!868687 (= (contains!6156 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409)) lt!1063620)))

(declare-fun b!3163759 () Bool)

(declare-fun Unit!49793 () Unit!49786)

(assert (=> b!3163759 (= e!1970937 Unit!49793)))

(declare-fun b!3163760 () Bool)

(declare-fun lt!1063616 () Unit!49786)

(assert (=> b!3163760 (= e!1970933 lt!1063616)))

(assert (=> b!3163760 (= lt!1063609 call!229256)))

(declare-fun lemmaInGenericMapThenInLongMap!92 (ListLongMap!715 tuple2!34458 Hashable!4064) Unit!49786)

(assert (=> b!3163760 (= lt!1063616 (lemmaInGenericMapThenInLongMap!92 lt!1063609 (tuple2!34459 r!13156 a!2409) (hashF!6096 (cache!4195 cache!347))))))

(declare-fun res!1287669 () Bool)

(assert (=> b!3163760 (= res!1287669 call!229253)))

(assert (=> b!3163760 (=> (not res!1287669) (not e!1970934))))

(assert (=> b!3163760 e!1970934))

(declare-fun bm!229252 () Bool)

(declare-fun apply!7941 (ListLongMap!715 (_ BitVec 64)) List!35557)

(assert (=> bm!229252 (= call!229257 (apply!7941 (ite c!532034 lt!1063609 call!229256) call!229255))))

(declare-fun b!3163761 () Bool)

(declare-fun Unit!49794 () Unit!49786)

(assert (=> b!3163761 (= e!1970938 Unit!49794)))

(assert (= (and d!868687 c!532037) b!3163758))

(assert (= (and d!868687 (not c!532037)) b!3163761))

(assert (= (and b!3163758 c!532036) b!3163752))

(assert (= (and b!3163758 (not c!532036)) b!3163759))

(assert (= (and d!868687 c!532034) b!3163760))

(assert (= (and d!868687 (not c!532034)) b!3163753))

(assert (= (and b!3163760 res!1287669) b!3163755))

(assert (= (and b!3163753 res!1287670) b!3163754))

(assert (= (and b!3163753 c!532035) b!3163756))

(assert (= (and b!3163753 (not c!532035)) b!3163757))

(assert (= (or b!3163760 b!3163755 b!3163753 b!3163754) bm!229247))

(assert (= (or b!3163760 b!3163753 b!3163754 b!3163756) bm!229251))

(assert (= (or b!3163760 b!3163753) bm!229249))

(assert (= (or b!3163755 b!3163754) bm!229252))

(assert (= (or b!3163755 b!3163754) bm!229248))

(assert (= (or b!3163755 b!3163754) bm!229250))

(assert (= (and d!868687 res!1287671) b!3163751))

(declare-fun m!3426974 () Bool)

(assert (=> bm!229247 m!3426974))

(declare-fun m!3426976 () Bool)

(assert (=> b!3163760 m!3426976))

(declare-fun m!3426978 () Bool)

(assert (=> bm!229250 m!3426978))

(declare-fun m!3426980 () Bool)

(assert (=> b!3163751 m!3426980))

(assert (=> b!3163751 m!3426980))

(declare-fun m!3426982 () Bool)

(assert (=> b!3163751 m!3426982))

(assert (=> b!3163751 m!3426982))

(declare-fun m!3426984 () Bool)

(assert (=> b!3163751 m!3426984))

(declare-fun m!3426986 () Bool)

(assert (=> d!868687 m!3426986))

(assert (=> d!868687 m!3426878))

(declare-fun m!3426988 () Bool)

(assert (=> d!868687 m!3426988))

(assert (=> d!868687 m!3426878))

(declare-fun m!3426990 () Bool)

(assert (=> d!868687 m!3426990))

(assert (=> d!868687 m!3426876))

(assert (=> d!868687 m!3426986))

(declare-fun m!3426992 () Bool)

(assert (=> d!868687 m!3426992))

(declare-fun m!3426994 () Bool)

(assert (=> d!868687 m!3426994))

(assert (=> d!868687 m!3426974))

(assert (=> bm!229251 m!3426990))

(declare-fun m!3426996 () Bool)

(assert (=> b!3163752 m!3426996))

(declare-fun m!3426998 () Bool)

(assert (=> b!3163752 m!3426998))

(declare-fun m!3427000 () Bool)

(assert (=> b!3163752 m!3427000))

(declare-fun m!3427002 () Bool)

(assert (=> b!3163752 m!3427002))

(assert (=> b!3163752 m!3426990))

(declare-fun m!3427004 () Bool)

(assert (=> b!3163752 m!3427004))

(declare-fun m!3427006 () Bool)

(assert (=> b!3163752 m!3427006))

(declare-fun m!3427008 () Bool)

(assert (=> b!3163752 m!3427008))

(assert (=> b!3163752 m!3427000))

(assert (=> b!3163752 m!3426980))

(declare-fun m!3427010 () Bool)

(assert (=> b!3163756 m!3427010))

(assert (=> b!3163756 m!3427010))

(declare-fun m!3427012 () Bool)

(assert (=> b!3163756 m!3427012))

(declare-fun m!3427014 () Bool)

(assert (=> b!3163756 m!3427014))

(declare-fun m!3427016 () Bool)

(assert (=> bm!229252 m!3427016))

(assert (=> b!3163758 m!3426990))

(assert (=> b!3163758 m!3426980))

(declare-fun m!3427018 () Bool)

(assert (=> b!3163758 m!3427018))

(declare-fun m!3427020 () Bool)

(assert (=> b!3163758 m!3427020))

(declare-fun m!3427022 () Bool)

(assert (=> bm!229249 m!3427022))

(declare-fun m!3427024 () Bool)

(assert (=> bm!229248 m!3427024))

(assert (=> d!868637 d!868687))

(assert (=> d!868637 d!868625))

(declare-fun d!868689 () Bool)

(assert (=> d!868689 (= (get!11224 lt!1063508) (v!35096 lt!1063508))))

(assert (=> b!3163527 d!868689))

(declare-fun b!3163762 () Bool)

(declare-fun e!1970940 () Regex!9727)

(declare-fun e!1970943 () Regex!9727)

(assert (=> b!3163762 (= e!1970940 e!1970943)))

(declare-fun c!532040 () Bool)

(assert (=> b!3163762 (= c!532040 ((_ is ElementMatch!9727) r!13156))))

(declare-fun d!868691 () Bool)

(declare-fun lt!1063623 () Regex!9727)

(assert (=> d!868691 (validRegex!4452 lt!1063623)))

(assert (=> d!868691 (= lt!1063623 e!1970940)))

(declare-fun c!532042 () Bool)

(assert (=> d!868691 (= c!532042 (or ((_ is EmptyExpr!9727) r!13156) ((_ is EmptyLang!9727) r!13156)))))

(assert (=> d!868691 (validRegex!4452 r!13156)))

(assert (=> d!868691 (= (derivativeStep!2886 r!13156 a!2409) lt!1063623)))

(declare-fun b!3163763 () Bool)

(declare-fun c!532039 () Bool)

(assert (=> b!3163763 (= c!532039 (nullable!3337 (regOne!19966 r!13156)))))

(declare-fun e!1970942 () Regex!9727)

(declare-fun e!1970941 () Regex!9727)

(assert (=> b!3163763 (= e!1970942 e!1970941)))

(declare-fun b!3163764 () Bool)

(declare-fun call!229260 () Regex!9727)

(assert (=> b!3163764 (= e!1970942 (Concat!15048 call!229260 r!13156))))

(declare-fun call!229261 () Regex!9727)

(declare-fun bm!229253 () Bool)

(declare-fun c!532041 () Bool)

(assert (=> bm!229253 (= call!229261 (derivativeStep!2886 (ite c!532041 (regOne!19967 r!13156) (regTwo!19966 r!13156)) a!2409))))

(declare-fun b!3163765 () Bool)

(declare-fun e!1970939 () Regex!9727)

(declare-fun call!229258 () Regex!9727)

(assert (=> b!3163765 (= e!1970939 (Union!9727 call!229261 call!229258))))

(declare-fun b!3163766 () Bool)

(assert (=> b!3163766 (= e!1970939 e!1970942)))

(declare-fun c!532038 () Bool)

(assert (=> b!3163766 (= c!532038 ((_ is Star!9727) r!13156))))

(declare-fun b!3163767 () Bool)

(assert (=> b!3163767 (= e!1970943 (ite (= a!2409 (c!531945 r!13156)) EmptyExpr!9727 EmptyLang!9727))))

(declare-fun bm!229254 () Bool)

(assert (=> bm!229254 (= call!229258 (derivativeStep!2886 (ite c!532041 (regTwo!19967 r!13156) (ite c!532038 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409))))

(declare-fun b!3163768 () Bool)

(assert (=> b!3163768 (= c!532041 ((_ is Union!9727) r!13156))))

(assert (=> b!3163768 (= e!1970943 e!1970939)))

(declare-fun bm!229255 () Bool)

(declare-fun call!229259 () Regex!9727)

(assert (=> bm!229255 (= call!229259 call!229260)))

(declare-fun b!3163769 () Bool)

(assert (=> b!3163769 (= e!1970941 (Union!9727 (Concat!15048 call!229259 (regTwo!19966 r!13156)) call!229261))))

(declare-fun b!3163770 () Bool)

(assert (=> b!3163770 (= e!1970940 EmptyLang!9727)))

(declare-fun bm!229256 () Bool)

(assert (=> bm!229256 (= call!229260 call!229258)))

(declare-fun b!3163771 () Bool)

(assert (=> b!3163771 (= e!1970941 (Union!9727 (Concat!15048 call!229259 (regTwo!19966 r!13156)) EmptyLang!9727))))

(assert (= (and d!868691 c!532042) b!3163770))

(assert (= (and d!868691 (not c!532042)) b!3163762))

(assert (= (and b!3163762 c!532040) b!3163767))

(assert (= (and b!3163762 (not c!532040)) b!3163768))

(assert (= (and b!3163768 c!532041) b!3163765))

(assert (= (and b!3163768 (not c!532041)) b!3163766))

(assert (= (and b!3163766 c!532038) b!3163764))

(assert (= (and b!3163766 (not c!532038)) b!3163763))

(assert (= (and b!3163763 c!532039) b!3163769))

(assert (= (and b!3163763 (not c!532039)) b!3163771))

(assert (= (or b!3163769 b!3163771) bm!229255))

(assert (= (or b!3163764 bm!229255) bm!229256))

(assert (= (or b!3163765 bm!229256) bm!229254))

(assert (= (or b!3163765 b!3163769) bm!229253))

(declare-fun m!3427026 () Bool)

(assert (=> d!868691 m!3427026))

(assert (=> d!868691 m!3426749))

(assert (=> b!3163763 m!3426745))

(declare-fun m!3427028 () Bool)

(assert (=> bm!229253 m!3427028))

(declare-fun m!3427030 () Bool)

(assert (=> bm!229254 m!3427030))

(assert (=> b!3163527 d!868691))

(declare-fun b!3163772 () Bool)

(declare-fun e!1970946 () tuple2!34462)

(declare-fun lt!1063630 () tuple2!34462)

(assert (=> b!3163772 (= e!1970946 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063630) (Star!9727 (reg!10056 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))) (_2!20363 lt!1063630)))))

(declare-fun call!229262 () tuple2!34462)

(assert (=> b!3163772 (= lt!1063630 call!229262)))

(declare-fun bm!229257 () Bool)

(declare-fun call!229263 () tuple2!34462)

(assert (=> bm!229257 (= call!229262 call!229263)))

(declare-fun d!868693 () Bool)

(declare-fun lt!1063632 () tuple2!34462)

(assert (=> d!868693 (= (_1!20363 lt!1063632) (derivativeStep!2886 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(declare-fun e!1970948 () tuple2!34462)

(assert (=> d!868693 (= lt!1063632 e!1970948)))

(declare-fun c!532046 () Bool)

(declare-fun lt!1063627 () Option!6887)

(assert (=> d!868693 (= c!532046 ((_ is Some!6886) lt!1063627))))

(assert (=> d!868693 (= lt!1063627 (get!11223 (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(assert (=> d!868693 (validRegex!4452 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> d!868693 (= (derivativeStepMem!23 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))) lt!1063632)))

(declare-fun b!3163773 () Bool)

(assert (=> b!3163773 (= e!1970948 (tuple2!34463 (v!35096 lt!1063627) (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))))))

(declare-fun b!3163774 () Bool)

(declare-fun lt!1063628 () tuple2!34462)

(assert (=> b!3163774 (= lt!1063628 call!229263)))

(declare-fun lt!1063631 () tuple2!34462)

(declare-fun call!229265 () tuple2!34462)

(assert (=> b!3163774 (= lt!1063631 call!229265)))

(declare-fun e!1970947 () tuple2!34462)

(assert (=> b!3163774 (= e!1970947 (tuple2!34463 (Union!9727 (_1!20363 lt!1063631) (_1!20363 lt!1063628)) (_2!20363 lt!1063628)))))

(declare-fun b!3163775 () Bool)

(declare-fun e!1970949 () tuple2!34462)

(assert (=> b!3163775 (= e!1970949 e!1970947)))

(declare-fun c!532045 () Bool)

(assert (=> b!3163775 (= c!532045 ((_ is Union!9727) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun e!1970944 () tuple2!34462)

(declare-fun b!3163776 () Bool)

(assert (=> b!3163776 (= e!1970944 (tuple2!34463 EmptyLang!9727 (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))))))

(declare-fun b!3163777 () Bool)

(declare-fun lt!1063626 () tuple2!34462)

(declare-fun call!229264 () tuple2!34462)

(assert (=> b!3163777 (= lt!1063626 call!229264)))

(declare-fun lt!1063625 () tuple2!34462)

(assert (=> b!3163777 (= lt!1063625 call!229262)))

(declare-fun e!1970945 () tuple2!34462)

(assert (=> b!3163777 (= e!1970945 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063625) (regTwo!19966 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))) (_1!20363 lt!1063626)) (_2!20363 lt!1063626)))))

(declare-fun b!3163778 () Bool)

(declare-fun lt!1063624 () tuple2!34462)

(assert (=> b!3163778 (= e!1970948 (tuple2!34463 (_1!20363 lt!1063624) (_2!20364 (update!263 (_2!20363 lt!1063624) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))) a!2409 (_1!20363 lt!1063624)))))))

(declare-fun c!532047 () Bool)

(assert (=> b!3163778 (= c!532047 (or ((_ is EmptyExpr!9727) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) ((_ is EmptyLang!9727) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))))

(assert (=> b!3163778 (= lt!1063624 e!1970944)))

(declare-fun b!3163779 () Bool)

(assert (=> b!3163779 (= e!1970946 e!1970945)))

(declare-fun c!532048 () Bool)

(assert (=> b!3163779 (= c!532048 (nullable!3337 (regOne!19966 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))))))

(declare-fun c!532044 () Bool)

(declare-fun b!3163780 () Bool)

(assert (=> b!3163780 (= c!532044 ((_ is Star!9727) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163780 (= e!1970947 e!1970946)))

(declare-fun c!532043 () Bool)

(declare-fun b!3163781 () Bool)

(assert (=> b!3163781 (= c!532043 ((_ is ElementMatch!9727) (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163781 (= e!1970944 e!1970949)))

(declare-fun b!3163782 () Bool)

(assert (=> b!3163782 (= e!1970949 (tuple2!34463 (ite (= a!2409 (c!531945 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))) EmptyExpr!9727 EmptyLang!9727) (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))))))

(declare-fun b!3163783 () Bool)

(declare-fun lt!1063629 () tuple2!34462)

(assert (=> b!3163783 (= lt!1063629 call!229264)))

(assert (=> b!3163783 (= e!1970945 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063629) (regTwo!19966 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))))))) EmptyLang!9727) (_2!20363 lt!1063629)))))

(declare-fun bm!229258 () Bool)

(assert (=> bm!229258 (= call!229263 (derivativeStepMem!23 (ite c!532045 (regTwo!19967 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (ite c!532044 (reg!10056 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!532045 (_2!20363 lt!1063631) (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))

(declare-fun bm!229259 () Bool)

(assert (=> bm!229259 (= call!229265 (derivativeStepMem!23 (ite c!532045 (regOne!19967 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (ite c!532048 (regTwo!19966 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531976 (regTwo!19967 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (ite c!531975 (reg!10056 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!532045 (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))) (ite c!532048 (_2!20363 lt!1063625) (ite c!531976 (_2!20363 lt!1063516) (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347)))))))))

(declare-fun bm!229260 () Bool)

(assert (=> bm!229260 (= call!229264 call!229265)))

(assert (= (and d!868693 c!532046) b!3163773))

(assert (= (and d!868693 (not c!532046)) b!3163778))

(assert (= (and b!3163778 c!532047) b!3163776))

(assert (= (and b!3163778 (not c!532047)) b!3163781))

(assert (= (and b!3163781 c!532043) b!3163782))

(assert (= (and b!3163781 (not c!532043)) b!3163775))

(assert (= (and b!3163775 c!532045) b!3163774))

(assert (= (and b!3163775 (not c!532045)) b!3163780))

(assert (= (and b!3163780 c!532044) b!3163772))

(assert (= (and b!3163780 (not c!532044)) b!3163779))

(assert (= (and b!3163779 c!532048) b!3163777))

(assert (= (and b!3163779 (not c!532048)) b!3163783))

(assert (= (or b!3163777 b!3163783) bm!229260))

(assert (= (or b!3163772 b!3163777) bm!229257))

(assert (= (or b!3163774 bm!229260) bm!229259))

(assert (= (or b!3163774 bm!229257) bm!229258))

(declare-fun m!3427032 () Bool)

(assert (=> bm!229259 m!3427032))

(declare-fun m!3427034 () Bool)

(assert (=> bm!229258 m!3427034))

(declare-fun m!3427036 () Bool)

(assert (=> b!3163779 m!3427036))

(declare-fun m!3427038 () Bool)

(assert (=> b!3163778 m!3427038))

(declare-fun m!3427040 () Bool)

(assert (=> d!868693 m!3427040))

(declare-fun m!3427042 () Bool)

(assert (=> d!868693 m!3427042))

(declare-fun m!3427044 () Bool)

(assert (=> d!868693 m!3427044))

(assert (=> bm!229190 d!868693))

(declare-fun bs!539485 () Bool)

(declare-fun b!3163799 () Bool)

(assert (= bs!539485 (and b!3163799 b!3163608)))

(declare-fun lambda!115808 () Int)

(assert (=> bs!539485 (= lambda!115808 lambda!115793)))

(declare-fun bs!539486 () Bool)

(assert (= bs!539486 (and b!3163799 b!3163758)))

(assert (=> bs!539486 (= lambda!115808 lambda!115801)))

(declare-fun d!868695 () Bool)

(declare-fun e!1970958 () Bool)

(assert (=> d!868695 e!1970958))

(declare-fun c!532056 () Bool)

(assert (=> d!868695 (= c!532056 (contains!6156 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409)))))

(declare-fun lt!1063713 () Regex!9727)

(declare-fun e!1970957 () Regex!9727)

(assert (=> d!868695 (= lt!1063713 e!1970957)))

(declare-fun c!532055 () Bool)

(assert (=> d!868695 (= c!532055 (not (contains!6156 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409))))))

(assert (=> d!868695 (valid!3231 (cache!4195 cache!347))))

(assert (=> d!868695 (= (apply!7939 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409)) lt!1063713)))

(declare-fun b!3163796 () Bool)

(declare-fun dynLambda!14357 (Int tuple2!34458) Regex!9727)

(assert (=> b!3163796 (= e!1970957 (dynLambda!14357 (defaultValue!4225 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(declare-fun b!3163797 () Bool)

(assert (=> b!3163797 false))

(declare-fun lt!1063719 () Unit!49786)

(declare-fun lt!1063712 () Unit!49786)

(assert (=> b!3163797 (= lt!1063719 lt!1063712)))

(declare-fun lt!1063698 () List!35558)

(declare-fun lt!1063708 () (_ BitVec 64))

(declare-fun lt!1063699 () List!35557)

(assert (=> b!3163797 (contains!6157 lt!1063698 (tuple2!34467 lt!1063708 lt!1063699))))

(assert (=> b!3163797 (= lt!1063712 (lemmaGetValueByKeyImpliesContainsTuple!98 lt!1063698 lt!1063708 lt!1063699))))

(assert (=> b!3163797 (= lt!1063699 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063708))))

(assert (=> b!3163797 (= lt!1063698 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))

(declare-fun lt!1063700 () Unit!49786)

(declare-fun lt!1063718 () Unit!49786)

(assert (=> b!3163797 (= lt!1063700 lt!1063718)))

(declare-fun lt!1063711 () List!35558)

(assert (=> b!3163797 (isDefined!5419 (getValueByKey!171 lt!1063711 lt!1063708))))

(assert (=> b!3163797 (= lt!1063718 (lemmaContainsKeyImpliesGetValueByKeyDefined!126 lt!1063711 lt!1063708))))

(assert (=> b!3163797 (= lt!1063711 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))

(declare-fun e!1970956 () Unit!49786)

(declare-fun Unit!49795 () Unit!49786)

(assert (=> b!3163797 (= e!1970956 Unit!49795)))

(declare-fun b!3163798 () Bool)

(declare-fun Unit!49796 () Unit!49786)

(assert (=> b!3163798 (= e!1970956 Unit!49796)))

(declare-fun get!11225 (Option!6888) tuple2!34460)

(assert (=> b!3163799 (= e!1970957 (_2!20362 (get!11225 (getPair!92 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063708) (tuple2!34459 r!13156 a!2409)))))))

(assert (=> b!3163799 (= lt!1063708 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(declare-fun c!532057 () Bool)

(assert (=> b!3163799 (= c!532057 (not (contains!6157 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))) (tuple2!34467 lt!1063708 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063708)))))))

(declare-fun lt!1063720 () Unit!49786)

(assert (=> b!3163799 (= lt!1063720 e!1970956)))

(declare-fun lt!1063704 () Unit!49786)

(assert (=> b!3163799 (= lt!1063704 (forallContained!1070 (toList!2050 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347))))) lambda!115808 (tuple2!34467 lt!1063708 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063708))))))

(declare-fun lt!1063696 () ListLongMap!715)

(assert (=> b!3163799 (= lt!1063696 (map!7889 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))

(declare-fun lt!1063703 () Unit!49786)

(declare-fun lemmaGetPairGetSameValueAsMap!30 (ListLongMap!715 tuple2!34458 Regex!9727 Hashable!4064) Unit!49786)

(assert (=> b!3163799 (= lt!1063703 (lemmaGetPairGetSameValueAsMap!30 lt!1063696 (tuple2!34459 r!13156 a!2409) (_2!20362 (get!11225 (getPair!92 (apply!7940 (v!35095 (underlying!8526 (cache!4195 cache!347))) lt!1063708) (tuple2!34459 r!13156 a!2409)))) (hashF!6096 (cache!4195 cache!347))))))

(declare-fun lt!1063707 () Unit!49786)

(declare-fun lemmaInGenMapThenLongMapContainsHash!36 (ListLongMap!715 tuple2!34458 Hashable!4064) Unit!49786)

(assert (=> b!3163799 (= lt!1063707 (lemmaInGenMapThenLongMapContainsHash!36 lt!1063696 (tuple2!34459 r!13156 a!2409) (hashF!6096 (cache!4195 cache!347))))))

(assert (=> b!3163799 (contains!6159 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(declare-fun lt!1063709 () Unit!49786)

(assert (=> b!3163799 (= lt!1063709 lt!1063707)))

(declare-fun lt!1063694 () (_ BitVec 64))

(assert (=> b!3163799 (= lt!1063694 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(declare-fun lt!1063702 () List!35557)

(assert (=> b!3163799 (= lt!1063702 (apply!7941 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))))))

(declare-fun lt!1063697 () Unit!49786)

(declare-fun lemmaGetValueImpliesTupleContained!31 (ListLongMap!715 (_ BitVec 64) List!35557) Unit!49786)

(assert (=> b!3163799 (= lt!1063697 (lemmaGetValueImpliesTupleContained!31 lt!1063696 lt!1063694 lt!1063702))))

(assert (=> b!3163799 (contains!6157 (toList!2050 lt!1063696) (tuple2!34467 lt!1063694 lt!1063702))))

(declare-fun lt!1063714 () Unit!49786)

(assert (=> b!3163799 (= lt!1063714 lt!1063697)))

(declare-fun lt!1063706 () Unit!49786)

(assert (=> b!3163799 (= lt!1063706 (forallContained!1070 (toList!2050 lt!1063696) lambda!115808 (tuple2!34467 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)) (apply!7941 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))))))))

(declare-fun lt!1063722 () Unit!49786)

(declare-fun lemmaInGenMapThenGetPairDefined!30 (ListLongMap!715 tuple2!34458 Hashable!4064) Unit!49786)

(assert (=> b!3163799 (= lt!1063722 (lemmaInGenMapThenGetPairDefined!30 lt!1063696 (tuple2!34459 r!13156 a!2409) (hashF!6096 (cache!4195 cache!347))))))

(declare-fun lt!1063693 () Unit!49786)

(assert (=> b!3163799 (= lt!1063693 (lemmaInGenMapThenLongMapContainsHash!36 lt!1063696 (tuple2!34459 r!13156 a!2409) (hashF!6096 (cache!4195 cache!347))))))

(declare-fun lt!1063705 () Unit!49786)

(assert (=> b!3163799 (= lt!1063705 lt!1063693)))

(declare-fun lt!1063716 () (_ BitVec 64))

(assert (=> b!3163799 (= lt!1063716 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)))))

(declare-fun lt!1063715 () List!35557)

(assert (=> b!3163799 (= lt!1063715 (apply!7941 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))))))

(declare-fun lt!1063710 () Unit!49786)

(assert (=> b!3163799 (= lt!1063710 (lemmaGetValueImpliesTupleContained!31 lt!1063696 lt!1063716 lt!1063715))))

(assert (=> b!3163799 (contains!6157 (toList!2050 lt!1063696) (tuple2!34467 lt!1063716 lt!1063715))))

(declare-fun lt!1063701 () Unit!49786)

(assert (=> b!3163799 (= lt!1063701 lt!1063710)))

(declare-fun lt!1063695 () Unit!49786)

(assert (=> b!3163799 (= lt!1063695 (forallContained!1070 (toList!2050 lt!1063696) lambda!115808 (tuple2!34467 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409)) (apply!7941 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))))))))

(assert (=> b!3163799 (isDefined!5418 (getPair!92 (apply!7941 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))) (tuple2!34459 r!13156 a!2409)))))

(declare-fun lt!1063717 () Unit!49786)

(assert (=> b!3163799 (= lt!1063717 lt!1063722)))

(declare-fun getValueByKey!172 (List!35557 tuple2!34458) Option!6887)

(assert (=> b!3163799 (= (_2!20362 (get!11225 (getPair!92 (apply!7941 lt!1063696 (hash!801 (hashF!6096 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))) (tuple2!34459 r!13156 a!2409)))) (get!11224 (getValueByKey!172 (toList!2049 (extractMap!230 (toList!2050 lt!1063696))) (tuple2!34459 r!13156 a!2409))))))

(declare-fun lt!1063721 () Unit!49786)

(assert (=> b!3163799 (= lt!1063721 lt!1063703)))

(declare-fun b!3163800 () Bool)

(assert (=> b!3163800 (= e!1970958 (= lt!1063713 (dynLambda!14357 (defaultValue!4225 (cache!4195 cache!347)) (tuple2!34459 r!13156 a!2409))))))

(declare-fun b!3163801 () Bool)

(assert (=> b!3163801 (= e!1970958 (= lt!1063713 (get!11224 (getValueByKey!172 (toList!2049 (map!7888 (cache!4195 cache!347))) (tuple2!34459 r!13156 a!2409)))))))

(assert (= (and d!868695 c!532055) b!3163796))

(assert (= (and d!868695 (not c!532055)) b!3163799))

(assert (= (and b!3163799 c!532057) b!3163797))

(assert (= (and b!3163799 (not c!532057)) b!3163798))

(assert (= (and d!868695 c!532056) b!3163801))

(assert (= (and d!868695 (not c!532056)) b!3163800))

(declare-fun b_lambda!86393 () Bool)

(assert (=> (not b_lambda!86393) (not b!3163796)))

(declare-fun t!234628 () Bool)

(declare-fun tb!155093 () Bool)

(assert (=> (and b!3163421 (= (defaultValue!4225 (cache!4195 cache!347)) (defaultValue!4225 (cache!4195 cache!347))) t!234628) tb!155093))

(assert (=> b!3163796 t!234628))

(declare-fun result!196822 () Bool)

(declare-fun b_and!209327 () Bool)

(assert (= b_and!209323 (and (=> t!234628 result!196822) b_and!209327)))

(declare-fun b_lambda!86395 () Bool)

(assert (=> (not b_lambda!86395) (not b!3163800)))

(assert (=> b!3163800 t!234628))

(declare-fun b_and!209329 () Bool)

(assert (= b_and!209327 (and (=> t!234628 result!196822) b_and!209329)))

(declare-fun m!3427046 () Bool)

(assert (=> b!3163800 m!3427046))

(assert (=> b!3163801 m!3426878))

(declare-fun m!3427048 () Bool)

(assert (=> b!3163801 m!3427048))

(assert (=> b!3163801 m!3427048))

(declare-fun m!3427050 () Bool)

(assert (=> b!3163801 m!3427050))

(assert (=> d!868695 m!3426798))

(assert (=> d!868695 m!3426876))

(assert (=> b!3163797 m!3426990))

(declare-fun m!3427052 () Bool)

(assert (=> b!3163797 m!3427052))

(declare-fun m!3427054 () Bool)

(assert (=> b!3163797 m!3427054))

(declare-fun m!3427056 () Bool)

(assert (=> b!3163797 m!3427056))

(declare-fun m!3427058 () Bool)

(assert (=> b!3163797 m!3427058))

(declare-fun m!3427060 () Bool)

(assert (=> b!3163797 m!3427060))

(declare-fun m!3427062 () Bool)

(assert (=> b!3163797 m!3427062))

(assert (=> b!3163797 m!3427056))

(assert (=> b!3163796 m!3427046))

(assert (=> b!3163799 m!3426974))

(declare-fun m!3427064 () Bool)

(assert (=> b!3163799 m!3427064))

(declare-fun m!3427066 () Bool)

(assert (=> b!3163799 m!3427066))

(declare-fun m!3427068 () Bool)

(assert (=> b!3163799 m!3427068))

(declare-fun m!3427070 () Bool)

(assert (=> b!3163799 m!3427070))

(assert (=> b!3163799 m!3427060))

(assert (=> b!3163799 m!3426974))

(declare-fun m!3427072 () Bool)

(assert (=> b!3163799 m!3427072))

(assert (=> b!3163799 m!3427068))

(declare-fun m!3427074 () Bool)

(assert (=> b!3163799 m!3427074))

(assert (=> b!3163799 m!3427070))

(assert (=> b!3163799 m!3426990))

(declare-fun m!3427076 () Bool)

(assert (=> b!3163799 m!3427076))

(declare-fun m!3427078 () Bool)

(assert (=> b!3163799 m!3427078))

(declare-fun m!3427080 () Bool)

(assert (=> b!3163799 m!3427080))

(declare-fun m!3427082 () Bool)

(assert (=> b!3163799 m!3427082))

(assert (=> b!3163799 m!3426974))

(declare-fun m!3427084 () Bool)

(assert (=> b!3163799 m!3427084))

(declare-fun m!3427086 () Bool)

(assert (=> b!3163799 m!3427086))

(declare-fun m!3427088 () Bool)

(assert (=> b!3163799 m!3427088))

(declare-fun m!3427090 () Bool)

(assert (=> b!3163799 m!3427090))

(assert (=> b!3163799 m!3427060))

(assert (=> b!3163799 m!3427078))

(declare-fun m!3427092 () Bool)

(assert (=> b!3163799 m!3427092))

(assert (=> b!3163799 m!3427064))

(assert (=> b!3163799 m!3427084))

(declare-fun m!3427094 () Bool)

(assert (=> b!3163799 m!3427094))

(declare-fun m!3427096 () Bool)

(assert (=> b!3163799 m!3427096))

(declare-fun m!3427098 () Bool)

(assert (=> b!3163799 m!3427098))

(assert (=> b!3163799 m!3427084))

(declare-fun m!3427100 () Bool)

(assert (=> b!3163799 m!3427100))

(declare-fun m!3427102 () Bool)

(assert (=> b!3163799 m!3427102))

(assert (=> b!3163525 d!868695))

(declare-fun bs!539487 () Bool)

(declare-fun b!3163812 () Bool)

(assert (= bs!539487 (and b!3163812 b!3163452)))

(declare-fun lambda!115811 () Int)

(assert (=> bs!539487 (= lambda!115811 lambda!115790)))

(declare-fun bs!539488 () Bool)

(assert (= bs!539488 (and b!3163812 b!3163650)))

(assert (=> bs!539488 (= lambda!115811 lambda!115794)))

(declare-fun bs!539489 () Bool)

(assert (= bs!539489 (and b!3163812 d!868669)))

(assert (=> bs!539489 (= lambda!115811 lambda!115797)))

(declare-fun bs!539490 () Bool)

(assert (= bs!539490 (and b!3163812 d!868681)))

(assert (=> bs!539490 (= lambda!115811 lambda!115798)))

(declare-fun b!3163813 () Bool)

(declare-fun e!1970972 () Unit!49786)

(declare-fun Unit!49797 () Unit!49786)

(assert (=> b!3163813 (= e!1970972 Unit!49797)))

(declare-fun d!868697 () Bool)

(declare-fun e!1970973 () Bool)

(assert (=> d!868697 e!1970973))

(declare-fun res!1287679 () Bool)

(assert (=> d!868697 (=> res!1287679 e!1970973)))

(assert (=> d!868697 (= res!1287679 (not (contains!6156 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409))))))

(declare-fun lt!1063739 () Unit!49786)

(assert (=> d!868697 (= lt!1063739 e!1970972)))

(declare-fun c!532061 () Bool)

(assert (=> d!868697 (= c!532061 (contains!6156 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409)))))

(assert (=> d!868697 (validCacheMap!51 (cache!4195 cache!347))))

(assert (=> d!868697 (= (lemmaIfInCacheThenValid!51 cache!347 r!13156 a!2409) lt!1063739)))

(declare-fun lt!1063744 () Unit!49786)

(assert (=> b!3163812 (= e!1970972 lt!1063744)))

(declare-fun lt!1063740 () tuple2!34458)

(assert (=> b!3163812 (= lt!1063740 (tuple2!34459 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!44 (MutableMap!4054 tuple2!34458 Int) Unit!49786)

(assert (=> b!3163812 (= lt!1063744 (lemmaForallPairsThenForLookup!44 (cache!4195 cache!347) lt!1063740 lambda!115811))))

(declare-fun lt!1063743 () tuple2!34460)

(assert (=> b!3163812 (= lt!1063743 (tuple2!34461 lt!1063740 (apply!7939 (cache!4195 cache!347) lt!1063740)))))

(declare-fun lt!1063741 () Regex!9727)

(assert (=> b!3163812 (= lt!1063741 (apply!7939 (cache!4195 cache!347) lt!1063740))))

(declare-fun res!1287678 () Bool)

(assert (=> b!3163812 (= res!1287678 (validRegex!4452 (_1!20361 lt!1063740)))))

(declare-fun e!1970971 () Bool)

(assert (=> b!3163812 (=> (not res!1287678) (not e!1970971))))

(assert (=> b!3163812 e!1970971))

(declare-fun b!3163815 () Bool)

(assert (=> b!3163815 (= e!1970973 (= (derivativeStep!2886 r!13156 a!2409) (apply!7939 (cache!4195 cache!347) (tuple2!34459 r!13156 a!2409))))))

(declare-fun b!3163814 () Bool)

(declare-fun lt!1063746 () tuple2!34458)

(assert (=> b!3163814 (= lt!1063746 lt!1063740)))

(declare-fun lt!1063742 () Regex!9727)

(assert (=> b!3163814 (= lt!1063742 (apply!7939 (cache!4195 cache!347) lt!1063740))))

(declare-fun lt!1063745 () Regex!9727)

(assert (=> b!3163814 (= lt!1063745 (apply!7939 (cache!4195 cache!347) lt!1063740))))

(assert (=> b!3163814 (= e!1970971 (= (apply!7939 (cache!4195 cache!347) lt!1063740) (derivativeStep!2886 (_1!20361 lt!1063740) (_2!20361 lt!1063740))))))

(assert (= (and d!868697 c!532061) b!3163812))

(assert (= (and d!868697 (not c!532061)) b!3163813))

(assert (= (and b!3163812 res!1287678) b!3163814))

(assert (= (and d!868697 (not res!1287679)) b!3163815))

(assert (=> d!868697 m!3426798))

(assert (=> d!868697 m!3426780))

(declare-fun m!3427104 () Bool)

(assert (=> b!3163812 m!3427104))

(declare-fun m!3427106 () Bool)

(assert (=> b!3163812 m!3427106))

(declare-fun m!3427108 () Bool)

(assert (=> b!3163812 m!3427108))

(assert (=> b!3163815 m!3426806))

(assert (=> b!3163815 m!3426800))

(assert (=> b!3163814 m!3427106))

(declare-fun m!3427110 () Bool)

(assert (=> b!3163814 m!3427110))

(assert (=> b!3163525 d!868697))

(declare-fun lt!1063753 () tuple2!34462)

(declare-fun b!3163816 () Bool)

(declare-fun e!1970976 () tuple2!34462)

(assert (=> b!3163816 (= e!1970976 (tuple2!34463 (Concat!15048 (_1!20363 lt!1063753) (Star!9727 (reg!10056 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))) (_2!20363 lt!1063753)))))

(declare-fun call!229266 () tuple2!34462)

(assert (=> b!3163816 (= lt!1063753 call!229266)))

(declare-fun bm!229261 () Bool)

(declare-fun call!229267 () tuple2!34462)

(assert (=> bm!229261 (= call!229266 call!229267)))

(declare-fun lt!1063755 () tuple2!34462)

(declare-fun d!868699 () Bool)

(assert (=> d!868699 (= (_1!20363 lt!1063755) (derivativeStep!2886 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(declare-fun e!1970978 () tuple2!34462)

(assert (=> d!868699 (= lt!1063755 e!1970978)))

(declare-fun c!532065 () Bool)

(declare-fun lt!1063750 () Option!6887)

(assert (=> d!868699 (= c!532065 ((_ is Some!6886) lt!1063750))))

(assert (=> d!868699 (= lt!1063750 (get!11223 (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347)) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409))))

(assert (=> d!868699 (validRegex!4452 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))

(assert (=> d!868699 (= (derivativeStepMem!23 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409 (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347))) lt!1063755)))

(declare-fun b!3163817 () Bool)

(assert (=> b!3163817 (= e!1970978 (tuple2!34463 (v!35096 lt!1063750) (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347))))))

(declare-fun b!3163818 () Bool)

(declare-fun lt!1063751 () tuple2!34462)

(assert (=> b!3163818 (= lt!1063751 call!229267)))

(declare-fun lt!1063754 () tuple2!34462)

(declare-fun call!229269 () tuple2!34462)

(assert (=> b!3163818 (= lt!1063754 call!229269)))

(declare-fun e!1970977 () tuple2!34462)

(assert (=> b!3163818 (= e!1970977 (tuple2!34463 (Union!9727 (_1!20363 lt!1063754) (_1!20363 lt!1063751)) (_2!20363 lt!1063751)))))

(declare-fun b!3163819 () Bool)

(declare-fun e!1970979 () tuple2!34462)

(assert (=> b!3163819 (= e!1970979 e!1970977)))

(declare-fun c!532064 () Bool)

(assert (=> b!3163819 (= c!532064 ((_ is Union!9727) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(declare-fun e!1970974 () tuple2!34462)

(declare-fun b!3163820 () Bool)

(assert (=> b!3163820 (= e!1970974 (tuple2!34463 EmptyLang!9727 (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347))))))

(declare-fun b!3163821 () Bool)

(declare-fun lt!1063749 () tuple2!34462)

(declare-fun call!229268 () tuple2!34462)

(assert (=> b!3163821 (= lt!1063749 call!229268)))

(declare-fun lt!1063748 () tuple2!34462)

(assert (=> b!3163821 (= lt!1063748 call!229266)))

(declare-fun e!1970975 () tuple2!34462)

(assert (=> b!3163821 (= e!1970975 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063748) (regTwo!19966 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))) (_1!20363 lt!1063749)) (_2!20363 lt!1063749)))))

(declare-fun lt!1063747 () tuple2!34462)

(declare-fun b!3163822 () Bool)

(assert (=> b!3163822 (= e!1970978 (tuple2!34463 (_1!20363 lt!1063747) (_2!20364 (update!263 (_2!20363 lt!1063747) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))) a!2409 (_1!20363 lt!1063747)))))))

(declare-fun c!532066 () Bool)

(assert (=> b!3163822 (= c!532066 (or ((_ is EmptyExpr!9727) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) ((_ is EmptyLang!9727) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))))

(assert (=> b!3163822 (= lt!1063747 e!1970974)))

(declare-fun b!3163823 () Bool)

(assert (=> b!3163823 (= e!1970976 e!1970975)))

(declare-fun c!532067 () Bool)

(assert (=> b!3163823 (= c!532067 (nullable!3337 (regOne!19966 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))))))

(declare-fun b!3163824 () Bool)

(declare-fun c!532063 () Bool)

(assert (=> b!3163824 (= c!532063 ((_ is Star!9727) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163824 (= e!1970977 e!1970976)))

(declare-fun c!532062 () Bool)

(declare-fun b!3163825 () Bool)

(assert (=> b!3163825 (= c!532062 ((_ is ElementMatch!9727) (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))))

(assert (=> b!3163825 (= e!1970974 e!1970979)))

(declare-fun b!3163826 () Bool)

(assert (=> b!3163826 (= e!1970979 (tuple2!34463 (ite (= a!2409 (c!531945 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))) EmptyExpr!9727 EmptyLang!9727) (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347))))))

(declare-fun b!3163827 () Bool)

(declare-fun lt!1063752 () tuple2!34462)

(assert (=> b!3163827 (= lt!1063752 call!229268)))

(assert (=> b!3163827 (= e!1970975 (tuple2!34463 (Union!9727 (Concat!15048 (_1!20363 lt!1063752) (regTwo!19966 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))))))) EmptyLang!9727) (_2!20363 lt!1063752)))))

(declare-fun bm!229262 () Bool)

(assert (=> bm!229262 (= call!229267 (derivativeStepMem!23 (ite c!532064 (regTwo!19967 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (ite c!532063 (reg!10056 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!532064 (_2!20363 lt!1063754) (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347)))))))

(declare-fun bm!229263 () Bool)

(assert (=> bm!229263 (= call!229269 (derivativeStepMem!23 (ite c!532064 (regOne!19967 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (ite c!532067 (regTwo!19966 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))) (regOne!19966 (ite c!531966 (regOne!19967 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (ite c!531969 (regTwo!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156)))) (regOne!19966 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))))))))) a!2409 (ite c!532064 (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347)) (ite c!532067 (_2!20363 lt!1063748) (ite c!531966 cache!347 (ite c!531969 (_2!20363 lt!1063495) cache!347))))))))

(declare-fun bm!229264 () Bool)

(assert (=> bm!229264 (= call!229268 call!229269)))

(assert (= (and d!868699 c!532065) b!3163817))

(assert (= (and d!868699 (not c!532065)) b!3163822))

(assert (= (and b!3163822 c!532066) b!3163820))

(assert (= (and b!3163822 (not c!532066)) b!3163825))

(assert (= (and b!3163825 c!532062) b!3163826))

(assert (= (and b!3163825 (not c!532062)) b!3163819))

(assert (= (and b!3163819 c!532064) b!3163818))

(assert (= (and b!3163819 (not c!532064)) b!3163824))

(assert (= (and b!3163824 c!532063) b!3163816))

(assert (= (and b!3163824 (not c!532063)) b!3163823))

(assert (= (and b!3163823 c!532067) b!3163821))

(assert (= (and b!3163823 (not c!532067)) b!3163827))

(assert (= (or b!3163821 b!3163827) bm!229264))

(assert (= (or b!3163816 b!3163821) bm!229261))

(assert (= (or b!3163818 bm!229264) bm!229263))

(assert (= (or b!3163818 bm!229261) bm!229262))

(declare-fun m!3427112 () Bool)

(assert (=> bm!229263 m!3427112))

(declare-fun m!3427114 () Bool)

(assert (=> bm!229262 m!3427114))

(declare-fun m!3427116 () Bool)

(assert (=> b!3163823 m!3427116))

(declare-fun m!3427118 () Bool)

(assert (=> b!3163822 m!3427118))

(declare-fun m!3427120 () Bool)

(assert (=> d!868699 m!3427120))

(declare-fun m!3427122 () Bool)

(assert (=> d!868699 m!3427122))

(declare-fun m!3427124 () Bool)

(assert (=> d!868699 m!3427124))

(assert (=> bm!229187 d!868699))

(declare-fun b!3163830 () Bool)

(declare-fun e!1970980 () Bool)

(declare-fun tp!996190 () Bool)

(assert (=> b!3163830 (= e!1970980 tp!996190)))

(declare-fun b!3163829 () Bool)

(declare-fun tp!996191 () Bool)

(declare-fun tp!996192 () Bool)

(assert (=> b!3163829 (= e!1970980 (and tp!996191 tp!996192))))

(declare-fun b!3163831 () Bool)

(declare-fun tp!996194 () Bool)

(declare-fun tp!996193 () Bool)

(assert (=> b!3163831 (= e!1970980 (and tp!996194 tp!996193))))

(assert (=> b!3163575 (= tp!996176 e!1970980)))

(declare-fun b!3163828 () Bool)

(assert (=> b!3163828 (= e!1970980 tp_is_empty!17017)))

(assert (= (and b!3163575 ((_ is ElementMatch!9727) (regOne!19966 (regOne!19967 r!13156)))) b!3163828))

(assert (= (and b!3163575 ((_ is Concat!15048) (regOne!19966 (regOne!19967 r!13156)))) b!3163829))

(assert (= (and b!3163575 ((_ is Star!9727) (regOne!19966 (regOne!19967 r!13156)))) b!3163830))

(assert (= (and b!3163575 ((_ is Union!9727) (regOne!19966 (regOne!19967 r!13156)))) b!3163831))

(declare-fun b!3163834 () Bool)

(declare-fun e!1970981 () Bool)

(declare-fun tp!996195 () Bool)

(assert (=> b!3163834 (= e!1970981 tp!996195)))

(declare-fun b!3163833 () Bool)

(declare-fun tp!996196 () Bool)

(declare-fun tp!996197 () Bool)

(assert (=> b!3163833 (= e!1970981 (and tp!996196 tp!996197))))

(declare-fun b!3163835 () Bool)

(declare-fun tp!996199 () Bool)

(declare-fun tp!996198 () Bool)

(assert (=> b!3163835 (= e!1970981 (and tp!996199 tp!996198))))

(assert (=> b!3163575 (= tp!996177 e!1970981)))

(declare-fun b!3163832 () Bool)

(assert (=> b!3163832 (= e!1970981 tp_is_empty!17017)))

(assert (= (and b!3163575 ((_ is ElementMatch!9727) (regTwo!19966 (regOne!19967 r!13156)))) b!3163832))

(assert (= (and b!3163575 ((_ is Concat!15048) (regTwo!19966 (regOne!19967 r!13156)))) b!3163833))

(assert (= (and b!3163575 ((_ is Star!9727) (regTwo!19966 (regOne!19967 r!13156)))) b!3163834))

(assert (= (and b!3163575 ((_ is Union!9727) (regTwo!19966 (regOne!19967 r!13156)))) b!3163835))

(declare-fun b!3163838 () Bool)

(declare-fun e!1970982 () Bool)

(declare-fun tp!996200 () Bool)

(assert (=> b!3163838 (= e!1970982 tp!996200)))

(declare-fun b!3163837 () Bool)

(declare-fun tp!996201 () Bool)

(declare-fun tp!996202 () Bool)

(assert (=> b!3163837 (= e!1970982 (and tp!996201 tp!996202))))

(declare-fun b!3163839 () Bool)

(declare-fun tp!996204 () Bool)

(declare-fun tp!996203 () Bool)

(assert (=> b!3163839 (= e!1970982 (and tp!996204 tp!996203))))

(assert (=> b!3163584 (= tp!996185 e!1970982)))

(declare-fun b!3163836 () Bool)

(assert (=> b!3163836 (= e!1970982 tp_is_empty!17017)))

(assert (= (and b!3163584 ((_ is ElementMatch!9727) (reg!10056 (reg!10056 r!13156)))) b!3163836))

(assert (= (and b!3163584 ((_ is Concat!15048) (reg!10056 (reg!10056 r!13156)))) b!3163837))

(assert (= (and b!3163584 ((_ is Star!9727) (reg!10056 (reg!10056 r!13156)))) b!3163838))

(assert (= (and b!3163584 ((_ is Union!9727) (reg!10056 (reg!10056 r!13156)))) b!3163839))

(declare-fun b!3163842 () Bool)

(declare-fun e!1970983 () Bool)

(declare-fun tp!996205 () Bool)

(assert (=> b!3163842 (= e!1970983 tp!996205)))

(declare-fun b!3163841 () Bool)

(declare-fun tp!996206 () Bool)

(declare-fun tp!996207 () Bool)

(assert (=> b!3163841 (= e!1970983 (and tp!996206 tp!996207))))

(declare-fun b!3163843 () Bool)

(declare-fun tp!996209 () Bool)

(declare-fun tp!996208 () Bool)

(assert (=> b!3163843 (= e!1970983 (and tp!996209 tp!996208))))

(assert (=> b!3163583 (= tp!996186 e!1970983)))

(declare-fun b!3163840 () Bool)

(assert (=> b!3163840 (= e!1970983 tp_is_empty!17017)))

(assert (= (and b!3163583 ((_ is ElementMatch!9727) (regOne!19966 (reg!10056 r!13156)))) b!3163840))

(assert (= (and b!3163583 ((_ is Concat!15048) (regOne!19966 (reg!10056 r!13156)))) b!3163841))

(assert (= (and b!3163583 ((_ is Star!9727) (regOne!19966 (reg!10056 r!13156)))) b!3163842))

(assert (= (and b!3163583 ((_ is Union!9727) (regOne!19966 (reg!10056 r!13156)))) b!3163843))

(declare-fun b!3163846 () Bool)

(declare-fun e!1970984 () Bool)

(declare-fun tp!996210 () Bool)

(assert (=> b!3163846 (= e!1970984 tp!996210)))

(declare-fun b!3163845 () Bool)

(declare-fun tp!996211 () Bool)

(declare-fun tp!996212 () Bool)

(assert (=> b!3163845 (= e!1970984 (and tp!996211 tp!996212))))

(declare-fun b!3163847 () Bool)

(declare-fun tp!996214 () Bool)

(declare-fun tp!996213 () Bool)

(assert (=> b!3163847 (= e!1970984 (and tp!996214 tp!996213))))

(assert (=> b!3163583 (= tp!996187 e!1970984)))

(declare-fun b!3163844 () Bool)

(assert (=> b!3163844 (= e!1970984 tp_is_empty!17017)))

(assert (= (and b!3163583 ((_ is ElementMatch!9727) (regTwo!19966 (reg!10056 r!13156)))) b!3163844))

(assert (= (and b!3163583 ((_ is Concat!15048) (regTwo!19966 (reg!10056 r!13156)))) b!3163845))

(assert (= (and b!3163583 ((_ is Star!9727) (regTwo!19966 (reg!10056 r!13156)))) b!3163846))

(assert (= (and b!3163583 ((_ is Union!9727) (regTwo!19966 (reg!10056 r!13156)))) b!3163847))

(declare-fun b!3163850 () Bool)

(declare-fun e!1970985 () Bool)

(declare-fun tp!996215 () Bool)

(assert (=> b!3163850 (= e!1970985 tp!996215)))

(declare-fun b!3163849 () Bool)

(declare-fun tp!996216 () Bool)

(declare-fun tp!996217 () Bool)

(assert (=> b!3163849 (= e!1970985 (and tp!996216 tp!996217))))

(declare-fun b!3163851 () Bool)

(declare-fun tp!996219 () Bool)

(declare-fun tp!996218 () Bool)

(assert (=> b!3163851 (= e!1970985 (and tp!996219 tp!996218))))

(assert (=> b!3163562 (= tp!996142 e!1970985)))

(declare-fun b!3163848 () Bool)

(assert (=> b!3163848 (= e!1970985 tp_is_empty!17017)))

(assert (= (and b!3163562 ((_ is ElementMatch!9727) (_1!20361 (_1!20362 (h!40853 mapDefault!18814))))) b!3163848))

(assert (= (and b!3163562 ((_ is Concat!15048) (_1!20361 (_1!20362 (h!40853 mapDefault!18814))))) b!3163849))

(assert (= (and b!3163562 ((_ is Star!9727) (_1!20361 (_1!20362 (h!40853 mapDefault!18814))))) b!3163850))

(assert (= (and b!3163562 ((_ is Union!9727) (_1!20361 (_1!20362 (h!40853 mapDefault!18814))))) b!3163851))

(declare-fun b!3163854 () Bool)

(declare-fun e!1970986 () Bool)

(declare-fun tp!996220 () Bool)

(assert (=> b!3163854 (= e!1970986 tp!996220)))

(declare-fun b!3163853 () Bool)

(declare-fun tp!996221 () Bool)

(declare-fun tp!996222 () Bool)

(assert (=> b!3163853 (= e!1970986 (and tp!996221 tp!996222))))

(declare-fun b!3163855 () Bool)

(declare-fun tp!996224 () Bool)

(declare-fun tp!996223 () Bool)

(assert (=> b!3163855 (= e!1970986 (and tp!996224 tp!996223))))

(assert (=> b!3163562 (= tp!996143 e!1970986)))

(declare-fun b!3163852 () Bool)

(assert (=> b!3163852 (= e!1970986 tp_is_empty!17017)))

(assert (= (and b!3163562 ((_ is ElementMatch!9727) (_2!20362 (h!40853 mapDefault!18814)))) b!3163852))

(assert (= (and b!3163562 ((_ is Concat!15048) (_2!20362 (h!40853 mapDefault!18814)))) b!3163853))

(assert (= (and b!3163562 ((_ is Star!9727) (_2!20362 (h!40853 mapDefault!18814)))) b!3163854))

(assert (= (and b!3163562 ((_ is Union!9727) (_2!20362 (h!40853 mapDefault!18814)))) b!3163855))

(declare-fun tp!996226 () Bool)

(declare-fun e!1970987 () Bool)

(declare-fun b!3163856 () Bool)

(declare-fun tp!996227 () Bool)

(declare-fun tp!996225 () Bool)

(assert (=> b!3163856 (= e!1970987 (and tp!996225 tp_is_empty!17017 tp!996226 tp!996227))))

(assert (=> b!3163562 (= tp!996144 e!1970987)))

(assert (= (and b!3163562 ((_ is Cons!35433) (t!234626 mapDefault!18814))) b!3163856))

(declare-fun b!3163859 () Bool)

(declare-fun e!1970988 () Bool)

(declare-fun tp!996228 () Bool)

(assert (=> b!3163859 (= e!1970988 tp!996228)))

(declare-fun b!3163858 () Bool)

(declare-fun tp!996229 () Bool)

(declare-fun tp!996230 () Bool)

(assert (=> b!3163858 (= e!1970988 (and tp!996229 tp!996230))))

(declare-fun b!3163860 () Bool)

(declare-fun tp!996232 () Bool)

(declare-fun tp!996231 () Bool)

(assert (=> b!3163860 (= e!1970988 (and tp!996232 tp!996231))))

(assert (=> b!3163557 (= tp!996135 e!1970988)))

(declare-fun b!3163857 () Bool)

(assert (=> b!3163857 (= e!1970988 tp_is_empty!17017)))

(assert (= (and b!3163557 ((_ is ElementMatch!9727) (regOne!19967 (regTwo!19966 r!13156)))) b!3163857))

(assert (= (and b!3163557 ((_ is Concat!15048) (regOne!19967 (regTwo!19966 r!13156)))) b!3163858))

(assert (= (and b!3163557 ((_ is Star!9727) (regOne!19967 (regTwo!19966 r!13156)))) b!3163859))

(assert (= (and b!3163557 ((_ is Union!9727) (regOne!19967 (regTwo!19966 r!13156)))) b!3163860))

(declare-fun b!3163863 () Bool)

(declare-fun e!1970989 () Bool)

(declare-fun tp!996233 () Bool)

(assert (=> b!3163863 (= e!1970989 tp!996233)))

(declare-fun b!3163862 () Bool)

(declare-fun tp!996234 () Bool)

(declare-fun tp!996235 () Bool)

(assert (=> b!3163862 (= e!1970989 (and tp!996234 tp!996235))))

(declare-fun b!3163864 () Bool)

(declare-fun tp!996237 () Bool)

(declare-fun tp!996236 () Bool)

(assert (=> b!3163864 (= e!1970989 (and tp!996237 tp!996236))))

(assert (=> b!3163557 (= tp!996134 e!1970989)))

(declare-fun b!3163861 () Bool)

(assert (=> b!3163861 (= e!1970989 tp_is_empty!17017)))

(assert (= (and b!3163557 ((_ is ElementMatch!9727) (regTwo!19967 (regTwo!19966 r!13156)))) b!3163861))

(assert (= (and b!3163557 ((_ is Concat!15048) (regTwo!19967 (regTwo!19966 r!13156)))) b!3163862))

(assert (= (and b!3163557 ((_ is Star!9727) (regTwo!19967 (regTwo!19966 r!13156)))) b!3163863))

(assert (= (and b!3163557 ((_ is Union!9727) (regTwo!19967 (regTwo!19966 r!13156)))) b!3163864))

(declare-fun b!3163867 () Bool)

(declare-fun e!1970990 () Bool)

(declare-fun tp!996238 () Bool)

(assert (=> b!3163867 (= e!1970990 tp!996238)))

(declare-fun b!3163866 () Bool)

(declare-fun tp!996239 () Bool)

(declare-fun tp!996240 () Bool)

(assert (=> b!3163866 (= e!1970990 (and tp!996239 tp!996240))))

(declare-fun b!3163868 () Bool)

(declare-fun tp!996242 () Bool)

(declare-fun tp!996241 () Bool)

(assert (=> b!3163868 (= e!1970990 (and tp!996242 tp!996241))))

(assert (=> b!3163556 (= tp!996131 e!1970990)))

(declare-fun b!3163865 () Bool)

(assert (=> b!3163865 (= e!1970990 tp_is_empty!17017)))

(assert (= (and b!3163556 ((_ is ElementMatch!9727) (reg!10056 (regTwo!19966 r!13156)))) b!3163865))

(assert (= (and b!3163556 ((_ is Concat!15048) (reg!10056 (regTwo!19966 r!13156)))) b!3163866))

(assert (= (and b!3163556 ((_ is Star!9727) (reg!10056 (regTwo!19966 r!13156)))) b!3163867))

(assert (= (and b!3163556 ((_ is Union!9727) (reg!10056 (regTwo!19966 r!13156)))) b!3163868))

(declare-fun b!3163879 () Bool)

(declare-fun e!1970999 () Bool)

(declare-fun lt!1063758 () MutLongMap!4148)

(assert (=> b!3163879 (= e!1970999 ((_ is LongMap!4148) lt!1063758))))

(assert (=> b!3163879 (= lt!1063758 (v!35095 (underlying!8526 (cache!4195 (_2!20363 (derivativeStepMem!23 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))))))

(declare-fun b!3163878 () Bool)

(declare-fun e!1970998 () Bool)

(assert (=> b!3163878 (= e!1970998 e!1970999)))

(declare-fun b!3163877 () Bool)

(declare-fun e!1970997 () Bool)

(assert (=> b!3163877 (= e!1970997 e!1970998)))

(assert (=> d!868639 (= true e!1970997)))

(assert (= b!3163878 b!3163879))

(assert (= (and b!3163877 ((_ is HashMap!4054) (cache!4195 (_2!20363 (derivativeStepMem!23 (ite c!531943 (regTwo!19967 r!13156) (ite c!531941 (regTwo!19966 r!13156) (regOne!19966 r!13156))) a!2409 (ite c!531943 (_2!20363 lt!1063474) (ite c!531941 (_2!20363 lt!1063475) cache!347))))))) b!3163878))

(assert (= d!868639 b!3163877))

(declare-fun b!3163882 () Bool)

(declare-fun e!1971000 () Bool)

(declare-fun tp!996243 () Bool)

(assert (=> b!3163882 (= e!1971000 tp!996243)))

(declare-fun b!3163881 () Bool)

(declare-fun tp!996244 () Bool)

(declare-fun tp!996245 () Bool)

(assert (=> b!3163881 (= e!1971000 (and tp!996244 tp!996245))))

(declare-fun b!3163883 () Bool)

(declare-fun tp!996247 () Bool)

(declare-fun tp!996246 () Bool)

(assert (=> b!3163883 (= e!1971000 (and tp!996247 tp!996246))))

(assert (=> b!3163555 (= tp!996132 e!1971000)))

(declare-fun b!3163880 () Bool)

(assert (=> b!3163880 (= e!1971000 tp_is_empty!17017)))

(assert (= (and b!3163555 ((_ is ElementMatch!9727) (regOne!19966 (regTwo!19966 r!13156)))) b!3163880))

(assert (= (and b!3163555 ((_ is Concat!15048) (regOne!19966 (regTwo!19966 r!13156)))) b!3163881))

(assert (= (and b!3163555 ((_ is Star!9727) (regOne!19966 (regTwo!19966 r!13156)))) b!3163882))

(assert (= (and b!3163555 ((_ is Union!9727) (regOne!19966 (regTwo!19966 r!13156)))) b!3163883))

(declare-fun b!3163886 () Bool)

(declare-fun e!1971001 () Bool)

(declare-fun tp!996248 () Bool)

(assert (=> b!3163886 (= e!1971001 tp!996248)))

(declare-fun b!3163885 () Bool)

(declare-fun tp!996249 () Bool)

(declare-fun tp!996250 () Bool)

(assert (=> b!3163885 (= e!1971001 (and tp!996249 tp!996250))))

(declare-fun b!3163887 () Bool)

(declare-fun tp!996252 () Bool)

(declare-fun tp!996251 () Bool)

(assert (=> b!3163887 (= e!1971001 (and tp!996252 tp!996251))))

(assert (=> b!3163555 (= tp!996133 e!1971001)))

(declare-fun b!3163884 () Bool)

(assert (=> b!3163884 (= e!1971001 tp_is_empty!17017)))

(assert (= (and b!3163555 ((_ is ElementMatch!9727) (regTwo!19966 (regTwo!19966 r!13156)))) b!3163884))

(assert (= (and b!3163555 ((_ is Concat!15048) (regTwo!19966 (regTwo!19966 r!13156)))) b!3163885))

(assert (= (and b!3163555 ((_ is Star!9727) (regTwo!19966 (regTwo!19966 r!13156)))) b!3163886))

(assert (= (and b!3163555 ((_ is Union!9727) (regTwo!19966 (regTwo!19966 r!13156)))) b!3163887))

(declare-fun b!3163890 () Bool)

(declare-fun e!1971002 () Bool)

(declare-fun tp!996253 () Bool)

(assert (=> b!3163890 (= e!1971002 tp!996253)))

(declare-fun b!3163889 () Bool)

(declare-fun tp!996254 () Bool)

(declare-fun tp!996255 () Bool)

(assert (=> b!3163889 (= e!1971002 (and tp!996254 tp!996255))))

(declare-fun b!3163891 () Bool)

(declare-fun tp!996257 () Bool)

(declare-fun tp!996256 () Bool)

(assert (=> b!3163891 (= e!1971002 (and tp!996257 tp!996256))))

(assert (=> b!3163571 (= tp!996165 e!1971002)))

(declare-fun b!3163888 () Bool)

(assert (=> b!3163888 (= e!1971002 tp_is_empty!17017)))

(assert (= (and b!3163571 ((_ is ElementMatch!9727) (_1!20361 (_1!20362 (h!40853 mapValue!18817))))) b!3163888))

(assert (= (and b!3163571 ((_ is Concat!15048) (_1!20361 (_1!20362 (h!40853 mapValue!18817))))) b!3163889))

(assert (= (and b!3163571 ((_ is Star!9727) (_1!20361 (_1!20362 (h!40853 mapValue!18817))))) b!3163890))

(assert (= (and b!3163571 ((_ is Union!9727) (_1!20361 (_1!20362 (h!40853 mapValue!18817))))) b!3163891))

(declare-fun b!3163894 () Bool)

(declare-fun e!1971003 () Bool)

(declare-fun tp!996258 () Bool)

(assert (=> b!3163894 (= e!1971003 tp!996258)))

(declare-fun b!3163893 () Bool)

(declare-fun tp!996259 () Bool)

(declare-fun tp!996260 () Bool)

(assert (=> b!3163893 (= e!1971003 (and tp!996259 tp!996260))))

(declare-fun b!3163895 () Bool)

(declare-fun tp!996262 () Bool)

(declare-fun tp!996261 () Bool)

(assert (=> b!3163895 (= e!1971003 (and tp!996262 tp!996261))))

(assert (=> b!3163571 (= tp!996170 e!1971003)))

(declare-fun b!3163892 () Bool)

(assert (=> b!3163892 (= e!1971003 tp_is_empty!17017)))

(assert (= (and b!3163571 ((_ is ElementMatch!9727) (_2!20362 (h!40853 mapValue!18817)))) b!3163892))

(assert (= (and b!3163571 ((_ is Concat!15048) (_2!20362 (h!40853 mapValue!18817)))) b!3163893))

(assert (= (and b!3163571 ((_ is Star!9727) (_2!20362 (h!40853 mapValue!18817)))) b!3163894))

(assert (= (and b!3163571 ((_ is Union!9727) (_2!20362 (h!40853 mapValue!18817)))) b!3163895))

(declare-fun tp!996263 () Bool)

(declare-fun tp!996264 () Bool)

(declare-fun tp!996265 () Bool)

(declare-fun e!1971004 () Bool)

(declare-fun b!3163896 () Bool)

(assert (=> b!3163896 (= e!1971004 (and tp!996263 tp_is_empty!17017 tp!996264 tp!996265))))

(assert (=> b!3163571 (= tp!996167 e!1971004)))

(assert (= (and b!3163571 ((_ is Cons!35433) (t!234626 mapValue!18817))) b!3163896))

(declare-fun mapNonEmpty!18818 () Bool)

(declare-fun mapRes!18818 () Bool)

(declare-fun tp!996269 () Bool)

(declare-fun e!1971006 () Bool)

(assert (=> mapNonEmpty!18818 (= mapRes!18818 (and tp!996269 e!1971006))))

(declare-fun mapKey!18818 () (_ BitVec 32))

(declare-fun mapValue!18818 () List!35557)

(declare-fun mapRest!18818 () (Array (_ BitVec 32) List!35557))

(assert (=> mapNonEmpty!18818 (= mapRest!18817 (store mapRest!18818 mapKey!18818 mapValue!18818))))

(declare-fun tp!996272 () Bool)

(declare-fun e!1971005 () Bool)

(declare-fun tp!996270 () Bool)

(declare-fun tp!996267 () Bool)

(declare-fun b!3163898 () Bool)

(assert (=> b!3163898 (= e!1971005 (and tp!996267 tp_is_empty!17017 tp!996270 tp!996272))))

(declare-fun mapIsEmpty!18818 () Bool)

(assert (=> mapIsEmpty!18818 mapRes!18818))

(declare-fun b!3163897 () Bool)

(declare-fun tp!996266 () Bool)

(declare-fun tp!996271 () Bool)

(declare-fun tp!996268 () Bool)

(assert (=> b!3163897 (= e!1971006 (and tp!996266 tp_is_empty!17017 tp!996271 tp!996268))))

(declare-fun condMapEmpty!18818 () Bool)

(declare-fun mapDefault!18818 () List!35557)

(assert (=> mapNonEmpty!18817 (= condMapEmpty!18818 (= mapRest!18817 ((as const (Array (_ BitVec 32) List!35557)) mapDefault!18818)))))

(assert (=> mapNonEmpty!18817 (= tp!996168 (and e!1971005 mapRes!18818))))

(assert (= (and mapNonEmpty!18817 condMapEmpty!18818) mapIsEmpty!18818))

(assert (= (and mapNonEmpty!18817 (not condMapEmpty!18818)) mapNonEmpty!18818))

(assert (= (and mapNonEmpty!18818 ((_ is Cons!35433) mapValue!18818)) b!3163897))

(assert (= (and mapNonEmpty!18817 ((_ is Cons!35433) mapDefault!18818)) b!3163898))

(declare-fun m!3427126 () Bool)

(assert (=> mapNonEmpty!18818 m!3427126))

(declare-fun b!3163901 () Bool)

(declare-fun e!1971007 () Bool)

(declare-fun tp!996273 () Bool)

(assert (=> b!3163901 (= e!1971007 tp!996273)))

(declare-fun b!3163900 () Bool)

(declare-fun tp!996274 () Bool)

(declare-fun tp!996275 () Bool)

(assert (=> b!3163900 (= e!1971007 (and tp!996274 tp!996275))))

(declare-fun b!3163902 () Bool)

(declare-fun tp!996277 () Bool)

(declare-fun tp!996276 () Bool)

(assert (=> b!3163902 (= e!1971007 (and tp!996277 tp!996276))))

(assert (=> b!3163577 (= tp!996179 e!1971007)))

(declare-fun b!3163899 () Bool)

(assert (=> b!3163899 (= e!1971007 tp_is_empty!17017)))

(assert (= (and b!3163577 ((_ is ElementMatch!9727) (regOne!19967 (regOne!19967 r!13156)))) b!3163899))

(assert (= (and b!3163577 ((_ is Concat!15048) (regOne!19967 (regOne!19967 r!13156)))) b!3163900))

(assert (= (and b!3163577 ((_ is Star!9727) (regOne!19967 (regOne!19967 r!13156)))) b!3163901))

(assert (= (and b!3163577 ((_ is Union!9727) (regOne!19967 (regOne!19967 r!13156)))) b!3163902))

(declare-fun b!3163905 () Bool)

(declare-fun e!1971008 () Bool)

(declare-fun tp!996278 () Bool)

(assert (=> b!3163905 (= e!1971008 tp!996278)))

(declare-fun b!3163904 () Bool)

(declare-fun tp!996279 () Bool)

(declare-fun tp!996280 () Bool)

(assert (=> b!3163904 (= e!1971008 (and tp!996279 tp!996280))))

(declare-fun b!3163906 () Bool)

(declare-fun tp!996282 () Bool)

(declare-fun tp!996281 () Bool)

(assert (=> b!3163906 (= e!1971008 (and tp!996282 tp!996281))))

(assert (=> b!3163577 (= tp!996178 e!1971008)))

(declare-fun b!3163903 () Bool)

(assert (=> b!3163903 (= e!1971008 tp_is_empty!17017)))

(assert (= (and b!3163577 ((_ is ElementMatch!9727) (regTwo!19967 (regOne!19967 r!13156)))) b!3163903))

(assert (= (and b!3163577 ((_ is Concat!15048) (regTwo!19967 (regOne!19967 r!13156)))) b!3163904))

(assert (= (and b!3163577 ((_ is Star!9727) (regTwo!19967 (regOne!19967 r!13156)))) b!3163905))

(assert (= (and b!3163577 ((_ is Union!9727) (regTwo!19967 (regOne!19967 r!13156)))) b!3163906))

(declare-fun b!3163909 () Bool)

(declare-fun e!1971009 () Bool)

(declare-fun tp!996283 () Bool)

(assert (=> b!3163909 (= e!1971009 tp!996283)))

(declare-fun b!3163908 () Bool)

(declare-fun tp!996284 () Bool)

(declare-fun tp!996285 () Bool)

(assert (=> b!3163908 (= e!1971009 (and tp!996284 tp!996285))))

(declare-fun b!3163910 () Bool)

(declare-fun tp!996287 () Bool)

(declare-fun tp!996286 () Bool)

(assert (=> b!3163910 (= e!1971009 (and tp!996287 tp!996286))))

(assert (=> b!3163563 (= tp!996145 e!1971009)))

(declare-fun b!3163907 () Bool)

(assert (=> b!3163907 (= e!1971009 tp_is_empty!17017)))

(assert (= (and b!3163563 ((_ is ElementMatch!9727) (_1!20361 (_1!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163907))

(assert (= (and b!3163563 ((_ is Concat!15048) (_1!20361 (_1!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163908))

(assert (= (and b!3163563 ((_ is Star!9727) (_1!20361 (_1!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163909))

(assert (= (and b!3163563 ((_ is Union!9727) (_1!20361 (_1!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163910))

(declare-fun b!3163913 () Bool)

(declare-fun e!1971010 () Bool)

(declare-fun tp!996288 () Bool)

(assert (=> b!3163913 (= e!1971010 tp!996288)))

(declare-fun b!3163912 () Bool)

(declare-fun tp!996289 () Bool)

(declare-fun tp!996290 () Bool)

(assert (=> b!3163912 (= e!1971010 (and tp!996289 tp!996290))))

(declare-fun b!3163914 () Bool)

(declare-fun tp!996292 () Bool)

(declare-fun tp!996291 () Bool)

(assert (=> b!3163914 (= e!1971010 (and tp!996292 tp!996291))))

(assert (=> b!3163563 (= tp!996146 e!1971010)))

(declare-fun b!3163911 () Bool)

(assert (=> b!3163911 (= e!1971010 tp_is_empty!17017)))

(assert (= (and b!3163563 ((_ is ElementMatch!9727) (_2!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163911))

(assert (= (and b!3163563 ((_ is Concat!15048) (_2!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163912))

(assert (= (and b!3163563 ((_ is Star!9727) (_2!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163913))

(assert (= (and b!3163563 ((_ is Union!9727) (_2!20362 (h!40853 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163914))

(declare-fun e!1971011 () Bool)

(declare-fun b!3163915 () Bool)

(declare-fun tp!996294 () Bool)

(declare-fun tp!996295 () Bool)

(declare-fun tp!996293 () Bool)

(assert (=> b!3163915 (= e!1971011 (and tp!996293 tp_is_empty!17017 tp!996294 tp!996295))))

(assert (=> b!3163563 (= tp!996147 e!1971011)))

(assert (= (and b!3163563 ((_ is Cons!35433) (t!234626 (zeroValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))) b!3163915))

(declare-fun b!3163918 () Bool)

(declare-fun e!1971012 () Bool)

(declare-fun tp!996296 () Bool)

(assert (=> b!3163918 (= e!1971012 tp!996296)))

(declare-fun b!3163917 () Bool)

(declare-fun tp!996297 () Bool)

(declare-fun tp!996298 () Bool)

(assert (=> b!3163917 (= e!1971012 (and tp!996297 tp!996298))))

(declare-fun b!3163919 () Bool)

(declare-fun tp!996300 () Bool)

(declare-fun tp!996299 () Bool)

(assert (=> b!3163919 (= e!1971012 (and tp!996300 tp!996299))))

(assert (=> b!3163585 (= tp!996189 e!1971012)))

(declare-fun b!3163916 () Bool)

(assert (=> b!3163916 (= e!1971012 tp_is_empty!17017)))

(assert (= (and b!3163585 ((_ is ElementMatch!9727) (regOne!19967 (reg!10056 r!13156)))) b!3163916))

(assert (= (and b!3163585 ((_ is Concat!15048) (regOne!19967 (reg!10056 r!13156)))) b!3163917))

(assert (= (and b!3163585 ((_ is Star!9727) (regOne!19967 (reg!10056 r!13156)))) b!3163918))

(assert (= (and b!3163585 ((_ is Union!9727) (regOne!19967 (reg!10056 r!13156)))) b!3163919))

(declare-fun b!3163922 () Bool)

(declare-fun e!1971013 () Bool)

(declare-fun tp!996301 () Bool)

(assert (=> b!3163922 (= e!1971013 tp!996301)))

(declare-fun b!3163921 () Bool)

(declare-fun tp!996302 () Bool)

(declare-fun tp!996303 () Bool)

(assert (=> b!3163921 (= e!1971013 (and tp!996302 tp!996303))))

(declare-fun b!3163923 () Bool)

(declare-fun tp!996305 () Bool)

(declare-fun tp!996304 () Bool)

(assert (=> b!3163923 (= e!1971013 (and tp!996305 tp!996304))))

(assert (=> b!3163585 (= tp!996188 e!1971013)))

(declare-fun b!3163920 () Bool)

(assert (=> b!3163920 (= e!1971013 tp_is_empty!17017)))

(assert (= (and b!3163585 ((_ is ElementMatch!9727) (regTwo!19967 (reg!10056 r!13156)))) b!3163920))

(assert (= (and b!3163585 ((_ is Concat!15048) (regTwo!19967 (reg!10056 r!13156)))) b!3163921))

(assert (= (and b!3163585 ((_ is Star!9727) (regTwo!19967 (reg!10056 r!13156)))) b!3163922))

(assert (= (and b!3163585 ((_ is Union!9727) (regTwo!19967 (reg!10056 r!13156)))) b!3163923))

(declare-fun b!3163926 () Bool)

(declare-fun e!1971014 () Bool)

(declare-fun tp!996306 () Bool)

(assert (=> b!3163926 (= e!1971014 tp!996306)))

(declare-fun b!3163925 () Bool)

(declare-fun tp!996307 () Bool)

(declare-fun tp!996308 () Bool)

(assert (=> b!3163925 (= e!1971014 (and tp!996307 tp!996308))))

(declare-fun b!3163927 () Bool)

(declare-fun tp!996310 () Bool)

(declare-fun tp!996309 () Bool)

(assert (=> b!3163927 (= e!1971014 (and tp!996310 tp!996309))))

(assert (=> b!3163576 (= tp!996175 e!1971014)))

(declare-fun b!3163924 () Bool)

(assert (=> b!3163924 (= e!1971014 tp_is_empty!17017)))

(assert (= (and b!3163576 ((_ is ElementMatch!9727) (reg!10056 (regOne!19967 r!13156)))) b!3163924))

(assert (= (and b!3163576 ((_ is Concat!15048) (reg!10056 (regOne!19967 r!13156)))) b!3163925))

(assert (= (and b!3163576 ((_ is Star!9727) (reg!10056 (regOne!19967 r!13156)))) b!3163926))

(assert (= (and b!3163576 ((_ is Union!9727) (reg!10056 (regOne!19967 r!13156)))) b!3163927))

(declare-fun b!3163930 () Bool)

(declare-fun e!1971015 () Bool)

(declare-fun tp!996311 () Bool)

(assert (=> b!3163930 (= e!1971015 tp!996311)))

(declare-fun b!3163929 () Bool)

(declare-fun tp!996312 () Bool)

(declare-fun tp!996313 () Bool)

(assert (=> b!3163929 (= e!1971015 (and tp!996312 tp!996313))))

(declare-fun b!3163931 () Bool)

(declare-fun tp!996315 () Bool)

(declare-fun tp!996314 () Bool)

(assert (=> b!3163931 (= e!1971015 (and tp!996315 tp!996314))))

(assert (=> b!3163580 (= tp!996180 e!1971015)))

(declare-fun b!3163928 () Bool)

(assert (=> b!3163928 (= e!1971015 tp_is_empty!17017)))

(assert (= (and b!3163580 ((_ is ElementMatch!9727) (reg!10056 (regTwo!19967 r!13156)))) b!3163928))

(assert (= (and b!3163580 ((_ is Concat!15048) (reg!10056 (regTwo!19967 r!13156)))) b!3163929))

(assert (= (and b!3163580 ((_ is Star!9727) (reg!10056 (regTwo!19967 r!13156)))) b!3163930))

(assert (= (and b!3163580 ((_ is Union!9727) (reg!10056 (regTwo!19967 r!13156)))) b!3163931))

(declare-fun b!3163934 () Bool)

(declare-fun e!1971016 () Bool)

(declare-fun tp!996316 () Bool)

(assert (=> b!3163934 (= e!1971016 tp!996316)))

(declare-fun b!3163933 () Bool)

(declare-fun tp!996317 () Bool)

(declare-fun tp!996318 () Bool)

(assert (=> b!3163933 (= e!1971016 (and tp!996317 tp!996318))))

(declare-fun b!3163935 () Bool)

(declare-fun tp!996320 () Bool)

(declare-fun tp!996319 () Bool)

(assert (=> b!3163935 (= e!1971016 (and tp!996320 tp!996319))))

(assert (=> b!3163579 (= tp!996181 e!1971016)))

(declare-fun b!3163932 () Bool)

(assert (=> b!3163932 (= e!1971016 tp_is_empty!17017)))

(assert (= (and b!3163579 ((_ is ElementMatch!9727) (regOne!19966 (regTwo!19967 r!13156)))) b!3163932))

(assert (= (and b!3163579 ((_ is Concat!15048) (regOne!19966 (regTwo!19967 r!13156)))) b!3163933))

(assert (= (and b!3163579 ((_ is Star!9727) (regOne!19966 (regTwo!19967 r!13156)))) b!3163934))

(assert (= (and b!3163579 ((_ is Union!9727) (regOne!19966 (regTwo!19967 r!13156)))) b!3163935))

(declare-fun b!3163938 () Bool)

(declare-fun e!1971017 () Bool)

(declare-fun tp!996321 () Bool)

(assert (=> b!3163938 (= e!1971017 tp!996321)))

(declare-fun b!3163937 () Bool)

(declare-fun tp!996322 () Bool)

(declare-fun tp!996323 () Bool)

(assert (=> b!3163937 (= e!1971017 (and tp!996322 tp!996323))))

(declare-fun b!3163939 () Bool)

(declare-fun tp!996325 () Bool)

(declare-fun tp!996324 () Bool)

(assert (=> b!3163939 (= e!1971017 (and tp!996325 tp!996324))))

(assert (=> b!3163579 (= tp!996182 e!1971017)))

(declare-fun b!3163936 () Bool)

(assert (=> b!3163936 (= e!1971017 tp_is_empty!17017)))

(assert (= (and b!3163579 ((_ is ElementMatch!9727) (regTwo!19966 (regTwo!19967 r!13156)))) b!3163936))

(assert (= (and b!3163579 ((_ is Concat!15048) (regTwo!19966 (regTwo!19967 r!13156)))) b!3163937))

(assert (= (and b!3163579 ((_ is Star!9727) (regTwo!19966 (regTwo!19967 r!13156)))) b!3163938))

(assert (= (and b!3163579 ((_ is Union!9727) (regTwo!19966 (regTwo!19967 r!13156)))) b!3163939))

(declare-fun b!3163942 () Bool)

(declare-fun e!1971018 () Bool)

(declare-fun tp!996326 () Bool)

(assert (=> b!3163942 (= e!1971018 tp!996326)))

(declare-fun b!3163941 () Bool)

(declare-fun tp!996327 () Bool)

(declare-fun tp!996328 () Bool)

(assert (=> b!3163941 (= e!1971018 (and tp!996327 tp!996328))))

(declare-fun b!3163943 () Bool)

(declare-fun tp!996330 () Bool)

(declare-fun tp!996329 () Bool)

(assert (=> b!3163943 (= e!1971018 (and tp!996330 tp!996329))))

(assert (=> b!3163553 (= tp!996130 e!1971018)))

(declare-fun b!3163940 () Bool)

(assert (=> b!3163940 (= e!1971018 tp_is_empty!17017)))

(assert (= (and b!3163553 ((_ is ElementMatch!9727) (regOne!19967 (regOne!19966 r!13156)))) b!3163940))

(assert (= (and b!3163553 ((_ is Concat!15048) (regOne!19967 (regOne!19966 r!13156)))) b!3163941))

(assert (= (and b!3163553 ((_ is Star!9727) (regOne!19967 (regOne!19966 r!13156)))) b!3163942))

(assert (= (and b!3163553 ((_ is Union!9727) (regOne!19967 (regOne!19966 r!13156)))) b!3163943))

(declare-fun b!3163946 () Bool)

(declare-fun e!1971019 () Bool)

(declare-fun tp!996331 () Bool)

(assert (=> b!3163946 (= e!1971019 tp!996331)))

(declare-fun b!3163945 () Bool)

(declare-fun tp!996332 () Bool)

(declare-fun tp!996333 () Bool)

(assert (=> b!3163945 (= e!1971019 (and tp!996332 tp!996333))))

(declare-fun b!3163947 () Bool)

(declare-fun tp!996335 () Bool)

(declare-fun tp!996334 () Bool)

(assert (=> b!3163947 (= e!1971019 (and tp!996335 tp!996334))))

(assert (=> b!3163553 (= tp!996129 e!1971019)))

(declare-fun b!3163944 () Bool)

(assert (=> b!3163944 (= e!1971019 tp_is_empty!17017)))

(assert (= (and b!3163553 ((_ is ElementMatch!9727) (regTwo!19967 (regOne!19966 r!13156)))) b!3163944))

(assert (= (and b!3163553 ((_ is Concat!15048) (regTwo!19967 (regOne!19966 r!13156)))) b!3163945))

(assert (= (and b!3163553 ((_ is Star!9727) (regTwo!19967 (regOne!19966 r!13156)))) b!3163946))

(assert (= (and b!3163553 ((_ is Union!9727) (regTwo!19967 (regOne!19966 r!13156)))) b!3163947))

(declare-fun b!3163950 () Bool)

(declare-fun e!1971020 () Bool)

(declare-fun tp!996336 () Bool)

(assert (=> b!3163950 (= e!1971020 tp!996336)))

(declare-fun b!3163949 () Bool)

(declare-fun tp!996337 () Bool)

(declare-fun tp!996338 () Bool)

(assert (=> b!3163949 (= e!1971020 (and tp!996337 tp!996338))))

(declare-fun b!3163951 () Bool)

(declare-fun tp!996340 () Bool)

(declare-fun tp!996339 () Bool)

(assert (=> b!3163951 (= e!1971020 (and tp!996340 tp!996339))))

(assert (=> b!3163552 (= tp!996126 e!1971020)))

(declare-fun b!3163948 () Bool)

(assert (=> b!3163948 (= e!1971020 tp_is_empty!17017)))

(assert (= (and b!3163552 ((_ is ElementMatch!9727) (reg!10056 (regOne!19966 r!13156)))) b!3163948))

(assert (= (and b!3163552 ((_ is Concat!15048) (reg!10056 (regOne!19966 r!13156)))) b!3163949))

(assert (= (and b!3163552 ((_ is Star!9727) (reg!10056 (regOne!19966 r!13156)))) b!3163950))

(assert (= (and b!3163552 ((_ is Union!9727) (reg!10056 (regOne!19966 r!13156)))) b!3163951))

(declare-fun b!3163954 () Bool)

(declare-fun e!1971021 () Bool)

(declare-fun tp!996341 () Bool)

(assert (=> b!3163954 (= e!1971021 tp!996341)))

(declare-fun b!3163953 () Bool)

(declare-fun tp!996342 () Bool)

(declare-fun tp!996343 () Bool)

(assert (=> b!3163953 (= e!1971021 (and tp!996342 tp!996343))))

(declare-fun b!3163955 () Bool)

(declare-fun tp!996345 () Bool)

(declare-fun tp!996344 () Bool)

(assert (=> b!3163955 (= e!1971021 (and tp!996345 tp!996344))))

(assert (=> b!3163564 (= tp!996148 e!1971021)))

(declare-fun b!3163952 () Bool)

(assert (=> b!3163952 (= e!1971021 tp_is_empty!17017)))

(assert (= (and b!3163564 ((_ is ElementMatch!9727) (_1!20361 (_1!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163952))

(assert (= (and b!3163564 ((_ is Concat!15048) (_1!20361 (_1!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163953))

(assert (= (and b!3163564 ((_ is Star!9727) (_1!20361 (_1!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163954))

(assert (= (and b!3163564 ((_ is Union!9727) (_1!20361 (_1!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))))) b!3163955))

(declare-fun b!3163958 () Bool)

(declare-fun e!1971022 () Bool)

(declare-fun tp!996346 () Bool)

(assert (=> b!3163958 (= e!1971022 tp!996346)))

(declare-fun b!3163957 () Bool)

(declare-fun tp!996347 () Bool)

(declare-fun tp!996348 () Bool)

(assert (=> b!3163957 (= e!1971022 (and tp!996347 tp!996348))))

(declare-fun b!3163959 () Bool)

(declare-fun tp!996350 () Bool)

(declare-fun tp!996349 () Bool)

(assert (=> b!3163959 (= e!1971022 (and tp!996350 tp!996349))))

(assert (=> b!3163564 (= tp!996149 e!1971022)))

(declare-fun b!3163956 () Bool)

(assert (=> b!3163956 (= e!1971022 tp_is_empty!17017)))

(assert (= (and b!3163564 ((_ is ElementMatch!9727) (_2!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163956))

(assert (= (and b!3163564 ((_ is Concat!15048) (_2!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163957))

(assert (= (and b!3163564 ((_ is Star!9727) (_2!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163958))

(assert (= (and b!3163564 ((_ is Union!9727) (_2!20362 (h!40853 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347)))))))))) b!3163959))

(declare-fun b!3163960 () Bool)

(declare-fun tp!996351 () Bool)

(declare-fun tp!996352 () Bool)

(declare-fun e!1971023 () Bool)

(declare-fun tp!996353 () Bool)

(assert (=> b!3163960 (= e!1971023 (and tp!996351 tp_is_empty!17017 tp!996352 tp!996353))))

(assert (=> b!3163564 (= tp!996150 e!1971023)))

(assert (= (and b!3163564 ((_ is Cons!35433) (t!234626 (minValue!4407 (v!35094 (underlying!8525 (v!35095 (underlying!8526 (cache!4195 cache!347))))))))) b!3163960))

(declare-fun b!3163963 () Bool)

(declare-fun e!1971026 () Bool)

(declare-fun lt!1063759 () MutLongMap!4148)

(assert (=> b!3163963 (= e!1971026 ((_ is LongMap!4148) lt!1063759))))

(assert (=> b!3163963 (= lt!1063759 (v!35095 (underlying!8526 (cache!4195 (_2!20363 (derivativeStepMem!23 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409 cache!347))))))))

(declare-fun b!3163962 () Bool)

(declare-fun e!1971025 () Bool)

(assert (=> b!3163962 (= e!1971025 e!1971026)))

(declare-fun b!3163961 () Bool)

(declare-fun e!1971024 () Bool)

(assert (=> b!3163961 (= e!1971024 e!1971025)))

(assert (=> d!868633 (= true e!1971024)))

(assert (= b!3163962 b!3163963))

(assert (= (and b!3163961 ((_ is HashMap!4054) (cache!4195 (_2!20363 (derivativeStepMem!23 (ite c!531943 (regOne!19967 r!13156) (ite c!531942 (reg!10056 r!13156) (regOne!19966 r!13156))) a!2409 cache!347))))) b!3163962))

(assert (= d!868633 b!3163961))

(declare-fun b!3163966 () Bool)

(declare-fun e!1971027 () Bool)

(declare-fun tp!996354 () Bool)

(assert (=> b!3163966 (= e!1971027 tp!996354)))

(declare-fun b!3163965 () Bool)

(declare-fun tp!996355 () Bool)

(declare-fun tp!996356 () Bool)

(assert (=> b!3163965 (= e!1971027 (and tp!996355 tp!996356))))

(declare-fun b!3163967 () Bool)

(declare-fun tp!996358 () Bool)

(declare-fun tp!996357 () Bool)

(assert (=> b!3163967 (= e!1971027 (and tp!996358 tp!996357))))

(assert (=> b!3163551 (= tp!996127 e!1971027)))

(declare-fun b!3163964 () Bool)

(assert (=> b!3163964 (= e!1971027 tp_is_empty!17017)))

(assert (= (and b!3163551 ((_ is ElementMatch!9727) (regOne!19966 (regOne!19966 r!13156)))) b!3163964))

(assert (= (and b!3163551 ((_ is Concat!15048) (regOne!19966 (regOne!19966 r!13156)))) b!3163965))

(assert (= (and b!3163551 ((_ is Star!9727) (regOne!19966 (regOne!19966 r!13156)))) b!3163966))

(assert (= (and b!3163551 ((_ is Union!9727) (regOne!19966 (regOne!19966 r!13156)))) b!3163967))

(declare-fun b!3163970 () Bool)

(declare-fun e!1971028 () Bool)

(declare-fun tp!996359 () Bool)

(assert (=> b!3163970 (= e!1971028 tp!996359)))

(declare-fun b!3163969 () Bool)

(declare-fun tp!996360 () Bool)

(declare-fun tp!996361 () Bool)

(assert (=> b!3163969 (= e!1971028 (and tp!996360 tp!996361))))

(declare-fun b!3163971 () Bool)

(declare-fun tp!996363 () Bool)

(declare-fun tp!996362 () Bool)

(assert (=> b!3163971 (= e!1971028 (and tp!996363 tp!996362))))

(assert (=> b!3163551 (= tp!996128 e!1971028)))

(declare-fun b!3163968 () Bool)

(assert (=> b!3163968 (= e!1971028 tp_is_empty!17017)))

(assert (= (and b!3163551 ((_ is ElementMatch!9727) (regTwo!19966 (regOne!19966 r!13156)))) b!3163968))

(assert (= (and b!3163551 ((_ is Concat!15048) (regTwo!19966 (regOne!19966 r!13156)))) b!3163969))

(assert (= (and b!3163551 ((_ is Star!9727) (regTwo!19966 (regOne!19966 r!13156)))) b!3163970))

(assert (= (and b!3163551 ((_ is Union!9727) (regTwo!19966 (regOne!19966 r!13156)))) b!3163971))

(declare-fun b!3163974 () Bool)

(declare-fun e!1971029 () Bool)

(declare-fun tp!996364 () Bool)

(assert (=> b!3163974 (= e!1971029 tp!996364)))

(declare-fun b!3163973 () Bool)

(declare-fun tp!996365 () Bool)

(declare-fun tp!996366 () Bool)

(assert (=> b!3163973 (= e!1971029 (and tp!996365 tp!996366))))

(declare-fun b!3163975 () Bool)

(declare-fun tp!996368 () Bool)

(declare-fun tp!996367 () Bool)

(assert (=> b!3163975 (= e!1971029 (and tp!996368 tp!996367))))

(assert (=> b!3163572 (= tp!996166 e!1971029)))

(declare-fun b!3163972 () Bool)

(assert (=> b!3163972 (= e!1971029 tp_is_empty!17017)))

(assert (= (and b!3163572 ((_ is ElementMatch!9727) (_1!20361 (_1!20362 (h!40853 mapDefault!18817))))) b!3163972))

(assert (= (and b!3163572 ((_ is Concat!15048) (_1!20361 (_1!20362 (h!40853 mapDefault!18817))))) b!3163973))

(assert (= (and b!3163572 ((_ is Star!9727) (_1!20361 (_1!20362 (h!40853 mapDefault!18817))))) b!3163974))

(assert (= (and b!3163572 ((_ is Union!9727) (_1!20361 (_1!20362 (h!40853 mapDefault!18817))))) b!3163975))

(declare-fun b!3163978 () Bool)

(declare-fun e!1971030 () Bool)

(declare-fun tp!996369 () Bool)

(assert (=> b!3163978 (= e!1971030 tp!996369)))

(declare-fun b!3163977 () Bool)

(declare-fun tp!996370 () Bool)

(declare-fun tp!996371 () Bool)

(assert (=> b!3163977 (= e!1971030 (and tp!996370 tp!996371))))

(declare-fun b!3163979 () Bool)

(declare-fun tp!996373 () Bool)

(declare-fun tp!996372 () Bool)

(assert (=> b!3163979 (= e!1971030 (and tp!996373 tp!996372))))

(assert (=> b!3163572 (= tp!996169 e!1971030)))

(declare-fun b!3163976 () Bool)

(assert (=> b!3163976 (= e!1971030 tp_is_empty!17017)))

(assert (= (and b!3163572 ((_ is ElementMatch!9727) (_2!20362 (h!40853 mapDefault!18817)))) b!3163976))

(assert (= (and b!3163572 ((_ is Concat!15048) (_2!20362 (h!40853 mapDefault!18817)))) b!3163977))

(assert (= (and b!3163572 ((_ is Star!9727) (_2!20362 (h!40853 mapDefault!18817)))) b!3163978))

(assert (= (and b!3163572 ((_ is Union!9727) (_2!20362 (h!40853 mapDefault!18817)))) b!3163979))

(declare-fun tp!996375 () Bool)

(declare-fun b!3163980 () Bool)

(declare-fun tp!996376 () Bool)

(declare-fun tp!996374 () Bool)

(declare-fun e!1971031 () Bool)

(assert (=> b!3163980 (= e!1971031 (and tp!996374 tp_is_empty!17017 tp!996375 tp!996376))))

(assert (=> b!3163572 (= tp!996171 e!1971031)))

(assert (= (and b!3163572 ((_ is Cons!35433) (t!234626 mapDefault!18817))) b!3163980))

(declare-fun b!3163983 () Bool)

(declare-fun e!1971032 () Bool)

(declare-fun tp!996377 () Bool)

(assert (=> b!3163983 (= e!1971032 tp!996377)))

(declare-fun b!3163982 () Bool)

(declare-fun tp!996378 () Bool)

(declare-fun tp!996379 () Bool)

(assert (=> b!3163982 (= e!1971032 (and tp!996378 tp!996379))))

(declare-fun b!3163984 () Bool)

(declare-fun tp!996381 () Bool)

(declare-fun tp!996380 () Bool)

(assert (=> b!3163984 (= e!1971032 (and tp!996381 tp!996380))))

(assert (=> b!3163573 (= tp!996172 e!1971032)))

(declare-fun b!3163981 () Bool)

(assert (=> b!3163981 (= e!1971032 tp_is_empty!17017)))

(assert (= (and b!3163573 ((_ is ElementMatch!9727) (_1!20361 (_1!20362 (h!40853 mapValue!18814))))) b!3163981))

(assert (= (and b!3163573 ((_ is Concat!15048) (_1!20361 (_1!20362 (h!40853 mapValue!18814))))) b!3163982))

(assert (= (and b!3163573 ((_ is Star!9727) (_1!20361 (_1!20362 (h!40853 mapValue!18814))))) b!3163983))

(assert (= (and b!3163573 ((_ is Union!9727) (_1!20361 (_1!20362 (h!40853 mapValue!18814))))) b!3163984))

(declare-fun b!3163987 () Bool)

(declare-fun e!1971033 () Bool)

(declare-fun tp!996382 () Bool)

(assert (=> b!3163987 (= e!1971033 tp!996382)))

(declare-fun b!3163986 () Bool)

(declare-fun tp!996383 () Bool)

(declare-fun tp!996384 () Bool)

(assert (=> b!3163986 (= e!1971033 (and tp!996383 tp!996384))))

(declare-fun b!3163988 () Bool)

(declare-fun tp!996386 () Bool)

(declare-fun tp!996385 () Bool)

(assert (=> b!3163988 (= e!1971033 (and tp!996386 tp!996385))))

(assert (=> b!3163573 (= tp!996173 e!1971033)))

(declare-fun b!3163985 () Bool)

(assert (=> b!3163985 (= e!1971033 tp_is_empty!17017)))

(assert (= (and b!3163573 ((_ is ElementMatch!9727) (_2!20362 (h!40853 mapValue!18814)))) b!3163985))

(assert (= (and b!3163573 ((_ is Concat!15048) (_2!20362 (h!40853 mapValue!18814)))) b!3163986))

(assert (= (and b!3163573 ((_ is Star!9727) (_2!20362 (h!40853 mapValue!18814)))) b!3163987))

(assert (= (and b!3163573 ((_ is Union!9727) (_2!20362 (h!40853 mapValue!18814)))) b!3163988))

(declare-fun e!1971034 () Bool)

(declare-fun tp!996388 () Bool)

(declare-fun tp!996387 () Bool)

(declare-fun tp!996389 () Bool)

(declare-fun b!3163989 () Bool)

(assert (=> b!3163989 (= e!1971034 (and tp!996387 tp_is_empty!17017 tp!996388 tp!996389))))

(assert (=> b!3163573 (= tp!996174 e!1971034)))

(assert (= (and b!3163573 ((_ is Cons!35433) (t!234626 mapValue!18814))) b!3163989))

(declare-fun b!3163992 () Bool)

(declare-fun e!1971035 () Bool)

(declare-fun tp!996390 () Bool)

(assert (=> b!3163992 (= e!1971035 tp!996390)))

(declare-fun b!3163991 () Bool)

(declare-fun tp!996391 () Bool)

(declare-fun tp!996392 () Bool)

(assert (=> b!3163991 (= e!1971035 (and tp!996391 tp!996392))))

(declare-fun b!3163993 () Bool)

(declare-fun tp!996394 () Bool)

(declare-fun tp!996393 () Bool)

(assert (=> b!3163993 (= e!1971035 (and tp!996394 tp!996393))))

(assert (=> b!3163581 (= tp!996184 e!1971035)))

(declare-fun b!3163990 () Bool)

(assert (=> b!3163990 (= e!1971035 tp_is_empty!17017)))

(assert (= (and b!3163581 ((_ is ElementMatch!9727) (regOne!19967 (regTwo!19967 r!13156)))) b!3163990))

(assert (= (and b!3163581 ((_ is Concat!15048) (regOne!19967 (regTwo!19967 r!13156)))) b!3163991))

(assert (= (and b!3163581 ((_ is Star!9727) (regOne!19967 (regTwo!19967 r!13156)))) b!3163992))

(assert (= (and b!3163581 ((_ is Union!9727) (regOne!19967 (regTwo!19967 r!13156)))) b!3163993))

(declare-fun b!3163996 () Bool)

(declare-fun e!1971036 () Bool)

(declare-fun tp!996395 () Bool)

(assert (=> b!3163996 (= e!1971036 tp!996395)))

(declare-fun b!3163995 () Bool)

(declare-fun tp!996396 () Bool)

(declare-fun tp!996397 () Bool)

(assert (=> b!3163995 (= e!1971036 (and tp!996396 tp!996397))))

(declare-fun b!3163997 () Bool)

(declare-fun tp!996399 () Bool)

(declare-fun tp!996398 () Bool)

(assert (=> b!3163997 (= e!1971036 (and tp!996399 tp!996398))))

(assert (=> b!3163581 (= tp!996183 e!1971036)))

(declare-fun b!3163994 () Bool)

(assert (=> b!3163994 (= e!1971036 tp_is_empty!17017)))

(assert (= (and b!3163581 ((_ is ElementMatch!9727) (regTwo!19967 (regTwo!19967 r!13156)))) b!3163994))

(assert (= (and b!3163581 ((_ is Concat!15048) (regTwo!19967 (regTwo!19967 r!13156)))) b!3163995))

(assert (= (and b!3163581 ((_ is Star!9727) (regTwo!19967 (regTwo!19967 r!13156)))) b!3163996))

(assert (= (and b!3163581 ((_ is Union!9727) (regTwo!19967 (regTwo!19967 r!13156)))) b!3163997))

(declare-fun b_lambda!86397 () Bool)

(assert (= b_lambda!86393 (or (and b!3163421 b_free!83073) b_lambda!86397)))

(declare-fun b_lambda!86399 () Bool)

(assert (= b_lambda!86391 (or b!3163452 b_lambda!86399)))

(declare-fun bs!539491 () Bool)

(declare-fun d!868701 () Bool)

(assert (= bs!539491 (and d!868701 b!3163452)))

(declare-fun res!1287680 () Bool)

(declare-fun e!1971037 () Bool)

(assert (=> bs!539491 (=> (not res!1287680) (not e!1971037))))

(assert (=> bs!539491 (= res!1287680 (validRegex!4452 (_1!20361 (_1!20362 (h!40853 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740)))))))))))

(assert (=> bs!539491 (= (dynLambda!14356 lambda!115790 (h!40853 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740)))))) e!1971037)))

(declare-fun b!3163998 () Bool)

(assert (=> b!3163998 (= e!1971037 (= (_2!20362 (h!40853 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740)))))) (derivativeStep!2886 (_1!20361 (_1!20362 (h!40853 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))))) (_2!20361 (_1!20362 (h!40853 (toList!2049 (map!7888 (cache!4195 (_2!20363 e!1970740))))))))))))

(assert (= (and bs!539491 res!1287680) b!3163998))

(declare-fun m!3427128 () Bool)

(assert (=> bs!539491 m!3427128))

(declare-fun m!3427130 () Bool)

(assert (=> b!3163998 m!3427130))

(assert (=> b!3163602 d!868701))

(declare-fun b_lambda!86401 () Bool)

(assert (= b_lambda!86395 (or (and b!3163421 b_free!83073) b_lambda!86401)))

(check-sat (not b!3163890) (not d!868661) (not b!3163649) b_and!209325 (not b_next!83777) (not b!3163891) (not b!3163814) (not b!3163842) (not b!3163843) (not b!3163912) (not b!3163900) (not bs!539491) (not b!3163930) (not bm!229254) (not d!868699) (not b!3163838) (not b!3163901) (not bm!229200) (not b!3163914) (not b!3163945) (not bm!229218) (not b!3163893) (not b!3163922) (not b!3163998) (not b_next!83779) (not d!868663) (not b!3163830) (not b!3163973) (not b!3163608) (not b!3163894) (not b_lambda!86401) (not b_lambda!86397) (not b!3163797) (not b!3163883) (not b!3163926) (not b!3163982) (not b!3163864) (not b!3163683) (not b!3163823) (not b!3163696) (not b!3163902) (not b!3163854) (not d!868677) (not b!3163881) (not b!3163905) (not bm!229194) (not b!3163603) (not b!3163868) tp_is_empty!17017 (not d!868669) (not b!3163969) (not b_lambda!86399) (not b!3163991) (not b!3163906) (not b!3163917) (not d!868695) (not b!3163837) (not b!3163943) (not b!3163779) (not b!3163831) (not b!3163650) (not b!3163724) (not d!868659) (not b!3163860) (not b!3163858) (not b!3163886) (not b!3163882) (not b!3163988) (not bm!229224) (not bm!229250) (not d!868681) (not b!3163960) (not b!3163707) (not b!3163829) (not bm!229217) (not b!3163933) (not bm!229221) (not bm!229195) (not b!3163908) (not b!3163941) (not b!3163866) (not b!3163979) (not b!3163951) (not b!3163751) (not b!3163949) (not d!868697) (not d!868643) (not b!3163849) (not bm!229232) (not b!3163923) (not b!3163855) (not b!3163947) (not b!3163904) (not b!3163778) (not b!3163921) (not b!3163984) (not bm!229222) (not d!868665) (not b!3163955) (not b!3163997) (not b!3163931) (not bm!229201) (not b!3163897) (not b!3163763) (not b!3163938) (not b!3163686) (not bm!229248) (not b!3163954) (not b!3163833) (not b!3163937) (not b!3163592) (not b!3163974) (not b!3163896) (not b!3163913) (not b!3163978) (not b!3163959) (not bm!229233) (not b!3163935) (not b!3163895) (not b!3163834) (not b!3163846) (not b!3163862) (not b!3163983) (not b!3163971) (not bm!229208) (not b!3163839) (not b!3163593) (not b!3163950) (not b!3163958) (not b!3163681) (not b!3163987) (not b!3163992) (not b!3163967) (not b!3163946) (not b!3163889) (not bm!229251) (not b!3163977) (not bm!229225) (not b!3163975) (not bm!229249) (not b!3163918) (not b!3163898) (not b!3163909) (not b!3163758) (not b!3163970) (not b!3163756) (not b!3163927) (not d!868653) (not b!3163672) (not bm!229262) (not b!3163841) (not tb!155093) (not b!3163845) (not b!3163934) (not bm!229252) (not bm!229247) (not b!3163859) (not b!3163863) (not b!3163957) (not b!3163996) (not b!3163752) (not b!3163851) (not b!3163885) (not d!868647) (not b!3163989) (not d!868679) (not b!3163887) (not bm!229207) (not b!3163980) (not bm!229229) (not b!3163986) (not b!3163760) (not d!868683) (not b!3163856) (not d!868691) (not b!3163919) (not b!3163621) (not b!3163815) (not b!3163723) (not bm!229263) (not b!3163799) b_and!209329 (not d!868693) (not b!3163995) (not mapNonEmpty!18818) (not b!3163953) (not d!868671) (not b!3163612) (not b!3163867) (not b!3163910) (not b!3163822) (not bm!229258) (not bm!229228) (not b!3163965) (not b!3163929) (not bm!229197) (not b!3163853) (not b!3163835) (not b!3163925) (not b!3163710) (not b!3163942) (not b!3163801) (not d!868649) (not b!3163966) (not d!868673) (not b!3163939) (not bm!229198) (not b!3163850) (not b!3163847) (not b!3163705) (not bm!229253) (not bm!229259) (not b!3163915) (not b!3163812) (not d!868687) (not b!3163609) (not b!3163993))
(check-sat b_and!209329 b_and!209325 (not b_next!83779) (not b_next!83777))
