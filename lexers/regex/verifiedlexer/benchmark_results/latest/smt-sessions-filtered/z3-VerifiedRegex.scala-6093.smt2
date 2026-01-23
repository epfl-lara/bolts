; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296598 () Bool)

(assert start!296598)

(declare-fun b!3164874 () Bool)

(declare-fun b_free!83113 () Bool)

(declare-fun b_next!83817 () Bool)

(assert (=> b!3164874 (= b_free!83113 (not b_next!83817))))

(declare-fun tp!996902 () Bool)

(declare-fun b_and!209367 () Bool)

(assert (=> b!3164874 (= tp!996902 b_and!209367)))

(declare-fun b!3164863 () Bool)

(declare-fun b_free!83115 () Bool)

(declare-fun b_next!83819 () Bool)

(assert (=> b!3164863 (= b_free!83115 (not b_next!83819))))

(declare-fun tp!996903 () Bool)

(declare-fun b_and!209369 () Bool)

(assert (=> b!3164863 (= tp!996903 b_and!209369)))

(declare-fun b!3164862 () Bool)

(declare-fun res!1287816 () Bool)

(declare-fun e!1971582 () Bool)

(assert (=> b!3164862 (=> (not res!1287816) (not e!1971582))))

(declare-datatypes ((C!19660 0))(
  ( (C!19661 (val!11866 Int)) )
))
(declare-datatypes ((Regex!9737 0))(
  ( (ElementMatch!9737 (c!532237 C!19660)) (Concat!15058 (regOne!19986 Regex!9737) (regTwo!19986 Regex!9737)) (EmptyExpr!9737) (Star!9737 (reg!10066 Regex!9737)) (EmptyLang!9737) (Union!9737 (regOne!19987 Regex!9737) (regTwo!19987 Regex!9737)) )
))
(declare-datatypes ((tuple2!34522 0))(
  ( (tuple2!34523 (_1!20393 Regex!9737) (_2!20393 C!19660)) )
))
(declare-datatypes ((tuple2!34524 0))(
  ( (tuple2!34525 (_1!20394 tuple2!34522) (_2!20394 Regex!9737)) )
))
(declare-datatypes ((array!14834 0))(
  ( (array!14835 (arr!6606 (Array (_ BitVec 32) (_ BitVec 64))) (size!26692 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4074 0))(
  ( (HashableExt!4073 (__x!22580 Int)) )
))
(declare-datatypes ((List!35568 0))(
  ( (Nil!35444) (Cons!35444 (h!40864 tuple2!34524) (t!234639 List!35568)) )
))
(declare-datatypes ((array!14836 0))(
  ( (array!14837 (arr!6607 (Array (_ BitVec 32) List!35568)) (size!26693 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8316 0))(
  ( (LongMapFixedSize!8317 (defaultEntry!4543 Int) (mask!10820 (_ BitVec 32)) (extraKeys!4407 (_ BitVec 32)) (zeroValue!4417 List!35568) (minValue!4417 List!35568) (_size!8359 (_ BitVec 32)) (_keys!4458 array!14834) (_values!4439 array!14836) (_vacant!4219 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16441 0))(
  ( (Cell!16442 (v!35123 LongMapFixedSize!8316)) )
))
(declare-datatypes ((MutLongMap!4158 0))(
  ( (LongMap!4158 (underlying!8545 Cell!16441)) (MutLongMapExt!4157 (__x!22581 Int)) )
))
(declare-datatypes ((Cell!16443 0))(
  ( (Cell!16444 (v!35124 MutLongMap!4158)) )
))
(declare-datatypes ((MutableMap!4064 0))(
  ( (MutableMapExt!4063 (__x!22582 Int)) (HashMap!4064 (underlying!8546 Cell!16443) (hashF!6106 Hashable!4074) (_size!8360 (_ BitVec 32)) (defaultValue!4235 Int)) )
))
(declare-datatypes ((Cache!398 0))(
  ( (Cache!399 (cache!4207 MutableMap!4064)) )
))
(declare-fun cache!347 () Cache!398)

(declare-fun valid!3241 (Cache!398) Bool)

(assert (=> b!3164862 (= res!1287816 (valid!3241 cache!347))))

(declare-fun e!1971581 () Bool)

(declare-fun e!1971585 () Bool)

(assert (=> b!3164863 (= e!1971581 (and e!1971585 tp!996903))))

(declare-fun mapNonEmpty!18854 () Bool)

(declare-fun mapRes!18854 () Bool)

(declare-fun tp!996896 () Bool)

(declare-fun tp!996907 () Bool)

(assert (=> mapNonEmpty!18854 (= mapRes!18854 (and tp!996896 tp!996907))))

(declare-fun mapRest!18854 () (Array (_ BitVec 32) List!35568))

(declare-fun mapKey!18854 () (_ BitVec 32))

(declare-fun mapValue!18854 () List!35568)

(assert (=> mapNonEmpty!18854 (= (arr!6607 (_values!4439 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) (store mapRest!18854 mapKey!18854 mapValue!18854))))

(declare-fun b!3164864 () Bool)

(declare-fun e!1971588 () Bool)

(declare-fun e!1971590 () Bool)

(assert (=> b!3164864 (= e!1971588 e!1971590)))

(declare-fun res!1287817 () Bool)

(assert (=> start!296598 (=> (not res!1287817) (not e!1971582))))

(declare-fun r!13156 () Regex!9737)

(declare-fun validRegex!4460 (Regex!9737) Bool)

(assert (=> start!296598 (= res!1287817 (validRegex!4460 r!13156))))

(assert (=> start!296598 e!1971582))

(declare-fun e!1971584 () Bool)

(assert (=> start!296598 e!1971584))

(declare-fun e!1971583 () Bool)

(declare-fun inv!48113 (Cache!398) Bool)

(assert (=> start!296598 (and (inv!48113 cache!347) e!1971583)))

(declare-fun tp_is_empty!17037 () Bool)

(assert (=> start!296598 tp_is_empty!17037))

(declare-fun b!3164865 () Bool)

(declare-fun e!1971589 () Bool)

(assert (=> b!3164865 (= e!1971582 e!1971589)))

(declare-fun res!1287815 () Bool)

(assert (=> b!3164865 (=> (not res!1287815) (not e!1971589))))

(declare-datatypes ((Option!6896 0))(
  ( (None!6895) (Some!6895 (v!35125 Regex!9737)) )
))
(declare-fun lt!1063974 () Option!6896)

(get-info :version)

(assert (=> b!3164865 (= res!1287815 ((_ is Some!6895) lt!1063974))))

(declare-fun a!2409 () C!19660)

(declare-fun get!11238 (Cache!398 Regex!9737 C!19660) Option!6896)

(assert (=> b!3164865 (= lt!1063974 (get!11238 cache!347 r!13156 a!2409))))

(declare-fun b!3164866 () Bool)

(declare-fun tp!996899 () Bool)

(declare-fun tp!996905 () Bool)

(assert (=> b!3164866 (= e!1971584 (and tp!996899 tp!996905))))

(declare-fun b!3164867 () Bool)

(declare-fun derivativeStep!2889 (Regex!9737 C!19660) Regex!9737)

(assert (=> b!3164867 (= e!1971589 (not (= (v!35125 lt!1063974) (derivativeStep!2889 r!13156 a!2409))))))

(declare-fun mapIsEmpty!18854 () Bool)

(assert (=> mapIsEmpty!18854 mapRes!18854))

(declare-fun b!3164868 () Bool)

(declare-fun tp!996900 () Bool)

(assert (=> b!3164868 (= e!1971584 tp!996900)))

(declare-fun b!3164869 () Bool)

(declare-fun lt!1063975 () MutLongMap!4158)

(assert (=> b!3164869 (= e!1971585 (and e!1971588 ((_ is LongMap!4158) lt!1063975)))))

(assert (=> b!3164869 (= lt!1063975 (v!35124 (underlying!8546 (cache!4207 cache!347))))))

(declare-fun b!3164870 () Bool)

(assert (=> b!3164870 (= e!1971584 tp_is_empty!17037)))

(declare-fun b!3164871 () Bool)

(assert (=> b!3164871 (= e!1971583 e!1971581)))

(declare-fun b!3164872 () Bool)

(declare-fun e!1971586 () Bool)

(declare-fun tp!996904 () Bool)

(assert (=> b!3164872 (= e!1971586 (and tp!996904 mapRes!18854))))

(declare-fun condMapEmpty!18854 () Bool)

(declare-fun mapDefault!18854 () List!35568)

(assert (=> b!3164872 (= condMapEmpty!18854 (= (arr!6607 (_values!4439 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) ((as const (Array (_ BitVec 32) List!35568)) mapDefault!18854)))))

(declare-fun b!3164873 () Bool)

(declare-fun e!1971580 () Bool)

(assert (=> b!3164873 (= e!1971590 e!1971580)))

(declare-fun tp!996897 () Bool)

(declare-fun tp!996906 () Bool)

(declare-fun array_inv!4732 (array!14834) Bool)

(declare-fun array_inv!4733 (array!14836) Bool)

(assert (=> b!3164874 (= e!1971580 (and tp!996902 tp!996906 tp!996897 (array_inv!4732 (_keys!4458 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) (array_inv!4733 (_values!4439 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) e!1971586))))

(declare-fun b!3164875 () Bool)

(declare-fun tp!996898 () Bool)

(declare-fun tp!996901 () Bool)

(assert (=> b!3164875 (= e!1971584 (and tp!996898 tp!996901))))

(assert (= (and start!296598 res!1287817) b!3164862))

(assert (= (and b!3164862 res!1287816) b!3164865))

(assert (= (and b!3164865 res!1287815) b!3164867))

(assert (= (and start!296598 ((_ is ElementMatch!9737) r!13156)) b!3164870))

(assert (= (and start!296598 ((_ is Concat!15058) r!13156)) b!3164866))

(assert (= (and start!296598 ((_ is Star!9737) r!13156)) b!3164868))

(assert (= (and start!296598 ((_ is Union!9737) r!13156)) b!3164875))

(assert (= (and b!3164872 condMapEmpty!18854) mapIsEmpty!18854))

(assert (= (and b!3164872 (not condMapEmpty!18854)) mapNonEmpty!18854))

(assert (= b!3164874 b!3164872))

(assert (= b!3164873 b!3164874))

(assert (= b!3164864 b!3164873))

(assert (= (and b!3164869 ((_ is LongMap!4158) (v!35124 (underlying!8546 (cache!4207 cache!347))))) b!3164864))

(assert (= b!3164863 b!3164869))

(assert (= (and b!3164871 ((_ is HashMap!4064) (cache!4207 cache!347))) b!3164863))

(assert (= start!296598 b!3164871))

(declare-fun m!3427391 () Bool)

(assert (=> start!296598 m!3427391))

(declare-fun m!3427393 () Bool)

(assert (=> start!296598 m!3427393))

(declare-fun m!3427395 () Bool)

(assert (=> b!3164865 m!3427395))

(declare-fun m!3427397 () Bool)

(assert (=> mapNonEmpty!18854 m!3427397))

(declare-fun m!3427399 () Bool)

(assert (=> b!3164874 m!3427399))

(declare-fun m!3427401 () Bool)

(assert (=> b!3164874 m!3427401))

(declare-fun m!3427403 () Bool)

(assert (=> b!3164862 m!3427403))

(declare-fun m!3427405 () Bool)

(assert (=> b!3164867 m!3427405))

(check-sat (not b!3164862) (not mapNonEmpty!18854) (not b!3164867) b_and!209369 (not b!3164872) (not b_next!83817) (not b!3164865) tp_is_empty!17037 b_and!209367 (not b!3164866) (not start!296598) (not b!3164875) (not b_next!83819) (not b!3164874) (not b!3164868))
(check-sat b_and!209369 b_and!209367 (not b_next!83817) (not b_next!83819))
(get-model)

(declare-fun b!3164894 () Bool)

(declare-fun e!1971606 () Bool)

(declare-fun call!229403 () Bool)

(assert (=> b!3164894 (= e!1971606 call!229403)))

(declare-fun b!3164895 () Bool)

(declare-fun res!1287828 () Bool)

(declare-fun e!1971607 () Bool)

(assert (=> b!3164895 (=> res!1287828 e!1971607)))

(assert (=> b!3164895 (= res!1287828 (not ((_ is Concat!15058) r!13156)))))

(declare-fun e!1971611 () Bool)

(assert (=> b!3164895 (= e!1971611 e!1971607)))

(declare-fun b!3164896 () Bool)

(declare-fun e!1971605 () Bool)

(assert (=> b!3164896 (= e!1971605 e!1971611)))

(declare-fun c!532243 () Bool)

(assert (=> b!3164896 (= c!532243 ((_ is Union!9737) r!13156))))

(declare-fun bm!229398 () Bool)

(declare-fun call!229405 () Bool)

(assert (=> bm!229398 (= call!229405 (validRegex!4460 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))))))

(declare-fun b!3164897 () Bool)

(declare-fun e!1971608 () Bool)

(declare-fun call!229404 () Bool)

(assert (=> b!3164897 (= e!1971608 call!229404)))

(declare-fun c!532242 () Bool)

(declare-fun bm!229399 () Bool)

(assert (=> bm!229399 (= call!229403 (validRegex!4460 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))

(declare-fun d!868742 () Bool)

(declare-fun res!1287829 () Bool)

(declare-fun e!1971609 () Bool)

(assert (=> d!868742 (=> res!1287829 e!1971609)))

(assert (=> d!868742 (= res!1287829 ((_ is ElementMatch!9737) r!13156))))

(assert (=> d!868742 (= (validRegex!4460 r!13156) e!1971609)))

(declare-fun b!3164898 () Bool)

(assert (=> b!3164898 (= e!1971607 e!1971608)))

(declare-fun res!1287831 () Bool)

(assert (=> b!3164898 (=> (not res!1287831) (not e!1971608))))

(assert (=> b!3164898 (= res!1287831 call!229405)))

(declare-fun b!3164899 () Bool)

(declare-fun e!1971610 () Bool)

(assert (=> b!3164899 (= e!1971610 call!229404)))

(declare-fun b!3164900 () Bool)

(assert (=> b!3164900 (= e!1971605 e!1971606)))

(declare-fun res!1287832 () Bool)

(declare-fun nullable!3342 (Regex!9737) Bool)

(assert (=> b!3164900 (= res!1287832 (not (nullable!3342 (reg!10066 r!13156))))))

(assert (=> b!3164900 (=> (not res!1287832) (not e!1971606))))

(declare-fun bm!229400 () Bool)

(assert (=> bm!229400 (= call!229404 call!229403)))

(declare-fun b!3164901 () Bool)

(declare-fun res!1287830 () Bool)

(assert (=> b!3164901 (=> (not res!1287830) (not e!1971610))))

(assert (=> b!3164901 (= res!1287830 call!229405)))

(assert (=> b!3164901 (= e!1971611 e!1971610)))

(declare-fun b!3164902 () Bool)

(assert (=> b!3164902 (= e!1971609 e!1971605)))

(assert (=> b!3164902 (= c!532242 ((_ is Star!9737) r!13156))))

(assert (= (and d!868742 (not res!1287829)) b!3164902))

(assert (= (and b!3164902 c!532242) b!3164900))

(assert (= (and b!3164902 (not c!532242)) b!3164896))

(assert (= (and b!3164900 res!1287832) b!3164894))

(assert (= (and b!3164896 c!532243) b!3164901))

(assert (= (and b!3164896 (not c!532243)) b!3164895))

(assert (= (and b!3164901 res!1287830) b!3164899))

(assert (= (and b!3164895 (not res!1287828)) b!3164898))

(assert (= (and b!3164898 res!1287831) b!3164897))

(assert (= (or b!3164901 b!3164898) bm!229398))

(assert (= (or b!3164899 b!3164897) bm!229400))

(assert (= (or b!3164894 bm!229400) bm!229399))

(declare-fun m!3427407 () Bool)

(assert (=> bm!229398 m!3427407))

(declare-fun m!3427409 () Bool)

(assert (=> bm!229399 m!3427409))

(declare-fun m!3427411 () Bool)

(assert (=> b!3164900 m!3427411))

(assert (=> start!296598 d!868742))

(declare-fun d!868744 () Bool)

(declare-fun res!1287835 () Bool)

(declare-fun e!1971614 () Bool)

(assert (=> d!868744 (=> (not res!1287835) (not e!1971614))))

(assert (=> d!868744 (= res!1287835 ((_ is HashMap!4064) (cache!4207 cache!347)))))

(assert (=> d!868744 (= (inv!48113 cache!347) e!1971614)))

(declare-fun b!3164905 () Bool)

(declare-fun validCacheMap!56 (MutableMap!4064) Bool)

(assert (=> b!3164905 (= e!1971614 (validCacheMap!56 (cache!4207 cache!347)))))

(assert (= (and d!868744 res!1287835) b!3164905))

(declare-fun m!3427413 () Bool)

(assert (=> b!3164905 m!3427413))

(assert (=> start!296598 d!868744))

(declare-fun d!868746 () Bool)

(assert (=> d!868746 (= (array_inv!4732 (_keys!4458 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) (bvsge (size!26692 (_keys!4458 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3164874 d!868746))

(declare-fun d!868748 () Bool)

(assert (=> d!868748 (= (array_inv!4733 (_values!4439 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) (bvsge (size!26693 (_values!4439 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3164874 d!868748))

(declare-fun d!868750 () Bool)

(declare-fun e!1971619 () Bool)

(assert (=> d!868750 e!1971619))

(declare-fun res!1287838 () Bool)

(assert (=> d!868750 (=> res!1287838 e!1971619)))

(declare-fun lt!1063980 () Option!6896)

(declare-fun isEmpty!19755 (Option!6896) Bool)

(assert (=> d!868750 (= res!1287838 (isEmpty!19755 lt!1063980))))

(declare-fun e!1971620 () Option!6896)

(assert (=> d!868750 (= lt!1063980 e!1971620)))

(declare-fun c!532247 () Bool)

(declare-fun contains!6162 (MutableMap!4064 tuple2!34522) Bool)

(assert (=> d!868750 (= c!532247 (contains!6162 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409)))))

(assert (=> d!868750 (validRegex!4460 r!13156)))

(assert (=> d!868750 (= (get!11238 cache!347 r!13156 a!2409) lt!1063980)))

(declare-fun b!3164912 () Bool)

(declare-fun apply!7943 (MutableMap!4064 tuple2!34522) Regex!9737)

(assert (=> b!3164912 (= e!1971620 (Some!6895 (apply!7943 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409))))))

(declare-datatypes ((Unit!49802 0))(
  ( (Unit!49803) )
))
(declare-fun lt!1063981 () Unit!49802)

(declare-fun lemmaIfInCacheThenValid!53 (Cache!398 Regex!9737 C!19660) Unit!49802)

(assert (=> b!3164912 (= lt!1063981 (lemmaIfInCacheThenValid!53 cache!347 r!13156 a!2409))))

(declare-fun b!3164913 () Bool)

(assert (=> b!3164913 (= e!1971620 None!6895)))

(declare-fun b!3164914 () Bool)

(declare-fun get!11239 (Option!6896) Regex!9737)

(assert (=> b!3164914 (= e!1971619 (= (get!11239 lt!1063980) (derivativeStep!2889 r!13156 a!2409)))))

(assert (= (and d!868750 c!532247) b!3164912))

(assert (= (and d!868750 (not c!532247)) b!3164913))

(assert (= (and d!868750 (not res!1287838)) b!3164914))

(declare-fun m!3427415 () Bool)

(assert (=> d!868750 m!3427415))

(declare-fun m!3427417 () Bool)

(assert (=> d!868750 m!3427417))

(assert (=> d!868750 m!3427391))

(declare-fun m!3427419 () Bool)

(assert (=> b!3164912 m!3427419))

(declare-fun m!3427421 () Bool)

(assert (=> b!3164912 m!3427421))

(declare-fun m!3427423 () Bool)

(assert (=> b!3164914 m!3427423))

(assert (=> b!3164914 m!3427405))

(assert (=> b!3164865 d!868750))

(declare-fun d!868752 () Bool)

(assert (=> d!868752 (= (valid!3241 cache!347) (validCacheMap!56 (cache!4207 cache!347)))))

(declare-fun bs!539505 () Bool)

(assert (= bs!539505 d!868752))

(assert (=> bs!539505 m!3427413))

(assert (=> b!3164862 d!868752))

(declare-fun b!3164935 () Bool)

(declare-fun e!1971632 () Regex!9737)

(declare-fun call!229416 () Regex!9737)

(assert (=> b!3164935 (= e!1971632 (Concat!15058 call!229416 r!13156))))

(declare-fun c!532260 () Bool)

(declare-fun bm!229409 () Bool)

(declare-fun c!532261 () Bool)

(declare-fun call!229417 () Regex!9737)

(assert (=> bm!229409 (= call!229417 (derivativeStep!2889 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))) a!2409))))

(declare-fun call!229415 () Regex!9737)

(declare-fun b!3164936 () Bool)

(declare-fun e!1971635 () Regex!9737)

(declare-fun call!229414 () Regex!9737)

(assert (=> b!3164936 (= e!1971635 (Union!9737 (Concat!15058 call!229414 (regTwo!19986 r!13156)) call!229415))))

(declare-fun bm!229410 () Bool)

(assert (=> bm!229410 (= call!229415 (derivativeStep!2889 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)) a!2409))))

(declare-fun d!868754 () Bool)

(declare-fun lt!1063984 () Regex!9737)

(assert (=> d!868754 (validRegex!4460 lt!1063984)))

(declare-fun e!1971634 () Regex!9737)

(assert (=> d!868754 (= lt!1063984 e!1971634)))

(declare-fun c!532259 () Bool)

(assert (=> d!868754 (= c!532259 (or ((_ is EmptyExpr!9737) r!13156) ((_ is EmptyLang!9737) r!13156)))))

(assert (=> d!868754 (validRegex!4460 r!13156)))

(assert (=> d!868754 (= (derivativeStep!2889 r!13156 a!2409) lt!1063984)))

(declare-fun b!3164937 () Bool)

(assert (=> b!3164937 (= c!532260 ((_ is Union!9737) r!13156))))

(declare-fun e!1971631 () Regex!9737)

(declare-fun e!1971633 () Regex!9737)

(assert (=> b!3164937 (= e!1971631 e!1971633)))

(declare-fun b!3164938 () Bool)

(assert (=> b!3164938 (= e!1971634 e!1971631)))

(declare-fun c!532262 () Bool)

(assert (=> b!3164938 (= c!532262 ((_ is ElementMatch!9737) r!13156))))

(declare-fun bm!229411 () Bool)

(assert (=> bm!229411 (= call!229416 call!229417)))

(declare-fun b!3164939 () Bool)

(assert (=> b!3164939 (= e!1971633 e!1971632)))

(assert (=> b!3164939 (= c!532261 ((_ is Star!9737) r!13156))))

(declare-fun b!3164940 () Bool)

(assert (=> b!3164940 (= e!1971634 EmptyLang!9737)))

(declare-fun bm!229412 () Bool)

(assert (=> bm!229412 (= call!229414 call!229416)))

(declare-fun b!3164941 () Bool)

(assert (=> b!3164941 (= e!1971635 (Union!9737 (Concat!15058 call!229414 (regTwo!19986 r!13156)) EmptyLang!9737))))

(declare-fun b!3164942 () Bool)

(assert (=> b!3164942 (= e!1971631 (ite (= a!2409 (c!532237 r!13156)) EmptyExpr!9737 EmptyLang!9737))))

(declare-fun b!3164943 () Bool)

(assert (=> b!3164943 (= e!1971633 (Union!9737 call!229417 call!229415))))

(declare-fun b!3164944 () Bool)

(declare-fun c!532258 () Bool)

(assert (=> b!3164944 (= c!532258 (nullable!3342 (regOne!19986 r!13156)))))

(assert (=> b!3164944 (= e!1971632 e!1971635)))

(assert (= (and d!868754 c!532259) b!3164940))

(assert (= (and d!868754 (not c!532259)) b!3164938))

(assert (= (and b!3164938 c!532262) b!3164942))

(assert (= (and b!3164938 (not c!532262)) b!3164937))

(assert (= (and b!3164937 c!532260) b!3164943))

(assert (= (and b!3164937 (not c!532260)) b!3164939))

(assert (= (and b!3164939 c!532261) b!3164935))

(assert (= (and b!3164939 (not c!532261)) b!3164944))

(assert (= (and b!3164944 c!532258) b!3164936))

(assert (= (and b!3164944 (not c!532258)) b!3164941))

(assert (= (or b!3164936 b!3164941) bm!229412))

(assert (= (or b!3164935 bm!229412) bm!229411))

(assert (= (or b!3164943 b!3164936) bm!229410))

(assert (= (or b!3164943 bm!229411) bm!229409))

(declare-fun m!3427425 () Bool)

(assert (=> bm!229409 m!3427425))

(declare-fun m!3427427 () Bool)

(assert (=> bm!229410 m!3427427))

(declare-fun m!3427429 () Bool)

(assert (=> d!868754 m!3427429))

(assert (=> d!868754 m!3427391))

(declare-fun m!3427431 () Bool)

(assert (=> b!3164944 m!3427431))

(assert (=> b!3164867 d!868754))

(declare-fun e!1971638 () Bool)

(declare-fun tp!996915 () Bool)

(declare-fun tp!996914 () Bool)

(declare-fun tp!996916 () Bool)

(declare-fun b!3164949 () Bool)

(assert (=> b!3164949 (= e!1971638 (and tp!996914 tp_is_empty!17037 tp!996915 tp!996916))))

(assert (=> b!3164872 (= tp!996904 e!1971638)))

(assert (= (and b!3164872 ((_ is Cons!35444) mapDefault!18854)) b!3164949))

(declare-fun mapIsEmpty!18857 () Bool)

(declare-fun mapRes!18857 () Bool)

(assert (=> mapIsEmpty!18857 mapRes!18857))

(declare-fun condMapEmpty!18857 () Bool)

(declare-fun mapDefault!18857 () List!35568)

(assert (=> mapNonEmpty!18854 (= condMapEmpty!18857 (= mapRest!18854 ((as const (Array (_ BitVec 32) List!35568)) mapDefault!18857)))))

(declare-fun e!1971643 () Bool)

(assert (=> mapNonEmpty!18854 (= tp!996896 (and e!1971643 mapRes!18857))))

(declare-fun tp!996931 () Bool)

(declare-fun tp!996935 () Bool)

(declare-fun tp!996936 () Bool)

(declare-fun b!3164957 () Bool)

(assert (=> b!3164957 (= e!1971643 (and tp!996931 tp_is_empty!17037 tp!996936 tp!996935))))

(declare-fun tp!996932 () Bool)

(declare-fun b!3164956 () Bool)

(declare-fun e!1971644 () Bool)

(declare-fun tp!996934 () Bool)

(declare-fun tp!996937 () Bool)

(assert (=> b!3164956 (= e!1971644 (and tp!996932 tp_is_empty!17037 tp!996934 tp!996937))))

(declare-fun mapNonEmpty!18857 () Bool)

(declare-fun tp!996933 () Bool)

(assert (=> mapNonEmpty!18857 (= mapRes!18857 (and tp!996933 e!1971644))))

(declare-fun mapKey!18857 () (_ BitVec 32))

(declare-fun mapRest!18857 () (Array (_ BitVec 32) List!35568))

(declare-fun mapValue!18857 () List!35568)

(assert (=> mapNonEmpty!18857 (= mapRest!18854 (store mapRest!18857 mapKey!18857 mapValue!18857))))

(assert (= (and mapNonEmpty!18854 condMapEmpty!18857) mapIsEmpty!18857))

(assert (= (and mapNonEmpty!18854 (not condMapEmpty!18857)) mapNonEmpty!18857))

(assert (= (and mapNonEmpty!18857 ((_ is Cons!35444) mapValue!18857)) b!3164956))

(assert (= (and mapNonEmpty!18854 ((_ is Cons!35444) mapDefault!18857)) b!3164957))

(declare-fun m!3427433 () Bool)

(assert (=> mapNonEmpty!18857 m!3427433))

(declare-fun e!1971645 () Bool)

(declare-fun tp!996938 () Bool)

(declare-fun tp!996939 () Bool)

(declare-fun b!3164958 () Bool)

(declare-fun tp!996940 () Bool)

(assert (=> b!3164958 (= e!1971645 (and tp!996938 tp_is_empty!17037 tp!996939 tp!996940))))

(assert (=> mapNonEmpty!18854 (= tp!996907 e!1971645)))

(assert (= (and mapNonEmpty!18854 ((_ is Cons!35444) mapValue!18854)) b!3164958))

(declare-fun b!3164970 () Bool)

(declare-fun e!1971648 () Bool)

(declare-fun tp!996954 () Bool)

(declare-fun tp!996952 () Bool)

(assert (=> b!3164970 (= e!1971648 (and tp!996954 tp!996952))))

(declare-fun b!3164971 () Bool)

(declare-fun tp!996951 () Bool)

(assert (=> b!3164971 (= e!1971648 tp!996951)))

(declare-fun b!3164972 () Bool)

(declare-fun tp!996953 () Bool)

(declare-fun tp!996955 () Bool)

(assert (=> b!3164972 (= e!1971648 (and tp!996953 tp!996955))))

(declare-fun b!3164969 () Bool)

(assert (=> b!3164969 (= e!1971648 tp_is_empty!17037)))

(assert (=> b!3164868 (= tp!996900 e!1971648)))

(assert (= (and b!3164868 ((_ is ElementMatch!9737) (reg!10066 r!13156))) b!3164969))

(assert (= (and b!3164868 ((_ is Concat!15058) (reg!10066 r!13156))) b!3164970))

(assert (= (and b!3164868 ((_ is Star!9737) (reg!10066 r!13156))) b!3164971))

(assert (= (and b!3164868 ((_ is Union!9737) (reg!10066 r!13156))) b!3164972))

(declare-fun tp!996957 () Bool)

(declare-fun b!3164973 () Bool)

(declare-fun tp!996958 () Bool)

(declare-fun e!1971649 () Bool)

(declare-fun tp!996956 () Bool)

(assert (=> b!3164973 (= e!1971649 (and tp!996956 tp_is_empty!17037 tp!996957 tp!996958))))

(assert (=> b!3164874 (= tp!996906 e!1971649)))

(assert (= (and b!3164874 ((_ is Cons!35444) (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))) b!3164973))

(declare-fun tp!996960 () Bool)

(declare-fun tp!996961 () Bool)

(declare-fun tp!996959 () Bool)

(declare-fun e!1971650 () Bool)

(declare-fun b!3164974 () Bool)

(assert (=> b!3164974 (= e!1971650 (and tp!996959 tp_is_empty!17037 tp!996960 tp!996961))))

(assert (=> b!3164874 (= tp!996897 e!1971650)))

(assert (= (and b!3164874 ((_ is Cons!35444) (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))) b!3164974))

(declare-fun b!3164976 () Bool)

(declare-fun e!1971651 () Bool)

(declare-fun tp!996965 () Bool)

(declare-fun tp!996963 () Bool)

(assert (=> b!3164976 (= e!1971651 (and tp!996965 tp!996963))))

(declare-fun b!3164977 () Bool)

(declare-fun tp!996962 () Bool)

(assert (=> b!3164977 (= e!1971651 tp!996962)))

(declare-fun b!3164978 () Bool)

(declare-fun tp!996964 () Bool)

(declare-fun tp!996966 () Bool)

(assert (=> b!3164978 (= e!1971651 (and tp!996964 tp!996966))))

(declare-fun b!3164975 () Bool)

(assert (=> b!3164975 (= e!1971651 tp_is_empty!17037)))

(assert (=> b!3164875 (= tp!996898 e!1971651)))

(assert (= (and b!3164875 ((_ is ElementMatch!9737) (regOne!19987 r!13156))) b!3164975))

(assert (= (and b!3164875 ((_ is Concat!15058) (regOne!19987 r!13156))) b!3164976))

(assert (= (and b!3164875 ((_ is Star!9737) (regOne!19987 r!13156))) b!3164977))

(assert (= (and b!3164875 ((_ is Union!9737) (regOne!19987 r!13156))) b!3164978))

(declare-fun b!3164980 () Bool)

(declare-fun e!1971652 () Bool)

(declare-fun tp!996970 () Bool)

(declare-fun tp!996968 () Bool)

(assert (=> b!3164980 (= e!1971652 (and tp!996970 tp!996968))))

(declare-fun b!3164981 () Bool)

(declare-fun tp!996967 () Bool)

(assert (=> b!3164981 (= e!1971652 tp!996967)))

(declare-fun b!3164982 () Bool)

(declare-fun tp!996969 () Bool)

(declare-fun tp!996971 () Bool)

(assert (=> b!3164982 (= e!1971652 (and tp!996969 tp!996971))))

(declare-fun b!3164979 () Bool)

(assert (=> b!3164979 (= e!1971652 tp_is_empty!17037)))

(assert (=> b!3164875 (= tp!996901 e!1971652)))

(assert (= (and b!3164875 ((_ is ElementMatch!9737) (regTwo!19987 r!13156))) b!3164979))

(assert (= (and b!3164875 ((_ is Concat!15058) (regTwo!19987 r!13156))) b!3164980))

(assert (= (and b!3164875 ((_ is Star!9737) (regTwo!19987 r!13156))) b!3164981))

(assert (= (and b!3164875 ((_ is Union!9737) (regTwo!19987 r!13156))) b!3164982))

(declare-fun b!3164984 () Bool)

(declare-fun e!1971653 () Bool)

(declare-fun tp!996975 () Bool)

(declare-fun tp!996973 () Bool)

(assert (=> b!3164984 (= e!1971653 (and tp!996975 tp!996973))))

(declare-fun b!3164985 () Bool)

(declare-fun tp!996972 () Bool)

(assert (=> b!3164985 (= e!1971653 tp!996972)))

(declare-fun b!3164986 () Bool)

(declare-fun tp!996974 () Bool)

(declare-fun tp!996976 () Bool)

(assert (=> b!3164986 (= e!1971653 (and tp!996974 tp!996976))))

(declare-fun b!3164983 () Bool)

(assert (=> b!3164983 (= e!1971653 tp_is_empty!17037)))

(assert (=> b!3164866 (= tp!996899 e!1971653)))

(assert (= (and b!3164866 ((_ is ElementMatch!9737) (regOne!19986 r!13156))) b!3164983))

(assert (= (and b!3164866 ((_ is Concat!15058) (regOne!19986 r!13156))) b!3164984))

(assert (= (and b!3164866 ((_ is Star!9737) (regOne!19986 r!13156))) b!3164985))

(assert (= (and b!3164866 ((_ is Union!9737) (regOne!19986 r!13156))) b!3164986))

(declare-fun b!3164988 () Bool)

(declare-fun e!1971654 () Bool)

(declare-fun tp!996980 () Bool)

(declare-fun tp!996978 () Bool)

(assert (=> b!3164988 (= e!1971654 (and tp!996980 tp!996978))))

(declare-fun b!3164989 () Bool)

(declare-fun tp!996977 () Bool)

(assert (=> b!3164989 (= e!1971654 tp!996977)))

(declare-fun b!3164990 () Bool)

(declare-fun tp!996979 () Bool)

(declare-fun tp!996981 () Bool)

(assert (=> b!3164990 (= e!1971654 (and tp!996979 tp!996981))))

(declare-fun b!3164987 () Bool)

(assert (=> b!3164987 (= e!1971654 tp_is_empty!17037)))

(assert (=> b!3164866 (= tp!996905 e!1971654)))

(assert (= (and b!3164866 ((_ is ElementMatch!9737) (regTwo!19986 r!13156))) b!3164987))

(assert (= (and b!3164866 ((_ is Concat!15058) (regTwo!19986 r!13156))) b!3164988))

(assert (= (and b!3164866 ((_ is Star!9737) (regTwo!19986 r!13156))) b!3164989))

(assert (= (and b!3164866 ((_ is Union!9737) (regTwo!19986 r!13156))) b!3164990))

(check-sat (not b!3164977) (not b!3164989) (not b!3164982) (not b!3164972) (not b!3164980) (not b!3164985) b_and!209369 (not d!868752) (not bm!229398) (not b!3164970) (not b!3164984) tp_is_empty!17037 (not b!3164949) b_and!209367 (not b!3164986) (not b_next!83819) (not d!868750) (not b!3164976) (not b!3164971) (not b!3164900) (not b!3164914) (not bm!229410) (not b!3164957) (not b!3164905) (not b!3164990) (not b!3164973) (not bm!229399) (not b!3164956) (not b!3164958) (not b!3164912) (not b!3164978) (not b!3164981) (not b!3164974) (not d!868754) (not b_next!83817) (not b!3164944) (not mapNonEmpty!18857) (not bm!229409) (not b!3164988))
(check-sat b_and!209369 b_and!209367 (not b_next!83817) (not b_next!83819))
(get-model)

(declare-fun call!229420 () Regex!9737)

(declare-fun b!3164991 () Bool)

(declare-fun e!1971656 () Regex!9737)

(assert (=> b!3164991 (= e!1971656 (Concat!15058 call!229420 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))))

(declare-fun c!532265 () Bool)

(declare-fun call!229421 () Regex!9737)

(declare-fun bm!229413 () Bool)

(declare-fun c!532266 () Bool)

(assert (=> bm!229413 (= call!229421 (derivativeStep!2889 (ite c!532265 (regOne!19987 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))) (ite c!532266 (reg!10066 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))) (regOne!19986 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))) a!2409))))

(declare-fun e!1971659 () Regex!9737)

(declare-fun call!229418 () Regex!9737)

(declare-fun b!3164992 () Bool)

(declare-fun call!229419 () Regex!9737)

(assert (=> b!3164992 (= e!1971659 (Union!9737 (Concat!15058 call!229418 (regTwo!19986 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) call!229419))))

(declare-fun bm!229414 () Bool)

(assert (=> bm!229414 (= call!229419 (derivativeStep!2889 (ite c!532265 (regTwo!19987 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))) (regTwo!19986 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) a!2409))))

(declare-fun d!868756 () Bool)

(declare-fun lt!1063985 () Regex!9737)

(assert (=> d!868756 (validRegex!4460 lt!1063985)))

(declare-fun e!1971658 () Regex!9737)

(assert (=> d!868756 (= lt!1063985 e!1971658)))

(declare-fun c!532264 () Bool)

(assert (=> d!868756 (= c!532264 (or ((_ is EmptyExpr!9737) (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))) ((_ is EmptyLang!9737) (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))

(assert (=> d!868756 (validRegex!4460 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))

(assert (=> d!868756 (= (derivativeStep!2889 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)) a!2409) lt!1063985)))

(declare-fun b!3164993 () Bool)

(assert (=> b!3164993 (= c!532265 ((_ is Union!9737) (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))))

(declare-fun e!1971655 () Regex!9737)

(declare-fun e!1971657 () Regex!9737)

(assert (=> b!3164993 (= e!1971655 e!1971657)))

(declare-fun b!3164994 () Bool)

(assert (=> b!3164994 (= e!1971658 e!1971655)))

(declare-fun c!532267 () Bool)

(assert (=> b!3164994 (= c!532267 ((_ is ElementMatch!9737) (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))))

(declare-fun bm!229415 () Bool)

(assert (=> bm!229415 (= call!229420 call!229421)))

(declare-fun b!3164995 () Bool)

(assert (=> b!3164995 (= e!1971657 e!1971656)))

(assert (=> b!3164995 (= c!532266 ((_ is Star!9737) (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))))

(declare-fun b!3164996 () Bool)

(assert (=> b!3164996 (= e!1971658 EmptyLang!9737)))

(declare-fun bm!229416 () Bool)

(assert (=> bm!229416 (= call!229418 call!229420)))

(declare-fun b!3164997 () Bool)

(assert (=> b!3164997 (= e!1971659 (Union!9737 (Concat!15058 call!229418 (regTwo!19986 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) EmptyLang!9737))))

(declare-fun b!3164998 () Bool)

(assert (=> b!3164998 (= e!1971655 (ite (= a!2409 (c!532237 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) EmptyExpr!9737 EmptyLang!9737))))

(declare-fun b!3164999 () Bool)

(assert (=> b!3164999 (= e!1971657 (Union!9737 call!229421 call!229419))))

(declare-fun b!3165000 () Bool)

(declare-fun c!532263 () Bool)

(assert (=> b!3165000 (= c!532263 (nullable!3342 (regOne!19986 (ite c!532260 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))

(assert (=> b!3165000 (= e!1971656 e!1971659)))

(assert (= (and d!868756 c!532264) b!3164996))

(assert (= (and d!868756 (not c!532264)) b!3164994))

(assert (= (and b!3164994 c!532267) b!3164998))

(assert (= (and b!3164994 (not c!532267)) b!3164993))

(assert (= (and b!3164993 c!532265) b!3164999))

(assert (= (and b!3164993 (not c!532265)) b!3164995))

(assert (= (and b!3164995 c!532266) b!3164991))

(assert (= (and b!3164995 (not c!532266)) b!3165000))

(assert (= (and b!3165000 c!532263) b!3164992))

(assert (= (and b!3165000 (not c!532263)) b!3164997))

(assert (= (or b!3164992 b!3164997) bm!229416))

(assert (= (or b!3164991 bm!229416) bm!229415))

(assert (= (or b!3164999 b!3164992) bm!229414))

(assert (= (or b!3164999 bm!229415) bm!229413))

(declare-fun m!3427435 () Bool)

(assert (=> bm!229413 m!3427435))

(declare-fun m!3427437 () Bool)

(assert (=> bm!229414 m!3427437))

(declare-fun m!3427439 () Bool)

(assert (=> d!868756 m!3427439))

(declare-fun m!3427441 () Bool)

(assert (=> d!868756 m!3427441))

(declare-fun m!3427443 () Bool)

(assert (=> b!3165000 m!3427443))

(assert (=> bm!229410 d!868756))

(declare-fun b!3165001 () Bool)

(declare-fun e!1971661 () Bool)

(declare-fun call!229422 () Bool)

(assert (=> b!3165001 (= e!1971661 call!229422)))

(declare-fun b!3165002 () Bool)

(declare-fun res!1287839 () Bool)

(declare-fun e!1971662 () Bool)

(assert (=> b!3165002 (=> res!1287839 e!1971662)))

(assert (=> b!3165002 (= res!1287839 (not ((_ is Concat!15058) (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))))))

(declare-fun e!1971666 () Bool)

(assert (=> b!3165002 (= e!1971666 e!1971662)))

(declare-fun b!3165003 () Bool)

(declare-fun e!1971660 () Bool)

(assert (=> b!3165003 (= e!1971660 e!1971666)))

(declare-fun c!532269 () Bool)

(assert (=> b!3165003 (= c!532269 ((_ is Union!9737) (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))

(declare-fun call!229424 () Bool)

(declare-fun bm!229417 () Bool)

(assert (=> bm!229417 (= call!229424 (validRegex!4460 (ite c!532269 (regOne!19987 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) (regOne!19986 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))))

(declare-fun b!3165004 () Bool)

(declare-fun e!1971663 () Bool)

(declare-fun call!229423 () Bool)

(assert (=> b!3165004 (= e!1971663 call!229423)))

(declare-fun bm!229418 () Bool)

(declare-fun c!532268 () Bool)

(assert (=> bm!229418 (= call!229422 (validRegex!4460 (ite c!532268 (reg!10066 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) (ite c!532269 (regTwo!19987 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) (regTwo!19986 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156))))))))))

(declare-fun d!868758 () Bool)

(declare-fun res!1287840 () Bool)

(declare-fun e!1971664 () Bool)

(assert (=> d!868758 (=> res!1287840 e!1971664)))

(assert (=> d!868758 (= res!1287840 ((_ is ElementMatch!9737) (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))

(assert (=> d!868758 (= (validRegex!4460 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))) e!1971664)))

(declare-fun b!3165005 () Bool)

(assert (=> b!3165005 (= e!1971662 e!1971663)))

(declare-fun res!1287842 () Bool)

(assert (=> b!3165005 (=> (not res!1287842) (not e!1971663))))

(assert (=> b!3165005 (= res!1287842 call!229424)))

(declare-fun b!3165006 () Bool)

(declare-fun e!1971665 () Bool)

(assert (=> b!3165006 (= e!1971665 call!229423)))

(declare-fun b!3165007 () Bool)

(assert (=> b!3165007 (= e!1971660 e!1971661)))

(declare-fun res!1287843 () Bool)

(assert (=> b!3165007 (= res!1287843 (not (nullable!3342 (reg!10066 (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))))

(assert (=> b!3165007 (=> (not res!1287843) (not e!1971661))))

(declare-fun bm!229419 () Bool)

(assert (=> bm!229419 (= call!229423 call!229422)))

(declare-fun b!3165008 () Bool)

(declare-fun res!1287841 () Bool)

(assert (=> b!3165008 (=> (not res!1287841) (not e!1971665))))

(assert (=> b!3165008 (= res!1287841 call!229424)))

(assert (=> b!3165008 (= e!1971666 e!1971665)))

(declare-fun b!3165009 () Bool)

(assert (=> b!3165009 (= e!1971664 e!1971660)))

(assert (=> b!3165009 (= c!532268 ((_ is Star!9737) (ite c!532242 (reg!10066 r!13156) (ite c!532243 (regTwo!19987 r!13156) (regTwo!19986 r!13156)))))))

(assert (= (and d!868758 (not res!1287840)) b!3165009))

(assert (= (and b!3165009 c!532268) b!3165007))

(assert (= (and b!3165009 (not c!532268)) b!3165003))

(assert (= (and b!3165007 res!1287843) b!3165001))

(assert (= (and b!3165003 c!532269) b!3165008))

(assert (= (and b!3165003 (not c!532269)) b!3165002))

(assert (= (and b!3165008 res!1287841) b!3165006))

(assert (= (and b!3165002 (not res!1287839)) b!3165005))

(assert (= (and b!3165005 res!1287842) b!3165004))

(assert (= (or b!3165008 b!3165005) bm!229417))

(assert (= (or b!3165006 b!3165004) bm!229419))

(assert (= (or b!3165001 bm!229419) bm!229418))

(declare-fun m!3427445 () Bool)

(assert (=> bm!229417 m!3427445))

(declare-fun m!3427447 () Bool)

(assert (=> bm!229418 m!3427447))

(declare-fun m!3427449 () Bool)

(assert (=> b!3165007 m!3427449))

(assert (=> bm!229399 d!868758))

(declare-fun d!868760 () Bool)

(declare-fun nullableFct!950 (Regex!9737) Bool)

(assert (=> d!868760 (= (nullable!3342 (regOne!19986 r!13156)) (nullableFct!950 (regOne!19986 r!13156)))))

(declare-fun bs!539506 () Bool)

(assert (= bs!539506 d!868760))

(declare-fun m!3427451 () Bool)

(assert (=> bs!539506 m!3427451))

(assert (=> b!3164944 d!868760))

(declare-fun d!868762 () Bool)

(declare-fun res!1287850 () Bool)

(declare-fun e!1971671 () Bool)

(assert (=> d!868762 (=> (not res!1287850) (not e!1971671))))

(declare-fun valid!3242 (MutableMap!4064) Bool)

(assert (=> d!868762 (= res!1287850 (valid!3242 (cache!4207 cache!347)))))

(assert (=> d!868762 (= (validCacheMap!56 (cache!4207 cache!347)) e!1971671)))

(declare-fun b!3165016 () Bool)

(declare-fun res!1287851 () Bool)

(assert (=> b!3165016 (=> (not res!1287851) (not e!1971671))))

(declare-fun invariantList!479 (List!35568) Bool)

(declare-datatypes ((ListMap!1299 0))(
  ( (ListMap!1300 (toList!2052 List!35568)) )
))
(declare-fun map!7896 (MutableMap!4064) ListMap!1299)

(assert (=> b!3165016 (= res!1287851 (invariantList!479 (toList!2052 (map!7896 (cache!4207 cache!347)))))))

(declare-fun b!3165017 () Bool)

(declare-fun lambda!115817 () Int)

(declare-fun forall!7145 (List!35568 Int) Bool)

(assert (=> b!3165017 (= e!1971671 (forall!7145 (toList!2052 (map!7896 (cache!4207 cache!347))) lambda!115817))))

(assert (= (and d!868762 res!1287850) b!3165016))

(assert (= (and b!3165016 res!1287851) b!3165017))

(declare-fun m!3427454 () Bool)

(assert (=> d!868762 m!3427454))

(declare-fun m!3427456 () Bool)

(assert (=> b!3165016 m!3427456))

(declare-fun m!3427458 () Bool)

(assert (=> b!3165016 m!3427458))

(assert (=> b!3165017 m!3427456))

(declare-fun m!3427460 () Bool)

(assert (=> b!3165017 m!3427460))

(assert (=> d!868752 d!868762))

(declare-fun d!868764 () Bool)

(assert (=> d!868764 (= (nullable!3342 (reg!10066 r!13156)) (nullableFct!950 (reg!10066 r!13156)))))

(declare-fun bs!539507 () Bool)

(assert (= bs!539507 d!868764))

(declare-fun m!3427462 () Bool)

(assert (=> bs!539507 m!3427462))

(assert (=> b!3164900 d!868764))

(declare-fun b!3165030 () Bool)

(assert (=> b!3165030 false))

(declare-fun lt!1064047 () Unit!49802)

(declare-fun lt!1064066 () Unit!49802)

(assert (=> b!3165030 (= lt!1064047 lt!1064066)))

(declare-datatypes ((tuple2!34526 0))(
  ( (tuple2!34527 (_1!20395 (_ BitVec 64)) (_2!20395 List!35568)) )
))
(declare-datatypes ((List!35569 0))(
  ( (Nil!35445) (Cons!35445 (h!40865 tuple2!34526) (t!234642 List!35569)) )
))
(declare-fun lt!1064056 () List!35569)

(declare-fun lt!1064061 () (_ BitVec 64))

(declare-fun lt!1064050 () List!35568)

(declare-fun contains!6163 (List!35569 tuple2!34526) Bool)

(assert (=> b!3165030 (contains!6163 lt!1064056 (tuple2!34527 lt!1064061 lt!1064050))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!99 (List!35569 (_ BitVec 64) List!35568) Unit!49802)

(assert (=> b!3165030 (= lt!1064066 (lemmaGetValueByKeyImpliesContainsTuple!99 lt!1064056 lt!1064061 lt!1064050))))

(declare-fun apply!7944 (MutLongMap!4158 (_ BitVec 64)) List!35568)

(assert (=> b!3165030 (= lt!1064050 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064061))))

(declare-datatypes ((ListLongMap!717 0))(
  ( (ListLongMap!718 (toList!2053 List!35569)) )
))
(declare-fun map!7897 (MutLongMap!4158) ListLongMap!717)

(assert (=> b!3165030 (= lt!1064056 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))

(declare-fun lt!1064046 () Unit!49802)

(declare-fun lt!1064071 () Unit!49802)

(assert (=> b!3165030 (= lt!1064046 lt!1064071)))

(declare-fun lt!1064068 () List!35569)

(declare-datatypes ((Option!6897 0))(
  ( (None!6896) (Some!6896 (v!35126 List!35568)) )
))
(declare-fun isDefined!5420 (Option!6897) Bool)

(declare-fun getValueByKey!173 (List!35569 (_ BitVec 64)) Option!6897)

(assert (=> b!3165030 (isDefined!5420 (getValueByKey!173 lt!1064068 lt!1064061))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!127 (List!35569 (_ BitVec 64)) Unit!49802)

(assert (=> b!3165030 (= lt!1064071 (lemmaContainsKeyImpliesGetValueByKeyDefined!127 lt!1064068 lt!1064061))))

(assert (=> b!3165030 (= lt!1064068 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))

(declare-fun e!1971678 () Unit!49802)

(declare-fun Unit!49804 () Unit!49802)

(assert (=> b!3165030 (= e!1971678 Unit!49804)))

(declare-fun b!3165031 () Bool)

(declare-fun e!1971680 () Regex!9737)

(declare-fun dynLambda!14358 (Int tuple2!34522) Regex!9737)

(assert (=> b!3165031 (= e!1971680 (dynLambda!14358 (defaultValue!4235 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun d!868766 () Bool)

(declare-fun e!1971679 () Bool)

(assert (=> d!868766 e!1971679))

(declare-fun c!532278 () Bool)

(assert (=> d!868766 (= c!532278 (contains!6162 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409)))))

(declare-fun lt!1064073 () Regex!9737)

(assert (=> d!868766 (= lt!1064073 e!1971680)))

(declare-fun c!532276 () Bool)

(assert (=> d!868766 (= c!532276 (not (contains!6162 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409))))))

(assert (=> d!868766 (valid!3242 (cache!4207 cache!347))))

(assert (=> d!868766 (= (apply!7943 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409)) lt!1064073)))

(declare-fun b!3165032 () Bool)

(assert (=> b!3165032 (= e!1971679 (= lt!1064073 (dynLambda!14358 (defaultValue!4235 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))))))

(declare-fun b!3165033 () Bool)

(declare-datatypes ((Option!6898 0))(
  ( (None!6897) (Some!6897 (v!35127 tuple2!34524)) )
))
(declare-fun get!11240 (Option!6898) tuple2!34524)

(declare-fun getPair!93 (List!35568 tuple2!34522) Option!6898)

(assert (=> b!3165033 (= e!1971680 (_2!20394 (get!11240 (getPair!93 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064061) (tuple2!34523 r!13156 a!2409)))))))

(declare-fun hash!802 (Hashable!4074 tuple2!34522) (_ BitVec 64))

(assert (=> b!3165033 (= lt!1064061 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun c!532277 () Bool)

(assert (=> b!3165033 (= c!532277 (not (contains!6163 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))) (tuple2!34527 lt!1064061 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064061)))))))

(declare-fun lt!1064052 () Unit!49802)

(assert (=> b!3165033 (= lt!1064052 e!1971678)))

(declare-fun lambda!115824 () Int)

(declare-fun lt!1064075 () Unit!49802)

(declare-fun forallContained!1071 (List!35569 Int tuple2!34526) Unit!49802)

(assert (=> b!3165033 (= lt!1064075 (forallContained!1071 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))) lambda!115824 (tuple2!34527 lt!1064061 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064061))))))

(declare-fun lt!1064057 () ListLongMap!717)

(assert (=> b!3165033 (= lt!1064057 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))

(declare-fun lt!1064074 () Unit!49802)

(declare-fun lemmaGetPairGetSameValueAsMap!31 (ListLongMap!717 tuple2!34522 Regex!9737 Hashable!4074) Unit!49802)

(assert (=> b!3165033 (= lt!1064074 (lemmaGetPairGetSameValueAsMap!31 lt!1064057 (tuple2!34523 r!13156 a!2409) (_2!20394 (get!11240 (getPair!93 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064061) (tuple2!34523 r!13156 a!2409)))) (hashF!6106 (cache!4207 cache!347))))))

(declare-fun lt!1064058 () Unit!49802)

(declare-fun lemmaInGenMapThenLongMapContainsHash!37 (ListLongMap!717 tuple2!34522 Hashable!4074) Unit!49802)

(assert (=> b!3165033 (= lt!1064058 (lemmaInGenMapThenLongMapContainsHash!37 lt!1064057 (tuple2!34523 r!13156 a!2409) (hashF!6106 (cache!4207 cache!347))))))

(declare-fun contains!6164 (ListLongMap!717 (_ BitVec 64)) Bool)

(assert (=> b!3165033 (contains!6164 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun lt!1064069 () Unit!49802)

(assert (=> b!3165033 (= lt!1064069 lt!1064058)))

(declare-fun lt!1064060 () (_ BitVec 64))

(assert (=> b!3165033 (= lt!1064060 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun lt!1064051 () List!35568)

(declare-fun apply!7945 (ListLongMap!717 (_ BitVec 64)) List!35568)

(assert (=> b!3165033 (= lt!1064051 (apply!7945 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))))))

(declare-fun lt!1064059 () Unit!49802)

(declare-fun lemmaGetValueImpliesTupleContained!32 (ListLongMap!717 (_ BitVec 64) List!35568) Unit!49802)

(assert (=> b!3165033 (= lt!1064059 (lemmaGetValueImpliesTupleContained!32 lt!1064057 lt!1064060 lt!1064051))))

(assert (=> b!3165033 (contains!6163 (toList!2053 lt!1064057) (tuple2!34527 lt!1064060 lt!1064051))))

(declare-fun lt!1064054 () Unit!49802)

(assert (=> b!3165033 (= lt!1064054 lt!1064059)))

(declare-fun lt!1064065 () Unit!49802)

(assert (=> b!3165033 (= lt!1064065 (forallContained!1071 (toList!2053 lt!1064057) lambda!115824 (tuple2!34527 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)) (apply!7945 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))))))))

(declare-fun lt!1064072 () Unit!49802)

(declare-fun lemmaInGenMapThenGetPairDefined!31 (ListLongMap!717 tuple2!34522 Hashable!4074) Unit!49802)

(assert (=> b!3165033 (= lt!1064072 (lemmaInGenMapThenGetPairDefined!31 lt!1064057 (tuple2!34523 r!13156 a!2409) (hashF!6106 (cache!4207 cache!347))))))

(declare-fun lt!1064070 () Unit!49802)

(assert (=> b!3165033 (= lt!1064070 (lemmaInGenMapThenLongMapContainsHash!37 lt!1064057 (tuple2!34523 r!13156 a!2409) (hashF!6106 (cache!4207 cache!347))))))

(declare-fun lt!1064053 () Unit!49802)

(assert (=> b!3165033 (= lt!1064053 lt!1064070)))

(declare-fun lt!1064067 () (_ BitVec 64))

(assert (=> b!3165033 (= lt!1064067 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun lt!1064048 () List!35568)

(assert (=> b!3165033 (= lt!1064048 (apply!7945 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))))))

(declare-fun lt!1064064 () Unit!49802)

(assert (=> b!3165033 (= lt!1064064 (lemmaGetValueImpliesTupleContained!32 lt!1064057 lt!1064067 lt!1064048))))

(assert (=> b!3165033 (contains!6163 (toList!2053 lt!1064057) (tuple2!34527 lt!1064067 lt!1064048))))

(declare-fun lt!1064049 () Unit!49802)

(assert (=> b!3165033 (= lt!1064049 lt!1064064)))

(declare-fun lt!1064055 () Unit!49802)

(assert (=> b!3165033 (= lt!1064055 (forallContained!1071 (toList!2053 lt!1064057) lambda!115824 (tuple2!34527 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)) (apply!7945 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))))))))

(declare-fun isDefined!5421 (Option!6898) Bool)

(assert (=> b!3165033 (isDefined!5421 (getPair!93 (apply!7945 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))) (tuple2!34523 r!13156 a!2409)))))

(declare-fun lt!1064063 () Unit!49802)

(assert (=> b!3165033 (= lt!1064063 lt!1064072)))

(declare-fun getValueByKey!174 (List!35568 tuple2!34522) Option!6896)

(declare-fun extractMap!231 (List!35569) ListMap!1299)

(assert (=> b!3165033 (= (_2!20394 (get!11240 (getPair!93 (apply!7945 lt!1064057 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409))) (tuple2!34523 r!13156 a!2409)))) (get!11239 (getValueByKey!174 (toList!2052 (extractMap!231 (toList!2053 lt!1064057))) (tuple2!34523 r!13156 a!2409))))))

(declare-fun lt!1064062 () Unit!49802)

(assert (=> b!3165033 (= lt!1064062 lt!1064074)))

(declare-fun b!3165034 () Bool)

(assert (=> b!3165034 (= e!1971679 (= lt!1064073 (get!11239 (getValueByKey!174 (toList!2052 (map!7896 (cache!4207 cache!347))) (tuple2!34523 r!13156 a!2409)))))))

(declare-fun b!3165035 () Bool)

(declare-fun Unit!49805 () Unit!49802)

(assert (=> b!3165035 (= e!1971678 Unit!49805)))

(assert (= (and d!868766 c!532276) b!3165031))

(assert (= (and d!868766 (not c!532276)) b!3165033))

(assert (= (and b!3165033 c!532277) b!3165030))

(assert (= (and b!3165033 (not c!532277)) b!3165035))

(assert (= (and d!868766 c!532278) b!3165034))

(assert (= (and d!868766 (not c!532278)) b!3165032))

(declare-fun b_lambda!86403 () Bool)

(assert (=> (not b_lambda!86403) (not b!3165031)))

(declare-fun t!234641 () Bool)

(declare-fun tb!155095 () Bool)

(assert (=> (and b!3164863 (= (defaultValue!4235 (cache!4207 cache!347)) (defaultValue!4235 (cache!4207 cache!347))) t!234641) tb!155095))

(assert (=> b!3165031 t!234641))

(declare-fun result!196844 () Bool)

(declare-fun b_and!209371 () Bool)

(assert (= b_and!209369 (and (=> t!234641 result!196844) b_and!209371)))

(declare-fun b_lambda!86405 () Bool)

(assert (=> (not b_lambda!86405) (not b!3165032)))

(assert (=> b!3165032 t!234641))

(declare-fun b_and!209373 () Bool)

(assert (= b_and!209371 (and (=> t!234641 result!196844) b_and!209373)))

(declare-fun m!3427464 () Bool)

(assert (=> b!3165030 m!3427464))

(declare-fun m!3427466 () Bool)

(assert (=> b!3165030 m!3427466))

(declare-fun m!3427468 () Bool)

(assert (=> b!3165030 m!3427468))

(declare-fun m!3427470 () Bool)

(assert (=> b!3165030 m!3427470))

(declare-fun m!3427472 () Bool)

(assert (=> b!3165030 m!3427472))

(assert (=> b!3165030 m!3427468))

(declare-fun m!3427474 () Bool)

(assert (=> b!3165030 m!3427474))

(declare-fun m!3427476 () Bool)

(assert (=> b!3165030 m!3427476))

(declare-fun m!3427478 () Bool)

(assert (=> b!3165033 m!3427478))

(declare-fun m!3427480 () Bool)

(assert (=> b!3165033 m!3427480))

(declare-fun m!3427482 () Bool)

(assert (=> b!3165033 m!3427482))

(declare-fun m!3427484 () Bool)

(assert (=> b!3165033 m!3427484))

(declare-fun m!3427486 () Bool)

(assert (=> b!3165033 m!3427486))

(assert (=> b!3165033 m!3427478))

(declare-fun m!3427488 () Bool)

(assert (=> b!3165033 m!3427488))

(assert (=> b!3165033 m!3427482))

(assert (=> b!3165033 m!3427486))

(declare-fun m!3427490 () Bool)

(assert (=> b!3165033 m!3427490))

(declare-fun m!3427492 () Bool)

(assert (=> b!3165033 m!3427492))

(declare-fun m!3427494 () Bool)

(assert (=> b!3165033 m!3427494))

(declare-fun m!3427496 () Bool)

(assert (=> b!3165033 m!3427496))

(assert (=> b!3165033 m!3427476))

(assert (=> b!3165033 m!3427466))

(assert (=> b!3165033 m!3427480))

(declare-fun m!3427498 () Bool)

(assert (=> b!3165033 m!3427498))

(declare-fun m!3427500 () Bool)

(assert (=> b!3165033 m!3427500))

(assert (=> b!3165033 m!3427486))

(declare-fun m!3427502 () Bool)

(assert (=> b!3165033 m!3427502))

(assert (=> b!3165033 m!3427480))

(declare-fun m!3427504 () Bool)

(assert (=> b!3165033 m!3427504))

(declare-fun m!3427506 () Bool)

(assert (=> b!3165033 m!3427506))

(declare-fun m!3427508 () Bool)

(assert (=> b!3165033 m!3427508))

(declare-fun m!3427510 () Bool)

(assert (=> b!3165033 m!3427510))

(declare-fun m!3427512 () Bool)

(assert (=> b!3165033 m!3427512))

(declare-fun m!3427514 () Bool)

(assert (=> b!3165033 m!3427514))

(declare-fun m!3427516 () Bool)

(assert (=> b!3165033 m!3427516))

(assert (=> b!3165033 m!3427510))

(declare-fun m!3427518 () Bool)

(assert (=> b!3165033 m!3427518))

(assert (=> b!3165033 m!3427466))

(assert (=> b!3165033 m!3427514))

(declare-fun m!3427520 () Bool)

(assert (=> b!3165032 m!3427520))

(assert (=> b!3165031 m!3427520))

(assert (=> d!868766 m!3427417))

(assert (=> d!868766 m!3427454))

(assert (=> b!3165034 m!3427456))

(declare-fun m!3427522 () Bool)

(assert (=> b!3165034 m!3427522))

(assert (=> b!3165034 m!3427522))

(declare-fun m!3427524 () Bool)

(assert (=> b!3165034 m!3427524))

(assert (=> b!3164912 d!868766))

(declare-fun bs!539508 () Bool)

(declare-fun b!3165046 () Bool)

(assert (= bs!539508 (and b!3165046 b!3165017)))

(declare-fun lambda!115827 () Int)

(assert (=> bs!539508 (= lambda!115827 lambda!115817)))

(declare-fun b!3165049 () Bool)

(declare-fun e!1971695 () Bool)

(assert (=> b!3165049 (= e!1971695 (= (derivativeStep!2889 r!13156 a!2409) (apply!7943 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409))))))

(declare-fun e!1971694 () Unit!49802)

(declare-fun lt!1064099 () Unit!49802)

(assert (=> b!3165046 (= e!1971694 lt!1064099)))

(declare-fun lt!1064098 () tuple2!34522)

(assert (=> b!3165046 (= lt!1064098 (tuple2!34523 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!45 (MutableMap!4064 tuple2!34522 Int) Unit!49802)

(assert (=> b!3165046 (= lt!1064099 (lemmaForallPairsThenForLookup!45 (cache!4207 cache!347) lt!1064098 lambda!115827))))

(declare-fun lt!1064095 () tuple2!34524)

(assert (=> b!3165046 (= lt!1064095 (tuple2!34525 lt!1064098 (apply!7943 (cache!4207 cache!347) lt!1064098)))))

(declare-fun lt!1064094 () Regex!9737)

(assert (=> b!3165046 (= lt!1064094 (apply!7943 (cache!4207 cache!347) lt!1064098))))

(declare-fun res!1287859 () Bool)

(assert (=> b!3165046 (= res!1287859 (validRegex!4460 (_1!20393 lt!1064098)))))

(declare-fun e!1971693 () Bool)

(assert (=> b!3165046 (=> (not res!1287859) (not e!1971693))))

(assert (=> b!3165046 e!1971693))

(declare-fun b!3165048 () Bool)

(declare-fun lt!1064096 () tuple2!34522)

(assert (=> b!3165048 (= lt!1064096 lt!1064098)))

(declare-fun lt!1064093 () Regex!9737)

(assert (=> b!3165048 (= lt!1064093 (apply!7943 (cache!4207 cache!347) lt!1064098))))

(declare-fun lt!1064097 () Regex!9737)

(assert (=> b!3165048 (= lt!1064097 (apply!7943 (cache!4207 cache!347) lt!1064098))))

(assert (=> b!3165048 (= e!1971693 (= (apply!7943 (cache!4207 cache!347) lt!1064098) (derivativeStep!2889 (_1!20393 lt!1064098) (_2!20393 lt!1064098))))))

(declare-fun b!3165047 () Bool)

(declare-fun Unit!49806 () Unit!49802)

(assert (=> b!3165047 (= e!1971694 Unit!49806)))

(declare-fun d!868768 () Bool)

(assert (=> d!868768 e!1971695))

(declare-fun res!1287858 () Bool)

(assert (=> d!868768 (=> res!1287858 e!1971695)))

(assert (=> d!868768 (= res!1287858 (not (contains!6162 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409))))))

(declare-fun lt!1064092 () Unit!49802)

(assert (=> d!868768 (= lt!1064092 e!1971694)))

(declare-fun c!532282 () Bool)

(assert (=> d!868768 (= c!532282 (contains!6162 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409)))))

(assert (=> d!868768 (validCacheMap!56 (cache!4207 cache!347))))

(assert (=> d!868768 (= (lemmaIfInCacheThenValid!53 cache!347 r!13156 a!2409) lt!1064092)))

(assert (= (and d!868768 c!532282) b!3165046))

(assert (= (and d!868768 (not c!532282)) b!3165047))

(assert (= (and b!3165046 res!1287859) b!3165048))

(assert (= (and d!868768 (not res!1287858)) b!3165049))

(assert (=> b!3165049 m!3427405))

(assert (=> b!3165049 m!3427419))

(declare-fun m!3427526 () Bool)

(assert (=> b!3165046 m!3427526))

(declare-fun m!3427528 () Bool)

(assert (=> b!3165046 m!3427528))

(declare-fun m!3427530 () Bool)

(assert (=> b!3165046 m!3427530))

(assert (=> b!3165048 m!3427528))

(declare-fun m!3427532 () Bool)

(assert (=> b!3165048 m!3427532))

(assert (=> d!868768 m!3427417))

(assert (=> d!868768 m!3427413))

(assert (=> b!3164912 d!868768))

(assert (=> b!3164905 d!868762))

(declare-fun b!3165050 () Bool)

(declare-fun e!1971697 () Bool)

(declare-fun call!229425 () Bool)

(assert (=> b!3165050 (= e!1971697 call!229425)))

(declare-fun b!3165051 () Bool)

(declare-fun res!1287860 () Bool)

(declare-fun e!1971698 () Bool)

(assert (=> b!3165051 (=> res!1287860 e!1971698)))

(assert (=> b!3165051 (= res!1287860 (not ((_ is Concat!15058) lt!1063984)))))

(declare-fun e!1971702 () Bool)

(assert (=> b!3165051 (= e!1971702 e!1971698)))

(declare-fun b!3165052 () Bool)

(declare-fun e!1971696 () Bool)

(assert (=> b!3165052 (= e!1971696 e!1971702)))

(declare-fun c!532284 () Bool)

(assert (=> b!3165052 (= c!532284 ((_ is Union!9737) lt!1063984))))

(declare-fun bm!229420 () Bool)

(declare-fun call!229427 () Bool)

(assert (=> bm!229420 (= call!229427 (validRegex!4460 (ite c!532284 (regOne!19987 lt!1063984) (regOne!19986 lt!1063984))))))

(declare-fun b!3165053 () Bool)

(declare-fun e!1971699 () Bool)

(declare-fun call!229426 () Bool)

(assert (=> b!3165053 (= e!1971699 call!229426)))

(declare-fun bm!229421 () Bool)

(declare-fun c!532283 () Bool)

(assert (=> bm!229421 (= call!229425 (validRegex!4460 (ite c!532283 (reg!10066 lt!1063984) (ite c!532284 (regTwo!19987 lt!1063984) (regTwo!19986 lt!1063984)))))))

(declare-fun d!868770 () Bool)

(declare-fun res!1287861 () Bool)

(declare-fun e!1971700 () Bool)

(assert (=> d!868770 (=> res!1287861 e!1971700)))

(assert (=> d!868770 (= res!1287861 ((_ is ElementMatch!9737) lt!1063984))))

(assert (=> d!868770 (= (validRegex!4460 lt!1063984) e!1971700)))

(declare-fun b!3165054 () Bool)

(assert (=> b!3165054 (= e!1971698 e!1971699)))

(declare-fun res!1287863 () Bool)

(assert (=> b!3165054 (=> (not res!1287863) (not e!1971699))))

(assert (=> b!3165054 (= res!1287863 call!229427)))

(declare-fun b!3165055 () Bool)

(declare-fun e!1971701 () Bool)

(assert (=> b!3165055 (= e!1971701 call!229426)))

(declare-fun b!3165056 () Bool)

(assert (=> b!3165056 (= e!1971696 e!1971697)))

(declare-fun res!1287864 () Bool)

(assert (=> b!3165056 (= res!1287864 (not (nullable!3342 (reg!10066 lt!1063984))))))

(assert (=> b!3165056 (=> (not res!1287864) (not e!1971697))))

(declare-fun bm!229422 () Bool)

(assert (=> bm!229422 (= call!229426 call!229425)))

(declare-fun b!3165057 () Bool)

(declare-fun res!1287862 () Bool)

(assert (=> b!3165057 (=> (not res!1287862) (not e!1971701))))

(assert (=> b!3165057 (= res!1287862 call!229427)))

(assert (=> b!3165057 (= e!1971702 e!1971701)))

(declare-fun b!3165058 () Bool)

(assert (=> b!3165058 (= e!1971700 e!1971696)))

(assert (=> b!3165058 (= c!532283 ((_ is Star!9737) lt!1063984))))

(assert (= (and d!868770 (not res!1287861)) b!3165058))

(assert (= (and b!3165058 c!532283) b!3165056))

(assert (= (and b!3165058 (not c!532283)) b!3165052))

(assert (= (and b!3165056 res!1287864) b!3165050))

(assert (= (and b!3165052 c!532284) b!3165057))

(assert (= (and b!3165052 (not c!532284)) b!3165051))

(assert (= (and b!3165057 res!1287862) b!3165055))

(assert (= (and b!3165051 (not res!1287860)) b!3165054))

(assert (= (and b!3165054 res!1287863) b!3165053))

(assert (= (or b!3165057 b!3165054) bm!229420))

(assert (= (or b!3165055 b!3165053) bm!229422))

(assert (= (or b!3165050 bm!229422) bm!229421))

(declare-fun m!3427534 () Bool)

(assert (=> bm!229420 m!3427534))

(declare-fun m!3427536 () Bool)

(assert (=> bm!229421 m!3427536))

(declare-fun m!3427538 () Bool)

(assert (=> b!3165056 m!3427538))

(assert (=> d!868754 d!868770))

(assert (=> d!868754 d!868742))

(declare-fun b!3165059 () Bool)

(declare-fun e!1971704 () Regex!9737)

(declare-fun call!229430 () Regex!9737)

(assert (=> b!3165059 (= e!1971704 (Concat!15058 call!229430 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))))))

(declare-fun c!532287 () Bool)

(declare-fun c!532288 () Bool)

(declare-fun bm!229423 () Bool)

(declare-fun call!229431 () Regex!9737)

(assert (=> bm!229423 (= call!229431 (derivativeStep!2889 (ite c!532287 (regOne!19987 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))) (ite c!532288 (reg!10066 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))) (regOne!19986 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))))) a!2409))))

(declare-fun b!3165060 () Bool)

(declare-fun call!229428 () Regex!9737)

(declare-fun e!1971707 () Regex!9737)

(declare-fun call!229429 () Regex!9737)

(assert (=> b!3165060 (= e!1971707 (Union!9737 (Concat!15058 call!229428 (regTwo!19986 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))) call!229429))))

(declare-fun bm!229424 () Bool)

(assert (=> bm!229424 (= call!229429 (derivativeStep!2889 (ite c!532287 (regTwo!19987 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))) (regTwo!19986 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))) a!2409))))

(declare-fun d!868772 () Bool)

(declare-fun lt!1064100 () Regex!9737)

(assert (=> d!868772 (validRegex!4460 lt!1064100)))

(declare-fun e!1971706 () Regex!9737)

(assert (=> d!868772 (= lt!1064100 e!1971706)))

(declare-fun c!532286 () Bool)

(assert (=> d!868772 (= c!532286 (or ((_ is EmptyExpr!9737) (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))) ((_ is EmptyLang!9737) (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))))))

