; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217482 () Bool)

(assert start!217482)

(declare-fun b!2229859 () Bool)

(declare-fun b_free!64665 () Bool)

(declare-fun b_next!65369 () Bool)

(assert (=> b!2229859 (= b_free!64665 (not b_next!65369))))

(declare-fun tp!698318 () Bool)

(declare-fun b_and!174653 () Bool)

(assert (=> b!2229859 (= tp!698318 b_and!174653)))

(declare-fun b!2229847 () Bool)

(declare-fun b_free!64667 () Bool)

(declare-fun b_next!65371 () Bool)

(assert (=> b!2229847 (= b_free!64667 (not b_next!65371))))

(declare-fun tp!698315 () Bool)

(declare-fun b_and!174655 () Bool)

(assert (=> b!2229847 (= tp!698315 b_and!174655)))

(declare-fun mapIsEmpty!14366 () Bool)

(declare-fun mapRes!14366 () Bool)

(assert (=> mapIsEmpty!14366 mapRes!14366))

(declare-fun b!2229845 () Bool)

(declare-fun e!1425069 () Bool)

(declare-fun tp!698325 () Bool)

(assert (=> b!2229845 (= e!1425069 (and tp!698325 mapRes!14366))))

(declare-fun condMapEmpty!14366 () Bool)

(declare-datatypes ((C!12972 0))(
  ( (C!12973 (val!7534 Int)) )
))
(declare-datatypes ((Regex!6413 0))(
  ( (ElementMatch!6413 (c!355739 C!12972)) (Concat!10751 (regOne!13338 Regex!6413) (regTwo!13338 Regex!6413)) (EmptyExpr!6413) (Star!6413 (reg!6742 Regex!6413)) (EmptyLang!6413) (Union!6413 (regOne!13339 Regex!6413) (regTwo!13339 Regex!6413)) )
))
(declare-datatypes ((List!26298 0))(
  ( (Nil!26204) (Cons!26204 (h!31605 Regex!6413) (t!199713 List!26298)) )
))
(declare-datatypes ((Context!3922 0))(
  ( (Context!3923 (exprs!2461 List!26298)) )
))
(declare-datatypes ((array!10548 0))(
  ( (array!10549 (arr!4689 (Array (_ BitVec 32) (_ BitVec 64))) (size!20470 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3898 0))(
  ( (tuple3!3899 (_1!15195 Regex!6413) (_2!15195 Context!3922) (_3!2419 C!12972)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25552 0))(
  ( (tuple2!25553 (_1!15196 tuple3!3898) (_2!15196 (InoxSet Context!3922))) )
))
(declare-datatypes ((List!26299 0))(
  ( (Nil!26205) (Cons!26205 (h!31606 tuple2!25552) (t!199714 List!26299)) )
))
(declare-datatypes ((array!10550 0))(
  ( (array!10551 (arr!4690 (Array (_ BitVec 32) List!26299)) (size!20471 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6102 0))(
  ( (LongMapFixedSize!6103 (defaultEntry!3416 Int) (mask!7611 (_ BitVec 32)) (extraKeys!3299 (_ BitVec 32)) (zeroValue!3309 List!26299) (minValue!3309 List!26299) (_size!6149 (_ BitVec 32)) (_keys!3348 array!10548) (_values!3331 array!10550) (_vacant!3112 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12021 0))(
  ( (Cell!12022 (v!29791 LongMapFixedSize!6102)) )
))
(declare-datatypes ((MutLongMap!3051 0))(
  ( (LongMap!3051 (underlying!6303 Cell!12021)) (MutLongMapExt!3050 (__x!17379 Int)) )
))
(declare-datatypes ((Cell!12023 0))(
  ( (Cell!12024 (v!29792 MutLongMap!3051)) )
))
(declare-datatypes ((Hashable!2961 0))(
  ( (HashableExt!2960 (__x!17380 Int)) )
))
(declare-datatypes ((MutableMap!2961 0))(
  ( (MutableMapExt!2960 (__x!17381 Int)) (HashMap!2961 (underlying!6304 Cell!12023) (hashF!4884 Hashable!2961) (_size!6150 (_ BitVec 32)) (defaultValue!3123 Int)) )
))
(declare-datatypes ((CacheDown!1968 0))(
  ( (CacheDown!1969 (cache!3342 MutableMap!2961)) )
))
(declare-fun cacheDown!839 () CacheDown!1968)

(declare-fun mapDefault!14366 () List!26299)

(assert (=> b!2229845 (= condMapEmpty!14366 (= (arr!4690 (_values!3331 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26299)) mapDefault!14366)))))

(declare-fun b!2229846 () Bool)

(declare-fun res!955274 () Bool)

(declare-fun e!1425077 () Bool)

(assert (=> b!2229846 (=> (not res!955274) (not e!1425077))))

(declare-fun expr!64 () Regex!6413)

(declare-fun a!1167 () C!12972)

(get-info :version)

(assert (=> b!2229846 (= res!955274 (and (or (not ((_ is ElementMatch!6413) expr!64)) (not (= (c!355739 expr!64) a!1167))) (not ((_ is Union!6413) expr!64)) ((_ is Concat!10751) expr!64)))))

(declare-fun tp!698323 () Bool)

(declare-fun e!1425078 () Bool)

(declare-fun tp!698319 () Bool)

(declare-fun array_inv!3367 (array!10548) Bool)

(declare-fun array_inv!3368 (array!10550) Bool)

(assert (=> b!2229847 (= e!1425078 (and tp!698315 tp!698323 tp!698319 (array_inv!3367 (_keys!3348 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) (array_inv!3368 (_values!3331 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) e!1425069))))

(declare-fun b!2229848 () Bool)

(declare-fun res!955273 () Bool)

(assert (=> b!2229848 (=> (not res!955273) (not e!1425077))))

(declare-fun context!86 () Context!3922)

(declare-datatypes ((Option!5100 0))(
  ( (None!5099) (Some!5099 (v!29793 (InoxSet Context!3922))) )
))
(declare-fun get!7905 (CacheDown!1968 Regex!6413 Context!3922 C!12972) Option!5100)

(assert (=> b!2229848 (= res!955273 (not ((_ is Some!5099) (get!7905 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2229849 () Bool)

(declare-fun e!1425068 () Bool)

(declare-fun tp_is_empty!10051 () Bool)

(assert (=> b!2229849 (= e!1425068 tp_is_empty!10051)))

(declare-fun mapNonEmpty!14366 () Bool)

(declare-fun tp!698314 () Bool)

(declare-fun tp!698316 () Bool)

(assert (=> mapNonEmpty!14366 (= mapRes!14366 (and tp!698314 tp!698316))))

(declare-fun mapKey!14366 () (_ BitVec 32))

(declare-fun mapValue!14366 () List!26299)

(declare-fun mapRest!14366 () (Array (_ BitVec 32) List!26299))

(assert (=> mapNonEmpty!14366 (= (arr!4690 (_values!3331 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) (store mapRest!14366 mapKey!14366 mapValue!14366))))

(declare-fun b!2229850 () Bool)

(declare-fun e!1425071 () Bool)

(declare-fun e!1425076 () Bool)

(declare-fun lt!830510 () MutLongMap!3051)

(assert (=> b!2229850 (= e!1425071 (and e!1425076 ((_ is LongMap!3051) lt!830510)))))

(assert (=> b!2229850 (= lt!830510 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))

(declare-fun b!2229851 () Bool)

(declare-fun inv!35584 (Context!3922) Bool)

(declare-fun $colon$colon!516 (List!26298 Regex!6413) List!26298)

(assert (=> b!2229851 (= e!1425077 (not (inv!35584 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64))))))))

(declare-fun b!2229852 () Bool)

(declare-fun e!1425073 () Bool)

(declare-fun tp!698321 () Bool)

(assert (=> b!2229852 (= e!1425073 tp!698321)))

(declare-fun b!2229853 () Bool)

(declare-fun e!1425074 () Bool)

(assert (=> b!2229853 (= e!1425076 e!1425074)))

(declare-fun b!2229854 () Bool)

(declare-fun tp!698317 () Bool)

(declare-fun tp!698320 () Bool)

(assert (=> b!2229854 (= e!1425068 (and tp!698317 tp!698320))))

(declare-fun b!2229856 () Bool)

(declare-fun e!1425072 () Bool)

(declare-fun e!1425075 () Bool)

(assert (=> b!2229856 (= e!1425072 e!1425075)))

(declare-fun b!2229857 () Bool)

(declare-fun tp!698313 () Bool)

(assert (=> b!2229857 (= e!1425068 tp!698313)))

(declare-fun b!2229858 () Bool)

(assert (=> b!2229858 (= e!1425074 e!1425078)))

(assert (=> b!2229859 (= e!1425075 (and e!1425071 tp!698318))))

(declare-fun b!2229860 () Bool)

(declare-fun res!955277 () Bool)

(assert (=> b!2229860 (=> (not res!955277) (not e!1425077))))

(declare-fun nullable!1762 (Regex!6413) Bool)

(assert (=> b!2229860 (= res!955277 (nullable!1762 (regOne!13338 expr!64)))))

(declare-fun b!2229861 () Bool)

(declare-fun res!955276 () Bool)

(assert (=> b!2229861 (=> (not res!955276) (not e!1425077))))

(declare-fun validRegex!2388 (Regex!6413) Bool)

(assert (=> b!2229861 (= res!955276 (validRegex!2388 (regTwo!13338 expr!64)))))

(declare-fun b!2229855 () Bool)

(declare-fun tp!698322 () Bool)

(declare-fun tp!698324 () Bool)

(assert (=> b!2229855 (= e!1425068 (and tp!698322 tp!698324))))

(declare-fun res!955275 () Bool)

(assert (=> start!217482 (=> (not res!955275) (not e!1425077))))

(assert (=> start!217482 (= res!955275 (validRegex!2388 expr!64))))

(assert (=> start!217482 e!1425077))

(assert (=> start!217482 e!1425068))

(declare-fun inv!35585 (CacheDown!1968) Bool)

(assert (=> start!217482 (and (inv!35585 cacheDown!839) e!1425072)))

(assert (=> start!217482 (and (inv!35584 context!86) e!1425073)))

(assert (=> start!217482 tp_is_empty!10051))

(assert (= (and start!217482 res!955275) b!2229848))

(assert (= (and b!2229848 res!955273) b!2229846))

(assert (= (and b!2229846 res!955274) b!2229860))

(assert (= (and b!2229860 res!955277) b!2229861))

(assert (= (and b!2229861 res!955276) b!2229851))

(assert (= (and start!217482 ((_ is ElementMatch!6413) expr!64)) b!2229849))

(assert (= (and start!217482 ((_ is Concat!10751) expr!64)) b!2229855))

(assert (= (and start!217482 ((_ is Star!6413) expr!64)) b!2229857))

(assert (= (and start!217482 ((_ is Union!6413) expr!64)) b!2229854))

(assert (= (and b!2229845 condMapEmpty!14366) mapIsEmpty!14366))

(assert (= (and b!2229845 (not condMapEmpty!14366)) mapNonEmpty!14366))

(assert (= b!2229847 b!2229845))

(assert (= b!2229858 b!2229847))

(assert (= b!2229853 b!2229858))

(assert (= (and b!2229850 ((_ is LongMap!3051) (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))) b!2229853))

(assert (= b!2229859 b!2229850))

(assert (= (and b!2229856 ((_ is HashMap!2961) (cache!3342 cacheDown!839))) b!2229859))

(assert (= start!217482 b!2229856))

(assert (= start!217482 b!2229852))

(declare-fun m!2667131 () Bool)

(assert (=> b!2229860 m!2667131))

(declare-fun m!2667133 () Bool)

(assert (=> start!217482 m!2667133))

(declare-fun m!2667135 () Bool)

(assert (=> start!217482 m!2667135))

(declare-fun m!2667137 () Bool)

(assert (=> start!217482 m!2667137))

(declare-fun m!2667139 () Bool)

(assert (=> mapNonEmpty!14366 m!2667139))

(declare-fun m!2667141 () Bool)

(assert (=> b!2229848 m!2667141))

(declare-fun m!2667143 () Bool)

(assert (=> b!2229851 m!2667143))

(declare-fun m!2667145 () Bool)

(assert (=> b!2229851 m!2667145))

(declare-fun m!2667147 () Bool)

(assert (=> b!2229847 m!2667147))

(declare-fun m!2667149 () Bool)

(assert (=> b!2229847 m!2667149))

(declare-fun m!2667151 () Bool)

(assert (=> b!2229861 m!2667151))

(check-sat (not b_next!65371) (not b!2229845) (not b!2229847) (not b!2229860) (not b!2229857) (not b_next!65369) (not b!2229861) (not b!2229854) (not b!2229848) (not b!2229851) (not start!217482) b_and!174655 b_and!174653 tp_is_empty!10051 (not mapNonEmpty!14366) (not b!2229855) (not b!2229852))
(check-sat b_and!174653 b_and!174655 (not b_next!65371) (not b_next!65369))
(get-model)

(declare-fun b!2229880 () Bool)

(declare-fun e!1425095 () Bool)

(declare-fun e!1425098 () Bool)

(assert (=> b!2229880 (= e!1425095 e!1425098)))

(declare-fun res!955288 () Bool)

(assert (=> b!2229880 (= res!955288 (not (nullable!1762 (reg!6742 (regTwo!13338 expr!64)))))))

(assert (=> b!2229880 (=> (not res!955288) (not e!1425098))))

(declare-fun b!2229881 () Bool)

(declare-fun e!1425097 () Bool)

(declare-fun call!133812 () Bool)

(assert (=> b!2229881 (= e!1425097 call!133812)))

(declare-fun b!2229882 () Bool)

(declare-fun res!955292 () Bool)

(declare-fun e!1425099 () Bool)

(assert (=> b!2229882 (=> res!955292 e!1425099)))

(assert (=> b!2229882 (= res!955292 (not ((_ is Concat!10751) (regTwo!13338 expr!64))))))

(declare-fun e!1425096 () Bool)

(assert (=> b!2229882 (= e!1425096 e!1425099)))

(declare-fun d!664900 () Bool)

(declare-fun res!955290 () Bool)

(declare-fun e!1425093 () Bool)

(assert (=> d!664900 (=> res!955290 e!1425093)))

(assert (=> d!664900 (= res!955290 ((_ is ElementMatch!6413) (regTwo!13338 expr!64)))))

(assert (=> d!664900 (= (validRegex!2388 (regTwo!13338 expr!64)) e!1425093)))

(declare-fun bm!133807 () Bool)

(declare-fun call!133814 () Bool)

(declare-fun call!133813 () Bool)

(assert (=> bm!133807 (= call!133814 call!133813)))

(declare-fun b!2229883 () Bool)

(assert (=> b!2229883 (= e!1425098 call!133813)))

(declare-fun b!2229884 () Bool)

(declare-fun e!1425094 () Bool)

(assert (=> b!2229884 (= e!1425094 call!133812)))

(declare-fun b!2229885 () Bool)

(declare-fun res!955291 () Bool)

(assert (=> b!2229885 (=> (not res!955291) (not e!1425097))))

(assert (=> b!2229885 (= res!955291 call!133814)))

(assert (=> b!2229885 (= e!1425096 e!1425097)))

(declare-fun b!2229886 () Bool)

(assert (=> b!2229886 (= e!1425095 e!1425096)))

(declare-fun c!355744 () Bool)

(assert (=> b!2229886 (= c!355744 ((_ is Union!6413) (regTwo!13338 expr!64)))))

(declare-fun b!2229887 () Bool)

(assert (=> b!2229887 (= e!1425093 e!1425095)))

(declare-fun c!355745 () Bool)

(assert (=> b!2229887 (= c!355745 ((_ is Star!6413) (regTwo!13338 expr!64)))))

(declare-fun bm!133808 () Bool)

(assert (=> bm!133808 (= call!133813 (validRegex!2388 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))))))

(declare-fun b!2229888 () Bool)

(assert (=> b!2229888 (= e!1425099 e!1425094)))

(declare-fun res!955289 () Bool)

(assert (=> b!2229888 (=> (not res!955289) (not e!1425094))))

(assert (=> b!2229888 (= res!955289 call!133814)))

(declare-fun bm!133809 () Bool)

(assert (=> bm!133809 (= call!133812 (validRegex!2388 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))))))

(assert (= (and d!664900 (not res!955290)) b!2229887))

(assert (= (and b!2229887 c!355745) b!2229880))

(assert (= (and b!2229887 (not c!355745)) b!2229886))

(assert (= (and b!2229880 res!955288) b!2229883))

(assert (= (and b!2229886 c!355744) b!2229885))

(assert (= (and b!2229886 (not c!355744)) b!2229882))

(assert (= (and b!2229885 res!955291) b!2229881))

(assert (= (and b!2229882 (not res!955292)) b!2229888))

(assert (= (and b!2229888 res!955289) b!2229884))

(assert (= (or b!2229881 b!2229884) bm!133809))

(assert (= (or b!2229885 b!2229888) bm!133807))

(assert (= (or b!2229883 bm!133807) bm!133808))

(declare-fun m!2667153 () Bool)

(assert (=> b!2229880 m!2667153))

(declare-fun m!2667155 () Bool)

(assert (=> bm!133808 m!2667155))

(declare-fun m!2667157 () Bool)

(assert (=> bm!133809 m!2667157))

(assert (=> b!2229861 d!664900))

(declare-fun d!664902 () Bool)

(declare-fun lambda!84266 () Int)

(declare-fun forall!5359 (List!26298 Int) Bool)

(assert (=> d!664902 (= (inv!35584 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)))) (forall!5359 (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)))) lambda!84266))))

(declare-fun bs!453772 () Bool)

(assert (= bs!453772 d!664902))

(declare-fun m!2667159 () Bool)

(assert (=> bs!453772 m!2667159))

(assert (=> b!2229851 d!664902))

(declare-fun d!664904 () Bool)

(assert (=> d!664904 (= ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)) (Cons!26204 (regTwo!13338 expr!64) (exprs!2461 context!86)))))

(assert (=> b!2229851 d!664904))

(declare-fun d!664906 () Bool)

