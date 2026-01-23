; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217694 () Bool)

(assert start!217694)

(declare-fun b!2233016 () Bool)

(declare-fun b_free!64745 () Bool)

(declare-fun b_next!65449 () Bool)

(assert (=> b!2233016 (= b_free!64745 (not b_next!65449))))

(declare-fun tp!700672 () Bool)

(declare-fun b_and!174733 () Bool)

(assert (=> b!2233016 (= tp!700672 b_and!174733)))

(declare-fun b!2233017 () Bool)

(declare-fun b_free!64747 () Bool)

(declare-fun b_next!65451 () Bool)

(assert (=> b!2233017 (= b_free!64747 (not b_next!65451))))

(declare-fun tp!700684 () Bool)

(declare-fun b_and!174735 () Bool)

(assert (=> b!2233017 (= tp!700684 b_and!174735)))

(declare-fun e!1427086 () Bool)

(declare-fun tp!700682 () Bool)

(declare-datatypes ((C!13012 0))(
  ( (C!13013 (val!7554 Int)) )
))
(declare-datatypes ((Regex!6433 0))(
  ( (ElementMatch!6433 (c!356053 C!13012)) (Concat!10771 (regOne!13378 Regex!6433) (regTwo!13378 Regex!6433)) (EmptyExpr!6433) (Star!6433 (reg!6762 Regex!6433)) (EmptyLang!6433) (Union!6433 (regOne!13379 Regex!6433) (regTwo!13379 Regex!6433)) )
))
(declare-datatypes ((List!26338 0))(
  ( (Nil!26244) (Cons!26244 (h!31645 Regex!6433) (t!199757 List!26338)) )
))
(declare-datatypes ((Context!3962 0))(
  ( (Context!3963 (exprs!2481 List!26338)) )
))
(declare-datatypes ((array!10644 0))(
  ( (array!10645 (arr!4729 (Array (_ BitVec 32) (_ BitVec 64))) (size!20510 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3938 0))(
  ( (tuple3!3939 (_1!15239 Regex!6433) (_2!15239 Context!3962) (_3!2439 C!13012)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25600 0))(
  ( (tuple2!25601 (_1!15240 tuple3!3938) (_2!15240 (InoxSet Context!3962))) )
))
(declare-datatypes ((List!26339 0))(
  ( (Nil!26245) (Cons!26245 (h!31646 tuple2!25600) (t!199758 List!26339)) )
))
(declare-datatypes ((array!10646 0))(
  ( (array!10647 (arr!4730 (Array (_ BitVec 32) List!26339)) (size!20511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6142 0))(
  ( (LongMapFixedSize!6143 (defaultEntry!3436 Int) (mask!7641 (_ BitVec 32)) (extraKeys!3319 (_ BitVec 32)) (zeroValue!3329 List!26339) (minValue!3329 List!26339) (_size!6189 (_ BitVec 32)) (_keys!3368 array!10644) (_values!3351 array!10646) (_vacant!3132 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12101 0))(
  ( (Cell!12102 (v!29844 LongMapFixedSize!6142)) )
))
(declare-datatypes ((MutLongMap!3071 0))(
  ( (LongMap!3071 (underlying!6343 Cell!12101)) (MutLongMapExt!3070 (__x!17439 Int)) )
))
(declare-datatypes ((Cell!12103 0))(
  ( (Cell!12104 (v!29845 MutLongMap!3071)) )
))
(declare-datatypes ((Hashable!2981 0))(
  ( (HashableExt!2980 (__x!17440 Int)) )
))
(declare-datatypes ((MutableMap!2981 0))(
  ( (MutableMapExt!2980 (__x!17441 Int)) (HashMap!2981 (underlying!6344 Cell!12103) (hashF!4904 Hashable!2981) (_size!6190 (_ BitVec 32)) (defaultValue!3143 Int)) )
))
(declare-datatypes ((CacheDown!2008 0))(
  ( (CacheDown!2009 (cache!3362 MutableMap!2981)) )
))
(declare-fun cacheDown!839 () CacheDown!2008)

(declare-fun e!1427076 () Bool)

(declare-fun tp!700676 () Bool)

(declare-fun array_inv!3393 (array!10644) Bool)

(declare-fun array_inv!3394 (array!10646) Bool)

(assert (=> b!2233016 (= e!1427076 (and tp!700672 tp!700682 tp!700676 (array_inv!3393 (_keys!3368 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) (array_inv!3394 (_values!3351 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) e!1427086))))

(declare-fun e!1427085 () Bool)

(declare-fun e!1427078 () Bool)

(assert (=> b!2233017 (= e!1427085 (and e!1427078 tp!700684))))

(declare-fun b!2233018 () Bool)

(declare-fun e!1427087 () Bool)

(assert (=> b!2233018 (= e!1427087 e!1427085)))

(declare-fun context!86 () Context!3962)

(declare-fun bm!134153 () Bool)

(declare-fun c!356048 () Bool)

(declare-fun expr!64 () Regex!6433)

(declare-fun call!134159 () List!26338)

(declare-fun c!356050 () Bool)

(declare-fun $colon$colon!523 (List!26338 Regex!6433) List!26338)

(assert (=> bm!134153 (= call!134159 ($colon$colon!523 (exprs!2481 context!86) (ite (or c!356048 c!356050) (regTwo!13378 expr!64) expr!64)))))

(declare-fun b!2233019 () Bool)

(declare-fun e!1427084 () Bool)

(assert (=> b!2233019 (= c!356048 e!1427084)))

(declare-fun res!956013 () Bool)

(assert (=> b!2233019 (=> (not res!956013) (not e!1427084))))

(get-info :version)

(assert (=> b!2233019 (= res!956013 ((_ is Concat!10771) expr!64))))

(declare-datatypes ((tuple2!25602 0))(
  ( (tuple2!25603 (_1!15241 (InoxSet Context!3962)) (_2!15241 CacheDown!2008)) )
))
(declare-fun e!1427083 () tuple2!25602)

(declare-fun e!1427088 () tuple2!25602)

(assert (=> b!2233019 (= e!1427083 e!1427088)))

(declare-fun b!2233020 () Bool)

(declare-fun tp!700680 () Bool)

(declare-fun mapRes!14453 () Bool)

(assert (=> b!2233020 (= e!1427086 (and tp!700680 mapRes!14453))))

(declare-fun condMapEmpty!14453 () Bool)

(declare-fun mapDefault!14453 () List!26339)

(assert (=> b!2233020 (= condMapEmpty!14453 (= (arr!4730 (_values!3351 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26339)) mapDefault!14453)))))

(declare-fun b!2233022 () Bool)

(declare-fun e!1427092 () Bool)

(declare-fun e!1427079 () Bool)

(assert (=> b!2233022 (= e!1427092 e!1427079)))

(declare-fun b!2233023 () Bool)

(declare-fun e!1427077 () Bool)

(declare-fun tp!700683 () Bool)

(declare-fun tp!700677 () Bool)

(assert (=> b!2233023 (= e!1427077 (and tp!700683 tp!700677))))

(declare-fun bm!134154 () Bool)

(declare-fun call!134161 () List!26338)

(assert (=> bm!134154 (= call!134161 call!134159)))

(declare-fun b!2233024 () Bool)

(declare-fun res!956012 () Bool)

(declare-fun e!1427089 () Bool)

(assert (=> b!2233024 (=> (not res!956012) (not e!1427089))))

(declare-fun a!1167 () C!13012)

(declare-datatypes ((Option!5113 0))(
  ( (None!5112) (Some!5112 (v!29846 (InoxSet Context!3962))) )
))
(declare-fun get!7936 (CacheDown!2008 Regex!6433 Context!3962 C!13012) Option!5113)

(assert (=> b!2233024 (= res!956012 (not ((_ is Some!5112) (get!7936 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2233025 () Bool)

(declare-fun lt!830679 () tuple2!25602)

(declare-fun lt!830674 () tuple2!25602)

(assert (=> b!2233025 (= e!1427088 (tuple2!25603 ((_ map or) (_1!15241 lt!830679) (_1!15241 lt!830674)) (_2!15241 lt!830674)))))

(declare-fun call!134160 () tuple2!25602)

(assert (=> b!2233025 (= lt!830679 call!134160)))

(declare-fun call!134158 () tuple2!25602)

(assert (=> b!2233025 (= lt!830674 call!134158)))

(declare-fun b!2233026 () Bool)

(declare-fun tp_is_empty!10091 () Bool)

(assert (=> b!2233026 (= e!1427077 tp_is_empty!10091)))

(declare-fun mapNonEmpty!14453 () Bool)

(declare-fun tp!700681 () Bool)

(declare-fun tp!700678 () Bool)

(assert (=> mapNonEmpty!14453 (= mapRes!14453 (and tp!700681 tp!700678))))

(declare-fun mapKey!14453 () (_ BitVec 32))

(declare-fun mapValue!14453 () List!26339)

(declare-fun mapRest!14453 () (Array (_ BitVec 32) List!26339))

(assert (=> mapNonEmpty!14453 (= (arr!4730 (_values!3351 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) (store mapRest!14453 mapKey!14453 mapValue!14453))))

(declare-fun b!2233027 () Bool)

(declare-fun lt!830676 () tuple2!25602)

(declare-fun derivationStepZipperDown!51 (Regex!6433 Context!3962 C!13012) (InoxSet Context!3962))

(assert (=> b!2233027 (= e!1427089 (not (= (_1!15241 lt!830676) (derivationStepZipperDown!51 expr!64 context!86 a!1167))))))

(declare-datatypes ((Unit!39156 0))(
  ( (Unit!39157) )
))
(declare-datatypes ((tuple2!25604 0))(
  ( (tuple2!25605 (_1!15242 Unit!39156) (_2!15242 CacheDown!2008)) )
))
(declare-fun lt!830678 () tuple2!25604)

(declare-fun update!138 (CacheDown!2008 Regex!6433 Context!3962 C!13012 (InoxSet Context!3962)) tuple2!25604)

(assert (=> b!2233027 (= lt!830678 (update!138 (_2!15241 lt!830676) expr!64 context!86 a!1167 (_1!15241 lt!830676)))))

(declare-fun e!1427082 () tuple2!25602)

(assert (=> b!2233027 (= lt!830676 e!1427082)))

(declare-fun c!356052 () Bool)

(assert (=> b!2233027 (= c!356052 (and ((_ is ElementMatch!6433) expr!64) (= (c!356053 expr!64) a!1167)))))

(declare-fun b!2233028 () Bool)

(assert (=> b!2233028 (= e!1427082 e!1427083)))

(declare-fun c!356049 () Bool)

(assert (=> b!2233028 (= c!356049 ((_ is Union!6433) expr!64))))

(declare-fun b!2233029 () Bool)

(assert (=> b!2233029 (= e!1427079 e!1427076)))

(declare-fun b!2233030 () Bool)

(declare-fun lt!830675 () MutLongMap!3071)

(assert (=> b!2233030 (= e!1427078 (and e!1427092 ((_ is LongMap!3071) lt!830675)))))

(assert (=> b!2233030 (= lt!830675 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))

(declare-fun b!2233021 () Bool)

(declare-fun e!1427090 () tuple2!25602)

(declare-fun call!134162 () tuple2!25602)

(assert (=> b!2233021 (= e!1427090 call!134162)))

(declare-fun res!956014 () Bool)

(assert (=> start!217694 (=> (not res!956014) (not e!1427089))))

(declare-fun validRegex!2403 (Regex!6433) Bool)

(assert (=> start!217694 (= res!956014 (validRegex!2403 expr!64))))

(assert (=> start!217694 e!1427089))

(assert (=> start!217694 e!1427077))

(declare-fun inv!35645 (CacheDown!2008) Bool)

(assert (=> start!217694 (and (inv!35645 cacheDown!839) e!1427087)))

(declare-fun e!1427081 () Bool)

(declare-fun inv!35646 (Context!3962) Bool)

(assert (=> start!217694 (and (inv!35646 context!86) e!1427081)))

(assert (=> start!217694 tp_is_empty!10091))

(declare-fun b!2233031 () Bool)

(declare-fun nullable!1774 (Regex!6433) Bool)

(assert (=> b!2233031 (= e!1427084 (nullable!1774 (regOne!13378 expr!64)))))

(declare-fun b!2233032 () Bool)

(declare-fun tp!700673 () Bool)

(declare-fun tp!700679 () Bool)

(assert (=> b!2233032 (= e!1427077 (and tp!700673 tp!700679))))

(declare-fun bm!134155 () Bool)

(declare-fun call!134163 () tuple2!25602)

(assert (=> bm!134155 (= call!134158 call!134163)))

(declare-fun mapIsEmpty!14453 () Bool)

(assert (=> mapIsEmpty!14453 mapRes!14453))

(declare-fun b!2233033 () Bool)

(assert (=> b!2233033 (= e!1427090 (tuple2!25603 ((as const (Array Context!3962 Bool)) false) cacheDown!839))))

(declare-fun bm!134156 () Bool)

(assert (=> bm!134156 (= call!134162 call!134158)))

(declare-fun b!2233034 () Bool)

(declare-fun c!356051 () Bool)

(assert (=> b!2233034 (= c!356051 ((_ is Star!6433) expr!64))))

(declare-fun e!1427080 () tuple2!25602)

(assert (=> b!2233034 (= e!1427080 e!1427090)))

(declare-fun b!2233035 () Bool)

(assert (=> b!2233035 (= e!1427082 (tuple2!25603 (store ((as const (Array Context!3962 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun b!2233036 () Bool)

(assert (=> b!2233036 (= e!1427088 e!1427080)))

(assert (=> b!2233036 (= c!356050 ((_ is Concat!10771) expr!64))))

(declare-fun b!2233037 () Bool)

(declare-fun lt!830677 () tuple2!25602)

(assert (=> b!2233037 (= lt!830677 call!134160)))

(declare-fun lt!830673 () tuple2!25602)

(assert (=> b!2233037 (= lt!830673 call!134163)))

(assert (=> b!2233037 (= e!1427083 (tuple2!25603 ((_ map or) (_1!15241 lt!830673) (_1!15241 lt!830677)) (_2!15241 lt!830677)))))

(declare-fun b!2233038 () Bool)

(declare-fun tp!700675 () Bool)

(assert (=> b!2233038 (= e!1427077 tp!700675)))

(declare-fun bm!134157 () Bool)

(declare-fun derivationStepZipperDownMem!24 (Regex!6433 Context!3962 C!13012 CacheDown!2008) tuple2!25602)

(assert (=> bm!134157 (= call!134160 (derivationStepZipperDownMem!24 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)) (ite c!356049 context!86 (Context!3963 call!134159)) a!1167 (ite c!356049 (_2!15241 lt!830673) cacheDown!839)))))

(declare-fun bm!134158 () Bool)

(assert (=> bm!134158 (= call!134163 (derivationStepZipperDownMem!24 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) a!1167 (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))))))

(declare-fun b!2233039 () Bool)

(declare-fun tp!700674 () Bool)

(assert (=> b!2233039 (= e!1427081 tp!700674)))

(declare-fun b!2233040 () Bool)

(assert (=> b!2233040 (= e!1427080 call!134162)))

(assert (= (and start!217694 res!956014) b!2233024))

(assert (= (and b!2233024 res!956012) b!2233027))

(assert (= (and b!2233027 c!356052) b!2233035))

(assert (= (and b!2233027 (not c!356052)) b!2233028))

(assert (= (and b!2233028 c!356049) b!2233037))

(assert (= (and b!2233028 (not c!356049)) b!2233019))

(assert (= (and b!2233019 res!956013) b!2233031))

(assert (= (and b!2233019 c!356048) b!2233025))

(assert (= (and b!2233019 (not c!356048)) b!2233036))

(assert (= (and b!2233036 c!356050) b!2233040))

(assert (= (and b!2233036 (not c!356050)) b!2233034))

(assert (= (and b!2233034 c!356051) b!2233021))

(assert (= (and b!2233034 (not c!356051)) b!2233033))

(assert (= (or b!2233040 b!2233021) bm!134154))

(assert (= (or b!2233040 b!2233021) bm!134156))

(assert (= (or b!2233025 bm!134154) bm!134153))

(assert (= (or b!2233025 bm!134156) bm!134155))

(assert (= (or b!2233037 b!2233025) bm!134157))

(assert (= (or b!2233037 bm!134155) bm!134158))

(assert (= (and start!217694 ((_ is ElementMatch!6433) expr!64)) b!2233026))

(assert (= (and start!217694 ((_ is Concat!10771) expr!64)) b!2233032))

(assert (= (and start!217694 ((_ is Star!6433) expr!64)) b!2233038))

(assert (= (and start!217694 ((_ is Union!6433) expr!64)) b!2233023))

(assert (= (and b!2233020 condMapEmpty!14453) mapIsEmpty!14453))

(assert (= (and b!2233020 (not condMapEmpty!14453)) mapNonEmpty!14453))

(assert (= b!2233016 b!2233020))

(assert (= b!2233029 b!2233016))

(assert (= b!2233022 b!2233029))

(assert (= (and b!2233030 ((_ is LongMap!3071) (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))) b!2233022))

(assert (= b!2233017 b!2233030))

(assert (= (and b!2233018 ((_ is HashMap!2981) (cache!3362 cacheDown!839))) b!2233017))

(assert (= start!217694 b!2233018))

(assert (= start!217694 b!2233039))

(declare-fun m!2668446 () Bool)

(assert (=> start!217694 m!2668446))

(declare-fun m!2668448 () Bool)

(assert (=> start!217694 m!2668448))

(declare-fun m!2668450 () Bool)

(assert (=> start!217694 m!2668450))

(declare-fun m!2668452 () Bool)

(assert (=> mapNonEmpty!14453 m!2668452))

(declare-fun m!2668454 () Bool)

(assert (=> b!2233016 m!2668454))

(declare-fun m!2668456 () Bool)

(assert (=> b!2233016 m!2668456))

(declare-fun m!2668458 () Bool)

(assert (=> b!2233027 m!2668458))

(declare-fun m!2668460 () Bool)

(assert (=> b!2233027 m!2668460))

(declare-fun m!2668462 () Bool)

(assert (=> bm!134157 m!2668462))

(declare-fun m!2668464 () Bool)

(assert (=> b!2233031 m!2668464))

(declare-fun m!2668466 () Bool)

(assert (=> b!2233024 m!2668466))

(declare-fun m!2668468 () Bool)

(assert (=> bm!134158 m!2668468))

(declare-fun m!2668470 () Bool)

(assert (=> bm!134153 m!2668470))

(declare-fun m!2668472 () Bool)

(assert (=> b!2233035 m!2668472))

(check-sat b_and!174733 (not b_next!65451) (not b!2233023) (not mapNonEmpty!14453) b_and!174735 (not b!2233038) (not bm!134153) (not b!2233031) (not b!2233027) (not bm!134157) tp_is_empty!10091 (not b!2233039) (not bm!134158) (not b!2233020) (not start!217694) (not b!2233032) (not b_next!65449) (not b!2233024) (not b!2233016))
(check-sat b_and!174735 b_and!174733 (not b_next!65449) (not b_next!65451))
(get-model)

(declare-fun d!665228 () Bool)

(declare-fun nullableFct!421 (Regex!6433) Bool)

(assert (=> d!665228 (= (nullable!1774 (regOne!13378 expr!64)) (nullableFct!421 (regOne!13378 expr!64)))))

(declare-fun bs!454131 () Bool)

(assert (= bs!454131 d!665228))

(declare-fun m!2668474 () Bool)

(assert (=> bs!454131 m!2668474))

(assert (=> b!2233031 d!665228))

(declare-fun call!134177 () List!26338)

(declare-fun call!134180 () tuple2!25602)

(declare-fun c!356068 () Bool)

(declare-fun bm!134171 () Bool)

(assert (=> bm!134171 (= call!134180 (derivationStepZipperDownMem!24 (ite c!356068 (regOne!13379 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) (regOne!13378 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)))) (ite c!356068 (ite c!356049 context!86 (Context!3963 call!134159)) (Context!3963 call!134177)) a!1167 (ite c!356049 (_2!15241 lt!830673) cacheDown!839)))))

(declare-fun bm!134172 () Bool)

(declare-fun c!356066 () Bool)

(declare-fun c!356071 () Bool)

(assert (=> bm!134172 (= call!134177 ($colon$colon!523 (exprs!2481 (ite c!356049 context!86 (Context!3963 call!134159))) (ite (or c!356066 c!356071) (regTwo!13378 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)))))))

(declare-fun bm!134173 () Bool)

(declare-fun call!134176 () tuple2!25602)

(declare-fun call!134178 () tuple2!25602)

(assert (=> bm!134173 (= call!134176 call!134178)))

(declare-fun b!2233067 () Bool)

(declare-fun e!1427109 () tuple2!25602)

(declare-fun lt!830699 () Option!5113)

(assert (=> b!2233067 (= e!1427109 (tuple2!25603 (v!29846 lt!830699) (ite c!356049 (_2!15241 lt!830673) cacheDown!839)))))

(declare-fun b!2233068 () Bool)

(declare-fun lt!830698 () tuple2!25602)

(declare-fun call!134179 () tuple2!25602)

(assert (=> b!2233068 (= lt!830698 call!134179)))

(declare-fun e!1427110 () tuple2!25602)

(assert (=> b!2233068 (= e!1427110 (tuple2!25603 (_1!15241 lt!830698) (_2!15241 lt!830698)))))

(declare-fun b!2233069 () Bool)

(declare-fun e!1427108 () tuple2!25602)

(declare-fun lt!830706 () tuple2!25602)

(declare-fun lt!830701 () tuple2!25602)

(assert (=> b!2233069 (= e!1427108 (tuple2!25603 ((_ map or) (_1!15241 lt!830706) (_1!15241 lt!830701)) (_2!15241 lt!830701)))))

(assert (=> b!2233069 (= lt!830706 call!134180)))

(assert (=> b!2233069 (= lt!830701 call!134178)))

(declare-fun b!2233070 () Bool)

(declare-fun lt!830705 () tuple2!25602)

(assert (=> b!2233070 (= e!1427109 (tuple2!25603 (_1!15241 lt!830705) (_2!15242 (update!138 (_2!15241 lt!830705) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)) (ite c!356049 context!86 (Context!3963 call!134159)) a!1167 (_1!15241 lt!830705)))))))

(declare-fun c!356070 () Bool)

(assert (=> b!2233070 (= c!356070 (and ((_ is ElementMatch!6433) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) (= (c!356053 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) a!1167)))))

(declare-fun e!1427112 () tuple2!25602)

(assert (=> b!2233070 (= lt!830705 e!1427112)))

(declare-fun b!2233071 () Bool)

(declare-fun e!1427113 () tuple2!25602)

(assert (=> b!2233071 (= e!1427113 e!1427110)))

(declare-fun c!356069 () Bool)

(assert (=> b!2233071 (= c!356069 ((_ is Star!6433) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))))))

(declare-fun bm!134174 () Bool)

(declare-fun lt!830702 () tuple2!25602)

(declare-fun call!134181 () List!26338)

(assert (=> bm!134174 (= call!134178 (derivationStepZipperDownMem!24 (ite c!356068 (regTwo!13379 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) (ite c!356066 (regTwo!13378 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) (ite c!356071 (regOne!13378 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))) (reg!6762 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)))))) (ite (or c!356068 c!356066) (ite c!356049 context!86 (Context!3963 call!134159)) (Context!3963 call!134181)) a!1167 (ite c!356068 (_2!15241 lt!830706) (ite c!356066 (_2!15241 lt!830702) (ite c!356049 (_2!15241 lt!830673) cacheDown!839)))))))

(declare-fun b!2233072 () Bool)

(declare-fun lt!830700 () tuple2!25602)

(assert (=> b!2233072 (= e!1427113 (tuple2!25603 (_1!15241 lt!830700) (_2!15241 lt!830700)))))

(assert (=> b!2233072 (= lt!830700 call!134179)))

(declare-fun b!2233073 () Bool)

(assert (=> b!2233073 (= c!356068 ((_ is Union!6433) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))))))

(assert (=> b!2233073 (= e!1427112 e!1427108)))

(declare-fun lt!830703 () tuple2!25602)

(declare-fun d!665230 () Bool)

(assert (=> d!665230 (= (_1!15241 lt!830703) (derivationStepZipperDown!51 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)) (ite c!356049 context!86 (Context!3963 call!134159)) a!1167))))

(assert (=> d!665230 (= lt!830703 e!1427109)))

(declare-fun c!356067 () Bool)

(assert (=> d!665230 (= c!356067 ((_ is Some!5112) lt!830699))))

(assert (=> d!665230 (= lt!830699 (get!7936 (ite c!356049 (_2!15241 lt!830673) cacheDown!839) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)) (ite c!356049 context!86 (Context!3963 call!134159)) a!1167))))

(assert (=> d!665230 (validRegex!2403 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)))))

