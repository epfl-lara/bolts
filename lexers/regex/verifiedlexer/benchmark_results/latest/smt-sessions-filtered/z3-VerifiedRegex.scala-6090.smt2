; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296554 () Bool)

(assert start!296554)

(declare-fun b!3164290 () Bool)

(declare-fun b_free!83089 () Bool)

(declare-fun b_next!83793 () Bool)

(assert (=> b!3164290 (= b_free!83089 (not b_next!83793))))

(declare-fun tp!996542 () Bool)

(declare-fun b_and!209343 () Bool)

(assert (=> b!3164290 (= tp!996542 b_and!209343)))

(declare-fun b!3164271 () Bool)

(declare-fun b_free!83091 () Bool)

(declare-fun b_next!83795 () Bool)

(assert (=> b!3164271 (= b_free!83091 (not b_next!83795))))

(declare-fun tp!996539 () Bool)

(declare-fun b_and!209345 () Bool)

(assert (=> b!3164271 (= tp!996539 b_and!209345)))

(declare-fun b!3164268 () Bool)

(declare-fun e!1971217 () Bool)

(declare-fun e!1971210 () Bool)

(assert (=> b!3164268 (= e!1971217 e!1971210)))

(declare-fun bm!229309 () Bool)

(declare-datatypes ((C!19648 0))(
  ( (C!19649 (val!11860 Int)) )
))
(declare-datatypes ((Regex!9731 0))(
  ( (ElementMatch!9731 (c!532131 C!19648)) (Concat!15052 (regOne!19974 Regex!9731) (regTwo!19974 Regex!9731)) (EmptyExpr!9731) (Star!9731 (reg!10060 Regex!9731)) (EmptyLang!9731) (Union!9731 (regOne!19975 Regex!9731) (regTwo!19975 Regex!9731)) )
))
(declare-datatypes ((tuple2!34488 0))(
  ( (tuple2!34489 (_1!20376 Regex!9731) (_2!20376 C!19648)) )
))
(declare-datatypes ((tuple2!34490 0))(
  ( (tuple2!34491 (_1!20377 tuple2!34488) (_2!20377 Regex!9731)) )
))
(declare-datatypes ((array!14806 0))(
  ( (array!14807 (arr!6594 (Array (_ BitVec 32) (_ BitVec 64))) (size!26680 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4068 0))(
  ( (HashableExt!4067 (__x!22562 Int)) )
))
(declare-datatypes ((List!35562 0))(
  ( (Nil!35438) (Cons!35438 (h!40858 tuple2!34490) (t!234633 List!35562)) )
))
(declare-datatypes ((array!14808 0))(
  ( (array!14809 (arr!6595 (Array (_ BitVec 32) List!35562)) (size!26681 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8304 0))(
  ( (LongMapFixedSize!8305 (defaultEntry!4537 Int) (mask!10811 (_ BitVec 32)) (extraKeys!4401 (_ BitVec 32)) (zeroValue!4411 List!35562) (minValue!4411 List!35562) (_size!8347 (_ BitVec 32)) (_keys!4452 array!14806) (_values!4433 array!14808) (_vacant!4213 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16417 0))(
  ( (Cell!16418 (v!35107 LongMapFixedSize!8304)) )
))
(declare-datatypes ((MutLongMap!4152 0))(
  ( (LongMap!4152 (underlying!8533 Cell!16417)) (MutLongMapExt!4151 (__x!22563 Int)) )
))
(declare-datatypes ((Cell!16419 0))(
  ( (Cell!16420 (v!35108 MutLongMap!4152)) )
))
(declare-datatypes ((MutableMap!4058 0))(
  ( (MutableMapExt!4057 (__x!22564 Int)) (HashMap!4058 (underlying!8534 Cell!16419) (hashF!6100 Hashable!4068) (_size!8348 (_ BitVec 32)) (defaultValue!4229 Int)) )
))
(declare-datatypes ((Cache!386 0))(
  ( (Cache!387 (cache!4200 MutableMap!4058)) )
))
(declare-datatypes ((tuple2!34492 0))(
  ( (tuple2!34493 (_1!20378 Regex!9731) (_2!20378 Cache!386)) )
))
(declare-fun call!229315 () tuple2!34492)

(declare-fun call!229316 () tuple2!34492)

(assert (=> bm!229309 (= call!229315 call!229316)))

(declare-fun b!3164269 () Bool)

(declare-fun e!1971215 () Bool)

(declare-fun tp!996533 () Bool)

(declare-fun tp!996537 () Bool)

(assert (=> b!3164269 (= e!1971215 (and tp!996533 tp!996537))))

(declare-fun b!3164270 () Bool)

(declare-fun e!1971209 () Bool)

(assert (=> b!3164270 (= e!1971210 e!1971209)))

(declare-fun tp!996532 () Bool)

(declare-fun cache!347 () Cache!386)

(declare-fun e!1971220 () Bool)

(declare-fun tp!996541 () Bool)

(declare-fun array_inv!4722 (array!14806) Bool)

(declare-fun array_inv!4723 (array!14808) Bool)

(assert (=> b!3164271 (= e!1971209 (and tp!996539 tp!996541 tp!996532 (array_inv!4722 (_keys!4452 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) (array_inv!4723 (_values!4433 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) e!1971220))))

(declare-fun mapIsEmpty!18830 () Bool)

(declare-fun mapRes!18830 () Bool)

(assert (=> mapIsEmpty!18830 mapRes!18830))

(declare-fun mapNonEmpty!18830 () Bool)

(declare-fun tp!996540 () Bool)

(declare-fun tp!996543 () Bool)

(assert (=> mapNonEmpty!18830 (= mapRes!18830 (and tp!996540 tp!996543))))

(declare-fun mapValue!18830 () List!35562)

(declare-fun mapKey!18830 () (_ BitVec 32))

(declare-fun mapRest!18830 () (Array (_ BitVec 32) List!35562))

(assert (=> mapNonEmpty!18830 (= (arr!6595 (_values!4433 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) (store mapRest!18830 mapKey!18830 mapValue!18830))))

(declare-fun b!3164272 () Bool)

(declare-fun e!1971213 () tuple2!34492)

(assert (=> b!3164272 (= e!1971213 (tuple2!34493 EmptyLang!9731 cache!347))))

(declare-fun b!3164273 () Bool)

(declare-fun e!1971211 () Bool)

(declare-fun lt!1063849 () MutLongMap!4152)

(get-info :version)

(assert (=> b!3164273 (= e!1971211 (and e!1971217 ((_ is LongMap!4152) lt!1063849)))))

(assert (=> b!3164273 (= lt!1063849 (v!35108 (underlying!8534 (cache!4200 cache!347))))))

(declare-fun b!3164274 () Bool)

(declare-fun lt!1063848 () tuple2!34492)

(assert (=> b!3164274 (= lt!1063848 call!229315)))

(declare-fun e!1971212 () tuple2!34492)

(declare-fun r!13156 () Regex!9731)

(assert (=> b!3164274 (= e!1971212 (tuple2!34493 (Concat!15052 (_1!20378 lt!1063848) (Star!9731 (reg!10060 r!13156))) (_2!20378 lt!1063848)))))

(declare-fun bm!229311 () Bool)

(declare-fun call!229314 () tuple2!34492)

(assert (=> bm!229311 (= call!229314 call!229315)))

(declare-fun b!3164275 () Bool)

(declare-fun e!1971214 () tuple2!34492)

(declare-fun lt!1063850 () tuple2!34492)

(assert (=> b!3164275 (= e!1971214 (tuple2!34493 (Union!9731 (Concat!15052 (_1!20378 lt!1063850) (regTwo!19974 r!13156)) EmptyLang!9731) (_2!20378 lt!1063850)))))

(assert (=> b!3164275 (= lt!1063850 call!229314)))

(declare-fun lt!1063851 () tuple2!34492)

(declare-fun c!532127 () Bool)

(declare-fun a!2409 () C!19648)

(declare-fun bm!229312 () Bool)

(declare-fun call!229317 () tuple2!34492)

(declare-fun derivativeStepMem!26 (Regex!9731 C!19648 Cache!386) tuple2!34492)

(assert (=> bm!229312 (= call!229317 (derivativeStepMem!26 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)) a!2409 (ite c!532127 cache!347 (_2!20378 lt!1063851))))))

(declare-fun b!3164276 () Bool)

(declare-fun tp!996536 () Bool)

(assert (=> b!3164276 (= e!1971220 (and tp!996536 mapRes!18830))))

(declare-fun condMapEmpty!18830 () Bool)

(declare-fun mapDefault!18830 () List!35562)

(assert (=> b!3164276 (= condMapEmpty!18830 (= (arr!6595 (_values!4433 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) ((as const (Array (_ BitVec 32) List!35562)) mapDefault!18830)))))

(declare-fun b!3164277 () Bool)

(declare-fun tp!996535 () Bool)

(assert (=> b!3164277 (= e!1971215 tp!996535)))

(declare-fun b!3164278 () Bool)

(declare-fun e!1971219 () Bool)

(declare-fun e!1971208 () Bool)

(assert (=> b!3164278 (= e!1971219 e!1971208)))

(declare-fun b!3164279 () Bool)

(declare-fun lt!1063852 () tuple2!34492)

(assert (=> b!3164279 (= e!1971214 (tuple2!34493 (Union!9731 (Concat!15052 (_1!20378 lt!1063851) (regTwo!19974 r!13156)) (_1!20378 lt!1063852)) (_2!20378 lt!1063852)))))

(assert (=> b!3164279 (= lt!1063851 call!229314)))

(assert (=> b!3164279 (= lt!1063852 call!229317)))

(declare-fun b!3164280 () Bool)

(declare-fun e!1971218 () Bool)

(declare-fun lt!1063854 () tuple2!34492)

(declare-fun derivativeStep!2887 (Regex!9731 C!19648) Regex!9731)

(assert (=> b!3164280 (= e!1971218 (not (= (_1!20378 lt!1063854) (derivativeStep!2887 r!13156 a!2409))))))

(declare-fun b!3164281 () Bool)

(declare-fun c!532129 () Bool)

(declare-fun nullable!3339 (Regex!9731) Bool)

(assert (=> b!3164281 (= c!532129 (nullable!3339 (regOne!19974 r!13156)))))

(assert (=> b!3164281 (= e!1971212 e!1971214)))

(declare-fun b!3164282 () Bool)

(declare-fun e!1971221 () tuple2!34492)

(assert (=> b!3164282 (= e!1971221 (tuple2!34493 (ite (= a!2409 (c!532131 r!13156)) EmptyExpr!9731 EmptyLang!9731) cache!347))))

(declare-fun b!3164283 () Bool)

(declare-fun tp!996534 () Bool)

(declare-fun tp!996538 () Bool)

(assert (=> b!3164283 (= e!1971215 (and tp!996534 tp!996538))))

(declare-fun b!3164284 () Bool)

(assert (=> b!3164284 (= c!532127 ((_ is Union!9731) r!13156))))

(declare-fun e!1971223 () tuple2!34492)

(assert (=> b!3164284 (= e!1971221 e!1971223)))

(declare-fun b!3164285 () Bool)

(declare-fun e!1971216 () Bool)

(assert (=> b!3164285 (= e!1971216 e!1971218)))

(declare-fun res!1287719 () Bool)

(assert (=> b!3164285 (=> (not res!1287719) (not e!1971218))))

(declare-fun validCacheMap!54 (MutableMap!4058) Bool)

(assert (=> b!3164285 (= res!1287719 (validCacheMap!54 (cache!4200 (_2!20378 lt!1063854))))))

(assert (=> b!3164285 (= lt!1063854 e!1971213)))

(declare-fun c!532126 () Bool)

(assert (=> b!3164285 (= c!532126 (or ((_ is EmptyExpr!9731) r!13156) ((_ is EmptyLang!9731) r!13156)))))

(declare-fun b!3164286 () Bool)

(declare-fun tp_is_empty!17025 () Bool)

(assert (=> b!3164286 (= e!1971215 tp_is_empty!17025)))

(declare-fun res!1287722 () Bool)

(assert (=> start!296554 (=> (not res!1287722) (not e!1971216))))

(declare-fun validRegex!4455 (Regex!9731) Bool)

(assert (=> start!296554 (= res!1287722 (validRegex!4455 r!13156))))

(assert (=> start!296554 e!1971216))

(assert (=> start!296554 e!1971215))

(declare-fun inv!48099 (Cache!386) Bool)

(assert (=> start!296554 (and (inv!48099 cache!347) e!1971219)))

(assert (=> start!296554 tp_is_empty!17025))

(declare-fun lt!1063853 () tuple2!34492)

(declare-fun c!532130 () Bool)

(declare-fun bm!229310 () Bool)

(assert (=> bm!229310 (= call!229316 (derivativeStepMem!26 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))) a!2409 (ite c!532127 (_2!20378 lt!1063853) cache!347)))))

(declare-fun b!3164287 () Bool)

(declare-fun lt!1063855 () tuple2!34492)

(assert (=> b!3164287 (= e!1971223 (tuple2!34493 (Union!9731 (_1!20378 lt!1063853) (_1!20378 lt!1063855)) (_2!20378 lt!1063855)))))

(assert (=> b!3164287 (= lt!1063853 call!229317)))

(assert (=> b!3164287 (= lt!1063855 call!229316)))

(declare-fun b!3164288 () Bool)

(assert (=> b!3164288 (= e!1971213 e!1971221)))

(declare-fun c!532128 () Bool)

(assert (=> b!3164288 (= c!532128 ((_ is ElementMatch!9731) r!13156))))

(declare-fun b!3164289 () Bool)

(declare-fun res!1287720 () Bool)

(assert (=> b!3164289 (=> (not res!1287720) (not e!1971216))))

(declare-fun valid!3234 (Cache!386) Bool)

(assert (=> b!3164289 (= res!1287720 (valid!3234 cache!347))))

(assert (=> b!3164290 (= e!1971208 (and e!1971211 tp!996542))))

(declare-fun b!3164291 () Bool)

(assert (=> b!3164291 (= e!1971223 e!1971212)))

(assert (=> b!3164291 (= c!532130 ((_ is Star!9731) r!13156))))

(declare-fun b!3164292 () Bool)

(declare-fun res!1287721 () Bool)

(assert (=> b!3164292 (=> (not res!1287721) (not e!1971216))))

(declare-datatypes ((Option!6892 0))(
  ( (None!6891) (Some!6891 (v!35109 Regex!9731)) )
))
(declare-fun get!11230 (Cache!386 Regex!9731 C!19648) Option!6892)

(assert (=> b!3164292 (= res!1287721 (not ((_ is Some!6891) (get!11230 cache!347 r!13156 a!2409))))))

(assert (= (and start!296554 res!1287722) b!3164289))

(assert (= (and b!3164289 res!1287720) b!3164292))

(assert (= (and b!3164292 res!1287721) b!3164285))

(assert (= (and b!3164285 c!532126) b!3164272))

(assert (= (and b!3164285 (not c!532126)) b!3164288))

(assert (= (and b!3164288 c!532128) b!3164282))

(assert (= (and b!3164288 (not c!532128)) b!3164284))

(assert (= (and b!3164284 c!532127) b!3164287))

(assert (= (and b!3164284 (not c!532127)) b!3164291))

(assert (= (and b!3164291 c!532130) b!3164274))

(assert (= (and b!3164291 (not c!532130)) b!3164281))

(assert (= (and b!3164281 c!532129) b!3164279))

(assert (= (and b!3164281 (not c!532129)) b!3164275))

(assert (= (or b!3164279 b!3164275) bm!229311))

(assert (= (or b!3164274 bm!229311) bm!229309))

(assert (= (or b!3164287 bm!229309) bm!229310))

(assert (= (or b!3164287 b!3164279) bm!229312))

(assert (= (and b!3164285 res!1287719) b!3164280))

(assert (= (and start!296554 ((_ is ElementMatch!9731) r!13156)) b!3164286))

(assert (= (and start!296554 ((_ is Concat!15052) r!13156)) b!3164283))

(assert (= (and start!296554 ((_ is Star!9731) r!13156)) b!3164277))

(assert (= (and start!296554 ((_ is Union!9731) r!13156)) b!3164269))

(assert (= (and b!3164276 condMapEmpty!18830) mapIsEmpty!18830))

(assert (= (and b!3164276 (not condMapEmpty!18830)) mapNonEmpty!18830))

(assert (= b!3164271 b!3164276))

(assert (= b!3164270 b!3164271))

(assert (= b!3164268 b!3164270))

(assert (= (and b!3164273 ((_ is LongMap!4152) (v!35108 (underlying!8534 (cache!4200 cache!347))))) b!3164268))

(assert (= b!3164290 b!3164273))

(assert (= (and b!3164278 ((_ is HashMap!4058) (cache!4200 cache!347))) b!3164290))

(assert (= start!296554 b!3164278))

(declare-fun m!3427200 () Bool)

(assert (=> b!3164280 m!3427200))

(declare-fun m!3427202 () Bool)

(assert (=> b!3164271 m!3427202))

(declare-fun m!3427204 () Bool)

(assert (=> b!3164271 m!3427204))

(declare-fun m!3427206 () Bool)

(assert (=> b!3164281 m!3427206))

(declare-fun m!3427208 () Bool)

(assert (=> b!3164285 m!3427208))

(declare-fun m!3427210 () Bool)

(assert (=> bm!229312 m!3427210))

(declare-fun m!3427212 () Bool)

(assert (=> mapNonEmpty!18830 m!3427212))

(declare-fun m!3427214 () Bool)

(assert (=> b!3164292 m!3427214))

(declare-fun m!3427216 () Bool)

(assert (=> bm!229310 m!3427216))

(declare-fun m!3427218 () Bool)

(assert (=> start!296554 m!3427218))

(declare-fun m!3427220 () Bool)

(assert (=> start!296554 m!3427220))

(declare-fun m!3427222 () Bool)

(assert (=> b!3164289 m!3427222))

(check-sat (not b!3164292) (not b!3164285) (not b!3164276) (not bm!229310) (not mapNonEmpty!18830) b_and!209345 b_and!209343 tp_is_empty!17025 (not b_next!83793) (not b_next!83795) (not b!3164280) (not b!3164277) (not b!3164281) (not b!3164289) (not b!3164269) (not b!3164271) (not b!3164283) (not bm!229312) (not start!296554))
(check-sat b_and!209343 b_and!209345 (not b_next!83795) (not b_next!83793))
(get-model)

(declare-fun d!868705 () Bool)

(declare-fun res!1287729 () Bool)

(declare-fun e!1971228 () Bool)

(assert (=> d!868705 (=> (not res!1287729) (not e!1971228))))

(declare-fun valid!3235 (MutableMap!4058) Bool)

(assert (=> d!868705 (= res!1287729 (valid!3235 (cache!4200 (_2!20378 lt!1063854))))))

(assert (=> d!868705 (= (validCacheMap!54 (cache!4200 (_2!20378 lt!1063854))) e!1971228)))

(declare-fun b!3164299 () Bool)

(declare-fun res!1287730 () Bool)

(assert (=> b!3164299 (=> (not res!1287730) (not e!1971228))))

(declare-fun invariantList!478 (List!35562) Bool)

(declare-datatypes ((ListMap!1297 0))(
  ( (ListMap!1298 (toList!2051 List!35562)) )
))
(declare-fun map!7892 (MutableMap!4058) ListMap!1297)

(assert (=> b!3164299 (= res!1287730 (invariantList!478 (toList!2051 (map!7892 (cache!4200 (_2!20378 lt!1063854))))))))

(declare-fun b!3164300 () Bool)

(declare-fun lambda!115814 () Int)

(declare-fun forall!7144 (List!35562 Int) Bool)

(assert (=> b!3164300 (= e!1971228 (forall!7144 (toList!2051 (map!7892 (cache!4200 (_2!20378 lt!1063854)))) lambda!115814))))

(assert (= (and d!868705 res!1287729) b!3164299))

(assert (= (and b!3164299 res!1287730) b!3164300))

(declare-fun m!3427225 () Bool)

(assert (=> d!868705 m!3427225))

(declare-fun m!3427227 () Bool)

(assert (=> b!3164299 m!3427227))

(declare-fun m!3427229 () Bool)

(assert (=> b!3164299 m!3427229))

(assert (=> b!3164300 m!3427227))

(declare-fun m!3427231 () Bool)

(assert (=> b!3164300 m!3427231))

(assert (=> b!3164285 d!868705))

(declare-fun e!1971243 () Regex!9731)

(declare-fun call!229327 () Regex!9731)

(declare-fun call!229329 () Regex!9731)

(declare-fun b!3164321 () Bool)

(assert (=> b!3164321 (= e!1971243 (Union!9731 (Concat!15052 call!229329 (regTwo!19974 r!13156)) call!229327))))

(declare-fun b!3164322 () Bool)

(declare-fun e!1971242 () Regex!9731)

(assert (=> b!3164322 (= e!1971242 (ite (= a!2409 (c!532131 r!13156)) EmptyExpr!9731 EmptyLang!9731))))

(declare-fun b!3164323 () Bool)

(declare-fun e!1971239 () Regex!9731)

(assert (=> b!3164323 (= e!1971239 EmptyLang!9731)))

(declare-fun b!3164324 () Bool)

(declare-fun c!532146 () Bool)

(assert (=> b!3164324 (= c!532146 (nullable!3339 (regOne!19974 r!13156)))))

(declare-fun e!1971241 () Regex!9731)

(assert (=> b!3164324 (= e!1971241 e!1971243)))

(declare-fun b!3164325 () Bool)

(declare-fun c!532143 () Bool)

(assert (=> b!3164325 (= c!532143 ((_ is Union!9731) r!13156))))

(declare-fun e!1971240 () Regex!9731)

(assert (=> b!3164325 (= e!1971242 e!1971240)))

(declare-fun b!3164326 () Bool)

(assert (=> b!3164326 (= e!1971243 (Union!9731 (Concat!15052 call!229329 (regTwo!19974 r!13156)) EmptyLang!9731))))

(declare-fun c!532142 () Bool)

(declare-fun bm!229321 () Bool)

(declare-fun call!229326 () Regex!9731)

(assert (=> bm!229321 (= call!229326 (derivativeStep!2887 (ite c!532143 (regTwo!19975 r!13156) (ite c!532142 (reg!10060 r!13156) (regOne!19974 r!13156))) a!2409))))

(declare-fun b!3164328 () Bool)

(assert (=> b!3164328 (= e!1971240 e!1971241)))

(assert (=> b!3164328 (= c!532142 ((_ is Star!9731) r!13156))))

(declare-fun b!3164329 () Bool)

(declare-fun call!229328 () Regex!9731)

(assert (=> b!3164329 (= e!1971241 (Concat!15052 call!229328 r!13156))))

(declare-fun bm!229322 () Bool)

(assert (=> bm!229322 (= call!229328 call!229326)))

(declare-fun b!3164330 () Bool)

(assert (=> b!3164330 (= e!1971240 (Union!9731 call!229327 call!229326))))

(declare-fun d!868707 () Bool)

(declare-fun lt!1063858 () Regex!9731)

(assert (=> d!868707 (validRegex!4455 lt!1063858)))

(assert (=> d!868707 (= lt!1063858 e!1971239)))

(declare-fun c!532144 () Bool)

(assert (=> d!868707 (= c!532144 (or ((_ is EmptyExpr!9731) r!13156) ((_ is EmptyLang!9731) r!13156)))))

(assert (=> d!868707 (validRegex!4455 r!13156)))

(assert (=> d!868707 (= (derivativeStep!2887 r!13156 a!2409) lt!1063858)))

(declare-fun b!3164327 () Bool)

(assert (=> b!3164327 (= e!1971239 e!1971242)))

(declare-fun c!532145 () Bool)

(assert (=> b!3164327 (= c!532145 ((_ is ElementMatch!9731) r!13156))))

(declare-fun bm!229323 () Bool)

(assert (=> bm!229323 (= call!229329 call!229328)))

(declare-fun bm!229324 () Bool)

(assert (=> bm!229324 (= call!229327 (derivativeStep!2887 (ite c!532143 (regOne!19975 r!13156) (regTwo!19974 r!13156)) a!2409))))

(assert (= (and d!868707 c!532144) b!3164323))

(assert (= (and d!868707 (not c!532144)) b!3164327))

(assert (= (and b!3164327 c!532145) b!3164322))

(assert (= (and b!3164327 (not c!532145)) b!3164325))

(assert (= (and b!3164325 c!532143) b!3164330))

(assert (= (and b!3164325 (not c!532143)) b!3164328))

(assert (= (and b!3164328 c!532142) b!3164329))

(assert (= (and b!3164328 (not c!532142)) b!3164324))

(assert (= (and b!3164324 c!532146) b!3164321))

(assert (= (and b!3164324 (not c!532146)) b!3164326))

(assert (= (or b!3164321 b!3164326) bm!229323))

(assert (= (or b!3164329 bm!229323) bm!229322))

(assert (= (or b!3164330 bm!229322) bm!229321))

(assert (= (or b!3164330 b!3164321) bm!229324))

(assert (=> b!3164324 m!3427206))

(declare-fun m!3427233 () Bool)

(assert (=> bm!229321 m!3427233))

(declare-fun m!3427235 () Bool)

(assert (=> d!868707 m!3427235))

(assert (=> d!868707 m!3427218))

(declare-fun m!3427237 () Bool)

(assert (=> bm!229324 m!3427237))

(assert (=> b!3164280 d!868707))

(declare-fun d!868709 () Bool)

(declare-fun nullableFct!949 (Regex!9731) Bool)

(assert (=> d!868709 (= (nullable!3339 (regOne!19974 r!13156)) (nullableFct!949 (regOne!19974 r!13156)))))

(declare-fun bs!539496 () Bool)

(assert (= bs!539496 d!868709))

(declare-fun m!3427239 () Bool)

(assert (=> bs!539496 m!3427239))

(assert (=> b!3164281 d!868709))

(declare-fun d!868711 () Bool)

(declare-fun e!1971249 () Bool)

(assert (=> d!868711 e!1971249))

(declare-fun res!1287733 () Bool)

(assert (=> d!868711 (=> res!1287733 e!1971249)))

(declare-fun lt!1063863 () Option!6892)

(declare-fun isEmpty!19754 (Option!6892) Bool)

(assert (=> d!868711 (= res!1287733 (isEmpty!19754 lt!1063863))))

(declare-fun e!1971248 () Option!6892)

(assert (=> d!868711 (= lt!1063863 e!1971248)))

(declare-fun c!532150 () Bool)

(declare-fun contains!6161 (MutableMap!4058 tuple2!34488) Bool)

(assert (=> d!868711 (= c!532150 (contains!6161 (cache!4200 cache!347) (tuple2!34489 r!13156 a!2409)))))

(assert (=> d!868711 (validRegex!4455 r!13156)))

(assert (=> d!868711 (= (get!11230 cache!347 r!13156 a!2409) lt!1063863)))

(declare-fun b!3164337 () Bool)

(declare-fun apply!7942 (MutableMap!4058 tuple2!34488) Regex!9731)

(assert (=> b!3164337 (= e!1971248 (Some!6891 (apply!7942 (cache!4200 cache!347) (tuple2!34489 r!13156 a!2409))))))

(declare-datatypes ((Unit!49798 0))(
  ( (Unit!49799) )
))
(declare-fun lt!1063864 () Unit!49798)

(declare-fun lemmaIfInCacheThenValid!52 (Cache!386 Regex!9731 C!19648) Unit!49798)

(assert (=> b!3164337 (= lt!1063864 (lemmaIfInCacheThenValid!52 cache!347 r!13156 a!2409))))

(declare-fun b!3164338 () Bool)

(assert (=> b!3164338 (= e!1971248 None!6891)))

(declare-fun b!3164339 () Bool)

(declare-fun get!11231 (Option!6892) Regex!9731)

(assert (=> b!3164339 (= e!1971249 (= (get!11231 lt!1063863) (derivativeStep!2887 r!13156 a!2409)))))

(assert (= (and d!868711 c!532150) b!3164337))

(assert (= (and d!868711 (not c!532150)) b!3164338))

(assert (= (and d!868711 (not res!1287733)) b!3164339))

(declare-fun m!3427241 () Bool)

(assert (=> d!868711 m!3427241))

(declare-fun m!3427243 () Bool)

(assert (=> d!868711 m!3427243))

(assert (=> d!868711 m!3427218))

(declare-fun m!3427245 () Bool)

(assert (=> b!3164337 m!3427245))

(declare-fun m!3427247 () Bool)

(assert (=> b!3164337 m!3427247))

(declare-fun m!3427249 () Bool)

(assert (=> b!3164339 m!3427249))

(assert (=> b!3164339 m!3427200))

(assert (=> b!3164292 d!868711))

(declare-fun b!3164364 () Bool)

(declare-fun e!1971265 () tuple2!34492)

(assert (=> b!3164364 (= e!1971265 (tuple2!34493 EmptyLang!9731 (ite c!532127 cache!347 (_2!20378 lt!1063851))))))

(declare-fun b!3164365 () Bool)

(declare-fun e!1971263 () tuple2!34492)

(declare-fun e!1971267 () tuple2!34492)

(assert (=> b!3164365 (= e!1971263 e!1971267)))

(declare-fun c!532166 () Bool)

(assert (=> b!3164365 (= c!532166 ((_ is Union!9731) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))))))

(declare-fun b!3164366 () Bool)

(declare-fun lt!1063886 () tuple2!34492)

(declare-fun call!229340 () tuple2!34492)

(assert (=> b!3164366 (= lt!1063886 call!229340)))

(declare-fun lt!1063885 () tuple2!34492)

(declare-fun call!229339 () tuple2!34492)

(assert (=> b!3164366 (= lt!1063885 call!229339)))

(declare-fun e!1971266 () tuple2!34492)

(assert (=> b!3164366 (= e!1971266 (tuple2!34493 (Union!9731 (Concat!15052 (_1!20378 lt!1063885) (regTwo!19974 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))) (_1!20378 lt!1063886)) (_2!20378 lt!1063886)))))

(declare-fun b!3164367 () Bool)

(assert (=> b!3164367 (= e!1971263 (tuple2!34493 (ite (= a!2409 (c!532131 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))) EmptyExpr!9731 EmptyLang!9731) (ite c!532127 cache!347 (_2!20378 lt!1063851))))))

(declare-fun lt!1063891 () Option!6892)

(declare-fun e!1971264 () tuple2!34492)

(declare-fun b!3164368 () Bool)

(assert (=> b!3164368 (= e!1971264 (tuple2!34493 (v!35109 lt!1063891) (ite c!532127 cache!347 (_2!20378 lt!1063851))))))

(declare-fun b!3164369 () Bool)

(declare-fun c!532165 () Bool)

(assert (=> b!3164369 (= c!532165 ((_ is ElementMatch!9731) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))))))