(assert (=> d!664906 (= (array_inv!3367 (_keys!3348 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) (bvsge (size!20470 (_keys!3348 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229847 d!664906))

(declare-fun d!664908 () Bool)

(assert (=> d!664908 (= (array_inv!3368 (_values!3331 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) (bvsge (size!20471 (_values!3331 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2229847 d!664908))

(declare-fun d!664910 () Bool)

(declare-fun e!1425102 () Bool)

(assert (=> d!664910 e!1425102))

(declare-fun res!955295 () Bool)

(assert (=> d!664910 (=> res!955295 e!1425102)))

(declare-fun lt!830513 () Option!5100)

(declare-fun isEmpty!14893 (Option!5100) Bool)

(assert (=> d!664910 (= res!955295 (isEmpty!14893 lt!830513))))

(declare-fun choose!13124 (CacheDown!1968 Regex!6413 Context!3922 C!12972) Option!5100)

(assert (=> d!664910 (= lt!830513 (choose!13124 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!280 (MutableMap!2961) Bool)

(assert (=> d!664910 (validCacheMapDown!280 (cache!3342 cacheDown!839))))

(assert (=> d!664910 (= (get!7905 cacheDown!839 expr!64 context!86 a!1167) lt!830513)))

(declare-fun b!2229891 () Bool)

(declare-fun get!7906 (Option!5100) (InoxSet Context!3922))

(declare-fun derivationStepZipperDown!43 (Regex!6413 Context!3922 C!12972) (InoxSet Context!3922))

(assert (=> b!2229891 (= e!1425102 (= (get!7906 lt!830513) (derivationStepZipperDown!43 expr!64 context!86 a!1167)))))

(assert (= (and d!664910 (not res!955295)) b!2229891))

(declare-fun m!2667161 () Bool)

(assert (=> d!664910 m!2667161))

(declare-fun m!2667163 () Bool)

(assert (=> d!664910 m!2667163))

(declare-fun m!2667165 () Bool)

(assert (=> d!664910 m!2667165))

(declare-fun m!2667167 () Bool)

(assert (=> b!2229891 m!2667167))

(declare-fun m!2667169 () Bool)

(assert (=> b!2229891 m!2667169))

(assert (=> b!2229848 d!664910))

(declare-fun b!2229892 () Bool)

(declare-fun e!1425105 () Bool)

(declare-fun e!1425108 () Bool)

(assert (=> b!2229892 (= e!1425105 e!1425108)))

(declare-fun res!955296 () Bool)

(assert (=> b!2229892 (= res!955296 (not (nullable!1762 (reg!6742 expr!64))))))

(assert (=> b!2229892 (=> (not res!955296) (not e!1425108))))

(declare-fun b!2229893 () Bool)

(declare-fun e!1425107 () Bool)

(declare-fun call!133815 () Bool)

(assert (=> b!2229893 (= e!1425107 call!133815)))

(declare-fun b!2229894 () Bool)

(declare-fun res!955300 () Bool)

(declare-fun e!1425109 () Bool)

(assert (=> b!2229894 (=> res!955300 e!1425109)))

(assert (=> b!2229894 (= res!955300 (not ((_ is Concat!10751) expr!64)))))

(declare-fun e!1425106 () Bool)

(assert (=> b!2229894 (= e!1425106 e!1425109)))

(declare-fun d!664912 () Bool)

(declare-fun res!955298 () Bool)

(declare-fun e!1425103 () Bool)

(assert (=> d!664912 (=> res!955298 e!1425103)))

(assert (=> d!664912 (= res!955298 ((_ is ElementMatch!6413) expr!64))))

(assert (=> d!664912 (= (validRegex!2388 expr!64) e!1425103)))

(declare-fun bm!133810 () Bool)

(declare-fun call!133817 () Bool)

(declare-fun call!133816 () Bool)

(assert (=> bm!133810 (= call!133817 call!133816)))

(declare-fun b!2229895 () Bool)

(assert (=> b!2229895 (= e!1425108 call!133816)))

(declare-fun b!2229896 () Bool)

(declare-fun e!1425104 () Bool)

(assert (=> b!2229896 (= e!1425104 call!133815)))

(declare-fun b!2229897 () Bool)

(declare-fun res!955299 () Bool)

(assert (=> b!2229897 (=> (not res!955299) (not e!1425107))))

(assert (=> b!2229897 (= res!955299 call!133817)))

(assert (=> b!2229897 (= e!1425106 e!1425107)))

(declare-fun b!2229898 () Bool)

(assert (=> b!2229898 (= e!1425105 e!1425106)))

(declare-fun c!355746 () Bool)

(assert (=> b!2229898 (= c!355746 ((_ is Union!6413) expr!64))))

(declare-fun b!2229899 () Bool)

(assert (=> b!2229899 (= e!1425103 e!1425105)))

(declare-fun c!355747 () Bool)

(assert (=> b!2229899 (= c!355747 ((_ is Star!6413) expr!64))))

(declare-fun bm!133811 () Bool)

(assert (=> bm!133811 (= call!133816 (validRegex!2388 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))))))

(declare-fun b!2229900 () Bool)

(assert (=> b!2229900 (= e!1425109 e!1425104)))

(declare-fun res!955297 () Bool)

(assert (=> b!2229900 (=> (not res!955297) (not e!1425104))))

(assert (=> b!2229900 (= res!955297 call!133817)))

(declare-fun bm!133812 () Bool)

(assert (=> bm!133812 (= call!133815 (validRegex!2388 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))))))

(assert (= (and d!664912 (not res!955298)) b!2229899))

(assert (= (and b!2229899 c!355747) b!2229892))

(assert (= (and b!2229899 (not c!355747)) b!2229898))

(assert (= (and b!2229892 res!955296) b!2229895))

(assert (= (and b!2229898 c!355746) b!2229897))

(assert (= (and b!2229898 (not c!355746)) b!2229894))

(assert (= (and b!2229897 res!955299) b!2229893))

(assert (= (and b!2229894 (not res!955300)) b!2229900))

(assert (= (and b!2229900 res!955297) b!2229896))

(assert (= (or b!2229893 b!2229896) bm!133812))

(assert (= (or b!2229897 b!2229900) bm!133810))

(assert (= (or b!2229895 bm!133810) bm!133811))

(declare-fun m!2667171 () Bool)

(assert (=> b!2229892 m!2667171))

(declare-fun m!2667173 () Bool)

(assert (=> bm!133811 m!2667173))

(declare-fun m!2667175 () Bool)

(assert (=> bm!133812 m!2667175))

(assert (=> start!217482 d!664912))

(declare-fun d!664914 () Bool)

(declare-fun res!955303 () Bool)

(declare-fun e!1425112 () Bool)

(assert (=> d!664914 (=> (not res!955303) (not e!1425112))))

(assert (=> d!664914 (= res!955303 ((_ is HashMap!2961) (cache!3342 cacheDown!839)))))

(assert (=> d!664914 (= (inv!35585 cacheDown!839) e!1425112)))

(declare-fun b!2229903 () Bool)

(assert (=> b!2229903 (= e!1425112 (validCacheMapDown!280 (cache!3342 cacheDown!839)))))

(assert (= (and d!664914 res!955303) b!2229903))

(assert (=> b!2229903 m!2667165))

(assert (=> start!217482 d!664914))

(declare-fun bs!453773 () Bool)

(declare-fun d!664916 () Bool)

(assert (= bs!453773 (and d!664916 d!664902)))

(declare-fun lambda!84267 () Int)

(assert (=> bs!453773 (= lambda!84267 lambda!84266)))

(assert (=> d!664916 (= (inv!35584 context!86) (forall!5359 (exprs!2461 context!86) lambda!84267))))

(declare-fun bs!453774 () Bool)

(assert (= bs!453774 d!664916))

(declare-fun m!2667177 () Bool)

(assert (=> bs!453774 m!2667177))

(assert (=> start!217482 d!664916))

(declare-fun d!664918 () Bool)

(declare-fun nullableFct!413 (Regex!6413) Bool)

(assert (=> d!664918 (= (nullable!1762 (regOne!13338 expr!64)) (nullableFct!413 (regOne!13338 expr!64)))))

(declare-fun bs!453775 () Bool)

(assert (= bs!453775 d!664918))

(declare-fun m!2667179 () Bool)

(assert (=> bs!453775 m!2667179))

(assert (=> b!2229860 d!664918))

(declare-fun setIsEmpty!20032 () Bool)

(declare-fun setRes!20032 () Bool)

(assert (=> setIsEmpty!20032 setRes!20032))

(declare-fun b!2229912 () Bool)

(declare-fun e!1425119 () Bool)

(declare-fun tp!698337 () Bool)

(assert (=> b!2229912 (= e!1425119 tp!698337)))

(declare-fun tp!698336 () Bool)

(declare-fun setNonEmpty!20032 () Bool)

(declare-fun e!1425121 () Bool)

(declare-fun setElem!20032 () Context!3922)

(assert (=> setNonEmpty!20032 (= setRes!20032 (and tp!698336 (inv!35584 setElem!20032) e!1425121))))

(declare-fun setRest!20032 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20032 (= (_2!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20032 true) setRest!20032))))

(declare-fun e!1425120 () Bool)

(assert (=> b!2229847 (= tp!698323 e!1425120)))

(declare-fun b!2229913 () Bool)

(declare-fun tp!698338 () Bool)

(assert (=> b!2229913 (= e!1425121 tp!698338)))

(declare-fun tp!698340 () Bool)

(declare-fun b!2229914 () Bool)

(declare-fun tp!698339 () Bool)

(assert (=> b!2229914 (= e!1425120 (and tp!698339 (inv!35584 (_2!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))) e!1425119 tp_is_empty!10051 setRes!20032 tp!698340))))

(declare-fun condSetEmpty!20032 () Bool)

(assert (=> b!2229914 (= condSetEmpty!20032 (= (_2!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2229914 b!2229912))

(assert (= (and b!2229914 condSetEmpty!20032) setIsEmpty!20032))

(assert (= (and b!2229914 (not condSetEmpty!20032)) setNonEmpty!20032))

(assert (= setNonEmpty!20032 b!2229913))

(assert (= (and b!2229847 ((_ is Cons!26205) (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))) b!2229914))

(declare-fun m!2667181 () Bool)

(assert (=> setNonEmpty!20032 m!2667181))

(declare-fun m!2667183 () Bool)

(assert (=> b!2229914 m!2667183))

(declare-fun setIsEmpty!20033 () Bool)

(declare-fun setRes!20033 () Bool)

(assert (=> setIsEmpty!20033 setRes!20033))

(declare-fun b!2229915 () Bool)

(declare-fun e!1425122 () Bool)

(declare-fun tp!698342 () Bool)

(assert (=> b!2229915 (= e!1425122 tp!698342)))

(declare-fun e!1425124 () Bool)

(declare-fun setElem!20033 () Context!3922)

(declare-fun setNonEmpty!20033 () Bool)

(declare-fun tp!698341 () Bool)

(assert (=> setNonEmpty!20033 (= setRes!20033 (and tp!698341 (inv!35584 setElem!20033) e!1425124))))

(declare-fun setRest!20033 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20033 (= (_2!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20033 true) setRest!20033))))

(declare-fun e!1425123 () Bool)

(assert (=> b!2229847 (= tp!698319 e!1425123)))

(declare-fun b!2229916 () Bool)

(declare-fun tp!698343 () Bool)

(assert (=> b!2229916 (= e!1425124 tp!698343)))

(declare-fun tp!698344 () Bool)

(declare-fun b!2229917 () Bool)

(declare-fun tp!698345 () Bool)

(assert (=> b!2229917 (= e!1425123 (and tp!698344 (inv!35584 (_2!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))) e!1425122 tp_is_empty!10051 setRes!20033 tp!698345))))

(declare-fun condSetEmpty!20033 () Bool)

(assert (=> b!2229917 (= condSetEmpty!20033 (= (_2!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2229917 b!2229915))

(assert (= (and b!2229917 condSetEmpty!20033) setIsEmpty!20033))

(assert (= (and b!2229917 (not condSetEmpty!20033)) setNonEmpty!20033))

(assert (= setNonEmpty!20033 b!2229916))

(assert (= (and b!2229847 ((_ is Cons!26205) (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))) b!2229917))

(declare-fun m!2667185 () Bool)

(assert (=> setNonEmpty!20033 m!2667185))

(declare-fun m!2667187 () Bool)

(assert (=> b!2229917 m!2667187))

(declare-fun e!1425127 () Bool)

(assert (=> b!2229857 (= tp!698313 e!1425127)))

(declare-fun b!2229930 () Bool)

(declare-fun tp!698360 () Bool)

(assert (=> b!2229930 (= e!1425127 tp!698360)))

(declare-fun b!2229928 () Bool)

(assert (=> b!2229928 (= e!1425127 tp_is_empty!10051)))

(declare-fun b!2229929 () Bool)

(declare-fun tp!698356 () Bool)

(declare-fun tp!698359 () Bool)

(assert (=> b!2229929 (= e!1425127 (and tp!698356 tp!698359))))

(declare-fun b!2229931 () Bool)

(declare-fun tp!698358 () Bool)

(declare-fun tp!698357 () Bool)

(assert (=> b!2229931 (= e!1425127 (and tp!698358 tp!698357))))

(assert (= (and b!2229857 ((_ is ElementMatch!6413) (reg!6742 expr!64))) b!2229928))

(assert (= (and b!2229857 ((_ is Concat!10751) (reg!6742 expr!64))) b!2229929))

(assert (= (and b!2229857 ((_ is Star!6413) (reg!6742 expr!64))) b!2229930))

(assert (= (and b!2229857 ((_ is Union!6413) (reg!6742 expr!64))) b!2229931))

(declare-fun b!2229936 () Bool)

(declare-fun e!1425130 () Bool)

(declare-fun tp!698365 () Bool)

(declare-fun tp!698366 () Bool)

(assert (=> b!2229936 (= e!1425130 (and tp!698365 tp!698366))))

(assert (=> b!2229852 (= tp!698321 e!1425130)))

(assert (= (and b!2229852 ((_ is Cons!26204) (exprs!2461 context!86))) b!2229936))

(declare-fun e!1425131 () Bool)

(assert (=> b!2229854 (= tp!698317 e!1425131)))

(declare-fun b!2229939 () Bool)

(declare-fun tp!698371 () Bool)

(assert (=> b!2229939 (= e!1425131 tp!698371)))

(declare-fun b!2229937 () Bool)

(assert (=> b!2229937 (= e!1425131 tp_is_empty!10051)))

(declare-fun b!2229938 () Bool)

(declare-fun tp!698367 () Bool)

(declare-fun tp!698370 () Bool)

(assert (=> b!2229938 (= e!1425131 (and tp!698367 tp!698370))))

(declare-fun b!2229940 () Bool)

(declare-fun tp!698369 () Bool)

(declare-fun tp!698368 () Bool)

(assert (=> b!2229940 (= e!1425131 (and tp!698369 tp!698368))))

(assert (= (and b!2229854 ((_ is ElementMatch!6413) (regOne!13339 expr!64))) b!2229937))

(assert (= (and b!2229854 ((_ is Concat!10751) (regOne!13339 expr!64))) b!2229938))

(assert (= (and b!2229854 ((_ is Star!6413) (regOne!13339 expr!64))) b!2229939))

(assert (= (and b!2229854 ((_ is Union!6413) (regOne!13339 expr!64))) b!2229940))

(declare-fun e!1425132 () Bool)

(assert (=> b!2229854 (= tp!698320 e!1425132)))

(declare-fun b!2229943 () Bool)

(declare-fun tp!698376 () Bool)

(assert (=> b!2229943 (= e!1425132 tp!698376)))

(declare-fun b!2229941 () Bool)

(assert (=> b!2229941 (= e!1425132 tp_is_empty!10051)))

(declare-fun b!2229942 () Bool)

(declare-fun tp!698372 () Bool)

(declare-fun tp!698375 () Bool)

(assert (=> b!2229942 (= e!1425132 (and tp!698372 tp!698375))))

(declare-fun b!2229944 () Bool)

(declare-fun tp!698374 () Bool)

(declare-fun tp!698373 () Bool)

(assert (=> b!2229944 (= e!1425132 (and tp!698374 tp!698373))))

(assert (= (and b!2229854 ((_ is ElementMatch!6413) (regTwo!13339 expr!64))) b!2229941))

(assert (= (and b!2229854 ((_ is Concat!10751) (regTwo!13339 expr!64))) b!2229942))

(assert (= (and b!2229854 ((_ is Star!6413) (regTwo!13339 expr!64))) b!2229943))

(assert (= (and b!2229854 ((_ is Union!6413) (regTwo!13339 expr!64))) b!2229944))

(declare-fun condMapEmpty!14369 () Bool)

(declare-fun mapDefault!14369 () List!26299)

(assert (=> mapNonEmpty!14366 (= condMapEmpty!14369 (= mapRest!14366 ((as const (Array (_ BitVec 32) List!26299)) mapDefault!14369)))))

(declare-fun e!1425147 () Bool)

(declare-fun mapRes!14369 () Bool)

(assert (=> mapNonEmpty!14366 (= tp!698314 (and e!1425147 mapRes!14369))))

(declare-fun b!2229959 () Bool)

(declare-fun e!1425145 () Bool)

(declare-fun tp!698401 () Bool)

(assert (=> b!2229959 (= e!1425145 tp!698401)))

(declare-fun mapIsEmpty!14369 () Bool)

(assert (=> mapIsEmpty!14369 mapRes!14369))

(declare-fun b!2229960 () Bool)

(declare-fun e!1425149 () Bool)

(declare-fun tp!698408 () Bool)

(assert (=> b!2229960 (= e!1425149 tp!698408)))

(declare-fun setIsEmpty!20038 () Bool)

(declare-fun setRes!20038 () Bool)

(assert (=> setIsEmpty!20038 setRes!20038))

(declare-fun setIsEmpty!20039 () Bool)

(declare-fun setRes!20039 () Bool)

(assert (=> setIsEmpty!20039 setRes!20039))

(declare-fun e!1425150 () Bool)

(declare-fun mapValue!14369 () List!26299)

(declare-fun b!2229961 () Bool)

(declare-fun tp!698409 () Bool)

(declare-fun tp!698399 () Bool)

(assert (=> b!2229961 (= e!1425150 (and tp!698399 (inv!35584 (_2!15195 (_1!15196 (h!31606 mapValue!14369)))) e!1425145 tp_is_empty!10051 setRes!20038 tp!698409))))

(declare-fun condSetEmpty!20038 () Bool)

(assert (=> b!2229961 (= condSetEmpty!20038 (= (_2!15196 (h!31606 mapValue!14369)) ((as const (Array Context!3922 Bool)) false)))))

(declare-fun b!2229962 () Bool)

(declare-fun e!1425148 () Bool)

(declare-fun tp!698403 () Bool)

(assert (=> b!2229962 (= e!1425148 tp!698403)))

(declare-fun mapNonEmpty!14369 () Bool)

(declare-fun tp!698402 () Bool)

(assert (=> mapNonEmpty!14369 (= mapRes!14369 (and tp!698402 e!1425150))))

(declare-fun mapKey!14369 () (_ BitVec 32))

(declare-fun mapRest!14369 () (Array (_ BitVec 32) List!26299))

(assert (=> mapNonEmpty!14369 (= mapRest!14366 (store mapRest!14369 mapKey!14369 mapValue!14369))))

(declare-fun b!2229963 () Bool)

(declare-fun e!1425146 () Bool)

(declare-fun tp!698407 () Bool)

(assert (=> b!2229963 (= e!1425146 tp!698407)))

(declare-fun setElem!20038 () Context!3922)

(declare-fun tp!698405 () Bool)

(declare-fun setNonEmpty!20038 () Bool)

(assert (=> setNonEmpty!20038 (= setRes!20039 (and tp!698405 (inv!35584 setElem!20038) e!1425148))))

(declare-fun setRest!20038 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20038 (= (_2!15196 (h!31606 mapDefault!14369)) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20038 true) setRest!20038))))

(declare-fun tp!698400 () Bool)

(declare-fun setElem!20039 () Context!3922)

(declare-fun setNonEmpty!20039 () Bool)

(assert (=> setNonEmpty!20039 (= setRes!20038 (and tp!698400 (inv!35584 setElem!20039) e!1425146))))

(declare-fun setRest!20039 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20039 (= (_2!15196 (h!31606 mapValue!14369)) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20039 true) setRest!20039))))

(declare-fun tp!698404 () Bool)

(declare-fun tp!698406 () Bool)

(declare-fun b!2229964 () Bool)

(assert (=> b!2229964 (= e!1425147 (and tp!698404 (inv!35584 (_2!15195 (_1!15196 (h!31606 mapDefault!14369)))) e!1425149 tp_is_empty!10051 setRes!20039 tp!698406))))

(declare-fun condSetEmpty!20039 () Bool)

(assert (=> b!2229964 (= condSetEmpty!20039 (= (_2!15196 (h!31606 mapDefault!14369)) ((as const (Array Context!3922 Bool)) false)))))

(assert (= (and mapNonEmpty!14366 condMapEmpty!14369) mapIsEmpty!14369))

(assert (= (and mapNonEmpty!14366 (not condMapEmpty!14369)) mapNonEmpty!14369))

(assert (= b!2229961 b!2229959))

(assert (= (and b!2229961 condSetEmpty!20038) setIsEmpty!20038))

(assert (= (and b!2229961 (not condSetEmpty!20038)) setNonEmpty!20039))

(assert (= setNonEmpty!20039 b!2229963))

(assert (= (and mapNonEmpty!14369 ((_ is Cons!26205) mapValue!14369)) b!2229961))

(assert (= b!2229964 b!2229960))

(assert (= (and b!2229964 condSetEmpty!20039) setIsEmpty!20039))

(assert (= (and b!2229964 (not condSetEmpty!20039)) setNonEmpty!20038))

(assert (= setNonEmpty!20038 b!2229962))

(assert (= (and mapNonEmpty!14366 ((_ is Cons!26205) mapDefault!14369)) b!2229964))

(declare-fun m!2667189 () Bool)

(assert (=> b!2229961 m!2667189))

(declare-fun m!2667191 () Bool)

(assert (=> b!2229964 m!2667191))

(declare-fun m!2667193 () Bool)

(assert (=> setNonEmpty!20038 m!2667193))

(declare-fun m!2667195 () Bool)

(assert (=> mapNonEmpty!14369 m!2667195))

(declare-fun m!2667197 () Bool)

(assert (=> setNonEmpty!20039 m!2667197))

(declare-fun setIsEmpty!20040 () Bool)

(declare-fun setRes!20040 () Bool)

(assert (=> setIsEmpty!20040 setRes!20040))

(declare-fun b!2229965 () Bool)

(declare-fun e!1425151 () Bool)

(declare-fun tp!698411 () Bool)

(assert (=> b!2229965 (= e!1425151 tp!698411)))

(declare-fun setElem!20040 () Context!3922)

(declare-fun tp!698410 () Bool)

(declare-fun setNonEmpty!20040 () Bool)

(declare-fun e!1425153 () Bool)

(assert (=> setNonEmpty!20040 (= setRes!20040 (and tp!698410 (inv!35584 setElem!20040) e!1425153))))

(declare-fun setRest!20040 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20040 (= (_2!15196 (h!31606 mapValue!14366)) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20040 true) setRest!20040))))

(declare-fun e!1425152 () Bool)

(assert (=> mapNonEmpty!14366 (= tp!698316 e!1425152)))

(declare-fun b!2229966 () Bool)

(declare-fun tp!698412 () Bool)

(assert (=> b!2229966 (= e!1425153 tp!698412)))

(declare-fun b!2229967 () Bool)

(declare-fun tp!698413 () Bool)

(declare-fun tp!698414 () Bool)

(assert (=> b!2229967 (= e!1425152 (and tp!698413 (inv!35584 (_2!15195 (_1!15196 (h!31606 mapValue!14366)))) e!1425151 tp_is_empty!10051 setRes!20040 tp!698414))))

(declare-fun condSetEmpty!20040 () Bool)

(assert (=> b!2229967 (= condSetEmpty!20040 (= (_2!15196 (h!31606 mapValue!14366)) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2229967 b!2229965))

(assert (= (and b!2229967 condSetEmpty!20040) setIsEmpty!20040))

(assert (= (and b!2229967 (not condSetEmpty!20040)) setNonEmpty!20040))

(assert (= setNonEmpty!20040 b!2229966))

(assert (= (and mapNonEmpty!14366 ((_ is Cons!26205) mapValue!14366)) b!2229967))

(declare-fun m!2667199 () Bool)

(assert (=> setNonEmpty!20040 m!2667199))

(declare-fun m!2667201 () Bool)

(assert (=> b!2229967 m!2667201))

(declare-fun setIsEmpty!20041 () Bool)

(declare-fun setRes!20041 () Bool)

(assert (=> setIsEmpty!20041 setRes!20041))

(declare-fun b!2229968 () Bool)

(declare-fun e!1425154 () Bool)

(declare-fun tp!698416 () Bool)

(assert (=> b!2229968 (= e!1425154 tp!698416)))

(declare-fun tp!698415 () Bool)

(declare-fun setElem!20041 () Context!3922)

(declare-fun setNonEmpty!20041 () Bool)

(declare-fun e!1425156 () Bool)

(assert (=> setNonEmpty!20041 (= setRes!20041 (and tp!698415 (inv!35584 setElem!20041) e!1425156))))

(declare-fun setRest!20041 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20041 (= (_2!15196 (h!31606 mapDefault!14366)) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20041 true) setRest!20041))))

(declare-fun e!1425155 () Bool)

(assert (=> b!2229845 (= tp!698325 e!1425155)))

(declare-fun b!2229969 () Bool)

(declare-fun tp!698417 () Bool)

(assert (=> b!2229969 (= e!1425156 tp!698417)))

(declare-fun tp!698418 () Bool)

(declare-fun b!2229970 () Bool)

(declare-fun tp!698419 () Bool)

(assert (=> b!2229970 (= e!1425155 (and tp!698418 (inv!35584 (_2!15195 (_1!15196 (h!31606 mapDefault!14366)))) e!1425154 tp_is_empty!10051 setRes!20041 tp!698419))))

(declare-fun condSetEmpty!20041 () Bool)

(assert (=> b!2229970 (= condSetEmpty!20041 (= (_2!15196 (h!31606 mapDefault!14366)) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2229970 b!2229968))

(assert (= (and b!2229970 condSetEmpty!20041) setIsEmpty!20041))

(assert (= (and b!2229970 (not condSetEmpty!20041)) setNonEmpty!20041))

(assert (= setNonEmpty!20041 b!2229969))

(assert (= (and b!2229845 ((_ is Cons!26205) mapDefault!14366)) b!2229970))

(declare-fun m!2667203 () Bool)

(assert (=> setNonEmpty!20041 m!2667203))

(declare-fun m!2667205 () Bool)

(assert (=> b!2229970 m!2667205))

(declare-fun e!1425157 () Bool)

(assert (=> b!2229855 (= tp!698322 e!1425157)))

(declare-fun b!2229973 () Bool)

(declare-fun tp!698424 () Bool)

(assert (=> b!2229973 (= e!1425157 tp!698424)))

(declare-fun b!2229971 () Bool)

(assert (=> b!2229971 (= e!1425157 tp_is_empty!10051)))

(declare-fun b!2229972 () Bool)

(declare-fun tp!698420 () Bool)

(declare-fun tp!698423 () Bool)

(assert (=> b!2229972 (= e!1425157 (and tp!698420 tp!698423))))

(declare-fun b!2229974 () Bool)

(declare-fun tp!698422 () Bool)

(declare-fun tp!698421 () Bool)

(assert (=> b!2229974 (= e!1425157 (and tp!698422 tp!698421))))

(assert (= (and b!2229855 ((_ is ElementMatch!6413) (regOne!13338 expr!64))) b!2229971))

(assert (= (and b!2229855 ((_ is Concat!10751) (regOne!13338 expr!64))) b!2229972))

(assert (= (and b!2229855 ((_ is Star!6413) (regOne!13338 expr!64))) b!2229973))

(assert (= (and b!2229855 ((_ is Union!6413) (regOne!13338 expr!64))) b!2229974))

(declare-fun e!1425158 () Bool)

(assert (=> b!2229855 (= tp!698324 e!1425158)))

(declare-fun b!2229977 () Bool)

(declare-fun tp!698429 () Bool)

(assert (=> b!2229977 (= e!1425158 tp!698429)))

(declare-fun b!2229975 () Bool)

(assert (=> b!2229975 (= e!1425158 tp_is_empty!10051)))

(declare-fun b!2229976 () Bool)

(declare-fun tp!698425 () Bool)

(declare-fun tp!698428 () Bool)

(assert (=> b!2229976 (= e!1425158 (and tp!698425 tp!698428))))

(declare-fun b!2229978 () Bool)

(declare-fun tp!698427 () Bool)

(declare-fun tp!698426 () Bool)

(assert (=> b!2229978 (= e!1425158 (and tp!698427 tp!698426))))

(assert (= (and b!2229855 ((_ is ElementMatch!6413) (regTwo!13338 expr!64))) b!2229975))

(assert (= (and b!2229855 ((_ is Concat!10751) (regTwo!13338 expr!64))) b!2229976))

(assert (= (and b!2229855 ((_ is Star!6413) (regTwo!13338 expr!64))) b!2229977))

(assert (= (and b!2229855 ((_ is Union!6413) (regTwo!13338 expr!64))) b!2229978))

(check-sat (not b!2229978) (not d!664910) (not b_next!65369) (not b!2229976) tp_is_empty!10051 (not b!2229936) (not b!2229940) b_and!174655 (not b!2229970) (not b!2229929) (not b!2229939) b_and!174653 (not setNonEmpty!20038) (not b!2229914) (not b!2229965) (not b_next!65371) (not d!664918) (not b!2229967) (not b!2229962) (not b!2229891) (not bm!133811) (not b!2229960) (not d!664916) (not b!2229917) (not b!2229903) (not mapNonEmpty!14369) (not setNonEmpty!20041) (not setNonEmpty!20039) (not d!664902) (not b!2229969) (not b!2229938) (not setNonEmpty!20033) (not b!2229915) (not b!2229916) (not b!2229973) (not b!2229972) (not b!2229959) (not b!2229943) (not b!2229880) (not b!2229966) (not b!2229912) (not b!2229963) (not bm!133809) (not b!2229913) (not bm!133812) (not b!2229974) (not b!2229942) (not b!2229961) (not b!2229892) (not b!2229968) (not setNonEmpty!20032) (not b!2229931) (not bm!133808) (not b!2229977) (not setNonEmpty!20040) (not b!2229930) (not b!2229964) (not b!2229944))
(check-sat b_and!174653 b_and!174655 (not b_next!65371) (not b_next!65369))
(get-model)

(declare-fun d!664920 () Bool)

(assert (=> d!664920 (= (nullable!1762 (reg!6742 (regTwo!13338 expr!64))) (nullableFct!413 (reg!6742 (regTwo!13338 expr!64))))))

(declare-fun bs!453776 () Bool)

(assert (= bs!453776 d!664920))

(declare-fun m!2667207 () Bool)

(assert (=> bs!453776 m!2667207))

(assert (=> b!2229880 d!664920))

(declare-fun b!2229979 () Bool)

(declare-fun e!1425161 () Bool)

(declare-fun e!1425164 () Bool)

(assert (=> b!2229979 (= e!1425161 e!1425164)))

(declare-fun res!955304 () Bool)

(assert (=> b!2229979 (= res!955304 (not (nullable!1762 (reg!6742 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))))))))

