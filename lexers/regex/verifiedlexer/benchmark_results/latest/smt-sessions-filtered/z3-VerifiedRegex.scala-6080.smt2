; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296382 () Bool)

(assert start!296382)

(declare-fun b!3161727 () Bool)

(declare-fun b_free!83009 () Bool)

(declare-fun b_next!83713 () Bool)

(assert (=> b!3161727 (= b_free!83009 (not b_next!83713))))

(declare-fun tp!994959 () Bool)

(declare-fun b_and!209255 () Bool)

(assert (=> b!3161727 (= tp!994959 b_and!209255)))

(declare-fun b!3161726 () Bool)

(declare-fun b_free!83011 () Bool)

(declare-fun b_next!83715 () Bool)

(assert (=> b!3161726 (= b_free!83011 (not b_next!83715))))

(declare-fun tp!994950 () Bool)

(declare-fun b_and!209257 () Bool)

(assert (=> b!3161726 (= tp!994950 b_and!209257)))

(declare-fun b!3161725 () Bool)

(declare-fun e!1969718 () Bool)

(declare-fun tp!994956 () Bool)

(declare-fun tp!994949 () Bool)

(assert (=> b!3161725 (= e!1969718 (and tp!994956 tp!994949))))

(declare-fun tp!994955 () Bool)

