; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296630 () Bool)

(assert start!296630)

(declare-fun b!3165354 () Bool)

(declare-fun b_free!83121 () Bool)

(declare-fun b_next!83825 () Bool)

(assert (=> b!3165354 (= b_free!83121 (not b_next!83825))))

(declare-fun tp!997258 () Bool)

(declare-fun b_and!209379 () Bool)

(assert (=> b!3165354 (= tp!997258 b_and!209379)))

(declare-fun b!3165344 () Bool)

(declare-fun b_free!83123 () Bool)

(declare-fun b_next!83827 () Bool)

(assert (=> b!3165344 (= b_free!83123 (not b_next!83827))))

(declare-fun tp!997260 () Bool)

(declare-fun b_and!209381 () Bool)

(assert (=> b!3165344 (= tp!997260 b_and!209381)))

(declare-fun mapNonEmpty!18864 () Bool)

(declare-fun mapRes!18864 () Bool)

(declare-fun tp!997262 () Bool)

(declare-fun tp!997254 () Bool)

(assert (=> mapNonEmpty!18864 (= mapRes!18864 (and tp!997262 tp!997254))))

(declare-fun mapKey!18864 () (_ BitVec 32))

(declare-datatypes ((C!19664 0))(
  ( (C!19665 (val!11868 Int)) )
))
(declare-datatypes ((Regex!9739 0))(
  ( (ElementMatch!9739 (c!532305 C!19664)) (Concat!15060 (regOne!19990 Regex!9739) (regTwo!19990 Regex!9739)) (EmptyExpr!9739) (Star!9739 (reg!10068 Regex!9739)) (EmptyLang!9739) (Union!9739 (regOne!19991 Regex!9739) (regTwo!19991 Regex!9739)) )
))
(declare-datatypes ((tuple2!34532 0))(
  ( (tuple2!34533 (_1!20398 Regex!9739) (_2!20398 C!19664)) )
))
(declare-datatypes ((tuple2!34534 0))(
  ( (tuple2!34535 (_1!20399 tuple2!34532) (_2!20399 Regex!9739)) )
))
(declare-datatypes ((List!35571 0))(
  ( (Nil!35447) (Cons!35447 (h!40867 tuple2!34534) (t!234644 List!35571)) )
))
(declare-fun mapValue!18864 () List!35571)