(assert (=> b!2229979 (=> (not res!955304) (not e!1425164))))

(declare-fun b!2229980 () Bool)

(declare-fun e!1425163 () Bool)

(declare-fun call!133818 () Bool)

(assert (=> b!2229980 (= e!1425163 call!133818)))

(declare-fun b!2229981 () Bool)

(declare-fun res!955308 () Bool)

(declare-fun e!1425165 () Bool)

(assert (=> b!2229981 (=> res!955308 e!1425165)))

(assert (=> b!2229981 (= res!955308 (not ((_ is Concat!10751) (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64))))))))

(declare-fun e!1425162 () Bool)

(assert (=> b!2229981 (= e!1425162 e!1425165)))

(declare-fun d!664922 () Bool)

(declare-fun res!955306 () Bool)

(declare-fun e!1425159 () Bool)

(assert (=> d!664922 (=> res!955306 e!1425159)))

(assert (=> d!664922 (= res!955306 ((_ is ElementMatch!6413) (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))))))

(assert (=> d!664922 (= (validRegex!2388 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))) e!1425159)))

(declare-fun bm!133813 () Bool)

(declare-fun call!133820 () Bool)

(declare-fun call!133819 () Bool)

(assert (=> bm!133813 (= call!133820 call!133819)))

(declare-fun b!2229982 () Bool)

(assert (=> b!2229982 (= e!1425164 call!133819)))

(declare-fun b!2229983 () Bool)

(declare-fun e!1425160 () Bool)

(assert (=> b!2229983 (= e!1425160 call!133818)))

(declare-fun b!2229984 () Bool)

(declare-fun res!955307 () Bool)

(assert (=> b!2229984 (=> (not res!955307) (not e!1425163))))

(assert (=> b!2229984 (= res!955307 call!133820)))

(assert (=> b!2229984 (= e!1425162 e!1425163)))

(declare-fun b!2229985 () Bool)

(assert (=> b!2229985 (= e!1425161 e!1425162)))

(declare-fun c!355748 () Bool)

(assert (=> b!2229985 (= c!355748 ((_ is Union!6413) (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))))))

(declare-fun b!2229986 () Bool)

(assert (=> b!2229986 (= e!1425159 e!1425161)))

(declare-fun c!355749 () Bool)

(assert (=> b!2229986 (= c!355749 ((_ is Star!6413) (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))))))

(declare-fun bm!133814 () Bool)

(assert (=> bm!133814 (= call!133819 (validRegex!2388 (ite c!355749 (reg!6742 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))) (ite c!355748 (regOne!13339 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))) (regOne!13338 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64))))))))))

(declare-fun b!2229987 () Bool)

(assert (=> b!2229987 (= e!1425165 e!1425160)))

(declare-fun res!955305 () Bool)

(assert (=> b!2229987 (=> (not res!955305) (not e!1425160))))

(assert (=> b!2229987 (= res!955305 call!133820)))

(declare-fun bm!133815 () Bool)

(assert (=> bm!133815 (= call!133818 (validRegex!2388 (ite c!355748 (regTwo!13339 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))) (regTwo!13338 (ite c!355747 (reg!6742 expr!64) (ite c!355746 (regOne!13339 expr!64) (regOne!13338 expr!64)))))))))

(assert (= (and d!664922 (not res!955306)) b!2229986))

(assert (= (and b!2229986 c!355749) b!2229979))

(assert (= (and b!2229986 (not c!355749)) b!2229985))

(assert (= (and b!2229979 res!955304) b!2229982))

(assert (= (and b!2229985 c!355748) b!2229984))

(assert (= (and b!2229985 (not c!355748)) b!2229981))

(assert (= (and b!2229984 res!955307) b!2229980))

(assert (= (and b!2229981 (not res!955308)) b!2229987))

(assert (= (and b!2229987 res!955305) b!2229983))

(assert (= (or b!2229980 b!2229983) bm!133815))

(assert (= (or b!2229984 b!2229987) bm!133813))

(assert (= (or b!2229982 bm!133813) bm!133814))

(declare-fun m!2667209 () Bool)

(assert (=> b!2229979 m!2667209))

(declare-fun m!2667211 () Bool)

(assert (=> bm!133814 m!2667211))

(declare-fun m!2667213 () Bool)

(assert (=> bm!133815 m!2667213))

(assert (=> bm!133811 d!664922))

(declare-fun bs!453777 () Bool)

(declare-fun d!664924 () Bool)

(assert (= bs!453777 (and d!664924 d!664902)))

(declare-fun lambda!84268 () Int)

(assert (=> bs!453777 (= lambda!84268 lambda!84266)))

(declare-fun bs!453778 () Bool)

(assert (= bs!453778 (and d!664924 d!664916)))

(assert (=> bs!453778 (= lambda!84268 lambda!84267)))

(assert (=> d!664924 (= (inv!35584 (_2!15195 (_1!15196 (h!31606 mapValue!14366)))) (forall!5359 (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapValue!14366)))) lambda!84268))))

(declare-fun bs!453779 () Bool)

(assert (= bs!453779 d!664924))

(declare-fun m!2667215 () Bool)

(assert (=> bs!453779 m!2667215))

(assert (=> b!2229967 d!664924))

(declare-fun bs!453780 () Bool)

(declare-fun d!664926 () Bool)

(assert (= bs!453780 (and d!664926 d!664902)))

(declare-fun lambda!84269 () Int)

(assert (=> bs!453780 (= lambda!84269 lambda!84266)))

(declare-fun bs!453781 () Bool)

(assert (= bs!453781 (and d!664926 d!664916)))

(assert (=> bs!453781 (= lambda!84269 lambda!84267)))

(declare-fun bs!453782 () Bool)

(assert (= bs!453782 (and d!664926 d!664924)))

(assert (=> bs!453782 (= lambda!84269 lambda!84268)))

(assert (=> d!664926 (= (inv!35584 (_2!15195 (_1!15196 (h!31606 mapDefault!14366)))) (forall!5359 (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapDefault!14366)))) lambda!84269))))

(declare-fun bs!453783 () Bool)

(assert (= bs!453783 d!664926))

(declare-fun m!2667217 () Bool)

(assert (=> bs!453783 m!2667217))

(assert (=> b!2229970 d!664926))

(declare-fun d!664928 () Bool)

(declare-fun res!955315 () Bool)

(declare-fun e!1425170 () Bool)

(assert (=> d!664928 (=> (not res!955315) (not e!1425170))))

(declare-fun valid!2322 (MutableMap!2961) Bool)

(assert (=> d!664928 (= res!955315 (valid!2322 (cache!3342 cacheDown!839)))))

(assert (=> d!664928 (= (validCacheMapDown!280 (cache!3342 cacheDown!839)) e!1425170)))

(declare-fun b!2229994 () Bool)

(declare-fun res!955316 () Bool)

(assert (=> b!2229994 (=> (not res!955316) (not e!1425170))))

(declare-fun invariantList!361 (List!26299) Bool)

(declare-datatypes ((ListMap!799 0))(
  ( (ListMap!800 (toList!1328 List!26299)) )
))
(declare-fun map!5356 (MutableMap!2961) ListMap!799)

(assert (=> b!2229994 (= res!955316 (invariantList!361 (toList!1328 (map!5356 (cache!3342 cacheDown!839)))))))

(declare-fun b!2229995 () Bool)

(declare-fun lambda!84272 () Int)

(declare-fun forall!5360 (List!26299 Int) Bool)

(assert (=> b!2229995 (= e!1425170 (forall!5360 (toList!1328 (map!5356 (cache!3342 cacheDown!839))) lambda!84272))))

(assert (= (and d!664928 res!955315) b!2229994))

(assert (= (and b!2229994 res!955316) b!2229995))

(declare-fun m!2667220 () Bool)

(assert (=> d!664928 m!2667220))

(declare-fun m!2667222 () Bool)

(assert (=> b!2229994 m!2667222))

(declare-fun m!2667224 () Bool)

(assert (=> b!2229994 m!2667224))

(assert (=> b!2229995 m!2667222))

(declare-fun m!2667226 () Bool)

(assert (=> b!2229995 m!2667226))

(assert (=> b!2229903 d!664928))

(declare-fun d!664930 () Bool)

(assert (=> d!664930 (= (nullable!1762 (reg!6742 expr!64)) (nullableFct!413 (reg!6742 expr!64)))))

(declare-fun bs!453784 () Bool)

(assert (= bs!453784 d!664930))

(declare-fun m!2667228 () Bool)

(assert (=> bs!453784 m!2667228))

(assert (=> b!2229892 d!664930))

(declare-fun d!664932 () Bool)

(declare-fun res!955321 () Bool)

(declare-fun e!1425175 () Bool)

(assert (=> d!664932 (=> res!955321 e!1425175)))

(assert (=> d!664932 (= res!955321 ((_ is Nil!26204) (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64))))))))

(assert (=> d!664932 (= (forall!5359 (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)))) lambda!84266) e!1425175)))

(declare-fun b!2230000 () Bool)

(declare-fun e!1425176 () Bool)

(assert (=> b!2230000 (= e!1425175 e!1425176)))

(declare-fun res!955322 () Bool)

(assert (=> b!2230000 (=> (not res!955322) (not e!1425176))))

(declare-fun dynLambda!11522 (Int Regex!6413) Bool)

(assert (=> b!2230000 (= res!955322 (dynLambda!11522 lambda!84266 (h!31605 (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)))))))))

(declare-fun b!2230001 () Bool)

(assert (=> b!2230001 (= e!1425176 (forall!5359 (t!199713 (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64))))) lambda!84266))))

(assert (= (and d!664932 (not res!955321)) b!2230000))

(assert (= (and b!2230000 res!955322) b!2230001))

(declare-fun b_lambda!71645 () Bool)

(assert (=> (not b_lambda!71645) (not b!2230000)))

(declare-fun m!2667230 () Bool)

(assert (=> b!2230000 m!2667230))

(declare-fun m!2667232 () Bool)

(assert (=> b!2230001 m!2667232))

(assert (=> d!664902 d!664932))

(declare-fun d!664934 () Bool)

(assert (=> d!664934 (= (isEmpty!14893 lt!830513) (not ((_ is Some!5099) lt!830513)))))

(assert (=> d!664910 d!664934))

(declare-fun b!2230008 () Bool)

(declare-fun e!1425185 () Bool)

(declare-fun setRes!20044 () Bool)

(assert (=> b!2230008 (= e!1425185 setRes!20044)))

(declare-fun condSetEmpty!20044 () Bool)

(declare-fun res!955327 () Option!5100)

(assert (=> b!2230008 (= condSetEmpty!20044 (= (v!29793 res!955327) ((as const (Array Context!3922 Bool)) false)))))

(declare-fun d!664936 () Bool)

(declare-fun e!1425183 () Bool)

(assert (=> d!664936 e!1425183))

(declare-fun res!955328 () Bool)

(assert (=> d!664936 (=> res!955328 e!1425183)))

(assert (=> d!664936 (= res!955328 (isEmpty!14893 res!955327))))

(assert (=> d!664936 e!1425185))

(assert (=> d!664936 (= (choose!13124 cacheDown!839 expr!64 context!86 a!1167) res!955327)))

(declare-fun tp!698434 () Bool)

(declare-fun setNonEmpty!20044 () Bool)

(declare-fun e!1425184 () Bool)

(declare-fun setElem!20044 () Context!3922)

(assert (=> setNonEmpty!20044 (= setRes!20044 (and tp!698434 (inv!35584 setElem!20044) e!1425184))))

(declare-fun setRest!20044 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20044 (= (v!29793 res!955327) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20044 true) setRest!20044))))

(declare-fun setIsEmpty!20044 () Bool)

(assert (=> setIsEmpty!20044 setRes!20044))

(declare-fun b!2230009 () Bool)

(declare-fun tp!698435 () Bool)

(assert (=> b!2230009 (= e!1425184 tp!698435)))

(declare-fun b!2230010 () Bool)

(assert (=> b!2230010 (= e!1425183 (= (get!7906 res!955327) (derivationStepZipperDown!43 expr!64 context!86 a!1167)))))

(assert (= (and b!2230008 condSetEmpty!20044) setIsEmpty!20044))

(assert (= (and b!2230008 (not condSetEmpty!20044)) setNonEmpty!20044))

(assert (= setNonEmpty!20044 b!2230009))

(assert (= (and d!664936 ((_ is Some!5099) res!955327)) b!2230008))

(assert (= (and d!664936 (not res!955328)) b!2230010))

(declare-fun m!2667234 () Bool)

(assert (=> d!664936 m!2667234))

(declare-fun m!2667236 () Bool)

(assert (=> setNonEmpty!20044 m!2667236))

(declare-fun m!2667238 () Bool)

(assert (=> b!2230010 m!2667238))

(assert (=> b!2230010 m!2667169))

(assert (=> d!664910 d!664936))

(assert (=> d!664910 d!664928))

(declare-fun bs!453785 () Bool)

(declare-fun d!664938 () Bool)

(assert (= bs!453785 (and d!664938 d!664902)))

(declare-fun lambda!84273 () Int)

(assert (=> bs!453785 (= lambda!84273 lambda!84266)))

(declare-fun bs!453786 () Bool)

(assert (= bs!453786 (and d!664938 d!664916)))

(assert (=> bs!453786 (= lambda!84273 lambda!84267)))

(declare-fun bs!453787 () Bool)

(assert (= bs!453787 (and d!664938 d!664924)))

(assert (=> bs!453787 (= lambda!84273 lambda!84268)))

(declare-fun bs!453788 () Bool)

(assert (= bs!453788 (and d!664938 d!664926)))

(assert (=> bs!453788 (= lambda!84273 lambda!84269)))

(assert (=> d!664938 (= (inv!35584 setElem!20038) (forall!5359 (exprs!2461 setElem!20038) lambda!84273))))

(declare-fun bs!453789 () Bool)

(assert (= bs!453789 d!664938))

(declare-fun m!2667240 () Bool)

(assert (=> bs!453789 m!2667240))

(assert (=> setNonEmpty!20038 d!664938))

(declare-fun bs!453790 () Bool)

(declare-fun d!664940 () Bool)

(assert (= bs!453790 (and d!664940 d!664938)))

(declare-fun lambda!84274 () Int)

(assert (=> bs!453790 (= lambda!84274 lambda!84273)))

(declare-fun bs!453791 () Bool)

(assert (= bs!453791 (and d!664940 d!664924)))

(assert (=> bs!453791 (= lambda!84274 lambda!84268)))

(declare-fun bs!453792 () Bool)

(assert (= bs!453792 (and d!664940 d!664902)))

(assert (=> bs!453792 (= lambda!84274 lambda!84266)))

(declare-fun bs!453793 () Bool)

(assert (= bs!453793 (and d!664940 d!664926)))

(assert (=> bs!453793 (= lambda!84274 lambda!84269)))

(declare-fun bs!453794 () Bool)

(assert (= bs!453794 (and d!664940 d!664916)))

(assert (=> bs!453794 (= lambda!84274 lambda!84267)))

(assert (=> d!664940 (= (inv!35584 (_2!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))) (forall!5359 (exprs!2461 (_2!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))) lambda!84274))))

(declare-fun bs!453795 () Bool)

(assert (= bs!453795 d!664940))

(declare-fun m!2667242 () Bool)

(assert (=> bs!453795 m!2667242))

(assert (=> b!2229917 d!664940))

(declare-fun b!2230011 () Bool)

(declare-fun e!1425188 () Bool)

(declare-fun e!1425191 () Bool)

(assert (=> b!2230011 (= e!1425188 e!1425191)))

(declare-fun res!955329 () Bool)

(assert (=> b!2230011 (= res!955329 (not (nullable!1762 (reg!6742 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))))))))

(assert (=> b!2230011 (=> (not res!955329) (not e!1425191))))

(declare-fun b!2230012 () Bool)

(declare-fun e!1425190 () Bool)

(declare-fun call!133821 () Bool)

(assert (=> b!2230012 (= e!1425190 call!133821)))

(declare-fun b!2230013 () Bool)

(declare-fun res!955333 () Bool)

(declare-fun e!1425192 () Bool)

(assert (=> b!2230013 (=> res!955333 e!1425192)))

(assert (=> b!2230013 (= res!955333 (not ((_ is Concat!10751) (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64))))))))

(declare-fun e!1425189 () Bool)

(assert (=> b!2230013 (= e!1425189 e!1425192)))

(declare-fun d!664942 () Bool)

(declare-fun res!955331 () Bool)

(declare-fun e!1425186 () Bool)

(assert (=> d!664942 (=> res!955331 e!1425186)))

(assert (=> d!664942 (= res!955331 ((_ is ElementMatch!6413) (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))))))

(assert (=> d!664942 (= (validRegex!2388 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))) e!1425186)))

(declare-fun bm!133816 () Bool)

(declare-fun call!133823 () Bool)

(declare-fun call!133822 () Bool)

(assert (=> bm!133816 (= call!133823 call!133822)))

(declare-fun b!2230014 () Bool)

(assert (=> b!2230014 (= e!1425191 call!133822)))

(declare-fun b!2230015 () Bool)

(declare-fun e!1425187 () Bool)

(assert (=> b!2230015 (= e!1425187 call!133821)))

(declare-fun b!2230016 () Bool)

(declare-fun res!955332 () Bool)

(assert (=> b!2230016 (=> (not res!955332) (not e!1425190))))

(assert (=> b!2230016 (= res!955332 call!133823)))

(assert (=> b!2230016 (= e!1425189 e!1425190)))

(declare-fun b!2230017 () Bool)

(assert (=> b!2230017 (= e!1425188 e!1425189)))

(declare-fun c!355750 () Bool)

(assert (=> b!2230017 (= c!355750 ((_ is Union!6413) (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))))))

(declare-fun b!2230018 () Bool)

(assert (=> b!2230018 (= e!1425186 e!1425188)))

(declare-fun c!355751 () Bool)

(assert (=> b!2230018 (= c!355751 ((_ is Star!6413) (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))))))

(declare-fun bm!133817 () Bool)

(assert (=> bm!133817 (= call!133822 (validRegex!2388 (ite c!355751 (reg!6742 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))) (ite c!355750 (regOne!13339 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))) (regOne!13338 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64))))))))))

(declare-fun b!2230019 () Bool)

(assert (=> b!2230019 (= e!1425192 e!1425187)))

(declare-fun res!955330 () Bool)

(assert (=> b!2230019 (=> (not res!955330) (not e!1425187))))

(assert (=> b!2230019 (= res!955330 call!133823)))

(declare-fun bm!133818 () Bool)

(assert (=> bm!133818 (= call!133821 (validRegex!2388 (ite c!355750 (regTwo!13339 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))) (regTwo!13338 (ite c!355744 (regTwo!13339 (regTwo!13338 expr!64)) (regTwo!13338 (regTwo!13338 expr!64)))))))))

(assert (= (and d!664942 (not res!955331)) b!2230018))

(assert (= (and b!2230018 c!355751) b!2230011))

(assert (= (and b!2230018 (not c!355751)) b!2230017))

(assert (= (and b!2230011 res!955329) b!2230014))

(assert (= (and b!2230017 c!355750) b!2230016))

(assert (= (and b!2230017 (not c!355750)) b!2230013))

(assert (= (and b!2230016 res!955332) b!2230012))

(assert (= (and b!2230013 (not res!955333)) b!2230019))

(assert (= (and b!2230019 res!955330) b!2230015))

(assert (= (or b!2230012 b!2230015) bm!133818))

(assert (= (or b!2230016 b!2230019) bm!133816))

(assert (= (or b!2230014 bm!133816) bm!133817))

(declare-fun m!2667244 () Bool)

(assert (=> b!2230011 m!2667244))

(declare-fun m!2667246 () Bool)

(assert (=> bm!133817 m!2667246))

(declare-fun m!2667248 () Bool)

(assert (=> bm!133818 m!2667248))

(assert (=> bm!133809 d!664942))

(declare-fun bs!453796 () Bool)

(declare-fun d!664944 () Bool)

(assert (= bs!453796 (and d!664944 d!664938)))

(declare-fun lambda!84275 () Int)

(assert (=> bs!453796 (= lambda!84275 lambda!84273)))

(declare-fun bs!453797 () Bool)

(assert (= bs!453797 (and d!664944 d!664940)))

(assert (=> bs!453797 (= lambda!84275 lambda!84274)))

(declare-fun bs!453798 () Bool)

(assert (= bs!453798 (and d!664944 d!664924)))

(assert (=> bs!453798 (= lambda!84275 lambda!84268)))

(declare-fun bs!453799 () Bool)

(assert (= bs!453799 (and d!664944 d!664902)))

(assert (=> bs!453799 (= lambda!84275 lambda!84266)))

(declare-fun bs!453800 () Bool)

(assert (= bs!453800 (and d!664944 d!664926)))

(assert (=> bs!453800 (= lambda!84275 lambda!84269)))

(declare-fun bs!453801 () Bool)

(assert (= bs!453801 (and d!664944 d!664916)))

(assert (=> bs!453801 (= lambda!84275 lambda!84267)))

(assert (=> d!664944 (= (inv!35584 (_2!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))) (forall!5359 (exprs!2461 (_2!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))) lambda!84275))))

(declare-fun bs!453802 () Bool)

(assert (= bs!453802 d!664944))

(declare-fun m!2667250 () Bool)

(assert (=> bs!453802 m!2667250))

(assert (=> b!2229914 d!664944))

(declare-fun b!2230034 () Bool)

(declare-fun e!1425210 () Bool)

(declare-fun e!1425208 () Bool)

(assert (=> b!2230034 (= e!1425210 e!1425208)))

(declare-fun res!955344 () Bool)

(assert (=> b!2230034 (=> res!955344 e!1425208)))

(assert (=> b!2230034 (= res!955344 ((_ is Star!6413) (regOne!13338 expr!64)))))

(declare-fun d!664946 () Bool)

(declare-fun res!955345 () Bool)

