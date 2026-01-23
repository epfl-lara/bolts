; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217578 () Bool)

(assert start!217578)

(declare-fun b!2231211 () Bool)

(declare-fun b_free!64697 () Bool)

(declare-fun b_next!65401 () Bool)

(assert (=> b!2231211 (= b_free!64697 (not b_next!65401))))

(declare-fun tp!699290 () Bool)

(declare-fun b_and!174685 () Bool)

(assert (=> b!2231211 (= tp!699290 b_and!174685)))

(declare-fun b!2231205 () Bool)

(declare-fun b_free!64699 () Bool)

(declare-fun b_next!65403 () Bool)

(assert (=> b!2231205 (= b_free!64699 (not b_next!65403))))

(declare-fun tp!699296 () Bool)

(declare-fun b_and!174687 () Bool)

(assert (=> b!2231205 (= tp!699296 b_and!174687)))

(declare-fun b!2231202 () Bool)

(declare-fun res!955600 () Bool)

(declare-fun e!1425930 () Bool)

(assert (=> b!2231202 (=> (not res!955600) (not e!1425930))))

(declare-datatypes ((C!12988 0))(
  ( (C!12989 (val!7542 Int)) )
))
(declare-datatypes ((Regex!6421 0))(
  ( (ElementMatch!6421 (c!355879 C!12988)) (Concat!10759 (regOne!13354 Regex!6421) (regTwo!13354 Regex!6421)) (EmptyExpr!6421) (Star!6421 (reg!6750 Regex!6421)) (EmptyLang!6421) (Union!6421 (regOne!13355 Regex!6421) (regTwo!13355 Regex!6421)) )
))
(declare-fun expr!64 () Regex!6421)

(get-info :version)

(assert (=> b!2231202 (= res!955600 ((_ is Concat!10759) expr!64))))

(declare-fun b!2231203 () Bool)

(declare-fun e!1425936 () Bool)

(declare-fun nullable!1767 (Regex!6421) Bool)

(assert (=> b!2231203 (= e!1425936 (not (nullable!1767 (regOne!13354 expr!64))))))

(declare-fun b!2231204 () Bool)

(declare-fun e!1425934 () Bool)

(declare-fun tp!699299 () Bool)

(assert (=> b!2231204 (= e!1425934 tp!699299)))

(declare-fun tp!699292 () Bool)

(declare-fun e!1425928 () Bool)

