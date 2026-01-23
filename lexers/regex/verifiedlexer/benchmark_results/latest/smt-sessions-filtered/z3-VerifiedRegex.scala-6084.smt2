; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296424 () Bool)

(assert start!296424)

(declare-fun b!3162276 () Bool)

(declare-fun b_free!83041 () Bool)

(declare-fun b_next!83745 () Bool)

(assert (=> b!3162276 (= b_free!83041 (not b_next!83745))))

(declare-fun tp!995392 () Bool)

(declare-fun b_and!209287 () Bool)

(assert (=> b!3162276 (= tp!995392 b_and!209287)))

(declare-fun b!3162283 () Bool)

(declare-fun b_free!83043 () Bool)

(declare-fun b_next!83747 () Bool)

(assert (=> b!3162283 (= b_free!83043 (not b_next!83747))))

(declare-fun tp!995388 () Bool)

(declare-fun b_and!209289 () Bool)

(assert (=> b!3162283 (= tp!995388 b_and!209289)))

(declare-fun b!3162272 () Bool)

(declare-fun e!1970064 () Bool)

(declare-fun e!1970070 () Bool)

(assert (=> b!3162272 (= e!1970064 e!1970070)))

(declare-fun mapNonEmpty!18780 () Bool)

(declare-fun mapRes!18780 () Bool)

(declare-fun tp!995384 () Bool)

(declare-fun tp!995391 () Bool)

(assert (=> mapNonEmpty!18780 (= mapRes!18780 (and tp!995384 tp!995391))))