(declare-fun e!1425207 () Bool)

(assert (=> d!664946 (=> res!955345 e!1425207)))

(assert (=> d!664946 (= res!955345 ((_ is EmptyExpr!6413) (regOne!13338 expr!64)))))

(assert (=> d!664946 (= (nullableFct!413 (regOne!13338 expr!64)) e!1425207)))

(declare-fun b!2230035 () Bool)

(declare-fun e!1425205 () Bool)

(declare-fun call!133828 () Bool)

(assert (=> b!2230035 (= e!1425205 call!133828)))

(declare-fun b!2230036 () Bool)

(declare-fun e!1425206 () Bool)

(assert (=> b!2230036 (= e!1425208 e!1425206)))

(declare-fun c!355754 () Bool)

(assert (=> b!2230036 (= c!355754 ((_ is Union!6413) (regOne!13338 expr!64)))))

(declare-fun b!2230037 () Bool)

(declare-fun e!1425209 () Bool)

(assert (=> b!2230037 (= e!1425209 call!133828)))

(declare-fun b!2230038 () Bool)

(assert (=> b!2230038 (= e!1425206 e!1425205)))

(declare-fun res!955347 () Bool)

(declare-fun call!133829 () Bool)

(assert (=> b!2230038 (= res!955347 call!133829)))

(assert (=> b!2230038 (=> res!955347 e!1425205)))

(declare-fun bm!133823 () Bool)

(assert (=> bm!133823 (= call!133829 (nullable!1762 (ite c!355754 (regOne!13339 (regOne!13338 expr!64)) (regOne!13338 (regOne!13338 expr!64)))))))

(declare-fun b!2230039 () Bool)

(assert (=> b!2230039 (= e!1425206 e!1425209)))

(declare-fun res!955346 () Bool)

(assert (=> b!2230039 (= res!955346 call!133829)))

(assert (=> b!2230039 (=> (not res!955346) (not e!1425209))))

(declare-fun b!2230040 () Bool)

(assert (=> b!2230040 (= e!1425207 e!1425210)))

(declare-fun res!955348 () Bool)

(assert (=> b!2230040 (=> (not res!955348) (not e!1425210))))

(assert (=> b!2230040 (= res!955348 (and (not ((_ is EmptyLang!6413) (regOne!13338 expr!64))) (not ((_ is ElementMatch!6413) (regOne!13338 expr!64)))))))

(declare-fun bm!133824 () Bool)

(assert (=> bm!133824 (= call!133828 (nullable!1762 (ite c!355754 (regTwo!13339 (regOne!13338 expr!64)) (regTwo!13338 (regOne!13338 expr!64)))))))

(assert (= (and d!664946 (not res!955345)) b!2230040))

(assert (= (and b!2230040 res!955348) b!2230034))

(assert (= (and b!2230034 (not res!955344)) b!2230036))

(assert (= (and b!2230036 c!355754) b!2230038))

(assert (= (and b!2230036 (not c!355754)) b!2230039))

(assert (= (and b!2230038 (not res!955347)) b!2230035))

(assert (= (and b!2230039 res!955346) b!2230037))

(assert (= (or b!2230035 b!2230037) bm!133824))

(assert (= (or b!2230038 b!2230039) bm!133823))

(declare-fun m!2667252 () Bool)

(assert (=> bm!133823 m!2667252))

(declare-fun m!2667254 () Bool)

(assert (=> bm!133824 m!2667254))

(assert (=> d!664918 d!664946))

(declare-fun bs!453803 () Bool)

(declare-fun d!664948 () Bool)

(assert (= bs!453803 (and d!664948 d!664938)))

(declare-fun lambda!84276 () Int)

(assert (=> bs!453803 (= lambda!84276 lambda!84273)))

(declare-fun bs!453804 () Bool)

(assert (= bs!453804 (and d!664948 d!664940)))

(assert (=> bs!453804 (= lambda!84276 lambda!84274)))

(declare-fun bs!453805 () Bool)

(assert (= bs!453805 (and d!664948 d!664924)))

(assert (=> bs!453805 (= lambda!84276 lambda!84268)))

(declare-fun bs!453806 () Bool)

(assert (= bs!453806 (and d!664948 d!664902)))

(assert (=> bs!453806 (= lambda!84276 lambda!84266)))

(declare-fun bs!453807 () Bool)

(assert (= bs!453807 (and d!664948 d!664944)))

(assert (=> bs!453807 (= lambda!84276 lambda!84275)))

(declare-fun bs!453808 () Bool)

(assert (= bs!453808 (and d!664948 d!664926)))

(assert (=> bs!453808 (= lambda!84276 lambda!84269)))

(declare-fun bs!453809 () Bool)

(assert (= bs!453809 (and d!664948 d!664916)))

(assert (=> bs!453809 (= lambda!84276 lambda!84267)))

(assert (=> d!664948 (= (inv!35584 (_2!15195 (_1!15196 (h!31606 mapValue!14369)))) (forall!5359 (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapValue!14369)))) lambda!84276))))

(declare-fun bs!453810 () Bool)

(assert (= bs!453810 d!664948))

(declare-fun m!2667256 () Bool)

(assert (=> bs!453810 m!2667256))

(assert (=> b!2229961 d!664948))

(declare-fun b!2230041 () Bool)

(declare-fun e!1425213 () Bool)

(declare-fun e!1425216 () Bool)

(assert (=> b!2230041 (= e!1425213 e!1425216)))

(declare-fun res!955349 () Bool)

(assert (=> b!2230041 (= res!955349 (not (nullable!1762 (reg!6742 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))))))))

(assert (=> b!2230041 (=> (not res!955349) (not e!1425216))))

(declare-fun b!2230042 () Bool)

(declare-fun e!1425215 () Bool)

(declare-fun call!133830 () Bool)

(assert (=> b!2230042 (= e!1425215 call!133830)))

(declare-fun b!2230043 () Bool)

(declare-fun res!955353 () Bool)

(declare-fun e!1425217 () Bool)

(assert (=> b!2230043 (=> res!955353 e!1425217)))

(assert (=> b!2230043 (= res!955353 (not ((_ is Concat!10751) (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64)))))))

(declare-fun e!1425214 () Bool)

(assert (=> b!2230043 (= e!1425214 e!1425217)))

(declare-fun d!664950 () Bool)

(declare-fun res!955351 () Bool)

(declare-fun e!1425211 () Bool)

(assert (=> d!664950 (=> res!955351 e!1425211)))

(assert (=> d!664950 (= res!955351 ((_ is ElementMatch!6413) (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))))))

(assert (=> d!664950 (= (validRegex!2388 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))) e!1425211)))

(declare-fun bm!133825 () Bool)

(declare-fun call!133832 () Bool)

(declare-fun call!133831 () Bool)

(assert (=> bm!133825 (= call!133832 call!133831)))

(declare-fun b!2230044 () Bool)

(assert (=> b!2230044 (= e!1425216 call!133831)))

(declare-fun b!2230045 () Bool)

(declare-fun e!1425212 () Bool)

(assert (=> b!2230045 (= e!1425212 call!133830)))

(declare-fun b!2230046 () Bool)

(declare-fun res!955352 () Bool)

(assert (=> b!2230046 (=> (not res!955352) (not e!1425215))))

(assert (=> b!2230046 (= res!955352 call!133832)))

(assert (=> b!2230046 (= e!1425214 e!1425215)))

(declare-fun b!2230047 () Bool)

(assert (=> b!2230047 (= e!1425213 e!1425214)))

(declare-fun c!355755 () Bool)

(assert (=> b!2230047 (= c!355755 ((_ is Union!6413) (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))))))

(declare-fun b!2230048 () Bool)

(assert (=> b!2230048 (= e!1425211 e!1425213)))

(declare-fun c!355756 () Bool)

(assert (=> b!2230048 (= c!355756 ((_ is Star!6413) (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))))))

(declare-fun bm!133826 () Bool)

(assert (=> bm!133826 (= call!133831 (validRegex!2388 (ite c!355756 (reg!6742 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))) (ite c!355755 (regOne!13339 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))) (regOne!13338 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64)))))))))

(declare-fun b!2230049 () Bool)

(assert (=> b!2230049 (= e!1425217 e!1425212)))

(declare-fun res!955350 () Bool)

(assert (=> b!2230049 (=> (not res!955350) (not e!1425212))))

(assert (=> b!2230049 (= res!955350 call!133832)))

(declare-fun bm!133827 () Bool)

(assert (=> bm!133827 (= call!133830 (validRegex!2388 (ite c!355755 (regTwo!13339 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))) (regTwo!13338 (ite c!355746 (regTwo!13339 expr!64) (regTwo!13338 expr!64))))))))

(assert (= (and d!664950 (not res!955351)) b!2230048))

(assert (= (and b!2230048 c!355756) b!2230041))

(assert (= (and b!2230048 (not c!355756)) b!2230047))

(assert (= (and b!2230041 res!955349) b!2230044))

(assert (= (and b!2230047 c!355755) b!2230046))

(assert (= (and b!2230047 (not c!355755)) b!2230043))

(assert (= (and b!2230046 res!955352) b!2230042))

(assert (= (and b!2230043 (not res!955353)) b!2230049))

(assert (= (and b!2230049 res!955350) b!2230045))

(assert (= (or b!2230042 b!2230045) bm!133827))

(assert (= (or b!2230046 b!2230049) bm!133825))

(assert (= (or b!2230044 bm!133825) bm!133826))

(declare-fun m!2667258 () Bool)

(assert (=> b!2230041 m!2667258))

(declare-fun m!2667260 () Bool)

(assert (=> bm!133826 m!2667260))

(declare-fun m!2667262 () Bool)

(assert (=> bm!133827 m!2667262))

(assert (=> bm!133812 d!664950))

(declare-fun bs!453811 () Bool)

(declare-fun d!664952 () Bool)

(assert (= bs!453811 (and d!664952 d!664938)))

(declare-fun lambda!84277 () Int)

(assert (=> bs!453811 (= lambda!84277 lambda!84273)))

(declare-fun bs!453812 () Bool)

(assert (= bs!453812 (and d!664952 d!664940)))

(assert (=> bs!453812 (= lambda!84277 lambda!84274)))

(declare-fun bs!453813 () Bool)

(assert (= bs!453813 (and d!664952 d!664924)))

(assert (=> bs!453813 (= lambda!84277 lambda!84268)))

(declare-fun bs!453814 () Bool)

(assert (= bs!453814 (and d!664952 d!664948)))

(assert (=> bs!453814 (= lambda!84277 lambda!84276)))

(declare-fun bs!453815 () Bool)

(assert (= bs!453815 (and d!664952 d!664902)))

(assert (=> bs!453815 (= lambda!84277 lambda!84266)))

(declare-fun bs!453816 () Bool)

(assert (= bs!453816 (and d!664952 d!664944)))

(assert (=> bs!453816 (= lambda!84277 lambda!84275)))

(declare-fun bs!453817 () Bool)

(assert (= bs!453817 (and d!664952 d!664926)))

(assert (=> bs!453817 (= lambda!84277 lambda!84269)))

(declare-fun bs!453818 () Bool)

(assert (= bs!453818 (and d!664952 d!664916)))

(assert (=> bs!453818 (= lambda!84277 lambda!84267)))

(assert (=> d!664952 (= (inv!35584 setElem!20040) (forall!5359 (exprs!2461 setElem!20040) lambda!84277))))

(declare-fun bs!453819 () Bool)

(assert (= bs!453819 d!664952))

(declare-fun m!2667264 () Bool)

(assert (=> bs!453819 m!2667264))

(assert (=> setNonEmpty!20040 d!664952))

(declare-fun bs!453820 () Bool)

(declare-fun d!664954 () Bool)

(assert (= bs!453820 (and d!664954 d!664938)))

(declare-fun lambda!84278 () Int)

(assert (=> bs!453820 (= lambda!84278 lambda!84273)))

(declare-fun bs!453821 () Bool)

(assert (= bs!453821 (and d!664954 d!664940)))

(assert (=> bs!453821 (= lambda!84278 lambda!84274)))

(declare-fun bs!453822 () Bool)

(assert (= bs!453822 (and d!664954 d!664924)))

(assert (=> bs!453822 (= lambda!84278 lambda!84268)))

(declare-fun bs!453823 () Bool)

(assert (= bs!453823 (and d!664954 d!664948)))

(assert (=> bs!453823 (= lambda!84278 lambda!84276)))

(declare-fun bs!453824 () Bool)

(assert (= bs!453824 (and d!664954 d!664902)))

(assert (=> bs!453824 (= lambda!84278 lambda!84266)))

(declare-fun bs!453825 () Bool)

(assert (= bs!453825 (and d!664954 d!664952)))

(assert (=> bs!453825 (= lambda!84278 lambda!84277)))

(declare-fun bs!453826 () Bool)

(assert (= bs!453826 (and d!664954 d!664944)))

(assert (=> bs!453826 (= lambda!84278 lambda!84275)))

(declare-fun bs!453827 () Bool)

(assert (= bs!453827 (and d!664954 d!664926)))

(assert (=> bs!453827 (= lambda!84278 lambda!84269)))

(declare-fun bs!453828 () Bool)

(assert (= bs!453828 (and d!664954 d!664916)))

(assert (=> bs!453828 (= lambda!84278 lambda!84267)))

(assert (=> d!664954 (= (inv!35584 setElem!20041) (forall!5359 (exprs!2461 setElem!20041) lambda!84278))))

(declare-fun bs!453829 () Bool)

(assert (= bs!453829 d!664954))

(declare-fun m!2667266 () Bool)

(assert (=> bs!453829 m!2667266))

(assert (=> setNonEmpty!20041 d!664954))

(declare-fun d!664956 () Bool)

(declare-fun res!955354 () Bool)

(declare-fun e!1425218 () Bool)

(assert (=> d!664956 (=> res!955354 e!1425218)))

(assert (=> d!664956 (= res!955354 ((_ is Nil!26204) (exprs!2461 context!86)))))

(assert (=> d!664956 (= (forall!5359 (exprs!2461 context!86) lambda!84267) e!1425218)))

(declare-fun b!2230050 () Bool)

(declare-fun e!1425219 () Bool)

(assert (=> b!2230050 (= e!1425218 e!1425219)))

(declare-fun res!955355 () Bool)

(assert (=> b!2230050 (=> (not res!955355) (not e!1425219))))

(assert (=> b!2230050 (= res!955355 (dynLambda!11522 lambda!84267 (h!31605 (exprs!2461 context!86))))))

(declare-fun b!2230051 () Bool)

(assert (=> b!2230051 (= e!1425219 (forall!5359 (t!199713 (exprs!2461 context!86)) lambda!84267))))

(assert (= (and d!664956 (not res!955354)) b!2230050))

(assert (= (and b!2230050 res!955355) b!2230051))

(declare-fun b_lambda!71647 () Bool)

(assert (=> (not b_lambda!71647) (not b!2230050)))

(declare-fun m!2667268 () Bool)

(assert (=> b!2230050 m!2667268))

(declare-fun m!2667270 () Bool)

(assert (=> b!2230051 m!2667270))

(assert (=> d!664916 d!664956))

(declare-fun d!664958 () Bool)

(assert (=> d!664958 (= (get!7906 lt!830513) (v!29793 lt!830513))))

(assert (=> b!2229891 d!664958))

(declare-fun b!2230074 () Bool)

(declare-fun e!1425236 () (InoxSet Context!3922))

(assert (=> b!2230074 (= e!1425236 (store ((as const (Array Context!3922 Bool)) false) context!86 true))))

(declare-fun b!2230075 () Bool)

(declare-fun e!1425237 () (InoxSet Context!3922))

(declare-fun call!133848 () (InoxSet Context!3922))

(declare-fun call!133845 () (InoxSet Context!3922))

(assert (=> b!2230075 (= e!1425237 ((_ map or) call!133848 call!133845))))

(declare-fun b!2230076 () Bool)

(declare-fun c!355768 () Bool)

(assert (=> b!2230076 (= c!355768 ((_ is Star!6413) expr!64))))

(declare-fun e!1425235 () (InoxSet Context!3922))

(declare-fun e!1425233 () (InoxSet Context!3922))

(assert (=> b!2230076 (= e!1425235 e!1425233)))

(declare-fun bm!133840 () Bool)

(declare-fun call!133846 () List!26298)

(declare-fun c!355767 () Bool)

(assert (=> bm!133840 (= call!133848 (derivationStepZipperDown!43 (ite c!355767 (regTwo!13339 expr!64) (regOne!13338 expr!64)) (ite c!355767 context!86 (Context!3923 call!133846)) a!1167))))

(declare-fun b!2230077 () Bool)

(declare-fun e!1425232 () (InoxSet Context!3922))

(declare-fun call!133847 () (InoxSet Context!3922))

(assert (=> b!2230077 (= e!1425232 ((_ map or) call!133847 call!133848))))

(declare-fun b!2230078 () Bool)

(assert (=> b!2230078 (= e!1425236 e!1425232)))

(assert (=> b!2230078 (= c!355767 ((_ is Union!6413) expr!64))))

(declare-fun b!2230079 () Bool)

(declare-fun call!133850 () (InoxSet Context!3922))

(assert (=> b!2230079 (= e!1425233 call!133850)))

(declare-fun b!2230080 () Bool)

(assert (=> b!2230080 (= e!1425233 ((as const (Array Context!3922 Bool)) false))))

(declare-fun d!664960 () Bool)

(declare-fun c!355770 () Bool)

(assert (=> d!664960 (= c!355770 (and ((_ is ElementMatch!6413) expr!64) (= (c!355739 expr!64) a!1167)))))

(assert (=> d!664960 (= (derivationStepZipperDown!43 expr!64 context!86 a!1167) e!1425236)))

(declare-fun bm!133841 () Bool)

(assert (=> bm!133841 (= call!133850 call!133845)))

(declare-fun b!2230081 () Bool)

(assert (=> b!2230081 (= e!1425237 e!1425235)))

(declare-fun c!355771 () Bool)

(assert (=> b!2230081 (= c!355771 ((_ is Concat!10751) expr!64))))

(declare-fun bm!133842 () Bool)

(assert (=> bm!133842 (= call!133845 call!133847)))

(declare-fun b!2230082 () Bool)

(assert (=> b!2230082 (= e!1425235 call!133850)))

(declare-fun b!2230083 () Bool)

(declare-fun c!355769 () Bool)

(declare-fun e!1425234 () Bool)

(assert (=> b!2230083 (= c!355769 e!1425234)))

(declare-fun res!955358 () Bool)

(assert (=> b!2230083 (=> (not res!955358) (not e!1425234))))

(assert (=> b!2230083 (= res!955358 ((_ is Concat!10751) expr!64))))

(assert (=> b!2230083 (= e!1425232 e!1425237)))

(declare-fun bm!133843 () Bool)

(declare-fun call!133849 () List!26298)

(assert (=> bm!133843 (= call!133847 (derivationStepZipperDown!43 (ite c!355767 (regOne!13339 expr!64) (ite c!355769 (regTwo!13338 expr!64) (ite c!355771 (regOne!13338 expr!64) (reg!6742 expr!64)))) (ite (or c!355767 c!355769) context!86 (Context!3923 call!133849)) a!1167))))

(declare-fun bm!133844 () Bool)

(assert (=> bm!133844 (= call!133846 ($colon$colon!516 (exprs!2461 context!86) (ite (or c!355769 c!355771) (regTwo!13338 expr!64) expr!64)))))

(declare-fun b!2230084 () Bool)

(assert (=> b!2230084 (= e!1425234 (nullable!1762 (regOne!13338 expr!64)))))

(declare-fun bm!133845 () Bool)

(assert (=> bm!133845 (= call!133849 call!133846)))

(assert (= (and d!664960 c!355770) b!2230074))

(assert (= (and d!664960 (not c!355770)) b!2230078))

(assert (= (and b!2230078 c!355767) b!2230077))

(assert (= (and b!2230078 (not c!355767)) b!2230083))

(assert (= (and b!2230083 res!955358) b!2230084))

(assert (= (and b!2230083 c!355769) b!2230075))

(assert (= (and b!2230083 (not c!355769)) b!2230081))

(assert (= (and b!2230081 c!355771) b!2230082))

(assert (= (and b!2230081 (not c!355771)) b!2230076))

(assert (= (and b!2230076 c!355768) b!2230079))

(assert (= (and b!2230076 (not c!355768)) b!2230080))

(assert (= (or b!2230082 b!2230079) bm!133845))

(assert (= (or b!2230082 b!2230079) bm!133841))

(assert (= (or b!2230075 bm!133845) bm!133844))

(assert (= (or b!2230075 bm!133841) bm!133842))

(assert (= (or b!2230077 b!2230075) bm!133840))

(assert (= (or b!2230077 bm!133842) bm!133843))

(declare-fun m!2667272 () Bool)

(assert (=> bm!133840 m!2667272))

(declare-fun m!2667274 () Bool)

(assert (=> bm!133844 m!2667274))

(declare-fun m!2667276 () Bool)

(assert (=> bm!133843 m!2667276))

(assert (=> b!2230084 m!2667131))

(declare-fun m!2667278 () Bool)

(assert (=> b!2230074 m!2667278))

(assert (=> b!2229891 d!664960))

(declare-fun bs!453830 () Bool)

(declare-fun d!664962 () Bool)

(assert (= bs!453830 (and d!664962 d!664938)))

(declare-fun lambda!84279 () Int)

(assert (=> bs!453830 (= lambda!84279 lambda!84273)))

(declare-fun bs!453831 () Bool)

(assert (= bs!453831 (and d!664962 d!664940)))

(assert (=> bs!453831 (= lambda!84279 lambda!84274)))

(declare-fun bs!453832 () Bool)

(assert (= bs!453832 (and d!664962 d!664954)))

(assert (=> bs!453832 (= lambda!84279 lambda!84278)))

(declare-fun bs!453833 () Bool)

(assert (= bs!453833 (and d!664962 d!664924)))

(assert (=> bs!453833 (= lambda!84279 lambda!84268)))

(declare-fun bs!453834 () Bool)

(assert (= bs!453834 (and d!664962 d!664948)))

(assert (=> bs!453834 (= lambda!84279 lambda!84276)))

(declare-fun bs!453835 () Bool)

(assert (= bs!453835 (and d!664962 d!664902)))

(assert (=> bs!453835 (= lambda!84279 lambda!84266)))

(declare-fun bs!453836 () Bool)

(assert (= bs!453836 (and d!664962 d!664952)))

(assert (=> bs!453836 (= lambda!84279 lambda!84277)))

(declare-fun bs!453837 () Bool)

(assert (= bs!453837 (and d!664962 d!664944)))

(assert (=> bs!453837 (= lambda!84279 lambda!84275)))

(declare-fun bs!453838 () Bool)

(assert (= bs!453838 (and d!664962 d!664926)))

(assert (=> bs!453838 (= lambda!84279 lambda!84269)))

(declare-fun bs!453839 () Bool)

(assert (= bs!453839 (and d!664962 d!664916)))

(assert (=> bs!453839 (= lambda!84279 lambda!84267)))

(assert (=> d!664962 (= (inv!35584 (_2!15195 (_1!15196 (h!31606 mapDefault!14369)))) (forall!5359 (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapDefault!14369)))) lambda!84279))))

(declare-fun bs!453840 () Bool)

(assert (= bs!453840 d!664962))

(declare-fun m!2667280 () Bool)

(assert (=> bs!453840 m!2667280))

(assert (=> b!2229964 d!664962))

(declare-fun bs!453841 () Bool)

(declare-fun d!664964 () Bool)

(assert (= bs!453841 (and d!664964 d!664938)))

(declare-fun lambda!84280 () Int)

(assert (=> bs!453841 (= lambda!84280 lambda!84273)))

(declare-fun bs!453842 () Bool)

(assert (= bs!453842 (and d!664964 d!664940)))

(assert (=> bs!453842 (= lambda!84280 lambda!84274)))

