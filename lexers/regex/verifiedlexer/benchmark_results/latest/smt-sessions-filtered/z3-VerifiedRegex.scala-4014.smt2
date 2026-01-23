; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217560 () Bool)

(assert start!217560)

(declare-fun b!2230975 () Bool)

(declare-fun b_free!64689 () Bool)

(declare-fun b_next!65393 () Bool)

(assert (=> b!2230975 (= b_free!64689 (not b_next!65393))))

(declare-fun tp!699113 () Bool)

(declare-fun b_and!174677 () Bool)

(assert (=> b!2230975 (= tp!699113 b_and!174677)))

(declare-fun b!2230972 () Bool)

(declare-fun b_free!64691 () Bool)

(declare-fun b_next!65395 () Bool)

(assert (=> b!2230972 (= b_free!64691 (not b_next!65395))))

(declare-fun tp!699120 () Bool)

(declare-fun b_and!174679 () Bool)

(assert (=> b!2230972 (= tp!699120 b_and!174679)))

(declare-fun mapNonEmpty!14394 () Bool)

(declare-fun mapRes!14394 () Bool)

(declare-fun tp!699110 () Bool)

(declare-fun tp!699116 () Bool)

(assert (=> mapNonEmpty!14394 (= mapRes!14394 (and tp!699110 tp!699116))))

