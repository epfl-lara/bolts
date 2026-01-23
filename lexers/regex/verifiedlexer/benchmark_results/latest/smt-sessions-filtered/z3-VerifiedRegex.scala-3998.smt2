; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217238 () Bool)

(assert start!217238)

(declare-fun b!2226193 () Bool)

(declare-fun b_free!64561 () Bool)

(declare-fun b_next!65265 () Bool)

(assert (=> b!2226193 (= b_free!64561 (not b_next!65265))))

(declare-fun tp!695772 () Bool)

(declare-fun b_and!174549 () Bool)

(assert (=> b!2226193 (= tp!695772 b_and!174549)))

(declare-fun b!2226189 () Bool)

(declare-fun b_free!64563 () Bool)

(declare-fun b_next!65267 () Bool)

(assert (=> b!2226189 (= b_free!64563 (not b_next!65267))))

(declare-fun tp!695763 () Bool)

(declare-fun b_and!174551 () Bool)

(assert (=> b!2226189 (= tp!695763 b_and!174551)))

(declare-fun b!2226187 () Bool)

(declare-fun e!1422700 () Bool)

(declare-fun tp_is_empty!9999 () Bool)

(assert (=> b!2226187 (= e!1422700 tp_is_empty!9999)))

(declare-fun b!2226188 () Bool)

(declare-fun tp!695771 () Bool)

(declare-fun tp!695762 () Bool)

(assert (=> b!2226188 (= e!1422700 (and tp!695771 tp!695762))))