(declare-datatypes ((List!26314 0))(
  ( (Nil!26220) (Cons!26220 (h!31621 Regex!6421) (t!199731 List!26314)) )
))
(declare-datatypes ((Context!3938 0))(
  ( (Context!3939 (exprs!2469 List!26314)) )
))
(declare-datatypes ((array!10588 0))(
  ( (array!10589 (arr!4705 (Array (_ BitVec 32) (_ BitVec 64))) (size!20486 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3914 0))(
  ( (tuple3!3915 (_1!15214 Regex!6421) (_2!15214 Context!3938) (_3!2427 C!12988)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25574 0))(
  ( (tuple2!25575 (_1!15215 tuple3!3914) (_2!15215 (InoxSet Context!3938))) )
))
(declare-datatypes ((List!26315 0))(
  ( (Nil!26221) (Cons!26221 (h!31622 tuple2!25574) (t!199732 List!26315)) )
))
(declare-datatypes ((array!10590 0))(
  ( (array!10591 (arr!4706 (Array (_ BitVec 32) List!26315)) (size!20487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6118 0))(
  ( (LongMapFixedSize!6119 (defaultEntry!3424 Int) (mask!7623 (_ BitVec 32)) (extraKeys!3307 (_ BitVec 32)) (zeroValue!3317 List!26315) (minValue!3317 List!26315) (_size!6165 (_ BitVec 32)) (_keys!3356 array!10588) (_values!3339 array!10590) (_vacant!3120 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12053 0))(
  ( (Cell!12054 (v!29812 LongMapFixedSize!6118)) )
))
(declare-datatypes ((MutLongMap!3059 0))(
  ( (LongMap!3059 (underlying!6319 Cell!12053)) (MutLongMapExt!3058 (__x!17403 Int)) )
))
(declare-datatypes ((Cell!12055 0))(
  ( (Cell!12056 (v!29813 MutLongMap!3059)) )
))
(declare-datatypes ((Hashable!2969 0))(
  ( (HashableExt!2968 (__x!17404 Int)) )
))
(declare-datatypes ((MutableMap!2969 0))(
  ( (MutableMapExt!2968 (__x!17405 Int)) (HashMap!2969 (underlying!6320 Cell!12055) (hashF!4892 Hashable!2969) (_size!6166 (_ BitVec 32)) (defaultValue!3131 Int)) )
))
(declare-datatypes ((CacheDown!1984 0))(
  ( (CacheDown!1985 (cache!3350 MutableMap!2969)) )
))
(declare-fun cacheDown!839 () CacheDown!1984)

(declare-fun tp!699298 () Bool)

(declare-fun e!1425935 () Bool)

(declare-fun array_inv!3377 (array!10588) Bool)

(declare-fun array_inv!3378 (array!10590) Bool)

(assert (=> b!2231205 (= e!1425935 (and tp!699296 tp!699292 tp!699298 (array_inv!3377 (_keys!3356 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) (array_inv!3378 (_values!3339 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) e!1425928))))

(declare-fun b!2231206 () Bool)

(declare-fun e!1425932 () Bool)

(declare-fun e!1425927 () Bool)

(assert (=> b!2231206 (= e!1425932 e!1425927)))

(declare-fun mapNonEmpty!14403 () Bool)

(declare-fun mapRes!14403 () Bool)

(declare-fun tp!699301 () Bool)

(declare-fun tp!699297 () Bool)

(assert (=> mapNonEmpty!14403 (= mapRes!14403 (and tp!699301 tp!699297))))

(declare-fun mapRest!14403 () (Array (_ BitVec 32) List!26315))

(declare-fun mapValue!14403 () List!26315)

(declare-fun mapKey!14403 () (_ BitVec 32))

(assert (=> mapNonEmpty!14403 (= (arr!4706 (_values!3339 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) (store mapRest!14403 mapKey!14403 mapValue!14403))))

(declare-fun b!2231208 () Bool)

(assert (=> b!2231208 (= e!1425927 e!1425935)))

(declare-fun b!2231209 () Bool)

(declare-fun res!955603 () Bool)

(assert (=> b!2231209 (=> (not res!955603) (not e!1425930))))

(assert (=> b!2231209 (= res!955603 e!1425936)))

(declare-fun res!955601 () Bool)

(assert (=> b!2231209 (=> res!955601 e!1425936)))

(assert (=> b!2231209 (= res!955601 (not ((_ is Concat!10759) expr!64)))))

(declare-fun b!2231210 () Bool)

(declare-fun res!955604 () Bool)

(assert (=> b!2231210 (=> (not res!955604) (not e!1425930))))

(declare-fun validRegex!2394 (Regex!6421) Bool)

(assert (=> b!2231210 (= res!955604 (validRegex!2394 (regTwo!13354 expr!64)))))

(declare-fun mapIsEmpty!14403 () Bool)

(assert (=> mapIsEmpty!14403 mapRes!14403))

(declare-fun e!1425937 () Bool)

(declare-fun e!1425929 () Bool)

(assert (=> b!2231211 (= e!1425937 (and e!1425929 tp!699290))))

(declare-fun b!2231212 () Bool)

(declare-fun res!955605 () Bool)

(assert (=> b!2231212 (=> (not res!955605) (not e!1425930))))

(declare-fun context!86 () Context!3938)

(declare-fun a!1167 () C!12988)

(declare-datatypes ((Option!5105 0))(
  ( (None!5104) (Some!5104 (v!29814 (InoxSet Context!3938))) )
))
(declare-fun get!7918 (CacheDown!1984 Regex!6421 Context!3938 C!12988) Option!5105)

(assert (=> b!2231212 (= res!955605 (not ((_ is Some!5104) (get!7918 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2231213 () Bool)

(declare-fun tp!699294 () Bool)

(assert (=> b!2231213 (= e!1425928 (and tp!699294 mapRes!14403))))

(declare-fun condMapEmpty!14403 () Bool)

(declare-fun mapDefault!14403 () List!26315)

(assert (=> b!2231213 (= condMapEmpty!14403 (= (arr!4706 (_values!3339 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26315)) mapDefault!14403)))))

(declare-fun b!2231214 () Bool)

(declare-fun lt!830587 () MutLongMap!3059)

(assert (=> b!2231214 (= e!1425929 (and e!1425932 ((_ is LongMap!3059) lt!830587)))))

(assert (=> b!2231214 (= lt!830587 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))

(declare-fun b!2231215 () Bool)

(declare-fun e!1425931 () Bool)

(declare-fun tp!699300 () Bool)

(declare-fun tp!699295 () Bool)

(assert (=> b!2231215 (= e!1425931 (and tp!699300 tp!699295))))

(declare-fun b!2231216 () Bool)

(declare-fun tp_is_empty!10067 () Bool)

(assert (=> b!2231216 (= e!1425931 tp_is_empty!10067)))

(declare-fun b!2231217 () Bool)

(declare-fun res!955602 () Bool)

(assert (=> b!2231217 (=> (not res!955602) (not e!1425930))))

(assert (=> b!2231217 (= res!955602 (and (or (not ((_ is ElementMatch!6421) expr!64)) (not (= (c!355879 expr!64) a!1167))) (not ((_ is Union!6421) expr!64))))))

(declare-fun b!2231218 () Bool)

(declare-fun tp!699293 () Bool)

(declare-fun tp!699291 () Bool)

(assert (=> b!2231218 (= e!1425931 (and tp!699293 tp!699291))))

(declare-fun b!2231219 () Bool)

(declare-fun tp!699302 () Bool)

(assert (=> b!2231219 (= e!1425931 tp!699302)))

(declare-fun b!2231220 () Bool)

(declare-fun e!1425933 () Bool)

(assert (=> b!2231220 (= e!1425933 e!1425937)))

(declare-fun res!955606 () Bool)

(assert (=> start!217578 (=> (not res!955606) (not e!1425930))))

(assert (=> start!217578 (= res!955606 (validRegex!2394 expr!64))))

(assert (=> start!217578 e!1425930))

(assert (=> start!217578 e!1425931))

(declare-fun inv!35609 (CacheDown!1984) Bool)

(assert (=> start!217578 (and (inv!35609 cacheDown!839) e!1425933)))

(declare-fun inv!35610 (Context!3938) Bool)

(assert (=> start!217578 (and (inv!35610 context!86) e!1425934)))

(assert (=> start!217578 tp_is_empty!10067))

(declare-fun b!2231207 () Bool)

(declare-fun $colon$colon!520 (List!26314 Regex!6421) List!26314)

(assert (=> b!2231207 (= e!1425930 (not (inv!35610 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64))))))))

(assert (= (and start!217578 res!955606) b!2231212))

(assert (= (and b!2231212 res!955605) b!2231217))

(assert (= (and b!2231217 res!955602) b!2231209))

(assert (= (and b!2231209 (not res!955601)) b!2231203))

(assert (= (and b!2231209 res!955603) b!2231202))

(assert (= (and b!2231202 res!955600) b!2231210))

(assert (= (and b!2231210 res!955604) b!2231207))

(assert (= (and start!217578 ((_ is ElementMatch!6421) expr!64)) b!2231216))

(assert (= (and start!217578 ((_ is Concat!10759) expr!64)) b!2231215))

(assert (= (and start!217578 ((_ is Star!6421) expr!64)) b!2231219))

(assert (= (and start!217578 ((_ is Union!6421) expr!64)) b!2231218))

(assert (= (and b!2231213 condMapEmpty!14403) mapIsEmpty!14403))

(assert (= (and b!2231213 (not condMapEmpty!14403)) mapNonEmpty!14403))

(assert (= b!2231205 b!2231213))

(assert (= b!2231208 b!2231205))

(assert (= b!2231206 b!2231208))

(assert (= (and b!2231214 ((_ is LongMap!3059) (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))) b!2231206))

(assert (= b!2231211 b!2231214))

(assert (= (and b!2231220 ((_ is HashMap!2969) (cache!3350 cacheDown!839))) b!2231211))

(assert (= start!217578 b!2231220))

(assert (= start!217578 b!2231204))

(declare-fun m!2667712 () Bool)

(assert (=> b!2231205 m!2667712))

(declare-fun m!2667714 () Bool)

(assert (=> b!2231205 m!2667714))

(declare-fun m!2667716 () Bool)

(assert (=> b!2231210 m!2667716))

(declare-fun m!2667718 () Bool)

(assert (=> mapNonEmpty!14403 m!2667718))

(declare-fun m!2667720 () Bool)

(assert (=> start!217578 m!2667720))

(declare-fun m!2667722 () Bool)

(assert (=> start!217578 m!2667722))

(declare-fun m!2667724 () Bool)

(assert (=> start!217578 m!2667724))

(declare-fun m!2667726 () Bool)

(assert (=> b!2231207 m!2667726))

(declare-fun m!2667728 () Bool)

(assert (=> b!2231207 m!2667728))

(declare-fun m!2667730 () Bool)

(assert (=> b!2231212 m!2667730))

(declare-fun m!2667732 () Bool)

(assert (=> b!2231203 m!2667732))

(check-sat (not b!2231204) (not b!2231215) (not b!2231213) (not b!2231207) (not start!217578) b_and!174685 (not b!2231205) (not b_next!65401) (not b!2231212) (not b_next!65403) (not b!2231203) (not b!2231219) (not b!2231218) (not mapNonEmpty!14403) b_and!174687 tp_is_empty!10067 (not b!2231210))
(check-sat b_and!174685 b_and!174687 (not b_next!65403) (not b_next!65401))
(get-model)

(declare-fun d!665040 () Bool)

(declare-fun nullableFct!417 (Regex!6421) Bool)

(assert (=> d!665040 (= (nullable!1767 (regOne!13354 expr!64)) (nullableFct!417 (regOne!13354 expr!64)))))

(declare-fun bs!453896 () Bool)

(assert (= bs!453896 d!665040))

(declare-fun m!2667734 () Bool)

(assert (=> bs!453896 m!2667734))

(assert (=> b!2231203 d!665040))

(declare-fun d!665042 () Bool)

(declare-fun lambda!84294 () Int)

(declare-fun forall!5364 (List!26314 Int) Bool)

(assert (=> d!665042 (= (inv!35610 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)))) (forall!5364 (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)))) lambda!84294))))

(declare-fun bs!453897 () Bool)

(assert (= bs!453897 d!665042))

(declare-fun m!2667736 () Bool)

(assert (=> bs!453897 m!2667736))

(assert (=> b!2231207 d!665042))

(declare-fun d!665044 () Bool)

(assert (=> d!665044 (= ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)) (Cons!26220 (regTwo!13354 expr!64) (exprs!2469 context!86)))))

(assert (=> b!2231207 d!665044))

(declare-fun d!665046 () Bool)

(declare-fun e!1425941 () Bool)

(assert (=> d!665046 e!1425941))

(declare-fun res!955609 () Bool)

(assert (=> d!665046 (=> res!955609 e!1425941)))

(declare-fun lt!830590 () Option!5105)

(declare-fun isEmpty!14897 (Option!5105) Bool)

(assert (=> d!665046 (= res!955609 (isEmpty!14897 lt!830590))))

(declare-fun choose!13128 (CacheDown!1984 Regex!6421 Context!3938 C!12988) Option!5105)

(assert (=> d!665046 (= lt!830590 (choose!13128 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!284 (MutableMap!2969) Bool)

(assert (=> d!665046 (validCacheMapDown!284 (cache!3350 cacheDown!839))))

(assert (=> d!665046 (= (get!7918 cacheDown!839 expr!64 context!86 a!1167) lt!830590)))

(declare-fun b!2231223 () Bool)

(declare-fun get!7919 (Option!5105) (InoxSet Context!3938))

(declare-fun derivationStepZipperDown!47 (Regex!6421 Context!3938 C!12988) (InoxSet Context!3938))

(assert (=> b!2231223 (= e!1425941 (= (get!7919 lt!830590) (derivationStepZipperDown!47 expr!64 context!86 a!1167)))))

(assert (= (and d!665046 (not res!955609)) b!2231223))

(declare-fun m!2667738 () Bool)

(assert (=> d!665046 m!2667738))

(declare-fun m!2667740 () Bool)

(assert (=> d!665046 m!2667740))

(declare-fun m!2667742 () Bool)

(assert (=> d!665046 m!2667742))

(declare-fun m!2667744 () Bool)

(assert (=> b!2231223 m!2667744))

(declare-fun m!2667746 () Bool)

(assert (=> b!2231223 m!2667746))

(assert (=> b!2231212 d!665046))

(declare-fun b!2231242 () Bool)

(declare-fun res!955620 () Bool)

(declare-fun e!1425962 () Bool)

(assert (=> b!2231242 (=> res!955620 e!1425962)))

(assert (=> b!2231242 (= res!955620 (not ((_ is Concat!10759) expr!64)))))

(declare-fun e!1425958 () Bool)

(assert (=> b!2231242 (= e!1425958 e!1425962)))

(declare-fun b!2231243 () Bool)

(declare-fun e!1425959 () Bool)

(declare-fun e!1425956 () Bool)

(assert (=> b!2231243 (= e!1425959 e!1425956)))

(declare-fun c!355884 () Bool)

(assert (=> b!2231243 (= c!355884 ((_ is Star!6421) expr!64))))

(declare-fun b!2231244 () Bool)

(declare-fun e!1425957 () Bool)

(assert (=> b!2231244 (= e!1425962 e!1425957)))

(declare-fun res!955622 () Bool)

(assert (=> b!2231244 (=> (not res!955622) (not e!1425957))))

(declare-fun call!133971 () Bool)

(assert (=> b!2231244 (= res!955622 call!133971)))

(declare-fun bm!133965 () Bool)

(declare-fun c!355885 () Bool)

(assert (=> bm!133965 (= call!133971 (validRegex!2394 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))))))

(declare-fun b!2231245 () Bool)

(assert (=> b!2231245 (= e!1425956 e!1425958)))

(assert (=> b!2231245 (= c!355885 ((_ is Union!6421) expr!64))))

(declare-fun b!2231246 () Bool)

(declare-fun e!1425961 () Bool)

(assert (=> b!2231246 (= e!1425956 e!1425961)))

(declare-fun res!955621 () Bool)

(assert (=> b!2231246 (= res!955621 (not (nullable!1767 (reg!6750 expr!64))))))

(assert (=> b!2231246 (=> (not res!955621) (not e!1425961))))

(declare-fun bm!133966 () Bool)

(declare-fun call!133970 () Bool)

(assert (=> bm!133966 (= call!133970 (validRegex!2394 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))))))

(declare-fun b!2231247 () Bool)

(assert (=> b!2231247 (= e!1425961 call!133970)))

(declare-fun d!665048 () Bool)

(declare-fun res!955624 () Bool)

(assert (=> d!665048 (=> res!955624 e!1425959)))

(assert (=> d!665048 (= res!955624 ((_ is ElementMatch!6421) expr!64))))

(assert (=> d!665048 (= (validRegex!2394 expr!64) e!1425959)))

(declare-fun b!2231248 () Bool)

(declare-fun res!955623 () Bool)

(declare-fun e!1425960 () Bool)

(assert (=> b!2231248 (=> (not res!955623) (not e!1425960))))

(assert (=> b!2231248 (= res!955623 call!133971)))

(assert (=> b!2231248 (= e!1425958 e!1425960)))

(declare-fun b!2231249 () Bool)

(declare-fun call!133972 () Bool)

(assert (=> b!2231249 (= e!1425957 call!133972)))

(declare-fun b!2231250 () Bool)

(assert (=> b!2231250 (= e!1425960 call!133972)))

(declare-fun bm!133967 () Bool)

(assert (=> bm!133967 (= call!133972 call!133970)))

(assert (= (and d!665048 (not res!955624)) b!2231243))

(assert (= (and b!2231243 c!355884) b!2231246))

(assert (= (and b!2231243 (not c!355884)) b!2231245))

(assert (= (and b!2231246 res!955621) b!2231247))

(assert (= (and b!2231245 c!355885) b!2231248))

(assert (= (and b!2231245 (not c!355885)) b!2231242))

(assert (= (and b!2231248 res!955623) b!2231250))

(assert (= (and b!2231242 (not res!955620)) b!2231244))

(assert (= (and b!2231244 res!955622) b!2231249))

(assert (= (or b!2231250 b!2231249) bm!133967))

(assert (= (or b!2231248 b!2231244) bm!133965))

(assert (= (or b!2231247 bm!133967) bm!133966))

(declare-fun m!2667748 () Bool)

(assert (=> bm!133965 m!2667748))

(declare-fun m!2667750 () Bool)

(assert (=> b!2231246 m!2667750))

(declare-fun m!2667752 () Bool)

(assert (=> bm!133966 m!2667752))

(assert (=> start!217578 d!665048))

(declare-fun d!665050 () Bool)

(declare-fun res!955627 () Bool)

(declare-fun e!1425965 () Bool)

(assert (=> d!665050 (=> (not res!955627) (not e!1425965))))

(assert (=> d!665050 (= res!955627 ((_ is HashMap!2969) (cache!3350 cacheDown!839)))))

(assert (=> d!665050 (= (inv!35609 cacheDown!839) e!1425965)))

(declare-fun b!2231253 () Bool)

(assert (=> b!2231253 (= e!1425965 (validCacheMapDown!284 (cache!3350 cacheDown!839)))))

(assert (= (and d!665050 res!955627) b!2231253))

(assert (=> b!2231253 m!2667742))

(assert (=> start!217578 d!665050))

(declare-fun bs!453898 () Bool)

(declare-fun d!665052 () Bool)

(assert (= bs!453898 (and d!665052 d!665042)))

(declare-fun lambda!84295 () Int)

(assert (=> bs!453898 (= lambda!84295 lambda!84294)))

(assert (=> d!665052 (= (inv!35610 context!86) (forall!5364 (exprs!2469 context!86) lambda!84295))))

(declare-fun bs!453899 () Bool)

(assert (= bs!453899 d!665052))

(declare-fun m!2667754 () Bool)

(assert (=> bs!453899 m!2667754))

(assert (=> start!217578 d!665052))

(declare-fun d!665054 () Bool)

(assert (=> d!665054 (= (array_inv!3377 (_keys!3356 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) (bvsge (size!20486 (_keys!3356 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2231205 d!665054))

(declare-fun d!665056 () Bool)

(assert (=> d!665056 (= (array_inv!3378 (_values!3339 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) (bvsge (size!20487 (_values!3339 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2231205 d!665056))

(declare-fun b!2231254 () Bool)

(declare-fun res!955628 () Bool)

(declare-fun e!1425972 () Bool)

(assert (=> b!2231254 (=> res!955628 e!1425972)))

(assert (=> b!2231254 (= res!955628 (not ((_ is Concat!10759) (regTwo!13354 expr!64))))))

(declare-fun e!1425968 () Bool)

(assert (=> b!2231254 (= e!1425968 e!1425972)))

(declare-fun b!2231255 () Bool)

(declare-fun e!1425969 () Bool)

(declare-fun e!1425966 () Bool)

(assert (=> b!2231255 (= e!1425969 e!1425966)))

(declare-fun c!355886 () Bool)

(assert (=> b!2231255 (= c!355886 ((_ is Star!6421) (regTwo!13354 expr!64)))))

(declare-fun b!2231256 () Bool)

(declare-fun e!1425967 () Bool)

(assert (=> b!2231256 (= e!1425972 e!1425967)))

(declare-fun res!955630 () Bool)

(assert (=> b!2231256 (=> (not res!955630) (not e!1425967))))

(declare-fun call!133974 () Bool)

(assert (=> b!2231256 (= res!955630 call!133974)))

(declare-fun bm!133968 () Bool)

(declare-fun c!355887 () Bool)

(assert (=> bm!133968 (= call!133974 (validRegex!2394 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))))))

(declare-fun b!2231257 () Bool)

(assert (=> b!2231257 (= e!1425966 e!1425968)))

(assert (=> b!2231257 (= c!355887 ((_ is Union!6421) (regTwo!13354 expr!64)))))

(declare-fun b!2231258 () Bool)

(declare-fun e!1425971 () Bool)

(assert (=> b!2231258 (= e!1425966 e!1425971)))

(declare-fun res!955629 () Bool)

(assert (=> b!2231258 (= res!955629 (not (nullable!1767 (reg!6750 (regTwo!13354 expr!64)))))))

(assert (=> b!2231258 (=> (not res!955629) (not e!1425971))))

(declare-fun call!133973 () Bool)

(declare-fun bm!133969 () Bool)

(assert (=> bm!133969 (= call!133973 (validRegex!2394 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))))))

(declare-fun b!2231259 () Bool)

(assert (=> b!2231259 (= e!1425971 call!133973)))

(declare-fun d!665058 () Bool)

(declare-fun res!955632 () Bool)

(assert (=> d!665058 (=> res!955632 e!1425969)))

(assert (=> d!665058 (= res!955632 ((_ is ElementMatch!6421) (regTwo!13354 expr!64)))))

(assert (=> d!665058 (= (validRegex!2394 (regTwo!13354 expr!64)) e!1425969)))

(declare-fun b!2231260 () Bool)

(declare-fun res!955631 () Bool)

(declare-fun e!1425970 () Bool)

(assert (=> b!2231260 (=> (not res!955631) (not e!1425970))))

(assert (=> b!2231260 (= res!955631 call!133974)))

(assert (=> b!2231260 (= e!1425968 e!1425970)))

(declare-fun b!2231261 () Bool)

(declare-fun call!133975 () Bool)

(assert (=> b!2231261 (= e!1425967 call!133975)))

(declare-fun b!2231262 () Bool)

(assert (=> b!2231262 (= e!1425970 call!133975)))

(declare-fun bm!133970 () Bool)

(assert (=> bm!133970 (= call!133975 call!133973)))

(assert (= (and d!665058 (not res!955632)) b!2231255))

(assert (= (and b!2231255 c!355886) b!2231258))

(assert (= (and b!2231255 (not c!355886)) b!2231257))

(assert (= (and b!2231258 res!955629) b!2231259))

(assert (= (and b!2231257 c!355887) b!2231260))

(assert (= (and b!2231257 (not c!355887)) b!2231254))

(assert (= (and b!2231260 res!955631) b!2231262))

(assert (= (and b!2231254 (not res!955628)) b!2231256))

(assert (= (and b!2231256 res!955630) b!2231261))

(assert (= (or b!2231262 b!2231261) bm!133970))

(assert (= (or b!2231260 b!2231256) bm!133968))

(assert (= (or b!2231259 bm!133970) bm!133969))

(declare-fun m!2667756 () Bool)

(assert (=> bm!133968 m!2667756))

(declare-fun m!2667758 () Bool)

(assert (=> b!2231258 m!2667758))

(declare-fun m!2667760 () Bool)

(assert (=> bm!133969 m!2667760))

(assert (=> b!2231210 d!665058))

(declare-fun b!2231272 () Bool)

(declare-fun e!1425980 () Bool)

(declare-fun tp!699313 () Bool)

(assert (=> b!2231272 (= e!1425980 tp!699313)))

(declare-fun b!2231273 () Bool)

(declare-fun e!1425979 () Bool)

(declare-fun tp!699315 () Bool)

(assert (=> b!2231273 (= e!1425979 tp!699315)))

(declare-fun setIsEmpty!20099 () Bool)

(declare-fun setRes!20099 () Bool)

(assert (=> setIsEmpty!20099 setRes!20099))

(declare-fun tp!699314 () Bool)

(declare-fun setElem!20099 () Context!3938)

(declare-fun setNonEmpty!20099 () Bool)

(assert (=> setNonEmpty!20099 (= setRes!20099 (and tp!699314 (inv!35610 setElem!20099) e!1425980))))

(declare-fun setRest!20099 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20099 (= (_2!15215 (h!31622 mapDefault!14403)) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20099 true) setRest!20099))))

(declare-fun b!2231271 () Bool)

(declare-fun e!1425981 () Bool)

(declare-fun tp!699316 () Bool)

(declare-fun tp!699317 () Bool)

(assert (=> b!2231271 (= e!1425981 (and tp!699317 (inv!35610 (_2!15214 (_1!15215 (h!31622 mapDefault!14403)))) e!1425979 tp_is_empty!10067 setRes!20099 tp!699316))))

(declare-fun condSetEmpty!20099 () Bool)

(assert (=> b!2231271 (= condSetEmpty!20099 (= (_2!15215 (h!31622 mapDefault!14403)) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231213 (= tp!699294 e!1425981)))

(assert (= b!2231271 b!2231273))

(assert (= (and b!2231271 condSetEmpty!20099) setIsEmpty!20099))

(assert (= (and b!2231271 (not condSetEmpty!20099)) setNonEmpty!20099))

(assert (= setNonEmpty!20099 b!2231272))

(assert (= (and b!2231213 ((_ is Cons!26221) mapDefault!14403)) b!2231271))

(declare-fun m!2667762 () Bool)

(assert (=> setNonEmpty!20099 m!2667762))

(declare-fun m!2667764 () Bool)

(assert (=> b!2231271 m!2667764))

(declare-fun b!2231278 () Bool)

(declare-fun e!1425984 () Bool)

(declare-fun tp!699322 () Bool)

(declare-fun tp!699323 () Bool)

(assert (=> b!2231278 (= e!1425984 (and tp!699322 tp!699323))))

(assert (=> b!2231204 (= tp!699299 e!1425984)))

(assert (= (and b!2231204 ((_ is Cons!26220) (exprs!2469 context!86))) b!2231278))

(declare-fun e!1425987 () Bool)

(assert (=> b!2231218 (= tp!699293 e!1425987)))

(declare-fun b!2231290 () Bool)

(declare-fun tp!699335 () Bool)

(declare-fun tp!699338 () Bool)

(assert (=> b!2231290 (= e!1425987 (and tp!699335 tp!699338))))

(declare-fun b!2231291 () Bool)

(declare-fun tp!699336 () Bool)

(assert (=> b!2231291 (= e!1425987 tp!699336)))

(declare-fun b!2231289 () Bool)

(assert (=> b!2231289 (= e!1425987 tp_is_empty!10067)))

(declare-fun b!2231292 () Bool)

(declare-fun tp!699337 () Bool)

(declare-fun tp!699334 () Bool)

(assert (=> b!2231292 (= e!1425987 (and tp!699337 tp!699334))))

(assert (= (and b!2231218 ((_ is ElementMatch!6421) (regOne!13355 expr!64))) b!2231289))

(assert (= (and b!2231218 ((_ is Concat!10759) (regOne!13355 expr!64))) b!2231290))

(assert (= (and b!2231218 ((_ is Star!6421) (regOne!13355 expr!64))) b!2231291))

(assert (= (and b!2231218 ((_ is Union!6421) (regOne!13355 expr!64))) b!2231292))

(declare-fun e!1425988 () Bool)

(assert (=> b!2231218 (= tp!699291 e!1425988)))

(declare-fun b!2231294 () Bool)

(declare-fun tp!699340 () Bool)

(declare-fun tp!699343 () Bool)

(assert (=> b!2231294 (= e!1425988 (and tp!699340 tp!699343))))

(declare-fun b!2231295 () Bool)

(declare-fun tp!699341 () Bool)

(assert (=> b!2231295 (= e!1425988 tp!699341)))

(declare-fun b!2231293 () Bool)

(assert (=> b!2231293 (= e!1425988 tp_is_empty!10067)))

(declare-fun b!2231296 () Bool)

(declare-fun tp!699342 () Bool)

(declare-fun tp!699339 () Bool)

(assert (=> b!2231296 (= e!1425988 (and tp!699342 tp!699339))))

(assert (= (and b!2231218 ((_ is ElementMatch!6421) (regTwo!13355 expr!64))) b!2231293))

(assert (= (and b!2231218 ((_ is Concat!10759) (regTwo!13355 expr!64))) b!2231294))

(assert (= (and b!2231218 ((_ is Star!6421) (regTwo!13355 expr!64))) b!2231295))

(assert (= (and b!2231218 ((_ is Union!6421) (regTwo!13355 expr!64))) b!2231296))

(declare-fun b!2231298 () Bool)

(declare-fun e!1425990 () Bool)

(declare-fun tp!699344 () Bool)

(assert (=> b!2231298 (= e!1425990 tp!699344)))

(declare-fun b!2231299 () Bool)

(declare-fun e!1425989 () Bool)

(declare-fun tp!699346 () Bool)

(assert (=> b!2231299 (= e!1425989 tp!699346)))

(declare-fun setIsEmpty!20100 () Bool)

(declare-fun setRes!20100 () Bool)

(assert (=> setIsEmpty!20100 setRes!20100))

(declare-fun setNonEmpty!20100 () Bool)

(declare-fun setElem!20100 () Context!3938)

(declare-fun tp!699345 () Bool)

(assert (=> setNonEmpty!20100 (= setRes!20100 (and tp!699345 (inv!35610 setElem!20100) e!1425990))))

(declare-fun setRest!20100 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20100 (= (_2!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20100 true) setRest!20100))))

(declare-fun e!1425991 () Bool)

(declare-fun b!2231297 () Bool)

(declare-fun tp!699348 () Bool)

(declare-fun tp!699347 () Bool)

(assert (=> b!2231297 (= e!1425991 (and tp!699348 (inv!35610 (_2!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))) e!1425989 tp_is_empty!10067 setRes!20100 tp!699347))))

(declare-fun condSetEmpty!20100 () Bool)

(assert (=> b!2231297 (= condSetEmpty!20100 (= (_2!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231205 (= tp!699292 e!1425991)))

(assert (= b!2231297 b!2231299))

(assert (= (and b!2231297 condSetEmpty!20100) setIsEmpty!20100))

(assert (= (and b!2231297 (not condSetEmpty!20100)) setNonEmpty!20100))

(assert (= setNonEmpty!20100 b!2231298))

(assert (= (and b!2231205 ((_ is Cons!26221) (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))) b!2231297))

(declare-fun m!2667766 () Bool)

(assert (=> setNonEmpty!20100 m!2667766))

(declare-fun m!2667768 () Bool)

(assert (=> b!2231297 m!2667768))

(declare-fun b!2231301 () Bool)

(declare-fun e!1425993 () Bool)

(declare-fun tp!699349 () Bool)

(assert (=> b!2231301 (= e!1425993 tp!699349)))

(declare-fun b!2231302 () Bool)

(declare-fun e!1425992 () Bool)

(declare-fun tp!699351 () Bool)

(assert (=> b!2231302 (= e!1425992 tp!699351)))

(declare-fun setIsEmpty!20101 () Bool)

(declare-fun setRes!20101 () Bool)

(assert (=> setIsEmpty!20101 setRes!20101))

(declare-fun setNonEmpty!20101 () Bool)

(declare-fun tp!699350 () Bool)

(declare-fun setElem!20101 () Context!3938)

(assert (=> setNonEmpty!20101 (= setRes!20101 (and tp!699350 (inv!35610 setElem!20101) e!1425993))))

(declare-fun setRest!20101 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20101 (= (_2!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20101 true) setRest!20101))))

(declare-fun b!2231300 () Bool)

(declare-fun tp!699353 () Bool)

(declare-fun e!1425994 () Bool)

(declare-fun tp!699352 () Bool)

(assert (=> b!2231300 (= e!1425994 (and tp!699353 (inv!35610 (_2!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))) e!1425992 tp_is_empty!10067 setRes!20101 tp!699352))))

(declare-fun condSetEmpty!20101 () Bool)

(assert (=> b!2231300 (= condSetEmpty!20101 (= (_2!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231205 (= tp!699298 e!1425994)))

(assert (= b!2231300 b!2231302))

(assert (= (and b!2231300 condSetEmpty!20101) setIsEmpty!20101))

(assert (= (and b!2231300 (not condSetEmpty!20101)) setNonEmpty!20101))

(assert (= setNonEmpty!20101 b!2231301))

(assert (= (and b!2231205 ((_ is Cons!26221) (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))) b!2231300))

(declare-fun m!2667770 () Bool)

(assert (=> setNonEmpty!20101 m!2667770))

(declare-fun m!2667772 () Bool)

(assert (=> b!2231300 m!2667772))

(declare-fun e!1425995 () Bool)

(assert (=> b!2231219 (= tp!699302 e!1425995)))

(declare-fun b!2231304 () Bool)

(declare-fun tp!699355 () Bool)

(declare-fun tp!699358 () Bool)

(assert (=> b!2231304 (= e!1425995 (and tp!699355 tp!699358))))

(declare-fun b!2231305 () Bool)

(declare-fun tp!699356 () Bool)

(assert (=> b!2231305 (= e!1425995 tp!699356)))

(declare-fun b!2231303 () Bool)

(assert (=> b!2231303 (= e!1425995 tp_is_empty!10067)))

(declare-fun b!2231306 () Bool)

(declare-fun tp!699357 () Bool)

(declare-fun tp!699354 () Bool)

(assert (=> b!2231306 (= e!1425995 (and tp!699357 tp!699354))))

(assert (= (and b!2231219 ((_ is ElementMatch!6421) (reg!6750 expr!64))) b!2231303))

(assert (= (and b!2231219 ((_ is Concat!10759) (reg!6750 expr!64))) b!2231304))

(assert (= (and b!2231219 ((_ is Star!6421) (reg!6750 expr!64))) b!2231305))

(assert (= (and b!2231219 ((_ is Union!6421) (reg!6750 expr!64))) b!2231306))

(declare-fun e!1425996 () Bool)

(assert (=> b!2231215 (= tp!699300 e!1425996)))

(declare-fun b!2231308 () Bool)

(declare-fun tp!699360 () Bool)

(declare-fun tp!699363 () Bool)

(assert (=> b!2231308 (= e!1425996 (and tp!699360 tp!699363))))

(declare-fun b!2231309 () Bool)

(declare-fun tp!699361 () Bool)

(assert (=> b!2231309 (= e!1425996 tp!699361)))

(declare-fun b!2231307 () Bool)

(assert (=> b!2231307 (= e!1425996 tp_is_empty!10067)))

(declare-fun b!2231310 () Bool)

(declare-fun tp!699362 () Bool)

(declare-fun tp!699359 () Bool)

(assert (=> b!2231310 (= e!1425996 (and tp!699362 tp!699359))))

(assert (= (and b!2231215 ((_ is ElementMatch!6421) (regOne!13354 expr!64))) b!2231307))

(assert (= (and b!2231215 ((_ is Concat!10759) (regOne!13354 expr!64))) b!2231308))

(assert (= (and b!2231215 ((_ is Star!6421) (regOne!13354 expr!64))) b!2231309))

(assert (= (and b!2231215 ((_ is Union!6421) (regOne!13354 expr!64))) b!2231310))

(declare-fun e!1425997 () Bool)

(assert (=> b!2231215 (= tp!699295 e!1425997)))

(declare-fun b!2231312 () Bool)

(declare-fun tp!699365 () Bool)

(declare-fun tp!699368 () Bool)

(assert (=> b!2231312 (= e!1425997 (and tp!699365 tp!699368))))

(declare-fun b!2231313 () Bool)

(declare-fun tp!699366 () Bool)

(assert (=> b!2231313 (= e!1425997 tp!699366)))

(declare-fun b!2231311 () Bool)

(assert (=> b!2231311 (= e!1425997 tp_is_empty!10067)))

(declare-fun b!2231314 () Bool)

(declare-fun tp!699367 () Bool)

(declare-fun tp!699364 () Bool)

(assert (=> b!2231314 (= e!1425997 (and tp!699367 tp!699364))))

(assert (= (and b!2231215 ((_ is ElementMatch!6421) (regTwo!13354 expr!64))) b!2231311))

(assert (= (and b!2231215 ((_ is Concat!10759) (regTwo!13354 expr!64))) b!2231312))

(assert (= (and b!2231215 ((_ is Star!6421) (regTwo!13354 expr!64))) b!2231313))

(assert (= (and b!2231215 ((_ is Union!6421) (regTwo!13354 expr!64))) b!2231314))

(declare-fun tp!699397 () Bool)

(declare-fun tp!699391 () Bool)

(declare-fun setRes!20106 () Bool)

(declare-fun e!1426013 () Bool)

(declare-fun mapValue!14406 () List!26315)

(declare-fun e!1426012 () Bool)

(declare-fun b!2231329 () Bool)

(assert (=> b!2231329 (= e!1426013 (and tp!699397 (inv!35610 (_2!15214 (_1!15215 (h!31622 mapValue!14406)))) e!1426012 tp_is_empty!10067 setRes!20106 tp!699391))))

(declare-fun condSetEmpty!20107 () Bool)

(assert (=> b!2231329 (= condSetEmpty!20107 (= (_2!15215 (h!31622 mapValue!14406)) ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setIsEmpty!20106 () Bool)

(declare-fun setRes!20107 () Bool)

(assert (=> setIsEmpty!20106 setRes!20107))

(declare-fun mapNonEmpty!14406 () Bool)

(declare-fun mapRes!14406 () Bool)

(declare-fun tp!699394 () Bool)

(assert (=> mapNonEmpty!14406 (= mapRes!14406 (and tp!699394 e!1426013))))

(declare-fun mapKey!14406 () (_ BitVec 32))

(declare-fun mapRest!14406 () (Array (_ BitVec 32) List!26315))

(assert (=> mapNonEmpty!14406 (= mapRest!14403 (store mapRest!14406 mapKey!14406 mapValue!14406))))

(declare-fun condMapEmpty!14406 () Bool)

(declare-fun mapDefault!14406 () List!26315)

(assert (=> mapNonEmpty!14403 (= condMapEmpty!14406 (= mapRest!14403 ((as const (Array (_ BitVec 32) List!26315)) mapDefault!14406)))))

(declare-fun e!1426015 () Bool)

(assert (=> mapNonEmpty!14403 (= tp!699301 (and e!1426015 mapRes!14406))))

(declare-fun e!1426011 () Bool)

(declare-fun setElem!20107 () Context!3938)

(declare-fun tp!699393 () Bool)

(declare-fun setNonEmpty!20106 () Bool)

(assert (=> setNonEmpty!20106 (= setRes!20107 (and tp!699393 (inv!35610 setElem!20107) e!1426011))))

(declare-fun setRest!20107 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20106 (= (_2!15215 (h!31622 mapDefault!14406)) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20107 true) setRest!20107))))

(declare-fun mapIsEmpty!14406 () Bool)

(assert (=> mapIsEmpty!14406 mapRes!14406))

(declare-fun b!2231330 () Bool)

(declare-fun tp!699401 () Bool)

(assert (=> b!2231330 (= e!1426011 tp!699401)))

(declare-fun setIsEmpty!20107 () Bool)

(assert (=> setIsEmpty!20107 setRes!20106))

(declare-fun e!1426010 () Bool)

(declare-fun tp!699396 () Bool)

(declare-fun tp!699395 () Bool)

(declare-fun b!2231331 () Bool)

(assert (=> b!2231331 (= e!1426015 (and tp!699396 (inv!35610 (_2!15214 (_1!15215 (h!31622 mapDefault!14406)))) e!1426010 tp_is_empty!10067 setRes!20107 tp!699395))))

(declare-fun condSetEmpty!20106 () Bool)

(assert (=> b!2231331 (= condSetEmpty!20106 (= (_2!15215 (h!31622 mapDefault!14406)) ((as const (Array Context!3938 Bool)) false)))))

(declare-fun b!2231332 () Bool)

(declare-fun tp!699398 () Bool)

(assert (=> b!2231332 (= e!1426010 tp!699398)))

(declare-fun b!2231333 () Bool)

(declare-fun tp!699400 () Bool)

(assert (=> b!2231333 (= e!1426012 tp!699400)))

(declare-fun tp!699392 () Bool)

(declare-fun e!1426014 () Bool)

(declare-fun setNonEmpty!20107 () Bool)

(declare-fun setElem!20106 () Context!3938)

(assert (=> setNonEmpty!20107 (= setRes!20106 (and tp!699392 (inv!35610 setElem!20106) e!1426014))))

(declare-fun setRest!20106 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20107 (= (_2!15215 (h!31622 mapValue!14406)) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20106 true) setRest!20106))))

(declare-fun b!2231334 () Bool)

(declare-fun tp!699399 () Bool)

(assert (=> b!2231334 (= e!1426014 tp!699399)))

(assert (= (and mapNonEmpty!14403 condMapEmpty!14406) mapIsEmpty!14406))

(assert (= (and mapNonEmpty!14403 (not condMapEmpty!14406)) mapNonEmpty!14406))

(assert (= b!2231329 b!2231333))

(assert (= (and b!2231329 condSetEmpty!20107) setIsEmpty!20107))

(assert (= (and b!2231329 (not condSetEmpty!20107)) setNonEmpty!20107))

(assert (= setNonEmpty!20107 b!2231334))

(assert (= (and mapNonEmpty!14406 ((_ is Cons!26221) mapValue!14406)) b!2231329))

(assert (= b!2231331 b!2231332))

(assert (= (and b!2231331 condSetEmpty!20106) setIsEmpty!20106))

(assert (= (and b!2231331 (not condSetEmpty!20106)) setNonEmpty!20106))

(assert (= setNonEmpty!20106 b!2231330))

(assert (= (and mapNonEmpty!14403 ((_ is Cons!26221) mapDefault!14406)) b!2231331))

(declare-fun m!2667774 () Bool)

(assert (=> setNonEmpty!20106 m!2667774))

(declare-fun m!2667776 () Bool)

(assert (=> b!2231329 m!2667776))

(declare-fun m!2667778 () Bool)

(assert (=> setNonEmpty!20107 m!2667778))

(declare-fun m!2667780 () Bool)

(assert (=> mapNonEmpty!14406 m!2667780))

(declare-fun m!2667782 () Bool)

(assert (=> b!2231331 m!2667782))

(declare-fun b!2231336 () Bool)

(declare-fun e!1426017 () Bool)

(declare-fun tp!699402 () Bool)

(assert (=> b!2231336 (= e!1426017 tp!699402)))

(declare-fun b!2231337 () Bool)

(declare-fun e!1426016 () Bool)

(declare-fun tp!699404 () Bool)

(assert (=> b!2231337 (= e!1426016 tp!699404)))

(declare-fun setIsEmpty!20108 () Bool)

(declare-fun setRes!20108 () Bool)

(assert (=> setIsEmpty!20108 setRes!20108))

(declare-fun setNonEmpty!20108 () Bool)

(declare-fun setElem!20108 () Context!3938)

(declare-fun tp!699403 () Bool)

(assert (=> setNonEmpty!20108 (= setRes!20108 (and tp!699403 (inv!35610 setElem!20108) e!1426017))))

(declare-fun setRest!20108 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20108 (= (_2!15215 (h!31622 mapValue!14403)) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20108 true) setRest!20108))))

(declare-fun e!1426018 () Bool)

(declare-fun b!2231335 () Bool)

(declare-fun tp!699405 () Bool)

(declare-fun tp!699406 () Bool)

(assert (=> b!2231335 (= e!1426018 (and tp!699406 (inv!35610 (_2!15214 (_1!15215 (h!31622 mapValue!14403)))) e!1426016 tp_is_empty!10067 setRes!20108 tp!699405))))

(declare-fun condSetEmpty!20108 () Bool)

(assert (=> b!2231335 (= condSetEmpty!20108 (= (_2!15215 (h!31622 mapValue!14403)) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> mapNonEmpty!14403 (= tp!699297 e!1426018)))

(assert (= b!2231335 b!2231337))

(assert (= (and b!2231335 condSetEmpty!20108) setIsEmpty!20108))

(assert (= (and b!2231335 (not condSetEmpty!20108)) setNonEmpty!20108))

(assert (= setNonEmpty!20108 b!2231336))

(assert (= (and mapNonEmpty!14403 ((_ is Cons!26221) mapValue!14403)) b!2231335))

(declare-fun m!2667784 () Bool)

(assert (=> setNonEmpty!20108 m!2667784))

(declare-fun m!2667786 () Bool)

(assert (=> b!2231335 m!2667786))

(check-sat (not b!2231329) (not b!2231278) (not setNonEmpty!20108) (not b!2231333) (not setNonEmpty!20101) (not b!2231292) (not b!2231290) (not b!2231301) (not b!2231273) b_and!174685 (not bm!133966) tp_is_empty!10067 (not b!2231298) (not b!2231272) (not b!2231334) (not d!665046) (not b!2231253) (not b!2231302) (not bm!133969) (not b!2231291) (not b!2231297) (not b!2231308) (not b!2231331) (not d!665042) (not b!2231312) (not b!2231271) (not b!2231258) (not bm!133968) (not d!665052) (not b_next!65403) (not setNonEmpty!20100) (not setNonEmpty!20107) (not b!2231294) (not b!2231246) b_and!174687 (not setNonEmpty!20099) (not bm!133965) (not b!2231336) (not b!2231314) (not b!2231306) (not b!2231223) (not b!2231295) (not mapNonEmpty!14406) (not b!2231332) (not b!2231296) (not b!2231335) (not b!2231304) (not b_next!65401) (not b!2231337) (not b!2231305) (not b!2231310) (not b!2231299) (not b!2231330) (not setNonEmpty!20106) (not b!2231300) (not b!2231309) (not b!2231313) (not d!665040))
(check-sat b_and!174685 b_and!174687 (not b_next!65403) (not b_next!65401))
(get-model)

(declare-fun bs!453900 () Bool)

(declare-fun d!665060 () Bool)

(assert (= bs!453900 (and d!665060 d!665042)))

(declare-fun lambda!84296 () Int)

(assert (=> bs!453900 (= lambda!84296 lambda!84294)))

(declare-fun bs!453901 () Bool)

(assert (= bs!453901 (and d!665060 d!665052)))

(assert (=> bs!453901 (= lambda!84296 lambda!84295)))

(assert (=> d!665060 (= (inv!35610 setElem!20099) (forall!5364 (exprs!2469 setElem!20099) lambda!84296))))

(declare-fun bs!453902 () Bool)

(assert (= bs!453902 d!665060))

(declare-fun m!2667788 () Bool)

(assert (=> bs!453902 m!2667788))

(assert (=> setNonEmpty!20099 d!665060))

(declare-fun d!665062 () Bool)

(assert (=> d!665062 (= (get!7919 lt!830590) (v!29814 lt!830590))))

(assert (=> b!2231223 d!665062))

(declare-fun b!2231360 () Bool)

(declare-fun e!1426035 () (InoxSet Context!3938))

(declare-fun e!1426031 () (InoxSet Context!3938))

(assert (=> b!2231360 (= e!1426035 e!1426031)))

(declare-fun c!355902 () Bool)

(assert (=> b!2231360 (= c!355902 ((_ is Concat!10759) expr!64))))

(declare-fun b!2231361 () Bool)

(declare-fun e!1426033 () (InoxSet Context!3938))

(declare-fun call!133989 () (InoxSet Context!3938))

(assert (=> b!2231361 (= e!1426033 call!133989)))

(declare-fun d!665064 () Bool)

(declare-fun c!355900 () Bool)

(assert (=> d!665064 (= c!355900 (and ((_ is ElementMatch!6421) expr!64) (= (c!355879 expr!64) a!1167)))))

(declare-fun e!1426036 () (InoxSet Context!3938))

(assert (=> d!665064 (= (derivationStepZipperDown!47 expr!64 context!86 a!1167) e!1426036)))

(declare-fun b!2231362 () Bool)

(declare-fun e!1426034 () (InoxSet Context!3938))

(declare-fun call!133993 () (InoxSet Context!3938))

(declare-fun call!133991 () (InoxSet Context!3938))

(assert (=> b!2231362 (= e!1426034 ((_ map or) call!133993 call!133991))))

(declare-fun b!2231363 () Bool)

(declare-fun c!355901 () Bool)

(declare-fun e!1426032 () Bool)

(assert (=> b!2231363 (= c!355901 e!1426032)))

(declare-fun res!955635 () Bool)

(assert (=> b!2231363 (=> (not res!955635) (not e!1426032))))

(assert (=> b!2231363 (= res!955635 ((_ is Concat!10759) expr!64))))

(assert (=> b!2231363 (= e!1426034 e!1426035)))

(declare-fun b!2231364 () Bool)

(assert (=> b!2231364 (= e!1426031 call!133989)))

(declare-fun call!133992 () List!26314)

(declare-fun c!355899 () Bool)

(declare-fun bm!133983 () Bool)

(assert (=> bm!133983 (= call!133993 (derivationStepZipperDown!47 (ite c!355899 (regOne!13355 expr!64) (regOne!13354 expr!64)) (ite c!355899 context!86 (Context!3939 call!133992)) a!1167))))

(declare-fun bm!133984 () Bool)

(declare-fun call!133988 () List!26314)

(assert (=> bm!133984 (= call!133988 call!133992)))

(declare-fun bm!133985 () Bool)

(declare-fun call!133990 () (InoxSet Context!3938))

(assert (=> bm!133985 (= call!133989 call!133990)))

(declare-fun bm!133986 () Bool)

(assert (=> bm!133986 (= call!133991 (derivationStepZipperDown!47 (ite c!355899 (regTwo!13355 expr!64) (ite c!355901 (regTwo!13354 expr!64) (ite c!355902 (regOne!13354 expr!64) (reg!6750 expr!64)))) (ite (or c!355899 c!355901) context!86 (Context!3939 call!133988)) a!1167))))

(declare-fun b!2231365 () Bool)

(assert (=> b!2231365 (= e!1426036 e!1426034)))

(assert (=> b!2231365 (= c!355899 ((_ is Union!6421) expr!64))))

(declare-fun b!2231366 () Bool)

(assert (=> b!2231366 (= e!1426035 ((_ map or) call!133993 call!133990))))

(declare-fun bm!133987 () Bool)

(assert (=> bm!133987 (= call!133990 call!133991)))

(declare-fun bm!133988 () Bool)

(assert (=> bm!133988 (= call!133992 ($colon$colon!520 (exprs!2469 context!86) (ite (or c!355901 c!355902) (regTwo!13354 expr!64) expr!64)))))

(declare-fun b!2231367 () Bool)

(assert (=> b!2231367 (= e!1426033 ((as const (Array Context!3938 Bool)) false))))

(declare-fun b!2231368 () Bool)

(declare-fun c!355898 () Bool)

(assert (=> b!2231368 (= c!355898 ((_ is Star!6421) expr!64))))

(assert (=> b!2231368 (= e!1426031 e!1426033)))

(declare-fun b!2231369 () Bool)

(assert (=> b!2231369 (= e!1426032 (nullable!1767 (regOne!13354 expr!64)))))

(declare-fun b!2231370 () Bool)

(assert (=> b!2231370 (= e!1426036 (store ((as const (Array Context!3938 Bool)) false) context!86 true))))

(assert (= (and d!665064 c!355900) b!2231370))

(assert (= (and d!665064 (not c!355900)) b!2231365))

(assert (= (and b!2231365 c!355899) b!2231362))

(assert (= (and b!2231365 (not c!355899)) b!2231363))

(assert (= (and b!2231363 res!955635) b!2231369))

(assert (= (and b!2231363 c!355901) b!2231366))

(assert (= (and b!2231363 (not c!355901)) b!2231360))

(assert (= (and b!2231360 c!355902) b!2231364))

(assert (= (and b!2231360 (not c!355902)) b!2231368))

(assert (= (and b!2231368 c!355898) b!2231361))

(assert (= (and b!2231368 (not c!355898)) b!2231367))

(assert (= (or b!2231364 b!2231361) bm!133984))

(assert (= (or b!2231364 b!2231361) bm!133985))

(assert (= (or b!2231366 bm!133984) bm!133988))

(assert (= (or b!2231366 bm!133985) bm!133987))

(assert (= (or b!2231362 bm!133987) bm!133986))

(assert (= (or b!2231362 b!2231366) bm!133983))

(declare-fun m!2667790 () Bool)

(assert (=> bm!133988 m!2667790))

(declare-fun m!2667792 () Bool)

(assert (=> bm!133983 m!2667792))

(declare-fun m!2667794 () Bool)

(assert (=> b!2231370 m!2667794))

(assert (=> b!2231369 m!2667732))

(declare-fun m!2667796 () Bool)

(assert (=> bm!133986 m!2667796))

(assert (=> b!2231223 d!665064))

(declare-fun d!665066 () Bool)

(declare-fun res!955640 () Bool)

(declare-fun e!1426041 () Bool)

(assert (=> d!665066 (=> res!955640 e!1426041)))

(assert (=> d!665066 (= res!955640 ((_ is Nil!26220) (exprs!2469 context!86)))))

(assert (=> d!665066 (= (forall!5364 (exprs!2469 context!86) lambda!84295) e!1426041)))

(declare-fun b!2231375 () Bool)

(declare-fun e!1426042 () Bool)

(assert (=> b!2231375 (= e!1426041 e!1426042)))

(declare-fun res!955641 () Bool)

(assert (=> b!2231375 (=> (not res!955641) (not e!1426042))))

(declare-fun dynLambda!11523 (Int Regex!6421) Bool)

(assert (=> b!2231375 (= res!955641 (dynLambda!11523 lambda!84295 (h!31621 (exprs!2469 context!86))))))

(declare-fun b!2231376 () Bool)

(assert (=> b!2231376 (= e!1426042 (forall!5364 (t!199731 (exprs!2469 context!86)) lambda!84295))))

(assert (= (and d!665066 (not res!955640)) b!2231375))

(assert (= (and b!2231375 res!955641) b!2231376))

(declare-fun b_lambda!71653 () Bool)

(assert (=> (not b_lambda!71653) (not b!2231375)))

(declare-fun m!2667798 () Bool)

(assert (=> b!2231375 m!2667798))

(declare-fun m!2667800 () Bool)

(assert (=> b!2231376 m!2667800))

(assert (=> d!665052 d!665066))

(declare-fun bs!453903 () Bool)

(declare-fun d!665068 () Bool)

(assert (= bs!453903 (and d!665068 d!665042)))

(declare-fun lambda!84297 () Int)

(assert (=> bs!453903 (= lambda!84297 lambda!84294)))

(declare-fun bs!453904 () Bool)

(assert (= bs!453904 (and d!665068 d!665052)))

(assert (=> bs!453904 (= lambda!84297 lambda!84295)))

(declare-fun bs!453905 () Bool)

(assert (= bs!453905 (and d!665068 d!665060)))

(assert (=> bs!453905 (= lambda!84297 lambda!84296)))

(assert (=> d!665068 (= (inv!35610 setElem!20100) (forall!5364 (exprs!2469 setElem!20100) lambda!84297))))

(declare-fun bs!453906 () Bool)

(assert (= bs!453906 d!665068))

(declare-fun m!2667802 () Bool)

(assert (=> bs!453906 m!2667802))

(assert (=> setNonEmpty!20100 d!665068))

(declare-fun bs!453907 () Bool)

(declare-fun d!665070 () Bool)

(assert (= bs!453907 (and d!665070 d!665042)))

(declare-fun lambda!84298 () Int)

(assert (=> bs!453907 (= lambda!84298 lambda!84294)))

(declare-fun bs!453908 () Bool)

(assert (= bs!453908 (and d!665070 d!665052)))

(assert (=> bs!453908 (= lambda!84298 lambda!84295)))

(declare-fun bs!453909 () Bool)

(assert (= bs!453909 (and d!665070 d!665060)))

(assert (=> bs!453909 (= lambda!84298 lambda!84296)))

(declare-fun bs!453910 () Bool)

(assert (= bs!453910 (and d!665070 d!665068)))

(assert (=> bs!453910 (= lambda!84298 lambda!84297)))

(assert (=> d!665070 (= (inv!35610 (_2!15214 (_1!15215 (h!31622 mapValue!14403)))) (forall!5364 (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapValue!14403)))) lambda!84298))))

(declare-fun bs!453911 () Bool)

(assert (= bs!453911 d!665070))

(declare-fun m!2667804 () Bool)

(assert (=> bs!453911 m!2667804))

(assert (=> b!2231335 d!665070))

(declare-fun bs!453912 () Bool)

(declare-fun d!665072 () Bool)

(assert (= bs!453912 (and d!665072 d!665068)))

(declare-fun lambda!84299 () Int)

(assert (=> bs!453912 (= lambda!84299 lambda!84297)))

(declare-fun bs!453913 () Bool)

(assert (= bs!453913 (and d!665072 d!665052)))

(assert (=> bs!453913 (= lambda!84299 lambda!84295)))

(declare-fun bs!453914 () Bool)

(assert (= bs!453914 (and d!665072 d!665070)))

(assert (=> bs!453914 (= lambda!84299 lambda!84298)))

(declare-fun bs!453915 () Bool)

(assert (= bs!453915 (and d!665072 d!665042)))

(assert (=> bs!453915 (= lambda!84299 lambda!84294)))

(declare-fun bs!453916 () Bool)

(assert (= bs!453916 (and d!665072 d!665060)))

(assert (=> bs!453916 (= lambda!84299 lambda!84296)))

(assert (=> d!665072 (= (inv!35610 setElem!20101) (forall!5364 (exprs!2469 setElem!20101) lambda!84299))))

(declare-fun bs!453917 () Bool)

(assert (= bs!453917 d!665072))

(declare-fun m!2667806 () Bool)

(assert (=> bs!453917 m!2667806))

(assert (=> setNonEmpty!20101 d!665072))

(declare-fun d!665074 () Bool)

(declare-fun res!955642 () Bool)

(declare-fun e!1426043 () Bool)

(assert (=> d!665074 (=> res!955642 e!1426043)))

(assert (=> d!665074 (= res!955642 ((_ is Nil!26220) (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64))))))))

