; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296550 () Bool)

(assert start!296550)

(declare-fun b!3164122 () Bool)

(declare-fun b_free!83081 () Bool)

(declare-fun b_next!83785 () Bool)

(assert (=> b!3164122 (= b_free!83081 (not b_next!83785))))

(declare-fun tp!996465 () Bool)

(declare-fun b_and!209335 () Bool)

(assert (=> b!3164122 (= tp!996465 b_and!209335)))

(declare-fun b!3164121 () Bool)

(declare-fun b_free!83083 () Bool)

(declare-fun b_next!83787 () Bool)

(assert (=> b!3164121 (= b_free!83083 (not b_next!83787))))

(declare-fun tp!996471 () Bool)

(declare-fun b_and!209337 () Bool)

(assert (=> b!3164121 (= tp!996471 b_and!209337)))

(declare-fun bm!229285 () Bool)

(declare-datatypes ((C!19644 0))(
  ( (C!19645 (val!11858 Int)) )
))
(declare-datatypes ((Regex!9729 0))(
  ( (ElementMatch!9729 (c!532099 C!19644)) (Concat!15050 (regOne!19970 Regex!9729) (regTwo!19970 Regex!9729)) (EmptyExpr!9729) (Star!9729 (reg!10058 Regex!9729)) (EmptyLang!9729) (Union!9729 (regOne!19971 Regex!9729) (regTwo!19971 Regex!9729)) )
))
(declare-datatypes ((tuple2!34476 0))(
  ( (tuple2!34477 (_1!20370 Regex!9729) (_2!20370 C!19644)) )
))
(declare-datatypes ((tuple2!34478 0))(
  ( (tuple2!34479 (_1!20371 tuple2!34476) (_2!20371 Regex!9729)) )
))
(declare-datatypes ((array!14798 0))(
  ( (array!14799 (arr!6590 (Array (_ BitVec 32) (_ BitVec 64))) (size!26676 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4066 0))(
  ( (HashableExt!4065 (__x!22556 Int)) )
))
(declare-datatypes ((List!35560 0))(
  ( (Nil!35436) (Cons!35436 (h!40856 tuple2!34478) (t!234631 List!35560)) )
))
(declare-datatypes ((array!14800 0))(
  ( (array!14801 (arr!6591 (Array (_ BitVec 32) List!35560)) (size!26677 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8300 0))(
  ( (LongMapFixedSize!8301 (defaultEntry!4535 Int) (mask!10808 (_ BitVec 32)) (extraKeys!4399 (_ BitVec 32)) (zeroValue!4409 List!35560) (minValue!4409 List!35560) (_size!8343 (_ BitVec 32)) (_keys!4450 array!14798) (_values!4431 array!14800) (_vacant!4211 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16409 0))(
  ( (Cell!16410 (v!35102 LongMapFixedSize!8300)) )
))
(declare-datatypes ((MutLongMap!4150 0))(
  ( (LongMap!4150 (underlying!8529 Cell!16409)) (MutLongMapExt!4149 (__x!22557 Int)) )
))
(declare-datatypes ((Cell!16411 0))(
  ( (Cell!16412 (v!35103 MutLongMap!4150)) )
))
(declare-datatypes ((MutableMap!4056 0))(
  ( (MutableMapExt!4055 (__x!22558 Int)) (HashMap!4056 (underlying!8530 Cell!16411) (hashF!6098 Hashable!4066) (_size!8344 (_ BitVec 32)) (defaultValue!4227 Int)) )
))
(declare-datatypes ((Cache!382 0))(
  ( (Cache!383 (cache!4198 MutableMap!4056)) )
))
(declare-datatypes ((tuple2!34480 0))(
  ( (tuple2!34481 (_1!20372 Regex!9729) (_2!20372 Cache!382)) )
))
(declare-fun call!229291 () tuple2!34480)

(declare-fun call!229290 () tuple2!34480)

(assert (=> bm!229285 (= call!229291 call!229290)))

(declare-fun b!3164119 () Bool)

(declare-fun e!1971115 () Bool)

(declare-fun tp!996466 () Bool)

(declare-fun mapRes!18824 () Bool)

(assert (=> b!3164119 (= e!1971115 (and tp!996466 mapRes!18824))))

(declare-fun condMapEmpty!18824 () Bool)

(declare-fun cache!347 () Cache!382)

(declare-fun mapDefault!18824 () List!35560)

(assert (=> b!3164119 (= condMapEmpty!18824 (= (arr!6591 (_values!4431 (v!35102 (underlying!8529 (v!35103 (underlying!8530 (cache!4198 cache!347))))))) ((as const (Array (_ BitVec 32) List!35560)) mapDefault!18824)))))

(declare-fun b!3164120 () Bool)

(declare-fun e!1971113 () Bool)

(declare-fun e!1971125 () Bool)

(declare-fun lt!1063805 () MutLongMap!4150)

(get-info :version)

(assert (=> b!3164120 (= e!1971113 (and e!1971125 ((_ is LongMap!4150) lt!1063805)))))

(assert (=> b!3164120 (= lt!1063805 (v!35103 (underlying!8530 (cache!4198 cache!347))))))

(declare-fun e!1971117 () Bool)

(assert (=> b!3164121 (= e!1971117 (and e!1971113 tp!996471))))

(declare-fun tp!996461 () Bool)

(declare-fun tp!996469 () Bool)

(declare-fun e!1971123 () Bool)

(declare-fun array_inv!4720 (array!14798) Bool)

(declare-fun array_inv!4721 (array!14800) Bool)

(assert (=> b!3164122 (= e!1971123 (and tp!996465 tp!996461 tp!996469 (array_inv!4720 (_keys!4450 (v!35102 (underlying!8529 (v!35103 (underlying!8530 (cache!4198 cache!347))))))) (array_inv!4721 (_values!4431 (v!35102 (underlying!8529 (v!35103 (underlying!8530 (cache!4198 cache!347))))))) e!1971115))))

(declare-fun res!1287697 () Bool)

(declare-fun e!1971119 () Bool)

(assert (=> start!296550 (=> (not res!1287697) (not e!1971119))))

(declare-fun r!13156 () Regex!9729)

(declare-fun validRegex!4454 (Regex!9729) Bool)

(assert (=> start!296550 (= res!1287697 (validRegex!4454 r!13156))))

(assert (=> start!296550 e!1971119))

(declare-fun e!1971127 () Bool)

(assert (=> start!296550 e!1971127))

(declare-fun e!1971122 () Bool)

(declare-fun inv!48095 (Cache!382) Bool)

(assert (=> start!296550 (and (inv!48095 cache!347) e!1971122)))

(declare-fun tp_is_empty!17021 () Bool)

(assert (=> start!296550 tp_is_empty!17021))

(declare-fun b!3164123 () Bool)

(declare-fun e!1971120 () Bool)

(assert (=> b!3164123 (= e!1971125 e!1971120)))

(declare-fun b!3164124 () Bool)

(declare-fun res!1287696 () Bool)

(assert (=> b!3164124 (=> (not res!1287696) (not e!1971119))))

(declare-fun valid!3233 (Cache!382) Bool)

(assert (=> b!3164124 (= res!1287696 (valid!3233 cache!347))))

(declare-fun b!3164125 () Bool)

(declare-fun res!1287698 () Bool)

(assert (=> b!3164125 (=> (not res!1287698) (not e!1971119))))

(declare-fun a!2409 () C!19644)

(declare-datatypes ((Option!6891 0))(
  ( (None!6890) (Some!6890 (v!35104 Regex!9729)) )
))
(declare-fun get!11228 (Cache!382 Regex!9729 C!19644) Option!6891)

(assert (=> b!3164125 (= res!1287698 (not ((_ is Some!6890) (get!11228 cache!347 r!13156 a!2409))))))

(declare-fun b!3164126 () Bool)

(assert (=> b!3164126 (= e!1971119 false)))

(declare-fun lt!1063804 () Bool)

(declare-fun e!1971126 () tuple2!34480)

(declare-fun validCacheMap!52 (MutableMap!4056) Bool)

(assert (=> b!3164126 (= lt!1063804 (validCacheMap!52 (cache!4198 (_2!20372 e!1971126))))))

(declare-fun c!532095 () Bool)

(assert (=> b!3164126 (= c!532095 (or ((_ is EmptyExpr!9729) r!13156) ((_ is EmptyLang!9729) r!13156)))))

(declare-fun b!3164127 () Bool)

(declare-fun e!1971114 () tuple2!34480)

(assert (=> b!3164127 (= e!1971126 e!1971114)))

(declare-fun c!532094 () Bool)

(assert (=> b!3164127 (= c!532094 ((_ is ElementMatch!9729) r!13156))))

(declare-fun lt!1063807 () tuple2!34480)

(declare-fun lt!1063803 () tuple2!34480)

(declare-fun e!1971124 () tuple2!34480)

(declare-fun b!3164128 () Bool)

(assert (=> b!3164128 (= e!1971124 (tuple2!34481 (Union!9729 (Concat!15050 (_1!20372 lt!1063807) (regTwo!19970 r!13156)) (_1!20372 lt!1063803)) (_2!20372 lt!1063803)))))

(assert (=> b!3164128 (= lt!1063807 call!229291)))

(declare-fun call!229292 () tuple2!34480)

(assert (=> b!3164128 (= lt!1063803 call!229292)))

(declare-fun b!3164129 () Bool)

(declare-fun c!532098 () Bool)

(declare-fun nullable!3338 (Regex!9729) Bool)

(assert (=> b!3164129 (= c!532098 (nullable!3338 (regOne!19970 r!13156)))))

(declare-fun e!1971116 () tuple2!34480)

(assert (=> b!3164129 (= e!1971116 e!1971124)))

(declare-fun b!3164130 () Bool)

(declare-fun lt!1063801 () tuple2!34480)

(assert (=> b!3164130 (= lt!1063801 call!229290)))

(assert (=> b!3164130 (= e!1971116 (tuple2!34481 (Concat!15050 (_1!20372 lt!1063801) (Star!9729 (reg!10058 r!13156))) (_2!20372 lt!1063801)))))

(declare-fun call!229293 () tuple2!34480)

(declare-fun c!532096 () Bool)

(declare-fun bm!229286 () Bool)

(declare-fun c!532097 () Bool)

(declare-fun derivativeStepMem!24 (Regex!9729 C!19644 Cache!382) tuple2!34480)

(assert (=> bm!229286 (= call!229293 (derivativeStepMem!24 (ite c!532096 (regOne!19971 r!13156) (ite c!532097 (reg!10058 r!13156) (regOne!19970 r!13156))) a!2409 cache!347))))

(declare-fun b!3164131 () Bool)

(assert (=> b!3164131 (= e!1971114 (tuple2!34481 (ite (= a!2409 (c!532099 r!13156)) EmptyExpr!9729 EmptyLang!9729) cache!347))))

(declare-fun b!3164132 () Bool)

(assert (=> b!3164132 (= e!1971127 tp_is_empty!17021)))

(declare-fun b!3164133 () Bool)

(assert (=> b!3164133 (= c!532096 ((_ is Union!9729) r!13156))))

(declare-fun e!1971121 () tuple2!34480)

(assert (=> b!3164133 (= e!1971114 e!1971121)))

(declare-fun b!3164134 () Bool)

(assert (=> b!3164134 (= e!1971121 e!1971116)))

(assert (=> b!3164134 (= c!532097 ((_ is Star!9729) r!13156))))

(declare-fun b!3164135 () Bool)

(declare-fun lt!1063800 () tuple2!34480)

(assert (=> b!3164135 (= e!1971124 (tuple2!34481 (Union!9729 (Concat!15050 (_1!20372 lt!1063800) (regTwo!19970 r!13156)) EmptyLang!9729) (_2!20372 lt!1063800)))))

(assert (=> b!3164135 (= lt!1063800 call!229291)))

(declare-fun bm!229287 () Bool)

(assert (=> bm!229287 (= call!229290 call!229293)))

(declare-fun mapIsEmpty!18824 () Bool)

(assert (=> mapIsEmpty!18824 mapRes!18824))

(declare-fun b!3164136 () Bool)

(assert (=> b!3164136 (= e!1971126 (tuple2!34481 EmptyLang!9729 cache!347))))

(declare-fun b!3164137 () Bool)

(declare-fun tp!996462 () Bool)

(declare-fun tp!996470 () Bool)

(assert (=> b!3164137 (= e!1971127 (and tp!996462 tp!996470))))

(declare-fun mapNonEmpty!18824 () Bool)

(declare-fun tp!996468 () Bool)

(declare-fun tp!996467 () Bool)

(assert (=> mapNonEmpty!18824 (= mapRes!18824 (and tp!996468 tp!996467))))

(declare-fun mapValue!18824 () List!35560)

(declare-fun mapRest!18824 () (Array (_ BitVec 32) List!35560))

(declare-fun mapKey!18824 () (_ BitVec 32))

(assert (=> mapNonEmpty!18824 (= (arr!6591 (_values!4431 (v!35102 (underlying!8529 (v!35103 (underlying!8530 (cache!4198 cache!347))))))) (store mapRest!18824 mapKey!18824 mapValue!18824))))

(declare-fun b!3164138 () Bool)

(declare-fun tp!996463 () Bool)

(declare-fun tp!996460 () Bool)

(assert (=> b!3164138 (= e!1971127 (and tp!996463 tp!996460))))

(declare-fun b!3164139 () Bool)

(declare-fun lt!1063802 () tuple2!34480)

(declare-fun lt!1063806 () tuple2!34480)

(assert (=> b!3164139 (= e!1971121 (tuple2!34481 (Union!9729 (_1!20372 lt!1063802) (_1!20372 lt!1063806)) (_2!20372 lt!1063806)))))

(assert (=> b!3164139 (= lt!1063802 call!229293)))

(assert (=> b!3164139 (= lt!1063806 call!229292)))

(declare-fun b!3164140 () Bool)

(assert (=> b!3164140 (= e!1971120 e!1971123)))

(declare-fun b!3164141 () Bool)

(declare-fun tp!996464 () Bool)

(assert (=> b!3164141 (= e!1971127 tp!996464)))

(declare-fun bm!229288 () Bool)

(assert (=> bm!229288 (= call!229292 (derivativeStepMem!24 (ite c!532096 (regTwo!19971 r!13156) (regTwo!19970 r!13156)) a!2409 (ite c!532096 (_2!20372 lt!1063802) (_2!20372 lt!1063807))))))

(declare-fun b!3164142 () Bool)

(assert (=> b!3164142 (= e!1971122 e!1971117)))

(assert (= (and start!296550 res!1287697) b!3164124))

(assert (= (and b!3164124 res!1287696) b!3164125))

(assert (= (and b!3164125 res!1287698) b!3164126))

(assert (= (and b!3164126 c!532095) b!3164136))

(assert (= (and b!3164126 (not c!532095)) b!3164127))

(assert (= (and b!3164127 c!532094) b!3164131))

(assert (= (and b!3164127 (not c!532094)) b!3164133))

(assert (= (and b!3164133 c!532096) b!3164139))

(assert (= (and b!3164133 (not c!532096)) b!3164134))

(assert (= (and b!3164134 c!532097) b!3164130))

(assert (= (and b!3164134 (not c!532097)) b!3164129))

(assert (= (and b!3164129 c!532098) b!3164128))

(assert (= (and b!3164129 (not c!532098)) b!3164135))

(assert (= (or b!3164128 b!3164135) bm!229285))

(assert (= (or b!3164130 bm!229285) bm!229287))

(assert (= (or b!3164139 b!3164128) bm!229288))

(assert (= (or b!3164139 bm!229287) bm!229286))

(assert (= (and start!296550 ((_ is ElementMatch!9729) r!13156)) b!3164132))

(assert (= (and start!296550 ((_ is Concat!15050) r!13156)) b!3164138))

(assert (= (and start!296550 ((_ is Star!9729) r!13156)) b!3164141))

(assert (= (and start!296550 ((_ is Union!9729) r!13156)) b!3164137))

(assert (= (and b!3164119 condMapEmpty!18824) mapIsEmpty!18824))

(assert (= (and b!3164119 (not condMapEmpty!18824)) mapNonEmpty!18824))

(assert (= b!3164122 b!3164119))

(assert (= b!3164140 b!3164122))

(assert (= b!3164123 b!3164140))

(assert (= (and b!3164120 ((_ is LongMap!4150) (v!35103 (underlying!8530 (cache!4198 cache!347))))) b!3164123))

(assert (= b!3164121 b!3164120))

(assert (= (and b!3164142 ((_ is HashMap!4056) (cache!4198 cache!347))) b!3164121))

(assert (= start!296550 b!3164142))

(declare-fun m!3427154 () Bool)

(assert (=> start!296550 m!3427154))

(declare-fun m!3427156 () Bool)

(assert (=> start!296550 m!3427156))

(declare-fun m!3427158 () Bool)

(assert (=> b!3164125 m!3427158))

(declare-fun m!3427160 () Bool)

(assert (=> b!3164126 m!3427160))

(declare-fun m!3427162 () Bool)

(assert (=> mapNonEmpty!18824 m!3427162))

(declare-fun m!3427164 () Bool)

(assert (=> b!3164129 m!3427164))

(declare-fun m!3427166 () Bool)

(assert (=> b!3164122 m!3427166))

(declare-fun m!3427168 () Bool)

(assert (=> b!3164122 m!3427168))

(declare-fun m!3427170 () Bool)

(assert (=> b!3164124 m!3427170))

(declare-fun m!3427172 () Bool)

(assert (=> bm!229288 m!3427172))

(declare-fun m!3427174 () Bool)

(assert (=> bm!229286 m!3427174))

(check-sat b_and!209337 (not b!3164124) (not b_next!83785) (not b!3164141) (not b!3164138) (not b!3164119) (not b!3164125) b_and!209335 (not start!296550) (not bm!229286) (not b_next!83787) (not b!3164122) (not b!3164137) tp_is_empty!17021 (not mapNonEmpty!18824) (not b!3164129) (not b!3164126) (not bm!229288))
(check-sat b_and!209337 b_and!209335 (not b_next!83785) (not b_next!83787))
