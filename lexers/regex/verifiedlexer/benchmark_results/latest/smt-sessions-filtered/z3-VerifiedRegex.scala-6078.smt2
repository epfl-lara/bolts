; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296328 () Bool)

(assert start!296328)

(declare-fun b!3160927 () Bool)

(declare-fun b_free!82993 () Bool)

(declare-fun b_next!83697 () Bool)

(assert (=> b!3160927 (= b_free!82993 (not b_next!83697))))

(declare-fun tp!994447 () Bool)

(declare-fun b_and!209235 () Bool)

(assert (=> b!3160927 (= tp!994447 b_and!209235)))

(declare-fun b!3160934 () Bool)

(declare-fun b_free!82995 () Bool)

(declare-fun b_next!83699 () Bool)

(assert (=> b!3160934 (= b_free!82995 (not b_next!83699))))

(declare-fun tp!994446 () Bool)

(declare-fun b_and!209237 () Bool)

(assert (=> b!3160934 (= tp!994446 b_and!209237)))

(declare-fun b!3160923 () Bool)

(declare-fun res!1287015 () Bool)

(declare-fun e!1969264 () Bool)

(assert (=> b!3160923 (=> (not res!1287015) (not e!1969264))))

(declare-datatypes ((C!19600 0))(
  ( (C!19601 (val!11836 Int)) )
))
(declare-datatypes ((Regex!9707 0))(
  ( (ElementMatch!9707 (c!531598 C!19600)) (Concat!15028 (regOne!19926 Regex!9707) (regTwo!19926 Regex!9707)) (EmptyExpr!9707) (Star!9707 (reg!10036 Regex!9707)) (EmptyLang!9707) (Union!9707 (regOne!19927 Regex!9707) (regTwo!19927 Regex!9707)) )
))
(declare-datatypes ((tuple2!34348 0))(
  ( (tuple2!34349 (_1!20306 Regex!9707) (_2!20306 C!19600)) )
))
(declare-datatypes ((tuple2!34350 0))(
  ( (tuple2!34351 (_1!20307 tuple2!34348) (_2!20307 Regex!9707)) )
))
(declare-datatypes ((array!14694 0))(
  ( (array!14695 (arr!6546 (Array (_ BitVec 32) (_ BitVec 64))) (size!26632 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4044 0))(
  ( (HashableExt!4043 (__x!22490 Int)) )
))
(declare-datatypes ((List!35535 0))(
  ( (Nil!35411) (Cons!35411 (h!40831 tuple2!34350) (t!234600 List!35535)) )
))
(declare-datatypes ((array!14696 0))(
  ( (array!14697 (arr!6547 (Array (_ BitVec 32) List!35535)) (size!26633 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8256 0))(
  ( (LongMapFixedSize!8257 (defaultEntry!4513 Int) (mask!10775 (_ BitVec 32)) (extraKeys!4377 (_ BitVec 32)) (zeroValue!4387 List!35535) (minValue!4387 List!35535) (_size!8299 (_ BitVec 32)) (_keys!4428 array!14694) (_values!4409 array!14696) (_vacant!4189 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16321 0))(
  ( (Cell!16322 (v!35038 LongMapFixedSize!8256)) )
))
(declare-datatypes ((MutLongMap!4128 0))(
  ( (LongMap!4128 (underlying!8485 Cell!16321)) (MutLongMapExt!4127 (__x!22491 Int)) )
))
(declare-datatypes ((Cell!16323 0))(
  ( (Cell!16324 (v!35039 MutLongMap!4128)) )
))
(declare-datatypes ((MutableMap!4034 0))(
  ( (MutableMapExt!4033 (__x!22492 Int)) (HashMap!4034 (underlying!8486 Cell!16323) (hashF!6076 Hashable!4044) (_size!8300 (_ BitVec 32)) (defaultValue!4205 Int)) )
))
(declare-datatypes ((Cache!338 0))(
  ( (Cache!339 (cache!4171 MutableMap!4034)) )
))
(declare-fun cache!347 () Cache!338)

(declare-fun valid!3215 (Cache!338) Bool)

(assert (=> b!3160923 (= res!1287015 (valid!3215 cache!347))))

(declare-fun b!3160924 () Bool)

(declare-fun e!1969262 () Bool)

(declare-fun e!1969263 () Bool)

(assert (=> b!3160924 (= e!1969262 e!1969263)))

(declare-fun b!3160925 () Bool)

(declare-fun e!1969268 () Bool)

(declare-fun tp!994453 () Bool)

(assert (=> b!3160925 (= e!1969268 tp!994453)))

(declare-fun b!3160926 () Bool)

(declare-fun tp!994448 () Bool)

(declare-fun tp!994455 () Bool)

(assert (=> b!3160926 (= e!1969268 (and tp!994448 tp!994455))))

(declare-fun e!1969261 () Bool)

(declare-fun e!1969260 () Bool)

(assert (=> b!3160927 (= e!1969261 (and e!1969260 tp!994447))))

(declare-fun b!3160928 () Bool)

(declare-fun e!1969265 () Bool)

(declare-fun tp!994449 () Bool)

(declare-fun mapRes!18731 () Bool)

(assert (=> b!3160928 (= e!1969265 (and tp!994449 mapRes!18731))))

(declare-fun condMapEmpty!18731 () Bool)

(declare-fun mapDefault!18731 () List!35535)

(assert (=> b!3160928 (= condMapEmpty!18731 (= (arr!6547 (_values!4409 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) ((as const (Array (_ BitVec 32) List!35535)) mapDefault!18731)))))

(declare-fun b!3160929 () Bool)

(declare-fun e!1969267 () Bool)

(assert (=> b!3160929 (= e!1969267 e!1969261)))

(declare-fun b!3160930 () Bool)

(declare-fun tp!994457 () Bool)

(declare-fun tp!994451 () Bool)

(assert (=> b!3160930 (= e!1969268 (and tp!994457 tp!994451))))

(declare-fun b!3160931 () Bool)

(declare-fun res!1287016 () Bool)

(assert (=> b!3160931 (=> (not res!1287016) (not e!1969264))))

(declare-fun r!13156 () Regex!9707)

(get-info :version)

(assert (=> b!3160931 (= res!1287016 (and (not ((_ is EmptyExpr!9707) r!13156)) (not ((_ is EmptyLang!9707) r!13156)) (not ((_ is ElementMatch!9707) r!13156)) ((_ is Union!9707) r!13156)))))

(declare-fun b!3160932 () Bool)

(declare-fun res!1287017 () Bool)

(assert (=> b!3160932 (=> (not res!1287017) (not e!1969264))))

(declare-fun a!2409 () C!19600)

(declare-datatypes ((Option!6871 0))(
  ( (None!6870) (Some!6870 (v!35040 Regex!9707)) )
))
(declare-fun get!11192 (Cache!338 Regex!9707 C!19600) Option!6871)

(assert (=> b!3160932 (= res!1287017 (not ((_ is Some!6870) (get!11192 cache!347 r!13156 a!2409))))))

(declare-fun res!1287018 () Bool)

(assert (=> start!296328 (=> (not res!1287018) (not e!1969264))))

(declare-fun validRegex!4437 (Regex!9707) Bool)

(assert (=> start!296328 (= res!1287018 (validRegex!4437 r!13156))))

(assert (=> start!296328 e!1969264))

(assert (=> start!296328 e!1969268))

(declare-fun inv!48046 (Cache!338) Bool)

(assert (=> start!296328 (and (inv!48046 cache!347) e!1969267)))

(declare-fun tp_is_empty!16977 () Bool)

(assert (=> start!296328 tp_is_empty!16977))

(declare-fun b!3160933 () Bool)

(declare-fun lt!1062785 () MutLongMap!4128)

(assert (=> b!3160933 (= e!1969260 (and e!1969262 ((_ is LongMap!4128) lt!1062785)))))

(assert (=> b!3160933 (= lt!1062785 (v!35039 (underlying!8486 (cache!4171 cache!347))))))

(declare-fun tp!994456 () Bool)

(declare-fun tp!994454 () Bool)

(declare-fun e!1969269 () Bool)

(declare-fun array_inv!4690 (array!14694) Bool)

(declare-fun array_inv!4691 (array!14696) Bool)

(assert (=> b!3160934 (= e!1969269 (and tp!994446 tp!994456 tp!994454 (array_inv!4690 (_keys!4428 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) (array_inv!4691 (_values!4409 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) e!1969265))))

(declare-fun mapNonEmpty!18731 () Bool)

(declare-fun tp!994450 () Bool)

(declare-fun tp!994452 () Bool)

(assert (=> mapNonEmpty!18731 (= mapRes!18731 (and tp!994450 tp!994452))))

(declare-fun mapKey!18731 () (_ BitVec 32))

(declare-fun mapValue!18731 () List!35535)

(declare-fun mapRest!18731 () (Array (_ BitVec 32) List!35535))

(assert (=> mapNonEmpty!18731 (= (arr!6547 (_values!4409 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) (store mapRest!18731 mapKey!18731 mapValue!18731))))

(declare-fun b!3160935 () Bool)

(assert (=> b!3160935 (= e!1969263 e!1969269)))

(declare-fun b!3160936 () Bool)

(assert (=> b!3160936 (= e!1969264 (not (validRegex!4437 (regTwo!19927 r!13156))))))

(declare-datatypes ((tuple2!34352 0))(
  ( (tuple2!34353 (_1!20308 Regex!9707) (_2!20308 Cache!338)) )
))
(declare-fun lt!1062784 () tuple2!34352)

(declare-fun derivativeStepMem!17 (Regex!9707 C!19600 Cache!338) tuple2!34352)

(assert (=> b!3160936 (= lt!1062784 (derivativeStepMem!17 (regOne!19927 r!13156) a!2409 cache!347))))

(declare-fun b!3160937 () Bool)

(assert (=> b!3160937 (= e!1969268 tp_is_empty!16977)))

(declare-fun mapIsEmpty!18731 () Bool)

(assert (=> mapIsEmpty!18731 mapRes!18731))

(assert (= (and start!296328 res!1287018) b!3160923))

(assert (= (and b!3160923 res!1287015) b!3160932))

(assert (= (and b!3160932 res!1287017) b!3160931))

(assert (= (and b!3160931 res!1287016) b!3160936))

(assert (= (and start!296328 ((_ is ElementMatch!9707) r!13156)) b!3160937))

(assert (= (and start!296328 ((_ is Concat!15028) r!13156)) b!3160930))

(assert (= (and start!296328 ((_ is Star!9707) r!13156)) b!3160925))

(assert (= (and start!296328 ((_ is Union!9707) r!13156)) b!3160926))

(assert (= (and b!3160928 condMapEmpty!18731) mapIsEmpty!18731))

(assert (= (and b!3160928 (not condMapEmpty!18731)) mapNonEmpty!18731))

(assert (= b!3160934 b!3160928))

(assert (= b!3160935 b!3160934))

(assert (= b!3160924 b!3160935))

(assert (= (and b!3160933 ((_ is LongMap!4128) (v!35039 (underlying!8486 (cache!4171 cache!347))))) b!3160924))

(assert (= b!3160927 b!3160933))

(assert (= (and b!3160929 ((_ is HashMap!4034) (cache!4171 cache!347))) b!3160927))

(assert (= start!296328 b!3160929))

(declare-fun m!3425647 () Bool)

(assert (=> mapNonEmpty!18731 m!3425647))

(declare-fun m!3425649 () Bool)

(assert (=> start!296328 m!3425649))

(declare-fun m!3425651 () Bool)

(assert (=> start!296328 m!3425651))

(declare-fun m!3425653 () Bool)

(assert (=> b!3160936 m!3425653))

(declare-fun m!3425655 () Bool)

(assert (=> b!3160936 m!3425655))

(declare-fun m!3425657 () Bool)

(assert (=> b!3160934 m!3425657))

(declare-fun m!3425659 () Bool)

(assert (=> b!3160934 m!3425659))

(declare-fun m!3425661 () Bool)

(assert (=> b!3160923 m!3425661))

(declare-fun m!3425663 () Bool)

(assert (=> b!3160932 m!3425663))

(check-sat (not b_next!83697) (not start!296328) (not b!3160923) (not b_next!83699) (not b!3160928) (not b!3160932) (not b!3160930) (not b!3160925) (not b!3160934) b_and!209237 (not b!3160936) tp_is_empty!16977 b_and!209235 (not mapNonEmpty!18731) (not b!3160926))
(check-sat b_and!209235 b_and!209237 (not b_next!83699) (not b_next!83697))
(get-model)

(declare-fun d!868409 () Bool)

(assert (=> d!868409 (= (array_inv!4690 (_keys!4428 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) (bvsge (size!26632 (_keys!4428 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160934 d!868409))

(declare-fun d!868411 () Bool)

(assert (=> d!868411 (= (array_inv!4691 (_values!4409 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) (bvsge (size!26633 (_values!4409 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3160934 d!868411))

(declare-fun d!868413 () Bool)

(declare-fun validCacheMap!44 (MutableMap!4034) Bool)

(assert (=> d!868413 (= (valid!3215 cache!347) (validCacheMap!44 (cache!4171 cache!347)))))

(declare-fun bs!539414 () Bool)

(assert (= bs!539414 d!868413))

(declare-fun m!3425665 () Bool)

(assert (=> bs!539414 m!3425665))

(assert (=> b!3160923 d!868413))

(declare-fun bm!228898 () Bool)

(declare-fun call!228905 () Bool)

(declare-fun c!531603 () Bool)

(assert (=> bm!228898 (= call!228905 (validRegex!4437 (ite c!531603 (regTwo!19927 r!13156) (regTwo!19926 r!13156))))))

(declare-fun b!3160956 () Bool)

(declare-fun res!1287030 () Bool)

(declare-fun e!1969290 () Bool)

(assert (=> b!3160956 (=> res!1287030 e!1969290)))

(assert (=> b!3160956 (= res!1287030 (not ((_ is Concat!15028) r!13156)))))

(declare-fun e!1969289 () Bool)

(assert (=> b!3160956 (= e!1969289 e!1969290)))

(declare-fun b!3160957 () Bool)

(declare-fun e!1969285 () Bool)

(declare-fun call!228904 () Bool)

(assert (=> b!3160957 (= e!1969285 call!228904)))

(declare-fun b!3160958 () Bool)

(declare-fun e!1969286 () Bool)

(assert (=> b!3160958 (= e!1969286 e!1969285)))

(declare-fun res!1287029 () Bool)

(declare-fun nullable!3329 (Regex!9707) Bool)

(assert (=> b!3160958 (= res!1287029 (not (nullable!3329 (reg!10036 r!13156))))))

(assert (=> b!3160958 (=> (not res!1287029) (not e!1969285))))

(declare-fun b!3160959 () Bool)

(assert (=> b!3160959 (= e!1969286 e!1969289)))

(assert (=> b!3160959 (= c!531603 ((_ is Union!9707) r!13156))))

(declare-fun bm!228899 () Bool)

(declare-fun call!228903 () Bool)

(assert (=> bm!228899 (= call!228903 call!228904)))

(declare-fun b!3160960 () Bool)

(declare-fun e!1969284 () Bool)

(assert (=> b!3160960 (= e!1969284 call!228905)))

(declare-fun b!3160961 () Bool)

(declare-fun res!1287032 () Bool)

(declare-fun e!1969287 () Bool)

(assert (=> b!3160961 (=> (not res!1287032) (not e!1969287))))

(assert (=> b!3160961 (= res!1287032 call!228903)))

(assert (=> b!3160961 (= e!1969289 e!1969287)))

(declare-fun b!3160962 () Bool)

(assert (=> b!3160962 (= e!1969290 e!1969284)))

(declare-fun res!1287031 () Bool)

(assert (=> b!3160962 (=> (not res!1287031) (not e!1969284))))

(assert (=> b!3160962 (= res!1287031 call!228903)))

(declare-fun d!868415 () Bool)

(declare-fun res!1287033 () Bool)

(declare-fun e!1969288 () Bool)

(assert (=> d!868415 (=> res!1287033 e!1969288)))

(assert (=> d!868415 (= res!1287033 ((_ is ElementMatch!9707) r!13156))))

(assert (=> d!868415 (= (validRegex!4437 r!13156) e!1969288)))

(declare-fun b!3160963 () Bool)

(assert (=> b!3160963 (= e!1969288 e!1969286)))

(declare-fun c!531604 () Bool)

(assert (=> b!3160963 (= c!531604 ((_ is Star!9707) r!13156))))

(declare-fun b!3160964 () Bool)

(assert (=> b!3160964 (= e!1969287 call!228905)))

(declare-fun bm!228900 () Bool)

(assert (=> bm!228900 (= call!228904 (validRegex!4437 (ite c!531604 (reg!10036 r!13156) (ite c!531603 (regOne!19927 r!13156) (regOne!19926 r!13156)))))))

(assert (= (and d!868415 (not res!1287033)) b!3160963))

(assert (= (and b!3160963 c!531604) b!3160958))

(assert (= (and b!3160963 (not c!531604)) b!3160959))

(assert (= (and b!3160958 res!1287029) b!3160957))

(assert (= (and b!3160959 c!531603) b!3160961))

(assert (= (and b!3160959 (not c!531603)) b!3160956))

(assert (= (and b!3160961 res!1287032) b!3160964))

(assert (= (and b!3160956 (not res!1287030)) b!3160962))

(assert (= (and b!3160962 res!1287031) b!3160960))

(assert (= (or b!3160961 b!3160962) bm!228899))

(assert (= (or b!3160964 b!3160960) bm!228898))

(assert (= (or b!3160957 bm!228899) bm!228900))

(declare-fun m!3425667 () Bool)

(assert (=> bm!228898 m!3425667))

(declare-fun m!3425669 () Bool)

(assert (=> b!3160958 m!3425669))

(declare-fun m!3425671 () Bool)

(assert (=> bm!228900 m!3425671))

(assert (=> start!296328 d!868415))

(declare-fun d!868417 () Bool)

(declare-fun res!1287036 () Bool)

(declare-fun e!1969293 () Bool)

(assert (=> d!868417 (=> (not res!1287036) (not e!1969293))))

(assert (=> d!868417 (= res!1287036 ((_ is HashMap!4034) (cache!4171 cache!347)))))

(assert (=> d!868417 (= (inv!48046 cache!347) e!1969293)))

(declare-fun b!3160967 () Bool)

(assert (=> b!3160967 (= e!1969293 (validCacheMap!44 (cache!4171 cache!347)))))

(assert (= (and d!868417 res!1287036) b!3160967))

(assert (=> b!3160967 m!3425665))

(assert (=> start!296328 d!868417))

(declare-fun d!868419 () Bool)

(declare-fun e!1969298 () Bool)

(assert (=> d!868419 e!1969298))

(declare-fun res!1287039 () Bool)

(assert (=> d!868419 (=> res!1287039 e!1969298)))

(declare-fun lt!1062790 () Option!6871)

(declare-fun isEmpty!19746 (Option!6871) Bool)

(assert (=> d!868419 (= res!1287039 (isEmpty!19746 lt!1062790))))

(declare-fun e!1969299 () Option!6871)

(assert (=> d!868419 (= lt!1062790 e!1969299)))

(declare-fun c!531608 () Bool)

(declare-fun contains!6141 (MutableMap!4034 tuple2!34348) Bool)

(assert (=> d!868419 (= c!531608 (contains!6141 (cache!4171 cache!347) (tuple2!34349 r!13156 a!2409)))))

(assert (=> d!868419 (validRegex!4437 r!13156)))

(assert (=> d!868419 (= (get!11192 cache!347 r!13156 a!2409) lt!1062790)))

(declare-fun b!3160974 () Bool)

(declare-fun apply!7928 (MutableMap!4034 tuple2!34348) Regex!9707)

(assert (=> b!3160974 (= e!1969299 (Some!6870 (apply!7928 (cache!4171 cache!347) (tuple2!34349 r!13156 a!2409))))))

(declare-datatypes ((Unit!49754 0))(
  ( (Unit!49755) )
))
(declare-fun lt!1062791 () Unit!49754)

(declare-fun lemmaIfInCacheThenValid!44 (Cache!338 Regex!9707 C!19600) Unit!49754)

(assert (=> b!3160974 (= lt!1062791 (lemmaIfInCacheThenValid!44 cache!347 r!13156 a!2409))))

(declare-fun b!3160975 () Bool)

(assert (=> b!3160975 (= e!1969299 None!6870)))

(declare-fun b!3160976 () Bool)

(declare-fun get!11193 (Option!6871) Regex!9707)

(declare-fun derivativeStep!2879 (Regex!9707 C!19600) Regex!9707)

(assert (=> b!3160976 (= e!1969298 (= (get!11193 lt!1062790) (derivativeStep!2879 r!13156 a!2409)))))

(assert (= (and d!868419 c!531608) b!3160974))

(assert (= (and d!868419 (not c!531608)) b!3160975))

(assert (= (and d!868419 (not res!1287039)) b!3160976))

(declare-fun m!3425673 () Bool)

(assert (=> d!868419 m!3425673))

(declare-fun m!3425675 () Bool)

(assert (=> d!868419 m!3425675))

(assert (=> d!868419 m!3425649))

(declare-fun m!3425677 () Bool)

(assert (=> b!3160974 m!3425677))

(declare-fun m!3425679 () Bool)

(assert (=> b!3160974 m!3425679))

(declare-fun m!3425681 () Bool)

(assert (=> b!3160976 m!3425681))

(declare-fun m!3425683 () Bool)

(assert (=> b!3160976 m!3425683))

(assert (=> b!3160932 d!868419))

(declare-fun bm!228901 () Bool)

(declare-fun call!228908 () Bool)

(declare-fun c!531609 () Bool)

(assert (=> bm!228901 (= call!228908 (validRegex!4437 (ite c!531609 (regTwo!19927 (regTwo!19927 r!13156)) (regTwo!19926 (regTwo!19927 r!13156)))))))

(declare-fun b!3160977 () Bool)

(declare-fun res!1287041 () Bool)

(declare-fun e!1969306 () Bool)

(assert (=> b!3160977 (=> res!1287041 e!1969306)))

(assert (=> b!3160977 (= res!1287041 (not ((_ is Concat!15028) (regTwo!19927 r!13156))))))

(declare-fun e!1969305 () Bool)

(assert (=> b!3160977 (= e!1969305 e!1969306)))

(declare-fun b!3160978 () Bool)

(declare-fun e!1969301 () Bool)

(declare-fun call!228907 () Bool)

(assert (=> b!3160978 (= e!1969301 call!228907)))

(declare-fun b!3160979 () Bool)

(declare-fun e!1969302 () Bool)

(assert (=> b!3160979 (= e!1969302 e!1969301)))

(declare-fun res!1287040 () Bool)

(assert (=> b!3160979 (= res!1287040 (not (nullable!3329 (reg!10036 (regTwo!19927 r!13156)))))))

(assert (=> b!3160979 (=> (not res!1287040) (not e!1969301))))

(declare-fun b!3160980 () Bool)

(assert (=> b!3160980 (= e!1969302 e!1969305)))

(assert (=> b!3160980 (= c!531609 ((_ is Union!9707) (regTwo!19927 r!13156)))))

(declare-fun bm!228902 () Bool)

(declare-fun call!228906 () Bool)

(assert (=> bm!228902 (= call!228906 call!228907)))

(declare-fun b!3160981 () Bool)

(declare-fun e!1969300 () Bool)

(assert (=> b!3160981 (= e!1969300 call!228908)))

(declare-fun b!3160982 () Bool)

(declare-fun res!1287043 () Bool)

(declare-fun e!1969303 () Bool)

(assert (=> b!3160982 (=> (not res!1287043) (not e!1969303))))

(assert (=> b!3160982 (= res!1287043 call!228906)))

(assert (=> b!3160982 (= e!1969305 e!1969303)))

(declare-fun b!3160983 () Bool)

(assert (=> b!3160983 (= e!1969306 e!1969300)))

(declare-fun res!1287042 () Bool)

(assert (=> b!3160983 (=> (not res!1287042) (not e!1969300))))

(assert (=> b!3160983 (= res!1287042 call!228906)))

(declare-fun d!868421 () Bool)

(declare-fun res!1287044 () Bool)

(declare-fun e!1969304 () Bool)

(assert (=> d!868421 (=> res!1287044 e!1969304)))

(assert (=> d!868421 (= res!1287044 ((_ is ElementMatch!9707) (regTwo!19927 r!13156)))))

(assert (=> d!868421 (= (validRegex!4437 (regTwo!19927 r!13156)) e!1969304)))

(declare-fun b!3160984 () Bool)

(assert (=> b!3160984 (= e!1969304 e!1969302)))

(declare-fun c!531610 () Bool)

(assert (=> b!3160984 (= c!531610 ((_ is Star!9707) (regTwo!19927 r!13156)))))

(declare-fun b!3160985 () Bool)

(assert (=> b!3160985 (= e!1969303 call!228908)))

(declare-fun bm!228903 () Bool)

(assert (=> bm!228903 (= call!228907 (validRegex!4437 (ite c!531610 (reg!10036 (regTwo!19927 r!13156)) (ite c!531609 (regOne!19927 (regTwo!19927 r!13156)) (regOne!19926 (regTwo!19927 r!13156))))))))

(assert (= (and d!868421 (not res!1287044)) b!3160984))

(assert (= (and b!3160984 c!531610) b!3160979))

(assert (= (and b!3160984 (not c!531610)) b!3160980))

(assert (= (and b!3160979 res!1287040) b!3160978))

(assert (= (and b!3160980 c!531609) b!3160982))

(assert (= (and b!3160980 (not c!531609)) b!3160977))

(assert (= (and b!3160982 res!1287043) b!3160985))

(assert (= (and b!3160977 (not res!1287041)) b!3160983))

(assert (= (and b!3160983 res!1287042) b!3160981))

(assert (= (or b!3160982 b!3160983) bm!228902))

(assert (= (or b!3160985 b!3160981) bm!228901))

(assert (= (or b!3160978 bm!228902) bm!228903))

(declare-fun m!3425685 () Bool)

(assert (=> bm!228901 m!3425685))

(declare-fun m!3425687 () Bool)

(assert (=> b!3160979 m!3425687))

(declare-fun m!3425689 () Bool)

(assert (=> bm!228903 m!3425689))

(assert (=> b!3160936 d!868421))

(declare-fun b!3161010 () Bool)

(declare-fun lt!1062813 () tuple2!34352)

(declare-fun call!228918 () tuple2!34352)

(assert (=> b!3161010 (= lt!1062813 call!228918)))

(declare-fun lt!1062818 () tuple2!34352)

(declare-fun call!228920 () tuple2!34352)

(assert (=> b!3161010 (= lt!1062818 call!228920)))

(declare-fun e!1969320 () tuple2!34352)

(assert (=> b!3161010 (= e!1969320 (tuple2!34353 (Union!9707 (_1!20308 lt!1062818) (_1!20308 lt!1062813)) (_2!20308 lt!1062813)))))

(declare-fun d!868423 () Bool)

(declare-fun lt!1062811 () tuple2!34352)

(assert (=> d!868423 (= (_1!20308 lt!1062811) (derivativeStep!2879 (regOne!19927 r!13156) a!2409))))

(declare-fun e!1969322 () tuple2!34352)

(assert (=> d!868423 (= lt!1062811 e!1969322)))

(declare-fun c!531623 () Bool)

(declare-fun lt!1062816 () Option!6871)

(assert (=> d!868423 (= c!531623 ((_ is Some!6870) lt!1062816))))

(assert (=> d!868423 (= lt!1062816 (get!11192 cache!347 (regOne!19927 r!13156) a!2409))))

(assert (=> d!868423 (validRegex!4437 (regOne!19927 r!13156))))

(assert (=> d!868423 (= (derivativeStepMem!17 (regOne!19927 r!13156) a!2409 cache!347) lt!1062811)))

(declare-fun b!3161011 () Bool)

(declare-fun e!1969319 () tuple2!34352)

(assert (=> b!3161011 (= e!1969319 e!1969320)))

(declare-fun c!531624 () Bool)

(assert (=> b!3161011 (= c!531624 ((_ is Union!9707) (regOne!19927 r!13156)))))

(declare-fun b!3161012 () Bool)

(declare-fun lt!1062817 () tuple2!34352)

(declare-fun call!228919 () tuple2!34352)

(assert (=> b!3161012 (= lt!1062817 call!228919)))

(declare-fun e!1969324 () tuple2!34352)

(assert (=> b!3161012 (= e!1969324 (tuple2!34353 (Union!9707 (Concat!15028 (_1!20308 lt!1062817) (regTwo!19926 (regOne!19927 r!13156))) EmptyLang!9707) (_2!20308 lt!1062817)))))

(declare-fun c!531625 () Bool)

(declare-fun bm!228912 () Bool)

(assert (=> bm!228912 (= call!228920 (derivativeStepMem!17 (ite c!531624 (regOne!19927 (regOne!19927 r!13156)) (ite c!531625 (reg!10036 (regOne!19927 r!13156)) (regOne!19926 (regOne!19927 r!13156)))) a!2409 cache!347))))

(declare-fun b!3161013 () Bool)

(assert (=> b!3161013 (= e!1969322 (tuple2!34353 (v!35040 lt!1062816) cache!347))))

(declare-fun bm!228913 () Bool)

(declare-fun call!228917 () tuple2!34352)

(assert (=> bm!228913 (= call!228917 call!228920)))

(declare-fun b!3161014 () Bool)

(assert (=> b!3161014 (= c!531625 ((_ is Star!9707) (regOne!19927 r!13156)))))

(declare-fun e!1969321 () tuple2!34352)

(assert (=> b!3161014 (= e!1969320 e!1969321)))

(declare-fun lt!1062810 () tuple2!34352)

(declare-fun b!3161015 () Bool)

(declare-datatypes ((tuple2!34354 0))(
  ( (tuple2!34355 (_1!20309 Unit!49754) (_2!20309 Cache!338)) )
))
(declare-fun update!257 (Cache!338 Regex!9707 C!19600 Regex!9707) tuple2!34354)

(assert (=> b!3161015 (= e!1969322 (tuple2!34353 (_1!20308 lt!1062810) (_2!20309 (update!257 (_2!20308 lt!1062810) (regOne!19927 r!13156) a!2409 (_1!20308 lt!1062810)))))))

(declare-fun c!531627 () Bool)

(assert (=> b!3161015 (= c!531627 (or ((_ is EmptyExpr!9707) (regOne!19927 r!13156)) ((_ is EmptyLang!9707) (regOne!19927 r!13156))))))

(declare-fun e!1969323 () tuple2!34352)

(assert (=> b!3161015 (= lt!1062810 e!1969323)))

(declare-fun b!3161016 () Bool)

(declare-fun lt!1062814 () tuple2!34352)

(assert (=> b!3161016 (= e!1969321 (tuple2!34353 (Concat!15028 (_1!20308 lt!1062814) (Star!9707 (reg!10036 (regOne!19927 r!13156)))) (_2!20308 lt!1062814)))))

(assert (=> b!3161016 (= lt!1062814 call!228917)))

(declare-fun b!3161017 () Bool)

(declare-fun c!531628 () Bool)

(assert (=> b!3161017 (= c!531628 ((_ is ElementMatch!9707) (regOne!19927 r!13156)))))

(assert (=> b!3161017 (= e!1969323 e!1969319)))

(declare-fun bm!228914 () Bool)

(assert (=> bm!228914 (= call!228919 call!228917)))

(declare-fun b!3161018 () Bool)

(declare-fun lt!1062812 () tuple2!34352)

(assert (=> b!3161018 (= lt!1062812 call!228918)))

(declare-fun lt!1062815 () tuple2!34352)

(assert (=> b!3161018 (= lt!1062815 call!228919)))

(assert (=> b!3161018 (= e!1969324 (tuple2!34353 (Union!9707 (Concat!15028 (_1!20308 lt!1062815) (regTwo!19926 (regOne!19927 r!13156))) (_1!20308 lt!1062812)) (_2!20308 lt!1062812)))))

(declare-fun b!3161019 () Bool)

(assert (=> b!3161019 (= e!1969321 e!1969324)))

(declare-fun c!531626 () Bool)

(assert (=> b!3161019 (= c!531626 (nullable!3329 (regOne!19926 (regOne!19927 r!13156))))))

(declare-fun bm!228915 () Bool)

(assert (=> bm!228915 (= call!228918 (derivativeStepMem!17 (ite c!531624 (regTwo!19927 (regOne!19927 r!13156)) (regTwo!19926 (regOne!19927 r!13156))) a!2409 (ite c!531624 (_2!20308 lt!1062818) (_2!20308 lt!1062815))))))

(declare-fun b!3161020 () Bool)

(assert (=> b!3161020 (= e!1969319 (tuple2!34353 (ite (= a!2409 (c!531598 (regOne!19927 r!13156))) EmptyExpr!9707 EmptyLang!9707) cache!347))))

(declare-fun b!3161021 () Bool)

(assert (=> b!3161021 (= e!1969323 (tuple2!34353 EmptyLang!9707 cache!347))))

(assert (= (and d!868423 c!531623) b!3161013))

(assert (= (and d!868423 (not c!531623)) b!3161015))

(assert (= (and b!3161015 c!531627) b!3161021))

(assert (= (and b!3161015 (not c!531627)) b!3161017))

(assert (= (and b!3161017 c!531628) b!3161020))

(assert (= (and b!3161017 (not c!531628)) b!3161011))

(assert (= (and b!3161011 c!531624) b!3161010))

(assert (= (and b!3161011 (not c!531624)) b!3161014))

(assert (= (and b!3161014 c!531625) b!3161016))

(assert (= (and b!3161014 (not c!531625)) b!3161019))

(assert (= (and b!3161019 c!531626) b!3161018))

(assert (= (and b!3161019 (not c!531626)) b!3161012))

(assert (= (or b!3161018 b!3161012) bm!228914))

(assert (= (or b!3161016 bm!228914) bm!228913))

(assert (= (or b!3161010 bm!228913) bm!228912))

(assert (= (or b!3161010 b!3161018) bm!228915))

(declare-fun m!3425691 () Bool)

(assert (=> d!868423 m!3425691))

(declare-fun m!3425693 () Bool)

(assert (=> d!868423 m!3425693))

(declare-fun m!3425695 () Bool)

(assert (=> d!868423 m!3425695))

(declare-fun m!3425697 () Bool)

(assert (=> bm!228915 m!3425697))

(declare-fun m!3425699 () Bool)

(assert (=> bm!228912 m!3425699))

(declare-fun m!3425701 () Bool)

(assert (=> b!3161015 m!3425701))

(declare-fun m!3425703 () Bool)

(assert (=> b!3161019 m!3425703))

(assert (=> b!3160936 d!868423))

(declare-fun e!1969327 () Bool)

(declare-fun tp!994465 () Bool)

(declare-fun tp!994466 () Bool)

(declare-fun tp!994464 () Bool)

(declare-fun b!3161026 () Bool)

(assert (=> b!3161026 (= e!1969327 (and tp!994464 tp_is_empty!16977 tp!994465 tp!994466))))

(assert (=> b!3160934 (= tp!994456 e!1969327)))

(assert (= (and b!3160934 ((_ is Cons!35411) (zeroValue!4387 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347)))))))) b!3161026))

(declare-fun tp!994467 () Bool)

(declare-fun e!1969328 () Bool)

(declare-fun tp!994469 () Bool)

(declare-fun b!3161027 () Bool)

(declare-fun tp!994468 () Bool)

(assert (=> b!3161027 (= e!1969328 (and tp!994467 tp_is_empty!16977 tp!994468 tp!994469))))

(assert (=> b!3160934 (= tp!994454 e!1969328)))

(assert (= (and b!3160934 ((_ is Cons!35411) (minValue!4387 (v!35038 (underlying!8485 (v!35039 (underlying!8486 (cache!4171 cache!347)))))))) b!3161027))

(declare-fun tp!994471 () Bool)

(declare-fun e!1969329 () Bool)

(declare-fun tp!994472 () Bool)

(declare-fun b!3161028 () Bool)

(declare-fun tp!994470 () Bool)

(assert (=> b!3161028 (= e!1969329 (and tp!994470 tp_is_empty!16977 tp!994471 tp!994472))))

(assert (=> b!3160928 (= tp!994449 e!1969329)))

(assert (= (and b!3160928 ((_ is Cons!35411) mapDefault!18731)) b!3161028))

(declare-fun b!3161039 () Bool)

(declare-fun e!1969332 () Bool)

(assert (=> b!3161039 (= e!1969332 tp_is_empty!16977)))

(assert (=> b!3160930 (= tp!994457 e!1969332)))

(declare-fun b!3161041 () Bool)

(declare-fun tp!994486 () Bool)

(assert (=> b!3161041 (= e!1969332 tp!994486)))

(declare-fun b!3161042 () Bool)

(declare-fun tp!994487 () Bool)

(declare-fun tp!994485 () Bool)

(assert (=> b!3161042 (= e!1969332 (and tp!994487 tp!994485))))

(declare-fun b!3161040 () Bool)

(declare-fun tp!994484 () Bool)

(declare-fun tp!994483 () Bool)

(assert (=> b!3161040 (= e!1969332 (and tp!994484 tp!994483))))

(assert (= (and b!3160930 ((_ is ElementMatch!9707) (regOne!19926 r!13156))) b!3161039))

(assert (= (and b!3160930 ((_ is Concat!15028) (regOne!19926 r!13156))) b!3161040))

(assert (= (and b!3160930 ((_ is Star!9707) (regOne!19926 r!13156))) b!3161041))

(assert (= (and b!3160930 ((_ is Union!9707) (regOne!19926 r!13156))) b!3161042))

(declare-fun b!3161043 () Bool)

(declare-fun e!1969333 () Bool)

(assert (=> b!3161043 (= e!1969333 tp_is_empty!16977)))

(assert (=> b!3160930 (= tp!994451 e!1969333)))

(declare-fun b!3161045 () Bool)

(declare-fun tp!994491 () Bool)

(assert (=> b!3161045 (= e!1969333 tp!994491)))

(declare-fun b!3161046 () Bool)

(declare-fun tp!994492 () Bool)

(declare-fun tp!994490 () Bool)

(assert (=> b!3161046 (= e!1969333 (and tp!994492 tp!994490))))

(declare-fun b!3161044 () Bool)

(declare-fun tp!994489 () Bool)

(declare-fun tp!994488 () Bool)

(assert (=> b!3161044 (= e!1969333 (and tp!994489 tp!994488))))

(assert (= (and b!3160930 ((_ is ElementMatch!9707) (regTwo!19926 r!13156))) b!3161043))

(assert (= (and b!3160930 ((_ is Concat!15028) (regTwo!19926 r!13156))) b!3161044))

(assert (= (and b!3160930 ((_ is Star!9707) (regTwo!19926 r!13156))) b!3161045))

(assert (= (and b!3160930 ((_ is Union!9707) (regTwo!19926 r!13156))) b!3161046))

(declare-fun condMapEmpty!18734 () Bool)

(declare-fun mapDefault!18734 () List!35535)

(assert (=> mapNonEmpty!18731 (= condMapEmpty!18734 (= mapRest!18731 ((as const (Array (_ BitVec 32) List!35535)) mapDefault!18734)))))

(declare-fun e!1969338 () Bool)

(declare-fun mapRes!18734 () Bool)

(assert (=> mapNonEmpty!18731 (= tp!994450 (and e!1969338 mapRes!18734))))

(declare-fun mapNonEmpty!18734 () Bool)

(declare-fun tp!994512 () Bool)

(declare-fun e!1969339 () Bool)

(assert (=> mapNonEmpty!18734 (= mapRes!18734 (and tp!994512 e!1969339))))

(declare-fun mapValue!18734 () List!35535)

(declare-fun mapKey!18734 () (_ BitVec 32))

(declare-fun mapRest!18734 () (Array (_ BitVec 32) List!35535))

(assert (=> mapNonEmpty!18734 (= mapRest!18731 (store mapRest!18734 mapKey!18734 mapValue!18734))))

(declare-fun tp!994513 () Bool)

(declare-fun tp!994509 () Bool)

(declare-fun tp!994508 () Bool)

(declare-fun b!3161054 () Bool)

(assert (=> b!3161054 (= e!1969338 (and tp!994508 tp_is_empty!16977 tp!994513 tp!994509))))

(declare-fun mapIsEmpty!18734 () Bool)

(assert (=> mapIsEmpty!18734 mapRes!18734))

(declare-fun tp!994510 () Bool)

(declare-fun b!3161053 () Bool)

(declare-fun tp!994507 () Bool)

(declare-fun tp!994511 () Bool)

(assert (=> b!3161053 (= e!1969339 (and tp!994511 tp_is_empty!16977 tp!994507 tp!994510))))

(assert (= (and mapNonEmpty!18731 condMapEmpty!18734) mapIsEmpty!18734))

(assert (= (and mapNonEmpty!18731 (not condMapEmpty!18734)) mapNonEmpty!18734))

(assert (= (and mapNonEmpty!18734 ((_ is Cons!35411) mapValue!18734)) b!3161053))

(assert (= (and mapNonEmpty!18731 ((_ is Cons!35411) mapDefault!18734)) b!3161054))

(declare-fun m!3425705 () Bool)

(assert (=> mapNonEmpty!18734 m!3425705))

(declare-fun tp!994516 () Bool)

(declare-fun tp!994515 () Bool)

(declare-fun tp!994514 () Bool)

(declare-fun e!1969340 () Bool)

(declare-fun b!3161055 () Bool)

(assert (=> b!3161055 (= e!1969340 (and tp!994514 tp_is_empty!16977 tp!994515 tp!994516))))

(assert (=> mapNonEmpty!18731 (= tp!994452 e!1969340)))

(assert (= (and mapNonEmpty!18731 ((_ is Cons!35411) mapValue!18731)) b!3161055))

(declare-fun b!3161056 () Bool)

(declare-fun e!1969341 () Bool)

(assert (=> b!3161056 (= e!1969341 tp_is_empty!16977)))

(assert (=> b!3160926 (= tp!994448 e!1969341)))

(declare-fun b!3161058 () Bool)

(declare-fun tp!994520 () Bool)

(assert (=> b!3161058 (= e!1969341 tp!994520)))

(declare-fun b!3161059 () Bool)

(declare-fun tp!994521 () Bool)

(declare-fun tp!994519 () Bool)

(assert (=> b!3161059 (= e!1969341 (and tp!994521 tp!994519))))

(declare-fun b!3161057 () Bool)

(declare-fun tp!994518 () Bool)

(declare-fun tp!994517 () Bool)

(assert (=> b!3161057 (= e!1969341 (and tp!994518 tp!994517))))

(assert (= (and b!3160926 ((_ is ElementMatch!9707) (regOne!19927 r!13156))) b!3161056))

(assert (= (and b!3160926 ((_ is Concat!15028) (regOne!19927 r!13156))) b!3161057))

(assert (= (and b!3160926 ((_ is Star!9707) (regOne!19927 r!13156))) b!3161058))

(assert (= (and b!3160926 ((_ is Union!9707) (regOne!19927 r!13156))) b!3161059))

(declare-fun b!3161060 () Bool)

(declare-fun e!1969342 () Bool)

(assert (=> b!3161060 (= e!1969342 tp_is_empty!16977)))

(assert (=> b!3160926 (= tp!994455 e!1969342)))

(declare-fun b!3161062 () Bool)

(declare-fun tp!994525 () Bool)

(assert (=> b!3161062 (= e!1969342 tp!994525)))

(declare-fun b!3161063 () Bool)

(declare-fun tp!994526 () Bool)

(declare-fun tp!994524 () Bool)

(assert (=> b!3161063 (= e!1969342 (and tp!994526 tp!994524))))

(declare-fun b!3161061 () Bool)

(declare-fun tp!994523 () Bool)

(declare-fun tp!994522 () Bool)

(assert (=> b!3161061 (= e!1969342 (and tp!994523 tp!994522))))

(assert (= (and b!3160926 ((_ is ElementMatch!9707) (regTwo!19927 r!13156))) b!3161060))

(assert (= (and b!3160926 ((_ is Concat!15028) (regTwo!19927 r!13156))) b!3161061))

(assert (= (and b!3160926 ((_ is Star!9707) (regTwo!19927 r!13156))) b!3161062))

(assert (= (and b!3160926 ((_ is Union!9707) (regTwo!19927 r!13156))) b!3161063))

(declare-fun b!3161064 () Bool)

(declare-fun e!1969343 () Bool)

(assert (=> b!3161064 (= e!1969343 tp_is_empty!16977)))

(assert (=> b!3160925 (= tp!994453 e!1969343)))

(declare-fun b!3161066 () Bool)

(declare-fun tp!994530 () Bool)

(assert (=> b!3161066 (= e!1969343 tp!994530)))

(declare-fun b!3161067 () Bool)

(declare-fun tp!994531 () Bool)

(declare-fun tp!994529 () Bool)

(assert (=> b!3161067 (= e!1969343 (and tp!994531 tp!994529))))

(declare-fun b!3161065 () Bool)

(declare-fun tp!994528 () Bool)

(declare-fun tp!994527 () Bool)

(assert (=> b!3161065 (= e!1969343 (and tp!994528 tp!994527))))

(assert (= (and b!3160925 ((_ is ElementMatch!9707) (reg!10036 r!13156))) b!3161064))

(assert (= (and b!3160925 ((_ is Concat!15028) (reg!10036 r!13156))) b!3161065))

(assert (= (and b!3160925 ((_ is Star!9707) (reg!10036 r!13156))) b!3161066))

(assert (= (and b!3160925 ((_ is Union!9707) (reg!10036 r!13156))) b!3161067))

(check-sat (not b_next!83697) (not b!3161040) (not b_next!83699) (not b!3161027) (not b!3160967) (not b!3161054) (not b!3161062) (not b!3161066) (not b!3161019) (not bm!228900) (not b!3160958) (not b!3161042) (not b!3160976) (not b!3161044) (not bm!228903) (not b!3161045) (not d!868413) (not b!3160979) b_and!209237 (not bm!228901) (not bm!228898) (not b!3161057) (not bm!228915) (not b!3161059) (not mapNonEmpty!18734) (not b!3161053) (not bm!228912) (not b!3161015) (not b!3161063) (not d!868419) (not b!3161046) (not b!3161055) (not b!3161026) (not b!3161041) tp_is_empty!16977 b_and!209235 (not b!3160974) (not b!3161067) (not b!3161065) (not d!868423) (not b!3161058) (not b!3161061) (not b!3161028))
(check-sat b_and!209235 b_and!209237 (not b_next!83699) (not b_next!83697))
