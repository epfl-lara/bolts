; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296578 () Bool)

(assert start!296578)

(declare-fun b!3164588 () Bool)

(declare-fun b_free!83097 () Bool)

(declare-fun b_next!83801 () Bool)

(assert (=> b!3164588 (= b_free!83097 (not b_next!83801))))

(declare-fun tp!996679 () Bool)

(declare-fun b_and!209351 () Bool)

(assert (=> b!3164588 (= tp!996679 b_and!209351)))

(declare-fun b!3164607 () Bool)

(declare-fun b_free!83099 () Bool)

(declare-fun b_next!83803 () Bool)

(assert (=> b!3164607 (= b_free!83099 (not b_next!83803))))

(declare-fun tp!996682 () Bool)

(declare-fun b_and!209353 () Bool)

(assert (=> b!3164607 (= tp!996682 b_and!209353)))

(declare-fun b!3164584 () Bool)

(declare-fun c!532210 () Bool)

(declare-datatypes ((C!19652 0))(
  ( (C!19653 (val!11862 Int)) )
))
(declare-datatypes ((Regex!9733 0))(
  ( (ElementMatch!9733 (c!532212 C!19652)) (Concat!15054 (regOne!19978 Regex!9733) (regTwo!19978 Regex!9733)) (EmptyExpr!9733) (Star!9733 (reg!10062 Regex!9733)) (EmptyLang!9733) (Union!9733 (regOne!19979 Regex!9733) (regTwo!19979 Regex!9733)) )
))
(declare-fun r!13156 () Regex!9733)

(declare-fun nullable!3340 (Regex!9733) Bool)

(assert (=> b!3164584 (= c!532210 (nullable!3340 (regOne!19978 r!13156)))))

