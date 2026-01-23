; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217222 () Bool)

(assert start!217222)

(declare-fun b!2225981 () Bool)

(declare-fun b_free!64553 () Bool)

(declare-fun b_next!65257 () Bool)

(assert (=> b!2225981 (= b_free!64553 (not b_next!65257))))

(declare-fun tp!695588 () Bool)

(declare-fun b_and!174541 () Bool)

(assert (=> b!2225981 (= tp!695588 b_and!174541)))

(declare-fun b!2225991 () Bool)

(declare-fun b_free!64555 () Bool)

(declare-fun b_next!65259 () Bool)

(assert (=> b!2225991 (= b_free!64555 (not b_next!65259))))

(declare-fun tp!695586 () Bool)

(declare-fun b_and!174543 () Bool)

(assert (=> b!2225991 (= tp!695586 b_and!174543)))

(declare-fun mapIsEmpty!14247 () Bool)

(declare-fun mapRes!14247 () Bool)

(assert (=> mapIsEmpty!14247 mapRes!14247))

(declare-fun b!2225980 () Bool)

(declare-fun e!1422550 () Bool)

(declare-fun tp_is_empty!9995 () Bool)

(assert (=> b!2225980 (= e!1422550 tp_is_empty!9995)))

(declare-fun tp!695585 () Bool)