(assert (=> b!3164369 (= e!1971265 e!1971263)))

(declare-fun lt!1063890 () tuple2!34492)

(declare-fun bm!229334 () Bool)

(assert (=> bm!229334 (= call!229340 (derivativeStepMem!26 (ite c!532166 (regTwo!19975 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))) (regTwo!19974 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))) a!2409 (ite c!532166 (_2!20378 lt!1063890) (_2!20378 lt!1063885))))))

(declare-fun b!3164370 () Bool)

(declare-fun lt!1063888 () tuple2!34492)

(assert (=> b!3164370 (= lt!1063888 call!229339)))

(assert (=> b!3164370 (= e!1971266 (tuple2!34493 (Union!9731 (Concat!15052 (_1!20378 lt!1063888) (regTwo!19974 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))) EmptyLang!9731) (_2!20378 lt!1063888)))))

(declare-fun lt!1063883 () tuple2!34492)

(declare-fun b!3164371 () Bool)

(declare-datatypes ((tuple2!34494 0))(
  ( (tuple2!34495 (_1!20379 Unit!49798) (_2!20379 Cache!386)) )
))
(declare-fun update!265 (Cache!386 Regex!9731 C!19648 Regex!9731) tuple2!34494)

(assert (=> b!3164371 (= e!1971264 (tuple2!34493 (_1!20378 lt!1063883) (_2!20379 (update!265 (_2!20378 lt!1063883) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)) a!2409 (_1!20378 lt!1063883)))))))