(assert (=> d!665074 (= (forall!5364 (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)))) lambda!84294) e!1426043)))

(declare-fun b!2231377 () Bool)

(declare-fun e!1426044 () Bool)

(assert (=> b!2231377 (= e!1426043 e!1426044)))

(declare-fun res!955643 () Bool)

(assert (=> b!2231377 (=> (not res!955643) (not e!1426044))))

(assert (=> b!2231377 (= res!955643 (dynLambda!11523 lambda!84294 (h!31621 (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)))))))))

(declare-fun b!2231378 () Bool)

(assert (=> b!2231378 (= e!1426044 (forall!5364 (t!199731 (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64))))) lambda!84294))))

(assert (= (and d!665074 (not res!955642)) b!2231377))

(assert (= (and b!2231377 res!955643) b!2231378))

(declare-fun b_lambda!71655 () Bool)

(assert (=> (not b_lambda!71655) (not b!2231377)))

(declare-fun m!2667808 () Bool)

(assert (=> b!2231377 m!2667808))

(declare-fun m!2667810 () Bool)

(assert (=> b!2231378 m!2667810))

(assert (=> d!665042 d!665074))

(declare-fun bs!453918 () Bool)

(declare-fun d!665076 () Bool)

(assert (= bs!453918 (and d!665076 d!665068)))

(declare-fun lambda!84300 () Int)

(assert (=> bs!453918 (= lambda!84300 lambda!84297)))

(declare-fun bs!453919 () Bool)

(assert (= bs!453919 (and d!665076 d!665052)))

(assert (=> bs!453919 (= lambda!84300 lambda!84295)))

(declare-fun bs!453920 () Bool)

(assert (= bs!453920 (and d!665076 d!665070)))

(assert (=> bs!453920 (= lambda!84300 lambda!84298)))

(declare-fun bs!453921 () Bool)

(assert (= bs!453921 (and d!665076 d!665072)))

(assert (=> bs!453921 (= lambda!84300 lambda!84299)))

(declare-fun bs!453922 () Bool)

(assert (= bs!453922 (and d!665076 d!665042)))

(assert (=> bs!453922 (= lambda!84300 lambda!84294)))

(declare-fun bs!453923 () Bool)

(assert (= bs!453923 (and d!665076 d!665060)))

(assert (=> bs!453923 (= lambda!84300 lambda!84296)))

(assert (=> d!665076 (= (inv!35610 setElem!20108) (forall!5364 (exprs!2469 setElem!20108) lambda!84300))))

(declare-fun bs!453924 () Bool)

(assert (= bs!453924 d!665076))

(declare-fun m!2667812 () Bool)

(assert (=> bs!453924 m!2667812))

(assert (=> setNonEmpty!20108 d!665076))

(declare-fun d!665078 () Bool)

(assert (=> d!665078 (= (isEmpty!14897 lt!830590) (not ((_ is Some!5104) lt!830590)))))

(assert (=> d!665046 d!665078))

(declare-fun setIsEmpty!20111 () Bool)

(declare-fun setRes!20111 () Bool)

(assert (=> setIsEmpty!20111 setRes!20111))

(declare-fun b!2231385 () Bool)

(declare-fun e!1426052 () Bool)

(declare-fun tp!699411 () Bool)

(assert (=> b!2231385 (= e!1426052 tp!699411)))

(declare-fun b!2231386 () Bool)

(declare-fun e!1426051 () Bool)

(assert (=> b!2231386 (= e!1426051 setRes!20111)))

(declare-fun condSetEmpty!20111 () Bool)

(declare-fun res!955649 () Option!5105)

(assert (=> b!2231386 (= condSetEmpty!20111 (= (v!29814 res!955649) ((as const (Array Context!3938 Bool)) false)))))

(declare-fun b!2231387 () Bool)

(declare-fun e!1426053 () Bool)

(assert (=> b!2231387 (= e!1426053 (= (get!7919 res!955649) (derivationStepZipperDown!47 expr!64 context!86 a!1167)))))

(declare-fun d!665080 () Bool)

(assert (=> d!665080 e!1426053))

(declare-fun res!955648 () Bool)

(assert (=> d!665080 (=> res!955648 e!1426053)))

(assert (=> d!665080 (= res!955648 (isEmpty!14897 res!955649))))

(assert (=> d!665080 e!1426051))

(assert (=> d!665080 (= (choose!13128 cacheDown!839 expr!64 context!86 a!1167) res!955649)))

(declare-fun setElem!20111 () Context!3938)

(declare-fun tp!699412 () Bool)

(declare-fun setNonEmpty!20111 () Bool)

(assert (=> setNonEmpty!20111 (= setRes!20111 (and tp!699412 (inv!35610 setElem!20111) e!1426052))))

(declare-fun setRest!20111 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20111 (= (v!29814 res!955649) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20111 true) setRest!20111))))

(assert (= (and b!2231386 condSetEmpty!20111) setIsEmpty!20111))

(assert (= (and b!2231386 (not condSetEmpty!20111)) setNonEmpty!20111))

(assert (= setNonEmpty!20111 b!2231385))

(assert (= (and d!665080 ((_ is Some!5104) res!955649)) b!2231386))

(assert (= (and d!665080 (not res!955648)) b!2231387))

(declare-fun m!2667814 () Bool)

(assert (=> b!2231387 m!2667814))

(assert (=> b!2231387 m!2667746))

(declare-fun m!2667816 () Bool)

(assert (=> d!665080 m!2667816))

(declare-fun m!2667818 () Bool)

(assert (=> setNonEmpty!20111 m!2667818))

(assert (=> d!665046 d!665080))

(declare-fun d!665082 () Bool)

(declare-fun res!955656 () Bool)

(declare-fun e!1426058 () Bool)

(assert (=> d!665082 (=> (not res!955656) (not e!1426058))))

(declare-fun valid!2323 (MutableMap!2969) Bool)

(assert (=> d!665082 (= res!955656 (valid!2323 (cache!3350 cacheDown!839)))))

(assert (=> d!665082 (= (validCacheMapDown!284 (cache!3350 cacheDown!839)) e!1426058)))

(declare-fun b!2231394 () Bool)

(declare-fun res!955657 () Bool)

(assert (=> b!2231394 (=> (not res!955657) (not e!1426058))))

(declare-fun invariantList!362 (List!26315) Bool)

(declare-datatypes ((ListMap!801 0))(
  ( (ListMap!802 (toList!1329 List!26315)) )
))
(declare-fun map!5361 (MutableMap!2969) ListMap!801)

(assert (=> b!2231394 (= res!955657 (invariantList!362 (toList!1329 (map!5361 (cache!3350 cacheDown!839)))))))

(declare-fun b!2231395 () Bool)

(declare-fun lambda!84303 () Int)

(declare-fun forall!5365 (List!26315 Int) Bool)

(assert (=> b!2231395 (= e!1426058 (forall!5365 (toList!1329 (map!5361 (cache!3350 cacheDown!839))) lambda!84303))))

(assert (= (and d!665082 res!955656) b!2231394))

(assert (= (and b!2231394 res!955657) b!2231395))

(declare-fun m!2667821 () Bool)

(assert (=> d!665082 m!2667821))

(declare-fun m!2667823 () Bool)

(assert (=> b!2231394 m!2667823))

(declare-fun m!2667825 () Bool)

(assert (=> b!2231394 m!2667825))

(assert (=> b!2231395 m!2667823))

(declare-fun m!2667827 () Bool)

(assert (=> b!2231395 m!2667827))

(assert (=> d!665046 d!665082))

(declare-fun bs!453925 () Bool)

(declare-fun d!665084 () Bool)

(assert (= bs!453925 (and d!665084 d!665068)))

(declare-fun lambda!84304 () Int)

(assert (=> bs!453925 (= lambda!84304 lambda!84297)))

(declare-fun bs!453926 () Bool)

(assert (= bs!453926 (and d!665084 d!665052)))

(assert (=> bs!453926 (= lambda!84304 lambda!84295)))

(declare-fun bs!453927 () Bool)

(assert (= bs!453927 (and d!665084 d!665070)))

(assert (=> bs!453927 (= lambda!84304 lambda!84298)))

(declare-fun bs!453928 () Bool)

(assert (= bs!453928 (and d!665084 d!665072)))

(assert (=> bs!453928 (= lambda!84304 lambda!84299)))

(declare-fun bs!453929 () Bool)

(assert (= bs!453929 (and d!665084 d!665076)))

(assert (=> bs!453929 (= lambda!84304 lambda!84300)))

(declare-fun bs!453930 () Bool)

(assert (= bs!453930 (and d!665084 d!665042)))

(assert (=> bs!453930 (= lambda!84304 lambda!84294)))

(declare-fun bs!453931 () Bool)

(assert (= bs!453931 (and d!665084 d!665060)))

(assert (=> bs!453931 (= lambda!84304 lambda!84296)))

(assert (=> d!665084 (= (inv!35610 setElem!20107) (forall!5364 (exprs!2469 setElem!20107) lambda!84304))))

(declare-fun bs!453932 () Bool)

(assert (= bs!453932 d!665084))

(declare-fun m!2667829 () Bool)

(assert (=> bs!453932 m!2667829))

(assert (=> setNonEmpty!20106 d!665084))

(declare-fun d!665086 () Bool)

(assert (=> d!665086 (= (nullable!1767 (reg!6750 expr!64)) (nullableFct!417 (reg!6750 expr!64)))))

(declare-fun bs!453933 () Bool)

(assert (= bs!453933 d!665086))

(declare-fun m!2667831 () Bool)

(assert (=> bs!453933 m!2667831))

(assert (=> b!2231246 d!665086))

(declare-fun bs!453934 () Bool)

(declare-fun d!665088 () Bool)

(assert (= bs!453934 (and d!665088 d!665068)))

(declare-fun lambda!84305 () Int)

(assert (=> bs!453934 (= lambda!84305 lambda!84297)))