(declare-datatypes ((array!14844 0))(
  ( (array!14845 (arr!6610 (Array (_ BitVec 32) (_ BitVec 64))) (size!26696 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4076 0))(
  ( (HashableExt!4075 (__x!22586 Int)) )
))
(declare-datatypes ((array!14846 0))(
  ( (array!14847 (arr!6611 (Array (_ BitVec 32) List!35571)) (size!26697 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8320 0))(
  ( (LongMapFixedSize!8321 (defaultEntry!4545 Int) (mask!10823 (_ BitVec 32)) (extraKeys!4409 (_ BitVec 32)) (zeroValue!4419 List!35571) (minValue!4419 List!35571) (_size!8363 (_ BitVec 32)) (_keys!4460 array!14844) (_values!4441 array!14846) (_vacant!4221 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16449 0))(
  ( (Cell!16450 (v!35130 LongMapFixedSize!8320)) )
))
(declare-datatypes ((MutLongMap!4160 0))(
  ( (LongMap!4160 (underlying!8549 Cell!16449)) (MutLongMapExt!4159 (__x!22587 Int)) )
))
(declare-datatypes ((Cell!16451 0))(
  ( (Cell!16452 (v!35131 MutLongMap!4160)) )
))
(declare-datatypes ((MutableMap!4066 0))(
  ( (MutableMapExt!4065 (__x!22588 Int)) (HashMap!4066 (underlying!8550 Cell!16451) (hashF!6108 Hashable!4076) (_size!8364 (_ BitVec 32)) (defaultValue!4237 Int)) )
))
(declare-datatypes ((Cache!402 0))(
  ( (Cache!403 (cache!4209 MutableMap!4066)) )
))
(declare-fun cache!347 () Cache!402)

(declare-fun mapRest!18864 () (Array (_ BitVec 32) List!35571))

(assert (=> mapNonEmpty!18864 (= (arr!6611 (_values!4441 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) (store mapRest!18864 mapKey!18864 mapValue!18864))))

(declare-fun b!3165342 () Bool)

(declare-fun e!1971832 () Bool)

(declare-fun tp!997252 () Bool)

(assert (=> b!3165342 (= e!1971832 (and tp!997252 mapRes!18864))))

(declare-fun condMapEmpty!18864 () Bool)

(declare-fun mapDefault!18864 () List!35571)

(assert (=> b!3165342 (= condMapEmpty!18864 (= (arr!6611 (_values!4441 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) ((as const (Array (_ BitVec 32) List!35571)) mapDefault!18864)))))

(declare-fun b!3165343 () Bool)

(declare-fun e!1971831 () Bool)

(declare-fun tp!997257 () Bool)

(declare-fun tp!997259 () Bool)

(assert (=> b!3165343 (= e!1971831 (and tp!997257 tp!997259))))

(declare-fun e!1971836 () Bool)

(declare-fun e!1971833 () Bool)

(assert (=> b!3165344 (= e!1971836 (and e!1971833 tp!997260))))

(declare-fun b!3165345 () Bool)

(declare-fun res!1287901 () Bool)

(declare-fun e!1971839 () Bool)

(assert (=> b!3165345 (=> (not res!1287901) (not e!1971839))))

(declare-fun r!13156 () Regex!9739)

(declare-fun a!2409 () C!19664)

(get-info :version)

(declare-datatypes ((Option!6899 0))(
  ( (None!6898) (Some!6898 (v!35132 Regex!9739)) )
))
(declare-fun get!11242 (Cache!402 Regex!9739 C!19664) Option!6899)

(assert (=> b!3165345 (= res!1287901 (not ((_ is Some!6898) (get!11242 cache!347 r!13156 a!2409))))))

(declare-fun b!3165346 () Bool)

(declare-fun tp!997261 () Bool)

(declare-fun tp!997255 () Bool)

(assert (=> b!3165346 (= e!1971831 (and tp!997261 tp!997255))))

(declare-fun b!3165347 () Bool)

(declare-fun tp!997263 () Bool)

(assert (=> b!3165347 (= e!1971831 tp!997263)))

(declare-fun b!3165348 () Bool)

(declare-fun res!1287900 () Bool)

(assert (=> b!3165348 (=> (not res!1287900) (not e!1971839))))

(assert (=> b!3165348 (= res!1287900 (and (not ((_ is EmptyExpr!9739) r!13156)) (not ((_ is EmptyLang!9739) r!13156)) (not ((_ is ElementMatch!9739) r!13156)) ((_ is Union!9739) r!13156)))))

(declare-fun b!3165349 () Bool)

(declare-fun res!1287902 () Bool)

(assert (=> b!3165349 (=> (not res!1287902) (not e!1971839))))

(declare-fun valid!3244 (Cache!402) Bool)

(assert (=> b!3165349 (= res!1287902 (valid!3244 cache!347))))

(declare-fun b!3165350 () Bool)

(declare-fun e!1971835 () Bool)

(declare-fun e!1971840 () Bool)

(assert (=> b!3165350 (= e!1971835 e!1971840)))

(declare-fun b!3165351 () Bool)

(declare-fun e!1971834 () Bool)

(declare-fun lt!1064166 () MutLongMap!4160)

(assert (=> b!3165351 (= e!1971833 (and e!1971834 ((_ is LongMap!4160) lt!1064166)))))

(assert (=> b!3165351 (= lt!1064166 (v!35131 (underlying!8550 (cache!4209 cache!347))))))

(declare-fun mapIsEmpty!18864 () Bool)

(assert (=> mapIsEmpty!18864 mapRes!18864))

(declare-fun res!1287899 () Bool)

(assert (=> start!296630 (=> (not res!1287899) (not e!1971839))))

(declare-fun validRegex!4461 (Regex!9739) Bool)

(assert (=> start!296630 (= res!1287899 (validRegex!4461 r!13156))))

(assert (=> start!296630 e!1971839))

(assert (=> start!296630 e!1971831))

(declare-fun e!1971838 () Bool)

(declare-fun inv!48117 (Cache!402) Bool)

(assert (=> start!296630 (and (inv!48117 cache!347) e!1971838)))

(declare-fun tp_is_empty!17041 () Bool)

(assert (=> start!296630 tp_is_empty!17041))

(declare-fun b!3165352 () Bool)

(assert (=> b!3165352 (= e!1971838 e!1971836)))

(declare-fun b!3165353 () Bool)

(declare-fun RegexPrimitiveSize!127 (Regex!9739) Int)

(assert (=> b!3165353 (= e!1971839 (>= (RegexPrimitiveSize!127 (regOne!19991 r!13156)) (RegexPrimitiveSize!127 r!13156)))))

(declare-fun tp!997253 () Bool)

(declare-fun tp!997256 () Bool)

(declare-fun array_inv!4734 (array!14844) Bool)

(declare-fun array_inv!4735 (array!14846) Bool)

(assert (=> b!3165354 (= e!1971840 (and tp!997258 tp!997256 tp!997253 (array_inv!4734 (_keys!4460 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) (array_inv!4735 (_values!4441 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) e!1971832))))

(declare-fun b!3165355 () Bool)

(assert (=> b!3165355 (= e!1971834 e!1971835)))

(declare-fun b!3165356 () Bool)

(assert (=> b!3165356 (= e!1971831 tp_is_empty!17041)))

(assert (= (and start!296630 res!1287899) b!3165349))

(assert (= (and b!3165349 res!1287902) b!3165345))

(assert (= (and b!3165345 res!1287901) b!3165348))

(assert (= (and b!3165348 res!1287900) b!3165353))

(assert (= (and start!296630 ((_ is ElementMatch!9739) r!13156)) b!3165356))

(assert (= (and start!296630 ((_ is Concat!15060) r!13156)) b!3165343))

(assert (= (and start!296630 ((_ is Star!9739) r!13156)) b!3165347))

(assert (= (and start!296630 ((_ is Union!9739) r!13156)) b!3165346))

(assert (= (and b!3165342 condMapEmpty!18864) mapIsEmpty!18864))

(assert (= (and b!3165342 (not condMapEmpty!18864)) mapNonEmpty!18864))

(assert (= b!3165354 b!3165342))

(assert (= b!3165350 b!3165354))

(assert (= b!3165355 b!3165350))

(assert (= (and b!3165351 ((_ is LongMap!4160) (v!35131 (underlying!8550 (cache!4209 cache!347))))) b!3165355))

(assert (= b!3165344 b!3165351))

(assert (= (and b!3165352 ((_ is HashMap!4066) (cache!4209 cache!347))) b!3165344))

(assert (= start!296630 b!3165352))

(declare-fun m!3427624 () Bool)

(assert (=> b!3165345 m!3427624))

(declare-fun m!3427626 () Bool)

(assert (=> b!3165353 m!3427626))

(declare-fun m!3427628 () Bool)

(assert (=> b!3165353 m!3427628))

(declare-fun m!3427630 () Bool)

(assert (=> b!3165349 m!3427630))

(declare-fun m!3427632 () Bool)

(assert (=> b!3165354 m!3427632))

(declare-fun m!3427634 () Bool)

(assert (=> b!3165354 m!3427634))

(declare-fun m!3427636 () Bool)

(assert (=> start!296630 m!3427636))

(declare-fun m!3427638 () Bool)

(assert (=> start!296630 m!3427638))

(declare-fun m!3427640 () Bool)

(assert (=> mapNonEmpty!18864 m!3427640))

(check-sat (not start!296630) b_and!209379 (not b_next!83825) (not b!3165345) (not b!3165349) (not b!3165353) (not b_next!83827) (not b!3165347) (not b!3165343) (not b!3165354) (not b!3165342) (not b!3165346) tp_is_empty!17041 (not mapNonEmpty!18864) b_and!209381)
(check-sat b_and!209381 b_and!209379 (not b_next!83825) (not b_next!83827))
(get-model)

(declare-fun b!3165375 () Bool)

(declare-fun e!1971858 () Bool)

(declare-fun e!1971859 () Bool)

(assert (=> b!3165375 (= e!1971858 e!1971859)))

(declare-fun res!1287913 () Bool)

(declare-fun nullable!3343 (Regex!9739) Bool)

(assert (=> b!3165375 (= res!1287913 (not (nullable!3343 (reg!10068 r!13156))))))

(assert (=> b!3165375 (=> (not res!1287913) (not e!1971859))))

(declare-fun b!3165376 () Bool)

(declare-fun e!1971855 () Bool)

(declare-fun call!229460 () Bool)

(assert (=> b!3165376 (= e!1971855 call!229460)))

(declare-fun b!3165377 () Bool)

(declare-fun e!1971856 () Bool)

(assert (=> b!3165377 (= e!1971856 e!1971858)))

(declare-fun c!532310 () Bool)

(assert (=> b!3165377 (= c!532310 ((_ is Star!9739) r!13156))))

(declare-fun bm!229454 () Bool)

(declare-fun call!229461 () Bool)

(declare-fun c!532311 () Bool)

(assert (=> bm!229454 (= call!229461 (validRegex!4461 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))))))

(declare-fun b!3165378 () Bool)

(declare-fun e!1971861 () Bool)

(assert (=> b!3165378 (= e!1971858 e!1971861)))

(assert (=> b!3165378 (= c!532311 ((_ is Union!9739) r!13156))))

(declare-fun b!3165379 () Bool)

(declare-fun e!1971857 () Bool)

(assert (=> b!3165379 (= e!1971857 call!229460)))

(declare-fun bm!229455 () Bool)

(declare-fun call!229459 () Bool)

(assert (=> bm!229455 (= call!229460 call!229459)))

(declare-fun d!868783 () Bool)

(declare-fun res!1287917 () Bool)

(assert (=> d!868783 (=> res!1287917 e!1971856)))

(assert (=> d!868783 (= res!1287917 ((_ is ElementMatch!9739) r!13156))))

(assert (=> d!868783 (= (validRegex!4461 r!13156) e!1971856)))

(declare-fun b!3165380 () Bool)

(declare-fun res!1287915 () Bool)

(assert (=> b!3165380 (=> (not res!1287915) (not e!1971855))))

(assert (=> b!3165380 (= res!1287915 call!229461)))

(assert (=> b!3165380 (= e!1971861 e!1971855)))

(declare-fun b!3165381 () Bool)

(assert (=> b!3165381 (= e!1971859 call!229459)))

(declare-fun bm!229456 () Bool)

(assert (=> bm!229456 (= call!229459 (validRegex!4461 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))))))

(declare-fun b!3165382 () Bool)

(declare-fun res!1287916 () Bool)

(declare-fun e!1971860 () Bool)

(assert (=> b!3165382 (=> res!1287916 e!1971860)))

(assert (=> b!3165382 (= res!1287916 (not ((_ is Concat!15060) r!13156)))))

(assert (=> b!3165382 (= e!1971861 e!1971860)))

(declare-fun b!3165383 () Bool)

(assert (=> b!3165383 (= e!1971860 e!1971857)))

(declare-fun res!1287914 () Bool)

(assert (=> b!3165383 (=> (not res!1287914) (not e!1971857))))

(assert (=> b!3165383 (= res!1287914 call!229461)))

(assert (= (and d!868783 (not res!1287917)) b!3165377))

(assert (= (and b!3165377 c!532310) b!3165375))

(assert (= (and b!3165377 (not c!532310)) b!3165378))

(assert (= (and b!3165375 res!1287913) b!3165381))

(assert (= (and b!3165378 c!532311) b!3165380))

(assert (= (and b!3165378 (not c!532311)) b!3165382))

(assert (= (and b!3165380 res!1287915) b!3165376))

(assert (= (and b!3165382 (not res!1287916)) b!3165383))

(assert (= (and b!3165383 res!1287914) b!3165379))

(assert (= (or b!3165380 b!3165383) bm!229454))

(assert (= (or b!3165376 b!3165379) bm!229455))

(assert (= (or b!3165381 bm!229455) bm!229456))

(declare-fun m!3427642 () Bool)

(assert (=> b!3165375 m!3427642))

(declare-fun m!3427644 () Bool)

(assert (=> bm!229454 m!3427644))

(declare-fun m!3427646 () Bool)

(assert (=> bm!229456 m!3427646))

(assert (=> start!296630 d!868783))

(declare-fun d!868785 () Bool)

(declare-fun res!1287920 () Bool)

(declare-fun e!1971864 () Bool)

(assert (=> d!868785 (=> (not res!1287920) (not e!1971864))))

(assert (=> d!868785 (= res!1287920 ((_ is HashMap!4066) (cache!4209 cache!347)))))

(assert (=> d!868785 (= (inv!48117 cache!347) e!1971864)))

(declare-fun b!3165386 () Bool)

(declare-fun validCacheMap!57 (MutableMap!4066) Bool)

(assert (=> b!3165386 (= e!1971864 (validCacheMap!57 (cache!4209 cache!347)))))

(assert (= (and d!868785 res!1287920) b!3165386))

(declare-fun m!3427648 () Bool)

(assert (=> b!3165386 m!3427648))

(assert (=> start!296630 d!868785))

(declare-fun b!3165407 () Bool)

(declare-fun e!1971879 () Int)

(declare-fun e!1971878 () Int)

(assert (=> b!3165407 (= e!1971879 e!1971878)))

(declare-fun c!532324 () Bool)

(assert (=> b!3165407 (= c!532324 ((_ is Concat!15060) (regOne!19991 r!13156)))))

(declare-fun b!3165408 () Bool)

(declare-fun e!1971877 () Int)

(declare-fun e!1971876 () Int)

(assert (=> b!3165408 (= e!1971877 e!1971876)))

(declare-fun c!532326 () Bool)

(assert (=> b!3165408 (= c!532326 ((_ is Star!9739) (regOne!19991 r!13156)))))

(declare-fun b!3165409 () Bool)

(declare-fun e!1971875 () Int)

(assert (=> b!3165409 (= e!1971875 0)))

(declare-fun bm!229463 () Bool)

(declare-fun call!229468 () Int)

(assert (=> bm!229463 (= call!229468 (RegexPrimitiveSize!127 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))

(declare-fun b!3165410 () Bool)

(assert (=> b!3165410 (= e!1971879 1)))

(declare-fun d!868787 () Bool)

(declare-fun lt!1064169 () Int)

(assert (=> d!868787 (>= lt!1064169 0)))

(assert (=> d!868787 (= lt!1064169 e!1971879)))

(declare-fun c!532325 () Bool)

(assert (=> d!868787 (= c!532325 ((_ is ElementMatch!9739) (regOne!19991 r!13156)))))

(assert (=> d!868787 (= (RegexPrimitiveSize!127 (regOne!19991 r!13156)) lt!1064169)))

(declare-fun b!3165411 () Bool)

(declare-fun call!229469 () Int)

(assert (=> b!3165411 (= e!1971878 (+ 1 call!229469 call!229468))))

(declare-fun b!3165412 () Bool)

(declare-fun c!532322 () Bool)

(assert (=> b!3165412 (= c!532322 ((_ is EmptyLang!9739) (regOne!19991 r!13156)))))

(assert (=> b!3165412 (= e!1971876 e!1971875)))

(declare-fun bm!229464 () Bool)

(assert (=> bm!229464 (= call!229469 (RegexPrimitiveSize!127 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))

(declare-fun b!3165413 () Bool)

(declare-fun call!229470 () Int)

(assert (=> b!3165413 (= e!1971876 (+ 1 call!229470))))

(declare-fun bm!229465 () Bool)

(assert (=> bm!229465 (= call!229470 call!229468)))

(declare-fun b!3165414 () Bool)

(declare-fun c!532323 () Bool)

(assert (=> b!3165414 (= c!532323 ((_ is EmptyExpr!9739) (regOne!19991 r!13156)))))

(assert (=> b!3165414 (= e!1971878 e!1971877)))

(declare-fun b!3165415 () Bool)

(assert (=> b!3165415 (= e!1971875 (+ 1 call!229469 call!229470))))

(declare-fun b!3165416 () Bool)

(assert (=> b!3165416 (= e!1971877 0)))

(assert (= (and d!868787 c!532325) b!3165410))

(assert (= (and d!868787 (not c!532325)) b!3165407))

(assert (= (and b!3165407 c!532324) b!3165411))

(assert (= (and b!3165407 (not c!532324)) b!3165414))

(assert (= (and b!3165414 c!532323) b!3165416))

(assert (= (and b!3165414 (not c!532323)) b!3165408))

(assert (= (and b!3165408 c!532326) b!3165413))

(assert (= (and b!3165408 (not c!532326)) b!3165412))

(assert (= (and b!3165412 c!532322) b!3165409))

(assert (= (and b!3165412 (not c!532322)) b!3165415))

(assert (= (or b!3165413 b!3165415) bm!229465))

(assert (= (or b!3165411 bm!229465) bm!229463))

(assert (= (or b!3165411 b!3165415) bm!229464))

(declare-fun m!3427650 () Bool)

(assert (=> bm!229463 m!3427650))

(declare-fun m!3427652 () Bool)

(assert (=> bm!229464 m!3427652))

(assert (=> b!3165353 d!868787))

(declare-fun b!3165417 () Bool)

(declare-fun e!1971884 () Int)

(declare-fun e!1971883 () Int)

(assert (=> b!3165417 (= e!1971884 e!1971883)))

(declare-fun c!532329 () Bool)

(assert (=> b!3165417 (= c!532329 ((_ is Concat!15060) r!13156))))

(declare-fun b!3165418 () Bool)

(declare-fun e!1971882 () Int)

(declare-fun e!1971881 () Int)

(assert (=> b!3165418 (= e!1971882 e!1971881)))

(declare-fun c!532331 () Bool)

(assert (=> b!3165418 (= c!532331 ((_ is Star!9739) r!13156))))

(declare-fun b!3165419 () Bool)

(declare-fun e!1971880 () Int)

(assert (=> b!3165419 (= e!1971880 0)))

(declare-fun bm!229466 () Bool)

(declare-fun call!229471 () Int)

(assert (=> bm!229466 (= call!229471 (RegexPrimitiveSize!127 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))

(declare-fun b!3165420 () Bool)

(assert (=> b!3165420 (= e!1971884 1)))

(declare-fun d!868789 () Bool)

(declare-fun lt!1064170 () Int)

(assert (=> d!868789 (>= lt!1064170 0)))

(assert (=> d!868789 (= lt!1064170 e!1971884)))

(declare-fun c!532330 () Bool)

(assert (=> d!868789 (= c!532330 ((_ is ElementMatch!9739) r!13156))))

(assert (=> d!868789 (= (RegexPrimitiveSize!127 r!13156) lt!1064170)))

(declare-fun b!3165421 () Bool)

(declare-fun call!229472 () Int)

(assert (=> b!3165421 (= e!1971883 (+ 1 call!229472 call!229471))))

(declare-fun b!3165422 () Bool)

(declare-fun c!532327 () Bool)

(assert (=> b!3165422 (= c!532327 ((_ is EmptyLang!9739) r!13156))))

(assert (=> b!3165422 (= e!1971881 e!1971880)))

(declare-fun bm!229467 () Bool)

(assert (=> bm!229467 (= call!229472 (RegexPrimitiveSize!127 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))

(declare-fun b!3165423 () Bool)

(declare-fun call!229473 () Int)

(assert (=> b!3165423 (= e!1971881 (+ 1 call!229473))))

(declare-fun bm!229468 () Bool)

(assert (=> bm!229468 (= call!229473 call!229471)))

(declare-fun b!3165424 () Bool)

(declare-fun c!532328 () Bool)

(assert (=> b!3165424 (= c!532328 ((_ is EmptyExpr!9739) r!13156))))

(assert (=> b!3165424 (= e!1971883 e!1971882)))

(declare-fun b!3165425 () Bool)

(assert (=> b!3165425 (= e!1971880 (+ 1 call!229472 call!229473))))

(declare-fun b!3165426 () Bool)

(assert (=> b!3165426 (= e!1971882 0)))

(assert (= (and d!868789 c!532330) b!3165420))

(assert (= (and d!868789 (not c!532330)) b!3165417))

(assert (= (and b!3165417 c!532329) b!3165421))

(assert (= (and b!3165417 (not c!532329)) b!3165424))

(assert (= (and b!3165424 c!532328) b!3165426))

(assert (= (and b!3165424 (not c!532328)) b!3165418))

(assert (= (and b!3165418 c!532331) b!3165423))

(assert (= (and b!3165418 (not c!532331)) b!3165422))

(assert (= (and b!3165422 c!532327) b!3165419))

(assert (= (and b!3165422 (not c!532327)) b!3165425))

(assert (= (or b!3165423 b!3165425) bm!229468))

(assert (= (or b!3165421 bm!229468) bm!229466))

(assert (= (or b!3165421 b!3165425) bm!229467))

(declare-fun m!3427654 () Bool)

(assert (=> bm!229466 m!3427654))

(declare-fun m!3427656 () Bool)

(assert (=> bm!229467 m!3427656))

(assert (=> b!3165353 d!868789))

(declare-fun d!868791 () Bool)

(declare-fun e!1971889 () Bool)

(assert (=> d!868791 e!1971889))

(declare-fun res!1287923 () Bool)

(assert (=> d!868791 (=> res!1287923 e!1971889)))

(declare-fun lt!1064175 () Option!6899)

(declare-fun isEmpty!19756 (Option!6899) Bool)

(assert (=> d!868791 (= res!1287923 (isEmpty!19756 lt!1064175))))

(declare-fun e!1971890 () Option!6899)

(assert (=> d!868791 (= lt!1064175 e!1971890)))

(declare-fun c!532335 () Bool)

(declare-fun contains!6167 (MutableMap!4066 tuple2!34532) Bool)

(assert (=> d!868791 (= c!532335 (contains!6167 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409)))))

(assert (=> d!868791 (validRegex!4461 r!13156)))

(assert (=> d!868791 (= (get!11242 cache!347 r!13156 a!2409) lt!1064175)))

(declare-fun b!3165433 () Bool)

(declare-fun apply!7946 (MutableMap!4066 tuple2!34532) Regex!9739)

(assert (=> b!3165433 (= e!1971890 (Some!6898 (apply!7946 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409))))))

(declare-datatypes ((Unit!49812 0))(
  ( (Unit!49813) )
))
(declare-fun lt!1064176 () Unit!49812)

(declare-fun lemmaIfInCacheThenValid!54 (Cache!402 Regex!9739 C!19664) Unit!49812)

(assert (=> b!3165433 (= lt!1064176 (lemmaIfInCacheThenValid!54 cache!347 r!13156 a!2409))))

(declare-fun b!3165434 () Bool)

(assert (=> b!3165434 (= e!1971890 None!6898)))

(declare-fun b!3165435 () Bool)

(declare-fun get!11243 (Option!6899) Regex!9739)

(declare-fun derivativeStep!2890 (Regex!9739 C!19664) Regex!9739)

(assert (=> b!3165435 (= e!1971889 (= (get!11243 lt!1064175) (derivativeStep!2890 r!13156 a!2409)))))

(assert (= (and d!868791 c!532335) b!3165433))

(assert (= (and d!868791 (not c!532335)) b!3165434))

(assert (= (and d!868791 (not res!1287923)) b!3165435))

(declare-fun m!3427658 () Bool)

(assert (=> d!868791 m!3427658))

(declare-fun m!3427660 () Bool)

(assert (=> d!868791 m!3427660))

(assert (=> d!868791 m!3427636))

(declare-fun m!3427662 () Bool)

(assert (=> b!3165433 m!3427662))

(declare-fun m!3427664 () Bool)

(assert (=> b!3165433 m!3427664))

(declare-fun m!3427666 () Bool)

(assert (=> b!3165435 m!3427666))

(declare-fun m!3427668 () Bool)

(assert (=> b!3165435 m!3427668))

(assert (=> b!3165345 d!868791))

(declare-fun d!868793 () Bool)

(assert (=> d!868793 (= (array_inv!4734 (_keys!4460 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) (bvsge (size!26696 (_keys!4460 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3165354 d!868793))

(declare-fun d!868795 () Bool)

(assert (=> d!868795 (= (array_inv!4735 (_values!4441 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) (bvsge (size!26697 (_values!4441 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3165354 d!868795))

(declare-fun d!868797 () Bool)

(assert (=> d!868797 (= (valid!3244 cache!347) (validCacheMap!57 (cache!4209 cache!347)))))

(declare-fun bs!539512 () Bool)

(assert (= bs!539512 d!868797))

(assert (=> bs!539512 m!3427648))

(assert (=> b!3165349 d!868797))

(declare-fun b!3165449 () Bool)

(declare-fun e!1971893 () Bool)

(declare-fun tp!997275 () Bool)

(declare-fun tp!997276 () Bool)

(assert (=> b!3165449 (= e!1971893 (and tp!997275 tp!997276))))

(declare-fun b!3165446 () Bool)

(assert (=> b!3165446 (= e!1971893 tp_is_empty!17041)))

(declare-fun b!3165447 () Bool)

(declare-fun tp!997277 () Bool)

(declare-fun tp!997278 () Bool)

(assert (=> b!3165447 (= e!1971893 (and tp!997277 tp!997278))))

(declare-fun b!3165448 () Bool)

(declare-fun tp!997274 () Bool)

(assert (=> b!3165448 (= e!1971893 tp!997274)))

(assert (=> b!3165343 (= tp!997257 e!1971893)))

(assert (= (and b!3165343 ((_ is ElementMatch!9739) (regOne!19990 r!13156))) b!3165446))

(assert (= (and b!3165343 ((_ is Concat!15060) (regOne!19990 r!13156))) b!3165447))

(assert (= (and b!3165343 ((_ is Star!9739) (regOne!19990 r!13156))) b!3165448))

(assert (= (and b!3165343 ((_ is Union!9739) (regOne!19990 r!13156))) b!3165449))

(declare-fun b!3165453 () Bool)

(declare-fun e!1971894 () Bool)

(declare-fun tp!997280 () Bool)

(declare-fun tp!997281 () Bool)

(assert (=> b!3165453 (= e!1971894 (and tp!997280 tp!997281))))

(declare-fun b!3165450 () Bool)

(assert (=> b!3165450 (= e!1971894 tp_is_empty!17041)))

(declare-fun b!3165451 () Bool)

(declare-fun tp!997282 () Bool)

(declare-fun tp!997283 () Bool)

(assert (=> b!3165451 (= e!1971894 (and tp!997282 tp!997283))))

(declare-fun b!3165452 () Bool)

(declare-fun tp!997279 () Bool)

(assert (=> b!3165452 (= e!1971894 tp!997279)))

(assert (=> b!3165343 (= tp!997259 e!1971894)))

(assert (= (and b!3165343 ((_ is ElementMatch!9739) (regTwo!19990 r!13156))) b!3165450))

(assert (= (and b!3165343 ((_ is Concat!15060) (regTwo!19990 r!13156))) b!3165451))

(assert (= (and b!3165343 ((_ is Star!9739) (regTwo!19990 r!13156))) b!3165452))

(assert (= (and b!3165343 ((_ is Union!9739) (regTwo!19990 r!13156))) b!3165453))

(declare-fun b!3165457 () Bool)

(declare-fun e!1971895 () Bool)

(declare-fun tp!997285 () Bool)

(declare-fun tp!997286 () Bool)

(assert (=> b!3165457 (= e!1971895 (and tp!997285 tp!997286))))

(declare-fun b!3165454 () Bool)

(assert (=> b!3165454 (= e!1971895 tp_is_empty!17041)))

(declare-fun b!3165455 () Bool)

(declare-fun tp!997287 () Bool)

(declare-fun tp!997288 () Bool)

(assert (=> b!3165455 (= e!1971895 (and tp!997287 tp!997288))))

(declare-fun b!3165456 () Bool)

(declare-fun tp!997284 () Bool)

(assert (=> b!3165456 (= e!1971895 tp!997284)))

(assert (=> b!3165347 (= tp!997263 e!1971895)))

(assert (= (and b!3165347 ((_ is ElementMatch!9739) (reg!10068 r!13156))) b!3165454))

(assert (= (and b!3165347 ((_ is Concat!15060) (reg!10068 r!13156))) b!3165455))

(assert (= (and b!3165347 ((_ is Star!9739) (reg!10068 r!13156))) b!3165456))

(assert (= (and b!3165347 ((_ is Union!9739) (reg!10068 r!13156))) b!3165457))

(declare-fun b!3165461 () Bool)

(declare-fun e!1971896 () Bool)

(declare-fun tp!997290 () Bool)

(declare-fun tp!997291 () Bool)

(assert (=> b!3165461 (= e!1971896 (and tp!997290 tp!997291))))

(declare-fun b!3165458 () Bool)

(assert (=> b!3165458 (= e!1971896 tp_is_empty!17041)))

(declare-fun b!3165459 () Bool)

(declare-fun tp!997292 () Bool)

(declare-fun tp!997293 () Bool)

(assert (=> b!3165459 (= e!1971896 (and tp!997292 tp!997293))))

(declare-fun b!3165460 () Bool)

(declare-fun tp!997289 () Bool)

(assert (=> b!3165460 (= e!1971896 tp!997289)))

(assert (=> b!3165346 (= tp!997261 e!1971896)))

(assert (= (and b!3165346 ((_ is ElementMatch!9739) (regOne!19991 r!13156))) b!3165458))

(assert (= (and b!3165346 ((_ is Concat!15060) (regOne!19991 r!13156))) b!3165459))

(assert (= (and b!3165346 ((_ is Star!9739) (regOne!19991 r!13156))) b!3165460))

(assert (= (and b!3165346 ((_ is Union!9739) (regOne!19991 r!13156))) b!3165461))

(declare-fun b!3165465 () Bool)

(declare-fun e!1971897 () Bool)

(declare-fun tp!997295 () Bool)

(declare-fun tp!997296 () Bool)

(assert (=> b!3165465 (= e!1971897 (and tp!997295 tp!997296))))

(declare-fun b!3165462 () Bool)

(assert (=> b!3165462 (= e!1971897 tp_is_empty!17041)))

(declare-fun b!3165463 () Bool)

(declare-fun tp!997297 () Bool)

(declare-fun tp!997298 () Bool)

(assert (=> b!3165463 (= e!1971897 (and tp!997297 tp!997298))))

(declare-fun b!3165464 () Bool)

(declare-fun tp!997294 () Bool)

(assert (=> b!3165464 (= e!1971897 tp!997294)))

(assert (=> b!3165346 (= tp!997255 e!1971897)))

(assert (= (and b!3165346 ((_ is ElementMatch!9739) (regTwo!19991 r!13156))) b!3165462))

(assert (= (and b!3165346 ((_ is Concat!15060) (regTwo!19991 r!13156))) b!3165463))

(assert (= (and b!3165346 ((_ is Star!9739) (regTwo!19991 r!13156))) b!3165464))

(assert (= (and b!3165346 ((_ is Union!9739) (regTwo!19991 r!13156))) b!3165465))

(declare-fun tp!997305 () Bool)

(declare-fun tp!997307 () Bool)

(declare-fun b!3165470 () Bool)

(declare-fun tp!997306 () Bool)

(declare-fun e!1971900 () Bool)

(assert (=> b!3165470 (= e!1971900 (and tp!997305 tp_is_empty!17041 tp!997306 tp!997307))))

(assert (=> b!3165342 (= tp!997252 e!1971900)))

(assert (= (and b!3165342 ((_ is Cons!35447) mapDefault!18864)) b!3165470))

(declare-fun e!1971906 () Bool)

(declare-fun tp!997323 () Bool)

(declare-fun tp!997328 () Bool)

(declare-fun tp!997326 () Bool)

(declare-fun b!3165477 () Bool)

(assert (=> b!3165477 (= e!1971906 (and tp!997323 tp_is_empty!17041 tp!997326 tp!997328))))

(declare-fun condMapEmpty!18867 () Bool)

(declare-fun mapDefault!18867 () List!35571)

(assert (=> mapNonEmpty!18864 (= condMapEmpty!18867 (= mapRest!18864 ((as const (Array (_ BitVec 32) List!35571)) mapDefault!18867)))))

(declare-fun e!1971905 () Bool)

(declare-fun mapRes!18867 () Bool)

(assert (=> mapNonEmpty!18864 (= tp!997262 (and e!1971905 mapRes!18867))))

(declare-fun mapIsEmpty!18867 () Bool)

(assert (=> mapIsEmpty!18867 mapRes!18867))

(declare-fun mapNonEmpty!18867 () Bool)

(declare-fun tp!997324 () Bool)

(assert (=> mapNonEmpty!18867 (= mapRes!18867 (and tp!997324 e!1971906))))

(declare-fun mapValue!18867 () List!35571)

(declare-fun mapKey!18867 () (_ BitVec 32))

(declare-fun mapRest!18867 () (Array (_ BitVec 32) List!35571))

(assert (=> mapNonEmpty!18867 (= mapRest!18864 (store mapRest!18867 mapKey!18867 mapValue!18867))))

(declare-fun tp!997327 () Bool)

(declare-fun tp!997322 () Bool)

(declare-fun tp!997325 () Bool)

(declare-fun b!3165478 () Bool)

(assert (=> b!3165478 (= e!1971905 (and tp!997322 tp_is_empty!17041 tp!997325 tp!997327))))

(assert (= (and mapNonEmpty!18864 condMapEmpty!18867) mapIsEmpty!18867))

(assert (= (and mapNonEmpty!18864 (not condMapEmpty!18867)) mapNonEmpty!18867))

(assert (= (and mapNonEmpty!18867 ((_ is Cons!35447) mapValue!18867)) b!3165477))

(assert (= (and mapNonEmpty!18864 ((_ is Cons!35447) mapDefault!18867)) b!3165478))

(declare-fun m!3427670 () Bool)

(assert (=> mapNonEmpty!18867 m!3427670))

(declare-fun b!3165479 () Bool)

(declare-fun e!1971907 () Bool)

(declare-fun tp!997330 () Bool)

(declare-fun tp!997331 () Bool)

(declare-fun tp!997329 () Bool)

(assert (=> b!3165479 (= e!1971907 (and tp!997329 tp_is_empty!17041 tp!997330 tp!997331))))

(assert (=> mapNonEmpty!18864 (= tp!997254 e!1971907)))

(assert (= (and mapNonEmpty!18864 ((_ is Cons!35447) mapValue!18864)) b!3165479))

(declare-fun tp!997333 () Bool)

(declare-fun tp!997334 () Bool)

(declare-fun e!1971908 () Bool)

(declare-fun b!3165480 () Bool)

(declare-fun tp!997332 () Bool)

(assert (=> b!3165480 (= e!1971908 (and tp!997332 tp_is_empty!17041 tp!997333 tp!997334))))

(assert (=> b!3165354 (= tp!997256 e!1971908)))

(assert (= (and b!3165354 ((_ is Cons!35447) (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))) b!3165480))

(declare-fun tp!997337 () Bool)

(declare-fun e!1971909 () Bool)

(declare-fun tp!997336 () Bool)

(declare-fun b!3165481 () Bool)

(declare-fun tp!997335 () Bool)

(assert (=> b!3165481 (= e!1971909 (and tp!997335 tp_is_empty!17041 tp!997336 tp!997337))))

(assert (=> b!3165354 (= tp!997253 e!1971909)))

(assert (= (and b!3165354 ((_ is Cons!35447) (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))) b!3165481))

(check-sat (not bm!229463) (not b!3165459) (not b!3165453) (not b!3165481) (not b!3165386) (not b!3165478) (not b_next!83827) (not bm!229466) (not b!3165449) (not b!3165477) b_and!209381 (not b!3165375) (not b!3165464) (not b!3165433) tp_is_empty!17041 (not b!3165463) b_and!209379 (not b!3165452) (not b!3165480) (not b!3165479) (not b_next!83825) (not b!3165447) (not b!3165457) (not mapNonEmpty!18867) (not b!3165456) (not d!868791) (not bm!229456) (not b!3165460) (not b!3165461) (not b!3165435) (not d!868797) (not b!3165465) (not b!3165448) (not b!3165470) (not b!3165451) (not bm!229454) (not b!3165455) (not bm!229467) (not bm!229464))
(check-sat b_and!209381 b_and!209379 (not b_next!83825) (not b_next!83827))
(get-model)

(declare-fun b!3165482 () Bool)

(declare-fun e!1971914 () Int)

(declare-fun e!1971913 () Int)

(assert (=> b!3165482 (= e!1971914 e!1971913)))

(declare-fun c!532338 () Bool)

(assert (=> b!3165482 (= c!532338 ((_ is Concat!15060) (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))

(declare-fun b!3165483 () Bool)

(declare-fun e!1971912 () Int)

(declare-fun e!1971911 () Int)

(assert (=> b!3165483 (= e!1971912 e!1971911)))

(declare-fun c!532340 () Bool)

(assert (=> b!3165483 (= c!532340 ((_ is Star!9739) (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))

(declare-fun b!3165484 () Bool)

(declare-fun e!1971910 () Int)

(assert (=> b!3165484 (= e!1971910 0)))

(declare-fun call!229474 () Int)

(declare-fun bm!229469 () Bool)

(assert (=> bm!229469 (= call!229474 (RegexPrimitiveSize!127 (ite c!532338 (regTwo!19990 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))) (ite c!532340 (reg!10068 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))) (regTwo!19991 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156))))))))))

(declare-fun b!3165485 () Bool)

(assert (=> b!3165485 (= e!1971914 1)))

(declare-fun d!868799 () Bool)

(declare-fun lt!1064177 () Int)

(assert (=> d!868799 (>= lt!1064177 0)))

(assert (=> d!868799 (= lt!1064177 e!1971914)))

(declare-fun c!532339 () Bool)

(assert (=> d!868799 (= c!532339 ((_ is ElementMatch!9739) (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))

(assert (=> d!868799 (= (RegexPrimitiveSize!127 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))) lt!1064177)))

(declare-fun b!3165486 () Bool)

(declare-fun call!229475 () Int)

(assert (=> b!3165486 (= e!1971913 (+ 1 call!229475 call!229474))))

(declare-fun b!3165487 () Bool)

(declare-fun c!532336 () Bool)

(assert (=> b!3165487 (= c!532336 ((_ is EmptyLang!9739) (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))

(assert (=> b!3165487 (= e!1971911 e!1971910)))

(declare-fun bm!229470 () Bool)

(assert (=> bm!229470 (= call!229475 (RegexPrimitiveSize!127 (ite c!532338 (regOne!19990 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))) (regOne!19991 (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))))

(declare-fun b!3165488 () Bool)

(declare-fun call!229476 () Int)

(assert (=> b!3165488 (= e!1971911 (+ 1 call!229476))))

(declare-fun bm!229471 () Bool)

(assert (=> bm!229471 (= call!229476 call!229474)))

(declare-fun b!3165489 () Bool)

(declare-fun c!532337 () Bool)

(assert (=> b!3165489 (= c!532337 ((_ is EmptyExpr!9739) (ite c!532329 (regTwo!19990 r!13156) (ite c!532331 (reg!10068 r!13156) (regTwo!19991 r!13156)))))))

(assert (=> b!3165489 (= e!1971913 e!1971912)))

(declare-fun b!3165490 () Bool)

(assert (=> b!3165490 (= e!1971910 (+ 1 call!229475 call!229476))))

(declare-fun b!3165491 () Bool)

(assert (=> b!3165491 (= e!1971912 0)))

(assert (= (and d!868799 c!532339) b!3165485))

(assert (= (and d!868799 (not c!532339)) b!3165482))

(assert (= (and b!3165482 c!532338) b!3165486))

(assert (= (and b!3165482 (not c!532338)) b!3165489))

(assert (= (and b!3165489 c!532337) b!3165491))

(assert (= (and b!3165489 (not c!532337)) b!3165483))

(assert (= (and b!3165483 c!532340) b!3165488))

(assert (= (and b!3165483 (not c!532340)) b!3165487))

(assert (= (and b!3165487 c!532336) b!3165484))

(assert (= (and b!3165487 (not c!532336)) b!3165490))

(assert (= (or b!3165488 b!3165490) bm!229471))

(assert (= (or b!3165486 bm!229471) bm!229469))

(assert (= (or b!3165486 b!3165490) bm!229470))

(declare-fun m!3427672 () Bool)

(assert (=> bm!229469 m!3427672))

(declare-fun m!3427674 () Bool)

(assert (=> bm!229470 m!3427674))

(assert (=> bm!229466 d!868799))

(declare-fun b!3165492 () Bool)

(declare-fun e!1971918 () Bool)

(declare-fun e!1971919 () Bool)

(assert (=> b!3165492 (= e!1971918 e!1971919)))

(declare-fun res!1287924 () Bool)

(assert (=> b!3165492 (= res!1287924 (not (nullable!3343 (reg!10068 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))))))))

(assert (=> b!3165492 (=> (not res!1287924) (not e!1971919))))

(declare-fun b!3165493 () Bool)

(declare-fun e!1971915 () Bool)

(declare-fun call!229478 () Bool)

(assert (=> b!3165493 (= e!1971915 call!229478)))

(declare-fun b!3165494 () Bool)

(declare-fun e!1971916 () Bool)

(assert (=> b!3165494 (= e!1971916 e!1971918)))

(declare-fun c!532341 () Bool)

(assert (=> b!3165494 (= c!532341 ((_ is Star!9739) (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))))))

(declare-fun bm!229472 () Bool)

(declare-fun c!532342 () Bool)

(declare-fun call!229479 () Bool)

(assert (=> bm!229472 (= call!229479 (validRegex!4461 (ite c!532342 (regOne!19991 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))) (regOne!19990 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))))))))

(declare-fun b!3165495 () Bool)

(declare-fun e!1971921 () Bool)

(assert (=> b!3165495 (= e!1971918 e!1971921)))

(assert (=> b!3165495 (= c!532342 ((_ is Union!9739) (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))))))

(declare-fun b!3165496 () Bool)

(declare-fun e!1971917 () Bool)

(assert (=> b!3165496 (= e!1971917 call!229478)))

(declare-fun bm!229473 () Bool)

(declare-fun call!229477 () Bool)

(assert (=> bm!229473 (= call!229478 call!229477)))

(declare-fun d!868801 () Bool)

(declare-fun res!1287928 () Bool)

(assert (=> d!868801 (=> res!1287928 e!1971916)))

(assert (=> d!868801 (= res!1287928 ((_ is ElementMatch!9739) (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))))))

(assert (=> d!868801 (= (validRegex!4461 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))) e!1971916)))

(declare-fun b!3165497 () Bool)

(declare-fun res!1287926 () Bool)

(assert (=> b!3165497 (=> (not res!1287926) (not e!1971915))))

(assert (=> b!3165497 (= res!1287926 call!229479)))

(assert (=> b!3165497 (= e!1971921 e!1971915)))

(declare-fun b!3165498 () Bool)

(assert (=> b!3165498 (= e!1971919 call!229477)))

(declare-fun bm!229474 () Bool)

(assert (=> bm!229474 (= call!229477 (validRegex!4461 (ite c!532341 (reg!10068 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))) (ite c!532342 (regTwo!19991 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156))) (regTwo!19990 (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156)))))))))

(declare-fun b!3165499 () Bool)

(declare-fun res!1287927 () Bool)

(declare-fun e!1971920 () Bool)

(assert (=> b!3165499 (=> res!1287927 e!1971920)))

(assert (=> b!3165499 (= res!1287927 (not ((_ is Concat!15060) (ite c!532311 (regOne!19991 r!13156) (regOne!19990 r!13156)))))))

(assert (=> b!3165499 (= e!1971921 e!1971920)))

(declare-fun b!3165500 () Bool)

(assert (=> b!3165500 (= e!1971920 e!1971917)))

(declare-fun res!1287925 () Bool)

(assert (=> b!3165500 (=> (not res!1287925) (not e!1971917))))

(assert (=> b!3165500 (= res!1287925 call!229479)))

(assert (= (and d!868801 (not res!1287928)) b!3165494))

(assert (= (and b!3165494 c!532341) b!3165492))

(assert (= (and b!3165494 (not c!532341)) b!3165495))

(assert (= (and b!3165492 res!1287924) b!3165498))

(assert (= (and b!3165495 c!532342) b!3165497))

(assert (= (and b!3165495 (not c!532342)) b!3165499))

(assert (= (and b!3165497 res!1287926) b!3165493))

(assert (= (and b!3165499 (not res!1287927)) b!3165500))

(assert (= (and b!3165500 res!1287925) b!3165496))

(assert (= (or b!3165497 b!3165500) bm!229472))

(assert (= (or b!3165493 b!3165496) bm!229473))

(assert (= (or b!3165498 bm!229473) bm!229474))

(declare-fun m!3427676 () Bool)

(assert (=> b!3165492 m!3427676))

(declare-fun m!3427678 () Bool)

(assert (=> bm!229472 m!3427678))

(declare-fun m!3427680 () Bool)

(assert (=> bm!229474 m!3427680))

(assert (=> bm!229454 d!868801))

(declare-fun b!3165501 () Bool)

(declare-fun e!1971926 () Int)

(declare-fun e!1971925 () Int)

(assert (=> b!3165501 (= e!1971926 e!1971925)))

(declare-fun c!532345 () Bool)

(assert (=> b!3165501 (= c!532345 ((_ is Concat!15060) (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))

(declare-fun b!3165502 () Bool)

(declare-fun e!1971924 () Int)

(declare-fun e!1971923 () Int)

(assert (=> b!3165502 (= e!1971924 e!1971923)))

(declare-fun c!532347 () Bool)

(assert (=> b!3165502 (= c!532347 ((_ is Star!9739) (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))

(declare-fun b!3165503 () Bool)

(declare-fun e!1971922 () Int)

(assert (=> b!3165503 (= e!1971922 0)))

(declare-fun call!229480 () Int)

(declare-fun bm!229475 () Bool)

(assert (=> bm!229475 (= call!229480 (RegexPrimitiveSize!127 (ite c!532345 (regTwo!19990 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))) (ite c!532347 (reg!10068 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))) (regTwo!19991 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156)))))))))))

(declare-fun b!3165504 () Bool)

(assert (=> b!3165504 (= e!1971926 1)))

(declare-fun d!868803 () Bool)

(declare-fun lt!1064178 () Int)

(assert (=> d!868803 (>= lt!1064178 0)))

(assert (=> d!868803 (= lt!1064178 e!1971926)))

(declare-fun c!532346 () Bool)

(assert (=> d!868803 (= c!532346 ((_ is ElementMatch!9739) (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))

(assert (=> d!868803 (= (RegexPrimitiveSize!127 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))) lt!1064178)))

(declare-fun b!3165505 () Bool)

(declare-fun call!229481 () Int)

(assert (=> b!3165505 (= e!1971925 (+ 1 call!229481 call!229480))))

(declare-fun c!532343 () Bool)

(declare-fun b!3165506 () Bool)

(assert (=> b!3165506 (= c!532343 ((_ is EmptyLang!9739) (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))

(assert (=> b!3165506 (= e!1971923 e!1971922)))

(declare-fun bm!229476 () Bool)

(assert (=> bm!229476 (= call!229481 (RegexPrimitiveSize!127 (ite c!532345 (regOne!19990 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))) (regOne!19991 (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))))

(declare-fun b!3165507 () Bool)

(declare-fun call!229482 () Int)

(assert (=> b!3165507 (= e!1971923 (+ 1 call!229482))))

(declare-fun bm!229477 () Bool)

(assert (=> bm!229477 (= call!229482 call!229480)))

(declare-fun b!3165508 () Bool)

(declare-fun c!532344 () Bool)

(assert (=> b!3165508 (= c!532344 ((_ is EmptyExpr!9739) (ite c!532324 (regTwo!19990 (regOne!19991 r!13156)) (ite c!532326 (reg!10068 (regOne!19991 r!13156)) (regTwo!19991 (regOne!19991 r!13156))))))))

(assert (=> b!3165508 (= e!1971925 e!1971924)))

(declare-fun b!3165509 () Bool)

(assert (=> b!3165509 (= e!1971922 (+ 1 call!229481 call!229482))))

(declare-fun b!3165510 () Bool)

(assert (=> b!3165510 (= e!1971924 0)))

(assert (= (and d!868803 c!532346) b!3165504))

(assert (= (and d!868803 (not c!532346)) b!3165501))

(assert (= (and b!3165501 c!532345) b!3165505))

(assert (= (and b!3165501 (not c!532345)) b!3165508))

(assert (= (and b!3165508 c!532344) b!3165510))

(assert (= (and b!3165508 (not c!532344)) b!3165502))

(assert (= (and b!3165502 c!532347) b!3165507))

(assert (= (and b!3165502 (not c!532347)) b!3165506))

(assert (= (and b!3165506 c!532343) b!3165503))

(assert (= (and b!3165506 (not c!532343)) b!3165509))

(assert (= (or b!3165507 b!3165509) bm!229477))

(assert (= (or b!3165505 bm!229477) bm!229475))

(assert (= (or b!3165505 b!3165509) bm!229476))

(declare-fun m!3427682 () Bool)

(assert (=> bm!229475 m!3427682))

(declare-fun m!3427684 () Bool)

(assert (=> bm!229476 m!3427684))

(assert (=> bm!229463 d!868803))

(declare-fun b!3165523 () Bool)

(declare-fun lt!1064254 () Regex!9739)

(declare-fun e!1971934 () Bool)

(declare-fun dynLambda!14359 (Int tuple2!34532) Regex!9739)

(assert (=> b!3165523 (= e!1971934 (= lt!1064254 (dynLambda!14359 (defaultValue!4237 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))))))

(declare-fun e!1971933 () Regex!9739)

(declare-fun b!3165524 () Bool)

(assert (=> b!3165524 (= e!1971933 (dynLambda!14359 (defaultValue!4237 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun b!3165525 () Bool)

(declare-fun e!1971935 () Unit!49812)

(declare-fun Unit!49814 () Unit!49812)

(assert (=> b!3165525 (= e!1971935 Unit!49814)))

(declare-fun d!868805 () Bool)

(assert (=> d!868805 e!1971934))

(declare-fun c!532355 () Bool)

(assert (=> d!868805 (= c!532355 (contains!6167 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409)))))

(assert (=> d!868805 (= lt!1064254 e!1971933)))

(declare-fun c!532356 () Bool)

(assert (=> d!868805 (= c!532356 (not (contains!6167 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409))))))

(declare-fun valid!3245 (MutableMap!4066) Bool)

(assert (=> d!868805 (valid!3245 (cache!4209 cache!347))))

(assert (=> d!868805 (= (apply!7946 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409)) lt!1064254)))

(declare-fun b!3165526 () Bool)

(declare-fun getValueByKey!175 (List!35571 tuple2!34532) Option!6899)

(declare-datatypes ((ListMap!1301 0))(
  ( (ListMap!1302 (toList!2054 List!35571)) )
))
(declare-fun map!7899 (MutableMap!4066) ListMap!1301)

(assert (=> b!3165526 (= e!1971934 (= lt!1064254 (get!11243 (getValueByKey!175 (toList!2054 (map!7899 (cache!4209 cache!347))) (tuple2!34533 r!13156 a!2409)))))))

(declare-fun b!3165527 () Bool)

(assert (=> b!3165527 false))

(declare-fun lt!1064242 () Unit!49812)

(declare-fun lt!1064257 () Unit!49812)

(assert (=> b!3165527 (= lt!1064242 lt!1064257)))

(declare-datatypes ((tuple2!34536 0))(
  ( (tuple2!34537 (_1!20400 (_ BitVec 64)) (_2!20400 List!35571)) )
))
(declare-datatypes ((List!35572 0))(
  ( (Nil!35448) (Cons!35448 (h!40868 tuple2!34536) (t!234647 List!35572)) )
))
(declare-fun lt!1064241 () List!35572)

(declare-fun lt!1064244 () (_ BitVec 64))

(declare-fun lt!1064266 () List!35571)

(declare-fun contains!6168 (List!35572 tuple2!34536) Bool)

(assert (=> b!3165527 (contains!6168 lt!1064241 (tuple2!34537 lt!1064244 lt!1064266))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!100 (List!35572 (_ BitVec 64) List!35571) Unit!49812)

(assert (=> b!3165527 (= lt!1064257 (lemmaGetValueByKeyImpliesContainsTuple!100 lt!1064241 lt!1064244 lt!1064266))))

(declare-fun apply!7947 (MutLongMap!4160 (_ BitVec 64)) List!35571)

(assert (=> b!3165527 (= lt!1064266 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064244))))

(declare-datatypes ((ListLongMap!719 0))(
  ( (ListLongMap!720 (toList!2055 List!35572)) )
))
(declare-fun map!7900 (MutLongMap!4160) ListLongMap!719)

(assert (=> b!3165527 (= lt!1064241 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))

(declare-fun lt!1064249 () Unit!49812)

(declare-fun lt!1064263 () Unit!49812)

(assert (=> b!3165527 (= lt!1064249 lt!1064263)))

(declare-fun lt!1064259 () List!35572)

(declare-datatypes ((Option!6900 0))(
  ( (None!6899) (Some!6899 (v!35133 List!35571)) )
))
(declare-fun isDefined!5422 (Option!6900) Bool)

(declare-fun getValueByKey!176 (List!35572 (_ BitVec 64)) Option!6900)

(assert (=> b!3165527 (isDefined!5422 (getValueByKey!176 lt!1064259 lt!1064244))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!128 (List!35572 (_ BitVec 64)) Unit!49812)

(assert (=> b!3165527 (= lt!1064263 (lemmaContainsKeyImpliesGetValueByKeyDefined!128 lt!1064259 lt!1064244))))

(assert (=> b!3165527 (= lt!1064259 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))

(declare-fun Unit!49815 () Unit!49812)

(assert (=> b!3165527 (= e!1971935 Unit!49815)))

(declare-fun b!3165528 () Bool)

(declare-datatypes ((Option!6901 0))(
  ( (None!6900) (Some!6900 (v!35134 tuple2!34534)) )
))
(declare-fun get!11244 (Option!6901) tuple2!34534)

(declare-fun getPair!94 (List!35571 tuple2!34532) Option!6901)

(assert (=> b!3165528 (= e!1971933 (_2!20399 (get!11244 (getPair!94 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064244) (tuple2!34533 r!13156 a!2409)))))))

(declare-fun hash!803 (Hashable!4076 tuple2!34532) (_ BitVec 64))

(assert (=> b!3165528 (= lt!1064244 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun c!532354 () Bool)

(assert (=> b!3165528 (= c!532354 (not (contains!6168 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))) (tuple2!34537 lt!1064244 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064244)))))))

(declare-fun lt!1064262 () Unit!49812)

(assert (=> b!3165528 (= lt!1064262 e!1971935)))

(declare-fun lt!1064243 () Unit!49812)

(declare-fun lambda!115837 () Int)

(declare-fun forallContained!1072 (List!35572 Int tuple2!34536) Unit!49812)

(assert (=> b!3165528 (= lt!1064243 (forallContained!1072 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))) lambda!115837 (tuple2!34537 lt!1064244 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064244))))))

(declare-fun lt!1064252 () ListLongMap!719)

(assert (=> b!3165528 (= lt!1064252 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))

(declare-fun lt!1064250 () Unit!49812)

(declare-fun lemmaGetPairGetSameValueAsMap!32 (ListLongMap!719 tuple2!34532 Regex!9739 Hashable!4076) Unit!49812)

(assert (=> b!3165528 (= lt!1064250 (lemmaGetPairGetSameValueAsMap!32 lt!1064252 (tuple2!34533 r!13156 a!2409) (_2!20399 (get!11244 (getPair!94 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064244) (tuple2!34533 r!13156 a!2409)))) (hashF!6108 (cache!4209 cache!347))))))

(declare-fun lt!1064251 () Unit!49812)

(declare-fun lemmaInGenMapThenLongMapContainsHash!38 (ListLongMap!719 tuple2!34532 Hashable!4076) Unit!49812)

(assert (=> b!3165528 (= lt!1064251 (lemmaInGenMapThenLongMapContainsHash!38 lt!1064252 (tuple2!34533 r!13156 a!2409) (hashF!6108 (cache!4209 cache!347))))))

(declare-fun contains!6169 (ListLongMap!719 (_ BitVec 64)) Bool)

(assert (=> b!3165528 (contains!6169 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun lt!1064253 () Unit!49812)

(assert (=> b!3165528 (= lt!1064253 lt!1064251)))

(declare-fun lt!1064248 () (_ BitVec 64))

(assert (=> b!3165528 (= lt!1064248 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun lt!1064258 () List!35571)

(declare-fun apply!7948 (ListLongMap!719 (_ BitVec 64)) List!35571)

(assert (=> b!3165528 (= lt!1064258 (apply!7948 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))))))

(declare-fun lt!1064255 () Unit!49812)

(declare-fun lemmaGetValueImpliesTupleContained!33 (ListLongMap!719 (_ BitVec 64) List!35571) Unit!49812)

(assert (=> b!3165528 (= lt!1064255 (lemmaGetValueImpliesTupleContained!33 lt!1064252 lt!1064248 lt!1064258))))

(assert (=> b!3165528 (contains!6168 (toList!2055 lt!1064252) (tuple2!34537 lt!1064248 lt!1064258))))

(declare-fun lt!1064239 () Unit!49812)

(assert (=> b!3165528 (= lt!1064239 lt!1064255)))

(declare-fun lt!1064265 () Unit!49812)

(assert (=> b!3165528 (= lt!1064265 (forallContained!1072 (toList!2055 lt!1064252) lambda!115837 (tuple2!34537 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)) (apply!7948 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))))))))

(declare-fun lt!1064261 () Unit!49812)

(declare-fun lemmaInGenMapThenGetPairDefined!32 (ListLongMap!719 tuple2!34532 Hashable!4076) Unit!49812)

(assert (=> b!3165528 (= lt!1064261 (lemmaInGenMapThenGetPairDefined!32 lt!1064252 (tuple2!34533 r!13156 a!2409) (hashF!6108 (cache!4209 cache!347))))))

(declare-fun lt!1064267 () Unit!49812)

(assert (=> b!3165528 (= lt!1064267 (lemmaInGenMapThenLongMapContainsHash!38 lt!1064252 (tuple2!34533 r!13156 a!2409) (hashF!6108 (cache!4209 cache!347))))))

(declare-fun lt!1064245 () Unit!49812)

(assert (=> b!3165528 (= lt!1064245 lt!1064267)))

(declare-fun lt!1064246 () (_ BitVec 64))

(assert (=> b!3165528 (= lt!1064246 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun lt!1064260 () List!35571)

(assert (=> b!3165528 (= lt!1064260 (apply!7948 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))))))

(declare-fun lt!1064256 () Unit!49812)

(assert (=> b!3165528 (= lt!1064256 (lemmaGetValueImpliesTupleContained!33 lt!1064252 lt!1064246 lt!1064260))))

(assert (=> b!3165528 (contains!6168 (toList!2055 lt!1064252) (tuple2!34537 lt!1064246 lt!1064260))))

(declare-fun lt!1064247 () Unit!49812)

(assert (=> b!3165528 (= lt!1064247 lt!1064256)))

(declare-fun lt!1064264 () Unit!49812)

(assert (=> b!3165528 (= lt!1064264 (forallContained!1072 (toList!2055 lt!1064252) lambda!115837 (tuple2!34537 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)) (apply!7948 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))))))))

(declare-fun isDefined!5423 (Option!6901) Bool)

(assert (=> b!3165528 (isDefined!5423 (getPair!94 (apply!7948 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))) (tuple2!34533 r!13156 a!2409)))))

(declare-fun lt!1064240 () Unit!49812)

(assert (=> b!3165528 (= lt!1064240 lt!1064261)))

(declare-fun extractMap!232 (List!35572) ListMap!1301)

(assert (=> b!3165528 (= (_2!20399 (get!11244 (getPair!94 (apply!7948 lt!1064252 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409))) (tuple2!34533 r!13156 a!2409)))) (get!11243 (getValueByKey!175 (toList!2054 (extractMap!232 (toList!2055 lt!1064252))) (tuple2!34533 r!13156 a!2409))))))