(declare-fun c!532168 () Bool)

(assert (=> b!3164371 (= c!532168 (or ((_ is EmptyExpr!9731) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))) ((_ is EmptyLang!9731) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))))))

(assert (=> b!3164371 (= lt!1063883 e!1971265)))

(declare-fun bm!229335 () Bool)

(declare-fun call!229338 () tuple2!34492)

(assert (=> bm!229335 (= call!229339 call!229338)))

(declare-fun b!3164372 () Bool)

(declare-fun c!532164 () Bool)

(assert (=> b!3164372 (= c!532164 ((_ is Star!9731) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))))))

(declare-fun e!1971262 () tuple2!34492)

(assert (=> b!3164372 (= e!1971267 e!1971262)))

(declare-fun b!3164373 () Bool)

(declare-fun lt!1063887 () tuple2!34492)

(assert (=> b!3164373 (= lt!1063887 call!229340)))

(declare-fun call!229341 () tuple2!34492)

(assert (=> b!3164373 (= lt!1063890 call!229341)))

(assert (=> b!3164373 (= e!1971267 (tuple2!34493 (Union!9731 (_1!20378 lt!1063890) (_1!20378 lt!1063887)) (_2!20378 lt!1063887)))))

(declare-fun b!3164374 () Bool)

(assert (=> b!3164374 (= e!1971262 e!1971266)))