(assert (=> d!868772 (validRegex!4460 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))))

(assert (=> d!868772 (= (derivativeStep!2889 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))) a!2409) lt!1064100)))

(declare-fun b!3165061 () Bool)

(assert (=> b!3165061 (= c!532287 ((_ is Union!9737) (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))))))

(declare-fun e!1971703 () Regex!9737)

(declare-fun e!1971705 () Regex!9737)

(assert (=> b!3165061 (= e!1971703 e!1971705)))

(declare-fun b!3165062 () Bool)

(assert (=> b!3165062 (= e!1971706 e!1971703)))

(declare-fun c!532289 () Bool)

(assert (=> b!3165062 (= c!532289 ((_ is ElementMatch!9737) (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))))))

(declare-fun bm!229425 () Bool)

(assert (=> bm!229425 (= call!229430 call!229431)))

(declare-fun b!3165063 () Bool)

(assert (=> b!3165063 (= e!1971705 e!1971704)))

(assert (=> b!3165063 (= c!532288 ((_ is Star!9737) (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156)))))))

(declare-fun b!3165064 () Bool)

(assert (=> b!3165064 (= e!1971706 EmptyLang!9737)))

(declare-fun bm!229426 () Bool)

(assert (=> bm!229426 (= call!229428 call!229430)))

