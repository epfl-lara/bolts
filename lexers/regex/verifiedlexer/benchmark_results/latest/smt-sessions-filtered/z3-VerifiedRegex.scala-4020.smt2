; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217674 () Bool)

(assert start!217674)

(declare-fun b!2232714 () Bool)

(declare-fun b_free!64737 () Bool)

(declare-fun b_next!65441 () Bool)

(assert (=> b!2232714 (= b_free!64737 (not b_next!65441))))

(declare-fun tp!700494 () Bool)

(declare-fun b_and!174725 () Bool)

(assert (=> b!2232714 (= tp!700494 b_and!174725)))

(declare-fun b!2232704 () Bool)

(declare-fun b_free!64739 () Bool)

(declare-fun b_next!65443 () Bool)

(assert (=> b!2232704 (= b_free!64739 (not b_next!65443))))

(declare-fun tp!700490 () Bool)

(declare-fun b_and!174727 () Bool)

(assert (=> b!2232704 (= tp!700490 b_and!174727)))

(declare-fun b!2232697 () Bool)

(declare-fun e!1426869 () Bool)

(declare-fun tp!700498 () Bool)

(assert (=> b!2232697 (= e!1426869 tp!700498)))

(declare-fun b!2232698 () Bool)

(declare-fun e!1426874 () Bool)

(declare-fun tp!700499 () Bool)

(declare-fun tp!700492 () Bool)

(assert (=> b!2232698 (= e!1426874 (and tp!700499 tp!700492))))

(declare-fun b!2232699 () Bool)

(declare-fun res!955959 () Bool)

(declare-fun e!1426876 () Bool)

(assert (=> b!2232699 (=> (not res!955959) (not e!1426876))))

(declare-datatypes ((C!13008 0))(
  ( (C!13009 (val!7552 Int)) )
))
(declare-datatypes ((Regex!6431 0))(
  ( (ElementMatch!6431 (c!355987 C!13008)) (Concat!10769 (regOne!13374 Regex!6431) (regTwo!13374 Regex!6431)) (EmptyExpr!6431) (Star!6431 (reg!6760 Regex!6431)) (EmptyLang!6431) (Union!6431 (regOne!13375 Regex!6431) (regTwo!13375 Regex!6431)) )
))
(declare-fun expr!64 () Regex!6431)

(get-info :version)

(assert (=> b!2232699 (= res!955959 (and (not ((_ is Concat!10769) expr!64)) ((_ is Star!6431) expr!64)))))

(declare-fun b!2232700 () Bool)

(declare-fun tp!700495 () Bool)

(assert (=> b!2232700 (= e!1426874 tp!700495)))

(declare-fun b!2232701 () Bool)

(declare-fun e!1426875 () Bool)

(declare-fun e!1426866 () Bool)

(assert (=> b!2232701 (= e!1426875 e!1426866)))

(declare-fun b!2232702 () Bool)

(declare-fun e!1426867 () Bool)

(declare-fun nullable!1773 (Regex!6431) Bool)

(assert (=> b!2232702 (= e!1426867 (not (nullable!1773 (regOne!13374 expr!64))))))

(declare-fun b!2232703 () Bool)

(declare-fun res!955963 () Bool)

(assert (=> b!2232703 (=> (not res!955963) (not e!1426876))))

(declare-fun a!1167 () C!13008)

(assert (=> b!2232703 (= res!955963 (and (or (not ((_ is ElementMatch!6431) expr!64)) (not (= (c!355987 expr!64) a!1167))) (not ((_ is Union!6431) expr!64))))))

(declare-fun e!1426868 () Bool)

(declare-fun e!1426873 () Bool)

(assert (=> b!2232704 (= e!1426868 (and e!1426873 tp!700490))))

(declare-fun b!2232705 () Bool)

(declare-fun res!955960 () Bool)

(assert (=> b!2232705 (=> (not res!955960) (not e!1426876))))