(declare-fun c!532163 () Bool)

(assert (=> b!3164374 (= c!532163 (nullable!3339 (regOne!19974 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))))))

(declare-fun lt!1063889 () tuple2!34492)

(declare-fun b!3164375 () Bool)

(assert (=> b!3164375 (= e!1971262 (tuple2!34493 (Concat!15052 (_1!20378 lt!1063889) (Star!9731 (reg!10060 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))))) (_2!20378 lt!1063889)))))

(assert (=> b!3164375 (= lt!1063889 call!229338)))

(declare-fun bm!229336 () Bool)

(assert (=> bm!229336 (= call!229338 call!229341)))

(declare-fun bm!229333 () Bool)

(assert (=> bm!229333 (= call!229341 (derivativeStepMem!26 (ite c!532166 (regOne!19975 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))) (ite c!532164 (reg!10060 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))) (regOne!19974 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156))))) a!2409 (ite c!532127 cache!347 (_2!20378 lt!1063851))))))

(declare-fun d!868713 () Bool)

(declare-fun lt!1063884 () tuple2!34492)

(assert (=> d!868713 (= (_1!20378 lt!1063884) (derivativeStep!2887 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)) a!2409))))

(assert (=> d!868713 (= lt!1063884 e!1971264)))

(declare-fun c!532167 () Bool)