(declare-fun bs!453935 () Bool)

(assert (= bs!453935 (and d!665088 d!665052)))

(assert (=> bs!453935 (= lambda!84305 lambda!84295)))

(declare-fun bs!453936 () Bool)

(assert (= bs!453936 (and d!665088 d!665070)))

(assert (=> bs!453936 (= lambda!84305 lambda!84298)))

(declare-fun bs!453937 () Bool)

(assert (= bs!453937 (and d!665088 d!665072)))

(assert (=> bs!453937 (= lambda!84305 lambda!84299)))

(declare-fun bs!453938 () Bool)

(assert (= bs!453938 (and d!665088 d!665084)))

(assert (=> bs!453938 (= lambda!84305 lambda!84304)))

(declare-fun bs!453939 () Bool)

(assert (= bs!453939 (and d!665088 d!665076)))

(assert (=> bs!453939 (= lambda!84305 lambda!84300)))

(declare-fun bs!453940 () Bool)

(assert (= bs!453940 (and d!665088 d!665042)))

(assert (=> bs!453940 (= lambda!84305 lambda!84294)))

(declare-fun bs!453941 () Bool)

(assert (= bs!453941 (and d!665088 d!665060)))

(assert (=> bs!453941 (= lambda!84305 lambda!84296)))

(assert (=> d!665088 (= (inv!35610 (_2!15214 (_1!15215 (h!31622 mapValue!14406)))) (forall!5364 (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapValue!14406)))) lambda!84305))))

(declare-fun bs!453942 () Bool)

(assert (= bs!453942 d!665088))

(declare-fun m!2667833 () Bool)

(assert (=> bs!453942 m!2667833))

(assert (=> b!2231329 d!665088))

(declare-fun b!2231396 () Bool)

(declare-fun res!955658 () Bool)

(declare-fun e!1426065 () Bool)

(assert (=> b!2231396 (=> res!955658 e!1426065)))

(assert (=> b!2231396 (= res!955658 (not ((_ is Concat!10759) (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64)))))))

(declare-fun e!1426061 () Bool)

(assert (=> b!2231396 (= e!1426061 e!1426065)))

(declare-fun b!2231397 () Bool)

(declare-fun e!1426062 () Bool)

(declare-fun e!1426059 () Bool)

(assert (=> b!2231397 (= e!1426062 e!1426059)))

(declare-fun c!355903 () Bool)

(assert (=> b!2231397 (= c!355903 ((_ is Star!6421) (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))))))

(declare-fun b!2231398 () Bool)

(declare-fun e!1426060 () Bool)

(assert (=> b!2231398 (= e!1426065 e!1426060)))

(declare-fun res!955660 () Bool)

(assert (=> b!2231398 (=> (not res!955660) (not e!1426060))))

(declare-fun call!133995 () Bool)

(assert (=> b!2231398 (= res!955660 call!133995)))

(declare-fun bm!133989 () Bool)

(declare-fun c!355904 () Bool)

(assert (=> bm!133989 (= call!133995 (validRegex!2394 (ite c!355904 (regOne!13355 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))) (regOne!13354 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))))))))

(declare-fun b!2231399 () Bool)

(assert (=> b!2231399 (= e!1426059 e!1426061)))

(assert (=> b!2231399 (= c!355904 ((_ is Union!6421) (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))))))

(declare-fun b!2231400 () Bool)

(declare-fun e!1426064 () Bool)

(assert (=> b!2231400 (= e!1426059 e!1426064)))

(declare-fun res!955659 () Bool)

(assert (=> b!2231400 (= res!955659 (not (nullable!1767 (reg!6750 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))))))))

(assert (=> b!2231400 (=> (not res!955659) (not e!1426064))))

(declare-fun call!133994 () Bool)

(declare-fun bm!133990 () Bool)

(assert (=> bm!133990 (= call!133994 (validRegex!2394 (ite c!355903 (reg!6750 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))) (ite c!355904 (regTwo!13355 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))) (regTwo!13354 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64)))))))))

(declare-fun b!2231401 () Bool)

(assert (=> b!2231401 (= e!1426064 call!133994)))

(declare-fun d!665090 () Bool)

(declare-fun res!955662 () Bool)

(assert (=> d!665090 (=> res!955662 e!1426062)))

(assert (=> d!665090 (= res!955662 ((_ is ElementMatch!6421) (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))))))

(assert (=> d!665090 (= (validRegex!2394 (ite c!355885 (regOne!13355 expr!64) (regOne!13354 expr!64))) e!1426062)))

(declare-fun b!2231402 () Bool)

(declare-fun res!955661 () Bool)

(declare-fun e!1426063 () Bool)

(assert (=> b!2231402 (=> (not res!955661) (not e!1426063))))

(assert (=> b!2231402 (= res!955661 call!133995)))

(assert (=> b!2231402 (= e!1426061 e!1426063)))

(declare-fun b!2231403 () Bool)

(declare-fun call!133996 () Bool)

(assert (=> b!2231403 (= e!1426060 call!133996)))

(declare-fun b!2231404 () Bool)

(assert (=> b!2231404 (= e!1426063 call!133996)))

(declare-fun bm!133991 () Bool)

(assert (=> bm!133991 (= call!133996 call!133994)))

(assert (= (and d!665090 (not res!955662)) b!2231397))

(assert (= (and b!2231397 c!355903) b!2231400))

(assert (= (and b!2231397 (not c!355903)) b!2231399))

(assert (= (and b!2231400 res!955659) b!2231401))

(assert (= (and b!2231399 c!355904) b!2231402))

(assert (= (and b!2231399 (not c!355904)) b!2231396))

(assert (= (and b!2231402 res!955661) b!2231404))

(assert (= (and b!2231396 (not res!955658)) b!2231398))

(assert (= (and b!2231398 res!955660) b!2231403))

(assert (= (or b!2231404 b!2231403) bm!133991))

(assert (= (or b!2231402 b!2231398) bm!133989))

(assert (= (or b!2231401 bm!133991) bm!133990))

(declare-fun m!2667835 () Bool)

(assert (=> bm!133989 m!2667835))

(declare-fun m!2667837 () Bool)

(assert (=> b!2231400 m!2667837))

(declare-fun m!2667839 () Bool)

(assert (=> bm!133990 m!2667839))

(assert (=> bm!133965 d!665090))

(declare-fun d!665092 () Bool)

(assert (=> d!665092 (= (nullable!1767 (reg!6750 (regTwo!13354 expr!64))) (nullableFct!417 (reg!6750 (regTwo!13354 expr!64))))))

(declare-fun bs!453943 () Bool)

(assert (= bs!453943 d!665092))

(declare-fun m!2667841 () Bool)

(assert (=> bs!453943 m!2667841))

(assert (=> b!2231258 d!665092))

(assert (=> b!2231253 d!665082))

(declare-fun bs!453944 () Bool)

(declare-fun d!665094 () Bool)

(assert (= bs!453944 (and d!665094 d!665068)))

(declare-fun lambda!84306 () Int)

(assert (=> bs!453944 (= lambda!84306 lambda!84297)))

(declare-fun bs!453945 () Bool)

(assert (= bs!453945 (and d!665094 d!665070)))

(assert (=> bs!453945 (= lambda!84306 lambda!84298)))

(declare-fun bs!453946 () Bool)

(assert (= bs!453946 (and d!665094 d!665072)))

(assert (=> bs!453946 (= lambda!84306 lambda!84299)))

(declare-fun bs!453947 () Bool)

(assert (= bs!453947 (and d!665094 d!665084)))

(assert (=> bs!453947 (= lambda!84306 lambda!84304)))

(declare-fun bs!453948 () Bool)

(assert (= bs!453948 (and d!665094 d!665076)))

(assert (=> bs!453948 (= lambda!84306 lambda!84300)))

(declare-fun bs!453949 () Bool)

(assert (= bs!453949 (and d!665094 d!665052)))

(assert (=> bs!453949 (= lambda!84306 lambda!84295)))

(declare-fun bs!453950 () Bool)

(assert (= bs!453950 (and d!665094 d!665088)))

(assert (=> bs!453950 (= lambda!84306 lambda!84305)))

(declare-fun bs!453951 () Bool)

(assert (= bs!453951 (and d!665094 d!665042)))

(assert (=> bs!453951 (= lambda!84306 lambda!84294)))

(declare-fun bs!453952 () Bool)

(assert (= bs!453952 (and d!665094 d!665060)))

(assert (=> bs!453952 (= lambda!84306 lambda!84296)))

(assert (=> d!665094 (= (inv!35610 (_2!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))) (forall!5364 (exprs!2469 (_2!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))) lambda!84306))))

(declare-fun bs!453953 () Bool)

(assert (= bs!453953 d!665094))

(declare-fun m!2667843 () Bool)

(assert (=> bs!453953 m!2667843))

(assert (=> b!2231297 d!665094))

(declare-fun b!2231419 () Bool)

(declare-fun e!1426082 () Bool)

(declare-fun e!1426080 () Bool)

(assert (=> b!2231419 (= e!1426082 e!1426080)))

(declare-fun res!955676 () Bool)

(assert (=> b!2231419 (=> res!955676 e!1426080)))

(assert (=> b!2231419 (= res!955676 ((_ is Star!6421) (regOne!13354 expr!64)))))

(declare-fun bm!133996 () Bool)

(declare-fun call!134001 () Bool)

(declare-fun c!355907 () Bool)

(assert (=> bm!133996 (= call!134001 (nullable!1767 (ite c!355907 (regTwo!13355 (regOne!13354 expr!64)) (regTwo!13354 (regOne!13354 expr!64)))))))

(declare-fun b!2231420 () Bool)

(declare-fun e!1426079 () Bool)

(declare-fun e!1426078 () Bool)

(assert (=> b!2231420 (= e!1426079 e!1426078)))

(declare-fun res!955675 () Bool)

(declare-fun call!134002 () Bool)

(assert (=> b!2231420 (= res!955675 call!134002)))

(assert (=> b!2231420 (=> (not res!955675) (not e!1426078))))

(declare-fun bm!133997 () Bool)

(assert (=> bm!133997 (= call!134002 (nullable!1767 (ite c!355907 (regOne!13355 (regOne!13354 expr!64)) (regOne!13354 (regOne!13354 expr!64)))))))

(declare-fun d!665096 () Bool)

(declare-fun res!955673 () Bool)

(declare-fun e!1426083 () Bool)

(assert (=> d!665096 (=> res!955673 e!1426083)))

(assert (=> d!665096 (= res!955673 ((_ is EmptyExpr!6421) (regOne!13354 expr!64)))))

(assert (=> d!665096 (= (nullableFct!417 (regOne!13354 expr!64)) e!1426083)))

(declare-fun b!2231421 () Bool)

(assert (=> b!2231421 (= e!1426080 e!1426079)))

(assert (=> b!2231421 (= c!355907 ((_ is Union!6421) (regOne!13354 expr!64)))))

(declare-fun b!2231422 () Bool)

(declare-fun e!1426081 () Bool)

(assert (=> b!2231422 (= e!1426079 e!1426081)))

(declare-fun res!955677 () Bool)

(assert (=> b!2231422 (= res!955677 call!134002)))

(assert (=> b!2231422 (=> res!955677 e!1426081)))

(declare-fun b!2231423 () Bool)

(assert (=> b!2231423 (= e!1426083 e!1426082)))

(declare-fun res!955674 () Bool)

(assert (=> b!2231423 (=> (not res!955674) (not e!1426082))))

(assert (=> b!2231423 (= res!955674 (and (not ((_ is EmptyLang!6421) (regOne!13354 expr!64))) (not ((_ is ElementMatch!6421) (regOne!13354 expr!64)))))))

(declare-fun b!2231424 () Bool)

(assert (=> b!2231424 (= e!1426081 call!134001)))

(declare-fun b!2231425 () Bool)

(assert (=> b!2231425 (= e!1426078 call!134001)))

(assert (= (and d!665096 (not res!955673)) b!2231423))

(assert (= (and b!2231423 res!955674) b!2231419))

(assert (= (and b!2231419 (not res!955676)) b!2231421))

(assert (= (and b!2231421 c!355907) b!2231422))

(assert (= (and b!2231421 (not c!355907)) b!2231420))

(assert (= (and b!2231422 (not res!955677)) b!2231424))

(assert (= (and b!2231420 res!955675) b!2231425))

(assert (= (or b!2231424 b!2231425) bm!133996))

(assert (= (or b!2231422 b!2231420) bm!133997))

(declare-fun m!2667845 () Bool)

(assert (=> bm!133996 m!2667845))

(declare-fun m!2667847 () Bool)

(assert (=> bm!133997 m!2667847))

(assert (=> d!665040 d!665096))

(declare-fun bs!453954 () Bool)

(declare-fun d!665098 () Bool)

(assert (= bs!453954 (and d!665098 d!665068)))

(declare-fun lambda!84307 () Int)

(assert (=> bs!453954 (= lambda!84307 lambda!84297)))

(declare-fun bs!453955 () Bool)

(assert (= bs!453955 (and d!665098 d!665070)))

(assert (=> bs!453955 (= lambda!84307 lambda!84298)))

(declare-fun bs!453956 () Bool)

(assert (= bs!453956 (and d!665098 d!665072)))

(assert (=> bs!453956 (= lambda!84307 lambda!84299)))

(declare-fun bs!453957 () Bool)

(assert (= bs!453957 (and d!665098 d!665084)))

(assert (=> bs!453957 (= lambda!84307 lambda!84304)))

(declare-fun bs!453958 () Bool)

(assert (= bs!453958 (and d!665098 d!665094)))

(assert (=> bs!453958 (= lambda!84307 lambda!84306)))

(declare-fun bs!453959 () Bool)

(assert (= bs!453959 (and d!665098 d!665076)))

(assert (=> bs!453959 (= lambda!84307 lambda!84300)))

(declare-fun bs!453960 () Bool)

(assert (= bs!453960 (and d!665098 d!665052)))

(assert (=> bs!453960 (= lambda!84307 lambda!84295)))

(declare-fun bs!453961 () Bool)

(assert (= bs!453961 (and d!665098 d!665088)))

(assert (=> bs!453961 (= lambda!84307 lambda!84305)))

(declare-fun bs!453962 () Bool)

(assert (= bs!453962 (and d!665098 d!665042)))

(assert (=> bs!453962 (= lambda!84307 lambda!84294)))

(declare-fun bs!453963 () Bool)

(assert (= bs!453963 (and d!665098 d!665060)))

(assert (=> bs!453963 (= lambda!84307 lambda!84296)))

(assert (=> d!665098 (= (inv!35610 (_2!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))) (forall!5364 (exprs!2469 (_2!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))) lambda!84307))))

(declare-fun bs!453964 () Bool)

(assert (= bs!453964 d!665098))

(declare-fun m!2667849 () Bool)

(assert (=> bs!453964 m!2667849))

(assert (=> b!2231300 d!665098))

(declare-fun bs!453965 () Bool)

(declare-fun d!665100 () Bool)

(assert (= bs!453965 (and d!665100 d!665068)))

(declare-fun lambda!84308 () Int)

(assert (=> bs!453965 (= lambda!84308 lambda!84297)))

(declare-fun bs!453966 () Bool)

(assert (= bs!453966 (and d!665100 d!665098)))

(assert (=> bs!453966 (= lambda!84308 lambda!84307)))

(declare-fun bs!453967 () Bool)

(assert (= bs!453967 (and d!665100 d!665070)))

(assert (=> bs!453967 (= lambda!84308 lambda!84298)))

(declare-fun bs!453968 () Bool)

(assert (= bs!453968 (and d!665100 d!665072)))

(assert (=> bs!453968 (= lambda!84308 lambda!84299)))

(declare-fun bs!453969 () Bool)

(assert (= bs!453969 (and d!665100 d!665084)))

(assert (=> bs!453969 (= lambda!84308 lambda!84304)))

(declare-fun bs!453970 () Bool)

(assert (= bs!453970 (and d!665100 d!665094)))

(assert (=> bs!453970 (= lambda!84308 lambda!84306)))

(declare-fun bs!453971 () Bool)

(assert (= bs!453971 (and d!665100 d!665076)))

(assert (=> bs!453971 (= lambda!84308 lambda!84300)))

(declare-fun bs!453972 () Bool)

(assert (= bs!453972 (and d!665100 d!665052)))

(assert (=> bs!453972 (= lambda!84308 lambda!84295)))

(declare-fun bs!453973 () Bool)

(assert (= bs!453973 (and d!665100 d!665088)))

(assert (=> bs!453973 (= lambda!84308 lambda!84305)))

(declare-fun bs!453974 () Bool)

(assert (= bs!453974 (and d!665100 d!665042)))

(assert (=> bs!453974 (= lambda!84308 lambda!84294)))

(declare-fun bs!453975 () Bool)

(assert (= bs!453975 (and d!665100 d!665060)))

(assert (=> bs!453975 (= lambda!84308 lambda!84296)))

(assert (=> d!665100 (= (inv!35610 (_2!15214 (_1!15215 (h!31622 mapDefault!14403)))) (forall!5364 (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapDefault!14403)))) lambda!84308))))

(declare-fun bs!453976 () Bool)

(assert (= bs!453976 d!665100))

(declare-fun m!2667851 () Bool)

(assert (=> bs!453976 m!2667851))

(assert (=> b!2231271 d!665100))

(declare-fun b!2231426 () Bool)

(declare-fun res!955678 () Bool)

(declare-fun e!1426090 () Bool)

(assert (=> b!2231426 (=> res!955678 e!1426090)))

(assert (=> b!2231426 (= res!955678 (not ((_ is Concat!10759) (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64)))))))))

(declare-fun e!1426086 () Bool)

(assert (=> b!2231426 (= e!1426086 e!1426090)))

(declare-fun b!2231427 () Bool)

(declare-fun e!1426087 () Bool)

(declare-fun e!1426084 () Bool)

(assert (=> b!2231427 (= e!1426087 e!1426084)))

(declare-fun c!355908 () Bool)

(assert (=> b!2231427 (= c!355908 ((_ is Star!6421) (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))))))

(declare-fun b!2231428 () Bool)

(declare-fun e!1426085 () Bool)

(assert (=> b!2231428 (= e!1426090 e!1426085)))

(declare-fun res!955680 () Bool)

(assert (=> b!2231428 (=> (not res!955680) (not e!1426085))))

(declare-fun call!134004 () Bool)

(assert (=> b!2231428 (= res!955680 call!134004)))

(declare-fun bm!133998 () Bool)

(declare-fun c!355909 () Bool)

(assert (=> bm!133998 (= call!134004 (validRegex!2394 (ite c!355909 (regOne!13355 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))) (regOne!13354 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))))))))

(declare-fun b!2231429 () Bool)

(assert (=> b!2231429 (= e!1426084 e!1426086)))

(assert (=> b!2231429 (= c!355909 ((_ is Union!6421) (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))))))

(declare-fun b!2231430 () Bool)

(declare-fun e!1426089 () Bool)

(assert (=> b!2231430 (= e!1426084 e!1426089)))

(declare-fun res!955679 () Bool)

(assert (=> b!2231430 (= res!955679 (not (nullable!1767 (reg!6750 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))))))))

(assert (=> b!2231430 (=> (not res!955679) (not e!1426089))))

(declare-fun call!134003 () Bool)

(declare-fun bm!133999 () Bool)

(assert (=> bm!133999 (= call!134003 (validRegex!2394 (ite c!355908 (reg!6750 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))) (ite c!355909 (regTwo!13355 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))) (regTwo!13354 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64)))))))))))

(declare-fun b!2231431 () Bool)

(assert (=> b!2231431 (= e!1426089 call!134003)))

(declare-fun d!665102 () Bool)

(declare-fun res!955682 () Bool)

(assert (=> d!665102 (=> res!955682 e!1426087)))

(assert (=> d!665102 (= res!955682 ((_ is ElementMatch!6421) (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))))))

(assert (=> d!665102 (= (validRegex!2394 (ite c!355886 (reg!6750 (regTwo!13354 expr!64)) (ite c!355887 (regTwo!13355 (regTwo!13354 expr!64)) (regTwo!13354 (regTwo!13354 expr!64))))) e!1426087)))

(declare-fun b!2231432 () Bool)

(declare-fun res!955681 () Bool)

(declare-fun e!1426088 () Bool)

(assert (=> b!2231432 (=> (not res!955681) (not e!1426088))))

(assert (=> b!2231432 (= res!955681 call!134004)))

(assert (=> b!2231432 (= e!1426086 e!1426088)))

(declare-fun b!2231433 () Bool)

(declare-fun call!134005 () Bool)

(assert (=> b!2231433 (= e!1426085 call!134005)))

(declare-fun b!2231434 () Bool)

(assert (=> b!2231434 (= e!1426088 call!134005)))

(declare-fun bm!134000 () Bool)

(assert (=> bm!134000 (= call!134005 call!134003)))

(assert (= (and d!665102 (not res!955682)) b!2231427))

(assert (= (and b!2231427 c!355908) b!2231430))

(assert (= (and b!2231427 (not c!355908)) b!2231429))

(assert (= (and b!2231430 res!955679) b!2231431))

(assert (= (and b!2231429 c!355909) b!2231432))

(assert (= (and b!2231429 (not c!355909)) b!2231426))

(assert (= (and b!2231432 res!955681) b!2231434))

(assert (= (and b!2231426 (not res!955678)) b!2231428))

(assert (= (and b!2231428 res!955680) b!2231433))

(assert (= (or b!2231434 b!2231433) bm!134000))

(assert (= (or b!2231432 b!2231428) bm!133998))

(assert (= (or b!2231431 bm!134000) bm!133999))

(declare-fun m!2667853 () Bool)

(assert (=> bm!133998 m!2667853))

(declare-fun m!2667855 () Bool)

(assert (=> b!2231430 m!2667855))

(declare-fun m!2667857 () Bool)

(assert (=> bm!133999 m!2667857))

(assert (=> bm!133969 d!665102))

(declare-fun bs!453977 () Bool)

(declare-fun d!665104 () Bool)

(assert (= bs!453977 (and d!665104 d!665068)))

(declare-fun lambda!84309 () Int)

(assert (=> bs!453977 (= lambda!84309 lambda!84297)))

(declare-fun bs!453978 () Bool)

(assert (= bs!453978 (and d!665104 d!665098)))

(assert (=> bs!453978 (= lambda!84309 lambda!84307)))

(declare-fun bs!453979 () Bool)

(assert (= bs!453979 (and d!665104 d!665070)))

(assert (=> bs!453979 (= lambda!84309 lambda!84298)))

(declare-fun bs!453980 () Bool)

(assert (= bs!453980 (and d!665104 d!665072)))

(assert (=> bs!453980 (= lambda!84309 lambda!84299)))

(declare-fun bs!453981 () Bool)

(assert (= bs!453981 (and d!665104 d!665084)))

(assert (=> bs!453981 (= lambda!84309 lambda!84304)))

(declare-fun bs!453982 () Bool)

(assert (= bs!453982 (and d!665104 d!665094)))

(assert (=> bs!453982 (= lambda!84309 lambda!84306)))

(declare-fun bs!453983 () Bool)

(assert (= bs!453983 (and d!665104 d!665100)))

(assert (=> bs!453983 (= lambda!84309 lambda!84308)))

(declare-fun bs!453984 () Bool)

(assert (= bs!453984 (and d!665104 d!665076)))

(assert (=> bs!453984 (= lambda!84309 lambda!84300)))

(declare-fun bs!453985 () Bool)

(assert (= bs!453985 (and d!665104 d!665052)))

(assert (=> bs!453985 (= lambda!84309 lambda!84295)))

(declare-fun bs!453986 () Bool)

(assert (= bs!453986 (and d!665104 d!665088)))

(assert (=> bs!453986 (= lambda!84309 lambda!84305)))

(declare-fun bs!453987 () Bool)

(assert (= bs!453987 (and d!665104 d!665042)))