(assert (=> d!665230 (= (derivationStepZipperDownMem!24 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)) (ite c!356049 context!86 (Context!3963 call!134159)) a!1167 (ite c!356049 (_2!15241 lt!830673) cacheDown!839)) lt!830703)))

(declare-fun b!2233074 () Bool)

(declare-fun e!1427111 () tuple2!25602)

(assert (=> b!2233074 (= e!1427108 e!1427111)))

(declare-fun res!956017 () Bool)

(assert (=> b!2233074 (= res!956017 ((_ is Concat!10771) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))))))

(declare-fun e!1427107 () Bool)

(assert (=> b!2233074 (=> (not res!956017) (not e!1427107))))

(assert (=> b!2233074 (= c!356066 e!1427107)))

(declare-fun bm!134175 () Bool)

(assert (=> bm!134175 (= call!134181 call!134177)))

(declare-fun b!2233075 () Bool)

(assert (=> b!2233075 (= e!1427107 (nullable!1774 (regOne!13378 (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64)))))))

(declare-fun b!2233076 () Bool)

(declare-fun lt!830704 () tuple2!25602)

(assert (=> b!2233076 (= lt!830704 call!134176)))

(assert (=> b!2233076 (= lt!830702 call!134180)))

(assert (=> b!2233076 (= e!1427111 (tuple2!25603 ((_ map or) (_1!15241 lt!830702) (_1!15241 lt!830704)) (_2!15241 lt!830704)))))