(declare-fun b!3165065 () Bool)

(assert (=> b!3165065 (= e!1971707 (Union!9737 (Concat!15058 call!229428 (regTwo!19986 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))) EmptyLang!9737))))

(declare-fun b!3165066 () Bool)

(assert (=> b!3165066 (= e!1971703 (ite (= a!2409 (c!532237 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))) EmptyExpr!9737 EmptyLang!9737))))

(declare-fun b!3165067 () Bool)

(assert (=> b!3165067 (= e!1971705 (Union!9737 call!229431 call!229429))))

(declare-fun c!532285 () Bool)

(declare-fun b!3165068 () Bool)

(assert (=> b!3165068 (= c!532285 (nullable!3342 (regOne!19986 (ite c!532260 (regOne!19987 r!13156) (ite c!532261 (reg!10066 r!13156) (regOne!19986 r!13156))))))))

(assert (=> b!3165068 (= e!1971704 e!1971707)))

(assert (= (and d!868772 c!532286) b!3165064))

(assert (= (and d!868772 (not c!532286)) b!3165062))

(assert (= (and b!3165062 c!532289) b!3165066))

(assert (= (and b!3165062 (not c!532289)) b!3165061))

(assert (= (and b!3165061 c!532287) b!3165067))

(assert (= (and b!3165061 (not c!532287)) b!3165063))

