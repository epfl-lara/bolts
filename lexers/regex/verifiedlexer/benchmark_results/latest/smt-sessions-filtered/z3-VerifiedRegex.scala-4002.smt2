; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217296 () Bool)

(assert start!217296)

(declare-fun b!2227035 () Bool)

(declare-fun b_free!64593 () Bool)

(declare-fun b_next!65297 () Bool)

(assert (=> b!2227035 (= b_free!64593 (not b_next!65297))))

(declare-fun tp!696388 () Bool)

(declare-fun b_and!174581 () Bool)

(assert (=> b!2227035 (= tp!696388 b_and!174581)))

(declare-fun b!2227026 () Bool)

(declare-fun b_free!64595 () Bool)

(declare-fun b_next!65299 () Bool)

(assert (=> b!2227026 (= b_free!64595 (not b_next!65299))))

(declare-fun tp!696386 () Bool)

(declare-fun b_and!174583 () Bool)

(assert (=> b!2227026 (= tp!696386 b_and!174583)))

(declare-fun b!2227018 () Bool)

(declare-fun e!1423248 () Bool)

(declare-fun tp!696391 () Bool)

(assert (=> b!2227018 (= e!1423248 tp!696391)))

(declare-fun b!2227019 () Bool)

(declare-fun e!1423256 () Bool)

(declare-fun e!1423247 () Bool)

(assert (=> b!2227019 (= e!1423256 e!1423247)))

(declare-fun b!2227020 () Bool)

(declare-fun e!1423245 () Bool)

(declare-datatypes ((C!12936 0))(
  ( (C!12937 (val!7516 Int)) )
))
(declare-datatypes ((Regex!6395 0))(
  ( (ElementMatch!6395 (c!355329 C!12936)) (Concat!10733 (regOne!13302 Regex!6395) (regTwo!13302 Regex!6395)) (EmptyExpr!6395) (Star!6395 (reg!6724 Regex!6395)) (EmptyLang!6395) (Union!6395 (regOne!13303 Regex!6395) (regTwo!13303 Regex!6395)) )
))
(declare-fun expr!64 () Regex!6395)

(declare-fun nullable!1749 (Regex!6395) Bool)

(assert (=> b!2227020 (= e!1423245 (not (nullable!1749 (regOne!13302 expr!64))))))

(declare-fun mapNonEmpty!14289 () Bool)

(declare-fun mapRes!14289 () Bool)

(declare-fun tp!696385 () Bool)

(declare-fun tp!696390 () Bool)

(assert (=> mapNonEmpty!14289 (= mapRes!14289 (and tp!696385 tp!696390))))

(declare-fun mapKey!14289 () (_ BitVec 32))

