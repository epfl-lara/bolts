; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217516 () Bool)

(assert start!217516)

(declare-fun b!2230356 () Bool)

(declare-fun b_free!64673 () Bool)

(declare-fun b_next!65377 () Bool)

(assert (=> b!2230356 (= b_free!64673 (not b_next!65377))))

(declare-fun tp!698745 () Bool)

(declare-fun b_and!174661 () Bool)

(assert (=> b!2230356 (= tp!698745 b_and!174661)))

(declare-fun b!2230367 () Bool)

(declare-fun b_free!64675 () Bool)

(declare-fun b_next!65379 () Bool)

(assert (=> b!2230367 (= b_free!64675 (not b_next!65379))))

(declare-fun tp!698746 () Bool)

(declare-fun b_and!174663 () Bool)

(assert (=> b!2230367 (= tp!698746 b_and!174663)))

(declare-fun b!2230354 () Bool)

(declare-fun e!1425379 () Bool)

(declare-fun e!1425380 () Bool)

(assert (=> b!2230354 (= e!1425379 e!1425380)))

(declare-fun b!2230355 () Bool)

(declare-fun res!955389 () Bool)

(declare-fun e!1425386 () Bool)

(assert (=> b!2230355 (=> (not res!955389) (not e!1425386))))

(declare-datatypes ((C!12976 0))(
  ( (C!12977 (val!7536 Int)) )
))
(declare-datatypes ((Regex!6415 0))(
  ( (ElementMatch!6415 (c!355775 C!12976)) (Concat!10753 (regOne!13342 Regex!6415) (regTwo!13342 Regex!6415)) (EmptyExpr!6415) (Star!6415 (reg!6744 Regex!6415)) (EmptyLang!6415) (Union!6415 (regOne!13343 Regex!6415) (regTwo!13343 Regex!6415)) )
))
(declare-datatypes ((List!26302 0))(
  ( (Nil!26208) (Cons!26208 (h!31609 Regex!6415) (t!199718 List!26302)) )
))
(declare-datatypes ((Context!3926 0))(
  ( (Context!3927 (exprs!2463 List!26302)) )
))
(declare-fun context!86 () Context!3926)

(declare-fun expr!64 () Regex!6415)

(declare-fun a!1167 () C!12976)