(declare-fun b!2233077 () Bool)

(assert (=> b!2233077 (= c!356071 ((_ is Concat!10771) (ite c!356049 (regTwo!13379 expr!64) (regOne!13378 expr!64))))))

(assert (=> b!2233077 (= e!1427111 e!1427113)))

(declare-fun bm!134176 () Bool)

(assert (=> bm!134176 (= call!134179 call!134176)))

(declare-fun b!2233078 () Bool)

(assert (=> b!2233078 (= e!1427110 (tuple2!25603 ((as const (Array Context!3962 Bool)) false) (ite c!356049 (_2!15241 lt!830673) cacheDown!839)))))

(declare-fun b!2233079 () Bool)

(assert (=> b!2233079 (= e!1427112 (tuple2!25603 (store ((as const (Array Context!3962 Bool)) false) (ite c!356049 context!86 (Context!3963 call!134159)) true) (ite c!356049 (_2!15241 lt!830673) cacheDown!839)))))

(assert (= (and d!665230 c!356067) b!2233067))

(assert (= (and d!665230 (not c!356067)) b!2233070))

(assert (= (and b!2233070 c!356070) b!2233079))

(assert (= (and b!2233070 (not c!356070)) b!2233073))

(assert (= (and b!2233073 c!356068) b!2233069))

(assert (= (and b!2233073 (not c!356068)) b!2233074))

(assert (= (and b!2233074 res!956017) b!2233075))

(assert (= (and b!2233074 c!356066) b!2233076))

(assert (= (and b!2233074 (not c!356066)) b!2233077))

(assert (= (and b!2233077 c!356071) b!2233072))

(assert (= (and b!2233077 (not c!356071)) b!2233071))

(assert (= (and b!2233071 c!356069) b!2233068))

(assert (= (and b!2233071 (not c!356069)) b!2233078))

(assert (= (or b!2233072 b!2233068) bm!134175))

(assert (= (or b!2233072 b!2233068) bm!134176))

(assert (= (or b!2233076 bm!134175) bm!134172))

(assert (= (or b!2233076 bm!134176) bm!134173))

(assert (= (or b!2233069 b!2233076) bm!134171))

(assert (= (or b!2233069 bm!134173) bm!134174))

(declare-fun m!2668476 () Bool)

(assert (=> bm!134174 m!2668476))

(declare-fun m!2668478 () Bool)

(assert (=> bm!134171 m!2668478))

(declare-fun m!2668480 () Bool)

(assert (=> b!2233075 m!2668480))

(declare-fun m!2668482 () Bool)

(assert (=> d!665230 m!2668482))

(declare-fun m!2668484 () Bool)

(assert (=> d!665230 m!2668484))

(declare-fun m!2668486 () Bool)

(assert (=> d!665230 m!2668486))

(declare-fun m!2668488 () Bool)

(assert (=> b!2233070 m!2668488))

(declare-fun m!2668490 () Bool)

(assert (=> bm!134172 m!2668490))

(declare-fun m!2668492 () Bool)

(assert (=> b!2233079 m!2668492))