(assert (=> bs!453987 (= lambda!84309 lambda!84294)))

(declare-fun bs!453988 () Bool)

(assert (= bs!453988 (and d!665104 d!665060)))

(assert (=> bs!453988 (= lambda!84309 lambda!84296)))

(assert (=> d!665104 (= (inv!35610 setElem!20106) (forall!5364 (exprs!2469 setElem!20106) lambda!84309))))

(declare-fun bs!453989 () Bool)

(assert (= bs!453989 d!665104))

(declare-fun m!2667859 () Bool)

(assert (=> bs!453989 m!2667859))

(assert (=> setNonEmpty!20107 d!665104))

(declare-fun b!2231435 () Bool)

(declare-fun res!955683 () Bool)

(declare-fun e!1426097 () Bool)

(assert (=> b!2231435 (=> res!955683 e!1426097)))

(assert (=> b!2231435 (= res!955683 (not ((_ is Concat!10759) (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64))))))))

(declare-fun e!1426093 () Bool)

(assert (=> b!2231435 (= e!1426093 e!1426097)))

(declare-fun b!2231436 () Bool)

(declare-fun e!1426094 () Bool)

(declare-fun e!1426091 () Bool)

(assert (=> b!2231436 (= e!1426094 e!1426091)))

(declare-fun c!355910 () Bool)

(assert (=> b!2231436 (= c!355910 ((_ is Star!6421) (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))))))

(declare-fun b!2231437 () Bool)

(declare-fun e!1426092 () Bool)

(assert (=> b!2231437 (= e!1426097 e!1426092)))

(declare-fun res!955685 () Bool)

(assert (=> b!2231437 (=> (not res!955685) (not e!1426092))))

(declare-fun call!134007 () Bool)

(assert (=> b!2231437 (= res!955685 call!134007)))

(declare-fun c!355911 () Bool)

(declare-fun bm!134001 () Bool)

(assert (=> bm!134001 (= call!134007 (validRegex!2394 (ite c!355911 (regOne!13355 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))) (regOne!13354 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))))))))

(declare-fun b!2231438 () Bool)

(assert (=> b!2231438 (= e!1426091 e!1426093)))

(assert (=> b!2231438 (= c!355911 ((_ is Union!6421) (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))))))

(declare-fun b!2231439 () Bool)

(declare-fun e!1426096 () Bool)

(assert (=> b!2231439 (= e!1426091 e!1426096)))

(declare-fun res!955684 () Bool)

(assert (=> b!2231439 (= res!955684 (not (nullable!1767 (reg!6750 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))))))))

(assert (=> b!2231439 (=> (not res!955684) (not e!1426096))))

(declare-fun bm!134002 () Bool)

(declare-fun call!134006 () Bool)

(assert (=> bm!134002 (= call!134006 (validRegex!2394 (ite c!355910 (reg!6750 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))) (ite c!355911 (regTwo!13355 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))) (regTwo!13354 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64))))))))))

(declare-fun b!2231440 () Bool)

(assert (=> b!2231440 (= e!1426096 call!134006)))

(declare-fun d!665106 () Bool)

(declare-fun res!955687 () Bool)

(assert (=> d!665106 (=> res!955687 e!1426094)))

(assert (=> d!665106 (= res!955687 ((_ is ElementMatch!6421) (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))))))

(assert (=> d!665106 (= (validRegex!2394 (ite c!355884 (reg!6750 expr!64) (ite c!355885 (regTwo!13355 expr!64) (regTwo!13354 expr!64)))) e!1426094)))

(declare-fun b!2231441 () Bool)

(declare-fun res!955686 () Bool)

(declare-fun e!1426095 () Bool)

(assert (=> b!2231441 (=> (not res!955686) (not e!1426095))))

(assert (=> b!2231441 (= res!955686 call!134007)))

(assert (=> b!2231441 (= e!1426093 e!1426095)))

(declare-fun b!2231442 () Bool)

(declare-fun call!134008 () Bool)

(assert (=> b!2231442 (= e!1426092 call!134008)))

(declare-fun b!2231443 () Bool)

(assert (=> b!2231443 (= e!1426095 call!134008)))

(declare-fun bm!134003 () Bool)

(assert (=> bm!134003 (= call!134008 call!134006)))

(assert (= (and d!665106 (not res!955687)) b!2231436))

(assert (= (and b!2231436 c!355910) b!2231439))

(assert (= (and b!2231436 (not c!355910)) b!2231438))

(assert (= (and b!2231439 res!955684) b!2231440))

(assert (= (and b!2231438 c!355911) b!2231441))

(assert (= (and b!2231438 (not c!355911)) b!2231435))

(assert (= (and b!2231441 res!955686) b!2231443))

(assert (= (and b!2231435 (not res!955683)) b!2231437))

(assert (= (and b!2231437 res!955685) b!2231442))

(assert (= (or b!2231443 b!2231442) bm!134003))

(assert (= (or b!2231441 b!2231437) bm!134001))

(assert (= (or b!2231440 bm!134003) bm!134002))

(declare-fun m!2667861 () Bool)

(assert (=> bm!134001 m!2667861))

(declare-fun m!2667863 () Bool)

(assert (=> b!2231439 m!2667863))

(declare-fun m!2667865 () Bool)

(assert (=> bm!134002 m!2667865))

(assert (=> bm!133966 d!665106))

(declare-fun b!2231444 () Bool)

(declare-fun res!955688 () Bool)

(declare-fun e!1426104 () Bool)

(assert (=> b!2231444 (=> res!955688 e!1426104)))

(assert (=> b!2231444 (= res!955688 (not ((_ is Concat!10759) (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64))))))))

(declare-fun e!1426100 () Bool)

(assert (=> b!2231444 (= e!1426100 e!1426104)))

(declare-fun b!2231445 () Bool)

(declare-fun e!1426101 () Bool)

(declare-fun e!1426098 () Bool)

(assert (=> b!2231445 (= e!1426101 e!1426098)))

(declare-fun c!355912 () Bool)

(assert (=> b!2231445 (= c!355912 ((_ is Star!6421) (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))))))

(declare-fun b!2231446 () Bool)

(declare-fun e!1426099 () Bool)

(assert (=> b!2231446 (= e!1426104 e!1426099)))

(declare-fun res!955690 () Bool)

(assert (=> b!2231446 (=> (not res!955690) (not e!1426099))))

(declare-fun call!134010 () Bool)

(assert (=> b!2231446 (= res!955690 call!134010)))

(declare-fun c!355913 () Bool)

(declare-fun bm!134004 () Bool)

(assert (=> bm!134004 (= call!134010 (validRegex!2394 (ite c!355913 (regOne!13355 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))) (regOne!13354 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))))))))

(declare-fun b!2231447 () Bool)

(assert (=> b!2231447 (= e!1426098 e!1426100)))

(assert (=> b!2231447 (= c!355913 ((_ is Union!6421) (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))))))

(declare-fun b!2231448 () Bool)

(declare-fun e!1426103 () Bool)

(assert (=> b!2231448 (= e!1426098 e!1426103)))

(declare-fun res!955689 () Bool)

(assert (=> b!2231448 (= res!955689 (not (nullable!1767 (reg!6750 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))))))))

(assert (=> b!2231448 (=> (not res!955689) (not e!1426103))))

(declare-fun call!134009 () Bool)

(declare-fun bm!134005 () Bool)

(assert (=> bm!134005 (= call!134009 (validRegex!2394 (ite c!355912 (reg!6750 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))) (ite c!355913 (regTwo!13355 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))) (regTwo!13354 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64))))))))))

(declare-fun b!2231449 () Bool)

(assert (=> b!2231449 (= e!1426103 call!134009)))

(declare-fun d!665108 () Bool)

(declare-fun res!955692 () Bool)

(assert (=> d!665108 (=> res!955692 e!1426101)))

(assert (=> d!665108 (= res!955692 ((_ is ElementMatch!6421) (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))))))

(assert (=> d!665108 (= (validRegex!2394 (ite c!355887 (regOne!13355 (regTwo!13354 expr!64)) (regOne!13354 (regTwo!13354 expr!64)))) e!1426101)))

(declare-fun b!2231450 () Bool)

(declare-fun res!955691 () Bool)

(declare-fun e!1426102 () Bool)

(assert (=> b!2231450 (=> (not res!955691) (not e!1426102))))

(assert (=> b!2231450 (= res!955691 call!134010)))

(assert (=> b!2231450 (= e!1426100 e!1426102)))

(declare-fun b!2231451 () Bool)

(declare-fun call!134011 () Bool)

(assert (=> b!2231451 (= e!1426099 call!134011)))

(declare-fun b!2231452 () Bool)

(assert (=> b!2231452 (= e!1426102 call!134011)))

(declare-fun bm!134006 () Bool)

(assert (=> bm!134006 (= call!134011 call!134009)))

(assert (= (and d!665108 (not res!955692)) b!2231445))

(assert (= (and b!2231445 c!355912) b!2231448))

(assert (= (and b!2231445 (not c!355912)) b!2231447))

(assert (= (and b!2231448 res!955689) b!2231449))

(assert (= (and b!2231447 c!355913) b!2231450))

(assert (= (and b!2231447 (not c!355913)) b!2231444))

(assert (= (and b!2231450 res!955691) b!2231452))

(assert (= (and b!2231444 (not res!955688)) b!2231446))

(assert (= (and b!2231446 res!955690) b!2231451))

(assert (= (or b!2231452 b!2231451) bm!134006))

(assert (= (or b!2231450 b!2231446) bm!134004))

(assert (= (or b!2231449 bm!134006) bm!134005))

(declare-fun m!2667867 () Bool)

(assert (=> bm!134004 m!2667867))

(declare-fun m!2667869 () Bool)

(assert (=> b!2231448 m!2667869))

(declare-fun m!2667871 () Bool)

(assert (=> bm!134005 m!2667871))

(assert (=> bm!133968 d!665108))

(declare-fun bs!453990 () Bool)

(declare-fun d!665110 () Bool)

(assert (= bs!453990 (and d!665110 d!665068)))

(declare-fun lambda!84310 () Int)

(assert (=> bs!453990 (= lambda!84310 lambda!84297)))

(declare-fun bs!453991 () Bool)

(assert (= bs!453991 (and d!665110 d!665098)))

(assert (=> bs!453991 (= lambda!84310 lambda!84307)))

(declare-fun bs!453992 () Bool)

(assert (= bs!453992 (and d!665110 d!665070)))

(assert (=> bs!453992 (= lambda!84310 lambda!84298)))

(declare-fun bs!453993 () Bool)

(assert (= bs!453993 (and d!665110 d!665072)))

(assert (=> bs!453993 (= lambda!84310 lambda!84299)))

(declare-fun bs!453994 () Bool)

(assert (= bs!453994 (and d!665110 d!665094)))

(assert (=> bs!453994 (= lambda!84310 lambda!84306)))

(declare-fun bs!453995 () Bool)

(assert (= bs!453995 (and d!665110 d!665100)))

(assert (=> bs!453995 (= lambda!84310 lambda!84308)))

(declare-fun bs!453996 () Bool)

(assert (= bs!453996 (and d!665110 d!665076)))

(assert (=> bs!453996 (= lambda!84310 lambda!84300)))

(declare-fun bs!453997 () Bool)

(assert (= bs!453997 (and d!665110 d!665052)))

(assert (=> bs!453997 (= lambda!84310 lambda!84295)))

(declare-fun bs!453998 () Bool)

(assert (= bs!453998 (and d!665110 d!665088)))

(assert (=> bs!453998 (= lambda!84310 lambda!84305)))

(declare-fun bs!453999 () Bool)

(assert (= bs!453999 (and d!665110 d!665042)))

(assert (=> bs!453999 (= lambda!84310 lambda!84294)))

(declare-fun bs!454000 () Bool)

(assert (= bs!454000 (and d!665110 d!665060)))

(assert (=> bs!454000 (= lambda!84310 lambda!84296)))

(declare-fun bs!454001 () Bool)

(assert (= bs!454001 (and d!665110 d!665104)))

(assert (=> bs!454001 (= lambda!84310 lambda!84309)))

(declare-fun bs!454002 () Bool)

(assert (= bs!454002 (and d!665110 d!665084)))

(assert (=> bs!454002 (= lambda!84310 lambda!84304)))

(assert (=> d!665110 (= (inv!35610 (_2!15214 (_1!15215 (h!31622 mapDefault!14406)))) (forall!5364 (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapDefault!14406)))) lambda!84310))))

(declare-fun bs!454003 () Bool)

(assert (= bs!454003 d!665110))

(declare-fun m!2667873 () Bool)

(assert (=> bs!454003 m!2667873))

(assert (=> b!2231331 d!665110))

(declare-fun b!2231453 () Bool)

(declare-fun e!1426105 () Bool)

(declare-fun tp!699413 () Bool)

(declare-fun tp!699414 () Bool)

(assert (=> b!2231453 (= e!1426105 (and tp!699413 tp!699414))))

(assert (=> b!2231336 (= tp!699402 e!1426105)))

(assert (= (and b!2231336 ((_ is Cons!26220) (exprs!2469 setElem!20108))) b!2231453))

(declare-fun condSetEmpty!20114 () Bool)

(assert (=> setNonEmpty!20099 (= condSetEmpty!20114 (= setRest!20099 ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setRes!20114 () Bool)

(assert (=> setNonEmpty!20099 (= tp!699314 setRes!20114)))

(declare-fun setIsEmpty!20114 () Bool)

(assert (=> setIsEmpty!20114 setRes!20114))

(declare-fun setElem!20114 () Context!3938)

(declare-fun tp!699419 () Bool)

(declare-fun e!1426108 () Bool)

(declare-fun setNonEmpty!20114 () Bool)

(assert (=> setNonEmpty!20114 (= setRes!20114 (and tp!699419 (inv!35610 setElem!20114) e!1426108))))

(declare-fun setRest!20114 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20114 (= setRest!20099 ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20114 true) setRest!20114))))

(declare-fun b!2231458 () Bool)

(declare-fun tp!699420 () Bool)

(assert (=> b!2231458 (= e!1426108 tp!699420)))

(assert (= (and setNonEmpty!20099 condSetEmpty!20114) setIsEmpty!20114))

(assert (= (and setNonEmpty!20099 (not condSetEmpty!20114)) setNonEmpty!20114))

(assert (= setNonEmpty!20114 b!2231458))

(declare-fun m!2667875 () Bool)

(assert (=> setNonEmpty!20114 m!2667875))

(declare-fun e!1426109 () Bool)

(assert (=> b!2231308 (= tp!699360 e!1426109)))

(declare-fun b!2231460 () Bool)

(declare-fun tp!699422 () Bool)

(declare-fun tp!699425 () Bool)

(assert (=> b!2231460 (= e!1426109 (and tp!699422 tp!699425))))

(declare-fun b!2231461 () Bool)

(declare-fun tp!699423 () Bool)

(assert (=> b!2231461 (= e!1426109 tp!699423)))

(declare-fun b!2231459 () Bool)

(assert (=> b!2231459 (= e!1426109 tp_is_empty!10067)))

(declare-fun b!2231462 () Bool)

(declare-fun tp!699424 () Bool)

(declare-fun tp!699421 () Bool)

(assert (=> b!2231462 (= e!1426109 (and tp!699424 tp!699421))))

(assert (= (and b!2231308 ((_ is ElementMatch!6421) (regOne!13354 (regOne!13354 expr!64)))) b!2231459))

(assert (= (and b!2231308 ((_ is Concat!10759) (regOne!13354 (regOne!13354 expr!64)))) b!2231460))

(assert (= (and b!2231308 ((_ is Star!6421) (regOne!13354 (regOne!13354 expr!64)))) b!2231461))

(assert (= (and b!2231308 ((_ is Union!6421) (regOne!13354 (regOne!13354 expr!64)))) b!2231462))

(declare-fun e!1426110 () Bool)

(assert (=> b!2231308 (= tp!699363 e!1426110)))

(declare-fun b!2231464 () Bool)

(declare-fun tp!699427 () Bool)

(declare-fun tp!699430 () Bool)

(assert (=> b!2231464 (= e!1426110 (and tp!699427 tp!699430))))

(declare-fun b!2231465 () Bool)

(declare-fun tp!699428 () Bool)

(assert (=> b!2231465 (= e!1426110 tp!699428)))

(declare-fun b!2231463 () Bool)

(assert (=> b!2231463 (= e!1426110 tp_is_empty!10067)))

(declare-fun b!2231466 () Bool)

(declare-fun tp!699429 () Bool)

(declare-fun tp!699426 () Bool)

(assert (=> b!2231466 (= e!1426110 (and tp!699429 tp!699426))))

(assert (= (and b!2231308 ((_ is ElementMatch!6421) (regTwo!13354 (regOne!13354 expr!64)))) b!2231463))

(assert (= (and b!2231308 ((_ is Concat!10759) (regTwo!13354 (regOne!13354 expr!64)))) b!2231464))

(assert (= (and b!2231308 ((_ is Star!6421) (regTwo!13354 (regOne!13354 expr!64)))) b!2231465))

(assert (= (and b!2231308 ((_ is Union!6421) (regTwo!13354 (regOne!13354 expr!64)))) b!2231466))

(declare-fun e!1426111 () Bool)

(assert (=> b!2231309 (= tp!699361 e!1426111)))

(declare-fun b!2231468 () Bool)

(declare-fun tp!699432 () Bool)

(declare-fun tp!699435 () Bool)

(assert (=> b!2231468 (= e!1426111 (and tp!699432 tp!699435))))

(declare-fun b!2231469 () Bool)

(declare-fun tp!699433 () Bool)

(assert (=> b!2231469 (= e!1426111 tp!699433)))

(declare-fun b!2231467 () Bool)

(assert (=> b!2231467 (= e!1426111 tp_is_empty!10067)))

(declare-fun b!2231470 () Bool)

(declare-fun tp!699434 () Bool)

(declare-fun tp!699431 () Bool)

(assert (=> b!2231470 (= e!1426111 (and tp!699434 tp!699431))))

(assert (= (and b!2231309 ((_ is ElementMatch!6421) (reg!6750 (regOne!13354 expr!64)))) b!2231467))

(assert (= (and b!2231309 ((_ is Concat!10759) (reg!6750 (regOne!13354 expr!64)))) b!2231468))

(assert (= (and b!2231309 ((_ is Star!6421) (reg!6750 (regOne!13354 expr!64)))) b!2231469))

(assert (= (and b!2231309 ((_ is Union!6421) (reg!6750 (regOne!13354 expr!64)))) b!2231470))

(declare-fun e!1426112 () Bool)

(assert (=> b!2231278 (= tp!699322 e!1426112)))

(declare-fun b!2231472 () Bool)

(declare-fun tp!699437 () Bool)

(declare-fun tp!699440 () Bool)

(assert (=> b!2231472 (= e!1426112 (and tp!699437 tp!699440))))

(declare-fun b!2231473 () Bool)

(declare-fun tp!699438 () Bool)

(assert (=> b!2231473 (= e!1426112 tp!699438)))

(declare-fun b!2231471 () Bool)

(assert (=> b!2231471 (= e!1426112 tp_is_empty!10067)))

(declare-fun b!2231474 () Bool)

(declare-fun tp!699439 () Bool)

(declare-fun tp!699436 () Bool)

(assert (=> b!2231474 (= e!1426112 (and tp!699439 tp!699436))))

(assert (= (and b!2231278 ((_ is ElementMatch!6421) (h!31621 (exprs!2469 context!86)))) b!2231471))

(assert (= (and b!2231278 ((_ is Concat!10759) (h!31621 (exprs!2469 context!86)))) b!2231472))

(assert (= (and b!2231278 ((_ is Star!6421) (h!31621 (exprs!2469 context!86)))) b!2231473))

(assert (= (and b!2231278 ((_ is Union!6421) (h!31621 (exprs!2469 context!86)))) b!2231474))

(declare-fun b!2231475 () Bool)

(declare-fun e!1426113 () Bool)

(declare-fun tp!699441 () Bool)

(declare-fun tp!699442 () Bool)

(assert (=> b!2231475 (= e!1426113 (and tp!699441 tp!699442))))

(assert (=> b!2231278 (= tp!699323 e!1426113)))

(assert (= (and b!2231278 ((_ is Cons!26220) (t!199731 (exprs!2469 context!86)))) b!2231475))

(declare-fun b!2231476 () Bool)

(declare-fun e!1426114 () Bool)

(declare-fun tp!699443 () Bool)

(declare-fun tp!699444 () Bool)

(assert (=> b!2231476 (= e!1426114 (and tp!699443 tp!699444))))

(assert (=> b!2231337 (= tp!699404 e!1426114)))

(assert (= (and b!2231337 ((_ is Cons!26220) (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapValue!14403)))))) b!2231476))

(declare-fun e!1426115 () Bool)

(assert (=> b!2231294 (= tp!699340 e!1426115)))

(declare-fun b!2231478 () Bool)

(declare-fun tp!699446 () Bool)

(declare-fun tp!699449 () Bool)

(assert (=> b!2231478 (= e!1426115 (and tp!699446 tp!699449))))

(declare-fun b!2231479 () Bool)

(declare-fun tp!699447 () Bool)

(assert (=> b!2231479 (= e!1426115 tp!699447)))

(declare-fun b!2231477 () Bool)

(assert (=> b!2231477 (= e!1426115 tp_is_empty!10067)))

(declare-fun b!2231480 () Bool)

(declare-fun tp!699448 () Bool)

(declare-fun tp!699445 () Bool)

(assert (=> b!2231480 (= e!1426115 (and tp!699448 tp!699445))))

(assert (= (and b!2231294 ((_ is ElementMatch!6421) (regOne!13354 (regTwo!13355 expr!64)))) b!2231477))

(assert (= (and b!2231294 ((_ is Concat!10759) (regOne!13354 (regTwo!13355 expr!64)))) b!2231478))

(assert (= (and b!2231294 ((_ is Star!6421) (regOne!13354 (regTwo!13355 expr!64)))) b!2231479))

(assert (= (and b!2231294 ((_ is Union!6421) (regOne!13354 (regTwo!13355 expr!64)))) b!2231480))

(declare-fun e!1426116 () Bool)

(assert (=> b!2231294 (= tp!699343 e!1426116)))

(declare-fun b!2231482 () Bool)

(declare-fun tp!699451 () Bool)

(declare-fun tp!699454 () Bool)

(assert (=> b!2231482 (= e!1426116 (and tp!699451 tp!699454))))

(declare-fun b!2231483 () Bool)

(declare-fun tp!699452 () Bool)

(assert (=> b!2231483 (= e!1426116 tp!699452)))

(declare-fun b!2231481 () Bool)

(assert (=> b!2231481 (= e!1426116 tp_is_empty!10067)))

(declare-fun b!2231484 () Bool)

(declare-fun tp!699453 () Bool)

(declare-fun tp!699450 () Bool)

(assert (=> b!2231484 (= e!1426116 (and tp!699453 tp!699450))))

(assert (= (and b!2231294 ((_ is ElementMatch!6421) (regTwo!13354 (regTwo!13355 expr!64)))) b!2231481))

(assert (= (and b!2231294 ((_ is Concat!10759) (regTwo!13354 (regTwo!13355 expr!64)))) b!2231482))

(assert (= (and b!2231294 ((_ is Star!6421) (regTwo!13354 (regTwo!13355 expr!64)))) b!2231483))

(assert (= (and b!2231294 ((_ is Union!6421) (regTwo!13354 (regTwo!13355 expr!64)))) b!2231484))

(declare-fun e!1426117 () Bool)

(assert (=> b!2231310 (= tp!699362 e!1426117)))

(declare-fun b!2231486 () Bool)

(declare-fun tp!699456 () Bool)

(declare-fun tp!699459 () Bool)

(assert (=> b!2231486 (= e!1426117 (and tp!699456 tp!699459))))

(declare-fun b!2231487 () Bool)

(declare-fun tp!699457 () Bool)