(declare-datatypes ((array!10558 0))(
  ( (array!10559 (arr!4693 (Array (_ BitVec 32) (_ BitVec 64))) (size!20474 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3902 0))(
  ( (tuple3!3903 (_1!15199 Regex!6415) (_2!15199 Context!3926) (_3!2421 C!12976)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25556 0))(
  ( (tuple2!25557 (_1!15200 tuple3!3902) (_2!15200 (InoxSet Context!3926))) )
))
(declare-datatypes ((List!26303 0))(
  ( (Nil!26209) (Cons!26209 (h!31610 tuple2!25556) (t!199719 List!26303)) )
))
(declare-datatypes ((array!10560 0))(
  ( (array!10561 (arr!4694 (Array (_ BitVec 32) List!26303)) (size!20475 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6106 0))(
  ( (LongMapFixedSize!6107 (defaultEntry!3418 Int) (mask!7614 (_ BitVec 32)) (extraKeys!3301 (_ BitVec 32)) (zeroValue!3311 List!26303) (minValue!3311 List!26303) (_size!6153 (_ BitVec 32)) (_keys!3350 array!10558) (_values!3333 array!10560) (_vacant!3114 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12029 0))(
  ( (Cell!12030 (v!29796 LongMapFixedSize!6106)) )
))
(declare-datatypes ((MutLongMap!3053 0))(
  ( (LongMap!3053 (underlying!6307 Cell!12029)) (MutLongMapExt!3052 (__x!17385 Int)) )
))
(declare-datatypes ((Cell!12031 0))(
  ( (Cell!12032 (v!29797 MutLongMap!3053)) )
))
(declare-datatypes ((Hashable!2963 0))(
  ( (HashableExt!2962 (__x!17386 Int)) )
))
(declare-datatypes ((MutableMap!2963 0))(
  ( (MutableMapExt!2962 (__x!17387 Int)) (HashMap!2963 (underlying!6308 Cell!12031) (hashF!4886 Hashable!2963) (_size!6154 (_ BitVec 32)) (defaultValue!3125 Int)) )
))
(declare-datatypes ((CacheDown!1972 0))(
  ( (CacheDown!1973 (cache!3344 MutableMap!2963)) )
))
(declare-fun cacheDown!839 () CacheDown!1972)

(get-info :version)

(declare-datatypes ((Option!5101 0))(
  ( (None!5100) (Some!5100 (v!29798 (InoxSet Context!3926))) )
))
(declare-fun get!7908 (CacheDown!1972 Regex!6415 Context!3926 C!12976) Option!5101)

(assert (=> b!2230355 (= res!955389 (not ((_ is Some!5100) (get!7908 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun tp!698756 () Bool)

(declare-fun tp!698744 () Bool)

(declare-fun e!1425387 () Bool)

(declare-fun e!1425381 () Bool)

(declare-fun array_inv!3369 (array!10558) Bool)

(declare-fun array_inv!3370 (array!10560) Bool)

(assert (=> b!2230356 (= e!1425387 (and tp!698745 tp!698744 tp!698756 (array_inv!3369 (_keys!3350 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) (array_inv!3370 (_values!3333 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) e!1425381))))

(declare-fun b!2230357 () Bool)

(declare-fun tp!698750 () Bool)

(declare-fun mapRes!14376 () Bool)

(assert (=> b!2230357 (= e!1425381 (and tp!698750 mapRes!14376))))

(declare-fun condMapEmpty!14376 () Bool)

(declare-fun mapDefault!14376 () List!26303)

(assert (=> b!2230357 (= condMapEmpty!14376 (= (arr!4694 (_values!3333 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26303)) mapDefault!14376)))))

(declare-fun b!2230358 () Bool)

(declare-fun e!1425383 () Bool)

(declare-fun lt!830519 () MutLongMap!3053)

(assert (=> b!2230358 (= e!1425383 (and e!1425379 ((_ is LongMap!3053) lt!830519)))))

(assert (=> b!2230358 (= lt!830519 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))

(declare-fun b!2230359 () Bool)

(declare-fun regexDepth!66 (Regex!6415) Int)

(assert (=> b!2230359 (= e!1425386 (>= (regexDepth!66 (regOne!13342 expr!64)) (regexDepth!66 expr!64)))))

(declare-fun b!2230360 () Bool)

(declare-fun e!1425378 () Bool)

(declare-fun tp!698749 () Bool)

(declare-fun tp!698754 () Bool)

(assert (=> b!2230360 (= e!1425378 (and tp!698749 tp!698754))))

(declare-fun b!2230361 () Bool)

(assert (=> b!2230361 (= e!1425380 e!1425387)))

(declare-fun b!2230362 () Bool)

(declare-fun res!955390 () Bool)

(assert (=> b!2230362 (=> (not res!955390) (not e!1425386))))

(declare-fun validRegex!2390 (Regex!6415) Bool)

(assert (=> b!2230362 (= res!955390 (validRegex!2390 (regTwo!13342 expr!64)))))

(declare-fun b!2230363 () Bool)

(declare-fun res!955393 () Bool)

(assert (=> b!2230363 (=> (not res!955393) (not e!1425386))))

(assert (=> b!2230363 (= res!955393 (and (or (not ((_ is ElementMatch!6415) expr!64)) (not (= (c!355775 expr!64) a!1167))) (not ((_ is Union!6415) expr!64)) ((_ is Concat!10753) expr!64)))))

(declare-fun b!2230364 () Bool)

(declare-fun e!1425382 () Bool)

(declare-fun e!1425377 () Bool)

(assert (=> b!2230364 (= e!1425382 e!1425377)))

(declare-fun b!2230365 () Bool)

(declare-fun res!955392 () Bool)

(assert (=> b!2230365 (=> (not res!955392) (not e!1425386))))

(declare-fun nullable!1763 (Regex!6415) Bool)

(assert (=> b!2230365 (= res!955392 (nullable!1763 (regOne!13342 expr!64)))))

(declare-fun b!2230366 () Bool)

(declare-fun tp_is_empty!10055 () Bool)

(assert (=> b!2230366 (= e!1425378 tp_is_empty!10055)))

(assert (=> b!2230367 (= e!1425377 (and e!1425383 tp!698746))))

(declare-fun b!2230368 () Bool)

(declare-fun e!1425384 () Bool)

(declare-fun tp!698748 () Bool)

(assert (=> b!2230368 (= e!1425384 tp!698748)))

(declare-fun mapIsEmpty!14376 () Bool)

(assert (=> mapIsEmpty!14376 mapRes!14376))

(declare-fun b!2230369 () Bool)

(declare-fun tp!698752 () Bool)

(declare-fun tp!698747 () Bool)

(assert (=> b!2230369 (= e!1425378 (and tp!698752 tp!698747))))

(declare-fun mapNonEmpty!14376 () Bool)

(declare-fun tp!698755 () Bool)

(declare-fun tp!698753 () Bool)

(assert (=> mapNonEmpty!14376 (= mapRes!14376 (and tp!698755 tp!698753))))

(declare-fun mapValue!14376 () List!26303)

(declare-fun mapKey!14376 () (_ BitVec 32))

(declare-fun mapRest!14376 () (Array (_ BitVec 32) List!26303))

(assert (=> mapNonEmpty!14376 (= (arr!4694 (_values!3333 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) (store mapRest!14376 mapKey!14376 mapValue!14376))))

(declare-fun b!2230370 () Bool)

(declare-fun tp!698751 () Bool)

(assert (=> b!2230370 (= e!1425378 tp!698751)))

(declare-fun res!955391 () Bool)

(assert (=> start!217516 (=> (not res!955391) (not e!1425386))))

(assert (=> start!217516 (= res!955391 (validRegex!2390 expr!64))))

(assert (=> start!217516 e!1425386))

(assert (=> start!217516 e!1425378))

(declare-fun inv!35591 (CacheDown!1972) Bool)

(assert (=> start!217516 (and (inv!35591 cacheDown!839) e!1425382)))

(declare-fun inv!35592 (Context!3926) Bool)

(assert (=> start!217516 (and (inv!35592 context!86) e!1425384)))

(assert (=> start!217516 tp_is_empty!10055))

(assert (= (and start!217516 res!955391) b!2230355))

(assert (= (and b!2230355 res!955389) b!2230363))

(assert (= (and b!2230363 res!955393) b!2230365))

(assert (= (and b!2230365 res!955392) b!2230362))

(assert (= (and b!2230362 res!955390) b!2230359))

(assert (= (and start!217516 ((_ is ElementMatch!6415) expr!64)) b!2230366))

(assert (= (and start!217516 ((_ is Concat!10753) expr!64)) b!2230369))

(assert (= (and start!217516 ((_ is Star!6415) expr!64)) b!2230370))

(assert (= (and start!217516 ((_ is Union!6415) expr!64)) b!2230360))

(assert (= (and b!2230357 condMapEmpty!14376) mapIsEmpty!14376))

(assert (= (and b!2230357 (not condMapEmpty!14376)) mapNonEmpty!14376))

(assert (= b!2230356 b!2230357))

(assert (= b!2230361 b!2230356))

(assert (= b!2230354 b!2230361))

(assert (= (and b!2230358 ((_ is LongMap!3053) (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))) b!2230354))

(assert (= b!2230367 b!2230358))

(assert (= (and b!2230364 ((_ is HashMap!2963) (cache!3344 cacheDown!839))) b!2230367))

(assert (= start!217516 b!2230364))

(assert (= start!217516 b!2230368))

(declare-fun m!2667366 () Bool)

(assert (=> b!2230365 m!2667366))

(declare-fun m!2667368 () Bool)

(assert (=> b!2230356 m!2667368))

(declare-fun m!2667370 () Bool)

(assert (=> b!2230356 m!2667370))

(declare-fun m!2667372 () Bool)

(assert (=> b!2230355 m!2667372))

(declare-fun m!2667374 () Bool)

(assert (=> b!2230359 m!2667374))

(declare-fun m!2667376 () Bool)

(assert (=> b!2230359 m!2667376))

(declare-fun m!2667378 () Bool)

(assert (=> b!2230362 m!2667378))

(declare-fun m!2667380 () Bool)

(assert (=> mapNonEmpty!14376 m!2667380))

(declare-fun m!2667382 () Bool)

(assert (=> start!217516 m!2667382))

(declare-fun m!2667384 () Bool)

(assert (=> start!217516 m!2667384))

(declare-fun m!2667386 () Bool)

(assert (=> start!217516 m!2667386))

(check-sat (not b!2230365) (not b!2230355) (not b!2230370) tp_is_empty!10055 (not b!2230369) (not b!2230356) (not mapNonEmpty!14376) (not b!2230357) (not b!2230362) b_and!174661 (not b_next!65377) (not b!2230359) (not start!217516) (not b_next!65379) b_and!174663 (not b!2230360) (not b!2230368))
(check-sat b_and!174663 b_and!174661 (not b_next!65377) (not b_next!65379))
(get-model)

(declare-fun d!664977 () Bool)

(assert (=> d!664977 (= (array_inv!3369 (_keys!3350 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) (bvsge (size!20474 (_keys!3350 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2230356 d!664977))

(declare-fun d!664979 () Bool)

(assert (=> d!664979 (= (array_inv!3370 (_values!3333 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) (bvsge (size!20475 (_values!3333 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2230356 d!664979))

(declare-fun d!664981 () Bool)

(declare-fun e!1425390 () Bool)

(assert (=> d!664981 e!1425390))

(declare-fun res!955396 () Bool)

(assert (=> d!664981 (=> res!955396 e!1425390)))

(declare-fun lt!830522 () Option!5101)

(declare-fun isEmpty!14894 (Option!5101) Bool)

(assert (=> d!664981 (= res!955396 (isEmpty!14894 lt!830522))))

(declare-fun choose!13125 (CacheDown!1972 Regex!6415 Context!3926 C!12976) Option!5101)

(assert (=> d!664981 (= lt!830522 (choose!13125 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!281 (MutableMap!2963) Bool)

(assert (=> d!664981 (validCacheMapDown!281 (cache!3344 cacheDown!839))))

(assert (=> d!664981 (= (get!7908 cacheDown!839 expr!64 context!86 a!1167) lt!830522)))

(declare-fun b!2230373 () Bool)

(declare-fun get!7909 (Option!5101) (InoxSet Context!3926))

(declare-fun derivationStepZipperDown!44 (Regex!6415 Context!3926 C!12976) (InoxSet Context!3926))

(assert (=> b!2230373 (= e!1425390 (= (get!7909 lt!830522) (derivationStepZipperDown!44 expr!64 context!86 a!1167)))))

(assert (= (and d!664981 (not res!955396)) b!2230373))

(declare-fun m!2667388 () Bool)

(assert (=> d!664981 m!2667388))

(declare-fun m!2667390 () Bool)

(assert (=> d!664981 m!2667390))

(declare-fun m!2667392 () Bool)

(assert (=> d!664981 m!2667392))

(declare-fun m!2667394 () Bool)

(assert (=> b!2230373 m!2667394))

(declare-fun m!2667396 () Bool)

(assert (=> b!2230373 m!2667396))

(assert (=> b!2230355 d!664981))

(declare-fun b!2230392 () Bool)

(declare-fun e!1425410 () Bool)

(declare-fun call!133860 () Bool)

(assert (=> b!2230392 (= e!1425410 call!133860)))

(declare-fun bm!133855 () Bool)

(declare-fun call!133862 () Bool)

(declare-fun c!355780 () Bool)

(assert (=> bm!133855 (= call!133862 (validRegex!2390 (ite c!355780 (regOne!13343 expr!64) (regOne!13342 expr!64))))))

(declare-fun b!2230393 () Bool)

(declare-fun e!1425407 () Bool)

(assert (=> b!2230393 (= e!1425407 call!133860)))

(declare-fun call!133861 () Bool)

(declare-fun c!355781 () Bool)

(declare-fun bm!133856 () Bool)

(assert (=> bm!133856 (= call!133861 (validRegex!2390 (ite c!355781 (reg!6744 expr!64) (ite c!355780 (regTwo!13343 expr!64) (regTwo!13342 expr!64)))))))

(declare-fun b!2230394 () Bool)

(declare-fun e!1425405 () Bool)

(declare-fun e!1425406 () Bool)

(assert (=> b!2230394 (= e!1425405 e!1425406)))

(declare-fun res!955409 () Bool)

(assert (=> b!2230394 (= res!955409 (not (nullable!1763 (reg!6744 expr!64))))))

(assert (=> b!2230394 (=> (not res!955409) (not e!1425406))))

(declare-fun b!2230395 () Bool)

(declare-fun e!1425409 () Bool)

(assert (=> b!2230395 (= e!1425405 e!1425409)))

(assert (=> b!2230395 (= c!355780 ((_ is Union!6415) expr!64))))

(declare-fun bm!133857 () Bool)

(assert (=> bm!133857 (= call!133860 call!133861)))

(declare-fun b!2230396 () Bool)

(assert (=> b!2230396 (= e!1425406 call!133861)))

(declare-fun b!2230397 () Bool)

(declare-fun res!955408 () Bool)

(declare-fun e!1425411 () Bool)

(assert (=> b!2230397 (=> res!955408 e!1425411)))

(assert (=> b!2230397 (= res!955408 (not ((_ is Concat!10753) expr!64)))))

(assert (=> b!2230397 (= e!1425409 e!1425411)))

(declare-fun b!2230399 () Bool)

(declare-fun res!955411 () Bool)

(assert (=> b!2230399 (=> (not res!955411) (not e!1425407))))

(assert (=> b!2230399 (= res!955411 call!133862)))

(assert (=> b!2230399 (= e!1425409 e!1425407)))

(declare-fun b!2230400 () Bool)

(assert (=> b!2230400 (= e!1425411 e!1425410)))

(declare-fun res!955407 () Bool)

(assert (=> b!2230400 (=> (not res!955407) (not e!1425410))))

(assert (=> b!2230400 (= res!955407 call!133862)))

(declare-fun b!2230398 () Bool)

(declare-fun e!1425408 () Bool)

(assert (=> b!2230398 (= e!1425408 e!1425405)))

(assert (=> b!2230398 (= c!355781 ((_ is Star!6415) expr!64))))

(declare-fun d!664983 () Bool)

(declare-fun res!955410 () Bool)

(assert (=> d!664983 (=> res!955410 e!1425408)))

(assert (=> d!664983 (= res!955410 ((_ is ElementMatch!6415) expr!64))))

(assert (=> d!664983 (= (validRegex!2390 expr!64) e!1425408)))

(assert (= (and d!664983 (not res!955410)) b!2230398))

(assert (= (and b!2230398 c!355781) b!2230394))

(assert (= (and b!2230398 (not c!355781)) b!2230395))

(assert (= (and b!2230394 res!955409) b!2230396))

(assert (= (and b!2230395 c!355780) b!2230399))

(assert (= (and b!2230395 (not c!355780)) b!2230397))

(assert (= (and b!2230399 res!955411) b!2230393))

(assert (= (and b!2230397 (not res!955408)) b!2230400))

(assert (= (and b!2230400 res!955407) b!2230392))

(assert (= (or b!2230393 b!2230392) bm!133857))

(assert (= (or b!2230399 b!2230400) bm!133855))

(assert (= (or b!2230396 bm!133857) bm!133856))

(declare-fun m!2667398 () Bool)

(assert (=> bm!133855 m!2667398))

(declare-fun m!2667400 () Bool)

(assert (=> bm!133856 m!2667400))

(declare-fun m!2667402 () Bool)

(assert (=> b!2230394 m!2667402))

(assert (=> start!217516 d!664983))

(declare-fun d!664985 () Bool)

(declare-fun res!955414 () Bool)

(declare-fun e!1425414 () Bool)

(assert (=> d!664985 (=> (not res!955414) (not e!1425414))))

(assert (=> d!664985 (= res!955414 ((_ is HashMap!2963) (cache!3344 cacheDown!839)))))

(assert (=> d!664985 (= (inv!35591 cacheDown!839) e!1425414)))

(declare-fun b!2230403 () Bool)

(assert (=> b!2230403 (= e!1425414 (validCacheMapDown!281 (cache!3344 cacheDown!839)))))

(assert (= (and d!664985 res!955414) b!2230403))

(assert (=> b!2230403 m!2667392))

(assert (=> start!217516 d!664985))

(declare-fun d!664987 () Bool)

(declare-fun lambda!84285 () Int)

(declare-fun forall!5361 (List!26302 Int) Bool)

(assert (=> d!664987 (= (inv!35592 context!86) (forall!5361 (exprs!2463 context!86) lambda!84285))))

(declare-fun bs!453884 () Bool)

(assert (= bs!453884 d!664987))

(declare-fun m!2667404 () Bool)

(assert (=> bs!453884 m!2667404))

(assert (=> start!217516 d!664987))

(declare-fun d!664989 () Bool)

(declare-fun nullableFct!414 (Regex!6415) Bool)

(assert (=> d!664989 (= (nullable!1763 (regOne!13342 expr!64)) (nullableFct!414 (regOne!13342 expr!64)))))

(declare-fun bs!453885 () Bool)

(assert (= bs!453885 d!664989))

(declare-fun m!2667406 () Bool)

(assert (=> bs!453885 m!2667406))

(assert (=> b!2230365 d!664989))

(declare-fun b!2230438 () Bool)

(declare-fun e!1425443 () Bool)

(declare-fun e!1425442 () Bool)

(assert (=> b!2230438 (= e!1425443 e!1425442)))

(declare-fun res!955422 () Bool)

(declare-fun lt!830525 () Int)

(declare-fun call!133879 () Int)

(assert (=> b!2230438 (= res!955422 (> lt!830525 call!133879))))

(assert (=> b!2230438 (=> (not res!955422) (not e!1425442))))

(declare-fun bm!133872 () Bool)

(declare-fun call!133881 () Int)

(assert (=> bm!133872 (= call!133881 call!133879)))

(declare-fun b!2230439 () Bool)

(declare-fun res!955423 () Bool)

(declare-fun e!1425438 () Bool)

(assert (=> b!2230439 (=> (not res!955423) (not e!1425438))))

(assert (=> b!2230439 (= res!955423 (> lt!830525 call!133881))))

(declare-fun e!1425441 () Bool)

(assert (=> b!2230439 (= e!1425441 e!1425438)))

(declare-fun b!2230440 () Bool)

(declare-fun c!355802 () Bool)

(assert (=> b!2230440 (= c!355802 ((_ is Union!6415) (regOne!13342 expr!64)))))

(declare-fun e!1425435 () Int)

(declare-fun e!1425444 () Int)

(assert (=> b!2230440 (= e!1425435 e!1425444)))

(declare-fun b!2230441 () Bool)

(declare-fun call!133883 () Int)

(assert (=> b!2230441 (= e!1425444 (+ 1 call!133883))))

(declare-fun b!2230442 () Bool)

(declare-fun e!1425440 () Int)

(assert (=> b!2230442 (= e!1425440 1)))

(declare-fun b!2230443 () Bool)

(declare-fun c!355798 () Bool)

(assert (=> b!2230443 (= c!355798 ((_ is Star!6415) (regOne!13342 expr!64)))))

(declare-fun e!1425439 () Bool)

(assert (=> b!2230443 (= e!1425441 e!1425439)))

(declare-fun b!2230444 () Bool)

(declare-fun e!1425436 () Int)

(assert (=> b!2230444 (= e!1425436 1)))

(declare-fun b!2230445 () Bool)

(assert (=> b!2230445 (= e!1425444 e!1425440)))

(declare-fun c!355799 () Bool)

(assert (=> b!2230445 (= c!355799 ((_ is Concat!10753) (regOne!13342 expr!64)))))

(declare-fun b!2230446 () Bool)

(assert (=> b!2230446 (= e!1425439 (> lt!830525 call!133881))))

(declare-fun b!2230447 () Bool)

(declare-fun call!133877 () Int)

(assert (=> b!2230447 (= e!1425435 (+ 1 call!133877))))

(declare-fun c!355796 () Bool)

(declare-fun bm!133874 () Bool)

(assert (=> bm!133874 (= call!133877 (regexDepth!66 (ite c!355796 (reg!6744 (regOne!13342 expr!64)) (ite c!355802 (regOne!13343 (regOne!13342 expr!64)) (regTwo!13342 (regOne!13342 expr!64))))))))

(declare-fun b!2230448 () Bool)

(assert (=> b!2230448 (= e!1425443 e!1425441)))

(declare-fun c!355801 () Bool)

(assert (=> b!2230448 (= c!355801 ((_ is Concat!10753) (regOne!13342 expr!64)))))

(declare-fun bm!133875 () Bool)

(declare-fun c!355797 () Bool)

(assert (=> bm!133875 (= call!133879 (regexDepth!66 (ite c!355797 (regOne!13343 (regOne!13342 expr!64)) (ite c!355801 (regOne!13342 (regOne!13342 expr!64)) (reg!6744 (regOne!13342 expr!64))))))))

(declare-fun b!2230449 () Bool)

(assert (=> b!2230449 (= e!1425439 (= lt!830525 1))))

(declare-fun b!2230450 () Bool)

(declare-fun e!1425437 () Bool)

(assert (=> b!2230450 (= e!1425437 e!1425443)))

(assert (=> b!2230450 (= c!355797 ((_ is Union!6415) (regOne!13342 expr!64)))))

(declare-fun bm!133876 () Bool)

(declare-fun call!133880 () Int)

(assert (=> bm!133876 (= call!133880 call!133877)))

(declare-fun bm!133877 () Bool)

(declare-fun call!133878 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!133877 (= call!133883 (maxBigInt!0 (ite c!355802 call!133880 call!133878) (ite c!355802 call!133878 call!133880)))))

(declare-fun b!2230451 () Bool)

(assert (=> b!2230451 (= e!1425436 e!1425435)))

(assert (=> b!2230451 (= c!355796 ((_ is Star!6415) (regOne!13342 expr!64)))))

(declare-fun b!2230452 () Bool)

(declare-fun call!133882 () Int)

(assert (=> b!2230452 (= e!1425438 (> lt!830525 call!133882))))

(declare-fun bm!133878 () Bool)

(assert (=> bm!133878 (= call!133878 (regexDepth!66 (ite c!355802 (regTwo!13343 (regOne!13342 expr!64)) (regOne!13342 (regOne!13342 expr!64)))))))

(declare-fun bm!133873 () Bool)

(assert (=> bm!133873 (= call!133882 (regexDepth!66 (ite c!355797 (regTwo!13343 (regOne!13342 expr!64)) (regTwo!13342 (regOne!13342 expr!64)))))))

(declare-fun d!664991 () Bool)

(assert (=> d!664991 e!1425437))

(declare-fun res!955421 () Bool)

(assert (=> d!664991 (=> (not res!955421) (not e!1425437))))

(assert (=> d!664991 (= res!955421 (> lt!830525 0))))

(assert (=> d!664991 (= lt!830525 e!1425436)))

(declare-fun c!355800 () Bool)

(assert (=> d!664991 (= c!355800 ((_ is ElementMatch!6415) (regOne!13342 expr!64)))))

(assert (=> d!664991 (= (regexDepth!66 (regOne!13342 expr!64)) lt!830525)))

(declare-fun b!2230453 () Bool)

(assert (=> b!2230453 (= e!1425442 (> lt!830525 call!133882))))

(declare-fun b!2230454 () Bool)

(assert (=> b!2230454 (= e!1425440 (+ 1 call!133883))))

(assert (= (and d!664991 c!355800) b!2230444))

(assert (= (and d!664991 (not c!355800)) b!2230451))

(assert (= (and b!2230451 c!355796) b!2230447))

(assert (= (and b!2230451 (not c!355796)) b!2230440))

(assert (= (and b!2230440 c!355802) b!2230441))

(assert (= (and b!2230440 (not c!355802)) b!2230445))

(assert (= (and b!2230445 c!355799) b!2230454))

(assert (= (and b!2230445 (not c!355799)) b!2230442))

(assert (= (or b!2230441 b!2230454) bm!133878))

(assert (= (or b!2230441 b!2230454) bm!133876))

(assert (= (or b!2230441 b!2230454) bm!133877))

(assert (= (or b!2230447 bm!133876) bm!133874))

(assert (= (and d!664991 res!955421) b!2230450))

(assert (= (and b!2230450 c!355797) b!2230438))

(assert (= (and b!2230450 (not c!355797)) b!2230448))

(assert (= (and b!2230438 res!955422) b!2230453))

(assert (= (and b!2230448 c!355801) b!2230439))

(assert (= (and b!2230448 (not c!355801)) b!2230443))

(assert (= (and b!2230439 res!955423) b!2230452))

(assert (= (and b!2230443 c!355798) b!2230446))

(assert (= (and b!2230443 (not c!355798)) b!2230449))

(assert (= (or b!2230439 b!2230446) bm!133872))

(assert (= (or b!2230453 b!2230452) bm!133873))

(assert (= (or b!2230438 bm!133872) bm!133875))

(declare-fun m!2667408 () Bool)

(assert (=> bm!133877 m!2667408))

(declare-fun m!2667410 () Bool)

(assert (=> bm!133875 m!2667410))

(declare-fun m!2667412 () Bool)

(assert (=> bm!133873 m!2667412))

(declare-fun m!2667414 () Bool)

(assert (=> bm!133878 m!2667414))

(declare-fun m!2667416 () Bool)

(assert (=> bm!133874 m!2667416))

(assert (=> b!2230359 d!664991))

(declare-fun b!2230455 () Bool)

(declare-fun e!1425453 () Bool)

(declare-fun e!1425452 () Bool)

(assert (=> b!2230455 (= e!1425453 e!1425452)))

(declare-fun res!955425 () Bool)

(declare-fun lt!830526 () Int)

(declare-fun call!133886 () Int)

(assert (=> b!2230455 (= res!955425 (> lt!830526 call!133886))))

(assert (=> b!2230455 (=> (not res!955425) (not e!1425452))))

(declare-fun bm!133879 () Bool)

(declare-fun call!133888 () Int)

(assert (=> bm!133879 (= call!133888 call!133886)))

(declare-fun b!2230456 () Bool)

(declare-fun res!955426 () Bool)

(declare-fun e!1425448 () Bool)

(assert (=> b!2230456 (=> (not res!955426) (not e!1425448))))

(assert (=> b!2230456 (= res!955426 (> lt!830526 call!133888))))

(declare-fun e!1425451 () Bool)

(assert (=> b!2230456 (= e!1425451 e!1425448)))

(declare-fun b!2230457 () Bool)

(declare-fun c!355809 () Bool)

(assert (=> b!2230457 (= c!355809 ((_ is Union!6415) expr!64))))

(declare-fun e!1425445 () Int)

(declare-fun e!1425454 () Int)

(assert (=> b!2230457 (= e!1425445 e!1425454)))

(declare-fun b!2230458 () Bool)

(declare-fun call!133890 () Int)

(assert (=> b!2230458 (= e!1425454 (+ 1 call!133890))))

(declare-fun b!2230459 () Bool)

(declare-fun e!1425450 () Int)

(assert (=> b!2230459 (= e!1425450 1)))

(declare-fun b!2230460 () Bool)

(declare-fun c!355805 () Bool)

(assert (=> b!2230460 (= c!355805 ((_ is Star!6415) expr!64))))

(declare-fun e!1425449 () Bool)

(assert (=> b!2230460 (= e!1425451 e!1425449)))

(declare-fun b!2230461 () Bool)

(declare-fun e!1425446 () Int)

(assert (=> b!2230461 (= e!1425446 1)))

(declare-fun b!2230462 () Bool)

(assert (=> b!2230462 (= e!1425454 e!1425450)))

(declare-fun c!355806 () Bool)

(assert (=> b!2230462 (= c!355806 ((_ is Concat!10753) expr!64))))

(declare-fun b!2230463 () Bool)

(assert (=> b!2230463 (= e!1425449 (> lt!830526 call!133888))))

(declare-fun b!2230464 () Bool)

(declare-fun call!133884 () Int)

(assert (=> b!2230464 (= e!1425445 (+ 1 call!133884))))

(declare-fun bm!133881 () Bool)

(declare-fun c!355803 () Bool)

(assert (=> bm!133881 (= call!133884 (regexDepth!66 (ite c!355803 (reg!6744 expr!64) (ite c!355809 (regOne!13343 expr!64) (regTwo!13342 expr!64)))))))

(declare-fun b!2230465 () Bool)

(assert (=> b!2230465 (= e!1425453 e!1425451)))

(declare-fun c!355808 () Bool)

(assert (=> b!2230465 (= c!355808 ((_ is Concat!10753) expr!64))))

(declare-fun bm!133882 () Bool)

(declare-fun c!355804 () Bool)

(assert (=> bm!133882 (= call!133886 (regexDepth!66 (ite c!355804 (regOne!13343 expr!64) (ite c!355808 (regOne!13342 expr!64) (reg!6744 expr!64)))))))

(declare-fun b!2230466 () Bool)

(assert (=> b!2230466 (= e!1425449 (= lt!830526 1))))

(declare-fun b!2230467 () Bool)

(declare-fun e!1425447 () Bool)

(assert (=> b!2230467 (= e!1425447 e!1425453)))

(assert (=> b!2230467 (= c!355804 ((_ is Union!6415) expr!64))))

(declare-fun bm!133883 () Bool)

(declare-fun call!133887 () Int)

(assert (=> bm!133883 (= call!133887 call!133884)))

(declare-fun bm!133884 () Bool)

(declare-fun call!133885 () Int)

(assert (=> bm!133884 (= call!133890 (maxBigInt!0 (ite c!355809 call!133887 call!133885) (ite c!355809 call!133885 call!133887)))))

(declare-fun b!2230468 () Bool)

(assert (=> b!2230468 (= e!1425446 e!1425445)))

(assert (=> b!2230468 (= c!355803 ((_ is Star!6415) expr!64))))

(declare-fun b!2230469 () Bool)

(declare-fun call!133889 () Int)

(assert (=> b!2230469 (= e!1425448 (> lt!830526 call!133889))))

(declare-fun bm!133885 () Bool)

(assert (=> bm!133885 (= call!133885 (regexDepth!66 (ite c!355809 (regTwo!13343 expr!64) (regOne!13342 expr!64))))))

(declare-fun bm!133880 () Bool)

(assert (=> bm!133880 (= call!133889 (regexDepth!66 (ite c!355804 (regTwo!13343 expr!64) (regTwo!13342 expr!64))))))

(declare-fun d!664993 () Bool)

(assert (=> d!664993 e!1425447))

(declare-fun res!955424 () Bool)

(assert (=> d!664993 (=> (not res!955424) (not e!1425447))))

(assert (=> d!664993 (= res!955424 (> lt!830526 0))))

(assert (=> d!664993 (= lt!830526 e!1425446)))

(declare-fun c!355807 () Bool)

(assert (=> d!664993 (= c!355807 ((_ is ElementMatch!6415) expr!64))))

(assert (=> d!664993 (= (regexDepth!66 expr!64) lt!830526)))

(declare-fun b!2230470 () Bool)

(assert (=> b!2230470 (= e!1425452 (> lt!830526 call!133889))))

(declare-fun b!2230471 () Bool)

(assert (=> b!2230471 (= e!1425450 (+ 1 call!133890))))

(assert (= (and d!664993 c!355807) b!2230461))

(assert (= (and d!664993 (not c!355807)) b!2230468))

(assert (= (and b!2230468 c!355803) b!2230464))

(assert (= (and b!2230468 (not c!355803)) b!2230457))

(assert (= (and b!2230457 c!355809) b!2230458))

(assert (= (and b!2230457 (not c!355809)) b!2230462))

(assert (= (and b!2230462 c!355806) b!2230471))

(assert (= (and b!2230462 (not c!355806)) b!2230459))

(assert (= (or b!2230458 b!2230471) bm!133885))

(assert (= (or b!2230458 b!2230471) bm!133883))

(assert (= (or b!2230458 b!2230471) bm!133884))

(assert (= (or b!2230464 bm!133883) bm!133881))

(assert (= (and d!664993 res!955424) b!2230467))

(assert (= (and b!2230467 c!355804) b!2230455))

(assert (= (and b!2230467 (not c!355804)) b!2230465))

(assert (= (and b!2230455 res!955425) b!2230470))

(assert (= (and b!2230465 c!355808) b!2230456))

(assert (= (and b!2230465 (not c!355808)) b!2230460))

(assert (= (and b!2230456 res!955426) b!2230469))

(assert (= (and b!2230460 c!355805) b!2230463))

(assert (= (and b!2230460 (not c!355805)) b!2230466))

(assert (= (or b!2230456 b!2230463) bm!133879))

(assert (= (or b!2230470 b!2230469) bm!133880))

(assert (= (or b!2230455 bm!133879) bm!133882))

(declare-fun m!2667418 () Bool)

(assert (=> bm!133884 m!2667418))

(declare-fun m!2667420 () Bool)

(assert (=> bm!133882 m!2667420))

(declare-fun m!2667422 () Bool)

(assert (=> bm!133880 m!2667422))

(declare-fun m!2667424 () Bool)

(assert (=> bm!133885 m!2667424))

(declare-fun m!2667426 () Bool)

(assert (=> bm!133881 m!2667426))

(assert (=> b!2230359 d!664993))

(declare-fun b!2230472 () Bool)

(declare-fun e!1425460 () Bool)

(declare-fun call!133891 () Bool)

(assert (=> b!2230472 (= e!1425460 call!133891)))

(declare-fun bm!133886 () Bool)

(declare-fun call!133893 () Bool)

(declare-fun c!355810 () Bool)

(assert (=> bm!133886 (= call!133893 (validRegex!2390 (ite c!355810 (regOne!13343 (regTwo!13342 expr!64)) (regOne!13342 (regTwo!13342 expr!64)))))))

(declare-fun b!2230473 () Bool)

(declare-fun e!1425457 () Bool)

(assert (=> b!2230473 (= e!1425457 call!133891)))

(declare-fun call!133892 () Bool)

(declare-fun c!355811 () Bool)

(declare-fun bm!133887 () Bool)

(assert (=> bm!133887 (= call!133892 (validRegex!2390 (ite c!355811 (reg!6744 (regTwo!13342 expr!64)) (ite c!355810 (regTwo!13343 (regTwo!13342 expr!64)) (regTwo!13342 (regTwo!13342 expr!64))))))))

(declare-fun b!2230474 () Bool)

(declare-fun e!1425455 () Bool)

(declare-fun e!1425456 () Bool)

(assert (=> b!2230474 (= e!1425455 e!1425456)))

(declare-fun res!955429 () Bool)

(assert (=> b!2230474 (= res!955429 (not (nullable!1763 (reg!6744 (regTwo!13342 expr!64)))))))

(assert (=> b!2230474 (=> (not res!955429) (not e!1425456))))

(declare-fun b!2230475 () Bool)

(declare-fun e!1425459 () Bool)

(assert (=> b!2230475 (= e!1425455 e!1425459)))

(assert (=> b!2230475 (= c!355810 ((_ is Union!6415) (regTwo!13342 expr!64)))))

(declare-fun bm!133888 () Bool)

(assert (=> bm!133888 (= call!133891 call!133892)))

(declare-fun b!2230476 () Bool)

(assert (=> b!2230476 (= e!1425456 call!133892)))

(declare-fun b!2230477 () Bool)

(declare-fun res!955428 () Bool)

(declare-fun e!1425461 () Bool)

(assert (=> b!2230477 (=> res!955428 e!1425461)))

(assert (=> b!2230477 (= res!955428 (not ((_ is Concat!10753) (regTwo!13342 expr!64))))))

(assert (=> b!2230477 (= e!1425459 e!1425461)))

(declare-fun b!2230479 () Bool)

(declare-fun res!955431 () Bool)

(assert (=> b!2230479 (=> (not res!955431) (not e!1425457))))

(assert (=> b!2230479 (= res!955431 call!133893)))

(assert (=> b!2230479 (= e!1425459 e!1425457)))

(declare-fun b!2230480 () Bool)

(assert (=> b!2230480 (= e!1425461 e!1425460)))

(declare-fun res!955427 () Bool)

(assert (=> b!2230480 (=> (not res!955427) (not e!1425460))))

(assert (=> b!2230480 (= res!955427 call!133893)))

(declare-fun b!2230478 () Bool)

(declare-fun e!1425458 () Bool)

(assert (=> b!2230478 (= e!1425458 e!1425455)))

(assert (=> b!2230478 (= c!355811 ((_ is Star!6415) (regTwo!13342 expr!64)))))

(declare-fun d!664995 () Bool)

(declare-fun res!955430 () Bool)

(assert (=> d!664995 (=> res!955430 e!1425458)))

(assert (=> d!664995 (= res!955430 ((_ is ElementMatch!6415) (regTwo!13342 expr!64)))))

(assert (=> d!664995 (= (validRegex!2390 (regTwo!13342 expr!64)) e!1425458)))

(assert (= (and d!664995 (not res!955430)) b!2230478))

(assert (= (and b!2230478 c!355811) b!2230474))

(assert (= (and b!2230478 (not c!355811)) b!2230475))

(assert (= (and b!2230474 res!955429) b!2230476))

(assert (= (and b!2230475 c!355810) b!2230479))

(assert (= (and b!2230475 (not c!355810)) b!2230477))

(assert (= (and b!2230479 res!955431) b!2230473))

(assert (= (and b!2230477 (not res!955428)) b!2230480))

(assert (= (and b!2230480 res!955427) b!2230472))

(assert (= (or b!2230473 b!2230472) bm!133888))

(assert (= (or b!2230479 b!2230480) bm!133886))

(assert (= (or b!2230476 bm!133888) bm!133887))

(declare-fun m!2667428 () Bool)

(assert (=> bm!133886 m!2667428))

(declare-fun m!2667430 () Bool)

(assert (=> bm!133887 m!2667430))

(declare-fun m!2667432 () Bool)

(assert (=> b!2230474 m!2667432))

(assert (=> b!2230362 d!664995))

(declare-fun setRes!20063 () Bool)

(declare-fun setElem!20063 () Context!3926)

(declare-fun tp!698771 () Bool)

(declare-fun setNonEmpty!20063 () Bool)

(declare-fun e!1425469 () Bool)

(assert (=> setNonEmpty!20063 (= setRes!20063 (and tp!698771 (inv!35592 setElem!20063) e!1425469))))

(declare-fun setRest!20063 () (InoxSet Context!3926))

(assert (=> setNonEmpty!20063 (= (_2!15200 (h!31610 (zeroValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3926 Bool)) false) setElem!20063 true) setRest!20063))))

(declare-fun setIsEmpty!20063 () Bool)

(assert (=> setIsEmpty!20063 setRes!20063))

(declare-fun e!1425468 () Bool)

(declare-fun tp!698769 () Bool)

(declare-fun e!1425470 () Bool)

(declare-fun b!2230489 () Bool)

(declare-fun tp!698768 () Bool)

(assert (=> b!2230489 (= e!1425468 (and tp!698768 (inv!35592 (_2!15199 (_1!15200 (h!31610 (zeroValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))))) e!1425470 tp_is_empty!10055 setRes!20063 tp!698769))))

(declare-fun condSetEmpty!20063 () Bool)

(assert (=> b!2230489 (= condSetEmpty!20063 (= (_2!15200 (h!31610 (zeroValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))) ((as const (Array Context!3926 Bool)) false)))))

(declare-fun b!2230490 () Bool)

(declare-fun tp!698767 () Bool)

(assert (=> b!2230490 (= e!1425469 tp!698767)))

(declare-fun b!2230491 () Bool)

(declare-fun tp!698770 () Bool)

(assert (=> b!2230491 (= e!1425470 tp!698770)))

(assert (=> b!2230356 (= tp!698744 e!1425468)))

(assert (= b!2230489 b!2230491))

(assert (= (and b!2230489 condSetEmpty!20063) setIsEmpty!20063))

(assert (= (and b!2230489 (not condSetEmpty!20063)) setNonEmpty!20063))

(assert (= setNonEmpty!20063 b!2230490))

(assert (= (and b!2230356 ((_ is Cons!26209) (zeroValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))) b!2230489))

(declare-fun m!2667434 () Bool)

(assert (=> setNonEmpty!20063 m!2667434))

(declare-fun m!2667436 () Bool)

(assert (=> b!2230489 m!2667436))

(declare-fun setNonEmpty!20064 () Bool)

(declare-fun tp!698776 () Bool)

(declare-fun setRes!20064 () Bool)

(declare-fun setElem!20064 () Context!3926)

(declare-fun e!1425472 () Bool)

(assert (=> setNonEmpty!20064 (= setRes!20064 (and tp!698776 (inv!35592 setElem!20064) e!1425472))))

(declare-fun setRest!20064 () (InoxSet Context!3926))

(assert (=> setNonEmpty!20064 (= (_2!15200 (h!31610 (minValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3926 Bool)) false) setElem!20064 true) setRest!20064))))

(declare-fun setIsEmpty!20064 () Bool)

(assert (=> setIsEmpty!20064 setRes!20064))

(declare-fun b!2230492 () Bool)

(declare-fun tp!698773 () Bool)

(declare-fun e!1425471 () Bool)

(declare-fun tp!698774 () Bool)

(declare-fun e!1425473 () Bool)

(assert (=> b!2230492 (= e!1425471 (and tp!698773 (inv!35592 (_2!15199 (_1!15200 (h!31610 (minValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))))) e!1425473 tp_is_empty!10055 setRes!20064 tp!698774))))

(declare-fun condSetEmpty!20064 () Bool)

(assert (=> b!2230492 (= condSetEmpty!20064 (= (_2!15200 (h!31610 (minValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))) ((as const (Array Context!3926 Bool)) false)))))

(declare-fun b!2230493 () Bool)

(declare-fun tp!698772 () Bool)

(assert (=> b!2230493 (= e!1425472 tp!698772)))

(declare-fun b!2230494 () Bool)

(declare-fun tp!698775 () Bool)

(assert (=> b!2230494 (= e!1425473 tp!698775)))

(assert (=> b!2230356 (= tp!698756 e!1425471)))

(assert (= b!2230492 b!2230494))

(assert (= (and b!2230492 condSetEmpty!20064) setIsEmpty!20064))

(assert (= (and b!2230492 (not condSetEmpty!20064)) setNonEmpty!20064))

(assert (= setNonEmpty!20064 b!2230493))

(assert (= (and b!2230356 ((_ is Cons!26209) (minValue!3311 (v!29796 (underlying!6307 (v!29797 (underlying!6308 (cache!3344 cacheDown!839)))))))) b!2230492))

(declare-fun m!2667438 () Bool)

(assert (=> setNonEmpty!20064 m!2667438))

(declare-fun m!2667440 () Bool)

(assert (=> b!2230492 m!2667440))

(declare-fun b!2230508 () Bool)

(declare-fun e!1425476 () Bool)

(declare-fun tp!698790 () Bool)

(declare-fun tp!698787 () Bool)

(assert (=> b!2230508 (= e!1425476 (and tp!698790 tp!698787))))

(declare-fun b!2230507 () Bool)

(declare-fun tp!698791 () Bool)

(assert (=> b!2230507 (= e!1425476 tp!698791)))

(declare-fun b!2230506 () Bool)

(declare-fun tp!698788 () Bool)

(declare-fun tp!698789 () Bool)

(assert (=> b!2230506 (= e!1425476 (and tp!698788 tp!698789))))

(declare-fun b!2230505 () Bool)

(assert (=> b!2230505 (= e!1425476 tp_is_empty!10055)))

(assert (=> b!2230370 (= tp!698751 e!1425476)))

(assert (= (and b!2230370 ((_ is ElementMatch!6415) (reg!6744 expr!64))) b!2230505))

(assert (= (and b!2230370 ((_ is Concat!10753) (reg!6744 expr!64))) b!2230506))

(assert (= (and b!2230370 ((_ is Star!6415) (reg!6744 expr!64))) b!2230507))

(assert (= (and b!2230370 ((_ is Union!6415) (reg!6744 expr!64))) b!2230508))

(declare-fun tp!698818 () Bool)

(declare-fun setRes!20070 () Bool)

(declare-fun tp!698819 () Bool)

(declare-fun b!2230523 () Bool)

(declare-fun e!1425494 () Bool)

(declare-fun e!1425493 () Bool)

(declare-fun mapDefault!14379 () List!26303)

(assert (=> b!2230523 (= e!1425494 (and tp!698818 (inv!35592 (_2!15199 (_1!15200 (h!31610 mapDefault!14379)))) e!1425493 tp_is_empty!10055 setRes!20070 tp!698819))))

(declare-fun condSetEmpty!20069 () Bool)

(assert (=> b!2230523 (= condSetEmpty!20069 (= (_2!15200 (h!31610 mapDefault!14379)) ((as const (Array Context!3926 Bool)) false)))))

(declare-fun tp!698814 () Bool)

(declare-fun setRes!20069 () Bool)

(declare-fun mapValue!14379 () List!26303)

(declare-fun e!1425490 () Bool)

(declare-fun tp!698817 () Bool)

(declare-fun b!2230524 () Bool)

(declare-fun e!1425491 () Bool)

(assert (=> b!2230524 (= e!1425491 (and tp!698817 (inv!35592 (_2!15199 (_1!15200 (h!31610 mapValue!14379)))) e!1425490 tp_is_empty!10055 setRes!20069 tp!698814))))

(declare-fun condSetEmpty!20070 () Bool)

(assert (=> b!2230524 (= condSetEmpty!20070 (= (_2!15200 (h!31610 mapValue!14379)) ((as const (Array Context!3926 Bool)) false)))))

(declare-fun mapIsEmpty!14379 () Bool)

(declare-fun mapRes!14379 () Bool)

(assert (=> mapIsEmpty!14379 mapRes!14379))

(declare-fun b!2230525 () Bool)

(declare-fun e!1425489 () Bool)

(declare-fun tp!698815 () Bool)

(assert (=> b!2230525 (= e!1425489 tp!698815)))

(declare-fun setIsEmpty!20070 () Bool)

(assert (=> setIsEmpty!20070 setRes!20070))

(declare-fun setElem!20069 () Context!3926)

(declare-fun setNonEmpty!20069 () Bool)

(declare-fun e!1425492 () Bool)

(declare-fun tp!698820 () Bool)

(assert (=> setNonEmpty!20069 (= setRes!20070 (and tp!698820 (inv!35592 setElem!20069) e!1425492))))

(declare-fun setRest!20069 () (InoxSet Context!3926))

(assert (=> setNonEmpty!20069 (= (_2!15200 (h!31610 mapDefault!14379)) ((_ map or) (store ((as const (Array Context!3926 Bool)) false) setElem!20069 true) setRest!20069))))

(declare-fun mapNonEmpty!14379 () Bool)

(declare-fun tp!698822 () Bool)

(assert (=> mapNonEmpty!14379 (= mapRes!14379 (and tp!698822 e!1425491))))

(declare-fun mapKey!14379 () (_ BitVec 32))

(declare-fun mapRest!14379 () (Array (_ BitVec 32) List!26303))

(assert (=> mapNonEmpty!14379 (= mapRest!14376 (store mapRest!14379 mapKey!14379 mapValue!14379))))

(declare-fun b!2230526 () Bool)

(declare-fun tp!698816 () Bool)

(assert (=> b!2230526 (= e!1425492 tp!698816)))

(declare-fun setElem!20070 () Context!3926)

(declare-fun tp!698824 () Bool)

(declare-fun setNonEmpty!20070 () Bool)

(assert (=> setNonEmpty!20070 (= setRes!20069 (and tp!698824 (inv!35592 setElem!20070) e!1425489))))

(declare-fun setRest!20070 () (InoxSet Context!3926))

(assert (=> setNonEmpty!20070 (= (_2!15200 (h!31610 mapValue!14379)) ((_ map or) (store ((as const (Array Context!3926 Bool)) false) setElem!20070 true) setRest!20070))))

(declare-fun condMapEmpty!14379 () Bool)

(assert (=> mapNonEmpty!14376 (= condMapEmpty!14379 (= mapRest!14376 ((as const (Array (_ BitVec 32) List!26303)) mapDefault!14379)))))

(assert (=> mapNonEmpty!14376 (= tp!698755 (and e!1425494 mapRes!14379))))

(declare-fun setIsEmpty!20069 () Bool)

(assert (=> setIsEmpty!20069 setRes!20069))

(declare-fun b!2230527 () Bool)

(declare-fun tp!698823 () Bool)

(assert (=> b!2230527 (= e!1425493 tp!698823)))

(declare-fun b!2230528 () Bool)

(declare-fun tp!698821 () Bool)

(assert (=> b!2230528 (= e!1425490 tp!698821)))

(assert (= (and mapNonEmpty!14376 condMapEmpty!14379) mapIsEmpty!14379))

(assert (= (and mapNonEmpty!14376 (not condMapEmpty!14379)) mapNonEmpty!14379))

(assert (= b!2230524 b!2230528))

(assert (= (and b!2230524 condSetEmpty!20070) setIsEmpty!20069))

(assert (= (and b!2230524 (not condSetEmpty!20070)) setNonEmpty!20070))

(assert (= setNonEmpty!20070 b!2230525))

(assert (= (and mapNonEmpty!14379 ((_ is Cons!26209) mapValue!14379)) b!2230524))

(assert (= b!2230523 b!2230527))

(assert (= (and b!2230523 condSetEmpty!20069) setIsEmpty!20070))

(assert (= (and b!2230523 (not condSetEmpty!20069)) setNonEmpty!20069))

(assert (= setNonEmpty!20069 b!2230526))

(assert (= (and mapNonEmpty!14376 ((_ is Cons!26209) mapDefault!14379)) b!2230523))

(declare-fun m!2667442 () Bool)

(assert (=> b!2230524 m!2667442))

(declare-fun m!2667444 () Bool)

(assert (=> mapNonEmpty!14379 m!2667444))

(declare-fun m!2667446 () Bool)

(assert (=> b!2230523 m!2667446))

(declare-fun m!2667448 () Bool)

(assert (=> setNonEmpty!20069 m!2667448))

(declare-fun m!2667450 () Bool)

(assert (=> setNonEmpty!20070 m!2667450))

(declare-fun setElem!20071 () Context!3926)

(declare-fun setRes!20071 () Bool)

(declare-fun tp!698829 () Bool)

(declare-fun e!1425496 () Bool)

(declare-fun setNonEmpty!20071 () Bool)

(assert (=> setNonEmpty!20071 (= setRes!20071 (and tp!698829 (inv!35592 setElem!20071) e!1425496))))

(declare-fun setRest!20071 () (InoxSet Context!3926))

(assert (=> setNonEmpty!20071 (= (_2!15200 (h!31610 mapValue!14376)) ((_ map or) (store ((as const (Array Context!3926 Bool)) false) setElem!20071 true) setRest!20071))))

(declare-fun setIsEmpty!20071 () Bool)

(assert (=> setIsEmpty!20071 setRes!20071))

(declare-fun e!1425497 () Bool)

(declare-fun e!1425495 () Bool)

(declare-fun b!2230529 () Bool)

(declare-fun tp!698826 () Bool)

(declare-fun tp!698827 () Bool)

(assert (=> b!2230529 (= e!1425495 (and tp!698826 (inv!35592 (_2!15199 (_1!15200 (h!31610 mapValue!14376)))) e!1425497 tp_is_empty!10055 setRes!20071 tp!698827))))

(declare-fun condSetEmpty!20071 () Bool)

(assert (=> b!2230529 (= condSetEmpty!20071 (= (_2!15200 (h!31610 mapValue!14376)) ((as const (Array Context!3926 Bool)) false)))))

(declare-fun b!2230530 () Bool)

(declare-fun tp!698825 () Bool)

(assert (=> b!2230530 (= e!1425496 tp!698825)))

(declare-fun b!2230531 () Bool)

(declare-fun tp!698828 () Bool)

(assert (=> b!2230531 (= e!1425497 tp!698828)))

(assert (=> mapNonEmpty!14376 (= tp!698753 e!1425495)))

(assert (= b!2230529 b!2230531))

(assert (= (and b!2230529 condSetEmpty!20071) setIsEmpty!20071))

(assert (= (and b!2230529 (not condSetEmpty!20071)) setNonEmpty!20071))

(assert (= setNonEmpty!20071 b!2230530))

(assert (= (and mapNonEmpty!14376 ((_ is Cons!26209) mapValue!14376)) b!2230529))

(declare-fun m!2667452 () Bool)

(assert (=> setNonEmpty!20071 m!2667452))

(declare-fun m!2667454 () Bool)

(assert (=> b!2230529 m!2667454))

(declare-fun b!2230535 () Bool)

(declare-fun e!1425498 () Bool)

(declare-fun tp!698833 () Bool)

(declare-fun tp!698830 () Bool)

(assert (=> b!2230535 (= e!1425498 (and tp!698833 tp!698830))))

(declare-fun b!2230534 () Bool)

(declare-fun tp!698834 () Bool)

(assert (=> b!2230534 (= e!1425498 tp!698834)))

(declare-fun b!2230533 () Bool)

(declare-fun tp!698831 () Bool)

(declare-fun tp!698832 () Bool)

(assert (=> b!2230533 (= e!1425498 (and tp!698831 tp!698832))))

(declare-fun b!2230532 () Bool)

(assert (=> b!2230532 (= e!1425498 tp_is_empty!10055)))

(assert (=> b!2230360 (= tp!698749 e!1425498)))

(assert (= (and b!2230360 ((_ is ElementMatch!6415) (regOne!13343 expr!64))) b!2230532))

(assert (= (and b!2230360 ((_ is Concat!10753) (regOne!13343 expr!64))) b!2230533))

(assert (= (and b!2230360 ((_ is Star!6415) (regOne!13343 expr!64))) b!2230534))

(assert (= (and b!2230360 ((_ is Union!6415) (regOne!13343 expr!64))) b!2230535))

(declare-fun b!2230539 () Bool)

(declare-fun e!1425499 () Bool)

(declare-fun tp!698838 () Bool)

(declare-fun tp!698835 () Bool)

(assert (=> b!2230539 (= e!1425499 (and tp!698838 tp!698835))))

(declare-fun b!2230538 () Bool)

(declare-fun tp!698839 () Bool)

(assert (=> b!2230538 (= e!1425499 tp!698839)))

(declare-fun b!2230537 () Bool)

(declare-fun tp!698836 () Bool)

(declare-fun tp!698837 () Bool)

(assert (=> b!2230537 (= e!1425499 (and tp!698836 tp!698837))))

(declare-fun b!2230536 () Bool)

(assert (=> b!2230536 (= e!1425499 tp_is_empty!10055)))

(assert (=> b!2230360 (= tp!698754 e!1425499)))

(assert (= (and b!2230360 ((_ is ElementMatch!6415) (regTwo!13343 expr!64))) b!2230536))

(assert (= (and b!2230360 ((_ is Concat!10753) (regTwo!13343 expr!64))) b!2230537))

(assert (= (and b!2230360 ((_ is Star!6415) (regTwo!13343 expr!64))) b!2230538))

(assert (= (and b!2230360 ((_ is Union!6415) (regTwo!13343 expr!64))) b!2230539))

(declare-fun b!2230543 () Bool)

(declare-fun e!1425500 () Bool)

(declare-fun tp!698843 () Bool)

(declare-fun tp!698840 () Bool)

(assert (=> b!2230543 (= e!1425500 (and tp!698843 tp!698840))))

(declare-fun b!2230542 () Bool)

(declare-fun tp!698844 () Bool)

(assert (=> b!2230542 (= e!1425500 tp!698844)))

(declare-fun b!2230541 () Bool)

(declare-fun tp!698841 () Bool)

(declare-fun tp!698842 () Bool)

(assert (=> b!2230541 (= e!1425500 (and tp!698841 tp!698842))))

(declare-fun b!2230540 () Bool)

(assert (=> b!2230540 (= e!1425500 tp_is_empty!10055)))

(assert (=> b!2230369 (= tp!698752 e!1425500)))

(assert (= (and b!2230369 ((_ is ElementMatch!6415) (regOne!13342 expr!64))) b!2230540))

(assert (= (and b!2230369 ((_ is Concat!10753) (regOne!13342 expr!64))) b!2230541))

(assert (= (and b!2230369 ((_ is Star!6415) (regOne!13342 expr!64))) b!2230542))

(assert (= (and b!2230369 ((_ is Union!6415) (regOne!13342 expr!64))) b!2230543))

(declare-fun b!2230547 () Bool)

(declare-fun e!1425501 () Bool)

(declare-fun tp!698848 () Bool)

(declare-fun tp!698845 () Bool)

(assert (=> b!2230547 (= e!1425501 (and tp!698848 tp!698845))))

(declare-fun b!2230546 () Bool)

(declare-fun tp!698849 () Bool)

(assert (=> b!2230546 (= e!1425501 tp!698849)))

(declare-fun b!2230545 () Bool)

(declare-fun tp!698846 () Bool)

(declare-fun tp!698847 () Bool)

(assert (=> b!2230545 (= e!1425501 (and tp!698846 tp!698847))))

(declare-fun b!2230544 () Bool)

(assert (=> b!2230544 (= e!1425501 tp_is_empty!10055)))

(assert (=> b!2230369 (= tp!698747 e!1425501)))

(assert (= (and b!2230369 ((_ is ElementMatch!6415) (regTwo!13342 expr!64))) b!2230544))

(assert (= (and b!2230369 ((_ is Concat!10753) (regTwo!13342 expr!64))) b!2230545))

(assert (= (and b!2230369 ((_ is Star!6415) (regTwo!13342 expr!64))) b!2230546))

(assert (= (and b!2230369 ((_ is Union!6415) (regTwo!13342 expr!64))) b!2230547))

(declare-fun setNonEmpty!20072 () Bool)

(declare-fun setRes!20072 () Bool)

(declare-fun setElem!20072 () Context!3926)

(declare-fun e!1425503 () Bool)

(declare-fun tp!698854 () Bool)

(assert (=> setNonEmpty!20072 (= setRes!20072 (and tp!698854 (inv!35592 setElem!20072) e!1425503))))

(declare-fun setRest!20072 () (InoxSet Context!3926))

(assert (=> setNonEmpty!20072 (= (_2!15200 (h!31610 mapDefault!14376)) ((_ map or) (store ((as const (Array Context!3926 Bool)) false) setElem!20072 true) setRest!20072))))

(declare-fun setIsEmpty!20072 () Bool)

(assert (=> setIsEmpty!20072 setRes!20072))

(declare-fun e!1425504 () Bool)

(declare-fun e!1425502 () Bool)

(declare-fun tp!698852 () Bool)

(declare-fun b!2230548 () Bool)

(declare-fun tp!698851 () Bool)

(assert (=> b!2230548 (= e!1425502 (and tp!698851 (inv!35592 (_2!15199 (_1!15200 (h!31610 mapDefault!14376)))) e!1425504 tp_is_empty!10055 setRes!20072 tp!698852))))

(declare-fun condSetEmpty!20072 () Bool)

(assert (=> b!2230548 (= condSetEmpty!20072 (= (_2!15200 (h!31610 mapDefault!14376)) ((as const (Array Context!3926 Bool)) false)))))

(declare-fun b!2230549 () Bool)

(declare-fun tp!698850 () Bool)

(assert (=> b!2230549 (= e!1425503 tp!698850)))

(declare-fun b!2230550 () Bool)

(declare-fun tp!698853 () Bool)

(assert (=> b!2230550 (= e!1425504 tp!698853)))

(assert (=> b!2230357 (= tp!698750 e!1425502)))

(assert (= b!2230548 b!2230550))

(assert (= (and b!2230548 condSetEmpty!20072) setIsEmpty!20072))

(assert (= (and b!2230548 (not condSetEmpty!20072)) setNonEmpty!20072))

(assert (= setNonEmpty!20072 b!2230549))

(assert (= (and b!2230357 ((_ is Cons!26209) mapDefault!14376)) b!2230548))

(declare-fun m!2667456 () Bool)

(assert (=> setNonEmpty!20072 m!2667456))

(declare-fun m!2667458 () Bool)

(assert (=> b!2230548 m!2667458))

(declare-fun b!2230555 () Bool)

(declare-fun e!1425507 () Bool)

(declare-fun tp!698859 () Bool)

(declare-fun tp!698860 () Bool)

(assert (=> b!2230555 (= e!1425507 (and tp!698859 tp!698860))))

(assert (=> b!2230368 (= tp!698748 e!1425507)))

(assert (= (and b!2230368 ((_ is Cons!26208) (exprs!2463 context!86))) b!2230555))

(check-sat (not b!2230524) (not b!2230394) (not b!2230474) (not b!2230549) (not setNonEmpty!20072) (not b!2230491) (not b!2230507) (not b!2230494) (not setNonEmpty!20064) (not d!664981) b_and!174661 (not bm!133877) (not b!2230541) (not b!2230527) (not b!2230523) (not b!2230526) (not bm!133855) (not d!664987) (not b!2230489) (not bm!133885) (not b!2230403) (not b!2230548) (not b_next!65377) (not b!2230373) tp_is_empty!10055 (not setNonEmpty!20069) (not b!2230531) (not b!2230543) (not d!664989) (not b_next!65379) (not b!2230555) b_and!174663 (not b!2230508) (not bm!133875) (not b!2230537) (not bm!133880) (not b!2230534) (not b!2230529) (not setNonEmpty!20063) (not b!2230546) (not b!2230525) (not bm!133881) (not bm!133886) (not b!2230539) (not b!2230492) (not b!2230533) (not b!2230550) (not bm!133887) (not b!2230530) (not bm!133856) (not b!2230538) (not setNonEmpty!20070) (not b!2230493) (not b!2230545) (not b!2230535) (not bm!133874) (not b!2230490) (not mapNonEmpty!14379) (not bm!133873) (not setNonEmpty!20071) (not b!2230547) (not bm!133882) (not bm!133878) (not b!2230542) (not bm!133884) (not b!2230506) (not b!2230528))
(check-sat b_and!174663 b_and!174661 (not b_next!65377) (not b_next!65379))