(declare-datatypes ((C!12984 0))(
  ( (C!12985 (val!7540 Int)) )
))
(declare-datatypes ((Regex!6419 0))(
  ( (ElementMatch!6419 (c!355869 C!12984)) (Concat!10757 (regOne!13350 Regex!6419) (regTwo!13350 Regex!6419)) (EmptyExpr!6419) (Star!6419 (reg!6748 Regex!6419)) (EmptyLang!6419) (Union!6419 (regOne!13351 Regex!6419) (regTwo!13351 Regex!6419)) )
))
(declare-datatypes ((List!26310 0))(
  ( (Nil!26216) (Cons!26216 (h!31617 Regex!6419) (t!199727 List!26310)) )
))
(declare-datatypes ((Context!3934 0))(
  ( (Context!3935 (exprs!2467 List!26310)) )
))
(declare-datatypes ((tuple3!3910 0))(
  ( (tuple3!3911 (_1!15210 Regex!6419) (_2!15210 Context!3934) (_3!2425 C!12984)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25570 0))(
  ( (tuple2!25571 (_1!15211 tuple3!3910) (_2!15211 (InoxSet Context!3934))) )
))
(declare-datatypes ((List!26311 0))(
  ( (Nil!26217) (Cons!26217 (h!31618 tuple2!25570) (t!199728 List!26311)) )
))
(declare-fun mapValue!14394 () List!26311)

(declare-fun mapKey!14394 () (_ BitVec 32))

(declare-datatypes ((array!10578 0))(
  ( (array!10579 (arr!4701 (Array (_ BitVec 32) (_ BitVec 64))) (size!20482 (_ BitVec 32))) )
))
(declare-datatypes ((array!10580 0))(
  ( (array!10581 (arr!4702 (Array (_ BitVec 32) List!26311)) (size!20483 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6114 0))(
  ( (LongMapFixedSize!6115 (defaultEntry!3422 Int) (mask!7620 (_ BitVec 32)) (extraKeys!3305 (_ BitVec 32)) (zeroValue!3315 List!26311) (minValue!3315 List!26311) (_size!6161 (_ BitVec 32)) (_keys!3354 array!10578) (_values!3337 array!10580) (_vacant!3118 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12045 0))(
  ( (Cell!12046 (v!29807 LongMapFixedSize!6114)) )
))
(declare-datatypes ((MutLongMap!3057 0))(
  ( (LongMap!3057 (underlying!6315 Cell!12045)) (MutLongMapExt!3056 (__x!17397 Int)) )
))
(declare-datatypes ((Cell!12047 0))(
  ( (Cell!12048 (v!29808 MutLongMap!3057)) )
))
(declare-datatypes ((Hashable!2967 0))(
  ( (HashableExt!2966 (__x!17398 Int)) )
))
(declare-datatypes ((MutableMap!2967 0))(
  ( (MutableMapExt!2966 (__x!17399 Int)) (HashMap!2967 (underlying!6316 Cell!12047) (hashF!4890 Hashable!2967) (_size!6162 (_ BitVec 32)) (defaultValue!3129 Int)) )
))
(declare-datatypes ((CacheDown!1980 0))(
  ( (CacheDown!1981 (cache!3348 MutableMap!2967)) )
))
(declare-fun cacheDown!839 () CacheDown!1980)

(declare-fun mapRest!14394 () (Array (_ BitVec 32) List!26311))

(assert (=> mapNonEmpty!14394 (= (arr!4702 (_values!3337 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) (store mapRest!14394 mapKey!14394 mapValue!14394))))

(declare-fun e!1425778 () Bool)

(declare-fun e!1425783 () Bool)

(assert (=> b!2230972 (= e!1425778 (and e!1425783 tp!699120))))

(declare-fun res!955535 () Bool)

(declare-fun e!1425777 () Bool)

(assert (=> start!217560 (=> (not res!955535) (not e!1425777))))

(declare-fun expr!64 () Regex!6419)

(declare-fun validRegex!2393 (Regex!6419) Bool)

(assert (=> start!217560 (= res!955535 (validRegex!2393 expr!64))))

(assert (=> start!217560 e!1425777))

(declare-fun e!1425782 () Bool)

(assert (=> start!217560 e!1425782))

(declare-fun e!1425785 () Bool)

(declare-fun inv!35603 (CacheDown!1980) Bool)

(assert (=> start!217560 (and (inv!35603 cacheDown!839) e!1425785)))

(declare-fun context!86 () Context!3934)

(declare-fun e!1425775 () Bool)

(declare-fun inv!35604 (Context!3934) Bool)

(assert (=> start!217560 (and (inv!35604 context!86) e!1425775)))

(declare-fun tp_is_empty!10063 () Bool)

(assert (=> start!217560 tp_is_empty!10063))

(declare-fun mapIsEmpty!14394 () Bool)

(assert (=> mapIsEmpty!14394 mapRes!14394))

(declare-fun b!2230973 () Bool)

(declare-fun res!955538 () Bool)

(assert (=> b!2230973 (=> (not res!955538) (not e!1425777))))

(declare-fun a!1167 () C!12984)

(get-info :version)

(declare-datatypes ((Option!5104 0))(
  ( (None!5103) (Some!5103 (v!29809 (InoxSet Context!3934))) )
))
(declare-fun get!7915 (CacheDown!1980 Regex!6419 Context!3934 C!12984) Option!5104)

(assert (=> b!2230973 (= res!955538 (not ((_ is Some!5103) (get!7915 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2230974 () Bool)

(assert (=> b!2230974 (= e!1425785 e!1425778)))

(declare-fun tp!699111 () Bool)

(declare-fun tp!699108 () Bool)

(declare-fun e!1425784 () Bool)

(declare-fun e!1425776 () Bool)

(declare-fun array_inv!3375 (array!10578) Bool)

(declare-fun array_inv!3376 (array!10580) Bool)

(assert (=> b!2230975 (= e!1425776 (and tp!699113 tp!699108 tp!699111 (array_inv!3375 (_keys!3354 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) (array_inv!3376 (_values!3337 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) e!1425784))))

(declare-fun b!2230976 () Bool)

(assert (=> b!2230976 (= e!1425777 (not (validRegex!2393 (regTwo!13350 expr!64))))))

(declare-fun b!2230977 () Bool)

(declare-fun e!1425786 () Bool)

(assert (=> b!2230977 (= e!1425786 e!1425776)))

(declare-fun b!2230978 () Bool)

(declare-fun res!955537 () Bool)

(assert (=> b!2230978 (=> (not res!955537) (not e!1425777))))

(declare-fun e!1425780 () Bool)

(assert (=> b!2230978 (= res!955537 e!1425780)))

(declare-fun res!955536 () Bool)

(assert (=> b!2230978 (=> res!955536 e!1425780)))

(assert (=> b!2230978 (= res!955536 (not ((_ is Concat!10757) expr!64)))))

(declare-fun b!2230979 () Bool)

(declare-fun res!955534 () Bool)

(assert (=> b!2230979 (=> (not res!955534) (not e!1425777))))

(assert (=> b!2230979 (= res!955534 ((_ is Concat!10757) expr!64))))

(declare-fun b!2230980 () Bool)

(declare-fun nullable!1766 (Regex!6419) Bool)

(assert (=> b!2230980 (= e!1425780 (not (nullable!1766 (regOne!13350 expr!64))))))

(declare-fun b!2230981 () Bool)

(declare-fun res!955533 () Bool)

(assert (=> b!2230981 (=> (not res!955533) (not e!1425777))))

(assert (=> b!2230981 (= res!955533 (and (or (not ((_ is ElementMatch!6419) expr!64)) (not (= (c!355869 expr!64) a!1167))) (not ((_ is Union!6419) expr!64))))))

(declare-fun b!2230982 () Bool)

(assert (=> b!2230982 (= e!1425782 tp_is_empty!10063)))

(declare-fun b!2230983 () Bool)

(declare-fun tp!699109 () Bool)

(declare-fun tp!699114 () Bool)

(assert (=> b!2230983 (= e!1425782 (and tp!699109 tp!699114))))

(declare-fun b!2230984 () Bool)

(declare-fun tp!699119 () Bool)

(assert (=> b!2230984 (= e!1425775 tp!699119)))

(declare-fun b!2230985 () Bool)

(declare-fun e!1425779 () Bool)

(declare-fun lt!830578 () MutLongMap!3057)

(assert (=> b!2230985 (= e!1425783 (and e!1425779 ((_ is LongMap!3057) lt!830578)))))

(assert (=> b!2230985 (= lt!830578 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))

(declare-fun b!2230986 () Bool)

(declare-fun tp!699118 () Bool)

(assert (=> b!2230986 (= e!1425784 (and tp!699118 mapRes!14394))))

(declare-fun condMapEmpty!14394 () Bool)

(declare-fun mapDefault!14394 () List!26311)

(assert (=> b!2230986 (= condMapEmpty!14394 (= (arr!4702 (_values!3337 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26311)) mapDefault!14394)))))

(declare-fun b!2230987 () Bool)

(declare-fun tp!699115 () Bool)

(assert (=> b!2230987 (= e!1425782 tp!699115)))

(declare-fun b!2230988 () Bool)

(declare-fun tp!699112 () Bool)

(declare-fun tp!699117 () Bool)

(assert (=> b!2230988 (= e!1425782 (and tp!699112 tp!699117))))

(declare-fun b!2230989 () Bool)

(assert (=> b!2230989 (= e!1425779 e!1425786)))

(assert (= (and start!217560 res!955535) b!2230973))

(assert (= (and b!2230973 res!955538) b!2230981))

(assert (= (and b!2230981 res!955533) b!2230978))

(assert (= (and b!2230978 (not res!955536)) b!2230980))

(assert (= (and b!2230978 res!955537) b!2230979))

(assert (= (and b!2230979 res!955534) b!2230976))

(assert (= (and start!217560 ((_ is ElementMatch!6419) expr!64)) b!2230982))

(assert (= (and start!217560 ((_ is Concat!10757) expr!64)) b!2230988))

(assert (= (and start!217560 ((_ is Star!6419) expr!64)) b!2230987))

(assert (= (and start!217560 ((_ is Union!6419) expr!64)) b!2230983))

(assert (= (and b!2230986 condMapEmpty!14394) mapIsEmpty!14394))

(assert (= (and b!2230986 (not condMapEmpty!14394)) mapNonEmpty!14394))

(assert (= b!2230975 b!2230986))

(assert (= b!2230977 b!2230975))

(assert (= b!2230989 b!2230977))

(assert (= (and b!2230985 ((_ is LongMap!3057) (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))) b!2230989))

(assert (= b!2230972 b!2230985))

(assert (= (and b!2230974 ((_ is HashMap!2967) (cache!3348 cacheDown!839))) b!2230972))

(assert (= start!217560 b!2230974))

(assert (= start!217560 b!2230984))

(declare-fun m!2667620 () Bool)

(assert (=> b!2230975 m!2667620))

(declare-fun m!2667622 () Bool)

(assert (=> b!2230975 m!2667622))

(declare-fun m!2667624 () Bool)

(assert (=> start!217560 m!2667624))

(declare-fun m!2667626 () Bool)

(assert (=> start!217560 m!2667626))

(declare-fun m!2667628 () Bool)

(assert (=> start!217560 m!2667628))

(declare-fun m!2667630 () Bool)

(assert (=> mapNonEmpty!14394 m!2667630))

(declare-fun m!2667632 () Bool)

(assert (=> b!2230980 m!2667632))

(declare-fun m!2667634 () Bool)

(assert (=> b!2230973 m!2667634))

(declare-fun m!2667636 () Bool)

(assert (=> b!2230976 m!2667636))

(check-sat (not b!2230976) (not b!2230984) (not mapNonEmpty!14394) (not start!217560) (not b!2230988) b_and!174677 (not b_next!65395) (not b!2230983) (not b!2230975) (not b!2230980) (not b_next!65393) (not b!2230986) tp_is_empty!10063 (not b!2230987) (not b!2230973) b_and!174679)
(check-sat b_and!174679 b_and!174677 (not b_next!65393) (not b_next!65395))
(get-model)

(declare-fun b!2231008 () Bool)

(declare-fun e!1425804 () Bool)

(declare-fun call!133958 () Bool)

(assert (=> b!2231008 (= e!1425804 call!133958)))

(declare-fun b!2231009 () Bool)

(declare-fun res!955551 () Bool)

(declare-fun e!1425802 () Bool)

(assert (=> b!2231009 (=> res!955551 e!1425802)))

(assert (=> b!2231009 (= res!955551 (not ((_ is Concat!10757) (regTwo!13350 expr!64))))))

(declare-fun e!1425806 () Bool)

(assert (=> b!2231009 (= e!1425806 e!1425802)))

(declare-fun b!2231010 () Bool)

(declare-fun e!1425807 () Bool)

(declare-fun call!133959 () Bool)

(assert (=> b!2231010 (= e!1425807 call!133959)))

(declare-fun bm!133953 () Bool)

(declare-fun call!133960 () Bool)

(assert (=> bm!133953 (= call!133960 call!133959)))

(declare-fun b!2231011 () Bool)

(declare-fun res!955549 () Bool)

(assert (=> b!2231011 (=> (not res!955549) (not e!1425804))))

(assert (=> b!2231011 (= res!955549 call!133960)))

(assert (=> b!2231011 (= e!1425806 e!1425804)))

(declare-fun b!2231012 () Bool)

(declare-fun e!1425803 () Bool)

(assert (=> b!2231012 (= e!1425802 e!1425803)))

(declare-fun res!955552 () Bool)

(assert (=> b!2231012 (=> (not res!955552) (not e!1425803))))

(assert (=> b!2231012 (= res!955552 call!133960)))

(declare-fun b!2231013 () Bool)

(declare-fun e!1425801 () Bool)

(assert (=> b!2231013 (= e!1425801 e!1425806)))

(declare-fun c!355875 () Bool)

(assert (=> b!2231013 (= c!355875 ((_ is Union!6419) (regTwo!13350 expr!64)))))

(declare-fun c!355874 () Bool)

(declare-fun bm!133954 () Bool)

(assert (=> bm!133954 (= call!133959 (validRegex!2393 (ite c!355874 (reg!6748 (regTwo!13350 expr!64)) (ite c!355875 (regOne!13351 (regTwo!13350 expr!64)) (regOne!13350 (regTwo!13350 expr!64))))))))

(declare-fun bm!133955 () Bool)

(assert (=> bm!133955 (= call!133958 (validRegex!2393 (ite c!355875 (regTwo!13351 (regTwo!13350 expr!64)) (regTwo!13350 (regTwo!13350 expr!64)))))))

(declare-fun d!665023 () Bool)

(declare-fun res!955550 () Bool)

(declare-fun e!1425805 () Bool)

(assert (=> d!665023 (=> res!955550 e!1425805)))

(assert (=> d!665023 (= res!955550 ((_ is ElementMatch!6419) (regTwo!13350 expr!64)))))

(assert (=> d!665023 (= (validRegex!2393 (regTwo!13350 expr!64)) e!1425805)))

(declare-fun b!2231014 () Bool)

(assert (=> b!2231014 (= e!1425801 e!1425807)))

(declare-fun res!955553 () Bool)

(assert (=> b!2231014 (= res!955553 (not (nullable!1766 (reg!6748 (regTwo!13350 expr!64)))))))

(assert (=> b!2231014 (=> (not res!955553) (not e!1425807))))

(declare-fun b!2231015 () Bool)

(assert (=> b!2231015 (= e!1425803 call!133958)))

(declare-fun b!2231016 () Bool)

(assert (=> b!2231016 (= e!1425805 e!1425801)))

(assert (=> b!2231016 (= c!355874 ((_ is Star!6419) (regTwo!13350 expr!64)))))

(assert (= (and d!665023 (not res!955550)) b!2231016))

(assert (= (and b!2231016 c!355874) b!2231014))

(assert (= (and b!2231016 (not c!355874)) b!2231013))

(assert (= (and b!2231014 res!955553) b!2231010))

(assert (= (and b!2231013 c!355875) b!2231011))

(assert (= (and b!2231013 (not c!355875)) b!2231009))

(assert (= (and b!2231011 res!955549) b!2231008))

(assert (= (and b!2231009 (not res!955551)) b!2231012))

(assert (= (and b!2231012 res!955552) b!2231015))

(assert (= (or b!2231008 b!2231015) bm!133955))

(assert (= (or b!2231011 b!2231012) bm!133953))

(assert (= (or b!2231010 bm!133953) bm!133954))

(declare-fun m!2667638 () Bool)

(assert (=> bm!133954 m!2667638))

(declare-fun m!2667640 () Bool)

(assert (=> bm!133955 m!2667640))

(declare-fun m!2667642 () Bool)

(assert (=> b!2231014 m!2667642))

(assert (=> b!2230976 d!665023))

(declare-fun b!2231017 () Bool)

(declare-fun e!1425811 () Bool)

(declare-fun call!133961 () Bool)

(assert (=> b!2231017 (= e!1425811 call!133961)))

(declare-fun b!2231018 () Bool)

(declare-fun res!955556 () Bool)

(declare-fun e!1425809 () Bool)

(assert (=> b!2231018 (=> res!955556 e!1425809)))

(assert (=> b!2231018 (= res!955556 (not ((_ is Concat!10757) expr!64)))))

(declare-fun e!1425813 () Bool)

(assert (=> b!2231018 (= e!1425813 e!1425809)))

(declare-fun b!2231019 () Bool)

(declare-fun e!1425814 () Bool)

(declare-fun call!133962 () Bool)

(assert (=> b!2231019 (= e!1425814 call!133962)))

(declare-fun bm!133956 () Bool)

(declare-fun call!133963 () Bool)

(assert (=> bm!133956 (= call!133963 call!133962)))

(declare-fun b!2231020 () Bool)

(declare-fun res!955554 () Bool)

(assert (=> b!2231020 (=> (not res!955554) (not e!1425811))))

(assert (=> b!2231020 (= res!955554 call!133963)))

(assert (=> b!2231020 (= e!1425813 e!1425811)))

(declare-fun b!2231021 () Bool)

(declare-fun e!1425810 () Bool)

(assert (=> b!2231021 (= e!1425809 e!1425810)))

(declare-fun res!955557 () Bool)

(assert (=> b!2231021 (=> (not res!955557) (not e!1425810))))

(assert (=> b!2231021 (= res!955557 call!133963)))

(declare-fun b!2231022 () Bool)

(declare-fun e!1425808 () Bool)

(assert (=> b!2231022 (= e!1425808 e!1425813)))

(declare-fun c!355877 () Bool)

(assert (=> b!2231022 (= c!355877 ((_ is Union!6419) expr!64))))

(declare-fun bm!133957 () Bool)

(declare-fun c!355876 () Bool)

(assert (=> bm!133957 (= call!133962 (validRegex!2393 (ite c!355876 (reg!6748 expr!64) (ite c!355877 (regOne!13351 expr!64) (regOne!13350 expr!64)))))))

(declare-fun bm!133958 () Bool)

(assert (=> bm!133958 (= call!133961 (validRegex!2393 (ite c!355877 (regTwo!13351 expr!64) (regTwo!13350 expr!64))))))

(declare-fun d!665025 () Bool)

(declare-fun res!955555 () Bool)

(declare-fun e!1425812 () Bool)

(assert (=> d!665025 (=> res!955555 e!1425812)))

(assert (=> d!665025 (= res!955555 ((_ is ElementMatch!6419) expr!64))))

(assert (=> d!665025 (= (validRegex!2393 expr!64) e!1425812)))

(declare-fun b!2231023 () Bool)

(assert (=> b!2231023 (= e!1425808 e!1425814)))

(declare-fun res!955558 () Bool)

(assert (=> b!2231023 (= res!955558 (not (nullable!1766 (reg!6748 expr!64))))))

(assert (=> b!2231023 (=> (not res!955558) (not e!1425814))))

(declare-fun b!2231024 () Bool)

(assert (=> b!2231024 (= e!1425810 call!133961)))

(declare-fun b!2231025 () Bool)

(assert (=> b!2231025 (= e!1425812 e!1425808)))

(assert (=> b!2231025 (= c!355876 ((_ is Star!6419) expr!64))))

(assert (= (and d!665025 (not res!955555)) b!2231025))

(assert (= (and b!2231025 c!355876) b!2231023))

(assert (= (and b!2231025 (not c!355876)) b!2231022))

(assert (= (and b!2231023 res!955558) b!2231019))

(assert (= (and b!2231022 c!355877) b!2231020))

(assert (= (and b!2231022 (not c!355877)) b!2231018))

(assert (= (and b!2231020 res!955554) b!2231017))

(assert (= (and b!2231018 (not res!955556)) b!2231021))

(assert (= (and b!2231021 res!955557) b!2231024))

(assert (= (or b!2231017 b!2231024) bm!133958))

(assert (= (or b!2231020 b!2231021) bm!133956))

(assert (= (or b!2231019 bm!133956) bm!133957))

(declare-fun m!2667644 () Bool)

(assert (=> bm!133957 m!2667644))

(declare-fun m!2667646 () Bool)

(assert (=> bm!133958 m!2667646))

(declare-fun m!2667648 () Bool)

(assert (=> b!2231023 m!2667648))

(assert (=> start!217560 d!665025))

(declare-fun d!665027 () Bool)

(declare-fun res!955561 () Bool)

(declare-fun e!1425817 () Bool)

(assert (=> d!665027 (=> (not res!955561) (not e!1425817))))

(assert (=> d!665027 (= res!955561 ((_ is HashMap!2967) (cache!3348 cacheDown!839)))))

(assert (=> d!665027 (= (inv!35603 cacheDown!839) e!1425817)))

(declare-fun b!2231028 () Bool)

(declare-fun validCacheMapDown!283 (MutableMap!2967) Bool)

(assert (=> b!2231028 (= e!1425817 (validCacheMapDown!283 (cache!3348 cacheDown!839)))))

(assert (= (and d!665027 res!955561) b!2231028))

(declare-fun m!2667650 () Bool)

(assert (=> b!2231028 m!2667650))

(assert (=> start!217560 d!665027))

(declare-fun d!665029 () Bool)

(declare-fun lambda!84291 () Int)

(declare-fun forall!5363 (List!26310 Int) Bool)

(assert (=> d!665029 (= (inv!35604 context!86) (forall!5363 (exprs!2467 context!86) lambda!84291))))

(declare-fun bs!453892 () Bool)

(assert (= bs!453892 d!665029))

(declare-fun m!2667652 () Bool)

(assert (=> bs!453892 m!2667652))

(assert (=> start!217560 d!665029))

(declare-fun d!665031 () Bool)

(declare-fun e!1425820 () Bool)

(assert (=> d!665031 e!1425820))

(declare-fun res!955564 () Bool)

(assert (=> d!665031 (=> res!955564 e!1425820)))

(declare-fun lt!830581 () Option!5104)

(declare-fun isEmpty!14896 (Option!5104) Bool)

(assert (=> d!665031 (= res!955564 (isEmpty!14896 lt!830581))))

(declare-fun choose!13127 (CacheDown!1980 Regex!6419 Context!3934 C!12984) Option!5104)

(assert (=> d!665031 (= lt!830581 (choose!13127 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!665031 (validCacheMapDown!283 (cache!3348 cacheDown!839))))

(assert (=> d!665031 (= (get!7915 cacheDown!839 expr!64 context!86 a!1167) lt!830581)))

(declare-fun b!2231031 () Bool)

(declare-fun get!7916 (Option!5104) (InoxSet Context!3934))

(declare-fun derivationStepZipperDown!46 (Regex!6419 Context!3934 C!12984) (InoxSet Context!3934))

(assert (=> b!2231031 (= e!1425820 (= (get!7916 lt!830581) (derivationStepZipperDown!46 expr!64 context!86 a!1167)))))

(assert (= (and d!665031 (not res!955564)) b!2231031))

(declare-fun m!2667654 () Bool)

(assert (=> d!665031 m!2667654))

(declare-fun m!2667656 () Bool)

(assert (=> d!665031 m!2667656))

(assert (=> d!665031 m!2667650))

(declare-fun m!2667658 () Bool)

(assert (=> b!2231031 m!2667658))

(declare-fun m!2667660 () Bool)

(assert (=> b!2231031 m!2667660))

(assert (=> b!2230973 d!665031))

(declare-fun d!665033 () Bool)

(assert (=> d!665033 (= (array_inv!3375 (_keys!3354 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) (bvsge (size!20482 (_keys!3354 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2230975 d!665033))

(declare-fun d!665035 () Bool)

(assert (=> d!665035 (= (array_inv!3376 (_values!3337 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) (bvsge (size!20483 (_values!3337 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2230975 d!665035))

(declare-fun d!665037 () Bool)

(declare-fun nullableFct!416 (Regex!6419) Bool)

(assert (=> d!665037 (= (nullable!1766 (regOne!13350 expr!64)) (nullableFct!416 (regOne!13350 expr!64)))))

(declare-fun bs!453893 () Bool)

(assert (= bs!453893 d!665037))

(declare-fun m!2667662 () Bool)

(assert (=> bs!453893 m!2667662))

(assert (=> b!2230980 d!665037))

(declare-fun b!2231042 () Bool)

(declare-fun e!1425823 () Bool)

(assert (=> b!2231042 (= e!1425823 tp_is_empty!10063)))

(declare-fun b!2231043 () Bool)

(declare-fun tp!699132 () Bool)

(declare-fun tp!699131 () Bool)

(assert (=> b!2231043 (= e!1425823 (and tp!699132 tp!699131))))

(assert (=> b!2230987 (= tp!699115 e!1425823)))

(declare-fun b!2231044 () Bool)

(declare-fun tp!699135 () Bool)

(assert (=> b!2231044 (= e!1425823 tp!699135)))

(declare-fun b!2231045 () Bool)

(declare-fun tp!699133 () Bool)

(declare-fun tp!699134 () Bool)

(assert (=> b!2231045 (= e!1425823 (and tp!699133 tp!699134))))

(assert (= (and b!2230987 ((_ is ElementMatch!6419) (reg!6748 expr!64))) b!2231042))

(assert (= (and b!2230987 ((_ is Concat!10757) (reg!6748 expr!64))) b!2231043))

(assert (= (and b!2230987 ((_ is Star!6419) (reg!6748 expr!64))) b!2231044))

(assert (= (and b!2230987 ((_ is Union!6419) (reg!6748 expr!64))) b!2231045))

(declare-fun b!2231060 () Bool)

(declare-fun e!1425838 () Bool)

(declare-fun tp!699165 () Bool)

(assert (=> b!2231060 (= e!1425838 tp!699165)))

(declare-fun condMapEmpty!14397 () Bool)

(declare-fun mapDefault!14397 () List!26311)

(assert (=> mapNonEmpty!14394 (= condMapEmpty!14397 (= mapRest!14394 ((as const (Array (_ BitVec 32) List!26311)) mapDefault!14397)))))

(declare-fun e!1425841 () Bool)

(declare-fun mapRes!14397 () Bool)

(assert (=> mapNonEmpty!14394 (= tp!699110 (and e!1425841 mapRes!14397))))

(declare-fun b!2231061 () Bool)

(declare-fun e!1425836 () Bool)

(declare-fun tp!699162 () Bool)

(assert (=> b!2231061 (= e!1425836 tp!699162)))

(declare-fun e!1425839 () Bool)

(declare-fun e!1425837 () Bool)

(declare-fun setRes!20089 () Bool)

(declare-fun mapValue!14397 () List!26311)

(declare-fun tp!699160 () Bool)

(declare-fun tp!699168 () Bool)

(declare-fun b!2231062 () Bool)

(assert (=> b!2231062 (= e!1425837 (and tp!699160 (inv!35604 (_2!15210 (_1!15211 (h!31618 mapValue!14397)))) e!1425839 tp_is_empty!10063 setRes!20089 tp!699168))))

(declare-fun condSetEmpty!20089 () Bool)

(assert (=> b!2231062 (= condSetEmpty!20089 (= (_2!15211 (h!31618 mapValue!14397)) ((as const (Array Context!3934 Bool)) false)))))

(declare-fun setIsEmpty!20089 () Bool)

(declare-fun setRes!20090 () Bool)

(assert (=> setIsEmpty!20089 setRes!20090))

(declare-fun setIsEmpty!20090 () Bool)

(assert (=> setIsEmpty!20090 setRes!20089))

(declare-fun mapIsEmpty!14397 () Bool)

(assert (=> mapIsEmpty!14397 mapRes!14397))

(declare-fun setElem!20089 () Context!3934)

(declare-fun setNonEmpty!20089 () Bool)

(declare-fun tp!699167 () Bool)

(assert (=> setNonEmpty!20089 (= setRes!20090 (and tp!699167 (inv!35604 setElem!20089) e!1425836))))

(declare-fun setRest!20089 () (InoxSet Context!3934))

(assert (=> setNonEmpty!20089 (= (_2!15211 (h!31618 mapDefault!14397)) ((_ map or) (store ((as const (Array Context!3934 Bool)) false) setElem!20089 true) setRest!20089))))

(declare-fun b!2231063 () Bool)

(declare-fun tp!699159 () Bool)

(assert (=> b!2231063 (= e!1425839 tp!699159)))

(declare-fun mapNonEmpty!14397 () Bool)

(declare-fun tp!699164 () Bool)

(assert (=> mapNonEmpty!14397 (= mapRes!14397 (and tp!699164 e!1425837))))

(declare-fun mapRest!14397 () (Array (_ BitVec 32) List!26311))

(declare-fun mapKey!14397 () (_ BitVec 32))

(assert (=> mapNonEmpty!14397 (= mapRest!14394 (store mapRest!14397 mapKey!14397 mapValue!14397))))

(declare-fun b!2231064 () Bool)

(declare-fun e!1425840 () Bool)

(declare-fun tp!699158 () Bool)

(assert (=> b!2231064 (= e!1425840 tp!699158)))

(declare-fun b!2231065 () Bool)

(declare-fun tp!699161 () Bool)

(declare-fun tp!699166 () Bool)

(assert (=> b!2231065 (= e!1425841 (and tp!699161 (inv!35604 (_2!15210 (_1!15211 (h!31618 mapDefault!14397)))) e!1425840 tp_is_empty!10063 setRes!20090 tp!699166))))

(declare-fun condSetEmpty!20090 () Bool)

(assert (=> b!2231065 (= condSetEmpty!20090 (= (_2!15211 (h!31618 mapDefault!14397)) ((as const (Array Context!3934 Bool)) false)))))

(declare-fun setElem!20090 () Context!3934)

(declare-fun setNonEmpty!20090 () Bool)

(declare-fun tp!699163 () Bool)

(assert (=> setNonEmpty!20090 (= setRes!20089 (and tp!699163 (inv!35604 setElem!20090) e!1425838))))

(declare-fun setRest!20090 () (InoxSet Context!3934))

(assert (=> setNonEmpty!20090 (= (_2!15211 (h!31618 mapValue!14397)) ((_ map or) (store ((as const (Array Context!3934 Bool)) false) setElem!20090 true) setRest!20090))))

(assert (= (and mapNonEmpty!14394 condMapEmpty!14397) mapIsEmpty!14397))

(assert (= (and mapNonEmpty!14394 (not condMapEmpty!14397)) mapNonEmpty!14397))

(assert (= b!2231062 b!2231063))

(assert (= (and b!2231062 condSetEmpty!20089) setIsEmpty!20090))

(assert (= (and b!2231062 (not condSetEmpty!20089)) setNonEmpty!20090))

(assert (= setNonEmpty!20090 b!2231060))

(assert (= (and mapNonEmpty!14397 ((_ is Cons!26217) mapValue!14397)) b!2231062))

(assert (= b!2231065 b!2231064))

(assert (= (and b!2231065 condSetEmpty!20090) setIsEmpty!20089))

(assert (= (and b!2231065 (not condSetEmpty!20090)) setNonEmpty!20089))

(assert (= setNonEmpty!20089 b!2231061))

(assert (= (and mapNonEmpty!14394 ((_ is Cons!26217) mapDefault!14397)) b!2231065))

(declare-fun m!2667664 () Bool)

(assert (=> setNonEmpty!20090 m!2667664))

(declare-fun m!2667666 () Bool)

(assert (=> b!2231065 m!2667666))

(declare-fun m!2667668 () Bool)

(assert (=> b!2231062 m!2667668))

(declare-fun m!2667670 () Bool)

(assert (=> mapNonEmpty!14397 m!2667670))

(declare-fun m!2667672 () Bool)

(assert (=> setNonEmpty!20089 m!2667672))

(declare-fun b!2231074 () Bool)

(declare-fun e!1425848 () Bool)

(declare-fun tp!699182 () Bool)

(assert (=> b!2231074 (= e!1425848 tp!699182)))

(declare-fun tp!699181 () Bool)

(declare-fun e!1425850 () Bool)

(declare-fun b!2231075 () Bool)

(declare-fun e!1425849 () Bool)

(declare-fun setRes!20093 () Bool)

(declare-fun tp!699183 () Bool)

(assert (=> b!2231075 (= e!1425849 (and tp!699181 (inv!35604 (_2!15210 (_1!15211 (h!31618 mapValue!14394)))) e!1425850 tp_is_empty!10063 setRes!20093 tp!699183))))

(declare-fun condSetEmpty!20093 () Bool)

(assert (=> b!2231075 (= condSetEmpty!20093 (= (_2!15211 (h!31618 mapValue!14394)) ((as const (Array Context!3934 Bool)) false)))))

(declare-fun setIsEmpty!20093 () Bool)

(assert (=> setIsEmpty!20093 setRes!20093))

(declare-fun b!2231076 () Bool)

(declare-fun tp!699179 () Bool)

(assert (=> b!2231076 (= e!1425850 tp!699179)))

(assert (=> mapNonEmpty!14394 (= tp!699116 e!1425849)))

(declare-fun setElem!20093 () Context!3934)

(declare-fun tp!699180 () Bool)

(declare-fun setNonEmpty!20093 () Bool)

(assert (=> setNonEmpty!20093 (= setRes!20093 (and tp!699180 (inv!35604 setElem!20093) e!1425848))))

(declare-fun setRest!20093 () (InoxSet Context!3934))

(assert (=> setNonEmpty!20093 (= (_2!15211 (h!31618 mapValue!14394)) ((_ map or) (store ((as const (Array Context!3934 Bool)) false) setElem!20093 true) setRest!20093))))

(assert (= b!2231075 b!2231076))

(assert (= (and b!2231075 condSetEmpty!20093) setIsEmpty!20093))

(assert (= (and b!2231075 (not condSetEmpty!20093)) setNonEmpty!20093))

(assert (= setNonEmpty!20093 b!2231074))

(assert (= (and mapNonEmpty!14394 ((_ is Cons!26217) mapValue!14394)) b!2231075))

(declare-fun m!2667674 () Bool)

(assert (=> b!2231075 m!2667674))

(declare-fun m!2667676 () Bool)

(assert (=> setNonEmpty!20093 m!2667676))

(declare-fun b!2231077 () Bool)

(declare-fun e!1425851 () Bool)

(declare-fun tp!699187 () Bool)

(assert (=> b!2231077 (= e!1425851 tp!699187)))

(declare-fun setRes!20094 () Bool)

(declare-fun tp!699186 () Bool)

(declare-fun b!2231078 () Bool)

(declare-fun e!1425852 () Bool)

(declare-fun e!1425853 () Bool)

(declare-fun tp!699188 () Bool)

(assert (=> b!2231078 (= e!1425852 (and tp!699186 (inv!35604 (_2!15210 (_1!15211 (h!31618 mapDefault!14394)))) e!1425853 tp_is_empty!10063 setRes!20094 tp!699188))))

(declare-fun condSetEmpty!20094 () Bool)

(assert (=> b!2231078 (= condSetEmpty!20094 (= (_2!15211 (h!31618 mapDefault!14394)) ((as const (Array Context!3934 Bool)) false)))))

(declare-fun setIsEmpty!20094 () Bool)

(assert (=> setIsEmpty!20094 setRes!20094))

(declare-fun b!2231079 () Bool)

(declare-fun tp!699184 () Bool)

(assert (=> b!2231079 (= e!1425853 tp!699184)))

(assert (=> b!2230986 (= tp!699118 e!1425852)))

(declare-fun tp!699185 () Bool)

(declare-fun setNonEmpty!20094 () Bool)

(declare-fun setElem!20094 () Context!3934)

(assert (=> setNonEmpty!20094 (= setRes!20094 (and tp!699185 (inv!35604 setElem!20094) e!1425851))))

(declare-fun setRest!20094 () (InoxSet Context!3934))

(assert (=> setNonEmpty!20094 (= (_2!15211 (h!31618 mapDefault!14394)) ((_ map or) (store ((as const (Array Context!3934 Bool)) false) setElem!20094 true) setRest!20094))))

(assert (= b!2231078 b!2231079))

(assert (= (and b!2231078 condSetEmpty!20094) setIsEmpty!20094))

(assert (= (and b!2231078 (not condSetEmpty!20094)) setNonEmpty!20094))

(assert (= setNonEmpty!20094 b!2231077))

(assert (= (and b!2230986 ((_ is Cons!26217) mapDefault!14394)) b!2231078))

(declare-fun m!2667678 () Bool)

(assert (=> b!2231078 m!2667678))

(declare-fun m!2667680 () Bool)

(assert (=> setNonEmpty!20094 m!2667680))

(declare-fun b!2231080 () Bool)

(declare-fun e!1425854 () Bool)

(assert (=> b!2231080 (= e!1425854 tp_is_empty!10063)))

(declare-fun b!2231081 () Bool)

(declare-fun tp!699190 () Bool)

(declare-fun tp!699189 () Bool)

(assert (=> b!2231081 (= e!1425854 (and tp!699190 tp!699189))))

(assert (=> b!2230983 (= tp!699109 e!1425854)))

(declare-fun b!2231082 () Bool)

(declare-fun tp!699193 () Bool)

(assert (=> b!2231082 (= e!1425854 tp!699193)))

(declare-fun b!2231083 () Bool)

(declare-fun tp!699191 () Bool)

(declare-fun tp!699192 () Bool)

(assert (=> b!2231083 (= e!1425854 (and tp!699191 tp!699192))))

(assert (= (and b!2230983 ((_ is ElementMatch!6419) (regOne!13351 expr!64))) b!2231080))

(assert (= (and b!2230983 ((_ is Concat!10757) (regOne!13351 expr!64))) b!2231081))

(assert (= (and b!2230983 ((_ is Star!6419) (regOne!13351 expr!64))) b!2231082))

(assert (= (and b!2230983 ((_ is Union!6419) (regOne!13351 expr!64))) b!2231083))

(declare-fun b!2231084 () Bool)

(declare-fun e!1425855 () Bool)

(assert (=> b!2231084 (= e!1425855 tp_is_empty!10063)))

(declare-fun b!2231085 () Bool)

(declare-fun tp!699195 () Bool)

(declare-fun tp!699194 () Bool)

(assert (=> b!2231085 (= e!1425855 (and tp!699195 tp!699194))))

(assert (=> b!2230983 (= tp!699114 e!1425855)))

(declare-fun b!2231086 () Bool)

(declare-fun tp!699198 () Bool)

(assert (=> b!2231086 (= e!1425855 tp!699198)))

(declare-fun b!2231087 () Bool)

(declare-fun tp!699196 () Bool)

(declare-fun tp!699197 () Bool)

(assert (=> b!2231087 (= e!1425855 (and tp!699196 tp!699197))))

(assert (= (and b!2230983 ((_ is ElementMatch!6419) (regTwo!13351 expr!64))) b!2231084))

(assert (= (and b!2230983 ((_ is Concat!10757) (regTwo!13351 expr!64))) b!2231085))

(assert (= (and b!2230983 ((_ is Star!6419) (regTwo!13351 expr!64))) b!2231086))

(assert (= (and b!2230983 ((_ is Union!6419) (regTwo!13351 expr!64))) b!2231087))

(declare-fun b!2231088 () Bool)

(declare-fun e!1425856 () Bool)

(assert (=> b!2231088 (= e!1425856 tp_is_empty!10063)))

(declare-fun b!2231089 () Bool)

(declare-fun tp!699200 () Bool)

(declare-fun tp!699199 () Bool)

(assert (=> b!2231089 (= e!1425856 (and tp!699200 tp!699199))))

(assert (=> b!2230988 (= tp!699112 e!1425856)))

(declare-fun b!2231090 () Bool)

(declare-fun tp!699203 () Bool)

(assert (=> b!2231090 (= e!1425856 tp!699203)))

(declare-fun b!2231091 () Bool)

(declare-fun tp!699201 () Bool)

(declare-fun tp!699202 () Bool)

(assert (=> b!2231091 (= e!1425856 (and tp!699201 tp!699202))))

(assert (= (and b!2230988 ((_ is ElementMatch!6419) (regOne!13350 expr!64))) b!2231088))

(assert (= (and b!2230988 ((_ is Concat!10757) (regOne!13350 expr!64))) b!2231089))

(assert (= (and b!2230988 ((_ is Star!6419) (regOne!13350 expr!64))) b!2231090))

(assert (= (and b!2230988 ((_ is Union!6419) (regOne!13350 expr!64))) b!2231091))

(declare-fun b!2231092 () Bool)

(declare-fun e!1425857 () Bool)

(assert (=> b!2231092 (= e!1425857 tp_is_empty!10063)))

(declare-fun b!2231093 () Bool)

(declare-fun tp!699205 () Bool)

(declare-fun tp!699204 () Bool)

(assert (=> b!2231093 (= e!1425857 (and tp!699205 tp!699204))))

(assert (=> b!2230988 (= tp!699117 e!1425857)))

(declare-fun b!2231094 () Bool)

(declare-fun tp!699208 () Bool)

(assert (=> b!2231094 (= e!1425857 tp!699208)))

(declare-fun b!2231095 () Bool)

(declare-fun tp!699206 () Bool)

(declare-fun tp!699207 () Bool)

(assert (=> b!2231095 (= e!1425857 (and tp!699206 tp!699207))))

(assert (= (and b!2230988 ((_ is ElementMatch!6419) (regTwo!13350 expr!64))) b!2231092))

(assert (= (and b!2230988 ((_ is Concat!10757) (regTwo!13350 expr!64))) b!2231093))

(assert (= (and b!2230988 ((_ is Star!6419) (regTwo!13350 expr!64))) b!2231094))

(assert (= (and b!2230988 ((_ is Union!6419) (regTwo!13350 expr!64))) b!2231095))

(declare-fun b!2231100 () Bool)

(declare-fun e!1425860 () Bool)

(declare-fun tp!699213 () Bool)

(declare-fun tp!699214 () Bool)

(assert (=> b!2231100 (= e!1425860 (and tp!699213 tp!699214))))

(assert (=> b!2230984 (= tp!699119 e!1425860)))

(assert (= (and b!2230984 ((_ is Cons!26216) (exprs!2467 context!86))) b!2231100))

(declare-fun b!2231101 () Bool)

(declare-fun e!1425861 () Bool)

(declare-fun tp!699218 () Bool)

(assert (=> b!2231101 (= e!1425861 tp!699218)))

(declare-fun setRes!20095 () Bool)

(declare-fun e!1425862 () Bool)

(declare-fun b!2231102 () Bool)

(declare-fun tp!699219 () Bool)

(declare-fun tp!699217 () Bool)

(declare-fun e!1425863 () Bool)

(assert (=> b!2231102 (= e!1425862 (and tp!699217 (inv!35604 (_2!15210 (_1!15211 (h!31618 (zeroValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))))) e!1425863 tp_is_empty!10063 setRes!20095 tp!699219))))

(declare-fun condSetEmpty!20095 () Bool)

(assert (=> b!2231102 (= condSetEmpty!20095 (= (_2!15211 (h!31618 (zeroValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))) ((as const (Array Context!3934 Bool)) false)))))

(declare-fun setIsEmpty!20095 () Bool)

(assert (=> setIsEmpty!20095 setRes!20095))

(declare-fun b!2231103 () Bool)

(declare-fun tp!699215 () Bool)

(assert (=> b!2231103 (= e!1425863 tp!699215)))

(assert (=> b!2230975 (= tp!699108 e!1425862)))

(declare-fun setElem!20095 () Context!3934)

(declare-fun setNonEmpty!20095 () Bool)

(declare-fun tp!699216 () Bool)

(assert (=> setNonEmpty!20095 (= setRes!20095 (and tp!699216 (inv!35604 setElem!20095) e!1425861))))

(declare-fun setRest!20095 () (InoxSet Context!3934))

(assert (=> setNonEmpty!20095 (= (_2!15211 (h!31618 (zeroValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3934 Bool)) false) setElem!20095 true) setRest!20095))))

(assert (= b!2231102 b!2231103))

(assert (= (and b!2231102 condSetEmpty!20095) setIsEmpty!20095))

(assert (= (and b!2231102 (not condSetEmpty!20095)) setNonEmpty!20095))

(assert (= setNonEmpty!20095 b!2231101))

(assert (= (and b!2230975 ((_ is Cons!26217) (zeroValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))) b!2231102))

(declare-fun m!2667682 () Bool)

(assert (=> b!2231102 m!2667682))

(declare-fun m!2667684 () Bool)

(assert (=> setNonEmpty!20095 m!2667684))

(declare-fun b!2231104 () Bool)

(declare-fun e!1425864 () Bool)

(declare-fun tp!699223 () Bool)

(assert (=> b!2231104 (= e!1425864 tp!699223)))

(declare-fun e!1425865 () Bool)

(declare-fun tp!699222 () Bool)

(declare-fun tp!699224 () Bool)

(declare-fun b!2231105 () Bool)

(declare-fun setRes!20096 () Bool)

(declare-fun e!1425866 () Bool)

(assert (=> b!2231105 (= e!1425865 (and tp!699222 (inv!35604 (_2!15210 (_1!15211 (h!31618 (minValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))))) e!1425866 tp_is_empty!10063 setRes!20096 tp!699224))))

(declare-fun condSetEmpty!20096 () Bool)

(assert (=> b!2231105 (= condSetEmpty!20096 (= (_2!15211 (h!31618 (minValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))) ((as const (Array Context!3934 Bool)) false)))))

(declare-fun setIsEmpty!20096 () Bool)

(assert (=> setIsEmpty!20096 setRes!20096))

(declare-fun b!2231106 () Bool)

(declare-fun tp!699220 () Bool)

(assert (=> b!2231106 (= e!1425866 tp!699220)))

(assert (=> b!2230975 (= tp!699111 e!1425865)))

(declare-fun setElem!20096 () Context!3934)

(declare-fun setNonEmpty!20096 () Bool)

(declare-fun tp!699221 () Bool)

(assert (=> setNonEmpty!20096 (= setRes!20096 (and tp!699221 (inv!35604 setElem!20096) e!1425864))))

(declare-fun setRest!20096 () (InoxSet Context!3934))

(assert (=> setNonEmpty!20096 (= (_2!15211 (h!31618 (minValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3934 Bool)) false) setElem!20096 true) setRest!20096))))

(assert (= b!2231105 b!2231106))

(assert (= (and b!2231105 condSetEmpty!20096) setIsEmpty!20096))

(assert (= (and b!2231105 (not condSetEmpty!20096)) setNonEmpty!20096))

(assert (= setNonEmpty!20096 b!2231104))

(assert (= (and b!2230975 ((_ is Cons!26217) (minValue!3315 (v!29807 (underlying!6315 (v!29808 (underlying!6316 (cache!3348 cacheDown!839)))))))) b!2231105))

(declare-fun m!2667686 () Bool)

(assert (=> b!2231105 m!2667686))

(declare-fun m!2667688 () Bool)

(assert (=> setNonEmpty!20096 m!2667688))

(check-sat (not b!2231076) (not b!2231089) (not b!2231062) (not b!2231085) b_and!174677 (not b!2231074) (not b!2231086) (not setNonEmpty!20093) (not b!2231078) (not d!665029) (not bm!133954) (not setNonEmpty!20089) (not setNonEmpty!20096) tp_is_empty!10063 (not b!2231103) (not b!2231081) (not d!665031) (not b!2231106) (not b!2231061) (not b!2231094) (not b!2231090) (not b!2231075) (not b!2231023) (not b!2231091) (not b!2231043) (not b!2231087) (not setNonEmpty!20094) (not b!2231031) (not b!2231014) (not b!2231083) (not bm!133958) (not b!2231077) (not b!2231060) (not b!2231065) (not bm!133957) (not b!2231082) (not b!2231100) (not bm!133955) (not b!2231045) (not b!2231063) (not b_next!65395) (not b!2231079) (not mapNonEmpty!14397) (not b!2231102) (not setNonEmpty!20090) (not setNonEmpty!20095) (not b!2231105) (not b!2231028) (not b!2231044) (not b!2231093) (not b!2231095) (not d!665037) b_and!174679 (not b!2231104) (not b_next!65393) (not b!2231101) (not b!2231064))
(check-sat b_and!174679 b_and!174677 (not b_next!65393) (not b_next!65395))