(assert (=> b!2231487 (= e!1426117 tp!699457)))

(declare-fun b!2231485 () Bool)

(assert (=> b!2231485 (= e!1426117 tp_is_empty!10067)))

(declare-fun b!2231488 () Bool)

(declare-fun tp!699458 () Bool)

(declare-fun tp!699455 () Bool)

(assert (=> b!2231488 (= e!1426117 (and tp!699458 tp!699455))))

(assert (= (and b!2231310 ((_ is ElementMatch!6421) (regOne!13355 (regOne!13354 expr!64)))) b!2231485))

(assert (= (and b!2231310 ((_ is Concat!10759) (regOne!13355 (regOne!13354 expr!64)))) b!2231486))

(assert (= (and b!2231310 ((_ is Star!6421) (regOne!13355 (regOne!13354 expr!64)))) b!2231487))

(assert (= (and b!2231310 ((_ is Union!6421) (regOne!13355 (regOne!13354 expr!64)))) b!2231488))

(declare-fun e!1426118 () Bool)

(assert (=> b!2231310 (= tp!699359 e!1426118)))

(declare-fun b!2231490 () Bool)

(declare-fun tp!699461 () Bool)

(declare-fun tp!699464 () Bool)

(assert (=> b!2231490 (= e!1426118 (and tp!699461 tp!699464))))

(declare-fun b!2231491 () Bool)

(declare-fun tp!699462 () Bool)

(assert (=> b!2231491 (= e!1426118 tp!699462)))

(declare-fun b!2231489 () Bool)

(assert (=> b!2231489 (= e!1426118 tp_is_empty!10067)))

(declare-fun b!2231492 () Bool)

(declare-fun tp!699463 () Bool)

(declare-fun tp!699460 () Bool)

(assert (=> b!2231492 (= e!1426118 (and tp!699463 tp!699460))))

(assert (= (and b!2231310 ((_ is ElementMatch!6421) (regTwo!13355 (regOne!13354 expr!64)))) b!2231489))

(assert (= (and b!2231310 ((_ is Concat!10759) (regTwo!13355 (regOne!13354 expr!64)))) b!2231490))

(assert (= (and b!2231310 ((_ is Star!6421) (regTwo!13355 (regOne!13354 expr!64)))) b!2231491))

(assert (= (and b!2231310 ((_ is Union!6421) (regTwo!13355 (regOne!13354 expr!64)))) b!2231492))

(declare-fun b!2231493 () Bool)

(declare-fun e!1426119 () Bool)

(declare-fun tp!699465 () Bool)

(declare-fun tp!699466 () Bool)

(assert (=> b!2231493 (= e!1426119 (and tp!699465 tp!699466))))

(assert (=> b!2231334 (= tp!699399 e!1426119)))

(assert (= (and b!2231334 ((_ is Cons!26220) (exprs!2469 setElem!20106))) b!2231493))

(declare-fun b!2231494 () Bool)

(declare-fun e!1426120 () Bool)

(declare-fun tp!699467 () Bool)

(declare-fun tp!699468 () Bool)

(assert (=> b!2231494 (= e!1426120 (and tp!699467 tp!699468))))

(assert (=> b!2231299 (= tp!699346 e!1426120)))

(assert (= (and b!2231299 ((_ is Cons!26220) (exprs!2469 (_2!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))))) b!2231494))

(declare-fun b!2231495 () Bool)

(declare-fun e!1426121 () Bool)

(declare-fun tp!699469 () Bool)

(declare-fun tp!699470 () Bool)

(assert (=> b!2231495 (= e!1426121 (and tp!699469 tp!699470))))

(assert (=> b!2231302 (= tp!699351 e!1426121)))

(assert (= (and b!2231302 ((_ is Cons!26220) (exprs!2469 (_2!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839)))))))))))) b!2231495))

(declare-fun b!2231496 () Bool)

(declare-fun e!1426122 () Bool)

(declare-fun tp!699471 () Bool)

(declare-fun tp!699472 () Bool)

(assert (=> b!2231496 (= e!1426122 (and tp!699471 tp!699472))))

(assert (=> b!2231273 (= tp!699315 e!1426122)))

(assert (= (and b!2231273 ((_ is Cons!26220) (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapDefault!14403)))))) b!2231496))

(declare-fun condSetEmpty!20115 () Bool)

(assert (=> setNonEmpty!20100 (= condSetEmpty!20115 (= setRest!20100 ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setRes!20115 () Bool)

(assert (=> setNonEmpty!20100 (= tp!699345 setRes!20115)))

(declare-fun setIsEmpty!20115 () Bool)

(assert (=> setIsEmpty!20115 setRes!20115))

(declare-fun setNonEmpty!20115 () Bool)

(declare-fun setElem!20115 () Context!3938)

(declare-fun tp!699473 () Bool)

(declare-fun e!1426123 () Bool)

(assert (=> setNonEmpty!20115 (= setRes!20115 (and tp!699473 (inv!35610 setElem!20115) e!1426123))))

(declare-fun setRest!20115 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20115 (= setRest!20100 ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20115 true) setRest!20115))))

(declare-fun b!2231497 () Bool)

(declare-fun tp!699474 () Bool)

(assert (=> b!2231497 (= e!1426123 tp!699474)))

(assert (= (and setNonEmpty!20100 condSetEmpty!20115) setIsEmpty!20115))

(assert (= (and setNonEmpty!20100 (not condSetEmpty!20115)) setNonEmpty!20115))

(assert (= setNonEmpty!20115 b!2231497))

(declare-fun m!2667877 () Bool)

(assert (=> setNonEmpty!20115 m!2667877))

(declare-fun e!1426124 () Bool)

(assert (=> b!2231335 (= tp!699406 e!1426124)))

(declare-fun b!2231499 () Bool)

(declare-fun tp!699476 () Bool)

(declare-fun tp!699479 () Bool)

(assert (=> b!2231499 (= e!1426124 (and tp!699476 tp!699479))))

(declare-fun b!2231500 () Bool)

(declare-fun tp!699477 () Bool)

(assert (=> b!2231500 (= e!1426124 tp!699477)))

(declare-fun b!2231498 () Bool)

(assert (=> b!2231498 (= e!1426124 tp_is_empty!10067)))

(declare-fun b!2231501 () Bool)

(declare-fun tp!699478 () Bool)

(declare-fun tp!699475 () Bool)

(assert (=> b!2231501 (= e!1426124 (and tp!699478 tp!699475))))

(assert (= (and b!2231335 ((_ is ElementMatch!6421) (_1!15214 (_1!15215 (h!31622 mapValue!14403))))) b!2231498))

(assert (= (and b!2231335 ((_ is Concat!10759) (_1!15214 (_1!15215 (h!31622 mapValue!14403))))) b!2231499))

(assert (= (and b!2231335 ((_ is Star!6421) (_1!15214 (_1!15215 (h!31622 mapValue!14403))))) b!2231500))

(assert (= (and b!2231335 ((_ is Union!6421) (_1!15214 (_1!15215 (h!31622 mapValue!14403))))) b!2231501))

(declare-fun b!2231503 () Bool)

(declare-fun e!1426126 () Bool)

(declare-fun tp!699480 () Bool)

(assert (=> b!2231503 (= e!1426126 tp!699480)))

(declare-fun b!2231504 () Bool)

(declare-fun e!1426125 () Bool)

(declare-fun tp!699482 () Bool)

(assert (=> b!2231504 (= e!1426125 tp!699482)))

(declare-fun setIsEmpty!20116 () Bool)

(declare-fun setRes!20116 () Bool)

(assert (=> setIsEmpty!20116 setRes!20116))

(declare-fun setElem!20116 () Context!3938)

(declare-fun tp!699481 () Bool)

(declare-fun setNonEmpty!20116 () Bool)

(assert (=> setNonEmpty!20116 (= setRes!20116 (and tp!699481 (inv!35610 setElem!20116) e!1426126))))

(declare-fun setRest!20116 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20116 (= (_2!15215 (h!31622 (t!199732 mapValue!14403))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20116 true) setRest!20116))))

(declare-fun e!1426127 () Bool)

(declare-fun tp!699484 () Bool)

(declare-fun b!2231502 () Bool)

(declare-fun tp!699483 () Bool)

(assert (=> b!2231502 (= e!1426127 (and tp!699484 (inv!35610 (_2!15214 (_1!15215 (h!31622 (t!199732 mapValue!14403))))) e!1426125 tp_is_empty!10067 setRes!20116 tp!699483))))

(declare-fun condSetEmpty!20116 () Bool)

(assert (=> b!2231502 (= condSetEmpty!20116 (= (_2!15215 (h!31622 (t!199732 mapValue!14403))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231335 (= tp!699405 e!1426127)))

(assert (= b!2231502 b!2231504))

(assert (= (and b!2231502 condSetEmpty!20116) setIsEmpty!20116))

(assert (= (and b!2231502 (not condSetEmpty!20116)) setNonEmpty!20116))

(assert (= setNonEmpty!20116 b!2231503))

(assert (= (and b!2231335 ((_ is Cons!26221) (t!199732 mapValue!14403))) b!2231502))

(declare-fun m!2667879 () Bool)

(assert (=> setNonEmpty!20116 m!2667879))

(declare-fun m!2667881 () Bool)

(assert (=> b!2231502 m!2667881))

(declare-fun condSetEmpty!20117 () Bool)

(assert (=> setNonEmpty!20101 (= condSetEmpty!20117 (= setRest!20101 ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setRes!20117 () Bool)

(assert (=> setNonEmpty!20101 (= tp!699350 setRes!20117)))

(declare-fun setIsEmpty!20117 () Bool)

(assert (=> setIsEmpty!20117 setRes!20117))

(declare-fun e!1426128 () Bool)

(declare-fun setNonEmpty!20117 () Bool)

(declare-fun tp!699485 () Bool)

(declare-fun setElem!20117 () Context!3938)

(assert (=> setNonEmpty!20117 (= setRes!20117 (and tp!699485 (inv!35610 setElem!20117) e!1426128))))

(declare-fun setRest!20117 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20117 (= setRest!20101 ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20117 true) setRest!20117))))

(declare-fun b!2231505 () Bool)

(declare-fun tp!699486 () Bool)

(assert (=> b!2231505 (= e!1426128 tp!699486)))

(assert (= (and setNonEmpty!20101 condSetEmpty!20117) setIsEmpty!20117))

(assert (= (and setNonEmpty!20101 (not condSetEmpty!20117)) setNonEmpty!20117))

(assert (= setNonEmpty!20117 b!2231505))

(declare-fun m!2667883 () Bool)

(assert (=> setNonEmpty!20117 m!2667883))

(declare-fun e!1426129 () Bool)

(assert (=> b!2231295 (= tp!699341 e!1426129)))

(declare-fun b!2231507 () Bool)

(declare-fun tp!699488 () Bool)

(declare-fun tp!699491 () Bool)

(assert (=> b!2231507 (= e!1426129 (and tp!699488 tp!699491))))

(declare-fun b!2231508 () Bool)

(declare-fun tp!699489 () Bool)

(assert (=> b!2231508 (= e!1426129 tp!699489)))

(declare-fun b!2231506 () Bool)

(assert (=> b!2231506 (= e!1426129 tp_is_empty!10067)))

(declare-fun b!2231509 () Bool)

(declare-fun tp!699490 () Bool)

(declare-fun tp!699487 () Bool)

(assert (=> b!2231509 (= e!1426129 (and tp!699490 tp!699487))))

(assert (= (and b!2231295 ((_ is ElementMatch!6421) (reg!6750 (regTwo!13355 expr!64)))) b!2231506))

(assert (= (and b!2231295 ((_ is Concat!10759) (reg!6750 (regTwo!13355 expr!64)))) b!2231507))

(assert (= (and b!2231295 ((_ is Star!6421) (reg!6750 (regTwo!13355 expr!64)))) b!2231508))

(assert (= (and b!2231295 ((_ is Union!6421) (reg!6750 (regTwo!13355 expr!64)))) b!2231509))

(declare-fun condSetEmpty!20118 () Bool)

(assert (=> setNonEmpty!20108 (= condSetEmpty!20118 (= setRest!20108 ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setRes!20118 () Bool)

(assert (=> setNonEmpty!20108 (= tp!699403 setRes!20118)))

(declare-fun setIsEmpty!20118 () Bool)

(assert (=> setIsEmpty!20118 setRes!20118))

(declare-fun tp!699492 () Bool)

(declare-fun e!1426130 () Bool)

(declare-fun setElem!20118 () Context!3938)

(declare-fun setNonEmpty!20118 () Bool)

(assert (=> setNonEmpty!20118 (= setRes!20118 (and tp!699492 (inv!35610 setElem!20118) e!1426130))))

(declare-fun setRest!20118 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20118 (= setRest!20108 ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20118 true) setRest!20118))))

(declare-fun b!2231510 () Bool)

(declare-fun tp!699493 () Bool)

(assert (=> b!2231510 (= e!1426130 tp!699493)))

(assert (= (and setNonEmpty!20108 condSetEmpty!20118) setIsEmpty!20118))

(assert (= (and setNonEmpty!20108 (not condSetEmpty!20118)) setNonEmpty!20118))

(assert (= setNonEmpty!20118 b!2231510))

(declare-fun m!2667885 () Bool)

(assert (=> setNonEmpty!20118 m!2667885))

(declare-fun e!1426131 () Bool)

(assert (=> b!2231296 (= tp!699342 e!1426131)))

(declare-fun b!2231512 () Bool)

(declare-fun tp!699495 () Bool)

(declare-fun tp!699498 () Bool)

(assert (=> b!2231512 (= e!1426131 (and tp!699495 tp!699498))))

(declare-fun b!2231513 () Bool)

(declare-fun tp!699496 () Bool)

(assert (=> b!2231513 (= e!1426131 tp!699496)))

(declare-fun b!2231511 () Bool)

(assert (=> b!2231511 (= e!1426131 tp_is_empty!10067)))

(declare-fun b!2231514 () Bool)

(declare-fun tp!699497 () Bool)

(declare-fun tp!699494 () Bool)

(assert (=> b!2231514 (= e!1426131 (and tp!699497 tp!699494))))

(assert (= (and b!2231296 ((_ is ElementMatch!6421) (regOne!13355 (regTwo!13355 expr!64)))) b!2231511))

(assert (= (and b!2231296 ((_ is Concat!10759) (regOne!13355 (regTwo!13355 expr!64)))) b!2231512))

(assert (= (and b!2231296 ((_ is Star!6421) (regOne!13355 (regTwo!13355 expr!64)))) b!2231513))

(assert (= (and b!2231296 ((_ is Union!6421) (regOne!13355 (regTwo!13355 expr!64)))) b!2231514))

(declare-fun e!1426132 () Bool)

(assert (=> b!2231296 (= tp!699339 e!1426132)))

(declare-fun b!2231516 () Bool)

(declare-fun tp!699500 () Bool)

(declare-fun tp!699503 () Bool)

(assert (=> b!2231516 (= e!1426132 (and tp!699500 tp!699503))))

(declare-fun b!2231517 () Bool)

(declare-fun tp!699501 () Bool)

(assert (=> b!2231517 (= e!1426132 tp!699501)))

(declare-fun b!2231515 () Bool)

(assert (=> b!2231515 (= e!1426132 tp_is_empty!10067)))

(declare-fun b!2231518 () Bool)

(declare-fun tp!699502 () Bool)

(declare-fun tp!699499 () Bool)

(assert (=> b!2231518 (= e!1426132 (and tp!699502 tp!699499))))

(assert (= (and b!2231296 ((_ is ElementMatch!6421) (regTwo!13355 (regTwo!13355 expr!64)))) b!2231515))

(assert (= (and b!2231296 ((_ is Concat!10759) (regTwo!13355 (regTwo!13355 expr!64)))) b!2231516))

(assert (= (and b!2231296 ((_ is Star!6421) (regTwo!13355 (regTwo!13355 expr!64)))) b!2231517))

(assert (= (and b!2231296 ((_ is Union!6421) (regTwo!13355 (regTwo!13355 expr!64)))) b!2231518))

(declare-fun condSetEmpty!20119 () Bool)

(assert (=> setNonEmpty!20106 (= condSetEmpty!20119 (= setRest!20107 ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setRes!20119 () Bool)

(assert (=> setNonEmpty!20106 (= tp!699393 setRes!20119)))

(declare-fun setIsEmpty!20119 () Bool)

(assert (=> setIsEmpty!20119 setRes!20119))

(declare-fun tp!699504 () Bool)

(declare-fun setElem!20119 () Context!3938)

(declare-fun e!1426133 () Bool)

(declare-fun setNonEmpty!20119 () Bool)

(assert (=> setNonEmpty!20119 (= setRes!20119 (and tp!699504 (inv!35610 setElem!20119) e!1426133))))

(declare-fun setRest!20119 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20119 (= setRest!20107 ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20119 true) setRest!20119))))

(declare-fun b!2231519 () Bool)

(declare-fun tp!699505 () Bool)

(assert (=> b!2231519 (= e!1426133 tp!699505)))

(assert (= (and setNonEmpty!20106 condSetEmpty!20119) setIsEmpty!20119))

(assert (= (and setNonEmpty!20106 (not condSetEmpty!20119)) setNonEmpty!20119))

(assert (= setNonEmpty!20119 b!2231519))

(declare-fun m!2667887 () Bool)

(assert (=> setNonEmpty!20119 m!2667887))

(declare-fun e!1426134 () Bool)

(assert (=> b!2231313 (= tp!699366 e!1426134)))

(declare-fun b!2231521 () Bool)

(declare-fun tp!699507 () Bool)

(declare-fun tp!699510 () Bool)

(assert (=> b!2231521 (= e!1426134 (and tp!699507 tp!699510))))

(declare-fun b!2231522 () Bool)

(declare-fun tp!699508 () Bool)

(assert (=> b!2231522 (= e!1426134 tp!699508)))

(declare-fun b!2231520 () Bool)

(assert (=> b!2231520 (= e!1426134 tp_is_empty!10067)))

(declare-fun b!2231523 () Bool)

(declare-fun tp!699509 () Bool)

(declare-fun tp!699506 () Bool)

(assert (=> b!2231523 (= e!1426134 (and tp!699509 tp!699506))))

(assert (= (and b!2231313 ((_ is ElementMatch!6421) (reg!6750 (regTwo!13354 expr!64)))) b!2231520))

(assert (= (and b!2231313 ((_ is Concat!10759) (reg!6750 (regTwo!13354 expr!64)))) b!2231521))

(assert (= (and b!2231313 ((_ is Star!6421) (reg!6750 (regTwo!13354 expr!64)))) b!2231522))

(assert (= (and b!2231313 ((_ is Union!6421) (reg!6750 (regTwo!13354 expr!64)))) b!2231523))

(declare-fun e!1426135 () Bool)

(assert (=> b!2231304 (= tp!699355 e!1426135)))

(declare-fun b!2231525 () Bool)

(declare-fun tp!699512 () Bool)

(declare-fun tp!699515 () Bool)

(assert (=> b!2231525 (= e!1426135 (and tp!699512 tp!699515))))

(declare-fun b!2231526 () Bool)

(declare-fun tp!699513 () Bool)

(assert (=> b!2231526 (= e!1426135 tp!699513)))

(declare-fun b!2231524 () Bool)

(assert (=> b!2231524 (= e!1426135 tp_is_empty!10067)))

(declare-fun b!2231527 () Bool)

(declare-fun tp!699514 () Bool)

(declare-fun tp!699511 () Bool)

(assert (=> b!2231527 (= e!1426135 (and tp!699514 tp!699511))))

(assert (= (and b!2231304 ((_ is ElementMatch!6421) (regOne!13354 (reg!6750 expr!64)))) b!2231524))

(assert (= (and b!2231304 ((_ is Concat!10759) (regOne!13354 (reg!6750 expr!64)))) b!2231525))

(assert (= (and b!2231304 ((_ is Star!6421) (regOne!13354 (reg!6750 expr!64)))) b!2231526))

(assert (= (and b!2231304 ((_ is Union!6421) (regOne!13354 (reg!6750 expr!64)))) b!2231527))

(declare-fun e!1426136 () Bool)

(assert (=> b!2231304 (= tp!699358 e!1426136)))

(declare-fun b!2231529 () Bool)

(declare-fun tp!699517 () Bool)

(declare-fun tp!699520 () Bool)

(assert (=> b!2231529 (= e!1426136 (and tp!699517 tp!699520))))

(declare-fun b!2231530 () Bool)

(declare-fun tp!699518 () Bool)

(assert (=> b!2231530 (= e!1426136 tp!699518)))

(declare-fun b!2231528 () Bool)

(assert (=> b!2231528 (= e!1426136 tp_is_empty!10067)))

(declare-fun b!2231531 () Bool)

(declare-fun tp!699519 () Bool)

(declare-fun tp!699516 () Bool)

(assert (=> b!2231531 (= e!1426136 (and tp!699519 tp!699516))))

(assert (= (and b!2231304 ((_ is ElementMatch!6421) (regTwo!13354 (reg!6750 expr!64)))) b!2231528))

(assert (= (and b!2231304 ((_ is Concat!10759) (regTwo!13354 (reg!6750 expr!64)))) b!2231529))

(assert (= (and b!2231304 ((_ is Star!6421) (regTwo!13354 (reg!6750 expr!64)))) b!2231530))

(assert (= (and b!2231304 ((_ is Union!6421) (regTwo!13354 (reg!6750 expr!64)))) b!2231531))

(declare-fun e!1426137 () Bool)

(assert (=> b!2231305 (= tp!699356 e!1426137)))

(declare-fun b!2231533 () Bool)

(declare-fun tp!699522 () Bool)

(declare-fun tp!699525 () Bool)

(assert (=> b!2231533 (= e!1426137 (and tp!699522 tp!699525))))

(declare-fun b!2231534 () Bool)

(declare-fun tp!699523 () Bool)

(assert (=> b!2231534 (= e!1426137 tp!699523)))

(declare-fun b!2231532 () Bool)

(assert (=> b!2231532 (= e!1426137 tp_is_empty!10067)))

(declare-fun b!2231535 () Bool)

(declare-fun tp!699524 () Bool)

(declare-fun tp!699521 () Bool)

(assert (=> b!2231535 (= e!1426137 (and tp!699524 tp!699521))))

(assert (= (and b!2231305 ((_ is ElementMatch!6421) (reg!6750 (reg!6750 expr!64)))) b!2231532))

(assert (= (and b!2231305 ((_ is Concat!10759) (reg!6750 (reg!6750 expr!64)))) b!2231533))

(assert (= (and b!2231305 ((_ is Star!6421) (reg!6750 (reg!6750 expr!64)))) b!2231534))

(assert (= (and b!2231305 ((_ is Union!6421) (reg!6750 (reg!6750 expr!64)))) b!2231535))

(declare-fun e!1426138 () Bool)

(assert (=> b!2231314 (= tp!699367 e!1426138)))

(declare-fun b!2231537 () Bool)

(declare-fun tp!699527 () Bool)

(declare-fun tp!699530 () Bool)

(assert (=> b!2231537 (= e!1426138 (and tp!699527 tp!699530))))

(declare-fun b!2231538 () Bool)

(declare-fun tp!699528 () Bool)

(assert (=> b!2231538 (= e!1426138 tp!699528)))

(declare-fun b!2231536 () Bool)

(assert (=> b!2231536 (= e!1426138 tp_is_empty!10067)))

(declare-fun b!2231539 () Bool)

(declare-fun tp!699529 () Bool)

(declare-fun tp!699526 () Bool)

(assert (=> b!2231539 (= e!1426138 (and tp!699529 tp!699526))))

(assert (= (and b!2231314 ((_ is ElementMatch!6421) (regOne!13355 (regTwo!13354 expr!64)))) b!2231536))

(assert (= (and b!2231314 ((_ is Concat!10759) (regOne!13355 (regTwo!13354 expr!64)))) b!2231537))

(assert (= (and b!2231314 ((_ is Star!6421) (regOne!13355 (regTwo!13354 expr!64)))) b!2231538))

(assert (= (and b!2231314 ((_ is Union!6421) (regOne!13355 (regTwo!13354 expr!64)))) b!2231539))

(declare-fun e!1426139 () Bool)

(assert (=> b!2231314 (= tp!699364 e!1426139)))

(declare-fun b!2231541 () Bool)

(declare-fun tp!699532 () Bool)

(declare-fun tp!699535 () Bool)

(assert (=> b!2231541 (= e!1426139 (and tp!699532 tp!699535))))

(declare-fun b!2231542 () Bool)

(declare-fun tp!699533 () Bool)

(assert (=> b!2231542 (= e!1426139 tp!699533)))

(declare-fun b!2231540 () Bool)

(assert (=> b!2231540 (= e!1426139 tp_is_empty!10067)))

(declare-fun b!2231543 () Bool)

(declare-fun tp!699534 () Bool)

(declare-fun tp!699531 () Bool)

(assert (=> b!2231543 (= e!1426139 (and tp!699534 tp!699531))))

(assert (= (and b!2231314 ((_ is ElementMatch!6421) (regTwo!13355 (regTwo!13354 expr!64)))) b!2231540))

(assert (= (and b!2231314 ((_ is Concat!10759) (regTwo!13355 (regTwo!13354 expr!64)))) b!2231541))

(assert (= (and b!2231314 ((_ is Star!6421) (regTwo!13355 (regTwo!13354 expr!64)))) b!2231542))

(assert (= (and b!2231314 ((_ is Union!6421) (regTwo!13355 (regTwo!13354 expr!64)))) b!2231543))

(declare-fun b!2231544 () Bool)

(declare-fun e!1426140 () Bool)

(declare-fun tp!699536 () Bool)

(declare-fun tp!699537 () Bool)

(assert (=> b!2231544 (= e!1426140 (and tp!699536 tp!699537))))

(assert (=> b!2231330 (= tp!699401 e!1426140)))

(assert (= (and b!2231330 ((_ is Cons!26220) (exprs!2469 setElem!20107))) b!2231544))

(declare-fun e!1426141 () Bool)

(assert (=> b!2231329 (= tp!699397 e!1426141)))

(declare-fun b!2231546 () Bool)

(declare-fun tp!699539 () Bool)

(declare-fun tp!699542 () Bool)

(assert (=> b!2231546 (= e!1426141 (and tp!699539 tp!699542))))

(declare-fun b!2231547 () Bool)

(declare-fun tp!699540 () Bool)

(assert (=> b!2231547 (= e!1426141 tp!699540)))

(declare-fun b!2231545 () Bool)

(assert (=> b!2231545 (= e!1426141 tp_is_empty!10067)))

(declare-fun b!2231548 () Bool)

(declare-fun tp!699541 () Bool)

(declare-fun tp!699538 () Bool)

(assert (=> b!2231548 (= e!1426141 (and tp!699541 tp!699538))))

(assert (= (and b!2231329 ((_ is ElementMatch!6421) (_1!15214 (_1!15215 (h!31622 mapValue!14406))))) b!2231545))

(assert (= (and b!2231329 ((_ is Concat!10759) (_1!15214 (_1!15215 (h!31622 mapValue!14406))))) b!2231546))

(assert (= (and b!2231329 ((_ is Star!6421) (_1!15214 (_1!15215 (h!31622 mapValue!14406))))) b!2231547))

(assert (= (and b!2231329 ((_ is Union!6421) (_1!15214 (_1!15215 (h!31622 mapValue!14406))))) b!2231548))

(declare-fun b!2231550 () Bool)

(declare-fun e!1426143 () Bool)

(declare-fun tp!699543 () Bool)

(assert (=> b!2231550 (= e!1426143 tp!699543)))

(declare-fun b!2231551 () Bool)

(declare-fun e!1426142 () Bool)

(declare-fun tp!699545 () Bool)

(assert (=> b!2231551 (= e!1426142 tp!699545)))

(declare-fun setIsEmpty!20120 () Bool)

(declare-fun setRes!20120 () Bool)

(assert (=> setIsEmpty!20120 setRes!20120))

(declare-fun setElem!20120 () Context!3938)

(declare-fun setNonEmpty!20120 () Bool)

(declare-fun tp!699544 () Bool)

(assert (=> setNonEmpty!20120 (= setRes!20120 (and tp!699544 (inv!35610 setElem!20120) e!1426143))))

(declare-fun setRest!20120 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20120 (= (_2!15215 (h!31622 (t!199732 mapValue!14406))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20120 true) setRest!20120))))

(declare-fun b!2231549 () Bool)

(declare-fun tp!699547 () Bool)

(declare-fun tp!699546 () Bool)

(declare-fun e!1426144 () Bool)

(assert (=> b!2231549 (= e!1426144 (and tp!699547 (inv!35610 (_2!15214 (_1!15215 (h!31622 (t!199732 mapValue!14406))))) e!1426142 tp_is_empty!10067 setRes!20120 tp!699546))))

(declare-fun condSetEmpty!20120 () Bool)

(assert (=> b!2231549 (= condSetEmpty!20120 (= (_2!15215 (h!31622 (t!199732 mapValue!14406))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231329 (= tp!699391 e!1426144)))

(assert (= b!2231549 b!2231551))

(assert (= (and b!2231549 condSetEmpty!20120) setIsEmpty!20120))

(assert (= (and b!2231549 (not condSetEmpty!20120)) setNonEmpty!20120))

(assert (= setNonEmpty!20120 b!2231550))

(assert (= (and b!2231329 ((_ is Cons!26221) (t!199732 mapValue!14406))) b!2231549))

(declare-fun m!2667889 () Bool)

(assert (=> setNonEmpty!20120 m!2667889))

(declare-fun m!2667891 () Bool)

(assert (=> b!2231549 m!2667891))

(declare-fun tp!699548 () Bool)

(declare-fun b!2231552 () Bool)

(declare-fun setRes!20121 () Bool)

(declare-fun tp!699554 () Bool)

(declare-fun mapValue!14407 () List!26315)

(declare-fun e!1426148 () Bool)

(declare-fun e!1426147 () Bool)

(assert (=> b!2231552 (= e!1426148 (and tp!699554 (inv!35610 (_2!15214 (_1!15215 (h!31622 mapValue!14407)))) e!1426147 tp_is_empty!10067 setRes!20121 tp!699548))))

(declare-fun condSetEmpty!20122 () Bool)

(assert (=> b!2231552 (= condSetEmpty!20122 (= (_2!15215 (h!31622 mapValue!14407)) ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setIsEmpty!20121 () Bool)

(declare-fun setRes!20122 () Bool)

(assert (=> setIsEmpty!20121 setRes!20122))

(declare-fun mapNonEmpty!14407 () Bool)

(declare-fun mapRes!14407 () Bool)

(declare-fun tp!699551 () Bool)

(assert (=> mapNonEmpty!14407 (= mapRes!14407 (and tp!699551 e!1426148))))

(declare-fun mapRest!14407 () (Array (_ BitVec 32) List!26315))

(declare-fun mapKey!14407 () (_ BitVec 32))

(assert (=> mapNonEmpty!14407 (= mapRest!14406 (store mapRest!14407 mapKey!14407 mapValue!14407))))

(declare-fun condMapEmpty!14407 () Bool)

(declare-fun mapDefault!14407 () List!26315)

(assert (=> mapNonEmpty!14406 (= condMapEmpty!14407 (= mapRest!14406 ((as const (Array (_ BitVec 32) List!26315)) mapDefault!14407)))))

(declare-fun e!1426150 () Bool)

(assert (=> mapNonEmpty!14406 (= tp!699394 (and e!1426150 mapRes!14407))))

(declare-fun tp!699550 () Bool)

(declare-fun setElem!20122 () Context!3938)

(declare-fun setNonEmpty!20121 () Bool)

(declare-fun e!1426146 () Bool)

(assert (=> setNonEmpty!20121 (= setRes!20122 (and tp!699550 (inv!35610 setElem!20122) e!1426146))))

(declare-fun setRest!20122 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20121 (= (_2!15215 (h!31622 mapDefault!14407)) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20122 true) setRest!20122))))

(declare-fun mapIsEmpty!14407 () Bool)

(assert (=> mapIsEmpty!14407 mapRes!14407))

(declare-fun b!2231553 () Bool)

(declare-fun tp!699558 () Bool)

(assert (=> b!2231553 (= e!1426146 tp!699558)))

(declare-fun setIsEmpty!20122 () Bool)

(assert (=> setIsEmpty!20122 setRes!20121))

(declare-fun e!1426145 () Bool)

(declare-fun b!2231554 () Bool)

(declare-fun tp!699553 () Bool)

(declare-fun tp!699552 () Bool)

(assert (=> b!2231554 (= e!1426150 (and tp!699553 (inv!35610 (_2!15214 (_1!15215 (h!31622 mapDefault!14407)))) e!1426145 tp_is_empty!10067 setRes!20122 tp!699552))))

(declare-fun condSetEmpty!20121 () Bool)

(assert (=> b!2231554 (= condSetEmpty!20121 (= (_2!15215 (h!31622 mapDefault!14407)) ((as const (Array Context!3938 Bool)) false)))))

(declare-fun b!2231555 () Bool)

(declare-fun tp!699555 () Bool)

(assert (=> b!2231555 (= e!1426145 tp!699555)))

(declare-fun b!2231556 () Bool)

(declare-fun tp!699557 () Bool)

(assert (=> b!2231556 (= e!1426147 tp!699557)))

(declare-fun setNonEmpty!20122 () Bool)

(declare-fun setElem!20121 () Context!3938)

(declare-fun e!1426149 () Bool)

(declare-fun tp!699549 () Bool)

(assert (=> setNonEmpty!20122 (= setRes!20121 (and tp!699549 (inv!35610 setElem!20121) e!1426149))))

(declare-fun setRest!20121 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20122 (= (_2!15215 (h!31622 mapValue!14407)) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20121 true) setRest!20121))))

(declare-fun b!2231557 () Bool)

(declare-fun tp!699556 () Bool)

(assert (=> b!2231557 (= e!1426149 tp!699556)))

(assert (= (and mapNonEmpty!14406 condMapEmpty!14407) mapIsEmpty!14407))

(assert (= (and mapNonEmpty!14406 (not condMapEmpty!14407)) mapNonEmpty!14407))

(assert (= b!2231552 b!2231556))

(assert (= (and b!2231552 condSetEmpty!20122) setIsEmpty!20122))

(assert (= (and b!2231552 (not condSetEmpty!20122)) setNonEmpty!20122))

(assert (= setNonEmpty!20122 b!2231557))

(assert (= (and mapNonEmpty!14407 ((_ is Cons!26221) mapValue!14407)) b!2231552))

(assert (= b!2231554 b!2231555))

(assert (= (and b!2231554 condSetEmpty!20121) setIsEmpty!20121))

(assert (= (and b!2231554 (not condSetEmpty!20121)) setNonEmpty!20121))

(assert (= setNonEmpty!20121 b!2231553))

(assert (= (and mapNonEmpty!14406 ((_ is Cons!26221) mapDefault!14407)) b!2231554))

(declare-fun m!2667893 () Bool)

(assert (=> setNonEmpty!20121 m!2667893))

(declare-fun m!2667895 () Bool)

(assert (=> b!2231552 m!2667895))

(declare-fun m!2667897 () Bool)

(assert (=> setNonEmpty!20122 m!2667897))

(declare-fun m!2667899 () Bool)

(assert (=> mapNonEmpty!14407 m!2667899))

(declare-fun m!2667901 () Bool)

(assert (=> b!2231554 m!2667901))

(declare-fun e!1426151 () Bool)

(assert (=> b!2231312 (= tp!699365 e!1426151)))

(declare-fun b!2231559 () Bool)

(declare-fun tp!699560 () Bool)

(declare-fun tp!699563 () Bool)

(assert (=> b!2231559 (= e!1426151 (and tp!699560 tp!699563))))

(declare-fun b!2231560 () Bool)

(declare-fun tp!699561 () Bool)

(assert (=> b!2231560 (= e!1426151 tp!699561)))

(declare-fun b!2231558 () Bool)

(assert (=> b!2231558 (= e!1426151 tp_is_empty!10067)))

(declare-fun b!2231561 () Bool)

(declare-fun tp!699562 () Bool)

(declare-fun tp!699559 () Bool)

(assert (=> b!2231561 (= e!1426151 (and tp!699562 tp!699559))))

(assert (= (and b!2231312 ((_ is ElementMatch!6421) (regOne!13354 (regTwo!13354 expr!64)))) b!2231558))

(assert (= (and b!2231312 ((_ is Concat!10759) (regOne!13354 (regTwo!13354 expr!64)))) b!2231559))

(assert (= (and b!2231312 ((_ is Star!6421) (regOne!13354 (regTwo!13354 expr!64)))) b!2231560))

(assert (= (and b!2231312 ((_ is Union!6421) (regOne!13354 (regTwo!13354 expr!64)))) b!2231561))

(declare-fun e!1426152 () Bool)

(assert (=> b!2231312 (= tp!699368 e!1426152)))

(declare-fun b!2231563 () Bool)

(declare-fun tp!699565 () Bool)

(declare-fun tp!699568 () Bool)

(assert (=> b!2231563 (= e!1426152 (and tp!699565 tp!699568))))

(declare-fun b!2231564 () Bool)

(declare-fun tp!699566 () Bool)

(assert (=> b!2231564 (= e!1426152 tp!699566)))

(declare-fun b!2231562 () Bool)

(assert (=> b!2231562 (= e!1426152 tp_is_empty!10067)))

(declare-fun b!2231565 () Bool)

(declare-fun tp!699567 () Bool)

(declare-fun tp!699564 () Bool)

(assert (=> b!2231565 (= e!1426152 (and tp!699567 tp!699564))))

(assert (= (and b!2231312 ((_ is ElementMatch!6421) (regTwo!13354 (regTwo!13354 expr!64)))) b!2231562))

(assert (= (and b!2231312 ((_ is Concat!10759) (regTwo!13354 (regTwo!13354 expr!64)))) b!2231563))

(assert (= (and b!2231312 ((_ is Star!6421) (regTwo!13354 (regTwo!13354 expr!64)))) b!2231564))

(assert (= (and b!2231312 ((_ is Union!6421) (regTwo!13354 (regTwo!13354 expr!64)))) b!2231565))

(declare-fun b!2231566 () Bool)

(declare-fun e!1426153 () Bool)

(declare-fun tp!699569 () Bool)

(declare-fun tp!699570 () Bool)

(assert (=> b!2231566 (= e!1426153 (and tp!699569 tp!699570))))

(assert (=> b!2231332 (= tp!699398 e!1426153)))

(assert (= (and b!2231332 ((_ is Cons!26220) (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapDefault!14406)))))) b!2231566))