(declare-fun lt!1064268 () Unit!49812)

(assert (=> b!3165528 (= lt!1064268 lt!1064250)))

(assert (= (and d!868805 c!532356) b!3165524))

(assert (= (and d!868805 (not c!532356)) b!3165528))

(assert (= (and b!3165528 c!532354) b!3165527))

(assert (= (and b!3165528 (not c!532354)) b!3165525))

(assert (= (and d!868805 c!532355) b!3165526))

(assert (= (and d!868805 (not c!532355)) b!3165523))

(declare-fun b_lambda!86411 () Bool)

(assert (=> (not b_lambda!86411) (not b!3165523)))

(declare-fun t!234646 () Bool)

(declare-fun tb!155097 () Bool)

(assert (=> (and b!3165344 (= (defaultValue!4237 (cache!4209 cache!347)) (defaultValue!4237 (cache!4209 cache!347))) t!234646) tb!155097))

(assert (=> b!3165523 t!234646))

(declare-fun result!196852 () Bool)

(declare-fun b_and!209383 () Bool)

(assert (= b_and!209381 (and (=> t!234646 result!196852) b_and!209383)))

(declare-fun b_lambda!86413 () Bool)

(assert (=> (not b_lambda!86413) (not b!3165524)))

(assert (=> b!3165524 t!234646))