(declare-datatypes ((List!26261 0))(
  ( (Nil!26167) (Cons!26167 (h!31568 Regex!6395) (t!199673 List!26261)) )
))
(declare-datatypes ((Context!3886 0))(
  ( (Context!3887 (exprs!2443 List!26261)) )
))
(declare-datatypes ((array!10462 0))(
  ( (array!10463 (arr!4653 (Array (_ BitVec 32) (_ BitVec 64))) (size!20434 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3862 0))(
  ( (tuple3!3863 (_1!15143 Regex!6395) (_2!15143 Context!3886) (_3!2401 C!12936)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25484 0))(
  ( (tuple2!25485 (_1!15144 tuple3!3862) (_2!15144 (InoxSet Context!3886))) )
))
(declare-datatypes ((List!26262 0))(
  ( (Nil!26168) (Cons!26168 (h!31569 tuple2!25484) (t!199674 List!26262)) )
))
(declare-datatypes ((array!10464 0))(
  ( (array!10465 (arr!4654 (Array (_ BitVec 32) List!26262)) (size!20435 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6066 0))(
  ( (LongMapFixedSize!6067 (defaultEntry!3398 Int) (mask!7584 (_ BitVec 32)) (extraKeys!3281 (_ BitVec 32)) (zeroValue!3291 List!26262) (minValue!3291 List!26262) (_size!6113 (_ BitVec 32)) (_keys!3330 array!10462) (_values!3313 array!10464) (_vacant!3094 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11949 0))(
  ( (Cell!11950 (v!29740 LongMapFixedSize!6066)) )
))
(declare-datatypes ((MutLongMap!3033 0))(
  ( (LongMap!3033 (underlying!6267 Cell!11949)) (MutLongMapExt!3032 (__x!17325 Int)) )
))
(declare-datatypes ((Cell!11951 0))(
  ( (Cell!11952 (v!29741 MutLongMap!3033)) )
))
(declare-datatypes ((Hashable!2943 0))(
  ( (HashableExt!2942 (__x!17326 Int)) )
))
(declare-datatypes ((MutableMap!2943 0))(
  ( (MutableMapExt!2942 (__x!17327 Int)) (HashMap!2943 (underlying!6268 Cell!11951) (hashF!4866 Hashable!2943) (_size!6114 (_ BitVec 32)) (defaultValue!3105 Int)) )
))
(declare-datatypes ((CacheDown!1932 0))(
  ( (CacheDown!1933 (cache!3324 MutableMap!2943)) )
))
(declare-fun cacheDown!839 () CacheDown!1932)

(declare-fun mapValue!14289 () List!26262)

(declare-fun mapRest!14289 () (Array (_ BitVec 32) List!26262))

(assert (=> mapNonEmpty!14289 (= (arr!4654 (_values!3313 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) (store mapRest!14289 mapKey!14289 mapValue!14289))))

(declare-fun b!2227021 () Bool)

(declare-fun e!1423255 () Bool)

(declare-fun tp!696394 () Bool)

(assert (=> b!2227021 (= e!1423255 (and tp!696394 mapRes!14289))))

(declare-fun condMapEmpty!14289 () Bool)

(declare-fun mapDefault!14289 () List!26262)

(assert (=> b!2227021 (= condMapEmpty!14289 (= (arr!4654 (_values!3313 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26262)) mapDefault!14289)))))

(declare-fun res!954773 () Bool)

(declare-fun e!1423253 () Bool)

(assert (=> start!217296 (=> (not res!954773) (not e!1423253))))

(declare-fun validRegex!2373 (Regex!6395) Bool)

(assert (=> start!217296 (= res!954773 (validRegex!2373 expr!64))))

(assert (=> start!217296 e!1423253))

(declare-fun e!1423251 () Bool)

(assert (=> start!217296 e!1423251))

(declare-fun e!1423250 () Bool)

(declare-fun inv!35528 (CacheDown!1932) Bool)

(assert (=> start!217296 (and (inv!35528 cacheDown!839) e!1423250)))

(declare-fun context!86 () Context!3886)

(declare-fun inv!35529 (Context!3886) Bool)

(assert (=> start!217296 (and (inv!35529 context!86) e!1423248)))

(declare-fun tp_is_empty!10015 () Bool)

(assert (=> start!217296 tp_is_empty!10015))

(declare-fun b!2227022 () Bool)

(declare-fun res!954776 () Bool)

(assert (=> b!2227022 (=> (not res!954776) (not e!1423253))))

(declare-fun a!1167 () C!12936)

(get-info :version)

(declare-datatypes ((Option!5085 0))(
  ( (None!5084) (Some!5084 (v!29742 (InoxSet Context!3886))) )
))
(declare-fun get!7874 (CacheDown!1932 Regex!6395 Context!3886 C!12936) Option!5085)

(assert (=> b!2227022 (= res!954776 (not ((_ is Some!5084) (get!7874 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2227023 () Bool)

(declare-fun res!954775 () Bool)

(assert (=> b!2227023 (=> (not res!954775) (not e!1423253))))

(assert (=> b!2227023 (= res!954775 e!1423245)))

(declare-fun res!954772 () Bool)

(assert (=> b!2227023 (=> res!954772 e!1423245)))

(assert (=> b!2227023 (= res!954772 (not ((_ is Concat!10733) expr!64)))))

(declare-fun mapIsEmpty!14289 () Bool)

(assert (=> mapIsEmpty!14289 mapRes!14289))

(declare-fun b!2227024 () Bool)

(declare-fun tp!696396 () Bool)

(declare-fun tp!696395 () Bool)

(assert (=> b!2227024 (= e!1423251 (and tp!696396 tp!696395))))

(declare-fun b!2227025 () Bool)

(declare-fun res!954774 () Bool)

(assert (=> b!2227025 (=> (not res!954774) (not e!1423253))))

(assert (=> b!2227025 (= res!954774 (and (or (not ((_ is ElementMatch!6395) expr!64)) (not (= (c!355329 expr!64) a!1167))) (not ((_ is Union!6395) expr!64))))))

(declare-fun tp!696392 () Bool)

(declare-fun tp!696397 () Bool)

(declare-fun array_inv!3339 (array!10462) Bool)

(declare-fun array_inv!3340 (array!10464) Bool)

(assert (=> b!2227026 (= e!1423247 (and tp!696386 tp!696392 tp!696397 (array_inv!3339 (_keys!3330 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) (array_inv!3340 (_values!3313 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) e!1423255))))

(declare-fun b!2227027 () Bool)

(assert (=> b!2227027 (= e!1423251 tp_is_empty!10015)))

(declare-fun b!2227028 () Bool)

(declare-fun tp!696387 () Bool)

(assert (=> b!2227028 (= e!1423251 tp!696387)))

(declare-fun b!2227029 () Bool)

(declare-fun res!954777 () Bool)

(assert (=> b!2227029 (=> (not res!954777) (not e!1423253))))

(assert (=> b!2227029 (= res!954777 (and (not ((_ is Concat!10733) expr!64)) ((_ is Star!6395) expr!64)))))

(declare-fun b!2227030 () Bool)

(assert (=> b!2227030 (= e!1423253 (not (validRegex!2373 (reg!6724 expr!64))))))

(declare-fun b!2227031 () Bool)

(declare-fun e!1423246 () Bool)

(assert (=> b!2227031 (= e!1423250 e!1423246)))

(declare-fun b!2227032 () Bool)

(declare-fun e!1423254 () Bool)

(assert (=> b!2227032 (= e!1423254 e!1423256)))

(declare-fun b!2227033 () Bool)

(declare-fun e!1423249 () Bool)

(declare-fun lt!830147 () MutLongMap!3033)

(assert (=> b!2227033 (= e!1423249 (and e!1423254 ((_ is LongMap!3033) lt!830147)))))

(assert (=> b!2227033 (= lt!830147 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))

(declare-fun b!2227034 () Bool)

(declare-fun tp!696389 () Bool)

(declare-fun tp!696393 () Bool)

(assert (=> b!2227034 (= e!1423251 (and tp!696389 tp!696393))))

(assert (=> b!2227035 (= e!1423246 (and e!1423249 tp!696388))))

(assert (= (and start!217296 res!954773) b!2227022))

(assert (= (and b!2227022 res!954776) b!2227025))

(assert (= (and b!2227025 res!954774) b!2227023))

(assert (= (and b!2227023 (not res!954772)) b!2227020))

(assert (= (and b!2227023 res!954775) b!2227029))

(assert (= (and b!2227029 res!954777) b!2227030))

(assert (= (and start!217296 ((_ is ElementMatch!6395) expr!64)) b!2227027))

(assert (= (and start!217296 ((_ is Concat!10733) expr!64)) b!2227024))

(assert (= (and start!217296 ((_ is Star!6395) expr!64)) b!2227028))

(assert (= (and start!217296 ((_ is Union!6395) expr!64)) b!2227034))

(assert (= (and b!2227021 condMapEmpty!14289) mapIsEmpty!14289))

(assert (= (and b!2227021 (not condMapEmpty!14289)) mapNonEmpty!14289))

(assert (= b!2227026 b!2227021))

(assert (= b!2227019 b!2227026))

(assert (= b!2227032 b!2227019))

(assert (= (and b!2227033 ((_ is LongMap!3033) (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))) b!2227032))

(assert (= b!2227035 b!2227033))

(assert (= (and b!2227031 ((_ is HashMap!2943) (cache!3324 cacheDown!839))) b!2227035))

(assert (= start!217296 b!2227031))

(assert (= start!217296 b!2227018))

(declare-fun m!2665858 () Bool)

(assert (=> b!2227020 m!2665858))

(declare-fun m!2665860 () Bool)

(assert (=> b!2227030 m!2665860))

(declare-fun m!2665862 () Bool)

(assert (=> start!217296 m!2665862))

(declare-fun m!2665864 () Bool)

(assert (=> start!217296 m!2665864))

(declare-fun m!2665866 () Bool)

(assert (=> start!217296 m!2665866))

(declare-fun m!2665868 () Bool)

(assert (=> b!2227026 m!2665868))

(declare-fun m!2665870 () Bool)

(assert (=> b!2227026 m!2665870))

(declare-fun m!2665872 () Bool)

(assert (=> b!2227022 m!2665872))

(declare-fun m!2665874 () Bool)

(assert (=> mapNonEmpty!14289 m!2665874))

(check-sat (not b!2227028) tp_is_empty!10015 (not b_next!65299) b_and!174583 (not start!217296) (not b!2227026) (not mapNonEmpty!14289) (not b!2227018) (not b!2227022) (not b_next!65297) (not b!2227030) (not b!2227024) b_and!174581 (not b!2227021) (not b!2227020) (not b!2227034))
(check-sat b_and!174581 b_and!174583 (not b_next!65299) (not b_next!65297))
(get-model)

(declare-fun d!664627 () Bool)

(declare-fun e!1423259 () Bool)

(assert (=> d!664627 e!1423259))

(declare-fun res!954780 () Bool)

(assert (=> d!664627 (=> res!954780 e!1423259)))

(declare-fun lt!830150 () Option!5085)

(declare-fun isEmpty!14886 (Option!5085) Bool)

(assert (=> d!664627 (= res!954780 (isEmpty!14886 lt!830150))))

(declare-fun choose!13116 (CacheDown!1932 Regex!6395 Context!3886 C!12936) Option!5085)

(assert (=> d!664627 (= lt!830150 (choose!13116 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!270 (MutableMap!2943) Bool)

(assert (=> d!664627 (validCacheMapDown!270 (cache!3324 cacheDown!839))))

(assert (=> d!664627 (= (get!7874 cacheDown!839 expr!64 context!86 a!1167) lt!830150)))

(declare-fun b!2227038 () Bool)

(declare-fun get!7875 (Option!5085) (InoxSet Context!3886))

(declare-fun derivationStepZipperDown!36 (Regex!6395 Context!3886 C!12936) (InoxSet Context!3886))

(assert (=> b!2227038 (= e!1423259 (= (get!7875 lt!830150) (derivationStepZipperDown!36 expr!64 context!86 a!1167)))))

(assert (= (and d!664627 (not res!954780)) b!2227038))

(declare-fun m!2665876 () Bool)

(assert (=> d!664627 m!2665876))

(declare-fun m!2665878 () Bool)

(assert (=> d!664627 m!2665878))

(declare-fun m!2665880 () Bool)

(assert (=> d!664627 m!2665880))

(declare-fun m!2665882 () Bool)

(assert (=> b!2227038 m!2665882))

(declare-fun m!2665884 () Bool)

(assert (=> b!2227038 m!2665884))

(assert (=> b!2227022 d!664627))

(declare-fun d!664629 () Bool)

(assert (=> d!664629 (= (array_inv!3339 (_keys!3330 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) (bvsge (size!20434 (_keys!3330 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2227026 d!664629))

(declare-fun d!664631 () Bool)

(assert (=> d!664631 (= (array_inv!3340 (_values!3313 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) (bvsge (size!20435 (_values!3313 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2227026 d!664631))

(declare-fun bm!133346 () Bool)

(declare-fun call!133352 () Bool)

(declare-fun call!133353 () Bool)

(assert (=> bm!133346 (= call!133352 call!133353)))

(declare-fun b!2227057 () Bool)

(declare-fun e!1423279 () Bool)

(declare-fun call!133351 () Bool)

(assert (=> b!2227057 (= e!1423279 call!133351)))

(declare-fun b!2227058 () Bool)

(declare-fun res!954794 () Bool)

(declare-fun e!1423276 () Bool)

(assert (=> b!2227058 (=> res!954794 e!1423276)))

(assert (=> b!2227058 (= res!954794 (not ((_ is Concat!10733) expr!64)))))

(declare-fun e!1423274 () Bool)

(assert (=> b!2227058 (= e!1423274 e!1423276)))

(declare-fun bm!133347 () Bool)

(declare-fun c!355335 () Bool)

(declare-fun c!355334 () Bool)

(assert (=> bm!133347 (= call!133353 (validRegex!2373 (ite c!355334 (reg!6724 expr!64) (ite c!355335 (regOne!13303 expr!64) (regOne!13302 expr!64)))))))

(declare-fun b!2227059 () Bool)

(declare-fun e!1423277 () Bool)

(declare-fun e!1423280 () Bool)

(assert (=> b!2227059 (= e!1423277 e!1423280)))

(declare-fun res!954795 () Bool)

(assert (=> b!2227059 (= res!954795 (not (nullable!1749 (reg!6724 expr!64))))))

(assert (=> b!2227059 (=> (not res!954795) (not e!1423280))))

(declare-fun d!664633 () Bool)

(declare-fun res!954793 () Bool)

(declare-fun e!1423275 () Bool)

(assert (=> d!664633 (=> res!954793 e!1423275)))

(assert (=> d!664633 (= res!954793 ((_ is ElementMatch!6395) expr!64))))

(assert (=> d!664633 (= (validRegex!2373 expr!64) e!1423275)))

(declare-fun b!2227060 () Bool)

(assert (=> b!2227060 (= e!1423275 e!1423277)))

(assert (=> b!2227060 (= c!355334 ((_ is Star!6395) expr!64))))

(declare-fun b!2227061 () Bool)

(declare-fun res!954792 () Bool)

(assert (=> b!2227061 (=> (not res!954792) (not e!1423279))))

(assert (=> b!2227061 (= res!954792 call!133352)))

(assert (=> b!2227061 (= e!1423274 e!1423279)))

(declare-fun b!2227062 () Bool)

(declare-fun e!1423278 () Bool)

(assert (=> b!2227062 (= e!1423276 e!1423278)))

(declare-fun res!954791 () Bool)

(assert (=> b!2227062 (=> (not res!954791) (not e!1423278))))

(assert (=> b!2227062 (= res!954791 call!133352)))

(declare-fun b!2227063 () Bool)

(assert (=> b!2227063 (= e!1423280 call!133353)))

(declare-fun b!2227064 () Bool)

(assert (=> b!2227064 (= e!1423278 call!133351)))

(declare-fun b!2227065 () Bool)

(assert (=> b!2227065 (= e!1423277 e!1423274)))

(assert (=> b!2227065 (= c!355335 ((_ is Union!6395) expr!64))))

(declare-fun bm!133348 () Bool)

(assert (=> bm!133348 (= call!133351 (validRegex!2373 (ite c!355335 (regTwo!13303 expr!64) (regTwo!13302 expr!64))))))

(assert (= (and d!664633 (not res!954793)) b!2227060))

(assert (= (and b!2227060 c!355334) b!2227059))

(assert (= (and b!2227060 (not c!355334)) b!2227065))

(assert (= (and b!2227059 res!954795) b!2227063))

(assert (= (and b!2227065 c!355335) b!2227061))

(assert (= (and b!2227065 (not c!355335)) b!2227058))

(assert (= (and b!2227061 res!954792) b!2227057))

(assert (= (and b!2227058 (not res!954794)) b!2227062))

(assert (= (and b!2227062 res!954791) b!2227064))

(assert (= (or b!2227057 b!2227064) bm!133348))

(assert (= (or b!2227061 b!2227062) bm!133346))

(assert (= (or b!2227063 bm!133346) bm!133347))

(declare-fun m!2665886 () Bool)

(assert (=> bm!133347 m!2665886))

(declare-fun m!2665888 () Bool)

(assert (=> b!2227059 m!2665888))

(declare-fun m!2665890 () Bool)

(assert (=> bm!133348 m!2665890))

(assert (=> start!217296 d!664633))

(declare-fun d!664635 () Bool)

(declare-fun res!954798 () Bool)

(declare-fun e!1423283 () Bool)

(assert (=> d!664635 (=> (not res!954798) (not e!1423283))))

(assert (=> d!664635 (= res!954798 ((_ is HashMap!2943) (cache!3324 cacheDown!839)))))

(assert (=> d!664635 (= (inv!35528 cacheDown!839) e!1423283)))

(declare-fun b!2227068 () Bool)

(assert (=> b!2227068 (= e!1423283 (validCacheMapDown!270 (cache!3324 cacheDown!839)))))

(assert (= (and d!664635 res!954798) b!2227068))

(assert (=> b!2227068 m!2665880))

(assert (=> start!217296 d!664635))

(declare-fun d!664637 () Bool)

(declare-fun lambda!84208 () Int)

(declare-fun forall!5348 (List!26261 Int) Bool)

(assert (=> d!664637 (= (inv!35529 context!86) (forall!5348 (exprs!2443 context!86) lambda!84208))))

(declare-fun bs!453550 () Bool)

(assert (= bs!453550 d!664637))

(declare-fun m!2665892 () Bool)

(assert (=> bs!453550 m!2665892))

(assert (=> start!217296 d!664637))

(declare-fun bm!133349 () Bool)

(declare-fun call!133355 () Bool)

(declare-fun call!133356 () Bool)

(assert (=> bm!133349 (= call!133355 call!133356)))

(declare-fun b!2227069 () Bool)

(declare-fun e!1423289 () Bool)

(declare-fun call!133354 () Bool)

(assert (=> b!2227069 (= e!1423289 call!133354)))

(declare-fun b!2227070 () Bool)

(declare-fun res!954802 () Bool)

(declare-fun e!1423286 () Bool)

(assert (=> b!2227070 (=> res!954802 e!1423286)))

(assert (=> b!2227070 (= res!954802 (not ((_ is Concat!10733) (reg!6724 expr!64))))))

(declare-fun e!1423284 () Bool)

(assert (=> b!2227070 (= e!1423284 e!1423286)))

(declare-fun c!355337 () Bool)

(declare-fun c!355336 () Bool)

(declare-fun bm!133350 () Bool)

(assert (=> bm!133350 (= call!133356 (validRegex!2373 (ite c!355336 (reg!6724 (reg!6724 expr!64)) (ite c!355337 (regOne!13303 (reg!6724 expr!64)) (regOne!13302 (reg!6724 expr!64))))))))

(declare-fun b!2227071 () Bool)

(declare-fun e!1423287 () Bool)

(declare-fun e!1423290 () Bool)

(assert (=> b!2227071 (= e!1423287 e!1423290)))

(declare-fun res!954803 () Bool)

(assert (=> b!2227071 (= res!954803 (not (nullable!1749 (reg!6724 (reg!6724 expr!64)))))))

(assert (=> b!2227071 (=> (not res!954803) (not e!1423290))))

(declare-fun d!664639 () Bool)

(declare-fun res!954801 () Bool)

(declare-fun e!1423285 () Bool)

(assert (=> d!664639 (=> res!954801 e!1423285)))

(assert (=> d!664639 (= res!954801 ((_ is ElementMatch!6395) (reg!6724 expr!64)))))

(assert (=> d!664639 (= (validRegex!2373 (reg!6724 expr!64)) e!1423285)))

(declare-fun b!2227072 () Bool)

(assert (=> b!2227072 (= e!1423285 e!1423287)))

(assert (=> b!2227072 (= c!355336 ((_ is Star!6395) (reg!6724 expr!64)))))

(declare-fun b!2227073 () Bool)

(declare-fun res!954800 () Bool)

(assert (=> b!2227073 (=> (not res!954800) (not e!1423289))))

(assert (=> b!2227073 (= res!954800 call!133355)))

(assert (=> b!2227073 (= e!1423284 e!1423289)))

(declare-fun b!2227074 () Bool)

(declare-fun e!1423288 () Bool)

(assert (=> b!2227074 (= e!1423286 e!1423288)))

(declare-fun res!954799 () Bool)

(assert (=> b!2227074 (=> (not res!954799) (not e!1423288))))

(assert (=> b!2227074 (= res!954799 call!133355)))

(declare-fun b!2227075 () Bool)

(assert (=> b!2227075 (= e!1423290 call!133356)))

(declare-fun b!2227076 () Bool)

(assert (=> b!2227076 (= e!1423288 call!133354)))

(declare-fun b!2227077 () Bool)

(assert (=> b!2227077 (= e!1423287 e!1423284)))

(assert (=> b!2227077 (= c!355337 ((_ is Union!6395) (reg!6724 expr!64)))))

(declare-fun bm!133351 () Bool)

(assert (=> bm!133351 (= call!133354 (validRegex!2373 (ite c!355337 (regTwo!13303 (reg!6724 expr!64)) (regTwo!13302 (reg!6724 expr!64)))))))

(assert (= (and d!664639 (not res!954801)) b!2227072))

(assert (= (and b!2227072 c!355336) b!2227071))

(assert (= (and b!2227072 (not c!355336)) b!2227077))

(assert (= (and b!2227071 res!954803) b!2227075))

(assert (= (and b!2227077 c!355337) b!2227073))

(assert (= (and b!2227077 (not c!355337)) b!2227070))

(assert (= (and b!2227073 res!954800) b!2227069))

(assert (= (and b!2227070 (not res!954802)) b!2227074))

(assert (= (and b!2227074 res!954799) b!2227076))

(assert (= (or b!2227069 b!2227076) bm!133351))

(assert (= (or b!2227073 b!2227074) bm!133349))

(assert (= (or b!2227075 bm!133349) bm!133350))

(declare-fun m!2665894 () Bool)

(assert (=> bm!133350 m!2665894))

(declare-fun m!2665896 () Bool)

(assert (=> b!2227071 m!2665896))

(declare-fun m!2665898 () Bool)

(assert (=> bm!133351 m!2665898))

(assert (=> b!2227030 d!664639))

(declare-fun d!664641 () Bool)

(declare-fun nullableFct!408 (Regex!6395) Bool)

(assert (=> d!664641 (= (nullable!1749 (regOne!13302 expr!64)) (nullableFct!408 (regOne!13302 expr!64)))))

(declare-fun bs!453551 () Bool)

(assert (= bs!453551 d!664641))

(declare-fun m!2665900 () Bool)

(assert (=> bs!453551 m!2665900))

(assert (=> b!2227020 d!664641))

(declare-fun b!2227082 () Bool)

(declare-fun e!1423293 () Bool)

(declare-fun tp!696402 () Bool)

(declare-fun tp!696403 () Bool)

(assert (=> b!2227082 (= e!1423293 (and tp!696402 tp!696403))))

(assert (=> b!2227018 (= tp!696391 e!1423293)))

(assert (= (and b!2227018 ((_ is Cons!26167) (exprs!2443 context!86))) b!2227082))

(declare-fun b!2227091 () Bool)

(declare-fun e!1423301 () Bool)

(declare-fun tp!696417 () Bool)

(assert (=> b!2227091 (= e!1423301 tp!696417)))

(declare-fun e!1423302 () Bool)

(assert (=> b!2227026 (= tp!696392 e!1423302)))

(declare-fun setIsEmpty!19910 () Bool)

(declare-fun setRes!19910 () Bool)

(assert (=> setIsEmpty!19910 setRes!19910))

(declare-fun e!1423300 () Bool)

(declare-fun tp!696414 () Bool)

(declare-fun tp!696416 () Bool)

(declare-fun b!2227092 () Bool)

(assert (=> b!2227092 (= e!1423302 (and tp!696416 (inv!35529 (_2!15143 (_1!15144 (h!31569 (zeroValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))))) e!1423300 tp_is_empty!10015 setRes!19910 tp!696414))))

(declare-fun condSetEmpty!19910 () Bool)

(assert (=> b!2227092 (= condSetEmpty!19910 (= (_2!15144 (h!31569 (zeroValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))) ((as const (Array Context!3886 Bool)) false)))))

(declare-fun b!2227093 () Bool)

(declare-fun tp!696415 () Bool)

(assert (=> b!2227093 (= e!1423300 tp!696415)))

(declare-fun setElem!19910 () Context!3886)

(declare-fun tp!696418 () Bool)

(declare-fun setNonEmpty!19910 () Bool)

(assert (=> setNonEmpty!19910 (= setRes!19910 (and tp!696418 (inv!35529 setElem!19910) e!1423301))))

(declare-fun setRest!19910 () (InoxSet Context!3886))

(assert (=> setNonEmpty!19910 (= (_2!15144 (h!31569 (zeroValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3886 Bool)) false) setElem!19910 true) setRest!19910))))

(assert (= b!2227092 b!2227093))

(assert (= (and b!2227092 condSetEmpty!19910) setIsEmpty!19910))

(assert (= (and b!2227092 (not condSetEmpty!19910)) setNonEmpty!19910))

(assert (= setNonEmpty!19910 b!2227091))

(assert (= (and b!2227026 ((_ is Cons!26168) (zeroValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))) b!2227092))

(declare-fun m!2665902 () Bool)

(assert (=> b!2227092 m!2665902))

(declare-fun m!2665904 () Bool)

(assert (=> setNonEmpty!19910 m!2665904))

(declare-fun b!2227094 () Bool)

(declare-fun e!1423304 () Bool)

(declare-fun tp!696422 () Bool)

(assert (=> b!2227094 (= e!1423304 tp!696422)))

(declare-fun e!1423305 () Bool)

(assert (=> b!2227026 (= tp!696397 e!1423305)))

(declare-fun setIsEmpty!19911 () Bool)

(declare-fun setRes!19911 () Bool)

(assert (=> setIsEmpty!19911 setRes!19911))

(declare-fun tp!696419 () Bool)

(declare-fun e!1423303 () Bool)

(declare-fun b!2227095 () Bool)

(declare-fun tp!696421 () Bool)

(assert (=> b!2227095 (= e!1423305 (and tp!696421 (inv!35529 (_2!15143 (_1!15144 (h!31569 (minValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))))) e!1423303 tp_is_empty!10015 setRes!19911 tp!696419))))

(declare-fun condSetEmpty!19911 () Bool)

(assert (=> b!2227095 (= condSetEmpty!19911 (= (_2!15144 (h!31569 (minValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))) ((as const (Array Context!3886 Bool)) false)))))

(declare-fun b!2227096 () Bool)

(declare-fun tp!696420 () Bool)

(assert (=> b!2227096 (= e!1423303 tp!696420)))

(declare-fun tp!696423 () Bool)

(declare-fun setNonEmpty!19911 () Bool)

(declare-fun setElem!19911 () Context!3886)

(assert (=> setNonEmpty!19911 (= setRes!19911 (and tp!696423 (inv!35529 setElem!19911) e!1423304))))

(declare-fun setRest!19911 () (InoxSet Context!3886))

(assert (=> setNonEmpty!19911 (= (_2!15144 (h!31569 (minValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3886 Bool)) false) setElem!19911 true) setRest!19911))))

(assert (= b!2227095 b!2227096))

(assert (= (and b!2227095 condSetEmpty!19911) setIsEmpty!19911))

(assert (= (and b!2227095 (not condSetEmpty!19911)) setNonEmpty!19911))

(assert (= setNonEmpty!19911 b!2227094))

(assert (= (and b!2227026 ((_ is Cons!26168) (minValue!3291 (v!29740 (underlying!6267 (v!29741 (underlying!6268 (cache!3324 cacheDown!839)))))))) b!2227095))

(declare-fun m!2665906 () Bool)

(assert (=> b!2227095 m!2665906))

(declare-fun m!2665908 () Bool)

(assert (=> setNonEmpty!19911 m!2665908))

(declare-fun b!2227097 () Bool)

(declare-fun e!1423307 () Bool)

(declare-fun tp!696427 () Bool)

(assert (=> b!2227097 (= e!1423307 tp!696427)))

(declare-fun e!1423308 () Bool)

(assert (=> b!2227021 (= tp!696394 e!1423308)))

(declare-fun setIsEmpty!19912 () Bool)

(declare-fun setRes!19912 () Bool)

(assert (=> setIsEmpty!19912 setRes!19912))

(declare-fun tp!696424 () Bool)

(declare-fun b!2227098 () Bool)

(declare-fun tp!696426 () Bool)

(declare-fun e!1423306 () Bool)

(assert (=> b!2227098 (= e!1423308 (and tp!696426 (inv!35529 (_2!15143 (_1!15144 (h!31569 mapDefault!14289)))) e!1423306 tp_is_empty!10015 setRes!19912 tp!696424))))

(declare-fun condSetEmpty!19912 () Bool)

(assert (=> b!2227098 (= condSetEmpty!19912 (= (_2!15144 (h!31569 mapDefault!14289)) ((as const (Array Context!3886 Bool)) false)))))

(declare-fun b!2227099 () Bool)

(declare-fun tp!696425 () Bool)

(assert (=> b!2227099 (= e!1423306 tp!696425)))

(declare-fun setNonEmpty!19912 () Bool)

(declare-fun setElem!19912 () Context!3886)

(declare-fun tp!696428 () Bool)

(assert (=> setNonEmpty!19912 (= setRes!19912 (and tp!696428 (inv!35529 setElem!19912) e!1423307))))

(declare-fun setRest!19912 () (InoxSet Context!3886))

(assert (=> setNonEmpty!19912 (= (_2!15144 (h!31569 mapDefault!14289)) ((_ map or) (store ((as const (Array Context!3886 Bool)) false) setElem!19912 true) setRest!19912))))

(assert (= b!2227098 b!2227099))

(assert (= (and b!2227098 condSetEmpty!19912) setIsEmpty!19912))

(assert (= (and b!2227098 (not condSetEmpty!19912)) setNonEmpty!19912))

(assert (= setNonEmpty!19912 b!2227097))

(assert (= (and b!2227021 ((_ is Cons!26168) mapDefault!14289)) b!2227098))

(declare-fun m!2665910 () Bool)

(assert (=> b!2227098 m!2665910))

(declare-fun m!2665912 () Bool)

(assert (=> setNonEmpty!19912 m!2665912))

(declare-fun mapNonEmpty!14292 () Bool)

(declare-fun mapRes!14292 () Bool)

(declare-fun tp!696453 () Bool)

(declare-fun e!1423326 () Bool)

(assert (=> mapNonEmpty!14292 (= mapRes!14292 (and tp!696453 e!1423326))))

(declare-fun mapValue!14292 () List!26262)

(declare-fun mapKey!14292 () (_ BitVec 32))

(declare-fun mapRest!14292 () (Array (_ BitVec 32) List!26262))

(assert (=> mapNonEmpty!14292 (= mapRest!14289 (store mapRest!14292 mapKey!14292 mapValue!14292))))

(declare-fun setIsEmpty!19917 () Bool)

(declare-fun setRes!19918 () Bool)

(assert (=> setIsEmpty!19917 setRes!19918))

(declare-fun condMapEmpty!14292 () Bool)

(declare-fun mapDefault!14292 () List!26262)

(assert (=> mapNonEmpty!14289 (= condMapEmpty!14292 (= mapRest!14289 ((as const (Array (_ BitVec 32) List!26262)) mapDefault!14292)))))

(declare-fun e!1423323 () Bool)

(assert (=> mapNonEmpty!14289 (= tp!696385 (and e!1423323 mapRes!14292))))

(declare-fun tp!696460 () Bool)

(declare-fun setRes!19917 () Bool)

(declare-fun e!1423324 () Bool)

(declare-fun b!2227114 () Bool)

(declare-fun tp!696459 () Bool)

(assert (=> b!2227114 (= e!1423326 (and tp!696460 (inv!35529 (_2!15143 (_1!15144 (h!31569 mapValue!14292)))) e!1423324 tp_is_empty!10015 setRes!19917 tp!696459))))

(declare-fun condSetEmpty!19918 () Bool)

(assert (=> b!2227114 (= condSetEmpty!19918 (= (_2!15144 (h!31569 mapValue!14292)) ((as const (Array Context!3886 Bool)) false)))))

(declare-fun mapIsEmpty!14292 () Bool)

(assert (=> mapIsEmpty!14292 mapRes!14292))

(declare-fun b!2227115 () Bool)

(declare-fun e!1423322 () Bool)

(declare-fun tp!696461 () Bool)

(assert (=> b!2227115 (= e!1423322 tp!696461)))

(declare-fun b!2227116 () Bool)

(declare-fun e!1423325 () Bool)

(declare-fun tp!696457 () Bool)

(assert (=> b!2227116 (= e!1423325 tp!696457)))

(declare-fun setIsEmpty!19918 () Bool)

(assert (=> setIsEmpty!19918 setRes!19917))

(declare-fun b!2227117 () Bool)

(declare-fun e!1423321 () Bool)

(declare-fun tp!696456 () Bool)

(assert (=> b!2227117 (= e!1423321 tp!696456)))

(declare-fun setNonEmpty!19917 () Bool)

(declare-fun tp!696451 () Bool)

(declare-fun setElem!19918 () Context!3886)

(assert (=> setNonEmpty!19917 (= setRes!19918 (and tp!696451 (inv!35529 setElem!19918) e!1423325))))

(declare-fun setRest!19918 () (InoxSet Context!3886))

(assert (=> setNonEmpty!19917 (= (_2!15144 (h!31569 mapDefault!14292)) ((_ map or) (store ((as const (Array Context!3886 Bool)) false) setElem!19918 true) setRest!19918))))

(declare-fun b!2227118 () Bool)

(declare-fun tp!696452 () Bool)

(declare-fun tp!696455 () Bool)

(assert (=> b!2227118 (= e!1423323 (and tp!696452 (inv!35529 (_2!15143 (_1!15144 (h!31569 mapDefault!14292)))) e!1423321 tp_is_empty!10015 setRes!19918 tp!696455))))

(declare-fun condSetEmpty!19917 () Bool)

(assert (=> b!2227118 (= condSetEmpty!19917 (= (_2!15144 (h!31569 mapDefault!14292)) ((as const (Array Context!3886 Bool)) false)))))

(declare-fun setElem!19917 () Context!3886)

(declare-fun tp!696454 () Bool)

(declare-fun setNonEmpty!19918 () Bool)

(assert (=> setNonEmpty!19918 (= setRes!19917 (and tp!696454 (inv!35529 setElem!19917) e!1423322))))

(declare-fun setRest!19917 () (InoxSet Context!3886))

(assert (=> setNonEmpty!19918 (= (_2!15144 (h!31569 mapValue!14292)) ((_ map or) (store ((as const (Array Context!3886 Bool)) false) setElem!19917 true) setRest!19917))))

(declare-fun b!2227119 () Bool)

(declare-fun tp!696458 () Bool)

(assert (=> b!2227119 (= e!1423324 tp!696458)))

(assert (= (and mapNonEmpty!14289 condMapEmpty!14292) mapIsEmpty!14292))

(assert (= (and mapNonEmpty!14289 (not condMapEmpty!14292)) mapNonEmpty!14292))

(assert (= b!2227114 b!2227119))

(assert (= (and b!2227114 condSetEmpty!19918) setIsEmpty!19918))

(assert (= (and b!2227114 (not condSetEmpty!19918)) setNonEmpty!19918))

(assert (= setNonEmpty!19918 b!2227115))

(assert (= (and mapNonEmpty!14292 ((_ is Cons!26168) mapValue!14292)) b!2227114))

(assert (= b!2227118 b!2227117))

(assert (= (and b!2227118 condSetEmpty!19917) setIsEmpty!19917))

(assert (= (and b!2227118 (not condSetEmpty!19917)) setNonEmpty!19917))

(assert (= setNonEmpty!19917 b!2227116))

(assert (= (and mapNonEmpty!14289 ((_ is Cons!26168) mapDefault!14292)) b!2227118))

(declare-fun m!2665914 () Bool)

(assert (=> setNonEmpty!19917 m!2665914))

(declare-fun m!2665916 () Bool)

(assert (=> b!2227118 m!2665916))

(declare-fun m!2665918 () Bool)

(assert (=> mapNonEmpty!14292 m!2665918))

(declare-fun m!2665920 () Bool)

(assert (=> setNonEmpty!19918 m!2665920))

(declare-fun m!2665922 () Bool)

(assert (=> b!2227114 m!2665922))

(declare-fun b!2227120 () Bool)

(declare-fun e!1423328 () Bool)

(declare-fun tp!696465 () Bool)

(assert (=> b!2227120 (= e!1423328 tp!696465)))

(declare-fun e!1423329 () Bool)

(assert (=> mapNonEmpty!14289 (= tp!696390 e!1423329)))

(declare-fun setIsEmpty!19919 () Bool)

(declare-fun setRes!19919 () Bool)

(assert (=> setIsEmpty!19919 setRes!19919))

(declare-fun b!2227121 () Bool)

(declare-fun tp!696462 () Bool)

(declare-fun e!1423327 () Bool)

(declare-fun tp!696464 () Bool)

(assert (=> b!2227121 (= e!1423329 (and tp!696464 (inv!35529 (_2!15143 (_1!15144 (h!31569 mapValue!14289)))) e!1423327 tp_is_empty!10015 setRes!19919 tp!696462))))

(declare-fun condSetEmpty!19919 () Bool)

(assert (=> b!2227121 (= condSetEmpty!19919 (= (_2!15144 (h!31569 mapValue!14289)) ((as const (Array Context!3886 Bool)) false)))))

(declare-fun b!2227122 () Bool)

(declare-fun tp!696463 () Bool)

(assert (=> b!2227122 (= e!1423327 tp!696463)))

(declare-fun setNonEmpty!19919 () Bool)

(declare-fun tp!696466 () Bool)

(declare-fun setElem!19919 () Context!3886)

(assert (=> setNonEmpty!19919 (= setRes!19919 (and tp!696466 (inv!35529 setElem!19919) e!1423328))))

(declare-fun setRest!19919 () (InoxSet Context!3886))

(assert (=> setNonEmpty!19919 (= (_2!15144 (h!31569 mapValue!14289)) ((_ map or) (store ((as const (Array Context!3886 Bool)) false) setElem!19919 true) setRest!19919))))

(assert (= b!2227121 b!2227122))

(assert (= (and b!2227121 condSetEmpty!19919) setIsEmpty!19919))

(assert (= (and b!2227121 (not condSetEmpty!19919)) setNonEmpty!19919))

(assert (= setNonEmpty!19919 b!2227120))

(assert (= (and mapNonEmpty!14289 ((_ is Cons!26168) mapValue!14289)) b!2227121))

(declare-fun m!2665924 () Bool)

(assert (=> b!2227121 m!2665924))

(declare-fun m!2665926 () Bool)

(assert (=> setNonEmpty!19919 m!2665926))

(declare-fun b!2227134 () Bool)

(declare-fun e!1423332 () Bool)

(declare-fun tp!696481 () Bool)

(declare-fun tp!696478 () Bool)

(assert (=> b!2227134 (= e!1423332 (and tp!696481 tp!696478))))

(assert (=> b!2227024 (= tp!696396 e!1423332)))

(declare-fun b!2227136 () Bool)

(declare-fun tp!696480 () Bool)

(declare-fun tp!696479 () Bool)

(assert (=> b!2227136 (= e!1423332 (and tp!696480 tp!696479))))

(declare-fun b!2227135 () Bool)

(declare-fun tp!696477 () Bool)

(assert (=> b!2227135 (= e!1423332 tp!696477)))

(declare-fun b!2227133 () Bool)

(assert (=> b!2227133 (= e!1423332 tp_is_empty!10015)))

(assert (= (and b!2227024 ((_ is ElementMatch!6395) (regOne!13302 expr!64))) b!2227133))

(assert (= (and b!2227024 ((_ is Concat!10733) (regOne!13302 expr!64))) b!2227134))

(assert (= (and b!2227024 ((_ is Star!6395) (regOne!13302 expr!64))) b!2227135))

(assert (= (and b!2227024 ((_ is Union!6395) (regOne!13302 expr!64))) b!2227136))

(declare-fun b!2227138 () Bool)

(declare-fun e!1423333 () Bool)

(declare-fun tp!696486 () Bool)

(declare-fun tp!696483 () Bool)

(assert (=> b!2227138 (= e!1423333 (and tp!696486 tp!696483))))

(assert (=> b!2227024 (= tp!696395 e!1423333)))

(declare-fun b!2227140 () Bool)

(declare-fun tp!696485 () Bool)

(declare-fun tp!696484 () Bool)

(assert (=> b!2227140 (= e!1423333 (and tp!696485 tp!696484))))

(declare-fun b!2227139 () Bool)

(declare-fun tp!696482 () Bool)

(assert (=> b!2227139 (= e!1423333 tp!696482)))

(declare-fun b!2227137 () Bool)

(assert (=> b!2227137 (= e!1423333 tp_is_empty!10015)))

(assert (= (and b!2227024 ((_ is ElementMatch!6395) (regTwo!13302 expr!64))) b!2227137))

(assert (= (and b!2227024 ((_ is Concat!10733) (regTwo!13302 expr!64))) b!2227138))

(assert (= (and b!2227024 ((_ is Star!6395) (regTwo!13302 expr!64))) b!2227139))

(assert (= (and b!2227024 ((_ is Union!6395) (regTwo!13302 expr!64))) b!2227140))

(declare-fun b!2227142 () Bool)

(declare-fun e!1423334 () Bool)

(declare-fun tp!696491 () Bool)

(declare-fun tp!696488 () Bool)

(assert (=> b!2227142 (= e!1423334 (and tp!696491 tp!696488))))

(assert (=> b!2227034 (= tp!696389 e!1423334)))

(declare-fun b!2227144 () Bool)

(declare-fun tp!696490 () Bool)

(declare-fun tp!696489 () Bool)

(assert (=> b!2227144 (= e!1423334 (and tp!696490 tp!696489))))

(declare-fun b!2227143 () Bool)

(declare-fun tp!696487 () Bool)

(assert (=> b!2227143 (= e!1423334 tp!696487)))

(declare-fun b!2227141 () Bool)

(assert (=> b!2227141 (= e!1423334 tp_is_empty!10015)))

(assert (= (and b!2227034 ((_ is ElementMatch!6395) (regOne!13303 expr!64))) b!2227141))

(assert (= (and b!2227034 ((_ is Concat!10733) (regOne!13303 expr!64))) b!2227142))

(assert (= (and b!2227034 ((_ is Star!6395) (regOne!13303 expr!64))) b!2227143))

(assert (= (and b!2227034 ((_ is Union!6395) (regOne!13303 expr!64))) b!2227144))

(declare-fun b!2227146 () Bool)

(declare-fun e!1423335 () Bool)

(declare-fun tp!696496 () Bool)

(declare-fun tp!696493 () Bool)

(assert (=> b!2227146 (= e!1423335 (and tp!696496 tp!696493))))

(assert (=> b!2227034 (= tp!696393 e!1423335)))

(declare-fun b!2227148 () Bool)

(declare-fun tp!696495 () Bool)

(declare-fun tp!696494 () Bool)

(assert (=> b!2227148 (= e!1423335 (and tp!696495 tp!696494))))

(declare-fun b!2227147 () Bool)

(declare-fun tp!696492 () Bool)

(assert (=> b!2227147 (= e!1423335 tp!696492)))

(declare-fun b!2227145 () Bool)

(assert (=> b!2227145 (= e!1423335 tp_is_empty!10015)))

(assert (= (and b!2227034 ((_ is ElementMatch!6395) (regTwo!13303 expr!64))) b!2227145))

(assert (= (and b!2227034 ((_ is Concat!10733) (regTwo!13303 expr!64))) b!2227146))

(assert (= (and b!2227034 ((_ is Star!6395) (regTwo!13303 expr!64))) b!2227147))

(assert (= (and b!2227034 ((_ is Union!6395) (regTwo!13303 expr!64))) b!2227148))

(declare-fun b!2227150 () Bool)

(declare-fun e!1423336 () Bool)

(declare-fun tp!696501 () Bool)

(declare-fun tp!696498 () Bool)

(assert (=> b!2227150 (= e!1423336 (and tp!696501 tp!696498))))

(assert (=> b!2227028 (= tp!696387 e!1423336)))

(declare-fun b!2227152 () Bool)

(declare-fun tp!696500 () Bool)

(declare-fun tp!696499 () Bool)

(assert (=> b!2227152 (= e!1423336 (and tp!696500 tp!696499))))

(declare-fun b!2227151 () Bool)

(declare-fun tp!696497 () Bool)

(assert (=> b!2227151 (= e!1423336 tp!696497)))

(declare-fun b!2227149 () Bool)

(assert (=> b!2227149 (= e!1423336 tp_is_empty!10015)))

(assert (= (and b!2227028 ((_ is ElementMatch!6395) (reg!6724 expr!64))) b!2227149))

(assert (= (and b!2227028 ((_ is Concat!10733) (reg!6724 expr!64))) b!2227150))

(assert (= (and b!2227028 ((_ is Star!6395) (reg!6724 expr!64))) b!2227151))

(assert (= (and b!2227028 ((_ is Union!6395) (reg!6724 expr!64))) b!2227152))

(check-sat (not b!2227097) tp_is_empty!10015 (not bm!133351) (not b!2227146) (not b!2227098) b_and!174581 b_and!174583 (not setNonEmpty!19911) (not b!2227150) (not b!2227148) (not d!664627) (not b!2227118) (not b!2227136) (not b!2227117) (not setNonEmpty!19910) (not b!2227059) (not bm!133348) (not mapNonEmpty!14292) (not b_next!65299) (not b!2227094) (not b!2227152) (not b!2227068) (not b!2227096) (not b!2227082) (not b!2227151) (not setNonEmpty!19918) (not setNonEmpty!19919) (not setNonEmpty!19917) (not bm!133347) (not b!2227142) (not b!2227119) (not b!2227139) (not b!2227140) (not b!2227138) (not d!664637) (not b!2227071) (not b!2227135) (not b!2227095) (not setNonEmpty!19912) (not b!2227116) (not b!2227099) (not b!2227093) (not b!2227147) (not b!2227092) (not b!2227114) (not d!664641) (not b!2227115) (not b!2227121) (not b!2227143) (not b_next!65297) (not b!2227120) (not b!2227122) (not b!2227144) (not b!2227038) (not b!2227134) (not bm!133350) (not b!2227091))
(check-sat b_and!174581 b_and!174583 (not b_next!65299) (not b_next!65297))