(declare-datatypes ((tuple2!34502 0))(
  ( (tuple2!34503 (_1!20383 Regex!9733) (_2!20383 C!19652)) )
))
(declare-datatypes ((tuple2!34504 0))(
  ( (tuple2!34505 (_1!20384 tuple2!34502) (_2!20384 Regex!9733)) )
))
(declare-datatypes ((array!14816 0))(
  ( (array!14817 (arr!6598 (Array (_ BitVec 32) (_ BitVec 64))) (size!26684 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4070 0))(
  ( (HashableExt!4069 (__x!22568 Int)) )
))
(declare-datatypes ((List!35564 0))(
  ( (Nil!35440) (Cons!35440 (h!40860 tuple2!34504) (t!234635 List!35564)) )
))
(declare-datatypes ((array!14818 0))(
  ( (array!14819 (arr!6599 (Array (_ BitVec 32) List!35564)) (size!26685 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8308 0))(
  ( (LongMapFixedSize!8309 (defaultEntry!4539 Int) (mask!10814 (_ BitVec 32)) (extraKeys!4403 (_ BitVec 32)) (zeroValue!4413 List!35564) (minValue!4413 List!35564) (_size!8351 (_ BitVec 32)) (_keys!4454 array!14816) (_values!4435 array!14818) (_vacant!4215 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16425 0))(
  ( (Cell!16426 (v!35113 LongMapFixedSize!8308)) )
))
(declare-datatypes ((MutLongMap!4154 0))(
  ( (LongMap!4154 (underlying!8537 Cell!16425)) (MutLongMapExt!4153 (__x!22569 Int)) )
))
(declare-datatypes ((Cell!16427 0))(
  ( (Cell!16428 (v!35114 MutLongMap!4154)) )
))
(declare-datatypes ((MutableMap!4060 0))(
  ( (MutableMapExt!4059 (__x!22570 Int)) (HashMap!4060 (underlying!8538 Cell!16427) (hashF!6102 Hashable!4070) (_size!8352 (_ BitVec 32)) (defaultValue!4231 Int)) )
))
(declare-datatypes ((Cache!390 0))(
  ( (Cache!391 (cache!4203 MutableMap!4060)) )
))
(declare-datatypes ((tuple2!34506 0))(
  ( (tuple2!34507 (_1!20385 Regex!9733) (_2!20385 Cache!390)) )
))
(declare-fun e!1971398 () tuple2!34506)

(declare-fun e!1971393 () tuple2!34506)

(assert (=> b!3164584 (= e!1971398 e!1971393)))

(declare-fun b!3164585 () Bool)

(declare-fun e!1971402 () Bool)

(declare-fun tp!996689 () Bool)

(assert (=> b!3164585 (= e!1971402 tp!996689)))

(declare-fun mapNonEmpty!18839 () Bool)

(declare-fun mapRes!18839 () Bool)

(declare-fun tp!996686 () Bool)

(declare-fun tp!996684 () Bool)

(assert (=> mapNonEmpty!18839 (= mapRes!18839 (and tp!996686 tp!996684))))

(declare-fun cache!347 () Cache!390)

(declare-fun mapValue!18839 () List!35564)

(declare-fun mapKey!18839 () (_ BitVec 32))

(declare-fun mapRest!18839 () (Array (_ BitVec 32) List!35564))

(assert (=> mapNonEmpty!18839 (= (arr!6599 (_values!4435 (v!35113 (underlying!8537 (v!35114 (underlying!8538 (cache!4203 cache!347))))))) (store mapRest!18839 mapKey!18839 mapValue!18839))))

(declare-fun b!3164586 () Bool)

(declare-fun e!1971399 () tuple2!34506)

(declare-fun lt!1063954 () tuple2!34506)

(declare-fun lt!1063946 () tuple2!34506)

(assert (=> b!3164586 (= e!1971399 (tuple2!34507 (Union!9733 (_1!20385 lt!1063954) (_1!20385 lt!1063946)) (_2!20385 lt!1063946)))))

(declare-fun call!229377 () tuple2!34506)

(assert (=> b!3164586 (= lt!1063954 call!229377)))

(declare-fun call!229378 () tuple2!34506)

(assert (=> b!3164586 (= lt!1063946 call!229378)))

(declare-fun b!3164587 () Bool)

(declare-fun c!532208 () Bool)

(get-info :version)

(assert (=> b!3164587 (= c!532208 ((_ is Union!9733) r!13156))))

(declare-fun e!1971396 () tuple2!34506)

(assert (=> b!3164587 (= e!1971396 e!1971399)))

(declare-fun e!1971403 () Bool)

(declare-fun e!1971400 () Bool)

(assert (=> b!3164588 (= e!1971403 (and e!1971400 tp!996679))))

(declare-fun b!3164589 () Bool)

(declare-fun e!1971401 () tuple2!34506)

(assert (=> b!3164589 (= e!1971401 (tuple2!34507 EmptyLang!9733 cache!347))))

(declare-fun b!3164590 () Bool)

(declare-fun e!1971395 () Bool)

(assert (=> b!3164590 (= e!1971395 false)))

(declare-datatypes ((Unit!49800 0))(
  ( (Unit!49801) )
))
(declare-datatypes ((tuple2!34508 0))(
  ( (tuple2!34509 (_1!20386 Unit!49800) (_2!20386 Cache!390)) )
))
(declare-fun lt!1063947 () tuple2!34508)

(declare-fun lt!1063950 () tuple2!34506)

(declare-fun a!2409 () C!19652)

(declare-fun update!266 (Cache!390 Regex!9733 C!19652 Regex!9733) tuple2!34508)

(assert (=> b!3164590 (= lt!1063947 (update!266 (_2!20385 lt!1063950) r!13156 a!2409 (_1!20385 lt!1063950)))))

(assert (=> b!3164590 (= lt!1063950 e!1971401)))

(declare-fun c!532211 () Bool)

(assert (=> b!3164590 (= c!532211 (or ((_ is EmptyExpr!9733) r!13156) ((_ is EmptyLang!9733) r!13156)))))

(declare-fun b!3164591 () Bool)

(declare-fun e!1971405 () Bool)

(declare-fun lt!1063949 () MutLongMap!4154)

(assert (=> b!3164591 (= e!1971400 (and e!1971405 ((_ is LongMap!4154) lt!1063949)))))

(assert (=> b!3164591 (= lt!1063949 (v!35114 (underlying!8538 (cache!4203 cache!347))))))

(declare-fun bm!229370 () Bool)

(declare-fun call!229375 () tuple2!34506)

(declare-fun call!229376 () tuple2!34506)

(assert (=> bm!229370 (= call!229375 call!229376)))

(declare-fun b!3164592 () Bool)

(declare-fun lt!1063953 () tuple2!34506)

(assert (=> b!3164592 (= e!1971393 (tuple2!34507 (Union!9733 (Concat!15054 (_1!20385 lt!1063953) (regTwo!19978 r!13156)) EmptyLang!9733) (_2!20385 lt!1063953)))))

(assert (=> b!3164592 (= lt!1063953 call!229375)))

(declare-fun b!3164593 () Bool)

(declare-fun lt!1063952 () tuple2!34506)

(declare-fun lt!1063951 () tuple2!34506)

(assert (=> b!3164593 (= e!1971393 (tuple2!34507 (Union!9733 (Concat!15054 (_1!20385 lt!1063951) (regTwo!19978 r!13156)) (_1!20385 lt!1063952)) (_2!20385 lt!1063952)))))

(assert (=> b!3164593 (= lt!1063951 call!229375)))

(assert (=> b!3164593 (= lt!1063952 call!229377)))

(declare-fun b!3164594 () Bool)

(declare-fun tp_is_empty!17029 () Bool)

(assert (=> b!3164594 (= e!1971402 tp_is_empty!17029)))

(declare-fun b!3164595 () Bool)

(declare-fun e!1971406 () Bool)

(declare-fun tp!996681 () Bool)

(assert (=> b!3164595 (= e!1971406 (and tp!996681 mapRes!18839))))

(declare-fun condMapEmpty!18839 () Bool)

(declare-fun mapDefault!18839 () List!35564)

(assert (=> b!3164595 (= condMapEmpty!18839 (= (arr!6599 (_values!4435 (v!35113 (underlying!8537 (v!35114 (underlying!8538 (cache!4203 cache!347))))))) ((as const (Array (_ BitVec 32) List!35564)) mapDefault!18839)))))

(declare-fun b!3164596 () Bool)

(declare-fun res!1287768 () Bool)

(assert (=> b!3164596 (=> (not res!1287768) (not e!1971395))))

(declare-fun valid!3237 (Cache!390) Bool)

(assert (=> b!3164596 (= res!1287768 (valid!3237 cache!347))))

(declare-fun c!532209 () Bool)

(declare-fun bm!229371 () Bool)

(declare-fun derivativeStepMem!27 (Regex!9733 C!19652 Cache!390) tuple2!34506)

(assert (=> bm!229371 (= call!229378 (derivativeStepMem!27 (ite c!532208 (regTwo!19979 r!13156) (ite c!532209 (reg!10062 r!13156) (regOne!19978 r!13156))) a!2409 (ite c!532208 (_2!20385 lt!1063954) cache!347)))))

(declare-fun b!3164597 () Bool)

(declare-fun lt!1063948 () tuple2!34506)

(assert (=> b!3164597 (= lt!1063948 call!229376)))

(assert (=> b!3164597 (= e!1971398 (tuple2!34507 (Concat!15054 (_1!20385 lt!1063948) (Star!9733 (reg!10062 r!13156))) (_2!20385 lt!1063948)))))

(declare-fun b!3164598 () Bool)

(declare-fun e!1971392 () Bool)

(assert (=> b!3164598 (= e!1971405 e!1971392)))

(declare-fun b!3164599 () Bool)

(declare-fun tp!996680 () Bool)

(declare-fun tp!996685 () Bool)

(assert (=> b!3164599 (= e!1971402 (and tp!996680 tp!996685))))

(declare-fun bm!229372 () Bool)

(assert (=> bm!229372 (= call!229377 (derivativeStepMem!27 (ite c!532208 (regOne!19979 r!13156) (regTwo!19978 r!13156)) a!2409 (ite c!532208 cache!347 (_2!20385 lt!1063951))))))

(declare-fun res!1287769 () Bool)

(assert (=> start!296578 (=> (not res!1287769) (not e!1971395))))

(declare-fun validRegex!4456 (Regex!9733) Bool)

(assert (=> start!296578 (= res!1287769 (validRegex!4456 r!13156))))

(assert (=> start!296578 e!1971395))

(assert (=> start!296578 e!1971402))

(declare-fun e!1971397 () Bool)

(declare-fun inv!48103 (Cache!390) Bool)

(assert (=> start!296578 (and (inv!48103 cache!347) e!1971397)))

(assert (=> start!296578 tp_is_empty!17029))

(declare-fun b!3164600 () Bool)

(assert (=> b!3164600 (= e!1971397 e!1971403)))

(declare-fun b!3164601 () Bool)

(declare-fun e!1971404 () Bool)

(assert (=> b!3164601 (= e!1971392 e!1971404)))

(declare-fun mapIsEmpty!18839 () Bool)

(assert (=> mapIsEmpty!18839 mapRes!18839))

(declare-fun b!3164602 () Bool)

(assert (=> b!3164602 (= e!1971401 e!1971396)))

(declare-fun c!532207 () Bool)

(assert (=> b!3164602 (= c!532207 ((_ is ElementMatch!9733) r!13156))))

(declare-fun b!3164603 () Bool)

(declare-fun tp!996678 () Bool)

(declare-fun tp!996687 () Bool)

(assert (=> b!3164603 (= e!1971402 (and tp!996678 tp!996687))))

(declare-fun b!3164604 () Bool)

(declare-fun res!1287767 () Bool)

(assert (=> b!3164604 (=> (not res!1287767) (not e!1971395))))

(declare-datatypes ((Option!6894 0))(
  ( (None!6893) (Some!6893 (v!35115 Regex!9733)) )
))
(declare-fun get!11234 (Cache!390 Regex!9733 C!19652) Option!6894)

(assert (=> b!3164604 (= res!1287767 (not ((_ is Some!6893) (get!11234 cache!347 r!13156 a!2409))))))

(declare-fun b!3164605 () Bool)

(assert (=> b!3164605 (= e!1971396 (tuple2!34507 (ite (= a!2409 (c!532212 r!13156)) EmptyExpr!9733 EmptyLang!9733) cache!347))))

(declare-fun b!3164606 () Bool)

(assert (=> b!3164606 (= e!1971399 e!1971398)))

(assert (=> b!3164606 (= c!532209 ((_ is Star!9733) r!13156))))

(declare-fun bm!229373 () Bool)

(assert (=> bm!229373 (= call!229376 call!229378)))

(declare-fun tp!996683 () Bool)

(declare-fun tp!996688 () Bool)

(declare-fun array_inv!4724 (array!14816) Bool)

(declare-fun array_inv!4725 (array!14818) Bool)

(assert (=> b!3164607 (= e!1971404 (and tp!996682 tp!996688 tp!996683 (array_inv!4724 (_keys!4454 (v!35113 (underlying!8537 (v!35114 (underlying!8538 (cache!4203 cache!347))))))) (array_inv!4725 (_values!4435 (v!35113 (underlying!8537 (v!35114 (underlying!8538 (cache!4203 cache!347))))))) e!1971406))))

(assert (= (and start!296578 res!1287769) b!3164596))

(assert (= (and b!3164596 res!1287768) b!3164604))

(assert (= (and b!3164604 res!1287767) b!3164590))

(assert (= (and b!3164590 c!532211) b!3164589))

(assert (= (and b!3164590 (not c!532211)) b!3164602))

(assert (= (and b!3164602 c!532207) b!3164605))

(assert (= (and b!3164602 (not c!532207)) b!3164587))

(assert (= (and b!3164587 c!532208) b!3164586))

(assert (= (and b!3164587 (not c!532208)) b!3164606))

(assert (= (and b!3164606 c!532209) b!3164597))

(assert (= (and b!3164606 (not c!532209)) b!3164584))

(assert (= (and b!3164584 c!532210) b!3164593))

(assert (= (and b!3164584 (not c!532210)) b!3164592))

(assert (= (or b!3164593 b!3164592) bm!229370))

(assert (= (or b!3164597 bm!229370) bm!229373))

(assert (= (or b!3164586 bm!229373) bm!229371))

(assert (= (or b!3164586 b!3164593) bm!229372))

(assert (= (and start!296578 ((_ is ElementMatch!9733) r!13156)) b!3164594))

(assert (= (and start!296578 ((_ is Concat!15054) r!13156)) b!3164603))

(assert (= (and start!296578 ((_ is Star!9733) r!13156)) b!3164585))

(assert (= (and start!296578 ((_ is Union!9733) r!13156)) b!3164599))

(assert (= (and b!3164595 condMapEmpty!18839) mapIsEmpty!18839))

(assert (= (and b!3164595 (not condMapEmpty!18839)) mapNonEmpty!18839))

(assert (= b!3164607 b!3164595))

(assert (= b!3164601 b!3164607))

(assert (= b!3164598 b!3164601))

(assert (= (and b!3164591 ((_ is LongMap!4154) (v!35114 (underlying!8538 (cache!4203 cache!347))))) b!3164598))

(assert (= b!3164588 b!3164591))

(assert (= (and b!3164600 ((_ is HashMap!4060) (cache!4203 cache!347))) b!3164588))

(assert (= start!296578 b!3164600))

(declare-fun m!3427311 () Bool)

(assert (=> b!3164604 m!3427311))

(declare-fun m!3427313 () Bool)

(assert (=> b!3164590 m!3427313))

(declare-fun m!3427315 () Bool)

(assert (=> mapNonEmpty!18839 m!3427315))

(declare-fun m!3427317 () Bool)

(assert (=> bm!229371 m!3427317))

(declare-fun m!3427319 () Bool)

(assert (=> bm!229372 m!3427319))

(declare-fun m!3427321 () Bool)

(assert (=> b!3164584 m!3427321))

(declare-fun m!3427323 () Bool)

(assert (=> b!3164607 m!3427323))

(declare-fun m!3427325 () Bool)

(assert (=> b!3164607 m!3427325))

(declare-fun m!3427327 () Bool)

(assert (=> start!296578 m!3427327))

(declare-fun m!3427329 () Bool)

(assert (=> start!296578 m!3427329))

(declare-fun m!3427331 () Bool)

(assert (=> b!3164596 m!3427331))

(check-sat (not b!3164596) (not start!296578) (not b!3164603) (not mapNonEmpty!18839) (not b!3164604) (not b!3164584) b_and!209351 (not b!3164585) tp_is_empty!17029 (not b_next!83803) (not b!3164599) (not b!3164595) (not bm!229372) (not b!3164590) (not b_next!83801) (not bm!229371) b_and!209353 (not b!3164607))
(check-sat b_and!209351 b_and!209353 (not b_next!83803) (not b_next!83801))