(assert (=> d!868713 (= c!532167 ((_ is Some!6891) lt!1063891))))

(assert (=> d!868713 (= lt!1063891 (get!11230 (ite c!532127 cache!347 (_2!20378 lt!1063851)) (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)) a!2409))))

(assert (=> d!868713 (validRegex!4455 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)))))

(assert (=> d!868713 (= (derivativeStepMem!26 (ite c!532127 (regOne!19975 r!13156) (regTwo!19974 r!13156)) a!2409 (ite c!532127 cache!347 (_2!20378 lt!1063851))) lt!1063884)))

(assert (= (and d!868713 c!532167) b!3164368))

(assert (= (and d!868713 (not c!532167)) b!3164371))

(assert (= (and b!3164371 c!532168) b!3164364))

(assert (= (and b!3164371 (not c!532168)) b!3164369))

(assert (= (and b!3164369 c!532165) b!3164367))

(assert (= (and b!3164369 (not c!532165)) b!3164365))

(assert (= (and b!3164365 c!532166) b!3164373))

(assert (= (and b!3164365 (not c!532166)) b!3164372))

(assert (= (and b!3164372 c!532164) b!3164375))

(assert (= (and b!3164372 (not c!532164)) b!3164374))

(assert (= (and b!3164374 c!532163) b!3164366))

(assert (= (and b!3164374 (not c!532163)) b!3164370))

(assert (= (or b!3164366 b!3164370) bm!229335))

(assert (= (or b!3164375 bm!229335) bm!229336))

(assert (= (or b!3164373 bm!229336) bm!229333))

(assert (= (or b!3164373 b!3164366) bm!229334))

(declare-fun m!3427251 () Bool)

(assert (=> bm!229334 m!3427251))

(declare-fun m!3427253 () Bool)

(assert (=> bm!229333 m!3427253))

(declare-fun m!3427255 () Bool)

(assert (=> b!3164371 m!3427255))

(declare-fun m!3427257 () Bool)

(assert (=> d!868713 m!3427257))

(declare-fun m!3427259 () Bool)

(assert (=> d!868713 m!3427259))

(declare-fun m!3427261 () Bool)

(assert (=> d!868713 m!3427261))

(declare-fun m!3427263 () Bool)

(assert (=> b!3164374 m!3427263))

(assert (=> bm!229312 d!868713))

(declare-fun b!3164394 () Bool)

(declare-fun res!1287746 () Bool)

(declare-fun e!1971284 () Bool)

(assert (=> b!3164394 (=> (not res!1287746) (not e!1971284))))

(declare-fun call!229350 () Bool)

(assert (=> b!3164394 (= res!1287746 call!229350)))

(declare-fun e!1971282 () Bool)

(assert (=> b!3164394 (= e!1971282 e!1971284)))

(declare-fun b!3164395 () Bool)

(declare-fun res!1287745 () Bool)

(declare-fun e!1971287 () Bool)

(assert (=> b!3164395 (=> res!1287745 e!1971287)))

(assert (=> b!3164395 (= res!1287745 (not ((_ is Concat!15052) r!13156)))))

(assert (=> b!3164395 (= e!1971282 e!1971287)))

(declare-fun d!868715 () Bool)

(declare-fun res!1287748 () Bool)

(declare-fun e!1971288 () Bool)

(assert (=> d!868715 (=> res!1287748 e!1971288)))

(assert (=> d!868715 (= res!1287748 ((_ is ElementMatch!9731) r!13156))))

(assert (=> d!868715 (= (validRegex!4455 r!13156) e!1971288)))

(declare-fun b!3164396 () Bool)

(declare-fun e!1971283 () Bool)

(assert (=> b!3164396 (= e!1971287 e!1971283)))

(declare-fun res!1287747 () Bool)

(assert (=> b!3164396 (=> (not res!1287747) (not e!1971283))))

(assert (=> b!3164396 (= res!1287747 call!229350)))

(declare-fun bm!229343 () Bool)

(declare-fun call!229348 () Bool)

(assert (=> bm!229343 (= call!229350 call!229348)))

(declare-fun b!3164397 () Bool)

(declare-fun e!1971286 () Bool)

(declare-fun e!1971285 () Bool)

(assert (=> b!3164397 (= e!1971286 e!1971285)))

(declare-fun res!1287744 () Bool)

(assert (=> b!3164397 (= res!1287744 (not (nullable!3339 (reg!10060 r!13156))))))

(assert (=> b!3164397 (=> (not res!1287744) (not e!1971285))))

(declare-fun b!3164398 () Bool)

(assert (=> b!3164398 (= e!1971286 e!1971282)))

(declare-fun c!532173 () Bool)

(assert (=> b!3164398 (= c!532173 ((_ is Union!9731) r!13156))))

(declare-fun b!3164399 () Bool)

(declare-fun call!229349 () Bool)

(assert (=> b!3164399 (= e!1971283 call!229349)))

