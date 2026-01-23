; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217278 () Bool)

(assert start!217278)

(declare-fun b!2226783 () Bool)

(declare-fun b_free!64585 () Bool)

(declare-fun b_next!65289 () Bool)

(assert (=> b!2226783 (= b_free!64585 (not b_next!65289))))

(declare-fun tp!696211 () Bool)

(declare-fun b_and!174573 () Bool)

(assert (=> b!2226783 (= tp!696211 b_and!174573)))

(declare-fun b!2226790 () Bool)

(declare-fun b_free!64587 () Bool)

(declare-fun b_next!65291 () Bool)

(assert (=> b!2226790 (= b_free!64587 (not b_next!65291))))

(declare-fun tp!696206 () Bool)

(declare-fun b_and!174575 () Bool)

(assert (=> b!2226790 (= tp!696206 b_and!174575)))

(declare-fun e!1423096 () Bool)

(declare-fun e!1423087 () Bool)

(assert (=> b!2226783 (= e!1423096 (and e!1423087 tp!696211))))

(declare-fun b!2226784 () Bool)

(declare-fun e!1423086 () Bool)

(declare-fun e!1423091 () Bool)

(assert (=> b!2226784 (= e!1423086 e!1423091)))

(declare-fun mapNonEmpty!14280 () Bool)

(declare-fun mapRes!14280 () Bool)

(declare-fun tp!696205 () Bool)

(declare-fun tp!696215 () Bool)

(assert (=> mapNonEmpty!14280 (= mapRes!14280 (and tp!696205 tp!696215))))

(declare-fun mapKey!14280 () (_ BitVec 32))