(declare-datatypes ((C!19624 0))(
  ( (C!19625 (val!11848 Int)) )
))
(declare-datatypes ((Regex!9719 0))(
  ( (ElementMatch!9719 (c!531763 C!19624)) (Concat!15040 (regOne!19950 Regex!9719) (regTwo!19950 Regex!9719)) (EmptyExpr!9719) (Star!9719 (reg!10048 Regex!9719)) (EmptyLang!9719) (Union!9719 (regOne!19951 Regex!9719) (regTwo!19951 Regex!9719)) )
))
(declare-datatypes ((tuple2!34412 0))(
  ( (tuple2!34413 (_1!20338 Regex!9719) (_2!20338 C!19624)) )
))
(declare-datatypes ((tuple2!34414 0))(
  ( (tuple2!34415 (_1!20339 tuple2!34412) (_2!20339 Regex!9719)) )
))
(declare-datatypes ((array!14750 0))(
  ( (array!14751 (arr!6570 (Array (_ BitVec 32) (_ BitVec 64))) (size!26656 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4056 0))(
  ( (HashableExt!4055 (__x!22526 Int)) )
))
(declare-datatypes ((List!35548 0))(
  ( (Nil!35424) (Cons!35424 (h!40844 tuple2!34414) (t!234615 List!35548)) )
))
(declare-datatypes ((array!14752 0))(
  ( (array!14753 (arr!6571 (Array (_ BitVec 32) List!35548)) (size!26657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8280 0))(
  ( (LongMapFixedSize!8281 (defaultEntry!4525 Int) (mask!10793 (_ BitVec 32)) (extraKeys!4389 (_ BitVec 32)) (zeroValue!4399 List!35548) (minValue!4399 List!35548) (_size!8323 (_ BitVec 32)) (_keys!4440 array!14750) (_values!4421 array!14752) (_vacant!4201 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16369 0))(
  ( (Cell!16370 (v!35072 LongMapFixedSize!8280)) )
))
(declare-datatypes ((MutLongMap!4140 0))(
  ( (LongMap!4140 (underlying!8509 Cell!16369)) (MutLongMapExt!4139 (__x!22527 Int)) )
))
(declare-datatypes ((Cell!16371 0))(
  ( (Cell!16372 (v!35073 MutLongMap!4140)) )
))
(declare-datatypes ((MutableMap!4046 0))(
  ( (MutableMapExt!4045 (__x!22528 Int)) (HashMap!4046 (underlying!8510 Cell!16371) (hashF!6088 Hashable!4056) (_size!8324 (_ BitVec 32)) (defaultValue!4217 Int)) )
))
(declare-datatypes ((Cache!362 0))(
  ( (Cache!363 (cache!4185 MutableMap!4046)) )
))
(declare-fun cache!347 () Cache!362)

(declare-fun mapValue!18780 () List!35548)

(declare-fun mapRest!18780 () (Array (_ BitVec 32) List!35548))

(declare-fun mapKey!18780 () (_ BitVec 32))

(assert (=> mapNonEmpty!18780 (= (arr!6571 (_values!4421 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) (store mapRest!18780 mapKey!18780 mapValue!18780))))

(declare-fun b!3162273 () Bool)

(declare-fun e!1970069 () Bool)

(declare-fun tp!995390 () Bool)

(assert (=> b!3162273 (= e!1970069 (and tp!995390 mapRes!18780))))

(declare-fun condMapEmpty!18780 () Bool)

(declare-fun mapDefault!18780 () List!35548)

(assert (=> b!3162273 (= condMapEmpty!18780 (= (arr!6571 (_values!4421 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) ((as const (Array (_ BitVec 32) List!35548)) mapDefault!18780)))))

(declare-fun b!3162274 () Bool)

(declare-fun e!1970071 () Bool)

(declare-fun r!13156 () Regex!9719)

(declare-fun validRegex!4446 (Regex!9719) Bool)

(assert (=> b!3162274 (= e!1970071 (not (validRegex!4446 (regTwo!19950 r!13156))))))

(declare-fun a!2409 () C!19624)

(declare-datatypes ((tuple2!34416 0))(
  ( (tuple2!34417 (_1!20340 Regex!9719) (_2!20340 Cache!362)) )
))
(declare-fun lt!1063124 () tuple2!34416)

(declare-fun derivativeStepMem!21 (Regex!9719 C!19624 Cache!362) tuple2!34416)

(assert (=> b!3162274 (= lt!1063124 (derivativeStepMem!21 (regOne!19950 r!13156) a!2409 cache!347))))

(declare-fun res!1287326 () Bool)

(assert (=> start!296424 (=> (not res!1287326) (not e!1970071))))

(assert (=> start!296424 (= res!1287326 (validRegex!4446 r!13156))))

(assert (=> start!296424 e!1970071))

(declare-fun e!1970066 () Bool)

(assert (=> start!296424 e!1970066))

(declare-fun e!1970065 () Bool)

(declare-fun inv!48073 (Cache!362) Bool)

(assert (=> start!296424 (and (inv!48073 cache!347) e!1970065)))

(declare-fun tp_is_empty!17001 () Bool)

(assert (=> start!296424 tp_is_empty!17001))

(declare-fun b!3162275 () Bool)

(declare-fun e!1970068 () Bool)

(assert (=> b!3162275 (= e!1970065 e!1970068)))

(declare-fun tp!995395 () Bool)

(declare-fun tp!995394 () Bool)

(declare-fun array_inv!4708 (array!14750) Bool)

(declare-fun array_inv!4709 (array!14752) Bool)

(assert (=> b!3162276 (= e!1970070 (and tp!995392 tp!995394 tp!995395 (array_inv!4708 (_keys!4440 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) (array_inv!4709 (_values!4421 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) e!1970069))))

(declare-fun b!3162277 () Bool)

(declare-fun tp!995393 () Bool)

(declare-fun tp!995389 () Bool)

(assert (=> b!3162277 (= e!1970066 (and tp!995393 tp!995389))))

(declare-fun b!3162278 () Bool)

(assert (=> b!3162278 (= e!1970066 tp_is_empty!17001)))

(declare-fun b!3162279 () Bool)

(declare-fun e!1970067 () Bool)

(assert (=> b!3162279 (= e!1970067 e!1970064)))

(declare-fun b!3162280 () Bool)

(declare-fun res!1287324 () Bool)

(assert (=> b!3162280 (=> (not res!1287324) (not e!1970071))))

(get-info :version)

(declare-datatypes ((Option!6881 0))(
  ( (None!6880) (Some!6880 (v!35074 Regex!9719)) )
))
(declare-fun get!11211 (Cache!362 Regex!9719 C!19624) Option!6881)

(assert (=> b!3162280 (= res!1287324 (not ((_ is Some!6880) (get!11211 cache!347 r!13156 a!2409))))))

(declare-fun mapIsEmpty!18780 () Bool)

(assert (=> mapIsEmpty!18780 mapRes!18780))

(declare-fun b!3162281 () Bool)

(declare-fun res!1287327 () Bool)

(assert (=> b!3162281 (=> (not res!1287327) (not e!1970071))))

(assert (=> b!3162281 (= res!1287327 (and (not ((_ is EmptyExpr!9719) r!13156)) (not ((_ is EmptyLang!9719) r!13156)) (not ((_ is ElementMatch!9719) r!13156)) (not ((_ is Union!9719) r!13156)) (not ((_ is Star!9719) r!13156))))))

(declare-fun b!3162282 () Bool)

(declare-fun res!1287325 () Bool)

(assert (=> b!3162282 (=> (not res!1287325) (not e!1970071))))

(declare-fun valid!3225 (Cache!362) Bool)

(assert (=> b!3162282 (= res!1287325 (valid!3225 cache!347))))

(declare-fun e!1970062 () Bool)

(assert (=> b!3162283 (= e!1970068 (and e!1970062 tp!995388))))

(declare-fun b!3162284 () Bool)

(declare-fun lt!1063123 () MutLongMap!4140)

(assert (=> b!3162284 (= e!1970062 (and e!1970067 ((_ is LongMap!4140) lt!1063123)))))

(assert (=> b!3162284 (= lt!1063123 (v!35073 (underlying!8510 (cache!4185 cache!347))))))

(declare-fun b!3162285 () Bool)

(declare-fun res!1287328 () Bool)

(assert (=> b!3162285 (=> (not res!1287328) (not e!1970071))))

(declare-fun nullable!3334 (Regex!9719) Bool)

(assert (=> b!3162285 (= res!1287328 (nullable!3334 (regOne!19950 r!13156)))))

(declare-fun b!3162286 () Bool)

(declare-fun tp!995385 () Bool)

(declare-fun tp!995386 () Bool)

(assert (=> b!3162286 (= e!1970066 (and tp!995385 tp!995386))))

(declare-fun b!3162287 () Bool)

(declare-fun tp!995387 () Bool)

(assert (=> b!3162287 (= e!1970066 tp!995387)))

(assert (= (and start!296424 res!1287326) b!3162282))

(assert (= (and b!3162282 res!1287325) b!3162280))

(assert (= (and b!3162280 res!1287324) b!3162281))

(assert (= (and b!3162281 res!1287327) b!3162285))

(assert (= (and b!3162285 res!1287328) b!3162274))

(assert (= (and start!296424 ((_ is ElementMatch!9719) r!13156)) b!3162278))

(assert (= (and start!296424 ((_ is Concat!15040) r!13156)) b!3162286))

(assert (= (and start!296424 ((_ is Star!9719) r!13156)) b!3162287))

(assert (= (and start!296424 ((_ is Union!9719) r!13156)) b!3162277))

(assert (= (and b!3162273 condMapEmpty!18780) mapIsEmpty!18780))

(assert (= (and b!3162273 (not condMapEmpty!18780)) mapNonEmpty!18780))

(assert (= b!3162276 b!3162273))

(assert (= b!3162272 b!3162276))

(assert (= b!3162279 b!3162272))

(assert (= (and b!3162284 ((_ is LongMap!4140) (v!35073 (underlying!8510 (cache!4185 cache!347))))) b!3162279))

(assert (= b!3162283 b!3162284))

(assert (= (and b!3162275 ((_ is HashMap!4046) (cache!4185 cache!347))) b!3162283))

(assert (= start!296424 b!3162275))

(declare-fun m!3426232 () Bool)

(assert (=> start!296424 m!3426232))

(declare-fun m!3426234 () Bool)

(assert (=> start!296424 m!3426234))

(declare-fun m!3426236 () Bool)

(assert (=> b!3162276 m!3426236))

(declare-fun m!3426238 () Bool)

(assert (=> b!3162276 m!3426238))

(declare-fun m!3426240 () Bool)

(assert (=> b!3162274 m!3426240))

(declare-fun m!3426242 () Bool)

(assert (=> b!3162274 m!3426242))

(declare-fun m!3426244 () Bool)

(assert (=> mapNonEmpty!18780 m!3426244))

(declare-fun m!3426246 () Bool)

(assert (=> b!3162285 m!3426246))

(declare-fun m!3426248 () Bool)

(assert (=> b!3162280 m!3426248))

(declare-fun m!3426250 () Bool)

(assert (=> b!3162282 m!3426250))

(check-sat (not b!3162274) (not start!296424) (not b!3162280) tp_is_empty!17001 (not b!3162277) (not b!3162273) b_and!209287 (not mapNonEmpty!18780) (not b!3162276) (not b!3162282) (not b_next!83747) (not b!3162286) (not b!3162287) b_and!209289 (not b_next!83745) (not b!3162285))
(check-sat b_and!209289 b_and!209287 (not b_next!83745) (not b_next!83747))
(get-model)

(declare-fun bm!229027 () Bool)

(declare-fun call!229032 () Bool)

(declare-fun c!531768 () Bool)

(assert (=> bm!229027 (= call!229032 (validRegex!4446 (ite c!531768 (regTwo!19951 (regTwo!19950 r!13156)) (regTwo!19950 (regTwo!19950 r!13156)))))))

(declare-fun d!868521 () Bool)

(declare-fun res!1287341 () Bool)

(declare-fun e!1970091 () Bool)

(assert (=> d!868521 (=> res!1287341 e!1970091)))

(assert (=> d!868521 (= res!1287341 ((_ is ElementMatch!9719) (regTwo!19950 r!13156)))))

(assert (=> d!868521 (= (validRegex!4446 (regTwo!19950 r!13156)) e!1970091)))

(declare-fun b!3162306 () Bool)

(declare-fun e!1970090 () Bool)

(assert (=> b!3162306 (= e!1970091 e!1970090)))

(declare-fun c!531769 () Bool)

(assert (=> b!3162306 (= c!531769 ((_ is Star!9719) (regTwo!19950 r!13156)))))

(declare-fun call!229034 () Bool)

(declare-fun bm!229028 () Bool)

(assert (=> bm!229028 (= call!229034 (validRegex!4446 (ite c!531769 (reg!10048 (regTwo!19950 r!13156)) (ite c!531768 (regOne!19951 (regTwo!19950 r!13156)) (regOne!19950 (regTwo!19950 r!13156))))))))

(declare-fun b!3162307 () Bool)

(declare-fun res!1287343 () Bool)

(declare-fun e!1970092 () Bool)

(assert (=> b!3162307 (=> res!1287343 e!1970092)))

(assert (=> b!3162307 (= res!1287343 (not ((_ is Concat!15040) (regTwo!19950 r!13156))))))

(declare-fun e!1970087 () Bool)

(assert (=> b!3162307 (= e!1970087 e!1970092)))

(declare-fun b!3162308 () Bool)

(declare-fun e!1970086 () Bool)

(assert (=> b!3162308 (= e!1970090 e!1970086)))

(declare-fun res!1287340 () Bool)

(assert (=> b!3162308 (= res!1287340 (not (nullable!3334 (reg!10048 (regTwo!19950 r!13156)))))))

(assert (=> b!3162308 (=> (not res!1287340) (not e!1970086))))

(declare-fun b!3162309 () Bool)

(declare-fun e!1970088 () Bool)

(assert (=> b!3162309 (= e!1970088 call!229032)))

(declare-fun b!3162310 () Bool)

(declare-fun e!1970089 () Bool)

(assert (=> b!3162310 (= e!1970092 e!1970089)))

(declare-fun res!1287342 () Bool)

(assert (=> b!3162310 (=> (not res!1287342) (not e!1970089))))

(declare-fun call!229033 () Bool)

(assert (=> b!3162310 (= res!1287342 call!229033)))

(declare-fun b!3162311 () Bool)

(assert (=> b!3162311 (= e!1970090 e!1970087)))

(assert (=> b!3162311 (= c!531768 ((_ is Union!9719) (regTwo!19950 r!13156)))))

(declare-fun b!3162312 () Bool)

(assert (=> b!3162312 (= e!1970089 call!229032)))

(declare-fun b!3162313 () Bool)

(assert (=> b!3162313 (= e!1970086 call!229034)))

(declare-fun bm!229029 () Bool)

(assert (=> bm!229029 (= call!229033 call!229034)))

(declare-fun b!3162314 () Bool)

(declare-fun res!1287339 () Bool)

(assert (=> b!3162314 (=> (not res!1287339) (not e!1970088))))

(assert (=> b!3162314 (= res!1287339 call!229033)))

(assert (=> b!3162314 (= e!1970087 e!1970088)))

(assert (= (and d!868521 (not res!1287341)) b!3162306))

(assert (= (and b!3162306 c!531769) b!3162308))

(assert (= (and b!3162306 (not c!531769)) b!3162311))

(assert (= (and b!3162308 res!1287340) b!3162313))

(assert (= (and b!3162311 c!531768) b!3162314))

(assert (= (and b!3162311 (not c!531768)) b!3162307))

(assert (= (and b!3162314 res!1287339) b!3162309))

(assert (= (and b!3162307 (not res!1287343)) b!3162310))

(assert (= (and b!3162310 res!1287342) b!3162312))

(assert (= (or b!3162314 b!3162310) bm!229029))

(assert (= (or b!3162309 b!3162312) bm!229027))

(assert (= (or b!3162313 bm!229029) bm!229028))

(declare-fun m!3426252 () Bool)

(assert (=> bm!229027 m!3426252))

(declare-fun m!3426254 () Bool)

(assert (=> bm!229028 m!3426254))

(declare-fun m!3426256 () Bool)

(assert (=> b!3162308 m!3426256))

(assert (=> b!3162274 d!868521))

(declare-fun b!3162339 () Bool)

(declare-fun lt!1063150 () tuple2!34416)

(declare-fun call!229043 () tuple2!34416)

(assert (=> b!3162339 (= lt!1063150 call!229043)))

(declare-fun lt!1063144 () tuple2!34416)

(declare-fun call!229045 () tuple2!34416)

(assert (=> b!3162339 (= lt!1063144 call!229045)))

(declare-fun e!1970107 () tuple2!34416)

(assert (=> b!3162339 (= e!1970107 (tuple2!34417 (Union!9719 (_1!20340 lt!1063144) (_1!20340 lt!1063150)) (_2!20340 lt!1063150)))))

(declare-fun bm!229038 () Bool)

(declare-fun call!229046 () tuple2!34416)

(assert (=> bm!229038 (= call!229046 call!229043)))

(declare-fun b!3162340 () Bool)

(declare-fun c!531787 () Bool)

(assert (=> b!3162340 (= c!531787 ((_ is ElementMatch!9719) (regOne!19950 r!13156)))))

(declare-fun e!1970106 () tuple2!34416)

(declare-fun e!1970109 () tuple2!34416)

(assert (=> b!3162340 (= e!1970106 e!1970109)))

(declare-fun c!531784 () Bool)

(declare-fun lt!1063151 () tuple2!34416)

(declare-fun bm!229039 () Bool)

(assert (=> bm!229039 (= call!229045 (derivativeStepMem!21 (ite c!531784 (regOne!19951 (regOne!19950 r!13156)) (regTwo!19950 (regOne!19950 r!13156))) a!2409 (ite c!531784 cache!347 (_2!20340 lt!1063151))))))

(declare-fun b!3162341 () Bool)

(assert (=> b!3162341 (= e!1970109 e!1970107)))

(assert (=> b!3162341 (= c!531784 ((_ is Union!9719) (regOne!19950 r!13156)))))

(declare-fun b!3162342 () Bool)

(declare-fun lt!1063149 () tuple2!34416)

(declare-fun call!229044 () tuple2!34416)

(assert (=> b!3162342 (= lt!1063149 call!229044)))

(declare-fun e!1970110 () tuple2!34416)

(assert (=> b!3162342 (= e!1970110 (tuple2!34417 (Union!9719 (Concat!15040 (_1!20340 lt!1063149) (regTwo!19950 (regOne!19950 r!13156))) EmptyLang!9719) (_2!20340 lt!1063149)))))

(declare-fun b!3162343 () Bool)

(declare-fun e!1970108 () tuple2!34416)

(assert (=> b!3162343 (= e!1970108 e!1970110)))

(declare-fun c!531785 () Bool)

(assert (=> b!3162343 (= c!531785 (nullable!3334 (regOne!19950 (regOne!19950 r!13156))))))

(declare-fun b!3162344 () Bool)

(declare-fun lt!1063147 () tuple2!34416)

(assert (=> b!3162344 (= lt!1063147 call!229045)))

(assert (=> b!3162344 (= lt!1063151 call!229044)))

(assert (=> b!3162344 (= e!1970110 (tuple2!34417 (Union!9719 (Concat!15040 (_1!20340 lt!1063151) (regTwo!19950 (regOne!19950 r!13156))) (_1!20340 lt!1063147)) (_2!20340 lt!1063147)))))

(declare-fun bm!229040 () Bool)

(assert (=> bm!229040 (= call!229044 call!229046)))

(declare-fun bm!229041 () Bool)

(declare-fun c!531782 () Bool)

(assert (=> bm!229041 (= call!229043 (derivativeStepMem!21 (ite c!531784 (regTwo!19951 (regOne!19950 r!13156)) (ite c!531782 (reg!10048 (regOne!19950 r!13156)) (regOne!19950 (regOne!19950 r!13156)))) a!2409 (ite c!531784 (_2!20340 lt!1063144) cache!347)))))

(declare-fun b!3162346 () Bool)

(assert (=> b!3162346 (= c!531782 ((_ is Star!9719) (regOne!19950 r!13156)))))

(assert (=> b!3162346 (= e!1970107 e!1970108)))

(declare-fun b!3162347 () Bool)

(assert (=> b!3162347 (= e!1970109 (tuple2!34417 (ite (= a!2409 (c!531763 (regOne!19950 r!13156))) EmptyExpr!9719 EmptyLang!9719) cache!347))))

(declare-fun b!3162348 () Bool)

(declare-fun e!1970105 () tuple2!34416)

(declare-fun lt!1063143 () Option!6881)

(assert (=> b!3162348 (= e!1970105 (tuple2!34417 (v!35074 lt!1063143) cache!347))))

(declare-fun lt!1063146 () tuple2!34416)

(declare-fun b!3162349 () Bool)

(declare-datatypes ((Unit!49771 0))(
  ( (Unit!49772) )
))
(declare-datatypes ((tuple2!34418 0))(
  ( (tuple2!34419 (_1!20341 Unit!49771) (_2!20341 Cache!362)) )
))
(declare-fun update!260 (Cache!362 Regex!9719 C!19624 Regex!9719) tuple2!34418)

(assert (=> b!3162349 (= e!1970105 (tuple2!34417 (_1!20340 lt!1063146) (_2!20341 (update!260 (_2!20340 lt!1063146) (regOne!19950 r!13156) a!2409 (_1!20340 lt!1063146)))))))

(declare-fun c!531786 () Bool)

(assert (=> b!3162349 (= c!531786 (or ((_ is EmptyExpr!9719) (regOne!19950 r!13156)) ((_ is EmptyLang!9719) (regOne!19950 r!13156))))))

(assert (=> b!3162349 (= lt!1063146 e!1970106)))

(declare-fun b!3162350 () Bool)

(declare-fun lt!1063145 () tuple2!34416)

(assert (=> b!3162350 (= e!1970108 (tuple2!34417 (Concat!15040 (_1!20340 lt!1063145) (Star!9719 (reg!10048 (regOne!19950 r!13156)))) (_2!20340 lt!1063145)))))

(assert (=> b!3162350 (= lt!1063145 call!229046)))

(declare-fun b!3162345 () Bool)

(assert (=> b!3162345 (= e!1970106 (tuple2!34417 EmptyLang!9719 cache!347))))

(declare-fun d!868523 () Bool)

(declare-fun lt!1063148 () tuple2!34416)

(declare-fun derivativeStep!2883 (Regex!9719 C!19624) Regex!9719)

(assert (=> d!868523 (= (_1!20340 lt!1063148) (derivativeStep!2883 (regOne!19950 r!13156) a!2409))))

(assert (=> d!868523 (= lt!1063148 e!1970105)))

(declare-fun c!531783 () Bool)

(assert (=> d!868523 (= c!531783 ((_ is Some!6880) lt!1063143))))

(assert (=> d!868523 (= lt!1063143 (get!11211 cache!347 (regOne!19950 r!13156) a!2409))))

(assert (=> d!868523 (validRegex!4446 (regOne!19950 r!13156))))

(assert (=> d!868523 (= (derivativeStepMem!21 (regOne!19950 r!13156) a!2409 cache!347) lt!1063148)))

(assert (= (and d!868523 c!531783) b!3162348))

(assert (= (and d!868523 (not c!531783)) b!3162349))

(assert (= (and b!3162349 c!531786) b!3162345))

(assert (= (and b!3162349 (not c!531786)) b!3162340))

(assert (= (and b!3162340 c!531787) b!3162347))

(assert (= (and b!3162340 (not c!531787)) b!3162341))

(assert (= (and b!3162341 c!531784) b!3162339))

(assert (= (and b!3162341 (not c!531784)) b!3162346))

(assert (= (and b!3162346 c!531782) b!3162350))

(assert (= (and b!3162346 (not c!531782)) b!3162343))

(assert (= (and b!3162343 c!531785) b!3162344))

(assert (= (and b!3162343 (not c!531785)) b!3162342))

(assert (= (or b!3162344 b!3162342) bm!229040))

(assert (= (or b!3162350 bm!229040) bm!229038))

(assert (= (or b!3162339 b!3162344) bm!229039))

(assert (= (or b!3162339 bm!229038) bm!229041))

(declare-fun m!3426258 () Bool)

(assert (=> bm!229039 m!3426258))

(declare-fun m!3426260 () Bool)

(assert (=> b!3162349 m!3426260))

(declare-fun m!3426262 () Bool)

(assert (=> d!868523 m!3426262))

(declare-fun m!3426264 () Bool)

(assert (=> d!868523 m!3426264))

(declare-fun m!3426266 () Bool)

(assert (=> d!868523 m!3426266))

(declare-fun m!3426268 () Bool)

(assert (=> bm!229041 m!3426268))

(declare-fun m!3426270 () Bool)

(assert (=> b!3162343 m!3426270))

(assert (=> b!3162274 d!868523))

(declare-fun d!868525 () Bool)

(declare-fun e!1970116 () Bool)

(assert (=> d!868525 e!1970116))

(declare-fun res!1287346 () Bool)

(assert (=> d!868525 (=> res!1287346 e!1970116)))

(declare-fun lt!1063156 () Option!6881)

(declare-fun isEmpty!19750 (Option!6881) Bool)

(assert (=> d!868525 (= res!1287346 (isEmpty!19750 lt!1063156))))

(declare-fun e!1970115 () Option!6881)

(assert (=> d!868525 (= lt!1063156 e!1970115)))

(declare-fun c!531791 () Bool)

(declare-fun contains!6149 (MutableMap!4046 tuple2!34412) Bool)

(assert (=> d!868525 (= c!531791 (contains!6149 (cache!4185 cache!347) (tuple2!34413 r!13156 a!2409)))))

(assert (=> d!868525 (validRegex!4446 r!13156)))

(assert (=> d!868525 (= (get!11211 cache!347 r!13156 a!2409) lt!1063156)))

(declare-fun b!3162357 () Bool)

(declare-fun apply!7934 (MutableMap!4046 tuple2!34412) Regex!9719)

(assert (=> b!3162357 (= e!1970115 (Some!6880 (apply!7934 (cache!4185 cache!347) (tuple2!34413 r!13156 a!2409))))))

(declare-fun lt!1063157 () Unit!49771)

(declare-fun lemmaIfInCacheThenValid!48 (Cache!362 Regex!9719 C!19624) Unit!49771)

(assert (=> b!3162357 (= lt!1063157 (lemmaIfInCacheThenValid!48 cache!347 r!13156 a!2409))))

(declare-fun b!3162358 () Bool)

(assert (=> b!3162358 (= e!1970115 None!6880)))

(declare-fun b!3162359 () Bool)

(declare-fun get!11212 (Option!6881) Regex!9719)

(assert (=> b!3162359 (= e!1970116 (= (get!11212 lt!1063156) (derivativeStep!2883 r!13156 a!2409)))))

(assert (= (and d!868525 c!531791) b!3162357))

(assert (= (and d!868525 (not c!531791)) b!3162358))

(assert (= (and d!868525 (not res!1287346)) b!3162359))

(declare-fun m!3426272 () Bool)

(assert (=> d!868525 m!3426272))

(declare-fun m!3426274 () Bool)

(assert (=> d!868525 m!3426274))

(assert (=> d!868525 m!3426232))

(declare-fun m!3426276 () Bool)

(assert (=> b!3162357 m!3426276))

(declare-fun m!3426278 () Bool)

(assert (=> b!3162357 m!3426278))

(declare-fun m!3426280 () Bool)

(assert (=> b!3162359 m!3426280))

(declare-fun m!3426282 () Bool)

(assert (=> b!3162359 m!3426282))

(assert (=> b!3162280 d!868525))

(declare-fun d!868527 () Bool)

(declare-fun validCacheMap!48 (MutableMap!4046) Bool)

(assert (=> d!868527 (= (valid!3225 cache!347) (validCacheMap!48 (cache!4185 cache!347)))))

(declare-fun bs!539443 () Bool)

(assert (= bs!539443 d!868527))

(declare-fun m!3426284 () Bool)

(assert (=> bs!539443 m!3426284))

(assert (=> b!3162282 d!868527))

(declare-fun bm!229042 () Bool)

(declare-fun call!229047 () Bool)

(declare-fun c!531792 () Bool)

(assert (=> bm!229042 (= call!229047 (validRegex!4446 (ite c!531792 (regTwo!19951 r!13156) (regTwo!19950 r!13156))))))

(declare-fun d!868529 () Bool)

(declare-fun res!1287349 () Bool)

(declare-fun e!1970122 () Bool)

(assert (=> d!868529 (=> res!1287349 e!1970122)))

(assert (=> d!868529 (= res!1287349 ((_ is ElementMatch!9719) r!13156))))

(assert (=> d!868529 (= (validRegex!4446 r!13156) e!1970122)))

(declare-fun b!3162360 () Bool)

(declare-fun e!1970121 () Bool)

(assert (=> b!3162360 (= e!1970122 e!1970121)))

(declare-fun c!531793 () Bool)

(assert (=> b!3162360 (= c!531793 ((_ is Star!9719) r!13156))))

(declare-fun bm!229043 () Bool)

(declare-fun call!229049 () Bool)

(assert (=> bm!229043 (= call!229049 (validRegex!4446 (ite c!531793 (reg!10048 r!13156) (ite c!531792 (regOne!19951 r!13156) (regOne!19950 r!13156)))))))

(declare-fun b!3162361 () Bool)

(declare-fun res!1287351 () Bool)

(declare-fun e!1970123 () Bool)

(assert (=> b!3162361 (=> res!1287351 e!1970123)))

(assert (=> b!3162361 (= res!1287351 (not ((_ is Concat!15040) r!13156)))))

(declare-fun e!1970118 () Bool)

(assert (=> b!3162361 (= e!1970118 e!1970123)))

(declare-fun b!3162362 () Bool)

(declare-fun e!1970117 () Bool)

(assert (=> b!3162362 (= e!1970121 e!1970117)))

(declare-fun res!1287348 () Bool)

(assert (=> b!3162362 (= res!1287348 (not (nullable!3334 (reg!10048 r!13156))))))

(assert (=> b!3162362 (=> (not res!1287348) (not e!1970117))))

(declare-fun b!3162363 () Bool)

(declare-fun e!1970119 () Bool)

(assert (=> b!3162363 (= e!1970119 call!229047)))

(declare-fun b!3162364 () Bool)

(declare-fun e!1970120 () Bool)

(assert (=> b!3162364 (= e!1970123 e!1970120)))

(declare-fun res!1287350 () Bool)

(assert (=> b!3162364 (=> (not res!1287350) (not e!1970120))))

(declare-fun call!229048 () Bool)

(assert (=> b!3162364 (= res!1287350 call!229048)))

(declare-fun b!3162365 () Bool)

(assert (=> b!3162365 (= e!1970121 e!1970118)))

(assert (=> b!3162365 (= c!531792 ((_ is Union!9719) r!13156))))

(declare-fun b!3162366 () Bool)

(assert (=> b!3162366 (= e!1970120 call!229047)))

(declare-fun b!3162367 () Bool)

(assert (=> b!3162367 (= e!1970117 call!229049)))

(declare-fun bm!229044 () Bool)

(assert (=> bm!229044 (= call!229048 call!229049)))

(declare-fun b!3162368 () Bool)

(declare-fun res!1287347 () Bool)

(assert (=> b!3162368 (=> (not res!1287347) (not e!1970119))))

(assert (=> b!3162368 (= res!1287347 call!229048)))

(assert (=> b!3162368 (= e!1970118 e!1970119)))

(assert (= (and d!868529 (not res!1287349)) b!3162360))

(assert (= (and b!3162360 c!531793) b!3162362))

(assert (= (and b!3162360 (not c!531793)) b!3162365))

(assert (= (and b!3162362 res!1287348) b!3162367))

(assert (= (and b!3162365 c!531792) b!3162368))

(assert (= (and b!3162365 (not c!531792)) b!3162361))

(assert (= (and b!3162368 res!1287347) b!3162363))

(assert (= (and b!3162361 (not res!1287351)) b!3162364))

(assert (= (and b!3162364 res!1287350) b!3162366))

(assert (= (or b!3162368 b!3162364) bm!229044))

(assert (= (or b!3162363 b!3162366) bm!229042))

(assert (= (or b!3162367 bm!229044) bm!229043))

(declare-fun m!3426286 () Bool)

(assert (=> bm!229042 m!3426286))

(declare-fun m!3426288 () Bool)

(assert (=> bm!229043 m!3426288))

(declare-fun m!3426290 () Bool)

(assert (=> b!3162362 m!3426290))

(assert (=> start!296424 d!868529))

(declare-fun d!868531 () Bool)

(declare-fun res!1287354 () Bool)

(declare-fun e!1970126 () Bool)

(assert (=> d!868531 (=> (not res!1287354) (not e!1970126))))

(assert (=> d!868531 (= res!1287354 ((_ is HashMap!4046) (cache!4185 cache!347)))))

(assert (=> d!868531 (= (inv!48073 cache!347) e!1970126)))

(declare-fun b!3162371 () Bool)

(assert (=> b!3162371 (= e!1970126 (validCacheMap!48 (cache!4185 cache!347)))))

(assert (= (and d!868531 res!1287354) b!3162371))

(assert (=> b!3162371 m!3426284))

(assert (=> start!296424 d!868531))

(declare-fun d!868533 () Bool)

(declare-fun nullableFct!945 (Regex!9719) Bool)

(assert (=> d!868533 (= (nullable!3334 (regOne!19950 r!13156)) (nullableFct!945 (regOne!19950 r!13156)))))

(declare-fun bs!539444 () Bool)

(assert (= bs!539444 d!868533))

(declare-fun m!3426292 () Bool)

(assert (=> bs!539444 m!3426292))

(assert (=> b!3162285 d!868533))

(declare-fun d!868535 () Bool)

(assert (=> d!868535 (= (array_inv!4708 (_keys!4440 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) (bvsge (size!26656 (_keys!4440 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3162276 d!868535))

(declare-fun d!868537 () Bool)

(assert (=> d!868537 (= (array_inv!4709 (_values!4421 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) (bvsge (size!26657 (_values!4421 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3162276 d!868537))

(declare-fun e!1970129 () Bool)

(declare-fun tp!995403 () Bool)

(declare-fun tp!995404 () Bool)

(declare-fun b!3162376 () Bool)

(declare-fun tp!995402 () Bool)

(assert (=> b!3162376 (= e!1970129 (and tp!995402 tp_is_empty!17001 tp!995403 tp!995404))))

(assert (=> b!3162273 (= tp!995390 e!1970129)))

(assert (= (and b!3162273 ((_ is Cons!35424) mapDefault!18780)) b!3162376))

(declare-fun b!3162388 () Bool)

(declare-fun e!1970132 () Bool)

(declare-fun tp!995417 () Bool)

(declare-fun tp!995416 () Bool)

(assert (=> b!3162388 (= e!1970132 (and tp!995417 tp!995416))))

(declare-fun b!3162389 () Bool)

(declare-fun tp!995419 () Bool)

(assert (=> b!3162389 (= e!1970132 tp!995419)))

(declare-fun b!3162387 () Bool)

(assert (=> b!3162387 (= e!1970132 tp_is_empty!17001)))

(assert (=> b!3162286 (= tp!995385 e!1970132)))

(declare-fun b!3162390 () Bool)

(declare-fun tp!995418 () Bool)

(declare-fun tp!995415 () Bool)

(assert (=> b!3162390 (= e!1970132 (and tp!995418 tp!995415))))

(assert (= (and b!3162286 ((_ is ElementMatch!9719) (regOne!19950 r!13156))) b!3162387))

(assert (= (and b!3162286 ((_ is Concat!15040) (regOne!19950 r!13156))) b!3162388))

(assert (= (and b!3162286 ((_ is Star!9719) (regOne!19950 r!13156))) b!3162389))

(assert (= (and b!3162286 ((_ is Union!9719) (regOne!19950 r!13156))) b!3162390))

(declare-fun b!3162392 () Bool)

(declare-fun e!1970133 () Bool)

(declare-fun tp!995422 () Bool)

(declare-fun tp!995421 () Bool)

(assert (=> b!3162392 (= e!1970133 (and tp!995422 tp!995421))))

(declare-fun b!3162393 () Bool)

(declare-fun tp!995424 () Bool)

(assert (=> b!3162393 (= e!1970133 tp!995424)))

(declare-fun b!3162391 () Bool)

(assert (=> b!3162391 (= e!1970133 tp_is_empty!17001)))

(assert (=> b!3162286 (= tp!995386 e!1970133)))

(declare-fun b!3162394 () Bool)

(declare-fun tp!995423 () Bool)

(declare-fun tp!995420 () Bool)

(assert (=> b!3162394 (= e!1970133 (and tp!995423 tp!995420))))

(assert (= (and b!3162286 ((_ is ElementMatch!9719) (regTwo!19950 r!13156))) b!3162391))

(assert (= (and b!3162286 ((_ is Concat!15040) (regTwo!19950 r!13156))) b!3162392))

(assert (= (and b!3162286 ((_ is Star!9719) (regTwo!19950 r!13156))) b!3162393))

(assert (= (and b!3162286 ((_ is Union!9719) (regTwo!19950 r!13156))) b!3162394))

(declare-fun b!3162396 () Bool)

(declare-fun e!1970134 () Bool)

(declare-fun tp!995427 () Bool)

(declare-fun tp!995426 () Bool)

(assert (=> b!3162396 (= e!1970134 (and tp!995427 tp!995426))))

(declare-fun b!3162397 () Bool)

(declare-fun tp!995429 () Bool)

(assert (=> b!3162397 (= e!1970134 tp!995429)))

(declare-fun b!3162395 () Bool)

(assert (=> b!3162395 (= e!1970134 tp_is_empty!17001)))

(assert (=> b!3162277 (= tp!995393 e!1970134)))

(declare-fun b!3162398 () Bool)

(declare-fun tp!995428 () Bool)

(declare-fun tp!995425 () Bool)

(assert (=> b!3162398 (= e!1970134 (and tp!995428 tp!995425))))

(assert (= (and b!3162277 ((_ is ElementMatch!9719) (regOne!19951 r!13156))) b!3162395))

(assert (= (and b!3162277 ((_ is Concat!15040) (regOne!19951 r!13156))) b!3162396))

(assert (= (and b!3162277 ((_ is Star!9719) (regOne!19951 r!13156))) b!3162397))

(assert (= (and b!3162277 ((_ is Union!9719) (regOne!19951 r!13156))) b!3162398))

(declare-fun b!3162400 () Bool)

(declare-fun e!1970135 () Bool)

(declare-fun tp!995432 () Bool)

(declare-fun tp!995431 () Bool)

(assert (=> b!3162400 (= e!1970135 (and tp!995432 tp!995431))))

(declare-fun b!3162401 () Bool)

(declare-fun tp!995434 () Bool)

(assert (=> b!3162401 (= e!1970135 tp!995434)))

(declare-fun b!3162399 () Bool)

(assert (=> b!3162399 (= e!1970135 tp_is_empty!17001)))

(assert (=> b!3162277 (= tp!995389 e!1970135)))

(declare-fun b!3162402 () Bool)

(declare-fun tp!995433 () Bool)

(declare-fun tp!995430 () Bool)

(assert (=> b!3162402 (= e!1970135 (and tp!995433 tp!995430))))

(assert (= (and b!3162277 ((_ is ElementMatch!9719) (regTwo!19951 r!13156))) b!3162399))

(assert (= (and b!3162277 ((_ is Concat!15040) (regTwo!19951 r!13156))) b!3162400))

(assert (= (and b!3162277 ((_ is Star!9719) (regTwo!19951 r!13156))) b!3162401))

(assert (= (and b!3162277 ((_ is Union!9719) (regTwo!19951 r!13156))) b!3162402))

(declare-fun b!3162410 () Bool)

(declare-fun tp!995454 () Bool)

(declare-fun e!1970141 () Bool)

(declare-fun tp!995452 () Bool)

(declare-fun tp!995450 () Bool)

(assert (=> b!3162410 (= e!1970141 (and tp!995454 tp_is_empty!17001 tp!995450 tp!995452))))

(declare-fun mapNonEmpty!18783 () Bool)

(declare-fun mapRes!18783 () Bool)

(declare-fun tp!995451 () Bool)

(declare-fun e!1970140 () Bool)

(assert (=> mapNonEmpty!18783 (= mapRes!18783 (and tp!995451 e!1970140))))

(declare-fun mapValue!18783 () List!35548)

(declare-fun mapRest!18783 () (Array (_ BitVec 32) List!35548))

(declare-fun mapKey!18783 () (_ BitVec 32))

(assert (=> mapNonEmpty!18783 (= mapRest!18780 (store mapRest!18783 mapKey!18783 mapValue!18783))))

(declare-fun b!3162409 () Bool)

(declare-fun tp!995449 () Bool)

(declare-fun tp!995455 () Bool)

(declare-fun tp!995453 () Bool)

(assert (=> b!3162409 (= e!1970140 (and tp!995455 tp_is_empty!17001 tp!995449 tp!995453))))

(declare-fun condMapEmpty!18783 () Bool)

(declare-fun mapDefault!18783 () List!35548)

(assert (=> mapNonEmpty!18780 (= condMapEmpty!18783 (= mapRest!18780 ((as const (Array (_ BitVec 32) List!35548)) mapDefault!18783)))))

(assert (=> mapNonEmpty!18780 (= tp!995384 (and e!1970141 mapRes!18783))))

(declare-fun mapIsEmpty!18783 () Bool)

(assert (=> mapIsEmpty!18783 mapRes!18783))

(assert (= (and mapNonEmpty!18780 condMapEmpty!18783) mapIsEmpty!18783))

(assert (= (and mapNonEmpty!18780 (not condMapEmpty!18783)) mapNonEmpty!18783))

(assert (= (and mapNonEmpty!18783 ((_ is Cons!35424) mapValue!18783)) b!3162409))

(assert (= (and mapNonEmpty!18780 ((_ is Cons!35424) mapDefault!18783)) b!3162410))

(declare-fun m!3426294 () Bool)

(assert (=> mapNonEmpty!18783 m!3426294))

(declare-fun tp!995458 () Bool)

(declare-fun b!3162411 () Bool)

(declare-fun e!1970142 () Bool)

(declare-fun tp!995456 () Bool)

(declare-fun tp!995457 () Bool)

(assert (=> b!3162411 (= e!1970142 (and tp!995456 tp_is_empty!17001 tp!995457 tp!995458))))

(assert (=> mapNonEmpty!18780 (= tp!995391 e!1970142)))

(assert (= (and mapNonEmpty!18780 ((_ is Cons!35424) mapValue!18780)) b!3162411))

(declare-fun b!3162413 () Bool)

(declare-fun e!1970143 () Bool)

(declare-fun tp!995461 () Bool)

(declare-fun tp!995460 () Bool)

(assert (=> b!3162413 (= e!1970143 (and tp!995461 tp!995460))))

(declare-fun b!3162414 () Bool)

(declare-fun tp!995463 () Bool)

(assert (=> b!3162414 (= e!1970143 tp!995463)))

(declare-fun b!3162412 () Bool)

(assert (=> b!3162412 (= e!1970143 tp_is_empty!17001)))

(assert (=> b!3162287 (= tp!995387 e!1970143)))

(declare-fun b!3162415 () Bool)

(declare-fun tp!995462 () Bool)

(declare-fun tp!995459 () Bool)

(assert (=> b!3162415 (= e!1970143 (and tp!995462 tp!995459))))

(assert (= (and b!3162287 ((_ is ElementMatch!9719) (reg!10048 r!13156))) b!3162412))

(assert (= (and b!3162287 ((_ is Concat!15040) (reg!10048 r!13156))) b!3162413))

(assert (= (and b!3162287 ((_ is Star!9719) (reg!10048 r!13156))) b!3162414))

(assert (= (and b!3162287 ((_ is Union!9719) (reg!10048 r!13156))) b!3162415))

(declare-fun e!1970144 () Bool)

(declare-fun tp!995464 () Bool)

(declare-fun tp!995465 () Bool)

(declare-fun b!3162416 () Bool)

(declare-fun tp!995466 () Bool)

(assert (=> b!3162416 (= e!1970144 (and tp!995464 tp_is_empty!17001 tp!995465 tp!995466))))

(assert (=> b!3162276 (= tp!995394 e!1970144)))

(assert (= (and b!3162276 ((_ is Cons!35424) (zeroValue!4399 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347)))))))) b!3162416))

(declare-fun tp!995468 () Bool)

(declare-fun e!1970145 () Bool)

(declare-fun b!3162417 () Bool)

(declare-fun tp!995467 () Bool)

(declare-fun tp!995469 () Bool)

(assert (=> b!3162417 (= e!1970145 (and tp!995467 tp_is_empty!17001 tp!995468 tp!995469))))

(assert (=> b!3162276 (= tp!995395 e!1970145)))

(assert (= (and b!3162276 ((_ is Cons!35424) (minValue!4399 (v!35072 (underlying!8509 (v!35073 (underlying!8510 (cache!4185 cache!347)))))))) b!3162417))

(check-sat (not bm!229041) (not bm!229027) (not b!3162371) (not b_next!83747) (not b!3162414) (not bm!229043) (not b!3162410) (not b!3162415) (not b!3162417) (not b!3162392) (not b!3162411) (not b!3162308) (not b!3162390) (not b!3162416) (not b!3162402) (not b!3162394) (not b!3162388) (not d!868525) (not b!3162376) (not b!3162349) (not b!3162389) (not d!868533) (not b!3162362) tp_is_empty!17001 (not b!3162413) (not bm!229028) (not b!3162398) b_and!209289 (not b!3162359) (not b!3162343) (not b!3162397) b_and!209287 (not b!3162401) (not b!3162409) (not d!868527) (not b!3162396) (not d!868523) (not mapNonEmpty!18783) (not b!3162393) (not bm!229042) (not bm!229039) (not b!3162357) (not b!3162400) (not b_next!83745))
(check-sat b_and!209289 b_and!209287 (not b_next!83745) (not b_next!83747))