(declare-fun bs!453843 () Bool)

(assert (= bs!453843 (and d!664964 d!664954)))

(assert (=> bs!453843 (= lambda!84280 lambda!84278)))

(declare-fun bs!453844 () Bool)

(assert (= bs!453844 (and d!664964 d!664924)))

(assert (=> bs!453844 (= lambda!84280 lambda!84268)))

(declare-fun bs!453845 () Bool)

(assert (= bs!453845 (and d!664964 d!664948)))

(assert (=> bs!453845 (= lambda!84280 lambda!84276)))

(declare-fun bs!453846 () Bool)

(assert (= bs!453846 (and d!664964 d!664902)))

(assert (=> bs!453846 (= lambda!84280 lambda!84266)))

(declare-fun bs!453847 () Bool)

(assert (= bs!453847 (and d!664964 d!664962)))

(assert (=> bs!453847 (= lambda!84280 lambda!84279)))

(declare-fun bs!453848 () Bool)

(assert (= bs!453848 (and d!664964 d!664952)))

(assert (=> bs!453848 (= lambda!84280 lambda!84277)))

(declare-fun bs!453849 () Bool)

(assert (= bs!453849 (and d!664964 d!664944)))

(assert (=> bs!453849 (= lambda!84280 lambda!84275)))

(declare-fun bs!453850 () Bool)

(assert (= bs!453850 (and d!664964 d!664926)))

(assert (=> bs!453850 (= lambda!84280 lambda!84269)))

(declare-fun bs!453851 () Bool)

(assert (= bs!453851 (and d!664964 d!664916)))

(assert (=> bs!453851 (= lambda!84280 lambda!84267)))

(assert (=> d!664964 (= (inv!35584 setElem!20033) (forall!5359 (exprs!2461 setElem!20033) lambda!84280))))

(declare-fun bs!453852 () Bool)

(assert (= bs!453852 d!664964))

(declare-fun m!2667282 () Bool)

(assert (=> bs!453852 m!2667282))

(assert (=> setNonEmpty!20033 d!664964))

(declare-fun b!2230085 () Bool)

(declare-fun e!1425240 () Bool)

(declare-fun e!1425243 () Bool)

(assert (=> b!2230085 (= e!1425240 e!1425243)))

(declare-fun res!955359 () Bool)

(assert (=> b!2230085 (= res!955359 (not (nullable!1762 (reg!6742 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))))))))

(assert (=> b!2230085 (=> (not res!955359) (not e!1425243))))

(declare-fun b!2230086 () Bool)

(declare-fun e!1425242 () Bool)

(declare-fun call!133851 () Bool)

(assert (=> b!2230086 (= e!1425242 call!133851)))

(declare-fun b!2230087 () Bool)

(declare-fun res!955363 () Bool)

(declare-fun e!1425244 () Bool)

(assert (=> b!2230087 (=> res!955363 e!1425244)))

(assert (=> b!2230087 (= res!955363 (not ((_ is Concat!10751) (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64)))))))))

(declare-fun e!1425241 () Bool)

(assert (=> b!2230087 (= e!1425241 e!1425244)))

(declare-fun d!664966 () Bool)

(declare-fun res!955361 () Bool)

(declare-fun e!1425238 () Bool)

(assert (=> d!664966 (=> res!955361 e!1425238)))

(assert (=> d!664966 (= res!955361 ((_ is ElementMatch!6413) (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))))))

(assert (=> d!664966 (= (validRegex!2388 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))) e!1425238)))

(declare-fun bm!133846 () Bool)

(declare-fun call!133853 () Bool)

(declare-fun call!133852 () Bool)

(assert (=> bm!133846 (= call!133853 call!133852)))

(declare-fun b!2230088 () Bool)

(assert (=> b!2230088 (= e!1425243 call!133852)))

(declare-fun b!2230089 () Bool)

(declare-fun e!1425239 () Bool)

(assert (=> b!2230089 (= e!1425239 call!133851)))

(declare-fun b!2230090 () Bool)

(declare-fun res!955362 () Bool)

(assert (=> b!2230090 (=> (not res!955362) (not e!1425242))))

(assert (=> b!2230090 (= res!955362 call!133853)))

(assert (=> b!2230090 (= e!1425241 e!1425242)))

(declare-fun b!2230091 () Bool)

(assert (=> b!2230091 (= e!1425240 e!1425241)))

(declare-fun c!355772 () Bool)

(assert (=> b!2230091 (= c!355772 ((_ is Union!6413) (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))))))

(declare-fun b!2230092 () Bool)

(assert (=> b!2230092 (= e!1425238 e!1425240)))

(declare-fun c!355773 () Bool)

(assert (=> b!2230092 (= c!355773 ((_ is Star!6413) (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))))))

(declare-fun bm!133847 () Bool)

(assert (=> bm!133847 (= call!133852 (validRegex!2388 (ite c!355773 (reg!6742 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))) (ite c!355772 (regOne!13339 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))) (regOne!13338 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64)))))))))))

(declare-fun b!2230093 () Bool)

(assert (=> b!2230093 (= e!1425244 e!1425239)))

(declare-fun res!955360 () Bool)

(assert (=> b!2230093 (=> (not res!955360) (not e!1425239))))

(assert (=> b!2230093 (= res!955360 call!133853)))

(declare-fun bm!133848 () Bool)

(assert (=> bm!133848 (= call!133851 (validRegex!2388 (ite c!355772 (regTwo!13339 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))) (regTwo!13338 (ite c!355745 (reg!6742 (regTwo!13338 expr!64)) (ite c!355744 (regOne!13339 (regTwo!13338 expr!64)) (regOne!13338 (regTwo!13338 expr!64))))))))))

(assert (= (and d!664966 (not res!955361)) b!2230092))

(assert (= (and b!2230092 c!355773) b!2230085))

(assert (= (and b!2230092 (not c!355773)) b!2230091))

(assert (= (and b!2230085 res!955359) b!2230088))

(assert (= (and b!2230091 c!355772) b!2230090))

(assert (= (and b!2230091 (not c!355772)) b!2230087))

(assert (= (and b!2230090 res!955362) b!2230086))

(assert (= (and b!2230087 (not res!955363)) b!2230093))

(assert (= (and b!2230093 res!955360) b!2230089))

(assert (= (or b!2230086 b!2230089) bm!133848))

(assert (= (or b!2230090 b!2230093) bm!133846))

(assert (= (or b!2230088 bm!133846) bm!133847))

(declare-fun m!2667284 () Bool)

(assert (=> b!2230085 m!2667284))

(declare-fun m!2667286 () Bool)

(assert (=> bm!133847 m!2667286))

(declare-fun m!2667288 () Bool)

(assert (=> bm!133848 m!2667288))

(assert (=> bm!133808 d!664966))

(declare-fun bs!453853 () Bool)

(declare-fun d!664968 () Bool)

(assert (= bs!453853 (and d!664968 d!664938)))

(declare-fun lambda!84281 () Int)

(assert (=> bs!453853 (= lambda!84281 lambda!84273)))

(declare-fun bs!453854 () Bool)

(assert (= bs!453854 (and d!664968 d!664954)))

(assert (=> bs!453854 (= lambda!84281 lambda!84278)))

(declare-fun bs!453855 () Bool)

(assert (= bs!453855 (and d!664968 d!664924)))

(assert (=> bs!453855 (= lambda!84281 lambda!84268)))

(declare-fun bs!453856 () Bool)

(assert (= bs!453856 (and d!664968 d!664948)))

(assert (=> bs!453856 (= lambda!84281 lambda!84276)))

(declare-fun bs!453857 () Bool)

(assert (= bs!453857 (and d!664968 d!664902)))

(assert (=> bs!453857 (= lambda!84281 lambda!84266)))

(declare-fun bs!453858 () Bool)

(assert (= bs!453858 (and d!664968 d!664962)))

(assert (=> bs!453858 (= lambda!84281 lambda!84279)))

(declare-fun bs!453859 () Bool)

(assert (= bs!453859 (and d!664968 d!664952)))

(assert (=> bs!453859 (= lambda!84281 lambda!84277)))

(declare-fun bs!453860 () Bool)

(assert (= bs!453860 (and d!664968 d!664944)))

(assert (=> bs!453860 (= lambda!84281 lambda!84275)))

(declare-fun bs!453861 () Bool)

(assert (= bs!453861 (and d!664968 d!664926)))

(assert (=> bs!453861 (= lambda!84281 lambda!84269)))

(declare-fun bs!453862 () Bool)

(assert (= bs!453862 (and d!664968 d!664916)))

(assert (=> bs!453862 (= lambda!84281 lambda!84267)))

(declare-fun bs!453863 () Bool)

(assert (= bs!453863 (and d!664968 d!664940)))

(assert (=> bs!453863 (= lambda!84281 lambda!84274)))

(declare-fun bs!453864 () Bool)

(assert (= bs!453864 (and d!664968 d!664964)))

(assert (=> bs!453864 (= lambda!84281 lambda!84280)))

(assert (=> d!664968 (= (inv!35584 setElem!20032) (forall!5359 (exprs!2461 setElem!20032) lambda!84281))))

(declare-fun bs!453865 () Bool)

(assert (= bs!453865 d!664968))

(declare-fun m!2667290 () Bool)

(assert (=> bs!453865 m!2667290))

(assert (=> setNonEmpty!20032 d!664968))

(declare-fun bs!453866 () Bool)

(declare-fun d!664970 () Bool)

(assert (= bs!453866 (and d!664970 d!664968)))

(declare-fun lambda!84282 () Int)

(assert (=> bs!453866 (= lambda!84282 lambda!84281)))

(declare-fun bs!453867 () Bool)

(assert (= bs!453867 (and d!664970 d!664938)))

(assert (=> bs!453867 (= lambda!84282 lambda!84273)))

(declare-fun bs!453868 () Bool)

(assert (= bs!453868 (and d!664970 d!664954)))

(assert (=> bs!453868 (= lambda!84282 lambda!84278)))

(declare-fun bs!453869 () Bool)

(assert (= bs!453869 (and d!664970 d!664924)))

(assert (=> bs!453869 (= lambda!84282 lambda!84268)))

(declare-fun bs!453870 () Bool)

(assert (= bs!453870 (and d!664970 d!664948)))

(assert (=> bs!453870 (= lambda!84282 lambda!84276)))

(declare-fun bs!453871 () Bool)

(assert (= bs!453871 (and d!664970 d!664902)))

(assert (=> bs!453871 (= lambda!84282 lambda!84266)))

(declare-fun bs!453872 () Bool)

(assert (= bs!453872 (and d!664970 d!664962)))

(assert (=> bs!453872 (= lambda!84282 lambda!84279)))

(declare-fun bs!453873 () Bool)

(assert (= bs!453873 (and d!664970 d!664952)))

(assert (=> bs!453873 (= lambda!84282 lambda!84277)))

(declare-fun bs!453874 () Bool)

(assert (= bs!453874 (and d!664970 d!664944)))

(assert (=> bs!453874 (= lambda!84282 lambda!84275)))

(declare-fun bs!453875 () Bool)

(assert (= bs!453875 (and d!664970 d!664926)))

(assert (=> bs!453875 (= lambda!84282 lambda!84269)))

(declare-fun bs!453876 () Bool)

(assert (= bs!453876 (and d!664970 d!664916)))

(assert (=> bs!453876 (= lambda!84282 lambda!84267)))

(declare-fun bs!453877 () Bool)

(assert (= bs!453877 (and d!664970 d!664940)))

(assert (=> bs!453877 (= lambda!84282 lambda!84274)))

(declare-fun bs!453878 () Bool)

(assert (= bs!453878 (and d!664970 d!664964)))

(assert (=> bs!453878 (= lambda!84282 lambda!84280)))

(assert (=> d!664970 (= (inv!35584 setElem!20039) (forall!5359 (exprs!2461 setElem!20039) lambda!84282))))

(declare-fun bs!453879 () Bool)

(assert (= bs!453879 d!664970))

(declare-fun m!2667292 () Bool)

(assert (=> bs!453879 m!2667292))

(assert (=> setNonEmpty!20039 d!664970))

(declare-fun e!1425245 () Bool)

(assert (=> b!2229978 (= tp!698427 e!1425245)))

(declare-fun b!2230096 () Bool)

(declare-fun tp!698440 () Bool)

(assert (=> b!2230096 (= e!1425245 tp!698440)))

(declare-fun b!2230094 () Bool)

(assert (=> b!2230094 (= e!1425245 tp_is_empty!10051)))

(declare-fun b!2230095 () Bool)

(declare-fun tp!698436 () Bool)

(declare-fun tp!698439 () Bool)

(assert (=> b!2230095 (= e!1425245 (and tp!698436 tp!698439))))

(declare-fun b!2230097 () Bool)

(declare-fun tp!698438 () Bool)

(declare-fun tp!698437 () Bool)

(assert (=> b!2230097 (= e!1425245 (and tp!698438 tp!698437))))

(assert (= (and b!2229978 ((_ is ElementMatch!6413) (regOne!13339 (regTwo!13338 expr!64)))) b!2230094))

(assert (= (and b!2229978 ((_ is Concat!10751) (regOne!13339 (regTwo!13338 expr!64)))) b!2230095))

(assert (= (and b!2229978 ((_ is Star!6413) (regOne!13339 (regTwo!13338 expr!64)))) b!2230096))

(assert (= (and b!2229978 ((_ is Union!6413) (regOne!13339 (regTwo!13338 expr!64)))) b!2230097))

(declare-fun e!1425246 () Bool)

(assert (=> b!2229978 (= tp!698426 e!1425246)))

(declare-fun b!2230100 () Bool)

(declare-fun tp!698445 () Bool)

(assert (=> b!2230100 (= e!1425246 tp!698445)))

(declare-fun b!2230098 () Bool)

(assert (=> b!2230098 (= e!1425246 tp_is_empty!10051)))

(declare-fun b!2230099 () Bool)

(declare-fun tp!698441 () Bool)

(declare-fun tp!698444 () Bool)

(assert (=> b!2230099 (= e!1425246 (and tp!698441 tp!698444))))

(declare-fun b!2230101 () Bool)

(declare-fun tp!698443 () Bool)

(declare-fun tp!698442 () Bool)

(assert (=> b!2230101 (= e!1425246 (and tp!698443 tp!698442))))

(assert (= (and b!2229978 ((_ is ElementMatch!6413) (regTwo!13339 (regTwo!13338 expr!64)))) b!2230098))

(assert (= (and b!2229978 ((_ is Concat!10751) (regTwo!13339 (regTwo!13338 expr!64)))) b!2230099))

(assert (= (and b!2229978 ((_ is Star!6413) (regTwo!13339 (regTwo!13338 expr!64)))) b!2230100))

(assert (= (and b!2229978 ((_ is Union!6413) (regTwo!13339 (regTwo!13338 expr!64)))) b!2230101))

(declare-fun e!1425247 () Bool)

(assert (=> b!2229977 (= tp!698429 e!1425247)))

(declare-fun b!2230104 () Bool)

(declare-fun tp!698450 () Bool)

(assert (=> b!2230104 (= e!1425247 tp!698450)))

(declare-fun b!2230102 () Bool)

(assert (=> b!2230102 (= e!1425247 tp_is_empty!10051)))

(declare-fun b!2230103 () Bool)

(declare-fun tp!698446 () Bool)

(declare-fun tp!698449 () Bool)

(assert (=> b!2230103 (= e!1425247 (and tp!698446 tp!698449))))

(declare-fun b!2230105 () Bool)

(declare-fun tp!698448 () Bool)

(declare-fun tp!698447 () Bool)

(assert (=> b!2230105 (= e!1425247 (and tp!698448 tp!698447))))

(assert (= (and b!2229977 ((_ is ElementMatch!6413) (reg!6742 (regTwo!13338 expr!64)))) b!2230102))

(assert (= (and b!2229977 ((_ is Concat!10751) (reg!6742 (regTwo!13338 expr!64)))) b!2230103))

(assert (= (and b!2229977 ((_ is Star!6413) (reg!6742 (regTwo!13338 expr!64)))) b!2230104))

(assert (= (and b!2229977 ((_ is Union!6413) (reg!6742 (regTwo!13338 expr!64)))) b!2230105))

(declare-fun e!1425248 () Bool)

(assert (=> b!2229942 (= tp!698372 e!1425248)))

(declare-fun b!2230108 () Bool)

(declare-fun tp!698455 () Bool)

(assert (=> b!2230108 (= e!1425248 tp!698455)))

(declare-fun b!2230106 () Bool)

(assert (=> b!2230106 (= e!1425248 tp_is_empty!10051)))

(declare-fun b!2230107 () Bool)

(declare-fun tp!698451 () Bool)

(declare-fun tp!698454 () Bool)

(assert (=> b!2230107 (= e!1425248 (and tp!698451 tp!698454))))

(declare-fun b!2230109 () Bool)

(declare-fun tp!698453 () Bool)

(declare-fun tp!698452 () Bool)

(assert (=> b!2230109 (= e!1425248 (and tp!698453 tp!698452))))

(assert (= (and b!2229942 ((_ is ElementMatch!6413) (regOne!13338 (regTwo!13339 expr!64)))) b!2230106))

(assert (= (and b!2229942 ((_ is Concat!10751) (regOne!13338 (regTwo!13339 expr!64)))) b!2230107))

(assert (= (and b!2229942 ((_ is Star!6413) (regOne!13338 (regTwo!13339 expr!64)))) b!2230108))

(assert (= (and b!2229942 ((_ is Union!6413) (regOne!13338 (regTwo!13339 expr!64)))) b!2230109))

(declare-fun e!1425249 () Bool)

(assert (=> b!2229942 (= tp!698375 e!1425249)))

(declare-fun b!2230112 () Bool)

(declare-fun tp!698460 () Bool)

(assert (=> b!2230112 (= e!1425249 tp!698460)))

(declare-fun b!2230110 () Bool)

(assert (=> b!2230110 (= e!1425249 tp_is_empty!10051)))

(declare-fun b!2230111 () Bool)

(declare-fun tp!698456 () Bool)

(declare-fun tp!698459 () Bool)

(assert (=> b!2230111 (= e!1425249 (and tp!698456 tp!698459))))

(declare-fun b!2230113 () Bool)

(declare-fun tp!698458 () Bool)

(declare-fun tp!698457 () Bool)

(assert (=> b!2230113 (= e!1425249 (and tp!698458 tp!698457))))

(assert (= (and b!2229942 ((_ is ElementMatch!6413) (regTwo!13338 (regTwo!13339 expr!64)))) b!2230110))

(assert (= (and b!2229942 ((_ is Concat!10751) (regTwo!13338 (regTwo!13339 expr!64)))) b!2230111))

(assert (= (and b!2229942 ((_ is Star!6413) (regTwo!13338 (regTwo!13339 expr!64)))) b!2230112))

(assert (= (and b!2229942 ((_ is Union!6413) (regTwo!13338 (regTwo!13339 expr!64)))) b!2230113))

(declare-fun e!1425250 () Bool)

(assert (=> b!2229976 (= tp!698425 e!1425250)))

(declare-fun b!2230116 () Bool)

(declare-fun tp!698465 () Bool)

(assert (=> b!2230116 (= e!1425250 tp!698465)))

(declare-fun b!2230114 () Bool)

(assert (=> b!2230114 (= e!1425250 tp_is_empty!10051)))

(declare-fun b!2230115 () Bool)

(declare-fun tp!698461 () Bool)

(declare-fun tp!698464 () Bool)

(assert (=> b!2230115 (= e!1425250 (and tp!698461 tp!698464))))

(declare-fun b!2230117 () Bool)

(declare-fun tp!698463 () Bool)

(declare-fun tp!698462 () Bool)

(assert (=> b!2230117 (= e!1425250 (and tp!698463 tp!698462))))

(assert (= (and b!2229976 ((_ is ElementMatch!6413) (regOne!13338 (regTwo!13338 expr!64)))) b!2230114))

(assert (= (and b!2229976 ((_ is Concat!10751) (regOne!13338 (regTwo!13338 expr!64)))) b!2230115))

(assert (= (and b!2229976 ((_ is Star!6413) (regOne!13338 (regTwo!13338 expr!64)))) b!2230116))

(assert (= (and b!2229976 ((_ is Union!6413) (regOne!13338 (regTwo!13338 expr!64)))) b!2230117))

(declare-fun e!1425251 () Bool)

(assert (=> b!2229976 (= tp!698428 e!1425251)))

(declare-fun b!2230120 () Bool)

(declare-fun tp!698470 () Bool)

(assert (=> b!2230120 (= e!1425251 tp!698470)))

(declare-fun b!2230118 () Bool)

(assert (=> b!2230118 (= e!1425251 tp_is_empty!10051)))

(declare-fun b!2230119 () Bool)

(declare-fun tp!698466 () Bool)

(declare-fun tp!698469 () Bool)

(assert (=> b!2230119 (= e!1425251 (and tp!698466 tp!698469))))

(declare-fun b!2230121 () Bool)

(declare-fun tp!698468 () Bool)

(declare-fun tp!698467 () Bool)

(assert (=> b!2230121 (= e!1425251 (and tp!698468 tp!698467))))

(assert (= (and b!2229976 ((_ is ElementMatch!6413) (regTwo!13338 (regTwo!13338 expr!64)))) b!2230118))

(assert (= (and b!2229976 ((_ is Concat!10751) (regTwo!13338 (regTwo!13338 expr!64)))) b!2230119))

(assert (= (and b!2229976 ((_ is Star!6413) (regTwo!13338 (regTwo!13338 expr!64)))) b!2230120))

(assert (= (and b!2229976 ((_ is Union!6413) (regTwo!13338 (regTwo!13338 expr!64)))) b!2230121))

(declare-fun e!1425252 () Bool)

(assert (=> b!2229943 (= tp!698376 e!1425252)))

(declare-fun b!2230124 () Bool)

(declare-fun tp!698475 () Bool)

(assert (=> b!2230124 (= e!1425252 tp!698475)))

(declare-fun b!2230122 () Bool)

(assert (=> b!2230122 (= e!1425252 tp_is_empty!10051)))

(declare-fun b!2230123 () Bool)

(declare-fun tp!698471 () Bool)

(declare-fun tp!698474 () Bool)

(assert (=> b!2230123 (= e!1425252 (and tp!698471 tp!698474))))

(declare-fun b!2230125 () Bool)

(declare-fun tp!698473 () Bool)

(declare-fun tp!698472 () Bool)

(assert (=> b!2230125 (= e!1425252 (and tp!698473 tp!698472))))

(assert (= (and b!2229943 ((_ is ElementMatch!6413) (reg!6742 (regTwo!13339 expr!64)))) b!2230122))

(assert (= (and b!2229943 ((_ is Concat!10751) (reg!6742 (regTwo!13339 expr!64)))) b!2230123))

(assert (= (and b!2229943 ((_ is Star!6413) (reg!6742 (regTwo!13339 expr!64)))) b!2230124))

(assert (= (and b!2229943 ((_ is Union!6413) (reg!6742 (regTwo!13339 expr!64)))) b!2230125))

(declare-fun e!1425253 () Bool)

(assert (=> b!2229967 (= tp!698413 e!1425253)))

(declare-fun b!2230128 () Bool)

(declare-fun tp!698480 () Bool)

(assert (=> b!2230128 (= e!1425253 tp!698480)))

(declare-fun b!2230126 () Bool)

(assert (=> b!2230126 (= e!1425253 tp_is_empty!10051)))

(declare-fun b!2230127 () Bool)

(declare-fun tp!698476 () Bool)

(declare-fun tp!698479 () Bool)

(assert (=> b!2230127 (= e!1425253 (and tp!698476 tp!698479))))

(declare-fun b!2230129 () Bool)

(declare-fun tp!698478 () Bool)

(declare-fun tp!698477 () Bool)

(assert (=> b!2230129 (= e!1425253 (and tp!698478 tp!698477))))