(assert (= (and b!3165063 c!532288) b!3165059))

(assert (= (and b!3165063 (not c!532288)) b!3165068))

(assert (= (and b!3165068 c!532285) b!3165060))

(assert (= (and b!3165068 (not c!532285)) b!3165065))

(assert (= (or b!3165060 b!3165065) bm!229426))

(assert (= (or b!3165059 bm!229426) bm!229425))

(assert (= (or b!3165067 b!3165060) bm!229424))

(assert (= (or b!3165067 bm!229425) bm!229423))

(declare-fun m!3427540 () Bool)

(assert (=> bm!229423 m!3427540))

(declare-fun m!3427542 () Bool)

(assert (=> bm!229424 m!3427542))

(declare-fun m!3427544 () Bool)

(assert (=> d!868772 m!3427544))

(declare-fun m!3427546 () Bool)

(assert (=> d!868772 m!3427546))

(declare-fun m!3427548 () Bool)

(assert (=> b!3165068 m!3427548))

(assert (=> bm!229409 d!868772))

(declare-fun b!3165069 () Bool)

(declare-fun e!1971709 () Bool)

(declare-fun call!229432 () Bool)

(assert (=> b!3165069 (= e!1971709 call!229432)))

(declare-fun b!3165070 () Bool)

(declare-fun res!1287865 () Bool)