(declare-datatypes ((C!12932 0))(
  ( (C!12933 (val!7514 Int)) )
))
(declare-datatypes ((Regex!6393 0))(
  ( (ElementMatch!6393 (c!355317 C!12932)) (Concat!10731 (regOne!13298 Regex!6393) (regTwo!13298 Regex!6393)) (EmptyExpr!6393) (Star!6393 (reg!6722 Regex!6393)) (EmptyLang!6393) (Union!6393 (regOne!13299 Regex!6393) (regTwo!13299 Regex!6393)) )
))
(declare-datatypes ((List!26257 0))(
  ( (Nil!26163) (Cons!26163 (h!31564 Regex!6393) (t!199669 List!26257)) )
))
(declare-datatypes ((Context!3882 0))(
  ( (Context!3883 (exprs!2441 List!26257)) )
))
(declare-datatypes ((array!10452 0))(
  ( (array!10453 (arr!4649 (Array (_ BitVec 32) (_ BitVec 64))) (size!20430 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3858 0))(
  ( (tuple3!3859 (_1!15139 Regex!6393) (_2!15139 Context!3882) (_3!2399 C!12932)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25480 0))(
  ( (tuple2!25481 (_1!15140 tuple3!3858) (_2!15140 (InoxSet Context!3882))) )
))
(declare-datatypes ((List!26258 0))(
  ( (Nil!26164) (Cons!26164 (h!31565 tuple2!25480) (t!199670 List!26258)) )
))
(declare-datatypes ((array!10454 0))(
  ( (array!10455 (arr!4650 (Array (_ BitVec 32) List!26258)) (size!20431 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6062 0))(
  ( (LongMapFixedSize!6063 (defaultEntry!3396 Int) (mask!7581 (_ BitVec 32)) (extraKeys!3279 (_ BitVec 32)) (zeroValue!3289 List!26258) (minValue!3289 List!26258) (_size!6109 (_ BitVec 32)) (_keys!3328 array!10452) (_values!3311 array!10454) (_vacant!3092 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11941 0))(
  ( (Cell!11942 (v!29735 LongMapFixedSize!6062)) )
))
(declare-datatypes ((MutLongMap!3031 0))(
  ( (LongMap!3031 (underlying!6263 Cell!11941)) (MutLongMapExt!3030 (__x!17319 Int)) )
))
(declare-datatypes ((Cell!11943 0))(
  ( (Cell!11944 (v!29736 MutLongMap!3031)) )
))
(declare-datatypes ((Hashable!2941 0))(
  ( (HashableExt!2940 (__x!17320 Int)) )
))
(declare-datatypes ((MutableMap!2941 0))(
  ( (MutableMapExt!2940 (__x!17321 Int)) (HashMap!2941 (underlying!6264 Cell!11943) (hashF!4864 Hashable!2941) (_size!6110 (_ BitVec 32)) (defaultValue!3103 Int)) )
))
(declare-datatypes ((CacheDown!1928 0))(
  ( (CacheDown!1929 (cache!3322 MutableMap!2941)) )
))
(declare-fun cacheDown!839 () CacheDown!1928)

(declare-fun mapRest!14280 () (Array (_ BitVec 32) List!26258))

(declare-fun mapValue!14280 () List!26258)

(assert (=> mapNonEmpty!14280 (= (arr!4650 (_values!3311 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) (store mapRest!14280 mapKey!14280 mapValue!14280))))

(declare-fun b!2226785 () Bool)

(declare-fun e!1423093 () Bool)

(assert (=> b!2226785 (= e!1423093 e!1423096)))

(declare-fun b!2226786 () Bool)

(declare-fun e!1423088 () Bool)

(declare-fun tp!696213 () Bool)

(declare-fun tp!696203 () Bool)

(assert (=> b!2226786 (= e!1423088 (and tp!696213 tp!696203))))

(declare-fun b!2226787 () Bool)

(declare-fun res!954706 () Bool)

(declare-fun e!1423092 () Bool)

(assert (=> b!2226787 (=> (not res!954706) (not e!1423092))))

(declare-fun expr!64 () Regex!6393)

(get-info :version)

(assert (=> b!2226787 (= res!954706 ((_ is Concat!10731) expr!64))))

(declare-fun b!2226788 () Bool)

(declare-fun e!1423097 () Bool)

(declare-fun nullable!1747 (Regex!6393) Bool)

(assert (=> b!2226788 (= e!1423097 (not (nullable!1747 (regOne!13298 expr!64))))))

(declare-fun b!2226789 () Bool)

(declare-fun validRegex!2371 (Regex!6393) Bool)

(assert (=> b!2226789 (= e!1423092 (not (validRegex!2371 (regOne!13298 expr!64))))))

(declare-fun res!954709 () Bool)

(assert (=> start!217278 (=> (not res!954709) (not e!1423092))))

(assert (=> start!217278 (= res!954709 (validRegex!2371 expr!64))))

(assert (=> start!217278 e!1423092))

(assert (=> start!217278 e!1423088))

(declare-fun inv!35521 (CacheDown!1928) Bool)

(assert (=> start!217278 (and (inv!35521 cacheDown!839) e!1423093)))

(declare-fun context!86 () Context!3882)

(declare-fun e!1423094 () Bool)

(declare-fun inv!35522 (Context!3882) Bool)

(assert (=> start!217278 (and (inv!35522 context!86) e!1423094)))

(declare-fun tp_is_empty!10011 () Bool)

(assert (=> start!217278 tp_is_empty!10011))

(declare-fun tp!696204 () Bool)

(declare-fun tp!696207 () Bool)

(declare-fun e!1423090 () Bool)

(declare-fun array_inv!3335 (array!10452) Bool)

(declare-fun array_inv!3336 (array!10454) Bool)

(assert (=> b!2226790 (= e!1423091 (and tp!696206 tp!696207 tp!696204 (array_inv!3335 (_keys!3328 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) (array_inv!3336 (_values!3311 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) e!1423090))))

(declare-fun b!2226791 () Bool)

(assert (=> b!2226791 (= e!1423088 tp_is_empty!10011)))

(declare-fun b!2226792 () Bool)

(declare-fun tp!696210 () Bool)

(assert (=> b!2226792 (= e!1423088 tp!696210)))

(declare-fun b!2226793 () Bool)

(declare-fun res!954708 () Bool)

(assert (=> b!2226793 (=> (not res!954708) (not e!1423092))))

(declare-fun a!1167 () C!12932)

(assert (=> b!2226793 (= res!954708 (and (or (not ((_ is ElementMatch!6393) expr!64)) (not (= (c!355317 expr!64) a!1167))) (not ((_ is Union!6393) expr!64))))))

(declare-fun b!2226794 () Bool)

(declare-fun tp!696214 () Bool)

(declare-fun tp!696208 () Bool)

(assert (=> b!2226794 (= e!1423088 (and tp!696214 tp!696208))))

(declare-fun b!2226795 () Bool)

(declare-fun res!954705 () Bool)

(assert (=> b!2226795 (=> (not res!954705) (not e!1423092))))

(declare-datatypes ((Option!5084 0))(
  ( (None!5083) (Some!5083 (v!29737 (InoxSet Context!3882))) )
))
(declare-fun get!7871 (CacheDown!1928 Regex!6393 Context!3882 C!12932) Option!5084)

(assert (=> b!2226795 (= res!954705 (not ((_ is Some!5083) (get!7871 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2226796 () Bool)

(declare-fun tp!696209 () Bool)

(assert (=> b!2226796 (= e!1423094 tp!696209)))

(declare-fun b!2226797 () Bool)

(declare-fun res!954707 () Bool)

(assert (=> b!2226797 (=> (not res!954707) (not e!1423092))))

(assert (=> b!2226797 (= res!954707 (validRegex!2371 (regTwo!13298 expr!64)))))

(declare-fun b!2226798 () Bool)

(declare-fun res!954710 () Bool)

(assert (=> b!2226798 (=> (not res!954710) (not e!1423092))))

(assert (=> b!2226798 (= res!954710 e!1423097)))

(declare-fun res!954704 () Bool)

(assert (=> b!2226798 (=> res!954704 e!1423097)))

(assert (=> b!2226798 (= res!954704 (not ((_ is Concat!10731) expr!64)))))

(declare-fun b!2226799 () Bool)

(declare-fun e!1423089 () Bool)

(declare-fun lt!830138 () MutLongMap!3031)

(assert (=> b!2226799 (= e!1423087 (and e!1423089 ((_ is LongMap!3031) lt!830138)))))

(assert (=> b!2226799 (= lt!830138 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))

(declare-fun b!2226800 () Bool)

(declare-fun tp!696212 () Bool)

(assert (=> b!2226800 (= e!1423090 (and tp!696212 mapRes!14280))))

(declare-fun condMapEmpty!14280 () Bool)

(declare-fun mapDefault!14280 () List!26258)

(assert (=> b!2226800 (= condMapEmpty!14280 (= (arr!4650 (_values!3311 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26258)) mapDefault!14280)))))

(declare-fun mapIsEmpty!14280 () Bool)

(assert (=> mapIsEmpty!14280 mapRes!14280))

(declare-fun b!2226801 () Bool)

(assert (=> b!2226801 (= e!1423089 e!1423086)))

(assert (= (and start!217278 res!954709) b!2226795))

(assert (= (and b!2226795 res!954705) b!2226793))

(assert (= (and b!2226793 res!954708) b!2226798))

(assert (= (and b!2226798 (not res!954704)) b!2226788))

(assert (= (and b!2226798 res!954710) b!2226787))

(assert (= (and b!2226787 res!954706) b!2226797))

(assert (= (and b!2226797 res!954707) b!2226789))

(assert (= (and start!217278 ((_ is ElementMatch!6393) expr!64)) b!2226791))

(assert (= (and start!217278 ((_ is Concat!10731) expr!64)) b!2226794))

(assert (= (and start!217278 ((_ is Star!6393) expr!64)) b!2226792))

(assert (= (and start!217278 ((_ is Union!6393) expr!64)) b!2226786))

(assert (= (and b!2226800 condMapEmpty!14280) mapIsEmpty!14280))

(assert (= (and b!2226800 (not condMapEmpty!14280)) mapNonEmpty!14280))

(assert (= b!2226790 b!2226800))

(assert (= b!2226784 b!2226790))

(assert (= b!2226801 b!2226784))

(assert (= (and b!2226799 ((_ is LongMap!3031) (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))) b!2226801))

(assert (= b!2226783 b!2226799))

(assert (= (and b!2226785 ((_ is HashMap!2941) (cache!3322 cacheDown!839))) b!2226783))

(assert (= start!217278 b!2226785))

(assert (= start!217278 b!2226796))

(declare-fun m!2665762 () Bool)

(assert (=> b!2226795 m!2665762))

(declare-fun m!2665764 () Bool)

(assert (=> start!217278 m!2665764))

(declare-fun m!2665766 () Bool)

(assert (=> start!217278 m!2665766))

(declare-fun m!2665768 () Bool)

(assert (=> start!217278 m!2665768))

(declare-fun m!2665770 () Bool)

(assert (=> b!2226789 m!2665770))

(declare-fun m!2665772 () Bool)

(assert (=> mapNonEmpty!14280 m!2665772))

(declare-fun m!2665774 () Bool)

(assert (=> b!2226797 m!2665774))

(declare-fun m!2665776 () Bool)

(assert (=> b!2226788 m!2665776))

(declare-fun m!2665778 () Bool)

(assert (=> b!2226790 m!2665778))

(declare-fun m!2665780 () Bool)

(assert (=> b!2226790 m!2665780))

(check-sat (not b!2226788) (not b!2226794) (not b_next!65289) (not b!2226800) (not b!2226795) (not b!2226797) (not start!217278) b_and!174573 (not b!2226792) b_and!174575 (not b_next!65291) tp_is_empty!10011 (not mapNonEmpty!14280) (not b!2226789) (not b!2226796) (not b!2226786) (not b!2226790))
(check-sat b_and!174573 b_and!174575 (not b_next!65291) (not b_next!65289))
(get-model)

(declare-fun bm!133331 () Bool)

(declare-fun call!133336 () Bool)

(declare-fun call!133338 () Bool)

(assert (=> bm!133331 (= call!133336 call!133338)))

(declare-fun b!2226820 () Bool)

(declare-fun e!1423114 () Bool)

(assert (=> b!2226820 (= e!1423114 call!133336)))

(declare-fun d!664608 () Bool)

(declare-fun res!954723 () Bool)

(declare-fun e!1423113 () Bool)

(assert (=> d!664608 (=> res!954723 e!1423113)))

(assert (=> d!664608 (= res!954723 ((_ is ElementMatch!6393) expr!64))))

(assert (=> d!664608 (= (validRegex!2371 expr!64) e!1423113)))

(declare-fun b!2226821 () Bool)

(declare-fun res!954725 () Bool)

(declare-fun e!1423117 () Bool)

(assert (=> b!2226821 (=> res!954725 e!1423117)))

(assert (=> b!2226821 (= res!954725 (not ((_ is Concat!10731) expr!64)))))

(declare-fun e!1423118 () Bool)

(assert (=> b!2226821 (= e!1423118 e!1423117)))

(declare-fun b!2226822 () Bool)

(declare-fun e!1423112 () Bool)

(declare-fun e!1423115 () Bool)

(assert (=> b!2226822 (= e!1423112 e!1423115)))

(declare-fun res!954724 () Bool)

(assert (=> b!2226822 (= res!954724 (not (nullable!1747 (reg!6722 expr!64))))))

(assert (=> b!2226822 (=> (not res!954724) (not e!1423115))))

(declare-fun bm!133332 () Bool)

(declare-fun call!133337 () Bool)

(declare-fun c!355322 () Bool)

(assert (=> bm!133332 (= call!133337 (validRegex!2371 (ite c!355322 (regOne!13299 expr!64) (regOne!13298 expr!64))))))

(declare-fun b!2226823 () Bool)

(assert (=> b!2226823 (= e!1423112 e!1423118)))

(assert (=> b!2226823 (= c!355322 ((_ is Union!6393) expr!64))))

(declare-fun b!2226824 () Bool)

(declare-fun res!954721 () Bool)

(declare-fun e!1423116 () Bool)

(assert (=> b!2226824 (=> (not res!954721) (not e!1423116))))

(assert (=> b!2226824 (= res!954721 call!133337)))

(assert (=> b!2226824 (= e!1423118 e!1423116)))

(declare-fun b!2226825 () Bool)

(assert (=> b!2226825 (= e!1423116 call!133336)))

(declare-fun b!2226826 () Bool)

(assert (=> b!2226826 (= e!1423113 e!1423112)))

(declare-fun c!355323 () Bool)

(assert (=> b!2226826 (= c!355323 ((_ is Star!6393) expr!64))))

(declare-fun bm!133333 () Bool)

(assert (=> bm!133333 (= call!133338 (validRegex!2371 (ite c!355323 (reg!6722 expr!64) (ite c!355322 (regTwo!13299 expr!64) (regTwo!13298 expr!64)))))))

(declare-fun b!2226827 () Bool)

(assert (=> b!2226827 (= e!1423115 call!133338)))

(declare-fun b!2226828 () Bool)

(assert (=> b!2226828 (= e!1423117 e!1423114)))

(declare-fun res!954722 () Bool)

(assert (=> b!2226828 (=> (not res!954722) (not e!1423114))))

(assert (=> b!2226828 (= res!954722 call!133337)))

(assert (= (and d!664608 (not res!954723)) b!2226826))

(assert (= (and b!2226826 c!355323) b!2226822))

(assert (= (and b!2226826 (not c!355323)) b!2226823))

(assert (= (and b!2226822 res!954724) b!2226827))

(assert (= (and b!2226823 c!355322) b!2226824))

(assert (= (and b!2226823 (not c!355322)) b!2226821))

(assert (= (and b!2226824 res!954721) b!2226825))

(assert (= (and b!2226821 (not res!954725)) b!2226828))

(assert (= (and b!2226828 res!954722) b!2226820))

(assert (= (or b!2226825 b!2226820) bm!133331))

(assert (= (or b!2226824 b!2226828) bm!133332))

(assert (= (or b!2226827 bm!133331) bm!133333))

(declare-fun m!2665782 () Bool)

(assert (=> b!2226822 m!2665782))

(declare-fun m!2665784 () Bool)

(assert (=> bm!133332 m!2665784))

(declare-fun m!2665786 () Bool)

(assert (=> bm!133333 m!2665786))

(assert (=> start!217278 d!664608))

(declare-fun d!664610 () Bool)

(declare-fun res!954728 () Bool)

(declare-fun e!1423121 () Bool)

(assert (=> d!664610 (=> (not res!954728) (not e!1423121))))

(assert (=> d!664610 (= res!954728 ((_ is HashMap!2941) (cache!3322 cacheDown!839)))))

(assert (=> d!664610 (= (inv!35521 cacheDown!839) e!1423121)))

(declare-fun b!2226831 () Bool)

(declare-fun validCacheMapDown!269 (MutableMap!2941) Bool)

(assert (=> b!2226831 (= e!1423121 (validCacheMapDown!269 (cache!3322 cacheDown!839)))))

(assert (= (and d!664610 res!954728) b!2226831))

(declare-fun m!2665788 () Bool)

(assert (=> b!2226831 m!2665788))

(assert (=> start!217278 d!664610))

(declare-fun d!664612 () Bool)

(declare-fun lambda!84205 () Int)

(declare-fun forall!5347 (List!26257 Int) Bool)

(assert (=> d!664612 (= (inv!35522 context!86) (forall!5347 (exprs!2441 context!86) lambda!84205))))

(declare-fun bs!453546 () Bool)

(assert (= bs!453546 d!664612))

(declare-fun m!2665790 () Bool)

(assert (=> bs!453546 m!2665790))

(assert (=> start!217278 d!664612))

(declare-fun d!664614 () Bool)

(assert (=> d!664614 (= (array_inv!3335 (_keys!3328 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) (bvsge (size!20430 (_keys!3328 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2226790 d!664614))

(declare-fun d!664616 () Bool)

(assert (=> d!664616 (= (array_inv!3336 (_values!3311 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) (bvsge (size!20431 (_values!3311 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2226790 d!664616))

(declare-fun d!664618 () Bool)

(declare-fun e!1423124 () Bool)

(assert (=> d!664618 e!1423124))

(declare-fun res!954731 () Bool)

(assert (=> d!664618 (=> res!954731 e!1423124)))

(declare-fun lt!830141 () Option!5084)

(declare-fun isEmpty!14885 (Option!5084) Bool)

(assert (=> d!664618 (= res!954731 (isEmpty!14885 lt!830141))))

(declare-fun choose!13115 (CacheDown!1928 Regex!6393 Context!3882 C!12932) Option!5084)

(assert (=> d!664618 (= lt!830141 (choose!13115 cacheDown!839 expr!64 context!86 a!1167))))

(assert (=> d!664618 (validCacheMapDown!269 (cache!3322 cacheDown!839))))

(assert (=> d!664618 (= (get!7871 cacheDown!839 expr!64 context!86 a!1167) lt!830141)))

(declare-fun b!2226834 () Bool)

(declare-fun get!7872 (Option!5084) (InoxSet Context!3882))

(declare-fun derivationStepZipperDown!35 (Regex!6393 Context!3882 C!12932) (InoxSet Context!3882))

(assert (=> b!2226834 (= e!1423124 (= (get!7872 lt!830141) (derivationStepZipperDown!35 expr!64 context!86 a!1167)))))

(assert (= (and d!664618 (not res!954731)) b!2226834))

(declare-fun m!2665792 () Bool)

(assert (=> d!664618 m!2665792))

(declare-fun m!2665794 () Bool)

(assert (=> d!664618 m!2665794))

(assert (=> d!664618 m!2665788))

(declare-fun m!2665796 () Bool)

(assert (=> b!2226834 m!2665796))

(declare-fun m!2665798 () Bool)

(assert (=> b!2226834 m!2665798))

(assert (=> b!2226795 d!664618))

(declare-fun bm!133334 () Bool)

(declare-fun call!133339 () Bool)

(declare-fun call!133341 () Bool)

(assert (=> bm!133334 (= call!133339 call!133341)))

(declare-fun b!2226835 () Bool)

(declare-fun e!1423127 () Bool)

(assert (=> b!2226835 (= e!1423127 call!133339)))

(declare-fun d!664620 () Bool)

(declare-fun res!954734 () Bool)

(declare-fun e!1423126 () Bool)

(assert (=> d!664620 (=> res!954734 e!1423126)))

(assert (=> d!664620 (= res!954734 ((_ is ElementMatch!6393) (regOne!13298 expr!64)))))

(assert (=> d!664620 (= (validRegex!2371 (regOne!13298 expr!64)) e!1423126)))

(declare-fun b!2226836 () Bool)

(declare-fun res!954736 () Bool)

(declare-fun e!1423130 () Bool)

(assert (=> b!2226836 (=> res!954736 e!1423130)))

(assert (=> b!2226836 (= res!954736 (not ((_ is Concat!10731) (regOne!13298 expr!64))))))

(declare-fun e!1423131 () Bool)

(assert (=> b!2226836 (= e!1423131 e!1423130)))

(declare-fun b!2226837 () Bool)

(declare-fun e!1423125 () Bool)

(declare-fun e!1423128 () Bool)

(assert (=> b!2226837 (= e!1423125 e!1423128)))

(declare-fun res!954735 () Bool)

(assert (=> b!2226837 (= res!954735 (not (nullable!1747 (reg!6722 (regOne!13298 expr!64)))))))

(assert (=> b!2226837 (=> (not res!954735) (not e!1423128))))

(declare-fun bm!133335 () Bool)

(declare-fun call!133340 () Bool)

(declare-fun c!355324 () Bool)

(assert (=> bm!133335 (= call!133340 (validRegex!2371 (ite c!355324 (regOne!13299 (regOne!13298 expr!64)) (regOne!13298 (regOne!13298 expr!64)))))))

(declare-fun b!2226838 () Bool)

(assert (=> b!2226838 (= e!1423125 e!1423131)))

(assert (=> b!2226838 (= c!355324 ((_ is Union!6393) (regOne!13298 expr!64)))))

(declare-fun b!2226839 () Bool)

(declare-fun res!954732 () Bool)

(declare-fun e!1423129 () Bool)

(assert (=> b!2226839 (=> (not res!954732) (not e!1423129))))

(assert (=> b!2226839 (= res!954732 call!133340)))

(assert (=> b!2226839 (= e!1423131 e!1423129)))

(declare-fun b!2226840 () Bool)

(assert (=> b!2226840 (= e!1423129 call!133339)))

(declare-fun b!2226841 () Bool)

(assert (=> b!2226841 (= e!1423126 e!1423125)))

(declare-fun c!355325 () Bool)

(assert (=> b!2226841 (= c!355325 ((_ is Star!6393) (regOne!13298 expr!64)))))

(declare-fun bm!133336 () Bool)

(assert (=> bm!133336 (= call!133341 (validRegex!2371 (ite c!355325 (reg!6722 (regOne!13298 expr!64)) (ite c!355324 (regTwo!13299 (regOne!13298 expr!64)) (regTwo!13298 (regOne!13298 expr!64))))))))

(declare-fun b!2226842 () Bool)

(assert (=> b!2226842 (= e!1423128 call!133341)))

(declare-fun b!2226843 () Bool)

(assert (=> b!2226843 (= e!1423130 e!1423127)))

(declare-fun res!954733 () Bool)

(assert (=> b!2226843 (=> (not res!954733) (not e!1423127))))

(assert (=> b!2226843 (= res!954733 call!133340)))

(assert (= (and d!664620 (not res!954734)) b!2226841))

(assert (= (and b!2226841 c!355325) b!2226837))

(assert (= (and b!2226841 (not c!355325)) b!2226838))

(assert (= (and b!2226837 res!954735) b!2226842))

(assert (= (and b!2226838 c!355324) b!2226839))

(assert (= (and b!2226838 (not c!355324)) b!2226836))

(assert (= (and b!2226839 res!954732) b!2226840))

(assert (= (and b!2226836 (not res!954736)) b!2226843))

(assert (= (and b!2226843 res!954733) b!2226835))

(assert (= (or b!2226840 b!2226835) bm!133334))

(assert (= (or b!2226839 b!2226843) bm!133335))

(assert (= (or b!2226842 bm!133334) bm!133336))

(declare-fun m!2665800 () Bool)

(assert (=> b!2226837 m!2665800))

(declare-fun m!2665802 () Bool)

(assert (=> bm!133335 m!2665802))

(declare-fun m!2665804 () Bool)

(assert (=> bm!133336 m!2665804))

(assert (=> b!2226789 d!664620))

(declare-fun d!664622 () Bool)

(declare-fun nullableFct!407 (Regex!6393) Bool)

(assert (=> d!664622 (= (nullable!1747 (regOne!13298 expr!64)) (nullableFct!407 (regOne!13298 expr!64)))))

(declare-fun bs!453547 () Bool)

(assert (= bs!453547 d!664622))

(declare-fun m!2665806 () Bool)

(assert (=> bs!453547 m!2665806))

(assert (=> b!2226788 d!664622))

(declare-fun bm!133337 () Bool)

(declare-fun call!133342 () Bool)

(declare-fun call!133344 () Bool)

(assert (=> bm!133337 (= call!133342 call!133344)))

(declare-fun b!2226844 () Bool)

(declare-fun e!1423134 () Bool)

(assert (=> b!2226844 (= e!1423134 call!133342)))

(declare-fun d!664624 () Bool)

(declare-fun res!954739 () Bool)

(declare-fun e!1423133 () Bool)

(assert (=> d!664624 (=> res!954739 e!1423133)))

(assert (=> d!664624 (= res!954739 ((_ is ElementMatch!6393) (regTwo!13298 expr!64)))))

(assert (=> d!664624 (= (validRegex!2371 (regTwo!13298 expr!64)) e!1423133)))

(declare-fun b!2226845 () Bool)

(declare-fun res!954741 () Bool)

(declare-fun e!1423137 () Bool)

(assert (=> b!2226845 (=> res!954741 e!1423137)))

(assert (=> b!2226845 (= res!954741 (not ((_ is Concat!10731) (regTwo!13298 expr!64))))))

(declare-fun e!1423138 () Bool)

(assert (=> b!2226845 (= e!1423138 e!1423137)))

(declare-fun b!2226846 () Bool)

(declare-fun e!1423132 () Bool)

(declare-fun e!1423135 () Bool)

(assert (=> b!2226846 (= e!1423132 e!1423135)))

(declare-fun res!954740 () Bool)

(assert (=> b!2226846 (= res!954740 (not (nullable!1747 (reg!6722 (regTwo!13298 expr!64)))))))

(assert (=> b!2226846 (=> (not res!954740) (not e!1423135))))

(declare-fun bm!133338 () Bool)

(declare-fun call!133343 () Bool)

(declare-fun c!355326 () Bool)

(assert (=> bm!133338 (= call!133343 (validRegex!2371 (ite c!355326 (regOne!13299 (regTwo!13298 expr!64)) (regOne!13298 (regTwo!13298 expr!64)))))))

(declare-fun b!2226847 () Bool)

(assert (=> b!2226847 (= e!1423132 e!1423138)))

(assert (=> b!2226847 (= c!355326 ((_ is Union!6393) (regTwo!13298 expr!64)))))

(declare-fun b!2226848 () Bool)

(declare-fun res!954737 () Bool)

(declare-fun e!1423136 () Bool)

(assert (=> b!2226848 (=> (not res!954737) (not e!1423136))))

(assert (=> b!2226848 (= res!954737 call!133343)))

(assert (=> b!2226848 (= e!1423138 e!1423136)))

(declare-fun b!2226849 () Bool)

(assert (=> b!2226849 (= e!1423136 call!133342)))

(declare-fun b!2226850 () Bool)

(assert (=> b!2226850 (= e!1423133 e!1423132)))

(declare-fun c!355327 () Bool)

(assert (=> b!2226850 (= c!355327 ((_ is Star!6393) (regTwo!13298 expr!64)))))

(declare-fun bm!133339 () Bool)

(assert (=> bm!133339 (= call!133344 (validRegex!2371 (ite c!355327 (reg!6722 (regTwo!13298 expr!64)) (ite c!355326 (regTwo!13299 (regTwo!13298 expr!64)) (regTwo!13298 (regTwo!13298 expr!64))))))))

(declare-fun b!2226851 () Bool)

(assert (=> b!2226851 (= e!1423135 call!133344)))

(declare-fun b!2226852 () Bool)

(assert (=> b!2226852 (= e!1423137 e!1423134)))

(declare-fun res!954738 () Bool)

(assert (=> b!2226852 (=> (not res!954738) (not e!1423134))))

(assert (=> b!2226852 (= res!954738 call!133343)))

(assert (= (and d!664624 (not res!954739)) b!2226850))

(assert (= (and b!2226850 c!355327) b!2226846))

(assert (= (and b!2226850 (not c!355327)) b!2226847))

(assert (= (and b!2226846 res!954740) b!2226851))

(assert (= (and b!2226847 c!355326) b!2226848))

(assert (= (and b!2226847 (not c!355326)) b!2226845))

(assert (= (and b!2226848 res!954737) b!2226849))

(assert (= (and b!2226845 (not res!954741)) b!2226852))

(assert (= (and b!2226852 res!954738) b!2226844))

(assert (= (or b!2226849 b!2226844) bm!133337))

(assert (= (or b!2226848 b!2226852) bm!133338))

(assert (= (or b!2226851 bm!133337) bm!133339))

(declare-fun m!2665808 () Bool)

(assert (=> b!2226846 m!2665808))

(declare-fun m!2665810 () Bool)

(assert (=> bm!133338 m!2665810))

(declare-fun m!2665812 () Bool)

(assert (=> bm!133339 m!2665812))

(assert (=> b!2226797 d!664624))

(declare-fun e!1423145 () Bool)

(declare-fun b!2226861 () Bool)

(declare-fun tp!696227 () Bool)

(declare-fun setRes!19898 () Bool)

(declare-fun e!1423147 () Bool)

(declare-fun tp!696226 () Bool)

(assert (=> b!2226861 (= e!1423145 (and tp!696227 (inv!35522 (_2!15139 (_1!15140 (h!31565 (zeroValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))))) e!1423147 tp_is_empty!10011 setRes!19898 tp!696226))))

(declare-fun condSetEmpty!19898 () Bool)

(assert (=> b!2226861 (= condSetEmpty!19898 (= (_2!15140 (h!31565 (zeroValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))) ((as const (Array Context!3882 Bool)) false)))))

(declare-fun b!2226862 () Bool)

(declare-fun tp!696228 () Bool)

(assert (=> b!2226862 (= e!1423147 tp!696228)))

(declare-fun setIsEmpty!19898 () Bool)

(assert (=> setIsEmpty!19898 setRes!19898))

(assert (=> b!2226790 (= tp!696207 e!1423145)))

(declare-fun tp!696229 () Bool)

(declare-fun e!1423146 () Bool)

(declare-fun setElem!19898 () Context!3882)

(declare-fun setNonEmpty!19898 () Bool)

(assert (=> setNonEmpty!19898 (= setRes!19898 (and tp!696229 (inv!35522 setElem!19898) e!1423146))))

(declare-fun setRest!19898 () (InoxSet Context!3882))

(assert (=> setNonEmpty!19898 (= (_2!15140 (h!31565 (zeroValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3882 Bool)) false) setElem!19898 true) setRest!19898))))

(declare-fun b!2226863 () Bool)

(declare-fun tp!696230 () Bool)

(assert (=> b!2226863 (= e!1423146 tp!696230)))

(assert (= b!2226861 b!2226862))

(assert (= (and b!2226861 condSetEmpty!19898) setIsEmpty!19898))

(assert (= (and b!2226861 (not condSetEmpty!19898)) setNonEmpty!19898))

(assert (= setNonEmpty!19898 b!2226863))

(assert (= (and b!2226790 ((_ is Cons!26164) (zeroValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))) b!2226861))

(declare-fun m!2665814 () Bool)

(assert (=> b!2226861 m!2665814))

(declare-fun m!2665816 () Bool)

(assert (=> setNonEmpty!19898 m!2665816))

(declare-fun tp!696231 () Bool)

(declare-fun b!2226864 () Bool)

(declare-fun e!1423150 () Bool)

(declare-fun e!1423148 () Bool)

(declare-fun tp!696232 () Bool)

(declare-fun setRes!19899 () Bool)

(assert (=> b!2226864 (= e!1423148 (and tp!696232 (inv!35522 (_2!15139 (_1!15140 (h!31565 (minValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))))) e!1423150 tp_is_empty!10011 setRes!19899 tp!696231))))

(declare-fun condSetEmpty!19899 () Bool)

(assert (=> b!2226864 (= condSetEmpty!19899 (= (_2!15140 (h!31565 (minValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))) ((as const (Array Context!3882 Bool)) false)))))

(declare-fun b!2226865 () Bool)

(declare-fun tp!696233 () Bool)

(assert (=> b!2226865 (= e!1423150 tp!696233)))

(declare-fun setIsEmpty!19899 () Bool)

(assert (=> setIsEmpty!19899 setRes!19899))

(assert (=> b!2226790 (= tp!696204 e!1423148)))

(declare-fun setNonEmpty!19899 () Bool)

(declare-fun e!1423149 () Bool)

(declare-fun setElem!19899 () Context!3882)

(declare-fun tp!696234 () Bool)

(assert (=> setNonEmpty!19899 (= setRes!19899 (and tp!696234 (inv!35522 setElem!19899) e!1423149))))

(declare-fun setRest!19899 () (InoxSet Context!3882))

(assert (=> setNonEmpty!19899 (= (_2!15140 (h!31565 (minValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3882 Bool)) false) setElem!19899 true) setRest!19899))))

(declare-fun b!2226866 () Bool)

(declare-fun tp!696235 () Bool)

(assert (=> b!2226866 (= e!1423149 tp!696235)))

(assert (= b!2226864 b!2226865))

(assert (= (and b!2226864 condSetEmpty!19899) setIsEmpty!19899))

(assert (= (and b!2226864 (not condSetEmpty!19899)) setNonEmpty!19899))

(assert (= setNonEmpty!19899 b!2226866))

(assert (= (and b!2226790 ((_ is Cons!26164) (minValue!3289 (v!29735 (underlying!6263 (v!29736 (underlying!6264 (cache!3322 cacheDown!839)))))))) b!2226864))

(declare-fun m!2665818 () Bool)

(assert (=> b!2226864 m!2665818))

(declare-fun m!2665820 () Bool)

(assert (=> setNonEmpty!19899 m!2665820))

(declare-fun e!1423164 () Bool)

(declare-fun tp!696266 () Bool)

(declare-fun setRes!19905 () Bool)

(declare-fun mapValue!14283 () List!26258)

(declare-fun b!2226881 () Bool)

(declare-fun e!1423165 () Bool)

(declare-fun tp!696263 () Bool)

(assert (=> b!2226881 (= e!1423164 (and tp!696266 (inv!35522 (_2!15139 (_1!15140 (h!31565 mapValue!14283)))) e!1423165 tp_is_empty!10011 setRes!19905 tp!696263))))

(declare-fun condSetEmpty!19904 () Bool)

(assert (=> b!2226881 (= condSetEmpty!19904 (= (_2!15140 (h!31565 mapValue!14283)) ((as const (Array Context!3882 Bool)) false)))))

(declare-fun setIsEmpty!19904 () Bool)

(declare-fun setRes!19904 () Bool)

(assert (=> setIsEmpty!19904 setRes!19904))

(declare-fun b!2226882 () Bool)

(declare-fun e!1423163 () Bool)

(declare-fun tp!696259 () Bool)

(assert (=> b!2226882 (= e!1423163 tp!696259)))

(declare-fun tp!696260 () Bool)

(declare-fun setNonEmpty!19905 () Bool)

(declare-fun setElem!19905 () Context!3882)

(declare-fun e!1423168 () Bool)

(assert (=> setNonEmpty!19905 (= setRes!19904 (and tp!696260 (inv!35522 setElem!19905) e!1423168))))

(declare-fun mapDefault!14283 () List!26258)

(declare-fun setRest!19905 () (InoxSet Context!3882))

(assert (=> setNonEmpty!19905 (= (_2!15140 (h!31565 mapDefault!14283)) ((_ map or) (store ((as const (Array Context!3882 Bool)) false) setElem!19905 true) setRest!19905))))

(declare-fun setIsEmpty!19905 () Bool)

(assert (=> setIsEmpty!19905 setRes!19905))

(declare-fun b!2226883 () Bool)

(declare-fun tp!696265 () Bool)

(declare-fun e!1423166 () Bool)

(declare-fun tp!696268 () Bool)

(assert (=> b!2226883 (= e!1423166 (and tp!696265 (inv!35522 (_2!15139 (_1!15140 (h!31565 mapDefault!14283)))) e!1423163 tp_is_empty!10011 setRes!19904 tp!696268))))

(declare-fun condSetEmpty!19905 () Bool)

(assert (=> b!2226883 (= condSetEmpty!19905 (= (_2!15140 (h!31565 mapDefault!14283)) ((as const (Array Context!3882 Bool)) false)))))

(declare-fun mapIsEmpty!14283 () Bool)

(declare-fun mapRes!14283 () Bool)

(assert (=> mapIsEmpty!14283 mapRes!14283))

(declare-fun b!2226884 () Bool)

(declare-fun e!1423167 () Bool)

(declare-fun tp!696264 () Bool)

(assert (=> b!2226884 (= e!1423167 tp!696264)))

(declare-fun mapNonEmpty!14283 () Bool)

(declare-fun tp!696267 () Bool)

(assert (=> mapNonEmpty!14283 (= mapRes!14283 (and tp!696267 e!1423164))))

(declare-fun mapKey!14283 () (_ BitVec 32))

(declare-fun mapRest!14283 () (Array (_ BitVec 32) List!26258))

(assert (=> mapNonEmpty!14283 (= mapRest!14280 (store mapRest!14283 mapKey!14283 mapValue!14283))))

(declare-fun b!2226885 () Bool)

(declare-fun tp!696262 () Bool)

(assert (=> b!2226885 (= e!1423168 tp!696262)))

(declare-fun b!2226886 () Bool)

(declare-fun tp!696258 () Bool)

(assert (=> b!2226886 (= e!1423165 tp!696258)))

(declare-fun setElem!19904 () Context!3882)

(declare-fun setNonEmpty!19904 () Bool)

(declare-fun tp!696261 () Bool)

(assert (=> setNonEmpty!19904 (= setRes!19905 (and tp!696261 (inv!35522 setElem!19904) e!1423167))))

(declare-fun setRest!19904 () (InoxSet Context!3882))

(assert (=> setNonEmpty!19904 (= (_2!15140 (h!31565 mapValue!14283)) ((_ map or) (store ((as const (Array Context!3882 Bool)) false) setElem!19904 true) setRest!19904))))

(declare-fun condMapEmpty!14283 () Bool)

(assert (=> mapNonEmpty!14280 (= condMapEmpty!14283 (= mapRest!14280 ((as const (Array (_ BitVec 32) List!26258)) mapDefault!14283)))))

(assert (=> mapNonEmpty!14280 (= tp!696205 (and e!1423166 mapRes!14283))))

(assert (= (and mapNonEmpty!14280 condMapEmpty!14283) mapIsEmpty!14283))

(assert (= (and mapNonEmpty!14280 (not condMapEmpty!14283)) mapNonEmpty!14283))

(assert (= b!2226881 b!2226886))

(assert (= (and b!2226881 condSetEmpty!19904) setIsEmpty!19905))

(assert (= (and b!2226881 (not condSetEmpty!19904)) setNonEmpty!19904))

(assert (= setNonEmpty!19904 b!2226884))

(assert (= (and mapNonEmpty!14283 ((_ is Cons!26164) mapValue!14283)) b!2226881))

(assert (= b!2226883 b!2226882))

(assert (= (and b!2226883 condSetEmpty!19905) setIsEmpty!19904))

(assert (= (and b!2226883 (not condSetEmpty!19905)) setNonEmpty!19905))

(assert (= setNonEmpty!19905 b!2226885))

(assert (= (and mapNonEmpty!14280 ((_ is Cons!26164) mapDefault!14283)) b!2226883))

(declare-fun m!2665822 () Bool)

(assert (=> mapNonEmpty!14283 m!2665822))

(declare-fun m!2665824 () Bool)

(assert (=> b!2226883 m!2665824))

(declare-fun m!2665826 () Bool)

(assert (=> setNonEmpty!19904 m!2665826))

(declare-fun m!2665828 () Bool)

(assert (=> b!2226881 m!2665828))

(declare-fun m!2665830 () Bool)

(assert (=> setNonEmpty!19905 m!2665830))

(declare-fun e!1423171 () Bool)

(declare-fun tp!696270 () Bool)

(declare-fun b!2226887 () Bool)

(declare-fun e!1423169 () Bool)

(declare-fun setRes!19906 () Bool)

(declare-fun tp!696269 () Bool)

(assert (=> b!2226887 (= e!1423169 (and tp!696270 (inv!35522 (_2!15139 (_1!15140 (h!31565 mapValue!14280)))) e!1423171 tp_is_empty!10011 setRes!19906 tp!696269))))

(declare-fun condSetEmpty!19906 () Bool)

(assert (=> b!2226887 (= condSetEmpty!19906 (= (_2!15140 (h!31565 mapValue!14280)) ((as const (Array Context!3882 Bool)) false)))))

(declare-fun b!2226888 () Bool)

(declare-fun tp!696271 () Bool)

(assert (=> b!2226888 (= e!1423171 tp!696271)))

(declare-fun setIsEmpty!19906 () Bool)

(assert (=> setIsEmpty!19906 setRes!19906))

(assert (=> mapNonEmpty!14280 (= tp!696215 e!1423169)))

(declare-fun setElem!19906 () Context!3882)

(declare-fun e!1423170 () Bool)

(declare-fun setNonEmpty!19906 () Bool)

(declare-fun tp!696272 () Bool)

(assert (=> setNonEmpty!19906 (= setRes!19906 (and tp!696272 (inv!35522 setElem!19906) e!1423170))))

(declare-fun setRest!19906 () (InoxSet Context!3882))

(assert (=> setNonEmpty!19906 (= (_2!15140 (h!31565 mapValue!14280)) ((_ map or) (store ((as const (Array Context!3882 Bool)) false) setElem!19906 true) setRest!19906))))

(declare-fun b!2226889 () Bool)

(declare-fun tp!696273 () Bool)

(assert (=> b!2226889 (= e!1423170 tp!696273)))

(assert (= b!2226887 b!2226888))

(assert (= (and b!2226887 condSetEmpty!19906) setIsEmpty!19906))

(assert (= (and b!2226887 (not condSetEmpty!19906)) setNonEmpty!19906))

(assert (= setNonEmpty!19906 b!2226889))

(assert (= (and mapNonEmpty!14280 ((_ is Cons!26164) mapValue!14280)) b!2226887))

(declare-fun m!2665832 () Bool)

(assert (=> b!2226887 m!2665832))

(declare-fun m!2665834 () Bool)

(assert (=> setNonEmpty!19906 m!2665834))

(declare-fun e!1423172 () Bool)

(declare-fun tp!696275 () Bool)

(declare-fun e!1423174 () Bool)

(declare-fun setRes!19907 () Bool)

(declare-fun b!2226890 () Bool)

(declare-fun tp!696274 () Bool)

(assert (=> b!2226890 (= e!1423172 (and tp!696275 (inv!35522 (_2!15139 (_1!15140 (h!31565 mapDefault!14280)))) e!1423174 tp_is_empty!10011 setRes!19907 tp!696274))))

(declare-fun condSetEmpty!19907 () Bool)

(assert (=> b!2226890 (= condSetEmpty!19907 (= (_2!15140 (h!31565 mapDefault!14280)) ((as const (Array Context!3882 Bool)) false)))))

(declare-fun b!2226891 () Bool)

(declare-fun tp!696276 () Bool)

(assert (=> b!2226891 (= e!1423174 tp!696276)))

(declare-fun setIsEmpty!19907 () Bool)

(assert (=> setIsEmpty!19907 setRes!19907))

(assert (=> b!2226800 (= tp!696212 e!1423172)))

(declare-fun setNonEmpty!19907 () Bool)

(declare-fun setElem!19907 () Context!3882)

(declare-fun e!1423173 () Bool)

(declare-fun tp!696277 () Bool)

(assert (=> setNonEmpty!19907 (= setRes!19907 (and tp!696277 (inv!35522 setElem!19907) e!1423173))))

(declare-fun setRest!19907 () (InoxSet Context!3882))

(assert (=> setNonEmpty!19907 (= (_2!15140 (h!31565 mapDefault!14280)) ((_ map or) (store ((as const (Array Context!3882 Bool)) false) setElem!19907 true) setRest!19907))))

(declare-fun b!2226892 () Bool)

(declare-fun tp!696278 () Bool)

(assert (=> b!2226892 (= e!1423173 tp!696278)))

(assert (= b!2226890 b!2226891))

(assert (= (and b!2226890 condSetEmpty!19907) setIsEmpty!19907))

(assert (= (and b!2226890 (not condSetEmpty!19907)) setNonEmpty!19907))

(assert (= setNonEmpty!19907 b!2226892))

(assert (= (and b!2226800 ((_ is Cons!26164) mapDefault!14280)) b!2226890))

(declare-fun m!2665836 () Bool)

(assert (=> b!2226890 m!2665836))

(declare-fun m!2665838 () Bool)

(assert (=> setNonEmpty!19907 m!2665838))

(declare-fun b!2226906 () Bool)

(declare-fun e!1423177 () Bool)

(declare-fun tp!696289 () Bool)

(declare-fun tp!696292 () Bool)

(assert (=> b!2226906 (= e!1423177 (and tp!696289 tp!696292))))

(assert (=> b!2226794 (= tp!696214 e!1423177)))

(declare-fun b!2226904 () Bool)

(declare-fun tp!696293 () Bool)

(declare-fun tp!696291 () Bool)

(assert (=> b!2226904 (= e!1423177 (and tp!696293 tp!696291))))

(declare-fun b!2226903 () Bool)

(assert (=> b!2226903 (= e!1423177 tp_is_empty!10011)))

(declare-fun b!2226905 () Bool)

(declare-fun tp!696290 () Bool)

(assert (=> b!2226905 (= e!1423177 tp!696290)))

(assert (= (and b!2226794 ((_ is ElementMatch!6393) (regOne!13298 expr!64))) b!2226903))

(assert (= (and b!2226794 ((_ is Concat!10731) (regOne!13298 expr!64))) b!2226904))

(assert (= (and b!2226794 ((_ is Star!6393) (regOne!13298 expr!64))) b!2226905))

(assert (= (and b!2226794 ((_ is Union!6393) (regOne!13298 expr!64))) b!2226906))

(declare-fun b!2226910 () Bool)

(declare-fun e!1423178 () Bool)

(declare-fun tp!696294 () Bool)

(declare-fun tp!696297 () Bool)

(assert (=> b!2226910 (= e!1423178 (and tp!696294 tp!696297))))

(assert (=> b!2226794 (= tp!696208 e!1423178)))

(declare-fun b!2226908 () Bool)

(declare-fun tp!696298 () Bool)

(declare-fun tp!696296 () Bool)

(assert (=> b!2226908 (= e!1423178 (and tp!696298 tp!696296))))

(declare-fun b!2226907 () Bool)

(assert (=> b!2226907 (= e!1423178 tp_is_empty!10011)))

(declare-fun b!2226909 () Bool)

(declare-fun tp!696295 () Bool)

(assert (=> b!2226909 (= e!1423178 tp!696295)))

(assert (= (and b!2226794 ((_ is ElementMatch!6393) (regTwo!13298 expr!64))) b!2226907))

(assert (= (and b!2226794 ((_ is Concat!10731) (regTwo!13298 expr!64))) b!2226908))

(assert (= (and b!2226794 ((_ is Star!6393) (regTwo!13298 expr!64))) b!2226909))

(assert (= (and b!2226794 ((_ is Union!6393) (regTwo!13298 expr!64))) b!2226910))

(declare-fun b!2226914 () Bool)

(declare-fun e!1423179 () Bool)

(declare-fun tp!696299 () Bool)

(declare-fun tp!696302 () Bool)

(assert (=> b!2226914 (= e!1423179 (and tp!696299 tp!696302))))

(assert (=> b!2226792 (= tp!696210 e!1423179)))

(declare-fun b!2226912 () Bool)

(declare-fun tp!696303 () Bool)

(declare-fun tp!696301 () Bool)

(assert (=> b!2226912 (= e!1423179 (and tp!696303 tp!696301))))

(declare-fun b!2226911 () Bool)

(assert (=> b!2226911 (= e!1423179 tp_is_empty!10011)))

(declare-fun b!2226913 () Bool)

(declare-fun tp!696300 () Bool)

(assert (=> b!2226913 (= e!1423179 tp!696300)))

(assert (= (and b!2226792 ((_ is ElementMatch!6393) (reg!6722 expr!64))) b!2226911))

(assert (= (and b!2226792 ((_ is Concat!10731) (reg!6722 expr!64))) b!2226912))

(assert (= (and b!2226792 ((_ is Star!6393) (reg!6722 expr!64))) b!2226913))

(assert (= (and b!2226792 ((_ is Union!6393) (reg!6722 expr!64))) b!2226914))

(declare-fun b!2226918 () Bool)

(declare-fun e!1423180 () Bool)

(declare-fun tp!696304 () Bool)

(declare-fun tp!696307 () Bool)

(assert (=> b!2226918 (= e!1423180 (and tp!696304 tp!696307))))

(assert (=> b!2226786 (= tp!696213 e!1423180)))

(declare-fun b!2226916 () Bool)

(declare-fun tp!696308 () Bool)

(declare-fun tp!696306 () Bool)

(assert (=> b!2226916 (= e!1423180 (and tp!696308 tp!696306))))

(declare-fun b!2226915 () Bool)

(assert (=> b!2226915 (= e!1423180 tp_is_empty!10011)))

(declare-fun b!2226917 () Bool)

(declare-fun tp!696305 () Bool)

(assert (=> b!2226917 (= e!1423180 tp!696305)))

(assert (= (and b!2226786 ((_ is ElementMatch!6393) (regOne!13299 expr!64))) b!2226915))

(assert (= (and b!2226786 ((_ is Concat!10731) (regOne!13299 expr!64))) b!2226916))

(assert (= (and b!2226786 ((_ is Star!6393) (regOne!13299 expr!64))) b!2226917))

(assert (= (and b!2226786 ((_ is Union!6393) (regOne!13299 expr!64))) b!2226918))

(declare-fun b!2226922 () Bool)

(declare-fun e!1423181 () Bool)

(declare-fun tp!696309 () Bool)

(declare-fun tp!696312 () Bool)

(assert (=> b!2226922 (= e!1423181 (and tp!696309 tp!696312))))

(assert (=> b!2226786 (= tp!696203 e!1423181)))

(declare-fun b!2226920 () Bool)

(declare-fun tp!696313 () Bool)

(declare-fun tp!696311 () Bool)

(assert (=> b!2226920 (= e!1423181 (and tp!696313 tp!696311))))

(declare-fun b!2226919 () Bool)

(assert (=> b!2226919 (= e!1423181 tp_is_empty!10011)))

(declare-fun b!2226921 () Bool)

(declare-fun tp!696310 () Bool)

(assert (=> b!2226921 (= e!1423181 tp!696310)))

(assert (= (and b!2226786 ((_ is ElementMatch!6393) (regTwo!13299 expr!64))) b!2226919))

(assert (= (and b!2226786 ((_ is Concat!10731) (regTwo!13299 expr!64))) b!2226920))

(assert (= (and b!2226786 ((_ is Star!6393) (regTwo!13299 expr!64))) b!2226921))

(assert (= (and b!2226786 ((_ is Union!6393) (regTwo!13299 expr!64))) b!2226922))

(declare-fun b!2226927 () Bool)

(declare-fun e!1423184 () Bool)

(declare-fun tp!696318 () Bool)

(declare-fun tp!696319 () Bool)

(assert (=> b!2226927 (= e!1423184 (and tp!696318 tp!696319))))

(assert (=> b!2226796 (= tp!696209 e!1423184)))

(assert (= (and b!2226796 ((_ is Cons!26163) (exprs!2441 context!86))) b!2226927))

(check-sat (not setNonEmpty!19899) (not b!2226918) (not setNonEmpty!19898) (not b!2226862) (not b!2226889) (not d!664612) (not b!2226884) (not bm!133339) (not b!2226891) (not b!2226863) tp_is_empty!10011 (not b!2226888) (not bm!133333) (not b!2226917) (not b!2226892) (not setNonEmpty!19904) (not setNonEmpty!19905) (not b!2226912) (not b!2226921) (not b!2226837) (not b!2226883) (not b_next!65289) (not b!2226910) (not d!664622) (not b!2226887) (not b!2226909) (not mapNonEmpty!14283) (not b!2226913) (not b!2226906) (not b!2226914) (not setNonEmpty!19906) (not b!2226916) (not b!2226882) (not b!2226881) (not b!2226890) (not b!2226886) (not b!2226922) (not b!2226865) (not b!2226846) (not b!2226831) (not b!2226822) (not b!2226834) (not b!2226920) (not d!664618) (not bm!133338) (not b!2226908) (not b!2226904) (not setNonEmpty!19907) (not bm!133332) (not b!2226866) (not bm!133336) b_and!174573 (not bm!133335) (not b!2226905) (not b!2226861) (not b!2226864) (not b!2226885) b_and!174575 (not b!2226927) (not b_next!65291))
(check-sat b_and!174573 b_and!174575 (not b_next!65291) (not b_next!65289))