(declare-datatypes ((List!26334 0))(
  ( (Nil!26240) (Cons!26240 (h!31641 Regex!6431) (t!199753 List!26334)) )
))
(declare-datatypes ((Context!3958 0))(
  ( (Context!3959 (exprs!2479 List!26334)) )
))
(declare-datatypes ((array!10634 0))(
  ( (array!10635 (arr!4725 (Array (_ BitVec 32) (_ BitVec 64))) (size!20506 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3934 0))(
  ( (tuple3!3935 (_1!15234 Regex!6431) (_2!15234 Context!3958) (_3!2437 C!13008)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25594 0))(
  ( (tuple2!25595 (_1!15235 tuple3!3934) (_2!15235 (InoxSet Context!3958))) )
))
(declare-datatypes ((List!26335 0))(
  ( (Nil!26241) (Cons!26241 (h!31642 tuple2!25594) (t!199754 List!26335)) )
))
(declare-datatypes ((array!10636 0))(
  ( (array!10637 (arr!4726 (Array (_ BitVec 32) List!26335)) (size!20507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6138 0))(
  ( (LongMapFixedSize!6139 (defaultEntry!3434 Int) (mask!7638 (_ BitVec 32)) (extraKeys!3317 (_ BitVec 32)) (zeroValue!3327 List!26335) (minValue!3327 List!26335) (_size!6185 (_ BitVec 32)) (_keys!3366 array!10634) (_values!3349 array!10636) (_vacant!3130 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12093 0))(
  ( (Cell!12094 (v!29839 LongMapFixedSize!6138)) )
))
(declare-datatypes ((MutLongMap!3069 0))(
  ( (LongMap!3069 (underlying!6339 Cell!12093)) (MutLongMapExt!3068 (__x!17433 Int)) )
))
(declare-datatypes ((Cell!12095 0))(
  ( (Cell!12096 (v!29840 MutLongMap!3069)) )
))
(declare-datatypes ((Hashable!2979 0))(
  ( (HashableExt!2978 (__x!17434 Int)) )
))
(declare-datatypes ((MutableMap!2979 0))(
  ( (MutableMapExt!2978 (__x!17435 Int)) (HashMap!2979 (underlying!6340 Cell!12095) (hashF!4902 Hashable!2979) (_size!6186 (_ BitVec 32)) (defaultValue!3141 Int)) )
))
(declare-datatypes ((CacheDown!2004 0))(
  ( (CacheDown!2005 (cache!3360 MutableMap!2979)) )
))
(declare-fun cacheDown!839 () CacheDown!2004)

(declare-fun context!86 () Context!3958)

(declare-datatypes ((Option!5112 0))(
  ( (None!5111) (Some!5111 (v!29841 (InoxSet Context!3958))) )
))
(declare-fun get!7933 (CacheDown!2004 Regex!6431 Context!3958 C!13008) Option!5112)

(assert (=> b!2232705 (= res!955960 (not ((_ is Some!5111) (get!7933 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2232706 () Bool)

(declare-fun e!1426871 () Bool)

(assert (=> b!2232706 (= e!1426871 e!1426868)))

(declare-fun b!2232707 () Bool)

(declare-fun tp!700496 () Bool)

(declare-fun tp!700501 () Bool)

(assert (=> b!2232707 (= e!1426874 (and tp!700496 tp!700501))))

(declare-fun mapIsEmpty!14444 () Bool)

(declare-fun mapRes!14444 () Bool)

(assert (=> mapIsEmpty!14444 mapRes!14444))

(declare-fun b!2232708 () Bool)

(declare-fun res!955958 () Bool)

(assert (=> b!2232708 (=> (not res!955958) (not e!1426876))))

(assert (=> b!2232708 (= res!955958 e!1426867)))

(declare-fun res!955961 () Bool)

(assert (=> b!2232708 (=> res!955961 e!1426867)))

(assert (=> b!2232708 (= res!955961 (not ((_ is Concat!10769) expr!64)))))

(declare-fun b!2232709 () Bool)

(declare-fun e!1426877 () Bool)

(assert (=> b!2232709 (= e!1426866 e!1426877)))

(declare-fun b!2232710 () Bool)

(declare-fun e!1426872 () Bool)

(declare-fun tp!700491 () Bool)

(assert (=> b!2232710 (= e!1426872 (and tp!700491 mapRes!14444))))

(declare-fun condMapEmpty!14444 () Bool)

(declare-fun mapDefault!14444 () List!26335)

(assert (=> b!2232710 (= condMapEmpty!14444 (= (arr!4726 (_values!3349 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26335)) mapDefault!14444)))))

(declare-fun res!955962 () Bool)

(assert (=> start!217674 (=> (not res!955962) (not e!1426876))))

(declare-fun validRegex!2402 (Regex!6431) Bool)

(assert (=> start!217674 (= res!955962 (validRegex!2402 expr!64))))

(assert (=> start!217674 e!1426876))

(assert (=> start!217674 e!1426874))

(declare-fun inv!35640 (CacheDown!2004) Bool)

(assert (=> start!217674 (and (inv!35640 cacheDown!839) e!1426871)))

(declare-fun inv!35641 (Context!3958) Bool)

(assert (=> start!217674 (and (inv!35641 context!86) e!1426869)))

(declare-fun tp_is_empty!10087 () Bool)

(assert (=> start!217674 tp_is_empty!10087))

(declare-fun b!2232711 () Bool)

(declare-fun lt!830630 () MutLongMap!3069)

(assert (=> b!2232711 (= e!1426873 (and e!1426875 ((_ is LongMap!3069) lt!830630)))))

(assert (=> b!2232711 (= lt!830630 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))

(declare-fun mapNonEmpty!14444 () Bool)

(declare-fun tp!700502 () Bool)

(declare-fun tp!700493 () Bool)

(assert (=> mapNonEmpty!14444 (= mapRes!14444 (and tp!700502 tp!700493))))

(declare-fun mapValue!14444 () List!26335)

(declare-fun mapRest!14444 () (Array (_ BitVec 32) List!26335))

(declare-fun mapKey!14444 () (_ BitVec 32))

(assert (=> mapNonEmpty!14444 (= (arr!4726 (_values!3349 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) (store mapRest!14444 mapKey!14444 mapValue!14444))))

(declare-fun b!2232712 () Bool)

(assert (=> b!2232712 (= e!1426874 tp_is_empty!10087)))

(declare-fun b!2232713 () Bool)

(declare-fun regexDepth!71 (Regex!6431) Int)

(assert (=> b!2232713 (= e!1426876 (>= (regexDepth!71 (reg!6760 expr!64)) (regexDepth!71 expr!64)))))

(declare-fun tp!700500 () Bool)

(declare-fun tp!700497 () Bool)

(declare-fun array_inv!3391 (array!10634) Bool)

(declare-fun array_inv!3392 (array!10636) Bool)

(assert (=> b!2232714 (= e!1426877 (and tp!700494 tp!700497 tp!700500 (array_inv!3391 (_keys!3366 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) (array_inv!3392 (_values!3349 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) e!1426872))))

(assert (= (and start!217674 res!955962) b!2232705))

(assert (= (and b!2232705 res!955960) b!2232703))

(assert (= (and b!2232703 res!955963) b!2232708))

(assert (= (and b!2232708 (not res!955961)) b!2232702))

(assert (= (and b!2232708 res!955958) b!2232699))

(assert (= (and b!2232699 res!955959) b!2232713))

(assert (= (and start!217674 ((_ is ElementMatch!6431) expr!64)) b!2232712))

(assert (= (and start!217674 ((_ is Concat!10769) expr!64)) b!2232707))

(assert (= (and start!217674 ((_ is Star!6431) expr!64)) b!2232700))

(assert (= (and start!217674 ((_ is Union!6431) expr!64)) b!2232698))

(assert (= (and b!2232710 condMapEmpty!14444) mapIsEmpty!14444))

(assert (= (and b!2232710 (not condMapEmpty!14444)) mapNonEmpty!14444))

(assert (= b!2232714 b!2232710))

(assert (= b!2232709 b!2232714))

(assert (= b!2232701 b!2232709))

(assert (= (and b!2232711 ((_ is LongMap!3069) (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))) b!2232701))

(assert (= b!2232704 b!2232711))

(assert (= (and b!2232706 ((_ is HashMap!2979) (cache!3360 cacheDown!839))) b!2232704))

(assert (= start!217674 b!2232706))

(assert (= start!217674 b!2232697))

(declare-fun m!2668332 () Bool)

(assert (=> start!217674 m!2668332))

(declare-fun m!2668334 () Bool)

(assert (=> start!217674 m!2668334))

(declare-fun m!2668336 () Bool)

(assert (=> start!217674 m!2668336))

(declare-fun m!2668338 () Bool)

(assert (=> b!2232714 m!2668338))

(declare-fun m!2668340 () Bool)

(assert (=> b!2232714 m!2668340))

(declare-fun m!2668342 () Bool)

(assert (=> b!2232713 m!2668342))

(declare-fun m!2668344 () Bool)

(assert (=> b!2232713 m!2668344))

(declare-fun m!2668346 () Bool)

(assert (=> b!2232702 m!2668346))

(declare-fun m!2668348 () Bool)

(assert (=> b!2232705 m!2668348))

(declare-fun m!2668350 () Bool)

(assert (=> mapNonEmpty!14444 m!2668350))

(check-sat (not b!2232710) (not b!2232714) b_and!174725 (not b!2232697) (not start!217674) (not b!2232702) (not b!2232713) (not b!2232698) (not b!2232705) (not b!2232707) (not b_next!65443) (not b_next!65441) b_and!174727 (not mapNonEmpty!14444) tp_is_empty!10087 (not b!2232700))
(check-sat b_and!174727 b_and!174725 (not b_next!65441) (not b_next!65443))
(get-model)

(declare-fun d!665209 () Bool)

(declare-fun e!1426880 () Bool)

(assert (=> d!665209 e!1426880))

(declare-fun res!955966 () Bool)

(assert (=> d!665209 (=> res!955966 e!1426880)))

(declare-fun lt!830633 () Option!5112)

(declare-fun isEmpty!14900 (Option!5112) Bool)

(assert (=> d!665209 (= res!955966 (isEmpty!14900 lt!830633))))

(declare-fun choose!13131 (CacheDown!2004 Regex!6431 Context!3958 C!13008) Option!5112)

(assert (=> d!665209 (= lt!830633 (choose!13131 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!287 (MutableMap!2979) Bool)

(assert (=> d!665209 (validCacheMapDown!287 (cache!3360 cacheDown!839))))

(assert (=> d!665209 (= (get!7933 cacheDown!839 expr!64 context!86 a!1167) lt!830633)))

(declare-fun b!2232717 () Bool)

(declare-fun get!7934 (Option!5112) (InoxSet Context!3958))

(declare-fun derivationStepZipperDown!50 (Regex!6431 Context!3958 C!13008) (InoxSet Context!3958))

(assert (=> b!2232717 (= e!1426880 (= (get!7934 lt!830633) (derivationStepZipperDown!50 expr!64 context!86 a!1167)))))

(assert (= (and d!665209 (not res!955966)) b!2232717))

(declare-fun m!2668352 () Bool)

(assert (=> d!665209 m!2668352))

(declare-fun m!2668354 () Bool)

(assert (=> d!665209 m!2668354))

(declare-fun m!2668356 () Bool)

(assert (=> d!665209 m!2668356))

(declare-fun m!2668358 () Bool)

(assert (=> b!2232717 m!2668358))

(declare-fun m!2668360 () Bool)

(assert (=> b!2232717 m!2668360))

(assert (=> b!2232705 d!665209))

(declare-fun d!665211 () Bool)

(assert (=> d!665211 (= (array_inv!3391 (_keys!3366 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) (bvsge (size!20506 (_keys!3366 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2232714 d!665211))

(declare-fun d!665213 () Bool)

(assert (=> d!665213 (= (array_inv!3392 (_values!3349 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) (bvsge (size!20507 (_values!3349 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2232714 d!665213))

(declare-fun bm!134092 () Bool)

(declare-fun call!134099 () Bool)

(declare-fun call!134097 () Bool)

(assert (=> bm!134092 (= call!134099 call!134097)))

(declare-fun bm!134093 () Bool)

(declare-fun call!134098 () Bool)

(declare-fun c!355992 () Bool)

(assert (=> bm!134093 (= call!134098 (validRegex!2402 (ite c!355992 (regOne!13375 expr!64) (regOne!13374 expr!64))))))

(declare-fun b!2232736 () Bool)

(declare-fun e!1426896 () Bool)

(assert (=> b!2232736 (= e!1426896 call!134097)))

(declare-fun b!2232737 () Bool)

(declare-fun e!1426898 () Bool)

(assert (=> b!2232737 (= e!1426898 e!1426896)))

(declare-fun res!955977 () Bool)

(assert (=> b!2232737 (= res!955977 (not (nullable!1773 (reg!6760 expr!64))))))

(assert (=> b!2232737 (=> (not res!955977) (not e!1426896))))

(declare-fun b!2232738 () Bool)

(declare-fun res!955980 () Bool)

(declare-fun e!1426900 () Bool)

(assert (=> b!2232738 (=> (not res!955980) (not e!1426900))))

(assert (=> b!2232738 (= res!955980 call!134098)))

(declare-fun e!1426899 () Bool)

(assert (=> b!2232738 (= e!1426899 e!1426900)))

(declare-fun b!2232739 () Bool)

(declare-fun e!1426901 () Bool)

(declare-fun e!1426897 () Bool)

(assert (=> b!2232739 (= e!1426901 e!1426897)))

(declare-fun res!955978 () Bool)

(assert (=> b!2232739 (=> (not res!955978) (not e!1426897))))

(assert (=> b!2232739 (= res!955978 call!134098)))

(declare-fun b!2232740 () Bool)

(declare-fun e!1426895 () Bool)

(assert (=> b!2232740 (= e!1426895 e!1426898)))

(declare-fun c!355993 () Bool)

(assert (=> b!2232740 (= c!355993 ((_ is Star!6431) expr!64))))

(declare-fun b!2232741 () Bool)

(declare-fun res!955981 () Bool)

(assert (=> b!2232741 (=> res!955981 e!1426901)))

(assert (=> b!2232741 (= res!955981 (not ((_ is Concat!10769) expr!64)))))

(assert (=> b!2232741 (= e!1426899 e!1426901)))

(declare-fun b!2232742 () Bool)

(assert (=> b!2232742 (= e!1426897 call!134099)))

(declare-fun d!665215 () Bool)

(declare-fun res!955979 () Bool)

(assert (=> d!665215 (=> res!955979 e!1426895)))

(assert (=> d!665215 (= res!955979 ((_ is ElementMatch!6431) expr!64))))

(assert (=> d!665215 (= (validRegex!2402 expr!64) e!1426895)))

(declare-fun bm!134094 () Bool)

(assert (=> bm!134094 (= call!134097 (validRegex!2402 (ite c!355993 (reg!6760 expr!64) (ite c!355992 (regTwo!13375 expr!64) (regTwo!13374 expr!64)))))))

(declare-fun b!2232743 () Bool)

(assert (=> b!2232743 (= e!1426900 call!134099)))

(declare-fun b!2232744 () Bool)

(assert (=> b!2232744 (= e!1426898 e!1426899)))

(assert (=> b!2232744 (= c!355992 ((_ is Union!6431) expr!64))))

(assert (= (and d!665215 (not res!955979)) b!2232740))

(assert (= (and b!2232740 c!355993) b!2232737))

(assert (= (and b!2232740 (not c!355993)) b!2232744))

(assert (= (and b!2232737 res!955977) b!2232736))

(assert (= (and b!2232744 c!355992) b!2232738))

(assert (= (and b!2232744 (not c!355992)) b!2232741))

(assert (= (and b!2232738 res!955980) b!2232743))

(assert (= (and b!2232741 (not res!955981)) b!2232739))

(assert (= (and b!2232739 res!955978) b!2232742))

(assert (= (or b!2232743 b!2232742) bm!134092))

(assert (= (or b!2232738 b!2232739) bm!134093))

(assert (= (or b!2232736 bm!134092) bm!134094))

(declare-fun m!2668362 () Bool)

(assert (=> bm!134093 m!2668362))

(declare-fun m!2668364 () Bool)

(assert (=> b!2232737 m!2668364))

(declare-fun m!2668366 () Bool)

(assert (=> bm!134094 m!2668366))

(assert (=> start!217674 d!665215))

(declare-fun d!665217 () Bool)

(declare-fun res!955984 () Bool)

(declare-fun e!1426904 () Bool)

(assert (=> d!665217 (=> (not res!955984) (not e!1426904))))

(assert (=> d!665217 (= res!955984 ((_ is HashMap!2979) (cache!3360 cacheDown!839)))))

(assert (=> d!665217 (= (inv!35640 cacheDown!839) e!1426904)))

(declare-fun b!2232747 () Bool)

(assert (=> b!2232747 (= e!1426904 (validCacheMapDown!287 (cache!3360 cacheDown!839)))))

(assert (= (and d!665217 res!955984) b!2232747))

(assert (=> b!2232747 m!2668356))

(assert (=> start!217674 d!665217))

(declare-fun d!665219 () Bool)

(declare-fun lambda!84335 () Int)

(declare-fun forall!5369 (List!26334 Int) Bool)

(assert (=> d!665219 (= (inv!35641 context!86) (forall!5369 (exprs!2479 context!86) lambda!84335))))

(declare-fun bs!454127 () Bool)

(assert (= bs!454127 d!665219))

(declare-fun m!2668368 () Bool)

(assert (=> bs!454127 m!2668368))

(assert (=> start!217674 d!665219))

(declare-fun d!665221 () Bool)

(declare-fun nullableFct!420 (Regex!6431) Bool)

(assert (=> d!665221 (= (nullable!1773 (regOne!13374 expr!64)) (nullableFct!420 (regOne!13374 expr!64)))))

(declare-fun bs!454128 () Bool)

(assert (= bs!454128 d!665221))

(declare-fun m!2668370 () Bool)

(assert (=> bs!454128 m!2668370))

(assert (=> b!2232702 d!665221))

(declare-fun bm!134109 () Bool)

(declare-fun call!134116 () Int)

(declare-fun call!134115 () Int)

(assert (=> bm!134109 (= call!134116 call!134115)))

(declare-fun b!2232782 () Bool)

(declare-fun e!1426929 () Int)

(declare-fun call!134120 () Int)

(assert (=> b!2232782 (= e!1426929 (+ 1 call!134120))))

(declare-fun b!2232783 () Bool)

(declare-fun e!1426930 () Int)

(assert (=> b!2232783 (= e!1426930 e!1426929)))

(declare-fun c!356008 () Bool)

(assert (=> b!2232783 (= c!356008 ((_ is Concat!10769) (reg!6760 expr!64)))))

(declare-fun b!2232784 () Bool)

(declare-fun res!955993 () Bool)

(declare-fun e!1426927 () Bool)

(assert (=> b!2232784 (=> (not res!955993) (not e!1426927))))

(declare-fun lt!830636 () Int)

(assert (=> b!2232784 (= res!955993 (> lt!830636 call!134116))))

(declare-fun e!1426934 () Bool)

(assert (=> b!2232784 (= e!1426934 e!1426927)))

(declare-fun b!2232785 () Bool)

(declare-fun e!1426933 () Bool)

(assert (=> b!2232785 (= e!1426933 e!1426934)))

(declare-fun c!356012 () Bool)

(assert (=> b!2232785 (= c!356012 ((_ is Concat!10769) (reg!6760 expr!64)))))

(declare-fun bm!134110 () Bool)

(declare-fun call!134118 () Int)

(declare-fun call!134119 () Int)

(assert (=> bm!134110 (= call!134118 call!134119)))

(declare-fun bm!134111 () Bool)

(declare-fun c!356014 () Bool)

(declare-fun call!134117 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!134111 (= call!134120 (maxBigInt!0 (ite c!356014 call!134117 call!134118) (ite c!356014 call!134118 call!134117)))))

(declare-fun b!2232786 () Bool)

(declare-fun e!1426926 () Bool)

(assert (=> b!2232786 (= e!1426926 (= lt!830636 1))))

(declare-fun b!2232787 () Bool)

(declare-fun c!356013 () Bool)

(assert (=> b!2232787 (= c!356013 ((_ is Star!6431) (reg!6760 expr!64)))))

(assert (=> b!2232787 (= e!1426934 e!1426926)))

(declare-fun b!2232788 () Bool)

(declare-fun e!1426931 () Bool)

(assert (=> b!2232788 (= e!1426933 e!1426931)))

(declare-fun res!955991 () Bool)

(declare-fun call!134114 () Int)

(assert (=> b!2232788 (= res!955991 (> lt!830636 call!134114))))

(assert (=> b!2232788 (=> (not res!955991) (not e!1426931))))

(declare-fun b!2232789 () Bool)

(assert (=> b!2232789 (= e!1426927 (> lt!830636 call!134114))))

(declare-fun d!665223 () Bool)

(declare-fun e!1426928 () Bool)

(assert (=> d!665223 e!1426928))

(declare-fun res!955992 () Bool)

(assert (=> d!665223 (=> (not res!955992) (not e!1426928))))

(assert (=> d!665223 (= res!955992 (> lt!830636 0))))

(declare-fun e!1426925 () Int)

(assert (=> d!665223 (= lt!830636 e!1426925)))

(declare-fun c!356009 () Bool)

(assert (=> d!665223 (= c!356009 ((_ is ElementMatch!6431) (reg!6760 expr!64)))))

(assert (=> d!665223 (= (regexDepth!71 (reg!6760 expr!64)) lt!830636)))

(declare-fun b!2232790 () Bool)

(assert (=> b!2232790 (= e!1426931 (> lt!830636 call!134115))))

(declare-fun bm!134112 () Bool)

(declare-fun c!356011 () Bool)

(assert (=> bm!134112 (= call!134114 (regexDepth!71 (ite c!356011 (regOne!13375 (reg!6760 expr!64)) (regTwo!13374 (reg!6760 expr!64)))))))

(declare-fun bm!134113 () Bool)

(assert (=> bm!134113 (= call!134115 (regexDepth!71 (ite c!356011 (regTwo!13375 (reg!6760 expr!64)) (ite c!356012 (regOne!13374 (reg!6760 expr!64)) (reg!6760 (reg!6760 expr!64))))))))

(declare-fun b!2232791 () Bool)

(assert (=> b!2232791 (= e!1426928 e!1426933)))

(assert (=> b!2232791 (= c!356011 ((_ is Union!6431) (reg!6760 expr!64)))))

(declare-fun b!2232792 () Bool)

(assert (=> b!2232792 (= e!1426926 (> lt!830636 call!134116))))

(declare-fun b!2232793 () Bool)

(declare-fun e!1426932 () Int)

(assert (=> b!2232793 (= e!1426925 e!1426932)))

(declare-fun c!356010 () Bool)

(assert (=> b!2232793 (= c!356010 ((_ is Star!6431) (reg!6760 expr!64)))))

(declare-fun b!2232794 () Bool)

(assert (=> b!2232794 (= e!1426929 1)))

(declare-fun bm!134114 () Bool)

(assert (=> bm!134114 (= call!134119 (regexDepth!71 (ite c!356010 (reg!6760 (reg!6760 expr!64)) (ite c!356014 (regTwo!13375 (reg!6760 expr!64)) (regOne!13374 (reg!6760 expr!64))))))))

(declare-fun b!2232795 () Bool)

(assert (=> b!2232795 (= e!1426930 (+ 1 call!134120))))

(declare-fun b!2232796 () Bool)

(assert (=> b!2232796 (= c!356014 ((_ is Union!6431) (reg!6760 expr!64)))))

(assert (=> b!2232796 (= e!1426932 e!1426930)))

(declare-fun bm!134115 () Bool)

(assert (=> bm!134115 (= call!134117 (regexDepth!71 (ite c!356014 (regOne!13375 (reg!6760 expr!64)) (regTwo!13374 (reg!6760 expr!64)))))))

(declare-fun b!2232797 () Bool)

(assert (=> b!2232797 (= e!1426932 (+ 1 call!134119))))

(declare-fun b!2232798 () Bool)

(assert (=> b!2232798 (= e!1426925 1)))

(assert (= (and d!665223 c!356009) b!2232798))

(assert (= (and d!665223 (not c!356009)) b!2232793))

(assert (= (and b!2232793 c!356010) b!2232797))

(assert (= (and b!2232793 (not c!356010)) b!2232796))

(assert (= (and b!2232796 c!356014) b!2232795))

(assert (= (and b!2232796 (not c!356014)) b!2232783))

(assert (= (and b!2232783 c!356008) b!2232782))

(assert (= (and b!2232783 (not c!356008)) b!2232794))

(assert (= (or b!2232795 b!2232782) bm!134110))

(assert (= (or b!2232795 b!2232782) bm!134115))

(assert (= (or b!2232795 b!2232782) bm!134111))

(assert (= (or b!2232797 bm!134110) bm!134114))

(assert (= (and d!665223 res!955992) b!2232791))

(assert (= (and b!2232791 c!356011) b!2232788))

(assert (= (and b!2232791 (not c!356011)) b!2232785))

(assert (= (and b!2232788 res!955991) b!2232790))

(assert (= (and b!2232785 c!356012) b!2232784))

(assert (= (and b!2232785 (not c!356012)) b!2232787))

(assert (= (and b!2232784 res!955993) b!2232789))

(assert (= (and b!2232787 c!356013) b!2232792))

(assert (= (and b!2232787 (not c!356013)) b!2232786))

(assert (= (or b!2232784 b!2232792) bm!134109))

(assert (= (or b!2232790 bm!134109) bm!134113))

(assert (= (or b!2232788 b!2232789) bm!134112))

(declare-fun m!2668372 () Bool)

(assert (=> bm!134111 m!2668372))

(declare-fun m!2668374 () Bool)

(assert (=> bm!134112 m!2668374))

(declare-fun m!2668376 () Bool)

(assert (=> bm!134114 m!2668376))

(declare-fun m!2668378 () Bool)

(assert (=> bm!134115 m!2668378))

(declare-fun m!2668380 () Bool)

(assert (=> bm!134113 m!2668380))

(assert (=> b!2232713 d!665223))

(declare-fun bm!134116 () Bool)

(declare-fun call!134123 () Int)

(declare-fun call!134122 () Int)

(assert (=> bm!134116 (= call!134123 call!134122)))

(declare-fun b!2232799 () Bool)

(declare-fun e!1426939 () Int)

(declare-fun call!134127 () Int)

(assert (=> b!2232799 (= e!1426939 (+ 1 call!134127))))

(declare-fun b!2232800 () Bool)

(declare-fun e!1426940 () Int)

(assert (=> b!2232800 (= e!1426940 e!1426939)))

(declare-fun c!356015 () Bool)

(assert (=> b!2232800 (= c!356015 ((_ is Concat!10769) expr!64))))

(declare-fun b!2232801 () Bool)

(declare-fun res!955996 () Bool)

(declare-fun e!1426937 () Bool)

(assert (=> b!2232801 (=> (not res!955996) (not e!1426937))))

(declare-fun lt!830637 () Int)

(assert (=> b!2232801 (= res!955996 (> lt!830637 call!134123))))

(declare-fun e!1426944 () Bool)

(assert (=> b!2232801 (= e!1426944 e!1426937)))

(declare-fun b!2232802 () Bool)

(declare-fun e!1426943 () Bool)

(assert (=> b!2232802 (= e!1426943 e!1426944)))

(declare-fun c!356019 () Bool)

(assert (=> b!2232802 (= c!356019 ((_ is Concat!10769) expr!64))))

(declare-fun bm!134117 () Bool)

(declare-fun call!134125 () Int)

(declare-fun call!134126 () Int)

(assert (=> bm!134117 (= call!134125 call!134126)))

(declare-fun call!134124 () Int)

(declare-fun c!356021 () Bool)

(declare-fun bm!134118 () Bool)

(assert (=> bm!134118 (= call!134127 (maxBigInt!0 (ite c!356021 call!134124 call!134125) (ite c!356021 call!134125 call!134124)))))

(declare-fun b!2232803 () Bool)

(declare-fun e!1426936 () Bool)

(assert (=> b!2232803 (= e!1426936 (= lt!830637 1))))

(declare-fun b!2232804 () Bool)

(declare-fun c!356020 () Bool)

(assert (=> b!2232804 (= c!356020 ((_ is Star!6431) expr!64))))

(assert (=> b!2232804 (= e!1426944 e!1426936)))

(declare-fun b!2232805 () Bool)

(declare-fun e!1426941 () Bool)

(assert (=> b!2232805 (= e!1426943 e!1426941)))

(declare-fun res!955994 () Bool)

(declare-fun call!134121 () Int)

(assert (=> b!2232805 (= res!955994 (> lt!830637 call!134121))))

(assert (=> b!2232805 (=> (not res!955994) (not e!1426941))))

(declare-fun b!2232806 () Bool)

(assert (=> b!2232806 (= e!1426937 (> lt!830637 call!134121))))

(declare-fun d!665225 () Bool)

(declare-fun e!1426938 () Bool)

(assert (=> d!665225 e!1426938))

(declare-fun res!955995 () Bool)

(assert (=> d!665225 (=> (not res!955995) (not e!1426938))))

(assert (=> d!665225 (= res!955995 (> lt!830637 0))))

(declare-fun e!1426935 () Int)

(assert (=> d!665225 (= lt!830637 e!1426935)))

(declare-fun c!356016 () Bool)

(assert (=> d!665225 (= c!356016 ((_ is ElementMatch!6431) expr!64))))

(assert (=> d!665225 (= (regexDepth!71 expr!64) lt!830637)))

(declare-fun b!2232807 () Bool)

(assert (=> b!2232807 (= e!1426941 (> lt!830637 call!134122))))

(declare-fun bm!134119 () Bool)

(declare-fun c!356018 () Bool)

(assert (=> bm!134119 (= call!134121 (regexDepth!71 (ite c!356018 (regOne!13375 expr!64) (regTwo!13374 expr!64))))))

(declare-fun bm!134120 () Bool)

(assert (=> bm!134120 (= call!134122 (regexDepth!71 (ite c!356018 (regTwo!13375 expr!64) (ite c!356019 (regOne!13374 expr!64) (reg!6760 expr!64)))))))

(declare-fun b!2232808 () Bool)

(assert (=> b!2232808 (= e!1426938 e!1426943)))

(assert (=> b!2232808 (= c!356018 ((_ is Union!6431) expr!64))))

(declare-fun b!2232809 () Bool)

(assert (=> b!2232809 (= e!1426936 (> lt!830637 call!134123))))

(declare-fun b!2232810 () Bool)

(declare-fun e!1426942 () Int)

(assert (=> b!2232810 (= e!1426935 e!1426942)))

(declare-fun c!356017 () Bool)

(assert (=> b!2232810 (= c!356017 ((_ is Star!6431) expr!64))))

(declare-fun b!2232811 () Bool)

(assert (=> b!2232811 (= e!1426939 1)))

(declare-fun bm!134121 () Bool)

(assert (=> bm!134121 (= call!134126 (regexDepth!71 (ite c!356017 (reg!6760 expr!64) (ite c!356021 (regTwo!13375 expr!64) (regOne!13374 expr!64)))))))

(declare-fun b!2232812 () Bool)

(assert (=> b!2232812 (= e!1426940 (+ 1 call!134127))))

(declare-fun b!2232813 () Bool)

(assert (=> b!2232813 (= c!356021 ((_ is Union!6431) expr!64))))

(assert (=> b!2232813 (= e!1426942 e!1426940)))

(declare-fun bm!134122 () Bool)

(assert (=> bm!134122 (= call!134124 (regexDepth!71 (ite c!356021 (regOne!13375 expr!64) (regTwo!13374 expr!64))))))

(declare-fun b!2232814 () Bool)

(assert (=> b!2232814 (= e!1426942 (+ 1 call!134126))))

(declare-fun b!2232815 () Bool)

(assert (=> b!2232815 (= e!1426935 1)))

(assert (= (and d!665225 c!356016) b!2232815))

(assert (= (and d!665225 (not c!356016)) b!2232810))

(assert (= (and b!2232810 c!356017) b!2232814))

(assert (= (and b!2232810 (not c!356017)) b!2232813))

(assert (= (and b!2232813 c!356021) b!2232812))

(assert (= (and b!2232813 (not c!356021)) b!2232800))

(assert (= (and b!2232800 c!356015) b!2232799))

(assert (= (and b!2232800 (not c!356015)) b!2232811))

(assert (= (or b!2232812 b!2232799) bm!134117))

(assert (= (or b!2232812 b!2232799) bm!134122))

(assert (= (or b!2232812 b!2232799) bm!134118))

(assert (= (or b!2232814 bm!134117) bm!134121))

(assert (= (and d!665225 res!955995) b!2232808))

(assert (= (and b!2232808 c!356018) b!2232805))

(assert (= (and b!2232808 (not c!356018)) b!2232802))

(assert (= (and b!2232805 res!955994) b!2232807))

(assert (= (and b!2232802 c!356019) b!2232801))

(assert (= (and b!2232802 (not c!356019)) b!2232804))

(assert (= (and b!2232801 res!955996) b!2232806))

(assert (= (and b!2232804 c!356020) b!2232809))

(assert (= (and b!2232804 (not c!356020)) b!2232803))

(assert (= (or b!2232801 b!2232809) bm!134116))

(assert (= (or b!2232807 bm!134116) bm!134120))

(assert (= (or b!2232805 b!2232806) bm!134119))

(declare-fun m!2668382 () Bool)

(assert (=> bm!134118 m!2668382))

(declare-fun m!2668384 () Bool)

(assert (=> bm!134119 m!2668384))

(declare-fun m!2668386 () Bool)

(assert (=> bm!134121 m!2668386))

(declare-fun m!2668388 () Bool)

(assert (=> bm!134122 m!2668388))

(declare-fun m!2668390 () Bool)

(assert (=> bm!134120 m!2668390))

(assert (=> b!2232713 d!665225))

(declare-fun e!1426952 () Bool)

(assert (=> b!2232710 (= tp!700491 e!1426952)))

(declare-fun setNonEmpty!20173 () Bool)

(declare-fun setRes!20173 () Bool)

(declare-fun setElem!20173 () Context!3958)

(declare-fun tp!700515 () Bool)

(declare-fun e!1426951 () Bool)

(assert (=> setNonEmpty!20173 (= setRes!20173 (and tp!700515 (inv!35641 setElem!20173) e!1426951))))

(declare-fun setRest!20173 () (InoxSet Context!3958))

(assert (=> setNonEmpty!20173 (= (_2!15235 (h!31642 mapDefault!14444)) ((_ map or) (store ((as const (Array Context!3958 Bool)) false) setElem!20173 true) setRest!20173))))

(declare-fun b!2232824 () Bool)

(declare-fun tp!700513 () Bool)

(assert (=> b!2232824 (= e!1426951 tp!700513)))

(declare-fun b!2232825 () Bool)

(declare-fun e!1426953 () Bool)

(declare-fun tp!700514 () Bool)

(assert (=> b!2232825 (= e!1426953 tp!700514)))

(declare-fun b!2232826 () Bool)

(declare-fun tp!700517 () Bool)

(declare-fun tp!700516 () Bool)

(assert (=> b!2232826 (= e!1426952 (and tp!700516 (inv!35641 (_2!15234 (_1!15235 (h!31642 mapDefault!14444)))) e!1426953 tp_is_empty!10087 setRes!20173 tp!700517))))

(declare-fun condSetEmpty!20173 () Bool)

(assert (=> b!2232826 (= condSetEmpty!20173 (= (_2!15235 (h!31642 mapDefault!14444)) ((as const (Array Context!3958 Bool)) false)))))

(declare-fun setIsEmpty!20173 () Bool)

(assert (=> setIsEmpty!20173 setRes!20173))

(assert (= b!2232826 b!2232825))

(assert (= (and b!2232826 condSetEmpty!20173) setIsEmpty!20173))

(assert (= (and b!2232826 (not condSetEmpty!20173)) setNonEmpty!20173))

(assert (= setNonEmpty!20173 b!2232824))

(assert (= (and b!2232710 ((_ is Cons!26241) mapDefault!14444)) b!2232826))

(declare-fun m!2668392 () Bool)

(assert (=> setNonEmpty!20173 m!2668392))

(declare-fun m!2668394 () Bool)

(assert (=> b!2232826 m!2668394))

(declare-fun b!2232840 () Bool)

(declare-fun e!1426956 () Bool)

(declare-fun tp!700530 () Bool)

(declare-fun tp!700532 () Bool)

(assert (=> b!2232840 (= e!1426956 (and tp!700530 tp!700532))))

(declare-fun b!2232839 () Bool)

(declare-fun tp!700529 () Bool)

(assert (=> b!2232839 (= e!1426956 tp!700529)))

(declare-fun b!2232837 () Bool)

(assert (=> b!2232837 (= e!1426956 tp_is_empty!10087)))

(assert (=> b!2232700 (= tp!700495 e!1426956)))

(declare-fun b!2232838 () Bool)

(declare-fun tp!700531 () Bool)

(declare-fun tp!700528 () Bool)

(assert (=> b!2232838 (= e!1426956 (and tp!700531 tp!700528))))

(assert (= (and b!2232700 ((_ is ElementMatch!6431) (reg!6760 expr!64))) b!2232837))

(assert (= (and b!2232700 ((_ is Concat!10769) (reg!6760 expr!64))) b!2232838))

(assert (= (and b!2232700 ((_ is Star!6431) (reg!6760 expr!64))) b!2232839))

(assert (= (and b!2232700 ((_ is Union!6431) (reg!6760 expr!64))) b!2232840))

(declare-fun e!1426958 () Bool)

(assert (=> b!2232714 (= tp!700497 e!1426958)))

(declare-fun setRes!20174 () Bool)

(declare-fun setNonEmpty!20174 () Bool)

(declare-fun tp!700535 () Bool)

(declare-fun e!1426957 () Bool)

(declare-fun setElem!20174 () Context!3958)

(assert (=> setNonEmpty!20174 (= setRes!20174 (and tp!700535 (inv!35641 setElem!20174) e!1426957))))

(declare-fun setRest!20174 () (InoxSet Context!3958))

(assert (=> setNonEmpty!20174 (= (_2!15235 (h!31642 (zeroValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3958 Bool)) false) setElem!20174 true) setRest!20174))))

(declare-fun b!2232841 () Bool)

(declare-fun tp!700533 () Bool)

(assert (=> b!2232841 (= e!1426957 tp!700533)))

(declare-fun b!2232842 () Bool)

(declare-fun e!1426959 () Bool)

(declare-fun tp!700534 () Bool)

(assert (=> b!2232842 (= e!1426959 tp!700534)))

(declare-fun tp!700536 () Bool)

(declare-fun tp!700537 () Bool)

(declare-fun b!2232843 () Bool)

(assert (=> b!2232843 (= e!1426958 (and tp!700536 (inv!35641 (_2!15234 (_1!15235 (h!31642 (zeroValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))))) e!1426959 tp_is_empty!10087 setRes!20174 tp!700537))))

(declare-fun condSetEmpty!20174 () Bool)

(assert (=> b!2232843 (= condSetEmpty!20174 (= (_2!15235 (h!31642 (zeroValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))) ((as const (Array Context!3958 Bool)) false)))))

(declare-fun setIsEmpty!20174 () Bool)

(assert (=> setIsEmpty!20174 setRes!20174))

(assert (= b!2232843 b!2232842))

(assert (= (and b!2232843 condSetEmpty!20174) setIsEmpty!20174))

(assert (= (and b!2232843 (not condSetEmpty!20174)) setNonEmpty!20174))

(assert (= setNonEmpty!20174 b!2232841))

(assert (= (and b!2232714 ((_ is Cons!26241) (zeroValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))) b!2232843))

(declare-fun m!2668396 () Bool)

(assert (=> setNonEmpty!20174 m!2668396))

(declare-fun m!2668398 () Bool)

(assert (=> b!2232843 m!2668398))

(declare-fun e!1426961 () Bool)

(assert (=> b!2232714 (= tp!700500 e!1426961)))

(declare-fun e!1426960 () Bool)

(declare-fun setNonEmpty!20175 () Bool)

(declare-fun setElem!20175 () Context!3958)

(declare-fun tp!700540 () Bool)

(declare-fun setRes!20175 () Bool)

(assert (=> setNonEmpty!20175 (= setRes!20175 (and tp!700540 (inv!35641 setElem!20175) e!1426960))))

(declare-fun setRest!20175 () (InoxSet Context!3958))

(assert (=> setNonEmpty!20175 (= (_2!15235 (h!31642 (minValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3958 Bool)) false) setElem!20175 true) setRest!20175))))

(declare-fun b!2232844 () Bool)

(declare-fun tp!700538 () Bool)

(assert (=> b!2232844 (= e!1426960 tp!700538)))

(declare-fun b!2232845 () Bool)

(declare-fun e!1426962 () Bool)

(declare-fun tp!700539 () Bool)

(assert (=> b!2232845 (= e!1426962 tp!700539)))

(declare-fun tp!700541 () Bool)

(declare-fun b!2232846 () Bool)

(declare-fun tp!700542 () Bool)

(assert (=> b!2232846 (= e!1426961 (and tp!700541 (inv!35641 (_2!15234 (_1!15235 (h!31642 (minValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))))) e!1426962 tp_is_empty!10087 setRes!20175 tp!700542))))

(declare-fun condSetEmpty!20175 () Bool)

(assert (=> b!2232846 (= condSetEmpty!20175 (= (_2!15235 (h!31642 (minValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))) ((as const (Array Context!3958 Bool)) false)))))

(declare-fun setIsEmpty!20175 () Bool)

(assert (=> setIsEmpty!20175 setRes!20175))

(assert (= b!2232846 b!2232845))

(assert (= (and b!2232846 condSetEmpty!20175) setIsEmpty!20175))

(assert (= (and b!2232846 (not condSetEmpty!20175)) setNonEmpty!20175))

(assert (= setNonEmpty!20175 b!2232844))

(assert (= (and b!2232714 ((_ is Cons!26241) (minValue!3327 (v!29839 (underlying!6339 (v!29840 (underlying!6340 (cache!3360 cacheDown!839)))))))) b!2232846))

(declare-fun m!2668400 () Bool)

(assert (=> setNonEmpty!20175 m!2668400))

(declare-fun m!2668402 () Bool)

(assert (=> b!2232846 m!2668402))

(declare-fun b!2232850 () Bool)

(declare-fun e!1426963 () Bool)

(declare-fun tp!700545 () Bool)

(declare-fun tp!700547 () Bool)

(assert (=> b!2232850 (= e!1426963 (and tp!700545 tp!700547))))

(declare-fun b!2232849 () Bool)

(declare-fun tp!700544 () Bool)

(assert (=> b!2232849 (= e!1426963 tp!700544)))

(declare-fun b!2232847 () Bool)

(assert (=> b!2232847 (= e!1426963 tp_is_empty!10087)))

(assert (=> b!2232707 (= tp!700496 e!1426963)))

(declare-fun b!2232848 () Bool)

(declare-fun tp!700546 () Bool)

(declare-fun tp!700543 () Bool)

(assert (=> b!2232848 (= e!1426963 (and tp!700546 tp!700543))))

(assert (= (and b!2232707 ((_ is ElementMatch!6431) (regOne!13374 expr!64))) b!2232847))

(assert (= (and b!2232707 ((_ is Concat!10769) (regOne!13374 expr!64))) b!2232848))

(assert (= (and b!2232707 ((_ is Star!6431) (regOne!13374 expr!64))) b!2232849))

(assert (= (and b!2232707 ((_ is Union!6431) (regOne!13374 expr!64))) b!2232850))

(declare-fun b!2232854 () Bool)

(declare-fun e!1426964 () Bool)

(declare-fun tp!700550 () Bool)

(declare-fun tp!700552 () Bool)

(assert (=> b!2232854 (= e!1426964 (and tp!700550 tp!700552))))

(declare-fun b!2232853 () Bool)

(declare-fun tp!700549 () Bool)

(assert (=> b!2232853 (= e!1426964 tp!700549)))

(declare-fun b!2232851 () Bool)

(assert (=> b!2232851 (= e!1426964 tp_is_empty!10087)))

(assert (=> b!2232707 (= tp!700501 e!1426964)))

(declare-fun b!2232852 () Bool)

(declare-fun tp!700551 () Bool)

(declare-fun tp!700548 () Bool)

(assert (=> b!2232852 (= e!1426964 (and tp!700551 tp!700548))))

(assert (= (and b!2232707 ((_ is ElementMatch!6431) (regTwo!13374 expr!64))) b!2232851))

(assert (= (and b!2232707 ((_ is Concat!10769) (regTwo!13374 expr!64))) b!2232852))

(assert (= (and b!2232707 ((_ is Star!6431) (regTwo!13374 expr!64))) b!2232853))

(assert (= (and b!2232707 ((_ is Union!6431) (regTwo!13374 expr!64))) b!2232854))

(declare-fun b!2232858 () Bool)

(declare-fun e!1426965 () Bool)

(declare-fun tp!700555 () Bool)

(declare-fun tp!700557 () Bool)

(assert (=> b!2232858 (= e!1426965 (and tp!700555 tp!700557))))

(declare-fun b!2232857 () Bool)

(declare-fun tp!700554 () Bool)

(assert (=> b!2232857 (= e!1426965 tp!700554)))

(declare-fun b!2232855 () Bool)

(assert (=> b!2232855 (= e!1426965 tp_is_empty!10087)))

(assert (=> b!2232698 (= tp!700499 e!1426965)))

(declare-fun b!2232856 () Bool)

(declare-fun tp!700556 () Bool)

(declare-fun tp!700553 () Bool)

(assert (=> b!2232856 (= e!1426965 (and tp!700556 tp!700553))))

(assert (= (and b!2232698 ((_ is ElementMatch!6431) (regOne!13375 expr!64))) b!2232855))

(assert (= (and b!2232698 ((_ is Concat!10769) (regOne!13375 expr!64))) b!2232856))

(assert (= (and b!2232698 ((_ is Star!6431) (regOne!13375 expr!64))) b!2232857))

(assert (= (and b!2232698 ((_ is Union!6431) (regOne!13375 expr!64))) b!2232858))

(declare-fun b!2232862 () Bool)

(declare-fun e!1426966 () Bool)

(declare-fun tp!700560 () Bool)

(declare-fun tp!700562 () Bool)

(assert (=> b!2232862 (= e!1426966 (and tp!700560 tp!700562))))

(declare-fun b!2232861 () Bool)

(declare-fun tp!700559 () Bool)

(assert (=> b!2232861 (= e!1426966 tp!700559)))

(declare-fun b!2232859 () Bool)

(assert (=> b!2232859 (= e!1426966 tp_is_empty!10087)))

(assert (=> b!2232698 (= tp!700492 e!1426966)))

(declare-fun b!2232860 () Bool)

(declare-fun tp!700561 () Bool)

(declare-fun tp!700558 () Bool)

(assert (=> b!2232860 (= e!1426966 (and tp!700561 tp!700558))))

(assert (= (and b!2232698 ((_ is ElementMatch!6431) (regTwo!13375 expr!64))) b!2232859))

(assert (= (and b!2232698 ((_ is Concat!10769) (regTwo!13375 expr!64))) b!2232860))

(assert (= (and b!2232698 ((_ is Star!6431) (regTwo!13375 expr!64))) b!2232861))

(assert (= (and b!2232698 ((_ is Union!6431) (regTwo!13375 expr!64))) b!2232862))

(declare-fun b!2232867 () Bool)

(declare-fun e!1426969 () Bool)

(declare-fun tp!700567 () Bool)

(declare-fun tp!700568 () Bool)

(assert (=> b!2232867 (= e!1426969 (and tp!700567 tp!700568))))

(assert (=> b!2232697 (= tp!700498 e!1426969)))

(assert (= (and b!2232697 ((_ is Cons!26240) (exprs!2479 context!86))) b!2232867))

(declare-fun tp!700593 () Bool)

(declare-fun tp!700592 () Bool)

(declare-fun setRes!20181 () Bool)

(declare-fun e!1426982 () Bool)

(declare-fun b!2232882 () Bool)

(declare-fun mapValue!14447 () List!26335)

(declare-fun e!1426983 () Bool)

(assert (=> b!2232882 (= e!1426982 (and tp!700592 (inv!35641 (_2!15234 (_1!15235 (h!31642 mapValue!14447)))) e!1426983 tp_is_empty!10087 setRes!20181 tp!700593))))

(declare-fun condSetEmpty!20181 () Bool)

(assert (=> b!2232882 (= condSetEmpty!20181 (= (_2!15235 (h!31642 mapValue!14447)) ((as const (Array Context!3958 Bool)) false)))))

(declare-fun tp!700598 () Bool)

(declare-fun e!1426985 () Bool)

(declare-fun setNonEmpty!20180 () Bool)

(declare-fun setElem!20180 () Context!3958)

(assert (=> setNonEmpty!20180 (= setRes!20181 (and tp!700598 (inv!35641 setElem!20180) e!1426985))))

(declare-fun setRest!20180 () (InoxSet Context!3958))

(assert (=> setNonEmpty!20180 (= (_2!15235 (h!31642 mapValue!14447)) ((_ map or) (store ((as const (Array Context!3958 Bool)) false) setElem!20180 true) setRest!20180))))

(declare-fun mapNonEmpty!14447 () Bool)

(declare-fun mapRes!14447 () Bool)

(declare-fun tp!700601 () Bool)

(assert (=> mapNonEmpty!14447 (= mapRes!14447 (and tp!700601 e!1426982))))

(declare-fun mapKey!14447 () (_ BitVec 32))

(declare-fun mapRest!14447 () (Array (_ BitVec 32) List!26335))

(assert (=> mapNonEmpty!14447 (= mapRest!14444 (store mapRest!14447 mapKey!14447 mapValue!14447))))

(declare-fun e!1426984 () Bool)

(declare-fun tp!700596 () Bool)

(declare-fun mapDefault!14447 () List!26335)

(declare-fun setRes!20180 () Bool)

(declare-fun e!1426986 () Bool)

(declare-fun b!2232883 () Bool)

(declare-fun tp!700591 () Bool)

(assert (=> b!2232883 (= e!1426984 (and tp!700596 (inv!35641 (_2!15234 (_1!15235 (h!31642 mapDefault!14447)))) e!1426986 tp_is_empty!10087 setRes!20180 tp!700591))))

(declare-fun condSetEmpty!20180 () Bool)

(assert (=> b!2232883 (= condSetEmpty!20180 (= (_2!15235 (h!31642 mapDefault!14447)) ((as const (Array Context!3958 Bool)) false)))))

(declare-fun b!2232884 () Bool)

(declare-fun tp!700600 () Bool)

(assert (=> b!2232884 (= e!1426986 tp!700600)))

(declare-fun b!2232885 () Bool)

(declare-fun tp!700599 () Bool)

(assert (=> b!2232885 (= e!1426983 tp!700599)))

(declare-fun setNonEmpty!20181 () Bool)

(declare-fun setElem!20181 () Context!3958)

(declare-fun e!1426987 () Bool)

(declare-fun tp!700594 () Bool)

(assert (=> setNonEmpty!20181 (= setRes!20180 (and tp!700594 (inv!35641 setElem!20181) e!1426987))))

(declare-fun setRest!20181 () (InoxSet Context!3958))

(assert (=> setNonEmpty!20181 (= (_2!15235 (h!31642 mapDefault!14447)) ((_ map or) (store ((as const (Array Context!3958 Bool)) false) setElem!20181 true) setRest!20181))))

(declare-fun mapIsEmpty!14447 () Bool)

(assert (=> mapIsEmpty!14447 mapRes!14447))

(declare-fun setIsEmpty!20180 () Bool)

(assert (=> setIsEmpty!20180 setRes!20181))

(declare-fun b!2232887 () Bool)

(declare-fun tp!700595 () Bool)

(assert (=> b!2232887 (= e!1426985 tp!700595)))

(declare-fun setIsEmpty!20181 () Bool)

(assert (=> setIsEmpty!20181 setRes!20180))

(declare-fun b!2232886 () Bool)

(declare-fun tp!700597 () Bool)

(assert (=> b!2232886 (= e!1426987 tp!700597)))

(declare-fun condMapEmpty!14447 () Bool)

(assert (=> mapNonEmpty!14444 (= condMapEmpty!14447 (= mapRest!14444 ((as const (Array (_ BitVec 32) List!26335)) mapDefault!14447)))))

(assert (=> mapNonEmpty!14444 (= tp!700502 (and e!1426984 mapRes!14447))))

(assert (= (and mapNonEmpty!14444 condMapEmpty!14447) mapIsEmpty!14447))

(assert (= (and mapNonEmpty!14444 (not condMapEmpty!14447)) mapNonEmpty!14447))

(assert (= b!2232882 b!2232885))

(assert (= (and b!2232882 condSetEmpty!20181) setIsEmpty!20180))

(assert (= (and b!2232882 (not condSetEmpty!20181)) setNonEmpty!20180))

(assert (= setNonEmpty!20180 b!2232887))

(assert (= (and mapNonEmpty!14447 ((_ is Cons!26241) mapValue!14447)) b!2232882))

(assert (= b!2232883 b!2232884))

(assert (= (and b!2232883 condSetEmpty!20180) setIsEmpty!20181))

(assert (= (and b!2232883 (not condSetEmpty!20180)) setNonEmpty!20181))

(assert (= setNonEmpty!20181 b!2232886))

(assert (= (and mapNonEmpty!14444 ((_ is Cons!26241) mapDefault!14447)) b!2232883))

(declare-fun m!2668404 () Bool)

(assert (=> b!2232883 m!2668404))

(declare-fun m!2668406 () Bool)

(assert (=> mapNonEmpty!14447 m!2668406))

(declare-fun m!2668408 () Bool)

(assert (=> b!2232882 m!2668408))

(declare-fun m!2668410 () Bool)

(assert (=> setNonEmpty!20180 m!2668410))

(declare-fun m!2668412 () Bool)

(assert (=> setNonEmpty!20181 m!2668412))

(declare-fun e!1426989 () Bool)

(assert (=> mapNonEmpty!14444 (= tp!700493 e!1426989)))

(declare-fun setElem!20182 () Context!3958)

(declare-fun setNonEmpty!20182 () Bool)

(declare-fun setRes!20182 () Bool)

(declare-fun tp!700604 () Bool)

(declare-fun e!1426988 () Bool)

(assert (=> setNonEmpty!20182 (= setRes!20182 (and tp!700604 (inv!35641 setElem!20182) e!1426988))))

(declare-fun setRest!20182 () (InoxSet Context!3958))

(assert (=> setNonEmpty!20182 (= (_2!15235 (h!31642 mapValue!14444)) ((_ map or) (store ((as const (Array Context!3958 Bool)) false) setElem!20182 true) setRest!20182))))

(declare-fun b!2232888 () Bool)

(declare-fun tp!700602 () Bool)

(assert (=> b!2232888 (= e!1426988 tp!700602)))

(declare-fun b!2232889 () Bool)

(declare-fun e!1426990 () Bool)

(declare-fun tp!700603 () Bool)

(assert (=> b!2232889 (= e!1426990 tp!700603)))

(declare-fun tp!700606 () Bool)

(declare-fun tp!700605 () Bool)

(declare-fun b!2232890 () Bool)

(assert (=> b!2232890 (= e!1426989 (and tp!700605 (inv!35641 (_2!15234 (_1!15235 (h!31642 mapValue!14444)))) e!1426990 tp_is_empty!10087 setRes!20182 tp!700606))))

(declare-fun condSetEmpty!20182 () Bool)

(assert (=> b!2232890 (= condSetEmpty!20182 (= (_2!15235 (h!31642 mapValue!14444)) ((as const (Array Context!3958 Bool)) false)))))

(declare-fun setIsEmpty!20182 () Bool)

(assert (=> setIsEmpty!20182 setRes!20182))

(assert (= b!2232890 b!2232889))

(assert (= (and b!2232890 condSetEmpty!20182) setIsEmpty!20182))

(assert (= (and b!2232890 (not condSetEmpty!20182)) setNonEmpty!20182))

(assert (= setNonEmpty!20182 b!2232888))

(assert (= (and mapNonEmpty!14444 ((_ is Cons!26241) mapValue!14444)) b!2232890))

(declare-fun m!2668414 () Bool)

(assert (=> setNonEmpty!20182 m!2668414))

(declare-fun m!2668416 () Bool)

(assert (=> b!2232890 m!2668416))

(check-sat (not setNonEmpty!20174) (not b_next!65443) (not b!2232886) (not bm!134120) (not b!2232848) (not b!2232861) (not b!2232844) (not bm!134114) (not b!2232841) (not bm!134093) (not bm!134094) (not b!2232853) (not b!2232737) (not b!2232843) (not b!2232862) (not bm!134121) b_and!174725 (not b!2232824) (not setNonEmpty!20175) (not b!2232842) (not d!665221) (not b!2232857) (not b!2232882) (not b!2232838) (not b!2232887) (not b!2232840) (not b!2232860) (not setNonEmpty!20182) (not b!2232888) (not setNonEmpty!20173) (not mapNonEmpty!14447) (not b!2232890) (not b!2232858) (not b!2232717) (not b!2232846) (not bm!134122) (not b!2232845) (not bm!134111) (not bm!134118) (not b!2232854) (not bm!134115) (not b!2232850) (not b_next!65441) (not b!2232826) (not b!2232867) (not b!2232883) (not b!2232884) b_and!174727 tp_is_empty!10087 (not d!665219) (not b!2232885) (not b!2232747) (not setNonEmpty!20181) (not setNonEmpty!20180) (not b!2232839) (not b!2232825) (not b!2232889) (not b!2232856) (not b!2232852) (not bm!134119) (not bm!134113) (not b!2232849) (not bm!134112) (not d!665209))
(check-sat b_and!174727 b_and!174725 (not b_next!65441) (not b_next!65443))