(declare-fun b!3164400 () Bool)

(assert (=> b!3164400 (= e!1971284 call!229349)))

(declare-fun bm!229344 () Bool)

(declare-fun c!532174 () Bool)

(assert (=> bm!229344 (= call!229348 (validRegex!4455 (ite c!532174 (reg!10060 r!13156) (ite c!532173 (regOne!19975 r!13156) (regOne!19974 r!13156)))))))

(declare-fun bm!229345 () Bool)

(assert (=> bm!229345 (= call!229349 (validRegex!4455 (ite c!532173 (regTwo!19975 r!13156) (regTwo!19974 r!13156))))))

(declare-fun b!3164401 () Bool)

(assert (=> b!3164401 (= e!1971288 e!1971286)))

(assert (=> b!3164401 (= c!532174 ((_ is Star!9731) r!13156))))

(declare-fun b!3164402 () Bool)

(assert (=> b!3164402 (= e!1971285 call!229348)))

(assert (= (and d!868715 (not res!1287748)) b!3164401))

(assert (= (and b!3164401 c!532174) b!3164397))

(assert (= (and b!3164401 (not c!532174)) b!3164398))

(assert (= (and b!3164397 res!1287744) b!3164402))

(assert (= (and b!3164398 c!532173) b!3164394))

(assert (= (and b!3164398 (not c!532173)) b!3164395))

(assert (= (and b!3164394 res!1287746) b!3164400))

(assert (= (and b!3164395 (not res!1287745)) b!3164396))

(assert (= (and b!3164396 res!1287747) b!3164399))

(assert (= (or b!3164394 b!3164396) bm!229343))

(assert (= (or b!3164400 b!3164399) bm!229345))

(assert (= (or b!3164402 bm!229343) bm!229344))

(declare-fun m!3427265 () Bool)

(assert (=> b!3164397 m!3427265))

(declare-fun m!3427267 () Bool)

(assert (=> bm!229344 m!3427267))

(declare-fun m!3427269 () Bool)

(assert (=> bm!229345 m!3427269))

(assert (=> start!296554 d!868715))

(declare-fun d!868717 () Bool)

(declare-fun res!1287751 () Bool)

(declare-fun e!1971291 () Bool)

(assert (=> d!868717 (=> (not res!1287751) (not e!1971291))))

(assert (=> d!868717 (= res!1287751 ((_ is HashMap!4058) (cache!4200 cache!347)))))

(assert (=> d!868717 (= (inv!48099 cache!347) e!1971291)))

(declare-fun b!3164405 () Bool)

(assert (=> b!3164405 (= e!1971291 (validCacheMap!54 (cache!4200 cache!347)))))

(assert (= (and d!868717 res!1287751) b!3164405))

(declare-fun m!3427271 () Bool)

(assert (=> b!3164405 m!3427271))

(assert (=> start!296554 d!868717))

(declare-fun e!1971295 () tuple2!34492)

(declare-fun b!3164406 () Bool)

(assert (=> b!3164406 (= e!1971295 (tuple2!34493 EmptyLang!9731 (ite c!532127 (_2!20378 lt!1063853) cache!347)))))

(declare-fun b!3164407 () Bool)

(declare-fun e!1971293 () tuple2!34492)

(declare-fun e!1971297 () tuple2!34492)

(assert (=> b!3164407 (= e!1971293 e!1971297)))

(declare-fun c!532178 () Bool)

(assert (=> b!3164407 (= c!532178 ((_ is Union!9731) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))))))

(declare-fun b!3164408 () Bool)

(declare-fun lt!1063895 () tuple2!34492)

(declare-fun call!229353 () tuple2!34492)

(assert (=> b!3164408 (= lt!1063895 call!229353)))

(declare-fun lt!1063894 () tuple2!34492)

(declare-fun call!229352 () tuple2!34492)

(assert (=> b!3164408 (= lt!1063894 call!229352)))

(declare-fun e!1971296 () tuple2!34492)

(assert (=> b!3164408 (= e!1971296 (tuple2!34493 (Union!9731 (Concat!15052 (_1!20378 lt!1063894) (regTwo!19974 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))) (_1!20378 lt!1063895)) (_2!20378 lt!1063895)))))

(declare-fun b!3164409 () Bool)

(assert (=> b!3164409 (= e!1971293 (tuple2!34493 (ite (= a!2409 (c!532131 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))) EmptyExpr!9731 EmptyLang!9731) (ite c!532127 (_2!20378 lt!1063853) cache!347)))))

(declare-fun e!1971294 () tuple2!34492)

(declare-fun b!3164410 () Bool)

(declare-fun lt!1063900 () Option!6892)

(assert (=> b!3164410 (= e!1971294 (tuple2!34493 (v!35109 lt!1063900) (ite c!532127 (_2!20378 lt!1063853) cache!347)))))

(declare-fun c!532177 () Bool)

(declare-fun b!3164411 () Bool)

(assert (=> b!3164411 (= c!532177 ((_ is ElementMatch!9731) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))))))

(assert (=> b!3164411 (= e!1971295 e!1971293)))

(declare-fun lt!1063899 () tuple2!34492)

(declare-fun bm!229347 () Bool)

(assert (=> bm!229347 (= call!229353 (derivativeStepMem!26 (ite c!532178 (regTwo!19975 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))) (regTwo!19974 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))) a!2409 (ite c!532178 (_2!20378 lt!1063899) (_2!20378 lt!1063894))))))

(declare-fun b!3164412 () Bool)

(declare-fun lt!1063897 () tuple2!34492)

(assert (=> b!3164412 (= lt!1063897 call!229352)))

(assert (=> b!3164412 (= e!1971296 (tuple2!34493 (Union!9731 (Concat!15052 (_1!20378 lt!1063897) (regTwo!19974 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))) EmptyLang!9731) (_2!20378 lt!1063897)))))

(declare-fun lt!1063892 () tuple2!34492)

(declare-fun b!3164413 () Bool)

(assert (=> b!3164413 (= e!1971294 (tuple2!34493 (_1!20378 lt!1063892) (_2!20379 (update!265 (_2!20378 lt!1063892) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))) a!2409 (_1!20378 lt!1063892)))))))

(declare-fun c!532180 () Bool)

(assert (=> b!3164413 (= c!532180 (or ((_ is EmptyExpr!9731) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))) ((_ is EmptyLang!9731) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))))))

(assert (=> b!3164413 (= lt!1063892 e!1971295)))

(declare-fun bm!229348 () Bool)

(declare-fun call!229351 () tuple2!34492)

(assert (=> bm!229348 (= call!229352 call!229351)))

(declare-fun c!532176 () Bool)

(declare-fun b!3164414 () Bool)

(assert (=> b!3164414 (= c!532176 ((_ is Star!9731) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))))))

(declare-fun e!1971292 () tuple2!34492)

(assert (=> b!3164414 (= e!1971297 e!1971292)))

(declare-fun b!3164415 () Bool)

(declare-fun lt!1063896 () tuple2!34492)

(assert (=> b!3164415 (= lt!1063896 call!229353)))

(declare-fun call!229354 () tuple2!34492)

(assert (=> b!3164415 (= lt!1063899 call!229354)))

(assert (=> b!3164415 (= e!1971297 (tuple2!34493 (Union!9731 (_1!20378 lt!1063899) (_1!20378 lt!1063896)) (_2!20378 lt!1063896)))))

(declare-fun b!3164416 () Bool)

(assert (=> b!3164416 (= e!1971292 e!1971296)))

(declare-fun c!532175 () Bool)

(assert (=> b!3164416 (= c!532175 (nullable!3339 (regOne!19974 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))))))

(declare-fun lt!1063898 () tuple2!34492)

(declare-fun b!3164417 () Bool)

(assert (=> b!3164417 (= e!1971292 (tuple2!34493 (Concat!15052 (_1!20378 lt!1063898) (Star!9731 (reg!10060 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))))) (_2!20378 lt!1063898)))))

(assert (=> b!3164417 (= lt!1063898 call!229351)))

(declare-fun bm!229349 () Bool)

(assert (=> bm!229349 (= call!229351 call!229354)))