(declare-fun b_and!209385 () Bool)

(assert (= b_and!209383 (and (=> t!234646 result!196852) b_and!209385)))

(declare-fun m!3427686 () Bool)

(assert (=> b!3165527 m!3427686))

(declare-fun m!3427688 () Bool)

(assert (=> b!3165527 m!3427688))

(declare-fun m!3427690 () Bool)

(assert (=> b!3165527 m!3427690))

(declare-fun m!3427692 () Bool)

(assert (=> b!3165527 m!3427692))

(declare-fun m!3427694 () Bool)

(assert (=> b!3165527 m!3427694))

(declare-fun m!3427696 () Bool)

(assert (=> b!3165527 m!3427696))

(declare-fun m!3427698 () Bool)

(assert (=> b!3165527 m!3427698))

(assert (=> b!3165527 m!3427694))

(declare-fun m!3427700 () Bool)

(assert (=> b!3165523 m!3427700))

(assert (=> d!868805 m!3427660))

(declare-fun m!3427702 () Bool)

(assert (=> d!868805 m!3427702))

(declare-fun m!3427704 () Bool)

(assert (=> b!3165526 m!3427704))

(declare-fun m!3427706 () Bool)

(assert (=> b!3165526 m!3427706))

(assert (=> b!3165526 m!3427706))

(declare-fun m!3427708 () Bool)

(assert (=> b!3165526 m!3427708))

(assert (=> b!3165524 m!3427700))

(declare-fun m!3427710 () Bool)

(assert (=> b!3165528 m!3427710))

(declare-fun m!3427712 () Bool)

(assert (=> b!3165528 m!3427712))

(declare-fun m!3427714 () Bool)

(assert (=> b!3165528 m!3427714))

(declare-fun m!3427716 () Bool)

(assert (=> b!3165528 m!3427716))

(declare-fun m!3427718 () Bool)

(assert (=> b!3165528 m!3427718))

(declare-fun m!3427720 () Bool)

(assert (=> b!3165528 m!3427720))

(declare-fun m!3427722 () Bool)

(assert (=> b!3165528 m!3427722))

(declare-fun m!3427724 () Bool)

(assert (=> b!3165528 m!3427724))

(declare-fun m!3427726 () Bool)

(assert (=> b!3165528 m!3427726))

(assert (=> b!3165528 m!3427720))

(declare-fun m!3427728 () Bool)

(assert (=> b!3165528 m!3427728))

(declare-fun m!3427730 () Bool)

(assert (=> b!3165528 m!3427730))

(declare-fun m!3427732 () Bool)

(assert (=> b!3165528 m!3427732))

(declare-fun m!3427734 () Bool)

(assert (=> b!3165528 m!3427734))

(assert (=> b!3165528 m!3427732))

(declare-fun m!3427736 () Bool)

(assert (=> b!3165528 m!3427736))

(declare-fun m!3427738 () Bool)

(assert (=> b!3165528 m!3427738))

(assert (=> b!3165528 m!3427698))

(assert (=> b!3165528 m!3427738))

(assert (=> b!3165528 m!3427686))

(declare-fun m!3427740 () Bool)

(assert (=> b!3165528 m!3427740))

(declare-fun m!3427742 () Bool)

(assert (=> b!3165528 m!3427742))

(assert (=> b!3165528 m!3427730))

(declare-fun m!3427744 () Bool)

(assert (=> b!3165528 m!3427744))

(assert (=> b!3165528 m!3427686))

(assert (=> b!3165528 m!3427712))

(assert (=> b!3165528 m!3427744))

(assert (=> b!3165528 m!3427732))

(assert (=> b!3165528 m!3427730))

(declare-fun m!3427746 () Bool)

(assert (=> b!3165528 m!3427746))

(declare-fun m!3427748 () Bool)

(assert (=> b!3165528 m!3427748))

(declare-fun m!3427750 () Bool)

(assert (=> b!3165528 m!3427750))

(assert (=> b!3165433 d!868805))

(declare-fun d!868807 () Bool)

(declare-fun e!1971949 () Bool)

(assert (=> d!868807 e!1971949))

(declare-fun res!1287936 () Bool)

(assert (=> d!868807 (=> res!1287936 e!1971949)))

(assert (=> d!868807 (= res!1287936 (not (contains!6167 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409))))))

(declare-fun lt!1064289 () Unit!49812)

(declare-fun e!1971950 () Unit!49812)

(assert (=> d!868807 (= lt!1064289 e!1971950)))

(declare-fun c!532360 () Bool)

(assert (=> d!868807 (= c!532360 (contains!6167 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409)))))

(assert (=> d!868807 (validCacheMap!57 (cache!4209 cache!347))))

(assert (=> d!868807 (= (lemmaIfInCacheThenValid!54 cache!347 r!13156 a!2409) lt!1064289)))

(declare-fun b!3165539 () Bool)

(declare-fun lt!1064290 () Unit!49812)

(assert (=> b!3165539 (= e!1971950 lt!1064290)))

(declare-fun lt!1064285 () tuple2!34532)

(assert (=> b!3165539 (= lt!1064285 (tuple2!34533 r!13156 a!2409))))

(declare-fun lambda!115840 () Int)

(declare-fun lemmaForallPairsThenForLookup!46 (MutableMap!4066 tuple2!34532 Int) Unit!49812)

(assert (=> b!3165539 (= lt!1064290 (lemmaForallPairsThenForLookup!46 (cache!4209 cache!347) lt!1064285 lambda!115840))))

(declare-fun lt!1064287 () tuple2!34534)

(assert (=> b!3165539 (= lt!1064287 (tuple2!34535 lt!1064285 (apply!7946 (cache!4209 cache!347) lt!1064285)))))

(declare-fun lt!1064286 () Regex!9739)

(assert (=> b!3165539 (= lt!1064286 (apply!7946 (cache!4209 cache!347) lt!1064285))))

(declare-fun res!1287935 () Bool)

(assert (=> b!3165539 (= res!1287935 (validRegex!4461 (_1!20398 lt!1064285)))))

(declare-fun e!1971948 () Bool)

(assert (=> b!3165539 (=> (not res!1287935) (not e!1971948))))

(assert (=> b!3165539 e!1971948))

(declare-fun b!3165541 () Bool)

(declare-fun lt!1064291 () tuple2!34532)

(assert (=> b!3165541 (= lt!1064291 lt!1064285)))

(declare-fun lt!1064292 () Regex!9739)

(assert (=> b!3165541 (= lt!1064292 (apply!7946 (cache!4209 cache!347) lt!1064285))))

(declare-fun lt!1064288 () Regex!9739)

(assert (=> b!3165541 (= lt!1064288 (apply!7946 (cache!4209 cache!347) lt!1064285))))

(assert (=> b!3165541 (= e!1971948 (= (apply!7946 (cache!4209 cache!347) lt!1064285) (derivativeStep!2890 (_1!20398 lt!1064285) (_2!20398 lt!1064285))))))

(declare-fun b!3165540 () Bool)

(declare-fun Unit!49816 () Unit!49812)

(assert (=> b!3165540 (= e!1971950 Unit!49816)))

(declare-fun b!3165542 () Bool)

(assert (=> b!3165542 (= e!1971949 (= (derivativeStep!2890 r!13156 a!2409) (apply!7946 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409))))))

(assert (= (and d!868807 c!532360) b!3165539))

(assert (= (and d!868807 (not c!532360)) b!3165540))

(assert (= (and b!3165539 res!1287935) b!3165541))

(assert (= (and d!868807 (not res!1287936)) b!3165542))

(assert (=> d!868807 m!3427660))

(assert (=> d!868807 m!3427648))

(declare-fun m!3427752 () Bool)

(assert (=> b!3165539 m!3427752))

(declare-fun m!3427754 () Bool)

(assert (=> b!3165539 m!3427754))

(declare-fun m!3427756 () Bool)

(assert (=> b!3165539 m!3427756))

(assert (=> b!3165541 m!3427754))

(declare-fun m!3427758 () Bool)

(assert (=> b!3165541 m!3427758))

(assert (=> b!3165542 m!3427668))

(assert (=> b!3165542 m!3427662))

(assert (=> b!3165433 d!868807))

(declare-fun b!3165543 () Bool)

(declare-fun e!1971955 () Int)

(declare-fun e!1971954 () Int)

(assert (=> b!3165543 (= e!1971955 e!1971954)))

(declare-fun c!532363 () Bool)

(assert (=> b!3165543 (= c!532363 ((_ is Concat!15060) (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))

(declare-fun b!3165544 () Bool)

(declare-fun e!1971953 () Int)

(declare-fun e!1971952 () Int)

(assert (=> b!3165544 (= e!1971953 e!1971952)))

(declare-fun c!532365 () Bool)

(assert (=> b!3165544 (= c!532365 ((_ is Star!9739) (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))

(declare-fun b!3165545 () Bool)

(declare-fun e!1971951 () Int)

(assert (=> b!3165545 (= e!1971951 0)))

(declare-fun bm!229478 () Bool)

(declare-fun call!229483 () Int)

(assert (=> bm!229478 (= call!229483 (RegexPrimitiveSize!127 (ite c!532363 (regTwo!19990 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))) (ite c!532365 (reg!10068 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))) (regTwo!19991 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156))))))))))

(declare-fun b!3165546 () Bool)

(assert (=> b!3165546 (= e!1971955 1)))

(declare-fun d!868809 () Bool)

(declare-fun lt!1064293 () Int)

(assert (=> d!868809 (>= lt!1064293 0)))

(assert (=> d!868809 (= lt!1064293 e!1971955)))

(declare-fun c!532364 () Bool)

(assert (=> d!868809 (= c!532364 ((_ is ElementMatch!9739) (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))

(assert (=> d!868809 (= (RegexPrimitiveSize!127 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))) lt!1064293)))

(declare-fun b!3165547 () Bool)

(declare-fun call!229484 () Int)

(assert (=> b!3165547 (= e!1971954 (+ 1 call!229484 call!229483))))

(declare-fun b!3165548 () Bool)

(declare-fun c!532361 () Bool)

(assert (=> b!3165548 (= c!532361 ((_ is EmptyLang!9739) (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))

(assert (=> b!3165548 (= e!1971952 e!1971951)))

(declare-fun bm!229479 () Bool)

(assert (=> bm!229479 (= call!229484 (RegexPrimitiveSize!127 (ite c!532363 (regOne!19990 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))) (regOne!19991 (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))))

(declare-fun b!3165549 () Bool)

(declare-fun call!229485 () Int)

(assert (=> b!3165549 (= e!1971952 (+ 1 call!229485))))

(declare-fun bm!229480 () Bool)

(assert (=> bm!229480 (= call!229485 call!229483)))

(declare-fun b!3165550 () Bool)

(declare-fun c!532362 () Bool)

(assert (=> b!3165550 (= c!532362 ((_ is EmptyExpr!9739) (ite c!532324 (regOne!19990 (regOne!19991 r!13156)) (regOne!19991 (regOne!19991 r!13156)))))))

(assert (=> b!3165550 (= e!1971954 e!1971953)))

(declare-fun b!3165551 () Bool)

(assert (=> b!3165551 (= e!1971951 (+ 1 call!229484 call!229485))))

(declare-fun b!3165552 () Bool)

(assert (=> b!3165552 (= e!1971953 0)))

(assert (= (and d!868809 c!532364) b!3165546))

(assert (= (and d!868809 (not c!532364)) b!3165543))

(assert (= (and b!3165543 c!532363) b!3165547))

(assert (= (and b!3165543 (not c!532363)) b!3165550))

(assert (= (and b!3165550 c!532362) b!3165552))

(assert (= (and b!3165550 (not c!532362)) b!3165544))

(assert (= (and b!3165544 c!532365) b!3165549))

(assert (= (and b!3165544 (not c!532365)) b!3165548))

(assert (= (and b!3165548 c!532361) b!3165545))

(assert (= (and b!3165548 (not c!532361)) b!3165551))

(assert (= (or b!3165549 b!3165551) bm!229480))

(assert (= (or b!3165547 bm!229480) bm!229478))

(assert (= (or b!3165547 b!3165551) bm!229479))

(declare-fun m!3427760 () Bool)

(assert (=> bm!229478 m!3427760))

(declare-fun m!3427762 () Bool)

(assert (=> bm!229479 m!3427762))

(assert (=> bm!229464 d!868809))

(declare-fun bs!539513 () Bool)

(declare-fun b!3165560 () Bool)

(assert (= bs!539513 (and b!3165560 b!3165539)))

(declare-fun lambda!115843 () Int)

(assert (=> bs!539513 (= lambda!115843 lambda!115840)))

(declare-fun d!868811 () Bool)

(declare-fun res!1287943 () Bool)

(declare-fun e!1971960 () Bool)

(assert (=> d!868811 (=> (not res!1287943) (not e!1971960))))

(assert (=> d!868811 (= res!1287943 (valid!3245 (cache!4209 cache!347)))))

(assert (=> d!868811 (= (validCacheMap!57 (cache!4209 cache!347)) e!1971960)))

(declare-fun b!3165559 () Bool)

(declare-fun res!1287944 () Bool)

(assert (=> b!3165559 (=> (not res!1287944) (not e!1971960))))

(declare-fun invariantList!480 (List!35571) Bool)

(assert (=> b!3165559 (= res!1287944 (invariantList!480 (toList!2054 (map!7899 (cache!4209 cache!347)))))))

(declare-fun forall!7146 (List!35571 Int) Bool)

(assert (=> b!3165560 (= e!1971960 (forall!7146 (toList!2054 (map!7899 (cache!4209 cache!347))) lambda!115843))))

(assert (= (and d!868811 res!1287943) b!3165559))

(assert (= (and b!3165559 res!1287944) b!3165560))

(assert (=> d!868811 m!3427702))

(assert (=> b!3165559 m!3427704))

(declare-fun m!3427765 () Bool)

(assert (=> b!3165559 m!3427765))

(assert (=> b!3165560 m!3427704))

(declare-fun m!3427767 () Bool)

(assert (=> b!3165560 m!3427767))

(assert (=> b!3165386 d!868811))

(declare-fun b!3165561 () Bool)

(declare-fun e!1971965 () Int)

(declare-fun e!1971964 () Int)

(assert (=> b!3165561 (= e!1971965 e!1971964)))

(declare-fun c!532368 () Bool)

(assert (=> b!3165561 (= c!532368 ((_ is Concat!15060) (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))

(declare-fun b!3165562 () Bool)

(declare-fun e!1971963 () Int)

(declare-fun e!1971962 () Int)

(assert (=> b!3165562 (= e!1971963 e!1971962)))

(declare-fun c!532370 () Bool)

(assert (=> b!3165562 (= c!532370 ((_ is Star!9739) (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))

(declare-fun b!3165563 () Bool)

(declare-fun e!1971961 () Int)

(assert (=> b!3165563 (= e!1971961 0)))

(declare-fun bm!229481 () Bool)

(declare-fun call!229486 () Int)

(assert (=> bm!229481 (= call!229486 (RegexPrimitiveSize!127 (ite c!532368 (regTwo!19990 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))) (ite c!532370 (reg!10068 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))) (regTwo!19991 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156)))))))))

(declare-fun b!3165564 () Bool)

(assert (=> b!3165564 (= e!1971965 1)))

(declare-fun d!868813 () Bool)

(declare-fun lt!1064294 () Int)

(assert (=> d!868813 (>= lt!1064294 0)))

(assert (=> d!868813 (= lt!1064294 e!1971965)))

(declare-fun c!532369 () Bool)

(assert (=> d!868813 (= c!532369 ((_ is ElementMatch!9739) (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))

(assert (=> d!868813 (= (RegexPrimitiveSize!127 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))) lt!1064294)))

(declare-fun b!3165565 () Bool)

(declare-fun call!229487 () Int)

(assert (=> b!3165565 (= e!1971964 (+ 1 call!229487 call!229486))))

(declare-fun b!3165566 () Bool)

(declare-fun c!532366 () Bool)

(assert (=> b!3165566 (= c!532366 ((_ is EmptyLang!9739) (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))

(assert (=> b!3165566 (= e!1971962 e!1971961)))

(declare-fun bm!229482 () Bool)

(assert (=> bm!229482 (= call!229487 (RegexPrimitiveSize!127 (ite c!532368 (regOne!19990 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))) (regOne!19991 (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))))

(declare-fun b!3165567 () Bool)

(declare-fun call!229488 () Int)

(assert (=> b!3165567 (= e!1971962 (+ 1 call!229488))))

(declare-fun bm!229483 () Bool)

(assert (=> bm!229483 (= call!229488 call!229486)))

(declare-fun b!3165568 () Bool)

(declare-fun c!532367 () Bool)

(assert (=> b!3165568 (= c!532367 ((_ is EmptyExpr!9739) (ite c!532329 (regOne!19990 r!13156) (regOne!19991 r!13156))))))

(assert (=> b!3165568 (= e!1971964 e!1971963)))

(declare-fun b!3165569 () Bool)

(assert (=> b!3165569 (= e!1971961 (+ 1 call!229487 call!229488))))

(declare-fun b!3165570 () Bool)

(assert (=> b!3165570 (= e!1971963 0)))

(assert (= (and d!868813 c!532369) b!3165564))

(assert (= (and d!868813 (not c!532369)) b!3165561))

(assert (= (and b!3165561 c!532368) b!3165565))

(assert (= (and b!3165561 (not c!532368)) b!3165568))

(assert (= (and b!3165568 c!532367) b!3165570))

(assert (= (and b!3165568 (not c!532367)) b!3165562))

(assert (= (and b!3165562 c!532370) b!3165567))

(assert (= (and b!3165562 (not c!532370)) b!3165566))

(assert (= (and b!3165566 c!532366) b!3165563))

(assert (= (and b!3165566 (not c!532366)) b!3165569))

(assert (= (or b!3165567 b!3165569) bm!229483))

(assert (= (or b!3165565 bm!229483) bm!229481))

(assert (= (or b!3165565 b!3165569) bm!229482))

(declare-fun m!3427769 () Bool)

(assert (=> bm!229481 m!3427769))

(declare-fun m!3427771 () Bool)

(assert (=> bm!229482 m!3427771))

(assert (=> bm!229467 d!868813))

(declare-fun b!3165571 () Bool)

(declare-fun e!1971969 () Bool)

(declare-fun e!1971970 () Bool)

(assert (=> b!3165571 (= e!1971969 e!1971970)))

(declare-fun res!1287945 () Bool)

(assert (=> b!3165571 (= res!1287945 (not (nullable!3343 (reg!10068 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))))))))

(assert (=> b!3165571 (=> (not res!1287945) (not e!1971970))))

(declare-fun b!3165572 () Bool)

(declare-fun e!1971966 () Bool)

(declare-fun call!229490 () Bool)

(assert (=> b!3165572 (= e!1971966 call!229490)))

(declare-fun b!3165573 () Bool)

(declare-fun e!1971967 () Bool)

(assert (=> b!3165573 (= e!1971967 e!1971969)))

(declare-fun c!532371 () Bool)

(assert (=> b!3165573 (= c!532371 ((_ is Star!9739) (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))))))

(declare-fun c!532372 () Bool)

(declare-fun bm!229484 () Bool)

(declare-fun call!229491 () Bool)

(assert (=> bm!229484 (= call!229491 (validRegex!4461 (ite c!532372 (regOne!19991 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))) (regOne!19990 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))))))))

(declare-fun b!3165574 () Bool)

(declare-fun e!1971972 () Bool)

(assert (=> b!3165574 (= e!1971969 e!1971972)))

(assert (=> b!3165574 (= c!532372 ((_ is Union!9739) (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))))))

(declare-fun b!3165575 () Bool)

(declare-fun e!1971968 () Bool)

(assert (=> b!3165575 (= e!1971968 call!229490)))

(declare-fun bm!229485 () Bool)

(declare-fun call!229489 () Bool)

(assert (=> bm!229485 (= call!229490 call!229489)))

(declare-fun d!868815 () Bool)

(declare-fun res!1287949 () Bool)

(assert (=> d!868815 (=> res!1287949 e!1971967)))

(assert (=> d!868815 (= res!1287949 ((_ is ElementMatch!9739) (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))))))

(assert (=> d!868815 (= (validRegex!4461 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))) e!1971967)))