(declare-fun b!2231567 () Bool)

(declare-fun e!1426154 () Bool)

(declare-fun tp!699571 () Bool)

(declare-fun tp!699572 () Bool)

(assert (=> b!2231567 (= e!1426154 (and tp!699571 tp!699572))))

(assert (=> b!2231333 (= tp!699400 e!1426154)))

(assert (= (and b!2231333 ((_ is Cons!26220) (exprs!2469 (_2!15214 (_1!15215 (h!31622 mapValue!14406)))))) b!2231567))

(declare-fun e!1426155 () Bool)

(assert (=> b!2231297 (= tp!699348 e!1426155)))

(declare-fun b!2231569 () Bool)

(declare-fun tp!699574 () Bool)

(declare-fun tp!699577 () Bool)

(assert (=> b!2231569 (= e!1426155 (and tp!699574 tp!699577))))

(declare-fun b!2231570 () Bool)

(declare-fun tp!699575 () Bool)

(assert (=> b!2231570 (= e!1426155 tp!699575)))

(declare-fun b!2231568 () Bool)

(assert (=> b!2231568 (= e!1426155 tp_is_empty!10067)))

(declare-fun b!2231571 () Bool)

(declare-fun tp!699576 () Bool)

(declare-fun tp!699573 () Bool)

(assert (=> b!2231571 (= e!1426155 (and tp!699576 tp!699573))))