(assert (= (and b!2229967 ((_ is ElementMatch!6413) (_1!15195 (_1!15196 (h!31606 mapValue!14366))))) b!2230126))

(assert (= (and b!2229967 ((_ is Concat!10751) (_1!15195 (_1!15196 (h!31606 mapValue!14366))))) b!2230127))

(assert (= (and b!2229967 ((_ is Star!6413) (_1!15195 (_1!15196 (h!31606 mapValue!14366))))) b!2230128))

(assert (= (and b!2229967 ((_ is Union!6413) (_1!15195 (_1!15196 (h!31606 mapValue!14366))))) b!2230129))

(declare-fun setIsEmpty!20045 () Bool)

(declare-fun setRes!20045 () Bool)

(assert (=> setIsEmpty!20045 setRes!20045))

(declare-fun b!2230130 () Bool)

(declare-fun e!1425254 () Bool)

(declare-fun tp!698482 () Bool)

(assert (=> b!2230130 (= e!1425254 tp!698482)))

(declare-fun e!1425256 () Bool)

(declare-fun setNonEmpty!20045 () Bool)

(declare-fun setElem!20045 () Context!3922)

(declare-fun tp!698481 () Bool)

(assert (=> setNonEmpty!20045 (= setRes!20045 (and tp!698481 (inv!35584 setElem!20045) e!1425256))))

(declare-fun setRest!20045 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20045 (= (_2!15196 (h!31606 (t!199714 mapValue!14366))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20045 true) setRest!20045))))

(declare-fun e!1425255 () Bool)

(assert (=> b!2229967 (= tp!698414 e!1425255)))

(declare-fun b!2230131 () Bool)

(declare-fun tp!698483 () Bool)

(assert (=> b!2230131 (= e!1425256 tp!698483)))

(declare-fun tp!698485 () Bool)

(declare-fun b!2230132 () Bool)

(declare-fun tp!698484 () Bool)

(assert (=> b!2230132 (= e!1425255 (and tp!698484 (inv!35584 (_2!15195 (_1!15196 (h!31606 (t!199714 mapValue!14366))))) e!1425254 tp_is_empty!10051 setRes!20045 tp!698485))))

(declare-fun condSetEmpty!20045 () Bool)

(assert (=> b!2230132 (= condSetEmpty!20045 (= (_2!15196 (h!31606 (t!199714 mapValue!14366))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2230132 b!2230130))

(assert (= (and b!2230132 condSetEmpty!20045) setIsEmpty!20045))

(assert (= (and b!2230132 (not condSetEmpty!20045)) setNonEmpty!20045))

(assert (= setNonEmpty!20045 b!2230131))

(assert (= (and b!2229967 ((_ is Cons!26205) (t!199714 mapValue!14366))) b!2230132))

(declare-fun m!2667294 () Bool)

(assert (=> setNonEmpty!20045 m!2667294))

(declare-fun m!2667296 () Bool)

(assert (=> b!2230132 m!2667296))

(declare-fun e!1425257 () Bool)

(assert (=> b!2229970 (= tp!698418 e!1425257)))

(declare-fun b!2230135 () Bool)

(declare-fun tp!698490 () Bool)

(assert (=> b!2230135 (= e!1425257 tp!698490)))

(declare-fun b!2230133 () Bool)

(assert (=> b!2230133 (= e!1425257 tp_is_empty!10051)))

(declare-fun b!2230134 () Bool)

(declare-fun tp!698486 () Bool)

(declare-fun tp!698489 () Bool)

(assert (=> b!2230134 (= e!1425257 (and tp!698486 tp!698489))))

(declare-fun b!2230136 () Bool)

(declare-fun tp!698488 () Bool)

(declare-fun tp!698487 () Bool)

(assert (=> b!2230136 (= e!1425257 (and tp!698488 tp!698487))))

(assert (= (and b!2229970 ((_ is ElementMatch!6413) (_1!15195 (_1!15196 (h!31606 mapDefault!14366))))) b!2230133))

(assert (= (and b!2229970 ((_ is Concat!10751) (_1!15195 (_1!15196 (h!31606 mapDefault!14366))))) b!2230134))

(assert (= (and b!2229970 ((_ is Star!6413) (_1!15195 (_1!15196 (h!31606 mapDefault!14366))))) b!2230135))

(assert (= (and b!2229970 ((_ is Union!6413) (_1!15195 (_1!15196 (h!31606 mapDefault!14366))))) b!2230136))

(declare-fun setIsEmpty!20046 () Bool)

(declare-fun setRes!20046 () Bool)

(assert (=> setIsEmpty!20046 setRes!20046))

(declare-fun b!2230137 () Bool)

(declare-fun e!1425258 () Bool)

(declare-fun tp!698492 () Bool)

(assert (=> b!2230137 (= e!1425258 tp!698492)))

(declare-fun setNonEmpty!20046 () Bool)

(declare-fun tp!698491 () Bool)

(declare-fun setElem!20046 () Context!3922)

(declare-fun e!1425260 () Bool)

(assert (=> setNonEmpty!20046 (= setRes!20046 (and tp!698491 (inv!35584 setElem!20046) e!1425260))))

(declare-fun setRest!20046 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20046 (= (_2!15196 (h!31606 (t!199714 mapDefault!14366))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20046 true) setRest!20046))))

(declare-fun e!1425259 () Bool)

(assert (=> b!2229970 (= tp!698419 e!1425259)))

(declare-fun b!2230138 () Bool)

(declare-fun tp!698493 () Bool)

(assert (=> b!2230138 (= e!1425260 tp!698493)))

(declare-fun tp!698494 () Bool)

(declare-fun tp!698495 () Bool)

(declare-fun b!2230139 () Bool)

(assert (=> b!2230139 (= e!1425259 (and tp!698494 (inv!35584 (_2!15195 (_1!15196 (h!31606 (t!199714 mapDefault!14366))))) e!1425258 tp_is_empty!10051 setRes!20046 tp!698495))))

(declare-fun condSetEmpty!20046 () Bool)

(assert (=> b!2230139 (= condSetEmpty!20046 (= (_2!15196 (h!31606 (t!199714 mapDefault!14366))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2230139 b!2230137))

(assert (= (and b!2230139 condSetEmpty!20046) setIsEmpty!20046))

(assert (= (and b!2230139 (not condSetEmpty!20046)) setNonEmpty!20046))

(assert (= setNonEmpty!20046 b!2230138))

(assert (= (and b!2229970 ((_ is Cons!26205) (t!199714 mapDefault!14366))) b!2230139))

(declare-fun m!2667298 () Bool)

(assert (=> setNonEmpty!20046 m!2667298))

(declare-fun m!2667300 () Bool)

(assert (=> b!2230139 m!2667300))

(declare-fun e!1425261 () Bool)

(assert (=> b!2229944 (= tp!698374 e!1425261)))

(declare-fun b!2230142 () Bool)

(declare-fun tp!698500 () Bool)

(assert (=> b!2230142 (= e!1425261 tp!698500)))

(declare-fun b!2230140 () Bool)

(assert (=> b!2230140 (= e!1425261 tp_is_empty!10051)))

(declare-fun b!2230141 () Bool)

(declare-fun tp!698496 () Bool)

(declare-fun tp!698499 () Bool)

(assert (=> b!2230141 (= e!1425261 (and tp!698496 tp!698499))))

(declare-fun b!2230143 () Bool)

(declare-fun tp!698498 () Bool)

(declare-fun tp!698497 () Bool)

(assert (=> b!2230143 (= e!1425261 (and tp!698498 tp!698497))))

(assert (= (and b!2229944 ((_ is ElementMatch!6413) (regOne!13339 (regTwo!13339 expr!64)))) b!2230140))

(assert (= (and b!2229944 ((_ is Concat!10751) (regOne!13339 (regTwo!13339 expr!64)))) b!2230141))

(assert (= (and b!2229944 ((_ is Star!6413) (regOne!13339 (regTwo!13339 expr!64)))) b!2230142))

(assert (= (and b!2229944 ((_ is Union!6413) (regOne!13339 (regTwo!13339 expr!64)))) b!2230143))

(declare-fun e!1425262 () Bool)

(assert (=> b!2229944 (= tp!698373 e!1425262)))

(declare-fun b!2230146 () Bool)

(declare-fun tp!698505 () Bool)

(assert (=> b!2230146 (= e!1425262 tp!698505)))

(declare-fun b!2230144 () Bool)

(assert (=> b!2230144 (= e!1425262 tp_is_empty!10051)))

(declare-fun b!2230145 () Bool)

(declare-fun tp!698501 () Bool)

(declare-fun tp!698504 () Bool)

(assert (=> b!2230145 (= e!1425262 (and tp!698501 tp!698504))))

(declare-fun b!2230147 () Bool)

(declare-fun tp!698503 () Bool)

(declare-fun tp!698502 () Bool)

(assert (=> b!2230147 (= e!1425262 (and tp!698503 tp!698502))))

(assert (= (and b!2229944 ((_ is ElementMatch!6413) (regTwo!13339 (regTwo!13339 expr!64)))) b!2230144))

(assert (= (and b!2229944 ((_ is Concat!10751) (regTwo!13339 (regTwo!13339 expr!64)))) b!2230145))

(assert (= (and b!2229944 ((_ is Star!6413) (regTwo!13339 (regTwo!13339 expr!64)))) b!2230146))

(assert (= (and b!2229944 ((_ is Union!6413) (regTwo!13339 (regTwo!13339 expr!64)))) b!2230147))

(declare-fun b!2230148 () Bool)

(declare-fun e!1425263 () Bool)

(declare-fun tp!698506 () Bool)

(declare-fun tp!698507 () Bool)

(assert (=> b!2230148 (= e!1425263 (and tp!698506 tp!698507))))

(assert (=> b!2229966 (= tp!698412 e!1425263)))

(assert (= (and b!2229966 ((_ is Cons!26204) (exprs!2461 setElem!20040))) b!2230148))

(declare-fun b!2230149 () Bool)

(declare-fun e!1425264 () Bool)

(declare-fun tp!698508 () Bool)

(declare-fun tp!698509 () Bool)

(assert (=> b!2230149 (= e!1425264 (and tp!698508 tp!698509))))

(assert (=> b!2229969 (= tp!698417 e!1425264)))

(assert (= (and b!2229969 ((_ is Cons!26204) (exprs!2461 setElem!20041))) b!2230149))

(declare-fun e!1425265 () Bool)

(assert (=> b!2229940 (= tp!698369 e!1425265)))

(declare-fun b!2230152 () Bool)

(declare-fun tp!698514 () Bool)

(assert (=> b!2230152 (= e!1425265 tp!698514)))

(declare-fun b!2230150 () Bool)

(assert (=> b!2230150 (= e!1425265 tp_is_empty!10051)))

(declare-fun b!2230151 () Bool)

(declare-fun tp!698510 () Bool)

(declare-fun tp!698513 () Bool)

(assert (=> b!2230151 (= e!1425265 (and tp!698510 tp!698513))))

(declare-fun b!2230153 () Bool)

(declare-fun tp!698512 () Bool)

(declare-fun tp!698511 () Bool)

(assert (=> b!2230153 (= e!1425265 (and tp!698512 tp!698511))))

(assert (= (and b!2229940 ((_ is ElementMatch!6413) (regOne!13339 (regOne!13339 expr!64)))) b!2230150))

(assert (= (and b!2229940 ((_ is Concat!10751) (regOne!13339 (regOne!13339 expr!64)))) b!2230151))

(assert (= (and b!2229940 ((_ is Star!6413) (regOne!13339 (regOne!13339 expr!64)))) b!2230152))

(assert (= (and b!2229940 ((_ is Union!6413) (regOne!13339 (regOne!13339 expr!64)))) b!2230153))

(declare-fun e!1425266 () Bool)

(assert (=> b!2229940 (= tp!698368 e!1425266)))

(declare-fun b!2230156 () Bool)

(declare-fun tp!698519 () Bool)

(assert (=> b!2230156 (= e!1425266 tp!698519)))

(declare-fun b!2230154 () Bool)

(assert (=> b!2230154 (= e!1425266 tp_is_empty!10051)))

(declare-fun b!2230155 () Bool)

(declare-fun tp!698515 () Bool)

(declare-fun tp!698518 () Bool)

(assert (=> b!2230155 (= e!1425266 (and tp!698515 tp!698518))))

(declare-fun b!2230157 () Bool)

(declare-fun tp!698517 () Bool)

(declare-fun tp!698516 () Bool)

(assert (=> b!2230157 (= e!1425266 (and tp!698517 tp!698516))))

(assert (= (and b!2229940 ((_ is ElementMatch!6413) (regTwo!13339 (regOne!13339 expr!64)))) b!2230154))

(assert (= (and b!2229940 ((_ is Concat!10751) (regTwo!13339 (regOne!13339 expr!64)))) b!2230155))

(assert (= (and b!2229940 ((_ is Star!6413) (regTwo!13339 (regOne!13339 expr!64)))) b!2230156))

(assert (= (and b!2229940 ((_ is Union!6413) (regTwo!13339 (regOne!13339 expr!64)))) b!2230157))

(declare-fun b!2230158 () Bool)

(declare-fun e!1425267 () Bool)

(declare-fun tp!698520 () Bool)

(declare-fun tp!698521 () Bool)

(assert (=> b!2230158 (= e!1425267 (and tp!698520 tp!698521))))

(assert (=> b!2229960 (= tp!698408 e!1425267)))

(assert (= (and b!2229960 ((_ is Cons!26204) (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapDefault!14369)))))) b!2230158))

(declare-fun b!2230159 () Bool)

(declare-fun e!1425268 () Bool)

(declare-fun tp!698522 () Bool)

(declare-fun tp!698523 () Bool)

(assert (=> b!2230159 (= e!1425268 (and tp!698522 tp!698523))))

(assert (=> b!2229959 (= tp!698401 e!1425268)))

(assert (= (and b!2229959 ((_ is Cons!26204) (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapValue!14369)))))) b!2230159))

(declare-fun b!2230160 () Bool)

(declare-fun e!1425269 () Bool)

(declare-fun tp!698524 () Bool)

(declare-fun tp!698525 () Bool)

(assert (=> b!2230160 (= e!1425269 (and tp!698524 tp!698525))))

(assert (=> b!2229916 (= tp!698343 e!1425269)))

(assert (= (and b!2229916 ((_ is Cons!26204) (exprs!2461 setElem!20033))) b!2230160))

(declare-fun b!2230161 () Bool)

(declare-fun e!1425270 () Bool)

(declare-fun tp!698526 () Bool)

(declare-fun tp!698527 () Bool)

(assert (=> b!2230161 (= e!1425270 (and tp!698526 tp!698527))))

(assert (=> b!2229913 (= tp!698338 e!1425270)))

(assert (= (and b!2229913 ((_ is Cons!26204) (exprs!2461 setElem!20032))) b!2230161))

(declare-fun condSetEmpty!20049 () Bool)

(assert (=> setNonEmpty!20038 (= condSetEmpty!20049 (= setRest!20038 ((as const (Array Context!3922 Bool)) false)))))

(declare-fun setRes!20049 () Bool)

(assert (=> setNonEmpty!20038 (= tp!698405 setRes!20049)))

(declare-fun setIsEmpty!20049 () Bool)

(assert (=> setIsEmpty!20049 setRes!20049))

(declare-fun setNonEmpty!20049 () Bool)

(declare-fun tp!698532 () Bool)

(declare-fun e!1425273 () Bool)

(declare-fun setElem!20049 () Context!3922)

(assert (=> setNonEmpty!20049 (= setRes!20049 (and tp!698532 (inv!35584 setElem!20049) e!1425273))))

(declare-fun setRest!20049 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20049 (= setRest!20038 ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20049 true) setRest!20049))))

(declare-fun b!2230166 () Bool)

(declare-fun tp!698533 () Bool)

(assert (=> b!2230166 (= e!1425273 tp!698533)))

(assert (= (and setNonEmpty!20038 condSetEmpty!20049) setIsEmpty!20049))

(assert (= (and setNonEmpty!20038 (not condSetEmpty!20049)) setNonEmpty!20049))

(assert (= setNonEmpty!20049 b!2230166))

(declare-fun m!2667302 () Bool)

(assert (=> setNonEmpty!20049 m!2667302))

(declare-fun e!1425274 () Bool)

(assert (=> b!2229974 (= tp!698422 e!1425274)))

(declare-fun b!2230169 () Bool)

(declare-fun tp!698538 () Bool)

(assert (=> b!2230169 (= e!1425274 tp!698538)))

(declare-fun b!2230167 () Bool)

(assert (=> b!2230167 (= e!1425274 tp_is_empty!10051)))

(declare-fun b!2230168 () Bool)

(declare-fun tp!698534 () Bool)

(declare-fun tp!698537 () Bool)

(assert (=> b!2230168 (= e!1425274 (and tp!698534 tp!698537))))

(declare-fun b!2230170 () Bool)

(declare-fun tp!698536 () Bool)

(declare-fun tp!698535 () Bool)

(assert (=> b!2230170 (= e!1425274 (and tp!698536 tp!698535))))

(assert (= (and b!2229974 ((_ is ElementMatch!6413) (regOne!13339 (regOne!13338 expr!64)))) b!2230167))

(assert (= (and b!2229974 ((_ is Concat!10751) (regOne!13339 (regOne!13338 expr!64)))) b!2230168))

(assert (= (and b!2229974 ((_ is Star!6413) (regOne!13339 (regOne!13338 expr!64)))) b!2230169))

(assert (= (and b!2229974 ((_ is Union!6413) (regOne!13339 (regOne!13338 expr!64)))) b!2230170))

(declare-fun e!1425275 () Bool)

(assert (=> b!2229974 (= tp!698421 e!1425275)))

(declare-fun b!2230173 () Bool)

(declare-fun tp!698543 () Bool)

(assert (=> b!2230173 (= e!1425275 tp!698543)))

(declare-fun b!2230171 () Bool)

(assert (=> b!2230171 (= e!1425275 tp_is_empty!10051)))

(declare-fun b!2230172 () Bool)

(declare-fun tp!698539 () Bool)

(declare-fun tp!698542 () Bool)

(assert (=> b!2230172 (= e!1425275 (and tp!698539 tp!698542))))

(declare-fun b!2230174 () Bool)

(declare-fun tp!698541 () Bool)

(declare-fun tp!698540 () Bool)

(assert (=> b!2230174 (= e!1425275 (and tp!698541 tp!698540))))

(assert (= (and b!2229974 ((_ is ElementMatch!6413) (regTwo!13339 (regOne!13338 expr!64)))) b!2230171))

(assert (= (and b!2229974 ((_ is Concat!10751) (regTwo!13339 (regOne!13338 expr!64)))) b!2230172))

(assert (= (and b!2229974 ((_ is Star!6413) (regTwo!13339 (regOne!13338 expr!64)))) b!2230173))

(assert (= (and b!2229974 ((_ is Union!6413) (regTwo!13339 (regOne!13338 expr!64)))) b!2230174))

(declare-fun e!1425276 () Bool)

(assert (=> b!2229917 (= tp!698344 e!1425276)))

(declare-fun b!2230177 () Bool)

(declare-fun tp!698548 () Bool)

(assert (=> b!2230177 (= e!1425276 tp!698548)))

(declare-fun b!2230175 () Bool)

(assert (=> b!2230175 (= e!1425276 tp_is_empty!10051)))

(declare-fun b!2230176 () Bool)

(declare-fun tp!698544 () Bool)

(declare-fun tp!698547 () Bool)

(assert (=> b!2230176 (= e!1425276 (and tp!698544 tp!698547))))

(declare-fun b!2230178 () Bool)

(declare-fun tp!698546 () Bool)

(declare-fun tp!698545 () Bool)

(assert (=> b!2230178 (= e!1425276 (and tp!698546 tp!698545))))