(declare-fun b!3165576 () Bool)

(declare-fun res!1287947 () Bool)

(assert (=> b!3165576 (=> (not res!1287947) (not e!1971966))))

(assert (=> b!3165576 (= res!1287947 call!229491)))

(assert (=> b!3165576 (= e!1971972 e!1971966)))

(declare-fun b!3165577 () Bool)

(assert (=> b!3165577 (= e!1971970 call!229489)))

(declare-fun bm!229486 () Bool)

(assert (=> bm!229486 (= call!229489 (validRegex!4461 (ite c!532371 (reg!10068 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))) (ite c!532372 (regTwo!19991 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156)))) (regTwo!19990 (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156))))))))))

(declare-fun b!3165578 () Bool)

(declare-fun res!1287948 () Bool)

(declare-fun e!1971971 () Bool)

(assert (=> b!3165578 (=> res!1287948 e!1971971)))

(assert (=> b!3165578 (= res!1287948 (not ((_ is Concat!15060) (ite c!532310 (reg!10068 r!13156) (ite c!532311 (regTwo!19991 r!13156) (regTwo!19990 r!13156))))))))

(assert (=> b!3165578 (= e!1971972 e!1971971)))

(declare-fun b!3165579 () Bool)

(assert (=> b!3165579 (= e!1971971 e!1971968)))

(declare-fun res!1287946 () Bool)

(assert (=> b!3165579 (=> (not res!1287946) (not e!1971968))))

(assert (=> b!3165579 (= res!1287946 call!229491)))

(assert (= (and d!868815 (not res!1287949)) b!3165573))

(assert (= (and b!3165573 c!532371) b!3165571))

(assert (= (and b!3165573 (not c!532371)) b!3165574))

(assert (= (and b!3165571 res!1287945) b!3165577))

(assert (= (and b!3165574 c!532372) b!3165576))

(assert (= (and b!3165574 (not c!532372)) b!3165578))

(assert (= (and b!3165576 res!1287947) b!3165572))

(assert (= (and b!3165578 (not res!1287948)) b!3165579))

(assert (= (and b!3165579 res!1287946) b!3165575))

(assert (= (or b!3165576 b!3165579) bm!229484))

(assert (= (or b!3165572 b!3165575) bm!229485))

(assert (= (or b!3165577 bm!229485) bm!229486))

(declare-fun m!3427773 () Bool)

(assert (=> b!3165571 m!3427773))

(declare-fun m!3427775 () Bool)

(assert (=> bm!229484 m!3427775))

(declare-fun m!3427777 () Bool)

(assert (=> bm!229486 m!3427777))

(assert (=> bm!229456 d!868815))

(declare-fun d!868817 () Bool)

(assert (=> d!868817 (= (isEmpty!19756 lt!1064175) (not ((_ is Some!6898) lt!1064175)))))

(assert (=> d!868791 d!868817))

(declare-fun bs!539514 () Bool)

(declare-fun b!3165608 () Bool)

(assert (= bs!539514 (and b!3165608 b!3165528)))

(declare-fun lambda!115846 () Int)

(assert (=> bs!539514 (= lambda!115846 lambda!115837)))

(declare-fun b!3165602 () Bool)

(assert (=> b!3165602 false))

(declare-fun lt!1064351 () Unit!49812)

(declare-fun lt!1064338 () Unit!49812)

(assert (=> b!3165602 (= lt!1064351 lt!1064338)))

(declare-fun lt!1064344 () ListLongMap!719)

(declare-fun contains!6170 (ListMap!1301 tuple2!34532) Bool)

(assert (=> b!3165602 (contains!6170 (extractMap!232 (toList!2055 lt!1064344)) (tuple2!34533 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!94 (ListLongMap!719 tuple2!34532 Hashable!4076) Unit!49812)

(assert (=> b!3165602 (= lt!1064338 (lemmaInLongMapThenInGenericMap!94 lt!1064344 (tuple2!34533 r!13156 a!2409) (hashF!6108 (cache!4209 cache!347))))))

(declare-fun call!229507 () ListLongMap!719)

(assert (=> b!3165602 (= lt!1064344 call!229507)))

(declare-fun e!1971989 () Unit!49812)

(declare-fun Unit!49817 () Unit!49812)

(assert (=> b!3165602 (= e!1971989 Unit!49817)))

(declare-fun d!868819 () Bool)

(declare-fun lt!1064349 () Bool)

(assert (=> d!868819 (= lt!1064349 (contains!6170 (map!7899 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun e!1971987 () Bool)

(assert (=> d!868819 (= lt!1064349 e!1971987)))

(declare-fun res!1287958 () Bool)

(assert (=> d!868819 (=> (not res!1287958) (not e!1971987))))

(declare-fun lt!1064345 () (_ BitVec 64))

(declare-fun contains!6171 (MutLongMap!4160 (_ BitVec 64)) Bool)

(assert (=> d!868819 (= res!1287958 (contains!6171 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064345))))

(declare-fun lt!1064341 () Unit!49812)

(declare-fun e!1971990 () Unit!49812)

(assert (=> d!868819 (= lt!1064341 e!1971990)))

(declare-fun c!532383 () Bool)

(assert (=> d!868819 (= c!532383 (contains!6170 (extractMap!232 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347)))))) (tuple2!34533 r!13156 a!2409)))))

(declare-fun lt!1064348 () Unit!49812)

(declare-fun e!1971992 () Unit!49812)

(assert (=> d!868819 (= lt!1064348 e!1971992)))

(declare-fun c!532382 () Bool)

(assert (=> d!868819 (= c!532382 (contains!6171 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064345))))

(assert (=> d!868819 (= lt!1064345 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(assert (=> d!868819 (valid!3245 (cache!4209 cache!347))))

(assert (=> d!868819 (= (contains!6167 (cache!4209 cache!347) (tuple2!34533 r!13156 a!2409)) lt!1064349)))

(declare-fun b!3165603 () Bool)

(declare-fun e!1971991 () Bool)

(declare-fun call!229509 () Bool)

(assert (=> b!3165603 (= e!1971991 call!229509)))

(declare-fun b!3165604 () Bool)

(declare-fun Unit!49818 () Unit!49812)

(assert (=> b!3165604 (= e!1971992 Unit!49818)))

(declare-fun b!3165605 () Bool)

(declare-fun Unit!49819 () Unit!49812)

(assert (=> b!3165605 (= e!1971989 Unit!49819)))

(declare-fun bm!229499 () Bool)

(declare-fun call!229504 () Option!6901)

(assert (=> bm!229499 (= call!229509 (isDefined!5423 call!229504))))

(declare-fun b!3165606 () Bool)

(declare-fun e!1971988 () Unit!49812)

(declare-fun Unit!49820 () Unit!49812)

(assert (=> b!3165606 (= e!1971988 Unit!49820)))

(declare-fun call!229506 () (_ BitVec 64))

(declare-fun bm!229500 () Bool)

(assert (=> bm!229500 (= call!229506 (hash!803 (hashF!6108 (cache!4209 cache!347)) (tuple2!34533 r!13156 a!2409)))))

(declare-fun lt!1064342 () ListLongMap!719)

(declare-fun bm!229501 () Bool)

(declare-fun call!229505 () List!35571)

(assert (=> bm!229501 (= call!229505 (apply!7948 (ite c!532383 lt!1064342 call!229507) call!229506))))

(declare-fun b!3165607 () Bool)

(assert (=> b!3165607 false))

(declare-fun lt!1064336 () Unit!49812)

(declare-fun lt!1064335 () Unit!49812)

(assert (=> b!3165607 (= lt!1064336 lt!1064335)))

(declare-fun lt!1064352 () List!35572)

(declare-fun lt!1064354 () List!35571)

(assert (=> b!3165607 (contains!6168 lt!1064352 (tuple2!34537 lt!1064345 lt!1064354))))

(assert (=> b!3165607 (= lt!1064335 (lemmaGetValueByKeyImpliesContainsTuple!100 lt!1064352 lt!1064345 lt!1064354))))

(assert (=> b!3165607 (= lt!1064354 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064345))))

(assert (=> b!3165607 (= lt!1064352 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))

(declare-fun lt!1064350 () Unit!49812)

(declare-fun lt!1064343 () Unit!49812)

(assert (=> b!3165607 (= lt!1064350 lt!1064343)))

(declare-fun lt!1064340 () List!35572)

(assert (=> b!3165607 (isDefined!5422 (getValueByKey!176 lt!1064340 lt!1064345))))

(assert (=> b!3165607 (= lt!1064343 (lemmaContainsKeyImpliesGetValueByKeyDefined!128 lt!1064340 lt!1064345))))

(assert (=> b!3165607 (= lt!1064340 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))

(declare-fun lt!1064346 () Unit!49812)

(declare-fun lt!1064339 () Unit!49812)

(assert (=> b!3165607 (= lt!1064346 lt!1064339)))

(declare-fun lt!1064337 () List!35572)

(declare-fun containsKey!192 (List!35572 (_ BitVec 64)) Bool)

(assert (=> b!3165607 (containsKey!192 lt!1064337 lt!1064345)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!95 (List!35572 (_ BitVec 64)) Unit!49812)

(assert (=> b!3165607 (= lt!1064339 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!95 lt!1064337 lt!1064345))))

(assert (=> b!3165607 (= lt!1064337 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))

(declare-fun Unit!49821 () Unit!49812)

(assert (=> b!3165607 (= e!1971988 Unit!49821)))

(declare-fun bm!229502 () Bool)

(assert (=> bm!229502 (= call!229504 (getPair!94 call!229505 (tuple2!34533 r!13156 a!2409)))))

(assert (=> b!3165608 (= e!1971992 (forallContained!1072 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))) lambda!115846 (tuple2!34537 lt!1064345 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064345))))))

(declare-fun c!532384 () Bool)

(assert (=> b!3165608 (= c!532384 (not (contains!6168 (toList!2055 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347))))) (tuple2!34537 lt!1064345 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064345)))))))

(declare-fun lt!1064353 () Unit!49812)

(assert (=> b!3165608 (= lt!1064353 e!1971988)))

(declare-fun b!3165609 () Bool)

(assert (=> b!3165609 (= e!1971987 (isDefined!5423 (getPair!94 (apply!7947 (v!35131 (underlying!8550 (cache!4209 cache!347))) lt!1064345) (tuple2!34533 r!13156 a!2409))))))

(declare-fun bm!229503 () Bool)