(assert (=> bm!134157 d!665230))

(declare-fun b!2233102 () Bool)

(declare-fun e!1427126 () (InoxSet Context!3962))

(assert (=> b!2233102 (= e!1427126 (store ((as const (Array Context!3962 Bool)) false) context!86 true))))

(declare-fun b!2233103 () Bool)

(declare-fun c!356082 () Bool)

(assert (=> b!2233103 (= c!356082 ((_ is Star!6433) expr!64))))

(declare-fun e!1427129 () (InoxSet Context!3962))

(declare-fun e!1427131 () (InoxSet Context!3962))

(assert (=> b!2233103 (= e!1427129 e!1427131)))

(declare-fun b!2233104 () Bool)

(declare-fun e!1427127 () (InoxSet Context!3962))

(assert (=> b!2233104 (= e!1427127 e!1427129)))

(declare-fun c!356086 () Bool)

(assert (=> b!2233104 (= c!356086 ((_ is Concat!10771) expr!64))))

(declare-fun b!2233105 () Bool)

(declare-fun call!134199 () (InoxSet Context!3962))

(assert (=> b!2233105 (= e!1427129 call!134199)))

(declare-fun bm!134189 () Bool)

(declare-fun call!134194 () (InoxSet Context!3962))

(declare-fun call!134197 () (InoxSet Context!3962))

(assert (=> bm!134189 (= call!134194 call!134197)))

(declare-fun b!2233106 () Bool)

(assert (=> b!2233106 (= e!1427131 call!134199)))

(declare-fun bm!134190 () Bool)

(declare-fun call!134195 () (InoxSet Context!3962))

(declare-fun call!134196 () List!26338)

(declare-fun c!356083 () Bool)

(assert (=> bm!134190 (= call!134195 (derivationStepZipperDown!51 (ite c!356083 (regTwo!13379 expr!64) (regOne!13378 expr!64)) (ite c!356083 context!86 (Context!3963 call!134196)) a!1167))))

(declare-fun b!2233107 () Bool)

(declare-fun e!1427128 () (InoxSet Context!3962))

(assert (=> b!2233107 (= e!1427126 e!1427128)))

(assert (=> b!2233107 (= c!356083 ((_ is Union!6433) expr!64))))

(declare-fun b!2233108 () Bool)

(declare-fun c!356085 () Bool)

(declare-fun e!1427130 () Bool)

(assert (=> b!2233108 (= c!356085 e!1427130)))

(declare-fun res!956020 () Bool)

(assert (=> b!2233108 (=> (not res!956020) (not e!1427130))))

(assert (=> b!2233108 (= res!956020 ((_ is Concat!10771) expr!64))))

(assert (=> b!2233108 (= e!1427128 e!1427127)))

(declare-fun bm!134191 () Bool)

(declare-fun call!134198 () List!26338)

(assert (=> bm!134191 (= call!134198 call!134196)))

(declare-fun bm!134192 () Bool)

(assert (=> bm!134192 (= call!134199 call!134194)))

(declare-fun bm!134193 () Bool)

(assert (=> bm!134193 (= call!134197 (derivationStepZipperDown!51 (ite c!356083 (regOne!13379 expr!64) (ite c!356085 (regTwo!13378 expr!64) (ite c!356086 (regOne!13378 expr!64) (reg!6762 expr!64)))) (ite (or c!356083 c!356085) context!86 (Context!3963 call!134198)) a!1167))))

(declare-fun b!2233109 () Bool)

(assert (=> b!2233109 (= e!1427130 (nullable!1774 (regOne!13378 expr!64)))))

(declare-fun b!2233110 () Bool)

(assert (=> b!2233110 (= e!1427131 ((as const (Array Context!3962 Bool)) false))))

(declare-fun b!2233111 () Bool)

(assert (=> b!2233111 (= e!1427128 ((_ map or) call!134197 call!134195))))

(declare-fun bm!134194 () Bool)

(assert (=> bm!134194 (= call!134196 ($colon$colon!523 (exprs!2481 context!86) (ite (or c!356085 c!356086) (regTwo!13378 expr!64) expr!64)))))

(declare-fun b!2233112 () Bool)

(assert (=> b!2233112 (= e!1427127 ((_ map or) call!134195 call!134194))))

(declare-fun d!665232 () Bool)

(declare-fun c!356084 () Bool)

(assert (=> d!665232 (= c!356084 (and ((_ is ElementMatch!6433) expr!64) (= (c!356053 expr!64) a!1167)))))

(assert (=> d!665232 (= (derivationStepZipperDown!51 expr!64 context!86 a!1167) e!1427126)))

(assert (= (and d!665232 c!356084) b!2233102))

(assert (= (and d!665232 (not c!356084)) b!2233107))

(assert (= (and b!2233107 c!356083) b!2233111))

(assert (= (and b!2233107 (not c!356083)) b!2233108))

(assert (= (and b!2233108 res!956020) b!2233109))

(assert (= (and b!2233108 c!356085) b!2233112))

(assert (= (and b!2233108 (not c!356085)) b!2233104))

(assert (= (and b!2233104 c!356086) b!2233105))

(assert (= (and b!2233104 (not c!356086)) b!2233103))

(assert (= (and b!2233103 c!356082) b!2233106))

(assert (= (and b!2233103 (not c!356082)) b!2233110))

(assert (= (or b!2233105 b!2233106) bm!134191))

(assert (= (or b!2233105 b!2233106) bm!134192))

(assert (= (or b!2233112 bm!134191) bm!134194))

(assert (= (or b!2233112 bm!134192) bm!134189))

(assert (= (or b!2233111 b!2233112) bm!134190))

(assert (= (or b!2233111 bm!134189) bm!134193))

(declare-fun m!2668494 () Bool)

(assert (=> bm!134193 m!2668494))

(declare-fun m!2668496 () Bool)

(assert (=> bm!134190 m!2668496))

(declare-fun m!2668498 () Bool)

(assert (=> bm!134194 m!2668498))

(assert (=> b!2233109 m!2668464))

(assert (=> b!2233102 m!2668472))

(assert (=> b!2233027 d!665232))

(declare-fun d!665234 () Bool)

(declare-fun lt!830709 () tuple2!25604)

(declare-fun validCacheMapDown!288 (MutableMap!2981) Bool)

(assert (=> d!665234 (validCacheMapDown!288 (cache!3362 (_2!15242 lt!830709)))))

(declare-fun choose!13132 (CacheDown!2008 Regex!6433 Context!3962 C!13012 (InoxSet Context!3962)) tuple2!25604)

(assert (=> d!665234 (= lt!830709 (choose!13132 (_2!15241 lt!830676) expr!64 context!86 a!1167 (_1!15241 lt!830676)))))

(assert (=> d!665234 (validCacheMapDown!288 (cache!3362 (_2!15241 lt!830676)))))

(assert (=> d!665234 (= (update!138 (_2!15241 lt!830676) expr!64 context!86 a!1167 (_1!15241 lt!830676)) lt!830709)))

(declare-fun bs!454132 () Bool)

(assert (= bs!454132 d!665234))

(declare-fun m!2668500 () Bool)

(assert (=> bs!454132 m!2668500))

(declare-fun m!2668502 () Bool)

(assert (=> bs!454132 m!2668502))

(declare-fun m!2668504 () Bool)

(assert (=> bs!454132 m!2668504))

(assert (=> b!2233027 d!665234))

(declare-fun d!665236 () Bool)

(assert (=> d!665236 (= ($colon$colon!523 (exprs!2481 context!86) (ite (or c!356048 c!356050) (regTwo!13378 expr!64) expr!64)) (Cons!26244 (ite (or c!356048 c!356050) (regTwo!13378 expr!64) expr!64) (exprs!2481 context!86)))))

(assert (=> bm!134153 d!665236))

(declare-fun c!356089 () Bool)

(declare-fun call!134204 () tuple2!25602)

(declare-fun call!134201 () List!26338)

(declare-fun bm!134195 () Bool)

(assert (=> bm!134195 (= call!134204 (derivationStepZipperDownMem!24 (ite c!356089 (regOne!13379 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) (regOne!13378 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))))) (ite c!356089 (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) (Context!3963 call!134201)) a!1167 (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))))))

(declare-fun bm!134196 () Bool)

(declare-fun c!356092 () Bool)

(declare-fun c!356087 () Bool)

(assert (=> bm!134196 (= call!134201 ($colon$colon!523 (exprs!2481 (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161))) (ite (or c!356087 c!356092) (regTwo!13378 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))))))))

(declare-fun bm!134197 () Bool)

(declare-fun call!134200 () tuple2!25602)

(declare-fun call!134202 () tuple2!25602)

(assert (=> bm!134197 (= call!134200 call!134202)))

(declare-fun lt!830711 () Option!5113)

(declare-fun e!1427134 () tuple2!25602)

(declare-fun b!2233113 () Bool)

(assert (=> b!2233113 (= e!1427134 (tuple2!25603 (v!29846 lt!830711) (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))))))

(declare-fun b!2233114 () Bool)

(declare-fun lt!830710 () tuple2!25602)

(declare-fun call!134203 () tuple2!25602)

(assert (=> b!2233114 (= lt!830710 call!134203)))

(declare-fun e!1427135 () tuple2!25602)

(assert (=> b!2233114 (= e!1427135 (tuple2!25603 (_1!15241 lt!830710) (_2!15241 lt!830710)))))

(declare-fun b!2233115 () Bool)

(declare-fun e!1427133 () tuple2!25602)

(declare-fun lt!830718 () tuple2!25602)

(declare-fun lt!830713 () tuple2!25602)

(assert (=> b!2233115 (= e!1427133 (tuple2!25603 ((_ map or) (_1!15241 lt!830718) (_1!15241 lt!830713)) (_2!15241 lt!830713)))))

(assert (=> b!2233115 (= lt!830718 call!134204)))

(assert (=> b!2233115 (= lt!830713 call!134202)))