(assert (= (and b!2229917 ((_ is ElementMatch!6413) (_1!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230175))

(assert (= (and b!2229917 ((_ is Concat!10751) (_1!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230176))

(assert (= (and b!2229917 ((_ is Star!6413) (_1!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230177))

(assert (= (and b!2229917 ((_ is Union!6413) (_1!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230178))

(declare-fun setIsEmpty!20050 () Bool)

(declare-fun setRes!20050 () Bool)

(assert (=> setIsEmpty!20050 setRes!20050))

(declare-fun b!2230179 () Bool)

(declare-fun e!1425277 () Bool)

(declare-fun tp!698550 () Bool)

(assert (=> b!2230179 (= e!1425277 tp!698550)))

(declare-fun tp!698549 () Bool)

(declare-fun setNonEmpty!20050 () Bool)

(declare-fun setElem!20050 () Context!3922)

(declare-fun e!1425279 () Bool)

(assert (=> setNonEmpty!20050 (= setRes!20050 (and tp!698549 (inv!35584 setElem!20050) e!1425279))))

(declare-fun setRest!20050 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20050 (= (_2!15196 (h!31606 (t!199714 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20050 true) setRest!20050))))

(declare-fun e!1425278 () Bool)

(assert (=> b!2229917 (= tp!698345 e!1425278)))

(declare-fun b!2230180 () Bool)

(declare-fun tp!698551 () Bool)

(assert (=> b!2230180 (= e!1425279 tp!698551)))

(declare-fun tp!698553 () Bool)

(declare-fun tp!698552 () Bool)

(declare-fun b!2230181 () Bool)

(assert (=> b!2230181 (= e!1425278 (and tp!698552 (inv!35584 (_2!15195 (_1!15196 (h!31606 (t!199714 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) e!1425277 tp_is_empty!10051 setRes!20050 tp!698553))))

(declare-fun condSetEmpty!20050 () Bool)

(assert (=> b!2230181 (= condSetEmpty!20050 (= (_2!15196 (h!31606 (t!199714 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2230181 b!2230179))

(assert (= (and b!2230181 condSetEmpty!20050) setIsEmpty!20050))

(assert (= (and b!2230181 (not condSetEmpty!20050)) setNonEmpty!20050))

(assert (= setNonEmpty!20050 b!2230180))

(assert (= (and b!2229917 ((_ is Cons!26205) (t!199714 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))) b!2230181))

(declare-fun m!2667304 () Bool)

(assert (=> setNonEmpty!20050 m!2667304))

(declare-fun m!2667306 () Bool)

(assert (=> b!2230181 m!2667306))

(declare-fun e!1425280 () Bool)

(assert (=> b!2229914 (= tp!698339 e!1425280)))

(declare-fun b!2230184 () Bool)

(declare-fun tp!698558 () Bool)

(assert (=> b!2230184 (= e!1425280 tp!698558)))

(declare-fun b!2230182 () Bool)

(assert (=> b!2230182 (= e!1425280 tp_is_empty!10051)))

(declare-fun b!2230183 () Bool)

(declare-fun tp!698554 () Bool)

(declare-fun tp!698557 () Bool)

(assert (=> b!2230183 (= e!1425280 (and tp!698554 tp!698557))))

(declare-fun b!2230185 () Bool)

(declare-fun tp!698556 () Bool)

(declare-fun tp!698555 () Bool)

(assert (=> b!2230185 (= e!1425280 (and tp!698556 tp!698555))))

(assert (= (and b!2229914 ((_ is ElementMatch!6413) (_1!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230182))

(assert (= (and b!2229914 ((_ is Concat!10751) (_1!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230183))

(assert (= (and b!2229914 ((_ is Star!6413) (_1!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230184))

(assert (= (and b!2229914 ((_ is Union!6413) (_1!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) b!2230185))

(declare-fun setIsEmpty!20051 () Bool)

(declare-fun setRes!20051 () Bool)

(assert (=> setIsEmpty!20051 setRes!20051))

(declare-fun b!2230186 () Bool)

(declare-fun e!1425281 () Bool)

(declare-fun tp!698560 () Bool)

(assert (=> b!2230186 (= e!1425281 tp!698560)))

(declare-fun e!1425283 () Bool)

(declare-fun setElem!20051 () Context!3922)

(declare-fun tp!698559 () Bool)

(declare-fun setNonEmpty!20051 () Bool)

(assert (=> setNonEmpty!20051 (= setRes!20051 (and tp!698559 (inv!35584 setElem!20051) e!1425283))))

(declare-fun setRest!20051 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20051 (= (_2!15196 (h!31606 (t!199714 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20051 true) setRest!20051))))

(declare-fun e!1425282 () Bool)

(assert (=> b!2229914 (= tp!698340 e!1425282)))

(declare-fun b!2230187 () Bool)

(declare-fun tp!698561 () Bool)

(assert (=> b!2230187 (= e!1425283 tp!698561)))

(declare-fun b!2230188 () Bool)

(declare-fun tp!698562 () Bool)

(declare-fun tp!698563 () Bool)

(assert (=> b!2230188 (= e!1425282 (and tp!698562 (inv!35584 (_2!15195 (_1!15196 (h!31606 (t!199714 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))))) e!1425281 tp_is_empty!10051 setRes!20051 tp!698563))))

(declare-fun condSetEmpty!20051 () Bool)

(assert (=> b!2230188 (= condSetEmpty!20051 (= (_2!15196 (h!31606 (t!199714 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2230188 b!2230186))

(assert (= (and b!2230188 condSetEmpty!20051) setIsEmpty!20051))

(assert (= (and b!2230188 (not condSetEmpty!20051)) setNonEmpty!20051))

(assert (= setNonEmpty!20051 b!2230187))

(assert (= (and b!2229914 ((_ is Cons!26205) (t!199714 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839))))))))) b!2230188))

(declare-fun m!2667308 () Bool)

(assert (=> setNonEmpty!20051 m!2667308))

(declare-fun m!2667310 () Bool)

(assert (=> b!2230188 m!2667310))

(declare-fun b!2230189 () Bool)

(declare-fun e!1425284 () Bool)

(declare-fun tp!698564 () Bool)

(declare-fun tp!698565 () Bool)

(assert (=> b!2230189 (= e!1425284 (and tp!698564 tp!698565))))

(assert (=> b!2229963 (= tp!698407 e!1425284)))

(assert (= (and b!2229963 ((_ is Cons!26204) (exprs!2461 setElem!20039))) b!2230189))

(declare-fun e!1425285 () Bool)

(assert (=> b!2229973 (= tp!698424 e!1425285)))

(declare-fun b!2230192 () Bool)

(declare-fun tp!698570 () Bool)

(assert (=> b!2230192 (= e!1425285 tp!698570)))

(declare-fun b!2230190 () Bool)

(assert (=> b!2230190 (= e!1425285 tp_is_empty!10051)))

(declare-fun b!2230191 () Bool)

(declare-fun tp!698566 () Bool)

(declare-fun tp!698569 () Bool)

(assert (=> b!2230191 (= e!1425285 (and tp!698566 tp!698569))))

(declare-fun b!2230193 () Bool)

(declare-fun tp!698568 () Bool)

(declare-fun tp!698567 () Bool)

(assert (=> b!2230193 (= e!1425285 (and tp!698568 tp!698567))))

(assert (= (and b!2229973 ((_ is ElementMatch!6413) (reg!6742 (regOne!13338 expr!64)))) b!2230190))

(assert (= (and b!2229973 ((_ is Concat!10751) (reg!6742 (regOne!13338 expr!64)))) b!2230191))

(assert (= (and b!2229973 ((_ is Star!6413) (reg!6742 (regOne!13338 expr!64)))) b!2230192))

(assert (= (and b!2229973 ((_ is Union!6413) (reg!6742 (regOne!13338 expr!64)))) b!2230193))

(declare-fun condMapEmpty!14370 () Bool)

(declare-fun mapDefault!14370 () List!26299)

(assert (=> mapNonEmpty!14369 (= condMapEmpty!14370 (= mapRest!14369 ((as const (Array (_ BitVec 32) List!26299)) mapDefault!14370)))))

(declare-fun e!1425288 () Bool)

(declare-fun mapRes!14370 () Bool)

(assert (=> mapNonEmpty!14369 (= tp!698402 (and e!1425288 mapRes!14370))))

(declare-fun b!2230194 () Bool)

(declare-fun e!1425286 () Bool)

(declare-fun tp!698573 () Bool)

(assert (=> b!2230194 (= e!1425286 tp!698573)))

(declare-fun mapIsEmpty!14370 () Bool)

(assert (=> mapIsEmpty!14370 mapRes!14370))

(declare-fun b!2230195 () Bool)

(declare-fun e!1425290 () Bool)

(declare-fun tp!698580 () Bool)

(assert (=> b!2230195 (= e!1425290 tp!698580)))

(declare-fun setIsEmpty!20052 () Bool)

(declare-fun setRes!20052 () Bool)

(assert (=> setIsEmpty!20052 setRes!20052))

(declare-fun setIsEmpty!20053 () Bool)

(declare-fun setRes!20053 () Bool)

(assert (=> setIsEmpty!20053 setRes!20053))

(declare-fun e!1425291 () Bool)

(declare-fun tp!698571 () Bool)

(declare-fun tp!698581 () Bool)

(declare-fun mapValue!14370 () List!26299)

(declare-fun b!2230196 () Bool)

(assert (=> b!2230196 (= e!1425291 (and tp!698571 (inv!35584 (_2!15195 (_1!15196 (h!31606 mapValue!14370)))) e!1425286 tp_is_empty!10051 setRes!20052 tp!698581))))

(declare-fun condSetEmpty!20052 () Bool)

(assert (=> b!2230196 (= condSetEmpty!20052 (= (_2!15196 (h!31606 mapValue!14370)) ((as const (Array Context!3922 Bool)) false)))))

(declare-fun b!2230197 () Bool)

(declare-fun e!1425289 () Bool)

(declare-fun tp!698575 () Bool)

(assert (=> b!2230197 (= e!1425289 tp!698575)))

(declare-fun mapNonEmpty!14370 () Bool)

(declare-fun tp!698574 () Bool)

(assert (=> mapNonEmpty!14370 (= mapRes!14370 (and tp!698574 e!1425291))))

(declare-fun mapKey!14370 () (_ BitVec 32))

(declare-fun mapRest!14370 () (Array (_ BitVec 32) List!26299))

(assert (=> mapNonEmpty!14370 (= mapRest!14369 (store mapRest!14370 mapKey!14370 mapValue!14370))))

(declare-fun b!2230198 () Bool)

(declare-fun e!1425287 () Bool)

(declare-fun tp!698579 () Bool)

(assert (=> b!2230198 (= e!1425287 tp!698579)))

(declare-fun tp!698577 () Bool)

(declare-fun setElem!20052 () Context!3922)

(declare-fun setNonEmpty!20052 () Bool)

(assert (=> setNonEmpty!20052 (= setRes!20053 (and tp!698577 (inv!35584 setElem!20052) e!1425289))))

(declare-fun setRest!20052 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20052 (= (_2!15196 (h!31606 mapDefault!14370)) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20052 true) setRest!20052))))

(declare-fun setNonEmpty!20053 () Bool)

(declare-fun tp!698572 () Bool)

(declare-fun setElem!20053 () Context!3922)

(assert (=> setNonEmpty!20053 (= setRes!20052 (and tp!698572 (inv!35584 setElem!20053) e!1425287))))

(declare-fun setRest!20053 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20053 (= (_2!15196 (h!31606 mapValue!14370)) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20053 true) setRest!20053))))

(declare-fun tp!698578 () Bool)

(declare-fun tp!698576 () Bool)

(declare-fun b!2230199 () Bool)

(assert (=> b!2230199 (= e!1425288 (and tp!698576 (inv!35584 (_2!15195 (_1!15196 (h!31606 mapDefault!14370)))) e!1425290 tp_is_empty!10051 setRes!20053 tp!698578))))

(declare-fun condSetEmpty!20053 () Bool)

(assert (=> b!2230199 (= condSetEmpty!20053 (= (_2!15196 (h!31606 mapDefault!14370)) ((as const (Array Context!3922 Bool)) false)))))

(assert (= (and mapNonEmpty!14369 condMapEmpty!14370) mapIsEmpty!14370))

(assert (= (and mapNonEmpty!14369 (not condMapEmpty!14370)) mapNonEmpty!14370))

(assert (= b!2230196 b!2230194))

(assert (= (and b!2230196 condSetEmpty!20052) setIsEmpty!20052))

(assert (= (and b!2230196 (not condSetEmpty!20052)) setNonEmpty!20053))

(assert (= setNonEmpty!20053 b!2230198))

(assert (= (and mapNonEmpty!14370 ((_ is Cons!26205) mapValue!14370)) b!2230196))

(assert (= b!2230199 b!2230195))

(assert (= (and b!2230199 condSetEmpty!20053) setIsEmpty!20053))

(assert (= (and b!2230199 (not condSetEmpty!20053)) setNonEmpty!20052))

(assert (= setNonEmpty!20052 b!2230197))

(assert (= (and mapNonEmpty!14369 ((_ is Cons!26205) mapDefault!14370)) b!2230199))

(declare-fun m!2667312 () Bool)

(assert (=> b!2230196 m!2667312))

(declare-fun m!2667314 () Bool)

(assert (=> b!2230199 m!2667314))

(declare-fun m!2667316 () Bool)

(assert (=> setNonEmpty!20052 m!2667316))

(declare-fun m!2667318 () Bool)

(assert (=> mapNonEmpty!14370 m!2667318))

(declare-fun m!2667320 () Bool)

(assert (=> setNonEmpty!20053 m!2667320))

(declare-fun e!1425292 () Bool)

(assert (=> b!2229972 (= tp!698420 e!1425292)))

(declare-fun b!2230202 () Bool)

(declare-fun tp!698586 () Bool)

(assert (=> b!2230202 (= e!1425292 tp!698586)))

(declare-fun b!2230200 () Bool)

(assert (=> b!2230200 (= e!1425292 tp_is_empty!10051)))

(declare-fun b!2230201 () Bool)

(declare-fun tp!698582 () Bool)

(declare-fun tp!698585 () Bool)

(assert (=> b!2230201 (= e!1425292 (and tp!698582 tp!698585))))

(declare-fun b!2230203 () Bool)

(declare-fun tp!698584 () Bool)

(declare-fun tp!698583 () Bool)

(assert (=> b!2230203 (= e!1425292 (and tp!698584 tp!698583))))

(assert (= (and b!2229972 ((_ is ElementMatch!6413) (regOne!13338 (regOne!13338 expr!64)))) b!2230200))

(assert (= (and b!2229972 ((_ is Concat!10751) (regOne!13338 (regOne!13338 expr!64)))) b!2230201))

(assert (= (and b!2229972 ((_ is Star!6413) (regOne!13338 (regOne!13338 expr!64)))) b!2230202))

(assert (= (and b!2229972 ((_ is Union!6413) (regOne!13338 (regOne!13338 expr!64)))) b!2230203))

(declare-fun e!1425293 () Bool)

(assert (=> b!2229972 (= tp!698423 e!1425293)))

(declare-fun b!2230206 () Bool)

(declare-fun tp!698591 () Bool)

(assert (=> b!2230206 (= e!1425293 tp!698591)))

(declare-fun b!2230204 () Bool)

(assert (=> b!2230204 (= e!1425293 tp_is_empty!10051)))

(declare-fun b!2230205 () Bool)

(declare-fun tp!698587 () Bool)

(declare-fun tp!698590 () Bool)

(assert (=> b!2230205 (= e!1425293 (and tp!698587 tp!698590))))

(declare-fun b!2230207 () Bool)

(declare-fun tp!698589 () Bool)

(declare-fun tp!698588 () Bool)

(assert (=> b!2230207 (= e!1425293 (and tp!698589 tp!698588))))

(assert (= (and b!2229972 ((_ is ElementMatch!6413) (regTwo!13338 (regOne!13338 expr!64)))) b!2230204))

(assert (= (and b!2229972 ((_ is Concat!10751) (regTwo!13338 (regOne!13338 expr!64)))) b!2230205))

(assert (= (and b!2229972 ((_ is Star!6413) (regTwo!13338 (regOne!13338 expr!64)))) b!2230206))

(assert (= (and b!2229972 ((_ is Union!6413) (regTwo!13338 (regOne!13338 expr!64)))) b!2230207))

(declare-fun e!1425294 () Bool)

(assert (=> b!2229938 (= tp!698367 e!1425294)))

(declare-fun b!2230210 () Bool)

(declare-fun tp!698596 () Bool)

(assert (=> b!2230210 (= e!1425294 tp!698596)))

(declare-fun b!2230208 () Bool)

(assert (=> b!2230208 (= e!1425294 tp_is_empty!10051)))

(declare-fun b!2230209 () Bool)

(declare-fun tp!698592 () Bool)

(declare-fun tp!698595 () Bool)

(assert (=> b!2230209 (= e!1425294 (and tp!698592 tp!698595))))

(declare-fun b!2230211 () Bool)

(declare-fun tp!698594 () Bool)

(declare-fun tp!698593 () Bool)

(assert (=> b!2230211 (= e!1425294 (and tp!698594 tp!698593))))

(assert (= (and b!2229938 ((_ is ElementMatch!6413) (regOne!13338 (regOne!13339 expr!64)))) b!2230208))

(assert (= (and b!2229938 ((_ is Concat!10751) (regOne!13338 (regOne!13339 expr!64)))) b!2230209))

(assert (= (and b!2229938 ((_ is Star!6413) (regOne!13338 (regOne!13339 expr!64)))) b!2230210))

(assert (= (and b!2229938 ((_ is Union!6413) (regOne!13338 (regOne!13339 expr!64)))) b!2230211))

(declare-fun e!1425295 () Bool)

(assert (=> b!2229938 (= tp!698370 e!1425295)))

(declare-fun b!2230214 () Bool)

(declare-fun tp!698601 () Bool)

(assert (=> b!2230214 (= e!1425295 tp!698601)))

(declare-fun b!2230212 () Bool)

(assert (=> b!2230212 (= e!1425295 tp_is_empty!10051)))

(declare-fun b!2230213 () Bool)

(declare-fun tp!698597 () Bool)

(declare-fun tp!698600 () Bool)

(assert (=> b!2230213 (= e!1425295 (and tp!698597 tp!698600))))

(declare-fun b!2230215 () Bool)

(declare-fun tp!698599 () Bool)

(declare-fun tp!698598 () Bool)

(assert (=> b!2230215 (= e!1425295 (and tp!698599 tp!698598))))

(assert (= (and b!2229938 ((_ is ElementMatch!6413) (regTwo!13338 (regOne!13339 expr!64)))) b!2230212))

(assert (= (and b!2229938 ((_ is Concat!10751) (regTwo!13338 (regOne!13339 expr!64)))) b!2230213))

(assert (= (and b!2229938 ((_ is Star!6413) (regTwo!13338 (regOne!13339 expr!64)))) b!2230214))

(assert (= (and b!2229938 ((_ is Union!6413) (regTwo!13338 (regOne!13339 expr!64)))) b!2230215))

(declare-fun b!2230216 () Bool)

(declare-fun e!1425296 () Bool)

(declare-fun tp!698602 () Bool)

(declare-fun tp!698603 () Bool)

(assert (=> b!2230216 (= e!1425296 (and tp!698602 tp!698603))))

(assert (=> b!2229962 (= tp!698403 e!1425296)))

(assert (= (and b!2229962 ((_ is Cons!26204) (exprs!2461 setElem!20038))) b!2230216))

(declare-fun e!1425297 () Bool)

(assert (=> b!2229939 (= tp!698371 e!1425297)))

(declare-fun b!2230219 () Bool)

(declare-fun tp!698608 () Bool)

(assert (=> b!2230219 (= e!1425297 tp!698608)))

(declare-fun b!2230217 () Bool)

(assert (=> b!2230217 (= e!1425297 tp_is_empty!10051)))

(declare-fun b!2230218 () Bool)

(declare-fun tp!698604 () Bool)

(declare-fun tp!698607 () Bool)

(assert (=> b!2230218 (= e!1425297 (and tp!698604 tp!698607))))

(declare-fun b!2230220 () Bool)

(declare-fun tp!698606 () Bool)

(declare-fun tp!698605 () Bool)

(assert (=> b!2230220 (= e!1425297 (and tp!698606 tp!698605))))

(assert (= (and b!2229939 ((_ is ElementMatch!6413) (reg!6742 (regOne!13339 expr!64)))) b!2230217))

(assert (= (and b!2229939 ((_ is Concat!10751) (reg!6742 (regOne!13339 expr!64)))) b!2230218))

(assert (= (and b!2229939 ((_ is Star!6413) (reg!6742 (regOne!13339 expr!64)))) b!2230219))

(assert (= (and b!2229939 ((_ is Union!6413) (reg!6742 (regOne!13339 expr!64)))) b!2230220))

(declare-fun e!1425298 () Bool)

(assert (=> b!2229961 (= tp!698399 e!1425298)))

(declare-fun b!2230223 () Bool)

(declare-fun tp!698613 () Bool)

(assert (=> b!2230223 (= e!1425298 tp!698613)))

(declare-fun b!2230221 () Bool)

(assert (=> b!2230221 (= e!1425298 tp_is_empty!10051)))

(declare-fun b!2230222 () Bool)

(declare-fun tp!698609 () Bool)

(declare-fun tp!698612 () Bool)

(assert (=> b!2230222 (= e!1425298 (and tp!698609 tp!698612))))

(declare-fun b!2230224 () Bool)

(declare-fun tp!698611 () Bool)

(declare-fun tp!698610 () Bool)

(assert (=> b!2230224 (= e!1425298 (and tp!698611 tp!698610))))

(assert (= (and b!2229961 ((_ is ElementMatch!6413) (_1!15195 (_1!15196 (h!31606 mapValue!14369))))) b!2230221))

(assert (= (and b!2229961 ((_ is Concat!10751) (_1!15195 (_1!15196 (h!31606 mapValue!14369))))) b!2230222))

(assert (= (and b!2229961 ((_ is Star!6413) (_1!15195 (_1!15196 (h!31606 mapValue!14369))))) b!2230223))

(assert (= (and b!2229961 ((_ is Union!6413) (_1!15195 (_1!15196 (h!31606 mapValue!14369))))) b!2230224))

(declare-fun setIsEmpty!20054 () Bool)

(declare-fun setRes!20054 () Bool)

(assert (=> setIsEmpty!20054 setRes!20054))

(declare-fun b!2230225 () Bool)

(declare-fun e!1425299 () Bool)

(declare-fun tp!698615 () Bool)

(assert (=> b!2230225 (= e!1425299 tp!698615)))

(declare-fun tp!698614 () Bool)

(declare-fun setNonEmpty!20054 () Bool)

(declare-fun setElem!20054 () Context!3922)

(declare-fun e!1425301 () Bool)

(assert (=> setNonEmpty!20054 (= setRes!20054 (and tp!698614 (inv!35584 setElem!20054) e!1425301))))

(declare-fun setRest!20054 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20054 (= (_2!15196 (h!31606 (t!199714 mapValue!14369))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20054 true) setRest!20054))))

(declare-fun e!1425300 () Bool)

(assert (=> b!2229961 (= tp!698409 e!1425300)))

(declare-fun b!2230226 () Bool)

(declare-fun tp!698616 () Bool)

(assert (=> b!2230226 (= e!1425301 tp!698616)))

(declare-fun tp!698617 () Bool)

(declare-fun tp!698618 () Bool)

(declare-fun b!2230227 () Bool)

(assert (=> b!2230227 (= e!1425300 (and tp!698617 (inv!35584 (_2!15195 (_1!15196 (h!31606 (t!199714 mapValue!14369))))) e!1425299 tp_is_empty!10051 setRes!20054 tp!698618))))

(declare-fun condSetEmpty!20054 () Bool)

(assert (=> b!2230227 (= condSetEmpty!20054 (= (_2!15196 (h!31606 (t!199714 mapValue!14369))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2230227 b!2230225))

(assert (= (and b!2230227 condSetEmpty!20054) setIsEmpty!20054))

(assert (= (and b!2230227 (not condSetEmpty!20054)) setNonEmpty!20054))

(assert (= setNonEmpty!20054 b!2230226))

(assert (= (and b!2229961 ((_ is Cons!26205) (t!199714 mapValue!14369))) b!2230227))

(declare-fun m!2667322 () Bool)

(assert (=> setNonEmpty!20054 m!2667322))

(declare-fun m!2667324 () Bool)

(assert (=> b!2230227 m!2667324))

(declare-fun condSetEmpty!20055 () Bool)

(assert (=> setNonEmpty!20040 (= condSetEmpty!20055 (= setRest!20040 ((as const (Array Context!3922 Bool)) false)))))

(declare-fun setRes!20055 () Bool)

(assert (=> setNonEmpty!20040 (= tp!698410 setRes!20055)))

(declare-fun setIsEmpty!20055 () Bool)

(assert (=> setIsEmpty!20055 setRes!20055))

(declare-fun e!1425302 () Bool)

(declare-fun tp!698619 () Bool)

(declare-fun setElem!20055 () Context!3922)

(declare-fun setNonEmpty!20055 () Bool)

(assert (=> setNonEmpty!20055 (= setRes!20055 (and tp!698619 (inv!35584 setElem!20055) e!1425302))))

(declare-fun setRest!20055 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20055 (= setRest!20040 ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20055 true) setRest!20055))))

(declare-fun b!2230228 () Bool)

(declare-fun tp!698620 () Bool)

(assert (=> b!2230228 (= e!1425302 tp!698620)))

(assert (= (and setNonEmpty!20040 condSetEmpty!20055) setIsEmpty!20055))

(assert (= (and setNonEmpty!20040 (not condSetEmpty!20055)) setNonEmpty!20055))

(assert (= setNonEmpty!20055 b!2230228))

(declare-fun m!2667326 () Bool)

(assert (=> setNonEmpty!20055 m!2667326))

(declare-fun e!1425303 () Bool)

(assert (=> b!2229936 (= tp!698365 e!1425303)))

(declare-fun b!2230231 () Bool)

(declare-fun tp!698625 () Bool)

(assert (=> b!2230231 (= e!1425303 tp!698625)))

(declare-fun b!2230229 () Bool)

(assert (=> b!2230229 (= e!1425303 tp_is_empty!10051)))

(declare-fun b!2230230 () Bool)

(declare-fun tp!698621 () Bool)

(declare-fun tp!698624 () Bool)

(assert (=> b!2230230 (= e!1425303 (and tp!698621 tp!698624))))

(declare-fun b!2230232 () Bool)

(declare-fun tp!698623 () Bool)

(declare-fun tp!698622 () Bool)

(assert (=> b!2230232 (= e!1425303 (and tp!698623 tp!698622))))

(assert (= (and b!2229936 ((_ is ElementMatch!6413) (h!31605 (exprs!2461 context!86)))) b!2230229))

(assert (= (and b!2229936 ((_ is Concat!10751) (h!31605 (exprs!2461 context!86)))) b!2230230))

(assert (= (and b!2229936 ((_ is Star!6413) (h!31605 (exprs!2461 context!86)))) b!2230231))

(assert (= (and b!2229936 ((_ is Union!6413) (h!31605 (exprs!2461 context!86)))) b!2230232))

(declare-fun b!2230233 () Bool)

(declare-fun e!1425304 () Bool)

(declare-fun tp!698626 () Bool)

(declare-fun tp!698627 () Bool)

(assert (=> b!2230233 (= e!1425304 (and tp!698626 tp!698627))))

(assert (=> b!2229936 (= tp!698366 e!1425304)))

(assert (= (and b!2229936 ((_ is Cons!26204) (t!199713 (exprs!2461 context!86)))) b!2230233))

(declare-fun condSetEmpty!20056 () Bool)

(assert (=> setNonEmpty!20041 (= condSetEmpty!20056 (= setRest!20041 ((as const (Array Context!3922 Bool)) false)))))

(declare-fun setRes!20056 () Bool)

(assert (=> setNonEmpty!20041 (= tp!698415 setRes!20056)))

(declare-fun setIsEmpty!20056 () Bool)

(assert (=> setIsEmpty!20056 setRes!20056))

(declare-fun setNonEmpty!20056 () Bool)

(declare-fun e!1425305 () Bool)

(declare-fun tp!698628 () Bool)

(declare-fun setElem!20056 () Context!3922)

(assert (=> setNonEmpty!20056 (= setRes!20056 (and tp!698628 (inv!35584 setElem!20056) e!1425305))))

(declare-fun setRest!20056 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20056 (= setRest!20041 ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20056 true) setRest!20056))))

(declare-fun b!2230234 () Bool)

(declare-fun tp!698629 () Bool)

(assert (=> b!2230234 (= e!1425305 tp!698629)))

(assert (= (and setNonEmpty!20041 condSetEmpty!20056) setIsEmpty!20056))

(assert (= (and setNonEmpty!20041 (not condSetEmpty!20056)) setNonEmpty!20056))

(assert (= setNonEmpty!20056 b!2230234))

(declare-fun m!2667328 () Bool)

(assert (=> setNonEmpty!20056 m!2667328))

(declare-fun b!2230235 () Bool)

(declare-fun e!1425306 () Bool)

(declare-fun tp!698630 () Bool)

(declare-fun tp!698631 () Bool)

(assert (=> b!2230235 (= e!1425306 (and tp!698630 tp!698631))))

(assert (=> b!2229965 (= tp!698411 e!1425306)))

(assert (= (and b!2229965 ((_ is Cons!26204) (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapValue!14366)))))) b!2230235))

(declare-fun b!2230236 () Bool)

(declare-fun e!1425307 () Bool)

(declare-fun tp!698632 () Bool)

(declare-fun tp!698633 () Bool)

(assert (=> b!2230236 (= e!1425307 (and tp!698632 tp!698633))))

(assert (=> b!2229968 (= tp!698416 e!1425307)))

(assert (= (and b!2229968 ((_ is Cons!26204) (exprs!2461 (_2!15195 (_1!15196 (h!31606 mapDefault!14366)))))) b!2230236))

(declare-fun e!1425308 () Bool)

(assert (=> b!2229929 (= tp!698356 e!1425308)))

(declare-fun b!2230239 () Bool)

(declare-fun tp!698638 () Bool)

(assert (=> b!2230239 (= e!1425308 tp!698638)))

(declare-fun b!2230237 () Bool)

(assert (=> b!2230237 (= e!1425308 tp_is_empty!10051)))

(declare-fun b!2230238 () Bool)

(declare-fun tp!698634 () Bool)

(declare-fun tp!698637 () Bool)

(assert (=> b!2230238 (= e!1425308 (and tp!698634 tp!698637))))

(declare-fun b!2230240 () Bool)

(declare-fun tp!698636 () Bool)

(declare-fun tp!698635 () Bool)

(assert (=> b!2230240 (= e!1425308 (and tp!698636 tp!698635))))

(assert (= (and b!2229929 ((_ is ElementMatch!6413) (regOne!13338 (reg!6742 expr!64)))) b!2230237))

(assert (= (and b!2229929 ((_ is Concat!10751) (regOne!13338 (reg!6742 expr!64)))) b!2230238))

(assert (= (and b!2229929 ((_ is Star!6413) (regOne!13338 (reg!6742 expr!64)))) b!2230239))

(assert (= (and b!2229929 ((_ is Union!6413) (regOne!13338 (reg!6742 expr!64)))) b!2230240))

(declare-fun e!1425309 () Bool)

(assert (=> b!2229929 (= tp!698359 e!1425309)))

(declare-fun b!2230243 () Bool)

(declare-fun tp!698643 () Bool)

(assert (=> b!2230243 (= e!1425309 tp!698643)))

(declare-fun b!2230241 () Bool)

(assert (=> b!2230241 (= e!1425309 tp_is_empty!10051)))

(declare-fun b!2230242 () Bool)

(declare-fun tp!698639 () Bool)

(declare-fun tp!698642 () Bool)

(assert (=> b!2230242 (= e!1425309 (and tp!698639 tp!698642))))

(declare-fun b!2230244 () Bool)

(declare-fun tp!698641 () Bool)

(declare-fun tp!698640 () Bool)

(assert (=> b!2230244 (= e!1425309 (and tp!698641 tp!698640))))

(assert (= (and b!2229929 ((_ is ElementMatch!6413) (regTwo!13338 (reg!6742 expr!64)))) b!2230241))

(assert (= (and b!2229929 ((_ is Concat!10751) (regTwo!13338 (reg!6742 expr!64)))) b!2230242))

(assert (= (and b!2229929 ((_ is Star!6413) (regTwo!13338 (reg!6742 expr!64)))) b!2230243))

(assert (= (and b!2229929 ((_ is Union!6413) (regTwo!13338 (reg!6742 expr!64)))) b!2230244))

(declare-fun e!1425310 () Bool)

(assert (=> b!2229930 (= tp!698360 e!1425310)))

(declare-fun b!2230247 () Bool)

(declare-fun tp!698648 () Bool)

(assert (=> b!2230247 (= e!1425310 tp!698648)))

(declare-fun b!2230245 () Bool)

(assert (=> b!2230245 (= e!1425310 tp_is_empty!10051)))

(declare-fun b!2230246 () Bool)

(declare-fun tp!698644 () Bool)

(declare-fun tp!698647 () Bool)

(assert (=> b!2230246 (= e!1425310 (and tp!698644 tp!698647))))

(declare-fun b!2230248 () Bool)

(declare-fun tp!698646 () Bool)

(declare-fun tp!698645 () Bool)

(assert (=> b!2230248 (= e!1425310 (and tp!698646 tp!698645))))

(assert (= (and b!2229930 ((_ is ElementMatch!6413) (reg!6742 (reg!6742 expr!64)))) b!2230245))

(assert (= (and b!2229930 ((_ is Concat!10751) (reg!6742 (reg!6742 expr!64)))) b!2230246))

(assert (= (and b!2229930 ((_ is Star!6413) (reg!6742 (reg!6742 expr!64)))) b!2230247))

(assert (= (and b!2229930 ((_ is Union!6413) (reg!6742 (reg!6742 expr!64)))) b!2230248))

(declare-fun b!2230249 () Bool)

(declare-fun e!1425311 () Bool)

(declare-fun tp!698649 () Bool)

(declare-fun tp!698650 () Bool)

(assert (=> b!2230249 (= e!1425311 (and tp!698649 tp!698650))))

(assert (=> b!2229915 (= tp!698342 e!1425311)))

(assert (= (and b!2229915 ((_ is Cons!26204) (exprs!2461 (_2!15195 (_1!15196 (h!31606 (minValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))))) b!2230249))

(declare-fun e!1425312 () Bool)

(assert (=> b!2229931 (= tp!698358 e!1425312)))

(declare-fun b!2230252 () Bool)

(declare-fun tp!698655 () Bool)

(assert (=> b!2230252 (= e!1425312 tp!698655)))

(declare-fun b!2230250 () Bool)

(assert (=> b!2230250 (= e!1425312 tp_is_empty!10051)))

(declare-fun b!2230251 () Bool)

(declare-fun tp!698651 () Bool)

(declare-fun tp!698654 () Bool)

(assert (=> b!2230251 (= e!1425312 (and tp!698651 tp!698654))))

(declare-fun b!2230253 () Bool)

(declare-fun tp!698653 () Bool)

(declare-fun tp!698652 () Bool)

(assert (=> b!2230253 (= e!1425312 (and tp!698653 tp!698652))))

(assert (= (and b!2229931 ((_ is ElementMatch!6413) (regOne!13339 (reg!6742 expr!64)))) b!2230250))

(assert (= (and b!2229931 ((_ is Concat!10751) (regOne!13339 (reg!6742 expr!64)))) b!2230251))

(assert (= (and b!2229931 ((_ is Star!6413) (regOne!13339 (reg!6742 expr!64)))) b!2230252))

(assert (= (and b!2229931 ((_ is Union!6413) (regOne!13339 (reg!6742 expr!64)))) b!2230253))

(declare-fun e!1425313 () Bool)

(assert (=> b!2229931 (= tp!698357 e!1425313)))

(declare-fun b!2230256 () Bool)

(declare-fun tp!698660 () Bool)

(assert (=> b!2230256 (= e!1425313 tp!698660)))

(declare-fun b!2230254 () Bool)

(assert (=> b!2230254 (= e!1425313 tp_is_empty!10051)))

(declare-fun b!2230255 () Bool)

(declare-fun tp!698656 () Bool)

(declare-fun tp!698659 () Bool)

(assert (=> b!2230255 (= e!1425313 (and tp!698656 tp!698659))))

(declare-fun b!2230257 () Bool)

(declare-fun tp!698658 () Bool)

(declare-fun tp!698657 () Bool)

(assert (=> b!2230257 (= e!1425313 (and tp!698658 tp!698657))))

(assert (= (and b!2229931 ((_ is ElementMatch!6413) (regTwo!13339 (reg!6742 expr!64)))) b!2230254))

(assert (= (and b!2229931 ((_ is Concat!10751) (regTwo!13339 (reg!6742 expr!64)))) b!2230255))

(assert (= (and b!2229931 ((_ is Star!6413) (regTwo!13339 (reg!6742 expr!64)))) b!2230256))

(assert (= (and b!2229931 ((_ is Union!6413) (regTwo!13339 (reg!6742 expr!64)))) b!2230257))

(declare-fun b!2230258 () Bool)

(declare-fun e!1425314 () Bool)

(declare-fun tp!698661 () Bool)

(declare-fun tp!698662 () Bool)

(assert (=> b!2230258 (= e!1425314 (and tp!698661 tp!698662))))

(assert (=> b!2229912 (= tp!698337 e!1425314)))

(assert (= (and b!2229912 ((_ is Cons!26204) (exprs!2461 (_2!15195 (_1!15196 (h!31606 (zeroValue!3309 (v!29791 (underlying!6303 (v!29792 (underlying!6304 (cache!3342 cacheDown!839)))))))))))) b!2230258))

(declare-fun e!1425315 () Bool)

(assert (=> b!2229964 (= tp!698404 e!1425315)))

(declare-fun b!2230261 () Bool)

(declare-fun tp!698667 () Bool)

(assert (=> b!2230261 (= e!1425315 tp!698667)))

(declare-fun b!2230259 () Bool)

(assert (=> b!2230259 (= e!1425315 tp_is_empty!10051)))

(declare-fun b!2230260 () Bool)

(declare-fun tp!698663 () Bool)

(declare-fun tp!698666 () Bool)

(assert (=> b!2230260 (= e!1425315 (and tp!698663 tp!698666))))

(declare-fun b!2230262 () Bool)

(declare-fun tp!698665 () Bool)

(declare-fun tp!698664 () Bool)

(assert (=> b!2230262 (= e!1425315 (and tp!698665 tp!698664))))

(assert (= (and b!2229964 ((_ is ElementMatch!6413) (_1!15195 (_1!15196 (h!31606 mapDefault!14369))))) b!2230259))

(assert (= (and b!2229964 ((_ is Concat!10751) (_1!15195 (_1!15196 (h!31606 mapDefault!14369))))) b!2230260))

(assert (= (and b!2229964 ((_ is Star!6413) (_1!15195 (_1!15196 (h!31606 mapDefault!14369))))) b!2230261))

(assert (= (and b!2229964 ((_ is Union!6413) (_1!15195 (_1!15196 (h!31606 mapDefault!14369))))) b!2230262))

(declare-fun setIsEmpty!20057 () Bool)

(declare-fun setRes!20057 () Bool)

(assert (=> setIsEmpty!20057 setRes!20057))

(declare-fun b!2230263 () Bool)

(declare-fun e!1425316 () Bool)

(declare-fun tp!698669 () Bool)

(assert (=> b!2230263 (= e!1425316 tp!698669)))

(declare-fun setElem!20057 () Context!3922)

(declare-fun e!1425318 () Bool)

(declare-fun setNonEmpty!20057 () Bool)

(declare-fun tp!698668 () Bool)

(assert (=> setNonEmpty!20057 (= setRes!20057 (and tp!698668 (inv!35584 setElem!20057) e!1425318))))

(declare-fun setRest!20057 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20057 (= (_2!15196 (h!31606 (t!199714 mapDefault!14369))) ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20057 true) setRest!20057))))

(declare-fun e!1425317 () Bool)

(assert (=> b!2229964 (= tp!698406 e!1425317)))

(declare-fun b!2230264 () Bool)

(declare-fun tp!698670 () Bool)

(assert (=> b!2230264 (= e!1425318 tp!698670)))

(declare-fun tp!698671 () Bool)

(declare-fun b!2230265 () Bool)

(declare-fun tp!698672 () Bool)

(assert (=> b!2230265 (= e!1425317 (and tp!698671 (inv!35584 (_2!15195 (_1!15196 (h!31606 (t!199714 mapDefault!14369))))) e!1425316 tp_is_empty!10051 setRes!20057 tp!698672))))

(declare-fun condSetEmpty!20057 () Bool)

(assert (=> b!2230265 (= condSetEmpty!20057 (= (_2!15196 (h!31606 (t!199714 mapDefault!14369))) ((as const (Array Context!3922 Bool)) false)))))

(assert (= b!2230265 b!2230263))

(assert (= (and b!2230265 condSetEmpty!20057) setIsEmpty!20057))

(assert (= (and b!2230265 (not condSetEmpty!20057)) setNonEmpty!20057))

(assert (= setNonEmpty!20057 b!2230264))

(assert (= (and b!2229964 ((_ is Cons!26205) (t!199714 mapDefault!14369))) b!2230265))

(declare-fun m!2667330 () Bool)

(assert (=> setNonEmpty!20057 m!2667330))

(declare-fun m!2667332 () Bool)

(assert (=> b!2230265 m!2667332))

(declare-fun condSetEmpty!20058 () Bool)

(assert (=> setNonEmpty!20033 (= condSetEmpty!20058 (= setRest!20033 ((as const (Array Context!3922 Bool)) false)))))

(declare-fun setRes!20058 () Bool)

(assert (=> setNonEmpty!20033 (= tp!698341 setRes!20058)))

(declare-fun setIsEmpty!20058 () Bool)

(assert (=> setIsEmpty!20058 setRes!20058))

(declare-fun e!1425319 () Bool)

(declare-fun setElem!20058 () Context!3922)

(declare-fun tp!698673 () Bool)

(declare-fun setNonEmpty!20058 () Bool)

(assert (=> setNonEmpty!20058 (= setRes!20058 (and tp!698673 (inv!35584 setElem!20058) e!1425319))))

(declare-fun setRest!20058 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20058 (= setRest!20033 ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20058 true) setRest!20058))))

(declare-fun b!2230266 () Bool)

(declare-fun tp!698674 () Bool)

(assert (=> b!2230266 (= e!1425319 tp!698674)))

(assert (= (and setNonEmpty!20033 condSetEmpty!20058) setIsEmpty!20058))

(assert (= (and setNonEmpty!20033 (not condSetEmpty!20058)) setNonEmpty!20058))

(assert (= setNonEmpty!20058 b!2230266))

(declare-fun m!2667334 () Bool)

(assert (=> setNonEmpty!20058 m!2667334))

(declare-fun condSetEmpty!20059 () Bool)

(assert (=> setNonEmpty!20032 (= condSetEmpty!20059 (= setRest!20032 ((as const (Array Context!3922 Bool)) false)))))

(declare-fun setRes!20059 () Bool)

(assert (=> setNonEmpty!20032 (= tp!698336 setRes!20059)))

(declare-fun setIsEmpty!20059 () Bool)

(assert (=> setIsEmpty!20059 setRes!20059))

(declare-fun setElem!20059 () Context!3922)

(declare-fun setNonEmpty!20059 () Bool)

(declare-fun e!1425320 () Bool)

(declare-fun tp!698675 () Bool)

(assert (=> setNonEmpty!20059 (= setRes!20059 (and tp!698675 (inv!35584 setElem!20059) e!1425320))))

(declare-fun setRest!20059 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20059 (= setRest!20032 ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20059 true) setRest!20059))))

(declare-fun b!2230267 () Bool)

(declare-fun tp!698676 () Bool)

(assert (=> b!2230267 (= e!1425320 tp!698676)))

(assert (= (and setNonEmpty!20032 condSetEmpty!20059) setIsEmpty!20059))

(assert (= (and setNonEmpty!20032 (not condSetEmpty!20059)) setNonEmpty!20059))

(assert (= setNonEmpty!20059 b!2230267))

(declare-fun m!2667336 () Bool)

(assert (=> setNonEmpty!20059 m!2667336))

(declare-fun condSetEmpty!20060 () Bool)

(assert (=> setNonEmpty!20039 (= condSetEmpty!20060 (= setRest!20039 ((as const (Array Context!3922 Bool)) false)))))

(declare-fun setRes!20060 () Bool)

(assert (=> setNonEmpty!20039 (= tp!698400 setRes!20060)))

(declare-fun setIsEmpty!20060 () Bool)

(assert (=> setIsEmpty!20060 setRes!20060))

(declare-fun e!1425321 () Bool)

(declare-fun tp!698677 () Bool)

(declare-fun setNonEmpty!20060 () Bool)

(declare-fun setElem!20060 () Context!3922)

(assert (=> setNonEmpty!20060 (= setRes!20060 (and tp!698677 (inv!35584 setElem!20060) e!1425321))))

(declare-fun setRest!20060 () (InoxSet Context!3922))

(assert (=> setNonEmpty!20060 (= setRest!20039 ((_ map or) (store ((as const (Array Context!3922 Bool)) false) setElem!20060 true) setRest!20060))))

(declare-fun b!2230268 () Bool)

(declare-fun tp!698678 () Bool)

(assert (=> b!2230268 (= e!1425321 tp!698678)))

(assert (= (and setNonEmpty!20039 condSetEmpty!20060) setIsEmpty!20060))

(assert (= (and setNonEmpty!20039 (not condSetEmpty!20060)) setNonEmpty!20060))

(assert (= setNonEmpty!20060 b!2230268))

(declare-fun m!2667338 () Bool)

(assert (=> setNonEmpty!20060 m!2667338))

(declare-fun b_lambda!71649 () Bool)

(assert (= b_lambda!71645 (or d!664902 b_lambda!71649)))

(declare-fun bs!453880 () Bool)

(declare-fun d!664972 () Bool)

(assert (= bs!453880 (and d!664972 d!664902)))

(assert (=> bs!453880 (= (dynLambda!11522 lambda!84266 (h!31605 (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)))))) (validRegex!2388 (h!31605 (exprs!2461 (Context!3923 ($colon$colon!516 (exprs!2461 context!86) (regTwo!13338 expr!64)))))))))

(declare-fun m!2667340 () Bool)

(assert (=> bs!453880 m!2667340))

(assert (=> b!2230000 d!664972))

(declare-fun b_lambda!71651 () Bool)

(assert (= b_lambda!71647 (or d!664916 b_lambda!71651)))

(declare-fun bs!453881 () Bool)

(declare-fun d!664974 () Bool)

(assert (= bs!453881 (and d!664974 d!664916)))

(assert (=> bs!453881 (= (dynLambda!11522 lambda!84267 (h!31605 (exprs!2461 context!86))) (validRegex!2388 (h!31605 (exprs!2461 context!86))))))

(declare-fun m!2667342 () Bool)

(assert (=> bs!453881 m!2667342))

(assert (=> b!2230050 d!664974))

(check-sat (not setNonEmpty!20060) (not b!2230185) (not bm!133840) (not b!2230209) (not bm!133814) (not b!2230243) (not bm!133818) (not b!2230001) (not b_next!65371) (not b!2230116) (not b!2230112) (not b!2229995) (not b!2230129) (not setNonEmpty!20057) (not b!2230249) (not d!664954) (not b!2230188) (not d!664944) (not b!2230194) (not bm!133843) (not d!664970) (not d!664936) (not setNonEmpty!20056) (not d!664948) (not b!2230248) (not b!2230085) (not b!2230234) (not b!2230009) (not b!2230145) (not b!2230262) (not b!2230236) (not b!2230207) (not b!2230252) (not b!2230258) (not b!2230104) (not b!2230199) (not b!2230227) (not b!2230177) (not b!2230011) (not b!2230158) (not b!2230132) (not b!2230096) (not setNonEmpty!20052) (not b!2230210) (not b!2230255) (not b!2230136) (not b!2230181) (not b!2230120) (not b!2230215) (not b!2230251) (not b!2230149) (not b!2230201) (not b!2230197) (not setNonEmpty!20051) (not b!2230160) (not b!2230186) (not b!2230222) (not b!2230211) (not setNonEmpty!20045) (not b!2230131) (not mapNonEmpty!14370) (not b!2230105) (not b!2230168) (not d!664964) (not b!2230117) (not d!664952) (not b!2230265) (not bm!133817) (not b!2230184) (not d!664924) (not b!2230166) (not d!664926) (not b!2230084) (not bm!133827) (not b!2230183) (not b!2230189) (not b!2230233) (not b!2230224) (not b!2230218) (not b!2230170) (not b!2230111) (not b!2230130) (not b!2230225) (not b_next!65369) (not b!2230134) (not b!2230146) (not setNonEmpty!20046) (not b!2230198) (not b!2229994) (not b!2229979) (not b!2230232) (not b!2230205) (not d!664928) (not b!2230231) (not b_lambda!71649) (not d!664938) (not bm!133826) (not b!2230226) (not b!2230213) (not b!2230041) (not b!2230247) (not b!2230119) (not d!664968) (not b!2230268) tp_is_empty!10051 (not b!2230148) (not b!2230010) (not b!2230219) (not b!2230141) (not b!2230147) (not b!2230216) (not d!664940) (not bs!453881) (not b!2230202) (not b!2230161) (not b!2230220) (not b!2230156) (not b!2230121) (not b!2230264) (not b!2230095) (not b!2230100) (not b!2230223) (not b!2230191) (not b!2230256) (not b!2230235) (not b!2230206) (not b!2230113) (not bm!133844) (not b!2230127) (not b!2230178) (not b!2230135) (not b!2230257) (not b!2230203) (not b!2230267) (not setNonEmpty!20058) (not setNonEmpty!20050) (not b!2230157) (not b!2230193) (not b!2230240) (not b!2230238) (not b!2230174) (not b!2230143) (not b!2230128) (not b!2230176) (not b!2230125) (not b!2230172) (not bm!133847) (not b!2230051) (not b!2230187) (not b!2230159) (not b!2230173) (not b!2230099) (not b!2230246) (not b!2230151) (not b!2230142) (not setNonEmpty!20059) (not b!2230097) (not b!2230260) (not bm!133824) (not b!2230123) (not b!2230244) b_and!174655 (not bm!133823) (not b!2230214) (not b!2230230) (not b!2230179) (not b!2230153) (not b!2230180) (not setNonEmpty!20049) (not d!664930) (not b!2230196) (not b!2230152) (not d!664920) (not b!2230107) (not b!2230101) (not b!2230138) (not b!2230263) (not b!2230192) (not b!2230115) (not b!2230253) (not b!2230239) (not b!2230103) (not setNonEmpty!20055) (not setNonEmpty!20053) (not b!2230195) (not bm!133815) (not bs!453880) (not b!2230124) (not b!2230261) (not bm!133848) (not b!2230109) (not d!664962) (not setNonEmpty!20044) (not setNonEmpty!20054) (not b!2230155) (not b!2230137) (not b!2230228) (not b!2230242) (not b!2230169) (not b_lambda!71651) (not b!2230108) (not b!2230139) (not b!2230266) b_and!174653)
(check-sat b_and!174653 b_and!174655 (not b_next!65371) (not b_next!65369))