(assert (= (and b!2231297 ((_ is ElementMatch!6421) (_1!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231568))

(assert (= (and b!2231297 ((_ is Concat!10759) (_1!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231569))

(assert (= (and b!2231297 ((_ is Star!6421) (_1!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231570))

(assert (= (and b!2231297 ((_ is Union!6421) (_1!15214 (_1!15215 (h!31622 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231571))

(declare-fun b!2231573 () Bool)

(declare-fun e!1426157 () Bool)

(declare-fun tp!699578 () Bool)

(assert (=> b!2231573 (= e!1426157 tp!699578)))

(declare-fun b!2231574 () Bool)

(declare-fun e!1426156 () Bool)

(declare-fun tp!699580 () Bool)

(assert (=> b!2231574 (= e!1426156 tp!699580)))

(declare-fun setIsEmpty!20123 () Bool)

(declare-fun setRes!20123 () Bool)

(assert (=> setIsEmpty!20123 setRes!20123))

(declare-fun setElem!20123 () Context!3938)

(declare-fun tp!699579 () Bool)

(declare-fun setNonEmpty!20123 () Bool)

(assert (=> setNonEmpty!20123 (= setRes!20123 (and tp!699579 (inv!35610 setElem!20123) e!1426157))))

(declare-fun setRest!20123 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20123 (= (_2!15215 (h!31622 (t!199732 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20123 true) setRest!20123))))

(declare-fun tp!699582 () Bool)

(declare-fun b!2231572 () Bool)

(declare-fun e!1426158 () Bool)

(declare-fun tp!699581 () Bool)

(assert (=> b!2231572 (= e!1426158 (and tp!699582 (inv!35610 (_2!15214 (_1!15215 (h!31622 (t!199732 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) e!1426156 tp_is_empty!10067 setRes!20123 tp!699581))))

(declare-fun condSetEmpty!20123 () Bool)

(assert (=> b!2231572 (= condSetEmpty!20123 (= (_2!15215 (h!31622 (t!199732 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231297 (= tp!699347 e!1426158)))

(assert (= b!2231572 b!2231574))

(assert (= (and b!2231572 condSetEmpty!20123) setIsEmpty!20123))

(assert (= (and b!2231572 (not condSetEmpty!20123)) setNonEmpty!20123))

(assert (= setNonEmpty!20123 b!2231573))

(assert (= (and b!2231297 ((_ is Cons!26221) (t!199732 (zeroValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))) b!2231572))

(declare-fun m!2667903 () Bool)

(assert (=> setNonEmpty!20123 m!2667903))

(declare-fun m!2667905 () Bool)

(assert (=> b!2231572 m!2667905))

(declare-fun e!1426159 () Bool)

(assert (=> b!2231300 (= tp!699353 e!1426159)))

(declare-fun b!2231576 () Bool)

(declare-fun tp!699584 () Bool)

(declare-fun tp!699587 () Bool)

(assert (=> b!2231576 (= e!1426159 (and tp!699584 tp!699587))))

(declare-fun b!2231577 () Bool)

(declare-fun tp!699585 () Bool)

(assert (=> b!2231577 (= e!1426159 tp!699585)))

(declare-fun b!2231575 () Bool)

(assert (=> b!2231575 (= e!1426159 tp_is_empty!10067)))

(declare-fun b!2231578 () Bool)

(declare-fun tp!699586 () Bool)

(declare-fun tp!699583 () Bool)

(assert (=> b!2231578 (= e!1426159 (and tp!699586 tp!699583))))

(assert (= (and b!2231300 ((_ is ElementMatch!6421) (_1!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231575))

(assert (= (and b!2231300 ((_ is Concat!10759) (_1!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231576))

(assert (= (and b!2231300 ((_ is Star!6421) (_1!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231577))

(assert (= (and b!2231300 ((_ is Union!6421) (_1!15214 (_1!15215 (h!31622 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) b!2231578))

(declare-fun b!2231580 () Bool)

(declare-fun e!1426161 () Bool)

(declare-fun tp!699588 () Bool)

(assert (=> b!2231580 (= e!1426161 tp!699588)))

(declare-fun b!2231581 () Bool)

(declare-fun e!1426160 () Bool)

(declare-fun tp!699590 () Bool)

(assert (=> b!2231581 (= e!1426160 tp!699590)))

(declare-fun setIsEmpty!20124 () Bool)

(declare-fun setRes!20124 () Bool)

(assert (=> setIsEmpty!20124 setRes!20124))

(declare-fun tp!699589 () Bool)

(declare-fun setNonEmpty!20124 () Bool)

(declare-fun setElem!20124 () Context!3938)

(assert (=> setNonEmpty!20124 (= setRes!20124 (and tp!699589 (inv!35610 setElem!20124) e!1426161))))

(declare-fun setRest!20124 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20124 (= (_2!15215 (h!31622 (t!199732 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20124 true) setRest!20124))))

(declare-fun e!1426162 () Bool)

(declare-fun b!2231579 () Bool)

(declare-fun tp!699591 () Bool)

(declare-fun tp!699592 () Bool)

(assert (=> b!2231579 (= e!1426162 (and tp!699592 (inv!35610 (_2!15214 (_1!15215 (h!31622 (t!199732 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))))) e!1426160 tp_is_empty!10067 setRes!20124 tp!699591))))

(declare-fun condSetEmpty!20124 () Bool)

(assert (=> b!2231579 (= condSetEmpty!20124 (= (_2!15215 (h!31622 (t!199732 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231300 (= tp!699352 e!1426162)))

(assert (= b!2231579 b!2231581))

(assert (= (and b!2231579 condSetEmpty!20124) setIsEmpty!20124))

(assert (= (and b!2231579 (not condSetEmpty!20124)) setNonEmpty!20124))

(assert (= setNonEmpty!20124 b!2231580))

(assert (= (and b!2231300 ((_ is Cons!26221) (t!199732 (minValue!3317 (v!29812 (underlying!6319 (v!29813 (underlying!6320 (cache!3350 cacheDown!839))))))))) b!2231579))

(declare-fun m!2667907 () Bool)

(assert (=> setNonEmpty!20124 m!2667907))

(declare-fun m!2667909 () Bool)

(assert (=> b!2231579 m!2667909))

(declare-fun b!2231582 () Bool)

(declare-fun e!1426163 () Bool)

(declare-fun tp!699593 () Bool)

(declare-fun tp!699594 () Bool)

(assert (=> b!2231582 (= e!1426163 (and tp!699593 tp!699594))))

(assert (=> b!2231301 (= tp!699349 e!1426163)))

(assert (= (and b!2231301 ((_ is Cons!26220) (exprs!2469 setElem!20101))) b!2231582))

(declare-fun e!1426164 () Bool)

(assert (=> b!2231271 (= tp!699317 e!1426164)))

(declare-fun b!2231584 () Bool)

(declare-fun tp!699596 () Bool)

(declare-fun tp!699599 () Bool)

(assert (=> b!2231584 (= e!1426164 (and tp!699596 tp!699599))))

(declare-fun b!2231585 () Bool)

(declare-fun tp!699597 () Bool)

(assert (=> b!2231585 (= e!1426164 tp!699597)))

(declare-fun b!2231583 () Bool)

(assert (=> b!2231583 (= e!1426164 tp_is_empty!10067)))

(declare-fun b!2231586 () Bool)

(declare-fun tp!699598 () Bool)

(declare-fun tp!699595 () Bool)

(assert (=> b!2231586 (= e!1426164 (and tp!699598 tp!699595))))

(assert (= (and b!2231271 ((_ is ElementMatch!6421) (_1!15214 (_1!15215 (h!31622 mapDefault!14403))))) b!2231583))

(assert (= (and b!2231271 ((_ is Concat!10759) (_1!15214 (_1!15215 (h!31622 mapDefault!14403))))) b!2231584))

(assert (= (and b!2231271 ((_ is Star!6421) (_1!15214 (_1!15215 (h!31622 mapDefault!14403))))) b!2231585))

(assert (= (and b!2231271 ((_ is Union!6421) (_1!15214 (_1!15215 (h!31622 mapDefault!14403))))) b!2231586))

(declare-fun b!2231588 () Bool)

(declare-fun e!1426166 () Bool)

(declare-fun tp!699600 () Bool)

(assert (=> b!2231588 (= e!1426166 tp!699600)))

(declare-fun b!2231589 () Bool)

(declare-fun e!1426165 () Bool)

(declare-fun tp!699602 () Bool)

(assert (=> b!2231589 (= e!1426165 tp!699602)))

(declare-fun setIsEmpty!20125 () Bool)

(declare-fun setRes!20125 () Bool)

(assert (=> setIsEmpty!20125 setRes!20125))

(declare-fun tp!699601 () Bool)

(declare-fun setElem!20125 () Context!3938)

(declare-fun setNonEmpty!20125 () Bool)

(assert (=> setNonEmpty!20125 (= setRes!20125 (and tp!699601 (inv!35610 setElem!20125) e!1426166))))

(declare-fun setRest!20125 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20125 (= (_2!15215 (h!31622 (t!199732 mapDefault!14403))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20125 true) setRest!20125))))

(declare-fun b!2231587 () Bool)

(declare-fun e!1426167 () Bool)

(declare-fun tp!699604 () Bool)

(declare-fun tp!699603 () Bool)

(assert (=> b!2231587 (= e!1426167 (and tp!699604 (inv!35610 (_2!15214 (_1!15215 (h!31622 (t!199732 mapDefault!14403))))) e!1426165 tp_is_empty!10067 setRes!20125 tp!699603))))

(declare-fun condSetEmpty!20125 () Bool)

(assert (=> b!2231587 (= condSetEmpty!20125 (= (_2!15215 (h!31622 (t!199732 mapDefault!14403))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231271 (= tp!699316 e!1426167)))

(assert (= b!2231587 b!2231589))

(assert (= (and b!2231587 condSetEmpty!20125) setIsEmpty!20125))

(assert (= (and b!2231587 (not condSetEmpty!20125)) setNonEmpty!20125))

(assert (= setNonEmpty!20125 b!2231588))

(assert (= (and b!2231271 ((_ is Cons!26221) (t!199732 mapDefault!14403))) b!2231587))

(declare-fun m!2667911 () Bool)

(assert (=> setNonEmpty!20125 m!2667911))

(declare-fun m!2667913 () Bool)

(assert (=> b!2231587 m!2667913))

(declare-fun b!2231590 () Bool)

(declare-fun e!1426168 () Bool)

(declare-fun tp!699605 () Bool)

(declare-fun tp!699606 () Bool)

(assert (=> b!2231590 (= e!1426168 (and tp!699605 tp!699606))))

(assert (=> b!2231272 (= tp!699313 e!1426168)))

(assert (= (and b!2231272 ((_ is Cons!26220) (exprs!2469 setElem!20099))) b!2231590))

(declare-fun condSetEmpty!20126 () Bool)

(assert (=> setNonEmpty!20107 (= condSetEmpty!20126 (= setRest!20106 ((as const (Array Context!3938 Bool)) false)))))

(declare-fun setRes!20126 () Bool)

(assert (=> setNonEmpty!20107 (= tp!699392 setRes!20126)))

(declare-fun setIsEmpty!20126 () Bool)

(assert (=> setIsEmpty!20126 setRes!20126))

(declare-fun setElem!20126 () Context!3938)

(declare-fun e!1426169 () Bool)

(declare-fun tp!699607 () Bool)

(declare-fun setNonEmpty!20126 () Bool)

(assert (=> setNonEmpty!20126 (= setRes!20126 (and tp!699607 (inv!35610 setElem!20126) e!1426169))))

(declare-fun setRest!20126 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20126 (= setRest!20106 ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20126 true) setRest!20126))))

(declare-fun b!2231591 () Bool)

(declare-fun tp!699608 () Bool)

(assert (=> b!2231591 (= e!1426169 tp!699608)))

(assert (= (and setNonEmpty!20107 condSetEmpty!20126) setIsEmpty!20126))

(assert (= (and setNonEmpty!20107 (not condSetEmpty!20126)) setNonEmpty!20126))

(assert (= setNonEmpty!20126 b!2231591))

(declare-fun m!2667915 () Bool)

(assert (=> setNonEmpty!20126 m!2667915))

(declare-fun b!2231592 () Bool)

(declare-fun e!1426170 () Bool)

(declare-fun tp!699609 () Bool)

(declare-fun tp!699610 () Bool)

(assert (=> b!2231592 (= e!1426170 (and tp!699609 tp!699610))))

(assert (=> b!2231298 (= tp!699344 e!1426170)))

(assert (= (and b!2231298 ((_ is Cons!26220) (exprs!2469 setElem!20100))) b!2231592))

(declare-fun e!1426171 () Bool)

(assert (=> b!2231290 (= tp!699335 e!1426171)))

(declare-fun b!2231594 () Bool)

(declare-fun tp!699612 () Bool)

(declare-fun tp!699615 () Bool)

(assert (=> b!2231594 (= e!1426171 (and tp!699612 tp!699615))))

(declare-fun b!2231595 () Bool)

(declare-fun tp!699613 () Bool)

(assert (=> b!2231595 (= e!1426171 tp!699613)))

(declare-fun b!2231593 () Bool)

(assert (=> b!2231593 (= e!1426171 tp_is_empty!10067)))

(declare-fun b!2231596 () Bool)

(declare-fun tp!699614 () Bool)

(declare-fun tp!699611 () Bool)

(assert (=> b!2231596 (= e!1426171 (and tp!699614 tp!699611))))

(assert (= (and b!2231290 ((_ is ElementMatch!6421) (regOne!13354 (regOne!13355 expr!64)))) b!2231593))

(assert (= (and b!2231290 ((_ is Concat!10759) (regOne!13354 (regOne!13355 expr!64)))) b!2231594))

(assert (= (and b!2231290 ((_ is Star!6421) (regOne!13354 (regOne!13355 expr!64)))) b!2231595))

(assert (= (and b!2231290 ((_ is Union!6421) (regOne!13354 (regOne!13355 expr!64)))) b!2231596))

(declare-fun e!1426172 () Bool)

(assert (=> b!2231290 (= tp!699338 e!1426172)))

(declare-fun b!2231598 () Bool)

(declare-fun tp!699617 () Bool)

(declare-fun tp!699620 () Bool)

(assert (=> b!2231598 (= e!1426172 (and tp!699617 tp!699620))))

(declare-fun b!2231599 () Bool)

(declare-fun tp!699618 () Bool)

(assert (=> b!2231599 (= e!1426172 tp!699618)))

(declare-fun b!2231597 () Bool)

(assert (=> b!2231597 (= e!1426172 tp_is_empty!10067)))

(declare-fun b!2231600 () Bool)

(declare-fun tp!699619 () Bool)

(declare-fun tp!699616 () Bool)

(assert (=> b!2231600 (= e!1426172 (and tp!699619 tp!699616))))

(assert (= (and b!2231290 ((_ is ElementMatch!6421) (regTwo!13354 (regOne!13355 expr!64)))) b!2231597))

(assert (= (and b!2231290 ((_ is Concat!10759) (regTwo!13354 (regOne!13355 expr!64)))) b!2231598))

(assert (= (and b!2231290 ((_ is Star!6421) (regTwo!13354 (regOne!13355 expr!64)))) b!2231599))

(assert (= (and b!2231290 ((_ is Union!6421) (regTwo!13354 (regOne!13355 expr!64)))) b!2231600))

(declare-fun e!1426173 () Bool)

(assert (=> b!2231306 (= tp!699357 e!1426173)))

(declare-fun b!2231602 () Bool)

(declare-fun tp!699622 () Bool)

(declare-fun tp!699625 () Bool)

(assert (=> b!2231602 (= e!1426173 (and tp!699622 tp!699625))))

(declare-fun b!2231603 () Bool)

(declare-fun tp!699623 () Bool)

(assert (=> b!2231603 (= e!1426173 tp!699623)))

(declare-fun b!2231601 () Bool)

(assert (=> b!2231601 (= e!1426173 tp_is_empty!10067)))

(declare-fun b!2231604 () Bool)

(declare-fun tp!699624 () Bool)

(declare-fun tp!699621 () Bool)

(assert (=> b!2231604 (= e!1426173 (and tp!699624 tp!699621))))

(assert (= (and b!2231306 ((_ is ElementMatch!6421) (regOne!13355 (reg!6750 expr!64)))) b!2231601))

(assert (= (and b!2231306 ((_ is Concat!10759) (regOne!13355 (reg!6750 expr!64)))) b!2231602))

(assert (= (and b!2231306 ((_ is Star!6421) (regOne!13355 (reg!6750 expr!64)))) b!2231603))

(assert (= (and b!2231306 ((_ is Union!6421) (regOne!13355 (reg!6750 expr!64)))) b!2231604))

(declare-fun e!1426174 () Bool)

(assert (=> b!2231306 (= tp!699354 e!1426174)))

(declare-fun b!2231606 () Bool)

(declare-fun tp!699627 () Bool)

(declare-fun tp!699630 () Bool)

(assert (=> b!2231606 (= e!1426174 (and tp!699627 tp!699630))))

(declare-fun b!2231607 () Bool)

(declare-fun tp!699628 () Bool)

(assert (=> b!2231607 (= e!1426174 tp!699628)))

(declare-fun b!2231605 () Bool)

(assert (=> b!2231605 (= e!1426174 tp_is_empty!10067)))

(declare-fun b!2231608 () Bool)

(declare-fun tp!699629 () Bool)

(declare-fun tp!699626 () Bool)

(assert (=> b!2231608 (= e!1426174 (and tp!699629 tp!699626))))

(assert (= (and b!2231306 ((_ is ElementMatch!6421) (regTwo!13355 (reg!6750 expr!64)))) b!2231605))

(assert (= (and b!2231306 ((_ is Concat!10759) (regTwo!13355 (reg!6750 expr!64)))) b!2231606))

(assert (= (and b!2231306 ((_ is Star!6421) (regTwo!13355 (reg!6750 expr!64)))) b!2231607))

(assert (= (and b!2231306 ((_ is Union!6421) (regTwo!13355 (reg!6750 expr!64)))) b!2231608))

(declare-fun e!1426175 () Bool)

(assert (=> b!2231291 (= tp!699336 e!1426175)))

(declare-fun b!2231610 () Bool)

(declare-fun tp!699632 () Bool)

(declare-fun tp!699635 () Bool)

(assert (=> b!2231610 (= e!1426175 (and tp!699632 tp!699635))))

(declare-fun b!2231611 () Bool)

(declare-fun tp!699633 () Bool)

(assert (=> b!2231611 (= e!1426175 tp!699633)))

(declare-fun b!2231609 () Bool)

(assert (=> b!2231609 (= e!1426175 tp_is_empty!10067)))

(declare-fun b!2231612 () Bool)

(declare-fun tp!699634 () Bool)

(declare-fun tp!699631 () Bool)

(assert (=> b!2231612 (= e!1426175 (and tp!699634 tp!699631))))

(assert (= (and b!2231291 ((_ is ElementMatch!6421) (reg!6750 (regOne!13355 expr!64)))) b!2231609))

(assert (= (and b!2231291 ((_ is Concat!10759) (reg!6750 (regOne!13355 expr!64)))) b!2231610))

(assert (= (and b!2231291 ((_ is Star!6421) (reg!6750 (regOne!13355 expr!64)))) b!2231611))

(assert (= (and b!2231291 ((_ is Union!6421) (reg!6750 (regOne!13355 expr!64)))) b!2231612))

(declare-fun e!1426176 () Bool)

(assert (=> b!2231331 (= tp!699396 e!1426176)))

(declare-fun b!2231614 () Bool)

(declare-fun tp!699637 () Bool)

(declare-fun tp!699640 () Bool)

(assert (=> b!2231614 (= e!1426176 (and tp!699637 tp!699640))))

(declare-fun b!2231615 () Bool)

(declare-fun tp!699638 () Bool)

(assert (=> b!2231615 (= e!1426176 tp!699638)))

(declare-fun b!2231613 () Bool)

(assert (=> b!2231613 (= e!1426176 tp_is_empty!10067)))

(declare-fun b!2231616 () Bool)

(declare-fun tp!699639 () Bool)

(declare-fun tp!699636 () Bool)

(assert (=> b!2231616 (= e!1426176 (and tp!699639 tp!699636))))

(assert (= (and b!2231331 ((_ is ElementMatch!6421) (_1!15214 (_1!15215 (h!31622 mapDefault!14406))))) b!2231613))

(assert (= (and b!2231331 ((_ is Concat!10759) (_1!15214 (_1!15215 (h!31622 mapDefault!14406))))) b!2231614))

(assert (= (and b!2231331 ((_ is Star!6421) (_1!15214 (_1!15215 (h!31622 mapDefault!14406))))) b!2231615))

(assert (= (and b!2231331 ((_ is Union!6421) (_1!15214 (_1!15215 (h!31622 mapDefault!14406))))) b!2231616))

(declare-fun b!2231618 () Bool)

(declare-fun e!1426178 () Bool)

(declare-fun tp!699641 () Bool)

(assert (=> b!2231618 (= e!1426178 tp!699641)))

(declare-fun b!2231619 () Bool)

(declare-fun e!1426177 () Bool)

(declare-fun tp!699643 () Bool)

(assert (=> b!2231619 (= e!1426177 tp!699643)))

(declare-fun setIsEmpty!20127 () Bool)

(declare-fun setRes!20127 () Bool)

(assert (=> setIsEmpty!20127 setRes!20127))

(declare-fun setElem!20127 () Context!3938)

(declare-fun setNonEmpty!20127 () Bool)

(declare-fun tp!699642 () Bool)

(assert (=> setNonEmpty!20127 (= setRes!20127 (and tp!699642 (inv!35610 setElem!20127) e!1426178))))

(declare-fun setRest!20127 () (InoxSet Context!3938))

(assert (=> setNonEmpty!20127 (= (_2!15215 (h!31622 (t!199732 mapDefault!14406))) ((_ map or) (store ((as const (Array Context!3938 Bool)) false) setElem!20127 true) setRest!20127))))

(declare-fun tp!699644 () Bool)

(declare-fun tp!699645 () Bool)

(declare-fun b!2231617 () Bool)

(declare-fun e!1426179 () Bool)

(assert (=> b!2231617 (= e!1426179 (and tp!699645 (inv!35610 (_2!15214 (_1!15215 (h!31622 (t!199732 mapDefault!14406))))) e!1426177 tp_is_empty!10067 setRes!20127 tp!699644))))

(declare-fun condSetEmpty!20127 () Bool)

(assert (=> b!2231617 (= condSetEmpty!20127 (= (_2!15215 (h!31622 (t!199732 mapDefault!14406))) ((as const (Array Context!3938 Bool)) false)))))

(assert (=> b!2231331 (= tp!699395 e!1426179)))

(assert (= b!2231617 b!2231619))

(assert (= (and b!2231617 condSetEmpty!20127) setIsEmpty!20127))

(assert (= (and b!2231617 (not condSetEmpty!20127)) setNonEmpty!20127))

(assert (= setNonEmpty!20127 b!2231618))

(assert (= (and b!2231331 ((_ is Cons!26221) (t!199732 mapDefault!14406))) b!2231617))

(declare-fun m!2667917 () Bool)

(assert (=> setNonEmpty!20127 m!2667917))

(declare-fun m!2667919 () Bool)

(assert (=> b!2231617 m!2667919))

(declare-fun e!1426180 () Bool)

(assert (=> b!2231292 (= tp!699337 e!1426180)))

(declare-fun b!2231621 () Bool)

(declare-fun tp!699647 () Bool)

(declare-fun tp!699650 () Bool)

(assert (=> b!2231621 (= e!1426180 (and tp!699647 tp!699650))))

(declare-fun b!2231622 () Bool)

(declare-fun tp!699648 () Bool)

(assert (=> b!2231622 (= e!1426180 tp!699648)))

(declare-fun b!2231620 () Bool)

(assert (=> b!2231620 (= e!1426180 tp_is_empty!10067)))

(declare-fun b!2231623 () Bool)

(declare-fun tp!699649 () Bool)

(declare-fun tp!699646 () Bool)

(assert (=> b!2231623 (= e!1426180 (and tp!699649 tp!699646))))

(assert (= (and b!2231292 ((_ is ElementMatch!6421) (regOne!13355 (regOne!13355 expr!64)))) b!2231620))

(assert (= (and b!2231292 ((_ is Concat!10759) (regOne!13355 (regOne!13355 expr!64)))) b!2231621))

(assert (= (and b!2231292 ((_ is Star!6421) (regOne!13355 (regOne!13355 expr!64)))) b!2231622))

(assert (= (and b!2231292 ((_ is Union!6421) (regOne!13355 (regOne!13355 expr!64)))) b!2231623))

(declare-fun e!1426181 () Bool)

(assert (=> b!2231292 (= tp!699334 e!1426181)))

(declare-fun b!2231625 () Bool)

(declare-fun tp!699652 () Bool)

(declare-fun tp!699655 () Bool)

(assert (=> b!2231625 (= e!1426181 (and tp!699652 tp!699655))))

(declare-fun b!2231626 () Bool)

(declare-fun tp!699653 () Bool)

(assert (=> b!2231626 (= e!1426181 tp!699653)))

(declare-fun b!2231624 () Bool)

(assert (=> b!2231624 (= e!1426181 tp_is_empty!10067)))

(declare-fun b!2231627 () Bool)

(declare-fun tp!699654 () Bool)

(declare-fun tp!699651 () Bool)

(assert (=> b!2231627 (= e!1426181 (and tp!699654 tp!699651))))

(assert (= (and b!2231292 ((_ is ElementMatch!6421) (regTwo!13355 (regOne!13355 expr!64)))) b!2231624))

(assert (= (and b!2231292 ((_ is Concat!10759) (regTwo!13355 (regOne!13355 expr!64)))) b!2231625))

(assert (= (and b!2231292 ((_ is Star!6421) (regTwo!13355 (regOne!13355 expr!64)))) b!2231626))

(assert (= (and b!2231292 ((_ is Union!6421) (regTwo!13355 (regOne!13355 expr!64)))) b!2231627))

(declare-fun b_lambda!71657 () Bool)

(assert (= b_lambda!71655 (or d!665042 b_lambda!71657)))

(declare-fun bs!454004 () Bool)

(declare-fun d!665112 () Bool)

(assert (= bs!454004 (and d!665112 d!665042)))

(assert (=> bs!454004 (= (dynLambda!11523 lambda!84294 (h!31621 (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)))))) (validRegex!2394 (h!31621 (exprs!2469 (Context!3939 ($colon$colon!520 (exprs!2469 context!86) (regTwo!13354 expr!64)))))))))

(declare-fun m!2667921 () Bool)

(assert (=> bs!454004 m!2667921))

(assert (=> b!2231377 d!665112))

(declare-fun b_lambda!71659 () Bool)

(assert (= b_lambda!71653 (or d!665052 b_lambda!71659)))

(declare-fun bs!454005 () Bool)

(declare-fun d!665114 () Bool)

(assert (= bs!454005 (and d!665114 d!665052)))

(assert (=> bs!454005 (= (dynLambda!11523 lambda!84295 (h!31621 (exprs!2469 context!86))) (validRegex!2394 (h!31621 (exprs!2469 context!86))))))

(declare-fun m!2667923 () Bool)

(assert (=> bs!454005 m!2667923))

(assert (=> b!2231375 d!665114))

(check-sat (not b!2231490) (not setNonEmpty!20115) (not b!2231564) (not setNonEmpty!20116) (not b!2231378) (not b!2231612) (not b!2231458) (not b_lambda!71659) (not b!2231622) (not b!2231606) (not b_lambda!71657) (not b!2231569) (not bm!134005) (not b!2231517) (not b!2231614) (not b!2231472) (not b!2231570) (not b!2231571) (not b!2231461) (not b!2231602) (not b!2231369) (not b!2231523) (not d!665086) (not b!2231607) (not b!2231598) (not b!2231483) (not b!2231496) (not d!665068) (not b!2231625) (not b!2231615) (not b!2231599) (not b!2231507) (not b!2231586) (not b!2231385) (not b!2231589) (not b!2231535) (not b!2231513) (not b!2231475) (not setNonEmpty!20119) (not d!665060) (not b!2231487) (not b!2231627) (not b!2231394) (not bm!133990) (not bm!134001) (not setNonEmpty!20127) (not b!2231466) (not b!2231537) (not b!2231561) (not setNonEmpty!20120) (not b!2231611) (not b!2231547) (not b!2231494) (not b!2231469) (not b!2231499) (not b_next!65403) (not b!2231591) (not b!2231479) (not b!2231619) (not b!2231579) (not b!2231557) (not b!2231400) (not b!2231595) (not d!665094) (not b!2231502) (not bm!133999) (not b!2231590) (not b!2231592) (not b!2231395) (not b!2231518) (not bm!134002) (not b!2231546) (not b!2231603) (not b!2231439) (not b!2231488) (not b!2231542) (not d!665076) (not b!2231514) (not b!2231585) (not b!2231604) (not b!2231484) (not bs!454005) (not b!2231600) (not b!2231503) (not b!2231544) (not b!2231478) (not b!2231608) (not b!2231539) (not b!2231529) (not b!2231572) (not b!2231464) (not b!2231474) (not b!2231462) (not b!2231448) (not b!2231549) (not setNonEmpty!20111) (not b!2231554) (not b!2231480) (not b!2231527) (not b!2231580) (not b!2231533) (not bm!134004) (not d!665088) (not d!665104) (not b!2231551) (not bm!133996) (not b!2231577) (not bs!454004) (not mapNonEmpty!14407) (not b!2231563) (not setNonEmpty!20121) (not b!2231470) b_and!174685 (not b!2231596) (not d!665092) (not b!2231576) (not d!665080) (not b!2231541) (not b!2231553) (not bm!133998) (not b!2231495) (not bm!133988) (not b!2231578) (not b!2231519) (not setNonEmpty!20126) (not d!665100) b_and!174687 (not b!2231376) (not d!665070) (not b!2231505) (not b!2231581) (not setNonEmpty!20118) (not b!2231508) (not d!665098) (not b!2231493) (not b!2231574) (not b!2231543) (not d!665084) (not d!665082) (not b!2231587) (not b!2231530) (not b!2231460) (not setNonEmpty!20124) tp_is_empty!10067 (not b!2231538) (not b!2231616) (not bm!133989) (not b!2231559) (not b!2231618) (not b!2231626) (not d!665072) (not b!2231567) (not b_next!65401) (not b!2231610) (not b!2231594) (not b!2231526) (not b!2231453) (not b!2231491) (not b!2231482) (not b!2231556) (not b!2231468) (not b!2231588) (not b!2231548) (not b!2231534) (not b!2231565) (not b!2231486) (not b!2231552) (not b!2231582) (not b!2231555) (not bm!133986) (not bm!133983) (not d!665110) (not b!2231516) (not b!2231501) (not b!2231473) (not b!2231510) (not setNonEmpty!20125) (not b!2231525) (not b!2231531) (not b!2231512) (not b!2231500) (not b!2231504) (not b!2231621) (not setNonEmpty!20117) (not b!2231617) (not b!2231623) (not b!2231509) (not b!2231550) (not b!2231566) (not b!2231522) (not b!2231521) (not b!2231465) (not setNonEmpty!20122) (not b!2231573) (not bm!133997) (not b!2231476) (not setNonEmpty!20123) (not b!2231560) (not b!2231492) (not b!2231584) (not b!2231430) (not b!2231387) (not setNonEmpty!20114) (not b!2231497))
(check-sat b_and!174685 b_and!174687 (not b_next!65403) (not b_next!65401))