(declare-fun lt!830717 () tuple2!25602)

(declare-fun b!2233116 () Bool)

(assert (=> b!2233116 (= e!1427134 (tuple2!25603 (_1!15241 lt!830717) (_2!15242 (update!138 (_2!15241 lt!830717) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) a!1167 (_1!15241 lt!830717)))))))

(declare-fun c!356091 () Bool)

(assert (=> b!2233116 (= c!356091 (and ((_ is ElementMatch!6433) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) (= (c!356053 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) a!1167)))))

(declare-fun e!1427137 () tuple2!25602)

(assert (=> b!2233116 (= lt!830717 e!1427137)))

(declare-fun b!2233117 () Bool)

(declare-fun e!1427138 () tuple2!25602)

(assert (=> b!2233117 (= e!1427138 e!1427135)))

(declare-fun c!356090 () Bool)

(assert (=> b!2233117 (= c!356090 ((_ is Star!6433) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))))))

(declare-fun bm!134198 () Bool)

(declare-fun lt!830714 () tuple2!25602)

(declare-fun call!134205 () List!26338)

(assert (=> bm!134198 (= call!134202 (derivationStepZipperDownMem!24 (ite c!356089 (regTwo!13379 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) (ite c!356087 (regTwo!13378 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) (ite c!356092 (regOne!13378 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))) (reg!6762 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))))))) (ite (or c!356089 c!356087) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) (Context!3963 call!134205)) a!1167 (ite c!356089 (_2!15241 lt!830718) (ite c!356087 (_2!15241 lt!830714) (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))))))))

(declare-fun b!2233118 () Bool)

(declare-fun lt!830712 () tuple2!25602)

(assert (=> b!2233118 (= e!1427138 (tuple2!25603 (_1!15241 lt!830712) (_2!15241 lt!830712)))))

(assert (=> b!2233118 (= lt!830712 call!134203)))

(declare-fun b!2233119 () Bool)

(assert (=> b!2233119 (= c!356089 ((_ is Union!6433) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))))))

(assert (=> b!2233119 (= e!1427137 e!1427133)))

(declare-fun d!665238 () Bool)

(declare-fun lt!830715 () tuple2!25602)

(assert (=> d!665238 (= (_1!15241 lt!830715) (derivationStepZipperDown!51 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) a!1167))))

(assert (=> d!665238 (= lt!830715 e!1427134)))

(declare-fun c!356088 () Bool)

(assert (=> d!665238 (= c!356088 ((_ is Some!5112) lt!830711))))

(assert (=> d!665238 (= lt!830711 (get!7936 (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839)) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) a!1167))))

(assert (=> d!665238 (validRegex!2403 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))))))

(assert (=> d!665238 (= (derivationStepZipperDownMem!24 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) a!1167 (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))) lt!830715)))

(declare-fun b!2233120 () Bool)

(declare-fun e!1427136 () tuple2!25602)

(assert (=> b!2233120 (= e!1427133 e!1427136)))

(declare-fun res!956022 () Bool)

(assert (=> b!2233120 (= res!956022 ((_ is Concat!10771) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))))))

(declare-fun e!1427132 () Bool)

(assert (=> b!2233120 (=> (not res!956022) (not e!1427132))))

(assert (=> b!2233120 (= c!356087 e!1427132)))

(declare-fun bm!134199 () Bool)

(assert (=> bm!134199 (= call!134205 call!134201)))

(declare-fun b!2233121 () Bool)

(assert (=> b!2233121 (= e!1427132 (nullable!1774 (regOne!13378 (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64)))))))))

(declare-fun b!2233122 () Bool)

(declare-fun lt!830716 () tuple2!25602)

(assert (=> b!2233122 (= lt!830716 call!134200)))

(assert (=> b!2233122 (= lt!830714 call!134204)))

(assert (=> b!2233122 (= e!1427136 (tuple2!25603 ((_ map or) (_1!15241 lt!830714) (_1!15241 lt!830716)) (_2!15241 lt!830716)))))

(declare-fun b!2233123 () Bool)

(assert (=> b!2233123 (= c!356092 ((_ is Concat!10771) (ite c!356049 (regOne!13379 expr!64) (ite c!356048 (regTwo!13378 expr!64) (ite c!356050 (regOne!13378 expr!64) (reg!6762 expr!64))))))))

(assert (=> b!2233123 (= e!1427136 e!1427138)))

(declare-fun bm!134200 () Bool)

(assert (=> bm!134200 (= call!134203 call!134200)))

(declare-fun b!2233124 () Bool)

(assert (=> b!2233124 (= e!1427135 (tuple2!25603 ((as const (Array Context!3962 Bool)) false) (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))))))

(declare-fun b!2233125 () Bool)

(assert (=> b!2233125 (= e!1427137 (tuple2!25603 (store ((as const (Array Context!3962 Bool)) false) (ite (or c!356049 c!356048) context!86 (Context!3963 call!134161)) true) (ite c!356049 cacheDown!839 (ite c!356048 (_2!15241 lt!830679) cacheDown!839))))))

(assert (= (and d!665238 c!356088) b!2233113))

(assert (= (and d!665238 (not c!356088)) b!2233116))

(assert (= (and b!2233116 c!356091) b!2233125))

(assert (= (and b!2233116 (not c!356091)) b!2233119))

(assert (= (and b!2233119 c!356089) b!2233115))

(assert (= (and b!2233119 (not c!356089)) b!2233120))

(assert (= (and b!2233120 res!956022) b!2233121))

(assert (= (and b!2233120 c!356087) b!2233122))

(assert (= (and b!2233120 (not c!356087)) b!2233123))

(assert (= (and b!2233123 c!356092) b!2233118))

(assert (= (and b!2233123 (not c!356092)) b!2233117))

(assert (= (and b!2233117 c!356090) b!2233114))

(assert (= (and b!2233117 (not c!356090)) b!2233124))

(assert (= (or b!2233118 b!2233114) bm!134199))

(assert (= (or b!2233118 b!2233114) bm!134200))

(assert (= (or b!2233122 bm!134199) bm!134196))

(assert (= (or b!2233122 bm!134200) bm!134197))

(assert (= (or b!2233115 b!2233122) bm!134195))

(assert (= (or b!2233115 bm!134197) bm!134198))

(declare-fun m!2668506 () Bool)

(assert (=> bm!134198 m!2668506))

(declare-fun m!2668508 () Bool)

(assert (=> bm!134195 m!2668508))

(declare-fun m!2668510 () Bool)

(assert (=> b!2233121 m!2668510))

(declare-fun m!2668512 () Bool)

(assert (=> d!665238 m!2668512))

(declare-fun m!2668514 () Bool)

(assert (=> d!665238 m!2668514))

(declare-fun m!2668516 () Bool)

(assert (=> d!665238 m!2668516))

(declare-fun m!2668518 () Bool)

(assert (=> b!2233116 m!2668518))

(declare-fun m!2668520 () Bool)

(assert (=> bm!134196 m!2668520))

(declare-fun m!2668522 () Bool)

(assert (=> b!2233125 m!2668522))

(assert (=> bm!134158 d!665238))

(declare-fun d!665240 () Bool)

(declare-fun e!1427141 () Bool)

(assert (=> d!665240 e!1427141))

(declare-fun res!956025 () Bool)

(assert (=> d!665240 (=> res!956025 e!1427141)))

(declare-fun lt!830721 () Option!5113)

(declare-fun isEmpty!14901 (Option!5113) Bool)

(assert (=> d!665240 (= res!956025 (isEmpty!14901 lt!830721))))

(declare-fun choose!13133 (CacheDown!2008 Regex!6433 Context!3962 C!13012) Option!5113)