(declare-fun e!1971710 () Bool)

(assert (=> b!3165070 (=> res!1287865 e!1971710)))

(assert (=> b!3165070 (= res!1287865 (not ((_ is Concat!15058) (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156)))))))

(declare-fun e!1971714 () Bool)

(assert (=> b!3165070 (= e!1971714 e!1971710)))

(declare-fun b!3165071 () Bool)

(declare-fun e!1971708 () Bool)

(assert (=> b!3165071 (= e!1971708 e!1971714)))

(declare-fun c!532291 () Bool)

(assert (=> b!3165071 (= c!532291 ((_ is Union!9737) (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))))))

(declare-fun bm!229427 () Bool)

(declare-fun call!229434 () Bool)

(assert (=> bm!229427 (= call!229434 (validRegex!4460 (ite c!532291 (regOne!19987 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))) (regOne!19986 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))))))))

(declare-fun b!3165072 () Bool)

(declare-fun e!1971711 () Bool)

(declare-fun call!229433 () Bool)

(assert (=> b!3165072 (= e!1971711 call!229433)))

(declare-fun bm!229428 () Bool)

(declare-fun c!532290 () Bool)

(assert (=> bm!229428 (= call!229432 (validRegex!4460 (ite c!532290 (reg!10066 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))) (ite c!532291 (regTwo!19987 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))) (regTwo!19986 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156)))))))))

(declare-fun d!868774 () Bool)

(declare-fun res!1287866 () Bool)

(declare-fun e!1971712 () Bool)

(assert (=> d!868774 (=> res!1287866 e!1971712)))

(assert (=> d!868774 (= res!1287866 ((_ is ElementMatch!9737) (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))))))

(assert (=> d!868774 (= (validRegex!4460 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))) e!1971712)))

(declare-fun b!3165073 () Bool)

(assert (=> b!3165073 (= e!1971710 e!1971711)))

(declare-fun res!1287868 () Bool)

(assert (=> b!3165073 (=> (not res!1287868) (not e!1971711))))

(assert (=> b!3165073 (= res!1287868 call!229434)))

(declare-fun b!3165074 () Bool)

(declare-fun e!1971713 () Bool)

(assert (=> b!3165074 (= e!1971713 call!229433)))

(declare-fun b!3165075 () Bool)

(assert (=> b!3165075 (= e!1971708 e!1971709)))

(declare-fun res!1287869 () Bool)

(assert (=> b!3165075 (= res!1287869 (not (nullable!3342 (reg!10066 (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))))))))

(assert (=> b!3165075 (=> (not res!1287869) (not e!1971709))))

(declare-fun bm!229429 () Bool)

(assert (=> bm!229429 (= call!229433 call!229432)))

(declare-fun b!3165076 () Bool)

(declare-fun res!1287867 () Bool)

(assert (=> b!3165076 (=> (not res!1287867) (not e!1971713))))

(assert (=> b!3165076 (= res!1287867 call!229434)))

(assert (=> b!3165076 (= e!1971714 e!1971713)))

(declare-fun b!3165077 () Bool)

(assert (=> b!3165077 (= e!1971712 e!1971708)))

(assert (=> b!3165077 (= c!532290 ((_ is Star!9737) (ite c!532243 (regOne!19987 r!13156) (regOne!19986 r!13156))))))

(assert (= (and d!868774 (not res!1287866)) b!3165077))

(assert (= (and b!3165077 c!532290) b!3165075))

(assert (= (and b!3165077 (not c!532290)) b!3165071))

(assert (= (and b!3165075 res!1287869) b!3165069))

(assert (= (and b!3165071 c!532291) b!3165076))

(assert (= (and b!3165071 (not c!532291)) b!3165070))

(assert (= (and b!3165076 res!1287867) b!3165074))

(assert (= (and b!3165070 (not res!1287865)) b!3165073))

(assert (= (and b!3165073 res!1287868) b!3165072))

(assert (= (or b!3165076 b!3165073) bm!229427))

(assert (= (or b!3165074 b!3165072) bm!229429))

(assert (= (or b!3165069 bm!229429) bm!229428))

(declare-fun m!3427550 () Bool)

(assert (=> bm!229427 m!3427550))

(declare-fun m!3427552 () Bool)

(assert (=> bm!229428 m!3427552))

(declare-fun m!3427554 () Bool)

(assert (=> b!3165075 m!3427554))

(assert (=> bm!229398 d!868774))

(declare-fun d!868776 () Bool)

(assert (=> d!868776 (= (isEmpty!19755 lt!1063980) (not ((_ is Some!6895) lt!1063980)))))

(assert (=> d!868750 d!868776))

(declare-fun bs!539509 () Bool)

(declare-fun b!3165102 () Bool)

(assert (= bs!539509 (and b!3165102 b!3165033)))

(declare-fun lambda!115830 () Int)

(assert (=> bs!539509 (= lambda!115830 lambda!115824)))

(declare-fun bm!229442 () Bool)

(declare-fun call!229450 () Bool)

(declare-fun call!229448 () Option!6898)

(assert (=> bm!229442 (= call!229450 (isDefined!5421 call!229448))))

(declare-fun b!3165100 () Bool)

(declare-fun e!1971732 () Unit!49802)

(declare-fun lt!1064155 () Unit!49802)

(assert (=> b!3165100 (= e!1971732 lt!1064155)))

(declare-fun lt!1064146 () ListLongMap!717)

(declare-fun call!229449 () ListLongMap!717)

(assert (=> b!3165100 (= lt!1064146 call!229449)))

(declare-fun lemmaInGenericMapThenInLongMap!93 (ListLongMap!717 tuple2!34522 Hashable!4074) Unit!49802)

(assert (=> b!3165100 (= lt!1064155 (lemmaInGenericMapThenInLongMap!93 lt!1064146 (tuple2!34523 r!13156 a!2409) (hashF!6106 (cache!4207 cache!347))))))

(declare-fun res!1287877 () Bool)

(declare-fun call!229452 () Bool)

(assert (=> b!3165100 (= res!1287877 call!229452)))

(declare-fun e!1971730 () Bool)

(assert (=> b!3165100 (=> (not res!1287877) (not e!1971730))))

(assert (=> b!3165100 e!1971730))

(declare-fun b!3165101 () Bool)

(assert (=> b!3165101 false))

(declare-fun lt!1064142 () Unit!49802)

(declare-fun lt!1064158 () Unit!49802)

(assert (=> b!3165101 (= lt!1064142 lt!1064158)))

(declare-fun lt!1064145 () List!35569)

(declare-fun lt!1064156 () (_ BitVec 64))

(declare-fun lt!1064159 () List!35568)

(assert (=> b!3165101 (contains!6163 lt!1064145 (tuple2!34527 lt!1064156 lt!1064159))))

(assert (=> b!3165101 (= lt!1064158 (lemmaGetValueByKeyImpliesContainsTuple!99 lt!1064145 lt!1064156 lt!1064159))))

(assert (=> b!3165101 (= lt!1064159 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064156))))

(assert (=> b!3165101 (= lt!1064145 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))

(declare-fun lt!1064149 () Unit!49802)

(declare-fun lt!1064143 () Unit!49802)

(assert (=> b!3165101 (= lt!1064149 lt!1064143)))

(declare-fun lt!1064150 () List!35569)

(assert (=> b!3165101 (isDefined!5420 (getValueByKey!173 lt!1064150 lt!1064156))))

(assert (=> b!3165101 (= lt!1064143 (lemmaContainsKeyImpliesGetValueByKeyDefined!127 lt!1064150 lt!1064156))))

(assert (=> b!3165101 (= lt!1064150 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))

(declare-fun lt!1064157 () Unit!49802)

(declare-fun lt!1064151 () Unit!49802)

(assert (=> b!3165101 (= lt!1064157 lt!1064151)))

(declare-fun lt!1064147 () List!35569)

(declare-fun containsKey!191 (List!35569 (_ BitVec 64)) Bool)

(assert (=> b!3165101 (containsKey!191 lt!1064147 lt!1064156)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!94 (List!35569 (_ BitVec 64)) Unit!49802)

(assert (=> b!3165101 (= lt!1064151 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!94 lt!1064147 lt!1064156))))

(assert (=> b!3165101 (= lt!1064147 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))

(declare-fun e!1971731 () Unit!49802)

(declare-fun Unit!49807 () Unit!49802)

(assert (=> b!3165101 (= e!1971731 Unit!49807)))

(declare-fun e!1971729 () Unit!49802)

(assert (=> b!3165102 (= e!1971729 (forallContained!1071 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))) lambda!115830 (tuple2!34527 lt!1064156 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064156))))))

(declare-fun c!532303 () Bool)

(assert (=> b!3165102 (= c!532303 (not (contains!6163 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347))))) (tuple2!34527 lt!1064156 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064156)))))))

(declare-fun lt!1064152 () Unit!49802)

(assert (=> b!3165102 (= lt!1064152 e!1971731)))

(declare-fun b!3165103 () Bool)

(declare-fun Unit!49808 () Unit!49802)

(assert (=> b!3165103 (= e!1971729 Unit!49808)))

(declare-fun b!3165104 () Bool)

(declare-fun e!1971734 () Bool)

(assert (=> b!3165104 (= e!1971734 call!229450)))

(declare-fun b!3165105 () Bool)

(declare-fun e!1971733 () Unit!49802)

(declare-fun Unit!49809 () Unit!49802)

(assert (=> b!3165105 (= e!1971733 Unit!49809)))

(declare-fun c!532302 () Bool)

(declare-fun bm!229443 () Bool)

(declare-fun call!229451 () List!35568)

(declare-fun call!229447 () (_ BitVec 64))

(assert (=> bm!229443 (= call!229451 (apply!7945 (ite c!532302 lt!1064146 call!229449) call!229447))))

(declare-fun d!868778 () Bool)

(declare-fun lt!1064153 () Bool)

(declare-fun contains!6165 (ListMap!1299 tuple2!34522) Bool)

(assert (=> d!868778 (= lt!1064153 (contains!6165 (map!7896 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun e!1971735 () Bool)

(assert (=> d!868778 (= lt!1064153 e!1971735)))

(declare-fun res!1287878 () Bool)

(assert (=> d!868778 (=> (not res!1287878) (not e!1971735))))

(declare-fun contains!6166 (MutLongMap!4158 (_ BitVec 64)) Bool)

(assert (=> d!868778 (= res!1287878 (contains!6166 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064156))))

(declare-fun lt!1064160 () Unit!49802)

(assert (=> d!868778 (= lt!1064160 e!1971732)))

(assert (=> d!868778 (= c!532302 (contains!6165 (extractMap!231 (toList!2053 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347)))))) (tuple2!34523 r!13156 a!2409)))))

(declare-fun lt!1064141 () Unit!49802)

(assert (=> d!868778 (= lt!1064141 e!1971729)))

(declare-fun c!532301 () Bool)

(assert (=> d!868778 (= c!532301 (contains!6166 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064156))))