(declare-fun bm!229346 () Bool)

(assert (=> bm!229346 (= call!229354 (derivativeStepMem!26 (ite c!532178 (regOne!19975 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))) (ite c!532176 (reg!10060 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))) (regOne!19974 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156)))))) a!2409 (ite c!532127 (_2!20378 lt!1063853) cache!347)))))

(declare-fun lt!1063893 () tuple2!34492)

(declare-fun d!868719 () Bool)

(assert (=> d!868719 (= (_1!20378 lt!1063893) (derivativeStep!2887 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))) a!2409))))

(assert (=> d!868719 (= lt!1063893 e!1971294)))

(declare-fun c!532179 () Bool)

(assert (=> d!868719 (= c!532179 ((_ is Some!6891) lt!1063900))))

(assert (=> d!868719 (= lt!1063900 (get!11230 (ite c!532127 (_2!20378 lt!1063853) cache!347) (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))) a!2409))))

(assert (=> d!868719 (validRegex!4455 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))))))

(assert (=> d!868719 (= (derivativeStepMem!26 (ite c!532127 (regTwo!19975 r!13156) (ite c!532130 (reg!10060 r!13156) (regOne!19974 r!13156))) a!2409 (ite c!532127 (_2!20378 lt!1063853) cache!347)) lt!1063893)))

(assert (= (and d!868719 c!532179) b!3164410))

(assert (= (and d!868719 (not c!532179)) b!3164413))

(assert (= (and b!3164413 c!532180) b!3164406))

(assert (= (and b!3164413 (not c!532180)) b!3164411))

(assert (= (and b!3164411 c!532177) b!3164409))

(assert (= (and b!3164411 (not c!532177)) b!3164407))

(assert (= (and b!3164407 c!532178) b!3164415))

(assert (= (and b!3164407 (not c!532178)) b!3164414))

(assert (= (and b!3164414 c!532176) b!3164417))

(assert (= (and b!3164414 (not c!532176)) b!3164416))

(assert (= (and b!3164416 c!532175) b!3164408))

(assert (= (and b!3164416 (not c!532175)) b!3164412))

(assert (= (or b!3164408 b!3164412) bm!229348))

(assert (= (or b!3164417 bm!229348) bm!229349))

(assert (= (or b!3164415 bm!229349) bm!229346))

(assert (= (or b!3164415 b!3164408) bm!229347))

(declare-fun m!3427273 () Bool)

(assert (=> bm!229347 m!3427273))

(declare-fun m!3427275 () Bool)

(assert (=> bm!229346 m!3427275))

(declare-fun m!3427277 () Bool)

(assert (=> b!3164413 m!3427277))

(declare-fun m!3427279 () Bool)

(assert (=> d!868719 m!3427279))

(declare-fun m!3427281 () Bool)

(assert (=> d!868719 m!3427281))

(declare-fun m!3427283 () Bool)

(assert (=> d!868719 m!3427283))

(declare-fun m!3427285 () Bool)

(assert (=> b!3164416 m!3427285))

(assert (=> bm!229310 d!868719))

(declare-fun d!868721 () Bool)

(assert (=> d!868721 (= (valid!3234 cache!347) (validCacheMap!54 (cache!4200 cache!347)))))

(declare-fun bs!539497 () Bool)

(assert (= bs!539497 d!868721))

(assert (=> bs!539497 m!3427271))

(assert (=> b!3164289 d!868721))

(declare-fun d!868723 () Bool)