(assert (=> d!665240 (= lt!830721 (choose!13133 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!665240 (validCacheMapDown!288 (cache!3362 cacheDown!839))))

(assert (=> d!665240 (= (get!7936 cacheDown!839 expr!64 context!86 a!1167) lt!830721)))

(declare-fun b!2233128 () Bool)

(declare-fun get!7937 (Option!5113) (InoxSet Context!3962))

(assert (=> b!2233128 (= e!1427141 (= (get!7937 lt!830721) (derivationStepZipperDown!51 expr!64 context!86 a!1167)))))

(assert (= (and d!665240 (not res!956025)) b!2233128))

(declare-fun m!2668524 () Bool)

(assert (=> d!665240 m!2668524))

(declare-fun m!2668526 () Bool)

(assert (=> d!665240 m!2668526))

(declare-fun m!2668528 () Bool)

(assert (=> d!665240 m!2668528))

(declare-fun m!2668530 () Bool)

(assert (=> b!2233128 m!2668530))

(assert (=> b!2233128 m!2668458))

(assert (=> b!2233024 d!665240))

(declare-fun d!665242 () Bool)

(assert (=> d!665242 (= (array_inv!3393 (_keys!3368 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) (bvsge (size!20510 (_keys!3368 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2233016 d!665242))

(declare-fun d!665244 () Bool)

(assert (=> d!665244 (= (array_inv!3394 (_values!3351 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) (bvsge (size!20511 (_values!3351 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2233016 d!665244))

(declare-fun bm!134207 () Bool)

(declare-fun call!134214 () Bool)

(declare-fun c!356098 () Bool)

(assert (=> bm!134207 (= call!134214 (validRegex!2403 (ite c!356098 (regOne!13379 expr!64) (regOne!13378 expr!64))))))

(declare-fun call!134213 () Bool)

(declare-fun bm!134208 () Bool)

(declare-fun c!356097 () Bool)

(assert (=> bm!134208 (= call!134213 (validRegex!2403 (ite c!356097 (reg!6762 expr!64) (ite c!356098 (regTwo!13379 expr!64) (regTwo!13378 expr!64)))))))

(declare-fun b!2233147 () Bool)

(declare-fun res!956037 () Bool)

(declare-fun e!1427162 () Bool)

(assert (=> b!2233147 (=> res!956037 e!1427162)))

(assert (=> b!2233147 (= res!956037 (not ((_ is Concat!10771) expr!64)))))

(declare-fun e!1427161 () Bool)

(assert (=> b!2233147 (= e!1427161 e!1427162)))

(declare-fun b!2233148 () Bool)

(declare-fun res!956039 () Bool)

(declare-fun e!1427158 () Bool)

(assert (=> b!2233148 (=> (not res!956039) (not e!1427158))))

(assert (=> b!2233148 (= res!956039 call!134214)))

(assert (=> b!2233148 (= e!1427161 e!1427158)))

(declare-fun b!2233149 () Bool)

(declare-fun e!1427157 () Bool)

(declare-fun e!1427156 () Bool)

(assert (=> b!2233149 (= e!1427157 e!1427156)))

(declare-fun res!956038 () Bool)

(assert (=> b!2233149 (= res!956038 (not (nullable!1774 (reg!6762 expr!64))))))

(assert (=> b!2233149 (=> (not res!956038) (not e!1427156))))

(declare-fun b!2233150 () Bool)

(assert (=> b!2233150 (= e!1427156 call!134213)))

(declare-fun b!2233151 () Bool)

(declare-fun e!1427160 () Bool)

(assert (=> b!2233151 (= e!1427162 e!1427160)))

(declare-fun res!956036 () Bool)

(assert (=> b!2233151 (=> (not res!956036) (not e!1427160))))

(assert (=> b!2233151 (= res!956036 call!134214)))

(declare-fun d!665246 () Bool)

(declare-fun res!956040 () Bool)

(declare-fun e!1427159 () Bool)

(assert (=> d!665246 (=> res!956040 e!1427159)))

(assert (=> d!665246 (= res!956040 ((_ is ElementMatch!6433) expr!64))))

(assert (=> d!665246 (= (validRegex!2403 expr!64) e!1427159)))

(declare-fun b!2233152 () Bool)

(assert (=> b!2233152 (= e!1427157 e!1427161)))

(assert (=> b!2233152 (= c!356098 ((_ is Union!6433) expr!64))))

(declare-fun b!2233153 () Bool)

(declare-fun call!134212 () Bool)

(assert (=> b!2233153 (= e!1427160 call!134212)))

(declare-fun b!2233154 () Bool)

(assert (=> b!2233154 (= e!1427158 call!134212)))

(declare-fun bm!134209 () Bool)

(assert (=> bm!134209 (= call!134212 call!134213)))

(declare-fun b!2233155 () Bool)

(assert (=> b!2233155 (= e!1427159 e!1427157)))

(assert (=> b!2233155 (= c!356097 ((_ is Star!6433) expr!64))))

(assert (= (and d!665246 (not res!956040)) b!2233155))

(assert (= (and b!2233155 c!356097) b!2233149))

(assert (= (and b!2233155 (not c!356097)) b!2233152))

(assert (= (and b!2233149 res!956038) b!2233150))

(assert (= (and b!2233152 c!356098) b!2233148))

(assert (= (and b!2233152 (not c!356098)) b!2233147))

(assert (= (and b!2233148 res!956039) b!2233154))

(assert (= (and b!2233147 (not res!956037)) b!2233151))

(assert (= (and b!2233151 res!956036) b!2233153))

(assert (= (or b!2233154 b!2233153) bm!134209))

(assert (= (or b!2233148 b!2233151) bm!134207))

(assert (= (or b!2233150 bm!134209) bm!134208))

(declare-fun m!2668532 () Bool)

(assert (=> bm!134207 m!2668532))

(declare-fun m!2668534 () Bool)

(assert (=> bm!134208 m!2668534))

(declare-fun m!2668536 () Bool)

(assert (=> b!2233149 m!2668536))

(assert (=> start!217694 d!665246))

(declare-fun d!665248 () Bool)

(declare-fun res!956043 () Bool)

(declare-fun e!1427165 () Bool)

(assert (=> d!665248 (=> (not res!956043) (not e!1427165))))

(assert (=> d!665248 (= res!956043 ((_ is HashMap!2981) (cache!3362 cacheDown!839)))))

(assert (=> d!665248 (= (inv!35645 cacheDown!839) e!1427165)))

(declare-fun b!2233158 () Bool)

(assert (=> b!2233158 (= e!1427165 (validCacheMapDown!288 (cache!3362 cacheDown!839)))))

(assert (= (and d!665248 res!956043) b!2233158))

(assert (=> b!2233158 m!2668528))

(assert (=> start!217694 d!665248))

(declare-fun d!665250 () Bool)

(declare-fun lambda!84338 () Int)

(declare-fun forall!5370 (List!26338 Int) Bool)

(assert (=> d!665250 (= (inv!35646 context!86) (forall!5370 (exprs!2481 context!86) lambda!84338))))

(declare-fun bs!454133 () Bool)

(assert (= bs!454133 d!665250))

(declare-fun m!2668538 () Bool)

(assert (=> bs!454133 m!2668538))

(assert (=> start!217694 d!665250))

(declare-fun e!1427168 () Bool)

(assert (=> b!2233023 (= tp!700683 e!1427168)))

(declare-fun b!2233170 () Bool)

(declare-fun tp!700699 () Bool)

(declare-fun tp!700697 () Bool)

(assert (=> b!2233170 (= e!1427168 (and tp!700699 tp!700697))))

(declare-fun b!2233171 () Bool)

(declare-fun tp!700695 () Bool)

(assert (=> b!2233171 (= e!1427168 tp!700695)))

(declare-fun b!2233172 () Bool)

(declare-fun tp!700698 () Bool)

(declare-fun tp!700696 () Bool)

(assert (=> b!2233172 (= e!1427168 (and tp!700698 tp!700696))))

(declare-fun b!2233169 () Bool)

(assert (=> b!2233169 (= e!1427168 tp_is_empty!10091)))

(assert (= (and b!2233023 ((_ is ElementMatch!6433) (regOne!13379 expr!64))) b!2233169))

(assert (= (and b!2233023 ((_ is Concat!10771) (regOne!13379 expr!64))) b!2233170))

(assert (= (and b!2233023 ((_ is Star!6433) (regOne!13379 expr!64))) b!2233171))

(assert (= (and b!2233023 ((_ is Union!6433) (regOne!13379 expr!64))) b!2233172))

(declare-fun e!1427169 () Bool)

(assert (=> b!2233023 (= tp!700677 e!1427169)))

(declare-fun b!2233174 () Bool)

(declare-fun tp!700704 () Bool)

(declare-fun tp!700702 () Bool)

(assert (=> b!2233174 (= e!1427169 (and tp!700704 tp!700702))))

(declare-fun b!2233175 () Bool)

(declare-fun tp!700700 () Bool)

(assert (=> b!2233175 (= e!1427169 tp!700700)))

(declare-fun b!2233176 () Bool)

(declare-fun tp!700703 () Bool)

(declare-fun tp!700701 () Bool)

(assert (=> b!2233176 (= e!1427169 (and tp!700703 tp!700701))))

(declare-fun b!2233173 () Bool)

(assert (=> b!2233173 (= e!1427169 tp_is_empty!10091)))

(assert (= (and b!2233023 ((_ is ElementMatch!6433) (regTwo!13379 expr!64))) b!2233173))

(assert (= (and b!2233023 ((_ is Concat!10771) (regTwo!13379 expr!64))) b!2233174))

(assert (= (and b!2233023 ((_ is Star!6433) (regTwo!13379 expr!64))) b!2233175))

(assert (= (and b!2233023 ((_ is Union!6433) (regTwo!13379 expr!64))) b!2233176))

(declare-fun e!1427185 () Bool)

(declare-fun tp!700729 () Bool)

(declare-fun setNonEmpty!20187 () Bool)

(declare-fun setRes!20188 () Bool)

(declare-fun setElem!20187 () Context!3962)

(assert (=> setNonEmpty!20187 (= setRes!20188 (and tp!700729 (inv!35646 setElem!20187) e!1427185))))

(declare-fun mapDefault!14456 () List!26339)

(declare-fun setRest!20187 () (InoxSet Context!3962))

(assert (=> setNonEmpty!20187 (= (_2!15240 (h!31646 mapDefault!14456)) ((_ map or) (store ((as const (Array Context!3962 Bool)) false) setElem!20187 true) setRest!20187))))

(declare-fun setIsEmpty!20187 () Bool)

(assert (=> setIsEmpty!20187 setRes!20188))

(declare-fun b!2233191 () Bool)

(declare-fun e!1427184 () Bool)

(declare-fun tp!700728 () Bool)

(assert (=> b!2233191 (= e!1427184 tp!700728)))

(declare-fun condMapEmpty!14456 () Bool)

(assert (=> mapNonEmpty!14453 (= condMapEmpty!14456 (= mapRest!14453 ((as const (Array (_ BitVec 32) List!26339)) mapDefault!14456)))))

(declare-fun e!1427183 () Bool)

(declare-fun mapRes!14456 () Bool)

(assert (=> mapNonEmpty!14453 (= tp!700681 (and e!1427183 mapRes!14456))))

(declare-fun mapNonEmpty!14456 () Bool)

(declare-fun tp!700732 () Bool)

(declare-fun e!1427186 () Bool)

(assert (=> mapNonEmpty!14456 (= mapRes!14456 (and tp!700732 e!1427186))))

(declare-fun mapKey!14456 () (_ BitVec 32))

(declare-fun mapValue!14456 () List!26339)

(declare-fun mapRest!14456 () (Array (_ BitVec 32) List!26339))

(assert (=> mapNonEmpty!14456 (= mapRest!14453 (store mapRest!14456 mapKey!14456 mapValue!14456))))

(declare-fun mapIsEmpty!14456 () Bool)

(assert (=> mapIsEmpty!14456 mapRes!14456))

(declare-fun b!2233192 () Bool)

(declare-fun e!1427187 () Bool)

(declare-fun tp!700734 () Bool)

(assert (=> b!2233192 (= e!1427187 tp!700734)))

(declare-fun tp!700733 () Bool)

(declare-fun tp!700731 () Bool)

(declare-fun b!2233193 () Bool)

(assert (=> b!2233193 (= e!1427183 (and tp!700733 (inv!35646 (_2!15239 (_1!15240 (h!31646 mapDefault!14456)))) e!1427187 tp_is_empty!10091 setRes!20188 tp!700731))))

(declare-fun condSetEmpty!20187 () Bool)

(assert (=> b!2233193 (= condSetEmpty!20187 (= (_2!15240 (h!31646 mapDefault!14456)) ((as const (Array Context!3962 Bool)) false)))))

(declare-fun b!2233194 () Bool)

(declare-fun e!1427182 () Bool)

(declare-fun tp!700735 () Bool)

(assert (=> b!2233194 (= e!1427182 tp!700735)))

(declare-fun setIsEmpty!20188 () Bool)

(declare-fun setRes!20187 () Bool)

(assert (=> setIsEmpty!20188 setRes!20187))

(declare-fun setElem!20188 () Context!3962)

(declare-fun setNonEmpty!20188 () Bool)

(declare-fun tp!700736 () Bool)

(assert (=> setNonEmpty!20188 (= setRes!20187 (and tp!700736 (inv!35646 setElem!20188) e!1427182))))

(declare-fun setRest!20188 () (InoxSet Context!3962))

(assert (=> setNonEmpty!20188 (= (_2!15240 (h!31646 mapValue!14456)) ((_ map or) (store ((as const (Array Context!3962 Bool)) false) setElem!20188 true) setRest!20188))))

(declare-fun tp!700737 () Bool)

(declare-fun tp!700730 () Bool)

(declare-fun b!2233195 () Bool)

(assert (=> b!2233195 (= e!1427186 (and tp!700730 (inv!35646 (_2!15239 (_1!15240 (h!31646 mapValue!14456)))) e!1427184 tp_is_empty!10091 setRes!20187 tp!700737))))

(declare-fun condSetEmpty!20188 () Bool)

(assert (=> b!2233195 (= condSetEmpty!20188 (= (_2!15240 (h!31646 mapValue!14456)) ((as const (Array Context!3962 Bool)) false)))))

(declare-fun b!2233196 () Bool)

(declare-fun tp!700727 () Bool)

(assert (=> b!2233196 (= e!1427185 tp!700727)))

(assert (= (and mapNonEmpty!14453 condMapEmpty!14456) mapIsEmpty!14456))

(assert (= (and mapNonEmpty!14453 (not condMapEmpty!14456)) mapNonEmpty!14456))

(assert (= b!2233195 b!2233191))

(assert (= (and b!2233195 condSetEmpty!20188) setIsEmpty!20188))

(assert (= (and b!2233195 (not condSetEmpty!20188)) setNonEmpty!20188))

(assert (= setNonEmpty!20188 b!2233194))

(assert (= (and mapNonEmpty!14456 ((_ is Cons!26245) mapValue!14456)) b!2233195))

(assert (= b!2233193 b!2233192))

(assert (= (and b!2233193 condSetEmpty!20187) setIsEmpty!20187))

(assert (= (and b!2233193 (not condSetEmpty!20187)) setNonEmpty!20187))

(assert (= setNonEmpty!20187 b!2233196))

(assert (= (and mapNonEmpty!14453 ((_ is Cons!26245) mapDefault!14456)) b!2233193))

(declare-fun m!2668540 () Bool)

(assert (=> mapNonEmpty!14456 m!2668540))

(declare-fun m!2668542 () Bool)

(assert (=> setNonEmpty!20188 m!2668542))

(declare-fun m!2668544 () Bool)

(assert (=> b!2233193 m!2668544))

(declare-fun m!2668546 () Bool)

(assert (=> setNonEmpty!20187 m!2668546))

(declare-fun m!2668548 () Bool)

(assert (=> b!2233195 m!2668548))

(declare-fun b!2233205 () Bool)

(declare-fun e!1427196 () Bool)

(declare-fun tp!700748 () Bool)

(assert (=> b!2233205 (= e!1427196 tp!700748)))

(declare-fun e!1427194 () Bool)

(assert (=> mapNonEmpty!14453 (= tp!700678 e!1427194)))

(declare-fun b!2233206 () Bool)

(declare-fun e!1427195 () Bool)

(declare-fun tp!700752 () Bool)

(assert (=> b!2233206 (= e!1427195 tp!700752)))

(declare-fun setIsEmpty!20191 () Bool)

(declare-fun setRes!20191 () Bool)

(assert (=> setIsEmpty!20191 setRes!20191))

(declare-fun tp!700750 () Bool)

(declare-fun tp!700751 () Bool)

(declare-fun b!2233207 () Bool)

(assert (=> b!2233207 (= e!1427194 (and tp!700751 (inv!35646 (_2!15239 (_1!15240 (h!31646 mapValue!14453)))) e!1427196 tp_is_empty!10091 setRes!20191 tp!700750))))

(declare-fun condSetEmpty!20191 () Bool)

(assert (=> b!2233207 (= condSetEmpty!20191 (= (_2!15240 (h!31646 mapValue!14453)) ((as const (Array Context!3962 Bool)) false)))))

(declare-fun setNonEmpty!20191 () Bool)

(declare-fun tp!700749 () Bool)

(declare-fun setElem!20191 () Context!3962)

(assert (=> setNonEmpty!20191 (= setRes!20191 (and tp!700749 (inv!35646 setElem!20191) e!1427195))))

(declare-fun setRest!20191 () (InoxSet Context!3962))

(assert (=> setNonEmpty!20191 (= (_2!15240 (h!31646 mapValue!14453)) ((_ map or) (store ((as const (Array Context!3962 Bool)) false) setElem!20191 true) setRest!20191))))

(assert (= b!2233207 b!2233205))

(assert (= (and b!2233207 condSetEmpty!20191) setIsEmpty!20191))

(assert (= (and b!2233207 (not condSetEmpty!20191)) setNonEmpty!20191))

(assert (= setNonEmpty!20191 b!2233206))

(assert (= (and mapNonEmpty!14453 ((_ is Cons!26245) mapValue!14453)) b!2233207))

(declare-fun m!2668550 () Bool)

(assert (=> b!2233207 m!2668550))

(declare-fun m!2668552 () Bool)

(assert (=> setNonEmpty!20191 m!2668552))

(declare-fun e!1427197 () Bool)

(assert (=> b!2233032 (= tp!700673 e!1427197)))

(declare-fun b!2233209 () Bool)

(declare-fun tp!700757 () Bool)

(declare-fun tp!700755 () Bool)

(assert (=> b!2233209 (= e!1427197 (and tp!700757 tp!700755))))

(declare-fun b!2233210 () Bool)

(declare-fun tp!700753 () Bool)

(assert (=> b!2233210 (= e!1427197 tp!700753)))

(declare-fun b!2233211 () Bool)

(declare-fun tp!700756 () Bool)

(declare-fun tp!700754 () Bool)

(assert (=> b!2233211 (= e!1427197 (and tp!700756 tp!700754))))

(declare-fun b!2233208 () Bool)

(assert (=> b!2233208 (= e!1427197 tp_is_empty!10091)))

(assert (= (and b!2233032 ((_ is ElementMatch!6433) (regOne!13378 expr!64))) b!2233208))

(assert (= (and b!2233032 ((_ is Concat!10771) (regOne!13378 expr!64))) b!2233209))

(assert (= (and b!2233032 ((_ is Star!6433) (regOne!13378 expr!64))) b!2233210))

(assert (= (and b!2233032 ((_ is Union!6433) (regOne!13378 expr!64))) b!2233211))

(declare-fun e!1427198 () Bool)

(assert (=> b!2233032 (= tp!700679 e!1427198)))

(declare-fun b!2233213 () Bool)

(declare-fun tp!700762 () Bool)

(declare-fun tp!700760 () Bool)

(assert (=> b!2233213 (= e!1427198 (and tp!700762 tp!700760))))

(declare-fun b!2233214 () Bool)

(declare-fun tp!700758 () Bool)

(assert (=> b!2233214 (= e!1427198 tp!700758)))

(declare-fun b!2233215 () Bool)

(declare-fun tp!700761 () Bool)

(declare-fun tp!700759 () Bool)

(assert (=> b!2233215 (= e!1427198 (and tp!700761 tp!700759))))

(declare-fun b!2233212 () Bool)

(assert (=> b!2233212 (= e!1427198 tp_is_empty!10091)))

(assert (= (and b!2233032 ((_ is ElementMatch!6433) (regTwo!13378 expr!64))) b!2233212))

(assert (= (and b!2233032 ((_ is Concat!10771) (regTwo!13378 expr!64))) b!2233213))

(assert (= (and b!2233032 ((_ is Star!6433) (regTwo!13378 expr!64))) b!2233214))

(assert (= (and b!2233032 ((_ is Union!6433) (regTwo!13378 expr!64))) b!2233215))

(declare-fun b!2233220 () Bool)

(declare-fun e!1427201 () Bool)

(declare-fun tp!700767 () Bool)

(declare-fun tp!700768 () Bool)

(assert (=> b!2233220 (= e!1427201 (and tp!700767 tp!700768))))

(assert (=> b!2233039 (= tp!700674 e!1427201)))

(assert (= (and b!2233039 ((_ is Cons!26244) (exprs!2481 context!86))) b!2233220))

(declare-fun b!2233221 () Bool)

(declare-fun e!1427204 () Bool)

(declare-fun tp!700769 () Bool)

(assert (=> b!2233221 (= e!1427204 tp!700769)))

(declare-fun e!1427202 () Bool)

(assert (=> b!2233016 (= tp!700682 e!1427202)))

(declare-fun b!2233222 () Bool)

(declare-fun e!1427203 () Bool)

(declare-fun tp!700773 () Bool)

(assert (=> b!2233222 (= e!1427203 tp!700773)))

(declare-fun setIsEmpty!20192 () Bool)

(declare-fun setRes!20192 () Bool)

(assert (=> setIsEmpty!20192 setRes!20192))

(declare-fun tp!700771 () Bool)

(declare-fun tp!700772 () Bool)

(declare-fun b!2233223 () Bool)

(assert (=> b!2233223 (= e!1427202 (and tp!700772 (inv!35646 (_2!15239 (_1!15240 (h!31646 (zeroValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))))) e!1427204 tp_is_empty!10091 setRes!20192 tp!700771))))

(declare-fun condSetEmpty!20192 () Bool)

(assert (=> b!2233223 (= condSetEmpty!20192 (= (_2!15240 (h!31646 (zeroValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))) ((as const (Array Context!3962 Bool)) false)))))

(declare-fun setElem!20192 () Context!3962)

(declare-fun setNonEmpty!20192 () Bool)

(declare-fun tp!700770 () Bool)

(assert (=> setNonEmpty!20192 (= setRes!20192 (and tp!700770 (inv!35646 setElem!20192) e!1427203))))

(declare-fun setRest!20192 () (InoxSet Context!3962))

(assert (=> setNonEmpty!20192 (= (_2!15240 (h!31646 (zeroValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3962 Bool)) false) setElem!20192 true) setRest!20192))))

(assert (= b!2233223 b!2233221))

(assert (= (and b!2233223 condSetEmpty!20192) setIsEmpty!20192))

(assert (= (and b!2233223 (not condSetEmpty!20192)) setNonEmpty!20192))

(assert (= setNonEmpty!20192 b!2233222))

(assert (= (and b!2233016 ((_ is Cons!26245) (zeroValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))) b!2233223))

(declare-fun m!2668554 () Bool)

(assert (=> b!2233223 m!2668554))

(declare-fun m!2668556 () Bool)

(assert (=> setNonEmpty!20192 m!2668556))

(declare-fun b!2233224 () Bool)

(declare-fun e!1427207 () Bool)

(declare-fun tp!700774 () Bool)

(assert (=> b!2233224 (= e!1427207 tp!700774)))

(declare-fun e!1427205 () Bool)

(assert (=> b!2233016 (= tp!700676 e!1427205)))

(declare-fun b!2233225 () Bool)

(declare-fun e!1427206 () Bool)

(declare-fun tp!700778 () Bool)

(assert (=> b!2233225 (= e!1427206 tp!700778)))

(declare-fun setIsEmpty!20193 () Bool)

(declare-fun setRes!20193 () Bool)

(assert (=> setIsEmpty!20193 setRes!20193))

(declare-fun tp!700777 () Bool)

(declare-fun b!2233226 () Bool)

(declare-fun tp!700776 () Bool)

(assert (=> b!2233226 (= e!1427205 (and tp!700777 (inv!35646 (_2!15239 (_1!15240 (h!31646 (minValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))))) e!1427207 tp_is_empty!10091 setRes!20193 tp!700776))))

(declare-fun condSetEmpty!20193 () Bool)

(assert (=> b!2233226 (= condSetEmpty!20193 (= (_2!15240 (h!31646 (minValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))) ((as const (Array Context!3962 Bool)) false)))))

(declare-fun setElem!20193 () Context!3962)

(declare-fun setNonEmpty!20193 () Bool)

(declare-fun tp!700775 () Bool)

(assert (=> setNonEmpty!20193 (= setRes!20193 (and tp!700775 (inv!35646 setElem!20193) e!1427206))))

(declare-fun setRest!20193 () (InoxSet Context!3962))

(assert (=> setNonEmpty!20193 (= (_2!15240 (h!31646 (minValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3962 Bool)) false) setElem!20193 true) setRest!20193))))

(assert (= b!2233226 b!2233224))

(assert (= (and b!2233226 condSetEmpty!20193) setIsEmpty!20193))

(assert (= (and b!2233226 (not condSetEmpty!20193)) setNonEmpty!20193))

(assert (= setNonEmpty!20193 b!2233225))

(assert (= (and b!2233016 ((_ is Cons!26245) (minValue!3329 (v!29844 (underlying!6343 (v!29845 (underlying!6344 (cache!3362 cacheDown!839)))))))) b!2233226))

(declare-fun m!2668558 () Bool)

(assert (=> b!2233226 m!2668558))

(declare-fun m!2668560 () Bool)

(assert (=> setNonEmpty!20193 m!2668560))

(declare-fun b!2233227 () Bool)

(declare-fun e!1427210 () Bool)

(declare-fun tp!700779 () Bool)

(assert (=> b!2233227 (= e!1427210 tp!700779)))

(declare-fun e!1427208 () Bool)

(assert (=> b!2233020 (= tp!700680 e!1427208)))

(declare-fun b!2233228 () Bool)

(declare-fun e!1427209 () Bool)

(declare-fun tp!700783 () Bool)

(assert (=> b!2233228 (= e!1427209 tp!700783)))

(declare-fun setIsEmpty!20194 () Bool)

(declare-fun setRes!20194 () Bool)

(assert (=> setIsEmpty!20194 setRes!20194))

(declare-fun tp!700781 () Bool)

(declare-fun b!2233229 () Bool)

(declare-fun tp!700782 () Bool)

(assert (=> b!2233229 (= e!1427208 (and tp!700782 (inv!35646 (_2!15239 (_1!15240 (h!31646 mapDefault!14453)))) e!1427210 tp_is_empty!10091 setRes!20194 tp!700781))))

(declare-fun condSetEmpty!20194 () Bool)

(assert (=> b!2233229 (= condSetEmpty!20194 (= (_2!15240 (h!31646 mapDefault!14453)) ((as const (Array Context!3962 Bool)) false)))))

(declare-fun tp!700780 () Bool)

(declare-fun setElem!20194 () Context!3962)

(declare-fun setNonEmpty!20194 () Bool)

(assert (=> setNonEmpty!20194 (= setRes!20194 (and tp!700780 (inv!35646 setElem!20194) e!1427209))))

(declare-fun setRest!20194 () (InoxSet Context!3962))

(assert (=> setNonEmpty!20194 (= (_2!15240 (h!31646 mapDefault!14453)) ((_ map or) (store ((as const (Array Context!3962 Bool)) false) setElem!20194 true) setRest!20194))))

(assert (= b!2233229 b!2233227))

(assert (= (and b!2233229 condSetEmpty!20194) setIsEmpty!20194))

(assert (= (and b!2233229 (not condSetEmpty!20194)) setNonEmpty!20194))

(assert (= setNonEmpty!20194 b!2233228))

(assert (= (and b!2233020 ((_ is Cons!26245) mapDefault!14453)) b!2233229))

(declare-fun m!2668562 () Bool)

(assert (=> b!2233229 m!2668562))

(declare-fun m!2668564 () Bool)

(assert (=> setNonEmpty!20194 m!2668564))

(declare-fun e!1427211 () Bool)

(assert (=> b!2233038 (= tp!700675 e!1427211)))

(declare-fun b!2233231 () Bool)

(declare-fun tp!700788 () Bool)

(declare-fun tp!700786 () Bool)

(assert (=> b!2233231 (= e!1427211 (and tp!700788 tp!700786))))

(declare-fun b!2233232 () Bool)

(declare-fun tp!700784 () Bool)

(assert (=> b!2233232 (= e!1427211 tp!700784)))

(declare-fun b!2233233 () Bool)

(declare-fun tp!700787 () Bool)

(declare-fun tp!700785 () Bool)

(assert (=> b!2233233 (= e!1427211 (and tp!700787 tp!700785))))

(declare-fun b!2233230 () Bool)

(assert (=> b!2233230 (= e!1427211 tp_is_empty!10091)))

(assert (= (and b!2233038 ((_ is ElementMatch!6433) (reg!6762 expr!64))) b!2233230))

(assert (= (and b!2233038 ((_ is Concat!10771) (reg!6762 expr!64))) b!2233231))

(assert (= (and b!2233038 ((_ is Star!6433) (reg!6762 expr!64))) b!2233232))

(assert (= (and b!2233038 ((_ is Union!6433) (reg!6762 expr!64))) b!2233233))

(check-sat (not b!2233075) (not b!2233174) b_and!174733 (not bm!134196) (not b!2233149) (not d!665234) (not b!2233192) (not bm!134193) (not b_next!65451) (not bm!134207) (not b!2233121) (not b!2233227) (not d!665250) (not b!2233196) (not b!2233226) (not b!2233225) (not bm!134171) (not setNonEmpty!20192) (not b!2233232) (not b!2233070) (not b!2233221) (not b!2233116) (not b!2233220) (not setNonEmpty!20194) (not b!2233172) (not b!2233223) (not d!665228) (not b!2233205) (not d!665230) (not d!665240) (not b!2233209) (not bm!134198) (not d!665238) (not b!2233215) (not b!2233213) (not b!2233222) (not b!2233195) (not b!2233207) (not b!2233128) b_and!174735 (not b!2233210) (not b!2233206) (not b!2233233) (not bm!134172) (not setNonEmpty!20188) (not b!2233170) (not setNonEmpty!20187) (not b!2233211) (not b!2233176) (not b!2233214) (not b!2233229) (not b!2233171) (not b!2233191) (not b_next!65449) (not b!2233231) (not b!2233175) (not b!2233228) (not b!2233109) (not mapNonEmpty!14456) (not bm!134208) (not setNonEmpty!20193) (not bm!134194) (not b!2233224) (not bm!134195) (not setNonEmpty!20191) (not b!2233193) tp_is_empty!10091 (not bm!134174) (not b!2233158) (not b!2233194) (not bm!134190))
(check-sat b_and!174735 b_and!174733 (not b_next!65449) (not b_next!65451))