(assert (=> d!868778 (= lt!1064156 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(assert (=> d!868778 (valid!3242 (cache!4207 cache!347))))

(assert (=> d!868778 (= (contains!6162 (cache!4207 cache!347) (tuple2!34523 r!13156 a!2409)) lt!1064153)))

(declare-fun b!3165106 () Bool)

(assert (=> b!3165106 (= e!1971735 (isDefined!5421 (getPair!93 (apply!7944 (v!35124 (underlying!8546 (cache!4207 cache!347))) lt!1064156) (tuple2!34523 r!13156 a!2409))))))

(declare-fun bm!229444 () Bool)

(assert (=> bm!229444 (= call!229448 (getPair!93 call!229451 (tuple2!34523 r!13156 a!2409)))))

(declare-fun b!3165107 () Bool)

(declare-fun Unit!49810 () Unit!49802)

(assert (=> b!3165107 (= e!1971731 Unit!49810)))

(declare-fun bm!229445 () Bool)

(assert (=> bm!229445 (= call!229449 (map!7897 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))

(declare-fun b!3165108 () Bool)

(assert (=> b!3165108 (= e!1971730 call!229450)))

(declare-fun b!3165109 () Bool)

(assert (=> b!3165109 (= e!1971732 e!1971733)))

(declare-fun res!1287876 () Bool)

(assert (=> b!3165109 (= res!1287876 call!229452)))

(assert (=> b!3165109 (=> (not res!1287876) (not e!1971734))))

(declare-fun c!532300 () Bool)

(assert (=> b!3165109 (= c!532300 e!1971734)))

(declare-fun bm!229446 () Bool)

(assert (=> bm!229446 (= call!229447 (hash!802 (hashF!6106 (cache!4207 cache!347)) (tuple2!34523 r!13156 a!2409)))))

(declare-fun bm!229447 () Bool)

(assert (=> bm!229447 (= call!229452 (contains!6164 (ite c!532302 lt!1064146 call!229449) call!229447))))

(declare-fun b!3165110 () Bool)

(assert (=> b!3165110 false))

(declare-fun lt!1064144 () Unit!49802)

(declare-fun lt!1064154 () Unit!49802)

(assert (=> b!3165110 (= lt!1064144 lt!1064154)))

(declare-fun lt!1064148 () ListLongMap!717)

(assert (=> b!3165110 (contains!6165 (extractMap!231 (toList!2053 lt!1064148)) (tuple2!34523 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!93 (ListLongMap!717 tuple2!34522 Hashable!4074) Unit!49802)

(assert (=> b!3165110 (= lt!1064154 (lemmaInLongMapThenInGenericMap!93 lt!1064148 (tuple2!34523 r!13156 a!2409) (hashF!6106 (cache!4207 cache!347))))))

(assert (=> b!3165110 (= lt!1064148 call!229449)))

(declare-fun Unit!49811 () Unit!49802)

(assert (=> b!3165110 (= e!1971733 Unit!49811)))

(assert (= (and d!868778 c!532301) b!3165102))

(assert (= (and d!868778 (not c!532301)) b!3165103))

(assert (= (and b!3165102 c!532303) b!3165101))

(assert (= (and b!3165102 (not c!532303)) b!3165107))

(assert (= (and d!868778 c!532302) b!3165100))

(assert (= (and d!868778 (not c!532302)) b!3165109))

(assert (= (and b!3165100 res!1287877) b!3165108))

(assert (= (and b!3165109 res!1287876) b!3165104))

(assert (= (and b!3165109 c!532300) b!3165110))

(assert (= (and b!3165109 (not c!532300)) b!3165105))

(assert (= (or b!3165100 b!3165109 b!3165104 b!3165110) bm!229445))

(assert (= (or b!3165100 b!3165108 b!3165109 b!3165104) bm!229446))

(assert (= (or b!3165100 b!3165109) bm!229447))

(assert (= (or b!3165108 b!3165104) bm!229443))

(assert (= (or b!3165108 b!3165104) bm!229444))

(assert (= (or b!3165108 b!3165104) bm!229442))

(assert (= (and d!868778 res!1287878) b!3165106))

(declare-fun m!3427556 () Bool)

(assert (=> bm!229447 m!3427556))

(declare-fun m!3427558 () Bool)

(assert (=> bm!229442 m!3427558))

(assert (=> bm!229445 m!3427476))

(declare-fun m!3427560 () Bool)

(assert (=> d!868778 m!3427560))

(declare-fun m!3427562 () Bool)

(assert (=> d!868778 m!3427562))

(assert (=> d!868778 m!3427456))

(declare-fun m!3427564 () Bool)

(assert (=> d!868778 m!3427564))

(assert (=> d!868778 m!3427454))

(assert (=> d!868778 m!3427456))

(declare-fun m!3427566 () Bool)

(assert (=> d!868778 m!3427566))

(assert (=> d!868778 m!3427476))

(assert (=> d!868778 m!3427560))

(assert (=> d!868778 m!3427486))

(declare-fun m!3427568 () Bool)

(assert (=> b!3165100 m!3427568))

(declare-fun m!3427570 () Bool)

(assert (=> b!3165110 m!3427570))

(assert (=> b!3165110 m!3427570))

(declare-fun m!3427572 () Bool)

(assert (=> b!3165110 m!3427572))

(declare-fun m!3427574 () Bool)

(assert (=> b!3165110 m!3427574))

(declare-fun m!3427576 () Bool)

(assert (=> bm!229443 m!3427576))

(declare-fun m!3427578 () Bool)

(assert (=> b!3165101 m!3427578))

(declare-fun m!3427580 () Bool)

(assert (=> b!3165101 m!3427580))

(assert (=> b!3165101 m!3427476))

(declare-fun m!3427582 () Bool)

(assert (=> b!3165101 m!3427582))

(declare-fun m!3427584 () Bool)

(assert (=> b!3165101 m!3427584))

(declare-fun m!3427586 () Bool)

(assert (=> b!3165101 m!3427586))

(declare-fun m!3427588 () Bool)

(assert (=> b!3165101 m!3427588))

(assert (=> b!3165101 m!3427578))

(declare-fun m!3427590 () Bool)

(assert (=> b!3165101 m!3427590))

(declare-fun m!3427592 () Bool)

(assert (=> b!3165101 m!3427592))

(assert (=> b!3165106 m!3427584))

(assert (=> b!3165106 m!3427584))

(declare-fun m!3427594 () Bool)

(assert (=> b!3165106 m!3427594))

(assert (=> b!3165106 m!3427594))

(declare-fun m!3427596 () Bool)

(assert (=> b!3165106 m!3427596))

(assert (=> bm!229446 m!3427486))

(declare-fun m!3427598 () Bool)

(assert (=> bm!229444 m!3427598))

(assert (=> b!3165102 m!3427476))

(assert (=> b!3165102 m!3427584))

(declare-fun m!3427600 () Bool)

(assert (=> b!3165102 m!3427600))

(declare-fun m!3427602 () Bool)

(assert (=> b!3165102 m!3427602))

(assert (=> d!868750 d!868778))

(assert (=> d!868750 d!868742))

(declare-fun d!868780 () Bool)

(assert (=> d!868780 (= (get!11239 lt!1063980) (v!35125 lt!1063980))))

(assert (=> b!3164914 d!868780))

(assert (=> b!3164914 d!868754))

(declare-fun b!3165112 () Bool)

(declare-fun e!1971736 () Bool)

(declare-fun tp!996985 () Bool)

(declare-fun tp!996983 () Bool)

(assert (=> b!3165112 (= e!1971736 (and tp!996985 tp!996983))))

(declare-fun b!3165113 () Bool)

(declare-fun tp!996982 () Bool)

(assert (=> b!3165113 (= e!1971736 tp!996982)))

(declare-fun b!3165114 () Bool)

(declare-fun tp!996984 () Bool)

(declare-fun tp!996986 () Bool)

(assert (=> b!3165114 (= e!1971736 (and tp!996984 tp!996986))))

(declare-fun b!3165111 () Bool)

(assert (=> b!3165111 (= e!1971736 tp_is_empty!17037)))

(assert (=> b!3164973 (= tp!996956 e!1971736)))

(assert (= (and b!3164973 ((_ is ElementMatch!9737) (_1!20393 (_1!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165111))

(assert (= (and b!3164973 ((_ is Concat!15058) (_1!20393 (_1!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165112))

(assert (= (and b!3164973 ((_ is Star!9737) (_1!20393 (_1!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165113))

(assert (= (and b!3164973 ((_ is Union!9737) (_1!20393 (_1!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165114))

(declare-fun b!3165116 () Bool)

(declare-fun e!1971737 () Bool)

(declare-fun tp!996990 () Bool)

(declare-fun tp!996988 () Bool)

(assert (=> b!3165116 (= e!1971737 (and tp!996990 tp!996988))))

(declare-fun b!3165117 () Bool)

(declare-fun tp!996987 () Bool)

(assert (=> b!3165117 (= e!1971737 tp!996987)))

(declare-fun b!3165118 () Bool)

(declare-fun tp!996989 () Bool)

(declare-fun tp!996991 () Bool)

(assert (=> b!3165118 (= e!1971737 (and tp!996989 tp!996991))))

(declare-fun b!3165115 () Bool)

(assert (=> b!3165115 (= e!1971737 tp_is_empty!17037)))

(assert (=> b!3164973 (= tp!996957 e!1971737)))

(assert (= (and b!3164973 ((_ is ElementMatch!9737) (_2!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165115))

(assert (= (and b!3164973 ((_ is Concat!15058) (_2!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165116))

(assert (= (and b!3164973 ((_ is Star!9737) (_2!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165117))

(assert (= (and b!3164973 ((_ is Union!9737) (_2!20394 (h!40864 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165118))

(declare-fun b!3165119 () Bool)

(declare-fun tp!996993 () Bool)

(declare-fun e!1971738 () Bool)

(declare-fun tp!996992 () Bool)

(declare-fun tp!996994 () Bool)

(assert (=> b!3165119 (= e!1971738 (and tp!996992 tp_is_empty!17037 tp!996993 tp!996994))))

(assert (=> b!3164973 (= tp!996958 e!1971738)))

(assert (= (and b!3164973 ((_ is Cons!35444) (t!234639 (zeroValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))) b!3165119))

(declare-fun b!3165121 () Bool)

(declare-fun e!1971739 () Bool)

(declare-fun tp!996998 () Bool)

(declare-fun tp!996996 () Bool)

(assert (=> b!3165121 (= e!1971739 (and tp!996998 tp!996996))))

(declare-fun b!3165122 () Bool)

(declare-fun tp!996995 () Bool)

(assert (=> b!3165122 (= e!1971739 tp!996995)))

(declare-fun b!3165123 () Bool)

(declare-fun tp!996997 () Bool)

(declare-fun tp!996999 () Bool)

(assert (=> b!3165123 (= e!1971739 (and tp!996997 tp!996999))))

(declare-fun b!3165120 () Bool)

(assert (=> b!3165120 (= e!1971739 tp_is_empty!17037)))

(assert (=> b!3164981 (= tp!996967 e!1971739)))

(assert (= (and b!3164981 ((_ is ElementMatch!9737) (reg!10066 (regTwo!19987 r!13156)))) b!3165120))

(assert (= (and b!3164981 ((_ is Concat!15058) (reg!10066 (regTwo!19987 r!13156)))) b!3165121))

(assert (= (and b!3164981 ((_ is Star!9737) (reg!10066 (regTwo!19987 r!13156)))) b!3165122))

(assert (= (and b!3164981 ((_ is Union!9737) (reg!10066 (regTwo!19987 r!13156)))) b!3165123))

(declare-fun b!3165125 () Bool)

(declare-fun e!1971740 () Bool)

(declare-fun tp!997003 () Bool)

(declare-fun tp!997001 () Bool)

(assert (=> b!3165125 (= e!1971740 (and tp!997003 tp!997001))))

(declare-fun b!3165126 () Bool)

(declare-fun tp!997000 () Bool)

(assert (=> b!3165126 (= e!1971740 tp!997000)))

(declare-fun b!3165127 () Bool)

(declare-fun tp!997002 () Bool)

(declare-fun tp!997004 () Bool)

(assert (=> b!3165127 (= e!1971740 (and tp!997002 tp!997004))))

(declare-fun b!3165124 () Bool)

(assert (=> b!3165124 (= e!1971740 tp_is_empty!17037)))

(assert (=> b!3164976 (= tp!996965 e!1971740)))

(assert (= (and b!3164976 ((_ is ElementMatch!9737) (regOne!19986 (regOne!19987 r!13156)))) b!3165124))

(assert (= (and b!3164976 ((_ is Concat!15058) (regOne!19986 (regOne!19987 r!13156)))) b!3165125))

(assert (= (and b!3164976 ((_ is Star!9737) (regOne!19986 (regOne!19987 r!13156)))) b!3165126))

(assert (= (and b!3164976 ((_ is Union!9737) (regOne!19986 (regOne!19987 r!13156)))) b!3165127))

(declare-fun b!3165129 () Bool)

(declare-fun e!1971741 () Bool)

(declare-fun tp!997008 () Bool)

(declare-fun tp!997006 () Bool)

(assert (=> b!3165129 (= e!1971741 (and tp!997008 tp!997006))))

(declare-fun b!3165130 () Bool)

(declare-fun tp!997005 () Bool)

(assert (=> b!3165130 (= e!1971741 tp!997005)))

(declare-fun b!3165131 () Bool)

(declare-fun tp!997007 () Bool)

(declare-fun tp!997009 () Bool)

(assert (=> b!3165131 (= e!1971741 (and tp!997007 tp!997009))))

(declare-fun b!3165128 () Bool)

(assert (=> b!3165128 (= e!1971741 tp_is_empty!17037)))

(assert (=> b!3164976 (= tp!996963 e!1971741)))

(assert (= (and b!3164976 ((_ is ElementMatch!9737) (regTwo!19986 (regOne!19987 r!13156)))) b!3165128))

(assert (= (and b!3164976 ((_ is Concat!15058) (regTwo!19986 (regOne!19987 r!13156)))) b!3165129))

(assert (= (and b!3164976 ((_ is Star!9737) (regTwo!19986 (regOne!19987 r!13156)))) b!3165130))

(assert (= (and b!3164976 ((_ is Union!9737) (regTwo!19986 (regOne!19987 r!13156)))) b!3165131))

(declare-fun b!3165133 () Bool)

(declare-fun e!1971742 () Bool)

(declare-fun tp!997013 () Bool)

(declare-fun tp!997011 () Bool)

(assert (=> b!3165133 (= e!1971742 (and tp!997013 tp!997011))))

(declare-fun b!3165134 () Bool)

(declare-fun tp!997010 () Bool)

(assert (=> b!3165134 (= e!1971742 tp!997010)))

(declare-fun b!3165135 () Bool)

(declare-fun tp!997012 () Bool)

(declare-fun tp!997014 () Bool)

(assert (=> b!3165135 (= e!1971742 (and tp!997012 tp!997014))))

(declare-fun b!3165132 () Bool)

(assert (=> b!3165132 (= e!1971742 tp_is_empty!17037)))

(assert (=> b!3164990 (= tp!996979 e!1971742)))

(assert (= (and b!3164990 ((_ is ElementMatch!9737) (regOne!19987 (regTwo!19986 r!13156)))) b!3165132))

(assert (= (and b!3164990 ((_ is Concat!15058) (regOne!19987 (regTwo!19986 r!13156)))) b!3165133))

(assert (= (and b!3164990 ((_ is Star!9737) (regOne!19987 (regTwo!19986 r!13156)))) b!3165134))

(assert (= (and b!3164990 ((_ is Union!9737) (regOne!19987 (regTwo!19986 r!13156)))) b!3165135))

(declare-fun b!3165137 () Bool)

(declare-fun e!1971743 () Bool)

(declare-fun tp!997018 () Bool)

(declare-fun tp!997016 () Bool)

(assert (=> b!3165137 (= e!1971743 (and tp!997018 tp!997016))))

(declare-fun b!3165138 () Bool)

(declare-fun tp!997015 () Bool)

(assert (=> b!3165138 (= e!1971743 tp!997015)))

(declare-fun b!3165139 () Bool)

(declare-fun tp!997017 () Bool)

(declare-fun tp!997019 () Bool)

(assert (=> b!3165139 (= e!1971743 (and tp!997017 tp!997019))))

(declare-fun b!3165136 () Bool)

(assert (=> b!3165136 (= e!1971743 tp_is_empty!17037)))

(assert (=> b!3164990 (= tp!996981 e!1971743)))

(assert (= (and b!3164990 ((_ is ElementMatch!9737) (regTwo!19987 (regTwo!19986 r!13156)))) b!3165136))

(assert (= (and b!3164990 ((_ is Concat!15058) (regTwo!19987 (regTwo!19986 r!13156)))) b!3165137))

(assert (= (and b!3164990 ((_ is Star!9737) (regTwo!19987 (regTwo!19986 r!13156)))) b!3165138))

(assert (= (and b!3164990 ((_ is Union!9737) (regTwo!19987 (regTwo!19986 r!13156)))) b!3165139))

(declare-fun b!3165141 () Bool)

(declare-fun e!1971744 () Bool)

(declare-fun tp!997023 () Bool)

(declare-fun tp!997021 () Bool)

(assert (=> b!3165141 (= e!1971744 (and tp!997023 tp!997021))))

(declare-fun b!3165142 () Bool)

(declare-fun tp!997020 () Bool)

(assert (=> b!3165142 (= e!1971744 tp!997020)))

(declare-fun b!3165143 () Bool)

(declare-fun tp!997022 () Bool)

(declare-fun tp!997024 () Bool)

(assert (=> b!3165143 (= e!1971744 (and tp!997022 tp!997024))))

(declare-fun b!3165140 () Bool)

(assert (=> b!3165140 (= e!1971744 tp_is_empty!17037)))

(assert (=> b!3164985 (= tp!996972 e!1971744)))

(assert (= (and b!3164985 ((_ is ElementMatch!9737) (reg!10066 (regOne!19986 r!13156)))) b!3165140))

(assert (= (and b!3164985 ((_ is Concat!15058) (reg!10066 (regOne!19986 r!13156)))) b!3165141))

(assert (= (and b!3164985 ((_ is Star!9737) (reg!10066 (regOne!19986 r!13156)))) b!3165142))

(assert (= (and b!3164985 ((_ is Union!9737) (reg!10066 (regOne!19986 r!13156)))) b!3165143))

(declare-fun b!3165145 () Bool)

(declare-fun e!1971745 () Bool)

(declare-fun tp!997028 () Bool)

(declare-fun tp!997026 () Bool)

(assert (=> b!3165145 (= e!1971745 (and tp!997028 tp!997026))))

(declare-fun b!3165146 () Bool)

(declare-fun tp!997025 () Bool)

(assert (=> b!3165146 (= e!1971745 tp!997025)))

(declare-fun b!3165147 () Bool)

(declare-fun tp!997027 () Bool)

(declare-fun tp!997029 () Bool)

(assert (=> b!3165147 (= e!1971745 (and tp!997027 tp!997029))))

(declare-fun b!3165144 () Bool)

(assert (=> b!3165144 (= e!1971745 tp_is_empty!17037)))

(assert (=> b!3164958 (= tp!996938 e!1971745)))

(assert (= (and b!3164958 ((_ is ElementMatch!9737) (_1!20393 (_1!20394 (h!40864 mapValue!18854))))) b!3165144))

(assert (= (and b!3164958 ((_ is Concat!15058) (_1!20393 (_1!20394 (h!40864 mapValue!18854))))) b!3165145))

(assert (= (and b!3164958 ((_ is Star!9737) (_1!20393 (_1!20394 (h!40864 mapValue!18854))))) b!3165146))

(assert (= (and b!3164958 ((_ is Union!9737) (_1!20393 (_1!20394 (h!40864 mapValue!18854))))) b!3165147))

(declare-fun b!3165149 () Bool)

(declare-fun e!1971746 () Bool)

(declare-fun tp!997033 () Bool)

(declare-fun tp!997031 () Bool)

(assert (=> b!3165149 (= e!1971746 (and tp!997033 tp!997031))))

(declare-fun b!3165150 () Bool)

(declare-fun tp!997030 () Bool)

(assert (=> b!3165150 (= e!1971746 tp!997030)))

(declare-fun b!3165151 () Bool)

(declare-fun tp!997032 () Bool)

(declare-fun tp!997034 () Bool)

(assert (=> b!3165151 (= e!1971746 (and tp!997032 tp!997034))))

(declare-fun b!3165148 () Bool)

(assert (=> b!3165148 (= e!1971746 tp_is_empty!17037)))

(assert (=> b!3164958 (= tp!996939 e!1971746)))

(assert (= (and b!3164958 ((_ is ElementMatch!9737) (_2!20394 (h!40864 mapValue!18854)))) b!3165148))

(assert (= (and b!3164958 ((_ is Concat!15058) (_2!20394 (h!40864 mapValue!18854)))) b!3165149))

(assert (= (and b!3164958 ((_ is Star!9737) (_2!20394 (h!40864 mapValue!18854)))) b!3165150))

(assert (= (and b!3164958 ((_ is Union!9737) (_2!20394 (h!40864 mapValue!18854)))) b!3165151))

(declare-fun tp!997037 () Bool)

(declare-fun e!1971747 () Bool)

(declare-fun tp!997035 () Bool)

(declare-fun tp!997036 () Bool)

(declare-fun b!3165152 () Bool)

(assert (=> b!3165152 (= e!1971747 (and tp!997035 tp_is_empty!17037 tp!997036 tp!997037))))

(assert (=> b!3164958 (= tp!996940 e!1971747)))

(assert (= (and b!3164958 ((_ is Cons!35444) (t!234639 mapValue!18854))) b!3165152))

(declare-fun b!3165154 () Bool)

(declare-fun e!1971748 () Bool)

(declare-fun tp!997041 () Bool)

(declare-fun tp!997039 () Bool)

(assert (=> b!3165154 (= e!1971748 (and tp!997041 tp!997039))))

(declare-fun b!3165155 () Bool)

(declare-fun tp!997038 () Bool)

(assert (=> b!3165155 (= e!1971748 tp!997038)))

(declare-fun b!3165156 () Bool)

(declare-fun tp!997040 () Bool)

(declare-fun tp!997042 () Bool)

(assert (=> b!3165156 (= e!1971748 (and tp!997040 tp!997042))))

(declare-fun b!3165153 () Bool)

(assert (=> b!3165153 (= e!1971748 tp_is_empty!17037)))

(assert (=> b!3164980 (= tp!996970 e!1971748)))

(assert (= (and b!3164980 ((_ is ElementMatch!9737) (regOne!19986 (regTwo!19987 r!13156)))) b!3165153))

(assert (= (and b!3164980 ((_ is Concat!15058) (regOne!19986 (regTwo!19987 r!13156)))) b!3165154))

(assert (= (and b!3164980 ((_ is Star!9737) (regOne!19986 (regTwo!19987 r!13156)))) b!3165155))

(assert (= (and b!3164980 ((_ is Union!9737) (regOne!19986 (regTwo!19987 r!13156)))) b!3165156))

(declare-fun b!3165158 () Bool)

(declare-fun e!1971749 () Bool)

(declare-fun tp!997046 () Bool)

(declare-fun tp!997044 () Bool)

(assert (=> b!3165158 (= e!1971749 (and tp!997046 tp!997044))))

(declare-fun b!3165159 () Bool)

(declare-fun tp!997043 () Bool)

(assert (=> b!3165159 (= e!1971749 tp!997043)))

(declare-fun b!3165160 () Bool)

(declare-fun tp!997045 () Bool)

(declare-fun tp!997047 () Bool)

(assert (=> b!3165160 (= e!1971749 (and tp!997045 tp!997047))))

(declare-fun b!3165157 () Bool)

(assert (=> b!3165157 (= e!1971749 tp_is_empty!17037)))

(assert (=> b!3164980 (= tp!996968 e!1971749)))

(assert (= (and b!3164980 ((_ is ElementMatch!9737) (regTwo!19986 (regTwo!19987 r!13156)))) b!3165157))

(assert (= (and b!3164980 ((_ is Concat!15058) (regTwo!19986 (regTwo!19987 r!13156)))) b!3165158))

(assert (= (and b!3164980 ((_ is Star!9737) (regTwo!19986 (regTwo!19987 r!13156)))) b!3165159))

(assert (= (and b!3164980 ((_ is Union!9737) (regTwo!19986 (regTwo!19987 r!13156)))) b!3165160))

(declare-fun b!3165162 () Bool)

(declare-fun e!1971750 () Bool)

(declare-fun tp!997051 () Bool)

(declare-fun tp!997049 () Bool)

(assert (=> b!3165162 (= e!1971750 (and tp!997051 tp!997049))))

(declare-fun b!3165163 () Bool)

(declare-fun tp!997048 () Bool)

(assert (=> b!3165163 (= e!1971750 tp!997048)))

(declare-fun b!3165164 () Bool)

(declare-fun tp!997050 () Bool)

(declare-fun tp!997052 () Bool)

(assert (=> b!3165164 (= e!1971750 (and tp!997050 tp!997052))))

(declare-fun b!3165161 () Bool)

(assert (=> b!3165161 (= e!1971750 tp_is_empty!17037)))

(assert (=> b!3164989 (= tp!996977 e!1971750)))

(assert (= (and b!3164989 ((_ is ElementMatch!9737) (reg!10066 (regTwo!19986 r!13156)))) b!3165161))

(assert (= (and b!3164989 ((_ is Concat!15058) (reg!10066 (regTwo!19986 r!13156)))) b!3165162))

(assert (= (and b!3164989 ((_ is Star!9737) (reg!10066 (regTwo!19986 r!13156)))) b!3165163))

(assert (= (and b!3164989 ((_ is Union!9737) (reg!10066 (regTwo!19986 r!13156)))) b!3165164))

(declare-fun b!3165166 () Bool)

(declare-fun e!1971751 () Bool)

(declare-fun tp!997056 () Bool)

(declare-fun tp!997054 () Bool)

(assert (=> b!3165166 (= e!1971751 (and tp!997056 tp!997054))))

(declare-fun b!3165167 () Bool)

(declare-fun tp!997053 () Bool)

(assert (=> b!3165167 (= e!1971751 tp!997053)))

(declare-fun b!3165168 () Bool)

(declare-fun tp!997055 () Bool)

(declare-fun tp!997057 () Bool)

(assert (=> b!3165168 (= e!1971751 (and tp!997055 tp!997057))))

(declare-fun b!3165165 () Bool)

(assert (=> b!3165165 (= e!1971751 tp_is_empty!17037)))

(assert (=> b!3164984 (= tp!996975 e!1971751)))

(assert (= (and b!3164984 ((_ is ElementMatch!9737) (regOne!19986 (regOne!19986 r!13156)))) b!3165165))

(assert (= (and b!3164984 ((_ is Concat!15058) (regOne!19986 (regOne!19986 r!13156)))) b!3165166))

(assert (= (and b!3164984 ((_ is Star!9737) (regOne!19986 (regOne!19986 r!13156)))) b!3165167))

(assert (= (and b!3164984 ((_ is Union!9737) (regOne!19986 (regOne!19986 r!13156)))) b!3165168))

(declare-fun b!3165170 () Bool)

(declare-fun e!1971752 () Bool)

(declare-fun tp!997061 () Bool)

(declare-fun tp!997059 () Bool)

(assert (=> b!3165170 (= e!1971752 (and tp!997061 tp!997059))))

(declare-fun b!3165171 () Bool)

(declare-fun tp!997058 () Bool)

(assert (=> b!3165171 (= e!1971752 tp!997058)))

(declare-fun b!3165172 () Bool)

(declare-fun tp!997060 () Bool)

(declare-fun tp!997062 () Bool)

(assert (=> b!3165172 (= e!1971752 (and tp!997060 tp!997062))))

(declare-fun b!3165169 () Bool)

(assert (=> b!3165169 (= e!1971752 tp_is_empty!17037)))

(assert (=> b!3164984 (= tp!996973 e!1971752)))

(assert (= (and b!3164984 ((_ is ElementMatch!9737) (regTwo!19986 (regOne!19986 r!13156)))) b!3165169))

(assert (= (and b!3164984 ((_ is Concat!15058) (regTwo!19986 (regOne!19986 r!13156)))) b!3165170))

(assert (= (and b!3164984 ((_ is Star!9737) (regTwo!19986 (regOne!19986 r!13156)))) b!3165171))

(assert (= (and b!3164984 ((_ is Union!9737) (regTwo!19986 (regOne!19986 r!13156)))) b!3165172))

(declare-fun b!3165174 () Bool)

(declare-fun e!1971753 () Bool)

(declare-fun tp!997066 () Bool)

(declare-fun tp!997064 () Bool)

(assert (=> b!3165174 (= e!1971753 (and tp!997066 tp!997064))))

(declare-fun b!3165175 () Bool)

(declare-fun tp!997063 () Bool)

(assert (=> b!3165175 (= e!1971753 tp!997063)))

(declare-fun b!3165176 () Bool)

(declare-fun tp!997065 () Bool)

(declare-fun tp!997067 () Bool)

(assert (=> b!3165176 (= e!1971753 (and tp!997065 tp!997067))))

(declare-fun b!3165173 () Bool)

(assert (=> b!3165173 (= e!1971753 tp_is_empty!17037)))

(assert (=> b!3164988 (= tp!996980 e!1971753)))

(assert (= (and b!3164988 ((_ is ElementMatch!9737) (regOne!19986 (regTwo!19986 r!13156)))) b!3165173))

(assert (= (and b!3164988 ((_ is Concat!15058) (regOne!19986 (regTwo!19986 r!13156)))) b!3165174))

(assert (= (and b!3164988 ((_ is Star!9737) (regOne!19986 (regTwo!19986 r!13156)))) b!3165175))

(assert (= (and b!3164988 ((_ is Union!9737) (regOne!19986 (regTwo!19986 r!13156)))) b!3165176))

(declare-fun b!3165178 () Bool)

(declare-fun e!1971754 () Bool)

(declare-fun tp!997071 () Bool)

(declare-fun tp!997069 () Bool)

(assert (=> b!3165178 (= e!1971754 (and tp!997071 tp!997069))))

(declare-fun b!3165179 () Bool)

(declare-fun tp!997068 () Bool)

(assert (=> b!3165179 (= e!1971754 tp!997068)))

(declare-fun b!3165180 () Bool)

(declare-fun tp!997070 () Bool)

(declare-fun tp!997072 () Bool)

(assert (=> b!3165180 (= e!1971754 (and tp!997070 tp!997072))))

(declare-fun b!3165177 () Bool)

(assert (=> b!3165177 (= e!1971754 tp_is_empty!17037)))

(assert (=> b!3164988 (= tp!996978 e!1971754)))

(assert (= (and b!3164988 ((_ is ElementMatch!9737) (regTwo!19986 (regTwo!19986 r!13156)))) b!3165177))

(assert (= (and b!3164988 ((_ is Concat!15058) (regTwo!19986 (regTwo!19986 r!13156)))) b!3165178))

(assert (= (and b!3164988 ((_ is Star!9737) (regTwo!19986 (regTwo!19986 r!13156)))) b!3165179))

(assert (= (and b!3164988 ((_ is Union!9737) (regTwo!19986 (regTwo!19986 r!13156)))) b!3165180))

(declare-fun b!3165182 () Bool)

(declare-fun e!1971755 () Bool)

(declare-fun tp!997076 () Bool)

(declare-fun tp!997074 () Bool)

(assert (=> b!3165182 (= e!1971755 (and tp!997076 tp!997074))))

(declare-fun b!3165183 () Bool)

(declare-fun tp!997073 () Bool)

(assert (=> b!3165183 (= e!1971755 tp!997073)))

(declare-fun b!3165184 () Bool)

(declare-fun tp!997075 () Bool)

(declare-fun tp!997077 () Bool)

(assert (=> b!3165184 (= e!1971755 (and tp!997075 tp!997077))))

(declare-fun b!3165181 () Bool)

(assert (=> b!3165181 (= e!1971755 tp_is_empty!17037)))

(assert (=> b!3164957 (= tp!996931 e!1971755)))

(assert (= (and b!3164957 ((_ is ElementMatch!9737) (_1!20393 (_1!20394 (h!40864 mapDefault!18857))))) b!3165181))

(assert (= (and b!3164957 ((_ is Concat!15058) (_1!20393 (_1!20394 (h!40864 mapDefault!18857))))) b!3165182))

(assert (= (and b!3164957 ((_ is Star!9737) (_1!20393 (_1!20394 (h!40864 mapDefault!18857))))) b!3165183))

(assert (= (and b!3164957 ((_ is Union!9737) (_1!20393 (_1!20394 (h!40864 mapDefault!18857))))) b!3165184))

(declare-fun b!3165186 () Bool)

(declare-fun e!1971756 () Bool)

(declare-fun tp!997081 () Bool)

(declare-fun tp!997079 () Bool)

(assert (=> b!3165186 (= e!1971756 (and tp!997081 tp!997079))))

(declare-fun b!3165187 () Bool)

(declare-fun tp!997078 () Bool)

(assert (=> b!3165187 (= e!1971756 tp!997078)))

(declare-fun b!3165188 () Bool)

(declare-fun tp!997080 () Bool)

(declare-fun tp!997082 () Bool)

(assert (=> b!3165188 (= e!1971756 (and tp!997080 tp!997082))))

(declare-fun b!3165185 () Bool)

(assert (=> b!3165185 (= e!1971756 tp_is_empty!17037)))

(assert (=> b!3164957 (= tp!996936 e!1971756)))

(assert (= (and b!3164957 ((_ is ElementMatch!9737) (_2!20394 (h!40864 mapDefault!18857)))) b!3165185))

(assert (= (and b!3164957 ((_ is Concat!15058) (_2!20394 (h!40864 mapDefault!18857)))) b!3165186))

(assert (= (and b!3164957 ((_ is Star!9737) (_2!20394 (h!40864 mapDefault!18857)))) b!3165187))

(assert (= (and b!3164957 ((_ is Union!9737) (_2!20394 (h!40864 mapDefault!18857)))) b!3165188))

(declare-fun tp!997085 () Bool)

(declare-fun tp!997083 () Bool)

(declare-fun tp!997084 () Bool)

(declare-fun e!1971757 () Bool)

(declare-fun b!3165189 () Bool)

(assert (=> b!3165189 (= e!1971757 (and tp!997083 tp_is_empty!17037 tp!997084 tp!997085))))

(assert (=> b!3164957 (= tp!996935 e!1971757)))

(assert (= (and b!3164957 ((_ is Cons!35444) (t!234639 mapDefault!18857))) b!3165189))

(declare-fun b!3165191 () Bool)

(declare-fun e!1971758 () Bool)

(declare-fun tp!997089 () Bool)

(declare-fun tp!997087 () Bool)

(assert (=> b!3165191 (= e!1971758 (and tp!997089 tp!997087))))

(declare-fun b!3165192 () Bool)

(declare-fun tp!997086 () Bool)

(assert (=> b!3165192 (= e!1971758 tp!997086)))

(declare-fun b!3165193 () Bool)

(declare-fun tp!997088 () Bool)

(declare-fun tp!997090 () Bool)

(assert (=> b!3165193 (= e!1971758 (and tp!997088 tp!997090))))

(declare-fun b!3165190 () Bool)

(assert (=> b!3165190 (= e!1971758 tp_is_empty!17037)))

(assert (=> b!3164974 (= tp!996959 e!1971758)))

(assert (= (and b!3164974 ((_ is ElementMatch!9737) (_1!20393 (_1!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165190))

(assert (= (and b!3164974 ((_ is Concat!15058) (_1!20393 (_1!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165191))

(assert (= (and b!3164974 ((_ is Star!9737) (_1!20393 (_1!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165192))

(assert (= (and b!3164974 ((_ is Union!9737) (_1!20393 (_1!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))))) b!3165193))

(declare-fun b!3165195 () Bool)

(declare-fun e!1971759 () Bool)

(declare-fun tp!997094 () Bool)

(declare-fun tp!997092 () Bool)

(assert (=> b!3165195 (= e!1971759 (and tp!997094 tp!997092))))

(declare-fun b!3165196 () Bool)

(declare-fun tp!997091 () Bool)

(assert (=> b!3165196 (= e!1971759 tp!997091)))

(declare-fun b!3165197 () Bool)

(declare-fun tp!997093 () Bool)

(declare-fun tp!997095 () Bool)

(assert (=> b!3165197 (= e!1971759 (and tp!997093 tp!997095))))

(declare-fun b!3165194 () Bool)

(assert (=> b!3165194 (= e!1971759 tp_is_empty!17037)))

(assert (=> b!3164974 (= tp!996960 e!1971759)))

(assert (= (and b!3164974 ((_ is ElementMatch!9737) (_2!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165194))

(assert (= (and b!3164974 ((_ is Concat!15058) (_2!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165195))

(assert (= (and b!3164974 ((_ is Star!9737) (_2!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165196))

(assert (= (and b!3164974 ((_ is Union!9737) (_2!20394 (h!40864 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347)))))))))) b!3165197))

(declare-fun tp!997097 () Bool)

(declare-fun e!1971760 () Bool)

(declare-fun tp!997098 () Bool)

(declare-fun b!3165198 () Bool)

(declare-fun tp!997096 () Bool)

(assert (=> b!3165198 (= e!1971760 (and tp!997096 tp_is_empty!17037 tp!997097 tp!997098))))

(assert (=> b!3164974 (= tp!996961 e!1971760)))

(assert (= (and b!3164974 ((_ is Cons!35444) (t!234639 (minValue!4417 (v!35123 (underlying!8545 (v!35124 (underlying!8546 (cache!4207 cache!347))))))))) b!3165198))

(declare-fun b!3165200 () Bool)

(declare-fun e!1971761 () Bool)

(declare-fun tp!997102 () Bool)

(declare-fun tp!997100 () Bool)

(assert (=> b!3165200 (= e!1971761 (and tp!997102 tp!997100))))

(declare-fun b!3165201 () Bool)

(declare-fun tp!997099 () Bool)

(assert (=> b!3165201 (= e!1971761 tp!997099)))

(declare-fun b!3165202 () Bool)

(declare-fun tp!997101 () Bool)

(declare-fun tp!997103 () Bool)

(assert (=> b!3165202 (= e!1971761 (and tp!997101 tp!997103))))

(declare-fun b!3165199 () Bool)

(assert (=> b!3165199 (= e!1971761 tp_is_empty!17037)))

(assert (=> b!3164971 (= tp!996951 e!1971761)))

(assert (= (and b!3164971 ((_ is ElementMatch!9737) (reg!10066 (reg!10066 r!13156)))) b!3165199))

(assert (= (and b!3164971 ((_ is Concat!15058) (reg!10066 (reg!10066 r!13156)))) b!3165200))

(assert (= (and b!3164971 ((_ is Star!9737) (reg!10066 (reg!10066 r!13156)))) b!3165201))

(assert (= (and b!3164971 ((_ is Union!9737) (reg!10066 (reg!10066 r!13156)))) b!3165202))

(declare-fun b!3165204 () Bool)

(declare-fun e!1971762 () Bool)

(declare-fun tp!997107 () Bool)

(declare-fun tp!997105 () Bool)

(assert (=> b!3165204 (= e!1971762 (and tp!997107 tp!997105))))

(declare-fun b!3165205 () Bool)

(declare-fun tp!997104 () Bool)

(assert (=> b!3165205 (= e!1971762 tp!997104)))

(declare-fun b!3165206 () Bool)

(declare-fun tp!997106 () Bool)

(declare-fun tp!997108 () Bool)

(assert (=> b!3165206 (= e!1971762 (and tp!997106 tp!997108))))

(declare-fun b!3165203 () Bool)

(assert (=> b!3165203 (= e!1971762 tp_is_empty!17037)))

(assert (=> b!3164978 (= tp!996964 e!1971762)))

(assert (= (and b!3164978 ((_ is ElementMatch!9737) (regOne!19987 (regOne!19987 r!13156)))) b!3165203))

(assert (= (and b!3164978 ((_ is Concat!15058) (regOne!19987 (regOne!19987 r!13156)))) b!3165204))

(assert (= (and b!3164978 ((_ is Star!9737) (regOne!19987 (regOne!19987 r!13156)))) b!3165205))

(assert (= (and b!3164978 ((_ is Union!9737) (regOne!19987 (regOne!19987 r!13156)))) b!3165206))

(declare-fun b!3165208 () Bool)

(declare-fun e!1971763 () Bool)

(declare-fun tp!997112 () Bool)

(declare-fun tp!997110 () Bool)

(assert (=> b!3165208 (= e!1971763 (and tp!997112 tp!997110))))

(declare-fun b!3165209 () Bool)

(declare-fun tp!997109 () Bool)

(assert (=> b!3165209 (= e!1971763 tp!997109)))

(declare-fun b!3165210 () Bool)

(declare-fun tp!997111 () Bool)

(declare-fun tp!997113 () Bool)

(assert (=> b!3165210 (= e!1971763 (and tp!997111 tp!997113))))

(declare-fun b!3165207 () Bool)

(assert (=> b!3165207 (= e!1971763 tp_is_empty!17037)))

(assert (=> b!3164978 (= tp!996966 e!1971763)))

(assert (= (and b!3164978 ((_ is ElementMatch!9737) (regTwo!19987 (regOne!19987 r!13156)))) b!3165207))

(assert (= (and b!3164978 ((_ is Concat!15058) (regTwo!19987 (regOne!19987 r!13156)))) b!3165208))

(assert (= (and b!3164978 ((_ is Star!9737) (regTwo!19987 (regOne!19987 r!13156)))) b!3165209))

(assert (= (and b!3164978 ((_ is Union!9737) (regTwo!19987 (regOne!19987 r!13156)))) b!3165210))

(declare-fun b!3165212 () Bool)

(declare-fun e!1971764 () Bool)

(declare-fun tp!997117 () Bool)

(declare-fun tp!997115 () Bool)

(assert (=> b!3165212 (= e!1971764 (and tp!997117 tp!997115))))

(declare-fun b!3165213 () Bool)

(declare-fun tp!997114 () Bool)

(assert (=> b!3165213 (= e!1971764 tp!997114)))

(declare-fun b!3165214 () Bool)

(declare-fun tp!997116 () Bool)

(declare-fun tp!997118 () Bool)

(assert (=> b!3165214 (= e!1971764 (and tp!997116 tp!997118))))

(declare-fun b!3165211 () Bool)

(assert (=> b!3165211 (= e!1971764 tp_is_empty!17037)))

(assert (=> b!3164956 (= tp!996932 e!1971764)))

(assert (= (and b!3164956 ((_ is ElementMatch!9737) (_1!20393 (_1!20394 (h!40864 mapValue!18857))))) b!3165211))

(assert (= (and b!3164956 ((_ is Concat!15058) (_1!20393 (_1!20394 (h!40864 mapValue!18857))))) b!3165212))

(assert (= (and b!3164956 ((_ is Star!9737) (_1!20393 (_1!20394 (h!40864 mapValue!18857))))) b!3165213))

(assert (= (and b!3164956 ((_ is Union!9737) (_1!20393 (_1!20394 (h!40864 mapValue!18857))))) b!3165214))

(declare-fun b!3165216 () Bool)

(declare-fun e!1971765 () Bool)

(declare-fun tp!997122 () Bool)

(declare-fun tp!997120 () Bool)

(assert (=> b!3165216 (= e!1971765 (and tp!997122 tp!997120))))

(declare-fun b!3165217 () Bool)

(declare-fun tp!997119 () Bool)

(assert (=> b!3165217 (= e!1971765 tp!997119)))

(declare-fun b!3165218 () Bool)

(declare-fun tp!997121 () Bool)

(declare-fun tp!997123 () Bool)

(assert (=> b!3165218 (= e!1971765 (and tp!997121 tp!997123))))

(declare-fun b!3165215 () Bool)

(assert (=> b!3165215 (= e!1971765 tp_is_empty!17037)))

(assert (=> b!3164956 (= tp!996934 e!1971765)))

(assert (= (and b!3164956 ((_ is ElementMatch!9737) (_2!20394 (h!40864 mapValue!18857)))) b!3165215))

(assert (= (and b!3164956 ((_ is Concat!15058) (_2!20394 (h!40864 mapValue!18857)))) b!3165216))

(assert (= (and b!3164956 ((_ is Star!9737) (_2!20394 (h!40864 mapValue!18857)))) b!3165217))

(assert (= (and b!3164956 ((_ is Union!9737) (_2!20394 (h!40864 mapValue!18857)))) b!3165218))

(declare-fun tp!997125 () Bool)

(declare-fun b!3165219 () Bool)

(declare-fun tp!997126 () Bool)

(declare-fun tp!997124 () Bool)

(declare-fun e!1971766 () Bool)

(assert (=> b!3165219 (= e!1971766 (and tp!997124 tp_is_empty!17037 tp!997125 tp!997126))))

(assert (=> b!3164956 (= tp!996937 e!1971766)))

(assert (= (and b!3164956 ((_ is Cons!35444) (t!234639 mapValue!18857))) b!3165219))

(declare-fun b!3165221 () Bool)

(declare-fun e!1971767 () Bool)

(declare-fun tp!997130 () Bool)

(declare-fun tp!997128 () Bool)

(assert (=> b!3165221 (= e!1971767 (and tp!997130 tp!997128))))

(declare-fun b!3165222 () Bool)

(declare-fun tp!997127 () Bool)

(assert (=> b!3165222 (= e!1971767 tp!997127)))

(declare-fun b!3165223 () Bool)

(declare-fun tp!997129 () Bool)

(declare-fun tp!997131 () Bool)

(assert (=> b!3165223 (= e!1971767 (and tp!997129 tp!997131))))

(declare-fun b!3165220 () Bool)

(assert (=> b!3165220 (= e!1971767 tp_is_empty!17037)))

(assert (=> b!3164970 (= tp!996954 e!1971767)))

(assert (= (and b!3164970 ((_ is ElementMatch!9737) (regOne!19986 (reg!10066 r!13156)))) b!3165220))

(assert (= (and b!3164970 ((_ is Concat!15058) (regOne!19986 (reg!10066 r!13156)))) b!3165221))

(assert (= (and b!3164970 ((_ is Star!9737) (regOne!19986 (reg!10066 r!13156)))) b!3165222))

(assert (= (and b!3164970 ((_ is Union!9737) (regOne!19986 (reg!10066 r!13156)))) b!3165223))

(declare-fun b!3165225 () Bool)

(declare-fun e!1971768 () Bool)

(declare-fun tp!997135 () Bool)

(declare-fun tp!997133 () Bool)

(assert (=> b!3165225 (= e!1971768 (and tp!997135 tp!997133))))

(declare-fun b!3165226 () Bool)

(declare-fun tp!997132 () Bool)

(assert (=> b!3165226 (= e!1971768 tp!997132)))

(declare-fun b!3165227 () Bool)

(declare-fun tp!997134 () Bool)

(declare-fun tp!997136 () Bool)

(assert (=> b!3165227 (= e!1971768 (and tp!997134 tp!997136))))

(declare-fun b!3165224 () Bool)

(assert (=> b!3165224 (= e!1971768 tp_is_empty!17037)))

(assert (=> b!3164970 (= tp!996952 e!1971768)))

(assert (= (and b!3164970 ((_ is ElementMatch!9737) (regTwo!19986 (reg!10066 r!13156)))) b!3165224))

(assert (= (and b!3164970 ((_ is Concat!15058) (regTwo!19986 (reg!10066 r!13156)))) b!3165225))

(assert (= (and b!3164970 ((_ is Star!9737) (regTwo!19986 (reg!10066 r!13156)))) b!3165226))

(assert (= (and b!3164970 ((_ is Union!9737) (regTwo!19986 (reg!10066 r!13156)))) b!3165227))

(declare-fun b!3165229 () Bool)

(declare-fun e!1971769 () Bool)

(declare-fun tp!997140 () Bool)

(declare-fun tp!997138 () Bool)

(assert (=> b!3165229 (= e!1971769 (and tp!997140 tp!997138))))

(declare-fun b!3165230 () Bool)

(declare-fun tp!997137 () Bool)

(assert (=> b!3165230 (= e!1971769 tp!997137)))

(declare-fun b!3165231 () Bool)

(declare-fun tp!997139 () Bool)

(declare-fun tp!997141 () Bool)

(assert (=> b!3165231 (= e!1971769 (and tp!997139 tp!997141))))

(declare-fun b!3165228 () Bool)

(assert (=> b!3165228 (= e!1971769 tp_is_empty!17037)))

(assert (=> b!3164982 (= tp!996969 e!1971769)))

(assert (= (and b!3164982 ((_ is ElementMatch!9737) (regOne!19987 (regTwo!19987 r!13156)))) b!3165228))

(assert (= (and b!3164982 ((_ is Concat!15058) (regOne!19987 (regTwo!19987 r!13156)))) b!3165229))

(assert (= (and b!3164982 ((_ is Star!9737) (regOne!19987 (regTwo!19987 r!13156)))) b!3165230))

(assert (= (and b!3164982 ((_ is Union!9737) (regOne!19987 (regTwo!19987 r!13156)))) b!3165231))

(declare-fun b!3165233 () Bool)

(declare-fun e!1971770 () Bool)

(declare-fun tp!997145 () Bool)

(declare-fun tp!997143 () Bool)

(assert (=> b!3165233 (= e!1971770 (and tp!997145 tp!997143))))

(declare-fun b!3165234 () Bool)

(declare-fun tp!997142 () Bool)

(assert (=> b!3165234 (= e!1971770 tp!997142)))

(declare-fun b!3165235 () Bool)

(declare-fun tp!997144 () Bool)

(declare-fun tp!997146 () Bool)

(assert (=> b!3165235 (= e!1971770 (and tp!997144 tp!997146))))

(declare-fun b!3165232 () Bool)

(assert (=> b!3165232 (= e!1971770 tp_is_empty!17037)))

(assert (=> b!3164982 (= tp!996971 e!1971770)))

(assert (= (and b!3164982 ((_ is ElementMatch!9737) (regTwo!19987 (regTwo!19987 r!13156)))) b!3165232))

(assert (= (and b!3164982 ((_ is Concat!15058) (regTwo!19987 (regTwo!19987 r!13156)))) b!3165233))

(assert (= (and b!3164982 ((_ is Star!9737) (regTwo!19987 (regTwo!19987 r!13156)))) b!3165234))

(assert (= (and b!3164982 ((_ is Union!9737) (regTwo!19987 (regTwo!19987 r!13156)))) b!3165235))

(declare-fun b!3165237 () Bool)

(declare-fun e!1971771 () Bool)

(declare-fun tp!997150 () Bool)

(declare-fun tp!997148 () Bool)

(assert (=> b!3165237 (= e!1971771 (and tp!997150 tp!997148))))

(declare-fun b!3165238 () Bool)

(declare-fun tp!997147 () Bool)

(assert (=> b!3165238 (= e!1971771 tp!997147)))

(declare-fun b!3165239 () Bool)

(declare-fun tp!997149 () Bool)

(declare-fun tp!997151 () Bool)

(assert (=> b!3165239 (= e!1971771 (and tp!997149 tp!997151))))

(declare-fun b!3165236 () Bool)

(assert (=> b!3165236 (= e!1971771 tp_is_empty!17037)))

(assert (=> b!3164977 (= tp!996962 e!1971771)))

(assert (= (and b!3164977 ((_ is ElementMatch!9737) (reg!10066 (regOne!19987 r!13156)))) b!3165236))

(assert (= (and b!3164977 ((_ is Concat!15058) (reg!10066 (regOne!19987 r!13156)))) b!3165237))

(assert (= (and b!3164977 ((_ is Star!9737) (reg!10066 (regOne!19987 r!13156)))) b!3165238))

(assert (= (and b!3164977 ((_ is Union!9737) (reg!10066 (regOne!19987 r!13156)))) b!3165239))

(declare-fun mapIsEmpty!18858 () Bool)

(declare-fun mapRes!18858 () Bool)

(assert (=> mapIsEmpty!18858 mapRes!18858))

(declare-fun condMapEmpty!18858 () Bool)

(declare-fun mapDefault!18858 () List!35568)

(assert (=> mapNonEmpty!18857 (= condMapEmpty!18858 (= mapRest!18857 ((as const (Array (_ BitVec 32) List!35568)) mapDefault!18858)))))

(declare-fun e!1971772 () Bool)

(assert (=> mapNonEmpty!18857 (= tp!996933 (and e!1971772 mapRes!18858))))

(declare-fun tp!997157 () Bool)

(declare-fun tp!997156 () Bool)

(declare-fun tp!997152 () Bool)

(declare-fun b!3165241 () Bool)

(assert (=> b!3165241 (= e!1971772 (and tp!997152 tp_is_empty!17037 tp!997157 tp!997156))))

(declare-fun tp!997158 () Bool)

(declare-fun e!1971773 () Bool)

(declare-fun tp!997153 () Bool)

(declare-fun b!3165240 () Bool)

(declare-fun tp!997155 () Bool)

(assert (=> b!3165240 (= e!1971773 (and tp!997153 tp_is_empty!17037 tp!997155 tp!997158))))

(declare-fun mapNonEmpty!18858 () Bool)

(declare-fun tp!997154 () Bool)

(assert (=> mapNonEmpty!18858 (= mapRes!18858 (and tp!997154 e!1971773))))

(declare-fun mapRest!18858 () (Array (_ BitVec 32) List!35568))

(declare-fun mapKey!18858 () (_ BitVec 32))

(declare-fun mapValue!18858 () List!35568)

(assert (=> mapNonEmpty!18858 (= mapRest!18857 (store mapRest!18858 mapKey!18858 mapValue!18858))))

(assert (= (and mapNonEmpty!18857 condMapEmpty!18858) mapIsEmpty!18858))

(assert (= (and mapNonEmpty!18857 (not condMapEmpty!18858)) mapNonEmpty!18858))

(assert (= (and mapNonEmpty!18858 ((_ is Cons!35444) mapValue!18858)) b!3165240))

(assert (= (and mapNonEmpty!18857 ((_ is Cons!35444) mapDefault!18858)) b!3165241))

(declare-fun m!3427604 () Bool)

(assert (=> mapNonEmpty!18858 m!3427604))

(declare-fun b!3165243 () Bool)

(declare-fun e!1971774 () Bool)

(declare-fun tp!997162 () Bool)

(declare-fun tp!997160 () Bool)

(assert (=> b!3165243 (= e!1971774 (and tp!997162 tp!997160))))

(declare-fun b!3165244 () Bool)

(declare-fun tp!997159 () Bool)

(assert (=> b!3165244 (= e!1971774 tp!997159)))

(declare-fun b!3165245 () Bool)

(declare-fun tp!997161 () Bool)

(declare-fun tp!997163 () Bool)

(assert (=> b!3165245 (= e!1971774 (and tp!997161 tp!997163))))

(declare-fun b!3165242 () Bool)

(assert (=> b!3165242 (= e!1971774 tp_is_empty!17037)))

(assert (=> b!3164986 (= tp!996974 e!1971774)))

(assert (= (and b!3164986 ((_ is ElementMatch!9737) (regOne!19987 (regOne!19986 r!13156)))) b!3165242))

(assert (= (and b!3164986 ((_ is Concat!15058) (regOne!19987 (regOne!19986 r!13156)))) b!3165243))

(assert (= (and b!3164986 ((_ is Star!9737) (regOne!19987 (regOne!19986 r!13156)))) b!3165244))

(assert (= (and b!3164986 ((_ is Union!9737) (regOne!19987 (regOne!19986 r!13156)))) b!3165245))

(declare-fun b!3165247 () Bool)

(declare-fun e!1971775 () Bool)

(declare-fun tp!997167 () Bool)

(declare-fun tp!997165 () Bool)

(assert (=> b!3165247 (= e!1971775 (and tp!997167 tp!997165))))

(declare-fun b!3165248 () Bool)

(declare-fun tp!997164 () Bool)

(assert (=> b!3165248 (= e!1971775 tp!997164)))

(declare-fun b!3165249 () Bool)

(declare-fun tp!997166 () Bool)

(declare-fun tp!997168 () Bool)

(assert (=> b!3165249 (= e!1971775 (and tp!997166 tp!997168))))

(declare-fun b!3165246 () Bool)

(assert (=> b!3165246 (= e!1971775 tp_is_empty!17037)))

(assert (=> b!3164986 (= tp!996976 e!1971775)))

(assert (= (and b!3164986 ((_ is ElementMatch!9737) (regTwo!19987 (regOne!19986 r!13156)))) b!3165246))

(assert (= (and b!3164986 ((_ is Concat!15058) (regTwo!19987 (regOne!19986 r!13156)))) b!3165247))

(assert (= (and b!3164986 ((_ is Star!9737) (regTwo!19987 (regOne!19986 r!13156)))) b!3165248))

(assert (= (and b!3164986 ((_ is Union!9737) (regTwo!19987 (regOne!19986 r!13156)))) b!3165249))

(declare-fun b!3165251 () Bool)

(declare-fun e!1971776 () Bool)

(declare-fun tp!997172 () Bool)

(declare-fun tp!997170 () Bool)

(assert (=> b!3165251 (= e!1971776 (and tp!997172 tp!997170))))

(declare-fun b!3165252 () Bool)

(declare-fun tp!997169 () Bool)

(assert (=> b!3165252 (= e!1971776 tp!997169)))

(declare-fun b!3165253 () Bool)

(declare-fun tp!997171 () Bool)

(declare-fun tp!997173 () Bool)

(assert (=> b!3165253 (= e!1971776 (and tp!997171 tp!997173))))

(declare-fun b!3165250 () Bool)

(assert (=> b!3165250 (= e!1971776 tp_is_empty!17037)))

(assert (=> b!3164949 (= tp!996914 e!1971776)))

(assert (= (and b!3164949 ((_ is ElementMatch!9737) (_1!20393 (_1!20394 (h!40864 mapDefault!18854))))) b!3165250))

(assert (= (and b!3164949 ((_ is Concat!15058) (_1!20393 (_1!20394 (h!40864 mapDefault!18854))))) b!3165251))

(assert (= (and b!3164949 ((_ is Star!9737) (_1!20393 (_1!20394 (h!40864 mapDefault!18854))))) b!3165252))

(assert (= (and b!3164949 ((_ is Union!9737) (_1!20393 (_1!20394 (h!40864 mapDefault!18854))))) b!3165253))

(declare-fun b!3165255 () Bool)

(declare-fun e!1971777 () Bool)

(declare-fun tp!997177 () Bool)

(declare-fun tp!997175 () Bool)

(assert (=> b!3165255 (= e!1971777 (and tp!997177 tp!997175))))

(declare-fun b!3165256 () Bool)

(declare-fun tp!997174 () Bool)

(assert (=> b!3165256 (= e!1971777 tp!997174)))

(declare-fun b!3165257 () Bool)

(declare-fun tp!997176 () Bool)

(declare-fun tp!997178 () Bool)

(assert (=> b!3165257 (= e!1971777 (and tp!997176 tp!997178))))

(declare-fun b!3165254 () Bool)

(assert (=> b!3165254 (= e!1971777 tp_is_empty!17037)))

(assert (=> b!3164949 (= tp!996915 e!1971777)))

(assert (= (and b!3164949 ((_ is ElementMatch!9737) (_2!20394 (h!40864 mapDefault!18854)))) b!3165254))

(assert (= (and b!3164949 ((_ is Concat!15058) (_2!20394 (h!40864 mapDefault!18854)))) b!3165255))

(assert (= (and b!3164949 ((_ is Star!9737) (_2!20394 (h!40864 mapDefault!18854)))) b!3165256))

(assert (= (and b!3164949 ((_ is Union!9737) (_2!20394 (h!40864 mapDefault!18854)))) b!3165257))

(declare-fun b!3165258 () Bool)

(declare-fun tp!997179 () Bool)

(declare-fun tp!997181 () Bool)

(declare-fun e!1971778 () Bool)

(declare-fun tp!997180 () Bool)

(assert (=> b!3165258 (= e!1971778 (and tp!997179 tp_is_empty!17037 tp!997180 tp!997181))))

(assert (=> b!3164949 (= tp!996916 e!1971778)))

(assert (= (and b!3164949 ((_ is Cons!35444) (t!234639 mapDefault!18854))) b!3165258))

(declare-fun b!3165260 () Bool)

(declare-fun e!1971779 () Bool)

(declare-fun tp!997185 () Bool)

(declare-fun tp!997183 () Bool)

(assert (=> b!3165260 (= e!1971779 (and tp!997185 tp!997183))))

(declare-fun b!3165261 () Bool)

(declare-fun tp!997182 () Bool)

(assert (=> b!3165261 (= e!1971779 tp!997182)))

(declare-fun b!3165262 () Bool)

(declare-fun tp!997184 () Bool)

(declare-fun tp!997186 () Bool)

(assert (=> b!3165262 (= e!1971779 (and tp!997184 tp!997186))))

(declare-fun b!3165259 () Bool)

(assert (=> b!3165259 (= e!1971779 tp_is_empty!17037)))

(assert (=> b!3164972 (= tp!996953 e!1971779)))

(assert (= (and b!3164972 ((_ is ElementMatch!9737) (regOne!19987 (reg!10066 r!13156)))) b!3165259))

(assert (= (and b!3164972 ((_ is Concat!15058) (regOne!19987 (reg!10066 r!13156)))) b!3165260))

(assert (= (and b!3164972 ((_ is Star!9737) (regOne!19987 (reg!10066 r!13156)))) b!3165261))

(assert (= (and b!3164972 ((_ is Union!9737) (regOne!19987 (reg!10066 r!13156)))) b!3165262))

(declare-fun b!3165264 () Bool)

(declare-fun e!1971780 () Bool)

(declare-fun tp!997190 () Bool)

(declare-fun tp!997188 () Bool)

(assert (=> b!3165264 (= e!1971780 (and tp!997190 tp!997188))))

(declare-fun b!3165265 () Bool)

(declare-fun tp!997187 () Bool)

(assert (=> b!3165265 (= e!1971780 tp!997187)))

(declare-fun b!3165266 () Bool)

(declare-fun tp!997189 () Bool)

(declare-fun tp!997191 () Bool)

(assert (=> b!3165266 (= e!1971780 (and tp!997189 tp!997191))))

(declare-fun b!3165263 () Bool)

(assert (=> b!3165263 (= e!1971780 tp_is_empty!17037)))

(assert (=> b!3164972 (= tp!996955 e!1971780)))

(assert (= (and b!3164972 ((_ is ElementMatch!9737) (regTwo!19987 (reg!10066 r!13156)))) b!3165263))

(assert (= (and b!3164972 ((_ is Concat!15058) (regTwo!19987 (reg!10066 r!13156)))) b!3165264))

(assert (= (and b!3164972 ((_ is Star!9737) (regTwo!19987 (reg!10066 r!13156)))) b!3165265))

(assert (= (and b!3164972 ((_ is Union!9737) (regTwo!19987 (reg!10066 r!13156)))) b!3165266))

(declare-fun b_lambda!86407 () Bool)

(assert (= b_lambda!86405 (or (and b!3164863 b_free!83115) b_lambda!86407)))

(declare-fun b_lambda!86409 () Bool)

(assert (= b_lambda!86403 (or (and b!3164863 b_free!83115) b_lambda!86409)))

(check-sat (not bm!229427) (not b!3165223) (not b!3165209) (not b!3165183) tp_is_empty!17037 (not bm!229424) (not b!3165219) (not b!3165205) (not b!3165114) b_and!209367 (not b!3165204) (not b!3165253) (not b!3165257) (not b!3165137) (not b!3165170) (not d!868772) (not b!3165229) (not b!3165191) (not b!3165197) (not d!868762) (not b!3165264) (not b_next!83819) (not b!3165007) (not b!3165226) (not b!3165239) (not b!3165249) (not b!3165176) (not tb!155095) (not b!3165017) (not b!3165180) (not b!3165240) (not b!3165166) (not b!3165160) (not b!3165251) (not b!3165113) (not b!3165214) (not b!3165188) (not b!3165075) (not b!3165221) (not d!868760) (not b!3165266) (not b!3165225) (not b!3165127) (not b!3165163) (not b!3165184) (not bm!229446) (not b!3165200) (not bm!229423) (not b!3165152) (not b!3165212) (not b!3165156) (not b!3165261) (not b!3165110) (not b!3165135) (not b!3165134) (not b!3165016) (not b!3165033) (not b!3165265) (not b!3165049) (not b!3165125) (not b!3165030) (not b!3165129) (not d!868764) (not b!3165182) (not b!3165143) (not b!3165158) (not b!3165216) (not bm!229442) (not bm!229421) (not b!3165217) (not b!3165167) (not bm!229413) (not b!3165068) (not bm!229418) (not b!3165252) (not b!3165195) (not b!3165118) (not b_lambda!86407) (not d!868778) (not b!3165241) (not b!3165172) (not b!3165213) (not bm!229420) (not b!3165106) (not b!3165178) (not b!3165149) (not b!3165123) (not b!3165187) (not d!868768) (not b!3165234) (not b!3165100) (not b!3165101) (not b!3165147) (not b!3165168) (not d!868756) (not b!3165122) (not b!3165102) (not b!3165141) (not b!3165130) (not b!3165056) (not b!3165192) (not bm!229428) (not b!3165235) (not b!3165131) (not b!3165230) (not b!3165243) (not b!3165034) (not b!3165222) (not b!3165206) (not b!3165244) (not d!868766) (not b!3165112) (not b!3165159) (not b!3165237) (not bm!229443) (not b!3165116) (not mapNonEmpty!18858) (not bm!229417) (not b!3165208) (not b!3165150) (not b!3165238) (not b!3165142) (not bm!229447) (not b!3165248) (not b!3165186) (not b!3165000) (not b!3165046) (not b!3165126) (not b!3165231) (not b!3165202) (not b_next!83817) (not b!3165201) (not b!3165258) (not b!3165174) (not b!3165227) (not b!3165133) (not b!3165171) (not b!3165117) (not b!3165245) (not b!3165179) (not b!3165196) b_and!209373 (not b!3165256) (not b!3165247) (not b!3165164) (not b!3165193) (not b!3165121) (not b!3165255) (not bm!229414) (not bm!229445) (not b_lambda!86409) (not b!3165154) (not b!3165146) (not b!3165189) (not b!3165198) (not b!3165138) (not b!3165233) (not b!3165218) (not b!3165139) (not b!3165175) (not b!3165151) (not b!3165119) (not b!3165262) (not b!3165210) (not b!3165162) (not b!3165048) (not b!3165145) (not bm!229444) (not b!3165155) (not b!3165260))
(check-sat b_and!209373 b_and!209367 (not b_next!83817) (not b_next!83819))