(declare-datatypes ((C!12920 0))(
  ( (C!12921 (val!7508 Int)) )
))
(declare-datatypes ((Regex!6387 0))(
  ( (ElementMatch!6387 (c!355275 C!12920)) (Concat!10725 (regOne!13286 Regex!6387) (regTwo!13286 Regex!6387)) (EmptyExpr!6387) (Star!6387 (reg!6716 Regex!6387)) (EmptyLang!6387) (Union!6387 (regOne!13287 Regex!6387) (regTwo!13287 Regex!6387)) )
))
(declare-datatypes ((List!26245 0))(
  ( (Nil!26151) (Cons!26151 (h!31552 Regex!6387) (t!199657 List!26245)) )
))
(declare-datatypes ((Context!3870 0))(
  ( (Context!3871 (exprs!2435 List!26245)) )
))
(declare-datatypes ((array!10424 0))(
  ( (array!10425 (arr!4637 (Array (_ BitVec 32) (_ BitVec 64))) (size!20418 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3846 0))(
  ( (tuple3!3847 (_1!15124 Regex!6387) (_2!15124 Context!3870) (_3!2393 C!12920)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25462 0))(
  ( (tuple2!25463 (_1!15125 tuple3!3846) (_2!15125 (InoxSet Context!3870))) )
))
(declare-datatypes ((List!26246 0))(
  ( (Nil!26152) (Cons!26152 (h!31553 tuple2!25462) (t!199658 List!26246)) )
))
(declare-datatypes ((array!10426 0))(
  ( (array!10427 (arr!4638 (Array (_ BitVec 32) List!26246)) (size!20419 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6050 0))(
  ( (LongMapFixedSize!6051 (defaultEntry!3390 Int) (mask!7572 (_ BitVec 32)) (extraKeys!3273 (_ BitVec 32)) (zeroValue!3283 List!26246) (minValue!3283 List!26246) (_size!6097 (_ BitVec 32)) (_keys!3322 array!10424) (_values!3305 array!10426) (_vacant!3086 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11917 0))(
  ( (Cell!11918 (v!29720 LongMapFixedSize!6050)) )
))
(declare-datatypes ((MutLongMap!3025 0))(
  ( (LongMap!3025 (underlying!6251 Cell!11917)) (MutLongMapExt!3024 (__x!17301 Int)) )
))
(declare-datatypes ((Cell!11919 0))(
  ( (Cell!11920 (v!29721 MutLongMap!3025)) )
))
(declare-datatypes ((Hashable!2935 0))(
  ( (HashableExt!2934 (__x!17302 Int)) )
))
(declare-datatypes ((MutableMap!2935 0))(
  ( (MutableMapExt!2934 (__x!17303 Int)) (HashMap!2935 (underlying!6252 Cell!11919) (hashF!4858 Hashable!2935) (_size!6098 (_ BitVec 32)) (defaultValue!3097 Int)) )
))
(declare-datatypes ((CacheDown!1916 0))(
  ( (CacheDown!1917 (cache!3316 MutableMap!2935)) )
))
(declare-fun cacheDown!839 () CacheDown!1916)

(declare-fun e!1422697 () Bool)

(declare-fun e!1422701 () Bool)

(declare-fun tp!695768 () Bool)

(declare-fun tp!695773 () Bool)

(declare-fun array_inv!3329 (array!10424) Bool)

(declare-fun array_inv!3330 (array!10426) Bool)

(assert (=> b!2226189 (= e!1422697 (and tp!695763 tp!695768 tp!695773 (array_inv!3329 (_keys!3322 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) (array_inv!3330 (_values!3305 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) e!1422701))))

(declare-fun b!2226190 () Bool)

(declare-fun e!1422704 () Bool)

(declare-fun e!1422705 () Bool)

(assert (=> b!2226190 (= e!1422704 e!1422705)))

(declare-fun b!2226191 () Bool)

(declare-fun res!954548 () Bool)

(declare-fun e!1422699 () Bool)

(assert (=> b!2226191 (=> (not res!954548) (not e!1422699))))

(declare-fun context!86 () Context!3870)

(declare-fun expr!64 () Regex!6387)

(declare-fun a!1167 () C!12920)

(get-info :version)

(declare-datatypes ((Option!5081 0))(
  ( (None!5080) (Some!5080 (v!29722 (InoxSet Context!3870))) )
))
(declare-fun get!7863 (CacheDown!1916 Regex!6387 Context!3870 C!12920) Option!5081)

(assert (=> b!2226191 (= res!954548 (not ((_ is Some!5080) (get!7863 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2226192 () Bool)

(declare-fun e!1422703 () Bool)

(declare-fun tp!695769 () Bool)

(assert (=> b!2226192 (= e!1422703 tp!695769)))

(declare-fun e!1422696 () Bool)

(assert (=> b!2226193 (= e!1422705 (and e!1422696 tp!695772))))

(declare-fun mapNonEmpty!14256 () Bool)

(declare-fun mapRes!14256 () Bool)

(declare-fun tp!695770 () Bool)

(declare-fun tp!695766 () Bool)

(assert (=> mapNonEmpty!14256 (= mapRes!14256 (and tp!695770 tp!695766))))

(declare-fun mapKey!14256 () (_ BitVec 32))

(declare-fun mapValue!14256 () List!26246)

(declare-fun mapRest!14256 () (Array (_ BitVec 32) List!26246))

(assert (=> mapNonEmpty!14256 (= (arr!4638 (_values!3305 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) (store mapRest!14256 mapKey!14256 mapValue!14256))))

(declare-fun mapIsEmpty!14256 () Bool)

(assert (=> mapIsEmpty!14256 mapRes!14256))

(declare-fun b!2226194 () Bool)

(declare-fun validRegex!2368 (Regex!6387) Bool)

(assert (=> b!2226194 (= e!1422699 (not (validRegex!2368 (regTwo!13287 expr!64))))))

(declare-datatypes ((tuple2!25464 0))(
  ( (tuple2!25465 (_1!15126 (InoxSet Context!3870)) (_2!15126 CacheDown!1916)) )
))
(declare-fun lt!830081 () tuple2!25464)

(declare-fun derivationStepZipperDownMem!11 (Regex!6387 Context!3870 C!12920 CacheDown!1916) tuple2!25464)

(assert (=> b!2226194 (= lt!830081 (derivationStepZipperDownMem!11 (regOne!13287 expr!64) context!86 a!1167 cacheDown!839))))

(declare-fun res!954547 () Bool)

(assert (=> start!217238 (=> (not res!954547) (not e!1422699))))

(assert (=> start!217238 (= res!954547 (validRegex!2368 expr!64))))

(assert (=> start!217238 e!1422699))

(assert (=> start!217238 e!1422700))

(declare-fun inv!35506 (CacheDown!1916) Bool)

(assert (=> start!217238 (and (inv!35506 cacheDown!839) e!1422704)))

(declare-fun inv!35507 (Context!3870) Bool)

(assert (=> start!217238 (and (inv!35507 context!86) e!1422703)))

(assert (=> start!217238 tp_is_empty!9999))

(declare-fun b!2226195 () Bool)

(declare-fun tp!695764 () Bool)

(assert (=> b!2226195 (= e!1422701 (and tp!695764 mapRes!14256))))

(declare-fun condMapEmpty!14256 () Bool)

(declare-fun mapDefault!14256 () List!26246)

(assert (=> b!2226195 (= condMapEmpty!14256 (= (arr!4638 (_values!3305 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26246)) mapDefault!14256)))))

(declare-fun b!2226196 () Bool)

(declare-fun res!954546 () Bool)

(assert (=> b!2226196 (=> (not res!954546) (not e!1422699))))

(assert (=> b!2226196 (= res!954546 (and (or (not ((_ is ElementMatch!6387) expr!64)) (not (= (c!355275 expr!64) a!1167))) ((_ is Union!6387) expr!64)))))

(declare-fun b!2226197 () Bool)

(declare-fun tp!695767 () Bool)

(declare-fun tp!695761 () Bool)

(assert (=> b!2226197 (= e!1422700 (and tp!695767 tp!695761))))

(declare-fun b!2226198 () Bool)

(declare-fun e!1422702 () Bool)

(assert (=> b!2226198 (= e!1422702 e!1422697)))

(declare-fun b!2226199 () Bool)

(declare-fun e!1422698 () Bool)

(assert (=> b!2226199 (= e!1422698 e!1422702)))

(declare-fun b!2226200 () Bool)

(declare-fun tp!695765 () Bool)

(assert (=> b!2226200 (= e!1422700 tp!695765)))

(declare-fun b!2226201 () Bool)

(declare-fun lt!830080 () MutLongMap!3025)

(assert (=> b!2226201 (= e!1422696 (and e!1422698 ((_ is LongMap!3025) lt!830080)))))

(assert (=> b!2226201 (= lt!830080 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))

(assert (= (and start!217238 res!954547) b!2226191))

(assert (= (and b!2226191 res!954548) b!2226196))

(assert (= (and b!2226196 res!954546) b!2226194))

(assert (= (and start!217238 ((_ is ElementMatch!6387) expr!64)) b!2226187))

(assert (= (and start!217238 ((_ is Concat!10725) expr!64)) b!2226188))

(assert (= (and start!217238 ((_ is Star!6387) expr!64)) b!2226200))

(assert (= (and start!217238 ((_ is Union!6387) expr!64)) b!2226197))

(assert (= (and b!2226195 condMapEmpty!14256) mapIsEmpty!14256))

(assert (= (and b!2226195 (not condMapEmpty!14256)) mapNonEmpty!14256))

(assert (= b!2226189 b!2226195))

(assert (= b!2226198 b!2226189))

(assert (= b!2226199 b!2226198))

(assert (= (and b!2226201 ((_ is LongMap!3025) (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))) b!2226199))

(assert (= b!2226193 b!2226201))

(assert (= (and b!2226190 ((_ is HashMap!2935) (cache!3316 cacheDown!839))) b!2226193))

(assert (= start!217238 b!2226190))

(assert (= start!217238 b!2226192))

(declare-fun m!2665514 () Bool)

(assert (=> start!217238 m!2665514))

(declare-fun m!2665516 () Bool)

(assert (=> start!217238 m!2665516))

(declare-fun m!2665518 () Bool)

(assert (=> start!217238 m!2665518))

(declare-fun m!2665520 () Bool)

(assert (=> mapNonEmpty!14256 m!2665520))

(declare-fun m!2665522 () Bool)

(assert (=> b!2226194 m!2665522))

(declare-fun m!2665524 () Bool)

(assert (=> b!2226194 m!2665524))

(declare-fun m!2665526 () Bool)

(assert (=> b!2226189 m!2665526))

(declare-fun m!2665528 () Bool)

(assert (=> b!2226189 m!2665528))

(declare-fun m!2665530 () Bool)

(assert (=> b!2226191 m!2665530))

(check-sat (not b!2226192) (not start!217238) (not b_next!65265) (not b!2226194) (not b!2226188) (not b!2226195) (not b!2226200) b_and!174551 (not b_next!65267) (not b!2226191) (not mapNonEmpty!14256) b_and!174549 (not b!2226197) (not b!2226189) tp_is_empty!9999)
(check-sat b_and!174549 b_and!174551 (not b_next!65267) (not b_next!65265))
(get-model)

(declare-fun d!664571 () Bool)

(declare-fun e!1422708 () Bool)

(assert (=> d!664571 e!1422708))

(declare-fun res!954551 () Bool)

(assert (=> d!664571 (=> res!954551 e!1422708)))

(declare-fun lt!830084 () Option!5081)

(declare-fun isEmpty!14883 (Option!5081) Bool)

(assert (=> d!664571 (= res!954551 (isEmpty!14883 lt!830084))))

(declare-fun choose!13113 (CacheDown!1916 Regex!6387 Context!3870 C!12920) Option!5081)

(assert (=> d!664571 (= lt!830084 (choose!13113 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!267 (MutableMap!2935) Bool)

(assert (=> d!664571 (validCacheMapDown!267 (cache!3316 cacheDown!839))))

(assert (=> d!664571 (= (get!7863 cacheDown!839 expr!64 context!86 a!1167) lt!830084)))

(declare-fun b!2226204 () Bool)

(declare-fun get!7864 (Option!5081) (InoxSet Context!3870))

(declare-fun derivationStepZipperDown!33 (Regex!6387 Context!3870 C!12920) (InoxSet Context!3870))

(assert (=> b!2226204 (= e!1422708 (= (get!7864 lt!830084) (derivationStepZipperDown!33 expr!64 context!86 a!1167)))))

(assert (= (and d!664571 (not res!954551)) b!2226204))

(declare-fun m!2665532 () Bool)

(assert (=> d!664571 m!2665532))

(declare-fun m!2665534 () Bool)

(assert (=> d!664571 m!2665534))

(declare-fun m!2665536 () Bool)

(assert (=> d!664571 m!2665536))

(declare-fun m!2665538 () Bool)

(assert (=> b!2226204 m!2665538))

(declare-fun m!2665540 () Bool)

(assert (=> b!2226204 m!2665540))

(assert (=> b!2226191 d!664571))

(declare-fun b!2226223 () Bool)

(declare-fun e!1422729 () Bool)

(declare-fun e!1422726 () Bool)

(assert (=> b!2226223 (= e!1422729 e!1422726)))

(declare-fun c!355281 () Bool)

(assert (=> b!2226223 (= c!355281 ((_ is Union!6387) expr!64))))

(declare-fun bm!133286 () Bool)

(declare-fun call!133292 () Bool)

(assert (=> bm!133286 (= call!133292 (validRegex!2368 (ite c!355281 (regTwo!13287 expr!64) (regTwo!13286 expr!64))))))

(declare-fun b!2226224 () Bool)

(declare-fun e!1422725 () Bool)

(assert (=> b!2226224 (= e!1422729 e!1422725)))

(declare-fun res!954562 () Bool)

(declare-fun nullable!1743 (Regex!6387) Bool)

(assert (=> b!2226224 (= res!954562 (not (nullable!1743 (reg!6716 expr!64))))))

(assert (=> b!2226224 (=> (not res!954562) (not e!1422725))))

(declare-fun b!2226225 () Bool)

(declare-fun call!133293 () Bool)

(assert (=> b!2226225 (= e!1422725 call!133293)))

(declare-fun b!2226226 () Bool)

(declare-fun e!1422724 () Bool)

(assert (=> b!2226226 (= e!1422724 call!133292)))

(declare-fun b!2226227 () Bool)

(declare-fun res!954566 () Bool)

(declare-fun e!1422727 () Bool)

(assert (=> b!2226227 (=> res!954566 e!1422727)))

(assert (=> b!2226227 (= res!954566 (not ((_ is Concat!10725) expr!64)))))

(assert (=> b!2226227 (= e!1422726 e!1422727)))

(declare-fun b!2226228 () Bool)

(declare-fun e!1422723 () Bool)

(assert (=> b!2226228 (= e!1422727 e!1422723)))

(declare-fun res!954563 () Bool)

(assert (=> b!2226228 (=> (not res!954563) (not e!1422723))))

(declare-fun call!133291 () Bool)

(assert (=> b!2226228 (= res!954563 call!133291)))

(declare-fun d!664573 () Bool)

(declare-fun res!954564 () Bool)

(declare-fun e!1422728 () Bool)

(assert (=> d!664573 (=> res!954564 e!1422728)))

(assert (=> d!664573 (= res!954564 ((_ is ElementMatch!6387) expr!64))))

(assert (=> d!664573 (= (validRegex!2368 expr!64) e!1422728)))

(declare-fun b!2226229 () Bool)

(declare-fun res!954565 () Bool)

(assert (=> b!2226229 (=> (not res!954565) (not e!1422724))))

(assert (=> b!2226229 (= res!954565 call!133291)))

(assert (=> b!2226229 (= e!1422726 e!1422724)))

(declare-fun bm!133287 () Bool)

(assert (=> bm!133287 (= call!133291 call!133293)))

(declare-fun b!2226230 () Bool)

(assert (=> b!2226230 (= e!1422728 e!1422729)))

(declare-fun c!355280 () Bool)

(assert (=> b!2226230 (= c!355280 ((_ is Star!6387) expr!64))))

(declare-fun bm!133288 () Bool)

(assert (=> bm!133288 (= call!133293 (validRegex!2368 (ite c!355280 (reg!6716 expr!64) (ite c!355281 (regOne!13287 expr!64) (regOne!13286 expr!64)))))))

(declare-fun b!2226231 () Bool)

(assert (=> b!2226231 (= e!1422723 call!133292)))

(assert (= (and d!664573 (not res!954564)) b!2226230))

(assert (= (and b!2226230 c!355280) b!2226224))

(assert (= (and b!2226230 (not c!355280)) b!2226223))

(assert (= (and b!2226224 res!954562) b!2226225))

(assert (= (and b!2226223 c!355281) b!2226229))

(assert (= (and b!2226223 (not c!355281)) b!2226227))

(assert (= (and b!2226229 res!954565) b!2226226))

(assert (= (and b!2226227 (not res!954566)) b!2226228))

(assert (= (and b!2226228 res!954563) b!2226231))

(assert (= (or b!2226226 b!2226231) bm!133286))

(assert (= (or b!2226229 b!2226228) bm!133287))

(assert (= (or b!2226225 bm!133287) bm!133288))

(declare-fun m!2665542 () Bool)

(assert (=> bm!133286 m!2665542))

(declare-fun m!2665544 () Bool)

(assert (=> b!2226224 m!2665544))

(declare-fun m!2665546 () Bool)

(assert (=> bm!133288 m!2665546))

(assert (=> start!217238 d!664573))

(declare-fun d!664575 () Bool)

(declare-fun res!954569 () Bool)

(declare-fun e!1422732 () Bool)

(assert (=> d!664575 (=> (not res!954569) (not e!1422732))))

(assert (=> d!664575 (= res!954569 ((_ is HashMap!2935) (cache!3316 cacheDown!839)))))

(assert (=> d!664575 (= (inv!35506 cacheDown!839) e!1422732)))

(declare-fun b!2226234 () Bool)

(assert (=> b!2226234 (= e!1422732 (validCacheMapDown!267 (cache!3316 cacheDown!839)))))

(assert (= (and d!664575 res!954569) b!2226234))

(assert (=> b!2226234 m!2665536))

(assert (=> start!217238 d!664575))

(declare-fun d!664577 () Bool)

(declare-fun lambda!84199 () Int)

(declare-fun forall!5345 (List!26245 Int) Bool)

(assert (=> d!664577 (= (inv!35507 context!86) (forall!5345 (exprs!2435 context!86) lambda!84199))))

(declare-fun bs!453537 () Bool)

(assert (= bs!453537 d!664577))

(declare-fun m!2665548 () Bool)

(assert (=> bs!453537 m!2665548))

(assert (=> start!217238 d!664577))

(declare-fun d!664579 () Bool)

(assert (=> d!664579 (= (array_inv!3329 (_keys!3322 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) (bvsge (size!20418 (_keys!3322 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2226189 d!664579))

(declare-fun d!664581 () Bool)

(assert (=> d!664581 (= (array_inv!3330 (_values!3305 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) (bvsge (size!20419 (_values!3305 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2226189 d!664581))

(declare-fun b!2226235 () Bool)

(declare-fun e!1422739 () Bool)

(declare-fun e!1422736 () Bool)

(assert (=> b!2226235 (= e!1422739 e!1422736)))

(declare-fun c!355283 () Bool)

(assert (=> b!2226235 (= c!355283 ((_ is Union!6387) (regTwo!13287 expr!64)))))

(declare-fun bm!133289 () Bool)

(declare-fun call!133295 () Bool)

(assert (=> bm!133289 (= call!133295 (validRegex!2368 (ite c!355283 (regTwo!13287 (regTwo!13287 expr!64)) (regTwo!13286 (regTwo!13287 expr!64)))))))

(declare-fun b!2226236 () Bool)

(declare-fun e!1422735 () Bool)

(assert (=> b!2226236 (= e!1422739 e!1422735)))

(declare-fun res!954570 () Bool)

(assert (=> b!2226236 (= res!954570 (not (nullable!1743 (reg!6716 (regTwo!13287 expr!64)))))))

(assert (=> b!2226236 (=> (not res!954570) (not e!1422735))))

(declare-fun b!2226237 () Bool)

(declare-fun call!133296 () Bool)

(assert (=> b!2226237 (= e!1422735 call!133296)))

(declare-fun b!2226238 () Bool)

(declare-fun e!1422734 () Bool)

(assert (=> b!2226238 (= e!1422734 call!133295)))

(declare-fun b!2226239 () Bool)

(declare-fun res!954574 () Bool)

(declare-fun e!1422737 () Bool)

(assert (=> b!2226239 (=> res!954574 e!1422737)))

(assert (=> b!2226239 (= res!954574 (not ((_ is Concat!10725) (regTwo!13287 expr!64))))))

(assert (=> b!2226239 (= e!1422736 e!1422737)))

(declare-fun b!2226240 () Bool)

(declare-fun e!1422733 () Bool)

(assert (=> b!2226240 (= e!1422737 e!1422733)))

(declare-fun res!954571 () Bool)

(assert (=> b!2226240 (=> (not res!954571) (not e!1422733))))

(declare-fun call!133294 () Bool)

(assert (=> b!2226240 (= res!954571 call!133294)))

(declare-fun d!664583 () Bool)

(declare-fun res!954572 () Bool)

(declare-fun e!1422738 () Bool)

(assert (=> d!664583 (=> res!954572 e!1422738)))

(assert (=> d!664583 (= res!954572 ((_ is ElementMatch!6387) (regTwo!13287 expr!64)))))

(assert (=> d!664583 (= (validRegex!2368 (regTwo!13287 expr!64)) e!1422738)))

(declare-fun b!2226241 () Bool)

(declare-fun res!954573 () Bool)

(assert (=> b!2226241 (=> (not res!954573) (not e!1422734))))

(assert (=> b!2226241 (= res!954573 call!133294)))

(assert (=> b!2226241 (= e!1422736 e!1422734)))

(declare-fun bm!133290 () Bool)

(assert (=> bm!133290 (= call!133294 call!133296)))

(declare-fun b!2226242 () Bool)

(assert (=> b!2226242 (= e!1422738 e!1422739)))

(declare-fun c!355282 () Bool)

(assert (=> b!2226242 (= c!355282 ((_ is Star!6387) (regTwo!13287 expr!64)))))

(declare-fun bm!133291 () Bool)

(assert (=> bm!133291 (= call!133296 (validRegex!2368 (ite c!355282 (reg!6716 (regTwo!13287 expr!64)) (ite c!355283 (regOne!13287 (regTwo!13287 expr!64)) (regOne!13286 (regTwo!13287 expr!64))))))))

(declare-fun b!2226243 () Bool)

(assert (=> b!2226243 (= e!1422733 call!133295)))

(assert (= (and d!664583 (not res!954572)) b!2226242))

(assert (= (and b!2226242 c!355282) b!2226236))

(assert (= (and b!2226242 (not c!355282)) b!2226235))

(assert (= (and b!2226236 res!954570) b!2226237))

(assert (= (and b!2226235 c!355283) b!2226241))

(assert (= (and b!2226235 (not c!355283)) b!2226239))

(assert (= (and b!2226241 res!954573) b!2226238))

(assert (= (and b!2226239 (not res!954574)) b!2226240))

(assert (= (and b!2226240 res!954571) b!2226243))

(assert (= (or b!2226238 b!2226243) bm!133289))

(assert (= (or b!2226241 b!2226240) bm!133290))

(assert (= (or b!2226237 bm!133290) bm!133291))

(declare-fun m!2665550 () Bool)

(assert (=> bm!133289 m!2665550))

(declare-fun m!2665552 () Bool)

(assert (=> b!2226236 m!2665552))

(declare-fun m!2665554 () Bool)

(assert (=> bm!133291 m!2665554))

(assert (=> b!2226194 d!664583))

(declare-fun b!2226270 () Bool)

(declare-fun e!1422756 () tuple2!25464)

(declare-fun lt!830105 () tuple2!25464)

(assert (=> b!2226270 (= e!1422756 (tuple2!25465 (_1!15126 lt!830105) (_2!15126 lt!830105)))))

(declare-fun call!133313 () tuple2!25464)

(assert (=> b!2226270 (= lt!830105 call!133313)))

(declare-fun b!2226271 () Bool)

(declare-fun c!355301 () Bool)

(assert (=> b!2226271 (= c!355301 ((_ is Union!6387) (regOne!13287 expr!64)))))

(declare-fun e!1422755 () tuple2!25464)

(declare-fun e!1422754 () tuple2!25464)

(assert (=> b!2226271 (= e!1422755 e!1422754)))

(declare-fun lt!830107 () tuple2!25464)

(declare-fun c!355296 () Bool)

(declare-fun bm!133304 () Bool)

(declare-fun call!133311 () tuple2!25464)

(declare-fun c!355300 () Bool)

(declare-fun call!133309 () List!26245)

(assert (=> bm!133304 (= call!133311 (derivationStepZipperDownMem!11 (ite c!355301 (regOne!13287 (regOne!13287 expr!64)) (ite c!355300 (regTwo!13286 (regOne!13287 expr!64)) (ite c!355296 (regOne!13286 (regOne!13287 expr!64)) (reg!6716 (regOne!13287 expr!64))))) (ite (or c!355301 c!355300) context!86 (Context!3871 call!133309)) a!1167 (ite c!355301 cacheDown!839 (ite c!355300 (_2!15126 lt!830107) cacheDown!839))))))

(declare-fun bm!133305 () Bool)

(declare-fun call!133310 () tuple2!25464)

(assert (=> bm!133305 (= call!133313 call!133310)))

(declare-fun b!2226272 () Bool)

(assert (=> b!2226272 (= c!355296 ((_ is Concat!10725) (regOne!13287 expr!64)))))

(declare-fun e!1422758 () tuple2!25464)

(assert (=> b!2226272 (= e!1422758 e!1422756)))

(declare-fun d!664585 () Bool)

(declare-fun lt!830111 () tuple2!25464)

(assert (=> d!664585 (= (_1!15126 lt!830111) (derivationStepZipperDown!33 (regOne!13287 expr!64) context!86 a!1167))))

(declare-fun e!1422760 () tuple2!25464)

(assert (=> d!664585 (= lt!830111 e!1422760)))

(declare-fun c!355297 () Bool)

(declare-fun lt!830109 () Option!5081)

(assert (=> d!664585 (= c!355297 ((_ is Some!5080) lt!830109))))

(assert (=> d!664585 (= lt!830109 (get!7863 cacheDown!839 (regOne!13287 expr!64) context!86 a!1167))))

(assert (=> d!664585 (validRegex!2368 (regOne!13287 expr!64))))

(assert (=> d!664585 (= (derivationStepZipperDownMem!11 (regOne!13287 expr!64) context!86 a!1167 cacheDown!839) lt!830111)))

(declare-fun lt!830106 () tuple2!25464)

(declare-fun bm!133306 () Bool)

(declare-fun call!133314 () tuple2!25464)

(declare-fun call!133312 () List!26245)

(assert (=> bm!133306 (= call!133314 (derivationStepZipperDownMem!11 (ite c!355301 (regTwo!13287 (regOne!13287 expr!64)) (regOne!13286 (regOne!13287 expr!64))) (ite c!355301 context!86 (Context!3871 call!133312)) a!1167 (ite c!355301 (_2!15126 lt!830106) cacheDown!839)))))

(declare-fun b!2226273 () Bool)

(declare-fun lt!830108 () tuple2!25464)

(assert (=> b!2226273 (= lt!830108 call!133310)))

(assert (=> b!2226273 (= lt!830107 call!133314)))

(assert (=> b!2226273 (= e!1422758 (tuple2!25465 ((_ map or) (_1!15126 lt!830107) (_1!15126 lt!830108)) (_2!15126 lt!830108)))))

(declare-fun b!2226274 () Bool)

(assert (=> b!2226274 (= e!1422760 (tuple2!25465 (v!29722 lt!830109) cacheDown!839))))

(declare-fun b!2226275 () Bool)

(declare-fun e!1422757 () tuple2!25464)

(assert (=> b!2226275 (= e!1422756 e!1422757)))

(declare-fun c!355298 () Bool)

(assert (=> b!2226275 (= c!355298 ((_ is Star!6387) (regOne!13287 expr!64)))))

(declare-fun b!2226276 () Bool)

(declare-fun lt!830110 () tuple2!25464)

(assert (=> b!2226276 (= lt!830110 call!133313)))

(assert (=> b!2226276 (= e!1422757 (tuple2!25465 (_1!15126 lt!830110) (_2!15126 lt!830110)))))

(declare-fun b!2226277 () Bool)

(assert (=> b!2226277 (= e!1422754 e!1422758)))

(declare-fun res!954577 () Bool)

(assert (=> b!2226277 (= res!954577 ((_ is Concat!10725) (regOne!13287 expr!64)))))

(declare-fun e!1422759 () Bool)

(assert (=> b!2226277 (=> (not res!954577) (not e!1422759))))

(assert (=> b!2226277 (= c!355300 e!1422759)))

(declare-fun b!2226278 () Bool)

(assert (=> b!2226278 (= e!1422757 (tuple2!25465 ((as const (Array Context!3870 Bool)) false) cacheDown!839))))

(declare-fun b!2226279 () Bool)

(assert (=> b!2226279 (= e!1422755 (tuple2!25465 (store ((as const (Array Context!3870 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun b!2226280 () Bool)

(assert (=> b!2226280 (= e!1422759 (nullable!1743 (regOne!13286 (regOne!13287 expr!64))))))

(declare-fun bm!133307 () Bool)

(declare-fun $colon$colon!505 (List!26245 Regex!6387) List!26245)

(assert (=> bm!133307 (= call!133312 ($colon$colon!505 (exprs!2435 context!86) (ite (or c!355300 c!355296) (regTwo!13286 (regOne!13287 expr!64)) (regOne!13287 expr!64))))))

(declare-fun bm!133308 () Bool)

(assert (=> bm!133308 (= call!133309 call!133312)))

(declare-fun b!2226281 () Bool)

(declare-fun lt!830103 () tuple2!25464)

(declare-datatypes ((Unit!39142 0))(
  ( (Unit!39143) )
))
(declare-datatypes ((tuple2!25466 0))(
  ( (tuple2!25467 (_1!15127 Unit!39142) (_2!15127 CacheDown!1916)) )
))
(declare-fun update!131 (CacheDown!1916 Regex!6387 Context!3870 C!12920 (InoxSet Context!3870)) tuple2!25466)

(assert (=> b!2226281 (= e!1422760 (tuple2!25465 (_1!15126 lt!830103) (_2!15127 (update!131 (_2!15126 lt!830103) (regOne!13287 expr!64) context!86 a!1167 (_1!15126 lt!830103)))))))

(declare-fun c!355299 () Bool)

(assert (=> b!2226281 (= c!355299 (and ((_ is ElementMatch!6387) (regOne!13287 expr!64)) (= (c!355275 (regOne!13287 expr!64)) a!1167)))))

(assert (=> b!2226281 (= lt!830103 e!1422755)))

(declare-fun bm!133309 () Bool)

(assert (=> bm!133309 (= call!133310 call!133311)))

(declare-fun b!2226282 () Bool)

(declare-fun lt!830104 () tuple2!25464)

(assert (=> b!2226282 (= e!1422754 (tuple2!25465 ((_ map or) (_1!15126 lt!830106) (_1!15126 lt!830104)) (_2!15126 lt!830104)))))

(assert (=> b!2226282 (= lt!830106 call!133311)))

(assert (=> b!2226282 (= lt!830104 call!133314)))

(assert (= (and d!664585 c!355297) b!2226274))

(assert (= (and d!664585 (not c!355297)) b!2226281))

(assert (= (and b!2226281 c!355299) b!2226279))

(assert (= (and b!2226281 (not c!355299)) b!2226271))

(assert (= (and b!2226271 c!355301) b!2226282))

(assert (= (and b!2226271 (not c!355301)) b!2226277))

(assert (= (and b!2226277 res!954577) b!2226280))

(assert (= (and b!2226277 c!355300) b!2226273))

(assert (= (and b!2226277 (not c!355300)) b!2226272))

(assert (= (and b!2226272 c!355296) b!2226270))

(assert (= (and b!2226272 (not c!355296)) b!2226275))

(assert (= (and b!2226275 c!355298) b!2226276))

(assert (= (and b!2226275 (not c!355298)) b!2226278))

(assert (= (or b!2226270 b!2226276) bm!133308))

(assert (= (or b!2226270 b!2226276) bm!133305))

(assert (= (or b!2226273 bm!133308) bm!133307))

(assert (= (or b!2226273 bm!133305) bm!133309))

(assert (= (or b!2226282 bm!133309) bm!133304))

(assert (= (or b!2226282 b!2226273) bm!133306))

(declare-fun m!2665556 () Bool)

(assert (=> b!2226281 m!2665556))

(declare-fun m!2665558 () Bool)

(assert (=> b!2226279 m!2665558))

(declare-fun m!2665560 () Bool)

(assert (=> b!2226280 m!2665560))

(declare-fun m!2665562 () Bool)

(assert (=> bm!133307 m!2665562))

(declare-fun m!2665564 () Bool)

(assert (=> bm!133306 m!2665564))

(declare-fun m!2665566 () Bool)

(assert (=> d!664585 m!2665566))

(declare-fun m!2665568 () Bool)

(assert (=> d!664585 m!2665568))

(declare-fun m!2665570 () Bool)

(assert (=> d!664585 m!2665570))

(declare-fun m!2665572 () Bool)

(assert (=> bm!133304 m!2665572))

(assert (=> b!2226194 d!664585))

(declare-fun b!2226287 () Bool)

(declare-fun e!1422763 () Bool)

(declare-fun tp!695778 () Bool)

(declare-fun tp!695779 () Bool)

(assert (=> b!2226287 (= e!1422763 (and tp!695778 tp!695779))))

(assert (=> b!2226192 (= tp!695769 e!1422763)))

(assert (= (and b!2226192 ((_ is Cons!26151) (exprs!2435 context!86))) b!2226287))

(declare-fun b!2226296 () Bool)

(declare-fun setRes!19874 () Bool)

(declare-fun tp!695790 () Bool)

(declare-fun e!1422772 () Bool)

(declare-fun e!1422771 () Bool)

(declare-fun tp!695792 () Bool)

(assert (=> b!2226296 (= e!1422772 (and tp!695792 (inv!35507 (_2!15124 (_1!15125 (h!31553 mapDefault!14256)))) e!1422771 tp_is_empty!9999 setRes!19874 tp!695790))))

(declare-fun condSetEmpty!19874 () Bool)

(assert (=> b!2226296 (= condSetEmpty!19874 (= (_2!15125 (h!31553 mapDefault!14256)) ((as const (Array Context!3870 Bool)) false)))))

(declare-fun b!2226297 () Bool)

(declare-fun tp!695794 () Bool)

(assert (=> b!2226297 (= e!1422771 tp!695794)))

(assert (=> b!2226195 (= tp!695764 e!1422772)))

(declare-fun setIsEmpty!19874 () Bool)

(assert (=> setIsEmpty!19874 setRes!19874))

(declare-fun b!2226298 () Bool)

(declare-fun e!1422770 () Bool)

(declare-fun tp!695793 () Bool)

(assert (=> b!2226298 (= e!1422770 tp!695793)))

(declare-fun tp!695791 () Bool)

(declare-fun setElem!19874 () Context!3870)

(declare-fun setNonEmpty!19874 () Bool)

(assert (=> setNonEmpty!19874 (= setRes!19874 (and tp!695791 (inv!35507 setElem!19874) e!1422770))))

(declare-fun setRest!19874 () (InoxSet Context!3870))

(assert (=> setNonEmpty!19874 (= (_2!15125 (h!31553 mapDefault!14256)) ((_ map or) (store ((as const (Array Context!3870 Bool)) false) setElem!19874 true) setRest!19874))))

(assert (= b!2226296 b!2226297))

(assert (= (and b!2226296 condSetEmpty!19874) setIsEmpty!19874))

(assert (= (and b!2226296 (not condSetEmpty!19874)) setNonEmpty!19874))

(assert (= setNonEmpty!19874 b!2226298))

(assert (= (and b!2226195 ((_ is Cons!26152) mapDefault!14256)) b!2226296))

(declare-fun m!2665574 () Bool)

(assert (=> b!2226296 m!2665574))

(declare-fun m!2665576 () Bool)

(assert (=> setNonEmpty!19874 m!2665576))

(declare-fun e!1422775 () Bool)

(assert (=> b!2226200 (= tp!695765 e!1422775)))

(declare-fun b!2226311 () Bool)

(declare-fun tp!695809 () Bool)

(assert (=> b!2226311 (= e!1422775 tp!695809)))

(declare-fun b!2226310 () Bool)

(declare-fun tp!695808 () Bool)

(declare-fun tp!695807 () Bool)

(assert (=> b!2226310 (= e!1422775 (and tp!695808 tp!695807))))

(declare-fun b!2226312 () Bool)

(declare-fun tp!695805 () Bool)

(declare-fun tp!695806 () Bool)

(assert (=> b!2226312 (= e!1422775 (and tp!695805 tp!695806))))

(declare-fun b!2226309 () Bool)

(assert (=> b!2226309 (= e!1422775 tp_is_empty!9999)))

(assert (= (and b!2226200 ((_ is ElementMatch!6387) (reg!6716 expr!64))) b!2226309))

(assert (= (and b!2226200 ((_ is Concat!10725) (reg!6716 expr!64))) b!2226310))

(assert (= (and b!2226200 ((_ is Star!6387) (reg!6716 expr!64))) b!2226311))

(assert (= (and b!2226200 ((_ is Union!6387) (reg!6716 expr!64))) b!2226312))

(declare-fun e!1422776 () Bool)

(assert (=> b!2226188 (= tp!695771 e!1422776)))

(declare-fun b!2226315 () Bool)

(declare-fun tp!695814 () Bool)

(assert (=> b!2226315 (= e!1422776 tp!695814)))

(declare-fun b!2226314 () Bool)

(declare-fun tp!695813 () Bool)

(declare-fun tp!695812 () Bool)

(assert (=> b!2226314 (= e!1422776 (and tp!695813 tp!695812))))

(declare-fun b!2226316 () Bool)

(declare-fun tp!695810 () Bool)

(declare-fun tp!695811 () Bool)

(assert (=> b!2226316 (= e!1422776 (and tp!695810 tp!695811))))

(declare-fun b!2226313 () Bool)

(assert (=> b!2226313 (= e!1422776 tp_is_empty!9999)))

(assert (= (and b!2226188 ((_ is ElementMatch!6387) (regOne!13286 expr!64))) b!2226313))

(assert (= (and b!2226188 ((_ is Concat!10725) (regOne!13286 expr!64))) b!2226314))

(assert (= (and b!2226188 ((_ is Star!6387) (regOne!13286 expr!64))) b!2226315))

(assert (= (and b!2226188 ((_ is Union!6387) (regOne!13286 expr!64))) b!2226316))

(declare-fun e!1422777 () Bool)

(assert (=> b!2226188 (= tp!695762 e!1422777)))

(declare-fun b!2226319 () Bool)

(declare-fun tp!695819 () Bool)

(assert (=> b!2226319 (= e!1422777 tp!695819)))

(declare-fun b!2226318 () Bool)

(declare-fun tp!695818 () Bool)

(declare-fun tp!695817 () Bool)

(assert (=> b!2226318 (= e!1422777 (and tp!695818 tp!695817))))

(declare-fun b!2226320 () Bool)

(declare-fun tp!695815 () Bool)

(declare-fun tp!695816 () Bool)

(assert (=> b!2226320 (= e!1422777 (and tp!695815 tp!695816))))

(declare-fun b!2226317 () Bool)

(assert (=> b!2226317 (= e!1422777 tp_is_empty!9999)))

(assert (= (and b!2226188 ((_ is ElementMatch!6387) (regTwo!13286 expr!64))) b!2226317))

(assert (= (and b!2226188 ((_ is Concat!10725) (regTwo!13286 expr!64))) b!2226318))

(assert (= (and b!2226188 ((_ is Star!6387) (regTwo!13286 expr!64))) b!2226319))

(assert (= (and b!2226188 ((_ is Union!6387) (regTwo!13286 expr!64))) b!2226320))

(declare-fun e!1422779 () Bool)

(declare-fun e!1422780 () Bool)

(declare-fun setRes!19875 () Bool)

(declare-fun tp!695822 () Bool)

(declare-fun b!2226321 () Bool)

(declare-fun tp!695820 () Bool)

(assert (=> b!2226321 (= e!1422780 (and tp!695822 (inv!35507 (_2!15124 (_1!15125 (h!31553 (zeroValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))))) e!1422779 tp_is_empty!9999 setRes!19875 tp!695820))))

(declare-fun condSetEmpty!19875 () Bool)

(assert (=> b!2226321 (= condSetEmpty!19875 (= (_2!15125 (h!31553 (zeroValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))) ((as const (Array Context!3870 Bool)) false)))))

(declare-fun b!2226322 () Bool)

(declare-fun tp!695824 () Bool)

(assert (=> b!2226322 (= e!1422779 tp!695824)))

(assert (=> b!2226189 (= tp!695768 e!1422780)))

(declare-fun setIsEmpty!19875 () Bool)

(assert (=> setIsEmpty!19875 setRes!19875))

(declare-fun b!2226323 () Bool)

(declare-fun e!1422778 () Bool)

(declare-fun tp!695823 () Bool)

(assert (=> b!2226323 (= e!1422778 tp!695823)))

(declare-fun setElem!19875 () Context!3870)

(declare-fun tp!695821 () Bool)

(declare-fun setNonEmpty!19875 () Bool)

(assert (=> setNonEmpty!19875 (= setRes!19875 (and tp!695821 (inv!35507 setElem!19875) e!1422778))))

(declare-fun setRest!19875 () (InoxSet Context!3870))

(assert (=> setNonEmpty!19875 (= (_2!15125 (h!31553 (zeroValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3870 Bool)) false) setElem!19875 true) setRest!19875))))

(assert (= b!2226321 b!2226322))

(assert (= (and b!2226321 condSetEmpty!19875) setIsEmpty!19875))

(assert (= (and b!2226321 (not condSetEmpty!19875)) setNonEmpty!19875))

(assert (= setNonEmpty!19875 b!2226323))

(assert (= (and b!2226189 ((_ is Cons!26152) (zeroValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))) b!2226321))

(declare-fun m!2665578 () Bool)

(assert (=> b!2226321 m!2665578))

(declare-fun m!2665580 () Bool)

(assert (=> setNonEmpty!19875 m!2665580))

(declare-fun e!1422782 () Bool)

(declare-fun e!1422783 () Bool)

(declare-fun tp!695827 () Bool)

(declare-fun b!2226324 () Bool)

(declare-fun tp!695825 () Bool)

(declare-fun setRes!19876 () Bool)

(assert (=> b!2226324 (= e!1422783 (and tp!695827 (inv!35507 (_2!15124 (_1!15125 (h!31553 (minValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))))) e!1422782 tp_is_empty!9999 setRes!19876 tp!695825))))

(declare-fun condSetEmpty!19876 () Bool)

(assert (=> b!2226324 (= condSetEmpty!19876 (= (_2!15125 (h!31553 (minValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))) ((as const (Array Context!3870 Bool)) false)))))

(declare-fun b!2226325 () Bool)

(declare-fun tp!695829 () Bool)

(assert (=> b!2226325 (= e!1422782 tp!695829)))

(assert (=> b!2226189 (= tp!695773 e!1422783)))

(declare-fun setIsEmpty!19876 () Bool)

(assert (=> setIsEmpty!19876 setRes!19876))

(declare-fun b!2226326 () Bool)

(declare-fun e!1422781 () Bool)

(declare-fun tp!695828 () Bool)

(assert (=> b!2226326 (= e!1422781 tp!695828)))

(declare-fun setNonEmpty!19876 () Bool)

(declare-fun tp!695826 () Bool)

(declare-fun setElem!19876 () Context!3870)

(assert (=> setNonEmpty!19876 (= setRes!19876 (and tp!695826 (inv!35507 setElem!19876) e!1422781))))

(declare-fun setRest!19876 () (InoxSet Context!3870))

(assert (=> setNonEmpty!19876 (= (_2!15125 (h!31553 (minValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3870 Bool)) false) setElem!19876 true) setRest!19876))))

(assert (= b!2226324 b!2226325))

(assert (= (and b!2226324 condSetEmpty!19876) setIsEmpty!19876))

(assert (= (and b!2226324 (not condSetEmpty!19876)) setNonEmpty!19876))

(assert (= setNonEmpty!19876 b!2226326))

(assert (= (and b!2226189 ((_ is Cons!26152) (minValue!3283 (v!29720 (underlying!6251 (v!29721 (underlying!6252 (cache!3316 cacheDown!839)))))))) b!2226324))

(declare-fun m!2665582 () Bool)

(assert (=> b!2226324 m!2665582))

(declare-fun m!2665584 () Bool)

(assert (=> setNonEmpty!19876 m!2665584))

(declare-fun b!2226341 () Bool)

(declare-fun e!1422801 () Bool)

(declare-fun tp!695859 () Bool)

(assert (=> b!2226341 (= e!1422801 tp!695859)))

(declare-fun e!1422800 () Bool)

(declare-fun tp!695856 () Bool)

(declare-fun mapDefault!14259 () List!26246)

(declare-fun tp!695854 () Bool)

(declare-fun b!2226342 () Bool)

(declare-fun setRes!19882 () Bool)

(assert (=> b!2226342 (= e!1422800 (and tp!695854 (inv!35507 (_2!15124 (_1!15125 (h!31553 mapDefault!14259)))) e!1422801 tp_is_empty!9999 setRes!19882 tp!695856))))

(declare-fun condSetEmpty!19882 () Bool)

(assert (=> b!2226342 (= condSetEmpty!19882 (= (_2!15125 (h!31553 mapDefault!14259)) ((as const (Array Context!3870 Bool)) false)))))

(declare-fun setIsEmpty!19881 () Bool)

(assert (=> setIsEmpty!19881 setRes!19882))

(declare-fun mapNonEmpty!14259 () Bool)

(declare-fun mapRes!14259 () Bool)

(declare-fun tp!695858 () Bool)

(declare-fun e!1422799 () Bool)

(assert (=> mapNonEmpty!14259 (= mapRes!14259 (and tp!695858 e!1422799))))

(declare-fun mapValue!14259 () List!26246)

(declare-fun mapRest!14259 () (Array (_ BitVec 32) List!26246))

(declare-fun mapKey!14259 () (_ BitVec 32))

(assert (=> mapNonEmpty!14259 (= mapRest!14256 (store mapRest!14259 mapKey!14259 mapValue!14259))))

(declare-fun setIsEmpty!19882 () Bool)

(declare-fun setRes!19881 () Bool)

(assert (=> setIsEmpty!19882 setRes!19881))

(declare-fun b!2226343 () Bool)

(declare-fun e!1422798 () Bool)

(declare-fun tp!695860 () Bool)

(assert (=> b!2226343 (= e!1422798 tp!695860)))

(declare-fun b!2226344 () Bool)

(declare-fun e!1422797 () Bool)

(declare-fun tp!695861 () Bool)

(assert (=> b!2226344 (= e!1422797 tp!695861)))

(declare-fun tp!695862 () Bool)

(declare-fun tp!695855 () Bool)

(declare-fun b!2226345 () Bool)

(assert (=> b!2226345 (= e!1422799 (and tp!695855 (inv!35507 (_2!15124 (_1!15125 (h!31553 mapValue!14259)))) e!1422797 tp_is_empty!9999 setRes!19881 tp!695862))))

(declare-fun condSetEmpty!19881 () Bool)

(assert (=> b!2226345 (= condSetEmpty!19881 (= (_2!15125 (h!31553 mapValue!14259)) ((as const (Array Context!3870 Bool)) false)))))

(declare-fun setElem!19881 () Context!3870)

(declare-fun setNonEmpty!19881 () Bool)

(declare-fun tp!695857 () Bool)

(assert (=> setNonEmpty!19881 (= setRes!19882 (and tp!695857 (inv!35507 setElem!19881) e!1422798))))

(declare-fun setRest!19882 () (InoxSet Context!3870))

(assert (=> setNonEmpty!19881 (= (_2!15125 (h!31553 mapDefault!14259)) ((_ map or) (store ((as const (Array Context!3870 Bool)) false) setElem!19881 true) setRest!19882))))

(declare-fun condMapEmpty!14259 () Bool)

(assert (=> mapNonEmpty!14256 (= condMapEmpty!14259 (= mapRest!14256 ((as const (Array (_ BitVec 32) List!26246)) mapDefault!14259)))))

(assert (=> mapNonEmpty!14256 (= tp!695770 (and e!1422800 mapRes!14259))))

(declare-fun b!2226346 () Bool)

(declare-fun e!1422796 () Bool)

(declare-fun tp!695853 () Bool)

(assert (=> b!2226346 (= e!1422796 tp!695853)))

(declare-fun setNonEmpty!19882 () Bool)

(declare-fun setElem!19882 () Context!3870)

(declare-fun tp!695852 () Bool)

(assert (=> setNonEmpty!19882 (= setRes!19881 (and tp!695852 (inv!35507 setElem!19882) e!1422796))))

(declare-fun setRest!19881 () (InoxSet Context!3870))

(assert (=> setNonEmpty!19882 (= (_2!15125 (h!31553 mapValue!14259)) ((_ map or) (store ((as const (Array Context!3870 Bool)) false) setElem!19882 true) setRest!19881))))

(declare-fun mapIsEmpty!14259 () Bool)

(assert (=> mapIsEmpty!14259 mapRes!14259))

(assert (= (and mapNonEmpty!14256 condMapEmpty!14259) mapIsEmpty!14259))

(assert (= (and mapNonEmpty!14256 (not condMapEmpty!14259)) mapNonEmpty!14259))

(assert (= b!2226345 b!2226344))

(assert (= (and b!2226345 condSetEmpty!19881) setIsEmpty!19882))

(assert (= (and b!2226345 (not condSetEmpty!19881)) setNonEmpty!19882))

(assert (= setNonEmpty!19882 b!2226346))

(assert (= (and mapNonEmpty!14259 ((_ is Cons!26152) mapValue!14259)) b!2226345))

(assert (= b!2226342 b!2226341))

(assert (= (and b!2226342 condSetEmpty!19882) setIsEmpty!19881))

(assert (= (and b!2226342 (not condSetEmpty!19882)) setNonEmpty!19881))

(assert (= setNonEmpty!19881 b!2226343))

(assert (= (and mapNonEmpty!14256 ((_ is Cons!26152) mapDefault!14259)) b!2226342))

(declare-fun m!2665586 () Bool)

(assert (=> b!2226345 m!2665586))

(declare-fun m!2665588 () Bool)

(assert (=> setNonEmpty!19882 m!2665588))

(declare-fun m!2665590 () Bool)

(assert (=> mapNonEmpty!14259 m!2665590))

(declare-fun m!2665592 () Bool)

(assert (=> b!2226342 m!2665592))

(declare-fun m!2665594 () Bool)

(assert (=> setNonEmpty!19881 m!2665594))

(declare-fun tp!695863 () Bool)

(declare-fun setRes!19883 () Bool)

(declare-fun e!1422804 () Bool)

(declare-fun tp!695865 () Bool)

(declare-fun e!1422803 () Bool)

(declare-fun b!2226347 () Bool)

(assert (=> b!2226347 (= e!1422804 (and tp!695865 (inv!35507 (_2!15124 (_1!15125 (h!31553 mapValue!14256)))) e!1422803 tp_is_empty!9999 setRes!19883 tp!695863))))

(declare-fun condSetEmpty!19883 () Bool)

(assert (=> b!2226347 (= condSetEmpty!19883 (= (_2!15125 (h!31553 mapValue!14256)) ((as const (Array Context!3870 Bool)) false)))))

(declare-fun b!2226348 () Bool)

(declare-fun tp!695867 () Bool)

(assert (=> b!2226348 (= e!1422803 tp!695867)))

(assert (=> mapNonEmpty!14256 (= tp!695766 e!1422804)))

(declare-fun setIsEmpty!19883 () Bool)

(assert (=> setIsEmpty!19883 setRes!19883))

(declare-fun b!2226349 () Bool)

(declare-fun e!1422802 () Bool)

(declare-fun tp!695866 () Bool)

(assert (=> b!2226349 (= e!1422802 tp!695866)))

(declare-fun setElem!19883 () Context!3870)

(declare-fun tp!695864 () Bool)

(declare-fun setNonEmpty!19883 () Bool)

(assert (=> setNonEmpty!19883 (= setRes!19883 (and tp!695864 (inv!35507 setElem!19883) e!1422802))))

(declare-fun setRest!19883 () (InoxSet Context!3870))

(assert (=> setNonEmpty!19883 (= (_2!15125 (h!31553 mapValue!14256)) ((_ map or) (store ((as const (Array Context!3870 Bool)) false) setElem!19883 true) setRest!19883))))

(assert (= b!2226347 b!2226348))

(assert (= (and b!2226347 condSetEmpty!19883) setIsEmpty!19883))

(assert (= (and b!2226347 (not condSetEmpty!19883)) setNonEmpty!19883))

(assert (= setNonEmpty!19883 b!2226349))

(assert (= (and mapNonEmpty!14256 ((_ is Cons!26152) mapValue!14256)) b!2226347))

(declare-fun m!2665596 () Bool)

(assert (=> b!2226347 m!2665596))

(declare-fun m!2665598 () Bool)

(assert (=> setNonEmpty!19883 m!2665598))

(declare-fun e!1422805 () Bool)

(assert (=> b!2226197 (= tp!695767 e!1422805)))

(declare-fun b!2226352 () Bool)

(declare-fun tp!695872 () Bool)

(assert (=> b!2226352 (= e!1422805 tp!695872)))

(declare-fun b!2226351 () Bool)

(declare-fun tp!695871 () Bool)

(declare-fun tp!695870 () Bool)

(assert (=> b!2226351 (= e!1422805 (and tp!695871 tp!695870))))

(declare-fun b!2226353 () Bool)

(declare-fun tp!695868 () Bool)

(declare-fun tp!695869 () Bool)

(assert (=> b!2226353 (= e!1422805 (and tp!695868 tp!695869))))

(declare-fun b!2226350 () Bool)

(assert (=> b!2226350 (= e!1422805 tp_is_empty!9999)))

(assert (= (and b!2226197 ((_ is ElementMatch!6387) (regOne!13287 expr!64))) b!2226350))

(assert (= (and b!2226197 ((_ is Concat!10725) (regOne!13287 expr!64))) b!2226351))

(assert (= (and b!2226197 ((_ is Star!6387) (regOne!13287 expr!64))) b!2226352))

(assert (= (and b!2226197 ((_ is Union!6387) (regOne!13287 expr!64))) b!2226353))

(declare-fun e!1422806 () Bool)

(assert (=> b!2226197 (= tp!695761 e!1422806)))

(declare-fun b!2226356 () Bool)

(declare-fun tp!695877 () Bool)

(assert (=> b!2226356 (= e!1422806 tp!695877)))

(declare-fun b!2226355 () Bool)

(declare-fun tp!695876 () Bool)

(declare-fun tp!695875 () Bool)

(assert (=> b!2226355 (= e!1422806 (and tp!695876 tp!695875))))

(declare-fun b!2226357 () Bool)

(declare-fun tp!695873 () Bool)

(declare-fun tp!695874 () Bool)

(assert (=> b!2226357 (= e!1422806 (and tp!695873 tp!695874))))

(declare-fun b!2226354 () Bool)

(assert (=> b!2226354 (= e!1422806 tp_is_empty!9999)))

(assert (= (and b!2226197 ((_ is ElementMatch!6387) (regTwo!13287 expr!64))) b!2226354))

(assert (= (and b!2226197 ((_ is Concat!10725) (regTwo!13287 expr!64))) b!2226355))

(assert (= (and b!2226197 ((_ is Star!6387) (regTwo!13287 expr!64))) b!2226356))

(assert (= (and b!2226197 ((_ is Union!6387) (regTwo!13287 expr!64))) b!2226357))

(check-sat (not bm!133304) (not b!2226312) (not bm!133289) (not b!2226351) (not b!2226281) (not d!664571) (not b!2226298) (not setNonEmpty!19876) (not b!2226342) (not b!2226323) (not b!2226356) (not d!664585) (not bm!133286) (not b!2226321) (not b_next!65265) (not b!2226324) (not b!2226349) (not setNonEmpty!19883) (not b!2226326) (not setNonEmpty!19881) tp_is_empty!9999 (not b!2226296) (not d!664577) (not b!2226348) (not b!2226316) (not b!2226318) (not b!2226319) (not b!2226346) (not b!2226310) (not b!2226314) (not b!2226297) (not setNonEmpty!19882) (not b!2226280) (not bm!133288) b_and!174551 (not b!2226315) (not b_next!65267) (not b!2226355) (not b!2226341) (not b!2226224) (not b!2226236) (not setNonEmpty!19874) (not b!2226311) (not b!2226353) (not b!2226357) (not b!2226204) (not b!2226320) (not setNonEmpty!19875) (not b!2226344) b_and!174549 (not b!2226322) (not b!2226352) (not bm!133307) (not b!2226325) (not bm!133306) (not b!2226347) (not b!2226234) (not bm!133291) (not b!2226343) (not mapNonEmpty!14259) (not b!2226287) (not b!2226345))
(check-sat b_and!174549 b_and!174551 (not b_next!65267) (not b_next!65265))