(declare-datatypes ((C!19608 0))(
  ( (C!19609 (val!11840 Int)) )
))
(declare-datatypes ((Regex!9711 0))(
  ( (ElementMatch!9711 (c!531731 C!19608)) (Concat!15032 (regOne!19934 Regex!9711) (regTwo!19934 Regex!9711)) (EmptyExpr!9711) (Star!9711 (reg!10040 Regex!9711)) (EmptyLang!9711) (Union!9711 (regOne!19935 Regex!9711) (regTwo!19935 Regex!9711)) )
))
(declare-datatypes ((tuple2!34378 0))(
  ( (tuple2!34379 (_1!20321 Regex!9711) (_2!20321 C!19608)) )
))
(declare-datatypes ((tuple2!34380 0))(
  ( (tuple2!34381 (_1!20322 tuple2!34378) (_2!20322 Regex!9711)) )
))
(declare-datatypes ((array!14714 0))(
  ( (array!14715 (arr!6554 (Array (_ BitVec 32) (_ BitVec 64))) (size!26640 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4048 0))(
  ( (HashableExt!4047 (__x!22502 Int)) )
))
(declare-datatypes ((List!35540 0))(
  ( (Nil!35416) (Cons!35416 (h!40836 tuple2!34380) (t!234607 List!35540)) )
))
(declare-datatypes ((array!14716 0))(
  ( (array!14717 (arr!6555 (Array (_ BitVec 32) List!35540)) (size!26641 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8264 0))(
  ( (LongMapFixedSize!8265 (defaultEntry!4517 Int) (mask!10781 (_ BitVec 32)) (extraKeys!4381 (_ BitVec 32)) (zeroValue!4391 List!35540) (minValue!4391 List!35540) (_size!8307 (_ BitVec 32)) (_keys!4432 array!14714) (_values!4413 array!14716) (_vacant!4193 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16337 0))(
  ( (Cell!16338 (v!35051 LongMapFixedSize!8264)) )
))
(declare-datatypes ((MutLongMap!4132 0))(
  ( (LongMap!4132 (underlying!8493 Cell!16337)) (MutLongMapExt!4131 (__x!22503 Int)) )
))
(declare-datatypes ((Cell!16339 0))(
  ( (Cell!16340 (v!35052 MutLongMap!4132)) )
))
(declare-datatypes ((MutableMap!4038 0))(
  ( (MutableMapExt!4037 (__x!22504 Int)) (HashMap!4038 (underlying!8494 Cell!16339) (hashF!6080 Hashable!4048) (_size!8308 (_ BitVec 32)) (defaultValue!4209 Int)) )
))
(declare-datatypes ((Cache!346 0))(
  ( (Cache!347 (cache!4177 MutableMap!4038)) )
))
(declare-fun cache!347 () Cache!346)

(declare-fun e!1969710 () Bool)

(declare-fun e!1969719 () Bool)

(declare-fun tp!994951 () Bool)

(declare-fun array_inv!4696 (array!14714) Bool)

(declare-fun array_inv!4697 (array!14716) Bool)

(assert (=> b!3161727 (= e!1969719 (and tp!994959 tp!994951 tp!994955 (array_inv!4696 (_keys!4432 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) (array_inv!4697 (_values!4413 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) e!1969710))))

(declare-fun b!3161728 () Bool)

(declare-fun tp!994952 () Bool)

(declare-fun mapRes!18750 () Bool)

(assert (=> b!3161728 (= e!1969710 (and tp!994952 mapRes!18750))))

(declare-fun condMapEmpty!18750 () Bool)

(declare-fun mapDefault!18750 () List!35540)

(assert (=> b!3161728 (= condMapEmpty!18750 (= (arr!6555 (_values!4413 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) ((as const (Array (_ BitVec 32) List!35540)) mapDefault!18750)))))

(declare-fun b!3161729 () Bool)

(declare-fun e!1969715 () Bool)

(declare-fun e!1969717 () Bool)

(declare-fun lt!1063082 () MutLongMap!4132)

(get-info :version)

(assert (=> b!3161729 (= e!1969715 (and e!1969717 ((_ is LongMap!4132) lt!1063082)))))

(assert (=> b!3161729 (= lt!1063082 (v!35052 (underlying!8494 (cache!4177 cache!347))))))

(declare-fun b!3161730 () Bool)

(declare-fun tp_is_empty!16985 () Bool)

(assert (=> b!3161730 (= e!1969718 tp_is_empty!16985)))

(declare-fun e!1969712 () Bool)

(assert (=> b!3161726 (= e!1969712 (and e!1969715 tp!994950))))

(declare-fun res!1287180 () Bool)

(declare-fun e!1969714 () Bool)

(assert (=> start!296382 (=> (not res!1287180) (not e!1969714))))

(declare-fun r!13156 () Regex!9711)

(declare-fun validRegex!4440 (Regex!9711) Bool)

(assert (=> start!296382 (= res!1287180 (validRegex!4440 r!13156))))

(assert (=> start!296382 e!1969714))

(assert (=> start!296382 e!1969718))

(declare-fun e!1969716 () Bool)

(declare-fun inv!48055 (Cache!346) Bool)

(assert (=> start!296382 (and (inv!48055 cache!347) e!1969716)))

(assert (=> start!296382 tp_is_empty!16985))

(declare-fun b!3161731 () Bool)

(declare-fun tp!994954 () Bool)

(declare-fun tp!994948 () Bool)

(assert (=> b!3161731 (= e!1969718 (and tp!994954 tp!994948))))

(declare-fun b!3161732 () Bool)

(declare-fun e!1969713 () Bool)

(assert (=> b!3161732 (= e!1969717 e!1969713)))

(declare-fun b!3161733 () Bool)

(assert (=> b!3161733 (= e!1969716 e!1969712)))

(declare-fun b!3161734 () Bool)

(declare-fun res!1287179 () Bool)

(assert (=> b!3161734 (=> (not res!1287179) (not e!1969714))))

(declare-fun valid!3219 (Cache!346) Bool)

(assert (=> b!3161734 (= res!1287179 (valid!3219 cache!347))))

(declare-fun b!3161735 () Bool)

(declare-fun tp!994953 () Bool)

(assert (=> b!3161735 (= e!1969718 tp!994953)))

(declare-fun mapIsEmpty!18750 () Bool)

(assert (=> mapIsEmpty!18750 mapRes!18750))

(declare-fun b!3161736 () Bool)

(assert (=> b!3161736 (= e!1969713 e!1969719)))

(declare-fun b!3161737 () Bool)

(declare-fun res!1287178 () Bool)

(assert (=> b!3161737 (=> (not res!1287178) (not e!1969714))))

(assert (=> b!3161737 (= res!1287178 (and (not ((_ is EmptyExpr!9711) r!13156)) (not ((_ is EmptyLang!9711) r!13156)) (not ((_ is ElementMatch!9711) r!13156)) (not ((_ is Union!9711) r!13156)) ((_ is Star!9711) r!13156)))))

(declare-fun b!3161738 () Bool)

(declare-fun res!1287177 () Bool)

(assert (=> b!3161738 (=> (not res!1287177) (not e!1969714))))

(declare-fun a!2409 () C!19608)

(declare-datatypes ((Option!6876 0))(
  ( (None!6875) (Some!6875 (v!35053 Regex!9711)) )
))
(declare-fun get!11200 (Cache!346 Regex!9711 C!19608) Option!6876)

(assert (=> b!3161738 (= res!1287177 (not ((_ is Some!6875) (get!11200 cache!347 r!13156 a!2409))))))

(declare-fun mapNonEmpty!18750 () Bool)

(declare-fun tp!994958 () Bool)

(declare-fun tp!994957 () Bool)

(assert (=> mapNonEmpty!18750 (= mapRes!18750 (and tp!994958 tp!994957))))

(declare-fun mapValue!18750 () List!35540)

(declare-fun mapKey!18750 () (_ BitVec 32))

(declare-fun mapRest!18750 () (Array (_ BitVec 32) List!35540))

(assert (=> mapNonEmpty!18750 (= (arr!6555 (_values!4413 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) (store mapRest!18750 mapKey!18750 mapValue!18750))))

(declare-fun b!3161739 () Bool)

(assert (=> b!3161739 (= e!1969714 (not (validRegex!4440 (reg!10040 r!13156))))))

(assert (= (and start!296382 res!1287180) b!3161734))

(assert (= (and b!3161734 res!1287179) b!3161738))

(assert (= (and b!3161738 res!1287177) b!3161737))

(assert (= (and b!3161737 res!1287178) b!3161739))

(assert (= (and start!296382 ((_ is ElementMatch!9711) r!13156)) b!3161730))

(assert (= (and start!296382 ((_ is Concat!15032) r!13156)) b!3161731))

(assert (= (and start!296382 ((_ is Star!9711) r!13156)) b!3161735))

(assert (= (and start!296382 ((_ is Union!9711) r!13156)) b!3161725))

(assert (= (and b!3161728 condMapEmpty!18750) mapIsEmpty!18750))

(assert (= (and b!3161728 (not condMapEmpty!18750)) mapNonEmpty!18750))

(assert (= b!3161727 b!3161728))

(assert (= b!3161736 b!3161727))

(assert (= b!3161732 b!3161736))

(assert (= (and b!3161729 ((_ is LongMap!4132) (v!35052 (underlying!8494 (cache!4177 cache!347))))) b!3161732))

(assert (= b!3161726 b!3161729))

(assert (= (and b!3161733 ((_ is HashMap!4038) (cache!4177 cache!347))) b!3161726))

(assert (= start!296382 b!3161733))

(declare-fun m!3426046 () Bool)

(assert (=> b!3161739 m!3426046))

(declare-fun m!3426048 () Bool)

(assert (=> b!3161734 m!3426048))

(declare-fun m!3426050 () Bool)

(assert (=> start!296382 m!3426050))

(declare-fun m!3426052 () Bool)

(assert (=> start!296382 m!3426052))

(declare-fun m!3426054 () Bool)

(assert (=> b!3161738 m!3426054))

(declare-fun m!3426056 () Bool)

(assert (=> mapNonEmpty!18750 m!3426056))

(declare-fun m!3426058 () Bool)

(assert (=> b!3161727 m!3426058))

(declare-fun m!3426060 () Bool)

(assert (=> b!3161727 m!3426060))

(check-sat (not b!3161738) (not b!3161739) (not mapNonEmpty!18750) (not b_next!83715) (not start!296382) (not b!3161728) (not b_next!83713) (not b!3161725) b_and!209257 (not b!3161735) (not b!3161734) (not b!3161731) b_and!209255 tp_is_empty!16985 (not b!3161727))
(check-sat b_and!209257 b_and!209255 (not b_next!83713) (not b_next!83715))
(get-model)

(declare-fun d!868487 () Bool)

(declare-fun validCacheMap!46 (MutableMap!4038) Bool)

(assert (=> d!868487 (= (valid!3219 cache!347) (validCacheMap!46 (cache!4177 cache!347)))))

(declare-fun bs!539432 () Bool)

(assert (= bs!539432 d!868487))

(declare-fun m!3426062 () Bool)

(assert (=> bs!539432 m!3426062))

(assert (=> b!3161734 d!868487))

(declare-fun d!868489 () Bool)

(declare-fun e!1969725 () Bool)

(assert (=> d!868489 e!1969725))

(declare-fun res!1287183 () Bool)

(assert (=> d!868489 (=> res!1287183 e!1969725)))

(declare-fun lt!1063088 () Option!6876)

(declare-fun isEmpty!19748 (Option!6876) Bool)

(assert (=> d!868489 (= res!1287183 (isEmpty!19748 lt!1063088))))

(declare-fun e!1969724 () Option!6876)

(assert (=> d!868489 (= lt!1063088 e!1969724)))

(declare-fun c!531735 () Bool)

(declare-fun contains!6147 (MutableMap!4038 tuple2!34378) Bool)

(assert (=> d!868489 (= c!531735 (contains!6147 (cache!4177 cache!347) (tuple2!34379 r!13156 a!2409)))))

(assert (=> d!868489 (validRegex!4440 r!13156)))

(assert (=> d!868489 (= (get!11200 cache!347 r!13156 a!2409) lt!1063088)))

(declare-fun b!3161746 () Bool)

(declare-fun apply!7932 (MutableMap!4038 tuple2!34378) Regex!9711)

(assert (=> b!3161746 (= e!1969724 (Some!6875 (apply!7932 (cache!4177 cache!347) (tuple2!34379 r!13156 a!2409))))))

(declare-datatypes ((Unit!49767 0))(
  ( (Unit!49768) )
))
(declare-fun lt!1063087 () Unit!49767)

(declare-fun lemmaIfInCacheThenValid!46 (Cache!346 Regex!9711 C!19608) Unit!49767)

(assert (=> b!3161746 (= lt!1063087 (lemmaIfInCacheThenValid!46 cache!347 r!13156 a!2409))))

(declare-fun b!3161747 () Bool)

(assert (=> b!3161747 (= e!1969724 None!6875)))

(declare-fun b!3161748 () Bool)

(declare-fun get!11201 (Option!6876) Regex!9711)

(declare-fun derivativeStep!2881 (Regex!9711 C!19608) Regex!9711)

(assert (=> b!3161748 (= e!1969725 (= (get!11201 lt!1063088) (derivativeStep!2881 r!13156 a!2409)))))

(assert (= (and d!868489 c!531735) b!3161746))

(assert (= (and d!868489 (not c!531735)) b!3161747))

(assert (= (and d!868489 (not res!1287183)) b!3161748))

(declare-fun m!3426064 () Bool)

(assert (=> d!868489 m!3426064))

(declare-fun m!3426066 () Bool)

(assert (=> d!868489 m!3426066))

(assert (=> d!868489 m!3426050))

(declare-fun m!3426068 () Bool)

(assert (=> b!3161746 m!3426068))

(declare-fun m!3426070 () Bool)

(assert (=> b!3161746 m!3426070))

(declare-fun m!3426072 () Bool)

(assert (=> b!3161748 m!3426072))

(declare-fun m!3426074 () Bool)

(assert (=> b!3161748 m!3426074))

(assert (=> b!3161738 d!868489))

(declare-fun bm!229003 () Bool)

(declare-fun call!229008 () Bool)

(declare-fun call!229010 () Bool)

(assert (=> bm!229003 (= call!229008 call!229010)))

(declare-fun b!3161767 () Bool)

(declare-fun e!1969741 () Bool)

(declare-fun e!1969740 () Bool)

(assert (=> b!3161767 (= e!1969741 e!1969740)))

(declare-fun c!531741 () Bool)

(assert (=> b!3161767 (= c!531741 ((_ is Star!9711) r!13156))))

(declare-fun c!531740 () Bool)

(declare-fun bm!229004 () Bool)

(assert (=> bm!229004 (= call!229010 (validRegex!4440 (ite c!531741 (reg!10040 r!13156) (ite c!531740 (regTwo!19935 r!13156) (regTwo!19934 r!13156)))))))

(declare-fun b!3161768 () Bool)

(declare-fun e!1969743 () Bool)

(assert (=> b!3161768 (= e!1969740 e!1969743)))

(declare-fun res!1287197 () Bool)

(declare-fun nullable!3331 (Regex!9711) Bool)

(assert (=> b!3161768 (= res!1287197 (not (nullable!3331 (reg!10040 r!13156))))))

(assert (=> b!3161768 (=> (not res!1287197) (not e!1969743))))

(declare-fun b!3161769 () Bool)

(declare-fun res!1287194 () Bool)

(declare-fun e!1969744 () Bool)

(assert (=> b!3161769 (=> res!1287194 e!1969744)))

(assert (=> b!3161769 (= res!1287194 (not ((_ is Concat!15032) r!13156)))))

(declare-fun e!1969742 () Bool)

(assert (=> b!3161769 (= e!1969742 e!1969744)))

(declare-fun b!3161770 () Bool)

(assert (=> b!3161770 (= e!1969743 call!229010)))

(declare-fun b!3161771 () Bool)

(declare-fun e!1969745 () Bool)

(assert (=> b!3161771 (= e!1969744 e!1969745)))

(declare-fun res!1287195 () Bool)

(assert (=> b!3161771 (=> (not res!1287195) (not e!1969745))))

(declare-fun call!229009 () Bool)

(assert (=> b!3161771 (= res!1287195 call!229009)))

(declare-fun bm!229005 () Bool)

(assert (=> bm!229005 (= call!229009 (validRegex!4440 (ite c!531740 (regOne!19935 r!13156) (regOne!19934 r!13156))))))

(declare-fun d!868491 () Bool)

(declare-fun res!1287198 () Bool)

(assert (=> d!868491 (=> res!1287198 e!1969741)))

(assert (=> d!868491 (= res!1287198 ((_ is ElementMatch!9711) r!13156))))

(assert (=> d!868491 (= (validRegex!4440 r!13156) e!1969741)))

(declare-fun b!3161772 () Bool)

(declare-fun res!1287196 () Bool)

(declare-fun e!1969746 () Bool)

(assert (=> b!3161772 (=> (not res!1287196) (not e!1969746))))

(assert (=> b!3161772 (= res!1287196 call!229009)))

(assert (=> b!3161772 (= e!1969742 e!1969746)))

(declare-fun b!3161773 () Bool)

(assert (=> b!3161773 (= e!1969746 call!229008)))

(declare-fun b!3161774 () Bool)

(assert (=> b!3161774 (= e!1969745 call!229008)))

(declare-fun b!3161775 () Bool)

(assert (=> b!3161775 (= e!1969740 e!1969742)))

(assert (=> b!3161775 (= c!531740 ((_ is Union!9711) r!13156))))

(assert (= (and d!868491 (not res!1287198)) b!3161767))

(assert (= (and b!3161767 c!531741) b!3161768))

(assert (= (and b!3161767 (not c!531741)) b!3161775))

(assert (= (and b!3161768 res!1287197) b!3161770))

(assert (= (and b!3161775 c!531740) b!3161772))

(assert (= (and b!3161775 (not c!531740)) b!3161769))

(assert (= (and b!3161772 res!1287196) b!3161773))

(assert (= (and b!3161769 (not res!1287194)) b!3161771))

(assert (= (and b!3161771 res!1287195) b!3161774))

(assert (= (or b!3161772 b!3161771) bm!229005))

(assert (= (or b!3161773 b!3161774) bm!229003))

(assert (= (or b!3161770 bm!229003) bm!229004))

(declare-fun m!3426076 () Bool)

(assert (=> bm!229004 m!3426076))

(declare-fun m!3426078 () Bool)

(assert (=> b!3161768 m!3426078))

(declare-fun m!3426080 () Bool)

(assert (=> bm!229005 m!3426080))

(assert (=> start!296382 d!868491))

(declare-fun d!868493 () Bool)

(declare-fun res!1287201 () Bool)

(declare-fun e!1969749 () Bool)

(assert (=> d!868493 (=> (not res!1287201) (not e!1969749))))

(assert (=> d!868493 (= res!1287201 ((_ is HashMap!4038) (cache!4177 cache!347)))))

(assert (=> d!868493 (= (inv!48055 cache!347) e!1969749)))

(declare-fun b!3161778 () Bool)

(assert (=> b!3161778 (= e!1969749 (validCacheMap!46 (cache!4177 cache!347)))))

(assert (= (and d!868493 res!1287201) b!3161778))

(assert (=> b!3161778 m!3426062))

(assert (=> start!296382 d!868493))

(declare-fun d!868495 () Bool)

(assert (=> d!868495 (= (array_inv!4696 (_keys!4432 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) (bvsge (size!26640 (_keys!4432 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3161727 d!868495))

(declare-fun d!868497 () Bool)

(assert (=> d!868497 (= (array_inv!4697 (_values!4413 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) (bvsge (size!26641 (_values!4413 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3161727 d!868497))

(declare-fun bm!229006 () Bool)

(declare-fun call!229011 () Bool)

(declare-fun call!229013 () Bool)

(assert (=> bm!229006 (= call!229011 call!229013)))

(declare-fun b!3161779 () Bool)

(declare-fun e!1969751 () Bool)

(declare-fun e!1969750 () Bool)

(assert (=> b!3161779 (= e!1969751 e!1969750)))

(declare-fun c!531743 () Bool)

(assert (=> b!3161779 (= c!531743 ((_ is Star!9711) (reg!10040 r!13156)))))

(declare-fun bm!229007 () Bool)

(declare-fun c!531742 () Bool)

(assert (=> bm!229007 (= call!229013 (validRegex!4440 (ite c!531743 (reg!10040 (reg!10040 r!13156)) (ite c!531742 (regTwo!19935 (reg!10040 r!13156)) (regTwo!19934 (reg!10040 r!13156))))))))

(declare-fun b!3161780 () Bool)

(declare-fun e!1969753 () Bool)

(assert (=> b!3161780 (= e!1969750 e!1969753)))

(declare-fun res!1287205 () Bool)

(assert (=> b!3161780 (= res!1287205 (not (nullable!3331 (reg!10040 (reg!10040 r!13156)))))))

(assert (=> b!3161780 (=> (not res!1287205) (not e!1969753))))

(declare-fun b!3161781 () Bool)

(declare-fun res!1287202 () Bool)

(declare-fun e!1969754 () Bool)

(assert (=> b!3161781 (=> res!1287202 e!1969754)))

(assert (=> b!3161781 (= res!1287202 (not ((_ is Concat!15032) (reg!10040 r!13156))))))

(declare-fun e!1969752 () Bool)

(assert (=> b!3161781 (= e!1969752 e!1969754)))

(declare-fun b!3161782 () Bool)

(assert (=> b!3161782 (= e!1969753 call!229013)))

(declare-fun b!3161783 () Bool)

(declare-fun e!1969755 () Bool)

(assert (=> b!3161783 (= e!1969754 e!1969755)))

(declare-fun res!1287203 () Bool)

(assert (=> b!3161783 (=> (not res!1287203) (not e!1969755))))

(declare-fun call!229012 () Bool)

(assert (=> b!3161783 (= res!1287203 call!229012)))

(declare-fun bm!229008 () Bool)

(assert (=> bm!229008 (= call!229012 (validRegex!4440 (ite c!531742 (regOne!19935 (reg!10040 r!13156)) (regOne!19934 (reg!10040 r!13156)))))))

(declare-fun d!868499 () Bool)

(declare-fun res!1287206 () Bool)

(assert (=> d!868499 (=> res!1287206 e!1969751)))

(assert (=> d!868499 (= res!1287206 ((_ is ElementMatch!9711) (reg!10040 r!13156)))))

(assert (=> d!868499 (= (validRegex!4440 (reg!10040 r!13156)) e!1969751)))

(declare-fun b!3161784 () Bool)

(declare-fun res!1287204 () Bool)

(declare-fun e!1969756 () Bool)

(assert (=> b!3161784 (=> (not res!1287204) (not e!1969756))))

(assert (=> b!3161784 (= res!1287204 call!229012)))

(assert (=> b!3161784 (= e!1969752 e!1969756)))

(declare-fun b!3161785 () Bool)

(assert (=> b!3161785 (= e!1969756 call!229011)))

(declare-fun b!3161786 () Bool)

(assert (=> b!3161786 (= e!1969755 call!229011)))

(declare-fun b!3161787 () Bool)

(assert (=> b!3161787 (= e!1969750 e!1969752)))

(assert (=> b!3161787 (= c!531742 ((_ is Union!9711) (reg!10040 r!13156)))))

(assert (= (and d!868499 (not res!1287206)) b!3161779))

(assert (= (and b!3161779 c!531743) b!3161780))

(assert (= (and b!3161779 (not c!531743)) b!3161787))

(assert (= (and b!3161780 res!1287205) b!3161782))

(assert (= (and b!3161787 c!531742) b!3161784))

(assert (= (and b!3161787 (not c!531742)) b!3161781))

(assert (= (and b!3161784 res!1287204) b!3161785))

(assert (= (and b!3161781 (not res!1287202)) b!3161783))

(assert (= (and b!3161783 res!1287203) b!3161786))

(assert (= (or b!3161784 b!3161783) bm!229008))

(assert (= (or b!3161785 b!3161786) bm!229006))

(assert (= (or b!3161782 bm!229006) bm!229007))

(declare-fun m!3426082 () Bool)

(assert (=> bm!229007 m!3426082))

(declare-fun m!3426084 () Bool)

(assert (=> b!3161780 m!3426084))

(declare-fun m!3426086 () Bool)

(assert (=> bm!229008 m!3426086))

(assert (=> b!3161739 d!868499))

(declare-fun tp!994975 () Bool)

(declare-fun tp!994978 () Bool)

(declare-fun tp!994976 () Bool)

(declare-fun e!1969761 () Bool)

(declare-fun b!3161794 () Bool)

(assert (=> b!3161794 (= e!1969761 (and tp!994978 tp_is_empty!16985 tp!994976 tp!994975))))

(declare-fun tp!994974 () Bool)

(declare-fun tp!994977 () Bool)

(declare-fun b!3161795 () Bool)

(declare-fun tp!994979 () Bool)

(declare-fun e!1969762 () Bool)

(assert (=> b!3161795 (= e!1969762 (and tp!994974 tp_is_empty!16985 tp!994977 tp!994979))))

(declare-fun mapNonEmpty!18753 () Bool)

(declare-fun mapRes!18753 () Bool)

(declare-fun tp!994980 () Bool)

(assert (=> mapNonEmpty!18753 (= mapRes!18753 (and tp!994980 e!1969761))))

(declare-fun mapValue!18753 () List!35540)

(declare-fun mapKey!18753 () (_ BitVec 32))

(declare-fun mapRest!18753 () (Array (_ BitVec 32) List!35540))

(assert (=> mapNonEmpty!18753 (= mapRest!18750 (store mapRest!18753 mapKey!18753 mapValue!18753))))

(declare-fun condMapEmpty!18753 () Bool)

(declare-fun mapDefault!18753 () List!35540)

(assert (=> mapNonEmpty!18750 (= condMapEmpty!18753 (= mapRest!18750 ((as const (Array (_ BitVec 32) List!35540)) mapDefault!18753)))))

(assert (=> mapNonEmpty!18750 (= tp!994958 (and e!1969762 mapRes!18753))))

(declare-fun mapIsEmpty!18753 () Bool)

(assert (=> mapIsEmpty!18753 mapRes!18753))

(assert (= (and mapNonEmpty!18750 condMapEmpty!18753) mapIsEmpty!18753))

(assert (= (and mapNonEmpty!18750 (not condMapEmpty!18753)) mapNonEmpty!18753))

(assert (= (and mapNonEmpty!18753 ((_ is Cons!35416) mapValue!18753)) b!3161794))

(assert (= (and mapNonEmpty!18750 ((_ is Cons!35416) mapDefault!18753)) b!3161795))

(declare-fun m!3426088 () Bool)

(assert (=> mapNonEmpty!18753 m!3426088))

(declare-fun b!3161800 () Bool)

(declare-fun tp!994987 () Bool)

(declare-fun tp!994988 () Bool)

(declare-fun tp!994989 () Bool)

(declare-fun e!1969765 () Bool)

(assert (=> b!3161800 (= e!1969765 (and tp!994987 tp_is_empty!16985 tp!994988 tp!994989))))

(assert (=> mapNonEmpty!18750 (= tp!994957 e!1969765)))

(assert (= (and mapNonEmpty!18750 ((_ is Cons!35416) mapValue!18750)) b!3161800))

(declare-fun tp!994992 () Bool)

(declare-fun tp!994990 () Bool)

(declare-fun b!3161801 () Bool)

(declare-fun tp!994991 () Bool)

(declare-fun e!1969766 () Bool)

(assert (=> b!3161801 (= e!1969766 (and tp!994990 tp_is_empty!16985 tp!994991 tp!994992))))

(assert (=> b!3161728 (= tp!994952 e!1969766)))

(assert (= (and b!3161728 ((_ is Cons!35416) mapDefault!18750)) b!3161801))

(declare-fun e!1969767 () Bool)

(declare-fun tp!994993 () Bool)

(declare-fun b!3161802 () Bool)

(declare-fun tp!994995 () Bool)

(declare-fun tp!994994 () Bool)

(assert (=> b!3161802 (= e!1969767 (and tp!994993 tp_is_empty!16985 tp!994994 tp!994995))))

(assert (=> b!3161727 (= tp!994951 e!1969767)))

(assert (= (and b!3161727 ((_ is Cons!35416) (zeroValue!4391 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347)))))))) b!3161802))

(declare-fun tp!994998 () Bool)

(declare-fun tp!994997 () Bool)

(declare-fun e!1969768 () Bool)

(declare-fun tp!994996 () Bool)

(declare-fun b!3161803 () Bool)

(assert (=> b!3161803 (= e!1969768 (and tp!994996 tp_is_empty!16985 tp!994997 tp!994998))))

(assert (=> b!3161727 (= tp!994955 e!1969768)))

(assert (= (and b!3161727 ((_ is Cons!35416) (minValue!4391 (v!35051 (underlying!8493 (v!35052 (underlying!8494 (cache!4177 cache!347)))))))) b!3161803))

(declare-fun b!3161817 () Bool)

(declare-fun e!1969771 () Bool)

(declare-fun tp!995010 () Bool)

(declare-fun tp!995012 () Bool)

(assert (=> b!3161817 (= e!1969771 (and tp!995010 tp!995012))))

(declare-fun b!3161814 () Bool)

(assert (=> b!3161814 (= e!1969771 tp_is_empty!16985)))

(declare-fun b!3161815 () Bool)

(declare-fun tp!995011 () Bool)

(declare-fun tp!995009 () Bool)

(assert (=> b!3161815 (= e!1969771 (and tp!995011 tp!995009))))

(declare-fun b!3161816 () Bool)

(declare-fun tp!995013 () Bool)

(assert (=> b!3161816 (= e!1969771 tp!995013)))

(assert (=> b!3161731 (= tp!994954 e!1969771)))

(assert (= (and b!3161731 ((_ is ElementMatch!9711) (regOne!19934 r!13156))) b!3161814))

(assert (= (and b!3161731 ((_ is Concat!15032) (regOne!19934 r!13156))) b!3161815))

(assert (= (and b!3161731 ((_ is Star!9711) (regOne!19934 r!13156))) b!3161816))

(assert (= (and b!3161731 ((_ is Union!9711) (regOne!19934 r!13156))) b!3161817))

(declare-fun b!3161821 () Bool)

(declare-fun e!1969772 () Bool)

(declare-fun tp!995015 () Bool)

(declare-fun tp!995017 () Bool)

(assert (=> b!3161821 (= e!1969772 (and tp!995015 tp!995017))))

(declare-fun b!3161818 () Bool)

(assert (=> b!3161818 (= e!1969772 tp_is_empty!16985)))

(declare-fun b!3161819 () Bool)

(declare-fun tp!995016 () Bool)

(declare-fun tp!995014 () Bool)

(assert (=> b!3161819 (= e!1969772 (and tp!995016 tp!995014))))

(declare-fun b!3161820 () Bool)

(declare-fun tp!995018 () Bool)

(assert (=> b!3161820 (= e!1969772 tp!995018)))

(assert (=> b!3161731 (= tp!994948 e!1969772)))

(assert (= (and b!3161731 ((_ is ElementMatch!9711) (regTwo!19934 r!13156))) b!3161818))

(assert (= (and b!3161731 ((_ is Concat!15032) (regTwo!19934 r!13156))) b!3161819))

(assert (= (and b!3161731 ((_ is Star!9711) (regTwo!19934 r!13156))) b!3161820))

(assert (= (and b!3161731 ((_ is Union!9711) (regTwo!19934 r!13156))) b!3161821))

(declare-fun b!3161825 () Bool)

(declare-fun e!1969773 () Bool)

(declare-fun tp!995020 () Bool)

(declare-fun tp!995022 () Bool)

(assert (=> b!3161825 (= e!1969773 (and tp!995020 tp!995022))))

(declare-fun b!3161822 () Bool)

(assert (=> b!3161822 (= e!1969773 tp_is_empty!16985)))

(declare-fun b!3161823 () Bool)

(declare-fun tp!995021 () Bool)

(declare-fun tp!995019 () Bool)

(assert (=> b!3161823 (= e!1969773 (and tp!995021 tp!995019))))

(declare-fun b!3161824 () Bool)

(declare-fun tp!995023 () Bool)

(assert (=> b!3161824 (= e!1969773 tp!995023)))

(assert (=> b!3161725 (= tp!994956 e!1969773)))

(assert (= (and b!3161725 ((_ is ElementMatch!9711) (regOne!19935 r!13156))) b!3161822))

(assert (= (and b!3161725 ((_ is Concat!15032) (regOne!19935 r!13156))) b!3161823))

(assert (= (and b!3161725 ((_ is Star!9711) (regOne!19935 r!13156))) b!3161824))

(assert (= (and b!3161725 ((_ is Union!9711) (regOne!19935 r!13156))) b!3161825))

(declare-fun b!3161829 () Bool)

(declare-fun e!1969774 () Bool)

(declare-fun tp!995025 () Bool)

(declare-fun tp!995027 () Bool)

(assert (=> b!3161829 (= e!1969774 (and tp!995025 tp!995027))))

(declare-fun b!3161826 () Bool)

(assert (=> b!3161826 (= e!1969774 tp_is_empty!16985)))

(declare-fun b!3161827 () Bool)

(declare-fun tp!995026 () Bool)

(declare-fun tp!995024 () Bool)

(assert (=> b!3161827 (= e!1969774 (and tp!995026 tp!995024))))

(declare-fun b!3161828 () Bool)

(declare-fun tp!995028 () Bool)

(assert (=> b!3161828 (= e!1969774 tp!995028)))

(assert (=> b!3161725 (= tp!994949 e!1969774)))

(assert (= (and b!3161725 ((_ is ElementMatch!9711) (regTwo!19935 r!13156))) b!3161826))

(assert (= (and b!3161725 ((_ is Concat!15032) (regTwo!19935 r!13156))) b!3161827))

(assert (= (and b!3161725 ((_ is Star!9711) (regTwo!19935 r!13156))) b!3161828))

(assert (= (and b!3161725 ((_ is Union!9711) (regTwo!19935 r!13156))) b!3161829))

(declare-fun b!3161833 () Bool)

(declare-fun e!1969775 () Bool)

(declare-fun tp!995030 () Bool)

(declare-fun tp!995032 () Bool)

(assert (=> b!3161833 (= e!1969775 (and tp!995030 tp!995032))))

(declare-fun b!3161830 () Bool)

(assert (=> b!3161830 (= e!1969775 tp_is_empty!16985)))

(declare-fun b!3161831 () Bool)

(declare-fun tp!995031 () Bool)

(declare-fun tp!995029 () Bool)

(assert (=> b!3161831 (= e!1969775 (and tp!995031 tp!995029))))

(declare-fun b!3161832 () Bool)

(declare-fun tp!995033 () Bool)

(assert (=> b!3161832 (= e!1969775 tp!995033)))

(assert (=> b!3161735 (= tp!994953 e!1969775)))

(assert (= (and b!3161735 ((_ is ElementMatch!9711) (reg!10040 r!13156))) b!3161830))

(assert (= (and b!3161735 ((_ is Concat!15032) (reg!10040 r!13156))) b!3161831))

(assert (= (and b!3161735 ((_ is Star!9711) (reg!10040 r!13156))) b!3161832))

(assert (= (and b!3161735 ((_ is Union!9711) (reg!10040 r!13156))) b!3161833))

(check-sat (not b!3161821) (not b!3161801) (not b!3161816) (not b!3161824) (not b!3161831) (not b!3161748) (not b!3161794) b_and!209257 (not b_next!83715) (not bm!229008) (not b!3161829) (not b!3161768) (not b!3161795) (not b!3161820) (not b!3161825) (not b!3161803) (not d!868489) (not b!3161833) (not b!3161802) (not b_next!83713) (not d!868487) (not b!3161827) (not bm!229004) (not b!3161815) (not bm!229005) (not b!3161778) (not b!3161828) (not mapNonEmpty!18753) (not b!3161832) (not b!3161746) (not bm!229007) (not b!3161823) (not b!3161780) (not b!3161817) (not b!3161800) b_and!209255 tp_is_empty!16985 (not b!3161819))
(check-sat b_and!209257 b_and!209255 (not b_next!83713) (not b_next!83715))