(assert (=> d!868723 (= (array_inv!4722 (_keys!4452 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) (bvsge (size!26680 (_keys!4452 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3164271 d!868723))

(declare-fun d!868725 () Bool)

(assert (=> d!868725 (= (array_inv!4723 (_values!4433 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) (bvsge (size!26681 (_values!4433 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3164271 d!868725))

(declare-fun mapIsEmpty!18833 () Bool)

(declare-fun mapRes!18833 () Bool)

(assert (=> mapIsEmpty!18833 mapRes!18833))

(declare-fun tp!996562 () Bool)

(declare-fun b!3164425 () Bool)

(declare-fun tp!996559 () Bool)

(declare-fun tp!996563 () Bool)

(declare-fun e!1971302 () Bool)

(assert (=> b!3164425 (= e!1971302 (and tp!996563 tp_is_empty!17025 tp!996559 tp!996562))))

(declare-fun condMapEmpty!18833 () Bool)

(declare-fun mapDefault!18833 () List!35562)

(assert (=> mapNonEmpty!18830 (= condMapEmpty!18833 (= mapRest!18830 ((as const (Array (_ BitVec 32) List!35562)) mapDefault!18833)))))

(assert (=> mapNonEmpty!18830 (= tp!996540 (and e!1971302 mapRes!18833))))

(declare-fun b!3164424 () Bool)

(declare-fun tp!996560 () Bool)

(declare-fun tp!996558 () Bool)

(declare-fun e!1971303 () Bool)

(declare-fun tp!996564 () Bool)

(assert (=> b!3164424 (= e!1971303 (and tp!996560 tp_is_empty!17025 tp!996558 tp!996564))))

(declare-fun mapNonEmpty!18833 () Bool)

(declare-fun tp!996561 () Bool)

(assert (=> mapNonEmpty!18833 (= mapRes!18833 (and tp!996561 e!1971303))))

(declare-fun mapRest!18833 () (Array (_ BitVec 32) List!35562))

(declare-fun mapKey!18833 () (_ BitVec 32))

(declare-fun mapValue!18833 () List!35562)

(assert (=> mapNonEmpty!18833 (= mapRest!18830 (store mapRest!18833 mapKey!18833 mapValue!18833))))

(assert (= (and mapNonEmpty!18830 condMapEmpty!18833) mapIsEmpty!18833))

(assert (= (and mapNonEmpty!18830 (not condMapEmpty!18833)) mapNonEmpty!18833))

(assert (= (and mapNonEmpty!18833 ((_ is Cons!35438) mapValue!18833)) b!3164424))

(assert (= (and mapNonEmpty!18830 ((_ is Cons!35438) mapDefault!18833)) b!3164425))

(declare-fun m!3427287 () Bool)

(assert (=> mapNonEmpty!18833 m!3427287))

(declare-fun tp!996571 () Bool)

(declare-fun tp!996572 () Bool)

(declare-fun e!1971306 () Bool)

(declare-fun b!3164430 () Bool)

(declare-fun tp!996573 () Bool)

(assert (=> b!3164430 (= e!1971306 (and tp!996571 tp_is_empty!17025 tp!996572 tp!996573))))

(assert (=> mapNonEmpty!18830 (= tp!996543 e!1971306)))

(assert (= (and mapNonEmpty!18830 ((_ is Cons!35438) mapValue!18830)) b!3164430))

(declare-fun b!3164444 () Bool)

(declare-fun e!1971309 () Bool)

(declare-fun tp!996584 () Bool)

(declare-fun tp!996588 () Bool)

(assert (=> b!3164444 (= e!1971309 (and tp!996584 tp!996588))))

(assert (=> b!3164269 (= tp!996533 e!1971309)))

(declare-fun b!3164441 () Bool)

(assert (=> b!3164441 (= e!1971309 tp_is_empty!17025)))

(declare-fun b!3164442 () Bool)

(declare-fun tp!996587 () Bool)

(declare-fun tp!996585 () Bool)

(assert (=> b!3164442 (= e!1971309 (and tp!996587 tp!996585))))

(declare-fun b!3164443 () Bool)

(declare-fun tp!996586 () Bool)

(assert (=> b!3164443 (= e!1971309 tp!996586)))

(assert (= (and b!3164269 ((_ is ElementMatch!9731) (regOne!19975 r!13156))) b!3164441))

(assert (= (and b!3164269 ((_ is Concat!15052) (regOne!19975 r!13156))) b!3164442))

(assert (= (and b!3164269 ((_ is Star!9731) (regOne!19975 r!13156))) b!3164443))

(assert (= (and b!3164269 ((_ is Union!9731) (regOne!19975 r!13156))) b!3164444))

(declare-fun b!3164448 () Bool)

(declare-fun e!1971310 () Bool)

(declare-fun tp!996589 () Bool)

(declare-fun tp!996593 () Bool)

(assert (=> b!3164448 (= e!1971310 (and tp!996589 tp!996593))))

(assert (=> b!3164269 (= tp!996537 e!1971310)))

(declare-fun b!3164445 () Bool)

(assert (=> b!3164445 (= e!1971310 tp_is_empty!17025)))

(declare-fun b!3164446 () Bool)

(declare-fun tp!996592 () Bool)

(declare-fun tp!996590 () Bool)

(assert (=> b!3164446 (= e!1971310 (and tp!996592 tp!996590))))

(declare-fun b!3164447 () Bool)

(declare-fun tp!996591 () Bool)

(assert (=> b!3164447 (= e!1971310 tp!996591)))

(assert (= (and b!3164269 ((_ is ElementMatch!9731) (regTwo!19975 r!13156))) b!3164445))

(assert (= (and b!3164269 ((_ is Concat!15052) (regTwo!19975 r!13156))) b!3164446))

(assert (= (and b!3164269 ((_ is Star!9731) (regTwo!19975 r!13156))) b!3164447))

(assert (= (and b!3164269 ((_ is Union!9731) (regTwo!19975 r!13156))) b!3164448))

(declare-fun e!1971311 () Bool)

(declare-fun tp!996595 () Bool)

(declare-fun b!3164449 () Bool)

(declare-fun tp!996594 () Bool)

(declare-fun tp!996596 () Bool)

(assert (=> b!3164449 (= e!1971311 (and tp!996594 tp_is_empty!17025 tp!996595 tp!996596))))

(assert (=> b!3164276 (= tp!996536 e!1971311)))

(assert (= (and b!3164276 ((_ is Cons!35438) mapDefault!18830)) b!3164449))

(declare-fun b!3164453 () Bool)

(declare-fun e!1971312 () Bool)

(declare-fun tp!996597 () Bool)

(declare-fun tp!996601 () Bool)

(assert (=> b!3164453 (= e!1971312 (and tp!996597 tp!996601))))

(assert (=> b!3164277 (= tp!996535 e!1971312)))

(declare-fun b!3164450 () Bool)

(assert (=> b!3164450 (= e!1971312 tp_is_empty!17025)))

(declare-fun b!3164451 () Bool)

(declare-fun tp!996600 () Bool)

(declare-fun tp!996598 () Bool)

(assert (=> b!3164451 (= e!1971312 (and tp!996600 tp!996598))))

(declare-fun b!3164452 () Bool)

(declare-fun tp!996599 () Bool)

(assert (=> b!3164452 (= e!1971312 tp!996599)))

(assert (= (and b!3164277 ((_ is ElementMatch!9731) (reg!10060 r!13156))) b!3164450))

(assert (= (and b!3164277 ((_ is Concat!15052) (reg!10060 r!13156))) b!3164451))

(assert (= (and b!3164277 ((_ is Star!9731) (reg!10060 r!13156))) b!3164452))

(assert (= (and b!3164277 ((_ is Union!9731) (reg!10060 r!13156))) b!3164453))

(declare-fun e!1971313 () Bool)

(declare-fun tp!996602 () Bool)

(declare-fun tp!996603 () Bool)

(declare-fun b!3164454 () Bool)

(declare-fun tp!996604 () Bool)

(assert (=> b!3164454 (= e!1971313 (and tp!996602 tp_is_empty!17025 tp!996603 tp!996604))))

(assert (=> b!3164271 (= tp!996541 e!1971313)))

(assert (= (and b!3164271 ((_ is Cons!35438) (zeroValue!4411 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347)))))))) b!3164454))

(declare-fun tp!996606 () Bool)

(declare-fun tp!996607 () Bool)

(declare-fun tp!996605 () Bool)

(declare-fun e!1971314 () Bool)

(declare-fun b!3164455 () Bool)

(assert (=> b!3164455 (= e!1971314 (and tp!996605 tp_is_empty!17025 tp!996606 tp!996607))))

(assert (=> b!3164271 (= tp!996532 e!1971314)))

(assert (= (and b!3164271 ((_ is Cons!35438) (minValue!4411 (v!35107 (underlying!8533 (v!35108 (underlying!8534 (cache!4200 cache!347)))))))) b!3164455))

(declare-fun b!3164459 () Bool)

(declare-fun e!1971315 () Bool)

(declare-fun tp!996608 () Bool)

(declare-fun tp!996612 () Bool)

(assert (=> b!3164459 (= e!1971315 (and tp!996608 tp!996612))))

(assert (=> b!3164283 (= tp!996534 e!1971315)))

(declare-fun b!3164456 () Bool)

(assert (=> b!3164456 (= e!1971315 tp_is_empty!17025)))

(declare-fun b!3164457 () Bool)

(declare-fun tp!996611 () Bool)

(declare-fun tp!996609 () Bool)

(assert (=> b!3164457 (= e!1971315 (and tp!996611 tp!996609))))

(declare-fun b!3164458 () Bool)

(declare-fun tp!996610 () Bool)

(assert (=> b!3164458 (= e!1971315 tp!996610)))

(assert (= (and b!3164283 ((_ is ElementMatch!9731) (regOne!19974 r!13156))) b!3164456))

(assert (= (and b!3164283 ((_ is Concat!15052) (regOne!19974 r!13156))) b!3164457))

(assert (= (and b!3164283 ((_ is Star!9731) (regOne!19974 r!13156))) b!3164458))

(assert (= (and b!3164283 ((_ is Union!9731) (regOne!19974 r!13156))) b!3164459))

(declare-fun b!3164463 () Bool)

(declare-fun e!1971316 () Bool)

(declare-fun tp!996613 () Bool)

(declare-fun tp!996617 () Bool)

(assert (=> b!3164463 (= e!1971316 (and tp!996613 tp!996617))))

(assert (=> b!3164283 (= tp!996538 e!1971316)))

(declare-fun b!3164460 () Bool)

(assert (=> b!3164460 (= e!1971316 tp_is_empty!17025)))

(declare-fun b!3164461 () Bool)

(declare-fun tp!996616 () Bool)

(declare-fun tp!996614 () Bool)

(assert (=> b!3164461 (= e!1971316 (and tp!996616 tp!996614))))

(declare-fun b!3164462 () Bool)

(declare-fun tp!996615 () Bool)

(assert (=> b!3164462 (= e!1971316 tp!996615)))

(assert (= (and b!3164283 ((_ is ElementMatch!9731) (regTwo!19974 r!13156))) b!3164460))

(assert (= (and b!3164283 ((_ is Concat!15052) (regTwo!19974 r!13156))) b!3164461))

(assert (= (and b!3164283 ((_ is Star!9731) (regTwo!19974 r!13156))) b!3164462))

(assert (= (and b!3164283 ((_ is Union!9731) (regTwo!19974 r!13156))) b!3164463))

(check-sat (not b!3164455) (not b!3164424) (not bm!229346) (not bm!229347) (not b!3164443) (not b!3164449) (not d!868719) (not b!3164442) (not b!3164446) (not d!868709) (not b!3164416) (not b!3164453) (not b!3164457) (not b!3164459) (not b!3164444) (not b!3164405) (not b!3164397) (not b!3164452) (not mapNonEmpty!18833) (not b!3164448) (not b!3164451) (not b!3164447) (not bm!229345) (not d!868721) (not bm!229321) (not b!3164425) b_and!209345 (not bm!229333) (not b!3164339) (not b!3164461) b_and!209343 (not bm!229344) (not b!3164371) (not b!3164299) (not b!3164413) tp_is_empty!17025 (not b!3164454) (not b!3164463) (not b!3164430) (not b!3164324) (not b_next!83793) (not b!3164458) (not b!3164300) (not b_next!83795) (not d!868713) (not b!3164374) (not d!868705) (not d!868711) (not b!3164462) (not bm!229334) (not d!868707) (not b!3164337) (not bm!229324))
(check-sat b_and!209343 b_and!209345 (not b_next!83795) (not b_next!83793))