(assert (=> bm!229503 (= call!229507 (map!7900 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))

(declare-fun b!3165610 () Bool)

(assert (=> b!3165610 (= e!1971990 e!1971989)))

(declare-fun res!1287957 () Bool)

(declare-fun call!229508 () Bool)

(assert (=> b!3165610 (= res!1287957 call!229508)))

(assert (=> b!3165610 (=> (not res!1287957) (not e!1971991))))

(declare-fun c!532381 () Bool)

(assert (=> b!3165610 (= c!532381 e!1971991)))

(declare-fun b!3165611 () Bool)

(declare-fun e!1971993 () Bool)

(assert (=> b!3165611 (= e!1971993 call!229509)))

(declare-fun b!3165612 () Bool)

(declare-fun lt!1064347 () Unit!49812)

(assert (=> b!3165612 (= e!1971990 lt!1064347)))

(assert (=> b!3165612 (= lt!1064342 call!229507)))

(declare-fun lemmaInGenericMapThenInLongMap!94 (ListLongMap!719 tuple2!34532 Hashable!4076) Unit!49812)

(assert (=> b!3165612 (= lt!1064347 (lemmaInGenericMapThenInLongMap!94 lt!1064342 (tuple2!34533 r!13156 a!2409) (hashF!6108 (cache!4209 cache!347))))))

(declare-fun res!1287956 () Bool)

(assert (=> b!3165612 (= res!1287956 call!229508)))

(assert (=> b!3165612 (=> (not res!1287956) (not e!1971993))))

(assert (=> b!3165612 e!1971993))

(declare-fun bm!229504 () Bool)

(assert (=> bm!229504 (= call!229508 (contains!6169 (ite c!532383 lt!1064342 call!229507) call!229506))))

(assert (= (and d!868819 c!532382) b!3165608))

(assert (= (and d!868819 (not c!532382)) b!3165604))

(assert (= (and b!3165608 c!532384) b!3165607))

(assert (= (and b!3165608 (not c!532384)) b!3165606))

(assert (= (and d!868819 c!532383) b!3165612))

(assert (= (and d!868819 (not c!532383)) b!3165610))

(assert (= (and b!3165612 res!1287956) b!3165611))

(assert (= (and b!3165610 res!1287957) b!3165603))

(assert (= (and b!3165610 c!532381) b!3165602))

(assert (= (and b!3165610 (not c!532381)) b!3165605))

(assert (= (or b!3165612 b!3165611 b!3165610 b!3165603) bm!229500))

(assert (= (or b!3165612 b!3165610 b!3165603 b!3165602) bm!229503))

(assert (= (or b!3165611 b!3165603) bm!229501))

(assert (= (or b!3165612 b!3165610) bm!229504))

(assert (= (or b!3165611 b!3165603) bm!229502))

(assert (= (or b!3165611 b!3165603) bm!229499))

(assert (= (and d!868819 res!1287958) b!3165609))

(declare-fun m!3427779 () Bool)

(assert (=> d!868819 m!3427779))

(declare-fun m!3427781 () Bool)

(assert (=> d!868819 m!3427781))

(declare-fun m!3427783 () Bool)

(assert (=> d!868819 m!3427783))

(assert (=> d!868819 m!3427781))

(assert (=> d!868819 m!3427704))

(declare-fun m!3427785 () Bool)

(assert (=> d!868819 m!3427785))

(assert (=> d!868819 m!3427730))

(assert (=> d!868819 m!3427704))

(assert (=> d!868819 m!3427702))

(assert (=> d!868819 m!3427698))

(declare-fun m!3427787 () Bool)

(assert (=> b!3165609 m!3427787))

(assert (=> b!3165609 m!3427787))

(declare-fun m!3427789 () Bool)

(assert (=> b!3165609 m!3427789))

(assert (=> b!3165609 m!3427789))

(declare-fun m!3427791 () Bool)

(assert (=> b!3165609 m!3427791))

(assert (=> bm!229503 m!3427698))

(assert (=> bm!229500 m!3427730))

(declare-fun m!3427793 () Bool)

(assert (=> bm!229501 m!3427793))

(declare-fun m!3427795 () Bool)

(assert (=> b!3165602 m!3427795))

(assert (=> b!3165602 m!3427795))

(declare-fun m!3427797 () Bool)

(assert (=> b!3165602 m!3427797))

(declare-fun m!3427799 () Bool)

(assert (=> b!3165602 m!3427799))

(declare-fun m!3427801 () Bool)

(assert (=> bm!229499 m!3427801))

(declare-fun m!3427803 () Bool)

(assert (=> bm!229504 m!3427803))

(declare-fun m!3427805 () Bool)

(assert (=> b!3165612 m!3427805))

(assert (=> b!3165608 m!3427698))

(assert (=> b!3165608 m!3427787))

(declare-fun m!3427807 () Bool)

(assert (=> b!3165608 m!3427807))

(declare-fun m!3427809 () Bool)

(assert (=> b!3165608 m!3427809))

(declare-fun m!3427811 () Bool)

(assert (=> bm!229502 m!3427811))

(assert (=> b!3165607 m!3427787))

(declare-fun m!3427813 () Bool)

(assert (=> b!3165607 m!3427813))

(assert (=> b!3165607 m!3427698))

(declare-fun m!3427815 () Bool)

(assert (=> b!3165607 m!3427815))

(declare-fun m!3427817 () Bool)

(assert (=> b!3165607 m!3427817))

(declare-fun m!3427819 () Bool)

(assert (=> b!3165607 m!3427819))

(declare-fun m!3427821 () Bool)

(assert (=> b!3165607 m!3427821))

(declare-fun m!3427823 () Bool)

(assert (=> b!3165607 m!3427823))

(assert (=> b!3165607 m!3427819))

(declare-fun m!3427825 () Bool)

(assert (=> b!3165607 m!3427825))

(assert (=> d!868791 d!868819))

(assert (=> d!868791 d!868783))

(declare-fun d!868821 () Bool)

(assert (=> d!868821 (= (get!11243 lt!1064175) (v!35132 lt!1064175))))

(assert (=> b!3165435 d!868821))

(declare-fun b!3165633 () Bool)

(declare-fun e!1972004 () Regex!9739)

(assert (=> b!3165633 (= e!1972004 EmptyLang!9739)))

(declare-fun b!3165634 () Bool)

(declare-fun c!532396 () Bool)

(assert (=> b!3165634 (= c!532396 (nullable!3343 (regOne!19990 r!13156)))))

(declare-fun e!1972006 () Regex!9739)

(declare-fun e!1972005 () Regex!9739)

(assert (=> b!3165634 (= e!1972006 e!1972005)))

(declare-fun call!229519 () Regex!9739)

(declare-fun call!229520 () Regex!9739)

(declare-fun b!3165635 () Bool)

(assert (=> b!3165635 (= e!1972005 (Union!9739 (Concat!15060 call!229520 (regTwo!19990 r!13156)) call!229519))))

(declare-fun c!532399 () Bool)

(declare-fun bm!229513 () Bool)

(assert (=> bm!229513 (= call!229519 (derivativeStep!2890 (ite c!532399 (regOne!19991 r!13156) (regTwo!19990 r!13156)) a!2409))))

(declare-fun b!3165636 () Bool)

(declare-fun e!1972007 () Regex!9739)

(declare-fun call!229521 () Regex!9739)

(assert (=> b!3165636 (= e!1972007 (Union!9739 call!229519 call!229521))))

(declare-fun b!3165637 () Bool)

(declare-fun e!1972008 () Regex!9739)

(assert (=> b!3165637 (= e!1972008 (ite (= a!2409 (c!532305 r!13156)) EmptyExpr!9739 EmptyLang!9739))))

(declare-fun bm!229514 () Bool)

(declare-fun call!229518 () Regex!9739)

(assert (=> bm!229514 (= call!229518 call!229521)))

(declare-fun c!532397 () Bool)

(declare-fun bm!229515 () Bool)

(assert (=> bm!229515 (= call!229521 (derivativeStep!2890 (ite c!532399 (regTwo!19991 r!13156) (ite c!532397 (reg!10068 r!13156) (regOne!19990 r!13156))) a!2409))))

(declare-fun b!3165638 () Bool)

(assert (=> b!3165638 (= c!532399 ((_ is Union!9739) r!13156))))

(assert (=> b!3165638 (= e!1972008 e!1972007)))

(declare-fun d!868823 () Bool)

(declare-fun lt!1064357 () Regex!9739)

(assert (=> d!868823 (validRegex!4461 lt!1064357)))

(assert (=> d!868823 (= lt!1064357 e!1972004)))

(declare-fun c!532395 () Bool)

(assert (=> d!868823 (= c!532395 (or ((_ is EmptyExpr!9739) r!13156) ((_ is EmptyLang!9739) r!13156)))))

(assert (=> d!868823 (validRegex!4461 r!13156)))

(assert (=> d!868823 (= (derivativeStep!2890 r!13156 a!2409) lt!1064357)))

(declare-fun b!3165639 () Bool)

(assert (=> b!3165639 (= e!1972005 (Union!9739 (Concat!15060 call!229520 (regTwo!19990 r!13156)) EmptyLang!9739))))

(declare-fun bm!229516 () Bool)

(assert (=> bm!229516 (= call!229520 call!229518)))

(declare-fun b!3165640 () Bool)

(assert (=> b!3165640 (= e!1972006 (Concat!15060 call!229518 r!13156))))

(declare-fun b!3165641 () Bool)

(assert (=> b!3165641 (= e!1972004 e!1972008)))

(declare-fun c!532398 () Bool)

(assert (=> b!3165641 (= c!532398 ((_ is ElementMatch!9739) r!13156))))

(declare-fun b!3165642 () Bool)

(assert (=> b!3165642 (= e!1972007 e!1972006)))

(assert (=> b!3165642 (= c!532397 ((_ is Star!9739) r!13156))))

(assert (= (and d!868823 c!532395) b!3165633))

(assert (= (and d!868823 (not c!532395)) b!3165641))

(assert (= (and b!3165641 c!532398) b!3165637))

(assert (= (and b!3165641 (not c!532398)) b!3165638))

(assert (= (and b!3165638 c!532399) b!3165636))

(assert (= (and b!3165638 (not c!532399)) b!3165642))

(assert (= (and b!3165642 c!532397) b!3165640))

(assert (= (and b!3165642 (not c!532397)) b!3165634))

(assert (= (and b!3165634 c!532396) b!3165635))

(assert (= (and b!3165634 (not c!532396)) b!3165639))

(assert (= (or b!3165635 b!3165639) bm!229516))

(assert (= (or b!3165640 bm!229516) bm!229514))

(assert (= (or b!3165636 bm!229514) bm!229515))

(assert (= (or b!3165636 b!3165635) bm!229513))

(declare-fun m!3427827 () Bool)

(assert (=> b!3165634 m!3427827))

(declare-fun m!3427829 () Bool)

(assert (=> bm!229513 m!3427829))

(declare-fun m!3427831 () Bool)

(assert (=> bm!229515 m!3427831))

(declare-fun m!3427833 () Bool)

(assert (=> d!868823 m!3427833))

(assert (=> d!868823 m!3427636))

(assert (=> b!3165435 d!868823))

(declare-fun d!868825 () Bool)

(declare-fun nullableFct!951 (Regex!9739) Bool)

(assert (=> d!868825 (= (nullable!3343 (reg!10068 r!13156)) (nullableFct!951 (reg!10068 r!13156)))))

(declare-fun bs!539515 () Bool)

(assert (= bs!539515 d!868825))

(declare-fun m!3427835 () Bool)

(assert (=> bs!539515 m!3427835))

(assert (=> b!3165375 d!868825))

(assert (=> d!868797 d!868811))

(declare-fun b!3165646 () Bool)

(declare-fun e!1972009 () Bool)

(declare-fun tp!997339 () Bool)

(declare-fun tp!997340 () Bool)

(assert (=> b!3165646 (= e!1972009 (and tp!997339 tp!997340))))

(declare-fun b!3165643 () Bool)

(assert (=> b!3165643 (= e!1972009 tp_is_empty!17041)))

(declare-fun b!3165644 () Bool)

(declare-fun tp!997341 () Bool)

(declare-fun tp!997342 () Bool)

(assert (=> b!3165644 (= e!1972009 (and tp!997341 tp!997342))))

(declare-fun b!3165645 () Bool)

(declare-fun tp!997338 () Bool)

(assert (=> b!3165645 (= e!1972009 tp!997338)))

(assert (=> b!3165463 (= tp!997297 e!1972009)))

(assert (= (and b!3165463 ((_ is ElementMatch!9739) (regOne!19990 (regTwo!19991 r!13156)))) b!3165643))

(assert (= (and b!3165463 ((_ is Concat!15060) (regOne!19990 (regTwo!19991 r!13156)))) b!3165644))

(assert (= (and b!3165463 ((_ is Star!9739) (regOne!19990 (regTwo!19991 r!13156)))) b!3165645))

(assert (= (and b!3165463 ((_ is Union!9739) (regOne!19990 (regTwo!19991 r!13156)))) b!3165646))

(declare-fun b!3165650 () Bool)

(declare-fun e!1972010 () Bool)

(declare-fun tp!997344 () Bool)

(declare-fun tp!997345 () Bool)

(assert (=> b!3165650 (= e!1972010 (and tp!997344 tp!997345))))

(declare-fun b!3165647 () Bool)

(assert (=> b!3165647 (= e!1972010 tp_is_empty!17041)))

(declare-fun b!3165648 () Bool)

(declare-fun tp!997346 () Bool)

(declare-fun tp!997347 () Bool)

(assert (=> b!3165648 (= e!1972010 (and tp!997346 tp!997347))))

(declare-fun b!3165649 () Bool)

(declare-fun tp!997343 () Bool)

(assert (=> b!3165649 (= e!1972010 tp!997343)))

(assert (=> b!3165463 (= tp!997298 e!1972010)))

(assert (= (and b!3165463 ((_ is ElementMatch!9739) (regTwo!19990 (regTwo!19991 r!13156)))) b!3165647))

(assert (= (and b!3165463 ((_ is Concat!15060) (regTwo!19990 (regTwo!19991 r!13156)))) b!3165648))

(assert (= (and b!3165463 ((_ is Star!9739) (regTwo!19990 (regTwo!19991 r!13156)))) b!3165649))

(assert (= (and b!3165463 ((_ is Union!9739) (regTwo!19990 (regTwo!19991 r!13156)))) b!3165650))

(declare-fun b!3165654 () Bool)

(declare-fun e!1972011 () Bool)

(declare-fun tp!997349 () Bool)

(declare-fun tp!997350 () Bool)

(assert (=> b!3165654 (= e!1972011 (and tp!997349 tp!997350))))

(declare-fun b!3165651 () Bool)

(assert (=> b!3165651 (= e!1972011 tp_is_empty!17041)))

(declare-fun b!3165652 () Bool)

(declare-fun tp!997351 () Bool)

(declare-fun tp!997352 () Bool)

(assert (=> b!3165652 (= e!1972011 (and tp!997351 tp!997352))))

(declare-fun b!3165653 () Bool)

(declare-fun tp!997348 () Bool)

(assert (=> b!3165653 (= e!1972011 tp!997348)))

(assert (=> b!3165464 (= tp!997294 e!1972011)))

(assert (= (and b!3165464 ((_ is ElementMatch!9739) (reg!10068 (regTwo!19991 r!13156)))) b!3165651))

(assert (= (and b!3165464 ((_ is Concat!15060) (reg!10068 (regTwo!19991 r!13156)))) b!3165652))

(assert (= (and b!3165464 ((_ is Star!9739) (reg!10068 (regTwo!19991 r!13156)))) b!3165653))

(assert (= (and b!3165464 ((_ is Union!9739) (reg!10068 (regTwo!19991 r!13156)))) b!3165654))

(declare-fun b!3165658 () Bool)

(declare-fun e!1972012 () Bool)

(declare-fun tp!997354 () Bool)

(declare-fun tp!997355 () Bool)

(assert (=> b!3165658 (= e!1972012 (and tp!997354 tp!997355))))

(declare-fun b!3165655 () Bool)

(assert (=> b!3165655 (= e!1972012 tp_is_empty!17041)))

(declare-fun b!3165656 () Bool)

(declare-fun tp!997356 () Bool)

(declare-fun tp!997357 () Bool)

(assert (=> b!3165656 (= e!1972012 (and tp!997356 tp!997357))))

(declare-fun b!3165657 () Bool)

(declare-fun tp!997353 () Bool)

(assert (=> b!3165657 (= e!1972012 tp!997353)))

(assert (=> b!3165478 (= tp!997322 e!1972012)))

(assert (= (and b!3165478 ((_ is ElementMatch!9739) (_1!20398 (_1!20399 (h!40867 mapDefault!18867))))) b!3165655))

(assert (= (and b!3165478 ((_ is Concat!15060) (_1!20398 (_1!20399 (h!40867 mapDefault!18867))))) b!3165656))

(assert (= (and b!3165478 ((_ is Star!9739) (_1!20398 (_1!20399 (h!40867 mapDefault!18867))))) b!3165657))

(assert (= (and b!3165478 ((_ is Union!9739) (_1!20398 (_1!20399 (h!40867 mapDefault!18867))))) b!3165658))

(declare-fun b!3165662 () Bool)

(declare-fun e!1972013 () Bool)

(declare-fun tp!997359 () Bool)

(declare-fun tp!997360 () Bool)

(assert (=> b!3165662 (= e!1972013 (and tp!997359 tp!997360))))

(declare-fun b!3165659 () Bool)

(assert (=> b!3165659 (= e!1972013 tp_is_empty!17041)))

(declare-fun b!3165660 () Bool)

(declare-fun tp!997361 () Bool)

(declare-fun tp!997362 () Bool)

(assert (=> b!3165660 (= e!1972013 (and tp!997361 tp!997362))))

(declare-fun b!3165661 () Bool)

(declare-fun tp!997358 () Bool)

(assert (=> b!3165661 (= e!1972013 tp!997358)))

(assert (=> b!3165478 (= tp!997325 e!1972013)))

(assert (= (and b!3165478 ((_ is ElementMatch!9739) (_2!20399 (h!40867 mapDefault!18867)))) b!3165659))

(assert (= (and b!3165478 ((_ is Concat!15060) (_2!20399 (h!40867 mapDefault!18867)))) b!3165660))

(assert (= (and b!3165478 ((_ is Star!9739) (_2!20399 (h!40867 mapDefault!18867)))) b!3165661))

(assert (= (and b!3165478 ((_ is Union!9739) (_2!20399 (h!40867 mapDefault!18867)))) b!3165662))

(declare-fun tp!997364 () Bool)

(declare-fun b!3165663 () Bool)

(declare-fun e!1972014 () Bool)

(declare-fun tp!997363 () Bool)

(declare-fun tp!997365 () Bool)

(assert (=> b!3165663 (= e!1972014 (and tp!997363 tp_is_empty!17041 tp!997364 tp!997365))))

(assert (=> b!3165478 (= tp!997327 e!1972014)))

(assert (= (and b!3165478 ((_ is Cons!35447) (t!234644 mapDefault!18867))) b!3165663))

(declare-fun b!3165667 () Bool)

(declare-fun e!1972015 () Bool)

(declare-fun tp!997367 () Bool)

(declare-fun tp!997368 () Bool)

(assert (=> b!3165667 (= e!1972015 (and tp!997367 tp!997368))))

(declare-fun b!3165664 () Bool)

(assert (=> b!3165664 (= e!1972015 tp_is_empty!17041)))

(declare-fun b!3165665 () Bool)

(declare-fun tp!997369 () Bool)

(declare-fun tp!997370 () Bool)

(assert (=> b!3165665 (= e!1972015 (and tp!997369 tp!997370))))

(declare-fun b!3165666 () Bool)

(declare-fun tp!997366 () Bool)

(assert (=> b!3165666 (= e!1972015 tp!997366)))

(assert (=> b!3165459 (= tp!997292 e!1972015)))

(assert (= (and b!3165459 ((_ is ElementMatch!9739) (regOne!19990 (regOne!19991 r!13156)))) b!3165664))

(assert (= (and b!3165459 ((_ is Concat!15060) (regOne!19990 (regOne!19991 r!13156)))) b!3165665))

(assert (= (and b!3165459 ((_ is Star!9739) (regOne!19990 (regOne!19991 r!13156)))) b!3165666))

(assert (= (and b!3165459 ((_ is Union!9739) (regOne!19990 (regOne!19991 r!13156)))) b!3165667))

(declare-fun b!3165671 () Bool)

(declare-fun e!1972016 () Bool)

(declare-fun tp!997372 () Bool)

(declare-fun tp!997373 () Bool)

(assert (=> b!3165671 (= e!1972016 (and tp!997372 tp!997373))))

(declare-fun b!3165668 () Bool)

(assert (=> b!3165668 (= e!1972016 tp_is_empty!17041)))

(declare-fun b!3165669 () Bool)

(declare-fun tp!997374 () Bool)

(declare-fun tp!997375 () Bool)

(assert (=> b!3165669 (= e!1972016 (and tp!997374 tp!997375))))

(declare-fun b!3165670 () Bool)

(declare-fun tp!997371 () Bool)

(assert (=> b!3165670 (= e!1972016 tp!997371)))

(assert (=> b!3165459 (= tp!997293 e!1972016)))

(assert (= (and b!3165459 ((_ is ElementMatch!9739) (regTwo!19990 (regOne!19991 r!13156)))) b!3165668))

(assert (= (and b!3165459 ((_ is Concat!15060) (regTwo!19990 (regOne!19991 r!13156)))) b!3165669))

(assert (= (and b!3165459 ((_ is Star!9739) (regTwo!19990 (regOne!19991 r!13156)))) b!3165670))

(assert (= (and b!3165459 ((_ is Union!9739) (regTwo!19990 (regOne!19991 r!13156)))) b!3165671))

(declare-fun e!1972018 () Bool)

(declare-fun tp!997380 () Bool)

(declare-fun tp!997377 () Bool)

(declare-fun b!3165672 () Bool)

(declare-fun tp!997382 () Bool)

(assert (=> b!3165672 (= e!1972018 (and tp!997377 tp_is_empty!17041 tp!997380 tp!997382))))

(declare-fun condMapEmpty!18868 () Bool)

(declare-fun mapDefault!18868 () List!35571)

(assert (=> mapNonEmpty!18867 (= condMapEmpty!18868 (= mapRest!18867 ((as const (Array (_ BitVec 32) List!35571)) mapDefault!18868)))))

(declare-fun e!1972017 () Bool)

(declare-fun mapRes!18868 () Bool)

(assert (=> mapNonEmpty!18867 (= tp!997324 (and e!1972017 mapRes!18868))))

(declare-fun mapIsEmpty!18868 () Bool)

(assert (=> mapIsEmpty!18868 mapRes!18868))

(declare-fun mapNonEmpty!18868 () Bool)

(declare-fun tp!997378 () Bool)

(assert (=> mapNonEmpty!18868 (= mapRes!18868 (and tp!997378 e!1972018))))

(declare-fun mapKey!18868 () (_ BitVec 32))

(declare-fun mapValue!18868 () List!35571)

(declare-fun mapRest!18868 () (Array (_ BitVec 32) List!35571))

(assert (=> mapNonEmpty!18868 (= mapRest!18867 (store mapRest!18868 mapKey!18868 mapValue!18868))))

(declare-fun b!3165673 () Bool)

(declare-fun tp!997376 () Bool)

(declare-fun tp!997379 () Bool)

(declare-fun tp!997381 () Bool)

(assert (=> b!3165673 (= e!1972017 (and tp!997376 tp_is_empty!17041 tp!997379 tp!997381))))

(assert (= (and mapNonEmpty!18867 condMapEmpty!18868) mapIsEmpty!18868))

(assert (= (and mapNonEmpty!18867 (not condMapEmpty!18868)) mapNonEmpty!18868))

(assert (= (and mapNonEmpty!18868 ((_ is Cons!35447) mapValue!18868)) b!3165672))

(assert (= (and mapNonEmpty!18867 ((_ is Cons!35447) mapDefault!18868)) b!3165673))

(declare-fun m!3427837 () Bool)

(assert (=> mapNonEmpty!18868 m!3427837))

(declare-fun b!3165677 () Bool)

(declare-fun e!1972019 () Bool)

(declare-fun tp!997384 () Bool)

(declare-fun tp!997385 () Bool)

(assert (=> b!3165677 (= e!1972019 (and tp!997384 tp!997385))))

(declare-fun b!3165674 () Bool)

(assert (=> b!3165674 (= e!1972019 tp_is_empty!17041)))

(declare-fun b!3165675 () Bool)

(declare-fun tp!997386 () Bool)

(declare-fun tp!997387 () Bool)

(assert (=> b!3165675 (= e!1972019 (and tp!997386 tp!997387))))

(declare-fun b!3165676 () Bool)

(declare-fun tp!997383 () Bool)

(assert (=> b!3165676 (= e!1972019 tp!997383)))

(assert (=> b!3165477 (= tp!997323 e!1972019)))

(assert (= (and b!3165477 ((_ is ElementMatch!9739) (_1!20398 (_1!20399 (h!40867 mapValue!18867))))) b!3165674))

(assert (= (and b!3165477 ((_ is Concat!15060) (_1!20398 (_1!20399 (h!40867 mapValue!18867))))) b!3165675))

(assert (= (and b!3165477 ((_ is Star!9739) (_1!20398 (_1!20399 (h!40867 mapValue!18867))))) b!3165676))

(assert (= (and b!3165477 ((_ is Union!9739) (_1!20398 (_1!20399 (h!40867 mapValue!18867))))) b!3165677))

(declare-fun b!3165681 () Bool)

(declare-fun e!1972020 () Bool)

(declare-fun tp!997389 () Bool)

(declare-fun tp!997390 () Bool)

(assert (=> b!3165681 (= e!1972020 (and tp!997389 tp!997390))))

(declare-fun b!3165678 () Bool)

(assert (=> b!3165678 (= e!1972020 tp_is_empty!17041)))

(declare-fun b!3165679 () Bool)

(declare-fun tp!997391 () Bool)

(declare-fun tp!997392 () Bool)

(assert (=> b!3165679 (= e!1972020 (and tp!997391 tp!997392))))

(declare-fun b!3165680 () Bool)

(declare-fun tp!997388 () Bool)

(assert (=> b!3165680 (= e!1972020 tp!997388)))

(assert (=> b!3165477 (= tp!997326 e!1972020)))

(assert (= (and b!3165477 ((_ is ElementMatch!9739) (_2!20399 (h!40867 mapValue!18867)))) b!3165678))

(assert (= (and b!3165477 ((_ is Concat!15060) (_2!20399 (h!40867 mapValue!18867)))) b!3165679))

(assert (= (and b!3165477 ((_ is Star!9739) (_2!20399 (h!40867 mapValue!18867)))) b!3165680))

(assert (= (and b!3165477 ((_ is Union!9739) (_2!20399 (h!40867 mapValue!18867)))) b!3165681))

(declare-fun tp!997393 () Bool)

(declare-fun e!1972021 () Bool)

(declare-fun b!3165682 () Bool)

(declare-fun tp!997395 () Bool)

(declare-fun tp!997394 () Bool)

(assert (=> b!3165682 (= e!1972021 (and tp!997393 tp_is_empty!17041 tp!997394 tp!997395))))

(assert (=> b!3165477 (= tp!997328 e!1972021)))

(assert (= (and b!3165477 ((_ is Cons!35447) (t!234644 mapValue!18867))) b!3165682))

(declare-fun b!3165686 () Bool)

(declare-fun e!1972022 () Bool)

(declare-fun tp!997397 () Bool)

(declare-fun tp!997398 () Bool)

(assert (=> b!3165686 (= e!1972022 (and tp!997397 tp!997398))))

(declare-fun b!3165683 () Bool)

(assert (=> b!3165683 (= e!1972022 tp_is_empty!17041)))

(declare-fun b!3165684 () Bool)

(declare-fun tp!997399 () Bool)

(declare-fun tp!997400 () Bool)

(assert (=> b!3165684 (= e!1972022 (and tp!997399 tp!997400))))

(declare-fun b!3165685 () Bool)

(declare-fun tp!997396 () Bool)

(assert (=> b!3165685 (= e!1972022 tp!997396)))

(assert (=> b!3165452 (= tp!997279 e!1972022)))

(assert (= (and b!3165452 ((_ is ElementMatch!9739) (reg!10068 (regTwo!19990 r!13156)))) b!3165683))

(assert (= (and b!3165452 ((_ is Concat!15060) (reg!10068 (regTwo!19990 r!13156)))) b!3165684))

(assert (= (and b!3165452 ((_ is Star!9739) (reg!10068 (regTwo!19990 r!13156)))) b!3165685))

(assert (= (and b!3165452 ((_ is Union!9739) (reg!10068 (regTwo!19990 r!13156)))) b!3165686))

(declare-fun b!3165690 () Bool)

(declare-fun e!1972023 () Bool)

(declare-fun tp!997402 () Bool)

(declare-fun tp!997403 () Bool)

(assert (=> b!3165690 (= e!1972023 (and tp!997402 tp!997403))))

(declare-fun b!3165687 () Bool)

(assert (=> b!3165687 (= e!1972023 tp_is_empty!17041)))

(declare-fun b!3165688 () Bool)

(declare-fun tp!997404 () Bool)

(declare-fun tp!997405 () Bool)

(assert (=> b!3165688 (= e!1972023 (and tp!997404 tp!997405))))

(declare-fun b!3165689 () Bool)

(declare-fun tp!997401 () Bool)

(assert (=> b!3165689 (= e!1972023 tp!997401)))

(assert (=> b!3165461 (= tp!997290 e!1972023)))

(assert (= (and b!3165461 ((_ is ElementMatch!9739) (regOne!19991 (regOne!19991 r!13156)))) b!3165687))

(assert (= (and b!3165461 ((_ is Concat!15060) (regOne!19991 (regOne!19991 r!13156)))) b!3165688))

(assert (= (and b!3165461 ((_ is Star!9739) (regOne!19991 (regOne!19991 r!13156)))) b!3165689))

(assert (= (and b!3165461 ((_ is Union!9739) (regOne!19991 (regOne!19991 r!13156)))) b!3165690))

(declare-fun b!3165694 () Bool)

(declare-fun e!1972024 () Bool)

(declare-fun tp!997407 () Bool)

(declare-fun tp!997408 () Bool)

(assert (=> b!3165694 (= e!1972024 (and tp!997407 tp!997408))))

(declare-fun b!3165691 () Bool)

(assert (=> b!3165691 (= e!1972024 tp_is_empty!17041)))

(declare-fun b!3165692 () Bool)

(declare-fun tp!997409 () Bool)

(declare-fun tp!997410 () Bool)

(assert (=> b!3165692 (= e!1972024 (and tp!997409 tp!997410))))

(declare-fun b!3165693 () Bool)

(declare-fun tp!997406 () Bool)

(assert (=> b!3165693 (= e!1972024 tp!997406)))

(assert (=> b!3165461 (= tp!997291 e!1972024)))

(assert (= (and b!3165461 ((_ is ElementMatch!9739) (regTwo!19991 (regOne!19991 r!13156)))) b!3165691))

(assert (= (and b!3165461 ((_ is Concat!15060) (regTwo!19991 (regOne!19991 r!13156)))) b!3165692))

(assert (= (and b!3165461 ((_ is Star!9739) (regTwo!19991 (regOne!19991 r!13156)))) b!3165693))

(assert (= (and b!3165461 ((_ is Union!9739) (regTwo!19991 (regOne!19991 r!13156)))) b!3165694))

(declare-fun b!3165698 () Bool)

(declare-fun e!1972025 () Bool)

(declare-fun tp!997412 () Bool)

(declare-fun tp!997413 () Bool)

(assert (=> b!3165698 (= e!1972025 (and tp!997412 tp!997413))))

(declare-fun b!3165695 () Bool)

(assert (=> b!3165695 (= e!1972025 tp_is_empty!17041)))

(declare-fun b!3165696 () Bool)

(declare-fun tp!997414 () Bool)

(declare-fun tp!997415 () Bool)

(assert (=> b!3165696 (= e!1972025 (and tp!997414 tp!997415))))

(declare-fun b!3165697 () Bool)

(declare-fun tp!997411 () Bool)

(assert (=> b!3165697 (= e!1972025 tp!997411)))

(assert (=> b!3165447 (= tp!997277 e!1972025)))

(assert (= (and b!3165447 ((_ is ElementMatch!9739) (regOne!19990 (regOne!19990 r!13156)))) b!3165695))

(assert (= (and b!3165447 ((_ is Concat!15060) (regOne!19990 (regOne!19990 r!13156)))) b!3165696))

(assert (= (and b!3165447 ((_ is Star!9739) (regOne!19990 (regOne!19990 r!13156)))) b!3165697))

(assert (= (and b!3165447 ((_ is Union!9739) (regOne!19990 (regOne!19990 r!13156)))) b!3165698))

(declare-fun b!3165702 () Bool)

(declare-fun e!1972026 () Bool)

(declare-fun tp!997417 () Bool)

(declare-fun tp!997418 () Bool)

(assert (=> b!3165702 (= e!1972026 (and tp!997417 tp!997418))))

(declare-fun b!3165699 () Bool)

(assert (=> b!3165699 (= e!1972026 tp_is_empty!17041)))

(declare-fun b!3165700 () Bool)

(declare-fun tp!997419 () Bool)

(declare-fun tp!997420 () Bool)

(assert (=> b!3165700 (= e!1972026 (and tp!997419 tp!997420))))

(declare-fun b!3165701 () Bool)

(declare-fun tp!997416 () Bool)

(assert (=> b!3165701 (= e!1972026 tp!997416)))

(assert (=> b!3165447 (= tp!997278 e!1972026)))

(assert (= (and b!3165447 ((_ is ElementMatch!9739) (regTwo!19990 (regOne!19990 r!13156)))) b!3165699))

(assert (= (and b!3165447 ((_ is Concat!15060) (regTwo!19990 (regOne!19990 r!13156)))) b!3165700))

(assert (= (and b!3165447 ((_ is Star!9739) (regTwo!19990 (regOne!19990 r!13156)))) b!3165701))

(assert (= (and b!3165447 ((_ is Union!9739) (regTwo!19990 (regOne!19990 r!13156)))) b!3165702))

(declare-fun b!3165706 () Bool)

(declare-fun e!1972027 () Bool)

(declare-fun tp!997422 () Bool)

(declare-fun tp!997423 () Bool)

(assert (=> b!3165706 (= e!1972027 (and tp!997422 tp!997423))))

(declare-fun b!3165703 () Bool)

(assert (=> b!3165703 (= e!1972027 tp_is_empty!17041)))

(declare-fun b!3165704 () Bool)

(declare-fun tp!997424 () Bool)

(declare-fun tp!997425 () Bool)

(assert (=> b!3165704 (= e!1972027 (and tp!997424 tp!997425))))

(declare-fun b!3165705 () Bool)

(declare-fun tp!997421 () Bool)

(assert (=> b!3165705 (= e!1972027 tp!997421)))

(assert (=> b!3165448 (= tp!997274 e!1972027)))

(assert (= (and b!3165448 ((_ is ElementMatch!9739) (reg!10068 (regOne!19990 r!13156)))) b!3165703))

(assert (= (and b!3165448 ((_ is Concat!15060) (reg!10068 (regOne!19990 r!13156)))) b!3165704))

(assert (= (and b!3165448 ((_ is Star!9739) (reg!10068 (regOne!19990 r!13156)))) b!3165705))

(assert (= (and b!3165448 ((_ is Union!9739) (reg!10068 (regOne!19990 r!13156)))) b!3165706))

(declare-fun b!3165710 () Bool)

(declare-fun e!1972028 () Bool)

(declare-fun tp!997427 () Bool)

(declare-fun tp!997428 () Bool)

(assert (=> b!3165710 (= e!1972028 (and tp!997427 tp!997428))))

(declare-fun b!3165707 () Bool)

(assert (=> b!3165707 (= e!1972028 tp_is_empty!17041)))

(declare-fun b!3165708 () Bool)

(declare-fun tp!997429 () Bool)

(declare-fun tp!997430 () Bool)

(assert (=> b!3165708 (= e!1972028 (and tp!997429 tp!997430))))

(declare-fun b!3165709 () Bool)

(declare-fun tp!997426 () Bool)

(assert (=> b!3165709 (= e!1972028 tp!997426)))

(assert (=> b!3165457 (= tp!997285 e!1972028)))

(assert (= (and b!3165457 ((_ is ElementMatch!9739) (regOne!19991 (reg!10068 r!13156)))) b!3165707))

(assert (= (and b!3165457 ((_ is Concat!15060) (regOne!19991 (reg!10068 r!13156)))) b!3165708))

(assert (= (and b!3165457 ((_ is Star!9739) (regOne!19991 (reg!10068 r!13156)))) b!3165709))

(assert (= (and b!3165457 ((_ is Union!9739) (regOne!19991 (reg!10068 r!13156)))) b!3165710))

(declare-fun b!3165714 () Bool)

(declare-fun e!1972029 () Bool)

(declare-fun tp!997432 () Bool)

(declare-fun tp!997433 () Bool)

(assert (=> b!3165714 (= e!1972029 (and tp!997432 tp!997433))))

(declare-fun b!3165711 () Bool)

(assert (=> b!3165711 (= e!1972029 tp_is_empty!17041)))

(declare-fun b!3165712 () Bool)

(declare-fun tp!997434 () Bool)

(declare-fun tp!997435 () Bool)

(assert (=> b!3165712 (= e!1972029 (and tp!997434 tp!997435))))

(declare-fun b!3165713 () Bool)

(declare-fun tp!997431 () Bool)

(assert (=> b!3165713 (= e!1972029 tp!997431)))

(assert (=> b!3165457 (= tp!997286 e!1972029)))

(assert (= (and b!3165457 ((_ is ElementMatch!9739) (regTwo!19991 (reg!10068 r!13156)))) b!3165711))

(assert (= (and b!3165457 ((_ is Concat!15060) (regTwo!19991 (reg!10068 r!13156)))) b!3165712))

(assert (= (and b!3165457 ((_ is Star!9739) (regTwo!19991 (reg!10068 r!13156)))) b!3165713))

(assert (= (and b!3165457 ((_ is Union!9739) (regTwo!19991 (reg!10068 r!13156)))) b!3165714))

(declare-fun b!3165718 () Bool)

(declare-fun e!1972030 () Bool)

(declare-fun tp!997437 () Bool)

(declare-fun tp!997438 () Bool)

(assert (=> b!3165718 (= e!1972030 (and tp!997437 tp!997438))))

(declare-fun b!3165715 () Bool)

(assert (=> b!3165715 (= e!1972030 tp_is_empty!17041)))

(declare-fun b!3165716 () Bool)

(declare-fun tp!997439 () Bool)

(declare-fun tp!997440 () Bool)

(assert (=> b!3165716 (= e!1972030 (and tp!997439 tp!997440))))

(declare-fun b!3165717 () Bool)

(declare-fun tp!997436 () Bool)

(assert (=> b!3165717 (= e!1972030 tp!997436)))

(assert (=> b!3165460 (= tp!997289 e!1972030)))

(assert (= (and b!3165460 ((_ is ElementMatch!9739) (reg!10068 (regOne!19991 r!13156)))) b!3165715))

(assert (= (and b!3165460 ((_ is Concat!15060) (reg!10068 (regOne!19991 r!13156)))) b!3165716))

(assert (= (and b!3165460 ((_ is Star!9739) (reg!10068 (regOne!19991 r!13156)))) b!3165717))

(assert (= (and b!3165460 ((_ is Union!9739) (reg!10068 (regOne!19991 r!13156)))) b!3165718))

(declare-fun b!3165722 () Bool)

(declare-fun e!1972031 () Bool)

(declare-fun tp!997442 () Bool)

(declare-fun tp!997443 () Bool)

(assert (=> b!3165722 (= e!1972031 (and tp!997442 tp!997443))))

(declare-fun b!3165719 () Bool)

(assert (=> b!3165719 (= e!1972031 tp_is_empty!17041)))

(declare-fun b!3165720 () Bool)

(declare-fun tp!997444 () Bool)

(declare-fun tp!997445 () Bool)

(assert (=> b!3165720 (= e!1972031 (and tp!997444 tp!997445))))

(declare-fun b!3165721 () Bool)

(declare-fun tp!997441 () Bool)

(assert (=> b!3165721 (= e!1972031 tp!997441)))

(assert (=> b!3165470 (= tp!997305 e!1972031)))

(assert (= (and b!3165470 ((_ is ElementMatch!9739) (_1!20398 (_1!20399 (h!40867 mapDefault!18864))))) b!3165719))

(assert (= (and b!3165470 ((_ is Concat!15060) (_1!20398 (_1!20399 (h!40867 mapDefault!18864))))) b!3165720))

(assert (= (and b!3165470 ((_ is Star!9739) (_1!20398 (_1!20399 (h!40867 mapDefault!18864))))) b!3165721))

(assert (= (and b!3165470 ((_ is Union!9739) (_1!20398 (_1!20399 (h!40867 mapDefault!18864))))) b!3165722))

(declare-fun b!3165726 () Bool)

(declare-fun e!1972032 () Bool)

(declare-fun tp!997447 () Bool)

(declare-fun tp!997448 () Bool)

(assert (=> b!3165726 (= e!1972032 (and tp!997447 tp!997448))))

(declare-fun b!3165723 () Bool)

(assert (=> b!3165723 (= e!1972032 tp_is_empty!17041)))

(declare-fun b!3165724 () Bool)

(declare-fun tp!997449 () Bool)

(declare-fun tp!997450 () Bool)

(assert (=> b!3165724 (= e!1972032 (and tp!997449 tp!997450))))

(declare-fun b!3165725 () Bool)

(declare-fun tp!997446 () Bool)

(assert (=> b!3165725 (= e!1972032 tp!997446)))

(assert (=> b!3165470 (= tp!997306 e!1972032)))

(assert (= (and b!3165470 ((_ is ElementMatch!9739) (_2!20399 (h!40867 mapDefault!18864)))) b!3165723))

(assert (= (and b!3165470 ((_ is Concat!15060) (_2!20399 (h!40867 mapDefault!18864)))) b!3165724))

(assert (= (and b!3165470 ((_ is Star!9739) (_2!20399 (h!40867 mapDefault!18864)))) b!3165725))

(assert (= (and b!3165470 ((_ is Union!9739) (_2!20399 (h!40867 mapDefault!18864)))) b!3165726))

(declare-fun tp!997451 () Bool)

(declare-fun tp!997453 () Bool)

(declare-fun b!3165727 () Bool)

(declare-fun e!1972033 () Bool)

(declare-fun tp!997452 () Bool)

(assert (=> b!3165727 (= e!1972033 (and tp!997451 tp_is_empty!17041 tp!997452 tp!997453))))

(assert (=> b!3165470 (= tp!997307 e!1972033)))

(assert (= (and b!3165470 ((_ is Cons!35447) (t!234644 mapDefault!18864))) b!3165727))

(declare-fun b!3165731 () Bool)

(declare-fun e!1972034 () Bool)

(declare-fun tp!997455 () Bool)

(declare-fun tp!997456 () Bool)

(assert (=> b!3165731 (= e!1972034 (and tp!997455 tp!997456))))

(declare-fun b!3165728 () Bool)

(assert (=> b!3165728 (= e!1972034 tp_is_empty!17041)))

(declare-fun b!3165729 () Bool)

(declare-fun tp!997457 () Bool)

(declare-fun tp!997458 () Bool)

(assert (=> b!3165729 (= e!1972034 (and tp!997457 tp!997458))))

(declare-fun b!3165730 () Bool)

(declare-fun tp!997454 () Bool)

(assert (=> b!3165730 (= e!1972034 tp!997454)))

(assert (=> b!3165455 (= tp!997287 e!1972034)))

(assert (= (and b!3165455 ((_ is ElementMatch!9739) (regOne!19990 (reg!10068 r!13156)))) b!3165728))

(assert (= (and b!3165455 ((_ is Concat!15060) (regOne!19990 (reg!10068 r!13156)))) b!3165729))

(assert (= (and b!3165455 ((_ is Star!9739) (regOne!19990 (reg!10068 r!13156)))) b!3165730))

(assert (= (and b!3165455 ((_ is Union!9739) (regOne!19990 (reg!10068 r!13156)))) b!3165731))

(declare-fun b!3165735 () Bool)

(declare-fun e!1972035 () Bool)

(declare-fun tp!997460 () Bool)

(declare-fun tp!997461 () Bool)

(assert (=> b!3165735 (= e!1972035 (and tp!997460 tp!997461))))

(declare-fun b!3165732 () Bool)

(assert (=> b!3165732 (= e!1972035 tp_is_empty!17041)))

(declare-fun b!3165733 () Bool)

(declare-fun tp!997462 () Bool)

(declare-fun tp!997463 () Bool)

(assert (=> b!3165733 (= e!1972035 (and tp!997462 tp!997463))))

(declare-fun b!3165734 () Bool)

(declare-fun tp!997459 () Bool)

(assert (=> b!3165734 (= e!1972035 tp!997459)))

(assert (=> b!3165455 (= tp!997288 e!1972035)))

(assert (= (and b!3165455 ((_ is ElementMatch!9739) (regTwo!19990 (reg!10068 r!13156)))) b!3165732))

(assert (= (and b!3165455 ((_ is Concat!15060) (regTwo!19990 (reg!10068 r!13156)))) b!3165733))

(assert (= (and b!3165455 ((_ is Star!9739) (regTwo!19990 (reg!10068 r!13156)))) b!3165734))

(assert (= (and b!3165455 ((_ is Union!9739) (regTwo!19990 (reg!10068 r!13156)))) b!3165735))

(declare-fun b!3165739 () Bool)

(declare-fun e!1972036 () Bool)

(declare-fun tp!997465 () Bool)

(declare-fun tp!997466 () Bool)

(assert (=> b!3165739 (= e!1972036 (and tp!997465 tp!997466))))

(declare-fun b!3165736 () Bool)

(assert (=> b!3165736 (= e!1972036 tp_is_empty!17041)))

(declare-fun b!3165737 () Bool)

(declare-fun tp!997467 () Bool)

(declare-fun tp!997468 () Bool)

(assert (=> b!3165737 (= e!1972036 (and tp!997467 tp!997468))))

(declare-fun b!3165738 () Bool)

(declare-fun tp!997464 () Bool)

(assert (=> b!3165738 (= e!1972036 tp!997464)))

(assert (=> b!3165456 (= tp!997284 e!1972036)))

(assert (= (and b!3165456 ((_ is ElementMatch!9739) (reg!10068 (reg!10068 r!13156)))) b!3165736))

(assert (= (and b!3165456 ((_ is Concat!15060) (reg!10068 (reg!10068 r!13156)))) b!3165737))

(assert (= (and b!3165456 ((_ is Star!9739) (reg!10068 (reg!10068 r!13156)))) b!3165738))

(assert (= (and b!3165456 ((_ is Union!9739) (reg!10068 (reg!10068 r!13156)))) b!3165739))

(declare-fun b!3165743 () Bool)

(declare-fun e!1972037 () Bool)

(declare-fun tp!997470 () Bool)

(declare-fun tp!997471 () Bool)

(assert (=> b!3165743 (= e!1972037 (and tp!997470 tp!997471))))

(declare-fun b!3165740 () Bool)

(assert (=> b!3165740 (= e!1972037 tp_is_empty!17041)))

(declare-fun b!3165741 () Bool)

(declare-fun tp!997472 () Bool)

(declare-fun tp!997473 () Bool)

(assert (=> b!3165741 (= e!1972037 (and tp!997472 tp!997473))))

(declare-fun b!3165742 () Bool)

(declare-fun tp!997469 () Bool)

(assert (=> b!3165742 (= e!1972037 tp!997469)))

(assert (=> b!3165480 (= tp!997332 e!1972037)))

(assert (= (and b!3165480 ((_ is ElementMatch!9739) (_1!20398 (_1!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165740))

(assert (= (and b!3165480 ((_ is Concat!15060) (_1!20398 (_1!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165741))

(assert (= (and b!3165480 ((_ is Star!9739) (_1!20398 (_1!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165742))

(assert (= (and b!3165480 ((_ is Union!9739) (_1!20398 (_1!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165743))

(declare-fun b!3165747 () Bool)

(declare-fun e!1972038 () Bool)

(declare-fun tp!997475 () Bool)

(declare-fun tp!997476 () Bool)

(assert (=> b!3165747 (= e!1972038 (and tp!997475 tp!997476))))

(declare-fun b!3165744 () Bool)

(assert (=> b!3165744 (= e!1972038 tp_is_empty!17041)))

(declare-fun b!3165745 () Bool)

(declare-fun tp!997477 () Bool)

(declare-fun tp!997478 () Bool)

(assert (=> b!3165745 (= e!1972038 (and tp!997477 tp!997478))))

(declare-fun b!3165746 () Bool)

(declare-fun tp!997474 () Bool)

(assert (=> b!3165746 (= e!1972038 tp!997474)))

(assert (=> b!3165480 (= tp!997333 e!1972038)))

(assert (= (and b!3165480 ((_ is ElementMatch!9739) (_2!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165744))

(assert (= (and b!3165480 ((_ is Concat!15060) (_2!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165745))

(assert (= (and b!3165480 ((_ is Star!9739) (_2!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165746))

(assert (= (and b!3165480 ((_ is Union!9739) (_2!20399 (h!40867 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165747))

(declare-fun b!3165748 () Bool)

(declare-fun tp!997480 () Bool)

(declare-fun e!1972039 () Bool)

(declare-fun tp!997479 () Bool)

(declare-fun tp!997481 () Bool)

(assert (=> b!3165748 (= e!1972039 (and tp!997479 tp_is_empty!17041 tp!997480 tp!997481))))

(assert (=> b!3165480 (= tp!997334 e!1972039)))

(assert (= (and b!3165480 ((_ is Cons!35447) (t!234644 (zeroValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))) b!3165748))

(declare-fun b!3165752 () Bool)

(declare-fun e!1972040 () Bool)

(declare-fun tp!997483 () Bool)

(declare-fun tp!997484 () Bool)

(assert (=> b!3165752 (= e!1972040 (and tp!997483 tp!997484))))

(declare-fun b!3165749 () Bool)

(assert (=> b!3165749 (= e!1972040 tp_is_empty!17041)))

(declare-fun b!3165750 () Bool)

(declare-fun tp!997485 () Bool)

(declare-fun tp!997486 () Bool)

(assert (=> b!3165750 (= e!1972040 (and tp!997485 tp!997486))))

(declare-fun b!3165751 () Bool)

(declare-fun tp!997482 () Bool)

(assert (=> b!3165751 (= e!1972040 tp!997482)))

(assert (=> b!3165451 (= tp!997282 e!1972040)))

(assert (= (and b!3165451 ((_ is ElementMatch!9739) (regOne!19990 (regTwo!19990 r!13156)))) b!3165749))

(assert (= (and b!3165451 ((_ is Concat!15060) (regOne!19990 (regTwo!19990 r!13156)))) b!3165750))

(assert (= (and b!3165451 ((_ is Star!9739) (regOne!19990 (regTwo!19990 r!13156)))) b!3165751))

(assert (= (and b!3165451 ((_ is Union!9739) (regOne!19990 (regTwo!19990 r!13156)))) b!3165752))

(declare-fun b!3165756 () Bool)

(declare-fun e!1972041 () Bool)

(declare-fun tp!997488 () Bool)

(declare-fun tp!997489 () Bool)

(assert (=> b!3165756 (= e!1972041 (and tp!997488 tp!997489))))

(declare-fun b!3165753 () Bool)

(assert (=> b!3165753 (= e!1972041 tp_is_empty!17041)))

(declare-fun b!3165754 () Bool)

(declare-fun tp!997490 () Bool)

(declare-fun tp!997491 () Bool)

(assert (=> b!3165754 (= e!1972041 (and tp!997490 tp!997491))))

(declare-fun b!3165755 () Bool)

(declare-fun tp!997487 () Bool)

(assert (=> b!3165755 (= e!1972041 tp!997487)))

(assert (=> b!3165451 (= tp!997283 e!1972041)))

(assert (= (and b!3165451 ((_ is ElementMatch!9739) (regTwo!19990 (regTwo!19990 r!13156)))) b!3165753))

(assert (= (and b!3165451 ((_ is Concat!15060) (regTwo!19990 (regTwo!19990 r!13156)))) b!3165754))

(assert (= (and b!3165451 ((_ is Star!9739) (regTwo!19990 (regTwo!19990 r!13156)))) b!3165755))

(assert (= (and b!3165451 ((_ is Union!9739) (regTwo!19990 (regTwo!19990 r!13156)))) b!3165756))

(declare-fun b!3165760 () Bool)

(declare-fun e!1972042 () Bool)

(declare-fun tp!997493 () Bool)

(declare-fun tp!997494 () Bool)

(assert (=> b!3165760 (= e!1972042 (and tp!997493 tp!997494))))

(declare-fun b!3165757 () Bool)

(assert (=> b!3165757 (= e!1972042 tp_is_empty!17041)))

(declare-fun b!3165758 () Bool)

(declare-fun tp!997495 () Bool)

(declare-fun tp!997496 () Bool)

(assert (=> b!3165758 (= e!1972042 (and tp!997495 tp!997496))))

(declare-fun b!3165759 () Bool)

(declare-fun tp!997492 () Bool)

(assert (=> b!3165759 (= e!1972042 tp!997492)))

(assert (=> b!3165465 (= tp!997295 e!1972042)))

(assert (= (and b!3165465 ((_ is ElementMatch!9739) (regOne!19991 (regTwo!19991 r!13156)))) b!3165757))

(assert (= (and b!3165465 ((_ is Concat!15060) (regOne!19991 (regTwo!19991 r!13156)))) b!3165758))

(assert (= (and b!3165465 ((_ is Star!9739) (regOne!19991 (regTwo!19991 r!13156)))) b!3165759))

(assert (= (and b!3165465 ((_ is Union!9739) (regOne!19991 (regTwo!19991 r!13156)))) b!3165760))

(declare-fun b!3165764 () Bool)

(declare-fun e!1972043 () Bool)

(declare-fun tp!997498 () Bool)

(declare-fun tp!997499 () Bool)

(assert (=> b!3165764 (= e!1972043 (and tp!997498 tp!997499))))

(declare-fun b!3165761 () Bool)

(assert (=> b!3165761 (= e!1972043 tp_is_empty!17041)))

(declare-fun b!3165762 () Bool)

(declare-fun tp!997500 () Bool)

(declare-fun tp!997501 () Bool)

(assert (=> b!3165762 (= e!1972043 (and tp!997500 tp!997501))))

(declare-fun b!3165763 () Bool)

(declare-fun tp!997497 () Bool)

(assert (=> b!3165763 (= e!1972043 tp!997497)))

(assert (=> b!3165465 (= tp!997296 e!1972043)))

(assert (= (and b!3165465 ((_ is ElementMatch!9739) (regTwo!19991 (regTwo!19991 r!13156)))) b!3165761))

(assert (= (and b!3165465 ((_ is Concat!15060) (regTwo!19991 (regTwo!19991 r!13156)))) b!3165762))

(assert (= (and b!3165465 ((_ is Star!9739) (regTwo!19991 (regTwo!19991 r!13156)))) b!3165763))

(assert (= (and b!3165465 ((_ is Union!9739) (regTwo!19991 (regTwo!19991 r!13156)))) b!3165764))

(declare-fun b!3165768 () Bool)

(declare-fun e!1972044 () Bool)

(declare-fun tp!997503 () Bool)

(declare-fun tp!997504 () Bool)

(assert (=> b!3165768 (= e!1972044 (and tp!997503 tp!997504))))

(declare-fun b!3165765 () Bool)

(assert (=> b!3165765 (= e!1972044 tp_is_empty!17041)))

(declare-fun b!3165766 () Bool)

(declare-fun tp!997505 () Bool)

(declare-fun tp!997506 () Bool)

(assert (=> b!3165766 (= e!1972044 (and tp!997505 tp!997506))))

(declare-fun b!3165767 () Bool)

(declare-fun tp!997502 () Bool)

(assert (=> b!3165767 (= e!1972044 tp!997502)))

(assert (=> b!3165453 (= tp!997280 e!1972044)))

(assert (= (and b!3165453 ((_ is ElementMatch!9739) (regOne!19991 (regTwo!19990 r!13156)))) b!3165765))

(assert (= (and b!3165453 ((_ is Concat!15060) (regOne!19991 (regTwo!19990 r!13156)))) b!3165766))

(assert (= (and b!3165453 ((_ is Star!9739) (regOne!19991 (regTwo!19990 r!13156)))) b!3165767))

(assert (= (and b!3165453 ((_ is Union!9739) (regOne!19991 (regTwo!19990 r!13156)))) b!3165768))

(declare-fun b!3165772 () Bool)

(declare-fun e!1972045 () Bool)

(declare-fun tp!997508 () Bool)

(declare-fun tp!997509 () Bool)

(assert (=> b!3165772 (= e!1972045 (and tp!997508 tp!997509))))

(declare-fun b!3165769 () Bool)

(assert (=> b!3165769 (= e!1972045 tp_is_empty!17041)))

(declare-fun b!3165770 () Bool)

(declare-fun tp!997510 () Bool)

(declare-fun tp!997511 () Bool)

(assert (=> b!3165770 (= e!1972045 (and tp!997510 tp!997511))))

(declare-fun b!3165771 () Bool)

(declare-fun tp!997507 () Bool)

(assert (=> b!3165771 (= e!1972045 tp!997507)))

(assert (=> b!3165453 (= tp!997281 e!1972045)))

(assert (= (and b!3165453 ((_ is ElementMatch!9739) (regTwo!19991 (regTwo!19990 r!13156)))) b!3165769))

(assert (= (and b!3165453 ((_ is Concat!15060) (regTwo!19991 (regTwo!19990 r!13156)))) b!3165770))

(assert (= (and b!3165453 ((_ is Star!9739) (regTwo!19991 (regTwo!19990 r!13156)))) b!3165771))

(assert (= (and b!3165453 ((_ is Union!9739) (regTwo!19991 (regTwo!19990 r!13156)))) b!3165772))

(declare-fun b!3165776 () Bool)

(declare-fun e!1972046 () Bool)

(declare-fun tp!997513 () Bool)

(declare-fun tp!997514 () Bool)

(assert (=> b!3165776 (= e!1972046 (and tp!997513 tp!997514))))

(declare-fun b!3165773 () Bool)

(assert (=> b!3165773 (= e!1972046 tp_is_empty!17041)))

(declare-fun b!3165774 () Bool)

(declare-fun tp!997515 () Bool)

(declare-fun tp!997516 () Bool)

(assert (=> b!3165774 (= e!1972046 (and tp!997515 tp!997516))))

(declare-fun b!3165775 () Bool)

(declare-fun tp!997512 () Bool)

(assert (=> b!3165775 (= e!1972046 tp!997512)))

(assert (=> b!3165449 (= tp!997275 e!1972046)))

(assert (= (and b!3165449 ((_ is ElementMatch!9739) (regOne!19991 (regOne!19990 r!13156)))) b!3165773))

(assert (= (and b!3165449 ((_ is Concat!15060) (regOne!19991 (regOne!19990 r!13156)))) b!3165774))

(assert (= (and b!3165449 ((_ is Star!9739) (regOne!19991 (regOne!19990 r!13156)))) b!3165775))

(assert (= (and b!3165449 ((_ is Union!9739) (regOne!19991 (regOne!19990 r!13156)))) b!3165776))

(declare-fun b!3165780 () Bool)

(declare-fun e!1972047 () Bool)

(declare-fun tp!997518 () Bool)

(declare-fun tp!997519 () Bool)

(assert (=> b!3165780 (= e!1972047 (and tp!997518 tp!997519))))

(declare-fun b!3165777 () Bool)

(assert (=> b!3165777 (= e!1972047 tp_is_empty!17041)))

(declare-fun b!3165778 () Bool)

(declare-fun tp!997520 () Bool)

(declare-fun tp!997521 () Bool)

(assert (=> b!3165778 (= e!1972047 (and tp!997520 tp!997521))))

(declare-fun b!3165779 () Bool)

(declare-fun tp!997517 () Bool)

(assert (=> b!3165779 (= e!1972047 tp!997517)))

(assert (=> b!3165449 (= tp!997276 e!1972047)))

(assert (= (and b!3165449 ((_ is ElementMatch!9739) (regTwo!19991 (regOne!19990 r!13156)))) b!3165777))

(assert (= (and b!3165449 ((_ is Concat!15060) (regTwo!19991 (regOne!19990 r!13156)))) b!3165778))

(assert (= (and b!3165449 ((_ is Star!9739) (regTwo!19991 (regOne!19990 r!13156)))) b!3165779))

(assert (= (and b!3165449 ((_ is Union!9739) (regTwo!19991 (regOne!19990 r!13156)))) b!3165780))

(declare-fun b!3165784 () Bool)

(declare-fun e!1972048 () Bool)

(declare-fun tp!997523 () Bool)

(declare-fun tp!997524 () Bool)

(assert (=> b!3165784 (= e!1972048 (and tp!997523 tp!997524))))

(declare-fun b!3165781 () Bool)

(assert (=> b!3165781 (= e!1972048 tp_is_empty!17041)))

(declare-fun b!3165782 () Bool)

(declare-fun tp!997525 () Bool)

(declare-fun tp!997526 () Bool)

(assert (=> b!3165782 (= e!1972048 (and tp!997525 tp!997526))))

(declare-fun b!3165783 () Bool)

(declare-fun tp!997522 () Bool)

(assert (=> b!3165783 (= e!1972048 tp!997522)))

(assert (=> b!3165481 (= tp!997335 e!1972048)))

(assert (= (and b!3165481 ((_ is ElementMatch!9739) (_1!20398 (_1!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165781))

(assert (= (and b!3165481 ((_ is Concat!15060) (_1!20398 (_1!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165782))

(assert (= (and b!3165481 ((_ is Star!9739) (_1!20398 (_1!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165783))

(assert (= (and b!3165481 ((_ is Union!9739) (_1!20398 (_1!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))))) b!3165784))

(declare-fun b!3165788 () Bool)

(declare-fun e!1972049 () Bool)

(declare-fun tp!997528 () Bool)

(declare-fun tp!997529 () Bool)

(assert (=> b!3165788 (= e!1972049 (and tp!997528 tp!997529))))

(declare-fun b!3165785 () Bool)

(assert (=> b!3165785 (= e!1972049 tp_is_empty!17041)))

(declare-fun b!3165786 () Bool)

(declare-fun tp!997530 () Bool)

(declare-fun tp!997531 () Bool)

(assert (=> b!3165786 (= e!1972049 (and tp!997530 tp!997531))))

(declare-fun b!3165787 () Bool)

(declare-fun tp!997527 () Bool)

(assert (=> b!3165787 (= e!1972049 tp!997527)))

(assert (=> b!3165481 (= tp!997336 e!1972049)))

(assert (= (and b!3165481 ((_ is ElementMatch!9739) (_2!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165785))

(assert (= (and b!3165481 ((_ is Concat!15060) (_2!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165786))

(assert (= (and b!3165481 ((_ is Star!9739) (_2!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165787))

(assert (= (and b!3165481 ((_ is Union!9739) (_2!20399 (h!40867 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347)))))))))) b!3165788))

(declare-fun tp!997532 () Bool)

(declare-fun b!3165789 () Bool)

(declare-fun tp!997534 () Bool)

(declare-fun tp!997533 () Bool)

(declare-fun e!1972050 () Bool)

(assert (=> b!3165789 (= e!1972050 (and tp!997532 tp_is_empty!17041 tp!997533 tp!997534))))

(assert (=> b!3165481 (= tp!997337 e!1972050)))

(assert (= (and b!3165481 ((_ is Cons!35447) (t!234644 (minValue!4419 (v!35130 (underlying!8549 (v!35131 (underlying!8550 (cache!4209 cache!347))))))))) b!3165789))

(declare-fun b!3165793 () Bool)

(declare-fun e!1972051 () Bool)

(declare-fun tp!997536 () Bool)

(declare-fun tp!997537 () Bool)

(assert (=> b!3165793 (= e!1972051 (and tp!997536 tp!997537))))

(declare-fun b!3165790 () Bool)

(assert (=> b!3165790 (= e!1972051 tp_is_empty!17041)))

(declare-fun b!3165791 () Bool)

(declare-fun tp!997538 () Bool)

(declare-fun tp!997539 () Bool)

(assert (=> b!3165791 (= e!1972051 (and tp!997538 tp!997539))))

(declare-fun b!3165792 () Bool)

(declare-fun tp!997535 () Bool)

(assert (=> b!3165792 (= e!1972051 tp!997535)))

(assert (=> b!3165479 (= tp!997329 e!1972051)))

(assert (= (and b!3165479 ((_ is ElementMatch!9739) (_1!20398 (_1!20399 (h!40867 mapValue!18864))))) b!3165790))

(assert (= (and b!3165479 ((_ is Concat!15060) (_1!20398 (_1!20399 (h!40867 mapValue!18864))))) b!3165791))

(assert (= (and b!3165479 ((_ is Star!9739) (_1!20398 (_1!20399 (h!40867 mapValue!18864))))) b!3165792))

(assert (= (and b!3165479 ((_ is Union!9739) (_1!20398 (_1!20399 (h!40867 mapValue!18864))))) b!3165793))

(declare-fun b!3165797 () Bool)

(declare-fun e!1972052 () Bool)

(declare-fun tp!997541 () Bool)

(declare-fun tp!997542 () Bool)

(assert (=> b!3165797 (= e!1972052 (and tp!997541 tp!997542))))

(declare-fun b!3165794 () Bool)

(assert (=> b!3165794 (= e!1972052 tp_is_empty!17041)))

(declare-fun b!3165795 () Bool)

(declare-fun tp!997543 () Bool)

(declare-fun tp!997544 () Bool)

(assert (=> b!3165795 (= e!1972052 (and tp!997543 tp!997544))))

(declare-fun b!3165796 () Bool)

(declare-fun tp!997540 () Bool)

(assert (=> b!3165796 (= e!1972052 tp!997540)))

(assert (=> b!3165479 (= tp!997330 e!1972052)))

(assert (= (and b!3165479 ((_ is ElementMatch!9739) (_2!20399 (h!40867 mapValue!18864)))) b!3165794))

(assert (= (and b!3165479 ((_ is Concat!15060) (_2!20399 (h!40867 mapValue!18864)))) b!3165795))

(assert (= (and b!3165479 ((_ is Star!9739) (_2!20399 (h!40867 mapValue!18864)))) b!3165796))

(assert (= (and b!3165479 ((_ is Union!9739) (_2!20399 (h!40867 mapValue!18864)))) b!3165797))

(declare-fun e!1972053 () Bool)

(declare-fun b!3165798 () Bool)

(declare-fun tp!997547 () Bool)

(declare-fun tp!997546 () Bool)

(declare-fun tp!997545 () Bool)

(assert (=> b!3165798 (= e!1972053 (and tp!997545 tp_is_empty!17041 tp!997546 tp!997547))))

(assert (=> b!3165479 (= tp!997331 e!1972053)))

(assert (= (and b!3165479 ((_ is Cons!35447) (t!234644 mapValue!18864))) b!3165798))

(declare-fun b_lambda!86415 () Bool)

(assert (= b_lambda!86411 (or (and b!3165344 b_free!83123) b_lambda!86415)))

(declare-fun b_lambda!86417 () Bool)

(assert (= b_lambda!86413 (or (and b!3165344 b_free!83123) b_lambda!86417)))

(check-sat (not b!3165738) (not b!3165680) (not b!3165766) (not b!3165676) (not b!3165796) (not b!3165756) (not bm!229515) (not b!3165747) (not d!868805) (not b!3165729) (not bm!229482) (not b!3165492) (not b!3165722) (not b!3165657) (not b!3165708) (not b!3165673) (not b!3165774) (not b!3165724) (not b!3165791) (not bm!229472) (not b!3165768) (not bm!229476) (not tb!155097) (not b!3165721) (not bm!229513) (not b!3165692) (not b!3165677) (not b!3165734) (not b!3165742) (not b!3165752) (not d!868819) (not b!3165653) (not b!3165779) (not b!3165661) tp_is_empty!17041 (not b!3165527) (not b!3165675) (not b!3165694) (not b!3165704) (not b!3165667) b_and!209379 (not b!3165726) (not b!3165741) (not b!3165526) (not b!3165690) (not b_next!83825) (not b!3165755) (not b!3165716) (not b_lambda!86417) (not b!3165776) (not b!3165669) (not b!3165682) (not b!3165731) (not b!3165645) (not b!3165743) (not d!868825) (not b!3165528) (not b!3165751) (not b!3165772) (not b!3165780) (not b!3165767) (not b!3165693) b_and!209385 (not b!3165798) (not b!3165654) (not b!3165649) (not b!3165746) (not b!3165612) (not b!3165739) (not d!868823) (not b!3165764) (not b!3165745) (not b!3165795) (not b!3165735) (not b!3165717) (not b!3165560) (not bm!229503) (not b!3165718) (not b!3165644) (not bm!229481) (not b!3165712) (not b!3165793) (not b!3165701) (not b!3165542) (not b!3165792) (not d!868811) (not b!3165670) (not b!3165784) (not bm!229486) (not bm!229500) (not b!3165733) (not b!3165696) (not b!3165607) (not b!3165671) (not b!3165775) (not b!3165709) (not b!3165759) (not b!3165725) (not b!3165783) (not b!3165770) (not b!3165754) (not b!3165782) (not bm!229478) (not mapNonEmpty!18868) (not b!3165658) (not bm!229484) (not b!3165689) (not b!3165730) (not b!3165763) (not b_next!83827) (not bm!229469) (not b!3165748) (not b!3165713) (not b!3165662) (not b!3165559) (not b!3165541) (not b!3165789) (not b!3165571) (not b!3165608) (not b!3165646) (not b!3165660) (not b!3165663) (not b!3165778) (not bm!229501) (not b!3165648) (not b!3165771) (not b_lambda!86415) (not b!3165705) (not b!3165685) (not b!3165697) (not b!3165714) (not b!3165788) (not b!3165797) (not b!3165652) (not bm!229475) (not bm!229504) (not b!3165672) (not bm!229474) (not b!3165609) (not b!3165750) (not b!3165679) (not b!3165727) (not b!3165686) (not d!868807) (not b!3165760) (not b!3165684) (not b!3165688) (not b!3165698) (not bm!229470) (not b!3165666) (not b!3165665) (not b!3165634) (not bm!229499) (not b!3165786) (not b!3165762) (not b!3165720) (not b!3165702) (not b!3165710) (not b!3165706) (not b!3165539) (not b!3165787) (not b!3165737) (not bm!229479) (not b!3165656) (not bm!229502) (not b!3165681) (not b!3165758) (not b!3165700) (not b!3165602) (not b!3165650))
(check-sat b_and!209385 b_and!209379 (not b_next!83825) (not b_next!83827))