(declare-datatypes ((C!12916 0))(
  ( (C!12917 (val!7506 Int)) )
))
(declare-datatypes ((Regex!6385 0))(
  ( (ElementMatch!6385 (c!355265 C!12916)) (Concat!10723 (regOne!13282 Regex!6385) (regTwo!13282 Regex!6385)) (EmptyExpr!6385) (Star!6385 (reg!6714 Regex!6385)) (EmptyLang!6385) (Union!6385 (regOne!13283 Regex!6385) (regTwo!13283 Regex!6385)) )
))
(declare-datatypes ((List!26241 0))(
  ( (Nil!26147) (Cons!26147 (h!31548 Regex!6385) (t!199653 List!26241)) )
))
(declare-datatypes ((Context!3866 0))(
  ( (Context!3867 (exprs!2433 List!26241)) )
))
(declare-datatypes ((array!10414 0))(
  ( (array!10415 (arr!4633 (Array (_ BitVec 32) (_ BitVec 64))) (size!20414 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3842 0))(
  ( (tuple3!3843 (_1!15119 Regex!6385) (_2!15119 Context!3866) (_3!2391 C!12916)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25456 0))(
  ( (tuple2!25457 (_1!15120 tuple3!3842) (_2!15120 (InoxSet Context!3866))) )
))
(declare-datatypes ((List!26242 0))(
  ( (Nil!26148) (Cons!26148 (h!31549 tuple2!25456) (t!199654 List!26242)) )
))
(declare-datatypes ((array!10416 0))(
  ( (array!10417 (arr!4634 (Array (_ BitVec 32) List!26242)) (size!20415 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6046 0))(
  ( (LongMapFixedSize!6047 (defaultEntry!3388 Int) (mask!7569 (_ BitVec 32)) (extraKeys!3271 (_ BitVec 32)) (zeroValue!3281 List!26242) (minValue!3281 List!26242) (_size!6093 (_ BitVec 32)) (_keys!3320 array!10414) (_values!3303 array!10416) (_vacant!3084 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11909 0))(
  ( (Cell!11910 (v!29715 LongMapFixedSize!6046)) )
))
(declare-datatypes ((MutLongMap!3023 0))(
  ( (LongMap!3023 (underlying!6247 Cell!11909)) (MutLongMapExt!3022 (__x!17295 Int)) )
))
(declare-datatypes ((Cell!11911 0))(
  ( (Cell!11912 (v!29716 MutLongMap!3023)) )
))
(declare-datatypes ((Hashable!2933 0))(
  ( (HashableExt!2932 (__x!17296 Int)) )
))
(declare-datatypes ((MutableMap!2933 0))(
  ( (MutableMapExt!2932 (__x!17297 Int)) (HashMap!2933 (underlying!6248 Cell!11911) (hashF!4856 Hashable!2933) (_size!6094 (_ BitVec 32)) (defaultValue!3095 Int)) )
))
(declare-datatypes ((CacheDown!1912 0))(
  ( (CacheDown!1913 (cache!3314 MutableMap!2933)) )
))
(declare-fun cacheDown!839 () CacheDown!1912)

(declare-fun e!1422553 () Bool)

(declare-fun e!1422557 () Bool)

(declare-fun tp!695589 () Bool)

(declare-fun array_inv!3327 (array!10414) Bool)

(declare-fun array_inv!3328 (array!10416) Bool)

(assert (=> b!2225981 (= e!1422553 (and tp!695588 tp!695589 tp!695585 (array_inv!3327 (_keys!3320 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) (array_inv!3328 (_values!3303 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) e!1422557))))

(declare-fun b!2225982 () Bool)

(declare-fun e!1422559 () Bool)

(assert (=> b!2225982 (= e!1422559 e!1422553)))

(declare-fun b!2225983 () Bool)

(declare-fun tp!695580 () Bool)

(assert (=> b!2225983 (= e!1422550 tp!695580)))

(declare-fun b!2225984 () Bool)

(declare-fun e!1422551 () Bool)

(declare-fun tp!695591 () Bool)

(assert (=> b!2225984 (= e!1422551 tp!695591)))

(declare-fun b!2225985 () Bool)

(declare-fun tp!695590 () Bool)

(declare-fun tp!695582 () Bool)

(assert (=> b!2225985 (= e!1422550 (and tp!695590 tp!695582))))

(declare-fun b!2225986 () Bool)

(declare-fun res!954503 () Bool)

(declare-fun e!1422554 () Bool)

(assert (=> b!2225986 (=> (not res!954503) (not e!1422554))))

(declare-fun context!86 () Context!3866)

(declare-fun expr!64 () Regex!6385)

(declare-fun a!1167 () C!12916)

(get-info :version)

(declare-datatypes ((Option!5080 0))(
  ( (None!5079) (Some!5079 (v!29717 (InoxSet Context!3866))) )
))
(declare-fun get!7860 (CacheDown!1912 Regex!6385 Context!3866 C!12916) Option!5080)

(assert (=> b!2225986 (= res!954503 (not ((_ is Some!5079) (get!7860 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2225987 () Bool)

(declare-fun e!1422556 () Bool)

(declare-fun e!1422549 () Bool)

(assert (=> b!2225987 (= e!1422556 e!1422549)))

(declare-fun b!2225988 () Bool)

(declare-fun validRegex!2366 (Regex!6385) Bool)

(assert (=> b!2225988 (= e!1422554 (not (validRegex!2366 (regOne!13283 expr!64))))))

(declare-fun b!2225989 () Bool)

(declare-fun tp!695583 () Bool)

(assert (=> b!2225989 (= e!1422557 (and tp!695583 mapRes!14247))))

(declare-fun condMapEmpty!14247 () Bool)

(declare-fun mapDefault!14247 () List!26242)

(assert (=> b!2225989 (= condMapEmpty!14247 (= (arr!4634 (_values!3303 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26242)) mapDefault!14247)))))

(declare-fun b!2225990 () Bool)

(declare-fun e!1422558 () Bool)

(declare-fun e!1422555 () Bool)

(declare-fun lt!830066 () MutLongMap!3023)

(assert (=> b!2225990 (= e!1422558 (and e!1422555 ((_ is LongMap!3023) lt!830066)))))

(assert (=> b!2225990 (= lt!830066 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))

(declare-fun mapNonEmpty!14247 () Bool)

(declare-fun tp!695581 () Bool)

(declare-fun tp!695579 () Bool)

(assert (=> mapNonEmpty!14247 (= mapRes!14247 (and tp!695581 tp!695579))))

(declare-fun mapRest!14247 () (Array (_ BitVec 32) List!26242))

(declare-fun mapValue!14247 () List!26242)

(declare-fun mapKey!14247 () (_ BitVec 32))

(assert (=> mapNonEmpty!14247 (= (arr!4634 (_values!3303 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) (store mapRest!14247 mapKey!14247 mapValue!14247))))

(assert (=> b!2225991 (= e!1422549 (and e!1422558 tp!695586))))

(declare-fun res!954502 () Bool)

(assert (=> start!217222 (=> (not res!954502) (not e!1422554))))

(assert (=> start!217222 (= res!954502 (validRegex!2366 expr!64))))

(assert (=> start!217222 e!1422554))

(assert (=> start!217222 e!1422550))

(declare-fun inv!35501 (CacheDown!1912) Bool)

(assert (=> start!217222 (and (inv!35501 cacheDown!839) e!1422556)))

(declare-fun inv!35502 (Context!3866) Bool)

(assert (=> start!217222 (and (inv!35502 context!86) e!1422551)))

(assert (=> start!217222 tp_is_empty!9995))

(declare-fun b!2225992 () Bool)

(assert (=> b!2225992 (= e!1422555 e!1422559)))

(declare-fun b!2225993 () Bool)

(declare-fun tp!695587 () Bool)

(declare-fun tp!695584 () Bool)

(assert (=> b!2225993 (= e!1422550 (and tp!695587 tp!695584))))

(declare-fun b!2225994 () Bool)

(declare-fun res!954504 () Bool)

(assert (=> b!2225994 (=> (not res!954504) (not e!1422554))))

(assert (=> b!2225994 (= res!954504 (and (or (not ((_ is ElementMatch!6385) expr!64)) (not (= (c!355265 expr!64) a!1167))) ((_ is Union!6385) expr!64)))))

(assert (= (and start!217222 res!954502) b!2225986))

(assert (= (and b!2225986 res!954503) b!2225994))

(assert (= (and b!2225994 res!954504) b!2225988))

(assert (= (and start!217222 ((_ is ElementMatch!6385) expr!64)) b!2225980))

(assert (= (and start!217222 ((_ is Concat!10723) expr!64)) b!2225985))

(assert (= (and start!217222 ((_ is Star!6385) expr!64)) b!2225983))

(assert (= (and start!217222 ((_ is Union!6385) expr!64)) b!2225993))

(assert (= (and b!2225989 condMapEmpty!14247) mapIsEmpty!14247))

(assert (= (and b!2225989 (not condMapEmpty!14247)) mapNonEmpty!14247))

(assert (= b!2225981 b!2225989))

(assert (= b!2225982 b!2225981))

(assert (= b!2225992 b!2225982))

(assert (= (and b!2225990 ((_ is LongMap!3023) (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))) b!2225992))

(assert (= b!2225991 b!2225990))

(assert (= (and b!2225987 ((_ is HashMap!2933) (cache!3314 cacheDown!839))) b!2225991))

(assert (= start!217222 b!2225987))

(assert (= start!217222 b!2225984))

(declare-fun m!2665430 () Bool)

(assert (=> b!2225988 m!2665430))

(declare-fun m!2665432 () Bool)

(assert (=> mapNonEmpty!14247 m!2665432))

(declare-fun m!2665434 () Bool)

(assert (=> b!2225981 m!2665434))

(declare-fun m!2665436 () Bool)

(assert (=> b!2225981 m!2665436))

(declare-fun m!2665438 () Bool)

(assert (=> start!217222 m!2665438))

(declare-fun m!2665440 () Bool)

(assert (=> start!217222 m!2665440))

(declare-fun m!2665442 () Bool)

(assert (=> start!217222 m!2665442))

(declare-fun m!2665444 () Bool)

(assert (=> b!2225986 m!2665444))

(check-sat (not b!2225993) (not b!2225988) tp_is_empty!9995 (not b!2225986) (not start!217222) b_and!174541 (not b!2225989) (not b!2225981) (not b_next!65257) (not mapNonEmpty!14247) (not b!2225984) (not b_next!65259) (not b!2225985) b_and!174543 (not b!2225983))
(check-sat b_and!174543 b_and!174541 (not b_next!65257) (not b_next!65259))
(get-model)

(declare-fun d!664556 () Bool)

(declare-fun e!1422562 () Bool)

(assert (=> d!664556 e!1422562))

(declare-fun res!954507 () Bool)

(assert (=> d!664556 (=> res!954507 e!1422562)))

(declare-fun lt!830069 () Option!5080)

(declare-fun isEmpty!14882 (Option!5080) Bool)

(assert (=> d!664556 (= res!954507 (isEmpty!14882 lt!830069))))

(declare-fun choose!13112 (CacheDown!1912 Regex!6385 Context!3866 C!12916) Option!5080)

(assert (=> d!664556 (= lt!830069 (choose!13112 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!266 (MutableMap!2933) Bool)

(assert (=> d!664556 (validCacheMapDown!266 (cache!3314 cacheDown!839))))

(assert (=> d!664556 (= (get!7860 cacheDown!839 expr!64 context!86 a!1167) lt!830069)))

(declare-fun b!2225997 () Bool)

(declare-fun get!7861 (Option!5080) (InoxSet Context!3866))

(declare-fun derivationStepZipperDown!32 (Regex!6385 Context!3866 C!12916) (InoxSet Context!3866))

(assert (=> b!2225997 (= e!1422562 (= (get!7861 lt!830069) (derivationStepZipperDown!32 expr!64 context!86 a!1167)))))

(assert (= (and d!664556 (not res!954507)) b!2225997))

(declare-fun m!2665446 () Bool)

(assert (=> d!664556 m!2665446))

(declare-fun m!2665448 () Bool)

(assert (=> d!664556 m!2665448))

(declare-fun m!2665450 () Bool)

(assert (=> d!664556 m!2665450))

(declare-fun m!2665452 () Bool)

(assert (=> b!2225997 m!2665452))

(declare-fun m!2665454 () Bool)

(assert (=> b!2225997 m!2665454))

(assert (=> b!2225986 d!664556))

(declare-fun d!664558 () Bool)

(assert (=> d!664558 (= (array_inv!3327 (_keys!3320 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) (bvsge (size!20414 (_keys!3320 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225981 d!664558))

(declare-fun d!664560 () Bool)

(assert (=> d!664560 (= (array_inv!3328 (_values!3303 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) (bvsge (size!20415 (_values!3303 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2225981 d!664560))

(declare-fun b!2226016 () Bool)

(declare-fun e!1422579 () Bool)

(declare-fun call!133280 () Bool)

(assert (=> b!2226016 (= e!1422579 call!133280)))

(declare-fun b!2226017 () Bool)

(declare-fun e!1422577 () Bool)

(declare-fun e!1422583 () Bool)

(assert (=> b!2226017 (= e!1422577 e!1422583)))

(declare-fun c!355271 () Bool)

(assert (=> b!2226017 (= c!355271 ((_ is Star!6385) expr!64))))

(declare-fun b!2226018 () Bool)

(declare-fun e!1422580 () Bool)

(assert (=> b!2226018 (= e!1422583 e!1422580)))

(declare-fun res!954522 () Bool)

(declare-fun nullable!1742 (Regex!6385) Bool)

(assert (=> b!2226018 (= res!954522 (not (nullable!1742 (reg!6714 expr!64))))))

(assert (=> b!2226018 (=> (not res!954522) (not e!1422580))))

(declare-fun d!664562 () Bool)

(declare-fun res!954519 () Bool)

(assert (=> d!664562 (=> res!954519 e!1422577)))

(assert (=> d!664562 (= res!954519 ((_ is ElementMatch!6385) expr!64))))

(assert (=> d!664562 (= (validRegex!2366 expr!64) e!1422577)))

(declare-fun b!2226019 () Bool)

(declare-fun res!954520 () Bool)

(assert (=> b!2226019 (=> (not res!954520) (not e!1422579))))

(declare-fun call!133279 () Bool)

(assert (=> b!2226019 (= res!954520 call!133279)))

(declare-fun e!1422578 () Bool)

(assert (=> b!2226019 (= e!1422578 e!1422579)))

(declare-fun b!2226020 () Bool)

(declare-fun e!1422581 () Bool)

(assert (=> b!2226020 (= e!1422581 call!133280)))

(declare-fun b!2226021 () Bool)

(declare-fun call!133281 () Bool)

(assert (=> b!2226021 (= e!1422580 call!133281)))

(declare-fun bm!133274 () Bool)

(declare-fun c!355270 () Bool)

(assert (=> bm!133274 (= call!133280 (validRegex!2366 (ite c!355270 (regTwo!13283 expr!64) (regTwo!13282 expr!64))))))

(declare-fun bm!133275 () Bool)

(assert (=> bm!133275 (= call!133281 (validRegex!2366 (ite c!355271 (reg!6714 expr!64) (ite c!355270 (regOne!13283 expr!64) (regOne!13282 expr!64)))))))

(declare-fun b!2226022 () Bool)

(declare-fun e!1422582 () Bool)

(assert (=> b!2226022 (= e!1422582 e!1422581)))

(declare-fun res!954521 () Bool)

(assert (=> b!2226022 (=> (not res!954521) (not e!1422581))))

(assert (=> b!2226022 (= res!954521 call!133279)))

(declare-fun bm!133276 () Bool)

(assert (=> bm!133276 (= call!133279 call!133281)))

(declare-fun b!2226023 () Bool)

(declare-fun res!954518 () Bool)

(assert (=> b!2226023 (=> res!954518 e!1422582)))

(assert (=> b!2226023 (= res!954518 (not ((_ is Concat!10723) expr!64)))))

(assert (=> b!2226023 (= e!1422578 e!1422582)))

(declare-fun b!2226024 () Bool)

(assert (=> b!2226024 (= e!1422583 e!1422578)))

(assert (=> b!2226024 (= c!355270 ((_ is Union!6385) expr!64))))

(assert (= (and d!664562 (not res!954519)) b!2226017))

(assert (= (and b!2226017 c!355271) b!2226018))

(assert (= (and b!2226017 (not c!355271)) b!2226024))

(assert (= (and b!2226018 res!954522) b!2226021))

(assert (= (and b!2226024 c!355270) b!2226019))

(assert (= (and b!2226024 (not c!355270)) b!2226023))

(assert (= (and b!2226019 res!954520) b!2226016))

(assert (= (and b!2226023 (not res!954518)) b!2226022))

(assert (= (and b!2226022 res!954521) b!2226020))

(assert (= (or b!2226016 b!2226020) bm!133274))

(assert (= (or b!2226019 b!2226022) bm!133276))

(assert (= (or b!2226021 bm!133276) bm!133275))

(declare-fun m!2665456 () Bool)

(assert (=> b!2226018 m!2665456))

(declare-fun m!2665458 () Bool)

(assert (=> bm!133274 m!2665458))

(declare-fun m!2665460 () Bool)

(assert (=> bm!133275 m!2665460))

(assert (=> start!217222 d!664562))

(declare-fun d!664564 () Bool)

(declare-fun res!954525 () Bool)

(declare-fun e!1422586 () Bool)

(assert (=> d!664564 (=> (not res!954525) (not e!1422586))))

(assert (=> d!664564 (= res!954525 ((_ is HashMap!2933) (cache!3314 cacheDown!839)))))

(assert (=> d!664564 (= (inv!35501 cacheDown!839) e!1422586)))

(declare-fun b!2226027 () Bool)

(assert (=> b!2226027 (= e!1422586 (validCacheMapDown!266 (cache!3314 cacheDown!839)))))

(assert (= (and d!664564 res!954525) b!2226027))

(assert (=> b!2226027 m!2665450))

(assert (=> start!217222 d!664564))

(declare-fun d!664566 () Bool)

(declare-fun lambda!84196 () Int)

(declare-fun forall!5344 (List!26241 Int) Bool)

(assert (=> d!664566 (= (inv!35502 context!86) (forall!5344 (exprs!2433 context!86) lambda!84196))))

(declare-fun bs!453534 () Bool)

(assert (= bs!453534 d!664566))

(declare-fun m!2665462 () Bool)

(assert (=> bs!453534 m!2665462))

(assert (=> start!217222 d!664566))

(declare-fun b!2226028 () Bool)

(declare-fun e!1422589 () Bool)

(declare-fun call!133283 () Bool)

(assert (=> b!2226028 (= e!1422589 call!133283)))

(declare-fun b!2226029 () Bool)

(declare-fun e!1422587 () Bool)

(declare-fun e!1422593 () Bool)

(assert (=> b!2226029 (= e!1422587 e!1422593)))

(declare-fun c!355273 () Bool)

(assert (=> b!2226029 (= c!355273 ((_ is Star!6385) (regOne!13283 expr!64)))))

(declare-fun b!2226030 () Bool)

(declare-fun e!1422590 () Bool)

(assert (=> b!2226030 (= e!1422593 e!1422590)))

(declare-fun res!954530 () Bool)

(assert (=> b!2226030 (= res!954530 (not (nullable!1742 (reg!6714 (regOne!13283 expr!64)))))))

(assert (=> b!2226030 (=> (not res!954530) (not e!1422590))))

(declare-fun d!664568 () Bool)

(declare-fun res!954527 () Bool)

(assert (=> d!664568 (=> res!954527 e!1422587)))

(assert (=> d!664568 (= res!954527 ((_ is ElementMatch!6385) (regOne!13283 expr!64)))))

(assert (=> d!664568 (= (validRegex!2366 (regOne!13283 expr!64)) e!1422587)))

(declare-fun b!2226031 () Bool)

(declare-fun res!954528 () Bool)

(assert (=> b!2226031 (=> (not res!954528) (not e!1422589))))

(declare-fun call!133282 () Bool)

(assert (=> b!2226031 (= res!954528 call!133282)))

(declare-fun e!1422588 () Bool)

(assert (=> b!2226031 (= e!1422588 e!1422589)))

(declare-fun b!2226032 () Bool)

(declare-fun e!1422591 () Bool)

(assert (=> b!2226032 (= e!1422591 call!133283)))

(declare-fun b!2226033 () Bool)

(declare-fun call!133284 () Bool)

(assert (=> b!2226033 (= e!1422590 call!133284)))

(declare-fun bm!133277 () Bool)

(declare-fun c!355272 () Bool)

(assert (=> bm!133277 (= call!133283 (validRegex!2366 (ite c!355272 (regTwo!13283 (regOne!13283 expr!64)) (regTwo!13282 (regOne!13283 expr!64)))))))

(declare-fun bm!133278 () Bool)

(assert (=> bm!133278 (= call!133284 (validRegex!2366 (ite c!355273 (reg!6714 (regOne!13283 expr!64)) (ite c!355272 (regOne!13283 (regOne!13283 expr!64)) (regOne!13282 (regOne!13283 expr!64))))))))

(declare-fun b!2226034 () Bool)

(declare-fun e!1422592 () Bool)

(assert (=> b!2226034 (= e!1422592 e!1422591)))

(declare-fun res!954529 () Bool)

(assert (=> b!2226034 (=> (not res!954529) (not e!1422591))))

(assert (=> b!2226034 (= res!954529 call!133282)))

(declare-fun bm!133279 () Bool)

(assert (=> bm!133279 (= call!133282 call!133284)))

(declare-fun b!2226035 () Bool)

(declare-fun res!954526 () Bool)

(assert (=> b!2226035 (=> res!954526 e!1422592)))

(assert (=> b!2226035 (= res!954526 (not ((_ is Concat!10723) (regOne!13283 expr!64))))))

(assert (=> b!2226035 (= e!1422588 e!1422592)))

(declare-fun b!2226036 () Bool)

(assert (=> b!2226036 (= e!1422593 e!1422588)))

(assert (=> b!2226036 (= c!355272 ((_ is Union!6385) (regOne!13283 expr!64)))))

(assert (= (and d!664568 (not res!954527)) b!2226029))

(assert (= (and b!2226029 c!355273) b!2226030))

(assert (= (and b!2226029 (not c!355273)) b!2226036))

(assert (= (and b!2226030 res!954530) b!2226033))

(assert (= (and b!2226036 c!355272) b!2226031))

(assert (= (and b!2226036 (not c!355272)) b!2226035))

(assert (= (and b!2226031 res!954528) b!2226028))

(assert (= (and b!2226035 (not res!954526)) b!2226034))

(assert (= (and b!2226034 res!954529) b!2226032))

(assert (= (or b!2226028 b!2226032) bm!133277))

(assert (= (or b!2226031 b!2226034) bm!133279))

(assert (= (or b!2226033 bm!133279) bm!133278))

(declare-fun m!2665464 () Bool)

(assert (=> b!2226030 m!2665464))

(declare-fun m!2665466 () Bool)

(assert (=> bm!133277 m!2665466))

(declare-fun m!2665468 () Bool)

(assert (=> bm!133278 m!2665468))

(assert (=> b!2225988 d!664568))

(declare-fun e!1422600 () Bool)

(assert (=> b!2225981 (= tp!695589 e!1422600)))

(declare-fun setIsEmpty!19862 () Bool)

(declare-fun setRes!19862 () Bool)

(assert (=> setIsEmpty!19862 setRes!19862))

(declare-fun e!1422601 () Bool)

(declare-fun b!2226045 () Bool)

(declare-fun tp!695605 () Bool)

(declare-fun tp!695606 () Bool)

(assert (=> b!2226045 (= e!1422600 (and tp!695605 (inv!35502 (_2!15119 (_1!15120 (h!31549 (zeroValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))))) e!1422601 tp_is_empty!9995 setRes!19862 tp!695606))))

(declare-fun condSetEmpty!19862 () Bool)

(assert (=> b!2226045 (= condSetEmpty!19862 (= (_2!15120 (h!31549 (zeroValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))) ((as const (Array Context!3866 Bool)) false)))))

(declare-fun b!2226046 () Bool)

(declare-fun tp!695603 () Bool)

(assert (=> b!2226046 (= e!1422601 tp!695603)))

(declare-fun b!2226047 () Bool)

(declare-fun e!1422602 () Bool)

(declare-fun tp!695604 () Bool)

(assert (=> b!2226047 (= e!1422602 tp!695604)))

(declare-fun tp!695602 () Bool)

(declare-fun setElem!19862 () Context!3866)

(declare-fun setNonEmpty!19862 () Bool)

(assert (=> setNonEmpty!19862 (= setRes!19862 (and tp!695602 (inv!35502 setElem!19862) e!1422602))))

(declare-fun setRest!19862 () (InoxSet Context!3866))

(assert (=> setNonEmpty!19862 (= (_2!15120 (h!31549 (zeroValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3866 Bool)) false) setElem!19862 true) setRest!19862))))

(assert (= b!2226045 b!2226046))

(assert (= (and b!2226045 condSetEmpty!19862) setIsEmpty!19862))

(assert (= (and b!2226045 (not condSetEmpty!19862)) setNonEmpty!19862))

(assert (= setNonEmpty!19862 b!2226047))

(assert (= (and b!2225981 ((_ is Cons!26148) (zeroValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))) b!2226045))

(declare-fun m!2665470 () Bool)

(assert (=> b!2226045 m!2665470))

(declare-fun m!2665472 () Bool)

(assert (=> setNonEmpty!19862 m!2665472))

(declare-fun e!1422603 () Bool)

(assert (=> b!2225981 (= tp!695585 e!1422603)))

(declare-fun setIsEmpty!19863 () Bool)

(declare-fun setRes!19863 () Bool)

(assert (=> setIsEmpty!19863 setRes!19863))

(declare-fun tp!695611 () Bool)

(declare-fun tp!695610 () Bool)

(declare-fun e!1422604 () Bool)

(declare-fun b!2226048 () Bool)

(assert (=> b!2226048 (= e!1422603 (and tp!695610 (inv!35502 (_2!15119 (_1!15120 (h!31549 (minValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))))) e!1422604 tp_is_empty!9995 setRes!19863 tp!695611))))

(declare-fun condSetEmpty!19863 () Bool)

(assert (=> b!2226048 (= condSetEmpty!19863 (= (_2!15120 (h!31549 (minValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))) ((as const (Array Context!3866 Bool)) false)))))

(declare-fun b!2226049 () Bool)

(declare-fun tp!695608 () Bool)

(assert (=> b!2226049 (= e!1422604 tp!695608)))

(declare-fun b!2226050 () Bool)

(declare-fun e!1422605 () Bool)

(declare-fun tp!695609 () Bool)

(assert (=> b!2226050 (= e!1422605 tp!695609)))

(declare-fun setNonEmpty!19863 () Bool)

(declare-fun tp!695607 () Bool)

(declare-fun setElem!19863 () Context!3866)

(assert (=> setNonEmpty!19863 (= setRes!19863 (and tp!695607 (inv!35502 setElem!19863) e!1422605))))

(declare-fun setRest!19863 () (InoxSet Context!3866))

(assert (=> setNonEmpty!19863 (= (_2!15120 (h!31549 (minValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3866 Bool)) false) setElem!19863 true) setRest!19863))))

(assert (= b!2226048 b!2226049))

(assert (= (and b!2226048 condSetEmpty!19863) setIsEmpty!19863))

(assert (= (and b!2226048 (not condSetEmpty!19863)) setNonEmpty!19863))

(assert (= setNonEmpty!19863 b!2226050))

(assert (= (and b!2225981 ((_ is Cons!26148) (minValue!3281 (v!29715 (underlying!6247 (v!29716 (underlying!6248 (cache!3314 cacheDown!839)))))))) b!2226048))

(declare-fun m!2665474 () Bool)

(assert (=> b!2226048 m!2665474))

(declare-fun m!2665476 () Bool)

(assert (=> setNonEmpty!19863 m!2665476))

(declare-fun b!2226061 () Bool)

(declare-fun e!1422608 () Bool)

(assert (=> b!2226061 (= e!1422608 tp_is_empty!9995)))

(declare-fun b!2226063 () Bool)

(declare-fun tp!695623 () Bool)

(assert (=> b!2226063 (= e!1422608 tp!695623)))

(declare-fun b!2226062 () Bool)

(declare-fun tp!695622 () Bool)

(declare-fun tp!695626 () Bool)

(assert (=> b!2226062 (= e!1422608 (and tp!695622 tp!695626))))

(assert (=> b!2225985 (= tp!695590 e!1422608)))

(declare-fun b!2226064 () Bool)

(declare-fun tp!695624 () Bool)

(declare-fun tp!695625 () Bool)

(assert (=> b!2226064 (= e!1422608 (and tp!695624 tp!695625))))

(assert (= (and b!2225985 ((_ is ElementMatch!6385) (regOne!13282 expr!64))) b!2226061))

(assert (= (and b!2225985 ((_ is Concat!10723) (regOne!13282 expr!64))) b!2226062))

(assert (= (and b!2225985 ((_ is Star!6385) (regOne!13282 expr!64))) b!2226063))

(assert (= (and b!2225985 ((_ is Union!6385) (regOne!13282 expr!64))) b!2226064))

(declare-fun b!2226065 () Bool)

(declare-fun e!1422609 () Bool)

(assert (=> b!2226065 (= e!1422609 tp_is_empty!9995)))

(declare-fun b!2226067 () Bool)

(declare-fun tp!695628 () Bool)

(assert (=> b!2226067 (= e!1422609 tp!695628)))

(declare-fun b!2226066 () Bool)

(declare-fun tp!695627 () Bool)

(declare-fun tp!695631 () Bool)

(assert (=> b!2226066 (= e!1422609 (and tp!695627 tp!695631))))

(assert (=> b!2225985 (= tp!695582 e!1422609)))

(declare-fun b!2226068 () Bool)

(declare-fun tp!695629 () Bool)

(declare-fun tp!695630 () Bool)

(assert (=> b!2226068 (= e!1422609 (and tp!695629 tp!695630))))

(assert (= (and b!2225985 ((_ is ElementMatch!6385) (regTwo!13282 expr!64))) b!2226065))

(assert (= (and b!2225985 ((_ is Concat!10723) (regTwo!13282 expr!64))) b!2226066))

(assert (= (and b!2225985 ((_ is Star!6385) (regTwo!13282 expr!64))) b!2226067))

(assert (= (and b!2225985 ((_ is Union!6385) (regTwo!13282 expr!64))) b!2226068))

(declare-fun b!2226083 () Bool)

(declare-fun e!1422626 () Bool)

(declare-fun tp!695654 () Bool)

(assert (=> b!2226083 (= e!1422626 tp!695654)))

(declare-fun setNonEmpty!19868 () Bool)

(declare-fun setRes!19869 () Bool)

(declare-fun setElem!19869 () Context!3866)

(declare-fun tp!695659 () Bool)

(assert (=> setNonEmpty!19868 (= setRes!19869 (and tp!695659 (inv!35502 setElem!19869) e!1422626))))

(declare-fun mapValue!14250 () List!26242)

(declare-fun setRest!19869 () (InoxSet Context!3866))

(assert (=> setNonEmpty!19868 (= (_2!15120 (h!31549 mapValue!14250)) ((_ map or) (store ((as const (Array Context!3866 Bool)) false) setElem!19869 true) setRest!19869))))

(declare-fun mapNonEmpty!14250 () Bool)

(declare-fun mapRes!14250 () Bool)

(declare-fun tp!695660 () Bool)

(declare-fun e!1422623 () Bool)

(assert (=> mapNonEmpty!14250 (= mapRes!14250 (and tp!695660 e!1422623))))

(declare-fun mapKey!14250 () (_ BitVec 32))

(declare-fun mapRest!14250 () (Array (_ BitVec 32) List!26242))

(assert (=> mapNonEmpty!14250 (= mapRest!14247 (store mapRest!14250 mapKey!14250 mapValue!14250))))

(declare-fun tp!695655 () Bool)

(declare-fun tp!695658 () Bool)

(declare-fun b!2226084 () Bool)

(declare-fun e!1422627 () Bool)

(declare-fun e!1422622 () Bool)

(declare-fun mapDefault!14250 () List!26242)

(declare-fun setRes!19868 () Bool)

(assert (=> b!2226084 (= e!1422627 (and tp!695655 (inv!35502 (_2!15119 (_1!15120 (h!31549 mapDefault!14250)))) e!1422622 tp_is_empty!9995 setRes!19868 tp!695658))))

(declare-fun condSetEmpty!19868 () Bool)

(assert (=> b!2226084 (= condSetEmpty!19868 (= (_2!15120 (h!31549 mapDefault!14250)) ((as const (Array Context!3866 Bool)) false)))))

(declare-fun setIsEmpty!19868 () Bool)

(assert (=> setIsEmpty!19868 setRes!19869))

(declare-fun b!2226085 () Bool)

(declare-fun e!1422624 () Bool)

(declare-fun tp!695664 () Bool)

(assert (=> b!2226085 (= e!1422624 tp!695664)))

(declare-fun condMapEmpty!14250 () Bool)

(assert (=> mapNonEmpty!14247 (= condMapEmpty!14250 (= mapRest!14247 ((as const (Array (_ BitVec 32) List!26242)) mapDefault!14250)))))

(assert (=> mapNonEmpty!14247 (= tp!695581 (and e!1422627 mapRes!14250))))

(declare-fun mapIsEmpty!14250 () Bool)

(assert (=> mapIsEmpty!14250 mapRes!14250))

(declare-fun b!2226086 () Bool)

(declare-fun e!1422625 () Bool)

(declare-fun tp!695663 () Bool)

(assert (=> b!2226086 (= e!1422625 tp!695663)))

(declare-fun setNonEmpty!19869 () Bool)

(declare-fun setElem!19868 () Context!3866)

(declare-fun tp!695657 () Bool)

(assert (=> setNonEmpty!19869 (= setRes!19868 (and tp!695657 (inv!35502 setElem!19868) e!1422625))))

(declare-fun setRest!19868 () (InoxSet Context!3866))

(assert (=> setNonEmpty!19869 (= (_2!15120 (h!31549 mapDefault!14250)) ((_ map or) (store ((as const (Array Context!3866 Bool)) false) setElem!19868 true) setRest!19868))))

(declare-fun tp!695661 () Bool)

(declare-fun tp!695662 () Bool)

(declare-fun b!2226087 () Bool)

(assert (=> b!2226087 (= e!1422623 (and tp!695661 (inv!35502 (_2!15119 (_1!15120 (h!31549 mapValue!14250)))) e!1422624 tp_is_empty!9995 setRes!19869 tp!695662))))

(declare-fun condSetEmpty!19869 () Bool)

(assert (=> b!2226087 (= condSetEmpty!19869 (= (_2!15120 (h!31549 mapValue!14250)) ((as const (Array Context!3866 Bool)) false)))))

(declare-fun b!2226088 () Bool)

(declare-fun tp!695656 () Bool)

(assert (=> b!2226088 (= e!1422622 tp!695656)))

(declare-fun setIsEmpty!19869 () Bool)

(assert (=> setIsEmpty!19869 setRes!19868))

(assert (= (and mapNonEmpty!14247 condMapEmpty!14250) mapIsEmpty!14250))

(assert (= (and mapNonEmpty!14247 (not condMapEmpty!14250)) mapNonEmpty!14250))

(assert (= b!2226087 b!2226085))

(assert (= (and b!2226087 condSetEmpty!19869) setIsEmpty!19868))

(assert (= (and b!2226087 (not condSetEmpty!19869)) setNonEmpty!19868))

(assert (= setNonEmpty!19868 b!2226083))

(assert (= (and mapNonEmpty!14250 ((_ is Cons!26148) mapValue!14250)) b!2226087))

(assert (= b!2226084 b!2226088))

(assert (= (and b!2226084 condSetEmpty!19868) setIsEmpty!19869))

(assert (= (and b!2226084 (not condSetEmpty!19868)) setNonEmpty!19869))

(assert (= setNonEmpty!19869 b!2226086))

(assert (= (and mapNonEmpty!14247 ((_ is Cons!26148) mapDefault!14250)) b!2226084))

(declare-fun m!2665478 () Bool)

(assert (=> setNonEmpty!19868 m!2665478))

(declare-fun m!2665480 () Bool)

(assert (=> b!2226084 m!2665480))

(declare-fun m!2665482 () Bool)

(assert (=> setNonEmpty!19869 m!2665482))

(declare-fun m!2665484 () Bool)

(assert (=> mapNonEmpty!14250 m!2665484))

(declare-fun m!2665486 () Bool)

(assert (=> b!2226087 m!2665486))

(declare-fun e!1422628 () Bool)

(assert (=> mapNonEmpty!14247 (= tp!695579 e!1422628)))

(declare-fun setIsEmpty!19870 () Bool)

(declare-fun setRes!19870 () Bool)

(assert (=> setIsEmpty!19870 setRes!19870))

(declare-fun e!1422629 () Bool)

(declare-fun tp!695668 () Bool)

(declare-fun b!2226089 () Bool)

(declare-fun tp!695669 () Bool)

(assert (=> b!2226089 (= e!1422628 (and tp!695668 (inv!35502 (_2!15119 (_1!15120 (h!31549 mapValue!14247)))) e!1422629 tp_is_empty!9995 setRes!19870 tp!695669))))

(declare-fun condSetEmpty!19870 () Bool)

(assert (=> b!2226089 (= condSetEmpty!19870 (= (_2!15120 (h!31549 mapValue!14247)) ((as const (Array Context!3866 Bool)) false)))))

(declare-fun b!2226090 () Bool)

(declare-fun tp!695666 () Bool)

(assert (=> b!2226090 (= e!1422629 tp!695666)))

(declare-fun b!2226091 () Bool)

(declare-fun e!1422630 () Bool)

(declare-fun tp!695667 () Bool)

(assert (=> b!2226091 (= e!1422630 tp!695667)))

(declare-fun setElem!19870 () Context!3866)

(declare-fun tp!695665 () Bool)

(declare-fun setNonEmpty!19870 () Bool)

(assert (=> setNonEmpty!19870 (= setRes!19870 (and tp!695665 (inv!35502 setElem!19870) e!1422630))))

(declare-fun setRest!19870 () (InoxSet Context!3866))

(assert (=> setNonEmpty!19870 (= (_2!15120 (h!31549 mapValue!14247)) ((_ map or) (store ((as const (Array Context!3866 Bool)) false) setElem!19870 true) setRest!19870))))

(assert (= b!2226089 b!2226090))

(assert (= (and b!2226089 condSetEmpty!19870) setIsEmpty!19870))

(assert (= (and b!2226089 (not condSetEmpty!19870)) setNonEmpty!19870))

(assert (= setNonEmpty!19870 b!2226091))

(assert (= (and mapNonEmpty!14247 ((_ is Cons!26148) mapValue!14247)) b!2226089))

(declare-fun m!2665488 () Bool)

(assert (=> b!2226089 m!2665488))

(declare-fun m!2665490 () Bool)

(assert (=> setNonEmpty!19870 m!2665490))

(declare-fun b!2226092 () Bool)

(declare-fun e!1422631 () Bool)

(assert (=> b!2226092 (= e!1422631 tp_is_empty!9995)))

(declare-fun b!2226094 () Bool)

(declare-fun tp!695671 () Bool)

(assert (=> b!2226094 (= e!1422631 tp!695671)))

(declare-fun b!2226093 () Bool)

(declare-fun tp!695670 () Bool)

(declare-fun tp!695674 () Bool)

(assert (=> b!2226093 (= e!1422631 (and tp!695670 tp!695674))))

(assert (=> b!2225993 (= tp!695587 e!1422631)))

(declare-fun b!2226095 () Bool)

(declare-fun tp!695672 () Bool)

(declare-fun tp!695673 () Bool)

(assert (=> b!2226095 (= e!1422631 (and tp!695672 tp!695673))))

(assert (= (and b!2225993 ((_ is ElementMatch!6385) (regOne!13283 expr!64))) b!2226092))

(assert (= (and b!2225993 ((_ is Concat!10723) (regOne!13283 expr!64))) b!2226093))

(assert (= (and b!2225993 ((_ is Star!6385) (regOne!13283 expr!64))) b!2226094))

(assert (= (and b!2225993 ((_ is Union!6385) (regOne!13283 expr!64))) b!2226095))

(declare-fun b!2226096 () Bool)

(declare-fun e!1422632 () Bool)

(assert (=> b!2226096 (= e!1422632 tp_is_empty!9995)))

(declare-fun b!2226098 () Bool)

(declare-fun tp!695676 () Bool)

(assert (=> b!2226098 (= e!1422632 tp!695676)))

(declare-fun b!2226097 () Bool)

(declare-fun tp!695675 () Bool)

(declare-fun tp!695679 () Bool)

(assert (=> b!2226097 (= e!1422632 (and tp!695675 tp!695679))))

(assert (=> b!2225993 (= tp!695584 e!1422632)))

(declare-fun b!2226099 () Bool)

(declare-fun tp!695677 () Bool)

(declare-fun tp!695678 () Bool)

(assert (=> b!2226099 (= e!1422632 (and tp!695677 tp!695678))))

(assert (= (and b!2225993 ((_ is ElementMatch!6385) (regTwo!13283 expr!64))) b!2226096))

(assert (= (and b!2225993 ((_ is Concat!10723) (regTwo!13283 expr!64))) b!2226097))

(assert (= (and b!2225993 ((_ is Star!6385) (regTwo!13283 expr!64))) b!2226098))

(assert (= (and b!2225993 ((_ is Union!6385) (regTwo!13283 expr!64))) b!2226099))

(declare-fun e!1422633 () Bool)

(assert (=> b!2225989 (= tp!695583 e!1422633)))

(declare-fun setIsEmpty!19871 () Bool)

(declare-fun setRes!19871 () Bool)

(assert (=> setIsEmpty!19871 setRes!19871))

(declare-fun b!2226100 () Bool)

(declare-fun e!1422634 () Bool)

(declare-fun tp!695684 () Bool)

(declare-fun tp!695683 () Bool)

(assert (=> b!2226100 (= e!1422633 (and tp!695683 (inv!35502 (_2!15119 (_1!15120 (h!31549 mapDefault!14247)))) e!1422634 tp_is_empty!9995 setRes!19871 tp!695684))))

(declare-fun condSetEmpty!19871 () Bool)

(assert (=> b!2226100 (= condSetEmpty!19871 (= (_2!15120 (h!31549 mapDefault!14247)) ((as const (Array Context!3866 Bool)) false)))))

(declare-fun b!2226101 () Bool)

(declare-fun tp!695681 () Bool)

(assert (=> b!2226101 (= e!1422634 tp!695681)))

(declare-fun b!2226102 () Bool)

(declare-fun e!1422635 () Bool)

(declare-fun tp!695682 () Bool)

(assert (=> b!2226102 (= e!1422635 tp!695682)))

(declare-fun setElem!19871 () Context!3866)

(declare-fun tp!695680 () Bool)

(declare-fun setNonEmpty!19871 () Bool)

(assert (=> setNonEmpty!19871 (= setRes!19871 (and tp!695680 (inv!35502 setElem!19871) e!1422635))))

(declare-fun setRest!19871 () (InoxSet Context!3866))

(assert (=> setNonEmpty!19871 (= (_2!15120 (h!31549 mapDefault!14247)) ((_ map or) (store ((as const (Array Context!3866 Bool)) false) setElem!19871 true) setRest!19871))))

(assert (= b!2226100 b!2226101))

(assert (= (and b!2226100 condSetEmpty!19871) setIsEmpty!19871))

(assert (= (and b!2226100 (not condSetEmpty!19871)) setNonEmpty!19871))

(assert (= setNonEmpty!19871 b!2226102))

(assert (= (and b!2225989 ((_ is Cons!26148) mapDefault!14247)) b!2226100))

(declare-fun m!2665492 () Bool)

(assert (=> b!2226100 m!2665492))

(declare-fun m!2665494 () Bool)

(assert (=> setNonEmpty!19871 m!2665494))

(declare-fun b!2226107 () Bool)

(declare-fun e!1422638 () Bool)

(declare-fun tp!695689 () Bool)

(declare-fun tp!695690 () Bool)

(assert (=> b!2226107 (= e!1422638 (and tp!695689 tp!695690))))

(assert (=> b!2225984 (= tp!695591 e!1422638)))

(assert (= (and b!2225984 ((_ is Cons!26147) (exprs!2433 context!86))) b!2226107))

(declare-fun b!2226108 () Bool)

(declare-fun e!1422639 () Bool)

(assert (=> b!2226108 (= e!1422639 tp_is_empty!9995)))

(declare-fun b!2226110 () Bool)

(declare-fun tp!695692 () Bool)

(assert (=> b!2226110 (= e!1422639 tp!695692)))

(declare-fun b!2226109 () Bool)

(declare-fun tp!695691 () Bool)

(declare-fun tp!695695 () Bool)

(assert (=> b!2226109 (= e!1422639 (and tp!695691 tp!695695))))

(assert (=> b!2225983 (= tp!695580 e!1422639)))

(declare-fun b!2226111 () Bool)

(declare-fun tp!695693 () Bool)

(declare-fun tp!695694 () Bool)

(assert (=> b!2226111 (= e!1422639 (and tp!695693 tp!695694))))

(assert (= (and b!2225983 ((_ is ElementMatch!6385) (reg!6714 expr!64))) b!2226108))

(assert (= (and b!2225983 ((_ is Concat!10723) (reg!6714 expr!64))) b!2226109))

(assert (= (and b!2225983 ((_ is Star!6385) (reg!6714 expr!64))) b!2226110))

(assert (= (and b!2225983 ((_ is Union!6385) (reg!6714 expr!64))) b!2226111))

(check-sat (not b!2226086) (not b!2226083) (not b!2226066) b_and!174541 (not b!2226107) (not b!2226109) (not mapNonEmpty!14250) (not b_next!65259) (not b_next!65257) (not setNonEmpty!19862) (not b!2226027) (not b!2226111) (not b!2226094) (not setNonEmpty!19869) (not b!2226088) (not b!2226049) (not b!2226048) (not setNonEmpty!19863) (not b!2226098) (not b!2226102) (not setNonEmpty!19871) (not b!2226087) (not b!2226093) (not b!2226091) (not b!2226050) (not b!2226089) (not b!2225997) (not b!2226097) (not bm!133275) (not b!2226045) (not bm!133274) (not b!2226090) (not b!2226100) tp_is_empty!9995 (not b!2226095) (not b!2226067) (not setNonEmpty!19870) (not b!2226046) (not b!2226101) (not b!2226063) (not d!664566) (not bm!133278) (not b!2226018) (not b!2226064) (not b!2226085) (not b!2226047) (not b!2226030) (not b!2226068) (not b!2226110) (not bm!133277) (not setNonEmpty!19868) (not d!664556) (not b!2226062) b_and!174543 (not b!2226099) (not b!2226084))
(check-sat b_and!174543 b_and!174541 (not b_next!65257) (not b_next!65259))
